
sglib-hashtable.elf:     file format elf32-littlearm


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
 80001d8:	20000b58 	.word	0x20000b58
 80001dc:	00000000 	.word	0x00000000
 80001e0:	08007048 	.word	0x08007048

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	20000b5c 	.word	0x20000b5c
 80001fc:	08007048 	.word	0x08007048

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
 80011c8:	f640 4030 	movw	r0, #3120	; 0xc30
 80011cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011d0:	6801      	ldr	r1, [r0, #0]
 80011d2:	3101      	adds	r1, #1
 80011d4:	6001      	str	r1, [r0, #0]
 80011d6:	4770      	bx	lr

080011d8 <HAL_GetTick>:
 80011d8:	f640 4030 	movw	r0, #3120	; 0xc30
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
 80014a8:	f247 0278 	movw	r2, #28792	; 0x7078
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
 800151a:	f240 10a4 	movw	r0, #420	; 0x1a4
 800151e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001522:	f247 0270 	movw	r2, #28784	; 0x7070
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
 8001544:	f240 10a4 	movw	r0, #420	; 0x1a4
 8001548:	f241 0108 	movw	r1, #4104	; 0x1008
 800154c:	f247 0270 	movw	r2, #28784	; 0x7070
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
 8001902:	f640 4134 	movw	r1, #3124	; 0xc34
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
 800194c:	f640 4034 	movw	r0, #3124	; 0xc34
 8001950:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001954:	f7ff fecd 	bl	80016f2 <HAL_TIM_Base_Start_IT>
 8001958:	b006      	add	sp, #24
 800195a:	bdb0      	pop	{r4, r5, r7, pc}

0800195c <HAL_TIM_PeriodElapsedCallback>:
 800195c:	f7ff bc34 	b.w	80011c8 <HAL_IncTick>

08001960 <TIM6_DAC_IRQHandler>:
 8001960:	f640 4034 	movw	r0, #3124	; 0xc34
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
 8001a94:	f247 03a8 	movw	r3, #28840	; 0x70a8
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
 8001abc:	f247 03b8 	movw	r3, #28856	; 0x70b8
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
 8001f7e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f80:	af03      	add	r7, sp, #12
 8001f82:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001f86:	b081      	sub	sp, #4
 8001f88:	f640 4a78 	movw	sl, #3192	; 0xc78
 8001f8c:	2500      	movs	r5, #0
 8001f8e:	2150      	movs	r1, #80	; 0x50
 8001f90:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8001f94:	9500      	str	r5, [sp, #0]
 8001f96:	4650      	mov	r0, sl
 8001f98:	f000 f982 	bl	80022a0 <__aeabi_memclr>
 8001f9c:	f240 0814 	movw	r8, #20
 8001fa0:	f64c 49cd 	movw	r9, #52429	; 0xcccd
 8001fa4:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8001fa8:	f6cc 49cc 	movt	r9, #52428	; 0xcccc
 8001fac:	f858 6025 	ldr.w	r6, [r8, r5, lsl #2]
 8001fb0:	fba6 0109 	umull	r0, r1, r6, r9
 8001fb4:	0908      	lsrs	r0, r1, #4
 8001fb6:	eb00 0080 	add.w	r0, r0, r0, lsl #2
 8001fba:	eba6 0b80 	sub.w	fp, r6, r0, lsl #2
 8001fbe:	f85a 402b 	ldr.w	r4, [sl, fp, lsl #2]
 8001fc2:	b134      	cbz	r4, 8001fd2 <benchmark+0x54>
 8001fc4:	4620      	mov	r0, r4
 8001fc6:	6801      	ldr	r1, [r0, #0]
 8001fc8:	42b1      	cmp	r1, r6
 8001fca:	d009      	beq.n	8001fe0 <benchmark+0x62>
 8001fcc:	6840      	ldr	r0, [r0, #4]
 8001fce:	2800      	cmp	r0, #0
 8001fd0:	d1f9      	bne.n	8001fc6 <benchmark+0x48>
 8001fd2:	2008      	movs	r0, #8
 8001fd4:	f000 f992 	bl	80022fc <malloc>
 8001fd8:	e9c0 6400 	strd	r6, r4, [r0]
 8001fdc:	f84a 002b 	str.w	r0, [sl, fp, lsl #2]
 8001fe0:	3501      	adds	r5, #1
 8001fe2:	2d64      	cmp	r5, #100	; 0x64
 8001fe4:	d1e2      	bne.n	8001fac <benchmark+0x2e>
 8001fe6:	f8da 0000 	ldr.w	r0, [sl]
 8001fea:	2800      	cmp	r0, #0
 8001fec:	d002      	beq.n	8001ff4 <benchmark+0x76>
 8001fee:	2300      	movs	r3, #0
 8001ff0:	4601      	mov	r1, r0
 8001ff2:	e00b      	b.n	800200c <benchmark+0x8e>
 8001ff4:	2201      	movs	r2, #1
 8001ff6:	2a13      	cmp	r2, #19
 8001ff8:	dc05      	bgt.n	8002006 <benchmark+0x88>
 8001ffa:	f85a 1022 	ldr.w	r1, [sl, r2, lsl #2]
 8001ffe:	3201      	adds	r2, #1
 8002000:	2900      	cmp	r1, #0
 8002002:	d0f8      	beq.n	8001ff6 <benchmark+0x78>
 8002004:	e000      	b.n	8002008 <benchmark+0x8a>
 8002006:	2100      	movs	r1, #0
 8002008:	b118      	cbz	r0, 8002012 <benchmark+0x94>
 800200a:	2300      	movs	r3, #0
 800200c:	6809      	ldr	r1, [r1, #0]
 800200e:	4606      	mov	r6, r0
 8002010:	e00b      	b.n	800202a <benchmark+0xac>
 8002012:	2301      	movs	r3, #1
 8002014:	2b13      	cmp	r3, #19
 8002016:	dc16      	bgt.n	8002046 <benchmark+0xc8>
 8002018:	f85a 6023 	ldr.w	r6, [sl, r3, lsl #2]
 800201c:	3301      	adds	r3, #1
 800201e:	2e00      	cmp	r6, #0
 8002020:	d0f8      	beq.n	8002014 <benchmark+0x96>
 8002022:	6809      	ldr	r1, [r1, #0]
 8002024:	3b01      	subs	r3, #1
 8002026:	e000      	b.n	800202a <benchmark+0xac>
 8002028:	3b01      	subs	r3, #1
 800202a:	6872      	ldr	r2, [r6, #4]
 800202c:	6031      	str	r1, [r6, #0]
 800202e:	2a00      	cmp	r2, #0
 8002030:	4616      	mov	r6, r2
 8002032:	d1fa      	bne.n	800202a <benchmark+0xac>
 8002034:	3301      	adds	r3, #1
 8002036:	2b13      	cmp	r3, #19
 8002038:	dc05      	bgt.n	8002046 <benchmark+0xc8>
 800203a:	f85a 6023 	ldr.w	r6, [sl, r3, lsl #2]
 800203e:	3301      	adds	r3, #1
 8002040:	2e00      	cmp	r6, #0
 8002042:	d0f8      	beq.n	8002036 <benchmark+0xb8>
 8002044:	e7f0      	b.n	8002028 <benchmark+0xaa>
 8002046:	b108      	cbz	r0, 800204c <benchmark+0xce>
 8002048:	2500      	movs	r5, #0
 800204a:	e008      	b.n	800205e <benchmark+0xe0>
 800204c:	2101      	movs	r1, #1
 800204e:	2913      	cmp	r1, #19
 8002050:	dc18      	bgt.n	8002084 <benchmark+0x106>
 8002052:	f85a 0021 	ldr.w	r0, [sl, r1, lsl #2]
 8002056:	3101      	adds	r1, #1
 8002058:	2800      	cmp	r0, #0
 800205a:	d0f8      	beq.n	800204e <benchmark+0xd0>
 800205c:	1e4d      	subs	r5, r1, #1
 800205e:	e9d0 1400 	ldrd	r1, r4, [r0]
 8002062:	9a00      	ldr	r2, [sp, #0]
 8002064:	4411      	add	r1, r2
 8002066:	9100      	str	r1, [sp, #0]
 8002068:	f000 f950 	bl	800230c <free>
 800206c:	2c00      	cmp	r4, #0
 800206e:	4620      	mov	r0, r4
 8002070:	d1f5      	bne.n	800205e <benchmark+0xe0>
 8002072:	1c69      	adds	r1, r5, #1
 8002074:	2913      	cmp	r1, #19
 8002076:	dc05      	bgt.n	8002084 <benchmark+0x106>
 8002078:	f85a 0021 	ldr.w	r0, [sl, r1, lsl #2]
 800207c:	3101      	adds	r1, #1
 800207e:	2800      	cmp	r0, #0
 8002080:	d0f8      	beq.n	8002074 <benchmark+0xf6>
 8002082:	e7eb      	b.n	800205c <benchmark+0xde>
 8002084:	9800      	ldr	r0, [sp, #0]
 8002086:	b001      	add	sp, #4
 8002088:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800208c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800208e <__io_putchar>:
 800208e:	b580      	push	{r7, lr}
 8002090:	466f      	mov	r7, sp
 8002092:	b082      	sub	sp, #8
 8002094:	9001      	str	r0, [sp, #4]
 8002096:	f640 3074 	movw	r0, #2932	; 0xb74
 800209a:	a901      	add	r1, sp, #4
 800209c:	2201      	movs	r2, #1
 800209e:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80020a2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020a6:	f7ff fe78 	bl	8001d9a <HAL_UART_Transmit>
 80020aa:	9801      	ldr	r0, [sp, #4]
 80020ac:	b002      	add	sp, #8
 80020ae:	bd80      	pop	{r7, pc}

080020b0 <main>:
 80020b0:	b5b0      	push	{r4, r5, r7, lr}
 80020b2:	af02      	add	r7, sp, #8
 80020b4:	f640 3174 	movw	r1, #2932	; 0xb74
 80020b8:	f643 0000 	movw	r0, #14336	; 0x3800
 80020bc:	220c      	movs	r2, #12
 80020be:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020c2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80020c6:	6008      	str	r0, [r1, #0]
 80020c8:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80020cc:	6048      	str	r0, [r1, #4]
 80020ce:	2000      	movs	r0, #0
 80020d0:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80020d4:	6108      	str	r0, [r1, #16]
 80020d6:	6248      	str	r0, [r1, #36]	; 0x24
 80020d8:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80020dc:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80020e0:	2000      	movs	r0, #0
 80020e2:	f7ff feef 	bl	8001ec4 <BSP_COM_Init>
 80020e6:	f7ff ff49 	bl	8001f7c <initialise_benchmark>
 80020ea:	f247 00c8 	movw	r0, #28872	; 0x70c8
 80020ee:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020f2:	f000 fc0d 	bl	8002910 <printf>
 80020f6:	f247 107a 	movw	r0, #29050	; 0x717a
 80020fa:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020fe:	f000 fc69 	bl	80029d4 <puts>
 8002102:	f7ff f851 	bl	80011a8 <HAL_Init>
 8002106:	f7ff f867 	bl	80011d8 <HAL_GetTick>
 800210a:	4604      	mov	r4, r0
 800210c:	f7ff ff37 	bl	8001f7e <benchmark>
 8002110:	4605      	mov	r5, r0
 8002112:	f7ff f861 	bl	80011d8 <HAL_GetTick>
 8002116:	1b04      	subs	r4, r0, r4
 8002118:	4628      	mov	r0, r5
 800211a:	f7ff ff2c 	bl	8001f76 <verify_benchmark>
 800211e:	1c41      	adds	r1, r0, #1
 8002120:	d006      	beq.n	8002130 <main+0x80>
 8002122:	2801      	cmp	r0, #1
 8002124:	d109      	bne.n	800213a <main+0x8a>
 8002126:	f247 00e6 	movw	r0, #28902	; 0x70e6
 800212a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800212e:	e008      	b.n	8002142 <main+0x92>
 8002130:	f247 100a 	movw	r0, #28938	; 0x710a
 8002134:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002138:	e003      	b.n	8002142 <main+0x92>
 800213a:	f247 103f 	movw	r0, #28991	; 0x713f
 800213e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002142:	4621      	mov	r1, r4
 8002144:	f000 fbe4 	bl	8002910 <printf>
 8002148:	2000      	movs	r0, #0
 800214a:	bdb0      	pop	{r4, r5, r7, pc}

0800214c <SysTick_Handler>:
 800214c:	b580      	push	{r7, lr}
 800214e:	466f      	mov	r7, sp
 8002150:	f7ff f83a 	bl	80011c8 <HAL_IncTick>
 8002154:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002158:	f7ff b894 	b.w	8001284 <HAL_SYSTICK_IRQHandler>

0800215c <_read>:
 800215c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800215e:	af03      	add	r7, sp, #12
 8002160:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002164:	4614      	mov	r4, r2
 8002166:	460d      	mov	r5, r1
 8002168:	2c01      	cmp	r4, #1
 800216a:	db06      	blt.n	800217a <_read+0x1e>
 800216c:	4626      	mov	r6, r4
 800216e:	f3af 8000 	nop.w
 8002172:	f805 0b01 	strb.w	r0, [r5], #1
 8002176:	3e01      	subs	r6, #1
 8002178:	d1f9      	bne.n	800216e <_read+0x12>
 800217a:	4620      	mov	r0, r4
 800217c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002180:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002182 <_write>:
 8002182:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002184:	af03      	add	r7, sp, #12
 8002186:	f84d bd04 	str.w	fp, [sp, #-4]!
 800218a:	4614      	mov	r4, r2
 800218c:	460d      	mov	r5, r1
 800218e:	2c01      	cmp	r4, #1
 8002190:	db06      	blt.n	80021a0 <_write+0x1e>
 8002192:	4626      	mov	r6, r4
 8002194:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002198:	f7ff ff79 	bl	800208e <__io_putchar>
 800219c:	3e01      	subs	r6, #1
 800219e:	d1f9      	bne.n	8002194 <_write+0x12>
 80021a0:	4620      	mov	r0, r4
 80021a2:	f85d bb04 	ldr.w	fp, [sp], #4
 80021a6:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021a8 <_sbrk>:
 80021a8:	f640 32f8 	movw	r2, #3064	; 0xbf8
 80021ac:	4601      	mov	r1, r0
 80021ae:	466b      	mov	r3, sp
 80021b0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021b4:	6810      	ldr	r0, [r2, #0]
 80021b6:	2800      	cmp	r0, #0
 80021b8:	bf02      	ittt	eq
 80021ba:	f640 40f0 	movweq	r0, #3312	; 0xcf0
 80021be:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80021c2:	6010      	streq	r0, [r2, #0]
 80021c4:	4401      	add	r1, r0
 80021c6:	4299      	cmp	r1, r3
 80021c8:	bf9c      	itt	ls
 80021ca:	6011      	strls	r1, [r2, #0]
 80021cc:	4770      	bxls	lr
 80021ce:	b580      	push	{r7, lr}
 80021d0:	466f      	mov	r7, sp
 80021d2:	f000 f869 	bl	80022a8 <__errno>
 80021d6:	210c      	movs	r1, #12
 80021d8:	6001      	str	r1, [r0, #0]
 80021da:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021de:	bd80      	pop	{r7, pc}

080021e0 <_close>:
 80021e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021e4:	4770      	bx	lr

080021e6 <_fstat>:
 80021e6:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80021ea:	6048      	str	r0, [r1, #4]
 80021ec:	2000      	movs	r0, #0
 80021ee:	4770      	bx	lr

080021f0 <_isatty>:
 80021f0:	2001      	movs	r0, #1
 80021f2:	4770      	bx	lr

080021f4 <_lseek>:
 80021f4:	2000      	movs	r0, #0
 80021f6:	4770      	bx	lr

080021f8 <SystemInit>:
 80021f8:	f64e 5088 	movw	r0, #60808	; 0xed88
 80021fc:	f04f 0c00 	mov.w	ip, #0
 8002200:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002204:	6801      	ldr	r1, [r0, #0]
 8002206:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800220a:	6001      	str	r1, [r0, #0]
 800220c:	f241 0100 	movw	r1, #4096	; 0x1000
 8002210:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002214:	680a      	ldr	r2, [r1, #0]
 8002216:	f042 0201 	orr.w	r2, r2, #1
 800221a:	600a      	str	r2, [r1, #0]
 800221c:	f8c1 c008 	str.w	ip, [r1, #8]
 8002220:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002224:	680b      	ldr	r3, [r1, #0]
 8002226:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800222a:	401a      	ands	r2, r3
 800222c:	600a      	str	r2, [r1, #0]
 800222e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002232:	60ca      	str	r2, [r1, #12]
 8002234:	680a      	ldr	r2, [r1, #0]
 8002236:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800223a:	600a      	str	r2, [r1, #0]
 800223c:	f8c1 c018 	str.w	ip, [r1, #24]
 8002240:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002244:	f840 1c80 	str.w	r1, [r0, #-128]
 8002248:	4770      	bx	lr
	...

0800224c <Reset_Handler>:
 800224c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002284 <LoopForever+0x2>
 8002250:	2100      	movs	r1, #0
 8002252:	e003      	b.n	800225c <LoopCopyDataInit>

08002254 <CopyDataInit>:
 8002254:	4b0c      	ldr	r3, [pc, #48]	; (8002288 <LoopForever+0x6>)
 8002256:	585b      	ldr	r3, [r3, r1]
 8002258:	5043      	str	r3, [r0, r1]
 800225a:	3104      	adds	r1, #4

0800225c <LoopCopyDataInit>:
 800225c:	480b      	ldr	r0, [pc, #44]	; (800228c <LoopForever+0xa>)
 800225e:	4b0c      	ldr	r3, [pc, #48]	; (8002290 <LoopForever+0xe>)
 8002260:	1842      	adds	r2, r0, r1
 8002262:	429a      	cmp	r2, r3
 8002264:	d3f6      	bcc.n	8002254 <CopyDataInit>
 8002266:	4a0b      	ldr	r2, [pc, #44]	; (8002294 <LoopForever+0x12>)
 8002268:	e002      	b.n	8002270 <LoopFillZerobss>

0800226a <FillZerobss>:
 800226a:	2300      	movs	r3, #0
 800226c:	f842 3b04 	str.w	r3, [r2], #4

08002270 <LoopFillZerobss>:
 8002270:	4b09      	ldr	r3, [pc, #36]	; (8002298 <LoopForever+0x16>)
 8002272:	429a      	cmp	r2, r3
 8002274:	d3f9      	bcc.n	800226a <FillZerobss>
 8002276:	f7ff ffbf 	bl	80021f8 <SystemInit>
 800227a:	f000 f81b 	bl	80022b4 <__libc_init_array>
 800227e:	f7ff ff17 	bl	80020b0 <main>

08002282 <LoopForever>:
 8002282:	e7fe      	b.n	8002282 <LoopForever>
 8002284:	20018000 	.word	0x20018000
 8002288:	08007420 	.word	0x08007420
 800228c:	20000000 	.word	0x20000000
 8002290:	20000b58 	.word	0x20000b58
 8002294:	20000b58 	.word	0x20000b58
 8002298:	20000cf0 	.word	0x20000cf0

0800229c <ADC1_2_IRQHandler>:
 800229c:	e7fe      	b.n	800229c <ADC1_2_IRQHandler>
	...

080022a0 <__aeabi_memclr>:
 80022a0:	2200      	movs	r2, #0
 80022a2:	f7fe b92d 	b.w	8000500 <__aeabi_memset>
 80022a6:	bf00      	nop

080022a8 <__errno>:
 80022a8:	4b01      	ldr	r3, [pc, #4]	; (80022b0 <__errno+0x8>)
 80022aa:	6818      	ldr	r0, [r3, #0]
 80022ac:	4770      	bx	lr
 80022ae:	bf00      	nop
 80022b0:	200001a8 	.word	0x200001a8

080022b4 <__libc_init_array>:
 80022b4:	b570      	push	{r4, r5, r6, lr}
 80022b6:	4e0d      	ldr	r6, [pc, #52]	; (80022ec <__libc_init_array+0x38>)
 80022b8:	4d0d      	ldr	r5, [pc, #52]	; (80022f0 <__libc_init_array+0x3c>)
 80022ba:	1b76      	subs	r6, r6, r5
 80022bc:	10b6      	asrs	r6, r6, #2
 80022be:	d006      	beq.n	80022ce <__libc_init_array+0x1a>
 80022c0:	2400      	movs	r4, #0
 80022c2:	3401      	adds	r4, #1
 80022c4:	f855 3b04 	ldr.w	r3, [r5], #4
 80022c8:	4798      	blx	r3
 80022ca:	42a6      	cmp	r6, r4
 80022cc:	d1f9      	bne.n	80022c2 <__libc_init_array+0xe>
 80022ce:	4e09      	ldr	r6, [pc, #36]	; (80022f4 <__libc_init_array+0x40>)
 80022d0:	4d09      	ldr	r5, [pc, #36]	; (80022f8 <__libc_init_array+0x44>)
 80022d2:	1b76      	subs	r6, r6, r5
 80022d4:	f004 feb8 	bl	8007048 <_init>
 80022d8:	10b6      	asrs	r6, r6, #2
 80022da:	d006      	beq.n	80022ea <__libc_init_array+0x36>
 80022dc:	2400      	movs	r4, #0
 80022de:	3401      	adds	r4, #1
 80022e0:	f855 3b04 	ldr.w	r3, [r5], #4
 80022e4:	4798      	blx	r3
 80022e6:	42a6      	cmp	r6, r4
 80022e8:	d1f9      	bne.n	80022de <__libc_init_array+0x2a>
 80022ea:	bd70      	pop	{r4, r5, r6, pc}
 80022ec:	08007410 	.word	0x08007410
 80022f0:	08007410 	.word	0x08007410
 80022f4:	08007418 	.word	0x08007418
 80022f8:	08007410 	.word	0x08007410

080022fc <malloc>:
 80022fc:	4b02      	ldr	r3, [pc, #8]	; (8002308 <malloc+0xc>)
 80022fe:	4601      	mov	r1, r0
 8002300:	6818      	ldr	r0, [r3, #0]
 8002302:	f000 b80b 	b.w	800231c <_malloc_r>
 8002306:	bf00      	nop
 8002308:	200001a8 	.word	0x200001a8

0800230c <free>:
 800230c:	4b02      	ldr	r3, [pc, #8]	; (8002318 <free+0xc>)
 800230e:	4601      	mov	r1, r0
 8002310:	6818      	ldr	r0, [r3, #0]
 8002312:	f003 bab9 	b.w	8005888 <_free_r>
 8002316:	bf00      	nop
 8002318:	200001a8 	.word	0x200001a8

0800231c <_malloc_r>:
 800231c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002320:	f101 050b 	add.w	r5, r1, #11
 8002324:	2d16      	cmp	r5, #22
 8002326:	b083      	sub	sp, #12
 8002328:	4606      	mov	r6, r0
 800232a:	d823      	bhi.n	8002374 <_malloc_r+0x58>
 800232c:	2910      	cmp	r1, #16
 800232e:	f200 80b9 	bhi.w	80024a4 <_malloc_r+0x188>
 8002332:	f000 fae1 	bl	80028f8 <__malloc_lock>
 8002336:	2510      	movs	r5, #16
 8002338:	2318      	movs	r3, #24
 800233a:	2002      	movs	r0, #2
 800233c:	4fc5      	ldr	r7, [pc, #788]	; (8002654 <_malloc_r+0x338>)
 800233e:	443b      	add	r3, r7
 8002340:	f1a3 0208 	sub.w	r2, r3, #8
 8002344:	685c      	ldr	r4, [r3, #4]
 8002346:	4294      	cmp	r4, r2
 8002348:	f000 8166 	beq.w	8002618 <_malloc_r+0x2fc>
 800234c:	6863      	ldr	r3, [r4, #4]
 800234e:	f023 0303 	bic.w	r3, r3, #3
 8002352:	4423      	add	r3, r4
 8002354:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8002358:	685a      	ldr	r2, [r3, #4]
 800235a:	60e9      	str	r1, [r5, #12]
 800235c:	f042 0201 	orr.w	r2, r2, #1
 8002360:	608d      	str	r5, [r1, #8]
 8002362:	4630      	mov	r0, r6
 8002364:	605a      	str	r2, [r3, #4]
 8002366:	f000 facd 	bl	8002904 <__malloc_unlock>
 800236a:	3408      	adds	r4, #8
 800236c:	4620      	mov	r0, r4
 800236e:	b003      	add	sp, #12
 8002370:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002374:	f035 0507 	bics.w	r5, r5, #7
 8002378:	f100 8094 	bmi.w	80024a4 <_malloc_r+0x188>
 800237c:	42a9      	cmp	r1, r5
 800237e:	f200 8091 	bhi.w	80024a4 <_malloc_r+0x188>
 8002382:	f000 fab9 	bl	80028f8 <__malloc_lock>
 8002386:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800238a:	f0c0 8183 	bcc.w	8002694 <_malloc_r+0x378>
 800238e:	0a6b      	lsrs	r3, r5, #9
 8002390:	f000 808f 	beq.w	80024b2 <_malloc_r+0x196>
 8002394:	2b04      	cmp	r3, #4
 8002396:	f200 8146 	bhi.w	8002626 <_malloc_r+0x30a>
 800239a:	09ab      	lsrs	r3, r5, #6
 800239c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80023a0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80023a4:	00c3      	lsls	r3, r0, #3
 80023a6:	4fab      	ldr	r7, [pc, #684]	; (8002654 <_malloc_r+0x338>)
 80023a8:	443b      	add	r3, r7
 80023aa:	f1a3 0108 	sub.w	r1, r3, #8
 80023ae:	685c      	ldr	r4, [r3, #4]
 80023b0:	42a1      	cmp	r1, r4
 80023b2:	d106      	bne.n	80023c2 <_malloc_r+0xa6>
 80023b4:	e00c      	b.n	80023d0 <_malloc_r+0xb4>
 80023b6:	2a00      	cmp	r2, #0
 80023b8:	f280 811d 	bge.w	80025f6 <_malloc_r+0x2da>
 80023bc:	68e4      	ldr	r4, [r4, #12]
 80023be:	42a1      	cmp	r1, r4
 80023c0:	d006      	beq.n	80023d0 <_malloc_r+0xb4>
 80023c2:	6863      	ldr	r3, [r4, #4]
 80023c4:	f023 0303 	bic.w	r3, r3, #3
 80023c8:	1b5a      	subs	r2, r3, r5
 80023ca:	2a0f      	cmp	r2, #15
 80023cc:	ddf3      	ble.n	80023b6 <_malloc_r+0x9a>
 80023ce:	4660      	mov	r0, ip
 80023d0:	693c      	ldr	r4, [r7, #16]
 80023d2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8002668 <_malloc_r+0x34c>
 80023d6:	4564      	cmp	r4, ip
 80023d8:	d071      	beq.n	80024be <_malloc_r+0x1a2>
 80023da:	6863      	ldr	r3, [r4, #4]
 80023dc:	f023 0303 	bic.w	r3, r3, #3
 80023e0:	1b5a      	subs	r2, r3, r5
 80023e2:	2a0f      	cmp	r2, #15
 80023e4:	f300 8144 	bgt.w	8002670 <_malloc_r+0x354>
 80023e8:	2a00      	cmp	r2, #0
 80023ea:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80023ee:	f280 8126 	bge.w	800263e <_malloc_r+0x322>
 80023f2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80023f6:	f080 8169 	bcs.w	80026cc <_malloc_r+0x3b0>
 80023fa:	08db      	lsrs	r3, r3, #3
 80023fc:	1c59      	adds	r1, r3, #1
 80023fe:	687a      	ldr	r2, [r7, #4]
 8002400:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8002404:	f8c4 8008 	str.w	r8, [r4, #8]
 8002408:	f04f 0e01 	mov.w	lr, #1
 800240c:	109b      	asrs	r3, r3, #2
 800240e:	fa0e f303 	lsl.w	r3, lr, r3
 8002412:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8002416:	4313      	orrs	r3, r2
 8002418:	f1ae 0208 	sub.w	r2, lr, #8
 800241c:	60e2      	str	r2, [r4, #12]
 800241e:	607b      	str	r3, [r7, #4]
 8002420:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8002424:	f8c8 400c 	str.w	r4, [r8, #12]
 8002428:	1082      	asrs	r2, r0, #2
 800242a:	2401      	movs	r4, #1
 800242c:	4094      	lsls	r4, r2
 800242e:	429c      	cmp	r4, r3
 8002430:	d84b      	bhi.n	80024ca <_malloc_r+0x1ae>
 8002432:	421c      	tst	r4, r3
 8002434:	d106      	bne.n	8002444 <_malloc_r+0x128>
 8002436:	f020 0003 	bic.w	r0, r0, #3
 800243a:	0064      	lsls	r4, r4, #1
 800243c:	421c      	tst	r4, r3
 800243e:	f100 0004 	add.w	r0, r0, #4
 8002442:	d0fa      	beq.n	800243a <_malloc_r+0x11e>
 8002444:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8002448:	46ce      	mov	lr, r9
 800244a:	4680      	mov	r8, r0
 800244c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8002450:	459e      	cmp	lr, r3
 8002452:	d107      	bne.n	8002464 <_malloc_r+0x148>
 8002454:	e122      	b.n	800269c <_malloc_r+0x380>
 8002456:	2a00      	cmp	r2, #0
 8002458:	f280 8129 	bge.w	80026ae <_malloc_r+0x392>
 800245c:	68db      	ldr	r3, [r3, #12]
 800245e:	459e      	cmp	lr, r3
 8002460:	f000 811c 	beq.w	800269c <_malloc_r+0x380>
 8002464:	6859      	ldr	r1, [r3, #4]
 8002466:	f021 0103 	bic.w	r1, r1, #3
 800246a:	1b4a      	subs	r2, r1, r5
 800246c:	2a0f      	cmp	r2, #15
 800246e:	ddf2      	ble.n	8002456 <_malloc_r+0x13a>
 8002470:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8002474:	195c      	adds	r4, r3, r5
 8002476:	f045 0501 	orr.w	r5, r5, #1
 800247a:	605d      	str	r5, [r3, #4]
 800247c:	f042 0501 	orr.w	r5, r2, #1
 8002480:	f8c8 e00c 	str.w	lr, [r8, #12]
 8002484:	4630      	mov	r0, r6
 8002486:	f8ce 8008 	str.w	r8, [lr, #8]
 800248a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800248e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8002492:	6065      	str	r5, [r4, #4]
 8002494:	505a      	str	r2, [r3, r1]
 8002496:	9301      	str	r3, [sp, #4]
 8002498:	f000 fa34 	bl	8002904 <__malloc_unlock>
 800249c:	9b01      	ldr	r3, [sp, #4]
 800249e:	f103 0408 	add.w	r4, r3, #8
 80024a2:	e763      	b.n	800236c <_malloc_r+0x50>
 80024a4:	2400      	movs	r4, #0
 80024a6:	230c      	movs	r3, #12
 80024a8:	4620      	mov	r0, r4
 80024aa:	6033      	str	r3, [r6, #0]
 80024ac:	b003      	add	sp, #12
 80024ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80024b2:	f44f 7300 	mov.w	r3, #512	; 0x200
 80024b6:	2040      	movs	r0, #64	; 0x40
 80024b8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80024bc:	e773      	b.n	80023a6 <_malloc_r+0x8a>
 80024be:	687b      	ldr	r3, [r7, #4]
 80024c0:	1082      	asrs	r2, r0, #2
 80024c2:	2401      	movs	r4, #1
 80024c4:	4094      	lsls	r4, r2
 80024c6:	429c      	cmp	r4, r3
 80024c8:	d9b3      	bls.n	8002432 <_malloc_r+0x116>
 80024ca:	68bc      	ldr	r4, [r7, #8]
 80024cc:	6863      	ldr	r3, [r4, #4]
 80024ce:	f023 0903 	bic.w	r9, r3, #3
 80024d2:	45a9      	cmp	r9, r5
 80024d4:	d303      	bcc.n	80024de <_malloc_r+0x1c2>
 80024d6:	eba9 0305 	sub.w	r3, r9, r5
 80024da:	2b0f      	cmp	r3, #15
 80024dc:	dc7b      	bgt.n	80025d6 <_malloc_r+0x2ba>
 80024de:	4b5e      	ldr	r3, [pc, #376]	; (8002658 <_malloc_r+0x33c>)
 80024e0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800266c <_malloc_r+0x350>
 80024e4:	681a      	ldr	r2, [r3, #0]
 80024e6:	f8da 3000 	ldr.w	r3, [sl]
 80024ea:	3301      	adds	r3, #1
 80024ec:	eb05 0802 	add.w	r8, r5, r2
 80024f0:	f000 8148 	beq.w	8002784 <_malloc_r+0x468>
 80024f4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 80024f8:	f108 080f 	add.w	r8, r8, #15
 80024fc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8002500:	f028 080f 	bic.w	r8, r8, #15
 8002504:	4641      	mov	r1, r8
 8002506:	4630      	mov	r0, r6
 8002508:	f000 fa6c 	bl	80029e4 <_sbrk_r>
 800250c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8002510:	4683      	mov	fp, r0
 8002512:	f000 8104 	beq.w	800271e <_malloc_r+0x402>
 8002516:	eb04 0009 	add.w	r0, r4, r9
 800251a:	4558      	cmp	r0, fp
 800251c:	f200 80fd 	bhi.w	800271a <_malloc_r+0x3fe>
 8002520:	4a4e      	ldr	r2, [pc, #312]	; (800265c <_malloc_r+0x340>)
 8002522:	6813      	ldr	r3, [r2, #0]
 8002524:	4443      	add	r3, r8
 8002526:	6013      	str	r3, [r2, #0]
 8002528:	f000 814d 	beq.w	80027c6 <_malloc_r+0x4aa>
 800252c:	f8da 1000 	ldr.w	r1, [sl]
 8002530:	3101      	adds	r1, #1
 8002532:	bf1b      	ittet	ne
 8002534:	ebab 0000 	subne.w	r0, fp, r0
 8002538:	181b      	addne	r3, r3, r0
 800253a:	f8ca b000 	streq.w	fp, [sl]
 800253e:	6013      	strne	r3, [r2, #0]
 8002540:	f01b 0307 	ands.w	r3, fp, #7
 8002544:	f000 8134 	beq.w	80027b0 <_malloc_r+0x494>
 8002548:	f1c3 0108 	rsb	r1, r3, #8
 800254c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8002550:	448b      	add	fp, r1
 8002552:	3308      	adds	r3, #8
 8002554:	44d8      	add	r8, fp
 8002556:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800255a:	eba3 0808 	sub.w	r8, r3, r8
 800255e:	4641      	mov	r1, r8
 8002560:	4630      	mov	r0, r6
 8002562:	9201      	str	r2, [sp, #4]
 8002564:	f000 fa3e 	bl	80029e4 <_sbrk_r>
 8002568:	1c43      	adds	r3, r0, #1
 800256a:	9a01      	ldr	r2, [sp, #4]
 800256c:	f000 8146 	beq.w	80027fc <_malloc_r+0x4e0>
 8002570:	eba0 010b 	sub.w	r1, r0, fp
 8002574:	4441      	add	r1, r8
 8002576:	f041 0101 	orr.w	r1, r1, #1
 800257a:	6813      	ldr	r3, [r2, #0]
 800257c:	f8c7 b008 	str.w	fp, [r7, #8]
 8002580:	4443      	add	r3, r8
 8002582:	42bc      	cmp	r4, r7
 8002584:	f8cb 1004 	str.w	r1, [fp, #4]
 8002588:	6013      	str	r3, [r2, #0]
 800258a:	d015      	beq.n	80025b8 <_malloc_r+0x29c>
 800258c:	f1b9 0f0f 	cmp.w	r9, #15
 8002590:	f240 8130 	bls.w	80027f4 <_malloc_r+0x4d8>
 8002594:	6860      	ldr	r0, [r4, #4]
 8002596:	f1a9 010c 	sub.w	r1, r9, #12
 800259a:	f021 0107 	bic.w	r1, r1, #7
 800259e:	f000 0001 	and.w	r0, r0, #1
 80025a2:	eb04 0c01 	add.w	ip, r4, r1
 80025a6:	4308      	orrs	r0, r1
 80025a8:	f04f 0e05 	mov.w	lr, #5
 80025ac:	290f      	cmp	r1, #15
 80025ae:	6060      	str	r0, [r4, #4]
 80025b0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80025b4:	f200 813a 	bhi.w	800282c <_malloc_r+0x510>
 80025b8:	4a29      	ldr	r2, [pc, #164]	; (8002660 <_malloc_r+0x344>)
 80025ba:	482a      	ldr	r0, [pc, #168]	; (8002664 <_malloc_r+0x348>)
 80025bc:	6811      	ldr	r1, [r2, #0]
 80025be:	68bc      	ldr	r4, [r7, #8]
 80025c0:	428b      	cmp	r3, r1
 80025c2:	6801      	ldr	r1, [r0, #0]
 80025c4:	bf88      	it	hi
 80025c6:	6013      	strhi	r3, [r2, #0]
 80025c8:	6862      	ldr	r2, [r4, #4]
 80025ca:	428b      	cmp	r3, r1
 80025cc:	f022 0203 	bic.w	r2, r2, #3
 80025d0:	bf88      	it	hi
 80025d2:	6003      	strhi	r3, [r0, #0]
 80025d4:	e0a7      	b.n	8002726 <_malloc_r+0x40a>
 80025d6:	1962      	adds	r2, r4, r5
 80025d8:	f043 0301 	orr.w	r3, r3, #1
 80025dc:	f045 0501 	orr.w	r5, r5, #1
 80025e0:	6065      	str	r5, [r4, #4]
 80025e2:	4630      	mov	r0, r6
 80025e4:	60ba      	str	r2, [r7, #8]
 80025e6:	6053      	str	r3, [r2, #4]
 80025e8:	f000 f98c 	bl	8002904 <__malloc_unlock>
 80025ec:	3408      	adds	r4, #8
 80025ee:	4620      	mov	r0, r4
 80025f0:	b003      	add	sp, #12
 80025f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80025f6:	4423      	add	r3, r4
 80025f8:	68e1      	ldr	r1, [r4, #12]
 80025fa:	685a      	ldr	r2, [r3, #4]
 80025fc:	68a5      	ldr	r5, [r4, #8]
 80025fe:	f042 0201 	orr.w	r2, r2, #1
 8002602:	60e9      	str	r1, [r5, #12]
 8002604:	4630      	mov	r0, r6
 8002606:	608d      	str	r5, [r1, #8]
 8002608:	605a      	str	r2, [r3, #4]
 800260a:	f000 f97b 	bl	8002904 <__malloc_unlock>
 800260e:	3408      	adds	r4, #8
 8002610:	4620      	mov	r0, r4
 8002612:	b003      	add	sp, #12
 8002614:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002618:	68dc      	ldr	r4, [r3, #12]
 800261a:	42a3      	cmp	r3, r4
 800261c:	bf08      	it	eq
 800261e:	3002      	addeq	r0, #2
 8002620:	f43f aed6 	beq.w	80023d0 <_malloc_r+0xb4>
 8002624:	e692      	b.n	800234c <_malloc_r+0x30>
 8002626:	2b14      	cmp	r3, #20
 8002628:	d971      	bls.n	800270e <_malloc_r+0x3f2>
 800262a:	2b54      	cmp	r3, #84	; 0x54
 800262c:	f200 80ad 	bhi.w	800278a <_malloc_r+0x46e>
 8002630:	0b2b      	lsrs	r3, r5, #12
 8002632:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8002636:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800263a:	00c3      	lsls	r3, r0, #3
 800263c:	e6b3      	b.n	80023a6 <_malloc_r+0x8a>
 800263e:	4423      	add	r3, r4
 8002640:	4630      	mov	r0, r6
 8002642:	685a      	ldr	r2, [r3, #4]
 8002644:	f042 0201 	orr.w	r2, r2, #1
 8002648:	605a      	str	r2, [r3, #4]
 800264a:	3408      	adds	r4, #8
 800264c:	f000 f95a 	bl	8002904 <__malloc_unlock>
 8002650:	e68c      	b.n	800236c <_malloc_r+0x50>
 8002652:	bf00      	nop
 8002654:	200005d8 	.word	0x200005d8
 8002658:	20000c2c 	.word	0x20000c2c
 800265c:	20000bfc 	.word	0x20000bfc
 8002660:	20000c24 	.word	0x20000c24
 8002664:	20000c28 	.word	0x20000c28
 8002668:	200005e0 	.word	0x200005e0
 800266c:	200009e0 	.word	0x200009e0
 8002670:	1961      	adds	r1, r4, r5
 8002672:	f045 0e01 	orr.w	lr, r5, #1
 8002676:	f042 0501 	orr.w	r5, r2, #1
 800267a:	f8c4 e004 	str.w	lr, [r4, #4]
 800267e:	4630      	mov	r0, r6
 8002680:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8002684:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8002688:	604d      	str	r5, [r1, #4]
 800268a:	50e2      	str	r2, [r4, r3]
 800268c:	f000 f93a 	bl	8002904 <__malloc_unlock>
 8002690:	3408      	adds	r4, #8
 8002692:	e66b      	b.n	800236c <_malloc_r+0x50>
 8002694:	08e8      	lsrs	r0, r5, #3
 8002696:	f105 0308 	add.w	r3, r5, #8
 800269a:	e64f      	b.n	800233c <_malloc_r+0x20>
 800269c:	f108 0801 	add.w	r8, r8, #1
 80026a0:	f018 0f03 	tst.w	r8, #3
 80026a4:	f10e 0e08 	add.w	lr, lr, #8
 80026a8:	f47f aed0 	bne.w	800244c <_malloc_r+0x130>
 80026ac:	e052      	b.n	8002754 <_malloc_r+0x438>
 80026ae:	4419      	add	r1, r3
 80026b0:	461c      	mov	r4, r3
 80026b2:	684a      	ldr	r2, [r1, #4]
 80026b4:	68db      	ldr	r3, [r3, #12]
 80026b6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80026ba:	f042 0201 	orr.w	r2, r2, #1
 80026be:	604a      	str	r2, [r1, #4]
 80026c0:	4630      	mov	r0, r6
 80026c2:	60eb      	str	r3, [r5, #12]
 80026c4:	609d      	str	r5, [r3, #8]
 80026c6:	f000 f91d 	bl	8002904 <__malloc_unlock>
 80026ca:	e64f      	b.n	800236c <_malloc_r+0x50>
 80026cc:	0a5a      	lsrs	r2, r3, #9
 80026ce:	2a04      	cmp	r2, #4
 80026d0:	d935      	bls.n	800273e <_malloc_r+0x422>
 80026d2:	2a14      	cmp	r2, #20
 80026d4:	d86f      	bhi.n	80027b6 <_malloc_r+0x49a>
 80026d6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 80026da:	00c9      	lsls	r1, r1, #3
 80026dc:	325b      	adds	r2, #91	; 0x5b
 80026de:	eb07 0e01 	add.w	lr, r7, r1
 80026e2:	5879      	ldr	r1, [r7, r1]
 80026e4:	f1ae 0e08 	sub.w	lr, lr, #8
 80026e8:	458e      	cmp	lr, r1
 80026ea:	d058      	beq.n	800279e <_malloc_r+0x482>
 80026ec:	684a      	ldr	r2, [r1, #4]
 80026ee:	f022 0203 	bic.w	r2, r2, #3
 80026f2:	429a      	cmp	r2, r3
 80026f4:	d902      	bls.n	80026fc <_malloc_r+0x3e0>
 80026f6:	6889      	ldr	r1, [r1, #8]
 80026f8:	458e      	cmp	lr, r1
 80026fa:	d1f7      	bne.n	80026ec <_malloc_r+0x3d0>
 80026fc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8002700:	687b      	ldr	r3, [r7, #4]
 8002702:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8002706:	f8ce 4008 	str.w	r4, [lr, #8]
 800270a:	60cc      	str	r4, [r1, #12]
 800270c:	e68c      	b.n	8002428 <_malloc_r+0x10c>
 800270e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8002712:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8002716:	00c3      	lsls	r3, r0, #3
 8002718:	e645      	b.n	80023a6 <_malloc_r+0x8a>
 800271a:	42bc      	cmp	r4, r7
 800271c:	d072      	beq.n	8002804 <_malloc_r+0x4e8>
 800271e:	68bc      	ldr	r4, [r7, #8]
 8002720:	6862      	ldr	r2, [r4, #4]
 8002722:	f022 0203 	bic.w	r2, r2, #3
 8002726:	4295      	cmp	r5, r2
 8002728:	eba2 0305 	sub.w	r3, r2, r5
 800272c:	d802      	bhi.n	8002734 <_malloc_r+0x418>
 800272e:	2b0f      	cmp	r3, #15
 8002730:	f73f af51 	bgt.w	80025d6 <_malloc_r+0x2ba>
 8002734:	4630      	mov	r0, r6
 8002736:	f000 f8e5 	bl	8002904 <__malloc_unlock>
 800273a:	2400      	movs	r4, #0
 800273c:	e616      	b.n	800236c <_malloc_r+0x50>
 800273e:	099a      	lsrs	r2, r3, #6
 8002740:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8002744:	00c9      	lsls	r1, r1, #3
 8002746:	3238      	adds	r2, #56	; 0x38
 8002748:	e7c9      	b.n	80026de <_malloc_r+0x3c2>
 800274a:	f8d9 9000 	ldr.w	r9, [r9]
 800274e:	4599      	cmp	r9, r3
 8002750:	f040 8083 	bne.w	800285a <_malloc_r+0x53e>
 8002754:	f010 0f03 	tst.w	r0, #3
 8002758:	f1a9 0308 	sub.w	r3, r9, #8
 800275c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8002760:	d1f3      	bne.n	800274a <_malloc_r+0x42e>
 8002762:	687b      	ldr	r3, [r7, #4]
 8002764:	ea23 0304 	bic.w	r3, r3, r4
 8002768:	607b      	str	r3, [r7, #4]
 800276a:	0064      	lsls	r4, r4, #1
 800276c:	429c      	cmp	r4, r3
 800276e:	f63f aeac 	bhi.w	80024ca <_malloc_r+0x1ae>
 8002772:	b91c      	cbnz	r4, 800277c <_malloc_r+0x460>
 8002774:	e6a9      	b.n	80024ca <_malloc_r+0x1ae>
 8002776:	0064      	lsls	r4, r4, #1
 8002778:	f108 0804 	add.w	r8, r8, #4
 800277c:	421c      	tst	r4, r3
 800277e:	d0fa      	beq.n	8002776 <_malloc_r+0x45a>
 8002780:	4640      	mov	r0, r8
 8002782:	e65f      	b.n	8002444 <_malloc_r+0x128>
 8002784:	f108 0810 	add.w	r8, r8, #16
 8002788:	e6bc      	b.n	8002504 <_malloc_r+0x1e8>
 800278a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800278e:	d826      	bhi.n	80027de <_malloc_r+0x4c2>
 8002790:	0beb      	lsrs	r3, r5, #15
 8002792:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8002796:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800279a:	00c3      	lsls	r3, r0, #3
 800279c:	e603      	b.n	80023a6 <_malloc_r+0x8a>
 800279e:	687b      	ldr	r3, [r7, #4]
 80027a0:	1092      	asrs	r2, r2, #2
 80027a2:	f04f 0801 	mov.w	r8, #1
 80027a6:	fa08 f202 	lsl.w	r2, r8, r2
 80027aa:	4313      	orrs	r3, r2
 80027ac:	607b      	str	r3, [r7, #4]
 80027ae:	e7a8      	b.n	8002702 <_malloc_r+0x3e6>
 80027b0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80027b4:	e6ce      	b.n	8002554 <_malloc_r+0x238>
 80027b6:	2a54      	cmp	r2, #84	; 0x54
 80027b8:	d829      	bhi.n	800280e <_malloc_r+0x4f2>
 80027ba:	0b1a      	lsrs	r2, r3, #12
 80027bc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80027c0:	00c9      	lsls	r1, r1, #3
 80027c2:	326e      	adds	r2, #110	; 0x6e
 80027c4:	e78b      	b.n	80026de <_malloc_r+0x3c2>
 80027c6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80027ca:	2900      	cmp	r1, #0
 80027cc:	f47f aeae 	bne.w	800252c <_malloc_r+0x210>
 80027d0:	eb09 0208 	add.w	r2, r9, r8
 80027d4:	68b9      	ldr	r1, [r7, #8]
 80027d6:	f042 0201 	orr.w	r2, r2, #1
 80027da:	604a      	str	r2, [r1, #4]
 80027dc:	e6ec      	b.n	80025b8 <_malloc_r+0x29c>
 80027de:	f240 5254 	movw	r2, #1364	; 0x554
 80027e2:	4293      	cmp	r3, r2
 80027e4:	d81c      	bhi.n	8002820 <_malloc_r+0x504>
 80027e6:	0cab      	lsrs	r3, r5, #18
 80027e8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80027ec:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80027f0:	00c3      	lsls	r3, r0, #3
 80027f2:	e5d8      	b.n	80023a6 <_malloc_r+0x8a>
 80027f4:	2301      	movs	r3, #1
 80027f6:	f8cb 3004 	str.w	r3, [fp, #4]
 80027fa:	e79b      	b.n	8002734 <_malloc_r+0x418>
 80027fc:	2101      	movs	r1, #1
 80027fe:	f04f 0800 	mov.w	r8, #0
 8002802:	e6ba      	b.n	800257a <_malloc_r+0x25e>
 8002804:	4a16      	ldr	r2, [pc, #88]	; (8002860 <_malloc_r+0x544>)
 8002806:	6813      	ldr	r3, [r2, #0]
 8002808:	4443      	add	r3, r8
 800280a:	6013      	str	r3, [r2, #0]
 800280c:	e68e      	b.n	800252c <_malloc_r+0x210>
 800280e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8002812:	d814      	bhi.n	800283e <_malloc_r+0x522>
 8002814:	0bda      	lsrs	r2, r3, #15
 8002816:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800281a:	00c9      	lsls	r1, r1, #3
 800281c:	3277      	adds	r2, #119	; 0x77
 800281e:	e75e      	b.n	80026de <_malloc_r+0x3c2>
 8002820:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8002824:	207f      	movs	r0, #127	; 0x7f
 8002826:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800282a:	e5bc      	b.n	80023a6 <_malloc_r+0x8a>
 800282c:	f104 0108 	add.w	r1, r4, #8
 8002830:	4630      	mov	r0, r6
 8002832:	9201      	str	r2, [sp, #4]
 8002834:	f003 f828 	bl	8005888 <_free_r>
 8002838:	9a01      	ldr	r2, [sp, #4]
 800283a:	6813      	ldr	r3, [r2, #0]
 800283c:	e6bc      	b.n	80025b8 <_malloc_r+0x29c>
 800283e:	f240 5154 	movw	r1, #1364	; 0x554
 8002842:	428a      	cmp	r2, r1
 8002844:	d805      	bhi.n	8002852 <_malloc_r+0x536>
 8002846:	0c9a      	lsrs	r2, r3, #18
 8002848:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800284c:	00c9      	lsls	r1, r1, #3
 800284e:	327c      	adds	r2, #124	; 0x7c
 8002850:	e745      	b.n	80026de <_malloc_r+0x3c2>
 8002852:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8002856:	227e      	movs	r2, #126	; 0x7e
 8002858:	e741      	b.n	80026de <_malloc_r+0x3c2>
 800285a:	687b      	ldr	r3, [r7, #4]
 800285c:	e785      	b.n	800276a <_malloc_r+0x44e>
 800285e:	bf00      	nop
 8002860:	20000bfc 	.word	0x20000bfc

08002864 <memset>:
 8002864:	b4f0      	push	{r4, r5, r6, r7}
 8002866:	0786      	lsls	r6, r0, #30
 8002868:	d043      	beq.n	80028f2 <memset+0x8e>
 800286a:	1e54      	subs	r4, r2, #1
 800286c:	2a00      	cmp	r2, #0
 800286e:	d03e      	beq.n	80028ee <memset+0x8a>
 8002870:	b2ca      	uxtb	r2, r1
 8002872:	4603      	mov	r3, r0
 8002874:	e002      	b.n	800287c <memset+0x18>
 8002876:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800287a:	d338      	bcc.n	80028ee <memset+0x8a>
 800287c:	f803 2b01 	strb.w	r2, [r3], #1
 8002880:	079d      	lsls	r5, r3, #30
 8002882:	d1f8      	bne.n	8002876 <memset+0x12>
 8002884:	2c03      	cmp	r4, #3
 8002886:	d92b      	bls.n	80028e0 <memset+0x7c>
 8002888:	b2cd      	uxtb	r5, r1
 800288a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800288e:	2c0f      	cmp	r4, #15
 8002890:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002894:	d916      	bls.n	80028c4 <memset+0x60>
 8002896:	f1a4 0710 	sub.w	r7, r4, #16
 800289a:	093f      	lsrs	r7, r7, #4
 800289c:	f103 0620 	add.w	r6, r3, #32
 80028a0:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80028a4:	f103 0210 	add.w	r2, r3, #16
 80028a8:	e942 5504 	strd	r5, r5, [r2, #-16]
 80028ac:	e942 5502 	strd	r5, r5, [r2, #-8]
 80028b0:	3210      	adds	r2, #16
 80028b2:	42b2      	cmp	r2, r6
 80028b4:	d1f8      	bne.n	80028a8 <memset+0x44>
 80028b6:	f004 040f 	and.w	r4, r4, #15
 80028ba:	3701      	adds	r7, #1
 80028bc:	2c03      	cmp	r4, #3
 80028be:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80028c2:	d90d      	bls.n	80028e0 <memset+0x7c>
 80028c4:	461e      	mov	r6, r3
 80028c6:	4622      	mov	r2, r4
 80028c8:	3a04      	subs	r2, #4
 80028ca:	2a03      	cmp	r2, #3
 80028cc:	f846 5b04 	str.w	r5, [r6], #4
 80028d0:	d8fa      	bhi.n	80028c8 <memset+0x64>
 80028d2:	1f22      	subs	r2, r4, #4
 80028d4:	f022 0203 	bic.w	r2, r2, #3
 80028d8:	3204      	adds	r2, #4
 80028da:	4413      	add	r3, r2
 80028dc:	f004 0403 	and.w	r4, r4, #3
 80028e0:	b12c      	cbz	r4, 80028ee <memset+0x8a>
 80028e2:	b2c9      	uxtb	r1, r1
 80028e4:	441c      	add	r4, r3
 80028e6:	f803 1b01 	strb.w	r1, [r3], #1
 80028ea:	429c      	cmp	r4, r3
 80028ec:	d1fb      	bne.n	80028e6 <memset+0x82>
 80028ee:	bcf0      	pop	{r4, r5, r6, r7}
 80028f0:	4770      	bx	lr
 80028f2:	4614      	mov	r4, r2
 80028f4:	4603      	mov	r3, r0
 80028f6:	e7c5      	b.n	8002884 <memset+0x20>

080028f8 <__malloc_lock>:
 80028f8:	4801      	ldr	r0, [pc, #4]	; (8002900 <__malloc_lock+0x8>)
 80028fa:	f003 ba73 	b.w	8005de4 <__retarget_lock_acquire_recursive>
 80028fe:	bf00      	nop
 8002900:	20000cd8 	.word	0x20000cd8

08002904 <__malloc_unlock>:
 8002904:	4801      	ldr	r0, [pc, #4]	; (800290c <__malloc_unlock+0x8>)
 8002906:	f003 ba6f 	b.w	8005de8 <__retarget_lock_release_recursive>
 800290a:	bf00      	nop
 800290c:	20000cd8 	.word	0x20000cd8

08002910 <printf>:
 8002910:	b40f      	push	{r0, r1, r2, r3}
 8002912:	b500      	push	{lr}
 8002914:	4907      	ldr	r1, [pc, #28]	; (8002934 <printf+0x24>)
 8002916:	b083      	sub	sp, #12
 8002918:	ab04      	add	r3, sp, #16
 800291a:	6808      	ldr	r0, [r1, #0]
 800291c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002920:	6881      	ldr	r1, [r0, #8]
 8002922:	9301      	str	r3, [sp, #4]
 8002924:	f000 f870 	bl	8002a08 <_vfprintf_r>
 8002928:	b003      	add	sp, #12
 800292a:	f85d eb04 	ldr.w	lr, [sp], #4
 800292e:	b004      	add	sp, #16
 8002930:	4770      	bx	lr
 8002932:	bf00      	nop
 8002934:	200001a8 	.word	0x200001a8

08002938 <_puts_r>:
 8002938:	b570      	push	{r4, r5, r6, lr}
 800293a:	4605      	mov	r5, r0
 800293c:	b088      	sub	sp, #32
 800293e:	4608      	mov	r0, r1
 8002940:	460c      	mov	r4, r1
 8002942:	f7fd fedd 	bl	8000700 <strlen>
 8002946:	4a22      	ldr	r2, [pc, #136]	; (80029d0 <_puts_r+0x98>)
 8002948:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800294a:	9404      	str	r4, [sp, #16]
 800294c:	2601      	movs	r6, #1
 800294e:	1c44      	adds	r4, r0, #1
 8002950:	a904      	add	r1, sp, #16
 8002952:	9206      	str	r2, [sp, #24]
 8002954:	2202      	movs	r2, #2
 8002956:	9403      	str	r4, [sp, #12]
 8002958:	9005      	str	r0, [sp, #20]
 800295a:	68ac      	ldr	r4, [r5, #8]
 800295c:	9607      	str	r6, [sp, #28]
 800295e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002962:	b31b      	cbz	r3, 80029ac <_puts_r+0x74>
 8002964:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002966:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800296a:	07ce      	lsls	r6, r1, #31
 800296c:	b29a      	uxth	r2, r3
 800296e:	d401      	bmi.n	8002974 <_puts_r+0x3c>
 8002970:	0590      	lsls	r0, r2, #22
 8002972:	d525      	bpl.n	80029c0 <_puts_r+0x88>
 8002974:	0491      	lsls	r1, r2, #18
 8002976:	d406      	bmi.n	8002986 <_puts_r+0x4e>
 8002978:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800297a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800297e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002982:	81a3      	strh	r3, [r4, #12]
 8002984:	6662      	str	r2, [r4, #100]	; 0x64
 8002986:	4628      	mov	r0, r5
 8002988:	aa01      	add	r2, sp, #4
 800298a:	4621      	mov	r1, r4
 800298c:	f003 f870 	bl	8005a70 <__sfvwrite_r>
 8002990:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002992:	2800      	cmp	r0, #0
 8002994:	bf0c      	ite	eq
 8002996:	250a      	moveq	r5, #10
 8002998:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 800299c:	07da      	lsls	r2, r3, #31
 800299e:	d402      	bmi.n	80029a6 <_puts_r+0x6e>
 80029a0:	89a3      	ldrh	r3, [r4, #12]
 80029a2:	059b      	lsls	r3, r3, #22
 80029a4:	d506      	bpl.n	80029b4 <_puts_r+0x7c>
 80029a6:	4628      	mov	r0, r5
 80029a8:	b008      	add	sp, #32
 80029aa:	bd70      	pop	{r4, r5, r6, pc}
 80029ac:	4628      	mov	r0, r5
 80029ae:	f002 fec9 	bl	8005744 <__sinit>
 80029b2:	e7d7      	b.n	8002964 <_puts_r+0x2c>
 80029b4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80029b6:	f003 fa17 	bl	8005de8 <__retarget_lock_release_recursive>
 80029ba:	4628      	mov	r0, r5
 80029bc:	b008      	add	sp, #32
 80029be:	bd70      	pop	{r4, r5, r6, pc}
 80029c0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80029c2:	f003 fa0f 	bl	8005de4 <__retarget_lock_acquire_recursive>
 80029c6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80029ca:	b29a      	uxth	r2, r3
 80029cc:	e7d2      	b.n	8002974 <_puts_r+0x3c>
 80029ce:	bf00      	nop
 80029d0:	08007180 	.word	0x08007180

080029d4 <puts>:
 80029d4:	4b02      	ldr	r3, [pc, #8]	; (80029e0 <puts+0xc>)
 80029d6:	4601      	mov	r1, r0
 80029d8:	6818      	ldr	r0, [r3, #0]
 80029da:	f7ff bfad 	b.w	8002938 <_puts_r>
 80029de:	bf00      	nop
 80029e0:	200001a8 	.word	0x200001a8

080029e4 <_sbrk_r>:
 80029e4:	b538      	push	{r3, r4, r5, lr}
 80029e6:	4c07      	ldr	r4, [pc, #28]	; (8002a04 <_sbrk_r+0x20>)
 80029e8:	2300      	movs	r3, #0
 80029ea:	4605      	mov	r5, r0
 80029ec:	4608      	mov	r0, r1
 80029ee:	6023      	str	r3, [r4, #0]
 80029f0:	f7ff fbda 	bl	80021a8 <_sbrk>
 80029f4:	1c43      	adds	r3, r0, #1
 80029f6:	d000      	beq.n	80029fa <_sbrk_r+0x16>
 80029f8:	bd38      	pop	{r3, r4, r5, pc}
 80029fa:	6823      	ldr	r3, [r4, #0]
 80029fc:	2b00      	cmp	r3, #0
 80029fe:	d0fb      	beq.n	80029f8 <_sbrk_r+0x14>
 8002a00:	602b      	str	r3, [r5, #0]
 8002a02:	bd38      	pop	{r3, r4, r5, pc}
 8002a04:	20000cec 	.word	0x20000cec

08002a08 <_vfprintf_r>:
 8002a08:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002a0c:	b0d7      	sub	sp, #348	; 0x15c
 8002a0e:	461c      	mov	r4, r3
 8002a10:	4689      	mov	r9, r1
 8002a12:	4617      	mov	r7, r2
 8002a14:	4605      	mov	r5, r0
 8002a16:	9003      	str	r0, [sp, #12]
 8002a18:	f003 f9d2 	bl	8005dc0 <_localeconv_r>
 8002a1c:	6803      	ldr	r3, [r0, #0]
 8002a1e:	9316      	str	r3, [sp, #88]	; 0x58
 8002a20:	4618      	mov	r0, r3
 8002a22:	f7fd fe6d 	bl	8000700 <strlen>
 8002a26:	9408      	str	r4, [sp, #32]
 8002a28:	9015      	str	r0, [sp, #84]	; 0x54
 8002a2a:	b11d      	cbz	r5, 8002a34 <_vfprintf_r+0x2c>
 8002a2c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002a2e:	2b00      	cmp	r3, #0
 8002a30:	f000 8107 	beq.w	8002c42 <_vfprintf_r+0x23a>
 8002a34:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002a38:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002a3c:	07c8      	lsls	r0, r1, #31
 8002a3e:	b293      	uxth	r3, r2
 8002a40:	d402      	bmi.n	8002a48 <_vfprintf_r+0x40>
 8002a42:	0599      	lsls	r1, r3, #22
 8002a44:	f140 811f 	bpl.w	8002c86 <_vfprintf_r+0x27e>
 8002a48:	049e      	lsls	r6, r3, #18
 8002a4a:	d40a      	bmi.n	8002a62 <_vfprintf_r+0x5a>
 8002a4c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002a50:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002a54:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002a58:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002a5c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002a60:	b29b      	uxth	r3, r3
 8002a62:	071d      	lsls	r5, r3, #28
 8002a64:	f140 80b2 	bpl.w	8002bcc <_vfprintf_r+0x1c4>
 8002a68:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002a6c:	2a00      	cmp	r2, #0
 8002a6e:	f000 80ad 	beq.w	8002bcc <_vfprintf_r+0x1c4>
 8002a72:	f003 021a 	and.w	r2, r3, #26
 8002a76:	2a0a      	cmp	r2, #10
 8002a78:	f000 80c9 	beq.w	8002c0e <_vfprintf_r+0x206>
 8002a7c:	2300      	movs	r3, #0
 8002a7e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002c98 <_vfprintf_r+0x290>
 8002a82:	9310      	str	r3, [sp, #64]	; 0x40
 8002a84:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002a88:	9317      	str	r3, [sp, #92]	; 0x5c
 8002a8a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002a8e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002a90:	9318      	str	r3, [sp, #96]	; 0x60
 8002a92:	9305      	str	r3, [sp, #20]
 8002a94:	ab2d      	add	r3, sp, #180	; 0xb4
 8002a96:	932a      	str	r3, [sp, #168]	; 0xa8
 8002a98:	469b      	mov	fp, r3
 8002a9a:	783b      	ldrb	r3, [r7, #0]
 8002a9c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002aa0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002aa4:	2b00      	cmp	r3, #0
 8002aa6:	f000 8259 	beq.w	8002f5c <_vfprintf_r+0x554>
 8002aaa:	2b25      	cmp	r3, #37	; 0x25
 8002aac:	463c      	mov	r4, r7
 8002aae:	d102      	bne.n	8002ab6 <_vfprintf_r+0xae>
 8002ab0:	e01d      	b.n	8002aee <_vfprintf_r+0xe6>
 8002ab2:	2b25      	cmp	r3, #37	; 0x25
 8002ab4:	d003      	beq.n	8002abe <_vfprintf_r+0xb6>
 8002ab6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002aba:	2b00      	cmp	r3, #0
 8002abc:	d1f9      	bne.n	8002ab2 <_vfprintf_r+0xaa>
 8002abe:	1be5      	subs	r5, r4, r7
 8002ac0:	b18d      	cbz	r5, 8002ae6 <_vfprintf_r+0xde>
 8002ac2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002ac6:	3301      	adds	r3, #1
 8002ac8:	442a      	add	r2, r5
 8002aca:	2b07      	cmp	r3, #7
 8002acc:	f8cb 7000 	str.w	r7, [fp]
 8002ad0:	f8cb 5004 	str.w	r5, [fp, #4]
 8002ad4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002ad8:	f300 80ca 	bgt.w	8002c70 <_vfprintf_r+0x268>
 8002adc:	f10b 0b08 	add.w	fp, fp, #8
 8002ae0:	9b05      	ldr	r3, [sp, #20]
 8002ae2:	442b      	add	r3, r5
 8002ae4:	9305      	str	r3, [sp, #20]
 8002ae6:	7823      	ldrb	r3, [r4, #0]
 8002ae8:	2b00      	cmp	r3, #0
 8002aea:	f000 8237 	beq.w	8002f5c <_vfprintf_r+0x554>
 8002aee:	2300      	movs	r3, #0
 8002af0:	7866      	ldrb	r6, [r4, #1]
 8002af2:	9306      	str	r3, [sp, #24]
 8002af4:	4698      	mov	r8, r3
 8002af6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002afa:	f104 0a01 	add.w	sl, r4, #1
 8002afe:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002b02:	252b      	movs	r5, #43	; 0x2b
 8002b04:	f10a 0a01 	add.w	sl, sl, #1
 8002b08:	f1a6 0320 	sub.w	r3, r6, #32
 8002b0c:	2b5a      	cmp	r3, #90	; 0x5a
 8002b0e:	f200 842a 	bhi.w	8003366 <_vfprintf_r+0x95e>
 8002b12:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002b16:	03aa      	.short	0x03aa
 8002b18:	04280428 	.word	0x04280428
 8002b1c:	0428029c 	.word	0x0428029c
 8002b20:	04280428 	.word	0x04280428
 8002b24:	042802a7 	.word	0x042802a7
 8002b28:	02c60428 	.word	0x02c60428
 8002b2c:	042802d2 	.word	0x042802d2
 8002b30:	02dc02d7 	.word	0x02dc02d7
 8002b34:	02f60428 	.word	0x02f60428
 8002b38:	026d026d 	.word	0x026d026d
 8002b3c:	026d026d 	.word	0x026d026d
 8002b40:	026d026d 	.word	0x026d026d
 8002b44:	026d026d 	.word	0x026d026d
 8002b48:	0428026d 	.word	0x0428026d
 8002b4c:	04280428 	.word	0x04280428
 8002b50:	04280428 	.word	0x04280428
 8002b54:	04280428 	.word	0x04280428
 8002b58:	042802fb 	.word	0x042802fb
 8002b5c:	03f3033c 	.word	0x03f3033c
 8002b60:	02fb02fb 	.word	0x02fb02fb
 8002b64:	042802fb 	.word	0x042802fb
 8002b68:	04280428 	.word	0x04280428
 8002b6c:	03ee0428 	.word	0x03ee0428
 8002b70:	04280428 	.word	0x04280428
 8002b74:	0428009a 	.word	0x0428009a
 8002b78:	04280428 	.word	0x04280428
 8002b7c:	04280350 	.word	0x04280350
 8002b80:	04280379 	.word	0x04280379
 8002b84:	03900428 	.word	0x03900428
 8002b88:	04280428 	.word	0x04280428
 8002b8c:	04280428 	.word	0x04280428
 8002b90:	04280428 	.word	0x04280428
 8002b94:	04280428 	.word	0x04280428
 8002b98:	042802fb 	.word	0x042802fb
 8002b9c:	00c5033c 	.word	0x00c5033c
 8002ba0:	02fb02fb 	.word	0x02fb02fb
 8002ba4:	03d102fb 	.word	0x03d102fb
 8002ba8:	007000c5 	.word	0x007000c5
 8002bac:	03b50428 	.word	0x03b50428
 8002bb0:	03c20428 	.word	0x03c20428
 8002bb4:	03de009c 	.word	0x03de009c
 8002bb8:	04280070 	.word	0x04280070
 8002bbc:	00720350 	.word	0x00720350
 8002bc0:	0428022c 	.word	0x0428022c
 8002bc4:	027c0428 	.word	0x027c0428
 8002bc8:	00720428 	.word	0x00720428
 8002bcc:	4649      	mov	r1, r9
 8002bce:	9803      	ldr	r0, [sp, #12]
 8002bd0:	f001 fc9a 	bl	8004508 <__swsetup_r>
 8002bd4:	b1a0      	cbz	r0, 8002c00 <_vfprintf_r+0x1f8>
 8002bd6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002bda:	07d8      	lsls	r0, r3, #31
 8002bdc:	d404      	bmi.n	8002be8 <_vfprintf_r+0x1e0>
 8002bde:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002be2:	0599      	lsls	r1, r3, #22
 8002be4:	f140 83b7 	bpl.w	8003356 <_vfprintf_r+0x94e>
 8002be8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002bec:	9305      	str	r3, [sp, #20]
 8002bee:	9805      	ldr	r0, [sp, #20]
 8002bf0:	b057      	add	sp, #348	; 0x15c
 8002bf2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002bf6:	f048 0820 	orr.w	r8, r8, #32
 8002bfa:	f89a 6000 	ldrb.w	r6, [sl]
 8002bfe:	e781      	b.n	8002b04 <_vfprintf_r+0xfc>
 8002c00:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002c04:	f003 021a 	and.w	r2, r3, #26
 8002c08:	2a0a      	cmp	r2, #10
 8002c0a:	f47f af37 	bne.w	8002a7c <_vfprintf_r+0x74>
 8002c0e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002c12:	2a00      	cmp	r2, #0
 8002c14:	f6ff af32 	blt.w	8002a7c <_vfprintf_r+0x74>
 8002c18:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002c1c:	07d2      	lsls	r2, r2, #31
 8002c1e:	d405      	bmi.n	8002c2c <_vfprintf_r+0x224>
 8002c20:	059b      	lsls	r3, r3, #22
 8002c22:	d403      	bmi.n	8002c2c <_vfprintf_r+0x224>
 8002c24:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c28:	f003 f8de 	bl	8005de8 <__retarget_lock_release_recursive>
 8002c2c:	4623      	mov	r3, r4
 8002c2e:	463a      	mov	r2, r7
 8002c30:	4649      	mov	r1, r9
 8002c32:	9803      	ldr	r0, [sp, #12]
 8002c34:	f001 fc26 	bl	8004484 <__sbprintf>
 8002c38:	9005      	str	r0, [sp, #20]
 8002c3a:	9805      	ldr	r0, [sp, #20]
 8002c3c:	b057      	add	sp, #348	; 0x15c
 8002c3e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002c42:	9803      	ldr	r0, [sp, #12]
 8002c44:	f002 fd7e 	bl	8005744 <__sinit>
 8002c48:	e6f4      	b.n	8002a34 <_vfprintf_r+0x2c>
 8002c4a:	f048 0810 	orr.w	r8, r8, #16
 8002c4e:	f018 0f20 	tst.w	r8, #32
 8002c52:	f000 836c 	beq.w	800332e <_vfprintf_r+0x926>
 8002c56:	9c08      	ldr	r4, [sp, #32]
 8002c58:	3407      	adds	r4, #7
 8002c5a:	f024 0307 	bic.w	r3, r4, #7
 8002c5e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002c62:	f103 0208 	add.w	r2, r3, #8
 8002c66:	9208      	str	r2, [sp, #32]
 8002c68:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002c6c:	2200      	movs	r2, #0
 8002c6e:	e18c      	b.n	8002f8a <_vfprintf_r+0x582>
 8002c70:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c72:	9907      	ldr	r1, [sp, #28]
 8002c74:	9803      	ldr	r0, [sp, #12]
 8002c76:	f003 ff33 	bl	8006ae0 <__sprint_r>
 8002c7a:	2800      	cmp	r0, #0
 8002c7c:	f041 8376 	bne.w	800436c <_vfprintf_r+0x1964>
 8002c80:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c84:	e72c      	b.n	8002ae0 <_vfprintf_r+0xd8>
 8002c86:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c8a:	f003 f8ab 	bl	8005de4 <__retarget_lock_acquire_recursive>
 8002c8e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002c92:	b293      	uxth	r3, r2
 8002c94:	e6d8      	b.n	8002a48 <_vfprintf_r+0x40>
 8002c96:	bf00      	nop
	...
 8002ca0:	4643      	mov	r3, r8
 8002ca2:	069f      	lsls	r7, r3, #26
 8002ca4:	f140 832f 	bpl.w	8003306 <_vfprintf_r+0x8fe>
 8002ca8:	9c08      	ldr	r4, [sp, #32]
 8002caa:	3407      	adds	r4, #7
 8002cac:	f024 0407 	bic.w	r4, r4, #7
 8002cb0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002cb4:	f104 0208 	add.w	r2, r4, #8
 8002cb8:	9208      	str	r2, [sp, #32]
 8002cba:	4604      	mov	r4, r0
 8002cbc:	460d      	mov	r5, r1
 8002cbe:	2800      	cmp	r0, #0
 8002cc0:	f171 0200 	sbcs.w	r2, r1, #0
 8002cc4:	da05      	bge.n	8002cd2 <_vfprintf_r+0x2ca>
 8002cc6:	222d      	movs	r2, #45	; 0x2d
 8002cc8:	4264      	negs	r4, r4
 8002cca:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002cce:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002cd2:	aa56      	add	r2, sp, #344	; 0x158
 8002cd4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002cd8:	9204      	str	r2, [sp, #16]
 8002cda:	f000 84b2 	beq.w	8003642 <_vfprintf_r+0xc3a>
 8002cde:	2201      	movs	r2, #1
 8002ce0:	ea54 0105 	orrs.w	r1, r4, r5
 8002ce4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002ce8:	f040 8159 	bne.w	8002f9e <_vfprintf_r+0x596>
 8002cec:	f1b9 0f00 	cmp.w	r9, #0
 8002cf0:	f040 8619 	bne.w	8003926 <_vfprintf_r+0xf1e>
 8002cf4:	2a00      	cmp	r2, #0
 8002cf6:	f040 8508 	bne.w	800370a <_vfprintf_r+0xd02>
 8002cfa:	f013 0301 	ands.w	r3, r3, #1
 8002cfe:	af56      	add	r7, sp, #344	; 0x158
 8002d00:	9309      	str	r3, [sp, #36]	; 0x24
 8002d02:	d002      	beq.n	8002d0a <_vfprintf_r+0x302>
 8002d04:	2330      	movs	r3, #48	; 0x30
 8002d06:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002d0a:	2300      	movs	r3, #0
 8002d0c:	930a      	str	r3, [sp, #40]	; 0x28
 8002d0e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002d10:	9314      	str	r3, [sp, #80]	; 0x50
 8002d12:	9311      	str	r3, [sp, #68]	; 0x44
 8002d14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002d16:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d1a:	454b      	cmp	r3, r9
 8002d1c:	bfb8      	it	lt
 8002d1e:	464b      	movlt	r3, r9
 8002d20:	9304      	str	r3, [sp, #16]
 8002d22:	b112      	cbz	r2, 8002d2a <_vfprintf_r+0x322>
 8002d24:	9b04      	ldr	r3, [sp, #16]
 8002d26:	3301      	adds	r3, #1
 8002d28:	9304      	str	r3, [sp, #16]
 8002d2a:	f018 0302 	ands.w	r3, r8, #2
 8002d2e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002d30:	d002      	beq.n	8002d38 <_vfprintf_r+0x330>
 8002d32:	9b04      	ldr	r3, [sp, #16]
 8002d34:	3302      	adds	r3, #2
 8002d36:	9304      	str	r3, [sp, #16]
 8002d38:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002d3c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002d3e:	930e      	str	r3, [sp, #56]	; 0x38
 8002d40:	d13f      	bne.n	8002dc2 <_vfprintf_r+0x3ba>
 8002d42:	9b06      	ldr	r3, [sp, #24]
 8002d44:	9904      	ldr	r1, [sp, #16]
 8002d46:	1a5d      	subs	r5, r3, r1
 8002d48:	2d00      	cmp	r5, #0
 8002d4a:	dd3a      	ble.n	8002dc2 <_vfprintf_r+0x3ba>
 8002d4c:	2d10      	cmp	r5, #16
 8002d4e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d50:	dd29      	ble.n	8002da6 <_vfprintf_r+0x39e>
 8002d52:	4659      	mov	r1, fp
 8002d54:	4620      	mov	r0, r4
 8002d56:	9620      	str	r6, [sp, #128]	; 0x80
 8002d58:	2310      	movs	r3, #16
 8002d5a:	9c03      	ldr	r4, [sp, #12]
 8002d5c:	9e07      	ldr	r6, [sp, #28]
 8002d5e:	46bb      	mov	fp, r7
 8002d60:	e004      	b.n	8002d6c <_vfprintf_r+0x364>
 8002d62:	3d10      	subs	r5, #16
 8002d64:	2d10      	cmp	r5, #16
 8002d66:	f101 0108 	add.w	r1, r1, #8
 8002d6a:	dd18      	ble.n	8002d9e <_vfprintf_r+0x396>
 8002d6c:	3201      	adds	r2, #1
 8002d6e:	4fba      	ldr	r7, [pc, #744]	; (8003058 <_vfprintf_r+0x650>)
 8002d70:	3010      	adds	r0, #16
 8002d72:	2a07      	cmp	r2, #7
 8002d74:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002d78:	e9c1 7300 	strd	r7, r3, [r1]
 8002d7c:	ddf1      	ble.n	8002d62 <_vfprintf_r+0x35a>
 8002d7e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d80:	4631      	mov	r1, r6
 8002d82:	4620      	mov	r0, r4
 8002d84:	930c      	str	r3, [sp, #48]	; 0x30
 8002d86:	f003 feab 	bl	8006ae0 <__sprint_r>
 8002d8a:	2800      	cmp	r0, #0
 8002d8c:	f040 843d 	bne.w	800360a <_vfprintf_r+0xc02>
 8002d90:	3d10      	subs	r5, #16
 8002d92:	2d10      	cmp	r5, #16
 8002d94:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002d98:	a92d      	add	r1, sp, #180	; 0xb4
 8002d9a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002d9c:	dce6      	bgt.n	8002d6c <_vfprintf_r+0x364>
 8002d9e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002da0:	465f      	mov	r7, fp
 8002da2:	4604      	mov	r4, r0
 8002da4:	468b      	mov	fp, r1
 8002da6:	3201      	adds	r2, #1
 8002da8:	4bab      	ldr	r3, [pc, #684]	; (8003058 <_vfprintf_r+0x650>)
 8002daa:	442c      	add	r4, r5
 8002dac:	2a07      	cmp	r2, #7
 8002dae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002db2:	e9cb 3500 	strd	r3, r5, [fp]
 8002db6:	f300 84ff 	bgt.w	80037b8 <_vfprintf_r+0xdb0>
 8002dba:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002dbe:	f10b 0b08 	add.w	fp, fp, #8
 8002dc2:	b172      	cbz	r2, 8002de2 <_vfprintf_r+0x3da>
 8002dc4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002dc6:	3201      	adds	r2, #1
 8002dc8:	3401      	adds	r4, #1
 8002dca:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002dce:	2101      	movs	r1, #1
 8002dd0:	2a07      	cmp	r2, #7
 8002dd2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002dd6:	e9cb 0100 	strd	r0, r1, [fp]
 8002dda:	f300 8418 	bgt.w	800360e <_vfprintf_r+0xc06>
 8002dde:	f10b 0b08 	add.w	fp, fp, #8
 8002de2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002de4:	b16b      	cbz	r3, 8002e02 <_vfprintf_r+0x3fa>
 8002de6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002de8:	3301      	adds	r3, #1
 8002dea:	3402      	adds	r4, #2
 8002dec:	a923      	add	r1, sp, #140	; 0x8c
 8002dee:	2202      	movs	r2, #2
 8002df0:	2b07      	cmp	r3, #7
 8002df2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002df6:	e9cb 1200 	strd	r1, r2, [fp]
 8002dfa:	f300 8415 	bgt.w	8003628 <_vfprintf_r+0xc20>
 8002dfe:	f10b 0b08 	add.w	fp, fp, #8
 8002e02:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002e04:	2b80      	cmp	r3, #128	; 0x80
 8002e06:	f000 8331 	beq.w	800346c <_vfprintf_r+0xa64>
 8002e0a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002e0c:	eba9 0503 	sub.w	r5, r9, r3
 8002e10:	2d00      	cmp	r5, #0
 8002e12:	dd37      	ble.n	8002e84 <_vfprintf_r+0x47c>
 8002e14:	2d10      	cmp	r5, #16
 8002e16:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e18:	4b90      	ldr	r3, [pc, #576]	; (800305c <_vfprintf_r+0x654>)
 8002e1a:	dd28      	ble.n	8002e6e <_vfprintf_r+0x466>
 8002e1c:	4659      	mov	r1, fp
 8002e1e:	4620      	mov	r0, r4
 8002e20:	46bb      	mov	fp, r7
 8002e22:	f04f 0910 	mov.w	r9, #16
 8002e26:	4637      	mov	r7, r6
 8002e28:	461c      	mov	r4, r3
 8002e2a:	9e07      	ldr	r6, [sp, #28]
 8002e2c:	e004      	b.n	8002e38 <_vfprintf_r+0x430>
 8002e2e:	3d10      	subs	r5, #16
 8002e30:	2d10      	cmp	r5, #16
 8002e32:	f101 0108 	add.w	r1, r1, #8
 8002e36:	dd15      	ble.n	8002e64 <_vfprintf_r+0x45c>
 8002e38:	3201      	adds	r2, #1
 8002e3a:	3010      	adds	r0, #16
 8002e3c:	2a07      	cmp	r2, #7
 8002e3e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002e42:	e9c1 4900 	strd	r4, r9, [r1]
 8002e46:	ddf2      	ble.n	8002e2e <_vfprintf_r+0x426>
 8002e48:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e4a:	4631      	mov	r1, r6
 8002e4c:	9803      	ldr	r0, [sp, #12]
 8002e4e:	f003 fe47 	bl	8006ae0 <__sprint_r>
 8002e52:	2800      	cmp	r0, #0
 8002e54:	f040 83d9 	bne.w	800360a <_vfprintf_r+0xc02>
 8002e58:	3d10      	subs	r5, #16
 8002e5a:	2d10      	cmp	r5, #16
 8002e5c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002e60:	a92d      	add	r1, sp, #180	; 0xb4
 8002e62:	dce9      	bgt.n	8002e38 <_vfprintf_r+0x430>
 8002e64:	463e      	mov	r6, r7
 8002e66:	4623      	mov	r3, r4
 8002e68:	465f      	mov	r7, fp
 8002e6a:	4604      	mov	r4, r0
 8002e6c:	468b      	mov	fp, r1
 8002e6e:	3201      	adds	r2, #1
 8002e70:	442c      	add	r4, r5
 8002e72:	2a07      	cmp	r2, #7
 8002e74:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e78:	e9cb 3500 	strd	r3, r5, [fp]
 8002e7c:	f300 83ef 	bgt.w	800365e <_vfprintf_r+0xc56>
 8002e80:	f10b 0b08 	add.w	fp, fp, #8
 8002e84:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002e88:	f040 8280 	bne.w	800338c <_vfprintf_r+0x984>
 8002e8c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e8e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002e90:	f8cb 7000 	str.w	r7, [fp]
 8002e94:	3301      	adds	r3, #1
 8002e96:	4414      	add	r4, r2
 8002e98:	2b07      	cmp	r3, #7
 8002e9a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e9c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ea0:	932b      	str	r3, [sp, #172]	; 0xac
 8002ea2:	f300 8392 	bgt.w	80035ca <_vfprintf_r+0xbc2>
 8002ea6:	f10b 0b08 	add.w	fp, fp, #8
 8002eaa:	f018 0f04 	tst.w	r8, #4
 8002eae:	d03b      	beq.n	8002f28 <_vfprintf_r+0x520>
 8002eb0:	9b06      	ldr	r3, [sp, #24]
 8002eb2:	9a04      	ldr	r2, [sp, #16]
 8002eb4:	1a9d      	subs	r5, r3, r2
 8002eb6:	2d00      	cmp	r5, #0
 8002eb8:	dd36      	ble.n	8002f28 <_vfprintf_r+0x520>
 8002eba:	2d10      	cmp	r5, #16
 8002ebc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ebe:	dd21      	ble.n	8002f04 <_vfprintf_r+0x4fc>
 8002ec0:	2610      	movs	r6, #16
 8002ec2:	9f03      	ldr	r7, [sp, #12]
 8002ec4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002ec8:	e004      	b.n	8002ed4 <_vfprintf_r+0x4cc>
 8002eca:	3d10      	subs	r5, #16
 8002ecc:	2d10      	cmp	r5, #16
 8002ece:	f10b 0b08 	add.w	fp, fp, #8
 8002ed2:	dd17      	ble.n	8002f04 <_vfprintf_r+0x4fc>
 8002ed4:	3301      	adds	r3, #1
 8002ed6:	4a60      	ldr	r2, [pc, #384]	; (8003058 <_vfprintf_r+0x650>)
 8002ed8:	3410      	adds	r4, #16
 8002eda:	2b07      	cmp	r3, #7
 8002edc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002ee0:	e9cb 2600 	strd	r2, r6, [fp]
 8002ee4:	ddf1      	ble.n	8002eca <_vfprintf_r+0x4c2>
 8002ee6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ee8:	4641      	mov	r1, r8
 8002eea:	4638      	mov	r0, r7
 8002eec:	f003 fdf8 	bl	8006ae0 <__sprint_r>
 8002ef0:	2800      	cmp	r0, #0
 8002ef2:	f040 856c 	bne.w	80039ce <_vfprintf_r+0xfc6>
 8002ef6:	3d10      	subs	r5, #16
 8002ef8:	2d10      	cmp	r5, #16
 8002efa:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002efe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f02:	dce7      	bgt.n	8002ed4 <_vfprintf_r+0x4cc>
 8002f04:	3301      	adds	r3, #1
 8002f06:	4a54      	ldr	r2, [pc, #336]	; (8003058 <_vfprintf_r+0x650>)
 8002f08:	442c      	add	r4, r5
 8002f0a:	2b07      	cmp	r3, #7
 8002f0c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f10:	e9cb 2500 	strd	r2, r5, [fp]
 8002f14:	dd08      	ble.n	8002f28 <_vfprintf_r+0x520>
 8002f16:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f18:	9907      	ldr	r1, [sp, #28]
 8002f1a:	9803      	ldr	r0, [sp, #12]
 8002f1c:	f003 fde0 	bl	8006ae0 <__sprint_r>
 8002f20:	2800      	cmp	r0, #0
 8002f22:	f040 82e9 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 8002f26:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f28:	9904      	ldr	r1, [sp, #16]
 8002f2a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002f2e:	428a      	cmp	r2, r1
 8002f30:	bfac      	ite	ge
 8002f32:	189b      	addge	r3, r3, r2
 8002f34:	185b      	addlt	r3, r3, r1
 8002f36:	9305      	str	r3, [sp, #20]
 8002f38:	2c00      	cmp	r4, #0
 8002f3a:	f040 82d5 	bne.w	80034e8 <_vfprintf_r+0xae0>
 8002f3e:	2300      	movs	r3, #0
 8002f40:	932b      	str	r3, [sp, #172]	; 0xac
 8002f42:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002f44:	b11b      	cbz	r3, 8002f4e <_vfprintf_r+0x546>
 8002f46:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f48:	9803      	ldr	r0, [sp, #12]
 8002f4a:	f002 fc9d 	bl	8005888 <_free_r>
 8002f4e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f52:	4657      	mov	r7, sl
 8002f54:	783b      	ldrb	r3, [r7, #0]
 8002f56:	2b00      	cmp	r3, #0
 8002f58:	f47f ada7 	bne.w	8002aaa <_vfprintf_r+0xa2>
 8002f5c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002f5e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f62:	2b00      	cmp	r3, #0
 8002f64:	f041 80e7 	bne.w	8004136 <_vfprintf_r+0x172e>
 8002f68:	2300      	movs	r3, #0
 8002f6a:	932b      	str	r3, [sp, #172]	; 0xac
 8002f6c:	e2cb      	b.n	8003506 <_vfprintf_r+0xafe>
 8002f6e:	4643      	mov	r3, r8
 8002f70:	069a      	lsls	r2, r3, #26
 8002f72:	f140 814e 	bpl.w	8003212 <_vfprintf_r+0x80a>
 8002f76:	9c08      	ldr	r4, [sp, #32]
 8002f78:	3407      	adds	r4, #7
 8002f7a:	f024 0207 	bic.w	r2, r4, #7
 8002f7e:	f102 0108 	add.w	r1, r2, #8
 8002f82:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002f86:	9108      	str	r1, [sp, #32]
 8002f88:	2201      	movs	r2, #1
 8002f8a:	2100      	movs	r1, #0
 8002f8c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002f90:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002f94:	a956      	add	r1, sp, #344	; 0x158
 8002f96:	9104      	str	r1, [sp, #16]
 8002f98:	f47f aea2 	bne.w	8002ce0 <_vfprintf_r+0x2d8>
 8002f9c:	4698      	mov	r8, r3
 8002f9e:	2a01      	cmp	r2, #1
 8002fa0:	f000 8350 	beq.w	8003644 <_vfprintf_r+0xc3c>
 8002fa4:	2a02      	cmp	r2, #2
 8002fa6:	f000 831b 	beq.w	80035e0 <_vfprintf_r+0xbd8>
 8002faa:	a956      	add	r1, sp, #344	; 0x158
 8002fac:	e000      	b.n	8002fb0 <_vfprintf_r+0x5a8>
 8002fae:	4639      	mov	r1, r7
 8002fb0:	08e2      	lsrs	r2, r4, #3
 8002fb2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002fb6:	08e8      	lsrs	r0, r5, #3
 8002fb8:	f004 0307 	and.w	r3, r4, #7
 8002fbc:	4605      	mov	r5, r0
 8002fbe:	4614      	mov	r4, r2
 8002fc0:	3330      	adds	r3, #48	; 0x30
 8002fc2:	ea54 0205 	orrs.w	r2, r4, r5
 8002fc6:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002fca:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002fce:	d1ee      	bne.n	8002fae <_vfprintf_r+0x5a6>
 8002fd0:	f018 0f01 	tst.w	r8, #1
 8002fd4:	f000 8314 	beq.w	8003600 <_vfprintf_r+0xbf8>
 8002fd8:	2b30      	cmp	r3, #48	; 0x30
 8002fda:	f000 8311 	beq.w	8003600 <_vfprintf_r+0xbf8>
 8002fde:	9a04      	ldr	r2, [sp, #16]
 8002fe0:	3902      	subs	r1, #2
 8002fe2:	2330      	movs	r3, #48	; 0x30
 8002fe4:	1a52      	subs	r2, r2, r1
 8002fe6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002fea:	9209      	str	r2, [sp, #36]	; 0x24
 8002fec:	460f      	mov	r7, r1
 8002fee:	e68c      	b.n	8002d0a <_vfprintf_r+0x302>
 8002ff0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002ff4:	2200      	movs	r2, #0
 8002ff6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002ffa:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002ffe:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003002:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003006:	2b09      	cmp	r3, #9
 8003008:	d9f5      	bls.n	8002ff6 <_vfprintf_r+0x5ee>
 800300a:	9206      	str	r2, [sp, #24]
 800300c:	e57c      	b.n	8002b08 <_vfprintf_r+0x100>
 800300e:	4b14      	ldr	r3, [pc, #80]	; (8003060 <_vfprintf_r+0x658>)
 8003010:	9317      	str	r3, [sp, #92]	; 0x5c
 8003012:	f018 0f20 	tst.w	r8, #32
 8003016:	f000 8114 	beq.w	8003242 <_vfprintf_r+0x83a>
 800301a:	9c08      	ldr	r4, [sp, #32]
 800301c:	3407      	adds	r4, #7
 800301e:	f024 0307 	bic.w	r3, r4, #7
 8003022:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003026:	f103 0208 	add.w	r2, r3, #8
 800302a:	9208      	str	r2, [sp, #32]
 800302c:	f018 0f01 	tst.w	r8, #1
 8003030:	d009      	beq.n	8003046 <_vfprintf_r+0x63e>
 8003032:	ea54 0305 	orrs.w	r3, r4, r5
 8003036:	d006      	beq.n	8003046 <_vfprintf_r+0x63e>
 8003038:	2330      	movs	r3, #48	; 0x30
 800303a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800303e:	f048 0802 	orr.w	r8, r8, #2
 8003042:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003046:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800304a:	2202      	movs	r2, #2
 800304c:	e79d      	b.n	8002f8a <_vfprintf_r+0x582>
 800304e:	f048 0801 	orr.w	r8, r8, #1
 8003052:	f89a 6000 	ldrb.w	r6, [sl]
 8003056:	e555      	b.n	8002b04 <_vfprintf_r+0xfc>
 8003058:	080071c8 	.word	0x080071c8
 800305c:	080071d8 	.word	0x080071d8
 8003060:	08007194 	.word	0x08007194
 8003064:	9e03      	ldr	r6, [sp, #12]
 8003066:	4630      	mov	r0, r6
 8003068:	f002 feaa 	bl	8005dc0 <_localeconv_r>
 800306c:	6843      	ldr	r3, [r0, #4]
 800306e:	9318      	str	r3, [sp, #96]	; 0x60
 8003070:	4618      	mov	r0, r3
 8003072:	f7fd fb45 	bl	8000700 <strlen>
 8003076:	901b      	str	r0, [sp, #108]	; 0x6c
 8003078:	4604      	mov	r4, r0
 800307a:	4630      	mov	r0, r6
 800307c:	f002 fea0 	bl	8005dc0 <_localeconv_r>
 8003080:	6883      	ldr	r3, [r0, #8]
 8003082:	931a      	str	r3, [sp, #104]	; 0x68
 8003084:	2c00      	cmp	r4, #0
 8003086:	f43f adb8 	beq.w	8002bfa <_vfprintf_r+0x1f2>
 800308a:	f89a 6000 	ldrb.w	r6, [sl]
 800308e:	2b00      	cmp	r3, #0
 8003090:	f43f ad38 	beq.w	8002b04 <_vfprintf_r+0xfc>
 8003094:	781b      	ldrb	r3, [r3, #0]
 8003096:	2b00      	cmp	r3, #0
 8003098:	f43f ad34 	beq.w	8002b04 <_vfprintf_r+0xfc>
 800309c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80030a0:	e530      	b.n	8002b04 <_vfprintf_r+0xfc>
 80030a2:	9b08      	ldr	r3, [sp, #32]
 80030a4:	f89a 6000 	ldrb.w	r6, [sl]
 80030a8:	681a      	ldr	r2, [r3, #0]
 80030aa:	9206      	str	r2, [sp, #24]
 80030ac:	2a00      	cmp	r2, #0
 80030ae:	f103 0304 	add.w	r3, r3, #4
 80030b2:	f2c0 8697 	blt.w	8003de4 <_vfprintf_r+0x13dc>
 80030b6:	9308      	str	r3, [sp, #32]
 80030b8:	e524      	b.n	8002b04 <_vfprintf_r+0xfc>
 80030ba:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80030be:	f89a 6000 	ldrb.w	r6, [sl]
 80030c2:	e51f      	b.n	8002b04 <_vfprintf_r+0xfc>
 80030c4:	f89a 6000 	ldrb.w	r6, [sl]
 80030c8:	f048 0804 	orr.w	r8, r8, #4
 80030cc:	e51a      	b.n	8002b04 <_vfprintf_r+0xfc>
 80030ce:	f89a 6000 	ldrb.w	r6, [sl]
 80030d2:	2e2a      	cmp	r6, #42	; 0x2a
 80030d4:	f10a 0201 	add.w	r2, sl, #1
 80030d8:	f001 81b0 	beq.w	800443c <_vfprintf_r+0x1a34>
 80030dc:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80030e0:	2b09      	cmp	r3, #9
 80030e2:	4692      	mov	sl, r2
 80030e4:	f04f 0900 	mov.w	r9, #0
 80030e8:	f63f ad0e 	bhi.w	8002b08 <_vfprintf_r+0x100>
 80030ec:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80030f0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80030f4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80030f8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80030fc:	2b09      	cmp	r3, #9
 80030fe:	d9f5      	bls.n	80030ec <_vfprintf_r+0x6e4>
 8003100:	e502      	b.n	8002b08 <_vfprintf_r+0x100>
 8003102:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8003106:	f89a 6000 	ldrb.w	r6, [sl]
 800310a:	e4fb      	b.n	8002b04 <_vfprintf_r+0xfc>
 800310c:	9c08      	ldr	r4, [sp, #32]
 800310e:	3407      	adds	r4, #7
 8003110:	f024 0407 	bic.w	r4, r4, #7
 8003114:	ed94 7b00 	vldr	d7, [r4]
 8003118:	ec52 1b17 	vmov	r1, r2, d7
 800311c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003120:	931d      	str	r3, [sp, #116]	; 0x74
 8003122:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8003126:	3408      	adds	r4, #8
 8003128:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800312c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003130:	4bba      	ldr	r3, [pc, #744]	; (800341c <_vfprintf_r+0xa14>)
 8003132:	9408      	str	r4, [sp, #32]
 8003134:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003138:	f7fd fff8 	bl	800112c <__aeabi_dcmpun>
 800313c:	2800      	cmp	r0, #0
 800313e:	f040 846f 	bne.w	8003a20 <_vfprintf_r+0x1018>
 8003142:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003146:	4bb5      	ldr	r3, [pc, #724]	; (800341c <_vfprintf_r+0xa14>)
 8003148:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800314c:	f7fd ffd0 	bl	80010f0 <__aeabi_dcmple>
 8003150:	2800      	cmp	r0, #0
 8003152:	f040 8465 	bne.w	8003a20 <_vfprintf_r+0x1018>
 8003156:	2200      	movs	r2, #0
 8003158:	2300      	movs	r3, #0
 800315a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800315e:	f7fd ffbd 	bl	80010dc <__aeabi_dcmplt>
 8003162:	2800      	cmp	r0, #0
 8003164:	f040 855b 	bne.w	8003c1e <_vfprintf_r+0x1216>
 8003168:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800316c:	4fac      	ldr	r7, [pc, #688]	; (8003420 <_vfprintf_r+0xa18>)
 800316e:	4bad      	ldr	r3, [pc, #692]	; (8003424 <_vfprintf_r+0xa1c>)
 8003170:	2000      	movs	r0, #0
 8003172:	2103      	movs	r1, #3
 8003174:	9104      	str	r1, [sp, #16]
 8003176:	900a      	str	r0, [sp, #40]	; 0x28
 8003178:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800317c:	2e47      	cmp	r6, #71	; 0x47
 800317e:	bfd8      	it	le
 8003180:	461f      	movle	r7, r3
 8003182:	9109      	str	r1, [sp, #36]	; 0x24
 8003184:	4681      	mov	r9, r0
 8003186:	900f      	str	r0, [sp, #60]	; 0x3c
 8003188:	9014      	str	r0, [sp, #80]	; 0x50
 800318a:	9011      	str	r0, [sp, #68]	; 0x44
 800318c:	e5c9      	b.n	8002d22 <_vfprintf_r+0x31a>
 800318e:	9808      	ldr	r0, [sp, #32]
 8003190:	2300      	movs	r3, #0
 8003192:	6801      	ldr	r1, [r0, #0]
 8003194:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003198:	461a      	mov	r2, r3
 800319a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800319e:	2301      	movs	r3, #1
 80031a0:	1d01      	adds	r1, r0, #4
 80031a2:	9304      	str	r3, [sp, #16]
 80031a4:	920a      	str	r2, [sp, #40]	; 0x28
 80031a6:	4691      	mov	r9, r2
 80031a8:	920f      	str	r2, [sp, #60]	; 0x3c
 80031aa:	9214      	str	r2, [sp, #80]	; 0x50
 80031ac:	9211      	str	r2, [sp, #68]	; 0x44
 80031ae:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80031b2:	af3d      	add	r7, sp, #244	; 0xf4
 80031b4:	e5b9      	b.n	8002d2a <_vfprintf_r+0x322>
 80031b6:	9b08      	ldr	r3, [sp, #32]
 80031b8:	681f      	ldr	r7, [r3, #0]
 80031ba:	2500      	movs	r5, #0
 80031bc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80031c0:	1d1c      	adds	r4, r3, #4
 80031c2:	2f00      	cmp	r7, #0
 80031c4:	f000 8639 	beq.w	8003e3a <_vfprintf_r+0x1432>
 80031c8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80031cc:	f000 8711 	beq.w	8003ff2 <_vfprintf_r+0x15ea>
 80031d0:	464a      	mov	r2, r9
 80031d2:	4629      	mov	r1, r5
 80031d4:	4638      	mov	r0, r7
 80031d6:	f7fd fb03 	bl	80007e0 <memchr>
 80031da:	900a      	str	r0, [sp, #40]	; 0x28
 80031dc:	2800      	cmp	r0, #0
 80031de:	f000 85e7 	beq.w	8003db0 <_vfprintf_r+0x13a8>
 80031e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80031e4:	1bdb      	subs	r3, r3, r7
 80031e6:	9309      	str	r3, [sp, #36]	; 0x24
 80031e8:	46a9      	mov	r9, r5
 80031ea:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80031ee:	9408      	str	r4, [sp, #32]
 80031f0:	9304      	str	r3, [sp, #16]
 80031f2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80031f6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80031fa:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80031fe:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003202:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003206:	e58c      	b.n	8002d22 <_vfprintf_r+0x31a>
 8003208:	f048 0310 	orr.w	r3, r8, #16
 800320c:	069a      	lsls	r2, r3, #26
 800320e:	f53f aeb2 	bmi.w	8002f76 <_vfprintf_r+0x56e>
 8003212:	9a08      	ldr	r2, [sp, #32]
 8003214:	06df      	lsls	r7, r3, #27
 8003216:	f102 0104 	add.w	r1, r2, #4
 800321a:	f100 837e 	bmi.w	800391a <_vfprintf_r+0xf12>
 800321e:	065d      	lsls	r5, r3, #25
 8003220:	9a08      	ldr	r2, [sp, #32]
 8003222:	f100 84e4 	bmi.w	8003bee <_vfprintf_r+0x11e6>
 8003226:	059c      	lsls	r4, r3, #22
 8003228:	f140 8377 	bpl.w	800391a <_vfprintf_r+0xf12>
 800322c:	7814      	ldrb	r4, [r2, #0]
 800322e:	9108      	str	r1, [sp, #32]
 8003230:	2500      	movs	r5, #0
 8003232:	2201      	movs	r2, #1
 8003234:	e6a9      	b.n	8002f8a <_vfprintf_r+0x582>
 8003236:	4b7c      	ldr	r3, [pc, #496]	; (8003428 <_vfprintf_r+0xa20>)
 8003238:	9317      	str	r3, [sp, #92]	; 0x5c
 800323a:	f018 0f20 	tst.w	r8, #32
 800323e:	f47f aeec 	bne.w	800301a <_vfprintf_r+0x612>
 8003242:	9a08      	ldr	r2, [sp, #32]
 8003244:	f018 0f10 	tst.w	r8, #16
 8003248:	f102 0304 	add.w	r3, r2, #4
 800324c:	f040 8354 	bne.w	80038f8 <_vfprintf_r+0xef0>
 8003250:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003254:	9a08      	ldr	r2, [sp, #32]
 8003256:	f040 84d0 	bne.w	8003bfa <_vfprintf_r+0x11f2>
 800325a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800325e:	f000 834b 	beq.w	80038f8 <_vfprintf_r+0xef0>
 8003262:	7814      	ldrb	r4, [r2, #0]
 8003264:	9308      	str	r3, [sp, #32]
 8003266:	2500      	movs	r5, #0
 8003268:	e6e0      	b.n	800302c <_vfprintf_r+0x624>
 800326a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800326e:	f89a 6000 	ldrb.w	r6, [sl]
 8003272:	2b00      	cmp	r3, #0
 8003274:	f47f ac46 	bne.w	8002b04 <_vfprintf_r+0xfc>
 8003278:	2320      	movs	r3, #32
 800327a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800327e:	e441      	b.n	8002b04 <_vfprintf_r+0xfc>
 8003280:	f89a 6000 	ldrb.w	r6, [sl]
 8003284:	2e6c      	cmp	r6, #108	; 0x6c
 8003286:	bf03      	ittte	eq
 8003288:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800328c:	f048 0820 	orreq.w	r8, r8, #32
 8003290:	f10a 0a01 	addeq.w	sl, sl, #1
 8003294:	f048 0810 	orrne.w	r8, r8, #16
 8003298:	e434      	b.n	8002b04 <_vfprintf_r+0xfc>
 800329a:	9a08      	ldr	r2, [sp, #32]
 800329c:	f018 0f20 	tst.w	r8, #32
 80032a0:	f852 3b04 	ldr.w	r3, [r2], #4
 80032a4:	9208      	str	r2, [sp, #32]
 80032a6:	f000 83a1 	beq.w	80039ec <_vfprintf_r+0xfe4>
 80032aa:	9a05      	ldr	r2, [sp, #20]
 80032ac:	4610      	mov	r0, r2
 80032ae:	17d1      	asrs	r1, r2, #31
 80032b0:	e9c3 0100 	strd	r0, r1, [r3]
 80032b4:	4657      	mov	r7, sl
 80032b6:	e64d      	b.n	8002f54 <_vfprintf_r+0x54c>
 80032b8:	f89a 6000 	ldrb.w	r6, [sl]
 80032bc:	2e68      	cmp	r6, #104	; 0x68
 80032be:	bf03      	ittte	eq
 80032c0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80032c4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80032c8:	f10a 0a01 	addeq.w	sl, sl, #1
 80032cc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80032d0:	e418      	b.n	8002b04 <_vfprintf_r+0xfc>
 80032d2:	9908      	ldr	r1, [sp, #32]
 80032d4:	4b55      	ldr	r3, [pc, #340]	; (800342c <_vfprintf_r+0xa24>)
 80032d6:	680c      	ldr	r4, [r1, #0]
 80032d8:	9317      	str	r3, [sp, #92]	; 0x5c
 80032da:	f647 0230 	movw	r2, #30768	; 0x7830
 80032de:	3104      	adds	r1, #4
 80032e0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80032e4:	f048 0302 	orr.w	r3, r8, #2
 80032e8:	9108      	str	r1, [sp, #32]
 80032ea:	2500      	movs	r5, #0
 80032ec:	2202      	movs	r2, #2
 80032ee:	2678      	movs	r6, #120	; 0x78
 80032f0:	e64b      	b.n	8002f8a <_vfprintf_r+0x582>
 80032f2:	f048 0808 	orr.w	r8, r8, #8
 80032f6:	f89a 6000 	ldrb.w	r6, [sl]
 80032fa:	e403      	b.n	8002b04 <_vfprintf_r+0xfc>
 80032fc:	f048 0310 	orr.w	r3, r8, #16
 8003300:	069f      	lsls	r7, r3, #26
 8003302:	f53f acd1 	bmi.w	8002ca8 <_vfprintf_r+0x2a0>
 8003306:	9908      	ldr	r1, [sp, #32]
 8003308:	06dd      	lsls	r5, r3, #27
 800330a:	f101 0204 	add.w	r2, r1, #4
 800330e:	f100 82fd 	bmi.w	800390c <_vfprintf_r+0xf04>
 8003312:	065c      	lsls	r4, r3, #25
 8003314:	9908      	ldr	r1, [sp, #32]
 8003316:	f100 8475 	bmi.w	8003c04 <_vfprintf_r+0x11fc>
 800331a:	0598      	lsls	r0, r3, #22
 800331c:	f140 82f6 	bpl.w	800390c <_vfprintf_r+0xf04>
 8003320:	f991 4000 	ldrsb.w	r4, [r1]
 8003324:	9208      	str	r2, [sp, #32]
 8003326:	17e5      	asrs	r5, r4, #31
 8003328:	4620      	mov	r0, r4
 800332a:	4629      	mov	r1, r5
 800332c:	e4c7      	b.n	8002cbe <_vfprintf_r+0x2b6>
 800332e:	9a08      	ldr	r2, [sp, #32]
 8003330:	f018 0f10 	tst.w	r8, #16
 8003334:	f102 0304 	add.w	r3, r2, #4
 8003338:	f040 82e3 	bne.w	8003902 <_vfprintf_r+0xefa>
 800333c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003340:	9a08      	ldr	r2, [sp, #32]
 8003342:	f040 8467 	bne.w	8003c14 <_vfprintf_r+0x120c>
 8003346:	f418 7f00 	tst.w	r8, #512	; 0x200
 800334a:	f000 82da 	beq.w	8003902 <_vfprintf_r+0xefa>
 800334e:	7814      	ldrb	r4, [r2, #0]
 8003350:	9308      	str	r3, [sp, #32]
 8003352:	2500      	movs	r5, #0
 8003354:	e488      	b.n	8002c68 <_vfprintf_r+0x260>
 8003356:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800335a:	f002 fd45 	bl	8005de8 <__retarget_lock_release_recursive>
 800335e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003362:	9305      	str	r3, [sp, #20]
 8003364:	e443      	b.n	8002bee <_vfprintf_r+0x1e6>
 8003366:	2e00      	cmp	r6, #0
 8003368:	f43f adf8 	beq.w	8002f5c <_vfprintf_r+0x554>
 800336c:	2300      	movs	r3, #0
 800336e:	2101      	movs	r1, #1
 8003370:	461a      	mov	r2, r3
 8003372:	9104      	str	r1, [sp, #16]
 8003374:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003378:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800337c:	930a      	str	r3, [sp, #40]	; 0x28
 800337e:	4699      	mov	r9, r3
 8003380:	930f      	str	r3, [sp, #60]	; 0x3c
 8003382:	9314      	str	r3, [sp, #80]	; 0x50
 8003384:	9311      	str	r3, [sp, #68]	; 0x44
 8003386:	9109      	str	r1, [sp, #36]	; 0x24
 8003388:	af3d      	add	r7, sp, #244	; 0xf4
 800338a:	e4ce      	b.n	8002d2a <_vfprintf_r+0x322>
 800338c:	2e65      	cmp	r6, #101	; 0x65
 800338e:	f340 80ca 	ble.w	8003526 <_vfprintf_r+0xb1e>
 8003392:	2200      	movs	r2, #0
 8003394:	2300      	movs	r3, #0
 8003396:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800339a:	f7fd fe95 	bl	80010c8 <__aeabi_dcmpeq>
 800339e:	2800      	cmp	r0, #0
 80033a0:	f000 8169 	beq.w	8003676 <_vfprintf_r+0xc6e>
 80033a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033a6:	4a22      	ldr	r2, [pc, #136]	; (8003430 <_vfprintf_r+0xa28>)
 80033a8:	f8cb 2000 	str.w	r2, [fp]
 80033ac:	3301      	adds	r3, #1
 80033ae:	3401      	adds	r4, #1
 80033b0:	2201      	movs	r2, #1
 80033b2:	2b07      	cmp	r3, #7
 80033b4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80033b8:	f8cb 2004 	str.w	r2, [fp, #4]
 80033bc:	f300 8406 	bgt.w	8003bcc <_vfprintf_r+0x11c4>
 80033c0:	f10b 0b08 	add.w	fp, fp, #8
 80033c4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80033c6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80033c8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033ca:	4293      	cmp	r3, r2
 80033cc:	db03      	blt.n	80033d6 <_vfprintf_r+0x9ce>
 80033ce:	f018 0f01 	tst.w	r8, #1
 80033d2:	f43f ad6a 	beq.w	8002eaa <_vfprintf_r+0x4a2>
 80033d6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033d8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80033da:	f8cb 2000 	str.w	r2, [fp]
 80033de:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80033e0:	f8cb 2004 	str.w	r2, [fp, #4]
 80033e4:	3301      	adds	r3, #1
 80033e6:	4414      	add	r4, r2
 80033e8:	2b07      	cmp	r3, #7
 80033ea:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80033ee:	f300 8517 	bgt.w	8003e20 <_vfprintf_r+0x1418>
 80033f2:	f10b 0b08 	add.w	fp, fp, #8
 80033f6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80033f8:	1e5d      	subs	r5, r3, #1
 80033fa:	2d00      	cmp	r5, #0
 80033fc:	f77f ad55 	ble.w	8002eaa <_vfprintf_r+0x4a2>
 8003400:	2d10      	cmp	r5, #16
 8003402:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003404:	4b0b      	ldr	r3, [pc, #44]	; (8003434 <_vfprintf_r+0xa2c>)
 8003406:	f340 82e7 	ble.w	80039d8 <_vfprintf_r+0xfd0>
 800340a:	4619      	mov	r1, r3
 800340c:	2610      	movs	r6, #16
 800340e:	4623      	mov	r3, r4
 8003410:	9f03      	ldr	r7, [sp, #12]
 8003412:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003416:	460c      	mov	r4, r1
 8003418:	e014      	b.n	8003444 <_vfprintf_r+0xa3c>
 800341a:	bf00      	nop
 800341c:	7fefffff 	.word	0x7fefffff
 8003420:	08007188 	.word	0x08007188
 8003424:	08007184 	.word	0x08007184
 8003428:	080071a8 	.word	0x080071a8
 800342c:	08007194 	.word	0x08007194
 8003430:	080071c4 	.word	0x080071c4
 8003434:	080071d8 	.word	0x080071d8
 8003438:	f10b 0b08 	add.w	fp, fp, #8
 800343c:	3d10      	subs	r5, #16
 800343e:	2d10      	cmp	r5, #16
 8003440:	f340 82c7 	ble.w	80039d2 <_vfprintf_r+0xfca>
 8003444:	3201      	adds	r2, #1
 8003446:	3310      	adds	r3, #16
 8003448:	2a07      	cmp	r2, #7
 800344a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800344e:	e9cb 4600 	strd	r4, r6, [fp]
 8003452:	ddf1      	ble.n	8003438 <_vfprintf_r+0xa30>
 8003454:	aa2a      	add	r2, sp, #168	; 0xa8
 8003456:	4649      	mov	r1, r9
 8003458:	4638      	mov	r0, r7
 800345a:	f003 fb41 	bl	8006ae0 <__sprint_r>
 800345e:	2800      	cmp	r0, #0
 8003460:	d14c      	bne.n	80034fc <_vfprintf_r+0xaf4>
 8003462:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003466:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800346a:	e7e7      	b.n	800343c <_vfprintf_r+0xa34>
 800346c:	9b06      	ldr	r3, [sp, #24]
 800346e:	9a04      	ldr	r2, [sp, #16]
 8003470:	1a9d      	subs	r5, r3, r2
 8003472:	2d00      	cmp	r5, #0
 8003474:	f77f acc9 	ble.w	8002e0a <_vfprintf_r+0x402>
 8003478:	2d10      	cmp	r5, #16
 800347a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800347c:	4bbc      	ldr	r3, [pc, #752]	; (8003770 <_vfprintf_r+0xd68>)
 800347e:	dd27      	ble.n	80034d0 <_vfprintf_r+0xac8>
 8003480:	4659      	mov	r1, fp
 8003482:	4620      	mov	r0, r4
 8003484:	46bb      	mov	fp, r7
 8003486:	461c      	mov	r4, r3
 8003488:	4637      	mov	r7, r6
 800348a:	9e07      	ldr	r6, [sp, #28]
 800348c:	e004      	b.n	8003498 <_vfprintf_r+0xa90>
 800348e:	3d10      	subs	r5, #16
 8003490:	2d10      	cmp	r5, #16
 8003492:	f101 0108 	add.w	r1, r1, #8
 8003496:	dd16      	ble.n	80034c6 <_vfprintf_r+0xabe>
 8003498:	3201      	adds	r2, #1
 800349a:	3010      	adds	r0, #16
 800349c:	2310      	movs	r3, #16
 800349e:	2a07      	cmp	r2, #7
 80034a0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80034a4:	600c      	str	r4, [r1, #0]
 80034a6:	604b      	str	r3, [r1, #4]
 80034a8:	ddf1      	ble.n	800348e <_vfprintf_r+0xa86>
 80034aa:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ac:	4631      	mov	r1, r6
 80034ae:	9803      	ldr	r0, [sp, #12]
 80034b0:	f003 fb16 	bl	8006ae0 <__sprint_r>
 80034b4:	2800      	cmp	r0, #0
 80034b6:	f040 80a8 	bne.w	800360a <_vfprintf_r+0xc02>
 80034ba:	3d10      	subs	r5, #16
 80034bc:	2d10      	cmp	r5, #16
 80034be:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80034c2:	a92d      	add	r1, sp, #180	; 0xb4
 80034c4:	dce8      	bgt.n	8003498 <_vfprintf_r+0xa90>
 80034c6:	463e      	mov	r6, r7
 80034c8:	4623      	mov	r3, r4
 80034ca:	465f      	mov	r7, fp
 80034cc:	4604      	mov	r4, r0
 80034ce:	468b      	mov	fp, r1
 80034d0:	3201      	adds	r2, #1
 80034d2:	442c      	add	r4, r5
 80034d4:	2a07      	cmp	r2, #7
 80034d6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80034da:	e9cb 3500 	strd	r3, r5, [fp]
 80034de:	f300 8292 	bgt.w	8003a06 <_vfprintf_r+0xffe>
 80034e2:	f10b 0b08 	add.w	fp, fp, #8
 80034e6:	e490      	b.n	8002e0a <_vfprintf_r+0x402>
 80034e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ea:	9907      	ldr	r1, [sp, #28]
 80034ec:	9803      	ldr	r0, [sp, #12]
 80034ee:	f003 faf7 	bl	8006ae0 <__sprint_r>
 80034f2:	2800      	cmp	r0, #0
 80034f4:	f43f ad23 	beq.w	8002f3e <_vfprintf_r+0x536>
 80034f8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80034fc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80034fe:	b111      	cbz	r1, 8003506 <_vfprintf_r+0xafe>
 8003500:	9803      	ldr	r0, [sp, #12]
 8003502:	f002 f9c1 	bl	8005888 <_free_r>
 8003506:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800350a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800350e:	07d0      	lsls	r0, r2, #31
 8003510:	d402      	bmi.n	8003518 <_vfprintf_r+0xb10>
 8003512:	0599      	lsls	r1, r3, #22
 8003514:	f140 81d0 	bpl.w	80038b8 <_vfprintf_r+0xeb0>
 8003518:	065a      	lsls	r2, r3, #25
 800351a:	f53f ab65 	bmi.w	8002be8 <_vfprintf_r+0x1e0>
 800351e:	9805      	ldr	r0, [sp, #20]
 8003520:	b057      	add	sp, #348	; 0x15c
 8003522:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003526:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003528:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800352a:	2a01      	cmp	r2, #1
 800352c:	f104 0401 	add.w	r4, r4, #1
 8003530:	f103 0501 	add.w	r5, r3, #1
 8003534:	f10b 0608 	add.w	r6, fp, #8
 8003538:	f340 811c 	ble.w	8003774 <_vfprintf_r+0xd6c>
 800353c:	2301      	movs	r3, #1
 800353e:	2d07      	cmp	r5, #7
 8003540:	f8cb 7000 	str.w	r7, [fp]
 8003544:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003548:	f8cb 3004 	str.w	r3, [fp, #4]
 800354c:	f300 81bb 	bgt.w	80038c6 <_vfprintf_r+0xebe>
 8003550:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003552:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003554:	1c69      	adds	r1, r5, #1
 8003556:	441c      	add	r4, r3
 8003558:	2907      	cmp	r1, #7
 800355a:	910b      	str	r1, [sp, #44]	; 0x2c
 800355c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003560:	e9c6 2300 	strd	r2, r3, [r6]
 8003564:	f300 81bb 	bgt.w	80038de <_vfprintf_r+0xed6>
 8003568:	3608      	adds	r6, #8
 800356a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800356c:	1c53      	adds	r3, r2, #1
 800356e:	461d      	mov	r5, r3
 8003570:	9509      	str	r5, [sp, #36]	; 0x24
 8003572:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003574:	930e      	str	r3, [sp, #56]	; 0x38
 8003576:	2200      	movs	r2, #0
 8003578:	2300      	movs	r3, #0
 800357a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800357e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003582:	f106 0b08 	add.w	fp, r6, #8
 8003586:	f7fd fd9f 	bl	80010c8 <__aeabi_dcmpeq>
 800358a:	2800      	cmp	r0, #0
 800358c:	f040 80c2 	bne.w	8003714 <_vfprintf_r+0xd0c>
 8003590:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003592:	f8c6 9004 	str.w	r9, [r6, #4]
 8003596:	3701      	adds	r7, #1
 8003598:	444c      	add	r4, r9
 800359a:	2d07      	cmp	r5, #7
 800359c:	6037      	str	r7, [r6, #0]
 800359e:	942c      	str	r4, [sp, #176]	; 0xb0
 80035a0:	952b      	str	r5, [sp, #172]	; 0xac
 80035a2:	f300 80f9 	bgt.w	8003798 <_vfprintf_r+0xd90>
 80035a6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80035a8:	f106 0310 	add.w	r3, r6, #16
 80035ac:	3202      	adds	r2, #2
 80035ae:	465e      	mov	r6, fp
 80035b0:	9209      	str	r2, [sp, #36]	; 0x24
 80035b2:	469b      	mov	fp, r3
 80035b4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80035b6:	6072      	str	r2, [r6, #4]
 80035b8:	4414      	add	r4, r2
 80035ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80035bc:	942c      	str	r4, [sp, #176]	; 0xb0
 80035be:	ab26      	add	r3, sp, #152	; 0x98
 80035c0:	2a07      	cmp	r2, #7
 80035c2:	922b      	str	r2, [sp, #172]	; 0xac
 80035c4:	6033      	str	r3, [r6, #0]
 80035c6:	f77f ac70 	ble.w	8002eaa <_vfprintf_r+0x4a2>
 80035ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80035cc:	9907      	ldr	r1, [sp, #28]
 80035ce:	9803      	ldr	r0, [sp, #12]
 80035d0:	f003 fa86 	bl	8006ae0 <__sprint_r>
 80035d4:	2800      	cmp	r0, #0
 80035d6:	d18f      	bne.n	80034f8 <_vfprintf_r+0xaf0>
 80035d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035da:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035de:	e464      	b.n	8002eaa <_vfprintf_r+0x4a2>
 80035e0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80035e2:	af56      	add	r7, sp, #344	; 0x158
 80035e4:	0923      	lsrs	r3, r4, #4
 80035e6:	f004 010f 	and.w	r1, r4, #15
 80035ea:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80035ee:	092a      	lsrs	r2, r5, #4
 80035f0:	461c      	mov	r4, r3
 80035f2:	4615      	mov	r5, r2
 80035f4:	5c43      	ldrb	r3, [r0, r1]
 80035f6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80035fa:	ea54 0305 	orrs.w	r3, r4, r5
 80035fe:	d1f1      	bne.n	80035e4 <_vfprintf_r+0xbdc>
 8003600:	9b04      	ldr	r3, [sp, #16]
 8003602:	1bdb      	subs	r3, r3, r7
 8003604:	9309      	str	r3, [sp, #36]	; 0x24
 8003606:	f7ff bb80 	b.w	8002d0a <_vfprintf_r+0x302>
 800360a:	46b1      	mov	r9, r6
 800360c:	e776      	b.n	80034fc <_vfprintf_r+0xaf4>
 800360e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003610:	9907      	ldr	r1, [sp, #28]
 8003612:	9803      	ldr	r0, [sp, #12]
 8003614:	f003 fa64 	bl	8006ae0 <__sprint_r>
 8003618:	2800      	cmp	r0, #0
 800361a:	f47f af6d 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 800361e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003620:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003624:	f7ff bbdd 	b.w	8002de2 <_vfprintf_r+0x3da>
 8003628:	aa2a      	add	r2, sp, #168	; 0xa8
 800362a:	9907      	ldr	r1, [sp, #28]
 800362c:	9803      	ldr	r0, [sp, #12]
 800362e:	f003 fa57 	bl	8006ae0 <__sprint_r>
 8003632:	2800      	cmp	r0, #0
 8003634:	f47f af60 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 8003638:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800363a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800363e:	f7ff bbe0 	b.w	8002e02 <_vfprintf_r+0x3fa>
 8003642:	4698      	mov	r8, r3
 8003644:	2d00      	cmp	r5, #0
 8003646:	bf08      	it	eq
 8003648:	2c0a      	cmpeq	r4, #10
 800364a:	f080 8170 	bcs.w	800392e <_vfprintf_r+0xf26>
 800364e:	af56      	add	r7, sp, #344	; 0x158
 8003650:	3430      	adds	r4, #48	; 0x30
 8003652:	2301      	movs	r3, #1
 8003654:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003658:	9309      	str	r3, [sp, #36]	; 0x24
 800365a:	f7ff bb56 	b.w	8002d0a <_vfprintf_r+0x302>
 800365e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003660:	9907      	ldr	r1, [sp, #28]
 8003662:	9803      	ldr	r0, [sp, #12]
 8003664:	f003 fa3c 	bl	8006ae0 <__sprint_r>
 8003668:	2800      	cmp	r0, #0
 800366a:	f47f af45 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 800366e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003670:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003674:	e406      	b.n	8002e84 <_vfprintf_r+0x47c>
 8003676:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003678:	2b00      	cmp	r3, #0
 800367a:	f340 8273 	ble.w	8003b64 <_vfprintf_r+0x115c>
 800367e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003682:	4293      	cmp	r3, r2
 8003684:	bfa8      	it	ge
 8003686:	4613      	movge	r3, r2
 8003688:	2b00      	cmp	r3, #0
 800368a:	461d      	mov	r5, r3
 800368c:	dd0d      	ble.n	80036aa <_vfprintf_r+0xca2>
 800368e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003690:	f8cb 7000 	str.w	r7, [fp]
 8003694:	3301      	adds	r3, #1
 8003696:	442c      	add	r4, r5
 8003698:	2b07      	cmp	r3, #7
 800369a:	942c      	str	r4, [sp, #176]	; 0xb0
 800369c:	f8cb 5004 	str.w	r5, [fp, #4]
 80036a0:	932b      	str	r3, [sp, #172]	; 0xac
 80036a2:	f300 82c1 	bgt.w	8003c28 <_vfprintf_r+0x1220>
 80036a6:	f10b 0b08 	add.w	fp, fp, #8
 80036aa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80036ac:	2d00      	cmp	r5, #0
 80036ae:	bfa8      	it	ge
 80036b0:	1b5b      	subge	r3, r3, r5
 80036b2:	2b00      	cmp	r3, #0
 80036b4:	461d      	mov	r5, r3
 80036b6:	f340 8099 	ble.w	80037ec <_vfprintf_r+0xde4>
 80036ba:	2d10      	cmp	r5, #16
 80036bc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036be:	4b2c      	ldr	r3, [pc, #176]	; (8003770 <_vfprintf_r+0xd68>)
 80036c0:	f340 83db 	ble.w	8003e7a <_vfprintf_r+0x1472>
 80036c4:	4618      	mov	r0, r3
 80036c6:	4621      	mov	r1, r4
 80036c8:	465b      	mov	r3, fp
 80036ca:	2610      	movs	r6, #16
 80036cc:	46bb      	mov	fp, r7
 80036ce:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80036d2:	9c07      	ldr	r4, [sp, #28]
 80036d4:	4607      	mov	r7, r0
 80036d6:	e004      	b.n	80036e2 <_vfprintf_r+0xcda>
 80036d8:	3308      	adds	r3, #8
 80036da:	3d10      	subs	r5, #16
 80036dc:	2d10      	cmp	r5, #16
 80036de:	f340 83c7 	ble.w	8003e70 <_vfprintf_r+0x1468>
 80036e2:	3201      	adds	r2, #1
 80036e4:	3110      	adds	r1, #16
 80036e6:	2a07      	cmp	r2, #7
 80036e8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80036ec:	e9c3 7600 	strd	r7, r6, [r3]
 80036f0:	ddf2      	ble.n	80036d8 <_vfprintf_r+0xcd0>
 80036f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80036f4:	4621      	mov	r1, r4
 80036f6:	4648      	mov	r0, r9
 80036f8:	f003 f9f2 	bl	8006ae0 <__sprint_r>
 80036fc:	2800      	cmp	r0, #0
 80036fe:	f040 84a5 	bne.w	800404c <_vfprintf_r+0x1644>
 8003702:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003706:	ab2d      	add	r3, sp, #180	; 0xb4
 8003708:	e7e7      	b.n	80036da <_vfprintf_r+0xcd2>
 800370a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800370e:	af56      	add	r7, sp, #344	; 0x158
 8003710:	f7ff bafb 	b.w	8002d0a <_vfprintf_r+0x302>
 8003714:	f1b9 0f00 	cmp.w	r9, #0
 8003718:	f77f af4c 	ble.w	80035b4 <_vfprintf_r+0xbac>
 800371c:	f1b9 0f10 	cmp.w	r9, #16
 8003720:	4b13      	ldr	r3, [pc, #76]	; (8003770 <_vfprintf_r+0xd68>)
 8003722:	f340 8659 	ble.w	80043d8 <_vfprintf_r+0x19d0>
 8003726:	4619      	mov	r1, r3
 8003728:	4622      	mov	r2, r4
 800372a:	4633      	mov	r3, r6
 800372c:	2710      	movs	r7, #16
 800372e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003732:	9c07      	ldr	r4, [sp, #28]
 8003734:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003736:	460e      	mov	r6, r1
 8003738:	e007      	b.n	800374a <_vfprintf_r+0xd42>
 800373a:	3308      	adds	r3, #8
 800373c:	f1a9 0910 	sub.w	r9, r9, #16
 8003740:	f1b9 0f10 	cmp.w	r9, #16
 8003744:	f340 8353 	ble.w	8003dee <_vfprintf_r+0x13e6>
 8003748:	3501      	adds	r5, #1
 800374a:	3210      	adds	r2, #16
 800374c:	2d07      	cmp	r5, #7
 800374e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003752:	e9c3 6700 	strd	r6, r7, [r3]
 8003756:	ddf0      	ble.n	800373a <_vfprintf_r+0xd32>
 8003758:	aa2a      	add	r2, sp, #168	; 0xa8
 800375a:	4621      	mov	r1, r4
 800375c:	4658      	mov	r0, fp
 800375e:	f003 f9bf 	bl	8006ae0 <__sprint_r>
 8003762:	2800      	cmp	r0, #0
 8003764:	f040 8472 	bne.w	800404c <_vfprintf_r+0x1644>
 8003768:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800376c:	ab2d      	add	r3, sp, #180	; 0xb4
 800376e:	e7e5      	b.n	800373c <_vfprintf_r+0xd34>
 8003770:	080071d8 	.word	0x080071d8
 8003774:	f018 0f01 	tst.w	r8, #1
 8003778:	f47f aee0 	bne.w	800353c <_vfprintf_r+0xb34>
 800377c:	2201      	movs	r2, #1
 800377e:	2d07      	cmp	r5, #7
 8003780:	f8cb 7000 	str.w	r7, [fp]
 8003784:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003788:	f8cb 2004 	str.w	r2, [fp, #4]
 800378c:	dc04      	bgt.n	8003798 <_vfprintf_r+0xd90>
 800378e:	3302      	adds	r3, #2
 8003790:	9309      	str	r3, [sp, #36]	; 0x24
 8003792:	f10b 0b10 	add.w	fp, fp, #16
 8003796:	e70d      	b.n	80035b4 <_vfprintf_r+0xbac>
 8003798:	aa2a      	add	r2, sp, #168	; 0xa8
 800379a:	9907      	ldr	r1, [sp, #28]
 800379c:	9803      	ldr	r0, [sp, #12]
 800379e:	f003 f99f 	bl	8006ae0 <__sprint_r>
 80037a2:	2800      	cmp	r0, #0
 80037a4:	f47f aea8 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 80037a8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80037ac:	3301      	adds	r3, #1
 80037ae:	9309      	str	r3, [sp, #36]	; 0x24
 80037b0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80037b4:	ae2d      	add	r6, sp, #180	; 0xb4
 80037b6:	e6fd      	b.n	80035b4 <_vfprintf_r+0xbac>
 80037b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80037ba:	9907      	ldr	r1, [sp, #28]
 80037bc:	9803      	ldr	r0, [sp, #12]
 80037be:	f003 f98f 	bl	8006ae0 <__sprint_r>
 80037c2:	2800      	cmp	r0, #0
 80037c4:	f47f ae98 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 80037c8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80037cc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037ce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037d2:	f7ff baf6 	b.w	8002dc2 <_vfprintf_r+0x3ba>
 80037d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80037d8:	9907      	ldr	r1, [sp, #28]
 80037da:	9803      	ldr	r0, [sp, #12]
 80037dc:	f003 f980 	bl	8006ae0 <__sprint_r>
 80037e0:	2800      	cmp	r0, #0
 80037e2:	f47f ae89 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 80037e6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037ec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80037ee:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80037f2:	443b      	add	r3, r7
 80037f4:	4699      	mov	r9, r3
 80037f6:	f040 8357 	bne.w	8003ea8 <_vfprintf_r+0x14a0>
 80037fa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037fc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80037fe:	4293      	cmp	r3, r2
 8003800:	db49      	blt.n	8003896 <_vfprintf_r+0xe8e>
 8003802:	f018 0f01 	tst.w	r8, #1
 8003806:	d146      	bne.n	8003896 <_vfprintf_r+0xe8e>
 8003808:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800380a:	18bd      	adds	r5, r7, r2
 800380c:	eba5 0509 	sub.w	r5, r5, r9
 8003810:	1ad3      	subs	r3, r2, r3
 8003812:	429d      	cmp	r5, r3
 8003814:	bfa8      	it	ge
 8003816:	461d      	movge	r5, r3
 8003818:	2d00      	cmp	r5, #0
 800381a:	dd0d      	ble.n	8003838 <_vfprintf_r+0xe30>
 800381c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800381e:	f8cb 9000 	str.w	r9, [fp]
 8003822:	3201      	adds	r2, #1
 8003824:	442c      	add	r4, r5
 8003826:	2a07      	cmp	r2, #7
 8003828:	942c      	str	r4, [sp, #176]	; 0xb0
 800382a:	f8cb 5004 	str.w	r5, [fp, #4]
 800382e:	922b      	str	r2, [sp, #172]	; 0xac
 8003830:	f300 8462 	bgt.w	80040f8 <_vfprintf_r+0x16f0>
 8003834:	f10b 0b08 	add.w	fp, fp, #8
 8003838:	2d00      	cmp	r5, #0
 800383a:	bfac      	ite	ge
 800383c:	1b5d      	subge	r5, r3, r5
 800383e:	461d      	movlt	r5, r3
 8003840:	2d00      	cmp	r5, #0
 8003842:	f77f ab32 	ble.w	8002eaa <_vfprintf_r+0x4a2>
 8003846:	2d10      	cmp	r5, #16
 8003848:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800384a:	4bc5      	ldr	r3, [pc, #788]	; (8003b60 <_vfprintf_r+0x1158>)
 800384c:	f340 80c4 	ble.w	80039d8 <_vfprintf_r+0xfd0>
 8003850:	4619      	mov	r1, r3
 8003852:	2610      	movs	r6, #16
 8003854:	4623      	mov	r3, r4
 8003856:	9f03      	ldr	r7, [sp, #12]
 8003858:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800385c:	460c      	mov	r4, r1
 800385e:	e005      	b.n	800386c <_vfprintf_r+0xe64>
 8003860:	f10b 0b08 	add.w	fp, fp, #8
 8003864:	3d10      	subs	r5, #16
 8003866:	2d10      	cmp	r5, #16
 8003868:	f340 80b3 	ble.w	80039d2 <_vfprintf_r+0xfca>
 800386c:	3201      	adds	r2, #1
 800386e:	3310      	adds	r3, #16
 8003870:	2a07      	cmp	r2, #7
 8003872:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003876:	e9cb 4600 	strd	r4, r6, [fp]
 800387a:	ddf1      	ble.n	8003860 <_vfprintf_r+0xe58>
 800387c:	aa2a      	add	r2, sp, #168	; 0xa8
 800387e:	4649      	mov	r1, r9
 8003880:	4638      	mov	r0, r7
 8003882:	f003 f92d 	bl	8006ae0 <__sprint_r>
 8003886:	2800      	cmp	r0, #0
 8003888:	f47f ae38 	bne.w	80034fc <_vfprintf_r+0xaf4>
 800388c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003890:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003894:	e7e6      	b.n	8003864 <_vfprintf_r+0xe5c>
 8003896:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003898:	9916      	ldr	r1, [sp, #88]	; 0x58
 800389a:	f8cb 1000 	str.w	r1, [fp]
 800389e:	9915      	ldr	r1, [sp, #84]	; 0x54
 80038a0:	f8cb 1004 	str.w	r1, [fp, #4]
 80038a4:	3201      	adds	r2, #1
 80038a6:	440c      	add	r4, r1
 80038a8:	2a07      	cmp	r2, #7
 80038aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80038ac:	922b      	str	r2, [sp, #172]	; 0xac
 80038ae:	f300 828c 	bgt.w	8003dca <_vfprintf_r+0x13c2>
 80038b2:	f10b 0b08 	add.w	fp, fp, #8
 80038b6:	e7a7      	b.n	8003808 <_vfprintf_r+0xe00>
 80038b8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80038bc:	f002 fa94 	bl	8005de8 <__retarget_lock_release_recursive>
 80038c0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80038c4:	e628      	b.n	8003518 <_vfprintf_r+0xb10>
 80038c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80038c8:	9907      	ldr	r1, [sp, #28]
 80038ca:	9803      	ldr	r0, [sp, #12]
 80038cc:	f003 f908 	bl	8006ae0 <__sprint_r>
 80038d0:	2800      	cmp	r0, #0
 80038d2:	f47f ae11 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 80038d6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80038da:	ae2d      	add	r6, sp, #180	; 0xb4
 80038dc:	e638      	b.n	8003550 <_vfprintf_r+0xb48>
 80038de:	aa2a      	add	r2, sp, #168	; 0xa8
 80038e0:	9907      	ldr	r1, [sp, #28]
 80038e2:	9803      	ldr	r0, [sp, #12]
 80038e4:	f003 f8fc 	bl	8006ae0 <__sprint_r>
 80038e8:	2800      	cmp	r0, #0
 80038ea:	f47f ae05 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 80038ee:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80038f2:	ae2d      	add	r6, sp, #180	; 0xb4
 80038f4:	930b      	str	r3, [sp, #44]	; 0x2c
 80038f6:	e638      	b.n	800356a <_vfprintf_r+0xb62>
 80038f8:	6814      	ldr	r4, [r2, #0]
 80038fa:	9308      	str	r3, [sp, #32]
 80038fc:	2500      	movs	r5, #0
 80038fe:	f7ff bb95 	b.w	800302c <_vfprintf_r+0x624>
 8003902:	6814      	ldr	r4, [r2, #0]
 8003904:	9308      	str	r3, [sp, #32]
 8003906:	2500      	movs	r5, #0
 8003908:	f7ff b9ae 	b.w	8002c68 <_vfprintf_r+0x260>
 800390c:	680c      	ldr	r4, [r1, #0]
 800390e:	9208      	str	r2, [sp, #32]
 8003910:	17e5      	asrs	r5, r4, #31
 8003912:	4620      	mov	r0, r4
 8003914:	4629      	mov	r1, r5
 8003916:	f7ff b9d2 	b.w	8002cbe <_vfprintf_r+0x2b6>
 800391a:	6814      	ldr	r4, [r2, #0]
 800391c:	9108      	str	r1, [sp, #32]
 800391e:	2201      	movs	r2, #1
 8003920:	2500      	movs	r5, #0
 8003922:	f7ff bb32 	b.w	8002f8a <_vfprintf_r+0x582>
 8003926:	2a01      	cmp	r2, #1
 8003928:	f47f ab3c 	bne.w	8002fa4 <_vfprintf_r+0x59c>
 800392c:	e68f      	b.n	800364e <_vfprintf_r+0xc46>
 800392e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003932:	2200      	movs	r2, #0
 8003934:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003938:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800393c:	af56      	add	r7, sp, #344	; 0x158
 800393e:	4692      	mov	sl, r2
 8003940:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003944:	461e      	mov	r6, r3
 8003946:	e00a      	b.n	800395e <_vfprintf_r+0xf56>
 8003948:	2300      	movs	r3, #0
 800394a:	4620      	mov	r0, r4
 800394c:	4629      	mov	r1, r5
 800394e:	220a      	movs	r2, #10
 8003950:	f7fc fc56 	bl	8000200 <__aeabi_uldivmod>
 8003954:	4604      	mov	r4, r0
 8003956:	460d      	mov	r5, r1
 8003958:	ea54 0305 	orrs.w	r3, r4, r5
 800395c:	d029      	beq.n	80039b2 <_vfprintf_r+0xfaa>
 800395e:	220a      	movs	r2, #10
 8003960:	2300      	movs	r3, #0
 8003962:	4620      	mov	r0, r4
 8003964:	4629      	mov	r1, r5
 8003966:	f7fc fc4b 	bl	8000200 <__aeabi_uldivmod>
 800396a:	3230      	adds	r2, #48	; 0x30
 800396c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003970:	f10a 0a01 	add.w	sl, sl, #1
 8003974:	3f01      	subs	r7, #1
 8003976:	2e00      	cmp	r6, #0
 8003978:	d0e6      	beq.n	8003948 <_vfprintf_r+0xf40>
 800397a:	f898 3000 	ldrb.w	r3, [r8]
 800397e:	459a      	cmp	sl, r3
 8003980:	d1e2      	bne.n	8003948 <_vfprintf_r+0xf40>
 8003982:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003986:	d0df      	beq.n	8003948 <_vfprintf_r+0xf40>
 8003988:	2d00      	cmp	r5, #0
 800398a:	bf08      	it	eq
 800398c:	2c0a      	cmpeq	r4, #10
 800398e:	d3db      	bcc.n	8003948 <_vfprintf_r+0xf40>
 8003990:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003992:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003994:	1aff      	subs	r7, r7, r3
 8003996:	461a      	mov	r2, r3
 8003998:	4638      	mov	r0, r7
 800399a:	f003 f833 	bl	8006a04 <strncpy>
 800399e:	f898 3001 	ldrb.w	r3, [r8, #1]
 80039a2:	2b00      	cmp	r3, #0
 80039a4:	f000 8496 	beq.w	80042d4 <_vfprintf_r+0x18cc>
 80039a8:	f108 0801 	add.w	r8, r8, #1
 80039ac:	f04f 0a00 	mov.w	sl, #0
 80039b0:	e7ca      	b.n	8003948 <_vfprintf_r+0xf40>
 80039b2:	9b04      	ldr	r3, [sp, #16]
 80039b4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80039b8:	1bdb      	subs	r3, r3, r7
 80039ba:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80039be:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80039c0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80039c4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80039c8:	9309      	str	r3, [sp, #36]	; 0x24
 80039ca:	f7ff b99e 	b.w	8002d0a <_vfprintf_r+0x302>
 80039ce:	46c1      	mov	r9, r8
 80039d0:	e594      	b.n	80034fc <_vfprintf_r+0xaf4>
 80039d2:	4621      	mov	r1, r4
 80039d4:	461c      	mov	r4, r3
 80039d6:	460b      	mov	r3, r1
 80039d8:	3201      	adds	r2, #1
 80039da:	442c      	add	r4, r5
 80039dc:	2a07      	cmp	r2, #7
 80039de:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80039e2:	e9cb 3500 	strd	r3, r5, [fp]
 80039e6:	f77f aa5e 	ble.w	8002ea6 <_vfprintf_r+0x49e>
 80039ea:	e5ee      	b.n	80035ca <_vfprintf_r+0xbc2>
 80039ec:	f018 0f10 	tst.w	r8, #16
 80039f0:	f040 80f8 	bne.w	8003be4 <_vfprintf_r+0x11dc>
 80039f4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80039f8:	f000 8351 	beq.w	800409e <_vfprintf_r+0x1696>
 80039fc:	9a05      	ldr	r2, [sp, #20]
 80039fe:	801a      	strh	r2, [r3, #0]
 8003a00:	4657      	mov	r7, sl
 8003a02:	f7ff baa7 	b.w	8002f54 <_vfprintf_r+0x54c>
 8003a06:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a08:	9907      	ldr	r1, [sp, #28]
 8003a0a:	9803      	ldr	r0, [sp, #12]
 8003a0c:	f003 f868 	bl	8006ae0 <__sprint_r>
 8003a10:	2800      	cmp	r0, #0
 8003a12:	f47f ad71 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 8003a16:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a18:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a1c:	f7ff b9f5 	b.w	8002e0a <_vfprintf_r+0x402>
 8003a20:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003a24:	4602      	mov	r2, r0
 8003a26:	460b      	mov	r3, r1
 8003a28:	f7fd fb80 	bl	800112c <__aeabi_dcmpun>
 8003a2c:	2800      	cmp	r0, #0
 8003a2e:	f040 8491 	bne.w	8004354 <_vfprintf_r+0x194c>
 8003a32:	2e61      	cmp	r6, #97	; 0x61
 8003a34:	f000 8111 	beq.w	8003c5a <_vfprintf_r+0x1252>
 8003a38:	2e41      	cmp	r6, #65	; 0x41
 8003a3a:	f000 8377 	beq.w	800412c <_vfprintf_r+0x1724>
 8003a3e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003a42:	f026 0220 	bic.w	r2, r6, #32
 8003a46:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003a4a:	930e      	str	r3, [sp, #56]	; 0x38
 8003a4c:	9204      	str	r2, [sp, #16]
 8003a4e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003a50:	f000 842d 	beq.w	80042ae <_vfprintf_r+0x18a6>
 8003a54:	2a47      	cmp	r2, #71	; 0x47
 8003a56:	f000 8424 	beq.w	80042a2 <_vfprintf_r+0x189a>
 8003a5a:	2b00      	cmp	r3, #0
 8003a5c:	f2c0 82f9 	blt.w	8004052 <_vfprintf_r+0x164a>
 8003a60:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003a64:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003a68:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003a6c:	2e66      	cmp	r6, #102	; 0x66
 8003a6e:	f000 83eb 	beq.w	8004248 <_vfprintf_r+0x1840>
 8003a72:	2e46      	cmp	r6, #70	; 0x46
 8003a74:	f000 847e 	beq.w	8004374 <_vfprintf_r+0x196c>
 8003a78:	9b04      	ldr	r3, [sp, #16]
 8003a7a:	9803      	ldr	r0, [sp, #12]
 8003a7c:	2b45      	cmp	r3, #69	; 0x45
 8003a7e:	bf0c      	ite	eq
 8003a80:	f109 0501 	addeq.w	r5, r9, #1
 8003a84:	464d      	movne	r5, r9
 8003a86:	aa28      	add	r2, sp, #160	; 0xa0
 8003a88:	ab25      	add	r3, sp, #148	; 0x94
 8003a8a:	e9cd 3200 	strd	r3, r2, [sp]
 8003a8e:	2102      	movs	r1, #2
 8003a90:	ab24      	add	r3, sp, #144	; 0x90
 8003a92:	462a      	mov	r2, r5
 8003a94:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003a98:	f000 fe3e 	bl	8004718 <_dtoa_r>
 8003a9c:	2e67      	cmp	r6, #103	; 0x67
 8003a9e:	4607      	mov	r7, r0
 8003aa0:	f040 849c 	bne.w	80043dc <_vfprintf_r+0x19d4>
 8003aa4:	f018 0f01 	tst.w	r8, #1
 8003aa8:	f040 83f9 	bne.w	800429e <_vfprintf_r+0x1896>
 8003aac:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003aae:	4640      	mov	r0, r8
 8003ab0:	1bdb      	subs	r3, r3, r7
 8003ab2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ab6:	9310      	str	r3, [sp, #64]	; 0x40
 8003ab8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003aba:	9311      	str	r3, [sp, #68]	; 0x44
 8003abc:	9b04      	ldr	r3, [sp, #16]
 8003abe:	2b47      	cmp	r3, #71	; 0x47
 8003ac0:	f000 81e7 	beq.w	8003e92 <_vfprintf_r+0x148a>
 8003ac4:	9b04      	ldr	r3, [sp, #16]
 8003ac6:	2b46      	cmp	r3, #70	; 0x46
 8003ac8:	f000 8300 	beq.w	80040cc <_vfprintf_r+0x16c4>
 8003acc:	9904      	ldr	r1, [sp, #16]
 8003ace:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ad0:	b2f2      	uxtb	r2, r6
 8003ad2:	2941      	cmp	r1, #65	; 0x41
 8003ad4:	bf08      	it	eq
 8003ad6:	320f      	addeq	r2, #15
 8003ad8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003adc:	bf06      	itte	eq
 8003ade:	b2d2      	uxtbeq	r2, r2
 8003ae0:	2101      	moveq	r1, #1
 8003ae2:	2100      	movne	r1, #0
 8003ae4:	2b00      	cmp	r3, #0
 8003ae6:	9324      	str	r3, [sp, #144]	; 0x90
 8003ae8:	bfb8      	it	lt
 8003aea:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003aec:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003af0:	bfba      	itte	lt
 8003af2:	f1c3 0301 	rsblt	r3, r3, #1
 8003af6:	222d      	movlt	r2, #45	; 0x2d
 8003af8:	222b      	movge	r2, #43	; 0x2b
 8003afa:	2b09      	cmp	r3, #9
 8003afc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003b00:	f300 83f9 	bgt.w	80042f6 <_vfprintf_r+0x18ee>
 8003b04:	2900      	cmp	r1, #0
 8003b06:	f040 8487 	bne.w	8004418 <_vfprintf_r+0x1a10>
 8003b0a:	2230      	movs	r2, #48	; 0x30
 8003b0c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003b10:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003b14:	3330      	adds	r3, #48	; 0x30
 8003b16:	7013      	strb	r3, [r2, #0]
 8003b18:	1c53      	adds	r3, r2, #1
 8003b1a:	aa26      	add	r2, sp, #152	; 0x98
 8003b1c:	1a9b      	subs	r3, r3, r2
 8003b1e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b20:	9319      	str	r3, [sp, #100]	; 0x64
 8003b22:	2a01      	cmp	r2, #1
 8003b24:	4413      	add	r3, r2
 8003b26:	9309      	str	r3, [sp, #36]	; 0x24
 8003b28:	f340 8442 	ble.w	80043b0 <_vfprintf_r+0x19a8>
 8003b2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b2e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b30:	4413      	add	r3, r2
 8003b32:	9309      	str	r3, [sp, #36]	; 0x24
 8003b34:	2300      	movs	r3, #0
 8003b36:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b38:	9314      	str	r3, [sp, #80]	; 0x50
 8003b3a:	9311      	str	r3, [sp, #68]	; 0x44
 8003b3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b3e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003b42:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b46:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003b4a:	9304      	str	r3, [sp, #16]
 8003b4c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003b4e:	2b00      	cmp	r3, #0
 8003b50:	f040 8275 	bne.w	800403e <_vfprintf_r+0x1636>
 8003b54:	4699      	mov	r9, r3
 8003b56:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003b5a:	f7ff b8e2 	b.w	8002d22 <_vfprintf_r+0x31a>
 8003b5e:	bf00      	nop
 8003b60:	080071d8 	.word	0x080071d8
 8003b64:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003b66:	49bd      	ldr	r1, [pc, #756]	; (8003e5c <_vfprintf_r+0x1454>)
 8003b68:	f8cb 1000 	str.w	r1, [fp]
 8003b6c:	3201      	adds	r2, #1
 8003b6e:	3401      	adds	r4, #1
 8003b70:	2101      	movs	r1, #1
 8003b72:	2a07      	cmp	r2, #7
 8003b74:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b78:	f8cb 1004 	str.w	r1, [fp, #4]
 8003b7c:	dc60      	bgt.n	8003c40 <_vfprintf_r+0x1238>
 8003b7e:	f10b 0b08 	add.w	fp, fp, #8
 8003b82:	b92b      	cbnz	r3, 8003b90 <_vfprintf_r+0x1188>
 8003b84:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b86:	b91a      	cbnz	r2, 8003b90 <_vfprintf_r+0x1188>
 8003b88:	f018 0f01 	tst.w	r8, #1
 8003b8c:	f43f a98d 	beq.w	8002eaa <_vfprintf_r+0x4a2>
 8003b90:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003b92:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003b94:	f8cb 1000 	str.w	r1, [fp]
 8003b98:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003b9a:	f8cb 1004 	str.w	r1, [fp, #4]
 8003b9e:	3201      	adds	r2, #1
 8003ba0:	440c      	add	r4, r1
 8003ba2:	2a07      	cmp	r2, #7
 8003ba4:	942c      	str	r4, [sp, #176]	; 0xb0
 8003ba6:	922b      	str	r2, [sp, #172]	; 0xac
 8003ba8:	f300 8282 	bgt.w	80040b0 <_vfprintf_r+0x16a8>
 8003bac:	f10b 0b08 	add.w	fp, fp, #8
 8003bb0:	2b00      	cmp	r3, #0
 8003bb2:	f2c0 82e7 	blt.w	8004184 <_vfprintf_r+0x177c>
 8003bb6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003bb8:	3201      	adds	r2, #1
 8003bba:	441c      	add	r4, r3
 8003bbc:	2a07      	cmp	r2, #7
 8003bbe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003bc2:	e9cb 7300 	strd	r7, r3, [fp]
 8003bc6:	f77f a96e 	ble.w	8002ea6 <_vfprintf_r+0x49e>
 8003bca:	e4fe      	b.n	80035ca <_vfprintf_r+0xbc2>
 8003bcc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bce:	9907      	ldr	r1, [sp, #28]
 8003bd0:	9803      	ldr	r0, [sp, #12]
 8003bd2:	f002 ff85 	bl	8006ae0 <__sprint_r>
 8003bd6:	2800      	cmp	r0, #0
 8003bd8:	f47f ac8e 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 8003bdc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003be0:	f7ff bbf0 	b.w	80033c4 <_vfprintf_r+0x9bc>
 8003be4:	9a05      	ldr	r2, [sp, #20]
 8003be6:	601a      	str	r2, [r3, #0]
 8003be8:	4657      	mov	r7, sl
 8003bea:	f7ff b9b3 	b.w	8002f54 <_vfprintf_r+0x54c>
 8003bee:	8814      	ldrh	r4, [r2, #0]
 8003bf0:	9108      	str	r1, [sp, #32]
 8003bf2:	2500      	movs	r5, #0
 8003bf4:	2201      	movs	r2, #1
 8003bf6:	f7ff b9c8 	b.w	8002f8a <_vfprintf_r+0x582>
 8003bfa:	8814      	ldrh	r4, [r2, #0]
 8003bfc:	9308      	str	r3, [sp, #32]
 8003bfe:	2500      	movs	r5, #0
 8003c00:	f7ff ba14 	b.w	800302c <_vfprintf_r+0x624>
 8003c04:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003c08:	9208      	str	r2, [sp, #32]
 8003c0a:	17e5      	asrs	r5, r4, #31
 8003c0c:	4620      	mov	r0, r4
 8003c0e:	4629      	mov	r1, r5
 8003c10:	f7ff b855 	b.w	8002cbe <_vfprintf_r+0x2b6>
 8003c14:	8814      	ldrh	r4, [r2, #0]
 8003c16:	9308      	str	r3, [sp, #32]
 8003c18:	2500      	movs	r5, #0
 8003c1a:	f7ff b825 	b.w	8002c68 <_vfprintf_r+0x260>
 8003c1e:	222d      	movs	r2, #45	; 0x2d
 8003c20:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003c24:	f7ff baa2 	b.w	800316c <_vfprintf_r+0x764>
 8003c28:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c2a:	9907      	ldr	r1, [sp, #28]
 8003c2c:	9803      	ldr	r0, [sp, #12]
 8003c2e:	f002 ff57 	bl	8006ae0 <__sprint_r>
 8003c32:	2800      	cmp	r0, #0
 8003c34:	f47f ac60 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 8003c38:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c3a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c3e:	e534      	b.n	80036aa <_vfprintf_r+0xca2>
 8003c40:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c42:	9907      	ldr	r1, [sp, #28]
 8003c44:	9803      	ldr	r0, [sp, #12]
 8003c46:	f002 ff4b 	bl	8006ae0 <__sprint_r>
 8003c4a:	2800      	cmp	r0, #0
 8003c4c:	f47f ac54 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 8003c50:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c52:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c54:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c58:	e793      	b.n	8003b82 <_vfprintf_r+0x117a>
 8003c5a:	2330      	movs	r3, #48	; 0x30
 8003c5c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003c60:	2378      	movs	r3, #120	; 0x78
 8003c62:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003c66:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003c6a:	f048 0402 	orr.w	r4, r8, #2
 8003c6e:	f300 82b0 	bgt.w	80041d2 <_vfprintf_r+0x17ca>
 8003c72:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003c76:	930e      	str	r3, [sp, #56]	; 0x38
 8003c78:	f026 0320 	bic.w	r3, r6, #32
 8003c7c:	9304      	str	r3, [sp, #16]
 8003c7e:	2200      	movs	r2, #0
 8003c80:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c82:	920a      	str	r2, [sp, #40]	; 0x28
 8003c84:	46a0      	mov	r8, r4
 8003c86:	af3d      	add	r7, sp, #244	; 0xf4
 8003c88:	2b00      	cmp	r3, #0
 8003c8a:	f2c0 81e3 	blt.w	8004054 <_vfprintf_r+0x164c>
 8003c8e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003c92:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003c96:	2300      	movs	r3, #0
 8003c98:	930b      	str	r3, [sp, #44]	; 0x2c
 8003c9a:	2e61      	cmp	r6, #97	; 0x61
 8003c9c:	f000 8255 	beq.w	800414a <_vfprintf_r+0x1742>
 8003ca0:	2e41      	cmp	r6, #65	; 0x41
 8003ca2:	f47f aee3 	bne.w	8003a6c <_vfprintf_r+0x1064>
 8003ca6:	a824      	add	r0, sp, #144	; 0x90
 8003ca8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003cac:	f002 fe32 	bl	8006914 <frexp>
 8003cb0:	2200      	movs	r2, #0
 8003cb2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003cb6:	ec51 0b10 	vmov	r0, r1, d0
 8003cba:	f7fc ff9d 	bl	8000bf8 <__aeabi_dmul>
 8003cbe:	2200      	movs	r2, #0
 8003cc0:	2300      	movs	r3, #0
 8003cc2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003cc6:	f7fd f9ff 	bl	80010c8 <__aeabi_dcmpeq>
 8003cca:	2800      	cmp	r0, #0
 8003ccc:	f040 8305 	bne.w	80042da <_vfprintf_r+0x18d2>
 8003cd0:	4b63      	ldr	r3, [pc, #396]	; (8003e60 <_vfprintf_r+0x1458>)
 8003cd2:	9309      	str	r3, [sp, #36]	; 0x24
 8003cd4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003cd8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003cdc:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003ce0:	9721      	str	r7, [sp, #132]	; 0x84
 8003ce2:	46b9      	mov	r9, r7
 8003ce4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003ce8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003cec:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003cf0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003cf4:	e003      	b.n	8003cfe <_vfprintf_r+0x12f6>
 8003cf6:	f7fd f9e7 	bl	80010c8 <__aeabi_dcmpeq>
 8003cfa:	bb20      	cbnz	r0, 8003d46 <_vfprintf_r+0x133e>
 8003cfc:	46a9      	mov	r9, r5
 8003cfe:	2200      	movs	r2, #0
 8003d00:	4b58      	ldr	r3, [pc, #352]	; (8003e64 <_vfprintf_r+0x145c>)
 8003d02:	4630      	mov	r0, r6
 8003d04:	4639      	mov	r1, r7
 8003d06:	f7fc ff77 	bl	8000bf8 <__aeabi_dmul>
 8003d0a:	460f      	mov	r7, r1
 8003d0c:	4606      	mov	r6, r0
 8003d0e:	f7fd fa23 	bl	8001158 <__aeabi_d2iz>
 8003d12:	4680      	mov	r8, r0
 8003d14:	f7fc ff06 	bl	8000b24 <__aeabi_i2d>
 8003d18:	4602      	mov	r2, r0
 8003d1a:	460b      	mov	r3, r1
 8003d1c:	4630      	mov	r0, r6
 8003d1e:	4639      	mov	r1, r7
 8003d20:	f7fc fdb2 	bl	8000888 <__aeabi_dsub>
 8003d24:	464d      	mov	r5, r9
 8003d26:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003d2a:	f805 cb01 	strb.w	ip, [r5], #1
 8003d2e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003d32:	46a3      	mov	fp, r4
 8003d34:	4606      	mov	r6, r0
 8003d36:	460f      	mov	r7, r1
 8003d38:	f04f 0200 	mov.w	r2, #0
 8003d3c:	f04f 0300 	mov.w	r3, #0
 8003d40:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003d44:	d1d7      	bne.n	8003cf6 <_vfprintf_r+0x12ee>
 8003d46:	4630      	mov	r0, r6
 8003d48:	4639      	mov	r1, r7
 8003d4a:	2200      	movs	r2, #0
 8003d4c:	4b46      	ldr	r3, [pc, #280]	; (8003e68 <_vfprintf_r+0x1460>)
 8003d4e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003d52:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003d54:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003d58:	4644      	mov	r4, r8
 8003d5a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003d5e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003d62:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003d66:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003d6a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003d6c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003d70:	f7fd f9d2 	bl	8001118 <__aeabi_dcmpgt>
 8003d74:	2800      	cmp	r0, #0
 8003d76:	f040 8176 	bne.w	8004066 <_vfprintf_r+0x165e>
 8003d7a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003d7e:	2200      	movs	r2, #0
 8003d80:	4b39      	ldr	r3, [pc, #228]	; (8003e68 <_vfprintf_r+0x1460>)
 8003d82:	f7fd f9a1 	bl	80010c8 <__aeabi_dcmpeq>
 8003d86:	b110      	cbz	r0, 8003d8e <_vfprintf_r+0x1386>
 8003d88:	07e2      	lsls	r2, r4, #31
 8003d8a:	f100 816c 	bmi.w	8004066 <_vfprintf_r+0x165e>
 8003d8e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003d90:	2b00      	cmp	r3, #0
 8003d92:	db07      	blt.n	8003da4 <_vfprintf_r+0x139c>
 8003d94:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003d96:	3301      	adds	r3, #1
 8003d98:	442b      	add	r3, r5
 8003d9a:	2230      	movs	r2, #48	; 0x30
 8003d9c:	f805 2b01 	strb.w	r2, [r5], #1
 8003da0:	42ab      	cmp	r3, r5
 8003da2:	d1fb      	bne.n	8003d9c <_vfprintf_r+0x1394>
 8003da4:	1beb      	subs	r3, r5, r7
 8003da6:	4640      	mov	r0, r8
 8003da8:	9310      	str	r3, [sp, #64]	; 0x40
 8003daa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003dae:	e683      	b.n	8003ab8 <_vfprintf_r+0x10b0>
 8003db0:	f8cd 9010 	str.w	r9, [sp, #16]
 8003db4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003db8:	9408      	str	r4, [sp, #32]
 8003dba:	4681      	mov	r9, r0
 8003dbc:	900f      	str	r0, [sp, #60]	; 0x3c
 8003dbe:	9014      	str	r0, [sp, #80]	; 0x50
 8003dc0:	9011      	str	r0, [sp, #68]	; 0x44
 8003dc2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003dc6:	f7fe bfac 	b.w	8002d22 <_vfprintf_r+0x31a>
 8003dca:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dcc:	9907      	ldr	r1, [sp, #28]
 8003dce:	9803      	ldr	r0, [sp, #12]
 8003dd0:	f002 fe86 	bl	8006ae0 <__sprint_r>
 8003dd4:	2800      	cmp	r0, #0
 8003dd6:	f47f ab8f 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 8003dda:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003ddc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003dde:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003de2:	e511      	b.n	8003808 <_vfprintf_r+0xe00>
 8003de4:	4252      	negs	r2, r2
 8003de6:	9206      	str	r2, [sp, #24]
 8003de8:	9308      	str	r3, [sp, #32]
 8003dea:	f7ff b96d 	b.w	80030c8 <_vfprintf_r+0x6c0>
 8003dee:	4614      	mov	r4, r2
 8003df0:	4632      	mov	r2, r6
 8003df2:	461e      	mov	r6, r3
 8003df4:	4613      	mov	r3, r2
 8003df6:	462a      	mov	r2, r5
 8003df8:	3201      	adds	r2, #1
 8003dfa:	9209      	str	r2, [sp, #36]	; 0x24
 8003dfc:	f106 0208 	add.w	r2, r6, #8
 8003e00:	e9c6 3900 	strd	r3, r9, [r6]
 8003e04:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e06:	932b      	str	r3, [sp, #172]	; 0xac
 8003e08:	444c      	add	r4, r9
 8003e0a:	2b07      	cmp	r3, #7
 8003e0c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003e0e:	f73f acc3 	bgt.w	8003798 <_vfprintf_r+0xd90>
 8003e12:	3301      	adds	r3, #1
 8003e14:	9309      	str	r3, [sp, #36]	; 0x24
 8003e16:	f102 0b08 	add.w	fp, r2, #8
 8003e1a:	4616      	mov	r6, r2
 8003e1c:	f7ff bbca 	b.w	80035b4 <_vfprintf_r+0xbac>
 8003e20:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e22:	9907      	ldr	r1, [sp, #28]
 8003e24:	9803      	ldr	r0, [sp, #12]
 8003e26:	f002 fe5b 	bl	8006ae0 <__sprint_r>
 8003e2a:	2800      	cmp	r0, #0
 8003e2c:	f47f ab64 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 8003e30:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e32:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e36:	f7ff bade 	b.w	80033f6 <_vfprintf_r+0x9ee>
 8003e3a:	464b      	mov	r3, r9
 8003e3c:	2b06      	cmp	r3, #6
 8003e3e:	bf28      	it	cs
 8003e40:	2306      	movcs	r3, #6
 8003e42:	46b9      	mov	r9, r7
 8003e44:	970f      	str	r7, [sp, #60]	; 0x3c
 8003e46:	9714      	str	r7, [sp, #80]	; 0x50
 8003e48:	9711      	str	r7, [sp, #68]	; 0x44
 8003e4a:	970a      	str	r7, [sp, #40]	; 0x28
 8003e4c:	463a      	mov	r2, r7
 8003e4e:	9304      	str	r3, [sp, #16]
 8003e50:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003e54:	4f05      	ldr	r7, [pc, #20]	; (8003e6c <_vfprintf_r+0x1464>)
 8003e56:	f7fe bf64 	b.w	8002d22 <_vfprintf_r+0x31a>
 8003e5a:	bf00      	nop
 8003e5c:	080071c4 	.word	0x080071c4
 8003e60:	080071a8 	.word	0x080071a8
 8003e64:	40300000 	.word	0x40300000
 8003e68:	3fe00000 	.word	0x3fe00000
 8003e6c:	080071bc 	.word	0x080071bc
 8003e70:	460c      	mov	r4, r1
 8003e72:	4639      	mov	r1, r7
 8003e74:	465f      	mov	r7, fp
 8003e76:	469b      	mov	fp, r3
 8003e78:	460b      	mov	r3, r1
 8003e7a:	3201      	adds	r2, #1
 8003e7c:	442c      	add	r4, r5
 8003e7e:	2a07      	cmp	r2, #7
 8003e80:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003e84:	e9cb 3500 	strd	r3, r5, [fp]
 8003e88:	f73f aca5 	bgt.w	80037d6 <_vfprintf_r+0xdce>
 8003e8c:	f10b 0b08 	add.w	fp, fp, #8
 8003e90:	e4ac      	b.n	80037ec <_vfprintf_r+0xde4>
 8003e92:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e94:	1cda      	adds	r2, r3, #3
 8003e96:	db02      	blt.n	8003e9e <_vfprintf_r+0x1496>
 8003e98:	4599      	cmp	r9, r3
 8003e9a:	f280 80b5 	bge.w	8004008 <_vfprintf_r+0x1600>
 8003e9e:	3e02      	subs	r6, #2
 8003ea0:	f026 0320 	bic.w	r3, r6, #32
 8003ea4:	9304      	str	r3, [sp, #16]
 8003ea6:	e611      	b.n	8003acc <_vfprintf_r+0x10c4>
 8003ea8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003eaa:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003eae:	465a      	mov	r2, fp
 8003eb0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003eb4:	18fb      	adds	r3, r7, r3
 8003eb6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003eba:	970c      	str	r7, [sp, #48]	; 0x30
 8003ebc:	4eaf      	ldr	r6, [pc, #700]	; (800417c <_vfprintf_r+0x1774>)
 8003ebe:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003ec2:	9309      	str	r3, [sp, #36]	; 0x24
 8003ec4:	464f      	mov	r7, r9
 8003ec6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003eca:	4621      	mov	r1, r4
 8003ecc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003ece:	2b00      	cmp	r3, #0
 8003ed0:	d05b      	beq.n	8003f8a <_vfprintf_r+0x1582>
 8003ed2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003ed4:	2b00      	cmp	r3, #0
 8003ed6:	d154      	bne.n	8003f82 <_vfprintf_r+0x157a>
 8003ed8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003eda:	3b01      	subs	r3, #1
 8003edc:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003ee0:	9314      	str	r3, [sp, #80]	; 0x50
 8003ee2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003ee4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003ee6:	6010      	str	r0, [r2, #0]
 8003ee8:	3301      	adds	r3, #1
 8003eea:	4459      	add	r1, fp
 8003eec:	2b07      	cmp	r3, #7
 8003eee:	912c      	str	r1, [sp, #176]	; 0xb0
 8003ef0:	f8c2 b004 	str.w	fp, [r2, #4]
 8003ef4:	932b      	str	r3, [sp, #172]	; 0xac
 8003ef6:	dc68      	bgt.n	8003fca <_vfprintf_r+0x15c2>
 8003ef8:	3208      	adds	r2, #8
 8003efa:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003efc:	f898 3000 	ldrb.w	r3, [r8]
 8003f00:	1bc5      	subs	r5, r0, r7
 8003f02:	429d      	cmp	r5, r3
 8003f04:	bfa8      	it	ge
 8003f06:	461d      	movge	r5, r3
 8003f08:	2d00      	cmp	r5, #0
 8003f0a:	dd0b      	ble.n	8003f24 <_vfprintf_r+0x151c>
 8003f0c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003f0e:	6017      	str	r7, [r2, #0]
 8003f10:	3301      	adds	r3, #1
 8003f12:	4429      	add	r1, r5
 8003f14:	2b07      	cmp	r3, #7
 8003f16:	912c      	str	r1, [sp, #176]	; 0xb0
 8003f18:	6055      	str	r5, [r2, #4]
 8003f1a:	932b      	str	r3, [sp, #172]	; 0xac
 8003f1c:	dc5e      	bgt.n	8003fdc <_vfprintf_r+0x15d4>
 8003f1e:	f898 3000 	ldrb.w	r3, [r8]
 8003f22:	3208      	adds	r2, #8
 8003f24:	2d00      	cmp	r5, #0
 8003f26:	bfac      	ite	ge
 8003f28:	1b5d      	subge	r5, r3, r5
 8003f2a:	461d      	movlt	r5, r3
 8003f2c:	2d00      	cmp	r5, #0
 8003f2e:	dd26      	ble.n	8003f7e <_vfprintf_r+0x1576>
 8003f30:	2d10      	cmp	r5, #16
 8003f32:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003f34:	dd3c      	ble.n	8003fb0 <_vfprintf_r+0x15a8>
 8003f36:	2410      	movs	r4, #16
 8003f38:	e003      	b.n	8003f42 <_vfprintf_r+0x153a>
 8003f3a:	3208      	adds	r2, #8
 8003f3c:	3d10      	subs	r5, #16
 8003f3e:	2d10      	cmp	r5, #16
 8003f40:	dd36      	ble.n	8003fb0 <_vfprintf_r+0x15a8>
 8003f42:	3001      	adds	r0, #1
 8003f44:	3110      	adds	r1, #16
 8003f46:	2807      	cmp	r0, #7
 8003f48:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003f4c:	e9c2 6400 	strd	r6, r4, [r2]
 8003f50:	ddf3      	ble.n	8003f3a <_vfprintf_r+0x1532>
 8003f52:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f54:	4651      	mov	r1, sl
 8003f56:	4648      	mov	r0, r9
 8003f58:	f002 fdc2 	bl	8006ae0 <__sprint_r>
 8003f5c:	2800      	cmp	r0, #0
 8003f5e:	d150      	bne.n	8004002 <_vfprintf_r+0x15fa>
 8003f60:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003f64:	aa2d      	add	r2, sp, #180	; 0xb4
 8003f66:	e7e9      	b.n	8003f3c <_vfprintf_r+0x1534>
 8003f68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f6a:	4651      	mov	r1, sl
 8003f6c:	4648      	mov	r0, r9
 8003f6e:	f002 fdb7 	bl	8006ae0 <__sprint_r>
 8003f72:	2800      	cmp	r0, #0
 8003f74:	d145      	bne.n	8004002 <_vfprintf_r+0x15fa>
 8003f76:	f898 3000 	ldrb.w	r3, [r8]
 8003f7a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003f7c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003f7e:	441f      	add	r7, r3
 8003f80:	e7a4      	b.n	8003ecc <_vfprintf_r+0x14c4>
 8003f82:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003f84:	3b01      	subs	r3, #1
 8003f86:	930f      	str	r3, [sp, #60]	; 0x3c
 8003f88:	e7ab      	b.n	8003ee2 <_vfprintf_r+0x14da>
 8003f8a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003f8c:	2b00      	cmp	r3, #0
 8003f8e:	d1f8      	bne.n	8003f82 <_vfprintf_r+0x157a>
 8003f90:	46b9      	mov	r9, r7
 8003f92:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f94:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003f96:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003f9a:	18fb      	adds	r3, r7, r3
 8003f9c:	4599      	cmp	r9, r3
 8003f9e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003fa2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003fa6:	4693      	mov	fp, r2
 8003fa8:	460c      	mov	r4, r1
 8003faa:	bf28      	it	cs
 8003fac:	4699      	movcs	r9, r3
 8003fae:	e424      	b.n	80037fa <_vfprintf_r+0xdf2>
 8003fb0:	3001      	adds	r0, #1
 8003fb2:	4429      	add	r1, r5
 8003fb4:	2807      	cmp	r0, #7
 8003fb6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003fba:	e9c2 6500 	strd	r6, r5, [r2]
 8003fbe:	dcd3      	bgt.n	8003f68 <_vfprintf_r+0x1560>
 8003fc0:	f898 3000 	ldrb.w	r3, [r8]
 8003fc4:	3208      	adds	r2, #8
 8003fc6:	441f      	add	r7, r3
 8003fc8:	e780      	b.n	8003ecc <_vfprintf_r+0x14c4>
 8003fca:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fcc:	4651      	mov	r1, sl
 8003fce:	4648      	mov	r0, r9
 8003fd0:	f002 fd86 	bl	8006ae0 <__sprint_r>
 8003fd4:	b9a8      	cbnz	r0, 8004002 <_vfprintf_r+0x15fa>
 8003fd6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003fd8:	aa2d      	add	r2, sp, #180	; 0xb4
 8003fda:	e78e      	b.n	8003efa <_vfprintf_r+0x14f2>
 8003fdc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fde:	4651      	mov	r1, sl
 8003fe0:	4648      	mov	r0, r9
 8003fe2:	f002 fd7d 	bl	8006ae0 <__sprint_r>
 8003fe6:	b960      	cbnz	r0, 8004002 <_vfprintf_r+0x15fa>
 8003fe8:	f898 3000 	ldrb.w	r3, [r8]
 8003fec:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003fee:	aa2d      	add	r2, sp, #180	; 0xb4
 8003ff0:	e798      	b.n	8003f24 <_vfprintf_r+0x151c>
 8003ff2:	4638      	mov	r0, r7
 8003ff4:	f7fc fb84 	bl	8000700 <strlen>
 8003ff8:	46a9      	mov	r9, r5
 8003ffa:	4603      	mov	r3, r0
 8003ffc:	9009      	str	r0, [sp, #36]	; 0x24
 8003ffe:	f7ff b8f4 	b.w	80031ea <_vfprintf_r+0x7e2>
 8004002:	46d1      	mov	r9, sl
 8004004:	f7ff ba7a 	b.w	80034fc <_vfprintf_r+0xaf4>
 8004008:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800400a:	4619      	mov	r1, r3
 800400c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800400e:	4299      	cmp	r1, r3
 8004010:	f300 8082 	bgt.w	8004118 <_vfprintf_r+0x1710>
 8004014:	07c4      	lsls	r4, r0, #31
 8004016:	f140 816b 	bpl.w	80042f0 <_vfprintf_r+0x18e8>
 800401a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800401c:	4413      	add	r3, r2
 800401e:	9309      	str	r3, [sp, #36]	; 0x24
 8004020:	0541      	lsls	r1, r0, #21
 8004022:	d503      	bpl.n	800402c <_vfprintf_r+0x1624>
 8004024:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004026:	2b00      	cmp	r3, #0
 8004028:	f300 80e6 	bgt.w	80041f8 <_vfprintf_r+0x17f0>
 800402c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800402e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004032:	9304      	str	r3, [sp, #16]
 8004034:	2667      	movs	r6, #103	; 0x67
 8004036:	2300      	movs	r3, #0
 8004038:	930f      	str	r3, [sp, #60]	; 0x3c
 800403a:	9314      	str	r3, [sp, #80]	; 0x50
 800403c:	e586      	b.n	8003b4c <_vfprintf_r+0x1144>
 800403e:	222d      	movs	r2, #45	; 0x2d
 8004040:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004044:	f04f 0900 	mov.w	r9, #0
 8004048:	f7fe be6c 	b.w	8002d24 <_vfprintf_r+0x31c>
 800404c:	46a1      	mov	r9, r4
 800404e:	f7ff ba55 	b.w	80034fc <_vfprintf_r+0xaf4>
 8004052:	900a      	str	r0, [sp, #40]	; 0x28
 8004054:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8004058:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800405c:	931f      	str	r3, [sp, #124]	; 0x7c
 800405e:	232d      	movs	r3, #45	; 0x2d
 8004060:	911e      	str	r1, [sp, #120]	; 0x78
 8004062:	930b      	str	r3, [sp, #44]	; 0x2c
 8004064:	e619      	b.n	8003c9a <_vfprintf_r+0x1292>
 8004066:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004068:	9328      	str	r3, [sp, #160]	; 0xa0
 800406a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800406c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8004070:	7bd9      	ldrb	r1, [r3, #15]
 8004072:	4291      	cmp	r1, r2
 8004074:	462b      	mov	r3, r5
 8004076:	d109      	bne.n	800408c <_vfprintf_r+0x1684>
 8004078:	2030      	movs	r0, #48	; 0x30
 800407a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800407e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004080:	1e5a      	subs	r2, r3, #1
 8004082:	9228      	str	r2, [sp, #160]	; 0xa0
 8004084:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004088:	4291      	cmp	r1, r2
 800408a:	d0f6      	beq.n	800407a <_vfprintf_r+0x1672>
 800408c:	2a39      	cmp	r2, #57	; 0x39
 800408e:	bf0b      	itete	eq
 8004090:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8004092:	3201      	addne	r2, #1
 8004094:	7a92      	ldrbeq	r2, [r2, #10]
 8004096:	b2d2      	uxtbne	r2, r2
 8004098:	f803 2c01 	strb.w	r2, [r3, #-1]
 800409c:	e682      	b.n	8003da4 <_vfprintf_r+0x139c>
 800409e:	f418 7f00 	tst.w	r8, #512	; 0x200
 80040a2:	f43f ad9f 	beq.w	8003be4 <_vfprintf_r+0x11dc>
 80040a6:	9a05      	ldr	r2, [sp, #20]
 80040a8:	701a      	strb	r2, [r3, #0]
 80040aa:	4657      	mov	r7, sl
 80040ac:	f7fe bf52 	b.w	8002f54 <_vfprintf_r+0x54c>
 80040b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80040b2:	9907      	ldr	r1, [sp, #28]
 80040b4:	9803      	ldr	r0, [sp, #12]
 80040b6:	f002 fd13 	bl	8006ae0 <__sprint_r>
 80040ba:	2800      	cmp	r0, #0
 80040bc:	f47f aa1c 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 80040c0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80040c2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80040c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80040ca:	e571      	b.n	8003bb0 <_vfprintf_r+0x11a8>
 80040cc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80040ce:	2b00      	cmp	r3, #0
 80040d0:	f340 8164 	ble.w	800439c <_vfprintf_r+0x1994>
 80040d4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80040d6:	f1b9 0f00 	cmp.w	r9, #0
 80040da:	f040 8103 	bne.w	80042e4 <_vfprintf_r+0x18dc>
 80040de:	07c6      	lsls	r6, r0, #31
 80040e0:	f100 8100 	bmi.w	80042e4 <_vfprintf_r+0x18dc>
 80040e4:	9309      	str	r3, [sp, #36]	; 0x24
 80040e6:	2666      	movs	r6, #102	; 0x66
 80040e8:	0543      	lsls	r3, r0, #21
 80040ea:	f100 8086 	bmi.w	80041fa <_vfprintf_r+0x17f2>
 80040ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80040f0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80040f4:	9304      	str	r3, [sp, #16]
 80040f6:	e79e      	b.n	8004036 <_vfprintf_r+0x162e>
 80040f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80040fa:	9907      	ldr	r1, [sp, #28]
 80040fc:	9803      	ldr	r0, [sp, #12]
 80040fe:	f002 fcef 	bl	8006ae0 <__sprint_r>
 8004102:	2800      	cmp	r0, #0
 8004104:	f47f a9f8 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 8004108:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800410a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800410c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800410e:	1ad3      	subs	r3, r2, r3
 8004110:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004114:	f7ff bb90 	b.w	8003838 <_vfprintf_r+0xe30>
 8004118:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800411a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800411c:	4413      	add	r3, r2
 800411e:	9309      	str	r3, [sp, #36]	; 0x24
 8004120:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004122:	2b00      	cmp	r3, #0
 8004124:	f340 8149 	ble.w	80043ba <_vfprintf_r+0x19b2>
 8004128:	2667      	movs	r6, #103	; 0x67
 800412a:	e7dd      	b.n	80040e8 <_vfprintf_r+0x16e0>
 800412c:	2330      	movs	r3, #48	; 0x30
 800412e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004132:	2358      	movs	r3, #88	; 0x58
 8004134:	e595      	b.n	8003c62 <_vfprintf_r+0x125a>
 8004136:	9803      	ldr	r0, [sp, #12]
 8004138:	aa2a      	add	r2, sp, #168	; 0xa8
 800413a:	4649      	mov	r1, r9
 800413c:	f002 fcd0 	bl	8006ae0 <__sprint_r>
 8004140:	2800      	cmp	r0, #0
 8004142:	f47f a9e0 	bne.w	8003506 <_vfprintf_r+0xafe>
 8004146:	f7fe bf0f 	b.w	8002f68 <_vfprintf_r+0x560>
 800414a:	a824      	add	r0, sp, #144	; 0x90
 800414c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004150:	f002 fbe0 	bl	8006914 <frexp>
 8004154:	2200      	movs	r2, #0
 8004156:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800415a:	ec51 0b10 	vmov	r0, r1, d0
 800415e:	f7fc fd4b 	bl	8000bf8 <__aeabi_dmul>
 8004162:	2200      	movs	r2, #0
 8004164:	2300      	movs	r3, #0
 8004166:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800416a:	f7fc ffad 	bl	80010c8 <__aeabi_dcmpeq>
 800416e:	b108      	cbz	r0, 8004174 <_vfprintf_r+0x176c>
 8004170:	2301      	movs	r3, #1
 8004172:	9324      	str	r3, [sp, #144]	; 0x90
 8004174:	4b02      	ldr	r3, [pc, #8]	; (8004180 <_vfprintf_r+0x1778>)
 8004176:	9309      	str	r3, [sp, #36]	; 0x24
 8004178:	e5ac      	b.n	8003cd4 <_vfprintf_r+0x12cc>
 800417a:	bf00      	nop
 800417c:	080071d8 	.word	0x080071d8
 8004180:	08007194 	.word	0x08007194
 8004184:	425d      	negs	r5, r3
 8004186:	3310      	adds	r3, #16
 8004188:	4bb9      	ldr	r3, [pc, #740]	; (8004470 <_vfprintf_r+0x1a68>)
 800418a:	f280 8097 	bge.w	80042bc <_vfprintf_r+0x18b4>
 800418e:	4619      	mov	r1, r3
 8004190:	2610      	movs	r6, #16
 8004192:	4623      	mov	r3, r4
 8004194:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004198:	460c      	mov	r4, r1
 800419a:	e005      	b.n	80041a8 <_vfprintf_r+0x17a0>
 800419c:	f10b 0b08 	add.w	fp, fp, #8
 80041a0:	3d10      	subs	r5, #16
 80041a2:	2d10      	cmp	r5, #16
 80041a4:	f340 8087 	ble.w	80042b6 <_vfprintf_r+0x18ae>
 80041a8:	3201      	adds	r2, #1
 80041aa:	3310      	adds	r3, #16
 80041ac:	2a07      	cmp	r2, #7
 80041ae:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80041b2:	e9cb 4600 	strd	r4, r6, [fp]
 80041b6:	ddf1      	ble.n	800419c <_vfprintf_r+0x1794>
 80041b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80041ba:	9907      	ldr	r1, [sp, #28]
 80041bc:	4648      	mov	r0, r9
 80041be:	f002 fc8f 	bl	8006ae0 <__sprint_r>
 80041c2:	2800      	cmp	r0, #0
 80041c4:	f47f a998 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 80041c8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80041cc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80041d0:	e7e6      	b.n	80041a0 <_vfprintf_r+0x1798>
 80041d2:	f109 0101 	add.w	r1, r9, #1
 80041d6:	9803      	ldr	r0, [sp, #12]
 80041d8:	f7fe f8a0 	bl	800231c <_malloc_r>
 80041dc:	4607      	mov	r7, r0
 80041de:	2800      	cmp	r0, #0
 80041e0:	f000 813b 	beq.w	800445a <_vfprintf_r+0x1a52>
 80041e4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80041e8:	930e      	str	r3, [sp, #56]	; 0x38
 80041ea:	f026 0320 	bic.w	r3, r6, #32
 80041ee:	9304      	str	r3, [sp, #16]
 80041f0:	46a0      	mov	r8, r4
 80041f2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80041f4:	900a      	str	r0, [sp, #40]	; 0x28
 80041f6:	e547      	b.n	8003c88 <_vfprintf_r+0x1280>
 80041f8:	2667      	movs	r6, #103	; 0x67
 80041fa:	981a      	ldr	r0, [sp, #104]	; 0x68
 80041fc:	2200      	movs	r2, #0
 80041fe:	920f      	str	r2, [sp, #60]	; 0x3c
 8004200:	9214      	str	r2, [sp, #80]	; 0x50
 8004202:	7803      	ldrb	r3, [r0, #0]
 8004204:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004206:	2bff      	cmp	r3, #255	; 0xff
 8004208:	d00c      	beq.n	8004224 <_vfprintf_r+0x181c>
 800420a:	4293      	cmp	r3, r2
 800420c:	da0a      	bge.n	8004224 <_vfprintf_r+0x181c>
 800420e:	7841      	ldrb	r1, [r0, #1]
 8004210:	1ad2      	subs	r2, r2, r3
 8004212:	b1a9      	cbz	r1, 8004240 <_vfprintf_r+0x1838>
 8004214:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004216:	3301      	adds	r3, #1
 8004218:	9314      	str	r3, [sp, #80]	; 0x50
 800421a:	460b      	mov	r3, r1
 800421c:	2bff      	cmp	r3, #255	; 0xff
 800421e:	f100 0001 	add.w	r0, r0, #1
 8004222:	d1f2      	bne.n	800420a <_vfprintf_r+0x1802>
 8004224:	9211      	str	r2, [sp, #68]	; 0x44
 8004226:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004228:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800422a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800422c:	901a      	str	r0, [sp, #104]	; 0x68
 800422e:	4413      	add	r3, r2
 8004230:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004232:	fb02 1303 	mla	r3, r2, r3, r1
 8004236:	9309      	str	r3, [sp, #36]	; 0x24
 8004238:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800423c:	9304      	str	r3, [sp, #16]
 800423e:	e485      	b.n	8003b4c <_vfprintf_r+0x1144>
 8004240:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004242:	3101      	adds	r1, #1
 8004244:	910f      	str	r1, [sp, #60]	; 0x3c
 8004246:	e7de      	b.n	8004206 <_vfprintf_r+0x17fe>
 8004248:	aa28      	add	r2, sp, #160	; 0xa0
 800424a:	ab25      	add	r3, sp, #148	; 0x94
 800424c:	e9cd 3200 	strd	r3, r2, [sp]
 8004250:	2103      	movs	r1, #3
 8004252:	ab24      	add	r3, sp, #144	; 0x90
 8004254:	464a      	mov	r2, r9
 8004256:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800425a:	9803      	ldr	r0, [sp, #12]
 800425c:	f000 fa5c 	bl	8004718 <_dtoa_r>
 8004260:	464d      	mov	r5, r9
 8004262:	4607      	mov	r7, r0
 8004264:	eb00 0409 	add.w	r4, r0, r9
 8004268:	783b      	ldrb	r3, [r7, #0]
 800426a:	2b30      	cmp	r3, #48	; 0x30
 800426c:	f000 80be 	beq.w	80043ec <_vfprintf_r+0x19e4>
 8004270:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8004272:	442c      	add	r4, r5
 8004274:	2200      	movs	r2, #0
 8004276:	2300      	movs	r3, #0
 8004278:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800427c:	f7fc ff24 	bl	80010c8 <__aeabi_dcmpeq>
 8004280:	b108      	cbz	r0, 8004286 <_vfprintf_r+0x187e>
 8004282:	4623      	mov	r3, r4
 8004284:	e413      	b.n	8003aae <_vfprintf_r+0x10a6>
 8004286:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004288:	42a3      	cmp	r3, r4
 800428a:	f4bf ac10 	bcs.w	8003aae <_vfprintf_r+0x10a6>
 800428e:	2130      	movs	r1, #48	; 0x30
 8004290:	1c5a      	adds	r2, r3, #1
 8004292:	9228      	str	r2, [sp, #160]	; 0xa0
 8004294:	7019      	strb	r1, [r3, #0]
 8004296:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004298:	429c      	cmp	r4, r3
 800429a:	d8f9      	bhi.n	8004290 <_vfprintf_r+0x1888>
 800429c:	e407      	b.n	8003aae <_vfprintf_r+0x10a6>
 800429e:	197c      	adds	r4, r7, r5
 80042a0:	e7e8      	b.n	8004274 <_vfprintf_r+0x186c>
 80042a2:	f1b9 0f00 	cmp.w	r9, #0
 80042a6:	f000 8092 	beq.w	80043ce <_vfprintf_r+0x19c6>
 80042aa:	900a      	str	r0, [sp, #40]	; 0x28
 80042ac:	e4ec      	b.n	8003c88 <_vfprintf_r+0x1280>
 80042ae:	900a      	str	r0, [sp, #40]	; 0x28
 80042b0:	f04f 0906 	mov.w	r9, #6
 80042b4:	e4e8      	b.n	8003c88 <_vfprintf_r+0x1280>
 80042b6:	4621      	mov	r1, r4
 80042b8:	461c      	mov	r4, r3
 80042ba:	460b      	mov	r3, r1
 80042bc:	3201      	adds	r2, #1
 80042be:	442c      	add	r4, r5
 80042c0:	2a07      	cmp	r2, #7
 80042c2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80042c6:	e9cb 3500 	strd	r3, r5, [fp]
 80042ca:	f300 80a9 	bgt.w	8004420 <_vfprintf_r+0x1a18>
 80042ce:	f10b 0b08 	add.w	fp, fp, #8
 80042d2:	e470      	b.n	8003bb6 <_vfprintf_r+0x11ae>
 80042d4:	469a      	mov	sl, r3
 80042d6:	f7ff bb37 	b.w	8003948 <_vfprintf_r+0xf40>
 80042da:	2301      	movs	r3, #1
 80042dc:	9324      	str	r3, [sp, #144]	; 0x90
 80042de:	4b65      	ldr	r3, [pc, #404]	; (8004474 <_vfprintf_r+0x1a6c>)
 80042e0:	9309      	str	r3, [sp, #36]	; 0x24
 80042e2:	e4f7      	b.n	8003cd4 <_vfprintf_r+0x12cc>
 80042e4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80042e6:	4413      	add	r3, r2
 80042e8:	444b      	add	r3, r9
 80042ea:	9309      	str	r3, [sp, #36]	; 0x24
 80042ec:	2666      	movs	r6, #102	; 0x66
 80042ee:	e6fb      	b.n	80040e8 <_vfprintf_r+0x16e0>
 80042f0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80042f2:	9309      	str	r3, [sp, #36]	; 0x24
 80042f4:	e694      	b.n	8004020 <_vfprintf_r+0x1618>
 80042f6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80042fa:	4664      	mov	r4, ip
 80042fc:	4d5e      	ldr	r5, [pc, #376]	; (8004478 <_vfprintf_r+0x1a70>)
 80042fe:	e000      	b.n	8004302 <_vfprintf_r+0x18fa>
 8004300:	4614      	mov	r4, r2
 8004302:	fba5 1203 	umull	r1, r2, r5, r3
 8004306:	08d2      	lsrs	r2, r2, #3
 8004308:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800430c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004310:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004314:	4613      	mov	r3, r2
 8004316:	2b09      	cmp	r3, #9
 8004318:	f804 1c01 	strb.w	r1, [r4, #-1]
 800431c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004320:	dcee      	bgt.n	8004300 <_vfprintf_r+0x18f8>
 8004322:	3330      	adds	r3, #48	; 0x30
 8004324:	3c02      	subs	r4, #2
 8004326:	b2db      	uxtb	r3, r3
 8004328:	45a4      	cmp	ip, r4
 800432a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800432e:	f240 8090 	bls.w	8004452 <_vfprintf_r+0x1a4a>
 8004332:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004336:	4611      	mov	r1, r2
 8004338:	e001      	b.n	800433e <_vfprintf_r+0x1936>
 800433a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800433e:	f804 3b01 	strb.w	r3, [r4], #1
 8004342:	458c      	cmp	ip, r1
 8004344:	d1f9      	bne.n	800433a <_vfprintf_r+0x1932>
 8004346:	ab2a      	add	r3, sp, #168	; 0xa8
 8004348:	1a9b      	subs	r3, r3, r2
 800434a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800434e:	4413      	add	r3, r2
 8004350:	f7ff bbe3 	b.w	8003b1a <_vfprintf_r+0x1112>
 8004354:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004356:	4f49      	ldr	r7, [pc, #292]	; (800447c <_vfprintf_r+0x1a74>)
 8004358:	2b00      	cmp	r3, #0
 800435a:	bfb6      	itet	lt
 800435c:	222d      	movlt	r2, #45	; 0x2d
 800435e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004362:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004366:	4b46      	ldr	r3, [pc, #280]	; (8004480 <_vfprintf_r+0x1a78>)
 8004368:	f7fe bf02 	b.w	8003170 <_vfprintf_r+0x768>
 800436c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004370:	f7ff b8c9 	b.w	8003506 <_vfprintf_r+0xafe>
 8004374:	aa28      	add	r2, sp, #160	; 0xa0
 8004376:	ab25      	add	r3, sp, #148	; 0x94
 8004378:	e9cd 3200 	strd	r3, r2, [sp]
 800437c:	2103      	movs	r1, #3
 800437e:	ab24      	add	r3, sp, #144	; 0x90
 8004380:	464a      	mov	r2, r9
 8004382:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004386:	9803      	ldr	r0, [sp, #12]
 8004388:	f000 f9c6 	bl	8004718 <_dtoa_r>
 800438c:	464d      	mov	r5, r9
 800438e:	4607      	mov	r7, r0
 8004390:	2e46      	cmp	r6, #70	; 0x46
 8004392:	eb07 0405 	add.w	r4, r7, r5
 8004396:	f43f af67 	beq.w	8004268 <_vfprintf_r+0x1860>
 800439a:	e76b      	b.n	8004274 <_vfprintf_r+0x186c>
 800439c:	f1b9 0f00 	cmp.w	r9, #0
 80043a0:	d131      	bne.n	8004406 <_vfprintf_r+0x19fe>
 80043a2:	07c5      	lsls	r5, r0, #31
 80043a4:	d42f      	bmi.n	8004406 <_vfprintf_r+0x19fe>
 80043a6:	2301      	movs	r3, #1
 80043a8:	9304      	str	r3, [sp, #16]
 80043aa:	9309      	str	r3, [sp, #36]	; 0x24
 80043ac:	2666      	movs	r6, #102	; 0x66
 80043ae:	e642      	b.n	8004036 <_vfprintf_r+0x162e>
 80043b0:	07c3      	lsls	r3, r0, #31
 80043b2:	f57f abbf 	bpl.w	8003b34 <_vfprintf_r+0x112c>
 80043b6:	f7ff bbb9 	b.w	8003b2c <_vfprintf_r+0x1124>
 80043ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80043bc:	f1c3 0301 	rsb	r3, r3, #1
 80043c0:	441a      	add	r2, r3
 80043c2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80043c6:	9209      	str	r2, [sp, #36]	; 0x24
 80043c8:	9304      	str	r3, [sp, #16]
 80043ca:	2667      	movs	r6, #103	; 0x67
 80043cc:	e633      	b.n	8004036 <_vfprintf_r+0x162e>
 80043ce:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80043d2:	f04f 0901 	mov.w	r9, #1
 80043d6:	e457      	b.n	8003c88 <_vfprintf_r+0x1280>
 80043d8:	465a      	mov	r2, fp
 80043da:	e511      	b.n	8003e00 <_vfprintf_r+0x13f8>
 80043dc:	2e47      	cmp	r6, #71	; 0x47
 80043de:	f47f af5e 	bne.w	800429e <_vfprintf_r+0x1896>
 80043e2:	f018 0f01 	tst.w	r8, #1
 80043e6:	f43f ab61 	beq.w	8003aac <_vfprintf_r+0x10a4>
 80043ea:	e7d1      	b.n	8004390 <_vfprintf_r+0x1988>
 80043ec:	2200      	movs	r2, #0
 80043ee:	2300      	movs	r3, #0
 80043f0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80043f4:	f7fc fe68 	bl	80010c8 <__aeabi_dcmpeq>
 80043f8:	2800      	cmp	r0, #0
 80043fa:	f47f af39 	bne.w	8004270 <_vfprintf_r+0x1868>
 80043fe:	f1c5 0501 	rsb	r5, r5, #1
 8004402:	9524      	str	r5, [sp, #144]	; 0x90
 8004404:	e735      	b.n	8004272 <_vfprintf_r+0x186a>
 8004406:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004408:	3301      	adds	r3, #1
 800440a:	444b      	add	r3, r9
 800440c:	9309      	str	r3, [sp, #36]	; 0x24
 800440e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004412:	9304      	str	r3, [sp, #16]
 8004414:	2666      	movs	r6, #102	; 0x66
 8004416:	e60e      	b.n	8004036 <_vfprintf_r+0x162e>
 8004418:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800441c:	f7ff bb7a 	b.w	8003b14 <_vfprintf_r+0x110c>
 8004420:	aa2a      	add	r2, sp, #168	; 0xa8
 8004422:	9907      	ldr	r1, [sp, #28]
 8004424:	9803      	ldr	r0, [sp, #12]
 8004426:	f002 fb5b 	bl	8006ae0 <__sprint_r>
 800442a:	2800      	cmp	r0, #0
 800442c:	f47f a864 	bne.w	80034f8 <_vfprintf_r+0xaf0>
 8004430:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004434:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004438:	f7ff bbbd 	b.w	8003bb6 <_vfprintf_r+0x11ae>
 800443c:	9908      	ldr	r1, [sp, #32]
 800443e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004442:	680b      	ldr	r3, [r1, #0]
 8004444:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004448:	1d0b      	adds	r3, r1, #4
 800444a:	4692      	mov	sl, r2
 800444c:	9308      	str	r3, [sp, #32]
 800444e:	f7fe bb59 	b.w	8002b04 <_vfprintf_r+0xfc>
 8004452:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004456:	f7ff bb60 	b.w	8003b1a <_vfprintf_r+0x1112>
 800445a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800445e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004462:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004466:	f8a9 300c 	strh.w	r3, [r9, #12]
 800446a:	f7ff b84c 	b.w	8003506 <_vfprintf_r+0xafe>
 800446e:	bf00      	nop
 8004470:	080071d8 	.word	0x080071d8
 8004474:	080071a8 	.word	0x080071a8
 8004478:	cccccccd 	.word	0xcccccccd
 800447c:	08007190 	.word	0x08007190
 8004480:	0800718c 	.word	0x0800718c

08004484 <__sbprintf>:
 8004484:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004488:	460c      	mov	r4, r1
 800448a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800448e:	8989      	ldrh	r1, [r1, #12]
 8004490:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004492:	89e5      	ldrh	r5, [r4, #14]
 8004494:	9619      	str	r6, [sp, #100]	; 0x64
 8004496:	f021 0102 	bic.w	r1, r1, #2
 800449a:	4606      	mov	r6, r0
 800449c:	69e0      	ldr	r0, [r4, #28]
 800449e:	f8ad 100c 	strh.w	r1, [sp, #12]
 80044a2:	4617      	mov	r7, r2
 80044a4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80044a8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80044aa:	f8ad 500e 	strh.w	r5, [sp, #14]
 80044ae:	4698      	mov	r8, r3
 80044b0:	ad1a      	add	r5, sp, #104	; 0x68
 80044b2:	2300      	movs	r3, #0
 80044b4:	9007      	str	r0, [sp, #28]
 80044b6:	a816      	add	r0, sp, #88	; 0x58
 80044b8:	9209      	str	r2, [sp, #36]	; 0x24
 80044ba:	9306      	str	r3, [sp, #24]
 80044bc:	9500      	str	r5, [sp, #0]
 80044be:	9504      	str	r5, [sp, #16]
 80044c0:	9102      	str	r1, [sp, #8]
 80044c2:	9105      	str	r1, [sp, #20]
 80044c4:	f001 fc8a 	bl	8005ddc <__retarget_lock_init_recursive>
 80044c8:	4643      	mov	r3, r8
 80044ca:	463a      	mov	r2, r7
 80044cc:	4669      	mov	r1, sp
 80044ce:	4630      	mov	r0, r6
 80044d0:	f7fe fa9a 	bl	8002a08 <_vfprintf_r>
 80044d4:	1e05      	subs	r5, r0, #0
 80044d6:	db07      	blt.n	80044e8 <__sbprintf+0x64>
 80044d8:	4630      	mov	r0, r6
 80044da:	4669      	mov	r1, sp
 80044dc:	f001 f8d6 	bl	800568c <_fflush_r>
 80044e0:	2800      	cmp	r0, #0
 80044e2:	bf18      	it	ne
 80044e4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80044e8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80044ec:	065b      	lsls	r3, r3, #25
 80044ee:	d503      	bpl.n	80044f8 <__sbprintf+0x74>
 80044f0:	89a3      	ldrh	r3, [r4, #12]
 80044f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80044f6:	81a3      	strh	r3, [r4, #12]
 80044f8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80044fa:	f001 fc71 	bl	8005de0 <__retarget_lock_close_recursive>
 80044fe:	4628      	mov	r0, r5
 8004500:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004504:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004508 <__swsetup_r>:
 8004508:	b538      	push	{r3, r4, r5, lr}
 800450a:	4b31      	ldr	r3, [pc, #196]	; (80045d0 <__swsetup_r+0xc8>)
 800450c:	681b      	ldr	r3, [r3, #0]
 800450e:	4605      	mov	r5, r0
 8004510:	460c      	mov	r4, r1
 8004512:	b113      	cbz	r3, 800451a <__swsetup_r+0x12>
 8004514:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004516:	2a00      	cmp	r2, #0
 8004518:	d03a      	beq.n	8004590 <__swsetup_r+0x88>
 800451a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800451e:	b293      	uxth	r3, r2
 8004520:	0718      	lsls	r0, r3, #28
 8004522:	d50c      	bpl.n	800453e <__swsetup_r+0x36>
 8004524:	6920      	ldr	r0, [r4, #16]
 8004526:	b1a8      	cbz	r0, 8004554 <__swsetup_r+0x4c>
 8004528:	f013 0201 	ands.w	r2, r3, #1
 800452c:	d020      	beq.n	8004570 <__swsetup_r+0x68>
 800452e:	6963      	ldr	r3, [r4, #20]
 8004530:	2200      	movs	r2, #0
 8004532:	425b      	negs	r3, r3
 8004534:	61a3      	str	r3, [r4, #24]
 8004536:	60a2      	str	r2, [r4, #8]
 8004538:	b300      	cbz	r0, 800457c <__swsetup_r+0x74>
 800453a:	2000      	movs	r0, #0
 800453c:	bd38      	pop	{r3, r4, r5, pc}
 800453e:	06d9      	lsls	r1, r3, #27
 8004540:	d53e      	bpl.n	80045c0 <__swsetup_r+0xb8>
 8004542:	0758      	lsls	r0, r3, #29
 8004544:	d428      	bmi.n	8004598 <__swsetup_r+0x90>
 8004546:	6920      	ldr	r0, [r4, #16]
 8004548:	f042 0308 	orr.w	r3, r2, #8
 800454c:	81a3      	strh	r3, [r4, #12]
 800454e:	b29b      	uxth	r3, r3
 8004550:	2800      	cmp	r0, #0
 8004552:	d1e9      	bne.n	8004528 <__swsetup_r+0x20>
 8004554:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004558:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800455c:	d0e4      	beq.n	8004528 <__swsetup_r+0x20>
 800455e:	4628      	mov	r0, r5
 8004560:	4621      	mov	r1, r4
 8004562:	f001 fc71 	bl	8005e48 <__smakebuf_r>
 8004566:	89a3      	ldrh	r3, [r4, #12]
 8004568:	6920      	ldr	r0, [r4, #16]
 800456a:	f013 0201 	ands.w	r2, r3, #1
 800456e:	d1de      	bne.n	800452e <__swsetup_r+0x26>
 8004570:	0799      	lsls	r1, r3, #30
 8004572:	bf58      	it	pl
 8004574:	6962      	ldrpl	r2, [r4, #20]
 8004576:	60a2      	str	r2, [r4, #8]
 8004578:	2800      	cmp	r0, #0
 800457a:	d1de      	bne.n	800453a <__swsetup_r+0x32>
 800457c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004580:	061a      	lsls	r2, r3, #24
 8004582:	d5db      	bpl.n	800453c <__swsetup_r+0x34>
 8004584:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004588:	81a3      	strh	r3, [r4, #12]
 800458a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800458e:	bd38      	pop	{r3, r4, r5, pc}
 8004590:	4618      	mov	r0, r3
 8004592:	f001 f8d7 	bl	8005744 <__sinit>
 8004596:	e7c0      	b.n	800451a <__swsetup_r+0x12>
 8004598:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800459a:	b151      	cbz	r1, 80045b2 <__swsetup_r+0xaa>
 800459c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80045a0:	4299      	cmp	r1, r3
 80045a2:	d004      	beq.n	80045ae <__swsetup_r+0xa6>
 80045a4:	4628      	mov	r0, r5
 80045a6:	f001 f96f 	bl	8005888 <_free_r>
 80045aa:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80045ae:	2300      	movs	r3, #0
 80045b0:	6323      	str	r3, [r4, #48]	; 0x30
 80045b2:	2300      	movs	r3, #0
 80045b4:	6920      	ldr	r0, [r4, #16]
 80045b6:	6063      	str	r3, [r4, #4]
 80045b8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80045bc:	6020      	str	r0, [r4, #0]
 80045be:	e7c3      	b.n	8004548 <__swsetup_r+0x40>
 80045c0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80045c4:	2309      	movs	r3, #9
 80045c6:	602b      	str	r3, [r5, #0]
 80045c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80045cc:	81a2      	strh	r2, [r4, #12]
 80045ce:	bd38      	pop	{r3, r4, r5, pc}
 80045d0:	200001a8 	.word	0x200001a8

080045d4 <register_fini>:
 80045d4:	4b02      	ldr	r3, [pc, #8]	; (80045e0 <register_fini+0xc>)
 80045d6:	b113      	cbz	r3, 80045de <register_fini+0xa>
 80045d8:	4802      	ldr	r0, [pc, #8]	; (80045e4 <register_fini+0x10>)
 80045da:	f000 b805 	b.w	80045e8 <atexit>
 80045de:	4770      	bx	lr
 80045e0:	00000000 	.word	0x00000000
 80045e4:	080057b5 	.word	0x080057b5

080045e8 <atexit>:
 80045e8:	2300      	movs	r3, #0
 80045ea:	4601      	mov	r1, r0
 80045ec:	461a      	mov	r2, r3
 80045ee:	4618      	mov	r0, r3
 80045f0:	f002 ba96 	b.w	8006b20 <__register_exitproc>

080045f4 <quorem>:
 80045f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80045f8:	6903      	ldr	r3, [r0, #16]
 80045fa:	690f      	ldr	r7, [r1, #16]
 80045fc:	42bb      	cmp	r3, r7
 80045fe:	b083      	sub	sp, #12
 8004600:	f2c0 8086 	blt.w	8004710 <quorem+0x11c>
 8004604:	3f01      	subs	r7, #1
 8004606:	f101 0914 	add.w	r9, r1, #20
 800460a:	f100 0a14 	add.w	sl, r0, #20
 800460e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004612:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004616:	00bc      	lsls	r4, r7, #2
 8004618:	3201      	adds	r2, #1
 800461a:	fbb3 f8f2 	udiv	r8, r3, r2
 800461e:	eb0a 0304 	add.w	r3, sl, r4
 8004622:	9400      	str	r4, [sp, #0]
 8004624:	eb09 0b04 	add.w	fp, r9, r4
 8004628:	9301      	str	r3, [sp, #4]
 800462a:	f1b8 0f00 	cmp.w	r8, #0
 800462e:	d038      	beq.n	80046a2 <quorem+0xae>
 8004630:	2500      	movs	r5, #0
 8004632:	462e      	mov	r6, r5
 8004634:	46ce      	mov	lr, r9
 8004636:	46d4      	mov	ip, sl
 8004638:	f85e 4b04 	ldr.w	r4, [lr], #4
 800463c:	f8dc 3000 	ldr.w	r3, [ip]
 8004640:	b2a2      	uxth	r2, r4
 8004642:	fb08 5502 	mla	r5, r8, r2, r5
 8004646:	0c22      	lsrs	r2, r4, #16
 8004648:	0c2c      	lsrs	r4, r5, #16
 800464a:	fb08 4202 	mla	r2, r8, r2, r4
 800464e:	b2ad      	uxth	r5, r5
 8004650:	1b75      	subs	r5, r6, r5
 8004652:	b296      	uxth	r6, r2
 8004654:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004658:	fa15 f383 	uxtah	r3, r5, r3
 800465c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004660:	b29b      	uxth	r3, r3
 8004662:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004666:	45f3      	cmp	fp, lr
 8004668:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800466c:	f84c 3b04 	str.w	r3, [ip], #4
 8004670:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004674:	d2e0      	bcs.n	8004638 <quorem+0x44>
 8004676:	9b00      	ldr	r3, [sp, #0]
 8004678:	f85a 3003 	ldr.w	r3, [sl, r3]
 800467c:	b98b      	cbnz	r3, 80046a2 <quorem+0xae>
 800467e:	9a01      	ldr	r2, [sp, #4]
 8004680:	1f13      	subs	r3, r2, #4
 8004682:	459a      	cmp	sl, r3
 8004684:	d20c      	bcs.n	80046a0 <quorem+0xac>
 8004686:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800468a:	b94b      	cbnz	r3, 80046a0 <quorem+0xac>
 800468c:	f1a2 0308 	sub.w	r3, r2, #8
 8004690:	e002      	b.n	8004698 <quorem+0xa4>
 8004692:	681a      	ldr	r2, [r3, #0]
 8004694:	3b04      	subs	r3, #4
 8004696:	b91a      	cbnz	r2, 80046a0 <quorem+0xac>
 8004698:	459a      	cmp	sl, r3
 800469a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800469e:	d3f8      	bcc.n	8004692 <quorem+0x9e>
 80046a0:	6107      	str	r7, [r0, #16]
 80046a2:	4604      	mov	r4, r0
 80046a4:	f001 fe94 	bl	80063d0 <__mcmp>
 80046a8:	2800      	cmp	r0, #0
 80046aa:	db2d      	blt.n	8004708 <quorem+0x114>
 80046ac:	f108 0801 	add.w	r8, r8, #1
 80046b0:	4655      	mov	r5, sl
 80046b2:	2300      	movs	r3, #0
 80046b4:	f859 1b04 	ldr.w	r1, [r9], #4
 80046b8:	6828      	ldr	r0, [r5, #0]
 80046ba:	b28a      	uxth	r2, r1
 80046bc:	1a9a      	subs	r2, r3, r2
 80046be:	0c0b      	lsrs	r3, r1, #16
 80046c0:	fa12 f280 	uxtah	r2, r2, r0
 80046c4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80046c8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80046cc:	b292      	uxth	r2, r2
 80046ce:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80046d2:	45cb      	cmp	fp, r9
 80046d4:	f845 2b04 	str.w	r2, [r5], #4
 80046d8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80046dc:	d2ea      	bcs.n	80046b4 <quorem+0xc0>
 80046de:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80046e2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80046e6:	b97a      	cbnz	r2, 8004708 <quorem+0x114>
 80046e8:	1f1a      	subs	r2, r3, #4
 80046ea:	4592      	cmp	sl, r2
 80046ec:	d20b      	bcs.n	8004706 <quorem+0x112>
 80046ee:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80046f2:	b942      	cbnz	r2, 8004706 <quorem+0x112>
 80046f4:	3b08      	subs	r3, #8
 80046f6:	e002      	b.n	80046fe <quorem+0x10a>
 80046f8:	681a      	ldr	r2, [r3, #0]
 80046fa:	3b04      	subs	r3, #4
 80046fc:	b91a      	cbnz	r2, 8004706 <quorem+0x112>
 80046fe:	459a      	cmp	sl, r3
 8004700:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004704:	d3f8      	bcc.n	80046f8 <quorem+0x104>
 8004706:	6127      	str	r7, [r4, #16]
 8004708:	4640      	mov	r0, r8
 800470a:	b003      	add	sp, #12
 800470c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004710:	2000      	movs	r0, #0
 8004712:	b003      	add	sp, #12
 8004714:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004718 <_dtoa_r>:
 8004718:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800471c:	ec55 4b10 	vmov	r4, r5, d0
 8004720:	b09b      	sub	sp, #108	; 0x6c
 8004722:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004724:	9102      	str	r1, [sp, #8]
 8004726:	4681      	mov	r9, r0
 8004728:	9207      	str	r2, [sp, #28]
 800472a:	9305      	str	r3, [sp, #20]
 800472c:	e9cd 4500 	strd	r4, r5, [sp]
 8004730:	b156      	cbz	r6, 8004748 <_dtoa_r+0x30>
 8004732:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004734:	6072      	str	r2, [r6, #4]
 8004736:	2301      	movs	r3, #1
 8004738:	4093      	lsls	r3, r2
 800473a:	60b3      	str	r3, [r6, #8]
 800473c:	4631      	mov	r1, r6
 800473e:	f001 fc57 	bl	8005ff0 <_Bfree>
 8004742:	2300      	movs	r3, #0
 8004744:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004748:	f1b5 0800 	subs.w	r8, r5, #0
 800474c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800474e:	bfb4      	ite	lt
 8004750:	2301      	movlt	r3, #1
 8004752:	2300      	movge	r3, #0
 8004754:	6013      	str	r3, [r2, #0]
 8004756:	4b76      	ldr	r3, [pc, #472]	; (8004930 <_dtoa_r+0x218>)
 8004758:	bfbc      	itt	lt
 800475a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800475e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004762:	ea33 0308 	bics.w	r3, r3, r8
 8004766:	f000 80a6 	beq.w	80048b6 <_dtoa_r+0x19e>
 800476a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800476e:	2200      	movs	r2, #0
 8004770:	2300      	movs	r3, #0
 8004772:	4630      	mov	r0, r6
 8004774:	4639      	mov	r1, r7
 8004776:	f7fc fca7 	bl	80010c8 <__aeabi_dcmpeq>
 800477a:	4605      	mov	r5, r0
 800477c:	b178      	cbz	r0, 800479e <_dtoa_r+0x86>
 800477e:	9a05      	ldr	r2, [sp, #20]
 8004780:	2301      	movs	r3, #1
 8004782:	6013      	str	r3, [r2, #0]
 8004784:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004786:	2b00      	cmp	r3, #0
 8004788:	f000 80c0 	beq.w	800490c <_dtoa_r+0x1f4>
 800478c:	4b69      	ldr	r3, [pc, #420]	; (8004934 <_dtoa_r+0x21c>)
 800478e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004790:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004794:	6013      	str	r3, [r2, #0]
 8004796:	4658      	mov	r0, fp
 8004798:	b01b      	add	sp, #108	; 0x6c
 800479a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800479e:	aa18      	add	r2, sp, #96	; 0x60
 80047a0:	a919      	add	r1, sp, #100	; 0x64
 80047a2:	ec47 6b10 	vmov	d0, r6, r7
 80047a6:	4648      	mov	r0, r9
 80047a8:	f001 fea4 	bl	80064f4 <__d2b>
 80047ac:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80047b0:	4682      	mov	sl, r0
 80047b2:	f040 80a0 	bne.w	80048f6 <_dtoa_r+0x1de>
 80047b6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80047ba:	442c      	add	r4, r5
 80047bc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80047c0:	2b20      	cmp	r3, #32
 80047c2:	f340 842c 	ble.w	800501e <_dtoa_r+0x906>
 80047c6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80047ca:	fa08 f803 	lsl.w	r8, r8, r3
 80047ce:	9b00      	ldr	r3, [sp, #0]
 80047d0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80047d4:	fa23 f000 	lsr.w	r0, r3, r0
 80047d8:	ea48 0000 	orr.w	r0, r8, r0
 80047dc:	f7fc f992 	bl	8000b04 <__aeabi_ui2d>
 80047e0:	2301      	movs	r3, #1
 80047e2:	4606      	mov	r6, r0
 80047e4:	3c01      	subs	r4, #1
 80047e6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80047ea:	930f      	str	r3, [sp, #60]	; 0x3c
 80047ec:	4630      	mov	r0, r6
 80047ee:	4639      	mov	r1, r7
 80047f0:	2200      	movs	r2, #0
 80047f2:	4b51      	ldr	r3, [pc, #324]	; (8004938 <_dtoa_r+0x220>)
 80047f4:	f7fc f848 	bl	8000888 <__aeabi_dsub>
 80047f8:	a347      	add	r3, pc, #284	; (adr r3, 8004918 <_dtoa_r+0x200>)
 80047fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80047fe:	f7fc f9fb 	bl	8000bf8 <__aeabi_dmul>
 8004802:	a347      	add	r3, pc, #284	; (adr r3, 8004920 <_dtoa_r+0x208>)
 8004804:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004808:	f7fc f840 	bl	800088c <__adddf3>
 800480c:	4606      	mov	r6, r0
 800480e:	4620      	mov	r0, r4
 8004810:	460f      	mov	r7, r1
 8004812:	f7fc f987 	bl	8000b24 <__aeabi_i2d>
 8004816:	a344      	add	r3, pc, #272	; (adr r3, 8004928 <_dtoa_r+0x210>)
 8004818:	e9d3 2300 	ldrd	r2, r3, [r3]
 800481c:	f7fc f9ec 	bl	8000bf8 <__aeabi_dmul>
 8004820:	4602      	mov	r2, r0
 8004822:	460b      	mov	r3, r1
 8004824:	4630      	mov	r0, r6
 8004826:	4639      	mov	r1, r7
 8004828:	f7fc f830 	bl	800088c <__adddf3>
 800482c:	4606      	mov	r6, r0
 800482e:	460f      	mov	r7, r1
 8004830:	f7fc fc92 	bl	8001158 <__aeabi_d2iz>
 8004834:	2200      	movs	r2, #0
 8004836:	9006      	str	r0, [sp, #24]
 8004838:	2300      	movs	r3, #0
 800483a:	4630      	mov	r0, r6
 800483c:	4639      	mov	r1, r7
 800483e:	f7fc fc4d 	bl	80010dc <__aeabi_dcmplt>
 8004842:	2800      	cmp	r0, #0
 8004844:	f040 8273 	bne.w	8004d2e <_dtoa_r+0x616>
 8004848:	9e06      	ldr	r6, [sp, #24]
 800484a:	2e16      	cmp	r6, #22
 800484c:	f200 825d 	bhi.w	8004d0a <_dtoa_r+0x5f2>
 8004850:	4b3a      	ldr	r3, [pc, #232]	; (800493c <_dtoa_r+0x224>)
 8004852:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004856:	e9d3 0100 	ldrd	r0, r1, [r3]
 800485a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800485e:	f7fc fc5b 	bl	8001118 <__aeabi_dcmpgt>
 8004862:	2800      	cmp	r0, #0
 8004864:	f000 83d7 	beq.w	8005016 <_dtoa_r+0x8fe>
 8004868:	1e73      	subs	r3, r6, #1
 800486a:	9306      	str	r3, [sp, #24]
 800486c:	2300      	movs	r3, #0
 800486e:	930d      	str	r3, [sp, #52]	; 0x34
 8004870:	1b2c      	subs	r4, r5, r4
 8004872:	f1b4 0801 	subs.w	r8, r4, #1
 8004876:	f100 8254 	bmi.w	8004d22 <_dtoa_r+0x60a>
 800487a:	2300      	movs	r3, #0
 800487c:	9308      	str	r3, [sp, #32]
 800487e:	9b06      	ldr	r3, [sp, #24]
 8004880:	2b00      	cmp	r3, #0
 8004882:	f2c0 8245 	blt.w	8004d10 <_dtoa_r+0x5f8>
 8004886:	4498      	add	r8, r3
 8004888:	930c      	str	r3, [sp, #48]	; 0x30
 800488a:	2300      	movs	r3, #0
 800488c:	930b      	str	r3, [sp, #44]	; 0x2c
 800488e:	9b02      	ldr	r3, [sp, #8]
 8004890:	2b09      	cmp	r3, #9
 8004892:	d85b      	bhi.n	800494c <_dtoa_r+0x234>
 8004894:	2b05      	cmp	r3, #5
 8004896:	f340 83c0 	ble.w	800501a <_dtoa_r+0x902>
 800489a:	3b04      	subs	r3, #4
 800489c:	9302      	str	r3, [sp, #8]
 800489e:	2500      	movs	r5, #0
 80048a0:	9b02      	ldr	r3, [sp, #8]
 80048a2:	3b02      	subs	r3, #2
 80048a4:	2b03      	cmp	r3, #3
 80048a6:	f200 8498 	bhi.w	80051da <_dtoa_r+0xac2>
 80048aa:	e8df f013 	tbh	[pc, r3, lsl #1]
 80048ae:	03df      	.short	0x03df
 80048b0:	03e803bf 	.word	0x03e803bf
 80048b4:	04f5      	.short	0x04f5
 80048b6:	9a05      	ldr	r2, [sp, #20]
 80048b8:	f242 730f 	movw	r3, #9999	; 0x270f
 80048bc:	6013      	str	r3, [r2, #0]
 80048be:	9b00      	ldr	r3, [sp, #0]
 80048c0:	b983      	cbnz	r3, 80048e4 <_dtoa_r+0x1cc>
 80048c2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80048c6:	b96b      	cbnz	r3, 80048e4 <_dtoa_r+0x1cc>
 80048c8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80048ca:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004940 <_dtoa_r+0x228>
 80048ce:	2b00      	cmp	r3, #0
 80048d0:	f43f af61 	beq.w	8004796 <_dtoa_r+0x7e>
 80048d4:	f10b 0308 	add.w	r3, fp, #8
 80048d8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80048da:	4658      	mov	r0, fp
 80048dc:	6013      	str	r3, [r2, #0]
 80048de:	b01b      	add	sp, #108	; 0x6c
 80048e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80048e4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80048e6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004944 <_dtoa_r+0x22c>
 80048ea:	2b00      	cmp	r3, #0
 80048ec:	f43f af53 	beq.w	8004796 <_dtoa_r+0x7e>
 80048f0:	f10b 0303 	add.w	r3, fp, #3
 80048f4:	e7f0      	b.n	80048d8 <_dtoa_r+0x1c0>
 80048f6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80048fa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80048fe:	950f      	str	r5, [sp, #60]	; 0x3c
 8004900:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004904:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004908:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800490a:	e76f      	b.n	80047ec <_dtoa_r+0xd4>
 800490c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004948 <_dtoa_r+0x230>
 8004910:	4658      	mov	r0, fp
 8004912:	b01b      	add	sp, #108	; 0x6c
 8004914:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004918:	636f4361 	.word	0x636f4361
 800491c:	3fd287a7 	.word	0x3fd287a7
 8004920:	8b60c8b3 	.word	0x8b60c8b3
 8004924:	3fc68a28 	.word	0x3fc68a28
 8004928:	509f79fb 	.word	0x509f79fb
 800492c:	3fd34413 	.word	0x3fd34413
 8004930:	7ff00000 	.word	0x7ff00000
 8004934:	080071c5 	.word	0x080071c5
 8004938:	3ff80000 	.word	0x3ff80000
 800493c:	08007220 	.word	0x08007220
 8004940:	080071e8 	.word	0x080071e8
 8004944:	080071f4 	.word	0x080071f4
 8004948:	080071c4 	.word	0x080071c4
 800494c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004950:	2501      	movs	r5, #1
 8004952:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004956:	2300      	movs	r3, #0
 8004958:	9302      	str	r3, [sp, #8]
 800495a:	9307      	str	r3, [sp, #28]
 800495c:	2100      	movs	r1, #0
 800495e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004962:	940e      	str	r4, [sp, #56]	; 0x38
 8004964:	4648      	mov	r0, r9
 8004966:	f001 fb1d 	bl	8005fa4 <_Balloc>
 800496a:	2c0e      	cmp	r4, #14
 800496c:	4683      	mov	fp, r0
 800496e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004972:	f200 80fb 	bhi.w	8004b6c <_dtoa_r+0x454>
 8004976:	2d00      	cmp	r5, #0
 8004978:	f000 80f8 	beq.w	8004b6c <_dtoa_r+0x454>
 800497c:	ed9d 7b00 	vldr	d7, [sp]
 8004980:	9906      	ldr	r1, [sp, #24]
 8004982:	2900      	cmp	r1, #0
 8004984:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004988:	f340 83e5 	ble.w	8005156 <_dtoa_r+0xa3e>
 800498c:	4b9d      	ldr	r3, [pc, #628]	; (8004c04 <_dtoa_r+0x4ec>)
 800498e:	f001 020f 	and.w	r2, r1, #15
 8004992:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004996:	ed93 7b00 	vldr	d7, [r3]
 800499a:	110c      	asrs	r4, r1, #4
 800499c:	06e2      	lsls	r2, r4, #27
 800499e:	ed8d 7b00 	vstr	d7, [sp]
 80049a2:	f140 849e 	bpl.w	80052e2 <_dtoa_r+0xbca>
 80049a6:	4b98      	ldr	r3, [pc, #608]	; (8004c08 <_dtoa_r+0x4f0>)
 80049a8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80049ac:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80049b0:	f7fc fa4c 	bl	8000e4c <__aeabi_ddiv>
 80049b4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80049b8:	f004 040f 	and.w	r4, r4, #15
 80049bc:	2603      	movs	r6, #3
 80049be:	b17c      	cbz	r4, 80049e0 <_dtoa_r+0x2c8>
 80049c0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80049c4:	4d90      	ldr	r5, [pc, #576]	; (8004c08 <_dtoa_r+0x4f0>)
 80049c6:	07e3      	lsls	r3, r4, #31
 80049c8:	d504      	bpl.n	80049d4 <_dtoa_r+0x2bc>
 80049ca:	e9d5 2300 	ldrd	r2, r3, [r5]
 80049ce:	f7fc f913 	bl	8000bf8 <__aeabi_dmul>
 80049d2:	3601      	adds	r6, #1
 80049d4:	1064      	asrs	r4, r4, #1
 80049d6:	f105 0508 	add.w	r5, r5, #8
 80049da:	d1f4      	bne.n	80049c6 <_dtoa_r+0x2ae>
 80049dc:	e9cd 0100 	strd	r0, r1, [sp]
 80049e0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80049e4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80049e8:	f7fc fa30 	bl	8000e4c <__aeabi_ddiv>
 80049ec:	e9cd 0100 	strd	r0, r1, [sp]
 80049f0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80049f2:	b143      	cbz	r3, 8004a06 <_dtoa_r+0x2ee>
 80049f4:	2200      	movs	r2, #0
 80049f6:	4b85      	ldr	r3, [pc, #532]	; (8004c0c <_dtoa_r+0x4f4>)
 80049f8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80049fc:	f7fc fb6e 	bl	80010dc <__aeabi_dcmplt>
 8004a00:	2800      	cmp	r0, #0
 8004a02:	f040 84ff 	bne.w	8005404 <_dtoa_r+0xcec>
 8004a06:	4630      	mov	r0, r6
 8004a08:	f7fc f88c 	bl	8000b24 <__aeabi_i2d>
 8004a0c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a10:	f7fc f8f2 	bl	8000bf8 <__aeabi_dmul>
 8004a14:	4b7e      	ldr	r3, [pc, #504]	; (8004c10 <_dtoa_r+0x4f8>)
 8004a16:	2200      	movs	r2, #0
 8004a18:	f7fb ff38 	bl	800088c <__adddf3>
 8004a1c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a1e:	4606      	mov	r6, r0
 8004a20:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004a24:	2b00      	cmp	r3, #0
 8004a26:	f000 841c 	beq.w	8005262 <_dtoa_r+0xb4a>
 8004a2a:	9b06      	ldr	r3, [sp, #24]
 8004a2c:	9316      	str	r3, [sp, #88]	; 0x58
 8004a2e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a30:	9312      	str	r3, [sp, #72]	; 0x48
 8004a32:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a36:	f7fc fb8f 	bl	8001158 <__aeabi_d2iz>
 8004a3a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004a3c:	4b71      	ldr	r3, [pc, #452]	; (8004c04 <_dtoa_r+0x4ec>)
 8004a3e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a42:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004a46:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004a4a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004a4e:	f7fc f869 	bl	8000b24 <__aeabi_i2d>
 8004a52:	460b      	mov	r3, r1
 8004a54:	4602      	mov	r2, r0
 8004a56:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a5a:	e9cd 6700 	strd	r6, r7, [sp]
 8004a5e:	f7fb ff13 	bl	8000888 <__aeabi_dsub>
 8004a62:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a64:	b2ed      	uxtb	r5, r5
 8004a66:	4606      	mov	r6, r0
 8004a68:	460f      	mov	r7, r1
 8004a6a:	f10b 0401 	add.w	r4, fp, #1
 8004a6e:	2b00      	cmp	r3, #0
 8004a70:	f000 8458 	beq.w	8005324 <_dtoa_r+0xc0c>
 8004a74:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004a78:	2000      	movs	r0, #0
 8004a7a:	4966      	ldr	r1, [pc, #408]	; (8004c14 <_dtoa_r+0x4fc>)
 8004a7c:	f7fc f9e6 	bl	8000e4c <__aeabi_ddiv>
 8004a80:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a84:	f7fb ff00 	bl	8000888 <__aeabi_dsub>
 8004a88:	f88b 5000 	strb.w	r5, [fp]
 8004a8c:	4632      	mov	r2, r6
 8004a8e:	463b      	mov	r3, r7
 8004a90:	e9cd 0100 	strd	r0, r1, [sp]
 8004a94:	f7fc fb40 	bl	8001118 <__aeabi_dcmpgt>
 8004a98:	2800      	cmp	r0, #0
 8004a9a:	f040 8502 	bne.w	80054a2 <_dtoa_r+0xd8a>
 8004a9e:	4632      	mov	r2, r6
 8004aa0:	463b      	mov	r3, r7
 8004aa2:	2000      	movs	r0, #0
 8004aa4:	4959      	ldr	r1, [pc, #356]	; (8004c0c <_dtoa_r+0x4f4>)
 8004aa6:	f7fb feef 	bl	8000888 <__aeabi_dsub>
 8004aaa:	4602      	mov	r2, r0
 8004aac:	460b      	mov	r3, r1
 8004aae:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ab2:	f7fc fb31 	bl	8001118 <__aeabi_dcmpgt>
 8004ab6:	2800      	cmp	r0, #0
 8004ab8:	f040 84fb 	bne.w	80054b2 <_dtoa_r+0xd9a>
 8004abc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004abe:	2a01      	cmp	r2, #1
 8004ac0:	d050      	beq.n	8004b64 <_dtoa_r+0x44c>
 8004ac2:	445a      	add	r2, fp
 8004ac4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004ac8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004acc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004ad0:	4692      	mov	sl, r2
 8004ad2:	46cb      	mov	fp, r9
 8004ad4:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004ad8:	e00c      	b.n	8004af4 <_dtoa_r+0x3dc>
 8004ada:	2000      	movs	r0, #0
 8004adc:	494b      	ldr	r1, [pc, #300]	; (8004c0c <_dtoa_r+0x4f4>)
 8004ade:	f7fb fed3 	bl	8000888 <__aeabi_dsub>
 8004ae2:	4642      	mov	r2, r8
 8004ae4:	464b      	mov	r3, r9
 8004ae6:	f7fc faf9 	bl	80010dc <__aeabi_dcmplt>
 8004aea:	2800      	cmp	r0, #0
 8004aec:	f040 84dc 	bne.w	80054a8 <_dtoa_r+0xd90>
 8004af0:	4554      	cmp	r4, sl
 8004af2:	d030      	beq.n	8004b56 <_dtoa_r+0x43e>
 8004af4:	4640      	mov	r0, r8
 8004af6:	4649      	mov	r1, r9
 8004af8:	2200      	movs	r2, #0
 8004afa:	4b47      	ldr	r3, [pc, #284]	; (8004c18 <_dtoa_r+0x500>)
 8004afc:	f7fc f87c 	bl	8000bf8 <__aeabi_dmul>
 8004b00:	2200      	movs	r2, #0
 8004b02:	4b45      	ldr	r3, [pc, #276]	; (8004c18 <_dtoa_r+0x500>)
 8004b04:	4680      	mov	r8, r0
 8004b06:	4689      	mov	r9, r1
 8004b08:	4630      	mov	r0, r6
 8004b0a:	4639      	mov	r1, r7
 8004b0c:	f7fc f874 	bl	8000bf8 <__aeabi_dmul>
 8004b10:	460f      	mov	r7, r1
 8004b12:	4606      	mov	r6, r0
 8004b14:	f7fc fb20 	bl	8001158 <__aeabi_d2iz>
 8004b18:	4605      	mov	r5, r0
 8004b1a:	f7fc f803 	bl	8000b24 <__aeabi_i2d>
 8004b1e:	4602      	mov	r2, r0
 8004b20:	460b      	mov	r3, r1
 8004b22:	4630      	mov	r0, r6
 8004b24:	4639      	mov	r1, r7
 8004b26:	f7fb feaf 	bl	8000888 <__aeabi_dsub>
 8004b2a:	3530      	adds	r5, #48	; 0x30
 8004b2c:	b2ed      	uxtb	r5, r5
 8004b2e:	4642      	mov	r2, r8
 8004b30:	464b      	mov	r3, r9
 8004b32:	f804 5b01 	strb.w	r5, [r4], #1
 8004b36:	4606      	mov	r6, r0
 8004b38:	460f      	mov	r7, r1
 8004b3a:	f7fc facf 	bl	80010dc <__aeabi_dcmplt>
 8004b3e:	4632      	mov	r2, r6
 8004b40:	463b      	mov	r3, r7
 8004b42:	2800      	cmp	r0, #0
 8004b44:	d0c9      	beq.n	8004ada <_dtoa_r+0x3c2>
 8004b46:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004b48:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004b4c:	9306      	str	r3, [sp, #24]
 8004b4e:	46d9      	mov	r9, fp
 8004b50:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004b54:	e236      	b.n	8004fc4 <_dtoa_r+0x8ac>
 8004b56:	46d9      	mov	r9, fp
 8004b58:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004b5c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004b60:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004b64:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004b68:	e9cd 3400 	strd	r3, r4, [sp]
 8004b6c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004b6e:	2b00      	cmp	r3, #0
 8004b70:	f2c0 80ae 	blt.w	8004cd0 <_dtoa_r+0x5b8>
 8004b74:	9a06      	ldr	r2, [sp, #24]
 8004b76:	2a0e      	cmp	r2, #14
 8004b78:	f300 80aa 	bgt.w	8004cd0 <_dtoa_r+0x5b8>
 8004b7c:	4b21      	ldr	r3, [pc, #132]	; (8004c04 <_dtoa_r+0x4ec>)
 8004b7e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004b82:	ed93 7b00 	vldr	d7, [r3]
 8004b86:	9b07      	ldr	r3, [sp, #28]
 8004b88:	2b00      	cmp	r3, #0
 8004b8a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004b8e:	f2c0 82be 	blt.w	800510e <_dtoa_r+0x9f6>
 8004b92:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004b96:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004b9a:	4630      	mov	r0, r6
 8004b9c:	4639      	mov	r1, r7
 8004b9e:	f7fc f955 	bl	8000e4c <__aeabi_ddiv>
 8004ba2:	f7fc fad9 	bl	8001158 <__aeabi_d2iz>
 8004ba6:	4605      	mov	r5, r0
 8004ba8:	f7fb ffbc 	bl	8000b24 <__aeabi_i2d>
 8004bac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004bb0:	f7fc f822 	bl	8000bf8 <__aeabi_dmul>
 8004bb4:	460b      	mov	r3, r1
 8004bb6:	4602      	mov	r2, r0
 8004bb8:	4639      	mov	r1, r7
 8004bba:	4630      	mov	r0, r6
 8004bbc:	f7fb fe64 	bl	8000888 <__aeabi_dsub>
 8004bc0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004bc4:	f88b 3000 	strb.w	r3, [fp]
 8004bc8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bca:	2b01      	cmp	r3, #1
 8004bcc:	4606      	mov	r6, r0
 8004bce:	460f      	mov	r7, r1
 8004bd0:	f10b 0401 	add.w	r4, fp, #1
 8004bd4:	d053      	beq.n	8004c7e <_dtoa_r+0x566>
 8004bd6:	2200      	movs	r2, #0
 8004bd8:	4b0f      	ldr	r3, [pc, #60]	; (8004c18 <_dtoa_r+0x500>)
 8004bda:	f7fc f80d 	bl	8000bf8 <__aeabi_dmul>
 8004bde:	2200      	movs	r2, #0
 8004be0:	2300      	movs	r3, #0
 8004be2:	4606      	mov	r6, r0
 8004be4:	460f      	mov	r7, r1
 8004be6:	f7fc fa6f 	bl	80010c8 <__aeabi_dcmpeq>
 8004bea:	2800      	cmp	r0, #0
 8004bec:	f040 81ea 	bne.w	8004fc4 <_dtoa_r+0x8ac>
 8004bf0:	f8cd a000 	str.w	sl, [sp]
 8004bf4:	f8cd 901c 	str.w	r9, [sp, #28]
 8004bf8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004bfc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004c00:	e017      	b.n	8004c32 <_dtoa_r+0x51a>
 8004c02:	bf00      	nop
 8004c04:	08007220 	.word	0x08007220
 8004c08:	080071f8 	.word	0x080071f8
 8004c0c:	3ff00000 	.word	0x3ff00000
 8004c10:	401c0000 	.word	0x401c0000
 8004c14:	3fe00000 	.word	0x3fe00000
 8004c18:	40240000 	.word	0x40240000
 8004c1c:	f7fb ffec 	bl	8000bf8 <__aeabi_dmul>
 8004c20:	2200      	movs	r2, #0
 8004c22:	2300      	movs	r3, #0
 8004c24:	4606      	mov	r6, r0
 8004c26:	460f      	mov	r7, r1
 8004c28:	f7fc fa4e 	bl	80010c8 <__aeabi_dcmpeq>
 8004c2c:	2800      	cmp	r0, #0
 8004c2e:	f040 833d 	bne.w	80052ac <_dtoa_r+0xb94>
 8004c32:	464a      	mov	r2, r9
 8004c34:	4653      	mov	r3, sl
 8004c36:	4630      	mov	r0, r6
 8004c38:	4639      	mov	r1, r7
 8004c3a:	f7fc f907 	bl	8000e4c <__aeabi_ddiv>
 8004c3e:	f7fc fa8b 	bl	8001158 <__aeabi_d2iz>
 8004c42:	4605      	mov	r5, r0
 8004c44:	f7fb ff6e 	bl	8000b24 <__aeabi_i2d>
 8004c48:	464a      	mov	r2, r9
 8004c4a:	4653      	mov	r3, sl
 8004c4c:	f7fb ffd4 	bl	8000bf8 <__aeabi_dmul>
 8004c50:	4602      	mov	r2, r0
 8004c52:	460b      	mov	r3, r1
 8004c54:	4630      	mov	r0, r6
 8004c56:	4639      	mov	r1, r7
 8004c58:	f7fb fe16 	bl	8000888 <__aeabi_dsub>
 8004c5c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004c60:	f804 cb01 	strb.w	ip, [r4], #1
 8004c64:	eba4 0c0b 	sub.w	ip, r4, fp
 8004c68:	45e0      	cmp	r8, ip
 8004c6a:	4606      	mov	r6, r0
 8004c6c:	460f      	mov	r7, r1
 8004c6e:	f04f 0200 	mov.w	r2, #0
 8004c72:	4bc1      	ldr	r3, [pc, #772]	; (8004f78 <_dtoa_r+0x860>)
 8004c74:	d1d2      	bne.n	8004c1c <_dtoa_r+0x504>
 8004c76:	f8dd a000 	ldr.w	sl, [sp]
 8004c7a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004c7e:	4632      	mov	r2, r6
 8004c80:	463b      	mov	r3, r7
 8004c82:	4630      	mov	r0, r6
 8004c84:	4639      	mov	r1, r7
 8004c86:	f7fb fe01 	bl	800088c <__adddf3>
 8004c8a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004c8e:	4606      	mov	r6, r0
 8004c90:	460f      	mov	r7, r1
 8004c92:	f7fc fa41 	bl	8001118 <__aeabi_dcmpgt>
 8004c96:	b958      	cbnz	r0, 8004cb0 <_dtoa_r+0x598>
 8004c98:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004c9c:	4630      	mov	r0, r6
 8004c9e:	4639      	mov	r1, r7
 8004ca0:	f7fc fa12 	bl	80010c8 <__aeabi_dcmpeq>
 8004ca4:	2800      	cmp	r0, #0
 8004ca6:	f000 818d 	beq.w	8004fc4 <_dtoa_r+0x8ac>
 8004caa:	07e9      	lsls	r1, r5, #31
 8004cac:	f140 818a 	bpl.w	8004fc4 <_dtoa_r+0x8ac>
 8004cb0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004cb4:	e005      	b.n	8004cc2 <_dtoa_r+0x5aa>
 8004cb6:	459b      	cmp	fp, r3
 8004cb8:	f000 8373 	beq.w	80053a2 <_dtoa_r+0xc8a>
 8004cbc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004cc0:	461c      	mov	r4, r3
 8004cc2:	2d39      	cmp	r5, #57	; 0x39
 8004cc4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004cc8:	d0f5      	beq.n	8004cb6 <_dtoa_r+0x59e>
 8004cca:	3501      	adds	r5, #1
 8004ccc:	701d      	strb	r5, [r3, #0]
 8004cce:	e179      	b.n	8004fc4 <_dtoa_r+0x8ac>
 8004cd0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004cd2:	2a00      	cmp	r2, #0
 8004cd4:	d03b      	beq.n	8004d4e <_dtoa_r+0x636>
 8004cd6:	9a02      	ldr	r2, [sp, #8]
 8004cd8:	2a01      	cmp	r2, #1
 8004cda:	f340 820b 	ble.w	80050f4 <_dtoa_r+0x9dc>
 8004cde:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ce0:	1e5f      	subs	r7, r3, #1
 8004ce2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004ce4:	42bb      	cmp	r3, r7
 8004ce6:	f2c0 82e6 	blt.w	80052b6 <_dtoa_r+0xb9e>
 8004cea:	1bdf      	subs	r7, r3, r7
 8004cec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cee:	2b00      	cmp	r3, #0
 8004cf0:	f2c0 830b 	blt.w	800530a <_dtoa_r+0xbf2>
 8004cf4:	9a08      	ldr	r2, [sp, #32]
 8004cf6:	4614      	mov	r4, r2
 8004cf8:	441a      	add	r2, r3
 8004cfa:	4498      	add	r8, r3
 8004cfc:	9208      	str	r2, [sp, #32]
 8004cfe:	2101      	movs	r1, #1
 8004d00:	4648      	mov	r0, r9
 8004d02:	f001 fa0f 	bl	8006124 <__i2b>
 8004d06:	4605      	mov	r5, r0
 8004d08:	e024      	b.n	8004d54 <_dtoa_r+0x63c>
 8004d0a:	2301      	movs	r3, #1
 8004d0c:	930d      	str	r3, [sp, #52]	; 0x34
 8004d0e:	e5af      	b.n	8004870 <_dtoa_r+0x158>
 8004d10:	9a08      	ldr	r2, [sp, #32]
 8004d12:	9b06      	ldr	r3, [sp, #24]
 8004d14:	1ad2      	subs	r2, r2, r3
 8004d16:	425b      	negs	r3, r3
 8004d18:	930b      	str	r3, [sp, #44]	; 0x2c
 8004d1a:	2300      	movs	r3, #0
 8004d1c:	9208      	str	r2, [sp, #32]
 8004d1e:	930c      	str	r3, [sp, #48]	; 0x30
 8004d20:	e5b5      	b.n	800488e <_dtoa_r+0x176>
 8004d22:	f1c4 0301 	rsb	r3, r4, #1
 8004d26:	9308      	str	r3, [sp, #32]
 8004d28:	f04f 0800 	mov.w	r8, #0
 8004d2c:	e5a7      	b.n	800487e <_dtoa_r+0x166>
 8004d2e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004d32:	4640      	mov	r0, r8
 8004d34:	f7fb fef6 	bl	8000b24 <__aeabi_i2d>
 8004d38:	4632      	mov	r2, r6
 8004d3a:	463b      	mov	r3, r7
 8004d3c:	f7fc f9c4 	bl	80010c8 <__aeabi_dcmpeq>
 8004d40:	2800      	cmp	r0, #0
 8004d42:	f47f ad81 	bne.w	8004848 <_dtoa_r+0x130>
 8004d46:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004d4a:	9306      	str	r3, [sp, #24]
 8004d4c:	e57c      	b.n	8004848 <_dtoa_r+0x130>
 8004d4e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004d50:	9c08      	ldr	r4, [sp, #32]
 8004d52:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004d54:	2c00      	cmp	r4, #0
 8004d56:	dd0c      	ble.n	8004d72 <_dtoa_r+0x65a>
 8004d58:	f1b8 0f00 	cmp.w	r8, #0
 8004d5c:	dd09      	ble.n	8004d72 <_dtoa_r+0x65a>
 8004d5e:	4544      	cmp	r4, r8
 8004d60:	9a08      	ldr	r2, [sp, #32]
 8004d62:	4623      	mov	r3, r4
 8004d64:	bfa8      	it	ge
 8004d66:	4643      	movge	r3, r8
 8004d68:	1ad2      	subs	r2, r2, r3
 8004d6a:	9208      	str	r2, [sp, #32]
 8004d6c:	1ae4      	subs	r4, r4, r3
 8004d6e:	eba8 0803 	sub.w	r8, r8, r3
 8004d72:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d74:	b16b      	cbz	r3, 8004d92 <_dtoa_r+0x67a>
 8004d76:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004d78:	2a00      	cmp	r2, #0
 8004d7a:	f000 8290 	beq.w	800529e <_dtoa_r+0xb86>
 8004d7e:	1bde      	subs	r6, r3, r7
 8004d80:	2f00      	cmp	r7, #0
 8004d82:	f040 819b 	bne.w	80050bc <_dtoa_r+0x9a4>
 8004d86:	4651      	mov	r1, sl
 8004d88:	4632      	mov	r2, r6
 8004d8a:	4648      	mov	r0, r9
 8004d8c:	f001 fa7a 	bl	8006284 <__pow5mult>
 8004d90:	4682      	mov	sl, r0
 8004d92:	2101      	movs	r1, #1
 8004d94:	4648      	mov	r0, r9
 8004d96:	f001 f9c5 	bl	8006124 <__i2b>
 8004d9a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004d9c:	4606      	mov	r6, r0
 8004d9e:	2a00      	cmp	r2, #0
 8004da0:	f040 8125 	bne.w	8004fee <_dtoa_r+0x8d6>
 8004da4:	9b02      	ldr	r3, [sp, #8]
 8004da6:	2b01      	cmp	r3, #1
 8004da8:	f340 816c 	ble.w	8005084 <_dtoa_r+0x96c>
 8004dac:	2001      	movs	r0, #1
 8004dae:	4440      	add	r0, r8
 8004db0:	f010 001f 	ands.w	r0, r0, #31
 8004db4:	f000 8119 	beq.w	8004fea <_dtoa_r+0x8d2>
 8004db8:	f1c0 0320 	rsb	r3, r0, #32
 8004dbc:	2b04      	cmp	r3, #4
 8004dbe:	f340 83ac 	ble.w	800551a <_dtoa_r+0xe02>
 8004dc2:	f1c0 001c 	rsb	r0, r0, #28
 8004dc6:	9b08      	ldr	r3, [sp, #32]
 8004dc8:	4403      	add	r3, r0
 8004dca:	9308      	str	r3, [sp, #32]
 8004dcc:	4404      	add	r4, r0
 8004dce:	4480      	add	r8, r0
 8004dd0:	9b08      	ldr	r3, [sp, #32]
 8004dd2:	2b00      	cmp	r3, #0
 8004dd4:	dd05      	ble.n	8004de2 <_dtoa_r+0x6ca>
 8004dd6:	4651      	mov	r1, sl
 8004dd8:	461a      	mov	r2, r3
 8004dda:	4648      	mov	r0, r9
 8004ddc:	f001 faa2 	bl	8006324 <__lshift>
 8004de0:	4682      	mov	sl, r0
 8004de2:	f1b8 0f00 	cmp.w	r8, #0
 8004de6:	dd05      	ble.n	8004df4 <_dtoa_r+0x6dc>
 8004de8:	4631      	mov	r1, r6
 8004dea:	4642      	mov	r2, r8
 8004dec:	4648      	mov	r0, r9
 8004dee:	f001 fa99 	bl	8006324 <__lshift>
 8004df2:	4606      	mov	r6, r0
 8004df4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004df6:	2b00      	cmp	r3, #0
 8004df8:	d177      	bne.n	8004eea <_dtoa_r+0x7d2>
 8004dfa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004dfc:	2b00      	cmp	r3, #0
 8004dfe:	f340 8209 	ble.w	8005214 <_dtoa_r+0xafc>
 8004e02:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e04:	2b00      	cmp	r3, #0
 8004e06:	f000 8089 	beq.w	8004f1c <_dtoa_r+0x804>
 8004e0a:	2c00      	cmp	r4, #0
 8004e0c:	f300 816b 	bgt.w	80050e6 <_dtoa_r+0x9ce>
 8004e10:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004e12:	2b00      	cmp	r3, #0
 8004e14:	f040 81cd 	bne.w	80051b2 <_dtoa_r+0xa9a>
 8004e18:	46a8      	mov	r8, r5
 8004e1a:	9a00      	ldr	r2, [sp, #0]
 8004e1c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004e20:	f002 0201 	and.w	r2, r2, #1
 8004e24:	920a      	str	r2, [sp, #40]	; 0x28
 8004e26:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004e28:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004e2c:	441a      	add	r2, r3
 8004e2e:	465f      	mov	r7, fp
 8004e30:	9209      	str	r2, [sp, #36]	; 0x24
 8004e32:	46b3      	mov	fp, r6
 8004e34:	4659      	mov	r1, fp
 8004e36:	4650      	mov	r0, sl
 8004e38:	f7ff fbdc 	bl	80045f4 <quorem>
 8004e3c:	4629      	mov	r1, r5
 8004e3e:	4604      	mov	r4, r0
 8004e40:	4650      	mov	r0, sl
 8004e42:	f001 fac5 	bl	80063d0 <__mcmp>
 8004e46:	4659      	mov	r1, fp
 8004e48:	4606      	mov	r6, r0
 8004e4a:	4642      	mov	r2, r8
 8004e4c:	4648      	mov	r0, r9
 8004e4e:	f001 fadb 	bl	8006408 <__mdiff>
 8004e52:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004e56:	9300      	str	r3, [sp, #0]
 8004e58:	68c3      	ldr	r3, [r0, #12]
 8004e5a:	4601      	mov	r1, r0
 8004e5c:	2b00      	cmp	r3, #0
 8004e5e:	f040 81d4 	bne.w	800520a <_dtoa_r+0xaf2>
 8004e62:	9008      	str	r0, [sp, #32]
 8004e64:	4650      	mov	r0, sl
 8004e66:	f001 fab3 	bl	80063d0 <__mcmp>
 8004e6a:	9a08      	ldr	r2, [sp, #32]
 8004e6c:	9007      	str	r0, [sp, #28]
 8004e6e:	4611      	mov	r1, r2
 8004e70:	4648      	mov	r0, r9
 8004e72:	f001 f8bd 	bl	8005ff0 <_Bfree>
 8004e76:	9b07      	ldr	r3, [sp, #28]
 8004e78:	b933      	cbnz	r3, 8004e88 <_dtoa_r+0x770>
 8004e7a:	9a02      	ldr	r2, [sp, #8]
 8004e7c:	b922      	cbnz	r2, 8004e88 <_dtoa_r+0x770>
 8004e7e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e80:	2b00      	cmp	r3, #0
 8004e82:	f000 8319 	beq.w	80054b8 <_dtoa_r+0xda0>
 8004e86:	9b02      	ldr	r3, [sp, #8]
 8004e88:	2e00      	cmp	r6, #0
 8004e8a:	f2c0 821c 	blt.w	80052c6 <_dtoa_r+0xbae>
 8004e8e:	d105      	bne.n	8004e9c <_dtoa_r+0x784>
 8004e90:	9a02      	ldr	r2, [sp, #8]
 8004e92:	b91a      	cbnz	r2, 8004e9c <_dtoa_r+0x784>
 8004e94:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004e96:	2a00      	cmp	r2, #0
 8004e98:	f000 8215 	beq.w	80052c6 <_dtoa_r+0xbae>
 8004e9c:	2b00      	cmp	r3, #0
 8004e9e:	f107 0401 	add.w	r4, r7, #1
 8004ea2:	f300 8225 	bgt.w	80052f0 <_dtoa_r+0xbd8>
 8004ea6:	9b00      	ldr	r3, [sp, #0]
 8004ea8:	703b      	strb	r3, [r7, #0]
 8004eaa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004eac:	42bb      	cmp	r3, r7
 8004eae:	f000 8230 	beq.w	8005312 <_dtoa_r+0xbfa>
 8004eb2:	4651      	mov	r1, sl
 8004eb4:	2300      	movs	r3, #0
 8004eb6:	220a      	movs	r2, #10
 8004eb8:	4648      	mov	r0, r9
 8004eba:	f001 f8a3 	bl	8006004 <__multadd>
 8004ebe:	4545      	cmp	r5, r8
 8004ec0:	4682      	mov	sl, r0
 8004ec2:	4629      	mov	r1, r5
 8004ec4:	f04f 0300 	mov.w	r3, #0
 8004ec8:	f04f 020a 	mov.w	r2, #10
 8004ecc:	4648      	mov	r0, r9
 8004ece:	f000 8196 	beq.w	80051fe <_dtoa_r+0xae6>
 8004ed2:	f001 f897 	bl	8006004 <__multadd>
 8004ed6:	4641      	mov	r1, r8
 8004ed8:	4605      	mov	r5, r0
 8004eda:	2300      	movs	r3, #0
 8004edc:	220a      	movs	r2, #10
 8004ede:	4648      	mov	r0, r9
 8004ee0:	f001 f890 	bl	8006004 <__multadd>
 8004ee4:	4627      	mov	r7, r4
 8004ee6:	4680      	mov	r8, r0
 8004ee8:	e7a4      	b.n	8004e34 <_dtoa_r+0x71c>
 8004eea:	4631      	mov	r1, r6
 8004eec:	4650      	mov	r0, sl
 8004eee:	f001 fa6f 	bl	80063d0 <__mcmp>
 8004ef2:	2800      	cmp	r0, #0
 8004ef4:	da81      	bge.n	8004dfa <_dtoa_r+0x6e2>
 8004ef6:	9f06      	ldr	r7, [sp, #24]
 8004ef8:	4651      	mov	r1, sl
 8004efa:	2300      	movs	r3, #0
 8004efc:	220a      	movs	r2, #10
 8004efe:	4648      	mov	r0, r9
 8004f00:	3f01      	subs	r7, #1
 8004f02:	9706      	str	r7, [sp, #24]
 8004f04:	f001 f87e 	bl	8006004 <__multadd>
 8004f08:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004f0a:	4682      	mov	sl, r0
 8004f0c:	2b00      	cmp	r3, #0
 8004f0e:	f040 82eb 	bne.w	80054e8 <_dtoa_r+0xdd0>
 8004f12:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f14:	2b00      	cmp	r3, #0
 8004f16:	f340 82f3 	ble.w	8005500 <_dtoa_r+0xde8>
 8004f1a:	9309      	str	r3, [sp, #36]	; 0x24
 8004f1c:	465c      	mov	r4, fp
 8004f1e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004f22:	e002      	b.n	8004f2a <_dtoa_r+0x812>
 8004f24:	f001 f86e 	bl	8006004 <__multadd>
 8004f28:	4682      	mov	sl, r0
 8004f2a:	4631      	mov	r1, r6
 8004f2c:	4650      	mov	r0, sl
 8004f2e:	f7ff fb61 	bl	80045f4 <quorem>
 8004f32:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004f36:	f804 7b01 	strb.w	r7, [r4], #1
 8004f3a:	eba4 030b 	sub.w	r3, r4, fp
 8004f3e:	4598      	cmp	r8, r3
 8004f40:	f04f 020a 	mov.w	r2, #10
 8004f44:	f04f 0300 	mov.w	r3, #0
 8004f48:	4651      	mov	r1, sl
 8004f4a:	4648      	mov	r0, r9
 8004f4c:	dcea      	bgt.n	8004f24 <_dtoa_r+0x80c>
 8004f4e:	2300      	movs	r3, #0
 8004f50:	9700      	str	r7, [sp, #0]
 8004f52:	9302      	str	r3, [sp, #8]
 8004f54:	4651      	mov	r1, sl
 8004f56:	2201      	movs	r2, #1
 8004f58:	4648      	mov	r0, r9
 8004f5a:	f001 f9e3 	bl	8006324 <__lshift>
 8004f5e:	4631      	mov	r1, r6
 8004f60:	4682      	mov	sl, r0
 8004f62:	f001 fa35 	bl	80063d0 <__mcmp>
 8004f66:	2800      	cmp	r0, #0
 8004f68:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004f6c:	dc14      	bgt.n	8004f98 <_dtoa_r+0x880>
 8004f6e:	d108      	bne.n	8004f82 <_dtoa_r+0x86a>
 8004f70:	9b00      	ldr	r3, [sp, #0]
 8004f72:	07db      	lsls	r3, r3, #31
 8004f74:	d410      	bmi.n	8004f98 <_dtoa_r+0x880>
 8004f76:	e004      	b.n	8004f82 <_dtoa_r+0x86a>
 8004f78:	40240000 	.word	0x40240000
 8004f7c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004f80:	461c      	mov	r4, r3
 8004f82:	2a30      	cmp	r2, #48	; 0x30
 8004f84:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004f88:	d0f8      	beq.n	8004f7c <_dtoa_r+0x864>
 8004f8a:	e00b      	b.n	8004fa4 <_dtoa_r+0x88c>
 8004f8c:	459b      	cmp	fp, r3
 8004f8e:	f000 814e 	beq.w	800522e <_dtoa_r+0xb16>
 8004f92:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004f96:	461c      	mov	r4, r3
 8004f98:	2a39      	cmp	r2, #57	; 0x39
 8004f9a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004f9e:	d0f5      	beq.n	8004f8c <_dtoa_r+0x874>
 8004fa0:	3201      	adds	r2, #1
 8004fa2:	701a      	strb	r2, [r3, #0]
 8004fa4:	4631      	mov	r1, r6
 8004fa6:	4648      	mov	r0, r9
 8004fa8:	f001 f822 	bl	8005ff0 <_Bfree>
 8004fac:	b155      	cbz	r5, 8004fc4 <_dtoa_r+0x8ac>
 8004fae:	9902      	ldr	r1, [sp, #8]
 8004fb0:	b121      	cbz	r1, 8004fbc <_dtoa_r+0x8a4>
 8004fb2:	42a9      	cmp	r1, r5
 8004fb4:	d002      	beq.n	8004fbc <_dtoa_r+0x8a4>
 8004fb6:	4648      	mov	r0, r9
 8004fb8:	f001 f81a 	bl	8005ff0 <_Bfree>
 8004fbc:	4629      	mov	r1, r5
 8004fbe:	4648      	mov	r0, r9
 8004fc0:	f001 f816 	bl	8005ff0 <_Bfree>
 8004fc4:	4651      	mov	r1, sl
 8004fc6:	4648      	mov	r0, r9
 8004fc8:	f001 f812 	bl	8005ff0 <_Bfree>
 8004fcc:	2200      	movs	r2, #0
 8004fce:	9b06      	ldr	r3, [sp, #24]
 8004fd0:	7022      	strb	r2, [r4, #0]
 8004fd2:	9a05      	ldr	r2, [sp, #20]
 8004fd4:	3301      	adds	r3, #1
 8004fd6:	6013      	str	r3, [r2, #0]
 8004fd8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004fda:	2b00      	cmp	r3, #0
 8004fdc:	f43f abdb 	beq.w	8004796 <_dtoa_r+0x7e>
 8004fe0:	4658      	mov	r0, fp
 8004fe2:	601c      	str	r4, [r3, #0]
 8004fe4:	b01b      	add	sp, #108	; 0x6c
 8004fe6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004fea:	201c      	movs	r0, #28
 8004fec:	e6eb      	b.n	8004dc6 <_dtoa_r+0x6ae>
 8004fee:	4601      	mov	r1, r0
 8004ff0:	4648      	mov	r0, r9
 8004ff2:	f001 f947 	bl	8006284 <__pow5mult>
 8004ff6:	9b02      	ldr	r3, [sp, #8]
 8004ff8:	2b01      	cmp	r3, #1
 8004ffa:	4606      	mov	r6, r0
 8004ffc:	f340 80d4 	ble.w	80051a8 <_dtoa_r+0xa90>
 8005000:	2300      	movs	r3, #0
 8005002:	930c      	str	r3, [sp, #48]	; 0x30
 8005004:	6933      	ldr	r3, [r6, #16]
 8005006:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800500a:	6918      	ldr	r0, [r3, #16]
 800500c:	f001 f83a 	bl	8006084 <__hi0bits>
 8005010:	f1c0 0020 	rsb	r0, r0, #32
 8005014:	e6cb      	b.n	8004dae <_dtoa_r+0x696>
 8005016:	900d      	str	r0, [sp, #52]	; 0x34
 8005018:	e42a      	b.n	8004870 <_dtoa_r+0x158>
 800501a:	2501      	movs	r5, #1
 800501c:	e440      	b.n	80048a0 <_dtoa_r+0x188>
 800501e:	f1c3 0820 	rsb	r8, r3, #32
 8005022:	9b00      	ldr	r3, [sp, #0]
 8005024:	fa03 f008 	lsl.w	r0, r3, r8
 8005028:	f7ff bbd8 	b.w	80047dc <_dtoa_r+0xc4>
 800502c:	2300      	movs	r3, #0
 800502e:	930a      	str	r3, [sp, #40]	; 0x28
 8005030:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005034:	4413      	add	r3, r2
 8005036:	930e      	str	r3, [sp, #56]	; 0x38
 8005038:	3301      	adds	r3, #1
 800503a:	2b01      	cmp	r3, #1
 800503c:	461e      	mov	r6, r3
 800503e:	9309      	str	r3, [sp, #36]	; 0x24
 8005040:	bfb8      	it	lt
 8005042:	2601      	movlt	r6, #1
 8005044:	2100      	movs	r1, #0
 8005046:	2e17      	cmp	r6, #23
 8005048:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800504c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800504e:	f77f ac89 	ble.w	8004964 <_dtoa_r+0x24c>
 8005052:	2201      	movs	r2, #1
 8005054:	2304      	movs	r3, #4
 8005056:	005b      	lsls	r3, r3, #1
 8005058:	f103 0014 	add.w	r0, r3, #20
 800505c:	42b0      	cmp	r0, r6
 800505e:	4611      	mov	r1, r2
 8005060:	f102 0201 	add.w	r2, r2, #1
 8005064:	d9f7      	bls.n	8005056 <_dtoa_r+0x93e>
 8005066:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800506a:	e47b      	b.n	8004964 <_dtoa_r+0x24c>
 800506c:	2300      	movs	r3, #0
 800506e:	930a      	str	r3, [sp, #40]	; 0x28
 8005070:	9e07      	ldr	r6, [sp, #28]
 8005072:	2e00      	cmp	r6, #0
 8005074:	f340 80e2 	ble.w	800523c <_dtoa_r+0xb24>
 8005078:	960e      	str	r6, [sp, #56]	; 0x38
 800507a:	9609      	str	r6, [sp, #36]	; 0x24
 800507c:	e7e2      	b.n	8005044 <_dtoa_r+0x92c>
 800507e:	2301      	movs	r3, #1
 8005080:	930a      	str	r3, [sp, #40]	; 0x28
 8005082:	e7f5      	b.n	8005070 <_dtoa_r+0x958>
 8005084:	9b00      	ldr	r3, [sp, #0]
 8005086:	2b00      	cmp	r3, #0
 8005088:	f47f ae90 	bne.w	8004dac <_dtoa_r+0x694>
 800508c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8005090:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8005094:	2b00      	cmp	r3, #0
 8005096:	f040 8192 	bne.w	80053be <_dtoa_r+0xca6>
 800509a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800509e:	0d1b      	lsrs	r3, r3, #20
 80050a0:	051b      	lsls	r3, r3, #20
 80050a2:	b12b      	cbz	r3, 80050b0 <_dtoa_r+0x998>
 80050a4:	9b08      	ldr	r3, [sp, #32]
 80050a6:	3301      	adds	r3, #1
 80050a8:	9308      	str	r3, [sp, #32]
 80050aa:	f108 0801 	add.w	r8, r8, #1
 80050ae:	2301      	movs	r3, #1
 80050b0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80050b2:	930c      	str	r3, [sp, #48]	; 0x30
 80050b4:	2a00      	cmp	r2, #0
 80050b6:	f43f ae79 	beq.w	8004dac <_dtoa_r+0x694>
 80050ba:	e7a3      	b.n	8005004 <_dtoa_r+0x8ec>
 80050bc:	463a      	mov	r2, r7
 80050be:	4629      	mov	r1, r5
 80050c0:	4648      	mov	r0, r9
 80050c2:	f001 f8df 	bl	8006284 <__pow5mult>
 80050c6:	4652      	mov	r2, sl
 80050c8:	4601      	mov	r1, r0
 80050ca:	4605      	mov	r5, r0
 80050cc:	4648      	mov	r0, r9
 80050ce:	f001 f833 	bl	8006138 <__multiply>
 80050d2:	4651      	mov	r1, sl
 80050d4:	4607      	mov	r7, r0
 80050d6:	4648      	mov	r0, r9
 80050d8:	f000 ff8a 	bl	8005ff0 <_Bfree>
 80050dc:	46ba      	mov	sl, r7
 80050de:	2e00      	cmp	r6, #0
 80050e0:	f43f ae57 	beq.w	8004d92 <_dtoa_r+0x67a>
 80050e4:	e64f      	b.n	8004d86 <_dtoa_r+0x66e>
 80050e6:	4629      	mov	r1, r5
 80050e8:	4622      	mov	r2, r4
 80050ea:	4648      	mov	r0, r9
 80050ec:	f001 f91a 	bl	8006324 <__lshift>
 80050f0:	4605      	mov	r5, r0
 80050f2:	e68d      	b.n	8004e10 <_dtoa_r+0x6f8>
 80050f4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80050f6:	2a00      	cmp	r2, #0
 80050f8:	f000 815d 	beq.w	80053b6 <_dtoa_r+0xc9e>
 80050fc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005100:	9a08      	ldr	r2, [sp, #32]
 8005102:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005104:	4614      	mov	r4, r2
 8005106:	441a      	add	r2, r3
 8005108:	4498      	add	r8, r3
 800510a:	9208      	str	r2, [sp, #32]
 800510c:	e5f7      	b.n	8004cfe <_dtoa_r+0x5e6>
 800510e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005110:	2b00      	cmp	r3, #0
 8005112:	f73f ad3e 	bgt.w	8004b92 <_dtoa_r+0x47a>
 8005116:	f040 80bc 	bne.w	8005292 <_dtoa_r+0xb7a>
 800511a:	ec51 0b17 	vmov	r0, r1, d7
 800511e:	2200      	movs	r2, #0
 8005120:	4bb2      	ldr	r3, [pc, #712]	; (80053ec <_dtoa_r+0xcd4>)
 8005122:	f7fb fd69 	bl	8000bf8 <__aeabi_dmul>
 8005126:	e9dd 2300 	ldrd	r2, r3, [sp]
 800512a:	f7fb ffeb 	bl	8001104 <__aeabi_dcmpge>
 800512e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005130:	4635      	mov	r5, r6
 8005132:	2800      	cmp	r0, #0
 8005134:	d176      	bne.n	8005224 <_dtoa_r+0xb0c>
 8005136:	9a06      	ldr	r2, [sp, #24]
 8005138:	2331      	movs	r3, #49	; 0x31
 800513a:	3201      	adds	r2, #1
 800513c:	9206      	str	r2, [sp, #24]
 800513e:	f88b 3000 	strb.w	r3, [fp]
 8005142:	f10b 0401 	add.w	r4, fp, #1
 8005146:	4631      	mov	r1, r6
 8005148:	4648      	mov	r0, r9
 800514a:	f000 ff51 	bl	8005ff0 <_Bfree>
 800514e:	2d00      	cmp	r5, #0
 8005150:	f47f af34 	bne.w	8004fbc <_dtoa_r+0x8a4>
 8005154:	e736      	b.n	8004fc4 <_dtoa_r+0x8ac>
 8005156:	f000 8142 	beq.w	80053de <_dtoa_r+0xcc6>
 800515a:	9b06      	ldr	r3, [sp, #24]
 800515c:	425c      	negs	r4, r3
 800515e:	4ba4      	ldr	r3, [pc, #656]	; (80053f0 <_dtoa_r+0xcd8>)
 8005160:	f004 020f 	and.w	r2, r4, #15
 8005164:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005168:	e9d3 2300 	ldrd	r2, r3, [r3]
 800516c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8005170:	f7fb fd42 	bl	8000bf8 <__aeabi_dmul>
 8005174:	1124      	asrs	r4, r4, #4
 8005176:	e9cd 0100 	strd	r0, r1, [sp]
 800517a:	f000 81c6 	beq.w	800550a <_dtoa_r+0xdf2>
 800517e:	4d9d      	ldr	r5, [pc, #628]	; (80053f4 <_dtoa_r+0xcdc>)
 8005180:	2300      	movs	r3, #0
 8005182:	2602      	movs	r6, #2
 8005184:	07e7      	lsls	r7, r4, #31
 8005186:	d505      	bpl.n	8005194 <_dtoa_r+0xa7c>
 8005188:	e9d5 2300 	ldrd	r2, r3, [r5]
 800518c:	f7fb fd34 	bl	8000bf8 <__aeabi_dmul>
 8005190:	3601      	adds	r6, #1
 8005192:	2301      	movs	r3, #1
 8005194:	1064      	asrs	r4, r4, #1
 8005196:	f105 0508 	add.w	r5, r5, #8
 800519a:	d1f3      	bne.n	8005184 <_dtoa_r+0xa6c>
 800519c:	2b00      	cmp	r3, #0
 800519e:	f43f ac27 	beq.w	80049f0 <_dtoa_r+0x2d8>
 80051a2:	e9cd 0100 	strd	r0, r1, [sp]
 80051a6:	e423      	b.n	80049f0 <_dtoa_r+0x2d8>
 80051a8:	9b00      	ldr	r3, [sp, #0]
 80051aa:	2b00      	cmp	r3, #0
 80051ac:	f43f af6e 	beq.w	800508c <_dtoa_r+0x974>
 80051b0:	e726      	b.n	8005000 <_dtoa_r+0x8e8>
 80051b2:	6869      	ldr	r1, [r5, #4]
 80051b4:	4648      	mov	r0, r9
 80051b6:	f000 fef5 	bl	8005fa4 <_Balloc>
 80051ba:	692b      	ldr	r3, [r5, #16]
 80051bc:	3302      	adds	r3, #2
 80051be:	009a      	lsls	r2, r3, #2
 80051c0:	4604      	mov	r4, r0
 80051c2:	f105 010c 	add.w	r1, r5, #12
 80051c6:	300c      	adds	r0, #12
 80051c8:	f7fb f9e8 	bl	800059c <memcpy>
 80051cc:	4621      	mov	r1, r4
 80051ce:	2201      	movs	r2, #1
 80051d0:	4648      	mov	r0, r9
 80051d2:	f001 f8a7 	bl	8006324 <__lshift>
 80051d6:	4680      	mov	r8, r0
 80051d8:	e61f      	b.n	8004e1a <_dtoa_r+0x702>
 80051da:	2400      	movs	r4, #0
 80051dc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80051e0:	4621      	mov	r1, r4
 80051e2:	4648      	mov	r0, r9
 80051e4:	f000 fede 	bl	8005fa4 <_Balloc>
 80051e8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80051ec:	930e      	str	r3, [sp, #56]	; 0x38
 80051ee:	9309      	str	r3, [sp, #36]	; 0x24
 80051f0:	2301      	movs	r3, #1
 80051f2:	4683      	mov	fp, r0
 80051f4:	9407      	str	r4, [sp, #28]
 80051f6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80051fa:	930a      	str	r3, [sp, #40]	; 0x28
 80051fc:	e4b6      	b.n	8004b6c <_dtoa_r+0x454>
 80051fe:	f000 ff01 	bl	8006004 <__multadd>
 8005202:	4627      	mov	r7, r4
 8005204:	4605      	mov	r5, r0
 8005206:	4680      	mov	r8, r0
 8005208:	e614      	b.n	8004e34 <_dtoa_r+0x71c>
 800520a:	4648      	mov	r0, r9
 800520c:	f000 fef0 	bl	8005ff0 <_Bfree>
 8005210:	2301      	movs	r3, #1
 8005212:	e639      	b.n	8004e88 <_dtoa_r+0x770>
 8005214:	9b02      	ldr	r3, [sp, #8]
 8005216:	2b02      	cmp	r3, #2
 8005218:	f77f adf3 	ble.w	8004e02 <_dtoa_r+0x6ea>
 800521c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800521e:	2b00      	cmp	r3, #0
 8005220:	f000 80cf 	beq.w	80053c2 <_dtoa_r+0xcaa>
 8005224:	9b07      	ldr	r3, [sp, #28]
 8005226:	43db      	mvns	r3, r3
 8005228:	9306      	str	r3, [sp, #24]
 800522a:	465c      	mov	r4, fp
 800522c:	e78b      	b.n	8005146 <_dtoa_r+0xa2e>
 800522e:	9a06      	ldr	r2, [sp, #24]
 8005230:	2331      	movs	r3, #49	; 0x31
 8005232:	3201      	adds	r2, #1
 8005234:	9206      	str	r2, [sp, #24]
 8005236:	f88b 3000 	strb.w	r3, [fp]
 800523a:	e6b3      	b.n	8004fa4 <_dtoa_r+0x88c>
 800523c:	2401      	movs	r4, #1
 800523e:	9409      	str	r4, [sp, #36]	; 0x24
 8005240:	9407      	str	r4, [sp, #28]
 8005242:	f7ff bb8b 	b.w	800495c <_dtoa_r+0x244>
 8005246:	4630      	mov	r0, r6
 8005248:	f7fb fc6c 	bl	8000b24 <__aeabi_i2d>
 800524c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005250:	f7fb fcd2 	bl	8000bf8 <__aeabi_dmul>
 8005254:	2200      	movs	r2, #0
 8005256:	4b68      	ldr	r3, [pc, #416]	; (80053f8 <_dtoa_r+0xce0>)
 8005258:	f7fb fb18 	bl	800088c <__adddf3>
 800525c:	4606      	mov	r6, r0
 800525e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005262:	2200      	movs	r2, #0
 8005264:	4b61      	ldr	r3, [pc, #388]	; (80053ec <_dtoa_r+0xcd4>)
 8005266:	e9dd 0100 	ldrd	r0, r1, [sp]
 800526a:	f7fb fb0d 	bl	8000888 <__aeabi_dsub>
 800526e:	4632      	mov	r2, r6
 8005270:	463b      	mov	r3, r7
 8005272:	4604      	mov	r4, r0
 8005274:	460d      	mov	r5, r1
 8005276:	f7fb ff4f 	bl	8001118 <__aeabi_dcmpgt>
 800527a:	2800      	cmp	r0, #0
 800527c:	d14f      	bne.n	800531e <_dtoa_r+0xc06>
 800527e:	4632      	mov	r2, r6
 8005280:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8005284:	4620      	mov	r0, r4
 8005286:	4629      	mov	r1, r5
 8005288:	f7fb ff28 	bl	80010dc <__aeabi_dcmplt>
 800528c:	2800      	cmp	r0, #0
 800528e:	f43f ac69 	beq.w	8004b64 <_dtoa_r+0x44c>
 8005292:	2600      	movs	r6, #0
 8005294:	4635      	mov	r5, r6
 8005296:	e7c5      	b.n	8005224 <_dtoa_r+0xb0c>
 8005298:	2301      	movs	r3, #1
 800529a:	930a      	str	r3, [sp, #40]	; 0x28
 800529c:	e6c8      	b.n	8005030 <_dtoa_r+0x918>
 800529e:	4651      	mov	r1, sl
 80052a0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80052a2:	4648      	mov	r0, r9
 80052a4:	f000 ffee 	bl	8006284 <__pow5mult>
 80052a8:	4682      	mov	sl, r0
 80052aa:	e572      	b.n	8004d92 <_dtoa_r+0x67a>
 80052ac:	f8dd a000 	ldr.w	sl, [sp]
 80052b0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80052b4:	e686      	b.n	8004fc4 <_dtoa_r+0x8ac>
 80052b6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80052b8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80052ba:	1afb      	subs	r3, r7, r3
 80052bc:	441a      	add	r2, r3
 80052be:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80052c2:	2700      	movs	r7, #0
 80052c4:	e512      	b.n	8004cec <_dtoa_r+0x5d4>
 80052c6:	2b00      	cmp	r3, #0
 80052c8:	9402      	str	r4, [sp, #8]
 80052ca:	465e      	mov	r6, fp
 80052cc:	f107 0401 	add.w	r4, r7, #1
 80052d0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80052d4:	f300 80ba 	bgt.w	800544c <_dtoa_r+0xd34>
 80052d8:	9b00      	ldr	r3, [sp, #0]
 80052da:	9502      	str	r5, [sp, #8]
 80052dc:	703b      	strb	r3, [r7, #0]
 80052de:	4645      	mov	r5, r8
 80052e0:	e660      	b.n	8004fa4 <_dtoa_r+0x88c>
 80052e2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80052e6:	2602      	movs	r6, #2
 80052e8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80052ec:	f7ff bb67 	b.w	80049be <_dtoa_r+0x2a6>
 80052f0:	9b00      	ldr	r3, [sp, #0]
 80052f2:	2b39      	cmp	r3, #57	; 0x39
 80052f4:	465e      	mov	r6, fp
 80052f6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80052fa:	f000 80b9 	beq.w	8005470 <_dtoa_r+0xd58>
 80052fe:	9b00      	ldr	r3, [sp, #0]
 8005300:	9502      	str	r5, [sp, #8]
 8005302:	3301      	adds	r3, #1
 8005304:	703b      	strb	r3, [r7, #0]
 8005306:	4645      	mov	r5, r8
 8005308:	e64c      	b.n	8004fa4 <_dtoa_r+0x88c>
 800530a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800530e:	1a9c      	subs	r4, r3, r2
 8005310:	e4f5      	b.n	8004cfe <_dtoa_r+0x5e6>
 8005312:	465e      	mov	r6, fp
 8005314:	9502      	str	r5, [sp, #8]
 8005316:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800531a:	4645      	mov	r5, r8
 800531c:	e61a      	b.n	8004f54 <_dtoa_r+0x83c>
 800531e:	2600      	movs	r6, #0
 8005320:	4635      	mov	r5, r6
 8005322:	e708      	b.n	8005136 <_dtoa_r+0xa1e>
 8005324:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005328:	e9dd 0100 	ldrd	r0, r1, [sp]
 800532c:	f7fb fc64 	bl	8000bf8 <__aeabi_dmul>
 8005330:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005332:	f88b 5000 	strb.w	r5, [fp]
 8005336:	2b01      	cmp	r3, #1
 8005338:	e9cd 0100 	strd	r0, r1, [sp]
 800533c:	d020      	beq.n	8005380 <_dtoa_r+0xc68>
 800533e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005340:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005344:	445b      	add	r3, fp
 8005346:	4698      	mov	r8, r3
 8005348:	2200      	movs	r2, #0
 800534a:	4b2c      	ldr	r3, [pc, #176]	; (80053fc <_dtoa_r+0xce4>)
 800534c:	4630      	mov	r0, r6
 800534e:	4639      	mov	r1, r7
 8005350:	f7fb fc52 	bl	8000bf8 <__aeabi_dmul>
 8005354:	460f      	mov	r7, r1
 8005356:	4606      	mov	r6, r0
 8005358:	f7fb fefe 	bl	8001158 <__aeabi_d2iz>
 800535c:	4605      	mov	r5, r0
 800535e:	f7fb fbe1 	bl	8000b24 <__aeabi_i2d>
 8005362:	3530      	adds	r5, #48	; 0x30
 8005364:	4602      	mov	r2, r0
 8005366:	460b      	mov	r3, r1
 8005368:	4630      	mov	r0, r6
 800536a:	4639      	mov	r1, r7
 800536c:	f7fb fa8c 	bl	8000888 <__aeabi_dsub>
 8005370:	f804 5b01 	strb.w	r5, [r4], #1
 8005374:	4544      	cmp	r4, r8
 8005376:	4606      	mov	r6, r0
 8005378:	460f      	mov	r7, r1
 800537a:	d1e5      	bne.n	8005348 <_dtoa_r+0xc30>
 800537c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005380:	4b1f      	ldr	r3, [pc, #124]	; (8005400 <_dtoa_r+0xce8>)
 8005382:	2200      	movs	r2, #0
 8005384:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005388:	f7fb fa80 	bl	800088c <__adddf3>
 800538c:	4632      	mov	r2, r6
 800538e:	463b      	mov	r3, r7
 8005390:	f7fb fea4 	bl	80010dc <__aeabi_dcmplt>
 8005394:	2800      	cmp	r0, #0
 8005396:	d070      	beq.n	800547a <_dtoa_r+0xd62>
 8005398:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800539a:	9306      	str	r3, [sp, #24]
 800539c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80053a0:	e48f      	b.n	8004cc2 <_dtoa_r+0x5aa>
 80053a2:	2330      	movs	r3, #48	; 0x30
 80053a4:	f88b 3000 	strb.w	r3, [fp]
 80053a8:	9b06      	ldr	r3, [sp, #24]
 80053aa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80053ae:	3301      	adds	r3, #1
 80053b0:	9306      	str	r3, [sp, #24]
 80053b2:	465b      	mov	r3, fp
 80053b4:	e489      	b.n	8004cca <_dtoa_r+0x5b2>
 80053b6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80053b8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80053bc:	e6a0      	b.n	8005100 <_dtoa_r+0x9e8>
 80053be:	2300      	movs	r3, #0
 80053c0:	e676      	b.n	80050b0 <_dtoa_r+0x998>
 80053c2:	4631      	mov	r1, r6
 80053c4:	2205      	movs	r2, #5
 80053c6:	4648      	mov	r0, r9
 80053c8:	f000 fe1c 	bl	8006004 <__multadd>
 80053cc:	4601      	mov	r1, r0
 80053ce:	4606      	mov	r6, r0
 80053d0:	4650      	mov	r0, sl
 80053d2:	f000 fffd 	bl	80063d0 <__mcmp>
 80053d6:	2800      	cmp	r0, #0
 80053d8:	f73f aead 	bgt.w	8005136 <_dtoa_r+0xa1e>
 80053dc:	e722      	b.n	8005224 <_dtoa_r+0xb0c>
 80053de:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80053e2:	2602      	movs	r6, #2
 80053e4:	ed8d 7b00 	vstr	d7, [sp]
 80053e8:	f7ff bb02 	b.w	80049f0 <_dtoa_r+0x2d8>
 80053ec:	40140000 	.word	0x40140000
 80053f0:	08007220 	.word	0x08007220
 80053f4:	080071f8 	.word	0x080071f8
 80053f8:	401c0000 	.word	0x401c0000
 80053fc:	40240000 	.word	0x40240000
 8005400:	3fe00000 	.word	0x3fe00000
 8005404:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005406:	2b00      	cmp	r3, #0
 8005408:	f43f af1d 	beq.w	8005246 <_dtoa_r+0xb2e>
 800540c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800540e:	2c00      	cmp	r4, #0
 8005410:	f77f aba8 	ble.w	8004b64 <_dtoa_r+0x44c>
 8005414:	2200      	movs	r2, #0
 8005416:	4b45      	ldr	r3, [pc, #276]	; (800552c <_dtoa_r+0xe14>)
 8005418:	e9dd 0100 	ldrd	r0, r1, [sp]
 800541c:	f7fb fbec 	bl	8000bf8 <__aeabi_dmul>
 8005420:	e9cd 0100 	strd	r0, r1, [sp]
 8005424:	1c70      	adds	r0, r6, #1
 8005426:	f7fb fb7d 	bl	8000b24 <__aeabi_i2d>
 800542a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800542e:	f7fb fbe3 	bl	8000bf8 <__aeabi_dmul>
 8005432:	4b3f      	ldr	r3, [pc, #252]	; (8005530 <_dtoa_r+0xe18>)
 8005434:	2200      	movs	r2, #0
 8005436:	f7fb fa29 	bl	800088c <__adddf3>
 800543a:	9b06      	ldr	r3, [sp, #24]
 800543c:	9412      	str	r4, [sp, #72]	; 0x48
 800543e:	3b01      	subs	r3, #1
 8005440:	4606      	mov	r6, r0
 8005442:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005446:	9316      	str	r3, [sp, #88]	; 0x58
 8005448:	f7ff baf3 	b.w	8004a32 <_dtoa_r+0x31a>
 800544c:	4651      	mov	r1, sl
 800544e:	2201      	movs	r2, #1
 8005450:	4648      	mov	r0, r9
 8005452:	f000 ff67 	bl	8006324 <__lshift>
 8005456:	4631      	mov	r1, r6
 8005458:	4682      	mov	sl, r0
 800545a:	f000 ffb9 	bl	80063d0 <__mcmp>
 800545e:	2800      	cmp	r0, #0
 8005460:	dd3b      	ble.n	80054da <_dtoa_r+0xdc2>
 8005462:	9b00      	ldr	r3, [sp, #0]
 8005464:	2b39      	cmp	r3, #57	; 0x39
 8005466:	d003      	beq.n	8005470 <_dtoa_r+0xd58>
 8005468:	9b02      	ldr	r3, [sp, #8]
 800546a:	3331      	adds	r3, #49	; 0x31
 800546c:	9300      	str	r3, [sp, #0]
 800546e:	e733      	b.n	80052d8 <_dtoa_r+0xbc0>
 8005470:	2239      	movs	r2, #57	; 0x39
 8005472:	9502      	str	r5, [sp, #8]
 8005474:	703a      	strb	r2, [r7, #0]
 8005476:	4645      	mov	r5, r8
 8005478:	e58e      	b.n	8004f98 <_dtoa_r+0x880>
 800547a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800547e:	2000      	movs	r0, #0
 8005480:	492c      	ldr	r1, [pc, #176]	; (8005534 <_dtoa_r+0xe1c>)
 8005482:	f7fb fa01 	bl	8000888 <__aeabi_dsub>
 8005486:	4632      	mov	r2, r6
 8005488:	463b      	mov	r3, r7
 800548a:	f7fb fe45 	bl	8001118 <__aeabi_dcmpgt>
 800548e:	b910      	cbnz	r0, 8005496 <_dtoa_r+0xd7e>
 8005490:	f7ff bb68 	b.w	8004b64 <_dtoa_r+0x44c>
 8005494:	4614      	mov	r4, r2
 8005496:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800549a:	2b30      	cmp	r3, #48	; 0x30
 800549c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80054a0:	d0f8      	beq.n	8005494 <_dtoa_r+0xd7c>
 80054a2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80054a4:	9306      	str	r3, [sp, #24]
 80054a6:	e58d      	b.n	8004fc4 <_dtoa_r+0x8ac>
 80054a8:	46d9      	mov	r9, fp
 80054aa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80054ae:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80054b2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80054b4:	9306      	str	r3, [sp, #24]
 80054b6:	e404      	b.n	8004cc2 <_dtoa_r+0x5aa>
 80054b8:	9b00      	ldr	r3, [sp, #0]
 80054ba:	2b39      	cmp	r3, #57	; 0x39
 80054bc:	4621      	mov	r1, r4
 80054be:	4632      	mov	r2, r6
 80054c0:	f107 0401 	add.w	r4, r7, #1
 80054c4:	465e      	mov	r6, fp
 80054c6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80054ca:	d0d1      	beq.n	8005470 <_dtoa_r+0xd58>
 80054cc:	2a00      	cmp	r2, #0
 80054ce:	f77f af03 	ble.w	80052d8 <_dtoa_r+0xbc0>
 80054d2:	460b      	mov	r3, r1
 80054d4:	3331      	adds	r3, #49	; 0x31
 80054d6:	9300      	str	r3, [sp, #0]
 80054d8:	e6fe      	b.n	80052d8 <_dtoa_r+0xbc0>
 80054da:	f47f aefd 	bne.w	80052d8 <_dtoa_r+0xbc0>
 80054de:	9b00      	ldr	r3, [sp, #0]
 80054e0:	07da      	lsls	r2, r3, #31
 80054e2:	f57f aef9 	bpl.w	80052d8 <_dtoa_r+0xbc0>
 80054e6:	e7bc      	b.n	8005462 <_dtoa_r+0xd4a>
 80054e8:	4629      	mov	r1, r5
 80054ea:	2300      	movs	r3, #0
 80054ec:	220a      	movs	r2, #10
 80054ee:	4648      	mov	r0, r9
 80054f0:	f000 fd88 	bl	8006004 <__multadd>
 80054f4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80054f6:	2b00      	cmp	r3, #0
 80054f8:	4605      	mov	r5, r0
 80054fa:	dd09      	ble.n	8005510 <_dtoa_r+0xdf8>
 80054fc:	9309      	str	r3, [sp, #36]	; 0x24
 80054fe:	e484      	b.n	8004e0a <_dtoa_r+0x6f2>
 8005500:	9b02      	ldr	r3, [sp, #8]
 8005502:	2b02      	cmp	r3, #2
 8005504:	dc0e      	bgt.n	8005524 <_dtoa_r+0xe0c>
 8005506:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005508:	e507      	b.n	8004f1a <_dtoa_r+0x802>
 800550a:	2602      	movs	r6, #2
 800550c:	f7ff ba70 	b.w	80049f0 <_dtoa_r+0x2d8>
 8005510:	9b02      	ldr	r3, [sp, #8]
 8005512:	2b02      	cmp	r3, #2
 8005514:	dc06      	bgt.n	8005524 <_dtoa_r+0xe0c>
 8005516:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005518:	e7f0      	b.n	80054fc <_dtoa_r+0xde4>
 800551a:	f43f ac59 	beq.w	8004dd0 <_dtoa_r+0x6b8>
 800551e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005522:	e450      	b.n	8004dc6 <_dtoa_r+0x6ae>
 8005524:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005526:	9309      	str	r3, [sp, #36]	; 0x24
 8005528:	e678      	b.n	800521c <_dtoa_r+0xb04>
 800552a:	bf00      	nop
 800552c:	40240000 	.word	0x40240000
 8005530:	401c0000 	.word	0x401c0000
 8005534:	3fe00000 	.word	0x3fe00000

08005538 <__sflush_r>:
 8005538:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800553c:	b29a      	uxth	r2, r3
 800553e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005542:	460c      	mov	r4, r1
 8005544:	0711      	lsls	r1, r2, #28
 8005546:	4680      	mov	r8, r0
 8005548:	d444      	bmi.n	80055d4 <__sflush_r+0x9c>
 800554a:	6862      	ldr	r2, [r4, #4]
 800554c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005550:	2a00      	cmp	r2, #0
 8005552:	81a3      	strh	r3, [r4, #12]
 8005554:	dd59      	ble.n	800560a <__sflush_r+0xd2>
 8005556:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005558:	2d00      	cmp	r5, #0
 800555a:	d053      	beq.n	8005604 <__sflush_r+0xcc>
 800555c:	2200      	movs	r2, #0
 800555e:	b29b      	uxth	r3, r3
 8005560:	f8d8 6000 	ldr.w	r6, [r8]
 8005564:	69e1      	ldr	r1, [r4, #28]
 8005566:	f8c8 2000 	str.w	r2, [r8]
 800556a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800556e:	f040 8083 	bne.w	8005678 <__sflush_r+0x140>
 8005572:	2301      	movs	r3, #1
 8005574:	4640      	mov	r0, r8
 8005576:	47a8      	blx	r5
 8005578:	1c42      	adds	r2, r0, #1
 800557a:	d04a      	beq.n	8005612 <__sflush_r+0xda>
 800557c:	89a3      	ldrh	r3, [r4, #12]
 800557e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005580:	69e1      	ldr	r1, [r4, #28]
 8005582:	075b      	lsls	r3, r3, #29
 8005584:	d505      	bpl.n	8005592 <__sflush_r+0x5a>
 8005586:	6862      	ldr	r2, [r4, #4]
 8005588:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800558a:	1a80      	subs	r0, r0, r2
 800558c:	b10b      	cbz	r3, 8005592 <__sflush_r+0x5a>
 800558e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005590:	1ac0      	subs	r0, r0, r3
 8005592:	4602      	mov	r2, r0
 8005594:	2300      	movs	r3, #0
 8005596:	4640      	mov	r0, r8
 8005598:	47a8      	blx	r5
 800559a:	1c47      	adds	r7, r0, #1
 800559c:	d045      	beq.n	800562a <__sflush_r+0xf2>
 800559e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055a2:	6922      	ldr	r2, [r4, #16]
 80055a4:	6022      	str	r2, [r4, #0]
 80055a6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80055aa:	2200      	movs	r2, #0
 80055ac:	81a3      	strh	r3, [r4, #12]
 80055ae:	04db      	lsls	r3, r3, #19
 80055b0:	6062      	str	r2, [r4, #4]
 80055b2:	d500      	bpl.n	80055b6 <__sflush_r+0x7e>
 80055b4:	6520      	str	r0, [r4, #80]	; 0x50
 80055b6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80055b8:	f8c8 6000 	str.w	r6, [r8]
 80055bc:	b311      	cbz	r1, 8005604 <__sflush_r+0xcc>
 80055be:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80055c2:	4299      	cmp	r1, r3
 80055c4:	d002      	beq.n	80055cc <__sflush_r+0x94>
 80055c6:	4640      	mov	r0, r8
 80055c8:	f000 f95e 	bl	8005888 <_free_r>
 80055cc:	2000      	movs	r0, #0
 80055ce:	6320      	str	r0, [r4, #48]	; 0x30
 80055d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80055d4:	6926      	ldr	r6, [r4, #16]
 80055d6:	b1ae      	cbz	r6, 8005604 <__sflush_r+0xcc>
 80055d8:	6825      	ldr	r5, [r4, #0]
 80055da:	6026      	str	r6, [r4, #0]
 80055dc:	0792      	lsls	r2, r2, #30
 80055de:	bf0c      	ite	eq
 80055e0:	6963      	ldreq	r3, [r4, #20]
 80055e2:	2300      	movne	r3, #0
 80055e4:	1bad      	subs	r5, r5, r6
 80055e6:	60a3      	str	r3, [r4, #8]
 80055e8:	e00a      	b.n	8005600 <__sflush_r+0xc8>
 80055ea:	462b      	mov	r3, r5
 80055ec:	4632      	mov	r2, r6
 80055ee:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80055f0:	69e1      	ldr	r1, [r4, #28]
 80055f2:	4640      	mov	r0, r8
 80055f4:	47b8      	blx	r7
 80055f6:	2800      	cmp	r0, #0
 80055f8:	eba5 0500 	sub.w	r5, r5, r0
 80055fc:	4406      	add	r6, r0
 80055fe:	dd2b      	ble.n	8005658 <__sflush_r+0x120>
 8005600:	2d00      	cmp	r5, #0
 8005602:	dcf2      	bgt.n	80055ea <__sflush_r+0xb2>
 8005604:	2000      	movs	r0, #0
 8005606:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800560a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800560c:	2a00      	cmp	r2, #0
 800560e:	dca2      	bgt.n	8005556 <__sflush_r+0x1e>
 8005610:	e7f8      	b.n	8005604 <__sflush_r+0xcc>
 8005612:	f8d8 3000 	ldr.w	r3, [r8]
 8005616:	2b00      	cmp	r3, #0
 8005618:	d0b0      	beq.n	800557c <__sflush_r+0x44>
 800561a:	2b1d      	cmp	r3, #29
 800561c:	d001      	beq.n	8005622 <__sflush_r+0xea>
 800561e:	2b16      	cmp	r3, #22
 8005620:	d12c      	bne.n	800567c <__sflush_r+0x144>
 8005622:	f8c8 6000 	str.w	r6, [r8]
 8005626:	2000      	movs	r0, #0
 8005628:	e7ed      	b.n	8005606 <__sflush_r+0xce>
 800562a:	f8d8 1000 	ldr.w	r1, [r8]
 800562e:	291d      	cmp	r1, #29
 8005630:	d81a      	bhi.n	8005668 <__sflush_r+0x130>
 8005632:	4b15      	ldr	r3, [pc, #84]	; (8005688 <__sflush_r+0x150>)
 8005634:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005638:	40cb      	lsrs	r3, r1
 800563a:	43db      	mvns	r3, r3
 800563c:	f013 0301 	ands.w	r3, r3, #1
 8005640:	d114      	bne.n	800566c <__sflush_r+0x134>
 8005642:	6925      	ldr	r5, [r4, #16]
 8005644:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005648:	e9c4 5300 	strd	r5, r3, [r4]
 800564c:	04d5      	lsls	r5, r2, #19
 800564e:	81a2      	strh	r2, [r4, #12]
 8005650:	d5b1      	bpl.n	80055b6 <__sflush_r+0x7e>
 8005652:	2900      	cmp	r1, #0
 8005654:	d1af      	bne.n	80055b6 <__sflush_r+0x7e>
 8005656:	e7ad      	b.n	80055b4 <__sflush_r+0x7c>
 8005658:	89a3      	ldrh	r3, [r4, #12]
 800565a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800565e:	81a3      	strh	r3, [r4, #12]
 8005660:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005664:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005668:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800566c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005670:	81a2      	strh	r2, [r4, #12]
 8005672:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005676:	e7c6      	b.n	8005606 <__sflush_r+0xce>
 8005678:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800567a:	e782      	b.n	8005582 <__sflush_r+0x4a>
 800567c:	89a3      	ldrh	r3, [r4, #12]
 800567e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005682:	81a3      	strh	r3, [r4, #12]
 8005684:	e7bf      	b.n	8005606 <__sflush_r+0xce>
 8005686:	bf00      	nop
 8005688:	20400001 	.word	0x20400001

0800568c <_fflush_r>:
 800568c:	b538      	push	{r3, r4, r5, lr}
 800568e:	460d      	mov	r5, r1
 8005690:	4604      	mov	r4, r0
 8005692:	b108      	cbz	r0, 8005698 <_fflush_r+0xc>
 8005694:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005696:	b1a3      	cbz	r3, 80056c2 <_fflush_r+0x36>
 8005698:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800569c:	b1b8      	cbz	r0, 80056ce <_fflush_r+0x42>
 800569e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80056a0:	07db      	lsls	r3, r3, #31
 80056a2:	d401      	bmi.n	80056a8 <_fflush_r+0x1c>
 80056a4:	0581      	lsls	r1, r0, #22
 80056a6:	d51a      	bpl.n	80056de <_fflush_r+0x52>
 80056a8:	4620      	mov	r0, r4
 80056aa:	4629      	mov	r1, r5
 80056ac:	f7ff ff44 	bl	8005538 <__sflush_r>
 80056b0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80056b2:	07da      	lsls	r2, r3, #31
 80056b4:	4604      	mov	r4, r0
 80056b6:	d402      	bmi.n	80056be <_fflush_r+0x32>
 80056b8:	89ab      	ldrh	r3, [r5, #12]
 80056ba:	059b      	lsls	r3, r3, #22
 80056bc:	d50a      	bpl.n	80056d4 <_fflush_r+0x48>
 80056be:	4620      	mov	r0, r4
 80056c0:	bd38      	pop	{r3, r4, r5, pc}
 80056c2:	f000 f83f 	bl	8005744 <__sinit>
 80056c6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80056ca:	2800      	cmp	r0, #0
 80056cc:	d1e7      	bne.n	800569e <_fflush_r+0x12>
 80056ce:	4604      	mov	r4, r0
 80056d0:	4620      	mov	r0, r4
 80056d2:	bd38      	pop	{r3, r4, r5, pc}
 80056d4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80056d6:	f000 fb87 	bl	8005de8 <__retarget_lock_release_recursive>
 80056da:	4620      	mov	r0, r4
 80056dc:	bd38      	pop	{r3, r4, r5, pc}
 80056de:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80056e0:	f000 fb80 	bl	8005de4 <__retarget_lock_acquire_recursive>
 80056e4:	e7e0      	b.n	80056a8 <_fflush_r+0x1c>
 80056e6:	bf00      	nop

080056e8 <std>:
 80056e8:	b510      	push	{r4, lr}
 80056ea:	2300      	movs	r3, #0
 80056ec:	4604      	mov	r4, r0
 80056ee:	8181      	strh	r1, [r0, #12]
 80056f0:	81c2      	strh	r2, [r0, #14]
 80056f2:	e9c0 3300 	strd	r3, r3, [r0]
 80056f6:	6083      	str	r3, [r0, #8]
 80056f8:	6643      	str	r3, [r0, #100]	; 0x64
 80056fa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80056fe:	6183      	str	r3, [r0, #24]
 8005700:	4619      	mov	r1, r3
 8005702:	2208      	movs	r2, #8
 8005704:	305c      	adds	r0, #92	; 0x5c
 8005706:	f7fd f8ad 	bl	8002864 <memset>
 800570a:	4807      	ldr	r0, [pc, #28]	; (8005728 <std+0x40>)
 800570c:	4907      	ldr	r1, [pc, #28]	; (800572c <std+0x44>)
 800570e:	4a08      	ldr	r2, [pc, #32]	; (8005730 <std+0x48>)
 8005710:	4b08      	ldr	r3, [pc, #32]	; (8005734 <std+0x4c>)
 8005712:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005714:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005718:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800571c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005720:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005724:	f000 bb5a 	b.w	8005ddc <__retarget_lock_init_recursive>
 8005728:	0800697d 	.word	0x0800697d
 800572c:	080069a1 	.word	0x080069a1
 8005730:	080069dd 	.word	0x080069dd
 8005734:	080069fd 	.word	0x080069fd

08005738 <_cleanup_r>:
 8005738:	4901      	ldr	r1, [pc, #4]	; (8005740 <_cleanup_r+0x8>)
 800573a:	f000 bb17 	b.w	8005d6c <_fwalk_reent>
 800573e:	bf00      	nop
 8005740:	08006c6d 	.word	0x08006c6d

08005744 <__sinit>:
 8005744:	b510      	push	{r4, lr}
 8005746:	4604      	mov	r4, r0
 8005748:	4812      	ldr	r0, [pc, #72]	; (8005794 <__sinit+0x50>)
 800574a:	f000 fb4b 	bl	8005de4 <__retarget_lock_acquire_recursive>
 800574e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005750:	b9d2      	cbnz	r2, 8005788 <__sinit+0x44>
 8005752:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005756:	4810      	ldr	r0, [pc, #64]	; (8005798 <__sinit+0x54>)
 8005758:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800575c:	2103      	movs	r1, #3
 800575e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005762:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005764:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005768:	6860      	ldr	r0, [r4, #4]
 800576a:	2104      	movs	r1, #4
 800576c:	f7ff ffbc 	bl	80056e8 <std>
 8005770:	2201      	movs	r2, #1
 8005772:	2109      	movs	r1, #9
 8005774:	68a0      	ldr	r0, [r4, #8]
 8005776:	f7ff ffb7 	bl	80056e8 <std>
 800577a:	2202      	movs	r2, #2
 800577c:	2112      	movs	r1, #18
 800577e:	68e0      	ldr	r0, [r4, #12]
 8005780:	f7ff ffb2 	bl	80056e8 <std>
 8005784:	2301      	movs	r3, #1
 8005786:	63a3      	str	r3, [r4, #56]	; 0x38
 8005788:	4802      	ldr	r0, [pc, #8]	; (8005794 <__sinit+0x50>)
 800578a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800578e:	f000 bb2b 	b.w	8005de8 <__retarget_lock_release_recursive>
 8005792:	bf00      	nop
 8005794:	20000cd4 	.word	0x20000cd4
 8005798:	08005739 	.word	0x08005739

0800579c <__sfp_lock_acquire>:
 800579c:	4801      	ldr	r0, [pc, #4]	; (80057a4 <__sfp_lock_acquire+0x8>)
 800579e:	f000 bb21 	b.w	8005de4 <__retarget_lock_acquire_recursive>
 80057a2:	bf00      	nop
 80057a4:	20000ce8 	.word	0x20000ce8

080057a8 <__sfp_lock_release>:
 80057a8:	4801      	ldr	r0, [pc, #4]	; (80057b0 <__sfp_lock_release+0x8>)
 80057aa:	f000 bb1d 	b.w	8005de8 <__retarget_lock_release_recursive>
 80057ae:	bf00      	nop
 80057b0:	20000ce8 	.word	0x20000ce8

080057b4 <__libc_fini_array>:
 80057b4:	b538      	push	{r3, r4, r5, lr}
 80057b6:	4c0a      	ldr	r4, [pc, #40]	; (80057e0 <__libc_fini_array+0x2c>)
 80057b8:	4d0a      	ldr	r5, [pc, #40]	; (80057e4 <__libc_fini_array+0x30>)
 80057ba:	1b64      	subs	r4, r4, r5
 80057bc:	10a4      	asrs	r4, r4, #2
 80057be:	d00a      	beq.n	80057d6 <__libc_fini_array+0x22>
 80057c0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80057c4:	3b01      	subs	r3, #1
 80057c6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80057ca:	3c01      	subs	r4, #1
 80057cc:	f855 3904 	ldr.w	r3, [r5], #-4
 80057d0:	4798      	blx	r3
 80057d2:	2c00      	cmp	r4, #0
 80057d4:	d1f9      	bne.n	80057ca <__libc_fini_array+0x16>
 80057d6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80057da:	f001 bc3b 	b.w	8007054 <_fini>
 80057de:	bf00      	nop
 80057e0:	0800741c 	.word	0x0800741c
 80057e4:	08007418 	.word	0x08007418

080057e8 <_malloc_trim_r>:
 80057e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80057ea:	4f24      	ldr	r7, [pc, #144]	; (800587c <_malloc_trim_r+0x94>)
 80057ec:	460c      	mov	r4, r1
 80057ee:	4606      	mov	r6, r0
 80057f0:	f7fd f882 	bl	80028f8 <__malloc_lock>
 80057f4:	68bb      	ldr	r3, [r7, #8]
 80057f6:	685d      	ldr	r5, [r3, #4]
 80057f8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80057fc:	310f      	adds	r1, #15
 80057fe:	f025 0503 	bic.w	r5, r5, #3
 8005802:	4429      	add	r1, r5
 8005804:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005808:	f021 010f 	bic.w	r1, r1, #15
 800580c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005810:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005814:	db07      	blt.n	8005826 <_malloc_trim_r+0x3e>
 8005816:	2100      	movs	r1, #0
 8005818:	4630      	mov	r0, r6
 800581a:	f7fd f8e3 	bl	80029e4 <_sbrk_r>
 800581e:	68bb      	ldr	r3, [r7, #8]
 8005820:	442b      	add	r3, r5
 8005822:	4298      	cmp	r0, r3
 8005824:	d004      	beq.n	8005830 <_malloc_trim_r+0x48>
 8005826:	4630      	mov	r0, r6
 8005828:	f7fd f86c 	bl	8002904 <__malloc_unlock>
 800582c:	2000      	movs	r0, #0
 800582e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005830:	4261      	negs	r1, r4
 8005832:	4630      	mov	r0, r6
 8005834:	f7fd f8d6 	bl	80029e4 <_sbrk_r>
 8005838:	3001      	adds	r0, #1
 800583a:	d00d      	beq.n	8005858 <_malloc_trim_r+0x70>
 800583c:	4b10      	ldr	r3, [pc, #64]	; (8005880 <_malloc_trim_r+0x98>)
 800583e:	68ba      	ldr	r2, [r7, #8]
 8005840:	6819      	ldr	r1, [r3, #0]
 8005842:	1b2d      	subs	r5, r5, r4
 8005844:	f045 0501 	orr.w	r5, r5, #1
 8005848:	4630      	mov	r0, r6
 800584a:	1b09      	subs	r1, r1, r4
 800584c:	6055      	str	r5, [r2, #4]
 800584e:	6019      	str	r1, [r3, #0]
 8005850:	f7fd f858 	bl	8002904 <__malloc_unlock>
 8005854:	2001      	movs	r0, #1
 8005856:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005858:	2100      	movs	r1, #0
 800585a:	4630      	mov	r0, r6
 800585c:	f7fd f8c2 	bl	80029e4 <_sbrk_r>
 8005860:	68ba      	ldr	r2, [r7, #8]
 8005862:	1a83      	subs	r3, r0, r2
 8005864:	2b0f      	cmp	r3, #15
 8005866:	ddde      	ble.n	8005826 <_malloc_trim_r+0x3e>
 8005868:	4c06      	ldr	r4, [pc, #24]	; (8005884 <_malloc_trim_r+0x9c>)
 800586a:	4905      	ldr	r1, [pc, #20]	; (8005880 <_malloc_trim_r+0x98>)
 800586c:	6824      	ldr	r4, [r4, #0]
 800586e:	f043 0301 	orr.w	r3, r3, #1
 8005872:	1b00      	subs	r0, r0, r4
 8005874:	6053      	str	r3, [r2, #4]
 8005876:	6008      	str	r0, [r1, #0]
 8005878:	e7d5      	b.n	8005826 <_malloc_trim_r+0x3e>
 800587a:	bf00      	nop
 800587c:	200005d8 	.word	0x200005d8
 8005880:	20000bfc 	.word	0x20000bfc
 8005884:	200009e0 	.word	0x200009e0

08005888 <_free_r>:
 8005888:	2900      	cmp	r1, #0
 800588a:	d053      	beq.n	8005934 <_free_r+0xac>
 800588c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800588e:	460c      	mov	r4, r1
 8005890:	4606      	mov	r6, r0
 8005892:	f7fd f831 	bl	80028f8 <__malloc_lock>
 8005896:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800589a:	4f71      	ldr	r7, [pc, #452]	; (8005a60 <_free_r+0x1d8>)
 800589c:	f02c 0101 	bic.w	r1, ip, #1
 80058a0:	f1a4 0508 	sub.w	r5, r4, #8
 80058a4:	186b      	adds	r3, r5, r1
 80058a6:	68b8      	ldr	r0, [r7, #8]
 80058a8:	685a      	ldr	r2, [r3, #4]
 80058aa:	4298      	cmp	r0, r3
 80058ac:	f022 0203 	bic.w	r2, r2, #3
 80058b0:	d053      	beq.n	800595a <_free_r+0xd2>
 80058b2:	f01c 0f01 	tst.w	ip, #1
 80058b6:	605a      	str	r2, [r3, #4]
 80058b8:	eb03 0002 	add.w	r0, r3, r2
 80058bc:	d13b      	bne.n	8005936 <_free_r+0xae>
 80058be:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80058c2:	6840      	ldr	r0, [r0, #4]
 80058c4:	eba5 050c 	sub.w	r5, r5, ip
 80058c8:	f107 0e08 	add.w	lr, r7, #8
 80058cc:	68ac      	ldr	r4, [r5, #8]
 80058ce:	4574      	cmp	r4, lr
 80058d0:	4461      	add	r1, ip
 80058d2:	f000 0001 	and.w	r0, r0, #1
 80058d6:	d075      	beq.n	80059c4 <_free_r+0x13c>
 80058d8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80058dc:	f8c4 c00c 	str.w	ip, [r4, #12]
 80058e0:	f8cc 4008 	str.w	r4, [ip, #8]
 80058e4:	b360      	cbz	r0, 8005940 <_free_r+0xb8>
 80058e6:	f041 0301 	orr.w	r3, r1, #1
 80058ea:	606b      	str	r3, [r5, #4]
 80058ec:	5069      	str	r1, [r5, r1]
 80058ee:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80058f2:	d350      	bcc.n	8005996 <_free_r+0x10e>
 80058f4:	0a4b      	lsrs	r3, r1, #9
 80058f6:	2b04      	cmp	r3, #4
 80058f8:	d870      	bhi.n	80059dc <_free_r+0x154>
 80058fa:	098b      	lsrs	r3, r1, #6
 80058fc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005900:	00e4      	lsls	r4, r4, #3
 8005902:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005906:	1938      	adds	r0, r7, r4
 8005908:	593b      	ldr	r3, [r7, r4]
 800590a:	3808      	subs	r0, #8
 800590c:	4298      	cmp	r0, r3
 800590e:	d078      	beq.n	8005a02 <_free_r+0x17a>
 8005910:	685a      	ldr	r2, [r3, #4]
 8005912:	f022 0203 	bic.w	r2, r2, #3
 8005916:	428a      	cmp	r2, r1
 8005918:	d971      	bls.n	80059fe <_free_r+0x176>
 800591a:	689b      	ldr	r3, [r3, #8]
 800591c:	4298      	cmp	r0, r3
 800591e:	d1f7      	bne.n	8005910 <_free_r+0x88>
 8005920:	68c3      	ldr	r3, [r0, #12]
 8005922:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005926:	609d      	str	r5, [r3, #8]
 8005928:	60c5      	str	r5, [r0, #12]
 800592a:	4630      	mov	r0, r6
 800592c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005930:	f7fc bfe8 	b.w	8002904 <__malloc_unlock>
 8005934:	4770      	bx	lr
 8005936:	6840      	ldr	r0, [r0, #4]
 8005938:	f000 0001 	and.w	r0, r0, #1
 800593c:	2800      	cmp	r0, #0
 800593e:	d1d2      	bne.n	80058e6 <_free_r+0x5e>
 8005940:	6898      	ldr	r0, [r3, #8]
 8005942:	4c48      	ldr	r4, [pc, #288]	; (8005a64 <_free_r+0x1dc>)
 8005944:	4411      	add	r1, r2
 8005946:	42a0      	cmp	r0, r4
 8005948:	f041 0201 	orr.w	r2, r1, #1
 800594c:	d062      	beq.n	8005a14 <_free_r+0x18c>
 800594e:	68db      	ldr	r3, [r3, #12]
 8005950:	60c3      	str	r3, [r0, #12]
 8005952:	6098      	str	r0, [r3, #8]
 8005954:	606a      	str	r2, [r5, #4]
 8005956:	5069      	str	r1, [r5, r1]
 8005958:	e7c9      	b.n	80058ee <_free_r+0x66>
 800595a:	f01c 0f01 	tst.w	ip, #1
 800595e:	440a      	add	r2, r1
 8005960:	d107      	bne.n	8005972 <_free_r+0xea>
 8005962:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005966:	1aed      	subs	r5, r5, r3
 8005968:	441a      	add	r2, r3
 800596a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800596e:	60cb      	str	r3, [r1, #12]
 8005970:	6099      	str	r1, [r3, #8]
 8005972:	4b3d      	ldr	r3, [pc, #244]	; (8005a68 <_free_r+0x1e0>)
 8005974:	681b      	ldr	r3, [r3, #0]
 8005976:	f042 0101 	orr.w	r1, r2, #1
 800597a:	4293      	cmp	r3, r2
 800597c:	6069      	str	r1, [r5, #4]
 800597e:	60bd      	str	r5, [r7, #8]
 8005980:	d804      	bhi.n	800598c <_free_r+0x104>
 8005982:	4b3a      	ldr	r3, [pc, #232]	; (8005a6c <_free_r+0x1e4>)
 8005984:	4630      	mov	r0, r6
 8005986:	6819      	ldr	r1, [r3, #0]
 8005988:	f7ff ff2e 	bl	80057e8 <_malloc_trim_r>
 800598c:	4630      	mov	r0, r6
 800598e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005992:	f7fc bfb7 	b.w	8002904 <__malloc_unlock>
 8005996:	08c9      	lsrs	r1, r1, #3
 8005998:	6878      	ldr	r0, [r7, #4]
 800599a:	1c4a      	adds	r2, r1, #1
 800599c:	2301      	movs	r3, #1
 800599e:	1089      	asrs	r1, r1, #2
 80059a0:	408b      	lsls	r3, r1
 80059a2:	4303      	orrs	r3, r0
 80059a4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80059a8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80059ac:	607b      	str	r3, [r7, #4]
 80059ae:	3908      	subs	r1, #8
 80059b0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80059b4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80059b8:	60c5      	str	r5, [r0, #12]
 80059ba:	4630      	mov	r0, r6
 80059bc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80059c0:	f7fc bfa0 	b.w	8002904 <__malloc_unlock>
 80059c4:	2800      	cmp	r0, #0
 80059c6:	d145      	bne.n	8005a54 <_free_r+0x1cc>
 80059c8:	440a      	add	r2, r1
 80059ca:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80059ce:	f042 0001 	orr.w	r0, r2, #1
 80059d2:	60cb      	str	r3, [r1, #12]
 80059d4:	6099      	str	r1, [r3, #8]
 80059d6:	6068      	str	r0, [r5, #4]
 80059d8:	50aa      	str	r2, [r5, r2]
 80059da:	e7d7      	b.n	800598c <_free_r+0x104>
 80059dc:	2b14      	cmp	r3, #20
 80059de:	d908      	bls.n	80059f2 <_free_r+0x16a>
 80059e0:	2b54      	cmp	r3, #84	; 0x54
 80059e2:	d81e      	bhi.n	8005a22 <_free_r+0x19a>
 80059e4:	0b0b      	lsrs	r3, r1, #12
 80059e6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80059ea:	00e4      	lsls	r4, r4, #3
 80059ec:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80059f0:	e789      	b.n	8005906 <_free_r+0x7e>
 80059f2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80059f6:	00e4      	lsls	r4, r4, #3
 80059f8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80059fc:	e783      	b.n	8005906 <_free_r+0x7e>
 80059fe:	4618      	mov	r0, r3
 8005a00:	e78e      	b.n	8005920 <_free_r+0x98>
 8005a02:	1093      	asrs	r3, r2, #2
 8005a04:	6879      	ldr	r1, [r7, #4]
 8005a06:	2201      	movs	r2, #1
 8005a08:	fa02 f303 	lsl.w	r3, r2, r3
 8005a0c:	430b      	orrs	r3, r1
 8005a0e:	607b      	str	r3, [r7, #4]
 8005a10:	4603      	mov	r3, r0
 8005a12:	e786      	b.n	8005922 <_free_r+0x9a>
 8005a14:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005a18:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005a1c:	606a      	str	r2, [r5, #4]
 8005a1e:	5069      	str	r1, [r5, r1]
 8005a20:	e7b4      	b.n	800598c <_free_r+0x104>
 8005a22:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005a26:	d806      	bhi.n	8005a36 <_free_r+0x1ae>
 8005a28:	0bcb      	lsrs	r3, r1, #15
 8005a2a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005a2e:	00e4      	lsls	r4, r4, #3
 8005a30:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005a34:	e767      	b.n	8005906 <_free_r+0x7e>
 8005a36:	f240 5254 	movw	r2, #1364	; 0x554
 8005a3a:	4293      	cmp	r3, r2
 8005a3c:	d806      	bhi.n	8005a4c <_free_r+0x1c4>
 8005a3e:	0c8b      	lsrs	r3, r1, #18
 8005a40:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005a44:	00e4      	lsls	r4, r4, #3
 8005a46:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005a4a:	e75c      	b.n	8005906 <_free_r+0x7e>
 8005a4c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005a50:	227e      	movs	r2, #126	; 0x7e
 8005a52:	e758      	b.n	8005906 <_free_r+0x7e>
 8005a54:	f041 0201 	orr.w	r2, r1, #1
 8005a58:	606a      	str	r2, [r5, #4]
 8005a5a:	6019      	str	r1, [r3, #0]
 8005a5c:	e796      	b.n	800598c <_free_r+0x104>
 8005a5e:	bf00      	nop
 8005a60:	200005d8 	.word	0x200005d8
 8005a64:	200005e0 	.word	0x200005e0
 8005a68:	200009e4 	.word	0x200009e4
 8005a6c:	20000c2c 	.word	0x20000c2c

08005a70 <__sfvwrite_r>:
 8005a70:	6893      	ldr	r3, [r2, #8]
 8005a72:	2b00      	cmp	r3, #0
 8005a74:	f000 80e4 	beq.w	8005c40 <__sfvwrite_r+0x1d0>
 8005a78:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005a7c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005a80:	b29b      	uxth	r3, r3
 8005a82:	460c      	mov	r4, r1
 8005a84:	0719      	lsls	r1, r3, #28
 8005a86:	b083      	sub	sp, #12
 8005a88:	4682      	mov	sl, r0
 8005a8a:	4690      	mov	r8, r2
 8005a8c:	d535      	bpl.n	8005afa <__sfvwrite_r+0x8a>
 8005a8e:	6922      	ldr	r2, [r4, #16]
 8005a90:	b39a      	cbz	r2, 8005afa <__sfvwrite_r+0x8a>
 8005a92:	f013 0202 	ands.w	r2, r3, #2
 8005a96:	f8d8 6000 	ldr.w	r6, [r8]
 8005a9a:	d03d      	beq.n	8005b18 <__sfvwrite_r+0xa8>
 8005a9c:	2700      	movs	r7, #0
 8005a9e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005aa2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005aa6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005d68 <__sfvwrite_r+0x2f8>
 8005aaa:	463d      	mov	r5, r7
 8005aac:	454d      	cmp	r5, r9
 8005aae:	462b      	mov	r3, r5
 8005ab0:	463a      	mov	r2, r7
 8005ab2:	bf28      	it	cs
 8005ab4:	464b      	movcs	r3, r9
 8005ab6:	4661      	mov	r1, ip
 8005ab8:	4650      	mov	r0, sl
 8005aba:	b1d5      	cbz	r5, 8005af2 <__sfvwrite_r+0x82>
 8005abc:	47d8      	blx	fp
 8005abe:	2800      	cmp	r0, #0
 8005ac0:	f340 80c6 	ble.w	8005c50 <__sfvwrite_r+0x1e0>
 8005ac4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005ac8:	1a1b      	subs	r3, r3, r0
 8005aca:	4407      	add	r7, r0
 8005acc:	1a2d      	subs	r5, r5, r0
 8005ace:	f8c8 3008 	str.w	r3, [r8, #8]
 8005ad2:	2b00      	cmp	r3, #0
 8005ad4:	f000 80b0 	beq.w	8005c38 <__sfvwrite_r+0x1c8>
 8005ad8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005adc:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005ae0:	454d      	cmp	r5, r9
 8005ae2:	462b      	mov	r3, r5
 8005ae4:	463a      	mov	r2, r7
 8005ae6:	bf28      	it	cs
 8005ae8:	464b      	movcs	r3, r9
 8005aea:	4661      	mov	r1, ip
 8005aec:	4650      	mov	r0, sl
 8005aee:	2d00      	cmp	r5, #0
 8005af0:	d1e4      	bne.n	8005abc <__sfvwrite_r+0x4c>
 8005af2:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005af6:	3608      	adds	r6, #8
 8005af8:	e7d8      	b.n	8005aac <__sfvwrite_r+0x3c>
 8005afa:	4621      	mov	r1, r4
 8005afc:	4650      	mov	r0, sl
 8005afe:	f7fe fd03 	bl	8004508 <__swsetup_r>
 8005b02:	2800      	cmp	r0, #0
 8005b04:	f040 812a 	bne.w	8005d5c <__sfvwrite_r+0x2ec>
 8005b08:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b0c:	f8d8 6000 	ldr.w	r6, [r8]
 8005b10:	b29b      	uxth	r3, r3
 8005b12:	f013 0202 	ands.w	r2, r3, #2
 8005b16:	d1c1      	bne.n	8005a9c <__sfvwrite_r+0x2c>
 8005b18:	f013 0901 	ands.w	r9, r3, #1
 8005b1c:	d15d      	bne.n	8005bda <__sfvwrite_r+0x16a>
 8005b1e:	68a7      	ldr	r7, [r4, #8]
 8005b20:	6820      	ldr	r0, [r4, #0]
 8005b22:	464d      	mov	r5, r9
 8005b24:	2d00      	cmp	r5, #0
 8005b26:	d054      	beq.n	8005bd2 <__sfvwrite_r+0x162>
 8005b28:	059a      	lsls	r2, r3, #22
 8005b2a:	f140 809b 	bpl.w	8005c64 <__sfvwrite_r+0x1f4>
 8005b2e:	42af      	cmp	r7, r5
 8005b30:	46bb      	mov	fp, r7
 8005b32:	f200 80d8 	bhi.w	8005ce6 <__sfvwrite_r+0x276>
 8005b36:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005b3a:	d02f      	beq.n	8005b9c <__sfvwrite_r+0x12c>
 8005b3c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005b40:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005b44:	eba0 0b01 	sub.w	fp, r0, r1
 8005b48:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005b4c:	1c68      	adds	r0, r5, #1
 8005b4e:	107f      	asrs	r7, r7, #1
 8005b50:	4458      	add	r0, fp
 8005b52:	42b8      	cmp	r0, r7
 8005b54:	463a      	mov	r2, r7
 8005b56:	bf84      	itt	hi
 8005b58:	4607      	movhi	r7, r0
 8005b5a:	463a      	movhi	r2, r7
 8005b5c:	055b      	lsls	r3, r3, #21
 8005b5e:	f140 80d3 	bpl.w	8005d08 <__sfvwrite_r+0x298>
 8005b62:	4611      	mov	r1, r2
 8005b64:	4650      	mov	r0, sl
 8005b66:	f7fc fbd9 	bl	800231c <_malloc_r>
 8005b6a:	2800      	cmp	r0, #0
 8005b6c:	f000 80f0 	beq.w	8005d50 <__sfvwrite_r+0x2e0>
 8005b70:	465a      	mov	r2, fp
 8005b72:	6921      	ldr	r1, [r4, #16]
 8005b74:	9001      	str	r0, [sp, #4]
 8005b76:	f7fa fd11 	bl	800059c <memcpy>
 8005b7a:	89a2      	ldrh	r2, [r4, #12]
 8005b7c:	9b01      	ldr	r3, [sp, #4]
 8005b7e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005b82:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005b86:	81a2      	strh	r2, [r4, #12]
 8005b88:	eba7 020b 	sub.w	r2, r7, fp
 8005b8c:	eb03 000b 	add.w	r0, r3, fp
 8005b90:	6167      	str	r7, [r4, #20]
 8005b92:	6123      	str	r3, [r4, #16]
 8005b94:	6020      	str	r0, [r4, #0]
 8005b96:	60a2      	str	r2, [r4, #8]
 8005b98:	462f      	mov	r7, r5
 8005b9a:	46ab      	mov	fp, r5
 8005b9c:	465a      	mov	r2, fp
 8005b9e:	4649      	mov	r1, r9
 8005ba0:	f000 f99c 	bl	8005edc <memmove>
 8005ba4:	68a2      	ldr	r2, [r4, #8]
 8005ba6:	6823      	ldr	r3, [r4, #0]
 8005ba8:	1bd2      	subs	r2, r2, r7
 8005baa:	445b      	add	r3, fp
 8005bac:	462f      	mov	r7, r5
 8005bae:	60a2      	str	r2, [r4, #8]
 8005bb0:	6023      	str	r3, [r4, #0]
 8005bb2:	2500      	movs	r5, #0
 8005bb4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005bb8:	1bdb      	subs	r3, r3, r7
 8005bba:	44b9      	add	r9, r7
 8005bbc:	f8c8 3008 	str.w	r3, [r8, #8]
 8005bc0:	2b00      	cmp	r3, #0
 8005bc2:	d039      	beq.n	8005c38 <__sfvwrite_r+0x1c8>
 8005bc4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005bc8:	68a7      	ldr	r7, [r4, #8]
 8005bca:	6820      	ldr	r0, [r4, #0]
 8005bcc:	b29b      	uxth	r3, r3
 8005bce:	2d00      	cmp	r5, #0
 8005bd0:	d1aa      	bne.n	8005b28 <__sfvwrite_r+0xb8>
 8005bd2:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005bd6:	3608      	adds	r6, #8
 8005bd8:	e7a4      	b.n	8005b24 <__sfvwrite_r+0xb4>
 8005bda:	4633      	mov	r3, r6
 8005bdc:	4691      	mov	r9, r2
 8005bde:	4610      	mov	r0, r2
 8005be0:	4617      	mov	r7, r2
 8005be2:	464e      	mov	r6, r9
 8005be4:	469b      	mov	fp, r3
 8005be6:	2f00      	cmp	r7, #0
 8005be8:	d06b      	beq.n	8005cc2 <__sfvwrite_r+0x252>
 8005bea:	2800      	cmp	r0, #0
 8005bec:	d071      	beq.n	8005cd2 <__sfvwrite_r+0x262>
 8005bee:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005bf2:	6820      	ldr	r0, [r4, #0]
 8005bf4:	45b9      	cmp	r9, r7
 8005bf6:	464b      	mov	r3, r9
 8005bf8:	bf28      	it	cs
 8005bfa:	463b      	movcs	r3, r7
 8005bfc:	4288      	cmp	r0, r1
 8005bfe:	d903      	bls.n	8005c08 <__sfvwrite_r+0x198>
 8005c00:	68a5      	ldr	r5, [r4, #8]
 8005c02:	4415      	add	r5, r2
 8005c04:	42ab      	cmp	r3, r5
 8005c06:	dc71      	bgt.n	8005cec <__sfvwrite_r+0x27c>
 8005c08:	429a      	cmp	r2, r3
 8005c0a:	f300 8093 	bgt.w	8005d34 <__sfvwrite_r+0x2c4>
 8005c0e:	4613      	mov	r3, r2
 8005c10:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005c12:	69e1      	ldr	r1, [r4, #28]
 8005c14:	4632      	mov	r2, r6
 8005c16:	4650      	mov	r0, sl
 8005c18:	47a8      	blx	r5
 8005c1a:	1e05      	subs	r5, r0, #0
 8005c1c:	dd18      	ble.n	8005c50 <__sfvwrite_r+0x1e0>
 8005c1e:	ebb9 0905 	subs.w	r9, r9, r5
 8005c22:	d00f      	beq.n	8005c44 <__sfvwrite_r+0x1d4>
 8005c24:	2001      	movs	r0, #1
 8005c26:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005c2a:	1b5b      	subs	r3, r3, r5
 8005c2c:	442e      	add	r6, r5
 8005c2e:	1b7f      	subs	r7, r7, r5
 8005c30:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c34:	2b00      	cmp	r3, #0
 8005c36:	d1d6      	bne.n	8005be6 <__sfvwrite_r+0x176>
 8005c38:	2000      	movs	r0, #0
 8005c3a:	b003      	add	sp, #12
 8005c3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c40:	2000      	movs	r0, #0
 8005c42:	4770      	bx	lr
 8005c44:	4621      	mov	r1, r4
 8005c46:	4650      	mov	r0, sl
 8005c48:	f7ff fd20 	bl	800568c <_fflush_r>
 8005c4c:	2800      	cmp	r0, #0
 8005c4e:	d0ea      	beq.n	8005c26 <__sfvwrite_r+0x1b6>
 8005c50:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c54:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005c58:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005c5c:	81a3      	strh	r3, [r4, #12]
 8005c5e:	b003      	add	sp, #12
 8005c60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c64:	6923      	ldr	r3, [r4, #16]
 8005c66:	4283      	cmp	r3, r0
 8005c68:	d315      	bcc.n	8005c96 <__sfvwrite_r+0x226>
 8005c6a:	6961      	ldr	r1, [r4, #20]
 8005c6c:	42a9      	cmp	r1, r5
 8005c6e:	d812      	bhi.n	8005c96 <__sfvwrite_r+0x226>
 8005c70:	4b3c      	ldr	r3, [pc, #240]	; (8005d64 <__sfvwrite_r+0x2f4>)
 8005c72:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005c74:	429d      	cmp	r5, r3
 8005c76:	bf94      	ite	ls
 8005c78:	462b      	movls	r3, r5
 8005c7a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005c7e:	464a      	mov	r2, r9
 8005c80:	fb93 f3f1 	sdiv	r3, r3, r1
 8005c84:	4650      	mov	r0, sl
 8005c86:	fb01 f303 	mul.w	r3, r1, r3
 8005c8a:	69e1      	ldr	r1, [r4, #28]
 8005c8c:	47b8      	blx	r7
 8005c8e:	1e07      	subs	r7, r0, #0
 8005c90:	ddde      	ble.n	8005c50 <__sfvwrite_r+0x1e0>
 8005c92:	1bed      	subs	r5, r5, r7
 8005c94:	e78e      	b.n	8005bb4 <__sfvwrite_r+0x144>
 8005c96:	42af      	cmp	r7, r5
 8005c98:	bf28      	it	cs
 8005c9a:	462f      	movcs	r7, r5
 8005c9c:	463a      	mov	r2, r7
 8005c9e:	4649      	mov	r1, r9
 8005ca0:	f000 f91c 	bl	8005edc <memmove>
 8005ca4:	68a3      	ldr	r3, [r4, #8]
 8005ca6:	6822      	ldr	r2, [r4, #0]
 8005ca8:	1bdb      	subs	r3, r3, r7
 8005caa:	443a      	add	r2, r7
 8005cac:	60a3      	str	r3, [r4, #8]
 8005cae:	6022      	str	r2, [r4, #0]
 8005cb0:	2b00      	cmp	r3, #0
 8005cb2:	d1ee      	bne.n	8005c92 <__sfvwrite_r+0x222>
 8005cb4:	4621      	mov	r1, r4
 8005cb6:	4650      	mov	r0, sl
 8005cb8:	f7ff fce8 	bl	800568c <_fflush_r>
 8005cbc:	2800      	cmp	r0, #0
 8005cbe:	d0e8      	beq.n	8005c92 <__sfvwrite_r+0x222>
 8005cc0:	e7c6      	b.n	8005c50 <__sfvwrite_r+0x1e0>
 8005cc2:	f10b 0308 	add.w	r3, fp, #8
 8005cc6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005cca:	469b      	mov	fp, r3
 8005ccc:	3308      	adds	r3, #8
 8005cce:	2f00      	cmp	r7, #0
 8005cd0:	d0f9      	beq.n	8005cc6 <__sfvwrite_r+0x256>
 8005cd2:	463a      	mov	r2, r7
 8005cd4:	210a      	movs	r1, #10
 8005cd6:	4630      	mov	r0, r6
 8005cd8:	f7fa fd82 	bl	80007e0 <memchr>
 8005cdc:	b338      	cbz	r0, 8005d2e <__sfvwrite_r+0x2be>
 8005cde:	3001      	adds	r0, #1
 8005ce0:	eba0 0906 	sub.w	r9, r0, r6
 8005ce4:	e783      	b.n	8005bee <__sfvwrite_r+0x17e>
 8005ce6:	462f      	mov	r7, r5
 8005ce8:	46ab      	mov	fp, r5
 8005cea:	e757      	b.n	8005b9c <__sfvwrite_r+0x12c>
 8005cec:	4631      	mov	r1, r6
 8005cee:	462a      	mov	r2, r5
 8005cf0:	f000 f8f4 	bl	8005edc <memmove>
 8005cf4:	6823      	ldr	r3, [r4, #0]
 8005cf6:	442b      	add	r3, r5
 8005cf8:	6023      	str	r3, [r4, #0]
 8005cfa:	4621      	mov	r1, r4
 8005cfc:	4650      	mov	r0, sl
 8005cfe:	f7ff fcc5 	bl	800568c <_fflush_r>
 8005d02:	2800      	cmp	r0, #0
 8005d04:	d08b      	beq.n	8005c1e <__sfvwrite_r+0x1ae>
 8005d06:	e7a3      	b.n	8005c50 <__sfvwrite_r+0x1e0>
 8005d08:	4650      	mov	r0, sl
 8005d0a:	f000 fc55 	bl	80065b8 <_realloc_r>
 8005d0e:	4603      	mov	r3, r0
 8005d10:	2800      	cmp	r0, #0
 8005d12:	f47f af39 	bne.w	8005b88 <__sfvwrite_r+0x118>
 8005d16:	6921      	ldr	r1, [r4, #16]
 8005d18:	4650      	mov	r0, sl
 8005d1a:	f7ff fdb5 	bl	8005888 <_free_r>
 8005d1e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d22:	220c      	movs	r2, #12
 8005d24:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005d28:	f8ca 2000 	str.w	r2, [sl]
 8005d2c:	e792      	b.n	8005c54 <__sfvwrite_r+0x1e4>
 8005d2e:	f107 0901 	add.w	r9, r7, #1
 8005d32:	e75c      	b.n	8005bee <__sfvwrite_r+0x17e>
 8005d34:	461a      	mov	r2, r3
 8005d36:	4631      	mov	r1, r6
 8005d38:	9301      	str	r3, [sp, #4]
 8005d3a:	f000 f8cf 	bl	8005edc <memmove>
 8005d3e:	9b01      	ldr	r3, [sp, #4]
 8005d40:	68a1      	ldr	r1, [r4, #8]
 8005d42:	6822      	ldr	r2, [r4, #0]
 8005d44:	1ac9      	subs	r1, r1, r3
 8005d46:	441a      	add	r2, r3
 8005d48:	60a1      	str	r1, [r4, #8]
 8005d4a:	6022      	str	r2, [r4, #0]
 8005d4c:	461d      	mov	r5, r3
 8005d4e:	e766      	b.n	8005c1e <__sfvwrite_r+0x1ae>
 8005d50:	230c      	movs	r3, #12
 8005d52:	f8ca 3000 	str.w	r3, [sl]
 8005d56:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d5a:	e77b      	b.n	8005c54 <__sfvwrite_r+0x1e4>
 8005d5c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005d60:	e76b      	b.n	8005c3a <__sfvwrite_r+0x1ca>
 8005d62:	bf00      	nop
 8005d64:	7ffffffe 	.word	0x7ffffffe
 8005d68:	7ffffc00 	.word	0x7ffffc00

08005d6c <_fwalk_reent>:
 8005d6c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005d70:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005d74:	d01f      	beq.n	8005db6 <_fwalk_reent+0x4a>
 8005d76:	4688      	mov	r8, r1
 8005d78:	4606      	mov	r6, r0
 8005d7a:	f04f 0900 	mov.w	r9, #0
 8005d7e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005d82:	3d01      	subs	r5, #1
 8005d84:	d411      	bmi.n	8005daa <_fwalk_reent+0x3e>
 8005d86:	89a3      	ldrh	r3, [r4, #12]
 8005d88:	2b01      	cmp	r3, #1
 8005d8a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005d8e:	4621      	mov	r1, r4
 8005d90:	4630      	mov	r0, r6
 8005d92:	d906      	bls.n	8005da2 <_fwalk_reent+0x36>
 8005d94:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005d98:	3301      	adds	r3, #1
 8005d9a:	d002      	beq.n	8005da2 <_fwalk_reent+0x36>
 8005d9c:	47c0      	blx	r8
 8005d9e:	ea49 0900 	orr.w	r9, r9, r0
 8005da2:	1c6b      	adds	r3, r5, #1
 8005da4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005da8:	d1ed      	bne.n	8005d86 <_fwalk_reent+0x1a>
 8005daa:	683f      	ldr	r7, [r7, #0]
 8005dac:	2f00      	cmp	r7, #0
 8005dae:	d1e6      	bne.n	8005d7e <_fwalk_reent+0x12>
 8005db0:	4648      	mov	r0, r9
 8005db2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005db6:	46b9      	mov	r9, r7
 8005db8:	4648      	mov	r0, r9
 8005dba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005dbe:	bf00      	nop

08005dc0 <_localeconv_r>:
 8005dc0:	4a04      	ldr	r2, [pc, #16]	; (8005dd4 <_localeconv_r+0x14>)
 8005dc2:	4b05      	ldr	r3, [pc, #20]	; (8005dd8 <_localeconv_r+0x18>)
 8005dc4:	6812      	ldr	r2, [r2, #0]
 8005dc6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005dc8:	2800      	cmp	r0, #0
 8005dca:	bf08      	it	eq
 8005dcc:	4618      	moveq	r0, r3
 8005dce:	30f0      	adds	r0, #240	; 0xf0
 8005dd0:	4770      	bx	lr
 8005dd2:	bf00      	nop
 8005dd4:	200001a8 	.word	0x200001a8
 8005dd8:	200009ec 	.word	0x200009ec

08005ddc <__retarget_lock_init_recursive>:
 8005ddc:	4770      	bx	lr
 8005dde:	bf00      	nop

08005de0 <__retarget_lock_close_recursive>:
 8005de0:	4770      	bx	lr
 8005de2:	bf00      	nop

08005de4 <__retarget_lock_acquire_recursive>:
 8005de4:	4770      	bx	lr
 8005de6:	bf00      	nop

08005de8 <__retarget_lock_release_recursive>:
 8005de8:	4770      	bx	lr
 8005dea:	bf00      	nop

08005dec <__swhatbuf_r>:
 8005dec:	b570      	push	{r4, r5, r6, lr}
 8005dee:	460c      	mov	r4, r1
 8005df0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005df4:	2900      	cmp	r1, #0
 8005df6:	b096      	sub	sp, #88	; 0x58
 8005df8:	4615      	mov	r5, r2
 8005dfa:	461e      	mov	r6, r3
 8005dfc:	da0f      	bge.n	8005e1e <__swhatbuf_r+0x32>
 8005dfe:	89a2      	ldrh	r2, [r4, #12]
 8005e00:	2300      	movs	r3, #0
 8005e02:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005e06:	6033      	str	r3, [r6, #0]
 8005e08:	d104      	bne.n	8005e14 <__swhatbuf_r+0x28>
 8005e0a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005e0e:	602b      	str	r3, [r5, #0]
 8005e10:	b016      	add	sp, #88	; 0x58
 8005e12:	bd70      	pop	{r4, r5, r6, pc}
 8005e14:	2240      	movs	r2, #64	; 0x40
 8005e16:	4618      	mov	r0, r3
 8005e18:	602a      	str	r2, [r5, #0]
 8005e1a:	b016      	add	sp, #88	; 0x58
 8005e1c:	bd70      	pop	{r4, r5, r6, pc}
 8005e1e:	466a      	mov	r2, sp
 8005e20:	f001 f80e 	bl	8006e40 <_fstat_r>
 8005e24:	2800      	cmp	r0, #0
 8005e26:	dbea      	blt.n	8005dfe <__swhatbuf_r+0x12>
 8005e28:	9b01      	ldr	r3, [sp, #4]
 8005e2a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005e2e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005e32:	fab3 f383 	clz	r3, r3
 8005e36:	095b      	lsrs	r3, r3, #5
 8005e38:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005e3c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005e40:	6033      	str	r3, [r6, #0]
 8005e42:	602a      	str	r2, [r5, #0]
 8005e44:	b016      	add	sp, #88	; 0x58
 8005e46:	bd70      	pop	{r4, r5, r6, pc}

08005e48 <__smakebuf_r>:
 8005e48:	898a      	ldrh	r2, [r1, #12]
 8005e4a:	0792      	lsls	r2, r2, #30
 8005e4c:	460b      	mov	r3, r1
 8005e4e:	d506      	bpl.n	8005e5e <__smakebuf_r+0x16>
 8005e50:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005e54:	2101      	movs	r1, #1
 8005e56:	601a      	str	r2, [r3, #0]
 8005e58:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005e5c:	4770      	bx	lr
 8005e5e:	b570      	push	{r4, r5, r6, lr}
 8005e60:	b082      	sub	sp, #8
 8005e62:	ab01      	add	r3, sp, #4
 8005e64:	466a      	mov	r2, sp
 8005e66:	460c      	mov	r4, r1
 8005e68:	4605      	mov	r5, r0
 8005e6a:	f7ff ffbf 	bl	8005dec <__swhatbuf_r>
 8005e6e:	9900      	ldr	r1, [sp, #0]
 8005e70:	4606      	mov	r6, r0
 8005e72:	4628      	mov	r0, r5
 8005e74:	f7fc fa52 	bl	800231c <_malloc_r>
 8005e78:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005e7c:	b1d8      	cbz	r0, 8005eb6 <__smakebuf_r+0x6e>
 8005e7e:	4916      	ldr	r1, [pc, #88]	; (8005ed8 <__smakebuf_r+0x90>)
 8005e80:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005e82:	9a01      	ldr	r2, [sp, #4]
 8005e84:	9900      	ldr	r1, [sp, #0]
 8005e86:	6020      	str	r0, [r4, #0]
 8005e88:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005e8c:	81a3      	strh	r3, [r4, #12]
 8005e8e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005e92:	b91a      	cbnz	r2, 8005e9c <__smakebuf_r+0x54>
 8005e94:	4333      	orrs	r3, r6
 8005e96:	81a3      	strh	r3, [r4, #12]
 8005e98:	b002      	add	sp, #8
 8005e9a:	bd70      	pop	{r4, r5, r6, pc}
 8005e9c:	4628      	mov	r0, r5
 8005e9e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005ea2:	f000 ffe1 	bl	8006e68 <_isatty_r>
 8005ea6:	b1a0      	cbz	r0, 8005ed2 <__smakebuf_r+0x8a>
 8005ea8:	89a3      	ldrh	r3, [r4, #12]
 8005eaa:	f023 0303 	bic.w	r3, r3, #3
 8005eae:	f043 0301 	orr.w	r3, r3, #1
 8005eb2:	b21b      	sxth	r3, r3
 8005eb4:	e7ee      	b.n	8005e94 <__smakebuf_r+0x4c>
 8005eb6:	059a      	lsls	r2, r3, #22
 8005eb8:	d4ee      	bmi.n	8005e98 <__smakebuf_r+0x50>
 8005eba:	f023 0303 	bic.w	r3, r3, #3
 8005ebe:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005ec2:	f043 0302 	orr.w	r3, r3, #2
 8005ec6:	2101      	movs	r1, #1
 8005ec8:	81a3      	strh	r3, [r4, #12]
 8005eca:	6022      	str	r2, [r4, #0]
 8005ecc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005ed0:	e7e2      	b.n	8005e98 <__smakebuf_r+0x50>
 8005ed2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ed6:	e7dd      	b.n	8005e94 <__smakebuf_r+0x4c>
 8005ed8:	08005739 	.word	0x08005739

08005edc <memmove>:
 8005edc:	4288      	cmp	r0, r1
 8005ede:	b4f0      	push	{r4, r5, r6, r7}
 8005ee0:	d90d      	bls.n	8005efe <memmove+0x22>
 8005ee2:	188b      	adds	r3, r1, r2
 8005ee4:	4283      	cmp	r3, r0
 8005ee6:	d90a      	bls.n	8005efe <memmove+0x22>
 8005ee8:	1884      	adds	r4, r0, r2
 8005eea:	b132      	cbz	r2, 8005efa <memmove+0x1e>
 8005eec:	4622      	mov	r2, r4
 8005eee:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005ef2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005ef6:	4299      	cmp	r1, r3
 8005ef8:	d1f9      	bne.n	8005eee <memmove+0x12>
 8005efa:	bcf0      	pop	{r4, r5, r6, r7}
 8005efc:	4770      	bx	lr
 8005efe:	2a0f      	cmp	r2, #15
 8005f00:	d949      	bls.n	8005f96 <memmove+0xba>
 8005f02:	ea40 0301 	orr.w	r3, r0, r1
 8005f06:	079b      	lsls	r3, r3, #30
 8005f08:	d147      	bne.n	8005f9a <memmove+0xbe>
 8005f0a:	f1a2 0310 	sub.w	r3, r2, #16
 8005f0e:	091b      	lsrs	r3, r3, #4
 8005f10:	f101 0720 	add.w	r7, r1, #32
 8005f14:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005f18:	f101 0410 	add.w	r4, r1, #16
 8005f1c:	f100 0510 	add.w	r5, r0, #16
 8005f20:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005f24:	f845 6c10 	str.w	r6, [r5, #-16]
 8005f28:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005f2c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005f30:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005f34:	f845 6c08 	str.w	r6, [r5, #-8]
 8005f38:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005f3c:	f845 6c04 	str.w	r6, [r5, #-4]
 8005f40:	3410      	adds	r4, #16
 8005f42:	42bc      	cmp	r4, r7
 8005f44:	f105 0510 	add.w	r5, r5, #16
 8005f48:	d1ea      	bne.n	8005f20 <memmove+0x44>
 8005f4a:	3301      	adds	r3, #1
 8005f4c:	f002 050f 	and.w	r5, r2, #15
 8005f50:	011b      	lsls	r3, r3, #4
 8005f52:	2d03      	cmp	r5, #3
 8005f54:	4419      	add	r1, r3
 8005f56:	4403      	add	r3, r0
 8005f58:	d921      	bls.n	8005f9e <memmove+0xc2>
 8005f5a:	1f1f      	subs	r7, r3, #4
 8005f5c:	460e      	mov	r6, r1
 8005f5e:	462c      	mov	r4, r5
 8005f60:	3c04      	subs	r4, #4
 8005f62:	f856 cb04 	ldr.w	ip, [r6], #4
 8005f66:	f847 cf04 	str.w	ip, [r7, #4]!
 8005f6a:	2c03      	cmp	r4, #3
 8005f6c:	d8f8      	bhi.n	8005f60 <memmove+0x84>
 8005f6e:	1f2c      	subs	r4, r5, #4
 8005f70:	f024 0403 	bic.w	r4, r4, #3
 8005f74:	3404      	adds	r4, #4
 8005f76:	4423      	add	r3, r4
 8005f78:	4421      	add	r1, r4
 8005f7a:	f002 0203 	and.w	r2, r2, #3
 8005f7e:	2a00      	cmp	r2, #0
 8005f80:	d0bb      	beq.n	8005efa <memmove+0x1e>
 8005f82:	3b01      	subs	r3, #1
 8005f84:	440a      	add	r2, r1
 8005f86:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005f8a:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005f8e:	4291      	cmp	r1, r2
 8005f90:	d1f9      	bne.n	8005f86 <memmove+0xaa>
 8005f92:	bcf0      	pop	{r4, r5, r6, r7}
 8005f94:	4770      	bx	lr
 8005f96:	4603      	mov	r3, r0
 8005f98:	e7f1      	b.n	8005f7e <memmove+0xa2>
 8005f9a:	4603      	mov	r3, r0
 8005f9c:	e7f1      	b.n	8005f82 <memmove+0xa6>
 8005f9e:	462a      	mov	r2, r5
 8005fa0:	e7ed      	b.n	8005f7e <memmove+0xa2>
 8005fa2:	bf00      	nop

08005fa4 <_Balloc>:
 8005fa4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005fa6:	b570      	push	{r4, r5, r6, lr}
 8005fa8:	4605      	mov	r5, r0
 8005faa:	460c      	mov	r4, r1
 8005fac:	b14b      	cbz	r3, 8005fc2 <_Balloc+0x1e>
 8005fae:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005fb2:	b180      	cbz	r0, 8005fd6 <_Balloc+0x32>
 8005fb4:	6802      	ldr	r2, [r0, #0]
 8005fb6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005fba:	2300      	movs	r3, #0
 8005fbc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005fc0:	bd70      	pop	{r4, r5, r6, pc}
 8005fc2:	2221      	movs	r2, #33	; 0x21
 8005fc4:	2104      	movs	r1, #4
 8005fc6:	f000 fe0b 	bl	8006be0 <_calloc_r>
 8005fca:	4603      	mov	r3, r0
 8005fcc:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005fce:	2800      	cmp	r0, #0
 8005fd0:	d1ed      	bne.n	8005fae <_Balloc+0xa>
 8005fd2:	2000      	movs	r0, #0
 8005fd4:	bd70      	pop	{r4, r5, r6, pc}
 8005fd6:	2101      	movs	r1, #1
 8005fd8:	fa01 f604 	lsl.w	r6, r1, r4
 8005fdc:	1d72      	adds	r2, r6, #5
 8005fde:	4628      	mov	r0, r5
 8005fe0:	0092      	lsls	r2, r2, #2
 8005fe2:	f000 fdfd 	bl	8006be0 <_calloc_r>
 8005fe6:	2800      	cmp	r0, #0
 8005fe8:	d0f3      	beq.n	8005fd2 <_Balloc+0x2e>
 8005fea:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005fee:	e7e4      	b.n	8005fba <_Balloc+0x16>

08005ff0 <_Bfree>:
 8005ff0:	b131      	cbz	r1, 8006000 <_Bfree+0x10>
 8005ff2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005ff4:	684a      	ldr	r2, [r1, #4]
 8005ff6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005ffa:	6008      	str	r0, [r1, #0]
 8005ffc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006000:	4770      	bx	lr
 8006002:	bf00      	nop

08006004 <__multadd>:
 8006004:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006006:	690c      	ldr	r4, [r1, #16]
 8006008:	b083      	sub	sp, #12
 800600a:	460d      	mov	r5, r1
 800600c:	4606      	mov	r6, r0
 800600e:	f101 0c14 	add.w	ip, r1, #20
 8006012:	2700      	movs	r7, #0
 8006014:	f8dc 0000 	ldr.w	r0, [ip]
 8006018:	b281      	uxth	r1, r0
 800601a:	fb02 3301 	mla	r3, r2, r1, r3
 800601e:	0c01      	lsrs	r1, r0, #16
 8006020:	0c18      	lsrs	r0, r3, #16
 8006022:	fb02 0101 	mla	r1, r2, r1, r0
 8006026:	b29b      	uxth	r3, r3
 8006028:	3701      	adds	r7, #1
 800602a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800602e:	42bc      	cmp	r4, r7
 8006030:	f84c 3b04 	str.w	r3, [ip], #4
 8006034:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006038:	dcec      	bgt.n	8006014 <__multadd+0x10>
 800603a:	b13b      	cbz	r3, 800604c <__multadd+0x48>
 800603c:	68aa      	ldr	r2, [r5, #8]
 800603e:	42a2      	cmp	r2, r4
 8006040:	dd07      	ble.n	8006052 <__multadd+0x4e>
 8006042:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006046:	3401      	adds	r4, #1
 8006048:	6153      	str	r3, [r2, #20]
 800604a:	612c      	str	r4, [r5, #16]
 800604c:	4628      	mov	r0, r5
 800604e:	b003      	add	sp, #12
 8006050:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006052:	6869      	ldr	r1, [r5, #4]
 8006054:	9301      	str	r3, [sp, #4]
 8006056:	3101      	adds	r1, #1
 8006058:	4630      	mov	r0, r6
 800605a:	f7ff ffa3 	bl	8005fa4 <_Balloc>
 800605e:	692a      	ldr	r2, [r5, #16]
 8006060:	3202      	adds	r2, #2
 8006062:	f105 010c 	add.w	r1, r5, #12
 8006066:	4607      	mov	r7, r0
 8006068:	0092      	lsls	r2, r2, #2
 800606a:	300c      	adds	r0, #12
 800606c:	f7fa fa96 	bl	800059c <memcpy>
 8006070:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006072:	6869      	ldr	r1, [r5, #4]
 8006074:	9b01      	ldr	r3, [sp, #4]
 8006076:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800607a:	6028      	str	r0, [r5, #0]
 800607c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006080:	463d      	mov	r5, r7
 8006082:	e7de      	b.n	8006042 <__multadd+0x3e>

08006084 <__hi0bits>:
 8006084:	0c02      	lsrs	r2, r0, #16
 8006086:	0412      	lsls	r2, r2, #16
 8006088:	4603      	mov	r3, r0
 800608a:	b9c2      	cbnz	r2, 80060be <__hi0bits+0x3a>
 800608c:	0403      	lsls	r3, r0, #16
 800608e:	2010      	movs	r0, #16
 8006090:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006094:	bf04      	itt	eq
 8006096:	021b      	lsleq	r3, r3, #8
 8006098:	3008      	addeq	r0, #8
 800609a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800609e:	bf04      	itt	eq
 80060a0:	011b      	lsleq	r3, r3, #4
 80060a2:	3004      	addeq	r0, #4
 80060a4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80060a8:	bf04      	itt	eq
 80060aa:	009b      	lsleq	r3, r3, #2
 80060ac:	3002      	addeq	r0, #2
 80060ae:	2b00      	cmp	r3, #0
 80060b0:	db04      	blt.n	80060bc <__hi0bits+0x38>
 80060b2:	005b      	lsls	r3, r3, #1
 80060b4:	d501      	bpl.n	80060ba <__hi0bits+0x36>
 80060b6:	3001      	adds	r0, #1
 80060b8:	4770      	bx	lr
 80060ba:	2020      	movs	r0, #32
 80060bc:	4770      	bx	lr
 80060be:	2000      	movs	r0, #0
 80060c0:	e7e6      	b.n	8006090 <__hi0bits+0xc>
 80060c2:	bf00      	nop

080060c4 <__lo0bits>:
 80060c4:	6803      	ldr	r3, [r0, #0]
 80060c6:	f013 0207 	ands.w	r2, r3, #7
 80060ca:	4601      	mov	r1, r0
 80060cc:	d007      	beq.n	80060de <__lo0bits+0x1a>
 80060ce:	07da      	lsls	r2, r3, #31
 80060d0:	d41f      	bmi.n	8006112 <__lo0bits+0x4e>
 80060d2:	0798      	lsls	r0, r3, #30
 80060d4:	d51f      	bpl.n	8006116 <__lo0bits+0x52>
 80060d6:	085b      	lsrs	r3, r3, #1
 80060d8:	600b      	str	r3, [r1, #0]
 80060da:	2001      	movs	r0, #1
 80060dc:	4770      	bx	lr
 80060de:	b298      	uxth	r0, r3
 80060e0:	b1a0      	cbz	r0, 800610c <__lo0bits+0x48>
 80060e2:	4610      	mov	r0, r2
 80060e4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80060e8:	bf04      	itt	eq
 80060ea:	0a1b      	lsreq	r3, r3, #8
 80060ec:	3008      	addeq	r0, #8
 80060ee:	071a      	lsls	r2, r3, #28
 80060f0:	bf04      	itt	eq
 80060f2:	091b      	lsreq	r3, r3, #4
 80060f4:	3004      	addeq	r0, #4
 80060f6:	079a      	lsls	r2, r3, #30
 80060f8:	bf04      	itt	eq
 80060fa:	089b      	lsreq	r3, r3, #2
 80060fc:	3002      	addeq	r0, #2
 80060fe:	07da      	lsls	r2, r3, #31
 8006100:	d402      	bmi.n	8006108 <__lo0bits+0x44>
 8006102:	085b      	lsrs	r3, r3, #1
 8006104:	d00b      	beq.n	800611e <__lo0bits+0x5a>
 8006106:	3001      	adds	r0, #1
 8006108:	600b      	str	r3, [r1, #0]
 800610a:	4770      	bx	lr
 800610c:	0c1b      	lsrs	r3, r3, #16
 800610e:	2010      	movs	r0, #16
 8006110:	e7e8      	b.n	80060e4 <__lo0bits+0x20>
 8006112:	2000      	movs	r0, #0
 8006114:	4770      	bx	lr
 8006116:	089b      	lsrs	r3, r3, #2
 8006118:	600b      	str	r3, [r1, #0]
 800611a:	2002      	movs	r0, #2
 800611c:	4770      	bx	lr
 800611e:	2020      	movs	r0, #32
 8006120:	4770      	bx	lr
 8006122:	bf00      	nop

08006124 <__i2b>:
 8006124:	b510      	push	{r4, lr}
 8006126:	460c      	mov	r4, r1
 8006128:	2101      	movs	r1, #1
 800612a:	f7ff ff3b 	bl	8005fa4 <_Balloc>
 800612e:	2201      	movs	r2, #1
 8006130:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006134:	bd10      	pop	{r4, pc}
 8006136:	bf00      	nop

08006138 <__multiply>:
 8006138:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800613c:	690e      	ldr	r6, [r1, #16]
 800613e:	6914      	ldr	r4, [r2, #16]
 8006140:	42a6      	cmp	r6, r4
 8006142:	b083      	sub	sp, #12
 8006144:	460f      	mov	r7, r1
 8006146:	4615      	mov	r5, r2
 8006148:	da04      	bge.n	8006154 <__multiply+0x1c>
 800614a:	4632      	mov	r2, r6
 800614c:	462f      	mov	r7, r5
 800614e:	4626      	mov	r6, r4
 8006150:	460d      	mov	r5, r1
 8006152:	4614      	mov	r4, r2
 8006154:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006158:	eb06 0804 	add.w	r8, r6, r4
 800615c:	4543      	cmp	r3, r8
 800615e:	bfb8      	it	lt
 8006160:	3101      	addlt	r1, #1
 8006162:	f7ff ff1f 	bl	8005fa4 <_Balloc>
 8006166:	f100 0914 	add.w	r9, r0, #20
 800616a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800616e:	45f1      	cmp	r9, lr
 8006170:	9000      	str	r0, [sp, #0]
 8006172:	d205      	bcs.n	8006180 <__multiply+0x48>
 8006174:	464b      	mov	r3, r9
 8006176:	2200      	movs	r2, #0
 8006178:	f843 2b04 	str.w	r2, [r3], #4
 800617c:	459e      	cmp	lr, r3
 800617e:	d8fb      	bhi.n	8006178 <__multiply+0x40>
 8006180:	f105 0a14 	add.w	sl, r5, #20
 8006184:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006188:	f107 0314 	add.w	r3, r7, #20
 800618c:	45a2      	cmp	sl, r4
 800618e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006192:	d261      	bcs.n	8006258 <__multiply+0x120>
 8006194:	1b64      	subs	r4, r4, r5
 8006196:	3c15      	subs	r4, #21
 8006198:	f024 0403 	bic.w	r4, r4, #3
 800619c:	f8cd e004 	str.w	lr, [sp, #4]
 80061a0:	44a2      	add	sl, r4
 80061a2:	f105 0210 	add.w	r2, r5, #16
 80061a6:	469e      	mov	lr, r3
 80061a8:	e005      	b.n	80061b6 <__multiply+0x7e>
 80061aa:	0c2d      	lsrs	r5, r5, #16
 80061ac:	d12b      	bne.n	8006206 <__multiply+0xce>
 80061ae:	4592      	cmp	sl, r2
 80061b0:	f109 0904 	add.w	r9, r9, #4
 80061b4:	d04e      	beq.n	8006254 <__multiply+0x11c>
 80061b6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80061ba:	fa1f fb85 	uxth.w	fp, r5
 80061be:	f1bb 0f00 	cmp.w	fp, #0
 80061c2:	d0f2      	beq.n	80061aa <__multiply+0x72>
 80061c4:	4677      	mov	r7, lr
 80061c6:	464e      	mov	r6, r9
 80061c8:	2000      	movs	r0, #0
 80061ca:	e000      	b.n	80061ce <__multiply+0x96>
 80061cc:	4626      	mov	r6, r4
 80061ce:	f857 1b04 	ldr.w	r1, [r7], #4
 80061d2:	6834      	ldr	r4, [r6, #0]
 80061d4:	b28b      	uxth	r3, r1
 80061d6:	b2a5      	uxth	r5, r4
 80061d8:	0c09      	lsrs	r1, r1, #16
 80061da:	0c24      	lsrs	r4, r4, #16
 80061dc:	fb0b 5303 	mla	r3, fp, r3, r5
 80061e0:	4403      	add	r3, r0
 80061e2:	fb0b 4001 	mla	r0, fp, r1, r4
 80061e6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80061ea:	4634      	mov	r4, r6
 80061ec:	b29b      	uxth	r3, r3
 80061ee:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80061f2:	45bc      	cmp	ip, r7
 80061f4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80061f8:	f844 3b04 	str.w	r3, [r4], #4
 80061fc:	d8e6      	bhi.n	80061cc <__multiply+0x94>
 80061fe:	6070      	str	r0, [r6, #4]
 8006200:	6815      	ldr	r5, [r2, #0]
 8006202:	0c2d      	lsrs	r5, r5, #16
 8006204:	d0d3      	beq.n	80061ae <__multiply+0x76>
 8006206:	f8d9 3000 	ldr.w	r3, [r9]
 800620a:	4676      	mov	r6, lr
 800620c:	4618      	mov	r0, r3
 800620e:	46cb      	mov	fp, r9
 8006210:	2100      	movs	r1, #0
 8006212:	e000      	b.n	8006216 <__multiply+0xde>
 8006214:	46a3      	mov	fp, r4
 8006216:	8834      	ldrh	r4, [r6, #0]
 8006218:	0c00      	lsrs	r0, r0, #16
 800621a:	fb05 0004 	mla	r0, r5, r4, r0
 800621e:	4401      	add	r1, r0
 8006220:	b29b      	uxth	r3, r3
 8006222:	465c      	mov	r4, fp
 8006224:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006228:	f844 3b04 	str.w	r3, [r4], #4
 800622c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006230:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006234:	0c1b      	lsrs	r3, r3, #16
 8006236:	b287      	uxth	r7, r0
 8006238:	fb05 7303 	mla	r3, r5, r3, r7
 800623c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006240:	45b4      	cmp	ip, r6
 8006242:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006246:	d8e5      	bhi.n	8006214 <__multiply+0xdc>
 8006248:	4592      	cmp	sl, r2
 800624a:	f8cb 3004 	str.w	r3, [fp, #4]
 800624e:	f109 0904 	add.w	r9, r9, #4
 8006252:	d1b0      	bne.n	80061b6 <__multiply+0x7e>
 8006254:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006258:	f1b8 0f00 	cmp.w	r8, #0
 800625c:	dd0b      	ble.n	8006276 <__multiply+0x13e>
 800625e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006262:	f1ae 0e04 	sub.w	lr, lr, #4
 8006266:	b11b      	cbz	r3, 8006270 <__multiply+0x138>
 8006268:	e005      	b.n	8006276 <__multiply+0x13e>
 800626a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800626e:	b913      	cbnz	r3, 8006276 <__multiply+0x13e>
 8006270:	f1b8 0801 	subs.w	r8, r8, #1
 8006274:	d1f9      	bne.n	800626a <__multiply+0x132>
 8006276:	9800      	ldr	r0, [sp, #0]
 8006278:	f8c0 8010 	str.w	r8, [r0, #16]
 800627c:	b003      	add	sp, #12
 800627e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006282:	bf00      	nop

08006284 <__pow5mult>:
 8006284:	f012 0303 	ands.w	r3, r2, #3
 8006288:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800628c:	4614      	mov	r4, r2
 800628e:	4607      	mov	r7, r0
 8006290:	d12e      	bne.n	80062f0 <__pow5mult+0x6c>
 8006292:	460d      	mov	r5, r1
 8006294:	10a4      	asrs	r4, r4, #2
 8006296:	d01c      	beq.n	80062d2 <__pow5mult+0x4e>
 8006298:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800629a:	b396      	cbz	r6, 8006302 <__pow5mult+0x7e>
 800629c:	07e3      	lsls	r3, r4, #31
 800629e:	f04f 0800 	mov.w	r8, #0
 80062a2:	d406      	bmi.n	80062b2 <__pow5mult+0x2e>
 80062a4:	1064      	asrs	r4, r4, #1
 80062a6:	d014      	beq.n	80062d2 <__pow5mult+0x4e>
 80062a8:	6830      	ldr	r0, [r6, #0]
 80062aa:	b1a8      	cbz	r0, 80062d8 <__pow5mult+0x54>
 80062ac:	4606      	mov	r6, r0
 80062ae:	07e3      	lsls	r3, r4, #31
 80062b0:	d5f8      	bpl.n	80062a4 <__pow5mult+0x20>
 80062b2:	4632      	mov	r2, r6
 80062b4:	4629      	mov	r1, r5
 80062b6:	4638      	mov	r0, r7
 80062b8:	f7ff ff3e 	bl	8006138 <__multiply>
 80062bc:	b1b5      	cbz	r5, 80062ec <__pow5mult+0x68>
 80062be:	686a      	ldr	r2, [r5, #4]
 80062c0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80062c2:	1064      	asrs	r4, r4, #1
 80062c4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80062c8:	6029      	str	r1, [r5, #0]
 80062ca:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80062ce:	4605      	mov	r5, r0
 80062d0:	d1ea      	bne.n	80062a8 <__pow5mult+0x24>
 80062d2:	4628      	mov	r0, r5
 80062d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80062d8:	4632      	mov	r2, r6
 80062da:	4631      	mov	r1, r6
 80062dc:	4638      	mov	r0, r7
 80062de:	f7ff ff2b 	bl	8006138 <__multiply>
 80062e2:	6030      	str	r0, [r6, #0]
 80062e4:	f8c0 8000 	str.w	r8, [r0]
 80062e8:	4606      	mov	r6, r0
 80062ea:	e7e0      	b.n	80062ae <__pow5mult+0x2a>
 80062ec:	4605      	mov	r5, r0
 80062ee:	e7d9      	b.n	80062a4 <__pow5mult+0x20>
 80062f0:	3b01      	subs	r3, #1
 80062f2:	4a0b      	ldr	r2, [pc, #44]	; (8006320 <__pow5mult+0x9c>)
 80062f4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80062f8:	2300      	movs	r3, #0
 80062fa:	f7ff fe83 	bl	8006004 <__multadd>
 80062fe:	4605      	mov	r5, r0
 8006300:	e7c8      	b.n	8006294 <__pow5mult+0x10>
 8006302:	2101      	movs	r1, #1
 8006304:	4638      	mov	r0, r7
 8006306:	f7ff fe4d 	bl	8005fa4 <_Balloc>
 800630a:	f240 2371 	movw	r3, #625	; 0x271
 800630e:	6143      	str	r3, [r0, #20]
 8006310:	2201      	movs	r2, #1
 8006312:	2300      	movs	r3, #0
 8006314:	6102      	str	r2, [r0, #16]
 8006316:	4606      	mov	r6, r0
 8006318:	64b8      	str	r0, [r7, #72]	; 0x48
 800631a:	6003      	str	r3, [r0, #0]
 800631c:	e7be      	b.n	800629c <__pow5mult+0x18>
 800631e:	bf00      	nop
 8006320:	080072e8 	.word	0x080072e8

08006324 <__lshift>:
 8006324:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006328:	4691      	mov	r9, r2
 800632a:	690a      	ldr	r2, [r1, #16]
 800632c:	460e      	mov	r6, r1
 800632e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006332:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006336:	eb04 0802 	add.w	r8, r4, r2
 800633a:	f108 0501 	add.w	r5, r8, #1
 800633e:	429d      	cmp	r5, r3
 8006340:	4607      	mov	r7, r0
 8006342:	dd04      	ble.n	800634e <__lshift+0x2a>
 8006344:	005b      	lsls	r3, r3, #1
 8006346:	429d      	cmp	r5, r3
 8006348:	f101 0101 	add.w	r1, r1, #1
 800634c:	dcfa      	bgt.n	8006344 <__lshift+0x20>
 800634e:	4638      	mov	r0, r7
 8006350:	f7ff fe28 	bl	8005fa4 <_Balloc>
 8006354:	2c00      	cmp	r4, #0
 8006356:	f100 0314 	add.w	r3, r0, #20
 800635a:	dd37      	ble.n	80063cc <__lshift+0xa8>
 800635c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006360:	2200      	movs	r2, #0
 8006362:	f843 2b04 	str.w	r2, [r3], #4
 8006366:	428b      	cmp	r3, r1
 8006368:	d1fb      	bne.n	8006362 <__lshift+0x3e>
 800636a:	6934      	ldr	r4, [r6, #16]
 800636c:	f106 0314 	add.w	r3, r6, #20
 8006370:	f019 091f 	ands.w	r9, r9, #31
 8006374:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006378:	d020      	beq.n	80063bc <__lshift+0x98>
 800637a:	f1c9 0e20 	rsb	lr, r9, #32
 800637e:	2200      	movs	r2, #0
 8006380:	e000      	b.n	8006384 <__lshift+0x60>
 8006382:	4651      	mov	r1, sl
 8006384:	681c      	ldr	r4, [r3, #0]
 8006386:	468a      	mov	sl, r1
 8006388:	fa04 f409 	lsl.w	r4, r4, r9
 800638c:	4314      	orrs	r4, r2
 800638e:	f84a 4b04 	str.w	r4, [sl], #4
 8006392:	f853 2b04 	ldr.w	r2, [r3], #4
 8006396:	4563      	cmp	r3, ip
 8006398:	fa22 f20e 	lsr.w	r2, r2, lr
 800639c:	d3f1      	bcc.n	8006382 <__lshift+0x5e>
 800639e:	604a      	str	r2, [r1, #4]
 80063a0:	b10a      	cbz	r2, 80063a6 <__lshift+0x82>
 80063a2:	f108 0502 	add.w	r5, r8, #2
 80063a6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80063a8:	6872      	ldr	r2, [r6, #4]
 80063aa:	3d01      	subs	r5, #1
 80063ac:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80063b0:	6105      	str	r5, [r0, #16]
 80063b2:	6031      	str	r1, [r6, #0]
 80063b4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80063b8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80063bc:	3904      	subs	r1, #4
 80063be:	f853 2b04 	ldr.w	r2, [r3], #4
 80063c2:	f841 2f04 	str.w	r2, [r1, #4]!
 80063c6:	459c      	cmp	ip, r3
 80063c8:	d8f9      	bhi.n	80063be <__lshift+0x9a>
 80063ca:	e7ec      	b.n	80063a6 <__lshift+0x82>
 80063cc:	4619      	mov	r1, r3
 80063ce:	e7cc      	b.n	800636a <__lshift+0x46>

080063d0 <__mcmp>:
 80063d0:	b430      	push	{r4, r5}
 80063d2:	690b      	ldr	r3, [r1, #16]
 80063d4:	4605      	mov	r5, r0
 80063d6:	6900      	ldr	r0, [r0, #16]
 80063d8:	1ac0      	subs	r0, r0, r3
 80063da:	d10f      	bne.n	80063fc <__mcmp+0x2c>
 80063dc:	009b      	lsls	r3, r3, #2
 80063de:	3514      	adds	r5, #20
 80063e0:	3114      	adds	r1, #20
 80063e2:	4419      	add	r1, r3
 80063e4:	442b      	add	r3, r5
 80063e6:	e001      	b.n	80063ec <__mcmp+0x1c>
 80063e8:	429d      	cmp	r5, r3
 80063ea:	d207      	bcs.n	80063fc <__mcmp+0x2c>
 80063ec:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80063f0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80063f4:	4294      	cmp	r4, r2
 80063f6:	d0f7      	beq.n	80063e8 <__mcmp+0x18>
 80063f8:	d302      	bcc.n	8006400 <__mcmp+0x30>
 80063fa:	2001      	movs	r0, #1
 80063fc:	bc30      	pop	{r4, r5}
 80063fe:	4770      	bx	lr
 8006400:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006404:	e7fa      	b.n	80063fc <__mcmp+0x2c>
 8006406:	bf00      	nop

08006408 <__mdiff>:
 8006408:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800640c:	6913      	ldr	r3, [r2, #16]
 800640e:	690d      	ldr	r5, [r1, #16]
 8006410:	1aed      	subs	r5, r5, r3
 8006412:	2d00      	cmp	r5, #0
 8006414:	460e      	mov	r6, r1
 8006416:	4690      	mov	r8, r2
 8006418:	f101 0414 	add.w	r4, r1, #20
 800641c:	f102 0714 	add.w	r7, r2, #20
 8006420:	d114      	bne.n	800644c <__mdiff+0x44>
 8006422:	009b      	lsls	r3, r3, #2
 8006424:	18e2      	adds	r2, r4, r3
 8006426:	443b      	add	r3, r7
 8006428:	e001      	b.n	800642e <__mdiff+0x26>
 800642a:	42a2      	cmp	r2, r4
 800642c:	d959      	bls.n	80064e2 <__mdiff+0xda>
 800642e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006432:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006436:	458c      	cmp	ip, r1
 8006438:	d0f7      	beq.n	800642a <__mdiff+0x22>
 800643a:	d209      	bcs.n	8006450 <__mdiff+0x48>
 800643c:	4622      	mov	r2, r4
 800643e:	4633      	mov	r3, r6
 8006440:	463c      	mov	r4, r7
 8006442:	4646      	mov	r6, r8
 8006444:	4617      	mov	r7, r2
 8006446:	4698      	mov	r8, r3
 8006448:	2501      	movs	r5, #1
 800644a:	e001      	b.n	8006450 <__mdiff+0x48>
 800644c:	dbf6      	blt.n	800643c <__mdiff+0x34>
 800644e:	2500      	movs	r5, #0
 8006450:	6871      	ldr	r1, [r6, #4]
 8006452:	f7ff fda7 	bl	8005fa4 <_Balloc>
 8006456:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800645a:	6936      	ldr	r6, [r6, #16]
 800645c:	60c5      	str	r5, [r0, #12]
 800645e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006462:	46bc      	mov	ip, r7
 8006464:	f100 0514 	add.w	r5, r0, #20
 8006468:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800646c:	2300      	movs	r3, #0
 800646e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006472:	f854 8b04 	ldr.w	r8, [r4], #4
 8006476:	b28a      	uxth	r2, r1
 8006478:	fa13 f388 	uxtah	r3, r3, r8
 800647c:	0c09      	lsrs	r1, r1, #16
 800647e:	1a9a      	subs	r2, r3, r2
 8006480:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006484:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006488:	b292      	uxth	r2, r2
 800648a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800648e:	45e6      	cmp	lr, ip
 8006490:	f845 2b04 	str.w	r2, [r5], #4
 8006494:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006498:	d8e9      	bhi.n	800646e <__mdiff+0x66>
 800649a:	42a7      	cmp	r7, r4
 800649c:	d917      	bls.n	80064ce <__mdiff+0xc6>
 800649e:	46ae      	mov	lr, r5
 80064a0:	46a4      	mov	ip, r4
 80064a2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80064a6:	fa13 f382 	uxtah	r3, r3, r2
 80064aa:	1419      	asrs	r1, r3, #16
 80064ac:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80064b0:	b29b      	uxth	r3, r3
 80064b2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80064b6:	4567      	cmp	r7, ip
 80064b8:	f84e 2b04 	str.w	r2, [lr], #4
 80064bc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80064c0:	d8ef      	bhi.n	80064a2 <__mdiff+0x9a>
 80064c2:	43e4      	mvns	r4, r4
 80064c4:	4427      	add	r7, r4
 80064c6:	f027 0703 	bic.w	r7, r7, #3
 80064ca:	3704      	adds	r7, #4
 80064cc:	443d      	add	r5, r7
 80064ce:	3d04      	subs	r5, #4
 80064d0:	b922      	cbnz	r2, 80064dc <__mdiff+0xd4>
 80064d2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80064d6:	3e01      	subs	r6, #1
 80064d8:	2b00      	cmp	r3, #0
 80064da:	d0fa      	beq.n	80064d2 <__mdiff+0xca>
 80064dc:	6106      	str	r6, [r0, #16]
 80064de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80064e2:	2100      	movs	r1, #0
 80064e4:	f7ff fd5e 	bl	8005fa4 <_Balloc>
 80064e8:	2201      	movs	r2, #1
 80064ea:	2300      	movs	r3, #0
 80064ec:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80064f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080064f4 <__d2b>:
 80064f4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80064f8:	460f      	mov	r7, r1
 80064fa:	b083      	sub	sp, #12
 80064fc:	2101      	movs	r1, #1
 80064fe:	ec55 4b10 	vmov	r4, r5, d0
 8006502:	4616      	mov	r6, r2
 8006504:	f7ff fd4e 	bl	8005fa4 <_Balloc>
 8006508:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800650c:	4681      	mov	r9, r0
 800650e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006512:	f1b8 0f00 	cmp.w	r8, #0
 8006516:	d001      	beq.n	800651c <__d2b+0x28>
 8006518:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800651c:	2c00      	cmp	r4, #0
 800651e:	9301      	str	r3, [sp, #4]
 8006520:	d024      	beq.n	800656c <__d2b+0x78>
 8006522:	a802      	add	r0, sp, #8
 8006524:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006528:	f7ff fdcc 	bl	80060c4 <__lo0bits>
 800652c:	2800      	cmp	r0, #0
 800652e:	d136      	bne.n	800659e <__d2b+0xaa>
 8006530:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006534:	f8c9 2014 	str.w	r2, [r9, #20]
 8006538:	2b00      	cmp	r3, #0
 800653a:	bf0c      	ite	eq
 800653c:	2101      	moveq	r1, #1
 800653e:	2102      	movne	r1, #2
 8006540:	f8c9 3018 	str.w	r3, [r9, #24]
 8006544:	f8c9 1010 	str.w	r1, [r9, #16]
 8006548:	f1b8 0f00 	cmp.w	r8, #0
 800654c:	d11b      	bne.n	8006586 <__d2b+0x92>
 800654e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006552:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006556:	6038      	str	r0, [r7, #0]
 8006558:	6918      	ldr	r0, [r3, #16]
 800655a:	f7ff fd93 	bl	8006084 <__hi0bits>
 800655e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006562:	6030      	str	r0, [r6, #0]
 8006564:	4648      	mov	r0, r9
 8006566:	b003      	add	sp, #12
 8006568:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800656c:	a801      	add	r0, sp, #4
 800656e:	f7ff fda9 	bl	80060c4 <__lo0bits>
 8006572:	9b01      	ldr	r3, [sp, #4]
 8006574:	f8c9 3014 	str.w	r3, [r9, #20]
 8006578:	2101      	movs	r1, #1
 800657a:	3020      	adds	r0, #32
 800657c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006580:	f1b8 0f00 	cmp.w	r8, #0
 8006584:	d0e3      	beq.n	800654e <__d2b+0x5a>
 8006586:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800658a:	eb08 0300 	add.w	r3, r8, r0
 800658e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006592:	603b      	str	r3, [r7, #0]
 8006594:	6030      	str	r0, [r6, #0]
 8006596:	4648      	mov	r0, r9
 8006598:	b003      	add	sp, #12
 800659a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800659e:	e9dd 1300 	ldrd	r1, r3, [sp]
 80065a2:	f1c0 0220 	rsb	r2, r0, #32
 80065a6:	fa03 f202 	lsl.w	r2, r3, r2
 80065aa:	430a      	orrs	r2, r1
 80065ac:	40c3      	lsrs	r3, r0
 80065ae:	9301      	str	r3, [sp, #4]
 80065b0:	f8c9 2014 	str.w	r2, [r9, #20]
 80065b4:	e7c0      	b.n	8006538 <__d2b+0x44>
 80065b6:	bf00      	nop

080065b8 <_realloc_r>:
 80065b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80065bc:	4692      	mov	sl, r2
 80065be:	b083      	sub	sp, #12
 80065c0:	2900      	cmp	r1, #0
 80065c2:	f000 80a1 	beq.w	8006708 <_realloc_r+0x150>
 80065c6:	460d      	mov	r5, r1
 80065c8:	4680      	mov	r8, r0
 80065ca:	f10a 040b 	add.w	r4, sl, #11
 80065ce:	f7fc f993 	bl	80028f8 <__malloc_lock>
 80065d2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80065d6:	2c16      	cmp	r4, #22
 80065d8:	f022 0603 	bic.w	r6, r2, #3
 80065dc:	f1a5 0708 	sub.w	r7, r5, #8
 80065e0:	d83e      	bhi.n	8006660 <_realloc_r+0xa8>
 80065e2:	2410      	movs	r4, #16
 80065e4:	4621      	mov	r1, r4
 80065e6:	45a2      	cmp	sl, r4
 80065e8:	d83f      	bhi.n	800666a <_realloc_r+0xb2>
 80065ea:	428e      	cmp	r6, r1
 80065ec:	eb07 0906 	add.w	r9, r7, r6
 80065f0:	da74      	bge.n	80066dc <_realloc_r+0x124>
 80065f2:	4bc7      	ldr	r3, [pc, #796]	; (8006910 <_realloc_r+0x358>)
 80065f4:	6898      	ldr	r0, [r3, #8]
 80065f6:	4548      	cmp	r0, r9
 80065f8:	f000 80aa 	beq.w	8006750 <_realloc_r+0x198>
 80065fc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006600:	f020 0301 	bic.w	r3, r0, #1
 8006604:	444b      	add	r3, r9
 8006606:	685b      	ldr	r3, [r3, #4]
 8006608:	07db      	lsls	r3, r3, #31
 800660a:	f140 8083 	bpl.w	8006714 <_realloc_r+0x15c>
 800660e:	07d2      	lsls	r2, r2, #31
 8006610:	d534      	bpl.n	800667c <_realloc_r+0xc4>
 8006612:	4651      	mov	r1, sl
 8006614:	4640      	mov	r0, r8
 8006616:	f7fb fe81 	bl	800231c <_malloc_r>
 800661a:	4682      	mov	sl, r0
 800661c:	b1e0      	cbz	r0, 8006658 <_realloc_r+0xa0>
 800661e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006622:	f023 0301 	bic.w	r3, r3, #1
 8006626:	443b      	add	r3, r7
 8006628:	f1a0 0208 	sub.w	r2, r0, #8
 800662c:	4293      	cmp	r3, r2
 800662e:	f000 80f9 	beq.w	8006824 <_realloc_r+0x26c>
 8006632:	1f32      	subs	r2, r6, #4
 8006634:	2a24      	cmp	r2, #36	; 0x24
 8006636:	f200 8107 	bhi.w	8006848 <_realloc_r+0x290>
 800663a:	2a13      	cmp	r2, #19
 800663c:	6829      	ldr	r1, [r5, #0]
 800663e:	f200 80e6 	bhi.w	800680e <_realloc_r+0x256>
 8006642:	4603      	mov	r3, r0
 8006644:	462a      	mov	r2, r5
 8006646:	6019      	str	r1, [r3, #0]
 8006648:	6851      	ldr	r1, [r2, #4]
 800664a:	6059      	str	r1, [r3, #4]
 800664c:	6892      	ldr	r2, [r2, #8]
 800664e:	609a      	str	r2, [r3, #8]
 8006650:	4629      	mov	r1, r5
 8006652:	4640      	mov	r0, r8
 8006654:	f7ff f918 	bl	8005888 <_free_r>
 8006658:	4640      	mov	r0, r8
 800665a:	f7fc f953 	bl	8002904 <__malloc_unlock>
 800665e:	e04f      	b.n	8006700 <_realloc_r+0x148>
 8006660:	f024 0407 	bic.w	r4, r4, #7
 8006664:	2c00      	cmp	r4, #0
 8006666:	4621      	mov	r1, r4
 8006668:	dabd      	bge.n	80065e6 <_realloc_r+0x2e>
 800666a:	f04f 0a00 	mov.w	sl, #0
 800666e:	230c      	movs	r3, #12
 8006670:	4650      	mov	r0, sl
 8006672:	f8c8 3000 	str.w	r3, [r8]
 8006676:	b003      	add	sp, #12
 8006678:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800667c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006680:	eba7 0b03 	sub.w	fp, r7, r3
 8006684:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006688:	f022 0203 	bic.w	r2, r2, #3
 800668c:	18b3      	adds	r3, r6, r2
 800668e:	428b      	cmp	r3, r1
 8006690:	dbbf      	blt.n	8006612 <_realloc_r+0x5a>
 8006692:	46da      	mov	sl, fp
 8006694:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006698:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800669c:	1f32      	subs	r2, r6, #4
 800669e:	2a24      	cmp	r2, #36	; 0x24
 80066a0:	60c1      	str	r1, [r0, #12]
 80066a2:	eb0b 0903 	add.w	r9, fp, r3
 80066a6:	6088      	str	r0, [r1, #8]
 80066a8:	f200 80c6 	bhi.w	8006838 <_realloc_r+0x280>
 80066ac:	2a13      	cmp	r2, #19
 80066ae:	6829      	ldr	r1, [r5, #0]
 80066b0:	f240 80c0 	bls.w	8006834 <_realloc_r+0x27c>
 80066b4:	f8cb 1008 	str.w	r1, [fp, #8]
 80066b8:	6869      	ldr	r1, [r5, #4]
 80066ba:	f8cb 100c 	str.w	r1, [fp, #12]
 80066be:	2a1b      	cmp	r2, #27
 80066c0:	68a9      	ldr	r1, [r5, #8]
 80066c2:	f200 80d8 	bhi.w	8006876 <_realloc_r+0x2be>
 80066c6:	f10b 0210 	add.w	r2, fp, #16
 80066ca:	3508      	adds	r5, #8
 80066cc:	6011      	str	r1, [r2, #0]
 80066ce:	6869      	ldr	r1, [r5, #4]
 80066d0:	6051      	str	r1, [r2, #4]
 80066d2:	68a9      	ldr	r1, [r5, #8]
 80066d4:	6091      	str	r1, [r2, #8]
 80066d6:	461e      	mov	r6, r3
 80066d8:	465f      	mov	r7, fp
 80066da:	4655      	mov	r5, sl
 80066dc:	687b      	ldr	r3, [r7, #4]
 80066de:	1b32      	subs	r2, r6, r4
 80066e0:	2a0f      	cmp	r2, #15
 80066e2:	f003 0301 	and.w	r3, r3, #1
 80066e6:	d822      	bhi.n	800672e <_realloc_r+0x176>
 80066e8:	4333      	orrs	r3, r6
 80066ea:	607b      	str	r3, [r7, #4]
 80066ec:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80066f0:	f043 0301 	orr.w	r3, r3, #1
 80066f4:	f8c9 3004 	str.w	r3, [r9, #4]
 80066f8:	4640      	mov	r0, r8
 80066fa:	f7fc f903 	bl	8002904 <__malloc_unlock>
 80066fe:	46aa      	mov	sl, r5
 8006700:	4650      	mov	r0, sl
 8006702:	b003      	add	sp, #12
 8006704:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006708:	4611      	mov	r1, r2
 800670a:	b003      	add	sp, #12
 800670c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006710:	f7fb be04 	b.w	800231c <_malloc_r>
 8006714:	f020 0003 	bic.w	r0, r0, #3
 8006718:	1833      	adds	r3, r6, r0
 800671a:	428b      	cmp	r3, r1
 800671c:	db61      	blt.n	80067e2 <_realloc_r+0x22a>
 800671e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006722:	461e      	mov	r6, r3
 8006724:	60ca      	str	r2, [r1, #12]
 8006726:	eb07 0903 	add.w	r9, r7, r3
 800672a:	6091      	str	r1, [r2, #8]
 800672c:	e7d6      	b.n	80066dc <_realloc_r+0x124>
 800672e:	1939      	adds	r1, r7, r4
 8006730:	4323      	orrs	r3, r4
 8006732:	f042 0201 	orr.w	r2, r2, #1
 8006736:	607b      	str	r3, [r7, #4]
 8006738:	604a      	str	r2, [r1, #4]
 800673a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800673e:	f043 0301 	orr.w	r3, r3, #1
 8006742:	3108      	adds	r1, #8
 8006744:	f8c9 3004 	str.w	r3, [r9, #4]
 8006748:	4640      	mov	r0, r8
 800674a:	f7ff f89d 	bl	8005888 <_free_r>
 800674e:	e7d3      	b.n	80066f8 <_realloc_r+0x140>
 8006750:	6840      	ldr	r0, [r0, #4]
 8006752:	f020 0903 	bic.w	r9, r0, #3
 8006756:	44b1      	add	r9, r6
 8006758:	f104 0010 	add.w	r0, r4, #16
 800675c:	4581      	cmp	r9, r0
 800675e:	da77      	bge.n	8006850 <_realloc_r+0x298>
 8006760:	07d2      	lsls	r2, r2, #31
 8006762:	f53f af56 	bmi.w	8006612 <_realloc_r+0x5a>
 8006766:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800676a:	eba7 0b02 	sub.w	fp, r7, r2
 800676e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006772:	f022 0203 	bic.w	r2, r2, #3
 8006776:	4491      	add	r9, r2
 8006778:	4548      	cmp	r0, r9
 800677a:	dc87      	bgt.n	800668c <_realloc_r+0xd4>
 800677c:	46da      	mov	sl, fp
 800677e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006782:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006786:	1f32      	subs	r2, r6, #4
 8006788:	2a24      	cmp	r2, #36	; 0x24
 800678a:	60c1      	str	r1, [r0, #12]
 800678c:	6088      	str	r0, [r1, #8]
 800678e:	f200 80a1 	bhi.w	80068d4 <_realloc_r+0x31c>
 8006792:	2a13      	cmp	r2, #19
 8006794:	6829      	ldr	r1, [r5, #0]
 8006796:	f240 809b 	bls.w	80068d0 <_realloc_r+0x318>
 800679a:	f8cb 1008 	str.w	r1, [fp, #8]
 800679e:	6869      	ldr	r1, [r5, #4]
 80067a0:	f8cb 100c 	str.w	r1, [fp, #12]
 80067a4:	2a1b      	cmp	r2, #27
 80067a6:	68a9      	ldr	r1, [r5, #8]
 80067a8:	f200 809b 	bhi.w	80068e2 <_realloc_r+0x32a>
 80067ac:	f10b 0210 	add.w	r2, fp, #16
 80067b0:	3508      	adds	r5, #8
 80067b2:	6011      	str	r1, [r2, #0]
 80067b4:	6869      	ldr	r1, [r5, #4]
 80067b6:	6051      	str	r1, [r2, #4]
 80067b8:	68a9      	ldr	r1, [r5, #8]
 80067ba:	6091      	str	r1, [r2, #8]
 80067bc:	eb0b 0104 	add.w	r1, fp, r4
 80067c0:	eba9 0204 	sub.w	r2, r9, r4
 80067c4:	f042 0201 	orr.w	r2, r2, #1
 80067c8:	6099      	str	r1, [r3, #8]
 80067ca:	604a      	str	r2, [r1, #4]
 80067cc:	f8db 3004 	ldr.w	r3, [fp, #4]
 80067d0:	f003 0301 	and.w	r3, r3, #1
 80067d4:	431c      	orrs	r4, r3
 80067d6:	4640      	mov	r0, r8
 80067d8:	f8cb 4004 	str.w	r4, [fp, #4]
 80067dc:	f7fc f892 	bl	8002904 <__malloc_unlock>
 80067e0:	e78e      	b.n	8006700 <_realloc_r+0x148>
 80067e2:	07d3      	lsls	r3, r2, #31
 80067e4:	f53f af15 	bmi.w	8006612 <_realloc_r+0x5a>
 80067e8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80067ec:	eba7 0b03 	sub.w	fp, r7, r3
 80067f0:	f8db 2004 	ldr.w	r2, [fp, #4]
 80067f4:	f022 0203 	bic.w	r2, r2, #3
 80067f8:	4410      	add	r0, r2
 80067fa:	1983      	adds	r3, r0, r6
 80067fc:	428b      	cmp	r3, r1
 80067fe:	f6ff af45 	blt.w	800668c <_realloc_r+0xd4>
 8006802:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006806:	46da      	mov	sl, fp
 8006808:	60ca      	str	r2, [r1, #12]
 800680a:	6091      	str	r1, [r2, #8]
 800680c:	e742      	b.n	8006694 <_realloc_r+0xdc>
 800680e:	6001      	str	r1, [r0, #0]
 8006810:	686b      	ldr	r3, [r5, #4]
 8006812:	6043      	str	r3, [r0, #4]
 8006814:	2a1b      	cmp	r2, #27
 8006816:	d83a      	bhi.n	800688e <_realloc_r+0x2d6>
 8006818:	f105 0208 	add.w	r2, r5, #8
 800681c:	f100 0308 	add.w	r3, r0, #8
 8006820:	68a9      	ldr	r1, [r5, #8]
 8006822:	e710      	b.n	8006646 <_realloc_r+0x8e>
 8006824:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006828:	f023 0303 	bic.w	r3, r3, #3
 800682c:	441e      	add	r6, r3
 800682e:	eb07 0906 	add.w	r9, r7, r6
 8006832:	e753      	b.n	80066dc <_realloc_r+0x124>
 8006834:	4652      	mov	r2, sl
 8006836:	e749      	b.n	80066cc <_realloc_r+0x114>
 8006838:	4629      	mov	r1, r5
 800683a:	4650      	mov	r0, sl
 800683c:	461e      	mov	r6, r3
 800683e:	465f      	mov	r7, fp
 8006840:	f7ff fb4c 	bl	8005edc <memmove>
 8006844:	4655      	mov	r5, sl
 8006846:	e749      	b.n	80066dc <_realloc_r+0x124>
 8006848:	4629      	mov	r1, r5
 800684a:	f7ff fb47 	bl	8005edc <memmove>
 800684e:	e6ff      	b.n	8006650 <_realloc_r+0x98>
 8006850:	4427      	add	r7, r4
 8006852:	eba9 0904 	sub.w	r9, r9, r4
 8006856:	f049 0201 	orr.w	r2, r9, #1
 800685a:	609f      	str	r7, [r3, #8]
 800685c:	607a      	str	r2, [r7, #4]
 800685e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006862:	f003 0301 	and.w	r3, r3, #1
 8006866:	431c      	orrs	r4, r3
 8006868:	4640      	mov	r0, r8
 800686a:	f845 4c04 	str.w	r4, [r5, #-4]
 800686e:	f7fc f849 	bl	8002904 <__malloc_unlock>
 8006872:	46aa      	mov	sl, r5
 8006874:	e744      	b.n	8006700 <_realloc_r+0x148>
 8006876:	f8cb 1010 	str.w	r1, [fp, #16]
 800687a:	68e9      	ldr	r1, [r5, #12]
 800687c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006880:	2a24      	cmp	r2, #36	; 0x24
 8006882:	d010      	beq.n	80068a6 <_realloc_r+0x2ee>
 8006884:	6929      	ldr	r1, [r5, #16]
 8006886:	f10b 0218 	add.w	r2, fp, #24
 800688a:	3510      	adds	r5, #16
 800688c:	e71e      	b.n	80066cc <_realloc_r+0x114>
 800688e:	68ab      	ldr	r3, [r5, #8]
 8006890:	6083      	str	r3, [r0, #8]
 8006892:	68eb      	ldr	r3, [r5, #12]
 8006894:	60c3      	str	r3, [r0, #12]
 8006896:	2a24      	cmp	r2, #36	; 0x24
 8006898:	d010      	beq.n	80068bc <_realloc_r+0x304>
 800689a:	f105 0210 	add.w	r2, r5, #16
 800689e:	f100 0310 	add.w	r3, r0, #16
 80068a2:	6929      	ldr	r1, [r5, #16]
 80068a4:	e6cf      	b.n	8006646 <_realloc_r+0x8e>
 80068a6:	692a      	ldr	r2, [r5, #16]
 80068a8:	f8cb 2018 	str.w	r2, [fp, #24]
 80068ac:	696a      	ldr	r2, [r5, #20]
 80068ae:	f8cb 201c 	str.w	r2, [fp, #28]
 80068b2:	69a9      	ldr	r1, [r5, #24]
 80068b4:	f10b 0220 	add.w	r2, fp, #32
 80068b8:	3518      	adds	r5, #24
 80068ba:	e707      	b.n	80066cc <_realloc_r+0x114>
 80068bc:	692b      	ldr	r3, [r5, #16]
 80068be:	6103      	str	r3, [r0, #16]
 80068c0:	696b      	ldr	r3, [r5, #20]
 80068c2:	6143      	str	r3, [r0, #20]
 80068c4:	69a9      	ldr	r1, [r5, #24]
 80068c6:	f105 0218 	add.w	r2, r5, #24
 80068ca:	f100 0318 	add.w	r3, r0, #24
 80068ce:	e6ba      	b.n	8006646 <_realloc_r+0x8e>
 80068d0:	4652      	mov	r2, sl
 80068d2:	e76e      	b.n	80067b2 <_realloc_r+0x1fa>
 80068d4:	4629      	mov	r1, r5
 80068d6:	4650      	mov	r0, sl
 80068d8:	9301      	str	r3, [sp, #4]
 80068da:	f7ff faff 	bl	8005edc <memmove>
 80068de:	9b01      	ldr	r3, [sp, #4]
 80068e0:	e76c      	b.n	80067bc <_realloc_r+0x204>
 80068e2:	f8cb 1010 	str.w	r1, [fp, #16]
 80068e6:	68e9      	ldr	r1, [r5, #12]
 80068e8:	f8cb 1014 	str.w	r1, [fp, #20]
 80068ec:	2a24      	cmp	r2, #36	; 0x24
 80068ee:	d004      	beq.n	80068fa <_realloc_r+0x342>
 80068f0:	6929      	ldr	r1, [r5, #16]
 80068f2:	f10b 0218 	add.w	r2, fp, #24
 80068f6:	3510      	adds	r5, #16
 80068f8:	e75b      	b.n	80067b2 <_realloc_r+0x1fa>
 80068fa:	692a      	ldr	r2, [r5, #16]
 80068fc:	f8cb 2018 	str.w	r2, [fp, #24]
 8006900:	696a      	ldr	r2, [r5, #20]
 8006902:	f8cb 201c 	str.w	r2, [fp, #28]
 8006906:	69a9      	ldr	r1, [r5, #24]
 8006908:	f10b 0220 	add.w	r2, fp, #32
 800690c:	3518      	adds	r5, #24
 800690e:	e750      	b.n	80067b2 <_realloc_r+0x1fa>
 8006910:	200005d8 	.word	0x200005d8

08006914 <frexp>:
 8006914:	ec53 2b10 	vmov	r2, r3, d0
 8006918:	b570      	push	{r4, r5, r6, lr}
 800691a:	4e16      	ldr	r6, [pc, #88]	; (8006974 <frexp+0x60>)
 800691c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006920:	2500      	movs	r5, #0
 8006922:	42b1      	cmp	r1, r6
 8006924:	4604      	mov	r4, r0
 8006926:	6005      	str	r5, [r0, #0]
 8006928:	dc21      	bgt.n	800696e <frexp+0x5a>
 800692a:	ee10 6a10 	vmov	r6, s0
 800692e:	430e      	orrs	r6, r1
 8006930:	d01d      	beq.n	800696e <frexp+0x5a>
 8006932:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006936:	4618      	mov	r0, r3
 8006938:	da0c      	bge.n	8006954 <frexp+0x40>
 800693a:	4619      	mov	r1, r3
 800693c:	2200      	movs	r2, #0
 800693e:	ee10 0a10 	vmov	r0, s0
 8006942:	4b0d      	ldr	r3, [pc, #52]	; (8006978 <frexp+0x64>)
 8006944:	f7fa f958 	bl	8000bf8 <__aeabi_dmul>
 8006948:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800694c:	4602      	mov	r2, r0
 800694e:	4608      	mov	r0, r1
 8006950:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006954:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006958:	1509      	asrs	r1, r1, #20
 800695a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800695e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006962:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006966:	4429      	add	r1, r5
 8006968:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800696c:	6021      	str	r1, [r4, #0]
 800696e:	ec43 2b10 	vmov	d0, r2, r3
 8006972:	bd70      	pop	{r4, r5, r6, pc}
 8006974:	7fefffff 	.word	0x7fefffff
 8006978:	43500000 	.word	0x43500000

0800697c <__sread>:
 800697c:	b510      	push	{r4, lr}
 800697e:	460c      	mov	r4, r1
 8006980:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006984:	f000 fabc 	bl	8006f00 <_read_r>
 8006988:	2800      	cmp	r0, #0
 800698a:	db03      	blt.n	8006994 <__sread+0x18>
 800698c:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800698e:	4403      	add	r3, r0
 8006990:	6523      	str	r3, [r4, #80]	; 0x50
 8006992:	bd10      	pop	{r4, pc}
 8006994:	89a3      	ldrh	r3, [r4, #12]
 8006996:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800699a:	81a3      	strh	r3, [r4, #12]
 800699c:	bd10      	pop	{r4, pc}
 800699e:	bf00      	nop

080069a0 <__swrite>:
 80069a0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80069a4:	4616      	mov	r6, r2
 80069a6:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80069aa:	461f      	mov	r7, r3
 80069ac:	05d3      	lsls	r3, r2, #23
 80069ae:	460c      	mov	r4, r1
 80069b0:	4605      	mov	r5, r0
 80069b2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069b6:	d507      	bpl.n	80069c8 <__swrite+0x28>
 80069b8:	2200      	movs	r2, #0
 80069ba:	2302      	movs	r3, #2
 80069bc:	f000 fa74 	bl	8006ea8 <_lseek_r>
 80069c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80069c4:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80069c8:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80069cc:	81a2      	strh	r2, [r4, #12]
 80069ce:	463b      	mov	r3, r7
 80069d0:	4632      	mov	r2, r6
 80069d2:	4628      	mov	r0, r5
 80069d4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80069d8:	f000 b88c 	b.w	8006af4 <_write_r>

080069dc <__sseek>:
 80069dc:	b510      	push	{r4, lr}
 80069de:	460c      	mov	r4, r1
 80069e0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069e4:	f000 fa60 	bl	8006ea8 <_lseek_r>
 80069e8:	89a3      	ldrh	r3, [r4, #12]
 80069ea:	1c42      	adds	r2, r0, #1
 80069ec:	bf0e      	itee	eq
 80069ee:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80069f2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80069f6:	6520      	strne	r0, [r4, #80]	; 0x50
 80069f8:	81a3      	strh	r3, [r4, #12]
 80069fa:	bd10      	pop	{r4, pc}

080069fc <__sclose>:
 80069fc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a00:	f000 b922 	b.w	8006c48 <_close_r>

08006a04 <strncpy>:
 8006a04:	ea40 0301 	orr.w	r3, r0, r1
 8006a08:	079b      	lsls	r3, r3, #30
 8006a0a:	b470      	push	{r4, r5, r6}
 8006a0c:	d12a      	bne.n	8006a64 <strncpy+0x60>
 8006a0e:	2a03      	cmp	r2, #3
 8006a10:	d928      	bls.n	8006a64 <strncpy+0x60>
 8006a12:	460c      	mov	r4, r1
 8006a14:	4603      	mov	r3, r0
 8006a16:	4621      	mov	r1, r4
 8006a18:	f854 6b04 	ldr.w	r6, [r4], #4
 8006a1c:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006a20:	ea25 0506 	bic.w	r5, r5, r6
 8006a24:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006a28:	d106      	bne.n	8006a38 <strncpy+0x34>
 8006a2a:	3a04      	subs	r2, #4
 8006a2c:	2a03      	cmp	r2, #3
 8006a2e:	f843 6b04 	str.w	r6, [r3], #4
 8006a32:	4621      	mov	r1, r4
 8006a34:	d8ef      	bhi.n	8006a16 <strncpy+0x12>
 8006a36:	b19a      	cbz	r2, 8006a60 <strncpy+0x5c>
 8006a38:	780c      	ldrb	r4, [r1, #0]
 8006a3a:	701c      	strb	r4, [r3, #0]
 8006a3c:	3a01      	subs	r2, #1
 8006a3e:	3301      	adds	r3, #1
 8006a40:	b13c      	cbz	r4, 8006a52 <strncpy+0x4e>
 8006a42:	b16a      	cbz	r2, 8006a60 <strncpy+0x5c>
 8006a44:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006a48:	f803 4b01 	strb.w	r4, [r3], #1
 8006a4c:	3a01      	subs	r2, #1
 8006a4e:	2c00      	cmp	r4, #0
 8006a50:	d1f7      	bne.n	8006a42 <strncpy+0x3e>
 8006a52:	b12a      	cbz	r2, 8006a60 <strncpy+0x5c>
 8006a54:	441a      	add	r2, r3
 8006a56:	2100      	movs	r1, #0
 8006a58:	f803 1b01 	strb.w	r1, [r3], #1
 8006a5c:	4293      	cmp	r3, r2
 8006a5e:	d1fb      	bne.n	8006a58 <strncpy+0x54>
 8006a60:	bc70      	pop	{r4, r5, r6}
 8006a62:	4770      	bx	lr
 8006a64:	4603      	mov	r3, r0
 8006a66:	e7e6      	b.n	8006a36 <strncpy+0x32>

08006a68 <__sprint_r.part.0>:
 8006a68:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a6c:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006a6e:	049c      	lsls	r4, r3, #18
 8006a70:	4692      	mov	sl, r2
 8006a72:	d52d      	bpl.n	8006ad0 <__sprint_r.part.0+0x68>
 8006a74:	6893      	ldr	r3, [r2, #8]
 8006a76:	6812      	ldr	r2, [r2, #0]
 8006a78:	b343      	cbz	r3, 8006acc <__sprint_r.part.0+0x64>
 8006a7a:	460e      	mov	r6, r1
 8006a7c:	4607      	mov	r7, r0
 8006a7e:	f102 0908 	add.w	r9, r2, #8
 8006a82:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006a86:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006a8a:	d015      	beq.n	8006ab8 <__sprint_r.part.0+0x50>
 8006a8c:	3d04      	subs	r5, #4
 8006a8e:	2400      	movs	r4, #0
 8006a90:	e001      	b.n	8006a96 <__sprint_r.part.0+0x2e>
 8006a92:	45a0      	cmp	r8, r4
 8006a94:	d00e      	beq.n	8006ab4 <__sprint_r.part.0+0x4c>
 8006a96:	4632      	mov	r2, r6
 8006a98:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006a9c:	4638      	mov	r0, r7
 8006a9e:	f000 f99d 	bl	8006ddc <_fputwc_r>
 8006aa2:	1c43      	adds	r3, r0, #1
 8006aa4:	f104 0401 	add.w	r4, r4, #1
 8006aa8:	d1f3      	bne.n	8006a92 <__sprint_r.part.0+0x2a>
 8006aaa:	2300      	movs	r3, #0
 8006aac:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006ab0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ab4:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006ab8:	f02b 0b03 	bic.w	fp, fp, #3
 8006abc:	eba3 030b 	sub.w	r3, r3, fp
 8006ac0:	f8ca 3008 	str.w	r3, [sl, #8]
 8006ac4:	f109 0908 	add.w	r9, r9, #8
 8006ac8:	2b00      	cmp	r3, #0
 8006aca:	d1da      	bne.n	8006a82 <__sprint_r.part.0+0x1a>
 8006acc:	2000      	movs	r0, #0
 8006ace:	e7ec      	b.n	8006aaa <__sprint_r.part.0+0x42>
 8006ad0:	f7fe ffce 	bl	8005a70 <__sfvwrite_r>
 8006ad4:	2300      	movs	r3, #0
 8006ad6:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006ada:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ade:	bf00      	nop

08006ae0 <__sprint_r>:
 8006ae0:	6893      	ldr	r3, [r2, #8]
 8006ae2:	b10b      	cbz	r3, 8006ae8 <__sprint_r+0x8>
 8006ae4:	f7ff bfc0 	b.w	8006a68 <__sprint_r.part.0>
 8006ae8:	b410      	push	{r4}
 8006aea:	4618      	mov	r0, r3
 8006aec:	6053      	str	r3, [r2, #4]
 8006aee:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006af2:	4770      	bx	lr

08006af4 <_write_r>:
 8006af4:	b570      	push	{r4, r5, r6, lr}
 8006af6:	460d      	mov	r5, r1
 8006af8:	4c08      	ldr	r4, [pc, #32]	; (8006b1c <_write_r+0x28>)
 8006afa:	4611      	mov	r1, r2
 8006afc:	4606      	mov	r6, r0
 8006afe:	461a      	mov	r2, r3
 8006b00:	4628      	mov	r0, r5
 8006b02:	2300      	movs	r3, #0
 8006b04:	6023      	str	r3, [r4, #0]
 8006b06:	f7fb fb3c 	bl	8002182 <_write>
 8006b0a:	1c43      	adds	r3, r0, #1
 8006b0c:	d000      	beq.n	8006b10 <_write_r+0x1c>
 8006b0e:	bd70      	pop	{r4, r5, r6, pc}
 8006b10:	6823      	ldr	r3, [r4, #0]
 8006b12:	2b00      	cmp	r3, #0
 8006b14:	d0fb      	beq.n	8006b0e <_write_r+0x1a>
 8006b16:	6033      	str	r3, [r6, #0]
 8006b18:	bd70      	pop	{r4, r5, r6, pc}
 8006b1a:	bf00      	nop
 8006b1c:	20000cec 	.word	0x20000cec

08006b20 <__register_exitproc>:
 8006b20:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006b24:	4d2b      	ldr	r5, [pc, #172]	; (8006bd4 <__register_exitproc+0xb4>)
 8006b26:	4606      	mov	r6, r0
 8006b28:	6828      	ldr	r0, [r5, #0]
 8006b2a:	4698      	mov	r8, r3
 8006b2c:	460f      	mov	r7, r1
 8006b2e:	4691      	mov	r9, r2
 8006b30:	f7ff f958 	bl	8005de4 <__retarget_lock_acquire_recursive>
 8006b34:	4b28      	ldr	r3, [pc, #160]	; (8006bd8 <__register_exitproc+0xb8>)
 8006b36:	681c      	ldr	r4, [r3, #0]
 8006b38:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006b3c:	2b00      	cmp	r3, #0
 8006b3e:	d03d      	beq.n	8006bbc <__register_exitproc+0x9c>
 8006b40:	685a      	ldr	r2, [r3, #4]
 8006b42:	2a1f      	cmp	r2, #31
 8006b44:	dc0d      	bgt.n	8006b62 <__register_exitproc+0x42>
 8006b46:	f102 0c01 	add.w	ip, r2, #1
 8006b4a:	bb16      	cbnz	r6, 8006b92 <__register_exitproc+0x72>
 8006b4c:	3202      	adds	r2, #2
 8006b4e:	f8c3 c004 	str.w	ip, [r3, #4]
 8006b52:	6828      	ldr	r0, [r5, #0]
 8006b54:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006b58:	f7ff f946 	bl	8005de8 <__retarget_lock_release_recursive>
 8006b5c:	2000      	movs	r0, #0
 8006b5e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006b62:	4b1e      	ldr	r3, [pc, #120]	; (8006bdc <__register_exitproc+0xbc>)
 8006b64:	b37b      	cbz	r3, 8006bc6 <__register_exitproc+0xa6>
 8006b66:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006b6a:	f7fb fbc7 	bl	80022fc <malloc>
 8006b6e:	4603      	mov	r3, r0
 8006b70:	b348      	cbz	r0, 8006bc6 <__register_exitproc+0xa6>
 8006b72:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006b76:	2100      	movs	r1, #0
 8006b78:	e9c0 2100 	strd	r2, r1, [r0]
 8006b7c:	f04f 0c01 	mov.w	ip, #1
 8006b80:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006b84:	460a      	mov	r2, r1
 8006b86:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006b8a:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006b8e:	2e00      	cmp	r6, #0
 8006b90:	d0dc      	beq.n	8006b4c <__register_exitproc+0x2c>
 8006b92:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006b96:	2401      	movs	r4, #1
 8006b98:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006b9c:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006ba0:	4094      	lsls	r4, r2
 8006ba2:	4320      	orrs	r0, r4
 8006ba4:	2e02      	cmp	r6, #2
 8006ba6:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006baa:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006bae:	d1cd      	bne.n	8006b4c <__register_exitproc+0x2c>
 8006bb0:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006bb4:	430c      	orrs	r4, r1
 8006bb6:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006bba:	e7c7      	b.n	8006b4c <__register_exitproc+0x2c>
 8006bbc:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006bc0:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006bc4:	e7bc      	b.n	8006b40 <__register_exitproc+0x20>
 8006bc6:	6828      	ldr	r0, [r5, #0]
 8006bc8:	f7ff f90e 	bl	8005de8 <__retarget_lock_release_recursive>
 8006bcc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006bd0:	e7c5      	b.n	8006b5e <__register_exitproc+0x3e>
 8006bd2:	bf00      	nop
 8006bd4:	200009e8 	.word	0x200009e8
 8006bd8:	0800717c 	.word	0x0800717c
 8006bdc:	080022fd 	.word	0x080022fd

08006be0 <_calloc_r>:
 8006be0:	b510      	push	{r4, lr}
 8006be2:	fb02 f101 	mul.w	r1, r2, r1
 8006be6:	f7fb fb99 	bl	800231c <_malloc_r>
 8006bea:	4604      	mov	r4, r0
 8006bec:	b1d8      	cbz	r0, 8006c26 <_calloc_r+0x46>
 8006bee:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006bf2:	f022 0203 	bic.w	r2, r2, #3
 8006bf6:	3a04      	subs	r2, #4
 8006bf8:	2a24      	cmp	r2, #36	; 0x24
 8006bfa:	d81d      	bhi.n	8006c38 <_calloc_r+0x58>
 8006bfc:	2a13      	cmp	r2, #19
 8006bfe:	d914      	bls.n	8006c2a <_calloc_r+0x4a>
 8006c00:	2300      	movs	r3, #0
 8006c02:	2a1b      	cmp	r2, #27
 8006c04:	e9c0 3300 	strd	r3, r3, [r0]
 8006c08:	d91b      	bls.n	8006c42 <_calloc_r+0x62>
 8006c0a:	2a24      	cmp	r2, #36	; 0x24
 8006c0c:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006c10:	bf0a      	itet	eq
 8006c12:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006c16:	f100 0210 	addne.w	r2, r0, #16
 8006c1a:	f100 0218 	addeq.w	r2, r0, #24
 8006c1e:	2300      	movs	r3, #0
 8006c20:	e9c2 3300 	strd	r3, r3, [r2]
 8006c24:	6093      	str	r3, [r2, #8]
 8006c26:	4620      	mov	r0, r4
 8006c28:	bd10      	pop	{r4, pc}
 8006c2a:	4602      	mov	r2, r0
 8006c2c:	2300      	movs	r3, #0
 8006c2e:	e9c2 3300 	strd	r3, r3, [r2]
 8006c32:	6093      	str	r3, [r2, #8]
 8006c34:	4620      	mov	r0, r4
 8006c36:	bd10      	pop	{r4, pc}
 8006c38:	2100      	movs	r1, #0
 8006c3a:	f7fb fe13 	bl	8002864 <memset>
 8006c3e:	4620      	mov	r0, r4
 8006c40:	bd10      	pop	{r4, pc}
 8006c42:	f100 0208 	add.w	r2, r0, #8
 8006c46:	e7f1      	b.n	8006c2c <_calloc_r+0x4c>

08006c48 <_close_r>:
 8006c48:	b538      	push	{r3, r4, r5, lr}
 8006c4a:	4c07      	ldr	r4, [pc, #28]	; (8006c68 <_close_r+0x20>)
 8006c4c:	2300      	movs	r3, #0
 8006c4e:	4605      	mov	r5, r0
 8006c50:	4608      	mov	r0, r1
 8006c52:	6023      	str	r3, [r4, #0]
 8006c54:	f7fb fac4 	bl	80021e0 <_close>
 8006c58:	1c43      	adds	r3, r0, #1
 8006c5a:	d000      	beq.n	8006c5e <_close_r+0x16>
 8006c5c:	bd38      	pop	{r3, r4, r5, pc}
 8006c5e:	6823      	ldr	r3, [r4, #0]
 8006c60:	2b00      	cmp	r3, #0
 8006c62:	d0fb      	beq.n	8006c5c <_close_r+0x14>
 8006c64:	602b      	str	r3, [r5, #0]
 8006c66:	bd38      	pop	{r3, r4, r5, pc}
 8006c68:	20000cec 	.word	0x20000cec

08006c6c <_fclose_r>:
 8006c6c:	b570      	push	{r4, r5, r6, lr}
 8006c6e:	2900      	cmp	r1, #0
 8006c70:	d048      	beq.n	8006d04 <_fclose_r+0x98>
 8006c72:	4605      	mov	r5, r0
 8006c74:	460c      	mov	r4, r1
 8006c76:	b110      	cbz	r0, 8006c7e <_fclose_r+0x12>
 8006c78:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006c7a:	2b00      	cmp	r3, #0
 8006c7c:	d048      	beq.n	8006d10 <_fclose_r+0xa4>
 8006c7e:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c80:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c84:	07d0      	lsls	r0, r2, #31
 8006c86:	d440      	bmi.n	8006d0a <_fclose_r+0x9e>
 8006c88:	0599      	lsls	r1, r3, #22
 8006c8a:	d530      	bpl.n	8006cee <_fclose_r+0x82>
 8006c8c:	4621      	mov	r1, r4
 8006c8e:	4628      	mov	r0, r5
 8006c90:	f7fe fc52 	bl	8005538 <__sflush_r>
 8006c94:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006c96:	4606      	mov	r6, r0
 8006c98:	b133      	cbz	r3, 8006ca8 <_fclose_r+0x3c>
 8006c9a:	69e1      	ldr	r1, [r4, #28]
 8006c9c:	4628      	mov	r0, r5
 8006c9e:	4798      	blx	r3
 8006ca0:	2800      	cmp	r0, #0
 8006ca2:	bfb8      	it	lt
 8006ca4:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006ca8:	89a3      	ldrh	r3, [r4, #12]
 8006caa:	061a      	lsls	r2, r3, #24
 8006cac:	d43c      	bmi.n	8006d28 <_fclose_r+0xbc>
 8006cae:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006cb0:	b141      	cbz	r1, 8006cc4 <_fclose_r+0x58>
 8006cb2:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006cb6:	4299      	cmp	r1, r3
 8006cb8:	d002      	beq.n	8006cc0 <_fclose_r+0x54>
 8006cba:	4628      	mov	r0, r5
 8006cbc:	f7fe fde4 	bl	8005888 <_free_r>
 8006cc0:	2300      	movs	r3, #0
 8006cc2:	6323      	str	r3, [r4, #48]	; 0x30
 8006cc4:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006cc6:	b121      	cbz	r1, 8006cd2 <_fclose_r+0x66>
 8006cc8:	4628      	mov	r0, r5
 8006cca:	f7fe fddd 	bl	8005888 <_free_r>
 8006cce:	2300      	movs	r3, #0
 8006cd0:	6463      	str	r3, [r4, #68]	; 0x44
 8006cd2:	f7fe fd63 	bl	800579c <__sfp_lock_acquire>
 8006cd6:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006cd8:	2200      	movs	r2, #0
 8006cda:	07db      	lsls	r3, r3, #31
 8006cdc:	81a2      	strh	r2, [r4, #12]
 8006cde:	d51f      	bpl.n	8006d20 <_fclose_r+0xb4>
 8006ce0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ce2:	f7ff f87d 	bl	8005de0 <__retarget_lock_close_recursive>
 8006ce6:	f7fe fd5f 	bl	80057a8 <__sfp_lock_release>
 8006cea:	4630      	mov	r0, r6
 8006cec:	bd70      	pop	{r4, r5, r6, pc}
 8006cee:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cf0:	f7ff f878 	bl	8005de4 <__retarget_lock_acquire_recursive>
 8006cf4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cf8:	2b00      	cmp	r3, #0
 8006cfa:	d1c7      	bne.n	8006c8c <_fclose_r+0x20>
 8006cfc:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006cfe:	f016 0601 	ands.w	r6, r6, #1
 8006d02:	d016      	beq.n	8006d32 <_fclose_r+0xc6>
 8006d04:	2600      	movs	r6, #0
 8006d06:	4630      	mov	r0, r6
 8006d08:	bd70      	pop	{r4, r5, r6, pc}
 8006d0a:	2b00      	cmp	r3, #0
 8006d0c:	d0fa      	beq.n	8006d04 <_fclose_r+0x98>
 8006d0e:	e7bd      	b.n	8006c8c <_fclose_r+0x20>
 8006d10:	f7fe fd18 	bl	8005744 <__sinit>
 8006d14:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d16:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d1a:	07d0      	lsls	r0, r2, #31
 8006d1c:	d4f5      	bmi.n	8006d0a <_fclose_r+0x9e>
 8006d1e:	e7b3      	b.n	8006c88 <_fclose_r+0x1c>
 8006d20:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d22:	f7ff f861 	bl	8005de8 <__retarget_lock_release_recursive>
 8006d26:	e7db      	b.n	8006ce0 <_fclose_r+0x74>
 8006d28:	6921      	ldr	r1, [r4, #16]
 8006d2a:	4628      	mov	r0, r5
 8006d2c:	f7fe fdac 	bl	8005888 <_free_r>
 8006d30:	e7bd      	b.n	8006cae <_fclose_r+0x42>
 8006d32:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d34:	f7ff f858 	bl	8005de8 <__retarget_lock_release_recursive>
 8006d38:	4630      	mov	r0, r6
 8006d3a:	bd70      	pop	{r4, r5, r6, pc}

08006d3c <__fputwc>:
 8006d3c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006d40:	b082      	sub	sp, #8
 8006d42:	4681      	mov	r9, r0
 8006d44:	4688      	mov	r8, r1
 8006d46:	4614      	mov	r4, r2
 8006d48:	f000 f8a0 	bl	8006e8c <__locale_mb_cur_max>
 8006d4c:	2801      	cmp	r0, #1
 8006d4e:	d103      	bne.n	8006d58 <__fputwc+0x1c>
 8006d50:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006d54:	2bfe      	cmp	r3, #254	; 0xfe
 8006d56:	d933      	bls.n	8006dc0 <__fputwc+0x84>
 8006d58:	4642      	mov	r2, r8
 8006d5a:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006d5e:	a901      	add	r1, sp, #4
 8006d60:	4648      	mov	r0, r9
 8006d62:	f000 f93b 	bl	8006fdc <_wcrtomb_r>
 8006d66:	1c42      	adds	r2, r0, #1
 8006d68:	4606      	mov	r6, r0
 8006d6a:	d02f      	beq.n	8006dcc <__fputwc+0x90>
 8006d6c:	b320      	cbz	r0, 8006db8 <__fputwc+0x7c>
 8006d6e:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006d72:	2500      	movs	r5, #0
 8006d74:	f10d 0a04 	add.w	sl, sp, #4
 8006d78:	e009      	b.n	8006d8e <__fputwc+0x52>
 8006d7a:	6823      	ldr	r3, [r4, #0]
 8006d7c:	1c5a      	adds	r2, r3, #1
 8006d7e:	6022      	str	r2, [r4, #0]
 8006d80:	f883 c000 	strb.w	ip, [r3]
 8006d84:	3501      	adds	r5, #1
 8006d86:	42b5      	cmp	r5, r6
 8006d88:	d216      	bcs.n	8006db8 <__fputwc+0x7c>
 8006d8a:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006d8e:	68a3      	ldr	r3, [r4, #8]
 8006d90:	3b01      	subs	r3, #1
 8006d92:	2b00      	cmp	r3, #0
 8006d94:	60a3      	str	r3, [r4, #8]
 8006d96:	daf0      	bge.n	8006d7a <__fputwc+0x3e>
 8006d98:	69a7      	ldr	r7, [r4, #24]
 8006d9a:	42bb      	cmp	r3, r7
 8006d9c:	4661      	mov	r1, ip
 8006d9e:	4622      	mov	r2, r4
 8006da0:	4648      	mov	r0, r9
 8006da2:	db02      	blt.n	8006daa <__fputwc+0x6e>
 8006da4:	f1bc 0f0a 	cmp.w	ip, #10
 8006da8:	d1e7      	bne.n	8006d7a <__fputwc+0x3e>
 8006daa:	f000 f8bf 	bl	8006f2c <__swbuf_r>
 8006dae:	1c43      	adds	r3, r0, #1
 8006db0:	d1e8      	bne.n	8006d84 <__fputwc+0x48>
 8006db2:	b002      	add	sp, #8
 8006db4:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006db8:	4640      	mov	r0, r8
 8006dba:	b002      	add	sp, #8
 8006dbc:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006dc0:	fa5f fc88 	uxtb.w	ip, r8
 8006dc4:	4606      	mov	r6, r0
 8006dc6:	f88d c004 	strb.w	ip, [sp, #4]
 8006dca:	e7d2      	b.n	8006d72 <__fputwc+0x36>
 8006dcc:	89a3      	ldrh	r3, [r4, #12]
 8006dce:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006dd2:	81a3      	strh	r3, [r4, #12]
 8006dd4:	b002      	add	sp, #8
 8006dd6:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006dda:	bf00      	nop

08006ddc <_fputwc_r>:
 8006ddc:	b530      	push	{r4, r5, lr}
 8006dde:	4605      	mov	r5, r0
 8006de0:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006de2:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006de6:	07c0      	lsls	r0, r0, #31
 8006de8:	4614      	mov	r4, r2
 8006dea:	b083      	sub	sp, #12
 8006dec:	b29a      	uxth	r2, r3
 8006dee:	d401      	bmi.n	8006df4 <_fputwc_r+0x18>
 8006df0:	0590      	lsls	r0, r2, #22
 8006df2:	d51c      	bpl.n	8006e2e <_fputwc_r+0x52>
 8006df4:	0490      	lsls	r0, r2, #18
 8006df6:	d406      	bmi.n	8006e06 <_fputwc_r+0x2a>
 8006df8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006dfa:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006dfe:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006e02:	81a3      	strh	r3, [r4, #12]
 8006e04:	6662      	str	r2, [r4, #100]	; 0x64
 8006e06:	4628      	mov	r0, r5
 8006e08:	4622      	mov	r2, r4
 8006e0a:	f7ff ff97 	bl	8006d3c <__fputwc>
 8006e0e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006e10:	07da      	lsls	r2, r3, #31
 8006e12:	4605      	mov	r5, r0
 8006e14:	d402      	bmi.n	8006e1c <_fputwc_r+0x40>
 8006e16:	89a3      	ldrh	r3, [r4, #12]
 8006e18:	059b      	lsls	r3, r3, #22
 8006e1a:	d502      	bpl.n	8006e22 <_fputwc_r+0x46>
 8006e1c:	4628      	mov	r0, r5
 8006e1e:	b003      	add	sp, #12
 8006e20:	bd30      	pop	{r4, r5, pc}
 8006e22:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e24:	f7fe ffe0 	bl	8005de8 <__retarget_lock_release_recursive>
 8006e28:	4628      	mov	r0, r5
 8006e2a:	b003      	add	sp, #12
 8006e2c:	bd30      	pop	{r4, r5, pc}
 8006e2e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e30:	9101      	str	r1, [sp, #4]
 8006e32:	f7fe ffd7 	bl	8005de4 <__retarget_lock_acquire_recursive>
 8006e36:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e3a:	9901      	ldr	r1, [sp, #4]
 8006e3c:	b29a      	uxth	r2, r3
 8006e3e:	e7d9      	b.n	8006df4 <_fputwc_r+0x18>

08006e40 <_fstat_r>:
 8006e40:	b538      	push	{r3, r4, r5, lr}
 8006e42:	460b      	mov	r3, r1
 8006e44:	4c07      	ldr	r4, [pc, #28]	; (8006e64 <_fstat_r+0x24>)
 8006e46:	4605      	mov	r5, r0
 8006e48:	4611      	mov	r1, r2
 8006e4a:	4618      	mov	r0, r3
 8006e4c:	2300      	movs	r3, #0
 8006e4e:	6023      	str	r3, [r4, #0]
 8006e50:	f7fb f9c9 	bl	80021e6 <_fstat>
 8006e54:	1c43      	adds	r3, r0, #1
 8006e56:	d000      	beq.n	8006e5a <_fstat_r+0x1a>
 8006e58:	bd38      	pop	{r3, r4, r5, pc}
 8006e5a:	6823      	ldr	r3, [r4, #0]
 8006e5c:	2b00      	cmp	r3, #0
 8006e5e:	d0fb      	beq.n	8006e58 <_fstat_r+0x18>
 8006e60:	602b      	str	r3, [r5, #0]
 8006e62:	bd38      	pop	{r3, r4, r5, pc}
 8006e64:	20000cec 	.word	0x20000cec

08006e68 <_isatty_r>:
 8006e68:	b538      	push	{r3, r4, r5, lr}
 8006e6a:	4c07      	ldr	r4, [pc, #28]	; (8006e88 <_isatty_r+0x20>)
 8006e6c:	2300      	movs	r3, #0
 8006e6e:	4605      	mov	r5, r0
 8006e70:	4608      	mov	r0, r1
 8006e72:	6023      	str	r3, [r4, #0]
 8006e74:	f7fb f9bc 	bl	80021f0 <_isatty>
 8006e78:	1c43      	adds	r3, r0, #1
 8006e7a:	d000      	beq.n	8006e7e <_isatty_r+0x16>
 8006e7c:	bd38      	pop	{r3, r4, r5, pc}
 8006e7e:	6823      	ldr	r3, [r4, #0]
 8006e80:	2b00      	cmp	r3, #0
 8006e82:	d0fb      	beq.n	8006e7c <_isatty_r+0x14>
 8006e84:	602b      	str	r3, [r5, #0]
 8006e86:	bd38      	pop	{r3, r4, r5, pc}
 8006e88:	20000cec 	.word	0x20000cec

08006e8c <__locale_mb_cur_max>:
 8006e8c:	4b04      	ldr	r3, [pc, #16]	; (8006ea0 <__locale_mb_cur_max+0x14>)
 8006e8e:	4a05      	ldr	r2, [pc, #20]	; (8006ea4 <__locale_mb_cur_max+0x18>)
 8006e90:	681b      	ldr	r3, [r3, #0]
 8006e92:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006e94:	2b00      	cmp	r3, #0
 8006e96:	bf08      	it	eq
 8006e98:	4613      	moveq	r3, r2
 8006e9a:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006e9e:	4770      	bx	lr
 8006ea0:	200001a8 	.word	0x200001a8
 8006ea4:	200009ec 	.word	0x200009ec

08006ea8 <_lseek_r>:
 8006ea8:	b570      	push	{r4, r5, r6, lr}
 8006eaa:	460d      	mov	r5, r1
 8006eac:	4c08      	ldr	r4, [pc, #32]	; (8006ed0 <_lseek_r+0x28>)
 8006eae:	4611      	mov	r1, r2
 8006eb0:	4606      	mov	r6, r0
 8006eb2:	461a      	mov	r2, r3
 8006eb4:	4628      	mov	r0, r5
 8006eb6:	2300      	movs	r3, #0
 8006eb8:	6023      	str	r3, [r4, #0]
 8006eba:	f7fb f99b 	bl	80021f4 <_lseek>
 8006ebe:	1c43      	adds	r3, r0, #1
 8006ec0:	d000      	beq.n	8006ec4 <_lseek_r+0x1c>
 8006ec2:	bd70      	pop	{r4, r5, r6, pc}
 8006ec4:	6823      	ldr	r3, [r4, #0]
 8006ec6:	2b00      	cmp	r3, #0
 8006ec8:	d0fb      	beq.n	8006ec2 <_lseek_r+0x1a>
 8006eca:	6033      	str	r3, [r6, #0]
 8006ecc:	bd70      	pop	{r4, r5, r6, pc}
 8006ece:	bf00      	nop
 8006ed0:	20000cec 	.word	0x20000cec

08006ed4 <__ascii_mbtowc>:
 8006ed4:	b082      	sub	sp, #8
 8006ed6:	b149      	cbz	r1, 8006eec <__ascii_mbtowc+0x18>
 8006ed8:	b15a      	cbz	r2, 8006ef2 <__ascii_mbtowc+0x1e>
 8006eda:	b16b      	cbz	r3, 8006ef8 <__ascii_mbtowc+0x24>
 8006edc:	7813      	ldrb	r3, [r2, #0]
 8006ede:	600b      	str	r3, [r1, #0]
 8006ee0:	7812      	ldrb	r2, [r2, #0]
 8006ee2:	1c10      	adds	r0, r2, #0
 8006ee4:	bf18      	it	ne
 8006ee6:	2001      	movne	r0, #1
 8006ee8:	b002      	add	sp, #8
 8006eea:	4770      	bx	lr
 8006eec:	a901      	add	r1, sp, #4
 8006eee:	2a00      	cmp	r2, #0
 8006ef0:	d1f3      	bne.n	8006eda <__ascii_mbtowc+0x6>
 8006ef2:	4610      	mov	r0, r2
 8006ef4:	b002      	add	sp, #8
 8006ef6:	4770      	bx	lr
 8006ef8:	f06f 0001 	mvn.w	r0, #1
 8006efc:	e7f4      	b.n	8006ee8 <__ascii_mbtowc+0x14>
 8006efe:	bf00      	nop

08006f00 <_read_r>:
 8006f00:	b570      	push	{r4, r5, r6, lr}
 8006f02:	460d      	mov	r5, r1
 8006f04:	4c08      	ldr	r4, [pc, #32]	; (8006f28 <_read_r+0x28>)
 8006f06:	4611      	mov	r1, r2
 8006f08:	4606      	mov	r6, r0
 8006f0a:	461a      	mov	r2, r3
 8006f0c:	4628      	mov	r0, r5
 8006f0e:	2300      	movs	r3, #0
 8006f10:	6023      	str	r3, [r4, #0]
 8006f12:	f7fb f923 	bl	800215c <_read>
 8006f16:	1c43      	adds	r3, r0, #1
 8006f18:	d000      	beq.n	8006f1c <_read_r+0x1c>
 8006f1a:	bd70      	pop	{r4, r5, r6, pc}
 8006f1c:	6823      	ldr	r3, [r4, #0]
 8006f1e:	2b00      	cmp	r3, #0
 8006f20:	d0fb      	beq.n	8006f1a <_read_r+0x1a>
 8006f22:	6033      	str	r3, [r6, #0]
 8006f24:	bd70      	pop	{r4, r5, r6, pc}
 8006f26:	bf00      	nop
 8006f28:	20000cec 	.word	0x20000cec

08006f2c <__swbuf_r>:
 8006f2c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f2e:	460d      	mov	r5, r1
 8006f30:	4614      	mov	r4, r2
 8006f32:	4606      	mov	r6, r0
 8006f34:	b110      	cbz	r0, 8006f3c <__swbuf_r+0x10>
 8006f36:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f38:	2b00      	cmp	r3, #0
 8006f3a:	d043      	beq.n	8006fc4 <__swbuf_r+0x98>
 8006f3c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f40:	69a3      	ldr	r3, [r4, #24]
 8006f42:	60a3      	str	r3, [r4, #8]
 8006f44:	b291      	uxth	r1, r2
 8006f46:	0708      	lsls	r0, r1, #28
 8006f48:	d51b      	bpl.n	8006f82 <__swbuf_r+0x56>
 8006f4a:	6923      	ldr	r3, [r4, #16]
 8006f4c:	b1cb      	cbz	r3, 8006f82 <__swbuf_r+0x56>
 8006f4e:	b2ed      	uxtb	r5, r5
 8006f50:	0489      	lsls	r1, r1, #18
 8006f52:	462f      	mov	r7, r5
 8006f54:	d522      	bpl.n	8006f9c <__swbuf_r+0x70>
 8006f56:	6822      	ldr	r2, [r4, #0]
 8006f58:	6961      	ldr	r1, [r4, #20]
 8006f5a:	1ad3      	subs	r3, r2, r3
 8006f5c:	4299      	cmp	r1, r3
 8006f5e:	dd29      	ble.n	8006fb4 <__swbuf_r+0x88>
 8006f60:	3301      	adds	r3, #1
 8006f62:	68a1      	ldr	r1, [r4, #8]
 8006f64:	1c50      	adds	r0, r2, #1
 8006f66:	3901      	subs	r1, #1
 8006f68:	60a1      	str	r1, [r4, #8]
 8006f6a:	6020      	str	r0, [r4, #0]
 8006f6c:	7015      	strb	r5, [r2, #0]
 8006f6e:	6962      	ldr	r2, [r4, #20]
 8006f70:	429a      	cmp	r2, r3
 8006f72:	d02a      	beq.n	8006fca <__swbuf_r+0x9e>
 8006f74:	89a3      	ldrh	r3, [r4, #12]
 8006f76:	07db      	lsls	r3, r3, #31
 8006f78:	d501      	bpl.n	8006f7e <__swbuf_r+0x52>
 8006f7a:	2d0a      	cmp	r5, #10
 8006f7c:	d025      	beq.n	8006fca <__swbuf_r+0x9e>
 8006f7e:	4638      	mov	r0, r7
 8006f80:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006f82:	4621      	mov	r1, r4
 8006f84:	4630      	mov	r0, r6
 8006f86:	f7fd fabf 	bl	8004508 <__swsetup_r>
 8006f8a:	bb20      	cbnz	r0, 8006fd6 <__swbuf_r+0xaa>
 8006f8c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f90:	6923      	ldr	r3, [r4, #16]
 8006f92:	b291      	uxth	r1, r2
 8006f94:	b2ed      	uxtb	r5, r5
 8006f96:	0489      	lsls	r1, r1, #18
 8006f98:	462f      	mov	r7, r5
 8006f9a:	d4dc      	bmi.n	8006f56 <__swbuf_r+0x2a>
 8006f9c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006f9e:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006fa2:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006fa6:	81a2      	strh	r2, [r4, #12]
 8006fa8:	6822      	ldr	r2, [r4, #0]
 8006faa:	6661      	str	r1, [r4, #100]	; 0x64
 8006fac:	6961      	ldr	r1, [r4, #20]
 8006fae:	1ad3      	subs	r3, r2, r3
 8006fb0:	4299      	cmp	r1, r3
 8006fb2:	dcd5      	bgt.n	8006f60 <__swbuf_r+0x34>
 8006fb4:	4621      	mov	r1, r4
 8006fb6:	4630      	mov	r0, r6
 8006fb8:	f7fe fb68 	bl	800568c <_fflush_r>
 8006fbc:	b958      	cbnz	r0, 8006fd6 <__swbuf_r+0xaa>
 8006fbe:	6822      	ldr	r2, [r4, #0]
 8006fc0:	2301      	movs	r3, #1
 8006fc2:	e7ce      	b.n	8006f62 <__swbuf_r+0x36>
 8006fc4:	f7fe fbbe 	bl	8005744 <__sinit>
 8006fc8:	e7b8      	b.n	8006f3c <__swbuf_r+0x10>
 8006fca:	4621      	mov	r1, r4
 8006fcc:	4630      	mov	r0, r6
 8006fce:	f7fe fb5d 	bl	800568c <_fflush_r>
 8006fd2:	2800      	cmp	r0, #0
 8006fd4:	d0d3      	beq.n	8006f7e <__swbuf_r+0x52>
 8006fd6:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006fda:	e7d0      	b.n	8006f7e <__swbuf_r+0x52>

08006fdc <_wcrtomb_r>:
 8006fdc:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006fde:	4c11      	ldr	r4, [pc, #68]	; (8007024 <_wcrtomb_r+0x48>)
 8006fe0:	6824      	ldr	r4, [r4, #0]
 8006fe2:	b085      	sub	sp, #20
 8006fe4:	4606      	mov	r6, r0
 8006fe6:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006fe8:	461f      	mov	r7, r3
 8006fea:	b151      	cbz	r1, 8007002 <_wcrtomb_r+0x26>
 8006fec:	4d0e      	ldr	r5, [pc, #56]	; (8007028 <_wcrtomb_r+0x4c>)
 8006fee:	2c00      	cmp	r4, #0
 8006ff0:	bf08      	it	eq
 8006ff2:	462c      	moveq	r4, r5
 8006ff4:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006ff8:	47a0      	blx	r4
 8006ffa:	1c43      	adds	r3, r0, #1
 8006ffc:	d00c      	beq.n	8007018 <_wcrtomb_r+0x3c>
 8006ffe:	b005      	add	sp, #20
 8007000:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007002:	4a09      	ldr	r2, [pc, #36]	; (8007028 <_wcrtomb_r+0x4c>)
 8007004:	2c00      	cmp	r4, #0
 8007006:	bf08      	it	eq
 8007008:	4614      	moveq	r4, r2
 800700a:	460a      	mov	r2, r1
 800700c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007010:	a901      	add	r1, sp, #4
 8007012:	47a0      	blx	r4
 8007014:	1c43      	adds	r3, r0, #1
 8007016:	d1f2      	bne.n	8006ffe <_wcrtomb_r+0x22>
 8007018:	2200      	movs	r2, #0
 800701a:	238a      	movs	r3, #138	; 0x8a
 800701c:	603a      	str	r2, [r7, #0]
 800701e:	6033      	str	r3, [r6, #0]
 8007020:	b005      	add	sp, #20
 8007022:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007024:	200001a8 	.word	0x200001a8
 8007028:	200009ec 	.word	0x200009ec

0800702c <__ascii_wctomb>:
 800702c:	b121      	cbz	r1, 8007038 <__ascii_wctomb+0xc>
 800702e:	2aff      	cmp	r2, #255	; 0xff
 8007030:	d804      	bhi.n	800703c <__ascii_wctomb+0x10>
 8007032:	700a      	strb	r2, [r1, #0]
 8007034:	2001      	movs	r0, #1
 8007036:	4770      	bx	lr
 8007038:	4608      	mov	r0, r1
 800703a:	4770      	bx	lr
 800703c:	238a      	movs	r3, #138	; 0x8a
 800703e:	6003      	str	r3, [r0, #0]
 8007040:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007044:	4770      	bx	lr
 8007046:	bf00      	nop

08007048 <_init>:
 8007048:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800704a:	bf00      	nop
 800704c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800704e:	bc08      	pop	{r3}
 8007050:	469e      	mov	lr, r3
 8007052:	4770      	bx	lr

08007054 <_fini>:
 8007054:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007056:	bf00      	nop
 8007058:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800705a:	bc08      	pop	{r3}
 800705c:	469e      	mov	lr, r3
 800705e:	4770      	bx	lr
