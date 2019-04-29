
sglib-dllist.elf:     file format elf32-littlearm


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
 80001e0:	080070a0 	.word	0x080070a0

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
 80001fc:	080070a0 	.word	0x080070a0

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
 80010ee:	f000 f819 	bl	8001124 <HAL_NVIC_SetPriorityGrouping>
 80010f2:	200f      	movs	r0, #15
 80010f4:	f000 fb84 	bl	8001800 <HAL_InitTick>
 80010f8:	2800      	cmp	r0, #0
 80010fa:	bf1c      	itt	ne
 80010fc:	2001      	movne	r0, #1
 80010fe:	bd80      	popne	{r7, pc}
 8001100:	f000 f94b 	bl	800139a <HAL_MspInit>
 8001104:	2000      	movs	r0, #0
 8001106:	bd80      	pop	{r7, pc}

08001108 <HAL_IncTick>:
 8001108:	f640 4030 	movw	r0, #3120	; 0xc30
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 4030 	movw	r0, #3120	; 0xc30
 800111c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001120:	6800      	ldr	r0, [r0, #0]
 8001122:	4770      	bx	lr

08001124 <HAL_NVIC_SetPriorityGrouping>:
 8001124:	f64e 510c 	movw	r1, #60684	; 0xed0c
 8001128:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 800112c:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001130:	680a      	ldr	r2, [r1, #0]
 8001132:	401a      	ands	r2, r3
 8001134:	f360 220a 	bfi	r2, r0, #8, #3
 8001138:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 800113c:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001140:	6008      	str	r0, [r1, #0]
 8001142:	4770      	bx	lr

08001144 <HAL_NVIC_SetPriority>:
 8001144:	b580      	push	{r7, lr}
 8001146:	466f      	mov	r7, sp
 8001148:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 800114c:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001150:	2800      	cmp	r0, #0
 8001152:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001156:	f000 030f 	and.w	r3, r0, #15
 800115a:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 800115e:	f1a3 0304 	sub.w	r3, r3, #4
 8001162:	4473      	add	r3, lr
 8001164:	bfb8      	it	lt
 8001166:	f103 0c0c 	addlt.w	ip, r3, #12
 800116a:	f8de 0000 	ldr.w	r0, [lr]
 800116e:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001172:	f100 0e04 	add.w	lr, r0, #4
 8001176:	1ec3      	subs	r3, r0, #3
 8001178:	f080 0007 	eor.w	r0, r0, #7
 800117c:	f1be 0f07 	cmp.w	lr, #7
 8001180:	f04f 0e01 	mov.w	lr, #1
 8001184:	bf38      	it	cc
 8001186:	2300      	movcc	r3, #0
 8001188:	2804      	cmp	r0, #4
 800118a:	bf28      	it	cs
 800118c:	2004      	movcs	r0, #4
 800118e:	fa0e f000 	lsl.w	r0, lr, r0
 8001192:	3801      	subs	r0, #1
 8001194:	4008      	ands	r0, r1
 8001196:	fa0e f103 	lsl.w	r1, lr, r3
 800119a:	310f      	adds	r1, #15
 800119c:	4098      	lsls	r0, r3
 800119e:	4011      	ands	r1, r2
 80011a0:	4308      	orrs	r0, r1
 80011a2:	0100      	lsls	r0, r0, #4
 80011a4:	f88c 0000 	strb.w	r0, [ip]
 80011a8:	bd80      	pop	{r7, pc}

080011aa <HAL_NVIC_EnableIRQ>:
 80011aa:	f000 011f 	and.w	r1, r0, #31
 80011ae:	2201      	movs	r2, #1
 80011b0:	0940      	lsrs	r0, r0, #5
 80011b2:	fa02 f101 	lsl.w	r1, r2, r1
 80011b6:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011ba:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011be:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011c2:	4770      	bx	lr

080011c4 <HAL_SYSTICK_IRQHandler>:
 80011c4:	f000 b800 	b.w	80011c8 <HAL_SYSTICK_Callback>

080011c8 <HAL_SYSTICK_Callback>:
 80011c8:	4770      	bx	lr

080011ca <HAL_GPIO_Init>:
 80011ca:	b5f0      	push	{r4, r5, r6, r7, lr}
 80011cc:	af03      	add	r7, sp, #12
 80011ce:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80011d2:	b082      	sub	sp, #8
 80011d4:	680e      	ldr	r6, [r1, #0]
 80011d6:	2e00      	cmp	r6, #0
 80011d8:	f000 80db 	beq.w	8001392 <HAL_GPIO_Init+0x1c8>
 80011dc:	f641 0200 	movw	r2, #6144	; 0x1800
 80011e0:	2507      	movs	r5, #7
 80011e2:	f04f 0801 	mov.w	r8, #1
 80011e6:	f6c4 0200 	movt	r2, #18432	; 0x4800
 80011ea:	4290      	cmp	r0, r2
 80011ec:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 80011f0:	ea4f 23b2 	mov.w	r3, r2, ror #10
 80011f4:	bf08      	it	eq
 80011f6:	2506      	moveq	r5, #6
 80011f8:	2b06      	cmp	r3, #6
 80011fa:	bf38      	it	cc
 80011fc:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001200:	2200      	movs	r2, #0
 8001202:	9500      	str	r5, [sp, #0]
 8001204:	2500      	movs	r5, #0
 8001206:	f1a8 0a01 	sub.w	sl, r8, #1
 800120a:	2301      	movs	r3, #1
 800120c:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001210:	ea16 090b 	ands.w	r9, r6, fp
 8001214:	f000 80b4 	beq.w	8001380 <HAL_GPIO_Init+0x1b6>
 8001218:	f8d1 e004 	ldr.w	lr, [r1, #4]
 800121c:	f04e 0610 	orr.w	r6, lr, #16
 8001220:	2e12      	cmp	r6, #18
 8001222:	d115      	bne.n	8001250 <HAL_GPIO_Init+0x86>
 8001224:	f005 061c 	and.w	r6, r5, #28
 8001228:	230f      	movs	r3, #15
 800122a:	fa03 fc06 	lsl.w	ip, r3, r6
 800122e:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 8001232:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 8001236:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 800123a:	4404      	add	r4, r0
 800123c:	6a23      	ldr	r3, [r4, #32]
 800123e:	ea23 0c0c 	bic.w	ip, r3, ip
 8001242:	690b      	ldr	r3, [r1, #16]
 8001244:	40b3      	lsls	r3, r6
 8001246:	ea43 030c 	orr.w	r3, r3, ip
 800124a:	6223      	str	r3, [r4, #32]
 800124c:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001250:	6806      	ldr	r6, [r0, #0]
 8001252:	2403      	movs	r4, #3
 8001254:	f00e 0c03 	and.w	ip, lr, #3
 8001258:	f1be 0f12 	cmp.w	lr, #18
 800125c:	fa04 f402 	lsl.w	r4, r4, r2
 8001260:	fa0c f302 	lsl.w	r3, ip, r2
 8001264:	ea26 0604 	bic.w	r6, r6, r4
 8001268:	ea43 0306 	orr.w	r3, r3, r6
 800126c:	ea6f 0604 	mvn.w	r6, r4
 8001270:	6003      	str	r3, [r0, #0]
 8001272:	d816      	bhi.n	80012a2 <HAL_GPIO_Init+0xd8>
 8001274:	2301      	movs	r3, #1
 8001276:	fa03 f30e 	lsl.w	r3, r3, lr
 800127a:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 800127e:	bf1f      	itttt	ne
 8001280:	6883      	ldrne	r3, [r0, #8]
 8001282:	4033      	andne	r3, r6
 8001284:	68cc      	ldrne	r4, [r1, #12]
 8001286:	4094      	lslne	r4, r2
 8001288:	bf1f      	itttt	ne
 800128a:	4323      	orrne	r3, r4
 800128c:	6083      	strne	r3, [r0, #8]
 800128e:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001292:	fa03 f30a 	lslne.w	r3, r3, sl
 8001296:	bf1f      	itttt	ne
 8001298:	6844      	ldrne	r4, [r0, #4]
 800129a:	ea24 040b 	bicne.w	r4, r4, fp
 800129e:	4323      	orrne	r3, r4
 80012a0:	6043      	strne	r3, [r0, #4]
 80012a2:	f1bc 0f03 	cmp.w	ip, #3
 80012a6:	d108      	bne.n	80012ba <HAL_GPIO_Init+0xf0>
 80012a8:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012ac:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012ae:	fa03 f30a 	lsl.w	r3, r3, sl
 80012b2:	ea24 040b 	bic.w	r4, r4, fp
 80012b6:	4323      	orrs	r3, r4
 80012b8:	62c3      	str	r3, [r0, #44]	; 0x2c
 80012ba:	68c3      	ldr	r3, [r0, #12]
 80012bc:	4033      	ands	r3, r6
 80012be:	688e      	ldr	r6, [r1, #8]
 80012c0:	4096      	lsls	r6, r2
 80012c2:	4333      	orrs	r3, r6
 80012c4:	60c3      	str	r3, [r0, #12]
 80012c6:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012ca:	d559      	bpl.n	8001380 <HAL_GPIO_Init+0x1b6>
 80012cc:	f241 0360 	movw	r3, #4192	; 0x1060
 80012d0:	f005 040c 	and.w	r4, r5, #12
 80012d4:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80012d8:	461e      	mov	r6, r3
 80012da:	6833      	ldr	r3, [r6, #0]
 80012dc:	f043 0301 	orr.w	r3, r3, #1
 80012e0:	6033      	str	r3, [r6, #0]
 80012e2:	6833      	ldr	r3, [r6, #0]
 80012e4:	f240 4600 	movw	r6, #1024	; 0x400
 80012e8:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80012ec:	46b6      	mov	lr, r6
 80012ee:	f003 0301 	and.w	r3, r3, #1
 80012f2:	9301      	str	r3, [sp, #4]
 80012f4:	f02a 0303 	bic.w	r3, sl, #3
 80012f8:	9e01      	ldr	r6, [sp, #4]
 80012fa:	4473      	add	r3, lr
 80012fc:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001300:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8001304:	46b2      	mov	sl, r6
 8001306:	260f      	movs	r6, #15
 8001308:	f853 c00a 	ldr.w	ip, [r3, sl]
 800130c:	40a6      	lsls	r6, r4
 800130e:	ea2c 0c06 	bic.w	ip, ip, r6
 8001312:	9e00      	ldr	r6, [sp, #0]
 8001314:	fa06 f404 	lsl.w	r4, r6, r4
 8001318:	ea4c 0604 	orr.w	r6, ip, r4
 800131c:	f843 600a 	str.w	r6, [r3, sl]
 8001320:	f8de 3000 	ldr.w	r3, [lr]
 8001324:	684e      	ldr	r6, [r1, #4]
 8001326:	ea23 0309 	bic.w	r3, r3, r9
 800132a:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 800132e:	bf18      	it	ne
 8001330:	ea43 0309 	orrne.w	r3, r3, r9
 8001334:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001338:	f8ce 3000 	str.w	r3, [lr]
 800133c:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001340:	ea23 0309 	bic.w	r3, r3, r9
 8001344:	bf18      	it	ne
 8001346:	ea43 0309 	orrne.w	r3, r3, r9
 800134a:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800134e:	f8ce 3004 	str.w	r3, [lr, #4]
 8001352:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001356:	ea23 0309 	bic.w	r3, r3, r9
 800135a:	bf18      	it	ne
 800135c:	ea43 0309 	orrne.w	r3, r3, r9
 8001360:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001364:	f8ce 3008 	str.w	r3, [lr, #8]
 8001368:	f240 430c 	movw	r3, #1036	; 0x40c
 800136c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001370:	461c      	mov	r4, r3
 8001372:	6823      	ldr	r3, [r4, #0]
 8001374:	ea23 0309 	bic.w	r3, r3, r9
 8001378:	bf18      	it	ne
 800137a:	ea43 0309 	orrne.w	r3, r3, r9
 800137e:	6023      	str	r3, [r4, #0]
 8001380:	680e      	ldr	r6, [r1, #0]
 8001382:	3202      	adds	r2, #2
 8001384:	3504      	adds	r5, #4
 8001386:	fa36 f308 	lsrs.w	r3, r6, r8
 800138a:	f108 0801 	add.w	r8, r8, #1
 800138e:	f47f af3a 	bne.w	8001206 <HAL_GPIO_Init+0x3c>
 8001392:	b002      	add	sp, #8
 8001394:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001398:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800139a <HAL_MspInit>:
 800139a:	4770      	bx	lr

0800139c <HAL_RCC_GetSysClockFreq>:
 800139c:	b580      	push	{r7, lr}
 800139e:	466f      	mov	r7, sp
 80013a0:	f241 010c 	movw	r1, #4108	; 0x100c
 80013a4:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013a8:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013ac:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013b0:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013b4:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 80013b8:	f851 2c04 	ldr.w	r2, [r1, #-4]
 80013bc:	6808      	ldr	r0, [r1, #0]
 80013be:	f012 030c 	ands.w	r3, r2, #12
 80013c2:	d005      	beq.n	80013d0 <HAL_RCC_GetSysClockFreq+0x34>
 80013c4:	2b0c      	cmp	r3, #12
 80013c6:	bf04      	itt	eq
 80013c8:	f000 0003 	andeq.w	r0, r0, #3
 80013cc:	2801      	cmpeq	r0, #1
 80013ce:	d118      	bne.n	8001402 <HAL_RCC_GetSysClockFreq+0x66>
 80013d0:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013d4:	f010 0f08 	tst.w	r0, #8
 80013d8:	d103      	bne.n	80013e2 <HAL_RCC_GetSysClockFreq+0x46>
 80013da:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 80013de:	0a00      	lsrs	r0, r0, #8
 80013e0:	e002      	b.n	80013e8 <HAL_RCC_GetSysClockFreq+0x4c>
 80013e2:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80013e6:	0900      	lsrs	r0, r0, #4
 80013e8:	f247 02d0 	movw	r2, #28880	; 0x70d0
 80013ec:	f000 000f 	and.w	r0, r0, #15
 80013f0:	2b00      	cmp	r3, #0
 80013f2:	f6c0 0200 	movt	r2, #2048	; 0x800
 80013f6:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 80013fa:	4610      	mov	r0, r2
 80013fc:	bf18      	it	ne
 80013fe:	2000      	movne	r0, #0
 8001400:	e00b      	b.n	800141a <HAL_RCC_GetSysClockFreq+0x7e>
 8001402:	f003 000f 	and.w	r0, r3, #15
 8001406:	2804      	cmp	r0, #4
 8001408:	bf04      	itt	eq
 800140a:	4660      	moveq	r0, ip
 800140c:	bd80      	popeq	{r7, pc}
 800140e:	2808      	cmp	r0, #8
 8001410:	bf04      	itt	eq
 8001412:	4670      	moveq	r0, lr
 8001414:	bd80      	popeq	{r7, pc}
 8001416:	2000      	movs	r0, #0
 8001418:	2200      	movs	r2, #0
 800141a:	2b0c      	cmp	r3, #12
 800141c:	bf18      	it	ne
 800141e:	bd80      	popne	{r7, pc}
 8001420:	6808      	ldr	r0, [r1, #0]
 8001422:	f000 0303 	and.w	r3, r0, #3
 8001426:	6808      	ldr	r0, [r1, #0]
 8001428:	2b03      	cmp	r3, #3
 800142a:	f3c0 1002 	ubfx	r0, r0, #4, #3
 800142e:	f100 0001 	add.w	r0, r0, #1
 8001432:	d003      	beq.n	800143c <HAL_RCC_GetSysClockFreq+0xa0>
 8001434:	2b02      	cmp	r3, #2
 8001436:	46e6      	mov	lr, ip
 8001438:	bf18      	it	ne
 800143a:	4696      	movne	lr, r2
 800143c:	680a      	ldr	r2, [r1, #0]
 800143e:	fbbe f0f0 	udiv	r0, lr, r0
 8001442:	f3c2 2206 	ubfx	r2, r2, #8, #7
 8001446:	6809      	ldr	r1, [r1, #0]
 8001448:	4350      	muls	r0, r2
 800144a:	2202      	movs	r2, #2
 800144c:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001450:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001454:	fbb0 f0f1 	udiv	r0, r0, r1
 8001458:	bd80      	pop	{r7, pc}

0800145a <HAL_RCC_GetPCLK1Freq>:
 800145a:	f240 10a4 	movw	r0, #420	; 0x1a4
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f247 02c8 	movw	r2, #28872	; 0x70c8
 8001466:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800146a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800146e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001472:	6800      	ldr	r0, [r0, #0]
 8001474:	6809      	ldr	r1, [r1, #0]
 8001476:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800147a:	5c51      	ldrb	r1, [r2, r1]
 800147c:	f001 011f 	and.w	r1, r1, #31
 8001480:	40c8      	lsrs	r0, r1
 8001482:	4770      	bx	lr

08001484 <HAL_RCC_GetPCLK2Freq>:
 8001484:	f240 10a4 	movw	r0, #420	; 0x1a4
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f247 02c8 	movw	r2, #28872	; 0x70c8
 8001490:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001494:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001498:	f6c0 0200 	movt	r2, #2048	; 0x800
 800149c:	6800      	ldr	r0, [r0, #0]
 800149e:	6809      	ldr	r1, [r1, #0]
 80014a0:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014a4:	5c51      	ldrb	r1, [r2, r1]
 80014a6:	f001 011f 	and.w	r1, r1, #31
 80014aa:	40c8      	lsrs	r0, r1
 80014ac:	4770      	bx	lr

080014ae <HAL_RCC_GetClockConfig>:
 80014ae:	220f      	movs	r2, #15
 80014b0:	6002      	str	r2, [r0, #0]
 80014b2:	f241 0208 	movw	r2, #4104	; 0x1008
 80014b6:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80014ba:	6813      	ldr	r3, [r2, #0]
 80014bc:	f003 0303 	and.w	r3, r3, #3
 80014c0:	6043      	str	r3, [r0, #4]
 80014c2:	6813      	ldr	r3, [r2, #0]
 80014c4:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80014c8:	6083      	str	r3, [r0, #8]
 80014ca:	6813      	ldr	r3, [r2, #0]
 80014cc:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80014d0:	60c3      	str	r3, [r0, #12]
 80014d2:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80014d6:	6812      	ldr	r2, [r2, #0]
 80014d8:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 80014dc:	6102      	str	r2, [r0, #16]
 80014de:	f242 0000 	movw	r0, #8192	; 0x2000
 80014e2:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80014e6:	6800      	ldr	r0, [r0, #0]
 80014e8:	f000 0007 	and.w	r0, r0, #7
 80014ec:	6008      	str	r0, [r1, #0]
 80014ee:	4770      	bx	lr

080014f0 <HAL_TIM_Base_Init>:
 80014f0:	b5d0      	push	{r4, r6, r7, lr}
 80014f2:	af02      	add	r7, sp, #8
 80014f4:	4604      	mov	r4, r0
 80014f6:	2c00      	cmp	r4, #0
 80014f8:	bf04      	itt	eq
 80014fa:	2001      	moveq	r0, #1
 80014fc:	bdd0      	popeq	{r4, r6, r7, pc}
 80014fe:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001500:	b920      	cbnz	r0, 800150c <HAL_TIM_Base_Init+0x1c>
 8001502:	2000      	movs	r0, #0
 8001504:	63e0      	str	r0, [r4, #60]	; 0x3c
 8001506:	4620      	mov	r0, r4
 8001508:	f000 f892 	bl	8001630 <HAL_TIM_Base_MspInit>
 800150c:	2002      	movs	r0, #2
 800150e:	f640 32ff 	movw	r2, #3071	; 0xbff
 8001512:	6420      	str	r0, [r4, #64]	; 0x40
 8001514:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001518:	6820      	ldr	r0, [r4, #0]
 800151a:	6801      	ldr	r1, [r0, #0]
 800151c:	4290      	cmp	r0, r2
 800151e:	dc0f      	bgt.n	8001540 <HAL_TIM_Base_Init+0x50>
 8001520:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001524:	bf1e      	ittt	ne
 8001526:	f240 4200 	movwne	r2, #1024	; 0x400
 800152a:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 800152e:	4290      	cmpne	r0, r2
 8001530:	d018      	beq.n	8001564 <HAL_TIM_Base_Init+0x74>
 8001532:	f640 0200 	movw	r2, #2048	; 0x800
 8001536:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800153a:	4290      	cmp	r0, r2
 800153c:	d012      	beq.n	8001564 <HAL_TIM_Base_Init+0x74>
 800153e:	e015      	b.n	800156c <HAL_TIM_Base_Init+0x7c>
 8001540:	f640 4200 	movw	r2, #3072	; 0xc00
 8001544:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001548:	4290      	cmp	r0, r2
 800154a:	bf1e      	ittt	ne
 800154c:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001550:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001554:	4290      	cmpne	r0, r2
 8001556:	d005      	beq.n	8001564 <HAL_TIM_Base_Init+0x74>
 8001558:	f642 4200 	movw	r2, #11264	; 0x2c00
 800155c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001560:	4290      	cmp	r0, r2
 8001562:	d103      	bne.n	800156c <HAL_TIM_Base_Init+0x7c>
 8001564:	68a2      	ldr	r2, [r4, #8]
 8001566:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 800156a:	4311      	orrs	r1, r2
 800156c:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001570:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001574:	4290      	cmp	r0, r2
 8001576:	dd14      	ble.n	80015a2 <HAL_TIM_Base_Init+0xb2>
 8001578:	f643 72ff 	movw	r2, #16383	; 0x3fff
 800157c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001580:	4290      	cmp	r0, r2
 8001582:	dd1a      	ble.n	80015ba <HAL_TIM_Base_Init+0xca>
 8001584:	f244 0200 	movw	r2, #16384	; 0x4000
 8001588:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800158c:	4290      	cmp	r0, r2
 800158e:	bf1e      	ittt	ne
 8001590:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001594:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001598:	4290      	cmpne	r0, r2
 800159a:	d027      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 800159c:	f244 4200 	movw	r2, #17408	; 0x4400
 80015a0:	e013      	b.n	80015ca <HAL_TIM_Base_Init+0xda>
 80015a2:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015a6:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015aa:	4290      	cmp	r0, r2
 80015ac:	dc12      	bgt.n	80015d4 <HAL_TIM_Base_Init+0xe4>
 80015ae:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015b2:	d01b      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015b4:	f240 4200 	movw	r2, #1024	; 0x400
 80015b8:	e014      	b.n	80015e4 <HAL_TIM_Base_Init+0xf4>
 80015ba:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015be:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015c2:	4290      	cmp	r0, r2
 80015c4:	d012      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015c6:	f243 4200 	movw	r2, #13312	; 0x3400
 80015ca:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015ce:	4290      	cmp	r0, r2
 80015d0:	d00c      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015d2:	e00f      	b.n	80015f4 <HAL_TIM_Base_Init+0x104>
 80015d4:	f640 0200 	movw	r2, #2048	; 0x800
 80015d8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015dc:	4290      	cmp	r0, r2
 80015de:	d005      	beq.n	80015ec <HAL_TIM_Base_Init+0xfc>
 80015e0:	f640 4200 	movw	r2, #3072	; 0xc00
 80015e4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015e8:	4290      	cmp	r0, r2
 80015ea:	d103      	bne.n	80015f4 <HAL_TIM_Base_Init+0x104>
 80015ec:	6922      	ldr	r2, [r4, #16]
 80015ee:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 80015f2:	4311      	orrs	r1, r2
 80015f4:	69a2      	ldr	r2, [r4, #24]
 80015f6:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 80015fa:	4311      	orrs	r1, r2
 80015fc:	6001      	str	r1, [r0, #0]
 80015fe:	68e1      	ldr	r1, [r4, #12]
 8001600:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001602:	6861      	ldr	r1, [r4, #4]
 8001604:	6281      	str	r1, [r0, #40]	; 0x28
 8001606:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 800160a:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 800160e:	ea4f 21b1 	mov.w	r1, r1, ror #10
 8001612:	2907      	cmp	r1, #7
 8001614:	d807      	bhi.n	8001626 <HAL_TIM_Base_Init+0x136>
 8001616:	2201      	movs	r2, #1
 8001618:	fa02 f101 	lsl.w	r1, r2, r1
 800161c:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001620:	bf1c      	itt	ne
 8001622:	6961      	ldrne	r1, [r4, #20]
 8001624:	6301      	strne	r1, [r0, #48]	; 0x30
 8001626:	2101      	movs	r1, #1
 8001628:	6141      	str	r1, [r0, #20]
 800162a:	2000      	movs	r0, #0
 800162c:	6421      	str	r1, [r4, #64]	; 0x40
 800162e:	bdd0      	pop	{r4, r6, r7, pc}

08001630 <HAL_TIM_Base_MspInit>:
 8001630:	4770      	bx	lr

08001632 <HAL_TIM_Base_Start_IT>:
 8001632:	6800      	ldr	r0, [r0, #0]
 8001634:	68c1      	ldr	r1, [r0, #12]
 8001636:	f041 0101 	orr.w	r1, r1, #1
 800163a:	60c1      	str	r1, [r0, #12]
 800163c:	2107      	movs	r1, #7
 800163e:	6882      	ldr	r2, [r0, #8]
 8001640:	f2c0 0101 	movt	r1, #1
 8001644:	400a      	ands	r2, r1
 8001646:	2a06      	cmp	r2, #6
 8001648:	d008      	beq.n	800165c <HAL_TIM_Base_Start_IT+0x2a>
 800164a:	6882      	ldr	r2, [r0, #8]
 800164c:	4011      	ands	r1, r2
 800164e:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001652:	bf1e      	ittt	ne
 8001654:	6801      	ldrne	r1, [r0, #0]
 8001656:	f041 0101 	orrne.w	r1, r1, #1
 800165a:	6001      	strne	r1, [r0, #0]
 800165c:	2000      	movs	r0, #0
 800165e:	4770      	bx	lr

08001660 <HAL_TIM_IRQHandler>:
 8001660:	b5d0      	push	{r4, r6, r7, lr}
 8001662:	af02      	add	r7, sp, #8
 8001664:	4604      	mov	r4, r0
 8001666:	6820      	ldr	r0, [r4, #0]
 8001668:	6901      	ldr	r1, [r0, #16]
 800166a:	f011 0f02 	tst.w	r1, #2
 800166e:	bf1c      	itt	ne
 8001670:	68c1      	ldrne	r1, [r0, #12]
 8001672:	f011 0f02 	tstne.w	r1, #2
 8001676:	d015      	beq.n	80016a4 <HAL_TIM_IRQHandler+0x44>
 8001678:	f06f 0102 	mvn.w	r1, #2
 800167c:	6101      	str	r1, [r0, #16]
 800167e:	2101      	movs	r1, #1
 8001680:	61e1      	str	r1, [r4, #28]
 8001682:	6980      	ldr	r0, [r0, #24]
 8001684:	f010 0f03 	tst.w	r0, #3
 8001688:	d003      	beq.n	8001692 <HAL_TIM_IRQHandler+0x32>
 800168a:	4620      	mov	r0, r4
 800168c:	f000 f8b1 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 8001690:	e005      	b.n	800169e <HAL_TIM_IRQHandler+0x3e>
 8001692:	4620      	mov	r0, r4
 8001694:	f000 f8ae 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 8001698:	4620      	mov	r0, r4
 800169a:	f000 f8ac 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 800169e:	2000      	movs	r0, #0
 80016a0:	61e0      	str	r0, [r4, #28]
 80016a2:	6820      	ldr	r0, [r4, #0]
 80016a4:	6901      	ldr	r1, [r0, #16]
 80016a6:	f011 0f04 	tst.w	r1, #4
 80016aa:	bf1c      	itt	ne
 80016ac:	68c1      	ldrne	r1, [r0, #12]
 80016ae:	f011 0f04 	tstne.w	r1, #4
 80016b2:	d015      	beq.n	80016e0 <HAL_TIM_IRQHandler+0x80>
 80016b4:	f06f 0104 	mvn.w	r1, #4
 80016b8:	6101      	str	r1, [r0, #16]
 80016ba:	2102      	movs	r1, #2
 80016bc:	61e1      	str	r1, [r4, #28]
 80016be:	6980      	ldr	r0, [r0, #24]
 80016c0:	f410 7f40 	tst.w	r0, #768	; 0x300
 80016c4:	d003      	beq.n	80016ce <HAL_TIM_IRQHandler+0x6e>
 80016c6:	4620      	mov	r0, r4
 80016c8:	f000 f893 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 80016cc:	e005      	b.n	80016da <HAL_TIM_IRQHandler+0x7a>
 80016ce:	4620      	mov	r0, r4
 80016d0:	f000 f890 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 80016d4:	4620      	mov	r0, r4
 80016d6:	f000 f88e 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 80016da:	2000      	movs	r0, #0
 80016dc:	61e0      	str	r0, [r4, #28]
 80016de:	6820      	ldr	r0, [r4, #0]
 80016e0:	6901      	ldr	r1, [r0, #16]
 80016e2:	f011 0f08 	tst.w	r1, #8
 80016e6:	bf1c      	itt	ne
 80016e8:	68c1      	ldrne	r1, [r0, #12]
 80016ea:	f011 0f08 	tstne.w	r1, #8
 80016ee:	d015      	beq.n	800171c <HAL_TIM_IRQHandler+0xbc>
 80016f0:	f06f 0108 	mvn.w	r1, #8
 80016f4:	6101      	str	r1, [r0, #16]
 80016f6:	2104      	movs	r1, #4
 80016f8:	61e1      	str	r1, [r4, #28]
 80016fa:	69c0      	ldr	r0, [r0, #28]
 80016fc:	f010 0f03 	tst.w	r0, #3
 8001700:	d003      	beq.n	800170a <HAL_TIM_IRQHandler+0xaa>
 8001702:	4620      	mov	r0, r4
 8001704:	f000 f875 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 8001708:	e005      	b.n	8001716 <HAL_TIM_IRQHandler+0xb6>
 800170a:	4620      	mov	r0, r4
 800170c:	f000 f872 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 8001710:	4620      	mov	r0, r4
 8001712:	f000 f870 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 8001716:	2000      	movs	r0, #0
 8001718:	61e0      	str	r0, [r4, #28]
 800171a:	6820      	ldr	r0, [r4, #0]
 800171c:	6901      	ldr	r1, [r0, #16]
 800171e:	f011 0f10 	tst.w	r1, #16
 8001722:	bf1c      	itt	ne
 8001724:	68c1      	ldrne	r1, [r0, #12]
 8001726:	f011 0f10 	tstne.w	r1, #16
 800172a:	d015      	beq.n	8001758 <HAL_TIM_IRQHandler+0xf8>
 800172c:	f06f 0110 	mvn.w	r1, #16
 8001730:	6101      	str	r1, [r0, #16]
 8001732:	2108      	movs	r1, #8
 8001734:	61e1      	str	r1, [r4, #28]
 8001736:	69c0      	ldr	r0, [r0, #28]
 8001738:	f410 7f40 	tst.w	r0, #768	; 0x300
 800173c:	d003      	beq.n	8001746 <HAL_TIM_IRQHandler+0xe6>
 800173e:	4620      	mov	r0, r4
 8001740:	f000 f857 	bl	80017f2 <HAL_TIM_IC_CaptureCallback>
 8001744:	e005      	b.n	8001752 <HAL_TIM_IRQHandler+0xf2>
 8001746:	4620      	mov	r0, r4
 8001748:	f000 f854 	bl	80017f4 <HAL_TIM_OC_DelayElapsedCallback>
 800174c:	4620      	mov	r0, r4
 800174e:	f000 f852 	bl	80017f6 <HAL_TIM_PWM_PulseFinishedCallback>
 8001752:	2000      	movs	r0, #0
 8001754:	61e0      	str	r0, [r4, #28]
 8001756:	6820      	ldr	r0, [r4, #0]
 8001758:	6901      	ldr	r1, [r0, #16]
 800175a:	f011 0f01 	tst.w	r1, #1
 800175e:	bf1c      	itt	ne
 8001760:	68c1      	ldrne	r1, [r0, #12]
 8001762:	f011 0f01 	tstne.w	r1, #1
 8001766:	d006      	beq.n	8001776 <HAL_TIM_IRQHandler+0x116>
 8001768:	f06f 0101 	mvn.w	r1, #1
 800176c:	6101      	str	r1, [r0, #16]
 800176e:	4620      	mov	r0, r4
 8001770:	f000 f894 	bl	800189c <HAL_TIM_PeriodElapsedCallback>
 8001774:	6820      	ldr	r0, [r4, #0]
 8001776:	6901      	ldr	r1, [r0, #16]
 8001778:	f011 0f80 	tst.w	r1, #128	; 0x80
 800177c:	bf1c      	itt	ne
 800177e:	68c1      	ldrne	r1, [r0, #12]
 8001780:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001784:	d006      	beq.n	8001794 <HAL_TIM_IRQHandler+0x134>
 8001786:	f06f 0180 	mvn.w	r1, #128	; 0x80
 800178a:	6101      	str	r1, [r0, #16]
 800178c:	4620      	mov	r0, r4
 800178e:	f000 f835 	bl	80017fc <HAL_TIMEx_BreakCallback>
 8001792:	6820      	ldr	r0, [r4, #0]
 8001794:	6901      	ldr	r1, [r0, #16]
 8001796:	f411 7f80 	tst.w	r1, #256	; 0x100
 800179a:	bf1c      	itt	ne
 800179c:	68c1      	ldrne	r1, [r0, #12]
 800179e:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017a2:	d006      	beq.n	80017b2 <HAL_TIM_IRQHandler+0x152>
 80017a4:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80017a8:	6101      	str	r1, [r0, #16]
 80017aa:	4620      	mov	r0, r4
 80017ac:	f000 f827 	bl	80017fe <HAL_TIMEx_Break2Callback>
 80017b0:	6820      	ldr	r0, [r4, #0]
 80017b2:	6901      	ldr	r1, [r0, #16]
 80017b4:	f011 0f40 	tst.w	r1, #64	; 0x40
 80017b8:	bf1c      	itt	ne
 80017ba:	68c1      	ldrne	r1, [r0, #12]
 80017bc:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80017c0:	d006      	beq.n	80017d0 <HAL_TIM_IRQHandler+0x170>
 80017c2:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80017c6:	6101      	str	r1, [r0, #16]
 80017c8:	4620      	mov	r0, r4
 80017ca:	f000 f815 	bl	80017f8 <HAL_TIM_TriggerCallback>
 80017ce:	6820      	ldr	r0, [r4, #0]
 80017d0:	6901      	ldr	r1, [r0, #16]
 80017d2:	f011 0f20 	tst.w	r1, #32
 80017d6:	bf1c      	itt	ne
 80017d8:	68c1      	ldrne	r1, [r0, #12]
 80017da:	f011 0f20 	tstne.w	r1, #32
 80017de:	d100      	bne.n	80017e2 <HAL_TIM_IRQHandler+0x182>
 80017e0:	bdd0      	pop	{r4, r6, r7, pc}
 80017e2:	f06f 0120 	mvn.w	r1, #32
 80017e6:	6101      	str	r1, [r0, #16]
 80017e8:	4620      	mov	r0, r4
 80017ea:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80017ee:	f000 b804 	b.w	80017fa <HAL_TIMEx_CommutationCallback>

080017f2 <HAL_TIM_IC_CaptureCallback>:
 80017f2:	4770      	bx	lr

080017f4 <HAL_TIM_OC_DelayElapsedCallback>:
 80017f4:	4770      	bx	lr

080017f6 <HAL_TIM_PWM_PulseFinishedCallback>:
 80017f6:	4770      	bx	lr

080017f8 <HAL_TIM_TriggerCallback>:
 80017f8:	4770      	bx	lr

080017fa <HAL_TIMEx_CommutationCallback>:
 80017fa:	4770      	bx	lr

080017fc <HAL_TIMEx_BreakCallback>:
 80017fc:	4770      	bx	lr

080017fe <HAL_TIMEx_Break2Callback>:
 80017fe:	4770      	bx	lr

08001800 <HAL_InitTick>:
 8001800:	b5b0      	push	{r4, r5, r7, lr}
 8001802:	af02      	add	r7, sp, #8
 8001804:	b086      	sub	sp, #24
 8001806:	4601      	mov	r1, r0
 8001808:	2036      	movs	r0, #54	; 0x36
 800180a:	2200      	movs	r2, #0
 800180c:	2400      	movs	r4, #0
 800180e:	f7ff fc99 	bl	8001144 <HAL_NVIC_SetPriority>
 8001812:	2036      	movs	r0, #54	; 0x36
 8001814:	f7ff fcc9 	bl	80011aa <HAL_NVIC_EnableIRQ>
 8001818:	f241 0058 	movw	r0, #4184	; 0x1058
 800181c:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001820:	6801      	ldr	r1, [r0, #0]
 8001822:	f041 0110 	orr.w	r1, r1, #16
 8001826:	6001      	str	r1, [r0, #0]
 8001828:	4669      	mov	r1, sp
 800182a:	6800      	ldr	r0, [r0, #0]
 800182c:	f000 0010 	and.w	r0, r0, #16
 8001830:	9001      	str	r0, [sp, #4]
 8001832:	9801      	ldr	r0, [sp, #4]
 8001834:	a801      	add	r0, sp, #4
 8001836:	f7ff fe3a 	bl	80014ae <HAL_RCC_GetClockConfig>
 800183a:	9d04      	ldr	r5, [sp, #16]
 800183c:	f7ff fe0d 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001840:	2d00      	cmp	r5, #0
 8001842:	f640 4134 	movw	r1, #3124	; 0xc34
 8001846:	f241 0200 	movw	r2, #4096	; 0x1000
 800184a:	f240 33e7 	movw	r3, #999	; 0x3e7
 800184e:	bf18      	it	ne
 8001850:	2501      	movne	r5, #1
 8001852:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001856:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800185a:	40a8      	lsls	r0, r5
 800185c:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001860:	618c      	str	r4, [r1, #24]
 8001862:	f2c4 351b 	movt	r5, #17179	; 0x431b
 8001866:	fba0 0505 	umull	r0, r5, r0, r5
 800186a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800186e:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001872:	e9c1 2000 	strd	r2, r0, [r1]
 8001876:	4608      	mov	r0, r1
 8001878:	e9c1 4302 	strd	r4, r3, [r1, #8]
 800187c:	610c      	str	r4, [r1, #16]
 800187e:	f7ff fe37 	bl	80014f0 <HAL_TIM_Base_Init>
 8001882:	2800      	cmp	r0, #0
 8001884:	bf1e      	ittt	ne
 8001886:	2001      	movne	r0, #1
 8001888:	b006      	addne	sp, #24
 800188a:	bdb0      	popne	{r4, r5, r7, pc}
 800188c:	f640 4034 	movw	r0, #3124	; 0xc34
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 4034 	movw	r0, #3124	; 0xc34
 80018a4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80018a8:	f7ff beda 	b.w	8001660 <HAL_TIM_IRQHandler>

080018ac <HAL_UART_Init>:
 80018ac:	b5d0      	push	{r4, r6, r7, lr}
 80018ae:	af02      	add	r7, sp, #8
 80018b0:	4604      	mov	r4, r0
 80018b2:	b194      	cbz	r4, 80018da <HAL_UART_Init+0x2e>
 80018b4:	6f60      	ldr	r0, [r4, #116]	; 0x74
 80018b6:	b920      	cbnz	r0, 80018c2 <HAL_UART_Init+0x16>
 80018b8:	2000      	movs	r0, #0
 80018ba:	6720      	str	r0, [r4, #112]	; 0x70
 80018bc:	4620      	mov	r0, r4
 80018be:	f000 f826 	bl	800190e <HAL_UART_MspInit>
 80018c2:	2024      	movs	r0, #36	; 0x24
 80018c4:	6760      	str	r0, [r4, #116]	; 0x74
 80018c6:	6820      	ldr	r0, [r4, #0]
 80018c8:	6801      	ldr	r1, [r0, #0]
 80018ca:	f021 0101 	bic.w	r1, r1, #1
 80018ce:	6001      	str	r1, [r0, #0]
 80018d0:	4620      	mov	r0, r4
 80018d2:	f000 f81d 	bl	8001910 <UART_SetConfig>
 80018d6:	2801      	cmp	r0, #1
 80018d8:	d101      	bne.n	80018de <HAL_UART_Init+0x32>
 80018da:	2001      	movs	r0, #1
 80018dc:	bdd0      	pop	{r4, r6, r7, pc}
 80018de:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80018e0:	2800      	cmp	r0, #0
 80018e2:	bf1c      	itt	ne
 80018e4:	4620      	movne	r0, r4
 80018e6:	f000 f944 	blne	8001b72 <UART_AdvFeatureConfig>
 80018ea:	6820      	ldr	r0, [r4, #0]
 80018ec:	6841      	ldr	r1, [r0, #4]
 80018ee:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 80018f2:	6041      	str	r1, [r0, #4]
 80018f4:	6881      	ldr	r1, [r0, #8]
 80018f6:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 80018fa:	6081      	str	r1, [r0, #8]
 80018fc:	6801      	ldr	r1, [r0, #0]
 80018fe:	f041 0101 	orr.w	r1, r1, #1
 8001902:	6001      	str	r1, [r0, #0]
 8001904:	4620      	mov	r0, r4
 8001906:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 800190a:	f000 b99d 	b.w	8001c48 <UART_CheckIdleState>

0800190e <HAL_UART_MspInit>:
 800190e:	4770      	bx	lr

08001910 <UART_SetConfig>:
 8001910:	b5b0      	push	{r4, r5, r7, lr}
 8001912:	af02      	add	r7, sp, #8
 8001914:	4604      	mov	r4, r0
 8001916:	f646 15f3 	movw	r5, #27123	; 0x69f3
 800191a:	f248 0e00 	movw	lr, #32768	; 0x8000
 800191e:	f241 0c88 	movw	ip, #4232	; 0x1088
 8001922:	6821      	ldr	r1, [r4, #0]
 8001924:	68a0      	ldr	r0, [r4, #8]
 8001926:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 800192a:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 800192e:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 8001932:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 8001936:	4310      	orrs	r0, r2
 8001938:	69e2      	ldr	r2, [r4, #28]
 800193a:	4571      	cmp	r1, lr
 800193c:	ea40 0003 	orr.w	r0, r0, r3
 8001940:	680b      	ldr	r3, [r1, #0]
 8001942:	ea40 0002 	orr.w	r0, r0, r2
 8001946:	ea03 0305 	and.w	r3, r3, r5
 800194a:	f04f 0510 	mov.w	r5, #16
 800194e:	ea40 0003 	orr.w	r0, r0, r3
 8001952:	6008      	str	r0, [r1, #0]
 8001954:	6848      	ldr	r0, [r1, #4]
 8001956:	68e3      	ldr	r3, [r4, #12]
 8001958:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 800195c:	ea40 0003 	orr.w	r0, r0, r3
 8001960:	6048      	str	r0, [r1, #4]
 8001962:	69a0      	ldr	r0, [r4, #24]
 8001964:	bf1c      	itt	ne
 8001966:	6a23      	ldrne	r3, [r4, #32]
 8001968:	4318      	orrne	r0, r3
 800196a:	688b      	ldr	r3, [r1, #8]
 800196c:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001970:	4318      	orrs	r0, r3
 8001972:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001976:	6088      	str	r0, [r1, #8]
 8001978:	f242 4000 	movw	r0, #9216	; 0x2400
 800197c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001980:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001984:	4299      	cmp	r1, r3
 8001986:	dc15      	bgt.n	80019b4 <UART_SetConfig+0xa4>
 8001988:	f244 4300 	movw	r3, #17408	; 0x4400
 800198c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001990:	4299      	cmp	r1, r3
 8001992:	d024      	beq.n	80019de <UART_SetConfig+0xce>
 8001994:	f644 0300 	movw	r3, #18432	; 0x4800
 8001998:	f2c4 0300 	movt	r3, #16384	; 0x4000
 800199c:	4299      	cmp	r1, r3
 800199e:	d022      	beq.n	80019e6 <UART_SetConfig+0xd6>
 80019a0:	f644 4300 	movw	r3, #19456	; 0x4c00
 80019a4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019a8:	4299      	cmp	r1, r3
 80019aa:	d131      	bne.n	8001a10 <UART_SetConfig+0x100>
 80019ac:	f8dc 3000 	ldr.w	r3, [ip]
 80019b0:	099d      	lsrs	r5, r3, #6
 80019b2:	e023      	b.n	80019fc <UART_SetConfig+0xec>
 80019b4:	f245 0300 	movw	r3, #20480	; 0x5000
 80019b8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 80019bc:	4299      	cmp	r1, r3
 80019be:	d016      	beq.n	80019ee <UART_SetConfig+0xde>
 80019c0:	4571      	cmp	r1, lr
 80019c2:	d018      	beq.n	80019f6 <UART_SetConfig+0xe6>
 80019c4:	f643 0300 	movw	r3, #14336	; 0x3800
 80019c8:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80019cc:	4299      	cmp	r1, r3
 80019ce:	d11f      	bne.n	8001a10 <UART_SetConfig+0x100>
 80019d0:	f8dc 5000 	ldr.w	r5, [ip]
 80019d4:	f247 1300 	movw	r3, #28928	; 0x7100
 80019d8:	f6c0 0300 	movt	r3, #2048	; 0x800
 80019dc:	e012      	b.n	8001a04 <UART_SetConfig+0xf4>
 80019de:	f8dc 3000 	ldr.w	r3, [ip]
 80019e2:	089d      	lsrs	r5, r3, #2
 80019e4:	e00a      	b.n	80019fc <UART_SetConfig+0xec>
 80019e6:	f8dc 3000 	ldr.w	r3, [ip]
 80019ea:	091d      	lsrs	r5, r3, #4
 80019ec:	e006      	b.n	80019fc <UART_SetConfig+0xec>
 80019ee:	f8dc 3000 	ldr.w	r3, [ip]
 80019f2:	0a1d      	lsrs	r5, r3, #8
 80019f4:	e002      	b.n	80019fc <UART_SetConfig+0xec>
 80019f6:	f8dc 3000 	ldr.w	r3, [ip]
 80019fa:	0a9d      	lsrs	r5, r3, #10
 80019fc:	f247 1310 	movw	r3, #28944	; 0x7110
 8001a00:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a04:	f005 0503 	and.w	r5, r5, #3
 8001a08:	f085 0502 	eor.w	r5, r5, #2
 8001a0c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001a10:	4571      	cmp	r1, lr
 8001a12:	d012      	beq.n	8001a3a <UART_SetConfig+0x12a>
 8001a14:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001a18:	d11d      	bne.n	8001a56 <UART_SetConfig+0x146>
 8001a1a:	f005 001f 	and.w	r0, r5, #31
 8001a1e:	2101      	movs	r1, #1
 8001a20:	2808      	cmp	r0, #8
 8001a22:	f200 809f 	bhi.w	8001b64 <UART_SetConfig+0x254>
 8001a26:	e8df f000 	tbb	[pc, r0]
 8001a2a:	4005      	.short	0x4005
 8001a2c:	9d499d43 	.word	0x9d499d43
 8001a30:	004f9d9d 	.word	0x004f9d9d
 8001a34:	f7ff fd11 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001a38:	e042      	b.n	8001ac0 <UART_SetConfig+0x1b0>
 8001a3a:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001a3e:	2101      	movs	r1, #1
 8001a40:	2d04      	cmp	r5, #4
 8001a42:	f200 808f 	bhi.w	8001b64 <UART_SetConfig+0x254>
 8001a46:	e8df f005 	tbb	[pc, r5]
 8001a4a:	1c03      	.short	0x1c03
 8001a4c:	001a8d16 	.word	0x001a8d16
 8001a50:	f7ff fd03 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001a54:	e011      	b.n	8001a7a <UART_SetConfig+0x16a>
 8001a56:	f005 021f 	and.w	r2, r5, #31
 8001a5a:	2101      	movs	r1, #1
 8001a5c:	2a08      	cmp	r2, #8
 8001a5e:	f200 8081 	bhi.w	8001b64 <UART_SetConfig+0x254>
 8001a62:	e8df f002 	tbb	[pc, r2]
 8001a66:	4305      	.short	0x4305
 8001a68:	7f487f46 	.word	0x7f487f46
 8001a6c:	004e7f7f 	.word	0x004e7f7f
 8001a70:	f7ff fcf3 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001a74:	e041      	b.n	8001afa <UART_SetConfig+0x1ea>
 8001a76:	f7ff fc91 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001a7a:	b910      	cbnz	r0, 8001a82 <UART_SetConfig+0x172>
 8001a7c:	e071      	b.n	8001b62 <UART_SetConfig+0x252>
 8001a7e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001a82:	6862      	ldr	r2, [r4, #4]
 8001a84:	2101      	movs	r1, #1
 8001a86:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001a8a:	4298      	cmp	r0, r3
 8001a8c:	d36a      	bcc.n	8001b64 <UART_SetConfig+0x254>
 8001a8e:	0313      	lsls	r3, r2, #12
 8001a90:	4298      	cmp	r0, r3
 8001a92:	bf9c      	itt	ls
 8001a94:	2101      	movls	r1, #1
 8001a96:	2d04      	cmpls	r5, #4
 8001a98:	d864      	bhi.n	8001b64 <UART_SetConfig+0x254>
 8001a9a:	e8df f005 	tbb	[pc, r5]
 8001a9e:	3e03      	.short	0x3e03
 8001aa0:	00526345 	.word	0x00526345
 8001aa4:	f7ff fcd9 	bl	800145a <HAL_RCC_GetPCLK1Freq>
 8001aa8:	e040      	b.n	8001b2c <UART_SetConfig+0x21c>
 8001aaa:	f7ff fceb 	bl	8001484 <HAL_RCC_GetPCLK2Freq>
 8001aae:	e007      	b.n	8001ac0 <UART_SetConfig+0x1b0>
 8001ab0:	6861      	ldr	r1, [r4, #4]
 8001ab2:	f644 0200 	movw	r2, #18432	; 0x4800
 8001ab6:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001aba:	e008      	b.n	8001ace <UART_SetConfig+0x1be>
 8001abc:	f7ff fc6e 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001ac0:	6861      	ldr	r1, [r4, #4]
 8001ac2:	0040      	lsls	r0, r0, #1
 8001ac4:	084a      	lsrs	r2, r1, #1
 8001ac6:	e003      	b.n	8001ad0 <UART_SetConfig+0x1c0>
 8001ac8:	6861      	ldr	r1, [r4, #4]
 8001aca:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001ace:	0848      	lsrs	r0, r1, #1
 8001ad0:	4410      	add	r0, r2
 8001ad2:	fbb0 f0f1 	udiv	r0, r0, r1
 8001ad6:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001ada:	4001      	ands	r1, r0
 8001adc:	2910      	cmp	r1, #16
 8001ade:	d303      	bcc.n	8001ae8 <UART_SetConfig+0x1d8>
 8001ae0:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001ae4:	4308      	orrs	r0, r1
 8001ae6:	e03a      	b.n	8001b5e <UART_SetConfig+0x24e>
 8001ae8:	2101      	movs	r1, #1
 8001aea:	e03b      	b.n	8001b64 <UART_SetConfig+0x254>
 8001aec:	f7ff fcca 	bl	8001484 <HAL_RCC_GetPCLK2Freq>
 8001af0:	e003      	b.n	8001afa <UART_SetConfig+0x1ea>
 8001af2:	6862      	ldr	r2, [r4, #4]
 8001af4:	e008      	b.n	8001b08 <UART_SetConfig+0x1f8>
 8001af6:	f7ff fc51 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001afa:	6862      	ldr	r2, [r4, #4]
 8001afc:	4601      	mov	r1, r0
 8001afe:	0850      	lsrs	r0, r2, #1
 8001b00:	e003      	b.n	8001b0a <UART_SetConfig+0x1fa>
 8001b02:	6862      	ldr	r2, [r4, #4]
 8001b04:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b08:	0851      	lsrs	r1, r2, #1
 8001b0a:	4408      	add	r0, r1
 8001b0c:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b10:	b280      	uxth	r0, r0
 8001b12:	2810      	cmp	r0, #16
 8001b14:	d223      	bcs.n	8001b5e <UART_SetConfig+0x24e>
 8001b16:	2101      	movs	r1, #1
 8001b18:	e024      	b.n	8001b64 <UART_SetConfig+0x254>
 8001b1a:	2000      	movs	r0, #0
 8001b1c:	2100      	movs	r1, #0
 8001b1e:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001b22:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001b26:	e006      	b.n	8001b36 <UART_SetConfig+0x226>
 8001b28:	f7ff fc38 	bl	800139c <HAL_RCC_GetSysClockFreq>
 8001b2c:	6862      	ldr	r2, [r4, #4]
 8001b2e:	0e01      	lsrs	r1, r0, #24
 8001b30:	0853      	lsrs	r3, r2, #1
 8001b32:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001b36:	f141 0100 	adc.w	r1, r1, #0
 8001b3a:	2300      	movs	r3, #0
 8001b3c:	f7fe fb60 	bl	8000200 <__aeabi_uldivmod>
 8001b40:	e005      	b.n	8001b4e <UART_SetConfig+0x23e>
 8001b42:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001b46:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001b4a:	fbb0 f0f2 	udiv	r0, r0, r2
 8001b4e:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001b52:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001b56:	f2c0 020f 	movt	r2, #15
 8001b5a:	4291      	cmp	r1, r2
 8001b5c:	d807      	bhi.n	8001b6e <UART_SetConfig+0x25e>
 8001b5e:	6821      	ldr	r1, [r4, #0]
 8001b60:	60c8      	str	r0, [r1, #12]
 8001b62:	2100      	movs	r1, #0
 8001b64:	2000      	movs	r0, #0
 8001b66:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001b6a:	4608      	mov	r0, r1
 8001b6c:	bdb0      	pop	{r4, r5, r7, pc}
 8001b6e:	2101      	movs	r1, #1
 8001b70:	e7f8      	b.n	8001b64 <UART_SetConfig+0x254>

08001b72 <UART_AdvFeatureConfig>:
 8001b72:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001b74:	f011 0f01 	tst.w	r1, #1
 8001b78:	d008      	beq.n	8001b8c <UART_AdvFeatureConfig+0x1a>
 8001b7a:	6802      	ldr	r2, [r0, #0]
 8001b7c:	6853      	ldr	r3, [r2, #4]
 8001b7e:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001b82:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001b86:	ea43 030c 	orr.w	r3, r3, ip
 8001b8a:	6053      	str	r3, [r2, #4]
 8001b8c:	078a      	lsls	r2, r1, #30
 8001b8e:	d508      	bpl.n	8001ba2 <UART_AdvFeatureConfig+0x30>
 8001b90:	6802      	ldr	r2, [r0, #0]
 8001b92:	6853      	ldr	r3, [r2, #4]
 8001b94:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001b98:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001b9c:	ea43 030c 	orr.w	r3, r3, ip
 8001ba0:	6053      	str	r3, [r2, #4]
 8001ba2:	074a      	lsls	r2, r1, #29
 8001ba4:	d508      	bpl.n	8001bb8 <UART_AdvFeatureConfig+0x46>
 8001ba6:	6802      	ldr	r2, [r0, #0]
 8001ba8:	6853      	ldr	r3, [r2, #4]
 8001baa:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001bae:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001bb2:	ea43 030c 	orr.w	r3, r3, ip
 8001bb6:	6053      	str	r3, [r2, #4]
 8001bb8:	070a      	lsls	r2, r1, #28
 8001bba:	d508      	bpl.n	8001bce <UART_AdvFeatureConfig+0x5c>
 8001bbc:	6802      	ldr	r2, [r0, #0]
 8001bbe:	6853      	ldr	r3, [r2, #4]
 8001bc0:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001bc4:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001bc8:	ea43 030c 	orr.w	r3, r3, ip
 8001bcc:	6053      	str	r3, [r2, #4]
 8001bce:	06ca      	lsls	r2, r1, #27
 8001bd0:	d508      	bpl.n	8001be4 <UART_AdvFeatureConfig+0x72>
 8001bd2:	6802      	ldr	r2, [r0, #0]
 8001bd4:	6893      	ldr	r3, [r2, #8]
 8001bd6:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001bda:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001bde:	ea43 030c 	orr.w	r3, r3, ip
 8001be2:	6093      	str	r3, [r2, #8]
 8001be4:	068a      	lsls	r2, r1, #26
 8001be6:	d508      	bpl.n	8001bfa <UART_AdvFeatureConfig+0x88>
 8001be8:	6802      	ldr	r2, [r0, #0]
 8001bea:	6893      	ldr	r3, [r2, #8]
 8001bec:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001bf0:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001bf4:	ea43 030c 	orr.w	r3, r3, ip
 8001bf8:	6093      	str	r3, [r2, #8]
 8001bfa:	b580      	push	{r7, lr}
 8001bfc:	466f      	mov	r7, sp
 8001bfe:	064a      	lsls	r2, r1, #25
 8001c00:	d515      	bpl.n	8001c2e <UART_AdvFeatureConfig+0xbc>
 8001c02:	f8d0 e000 	ldr.w	lr, [r0]
 8001c06:	f8de c004 	ldr.w	ip, [lr, #4]
 8001c0a:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001c0c:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001c10:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001c14:	ea42 0203 	orr.w	r2, r2, r3
 8001c18:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c1c:	d107      	bne.n	8001c2e <UART_AdvFeatureConfig+0xbc>
 8001c1e:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001c22:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001c24:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001c28:	431a      	orrs	r2, r3
 8001c2a:	f8ce 2004 	str.w	r2, [lr, #4]
 8001c2e:	0609      	lsls	r1, r1, #24
 8001c30:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001c34:	bf58      	it	pl
 8001c36:	4770      	bxpl	lr
 8001c38:	6801      	ldr	r1, [r0, #0]
 8001c3a:	684a      	ldr	r2, [r1, #4]
 8001c3c:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001c3e:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001c42:	4310      	orrs	r0, r2
 8001c44:	6048      	str	r0, [r1, #4]
 8001c46:	4770      	bx	lr

08001c48 <UART_CheckIdleState>:
 8001c48:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001c4a:	af03      	add	r7, sp, #12
 8001c4c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001c50:	4604      	mov	r4, r0
 8001c52:	2000      	movs	r0, #0
 8001c54:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001c56:	f7ff fa5f 	bl	8001118 <HAL_GetTick>
 8001c5a:	4605      	mov	r5, r0
 8001c5c:	6820      	ldr	r0, [r4, #0]
 8001c5e:	6801      	ldr	r1, [r0, #0]
 8001c60:	f011 0f08 	tst.w	r1, #8
 8001c64:	d00f      	beq.n	8001c86 <UART_CheckIdleState+0x3e>
 8001c66:	69c1      	ldr	r1, [r0, #28]
 8001c68:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c6c:	d10b      	bne.n	8001c86 <UART_CheckIdleState+0x3e>
 8001c6e:	2600      	movs	r6, #0
 8001c70:	f7ff fa52 	bl	8001118 <HAL_GetTick>
 8001c74:	1b41      	subs	r1, r0, r5
 8001c76:	6820      	ldr	r0, [r4, #0]
 8001c78:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001c7c:	d11b      	bne.n	8001cb6 <UART_CheckIdleState+0x6e>
 8001c7e:	69c1      	ldr	r1, [r0, #28]
 8001c80:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001c84:	d0f4      	beq.n	8001c70 <UART_CheckIdleState+0x28>
 8001c86:	6801      	ldr	r1, [r0, #0]
 8001c88:	f011 0f04 	tst.w	r1, #4
 8001c8c:	d101      	bne.n	8001c92 <UART_CheckIdleState+0x4a>
 8001c8e:	2600      	movs	r6, #0
 8001c90:	e01a      	b.n	8001cc8 <UART_CheckIdleState+0x80>
 8001c92:	69c0      	ldr	r0, [r0, #28]
 8001c94:	2600      	movs	r6, #0
 8001c96:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001c9a:	d115      	bne.n	8001cc8 <UART_CheckIdleState+0x80>
 8001c9c:	f7ff fa3c 	bl	8001118 <HAL_GetTick>
 8001ca0:	1b41      	subs	r1, r0, r5
 8001ca2:	6820      	ldr	r0, [r4, #0]
 8001ca4:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001ca8:	d105      	bne.n	8001cb6 <UART_CheckIdleState+0x6e>
 8001caa:	69c0      	ldr	r0, [r0, #28]
 8001cac:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001cb0:	d0f4      	beq.n	8001c9c <UART_CheckIdleState+0x54>
 8001cb2:	2600      	movs	r6, #0
 8001cb4:	e008      	b.n	8001cc8 <UART_CheckIdleState+0x80>
 8001cb6:	6801      	ldr	r1, [r0, #0]
 8001cb8:	2603      	movs	r6, #3
 8001cba:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001cbe:	6001      	str	r1, [r0, #0]
 8001cc0:	6881      	ldr	r1, [r0, #8]
 8001cc2:	f021 0101 	bic.w	r1, r1, #1
 8001cc6:	6081      	str	r1, [r0, #8]
 8001cc8:	2020      	movs	r0, #32
 8001cca:	6760      	str	r0, [r4, #116]	; 0x74
 8001ccc:	67a0      	str	r0, [r4, #120]	; 0x78
 8001cce:	2000      	movs	r0, #0
 8001cd0:	6720      	str	r0, [r4, #112]	; 0x70
 8001cd2:	4630      	mov	r0, r6
 8001cd4:	f85d bb04 	ldr.w	fp, [sp], #4
 8001cd8:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001cda <HAL_UART_Transmit>:
 8001cda:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001cdc:	af03      	add	r7, sp, #12
 8001cde:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ce2:	b081      	sub	sp, #4
 8001ce4:	4604      	mov	r4, r0
 8001ce6:	461d      	mov	r5, r3
 8001ce8:	4616      	mov	r6, r2
 8001cea:	4689      	mov	r9, r1
 8001cec:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001cee:	2820      	cmp	r0, #32
 8001cf0:	d109      	bne.n	8001d06 <HAL_UART_Transmit+0x2c>
 8001cf2:	f1b9 0f00 	cmp.w	r9, #0
 8001cf6:	f04f 0001 	mov.w	r0, #1
 8001cfa:	bf18      	it	ne
 8001cfc:	2e00      	cmpne	r6, #0
 8001cfe:	d003      	beq.n	8001d08 <HAL_UART_Transmit+0x2e>
 8001d00:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001d02:	2801      	cmp	r0, #1
 8001d04:	d104      	bne.n	8001d10 <HAL_UART_Transmit+0x36>
 8001d06:	2002      	movs	r0, #2
 8001d08:	b001      	add	sp, #4
 8001d0a:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001d0e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001d10:	2001      	movs	r0, #1
 8001d12:	6720      	str	r0, [r4, #112]	; 0x70
 8001d14:	2000      	movs	r0, #0
 8001d16:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d18:	2021      	movs	r0, #33	; 0x21
 8001d1a:	6760      	str	r0, [r4, #116]	; 0x74
 8001d1c:	f7ff f9fc 	bl	8001118 <HAL_GetTick>
 8001d20:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001d24:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001d28:	4680      	mov	r8, r0
 8001d2a:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d2e:	f8d4 b000 	ldr.w	fp, [r4]
 8001d32:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001d36:	2900      	cmp	r1, #0
 8001d38:	d040      	beq.n	8001dbc <HAL_UART_Transmit+0xe2>
 8001d3a:	f105 0a01 	add.w	sl, r5, #1
 8001d3e:	0600      	lsls	r0, r0, #24
 8001d40:	d410      	bmi.n	8001d64 <HAL_UART_Transmit+0x8a>
 8001d42:	465e      	mov	r6, fp
 8001d44:	f1ba 0f00 	cmp.w	sl, #0
 8001d48:	d007      	beq.n	8001d5a <HAL_UART_Transmit+0x80>
 8001d4a:	b33d      	cbz	r5, 8001d9c <HAL_UART_Transmit+0xc2>
 8001d4c:	f7ff f9e4 	bl	8001118 <HAL_GetTick>
 8001d50:	6826      	ldr	r6, [r4, #0]
 8001d52:	eba0 0008 	sub.w	r0, r0, r8
 8001d56:	42a8      	cmp	r0, r5
 8001d58:	d821      	bhi.n	8001d9e <HAL_UART_Transmit+0xc4>
 8001d5a:	69f0      	ldr	r0, [r6, #28]
 8001d5c:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001d60:	d0f0      	beq.n	8001d44 <HAL_UART_Transmit+0x6a>
 8001d62:	e000      	b.n	8001d66 <HAL_UART_Transmit+0x8c>
 8001d64:	465e      	mov	r6, fp
 8001d66:	68a0      	ldr	r0, [r4, #8]
 8001d68:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001d6c:	bf04      	itt	eq
 8001d6e:	6920      	ldreq	r0, [r4, #16]
 8001d70:	2800      	cmpeq	r0, #0
 8001d72:	d002      	beq.n	8001d7a <HAL_UART_Transmit+0xa0>
 8001d74:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001d78:	e003      	b.n	8001d82 <HAL_UART_Transmit+0xa8>
 8001d7a:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001d7e:	f36f 205f 	bfc	r0, #9, #23
 8001d82:	8530      	strh	r0, [r6, #40]	; 0x28
 8001d84:	46b3      	mov	fp, r6
 8001d86:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001d8a:	3801      	subs	r0, #1
 8001d8c:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001d90:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001d94:	69f0      	ldr	r0, [r6, #28]
 8001d96:	2900      	cmp	r1, #0
 8001d98:	d1d1      	bne.n	8001d3e <HAL_UART_Transmit+0x64>
 8001d9a:	e010      	b.n	8001dbe <HAL_UART_Transmit+0xe4>
 8001d9c:	465e      	mov	r6, fp
 8001d9e:	6830      	ldr	r0, [r6, #0]
 8001da0:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001da4:	6030      	str	r0, [r6, #0]
 8001da6:	68b0      	ldr	r0, [r6, #8]
 8001da8:	f020 0001 	bic.w	r0, r0, #1
 8001dac:	60b0      	str	r0, [r6, #8]
 8001dae:	2020      	movs	r0, #32
 8001db0:	6760      	str	r0, [r4, #116]	; 0x74
 8001db2:	67a0      	str	r0, [r4, #120]	; 0x78
 8001db4:	2000      	movs	r0, #0
 8001db6:	6720      	str	r0, [r4, #112]	; 0x70
 8001db8:	2003      	movs	r0, #3
 8001dba:	e7a5      	b.n	8001d08 <HAL_UART_Transmit+0x2e>
 8001dbc:	465e      	mov	r6, fp
 8001dbe:	0640      	lsls	r0, r0, #25
 8001dc0:	d411      	bmi.n	8001de6 <HAL_UART_Transmit+0x10c>
 8001dc2:	f105 0901 	add.w	r9, r5, #1
 8001dc6:	4630      	mov	r0, r6
 8001dc8:	f1b9 0f00 	cmp.w	r9, #0
 8001dcc:	d007      	beq.n	8001dde <HAL_UART_Transmit+0x104>
 8001dce:	b17d      	cbz	r5, 8001df0 <HAL_UART_Transmit+0x116>
 8001dd0:	f7ff f9a2 	bl	8001118 <HAL_GetTick>
 8001dd4:	eba0 0108 	sub.w	r1, r0, r8
 8001dd8:	6820      	ldr	r0, [r4, #0]
 8001dda:	42a9      	cmp	r1, r5
 8001ddc:	d809      	bhi.n	8001df2 <HAL_UART_Transmit+0x118>
 8001dde:	69c1      	ldr	r1, [r0, #28]
 8001de0:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001de4:	d0f0      	beq.n	8001dc8 <HAL_UART_Transmit+0xee>
 8001de6:	2020      	movs	r0, #32
 8001de8:	6760      	str	r0, [r4, #116]	; 0x74
 8001dea:	2000      	movs	r0, #0
 8001dec:	6720      	str	r0, [r4, #112]	; 0x70
 8001dee:	e78b      	b.n	8001d08 <HAL_UART_Transmit+0x2e>
 8001df0:	4630      	mov	r0, r6
 8001df2:	6801      	ldr	r1, [r0, #0]
 8001df4:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001df8:	6001      	str	r1, [r0, #0]
 8001dfa:	6881      	ldr	r1, [r0, #8]
 8001dfc:	f021 0101 	bic.w	r1, r1, #1
 8001e00:	6081      	str	r1, [r0, #8]
 8001e02:	e7d4      	b.n	8001dae <HAL_UART_Transmit+0xd4>

08001e04 <BSP_COM_Init>:
 8001e04:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001e06:	af03      	add	r7, sp, #12
 8001e08:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001e0c:	b086      	sub	sp, #24
 8001e0e:	4605      	mov	r5, r0
 8001e10:	4688      	mov	r8, r1
 8001e12:	b9f5      	cbnz	r5, 8001e52 <BSP_COM_Init+0x4e>
 8001e14:	f241 004c 	movw	r0, #4172	; 0x104c
 8001e18:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001e1c:	6801      	ldr	r1, [r0, #0]
 8001e1e:	f041 0102 	orr.w	r1, r1, #2
 8001e22:	6001      	str	r1, [r0, #0]
 8001e24:	6801      	ldr	r1, [r0, #0]
 8001e26:	f001 0102 	and.w	r1, r1, #2
 8001e2a:	9101      	str	r1, [sp, #4]
 8001e2c:	9901      	ldr	r1, [sp, #4]
 8001e2e:	6801      	ldr	r1, [r0, #0]
 8001e30:	f041 0102 	orr.w	r1, r1, #2
 8001e34:	6001      	str	r1, [r0, #0]
 8001e36:	6801      	ldr	r1, [r0, #0]
 8001e38:	f001 0102 	and.w	r1, r1, #2
 8001e3c:	9101      	str	r1, [sp, #4]
 8001e3e:	9901      	ldr	r1, [sp, #4]
 8001e40:	6941      	ldr	r1, [r0, #20]
 8001e42:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001e46:	6141      	str	r1, [r0, #20]
 8001e48:	6940      	ldr	r0, [r0, #20]
 8001e4a:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001e4e:	9001      	str	r0, [sp, #4]
 8001e50:	9801      	ldr	r0, [sp, #4]
 8001e52:	2040      	movs	r0, #64	; 0x40
 8001e54:	2402      	movs	r4, #2
 8001e56:	ae01      	add	r6, sp, #4
 8001e58:	f04f 0907 	mov.w	r9, #7
 8001e5c:	9001      	str	r0, [sp, #4]
 8001e5e:	2000      	movs	r0, #0
 8001e60:	9402      	str	r4, [sp, #8]
 8001e62:	9404      	str	r4, [sp, #16]
 8001e64:	4631      	mov	r1, r6
 8001e66:	9003      	str	r0, [sp, #12]
 8001e68:	f240 000c 	movw	r0, #12
 8001e6c:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e70:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e74:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001e78:	f7ff f9a7 	bl	80011ca <HAL_GPIO_Init>
 8001e7c:	2080      	movs	r0, #128	; 0x80
 8001e7e:	4631      	mov	r1, r6
 8001e80:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001e84:	f240 0010 	movw	r0, #16
 8001e88:	f8cd 9014 	str.w	r9, [sp, #20]
 8001e8c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001e90:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001e94:	f7ff f999 	bl	80011ca <HAL_GPIO_Init>
 8001e98:	f240 0008 	movw	r0, #8
 8001e9c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ea0:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ea4:	f8c8 0000 	str.w	r0, [r8]
 8001ea8:	4640      	mov	r0, r8
 8001eaa:	f7ff fcff 	bl	80018ac <HAL_UART_Init>
 8001eae:	b006      	add	sp, #24
 8001eb0:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001eb4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001eb6 <sglib_dllist_sort>:
 8001eb6:	6801      	ldr	r1, [r0, #0]
 8001eb8:	2900      	cmp	r1, #0
 8001eba:	bf08      	it	eq
 8001ebc:	4770      	bxeq	lr
 8001ebe:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ec0:	af03      	add	r7, sp, #12
 8001ec2:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ec6:	b081      	sub	sp, #4
 8001ec8:	4688      	mov	r8, r1
 8001eca:	f8d8 1008 	ldr.w	r1, [r8, #8]
 8001ece:	2900      	cmp	r1, #0
 8001ed0:	d1fa      	bne.n	8001ec8 <sglib_dllist_sort+0x12>
 8001ed2:	f04f 0e00 	mov.w	lr, #0
 8001ed6:	f1b8 0f00 	cmp.w	r8, #0
 8001eda:	f8cd e000 	str.w	lr, [sp]
 8001ede:	d075      	beq.n	8001fcc <sglib_dllist_sort+0x116>
 8001ee0:	2201      	movs	r2, #1
 8001ee2:	46ec      	mov	ip, sp
 8001ee4:	f04f 0a00 	mov.w	sl, #0
 8001ee8:	4663      	mov	r3, ip
 8001eea:	46c3      	mov	fp, r8
 8001eec:	f1bb 0f00 	cmp.w	fp, #0
 8001ef0:	46d9      	mov	r9, fp
 8001ef2:	465c      	mov	r4, fp
 8001ef4:	bf18      	it	ne
 8001ef6:	f04f 0901 	movne.w	r9, #1
 8001efa:	d00c      	beq.n	8001f16 <sglib_dllist_sort+0x60>
 8001efc:	2a02      	cmp	r2, #2
 8001efe:	465c      	mov	r4, fp
 8001f00:	db09      	blt.n	8001f16 <sglib_dllist_sort+0x60>
 8001f02:	2102      	movs	r1, #2
 8001f04:	465c      	mov	r4, fp
 8001f06:	6864      	ldr	r4, [r4, #4]
 8001f08:	b11c      	cbz	r4, 8001f12 <sglib_dllist_sort+0x5c>
 8001f0a:	1c4d      	adds	r5, r1, #1
 8001f0c:	4291      	cmp	r1, r2
 8001f0e:	4629      	mov	r1, r5
 8001f10:	dbf9      	blt.n	8001f06 <sglib_dllist_sort+0x50>
 8001f12:	2c00      	cmp	r4, #0
 8001f14:	d04c      	beq.n	8001fb0 <sglib_dllist_sort+0xfa>
 8001f16:	6861      	ldr	r1, [r4, #4]
 8001f18:	f8c4 e004 	str.w	lr, [r4, #4]
 8001f1c:	2900      	cmp	r1, #0
 8001f1e:	460d      	mov	r5, r1
 8001f20:	d00a      	beq.n	8001f38 <sglib_dllist_sort+0x82>
 8001f22:	2a02      	cmp	r2, #2
 8001f24:	460d      	mov	r5, r1
 8001f26:	db07      	blt.n	8001f38 <sglib_dllist_sort+0x82>
 8001f28:	2402      	movs	r4, #2
 8001f2a:	460d      	mov	r5, r1
 8001f2c:	686d      	ldr	r5, [r5, #4]
 8001f2e:	b11d      	cbz	r5, 8001f38 <sglib_dllist_sort+0x82>
 8001f30:	1c66      	adds	r6, r4, #1
 8001f32:	4294      	cmp	r4, r2
 8001f34:	4634      	mov	r4, r6
 8001f36:	dbf9      	blt.n	8001f2c <sglib_dllist_sort+0x76>
 8001f38:	2d00      	cmp	r5, #0
 8001f3a:	bf1a      	itte	ne
 8001f3c:	f8d5 8004 	ldrne.w	r8, [r5, #4]
 8001f40:	f8c5 e004 	strne.w	lr, [r5, #4]
 8001f44:	f04f 0800 	moveq.w	r8, #0
 8001f48:	f1bb 0f00 	cmp.w	fp, #0
 8001f4c:	bf18      	it	ne
 8001f4e:	2900      	cmpne	r1, #0
 8001f50:	d017      	beq.n	8001f82 <sglib_dllist_sort+0xcc>
 8001f52:	f8db 4000 	ldr.w	r4, [fp]
 8001f56:	680d      	ldr	r5, [r1, #0]
 8001f58:	42ac      	cmp	r4, r5
 8001f5a:	db06      	blt.n	8001f6a <sglib_dllist_sort+0xb4>
 8001f5c:	6019      	str	r1, [r3, #0]
 8001f5e:	460b      	mov	r3, r1
 8001f60:	f853 1f04 	ldr.w	r1, [r3, #4]!
 8001f64:	2900      	cmp	r1, #0
 8001f66:	d1f6      	bne.n	8001f56 <sglib_dllist_sort+0xa0>
 8001f68:	e010      	b.n	8001f8c <sglib_dllist_sort+0xd6>
 8001f6a:	f8c3 b000 	str.w	fp, [r3]
 8001f6e:	465b      	mov	r3, fp
 8001f70:	f853 bf04 	ldr.w	fp, [r3, #4]!
 8001f74:	f1bb 0f00 	cmp.w	fp, #0
 8001f78:	46d9      	mov	r9, fp
 8001f7a:	bf18      	it	ne
 8001f7c:	f04f 0901 	movne.w	r9, #1
 8001f80:	d1e7      	bne.n	8001f52 <sglib_dllist_sort+0x9c>
 8001f82:	f1b9 0f01 	cmp.w	r9, #1
 8001f86:	bf08      	it	eq
 8001f88:	4659      	moveq	r1, fp
 8001f8a:	e000      	b.n	8001f8e <sglib_dllist_sort+0xd8>
 8001f8c:	4659      	mov	r1, fp
 8001f8e:	2900      	cmp	r1, #0
 8001f90:	6019      	str	r1, [r3, #0]
 8001f92:	d005      	beq.n	8001fa0 <sglib_dllist_sort+0xea>
 8001f94:	f851 4f04 	ldr.w	r4, [r1, #4]!
 8001f98:	460b      	mov	r3, r1
 8001f9a:	2c00      	cmp	r4, #0
 8001f9c:	4621      	mov	r1, r4
 8001f9e:	d1f9      	bne.n	8001f94 <sglib_dllist_sort+0xde>
 8001fa0:	f04f 0a01 	mov.w	sl, #1
 8001fa4:	f1b8 0f00 	cmp.w	r8, #0
 8001fa8:	d19f      	bne.n	8001eea <sglib_dllist_sort+0x34>
 8001faa:	f8dd 8000 	ldr.w	r8, [sp]
 8001fae:	e006      	b.n	8001fbe <sglib_dllist_sort+0x108>
 8001fb0:	f8c3 b000 	str.w	fp, [r3]
 8001fb4:	f1ba 0f00 	cmp.w	sl, #0
 8001fb8:	f8dd 8000 	ldr.w	r8, [sp]
 8001fbc:	d008      	beq.n	8001fd0 <sglib_dllist_sort+0x11a>
 8001fbe:	0052      	lsls	r2, r2, #1
 8001fc0:	f1b8 0f00 	cmp.w	r8, #0
 8001fc4:	f8cd e000 	str.w	lr, [sp]
 8001fc8:	f47f af8c 	bne.w	8001ee4 <sglib_dllist_sort+0x2e>
 8001fcc:	f8dd 8000 	ldr.w	r8, [sp]
 8001fd0:	f1b8 0f00 	cmp.w	r8, #0
 8001fd4:	d007      	beq.n	8001fe6 <sglib_dllist_sort+0x130>
 8001fd6:	2200      	movs	r2, #0
 8001fd8:	4641      	mov	r1, r8
 8001fda:	460b      	mov	r3, r1
 8001fdc:	609a      	str	r2, [r3, #8]
 8001fde:	461a      	mov	r2, r3
 8001fe0:	6859      	ldr	r1, [r3, #4]
 8001fe2:	2900      	cmp	r1, #0
 8001fe4:	d1f9      	bne.n	8001fda <sglib_dllist_sort+0x124>
 8001fe6:	f8c0 8000 	str.w	r8, [r0]
 8001fea:	b001      	add	sp, #4
 8001fec:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001ff0:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
 8001ff4:	4770      	bx	lr

08001ff6 <verify_benchmark>:
 8001ff6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001ffa:	4770      	bx	lr

08001ffc <initialise_benchmark>:
 8001ffc:	4770      	bx	lr

08001ffe <benchmark>:
 8001ffe:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002000:	af03      	add	r7, sp, #12
 8002002:	f84d 8d04 	str.w	r8, [sp, #-4]!
 8002006:	b084      	sub	sp, #16
 8002008:	f240 0514 	movw	r5, #20
 800200c:	2400      	movs	r4, #0
 800200e:	2600      	movs	r6, #0
 8002010:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8002014:	9403      	str	r4, [sp, #12]
 8002016:	9402      	str	r4, [sp, #8]
 8002018:	200c      	movs	r0, #12
 800201a:	f000 f999 	bl	8002350 <malloc>
 800201e:	f855 1026 	ldr.w	r1, [r5, r6, lsl #2]
 8002022:	2c00      	cmp	r4, #0
 8002024:	6001      	str	r1, [r0, #0]
 8002026:	d008      	beq.n	800203a <benchmark+0x3c>
 8002028:	6044      	str	r4, [r0, #4]
 800202a:	68a1      	ldr	r1, [r4, #8]
 800202c:	6081      	str	r1, [r0, #8]
 800202e:	60a0      	str	r0, [r4, #8]
 8002030:	6881      	ldr	r1, [r0, #8]
 8002032:	2900      	cmp	r1, #0
 8002034:	bf18      	it	ne
 8002036:	6048      	strne	r0, [r1, #4]
 8002038:	e005      	b.n	8002046 <benchmark+0x48>
 800203a:	2100      	movs	r1, #0
 800203c:	4604      	mov	r4, r0
 800203e:	6081      	str	r1, [r0, #8]
 8002040:	4601      	mov	r1, r0
 8002042:	2000      	movs	r0, #0
 8002044:	6048      	str	r0, [r1, #4]
 8002046:	3601      	adds	r6, #1
 8002048:	2e64      	cmp	r6, #100	; 0x64
 800204a:	d1e5      	bne.n	8002018 <benchmark+0x1a>
 800204c:	a802      	add	r0, sp, #8
 800204e:	9402      	str	r4, [sp, #8]
 8002050:	f7ff ff31 	bl	8001eb6 <sglib_dllist_sort>
 8002054:	9802      	ldr	r0, [sp, #8]
 8002056:	b3f0      	cbz	r0, 80020d6 <benchmark+0xd8>
 8002058:	4602      	mov	r2, r0
 800205a:	4611      	mov	r1, r2
 800205c:	688a      	ldr	r2, [r1, #8]
 800205e:	2a00      	cmp	r2, #0
 8002060:	d1fb      	bne.n	800205a <benchmark+0x5c>
 8002062:	4603      	mov	r3, r0
 8002064:	461a      	mov	r2, r3
 8002066:	6893      	ldr	r3, [r2, #8]
 8002068:	2b00      	cmp	r3, #0
 800206a:	d1fb      	bne.n	8002064 <benchmark+0x66>
 800206c:	b12a      	cbz	r2, 800207a <benchmark+0x7c>
 800206e:	680b      	ldr	r3, [r1, #0]
 8002070:	4611      	mov	r1, r2
 8002072:	600b      	str	r3, [r1, #0]
 8002074:	684a      	ldr	r2, [r1, #4]
 8002076:	2a00      	cmp	r2, #0
 8002078:	d1fa      	bne.n	8002070 <benchmark+0x72>
 800207a:	b360      	cbz	r0, 80020d6 <benchmark+0xd8>
 800207c:	4603      	mov	r3, r0
 800207e:	461a      	mov	r2, r3
 8002080:	6853      	ldr	r3, [r2, #4]
 8002082:	2b00      	cmp	r3, #0
 8002084:	d1fb      	bne.n	800207e <benchmark+0x80>
 8002086:	6809      	ldr	r1, [r1, #0]
 8002088:	6011      	str	r1, [r2, #0]
 800208a:	6892      	ldr	r2, [r2, #8]
 800208c:	2a00      	cmp	r2, #0
 800208e:	d1fb      	bne.n	8002088 <benchmark+0x8a>
 8002090:	2800      	cmp	r0, #0
 8002092:	e9cd 0000 	strd	r0, r0, [sp]
 8002096:	d020      	beq.n	80020da <benchmark+0xdc>
 8002098:	6841      	ldr	r1, [r0, #4]
 800209a:	2400      	movs	r4, #0
 800209c:	46e8      	mov	r8, sp
 800209e:	ae01      	add	r6, sp, #4
 80020a0:	9100      	str	r1, [sp, #0]
 80020a2:	6885      	ldr	r5, [r0, #8]
 80020a4:	9501      	str	r5, [sp, #4]
 80020a6:	e002      	b.n	80020ae <benchmark+0xb0>
 80020a8:	6809      	ldr	r1, [r1, #0]
 80020aa:	6011      	str	r1, [r2, #0]
 80020ac:	9d01      	ldr	r5, [sp, #4]
 80020ae:	6801      	ldr	r1, [r0, #0]
 80020b0:	9a03      	ldr	r2, [sp, #12]
 80020b2:	4411      	add	r1, r2
 80020b4:	9103      	str	r1, [sp, #12]
 80020b6:	f000 f953 	bl	8002360 <free>
 80020ba:	2d00      	cmp	r5, #0
 80020bc:	9401      	str	r4, [sp, #4]
 80020be:	d004      	beq.n	80020ca <benchmark+0xcc>
 80020c0:	f105 0108 	add.w	r1, r5, #8
 80020c4:	4632      	mov	r2, r6
 80020c6:	4628      	mov	r0, r5
 80020c8:	e7ee      	b.n	80020a8 <benchmark+0xaa>
 80020ca:	9800      	ldr	r0, [sp, #0]
 80020cc:	9400      	str	r4, [sp, #0]
 80020ce:	b138      	cbz	r0, 80020e0 <benchmark+0xe2>
 80020d0:	1d01      	adds	r1, r0, #4
 80020d2:	4642      	mov	r2, r8
 80020d4:	e7e8      	b.n	80020a8 <benchmark+0xaa>
 80020d6:	e9cd 0000 	strd	r0, r0, [sp]
 80020da:	2000      	movs	r0, #0
 80020dc:	e9cd 0000 	strd	r0, r0, [sp]
 80020e0:	9803      	ldr	r0, [sp, #12]
 80020e2:	b004      	add	sp, #16
 80020e4:	f85d 8b04 	ldr.w	r8, [sp], #4
 80020e8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080020ea <__io_putchar>:
 80020ea:	b580      	push	{r7, lr}
 80020ec:	466f      	mov	r7, sp
 80020ee:	b082      	sub	sp, #8
 80020f0:	9001      	str	r0, [sp, #4]
 80020f2:	f640 3074 	movw	r0, #2932	; 0xb74
 80020f6:	a901      	add	r1, sp, #4
 80020f8:	2201      	movs	r2, #1
 80020fa:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80020fe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002102:	f7ff fdea 	bl	8001cda <HAL_UART_Transmit>
 8002106:	9801      	ldr	r0, [sp, #4]
 8002108:	b002      	add	sp, #8
 800210a:	bd80      	pop	{r7, pc}

0800210c <main>:
 800210c:	b5b0      	push	{r4, r5, r7, lr}
 800210e:	af02      	add	r7, sp, #8
 8002110:	f640 3174 	movw	r1, #2932	; 0xb74
 8002114:	f643 0000 	movw	r0, #14336	; 0x3800
 8002118:	220c      	movs	r2, #12
 800211a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800211e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002122:	6008      	str	r0, [r1, #0]
 8002124:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002128:	6048      	str	r0, [r1, #4]
 800212a:	2000      	movs	r0, #0
 800212c:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002130:	6108      	str	r0, [r1, #16]
 8002132:	6248      	str	r0, [r1, #36]	; 0x24
 8002134:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002138:	e9c1 2005 	strd	r2, r0, [r1, #20]
 800213c:	2000      	movs	r0, #0
 800213e:	f7ff fe61 	bl	8001e04 <BSP_COM_Init>
 8002142:	f7ff ff5b 	bl	8001ffc <initialise_benchmark>
 8002146:	f247 1020 	movw	r0, #28960	; 0x7120
 800214a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800214e:	f000 fc09 	bl	8002964 <printf>
 8002152:	f247 10cf 	movw	r0, #29135	; 0x71cf
 8002156:	f6c0 0000 	movt	r0, #2048	; 0x800
 800215a:	f000 fc65 	bl	8002a28 <puts>
 800215e:	f7fe ffc3 	bl	80010e8 <HAL_Init>
 8002162:	f7fe ffd9 	bl	8001118 <HAL_GetTick>
 8002166:	4604      	mov	r4, r0
 8002168:	f7ff ff49 	bl	8001ffe <benchmark>
 800216c:	4605      	mov	r5, r0
 800216e:	f7fe ffd3 	bl	8001118 <HAL_GetTick>
 8002172:	1b04      	subs	r4, r0, r4
 8002174:	4628      	mov	r0, r5
 8002176:	f7ff ff3e 	bl	8001ff6 <verify_benchmark>
 800217a:	1c41      	adds	r1, r0, #1
 800217c:	d006      	beq.n	800218c <main+0x80>
 800217e:	2801      	cmp	r0, #1
 8002180:	d109      	bne.n	8002196 <main+0x8a>
 8002182:	f247 103b 	movw	r0, #28987	; 0x713b
 8002186:	f6c0 0000 	movt	r0, #2048	; 0x800
 800218a:	e008      	b.n	800219e <main+0x92>
 800218c:	f247 105f 	movw	r0, #29023	; 0x715f
 8002190:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002194:	e003      	b.n	800219e <main+0x92>
 8002196:	f247 1094 	movw	r0, #29076	; 0x7194
 800219a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800219e:	4621      	mov	r1, r4
 80021a0:	f000 fbe0 	bl	8002964 <printf>
 80021a4:	2000      	movs	r0, #0
 80021a6:	bdb0      	pop	{r4, r5, r7, pc}

080021a8 <SysTick_Handler>:
 80021a8:	b580      	push	{r7, lr}
 80021aa:	466f      	mov	r7, sp
 80021ac:	f7fe ffac 	bl	8001108 <HAL_IncTick>
 80021b0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80021b4:	f7ff b806 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

080021b8 <_read>:
 80021b8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80021ba:	af03      	add	r7, sp, #12
 80021bc:	f84d bd04 	str.w	fp, [sp, #-4]!
 80021c0:	4614      	mov	r4, r2
 80021c2:	460d      	mov	r5, r1
 80021c4:	2c01      	cmp	r4, #1
 80021c6:	db06      	blt.n	80021d6 <_read+0x1e>
 80021c8:	4626      	mov	r6, r4
 80021ca:	f3af 8000 	nop.w
 80021ce:	f805 0b01 	strb.w	r0, [r5], #1
 80021d2:	3e01      	subs	r6, #1
 80021d4:	d1f9      	bne.n	80021ca <_read+0x12>
 80021d6:	4620      	mov	r0, r4
 80021d8:	f85d bb04 	ldr.w	fp, [sp], #4
 80021dc:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021de <_write>:
 80021de:	b5f0      	push	{r4, r5, r6, r7, lr}
 80021e0:	af03      	add	r7, sp, #12
 80021e2:	f84d bd04 	str.w	fp, [sp, #-4]!
 80021e6:	4614      	mov	r4, r2
 80021e8:	460d      	mov	r5, r1
 80021ea:	2c01      	cmp	r4, #1
 80021ec:	db06      	blt.n	80021fc <_write+0x1e>
 80021ee:	4626      	mov	r6, r4
 80021f0:	f815 0b01 	ldrb.w	r0, [r5], #1
 80021f4:	f7ff ff79 	bl	80020ea <__io_putchar>
 80021f8:	3e01      	subs	r6, #1
 80021fa:	d1f9      	bne.n	80021f0 <_write+0x12>
 80021fc:	4620      	mov	r0, r4
 80021fe:	f85d bb04 	ldr.w	fp, [sp], #4
 8002202:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002204 <_sbrk>:
 8002204:	f640 32f8 	movw	r2, #3064	; 0xbf8
 8002208:	4601      	mov	r1, r0
 800220a:	466b      	mov	r3, sp
 800220c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002210:	6810      	ldr	r0, [r2, #0]
 8002212:	2800      	cmp	r0, #0
 8002214:	bf02      	ittt	eq
 8002216:	f640 40a0 	movweq	r0, #3232	; 0xca0
 800221a:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800221e:	6010      	streq	r0, [r2, #0]
 8002220:	4401      	add	r1, r0
 8002222:	4299      	cmp	r1, r3
 8002224:	bf9c      	itt	ls
 8002226:	6011      	strls	r1, [r2, #0]
 8002228:	4770      	bxls	lr
 800222a:	b580      	push	{r7, lr}
 800222c:	466f      	mov	r7, sp
 800222e:	f000 f865 	bl	80022fc <__errno>
 8002232:	210c      	movs	r1, #12
 8002234:	6001      	str	r1, [r0, #0]
 8002236:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800223a:	bd80      	pop	{r7, pc}

0800223c <_close>:
 800223c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002240:	4770      	bx	lr

08002242 <_fstat>:
 8002242:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002246:	6048      	str	r0, [r1, #4]
 8002248:	2000      	movs	r0, #0
 800224a:	4770      	bx	lr

0800224c <_isatty>:
 800224c:	2001      	movs	r0, #1
 800224e:	4770      	bx	lr

08002250 <_lseek>:
 8002250:	2000      	movs	r0, #0
 8002252:	4770      	bx	lr

08002254 <SystemInit>:
 8002254:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002258:	f04f 0c00 	mov.w	ip, #0
 800225c:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002260:	6801      	ldr	r1, [r0, #0]
 8002262:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002266:	6001      	str	r1, [r0, #0]
 8002268:	f241 0100 	movw	r1, #4096	; 0x1000
 800226c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002270:	680a      	ldr	r2, [r1, #0]
 8002272:	f042 0201 	orr.w	r2, r2, #1
 8002276:	600a      	str	r2, [r1, #0]
 8002278:	f8c1 c008 	str.w	ip, [r1, #8]
 800227c:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002280:	680b      	ldr	r3, [r1, #0]
 8002282:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002286:	401a      	ands	r2, r3
 8002288:	600a      	str	r2, [r1, #0]
 800228a:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800228e:	60ca      	str	r2, [r1, #12]
 8002290:	680a      	ldr	r2, [r1, #0]
 8002292:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002296:	600a      	str	r2, [r1, #0]
 8002298:	f8c1 c018 	str.w	ip, [r1, #24]
 800229c:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80022a0:	f840 1c80 	str.w	r1, [r0, #-128]
 80022a4:	4770      	bx	lr
	...

080022a8 <Reset_Handler>:
 80022a8:	f8df d034 	ldr.w	sp, [pc, #52]	; 80022e0 <LoopForever+0x2>
 80022ac:	2100      	movs	r1, #0
 80022ae:	e003      	b.n	80022b8 <LoopCopyDataInit>

080022b0 <CopyDataInit>:
 80022b0:	4b0c      	ldr	r3, [pc, #48]	; (80022e4 <LoopForever+0x6>)
 80022b2:	585b      	ldr	r3, [r3, r1]
 80022b4:	5043      	str	r3, [r0, r1]
 80022b6:	3104      	adds	r1, #4

080022b8 <LoopCopyDataInit>:
 80022b8:	480b      	ldr	r0, [pc, #44]	; (80022e8 <LoopForever+0xa>)
 80022ba:	4b0c      	ldr	r3, [pc, #48]	; (80022ec <LoopForever+0xe>)
 80022bc:	1842      	adds	r2, r0, r1
 80022be:	429a      	cmp	r2, r3
 80022c0:	d3f6      	bcc.n	80022b0 <CopyDataInit>
 80022c2:	4a0b      	ldr	r2, [pc, #44]	; (80022f0 <LoopForever+0x12>)
 80022c4:	e002      	b.n	80022cc <LoopFillZerobss>

080022c6 <FillZerobss>:
 80022c6:	2300      	movs	r3, #0
 80022c8:	f842 3b04 	str.w	r3, [r2], #4

080022cc <LoopFillZerobss>:
 80022cc:	4b09      	ldr	r3, [pc, #36]	; (80022f4 <LoopForever+0x16>)
 80022ce:	429a      	cmp	r2, r3
 80022d0:	d3f9      	bcc.n	80022c6 <FillZerobss>
 80022d2:	f7ff ffbf 	bl	8002254 <SystemInit>
 80022d6:	f000 f817 	bl	8002308 <__libc_init_array>
 80022da:	f7ff ff17 	bl	800210c <main>

080022de <LoopForever>:
 80022de:	e7fe      	b.n	80022de <LoopForever>
 80022e0:	20018000 	.word	0x20018000
 80022e4:	08007478 	.word	0x08007478
 80022e8:	20000000 	.word	0x20000000
 80022ec:	20000b58 	.word	0x20000b58
 80022f0:	20000b58 	.word	0x20000b58
 80022f4:	20000ca0 	.word	0x20000ca0

080022f8 <ADC1_2_IRQHandler>:
 80022f8:	e7fe      	b.n	80022f8 <ADC1_2_IRQHandler>
	...

080022fc <__errno>:
 80022fc:	4b01      	ldr	r3, [pc, #4]	; (8002304 <__errno+0x8>)
 80022fe:	6818      	ldr	r0, [r3, #0]
 8002300:	4770      	bx	lr
 8002302:	bf00      	nop
 8002304:	200001a8 	.word	0x200001a8

08002308 <__libc_init_array>:
 8002308:	b570      	push	{r4, r5, r6, lr}
 800230a:	4e0d      	ldr	r6, [pc, #52]	; (8002340 <__libc_init_array+0x38>)
 800230c:	4d0d      	ldr	r5, [pc, #52]	; (8002344 <__libc_init_array+0x3c>)
 800230e:	1b76      	subs	r6, r6, r5
 8002310:	10b6      	asrs	r6, r6, #2
 8002312:	d006      	beq.n	8002322 <__libc_init_array+0x1a>
 8002314:	2400      	movs	r4, #0
 8002316:	3401      	adds	r4, #1
 8002318:	f855 3b04 	ldr.w	r3, [r5], #4
 800231c:	4798      	blx	r3
 800231e:	42a6      	cmp	r6, r4
 8002320:	d1f9      	bne.n	8002316 <__libc_init_array+0xe>
 8002322:	4e09      	ldr	r6, [pc, #36]	; (8002348 <__libc_init_array+0x40>)
 8002324:	4d09      	ldr	r5, [pc, #36]	; (800234c <__libc_init_array+0x44>)
 8002326:	1b76      	subs	r6, r6, r5
 8002328:	f004 feba 	bl	80070a0 <_init>
 800232c:	10b6      	asrs	r6, r6, #2
 800232e:	d006      	beq.n	800233e <__libc_init_array+0x36>
 8002330:	2400      	movs	r4, #0
 8002332:	3401      	adds	r4, #1
 8002334:	f855 3b04 	ldr.w	r3, [r5], #4
 8002338:	4798      	blx	r3
 800233a:	42a6      	cmp	r6, r4
 800233c:	d1f9      	bne.n	8002332 <__libc_init_array+0x2a>
 800233e:	bd70      	pop	{r4, r5, r6, pc}
 8002340:	08007468 	.word	0x08007468
 8002344:	08007468 	.word	0x08007468
 8002348:	08007470 	.word	0x08007470
 800234c:	08007468 	.word	0x08007468

08002350 <malloc>:
 8002350:	4b02      	ldr	r3, [pc, #8]	; (800235c <malloc+0xc>)
 8002352:	4601      	mov	r1, r0
 8002354:	6818      	ldr	r0, [r3, #0]
 8002356:	f000 b80b 	b.w	8002370 <_malloc_r>
 800235a:	bf00      	nop
 800235c:	200001a8 	.word	0x200001a8

08002360 <free>:
 8002360:	4b02      	ldr	r3, [pc, #8]	; (800236c <free+0xc>)
 8002362:	4601      	mov	r1, r0
 8002364:	6818      	ldr	r0, [r3, #0]
 8002366:	f003 babb 	b.w	80058e0 <_free_r>
 800236a:	bf00      	nop
 800236c:	200001a8 	.word	0x200001a8

08002370 <_malloc_r>:
 8002370:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002374:	f101 050b 	add.w	r5, r1, #11
 8002378:	2d16      	cmp	r5, #22
 800237a:	b083      	sub	sp, #12
 800237c:	4606      	mov	r6, r0
 800237e:	d823      	bhi.n	80023c8 <_malloc_r+0x58>
 8002380:	2910      	cmp	r1, #16
 8002382:	f200 80b9 	bhi.w	80024f8 <_malloc_r+0x188>
 8002386:	f000 fae1 	bl	800294c <__malloc_lock>
 800238a:	2510      	movs	r5, #16
 800238c:	2318      	movs	r3, #24
 800238e:	2002      	movs	r0, #2
 8002390:	4fc5      	ldr	r7, [pc, #788]	; (80026a8 <_malloc_r+0x338>)
 8002392:	443b      	add	r3, r7
 8002394:	f1a3 0208 	sub.w	r2, r3, #8
 8002398:	685c      	ldr	r4, [r3, #4]
 800239a:	4294      	cmp	r4, r2
 800239c:	f000 8166 	beq.w	800266c <_malloc_r+0x2fc>
 80023a0:	6863      	ldr	r3, [r4, #4]
 80023a2:	f023 0303 	bic.w	r3, r3, #3
 80023a6:	4423      	add	r3, r4
 80023a8:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80023ac:	685a      	ldr	r2, [r3, #4]
 80023ae:	60e9      	str	r1, [r5, #12]
 80023b0:	f042 0201 	orr.w	r2, r2, #1
 80023b4:	608d      	str	r5, [r1, #8]
 80023b6:	4630      	mov	r0, r6
 80023b8:	605a      	str	r2, [r3, #4]
 80023ba:	f000 facd 	bl	8002958 <__malloc_unlock>
 80023be:	3408      	adds	r4, #8
 80023c0:	4620      	mov	r0, r4
 80023c2:	b003      	add	sp, #12
 80023c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80023c8:	f035 0507 	bics.w	r5, r5, #7
 80023cc:	f100 8094 	bmi.w	80024f8 <_malloc_r+0x188>
 80023d0:	42a9      	cmp	r1, r5
 80023d2:	f200 8091 	bhi.w	80024f8 <_malloc_r+0x188>
 80023d6:	f000 fab9 	bl	800294c <__malloc_lock>
 80023da:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80023de:	f0c0 8183 	bcc.w	80026e8 <_malloc_r+0x378>
 80023e2:	0a6b      	lsrs	r3, r5, #9
 80023e4:	f000 808f 	beq.w	8002506 <_malloc_r+0x196>
 80023e8:	2b04      	cmp	r3, #4
 80023ea:	f200 8146 	bhi.w	800267a <_malloc_r+0x30a>
 80023ee:	09ab      	lsrs	r3, r5, #6
 80023f0:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80023f4:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80023f8:	00c3      	lsls	r3, r0, #3
 80023fa:	4fab      	ldr	r7, [pc, #684]	; (80026a8 <_malloc_r+0x338>)
 80023fc:	443b      	add	r3, r7
 80023fe:	f1a3 0108 	sub.w	r1, r3, #8
 8002402:	685c      	ldr	r4, [r3, #4]
 8002404:	42a1      	cmp	r1, r4
 8002406:	d106      	bne.n	8002416 <_malloc_r+0xa6>
 8002408:	e00c      	b.n	8002424 <_malloc_r+0xb4>
 800240a:	2a00      	cmp	r2, #0
 800240c:	f280 811d 	bge.w	800264a <_malloc_r+0x2da>
 8002410:	68e4      	ldr	r4, [r4, #12]
 8002412:	42a1      	cmp	r1, r4
 8002414:	d006      	beq.n	8002424 <_malloc_r+0xb4>
 8002416:	6863      	ldr	r3, [r4, #4]
 8002418:	f023 0303 	bic.w	r3, r3, #3
 800241c:	1b5a      	subs	r2, r3, r5
 800241e:	2a0f      	cmp	r2, #15
 8002420:	ddf3      	ble.n	800240a <_malloc_r+0x9a>
 8002422:	4660      	mov	r0, ip
 8002424:	693c      	ldr	r4, [r7, #16]
 8002426:	f8df c294 	ldr.w	ip, [pc, #660]	; 80026bc <_malloc_r+0x34c>
 800242a:	4564      	cmp	r4, ip
 800242c:	d071      	beq.n	8002512 <_malloc_r+0x1a2>
 800242e:	6863      	ldr	r3, [r4, #4]
 8002430:	f023 0303 	bic.w	r3, r3, #3
 8002434:	1b5a      	subs	r2, r3, r5
 8002436:	2a0f      	cmp	r2, #15
 8002438:	f300 8144 	bgt.w	80026c4 <_malloc_r+0x354>
 800243c:	2a00      	cmp	r2, #0
 800243e:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8002442:	f280 8126 	bge.w	8002692 <_malloc_r+0x322>
 8002446:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800244a:	f080 8169 	bcs.w	8002720 <_malloc_r+0x3b0>
 800244e:	08db      	lsrs	r3, r3, #3
 8002450:	1c59      	adds	r1, r3, #1
 8002452:	687a      	ldr	r2, [r7, #4]
 8002454:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8002458:	f8c4 8008 	str.w	r8, [r4, #8]
 800245c:	f04f 0e01 	mov.w	lr, #1
 8002460:	109b      	asrs	r3, r3, #2
 8002462:	fa0e f303 	lsl.w	r3, lr, r3
 8002466:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800246a:	4313      	orrs	r3, r2
 800246c:	f1ae 0208 	sub.w	r2, lr, #8
 8002470:	60e2      	str	r2, [r4, #12]
 8002472:	607b      	str	r3, [r7, #4]
 8002474:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8002478:	f8c8 400c 	str.w	r4, [r8, #12]
 800247c:	1082      	asrs	r2, r0, #2
 800247e:	2401      	movs	r4, #1
 8002480:	4094      	lsls	r4, r2
 8002482:	429c      	cmp	r4, r3
 8002484:	d84b      	bhi.n	800251e <_malloc_r+0x1ae>
 8002486:	421c      	tst	r4, r3
 8002488:	d106      	bne.n	8002498 <_malloc_r+0x128>
 800248a:	f020 0003 	bic.w	r0, r0, #3
 800248e:	0064      	lsls	r4, r4, #1
 8002490:	421c      	tst	r4, r3
 8002492:	f100 0004 	add.w	r0, r0, #4
 8002496:	d0fa      	beq.n	800248e <_malloc_r+0x11e>
 8002498:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 800249c:	46ce      	mov	lr, r9
 800249e:	4680      	mov	r8, r0
 80024a0:	f8de 300c 	ldr.w	r3, [lr, #12]
 80024a4:	459e      	cmp	lr, r3
 80024a6:	d107      	bne.n	80024b8 <_malloc_r+0x148>
 80024a8:	e122      	b.n	80026f0 <_malloc_r+0x380>
 80024aa:	2a00      	cmp	r2, #0
 80024ac:	f280 8129 	bge.w	8002702 <_malloc_r+0x392>
 80024b0:	68db      	ldr	r3, [r3, #12]
 80024b2:	459e      	cmp	lr, r3
 80024b4:	f000 811c 	beq.w	80026f0 <_malloc_r+0x380>
 80024b8:	6859      	ldr	r1, [r3, #4]
 80024ba:	f021 0103 	bic.w	r1, r1, #3
 80024be:	1b4a      	subs	r2, r1, r5
 80024c0:	2a0f      	cmp	r2, #15
 80024c2:	ddf2      	ble.n	80024aa <_malloc_r+0x13a>
 80024c4:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80024c8:	195c      	adds	r4, r3, r5
 80024ca:	f045 0501 	orr.w	r5, r5, #1
 80024ce:	605d      	str	r5, [r3, #4]
 80024d0:	f042 0501 	orr.w	r5, r2, #1
 80024d4:	f8c8 e00c 	str.w	lr, [r8, #12]
 80024d8:	4630      	mov	r0, r6
 80024da:	f8ce 8008 	str.w	r8, [lr, #8]
 80024de:	e9c7 4404 	strd	r4, r4, [r7, #16]
 80024e2:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 80024e6:	6065      	str	r5, [r4, #4]
 80024e8:	505a      	str	r2, [r3, r1]
 80024ea:	9301      	str	r3, [sp, #4]
 80024ec:	f000 fa34 	bl	8002958 <__malloc_unlock>
 80024f0:	9b01      	ldr	r3, [sp, #4]
 80024f2:	f103 0408 	add.w	r4, r3, #8
 80024f6:	e763      	b.n	80023c0 <_malloc_r+0x50>
 80024f8:	2400      	movs	r4, #0
 80024fa:	230c      	movs	r3, #12
 80024fc:	4620      	mov	r0, r4
 80024fe:	6033      	str	r3, [r6, #0]
 8002500:	b003      	add	sp, #12
 8002502:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002506:	f44f 7300 	mov.w	r3, #512	; 0x200
 800250a:	2040      	movs	r0, #64	; 0x40
 800250c:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8002510:	e773      	b.n	80023fa <_malloc_r+0x8a>
 8002512:	687b      	ldr	r3, [r7, #4]
 8002514:	1082      	asrs	r2, r0, #2
 8002516:	2401      	movs	r4, #1
 8002518:	4094      	lsls	r4, r2
 800251a:	429c      	cmp	r4, r3
 800251c:	d9b3      	bls.n	8002486 <_malloc_r+0x116>
 800251e:	68bc      	ldr	r4, [r7, #8]
 8002520:	6863      	ldr	r3, [r4, #4]
 8002522:	f023 0903 	bic.w	r9, r3, #3
 8002526:	45a9      	cmp	r9, r5
 8002528:	d303      	bcc.n	8002532 <_malloc_r+0x1c2>
 800252a:	eba9 0305 	sub.w	r3, r9, r5
 800252e:	2b0f      	cmp	r3, #15
 8002530:	dc7b      	bgt.n	800262a <_malloc_r+0x2ba>
 8002532:	4b5e      	ldr	r3, [pc, #376]	; (80026ac <_malloc_r+0x33c>)
 8002534:	f8df a188 	ldr.w	sl, [pc, #392]	; 80026c0 <_malloc_r+0x350>
 8002538:	681a      	ldr	r2, [r3, #0]
 800253a:	f8da 3000 	ldr.w	r3, [sl]
 800253e:	3301      	adds	r3, #1
 8002540:	eb05 0802 	add.w	r8, r5, r2
 8002544:	f000 8148 	beq.w	80027d8 <_malloc_r+0x468>
 8002548:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 800254c:	f108 080f 	add.w	r8, r8, #15
 8002550:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8002554:	f028 080f 	bic.w	r8, r8, #15
 8002558:	4641      	mov	r1, r8
 800255a:	4630      	mov	r0, r6
 800255c:	f000 fa6c 	bl	8002a38 <_sbrk_r>
 8002560:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8002564:	4683      	mov	fp, r0
 8002566:	f000 8104 	beq.w	8002772 <_malloc_r+0x402>
 800256a:	eb04 0009 	add.w	r0, r4, r9
 800256e:	4558      	cmp	r0, fp
 8002570:	f200 80fd 	bhi.w	800276e <_malloc_r+0x3fe>
 8002574:	4a4e      	ldr	r2, [pc, #312]	; (80026b0 <_malloc_r+0x340>)
 8002576:	6813      	ldr	r3, [r2, #0]
 8002578:	4443      	add	r3, r8
 800257a:	6013      	str	r3, [r2, #0]
 800257c:	f000 814d 	beq.w	800281a <_malloc_r+0x4aa>
 8002580:	f8da 1000 	ldr.w	r1, [sl]
 8002584:	3101      	adds	r1, #1
 8002586:	bf1b      	ittet	ne
 8002588:	ebab 0000 	subne.w	r0, fp, r0
 800258c:	181b      	addne	r3, r3, r0
 800258e:	f8ca b000 	streq.w	fp, [sl]
 8002592:	6013      	strne	r3, [r2, #0]
 8002594:	f01b 0307 	ands.w	r3, fp, #7
 8002598:	f000 8134 	beq.w	8002804 <_malloc_r+0x494>
 800259c:	f1c3 0108 	rsb	r1, r3, #8
 80025a0:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80025a4:	448b      	add	fp, r1
 80025a6:	3308      	adds	r3, #8
 80025a8:	44d8      	add	r8, fp
 80025aa:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80025ae:	eba3 0808 	sub.w	r8, r3, r8
 80025b2:	4641      	mov	r1, r8
 80025b4:	4630      	mov	r0, r6
 80025b6:	9201      	str	r2, [sp, #4]
 80025b8:	f000 fa3e 	bl	8002a38 <_sbrk_r>
 80025bc:	1c43      	adds	r3, r0, #1
 80025be:	9a01      	ldr	r2, [sp, #4]
 80025c0:	f000 8146 	beq.w	8002850 <_malloc_r+0x4e0>
 80025c4:	eba0 010b 	sub.w	r1, r0, fp
 80025c8:	4441      	add	r1, r8
 80025ca:	f041 0101 	orr.w	r1, r1, #1
 80025ce:	6813      	ldr	r3, [r2, #0]
 80025d0:	f8c7 b008 	str.w	fp, [r7, #8]
 80025d4:	4443      	add	r3, r8
 80025d6:	42bc      	cmp	r4, r7
 80025d8:	f8cb 1004 	str.w	r1, [fp, #4]
 80025dc:	6013      	str	r3, [r2, #0]
 80025de:	d015      	beq.n	800260c <_malloc_r+0x29c>
 80025e0:	f1b9 0f0f 	cmp.w	r9, #15
 80025e4:	f240 8130 	bls.w	8002848 <_malloc_r+0x4d8>
 80025e8:	6860      	ldr	r0, [r4, #4]
 80025ea:	f1a9 010c 	sub.w	r1, r9, #12
 80025ee:	f021 0107 	bic.w	r1, r1, #7
 80025f2:	f000 0001 	and.w	r0, r0, #1
 80025f6:	eb04 0c01 	add.w	ip, r4, r1
 80025fa:	4308      	orrs	r0, r1
 80025fc:	f04f 0e05 	mov.w	lr, #5
 8002600:	290f      	cmp	r1, #15
 8002602:	6060      	str	r0, [r4, #4]
 8002604:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8002608:	f200 813a 	bhi.w	8002880 <_malloc_r+0x510>
 800260c:	4a29      	ldr	r2, [pc, #164]	; (80026b4 <_malloc_r+0x344>)
 800260e:	482a      	ldr	r0, [pc, #168]	; (80026b8 <_malloc_r+0x348>)
 8002610:	6811      	ldr	r1, [r2, #0]
 8002612:	68bc      	ldr	r4, [r7, #8]
 8002614:	428b      	cmp	r3, r1
 8002616:	6801      	ldr	r1, [r0, #0]
 8002618:	bf88      	it	hi
 800261a:	6013      	strhi	r3, [r2, #0]
 800261c:	6862      	ldr	r2, [r4, #4]
 800261e:	428b      	cmp	r3, r1
 8002620:	f022 0203 	bic.w	r2, r2, #3
 8002624:	bf88      	it	hi
 8002626:	6003      	strhi	r3, [r0, #0]
 8002628:	e0a7      	b.n	800277a <_malloc_r+0x40a>
 800262a:	1962      	adds	r2, r4, r5
 800262c:	f043 0301 	orr.w	r3, r3, #1
 8002630:	f045 0501 	orr.w	r5, r5, #1
 8002634:	6065      	str	r5, [r4, #4]
 8002636:	4630      	mov	r0, r6
 8002638:	60ba      	str	r2, [r7, #8]
 800263a:	6053      	str	r3, [r2, #4]
 800263c:	f000 f98c 	bl	8002958 <__malloc_unlock>
 8002640:	3408      	adds	r4, #8
 8002642:	4620      	mov	r0, r4
 8002644:	b003      	add	sp, #12
 8002646:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800264a:	4423      	add	r3, r4
 800264c:	68e1      	ldr	r1, [r4, #12]
 800264e:	685a      	ldr	r2, [r3, #4]
 8002650:	68a5      	ldr	r5, [r4, #8]
 8002652:	f042 0201 	orr.w	r2, r2, #1
 8002656:	60e9      	str	r1, [r5, #12]
 8002658:	4630      	mov	r0, r6
 800265a:	608d      	str	r5, [r1, #8]
 800265c:	605a      	str	r2, [r3, #4]
 800265e:	f000 f97b 	bl	8002958 <__malloc_unlock>
 8002662:	3408      	adds	r4, #8
 8002664:	4620      	mov	r0, r4
 8002666:	b003      	add	sp, #12
 8002668:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800266c:	68dc      	ldr	r4, [r3, #12]
 800266e:	42a3      	cmp	r3, r4
 8002670:	bf08      	it	eq
 8002672:	3002      	addeq	r0, #2
 8002674:	f43f aed6 	beq.w	8002424 <_malloc_r+0xb4>
 8002678:	e692      	b.n	80023a0 <_malloc_r+0x30>
 800267a:	2b14      	cmp	r3, #20
 800267c:	d971      	bls.n	8002762 <_malloc_r+0x3f2>
 800267e:	2b54      	cmp	r3, #84	; 0x54
 8002680:	f200 80ad 	bhi.w	80027de <_malloc_r+0x46e>
 8002684:	0b2b      	lsrs	r3, r5, #12
 8002686:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 800268a:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800268e:	00c3      	lsls	r3, r0, #3
 8002690:	e6b3      	b.n	80023fa <_malloc_r+0x8a>
 8002692:	4423      	add	r3, r4
 8002694:	4630      	mov	r0, r6
 8002696:	685a      	ldr	r2, [r3, #4]
 8002698:	f042 0201 	orr.w	r2, r2, #1
 800269c:	605a      	str	r2, [r3, #4]
 800269e:	3408      	adds	r4, #8
 80026a0:	f000 f95a 	bl	8002958 <__malloc_unlock>
 80026a4:	e68c      	b.n	80023c0 <_malloc_r+0x50>
 80026a6:	bf00      	nop
 80026a8:	200005d8 	.word	0x200005d8
 80026ac:	20000c2c 	.word	0x20000c2c
 80026b0:	20000bfc 	.word	0x20000bfc
 80026b4:	20000c24 	.word	0x20000c24
 80026b8:	20000c28 	.word	0x20000c28
 80026bc:	200005e0 	.word	0x200005e0
 80026c0:	200009e0 	.word	0x200009e0
 80026c4:	1961      	adds	r1, r4, r5
 80026c6:	f045 0e01 	orr.w	lr, r5, #1
 80026ca:	f042 0501 	orr.w	r5, r2, #1
 80026ce:	f8c4 e004 	str.w	lr, [r4, #4]
 80026d2:	4630      	mov	r0, r6
 80026d4:	e9c7 1104 	strd	r1, r1, [r7, #16]
 80026d8:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 80026dc:	604d      	str	r5, [r1, #4]
 80026de:	50e2      	str	r2, [r4, r3]
 80026e0:	f000 f93a 	bl	8002958 <__malloc_unlock>
 80026e4:	3408      	adds	r4, #8
 80026e6:	e66b      	b.n	80023c0 <_malloc_r+0x50>
 80026e8:	08e8      	lsrs	r0, r5, #3
 80026ea:	f105 0308 	add.w	r3, r5, #8
 80026ee:	e64f      	b.n	8002390 <_malloc_r+0x20>
 80026f0:	f108 0801 	add.w	r8, r8, #1
 80026f4:	f018 0f03 	tst.w	r8, #3
 80026f8:	f10e 0e08 	add.w	lr, lr, #8
 80026fc:	f47f aed0 	bne.w	80024a0 <_malloc_r+0x130>
 8002700:	e052      	b.n	80027a8 <_malloc_r+0x438>
 8002702:	4419      	add	r1, r3
 8002704:	461c      	mov	r4, r3
 8002706:	684a      	ldr	r2, [r1, #4]
 8002708:	68db      	ldr	r3, [r3, #12]
 800270a:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800270e:	f042 0201 	orr.w	r2, r2, #1
 8002712:	604a      	str	r2, [r1, #4]
 8002714:	4630      	mov	r0, r6
 8002716:	60eb      	str	r3, [r5, #12]
 8002718:	609d      	str	r5, [r3, #8]
 800271a:	f000 f91d 	bl	8002958 <__malloc_unlock>
 800271e:	e64f      	b.n	80023c0 <_malloc_r+0x50>
 8002720:	0a5a      	lsrs	r2, r3, #9
 8002722:	2a04      	cmp	r2, #4
 8002724:	d935      	bls.n	8002792 <_malloc_r+0x422>
 8002726:	2a14      	cmp	r2, #20
 8002728:	d86f      	bhi.n	800280a <_malloc_r+0x49a>
 800272a:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800272e:	00c9      	lsls	r1, r1, #3
 8002730:	325b      	adds	r2, #91	; 0x5b
 8002732:	eb07 0e01 	add.w	lr, r7, r1
 8002736:	5879      	ldr	r1, [r7, r1]
 8002738:	f1ae 0e08 	sub.w	lr, lr, #8
 800273c:	458e      	cmp	lr, r1
 800273e:	d058      	beq.n	80027f2 <_malloc_r+0x482>
 8002740:	684a      	ldr	r2, [r1, #4]
 8002742:	f022 0203 	bic.w	r2, r2, #3
 8002746:	429a      	cmp	r2, r3
 8002748:	d902      	bls.n	8002750 <_malloc_r+0x3e0>
 800274a:	6889      	ldr	r1, [r1, #8]
 800274c:	458e      	cmp	lr, r1
 800274e:	d1f7      	bne.n	8002740 <_malloc_r+0x3d0>
 8002750:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8002754:	687b      	ldr	r3, [r7, #4]
 8002756:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 800275a:	f8ce 4008 	str.w	r4, [lr, #8]
 800275e:	60cc      	str	r4, [r1, #12]
 8002760:	e68c      	b.n	800247c <_malloc_r+0x10c>
 8002762:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8002766:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 800276a:	00c3      	lsls	r3, r0, #3
 800276c:	e645      	b.n	80023fa <_malloc_r+0x8a>
 800276e:	42bc      	cmp	r4, r7
 8002770:	d072      	beq.n	8002858 <_malloc_r+0x4e8>
 8002772:	68bc      	ldr	r4, [r7, #8]
 8002774:	6862      	ldr	r2, [r4, #4]
 8002776:	f022 0203 	bic.w	r2, r2, #3
 800277a:	4295      	cmp	r5, r2
 800277c:	eba2 0305 	sub.w	r3, r2, r5
 8002780:	d802      	bhi.n	8002788 <_malloc_r+0x418>
 8002782:	2b0f      	cmp	r3, #15
 8002784:	f73f af51 	bgt.w	800262a <_malloc_r+0x2ba>
 8002788:	4630      	mov	r0, r6
 800278a:	f000 f8e5 	bl	8002958 <__malloc_unlock>
 800278e:	2400      	movs	r4, #0
 8002790:	e616      	b.n	80023c0 <_malloc_r+0x50>
 8002792:	099a      	lsrs	r2, r3, #6
 8002794:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8002798:	00c9      	lsls	r1, r1, #3
 800279a:	3238      	adds	r2, #56	; 0x38
 800279c:	e7c9      	b.n	8002732 <_malloc_r+0x3c2>
 800279e:	f8d9 9000 	ldr.w	r9, [r9]
 80027a2:	4599      	cmp	r9, r3
 80027a4:	f040 8083 	bne.w	80028ae <_malloc_r+0x53e>
 80027a8:	f010 0f03 	tst.w	r0, #3
 80027ac:	f1a9 0308 	sub.w	r3, r9, #8
 80027b0:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 80027b4:	d1f3      	bne.n	800279e <_malloc_r+0x42e>
 80027b6:	687b      	ldr	r3, [r7, #4]
 80027b8:	ea23 0304 	bic.w	r3, r3, r4
 80027bc:	607b      	str	r3, [r7, #4]
 80027be:	0064      	lsls	r4, r4, #1
 80027c0:	429c      	cmp	r4, r3
 80027c2:	f63f aeac 	bhi.w	800251e <_malloc_r+0x1ae>
 80027c6:	b91c      	cbnz	r4, 80027d0 <_malloc_r+0x460>
 80027c8:	e6a9      	b.n	800251e <_malloc_r+0x1ae>
 80027ca:	0064      	lsls	r4, r4, #1
 80027cc:	f108 0804 	add.w	r8, r8, #4
 80027d0:	421c      	tst	r4, r3
 80027d2:	d0fa      	beq.n	80027ca <_malloc_r+0x45a>
 80027d4:	4640      	mov	r0, r8
 80027d6:	e65f      	b.n	8002498 <_malloc_r+0x128>
 80027d8:	f108 0810 	add.w	r8, r8, #16
 80027dc:	e6bc      	b.n	8002558 <_malloc_r+0x1e8>
 80027de:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80027e2:	d826      	bhi.n	8002832 <_malloc_r+0x4c2>
 80027e4:	0beb      	lsrs	r3, r5, #15
 80027e6:	f103 0078 	add.w	r0, r3, #120	; 0x78
 80027ea:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 80027ee:	00c3      	lsls	r3, r0, #3
 80027f0:	e603      	b.n	80023fa <_malloc_r+0x8a>
 80027f2:	687b      	ldr	r3, [r7, #4]
 80027f4:	1092      	asrs	r2, r2, #2
 80027f6:	f04f 0801 	mov.w	r8, #1
 80027fa:	fa08 f202 	lsl.w	r2, r8, r2
 80027fe:	4313      	orrs	r3, r2
 8002800:	607b      	str	r3, [r7, #4]
 8002802:	e7a8      	b.n	8002756 <_malloc_r+0x3e6>
 8002804:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8002808:	e6ce      	b.n	80025a8 <_malloc_r+0x238>
 800280a:	2a54      	cmp	r2, #84	; 0x54
 800280c:	d829      	bhi.n	8002862 <_malloc_r+0x4f2>
 800280e:	0b1a      	lsrs	r2, r3, #12
 8002810:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8002814:	00c9      	lsls	r1, r1, #3
 8002816:	326e      	adds	r2, #110	; 0x6e
 8002818:	e78b      	b.n	8002732 <_malloc_r+0x3c2>
 800281a:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800281e:	2900      	cmp	r1, #0
 8002820:	f47f aeae 	bne.w	8002580 <_malloc_r+0x210>
 8002824:	eb09 0208 	add.w	r2, r9, r8
 8002828:	68b9      	ldr	r1, [r7, #8]
 800282a:	f042 0201 	orr.w	r2, r2, #1
 800282e:	604a      	str	r2, [r1, #4]
 8002830:	e6ec      	b.n	800260c <_malloc_r+0x29c>
 8002832:	f240 5254 	movw	r2, #1364	; 0x554
 8002836:	4293      	cmp	r3, r2
 8002838:	d81c      	bhi.n	8002874 <_malloc_r+0x504>
 800283a:	0cab      	lsrs	r3, r5, #18
 800283c:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8002840:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8002844:	00c3      	lsls	r3, r0, #3
 8002846:	e5d8      	b.n	80023fa <_malloc_r+0x8a>
 8002848:	2301      	movs	r3, #1
 800284a:	f8cb 3004 	str.w	r3, [fp, #4]
 800284e:	e79b      	b.n	8002788 <_malloc_r+0x418>
 8002850:	2101      	movs	r1, #1
 8002852:	f04f 0800 	mov.w	r8, #0
 8002856:	e6ba      	b.n	80025ce <_malloc_r+0x25e>
 8002858:	4a16      	ldr	r2, [pc, #88]	; (80028b4 <_malloc_r+0x544>)
 800285a:	6813      	ldr	r3, [r2, #0]
 800285c:	4443      	add	r3, r8
 800285e:	6013      	str	r3, [r2, #0]
 8002860:	e68e      	b.n	8002580 <_malloc_r+0x210>
 8002862:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8002866:	d814      	bhi.n	8002892 <_malloc_r+0x522>
 8002868:	0bda      	lsrs	r2, r3, #15
 800286a:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800286e:	00c9      	lsls	r1, r1, #3
 8002870:	3277      	adds	r2, #119	; 0x77
 8002872:	e75e      	b.n	8002732 <_malloc_r+0x3c2>
 8002874:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8002878:	207f      	movs	r0, #127	; 0x7f
 800287a:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800287e:	e5bc      	b.n	80023fa <_malloc_r+0x8a>
 8002880:	f104 0108 	add.w	r1, r4, #8
 8002884:	4630      	mov	r0, r6
 8002886:	9201      	str	r2, [sp, #4]
 8002888:	f003 f82a 	bl	80058e0 <_free_r>
 800288c:	9a01      	ldr	r2, [sp, #4]
 800288e:	6813      	ldr	r3, [r2, #0]
 8002890:	e6bc      	b.n	800260c <_malloc_r+0x29c>
 8002892:	f240 5154 	movw	r1, #1364	; 0x554
 8002896:	428a      	cmp	r2, r1
 8002898:	d805      	bhi.n	80028a6 <_malloc_r+0x536>
 800289a:	0c9a      	lsrs	r2, r3, #18
 800289c:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 80028a0:	00c9      	lsls	r1, r1, #3
 80028a2:	327c      	adds	r2, #124	; 0x7c
 80028a4:	e745      	b.n	8002732 <_malloc_r+0x3c2>
 80028a6:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 80028aa:	227e      	movs	r2, #126	; 0x7e
 80028ac:	e741      	b.n	8002732 <_malloc_r+0x3c2>
 80028ae:	687b      	ldr	r3, [r7, #4]
 80028b0:	e785      	b.n	80027be <_malloc_r+0x44e>
 80028b2:	bf00      	nop
 80028b4:	20000bfc 	.word	0x20000bfc

080028b8 <memset>:
 80028b8:	b4f0      	push	{r4, r5, r6, r7}
 80028ba:	0786      	lsls	r6, r0, #30
 80028bc:	d043      	beq.n	8002946 <memset+0x8e>
 80028be:	1e54      	subs	r4, r2, #1
 80028c0:	2a00      	cmp	r2, #0
 80028c2:	d03e      	beq.n	8002942 <memset+0x8a>
 80028c4:	b2ca      	uxtb	r2, r1
 80028c6:	4603      	mov	r3, r0
 80028c8:	e002      	b.n	80028d0 <memset+0x18>
 80028ca:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80028ce:	d338      	bcc.n	8002942 <memset+0x8a>
 80028d0:	f803 2b01 	strb.w	r2, [r3], #1
 80028d4:	079d      	lsls	r5, r3, #30
 80028d6:	d1f8      	bne.n	80028ca <memset+0x12>
 80028d8:	2c03      	cmp	r4, #3
 80028da:	d92b      	bls.n	8002934 <memset+0x7c>
 80028dc:	b2cd      	uxtb	r5, r1
 80028de:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80028e2:	2c0f      	cmp	r4, #15
 80028e4:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80028e8:	d916      	bls.n	8002918 <memset+0x60>
 80028ea:	f1a4 0710 	sub.w	r7, r4, #16
 80028ee:	093f      	lsrs	r7, r7, #4
 80028f0:	f103 0620 	add.w	r6, r3, #32
 80028f4:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80028f8:	f103 0210 	add.w	r2, r3, #16
 80028fc:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002900:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002904:	3210      	adds	r2, #16
 8002906:	42b2      	cmp	r2, r6
 8002908:	d1f8      	bne.n	80028fc <memset+0x44>
 800290a:	f004 040f 	and.w	r4, r4, #15
 800290e:	3701      	adds	r7, #1
 8002910:	2c03      	cmp	r4, #3
 8002912:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002916:	d90d      	bls.n	8002934 <memset+0x7c>
 8002918:	461e      	mov	r6, r3
 800291a:	4622      	mov	r2, r4
 800291c:	3a04      	subs	r2, #4
 800291e:	2a03      	cmp	r2, #3
 8002920:	f846 5b04 	str.w	r5, [r6], #4
 8002924:	d8fa      	bhi.n	800291c <memset+0x64>
 8002926:	1f22      	subs	r2, r4, #4
 8002928:	f022 0203 	bic.w	r2, r2, #3
 800292c:	3204      	adds	r2, #4
 800292e:	4413      	add	r3, r2
 8002930:	f004 0403 	and.w	r4, r4, #3
 8002934:	b12c      	cbz	r4, 8002942 <memset+0x8a>
 8002936:	b2c9      	uxtb	r1, r1
 8002938:	441c      	add	r4, r3
 800293a:	f803 1b01 	strb.w	r1, [r3], #1
 800293e:	429c      	cmp	r4, r3
 8002940:	d1fb      	bne.n	800293a <memset+0x82>
 8002942:	bcf0      	pop	{r4, r5, r6, r7}
 8002944:	4770      	bx	lr
 8002946:	4614      	mov	r4, r2
 8002948:	4603      	mov	r3, r0
 800294a:	e7c5      	b.n	80028d8 <memset+0x20>

0800294c <__malloc_lock>:
 800294c:	4801      	ldr	r0, [pc, #4]	; (8002954 <__malloc_lock+0x8>)
 800294e:	f003 ba75 	b.w	8005e3c <__retarget_lock_acquire_recursive>
 8002952:	bf00      	nop
 8002954:	20000c88 	.word	0x20000c88

08002958 <__malloc_unlock>:
 8002958:	4801      	ldr	r0, [pc, #4]	; (8002960 <__malloc_unlock+0x8>)
 800295a:	f003 ba71 	b.w	8005e40 <__retarget_lock_release_recursive>
 800295e:	bf00      	nop
 8002960:	20000c88 	.word	0x20000c88

08002964 <printf>:
 8002964:	b40f      	push	{r0, r1, r2, r3}
 8002966:	b500      	push	{lr}
 8002968:	4907      	ldr	r1, [pc, #28]	; (8002988 <printf+0x24>)
 800296a:	b083      	sub	sp, #12
 800296c:	ab04      	add	r3, sp, #16
 800296e:	6808      	ldr	r0, [r1, #0]
 8002970:	f853 2b04 	ldr.w	r2, [r3], #4
 8002974:	6881      	ldr	r1, [r0, #8]
 8002976:	9301      	str	r3, [sp, #4]
 8002978:	f000 f872 	bl	8002a60 <_vfprintf_r>
 800297c:	b003      	add	sp, #12
 800297e:	f85d eb04 	ldr.w	lr, [sp], #4
 8002982:	b004      	add	sp, #16
 8002984:	4770      	bx	lr
 8002986:	bf00      	nop
 8002988:	200001a8 	.word	0x200001a8

0800298c <_puts_r>:
 800298c:	b570      	push	{r4, r5, r6, lr}
 800298e:	4605      	mov	r5, r0
 8002990:	b088      	sub	sp, #32
 8002992:	4608      	mov	r0, r1
 8002994:	460c      	mov	r4, r1
 8002996:	f7fd fe53 	bl	8000640 <strlen>
 800299a:	4a22      	ldr	r2, [pc, #136]	; (8002a24 <_puts_r+0x98>)
 800299c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800299e:	9404      	str	r4, [sp, #16]
 80029a0:	2601      	movs	r6, #1
 80029a2:	1c44      	adds	r4, r0, #1
 80029a4:	a904      	add	r1, sp, #16
 80029a6:	9206      	str	r2, [sp, #24]
 80029a8:	2202      	movs	r2, #2
 80029aa:	9403      	str	r4, [sp, #12]
 80029ac:	9005      	str	r0, [sp, #20]
 80029ae:	68ac      	ldr	r4, [r5, #8]
 80029b0:	9607      	str	r6, [sp, #28]
 80029b2:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80029b6:	b31b      	cbz	r3, 8002a00 <_puts_r+0x74>
 80029b8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80029ba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80029be:	07ce      	lsls	r6, r1, #31
 80029c0:	b29a      	uxth	r2, r3
 80029c2:	d401      	bmi.n	80029c8 <_puts_r+0x3c>
 80029c4:	0590      	lsls	r0, r2, #22
 80029c6:	d525      	bpl.n	8002a14 <_puts_r+0x88>
 80029c8:	0491      	lsls	r1, r2, #18
 80029ca:	d406      	bmi.n	80029da <_puts_r+0x4e>
 80029cc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80029ce:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80029d2:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80029d6:	81a3      	strh	r3, [r4, #12]
 80029d8:	6662      	str	r2, [r4, #100]	; 0x64
 80029da:	4628      	mov	r0, r5
 80029dc:	aa01      	add	r2, sp, #4
 80029de:	4621      	mov	r1, r4
 80029e0:	f003 f872 	bl	8005ac8 <__sfvwrite_r>
 80029e4:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80029e6:	2800      	cmp	r0, #0
 80029e8:	bf0c      	ite	eq
 80029ea:	250a      	moveq	r5, #10
 80029ec:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80029f0:	07da      	lsls	r2, r3, #31
 80029f2:	d402      	bmi.n	80029fa <_puts_r+0x6e>
 80029f4:	89a3      	ldrh	r3, [r4, #12]
 80029f6:	059b      	lsls	r3, r3, #22
 80029f8:	d506      	bpl.n	8002a08 <_puts_r+0x7c>
 80029fa:	4628      	mov	r0, r5
 80029fc:	b008      	add	sp, #32
 80029fe:	bd70      	pop	{r4, r5, r6, pc}
 8002a00:	4628      	mov	r0, r5
 8002a02:	f002 fecb 	bl	800579c <__sinit>
 8002a06:	e7d7      	b.n	80029b8 <_puts_r+0x2c>
 8002a08:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002a0a:	f003 fa19 	bl	8005e40 <__retarget_lock_release_recursive>
 8002a0e:	4628      	mov	r0, r5
 8002a10:	b008      	add	sp, #32
 8002a12:	bd70      	pop	{r4, r5, r6, pc}
 8002a14:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002a16:	f003 fa11 	bl	8005e3c <__retarget_lock_acquire_recursive>
 8002a1a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002a1e:	b29a      	uxth	r2, r3
 8002a20:	e7d2      	b.n	80029c8 <_puts_r+0x3c>
 8002a22:	bf00      	nop
 8002a24:	080071d8 	.word	0x080071d8

08002a28 <puts>:
 8002a28:	4b02      	ldr	r3, [pc, #8]	; (8002a34 <puts+0xc>)
 8002a2a:	4601      	mov	r1, r0
 8002a2c:	6818      	ldr	r0, [r3, #0]
 8002a2e:	f7ff bfad 	b.w	800298c <_puts_r>
 8002a32:	bf00      	nop
 8002a34:	200001a8 	.word	0x200001a8

08002a38 <_sbrk_r>:
 8002a38:	b538      	push	{r3, r4, r5, lr}
 8002a3a:	4c07      	ldr	r4, [pc, #28]	; (8002a58 <_sbrk_r+0x20>)
 8002a3c:	2300      	movs	r3, #0
 8002a3e:	4605      	mov	r5, r0
 8002a40:	4608      	mov	r0, r1
 8002a42:	6023      	str	r3, [r4, #0]
 8002a44:	f7ff fbde 	bl	8002204 <_sbrk>
 8002a48:	1c43      	adds	r3, r0, #1
 8002a4a:	d000      	beq.n	8002a4e <_sbrk_r+0x16>
 8002a4c:	bd38      	pop	{r3, r4, r5, pc}
 8002a4e:	6823      	ldr	r3, [r4, #0]
 8002a50:	2b00      	cmp	r3, #0
 8002a52:	d0fb      	beq.n	8002a4c <_sbrk_r+0x14>
 8002a54:	602b      	str	r3, [r5, #0]
 8002a56:	bd38      	pop	{r3, r4, r5, pc}
 8002a58:	20000c9c 	.word	0x20000c9c
 8002a5c:	00000000 	.word	0x00000000

08002a60 <_vfprintf_r>:
 8002a60:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002a64:	b0d7      	sub	sp, #348	; 0x15c
 8002a66:	461c      	mov	r4, r3
 8002a68:	4689      	mov	r9, r1
 8002a6a:	4617      	mov	r7, r2
 8002a6c:	4605      	mov	r5, r0
 8002a6e:	9003      	str	r0, [sp, #12]
 8002a70:	f003 f9d2 	bl	8005e18 <_localeconv_r>
 8002a74:	6803      	ldr	r3, [r0, #0]
 8002a76:	9316      	str	r3, [sp, #88]	; 0x58
 8002a78:	4618      	mov	r0, r3
 8002a7a:	f7fd fde1 	bl	8000640 <strlen>
 8002a7e:	9408      	str	r4, [sp, #32]
 8002a80:	9015      	str	r0, [sp, #84]	; 0x54
 8002a82:	b11d      	cbz	r5, 8002a8c <_vfprintf_r+0x2c>
 8002a84:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002a86:	2b00      	cmp	r3, #0
 8002a88:	f000 8107 	beq.w	8002c9a <_vfprintf_r+0x23a>
 8002a8c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002a90:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002a94:	07c8      	lsls	r0, r1, #31
 8002a96:	b293      	uxth	r3, r2
 8002a98:	d402      	bmi.n	8002aa0 <_vfprintf_r+0x40>
 8002a9a:	0599      	lsls	r1, r3, #22
 8002a9c:	f140 811f 	bpl.w	8002cde <_vfprintf_r+0x27e>
 8002aa0:	049e      	lsls	r6, r3, #18
 8002aa2:	d40a      	bmi.n	8002aba <_vfprintf_r+0x5a>
 8002aa4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002aa8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002aac:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002ab0:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002ab4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002ab8:	b29b      	uxth	r3, r3
 8002aba:	071d      	lsls	r5, r3, #28
 8002abc:	f140 80b2 	bpl.w	8002c24 <_vfprintf_r+0x1c4>
 8002ac0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002ac4:	2a00      	cmp	r2, #0
 8002ac6:	f000 80ad 	beq.w	8002c24 <_vfprintf_r+0x1c4>
 8002aca:	f003 021a 	and.w	r2, r3, #26
 8002ace:	2a0a      	cmp	r2, #10
 8002ad0:	f000 80c9 	beq.w	8002c66 <_vfprintf_r+0x206>
 8002ad4:	2300      	movs	r3, #0
 8002ad6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002cf0 <_vfprintf_r+0x290>
 8002ada:	9310      	str	r3, [sp, #64]	; 0x40
 8002adc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002ae0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002ae2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002ae6:	931b      	str	r3, [sp, #108]	; 0x6c
 8002ae8:	9318      	str	r3, [sp, #96]	; 0x60
 8002aea:	9305      	str	r3, [sp, #20]
 8002aec:	ab2d      	add	r3, sp, #180	; 0xb4
 8002aee:	932a      	str	r3, [sp, #168]	; 0xa8
 8002af0:	469b      	mov	fp, r3
 8002af2:	783b      	ldrb	r3, [r7, #0]
 8002af4:	f8cd 901c 	str.w	r9, [sp, #28]
 8002af8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002afc:	2b00      	cmp	r3, #0
 8002afe:	f000 8259 	beq.w	8002fb4 <_vfprintf_r+0x554>
 8002b02:	2b25      	cmp	r3, #37	; 0x25
 8002b04:	463c      	mov	r4, r7
 8002b06:	d102      	bne.n	8002b0e <_vfprintf_r+0xae>
 8002b08:	e01d      	b.n	8002b46 <_vfprintf_r+0xe6>
 8002b0a:	2b25      	cmp	r3, #37	; 0x25
 8002b0c:	d003      	beq.n	8002b16 <_vfprintf_r+0xb6>
 8002b0e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002b12:	2b00      	cmp	r3, #0
 8002b14:	d1f9      	bne.n	8002b0a <_vfprintf_r+0xaa>
 8002b16:	1be5      	subs	r5, r4, r7
 8002b18:	b18d      	cbz	r5, 8002b3e <_vfprintf_r+0xde>
 8002b1a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002b1e:	3301      	adds	r3, #1
 8002b20:	442a      	add	r2, r5
 8002b22:	2b07      	cmp	r3, #7
 8002b24:	f8cb 7000 	str.w	r7, [fp]
 8002b28:	f8cb 5004 	str.w	r5, [fp, #4]
 8002b2c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002b30:	f300 80ca 	bgt.w	8002cc8 <_vfprintf_r+0x268>
 8002b34:	f10b 0b08 	add.w	fp, fp, #8
 8002b38:	9b05      	ldr	r3, [sp, #20]
 8002b3a:	442b      	add	r3, r5
 8002b3c:	9305      	str	r3, [sp, #20]
 8002b3e:	7823      	ldrb	r3, [r4, #0]
 8002b40:	2b00      	cmp	r3, #0
 8002b42:	f000 8237 	beq.w	8002fb4 <_vfprintf_r+0x554>
 8002b46:	2300      	movs	r3, #0
 8002b48:	7866      	ldrb	r6, [r4, #1]
 8002b4a:	9306      	str	r3, [sp, #24]
 8002b4c:	4698      	mov	r8, r3
 8002b4e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b52:	f104 0a01 	add.w	sl, r4, #1
 8002b56:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002b5a:	252b      	movs	r5, #43	; 0x2b
 8002b5c:	f10a 0a01 	add.w	sl, sl, #1
 8002b60:	f1a6 0320 	sub.w	r3, r6, #32
 8002b64:	2b5a      	cmp	r3, #90	; 0x5a
 8002b66:	f200 842a 	bhi.w	80033be <_vfprintf_r+0x95e>
 8002b6a:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002b6e:	03aa      	.short	0x03aa
 8002b70:	04280428 	.word	0x04280428
 8002b74:	0428029c 	.word	0x0428029c
 8002b78:	04280428 	.word	0x04280428
 8002b7c:	042802a7 	.word	0x042802a7
 8002b80:	02c60428 	.word	0x02c60428
 8002b84:	042802d2 	.word	0x042802d2
 8002b88:	02dc02d7 	.word	0x02dc02d7
 8002b8c:	02f60428 	.word	0x02f60428
 8002b90:	026d026d 	.word	0x026d026d
 8002b94:	026d026d 	.word	0x026d026d
 8002b98:	026d026d 	.word	0x026d026d
 8002b9c:	026d026d 	.word	0x026d026d
 8002ba0:	0428026d 	.word	0x0428026d
 8002ba4:	04280428 	.word	0x04280428
 8002ba8:	04280428 	.word	0x04280428
 8002bac:	04280428 	.word	0x04280428
 8002bb0:	042802fb 	.word	0x042802fb
 8002bb4:	03f3033c 	.word	0x03f3033c
 8002bb8:	02fb02fb 	.word	0x02fb02fb
 8002bbc:	042802fb 	.word	0x042802fb
 8002bc0:	04280428 	.word	0x04280428
 8002bc4:	03ee0428 	.word	0x03ee0428
 8002bc8:	04280428 	.word	0x04280428
 8002bcc:	0428009a 	.word	0x0428009a
 8002bd0:	04280428 	.word	0x04280428
 8002bd4:	04280350 	.word	0x04280350
 8002bd8:	04280379 	.word	0x04280379
 8002bdc:	03900428 	.word	0x03900428
 8002be0:	04280428 	.word	0x04280428
 8002be4:	04280428 	.word	0x04280428
 8002be8:	04280428 	.word	0x04280428
 8002bec:	04280428 	.word	0x04280428
 8002bf0:	042802fb 	.word	0x042802fb
 8002bf4:	00c5033c 	.word	0x00c5033c
 8002bf8:	02fb02fb 	.word	0x02fb02fb
 8002bfc:	03d102fb 	.word	0x03d102fb
 8002c00:	007000c5 	.word	0x007000c5
 8002c04:	03b50428 	.word	0x03b50428
 8002c08:	03c20428 	.word	0x03c20428
 8002c0c:	03de009c 	.word	0x03de009c
 8002c10:	04280070 	.word	0x04280070
 8002c14:	00720350 	.word	0x00720350
 8002c18:	0428022c 	.word	0x0428022c
 8002c1c:	027c0428 	.word	0x027c0428
 8002c20:	00720428 	.word	0x00720428
 8002c24:	4649      	mov	r1, r9
 8002c26:	9803      	ldr	r0, [sp, #12]
 8002c28:	f001 fc9a 	bl	8004560 <__swsetup_r>
 8002c2c:	b1a0      	cbz	r0, 8002c58 <_vfprintf_r+0x1f8>
 8002c2e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002c32:	07d8      	lsls	r0, r3, #31
 8002c34:	d404      	bmi.n	8002c40 <_vfprintf_r+0x1e0>
 8002c36:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002c3a:	0599      	lsls	r1, r3, #22
 8002c3c:	f140 83b7 	bpl.w	80033ae <_vfprintf_r+0x94e>
 8002c40:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002c44:	9305      	str	r3, [sp, #20]
 8002c46:	9805      	ldr	r0, [sp, #20]
 8002c48:	b057      	add	sp, #348	; 0x15c
 8002c4a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002c4e:	f048 0820 	orr.w	r8, r8, #32
 8002c52:	f89a 6000 	ldrb.w	r6, [sl]
 8002c56:	e781      	b.n	8002b5c <_vfprintf_r+0xfc>
 8002c58:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002c5c:	f003 021a 	and.w	r2, r3, #26
 8002c60:	2a0a      	cmp	r2, #10
 8002c62:	f47f af37 	bne.w	8002ad4 <_vfprintf_r+0x74>
 8002c66:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002c6a:	2a00      	cmp	r2, #0
 8002c6c:	f6ff af32 	blt.w	8002ad4 <_vfprintf_r+0x74>
 8002c70:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002c74:	07d2      	lsls	r2, r2, #31
 8002c76:	d405      	bmi.n	8002c84 <_vfprintf_r+0x224>
 8002c78:	059b      	lsls	r3, r3, #22
 8002c7a:	d403      	bmi.n	8002c84 <_vfprintf_r+0x224>
 8002c7c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c80:	f003 f8de 	bl	8005e40 <__retarget_lock_release_recursive>
 8002c84:	4623      	mov	r3, r4
 8002c86:	463a      	mov	r2, r7
 8002c88:	4649      	mov	r1, r9
 8002c8a:	9803      	ldr	r0, [sp, #12]
 8002c8c:	f001 fc26 	bl	80044dc <__sbprintf>
 8002c90:	9005      	str	r0, [sp, #20]
 8002c92:	9805      	ldr	r0, [sp, #20]
 8002c94:	b057      	add	sp, #348	; 0x15c
 8002c96:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002c9a:	9803      	ldr	r0, [sp, #12]
 8002c9c:	f002 fd7e 	bl	800579c <__sinit>
 8002ca0:	e6f4      	b.n	8002a8c <_vfprintf_r+0x2c>
 8002ca2:	f048 0810 	orr.w	r8, r8, #16
 8002ca6:	f018 0f20 	tst.w	r8, #32
 8002caa:	f000 836c 	beq.w	8003386 <_vfprintf_r+0x926>
 8002cae:	9c08      	ldr	r4, [sp, #32]
 8002cb0:	3407      	adds	r4, #7
 8002cb2:	f024 0307 	bic.w	r3, r4, #7
 8002cb6:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002cba:	f103 0208 	add.w	r2, r3, #8
 8002cbe:	9208      	str	r2, [sp, #32]
 8002cc0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002cc4:	2200      	movs	r2, #0
 8002cc6:	e18c      	b.n	8002fe2 <_vfprintf_r+0x582>
 8002cc8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002cca:	9907      	ldr	r1, [sp, #28]
 8002ccc:	9803      	ldr	r0, [sp, #12]
 8002cce:	f003 ff33 	bl	8006b38 <__sprint_r>
 8002cd2:	2800      	cmp	r0, #0
 8002cd4:	f041 8376 	bne.w	80043c4 <_vfprintf_r+0x1964>
 8002cd8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002cdc:	e72c      	b.n	8002b38 <_vfprintf_r+0xd8>
 8002cde:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002ce2:	f003 f8ab 	bl	8005e3c <__retarget_lock_acquire_recursive>
 8002ce6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002cea:	b293      	uxth	r3, r2
 8002cec:	e6d8      	b.n	8002aa0 <_vfprintf_r+0x40>
 8002cee:	bf00      	nop
	...
 8002cf8:	4643      	mov	r3, r8
 8002cfa:	069f      	lsls	r7, r3, #26
 8002cfc:	f140 832f 	bpl.w	800335e <_vfprintf_r+0x8fe>
 8002d00:	9c08      	ldr	r4, [sp, #32]
 8002d02:	3407      	adds	r4, #7
 8002d04:	f024 0407 	bic.w	r4, r4, #7
 8002d08:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002d0c:	f104 0208 	add.w	r2, r4, #8
 8002d10:	9208      	str	r2, [sp, #32]
 8002d12:	4604      	mov	r4, r0
 8002d14:	460d      	mov	r5, r1
 8002d16:	2800      	cmp	r0, #0
 8002d18:	f171 0200 	sbcs.w	r2, r1, #0
 8002d1c:	da05      	bge.n	8002d2a <_vfprintf_r+0x2ca>
 8002d1e:	222d      	movs	r2, #45	; 0x2d
 8002d20:	4264      	negs	r4, r4
 8002d22:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002d26:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002d2a:	aa56      	add	r2, sp, #344	; 0x158
 8002d2c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002d30:	9204      	str	r2, [sp, #16]
 8002d32:	f000 84b2 	beq.w	800369a <_vfprintf_r+0xc3a>
 8002d36:	2201      	movs	r2, #1
 8002d38:	ea54 0105 	orrs.w	r1, r4, r5
 8002d3c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002d40:	f040 8159 	bne.w	8002ff6 <_vfprintf_r+0x596>
 8002d44:	f1b9 0f00 	cmp.w	r9, #0
 8002d48:	f040 8619 	bne.w	800397e <_vfprintf_r+0xf1e>
 8002d4c:	2a00      	cmp	r2, #0
 8002d4e:	f040 8508 	bne.w	8003762 <_vfprintf_r+0xd02>
 8002d52:	f013 0301 	ands.w	r3, r3, #1
 8002d56:	af56      	add	r7, sp, #344	; 0x158
 8002d58:	9309      	str	r3, [sp, #36]	; 0x24
 8002d5a:	d002      	beq.n	8002d62 <_vfprintf_r+0x302>
 8002d5c:	2330      	movs	r3, #48	; 0x30
 8002d5e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002d62:	2300      	movs	r3, #0
 8002d64:	930a      	str	r3, [sp, #40]	; 0x28
 8002d66:	930f      	str	r3, [sp, #60]	; 0x3c
 8002d68:	9314      	str	r3, [sp, #80]	; 0x50
 8002d6a:	9311      	str	r3, [sp, #68]	; 0x44
 8002d6c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002d6e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d72:	454b      	cmp	r3, r9
 8002d74:	bfb8      	it	lt
 8002d76:	464b      	movlt	r3, r9
 8002d78:	9304      	str	r3, [sp, #16]
 8002d7a:	b112      	cbz	r2, 8002d82 <_vfprintf_r+0x322>
 8002d7c:	9b04      	ldr	r3, [sp, #16]
 8002d7e:	3301      	adds	r3, #1
 8002d80:	9304      	str	r3, [sp, #16]
 8002d82:	f018 0302 	ands.w	r3, r8, #2
 8002d86:	930b      	str	r3, [sp, #44]	; 0x2c
 8002d88:	d002      	beq.n	8002d90 <_vfprintf_r+0x330>
 8002d8a:	9b04      	ldr	r3, [sp, #16]
 8002d8c:	3302      	adds	r3, #2
 8002d8e:	9304      	str	r3, [sp, #16]
 8002d90:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002d94:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002d96:	930e      	str	r3, [sp, #56]	; 0x38
 8002d98:	d13f      	bne.n	8002e1a <_vfprintf_r+0x3ba>
 8002d9a:	9b06      	ldr	r3, [sp, #24]
 8002d9c:	9904      	ldr	r1, [sp, #16]
 8002d9e:	1a5d      	subs	r5, r3, r1
 8002da0:	2d00      	cmp	r5, #0
 8002da2:	dd3a      	ble.n	8002e1a <_vfprintf_r+0x3ba>
 8002da4:	2d10      	cmp	r5, #16
 8002da6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002da8:	dd29      	ble.n	8002dfe <_vfprintf_r+0x39e>
 8002daa:	4659      	mov	r1, fp
 8002dac:	4620      	mov	r0, r4
 8002dae:	9620      	str	r6, [sp, #128]	; 0x80
 8002db0:	2310      	movs	r3, #16
 8002db2:	9c03      	ldr	r4, [sp, #12]
 8002db4:	9e07      	ldr	r6, [sp, #28]
 8002db6:	46bb      	mov	fp, r7
 8002db8:	e004      	b.n	8002dc4 <_vfprintf_r+0x364>
 8002dba:	3d10      	subs	r5, #16
 8002dbc:	2d10      	cmp	r5, #16
 8002dbe:	f101 0108 	add.w	r1, r1, #8
 8002dc2:	dd18      	ble.n	8002df6 <_vfprintf_r+0x396>
 8002dc4:	3201      	adds	r2, #1
 8002dc6:	4fba      	ldr	r7, [pc, #744]	; (80030b0 <_vfprintf_r+0x650>)
 8002dc8:	3010      	adds	r0, #16
 8002dca:	2a07      	cmp	r2, #7
 8002dcc:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002dd0:	e9c1 7300 	strd	r7, r3, [r1]
 8002dd4:	ddf1      	ble.n	8002dba <_vfprintf_r+0x35a>
 8002dd6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002dd8:	4631      	mov	r1, r6
 8002dda:	4620      	mov	r0, r4
 8002ddc:	930c      	str	r3, [sp, #48]	; 0x30
 8002dde:	f003 feab 	bl	8006b38 <__sprint_r>
 8002de2:	2800      	cmp	r0, #0
 8002de4:	f040 843d 	bne.w	8003662 <_vfprintf_r+0xc02>
 8002de8:	3d10      	subs	r5, #16
 8002dea:	2d10      	cmp	r5, #16
 8002dec:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002df0:	a92d      	add	r1, sp, #180	; 0xb4
 8002df2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002df4:	dce6      	bgt.n	8002dc4 <_vfprintf_r+0x364>
 8002df6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002df8:	465f      	mov	r7, fp
 8002dfa:	4604      	mov	r4, r0
 8002dfc:	468b      	mov	fp, r1
 8002dfe:	3201      	adds	r2, #1
 8002e00:	4bab      	ldr	r3, [pc, #684]	; (80030b0 <_vfprintf_r+0x650>)
 8002e02:	442c      	add	r4, r5
 8002e04:	2a07      	cmp	r2, #7
 8002e06:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e0a:	e9cb 3500 	strd	r3, r5, [fp]
 8002e0e:	f300 84ff 	bgt.w	8003810 <_vfprintf_r+0xdb0>
 8002e12:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002e16:	f10b 0b08 	add.w	fp, fp, #8
 8002e1a:	b172      	cbz	r2, 8002e3a <_vfprintf_r+0x3da>
 8002e1c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e1e:	3201      	adds	r2, #1
 8002e20:	3401      	adds	r4, #1
 8002e22:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002e26:	2101      	movs	r1, #1
 8002e28:	2a07      	cmp	r2, #7
 8002e2a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002e2e:	e9cb 0100 	strd	r0, r1, [fp]
 8002e32:	f300 8418 	bgt.w	8003666 <_vfprintf_r+0xc06>
 8002e36:	f10b 0b08 	add.w	fp, fp, #8
 8002e3a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002e3c:	b16b      	cbz	r3, 8002e5a <_vfprintf_r+0x3fa>
 8002e3e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e40:	3301      	adds	r3, #1
 8002e42:	3402      	adds	r4, #2
 8002e44:	a923      	add	r1, sp, #140	; 0x8c
 8002e46:	2202      	movs	r2, #2
 8002e48:	2b07      	cmp	r3, #7
 8002e4a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e4e:	e9cb 1200 	strd	r1, r2, [fp]
 8002e52:	f300 8415 	bgt.w	8003680 <_vfprintf_r+0xc20>
 8002e56:	f10b 0b08 	add.w	fp, fp, #8
 8002e5a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002e5c:	2b80      	cmp	r3, #128	; 0x80
 8002e5e:	f000 8331 	beq.w	80034c4 <_vfprintf_r+0xa64>
 8002e62:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002e64:	eba9 0503 	sub.w	r5, r9, r3
 8002e68:	2d00      	cmp	r5, #0
 8002e6a:	dd37      	ble.n	8002edc <_vfprintf_r+0x47c>
 8002e6c:	2d10      	cmp	r5, #16
 8002e6e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e70:	4b90      	ldr	r3, [pc, #576]	; (80030b4 <_vfprintf_r+0x654>)
 8002e72:	dd28      	ble.n	8002ec6 <_vfprintf_r+0x466>
 8002e74:	4659      	mov	r1, fp
 8002e76:	4620      	mov	r0, r4
 8002e78:	46bb      	mov	fp, r7
 8002e7a:	f04f 0910 	mov.w	r9, #16
 8002e7e:	4637      	mov	r7, r6
 8002e80:	461c      	mov	r4, r3
 8002e82:	9e07      	ldr	r6, [sp, #28]
 8002e84:	e004      	b.n	8002e90 <_vfprintf_r+0x430>
 8002e86:	3d10      	subs	r5, #16
 8002e88:	2d10      	cmp	r5, #16
 8002e8a:	f101 0108 	add.w	r1, r1, #8
 8002e8e:	dd15      	ble.n	8002ebc <_vfprintf_r+0x45c>
 8002e90:	3201      	adds	r2, #1
 8002e92:	3010      	adds	r0, #16
 8002e94:	2a07      	cmp	r2, #7
 8002e96:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002e9a:	e9c1 4900 	strd	r4, r9, [r1]
 8002e9e:	ddf2      	ble.n	8002e86 <_vfprintf_r+0x426>
 8002ea0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ea2:	4631      	mov	r1, r6
 8002ea4:	9803      	ldr	r0, [sp, #12]
 8002ea6:	f003 fe47 	bl	8006b38 <__sprint_r>
 8002eaa:	2800      	cmp	r0, #0
 8002eac:	f040 83d9 	bne.w	8003662 <_vfprintf_r+0xc02>
 8002eb0:	3d10      	subs	r5, #16
 8002eb2:	2d10      	cmp	r5, #16
 8002eb4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002eb8:	a92d      	add	r1, sp, #180	; 0xb4
 8002eba:	dce9      	bgt.n	8002e90 <_vfprintf_r+0x430>
 8002ebc:	463e      	mov	r6, r7
 8002ebe:	4623      	mov	r3, r4
 8002ec0:	465f      	mov	r7, fp
 8002ec2:	4604      	mov	r4, r0
 8002ec4:	468b      	mov	fp, r1
 8002ec6:	3201      	adds	r2, #1
 8002ec8:	442c      	add	r4, r5
 8002eca:	2a07      	cmp	r2, #7
 8002ecc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002ed0:	e9cb 3500 	strd	r3, r5, [fp]
 8002ed4:	f300 83ef 	bgt.w	80036b6 <_vfprintf_r+0xc56>
 8002ed8:	f10b 0b08 	add.w	fp, fp, #8
 8002edc:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002ee0:	f040 8280 	bne.w	80033e4 <_vfprintf_r+0x984>
 8002ee4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ee6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ee8:	f8cb 7000 	str.w	r7, [fp]
 8002eec:	3301      	adds	r3, #1
 8002eee:	4414      	add	r4, r2
 8002ef0:	2b07      	cmp	r3, #7
 8002ef2:	942c      	str	r4, [sp, #176]	; 0xb0
 8002ef4:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ef8:	932b      	str	r3, [sp, #172]	; 0xac
 8002efa:	f300 8392 	bgt.w	8003622 <_vfprintf_r+0xbc2>
 8002efe:	f10b 0b08 	add.w	fp, fp, #8
 8002f02:	f018 0f04 	tst.w	r8, #4
 8002f06:	d03b      	beq.n	8002f80 <_vfprintf_r+0x520>
 8002f08:	9b06      	ldr	r3, [sp, #24]
 8002f0a:	9a04      	ldr	r2, [sp, #16]
 8002f0c:	1a9d      	subs	r5, r3, r2
 8002f0e:	2d00      	cmp	r5, #0
 8002f10:	dd36      	ble.n	8002f80 <_vfprintf_r+0x520>
 8002f12:	2d10      	cmp	r5, #16
 8002f14:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f16:	dd21      	ble.n	8002f5c <_vfprintf_r+0x4fc>
 8002f18:	2610      	movs	r6, #16
 8002f1a:	9f03      	ldr	r7, [sp, #12]
 8002f1c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002f20:	e004      	b.n	8002f2c <_vfprintf_r+0x4cc>
 8002f22:	3d10      	subs	r5, #16
 8002f24:	2d10      	cmp	r5, #16
 8002f26:	f10b 0b08 	add.w	fp, fp, #8
 8002f2a:	dd17      	ble.n	8002f5c <_vfprintf_r+0x4fc>
 8002f2c:	3301      	adds	r3, #1
 8002f2e:	4a60      	ldr	r2, [pc, #384]	; (80030b0 <_vfprintf_r+0x650>)
 8002f30:	3410      	adds	r4, #16
 8002f32:	2b07      	cmp	r3, #7
 8002f34:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f38:	e9cb 2600 	strd	r2, r6, [fp]
 8002f3c:	ddf1      	ble.n	8002f22 <_vfprintf_r+0x4c2>
 8002f3e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f40:	4641      	mov	r1, r8
 8002f42:	4638      	mov	r0, r7
 8002f44:	f003 fdf8 	bl	8006b38 <__sprint_r>
 8002f48:	2800      	cmp	r0, #0
 8002f4a:	f040 856c 	bne.w	8003a26 <_vfprintf_r+0xfc6>
 8002f4e:	3d10      	subs	r5, #16
 8002f50:	2d10      	cmp	r5, #16
 8002f52:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002f56:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f5a:	dce7      	bgt.n	8002f2c <_vfprintf_r+0x4cc>
 8002f5c:	3301      	adds	r3, #1
 8002f5e:	4a54      	ldr	r2, [pc, #336]	; (80030b0 <_vfprintf_r+0x650>)
 8002f60:	442c      	add	r4, r5
 8002f62:	2b07      	cmp	r3, #7
 8002f64:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002f68:	e9cb 2500 	strd	r2, r5, [fp]
 8002f6c:	dd08      	ble.n	8002f80 <_vfprintf_r+0x520>
 8002f6e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f70:	9907      	ldr	r1, [sp, #28]
 8002f72:	9803      	ldr	r0, [sp, #12]
 8002f74:	f003 fde0 	bl	8006b38 <__sprint_r>
 8002f78:	2800      	cmp	r0, #0
 8002f7a:	f040 82e9 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8002f7e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f80:	9904      	ldr	r1, [sp, #16]
 8002f82:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002f86:	428a      	cmp	r2, r1
 8002f88:	bfac      	ite	ge
 8002f8a:	189b      	addge	r3, r3, r2
 8002f8c:	185b      	addlt	r3, r3, r1
 8002f8e:	9305      	str	r3, [sp, #20]
 8002f90:	2c00      	cmp	r4, #0
 8002f92:	f040 82d5 	bne.w	8003540 <_vfprintf_r+0xae0>
 8002f96:	2300      	movs	r3, #0
 8002f98:	932b      	str	r3, [sp, #172]	; 0xac
 8002f9a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002f9c:	b11b      	cbz	r3, 8002fa6 <_vfprintf_r+0x546>
 8002f9e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002fa0:	9803      	ldr	r0, [sp, #12]
 8002fa2:	f002 fc9d 	bl	80058e0 <_free_r>
 8002fa6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002faa:	4657      	mov	r7, sl
 8002fac:	783b      	ldrb	r3, [r7, #0]
 8002fae:	2b00      	cmp	r3, #0
 8002fb0:	f47f ada7 	bne.w	8002b02 <_vfprintf_r+0xa2>
 8002fb4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002fb6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002fba:	2b00      	cmp	r3, #0
 8002fbc:	f041 80e7 	bne.w	800418e <_vfprintf_r+0x172e>
 8002fc0:	2300      	movs	r3, #0
 8002fc2:	932b      	str	r3, [sp, #172]	; 0xac
 8002fc4:	e2cb      	b.n	800355e <_vfprintf_r+0xafe>
 8002fc6:	4643      	mov	r3, r8
 8002fc8:	069a      	lsls	r2, r3, #26
 8002fca:	f140 814e 	bpl.w	800326a <_vfprintf_r+0x80a>
 8002fce:	9c08      	ldr	r4, [sp, #32]
 8002fd0:	3407      	adds	r4, #7
 8002fd2:	f024 0207 	bic.w	r2, r4, #7
 8002fd6:	f102 0108 	add.w	r1, r2, #8
 8002fda:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002fde:	9108      	str	r1, [sp, #32]
 8002fe0:	2201      	movs	r2, #1
 8002fe2:	2100      	movs	r1, #0
 8002fe4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002fe8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002fec:	a956      	add	r1, sp, #344	; 0x158
 8002fee:	9104      	str	r1, [sp, #16]
 8002ff0:	f47f aea2 	bne.w	8002d38 <_vfprintf_r+0x2d8>
 8002ff4:	4698      	mov	r8, r3
 8002ff6:	2a01      	cmp	r2, #1
 8002ff8:	f000 8350 	beq.w	800369c <_vfprintf_r+0xc3c>
 8002ffc:	2a02      	cmp	r2, #2
 8002ffe:	f000 831b 	beq.w	8003638 <_vfprintf_r+0xbd8>
 8003002:	a956      	add	r1, sp, #344	; 0x158
 8003004:	e000      	b.n	8003008 <_vfprintf_r+0x5a8>
 8003006:	4639      	mov	r1, r7
 8003008:	08e2      	lsrs	r2, r4, #3
 800300a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 800300e:	08e8      	lsrs	r0, r5, #3
 8003010:	f004 0307 	and.w	r3, r4, #7
 8003014:	4605      	mov	r5, r0
 8003016:	4614      	mov	r4, r2
 8003018:	3330      	adds	r3, #48	; 0x30
 800301a:	ea54 0205 	orrs.w	r2, r4, r5
 800301e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8003022:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8003026:	d1ee      	bne.n	8003006 <_vfprintf_r+0x5a6>
 8003028:	f018 0f01 	tst.w	r8, #1
 800302c:	f000 8314 	beq.w	8003658 <_vfprintf_r+0xbf8>
 8003030:	2b30      	cmp	r3, #48	; 0x30
 8003032:	f000 8311 	beq.w	8003658 <_vfprintf_r+0xbf8>
 8003036:	9a04      	ldr	r2, [sp, #16]
 8003038:	3902      	subs	r1, #2
 800303a:	2330      	movs	r3, #48	; 0x30
 800303c:	1a52      	subs	r2, r2, r1
 800303e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8003042:	9209      	str	r2, [sp, #36]	; 0x24
 8003044:	460f      	mov	r7, r1
 8003046:	e68c      	b.n	8002d62 <_vfprintf_r+0x302>
 8003048:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800304c:	2200      	movs	r2, #0
 800304e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003052:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8003056:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 800305a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800305e:	2b09      	cmp	r3, #9
 8003060:	d9f5      	bls.n	800304e <_vfprintf_r+0x5ee>
 8003062:	9206      	str	r2, [sp, #24]
 8003064:	e57c      	b.n	8002b60 <_vfprintf_r+0x100>
 8003066:	4b14      	ldr	r3, [pc, #80]	; (80030b8 <_vfprintf_r+0x658>)
 8003068:	9317      	str	r3, [sp, #92]	; 0x5c
 800306a:	f018 0f20 	tst.w	r8, #32
 800306e:	f000 8114 	beq.w	800329a <_vfprintf_r+0x83a>
 8003072:	9c08      	ldr	r4, [sp, #32]
 8003074:	3407      	adds	r4, #7
 8003076:	f024 0307 	bic.w	r3, r4, #7
 800307a:	e9d3 4500 	ldrd	r4, r5, [r3]
 800307e:	f103 0208 	add.w	r2, r3, #8
 8003082:	9208      	str	r2, [sp, #32]
 8003084:	f018 0f01 	tst.w	r8, #1
 8003088:	d009      	beq.n	800309e <_vfprintf_r+0x63e>
 800308a:	ea54 0305 	orrs.w	r3, r4, r5
 800308e:	d006      	beq.n	800309e <_vfprintf_r+0x63e>
 8003090:	2330      	movs	r3, #48	; 0x30
 8003092:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8003096:	f048 0802 	orr.w	r8, r8, #2
 800309a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800309e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80030a2:	2202      	movs	r2, #2
 80030a4:	e79d      	b.n	8002fe2 <_vfprintf_r+0x582>
 80030a6:	f048 0801 	orr.w	r8, r8, #1
 80030aa:	f89a 6000 	ldrb.w	r6, [sl]
 80030ae:	e555      	b.n	8002b5c <_vfprintf_r+0xfc>
 80030b0:	08007220 	.word	0x08007220
 80030b4:	08007230 	.word	0x08007230
 80030b8:	080071ec 	.word	0x080071ec
 80030bc:	9e03      	ldr	r6, [sp, #12]
 80030be:	4630      	mov	r0, r6
 80030c0:	f002 feaa 	bl	8005e18 <_localeconv_r>
 80030c4:	6843      	ldr	r3, [r0, #4]
 80030c6:	9318      	str	r3, [sp, #96]	; 0x60
 80030c8:	4618      	mov	r0, r3
 80030ca:	f7fd fab9 	bl	8000640 <strlen>
 80030ce:	901b      	str	r0, [sp, #108]	; 0x6c
 80030d0:	4604      	mov	r4, r0
 80030d2:	4630      	mov	r0, r6
 80030d4:	f002 fea0 	bl	8005e18 <_localeconv_r>
 80030d8:	6883      	ldr	r3, [r0, #8]
 80030da:	931a      	str	r3, [sp, #104]	; 0x68
 80030dc:	2c00      	cmp	r4, #0
 80030de:	f43f adb8 	beq.w	8002c52 <_vfprintf_r+0x1f2>
 80030e2:	f89a 6000 	ldrb.w	r6, [sl]
 80030e6:	2b00      	cmp	r3, #0
 80030e8:	f43f ad38 	beq.w	8002b5c <_vfprintf_r+0xfc>
 80030ec:	781b      	ldrb	r3, [r3, #0]
 80030ee:	2b00      	cmp	r3, #0
 80030f0:	f43f ad34 	beq.w	8002b5c <_vfprintf_r+0xfc>
 80030f4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80030f8:	e530      	b.n	8002b5c <_vfprintf_r+0xfc>
 80030fa:	9b08      	ldr	r3, [sp, #32]
 80030fc:	f89a 6000 	ldrb.w	r6, [sl]
 8003100:	681a      	ldr	r2, [r3, #0]
 8003102:	9206      	str	r2, [sp, #24]
 8003104:	2a00      	cmp	r2, #0
 8003106:	f103 0304 	add.w	r3, r3, #4
 800310a:	f2c0 8697 	blt.w	8003e3c <_vfprintf_r+0x13dc>
 800310e:	9308      	str	r3, [sp, #32]
 8003110:	e524      	b.n	8002b5c <_vfprintf_r+0xfc>
 8003112:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003116:	f89a 6000 	ldrb.w	r6, [sl]
 800311a:	e51f      	b.n	8002b5c <_vfprintf_r+0xfc>
 800311c:	f89a 6000 	ldrb.w	r6, [sl]
 8003120:	f048 0804 	orr.w	r8, r8, #4
 8003124:	e51a      	b.n	8002b5c <_vfprintf_r+0xfc>
 8003126:	f89a 6000 	ldrb.w	r6, [sl]
 800312a:	2e2a      	cmp	r6, #42	; 0x2a
 800312c:	f10a 0201 	add.w	r2, sl, #1
 8003130:	f001 81b0 	beq.w	8004494 <_vfprintf_r+0x1a34>
 8003134:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003138:	2b09      	cmp	r3, #9
 800313a:	4692      	mov	sl, r2
 800313c:	f04f 0900 	mov.w	r9, #0
 8003140:	f63f ad0e 	bhi.w	8002b60 <_vfprintf_r+0x100>
 8003144:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003148:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 800314c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8003150:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003154:	2b09      	cmp	r3, #9
 8003156:	d9f5      	bls.n	8003144 <_vfprintf_r+0x6e4>
 8003158:	e502      	b.n	8002b60 <_vfprintf_r+0x100>
 800315a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 800315e:	f89a 6000 	ldrb.w	r6, [sl]
 8003162:	e4fb      	b.n	8002b5c <_vfprintf_r+0xfc>
 8003164:	9c08      	ldr	r4, [sp, #32]
 8003166:	3407      	adds	r4, #7
 8003168:	f024 0407 	bic.w	r4, r4, #7
 800316c:	ed94 7b00 	vldr	d7, [r4]
 8003170:	ec52 1b17 	vmov	r1, r2, d7
 8003174:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8003178:	931d      	str	r3, [sp, #116]	; 0x74
 800317a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 800317e:	3408      	adds	r4, #8
 8003180:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8003184:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8003188:	4bba      	ldr	r3, [pc, #744]	; (8003474 <_vfprintf_r+0xa14>)
 800318a:	9408      	str	r4, [sp, #32]
 800318c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003190:	f7fd ff6c 	bl	800106c <__aeabi_dcmpun>
 8003194:	2800      	cmp	r0, #0
 8003196:	f040 846f 	bne.w	8003a78 <_vfprintf_r+0x1018>
 800319a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 800319e:	4bb5      	ldr	r3, [pc, #724]	; (8003474 <_vfprintf_r+0xa14>)
 80031a0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80031a4:	f7fd ff44 	bl	8001030 <__aeabi_dcmple>
 80031a8:	2800      	cmp	r0, #0
 80031aa:	f040 8465 	bne.w	8003a78 <_vfprintf_r+0x1018>
 80031ae:	2200      	movs	r2, #0
 80031b0:	2300      	movs	r3, #0
 80031b2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80031b6:	f7fd ff31 	bl	800101c <__aeabi_dcmplt>
 80031ba:	2800      	cmp	r0, #0
 80031bc:	f040 855b 	bne.w	8003c76 <_vfprintf_r+0x1216>
 80031c0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80031c4:	4fac      	ldr	r7, [pc, #688]	; (8003478 <_vfprintf_r+0xa18>)
 80031c6:	4bad      	ldr	r3, [pc, #692]	; (800347c <_vfprintf_r+0xa1c>)
 80031c8:	2000      	movs	r0, #0
 80031ca:	2103      	movs	r1, #3
 80031cc:	9104      	str	r1, [sp, #16]
 80031ce:	900a      	str	r0, [sp, #40]	; 0x28
 80031d0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 80031d4:	2e47      	cmp	r6, #71	; 0x47
 80031d6:	bfd8      	it	le
 80031d8:	461f      	movle	r7, r3
 80031da:	9109      	str	r1, [sp, #36]	; 0x24
 80031dc:	4681      	mov	r9, r0
 80031de:	900f      	str	r0, [sp, #60]	; 0x3c
 80031e0:	9014      	str	r0, [sp, #80]	; 0x50
 80031e2:	9011      	str	r0, [sp, #68]	; 0x44
 80031e4:	e5c9      	b.n	8002d7a <_vfprintf_r+0x31a>
 80031e6:	9808      	ldr	r0, [sp, #32]
 80031e8:	2300      	movs	r3, #0
 80031ea:	6801      	ldr	r1, [r0, #0]
 80031ec:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80031f0:	461a      	mov	r2, r3
 80031f2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80031f6:	2301      	movs	r3, #1
 80031f8:	1d01      	adds	r1, r0, #4
 80031fa:	9304      	str	r3, [sp, #16]
 80031fc:	920a      	str	r2, [sp, #40]	; 0x28
 80031fe:	4691      	mov	r9, r2
 8003200:	920f      	str	r2, [sp, #60]	; 0x3c
 8003202:	9214      	str	r2, [sp, #80]	; 0x50
 8003204:	9211      	str	r2, [sp, #68]	; 0x44
 8003206:	e9cd 1308 	strd	r1, r3, [sp, #32]
 800320a:	af3d      	add	r7, sp, #244	; 0xf4
 800320c:	e5b9      	b.n	8002d82 <_vfprintf_r+0x322>
 800320e:	9b08      	ldr	r3, [sp, #32]
 8003210:	681f      	ldr	r7, [r3, #0]
 8003212:	2500      	movs	r5, #0
 8003214:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8003218:	1d1c      	adds	r4, r3, #4
 800321a:	2f00      	cmp	r7, #0
 800321c:	f000 8639 	beq.w	8003e92 <_vfprintf_r+0x1432>
 8003220:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003224:	f000 8711 	beq.w	800404a <_vfprintf_r+0x15ea>
 8003228:	464a      	mov	r2, r9
 800322a:	4629      	mov	r1, r5
 800322c:	4638      	mov	r0, r7
 800322e:	f7fd fa77 	bl	8000720 <memchr>
 8003232:	900a      	str	r0, [sp, #40]	; 0x28
 8003234:	2800      	cmp	r0, #0
 8003236:	f000 85e7 	beq.w	8003e08 <_vfprintf_r+0x13a8>
 800323a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800323c:	1bdb      	subs	r3, r3, r7
 800323e:	9309      	str	r3, [sp, #36]	; 0x24
 8003240:	46a9      	mov	r9, r5
 8003242:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003246:	9408      	str	r4, [sp, #32]
 8003248:	9304      	str	r3, [sp, #16]
 800324a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800324e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8003252:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003256:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 800325a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800325e:	e58c      	b.n	8002d7a <_vfprintf_r+0x31a>
 8003260:	f048 0310 	orr.w	r3, r8, #16
 8003264:	069a      	lsls	r2, r3, #26
 8003266:	f53f aeb2 	bmi.w	8002fce <_vfprintf_r+0x56e>
 800326a:	9a08      	ldr	r2, [sp, #32]
 800326c:	06df      	lsls	r7, r3, #27
 800326e:	f102 0104 	add.w	r1, r2, #4
 8003272:	f100 837e 	bmi.w	8003972 <_vfprintf_r+0xf12>
 8003276:	065d      	lsls	r5, r3, #25
 8003278:	9a08      	ldr	r2, [sp, #32]
 800327a:	f100 84e4 	bmi.w	8003c46 <_vfprintf_r+0x11e6>
 800327e:	059c      	lsls	r4, r3, #22
 8003280:	f140 8377 	bpl.w	8003972 <_vfprintf_r+0xf12>
 8003284:	7814      	ldrb	r4, [r2, #0]
 8003286:	9108      	str	r1, [sp, #32]
 8003288:	2500      	movs	r5, #0
 800328a:	2201      	movs	r2, #1
 800328c:	e6a9      	b.n	8002fe2 <_vfprintf_r+0x582>
 800328e:	4b7c      	ldr	r3, [pc, #496]	; (8003480 <_vfprintf_r+0xa20>)
 8003290:	9317      	str	r3, [sp, #92]	; 0x5c
 8003292:	f018 0f20 	tst.w	r8, #32
 8003296:	f47f aeec 	bne.w	8003072 <_vfprintf_r+0x612>
 800329a:	9a08      	ldr	r2, [sp, #32]
 800329c:	f018 0f10 	tst.w	r8, #16
 80032a0:	f102 0304 	add.w	r3, r2, #4
 80032a4:	f040 8354 	bne.w	8003950 <_vfprintf_r+0xef0>
 80032a8:	f018 0f40 	tst.w	r8, #64	; 0x40
 80032ac:	9a08      	ldr	r2, [sp, #32]
 80032ae:	f040 84d0 	bne.w	8003c52 <_vfprintf_r+0x11f2>
 80032b2:	f418 7f00 	tst.w	r8, #512	; 0x200
 80032b6:	f000 834b 	beq.w	8003950 <_vfprintf_r+0xef0>
 80032ba:	7814      	ldrb	r4, [r2, #0]
 80032bc:	9308      	str	r3, [sp, #32]
 80032be:	2500      	movs	r5, #0
 80032c0:	e6e0      	b.n	8003084 <_vfprintf_r+0x624>
 80032c2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 80032c6:	f89a 6000 	ldrb.w	r6, [sl]
 80032ca:	2b00      	cmp	r3, #0
 80032cc:	f47f ac46 	bne.w	8002b5c <_vfprintf_r+0xfc>
 80032d0:	2320      	movs	r3, #32
 80032d2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80032d6:	e441      	b.n	8002b5c <_vfprintf_r+0xfc>
 80032d8:	f89a 6000 	ldrb.w	r6, [sl]
 80032dc:	2e6c      	cmp	r6, #108	; 0x6c
 80032de:	bf03      	ittte	eq
 80032e0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80032e4:	f048 0820 	orreq.w	r8, r8, #32
 80032e8:	f10a 0a01 	addeq.w	sl, sl, #1
 80032ec:	f048 0810 	orrne.w	r8, r8, #16
 80032f0:	e434      	b.n	8002b5c <_vfprintf_r+0xfc>
 80032f2:	9a08      	ldr	r2, [sp, #32]
 80032f4:	f018 0f20 	tst.w	r8, #32
 80032f8:	f852 3b04 	ldr.w	r3, [r2], #4
 80032fc:	9208      	str	r2, [sp, #32]
 80032fe:	f000 83a1 	beq.w	8003a44 <_vfprintf_r+0xfe4>
 8003302:	9a05      	ldr	r2, [sp, #20]
 8003304:	4610      	mov	r0, r2
 8003306:	17d1      	asrs	r1, r2, #31
 8003308:	e9c3 0100 	strd	r0, r1, [r3]
 800330c:	4657      	mov	r7, sl
 800330e:	e64d      	b.n	8002fac <_vfprintf_r+0x54c>
 8003310:	f89a 6000 	ldrb.w	r6, [sl]
 8003314:	2e68      	cmp	r6, #104	; 0x68
 8003316:	bf03      	ittte	eq
 8003318:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800331c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003320:	f10a 0a01 	addeq.w	sl, sl, #1
 8003324:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003328:	e418      	b.n	8002b5c <_vfprintf_r+0xfc>
 800332a:	9908      	ldr	r1, [sp, #32]
 800332c:	4b55      	ldr	r3, [pc, #340]	; (8003484 <_vfprintf_r+0xa24>)
 800332e:	680c      	ldr	r4, [r1, #0]
 8003330:	9317      	str	r3, [sp, #92]	; 0x5c
 8003332:	f647 0230 	movw	r2, #30768	; 0x7830
 8003336:	3104      	adds	r1, #4
 8003338:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 800333c:	f048 0302 	orr.w	r3, r8, #2
 8003340:	9108      	str	r1, [sp, #32]
 8003342:	2500      	movs	r5, #0
 8003344:	2202      	movs	r2, #2
 8003346:	2678      	movs	r6, #120	; 0x78
 8003348:	e64b      	b.n	8002fe2 <_vfprintf_r+0x582>
 800334a:	f048 0808 	orr.w	r8, r8, #8
 800334e:	f89a 6000 	ldrb.w	r6, [sl]
 8003352:	e403      	b.n	8002b5c <_vfprintf_r+0xfc>
 8003354:	f048 0310 	orr.w	r3, r8, #16
 8003358:	069f      	lsls	r7, r3, #26
 800335a:	f53f acd1 	bmi.w	8002d00 <_vfprintf_r+0x2a0>
 800335e:	9908      	ldr	r1, [sp, #32]
 8003360:	06dd      	lsls	r5, r3, #27
 8003362:	f101 0204 	add.w	r2, r1, #4
 8003366:	f100 82fd 	bmi.w	8003964 <_vfprintf_r+0xf04>
 800336a:	065c      	lsls	r4, r3, #25
 800336c:	9908      	ldr	r1, [sp, #32]
 800336e:	f100 8475 	bmi.w	8003c5c <_vfprintf_r+0x11fc>
 8003372:	0598      	lsls	r0, r3, #22
 8003374:	f140 82f6 	bpl.w	8003964 <_vfprintf_r+0xf04>
 8003378:	f991 4000 	ldrsb.w	r4, [r1]
 800337c:	9208      	str	r2, [sp, #32]
 800337e:	17e5      	asrs	r5, r4, #31
 8003380:	4620      	mov	r0, r4
 8003382:	4629      	mov	r1, r5
 8003384:	e4c7      	b.n	8002d16 <_vfprintf_r+0x2b6>
 8003386:	9a08      	ldr	r2, [sp, #32]
 8003388:	f018 0f10 	tst.w	r8, #16
 800338c:	f102 0304 	add.w	r3, r2, #4
 8003390:	f040 82e3 	bne.w	800395a <_vfprintf_r+0xefa>
 8003394:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003398:	9a08      	ldr	r2, [sp, #32]
 800339a:	f040 8467 	bne.w	8003c6c <_vfprintf_r+0x120c>
 800339e:	f418 7f00 	tst.w	r8, #512	; 0x200
 80033a2:	f000 82da 	beq.w	800395a <_vfprintf_r+0xefa>
 80033a6:	7814      	ldrb	r4, [r2, #0]
 80033a8:	9308      	str	r3, [sp, #32]
 80033aa:	2500      	movs	r5, #0
 80033ac:	e488      	b.n	8002cc0 <_vfprintf_r+0x260>
 80033ae:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80033b2:	f002 fd45 	bl	8005e40 <__retarget_lock_release_recursive>
 80033b6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80033ba:	9305      	str	r3, [sp, #20]
 80033bc:	e443      	b.n	8002c46 <_vfprintf_r+0x1e6>
 80033be:	2e00      	cmp	r6, #0
 80033c0:	f43f adf8 	beq.w	8002fb4 <_vfprintf_r+0x554>
 80033c4:	2300      	movs	r3, #0
 80033c6:	2101      	movs	r1, #1
 80033c8:	461a      	mov	r2, r3
 80033ca:	9104      	str	r1, [sp, #16]
 80033cc:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 80033d0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80033d4:	930a      	str	r3, [sp, #40]	; 0x28
 80033d6:	4699      	mov	r9, r3
 80033d8:	930f      	str	r3, [sp, #60]	; 0x3c
 80033da:	9314      	str	r3, [sp, #80]	; 0x50
 80033dc:	9311      	str	r3, [sp, #68]	; 0x44
 80033de:	9109      	str	r1, [sp, #36]	; 0x24
 80033e0:	af3d      	add	r7, sp, #244	; 0xf4
 80033e2:	e4ce      	b.n	8002d82 <_vfprintf_r+0x322>
 80033e4:	2e65      	cmp	r6, #101	; 0x65
 80033e6:	f340 80ca 	ble.w	800357e <_vfprintf_r+0xb1e>
 80033ea:	2200      	movs	r2, #0
 80033ec:	2300      	movs	r3, #0
 80033ee:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80033f2:	f7fd fe09 	bl	8001008 <__aeabi_dcmpeq>
 80033f6:	2800      	cmp	r0, #0
 80033f8:	f000 8169 	beq.w	80036ce <_vfprintf_r+0xc6e>
 80033fc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033fe:	4a22      	ldr	r2, [pc, #136]	; (8003488 <_vfprintf_r+0xa28>)
 8003400:	f8cb 2000 	str.w	r2, [fp]
 8003404:	3301      	adds	r3, #1
 8003406:	3401      	adds	r4, #1
 8003408:	2201      	movs	r2, #1
 800340a:	2b07      	cmp	r3, #7
 800340c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003410:	f8cb 2004 	str.w	r2, [fp, #4]
 8003414:	f300 8406 	bgt.w	8003c24 <_vfprintf_r+0x11c4>
 8003418:	f10b 0b08 	add.w	fp, fp, #8
 800341c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800341e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003420:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003422:	4293      	cmp	r3, r2
 8003424:	db03      	blt.n	800342e <_vfprintf_r+0x9ce>
 8003426:	f018 0f01 	tst.w	r8, #1
 800342a:	f43f ad6a 	beq.w	8002f02 <_vfprintf_r+0x4a2>
 800342e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003430:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003432:	f8cb 2000 	str.w	r2, [fp]
 8003436:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003438:	f8cb 2004 	str.w	r2, [fp, #4]
 800343c:	3301      	adds	r3, #1
 800343e:	4414      	add	r4, r2
 8003440:	2b07      	cmp	r3, #7
 8003442:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003446:	f300 8517 	bgt.w	8003e78 <_vfprintf_r+0x1418>
 800344a:	f10b 0b08 	add.w	fp, fp, #8
 800344e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003450:	1e5d      	subs	r5, r3, #1
 8003452:	2d00      	cmp	r5, #0
 8003454:	f77f ad55 	ble.w	8002f02 <_vfprintf_r+0x4a2>
 8003458:	2d10      	cmp	r5, #16
 800345a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800345c:	4b0b      	ldr	r3, [pc, #44]	; (800348c <_vfprintf_r+0xa2c>)
 800345e:	f340 82e7 	ble.w	8003a30 <_vfprintf_r+0xfd0>
 8003462:	4619      	mov	r1, r3
 8003464:	2610      	movs	r6, #16
 8003466:	4623      	mov	r3, r4
 8003468:	9f03      	ldr	r7, [sp, #12]
 800346a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800346e:	460c      	mov	r4, r1
 8003470:	e014      	b.n	800349c <_vfprintf_r+0xa3c>
 8003472:	bf00      	nop
 8003474:	7fefffff 	.word	0x7fefffff
 8003478:	080071e0 	.word	0x080071e0
 800347c:	080071dc 	.word	0x080071dc
 8003480:	08007200 	.word	0x08007200
 8003484:	080071ec 	.word	0x080071ec
 8003488:	0800721c 	.word	0x0800721c
 800348c:	08007230 	.word	0x08007230
 8003490:	f10b 0b08 	add.w	fp, fp, #8
 8003494:	3d10      	subs	r5, #16
 8003496:	2d10      	cmp	r5, #16
 8003498:	f340 82c7 	ble.w	8003a2a <_vfprintf_r+0xfca>
 800349c:	3201      	adds	r2, #1
 800349e:	3310      	adds	r3, #16
 80034a0:	2a07      	cmp	r2, #7
 80034a2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80034a6:	e9cb 4600 	strd	r4, r6, [fp]
 80034aa:	ddf1      	ble.n	8003490 <_vfprintf_r+0xa30>
 80034ac:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ae:	4649      	mov	r1, r9
 80034b0:	4638      	mov	r0, r7
 80034b2:	f003 fb41 	bl	8006b38 <__sprint_r>
 80034b6:	2800      	cmp	r0, #0
 80034b8:	d14c      	bne.n	8003554 <_vfprintf_r+0xaf4>
 80034ba:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80034be:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034c2:	e7e7      	b.n	8003494 <_vfprintf_r+0xa34>
 80034c4:	9b06      	ldr	r3, [sp, #24]
 80034c6:	9a04      	ldr	r2, [sp, #16]
 80034c8:	1a9d      	subs	r5, r3, r2
 80034ca:	2d00      	cmp	r5, #0
 80034cc:	f77f acc9 	ble.w	8002e62 <_vfprintf_r+0x402>
 80034d0:	2d10      	cmp	r5, #16
 80034d2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034d4:	4bbc      	ldr	r3, [pc, #752]	; (80037c8 <_vfprintf_r+0xd68>)
 80034d6:	dd27      	ble.n	8003528 <_vfprintf_r+0xac8>
 80034d8:	4659      	mov	r1, fp
 80034da:	4620      	mov	r0, r4
 80034dc:	46bb      	mov	fp, r7
 80034de:	461c      	mov	r4, r3
 80034e0:	4637      	mov	r7, r6
 80034e2:	9e07      	ldr	r6, [sp, #28]
 80034e4:	e004      	b.n	80034f0 <_vfprintf_r+0xa90>
 80034e6:	3d10      	subs	r5, #16
 80034e8:	2d10      	cmp	r5, #16
 80034ea:	f101 0108 	add.w	r1, r1, #8
 80034ee:	dd16      	ble.n	800351e <_vfprintf_r+0xabe>
 80034f0:	3201      	adds	r2, #1
 80034f2:	3010      	adds	r0, #16
 80034f4:	2310      	movs	r3, #16
 80034f6:	2a07      	cmp	r2, #7
 80034f8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80034fc:	600c      	str	r4, [r1, #0]
 80034fe:	604b      	str	r3, [r1, #4]
 8003500:	ddf1      	ble.n	80034e6 <_vfprintf_r+0xa86>
 8003502:	aa2a      	add	r2, sp, #168	; 0xa8
 8003504:	4631      	mov	r1, r6
 8003506:	9803      	ldr	r0, [sp, #12]
 8003508:	f003 fb16 	bl	8006b38 <__sprint_r>
 800350c:	2800      	cmp	r0, #0
 800350e:	f040 80a8 	bne.w	8003662 <_vfprintf_r+0xc02>
 8003512:	3d10      	subs	r5, #16
 8003514:	2d10      	cmp	r5, #16
 8003516:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800351a:	a92d      	add	r1, sp, #180	; 0xb4
 800351c:	dce8      	bgt.n	80034f0 <_vfprintf_r+0xa90>
 800351e:	463e      	mov	r6, r7
 8003520:	4623      	mov	r3, r4
 8003522:	465f      	mov	r7, fp
 8003524:	4604      	mov	r4, r0
 8003526:	468b      	mov	fp, r1
 8003528:	3201      	adds	r2, #1
 800352a:	442c      	add	r4, r5
 800352c:	2a07      	cmp	r2, #7
 800352e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003532:	e9cb 3500 	strd	r3, r5, [fp]
 8003536:	f300 8292 	bgt.w	8003a5e <_vfprintf_r+0xffe>
 800353a:	f10b 0b08 	add.w	fp, fp, #8
 800353e:	e490      	b.n	8002e62 <_vfprintf_r+0x402>
 8003540:	aa2a      	add	r2, sp, #168	; 0xa8
 8003542:	9907      	ldr	r1, [sp, #28]
 8003544:	9803      	ldr	r0, [sp, #12]
 8003546:	f003 faf7 	bl	8006b38 <__sprint_r>
 800354a:	2800      	cmp	r0, #0
 800354c:	f43f ad23 	beq.w	8002f96 <_vfprintf_r+0x536>
 8003550:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003554:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003556:	b111      	cbz	r1, 800355e <_vfprintf_r+0xafe>
 8003558:	9803      	ldr	r0, [sp, #12]
 800355a:	f002 f9c1 	bl	80058e0 <_free_r>
 800355e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003562:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003566:	07d0      	lsls	r0, r2, #31
 8003568:	d402      	bmi.n	8003570 <_vfprintf_r+0xb10>
 800356a:	0599      	lsls	r1, r3, #22
 800356c:	f140 81d0 	bpl.w	8003910 <_vfprintf_r+0xeb0>
 8003570:	065a      	lsls	r2, r3, #25
 8003572:	f53f ab65 	bmi.w	8002c40 <_vfprintf_r+0x1e0>
 8003576:	9805      	ldr	r0, [sp, #20]
 8003578:	b057      	add	sp, #348	; 0x15c
 800357a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800357e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003580:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003582:	2a01      	cmp	r2, #1
 8003584:	f104 0401 	add.w	r4, r4, #1
 8003588:	f103 0501 	add.w	r5, r3, #1
 800358c:	f10b 0608 	add.w	r6, fp, #8
 8003590:	f340 811c 	ble.w	80037cc <_vfprintf_r+0xd6c>
 8003594:	2301      	movs	r3, #1
 8003596:	2d07      	cmp	r5, #7
 8003598:	f8cb 7000 	str.w	r7, [fp]
 800359c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80035a0:	f8cb 3004 	str.w	r3, [fp, #4]
 80035a4:	f300 81bb 	bgt.w	800391e <_vfprintf_r+0xebe>
 80035a8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80035aa:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80035ac:	1c69      	adds	r1, r5, #1
 80035ae:	441c      	add	r4, r3
 80035b0:	2907      	cmp	r1, #7
 80035b2:	910b      	str	r1, [sp, #44]	; 0x2c
 80035b4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80035b8:	e9c6 2300 	strd	r2, r3, [r6]
 80035bc:	f300 81bb 	bgt.w	8003936 <_vfprintf_r+0xed6>
 80035c0:	3608      	adds	r6, #8
 80035c2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80035c4:	1c53      	adds	r3, r2, #1
 80035c6:	461d      	mov	r5, r3
 80035c8:	9509      	str	r5, [sp, #36]	; 0x24
 80035ca:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80035cc:	930e      	str	r3, [sp, #56]	; 0x38
 80035ce:	2200      	movs	r2, #0
 80035d0:	2300      	movs	r3, #0
 80035d2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80035d6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80035da:	f106 0b08 	add.w	fp, r6, #8
 80035de:	f7fd fd13 	bl	8001008 <__aeabi_dcmpeq>
 80035e2:	2800      	cmp	r0, #0
 80035e4:	f040 80c2 	bne.w	800376c <_vfprintf_r+0xd0c>
 80035e8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80035ea:	f8c6 9004 	str.w	r9, [r6, #4]
 80035ee:	3701      	adds	r7, #1
 80035f0:	444c      	add	r4, r9
 80035f2:	2d07      	cmp	r5, #7
 80035f4:	6037      	str	r7, [r6, #0]
 80035f6:	942c      	str	r4, [sp, #176]	; 0xb0
 80035f8:	952b      	str	r5, [sp, #172]	; 0xac
 80035fa:	f300 80f9 	bgt.w	80037f0 <_vfprintf_r+0xd90>
 80035fe:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003600:	f106 0310 	add.w	r3, r6, #16
 8003604:	3202      	adds	r2, #2
 8003606:	465e      	mov	r6, fp
 8003608:	9209      	str	r2, [sp, #36]	; 0x24
 800360a:	469b      	mov	fp, r3
 800360c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800360e:	6072      	str	r2, [r6, #4]
 8003610:	4414      	add	r4, r2
 8003612:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003614:	942c      	str	r4, [sp, #176]	; 0xb0
 8003616:	ab26      	add	r3, sp, #152	; 0x98
 8003618:	2a07      	cmp	r2, #7
 800361a:	922b      	str	r2, [sp, #172]	; 0xac
 800361c:	6033      	str	r3, [r6, #0]
 800361e:	f77f ac70 	ble.w	8002f02 <_vfprintf_r+0x4a2>
 8003622:	aa2a      	add	r2, sp, #168	; 0xa8
 8003624:	9907      	ldr	r1, [sp, #28]
 8003626:	9803      	ldr	r0, [sp, #12]
 8003628:	f003 fa86 	bl	8006b38 <__sprint_r>
 800362c:	2800      	cmp	r0, #0
 800362e:	d18f      	bne.n	8003550 <_vfprintf_r+0xaf0>
 8003630:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003632:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003636:	e464      	b.n	8002f02 <_vfprintf_r+0x4a2>
 8003638:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800363a:	af56      	add	r7, sp, #344	; 0x158
 800363c:	0923      	lsrs	r3, r4, #4
 800363e:	f004 010f 	and.w	r1, r4, #15
 8003642:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003646:	092a      	lsrs	r2, r5, #4
 8003648:	461c      	mov	r4, r3
 800364a:	4615      	mov	r5, r2
 800364c:	5c43      	ldrb	r3, [r0, r1]
 800364e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003652:	ea54 0305 	orrs.w	r3, r4, r5
 8003656:	d1f1      	bne.n	800363c <_vfprintf_r+0xbdc>
 8003658:	9b04      	ldr	r3, [sp, #16]
 800365a:	1bdb      	subs	r3, r3, r7
 800365c:	9309      	str	r3, [sp, #36]	; 0x24
 800365e:	f7ff bb80 	b.w	8002d62 <_vfprintf_r+0x302>
 8003662:	46b1      	mov	r9, r6
 8003664:	e776      	b.n	8003554 <_vfprintf_r+0xaf4>
 8003666:	aa2a      	add	r2, sp, #168	; 0xa8
 8003668:	9907      	ldr	r1, [sp, #28]
 800366a:	9803      	ldr	r0, [sp, #12]
 800366c:	f003 fa64 	bl	8006b38 <__sprint_r>
 8003670:	2800      	cmp	r0, #0
 8003672:	f47f af6d 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8003676:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003678:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800367c:	f7ff bbdd 	b.w	8002e3a <_vfprintf_r+0x3da>
 8003680:	aa2a      	add	r2, sp, #168	; 0xa8
 8003682:	9907      	ldr	r1, [sp, #28]
 8003684:	9803      	ldr	r0, [sp, #12]
 8003686:	f003 fa57 	bl	8006b38 <__sprint_r>
 800368a:	2800      	cmp	r0, #0
 800368c:	f47f af60 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8003690:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003692:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003696:	f7ff bbe0 	b.w	8002e5a <_vfprintf_r+0x3fa>
 800369a:	4698      	mov	r8, r3
 800369c:	2d00      	cmp	r5, #0
 800369e:	bf08      	it	eq
 80036a0:	2c0a      	cmpeq	r4, #10
 80036a2:	f080 8170 	bcs.w	8003986 <_vfprintf_r+0xf26>
 80036a6:	af56      	add	r7, sp, #344	; 0x158
 80036a8:	3430      	adds	r4, #48	; 0x30
 80036aa:	2301      	movs	r3, #1
 80036ac:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80036b0:	9309      	str	r3, [sp, #36]	; 0x24
 80036b2:	f7ff bb56 	b.w	8002d62 <_vfprintf_r+0x302>
 80036b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80036b8:	9907      	ldr	r1, [sp, #28]
 80036ba:	9803      	ldr	r0, [sp, #12]
 80036bc:	f003 fa3c 	bl	8006b38 <__sprint_r>
 80036c0:	2800      	cmp	r0, #0
 80036c2:	f47f af45 	bne.w	8003550 <_vfprintf_r+0xaf0>
 80036c6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036cc:	e406      	b.n	8002edc <_vfprintf_r+0x47c>
 80036ce:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036d0:	2b00      	cmp	r3, #0
 80036d2:	f340 8273 	ble.w	8003bbc <_vfprintf_r+0x115c>
 80036d6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80036da:	4293      	cmp	r3, r2
 80036dc:	bfa8      	it	ge
 80036de:	4613      	movge	r3, r2
 80036e0:	2b00      	cmp	r3, #0
 80036e2:	461d      	mov	r5, r3
 80036e4:	dd0d      	ble.n	8003702 <_vfprintf_r+0xca2>
 80036e6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80036e8:	f8cb 7000 	str.w	r7, [fp]
 80036ec:	3301      	adds	r3, #1
 80036ee:	442c      	add	r4, r5
 80036f0:	2b07      	cmp	r3, #7
 80036f2:	942c      	str	r4, [sp, #176]	; 0xb0
 80036f4:	f8cb 5004 	str.w	r5, [fp, #4]
 80036f8:	932b      	str	r3, [sp, #172]	; 0xac
 80036fa:	f300 82c1 	bgt.w	8003c80 <_vfprintf_r+0x1220>
 80036fe:	f10b 0b08 	add.w	fp, fp, #8
 8003702:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003704:	2d00      	cmp	r5, #0
 8003706:	bfa8      	it	ge
 8003708:	1b5b      	subge	r3, r3, r5
 800370a:	2b00      	cmp	r3, #0
 800370c:	461d      	mov	r5, r3
 800370e:	f340 8099 	ble.w	8003844 <_vfprintf_r+0xde4>
 8003712:	2d10      	cmp	r5, #16
 8003714:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003716:	4b2c      	ldr	r3, [pc, #176]	; (80037c8 <_vfprintf_r+0xd68>)
 8003718:	f340 83db 	ble.w	8003ed2 <_vfprintf_r+0x1472>
 800371c:	4618      	mov	r0, r3
 800371e:	4621      	mov	r1, r4
 8003720:	465b      	mov	r3, fp
 8003722:	2610      	movs	r6, #16
 8003724:	46bb      	mov	fp, r7
 8003726:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800372a:	9c07      	ldr	r4, [sp, #28]
 800372c:	4607      	mov	r7, r0
 800372e:	e004      	b.n	800373a <_vfprintf_r+0xcda>
 8003730:	3308      	adds	r3, #8
 8003732:	3d10      	subs	r5, #16
 8003734:	2d10      	cmp	r5, #16
 8003736:	f340 83c7 	ble.w	8003ec8 <_vfprintf_r+0x1468>
 800373a:	3201      	adds	r2, #1
 800373c:	3110      	adds	r1, #16
 800373e:	2a07      	cmp	r2, #7
 8003740:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003744:	e9c3 7600 	strd	r7, r6, [r3]
 8003748:	ddf2      	ble.n	8003730 <_vfprintf_r+0xcd0>
 800374a:	aa2a      	add	r2, sp, #168	; 0xa8
 800374c:	4621      	mov	r1, r4
 800374e:	4648      	mov	r0, r9
 8003750:	f003 f9f2 	bl	8006b38 <__sprint_r>
 8003754:	2800      	cmp	r0, #0
 8003756:	f040 84a5 	bne.w	80040a4 <_vfprintf_r+0x1644>
 800375a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800375e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003760:	e7e7      	b.n	8003732 <_vfprintf_r+0xcd2>
 8003762:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003766:	af56      	add	r7, sp, #344	; 0x158
 8003768:	f7ff bafb 	b.w	8002d62 <_vfprintf_r+0x302>
 800376c:	f1b9 0f00 	cmp.w	r9, #0
 8003770:	f77f af4c 	ble.w	800360c <_vfprintf_r+0xbac>
 8003774:	f1b9 0f10 	cmp.w	r9, #16
 8003778:	4b13      	ldr	r3, [pc, #76]	; (80037c8 <_vfprintf_r+0xd68>)
 800377a:	f340 8659 	ble.w	8004430 <_vfprintf_r+0x19d0>
 800377e:	4619      	mov	r1, r3
 8003780:	4622      	mov	r2, r4
 8003782:	4633      	mov	r3, r6
 8003784:	2710      	movs	r7, #16
 8003786:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800378a:	9c07      	ldr	r4, [sp, #28]
 800378c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800378e:	460e      	mov	r6, r1
 8003790:	e007      	b.n	80037a2 <_vfprintf_r+0xd42>
 8003792:	3308      	adds	r3, #8
 8003794:	f1a9 0910 	sub.w	r9, r9, #16
 8003798:	f1b9 0f10 	cmp.w	r9, #16
 800379c:	f340 8353 	ble.w	8003e46 <_vfprintf_r+0x13e6>
 80037a0:	3501      	adds	r5, #1
 80037a2:	3210      	adds	r2, #16
 80037a4:	2d07      	cmp	r5, #7
 80037a6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80037aa:	e9c3 6700 	strd	r6, r7, [r3]
 80037ae:	ddf0      	ble.n	8003792 <_vfprintf_r+0xd32>
 80037b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80037b2:	4621      	mov	r1, r4
 80037b4:	4658      	mov	r0, fp
 80037b6:	f003 f9bf 	bl	8006b38 <__sprint_r>
 80037ba:	2800      	cmp	r0, #0
 80037bc:	f040 8472 	bne.w	80040a4 <_vfprintf_r+0x1644>
 80037c0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80037c4:	ab2d      	add	r3, sp, #180	; 0xb4
 80037c6:	e7e5      	b.n	8003794 <_vfprintf_r+0xd34>
 80037c8:	08007230 	.word	0x08007230
 80037cc:	f018 0f01 	tst.w	r8, #1
 80037d0:	f47f aee0 	bne.w	8003594 <_vfprintf_r+0xb34>
 80037d4:	2201      	movs	r2, #1
 80037d6:	2d07      	cmp	r5, #7
 80037d8:	f8cb 7000 	str.w	r7, [fp]
 80037dc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80037e0:	f8cb 2004 	str.w	r2, [fp, #4]
 80037e4:	dc04      	bgt.n	80037f0 <_vfprintf_r+0xd90>
 80037e6:	3302      	adds	r3, #2
 80037e8:	9309      	str	r3, [sp, #36]	; 0x24
 80037ea:	f10b 0b10 	add.w	fp, fp, #16
 80037ee:	e70d      	b.n	800360c <_vfprintf_r+0xbac>
 80037f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80037f2:	9907      	ldr	r1, [sp, #28]
 80037f4:	9803      	ldr	r0, [sp, #12]
 80037f6:	f003 f99f 	bl	8006b38 <__sprint_r>
 80037fa:	2800      	cmp	r0, #0
 80037fc:	f47f aea8 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8003800:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003804:	3301      	adds	r3, #1
 8003806:	9309      	str	r3, [sp, #36]	; 0x24
 8003808:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800380c:	ae2d      	add	r6, sp, #180	; 0xb4
 800380e:	e6fd      	b.n	800360c <_vfprintf_r+0xbac>
 8003810:	aa2a      	add	r2, sp, #168	; 0xa8
 8003812:	9907      	ldr	r1, [sp, #28]
 8003814:	9803      	ldr	r0, [sp, #12]
 8003816:	f003 f98f 	bl	8006b38 <__sprint_r>
 800381a:	2800      	cmp	r0, #0
 800381c:	f47f ae98 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8003820:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003824:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003826:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800382a:	f7ff baf6 	b.w	8002e1a <_vfprintf_r+0x3ba>
 800382e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003830:	9907      	ldr	r1, [sp, #28]
 8003832:	9803      	ldr	r0, [sp, #12]
 8003834:	f003 f980 	bl	8006b38 <__sprint_r>
 8003838:	2800      	cmp	r0, #0
 800383a:	f47f ae89 	bne.w	8003550 <_vfprintf_r+0xaf0>
 800383e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003840:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003844:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003846:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800384a:	443b      	add	r3, r7
 800384c:	4699      	mov	r9, r3
 800384e:	f040 8357 	bne.w	8003f00 <_vfprintf_r+0x14a0>
 8003852:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003854:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003856:	4293      	cmp	r3, r2
 8003858:	db49      	blt.n	80038ee <_vfprintf_r+0xe8e>
 800385a:	f018 0f01 	tst.w	r8, #1
 800385e:	d146      	bne.n	80038ee <_vfprintf_r+0xe8e>
 8003860:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003862:	18bd      	adds	r5, r7, r2
 8003864:	eba5 0509 	sub.w	r5, r5, r9
 8003868:	1ad3      	subs	r3, r2, r3
 800386a:	429d      	cmp	r5, r3
 800386c:	bfa8      	it	ge
 800386e:	461d      	movge	r5, r3
 8003870:	2d00      	cmp	r5, #0
 8003872:	dd0d      	ble.n	8003890 <_vfprintf_r+0xe30>
 8003874:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003876:	f8cb 9000 	str.w	r9, [fp]
 800387a:	3201      	adds	r2, #1
 800387c:	442c      	add	r4, r5
 800387e:	2a07      	cmp	r2, #7
 8003880:	942c      	str	r4, [sp, #176]	; 0xb0
 8003882:	f8cb 5004 	str.w	r5, [fp, #4]
 8003886:	922b      	str	r2, [sp, #172]	; 0xac
 8003888:	f300 8462 	bgt.w	8004150 <_vfprintf_r+0x16f0>
 800388c:	f10b 0b08 	add.w	fp, fp, #8
 8003890:	2d00      	cmp	r5, #0
 8003892:	bfac      	ite	ge
 8003894:	1b5d      	subge	r5, r3, r5
 8003896:	461d      	movlt	r5, r3
 8003898:	2d00      	cmp	r5, #0
 800389a:	f77f ab32 	ble.w	8002f02 <_vfprintf_r+0x4a2>
 800389e:	2d10      	cmp	r5, #16
 80038a0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038a2:	4bc5      	ldr	r3, [pc, #788]	; (8003bb8 <_vfprintf_r+0x1158>)
 80038a4:	f340 80c4 	ble.w	8003a30 <_vfprintf_r+0xfd0>
 80038a8:	4619      	mov	r1, r3
 80038aa:	2610      	movs	r6, #16
 80038ac:	4623      	mov	r3, r4
 80038ae:	9f03      	ldr	r7, [sp, #12]
 80038b0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80038b4:	460c      	mov	r4, r1
 80038b6:	e005      	b.n	80038c4 <_vfprintf_r+0xe64>
 80038b8:	f10b 0b08 	add.w	fp, fp, #8
 80038bc:	3d10      	subs	r5, #16
 80038be:	2d10      	cmp	r5, #16
 80038c0:	f340 80b3 	ble.w	8003a2a <_vfprintf_r+0xfca>
 80038c4:	3201      	adds	r2, #1
 80038c6:	3310      	adds	r3, #16
 80038c8:	2a07      	cmp	r2, #7
 80038ca:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80038ce:	e9cb 4600 	strd	r4, r6, [fp]
 80038d2:	ddf1      	ble.n	80038b8 <_vfprintf_r+0xe58>
 80038d4:	aa2a      	add	r2, sp, #168	; 0xa8
 80038d6:	4649      	mov	r1, r9
 80038d8:	4638      	mov	r0, r7
 80038da:	f003 f92d 	bl	8006b38 <__sprint_r>
 80038de:	2800      	cmp	r0, #0
 80038e0:	f47f ae38 	bne.w	8003554 <_vfprintf_r+0xaf4>
 80038e4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80038e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038ec:	e7e6      	b.n	80038bc <_vfprintf_r+0xe5c>
 80038ee:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038f0:	9916      	ldr	r1, [sp, #88]	; 0x58
 80038f2:	f8cb 1000 	str.w	r1, [fp]
 80038f6:	9915      	ldr	r1, [sp, #84]	; 0x54
 80038f8:	f8cb 1004 	str.w	r1, [fp, #4]
 80038fc:	3201      	adds	r2, #1
 80038fe:	440c      	add	r4, r1
 8003900:	2a07      	cmp	r2, #7
 8003902:	942c      	str	r4, [sp, #176]	; 0xb0
 8003904:	922b      	str	r2, [sp, #172]	; 0xac
 8003906:	f300 828c 	bgt.w	8003e22 <_vfprintf_r+0x13c2>
 800390a:	f10b 0b08 	add.w	fp, fp, #8
 800390e:	e7a7      	b.n	8003860 <_vfprintf_r+0xe00>
 8003910:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003914:	f002 fa94 	bl	8005e40 <__retarget_lock_release_recursive>
 8003918:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800391c:	e628      	b.n	8003570 <_vfprintf_r+0xb10>
 800391e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003920:	9907      	ldr	r1, [sp, #28]
 8003922:	9803      	ldr	r0, [sp, #12]
 8003924:	f003 f908 	bl	8006b38 <__sprint_r>
 8003928:	2800      	cmp	r0, #0
 800392a:	f47f ae11 	bne.w	8003550 <_vfprintf_r+0xaf0>
 800392e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003932:	ae2d      	add	r6, sp, #180	; 0xb4
 8003934:	e638      	b.n	80035a8 <_vfprintf_r+0xb48>
 8003936:	aa2a      	add	r2, sp, #168	; 0xa8
 8003938:	9907      	ldr	r1, [sp, #28]
 800393a:	9803      	ldr	r0, [sp, #12]
 800393c:	f003 f8fc 	bl	8006b38 <__sprint_r>
 8003940:	2800      	cmp	r0, #0
 8003942:	f47f ae05 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8003946:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800394a:	ae2d      	add	r6, sp, #180	; 0xb4
 800394c:	930b      	str	r3, [sp, #44]	; 0x2c
 800394e:	e638      	b.n	80035c2 <_vfprintf_r+0xb62>
 8003950:	6814      	ldr	r4, [r2, #0]
 8003952:	9308      	str	r3, [sp, #32]
 8003954:	2500      	movs	r5, #0
 8003956:	f7ff bb95 	b.w	8003084 <_vfprintf_r+0x624>
 800395a:	6814      	ldr	r4, [r2, #0]
 800395c:	9308      	str	r3, [sp, #32]
 800395e:	2500      	movs	r5, #0
 8003960:	f7ff b9ae 	b.w	8002cc0 <_vfprintf_r+0x260>
 8003964:	680c      	ldr	r4, [r1, #0]
 8003966:	9208      	str	r2, [sp, #32]
 8003968:	17e5      	asrs	r5, r4, #31
 800396a:	4620      	mov	r0, r4
 800396c:	4629      	mov	r1, r5
 800396e:	f7ff b9d2 	b.w	8002d16 <_vfprintf_r+0x2b6>
 8003972:	6814      	ldr	r4, [r2, #0]
 8003974:	9108      	str	r1, [sp, #32]
 8003976:	2201      	movs	r2, #1
 8003978:	2500      	movs	r5, #0
 800397a:	f7ff bb32 	b.w	8002fe2 <_vfprintf_r+0x582>
 800397e:	2a01      	cmp	r2, #1
 8003980:	f47f ab3c 	bne.w	8002ffc <_vfprintf_r+0x59c>
 8003984:	e68f      	b.n	80036a6 <_vfprintf_r+0xc46>
 8003986:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800398a:	2200      	movs	r2, #0
 800398c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003990:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003994:	af56      	add	r7, sp, #344	; 0x158
 8003996:	4692      	mov	sl, r2
 8003998:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800399c:	461e      	mov	r6, r3
 800399e:	e00a      	b.n	80039b6 <_vfprintf_r+0xf56>
 80039a0:	2300      	movs	r3, #0
 80039a2:	4620      	mov	r0, r4
 80039a4:	4629      	mov	r1, r5
 80039a6:	220a      	movs	r2, #10
 80039a8:	f7fc fc2a 	bl	8000200 <__aeabi_uldivmod>
 80039ac:	4604      	mov	r4, r0
 80039ae:	460d      	mov	r5, r1
 80039b0:	ea54 0305 	orrs.w	r3, r4, r5
 80039b4:	d029      	beq.n	8003a0a <_vfprintf_r+0xfaa>
 80039b6:	220a      	movs	r2, #10
 80039b8:	2300      	movs	r3, #0
 80039ba:	4620      	mov	r0, r4
 80039bc:	4629      	mov	r1, r5
 80039be:	f7fc fc1f 	bl	8000200 <__aeabi_uldivmod>
 80039c2:	3230      	adds	r2, #48	; 0x30
 80039c4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80039c8:	f10a 0a01 	add.w	sl, sl, #1
 80039cc:	3f01      	subs	r7, #1
 80039ce:	2e00      	cmp	r6, #0
 80039d0:	d0e6      	beq.n	80039a0 <_vfprintf_r+0xf40>
 80039d2:	f898 3000 	ldrb.w	r3, [r8]
 80039d6:	459a      	cmp	sl, r3
 80039d8:	d1e2      	bne.n	80039a0 <_vfprintf_r+0xf40>
 80039da:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80039de:	d0df      	beq.n	80039a0 <_vfprintf_r+0xf40>
 80039e0:	2d00      	cmp	r5, #0
 80039e2:	bf08      	it	eq
 80039e4:	2c0a      	cmpeq	r4, #10
 80039e6:	d3db      	bcc.n	80039a0 <_vfprintf_r+0xf40>
 80039e8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80039ea:	9918      	ldr	r1, [sp, #96]	; 0x60
 80039ec:	1aff      	subs	r7, r7, r3
 80039ee:	461a      	mov	r2, r3
 80039f0:	4638      	mov	r0, r7
 80039f2:	f003 f833 	bl	8006a5c <strncpy>
 80039f6:	f898 3001 	ldrb.w	r3, [r8, #1]
 80039fa:	2b00      	cmp	r3, #0
 80039fc:	f000 8496 	beq.w	800432c <_vfprintf_r+0x18cc>
 8003a00:	f108 0801 	add.w	r8, r8, #1
 8003a04:	f04f 0a00 	mov.w	sl, #0
 8003a08:	e7ca      	b.n	80039a0 <_vfprintf_r+0xf40>
 8003a0a:	9b04      	ldr	r3, [sp, #16]
 8003a0c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003a10:	1bdb      	subs	r3, r3, r7
 8003a12:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003a16:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003a18:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003a1c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003a20:	9309      	str	r3, [sp, #36]	; 0x24
 8003a22:	f7ff b99e 	b.w	8002d62 <_vfprintf_r+0x302>
 8003a26:	46c1      	mov	r9, r8
 8003a28:	e594      	b.n	8003554 <_vfprintf_r+0xaf4>
 8003a2a:	4621      	mov	r1, r4
 8003a2c:	461c      	mov	r4, r3
 8003a2e:	460b      	mov	r3, r1
 8003a30:	3201      	adds	r2, #1
 8003a32:	442c      	add	r4, r5
 8003a34:	2a07      	cmp	r2, #7
 8003a36:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003a3a:	e9cb 3500 	strd	r3, r5, [fp]
 8003a3e:	f77f aa5e 	ble.w	8002efe <_vfprintf_r+0x49e>
 8003a42:	e5ee      	b.n	8003622 <_vfprintf_r+0xbc2>
 8003a44:	f018 0f10 	tst.w	r8, #16
 8003a48:	f040 80f8 	bne.w	8003c3c <_vfprintf_r+0x11dc>
 8003a4c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003a50:	f000 8351 	beq.w	80040f6 <_vfprintf_r+0x1696>
 8003a54:	9a05      	ldr	r2, [sp, #20]
 8003a56:	801a      	strh	r2, [r3, #0]
 8003a58:	4657      	mov	r7, sl
 8003a5a:	f7ff baa7 	b.w	8002fac <_vfprintf_r+0x54c>
 8003a5e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a60:	9907      	ldr	r1, [sp, #28]
 8003a62:	9803      	ldr	r0, [sp, #12]
 8003a64:	f003 f868 	bl	8006b38 <__sprint_r>
 8003a68:	2800      	cmp	r0, #0
 8003a6a:	f47f ad71 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8003a6e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a70:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a74:	f7ff b9f5 	b.w	8002e62 <_vfprintf_r+0x402>
 8003a78:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003a7c:	4602      	mov	r2, r0
 8003a7e:	460b      	mov	r3, r1
 8003a80:	f7fd faf4 	bl	800106c <__aeabi_dcmpun>
 8003a84:	2800      	cmp	r0, #0
 8003a86:	f040 8491 	bne.w	80043ac <_vfprintf_r+0x194c>
 8003a8a:	2e61      	cmp	r6, #97	; 0x61
 8003a8c:	f000 8111 	beq.w	8003cb2 <_vfprintf_r+0x1252>
 8003a90:	2e41      	cmp	r6, #65	; 0x41
 8003a92:	f000 8377 	beq.w	8004184 <_vfprintf_r+0x1724>
 8003a96:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003a9a:	f026 0220 	bic.w	r2, r6, #32
 8003a9e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003aa2:	930e      	str	r3, [sp, #56]	; 0x38
 8003aa4:	9204      	str	r2, [sp, #16]
 8003aa6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003aa8:	f000 842d 	beq.w	8004306 <_vfprintf_r+0x18a6>
 8003aac:	2a47      	cmp	r2, #71	; 0x47
 8003aae:	f000 8424 	beq.w	80042fa <_vfprintf_r+0x189a>
 8003ab2:	2b00      	cmp	r3, #0
 8003ab4:	f2c0 82f9 	blt.w	80040aa <_vfprintf_r+0x164a>
 8003ab8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003abc:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003ac0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003ac4:	2e66      	cmp	r6, #102	; 0x66
 8003ac6:	f000 83eb 	beq.w	80042a0 <_vfprintf_r+0x1840>
 8003aca:	2e46      	cmp	r6, #70	; 0x46
 8003acc:	f000 847e 	beq.w	80043cc <_vfprintf_r+0x196c>
 8003ad0:	9b04      	ldr	r3, [sp, #16]
 8003ad2:	9803      	ldr	r0, [sp, #12]
 8003ad4:	2b45      	cmp	r3, #69	; 0x45
 8003ad6:	bf0c      	ite	eq
 8003ad8:	f109 0501 	addeq.w	r5, r9, #1
 8003adc:	464d      	movne	r5, r9
 8003ade:	aa28      	add	r2, sp, #160	; 0xa0
 8003ae0:	ab25      	add	r3, sp, #148	; 0x94
 8003ae2:	e9cd 3200 	strd	r3, r2, [sp]
 8003ae6:	2102      	movs	r1, #2
 8003ae8:	ab24      	add	r3, sp, #144	; 0x90
 8003aea:	462a      	mov	r2, r5
 8003aec:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003af0:	f000 fe3e 	bl	8004770 <_dtoa_r>
 8003af4:	2e67      	cmp	r6, #103	; 0x67
 8003af6:	4607      	mov	r7, r0
 8003af8:	f040 849c 	bne.w	8004434 <_vfprintf_r+0x19d4>
 8003afc:	f018 0f01 	tst.w	r8, #1
 8003b00:	f040 83f9 	bne.w	80042f6 <_vfprintf_r+0x1896>
 8003b04:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b06:	4640      	mov	r0, r8
 8003b08:	1bdb      	subs	r3, r3, r7
 8003b0a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003b0e:	9310      	str	r3, [sp, #64]	; 0x40
 8003b10:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b12:	9311      	str	r3, [sp, #68]	; 0x44
 8003b14:	9b04      	ldr	r3, [sp, #16]
 8003b16:	2b47      	cmp	r3, #71	; 0x47
 8003b18:	f000 81e7 	beq.w	8003eea <_vfprintf_r+0x148a>
 8003b1c:	9b04      	ldr	r3, [sp, #16]
 8003b1e:	2b46      	cmp	r3, #70	; 0x46
 8003b20:	f000 8300 	beq.w	8004124 <_vfprintf_r+0x16c4>
 8003b24:	9904      	ldr	r1, [sp, #16]
 8003b26:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b28:	b2f2      	uxtb	r2, r6
 8003b2a:	2941      	cmp	r1, #65	; 0x41
 8003b2c:	bf08      	it	eq
 8003b2e:	320f      	addeq	r2, #15
 8003b30:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003b34:	bf06      	itte	eq
 8003b36:	b2d2      	uxtbeq	r2, r2
 8003b38:	2101      	moveq	r1, #1
 8003b3a:	2100      	movne	r1, #0
 8003b3c:	2b00      	cmp	r3, #0
 8003b3e:	9324      	str	r3, [sp, #144]	; 0x90
 8003b40:	bfb8      	it	lt
 8003b42:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003b44:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003b48:	bfba      	itte	lt
 8003b4a:	f1c3 0301 	rsblt	r3, r3, #1
 8003b4e:	222d      	movlt	r2, #45	; 0x2d
 8003b50:	222b      	movge	r2, #43	; 0x2b
 8003b52:	2b09      	cmp	r3, #9
 8003b54:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003b58:	f300 83f9 	bgt.w	800434e <_vfprintf_r+0x18ee>
 8003b5c:	2900      	cmp	r1, #0
 8003b5e:	f040 8487 	bne.w	8004470 <_vfprintf_r+0x1a10>
 8003b62:	2230      	movs	r2, #48	; 0x30
 8003b64:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003b68:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003b6c:	3330      	adds	r3, #48	; 0x30
 8003b6e:	7013      	strb	r3, [r2, #0]
 8003b70:	1c53      	adds	r3, r2, #1
 8003b72:	aa26      	add	r2, sp, #152	; 0x98
 8003b74:	1a9b      	subs	r3, r3, r2
 8003b76:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b78:	9319      	str	r3, [sp, #100]	; 0x64
 8003b7a:	2a01      	cmp	r2, #1
 8003b7c:	4413      	add	r3, r2
 8003b7e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b80:	f340 8442 	ble.w	8004408 <_vfprintf_r+0x19a8>
 8003b84:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b86:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b88:	4413      	add	r3, r2
 8003b8a:	9309      	str	r3, [sp, #36]	; 0x24
 8003b8c:	2300      	movs	r3, #0
 8003b8e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b90:	9314      	str	r3, [sp, #80]	; 0x50
 8003b92:	9311      	str	r3, [sp, #68]	; 0x44
 8003b94:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b96:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003b9a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b9e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003ba2:	9304      	str	r3, [sp, #16]
 8003ba4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003ba6:	2b00      	cmp	r3, #0
 8003ba8:	f040 8275 	bne.w	8004096 <_vfprintf_r+0x1636>
 8003bac:	4699      	mov	r9, r3
 8003bae:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003bb2:	f7ff b8e2 	b.w	8002d7a <_vfprintf_r+0x31a>
 8003bb6:	bf00      	nop
 8003bb8:	08007230 	.word	0x08007230
 8003bbc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003bbe:	49bd      	ldr	r1, [pc, #756]	; (8003eb4 <_vfprintf_r+0x1454>)
 8003bc0:	f8cb 1000 	str.w	r1, [fp]
 8003bc4:	3201      	adds	r2, #1
 8003bc6:	3401      	adds	r4, #1
 8003bc8:	2101      	movs	r1, #1
 8003bca:	2a07      	cmp	r2, #7
 8003bcc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003bd0:	f8cb 1004 	str.w	r1, [fp, #4]
 8003bd4:	dc60      	bgt.n	8003c98 <_vfprintf_r+0x1238>
 8003bd6:	f10b 0b08 	add.w	fp, fp, #8
 8003bda:	b92b      	cbnz	r3, 8003be8 <_vfprintf_r+0x1188>
 8003bdc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003bde:	b91a      	cbnz	r2, 8003be8 <_vfprintf_r+0x1188>
 8003be0:	f018 0f01 	tst.w	r8, #1
 8003be4:	f43f a98d 	beq.w	8002f02 <_vfprintf_r+0x4a2>
 8003be8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003bea:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003bec:	f8cb 1000 	str.w	r1, [fp]
 8003bf0:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003bf2:	f8cb 1004 	str.w	r1, [fp, #4]
 8003bf6:	3201      	adds	r2, #1
 8003bf8:	440c      	add	r4, r1
 8003bfa:	2a07      	cmp	r2, #7
 8003bfc:	942c      	str	r4, [sp, #176]	; 0xb0
 8003bfe:	922b      	str	r2, [sp, #172]	; 0xac
 8003c00:	f300 8282 	bgt.w	8004108 <_vfprintf_r+0x16a8>
 8003c04:	f10b 0b08 	add.w	fp, fp, #8
 8003c08:	2b00      	cmp	r3, #0
 8003c0a:	f2c0 82e7 	blt.w	80041dc <_vfprintf_r+0x177c>
 8003c0e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c10:	3201      	adds	r2, #1
 8003c12:	441c      	add	r4, r3
 8003c14:	2a07      	cmp	r2, #7
 8003c16:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003c1a:	e9cb 7300 	strd	r7, r3, [fp]
 8003c1e:	f77f a96e 	ble.w	8002efe <_vfprintf_r+0x49e>
 8003c22:	e4fe      	b.n	8003622 <_vfprintf_r+0xbc2>
 8003c24:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c26:	9907      	ldr	r1, [sp, #28]
 8003c28:	9803      	ldr	r0, [sp, #12]
 8003c2a:	f002 ff85 	bl	8006b38 <__sprint_r>
 8003c2e:	2800      	cmp	r0, #0
 8003c30:	f47f ac8e 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8003c34:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c38:	f7ff bbf0 	b.w	800341c <_vfprintf_r+0x9bc>
 8003c3c:	9a05      	ldr	r2, [sp, #20]
 8003c3e:	601a      	str	r2, [r3, #0]
 8003c40:	4657      	mov	r7, sl
 8003c42:	f7ff b9b3 	b.w	8002fac <_vfprintf_r+0x54c>
 8003c46:	8814      	ldrh	r4, [r2, #0]
 8003c48:	9108      	str	r1, [sp, #32]
 8003c4a:	2500      	movs	r5, #0
 8003c4c:	2201      	movs	r2, #1
 8003c4e:	f7ff b9c8 	b.w	8002fe2 <_vfprintf_r+0x582>
 8003c52:	8814      	ldrh	r4, [r2, #0]
 8003c54:	9308      	str	r3, [sp, #32]
 8003c56:	2500      	movs	r5, #0
 8003c58:	f7ff ba14 	b.w	8003084 <_vfprintf_r+0x624>
 8003c5c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003c60:	9208      	str	r2, [sp, #32]
 8003c62:	17e5      	asrs	r5, r4, #31
 8003c64:	4620      	mov	r0, r4
 8003c66:	4629      	mov	r1, r5
 8003c68:	f7ff b855 	b.w	8002d16 <_vfprintf_r+0x2b6>
 8003c6c:	8814      	ldrh	r4, [r2, #0]
 8003c6e:	9308      	str	r3, [sp, #32]
 8003c70:	2500      	movs	r5, #0
 8003c72:	f7ff b825 	b.w	8002cc0 <_vfprintf_r+0x260>
 8003c76:	222d      	movs	r2, #45	; 0x2d
 8003c78:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003c7c:	f7ff baa2 	b.w	80031c4 <_vfprintf_r+0x764>
 8003c80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c82:	9907      	ldr	r1, [sp, #28]
 8003c84:	9803      	ldr	r0, [sp, #12]
 8003c86:	f002 ff57 	bl	8006b38 <__sprint_r>
 8003c8a:	2800      	cmp	r0, #0
 8003c8c:	f47f ac60 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8003c90:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c92:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c96:	e534      	b.n	8003702 <_vfprintf_r+0xca2>
 8003c98:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c9a:	9907      	ldr	r1, [sp, #28]
 8003c9c:	9803      	ldr	r0, [sp, #12]
 8003c9e:	f002 ff4b 	bl	8006b38 <__sprint_r>
 8003ca2:	2800      	cmp	r0, #0
 8003ca4:	f47f ac54 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8003ca8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003caa:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003cac:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cb0:	e793      	b.n	8003bda <_vfprintf_r+0x117a>
 8003cb2:	2330      	movs	r3, #48	; 0x30
 8003cb4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003cb8:	2378      	movs	r3, #120	; 0x78
 8003cba:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003cbe:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003cc2:	f048 0402 	orr.w	r4, r8, #2
 8003cc6:	f300 82b0 	bgt.w	800422a <_vfprintf_r+0x17ca>
 8003cca:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003cce:	930e      	str	r3, [sp, #56]	; 0x38
 8003cd0:	f026 0320 	bic.w	r3, r6, #32
 8003cd4:	9304      	str	r3, [sp, #16]
 8003cd6:	2200      	movs	r2, #0
 8003cd8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003cda:	920a      	str	r2, [sp, #40]	; 0x28
 8003cdc:	46a0      	mov	r8, r4
 8003cde:	af3d      	add	r7, sp, #244	; 0xf4
 8003ce0:	2b00      	cmp	r3, #0
 8003ce2:	f2c0 81e3 	blt.w	80040ac <_vfprintf_r+0x164c>
 8003ce6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003cea:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003cee:	2300      	movs	r3, #0
 8003cf0:	930b      	str	r3, [sp, #44]	; 0x2c
 8003cf2:	2e61      	cmp	r6, #97	; 0x61
 8003cf4:	f000 8255 	beq.w	80041a2 <_vfprintf_r+0x1742>
 8003cf8:	2e41      	cmp	r6, #65	; 0x41
 8003cfa:	f47f aee3 	bne.w	8003ac4 <_vfprintf_r+0x1064>
 8003cfe:	a824      	add	r0, sp, #144	; 0x90
 8003d00:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d04:	f002 fe32 	bl	800696c <frexp>
 8003d08:	2200      	movs	r2, #0
 8003d0a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003d0e:	ec51 0b10 	vmov	r0, r1, d0
 8003d12:	f7fc ff11 	bl	8000b38 <__aeabi_dmul>
 8003d16:	2200      	movs	r2, #0
 8003d18:	2300      	movs	r3, #0
 8003d1a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003d1e:	f7fd f973 	bl	8001008 <__aeabi_dcmpeq>
 8003d22:	2800      	cmp	r0, #0
 8003d24:	f040 8305 	bne.w	8004332 <_vfprintf_r+0x18d2>
 8003d28:	4b63      	ldr	r3, [pc, #396]	; (8003eb8 <_vfprintf_r+0x1458>)
 8003d2a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d2c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003d30:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003d34:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003d38:	9721      	str	r7, [sp, #132]	; 0x84
 8003d3a:	46b9      	mov	r9, r7
 8003d3c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003d40:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003d44:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003d48:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003d4c:	e003      	b.n	8003d56 <_vfprintf_r+0x12f6>
 8003d4e:	f7fd f95b 	bl	8001008 <__aeabi_dcmpeq>
 8003d52:	bb20      	cbnz	r0, 8003d9e <_vfprintf_r+0x133e>
 8003d54:	46a9      	mov	r9, r5
 8003d56:	2200      	movs	r2, #0
 8003d58:	4b58      	ldr	r3, [pc, #352]	; (8003ebc <_vfprintf_r+0x145c>)
 8003d5a:	4630      	mov	r0, r6
 8003d5c:	4639      	mov	r1, r7
 8003d5e:	f7fc feeb 	bl	8000b38 <__aeabi_dmul>
 8003d62:	460f      	mov	r7, r1
 8003d64:	4606      	mov	r6, r0
 8003d66:	f7fd f997 	bl	8001098 <__aeabi_d2iz>
 8003d6a:	4680      	mov	r8, r0
 8003d6c:	f7fc fe7a 	bl	8000a64 <__aeabi_i2d>
 8003d70:	4602      	mov	r2, r0
 8003d72:	460b      	mov	r3, r1
 8003d74:	4630      	mov	r0, r6
 8003d76:	4639      	mov	r1, r7
 8003d78:	f7fc fd26 	bl	80007c8 <__aeabi_dsub>
 8003d7c:	464d      	mov	r5, r9
 8003d7e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003d82:	f805 cb01 	strb.w	ip, [r5], #1
 8003d86:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003d8a:	46a3      	mov	fp, r4
 8003d8c:	4606      	mov	r6, r0
 8003d8e:	460f      	mov	r7, r1
 8003d90:	f04f 0200 	mov.w	r2, #0
 8003d94:	f04f 0300 	mov.w	r3, #0
 8003d98:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003d9c:	d1d7      	bne.n	8003d4e <_vfprintf_r+0x12ee>
 8003d9e:	4630      	mov	r0, r6
 8003da0:	4639      	mov	r1, r7
 8003da2:	2200      	movs	r2, #0
 8003da4:	4b46      	ldr	r3, [pc, #280]	; (8003ec0 <_vfprintf_r+0x1460>)
 8003da6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003daa:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003dac:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003db0:	4644      	mov	r4, r8
 8003db2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003db6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003dba:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003dbe:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003dc2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003dc4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003dc8:	f7fd f946 	bl	8001058 <__aeabi_dcmpgt>
 8003dcc:	2800      	cmp	r0, #0
 8003dce:	f040 8176 	bne.w	80040be <_vfprintf_r+0x165e>
 8003dd2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003dd6:	2200      	movs	r2, #0
 8003dd8:	4b39      	ldr	r3, [pc, #228]	; (8003ec0 <_vfprintf_r+0x1460>)
 8003dda:	f7fd f915 	bl	8001008 <__aeabi_dcmpeq>
 8003dde:	b110      	cbz	r0, 8003de6 <_vfprintf_r+0x1386>
 8003de0:	07e2      	lsls	r2, r4, #31
 8003de2:	f100 816c 	bmi.w	80040be <_vfprintf_r+0x165e>
 8003de6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003de8:	2b00      	cmp	r3, #0
 8003dea:	db07      	blt.n	8003dfc <_vfprintf_r+0x139c>
 8003dec:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003dee:	3301      	adds	r3, #1
 8003df0:	442b      	add	r3, r5
 8003df2:	2230      	movs	r2, #48	; 0x30
 8003df4:	f805 2b01 	strb.w	r2, [r5], #1
 8003df8:	42ab      	cmp	r3, r5
 8003dfa:	d1fb      	bne.n	8003df4 <_vfprintf_r+0x1394>
 8003dfc:	1beb      	subs	r3, r5, r7
 8003dfe:	4640      	mov	r0, r8
 8003e00:	9310      	str	r3, [sp, #64]	; 0x40
 8003e02:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003e06:	e683      	b.n	8003b10 <_vfprintf_r+0x10b0>
 8003e08:	f8cd 9010 	str.w	r9, [sp, #16]
 8003e0c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003e10:	9408      	str	r4, [sp, #32]
 8003e12:	4681      	mov	r9, r0
 8003e14:	900f      	str	r0, [sp, #60]	; 0x3c
 8003e16:	9014      	str	r0, [sp, #80]	; 0x50
 8003e18:	9011      	str	r0, [sp, #68]	; 0x44
 8003e1a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003e1e:	f7fe bfac 	b.w	8002d7a <_vfprintf_r+0x31a>
 8003e22:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e24:	9907      	ldr	r1, [sp, #28]
 8003e26:	9803      	ldr	r0, [sp, #12]
 8003e28:	f002 fe86 	bl	8006b38 <__sprint_r>
 8003e2c:	2800      	cmp	r0, #0
 8003e2e:	f47f ab8f 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8003e32:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e34:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e36:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e3a:	e511      	b.n	8003860 <_vfprintf_r+0xe00>
 8003e3c:	4252      	negs	r2, r2
 8003e3e:	9206      	str	r2, [sp, #24]
 8003e40:	9308      	str	r3, [sp, #32]
 8003e42:	f7ff b96d 	b.w	8003120 <_vfprintf_r+0x6c0>
 8003e46:	4614      	mov	r4, r2
 8003e48:	4632      	mov	r2, r6
 8003e4a:	461e      	mov	r6, r3
 8003e4c:	4613      	mov	r3, r2
 8003e4e:	462a      	mov	r2, r5
 8003e50:	3201      	adds	r2, #1
 8003e52:	9209      	str	r2, [sp, #36]	; 0x24
 8003e54:	f106 0208 	add.w	r2, r6, #8
 8003e58:	e9c6 3900 	strd	r3, r9, [r6]
 8003e5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e5e:	932b      	str	r3, [sp, #172]	; 0xac
 8003e60:	444c      	add	r4, r9
 8003e62:	2b07      	cmp	r3, #7
 8003e64:	942c      	str	r4, [sp, #176]	; 0xb0
 8003e66:	f73f acc3 	bgt.w	80037f0 <_vfprintf_r+0xd90>
 8003e6a:	3301      	adds	r3, #1
 8003e6c:	9309      	str	r3, [sp, #36]	; 0x24
 8003e6e:	f102 0b08 	add.w	fp, r2, #8
 8003e72:	4616      	mov	r6, r2
 8003e74:	f7ff bbca 	b.w	800360c <_vfprintf_r+0xbac>
 8003e78:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e7a:	9907      	ldr	r1, [sp, #28]
 8003e7c:	9803      	ldr	r0, [sp, #12]
 8003e7e:	f002 fe5b 	bl	8006b38 <__sprint_r>
 8003e82:	2800      	cmp	r0, #0
 8003e84:	f47f ab64 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8003e88:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e8a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e8e:	f7ff bade 	b.w	800344e <_vfprintf_r+0x9ee>
 8003e92:	464b      	mov	r3, r9
 8003e94:	2b06      	cmp	r3, #6
 8003e96:	bf28      	it	cs
 8003e98:	2306      	movcs	r3, #6
 8003e9a:	46b9      	mov	r9, r7
 8003e9c:	970f      	str	r7, [sp, #60]	; 0x3c
 8003e9e:	9714      	str	r7, [sp, #80]	; 0x50
 8003ea0:	9711      	str	r7, [sp, #68]	; 0x44
 8003ea2:	970a      	str	r7, [sp, #40]	; 0x28
 8003ea4:	463a      	mov	r2, r7
 8003ea6:	9304      	str	r3, [sp, #16]
 8003ea8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003eac:	4f05      	ldr	r7, [pc, #20]	; (8003ec4 <_vfprintf_r+0x1464>)
 8003eae:	f7fe bf64 	b.w	8002d7a <_vfprintf_r+0x31a>
 8003eb2:	bf00      	nop
 8003eb4:	0800721c 	.word	0x0800721c
 8003eb8:	08007200 	.word	0x08007200
 8003ebc:	40300000 	.word	0x40300000
 8003ec0:	3fe00000 	.word	0x3fe00000
 8003ec4:	08007214 	.word	0x08007214
 8003ec8:	460c      	mov	r4, r1
 8003eca:	4639      	mov	r1, r7
 8003ecc:	465f      	mov	r7, fp
 8003ece:	469b      	mov	fp, r3
 8003ed0:	460b      	mov	r3, r1
 8003ed2:	3201      	adds	r2, #1
 8003ed4:	442c      	add	r4, r5
 8003ed6:	2a07      	cmp	r2, #7
 8003ed8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003edc:	e9cb 3500 	strd	r3, r5, [fp]
 8003ee0:	f73f aca5 	bgt.w	800382e <_vfprintf_r+0xdce>
 8003ee4:	f10b 0b08 	add.w	fp, fp, #8
 8003ee8:	e4ac      	b.n	8003844 <_vfprintf_r+0xde4>
 8003eea:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003eec:	1cda      	adds	r2, r3, #3
 8003eee:	db02      	blt.n	8003ef6 <_vfprintf_r+0x1496>
 8003ef0:	4599      	cmp	r9, r3
 8003ef2:	f280 80b5 	bge.w	8004060 <_vfprintf_r+0x1600>
 8003ef6:	3e02      	subs	r6, #2
 8003ef8:	f026 0320 	bic.w	r3, r6, #32
 8003efc:	9304      	str	r3, [sp, #16]
 8003efe:	e611      	b.n	8003b24 <_vfprintf_r+0x10c4>
 8003f00:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f02:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003f06:	465a      	mov	r2, fp
 8003f08:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003f0c:	18fb      	adds	r3, r7, r3
 8003f0e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003f12:	970c      	str	r7, [sp, #48]	; 0x30
 8003f14:	4eaf      	ldr	r6, [pc, #700]	; (80041d4 <_vfprintf_r+0x1774>)
 8003f16:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003f1a:	9309      	str	r3, [sp, #36]	; 0x24
 8003f1c:	464f      	mov	r7, r9
 8003f1e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003f22:	4621      	mov	r1, r4
 8003f24:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f26:	2b00      	cmp	r3, #0
 8003f28:	d05b      	beq.n	8003fe2 <_vfprintf_r+0x1582>
 8003f2a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003f2c:	2b00      	cmp	r3, #0
 8003f2e:	d154      	bne.n	8003fda <_vfprintf_r+0x157a>
 8003f30:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f32:	3b01      	subs	r3, #1
 8003f34:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003f38:	9314      	str	r3, [sp, #80]	; 0x50
 8003f3a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003f3c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003f3e:	6010      	str	r0, [r2, #0]
 8003f40:	3301      	adds	r3, #1
 8003f42:	4459      	add	r1, fp
 8003f44:	2b07      	cmp	r3, #7
 8003f46:	912c      	str	r1, [sp, #176]	; 0xb0
 8003f48:	f8c2 b004 	str.w	fp, [r2, #4]
 8003f4c:	932b      	str	r3, [sp, #172]	; 0xac
 8003f4e:	dc68      	bgt.n	8004022 <_vfprintf_r+0x15c2>
 8003f50:	3208      	adds	r2, #8
 8003f52:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003f54:	f898 3000 	ldrb.w	r3, [r8]
 8003f58:	1bc5      	subs	r5, r0, r7
 8003f5a:	429d      	cmp	r5, r3
 8003f5c:	bfa8      	it	ge
 8003f5e:	461d      	movge	r5, r3
 8003f60:	2d00      	cmp	r5, #0
 8003f62:	dd0b      	ble.n	8003f7c <_vfprintf_r+0x151c>
 8003f64:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003f66:	6017      	str	r7, [r2, #0]
 8003f68:	3301      	adds	r3, #1
 8003f6a:	4429      	add	r1, r5
 8003f6c:	2b07      	cmp	r3, #7
 8003f6e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003f70:	6055      	str	r5, [r2, #4]
 8003f72:	932b      	str	r3, [sp, #172]	; 0xac
 8003f74:	dc5e      	bgt.n	8004034 <_vfprintf_r+0x15d4>
 8003f76:	f898 3000 	ldrb.w	r3, [r8]
 8003f7a:	3208      	adds	r2, #8
 8003f7c:	2d00      	cmp	r5, #0
 8003f7e:	bfac      	ite	ge
 8003f80:	1b5d      	subge	r5, r3, r5
 8003f82:	461d      	movlt	r5, r3
 8003f84:	2d00      	cmp	r5, #0
 8003f86:	dd26      	ble.n	8003fd6 <_vfprintf_r+0x1576>
 8003f88:	2d10      	cmp	r5, #16
 8003f8a:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003f8c:	dd3c      	ble.n	8004008 <_vfprintf_r+0x15a8>
 8003f8e:	2410      	movs	r4, #16
 8003f90:	e003      	b.n	8003f9a <_vfprintf_r+0x153a>
 8003f92:	3208      	adds	r2, #8
 8003f94:	3d10      	subs	r5, #16
 8003f96:	2d10      	cmp	r5, #16
 8003f98:	dd36      	ble.n	8004008 <_vfprintf_r+0x15a8>
 8003f9a:	3001      	adds	r0, #1
 8003f9c:	3110      	adds	r1, #16
 8003f9e:	2807      	cmp	r0, #7
 8003fa0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003fa4:	e9c2 6400 	strd	r6, r4, [r2]
 8003fa8:	ddf3      	ble.n	8003f92 <_vfprintf_r+0x1532>
 8003faa:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fac:	4651      	mov	r1, sl
 8003fae:	4648      	mov	r0, r9
 8003fb0:	f002 fdc2 	bl	8006b38 <__sprint_r>
 8003fb4:	2800      	cmp	r0, #0
 8003fb6:	d150      	bne.n	800405a <_vfprintf_r+0x15fa>
 8003fb8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003fbc:	aa2d      	add	r2, sp, #180	; 0xb4
 8003fbe:	e7e9      	b.n	8003f94 <_vfprintf_r+0x1534>
 8003fc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fc2:	4651      	mov	r1, sl
 8003fc4:	4648      	mov	r0, r9
 8003fc6:	f002 fdb7 	bl	8006b38 <__sprint_r>
 8003fca:	2800      	cmp	r0, #0
 8003fcc:	d145      	bne.n	800405a <_vfprintf_r+0x15fa>
 8003fce:	f898 3000 	ldrb.w	r3, [r8]
 8003fd2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003fd4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003fd6:	441f      	add	r7, r3
 8003fd8:	e7a4      	b.n	8003f24 <_vfprintf_r+0x14c4>
 8003fda:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003fdc:	3b01      	subs	r3, #1
 8003fde:	930f      	str	r3, [sp, #60]	; 0x3c
 8003fe0:	e7ab      	b.n	8003f3a <_vfprintf_r+0x14da>
 8003fe2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003fe4:	2b00      	cmp	r3, #0
 8003fe6:	d1f8      	bne.n	8003fda <_vfprintf_r+0x157a>
 8003fe8:	46b9      	mov	r9, r7
 8003fea:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003fec:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003fee:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003ff2:	18fb      	adds	r3, r7, r3
 8003ff4:	4599      	cmp	r9, r3
 8003ff6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003ffa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ffe:	4693      	mov	fp, r2
 8004000:	460c      	mov	r4, r1
 8004002:	bf28      	it	cs
 8004004:	4699      	movcs	r9, r3
 8004006:	e424      	b.n	8003852 <_vfprintf_r+0xdf2>
 8004008:	3001      	adds	r0, #1
 800400a:	4429      	add	r1, r5
 800400c:	2807      	cmp	r0, #7
 800400e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8004012:	e9c2 6500 	strd	r6, r5, [r2]
 8004016:	dcd3      	bgt.n	8003fc0 <_vfprintf_r+0x1560>
 8004018:	f898 3000 	ldrb.w	r3, [r8]
 800401c:	3208      	adds	r2, #8
 800401e:	441f      	add	r7, r3
 8004020:	e780      	b.n	8003f24 <_vfprintf_r+0x14c4>
 8004022:	aa2a      	add	r2, sp, #168	; 0xa8
 8004024:	4651      	mov	r1, sl
 8004026:	4648      	mov	r0, r9
 8004028:	f002 fd86 	bl	8006b38 <__sprint_r>
 800402c:	b9a8      	cbnz	r0, 800405a <_vfprintf_r+0x15fa>
 800402e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004030:	aa2d      	add	r2, sp, #180	; 0xb4
 8004032:	e78e      	b.n	8003f52 <_vfprintf_r+0x14f2>
 8004034:	aa2a      	add	r2, sp, #168	; 0xa8
 8004036:	4651      	mov	r1, sl
 8004038:	4648      	mov	r0, r9
 800403a:	f002 fd7d 	bl	8006b38 <__sprint_r>
 800403e:	b960      	cbnz	r0, 800405a <_vfprintf_r+0x15fa>
 8004040:	f898 3000 	ldrb.w	r3, [r8]
 8004044:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004046:	aa2d      	add	r2, sp, #180	; 0xb4
 8004048:	e798      	b.n	8003f7c <_vfprintf_r+0x151c>
 800404a:	4638      	mov	r0, r7
 800404c:	f7fc faf8 	bl	8000640 <strlen>
 8004050:	46a9      	mov	r9, r5
 8004052:	4603      	mov	r3, r0
 8004054:	9009      	str	r0, [sp, #36]	; 0x24
 8004056:	f7ff b8f4 	b.w	8003242 <_vfprintf_r+0x7e2>
 800405a:	46d1      	mov	r9, sl
 800405c:	f7ff ba7a 	b.w	8003554 <_vfprintf_r+0xaf4>
 8004060:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004062:	4619      	mov	r1, r3
 8004064:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004066:	4299      	cmp	r1, r3
 8004068:	f300 8082 	bgt.w	8004170 <_vfprintf_r+0x1710>
 800406c:	07c4      	lsls	r4, r0, #31
 800406e:	f140 816b 	bpl.w	8004348 <_vfprintf_r+0x18e8>
 8004072:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004074:	4413      	add	r3, r2
 8004076:	9309      	str	r3, [sp, #36]	; 0x24
 8004078:	0541      	lsls	r1, r0, #21
 800407a:	d503      	bpl.n	8004084 <_vfprintf_r+0x1624>
 800407c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800407e:	2b00      	cmp	r3, #0
 8004080:	f300 80e6 	bgt.w	8004250 <_vfprintf_r+0x17f0>
 8004084:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004086:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800408a:	9304      	str	r3, [sp, #16]
 800408c:	2667      	movs	r6, #103	; 0x67
 800408e:	2300      	movs	r3, #0
 8004090:	930f      	str	r3, [sp, #60]	; 0x3c
 8004092:	9314      	str	r3, [sp, #80]	; 0x50
 8004094:	e586      	b.n	8003ba4 <_vfprintf_r+0x1144>
 8004096:	222d      	movs	r2, #45	; 0x2d
 8004098:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800409c:	f04f 0900 	mov.w	r9, #0
 80040a0:	f7fe be6c 	b.w	8002d7c <_vfprintf_r+0x31c>
 80040a4:	46a1      	mov	r9, r4
 80040a6:	f7ff ba55 	b.w	8003554 <_vfprintf_r+0xaf4>
 80040aa:	900a      	str	r0, [sp, #40]	; 0x28
 80040ac:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 80040b0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 80040b4:	931f      	str	r3, [sp, #124]	; 0x7c
 80040b6:	232d      	movs	r3, #45	; 0x2d
 80040b8:	911e      	str	r1, [sp, #120]	; 0x78
 80040ba:	930b      	str	r3, [sp, #44]	; 0x2c
 80040bc:	e619      	b.n	8003cf2 <_vfprintf_r+0x1292>
 80040be:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80040c0:	9328      	str	r3, [sp, #160]	; 0xa0
 80040c2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80040c4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 80040c8:	7bd9      	ldrb	r1, [r3, #15]
 80040ca:	4291      	cmp	r1, r2
 80040cc:	462b      	mov	r3, r5
 80040ce:	d109      	bne.n	80040e4 <_vfprintf_r+0x1684>
 80040d0:	2030      	movs	r0, #48	; 0x30
 80040d2:	f803 0c01 	strb.w	r0, [r3, #-1]
 80040d6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80040d8:	1e5a      	subs	r2, r3, #1
 80040da:	9228      	str	r2, [sp, #160]	; 0xa0
 80040dc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80040e0:	4291      	cmp	r1, r2
 80040e2:	d0f6      	beq.n	80040d2 <_vfprintf_r+0x1672>
 80040e4:	2a39      	cmp	r2, #57	; 0x39
 80040e6:	bf0b      	itete	eq
 80040e8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80040ea:	3201      	addne	r2, #1
 80040ec:	7a92      	ldrbeq	r2, [r2, #10]
 80040ee:	b2d2      	uxtbne	r2, r2
 80040f0:	f803 2c01 	strb.w	r2, [r3, #-1]
 80040f4:	e682      	b.n	8003dfc <_vfprintf_r+0x139c>
 80040f6:	f418 7f00 	tst.w	r8, #512	; 0x200
 80040fa:	f43f ad9f 	beq.w	8003c3c <_vfprintf_r+0x11dc>
 80040fe:	9a05      	ldr	r2, [sp, #20]
 8004100:	701a      	strb	r2, [r3, #0]
 8004102:	4657      	mov	r7, sl
 8004104:	f7fe bf52 	b.w	8002fac <_vfprintf_r+0x54c>
 8004108:	aa2a      	add	r2, sp, #168	; 0xa8
 800410a:	9907      	ldr	r1, [sp, #28]
 800410c:	9803      	ldr	r0, [sp, #12]
 800410e:	f002 fd13 	bl	8006b38 <__sprint_r>
 8004112:	2800      	cmp	r0, #0
 8004114:	f47f aa1c 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8004118:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800411a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800411e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004122:	e571      	b.n	8003c08 <_vfprintf_r+0x11a8>
 8004124:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004126:	2b00      	cmp	r3, #0
 8004128:	f340 8164 	ble.w	80043f4 <_vfprintf_r+0x1994>
 800412c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800412e:	f1b9 0f00 	cmp.w	r9, #0
 8004132:	f040 8103 	bne.w	800433c <_vfprintf_r+0x18dc>
 8004136:	07c6      	lsls	r6, r0, #31
 8004138:	f100 8100 	bmi.w	800433c <_vfprintf_r+0x18dc>
 800413c:	9309      	str	r3, [sp, #36]	; 0x24
 800413e:	2666      	movs	r6, #102	; 0x66
 8004140:	0543      	lsls	r3, r0, #21
 8004142:	f100 8086 	bmi.w	8004252 <_vfprintf_r+0x17f2>
 8004146:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004148:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800414c:	9304      	str	r3, [sp, #16]
 800414e:	e79e      	b.n	800408e <_vfprintf_r+0x162e>
 8004150:	aa2a      	add	r2, sp, #168	; 0xa8
 8004152:	9907      	ldr	r1, [sp, #28]
 8004154:	9803      	ldr	r0, [sp, #12]
 8004156:	f002 fcef 	bl	8006b38 <__sprint_r>
 800415a:	2800      	cmp	r0, #0
 800415c:	f47f a9f8 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8004160:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004162:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004164:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004166:	1ad3      	subs	r3, r2, r3
 8004168:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800416c:	f7ff bb90 	b.w	8003890 <_vfprintf_r+0xe30>
 8004170:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004172:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004174:	4413      	add	r3, r2
 8004176:	9309      	str	r3, [sp, #36]	; 0x24
 8004178:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800417a:	2b00      	cmp	r3, #0
 800417c:	f340 8149 	ble.w	8004412 <_vfprintf_r+0x19b2>
 8004180:	2667      	movs	r6, #103	; 0x67
 8004182:	e7dd      	b.n	8004140 <_vfprintf_r+0x16e0>
 8004184:	2330      	movs	r3, #48	; 0x30
 8004186:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 800418a:	2358      	movs	r3, #88	; 0x58
 800418c:	e595      	b.n	8003cba <_vfprintf_r+0x125a>
 800418e:	9803      	ldr	r0, [sp, #12]
 8004190:	aa2a      	add	r2, sp, #168	; 0xa8
 8004192:	4649      	mov	r1, r9
 8004194:	f002 fcd0 	bl	8006b38 <__sprint_r>
 8004198:	2800      	cmp	r0, #0
 800419a:	f47f a9e0 	bne.w	800355e <_vfprintf_r+0xafe>
 800419e:	f7fe bf0f 	b.w	8002fc0 <_vfprintf_r+0x560>
 80041a2:	a824      	add	r0, sp, #144	; 0x90
 80041a4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80041a8:	f002 fbe0 	bl	800696c <frexp>
 80041ac:	2200      	movs	r2, #0
 80041ae:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80041b2:	ec51 0b10 	vmov	r0, r1, d0
 80041b6:	f7fc fcbf 	bl	8000b38 <__aeabi_dmul>
 80041ba:	2200      	movs	r2, #0
 80041bc:	2300      	movs	r3, #0
 80041be:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80041c2:	f7fc ff21 	bl	8001008 <__aeabi_dcmpeq>
 80041c6:	b108      	cbz	r0, 80041cc <_vfprintf_r+0x176c>
 80041c8:	2301      	movs	r3, #1
 80041ca:	9324      	str	r3, [sp, #144]	; 0x90
 80041cc:	4b02      	ldr	r3, [pc, #8]	; (80041d8 <_vfprintf_r+0x1778>)
 80041ce:	9309      	str	r3, [sp, #36]	; 0x24
 80041d0:	e5ac      	b.n	8003d2c <_vfprintf_r+0x12cc>
 80041d2:	bf00      	nop
 80041d4:	08007230 	.word	0x08007230
 80041d8:	080071ec 	.word	0x080071ec
 80041dc:	425d      	negs	r5, r3
 80041de:	3310      	adds	r3, #16
 80041e0:	4bb9      	ldr	r3, [pc, #740]	; (80044c8 <_vfprintf_r+0x1a68>)
 80041e2:	f280 8097 	bge.w	8004314 <_vfprintf_r+0x18b4>
 80041e6:	4619      	mov	r1, r3
 80041e8:	2610      	movs	r6, #16
 80041ea:	4623      	mov	r3, r4
 80041ec:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80041f0:	460c      	mov	r4, r1
 80041f2:	e005      	b.n	8004200 <_vfprintf_r+0x17a0>
 80041f4:	f10b 0b08 	add.w	fp, fp, #8
 80041f8:	3d10      	subs	r5, #16
 80041fa:	2d10      	cmp	r5, #16
 80041fc:	f340 8087 	ble.w	800430e <_vfprintf_r+0x18ae>
 8004200:	3201      	adds	r2, #1
 8004202:	3310      	adds	r3, #16
 8004204:	2a07      	cmp	r2, #7
 8004206:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800420a:	e9cb 4600 	strd	r4, r6, [fp]
 800420e:	ddf1      	ble.n	80041f4 <_vfprintf_r+0x1794>
 8004210:	aa2a      	add	r2, sp, #168	; 0xa8
 8004212:	9907      	ldr	r1, [sp, #28]
 8004214:	4648      	mov	r0, r9
 8004216:	f002 fc8f 	bl	8006b38 <__sprint_r>
 800421a:	2800      	cmp	r0, #0
 800421c:	f47f a998 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8004220:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004224:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004228:	e7e6      	b.n	80041f8 <_vfprintf_r+0x1798>
 800422a:	f109 0101 	add.w	r1, r9, #1
 800422e:	9803      	ldr	r0, [sp, #12]
 8004230:	f7fe f89e 	bl	8002370 <_malloc_r>
 8004234:	4607      	mov	r7, r0
 8004236:	2800      	cmp	r0, #0
 8004238:	f000 813b 	beq.w	80044b2 <_vfprintf_r+0x1a52>
 800423c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004240:	930e      	str	r3, [sp, #56]	; 0x38
 8004242:	f026 0320 	bic.w	r3, r6, #32
 8004246:	9304      	str	r3, [sp, #16]
 8004248:	46a0      	mov	r8, r4
 800424a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800424c:	900a      	str	r0, [sp, #40]	; 0x28
 800424e:	e547      	b.n	8003ce0 <_vfprintf_r+0x1280>
 8004250:	2667      	movs	r6, #103	; 0x67
 8004252:	981a      	ldr	r0, [sp, #104]	; 0x68
 8004254:	2200      	movs	r2, #0
 8004256:	920f      	str	r2, [sp, #60]	; 0x3c
 8004258:	9214      	str	r2, [sp, #80]	; 0x50
 800425a:	7803      	ldrb	r3, [r0, #0]
 800425c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 800425e:	2bff      	cmp	r3, #255	; 0xff
 8004260:	d00c      	beq.n	800427c <_vfprintf_r+0x181c>
 8004262:	4293      	cmp	r3, r2
 8004264:	da0a      	bge.n	800427c <_vfprintf_r+0x181c>
 8004266:	7841      	ldrb	r1, [r0, #1]
 8004268:	1ad2      	subs	r2, r2, r3
 800426a:	b1a9      	cbz	r1, 8004298 <_vfprintf_r+0x1838>
 800426c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800426e:	3301      	adds	r3, #1
 8004270:	9314      	str	r3, [sp, #80]	; 0x50
 8004272:	460b      	mov	r3, r1
 8004274:	2bff      	cmp	r3, #255	; 0xff
 8004276:	f100 0001 	add.w	r0, r0, #1
 800427a:	d1f2      	bne.n	8004262 <_vfprintf_r+0x1802>
 800427c:	9211      	str	r2, [sp, #68]	; 0x44
 800427e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004280:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004282:	9909      	ldr	r1, [sp, #36]	; 0x24
 8004284:	901a      	str	r0, [sp, #104]	; 0x68
 8004286:	4413      	add	r3, r2
 8004288:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 800428a:	fb02 1303 	mla	r3, r2, r3, r1
 800428e:	9309      	str	r3, [sp, #36]	; 0x24
 8004290:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004294:	9304      	str	r3, [sp, #16]
 8004296:	e485      	b.n	8003ba4 <_vfprintf_r+0x1144>
 8004298:	990f      	ldr	r1, [sp, #60]	; 0x3c
 800429a:	3101      	adds	r1, #1
 800429c:	910f      	str	r1, [sp, #60]	; 0x3c
 800429e:	e7de      	b.n	800425e <_vfprintf_r+0x17fe>
 80042a0:	aa28      	add	r2, sp, #160	; 0xa0
 80042a2:	ab25      	add	r3, sp, #148	; 0x94
 80042a4:	e9cd 3200 	strd	r3, r2, [sp]
 80042a8:	2103      	movs	r1, #3
 80042aa:	ab24      	add	r3, sp, #144	; 0x90
 80042ac:	464a      	mov	r2, r9
 80042ae:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80042b2:	9803      	ldr	r0, [sp, #12]
 80042b4:	f000 fa5c 	bl	8004770 <_dtoa_r>
 80042b8:	464d      	mov	r5, r9
 80042ba:	4607      	mov	r7, r0
 80042bc:	eb00 0409 	add.w	r4, r0, r9
 80042c0:	783b      	ldrb	r3, [r7, #0]
 80042c2:	2b30      	cmp	r3, #48	; 0x30
 80042c4:	f000 80be 	beq.w	8004444 <_vfprintf_r+0x19e4>
 80042c8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 80042ca:	442c      	add	r4, r5
 80042cc:	2200      	movs	r2, #0
 80042ce:	2300      	movs	r3, #0
 80042d0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80042d4:	f7fc fe98 	bl	8001008 <__aeabi_dcmpeq>
 80042d8:	b108      	cbz	r0, 80042de <_vfprintf_r+0x187e>
 80042da:	4623      	mov	r3, r4
 80042dc:	e413      	b.n	8003b06 <_vfprintf_r+0x10a6>
 80042de:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80042e0:	42a3      	cmp	r3, r4
 80042e2:	f4bf ac10 	bcs.w	8003b06 <_vfprintf_r+0x10a6>
 80042e6:	2130      	movs	r1, #48	; 0x30
 80042e8:	1c5a      	adds	r2, r3, #1
 80042ea:	9228      	str	r2, [sp, #160]	; 0xa0
 80042ec:	7019      	strb	r1, [r3, #0]
 80042ee:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80042f0:	429c      	cmp	r4, r3
 80042f2:	d8f9      	bhi.n	80042e8 <_vfprintf_r+0x1888>
 80042f4:	e407      	b.n	8003b06 <_vfprintf_r+0x10a6>
 80042f6:	197c      	adds	r4, r7, r5
 80042f8:	e7e8      	b.n	80042cc <_vfprintf_r+0x186c>
 80042fa:	f1b9 0f00 	cmp.w	r9, #0
 80042fe:	f000 8092 	beq.w	8004426 <_vfprintf_r+0x19c6>
 8004302:	900a      	str	r0, [sp, #40]	; 0x28
 8004304:	e4ec      	b.n	8003ce0 <_vfprintf_r+0x1280>
 8004306:	900a      	str	r0, [sp, #40]	; 0x28
 8004308:	f04f 0906 	mov.w	r9, #6
 800430c:	e4e8      	b.n	8003ce0 <_vfprintf_r+0x1280>
 800430e:	4621      	mov	r1, r4
 8004310:	461c      	mov	r4, r3
 8004312:	460b      	mov	r3, r1
 8004314:	3201      	adds	r2, #1
 8004316:	442c      	add	r4, r5
 8004318:	2a07      	cmp	r2, #7
 800431a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800431e:	e9cb 3500 	strd	r3, r5, [fp]
 8004322:	f300 80a9 	bgt.w	8004478 <_vfprintf_r+0x1a18>
 8004326:	f10b 0b08 	add.w	fp, fp, #8
 800432a:	e470      	b.n	8003c0e <_vfprintf_r+0x11ae>
 800432c:	469a      	mov	sl, r3
 800432e:	f7ff bb37 	b.w	80039a0 <_vfprintf_r+0xf40>
 8004332:	2301      	movs	r3, #1
 8004334:	9324      	str	r3, [sp, #144]	; 0x90
 8004336:	4b65      	ldr	r3, [pc, #404]	; (80044cc <_vfprintf_r+0x1a6c>)
 8004338:	9309      	str	r3, [sp, #36]	; 0x24
 800433a:	e4f7      	b.n	8003d2c <_vfprintf_r+0x12cc>
 800433c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800433e:	4413      	add	r3, r2
 8004340:	444b      	add	r3, r9
 8004342:	9309      	str	r3, [sp, #36]	; 0x24
 8004344:	2666      	movs	r6, #102	; 0x66
 8004346:	e6fb      	b.n	8004140 <_vfprintf_r+0x16e0>
 8004348:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800434a:	9309      	str	r3, [sp, #36]	; 0x24
 800434c:	e694      	b.n	8004078 <_vfprintf_r+0x1618>
 800434e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8004352:	4664      	mov	r4, ip
 8004354:	4d5e      	ldr	r5, [pc, #376]	; (80044d0 <_vfprintf_r+0x1a70>)
 8004356:	e000      	b.n	800435a <_vfprintf_r+0x18fa>
 8004358:	4614      	mov	r4, r2
 800435a:	fba5 1203 	umull	r1, r2, r5, r3
 800435e:	08d2      	lsrs	r2, r2, #3
 8004360:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8004364:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004368:	f103 0130 	add.w	r1, r3, #48	; 0x30
 800436c:	4613      	mov	r3, r2
 800436e:	2b09      	cmp	r3, #9
 8004370:	f804 1c01 	strb.w	r1, [r4, #-1]
 8004374:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004378:	dcee      	bgt.n	8004358 <_vfprintf_r+0x18f8>
 800437a:	3330      	adds	r3, #48	; 0x30
 800437c:	3c02      	subs	r4, #2
 800437e:	b2db      	uxtb	r3, r3
 8004380:	45a4      	cmp	ip, r4
 8004382:	f802 3c01 	strb.w	r3, [r2, #-1]
 8004386:	f240 8090 	bls.w	80044aa <_vfprintf_r+0x1a4a>
 800438a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 800438e:	4611      	mov	r1, r2
 8004390:	e001      	b.n	8004396 <_vfprintf_r+0x1936>
 8004392:	f811 3b01 	ldrb.w	r3, [r1], #1
 8004396:	f804 3b01 	strb.w	r3, [r4], #1
 800439a:	458c      	cmp	ip, r1
 800439c:	d1f9      	bne.n	8004392 <_vfprintf_r+0x1932>
 800439e:	ab2a      	add	r3, sp, #168	; 0xa8
 80043a0:	1a9b      	subs	r3, r3, r2
 80043a2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80043a6:	4413      	add	r3, r2
 80043a8:	f7ff bbe3 	b.w	8003b72 <_vfprintf_r+0x1112>
 80043ac:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80043ae:	4f49      	ldr	r7, [pc, #292]	; (80044d4 <_vfprintf_r+0x1a74>)
 80043b0:	2b00      	cmp	r3, #0
 80043b2:	bfb6      	itet	lt
 80043b4:	222d      	movlt	r2, #45	; 0x2d
 80043b6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 80043ba:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 80043be:	4b46      	ldr	r3, [pc, #280]	; (80044d8 <_vfprintf_r+0x1a78>)
 80043c0:	f7fe bf02 	b.w	80031c8 <_vfprintf_r+0x768>
 80043c4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80043c8:	f7ff b8c9 	b.w	800355e <_vfprintf_r+0xafe>
 80043cc:	aa28      	add	r2, sp, #160	; 0xa0
 80043ce:	ab25      	add	r3, sp, #148	; 0x94
 80043d0:	e9cd 3200 	strd	r3, r2, [sp]
 80043d4:	2103      	movs	r1, #3
 80043d6:	ab24      	add	r3, sp, #144	; 0x90
 80043d8:	464a      	mov	r2, r9
 80043da:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80043de:	9803      	ldr	r0, [sp, #12]
 80043e0:	f000 f9c6 	bl	8004770 <_dtoa_r>
 80043e4:	464d      	mov	r5, r9
 80043e6:	4607      	mov	r7, r0
 80043e8:	2e46      	cmp	r6, #70	; 0x46
 80043ea:	eb07 0405 	add.w	r4, r7, r5
 80043ee:	f43f af67 	beq.w	80042c0 <_vfprintf_r+0x1860>
 80043f2:	e76b      	b.n	80042cc <_vfprintf_r+0x186c>
 80043f4:	f1b9 0f00 	cmp.w	r9, #0
 80043f8:	d131      	bne.n	800445e <_vfprintf_r+0x19fe>
 80043fa:	07c5      	lsls	r5, r0, #31
 80043fc:	d42f      	bmi.n	800445e <_vfprintf_r+0x19fe>
 80043fe:	2301      	movs	r3, #1
 8004400:	9304      	str	r3, [sp, #16]
 8004402:	9309      	str	r3, [sp, #36]	; 0x24
 8004404:	2666      	movs	r6, #102	; 0x66
 8004406:	e642      	b.n	800408e <_vfprintf_r+0x162e>
 8004408:	07c3      	lsls	r3, r0, #31
 800440a:	f57f abbf 	bpl.w	8003b8c <_vfprintf_r+0x112c>
 800440e:	f7ff bbb9 	b.w	8003b84 <_vfprintf_r+0x1124>
 8004412:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004414:	f1c3 0301 	rsb	r3, r3, #1
 8004418:	441a      	add	r2, r3
 800441a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800441e:	9209      	str	r2, [sp, #36]	; 0x24
 8004420:	9304      	str	r3, [sp, #16]
 8004422:	2667      	movs	r6, #103	; 0x67
 8004424:	e633      	b.n	800408e <_vfprintf_r+0x162e>
 8004426:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800442a:	f04f 0901 	mov.w	r9, #1
 800442e:	e457      	b.n	8003ce0 <_vfprintf_r+0x1280>
 8004430:	465a      	mov	r2, fp
 8004432:	e511      	b.n	8003e58 <_vfprintf_r+0x13f8>
 8004434:	2e47      	cmp	r6, #71	; 0x47
 8004436:	f47f af5e 	bne.w	80042f6 <_vfprintf_r+0x1896>
 800443a:	f018 0f01 	tst.w	r8, #1
 800443e:	f43f ab61 	beq.w	8003b04 <_vfprintf_r+0x10a4>
 8004442:	e7d1      	b.n	80043e8 <_vfprintf_r+0x1988>
 8004444:	2200      	movs	r2, #0
 8004446:	2300      	movs	r3, #0
 8004448:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800444c:	f7fc fddc 	bl	8001008 <__aeabi_dcmpeq>
 8004450:	2800      	cmp	r0, #0
 8004452:	f47f af39 	bne.w	80042c8 <_vfprintf_r+0x1868>
 8004456:	f1c5 0501 	rsb	r5, r5, #1
 800445a:	9524      	str	r5, [sp, #144]	; 0x90
 800445c:	e735      	b.n	80042ca <_vfprintf_r+0x186a>
 800445e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004460:	3301      	adds	r3, #1
 8004462:	444b      	add	r3, r9
 8004464:	9309      	str	r3, [sp, #36]	; 0x24
 8004466:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800446a:	9304      	str	r3, [sp, #16]
 800446c:	2666      	movs	r6, #102	; 0x66
 800446e:	e60e      	b.n	800408e <_vfprintf_r+0x162e>
 8004470:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004474:	f7ff bb7a 	b.w	8003b6c <_vfprintf_r+0x110c>
 8004478:	aa2a      	add	r2, sp, #168	; 0xa8
 800447a:	9907      	ldr	r1, [sp, #28]
 800447c:	9803      	ldr	r0, [sp, #12]
 800447e:	f002 fb5b 	bl	8006b38 <__sprint_r>
 8004482:	2800      	cmp	r0, #0
 8004484:	f47f a864 	bne.w	8003550 <_vfprintf_r+0xaf0>
 8004488:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800448c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004490:	f7ff bbbd 	b.w	8003c0e <_vfprintf_r+0x11ae>
 8004494:	9908      	ldr	r1, [sp, #32]
 8004496:	f89a 6001 	ldrb.w	r6, [sl, #1]
 800449a:	680b      	ldr	r3, [r1, #0]
 800449c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80044a0:	1d0b      	adds	r3, r1, #4
 80044a2:	4692      	mov	sl, r2
 80044a4:	9308      	str	r3, [sp, #32]
 80044a6:	f7fe bb59 	b.w	8002b5c <_vfprintf_r+0xfc>
 80044aa:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80044ae:	f7ff bb60 	b.w	8003b72 <_vfprintf_r+0x1112>
 80044b2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80044b6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80044ba:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80044be:	f8a9 300c 	strh.w	r3, [r9, #12]
 80044c2:	f7ff b84c 	b.w	800355e <_vfprintf_r+0xafe>
 80044c6:	bf00      	nop
 80044c8:	08007230 	.word	0x08007230
 80044cc:	08007200 	.word	0x08007200
 80044d0:	cccccccd 	.word	0xcccccccd
 80044d4:	080071e8 	.word	0x080071e8
 80044d8:	080071e4 	.word	0x080071e4

080044dc <__sbprintf>:
 80044dc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80044e0:	460c      	mov	r4, r1
 80044e2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80044e6:	8989      	ldrh	r1, [r1, #12]
 80044e8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80044ea:	89e5      	ldrh	r5, [r4, #14]
 80044ec:	9619      	str	r6, [sp, #100]	; 0x64
 80044ee:	f021 0102 	bic.w	r1, r1, #2
 80044f2:	4606      	mov	r6, r0
 80044f4:	69e0      	ldr	r0, [r4, #28]
 80044f6:	f8ad 100c 	strh.w	r1, [sp, #12]
 80044fa:	4617      	mov	r7, r2
 80044fc:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004500:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8004502:	f8ad 500e 	strh.w	r5, [sp, #14]
 8004506:	4698      	mov	r8, r3
 8004508:	ad1a      	add	r5, sp, #104	; 0x68
 800450a:	2300      	movs	r3, #0
 800450c:	9007      	str	r0, [sp, #28]
 800450e:	a816      	add	r0, sp, #88	; 0x58
 8004510:	9209      	str	r2, [sp, #36]	; 0x24
 8004512:	9306      	str	r3, [sp, #24]
 8004514:	9500      	str	r5, [sp, #0]
 8004516:	9504      	str	r5, [sp, #16]
 8004518:	9102      	str	r1, [sp, #8]
 800451a:	9105      	str	r1, [sp, #20]
 800451c:	f001 fc8a 	bl	8005e34 <__retarget_lock_init_recursive>
 8004520:	4643      	mov	r3, r8
 8004522:	463a      	mov	r2, r7
 8004524:	4669      	mov	r1, sp
 8004526:	4630      	mov	r0, r6
 8004528:	f7fe fa9a 	bl	8002a60 <_vfprintf_r>
 800452c:	1e05      	subs	r5, r0, #0
 800452e:	db07      	blt.n	8004540 <__sbprintf+0x64>
 8004530:	4630      	mov	r0, r6
 8004532:	4669      	mov	r1, sp
 8004534:	f001 f8d6 	bl	80056e4 <_fflush_r>
 8004538:	2800      	cmp	r0, #0
 800453a:	bf18      	it	ne
 800453c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004540:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004544:	065b      	lsls	r3, r3, #25
 8004546:	d503      	bpl.n	8004550 <__sbprintf+0x74>
 8004548:	89a3      	ldrh	r3, [r4, #12]
 800454a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800454e:	81a3      	strh	r3, [r4, #12]
 8004550:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004552:	f001 fc71 	bl	8005e38 <__retarget_lock_close_recursive>
 8004556:	4628      	mov	r0, r5
 8004558:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800455c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004560 <__swsetup_r>:
 8004560:	b538      	push	{r3, r4, r5, lr}
 8004562:	4b31      	ldr	r3, [pc, #196]	; (8004628 <__swsetup_r+0xc8>)
 8004564:	681b      	ldr	r3, [r3, #0]
 8004566:	4605      	mov	r5, r0
 8004568:	460c      	mov	r4, r1
 800456a:	b113      	cbz	r3, 8004572 <__swsetup_r+0x12>
 800456c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800456e:	2a00      	cmp	r2, #0
 8004570:	d03a      	beq.n	80045e8 <__swsetup_r+0x88>
 8004572:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004576:	b293      	uxth	r3, r2
 8004578:	0718      	lsls	r0, r3, #28
 800457a:	d50c      	bpl.n	8004596 <__swsetup_r+0x36>
 800457c:	6920      	ldr	r0, [r4, #16]
 800457e:	b1a8      	cbz	r0, 80045ac <__swsetup_r+0x4c>
 8004580:	f013 0201 	ands.w	r2, r3, #1
 8004584:	d020      	beq.n	80045c8 <__swsetup_r+0x68>
 8004586:	6963      	ldr	r3, [r4, #20]
 8004588:	2200      	movs	r2, #0
 800458a:	425b      	negs	r3, r3
 800458c:	61a3      	str	r3, [r4, #24]
 800458e:	60a2      	str	r2, [r4, #8]
 8004590:	b300      	cbz	r0, 80045d4 <__swsetup_r+0x74>
 8004592:	2000      	movs	r0, #0
 8004594:	bd38      	pop	{r3, r4, r5, pc}
 8004596:	06d9      	lsls	r1, r3, #27
 8004598:	d53e      	bpl.n	8004618 <__swsetup_r+0xb8>
 800459a:	0758      	lsls	r0, r3, #29
 800459c:	d428      	bmi.n	80045f0 <__swsetup_r+0x90>
 800459e:	6920      	ldr	r0, [r4, #16]
 80045a0:	f042 0308 	orr.w	r3, r2, #8
 80045a4:	81a3      	strh	r3, [r4, #12]
 80045a6:	b29b      	uxth	r3, r3
 80045a8:	2800      	cmp	r0, #0
 80045aa:	d1e9      	bne.n	8004580 <__swsetup_r+0x20>
 80045ac:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80045b0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80045b4:	d0e4      	beq.n	8004580 <__swsetup_r+0x20>
 80045b6:	4628      	mov	r0, r5
 80045b8:	4621      	mov	r1, r4
 80045ba:	f001 fc71 	bl	8005ea0 <__smakebuf_r>
 80045be:	89a3      	ldrh	r3, [r4, #12]
 80045c0:	6920      	ldr	r0, [r4, #16]
 80045c2:	f013 0201 	ands.w	r2, r3, #1
 80045c6:	d1de      	bne.n	8004586 <__swsetup_r+0x26>
 80045c8:	0799      	lsls	r1, r3, #30
 80045ca:	bf58      	it	pl
 80045cc:	6962      	ldrpl	r2, [r4, #20]
 80045ce:	60a2      	str	r2, [r4, #8]
 80045d0:	2800      	cmp	r0, #0
 80045d2:	d1de      	bne.n	8004592 <__swsetup_r+0x32>
 80045d4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80045d8:	061a      	lsls	r2, r3, #24
 80045da:	d5db      	bpl.n	8004594 <__swsetup_r+0x34>
 80045dc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80045e0:	81a3      	strh	r3, [r4, #12]
 80045e2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80045e6:	bd38      	pop	{r3, r4, r5, pc}
 80045e8:	4618      	mov	r0, r3
 80045ea:	f001 f8d7 	bl	800579c <__sinit>
 80045ee:	e7c0      	b.n	8004572 <__swsetup_r+0x12>
 80045f0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80045f2:	b151      	cbz	r1, 800460a <__swsetup_r+0xaa>
 80045f4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80045f8:	4299      	cmp	r1, r3
 80045fa:	d004      	beq.n	8004606 <__swsetup_r+0xa6>
 80045fc:	4628      	mov	r0, r5
 80045fe:	f001 f96f 	bl	80058e0 <_free_r>
 8004602:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004606:	2300      	movs	r3, #0
 8004608:	6323      	str	r3, [r4, #48]	; 0x30
 800460a:	2300      	movs	r3, #0
 800460c:	6920      	ldr	r0, [r4, #16]
 800460e:	6063      	str	r3, [r4, #4]
 8004610:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004614:	6020      	str	r0, [r4, #0]
 8004616:	e7c3      	b.n	80045a0 <__swsetup_r+0x40>
 8004618:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800461c:	2309      	movs	r3, #9
 800461e:	602b      	str	r3, [r5, #0]
 8004620:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004624:	81a2      	strh	r2, [r4, #12]
 8004626:	bd38      	pop	{r3, r4, r5, pc}
 8004628:	200001a8 	.word	0x200001a8

0800462c <register_fini>:
 800462c:	4b02      	ldr	r3, [pc, #8]	; (8004638 <register_fini+0xc>)
 800462e:	b113      	cbz	r3, 8004636 <register_fini+0xa>
 8004630:	4802      	ldr	r0, [pc, #8]	; (800463c <register_fini+0x10>)
 8004632:	f000 b805 	b.w	8004640 <atexit>
 8004636:	4770      	bx	lr
 8004638:	00000000 	.word	0x00000000
 800463c:	0800580d 	.word	0x0800580d

08004640 <atexit>:
 8004640:	2300      	movs	r3, #0
 8004642:	4601      	mov	r1, r0
 8004644:	461a      	mov	r2, r3
 8004646:	4618      	mov	r0, r3
 8004648:	f002 ba96 	b.w	8006b78 <__register_exitproc>

0800464c <quorem>:
 800464c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004650:	6903      	ldr	r3, [r0, #16]
 8004652:	690f      	ldr	r7, [r1, #16]
 8004654:	42bb      	cmp	r3, r7
 8004656:	b083      	sub	sp, #12
 8004658:	f2c0 8086 	blt.w	8004768 <quorem+0x11c>
 800465c:	3f01      	subs	r7, #1
 800465e:	f101 0914 	add.w	r9, r1, #20
 8004662:	f100 0a14 	add.w	sl, r0, #20
 8004666:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800466a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800466e:	00bc      	lsls	r4, r7, #2
 8004670:	3201      	adds	r2, #1
 8004672:	fbb3 f8f2 	udiv	r8, r3, r2
 8004676:	eb0a 0304 	add.w	r3, sl, r4
 800467a:	9400      	str	r4, [sp, #0]
 800467c:	eb09 0b04 	add.w	fp, r9, r4
 8004680:	9301      	str	r3, [sp, #4]
 8004682:	f1b8 0f00 	cmp.w	r8, #0
 8004686:	d038      	beq.n	80046fa <quorem+0xae>
 8004688:	2500      	movs	r5, #0
 800468a:	462e      	mov	r6, r5
 800468c:	46ce      	mov	lr, r9
 800468e:	46d4      	mov	ip, sl
 8004690:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004694:	f8dc 3000 	ldr.w	r3, [ip]
 8004698:	b2a2      	uxth	r2, r4
 800469a:	fb08 5502 	mla	r5, r8, r2, r5
 800469e:	0c22      	lsrs	r2, r4, #16
 80046a0:	0c2c      	lsrs	r4, r5, #16
 80046a2:	fb08 4202 	mla	r2, r8, r2, r4
 80046a6:	b2ad      	uxth	r5, r5
 80046a8:	1b75      	subs	r5, r6, r5
 80046aa:	b296      	uxth	r6, r2
 80046ac:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80046b0:	fa15 f383 	uxtah	r3, r5, r3
 80046b4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80046b8:	b29b      	uxth	r3, r3
 80046ba:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80046be:	45f3      	cmp	fp, lr
 80046c0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80046c4:	f84c 3b04 	str.w	r3, [ip], #4
 80046c8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80046cc:	d2e0      	bcs.n	8004690 <quorem+0x44>
 80046ce:	9b00      	ldr	r3, [sp, #0]
 80046d0:	f85a 3003 	ldr.w	r3, [sl, r3]
 80046d4:	b98b      	cbnz	r3, 80046fa <quorem+0xae>
 80046d6:	9a01      	ldr	r2, [sp, #4]
 80046d8:	1f13      	subs	r3, r2, #4
 80046da:	459a      	cmp	sl, r3
 80046dc:	d20c      	bcs.n	80046f8 <quorem+0xac>
 80046de:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80046e2:	b94b      	cbnz	r3, 80046f8 <quorem+0xac>
 80046e4:	f1a2 0308 	sub.w	r3, r2, #8
 80046e8:	e002      	b.n	80046f0 <quorem+0xa4>
 80046ea:	681a      	ldr	r2, [r3, #0]
 80046ec:	3b04      	subs	r3, #4
 80046ee:	b91a      	cbnz	r2, 80046f8 <quorem+0xac>
 80046f0:	459a      	cmp	sl, r3
 80046f2:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80046f6:	d3f8      	bcc.n	80046ea <quorem+0x9e>
 80046f8:	6107      	str	r7, [r0, #16]
 80046fa:	4604      	mov	r4, r0
 80046fc:	f001 fe94 	bl	8006428 <__mcmp>
 8004700:	2800      	cmp	r0, #0
 8004702:	db2d      	blt.n	8004760 <quorem+0x114>
 8004704:	f108 0801 	add.w	r8, r8, #1
 8004708:	4655      	mov	r5, sl
 800470a:	2300      	movs	r3, #0
 800470c:	f859 1b04 	ldr.w	r1, [r9], #4
 8004710:	6828      	ldr	r0, [r5, #0]
 8004712:	b28a      	uxth	r2, r1
 8004714:	1a9a      	subs	r2, r3, r2
 8004716:	0c0b      	lsrs	r3, r1, #16
 8004718:	fa12 f280 	uxtah	r2, r2, r0
 800471c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004720:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004724:	b292      	uxth	r2, r2
 8004726:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800472a:	45cb      	cmp	fp, r9
 800472c:	f845 2b04 	str.w	r2, [r5], #4
 8004730:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004734:	d2ea      	bcs.n	800470c <quorem+0xc0>
 8004736:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800473a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800473e:	b97a      	cbnz	r2, 8004760 <quorem+0x114>
 8004740:	1f1a      	subs	r2, r3, #4
 8004742:	4592      	cmp	sl, r2
 8004744:	d20b      	bcs.n	800475e <quorem+0x112>
 8004746:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800474a:	b942      	cbnz	r2, 800475e <quorem+0x112>
 800474c:	3b08      	subs	r3, #8
 800474e:	e002      	b.n	8004756 <quorem+0x10a>
 8004750:	681a      	ldr	r2, [r3, #0]
 8004752:	3b04      	subs	r3, #4
 8004754:	b91a      	cbnz	r2, 800475e <quorem+0x112>
 8004756:	459a      	cmp	sl, r3
 8004758:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800475c:	d3f8      	bcc.n	8004750 <quorem+0x104>
 800475e:	6127      	str	r7, [r4, #16]
 8004760:	4640      	mov	r0, r8
 8004762:	b003      	add	sp, #12
 8004764:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004768:	2000      	movs	r0, #0
 800476a:	b003      	add	sp, #12
 800476c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004770 <_dtoa_r>:
 8004770:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004774:	ec55 4b10 	vmov	r4, r5, d0
 8004778:	b09b      	sub	sp, #108	; 0x6c
 800477a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800477c:	9102      	str	r1, [sp, #8]
 800477e:	4681      	mov	r9, r0
 8004780:	9207      	str	r2, [sp, #28]
 8004782:	9305      	str	r3, [sp, #20]
 8004784:	e9cd 4500 	strd	r4, r5, [sp]
 8004788:	b156      	cbz	r6, 80047a0 <_dtoa_r+0x30>
 800478a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800478c:	6072      	str	r2, [r6, #4]
 800478e:	2301      	movs	r3, #1
 8004790:	4093      	lsls	r3, r2
 8004792:	60b3      	str	r3, [r6, #8]
 8004794:	4631      	mov	r1, r6
 8004796:	f001 fc57 	bl	8006048 <_Bfree>
 800479a:	2300      	movs	r3, #0
 800479c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80047a0:	f1b5 0800 	subs.w	r8, r5, #0
 80047a4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80047a6:	bfb4      	ite	lt
 80047a8:	2301      	movlt	r3, #1
 80047aa:	2300      	movge	r3, #0
 80047ac:	6013      	str	r3, [r2, #0]
 80047ae:	4b76      	ldr	r3, [pc, #472]	; (8004988 <_dtoa_r+0x218>)
 80047b0:	bfbc      	itt	lt
 80047b2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80047b6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80047ba:	ea33 0308 	bics.w	r3, r3, r8
 80047be:	f000 80a6 	beq.w	800490e <_dtoa_r+0x19e>
 80047c2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80047c6:	2200      	movs	r2, #0
 80047c8:	2300      	movs	r3, #0
 80047ca:	4630      	mov	r0, r6
 80047cc:	4639      	mov	r1, r7
 80047ce:	f7fc fc1b 	bl	8001008 <__aeabi_dcmpeq>
 80047d2:	4605      	mov	r5, r0
 80047d4:	b178      	cbz	r0, 80047f6 <_dtoa_r+0x86>
 80047d6:	9a05      	ldr	r2, [sp, #20]
 80047d8:	2301      	movs	r3, #1
 80047da:	6013      	str	r3, [r2, #0]
 80047dc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80047de:	2b00      	cmp	r3, #0
 80047e0:	f000 80c0 	beq.w	8004964 <_dtoa_r+0x1f4>
 80047e4:	4b69      	ldr	r3, [pc, #420]	; (800498c <_dtoa_r+0x21c>)
 80047e6:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80047e8:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80047ec:	6013      	str	r3, [r2, #0]
 80047ee:	4658      	mov	r0, fp
 80047f0:	b01b      	add	sp, #108	; 0x6c
 80047f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80047f6:	aa18      	add	r2, sp, #96	; 0x60
 80047f8:	a919      	add	r1, sp, #100	; 0x64
 80047fa:	ec47 6b10 	vmov	d0, r6, r7
 80047fe:	4648      	mov	r0, r9
 8004800:	f001 fea4 	bl	800654c <__d2b>
 8004804:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004808:	4682      	mov	sl, r0
 800480a:	f040 80a0 	bne.w	800494e <_dtoa_r+0x1de>
 800480e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004812:	442c      	add	r4, r5
 8004814:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004818:	2b20      	cmp	r3, #32
 800481a:	f340 842c 	ble.w	8005076 <_dtoa_r+0x906>
 800481e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004822:	fa08 f803 	lsl.w	r8, r8, r3
 8004826:	9b00      	ldr	r3, [sp, #0]
 8004828:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800482c:	fa23 f000 	lsr.w	r0, r3, r0
 8004830:	ea48 0000 	orr.w	r0, r8, r0
 8004834:	f7fc f906 	bl	8000a44 <__aeabi_ui2d>
 8004838:	2301      	movs	r3, #1
 800483a:	4606      	mov	r6, r0
 800483c:	3c01      	subs	r4, #1
 800483e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004842:	930f      	str	r3, [sp, #60]	; 0x3c
 8004844:	4630      	mov	r0, r6
 8004846:	4639      	mov	r1, r7
 8004848:	2200      	movs	r2, #0
 800484a:	4b51      	ldr	r3, [pc, #324]	; (8004990 <_dtoa_r+0x220>)
 800484c:	f7fb ffbc 	bl	80007c8 <__aeabi_dsub>
 8004850:	a347      	add	r3, pc, #284	; (adr r3, 8004970 <_dtoa_r+0x200>)
 8004852:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004856:	f7fc f96f 	bl	8000b38 <__aeabi_dmul>
 800485a:	a347      	add	r3, pc, #284	; (adr r3, 8004978 <_dtoa_r+0x208>)
 800485c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004860:	f7fb ffb4 	bl	80007cc <__adddf3>
 8004864:	4606      	mov	r6, r0
 8004866:	4620      	mov	r0, r4
 8004868:	460f      	mov	r7, r1
 800486a:	f7fc f8fb 	bl	8000a64 <__aeabi_i2d>
 800486e:	a344      	add	r3, pc, #272	; (adr r3, 8004980 <_dtoa_r+0x210>)
 8004870:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004874:	f7fc f960 	bl	8000b38 <__aeabi_dmul>
 8004878:	4602      	mov	r2, r0
 800487a:	460b      	mov	r3, r1
 800487c:	4630      	mov	r0, r6
 800487e:	4639      	mov	r1, r7
 8004880:	f7fb ffa4 	bl	80007cc <__adddf3>
 8004884:	4606      	mov	r6, r0
 8004886:	460f      	mov	r7, r1
 8004888:	f7fc fc06 	bl	8001098 <__aeabi_d2iz>
 800488c:	2200      	movs	r2, #0
 800488e:	9006      	str	r0, [sp, #24]
 8004890:	2300      	movs	r3, #0
 8004892:	4630      	mov	r0, r6
 8004894:	4639      	mov	r1, r7
 8004896:	f7fc fbc1 	bl	800101c <__aeabi_dcmplt>
 800489a:	2800      	cmp	r0, #0
 800489c:	f040 8273 	bne.w	8004d86 <_dtoa_r+0x616>
 80048a0:	9e06      	ldr	r6, [sp, #24]
 80048a2:	2e16      	cmp	r6, #22
 80048a4:	f200 825d 	bhi.w	8004d62 <_dtoa_r+0x5f2>
 80048a8:	4b3a      	ldr	r3, [pc, #232]	; (8004994 <_dtoa_r+0x224>)
 80048aa:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80048ae:	e9d3 0100 	ldrd	r0, r1, [r3]
 80048b2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80048b6:	f7fc fbcf 	bl	8001058 <__aeabi_dcmpgt>
 80048ba:	2800      	cmp	r0, #0
 80048bc:	f000 83d7 	beq.w	800506e <_dtoa_r+0x8fe>
 80048c0:	1e73      	subs	r3, r6, #1
 80048c2:	9306      	str	r3, [sp, #24]
 80048c4:	2300      	movs	r3, #0
 80048c6:	930d      	str	r3, [sp, #52]	; 0x34
 80048c8:	1b2c      	subs	r4, r5, r4
 80048ca:	f1b4 0801 	subs.w	r8, r4, #1
 80048ce:	f100 8254 	bmi.w	8004d7a <_dtoa_r+0x60a>
 80048d2:	2300      	movs	r3, #0
 80048d4:	9308      	str	r3, [sp, #32]
 80048d6:	9b06      	ldr	r3, [sp, #24]
 80048d8:	2b00      	cmp	r3, #0
 80048da:	f2c0 8245 	blt.w	8004d68 <_dtoa_r+0x5f8>
 80048de:	4498      	add	r8, r3
 80048e0:	930c      	str	r3, [sp, #48]	; 0x30
 80048e2:	2300      	movs	r3, #0
 80048e4:	930b      	str	r3, [sp, #44]	; 0x2c
 80048e6:	9b02      	ldr	r3, [sp, #8]
 80048e8:	2b09      	cmp	r3, #9
 80048ea:	d85b      	bhi.n	80049a4 <_dtoa_r+0x234>
 80048ec:	2b05      	cmp	r3, #5
 80048ee:	f340 83c0 	ble.w	8005072 <_dtoa_r+0x902>
 80048f2:	3b04      	subs	r3, #4
 80048f4:	9302      	str	r3, [sp, #8]
 80048f6:	2500      	movs	r5, #0
 80048f8:	9b02      	ldr	r3, [sp, #8]
 80048fa:	3b02      	subs	r3, #2
 80048fc:	2b03      	cmp	r3, #3
 80048fe:	f200 8498 	bhi.w	8005232 <_dtoa_r+0xac2>
 8004902:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004906:	03df      	.short	0x03df
 8004908:	03e803bf 	.word	0x03e803bf
 800490c:	04f5      	.short	0x04f5
 800490e:	9a05      	ldr	r2, [sp, #20]
 8004910:	f242 730f 	movw	r3, #9999	; 0x270f
 8004914:	6013      	str	r3, [r2, #0]
 8004916:	9b00      	ldr	r3, [sp, #0]
 8004918:	b983      	cbnz	r3, 800493c <_dtoa_r+0x1cc>
 800491a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800491e:	b96b      	cbnz	r3, 800493c <_dtoa_r+0x1cc>
 8004920:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004922:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004998 <_dtoa_r+0x228>
 8004926:	2b00      	cmp	r3, #0
 8004928:	f43f af61 	beq.w	80047ee <_dtoa_r+0x7e>
 800492c:	f10b 0308 	add.w	r3, fp, #8
 8004930:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004932:	4658      	mov	r0, fp
 8004934:	6013      	str	r3, [r2, #0]
 8004936:	b01b      	add	sp, #108	; 0x6c
 8004938:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800493c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800493e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800499c <_dtoa_r+0x22c>
 8004942:	2b00      	cmp	r3, #0
 8004944:	f43f af53 	beq.w	80047ee <_dtoa_r+0x7e>
 8004948:	f10b 0303 	add.w	r3, fp, #3
 800494c:	e7f0      	b.n	8004930 <_dtoa_r+0x1c0>
 800494e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004952:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004956:	950f      	str	r5, [sp, #60]	; 0x3c
 8004958:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800495c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004960:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004962:	e76f      	b.n	8004844 <_dtoa_r+0xd4>
 8004964:	f8df b038 	ldr.w	fp, [pc, #56]	; 80049a0 <_dtoa_r+0x230>
 8004968:	4658      	mov	r0, fp
 800496a:	b01b      	add	sp, #108	; 0x6c
 800496c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004970:	636f4361 	.word	0x636f4361
 8004974:	3fd287a7 	.word	0x3fd287a7
 8004978:	8b60c8b3 	.word	0x8b60c8b3
 800497c:	3fc68a28 	.word	0x3fc68a28
 8004980:	509f79fb 	.word	0x509f79fb
 8004984:	3fd34413 	.word	0x3fd34413
 8004988:	7ff00000 	.word	0x7ff00000
 800498c:	0800721d 	.word	0x0800721d
 8004990:	3ff80000 	.word	0x3ff80000
 8004994:	08007278 	.word	0x08007278
 8004998:	08007240 	.word	0x08007240
 800499c:	0800724c 	.word	0x0800724c
 80049a0:	0800721c 	.word	0x0800721c
 80049a4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80049a8:	2501      	movs	r5, #1
 80049aa:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80049ae:	2300      	movs	r3, #0
 80049b0:	9302      	str	r3, [sp, #8]
 80049b2:	9307      	str	r3, [sp, #28]
 80049b4:	2100      	movs	r1, #0
 80049b6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80049ba:	940e      	str	r4, [sp, #56]	; 0x38
 80049bc:	4648      	mov	r0, r9
 80049be:	f001 fb1d 	bl	8005ffc <_Balloc>
 80049c2:	2c0e      	cmp	r4, #14
 80049c4:	4683      	mov	fp, r0
 80049c6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80049ca:	f200 80fb 	bhi.w	8004bc4 <_dtoa_r+0x454>
 80049ce:	2d00      	cmp	r5, #0
 80049d0:	f000 80f8 	beq.w	8004bc4 <_dtoa_r+0x454>
 80049d4:	ed9d 7b00 	vldr	d7, [sp]
 80049d8:	9906      	ldr	r1, [sp, #24]
 80049da:	2900      	cmp	r1, #0
 80049dc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80049e0:	f340 83e5 	ble.w	80051ae <_dtoa_r+0xa3e>
 80049e4:	4b9d      	ldr	r3, [pc, #628]	; (8004c5c <_dtoa_r+0x4ec>)
 80049e6:	f001 020f 	and.w	r2, r1, #15
 80049ea:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80049ee:	ed93 7b00 	vldr	d7, [r3]
 80049f2:	110c      	asrs	r4, r1, #4
 80049f4:	06e2      	lsls	r2, r4, #27
 80049f6:	ed8d 7b00 	vstr	d7, [sp]
 80049fa:	f140 849e 	bpl.w	800533a <_dtoa_r+0xbca>
 80049fe:	4b98      	ldr	r3, [pc, #608]	; (8004c60 <_dtoa_r+0x4f0>)
 8004a00:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004a04:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004a08:	f7fc f9c0 	bl	8000d8c <__aeabi_ddiv>
 8004a0c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004a10:	f004 040f 	and.w	r4, r4, #15
 8004a14:	2603      	movs	r6, #3
 8004a16:	b17c      	cbz	r4, 8004a38 <_dtoa_r+0x2c8>
 8004a18:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a1c:	4d90      	ldr	r5, [pc, #576]	; (8004c60 <_dtoa_r+0x4f0>)
 8004a1e:	07e3      	lsls	r3, r4, #31
 8004a20:	d504      	bpl.n	8004a2c <_dtoa_r+0x2bc>
 8004a22:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004a26:	f7fc f887 	bl	8000b38 <__aeabi_dmul>
 8004a2a:	3601      	adds	r6, #1
 8004a2c:	1064      	asrs	r4, r4, #1
 8004a2e:	f105 0508 	add.w	r5, r5, #8
 8004a32:	d1f4      	bne.n	8004a1e <_dtoa_r+0x2ae>
 8004a34:	e9cd 0100 	strd	r0, r1, [sp]
 8004a38:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a3c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004a40:	f7fc f9a4 	bl	8000d8c <__aeabi_ddiv>
 8004a44:	e9cd 0100 	strd	r0, r1, [sp]
 8004a48:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004a4a:	b143      	cbz	r3, 8004a5e <_dtoa_r+0x2ee>
 8004a4c:	2200      	movs	r2, #0
 8004a4e:	4b85      	ldr	r3, [pc, #532]	; (8004c64 <_dtoa_r+0x4f4>)
 8004a50:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a54:	f7fc fae2 	bl	800101c <__aeabi_dcmplt>
 8004a58:	2800      	cmp	r0, #0
 8004a5a:	f040 84ff 	bne.w	800545c <_dtoa_r+0xcec>
 8004a5e:	4630      	mov	r0, r6
 8004a60:	f7fc f800 	bl	8000a64 <__aeabi_i2d>
 8004a64:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004a68:	f7fc f866 	bl	8000b38 <__aeabi_dmul>
 8004a6c:	4b7e      	ldr	r3, [pc, #504]	; (8004c68 <_dtoa_r+0x4f8>)
 8004a6e:	2200      	movs	r2, #0
 8004a70:	f7fb feac 	bl	80007cc <__adddf3>
 8004a74:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a76:	4606      	mov	r6, r0
 8004a78:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004a7c:	2b00      	cmp	r3, #0
 8004a7e:	f000 841c 	beq.w	80052ba <_dtoa_r+0xb4a>
 8004a82:	9b06      	ldr	r3, [sp, #24]
 8004a84:	9316      	str	r3, [sp, #88]	; 0x58
 8004a86:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a88:	9312      	str	r3, [sp, #72]	; 0x48
 8004a8a:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004a8e:	f7fc fb03 	bl	8001098 <__aeabi_d2iz>
 8004a92:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004a94:	4b71      	ldr	r3, [pc, #452]	; (8004c5c <_dtoa_r+0x4ec>)
 8004a96:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a9a:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004a9e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004aa2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004aa6:	f7fb ffdd 	bl	8000a64 <__aeabi_i2d>
 8004aaa:	460b      	mov	r3, r1
 8004aac:	4602      	mov	r2, r0
 8004aae:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ab2:	e9cd 6700 	strd	r6, r7, [sp]
 8004ab6:	f7fb fe87 	bl	80007c8 <__aeabi_dsub>
 8004aba:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004abc:	b2ed      	uxtb	r5, r5
 8004abe:	4606      	mov	r6, r0
 8004ac0:	460f      	mov	r7, r1
 8004ac2:	f10b 0401 	add.w	r4, fp, #1
 8004ac6:	2b00      	cmp	r3, #0
 8004ac8:	f000 8458 	beq.w	800537c <_dtoa_r+0xc0c>
 8004acc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004ad0:	2000      	movs	r0, #0
 8004ad2:	4966      	ldr	r1, [pc, #408]	; (8004c6c <_dtoa_r+0x4fc>)
 8004ad4:	f7fc f95a 	bl	8000d8c <__aeabi_ddiv>
 8004ad8:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004adc:	f7fb fe74 	bl	80007c8 <__aeabi_dsub>
 8004ae0:	f88b 5000 	strb.w	r5, [fp]
 8004ae4:	4632      	mov	r2, r6
 8004ae6:	463b      	mov	r3, r7
 8004ae8:	e9cd 0100 	strd	r0, r1, [sp]
 8004aec:	f7fc fab4 	bl	8001058 <__aeabi_dcmpgt>
 8004af0:	2800      	cmp	r0, #0
 8004af2:	f040 8502 	bne.w	80054fa <_dtoa_r+0xd8a>
 8004af6:	4632      	mov	r2, r6
 8004af8:	463b      	mov	r3, r7
 8004afa:	2000      	movs	r0, #0
 8004afc:	4959      	ldr	r1, [pc, #356]	; (8004c64 <_dtoa_r+0x4f4>)
 8004afe:	f7fb fe63 	bl	80007c8 <__aeabi_dsub>
 8004b02:	4602      	mov	r2, r0
 8004b04:	460b      	mov	r3, r1
 8004b06:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b0a:	f7fc faa5 	bl	8001058 <__aeabi_dcmpgt>
 8004b0e:	2800      	cmp	r0, #0
 8004b10:	f040 84fb 	bne.w	800550a <_dtoa_r+0xd9a>
 8004b14:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004b16:	2a01      	cmp	r2, #1
 8004b18:	d050      	beq.n	8004bbc <_dtoa_r+0x44c>
 8004b1a:	445a      	add	r2, fp
 8004b1c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004b20:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004b24:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004b28:	4692      	mov	sl, r2
 8004b2a:	46cb      	mov	fp, r9
 8004b2c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004b30:	e00c      	b.n	8004b4c <_dtoa_r+0x3dc>
 8004b32:	2000      	movs	r0, #0
 8004b34:	494b      	ldr	r1, [pc, #300]	; (8004c64 <_dtoa_r+0x4f4>)
 8004b36:	f7fb fe47 	bl	80007c8 <__aeabi_dsub>
 8004b3a:	4642      	mov	r2, r8
 8004b3c:	464b      	mov	r3, r9
 8004b3e:	f7fc fa6d 	bl	800101c <__aeabi_dcmplt>
 8004b42:	2800      	cmp	r0, #0
 8004b44:	f040 84dc 	bne.w	8005500 <_dtoa_r+0xd90>
 8004b48:	4554      	cmp	r4, sl
 8004b4a:	d030      	beq.n	8004bae <_dtoa_r+0x43e>
 8004b4c:	4640      	mov	r0, r8
 8004b4e:	4649      	mov	r1, r9
 8004b50:	2200      	movs	r2, #0
 8004b52:	4b47      	ldr	r3, [pc, #284]	; (8004c70 <_dtoa_r+0x500>)
 8004b54:	f7fb fff0 	bl	8000b38 <__aeabi_dmul>
 8004b58:	2200      	movs	r2, #0
 8004b5a:	4b45      	ldr	r3, [pc, #276]	; (8004c70 <_dtoa_r+0x500>)
 8004b5c:	4680      	mov	r8, r0
 8004b5e:	4689      	mov	r9, r1
 8004b60:	4630      	mov	r0, r6
 8004b62:	4639      	mov	r1, r7
 8004b64:	f7fb ffe8 	bl	8000b38 <__aeabi_dmul>
 8004b68:	460f      	mov	r7, r1
 8004b6a:	4606      	mov	r6, r0
 8004b6c:	f7fc fa94 	bl	8001098 <__aeabi_d2iz>
 8004b70:	4605      	mov	r5, r0
 8004b72:	f7fb ff77 	bl	8000a64 <__aeabi_i2d>
 8004b76:	4602      	mov	r2, r0
 8004b78:	460b      	mov	r3, r1
 8004b7a:	4630      	mov	r0, r6
 8004b7c:	4639      	mov	r1, r7
 8004b7e:	f7fb fe23 	bl	80007c8 <__aeabi_dsub>
 8004b82:	3530      	adds	r5, #48	; 0x30
 8004b84:	b2ed      	uxtb	r5, r5
 8004b86:	4642      	mov	r2, r8
 8004b88:	464b      	mov	r3, r9
 8004b8a:	f804 5b01 	strb.w	r5, [r4], #1
 8004b8e:	4606      	mov	r6, r0
 8004b90:	460f      	mov	r7, r1
 8004b92:	f7fc fa43 	bl	800101c <__aeabi_dcmplt>
 8004b96:	4632      	mov	r2, r6
 8004b98:	463b      	mov	r3, r7
 8004b9a:	2800      	cmp	r0, #0
 8004b9c:	d0c9      	beq.n	8004b32 <_dtoa_r+0x3c2>
 8004b9e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ba0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004ba4:	9306      	str	r3, [sp, #24]
 8004ba6:	46d9      	mov	r9, fp
 8004ba8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004bac:	e236      	b.n	800501c <_dtoa_r+0x8ac>
 8004bae:	46d9      	mov	r9, fp
 8004bb0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004bb4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004bb8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004bbc:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004bc0:	e9cd 3400 	strd	r3, r4, [sp]
 8004bc4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004bc6:	2b00      	cmp	r3, #0
 8004bc8:	f2c0 80ae 	blt.w	8004d28 <_dtoa_r+0x5b8>
 8004bcc:	9a06      	ldr	r2, [sp, #24]
 8004bce:	2a0e      	cmp	r2, #14
 8004bd0:	f300 80aa 	bgt.w	8004d28 <_dtoa_r+0x5b8>
 8004bd4:	4b21      	ldr	r3, [pc, #132]	; (8004c5c <_dtoa_r+0x4ec>)
 8004bd6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004bda:	ed93 7b00 	vldr	d7, [r3]
 8004bde:	9b07      	ldr	r3, [sp, #28]
 8004be0:	2b00      	cmp	r3, #0
 8004be2:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004be6:	f2c0 82be 	blt.w	8005166 <_dtoa_r+0x9f6>
 8004bea:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004bee:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004bf2:	4630      	mov	r0, r6
 8004bf4:	4639      	mov	r1, r7
 8004bf6:	f7fc f8c9 	bl	8000d8c <__aeabi_ddiv>
 8004bfa:	f7fc fa4d 	bl	8001098 <__aeabi_d2iz>
 8004bfe:	4605      	mov	r5, r0
 8004c00:	f7fb ff30 	bl	8000a64 <__aeabi_i2d>
 8004c04:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004c08:	f7fb ff96 	bl	8000b38 <__aeabi_dmul>
 8004c0c:	460b      	mov	r3, r1
 8004c0e:	4602      	mov	r2, r0
 8004c10:	4639      	mov	r1, r7
 8004c12:	4630      	mov	r0, r6
 8004c14:	f7fb fdd8 	bl	80007c8 <__aeabi_dsub>
 8004c18:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004c1c:	f88b 3000 	strb.w	r3, [fp]
 8004c20:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c22:	2b01      	cmp	r3, #1
 8004c24:	4606      	mov	r6, r0
 8004c26:	460f      	mov	r7, r1
 8004c28:	f10b 0401 	add.w	r4, fp, #1
 8004c2c:	d053      	beq.n	8004cd6 <_dtoa_r+0x566>
 8004c2e:	2200      	movs	r2, #0
 8004c30:	4b0f      	ldr	r3, [pc, #60]	; (8004c70 <_dtoa_r+0x500>)
 8004c32:	f7fb ff81 	bl	8000b38 <__aeabi_dmul>
 8004c36:	2200      	movs	r2, #0
 8004c38:	2300      	movs	r3, #0
 8004c3a:	4606      	mov	r6, r0
 8004c3c:	460f      	mov	r7, r1
 8004c3e:	f7fc f9e3 	bl	8001008 <__aeabi_dcmpeq>
 8004c42:	2800      	cmp	r0, #0
 8004c44:	f040 81ea 	bne.w	800501c <_dtoa_r+0x8ac>
 8004c48:	f8cd a000 	str.w	sl, [sp]
 8004c4c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004c50:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004c54:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004c58:	e017      	b.n	8004c8a <_dtoa_r+0x51a>
 8004c5a:	bf00      	nop
 8004c5c:	08007278 	.word	0x08007278
 8004c60:	08007250 	.word	0x08007250
 8004c64:	3ff00000 	.word	0x3ff00000
 8004c68:	401c0000 	.word	0x401c0000
 8004c6c:	3fe00000 	.word	0x3fe00000
 8004c70:	40240000 	.word	0x40240000
 8004c74:	f7fb ff60 	bl	8000b38 <__aeabi_dmul>
 8004c78:	2200      	movs	r2, #0
 8004c7a:	2300      	movs	r3, #0
 8004c7c:	4606      	mov	r6, r0
 8004c7e:	460f      	mov	r7, r1
 8004c80:	f7fc f9c2 	bl	8001008 <__aeabi_dcmpeq>
 8004c84:	2800      	cmp	r0, #0
 8004c86:	f040 833d 	bne.w	8005304 <_dtoa_r+0xb94>
 8004c8a:	464a      	mov	r2, r9
 8004c8c:	4653      	mov	r3, sl
 8004c8e:	4630      	mov	r0, r6
 8004c90:	4639      	mov	r1, r7
 8004c92:	f7fc f87b 	bl	8000d8c <__aeabi_ddiv>
 8004c96:	f7fc f9ff 	bl	8001098 <__aeabi_d2iz>
 8004c9a:	4605      	mov	r5, r0
 8004c9c:	f7fb fee2 	bl	8000a64 <__aeabi_i2d>
 8004ca0:	464a      	mov	r2, r9
 8004ca2:	4653      	mov	r3, sl
 8004ca4:	f7fb ff48 	bl	8000b38 <__aeabi_dmul>
 8004ca8:	4602      	mov	r2, r0
 8004caa:	460b      	mov	r3, r1
 8004cac:	4630      	mov	r0, r6
 8004cae:	4639      	mov	r1, r7
 8004cb0:	f7fb fd8a 	bl	80007c8 <__aeabi_dsub>
 8004cb4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004cb8:	f804 cb01 	strb.w	ip, [r4], #1
 8004cbc:	eba4 0c0b 	sub.w	ip, r4, fp
 8004cc0:	45e0      	cmp	r8, ip
 8004cc2:	4606      	mov	r6, r0
 8004cc4:	460f      	mov	r7, r1
 8004cc6:	f04f 0200 	mov.w	r2, #0
 8004cca:	4bc1      	ldr	r3, [pc, #772]	; (8004fd0 <_dtoa_r+0x860>)
 8004ccc:	d1d2      	bne.n	8004c74 <_dtoa_r+0x504>
 8004cce:	f8dd a000 	ldr.w	sl, [sp]
 8004cd2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004cd6:	4632      	mov	r2, r6
 8004cd8:	463b      	mov	r3, r7
 8004cda:	4630      	mov	r0, r6
 8004cdc:	4639      	mov	r1, r7
 8004cde:	f7fb fd75 	bl	80007cc <__adddf3>
 8004ce2:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004ce6:	4606      	mov	r6, r0
 8004ce8:	460f      	mov	r7, r1
 8004cea:	f7fc f9b5 	bl	8001058 <__aeabi_dcmpgt>
 8004cee:	b958      	cbnz	r0, 8004d08 <_dtoa_r+0x598>
 8004cf0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004cf4:	4630      	mov	r0, r6
 8004cf6:	4639      	mov	r1, r7
 8004cf8:	f7fc f986 	bl	8001008 <__aeabi_dcmpeq>
 8004cfc:	2800      	cmp	r0, #0
 8004cfe:	f000 818d 	beq.w	800501c <_dtoa_r+0x8ac>
 8004d02:	07e9      	lsls	r1, r5, #31
 8004d04:	f140 818a 	bpl.w	800501c <_dtoa_r+0x8ac>
 8004d08:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004d0c:	e005      	b.n	8004d1a <_dtoa_r+0x5aa>
 8004d0e:	459b      	cmp	fp, r3
 8004d10:	f000 8373 	beq.w	80053fa <_dtoa_r+0xc8a>
 8004d14:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004d18:	461c      	mov	r4, r3
 8004d1a:	2d39      	cmp	r5, #57	; 0x39
 8004d1c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004d20:	d0f5      	beq.n	8004d0e <_dtoa_r+0x59e>
 8004d22:	3501      	adds	r5, #1
 8004d24:	701d      	strb	r5, [r3, #0]
 8004d26:	e179      	b.n	800501c <_dtoa_r+0x8ac>
 8004d28:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004d2a:	2a00      	cmp	r2, #0
 8004d2c:	d03b      	beq.n	8004da6 <_dtoa_r+0x636>
 8004d2e:	9a02      	ldr	r2, [sp, #8]
 8004d30:	2a01      	cmp	r2, #1
 8004d32:	f340 820b 	ble.w	800514c <_dtoa_r+0x9dc>
 8004d36:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d38:	1e5f      	subs	r7, r3, #1
 8004d3a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d3c:	42bb      	cmp	r3, r7
 8004d3e:	f2c0 82e6 	blt.w	800530e <_dtoa_r+0xb9e>
 8004d42:	1bdf      	subs	r7, r3, r7
 8004d44:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d46:	2b00      	cmp	r3, #0
 8004d48:	f2c0 830b 	blt.w	8005362 <_dtoa_r+0xbf2>
 8004d4c:	9a08      	ldr	r2, [sp, #32]
 8004d4e:	4614      	mov	r4, r2
 8004d50:	441a      	add	r2, r3
 8004d52:	4498      	add	r8, r3
 8004d54:	9208      	str	r2, [sp, #32]
 8004d56:	2101      	movs	r1, #1
 8004d58:	4648      	mov	r0, r9
 8004d5a:	f001 fa0f 	bl	800617c <__i2b>
 8004d5e:	4605      	mov	r5, r0
 8004d60:	e024      	b.n	8004dac <_dtoa_r+0x63c>
 8004d62:	2301      	movs	r3, #1
 8004d64:	930d      	str	r3, [sp, #52]	; 0x34
 8004d66:	e5af      	b.n	80048c8 <_dtoa_r+0x158>
 8004d68:	9a08      	ldr	r2, [sp, #32]
 8004d6a:	9b06      	ldr	r3, [sp, #24]
 8004d6c:	1ad2      	subs	r2, r2, r3
 8004d6e:	425b      	negs	r3, r3
 8004d70:	930b      	str	r3, [sp, #44]	; 0x2c
 8004d72:	2300      	movs	r3, #0
 8004d74:	9208      	str	r2, [sp, #32]
 8004d76:	930c      	str	r3, [sp, #48]	; 0x30
 8004d78:	e5b5      	b.n	80048e6 <_dtoa_r+0x176>
 8004d7a:	f1c4 0301 	rsb	r3, r4, #1
 8004d7e:	9308      	str	r3, [sp, #32]
 8004d80:	f04f 0800 	mov.w	r8, #0
 8004d84:	e5a7      	b.n	80048d6 <_dtoa_r+0x166>
 8004d86:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004d8a:	4640      	mov	r0, r8
 8004d8c:	f7fb fe6a 	bl	8000a64 <__aeabi_i2d>
 8004d90:	4632      	mov	r2, r6
 8004d92:	463b      	mov	r3, r7
 8004d94:	f7fc f938 	bl	8001008 <__aeabi_dcmpeq>
 8004d98:	2800      	cmp	r0, #0
 8004d9a:	f47f ad81 	bne.w	80048a0 <_dtoa_r+0x130>
 8004d9e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004da2:	9306      	str	r3, [sp, #24]
 8004da4:	e57c      	b.n	80048a0 <_dtoa_r+0x130>
 8004da6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004da8:	9c08      	ldr	r4, [sp, #32]
 8004daa:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004dac:	2c00      	cmp	r4, #0
 8004dae:	dd0c      	ble.n	8004dca <_dtoa_r+0x65a>
 8004db0:	f1b8 0f00 	cmp.w	r8, #0
 8004db4:	dd09      	ble.n	8004dca <_dtoa_r+0x65a>
 8004db6:	4544      	cmp	r4, r8
 8004db8:	9a08      	ldr	r2, [sp, #32]
 8004dba:	4623      	mov	r3, r4
 8004dbc:	bfa8      	it	ge
 8004dbe:	4643      	movge	r3, r8
 8004dc0:	1ad2      	subs	r2, r2, r3
 8004dc2:	9208      	str	r2, [sp, #32]
 8004dc4:	1ae4      	subs	r4, r4, r3
 8004dc6:	eba8 0803 	sub.w	r8, r8, r3
 8004dca:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004dcc:	b16b      	cbz	r3, 8004dea <_dtoa_r+0x67a>
 8004dce:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004dd0:	2a00      	cmp	r2, #0
 8004dd2:	f000 8290 	beq.w	80052f6 <_dtoa_r+0xb86>
 8004dd6:	1bde      	subs	r6, r3, r7
 8004dd8:	2f00      	cmp	r7, #0
 8004dda:	f040 819b 	bne.w	8005114 <_dtoa_r+0x9a4>
 8004dde:	4651      	mov	r1, sl
 8004de0:	4632      	mov	r2, r6
 8004de2:	4648      	mov	r0, r9
 8004de4:	f001 fa7a 	bl	80062dc <__pow5mult>
 8004de8:	4682      	mov	sl, r0
 8004dea:	2101      	movs	r1, #1
 8004dec:	4648      	mov	r0, r9
 8004dee:	f001 f9c5 	bl	800617c <__i2b>
 8004df2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004df4:	4606      	mov	r6, r0
 8004df6:	2a00      	cmp	r2, #0
 8004df8:	f040 8125 	bne.w	8005046 <_dtoa_r+0x8d6>
 8004dfc:	9b02      	ldr	r3, [sp, #8]
 8004dfe:	2b01      	cmp	r3, #1
 8004e00:	f340 816c 	ble.w	80050dc <_dtoa_r+0x96c>
 8004e04:	2001      	movs	r0, #1
 8004e06:	4440      	add	r0, r8
 8004e08:	f010 001f 	ands.w	r0, r0, #31
 8004e0c:	f000 8119 	beq.w	8005042 <_dtoa_r+0x8d2>
 8004e10:	f1c0 0320 	rsb	r3, r0, #32
 8004e14:	2b04      	cmp	r3, #4
 8004e16:	f340 83ac 	ble.w	8005572 <_dtoa_r+0xe02>
 8004e1a:	f1c0 001c 	rsb	r0, r0, #28
 8004e1e:	9b08      	ldr	r3, [sp, #32]
 8004e20:	4403      	add	r3, r0
 8004e22:	9308      	str	r3, [sp, #32]
 8004e24:	4404      	add	r4, r0
 8004e26:	4480      	add	r8, r0
 8004e28:	9b08      	ldr	r3, [sp, #32]
 8004e2a:	2b00      	cmp	r3, #0
 8004e2c:	dd05      	ble.n	8004e3a <_dtoa_r+0x6ca>
 8004e2e:	4651      	mov	r1, sl
 8004e30:	461a      	mov	r2, r3
 8004e32:	4648      	mov	r0, r9
 8004e34:	f001 faa2 	bl	800637c <__lshift>
 8004e38:	4682      	mov	sl, r0
 8004e3a:	f1b8 0f00 	cmp.w	r8, #0
 8004e3e:	dd05      	ble.n	8004e4c <_dtoa_r+0x6dc>
 8004e40:	4631      	mov	r1, r6
 8004e42:	4642      	mov	r2, r8
 8004e44:	4648      	mov	r0, r9
 8004e46:	f001 fa99 	bl	800637c <__lshift>
 8004e4a:	4606      	mov	r6, r0
 8004e4c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004e4e:	2b00      	cmp	r3, #0
 8004e50:	d177      	bne.n	8004f42 <_dtoa_r+0x7d2>
 8004e52:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e54:	2b00      	cmp	r3, #0
 8004e56:	f340 8209 	ble.w	800526c <_dtoa_r+0xafc>
 8004e5a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004e5c:	2b00      	cmp	r3, #0
 8004e5e:	f000 8089 	beq.w	8004f74 <_dtoa_r+0x804>
 8004e62:	2c00      	cmp	r4, #0
 8004e64:	f300 816b 	bgt.w	800513e <_dtoa_r+0x9ce>
 8004e68:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004e6a:	2b00      	cmp	r3, #0
 8004e6c:	f040 81cd 	bne.w	800520a <_dtoa_r+0xa9a>
 8004e70:	46a8      	mov	r8, r5
 8004e72:	9a00      	ldr	r2, [sp, #0]
 8004e74:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004e78:	f002 0201 	and.w	r2, r2, #1
 8004e7c:	920a      	str	r2, [sp, #40]	; 0x28
 8004e7e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004e80:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004e84:	441a      	add	r2, r3
 8004e86:	465f      	mov	r7, fp
 8004e88:	9209      	str	r2, [sp, #36]	; 0x24
 8004e8a:	46b3      	mov	fp, r6
 8004e8c:	4659      	mov	r1, fp
 8004e8e:	4650      	mov	r0, sl
 8004e90:	f7ff fbdc 	bl	800464c <quorem>
 8004e94:	4629      	mov	r1, r5
 8004e96:	4604      	mov	r4, r0
 8004e98:	4650      	mov	r0, sl
 8004e9a:	f001 fac5 	bl	8006428 <__mcmp>
 8004e9e:	4659      	mov	r1, fp
 8004ea0:	4606      	mov	r6, r0
 8004ea2:	4642      	mov	r2, r8
 8004ea4:	4648      	mov	r0, r9
 8004ea6:	f001 fadb 	bl	8006460 <__mdiff>
 8004eaa:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004eae:	9300      	str	r3, [sp, #0]
 8004eb0:	68c3      	ldr	r3, [r0, #12]
 8004eb2:	4601      	mov	r1, r0
 8004eb4:	2b00      	cmp	r3, #0
 8004eb6:	f040 81d4 	bne.w	8005262 <_dtoa_r+0xaf2>
 8004eba:	9008      	str	r0, [sp, #32]
 8004ebc:	4650      	mov	r0, sl
 8004ebe:	f001 fab3 	bl	8006428 <__mcmp>
 8004ec2:	9a08      	ldr	r2, [sp, #32]
 8004ec4:	9007      	str	r0, [sp, #28]
 8004ec6:	4611      	mov	r1, r2
 8004ec8:	4648      	mov	r0, r9
 8004eca:	f001 f8bd 	bl	8006048 <_Bfree>
 8004ece:	9b07      	ldr	r3, [sp, #28]
 8004ed0:	b933      	cbnz	r3, 8004ee0 <_dtoa_r+0x770>
 8004ed2:	9a02      	ldr	r2, [sp, #8]
 8004ed4:	b922      	cbnz	r2, 8004ee0 <_dtoa_r+0x770>
 8004ed6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004ed8:	2b00      	cmp	r3, #0
 8004eda:	f000 8319 	beq.w	8005510 <_dtoa_r+0xda0>
 8004ede:	9b02      	ldr	r3, [sp, #8]
 8004ee0:	2e00      	cmp	r6, #0
 8004ee2:	f2c0 821c 	blt.w	800531e <_dtoa_r+0xbae>
 8004ee6:	d105      	bne.n	8004ef4 <_dtoa_r+0x784>
 8004ee8:	9a02      	ldr	r2, [sp, #8]
 8004eea:	b91a      	cbnz	r2, 8004ef4 <_dtoa_r+0x784>
 8004eec:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004eee:	2a00      	cmp	r2, #0
 8004ef0:	f000 8215 	beq.w	800531e <_dtoa_r+0xbae>
 8004ef4:	2b00      	cmp	r3, #0
 8004ef6:	f107 0401 	add.w	r4, r7, #1
 8004efa:	f300 8225 	bgt.w	8005348 <_dtoa_r+0xbd8>
 8004efe:	9b00      	ldr	r3, [sp, #0]
 8004f00:	703b      	strb	r3, [r7, #0]
 8004f02:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f04:	42bb      	cmp	r3, r7
 8004f06:	f000 8230 	beq.w	800536a <_dtoa_r+0xbfa>
 8004f0a:	4651      	mov	r1, sl
 8004f0c:	2300      	movs	r3, #0
 8004f0e:	220a      	movs	r2, #10
 8004f10:	4648      	mov	r0, r9
 8004f12:	f001 f8a3 	bl	800605c <__multadd>
 8004f16:	4545      	cmp	r5, r8
 8004f18:	4682      	mov	sl, r0
 8004f1a:	4629      	mov	r1, r5
 8004f1c:	f04f 0300 	mov.w	r3, #0
 8004f20:	f04f 020a 	mov.w	r2, #10
 8004f24:	4648      	mov	r0, r9
 8004f26:	f000 8196 	beq.w	8005256 <_dtoa_r+0xae6>
 8004f2a:	f001 f897 	bl	800605c <__multadd>
 8004f2e:	4641      	mov	r1, r8
 8004f30:	4605      	mov	r5, r0
 8004f32:	2300      	movs	r3, #0
 8004f34:	220a      	movs	r2, #10
 8004f36:	4648      	mov	r0, r9
 8004f38:	f001 f890 	bl	800605c <__multadd>
 8004f3c:	4627      	mov	r7, r4
 8004f3e:	4680      	mov	r8, r0
 8004f40:	e7a4      	b.n	8004e8c <_dtoa_r+0x71c>
 8004f42:	4631      	mov	r1, r6
 8004f44:	4650      	mov	r0, sl
 8004f46:	f001 fa6f 	bl	8006428 <__mcmp>
 8004f4a:	2800      	cmp	r0, #0
 8004f4c:	da81      	bge.n	8004e52 <_dtoa_r+0x6e2>
 8004f4e:	9f06      	ldr	r7, [sp, #24]
 8004f50:	4651      	mov	r1, sl
 8004f52:	2300      	movs	r3, #0
 8004f54:	220a      	movs	r2, #10
 8004f56:	4648      	mov	r0, r9
 8004f58:	3f01      	subs	r7, #1
 8004f5a:	9706      	str	r7, [sp, #24]
 8004f5c:	f001 f87e 	bl	800605c <__multadd>
 8004f60:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004f62:	4682      	mov	sl, r0
 8004f64:	2b00      	cmp	r3, #0
 8004f66:	f040 82eb 	bne.w	8005540 <_dtoa_r+0xdd0>
 8004f6a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f6c:	2b00      	cmp	r3, #0
 8004f6e:	f340 82f3 	ble.w	8005558 <_dtoa_r+0xde8>
 8004f72:	9309      	str	r3, [sp, #36]	; 0x24
 8004f74:	465c      	mov	r4, fp
 8004f76:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004f7a:	e002      	b.n	8004f82 <_dtoa_r+0x812>
 8004f7c:	f001 f86e 	bl	800605c <__multadd>
 8004f80:	4682      	mov	sl, r0
 8004f82:	4631      	mov	r1, r6
 8004f84:	4650      	mov	r0, sl
 8004f86:	f7ff fb61 	bl	800464c <quorem>
 8004f8a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004f8e:	f804 7b01 	strb.w	r7, [r4], #1
 8004f92:	eba4 030b 	sub.w	r3, r4, fp
 8004f96:	4598      	cmp	r8, r3
 8004f98:	f04f 020a 	mov.w	r2, #10
 8004f9c:	f04f 0300 	mov.w	r3, #0
 8004fa0:	4651      	mov	r1, sl
 8004fa2:	4648      	mov	r0, r9
 8004fa4:	dcea      	bgt.n	8004f7c <_dtoa_r+0x80c>
 8004fa6:	2300      	movs	r3, #0
 8004fa8:	9700      	str	r7, [sp, #0]
 8004faa:	9302      	str	r3, [sp, #8]
 8004fac:	4651      	mov	r1, sl
 8004fae:	2201      	movs	r2, #1
 8004fb0:	4648      	mov	r0, r9
 8004fb2:	f001 f9e3 	bl	800637c <__lshift>
 8004fb6:	4631      	mov	r1, r6
 8004fb8:	4682      	mov	sl, r0
 8004fba:	f001 fa35 	bl	8006428 <__mcmp>
 8004fbe:	2800      	cmp	r0, #0
 8004fc0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004fc4:	dc14      	bgt.n	8004ff0 <_dtoa_r+0x880>
 8004fc6:	d108      	bne.n	8004fda <_dtoa_r+0x86a>
 8004fc8:	9b00      	ldr	r3, [sp, #0]
 8004fca:	07db      	lsls	r3, r3, #31
 8004fcc:	d410      	bmi.n	8004ff0 <_dtoa_r+0x880>
 8004fce:	e004      	b.n	8004fda <_dtoa_r+0x86a>
 8004fd0:	40240000 	.word	0x40240000
 8004fd4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004fd8:	461c      	mov	r4, r3
 8004fda:	2a30      	cmp	r2, #48	; 0x30
 8004fdc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004fe0:	d0f8      	beq.n	8004fd4 <_dtoa_r+0x864>
 8004fe2:	e00b      	b.n	8004ffc <_dtoa_r+0x88c>
 8004fe4:	459b      	cmp	fp, r3
 8004fe6:	f000 814e 	beq.w	8005286 <_dtoa_r+0xb16>
 8004fea:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004fee:	461c      	mov	r4, r3
 8004ff0:	2a39      	cmp	r2, #57	; 0x39
 8004ff2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ff6:	d0f5      	beq.n	8004fe4 <_dtoa_r+0x874>
 8004ff8:	3201      	adds	r2, #1
 8004ffa:	701a      	strb	r2, [r3, #0]
 8004ffc:	4631      	mov	r1, r6
 8004ffe:	4648      	mov	r0, r9
 8005000:	f001 f822 	bl	8006048 <_Bfree>
 8005004:	b155      	cbz	r5, 800501c <_dtoa_r+0x8ac>
 8005006:	9902      	ldr	r1, [sp, #8]
 8005008:	b121      	cbz	r1, 8005014 <_dtoa_r+0x8a4>
 800500a:	42a9      	cmp	r1, r5
 800500c:	d002      	beq.n	8005014 <_dtoa_r+0x8a4>
 800500e:	4648      	mov	r0, r9
 8005010:	f001 f81a 	bl	8006048 <_Bfree>
 8005014:	4629      	mov	r1, r5
 8005016:	4648      	mov	r0, r9
 8005018:	f001 f816 	bl	8006048 <_Bfree>
 800501c:	4651      	mov	r1, sl
 800501e:	4648      	mov	r0, r9
 8005020:	f001 f812 	bl	8006048 <_Bfree>
 8005024:	2200      	movs	r2, #0
 8005026:	9b06      	ldr	r3, [sp, #24]
 8005028:	7022      	strb	r2, [r4, #0]
 800502a:	9a05      	ldr	r2, [sp, #20]
 800502c:	3301      	adds	r3, #1
 800502e:	6013      	str	r3, [r2, #0]
 8005030:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005032:	2b00      	cmp	r3, #0
 8005034:	f43f abdb 	beq.w	80047ee <_dtoa_r+0x7e>
 8005038:	4658      	mov	r0, fp
 800503a:	601c      	str	r4, [r3, #0]
 800503c:	b01b      	add	sp, #108	; 0x6c
 800503e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005042:	201c      	movs	r0, #28
 8005044:	e6eb      	b.n	8004e1e <_dtoa_r+0x6ae>
 8005046:	4601      	mov	r1, r0
 8005048:	4648      	mov	r0, r9
 800504a:	f001 f947 	bl	80062dc <__pow5mult>
 800504e:	9b02      	ldr	r3, [sp, #8]
 8005050:	2b01      	cmp	r3, #1
 8005052:	4606      	mov	r6, r0
 8005054:	f340 80d4 	ble.w	8005200 <_dtoa_r+0xa90>
 8005058:	2300      	movs	r3, #0
 800505a:	930c      	str	r3, [sp, #48]	; 0x30
 800505c:	6933      	ldr	r3, [r6, #16]
 800505e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8005062:	6918      	ldr	r0, [r3, #16]
 8005064:	f001 f83a 	bl	80060dc <__hi0bits>
 8005068:	f1c0 0020 	rsb	r0, r0, #32
 800506c:	e6cb      	b.n	8004e06 <_dtoa_r+0x696>
 800506e:	900d      	str	r0, [sp, #52]	; 0x34
 8005070:	e42a      	b.n	80048c8 <_dtoa_r+0x158>
 8005072:	2501      	movs	r5, #1
 8005074:	e440      	b.n	80048f8 <_dtoa_r+0x188>
 8005076:	f1c3 0820 	rsb	r8, r3, #32
 800507a:	9b00      	ldr	r3, [sp, #0]
 800507c:	fa03 f008 	lsl.w	r0, r3, r8
 8005080:	f7ff bbd8 	b.w	8004834 <_dtoa_r+0xc4>
 8005084:	2300      	movs	r3, #0
 8005086:	930a      	str	r3, [sp, #40]	; 0x28
 8005088:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 800508c:	4413      	add	r3, r2
 800508e:	930e      	str	r3, [sp, #56]	; 0x38
 8005090:	3301      	adds	r3, #1
 8005092:	2b01      	cmp	r3, #1
 8005094:	461e      	mov	r6, r3
 8005096:	9309      	str	r3, [sp, #36]	; 0x24
 8005098:	bfb8      	it	lt
 800509a:	2601      	movlt	r6, #1
 800509c:	2100      	movs	r1, #0
 800509e:	2e17      	cmp	r6, #23
 80050a0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80050a4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80050a6:	f77f ac89 	ble.w	80049bc <_dtoa_r+0x24c>
 80050aa:	2201      	movs	r2, #1
 80050ac:	2304      	movs	r3, #4
 80050ae:	005b      	lsls	r3, r3, #1
 80050b0:	f103 0014 	add.w	r0, r3, #20
 80050b4:	42b0      	cmp	r0, r6
 80050b6:	4611      	mov	r1, r2
 80050b8:	f102 0201 	add.w	r2, r2, #1
 80050bc:	d9f7      	bls.n	80050ae <_dtoa_r+0x93e>
 80050be:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80050c2:	e47b      	b.n	80049bc <_dtoa_r+0x24c>
 80050c4:	2300      	movs	r3, #0
 80050c6:	930a      	str	r3, [sp, #40]	; 0x28
 80050c8:	9e07      	ldr	r6, [sp, #28]
 80050ca:	2e00      	cmp	r6, #0
 80050cc:	f340 80e2 	ble.w	8005294 <_dtoa_r+0xb24>
 80050d0:	960e      	str	r6, [sp, #56]	; 0x38
 80050d2:	9609      	str	r6, [sp, #36]	; 0x24
 80050d4:	e7e2      	b.n	800509c <_dtoa_r+0x92c>
 80050d6:	2301      	movs	r3, #1
 80050d8:	930a      	str	r3, [sp, #40]	; 0x28
 80050da:	e7f5      	b.n	80050c8 <_dtoa_r+0x958>
 80050dc:	9b00      	ldr	r3, [sp, #0]
 80050de:	2b00      	cmp	r3, #0
 80050e0:	f47f ae90 	bne.w	8004e04 <_dtoa_r+0x694>
 80050e4:	e9dd 1200 	ldrd	r1, r2, [sp]
 80050e8:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80050ec:	2b00      	cmp	r3, #0
 80050ee:	f040 8192 	bne.w	8005416 <_dtoa_r+0xca6>
 80050f2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80050f6:	0d1b      	lsrs	r3, r3, #20
 80050f8:	051b      	lsls	r3, r3, #20
 80050fa:	b12b      	cbz	r3, 8005108 <_dtoa_r+0x998>
 80050fc:	9b08      	ldr	r3, [sp, #32]
 80050fe:	3301      	adds	r3, #1
 8005100:	9308      	str	r3, [sp, #32]
 8005102:	f108 0801 	add.w	r8, r8, #1
 8005106:	2301      	movs	r3, #1
 8005108:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800510a:	930c      	str	r3, [sp, #48]	; 0x30
 800510c:	2a00      	cmp	r2, #0
 800510e:	f43f ae79 	beq.w	8004e04 <_dtoa_r+0x694>
 8005112:	e7a3      	b.n	800505c <_dtoa_r+0x8ec>
 8005114:	463a      	mov	r2, r7
 8005116:	4629      	mov	r1, r5
 8005118:	4648      	mov	r0, r9
 800511a:	f001 f8df 	bl	80062dc <__pow5mult>
 800511e:	4652      	mov	r2, sl
 8005120:	4601      	mov	r1, r0
 8005122:	4605      	mov	r5, r0
 8005124:	4648      	mov	r0, r9
 8005126:	f001 f833 	bl	8006190 <__multiply>
 800512a:	4651      	mov	r1, sl
 800512c:	4607      	mov	r7, r0
 800512e:	4648      	mov	r0, r9
 8005130:	f000 ff8a 	bl	8006048 <_Bfree>
 8005134:	46ba      	mov	sl, r7
 8005136:	2e00      	cmp	r6, #0
 8005138:	f43f ae57 	beq.w	8004dea <_dtoa_r+0x67a>
 800513c:	e64f      	b.n	8004dde <_dtoa_r+0x66e>
 800513e:	4629      	mov	r1, r5
 8005140:	4622      	mov	r2, r4
 8005142:	4648      	mov	r0, r9
 8005144:	f001 f91a 	bl	800637c <__lshift>
 8005148:	4605      	mov	r5, r0
 800514a:	e68d      	b.n	8004e68 <_dtoa_r+0x6f8>
 800514c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800514e:	2a00      	cmp	r2, #0
 8005150:	f000 815d 	beq.w	800540e <_dtoa_r+0xc9e>
 8005154:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8005158:	9a08      	ldr	r2, [sp, #32]
 800515a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 800515c:	4614      	mov	r4, r2
 800515e:	441a      	add	r2, r3
 8005160:	4498      	add	r8, r3
 8005162:	9208      	str	r2, [sp, #32]
 8005164:	e5f7      	b.n	8004d56 <_dtoa_r+0x5e6>
 8005166:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005168:	2b00      	cmp	r3, #0
 800516a:	f73f ad3e 	bgt.w	8004bea <_dtoa_r+0x47a>
 800516e:	f040 80bc 	bne.w	80052ea <_dtoa_r+0xb7a>
 8005172:	ec51 0b17 	vmov	r0, r1, d7
 8005176:	2200      	movs	r2, #0
 8005178:	4bb2      	ldr	r3, [pc, #712]	; (8005444 <_dtoa_r+0xcd4>)
 800517a:	f7fb fcdd 	bl	8000b38 <__aeabi_dmul>
 800517e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005182:	f7fb ff5f 	bl	8001044 <__aeabi_dcmpge>
 8005186:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8005188:	4635      	mov	r5, r6
 800518a:	2800      	cmp	r0, #0
 800518c:	d176      	bne.n	800527c <_dtoa_r+0xb0c>
 800518e:	9a06      	ldr	r2, [sp, #24]
 8005190:	2331      	movs	r3, #49	; 0x31
 8005192:	3201      	adds	r2, #1
 8005194:	9206      	str	r2, [sp, #24]
 8005196:	f88b 3000 	strb.w	r3, [fp]
 800519a:	f10b 0401 	add.w	r4, fp, #1
 800519e:	4631      	mov	r1, r6
 80051a0:	4648      	mov	r0, r9
 80051a2:	f000 ff51 	bl	8006048 <_Bfree>
 80051a6:	2d00      	cmp	r5, #0
 80051a8:	f47f af34 	bne.w	8005014 <_dtoa_r+0x8a4>
 80051ac:	e736      	b.n	800501c <_dtoa_r+0x8ac>
 80051ae:	f000 8142 	beq.w	8005436 <_dtoa_r+0xcc6>
 80051b2:	9b06      	ldr	r3, [sp, #24]
 80051b4:	425c      	negs	r4, r3
 80051b6:	4ba4      	ldr	r3, [pc, #656]	; (8005448 <_dtoa_r+0xcd8>)
 80051b8:	f004 020f 	and.w	r2, r4, #15
 80051bc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80051c0:	e9d3 2300 	ldrd	r2, r3, [r3]
 80051c4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80051c8:	f7fb fcb6 	bl	8000b38 <__aeabi_dmul>
 80051cc:	1124      	asrs	r4, r4, #4
 80051ce:	e9cd 0100 	strd	r0, r1, [sp]
 80051d2:	f000 81c6 	beq.w	8005562 <_dtoa_r+0xdf2>
 80051d6:	4d9d      	ldr	r5, [pc, #628]	; (800544c <_dtoa_r+0xcdc>)
 80051d8:	2300      	movs	r3, #0
 80051da:	2602      	movs	r6, #2
 80051dc:	07e7      	lsls	r7, r4, #31
 80051de:	d505      	bpl.n	80051ec <_dtoa_r+0xa7c>
 80051e0:	e9d5 2300 	ldrd	r2, r3, [r5]
 80051e4:	f7fb fca8 	bl	8000b38 <__aeabi_dmul>
 80051e8:	3601      	adds	r6, #1
 80051ea:	2301      	movs	r3, #1
 80051ec:	1064      	asrs	r4, r4, #1
 80051ee:	f105 0508 	add.w	r5, r5, #8
 80051f2:	d1f3      	bne.n	80051dc <_dtoa_r+0xa6c>
 80051f4:	2b00      	cmp	r3, #0
 80051f6:	f43f ac27 	beq.w	8004a48 <_dtoa_r+0x2d8>
 80051fa:	e9cd 0100 	strd	r0, r1, [sp]
 80051fe:	e423      	b.n	8004a48 <_dtoa_r+0x2d8>
 8005200:	9b00      	ldr	r3, [sp, #0]
 8005202:	2b00      	cmp	r3, #0
 8005204:	f43f af6e 	beq.w	80050e4 <_dtoa_r+0x974>
 8005208:	e726      	b.n	8005058 <_dtoa_r+0x8e8>
 800520a:	6869      	ldr	r1, [r5, #4]
 800520c:	4648      	mov	r0, r9
 800520e:	f000 fef5 	bl	8005ffc <_Balloc>
 8005212:	692b      	ldr	r3, [r5, #16]
 8005214:	3302      	adds	r3, #2
 8005216:	009a      	lsls	r2, r3, #2
 8005218:	4604      	mov	r4, r0
 800521a:	f105 010c 	add.w	r1, r5, #12
 800521e:	300c      	adds	r0, #12
 8005220:	f7fb f96e 	bl	8000500 <memcpy>
 8005224:	4621      	mov	r1, r4
 8005226:	2201      	movs	r2, #1
 8005228:	4648      	mov	r0, r9
 800522a:	f001 f8a7 	bl	800637c <__lshift>
 800522e:	4680      	mov	r8, r0
 8005230:	e61f      	b.n	8004e72 <_dtoa_r+0x702>
 8005232:	2400      	movs	r4, #0
 8005234:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005238:	4621      	mov	r1, r4
 800523a:	4648      	mov	r0, r9
 800523c:	f000 fede 	bl	8005ffc <_Balloc>
 8005240:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005244:	930e      	str	r3, [sp, #56]	; 0x38
 8005246:	9309      	str	r3, [sp, #36]	; 0x24
 8005248:	2301      	movs	r3, #1
 800524a:	4683      	mov	fp, r0
 800524c:	9407      	str	r4, [sp, #28]
 800524e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8005252:	930a      	str	r3, [sp, #40]	; 0x28
 8005254:	e4b6      	b.n	8004bc4 <_dtoa_r+0x454>
 8005256:	f000 ff01 	bl	800605c <__multadd>
 800525a:	4627      	mov	r7, r4
 800525c:	4605      	mov	r5, r0
 800525e:	4680      	mov	r8, r0
 8005260:	e614      	b.n	8004e8c <_dtoa_r+0x71c>
 8005262:	4648      	mov	r0, r9
 8005264:	f000 fef0 	bl	8006048 <_Bfree>
 8005268:	2301      	movs	r3, #1
 800526a:	e639      	b.n	8004ee0 <_dtoa_r+0x770>
 800526c:	9b02      	ldr	r3, [sp, #8]
 800526e:	2b02      	cmp	r3, #2
 8005270:	f77f adf3 	ble.w	8004e5a <_dtoa_r+0x6ea>
 8005274:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005276:	2b00      	cmp	r3, #0
 8005278:	f000 80cf 	beq.w	800541a <_dtoa_r+0xcaa>
 800527c:	9b07      	ldr	r3, [sp, #28]
 800527e:	43db      	mvns	r3, r3
 8005280:	9306      	str	r3, [sp, #24]
 8005282:	465c      	mov	r4, fp
 8005284:	e78b      	b.n	800519e <_dtoa_r+0xa2e>
 8005286:	9a06      	ldr	r2, [sp, #24]
 8005288:	2331      	movs	r3, #49	; 0x31
 800528a:	3201      	adds	r2, #1
 800528c:	9206      	str	r2, [sp, #24]
 800528e:	f88b 3000 	strb.w	r3, [fp]
 8005292:	e6b3      	b.n	8004ffc <_dtoa_r+0x88c>
 8005294:	2401      	movs	r4, #1
 8005296:	9409      	str	r4, [sp, #36]	; 0x24
 8005298:	9407      	str	r4, [sp, #28]
 800529a:	f7ff bb8b 	b.w	80049b4 <_dtoa_r+0x244>
 800529e:	4630      	mov	r0, r6
 80052a0:	f7fb fbe0 	bl	8000a64 <__aeabi_i2d>
 80052a4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80052a8:	f7fb fc46 	bl	8000b38 <__aeabi_dmul>
 80052ac:	2200      	movs	r2, #0
 80052ae:	4b68      	ldr	r3, [pc, #416]	; (8005450 <_dtoa_r+0xce0>)
 80052b0:	f7fb fa8c 	bl	80007cc <__adddf3>
 80052b4:	4606      	mov	r6, r0
 80052b6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80052ba:	2200      	movs	r2, #0
 80052bc:	4b61      	ldr	r3, [pc, #388]	; (8005444 <_dtoa_r+0xcd4>)
 80052be:	e9dd 0100 	ldrd	r0, r1, [sp]
 80052c2:	f7fb fa81 	bl	80007c8 <__aeabi_dsub>
 80052c6:	4632      	mov	r2, r6
 80052c8:	463b      	mov	r3, r7
 80052ca:	4604      	mov	r4, r0
 80052cc:	460d      	mov	r5, r1
 80052ce:	f7fb fec3 	bl	8001058 <__aeabi_dcmpgt>
 80052d2:	2800      	cmp	r0, #0
 80052d4:	d14f      	bne.n	8005376 <_dtoa_r+0xc06>
 80052d6:	4632      	mov	r2, r6
 80052d8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80052dc:	4620      	mov	r0, r4
 80052de:	4629      	mov	r1, r5
 80052e0:	f7fb fe9c 	bl	800101c <__aeabi_dcmplt>
 80052e4:	2800      	cmp	r0, #0
 80052e6:	f43f ac69 	beq.w	8004bbc <_dtoa_r+0x44c>
 80052ea:	2600      	movs	r6, #0
 80052ec:	4635      	mov	r5, r6
 80052ee:	e7c5      	b.n	800527c <_dtoa_r+0xb0c>
 80052f0:	2301      	movs	r3, #1
 80052f2:	930a      	str	r3, [sp, #40]	; 0x28
 80052f4:	e6c8      	b.n	8005088 <_dtoa_r+0x918>
 80052f6:	4651      	mov	r1, sl
 80052f8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80052fa:	4648      	mov	r0, r9
 80052fc:	f000 ffee 	bl	80062dc <__pow5mult>
 8005300:	4682      	mov	sl, r0
 8005302:	e572      	b.n	8004dea <_dtoa_r+0x67a>
 8005304:	f8dd a000 	ldr.w	sl, [sp]
 8005308:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800530c:	e686      	b.n	800501c <_dtoa_r+0x8ac>
 800530e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005310:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005312:	1afb      	subs	r3, r7, r3
 8005314:	441a      	add	r2, r3
 8005316:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 800531a:	2700      	movs	r7, #0
 800531c:	e512      	b.n	8004d44 <_dtoa_r+0x5d4>
 800531e:	2b00      	cmp	r3, #0
 8005320:	9402      	str	r4, [sp, #8]
 8005322:	465e      	mov	r6, fp
 8005324:	f107 0401 	add.w	r4, r7, #1
 8005328:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800532c:	f300 80ba 	bgt.w	80054a4 <_dtoa_r+0xd34>
 8005330:	9b00      	ldr	r3, [sp, #0]
 8005332:	9502      	str	r5, [sp, #8]
 8005334:	703b      	strb	r3, [r7, #0]
 8005336:	4645      	mov	r5, r8
 8005338:	e660      	b.n	8004ffc <_dtoa_r+0x88c>
 800533a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800533e:	2602      	movs	r6, #2
 8005340:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005344:	f7ff bb67 	b.w	8004a16 <_dtoa_r+0x2a6>
 8005348:	9b00      	ldr	r3, [sp, #0]
 800534a:	2b39      	cmp	r3, #57	; 0x39
 800534c:	465e      	mov	r6, fp
 800534e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005352:	f000 80b9 	beq.w	80054c8 <_dtoa_r+0xd58>
 8005356:	9b00      	ldr	r3, [sp, #0]
 8005358:	9502      	str	r5, [sp, #8]
 800535a:	3301      	adds	r3, #1
 800535c:	703b      	strb	r3, [r7, #0]
 800535e:	4645      	mov	r5, r8
 8005360:	e64c      	b.n	8004ffc <_dtoa_r+0x88c>
 8005362:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8005366:	1a9c      	subs	r4, r3, r2
 8005368:	e4f5      	b.n	8004d56 <_dtoa_r+0x5e6>
 800536a:	465e      	mov	r6, fp
 800536c:	9502      	str	r5, [sp, #8]
 800536e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005372:	4645      	mov	r5, r8
 8005374:	e61a      	b.n	8004fac <_dtoa_r+0x83c>
 8005376:	2600      	movs	r6, #0
 8005378:	4635      	mov	r5, r6
 800537a:	e708      	b.n	800518e <_dtoa_r+0xa1e>
 800537c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005380:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005384:	f7fb fbd8 	bl	8000b38 <__aeabi_dmul>
 8005388:	9b12      	ldr	r3, [sp, #72]	; 0x48
 800538a:	f88b 5000 	strb.w	r5, [fp]
 800538e:	2b01      	cmp	r3, #1
 8005390:	e9cd 0100 	strd	r0, r1, [sp]
 8005394:	d020      	beq.n	80053d8 <_dtoa_r+0xc68>
 8005396:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005398:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 800539c:	445b      	add	r3, fp
 800539e:	4698      	mov	r8, r3
 80053a0:	2200      	movs	r2, #0
 80053a2:	4b2c      	ldr	r3, [pc, #176]	; (8005454 <_dtoa_r+0xce4>)
 80053a4:	4630      	mov	r0, r6
 80053a6:	4639      	mov	r1, r7
 80053a8:	f7fb fbc6 	bl	8000b38 <__aeabi_dmul>
 80053ac:	460f      	mov	r7, r1
 80053ae:	4606      	mov	r6, r0
 80053b0:	f7fb fe72 	bl	8001098 <__aeabi_d2iz>
 80053b4:	4605      	mov	r5, r0
 80053b6:	f7fb fb55 	bl	8000a64 <__aeabi_i2d>
 80053ba:	3530      	adds	r5, #48	; 0x30
 80053bc:	4602      	mov	r2, r0
 80053be:	460b      	mov	r3, r1
 80053c0:	4630      	mov	r0, r6
 80053c2:	4639      	mov	r1, r7
 80053c4:	f7fb fa00 	bl	80007c8 <__aeabi_dsub>
 80053c8:	f804 5b01 	strb.w	r5, [r4], #1
 80053cc:	4544      	cmp	r4, r8
 80053ce:	4606      	mov	r6, r0
 80053d0:	460f      	mov	r7, r1
 80053d2:	d1e5      	bne.n	80053a0 <_dtoa_r+0xc30>
 80053d4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80053d8:	4b1f      	ldr	r3, [pc, #124]	; (8005458 <_dtoa_r+0xce8>)
 80053da:	2200      	movs	r2, #0
 80053dc:	e9dd 0100 	ldrd	r0, r1, [sp]
 80053e0:	f7fb f9f4 	bl	80007cc <__adddf3>
 80053e4:	4632      	mov	r2, r6
 80053e6:	463b      	mov	r3, r7
 80053e8:	f7fb fe18 	bl	800101c <__aeabi_dcmplt>
 80053ec:	2800      	cmp	r0, #0
 80053ee:	d070      	beq.n	80054d2 <_dtoa_r+0xd62>
 80053f0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80053f2:	9306      	str	r3, [sp, #24]
 80053f4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80053f8:	e48f      	b.n	8004d1a <_dtoa_r+0x5aa>
 80053fa:	2330      	movs	r3, #48	; 0x30
 80053fc:	f88b 3000 	strb.w	r3, [fp]
 8005400:	9b06      	ldr	r3, [sp, #24]
 8005402:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005406:	3301      	adds	r3, #1
 8005408:	9306      	str	r3, [sp, #24]
 800540a:	465b      	mov	r3, fp
 800540c:	e489      	b.n	8004d22 <_dtoa_r+0x5b2>
 800540e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005410:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8005414:	e6a0      	b.n	8005158 <_dtoa_r+0x9e8>
 8005416:	2300      	movs	r3, #0
 8005418:	e676      	b.n	8005108 <_dtoa_r+0x998>
 800541a:	4631      	mov	r1, r6
 800541c:	2205      	movs	r2, #5
 800541e:	4648      	mov	r0, r9
 8005420:	f000 fe1c 	bl	800605c <__multadd>
 8005424:	4601      	mov	r1, r0
 8005426:	4606      	mov	r6, r0
 8005428:	4650      	mov	r0, sl
 800542a:	f000 fffd 	bl	8006428 <__mcmp>
 800542e:	2800      	cmp	r0, #0
 8005430:	f73f aead 	bgt.w	800518e <_dtoa_r+0xa1e>
 8005434:	e722      	b.n	800527c <_dtoa_r+0xb0c>
 8005436:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800543a:	2602      	movs	r6, #2
 800543c:	ed8d 7b00 	vstr	d7, [sp]
 8005440:	f7ff bb02 	b.w	8004a48 <_dtoa_r+0x2d8>
 8005444:	40140000 	.word	0x40140000
 8005448:	08007278 	.word	0x08007278
 800544c:	08007250 	.word	0x08007250
 8005450:	401c0000 	.word	0x401c0000
 8005454:	40240000 	.word	0x40240000
 8005458:	3fe00000 	.word	0x3fe00000
 800545c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800545e:	2b00      	cmp	r3, #0
 8005460:	f43f af1d 	beq.w	800529e <_dtoa_r+0xb2e>
 8005464:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8005466:	2c00      	cmp	r4, #0
 8005468:	f77f aba8 	ble.w	8004bbc <_dtoa_r+0x44c>
 800546c:	2200      	movs	r2, #0
 800546e:	4b45      	ldr	r3, [pc, #276]	; (8005584 <_dtoa_r+0xe14>)
 8005470:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005474:	f7fb fb60 	bl	8000b38 <__aeabi_dmul>
 8005478:	e9cd 0100 	strd	r0, r1, [sp]
 800547c:	1c70      	adds	r0, r6, #1
 800547e:	f7fb faf1 	bl	8000a64 <__aeabi_i2d>
 8005482:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005486:	f7fb fb57 	bl	8000b38 <__aeabi_dmul>
 800548a:	4b3f      	ldr	r3, [pc, #252]	; (8005588 <_dtoa_r+0xe18>)
 800548c:	2200      	movs	r2, #0
 800548e:	f7fb f99d 	bl	80007cc <__adddf3>
 8005492:	9b06      	ldr	r3, [sp, #24]
 8005494:	9412      	str	r4, [sp, #72]	; 0x48
 8005496:	3b01      	subs	r3, #1
 8005498:	4606      	mov	r6, r0
 800549a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800549e:	9316      	str	r3, [sp, #88]	; 0x58
 80054a0:	f7ff baf3 	b.w	8004a8a <_dtoa_r+0x31a>
 80054a4:	4651      	mov	r1, sl
 80054a6:	2201      	movs	r2, #1
 80054a8:	4648      	mov	r0, r9
 80054aa:	f000 ff67 	bl	800637c <__lshift>
 80054ae:	4631      	mov	r1, r6
 80054b0:	4682      	mov	sl, r0
 80054b2:	f000 ffb9 	bl	8006428 <__mcmp>
 80054b6:	2800      	cmp	r0, #0
 80054b8:	dd3b      	ble.n	8005532 <_dtoa_r+0xdc2>
 80054ba:	9b00      	ldr	r3, [sp, #0]
 80054bc:	2b39      	cmp	r3, #57	; 0x39
 80054be:	d003      	beq.n	80054c8 <_dtoa_r+0xd58>
 80054c0:	9b02      	ldr	r3, [sp, #8]
 80054c2:	3331      	adds	r3, #49	; 0x31
 80054c4:	9300      	str	r3, [sp, #0]
 80054c6:	e733      	b.n	8005330 <_dtoa_r+0xbc0>
 80054c8:	2239      	movs	r2, #57	; 0x39
 80054ca:	9502      	str	r5, [sp, #8]
 80054cc:	703a      	strb	r2, [r7, #0]
 80054ce:	4645      	mov	r5, r8
 80054d0:	e58e      	b.n	8004ff0 <_dtoa_r+0x880>
 80054d2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80054d6:	2000      	movs	r0, #0
 80054d8:	492c      	ldr	r1, [pc, #176]	; (800558c <_dtoa_r+0xe1c>)
 80054da:	f7fb f975 	bl	80007c8 <__aeabi_dsub>
 80054de:	4632      	mov	r2, r6
 80054e0:	463b      	mov	r3, r7
 80054e2:	f7fb fdb9 	bl	8001058 <__aeabi_dcmpgt>
 80054e6:	b910      	cbnz	r0, 80054ee <_dtoa_r+0xd7e>
 80054e8:	f7ff bb68 	b.w	8004bbc <_dtoa_r+0x44c>
 80054ec:	4614      	mov	r4, r2
 80054ee:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80054f2:	2b30      	cmp	r3, #48	; 0x30
 80054f4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80054f8:	d0f8      	beq.n	80054ec <_dtoa_r+0xd7c>
 80054fa:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80054fc:	9306      	str	r3, [sp, #24]
 80054fe:	e58d      	b.n	800501c <_dtoa_r+0x8ac>
 8005500:	46d9      	mov	r9, fp
 8005502:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005506:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800550a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800550c:	9306      	str	r3, [sp, #24]
 800550e:	e404      	b.n	8004d1a <_dtoa_r+0x5aa>
 8005510:	9b00      	ldr	r3, [sp, #0]
 8005512:	2b39      	cmp	r3, #57	; 0x39
 8005514:	4621      	mov	r1, r4
 8005516:	4632      	mov	r2, r6
 8005518:	f107 0401 	add.w	r4, r7, #1
 800551c:	465e      	mov	r6, fp
 800551e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005522:	d0d1      	beq.n	80054c8 <_dtoa_r+0xd58>
 8005524:	2a00      	cmp	r2, #0
 8005526:	f77f af03 	ble.w	8005330 <_dtoa_r+0xbc0>
 800552a:	460b      	mov	r3, r1
 800552c:	3331      	adds	r3, #49	; 0x31
 800552e:	9300      	str	r3, [sp, #0]
 8005530:	e6fe      	b.n	8005330 <_dtoa_r+0xbc0>
 8005532:	f47f aefd 	bne.w	8005330 <_dtoa_r+0xbc0>
 8005536:	9b00      	ldr	r3, [sp, #0]
 8005538:	07da      	lsls	r2, r3, #31
 800553a:	f57f aef9 	bpl.w	8005330 <_dtoa_r+0xbc0>
 800553e:	e7bc      	b.n	80054ba <_dtoa_r+0xd4a>
 8005540:	4629      	mov	r1, r5
 8005542:	2300      	movs	r3, #0
 8005544:	220a      	movs	r2, #10
 8005546:	4648      	mov	r0, r9
 8005548:	f000 fd88 	bl	800605c <__multadd>
 800554c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800554e:	2b00      	cmp	r3, #0
 8005550:	4605      	mov	r5, r0
 8005552:	dd09      	ble.n	8005568 <_dtoa_r+0xdf8>
 8005554:	9309      	str	r3, [sp, #36]	; 0x24
 8005556:	e484      	b.n	8004e62 <_dtoa_r+0x6f2>
 8005558:	9b02      	ldr	r3, [sp, #8]
 800555a:	2b02      	cmp	r3, #2
 800555c:	dc0e      	bgt.n	800557c <_dtoa_r+0xe0c>
 800555e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005560:	e507      	b.n	8004f72 <_dtoa_r+0x802>
 8005562:	2602      	movs	r6, #2
 8005564:	f7ff ba70 	b.w	8004a48 <_dtoa_r+0x2d8>
 8005568:	9b02      	ldr	r3, [sp, #8]
 800556a:	2b02      	cmp	r3, #2
 800556c:	dc06      	bgt.n	800557c <_dtoa_r+0xe0c>
 800556e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005570:	e7f0      	b.n	8005554 <_dtoa_r+0xde4>
 8005572:	f43f ac59 	beq.w	8004e28 <_dtoa_r+0x6b8>
 8005576:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800557a:	e450      	b.n	8004e1e <_dtoa_r+0x6ae>
 800557c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800557e:	9309      	str	r3, [sp, #36]	; 0x24
 8005580:	e678      	b.n	8005274 <_dtoa_r+0xb04>
 8005582:	bf00      	nop
 8005584:	40240000 	.word	0x40240000
 8005588:	401c0000 	.word	0x401c0000
 800558c:	3fe00000 	.word	0x3fe00000

08005590 <__sflush_r>:
 8005590:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005594:	b29a      	uxth	r2, r3
 8005596:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800559a:	460c      	mov	r4, r1
 800559c:	0711      	lsls	r1, r2, #28
 800559e:	4680      	mov	r8, r0
 80055a0:	d444      	bmi.n	800562c <__sflush_r+0x9c>
 80055a2:	6862      	ldr	r2, [r4, #4]
 80055a4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80055a8:	2a00      	cmp	r2, #0
 80055aa:	81a3      	strh	r3, [r4, #12]
 80055ac:	dd59      	ble.n	8005662 <__sflush_r+0xd2>
 80055ae:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80055b0:	2d00      	cmp	r5, #0
 80055b2:	d053      	beq.n	800565c <__sflush_r+0xcc>
 80055b4:	2200      	movs	r2, #0
 80055b6:	b29b      	uxth	r3, r3
 80055b8:	f8d8 6000 	ldr.w	r6, [r8]
 80055bc:	69e1      	ldr	r1, [r4, #28]
 80055be:	f8c8 2000 	str.w	r2, [r8]
 80055c2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80055c6:	f040 8083 	bne.w	80056d0 <__sflush_r+0x140>
 80055ca:	2301      	movs	r3, #1
 80055cc:	4640      	mov	r0, r8
 80055ce:	47a8      	blx	r5
 80055d0:	1c42      	adds	r2, r0, #1
 80055d2:	d04a      	beq.n	800566a <__sflush_r+0xda>
 80055d4:	89a3      	ldrh	r3, [r4, #12]
 80055d6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80055d8:	69e1      	ldr	r1, [r4, #28]
 80055da:	075b      	lsls	r3, r3, #29
 80055dc:	d505      	bpl.n	80055ea <__sflush_r+0x5a>
 80055de:	6862      	ldr	r2, [r4, #4]
 80055e0:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80055e2:	1a80      	subs	r0, r0, r2
 80055e4:	b10b      	cbz	r3, 80055ea <__sflush_r+0x5a>
 80055e6:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80055e8:	1ac0      	subs	r0, r0, r3
 80055ea:	4602      	mov	r2, r0
 80055ec:	2300      	movs	r3, #0
 80055ee:	4640      	mov	r0, r8
 80055f0:	47a8      	blx	r5
 80055f2:	1c47      	adds	r7, r0, #1
 80055f4:	d045      	beq.n	8005682 <__sflush_r+0xf2>
 80055f6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055fa:	6922      	ldr	r2, [r4, #16]
 80055fc:	6022      	str	r2, [r4, #0]
 80055fe:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005602:	2200      	movs	r2, #0
 8005604:	81a3      	strh	r3, [r4, #12]
 8005606:	04db      	lsls	r3, r3, #19
 8005608:	6062      	str	r2, [r4, #4]
 800560a:	d500      	bpl.n	800560e <__sflush_r+0x7e>
 800560c:	6520      	str	r0, [r4, #80]	; 0x50
 800560e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005610:	f8c8 6000 	str.w	r6, [r8]
 8005614:	b311      	cbz	r1, 800565c <__sflush_r+0xcc>
 8005616:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800561a:	4299      	cmp	r1, r3
 800561c:	d002      	beq.n	8005624 <__sflush_r+0x94>
 800561e:	4640      	mov	r0, r8
 8005620:	f000 f95e 	bl	80058e0 <_free_r>
 8005624:	2000      	movs	r0, #0
 8005626:	6320      	str	r0, [r4, #48]	; 0x30
 8005628:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800562c:	6926      	ldr	r6, [r4, #16]
 800562e:	b1ae      	cbz	r6, 800565c <__sflush_r+0xcc>
 8005630:	6825      	ldr	r5, [r4, #0]
 8005632:	6026      	str	r6, [r4, #0]
 8005634:	0792      	lsls	r2, r2, #30
 8005636:	bf0c      	ite	eq
 8005638:	6963      	ldreq	r3, [r4, #20]
 800563a:	2300      	movne	r3, #0
 800563c:	1bad      	subs	r5, r5, r6
 800563e:	60a3      	str	r3, [r4, #8]
 8005640:	e00a      	b.n	8005658 <__sflush_r+0xc8>
 8005642:	462b      	mov	r3, r5
 8005644:	4632      	mov	r2, r6
 8005646:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005648:	69e1      	ldr	r1, [r4, #28]
 800564a:	4640      	mov	r0, r8
 800564c:	47b8      	blx	r7
 800564e:	2800      	cmp	r0, #0
 8005650:	eba5 0500 	sub.w	r5, r5, r0
 8005654:	4406      	add	r6, r0
 8005656:	dd2b      	ble.n	80056b0 <__sflush_r+0x120>
 8005658:	2d00      	cmp	r5, #0
 800565a:	dcf2      	bgt.n	8005642 <__sflush_r+0xb2>
 800565c:	2000      	movs	r0, #0
 800565e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005662:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005664:	2a00      	cmp	r2, #0
 8005666:	dca2      	bgt.n	80055ae <__sflush_r+0x1e>
 8005668:	e7f8      	b.n	800565c <__sflush_r+0xcc>
 800566a:	f8d8 3000 	ldr.w	r3, [r8]
 800566e:	2b00      	cmp	r3, #0
 8005670:	d0b0      	beq.n	80055d4 <__sflush_r+0x44>
 8005672:	2b1d      	cmp	r3, #29
 8005674:	d001      	beq.n	800567a <__sflush_r+0xea>
 8005676:	2b16      	cmp	r3, #22
 8005678:	d12c      	bne.n	80056d4 <__sflush_r+0x144>
 800567a:	f8c8 6000 	str.w	r6, [r8]
 800567e:	2000      	movs	r0, #0
 8005680:	e7ed      	b.n	800565e <__sflush_r+0xce>
 8005682:	f8d8 1000 	ldr.w	r1, [r8]
 8005686:	291d      	cmp	r1, #29
 8005688:	d81a      	bhi.n	80056c0 <__sflush_r+0x130>
 800568a:	4b15      	ldr	r3, [pc, #84]	; (80056e0 <__sflush_r+0x150>)
 800568c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005690:	40cb      	lsrs	r3, r1
 8005692:	43db      	mvns	r3, r3
 8005694:	f013 0301 	ands.w	r3, r3, #1
 8005698:	d114      	bne.n	80056c4 <__sflush_r+0x134>
 800569a:	6925      	ldr	r5, [r4, #16]
 800569c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80056a0:	e9c4 5300 	strd	r5, r3, [r4]
 80056a4:	04d5      	lsls	r5, r2, #19
 80056a6:	81a2      	strh	r2, [r4, #12]
 80056a8:	d5b1      	bpl.n	800560e <__sflush_r+0x7e>
 80056aa:	2900      	cmp	r1, #0
 80056ac:	d1af      	bne.n	800560e <__sflush_r+0x7e>
 80056ae:	e7ad      	b.n	800560c <__sflush_r+0x7c>
 80056b0:	89a3      	ldrh	r3, [r4, #12]
 80056b2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056b6:	81a3      	strh	r3, [r4, #12]
 80056b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80056c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80056c4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80056c8:	81a2      	strh	r2, [r4, #12]
 80056ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056ce:	e7c6      	b.n	800565e <__sflush_r+0xce>
 80056d0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80056d2:	e782      	b.n	80055da <__sflush_r+0x4a>
 80056d4:	89a3      	ldrh	r3, [r4, #12]
 80056d6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056da:	81a3      	strh	r3, [r4, #12]
 80056dc:	e7bf      	b.n	800565e <__sflush_r+0xce>
 80056de:	bf00      	nop
 80056e0:	20400001 	.word	0x20400001

080056e4 <_fflush_r>:
 80056e4:	b538      	push	{r3, r4, r5, lr}
 80056e6:	460d      	mov	r5, r1
 80056e8:	4604      	mov	r4, r0
 80056ea:	b108      	cbz	r0, 80056f0 <_fflush_r+0xc>
 80056ec:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80056ee:	b1a3      	cbz	r3, 800571a <_fflush_r+0x36>
 80056f0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80056f4:	b1b8      	cbz	r0, 8005726 <_fflush_r+0x42>
 80056f6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80056f8:	07db      	lsls	r3, r3, #31
 80056fa:	d401      	bmi.n	8005700 <_fflush_r+0x1c>
 80056fc:	0581      	lsls	r1, r0, #22
 80056fe:	d51a      	bpl.n	8005736 <_fflush_r+0x52>
 8005700:	4620      	mov	r0, r4
 8005702:	4629      	mov	r1, r5
 8005704:	f7ff ff44 	bl	8005590 <__sflush_r>
 8005708:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800570a:	07da      	lsls	r2, r3, #31
 800570c:	4604      	mov	r4, r0
 800570e:	d402      	bmi.n	8005716 <_fflush_r+0x32>
 8005710:	89ab      	ldrh	r3, [r5, #12]
 8005712:	059b      	lsls	r3, r3, #22
 8005714:	d50a      	bpl.n	800572c <_fflush_r+0x48>
 8005716:	4620      	mov	r0, r4
 8005718:	bd38      	pop	{r3, r4, r5, pc}
 800571a:	f000 f83f 	bl	800579c <__sinit>
 800571e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005722:	2800      	cmp	r0, #0
 8005724:	d1e7      	bne.n	80056f6 <_fflush_r+0x12>
 8005726:	4604      	mov	r4, r0
 8005728:	4620      	mov	r0, r4
 800572a:	bd38      	pop	{r3, r4, r5, pc}
 800572c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800572e:	f000 fb87 	bl	8005e40 <__retarget_lock_release_recursive>
 8005732:	4620      	mov	r0, r4
 8005734:	bd38      	pop	{r3, r4, r5, pc}
 8005736:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005738:	f000 fb80 	bl	8005e3c <__retarget_lock_acquire_recursive>
 800573c:	e7e0      	b.n	8005700 <_fflush_r+0x1c>
 800573e:	bf00      	nop

08005740 <std>:
 8005740:	b510      	push	{r4, lr}
 8005742:	2300      	movs	r3, #0
 8005744:	4604      	mov	r4, r0
 8005746:	8181      	strh	r1, [r0, #12]
 8005748:	81c2      	strh	r2, [r0, #14]
 800574a:	e9c0 3300 	strd	r3, r3, [r0]
 800574e:	6083      	str	r3, [r0, #8]
 8005750:	6643      	str	r3, [r0, #100]	; 0x64
 8005752:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005756:	6183      	str	r3, [r0, #24]
 8005758:	4619      	mov	r1, r3
 800575a:	2208      	movs	r2, #8
 800575c:	305c      	adds	r0, #92	; 0x5c
 800575e:	f7fd f8ab 	bl	80028b8 <memset>
 8005762:	4807      	ldr	r0, [pc, #28]	; (8005780 <std+0x40>)
 8005764:	4907      	ldr	r1, [pc, #28]	; (8005784 <std+0x44>)
 8005766:	4a08      	ldr	r2, [pc, #32]	; (8005788 <std+0x48>)
 8005768:	4b08      	ldr	r3, [pc, #32]	; (800578c <std+0x4c>)
 800576a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800576c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005770:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005774:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005778:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800577c:	f000 bb5a 	b.w	8005e34 <__retarget_lock_init_recursive>
 8005780:	080069d5 	.word	0x080069d5
 8005784:	080069f9 	.word	0x080069f9
 8005788:	08006a35 	.word	0x08006a35
 800578c:	08006a55 	.word	0x08006a55

08005790 <_cleanup_r>:
 8005790:	4901      	ldr	r1, [pc, #4]	; (8005798 <_cleanup_r+0x8>)
 8005792:	f000 bb17 	b.w	8005dc4 <_fwalk_reent>
 8005796:	bf00      	nop
 8005798:	08006cc5 	.word	0x08006cc5

0800579c <__sinit>:
 800579c:	b510      	push	{r4, lr}
 800579e:	4604      	mov	r4, r0
 80057a0:	4812      	ldr	r0, [pc, #72]	; (80057ec <__sinit+0x50>)
 80057a2:	f000 fb4b 	bl	8005e3c <__retarget_lock_acquire_recursive>
 80057a6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80057a8:	b9d2      	cbnz	r2, 80057e0 <__sinit+0x44>
 80057aa:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80057ae:	4810      	ldr	r0, [pc, #64]	; (80057f0 <__sinit+0x54>)
 80057b0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80057b4:	2103      	movs	r1, #3
 80057b6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80057ba:	63e0      	str	r0, [r4, #60]	; 0x3c
 80057bc:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80057c0:	6860      	ldr	r0, [r4, #4]
 80057c2:	2104      	movs	r1, #4
 80057c4:	f7ff ffbc 	bl	8005740 <std>
 80057c8:	2201      	movs	r2, #1
 80057ca:	2109      	movs	r1, #9
 80057cc:	68a0      	ldr	r0, [r4, #8]
 80057ce:	f7ff ffb7 	bl	8005740 <std>
 80057d2:	2202      	movs	r2, #2
 80057d4:	2112      	movs	r1, #18
 80057d6:	68e0      	ldr	r0, [r4, #12]
 80057d8:	f7ff ffb2 	bl	8005740 <std>
 80057dc:	2301      	movs	r3, #1
 80057de:	63a3      	str	r3, [r4, #56]	; 0x38
 80057e0:	4802      	ldr	r0, [pc, #8]	; (80057ec <__sinit+0x50>)
 80057e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80057e6:	f000 bb2b 	b.w	8005e40 <__retarget_lock_release_recursive>
 80057ea:	bf00      	nop
 80057ec:	20000c84 	.word	0x20000c84
 80057f0:	08005791 	.word	0x08005791

080057f4 <__sfp_lock_acquire>:
 80057f4:	4801      	ldr	r0, [pc, #4]	; (80057fc <__sfp_lock_acquire+0x8>)
 80057f6:	f000 bb21 	b.w	8005e3c <__retarget_lock_acquire_recursive>
 80057fa:	bf00      	nop
 80057fc:	20000c98 	.word	0x20000c98

08005800 <__sfp_lock_release>:
 8005800:	4801      	ldr	r0, [pc, #4]	; (8005808 <__sfp_lock_release+0x8>)
 8005802:	f000 bb1d 	b.w	8005e40 <__retarget_lock_release_recursive>
 8005806:	bf00      	nop
 8005808:	20000c98 	.word	0x20000c98

0800580c <__libc_fini_array>:
 800580c:	b538      	push	{r3, r4, r5, lr}
 800580e:	4c0a      	ldr	r4, [pc, #40]	; (8005838 <__libc_fini_array+0x2c>)
 8005810:	4d0a      	ldr	r5, [pc, #40]	; (800583c <__libc_fini_array+0x30>)
 8005812:	1b64      	subs	r4, r4, r5
 8005814:	10a4      	asrs	r4, r4, #2
 8005816:	d00a      	beq.n	800582e <__libc_fini_array+0x22>
 8005818:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800581c:	3b01      	subs	r3, #1
 800581e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005822:	3c01      	subs	r4, #1
 8005824:	f855 3904 	ldr.w	r3, [r5], #-4
 8005828:	4798      	blx	r3
 800582a:	2c00      	cmp	r4, #0
 800582c:	d1f9      	bne.n	8005822 <__libc_fini_array+0x16>
 800582e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005832:	f001 bc3b 	b.w	80070ac <_fini>
 8005836:	bf00      	nop
 8005838:	08007474 	.word	0x08007474
 800583c:	08007470 	.word	0x08007470

08005840 <_malloc_trim_r>:
 8005840:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005842:	4f24      	ldr	r7, [pc, #144]	; (80058d4 <_malloc_trim_r+0x94>)
 8005844:	460c      	mov	r4, r1
 8005846:	4606      	mov	r6, r0
 8005848:	f7fd f880 	bl	800294c <__malloc_lock>
 800584c:	68bb      	ldr	r3, [r7, #8]
 800584e:	685d      	ldr	r5, [r3, #4]
 8005850:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005854:	310f      	adds	r1, #15
 8005856:	f025 0503 	bic.w	r5, r5, #3
 800585a:	4429      	add	r1, r5
 800585c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005860:	f021 010f 	bic.w	r1, r1, #15
 8005864:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005868:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800586c:	db07      	blt.n	800587e <_malloc_trim_r+0x3e>
 800586e:	2100      	movs	r1, #0
 8005870:	4630      	mov	r0, r6
 8005872:	f7fd f8e1 	bl	8002a38 <_sbrk_r>
 8005876:	68bb      	ldr	r3, [r7, #8]
 8005878:	442b      	add	r3, r5
 800587a:	4298      	cmp	r0, r3
 800587c:	d004      	beq.n	8005888 <_malloc_trim_r+0x48>
 800587e:	4630      	mov	r0, r6
 8005880:	f7fd f86a 	bl	8002958 <__malloc_unlock>
 8005884:	2000      	movs	r0, #0
 8005886:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005888:	4261      	negs	r1, r4
 800588a:	4630      	mov	r0, r6
 800588c:	f7fd f8d4 	bl	8002a38 <_sbrk_r>
 8005890:	3001      	adds	r0, #1
 8005892:	d00d      	beq.n	80058b0 <_malloc_trim_r+0x70>
 8005894:	4b10      	ldr	r3, [pc, #64]	; (80058d8 <_malloc_trim_r+0x98>)
 8005896:	68ba      	ldr	r2, [r7, #8]
 8005898:	6819      	ldr	r1, [r3, #0]
 800589a:	1b2d      	subs	r5, r5, r4
 800589c:	f045 0501 	orr.w	r5, r5, #1
 80058a0:	4630      	mov	r0, r6
 80058a2:	1b09      	subs	r1, r1, r4
 80058a4:	6055      	str	r5, [r2, #4]
 80058a6:	6019      	str	r1, [r3, #0]
 80058a8:	f7fd f856 	bl	8002958 <__malloc_unlock>
 80058ac:	2001      	movs	r0, #1
 80058ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80058b0:	2100      	movs	r1, #0
 80058b2:	4630      	mov	r0, r6
 80058b4:	f7fd f8c0 	bl	8002a38 <_sbrk_r>
 80058b8:	68ba      	ldr	r2, [r7, #8]
 80058ba:	1a83      	subs	r3, r0, r2
 80058bc:	2b0f      	cmp	r3, #15
 80058be:	ddde      	ble.n	800587e <_malloc_trim_r+0x3e>
 80058c0:	4c06      	ldr	r4, [pc, #24]	; (80058dc <_malloc_trim_r+0x9c>)
 80058c2:	4905      	ldr	r1, [pc, #20]	; (80058d8 <_malloc_trim_r+0x98>)
 80058c4:	6824      	ldr	r4, [r4, #0]
 80058c6:	f043 0301 	orr.w	r3, r3, #1
 80058ca:	1b00      	subs	r0, r0, r4
 80058cc:	6053      	str	r3, [r2, #4]
 80058ce:	6008      	str	r0, [r1, #0]
 80058d0:	e7d5      	b.n	800587e <_malloc_trim_r+0x3e>
 80058d2:	bf00      	nop
 80058d4:	200005d8 	.word	0x200005d8
 80058d8:	20000bfc 	.word	0x20000bfc
 80058dc:	200009e0 	.word	0x200009e0

080058e0 <_free_r>:
 80058e0:	2900      	cmp	r1, #0
 80058e2:	d053      	beq.n	800598c <_free_r+0xac>
 80058e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80058e6:	460c      	mov	r4, r1
 80058e8:	4606      	mov	r6, r0
 80058ea:	f7fd f82f 	bl	800294c <__malloc_lock>
 80058ee:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80058f2:	4f71      	ldr	r7, [pc, #452]	; (8005ab8 <_free_r+0x1d8>)
 80058f4:	f02c 0101 	bic.w	r1, ip, #1
 80058f8:	f1a4 0508 	sub.w	r5, r4, #8
 80058fc:	186b      	adds	r3, r5, r1
 80058fe:	68b8      	ldr	r0, [r7, #8]
 8005900:	685a      	ldr	r2, [r3, #4]
 8005902:	4298      	cmp	r0, r3
 8005904:	f022 0203 	bic.w	r2, r2, #3
 8005908:	d053      	beq.n	80059b2 <_free_r+0xd2>
 800590a:	f01c 0f01 	tst.w	ip, #1
 800590e:	605a      	str	r2, [r3, #4]
 8005910:	eb03 0002 	add.w	r0, r3, r2
 8005914:	d13b      	bne.n	800598e <_free_r+0xae>
 8005916:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800591a:	6840      	ldr	r0, [r0, #4]
 800591c:	eba5 050c 	sub.w	r5, r5, ip
 8005920:	f107 0e08 	add.w	lr, r7, #8
 8005924:	68ac      	ldr	r4, [r5, #8]
 8005926:	4574      	cmp	r4, lr
 8005928:	4461      	add	r1, ip
 800592a:	f000 0001 	and.w	r0, r0, #1
 800592e:	d075      	beq.n	8005a1c <_free_r+0x13c>
 8005930:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005934:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005938:	f8cc 4008 	str.w	r4, [ip, #8]
 800593c:	b360      	cbz	r0, 8005998 <_free_r+0xb8>
 800593e:	f041 0301 	orr.w	r3, r1, #1
 8005942:	606b      	str	r3, [r5, #4]
 8005944:	5069      	str	r1, [r5, r1]
 8005946:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800594a:	d350      	bcc.n	80059ee <_free_r+0x10e>
 800594c:	0a4b      	lsrs	r3, r1, #9
 800594e:	2b04      	cmp	r3, #4
 8005950:	d870      	bhi.n	8005a34 <_free_r+0x154>
 8005952:	098b      	lsrs	r3, r1, #6
 8005954:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005958:	00e4      	lsls	r4, r4, #3
 800595a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800595e:	1938      	adds	r0, r7, r4
 8005960:	593b      	ldr	r3, [r7, r4]
 8005962:	3808      	subs	r0, #8
 8005964:	4298      	cmp	r0, r3
 8005966:	d078      	beq.n	8005a5a <_free_r+0x17a>
 8005968:	685a      	ldr	r2, [r3, #4]
 800596a:	f022 0203 	bic.w	r2, r2, #3
 800596e:	428a      	cmp	r2, r1
 8005970:	d971      	bls.n	8005a56 <_free_r+0x176>
 8005972:	689b      	ldr	r3, [r3, #8]
 8005974:	4298      	cmp	r0, r3
 8005976:	d1f7      	bne.n	8005968 <_free_r+0x88>
 8005978:	68c3      	ldr	r3, [r0, #12]
 800597a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800597e:	609d      	str	r5, [r3, #8]
 8005980:	60c5      	str	r5, [r0, #12]
 8005982:	4630      	mov	r0, r6
 8005984:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005988:	f7fc bfe6 	b.w	8002958 <__malloc_unlock>
 800598c:	4770      	bx	lr
 800598e:	6840      	ldr	r0, [r0, #4]
 8005990:	f000 0001 	and.w	r0, r0, #1
 8005994:	2800      	cmp	r0, #0
 8005996:	d1d2      	bne.n	800593e <_free_r+0x5e>
 8005998:	6898      	ldr	r0, [r3, #8]
 800599a:	4c48      	ldr	r4, [pc, #288]	; (8005abc <_free_r+0x1dc>)
 800599c:	4411      	add	r1, r2
 800599e:	42a0      	cmp	r0, r4
 80059a0:	f041 0201 	orr.w	r2, r1, #1
 80059a4:	d062      	beq.n	8005a6c <_free_r+0x18c>
 80059a6:	68db      	ldr	r3, [r3, #12]
 80059a8:	60c3      	str	r3, [r0, #12]
 80059aa:	6098      	str	r0, [r3, #8]
 80059ac:	606a      	str	r2, [r5, #4]
 80059ae:	5069      	str	r1, [r5, r1]
 80059b0:	e7c9      	b.n	8005946 <_free_r+0x66>
 80059b2:	f01c 0f01 	tst.w	ip, #1
 80059b6:	440a      	add	r2, r1
 80059b8:	d107      	bne.n	80059ca <_free_r+0xea>
 80059ba:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80059be:	1aed      	subs	r5, r5, r3
 80059c0:	441a      	add	r2, r3
 80059c2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80059c6:	60cb      	str	r3, [r1, #12]
 80059c8:	6099      	str	r1, [r3, #8]
 80059ca:	4b3d      	ldr	r3, [pc, #244]	; (8005ac0 <_free_r+0x1e0>)
 80059cc:	681b      	ldr	r3, [r3, #0]
 80059ce:	f042 0101 	orr.w	r1, r2, #1
 80059d2:	4293      	cmp	r3, r2
 80059d4:	6069      	str	r1, [r5, #4]
 80059d6:	60bd      	str	r5, [r7, #8]
 80059d8:	d804      	bhi.n	80059e4 <_free_r+0x104>
 80059da:	4b3a      	ldr	r3, [pc, #232]	; (8005ac4 <_free_r+0x1e4>)
 80059dc:	4630      	mov	r0, r6
 80059de:	6819      	ldr	r1, [r3, #0]
 80059e0:	f7ff ff2e 	bl	8005840 <_malloc_trim_r>
 80059e4:	4630      	mov	r0, r6
 80059e6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80059ea:	f7fc bfb5 	b.w	8002958 <__malloc_unlock>
 80059ee:	08c9      	lsrs	r1, r1, #3
 80059f0:	6878      	ldr	r0, [r7, #4]
 80059f2:	1c4a      	adds	r2, r1, #1
 80059f4:	2301      	movs	r3, #1
 80059f6:	1089      	asrs	r1, r1, #2
 80059f8:	408b      	lsls	r3, r1
 80059fa:	4303      	orrs	r3, r0
 80059fc:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005a00:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005a04:	607b      	str	r3, [r7, #4]
 8005a06:	3908      	subs	r1, #8
 8005a08:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005a0c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005a10:	60c5      	str	r5, [r0, #12]
 8005a12:	4630      	mov	r0, r6
 8005a14:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005a18:	f7fc bf9e 	b.w	8002958 <__malloc_unlock>
 8005a1c:	2800      	cmp	r0, #0
 8005a1e:	d145      	bne.n	8005aac <_free_r+0x1cc>
 8005a20:	440a      	add	r2, r1
 8005a22:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005a26:	f042 0001 	orr.w	r0, r2, #1
 8005a2a:	60cb      	str	r3, [r1, #12]
 8005a2c:	6099      	str	r1, [r3, #8]
 8005a2e:	6068      	str	r0, [r5, #4]
 8005a30:	50aa      	str	r2, [r5, r2]
 8005a32:	e7d7      	b.n	80059e4 <_free_r+0x104>
 8005a34:	2b14      	cmp	r3, #20
 8005a36:	d908      	bls.n	8005a4a <_free_r+0x16a>
 8005a38:	2b54      	cmp	r3, #84	; 0x54
 8005a3a:	d81e      	bhi.n	8005a7a <_free_r+0x19a>
 8005a3c:	0b0b      	lsrs	r3, r1, #12
 8005a3e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005a42:	00e4      	lsls	r4, r4, #3
 8005a44:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005a48:	e789      	b.n	800595e <_free_r+0x7e>
 8005a4a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005a4e:	00e4      	lsls	r4, r4, #3
 8005a50:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005a54:	e783      	b.n	800595e <_free_r+0x7e>
 8005a56:	4618      	mov	r0, r3
 8005a58:	e78e      	b.n	8005978 <_free_r+0x98>
 8005a5a:	1093      	asrs	r3, r2, #2
 8005a5c:	6879      	ldr	r1, [r7, #4]
 8005a5e:	2201      	movs	r2, #1
 8005a60:	fa02 f303 	lsl.w	r3, r2, r3
 8005a64:	430b      	orrs	r3, r1
 8005a66:	607b      	str	r3, [r7, #4]
 8005a68:	4603      	mov	r3, r0
 8005a6a:	e786      	b.n	800597a <_free_r+0x9a>
 8005a6c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005a70:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005a74:	606a      	str	r2, [r5, #4]
 8005a76:	5069      	str	r1, [r5, r1]
 8005a78:	e7b4      	b.n	80059e4 <_free_r+0x104>
 8005a7a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005a7e:	d806      	bhi.n	8005a8e <_free_r+0x1ae>
 8005a80:	0bcb      	lsrs	r3, r1, #15
 8005a82:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005a86:	00e4      	lsls	r4, r4, #3
 8005a88:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005a8c:	e767      	b.n	800595e <_free_r+0x7e>
 8005a8e:	f240 5254 	movw	r2, #1364	; 0x554
 8005a92:	4293      	cmp	r3, r2
 8005a94:	d806      	bhi.n	8005aa4 <_free_r+0x1c4>
 8005a96:	0c8b      	lsrs	r3, r1, #18
 8005a98:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005a9c:	00e4      	lsls	r4, r4, #3
 8005a9e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005aa2:	e75c      	b.n	800595e <_free_r+0x7e>
 8005aa4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005aa8:	227e      	movs	r2, #126	; 0x7e
 8005aaa:	e758      	b.n	800595e <_free_r+0x7e>
 8005aac:	f041 0201 	orr.w	r2, r1, #1
 8005ab0:	606a      	str	r2, [r5, #4]
 8005ab2:	6019      	str	r1, [r3, #0]
 8005ab4:	e796      	b.n	80059e4 <_free_r+0x104>
 8005ab6:	bf00      	nop
 8005ab8:	200005d8 	.word	0x200005d8
 8005abc:	200005e0 	.word	0x200005e0
 8005ac0:	200009e4 	.word	0x200009e4
 8005ac4:	20000c2c 	.word	0x20000c2c

08005ac8 <__sfvwrite_r>:
 8005ac8:	6893      	ldr	r3, [r2, #8]
 8005aca:	2b00      	cmp	r3, #0
 8005acc:	f000 80e4 	beq.w	8005c98 <__sfvwrite_r+0x1d0>
 8005ad0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005ad4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005ad8:	b29b      	uxth	r3, r3
 8005ada:	460c      	mov	r4, r1
 8005adc:	0719      	lsls	r1, r3, #28
 8005ade:	b083      	sub	sp, #12
 8005ae0:	4682      	mov	sl, r0
 8005ae2:	4690      	mov	r8, r2
 8005ae4:	d535      	bpl.n	8005b52 <__sfvwrite_r+0x8a>
 8005ae6:	6922      	ldr	r2, [r4, #16]
 8005ae8:	b39a      	cbz	r2, 8005b52 <__sfvwrite_r+0x8a>
 8005aea:	f013 0202 	ands.w	r2, r3, #2
 8005aee:	f8d8 6000 	ldr.w	r6, [r8]
 8005af2:	d03d      	beq.n	8005b70 <__sfvwrite_r+0xa8>
 8005af4:	2700      	movs	r7, #0
 8005af6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005afa:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005afe:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005dc0 <__sfvwrite_r+0x2f8>
 8005b02:	463d      	mov	r5, r7
 8005b04:	454d      	cmp	r5, r9
 8005b06:	462b      	mov	r3, r5
 8005b08:	463a      	mov	r2, r7
 8005b0a:	bf28      	it	cs
 8005b0c:	464b      	movcs	r3, r9
 8005b0e:	4661      	mov	r1, ip
 8005b10:	4650      	mov	r0, sl
 8005b12:	b1d5      	cbz	r5, 8005b4a <__sfvwrite_r+0x82>
 8005b14:	47d8      	blx	fp
 8005b16:	2800      	cmp	r0, #0
 8005b18:	f340 80c6 	ble.w	8005ca8 <__sfvwrite_r+0x1e0>
 8005b1c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005b20:	1a1b      	subs	r3, r3, r0
 8005b22:	4407      	add	r7, r0
 8005b24:	1a2d      	subs	r5, r5, r0
 8005b26:	f8c8 3008 	str.w	r3, [r8, #8]
 8005b2a:	2b00      	cmp	r3, #0
 8005b2c:	f000 80b0 	beq.w	8005c90 <__sfvwrite_r+0x1c8>
 8005b30:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005b34:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005b38:	454d      	cmp	r5, r9
 8005b3a:	462b      	mov	r3, r5
 8005b3c:	463a      	mov	r2, r7
 8005b3e:	bf28      	it	cs
 8005b40:	464b      	movcs	r3, r9
 8005b42:	4661      	mov	r1, ip
 8005b44:	4650      	mov	r0, sl
 8005b46:	2d00      	cmp	r5, #0
 8005b48:	d1e4      	bne.n	8005b14 <__sfvwrite_r+0x4c>
 8005b4a:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005b4e:	3608      	adds	r6, #8
 8005b50:	e7d8      	b.n	8005b04 <__sfvwrite_r+0x3c>
 8005b52:	4621      	mov	r1, r4
 8005b54:	4650      	mov	r0, sl
 8005b56:	f7fe fd03 	bl	8004560 <__swsetup_r>
 8005b5a:	2800      	cmp	r0, #0
 8005b5c:	f040 812a 	bne.w	8005db4 <__sfvwrite_r+0x2ec>
 8005b60:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b64:	f8d8 6000 	ldr.w	r6, [r8]
 8005b68:	b29b      	uxth	r3, r3
 8005b6a:	f013 0202 	ands.w	r2, r3, #2
 8005b6e:	d1c1      	bne.n	8005af4 <__sfvwrite_r+0x2c>
 8005b70:	f013 0901 	ands.w	r9, r3, #1
 8005b74:	d15d      	bne.n	8005c32 <__sfvwrite_r+0x16a>
 8005b76:	68a7      	ldr	r7, [r4, #8]
 8005b78:	6820      	ldr	r0, [r4, #0]
 8005b7a:	464d      	mov	r5, r9
 8005b7c:	2d00      	cmp	r5, #0
 8005b7e:	d054      	beq.n	8005c2a <__sfvwrite_r+0x162>
 8005b80:	059a      	lsls	r2, r3, #22
 8005b82:	f140 809b 	bpl.w	8005cbc <__sfvwrite_r+0x1f4>
 8005b86:	42af      	cmp	r7, r5
 8005b88:	46bb      	mov	fp, r7
 8005b8a:	f200 80d8 	bhi.w	8005d3e <__sfvwrite_r+0x276>
 8005b8e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005b92:	d02f      	beq.n	8005bf4 <__sfvwrite_r+0x12c>
 8005b94:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005b98:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005b9c:	eba0 0b01 	sub.w	fp, r0, r1
 8005ba0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005ba4:	1c68      	adds	r0, r5, #1
 8005ba6:	107f      	asrs	r7, r7, #1
 8005ba8:	4458      	add	r0, fp
 8005baa:	42b8      	cmp	r0, r7
 8005bac:	463a      	mov	r2, r7
 8005bae:	bf84      	itt	hi
 8005bb0:	4607      	movhi	r7, r0
 8005bb2:	463a      	movhi	r2, r7
 8005bb4:	055b      	lsls	r3, r3, #21
 8005bb6:	f140 80d3 	bpl.w	8005d60 <__sfvwrite_r+0x298>
 8005bba:	4611      	mov	r1, r2
 8005bbc:	4650      	mov	r0, sl
 8005bbe:	f7fc fbd7 	bl	8002370 <_malloc_r>
 8005bc2:	2800      	cmp	r0, #0
 8005bc4:	f000 80f0 	beq.w	8005da8 <__sfvwrite_r+0x2e0>
 8005bc8:	465a      	mov	r2, fp
 8005bca:	6921      	ldr	r1, [r4, #16]
 8005bcc:	9001      	str	r0, [sp, #4]
 8005bce:	f7fa fc97 	bl	8000500 <memcpy>
 8005bd2:	89a2      	ldrh	r2, [r4, #12]
 8005bd4:	9b01      	ldr	r3, [sp, #4]
 8005bd6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005bda:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005bde:	81a2      	strh	r2, [r4, #12]
 8005be0:	eba7 020b 	sub.w	r2, r7, fp
 8005be4:	eb03 000b 	add.w	r0, r3, fp
 8005be8:	6167      	str	r7, [r4, #20]
 8005bea:	6123      	str	r3, [r4, #16]
 8005bec:	6020      	str	r0, [r4, #0]
 8005bee:	60a2      	str	r2, [r4, #8]
 8005bf0:	462f      	mov	r7, r5
 8005bf2:	46ab      	mov	fp, r5
 8005bf4:	465a      	mov	r2, fp
 8005bf6:	4649      	mov	r1, r9
 8005bf8:	f000 f99c 	bl	8005f34 <memmove>
 8005bfc:	68a2      	ldr	r2, [r4, #8]
 8005bfe:	6823      	ldr	r3, [r4, #0]
 8005c00:	1bd2      	subs	r2, r2, r7
 8005c02:	445b      	add	r3, fp
 8005c04:	462f      	mov	r7, r5
 8005c06:	60a2      	str	r2, [r4, #8]
 8005c08:	6023      	str	r3, [r4, #0]
 8005c0a:	2500      	movs	r5, #0
 8005c0c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005c10:	1bdb      	subs	r3, r3, r7
 8005c12:	44b9      	add	r9, r7
 8005c14:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c18:	2b00      	cmp	r3, #0
 8005c1a:	d039      	beq.n	8005c90 <__sfvwrite_r+0x1c8>
 8005c1c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c20:	68a7      	ldr	r7, [r4, #8]
 8005c22:	6820      	ldr	r0, [r4, #0]
 8005c24:	b29b      	uxth	r3, r3
 8005c26:	2d00      	cmp	r5, #0
 8005c28:	d1aa      	bne.n	8005b80 <__sfvwrite_r+0xb8>
 8005c2a:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005c2e:	3608      	adds	r6, #8
 8005c30:	e7a4      	b.n	8005b7c <__sfvwrite_r+0xb4>
 8005c32:	4633      	mov	r3, r6
 8005c34:	4691      	mov	r9, r2
 8005c36:	4610      	mov	r0, r2
 8005c38:	4617      	mov	r7, r2
 8005c3a:	464e      	mov	r6, r9
 8005c3c:	469b      	mov	fp, r3
 8005c3e:	2f00      	cmp	r7, #0
 8005c40:	d06b      	beq.n	8005d1a <__sfvwrite_r+0x252>
 8005c42:	2800      	cmp	r0, #0
 8005c44:	d071      	beq.n	8005d2a <__sfvwrite_r+0x262>
 8005c46:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005c4a:	6820      	ldr	r0, [r4, #0]
 8005c4c:	45b9      	cmp	r9, r7
 8005c4e:	464b      	mov	r3, r9
 8005c50:	bf28      	it	cs
 8005c52:	463b      	movcs	r3, r7
 8005c54:	4288      	cmp	r0, r1
 8005c56:	d903      	bls.n	8005c60 <__sfvwrite_r+0x198>
 8005c58:	68a5      	ldr	r5, [r4, #8]
 8005c5a:	4415      	add	r5, r2
 8005c5c:	42ab      	cmp	r3, r5
 8005c5e:	dc71      	bgt.n	8005d44 <__sfvwrite_r+0x27c>
 8005c60:	429a      	cmp	r2, r3
 8005c62:	f300 8093 	bgt.w	8005d8c <__sfvwrite_r+0x2c4>
 8005c66:	4613      	mov	r3, r2
 8005c68:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005c6a:	69e1      	ldr	r1, [r4, #28]
 8005c6c:	4632      	mov	r2, r6
 8005c6e:	4650      	mov	r0, sl
 8005c70:	47a8      	blx	r5
 8005c72:	1e05      	subs	r5, r0, #0
 8005c74:	dd18      	ble.n	8005ca8 <__sfvwrite_r+0x1e0>
 8005c76:	ebb9 0905 	subs.w	r9, r9, r5
 8005c7a:	d00f      	beq.n	8005c9c <__sfvwrite_r+0x1d4>
 8005c7c:	2001      	movs	r0, #1
 8005c7e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005c82:	1b5b      	subs	r3, r3, r5
 8005c84:	442e      	add	r6, r5
 8005c86:	1b7f      	subs	r7, r7, r5
 8005c88:	f8c8 3008 	str.w	r3, [r8, #8]
 8005c8c:	2b00      	cmp	r3, #0
 8005c8e:	d1d6      	bne.n	8005c3e <__sfvwrite_r+0x176>
 8005c90:	2000      	movs	r0, #0
 8005c92:	b003      	add	sp, #12
 8005c94:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c98:	2000      	movs	r0, #0
 8005c9a:	4770      	bx	lr
 8005c9c:	4621      	mov	r1, r4
 8005c9e:	4650      	mov	r0, sl
 8005ca0:	f7ff fd20 	bl	80056e4 <_fflush_r>
 8005ca4:	2800      	cmp	r0, #0
 8005ca6:	d0ea      	beq.n	8005c7e <__sfvwrite_r+0x1b6>
 8005ca8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005cac:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005cb0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005cb4:	81a3      	strh	r3, [r4, #12]
 8005cb6:	b003      	add	sp, #12
 8005cb8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005cbc:	6923      	ldr	r3, [r4, #16]
 8005cbe:	4283      	cmp	r3, r0
 8005cc0:	d315      	bcc.n	8005cee <__sfvwrite_r+0x226>
 8005cc2:	6961      	ldr	r1, [r4, #20]
 8005cc4:	42a9      	cmp	r1, r5
 8005cc6:	d812      	bhi.n	8005cee <__sfvwrite_r+0x226>
 8005cc8:	4b3c      	ldr	r3, [pc, #240]	; (8005dbc <__sfvwrite_r+0x2f4>)
 8005cca:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005ccc:	429d      	cmp	r5, r3
 8005cce:	bf94      	ite	ls
 8005cd0:	462b      	movls	r3, r5
 8005cd2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005cd6:	464a      	mov	r2, r9
 8005cd8:	fb93 f3f1 	sdiv	r3, r3, r1
 8005cdc:	4650      	mov	r0, sl
 8005cde:	fb01 f303 	mul.w	r3, r1, r3
 8005ce2:	69e1      	ldr	r1, [r4, #28]
 8005ce4:	47b8      	blx	r7
 8005ce6:	1e07      	subs	r7, r0, #0
 8005ce8:	ddde      	ble.n	8005ca8 <__sfvwrite_r+0x1e0>
 8005cea:	1bed      	subs	r5, r5, r7
 8005cec:	e78e      	b.n	8005c0c <__sfvwrite_r+0x144>
 8005cee:	42af      	cmp	r7, r5
 8005cf0:	bf28      	it	cs
 8005cf2:	462f      	movcs	r7, r5
 8005cf4:	463a      	mov	r2, r7
 8005cf6:	4649      	mov	r1, r9
 8005cf8:	f000 f91c 	bl	8005f34 <memmove>
 8005cfc:	68a3      	ldr	r3, [r4, #8]
 8005cfe:	6822      	ldr	r2, [r4, #0]
 8005d00:	1bdb      	subs	r3, r3, r7
 8005d02:	443a      	add	r2, r7
 8005d04:	60a3      	str	r3, [r4, #8]
 8005d06:	6022      	str	r2, [r4, #0]
 8005d08:	2b00      	cmp	r3, #0
 8005d0a:	d1ee      	bne.n	8005cea <__sfvwrite_r+0x222>
 8005d0c:	4621      	mov	r1, r4
 8005d0e:	4650      	mov	r0, sl
 8005d10:	f7ff fce8 	bl	80056e4 <_fflush_r>
 8005d14:	2800      	cmp	r0, #0
 8005d16:	d0e8      	beq.n	8005cea <__sfvwrite_r+0x222>
 8005d18:	e7c6      	b.n	8005ca8 <__sfvwrite_r+0x1e0>
 8005d1a:	f10b 0308 	add.w	r3, fp, #8
 8005d1e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005d22:	469b      	mov	fp, r3
 8005d24:	3308      	adds	r3, #8
 8005d26:	2f00      	cmp	r7, #0
 8005d28:	d0f9      	beq.n	8005d1e <__sfvwrite_r+0x256>
 8005d2a:	463a      	mov	r2, r7
 8005d2c:	210a      	movs	r1, #10
 8005d2e:	4630      	mov	r0, r6
 8005d30:	f7fa fcf6 	bl	8000720 <memchr>
 8005d34:	b338      	cbz	r0, 8005d86 <__sfvwrite_r+0x2be>
 8005d36:	3001      	adds	r0, #1
 8005d38:	eba0 0906 	sub.w	r9, r0, r6
 8005d3c:	e783      	b.n	8005c46 <__sfvwrite_r+0x17e>
 8005d3e:	462f      	mov	r7, r5
 8005d40:	46ab      	mov	fp, r5
 8005d42:	e757      	b.n	8005bf4 <__sfvwrite_r+0x12c>
 8005d44:	4631      	mov	r1, r6
 8005d46:	462a      	mov	r2, r5
 8005d48:	f000 f8f4 	bl	8005f34 <memmove>
 8005d4c:	6823      	ldr	r3, [r4, #0]
 8005d4e:	442b      	add	r3, r5
 8005d50:	6023      	str	r3, [r4, #0]
 8005d52:	4621      	mov	r1, r4
 8005d54:	4650      	mov	r0, sl
 8005d56:	f7ff fcc5 	bl	80056e4 <_fflush_r>
 8005d5a:	2800      	cmp	r0, #0
 8005d5c:	d08b      	beq.n	8005c76 <__sfvwrite_r+0x1ae>
 8005d5e:	e7a3      	b.n	8005ca8 <__sfvwrite_r+0x1e0>
 8005d60:	4650      	mov	r0, sl
 8005d62:	f000 fc55 	bl	8006610 <_realloc_r>
 8005d66:	4603      	mov	r3, r0
 8005d68:	2800      	cmp	r0, #0
 8005d6a:	f47f af39 	bne.w	8005be0 <__sfvwrite_r+0x118>
 8005d6e:	6921      	ldr	r1, [r4, #16]
 8005d70:	4650      	mov	r0, sl
 8005d72:	f7ff fdb5 	bl	80058e0 <_free_r>
 8005d76:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005d7a:	220c      	movs	r2, #12
 8005d7c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005d80:	f8ca 2000 	str.w	r2, [sl]
 8005d84:	e792      	b.n	8005cac <__sfvwrite_r+0x1e4>
 8005d86:	f107 0901 	add.w	r9, r7, #1
 8005d8a:	e75c      	b.n	8005c46 <__sfvwrite_r+0x17e>
 8005d8c:	461a      	mov	r2, r3
 8005d8e:	4631      	mov	r1, r6
 8005d90:	9301      	str	r3, [sp, #4]
 8005d92:	f000 f8cf 	bl	8005f34 <memmove>
 8005d96:	9b01      	ldr	r3, [sp, #4]
 8005d98:	68a1      	ldr	r1, [r4, #8]
 8005d9a:	6822      	ldr	r2, [r4, #0]
 8005d9c:	1ac9      	subs	r1, r1, r3
 8005d9e:	441a      	add	r2, r3
 8005da0:	60a1      	str	r1, [r4, #8]
 8005da2:	6022      	str	r2, [r4, #0]
 8005da4:	461d      	mov	r5, r3
 8005da6:	e766      	b.n	8005c76 <__sfvwrite_r+0x1ae>
 8005da8:	230c      	movs	r3, #12
 8005daa:	f8ca 3000 	str.w	r3, [sl]
 8005dae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005db2:	e77b      	b.n	8005cac <__sfvwrite_r+0x1e4>
 8005db4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005db8:	e76b      	b.n	8005c92 <__sfvwrite_r+0x1ca>
 8005dba:	bf00      	nop
 8005dbc:	7ffffffe 	.word	0x7ffffffe
 8005dc0:	7ffffc00 	.word	0x7ffffc00

08005dc4 <_fwalk_reent>:
 8005dc4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005dc8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005dcc:	d01f      	beq.n	8005e0e <_fwalk_reent+0x4a>
 8005dce:	4688      	mov	r8, r1
 8005dd0:	4606      	mov	r6, r0
 8005dd2:	f04f 0900 	mov.w	r9, #0
 8005dd6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005dda:	3d01      	subs	r5, #1
 8005ddc:	d411      	bmi.n	8005e02 <_fwalk_reent+0x3e>
 8005dde:	89a3      	ldrh	r3, [r4, #12]
 8005de0:	2b01      	cmp	r3, #1
 8005de2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005de6:	4621      	mov	r1, r4
 8005de8:	4630      	mov	r0, r6
 8005dea:	d906      	bls.n	8005dfa <_fwalk_reent+0x36>
 8005dec:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005df0:	3301      	adds	r3, #1
 8005df2:	d002      	beq.n	8005dfa <_fwalk_reent+0x36>
 8005df4:	47c0      	blx	r8
 8005df6:	ea49 0900 	orr.w	r9, r9, r0
 8005dfa:	1c6b      	adds	r3, r5, #1
 8005dfc:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005e00:	d1ed      	bne.n	8005dde <_fwalk_reent+0x1a>
 8005e02:	683f      	ldr	r7, [r7, #0]
 8005e04:	2f00      	cmp	r7, #0
 8005e06:	d1e6      	bne.n	8005dd6 <_fwalk_reent+0x12>
 8005e08:	4648      	mov	r0, r9
 8005e0a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005e0e:	46b9      	mov	r9, r7
 8005e10:	4648      	mov	r0, r9
 8005e12:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005e16:	bf00      	nop

08005e18 <_localeconv_r>:
 8005e18:	4a04      	ldr	r2, [pc, #16]	; (8005e2c <_localeconv_r+0x14>)
 8005e1a:	4b05      	ldr	r3, [pc, #20]	; (8005e30 <_localeconv_r+0x18>)
 8005e1c:	6812      	ldr	r2, [r2, #0]
 8005e1e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005e20:	2800      	cmp	r0, #0
 8005e22:	bf08      	it	eq
 8005e24:	4618      	moveq	r0, r3
 8005e26:	30f0      	adds	r0, #240	; 0xf0
 8005e28:	4770      	bx	lr
 8005e2a:	bf00      	nop
 8005e2c:	200001a8 	.word	0x200001a8
 8005e30:	200009ec 	.word	0x200009ec

08005e34 <__retarget_lock_init_recursive>:
 8005e34:	4770      	bx	lr
 8005e36:	bf00      	nop

08005e38 <__retarget_lock_close_recursive>:
 8005e38:	4770      	bx	lr
 8005e3a:	bf00      	nop

08005e3c <__retarget_lock_acquire_recursive>:
 8005e3c:	4770      	bx	lr
 8005e3e:	bf00      	nop

08005e40 <__retarget_lock_release_recursive>:
 8005e40:	4770      	bx	lr
 8005e42:	bf00      	nop

08005e44 <__swhatbuf_r>:
 8005e44:	b570      	push	{r4, r5, r6, lr}
 8005e46:	460c      	mov	r4, r1
 8005e48:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005e4c:	2900      	cmp	r1, #0
 8005e4e:	b096      	sub	sp, #88	; 0x58
 8005e50:	4615      	mov	r5, r2
 8005e52:	461e      	mov	r6, r3
 8005e54:	da0f      	bge.n	8005e76 <__swhatbuf_r+0x32>
 8005e56:	89a2      	ldrh	r2, [r4, #12]
 8005e58:	2300      	movs	r3, #0
 8005e5a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005e5e:	6033      	str	r3, [r6, #0]
 8005e60:	d104      	bne.n	8005e6c <__swhatbuf_r+0x28>
 8005e62:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005e66:	602b      	str	r3, [r5, #0]
 8005e68:	b016      	add	sp, #88	; 0x58
 8005e6a:	bd70      	pop	{r4, r5, r6, pc}
 8005e6c:	2240      	movs	r2, #64	; 0x40
 8005e6e:	4618      	mov	r0, r3
 8005e70:	602a      	str	r2, [r5, #0]
 8005e72:	b016      	add	sp, #88	; 0x58
 8005e74:	bd70      	pop	{r4, r5, r6, pc}
 8005e76:	466a      	mov	r2, sp
 8005e78:	f001 f80e 	bl	8006e98 <_fstat_r>
 8005e7c:	2800      	cmp	r0, #0
 8005e7e:	dbea      	blt.n	8005e56 <__swhatbuf_r+0x12>
 8005e80:	9b01      	ldr	r3, [sp, #4]
 8005e82:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005e86:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005e8a:	fab3 f383 	clz	r3, r3
 8005e8e:	095b      	lsrs	r3, r3, #5
 8005e90:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005e94:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005e98:	6033      	str	r3, [r6, #0]
 8005e9a:	602a      	str	r2, [r5, #0]
 8005e9c:	b016      	add	sp, #88	; 0x58
 8005e9e:	bd70      	pop	{r4, r5, r6, pc}

08005ea0 <__smakebuf_r>:
 8005ea0:	898a      	ldrh	r2, [r1, #12]
 8005ea2:	0792      	lsls	r2, r2, #30
 8005ea4:	460b      	mov	r3, r1
 8005ea6:	d506      	bpl.n	8005eb6 <__smakebuf_r+0x16>
 8005ea8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005eac:	2101      	movs	r1, #1
 8005eae:	601a      	str	r2, [r3, #0]
 8005eb0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005eb4:	4770      	bx	lr
 8005eb6:	b570      	push	{r4, r5, r6, lr}
 8005eb8:	b082      	sub	sp, #8
 8005eba:	ab01      	add	r3, sp, #4
 8005ebc:	466a      	mov	r2, sp
 8005ebe:	460c      	mov	r4, r1
 8005ec0:	4605      	mov	r5, r0
 8005ec2:	f7ff ffbf 	bl	8005e44 <__swhatbuf_r>
 8005ec6:	9900      	ldr	r1, [sp, #0]
 8005ec8:	4606      	mov	r6, r0
 8005eca:	4628      	mov	r0, r5
 8005ecc:	f7fc fa50 	bl	8002370 <_malloc_r>
 8005ed0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ed4:	b1d8      	cbz	r0, 8005f0e <__smakebuf_r+0x6e>
 8005ed6:	4916      	ldr	r1, [pc, #88]	; (8005f30 <__smakebuf_r+0x90>)
 8005ed8:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005eda:	9a01      	ldr	r2, [sp, #4]
 8005edc:	9900      	ldr	r1, [sp, #0]
 8005ede:	6020      	str	r0, [r4, #0]
 8005ee0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005ee4:	81a3      	strh	r3, [r4, #12]
 8005ee6:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005eea:	b91a      	cbnz	r2, 8005ef4 <__smakebuf_r+0x54>
 8005eec:	4333      	orrs	r3, r6
 8005eee:	81a3      	strh	r3, [r4, #12]
 8005ef0:	b002      	add	sp, #8
 8005ef2:	bd70      	pop	{r4, r5, r6, pc}
 8005ef4:	4628      	mov	r0, r5
 8005ef6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005efa:	f000 ffe1 	bl	8006ec0 <_isatty_r>
 8005efe:	b1a0      	cbz	r0, 8005f2a <__smakebuf_r+0x8a>
 8005f00:	89a3      	ldrh	r3, [r4, #12]
 8005f02:	f023 0303 	bic.w	r3, r3, #3
 8005f06:	f043 0301 	orr.w	r3, r3, #1
 8005f0a:	b21b      	sxth	r3, r3
 8005f0c:	e7ee      	b.n	8005eec <__smakebuf_r+0x4c>
 8005f0e:	059a      	lsls	r2, r3, #22
 8005f10:	d4ee      	bmi.n	8005ef0 <__smakebuf_r+0x50>
 8005f12:	f023 0303 	bic.w	r3, r3, #3
 8005f16:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005f1a:	f043 0302 	orr.w	r3, r3, #2
 8005f1e:	2101      	movs	r1, #1
 8005f20:	81a3      	strh	r3, [r4, #12]
 8005f22:	6022      	str	r2, [r4, #0]
 8005f24:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005f28:	e7e2      	b.n	8005ef0 <__smakebuf_r+0x50>
 8005f2a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005f2e:	e7dd      	b.n	8005eec <__smakebuf_r+0x4c>
 8005f30:	08005791 	.word	0x08005791

08005f34 <memmove>:
 8005f34:	4288      	cmp	r0, r1
 8005f36:	b4f0      	push	{r4, r5, r6, r7}
 8005f38:	d90d      	bls.n	8005f56 <memmove+0x22>
 8005f3a:	188b      	adds	r3, r1, r2
 8005f3c:	4283      	cmp	r3, r0
 8005f3e:	d90a      	bls.n	8005f56 <memmove+0x22>
 8005f40:	1884      	adds	r4, r0, r2
 8005f42:	b132      	cbz	r2, 8005f52 <memmove+0x1e>
 8005f44:	4622      	mov	r2, r4
 8005f46:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005f4a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005f4e:	4299      	cmp	r1, r3
 8005f50:	d1f9      	bne.n	8005f46 <memmove+0x12>
 8005f52:	bcf0      	pop	{r4, r5, r6, r7}
 8005f54:	4770      	bx	lr
 8005f56:	2a0f      	cmp	r2, #15
 8005f58:	d949      	bls.n	8005fee <memmove+0xba>
 8005f5a:	ea40 0301 	orr.w	r3, r0, r1
 8005f5e:	079b      	lsls	r3, r3, #30
 8005f60:	d147      	bne.n	8005ff2 <memmove+0xbe>
 8005f62:	f1a2 0310 	sub.w	r3, r2, #16
 8005f66:	091b      	lsrs	r3, r3, #4
 8005f68:	f101 0720 	add.w	r7, r1, #32
 8005f6c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005f70:	f101 0410 	add.w	r4, r1, #16
 8005f74:	f100 0510 	add.w	r5, r0, #16
 8005f78:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005f7c:	f845 6c10 	str.w	r6, [r5, #-16]
 8005f80:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005f84:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005f88:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005f8c:	f845 6c08 	str.w	r6, [r5, #-8]
 8005f90:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005f94:	f845 6c04 	str.w	r6, [r5, #-4]
 8005f98:	3410      	adds	r4, #16
 8005f9a:	42bc      	cmp	r4, r7
 8005f9c:	f105 0510 	add.w	r5, r5, #16
 8005fa0:	d1ea      	bne.n	8005f78 <memmove+0x44>
 8005fa2:	3301      	adds	r3, #1
 8005fa4:	f002 050f 	and.w	r5, r2, #15
 8005fa8:	011b      	lsls	r3, r3, #4
 8005faa:	2d03      	cmp	r5, #3
 8005fac:	4419      	add	r1, r3
 8005fae:	4403      	add	r3, r0
 8005fb0:	d921      	bls.n	8005ff6 <memmove+0xc2>
 8005fb2:	1f1f      	subs	r7, r3, #4
 8005fb4:	460e      	mov	r6, r1
 8005fb6:	462c      	mov	r4, r5
 8005fb8:	3c04      	subs	r4, #4
 8005fba:	f856 cb04 	ldr.w	ip, [r6], #4
 8005fbe:	f847 cf04 	str.w	ip, [r7, #4]!
 8005fc2:	2c03      	cmp	r4, #3
 8005fc4:	d8f8      	bhi.n	8005fb8 <memmove+0x84>
 8005fc6:	1f2c      	subs	r4, r5, #4
 8005fc8:	f024 0403 	bic.w	r4, r4, #3
 8005fcc:	3404      	adds	r4, #4
 8005fce:	4423      	add	r3, r4
 8005fd0:	4421      	add	r1, r4
 8005fd2:	f002 0203 	and.w	r2, r2, #3
 8005fd6:	2a00      	cmp	r2, #0
 8005fd8:	d0bb      	beq.n	8005f52 <memmove+0x1e>
 8005fda:	3b01      	subs	r3, #1
 8005fdc:	440a      	add	r2, r1
 8005fde:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005fe2:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005fe6:	4291      	cmp	r1, r2
 8005fe8:	d1f9      	bne.n	8005fde <memmove+0xaa>
 8005fea:	bcf0      	pop	{r4, r5, r6, r7}
 8005fec:	4770      	bx	lr
 8005fee:	4603      	mov	r3, r0
 8005ff0:	e7f1      	b.n	8005fd6 <memmove+0xa2>
 8005ff2:	4603      	mov	r3, r0
 8005ff4:	e7f1      	b.n	8005fda <memmove+0xa6>
 8005ff6:	462a      	mov	r2, r5
 8005ff8:	e7ed      	b.n	8005fd6 <memmove+0xa2>
 8005ffa:	bf00      	nop

08005ffc <_Balloc>:
 8005ffc:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005ffe:	b570      	push	{r4, r5, r6, lr}
 8006000:	4605      	mov	r5, r0
 8006002:	460c      	mov	r4, r1
 8006004:	b14b      	cbz	r3, 800601a <_Balloc+0x1e>
 8006006:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800600a:	b180      	cbz	r0, 800602e <_Balloc+0x32>
 800600c:	6802      	ldr	r2, [r0, #0]
 800600e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006012:	2300      	movs	r3, #0
 8006014:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006018:	bd70      	pop	{r4, r5, r6, pc}
 800601a:	2221      	movs	r2, #33	; 0x21
 800601c:	2104      	movs	r1, #4
 800601e:	f000 fe0b 	bl	8006c38 <_calloc_r>
 8006022:	4603      	mov	r3, r0
 8006024:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006026:	2800      	cmp	r0, #0
 8006028:	d1ed      	bne.n	8006006 <_Balloc+0xa>
 800602a:	2000      	movs	r0, #0
 800602c:	bd70      	pop	{r4, r5, r6, pc}
 800602e:	2101      	movs	r1, #1
 8006030:	fa01 f604 	lsl.w	r6, r1, r4
 8006034:	1d72      	adds	r2, r6, #5
 8006036:	4628      	mov	r0, r5
 8006038:	0092      	lsls	r2, r2, #2
 800603a:	f000 fdfd 	bl	8006c38 <_calloc_r>
 800603e:	2800      	cmp	r0, #0
 8006040:	d0f3      	beq.n	800602a <_Balloc+0x2e>
 8006042:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8006046:	e7e4      	b.n	8006012 <_Balloc+0x16>

08006048 <_Bfree>:
 8006048:	b131      	cbz	r1, 8006058 <_Bfree+0x10>
 800604a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800604c:	684a      	ldr	r2, [r1, #4]
 800604e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8006052:	6008      	str	r0, [r1, #0]
 8006054:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006058:	4770      	bx	lr
 800605a:	bf00      	nop

0800605c <__multadd>:
 800605c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800605e:	690c      	ldr	r4, [r1, #16]
 8006060:	b083      	sub	sp, #12
 8006062:	460d      	mov	r5, r1
 8006064:	4606      	mov	r6, r0
 8006066:	f101 0c14 	add.w	ip, r1, #20
 800606a:	2700      	movs	r7, #0
 800606c:	f8dc 0000 	ldr.w	r0, [ip]
 8006070:	b281      	uxth	r1, r0
 8006072:	fb02 3301 	mla	r3, r2, r1, r3
 8006076:	0c01      	lsrs	r1, r0, #16
 8006078:	0c18      	lsrs	r0, r3, #16
 800607a:	fb02 0101 	mla	r1, r2, r1, r0
 800607e:	b29b      	uxth	r3, r3
 8006080:	3701      	adds	r7, #1
 8006082:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8006086:	42bc      	cmp	r4, r7
 8006088:	f84c 3b04 	str.w	r3, [ip], #4
 800608c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006090:	dcec      	bgt.n	800606c <__multadd+0x10>
 8006092:	b13b      	cbz	r3, 80060a4 <__multadd+0x48>
 8006094:	68aa      	ldr	r2, [r5, #8]
 8006096:	42a2      	cmp	r2, r4
 8006098:	dd07      	ble.n	80060aa <__multadd+0x4e>
 800609a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 800609e:	3401      	adds	r4, #1
 80060a0:	6153      	str	r3, [r2, #20]
 80060a2:	612c      	str	r4, [r5, #16]
 80060a4:	4628      	mov	r0, r5
 80060a6:	b003      	add	sp, #12
 80060a8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80060aa:	6869      	ldr	r1, [r5, #4]
 80060ac:	9301      	str	r3, [sp, #4]
 80060ae:	3101      	adds	r1, #1
 80060b0:	4630      	mov	r0, r6
 80060b2:	f7ff ffa3 	bl	8005ffc <_Balloc>
 80060b6:	692a      	ldr	r2, [r5, #16]
 80060b8:	3202      	adds	r2, #2
 80060ba:	f105 010c 	add.w	r1, r5, #12
 80060be:	4607      	mov	r7, r0
 80060c0:	0092      	lsls	r2, r2, #2
 80060c2:	300c      	adds	r0, #12
 80060c4:	f7fa fa1c 	bl	8000500 <memcpy>
 80060c8:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80060ca:	6869      	ldr	r1, [r5, #4]
 80060cc:	9b01      	ldr	r3, [sp, #4]
 80060ce:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80060d2:	6028      	str	r0, [r5, #0]
 80060d4:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80060d8:	463d      	mov	r5, r7
 80060da:	e7de      	b.n	800609a <__multadd+0x3e>

080060dc <__hi0bits>:
 80060dc:	0c02      	lsrs	r2, r0, #16
 80060de:	0412      	lsls	r2, r2, #16
 80060e0:	4603      	mov	r3, r0
 80060e2:	b9c2      	cbnz	r2, 8006116 <__hi0bits+0x3a>
 80060e4:	0403      	lsls	r3, r0, #16
 80060e6:	2010      	movs	r0, #16
 80060e8:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80060ec:	bf04      	itt	eq
 80060ee:	021b      	lsleq	r3, r3, #8
 80060f0:	3008      	addeq	r0, #8
 80060f2:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80060f6:	bf04      	itt	eq
 80060f8:	011b      	lsleq	r3, r3, #4
 80060fa:	3004      	addeq	r0, #4
 80060fc:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006100:	bf04      	itt	eq
 8006102:	009b      	lsleq	r3, r3, #2
 8006104:	3002      	addeq	r0, #2
 8006106:	2b00      	cmp	r3, #0
 8006108:	db04      	blt.n	8006114 <__hi0bits+0x38>
 800610a:	005b      	lsls	r3, r3, #1
 800610c:	d501      	bpl.n	8006112 <__hi0bits+0x36>
 800610e:	3001      	adds	r0, #1
 8006110:	4770      	bx	lr
 8006112:	2020      	movs	r0, #32
 8006114:	4770      	bx	lr
 8006116:	2000      	movs	r0, #0
 8006118:	e7e6      	b.n	80060e8 <__hi0bits+0xc>
 800611a:	bf00      	nop

0800611c <__lo0bits>:
 800611c:	6803      	ldr	r3, [r0, #0]
 800611e:	f013 0207 	ands.w	r2, r3, #7
 8006122:	4601      	mov	r1, r0
 8006124:	d007      	beq.n	8006136 <__lo0bits+0x1a>
 8006126:	07da      	lsls	r2, r3, #31
 8006128:	d41f      	bmi.n	800616a <__lo0bits+0x4e>
 800612a:	0798      	lsls	r0, r3, #30
 800612c:	d51f      	bpl.n	800616e <__lo0bits+0x52>
 800612e:	085b      	lsrs	r3, r3, #1
 8006130:	600b      	str	r3, [r1, #0]
 8006132:	2001      	movs	r0, #1
 8006134:	4770      	bx	lr
 8006136:	b298      	uxth	r0, r3
 8006138:	b1a0      	cbz	r0, 8006164 <__lo0bits+0x48>
 800613a:	4610      	mov	r0, r2
 800613c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006140:	bf04      	itt	eq
 8006142:	0a1b      	lsreq	r3, r3, #8
 8006144:	3008      	addeq	r0, #8
 8006146:	071a      	lsls	r2, r3, #28
 8006148:	bf04      	itt	eq
 800614a:	091b      	lsreq	r3, r3, #4
 800614c:	3004      	addeq	r0, #4
 800614e:	079a      	lsls	r2, r3, #30
 8006150:	bf04      	itt	eq
 8006152:	089b      	lsreq	r3, r3, #2
 8006154:	3002      	addeq	r0, #2
 8006156:	07da      	lsls	r2, r3, #31
 8006158:	d402      	bmi.n	8006160 <__lo0bits+0x44>
 800615a:	085b      	lsrs	r3, r3, #1
 800615c:	d00b      	beq.n	8006176 <__lo0bits+0x5a>
 800615e:	3001      	adds	r0, #1
 8006160:	600b      	str	r3, [r1, #0]
 8006162:	4770      	bx	lr
 8006164:	0c1b      	lsrs	r3, r3, #16
 8006166:	2010      	movs	r0, #16
 8006168:	e7e8      	b.n	800613c <__lo0bits+0x20>
 800616a:	2000      	movs	r0, #0
 800616c:	4770      	bx	lr
 800616e:	089b      	lsrs	r3, r3, #2
 8006170:	600b      	str	r3, [r1, #0]
 8006172:	2002      	movs	r0, #2
 8006174:	4770      	bx	lr
 8006176:	2020      	movs	r0, #32
 8006178:	4770      	bx	lr
 800617a:	bf00      	nop

0800617c <__i2b>:
 800617c:	b510      	push	{r4, lr}
 800617e:	460c      	mov	r4, r1
 8006180:	2101      	movs	r1, #1
 8006182:	f7ff ff3b 	bl	8005ffc <_Balloc>
 8006186:	2201      	movs	r2, #1
 8006188:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800618c:	bd10      	pop	{r4, pc}
 800618e:	bf00      	nop

08006190 <__multiply>:
 8006190:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006194:	690e      	ldr	r6, [r1, #16]
 8006196:	6914      	ldr	r4, [r2, #16]
 8006198:	42a6      	cmp	r6, r4
 800619a:	b083      	sub	sp, #12
 800619c:	460f      	mov	r7, r1
 800619e:	4615      	mov	r5, r2
 80061a0:	da04      	bge.n	80061ac <__multiply+0x1c>
 80061a2:	4632      	mov	r2, r6
 80061a4:	462f      	mov	r7, r5
 80061a6:	4626      	mov	r6, r4
 80061a8:	460d      	mov	r5, r1
 80061aa:	4614      	mov	r4, r2
 80061ac:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80061b0:	eb06 0804 	add.w	r8, r6, r4
 80061b4:	4543      	cmp	r3, r8
 80061b6:	bfb8      	it	lt
 80061b8:	3101      	addlt	r1, #1
 80061ba:	f7ff ff1f 	bl	8005ffc <_Balloc>
 80061be:	f100 0914 	add.w	r9, r0, #20
 80061c2:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80061c6:	45f1      	cmp	r9, lr
 80061c8:	9000      	str	r0, [sp, #0]
 80061ca:	d205      	bcs.n	80061d8 <__multiply+0x48>
 80061cc:	464b      	mov	r3, r9
 80061ce:	2200      	movs	r2, #0
 80061d0:	f843 2b04 	str.w	r2, [r3], #4
 80061d4:	459e      	cmp	lr, r3
 80061d6:	d8fb      	bhi.n	80061d0 <__multiply+0x40>
 80061d8:	f105 0a14 	add.w	sl, r5, #20
 80061dc:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80061e0:	f107 0314 	add.w	r3, r7, #20
 80061e4:	45a2      	cmp	sl, r4
 80061e6:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80061ea:	d261      	bcs.n	80062b0 <__multiply+0x120>
 80061ec:	1b64      	subs	r4, r4, r5
 80061ee:	3c15      	subs	r4, #21
 80061f0:	f024 0403 	bic.w	r4, r4, #3
 80061f4:	f8cd e004 	str.w	lr, [sp, #4]
 80061f8:	44a2      	add	sl, r4
 80061fa:	f105 0210 	add.w	r2, r5, #16
 80061fe:	469e      	mov	lr, r3
 8006200:	e005      	b.n	800620e <__multiply+0x7e>
 8006202:	0c2d      	lsrs	r5, r5, #16
 8006204:	d12b      	bne.n	800625e <__multiply+0xce>
 8006206:	4592      	cmp	sl, r2
 8006208:	f109 0904 	add.w	r9, r9, #4
 800620c:	d04e      	beq.n	80062ac <__multiply+0x11c>
 800620e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006212:	fa1f fb85 	uxth.w	fp, r5
 8006216:	f1bb 0f00 	cmp.w	fp, #0
 800621a:	d0f2      	beq.n	8006202 <__multiply+0x72>
 800621c:	4677      	mov	r7, lr
 800621e:	464e      	mov	r6, r9
 8006220:	2000      	movs	r0, #0
 8006222:	e000      	b.n	8006226 <__multiply+0x96>
 8006224:	4626      	mov	r6, r4
 8006226:	f857 1b04 	ldr.w	r1, [r7], #4
 800622a:	6834      	ldr	r4, [r6, #0]
 800622c:	b28b      	uxth	r3, r1
 800622e:	b2a5      	uxth	r5, r4
 8006230:	0c09      	lsrs	r1, r1, #16
 8006232:	0c24      	lsrs	r4, r4, #16
 8006234:	fb0b 5303 	mla	r3, fp, r3, r5
 8006238:	4403      	add	r3, r0
 800623a:	fb0b 4001 	mla	r0, fp, r1, r4
 800623e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006242:	4634      	mov	r4, r6
 8006244:	b29b      	uxth	r3, r3
 8006246:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800624a:	45bc      	cmp	ip, r7
 800624c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006250:	f844 3b04 	str.w	r3, [r4], #4
 8006254:	d8e6      	bhi.n	8006224 <__multiply+0x94>
 8006256:	6070      	str	r0, [r6, #4]
 8006258:	6815      	ldr	r5, [r2, #0]
 800625a:	0c2d      	lsrs	r5, r5, #16
 800625c:	d0d3      	beq.n	8006206 <__multiply+0x76>
 800625e:	f8d9 3000 	ldr.w	r3, [r9]
 8006262:	4676      	mov	r6, lr
 8006264:	4618      	mov	r0, r3
 8006266:	46cb      	mov	fp, r9
 8006268:	2100      	movs	r1, #0
 800626a:	e000      	b.n	800626e <__multiply+0xde>
 800626c:	46a3      	mov	fp, r4
 800626e:	8834      	ldrh	r4, [r6, #0]
 8006270:	0c00      	lsrs	r0, r0, #16
 8006272:	fb05 0004 	mla	r0, r5, r4, r0
 8006276:	4401      	add	r1, r0
 8006278:	b29b      	uxth	r3, r3
 800627a:	465c      	mov	r4, fp
 800627c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006280:	f844 3b04 	str.w	r3, [r4], #4
 8006284:	f856 3b04 	ldr.w	r3, [r6], #4
 8006288:	f8db 0004 	ldr.w	r0, [fp, #4]
 800628c:	0c1b      	lsrs	r3, r3, #16
 800628e:	b287      	uxth	r7, r0
 8006290:	fb05 7303 	mla	r3, r5, r3, r7
 8006294:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006298:	45b4      	cmp	ip, r6
 800629a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800629e:	d8e5      	bhi.n	800626c <__multiply+0xdc>
 80062a0:	4592      	cmp	sl, r2
 80062a2:	f8cb 3004 	str.w	r3, [fp, #4]
 80062a6:	f109 0904 	add.w	r9, r9, #4
 80062aa:	d1b0      	bne.n	800620e <__multiply+0x7e>
 80062ac:	f8dd e004 	ldr.w	lr, [sp, #4]
 80062b0:	f1b8 0f00 	cmp.w	r8, #0
 80062b4:	dd0b      	ble.n	80062ce <__multiply+0x13e>
 80062b6:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80062ba:	f1ae 0e04 	sub.w	lr, lr, #4
 80062be:	b11b      	cbz	r3, 80062c8 <__multiply+0x138>
 80062c0:	e005      	b.n	80062ce <__multiply+0x13e>
 80062c2:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80062c6:	b913      	cbnz	r3, 80062ce <__multiply+0x13e>
 80062c8:	f1b8 0801 	subs.w	r8, r8, #1
 80062cc:	d1f9      	bne.n	80062c2 <__multiply+0x132>
 80062ce:	9800      	ldr	r0, [sp, #0]
 80062d0:	f8c0 8010 	str.w	r8, [r0, #16]
 80062d4:	b003      	add	sp, #12
 80062d6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80062da:	bf00      	nop

080062dc <__pow5mult>:
 80062dc:	f012 0303 	ands.w	r3, r2, #3
 80062e0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80062e4:	4614      	mov	r4, r2
 80062e6:	4607      	mov	r7, r0
 80062e8:	d12e      	bne.n	8006348 <__pow5mult+0x6c>
 80062ea:	460d      	mov	r5, r1
 80062ec:	10a4      	asrs	r4, r4, #2
 80062ee:	d01c      	beq.n	800632a <__pow5mult+0x4e>
 80062f0:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80062f2:	b396      	cbz	r6, 800635a <__pow5mult+0x7e>
 80062f4:	07e3      	lsls	r3, r4, #31
 80062f6:	f04f 0800 	mov.w	r8, #0
 80062fa:	d406      	bmi.n	800630a <__pow5mult+0x2e>
 80062fc:	1064      	asrs	r4, r4, #1
 80062fe:	d014      	beq.n	800632a <__pow5mult+0x4e>
 8006300:	6830      	ldr	r0, [r6, #0]
 8006302:	b1a8      	cbz	r0, 8006330 <__pow5mult+0x54>
 8006304:	4606      	mov	r6, r0
 8006306:	07e3      	lsls	r3, r4, #31
 8006308:	d5f8      	bpl.n	80062fc <__pow5mult+0x20>
 800630a:	4632      	mov	r2, r6
 800630c:	4629      	mov	r1, r5
 800630e:	4638      	mov	r0, r7
 8006310:	f7ff ff3e 	bl	8006190 <__multiply>
 8006314:	b1b5      	cbz	r5, 8006344 <__pow5mult+0x68>
 8006316:	686a      	ldr	r2, [r5, #4]
 8006318:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800631a:	1064      	asrs	r4, r4, #1
 800631c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006320:	6029      	str	r1, [r5, #0]
 8006322:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006326:	4605      	mov	r5, r0
 8006328:	d1ea      	bne.n	8006300 <__pow5mult+0x24>
 800632a:	4628      	mov	r0, r5
 800632c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006330:	4632      	mov	r2, r6
 8006332:	4631      	mov	r1, r6
 8006334:	4638      	mov	r0, r7
 8006336:	f7ff ff2b 	bl	8006190 <__multiply>
 800633a:	6030      	str	r0, [r6, #0]
 800633c:	f8c0 8000 	str.w	r8, [r0]
 8006340:	4606      	mov	r6, r0
 8006342:	e7e0      	b.n	8006306 <__pow5mult+0x2a>
 8006344:	4605      	mov	r5, r0
 8006346:	e7d9      	b.n	80062fc <__pow5mult+0x20>
 8006348:	3b01      	subs	r3, #1
 800634a:	4a0b      	ldr	r2, [pc, #44]	; (8006378 <__pow5mult+0x9c>)
 800634c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006350:	2300      	movs	r3, #0
 8006352:	f7ff fe83 	bl	800605c <__multadd>
 8006356:	4605      	mov	r5, r0
 8006358:	e7c8      	b.n	80062ec <__pow5mult+0x10>
 800635a:	2101      	movs	r1, #1
 800635c:	4638      	mov	r0, r7
 800635e:	f7ff fe4d 	bl	8005ffc <_Balloc>
 8006362:	f240 2371 	movw	r3, #625	; 0x271
 8006366:	6143      	str	r3, [r0, #20]
 8006368:	2201      	movs	r2, #1
 800636a:	2300      	movs	r3, #0
 800636c:	6102      	str	r2, [r0, #16]
 800636e:	4606      	mov	r6, r0
 8006370:	64b8      	str	r0, [r7, #72]	; 0x48
 8006372:	6003      	str	r3, [r0, #0]
 8006374:	e7be      	b.n	80062f4 <__pow5mult+0x18>
 8006376:	bf00      	nop
 8006378:	08007340 	.word	0x08007340

0800637c <__lshift>:
 800637c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006380:	4691      	mov	r9, r2
 8006382:	690a      	ldr	r2, [r1, #16]
 8006384:	460e      	mov	r6, r1
 8006386:	ea4f 1469 	mov.w	r4, r9, asr #5
 800638a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800638e:	eb04 0802 	add.w	r8, r4, r2
 8006392:	f108 0501 	add.w	r5, r8, #1
 8006396:	429d      	cmp	r5, r3
 8006398:	4607      	mov	r7, r0
 800639a:	dd04      	ble.n	80063a6 <__lshift+0x2a>
 800639c:	005b      	lsls	r3, r3, #1
 800639e:	429d      	cmp	r5, r3
 80063a0:	f101 0101 	add.w	r1, r1, #1
 80063a4:	dcfa      	bgt.n	800639c <__lshift+0x20>
 80063a6:	4638      	mov	r0, r7
 80063a8:	f7ff fe28 	bl	8005ffc <_Balloc>
 80063ac:	2c00      	cmp	r4, #0
 80063ae:	f100 0314 	add.w	r3, r0, #20
 80063b2:	dd37      	ble.n	8006424 <__lshift+0xa8>
 80063b4:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80063b8:	2200      	movs	r2, #0
 80063ba:	f843 2b04 	str.w	r2, [r3], #4
 80063be:	428b      	cmp	r3, r1
 80063c0:	d1fb      	bne.n	80063ba <__lshift+0x3e>
 80063c2:	6934      	ldr	r4, [r6, #16]
 80063c4:	f106 0314 	add.w	r3, r6, #20
 80063c8:	f019 091f 	ands.w	r9, r9, #31
 80063cc:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80063d0:	d020      	beq.n	8006414 <__lshift+0x98>
 80063d2:	f1c9 0e20 	rsb	lr, r9, #32
 80063d6:	2200      	movs	r2, #0
 80063d8:	e000      	b.n	80063dc <__lshift+0x60>
 80063da:	4651      	mov	r1, sl
 80063dc:	681c      	ldr	r4, [r3, #0]
 80063de:	468a      	mov	sl, r1
 80063e0:	fa04 f409 	lsl.w	r4, r4, r9
 80063e4:	4314      	orrs	r4, r2
 80063e6:	f84a 4b04 	str.w	r4, [sl], #4
 80063ea:	f853 2b04 	ldr.w	r2, [r3], #4
 80063ee:	4563      	cmp	r3, ip
 80063f0:	fa22 f20e 	lsr.w	r2, r2, lr
 80063f4:	d3f1      	bcc.n	80063da <__lshift+0x5e>
 80063f6:	604a      	str	r2, [r1, #4]
 80063f8:	b10a      	cbz	r2, 80063fe <__lshift+0x82>
 80063fa:	f108 0502 	add.w	r5, r8, #2
 80063fe:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006400:	6872      	ldr	r2, [r6, #4]
 8006402:	3d01      	subs	r5, #1
 8006404:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006408:	6105      	str	r5, [r0, #16]
 800640a:	6031      	str	r1, [r6, #0]
 800640c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006410:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006414:	3904      	subs	r1, #4
 8006416:	f853 2b04 	ldr.w	r2, [r3], #4
 800641a:	f841 2f04 	str.w	r2, [r1, #4]!
 800641e:	459c      	cmp	ip, r3
 8006420:	d8f9      	bhi.n	8006416 <__lshift+0x9a>
 8006422:	e7ec      	b.n	80063fe <__lshift+0x82>
 8006424:	4619      	mov	r1, r3
 8006426:	e7cc      	b.n	80063c2 <__lshift+0x46>

08006428 <__mcmp>:
 8006428:	b430      	push	{r4, r5}
 800642a:	690b      	ldr	r3, [r1, #16]
 800642c:	4605      	mov	r5, r0
 800642e:	6900      	ldr	r0, [r0, #16]
 8006430:	1ac0      	subs	r0, r0, r3
 8006432:	d10f      	bne.n	8006454 <__mcmp+0x2c>
 8006434:	009b      	lsls	r3, r3, #2
 8006436:	3514      	adds	r5, #20
 8006438:	3114      	adds	r1, #20
 800643a:	4419      	add	r1, r3
 800643c:	442b      	add	r3, r5
 800643e:	e001      	b.n	8006444 <__mcmp+0x1c>
 8006440:	429d      	cmp	r5, r3
 8006442:	d207      	bcs.n	8006454 <__mcmp+0x2c>
 8006444:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006448:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800644c:	4294      	cmp	r4, r2
 800644e:	d0f7      	beq.n	8006440 <__mcmp+0x18>
 8006450:	d302      	bcc.n	8006458 <__mcmp+0x30>
 8006452:	2001      	movs	r0, #1
 8006454:	bc30      	pop	{r4, r5}
 8006456:	4770      	bx	lr
 8006458:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800645c:	e7fa      	b.n	8006454 <__mcmp+0x2c>
 800645e:	bf00      	nop

08006460 <__mdiff>:
 8006460:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006464:	6913      	ldr	r3, [r2, #16]
 8006466:	690d      	ldr	r5, [r1, #16]
 8006468:	1aed      	subs	r5, r5, r3
 800646a:	2d00      	cmp	r5, #0
 800646c:	460e      	mov	r6, r1
 800646e:	4690      	mov	r8, r2
 8006470:	f101 0414 	add.w	r4, r1, #20
 8006474:	f102 0714 	add.w	r7, r2, #20
 8006478:	d114      	bne.n	80064a4 <__mdiff+0x44>
 800647a:	009b      	lsls	r3, r3, #2
 800647c:	18e2      	adds	r2, r4, r3
 800647e:	443b      	add	r3, r7
 8006480:	e001      	b.n	8006486 <__mdiff+0x26>
 8006482:	42a2      	cmp	r2, r4
 8006484:	d959      	bls.n	800653a <__mdiff+0xda>
 8006486:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800648a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800648e:	458c      	cmp	ip, r1
 8006490:	d0f7      	beq.n	8006482 <__mdiff+0x22>
 8006492:	d209      	bcs.n	80064a8 <__mdiff+0x48>
 8006494:	4622      	mov	r2, r4
 8006496:	4633      	mov	r3, r6
 8006498:	463c      	mov	r4, r7
 800649a:	4646      	mov	r6, r8
 800649c:	4617      	mov	r7, r2
 800649e:	4698      	mov	r8, r3
 80064a0:	2501      	movs	r5, #1
 80064a2:	e001      	b.n	80064a8 <__mdiff+0x48>
 80064a4:	dbf6      	blt.n	8006494 <__mdiff+0x34>
 80064a6:	2500      	movs	r5, #0
 80064a8:	6871      	ldr	r1, [r6, #4]
 80064aa:	f7ff fda7 	bl	8005ffc <_Balloc>
 80064ae:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80064b2:	6936      	ldr	r6, [r6, #16]
 80064b4:	60c5      	str	r5, [r0, #12]
 80064b6:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80064ba:	46bc      	mov	ip, r7
 80064bc:	f100 0514 	add.w	r5, r0, #20
 80064c0:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80064c4:	2300      	movs	r3, #0
 80064c6:	f85c 1b04 	ldr.w	r1, [ip], #4
 80064ca:	f854 8b04 	ldr.w	r8, [r4], #4
 80064ce:	b28a      	uxth	r2, r1
 80064d0:	fa13 f388 	uxtah	r3, r3, r8
 80064d4:	0c09      	lsrs	r1, r1, #16
 80064d6:	1a9a      	subs	r2, r3, r2
 80064d8:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80064dc:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80064e0:	b292      	uxth	r2, r2
 80064e2:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80064e6:	45e6      	cmp	lr, ip
 80064e8:	f845 2b04 	str.w	r2, [r5], #4
 80064ec:	ea4f 4323 	mov.w	r3, r3, asr #16
 80064f0:	d8e9      	bhi.n	80064c6 <__mdiff+0x66>
 80064f2:	42a7      	cmp	r7, r4
 80064f4:	d917      	bls.n	8006526 <__mdiff+0xc6>
 80064f6:	46ae      	mov	lr, r5
 80064f8:	46a4      	mov	ip, r4
 80064fa:	f85c 2b04 	ldr.w	r2, [ip], #4
 80064fe:	fa13 f382 	uxtah	r3, r3, r2
 8006502:	1419      	asrs	r1, r3, #16
 8006504:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006508:	b29b      	uxth	r3, r3
 800650a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800650e:	4567      	cmp	r7, ip
 8006510:	f84e 2b04 	str.w	r2, [lr], #4
 8006514:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006518:	d8ef      	bhi.n	80064fa <__mdiff+0x9a>
 800651a:	43e4      	mvns	r4, r4
 800651c:	4427      	add	r7, r4
 800651e:	f027 0703 	bic.w	r7, r7, #3
 8006522:	3704      	adds	r7, #4
 8006524:	443d      	add	r5, r7
 8006526:	3d04      	subs	r5, #4
 8006528:	b922      	cbnz	r2, 8006534 <__mdiff+0xd4>
 800652a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800652e:	3e01      	subs	r6, #1
 8006530:	2b00      	cmp	r3, #0
 8006532:	d0fa      	beq.n	800652a <__mdiff+0xca>
 8006534:	6106      	str	r6, [r0, #16]
 8006536:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800653a:	2100      	movs	r1, #0
 800653c:	f7ff fd5e 	bl	8005ffc <_Balloc>
 8006540:	2201      	movs	r2, #1
 8006542:	2300      	movs	r3, #0
 8006544:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006548:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800654c <__d2b>:
 800654c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006550:	460f      	mov	r7, r1
 8006552:	b083      	sub	sp, #12
 8006554:	2101      	movs	r1, #1
 8006556:	ec55 4b10 	vmov	r4, r5, d0
 800655a:	4616      	mov	r6, r2
 800655c:	f7ff fd4e 	bl	8005ffc <_Balloc>
 8006560:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006564:	4681      	mov	r9, r0
 8006566:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800656a:	f1b8 0f00 	cmp.w	r8, #0
 800656e:	d001      	beq.n	8006574 <__d2b+0x28>
 8006570:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006574:	2c00      	cmp	r4, #0
 8006576:	9301      	str	r3, [sp, #4]
 8006578:	d024      	beq.n	80065c4 <__d2b+0x78>
 800657a:	a802      	add	r0, sp, #8
 800657c:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006580:	f7ff fdcc 	bl	800611c <__lo0bits>
 8006584:	2800      	cmp	r0, #0
 8006586:	d136      	bne.n	80065f6 <__d2b+0xaa>
 8006588:	e9dd 2300 	ldrd	r2, r3, [sp]
 800658c:	f8c9 2014 	str.w	r2, [r9, #20]
 8006590:	2b00      	cmp	r3, #0
 8006592:	bf0c      	ite	eq
 8006594:	2101      	moveq	r1, #1
 8006596:	2102      	movne	r1, #2
 8006598:	f8c9 3018 	str.w	r3, [r9, #24]
 800659c:	f8c9 1010 	str.w	r1, [r9, #16]
 80065a0:	f1b8 0f00 	cmp.w	r8, #0
 80065a4:	d11b      	bne.n	80065de <__d2b+0x92>
 80065a6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80065aa:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80065ae:	6038      	str	r0, [r7, #0]
 80065b0:	6918      	ldr	r0, [r3, #16]
 80065b2:	f7ff fd93 	bl	80060dc <__hi0bits>
 80065b6:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80065ba:	6030      	str	r0, [r6, #0]
 80065bc:	4648      	mov	r0, r9
 80065be:	b003      	add	sp, #12
 80065c0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80065c4:	a801      	add	r0, sp, #4
 80065c6:	f7ff fda9 	bl	800611c <__lo0bits>
 80065ca:	9b01      	ldr	r3, [sp, #4]
 80065cc:	f8c9 3014 	str.w	r3, [r9, #20]
 80065d0:	2101      	movs	r1, #1
 80065d2:	3020      	adds	r0, #32
 80065d4:	f8c9 1010 	str.w	r1, [r9, #16]
 80065d8:	f1b8 0f00 	cmp.w	r8, #0
 80065dc:	d0e3      	beq.n	80065a6 <__d2b+0x5a>
 80065de:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80065e2:	eb08 0300 	add.w	r3, r8, r0
 80065e6:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80065ea:	603b      	str	r3, [r7, #0]
 80065ec:	6030      	str	r0, [r6, #0]
 80065ee:	4648      	mov	r0, r9
 80065f0:	b003      	add	sp, #12
 80065f2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80065f6:	e9dd 1300 	ldrd	r1, r3, [sp]
 80065fa:	f1c0 0220 	rsb	r2, r0, #32
 80065fe:	fa03 f202 	lsl.w	r2, r3, r2
 8006602:	430a      	orrs	r2, r1
 8006604:	40c3      	lsrs	r3, r0
 8006606:	9301      	str	r3, [sp, #4]
 8006608:	f8c9 2014 	str.w	r2, [r9, #20]
 800660c:	e7c0      	b.n	8006590 <__d2b+0x44>
 800660e:	bf00      	nop

08006610 <_realloc_r>:
 8006610:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006614:	4692      	mov	sl, r2
 8006616:	b083      	sub	sp, #12
 8006618:	2900      	cmp	r1, #0
 800661a:	f000 80a1 	beq.w	8006760 <_realloc_r+0x150>
 800661e:	460d      	mov	r5, r1
 8006620:	4680      	mov	r8, r0
 8006622:	f10a 040b 	add.w	r4, sl, #11
 8006626:	f7fc f991 	bl	800294c <__malloc_lock>
 800662a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800662e:	2c16      	cmp	r4, #22
 8006630:	f022 0603 	bic.w	r6, r2, #3
 8006634:	f1a5 0708 	sub.w	r7, r5, #8
 8006638:	d83e      	bhi.n	80066b8 <_realloc_r+0xa8>
 800663a:	2410      	movs	r4, #16
 800663c:	4621      	mov	r1, r4
 800663e:	45a2      	cmp	sl, r4
 8006640:	d83f      	bhi.n	80066c2 <_realloc_r+0xb2>
 8006642:	428e      	cmp	r6, r1
 8006644:	eb07 0906 	add.w	r9, r7, r6
 8006648:	da74      	bge.n	8006734 <_realloc_r+0x124>
 800664a:	4bc7      	ldr	r3, [pc, #796]	; (8006968 <_realloc_r+0x358>)
 800664c:	6898      	ldr	r0, [r3, #8]
 800664e:	4548      	cmp	r0, r9
 8006650:	f000 80aa 	beq.w	80067a8 <_realloc_r+0x198>
 8006654:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006658:	f020 0301 	bic.w	r3, r0, #1
 800665c:	444b      	add	r3, r9
 800665e:	685b      	ldr	r3, [r3, #4]
 8006660:	07db      	lsls	r3, r3, #31
 8006662:	f140 8083 	bpl.w	800676c <_realloc_r+0x15c>
 8006666:	07d2      	lsls	r2, r2, #31
 8006668:	d534      	bpl.n	80066d4 <_realloc_r+0xc4>
 800666a:	4651      	mov	r1, sl
 800666c:	4640      	mov	r0, r8
 800666e:	f7fb fe7f 	bl	8002370 <_malloc_r>
 8006672:	4682      	mov	sl, r0
 8006674:	b1e0      	cbz	r0, 80066b0 <_realloc_r+0xa0>
 8006676:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800667a:	f023 0301 	bic.w	r3, r3, #1
 800667e:	443b      	add	r3, r7
 8006680:	f1a0 0208 	sub.w	r2, r0, #8
 8006684:	4293      	cmp	r3, r2
 8006686:	f000 80f9 	beq.w	800687c <_realloc_r+0x26c>
 800668a:	1f32      	subs	r2, r6, #4
 800668c:	2a24      	cmp	r2, #36	; 0x24
 800668e:	f200 8107 	bhi.w	80068a0 <_realloc_r+0x290>
 8006692:	2a13      	cmp	r2, #19
 8006694:	6829      	ldr	r1, [r5, #0]
 8006696:	f200 80e6 	bhi.w	8006866 <_realloc_r+0x256>
 800669a:	4603      	mov	r3, r0
 800669c:	462a      	mov	r2, r5
 800669e:	6019      	str	r1, [r3, #0]
 80066a0:	6851      	ldr	r1, [r2, #4]
 80066a2:	6059      	str	r1, [r3, #4]
 80066a4:	6892      	ldr	r2, [r2, #8]
 80066a6:	609a      	str	r2, [r3, #8]
 80066a8:	4629      	mov	r1, r5
 80066aa:	4640      	mov	r0, r8
 80066ac:	f7ff f918 	bl	80058e0 <_free_r>
 80066b0:	4640      	mov	r0, r8
 80066b2:	f7fc f951 	bl	8002958 <__malloc_unlock>
 80066b6:	e04f      	b.n	8006758 <_realloc_r+0x148>
 80066b8:	f024 0407 	bic.w	r4, r4, #7
 80066bc:	2c00      	cmp	r4, #0
 80066be:	4621      	mov	r1, r4
 80066c0:	dabd      	bge.n	800663e <_realloc_r+0x2e>
 80066c2:	f04f 0a00 	mov.w	sl, #0
 80066c6:	230c      	movs	r3, #12
 80066c8:	4650      	mov	r0, sl
 80066ca:	f8c8 3000 	str.w	r3, [r8]
 80066ce:	b003      	add	sp, #12
 80066d0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066d4:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80066d8:	eba7 0b03 	sub.w	fp, r7, r3
 80066dc:	f8db 2004 	ldr.w	r2, [fp, #4]
 80066e0:	f022 0203 	bic.w	r2, r2, #3
 80066e4:	18b3      	adds	r3, r6, r2
 80066e6:	428b      	cmp	r3, r1
 80066e8:	dbbf      	blt.n	800666a <_realloc_r+0x5a>
 80066ea:	46da      	mov	sl, fp
 80066ec:	f8db 100c 	ldr.w	r1, [fp, #12]
 80066f0:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80066f4:	1f32      	subs	r2, r6, #4
 80066f6:	2a24      	cmp	r2, #36	; 0x24
 80066f8:	60c1      	str	r1, [r0, #12]
 80066fa:	eb0b 0903 	add.w	r9, fp, r3
 80066fe:	6088      	str	r0, [r1, #8]
 8006700:	f200 80c6 	bhi.w	8006890 <_realloc_r+0x280>
 8006704:	2a13      	cmp	r2, #19
 8006706:	6829      	ldr	r1, [r5, #0]
 8006708:	f240 80c0 	bls.w	800688c <_realloc_r+0x27c>
 800670c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006710:	6869      	ldr	r1, [r5, #4]
 8006712:	f8cb 100c 	str.w	r1, [fp, #12]
 8006716:	2a1b      	cmp	r2, #27
 8006718:	68a9      	ldr	r1, [r5, #8]
 800671a:	f200 80d8 	bhi.w	80068ce <_realloc_r+0x2be>
 800671e:	f10b 0210 	add.w	r2, fp, #16
 8006722:	3508      	adds	r5, #8
 8006724:	6011      	str	r1, [r2, #0]
 8006726:	6869      	ldr	r1, [r5, #4]
 8006728:	6051      	str	r1, [r2, #4]
 800672a:	68a9      	ldr	r1, [r5, #8]
 800672c:	6091      	str	r1, [r2, #8]
 800672e:	461e      	mov	r6, r3
 8006730:	465f      	mov	r7, fp
 8006732:	4655      	mov	r5, sl
 8006734:	687b      	ldr	r3, [r7, #4]
 8006736:	1b32      	subs	r2, r6, r4
 8006738:	2a0f      	cmp	r2, #15
 800673a:	f003 0301 	and.w	r3, r3, #1
 800673e:	d822      	bhi.n	8006786 <_realloc_r+0x176>
 8006740:	4333      	orrs	r3, r6
 8006742:	607b      	str	r3, [r7, #4]
 8006744:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006748:	f043 0301 	orr.w	r3, r3, #1
 800674c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006750:	4640      	mov	r0, r8
 8006752:	f7fc f901 	bl	8002958 <__malloc_unlock>
 8006756:	46aa      	mov	sl, r5
 8006758:	4650      	mov	r0, sl
 800675a:	b003      	add	sp, #12
 800675c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006760:	4611      	mov	r1, r2
 8006762:	b003      	add	sp, #12
 8006764:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006768:	f7fb be02 	b.w	8002370 <_malloc_r>
 800676c:	f020 0003 	bic.w	r0, r0, #3
 8006770:	1833      	adds	r3, r6, r0
 8006772:	428b      	cmp	r3, r1
 8006774:	db61      	blt.n	800683a <_realloc_r+0x22a>
 8006776:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800677a:	461e      	mov	r6, r3
 800677c:	60ca      	str	r2, [r1, #12]
 800677e:	eb07 0903 	add.w	r9, r7, r3
 8006782:	6091      	str	r1, [r2, #8]
 8006784:	e7d6      	b.n	8006734 <_realloc_r+0x124>
 8006786:	1939      	adds	r1, r7, r4
 8006788:	4323      	orrs	r3, r4
 800678a:	f042 0201 	orr.w	r2, r2, #1
 800678e:	607b      	str	r3, [r7, #4]
 8006790:	604a      	str	r2, [r1, #4]
 8006792:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006796:	f043 0301 	orr.w	r3, r3, #1
 800679a:	3108      	adds	r1, #8
 800679c:	f8c9 3004 	str.w	r3, [r9, #4]
 80067a0:	4640      	mov	r0, r8
 80067a2:	f7ff f89d 	bl	80058e0 <_free_r>
 80067a6:	e7d3      	b.n	8006750 <_realloc_r+0x140>
 80067a8:	6840      	ldr	r0, [r0, #4]
 80067aa:	f020 0903 	bic.w	r9, r0, #3
 80067ae:	44b1      	add	r9, r6
 80067b0:	f104 0010 	add.w	r0, r4, #16
 80067b4:	4581      	cmp	r9, r0
 80067b6:	da77      	bge.n	80068a8 <_realloc_r+0x298>
 80067b8:	07d2      	lsls	r2, r2, #31
 80067ba:	f53f af56 	bmi.w	800666a <_realloc_r+0x5a>
 80067be:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80067c2:	eba7 0b02 	sub.w	fp, r7, r2
 80067c6:	f8db 2004 	ldr.w	r2, [fp, #4]
 80067ca:	f022 0203 	bic.w	r2, r2, #3
 80067ce:	4491      	add	r9, r2
 80067d0:	4548      	cmp	r0, r9
 80067d2:	dc87      	bgt.n	80066e4 <_realloc_r+0xd4>
 80067d4:	46da      	mov	sl, fp
 80067d6:	f8db 100c 	ldr.w	r1, [fp, #12]
 80067da:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80067de:	1f32      	subs	r2, r6, #4
 80067e0:	2a24      	cmp	r2, #36	; 0x24
 80067e2:	60c1      	str	r1, [r0, #12]
 80067e4:	6088      	str	r0, [r1, #8]
 80067e6:	f200 80a1 	bhi.w	800692c <_realloc_r+0x31c>
 80067ea:	2a13      	cmp	r2, #19
 80067ec:	6829      	ldr	r1, [r5, #0]
 80067ee:	f240 809b 	bls.w	8006928 <_realloc_r+0x318>
 80067f2:	f8cb 1008 	str.w	r1, [fp, #8]
 80067f6:	6869      	ldr	r1, [r5, #4]
 80067f8:	f8cb 100c 	str.w	r1, [fp, #12]
 80067fc:	2a1b      	cmp	r2, #27
 80067fe:	68a9      	ldr	r1, [r5, #8]
 8006800:	f200 809b 	bhi.w	800693a <_realloc_r+0x32a>
 8006804:	f10b 0210 	add.w	r2, fp, #16
 8006808:	3508      	adds	r5, #8
 800680a:	6011      	str	r1, [r2, #0]
 800680c:	6869      	ldr	r1, [r5, #4]
 800680e:	6051      	str	r1, [r2, #4]
 8006810:	68a9      	ldr	r1, [r5, #8]
 8006812:	6091      	str	r1, [r2, #8]
 8006814:	eb0b 0104 	add.w	r1, fp, r4
 8006818:	eba9 0204 	sub.w	r2, r9, r4
 800681c:	f042 0201 	orr.w	r2, r2, #1
 8006820:	6099      	str	r1, [r3, #8]
 8006822:	604a      	str	r2, [r1, #4]
 8006824:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006828:	f003 0301 	and.w	r3, r3, #1
 800682c:	431c      	orrs	r4, r3
 800682e:	4640      	mov	r0, r8
 8006830:	f8cb 4004 	str.w	r4, [fp, #4]
 8006834:	f7fc f890 	bl	8002958 <__malloc_unlock>
 8006838:	e78e      	b.n	8006758 <_realloc_r+0x148>
 800683a:	07d3      	lsls	r3, r2, #31
 800683c:	f53f af15 	bmi.w	800666a <_realloc_r+0x5a>
 8006840:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006844:	eba7 0b03 	sub.w	fp, r7, r3
 8006848:	f8db 2004 	ldr.w	r2, [fp, #4]
 800684c:	f022 0203 	bic.w	r2, r2, #3
 8006850:	4410      	add	r0, r2
 8006852:	1983      	adds	r3, r0, r6
 8006854:	428b      	cmp	r3, r1
 8006856:	f6ff af45 	blt.w	80066e4 <_realloc_r+0xd4>
 800685a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800685e:	46da      	mov	sl, fp
 8006860:	60ca      	str	r2, [r1, #12]
 8006862:	6091      	str	r1, [r2, #8]
 8006864:	e742      	b.n	80066ec <_realloc_r+0xdc>
 8006866:	6001      	str	r1, [r0, #0]
 8006868:	686b      	ldr	r3, [r5, #4]
 800686a:	6043      	str	r3, [r0, #4]
 800686c:	2a1b      	cmp	r2, #27
 800686e:	d83a      	bhi.n	80068e6 <_realloc_r+0x2d6>
 8006870:	f105 0208 	add.w	r2, r5, #8
 8006874:	f100 0308 	add.w	r3, r0, #8
 8006878:	68a9      	ldr	r1, [r5, #8]
 800687a:	e710      	b.n	800669e <_realloc_r+0x8e>
 800687c:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006880:	f023 0303 	bic.w	r3, r3, #3
 8006884:	441e      	add	r6, r3
 8006886:	eb07 0906 	add.w	r9, r7, r6
 800688a:	e753      	b.n	8006734 <_realloc_r+0x124>
 800688c:	4652      	mov	r2, sl
 800688e:	e749      	b.n	8006724 <_realloc_r+0x114>
 8006890:	4629      	mov	r1, r5
 8006892:	4650      	mov	r0, sl
 8006894:	461e      	mov	r6, r3
 8006896:	465f      	mov	r7, fp
 8006898:	f7ff fb4c 	bl	8005f34 <memmove>
 800689c:	4655      	mov	r5, sl
 800689e:	e749      	b.n	8006734 <_realloc_r+0x124>
 80068a0:	4629      	mov	r1, r5
 80068a2:	f7ff fb47 	bl	8005f34 <memmove>
 80068a6:	e6ff      	b.n	80066a8 <_realloc_r+0x98>
 80068a8:	4427      	add	r7, r4
 80068aa:	eba9 0904 	sub.w	r9, r9, r4
 80068ae:	f049 0201 	orr.w	r2, r9, #1
 80068b2:	609f      	str	r7, [r3, #8]
 80068b4:	607a      	str	r2, [r7, #4]
 80068b6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80068ba:	f003 0301 	and.w	r3, r3, #1
 80068be:	431c      	orrs	r4, r3
 80068c0:	4640      	mov	r0, r8
 80068c2:	f845 4c04 	str.w	r4, [r5, #-4]
 80068c6:	f7fc f847 	bl	8002958 <__malloc_unlock>
 80068ca:	46aa      	mov	sl, r5
 80068cc:	e744      	b.n	8006758 <_realloc_r+0x148>
 80068ce:	f8cb 1010 	str.w	r1, [fp, #16]
 80068d2:	68e9      	ldr	r1, [r5, #12]
 80068d4:	f8cb 1014 	str.w	r1, [fp, #20]
 80068d8:	2a24      	cmp	r2, #36	; 0x24
 80068da:	d010      	beq.n	80068fe <_realloc_r+0x2ee>
 80068dc:	6929      	ldr	r1, [r5, #16]
 80068de:	f10b 0218 	add.w	r2, fp, #24
 80068e2:	3510      	adds	r5, #16
 80068e4:	e71e      	b.n	8006724 <_realloc_r+0x114>
 80068e6:	68ab      	ldr	r3, [r5, #8]
 80068e8:	6083      	str	r3, [r0, #8]
 80068ea:	68eb      	ldr	r3, [r5, #12]
 80068ec:	60c3      	str	r3, [r0, #12]
 80068ee:	2a24      	cmp	r2, #36	; 0x24
 80068f0:	d010      	beq.n	8006914 <_realloc_r+0x304>
 80068f2:	f105 0210 	add.w	r2, r5, #16
 80068f6:	f100 0310 	add.w	r3, r0, #16
 80068fa:	6929      	ldr	r1, [r5, #16]
 80068fc:	e6cf      	b.n	800669e <_realloc_r+0x8e>
 80068fe:	692a      	ldr	r2, [r5, #16]
 8006900:	f8cb 2018 	str.w	r2, [fp, #24]
 8006904:	696a      	ldr	r2, [r5, #20]
 8006906:	f8cb 201c 	str.w	r2, [fp, #28]
 800690a:	69a9      	ldr	r1, [r5, #24]
 800690c:	f10b 0220 	add.w	r2, fp, #32
 8006910:	3518      	adds	r5, #24
 8006912:	e707      	b.n	8006724 <_realloc_r+0x114>
 8006914:	692b      	ldr	r3, [r5, #16]
 8006916:	6103      	str	r3, [r0, #16]
 8006918:	696b      	ldr	r3, [r5, #20]
 800691a:	6143      	str	r3, [r0, #20]
 800691c:	69a9      	ldr	r1, [r5, #24]
 800691e:	f105 0218 	add.w	r2, r5, #24
 8006922:	f100 0318 	add.w	r3, r0, #24
 8006926:	e6ba      	b.n	800669e <_realloc_r+0x8e>
 8006928:	4652      	mov	r2, sl
 800692a:	e76e      	b.n	800680a <_realloc_r+0x1fa>
 800692c:	4629      	mov	r1, r5
 800692e:	4650      	mov	r0, sl
 8006930:	9301      	str	r3, [sp, #4]
 8006932:	f7ff faff 	bl	8005f34 <memmove>
 8006936:	9b01      	ldr	r3, [sp, #4]
 8006938:	e76c      	b.n	8006814 <_realloc_r+0x204>
 800693a:	f8cb 1010 	str.w	r1, [fp, #16]
 800693e:	68e9      	ldr	r1, [r5, #12]
 8006940:	f8cb 1014 	str.w	r1, [fp, #20]
 8006944:	2a24      	cmp	r2, #36	; 0x24
 8006946:	d004      	beq.n	8006952 <_realloc_r+0x342>
 8006948:	6929      	ldr	r1, [r5, #16]
 800694a:	f10b 0218 	add.w	r2, fp, #24
 800694e:	3510      	adds	r5, #16
 8006950:	e75b      	b.n	800680a <_realloc_r+0x1fa>
 8006952:	692a      	ldr	r2, [r5, #16]
 8006954:	f8cb 2018 	str.w	r2, [fp, #24]
 8006958:	696a      	ldr	r2, [r5, #20]
 800695a:	f8cb 201c 	str.w	r2, [fp, #28]
 800695e:	69a9      	ldr	r1, [r5, #24]
 8006960:	f10b 0220 	add.w	r2, fp, #32
 8006964:	3518      	adds	r5, #24
 8006966:	e750      	b.n	800680a <_realloc_r+0x1fa>
 8006968:	200005d8 	.word	0x200005d8

0800696c <frexp>:
 800696c:	ec53 2b10 	vmov	r2, r3, d0
 8006970:	b570      	push	{r4, r5, r6, lr}
 8006972:	4e16      	ldr	r6, [pc, #88]	; (80069cc <frexp+0x60>)
 8006974:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006978:	2500      	movs	r5, #0
 800697a:	42b1      	cmp	r1, r6
 800697c:	4604      	mov	r4, r0
 800697e:	6005      	str	r5, [r0, #0]
 8006980:	dc21      	bgt.n	80069c6 <frexp+0x5a>
 8006982:	ee10 6a10 	vmov	r6, s0
 8006986:	430e      	orrs	r6, r1
 8006988:	d01d      	beq.n	80069c6 <frexp+0x5a>
 800698a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800698e:	4618      	mov	r0, r3
 8006990:	da0c      	bge.n	80069ac <frexp+0x40>
 8006992:	4619      	mov	r1, r3
 8006994:	2200      	movs	r2, #0
 8006996:	ee10 0a10 	vmov	r0, s0
 800699a:	4b0d      	ldr	r3, [pc, #52]	; (80069d0 <frexp+0x64>)
 800699c:	f7fa f8cc 	bl	8000b38 <__aeabi_dmul>
 80069a0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80069a4:	4602      	mov	r2, r0
 80069a6:	4608      	mov	r0, r1
 80069a8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80069ac:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80069b0:	1509      	asrs	r1, r1, #20
 80069b2:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80069b6:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80069ba:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80069be:	4429      	add	r1, r5
 80069c0:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80069c4:	6021      	str	r1, [r4, #0]
 80069c6:	ec43 2b10 	vmov	d0, r2, r3
 80069ca:	bd70      	pop	{r4, r5, r6, pc}
 80069cc:	7fefffff 	.word	0x7fefffff
 80069d0:	43500000 	.word	0x43500000

080069d4 <__sread>:
 80069d4:	b510      	push	{r4, lr}
 80069d6:	460c      	mov	r4, r1
 80069d8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069dc:	f000 fabc 	bl	8006f58 <_read_r>
 80069e0:	2800      	cmp	r0, #0
 80069e2:	db03      	blt.n	80069ec <__sread+0x18>
 80069e4:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80069e6:	4403      	add	r3, r0
 80069e8:	6523      	str	r3, [r4, #80]	; 0x50
 80069ea:	bd10      	pop	{r4, pc}
 80069ec:	89a3      	ldrh	r3, [r4, #12]
 80069ee:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80069f2:	81a3      	strh	r3, [r4, #12]
 80069f4:	bd10      	pop	{r4, pc}
 80069f6:	bf00      	nop

080069f8 <__swrite>:
 80069f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80069fc:	4616      	mov	r6, r2
 80069fe:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006a02:	461f      	mov	r7, r3
 8006a04:	05d3      	lsls	r3, r2, #23
 8006a06:	460c      	mov	r4, r1
 8006a08:	4605      	mov	r5, r0
 8006a0a:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a0e:	d507      	bpl.n	8006a20 <__swrite+0x28>
 8006a10:	2200      	movs	r2, #0
 8006a12:	2302      	movs	r3, #2
 8006a14:	f000 fa74 	bl	8006f00 <_lseek_r>
 8006a18:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006a1c:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006a20:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006a24:	81a2      	strh	r2, [r4, #12]
 8006a26:	463b      	mov	r3, r7
 8006a28:	4632      	mov	r2, r6
 8006a2a:	4628      	mov	r0, r5
 8006a2c:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006a30:	f000 b88c 	b.w	8006b4c <_write_r>

08006a34 <__sseek>:
 8006a34:	b510      	push	{r4, lr}
 8006a36:	460c      	mov	r4, r1
 8006a38:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a3c:	f000 fa60 	bl	8006f00 <_lseek_r>
 8006a40:	89a3      	ldrh	r3, [r4, #12]
 8006a42:	1c42      	adds	r2, r0, #1
 8006a44:	bf0e      	itee	eq
 8006a46:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006a4a:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006a4e:	6520      	strne	r0, [r4, #80]	; 0x50
 8006a50:	81a3      	strh	r3, [r4, #12]
 8006a52:	bd10      	pop	{r4, pc}

08006a54 <__sclose>:
 8006a54:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a58:	f000 b922 	b.w	8006ca0 <_close_r>

08006a5c <strncpy>:
 8006a5c:	ea40 0301 	orr.w	r3, r0, r1
 8006a60:	079b      	lsls	r3, r3, #30
 8006a62:	b470      	push	{r4, r5, r6}
 8006a64:	d12a      	bne.n	8006abc <strncpy+0x60>
 8006a66:	2a03      	cmp	r2, #3
 8006a68:	d928      	bls.n	8006abc <strncpy+0x60>
 8006a6a:	460c      	mov	r4, r1
 8006a6c:	4603      	mov	r3, r0
 8006a6e:	4621      	mov	r1, r4
 8006a70:	f854 6b04 	ldr.w	r6, [r4], #4
 8006a74:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006a78:	ea25 0506 	bic.w	r5, r5, r6
 8006a7c:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006a80:	d106      	bne.n	8006a90 <strncpy+0x34>
 8006a82:	3a04      	subs	r2, #4
 8006a84:	2a03      	cmp	r2, #3
 8006a86:	f843 6b04 	str.w	r6, [r3], #4
 8006a8a:	4621      	mov	r1, r4
 8006a8c:	d8ef      	bhi.n	8006a6e <strncpy+0x12>
 8006a8e:	b19a      	cbz	r2, 8006ab8 <strncpy+0x5c>
 8006a90:	780c      	ldrb	r4, [r1, #0]
 8006a92:	701c      	strb	r4, [r3, #0]
 8006a94:	3a01      	subs	r2, #1
 8006a96:	3301      	adds	r3, #1
 8006a98:	b13c      	cbz	r4, 8006aaa <strncpy+0x4e>
 8006a9a:	b16a      	cbz	r2, 8006ab8 <strncpy+0x5c>
 8006a9c:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006aa0:	f803 4b01 	strb.w	r4, [r3], #1
 8006aa4:	3a01      	subs	r2, #1
 8006aa6:	2c00      	cmp	r4, #0
 8006aa8:	d1f7      	bne.n	8006a9a <strncpy+0x3e>
 8006aaa:	b12a      	cbz	r2, 8006ab8 <strncpy+0x5c>
 8006aac:	441a      	add	r2, r3
 8006aae:	2100      	movs	r1, #0
 8006ab0:	f803 1b01 	strb.w	r1, [r3], #1
 8006ab4:	4293      	cmp	r3, r2
 8006ab6:	d1fb      	bne.n	8006ab0 <strncpy+0x54>
 8006ab8:	bc70      	pop	{r4, r5, r6}
 8006aba:	4770      	bx	lr
 8006abc:	4603      	mov	r3, r0
 8006abe:	e7e6      	b.n	8006a8e <strncpy+0x32>

08006ac0 <__sprint_r.part.0>:
 8006ac0:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006ac4:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006ac6:	049c      	lsls	r4, r3, #18
 8006ac8:	4692      	mov	sl, r2
 8006aca:	d52d      	bpl.n	8006b28 <__sprint_r.part.0+0x68>
 8006acc:	6893      	ldr	r3, [r2, #8]
 8006ace:	6812      	ldr	r2, [r2, #0]
 8006ad0:	b343      	cbz	r3, 8006b24 <__sprint_r.part.0+0x64>
 8006ad2:	460e      	mov	r6, r1
 8006ad4:	4607      	mov	r7, r0
 8006ad6:	f102 0908 	add.w	r9, r2, #8
 8006ada:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006ade:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006ae2:	d015      	beq.n	8006b10 <__sprint_r.part.0+0x50>
 8006ae4:	3d04      	subs	r5, #4
 8006ae6:	2400      	movs	r4, #0
 8006ae8:	e001      	b.n	8006aee <__sprint_r.part.0+0x2e>
 8006aea:	45a0      	cmp	r8, r4
 8006aec:	d00e      	beq.n	8006b0c <__sprint_r.part.0+0x4c>
 8006aee:	4632      	mov	r2, r6
 8006af0:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006af4:	4638      	mov	r0, r7
 8006af6:	f000 f99d 	bl	8006e34 <_fputwc_r>
 8006afa:	1c43      	adds	r3, r0, #1
 8006afc:	f104 0401 	add.w	r4, r4, #1
 8006b00:	d1f3      	bne.n	8006aea <__sprint_r.part.0+0x2a>
 8006b02:	2300      	movs	r3, #0
 8006b04:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b08:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b0c:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006b10:	f02b 0b03 	bic.w	fp, fp, #3
 8006b14:	eba3 030b 	sub.w	r3, r3, fp
 8006b18:	f8ca 3008 	str.w	r3, [sl, #8]
 8006b1c:	f109 0908 	add.w	r9, r9, #8
 8006b20:	2b00      	cmp	r3, #0
 8006b22:	d1da      	bne.n	8006ada <__sprint_r.part.0+0x1a>
 8006b24:	2000      	movs	r0, #0
 8006b26:	e7ec      	b.n	8006b02 <__sprint_r.part.0+0x42>
 8006b28:	f7fe ffce 	bl	8005ac8 <__sfvwrite_r>
 8006b2c:	2300      	movs	r3, #0
 8006b2e:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b32:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b36:	bf00      	nop

08006b38 <__sprint_r>:
 8006b38:	6893      	ldr	r3, [r2, #8]
 8006b3a:	b10b      	cbz	r3, 8006b40 <__sprint_r+0x8>
 8006b3c:	f7ff bfc0 	b.w	8006ac0 <__sprint_r.part.0>
 8006b40:	b410      	push	{r4}
 8006b42:	4618      	mov	r0, r3
 8006b44:	6053      	str	r3, [r2, #4]
 8006b46:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006b4a:	4770      	bx	lr

08006b4c <_write_r>:
 8006b4c:	b570      	push	{r4, r5, r6, lr}
 8006b4e:	460d      	mov	r5, r1
 8006b50:	4c08      	ldr	r4, [pc, #32]	; (8006b74 <_write_r+0x28>)
 8006b52:	4611      	mov	r1, r2
 8006b54:	4606      	mov	r6, r0
 8006b56:	461a      	mov	r2, r3
 8006b58:	4628      	mov	r0, r5
 8006b5a:	2300      	movs	r3, #0
 8006b5c:	6023      	str	r3, [r4, #0]
 8006b5e:	f7fb fb3e 	bl	80021de <_write>
 8006b62:	1c43      	adds	r3, r0, #1
 8006b64:	d000      	beq.n	8006b68 <_write_r+0x1c>
 8006b66:	bd70      	pop	{r4, r5, r6, pc}
 8006b68:	6823      	ldr	r3, [r4, #0]
 8006b6a:	2b00      	cmp	r3, #0
 8006b6c:	d0fb      	beq.n	8006b66 <_write_r+0x1a>
 8006b6e:	6033      	str	r3, [r6, #0]
 8006b70:	bd70      	pop	{r4, r5, r6, pc}
 8006b72:	bf00      	nop
 8006b74:	20000c9c 	.word	0x20000c9c

08006b78 <__register_exitproc>:
 8006b78:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006b7c:	4d2b      	ldr	r5, [pc, #172]	; (8006c2c <__register_exitproc+0xb4>)
 8006b7e:	4606      	mov	r6, r0
 8006b80:	6828      	ldr	r0, [r5, #0]
 8006b82:	4698      	mov	r8, r3
 8006b84:	460f      	mov	r7, r1
 8006b86:	4691      	mov	r9, r2
 8006b88:	f7ff f958 	bl	8005e3c <__retarget_lock_acquire_recursive>
 8006b8c:	4b28      	ldr	r3, [pc, #160]	; (8006c30 <__register_exitproc+0xb8>)
 8006b8e:	681c      	ldr	r4, [r3, #0]
 8006b90:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006b94:	2b00      	cmp	r3, #0
 8006b96:	d03d      	beq.n	8006c14 <__register_exitproc+0x9c>
 8006b98:	685a      	ldr	r2, [r3, #4]
 8006b9a:	2a1f      	cmp	r2, #31
 8006b9c:	dc0d      	bgt.n	8006bba <__register_exitproc+0x42>
 8006b9e:	f102 0c01 	add.w	ip, r2, #1
 8006ba2:	bb16      	cbnz	r6, 8006bea <__register_exitproc+0x72>
 8006ba4:	3202      	adds	r2, #2
 8006ba6:	f8c3 c004 	str.w	ip, [r3, #4]
 8006baa:	6828      	ldr	r0, [r5, #0]
 8006bac:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006bb0:	f7ff f946 	bl	8005e40 <__retarget_lock_release_recursive>
 8006bb4:	2000      	movs	r0, #0
 8006bb6:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006bba:	4b1e      	ldr	r3, [pc, #120]	; (8006c34 <__register_exitproc+0xbc>)
 8006bbc:	b37b      	cbz	r3, 8006c1e <__register_exitproc+0xa6>
 8006bbe:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006bc2:	f7fb fbc5 	bl	8002350 <malloc>
 8006bc6:	4603      	mov	r3, r0
 8006bc8:	b348      	cbz	r0, 8006c1e <__register_exitproc+0xa6>
 8006bca:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006bce:	2100      	movs	r1, #0
 8006bd0:	e9c0 2100 	strd	r2, r1, [r0]
 8006bd4:	f04f 0c01 	mov.w	ip, #1
 8006bd8:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006bdc:	460a      	mov	r2, r1
 8006bde:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006be2:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006be6:	2e00      	cmp	r6, #0
 8006be8:	d0dc      	beq.n	8006ba4 <__register_exitproc+0x2c>
 8006bea:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006bee:	2401      	movs	r4, #1
 8006bf0:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006bf4:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006bf8:	4094      	lsls	r4, r2
 8006bfa:	4320      	orrs	r0, r4
 8006bfc:	2e02      	cmp	r6, #2
 8006bfe:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006c02:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006c06:	d1cd      	bne.n	8006ba4 <__register_exitproc+0x2c>
 8006c08:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006c0c:	430c      	orrs	r4, r1
 8006c0e:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006c12:	e7c7      	b.n	8006ba4 <__register_exitproc+0x2c>
 8006c14:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006c18:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006c1c:	e7bc      	b.n	8006b98 <__register_exitproc+0x20>
 8006c1e:	6828      	ldr	r0, [r5, #0]
 8006c20:	f7ff f90e 	bl	8005e40 <__retarget_lock_release_recursive>
 8006c24:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006c28:	e7c5      	b.n	8006bb6 <__register_exitproc+0x3e>
 8006c2a:	bf00      	nop
 8006c2c:	200009e8 	.word	0x200009e8
 8006c30:	080071d4 	.word	0x080071d4
 8006c34:	08002351 	.word	0x08002351

08006c38 <_calloc_r>:
 8006c38:	b510      	push	{r4, lr}
 8006c3a:	fb02 f101 	mul.w	r1, r2, r1
 8006c3e:	f7fb fb97 	bl	8002370 <_malloc_r>
 8006c42:	4604      	mov	r4, r0
 8006c44:	b1d8      	cbz	r0, 8006c7e <_calloc_r+0x46>
 8006c46:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006c4a:	f022 0203 	bic.w	r2, r2, #3
 8006c4e:	3a04      	subs	r2, #4
 8006c50:	2a24      	cmp	r2, #36	; 0x24
 8006c52:	d81d      	bhi.n	8006c90 <_calloc_r+0x58>
 8006c54:	2a13      	cmp	r2, #19
 8006c56:	d914      	bls.n	8006c82 <_calloc_r+0x4a>
 8006c58:	2300      	movs	r3, #0
 8006c5a:	2a1b      	cmp	r2, #27
 8006c5c:	e9c0 3300 	strd	r3, r3, [r0]
 8006c60:	d91b      	bls.n	8006c9a <_calloc_r+0x62>
 8006c62:	2a24      	cmp	r2, #36	; 0x24
 8006c64:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006c68:	bf0a      	itet	eq
 8006c6a:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006c6e:	f100 0210 	addne.w	r2, r0, #16
 8006c72:	f100 0218 	addeq.w	r2, r0, #24
 8006c76:	2300      	movs	r3, #0
 8006c78:	e9c2 3300 	strd	r3, r3, [r2]
 8006c7c:	6093      	str	r3, [r2, #8]
 8006c7e:	4620      	mov	r0, r4
 8006c80:	bd10      	pop	{r4, pc}
 8006c82:	4602      	mov	r2, r0
 8006c84:	2300      	movs	r3, #0
 8006c86:	e9c2 3300 	strd	r3, r3, [r2]
 8006c8a:	6093      	str	r3, [r2, #8]
 8006c8c:	4620      	mov	r0, r4
 8006c8e:	bd10      	pop	{r4, pc}
 8006c90:	2100      	movs	r1, #0
 8006c92:	f7fb fe11 	bl	80028b8 <memset>
 8006c96:	4620      	mov	r0, r4
 8006c98:	bd10      	pop	{r4, pc}
 8006c9a:	f100 0208 	add.w	r2, r0, #8
 8006c9e:	e7f1      	b.n	8006c84 <_calloc_r+0x4c>

08006ca0 <_close_r>:
 8006ca0:	b538      	push	{r3, r4, r5, lr}
 8006ca2:	4c07      	ldr	r4, [pc, #28]	; (8006cc0 <_close_r+0x20>)
 8006ca4:	2300      	movs	r3, #0
 8006ca6:	4605      	mov	r5, r0
 8006ca8:	4608      	mov	r0, r1
 8006caa:	6023      	str	r3, [r4, #0]
 8006cac:	f7fb fac6 	bl	800223c <_close>
 8006cb0:	1c43      	adds	r3, r0, #1
 8006cb2:	d000      	beq.n	8006cb6 <_close_r+0x16>
 8006cb4:	bd38      	pop	{r3, r4, r5, pc}
 8006cb6:	6823      	ldr	r3, [r4, #0]
 8006cb8:	2b00      	cmp	r3, #0
 8006cba:	d0fb      	beq.n	8006cb4 <_close_r+0x14>
 8006cbc:	602b      	str	r3, [r5, #0]
 8006cbe:	bd38      	pop	{r3, r4, r5, pc}
 8006cc0:	20000c9c 	.word	0x20000c9c

08006cc4 <_fclose_r>:
 8006cc4:	b570      	push	{r4, r5, r6, lr}
 8006cc6:	2900      	cmp	r1, #0
 8006cc8:	d048      	beq.n	8006d5c <_fclose_r+0x98>
 8006cca:	4605      	mov	r5, r0
 8006ccc:	460c      	mov	r4, r1
 8006cce:	b110      	cbz	r0, 8006cd6 <_fclose_r+0x12>
 8006cd0:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006cd2:	2b00      	cmp	r3, #0
 8006cd4:	d048      	beq.n	8006d68 <_fclose_r+0xa4>
 8006cd6:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006cd8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cdc:	07d0      	lsls	r0, r2, #31
 8006cde:	d440      	bmi.n	8006d62 <_fclose_r+0x9e>
 8006ce0:	0599      	lsls	r1, r3, #22
 8006ce2:	d530      	bpl.n	8006d46 <_fclose_r+0x82>
 8006ce4:	4621      	mov	r1, r4
 8006ce6:	4628      	mov	r0, r5
 8006ce8:	f7fe fc52 	bl	8005590 <__sflush_r>
 8006cec:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006cee:	4606      	mov	r6, r0
 8006cf0:	b133      	cbz	r3, 8006d00 <_fclose_r+0x3c>
 8006cf2:	69e1      	ldr	r1, [r4, #28]
 8006cf4:	4628      	mov	r0, r5
 8006cf6:	4798      	blx	r3
 8006cf8:	2800      	cmp	r0, #0
 8006cfa:	bfb8      	it	lt
 8006cfc:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006d00:	89a3      	ldrh	r3, [r4, #12]
 8006d02:	061a      	lsls	r2, r3, #24
 8006d04:	d43c      	bmi.n	8006d80 <_fclose_r+0xbc>
 8006d06:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006d08:	b141      	cbz	r1, 8006d1c <_fclose_r+0x58>
 8006d0a:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006d0e:	4299      	cmp	r1, r3
 8006d10:	d002      	beq.n	8006d18 <_fclose_r+0x54>
 8006d12:	4628      	mov	r0, r5
 8006d14:	f7fe fde4 	bl	80058e0 <_free_r>
 8006d18:	2300      	movs	r3, #0
 8006d1a:	6323      	str	r3, [r4, #48]	; 0x30
 8006d1c:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006d1e:	b121      	cbz	r1, 8006d2a <_fclose_r+0x66>
 8006d20:	4628      	mov	r0, r5
 8006d22:	f7fe fddd 	bl	80058e0 <_free_r>
 8006d26:	2300      	movs	r3, #0
 8006d28:	6463      	str	r3, [r4, #68]	; 0x44
 8006d2a:	f7fe fd63 	bl	80057f4 <__sfp_lock_acquire>
 8006d2e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006d30:	2200      	movs	r2, #0
 8006d32:	07db      	lsls	r3, r3, #31
 8006d34:	81a2      	strh	r2, [r4, #12]
 8006d36:	d51f      	bpl.n	8006d78 <_fclose_r+0xb4>
 8006d38:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d3a:	f7ff f87d 	bl	8005e38 <__retarget_lock_close_recursive>
 8006d3e:	f7fe fd5f 	bl	8005800 <__sfp_lock_release>
 8006d42:	4630      	mov	r0, r6
 8006d44:	bd70      	pop	{r4, r5, r6, pc}
 8006d46:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d48:	f7ff f878 	bl	8005e3c <__retarget_lock_acquire_recursive>
 8006d4c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d50:	2b00      	cmp	r3, #0
 8006d52:	d1c7      	bne.n	8006ce4 <_fclose_r+0x20>
 8006d54:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006d56:	f016 0601 	ands.w	r6, r6, #1
 8006d5a:	d016      	beq.n	8006d8a <_fclose_r+0xc6>
 8006d5c:	2600      	movs	r6, #0
 8006d5e:	4630      	mov	r0, r6
 8006d60:	bd70      	pop	{r4, r5, r6, pc}
 8006d62:	2b00      	cmp	r3, #0
 8006d64:	d0fa      	beq.n	8006d5c <_fclose_r+0x98>
 8006d66:	e7bd      	b.n	8006ce4 <_fclose_r+0x20>
 8006d68:	f7fe fd18 	bl	800579c <__sinit>
 8006d6c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d6e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d72:	07d0      	lsls	r0, r2, #31
 8006d74:	d4f5      	bmi.n	8006d62 <_fclose_r+0x9e>
 8006d76:	e7b3      	b.n	8006ce0 <_fclose_r+0x1c>
 8006d78:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d7a:	f7ff f861 	bl	8005e40 <__retarget_lock_release_recursive>
 8006d7e:	e7db      	b.n	8006d38 <_fclose_r+0x74>
 8006d80:	6921      	ldr	r1, [r4, #16]
 8006d82:	4628      	mov	r0, r5
 8006d84:	f7fe fdac 	bl	80058e0 <_free_r>
 8006d88:	e7bd      	b.n	8006d06 <_fclose_r+0x42>
 8006d8a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d8c:	f7ff f858 	bl	8005e40 <__retarget_lock_release_recursive>
 8006d90:	4630      	mov	r0, r6
 8006d92:	bd70      	pop	{r4, r5, r6, pc}

08006d94 <__fputwc>:
 8006d94:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006d98:	b082      	sub	sp, #8
 8006d9a:	4681      	mov	r9, r0
 8006d9c:	4688      	mov	r8, r1
 8006d9e:	4614      	mov	r4, r2
 8006da0:	f000 f8a0 	bl	8006ee4 <__locale_mb_cur_max>
 8006da4:	2801      	cmp	r0, #1
 8006da6:	d103      	bne.n	8006db0 <__fputwc+0x1c>
 8006da8:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006dac:	2bfe      	cmp	r3, #254	; 0xfe
 8006dae:	d933      	bls.n	8006e18 <__fputwc+0x84>
 8006db0:	4642      	mov	r2, r8
 8006db2:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006db6:	a901      	add	r1, sp, #4
 8006db8:	4648      	mov	r0, r9
 8006dba:	f000 f93b 	bl	8007034 <_wcrtomb_r>
 8006dbe:	1c42      	adds	r2, r0, #1
 8006dc0:	4606      	mov	r6, r0
 8006dc2:	d02f      	beq.n	8006e24 <__fputwc+0x90>
 8006dc4:	b320      	cbz	r0, 8006e10 <__fputwc+0x7c>
 8006dc6:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006dca:	2500      	movs	r5, #0
 8006dcc:	f10d 0a04 	add.w	sl, sp, #4
 8006dd0:	e009      	b.n	8006de6 <__fputwc+0x52>
 8006dd2:	6823      	ldr	r3, [r4, #0]
 8006dd4:	1c5a      	adds	r2, r3, #1
 8006dd6:	6022      	str	r2, [r4, #0]
 8006dd8:	f883 c000 	strb.w	ip, [r3]
 8006ddc:	3501      	adds	r5, #1
 8006dde:	42b5      	cmp	r5, r6
 8006de0:	d216      	bcs.n	8006e10 <__fputwc+0x7c>
 8006de2:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006de6:	68a3      	ldr	r3, [r4, #8]
 8006de8:	3b01      	subs	r3, #1
 8006dea:	2b00      	cmp	r3, #0
 8006dec:	60a3      	str	r3, [r4, #8]
 8006dee:	daf0      	bge.n	8006dd2 <__fputwc+0x3e>
 8006df0:	69a7      	ldr	r7, [r4, #24]
 8006df2:	42bb      	cmp	r3, r7
 8006df4:	4661      	mov	r1, ip
 8006df6:	4622      	mov	r2, r4
 8006df8:	4648      	mov	r0, r9
 8006dfa:	db02      	blt.n	8006e02 <__fputwc+0x6e>
 8006dfc:	f1bc 0f0a 	cmp.w	ip, #10
 8006e00:	d1e7      	bne.n	8006dd2 <__fputwc+0x3e>
 8006e02:	f000 f8bf 	bl	8006f84 <__swbuf_r>
 8006e06:	1c43      	adds	r3, r0, #1
 8006e08:	d1e8      	bne.n	8006ddc <__fputwc+0x48>
 8006e0a:	b002      	add	sp, #8
 8006e0c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e10:	4640      	mov	r0, r8
 8006e12:	b002      	add	sp, #8
 8006e14:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e18:	fa5f fc88 	uxtb.w	ip, r8
 8006e1c:	4606      	mov	r6, r0
 8006e1e:	f88d c004 	strb.w	ip, [sp, #4]
 8006e22:	e7d2      	b.n	8006dca <__fputwc+0x36>
 8006e24:	89a3      	ldrh	r3, [r4, #12]
 8006e26:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006e2a:	81a3      	strh	r3, [r4, #12]
 8006e2c:	b002      	add	sp, #8
 8006e2e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e32:	bf00      	nop

08006e34 <_fputwc_r>:
 8006e34:	b530      	push	{r4, r5, lr}
 8006e36:	4605      	mov	r5, r0
 8006e38:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006e3a:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006e3e:	07c0      	lsls	r0, r0, #31
 8006e40:	4614      	mov	r4, r2
 8006e42:	b083      	sub	sp, #12
 8006e44:	b29a      	uxth	r2, r3
 8006e46:	d401      	bmi.n	8006e4c <_fputwc_r+0x18>
 8006e48:	0590      	lsls	r0, r2, #22
 8006e4a:	d51c      	bpl.n	8006e86 <_fputwc_r+0x52>
 8006e4c:	0490      	lsls	r0, r2, #18
 8006e4e:	d406      	bmi.n	8006e5e <_fputwc_r+0x2a>
 8006e50:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006e52:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006e56:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006e5a:	81a3      	strh	r3, [r4, #12]
 8006e5c:	6662      	str	r2, [r4, #100]	; 0x64
 8006e5e:	4628      	mov	r0, r5
 8006e60:	4622      	mov	r2, r4
 8006e62:	f7ff ff97 	bl	8006d94 <__fputwc>
 8006e66:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006e68:	07da      	lsls	r2, r3, #31
 8006e6a:	4605      	mov	r5, r0
 8006e6c:	d402      	bmi.n	8006e74 <_fputwc_r+0x40>
 8006e6e:	89a3      	ldrh	r3, [r4, #12]
 8006e70:	059b      	lsls	r3, r3, #22
 8006e72:	d502      	bpl.n	8006e7a <_fputwc_r+0x46>
 8006e74:	4628      	mov	r0, r5
 8006e76:	b003      	add	sp, #12
 8006e78:	bd30      	pop	{r4, r5, pc}
 8006e7a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e7c:	f7fe ffe0 	bl	8005e40 <__retarget_lock_release_recursive>
 8006e80:	4628      	mov	r0, r5
 8006e82:	b003      	add	sp, #12
 8006e84:	bd30      	pop	{r4, r5, pc}
 8006e86:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e88:	9101      	str	r1, [sp, #4]
 8006e8a:	f7fe ffd7 	bl	8005e3c <__retarget_lock_acquire_recursive>
 8006e8e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e92:	9901      	ldr	r1, [sp, #4]
 8006e94:	b29a      	uxth	r2, r3
 8006e96:	e7d9      	b.n	8006e4c <_fputwc_r+0x18>

08006e98 <_fstat_r>:
 8006e98:	b538      	push	{r3, r4, r5, lr}
 8006e9a:	460b      	mov	r3, r1
 8006e9c:	4c07      	ldr	r4, [pc, #28]	; (8006ebc <_fstat_r+0x24>)
 8006e9e:	4605      	mov	r5, r0
 8006ea0:	4611      	mov	r1, r2
 8006ea2:	4618      	mov	r0, r3
 8006ea4:	2300      	movs	r3, #0
 8006ea6:	6023      	str	r3, [r4, #0]
 8006ea8:	f7fb f9cb 	bl	8002242 <_fstat>
 8006eac:	1c43      	adds	r3, r0, #1
 8006eae:	d000      	beq.n	8006eb2 <_fstat_r+0x1a>
 8006eb0:	bd38      	pop	{r3, r4, r5, pc}
 8006eb2:	6823      	ldr	r3, [r4, #0]
 8006eb4:	2b00      	cmp	r3, #0
 8006eb6:	d0fb      	beq.n	8006eb0 <_fstat_r+0x18>
 8006eb8:	602b      	str	r3, [r5, #0]
 8006eba:	bd38      	pop	{r3, r4, r5, pc}
 8006ebc:	20000c9c 	.word	0x20000c9c

08006ec0 <_isatty_r>:
 8006ec0:	b538      	push	{r3, r4, r5, lr}
 8006ec2:	4c07      	ldr	r4, [pc, #28]	; (8006ee0 <_isatty_r+0x20>)
 8006ec4:	2300      	movs	r3, #0
 8006ec6:	4605      	mov	r5, r0
 8006ec8:	4608      	mov	r0, r1
 8006eca:	6023      	str	r3, [r4, #0]
 8006ecc:	f7fb f9be 	bl	800224c <_isatty>
 8006ed0:	1c43      	adds	r3, r0, #1
 8006ed2:	d000      	beq.n	8006ed6 <_isatty_r+0x16>
 8006ed4:	bd38      	pop	{r3, r4, r5, pc}
 8006ed6:	6823      	ldr	r3, [r4, #0]
 8006ed8:	2b00      	cmp	r3, #0
 8006eda:	d0fb      	beq.n	8006ed4 <_isatty_r+0x14>
 8006edc:	602b      	str	r3, [r5, #0]
 8006ede:	bd38      	pop	{r3, r4, r5, pc}
 8006ee0:	20000c9c 	.word	0x20000c9c

08006ee4 <__locale_mb_cur_max>:
 8006ee4:	4b04      	ldr	r3, [pc, #16]	; (8006ef8 <__locale_mb_cur_max+0x14>)
 8006ee6:	4a05      	ldr	r2, [pc, #20]	; (8006efc <__locale_mb_cur_max+0x18>)
 8006ee8:	681b      	ldr	r3, [r3, #0]
 8006eea:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006eec:	2b00      	cmp	r3, #0
 8006eee:	bf08      	it	eq
 8006ef0:	4613      	moveq	r3, r2
 8006ef2:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006ef6:	4770      	bx	lr
 8006ef8:	200001a8 	.word	0x200001a8
 8006efc:	200009ec 	.word	0x200009ec

08006f00 <_lseek_r>:
 8006f00:	b570      	push	{r4, r5, r6, lr}
 8006f02:	460d      	mov	r5, r1
 8006f04:	4c08      	ldr	r4, [pc, #32]	; (8006f28 <_lseek_r+0x28>)
 8006f06:	4611      	mov	r1, r2
 8006f08:	4606      	mov	r6, r0
 8006f0a:	461a      	mov	r2, r3
 8006f0c:	4628      	mov	r0, r5
 8006f0e:	2300      	movs	r3, #0
 8006f10:	6023      	str	r3, [r4, #0]
 8006f12:	f7fb f99d 	bl	8002250 <_lseek>
 8006f16:	1c43      	adds	r3, r0, #1
 8006f18:	d000      	beq.n	8006f1c <_lseek_r+0x1c>
 8006f1a:	bd70      	pop	{r4, r5, r6, pc}
 8006f1c:	6823      	ldr	r3, [r4, #0]
 8006f1e:	2b00      	cmp	r3, #0
 8006f20:	d0fb      	beq.n	8006f1a <_lseek_r+0x1a>
 8006f22:	6033      	str	r3, [r6, #0]
 8006f24:	bd70      	pop	{r4, r5, r6, pc}
 8006f26:	bf00      	nop
 8006f28:	20000c9c 	.word	0x20000c9c

08006f2c <__ascii_mbtowc>:
 8006f2c:	b082      	sub	sp, #8
 8006f2e:	b149      	cbz	r1, 8006f44 <__ascii_mbtowc+0x18>
 8006f30:	b15a      	cbz	r2, 8006f4a <__ascii_mbtowc+0x1e>
 8006f32:	b16b      	cbz	r3, 8006f50 <__ascii_mbtowc+0x24>
 8006f34:	7813      	ldrb	r3, [r2, #0]
 8006f36:	600b      	str	r3, [r1, #0]
 8006f38:	7812      	ldrb	r2, [r2, #0]
 8006f3a:	1c10      	adds	r0, r2, #0
 8006f3c:	bf18      	it	ne
 8006f3e:	2001      	movne	r0, #1
 8006f40:	b002      	add	sp, #8
 8006f42:	4770      	bx	lr
 8006f44:	a901      	add	r1, sp, #4
 8006f46:	2a00      	cmp	r2, #0
 8006f48:	d1f3      	bne.n	8006f32 <__ascii_mbtowc+0x6>
 8006f4a:	4610      	mov	r0, r2
 8006f4c:	b002      	add	sp, #8
 8006f4e:	4770      	bx	lr
 8006f50:	f06f 0001 	mvn.w	r0, #1
 8006f54:	e7f4      	b.n	8006f40 <__ascii_mbtowc+0x14>
 8006f56:	bf00      	nop

08006f58 <_read_r>:
 8006f58:	b570      	push	{r4, r5, r6, lr}
 8006f5a:	460d      	mov	r5, r1
 8006f5c:	4c08      	ldr	r4, [pc, #32]	; (8006f80 <_read_r+0x28>)
 8006f5e:	4611      	mov	r1, r2
 8006f60:	4606      	mov	r6, r0
 8006f62:	461a      	mov	r2, r3
 8006f64:	4628      	mov	r0, r5
 8006f66:	2300      	movs	r3, #0
 8006f68:	6023      	str	r3, [r4, #0]
 8006f6a:	f7fb f925 	bl	80021b8 <_read>
 8006f6e:	1c43      	adds	r3, r0, #1
 8006f70:	d000      	beq.n	8006f74 <_read_r+0x1c>
 8006f72:	bd70      	pop	{r4, r5, r6, pc}
 8006f74:	6823      	ldr	r3, [r4, #0]
 8006f76:	2b00      	cmp	r3, #0
 8006f78:	d0fb      	beq.n	8006f72 <_read_r+0x1a>
 8006f7a:	6033      	str	r3, [r6, #0]
 8006f7c:	bd70      	pop	{r4, r5, r6, pc}
 8006f7e:	bf00      	nop
 8006f80:	20000c9c 	.word	0x20000c9c

08006f84 <__swbuf_r>:
 8006f84:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f86:	460d      	mov	r5, r1
 8006f88:	4614      	mov	r4, r2
 8006f8a:	4606      	mov	r6, r0
 8006f8c:	b110      	cbz	r0, 8006f94 <__swbuf_r+0x10>
 8006f8e:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f90:	2b00      	cmp	r3, #0
 8006f92:	d043      	beq.n	800701c <__swbuf_r+0x98>
 8006f94:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f98:	69a3      	ldr	r3, [r4, #24]
 8006f9a:	60a3      	str	r3, [r4, #8]
 8006f9c:	b291      	uxth	r1, r2
 8006f9e:	0708      	lsls	r0, r1, #28
 8006fa0:	d51b      	bpl.n	8006fda <__swbuf_r+0x56>
 8006fa2:	6923      	ldr	r3, [r4, #16]
 8006fa4:	b1cb      	cbz	r3, 8006fda <__swbuf_r+0x56>
 8006fa6:	b2ed      	uxtb	r5, r5
 8006fa8:	0489      	lsls	r1, r1, #18
 8006faa:	462f      	mov	r7, r5
 8006fac:	d522      	bpl.n	8006ff4 <__swbuf_r+0x70>
 8006fae:	6822      	ldr	r2, [r4, #0]
 8006fb0:	6961      	ldr	r1, [r4, #20]
 8006fb2:	1ad3      	subs	r3, r2, r3
 8006fb4:	4299      	cmp	r1, r3
 8006fb6:	dd29      	ble.n	800700c <__swbuf_r+0x88>
 8006fb8:	3301      	adds	r3, #1
 8006fba:	68a1      	ldr	r1, [r4, #8]
 8006fbc:	1c50      	adds	r0, r2, #1
 8006fbe:	3901      	subs	r1, #1
 8006fc0:	60a1      	str	r1, [r4, #8]
 8006fc2:	6020      	str	r0, [r4, #0]
 8006fc4:	7015      	strb	r5, [r2, #0]
 8006fc6:	6962      	ldr	r2, [r4, #20]
 8006fc8:	429a      	cmp	r2, r3
 8006fca:	d02a      	beq.n	8007022 <__swbuf_r+0x9e>
 8006fcc:	89a3      	ldrh	r3, [r4, #12]
 8006fce:	07db      	lsls	r3, r3, #31
 8006fd0:	d501      	bpl.n	8006fd6 <__swbuf_r+0x52>
 8006fd2:	2d0a      	cmp	r5, #10
 8006fd4:	d025      	beq.n	8007022 <__swbuf_r+0x9e>
 8006fd6:	4638      	mov	r0, r7
 8006fd8:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006fda:	4621      	mov	r1, r4
 8006fdc:	4630      	mov	r0, r6
 8006fde:	f7fd fabf 	bl	8004560 <__swsetup_r>
 8006fe2:	bb20      	cbnz	r0, 800702e <__swbuf_r+0xaa>
 8006fe4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006fe8:	6923      	ldr	r3, [r4, #16]
 8006fea:	b291      	uxth	r1, r2
 8006fec:	b2ed      	uxtb	r5, r5
 8006fee:	0489      	lsls	r1, r1, #18
 8006ff0:	462f      	mov	r7, r5
 8006ff2:	d4dc      	bmi.n	8006fae <__swbuf_r+0x2a>
 8006ff4:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006ff6:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006ffa:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006ffe:	81a2      	strh	r2, [r4, #12]
 8007000:	6822      	ldr	r2, [r4, #0]
 8007002:	6661      	str	r1, [r4, #100]	; 0x64
 8007004:	6961      	ldr	r1, [r4, #20]
 8007006:	1ad3      	subs	r3, r2, r3
 8007008:	4299      	cmp	r1, r3
 800700a:	dcd5      	bgt.n	8006fb8 <__swbuf_r+0x34>
 800700c:	4621      	mov	r1, r4
 800700e:	4630      	mov	r0, r6
 8007010:	f7fe fb68 	bl	80056e4 <_fflush_r>
 8007014:	b958      	cbnz	r0, 800702e <__swbuf_r+0xaa>
 8007016:	6822      	ldr	r2, [r4, #0]
 8007018:	2301      	movs	r3, #1
 800701a:	e7ce      	b.n	8006fba <__swbuf_r+0x36>
 800701c:	f7fe fbbe 	bl	800579c <__sinit>
 8007020:	e7b8      	b.n	8006f94 <__swbuf_r+0x10>
 8007022:	4621      	mov	r1, r4
 8007024:	4630      	mov	r0, r6
 8007026:	f7fe fb5d 	bl	80056e4 <_fflush_r>
 800702a:	2800      	cmp	r0, #0
 800702c:	d0d3      	beq.n	8006fd6 <__swbuf_r+0x52>
 800702e:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8007032:	e7d0      	b.n	8006fd6 <__swbuf_r+0x52>

08007034 <_wcrtomb_r>:
 8007034:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007036:	4c11      	ldr	r4, [pc, #68]	; (800707c <_wcrtomb_r+0x48>)
 8007038:	6824      	ldr	r4, [r4, #0]
 800703a:	b085      	sub	sp, #20
 800703c:	4606      	mov	r6, r0
 800703e:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8007040:	461f      	mov	r7, r3
 8007042:	b151      	cbz	r1, 800705a <_wcrtomb_r+0x26>
 8007044:	4d0e      	ldr	r5, [pc, #56]	; (8007080 <_wcrtomb_r+0x4c>)
 8007046:	2c00      	cmp	r4, #0
 8007048:	bf08      	it	eq
 800704a:	462c      	moveq	r4, r5
 800704c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007050:	47a0      	blx	r4
 8007052:	1c43      	adds	r3, r0, #1
 8007054:	d00c      	beq.n	8007070 <_wcrtomb_r+0x3c>
 8007056:	b005      	add	sp, #20
 8007058:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800705a:	4a09      	ldr	r2, [pc, #36]	; (8007080 <_wcrtomb_r+0x4c>)
 800705c:	2c00      	cmp	r4, #0
 800705e:	bf08      	it	eq
 8007060:	4614      	moveq	r4, r2
 8007062:	460a      	mov	r2, r1
 8007064:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007068:	a901      	add	r1, sp, #4
 800706a:	47a0      	blx	r4
 800706c:	1c43      	adds	r3, r0, #1
 800706e:	d1f2      	bne.n	8007056 <_wcrtomb_r+0x22>
 8007070:	2200      	movs	r2, #0
 8007072:	238a      	movs	r3, #138	; 0x8a
 8007074:	603a      	str	r2, [r7, #0]
 8007076:	6033      	str	r3, [r6, #0]
 8007078:	b005      	add	sp, #20
 800707a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800707c:	200001a8 	.word	0x200001a8
 8007080:	200009ec 	.word	0x200009ec

08007084 <__ascii_wctomb>:
 8007084:	b121      	cbz	r1, 8007090 <__ascii_wctomb+0xc>
 8007086:	2aff      	cmp	r2, #255	; 0xff
 8007088:	d804      	bhi.n	8007094 <__ascii_wctomb+0x10>
 800708a:	700a      	strb	r2, [r1, #0]
 800708c:	2001      	movs	r0, #1
 800708e:	4770      	bx	lr
 8007090:	4608      	mov	r0, r1
 8007092:	4770      	bx	lr
 8007094:	238a      	movs	r3, #138	; 0x8a
 8007096:	6003      	str	r3, [r0, #0]
 8007098:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800709c:	4770      	bx	lr
 800709e:	bf00      	nop

080070a0 <_init>:
 80070a0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80070a2:	bf00      	nop
 80070a4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80070a6:	bc08      	pop	{r3}
 80070a8:	469e      	mov	lr, r3
 80070aa:	4770      	bx	lr

080070ac <_fini>:
 80070ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80070ae:	bf00      	nop
 80070b0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80070b2:	bc08      	pop	{r3}
 80070b4:	469e      	mov	lr, r3
 80070b6:	4770      	bx	lr
