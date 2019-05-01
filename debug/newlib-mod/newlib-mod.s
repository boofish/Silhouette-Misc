
newlib-mod.elf:     file format elf32-littlearm


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
 80001e0:	08006e8c 	.word	0x08006e8c

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
 80001fc:	08006e8c 	.word	0x08006e8c

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
 8001108:	f640 20a4 	movw	r0, #2724	; 0xaa4
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20a4 	movw	r0, #2724	; 0xaa4
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
 80013e8:	f646 62c0 	movw	r2, #28352	; 0x6ec0
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
 800145a:	f240 0014 	movw	r0, #20
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f646 62b8 	movw	r2, #28344	; 0x6eb8
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
 8001484:	f240 0014 	movw	r0, #20
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f646 62b8 	movw	r2, #28344	; 0x6eb8
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
 8001842:	f640 21a8 	movw	r1, #2728	; 0xaa8
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
 800188c:	f640 20a8 	movw	r0, #2728	; 0xaa8
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20a8 	movw	r0, #2728	; 0xaa8
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
 80019d4:	f646 63f0 	movw	r3, #28400	; 0x6ef0
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
 80019fc:	f646 7300 	movw	r3, #28416	; 0x6f00
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

08001eb6 <verify_benchmark>:
 8001eb6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8001eba:	4770      	bx	lr

08001ebc <initialise_benchmark>:
 8001ebc:	4770      	bx	lr

08001ebe <benchmark>:
 8001ebe:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001ec2:	f640 7128 	movw	r1, #3880	; 0xf28
 8001ec6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001eca:	f2c4 010f 	movt	r1, #16399	; 0x400f
 8001ece:	6001      	str	r1, [r0, #0]
 8001ed0:	f641 0193 	movw	r1, #6291	; 0x1893
 8001ed4:	f2c4 0150 	movt	r1, #16464	; 0x4050
 8001ed8:	6001      	str	r1, [r0, #0]
 8001eda:	f64e 013e 	movw	r1, #59454	; 0xe83e
 8001ede:	f2c4 019d 	movt	r1, #16541	; 0x409d
 8001ee2:	6001      	str	r1, [r0, #0]
 8001ee4:	f647 6191 	movw	r1, #32401	; 0x7e91
 8001ee8:	f2c4 01a7 	movt	r1, #16551	; 0x40a7
 8001eec:	6001      	str	r1, [r0, #0]
 8001eee:	f248 61c2 	movw	r1, #34498	; 0x86c2
 8001ef2:	f2c4 01c7 	movt	r1, #16583	; 0x40c7
 8001ef6:	6001      	str	r1, [r0, #0]
 8001ef8:	2000      	movs	r0, #0
 8001efa:	4770      	bx	lr

08001efc <__io_putchar>:
 8001efc:	b580      	push	{r7, lr}
 8001efe:	466f      	mov	r7, sp
 8001f00:	b082      	sub	sp, #8
 8001f02:	9001      	str	r0, [sp, #4]
 8001f04:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8001f08:	a901      	add	r1, sp, #4
 8001f0a:	2201      	movs	r2, #1
 8001f0c:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001f10:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f14:	f7ff fee1 	bl	8001cda <HAL_UART_Transmit>
 8001f18:	9801      	ldr	r0, [sp, #4]
 8001f1a:	b002      	add	sp, #8
 8001f1c:	bd80      	pop	{r7, pc}

08001f1e <main>:
 8001f1e:	b5b0      	push	{r4, r5, r7, lr}
 8001f20:	af02      	add	r7, sp, #8
 8001f22:	f640 11e8 	movw	r1, #2536	; 0x9e8
 8001f26:	f643 0000 	movw	r0, #14336	; 0x3800
 8001f2a:	220c      	movs	r2, #12
 8001f2c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001f30:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001f34:	6008      	str	r0, [r1, #0]
 8001f36:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001f3a:	6048      	str	r0, [r1, #4]
 8001f3c:	2000      	movs	r0, #0
 8001f3e:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001f42:	6108      	str	r0, [r1, #16]
 8001f44:	6248      	str	r0, [r1, #36]	; 0x24
 8001f46:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8001f4a:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8001f4e:	2000      	movs	r0, #0
 8001f50:	f7ff ff58 	bl	8001e04 <BSP_COM_Init>
 8001f54:	f7ff ffb2 	bl	8001ebc <initialise_benchmark>
 8001f58:	f646 7010 	movw	r0, #28432	; 0x6f10
 8001f5c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f60:	f000 f948 	bl	80021f4 <printf>
 8001f64:	f646 70bd 	movw	r0, #28605	; 0x6fbd
 8001f68:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f6c:	f000 f9a4 	bl	80022b8 <puts>
 8001f70:	f7ff f8ba 	bl	80010e8 <HAL_Init>
 8001f74:	f7ff f8d0 	bl	8001118 <HAL_GetTick>
 8001f78:	4604      	mov	r4, r0
 8001f7a:	f7ff ffa0 	bl	8001ebe <benchmark>
 8001f7e:	4605      	mov	r5, r0
 8001f80:	f7ff f8ca 	bl	8001118 <HAL_GetTick>
 8001f84:	1b04      	subs	r4, r0, r4
 8001f86:	4628      	mov	r0, r5
 8001f88:	f7ff ff95 	bl	8001eb6 <verify_benchmark>
 8001f8c:	1c41      	adds	r1, r0, #1
 8001f8e:	d006      	beq.n	8001f9e <main+0x80>
 8001f90:	2801      	cmp	r0, #1
 8001f92:	d109      	bne.n	8001fa8 <main+0x8a>
 8001f94:	f646 7029 	movw	r0, #28457	; 0x6f29
 8001f98:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001f9c:	e008      	b.n	8001fb0 <main+0x92>
 8001f9e:	f646 704d 	movw	r0, #28493	; 0x6f4d
 8001fa2:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fa6:	e003      	b.n	8001fb0 <main+0x92>
 8001fa8:	f646 7082 	movw	r0, #28546	; 0x6f82
 8001fac:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fb0:	4621      	mov	r1, r4
 8001fb2:	f000 f91f 	bl	80021f4 <printf>
 8001fb6:	2000      	movs	r0, #0
 8001fb8:	bdb0      	pop	{r4, r5, r7, pc}

08001fba <SysTick_Handler>:
 8001fba:	b580      	push	{r7, lr}
 8001fbc:	466f      	mov	r7, sp
 8001fbe:	f7ff f8a3 	bl	8001108 <HAL_IncTick>
 8001fc2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001fc6:	f7ff b8fd 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08001fca <_read>:
 8001fca:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001fcc:	af03      	add	r7, sp, #12
 8001fce:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001fd2:	4614      	mov	r4, r2
 8001fd4:	460d      	mov	r5, r1
 8001fd6:	2c01      	cmp	r4, #1
 8001fd8:	db06      	blt.n	8001fe8 <_read+0x1e>
 8001fda:	4626      	mov	r6, r4
 8001fdc:	f3af 8000 	nop.w
 8001fe0:	f805 0b01 	strb.w	r0, [r5], #1
 8001fe4:	3e01      	subs	r6, #1
 8001fe6:	d1f9      	bne.n	8001fdc <_read+0x12>
 8001fe8:	4620      	mov	r0, r4
 8001fea:	f85d bb04 	ldr.w	fp, [sp], #4
 8001fee:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001ff0 <_write>:
 8001ff0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ff2:	af03      	add	r7, sp, #12
 8001ff4:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001ff8:	4614      	mov	r4, r2
 8001ffa:	460d      	mov	r5, r1
 8001ffc:	2c01      	cmp	r4, #1
 8001ffe:	db06      	blt.n	800200e <_write+0x1e>
 8002000:	4626      	mov	r6, r4
 8002002:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002006:	f7ff ff79 	bl	8001efc <__io_putchar>
 800200a:	3e01      	subs	r6, #1
 800200c:	d1f9      	bne.n	8002002 <_write+0x12>
 800200e:	4620      	mov	r0, r4
 8002010:	f85d bb04 	ldr.w	fp, [sp], #4
 8002014:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002016 <_sbrk>:
 8002016:	f640 226c 	movw	r2, #2668	; 0xa6c
 800201a:	4601      	mov	r1, r0
 800201c:	466b      	mov	r3, sp
 800201e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002022:	6810      	ldr	r0, [r2, #0]
 8002024:	2800      	cmp	r0, #0
 8002026:	bf02      	ittt	eq
 8002028:	f640 3018 	movweq	r0, #2840	; 0xb18
 800202c:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002030:	6010      	streq	r0, [r2, #0]
 8002032:	4401      	add	r1, r0
 8002034:	4299      	cmp	r1, r3
 8002036:	bf9c      	itt	ls
 8002038:	6011      	strls	r1, [r2, #0]
 800203a:	4770      	bxls	lr
 800203c:	b580      	push	{r7, lr}
 800203e:	466f      	mov	r7, sp
 8002040:	f000 f864 	bl	800210c <__errno>
 8002044:	210c      	movs	r1, #12
 8002046:	6001      	str	r1, [r0, #0]
 8002048:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800204c:	bd80      	pop	{r7, pc}

0800204e <_close>:
 800204e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002052:	4770      	bx	lr

08002054 <_fstat>:
 8002054:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002058:	6048      	str	r0, [r1, #4]
 800205a:	2000      	movs	r0, #0
 800205c:	4770      	bx	lr

0800205e <_isatty>:
 800205e:	2001      	movs	r0, #1
 8002060:	4770      	bx	lr

08002062 <_lseek>:
 8002062:	2000      	movs	r0, #0
 8002064:	4770      	bx	lr

08002066 <SystemInit>:
 8002066:	f64e 5088 	movw	r0, #60808	; 0xed88
 800206a:	f04f 0c00 	mov.w	ip, #0
 800206e:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002072:	6801      	ldr	r1, [r0, #0]
 8002074:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002078:	6001      	str	r1, [r0, #0]
 800207a:	f241 0100 	movw	r1, #4096	; 0x1000
 800207e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002082:	680a      	ldr	r2, [r1, #0]
 8002084:	f042 0201 	orr.w	r2, r2, #1
 8002088:	600a      	str	r2, [r1, #0]
 800208a:	f8c1 c008 	str.w	ip, [r1, #8]
 800208e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002092:	680b      	ldr	r3, [r1, #0]
 8002094:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002098:	401a      	ands	r2, r3
 800209a:	600a      	str	r2, [r1, #0]
 800209c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80020a0:	60ca      	str	r2, [r1, #12]
 80020a2:	680a      	ldr	r2, [r1, #0]
 80020a4:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80020a8:	600a      	str	r2, [r1, #0]
 80020aa:	f8c1 c018 	str.w	ip, [r1, #24]
 80020ae:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80020b2:	f840 1c80 	str.w	r1, [r0, #-128]
 80020b6:	4770      	bx	lr

080020b8 <Reset_Handler>:
 80020b8:	f8df d034 	ldr.w	sp, [pc, #52]	; 80020f0 <LoopForever+0x2>
 80020bc:	2100      	movs	r1, #0
 80020be:	e003      	b.n	80020c8 <LoopCopyDataInit>

080020c0 <CopyDataInit>:
 80020c0:	4b0c      	ldr	r3, [pc, #48]	; (80020f4 <LoopForever+0x6>)
 80020c2:	585b      	ldr	r3, [r3, r1]
 80020c4:	5043      	str	r3, [r0, r1]
 80020c6:	3104      	adds	r1, #4

080020c8 <LoopCopyDataInit>:
 80020c8:	480b      	ldr	r0, [pc, #44]	; (80020f8 <LoopForever+0xa>)
 80020ca:	4b0c      	ldr	r3, [pc, #48]	; (80020fc <LoopForever+0xe>)
 80020cc:	1842      	adds	r2, r0, r1
 80020ce:	429a      	cmp	r2, r3
 80020d0:	d3f6      	bcc.n	80020c0 <CopyDataInit>
 80020d2:	4a0b      	ldr	r2, [pc, #44]	; (8002100 <LoopForever+0x12>)
 80020d4:	e002      	b.n	80020dc <LoopFillZerobss>

080020d6 <FillZerobss>:
 80020d6:	2300      	movs	r3, #0
 80020d8:	f842 3b04 	str.w	r3, [r2], #4

080020dc <LoopFillZerobss>:
 80020dc:	4b09      	ldr	r3, [pc, #36]	; (8002104 <LoopForever+0x16>)
 80020de:	429a      	cmp	r2, r3
 80020e0:	d3f9      	bcc.n	80020d6 <FillZerobss>
 80020e2:	f7ff ffc0 	bl	8002066 <SystemInit>
 80020e6:	f000 f817 	bl	8002118 <__libc_init_array>
 80020ea:	f7ff ff18 	bl	8001f1e <main>

080020ee <LoopForever>:
 80020ee:	e7fe      	b.n	80020ee <LoopForever>
 80020f0:	20018000 	.word	0x20018000
 80020f4:	08007268 	.word	0x08007268
 80020f8:	20000000 	.word	0x20000000
 80020fc:	200009c8 	.word	0x200009c8
 8002100:	200009c8 	.word	0x200009c8
 8002104:	20000b14 	.word	0x20000b14

08002108 <ADC1_2_IRQHandler>:
 8002108:	e7fe      	b.n	8002108 <ADC1_2_IRQHandler>
	...

0800210c <__errno>:
 800210c:	4b01      	ldr	r3, [pc, #4]	; (8002114 <__errno+0x8>)
 800210e:	6818      	ldr	r0, [r3, #0]
 8002110:	4770      	bx	lr
 8002112:	bf00      	nop
 8002114:	20000018 	.word	0x20000018

08002118 <__libc_init_array>:
 8002118:	b570      	push	{r4, r5, r6, lr}
 800211a:	4e0d      	ldr	r6, [pc, #52]	; (8002150 <__libc_init_array+0x38>)
 800211c:	4d0d      	ldr	r5, [pc, #52]	; (8002154 <__libc_init_array+0x3c>)
 800211e:	1b76      	subs	r6, r6, r5
 8002120:	10b6      	asrs	r6, r6, #2
 8002122:	d006      	beq.n	8002132 <__libc_init_array+0x1a>
 8002124:	2400      	movs	r4, #0
 8002126:	3401      	adds	r4, #1
 8002128:	f855 3b04 	ldr.w	r3, [r5], #4
 800212c:	4798      	blx	r3
 800212e:	42a6      	cmp	r6, r4
 8002130:	d1f9      	bne.n	8002126 <__libc_init_array+0xe>
 8002132:	4e09      	ldr	r6, [pc, #36]	; (8002158 <__libc_init_array+0x40>)
 8002134:	4d09      	ldr	r5, [pc, #36]	; (800215c <__libc_init_array+0x44>)
 8002136:	1b76      	subs	r6, r6, r5
 8002138:	f004 fea8 	bl	8006e8c <_init>
 800213c:	10b6      	asrs	r6, r6, #2
 800213e:	d006      	beq.n	800214e <__libc_init_array+0x36>
 8002140:	2400      	movs	r4, #0
 8002142:	3401      	adds	r4, #1
 8002144:	f855 3b04 	ldr.w	r3, [r5], #4
 8002148:	4798      	blx	r3
 800214a:	42a6      	cmp	r6, r4
 800214c:	d1f9      	bne.n	8002142 <__libc_init_array+0x2a>
 800214e:	bd70      	pop	{r4, r5, r6, pc}
 8002150:	08007258 	.word	0x08007258
 8002154:	08007258 	.word	0x08007258
 8002158:	08007260 	.word	0x08007260
 800215c:	08007258 	.word	0x08007258

08002160 <memset>:
 8002160:	b4f0      	push	{r4, r5, r6, r7}
 8002162:	0786      	lsls	r6, r0, #30
 8002164:	d043      	beq.n	80021ee <memset+0x8e>
 8002166:	1e54      	subs	r4, r2, #1
 8002168:	2a00      	cmp	r2, #0
 800216a:	d03e      	beq.n	80021ea <memset+0x8a>
 800216c:	b2ca      	uxtb	r2, r1
 800216e:	4603      	mov	r3, r0
 8002170:	e002      	b.n	8002178 <memset+0x18>
 8002172:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002176:	d338      	bcc.n	80021ea <memset+0x8a>
 8002178:	f803 2b01 	strb.w	r2, [r3], #1
 800217c:	079d      	lsls	r5, r3, #30
 800217e:	d1f8      	bne.n	8002172 <memset+0x12>
 8002180:	2c03      	cmp	r4, #3
 8002182:	d92b      	bls.n	80021dc <memset+0x7c>
 8002184:	b2cd      	uxtb	r5, r1
 8002186:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800218a:	2c0f      	cmp	r4, #15
 800218c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002190:	d916      	bls.n	80021c0 <memset+0x60>
 8002192:	f1a4 0710 	sub.w	r7, r4, #16
 8002196:	093f      	lsrs	r7, r7, #4
 8002198:	f103 0620 	add.w	r6, r3, #32
 800219c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80021a0:	f103 0210 	add.w	r2, r3, #16
 80021a4:	e942 5504 	strd	r5, r5, [r2, #-16]
 80021a8:	e942 5502 	strd	r5, r5, [r2, #-8]
 80021ac:	3210      	adds	r2, #16
 80021ae:	42b2      	cmp	r2, r6
 80021b0:	d1f8      	bne.n	80021a4 <memset+0x44>
 80021b2:	f004 040f 	and.w	r4, r4, #15
 80021b6:	3701      	adds	r7, #1
 80021b8:	2c03      	cmp	r4, #3
 80021ba:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80021be:	d90d      	bls.n	80021dc <memset+0x7c>
 80021c0:	461e      	mov	r6, r3
 80021c2:	4622      	mov	r2, r4
 80021c4:	3a04      	subs	r2, #4
 80021c6:	2a03      	cmp	r2, #3
 80021c8:	f846 5b04 	str.w	r5, [r6], #4
 80021cc:	d8fa      	bhi.n	80021c4 <memset+0x64>
 80021ce:	1f22      	subs	r2, r4, #4
 80021d0:	f022 0203 	bic.w	r2, r2, #3
 80021d4:	3204      	adds	r2, #4
 80021d6:	4413      	add	r3, r2
 80021d8:	f004 0403 	and.w	r4, r4, #3
 80021dc:	b12c      	cbz	r4, 80021ea <memset+0x8a>
 80021de:	b2c9      	uxtb	r1, r1
 80021e0:	441c      	add	r4, r3
 80021e2:	f803 1b01 	strb.w	r1, [r3], #1
 80021e6:	429c      	cmp	r4, r3
 80021e8:	d1fb      	bne.n	80021e2 <memset+0x82>
 80021ea:	bcf0      	pop	{r4, r5, r6, r7}
 80021ec:	4770      	bx	lr
 80021ee:	4614      	mov	r4, r2
 80021f0:	4603      	mov	r3, r0
 80021f2:	e7c5      	b.n	8002180 <memset+0x20>

080021f4 <printf>:
 80021f4:	b40f      	push	{r0, r1, r2, r3}
 80021f6:	b500      	push	{lr}
 80021f8:	4907      	ldr	r1, [pc, #28]	; (8002218 <printf+0x24>)
 80021fa:	b083      	sub	sp, #12
 80021fc:	ab04      	add	r3, sp, #16
 80021fe:	6808      	ldr	r0, [r1, #0]
 8002200:	f853 2b04 	ldr.w	r2, [r3], #4
 8002204:	6881      	ldr	r1, [r0, #8]
 8002206:	9301      	str	r3, [sp, #4]
 8002208:	f000 f85e 	bl	80022c8 <_vfprintf_r>
 800220c:	b003      	add	sp, #12
 800220e:	f85d eb04 	ldr.w	lr, [sp], #4
 8002212:	b004      	add	sp, #16
 8002214:	4770      	bx	lr
 8002216:	bf00      	nop
 8002218:	20000018 	.word	0x20000018

0800221c <_puts_r>:
 800221c:	b570      	push	{r4, r5, r6, lr}
 800221e:	4605      	mov	r5, r0
 8002220:	b088      	sub	sp, #32
 8002222:	4608      	mov	r0, r1
 8002224:	460c      	mov	r4, r1
 8002226:	f7fe fa0b 	bl	8000640 <strlen>
 800222a:	4a22      	ldr	r2, [pc, #136]	; (80022b4 <_puts_r+0x98>)
 800222c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800222e:	9404      	str	r4, [sp, #16]
 8002230:	2601      	movs	r6, #1
 8002232:	1c44      	adds	r4, r0, #1
 8002234:	a904      	add	r1, sp, #16
 8002236:	9206      	str	r2, [sp, #24]
 8002238:	2202      	movs	r2, #2
 800223a:	9403      	str	r4, [sp, #12]
 800223c:	9005      	str	r0, [sp, #20]
 800223e:	68ac      	ldr	r4, [r5, #8]
 8002240:	9607      	str	r6, [sp, #28]
 8002242:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002246:	b31b      	cbz	r3, 8002290 <_puts_r+0x74>
 8002248:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800224a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800224e:	07ce      	lsls	r6, r1, #31
 8002250:	b29a      	uxth	r2, r3
 8002252:	d401      	bmi.n	8002258 <_puts_r+0x3c>
 8002254:	0590      	lsls	r0, r2, #22
 8002256:	d525      	bpl.n	80022a4 <_puts_r+0x88>
 8002258:	0491      	lsls	r1, r2, #18
 800225a:	d406      	bmi.n	800226a <_puts_r+0x4e>
 800225c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800225e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002262:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002266:	81a3      	strh	r3, [r4, #12]
 8002268:	6662      	str	r2, [r4, #100]	; 0x64
 800226a:	4628      	mov	r0, r5
 800226c:	aa01      	add	r2, sp, #4
 800226e:	4621      	mov	r1, r4
 8002270:	f003 f85e 	bl	8005330 <__sfvwrite_r>
 8002274:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002276:	2800      	cmp	r0, #0
 8002278:	bf0c      	ite	eq
 800227a:	250a      	moveq	r5, #10
 800227c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002280:	07da      	lsls	r2, r3, #31
 8002282:	d402      	bmi.n	800228a <_puts_r+0x6e>
 8002284:	89a3      	ldrh	r3, [r4, #12]
 8002286:	059b      	lsls	r3, r3, #22
 8002288:	d506      	bpl.n	8002298 <_puts_r+0x7c>
 800228a:	4628      	mov	r0, r5
 800228c:	b008      	add	sp, #32
 800228e:	bd70      	pop	{r4, r5, r6, pc}
 8002290:	4628      	mov	r0, r5
 8002292:	f002 feb7 	bl	8005004 <__sinit>
 8002296:	e7d7      	b.n	8002248 <_puts_r+0x2c>
 8002298:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800229a:	f003 fa05 	bl	80056a8 <__retarget_lock_release_recursive>
 800229e:	4628      	mov	r0, r5
 80022a0:	b008      	add	sp, #32
 80022a2:	bd70      	pop	{r4, r5, r6, pc}
 80022a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80022a6:	f003 f9fd 	bl	80056a4 <__retarget_lock_acquire_recursive>
 80022aa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80022ae:	b29a      	uxth	r2, r3
 80022b0:	e7d2      	b.n	8002258 <_puts_r+0x3c>
 80022b2:	bf00      	nop
 80022b4:	08006fc4 	.word	0x08006fc4

080022b8 <puts>:
 80022b8:	4b02      	ldr	r3, [pc, #8]	; (80022c4 <puts+0xc>)
 80022ba:	4601      	mov	r1, r0
 80022bc:	6818      	ldr	r0, [r3, #0]
 80022be:	f7ff bfad 	b.w	800221c <_puts_r>
 80022c2:	bf00      	nop
 80022c4:	20000018 	.word	0x20000018

080022c8 <_vfprintf_r>:
 80022c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80022cc:	b0d7      	sub	sp, #348	; 0x15c
 80022ce:	461c      	mov	r4, r3
 80022d0:	4689      	mov	r9, r1
 80022d2:	4617      	mov	r7, r2
 80022d4:	4605      	mov	r5, r0
 80022d6:	9003      	str	r0, [sp, #12]
 80022d8:	f003 f9d2 	bl	8005680 <_localeconv_r>
 80022dc:	6803      	ldr	r3, [r0, #0]
 80022de:	9316      	str	r3, [sp, #88]	; 0x58
 80022e0:	4618      	mov	r0, r3
 80022e2:	f7fe f9ad 	bl	8000640 <strlen>
 80022e6:	9408      	str	r4, [sp, #32]
 80022e8:	9015      	str	r0, [sp, #84]	; 0x54
 80022ea:	b11d      	cbz	r5, 80022f4 <_vfprintf_r+0x2c>
 80022ec:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80022ee:	2b00      	cmp	r3, #0
 80022f0:	f000 8107 	beq.w	8002502 <_vfprintf_r+0x23a>
 80022f4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80022f8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80022fc:	07c8      	lsls	r0, r1, #31
 80022fe:	b293      	uxth	r3, r2
 8002300:	d402      	bmi.n	8002308 <_vfprintf_r+0x40>
 8002302:	0599      	lsls	r1, r3, #22
 8002304:	f140 811f 	bpl.w	8002546 <_vfprintf_r+0x27e>
 8002308:	049e      	lsls	r6, r3, #18
 800230a:	d40a      	bmi.n	8002322 <_vfprintf_r+0x5a>
 800230c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002310:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002314:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002318:	f8a9 300c 	strh.w	r3, [r9, #12]
 800231c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002320:	b29b      	uxth	r3, r3
 8002322:	071d      	lsls	r5, r3, #28
 8002324:	f140 80b2 	bpl.w	800248c <_vfprintf_r+0x1c4>
 8002328:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800232c:	2a00      	cmp	r2, #0
 800232e:	f000 80ad 	beq.w	800248c <_vfprintf_r+0x1c4>
 8002332:	f003 021a 	and.w	r2, r3, #26
 8002336:	2a0a      	cmp	r2, #10
 8002338:	f000 80c9 	beq.w	80024ce <_vfprintf_r+0x206>
 800233c:	2300      	movs	r3, #0
 800233e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002558 <_vfprintf_r+0x290>
 8002342:	9310      	str	r3, [sp, #64]	; 0x40
 8002344:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002348:	9317      	str	r3, [sp, #92]	; 0x5c
 800234a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800234e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002350:	9318      	str	r3, [sp, #96]	; 0x60
 8002352:	9305      	str	r3, [sp, #20]
 8002354:	ab2d      	add	r3, sp, #180	; 0xb4
 8002356:	932a      	str	r3, [sp, #168]	; 0xa8
 8002358:	469b      	mov	fp, r3
 800235a:	783b      	ldrb	r3, [r7, #0]
 800235c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002360:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002364:	2b00      	cmp	r3, #0
 8002366:	f000 8259 	beq.w	800281c <_vfprintf_r+0x554>
 800236a:	2b25      	cmp	r3, #37	; 0x25
 800236c:	463c      	mov	r4, r7
 800236e:	d102      	bne.n	8002376 <_vfprintf_r+0xae>
 8002370:	e01d      	b.n	80023ae <_vfprintf_r+0xe6>
 8002372:	2b25      	cmp	r3, #37	; 0x25
 8002374:	d003      	beq.n	800237e <_vfprintf_r+0xb6>
 8002376:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800237a:	2b00      	cmp	r3, #0
 800237c:	d1f9      	bne.n	8002372 <_vfprintf_r+0xaa>
 800237e:	1be5      	subs	r5, r4, r7
 8002380:	b18d      	cbz	r5, 80023a6 <_vfprintf_r+0xde>
 8002382:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002386:	3301      	adds	r3, #1
 8002388:	442a      	add	r2, r5
 800238a:	2b07      	cmp	r3, #7
 800238c:	f8cb 7000 	str.w	r7, [fp]
 8002390:	f8cb 5004 	str.w	r5, [fp, #4]
 8002394:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002398:	f300 80ca 	bgt.w	8002530 <_vfprintf_r+0x268>
 800239c:	f10b 0b08 	add.w	fp, fp, #8
 80023a0:	9b05      	ldr	r3, [sp, #20]
 80023a2:	442b      	add	r3, r5
 80023a4:	9305      	str	r3, [sp, #20]
 80023a6:	7823      	ldrb	r3, [r4, #0]
 80023a8:	2b00      	cmp	r3, #0
 80023aa:	f000 8237 	beq.w	800281c <_vfprintf_r+0x554>
 80023ae:	2300      	movs	r3, #0
 80023b0:	7866      	ldrb	r6, [r4, #1]
 80023b2:	9306      	str	r3, [sp, #24]
 80023b4:	4698      	mov	r8, r3
 80023b6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80023ba:	f104 0a01 	add.w	sl, r4, #1
 80023be:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80023c2:	252b      	movs	r5, #43	; 0x2b
 80023c4:	f10a 0a01 	add.w	sl, sl, #1
 80023c8:	f1a6 0320 	sub.w	r3, r6, #32
 80023cc:	2b5a      	cmp	r3, #90	; 0x5a
 80023ce:	f200 842a 	bhi.w	8002c26 <_vfprintf_r+0x95e>
 80023d2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80023d6:	03aa      	.short	0x03aa
 80023d8:	04280428 	.word	0x04280428
 80023dc:	0428029c 	.word	0x0428029c
 80023e0:	04280428 	.word	0x04280428
 80023e4:	042802a7 	.word	0x042802a7
 80023e8:	02c60428 	.word	0x02c60428
 80023ec:	042802d2 	.word	0x042802d2
 80023f0:	02dc02d7 	.word	0x02dc02d7
 80023f4:	02f60428 	.word	0x02f60428
 80023f8:	026d026d 	.word	0x026d026d
 80023fc:	026d026d 	.word	0x026d026d
 8002400:	026d026d 	.word	0x026d026d
 8002404:	026d026d 	.word	0x026d026d
 8002408:	0428026d 	.word	0x0428026d
 800240c:	04280428 	.word	0x04280428
 8002410:	04280428 	.word	0x04280428
 8002414:	04280428 	.word	0x04280428
 8002418:	042802fb 	.word	0x042802fb
 800241c:	03f3033c 	.word	0x03f3033c
 8002420:	02fb02fb 	.word	0x02fb02fb
 8002424:	042802fb 	.word	0x042802fb
 8002428:	04280428 	.word	0x04280428
 800242c:	03ee0428 	.word	0x03ee0428
 8002430:	04280428 	.word	0x04280428
 8002434:	0428009a 	.word	0x0428009a
 8002438:	04280428 	.word	0x04280428
 800243c:	04280350 	.word	0x04280350
 8002440:	04280379 	.word	0x04280379
 8002444:	03900428 	.word	0x03900428
 8002448:	04280428 	.word	0x04280428
 800244c:	04280428 	.word	0x04280428
 8002450:	04280428 	.word	0x04280428
 8002454:	04280428 	.word	0x04280428
 8002458:	042802fb 	.word	0x042802fb
 800245c:	00c5033c 	.word	0x00c5033c
 8002460:	02fb02fb 	.word	0x02fb02fb
 8002464:	03d102fb 	.word	0x03d102fb
 8002468:	007000c5 	.word	0x007000c5
 800246c:	03b50428 	.word	0x03b50428
 8002470:	03c20428 	.word	0x03c20428
 8002474:	03de009c 	.word	0x03de009c
 8002478:	04280070 	.word	0x04280070
 800247c:	00720350 	.word	0x00720350
 8002480:	0428022c 	.word	0x0428022c
 8002484:	027c0428 	.word	0x027c0428
 8002488:	00720428 	.word	0x00720428
 800248c:	4649      	mov	r1, r9
 800248e:	9803      	ldr	r0, [sp, #12]
 8002490:	f001 fc9a 	bl	8003dc8 <__swsetup_r>
 8002494:	b1a0      	cbz	r0, 80024c0 <_vfprintf_r+0x1f8>
 8002496:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800249a:	07d8      	lsls	r0, r3, #31
 800249c:	d404      	bmi.n	80024a8 <_vfprintf_r+0x1e0>
 800249e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80024a2:	0599      	lsls	r1, r3, #22
 80024a4:	f140 83b7 	bpl.w	8002c16 <_vfprintf_r+0x94e>
 80024a8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80024ac:	9305      	str	r3, [sp, #20]
 80024ae:	9805      	ldr	r0, [sp, #20]
 80024b0:	b057      	add	sp, #348	; 0x15c
 80024b2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80024b6:	f048 0820 	orr.w	r8, r8, #32
 80024ba:	f89a 6000 	ldrb.w	r6, [sl]
 80024be:	e781      	b.n	80023c4 <_vfprintf_r+0xfc>
 80024c0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80024c4:	f003 021a 	and.w	r2, r3, #26
 80024c8:	2a0a      	cmp	r2, #10
 80024ca:	f47f af37 	bne.w	800233c <_vfprintf_r+0x74>
 80024ce:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80024d2:	2a00      	cmp	r2, #0
 80024d4:	f6ff af32 	blt.w	800233c <_vfprintf_r+0x74>
 80024d8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80024dc:	07d2      	lsls	r2, r2, #31
 80024de:	d405      	bmi.n	80024ec <_vfprintf_r+0x224>
 80024e0:	059b      	lsls	r3, r3, #22
 80024e2:	d403      	bmi.n	80024ec <_vfprintf_r+0x224>
 80024e4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80024e8:	f003 f8de 	bl	80056a8 <__retarget_lock_release_recursive>
 80024ec:	4623      	mov	r3, r4
 80024ee:	463a      	mov	r2, r7
 80024f0:	4649      	mov	r1, r9
 80024f2:	9803      	ldr	r0, [sp, #12]
 80024f4:	f001 fc26 	bl	8003d44 <__sbprintf>
 80024f8:	9005      	str	r0, [sp, #20]
 80024fa:	9805      	ldr	r0, [sp, #20]
 80024fc:	b057      	add	sp, #348	; 0x15c
 80024fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002502:	9803      	ldr	r0, [sp, #12]
 8002504:	f002 fd7e 	bl	8005004 <__sinit>
 8002508:	e6f4      	b.n	80022f4 <_vfprintf_r+0x2c>
 800250a:	f048 0810 	orr.w	r8, r8, #16
 800250e:	f018 0f20 	tst.w	r8, #32
 8002512:	f000 836c 	beq.w	8002bee <_vfprintf_r+0x926>
 8002516:	9c08      	ldr	r4, [sp, #32]
 8002518:	3407      	adds	r4, #7
 800251a:	f024 0307 	bic.w	r3, r4, #7
 800251e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002522:	f103 0208 	add.w	r2, r3, #8
 8002526:	9208      	str	r2, [sp, #32]
 8002528:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800252c:	2200      	movs	r2, #0
 800252e:	e18c      	b.n	800284a <_vfprintf_r+0x582>
 8002530:	aa2a      	add	r2, sp, #168	; 0xa8
 8002532:	9907      	ldr	r1, [sp, #28]
 8002534:	9803      	ldr	r0, [sp, #12]
 8002536:	f004 f9f5 	bl	8006924 <__sprint_r>
 800253a:	2800      	cmp	r0, #0
 800253c:	f041 8376 	bne.w	8003c2c <_vfprintf_r+0x1964>
 8002540:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002544:	e72c      	b.n	80023a0 <_vfprintf_r+0xd8>
 8002546:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800254a:	f003 f8ab 	bl	80056a4 <__retarget_lock_acquire_recursive>
 800254e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002552:	b293      	uxth	r3, r2
 8002554:	e6d8      	b.n	8002308 <_vfprintf_r+0x40>
 8002556:	bf00      	nop
	...
 8002560:	4643      	mov	r3, r8
 8002562:	069f      	lsls	r7, r3, #26
 8002564:	f140 832f 	bpl.w	8002bc6 <_vfprintf_r+0x8fe>
 8002568:	9c08      	ldr	r4, [sp, #32]
 800256a:	3407      	adds	r4, #7
 800256c:	f024 0407 	bic.w	r4, r4, #7
 8002570:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002574:	f104 0208 	add.w	r2, r4, #8
 8002578:	9208      	str	r2, [sp, #32]
 800257a:	4604      	mov	r4, r0
 800257c:	460d      	mov	r5, r1
 800257e:	2800      	cmp	r0, #0
 8002580:	f171 0200 	sbcs.w	r2, r1, #0
 8002584:	da05      	bge.n	8002592 <_vfprintf_r+0x2ca>
 8002586:	222d      	movs	r2, #45	; 0x2d
 8002588:	4264      	negs	r4, r4
 800258a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800258e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002592:	aa56      	add	r2, sp, #344	; 0x158
 8002594:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002598:	9204      	str	r2, [sp, #16]
 800259a:	f000 84b2 	beq.w	8002f02 <_vfprintf_r+0xc3a>
 800259e:	2201      	movs	r2, #1
 80025a0:	ea54 0105 	orrs.w	r1, r4, r5
 80025a4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80025a8:	f040 8159 	bne.w	800285e <_vfprintf_r+0x596>
 80025ac:	f1b9 0f00 	cmp.w	r9, #0
 80025b0:	f040 8619 	bne.w	80031e6 <_vfprintf_r+0xf1e>
 80025b4:	2a00      	cmp	r2, #0
 80025b6:	f040 8508 	bne.w	8002fca <_vfprintf_r+0xd02>
 80025ba:	f013 0301 	ands.w	r3, r3, #1
 80025be:	af56      	add	r7, sp, #344	; 0x158
 80025c0:	9309      	str	r3, [sp, #36]	; 0x24
 80025c2:	d002      	beq.n	80025ca <_vfprintf_r+0x302>
 80025c4:	2330      	movs	r3, #48	; 0x30
 80025c6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80025ca:	2300      	movs	r3, #0
 80025cc:	930a      	str	r3, [sp, #40]	; 0x28
 80025ce:	930f      	str	r3, [sp, #60]	; 0x3c
 80025d0:	9314      	str	r3, [sp, #80]	; 0x50
 80025d2:	9311      	str	r3, [sp, #68]	; 0x44
 80025d4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80025d6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80025da:	454b      	cmp	r3, r9
 80025dc:	bfb8      	it	lt
 80025de:	464b      	movlt	r3, r9
 80025e0:	9304      	str	r3, [sp, #16]
 80025e2:	b112      	cbz	r2, 80025ea <_vfprintf_r+0x322>
 80025e4:	9b04      	ldr	r3, [sp, #16]
 80025e6:	3301      	adds	r3, #1
 80025e8:	9304      	str	r3, [sp, #16]
 80025ea:	f018 0302 	ands.w	r3, r8, #2
 80025ee:	930b      	str	r3, [sp, #44]	; 0x2c
 80025f0:	d002      	beq.n	80025f8 <_vfprintf_r+0x330>
 80025f2:	9b04      	ldr	r3, [sp, #16]
 80025f4:	3302      	adds	r3, #2
 80025f6:	9304      	str	r3, [sp, #16]
 80025f8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80025fc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80025fe:	930e      	str	r3, [sp, #56]	; 0x38
 8002600:	d13f      	bne.n	8002682 <_vfprintf_r+0x3ba>
 8002602:	9b06      	ldr	r3, [sp, #24]
 8002604:	9904      	ldr	r1, [sp, #16]
 8002606:	1a5d      	subs	r5, r3, r1
 8002608:	2d00      	cmp	r5, #0
 800260a:	dd3a      	ble.n	8002682 <_vfprintf_r+0x3ba>
 800260c:	2d10      	cmp	r5, #16
 800260e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002610:	dd29      	ble.n	8002666 <_vfprintf_r+0x39e>
 8002612:	4659      	mov	r1, fp
 8002614:	4620      	mov	r0, r4
 8002616:	9620      	str	r6, [sp, #128]	; 0x80
 8002618:	2310      	movs	r3, #16
 800261a:	9c03      	ldr	r4, [sp, #12]
 800261c:	9e07      	ldr	r6, [sp, #28]
 800261e:	46bb      	mov	fp, r7
 8002620:	e004      	b.n	800262c <_vfprintf_r+0x364>
 8002622:	3d10      	subs	r5, #16
 8002624:	2d10      	cmp	r5, #16
 8002626:	f101 0108 	add.w	r1, r1, #8
 800262a:	dd18      	ble.n	800265e <_vfprintf_r+0x396>
 800262c:	3201      	adds	r2, #1
 800262e:	4fba      	ldr	r7, [pc, #744]	; (8002918 <_vfprintf_r+0x650>)
 8002630:	3010      	adds	r0, #16
 8002632:	2a07      	cmp	r2, #7
 8002634:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002638:	e9c1 7300 	strd	r7, r3, [r1]
 800263c:	ddf1      	ble.n	8002622 <_vfprintf_r+0x35a>
 800263e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002640:	4631      	mov	r1, r6
 8002642:	4620      	mov	r0, r4
 8002644:	930c      	str	r3, [sp, #48]	; 0x30
 8002646:	f004 f96d 	bl	8006924 <__sprint_r>
 800264a:	2800      	cmp	r0, #0
 800264c:	f040 843d 	bne.w	8002eca <_vfprintf_r+0xc02>
 8002650:	3d10      	subs	r5, #16
 8002652:	2d10      	cmp	r5, #16
 8002654:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002658:	a92d      	add	r1, sp, #180	; 0xb4
 800265a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800265c:	dce6      	bgt.n	800262c <_vfprintf_r+0x364>
 800265e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002660:	465f      	mov	r7, fp
 8002662:	4604      	mov	r4, r0
 8002664:	468b      	mov	fp, r1
 8002666:	3201      	adds	r2, #1
 8002668:	4bab      	ldr	r3, [pc, #684]	; (8002918 <_vfprintf_r+0x650>)
 800266a:	442c      	add	r4, r5
 800266c:	2a07      	cmp	r2, #7
 800266e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002672:	e9cb 3500 	strd	r3, r5, [fp]
 8002676:	f300 84ff 	bgt.w	8003078 <_vfprintf_r+0xdb0>
 800267a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800267e:	f10b 0b08 	add.w	fp, fp, #8
 8002682:	b172      	cbz	r2, 80026a2 <_vfprintf_r+0x3da>
 8002684:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002686:	3201      	adds	r2, #1
 8002688:	3401      	adds	r4, #1
 800268a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800268e:	2101      	movs	r1, #1
 8002690:	2a07      	cmp	r2, #7
 8002692:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002696:	e9cb 0100 	strd	r0, r1, [fp]
 800269a:	f300 8418 	bgt.w	8002ece <_vfprintf_r+0xc06>
 800269e:	f10b 0b08 	add.w	fp, fp, #8
 80026a2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80026a4:	b16b      	cbz	r3, 80026c2 <_vfprintf_r+0x3fa>
 80026a6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80026a8:	3301      	adds	r3, #1
 80026aa:	3402      	adds	r4, #2
 80026ac:	a923      	add	r1, sp, #140	; 0x8c
 80026ae:	2202      	movs	r2, #2
 80026b0:	2b07      	cmp	r3, #7
 80026b2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80026b6:	e9cb 1200 	strd	r1, r2, [fp]
 80026ba:	f300 8415 	bgt.w	8002ee8 <_vfprintf_r+0xc20>
 80026be:	f10b 0b08 	add.w	fp, fp, #8
 80026c2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80026c4:	2b80      	cmp	r3, #128	; 0x80
 80026c6:	f000 8331 	beq.w	8002d2c <_vfprintf_r+0xa64>
 80026ca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80026cc:	eba9 0503 	sub.w	r5, r9, r3
 80026d0:	2d00      	cmp	r5, #0
 80026d2:	dd37      	ble.n	8002744 <_vfprintf_r+0x47c>
 80026d4:	2d10      	cmp	r5, #16
 80026d6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80026d8:	4b90      	ldr	r3, [pc, #576]	; (800291c <_vfprintf_r+0x654>)
 80026da:	dd28      	ble.n	800272e <_vfprintf_r+0x466>
 80026dc:	4659      	mov	r1, fp
 80026de:	4620      	mov	r0, r4
 80026e0:	46bb      	mov	fp, r7
 80026e2:	f04f 0910 	mov.w	r9, #16
 80026e6:	4637      	mov	r7, r6
 80026e8:	461c      	mov	r4, r3
 80026ea:	9e07      	ldr	r6, [sp, #28]
 80026ec:	e004      	b.n	80026f8 <_vfprintf_r+0x430>
 80026ee:	3d10      	subs	r5, #16
 80026f0:	2d10      	cmp	r5, #16
 80026f2:	f101 0108 	add.w	r1, r1, #8
 80026f6:	dd15      	ble.n	8002724 <_vfprintf_r+0x45c>
 80026f8:	3201      	adds	r2, #1
 80026fa:	3010      	adds	r0, #16
 80026fc:	2a07      	cmp	r2, #7
 80026fe:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002702:	e9c1 4900 	strd	r4, r9, [r1]
 8002706:	ddf2      	ble.n	80026ee <_vfprintf_r+0x426>
 8002708:	aa2a      	add	r2, sp, #168	; 0xa8
 800270a:	4631      	mov	r1, r6
 800270c:	9803      	ldr	r0, [sp, #12]
 800270e:	f004 f909 	bl	8006924 <__sprint_r>
 8002712:	2800      	cmp	r0, #0
 8002714:	f040 83d9 	bne.w	8002eca <_vfprintf_r+0xc02>
 8002718:	3d10      	subs	r5, #16
 800271a:	2d10      	cmp	r5, #16
 800271c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002720:	a92d      	add	r1, sp, #180	; 0xb4
 8002722:	dce9      	bgt.n	80026f8 <_vfprintf_r+0x430>
 8002724:	463e      	mov	r6, r7
 8002726:	4623      	mov	r3, r4
 8002728:	465f      	mov	r7, fp
 800272a:	4604      	mov	r4, r0
 800272c:	468b      	mov	fp, r1
 800272e:	3201      	adds	r2, #1
 8002730:	442c      	add	r4, r5
 8002732:	2a07      	cmp	r2, #7
 8002734:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002738:	e9cb 3500 	strd	r3, r5, [fp]
 800273c:	f300 83ef 	bgt.w	8002f1e <_vfprintf_r+0xc56>
 8002740:	f10b 0b08 	add.w	fp, fp, #8
 8002744:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002748:	f040 8280 	bne.w	8002c4c <_vfprintf_r+0x984>
 800274c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800274e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002750:	f8cb 7000 	str.w	r7, [fp]
 8002754:	3301      	adds	r3, #1
 8002756:	4414      	add	r4, r2
 8002758:	2b07      	cmp	r3, #7
 800275a:	942c      	str	r4, [sp, #176]	; 0xb0
 800275c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002760:	932b      	str	r3, [sp, #172]	; 0xac
 8002762:	f300 8392 	bgt.w	8002e8a <_vfprintf_r+0xbc2>
 8002766:	f10b 0b08 	add.w	fp, fp, #8
 800276a:	f018 0f04 	tst.w	r8, #4
 800276e:	d03b      	beq.n	80027e8 <_vfprintf_r+0x520>
 8002770:	9b06      	ldr	r3, [sp, #24]
 8002772:	9a04      	ldr	r2, [sp, #16]
 8002774:	1a9d      	subs	r5, r3, r2
 8002776:	2d00      	cmp	r5, #0
 8002778:	dd36      	ble.n	80027e8 <_vfprintf_r+0x520>
 800277a:	2d10      	cmp	r5, #16
 800277c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800277e:	dd21      	ble.n	80027c4 <_vfprintf_r+0x4fc>
 8002780:	2610      	movs	r6, #16
 8002782:	9f03      	ldr	r7, [sp, #12]
 8002784:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002788:	e004      	b.n	8002794 <_vfprintf_r+0x4cc>
 800278a:	3d10      	subs	r5, #16
 800278c:	2d10      	cmp	r5, #16
 800278e:	f10b 0b08 	add.w	fp, fp, #8
 8002792:	dd17      	ble.n	80027c4 <_vfprintf_r+0x4fc>
 8002794:	3301      	adds	r3, #1
 8002796:	4a60      	ldr	r2, [pc, #384]	; (8002918 <_vfprintf_r+0x650>)
 8002798:	3410      	adds	r4, #16
 800279a:	2b07      	cmp	r3, #7
 800279c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80027a0:	e9cb 2600 	strd	r2, r6, [fp]
 80027a4:	ddf1      	ble.n	800278a <_vfprintf_r+0x4c2>
 80027a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80027a8:	4641      	mov	r1, r8
 80027aa:	4638      	mov	r0, r7
 80027ac:	f004 f8ba 	bl	8006924 <__sprint_r>
 80027b0:	2800      	cmp	r0, #0
 80027b2:	f040 856c 	bne.w	800328e <_vfprintf_r+0xfc6>
 80027b6:	3d10      	subs	r5, #16
 80027b8:	2d10      	cmp	r5, #16
 80027ba:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80027be:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80027c2:	dce7      	bgt.n	8002794 <_vfprintf_r+0x4cc>
 80027c4:	3301      	adds	r3, #1
 80027c6:	4a54      	ldr	r2, [pc, #336]	; (8002918 <_vfprintf_r+0x650>)
 80027c8:	442c      	add	r4, r5
 80027ca:	2b07      	cmp	r3, #7
 80027cc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80027d0:	e9cb 2500 	strd	r2, r5, [fp]
 80027d4:	dd08      	ble.n	80027e8 <_vfprintf_r+0x520>
 80027d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80027d8:	9907      	ldr	r1, [sp, #28]
 80027da:	9803      	ldr	r0, [sp, #12]
 80027dc:	f004 f8a2 	bl	8006924 <__sprint_r>
 80027e0:	2800      	cmp	r0, #0
 80027e2:	f040 82e9 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 80027e6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80027e8:	9904      	ldr	r1, [sp, #16]
 80027ea:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80027ee:	428a      	cmp	r2, r1
 80027f0:	bfac      	ite	ge
 80027f2:	189b      	addge	r3, r3, r2
 80027f4:	185b      	addlt	r3, r3, r1
 80027f6:	9305      	str	r3, [sp, #20]
 80027f8:	2c00      	cmp	r4, #0
 80027fa:	f040 82d5 	bne.w	8002da8 <_vfprintf_r+0xae0>
 80027fe:	2300      	movs	r3, #0
 8002800:	932b      	str	r3, [sp, #172]	; 0xac
 8002802:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002804:	b11b      	cbz	r3, 800280e <_vfprintf_r+0x546>
 8002806:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002808:	9803      	ldr	r0, [sp, #12]
 800280a:	f002 fc9d 	bl	8005148 <_free_r>
 800280e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002812:	4657      	mov	r7, sl
 8002814:	783b      	ldrb	r3, [r7, #0]
 8002816:	2b00      	cmp	r3, #0
 8002818:	f47f ada7 	bne.w	800236a <_vfprintf_r+0xa2>
 800281c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800281e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002822:	2b00      	cmp	r3, #0
 8002824:	f041 80e7 	bne.w	80039f6 <_vfprintf_r+0x172e>
 8002828:	2300      	movs	r3, #0
 800282a:	932b      	str	r3, [sp, #172]	; 0xac
 800282c:	e2cb      	b.n	8002dc6 <_vfprintf_r+0xafe>
 800282e:	4643      	mov	r3, r8
 8002830:	069a      	lsls	r2, r3, #26
 8002832:	f140 814e 	bpl.w	8002ad2 <_vfprintf_r+0x80a>
 8002836:	9c08      	ldr	r4, [sp, #32]
 8002838:	3407      	adds	r4, #7
 800283a:	f024 0207 	bic.w	r2, r4, #7
 800283e:	f102 0108 	add.w	r1, r2, #8
 8002842:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002846:	9108      	str	r1, [sp, #32]
 8002848:	2201      	movs	r2, #1
 800284a:	2100      	movs	r1, #0
 800284c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002850:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002854:	a956      	add	r1, sp, #344	; 0x158
 8002856:	9104      	str	r1, [sp, #16]
 8002858:	f47f aea2 	bne.w	80025a0 <_vfprintf_r+0x2d8>
 800285c:	4698      	mov	r8, r3
 800285e:	2a01      	cmp	r2, #1
 8002860:	f000 8350 	beq.w	8002f04 <_vfprintf_r+0xc3c>
 8002864:	2a02      	cmp	r2, #2
 8002866:	f000 831b 	beq.w	8002ea0 <_vfprintf_r+0xbd8>
 800286a:	a956      	add	r1, sp, #344	; 0x158
 800286c:	e000      	b.n	8002870 <_vfprintf_r+0x5a8>
 800286e:	4639      	mov	r1, r7
 8002870:	08e2      	lsrs	r2, r4, #3
 8002872:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002876:	08e8      	lsrs	r0, r5, #3
 8002878:	f004 0307 	and.w	r3, r4, #7
 800287c:	4605      	mov	r5, r0
 800287e:	4614      	mov	r4, r2
 8002880:	3330      	adds	r3, #48	; 0x30
 8002882:	ea54 0205 	orrs.w	r2, r4, r5
 8002886:	f801 3c01 	strb.w	r3, [r1, #-1]
 800288a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 800288e:	d1ee      	bne.n	800286e <_vfprintf_r+0x5a6>
 8002890:	f018 0f01 	tst.w	r8, #1
 8002894:	f000 8314 	beq.w	8002ec0 <_vfprintf_r+0xbf8>
 8002898:	2b30      	cmp	r3, #48	; 0x30
 800289a:	f000 8311 	beq.w	8002ec0 <_vfprintf_r+0xbf8>
 800289e:	9a04      	ldr	r2, [sp, #16]
 80028a0:	3902      	subs	r1, #2
 80028a2:	2330      	movs	r3, #48	; 0x30
 80028a4:	1a52      	subs	r2, r2, r1
 80028a6:	f807 3c01 	strb.w	r3, [r7, #-1]
 80028aa:	9209      	str	r2, [sp, #36]	; 0x24
 80028ac:	460f      	mov	r7, r1
 80028ae:	e68c      	b.n	80025ca <_vfprintf_r+0x302>
 80028b0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80028b4:	2200      	movs	r2, #0
 80028b6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80028ba:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80028be:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 80028c2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80028c6:	2b09      	cmp	r3, #9
 80028c8:	d9f5      	bls.n	80028b6 <_vfprintf_r+0x5ee>
 80028ca:	9206      	str	r2, [sp, #24]
 80028cc:	e57c      	b.n	80023c8 <_vfprintf_r+0x100>
 80028ce:	4b14      	ldr	r3, [pc, #80]	; (8002920 <_vfprintf_r+0x658>)
 80028d0:	9317      	str	r3, [sp, #92]	; 0x5c
 80028d2:	f018 0f20 	tst.w	r8, #32
 80028d6:	f000 8114 	beq.w	8002b02 <_vfprintf_r+0x83a>
 80028da:	9c08      	ldr	r4, [sp, #32]
 80028dc:	3407      	adds	r4, #7
 80028de:	f024 0307 	bic.w	r3, r4, #7
 80028e2:	e9d3 4500 	ldrd	r4, r5, [r3]
 80028e6:	f103 0208 	add.w	r2, r3, #8
 80028ea:	9208      	str	r2, [sp, #32]
 80028ec:	f018 0f01 	tst.w	r8, #1
 80028f0:	d009      	beq.n	8002906 <_vfprintf_r+0x63e>
 80028f2:	ea54 0305 	orrs.w	r3, r4, r5
 80028f6:	d006      	beq.n	8002906 <_vfprintf_r+0x63e>
 80028f8:	2330      	movs	r3, #48	; 0x30
 80028fa:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 80028fe:	f048 0802 	orr.w	r8, r8, #2
 8002902:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002906:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800290a:	2202      	movs	r2, #2
 800290c:	e79d      	b.n	800284a <_vfprintf_r+0x582>
 800290e:	f048 0801 	orr.w	r8, r8, #1
 8002912:	f89a 6000 	ldrb.w	r6, [sl]
 8002916:	e555      	b.n	80023c4 <_vfprintf_r+0xfc>
 8002918:	0800700c 	.word	0x0800700c
 800291c:	0800701c 	.word	0x0800701c
 8002920:	08006fd8 	.word	0x08006fd8
 8002924:	9e03      	ldr	r6, [sp, #12]
 8002926:	4630      	mov	r0, r6
 8002928:	f002 feaa 	bl	8005680 <_localeconv_r>
 800292c:	6843      	ldr	r3, [r0, #4]
 800292e:	9318      	str	r3, [sp, #96]	; 0x60
 8002930:	4618      	mov	r0, r3
 8002932:	f7fd fe85 	bl	8000640 <strlen>
 8002936:	901b      	str	r0, [sp, #108]	; 0x6c
 8002938:	4604      	mov	r4, r0
 800293a:	4630      	mov	r0, r6
 800293c:	f002 fea0 	bl	8005680 <_localeconv_r>
 8002940:	6883      	ldr	r3, [r0, #8]
 8002942:	931a      	str	r3, [sp, #104]	; 0x68
 8002944:	2c00      	cmp	r4, #0
 8002946:	f43f adb8 	beq.w	80024ba <_vfprintf_r+0x1f2>
 800294a:	f89a 6000 	ldrb.w	r6, [sl]
 800294e:	2b00      	cmp	r3, #0
 8002950:	f43f ad38 	beq.w	80023c4 <_vfprintf_r+0xfc>
 8002954:	781b      	ldrb	r3, [r3, #0]
 8002956:	2b00      	cmp	r3, #0
 8002958:	f43f ad34 	beq.w	80023c4 <_vfprintf_r+0xfc>
 800295c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002960:	e530      	b.n	80023c4 <_vfprintf_r+0xfc>
 8002962:	9b08      	ldr	r3, [sp, #32]
 8002964:	f89a 6000 	ldrb.w	r6, [sl]
 8002968:	681a      	ldr	r2, [r3, #0]
 800296a:	9206      	str	r2, [sp, #24]
 800296c:	2a00      	cmp	r2, #0
 800296e:	f103 0304 	add.w	r3, r3, #4
 8002972:	f2c0 8697 	blt.w	80036a4 <_vfprintf_r+0x13dc>
 8002976:	9308      	str	r3, [sp, #32]
 8002978:	e524      	b.n	80023c4 <_vfprintf_r+0xfc>
 800297a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 800297e:	f89a 6000 	ldrb.w	r6, [sl]
 8002982:	e51f      	b.n	80023c4 <_vfprintf_r+0xfc>
 8002984:	f89a 6000 	ldrb.w	r6, [sl]
 8002988:	f048 0804 	orr.w	r8, r8, #4
 800298c:	e51a      	b.n	80023c4 <_vfprintf_r+0xfc>
 800298e:	f89a 6000 	ldrb.w	r6, [sl]
 8002992:	2e2a      	cmp	r6, #42	; 0x2a
 8002994:	f10a 0201 	add.w	r2, sl, #1
 8002998:	f001 81b0 	beq.w	8003cfc <_vfprintf_r+0x1a34>
 800299c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029a0:	2b09      	cmp	r3, #9
 80029a2:	4692      	mov	sl, r2
 80029a4:	f04f 0900 	mov.w	r9, #0
 80029a8:	f63f ad0e 	bhi.w	80023c8 <_vfprintf_r+0x100>
 80029ac:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80029b0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80029b4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80029b8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80029bc:	2b09      	cmp	r3, #9
 80029be:	d9f5      	bls.n	80029ac <_vfprintf_r+0x6e4>
 80029c0:	e502      	b.n	80023c8 <_vfprintf_r+0x100>
 80029c2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 80029c6:	f89a 6000 	ldrb.w	r6, [sl]
 80029ca:	e4fb      	b.n	80023c4 <_vfprintf_r+0xfc>
 80029cc:	9c08      	ldr	r4, [sp, #32]
 80029ce:	3407      	adds	r4, #7
 80029d0:	f024 0407 	bic.w	r4, r4, #7
 80029d4:	ed94 7b00 	vldr	d7, [r4]
 80029d8:	ec52 1b17 	vmov	r1, r2, d7
 80029dc:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80029e0:	931d      	str	r3, [sp, #116]	; 0x74
 80029e2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80029e6:	3408      	adds	r4, #8
 80029e8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80029ec:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80029f0:	4bba      	ldr	r3, [pc, #744]	; (8002cdc <_vfprintf_r+0xa14>)
 80029f2:	9408      	str	r4, [sp, #32]
 80029f4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80029f8:	f7fe fb38 	bl	800106c <__aeabi_dcmpun>
 80029fc:	2800      	cmp	r0, #0
 80029fe:	f040 846f 	bne.w	80032e0 <_vfprintf_r+0x1018>
 8002a02:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002a06:	4bb5      	ldr	r3, [pc, #724]	; (8002cdc <_vfprintf_r+0xa14>)
 8002a08:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002a0c:	f7fe fb10 	bl	8001030 <__aeabi_dcmple>
 8002a10:	2800      	cmp	r0, #0
 8002a12:	f040 8465 	bne.w	80032e0 <_vfprintf_r+0x1018>
 8002a16:	2200      	movs	r2, #0
 8002a18:	2300      	movs	r3, #0
 8002a1a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002a1e:	f7fe fafd 	bl	800101c <__aeabi_dcmplt>
 8002a22:	2800      	cmp	r0, #0
 8002a24:	f040 855b 	bne.w	80034de <_vfprintf_r+0x1216>
 8002a28:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a2c:	4fac      	ldr	r7, [pc, #688]	; (8002ce0 <_vfprintf_r+0xa18>)
 8002a2e:	4bad      	ldr	r3, [pc, #692]	; (8002ce4 <_vfprintf_r+0xa1c>)
 8002a30:	2000      	movs	r0, #0
 8002a32:	2103      	movs	r1, #3
 8002a34:	9104      	str	r1, [sp, #16]
 8002a36:	900a      	str	r0, [sp, #40]	; 0x28
 8002a38:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002a3c:	2e47      	cmp	r6, #71	; 0x47
 8002a3e:	bfd8      	it	le
 8002a40:	461f      	movle	r7, r3
 8002a42:	9109      	str	r1, [sp, #36]	; 0x24
 8002a44:	4681      	mov	r9, r0
 8002a46:	900f      	str	r0, [sp, #60]	; 0x3c
 8002a48:	9014      	str	r0, [sp, #80]	; 0x50
 8002a4a:	9011      	str	r0, [sp, #68]	; 0x44
 8002a4c:	e5c9      	b.n	80025e2 <_vfprintf_r+0x31a>
 8002a4e:	9808      	ldr	r0, [sp, #32]
 8002a50:	2300      	movs	r3, #0
 8002a52:	6801      	ldr	r1, [r0, #0]
 8002a54:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002a58:	461a      	mov	r2, r3
 8002a5a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002a5e:	2301      	movs	r3, #1
 8002a60:	1d01      	adds	r1, r0, #4
 8002a62:	9304      	str	r3, [sp, #16]
 8002a64:	920a      	str	r2, [sp, #40]	; 0x28
 8002a66:	4691      	mov	r9, r2
 8002a68:	920f      	str	r2, [sp, #60]	; 0x3c
 8002a6a:	9214      	str	r2, [sp, #80]	; 0x50
 8002a6c:	9211      	str	r2, [sp, #68]	; 0x44
 8002a6e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002a72:	af3d      	add	r7, sp, #244	; 0xf4
 8002a74:	e5b9      	b.n	80025ea <_vfprintf_r+0x322>
 8002a76:	9b08      	ldr	r3, [sp, #32]
 8002a78:	681f      	ldr	r7, [r3, #0]
 8002a7a:	2500      	movs	r5, #0
 8002a7c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002a80:	1d1c      	adds	r4, r3, #4
 8002a82:	2f00      	cmp	r7, #0
 8002a84:	f000 8639 	beq.w	80036fa <_vfprintf_r+0x1432>
 8002a88:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a8c:	f000 8711 	beq.w	80038b2 <_vfprintf_r+0x15ea>
 8002a90:	464a      	mov	r2, r9
 8002a92:	4629      	mov	r1, r5
 8002a94:	4638      	mov	r0, r7
 8002a96:	f7fd fe43 	bl	8000720 <memchr>
 8002a9a:	900a      	str	r0, [sp, #40]	; 0x28
 8002a9c:	2800      	cmp	r0, #0
 8002a9e:	f000 85e7 	beq.w	8003670 <_vfprintf_r+0x13a8>
 8002aa2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002aa4:	1bdb      	subs	r3, r3, r7
 8002aa6:	9309      	str	r3, [sp, #36]	; 0x24
 8002aa8:	46a9      	mov	r9, r5
 8002aaa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002aae:	9408      	str	r4, [sp, #32]
 8002ab0:	9304      	str	r3, [sp, #16]
 8002ab2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002ab6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002aba:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002abe:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002ac2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002ac6:	e58c      	b.n	80025e2 <_vfprintf_r+0x31a>
 8002ac8:	f048 0310 	orr.w	r3, r8, #16
 8002acc:	069a      	lsls	r2, r3, #26
 8002ace:	f53f aeb2 	bmi.w	8002836 <_vfprintf_r+0x56e>
 8002ad2:	9a08      	ldr	r2, [sp, #32]
 8002ad4:	06df      	lsls	r7, r3, #27
 8002ad6:	f102 0104 	add.w	r1, r2, #4
 8002ada:	f100 837e 	bmi.w	80031da <_vfprintf_r+0xf12>
 8002ade:	065d      	lsls	r5, r3, #25
 8002ae0:	9a08      	ldr	r2, [sp, #32]
 8002ae2:	f100 84e4 	bmi.w	80034ae <_vfprintf_r+0x11e6>
 8002ae6:	059c      	lsls	r4, r3, #22
 8002ae8:	f140 8377 	bpl.w	80031da <_vfprintf_r+0xf12>
 8002aec:	7814      	ldrb	r4, [r2, #0]
 8002aee:	9108      	str	r1, [sp, #32]
 8002af0:	2500      	movs	r5, #0
 8002af2:	2201      	movs	r2, #1
 8002af4:	e6a9      	b.n	800284a <_vfprintf_r+0x582>
 8002af6:	4b7c      	ldr	r3, [pc, #496]	; (8002ce8 <_vfprintf_r+0xa20>)
 8002af8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002afa:	f018 0f20 	tst.w	r8, #32
 8002afe:	f47f aeec 	bne.w	80028da <_vfprintf_r+0x612>
 8002b02:	9a08      	ldr	r2, [sp, #32]
 8002b04:	f018 0f10 	tst.w	r8, #16
 8002b08:	f102 0304 	add.w	r3, r2, #4
 8002b0c:	f040 8354 	bne.w	80031b8 <_vfprintf_r+0xef0>
 8002b10:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002b14:	9a08      	ldr	r2, [sp, #32]
 8002b16:	f040 84d0 	bne.w	80034ba <_vfprintf_r+0x11f2>
 8002b1a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002b1e:	f000 834b 	beq.w	80031b8 <_vfprintf_r+0xef0>
 8002b22:	7814      	ldrb	r4, [r2, #0]
 8002b24:	9308      	str	r3, [sp, #32]
 8002b26:	2500      	movs	r5, #0
 8002b28:	e6e0      	b.n	80028ec <_vfprintf_r+0x624>
 8002b2a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002b2e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b32:	2b00      	cmp	r3, #0
 8002b34:	f47f ac46 	bne.w	80023c4 <_vfprintf_r+0xfc>
 8002b38:	2320      	movs	r3, #32
 8002b3a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002b3e:	e441      	b.n	80023c4 <_vfprintf_r+0xfc>
 8002b40:	f89a 6000 	ldrb.w	r6, [sl]
 8002b44:	2e6c      	cmp	r6, #108	; 0x6c
 8002b46:	bf03      	ittte	eq
 8002b48:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002b4c:	f048 0820 	orreq.w	r8, r8, #32
 8002b50:	f10a 0a01 	addeq.w	sl, sl, #1
 8002b54:	f048 0810 	orrne.w	r8, r8, #16
 8002b58:	e434      	b.n	80023c4 <_vfprintf_r+0xfc>
 8002b5a:	9a08      	ldr	r2, [sp, #32]
 8002b5c:	f018 0f20 	tst.w	r8, #32
 8002b60:	f852 3b04 	ldr.w	r3, [r2], #4
 8002b64:	9208      	str	r2, [sp, #32]
 8002b66:	f000 83a1 	beq.w	80032ac <_vfprintf_r+0xfe4>
 8002b6a:	9a05      	ldr	r2, [sp, #20]
 8002b6c:	4610      	mov	r0, r2
 8002b6e:	17d1      	asrs	r1, r2, #31
 8002b70:	e9c3 0100 	strd	r0, r1, [r3]
 8002b74:	4657      	mov	r7, sl
 8002b76:	e64d      	b.n	8002814 <_vfprintf_r+0x54c>
 8002b78:	f89a 6000 	ldrb.w	r6, [sl]
 8002b7c:	2e68      	cmp	r6, #104	; 0x68
 8002b7e:	bf03      	ittte	eq
 8002b80:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002b84:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002b88:	f10a 0a01 	addeq.w	sl, sl, #1
 8002b8c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002b90:	e418      	b.n	80023c4 <_vfprintf_r+0xfc>
 8002b92:	9908      	ldr	r1, [sp, #32]
 8002b94:	4b55      	ldr	r3, [pc, #340]	; (8002cec <_vfprintf_r+0xa24>)
 8002b96:	680c      	ldr	r4, [r1, #0]
 8002b98:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b9a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002b9e:	3104      	adds	r1, #4
 8002ba0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002ba4:	f048 0302 	orr.w	r3, r8, #2
 8002ba8:	9108      	str	r1, [sp, #32]
 8002baa:	2500      	movs	r5, #0
 8002bac:	2202      	movs	r2, #2
 8002bae:	2678      	movs	r6, #120	; 0x78
 8002bb0:	e64b      	b.n	800284a <_vfprintf_r+0x582>
 8002bb2:	f048 0808 	orr.w	r8, r8, #8
 8002bb6:	f89a 6000 	ldrb.w	r6, [sl]
 8002bba:	e403      	b.n	80023c4 <_vfprintf_r+0xfc>
 8002bbc:	f048 0310 	orr.w	r3, r8, #16
 8002bc0:	069f      	lsls	r7, r3, #26
 8002bc2:	f53f acd1 	bmi.w	8002568 <_vfprintf_r+0x2a0>
 8002bc6:	9908      	ldr	r1, [sp, #32]
 8002bc8:	06dd      	lsls	r5, r3, #27
 8002bca:	f101 0204 	add.w	r2, r1, #4
 8002bce:	f100 82fd 	bmi.w	80031cc <_vfprintf_r+0xf04>
 8002bd2:	065c      	lsls	r4, r3, #25
 8002bd4:	9908      	ldr	r1, [sp, #32]
 8002bd6:	f100 8475 	bmi.w	80034c4 <_vfprintf_r+0x11fc>
 8002bda:	0598      	lsls	r0, r3, #22
 8002bdc:	f140 82f6 	bpl.w	80031cc <_vfprintf_r+0xf04>
 8002be0:	f991 4000 	ldrsb.w	r4, [r1]
 8002be4:	9208      	str	r2, [sp, #32]
 8002be6:	17e5      	asrs	r5, r4, #31
 8002be8:	4620      	mov	r0, r4
 8002bea:	4629      	mov	r1, r5
 8002bec:	e4c7      	b.n	800257e <_vfprintf_r+0x2b6>
 8002bee:	9a08      	ldr	r2, [sp, #32]
 8002bf0:	f018 0f10 	tst.w	r8, #16
 8002bf4:	f102 0304 	add.w	r3, r2, #4
 8002bf8:	f040 82e3 	bne.w	80031c2 <_vfprintf_r+0xefa>
 8002bfc:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c00:	9a08      	ldr	r2, [sp, #32]
 8002c02:	f040 8467 	bne.w	80034d4 <_vfprintf_r+0x120c>
 8002c06:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002c0a:	f000 82da 	beq.w	80031c2 <_vfprintf_r+0xefa>
 8002c0e:	7814      	ldrb	r4, [r2, #0]
 8002c10:	9308      	str	r3, [sp, #32]
 8002c12:	2500      	movs	r5, #0
 8002c14:	e488      	b.n	8002528 <_vfprintf_r+0x260>
 8002c16:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002c1a:	f002 fd45 	bl	80056a8 <__retarget_lock_release_recursive>
 8002c1e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002c22:	9305      	str	r3, [sp, #20]
 8002c24:	e443      	b.n	80024ae <_vfprintf_r+0x1e6>
 8002c26:	2e00      	cmp	r6, #0
 8002c28:	f43f adf8 	beq.w	800281c <_vfprintf_r+0x554>
 8002c2c:	2300      	movs	r3, #0
 8002c2e:	2101      	movs	r1, #1
 8002c30:	461a      	mov	r2, r3
 8002c32:	9104      	str	r1, [sp, #16]
 8002c34:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002c38:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c3c:	930a      	str	r3, [sp, #40]	; 0x28
 8002c3e:	4699      	mov	r9, r3
 8002c40:	930f      	str	r3, [sp, #60]	; 0x3c
 8002c42:	9314      	str	r3, [sp, #80]	; 0x50
 8002c44:	9311      	str	r3, [sp, #68]	; 0x44
 8002c46:	9109      	str	r1, [sp, #36]	; 0x24
 8002c48:	af3d      	add	r7, sp, #244	; 0xf4
 8002c4a:	e4ce      	b.n	80025ea <_vfprintf_r+0x322>
 8002c4c:	2e65      	cmp	r6, #101	; 0x65
 8002c4e:	f340 80ca 	ble.w	8002de6 <_vfprintf_r+0xb1e>
 8002c52:	2200      	movs	r2, #0
 8002c54:	2300      	movs	r3, #0
 8002c56:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002c5a:	f7fe f9d5 	bl	8001008 <__aeabi_dcmpeq>
 8002c5e:	2800      	cmp	r0, #0
 8002c60:	f000 8169 	beq.w	8002f36 <_vfprintf_r+0xc6e>
 8002c64:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c66:	4a22      	ldr	r2, [pc, #136]	; (8002cf0 <_vfprintf_r+0xa28>)
 8002c68:	f8cb 2000 	str.w	r2, [fp]
 8002c6c:	3301      	adds	r3, #1
 8002c6e:	3401      	adds	r4, #1
 8002c70:	2201      	movs	r2, #1
 8002c72:	2b07      	cmp	r3, #7
 8002c74:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c78:	f8cb 2004 	str.w	r2, [fp, #4]
 8002c7c:	f300 8406 	bgt.w	800348c <_vfprintf_r+0x11c4>
 8002c80:	f10b 0b08 	add.w	fp, fp, #8
 8002c84:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002c86:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002c88:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002c8a:	4293      	cmp	r3, r2
 8002c8c:	db03      	blt.n	8002c96 <_vfprintf_r+0x9ce>
 8002c8e:	f018 0f01 	tst.w	r8, #1
 8002c92:	f43f ad6a 	beq.w	800276a <_vfprintf_r+0x4a2>
 8002c96:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c98:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002c9a:	f8cb 2000 	str.w	r2, [fp]
 8002c9e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002ca0:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ca4:	3301      	adds	r3, #1
 8002ca6:	4414      	add	r4, r2
 8002ca8:	2b07      	cmp	r3, #7
 8002caa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002cae:	f300 8517 	bgt.w	80036e0 <_vfprintf_r+0x1418>
 8002cb2:	f10b 0b08 	add.w	fp, fp, #8
 8002cb6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002cb8:	1e5d      	subs	r5, r3, #1
 8002cba:	2d00      	cmp	r5, #0
 8002cbc:	f77f ad55 	ble.w	800276a <_vfprintf_r+0x4a2>
 8002cc0:	2d10      	cmp	r5, #16
 8002cc2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002cc4:	4b0b      	ldr	r3, [pc, #44]	; (8002cf4 <_vfprintf_r+0xa2c>)
 8002cc6:	f340 82e7 	ble.w	8003298 <_vfprintf_r+0xfd0>
 8002cca:	4619      	mov	r1, r3
 8002ccc:	2610      	movs	r6, #16
 8002cce:	4623      	mov	r3, r4
 8002cd0:	9f03      	ldr	r7, [sp, #12]
 8002cd2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002cd6:	460c      	mov	r4, r1
 8002cd8:	e014      	b.n	8002d04 <_vfprintf_r+0xa3c>
 8002cda:	bf00      	nop
 8002cdc:	7fefffff 	.word	0x7fefffff
 8002ce0:	08006fcc 	.word	0x08006fcc
 8002ce4:	08006fc8 	.word	0x08006fc8
 8002ce8:	08006fec 	.word	0x08006fec
 8002cec:	08006fd8 	.word	0x08006fd8
 8002cf0:	08007008 	.word	0x08007008
 8002cf4:	0800701c 	.word	0x0800701c
 8002cf8:	f10b 0b08 	add.w	fp, fp, #8
 8002cfc:	3d10      	subs	r5, #16
 8002cfe:	2d10      	cmp	r5, #16
 8002d00:	f340 82c7 	ble.w	8003292 <_vfprintf_r+0xfca>
 8002d04:	3201      	adds	r2, #1
 8002d06:	3310      	adds	r3, #16
 8002d08:	2a07      	cmp	r2, #7
 8002d0a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002d0e:	e9cb 4600 	strd	r4, r6, [fp]
 8002d12:	ddf1      	ble.n	8002cf8 <_vfprintf_r+0xa30>
 8002d14:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d16:	4649      	mov	r1, r9
 8002d18:	4638      	mov	r0, r7
 8002d1a:	f003 fe03 	bl	8006924 <__sprint_r>
 8002d1e:	2800      	cmp	r0, #0
 8002d20:	d14c      	bne.n	8002dbc <_vfprintf_r+0xaf4>
 8002d22:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002d26:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002d2a:	e7e7      	b.n	8002cfc <_vfprintf_r+0xa34>
 8002d2c:	9b06      	ldr	r3, [sp, #24]
 8002d2e:	9a04      	ldr	r2, [sp, #16]
 8002d30:	1a9d      	subs	r5, r3, r2
 8002d32:	2d00      	cmp	r5, #0
 8002d34:	f77f acc9 	ble.w	80026ca <_vfprintf_r+0x402>
 8002d38:	2d10      	cmp	r5, #16
 8002d3a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002d3c:	4bbc      	ldr	r3, [pc, #752]	; (8003030 <_vfprintf_r+0xd68>)
 8002d3e:	dd27      	ble.n	8002d90 <_vfprintf_r+0xac8>
 8002d40:	4659      	mov	r1, fp
 8002d42:	4620      	mov	r0, r4
 8002d44:	46bb      	mov	fp, r7
 8002d46:	461c      	mov	r4, r3
 8002d48:	4637      	mov	r7, r6
 8002d4a:	9e07      	ldr	r6, [sp, #28]
 8002d4c:	e004      	b.n	8002d58 <_vfprintf_r+0xa90>
 8002d4e:	3d10      	subs	r5, #16
 8002d50:	2d10      	cmp	r5, #16
 8002d52:	f101 0108 	add.w	r1, r1, #8
 8002d56:	dd16      	ble.n	8002d86 <_vfprintf_r+0xabe>
 8002d58:	3201      	adds	r2, #1
 8002d5a:	3010      	adds	r0, #16
 8002d5c:	2310      	movs	r3, #16
 8002d5e:	2a07      	cmp	r2, #7
 8002d60:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002d64:	600c      	str	r4, [r1, #0]
 8002d66:	604b      	str	r3, [r1, #4]
 8002d68:	ddf1      	ble.n	8002d4e <_vfprintf_r+0xa86>
 8002d6a:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d6c:	4631      	mov	r1, r6
 8002d6e:	9803      	ldr	r0, [sp, #12]
 8002d70:	f003 fdd8 	bl	8006924 <__sprint_r>
 8002d74:	2800      	cmp	r0, #0
 8002d76:	f040 80a8 	bne.w	8002eca <_vfprintf_r+0xc02>
 8002d7a:	3d10      	subs	r5, #16
 8002d7c:	2d10      	cmp	r5, #16
 8002d7e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002d82:	a92d      	add	r1, sp, #180	; 0xb4
 8002d84:	dce8      	bgt.n	8002d58 <_vfprintf_r+0xa90>
 8002d86:	463e      	mov	r6, r7
 8002d88:	4623      	mov	r3, r4
 8002d8a:	465f      	mov	r7, fp
 8002d8c:	4604      	mov	r4, r0
 8002d8e:	468b      	mov	fp, r1
 8002d90:	3201      	adds	r2, #1
 8002d92:	442c      	add	r4, r5
 8002d94:	2a07      	cmp	r2, #7
 8002d96:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002d9a:	e9cb 3500 	strd	r3, r5, [fp]
 8002d9e:	f300 8292 	bgt.w	80032c6 <_vfprintf_r+0xffe>
 8002da2:	f10b 0b08 	add.w	fp, fp, #8
 8002da6:	e490      	b.n	80026ca <_vfprintf_r+0x402>
 8002da8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002daa:	9907      	ldr	r1, [sp, #28]
 8002dac:	9803      	ldr	r0, [sp, #12]
 8002dae:	f003 fdb9 	bl	8006924 <__sprint_r>
 8002db2:	2800      	cmp	r0, #0
 8002db4:	f43f ad23 	beq.w	80027fe <_vfprintf_r+0x536>
 8002db8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002dbc:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002dbe:	b111      	cbz	r1, 8002dc6 <_vfprintf_r+0xafe>
 8002dc0:	9803      	ldr	r0, [sp, #12]
 8002dc2:	f002 f9c1 	bl	8005148 <_free_r>
 8002dc6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002dca:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002dce:	07d0      	lsls	r0, r2, #31
 8002dd0:	d402      	bmi.n	8002dd8 <_vfprintf_r+0xb10>
 8002dd2:	0599      	lsls	r1, r3, #22
 8002dd4:	f140 81d0 	bpl.w	8003178 <_vfprintf_r+0xeb0>
 8002dd8:	065a      	lsls	r2, r3, #25
 8002dda:	f53f ab65 	bmi.w	80024a8 <_vfprintf_r+0x1e0>
 8002dde:	9805      	ldr	r0, [sp, #20]
 8002de0:	b057      	add	sp, #348	; 0x15c
 8002de2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002de6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002de8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002dea:	2a01      	cmp	r2, #1
 8002dec:	f104 0401 	add.w	r4, r4, #1
 8002df0:	f103 0501 	add.w	r5, r3, #1
 8002df4:	f10b 0608 	add.w	r6, fp, #8
 8002df8:	f340 811c 	ble.w	8003034 <_vfprintf_r+0xd6c>
 8002dfc:	2301      	movs	r3, #1
 8002dfe:	2d07      	cmp	r5, #7
 8002e00:	f8cb 7000 	str.w	r7, [fp]
 8002e04:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002e08:	f8cb 3004 	str.w	r3, [fp, #4]
 8002e0c:	f300 81bb 	bgt.w	8003186 <_vfprintf_r+0xebe>
 8002e10:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002e12:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e14:	1c69      	adds	r1, r5, #1
 8002e16:	441c      	add	r4, r3
 8002e18:	2907      	cmp	r1, #7
 8002e1a:	910b      	str	r1, [sp, #44]	; 0x2c
 8002e1c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002e20:	e9c6 2300 	strd	r2, r3, [r6]
 8002e24:	f300 81bb 	bgt.w	800319e <_vfprintf_r+0xed6>
 8002e28:	3608      	adds	r6, #8
 8002e2a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e2c:	1c53      	adds	r3, r2, #1
 8002e2e:	461d      	mov	r5, r3
 8002e30:	9509      	str	r5, [sp, #36]	; 0x24
 8002e32:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002e34:	930e      	str	r3, [sp, #56]	; 0x38
 8002e36:	2200      	movs	r2, #0
 8002e38:	2300      	movs	r3, #0
 8002e3a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e3e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002e42:	f106 0b08 	add.w	fp, r6, #8
 8002e46:	f7fe f8df 	bl	8001008 <__aeabi_dcmpeq>
 8002e4a:	2800      	cmp	r0, #0
 8002e4c:	f040 80c2 	bne.w	8002fd4 <_vfprintf_r+0xd0c>
 8002e50:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002e52:	f8c6 9004 	str.w	r9, [r6, #4]
 8002e56:	3701      	adds	r7, #1
 8002e58:	444c      	add	r4, r9
 8002e5a:	2d07      	cmp	r5, #7
 8002e5c:	6037      	str	r7, [r6, #0]
 8002e5e:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e60:	952b      	str	r5, [sp, #172]	; 0xac
 8002e62:	f300 80f9 	bgt.w	8003058 <_vfprintf_r+0xd90>
 8002e66:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002e68:	f106 0310 	add.w	r3, r6, #16
 8002e6c:	3202      	adds	r2, #2
 8002e6e:	465e      	mov	r6, fp
 8002e70:	9209      	str	r2, [sp, #36]	; 0x24
 8002e72:	469b      	mov	fp, r3
 8002e74:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002e76:	6072      	str	r2, [r6, #4]
 8002e78:	4414      	add	r4, r2
 8002e7a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002e7c:	942c      	str	r4, [sp, #176]	; 0xb0
 8002e7e:	ab26      	add	r3, sp, #152	; 0x98
 8002e80:	2a07      	cmp	r2, #7
 8002e82:	922b      	str	r2, [sp, #172]	; 0xac
 8002e84:	6033      	str	r3, [r6, #0]
 8002e86:	f77f ac70 	ble.w	800276a <_vfprintf_r+0x4a2>
 8002e8a:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e8c:	9907      	ldr	r1, [sp, #28]
 8002e8e:	9803      	ldr	r0, [sp, #12]
 8002e90:	f003 fd48 	bl	8006924 <__sprint_r>
 8002e94:	2800      	cmp	r0, #0
 8002e96:	d18f      	bne.n	8002db8 <_vfprintf_r+0xaf0>
 8002e98:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e9a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002e9e:	e464      	b.n	800276a <_vfprintf_r+0x4a2>
 8002ea0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8002ea2:	af56      	add	r7, sp, #344	; 0x158
 8002ea4:	0923      	lsrs	r3, r4, #4
 8002ea6:	f004 010f 	and.w	r1, r4, #15
 8002eaa:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8002eae:	092a      	lsrs	r2, r5, #4
 8002eb0:	461c      	mov	r4, r3
 8002eb2:	4615      	mov	r5, r2
 8002eb4:	5c43      	ldrb	r3, [r0, r1]
 8002eb6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002eba:	ea54 0305 	orrs.w	r3, r4, r5
 8002ebe:	d1f1      	bne.n	8002ea4 <_vfprintf_r+0xbdc>
 8002ec0:	9b04      	ldr	r3, [sp, #16]
 8002ec2:	1bdb      	subs	r3, r3, r7
 8002ec4:	9309      	str	r3, [sp, #36]	; 0x24
 8002ec6:	f7ff bb80 	b.w	80025ca <_vfprintf_r+0x302>
 8002eca:	46b1      	mov	r9, r6
 8002ecc:	e776      	b.n	8002dbc <_vfprintf_r+0xaf4>
 8002ece:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ed0:	9907      	ldr	r1, [sp, #28]
 8002ed2:	9803      	ldr	r0, [sp, #12]
 8002ed4:	f003 fd26 	bl	8006924 <__sprint_r>
 8002ed8:	2800      	cmp	r0, #0
 8002eda:	f47f af6d 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 8002ede:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002ee0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002ee4:	f7ff bbdd 	b.w	80026a2 <_vfprintf_r+0x3da>
 8002ee8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002eea:	9907      	ldr	r1, [sp, #28]
 8002eec:	9803      	ldr	r0, [sp, #12]
 8002eee:	f003 fd19 	bl	8006924 <__sprint_r>
 8002ef2:	2800      	cmp	r0, #0
 8002ef4:	f47f af60 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 8002ef8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002efa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002efe:	f7ff bbe0 	b.w	80026c2 <_vfprintf_r+0x3fa>
 8002f02:	4698      	mov	r8, r3
 8002f04:	2d00      	cmp	r5, #0
 8002f06:	bf08      	it	eq
 8002f08:	2c0a      	cmpeq	r4, #10
 8002f0a:	f080 8170 	bcs.w	80031ee <_vfprintf_r+0xf26>
 8002f0e:	af56      	add	r7, sp, #344	; 0x158
 8002f10:	3430      	adds	r4, #48	; 0x30
 8002f12:	2301      	movs	r3, #1
 8002f14:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8002f18:	9309      	str	r3, [sp, #36]	; 0x24
 8002f1a:	f7ff bb56 	b.w	80025ca <_vfprintf_r+0x302>
 8002f1e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f20:	9907      	ldr	r1, [sp, #28]
 8002f22:	9803      	ldr	r0, [sp, #12]
 8002f24:	f003 fcfe 	bl	8006924 <__sprint_r>
 8002f28:	2800      	cmp	r0, #0
 8002f2a:	f47f af45 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 8002f2e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002f30:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f34:	e406      	b.n	8002744 <_vfprintf_r+0x47c>
 8002f36:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002f38:	2b00      	cmp	r3, #0
 8002f3a:	f340 8273 	ble.w	8003424 <_vfprintf_r+0x115c>
 8002f3e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8002f42:	4293      	cmp	r3, r2
 8002f44:	bfa8      	it	ge
 8002f46:	4613      	movge	r3, r2
 8002f48:	2b00      	cmp	r3, #0
 8002f4a:	461d      	mov	r5, r3
 8002f4c:	dd0d      	ble.n	8002f6a <_vfprintf_r+0xca2>
 8002f4e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f50:	f8cb 7000 	str.w	r7, [fp]
 8002f54:	3301      	adds	r3, #1
 8002f56:	442c      	add	r4, r5
 8002f58:	2b07      	cmp	r3, #7
 8002f5a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002f5c:	f8cb 5004 	str.w	r5, [fp, #4]
 8002f60:	932b      	str	r3, [sp, #172]	; 0xac
 8002f62:	f300 82c1 	bgt.w	80034e8 <_vfprintf_r+0x1220>
 8002f66:	f10b 0b08 	add.w	fp, fp, #8
 8002f6a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8002f6c:	2d00      	cmp	r5, #0
 8002f6e:	bfa8      	it	ge
 8002f70:	1b5b      	subge	r3, r3, r5
 8002f72:	2b00      	cmp	r3, #0
 8002f74:	461d      	mov	r5, r3
 8002f76:	f340 8099 	ble.w	80030ac <_vfprintf_r+0xde4>
 8002f7a:	2d10      	cmp	r5, #16
 8002f7c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f7e:	4b2c      	ldr	r3, [pc, #176]	; (8003030 <_vfprintf_r+0xd68>)
 8002f80:	f340 83db 	ble.w	800373a <_vfprintf_r+0x1472>
 8002f84:	4618      	mov	r0, r3
 8002f86:	4621      	mov	r1, r4
 8002f88:	465b      	mov	r3, fp
 8002f8a:	2610      	movs	r6, #16
 8002f8c:	46bb      	mov	fp, r7
 8002f8e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8002f92:	9c07      	ldr	r4, [sp, #28]
 8002f94:	4607      	mov	r7, r0
 8002f96:	e004      	b.n	8002fa2 <_vfprintf_r+0xcda>
 8002f98:	3308      	adds	r3, #8
 8002f9a:	3d10      	subs	r5, #16
 8002f9c:	2d10      	cmp	r5, #16
 8002f9e:	f340 83c7 	ble.w	8003730 <_vfprintf_r+0x1468>
 8002fa2:	3201      	adds	r2, #1
 8002fa4:	3110      	adds	r1, #16
 8002fa6:	2a07      	cmp	r2, #7
 8002fa8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8002fac:	e9c3 7600 	strd	r7, r6, [r3]
 8002fb0:	ddf2      	ble.n	8002f98 <_vfprintf_r+0xcd0>
 8002fb2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fb4:	4621      	mov	r1, r4
 8002fb6:	4648      	mov	r0, r9
 8002fb8:	f003 fcb4 	bl	8006924 <__sprint_r>
 8002fbc:	2800      	cmp	r0, #0
 8002fbe:	f040 84a5 	bne.w	800390c <_vfprintf_r+0x1644>
 8002fc2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8002fc6:	ab2d      	add	r3, sp, #180	; 0xb4
 8002fc8:	e7e7      	b.n	8002f9a <_vfprintf_r+0xcd2>
 8002fca:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8002fce:	af56      	add	r7, sp, #344	; 0x158
 8002fd0:	f7ff bafb 	b.w	80025ca <_vfprintf_r+0x302>
 8002fd4:	f1b9 0f00 	cmp.w	r9, #0
 8002fd8:	f77f af4c 	ble.w	8002e74 <_vfprintf_r+0xbac>
 8002fdc:	f1b9 0f10 	cmp.w	r9, #16
 8002fe0:	4b13      	ldr	r3, [pc, #76]	; (8003030 <_vfprintf_r+0xd68>)
 8002fe2:	f340 8659 	ble.w	8003c98 <_vfprintf_r+0x19d0>
 8002fe6:	4619      	mov	r1, r3
 8002fe8:	4622      	mov	r2, r4
 8002fea:	4633      	mov	r3, r6
 8002fec:	2710      	movs	r7, #16
 8002fee:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8002ff2:	9c07      	ldr	r4, [sp, #28]
 8002ff4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8002ff6:	460e      	mov	r6, r1
 8002ff8:	e007      	b.n	800300a <_vfprintf_r+0xd42>
 8002ffa:	3308      	adds	r3, #8
 8002ffc:	f1a9 0910 	sub.w	r9, r9, #16
 8003000:	f1b9 0f10 	cmp.w	r9, #16
 8003004:	f340 8353 	ble.w	80036ae <_vfprintf_r+0x13e6>
 8003008:	3501      	adds	r5, #1
 800300a:	3210      	adds	r2, #16
 800300c:	2d07      	cmp	r5, #7
 800300e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003012:	e9c3 6700 	strd	r6, r7, [r3]
 8003016:	ddf0      	ble.n	8002ffa <_vfprintf_r+0xd32>
 8003018:	aa2a      	add	r2, sp, #168	; 0xa8
 800301a:	4621      	mov	r1, r4
 800301c:	4658      	mov	r0, fp
 800301e:	f003 fc81 	bl	8006924 <__sprint_r>
 8003022:	2800      	cmp	r0, #0
 8003024:	f040 8472 	bne.w	800390c <_vfprintf_r+0x1644>
 8003028:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800302c:	ab2d      	add	r3, sp, #180	; 0xb4
 800302e:	e7e5      	b.n	8002ffc <_vfprintf_r+0xd34>
 8003030:	0800701c 	.word	0x0800701c
 8003034:	f018 0f01 	tst.w	r8, #1
 8003038:	f47f aee0 	bne.w	8002dfc <_vfprintf_r+0xb34>
 800303c:	2201      	movs	r2, #1
 800303e:	2d07      	cmp	r5, #7
 8003040:	f8cb 7000 	str.w	r7, [fp]
 8003044:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003048:	f8cb 2004 	str.w	r2, [fp, #4]
 800304c:	dc04      	bgt.n	8003058 <_vfprintf_r+0xd90>
 800304e:	3302      	adds	r3, #2
 8003050:	9309      	str	r3, [sp, #36]	; 0x24
 8003052:	f10b 0b10 	add.w	fp, fp, #16
 8003056:	e70d      	b.n	8002e74 <_vfprintf_r+0xbac>
 8003058:	aa2a      	add	r2, sp, #168	; 0xa8
 800305a:	9907      	ldr	r1, [sp, #28]
 800305c:	9803      	ldr	r0, [sp, #12]
 800305e:	f003 fc61 	bl	8006924 <__sprint_r>
 8003062:	2800      	cmp	r0, #0
 8003064:	f47f aea8 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 8003068:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800306c:	3301      	adds	r3, #1
 800306e:	9309      	str	r3, [sp, #36]	; 0x24
 8003070:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003074:	ae2d      	add	r6, sp, #180	; 0xb4
 8003076:	e6fd      	b.n	8002e74 <_vfprintf_r+0xbac>
 8003078:	aa2a      	add	r2, sp, #168	; 0xa8
 800307a:	9907      	ldr	r1, [sp, #28]
 800307c:	9803      	ldr	r0, [sp, #12]
 800307e:	f003 fc51 	bl	8006924 <__sprint_r>
 8003082:	2800      	cmp	r0, #0
 8003084:	f47f ae98 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 8003088:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800308c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800308e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003092:	f7ff baf6 	b.w	8002682 <_vfprintf_r+0x3ba>
 8003096:	aa2a      	add	r2, sp, #168	; 0xa8
 8003098:	9907      	ldr	r1, [sp, #28]
 800309a:	9803      	ldr	r0, [sp, #12]
 800309c:	f003 fc42 	bl	8006924 <__sprint_r>
 80030a0:	2800      	cmp	r0, #0
 80030a2:	f47f ae89 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 80030a6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030a8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030ac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80030ae:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80030b2:	443b      	add	r3, r7
 80030b4:	4699      	mov	r9, r3
 80030b6:	f040 8357 	bne.w	8003768 <_vfprintf_r+0x14a0>
 80030ba:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030bc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80030be:	4293      	cmp	r3, r2
 80030c0:	db49      	blt.n	8003156 <_vfprintf_r+0xe8e>
 80030c2:	f018 0f01 	tst.w	r8, #1
 80030c6:	d146      	bne.n	8003156 <_vfprintf_r+0xe8e>
 80030c8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80030ca:	18bd      	adds	r5, r7, r2
 80030cc:	eba5 0509 	sub.w	r5, r5, r9
 80030d0:	1ad3      	subs	r3, r2, r3
 80030d2:	429d      	cmp	r5, r3
 80030d4:	bfa8      	it	ge
 80030d6:	461d      	movge	r5, r3
 80030d8:	2d00      	cmp	r5, #0
 80030da:	dd0d      	ble.n	80030f8 <_vfprintf_r+0xe30>
 80030dc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030de:	f8cb 9000 	str.w	r9, [fp]
 80030e2:	3201      	adds	r2, #1
 80030e4:	442c      	add	r4, r5
 80030e6:	2a07      	cmp	r2, #7
 80030e8:	942c      	str	r4, [sp, #176]	; 0xb0
 80030ea:	f8cb 5004 	str.w	r5, [fp, #4]
 80030ee:	922b      	str	r2, [sp, #172]	; 0xac
 80030f0:	f300 8462 	bgt.w	80039b8 <_vfprintf_r+0x16f0>
 80030f4:	f10b 0b08 	add.w	fp, fp, #8
 80030f8:	2d00      	cmp	r5, #0
 80030fa:	bfac      	ite	ge
 80030fc:	1b5d      	subge	r5, r3, r5
 80030fe:	461d      	movlt	r5, r3
 8003100:	2d00      	cmp	r5, #0
 8003102:	f77f ab32 	ble.w	800276a <_vfprintf_r+0x4a2>
 8003106:	2d10      	cmp	r5, #16
 8003108:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800310a:	4bc5      	ldr	r3, [pc, #788]	; (8003420 <_vfprintf_r+0x1158>)
 800310c:	f340 80c4 	ble.w	8003298 <_vfprintf_r+0xfd0>
 8003110:	4619      	mov	r1, r3
 8003112:	2610      	movs	r6, #16
 8003114:	4623      	mov	r3, r4
 8003116:	9f03      	ldr	r7, [sp, #12]
 8003118:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800311c:	460c      	mov	r4, r1
 800311e:	e005      	b.n	800312c <_vfprintf_r+0xe64>
 8003120:	f10b 0b08 	add.w	fp, fp, #8
 8003124:	3d10      	subs	r5, #16
 8003126:	2d10      	cmp	r5, #16
 8003128:	f340 80b3 	ble.w	8003292 <_vfprintf_r+0xfca>
 800312c:	3201      	adds	r2, #1
 800312e:	3310      	adds	r3, #16
 8003130:	2a07      	cmp	r2, #7
 8003132:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003136:	e9cb 4600 	strd	r4, r6, [fp]
 800313a:	ddf1      	ble.n	8003120 <_vfprintf_r+0xe58>
 800313c:	aa2a      	add	r2, sp, #168	; 0xa8
 800313e:	4649      	mov	r1, r9
 8003140:	4638      	mov	r0, r7
 8003142:	f003 fbef 	bl	8006924 <__sprint_r>
 8003146:	2800      	cmp	r0, #0
 8003148:	f47f ae38 	bne.w	8002dbc <_vfprintf_r+0xaf4>
 800314c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003150:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003154:	e7e6      	b.n	8003124 <_vfprintf_r+0xe5c>
 8003156:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003158:	9916      	ldr	r1, [sp, #88]	; 0x58
 800315a:	f8cb 1000 	str.w	r1, [fp]
 800315e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003160:	f8cb 1004 	str.w	r1, [fp, #4]
 8003164:	3201      	adds	r2, #1
 8003166:	440c      	add	r4, r1
 8003168:	2a07      	cmp	r2, #7
 800316a:	942c      	str	r4, [sp, #176]	; 0xb0
 800316c:	922b      	str	r2, [sp, #172]	; 0xac
 800316e:	f300 828c 	bgt.w	800368a <_vfprintf_r+0x13c2>
 8003172:	f10b 0b08 	add.w	fp, fp, #8
 8003176:	e7a7      	b.n	80030c8 <_vfprintf_r+0xe00>
 8003178:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800317c:	f002 fa94 	bl	80056a8 <__retarget_lock_release_recursive>
 8003180:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003184:	e628      	b.n	8002dd8 <_vfprintf_r+0xb10>
 8003186:	aa2a      	add	r2, sp, #168	; 0xa8
 8003188:	9907      	ldr	r1, [sp, #28]
 800318a:	9803      	ldr	r0, [sp, #12]
 800318c:	f003 fbca 	bl	8006924 <__sprint_r>
 8003190:	2800      	cmp	r0, #0
 8003192:	f47f ae11 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 8003196:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800319a:	ae2d      	add	r6, sp, #180	; 0xb4
 800319c:	e638      	b.n	8002e10 <_vfprintf_r+0xb48>
 800319e:	aa2a      	add	r2, sp, #168	; 0xa8
 80031a0:	9907      	ldr	r1, [sp, #28]
 80031a2:	9803      	ldr	r0, [sp, #12]
 80031a4:	f003 fbbe 	bl	8006924 <__sprint_r>
 80031a8:	2800      	cmp	r0, #0
 80031aa:	f47f ae05 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 80031ae:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80031b2:	ae2d      	add	r6, sp, #180	; 0xb4
 80031b4:	930b      	str	r3, [sp, #44]	; 0x2c
 80031b6:	e638      	b.n	8002e2a <_vfprintf_r+0xb62>
 80031b8:	6814      	ldr	r4, [r2, #0]
 80031ba:	9308      	str	r3, [sp, #32]
 80031bc:	2500      	movs	r5, #0
 80031be:	f7ff bb95 	b.w	80028ec <_vfprintf_r+0x624>
 80031c2:	6814      	ldr	r4, [r2, #0]
 80031c4:	9308      	str	r3, [sp, #32]
 80031c6:	2500      	movs	r5, #0
 80031c8:	f7ff b9ae 	b.w	8002528 <_vfprintf_r+0x260>
 80031cc:	680c      	ldr	r4, [r1, #0]
 80031ce:	9208      	str	r2, [sp, #32]
 80031d0:	17e5      	asrs	r5, r4, #31
 80031d2:	4620      	mov	r0, r4
 80031d4:	4629      	mov	r1, r5
 80031d6:	f7ff b9d2 	b.w	800257e <_vfprintf_r+0x2b6>
 80031da:	6814      	ldr	r4, [r2, #0]
 80031dc:	9108      	str	r1, [sp, #32]
 80031de:	2201      	movs	r2, #1
 80031e0:	2500      	movs	r5, #0
 80031e2:	f7ff bb32 	b.w	800284a <_vfprintf_r+0x582>
 80031e6:	2a01      	cmp	r2, #1
 80031e8:	f47f ab3c 	bne.w	8002864 <_vfprintf_r+0x59c>
 80031ec:	e68f      	b.n	8002f0e <_vfprintf_r+0xc46>
 80031ee:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80031f2:	2200      	movs	r2, #0
 80031f4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80031f8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80031fc:	af56      	add	r7, sp, #344	; 0x158
 80031fe:	4692      	mov	sl, r2
 8003200:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003204:	461e      	mov	r6, r3
 8003206:	e00a      	b.n	800321e <_vfprintf_r+0xf56>
 8003208:	2300      	movs	r3, #0
 800320a:	4620      	mov	r0, r4
 800320c:	4629      	mov	r1, r5
 800320e:	220a      	movs	r2, #10
 8003210:	f7fc fff6 	bl	8000200 <__aeabi_uldivmod>
 8003214:	4604      	mov	r4, r0
 8003216:	460d      	mov	r5, r1
 8003218:	ea54 0305 	orrs.w	r3, r4, r5
 800321c:	d029      	beq.n	8003272 <_vfprintf_r+0xfaa>
 800321e:	220a      	movs	r2, #10
 8003220:	2300      	movs	r3, #0
 8003222:	4620      	mov	r0, r4
 8003224:	4629      	mov	r1, r5
 8003226:	f7fc ffeb 	bl	8000200 <__aeabi_uldivmod>
 800322a:	3230      	adds	r2, #48	; 0x30
 800322c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003230:	f10a 0a01 	add.w	sl, sl, #1
 8003234:	3f01      	subs	r7, #1
 8003236:	2e00      	cmp	r6, #0
 8003238:	d0e6      	beq.n	8003208 <_vfprintf_r+0xf40>
 800323a:	f898 3000 	ldrb.w	r3, [r8]
 800323e:	459a      	cmp	sl, r3
 8003240:	d1e2      	bne.n	8003208 <_vfprintf_r+0xf40>
 8003242:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003246:	d0df      	beq.n	8003208 <_vfprintf_r+0xf40>
 8003248:	2d00      	cmp	r5, #0
 800324a:	bf08      	it	eq
 800324c:	2c0a      	cmpeq	r4, #10
 800324e:	d3db      	bcc.n	8003208 <_vfprintf_r+0xf40>
 8003250:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003252:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003254:	1aff      	subs	r7, r7, r3
 8003256:	461a      	mov	r2, r3
 8003258:	4638      	mov	r0, r7
 800325a:	f003 faf5 	bl	8006848 <strncpy>
 800325e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003262:	2b00      	cmp	r3, #0
 8003264:	f000 8496 	beq.w	8003b94 <_vfprintf_r+0x18cc>
 8003268:	f108 0801 	add.w	r8, r8, #1
 800326c:	f04f 0a00 	mov.w	sl, #0
 8003270:	e7ca      	b.n	8003208 <_vfprintf_r+0xf40>
 8003272:	9b04      	ldr	r3, [sp, #16]
 8003274:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003278:	1bdb      	subs	r3, r3, r7
 800327a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800327e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003280:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003284:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003288:	9309      	str	r3, [sp, #36]	; 0x24
 800328a:	f7ff b99e 	b.w	80025ca <_vfprintf_r+0x302>
 800328e:	46c1      	mov	r9, r8
 8003290:	e594      	b.n	8002dbc <_vfprintf_r+0xaf4>
 8003292:	4621      	mov	r1, r4
 8003294:	461c      	mov	r4, r3
 8003296:	460b      	mov	r3, r1
 8003298:	3201      	adds	r2, #1
 800329a:	442c      	add	r4, r5
 800329c:	2a07      	cmp	r2, #7
 800329e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80032a2:	e9cb 3500 	strd	r3, r5, [fp]
 80032a6:	f77f aa5e 	ble.w	8002766 <_vfprintf_r+0x49e>
 80032aa:	e5ee      	b.n	8002e8a <_vfprintf_r+0xbc2>
 80032ac:	f018 0f10 	tst.w	r8, #16
 80032b0:	f040 80f8 	bne.w	80034a4 <_vfprintf_r+0x11dc>
 80032b4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80032b8:	f000 8351 	beq.w	800395e <_vfprintf_r+0x1696>
 80032bc:	9a05      	ldr	r2, [sp, #20]
 80032be:	801a      	strh	r2, [r3, #0]
 80032c0:	4657      	mov	r7, sl
 80032c2:	f7ff baa7 	b.w	8002814 <_vfprintf_r+0x54c>
 80032c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80032c8:	9907      	ldr	r1, [sp, #28]
 80032ca:	9803      	ldr	r0, [sp, #12]
 80032cc:	f003 fb2a 	bl	8006924 <__sprint_r>
 80032d0:	2800      	cmp	r0, #0
 80032d2:	f47f ad71 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 80032d6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032d8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032dc:	f7ff b9f5 	b.w	80026ca <_vfprintf_r+0x402>
 80032e0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80032e4:	4602      	mov	r2, r0
 80032e6:	460b      	mov	r3, r1
 80032e8:	f7fd fec0 	bl	800106c <__aeabi_dcmpun>
 80032ec:	2800      	cmp	r0, #0
 80032ee:	f040 8491 	bne.w	8003c14 <_vfprintf_r+0x194c>
 80032f2:	2e61      	cmp	r6, #97	; 0x61
 80032f4:	f000 8111 	beq.w	800351a <_vfprintf_r+0x1252>
 80032f8:	2e41      	cmp	r6, #65	; 0x41
 80032fa:	f000 8377 	beq.w	80039ec <_vfprintf_r+0x1724>
 80032fe:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003302:	f026 0220 	bic.w	r2, r6, #32
 8003306:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800330a:	930e      	str	r3, [sp, #56]	; 0x38
 800330c:	9204      	str	r2, [sp, #16]
 800330e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003310:	f000 842d 	beq.w	8003b6e <_vfprintf_r+0x18a6>
 8003314:	2a47      	cmp	r2, #71	; 0x47
 8003316:	f000 8424 	beq.w	8003b62 <_vfprintf_r+0x189a>
 800331a:	2b00      	cmp	r3, #0
 800331c:	f2c0 82f9 	blt.w	8003912 <_vfprintf_r+0x164a>
 8003320:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003324:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003328:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800332c:	2e66      	cmp	r6, #102	; 0x66
 800332e:	f000 83eb 	beq.w	8003b08 <_vfprintf_r+0x1840>
 8003332:	2e46      	cmp	r6, #70	; 0x46
 8003334:	f000 847e 	beq.w	8003c34 <_vfprintf_r+0x196c>
 8003338:	9b04      	ldr	r3, [sp, #16]
 800333a:	9803      	ldr	r0, [sp, #12]
 800333c:	2b45      	cmp	r3, #69	; 0x45
 800333e:	bf0c      	ite	eq
 8003340:	f109 0501 	addeq.w	r5, r9, #1
 8003344:	464d      	movne	r5, r9
 8003346:	aa28      	add	r2, sp, #160	; 0xa0
 8003348:	ab25      	add	r3, sp, #148	; 0x94
 800334a:	e9cd 3200 	strd	r3, r2, [sp]
 800334e:	2102      	movs	r1, #2
 8003350:	ab24      	add	r3, sp, #144	; 0x90
 8003352:	462a      	mov	r2, r5
 8003354:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003358:	f000 fe3e 	bl	8003fd8 <_dtoa_r>
 800335c:	2e67      	cmp	r6, #103	; 0x67
 800335e:	4607      	mov	r7, r0
 8003360:	f040 849c 	bne.w	8003c9c <_vfprintf_r+0x19d4>
 8003364:	f018 0f01 	tst.w	r8, #1
 8003368:	f040 83f9 	bne.w	8003b5e <_vfprintf_r+0x1896>
 800336c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800336e:	4640      	mov	r0, r8
 8003370:	1bdb      	subs	r3, r3, r7
 8003372:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003376:	9310      	str	r3, [sp, #64]	; 0x40
 8003378:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800337a:	9311      	str	r3, [sp, #68]	; 0x44
 800337c:	9b04      	ldr	r3, [sp, #16]
 800337e:	2b47      	cmp	r3, #71	; 0x47
 8003380:	f000 81e7 	beq.w	8003752 <_vfprintf_r+0x148a>
 8003384:	9b04      	ldr	r3, [sp, #16]
 8003386:	2b46      	cmp	r3, #70	; 0x46
 8003388:	f000 8300 	beq.w	800398c <_vfprintf_r+0x16c4>
 800338c:	9904      	ldr	r1, [sp, #16]
 800338e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003390:	b2f2      	uxtb	r2, r6
 8003392:	2941      	cmp	r1, #65	; 0x41
 8003394:	bf08      	it	eq
 8003396:	320f      	addeq	r2, #15
 8003398:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800339c:	bf06      	itte	eq
 800339e:	b2d2      	uxtbeq	r2, r2
 80033a0:	2101      	moveq	r1, #1
 80033a2:	2100      	movne	r1, #0
 80033a4:	2b00      	cmp	r3, #0
 80033a6:	9324      	str	r3, [sp, #144]	; 0x90
 80033a8:	bfb8      	it	lt
 80033aa:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80033ac:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80033b0:	bfba      	itte	lt
 80033b2:	f1c3 0301 	rsblt	r3, r3, #1
 80033b6:	222d      	movlt	r2, #45	; 0x2d
 80033b8:	222b      	movge	r2, #43	; 0x2b
 80033ba:	2b09      	cmp	r3, #9
 80033bc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80033c0:	f300 83f9 	bgt.w	8003bb6 <_vfprintf_r+0x18ee>
 80033c4:	2900      	cmp	r1, #0
 80033c6:	f040 8487 	bne.w	8003cd8 <_vfprintf_r+0x1a10>
 80033ca:	2230      	movs	r2, #48	; 0x30
 80033cc:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80033d0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80033d4:	3330      	adds	r3, #48	; 0x30
 80033d6:	7013      	strb	r3, [r2, #0]
 80033d8:	1c53      	adds	r3, r2, #1
 80033da:	aa26      	add	r2, sp, #152	; 0x98
 80033dc:	1a9b      	subs	r3, r3, r2
 80033de:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80033e0:	9319      	str	r3, [sp, #100]	; 0x64
 80033e2:	2a01      	cmp	r2, #1
 80033e4:	4413      	add	r3, r2
 80033e6:	9309      	str	r3, [sp, #36]	; 0x24
 80033e8:	f340 8442 	ble.w	8003c70 <_vfprintf_r+0x19a8>
 80033ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80033ee:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80033f0:	4413      	add	r3, r2
 80033f2:	9309      	str	r3, [sp, #36]	; 0x24
 80033f4:	2300      	movs	r3, #0
 80033f6:	930f      	str	r3, [sp, #60]	; 0x3c
 80033f8:	9314      	str	r3, [sp, #80]	; 0x50
 80033fa:	9311      	str	r3, [sp, #68]	; 0x44
 80033fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80033fe:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003402:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003406:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800340a:	9304      	str	r3, [sp, #16]
 800340c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800340e:	2b00      	cmp	r3, #0
 8003410:	f040 8275 	bne.w	80038fe <_vfprintf_r+0x1636>
 8003414:	4699      	mov	r9, r3
 8003416:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800341a:	f7ff b8e2 	b.w	80025e2 <_vfprintf_r+0x31a>
 800341e:	bf00      	nop
 8003420:	0800701c 	.word	0x0800701c
 8003424:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003426:	49bd      	ldr	r1, [pc, #756]	; (800371c <_vfprintf_r+0x1454>)
 8003428:	f8cb 1000 	str.w	r1, [fp]
 800342c:	3201      	adds	r2, #1
 800342e:	3401      	adds	r4, #1
 8003430:	2101      	movs	r1, #1
 8003432:	2a07      	cmp	r2, #7
 8003434:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003438:	f8cb 1004 	str.w	r1, [fp, #4]
 800343c:	dc60      	bgt.n	8003500 <_vfprintf_r+0x1238>
 800343e:	f10b 0b08 	add.w	fp, fp, #8
 8003442:	b92b      	cbnz	r3, 8003450 <_vfprintf_r+0x1188>
 8003444:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003446:	b91a      	cbnz	r2, 8003450 <_vfprintf_r+0x1188>
 8003448:	f018 0f01 	tst.w	r8, #1
 800344c:	f43f a98d 	beq.w	800276a <_vfprintf_r+0x4a2>
 8003450:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003452:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003454:	f8cb 1000 	str.w	r1, [fp]
 8003458:	9915      	ldr	r1, [sp, #84]	; 0x54
 800345a:	f8cb 1004 	str.w	r1, [fp, #4]
 800345e:	3201      	adds	r2, #1
 8003460:	440c      	add	r4, r1
 8003462:	2a07      	cmp	r2, #7
 8003464:	942c      	str	r4, [sp, #176]	; 0xb0
 8003466:	922b      	str	r2, [sp, #172]	; 0xac
 8003468:	f300 8282 	bgt.w	8003970 <_vfprintf_r+0x16a8>
 800346c:	f10b 0b08 	add.w	fp, fp, #8
 8003470:	2b00      	cmp	r3, #0
 8003472:	f2c0 82e7 	blt.w	8003a44 <_vfprintf_r+0x177c>
 8003476:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003478:	3201      	adds	r2, #1
 800347a:	441c      	add	r4, r3
 800347c:	2a07      	cmp	r2, #7
 800347e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003482:	e9cb 7300 	strd	r7, r3, [fp]
 8003486:	f77f a96e 	ble.w	8002766 <_vfprintf_r+0x49e>
 800348a:	e4fe      	b.n	8002e8a <_vfprintf_r+0xbc2>
 800348c:	aa2a      	add	r2, sp, #168	; 0xa8
 800348e:	9907      	ldr	r1, [sp, #28]
 8003490:	9803      	ldr	r0, [sp, #12]
 8003492:	f003 fa47 	bl	8006924 <__sprint_r>
 8003496:	2800      	cmp	r0, #0
 8003498:	f47f ac8e 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 800349c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034a0:	f7ff bbf0 	b.w	8002c84 <_vfprintf_r+0x9bc>
 80034a4:	9a05      	ldr	r2, [sp, #20]
 80034a6:	601a      	str	r2, [r3, #0]
 80034a8:	4657      	mov	r7, sl
 80034aa:	f7ff b9b3 	b.w	8002814 <_vfprintf_r+0x54c>
 80034ae:	8814      	ldrh	r4, [r2, #0]
 80034b0:	9108      	str	r1, [sp, #32]
 80034b2:	2500      	movs	r5, #0
 80034b4:	2201      	movs	r2, #1
 80034b6:	f7ff b9c8 	b.w	800284a <_vfprintf_r+0x582>
 80034ba:	8814      	ldrh	r4, [r2, #0]
 80034bc:	9308      	str	r3, [sp, #32]
 80034be:	2500      	movs	r5, #0
 80034c0:	f7ff ba14 	b.w	80028ec <_vfprintf_r+0x624>
 80034c4:	f9b1 4000 	ldrsh.w	r4, [r1]
 80034c8:	9208      	str	r2, [sp, #32]
 80034ca:	17e5      	asrs	r5, r4, #31
 80034cc:	4620      	mov	r0, r4
 80034ce:	4629      	mov	r1, r5
 80034d0:	f7ff b855 	b.w	800257e <_vfprintf_r+0x2b6>
 80034d4:	8814      	ldrh	r4, [r2, #0]
 80034d6:	9308      	str	r3, [sp, #32]
 80034d8:	2500      	movs	r5, #0
 80034da:	f7ff b825 	b.w	8002528 <_vfprintf_r+0x260>
 80034de:	222d      	movs	r2, #45	; 0x2d
 80034e0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80034e4:	f7ff baa2 	b.w	8002a2c <_vfprintf_r+0x764>
 80034e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ea:	9907      	ldr	r1, [sp, #28]
 80034ec:	9803      	ldr	r0, [sp, #12]
 80034ee:	f003 fa19 	bl	8006924 <__sprint_r>
 80034f2:	2800      	cmp	r0, #0
 80034f4:	f47f ac60 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 80034f8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034fa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034fe:	e534      	b.n	8002f6a <_vfprintf_r+0xca2>
 8003500:	aa2a      	add	r2, sp, #168	; 0xa8
 8003502:	9907      	ldr	r1, [sp, #28]
 8003504:	9803      	ldr	r0, [sp, #12]
 8003506:	f003 fa0d 	bl	8006924 <__sprint_r>
 800350a:	2800      	cmp	r0, #0
 800350c:	f47f ac54 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 8003510:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003512:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003514:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003518:	e793      	b.n	8003442 <_vfprintf_r+0x117a>
 800351a:	2330      	movs	r3, #48	; 0x30
 800351c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003520:	2378      	movs	r3, #120	; 0x78
 8003522:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003526:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800352a:	f048 0402 	orr.w	r4, r8, #2
 800352e:	f300 82b0 	bgt.w	8003a92 <_vfprintf_r+0x17ca>
 8003532:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003536:	930e      	str	r3, [sp, #56]	; 0x38
 8003538:	f026 0320 	bic.w	r3, r6, #32
 800353c:	9304      	str	r3, [sp, #16]
 800353e:	2200      	movs	r2, #0
 8003540:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003542:	920a      	str	r2, [sp, #40]	; 0x28
 8003544:	46a0      	mov	r8, r4
 8003546:	af3d      	add	r7, sp, #244	; 0xf4
 8003548:	2b00      	cmp	r3, #0
 800354a:	f2c0 81e3 	blt.w	8003914 <_vfprintf_r+0x164c>
 800354e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003552:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003556:	2300      	movs	r3, #0
 8003558:	930b      	str	r3, [sp, #44]	; 0x2c
 800355a:	2e61      	cmp	r6, #97	; 0x61
 800355c:	f000 8255 	beq.w	8003a0a <_vfprintf_r+0x1742>
 8003560:	2e41      	cmp	r6, #65	; 0x41
 8003562:	f47f aee3 	bne.w	800332c <_vfprintf_r+0x1064>
 8003566:	a824      	add	r0, sp, #144	; 0x90
 8003568:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800356c:	f003 f8e2 	bl	8006734 <frexp>
 8003570:	2200      	movs	r2, #0
 8003572:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003576:	ec51 0b10 	vmov	r0, r1, d0
 800357a:	f7fd fadd 	bl	8000b38 <__aeabi_dmul>
 800357e:	2200      	movs	r2, #0
 8003580:	2300      	movs	r3, #0
 8003582:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003586:	f7fd fd3f 	bl	8001008 <__aeabi_dcmpeq>
 800358a:	2800      	cmp	r0, #0
 800358c:	f040 8305 	bne.w	8003b9a <_vfprintf_r+0x18d2>
 8003590:	4b63      	ldr	r3, [pc, #396]	; (8003720 <_vfprintf_r+0x1458>)
 8003592:	9309      	str	r3, [sp, #36]	; 0x24
 8003594:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003598:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800359c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80035a0:	9721      	str	r7, [sp, #132]	; 0x84
 80035a2:	46b9      	mov	r9, r7
 80035a4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80035a8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80035ac:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80035b0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80035b4:	e003      	b.n	80035be <_vfprintf_r+0x12f6>
 80035b6:	f7fd fd27 	bl	8001008 <__aeabi_dcmpeq>
 80035ba:	bb20      	cbnz	r0, 8003606 <_vfprintf_r+0x133e>
 80035bc:	46a9      	mov	r9, r5
 80035be:	2200      	movs	r2, #0
 80035c0:	4b58      	ldr	r3, [pc, #352]	; (8003724 <_vfprintf_r+0x145c>)
 80035c2:	4630      	mov	r0, r6
 80035c4:	4639      	mov	r1, r7
 80035c6:	f7fd fab7 	bl	8000b38 <__aeabi_dmul>
 80035ca:	460f      	mov	r7, r1
 80035cc:	4606      	mov	r6, r0
 80035ce:	f7fd fd63 	bl	8001098 <__aeabi_d2iz>
 80035d2:	4680      	mov	r8, r0
 80035d4:	f7fd fa46 	bl	8000a64 <__aeabi_i2d>
 80035d8:	4602      	mov	r2, r0
 80035da:	460b      	mov	r3, r1
 80035dc:	4630      	mov	r0, r6
 80035de:	4639      	mov	r1, r7
 80035e0:	f7fd f8f2 	bl	80007c8 <__aeabi_dsub>
 80035e4:	464d      	mov	r5, r9
 80035e6:	f81a c008 	ldrb.w	ip, [sl, r8]
 80035ea:	f805 cb01 	strb.w	ip, [r5], #1
 80035ee:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80035f2:	46a3      	mov	fp, r4
 80035f4:	4606      	mov	r6, r0
 80035f6:	460f      	mov	r7, r1
 80035f8:	f04f 0200 	mov.w	r2, #0
 80035fc:	f04f 0300 	mov.w	r3, #0
 8003600:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003604:	d1d7      	bne.n	80035b6 <_vfprintf_r+0x12ee>
 8003606:	4630      	mov	r0, r6
 8003608:	4639      	mov	r1, r7
 800360a:	2200      	movs	r2, #0
 800360c:	4b46      	ldr	r3, [pc, #280]	; (8003728 <_vfprintf_r+0x1460>)
 800360e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003612:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003614:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003618:	4644      	mov	r4, r8
 800361a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800361e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003622:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003626:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800362a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800362c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003630:	f7fd fd12 	bl	8001058 <__aeabi_dcmpgt>
 8003634:	2800      	cmp	r0, #0
 8003636:	f040 8176 	bne.w	8003926 <_vfprintf_r+0x165e>
 800363a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800363e:	2200      	movs	r2, #0
 8003640:	4b39      	ldr	r3, [pc, #228]	; (8003728 <_vfprintf_r+0x1460>)
 8003642:	f7fd fce1 	bl	8001008 <__aeabi_dcmpeq>
 8003646:	b110      	cbz	r0, 800364e <_vfprintf_r+0x1386>
 8003648:	07e2      	lsls	r2, r4, #31
 800364a:	f100 816c 	bmi.w	8003926 <_vfprintf_r+0x165e>
 800364e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003650:	2b00      	cmp	r3, #0
 8003652:	db07      	blt.n	8003664 <_vfprintf_r+0x139c>
 8003654:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003656:	3301      	adds	r3, #1
 8003658:	442b      	add	r3, r5
 800365a:	2230      	movs	r2, #48	; 0x30
 800365c:	f805 2b01 	strb.w	r2, [r5], #1
 8003660:	42ab      	cmp	r3, r5
 8003662:	d1fb      	bne.n	800365c <_vfprintf_r+0x1394>
 8003664:	1beb      	subs	r3, r5, r7
 8003666:	4640      	mov	r0, r8
 8003668:	9310      	str	r3, [sp, #64]	; 0x40
 800366a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800366e:	e683      	b.n	8003378 <_vfprintf_r+0x10b0>
 8003670:	f8cd 9010 	str.w	r9, [sp, #16]
 8003674:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003678:	9408      	str	r4, [sp, #32]
 800367a:	4681      	mov	r9, r0
 800367c:	900f      	str	r0, [sp, #60]	; 0x3c
 800367e:	9014      	str	r0, [sp, #80]	; 0x50
 8003680:	9011      	str	r0, [sp, #68]	; 0x44
 8003682:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003686:	f7fe bfac 	b.w	80025e2 <_vfprintf_r+0x31a>
 800368a:	aa2a      	add	r2, sp, #168	; 0xa8
 800368c:	9907      	ldr	r1, [sp, #28]
 800368e:	9803      	ldr	r0, [sp, #12]
 8003690:	f003 f948 	bl	8006924 <__sprint_r>
 8003694:	2800      	cmp	r0, #0
 8003696:	f47f ab8f 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 800369a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800369c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800369e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036a2:	e511      	b.n	80030c8 <_vfprintf_r+0xe00>
 80036a4:	4252      	negs	r2, r2
 80036a6:	9206      	str	r2, [sp, #24]
 80036a8:	9308      	str	r3, [sp, #32]
 80036aa:	f7ff b96d 	b.w	8002988 <_vfprintf_r+0x6c0>
 80036ae:	4614      	mov	r4, r2
 80036b0:	4632      	mov	r2, r6
 80036b2:	461e      	mov	r6, r3
 80036b4:	4613      	mov	r3, r2
 80036b6:	462a      	mov	r2, r5
 80036b8:	3201      	adds	r2, #1
 80036ba:	9209      	str	r2, [sp, #36]	; 0x24
 80036bc:	f106 0208 	add.w	r2, r6, #8
 80036c0:	e9c6 3900 	strd	r3, r9, [r6]
 80036c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80036c6:	932b      	str	r3, [sp, #172]	; 0xac
 80036c8:	444c      	add	r4, r9
 80036ca:	2b07      	cmp	r3, #7
 80036cc:	942c      	str	r4, [sp, #176]	; 0xb0
 80036ce:	f73f acc3 	bgt.w	8003058 <_vfprintf_r+0xd90>
 80036d2:	3301      	adds	r3, #1
 80036d4:	9309      	str	r3, [sp, #36]	; 0x24
 80036d6:	f102 0b08 	add.w	fp, r2, #8
 80036da:	4616      	mov	r6, r2
 80036dc:	f7ff bbca 	b.w	8002e74 <_vfprintf_r+0xbac>
 80036e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80036e2:	9907      	ldr	r1, [sp, #28]
 80036e4:	9803      	ldr	r0, [sp, #12]
 80036e6:	f003 f91d 	bl	8006924 <__sprint_r>
 80036ea:	2800      	cmp	r0, #0
 80036ec:	f47f ab64 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 80036f0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036f2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036f6:	f7ff bade 	b.w	8002cb6 <_vfprintf_r+0x9ee>
 80036fa:	464b      	mov	r3, r9
 80036fc:	2b06      	cmp	r3, #6
 80036fe:	bf28      	it	cs
 8003700:	2306      	movcs	r3, #6
 8003702:	46b9      	mov	r9, r7
 8003704:	970f      	str	r7, [sp, #60]	; 0x3c
 8003706:	9714      	str	r7, [sp, #80]	; 0x50
 8003708:	9711      	str	r7, [sp, #68]	; 0x44
 800370a:	970a      	str	r7, [sp, #40]	; 0x28
 800370c:	463a      	mov	r2, r7
 800370e:	9304      	str	r3, [sp, #16]
 8003710:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003714:	4f05      	ldr	r7, [pc, #20]	; (800372c <_vfprintf_r+0x1464>)
 8003716:	f7fe bf64 	b.w	80025e2 <_vfprintf_r+0x31a>
 800371a:	bf00      	nop
 800371c:	08007008 	.word	0x08007008
 8003720:	08006fec 	.word	0x08006fec
 8003724:	40300000 	.word	0x40300000
 8003728:	3fe00000 	.word	0x3fe00000
 800372c:	08007000 	.word	0x08007000
 8003730:	460c      	mov	r4, r1
 8003732:	4639      	mov	r1, r7
 8003734:	465f      	mov	r7, fp
 8003736:	469b      	mov	fp, r3
 8003738:	460b      	mov	r3, r1
 800373a:	3201      	adds	r2, #1
 800373c:	442c      	add	r4, r5
 800373e:	2a07      	cmp	r2, #7
 8003740:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003744:	e9cb 3500 	strd	r3, r5, [fp]
 8003748:	f73f aca5 	bgt.w	8003096 <_vfprintf_r+0xdce>
 800374c:	f10b 0b08 	add.w	fp, fp, #8
 8003750:	e4ac      	b.n	80030ac <_vfprintf_r+0xde4>
 8003752:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003754:	1cda      	adds	r2, r3, #3
 8003756:	db02      	blt.n	800375e <_vfprintf_r+0x1496>
 8003758:	4599      	cmp	r9, r3
 800375a:	f280 80b5 	bge.w	80038c8 <_vfprintf_r+0x1600>
 800375e:	3e02      	subs	r6, #2
 8003760:	f026 0320 	bic.w	r3, r6, #32
 8003764:	9304      	str	r3, [sp, #16]
 8003766:	e611      	b.n	800338c <_vfprintf_r+0x10c4>
 8003768:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800376a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 800376e:	465a      	mov	r2, fp
 8003770:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003774:	18fb      	adds	r3, r7, r3
 8003776:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800377a:	970c      	str	r7, [sp, #48]	; 0x30
 800377c:	4eaf      	ldr	r6, [pc, #700]	; (8003a3c <_vfprintf_r+0x1774>)
 800377e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003782:	9309      	str	r3, [sp, #36]	; 0x24
 8003784:	464f      	mov	r7, r9
 8003786:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800378a:	4621      	mov	r1, r4
 800378c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800378e:	2b00      	cmp	r3, #0
 8003790:	d05b      	beq.n	800384a <_vfprintf_r+0x1582>
 8003792:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003794:	2b00      	cmp	r3, #0
 8003796:	d154      	bne.n	8003842 <_vfprintf_r+0x157a>
 8003798:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800379a:	3b01      	subs	r3, #1
 800379c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80037a0:	9314      	str	r3, [sp, #80]	; 0x50
 80037a2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037a4:	9818      	ldr	r0, [sp, #96]	; 0x60
 80037a6:	6010      	str	r0, [r2, #0]
 80037a8:	3301      	adds	r3, #1
 80037aa:	4459      	add	r1, fp
 80037ac:	2b07      	cmp	r3, #7
 80037ae:	912c      	str	r1, [sp, #176]	; 0xb0
 80037b0:	f8c2 b004 	str.w	fp, [r2, #4]
 80037b4:	932b      	str	r3, [sp, #172]	; 0xac
 80037b6:	dc68      	bgt.n	800388a <_vfprintf_r+0x15c2>
 80037b8:	3208      	adds	r2, #8
 80037ba:	9809      	ldr	r0, [sp, #36]	; 0x24
 80037bc:	f898 3000 	ldrb.w	r3, [r8]
 80037c0:	1bc5      	subs	r5, r0, r7
 80037c2:	429d      	cmp	r5, r3
 80037c4:	bfa8      	it	ge
 80037c6:	461d      	movge	r5, r3
 80037c8:	2d00      	cmp	r5, #0
 80037ca:	dd0b      	ble.n	80037e4 <_vfprintf_r+0x151c>
 80037cc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80037ce:	6017      	str	r7, [r2, #0]
 80037d0:	3301      	adds	r3, #1
 80037d2:	4429      	add	r1, r5
 80037d4:	2b07      	cmp	r3, #7
 80037d6:	912c      	str	r1, [sp, #176]	; 0xb0
 80037d8:	6055      	str	r5, [r2, #4]
 80037da:	932b      	str	r3, [sp, #172]	; 0xac
 80037dc:	dc5e      	bgt.n	800389c <_vfprintf_r+0x15d4>
 80037de:	f898 3000 	ldrb.w	r3, [r8]
 80037e2:	3208      	adds	r2, #8
 80037e4:	2d00      	cmp	r5, #0
 80037e6:	bfac      	ite	ge
 80037e8:	1b5d      	subge	r5, r3, r5
 80037ea:	461d      	movlt	r5, r3
 80037ec:	2d00      	cmp	r5, #0
 80037ee:	dd26      	ble.n	800383e <_vfprintf_r+0x1576>
 80037f0:	2d10      	cmp	r5, #16
 80037f2:	982b      	ldr	r0, [sp, #172]	; 0xac
 80037f4:	dd3c      	ble.n	8003870 <_vfprintf_r+0x15a8>
 80037f6:	2410      	movs	r4, #16
 80037f8:	e003      	b.n	8003802 <_vfprintf_r+0x153a>
 80037fa:	3208      	adds	r2, #8
 80037fc:	3d10      	subs	r5, #16
 80037fe:	2d10      	cmp	r5, #16
 8003800:	dd36      	ble.n	8003870 <_vfprintf_r+0x15a8>
 8003802:	3001      	adds	r0, #1
 8003804:	3110      	adds	r1, #16
 8003806:	2807      	cmp	r0, #7
 8003808:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800380c:	e9c2 6400 	strd	r6, r4, [r2]
 8003810:	ddf3      	ble.n	80037fa <_vfprintf_r+0x1532>
 8003812:	aa2a      	add	r2, sp, #168	; 0xa8
 8003814:	4651      	mov	r1, sl
 8003816:	4648      	mov	r0, r9
 8003818:	f003 f884 	bl	8006924 <__sprint_r>
 800381c:	2800      	cmp	r0, #0
 800381e:	d150      	bne.n	80038c2 <_vfprintf_r+0x15fa>
 8003820:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003824:	aa2d      	add	r2, sp, #180	; 0xb4
 8003826:	e7e9      	b.n	80037fc <_vfprintf_r+0x1534>
 8003828:	aa2a      	add	r2, sp, #168	; 0xa8
 800382a:	4651      	mov	r1, sl
 800382c:	4648      	mov	r0, r9
 800382e:	f003 f879 	bl	8006924 <__sprint_r>
 8003832:	2800      	cmp	r0, #0
 8003834:	d145      	bne.n	80038c2 <_vfprintf_r+0x15fa>
 8003836:	f898 3000 	ldrb.w	r3, [r8]
 800383a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800383c:	aa2d      	add	r2, sp, #180	; 0xb4
 800383e:	441f      	add	r7, r3
 8003840:	e7a4      	b.n	800378c <_vfprintf_r+0x14c4>
 8003842:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003844:	3b01      	subs	r3, #1
 8003846:	930f      	str	r3, [sp, #60]	; 0x3c
 8003848:	e7ab      	b.n	80037a2 <_vfprintf_r+0x14da>
 800384a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800384c:	2b00      	cmp	r3, #0
 800384e:	d1f8      	bne.n	8003842 <_vfprintf_r+0x157a>
 8003850:	46b9      	mov	r9, r7
 8003852:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003854:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003856:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 800385a:	18fb      	adds	r3, r7, r3
 800385c:	4599      	cmp	r9, r3
 800385e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003862:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003866:	4693      	mov	fp, r2
 8003868:	460c      	mov	r4, r1
 800386a:	bf28      	it	cs
 800386c:	4699      	movcs	r9, r3
 800386e:	e424      	b.n	80030ba <_vfprintf_r+0xdf2>
 8003870:	3001      	adds	r0, #1
 8003872:	4429      	add	r1, r5
 8003874:	2807      	cmp	r0, #7
 8003876:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800387a:	e9c2 6500 	strd	r6, r5, [r2]
 800387e:	dcd3      	bgt.n	8003828 <_vfprintf_r+0x1560>
 8003880:	f898 3000 	ldrb.w	r3, [r8]
 8003884:	3208      	adds	r2, #8
 8003886:	441f      	add	r7, r3
 8003888:	e780      	b.n	800378c <_vfprintf_r+0x14c4>
 800388a:	aa2a      	add	r2, sp, #168	; 0xa8
 800388c:	4651      	mov	r1, sl
 800388e:	4648      	mov	r0, r9
 8003890:	f003 f848 	bl	8006924 <__sprint_r>
 8003894:	b9a8      	cbnz	r0, 80038c2 <_vfprintf_r+0x15fa>
 8003896:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003898:	aa2d      	add	r2, sp, #180	; 0xb4
 800389a:	e78e      	b.n	80037ba <_vfprintf_r+0x14f2>
 800389c:	aa2a      	add	r2, sp, #168	; 0xa8
 800389e:	4651      	mov	r1, sl
 80038a0:	4648      	mov	r0, r9
 80038a2:	f003 f83f 	bl	8006924 <__sprint_r>
 80038a6:	b960      	cbnz	r0, 80038c2 <_vfprintf_r+0x15fa>
 80038a8:	f898 3000 	ldrb.w	r3, [r8]
 80038ac:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80038ae:	aa2d      	add	r2, sp, #180	; 0xb4
 80038b0:	e798      	b.n	80037e4 <_vfprintf_r+0x151c>
 80038b2:	4638      	mov	r0, r7
 80038b4:	f7fc fec4 	bl	8000640 <strlen>
 80038b8:	46a9      	mov	r9, r5
 80038ba:	4603      	mov	r3, r0
 80038bc:	9009      	str	r0, [sp, #36]	; 0x24
 80038be:	f7ff b8f4 	b.w	8002aaa <_vfprintf_r+0x7e2>
 80038c2:	46d1      	mov	r9, sl
 80038c4:	f7ff ba7a 	b.w	8002dbc <_vfprintf_r+0xaf4>
 80038c8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038ca:	4619      	mov	r1, r3
 80038cc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038ce:	4299      	cmp	r1, r3
 80038d0:	f300 8082 	bgt.w	80039d8 <_vfprintf_r+0x1710>
 80038d4:	07c4      	lsls	r4, r0, #31
 80038d6:	f140 816b 	bpl.w	8003bb0 <_vfprintf_r+0x18e8>
 80038da:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80038dc:	4413      	add	r3, r2
 80038de:	9309      	str	r3, [sp, #36]	; 0x24
 80038e0:	0541      	lsls	r1, r0, #21
 80038e2:	d503      	bpl.n	80038ec <_vfprintf_r+0x1624>
 80038e4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038e6:	2b00      	cmp	r3, #0
 80038e8:	f300 80e6 	bgt.w	8003ab8 <_vfprintf_r+0x17f0>
 80038ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80038ee:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80038f2:	9304      	str	r3, [sp, #16]
 80038f4:	2667      	movs	r6, #103	; 0x67
 80038f6:	2300      	movs	r3, #0
 80038f8:	930f      	str	r3, [sp, #60]	; 0x3c
 80038fa:	9314      	str	r3, [sp, #80]	; 0x50
 80038fc:	e586      	b.n	800340c <_vfprintf_r+0x1144>
 80038fe:	222d      	movs	r2, #45	; 0x2d
 8003900:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003904:	f04f 0900 	mov.w	r9, #0
 8003908:	f7fe be6c 	b.w	80025e4 <_vfprintf_r+0x31c>
 800390c:	46a1      	mov	r9, r4
 800390e:	f7ff ba55 	b.w	8002dbc <_vfprintf_r+0xaf4>
 8003912:	900a      	str	r0, [sp, #40]	; 0x28
 8003914:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003918:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800391c:	931f      	str	r3, [sp, #124]	; 0x7c
 800391e:	232d      	movs	r3, #45	; 0x2d
 8003920:	911e      	str	r1, [sp, #120]	; 0x78
 8003922:	930b      	str	r3, [sp, #44]	; 0x2c
 8003924:	e619      	b.n	800355a <_vfprintf_r+0x1292>
 8003926:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003928:	9328      	str	r3, [sp, #160]	; 0xa0
 800392a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800392c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003930:	7bd9      	ldrb	r1, [r3, #15]
 8003932:	4291      	cmp	r1, r2
 8003934:	462b      	mov	r3, r5
 8003936:	d109      	bne.n	800394c <_vfprintf_r+0x1684>
 8003938:	2030      	movs	r0, #48	; 0x30
 800393a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800393e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003940:	1e5a      	subs	r2, r3, #1
 8003942:	9228      	str	r2, [sp, #160]	; 0xa0
 8003944:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003948:	4291      	cmp	r1, r2
 800394a:	d0f6      	beq.n	800393a <_vfprintf_r+0x1672>
 800394c:	2a39      	cmp	r2, #57	; 0x39
 800394e:	bf0b      	itete	eq
 8003950:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003952:	3201      	addne	r2, #1
 8003954:	7a92      	ldrbeq	r2, [r2, #10]
 8003956:	b2d2      	uxtbne	r2, r2
 8003958:	f803 2c01 	strb.w	r2, [r3, #-1]
 800395c:	e682      	b.n	8003664 <_vfprintf_r+0x139c>
 800395e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003962:	f43f ad9f 	beq.w	80034a4 <_vfprintf_r+0x11dc>
 8003966:	9a05      	ldr	r2, [sp, #20]
 8003968:	701a      	strb	r2, [r3, #0]
 800396a:	4657      	mov	r7, sl
 800396c:	f7fe bf52 	b.w	8002814 <_vfprintf_r+0x54c>
 8003970:	aa2a      	add	r2, sp, #168	; 0xa8
 8003972:	9907      	ldr	r1, [sp, #28]
 8003974:	9803      	ldr	r0, [sp, #12]
 8003976:	f002 ffd5 	bl	8006924 <__sprint_r>
 800397a:	2800      	cmp	r0, #0
 800397c:	f47f aa1c 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 8003980:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003982:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003986:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800398a:	e571      	b.n	8003470 <_vfprintf_r+0x11a8>
 800398c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800398e:	2b00      	cmp	r3, #0
 8003990:	f340 8164 	ble.w	8003c5c <_vfprintf_r+0x1994>
 8003994:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003996:	f1b9 0f00 	cmp.w	r9, #0
 800399a:	f040 8103 	bne.w	8003ba4 <_vfprintf_r+0x18dc>
 800399e:	07c6      	lsls	r6, r0, #31
 80039a0:	f100 8100 	bmi.w	8003ba4 <_vfprintf_r+0x18dc>
 80039a4:	9309      	str	r3, [sp, #36]	; 0x24
 80039a6:	2666      	movs	r6, #102	; 0x66
 80039a8:	0543      	lsls	r3, r0, #21
 80039aa:	f100 8086 	bmi.w	8003aba <_vfprintf_r+0x17f2>
 80039ae:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80039b0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80039b4:	9304      	str	r3, [sp, #16]
 80039b6:	e79e      	b.n	80038f6 <_vfprintf_r+0x162e>
 80039b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80039ba:	9907      	ldr	r1, [sp, #28]
 80039bc:	9803      	ldr	r0, [sp, #12]
 80039be:	f002 ffb1 	bl	8006924 <__sprint_r>
 80039c2:	2800      	cmp	r0, #0
 80039c4:	f47f a9f8 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 80039c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80039ca:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80039cc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039ce:	1ad3      	subs	r3, r2, r3
 80039d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039d4:	f7ff bb90 	b.w	80030f8 <_vfprintf_r+0xe30>
 80039d8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039da:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80039dc:	4413      	add	r3, r2
 80039de:	9309      	str	r3, [sp, #36]	; 0x24
 80039e0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039e2:	2b00      	cmp	r3, #0
 80039e4:	f340 8149 	ble.w	8003c7a <_vfprintf_r+0x19b2>
 80039e8:	2667      	movs	r6, #103	; 0x67
 80039ea:	e7dd      	b.n	80039a8 <_vfprintf_r+0x16e0>
 80039ec:	2330      	movs	r3, #48	; 0x30
 80039ee:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80039f2:	2358      	movs	r3, #88	; 0x58
 80039f4:	e595      	b.n	8003522 <_vfprintf_r+0x125a>
 80039f6:	9803      	ldr	r0, [sp, #12]
 80039f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80039fa:	4649      	mov	r1, r9
 80039fc:	f002 ff92 	bl	8006924 <__sprint_r>
 8003a00:	2800      	cmp	r0, #0
 8003a02:	f47f a9e0 	bne.w	8002dc6 <_vfprintf_r+0xafe>
 8003a06:	f7fe bf0f 	b.w	8002828 <_vfprintf_r+0x560>
 8003a0a:	a824      	add	r0, sp, #144	; 0x90
 8003a0c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003a10:	f002 fe90 	bl	8006734 <frexp>
 8003a14:	2200      	movs	r2, #0
 8003a16:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003a1a:	ec51 0b10 	vmov	r0, r1, d0
 8003a1e:	f7fd f88b 	bl	8000b38 <__aeabi_dmul>
 8003a22:	2200      	movs	r2, #0
 8003a24:	2300      	movs	r3, #0
 8003a26:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a2a:	f7fd faed 	bl	8001008 <__aeabi_dcmpeq>
 8003a2e:	b108      	cbz	r0, 8003a34 <_vfprintf_r+0x176c>
 8003a30:	2301      	movs	r3, #1
 8003a32:	9324      	str	r3, [sp, #144]	; 0x90
 8003a34:	4b02      	ldr	r3, [pc, #8]	; (8003a40 <_vfprintf_r+0x1778>)
 8003a36:	9309      	str	r3, [sp, #36]	; 0x24
 8003a38:	e5ac      	b.n	8003594 <_vfprintf_r+0x12cc>
 8003a3a:	bf00      	nop
 8003a3c:	0800701c 	.word	0x0800701c
 8003a40:	08006fd8 	.word	0x08006fd8
 8003a44:	425d      	negs	r5, r3
 8003a46:	3310      	adds	r3, #16
 8003a48:	4bb9      	ldr	r3, [pc, #740]	; (8003d30 <_vfprintf_r+0x1a68>)
 8003a4a:	f280 8097 	bge.w	8003b7c <_vfprintf_r+0x18b4>
 8003a4e:	4619      	mov	r1, r3
 8003a50:	2610      	movs	r6, #16
 8003a52:	4623      	mov	r3, r4
 8003a54:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003a58:	460c      	mov	r4, r1
 8003a5a:	e005      	b.n	8003a68 <_vfprintf_r+0x17a0>
 8003a5c:	f10b 0b08 	add.w	fp, fp, #8
 8003a60:	3d10      	subs	r5, #16
 8003a62:	2d10      	cmp	r5, #16
 8003a64:	f340 8087 	ble.w	8003b76 <_vfprintf_r+0x18ae>
 8003a68:	3201      	adds	r2, #1
 8003a6a:	3310      	adds	r3, #16
 8003a6c:	2a07      	cmp	r2, #7
 8003a6e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003a72:	e9cb 4600 	strd	r4, r6, [fp]
 8003a76:	ddf1      	ble.n	8003a5c <_vfprintf_r+0x1794>
 8003a78:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a7a:	9907      	ldr	r1, [sp, #28]
 8003a7c:	4648      	mov	r0, r9
 8003a7e:	f002 ff51 	bl	8006924 <__sprint_r>
 8003a82:	2800      	cmp	r0, #0
 8003a84:	f47f a998 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 8003a88:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003a8c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a90:	e7e6      	b.n	8003a60 <_vfprintf_r+0x1798>
 8003a92:	f109 0101 	add.w	r1, r9, #1
 8003a96:	9803      	ldr	r0, [sp, #12]
 8003a98:	f001 fe80 	bl	800579c <_malloc_r>
 8003a9c:	4607      	mov	r7, r0
 8003a9e:	2800      	cmp	r0, #0
 8003aa0:	f000 813b 	beq.w	8003d1a <_vfprintf_r+0x1a52>
 8003aa4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003aa8:	930e      	str	r3, [sp, #56]	; 0x38
 8003aaa:	f026 0320 	bic.w	r3, r6, #32
 8003aae:	9304      	str	r3, [sp, #16]
 8003ab0:	46a0      	mov	r8, r4
 8003ab2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003ab4:	900a      	str	r0, [sp, #40]	; 0x28
 8003ab6:	e547      	b.n	8003548 <_vfprintf_r+0x1280>
 8003ab8:	2667      	movs	r6, #103	; 0x67
 8003aba:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003abc:	2200      	movs	r2, #0
 8003abe:	920f      	str	r2, [sp, #60]	; 0x3c
 8003ac0:	9214      	str	r2, [sp, #80]	; 0x50
 8003ac2:	7803      	ldrb	r3, [r0, #0]
 8003ac4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003ac6:	2bff      	cmp	r3, #255	; 0xff
 8003ac8:	d00c      	beq.n	8003ae4 <_vfprintf_r+0x181c>
 8003aca:	4293      	cmp	r3, r2
 8003acc:	da0a      	bge.n	8003ae4 <_vfprintf_r+0x181c>
 8003ace:	7841      	ldrb	r1, [r0, #1]
 8003ad0:	1ad2      	subs	r2, r2, r3
 8003ad2:	b1a9      	cbz	r1, 8003b00 <_vfprintf_r+0x1838>
 8003ad4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003ad6:	3301      	adds	r3, #1
 8003ad8:	9314      	str	r3, [sp, #80]	; 0x50
 8003ada:	460b      	mov	r3, r1
 8003adc:	2bff      	cmp	r3, #255	; 0xff
 8003ade:	f100 0001 	add.w	r0, r0, #1
 8003ae2:	d1f2      	bne.n	8003aca <_vfprintf_r+0x1802>
 8003ae4:	9211      	str	r2, [sp, #68]	; 0x44
 8003ae6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003ae8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003aea:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003aec:	901a      	str	r0, [sp, #104]	; 0x68
 8003aee:	4413      	add	r3, r2
 8003af0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003af2:	fb02 1303 	mla	r3, r2, r3, r1
 8003af6:	9309      	str	r3, [sp, #36]	; 0x24
 8003af8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003afc:	9304      	str	r3, [sp, #16]
 8003afe:	e485      	b.n	800340c <_vfprintf_r+0x1144>
 8003b00:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003b02:	3101      	adds	r1, #1
 8003b04:	910f      	str	r1, [sp, #60]	; 0x3c
 8003b06:	e7de      	b.n	8003ac6 <_vfprintf_r+0x17fe>
 8003b08:	aa28      	add	r2, sp, #160	; 0xa0
 8003b0a:	ab25      	add	r3, sp, #148	; 0x94
 8003b0c:	e9cd 3200 	strd	r3, r2, [sp]
 8003b10:	2103      	movs	r1, #3
 8003b12:	ab24      	add	r3, sp, #144	; 0x90
 8003b14:	464a      	mov	r2, r9
 8003b16:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b1a:	9803      	ldr	r0, [sp, #12]
 8003b1c:	f000 fa5c 	bl	8003fd8 <_dtoa_r>
 8003b20:	464d      	mov	r5, r9
 8003b22:	4607      	mov	r7, r0
 8003b24:	eb00 0409 	add.w	r4, r0, r9
 8003b28:	783b      	ldrb	r3, [r7, #0]
 8003b2a:	2b30      	cmp	r3, #48	; 0x30
 8003b2c:	f000 80be 	beq.w	8003cac <_vfprintf_r+0x19e4>
 8003b30:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003b32:	442c      	add	r4, r5
 8003b34:	2200      	movs	r2, #0
 8003b36:	2300      	movs	r3, #0
 8003b38:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003b3c:	f7fd fa64 	bl	8001008 <__aeabi_dcmpeq>
 8003b40:	b108      	cbz	r0, 8003b46 <_vfprintf_r+0x187e>
 8003b42:	4623      	mov	r3, r4
 8003b44:	e413      	b.n	800336e <_vfprintf_r+0x10a6>
 8003b46:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b48:	42a3      	cmp	r3, r4
 8003b4a:	f4bf ac10 	bcs.w	800336e <_vfprintf_r+0x10a6>
 8003b4e:	2130      	movs	r1, #48	; 0x30
 8003b50:	1c5a      	adds	r2, r3, #1
 8003b52:	9228      	str	r2, [sp, #160]	; 0xa0
 8003b54:	7019      	strb	r1, [r3, #0]
 8003b56:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b58:	429c      	cmp	r4, r3
 8003b5a:	d8f9      	bhi.n	8003b50 <_vfprintf_r+0x1888>
 8003b5c:	e407      	b.n	800336e <_vfprintf_r+0x10a6>
 8003b5e:	197c      	adds	r4, r7, r5
 8003b60:	e7e8      	b.n	8003b34 <_vfprintf_r+0x186c>
 8003b62:	f1b9 0f00 	cmp.w	r9, #0
 8003b66:	f000 8092 	beq.w	8003c8e <_vfprintf_r+0x19c6>
 8003b6a:	900a      	str	r0, [sp, #40]	; 0x28
 8003b6c:	e4ec      	b.n	8003548 <_vfprintf_r+0x1280>
 8003b6e:	900a      	str	r0, [sp, #40]	; 0x28
 8003b70:	f04f 0906 	mov.w	r9, #6
 8003b74:	e4e8      	b.n	8003548 <_vfprintf_r+0x1280>
 8003b76:	4621      	mov	r1, r4
 8003b78:	461c      	mov	r4, r3
 8003b7a:	460b      	mov	r3, r1
 8003b7c:	3201      	adds	r2, #1
 8003b7e:	442c      	add	r4, r5
 8003b80:	2a07      	cmp	r2, #7
 8003b82:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b86:	e9cb 3500 	strd	r3, r5, [fp]
 8003b8a:	f300 80a9 	bgt.w	8003ce0 <_vfprintf_r+0x1a18>
 8003b8e:	f10b 0b08 	add.w	fp, fp, #8
 8003b92:	e470      	b.n	8003476 <_vfprintf_r+0x11ae>
 8003b94:	469a      	mov	sl, r3
 8003b96:	f7ff bb37 	b.w	8003208 <_vfprintf_r+0xf40>
 8003b9a:	2301      	movs	r3, #1
 8003b9c:	9324      	str	r3, [sp, #144]	; 0x90
 8003b9e:	4b65      	ldr	r3, [pc, #404]	; (8003d34 <_vfprintf_r+0x1a6c>)
 8003ba0:	9309      	str	r3, [sp, #36]	; 0x24
 8003ba2:	e4f7      	b.n	8003594 <_vfprintf_r+0x12cc>
 8003ba4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003ba6:	4413      	add	r3, r2
 8003ba8:	444b      	add	r3, r9
 8003baa:	9309      	str	r3, [sp, #36]	; 0x24
 8003bac:	2666      	movs	r6, #102	; 0x66
 8003bae:	e6fb      	b.n	80039a8 <_vfprintf_r+0x16e0>
 8003bb0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bb2:	9309      	str	r3, [sp, #36]	; 0x24
 8003bb4:	e694      	b.n	80038e0 <_vfprintf_r+0x1618>
 8003bb6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003bba:	4664      	mov	r4, ip
 8003bbc:	4d5e      	ldr	r5, [pc, #376]	; (8003d38 <_vfprintf_r+0x1a70>)
 8003bbe:	e000      	b.n	8003bc2 <_vfprintf_r+0x18fa>
 8003bc0:	4614      	mov	r4, r2
 8003bc2:	fba5 1203 	umull	r1, r2, r5, r3
 8003bc6:	08d2      	lsrs	r2, r2, #3
 8003bc8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003bcc:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003bd0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003bd4:	4613      	mov	r3, r2
 8003bd6:	2b09      	cmp	r3, #9
 8003bd8:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003bdc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003be0:	dcee      	bgt.n	8003bc0 <_vfprintf_r+0x18f8>
 8003be2:	3330      	adds	r3, #48	; 0x30
 8003be4:	3c02      	subs	r4, #2
 8003be6:	b2db      	uxtb	r3, r3
 8003be8:	45a4      	cmp	ip, r4
 8003bea:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003bee:	f240 8090 	bls.w	8003d12 <_vfprintf_r+0x1a4a>
 8003bf2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003bf6:	4611      	mov	r1, r2
 8003bf8:	e001      	b.n	8003bfe <_vfprintf_r+0x1936>
 8003bfa:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003bfe:	f804 3b01 	strb.w	r3, [r4], #1
 8003c02:	458c      	cmp	ip, r1
 8003c04:	d1f9      	bne.n	8003bfa <_vfprintf_r+0x1932>
 8003c06:	ab2a      	add	r3, sp, #168	; 0xa8
 8003c08:	1a9b      	subs	r3, r3, r2
 8003c0a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003c0e:	4413      	add	r3, r2
 8003c10:	f7ff bbe3 	b.w	80033da <_vfprintf_r+0x1112>
 8003c14:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c16:	4f49      	ldr	r7, [pc, #292]	; (8003d3c <_vfprintf_r+0x1a74>)
 8003c18:	2b00      	cmp	r3, #0
 8003c1a:	bfb6      	itet	lt
 8003c1c:	222d      	movlt	r2, #45	; 0x2d
 8003c1e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003c22:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003c26:	4b46      	ldr	r3, [pc, #280]	; (8003d40 <_vfprintf_r+0x1a78>)
 8003c28:	f7fe bf02 	b.w	8002a30 <_vfprintf_r+0x768>
 8003c2c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003c30:	f7ff b8c9 	b.w	8002dc6 <_vfprintf_r+0xafe>
 8003c34:	aa28      	add	r2, sp, #160	; 0xa0
 8003c36:	ab25      	add	r3, sp, #148	; 0x94
 8003c38:	e9cd 3200 	strd	r3, r2, [sp]
 8003c3c:	2103      	movs	r1, #3
 8003c3e:	ab24      	add	r3, sp, #144	; 0x90
 8003c40:	464a      	mov	r2, r9
 8003c42:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c46:	9803      	ldr	r0, [sp, #12]
 8003c48:	f000 f9c6 	bl	8003fd8 <_dtoa_r>
 8003c4c:	464d      	mov	r5, r9
 8003c4e:	4607      	mov	r7, r0
 8003c50:	2e46      	cmp	r6, #70	; 0x46
 8003c52:	eb07 0405 	add.w	r4, r7, r5
 8003c56:	f43f af67 	beq.w	8003b28 <_vfprintf_r+0x1860>
 8003c5a:	e76b      	b.n	8003b34 <_vfprintf_r+0x186c>
 8003c5c:	f1b9 0f00 	cmp.w	r9, #0
 8003c60:	d131      	bne.n	8003cc6 <_vfprintf_r+0x19fe>
 8003c62:	07c5      	lsls	r5, r0, #31
 8003c64:	d42f      	bmi.n	8003cc6 <_vfprintf_r+0x19fe>
 8003c66:	2301      	movs	r3, #1
 8003c68:	9304      	str	r3, [sp, #16]
 8003c6a:	9309      	str	r3, [sp, #36]	; 0x24
 8003c6c:	2666      	movs	r6, #102	; 0x66
 8003c6e:	e642      	b.n	80038f6 <_vfprintf_r+0x162e>
 8003c70:	07c3      	lsls	r3, r0, #31
 8003c72:	f57f abbf 	bpl.w	80033f4 <_vfprintf_r+0x112c>
 8003c76:	f7ff bbb9 	b.w	80033ec <_vfprintf_r+0x1124>
 8003c7a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003c7c:	f1c3 0301 	rsb	r3, r3, #1
 8003c80:	441a      	add	r2, r3
 8003c82:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003c86:	9209      	str	r2, [sp, #36]	; 0x24
 8003c88:	9304      	str	r3, [sp, #16]
 8003c8a:	2667      	movs	r6, #103	; 0x67
 8003c8c:	e633      	b.n	80038f6 <_vfprintf_r+0x162e>
 8003c8e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003c92:	f04f 0901 	mov.w	r9, #1
 8003c96:	e457      	b.n	8003548 <_vfprintf_r+0x1280>
 8003c98:	465a      	mov	r2, fp
 8003c9a:	e511      	b.n	80036c0 <_vfprintf_r+0x13f8>
 8003c9c:	2e47      	cmp	r6, #71	; 0x47
 8003c9e:	f47f af5e 	bne.w	8003b5e <_vfprintf_r+0x1896>
 8003ca2:	f018 0f01 	tst.w	r8, #1
 8003ca6:	f43f ab61 	beq.w	800336c <_vfprintf_r+0x10a4>
 8003caa:	e7d1      	b.n	8003c50 <_vfprintf_r+0x1988>
 8003cac:	2200      	movs	r2, #0
 8003cae:	2300      	movs	r3, #0
 8003cb0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003cb4:	f7fd f9a8 	bl	8001008 <__aeabi_dcmpeq>
 8003cb8:	2800      	cmp	r0, #0
 8003cba:	f47f af39 	bne.w	8003b30 <_vfprintf_r+0x1868>
 8003cbe:	f1c5 0501 	rsb	r5, r5, #1
 8003cc2:	9524      	str	r5, [sp, #144]	; 0x90
 8003cc4:	e735      	b.n	8003b32 <_vfprintf_r+0x186a>
 8003cc6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003cc8:	3301      	adds	r3, #1
 8003cca:	444b      	add	r3, r9
 8003ccc:	9309      	str	r3, [sp, #36]	; 0x24
 8003cce:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003cd2:	9304      	str	r3, [sp, #16]
 8003cd4:	2666      	movs	r6, #102	; 0x66
 8003cd6:	e60e      	b.n	80038f6 <_vfprintf_r+0x162e>
 8003cd8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003cdc:	f7ff bb7a 	b.w	80033d4 <_vfprintf_r+0x110c>
 8003ce0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ce2:	9907      	ldr	r1, [sp, #28]
 8003ce4:	9803      	ldr	r0, [sp, #12]
 8003ce6:	f002 fe1d 	bl	8006924 <__sprint_r>
 8003cea:	2800      	cmp	r0, #0
 8003cec:	f47f a864 	bne.w	8002db8 <_vfprintf_r+0xaf0>
 8003cf0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003cf4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cf8:	f7ff bbbd 	b.w	8003476 <_vfprintf_r+0x11ae>
 8003cfc:	9908      	ldr	r1, [sp, #32]
 8003cfe:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003d02:	680b      	ldr	r3, [r1, #0]
 8003d04:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003d08:	1d0b      	adds	r3, r1, #4
 8003d0a:	4692      	mov	sl, r2
 8003d0c:	9308      	str	r3, [sp, #32]
 8003d0e:	f7fe bb59 	b.w	80023c4 <_vfprintf_r+0xfc>
 8003d12:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003d16:	f7ff bb60 	b.w	80033da <_vfprintf_r+0x1112>
 8003d1a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003d1e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003d22:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003d26:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003d2a:	f7ff b84c 	b.w	8002dc6 <_vfprintf_r+0xafe>
 8003d2e:	bf00      	nop
 8003d30:	0800701c 	.word	0x0800701c
 8003d34:	08006fec 	.word	0x08006fec
 8003d38:	cccccccd 	.word	0xcccccccd
 8003d3c:	08006fd4 	.word	0x08006fd4
 8003d40:	08006fd0 	.word	0x08006fd0

08003d44 <__sbprintf>:
 8003d44:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003d48:	460c      	mov	r4, r1
 8003d4a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003d4e:	8989      	ldrh	r1, [r1, #12]
 8003d50:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003d52:	89e5      	ldrh	r5, [r4, #14]
 8003d54:	9619      	str	r6, [sp, #100]	; 0x64
 8003d56:	f021 0102 	bic.w	r1, r1, #2
 8003d5a:	4606      	mov	r6, r0
 8003d5c:	69e0      	ldr	r0, [r4, #28]
 8003d5e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003d62:	4617      	mov	r7, r2
 8003d64:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003d68:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003d6a:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003d6e:	4698      	mov	r8, r3
 8003d70:	ad1a      	add	r5, sp, #104	; 0x68
 8003d72:	2300      	movs	r3, #0
 8003d74:	9007      	str	r0, [sp, #28]
 8003d76:	a816      	add	r0, sp, #88	; 0x58
 8003d78:	9209      	str	r2, [sp, #36]	; 0x24
 8003d7a:	9306      	str	r3, [sp, #24]
 8003d7c:	9500      	str	r5, [sp, #0]
 8003d7e:	9504      	str	r5, [sp, #16]
 8003d80:	9102      	str	r1, [sp, #8]
 8003d82:	9105      	str	r1, [sp, #20]
 8003d84:	f001 fc8a 	bl	800569c <__retarget_lock_init_recursive>
 8003d88:	4643      	mov	r3, r8
 8003d8a:	463a      	mov	r2, r7
 8003d8c:	4669      	mov	r1, sp
 8003d8e:	4630      	mov	r0, r6
 8003d90:	f7fe fa9a 	bl	80022c8 <_vfprintf_r>
 8003d94:	1e05      	subs	r5, r0, #0
 8003d96:	db07      	blt.n	8003da8 <__sbprintf+0x64>
 8003d98:	4630      	mov	r0, r6
 8003d9a:	4669      	mov	r1, sp
 8003d9c:	f001 f8d6 	bl	8004f4c <_fflush_r>
 8003da0:	2800      	cmp	r0, #0
 8003da2:	bf18      	it	ne
 8003da4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003da8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003dac:	065b      	lsls	r3, r3, #25
 8003dae:	d503      	bpl.n	8003db8 <__sbprintf+0x74>
 8003db0:	89a3      	ldrh	r3, [r4, #12]
 8003db2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003db6:	81a3      	strh	r3, [r4, #12]
 8003db8:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003dba:	f001 fc71 	bl	80056a0 <__retarget_lock_close_recursive>
 8003dbe:	4628      	mov	r0, r5
 8003dc0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003dc4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003dc8 <__swsetup_r>:
 8003dc8:	b538      	push	{r3, r4, r5, lr}
 8003dca:	4b31      	ldr	r3, [pc, #196]	; (8003e90 <__swsetup_r+0xc8>)
 8003dcc:	681b      	ldr	r3, [r3, #0]
 8003dce:	4605      	mov	r5, r0
 8003dd0:	460c      	mov	r4, r1
 8003dd2:	b113      	cbz	r3, 8003dda <__swsetup_r+0x12>
 8003dd4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003dd6:	2a00      	cmp	r2, #0
 8003dd8:	d03a      	beq.n	8003e50 <__swsetup_r+0x88>
 8003dda:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003dde:	b293      	uxth	r3, r2
 8003de0:	0718      	lsls	r0, r3, #28
 8003de2:	d50c      	bpl.n	8003dfe <__swsetup_r+0x36>
 8003de4:	6920      	ldr	r0, [r4, #16]
 8003de6:	b1a8      	cbz	r0, 8003e14 <__swsetup_r+0x4c>
 8003de8:	f013 0201 	ands.w	r2, r3, #1
 8003dec:	d020      	beq.n	8003e30 <__swsetup_r+0x68>
 8003dee:	6963      	ldr	r3, [r4, #20]
 8003df0:	2200      	movs	r2, #0
 8003df2:	425b      	negs	r3, r3
 8003df4:	61a3      	str	r3, [r4, #24]
 8003df6:	60a2      	str	r2, [r4, #8]
 8003df8:	b300      	cbz	r0, 8003e3c <__swsetup_r+0x74>
 8003dfa:	2000      	movs	r0, #0
 8003dfc:	bd38      	pop	{r3, r4, r5, pc}
 8003dfe:	06d9      	lsls	r1, r3, #27
 8003e00:	d53e      	bpl.n	8003e80 <__swsetup_r+0xb8>
 8003e02:	0758      	lsls	r0, r3, #29
 8003e04:	d428      	bmi.n	8003e58 <__swsetup_r+0x90>
 8003e06:	6920      	ldr	r0, [r4, #16]
 8003e08:	f042 0308 	orr.w	r3, r2, #8
 8003e0c:	81a3      	strh	r3, [r4, #12]
 8003e0e:	b29b      	uxth	r3, r3
 8003e10:	2800      	cmp	r0, #0
 8003e12:	d1e9      	bne.n	8003de8 <__swsetup_r+0x20>
 8003e14:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003e18:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003e1c:	d0e4      	beq.n	8003de8 <__swsetup_r+0x20>
 8003e1e:	4628      	mov	r0, r5
 8003e20:	4621      	mov	r1, r4
 8003e22:	f001 fc71 	bl	8005708 <__smakebuf_r>
 8003e26:	89a3      	ldrh	r3, [r4, #12]
 8003e28:	6920      	ldr	r0, [r4, #16]
 8003e2a:	f013 0201 	ands.w	r2, r3, #1
 8003e2e:	d1de      	bne.n	8003dee <__swsetup_r+0x26>
 8003e30:	0799      	lsls	r1, r3, #30
 8003e32:	bf58      	it	pl
 8003e34:	6962      	ldrpl	r2, [r4, #20]
 8003e36:	60a2      	str	r2, [r4, #8]
 8003e38:	2800      	cmp	r0, #0
 8003e3a:	d1de      	bne.n	8003dfa <__swsetup_r+0x32>
 8003e3c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003e40:	061a      	lsls	r2, r3, #24
 8003e42:	d5db      	bpl.n	8003dfc <__swsetup_r+0x34>
 8003e44:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003e48:	81a3      	strh	r3, [r4, #12]
 8003e4a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e4e:	bd38      	pop	{r3, r4, r5, pc}
 8003e50:	4618      	mov	r0, r3
 8003e52:	f001 f8d7 	bl	8005004 <__sinit>
 8003e56:	e7c0      	b.n	8003dda <__swsetup_r+0x12>
 8003e58:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003e5a:	b151      	cbz	r1, 8003e72 <__swsetup_r+0xaa>
 8003e5c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003e60:	4299      	cmp	r1, r3
 8003e62:	d004      	beq.n	8003e6e <__swsetup_r+0xa6>
 8003e64:	4628      	mov	r0, r5
 8003e66:	f001 f96f 	bl	8005148 <_free_r>
 8003e6a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003e6e:	2300      	movs	r3, #0
 8003e70:	6323      	str	r3, [r4, #48]	; 0x30
 8003e72:	2300      	movs	r3, #0
 8003e74:	6920      	ldr	r0, [r4, #16]
 8003e76:	6063      	str	r3, [r4, #4]
 8003e78:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8003e7c:	6020      	str	r0, [r4, #0]
 8003e7e:	e7c3      	b.n	8003e08 <__swsetup_r+0x40>
 8003e80:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8003e84:	2309      	movs	r3, #9
 8003e86:	602b      	str	r3, [r5, #0]
 8003e88:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003e8c:	81a2      	strh	r2, [r4, #12]
 8003e8e:	bd38      	pop	{r3, r4, r5, pc}
 8003e90:	20000018 	.word	0x20000018

08003e94 <register_fini>:
 8003e94:	4b02      	ldr	r3, [pc, #8]	; (8003ea0 <register_fini+0xc>)
 8003e96:	b113      	cbz	r3, 8003e9e <register_fini+0xa>
 8003e98:	4802      	ldr	r0, [pc, #8]	; (8003ea4 <register_fini+0x10>)
 8003e9a:	f000 b805 	b.w	8003ea8 <atexit>
 8003e9e:	4770      	bx	lr
 8003ea0:	00000000 	.word	0x00000000
 8003ea4:	08005075 	.word	0x08005075

08003ea8 <atexit>:
 8003ea8:	2300      	movs	r3, #0
 8003eaa:	4601      	mov	r1, r0
 8003eac:	461a      	mov	r2, r3
 8003eae:	4618      	mov	r0, r3
 8003eb0:	f002 bd58 	b.w	8006964 <__register_exitproc>

08003eb4 <quorem>:
 8003eb4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003eb8:	6903      	ldr	r3, [r0, #16]
 8003eba:	690f      	ldr	r7, [r1, #16]
 8003ebc:	42bb      	cmp	r3, r7
 8003ebe:	b083      	sub	sp, #12
 8003ec0:	f2c0 8086 	blt.w	8003fd0 <quorem+0x11c>
 8003ec4:	3f01      	subs	r7, #1
 8003ec6:	f101 0914 	add.w	r9, r1, #20
 8003eca:	f100 0a14 	add.w	sl, r0, #20
 8003ece:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8003ed2:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8003ed6:	00bc      	lsls	r4, r7, #2
 8003ed8:	3201      	adds	r2, #1
 8003eda:	fbb3 f8f2 	udiv	r8, r3, r2
 8003ede:	eb0a 0304 	add.w	r3, sl, r4
 8003ee2:	9400      	str	r4, [sp, #0]
 8003ee4:	eb09 0b04 	add.w	fp, r9, r4
 8003ee8:	9301      	str	r3, [sp, #4]
 8003eea:	f1b8 0f00 	cmp.w	r8, #0
 8003eee:	d038      	beq.n	8003f62 <quorem+0xae>
 8003ef0:	2500      	movs	r5, #0
 8003ef2:	462e      	mov	r6, r5
 8003ef4:	46ce      	mov	lr, r9
 8003ef6:	46d4      	mov	ip, sl
 8003ef8:	f85e 4b04 	ldr.w	r4, [lr], #4
 8003efc:	f8dc 3000 	ldr.w	r3, [ip]
 8003f00:	b2a2      	uxth	r2, r4
 8003f02:	fb08 5502 	mla	r5, r8, r2, r5
 8003f06:	0c22      	lsrs	r2, r4, #16
 8003f08:	0c2c      	lsrs	r4, r5, #16
 8003f0a:	fb08 4202 	mla	r2, r8, r2, r4
 8003f0e:	b2ad      	uxth	r5, r5
 8003f10:	1b75      	subs	r5, r6, r5
 8003f12:	b296      	uxth	r6, r2
 8003f14:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8003f18:	fa15 f383 	uxtah	r3, r5, r3
 8003f1c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8003f20:	b29b      	uxth	r3, r3
 8003f22:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8003f26:	45f3      	cmp	fp, lr
 8003f28:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8003f2c:	f84c 3b04 	str.w	r3, [ip], #4
 8003f30:	ea4f 4626 	mov.w	r6, r6, asr #16
 8003f34:	d2e0      	bcs.n	8003ef8 <quorem+0x44>
 8003f36:	9b00      	ldr	r3, [sp, #0]
 8003f38:	f85a 3003 	ldr.w	r3, [sl, r3]
 8003f3c:	b98b      	cbnz	r3, 8003f62 <quorem+0xae>
 8003f3e:	9a01      	ldr	r2, [sp, #4]
 8003f40:	1f13      	subs	r3, r2, #4
 8003f42:	459a      	cmp	sl, r3
 8003f44:	d20c      	bcs.n	8003f60 <quorem+0xac>
 8003f46:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8003f4a:	b94b      	cbnz	r3, 8003f60 <quorem+0xac>
 8003f4c:	f1a2 0308 	sub.w	r3, r2, #8
 8003f50:	e002      	b.n	8003f58 <quorem+0xa4>
 8003f52:	681a      	ldr	r2, [r3, #0]
 8003f54:	3b04      	subs	r3, #4
 8003f56:	b91a      	cbnz	r2, 8003f60 <quorem+0xac>
 8003f58:	459a      	cmp	sl, r3
 8003f5a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003f5e:	d3f8      	bcc.n	8003f52 <quorem+0x9e>
 8003f60:	6107      	str	r7, [r0, #16]
 8003f62:	4604      	mov	r4, r0
 8003f64:	f002 f944 	bl	80061f0 <__mcmp>
 8003f68:	2800      	cmp	r0, #0
 8003f6a:	db2d      	blt.n	8003fc8 <quorem+0x114>
 8003f6c:	f108 0801 	add.w	r8, r8, #1
 8003f70:	4655      	mov	r5, sl
 8003f72:	2300      	movs	r3, #0
 8003f74:	f859 1b04 	ldr.w	r1, [r9], #4
 8003f78:	6828      	ldr	r0, [r5, #0]
 8003f7a:	b28a      	uxth	r2, r1
 8003f7c:	1a9a      	subs	r2, r3, r2
 8003f7e:	0c0b      	lsrs	r3, r1, #16
 8003f80:	fa12 f280 	uxtah	r2, r2, r0
 8003f84:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8003f88:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8003f8c:	b292      	uxth	r2, r2
 8003f8e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8003f92:	45cb      	cmp	fp, r9
 8003f94:	f845 2b04 	str.w	r2, [r5], #4
 8003f98:	ea4f 4323 	mov.w	r3, r3, asr #16
 8003f9c:	d2ea      	bcs.n	8003f74 <quorem+0xc0>
 8003f9e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8003fa2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8003fa6:	b97a      	cbnz	r2, 8003fc8 <quorem+0x114>
 8003fa8:	1f1a      	subs	r2, r3, #4
 8003faa:	4592      	cmp	sl, r2
 8003fac:	d20b      	bcs.n	8003fc6 <quorem+0x112>
 8003fae:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8003fb2:	b942      	cbnz	r2, 8003fc6 <quorem+0x112>
 8003fb4:	3b08      	subs	r3, #8
 8003fb6:	e002      	b.n	8003fbe <quorem+0x10a>
 8003fb8:	681a      	ldr	r2, [r3, #0]
 8003fba:	3b04      	subs	r3, #4
 8003fbc:	b91a      	cbnz	r2, 8003fc6 <quorem+0x112>
 8003fbe:	459a      	cmp	sl, r3
 8003fc0:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8003fc4:	d3f8      	bcc.n	8003fb8 <quorem+0x104>
 8003fc6:	6127      	str	r7, [r4, #16]
 8003fc8:	4640      	mov	r0, r8
 8003fca:	b003      	add	sp, #12
 8003fcc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003fd0:	2000      	movs	r0, #0
 8003fd2:	b003      	add	sp, #12
 8003fd4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08003fd8 <_dtoa_r>:
 8003fd8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8003fdc:	ec55 4b10 	vmov	r4, r5, d0
 8003fe0:	b09b      	sub	sp, #108	; 0x6c
 8003fe2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8003fe4:	9102      	str	r1, [sp, #8]
 8003fe6:	4681      	mov	r9, r0
 8003fe8:	9207      	str	r2, [sp, #28]
 8003fea:	9305      	str	r3, [sp, #20]
 8003fec:	e9cd 4500 	strd	r4, r5, [sp]
 8003ff0:	b156      	cbz	r6, 8004008 <_dtoa_r+0x30>
 8003ff2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8003ff4:	6072      	str	r2, [r6, #4]
 8003ff6:	2301      	movs	r3, #1
 8003ff8:	4093      	lsls	r3, r2
 8003ffa:	60b3      	str	r3, [r6, #8]
 8003ffc:	4631      	mov	r1, r6
 8003ffe:	f001 ff07 	bl	8005e10 <_Bfree>
 8004002:	2300      	movs	r3, #0
 8004004:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004008:	f1b5 0800 	subs.w	r8, r5, #0
 800400c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800400e:	bfb4      	ite	lt
 8004010:	2301      	movlt	r3, #1
 8004012:	2300      	movge	r3, #0
 8004014:	6013      	str	r3, [r2, #0]
 8004016:	4b76      	ldr	r3, [pc, #472]	; (80041f0 <_dtoa_r+0x218>)
 8004018:	bfbc      	itt	lt
 800401a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800401e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004022:	ea33 0308 	bics.w	r3, r3, r8
 8004026:	f000 80a6 	beq.w	8004176 <_dtoa_r+0x19e>
 800402a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800402e:	2200      	movs	r2, #0
 8004030:	2300      	movs	r3, #0
 8004032:	4630      	mov	r0, r6
 8004034:	4639      	mov	r1, r7
 8004036:	f7fc ffe7 	bl	8001008 <__aeabi_dcmpeq>
 800403a:	4605      	mov	r5, r0
 800403c:	b178      	cbz	r0, 800405e <_dtoa_r+0x86>
 800403e:	9a05      	ldr	r2, [sp, #20]
 8004040:	2301      	movs	r3, #1
 8004042:	6013      	str	r3, [r2, #0]
 8004044:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004046:	2b00      	cmp	r3, #0
 8004048:	f000 80c0 	beq.w	80041cc <_dtoa_r+0x1f4>
 800404c:	4b69      	ldr	r3, [pc, #420]	; (80041f4 <_dtoa_r+0x21c>)
 800404e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004050:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004054:	6013      	str	r3, [r2, #0]
 8004056:	4658      	mov	r0, fp
 8004058:	b01b      	add	sp, #108	; 0x6c
 800405a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800405e:	aa18      	add	r2, sp, #96	; 0x60
 8004060:	a919      	add	r1, sp, #100	; 0x64
 8004062:	ec47 6b10 	vmov	d0, r6, r7
 8004066:	4648      	mov	r0, r9
 8004068:	f002 f954 	bl	8006314 <__d2b>
 800406c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004070:	4682      	mov	sl, r0
 8004072:	f040 80a0 	bne.w	80041b6 <_dtoa_r+0x1de>
 8004076:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800407a:	442c      	add	r4, r5
 800407c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004080:	2b20      	cmp	r3, #32
 8004082:	f340 842c 	ble.w	80048de <_dtoa_r+0x906>
 8004086:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800408a:	fa08 f803 	lsl.w	r8, r8, r3
 800408e:	9b00      	ldr	r3, [sp, #0]
 8004090:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004094:	fa23 f000 	lsr.w	r0, r3, r0
 8004098:	ea48 0000 	orr.w	r0, r8, r0
 800409c:	f7fc fcd2 	bl	8000a44 <__aeabi_ui2d>
 80040a0:	2301      	movs	r3, #1
 80040a2:	4606      	mov	r6, r0
 80040a4:	3c01      	subs	r4, #1
 80040a6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80040aa:	930f      	str	r3, [sp, #60]	; 0x3c
 80040ac:	4630      	mov	r0, r6
 80040ae:	4639      	mov	r1, r7
 80040b0:	2200      	movs	r2, #0
 80040b2:	4b51      	ldr	r3, [pc, #324]	; (80041f8 <_dtoa_r+0x220>)
 80040b4:	f7fc fb88 	bl	80007c8 <__aeabi_dsub>
 80040b8:	a347      	add	r3, pc, #284	; (adr r3, 80041d8 <_dtoa_r+0x200>)
 80040ba:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040be:	f7fc fd3b 	bl	8000b38 <__aeabi_dmul>
 80040c2:	a347      	add	r3, pc, #284	; (adr r3, 80041e0 <_dtoa_r+0x208>)
 80040c4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040c8:	f7fc fb80 	bl	80007cc <__adddf3>
 80040cc:	4606      	mov	r6, r0
 80040ce:	4620      	mov	r0, r4
 80040d0:	460f      	mov	r7, r1
 80040d2:	f7fc fcc7 	bl	8000a64 <__aeabi_i2d>
 80040d6:	a344      	add	r3, pc, #272	; (adr r3, 80041e8 <_dtoa_r+0x210>)
 80040d8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80040dc:	f7fc fd2c 	bl	8000b38 <__aeabi_dmul>
 80040e0:	4602      	mov	r2, r0
 80040e2:	460b      	mov	r3, r1
 80040e4:	4630      	mov	r0, r6
 80040e6:	4639      	mov	r1, r7
 80040e8:	f7fc fb70 	bl	80007cc <__adddf3>
 80040ec:	4606      	mov	r6, r0
 80040ee:	460f      	mov	r7, r1
 80040f0:	f7fc ffd2 	bl	8001098 <__aeabi_d2iz>
 80040f4:	2200      	movs	r2, #0
 80040f6:	9006      	str	r0, [sp, #24]
 80040f8:	2300      	movs	r3, #0
 80040fa:	4630      	mov	r0, r6
 80040fc:	4639      	mov	r1, r7
 80040fe:	f7fc ff8d 	bl	800101c <__aeabi_dcmplt>
 8004102:	2800      	cmp	r0, #0
 8004104:	f040 8273 	bne.w	80045ee <_dtoa_r+0x616>
 8004108:	9e06      	ldr	r6, [sp, #24]
 800410a:	2e16      	cmp	r6, #22
 800410c:	f200 825d 	bhi.w	80045ca <_dtoa_r+0x5f2>
 8004110:	4b3a      	ldr	r3, [pc, #232]	; (80041fc <_dtoa_r+0x224>)
 8004112:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004116:	e9d3 0100 	ldrd	r0, r1, [r3]
 800411a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800411e:	f7fc ff9b 	bl	8001058 <__aeabi_dcmpgt>
 8004122:	2800      	cmp	r0, #0
 8004124:	f000 83d7 	beq.w	80048d6 <_dtoa_r+0x8fe>
 8004128:	1e73      	subs	r3, r6, #1
 800412a:	9306      	str	r3, [sp, #24]
 800412c:	2300      	movs	r3, #0
 800412e:	930d      	str	r3, [sp, #52]	; 0x34
 8004130:	1b2c      	subs	r4, r5, r4
 8004132:	f1b4 0801 	subs.w	r8, r4, #1
 8004136:	f100 8254 	bmi.w	80045e2 <_dtoa_r+0x60a>
 800413a:	2300      	movs	r3, #0
 800413c:	9308      	str	r3, [sp, #32]
 800413e:	9b06      	ldr	r3, [sp, #24]
 8004140:	2b00      	cmp	r3, #0
 8004142:	f2c0 8245 	blt.w	80045d0 <_dtoa_r+0x5f8>
 8004146:	4498      	add	r8, r3
 8004148:	930c      	str	r3, [sp, #48]	; 0x30
 800414a:	2300      	movs	r3, #0
 800414c:	930b      	str	r3, [sp, #44]	; 0x2c
 800414e:	9b02      	ldr	r3, [sp, #8]
 8004150:	2b09      	cmp	r3, #9
 8004152:	d85b      	bhi.n	800420c <_dtoa_r+0x234>
 8004154:	2b05      	cmp	r3, #5
 8004156:	f340 83c0 	ble.w	80048da <_dtoa_r+0x902>
 800415a:	3b04      	subs	r3, #4
 800415c:	9302      	str	r3, [sp, #8]
 800415e:	2500      	movs	r5, #0
 8004160:	9b02      	ldr	r3, [sp, #8]
 8004162:	3b02      	subs	r3, #2
 8004164:	2b03      	cmp	r3, #3
 8004166:	f200 8498 	bhi.w	8004a9a <_dtoa_r+0xac2>
 800416a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800416e:	03df      	.short	0x03df
 8004170:	03e803bf 	.word	0x03e803bf
 8004174:	04f5      	.short	0x04f5
 8004176:	9a05      	ldr	r2, [sp, #20]
 8004178:	f242 730f 	movw	r3, #9999	; 0x270f
 800417c:	6013      	str	r3, [r2, #0]
 800417e:	9b00      	ldr	r3, [sp, #0]
 8004180:	b983      	cbnz	r3, 80041a4 <_dtoa_r+0x1cc>
 8004182:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004186:	b96b      	cbnz	r3, 80041a4 <_dtoa_r+0x1cc>
 8004188:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800418a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004200 <_dtoa_r+0x228>
 800418e:	2b00      	cmp	r3, #0
 8004190:	f43f af61 	beq.w	8004056 <_dtoa_r+0x7e>
 8004194:	f10b 0308 	add.w	r3, fp, #8
 8004198:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800419a:	4658      	mov	r0, fp
 800419c:	6013      	str	r3, [r2, #0]
 800419e:	b01b      	add	sp, #108	; 0x6c
 80041a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041a4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041a6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004204 <_dtoa_r+0x22c>
 80041aa:	2b00      	cmp	r3, #0
 80041ac:	f43f af53 	beq.w	8004056 <_dtoa_r+0x7e>
 80041b0:	f10b 0303 	add.w	r3, fp, #3
 80041b4:	e7f0      	b.n	8004198 <_dtoa_r+0x1c0>
 80041b6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80041ba:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80041be:	950f      	str	r5, [sp, #60]	; 0x3c
 80041c0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80041c4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80041c8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80041ca:	e76f      	b.n	80040ac <_dtoa_r+0xd4>
 80041cc:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004208 <_dtoa_r+0x230>
 80041d0:	4658      	mov	r0, fp
 80041d2:	b01b      	add	sp, #108	; 0x6c
 80041d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041d8:	636f4361 	.word	0x636f4361
 80041dc:	3fd287a7 	.word	0x3fd287a7
 80041e0:	8b60c8b3 	.word	0x8b60c8b3
 80041e4:	3fc68a28 	.word	0x3fc68a28
 80041e8:	509f79fb 	.word	0x509f79fb
 80041ec:	3fd34413 	.word	0x3fd34413
 80041f0:	7ff00000 	.word	0x7ff00000
 80041f4:	08007009 	.word	0x08007009
 80041f8:	3ff80000 	.word	0x3ff80000
 80041fc:	08007068 	.word	0x08007068
 8004200:	0800702c 	.word	0x0800702c
 8004204:	08007038 	.word	0x08007038
 8004208:	08007008 	.word	0x08007008
 800420c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004210:	2501      	movs	r5, #1
 8004212:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004216:	2300      	movs	r3, #0
 8004218:	9302      	str	r3, [sp, #8]
 800421a:	9307      	str	r3, [sp, #28]
 800421c:	2100      	movs	r1, #0
 800421e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004222:	940e      	str	r4, [sp, #56]	; 0x38
 8004224:	4648      	mov	r0, r9
 8004226:	f001 fdcd 	bl	8005dc4 <_Balloc>
 800422a:	2c0e      	cmp	r4, #14
 800422c:	4683      	mov	fp, r0
 800422e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004232:	f200 80fb 	bhi.w	800442c <_dtoa_r+0x454>
 8004236:	2d00      	cmp	r5, #0
 8004238:	f000 80f8 	beq.w	800442c <_dtoa_r+0x454>
 800423c:	ed9d 7b00 	vldr	d7, [sp]
 8004240:	9906      	ldr	r1, [sp, #24]
 8004242:	2900      	cmp	r1, #0
 8004244:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004248:	f340 83e5 	ble.w	8004a16 <_dtoa_r+0xa3e>
 800424c:	4b9d      	ldr	r3, [pc, #628]	; (80044c4 <_dtoa_r+0x4ec>)
 800424e:	f001 020f 	and.w	r2, r1, #15
 8004252:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004256:	ed93 7b00 	vldr	d7, [r3]
 800425a:	110c      	asrs	r4, r1, #4
 800425c:	06e2      	lsls	r2, r4, #27
 800425e:	ed8d 7b00 	vstr	d7, [sp]
 8004262:	f140 849e 	bpl.w	8004ba2 <_dtoa_r+0xbca>
 8004266:	4b98      	ldr	r3, [pc, #608]	; (80044c8 <_dtoa_r+0x4f0>)
 8004268:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800426c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004270:	f7fc fd8c 	bl	8000d8c <__aeabi_ddiv>
 8004274:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004278:	f004 040f 	and.w	r4, r4, #15
 800427c:	2603      	movs	r6, #3
 800427e:	b17c      	cbz	r4, 80042a0 <_dtoa_r+0x2c8>
 8004280:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004284:	4d90      	ldr	r5, [pc, #576]	; (80044c8 <_dtoa_r+0x4f0>)
 8004286:	07e3      	lsls	r3, r4, #31
 8004288:	d504      	bpl.n	8004294 <_dtoa_r+0x2bc>
 800428a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800428e:	f7fc fc53 	bl	8000b38 <__aeabi_dmul>
 8004292:	3601      	adds	r6, #1
 8004294:	1064      	asrs	r4, r4, #1
 8004296:	f105 0508 	add.w	r5, r5, #8
 800429a:	d1f4      	bne.n	8004286 <_dtoa_r+0x2ae>
 800429c:	e9cd 0100 	strd	r0, r1, [sp]
 80042a0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042a4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80042a8:	f7fc fd70 	bl	8000d8c <__aeabi_ddiv>
 80042ac:	e9cd 0100 	strd	r0, r1, [sp]
 80042b0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80042b2:	b143      	cbz	r3, 80042c6 <_dtoa_r+0x2ee>
 80042b4:	2200      	movs	r2, #0
 80042b6:	4b85      	ldr	r3, [pc, #532]	; (80044cc <_dtoa_r+0x4f4>)
 80042b8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042bc:	f7fc feae 	bl	800101c <__aeabi_dcmplt>
 80042c0:	2800      	cmp	r0, #0
 80042c2:	f040 84ff 	bne.w	8004cc4 <_dtoa_r+0xcec>
 80042c6:	4630      	mov	r0, r6
 80042c8:	f7fc fbcc 	bl	8000a64 <__aeabi_i2d>
 80042cc:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042d0:	f7fc fc32 	bl	8000b38 <__aeabi_dmul>
 80042d4:	4b7e      	ldr	r3, [pc, #504]	; (80044d0 <_dtoa_r+0x4f8>)
 80042d6:	2200      	movs	r2, #0
 80042d8:	f7fc fa78 	bl	80007cc <__adddf3>
 80042dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80042de:	4606      	mov	r6, r0
 80042e0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80042e4:	2b00      	cmp	r3, #0
 80042e6:	f000 841c 	beq.w	8004b22 <_dtoa_r+0xb4a>
 80042ea:	9b06      	ldr	r3, [sp, #24]
 80042ec:	9316      	str	r3, [sp, #88]	; 0x58
 80042ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80042f0:	9312      	str	r3, [sp, #72]	; 0x48
 80042f2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80042f6:	f7fc fecf 	bl	8001098 <__aeabi_d2iz>
 80042fa:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80042fc:	4b71      	ldr	r3, [pc, #452]	; (80044c4 <_dtoa_r+0x4ec>)
 80042fe:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004302:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004306:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800430a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800430e:	f7fc fba9 	bl	8000a64 <__aeabi_i2d>
 8004312:	460b      	mov	r3, r1
 8004314:	4602      	mov	r2, r0
 8004316:	e9dd 0100 	ldrd	r0, r1, [sp]
 800431a:	e9cd 6700 	strd	r6, r7, [sp]
 800431e:	f7fc fa53 	bl	80007c8 <__aeabi_dsub>
 8004322:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004324:	b2ed      	uxtb	r5, r5
 8004326:	4606      	mov	r6, r0
 8004328:	460f      	mov	r7, r1
 800432a:	f10b 0401 	add.w	r4, fp, #1
 800432e:	2b00      	cmp	r3, #0
 8004330:	f000 8458 	beq.w	8004be4 <_dtoa_r+0xc0c>
 8004334:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004338:	2000      	movs	r0, #0
 800433a:	4966      	ldr	r1, [pc, #408]	; (80044d4 <_dtoa_r+0x4fc>)
 800433c:	f7fc fd26 	bl	8000d8c <__aeabi_ddiv>
 8004340:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004344:	f7fc fa40 	bl	80007c8 <__aeabi_dsub>
 8004348:	f88b 5000 	strb.w	r5, [fp]
 800434c:	4632      	mov	r2, r6
 800434e:	463b      	mov	r3, r7
 8004350:	e9cd 0100 	strd	r0, r1, [sp]
 8004354:	f7fc fe80 	bl	8001058 <__aeabi_dcmpgt>
 8004358:	2800      	cmp	r0, #0
 800435a:	f040 8502 	bne.w	8004d62 <_dtoa_r+0xd8a>
 800435e:	4632      	mov	r2, r6
 8004360:	463b      	mov	r3, r7
 8004362:	2000      	movs	r0, #0
 8004364:	4959      	ldr	r1, [pc, #356]	; (80044cc <_dtoa_r+0x4f4>)
 8004366:	f7fc fa2f 	bl	80007c8 <__aeabi_dsub>
 800436a:	4602      	mov	r2, r0
 800436c:	460b      	mov	r3, r1
 800436e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004372:	f7fc fe71 	bl	8001058 <__aeabi_dcmpgt>
 8004376:	2800      	cmp	r0, #0
 8004378:	f040 84fb 	bne.w	8004d72 <_dtoa_r+0xd9a>
 800437c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800437e:	2a01      	cmp	r2, #1
 8004380:	d050      	beq.n	8004424 <_dtoa_r+0x44c>
 8004382:	445a      	add	r2, fp
 8004384:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004388:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800438c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004390:	4692      	mov	sl, r2
 8004392:	46cb      	mov	fp, r9
 8004394:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004398:	e00c      	b.n	80043b4 <_dtoa_r+0x3dc>
 800439a:	2000      	movs	r0, #0
 800439c:	494b      	ldr	r1, [pc, #300]	; (80044cc <_dtoa_r+0x4f4>)
 800439e:	f7fc fa13 	bl	80007c8 <__aeabi_dsub>
 80043a2:	4642      	mov	r2, r8
 80043a4:	464b      	mov	r3, r9
 80043a6:	f7fc fe39 	bl	800101c <__aeabi_dcmplt>
 80043aa:	2800      	cmp	r0, #0
 80043ac:	f040 84dc 	bne.w	8004d68 <_dtoa_r+0xd90>
 80043b0:	4554      	cmp	r4, sl
 80043b2:	d030      	beq.n	8004416 <_dtoa_r+0x43e>
 80043b4:	4640      	mov	r0, r8
 80043b6:	4649      	mov	r1, r9
 80043b8:	2200      	movs	r2, #0
 80043ba:	4b47      	ldr	r3, [pc, #284]	; (80044d8 <_dtoa_r+0x500>)
 80043bc:	f7fc fbbc 	bl	8000b38 <__aeabi_dmul>
 80043c0:	2200      	movs	r2, #0
 80043c2:	4b45      	ldr	r3, [pc, #276]	; (80044d8 <_dtoa_r+0x500>)
 80043c4:	4680      	mov	r8, r0
 80043c6:	4689      	mov	r9, r1
 80043c8:	4630      	mov	r0, r6
 80043ca:	4639      	mov	r1, r7
 80043cc:	f7fc fbb4 	bl	8000b38 <__aeabi_dmul>
 80043d0:	460f      	mov	r7, r1
 80043d2:	4606      	mov	r6, r0
 80043d4:	f7fc fe60 	bl	8001098 <__aeabi_d2iz>
 80043d8:	4605      	mov	r5, r0
 80043da:	f7fc fb43 	bl	8000a64 <__aeabi_i2d>
 80043de:	4602      	mov	r2, r0
 80043e0:	460b      	mov	r3, r1
 80043e2:	4630      	mov	r0, r6
 80043e4:	4639      	mov	r1, r7
 80043e6:	f7fc f9ef 	bl	80007c8 <__aeabi_dsub>
 80043ea:	3530      	adds	r5, #48	; 0x30
 80043ec:	b2ed      	uxtb	r5, r5
 80043ee:	4642      	mov	r2, r8
 80043f0:	464b      	mov	r3, r9
 80043f2:	f804 5b01 	strb.w	r5, [r4], #1
 80043f6:	4606      	mov	r6, r0
 80043f8:	460f      	mov	r7, r1
 80043fa:	f7fc fe0f 	bl	800101c <__aeabi_dcmplt>
 80043fe:	4632      	mov	r2, r6
 8004400:	463b      	mov	r3, r7
 8004402:	2800      	cmp	r0, #0
 8004404:	d0c9      	beq.n	800439a <_dtoa_r+0x3c2>
 8004406:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004408:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800440c:	9306      	str	r3, [sp, #24]
 800440e:	46d9      	mov	r9, fp
 8004410:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004414:	e236      	b.n	8004884 <_dtoa_r+0x8ac>
 8004416:	46d9      	mov	r9, fp
 8004418:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800441c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004420:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004424:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004428:	e9cd 3400 	strd	r3, r4, [sp]
 800442c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800442e:	2b00      	cmp	r3, #0
 8004430:	f2c0 80ae 	blt.w	8004590 <_dtoa_r+0x5b8>
 8004434:	9a06      	ldr	r2, [sp, #24]
 8004436:	2a0e      	cmp	r2, #14
 8004438:	f300 80aa 	bgt.w	8004590 <_dtoa_r+0x5b8>
 800443c:	4b21      	ldr	r3, [pc, #132]	; (80044c4 <_dtoa_r+0x4ec>)
 800443e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004442:	ed93 7b00 	vldr	d7, [r3]
 8004446:	9b07      	ldr	r3, [sp, #28]
 8004448:	2b00      	cmp	r3, #0
 800444a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800444e:	f2c0 82be 	blt.w	80049ce <_dtoa_r+0x9f6>
 8004452:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004456:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800445a:	4630      	mov	r0, r6
 800445c:	4639      	mov	r1, r7
 800445e:	f7fc fc95 	bl	8000d8c <__aeabi_ddiv>
 8004462:	f7fc fe19 	bl	8001098 <__aeabi_d2iz>
 8004466:	4605      	mov	r5, r0
 8004468:	f7fc fafc 	bl	8000a64 <__aeabi_i2d>
 800446c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004470:	f7fc fb62 	bl	8000b38 <__aeabi_dmul>
 8004474:	460b      	mov	r3, r1
 8004476:	4602      	mov	r2, r0
 8004478:	4639      	mov	r1, r7
 800447a:	4630      	mov	r0, r6
 800447c:	f7fc f9a4 	bl	80007c8 <__aeabi_dsub>
 8004480:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004484:	f88b 3000 	strb.w	r3, [fp]
 8004488:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800448a:	2b01      	cmp	r3, #1
 800448c:	4606      	mov	r6, r0
 800448e:	460f      	mov	r7, r1
 8004490:	f10b 0401 	add.w	r4, fp, #1
 8004494:	d053      	beq.n	800453e <_dtoa_r+0x566>
 8004496:	2200      	movs	r2, #0
 8004498:	4b0f      	ldr	r3, [pc, #60]	; (80044d8 <_dtoa_r+0x500>)
 800449a:	f7fc fb4d 	bl	8000b38 <__aeabi_dmul>
 800449e:	2200      	movs	r2, #0
 80044a0:	2300      	movs	r3, #0
 80044a2:	4606      	mov	r6, r0
 80044a4:	460f      	mov	r7, r1
 80044a6:	f7fc fdaf 	bl	8001008 <__aeabi_dcmpeq>
 80044aa:	2800      	cmp	r0, #0
 80044ac:	f040 81ea 	bne.w	8004884 <_dtoa_r+0x8ac>
 80044b0:	f8cd a000 	str.w	sl, [sp]
 80044b4:	f8cd 901c 	str.w	r9, [sp, #28]
 80044b8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80044bc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80044c0:	e017      	b.n	80044f2 <_dtoa_r+0x51a>
 80044c2:	bf00      	nop
 80044c4:	08007068 	.word	0x08007068
 80044c8:	08007040 	.word	0x08007040
 80044cc:	3ff00000 	.word	0x3ff00000
 80044d0:	401c0000 	.word	0x401c0000
 80044d4:	3fe00000 	.word	0x3fe00000
 80044d8:	40240000 	.word	0x40240000
 80044dc:	f7fc fb2c 	bl	8000b38 <__aeabi_dmul>
 80044e0:	2200      	movs	r2, #0
 80044e2:	2300      	movs	r3, #0
 80044e4:	4606      	mov	r6, r0
 80044e6:	460f      	mov	r7, r1
 80044e8:	f7fc fd8e 	bl	8001008 <__aeabi_dcmpeq>
 80044ec:	2800      	cmp	r0, #0
 80044ee:	f040 833d 	bne.w	8004b6c <_dtoa_r+0xb94>
 80044f2:	464a      	mov	r2, r9
 80044f4:	4653      	mov	r3, sl
 80044f6:	4630      	mov	r0, r6
 80044f8:	4639      	mov	r1, r7
 80044fa:	f7fc fc47 	bl	8000d8c <__aeabi_ddiv>
 80044fe:	f7fc fdcb 	bl	8001098 <__aeabi_d2iz>
 8004502:	4605      	mov	r5, r0
 8004504:	f7fc faae 	bl	8000a64 <__aeabi_i2d>
 8004508:	464a      	mov	r2, r9
 800450a:	4653      	mov	r3, sl
 800450c:	f7fc fb14 	bl	8000b38 <__aeabi_dmul>
 8004510:	4602      	mov	r2, r0
 8004512:	460b      	mov	r3, r1
 8004514:	4630      	mov	r0, r6
 8004516:	4639      	mov	r1, r7
 8004518:	f7fc f956 	bl	80007c8 <__aeabi_dsub>
 800451c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004520:	f804 cb01 	strb.w	ip, [r4], #1
 8004524:	eba4 0c0b 	sub.w	ip, r4, fp
 8004528:	45e0      	cmp	r8, ip
 800452a:	4606      	mov	r6, r0
 800452c:	460f      	mov	r7, r1
 800452e:	f04f 0200 	mov.w	r2, #0
 8004532:	4bc1      	ldr	r3, [pc, #772]	; (8004838 <_dtoa_r+0x860>)
 8004534:	d1d2      	bne.n	80044dc <_dtoa_r+0x504>
 8004536:	f8dd a000 	ldr.w	sl, [sp]
 800453a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800453e:	4632      	mov	r2, r6
 8004540:	463b      	mov	r3, r7
 8004542:	4630      	mov	r0, r6
 8004544:	4639      	mov	r1, r7
 8004546:	f7fc f941 	bl	80007cc <__adddf3>
 800454a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800454e:	4606      	mov	r6, r0
 8004550:	460f      	mov	r7, r1
 8004552:	f7fc fd81 	bl	8001058 <__aeabi_dcmpgt>
 8004556:	b958      	cbnz	r0, 8004570 <_dtoa_r+0x598>
 8004558:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800455c:	4630      	mov	r0, r6
 800455e:	4639      	mov	r1, r7
 8004560:	f7fc fd52 	bl	8001008 <__aeabi_dcmpeq>
 8004564:	2800      	cmp	r0, #0
 8004566:	f000 818d 	beq.w	8004884 <_dtoa_r+0x8ac>
 800456a:	07e9      	lsls	r1, r5, #31
 800456c:	f140 818a 	bpl.w	8004884 <_dtoa_r+0x8ac>
 8004570:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004574:	e005      	b.n	8004582 <_dtoa_r+0x5aa>
 8004576:	459b      	cmp	fp, r3
 8004578:	f000 8373 	beq.w	8004c62 <_dtoa_r+0xc8a>
 800457c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004580:	461c      	mov	r4, r3
 8004582:	2d39      	cmp	r5, #57	; 0x39
 8004584:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004588:	d0f5      	beq.n	8004576 <_dtoa_r+0x59e>
 800458a:	3501      	adds	r5, #1
 800458c:	701d      	strb	r5, [r3, #0]
 800458e:	e179      	b.n	8004884 <_dtoa_r+0x8ac>
 8004590:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004592:	2a00      	cmp	r2, #0
 8004594:	d03b      	beq.n	800460e <_dtoa_r+0x636>
 8004596:	9a02      	ldr	r2, [sp, #8]
 8004598:	2a01      	cmp	r2, #1
 800459a:	f340 820b 	ble.w	80049b4 <_dtoa_r+0x9dc>
 800459e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045a0:	1e5f      	subs	r7, r3, #1
 80045a2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80045a4:	42bb      	cmp	r3, r7
 80045a6:	f2c0 82e6 	blt.w	8004b76 <_dtoa_r+0xb9e>
 80045aa:	1bdf      	subs	r7, r3, r7
 80045ac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80045ae:	2b00      	cmp	r3, #0
 80045b0:	f2c0 830b 	blt.w	8004bca <_dtoa_r+0xbf2>
 80045b4:	9a08      	ldr	r2, [sp, #32]
 80045b6:	4614      	mov	r4, r2
 80045b8:	441a      	add	r2, r3
 80045ba:	4498      	add	r8, r3
 80045bc:	9208      	str	r2, [sp, #32]
 80045be:	2101      	movs	r1, #1
 80045c0:	4648      	mov	r0, r9
 80045c2:	f001 fcbf 	bl	8005f44 <__i2b>
 80045c6:	4605      	mov	r5, r0
 80045c8:	e024      	b.n	8004614 <_dtoa_r+0x63c>
 80045ca:	2301      	movs	r3, #1
 80045cc:	930d      	str	r3, [sp, #52]	; 0x34
 80045ce:	e5af      	b.n	8004130 <_dtoa_r+0x158>
 80045d0:	9a08      	ldr	r2, [sp, #32]
 80045d2:	9b06      	ldr	r3, [sp, #24]
 80045d4:	1ad2      	subs	r2, r2, r3
 80045d6:	425b      	negs	r3, r3
 80045d8:	930b      	str	r3, [sp, #44]	; 0x2c
 80045da:	2300      	movs	r3, #0
 80045dc:	9208      	str	r2, [sp, #32]
 80045de:	930c      	str	r3, [sp, #48]	; 0x30
 80045e0:	e5b5      	b.n	800414e <_dtoa_r+0x176>
 80045e2:	f1c4 0301 	rsb	r3, r4, #1
 80045e6:	9308      	str	r3, [sp, #32]
 80045e8:	f04f 0800 	mov.w	r8, #0
 80045ec:	e5a7      	b.n	800413e <_dtoa_r+0x166>
 80045ee:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80045f2:	4640      	mov	r0, r8
 80045f4:	f7fc fa36 	bl	8000a64 <__aeabi_i2d>
 80045f8:	4632      	mov	r2, r6
 80045fa:	463b      	mov	r3, r7
 80045fc:	f7fc fd04 	bl	8001008 <__aeabi_dcmpeq>
 8004600:	2800      	cmp	r0, #0
 8004602:	f47f ad81 	bne.w	8004108 <_dtoa_r+0x130>
 8004606:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800460a:	9306      	str	r3, [sp, #24]
 800460c:	e57c      	b.n	8004108 <_dtoa_r+0x130>
 800460e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004610:	9c08      	ldr	r4, [sp, #32]
 8004612:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004614:	2c00      	cmp	r4, #0
 8004616:	dd0c      	ble.n	8004632 <_dtoa_r+0x65a>
 8004618:	f1b8 0f00 	cmp.w	r8, #0
 800461c:	dd09      	ble.n	8004632 <_dtoa_r+0x65a>
 800461e:	4544      	cmp	r4, r8
 8004620:	9a08      	ldr	r2, [sp, #32]
 8004622:	4623      	mov	r3, r4
 8004624:	bfa8      	it	ge
 8004626:	4643      	movge	r3, r8
 8004628:	1ad2      	subs	r2, r2, r3
 800462a:	9208      	str	r2, [sp, #32]
 800462c:	1ae4      	subs	r4, r4, r3
 800462e:	eba8 0803 	sub.w	r8, r8, r3
 8004632:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004634:	b16b      	cbz	r3, 8004652 <_dtoa_r+0x67a>
 8004636:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004638:	2a00      	cmp	r2, #0
 800463a:	f000 8290 	beq.w	8004b5e <_dtoa_r+0xb86>
 800463e:	1bde      	subs	r6, r3, r7
 8004640:	2f00      	cmp	r7, #0
 8004642:	f040 819b 	bne.w	800497c <_dtoa_r+0x9a4>
 8004646:	4651      	mov	r1, sl
 8004648:	4632      	mov	r2, r6
 800464a:	4648      	mov	r0, r9
 800464c:	f001 fd2a 	bl	80060a4 <__pow5mult>
 8004650:	4682      	mov	sl, r0
 8004652:	2101      	movs	r1, #1
 8004654:	4648      	mov	r0, r9
 8004656:	f001 fc75 	bl	8005f44 <__i2b>
 800465a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800465c:	4606      	mov	r6, r0
 800465e:	2a00      	cmp	r2, #0
 8004660:	f040 8125 	bne.w	80048ae <_dtoa_r+0x8d6>
 8004664:	9b02      	ldr	r3, [sp, #8]
 8004666:	2b01      	cmp	r3, #1
 8004668:	f340 816c 	ble.w	8004944 <_dtoa_r+0x96c>
 800466c:	2001      	movs	r0, #1
 800466e:	4440      	add	r0, r8
 8004670:	f010 001f 	ands.w	r0, r0, #31
 8004674:	f000 8119 	beq.w	80048aa <_dtoa_r+0x8d2>
 8004678:	f1c0 0320 	rsb	r3, r0, #32
 800467c:	2b04      	cmp	r3, #4
 800467e:	f340 83ac 	ble.w	8004dda <_dtoa_r+0xe02>
 8004682:	f1c0 001c 	rsb	r0, r0, #28
 8004686:	9b08      	ldr	r3, [sp, #32]
 8004688:	4403      	add	r3, r0
 800468a:	9308      	str	r3, [sp, #32]
 800468c:	4404      	add	r4, r0
 800468e:	4480      	add	r8, r0
 8004690:	9b08      	ldr	r3, [sp, #32]
 8004692:	2b00      	cmp	r3, #0
 8004694:	dd05      	ble.n	80046a2 <_dtoa_r+0x6ca>
 8004696:	4651      	mov	r1, sl
 8004698:	461a      	mov	r2, r3
 800469a:	4648      	mov	r0, r9
 800469c:	f001 fd52 	bl	8006144 <__lshift>
 80046a0:	4682      	mov	sl, r0
 80046a2:	f1b8 0f00 	cmp.w	r8, #0
 80046a6:	dd05      	ble.n	80046b4 <_dtoa_r+0x6dc>
 80046a8:	4631      	mov	r1, r6
 80046aa:	4642      	mov	r2, r8
 80046ac:	4648      	mov	r0, r9
 80046ae:	f001 fd49 	bl	8006144 <__lshift>
 80046b2:	4606      	mov	r6, r0
 80046b4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80046b6:	2b00      	cmp	r3, #0
 80046b8:	d177      	bne.n	80047aa <_dtoa_r+0x7d2>
 80046ba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046bc:	2b00      	cmp	r3, #0
 80046be:	f340 8209 	ble.w	8004ad4 <_dtoa_r+0xafc>
 80046c2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80046c4:	2b00      	cmp	r3, #0
 80046c6:	f000 8089 	beq.w	80047dc <_dtoa_r+0x804>
 80046ca:	2c00      	cmp	r4, #0
 80046cc:	f300 816b 	bgt.w	80049a6 <_dtoa_r+0x9ce>
 80046d0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80046d2:	2b00      	cmp	r3, #0
 80046d4:	f040 81cd 	bne.w	8004a72 <_dtoa_r+0xa9a>
 80046d8:	46a8      	mov	r8, r5
 80046da:	9a00      	ldr	r2, [sp, #0]
 80046dc:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80046e0:	f002 0201 	and.w	r2, r2, #1
 80046e4:	920a      	str	r2, [sp, #40]	; 0x28
 80046e6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80046e8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80046ec:	441a      	add	r2, r3
 80046ee:	465f      	mov	r7, fp
 80046f0:	9209      	str	r2, [sp, #36]	; 0x24
 80046f2:	46b3      	mov	fp, r6
 80046f4:	4659      	mov	r1, fp
 80046f6:	4650      	mov	r0, sl
 80046f8:	f7ff fbdc 	bl	8003eb4 <quorem>
 80046fc:	4629      	mov	r1, r5
 80046fe:	4604      	mov	r4, r0
 8004700:	4650      	mov	r0, sl
 8004702:	f001 fd75 	bl	80061f0 <__mcmp>
 8004706:	4659      	mov	r1, fp
 8004708:	4606      	mov	r6, r0
 800470a:	4642      	mov	r2, r8
 800470c:	4648      	mov	r0, r9
 800470e:	f001 fd8b 	bl	8006228 <__mdiff>
 8004712:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004716:	9300      	str	r3, [sp, #0]
 8004718:	68c3      	ldr	r3, [r0, #12]
 800471a:	4601      	mov	r1, r0
 800471c:	2b00      	cmp	r3, #0
 800471e:	f040 81d4 	bne.w	8004aca <_dtoa_r+0xaf2>
 8004722:	9008      	str	r0, [sp, #32]
 8004724:	4650      	mov	r0, sl
 8004726:	f001 fd63 	bl	80061f0 <__mcmp>
 800472a:	9a08      	ldr	r2, [sp, #32]
 800472c:	9007      	str	r0, [sp, #28]
 800472e:	4611      	mov	r1, r2
 8004730:	4648      	mov	r0, r9
 8004732:	f001 fb6d 	bl	8005e10 <_Bfree>
 8004736:	9b07      	ldr	r3, [sp, #28]
 8004738:	b933      	cbnz	r3, 8004748 <_dtoa_r+0x770>
 800473a:	9a02      	ldr	r2, [sp, #8]
 800473c:	b922      	cbnz	r2, 8004748 <_dtoa_r+0x770>
 800473e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004740:	2b00      	cmp	r3, #0
 8004742:	f000 8319 	beq.w	8004d78 <_dtoa_r+0xda0>
 8004746:	9b02      	ldr	r3, [sp, #8]
 8004748:	2e00      	cmp	r6, #0
 800474a:	f2c0 821c 	blt.w	8004b86 <_dtoa_r+0xbae>
 800474e:	d105      	bne.n	800475c <_dtoa_r+0x784>
 8004750:	9a02      	ldr	r2, [sp, #8]
 8004752:	b91a      	cbnz	r2, 800475c <_dtoa_r+0x784>
 8004754:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004756:	2a00      	cmp	r2, #0
 8004758:	f000 8215 	beq.w	8004b86 <_dtoa_r+0xbae>
 800475c:	2b00      	cmp	r3, #0
 800475e:	f107 0401 	add.w	r4, r7, #1
 8004762:	f300 8225 	bgt.w	8004bb0 <_dtoa_r+0xbd8>
 8004766:	9b00      	ldr	r3, [sp, #0]
 8004768:	703b      	strb	r3, [r7, #0]
 800476a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800476c:	42bb      	cmp	r3, r7
 800476e:	f000 8230 	beq.w	8004bd2 <_dtoa_r+0xbfa>
 8004772:	4651      	mov	r1, sl
 8004774:	2300      	movs	r3, #0
 8004776:	220a      	movs	r2, #10
 8004778:	4648      	mov	r0, r9
 800477a:	f001 fb53 	bl	8005e24 <__multadd>
 800477e:	4545      	cmp	r5, r8
 8004780:	4682      	mov	sl, r0
 8004782:	4629      	mov	r1, r5
 8004784:	f04f 0300 	mov.w	r3, #0
 8004788:	f04f 020a 	mov.w	r2, #10
 800478c:	4648      	mov	r0, r9
 800478e:	f000 8196 	beq.w	8004abe <_dtoa_r+0xae6>
 8004792:	f001 fb47 	bl	8005e24 <__multadd>
 8004796:	4641      	mov	r1, r8
 8004798:	4605      	mov	r5, r0
 800479a:	2300      	movs	r3, #0
 800479c:	220a      	movs	r2, #10
 800479e:	4648      	mov	r0, r9
 80047a0:	f001 fb40 	bl	8005e24 <__multadd>
 80047a4:	4627      	mov	r7, r4
 80047a6:	4680      	mov	r8, r0
 80047a8:	e7a4      	b.n	80046f4 <_dtoa_r+0x71c>
 80047aa:	4631      	mov	r1, r6
 80047ac:	4650      	mov	r0, sl
 80047ae:	f001 fd1f 	bl	80061f0 <__mcmp>
 80047b2:	2800      	cmp	r0, #0
 80047b4:	da81      	bge.n	80046ba <_dtoa_r+0x6e2>
 80047b6:	9f06      	ldr	r7, [sp, #24]
 80047b8:	4651      	mov	r1, sl
 80047ba:	2300      	movs	r3, #0
 80047bc:	220a      	movs	r2, #10
 80047be:	4648      	mov	r0, r9
 80047c0:	3f01      	subs	r7, #1
 80047c2:	9706      	str	r7, [sp, #24]
 80047c4:	f001 fb2e 	bl	8005e24 <__multadd>
 80047c8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80047ca:	4682      	mov	sl, r0
 80047cc:	2b00      	cmp	r3, #0
 80047ce:	f040 82eb 	bne.w	8004da8 <_dtoa_r+0xdd0>
 80047d2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80047d4:	2b00      	cmp	r3, #0
 80047d6:	f340 82f3 	ble.w	8004dc0 <_dtoa_r+0xde8>
 80047da:	9309      	str	r3, [sp, #36]	; 0x24
 80047dc:	465c      	mov	r4, fp
 80047de:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80047e2:	e002      	b.n	80047ea <_dtoa_r+0x812>
 80047e4:	f001 fb1e 	bl	8005e24 <__multadd>
 80047e8:	4682      	mov	sl, r0
 80047ea:	4631      	mov	r1, r6
 80047ec:	4650      	mov	r0, sl
 80047ee:	f7ff fb61 	bl	8003eb4 <quorem>
 80047f2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80047f6:	f804 7b01 	strb.w	r7, [r4], #1
 80047fa:	eba4 030b 	sub.w	r3, r4, fp
 80047fe:	4598      	cmp	r8, r3
 8004800:	f04f 020a 	mov.w	r2, #10
 8004804:	f04f 0300 	mov.w	r3, #0
 8004808:	4651      	mov	r1, sl
 800480a:	4648      	mov	r0, r9
 800480c:	dcea      	bgt.n	80047e4 <_dtoa_r+0x80c>
 800480e:	2300      	movs	r3, #0
 8004810:	9700      	str	r7, [sp, #0]
 8004812:	9302      	str	r3, [sp, #8]
 8004814:	4651      	mov	r1, sl
 8004816:	2201      	movs	r2, #1
 8004818:	4648      	mov	r0, r9
 800481a:	f001 fc93 	bl	8006144 <__lshift>
 800481e:	4631      	mov	r1, r6
 8004820:	4682      	mov	sl, r0
 8004822:	f001 fce5 	bl	80061f0 <__mcmp>
 8004826:	2800      	cmp	r0, #0
 8004828:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800482c:	dc14      	bgt.n	8004858 <_dtoa_r+0x880>
 800482e:	d108      	bne.n	8004842 <_dtoa_r+0x86a>
 8004830:	9b00      	ldr	r3, [sp, #0]
 8004832:	07db      	lsls	r3, r3, #31
 8004834:	d410      	bmi.n	8004858 <_dtoa_r+0x880>
 8004836:	e004      	b.n	8004842 <_dtoa_r+0x86a>
 8004838:	40240000 	.word	0x40240000
 800483c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004840:	461c      	mov	r4, r3
 8004842:	2a30      	cmp	r2, #48	; 0x30
 8004844:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004848:	d0f8      	beq.n	800483c <_dtoa_r+0x864>
 800484a:	e00b      	b.n	8004864 <_dtoa_r+0x88c>
 800484c:	459b      	cmp	fp, r3
 800484e:	f000 814e 	beq.w	8004aee <_dtoa_r+0xb16>
 8004852:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004856:	461c      	mov	r4, r3
 8004858:	2a39      	cmp	r2, #57	; 0x39
 800485a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 800485e:	d0f5      	beq.n	800484c <_dtoa_r+0x874>
 8004860:	3201      	adds	r2, #1
 8004862:	701a      	strb	r2, [r3, #0]
 8004864:	4631      	mov	r1, r6
 8004866:	4648      	mov	r0, r9
 8004868:	f001 fad2 	bl	8005e10 <_Bfree>
 800486c:	b155      	cbz	r5, 8004884 <_dtoa_r+0x8ac>
 800486e:	9902      	ldr	r1, [sp, #8]
 8004870:	b121      	cbz	r1, 800487c <_dtoa_r+0x8a4>
 8004872:	42a9      	cmp	r1, r5
 8004874:	d002      	beq.n	800487c <_dtoa_r+0x8a4>
 8004876:	4648      	mov	r0, r9
 8004878:	f001 faca 	bl	8005e10 <_Bfree>
 800487c:	4629      	mov	r1, r5
 800487e:	4648      	mov	r0, r9
 8004880:	f001 fac6 	bl	8005e10 <_Bfree>
 8004884:	4651      	mov	r1, sl
 8004886:	4648      	mov	r0, r9
 8004888:	f001 fac2 	bl	8005e10 <_Bfree>
 800488c:	2200      	movs	r2, #0
 800488e:	9b06      	ldr	r3, [sp, #24]
 8004890:	7022      	strb	r2, [r4, #0]
 8004892:	9a05      	ldr	r2, [sp, #20]
 8004894:	3301      	adds	r3, #1
 8004896:	6013      	str	r3, [r2, #0]
 8004898:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800489a:	2b00      	cmp	r3, #0
 800489c:	f43f abdb 	beq.w	8004056 <_dtoa_r+0x7e>
 80048a0:	4658      	mov	r0, fp
 80048a2:	601c      	str	r4, [r3, #0]
 80048a4:	b01b      	add	sp, #108	; 0x6c
 80048a6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80048aa:	201c      	movs	r0, #28
 80048ac:	e6eb      	b.n	8004686 <_dtoa_r+0x6ae>
 80048ae:	4601      	mov	r1, r0
 80048b0:	4648      	mov	r0, r9
 80048b2:	f001 fbf7 	bl	80060a4 <__pow5mult>
 80048b6:	9b02      	ldr	r3, [sp, #8]
 80048b8:	2b01      	cmp	r3, #1
 80048ba:	4606      	mov	r6, r0
 80048bc:	f340 80d4 	ble.w	8004a68 <_dtoa_r+0xa90>
 80048c0:	2300      	movs	r3, #0
 80048c2:	930c      	str	r3, [sp, #48]	; 0x30
 80048c4:	6933      	ldr	r3, [r6, #16]
 80048c6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 80048ca:	6918      	ldr	r0, [r3, #16]
 80048cc:	f001 faea 	bl	8005ea4 <__hi0bits>
 80048d0:	f1c0 0020 	rsb	r0, r0, #32
 80048d4:	e6cb      	b.n	800466e <_dtoa_r+0x696>
 80048d6:	900d      	str	r0, [sp, #52]	; 0x34
 80048d8:	e42a      	b.n	8004130 <_dtoa_r+0x158>
 80048da:	2501      	movs	r5, #1
 80048dc:	e440      	b.n	8004160 <_dtoa_r+0x188>
 80048de:	f1c3 0820 	rsb	r8, r3, #32
 80048e2:	9b00      	ldr	r3, [sp, #0]
 80048e4:	fa03 f008 	lsl.w	r0, r3, r8
 80048e8:	f7ff bbd8 	b.w	800409c <_dtoa_r+0xc4>
 80048ec:	2300      	movs	r3, #0
 80048ee:	930a      	str	r3, [sp, #40]	; 0x28
 80048f0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 80048f4:	4413      	add	r3, r2
 80048f6:	930e      	str	r3, [sp, #56]	; 0x38
 80048f8:	3301      	adds	r3, #1
 80048fa:	2b01      	cmp	r3, #1
 80048fc:	461e      	mov	r6, r3
 80048fe:	9309      	str	r3, [sp, #36]	; 0x24
 8004900:	bfb8      	it	lt
 8004902:	2601      	movlt	r6, #1
 8004904:	2100      	movs	r1, #0
 8004906:	2e17      	cmp	r6, #23
 8004908:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800490c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800490e:	f77f ac89 	ble.w	8004224 <_dtoa_r+0x24c>
 8004912:	2201      	movs	r2, #1
 8004914:	2304      	movs	r3, #4
 8004916:	005b      	lsls	r3, r3, #1
 8004918:	f103 0014 	add.w	r0, r3, #20
 800491c:	42b0      	cmp	r0, r6
 800491e:	4611      	mov	r1, r2
 8004920:	f102 0201 	add.w	r2, r2, #1
 8004924:	d9f7      	bls.n	8004916 <_dtoa_r+0x93e>
 8004926:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800492a:	e47b      	b.n	8004224 <_dtoa_r+0x24c>
 800492c:	2300      	movs	r3, #0
 800492e:	930a      	str	r3, [sp, #40]	; 0x28
 8004930:	9e07      	ldr	r6, [sp, #28]
 8004932:	2e00      	cmp	r6, #0
 8004934:	f340 80e2 	ble.w	8004afc <_dtoa_r+0xb24>
 8004938:	960e      	str	r6, [sp, #56]	; 0x38
 800493a:	9609      	str	r6, [sp, #36]	; 0x24
 800493c:	e7e2      	b.n	8004904 <_dtoa_r+0x92c>
 800493e:	2301      	movs	r3, #1
 8004940:	930a      	str	r3, [sp, #40]	; 0x28
 8004942:	e7f5      	b.n	8004930 <_dtoa_r+0x958>
 8004944:	9b00      	ldr	r3, [sp, #0]
 8004946:	2b00      	cmp	r3, #0
 8004948:	f47f ae90 	bne.w	800466c <_dtoa_r+0x694>
 800494c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004950:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004954:	2b00      	cmp	r3, #0
 8004956:	f040 8192 	bne.w	8004c7e <_dtoa_r+0xca6>
 800495a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800495e:	0d1b      	lsrs	r3, r3, #20
 8004960:	051b      	lsls	r3, r3, #20
 8004962:	b12b      	cbz	r3, 8004970 <_dtoa_r+0x998>
 8004964:	9b08      	ldr	r3, [sp, #32]
 8004966:	3301      	adds	r3, #1
 8004968:	9308      	str	r3, [sp, #32]
 800496a:	f108 0801 	add.w	r8, r8, #1
 800496e:	2301      	movs	r3, #1
 8004970:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004972:	930c      	str	r3, [sp, #48]	; 0x30
 8004974:	2a00      	cmp	r2, #0
 8004976:	f43f ae79 	beq.w	800466c <_dtoa_r+0x694>
 800497a:	e7a3      	b.n	80048c4 <_dtoa_r+0x8ec>
 800497c:	463a      	mov	r2, r7
 800497e:	4629      	mov	r1, r5
 8004980:	4648      	mov	r0, r9
 8004982:	f001 fb8f 	bl	80060a4 <__pow5mult>
 8004986:	4652      	mov	r2, sl
 8004988:	4601      	mov	r1, r0
 800498a:	4605      	mov	r5, r0
 800498c:	4648      	mov	r0, r9
 800498e:	f001 fae3 	bl	8005f58 <__multiply>
 8004992:	4651      	mov	r1, sl
 8004994:	4607      	mov	r7, r0
 8004996:	4648      	mov	r0, r9
 8004998:	f001 fa3a 	bl	8005e10 <_Bfree>
 800499c:	46ba      	mov	sl, r7
 800499e:	2e00      	cmp	r6, #0
 80049a0:	f43f ae57 	beq.w	8004652 <_dtoa_r+0x67a>
 80049a4:	e64f      	b.n	8004646 <_dtoa_r+0x66e>
 80049a6:	4629      	mov	r1, r5
 80049a8:	4622      	mov	r2, r4
 80049aa:	4648      	mov	r0, r9
 80049ac:	f001 fbca 	bl	8006144 <__lshift>
 80049b0:	4605      	mov	r5, r0
 80049b2:	e68d      	b.n	80046d0 <_dtoa_r+0x6f8>
 80049b4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80049b6:	2a00      	cmp	r2, #0
 80049b8:	f000 815d 	beq.w	8004c76 <_dtoa_r+0xc9e>
 80049bc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 80049c0:	9a08      	ldr	r2, [sp, #32]
 80049c2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80049c4:	4614      	mov	r4, r2
 80049c6:	441a      	add	r2, r3
 80049c8:	4498      	add	r8, r3
 80049ca:	9208      	str	r2, [sp, #32]
 80049cc:	e5f7      	b.n	80045be <_dtoa_r+0x5e6>
 80049ce:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049d0:	2b00      	cmp	r3, #0
 80049d2:	f73f ad3e 	bgt.w	8004452 <_dtoa_r+0x47a>
 80049d6:	f040 80bc 	bne.w	8004b52 <_dtoa_r+0xb7a>
 80049da:	ec51 0b17 	vmov	r0, r1, d7
 80049de:	2200      	movs	r2, #0
 80049e0:	4bb2      	ldr	r3, [pc, #712]	; (8004cac <_dtoa_r+0xcd4>)
 80049e2:	f7fc f8a9 	bl	8000b38 <__aeabi_dmul>
 80049e6:	e9dd 2300 	ldrd	r2, r3, [sp]
 80049ea:	f7fc fb2b 	bl	8001044 <__aeabi_dcmpge>
 80049ee:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80049f0:	4635      	mov	r5, r6
 80049f2:	2800      	cmp	r0, #0
 80049f4:	d176      	bne.n	8004ae4 <_dtoa_r+0xb0c>
 80049f6:	9a06      	ldr	r2, [sp, #24]
 80049f8:	2331      	movs	r3, #49	; 0x31
 80049fa:	3201      	adds	r2, #1
 80049fc:	9206      	str	r2, [sp, #24]
 80049fe:	f88b 3000 	strb.w	r3, [fp]
 8004a02:	f10b 0401 	add.w	r4, fp, #1
 8004a06:	4631      	mov	r1, r6
 8004a08:	4648      	mov	r0, r9
 8004a0a:	f001 fa01 	bl	8005e10 <_Bfree>
 8004a0e:	2d00      	cmp	r5, #0
 8004a10:	f47f af34 	bne.w	800487c <_dtoa_r+0x8a4>
 8004a14:	e736      	b.n	8004884 <_dtoa_r+0x8ac>
 8004a16:	f000 8142 	beq.w	8004c9e <_dtoa_r+0xcc6>
 8004a1a:	9b06      	ldr	r3, [sp, #24]
 8004a1c:	425c      	negs	r4, r3
 8004a1e:	4ba4      	ldr	r3, [pc, #656]	; (8004cb0 <_dtoa_r+0xcd8>)
 8004a20:	f004 020f 	and.w	r2, r4, #15
 8004a24:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004a28:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004a2c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004a30:	f7fc f882 	bl	8000b38 <__aeabi_dmul>
 8004a34:	1124      	asrs	r4, r4, #4
 8004a36:	e9cd 0100 	strd	r0, r1, [sp]
 8004a3a:	f000 81c6 	beq.w	8004dca <_dtoa_r+0xdf2>
 8004a3e:	4d9d      	ldr	r5, [pc, #628]	; (8004cb4 <_dtoa_r+0xcdc>)
 8004a40:	2300      	movs	r3, #0
 8004a42:	2602      	movs	r6, #2
 8004a44:	07e7      	lsls	r7, r4, #31
 8004a46:	d505      	bpl.n	8004a54 <_dtoa_r+0xa7c>
 8004a48:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004a4c:	f7fc f874 	bl	8000b38 <__aeabi_dmul>
 8004a50:	3601      	adds	r6, #1
 8004a52:	2301      	movs	r3, #1
 8004a54:	1064      	asrs	r4, r4, #1
 8004a56:	f105 0508 	add.w	r5, r5, #8
 8004a5a:	d1f3      	bne.n	8004a44 <_dtoa_r+0xa6c>
 8004a5c:	2b00      	cmp	r3, #0
 8004a5e:	f43f ac27 	beq.w	80042b0 <_dtoa_r+0x2d8>
 8004a62:	e9cd 0100 	strd	r0, r1, [sp]
 8004a66:	e423      	b.n	80042b0 <_dtoa_r+0x2d8>
 8004a68:	9b00      	ldr	r3, [sp, #0]
 8004a6a:	2b00      	cmp	r3, #0
 8004a6c:	f43f af6e 	beq.w	800494c <_dtoa_r+0x974>
 8004a70:	e726      	b.n	80048c0 <_dtoa_r+0x8e8>
 8004a72:	6869      	ldr	r1, [r5, #4]
 8004a74:	4648      	mov	r0, r9
 8004a76:	f001 f9a5 	bl	8005dc4 <_Balloc>
 8004a7a:	692b      	ldr	r3, [r5, #16]
 8004a7c:	3302      	adds	r3, #2
 8004a7e:	009a      	lsls	r2, r3, #2
 8004a80:	4604      	mov	r4, r0
 8004a82:	f105 010c 	add.w	r1, r5, #12
 8004a86:	300c      	adds	r0, #12
 8004a88:	f7fb fd3a 	bl	8000500 <memcpy>
 8004a8c:	4621      	mov	r1, r4
 8004a8e:	2201      	movs	r2, #1
 8004a90:	4648      	mov	r0, r9
 8004a92:	f001 fb57 	bl	8006144 <__lshift>
 8004a96:	4680      	mov	r8, r0
 8004a98:	e61f      	b.n	80046da <_dtoa_r+0x702>
 8004a9a:	2400      	movs	r4, #0
 8004a9c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004aa0:	4621      	mov	r1, r4
 8004aa2:	4648      	mov	r0, r9
 8004aa4:	f001 f98e 	bl	8005dc4 <_Balloc>
 8004aa8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004aac:	930e      	str	r3, [sp, #56]	; 0x38
 8004aae:	9309      	str	r3, [sp, #36]	; 0x24
 8004ab0:	2301      	movs	r3, #1
 8004ab2:	4683      	mov	fp, r0
 8004ab4:	9407      	str	r4, [sp, #28]
 8004ab6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004aba:	930a      	str	r3, [sp, #40]	; 0x28
 8004abc:	e4b6      	b.n	800442c <_dtoa_r+0x454>
 8004abe:	f001 f9b1 	bl	8005e24 <__multadd>
 8004ac2:	4627      	mov	r7, r4
 8004ac4:	4605      	mov	r5, r0
 8004ac6:	4680      	mov	r8, r0
 8004ac8:	e614      	b.n	80046f4 <_dtoa_r+0x71c>
 8004aca:	4648      	mov	r0, r9
 8004acc:	f001 f9a0 	bl	8005e10 <_Bfree>
 8004ad0:	2301      	movs	r3, #1
 8004ad2:	e639      	b.n	8004748 <_dtoa_r+0x770>
 8004ad4:	9b02      	ldr	r3, [sp, #8]
 8004ad6:	2b02      	cmp	r3, #2
 8004ad8:	f77f adf3 	ble.w	80046c2 <_dtoa_r+0x6ea>
 8004adc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ade:	2b00      	cmp	r3, #0
 8004ae0:	f000 80cf 	beq.w	8004c82 <_dtoa_r+0xcaa>
 8004ae4:	9b07      	ldr	r3, [sp, #28]
 8004ae6:	43db      	mvns	r3, r3
 8004ae8:	9306      	str	r3, [sp, #24]
 8004aea:	465c      	mov	r4, fp
 8004aec:	e78b      	b.n	8004a06 <_dtoa_r+0xa2e>
 8004aee:	9a06      	ldr	r2, [sp, #24]
 8004af0:	2331      	movs	r3, #49	; 0x31
 8004af2:	3201      	adds	r2, #1
 8004af4:	9206      	str	r2, [sp, #24]
 8004af6:	f88b 3000 	strb.w	r3, [fp]
 8004afa:	e6b3      	b.n	8004864 <_dtoa_r+0x88c>
 8004afc:	2401      	movs	r4, #1
 8004afe:	9409      	str	r4, [sp, #36]	; 0x24
 8004b00:	9407      	str	r4, [sp, #28]
 8004b02:	f7ff bb8b 	b.w	800421c <_dtoa_r+0x244>
 8004b06:	4630      	mov	r0, r6
 8004b08:	f7fb ffac 	bl	8000a64 <__aeabi_i2d>
 8004b0c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b10:	f7fc f812 	bl	8000b38 <__aeabi_dmul>
 8004b14:	2200      	movs	r2, #0
 8004b16:	4b68      	ldr	r3, [pc, #416]	; (8004cb8 <_dtoa_r+0xce0>)
 8004b18:	f7fb fe58 	bl	80007cc <__adddf3>
 8004b1c:	4606      	mov	r6, r0
 8004b1e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004b22:	2200      	movs	r2, #0
 8004b24:	4b61      	ldr	r3, [pc, #388]	; (8004cac <_dtoa_r+0xcd4>)
 8004b26:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004b2a:	f7fb fe4d 	bl	80007c8 <__aeabi_dsub>
 8004b2e:	4632      	mov	r2, r6
 8004b30:	463b      	mov	r3, r7
 8004b32:	4604      	mov	r4, r0
 8004b34:	460d      	mov	r5, r1
 8004b36:	f7fc fa8f 	bl	8001058 <__aeabi_dcmpgt>
 8004b3a:	2800      	cmp	r0, #0
 8004b3c:	d14f      	bne.n	8004bde <_dtoa_r+0xc06>
 8004b3e:	4632      	mov	r2, r6
 8004b40:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004b44:	4620      	mov	r0, r4
 8004b46:	4629      	mov	r1, r5
 8004b48:	f7fc fa68 	bl	800101c <__aeabi_dcmplt>
 8004b4c:	2800      	cmp	r0, #0
 8004b4e:	f43f ac69 	beq.w	8004424 <_dtoa_r+0x44c>
 8004b52:	2600      	movs	r6, #0
 8004b54:	4635      	mov	r5, r6
 8004b56:	e7c5      	b.n	8004ae4 <_dtoa_r+0xb0c>
 8004b58:	2301      	movs	r3, #1
 8004b5a:	930a      	str	r3, [sp, #40]	; 0x28
 8004b5c:	e6c8      	b.n	80048f0 <_dtoa_r+0x918>
 8004b5e:	4651      	mov	r1, sl
 8004b60:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004b62:	4648      	mov	r0, r9
 8004b64:	f001 fa9e 	bl	80060a4 <__pow5mult>
 8004b68:	4682      	mov	sl, r0
 8004b6a:	e572      	b.n	8004652 <_dtoa_r+0x67a>
 8004b6c:	f8dd a000 	ldr.w	sl, [sp]
 8004b70:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004b74:	e686      	b.n	8004884 <_dtoa_r+0x8ac>
 8004b76:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b78:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b7a:	1afb      	subs	r3, r7, r3
 8004b7c:	441a      	add	r2, r3
 8004b7e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004b82:	2700      	movs	r7, #0
 8004b84:	e512      	b.n	80045ac <_dtoa_r+0x5d4>
 8004b86:	2b00      	cmp	r3, #0
 8004b88:	9402      	str	r4, [sp, #8]
 8004b8a:	465e      	mov	r6, fp
 8004b8c:	f107 0401 	add.w	r4, r7, #1
 8004b90:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004b94:	f300 80ba 	bgt.w	8004d0c <_dtoa_r+0xd34>
 8004b98:	9b00      	ldr	r3, [sp, #0]
 8004b9a:	9502      	str	r5, [sp, #8]
 8004b9c:	703b      	strb	r3, [r7, #0]
 8004b9e:	4645      	mov	r5, r8
 8004ba0:	e660      	b.n	8004864 <_dtoa_r+0x88c>
 8004ba2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004ba6:	2602      	movs	r6, #2
 8004ba8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004bac:	f7ff bb67 	b.w	800427e <_dtoa_r+0x2a6>
 8004bb0:	9b00      	ldr	r3, [sp, #0]
 8004bb2:	2b39      	cmp	r3, #57	; 0x39
 8004bb4:	465e      	mov	r6, fp
 8004bb6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004bba:	f000 80b9 	beq.w	8004d30 <_dtoa_r+0xd58>
 8004bbe:	9b00      	ldr	r3, [sp, #0]
 8004bc0:	9502      	str	r5, [sp, #8]
 8004bc2:	3301      	adds	r3, #1
 8004bc4:	703b      	strb	r3, [r7, #0]
 8004bc6:	4645      	mov	r5, r8
 8004bc8:	e64c      	b.n	8004864 <_dtoa_r+0x88c>
 8004bca:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004bce:	1a9c      	subs	r4, r3, r2
 8004bd0:	e4f5      	b.n	80045be <_dtoa_r+0x5e6>
 8004bd2:	465e      	mov	r6, fp
 8004bd4:	9502      	str	r5, [sp, #8]
 8004bd6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004bda:	4645      	mov	r5, r8
 8004bdc:	e61a      	b.n	8004814 <_dtoa_r+0x83c>
 8004bde:	2600      	movs	r6, #0
 8004be0:	4635      	mov	r5, r6
 8004be2:	e708      	b.n	80049f6 <_dtoa_r+0xa1e>
 8004be4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004be8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004bec:	f7fb ffa4 	bl	8000b38 <__aeabi_dmul>
 8004bf0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004bf2:	f88b 5000 	strb.w	r5, [fp]
 8004bf6:	2b01      	cmp	r3, #1
 8004bf8:	e9cd 0100 	strd	r0, r1, [sp]
 8004bfc:	d020      	beq.n	8004c40 <_dtoa_r+0xc68>
 8004bfe:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004c00:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004c04:	445b      	add	r3, fp
 8004c06:	4698      	mov	r8, r3
 8004c08:	2200      	movs	r2, #0
 8004c0a:	4b2c      	ldr	r3, [pc, #176]	; (8004cbc <_dtoa_r+0xce4>)
 8004c0c:	4630      	mov	r0, r6
 8004c0e:	4639      	mov	r1, r7
 8004c10:	f7fb ff92 	bl	8000b38 <__aeabi_dmul>
 8004c14:	460f      	mov	r7, r1
 8004c16:	4606      	mov	r6, r0
 8004c18:	f7fc fa3e 	bl	8001098 <__aeabi_d2iz>
 8004c1c:	4605      	mov	r5, r0
 8004c1e:	f7fb ff21 	bl	8000a64 <__aeabi_i2d>
 8004c22:	3530      	adds	r5, #48	; 0x30
 8004c24:	4602      	mov	r2, r0
 8004c26:	460b      	mov	r3, r1
 8004c28:	4630      	mov	r0, r6
 8004c2a:	4639      	mov	r1, r7
 8004c2c:	f7fb fdcc 	bl	80007c8 <__aeabi_dsub>
 8004c30:	f804 5b01 	strb.w	r5, [r4], #1
 8004c34:	4544      	cmp	r4, r8
 8004c36:	4606      	mov	r6, r0
 8004c38:	460f      	mov	r7, r1
 8004c3a:	d1e5      	bne.n	8004c08 <_dtoa_r+0xc30>
 8004c3c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004c40:	4b1f      	ldr	r3, [pc, #124]	; (8004cc0 <_dtoa_r+0xce8>)
 8004c42:	2200      	movs	r2, #0
 8004c44:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004c48:	f7fb fdc0 	bl	80007cc <__adddf3>
 8004c4c:	4632      	mov	r2, r6
 8004c4e:	463b      	mov	r3, r7
 8004c50:	f7fc f9e4 	bl	800101c <__aeabi_dcmplt>
 8004c54:	2800      	cmp	r0, #0
 8004c56:	d070      	beq.n	8004d3a <_dtoa_r+0xd62>
 8004c58:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004c5a:	9306      	str	r3, [sp, #24]
 8004c5c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c60:	e48f      	b.n	8004582 <_dtoa_r+0x5aa>
 8004c62:	2330      	movs	r3, #48	; 0x30
 8004c64:	f88b 3000 	strb.w	r3, [fp]
 8004c68:	9b06      	ldr	r3, [sp, #24]
 8004c6a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004c6e:	3301      	adds	r3, #1
 8004c70:	9306      	str	r3, [sp, #24]
 8004c72:	465b      	mov	r3, fp
 8004c74:	e489      	b.n	800458a <_dtoa_r+0x5b2>
 8004c76:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004c78:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004c7c:	e6a0      	b.n	80049c0 <_dtoa_r+0x9e8>
 8004c7e:	2300      	movs	r3, #0
 8004c80:	e676      	b.n	8004970 <_dtoa_r+0x998>
 8004c82:	4631      	mov	r1, r6
 8004c84:	2205      	movs	r2, #5
 8004c86:	4648      	mov	r0, r9
 8004c88:	f001 f8cc 	bl	8005e24 <__multadd>
 8004c8c:	4601      	mov	r1, r0
 8004c8e:	4606      	mov	r6, r0
 8004c90:	4650      	mov	r0, sl
 8004c92:	f001 faad 	bl	80061f0 <__mcmp>
 8004c96:	2800      	cmp	r0, #0
 8004c98:	f73f aead 	bgt.w	80049f6 <_dtoa_r+0xa1e>
 8004c9c:	e722      	b.n	8004ae4 <_dtoa_r+0xb0c>
 8004c9e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004ca2:	2602      	movs	r6, #2
 8004ca4:	ed8d 7b00 	vstr	d7, [sp]
 8004ca8:	f7ff bb02 	b.w	80042b0 <_dtoa_r+0x2d8>
 8004cac:	40140000 	.word	0x40140000
 8004cb0:	08007068 	.word	0x08007068
 8004cb4:	08007040 	.word	0x08007040
 8004cb8:	401c0000 	.word	0x401c0000
 8004cbc:	40240000 	.word	0x40240000
 8004cc0:	3fe00000 	.word	0x3fe00000
 8004cc4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004cc6:	2b00      	cmp	r3, #0
 8004cc8:	f43f af1d 	beq.w	8004b06 <_dtoa_r+0xb2e>
 8004ccc:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004cce:	2c00      	cmp	r4, #0
 8004cd0:	f77f aba8 	ble.w	8004424 <_dtoa_r+0x44c>
 8004cd4:	2200      	movs	r2, #0
 8004cd6:	4b45      	ldr	r3, [pc, #276]	; (8004dec <_dtoa_r+0xe14>)
 8004cd8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cdc:	f7fb ff2c 	bl	8000b38 <__aeabi_dmul>
 8004ce0:	e9cd 0100 	strd	r0, r1, [sp]
 8004ce4:	1c70      	adds	r0, r6, #1
 8004ce6:	f7fb febd 	bl	8000a64 <__aeabi_i2d>
 8004cea:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004cee:	f7fb ff23 	bl	8000b38 <__aeabi_dmul>
 8004cf2:	4b3f      	ldr	r3, [pc, #252]	; (8004df0 <_dtoa_r+0xe18>)
 8004cf4:	2200      	movs	r2, #0
 8004cf6:	f7fb fd69 	bl	80007cc <__adddf3>
 8004cfa:	9b06      	ldr	r3, [sp, #24]
 8004cfc:	9412      	str	r4, [sp, #72]	; 0x48
 8004cfe:	3b01      	subs	r3, #1
 8004d00:	4606      	mov	r6, r0
 8004d02:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d06:	9316      	str	r3, [sp, #88]	; 0x58
 8004d08:	f7ff baf3 	b.w	80042f2 <_dtoa_r+0x31a>
 8004d0c:	4651      	mov	r1, sl
 8004d0e:	2201      	movs	r2, #1
 8004d10:	4648      	mov	r0, r9
 8004d12:	f001 fa17 	bl	8006144 <__lshift>
 8004d16:	4631      	mov	r1, r6
 8004d18:	4682      	mov	sl, r0
 8004d1a:	f001 fa69 	bl	80061f0 <__mcmp>
 8004d1e:	2800      	cmp	r0, #0
 8004d20:	dd3b      	ble.n	8004d9a <_dtoa_r+0xdc2>
 8004d22:	9b00      	ldr	r3, [sp, #0]
 8004d24:	2b39      	cmp	r3, #57	; 0x39
 8004d26:	d003      	beq.n	8004d30 <_dtoa_r+0xd58>
 8004d28:	9b02      	ldr	r3, [sp, #8]
 8004d2a:	3331      	adds	r3, #49	; 0x31
 8004d2c:	9300      	str	r3, [sp, #0]
 8004d2e:	e733      	b.n	8004b98 <_dtoa_r+0xbc0>
 8004d30:	2239      	movs	r2, #57	; 0x39
 8004d32:	9502      	str	r5, [sp, #8]
 8004d34:	703a      	strb	r2, [r7, #0]
 8004d36:	4645      	mov	r5, r8
 8004d38:	e58e      	b.n	8004858 <_dtoa_r+0x880>
 8004d3a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d3e:	2000      	movs	r0, #0
 8004d40:	492c      	ldr	r1, [pc, #176]	; (8004df4 <_dtoa_r+0xe1c>)
 8004d42:	f7fb fd41 	bl	80007c8 <__aeabi_dsub>
 8004d46:	4632      	mov	r2, r6
 8004d48:	463b      	mov	r3, r7
 8004d4a:	f7fc f985 	bl	8001058 <__aeabi_dcmpgt>
 8004d4e:	b910      	cbnz	r0, 8004d56 <_dtoa_r+0xd7e>
 8004d50:	f7ff bb68 	b.w	8004424 <_dtoa_r+0x44c>
 8004d54:	4614      	mov	r4, r2
 8004d56:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004d5a:	2b30      	cmp	r3, #48	; 0x30
 8004d5c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004d60:	d0f8      	beq.n	8004d54 <_dtoa_r+0xd7c>
 8004d62:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d64:	9306      	str	r3, [sp, #24]
 8004d66:	e58d      	b.n	8004884 <_dtoa_r+0x8ac>
 8004d68:	46d9      	mov	r9, fp
 8004d6a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004d6e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004d72:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004d74:	9306      	str	r3, [sp, #24]
 8004d76:	e404      	b.n	8004582 <_dtoa_r+0x5aa>
 8004d78:	9b00      	ldr	r3, [sp, #0]
 8004d7a:	2b39      	cmp	r3, #57	; 0x39
 8004d7c:	4621      	mov	r1, r4
 8004d7e:	4632      	mov	r2, r6
 8004d80:	f107 0401 	add.w	r4, r7, #1
 8004d84:	465e      	mov	r6, fp
 8004d86:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d8a:	d0d1      	beq.n	8004d30 <_dtoa_r+0xd58>
 8004d8c:	2a00      	cmp	r2, #0
 8004d8e:	f77f af03 	ble.w	8004b98 <_dtoa_r+0xbc0>
 8004d92:	460b      	mov	r3, r1
 8004d94:	3331      	adds	r3, #49	; 0x31
 8004d96:	9300      	str	r3, [sp, #0]
 8004d98:	e6fe      	b.n	8004b98 <_dtoa_r+0xbc0>
 8004d9a:	f47f aefd 	bne.w	8004b98 <_dtoa_r+0xbc0>
 8004d9e:	9b00      	ldr	r3, [sp, #0]
 8004da0:	07da      	lsls	r2, r3, #31
 8004da2:	f57f aef9 	bpl.w	8004b98 <_dtoa_r+0xbc0>
 8004da6:	e7bc      	b.n	8004d22 <_dtoa_r+0xd4a>
 8004da8:	4629      	mov	r1, r5
 8004daa:	2300      	movs	r3, #0
 8004dac:	220a      	movs	r2, #10
 8004dae:	4648      	mov	r0, r9
 8004db0:	f001 f838 	bl	8005e24 <__multadd>
 8004db4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004db6:	2b00      	cmp	r3, #0
 8004db8:	4605      	mov	r5, r0
 8004dba:	dd09      	ble.n	8004dd0 <_dtoa_r+0xdf8>
 8004dbc:	9309      	str	r3, [sp, #36]	; 0x24
 8004dbe:	e484      	b.n	80046ca <_dtoa_r+0x6f2>
 8004dc0:	9b02      	ldr	r3, [sp, #8]
 8004dc2:	2b02      	cmp	r3, #2
 8004dc4:	dc0e      	bgt.n	8004de4 <_dtoa_r+0xe0c>
 8004dc6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004dc8:	e507      	b.n	80047da <_dtoa_r+0x802>
 8004dca:	2602      	movs	r6, #2
 8004dcc:	f7ff ba70 	b.w	80042b0 <_dtoa_r+0x2d8>
 8004dd0:	9b02      	ldr	r3, [sp, #8]
 8004dd2:	2b02      	cmp	r3, #2
 8004dd4:	dc06      	bgt.n	8004de4 <_dtoa_r+0xe0c>
 8004dd6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004dd8:	e7f0      	b.n	8004dbc <_dtoa_r+0xde4>
 8004dda:	f43f ac59 	beq.w	8004690 <_dtoa_r+0x6b8>
 8004dde:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004de2:	e450      	b.n	8004686 <_dtoa_r+0x6ae>
 8004de4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004de6:	9309      	str	r3, [sp, #36]	; 0x24
 8004de8:	e678      	b.n	8004adc <_dtoa_r+0xb04>
 8004dea:	bf00      	nop
 8004dec:	40240000 	.word	0x40240000
 8004df0:	401c0000 	.word	0x401c0000
 8004df4:	3fe00000 	.word	0x3fe00000

08004df8 <__sflush_r>:
 8004df8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004dfc:	b29a      	uxth	r2, r3
 8004dfe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004e02:	460c      	mov	r4, r1
 8004e04:	0711      	lsls	r1, r2, #28
 8004e06:	4680      	mov	r8, r0
 8004e08:	d444      	bmi.n	8004e94 <__sflush_r+0x9c>
 8004e0a:	6862      	ldr	r2, [r4, #4]
 8004e0c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004e10:	2a00      	cmp	r2, #0
 8004e12:	81a3      	strh	r3, [r4, #12]
 8004e14:	dd59      	ble.n	8004eca <__sflush_r+0xd2>
 8004e16:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004e18:	2d00      	cmp	r5, #0
 8004e1a:	d053      	beq.n	8004ec4 <__sflush_r+0xcc>
 8004e1c:	2200      	movs	r2, #0
 8004e1e:	b29b      	uxth	r3, r3
 8004e20:	f8d8 6000 	ldr.w	r6, [r8]
 8004e24:	69e1      	ldr	r1, [r4, #28]
 8004e26:	f8c8 2000 	str.w	r2, [r8]
 8004e2a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004e2e:	f040 8083 	bne.w	8004f38 <__sflush_r+0x140>
 8004e32:	2301      	movs	r3, #1
 8004e34:	4640      	mov	r0, r8
 8004e36:	47a8      	blx	r5
 8004e38:	1c42      	adds	r2, r0, #1
 8004e3a:	d04a      	beq.n	8004ed2 <__sflush_r+0xda>
 8004e3c:	89a3      	ldrh	r3, [r4, #12]
 8004e3e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004e40:	69e1      	ldr	r1, [r4, #28]
 8004e42:	075b      	lsls	r3, r3, #29
 8004e44:	d505      	bpl.n	8004e52 <__sflush_r+0x5a>
 8004e46:	6862      	ldr	r2, [r4, #4]
 8004e48:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004e4a:	1a80      	subs	r0, r0, r2
 8004e4c:	b10b      	cbz	r3, 8004e52 <__sflush_r+0x5a>
 8004e4e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004e50:	1ac0      	subs	r0, r0, r3
 8004e52:	4602      	mov	r2, r0
 8004e54:	2300      	movs	r3, #0
 8004e56:	4640      	mov	r0, r8
 8004e58:	47a8      	blx	r5
 8004e5a:	1c47      	adds	r7, r0, #1
 8004e5c:	d045      	beq.n	8004eea <__sflush_r+0xf2>
 8004e5e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004e62:	6922      	ldr	r2, [r4, #16]
 8004e64:	6022      	str	r2, [r4, #0]
 8004e66:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004e6a:	2200      	movs	r2, #0
 8004e6c:	81a3      	strh	r3, [r4, #12]
 8004e6e:	04db      	lsls	r3, r3, #19
 8004e70:	6062      	str	r2, [r4, #4]
 8004e72:	d500      	bpl.n	8004e76 <__sflush_r+0x7e>
 8004e74:	6520      	str	r0, [r4, #80]	; 0x50
 8004e76:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004e78:	f8c8 6000 	str.w	r6, [r8]
 8004e7c:	b311      	cbz	r1, 8004ec4 <__sflush_r+0xcc>
 8004e7e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004e82:	4299      	cmp	r1, r3
 8004e84:	d002      	beq.n	8004e8c <__sflush_r+0x94>
 8004e86:	4640      	mov	r0, r8
 8004e88:	f000 f95e 	bl	8005148 <_free_r>
 8004e8c:	2000      	movs	r0, #0
 8004e8e:	6320      	str	r0, [r4, #48]	; 0x30
 8004e90:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004e94:	6926      	ldr	r6, [r4, #16]
 8004e96:	b1ae      	cbz	r6, 8004ec4 <__sflush_r+0xcc>
 8004e98:	6825      	ldr	r5, [r4, #0]
 8004e9a:	6026      	str	r6, [r4, #0]
 8004e9c:	0792      	lsls	r2, r2, #30
 8004e9e:	bf0c      	ite	eq
 8004ea0:	6963      	ldreq	r3, [r4, #20]
 8004ea2:	2300      	movne	r3, #0
 8004ea4:	1bad      	subs	r5, r5, r6
 8004ea6:	60a3      	str	r3, [r4, #8]
 8004ea8:	e00a      	b.n	8004ec0 <__sflush_r+0xc8>
 8004eaa:	462b      	mov	r3, r5
 8004eac:	4632      	mov	r2, r6
 8004eae:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8004eb0:	69e1      	ldr	r1, [r4, #28]
 8004eb2:	4640      	mov	r0, r8
 8004eb4:	47b8      	blx	r7
 8004eb6:	2800      	cmp	r0, #0
 8004eb8:	eba5 0500 	sub.w	r5, r5, r0
 8004ebc:	4406      	add	r6, r0
 8004ebe:	dd2b      	ble.n	8004f18 <__sflush_r+0x120>
 8004ec0:	2d00      	cmp	r5, #0
 8004ec2:	dcf2      	bgt.n	8004eaa <__sflush_r+0xb2>
 8004ec4:	2000      	movs	r0, #0
 8004ec6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004eca:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8004ecc:	2a00      	cmp	r2, #0
 8004ece:	dca2      	bgt.n	8004e16 <__sflush_r+0x1e>
 8004ed0:	e7f8      	b.n	8004ec4 <__sflush_r+0xcc>
 8004ed2:	f8d8 3000 	ldr.w	r3, [r8]
 8004ed6:	2b00      	cmp	r3, #0
 8004ed8:	d0b0      	beq.n	8004e3c <__sflush_r+0x44>
 8004eda:	2b1d      	cmp	r3, #29
 8004edc:	d001      	beq.n	8004ee2 <__sflush_r+0xea>
 8004ede:	2b16      	cmp	r3, #22
 8004ee0:	d12c      	bne.n	8004f3c <__sflush_r+0x144>
 8004ee2:	f8c8 6000 	str.w	r6, [r8]
 8004ee6:	2000      	movs	r0, #0
 8004ee8:	e7ed      	b.n	8004ec6 <__sflush_r+0xce>
 8004eea:	f8d8 1000 	ldr.w	r1, [r8]
 8004eee:	291d      	cmp	r1, #29
 8004ef0:	d81a      	bhi.n	8004f28 <__sflush_r+0x130>
 8004ef2:	4b15      	ldr	r3, [pc, #84]	; (8004f48 <__sflush_r+0x150>)
 8004ef4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004ef8:	40cb      	lsrs	r3, r1
 8004efa:	43db      	mvns	r3, r3
 8004efc:	f013 0301 	ands.w	r3, r3, #1
 8004f00:	d114      	bne.n	8004f2c <__sflush_r+0x134>
 8004f02:	6925      	ldr	r5, [r4, #16]
 8004f04:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8004f08:	e9c4 5300 	strd	r5, r3, [r4]
 8004f0c:	04d5      	lsls	r5, r2, #19
 8004f0e:	81a2      	strh	r2, [r4, #12]
 8004f10:	d5b1      	bpl.n	8004e76 <__sflush_r+0x7e>
 8004f12:	2900      	cmp	r1, #0
 8004f14:	d1af      	bne.n	8004e76 <__sflush_r+0x7e>
 8004f16:	e7ad      	b.n	8004e74 <__sflush_r+0x7c>
 8004f18:	89a3      	ldrh	r3, [r4, #12]
 8004f1a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f1e:	81a3      	strh	r3, [r4, #12]
 8004f20:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f24:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8004f28:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004f2c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004f30:	81a2      	strh	r2, [r4, #12]
 8004f32:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004f36:	e7c6      	b.n	8004ec6 <__sflush_r+0xce>
 8004f38:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8004f3a:	e782      	b.n	8004e42 <__sflush_r+0x4a>
 8004f3c:	89a3      	ldrh	r3, [r4, #12]
 8004f3e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004f42:	81a3      	strh	r3, [r4, #12]
 8004f44:	e7bf      	b.n	8004ec6 <__sflush_r+0xce>
 8004f46:	bf00      	nop
 8004f48:	20400001 	.word	0x20400001

08004f4c <_fflush_r>:
 8004f4c:	b538      	push	{r3, r4, r5, lr}
 8004f4e:	460d      	mov	r5, r1
 8004f50:	4604      	mov	r4, r0
 8004f52:	b108      	cbz	r0, 8004f58 <_fflush_r+0xc>
 8004f54:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8004f56:	b1a3      	cbz	r3, 8004f82 <_fflush_r+0x36>
 8004f58:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004f5c:	b1b8      	cbz	r0, 8004f8e <_fflush_r+0x42>
 8004f5e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004f60:	07db      	lsls	r3, r3, #31
 8004f62:	d401      	bmi.n	8004f68 <_fflush_r+0x1c>
 8004f64:	0581      	lsls	r1, r0, #22
 8004f66:	d51a      	bpl.n	8004f9e <_fflush_r+0x52>
 8004f68:	4620      	mov	r0, r4
 8004f6a:	4629      	mov	r1, r5
 8004f6c:	f7ff ff44 	bl	8004df8 <__sflush_r>
 8004f70:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8004f72:	07da      	lsls	r2, r3, #31
 8004f74:	4604      	mov	r4, r0
 8004f76:	d402      	bmi.n	8004f7e <_fflush_r+0x32>
 8004f78:	89ab      	ldrh	r3, [r5, #12]
 8004f7a:	059b      	lsls	r3, r3, #22
 8004f7c:	d50a      	bpl.n	8004f94 <_fflush_r+0x48>
 8004f7e:	4620      	mov	r0, r4
 8004f80:	bd38      	pop	{r3, r4, r5, pc}
 8004f82:	f000 f83f 	bl	8005004 <__sinit>
 8004f86:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8004f8a:	2800      	cmp	r0, #0
 8004f8c:	d1e7      	bne.n	8004f5e <_fflush_r+0x12>
 8004f8e:	4604      	mov	r4, r0
 8004f90:	4620      	mov	r0, r4
 8004f92:	bd38      	pop	{r3, r4, r5, pc}
 8004f94:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004f96:	f000 fb87 	bl	80056a8 <__retarget_lock_release_recursive>
 8004f9a:	4620      	mov	r0, r4
 8004f9c:	bd38      	pop	{r3, r4, r5, pc}
 8004f9e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8004fa0:	f000 fb80 	bl	80056a4 <__retarget_lock_acquire_recursive>
 8004fa4:	e7e0      	b.n	8004f68 <_fflush_r+0x1c>
 8004fa6:	bf00      	nop

08004fa8 <std>:
 8004fa8:	b510      	push	{r4, lr}
 8004faa:	2300      	movs	r3, #0
 8004fac:	4604      	mov	r4, r0
 8004fae:	8181      	strh	r1, [r0, #12]
 8004fb0:	81c2      	strh	r2, [r0, #14]
 8004fb2:	e9c0 3300 	strd	r3, r3, [r0]
 8004fb6:	6083      	str	r3, [r0, #8]
 8004fb8:	6643      	str	r3, [r0, #100]	; 0x64
 8004fba:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8004fbe:	6183      	str	r3, [r0, #24]
 8004fc0:	4619      	mov	r1, r3
 8004fc2:	2208      	movs	r2, #8
 8004fc4:	305c      	adds	r0, #92	; 0x5c
 8004fc6:	f7fd f8cb 	bl	8002160 <memset>
 8004fca:	4807      	ldr	r0, [pc, #28]	; (8004fe8 <std+0x40>)
 8004fcc:	4907      	ldr	r1, [pc, #28]	; (8004fec <std+0x44>)
 8004fce:	4a08      	ldr	r2, [pc, #32]	; (8004ff0 <std+0x48>)
 8004fd0:	4b08      	ldr	r3, [pc, #32]	; (8004ff4 <std+0x4c>)
 8004fd2:	62e3      	str	r3, [r4, #44]	; 0x2c
 8004fd4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8004fd8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8004fdc:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8004fe0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8004fe4:	f000 bb5a 	b.w	800569c <__retarget_lock_init_recursive>
 8004fe8:	080067c1 	.word	0x080067c1
 8004fec:	080067e5 	.word	0x080067e5
 8004ff0:	08006821 	.word	0x08006821
 8004ff4:	08006841 	.word	0x08006841

08004ff8 <_cleanup_r>:
 8004ff8:	4901      	ldr	r1, [pc, #4]	; (8005000 <_cleanup_r+0x8>)
 8004ffa:	f000 bb17 	b.w	800562c <_fwalk_reent>
 8004ffe:	bf00      	nop
 8005000:	08006ab1 	.word	0x08006ab1

08005004 <__sinit>:
 8005004:	b510      	push	{r4, lr}
 8005006:	4604      	mov	r4, r0
 8005008:	4812      	ldr	r0, [pc, #72]	; (8005054 <__sinit+0x50>)
 800500a:	f000 fb4b 	bl	80056a4 <__retarget_lock_acquire_recursive>
 800500e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005010:	b9d2      	cbnz	r2, 8005048 <__sinit+0x44>
 8005012:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005016:	4810      	ldr	r0, [pc, #64]	; (8005058 <__sinit+0x54>)
 8005018:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800501c:	2103      	movs	r1, #3
 800501e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005022:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005024:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005028:	6860      	ldr	r0, [r4, #4]
 800502a:	2104      	movs	r1, #4
 800502c:	f7ff ffbc 	bl	8004fa8 <std>
 8005030:	2201      	movs	r2, #1
 8005032:	2109      	movs	r1, #9
 8005034:	68a0      	ldr	r0, [r4, #8]
 8005036:	f7ff ffb7 	bl	8004fa8 <std>
 800503a:	2202      	movs	r2, #2
 800503c:	2112      	movs	r1, #18
 800503e:	68e0      	ldr	r0, [r4, #12]
 8005040:	f7ff ffb2 	bl	8004fa8 <std>
 8005044:	2301      	movs	r3, #1
 8005046:	63a3      	str	r3, [r4, #56]	; 0x38
 8005048:	4802      	ldr	r0, [pc, #8]	; (8005054 <__sinit+0x50>)
 800504a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800504e:	f000 bb2b 	b.w	80056a8 <__retarget_lock_release_recursive>
 8005052:	bf00      	nop
 8005054:	20000af8 	.word	0x20000af8
 8005058:	08004ff9 	.word	0x08004ff9

0800505c <__sfp_lock_acquire>:
 800505c:	4801      	ldr	r0, [pc, #4]	; (8005064 <__sfp_lock_acquire+0x8>)
 800505e:	f000 bb21 	b.w	80056a4 <__retarget_lock_acquire_recursive>
 8005062:	bf00      	nop
 8005064:	20000b0c 	.word	0x20000b0c

08005068 <__sfp_lock_release>:
 8005068:	4801      	ldr	r0, [pc, #4]	; (8005070 <__sfp_lock_release+0x8>)
 800506a:	f000 bb1d 	b.w	80056a8 <__retarget_lock_release_recursive>
 800506e:	bf00      	nop
 8005070:	20000b0c 	.word	0x20000b0c

08005074 <__libc_fini_array>:
 8005074:	b538      	push	{r3, r4, r5, lr}
 8005076:	4c0a      	ldr	r4, [pc, #40]	; (80050a0 <__libc_fini_array+0x2c>)
 8005078:	4d0a      	ldr	r5, [pc, #40]	; (80050a4 <__libc_fini_array+0x30>)
 800507a:	1b64      	subs	r4, r4, r5
 800507c:	10a4      	asrs	r4, r4, #2
 800507e:	d00a      	beq.n	8005096 <__libc_fini_array+0x22>
 8005080:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005084:	3b01      	subs	r3, #1
 8005086:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800508a:	3c01      	subs	r4, #1
 800508c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005090:	4798      	blx	r3
 8005092:	2c00      	cmp	r4, #0
 8005094:	d1f9      	bne.n	800508a <__libc_fini_array+0x16>
 8005096:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800509a:	f001 befd 	b.w	8006e98 <_fini>
 800509e:	bf00      	nop
 80050a0:	08007264 	.word	0x08007264
 80050a4:	08007260 	.word	0x08007260

080050a8 <_malloc_trim_r>:
 80050a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80050aa:	4f24      	ldr	r7, [pc, #144]	; (800513c <_malloc_trim_r+0x94>)
 80050ac:	460c      	mov	r4, r1
 80050ae:	4606      	mov	r6, r0
 80050b0:	f000 fe7c 	bl	8005dac <__malloc_lock>
 80050b4:	68bb      	ldr	r3, [r7, #8]
 80050b6:	685d      	ldr	r5, [r3, #4]
 80050b8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80050bc:	310f      	adds	r1, #15
 80050be:	f025 0503 	bic.w	r5, r5, #3
 80050c2:	4429      	add	r1, r5
 80050c4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80050c8:	f021 010f 	bic.w	r1, r1, #15
 80050cc:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80050d0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80050d4:	db07      	blt.n	80050e6 <_malloc_trim_r+0x3e>
 80050d6:	2100      	movs	r1, #0
 80050d8:	4630      	mov	r0, r6
 80050da:	f001 fb5f 	bl	800679c <_sbrk_r>
 80050de:	68bb      	ldr	r3, [r7, #8]
 80050e0:	442b      	add	r3, r5
 80050e2:	4298      	cmp	r0, r3
 80050e4:	d004      	beq.n	80050f0 <_malloc_trim_r+0x48>
 80050e6:	4630      	mov	r0, r6
 80050e8:	f000 fe66 	bl	8005db8 <__malloc_unlock>
 80050ec:	2000      	movs	r0, #0
 80050ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80050f0:	4261      	negs	r1, r4
 80050f2:	4630      	mov	r0, r6
 80050f4:	f001 fb52 	bl	800679c <_sbrk_r>
 80050f8:	3001      	adds	r0, #1
 80050fa:	d00d      	beq.n	8005118 <_malloc_trim_r+0x70>
 80050fc:	4b10      	ldr	r3, [pc, #64]	; (8005140 <_malloc_trim_r+0x98>)
 80050fe:	68ba      	ldr	r2, [r7, #8]
 8005100:	6819      	ldr	r1, [r3, #0]
 8005102:	1b2d      	subs	r5, r5, r4
 8005104:	f045 0501 	orr.w	r5, r5, #1
 8005108:	4630      	mov	r0, r6
 800510a:	1b09      	subs	r1, r1, r4
 800510c:	6055      	str	r5, [r2, #4]
 800510e:	6019      	str	r1, [r3, #0]
 8005110:	f000 fe52 	bl	8005db8 <__malloc_unlock>
 8005114:	2001      	movs	r0, #1
 8005116:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005118:	2100      	movs	r1, #0
 800511a:	4630      	mov	r0, r6
 800511c:	f001 fb3e 	bl	800679c <_sbrk_r>
 8005120:	68ba      	ldr	r2, [r7, #8]
 8005122:	1a83      	subs	r3, r0, r2
 8005124:	2b0f      	cmp	r3, #15
 8005126:	ddde      	ble.n	80050e6 <_malloc_trim_r+0x3e>
 8005128:	4c06      	ldr	r4, [pc, #24]	; (8005144 <_malloc_trim_r+0x9c>)
 800512a:	4905      	ldr	r1, [pc, #20]	; (8005140 <_malloc_trim_r+0x98>)
 800512c:	6824      	ldr	r4, [r4, #0]
 800512e:	f043 0301 	orr.w	r3, r3, #1
 8005132:	1b00      	subs	r0, r0, r4
 8005134:	6053      	str	r3, [r2, #4]
 8005136:	6008      	str	r0, [r1, #0]
 8005138:	e7d5      	b.n	80050e6 <_malloc_trim_r+0x3e>
 800513a:	bf00      	nop
 800513c:	2000044c 	.word	0x2000044c
 8005140:	20000a70 	.word	0x20000a70
 8005144:	20000854 	.word	0x20000854

08005148 <_free_r>:
 8005148:	2900      	cmp	r1, #0
 800514a:	d053      	beq.n	80051f4 <_free_r+0xac>
 800514c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800514e:	460c      	mov	r4, r1
 8005150:	4606      	mov	r6, r0
 8005152:	f000 fe2b 	bl	8005dac <__malloc_lock>
 8005156:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800515a:	4f71      	ldr	r7, [pc, #452]	; (8005320 <_free_r+0x1d8>)
 800515c:	f02c 0101 	bic.w	r1, ip, #1
 8005160:	f1a4 0508 	sub.w	r5, r4, #8
 8005164:	186b      	adds	r3, r5, r1
 8005166:	68b8      	ldr	r0, [r7, #8]
 8005168:	685a      	ldr	r2, [r3, #4]
 800516a:	4298      	cmp	r0, r3
 800516c:	f022 0203 	bic.w	r2, r2, #3
 8005170:	d053      	beq.n	800521a <_free_r+0xd2>
 8005172:	f01c 0f01 	tst.w	ip, #1
 8005176:	605a      	str	r2, [r3, #4]
 8005178:	eb03 0002 	add.w	r0, r3, r2
 800517c:	d13b      	bne.n	80051f6 <_free_r+0xae>
 800517e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005182:	6840      	ldr	r0, [r0, #4]
 8005184:	eba5 050c 	sub.w	r5, r5, ip
 8005188:	f107 0e08 	add.w	lr, r7, #8
 800518c:	68ac      	ldr	r4, [r5, #8]
 800518e:	4574      	cmp	r4, lr
 8005190:	4461      	add	r1, ip
 8005192:	f000 0001 	and.w	r0, r0, #1
 8005196:	d075      	beq.n	8005284 <_free_r+0x13c>
 8005198:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800519c:	f8c4 c00c 	str.w	ip, [r4, #12]
 80051a0:	f8cc 4008 	str.w	r4, [ip, #8]
 80051a4:	b360      	cbz	r0, 8005200 <_free_r+0xb8>
 80051a6:	f041 0301 	orr.w	r3, r1, #1
 80051aa:	606b      	str	r3, [r5, #4]
 80051ac:	5069      	str	r1, [r5, r1]
 80051ae:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80051b2:	d350      	bcc.n	8005256 <_free_r+0x10e>
 80051b4:	0a4b      	lsrs	r3, r1, #9
 80051b6:	2b04      	cmp	r3, #4
 80051b8:	d870      	bhi.n	800529c <_free_r+0x154>
 80051ba:	098b      	lsrs	r3, r1, #6
 80051bc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80051c0:	00e4      	lsls	r4, r4, #3
 80051c2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80051c6:	1938      	adds	r0, r7, r4
 80051c8:	593b      	ldr	r3, [r7, r4]
 80051ca:	3808      	subs	r0, #8
 80051cc:	4298      	cmp	r0, r3
 80051ce:	d078      	beq.n	80052c2 <_free_r+0x17a>
 80051d0:	685a      	ldr	r2, [r3, #4]
 80051d2:	f022 0203 	bic.w	r2, r2, #3
 80051d6:	428a      	cmp	r2, r1
 80051d8:	d971      	bls.n	80052be <_free_r+0x176>
 80051da:	689b      	ldr	r3, [r3, #8]
 80051dc:	4298      	cmp	r0, r3
 80051de:	d1f7      	bne.n	80051d0 <_free_r+0x88>
 80051e0:	68c3      	ldr	r3, [r0, #12]
 80051e2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80051e6:	609d      	str	r5, [r3, #8]
 80051e8:	60c5      	str	r5, [r0, #12]
 80051ea:	4630      	mov	r0, r6
 80051ec:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80051f0:	f000 bde2 	b.w	8005db8 <__malloc_unlock>
 80051f4:	4770      	bx	lr
 80051f6:	6840      	ldr	r0, [r0, #4]
 80051f8:	f000 0001 	and.w	r0, r0, #1
 80051fc:	2800      	cmp	r0, #0
 80051fe:	d1d2      	bne.n	80051a6 <_free_r+0x5e>
 8005200:	6898      	ldr	r0, [r3, #8]
 8005202:	4c48      	ldr	r4, [pc, #288]	; (8005324 <_free_r+0x1dc>)
 8005204:	4411      	add	r1, r2
 8005206:	42a0      	cmp	r0, r4
 8005208:	f041 0201 	orr.w	r2, r1, #1
 800520c:	d062      	beq.n	80052d4 <_free_r+0x18c>
 800520e:	68db      	ldr	r3, [r3, #12]
 8005210:	60c3      	str	r3, [r0, #12]
 8005212:	6098      	str	r0, [r3, #8]
 8005214:	606a      	str	r2, [r5, #4]
 8005216:	5069      	str	r1, [r5, r1]
 8005218:	e7c9      	b.n	80051ae <_free_r+0x66>
 800521a:	f01c 0f01 	tst.w	ip, #1
 800521e:	440a      	add	r2, r1
 8005220:	d107      	bne.n	8005232 <_free_r+0xea>
 8005222:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005226:	1aed      	subs	r5, r5, r3
 8005228:	441a      	add	r2, r3
 800522a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800522e:	60cb      	str	r3, [r1, #12]
 8005230:	6099      	str	r1, [r3, #8]
 8005232:	4b3d      	ldr	r3, [pc, #244]	; (8005328 <_free_r+0x1e0>)
 8005234:	681b      	ldr	r3, [r3, #0]
 8005236:	f042 0101 	orr.w	r1, r2, #1
 800523a:	4293      	cmp	r3, r2
 800523c:	6069      	str	r1, [r5, #4]
 800523e:	60bd      	str	r5, [r7, #8]
 8005240:	d804      	bhi.n	800524c <_free_r+0x104>
 8005242:	4b3a      	ldr	r3, [pc, #232]	; (800532c <_free_r+0x1e4>)
 8005244:	4630      	mov	r0, r6
 8005246:	6819      	ldr	r1, [r3, #0]
 8005248:	f7ff ff2e 	bl	80050a8 <_malloc_trim_r>
 800524c:	4630      	mov	r0, r6
 800524e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005252:	f000 bdb1 	b.w	8005db8 <__malloc_unlock>
 8005256:	08c9      	lsrs	r1, r1, #3
 8005258:	6878      	ldr	r0, [r7, #4]
 800525a:	1c4a      	adds	r2, r1, #1
 800525c:	2301      	movs	r3, #1
 800525e:	1089      	asrs	r1, r1, #2
 8005260:	408b      	lsls	r3, r1
 8005262:	4303      	orrs	r3, r0
 8005264:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005268:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800526c:	607b      	str	r3, [r7, #4]
 800526e:	3908      	subs	r1, #8
 8005270:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005274:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005278:	60c5      	str	r5, [r0, #12]
 800527a:	4630      	mov	r0, r6
 800527c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005280:	f000 bd9a 	b.w	8005db8 <__malloc_unlock>
 8005284:	2800      	cmp	r0, #0
 8005286:	d145      	bne.n	8005314 <_free_r+0x1cc>
 8005288:	440a      	add	r2, r1
 800528a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800528e:	f042 0001 	orr.w	r0, r2, #1
 8005292:	60cb      	str	r3, [r1, #12]
 8005294:	6099      	str	r1, [r3, #8]
 8005296:	6068      	str	r0, [r5, #4]
 8005298:	50aa      	str	r2, [r5, r2]
 800529a:	e7d7      	b.n	800524c <_free_r+0x104>
 800529c:	2b14      	cmp	r3, #20
 800529e:	d908      	bls.n	80052b2 <_free_r+0x16a>
 80052a0:	2b54      	cmp	r3, #84	; 0x54
 80052a2:	d81e      	bhi.n	80052e2 <_free_r+0x19a>
 80052a4:	0b0b      	lsrs	r3, r1, #12
 80052a6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80052aa:	00e4      	lsls	r4, r4, #3
 80052ac:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80052b0:	e789      	b.n	80051c6 <_free_r+0x7e>
 80052b2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80052b6:	00e4      	lsls	r4, r4, #3
 80052b8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80052bc:	e783      	b.n	80051c6 <_free_r+0x7e>
 80052be:	4618      	mov	r0, r3
 80052c0:	e78e      	b.n	80051e0 <_free_r+0x98>
 80052c2:	1093      	asrs	r3, r2, #2
 80052c4:	6879      	ldr	r1, [r7, #4]
 80052c6:	2201      	movs	r2, #1
 80052c8:	fa02 f303 	lsl.w	r3, r2, r3
 80052cc:	430b      	orrs	r3, r1
 80052ce:	607b      	str	r3, [r7, #4]
 80052d0:	4603      	mov	r3, r0
 80052d2:	e786      	b.n	80051e2 <_free_r+0x9a>
 80052d4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80052d8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80052dc:	606a      	str	r2, [r5, #4]
 80052de:	5069      	str	r1, [r5, r1]
 80052e0:	e7b4      	b.n	800524c <_free_r+0x104>
 80052e2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80052e6:	d806      	bhi.n	80052f6 <_free_r+0x1ae>
 80052e8:	0bcb      	lsrs	r3, r1, #15
 80052ea:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80052ee:	00e4      	lsls	r4, r4, #3
 80052f0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80052f4:	e767      	b.n	80051c6 <_free_r+0x7e>
 80052f6:	f240 5254 	movw	r2, #1364	; 0x554
 80052fa:	4293      	cmp	r3, r2
 80052fc:	d806      	bhi.n	800530c <_free_r+0x1c4>
 80052fe:	0c8b      	lsrs	r3, r1, #18
 8005300:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005304:	00e4      	lsls	r4, r4, #3
 8005306:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800530a:	e75c      	b.n	80051c6 <_free_r+0x7e>
 800530c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005310:	227e      	movs	r2, #126	; 0x7e
 8005312:	e758      	b.n	80051c6 <_free_r+0x7e>
 8005314:	f041 0201 	orr.w	r2, r1, #1
 8005318:	606a      	str	r2, [r5, #4]
 800531a:	6019      	str	r1, [r3, #0]
 800531c:	e796      	b.n	800524c <_free_r+0x104>
 800531e:	bf00      	nop
 8005320:	2000044c 	.word	0x2000044c
 8005324:	20000454 	.word	0x20000454
 8005328:	20000858 	.word	0x20000858
 800532c:	20000aa0 	.word	0x20000aa0

08005330 <__sfvwrite_r>:
 8005330:	6893      	ldr	r3, [r2, #8]
 8005332:	2b00      	cmp	r3, #0
 8005334:	f000 80e4 	beq.w	8005500 <__sfvwrite_r+0x1d0>
 8005338:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800533c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005340:	b29b      	uxth	r3, r3
 8005342:	460c      	mov	r4, r1
 8005344:	0719      	lsls	r1, r3, #28
 8005346:	b083      	sub	sp, #12
 8005348:	4682      	mov	sl, r0
 800534a:	4690      	mov	r8, r2
 800534c:	d535      	bpl.n	80053ba <__sfvwrite_r+0x8a>
 800534e:	6922      	ldr	r2, [r4, #16]
 8005350:	b39a      	cbz	r2, 80053ba <__sfvwrite_r+0x8a>
 8005352:	f013 0202 	ands.w	r2, r3, #2
 8005356:	f8d8 6000 	ldr.w	r6, [r8]
 800535a:	d03d      	beq.n	80053d8 <__sfvwrite_r+0xa8>
 800535c:	2700      	movs	r7, #0
 800535e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005362:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005366:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005628 <__sfvwrite_r+0x2f8>
 800536a:	463d      	mov	r5, r7
 800536c:	454d      	cmp	r5, r9
 800536e:	462b      	mov	r3, r5
 8005370:	463a      	mov	r2, r7
 8005372:	bf28      	it	cs
 8005374:	464b      	movcs	r3, r9
 8005376:	4661      	mov	r1, ip
 8005378:	4650      	mov	r0, sl
 800537a:	b1d5      	cbz	r5, 80053b2 <__sfvwrite_r+0x82>
 800537c:	47d8      	blx	fp
 800537e:	2800      	cmp	r0, #0
 8005380:	f340 80c6 	ble.w	8005510 <__sfvwrite_r+0x1e0>
 8005384:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005388:	1a1b      	subs	r3, r3, r0
 800538a:	4407      	add	r7, r0
 800538c:	1a2d      	subs	r5, r5, r0
 800538e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005392:	2b00      	cmp	r3, #0
 8005394:	f000 80b0 	beq.w	80054f8 <__sfvwrite_r+0x1c8>
 8005398:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800539c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80053a0:	454d      	cmp	r5, r9
 80053a2:	462b      	mov	r3, r5
 80053a4:	463a      	mov	r2, r7
 80053a6:	bf28      	it	cs
 80053a8:	464b      	movcs	r3, r9
 80053aa:	4661      	mov	r1, ip
 80053ac:	4650      	mov	r0, sl
 80053ae:	2d00      	cmp	r5, #0
 80053b0:	d1e4      	bne.n	800537c <__sfvwrite_r+0x4c>
 80053b2:	e9d6 7500 	ldrd	r7, r5, [r6]
 80053b6:	3608      	adds	r6, #8
 80053b8:	e7d8      	b.n	800536c <__sfvwrite_r+0x3c>
 80053ba:	4621      	mov	r1, r4
 80053bc:	4650      	mov	r0, sl
 80053be:	f7fe fd03 	bl	8003dc8 <__swsetup_r>
 80053c2:	2800      	cmp	r0, #0
 80053c4:	f040 812a 	bne.w	800561c <__sfvwrite_r+0x2ec>
 80053c8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80053cc:	f8d8 6000 	ldr.w	r6, [r8]
 80053d0:	b29b      	uxth	r3, r3
 80053d2:	f013 0202 	ands.w	r2, r3, #2
 80053d6:	d1c1      	bne.n	800535c <__sfvwrite_r+0x2c>
 80053d8:	f013 0901 	ands.w	r9, r3, #1
 80053dc:	d15d      	bne.n	800549a <__sfvwrite_r+0x16a>
 80053de:	68a7      	ldr	r7, [r4, #8]
 80053e0:	6820      	ldr	r0, [r4, #0]
 80053e2:	464d      	mov	r5, r9
 80053e4:	2d00      	cmp	r5, #0
 80053e6:	d054      	beq.n	8005492 <__sfvwrite_r+0x162>
 80053e8:	059a      	lsls	r2, r3, #22
 80053ea:	f140 809b 	bpl.w	8005524 <__sfvwrite_r+0x1f4>
 80053ee:	42af      	cmp	r7, r5
 80053f0:	46bb      	mov	fp, r7
 80053f2:	f200 80d8 	bhi.w	80055a6 <__sfvwrite_r+0x276>
 80053f6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80053fa:	d02f      	beq.n	800545c <__sfvwrite_r+0x12c>
 80053fc:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005400:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005404:	eba0 0b01 	sub.w	fp, r0, r1
 8005408:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800540c:	1c68      	adds	r0, r5, #1
 800540e:	107f      	asrs	r7, r7, #1
 8005410:	4458      	add	r0, fp
 8005412:	42b8      	cmp	r0, r7
 8005414:	463a      	mov	r2, r7
 8005416:	bf84      	itt	hi
 8005418:	4607      	movhi	r7, r0
 800541a:	463a      	movhi	r2, r7
 800541c:	055b      	lsls	r3, r3, #21
 800541e:	f140 80d3 	bpl.w	80055c8 <__sfvwrite_r+0x298>
 8005422:	4611      	mov	r1, r2
 8005424:	4650      	mov	r0, sl
 8005426:	f000 f9b9 	bl	800579c <_malloc_r>
 800542a:	2800      	cmp	r0, #0
 800542c:	f000 80f0 	beq.w	8005610 <__sfvwrite_r+0x2e0>
 8005430:	465a      	mov	r2, fp
 8005432:	6921      	ldr	r1, [r4, #16]
 8005434:	9001      	str	r0, [sp, #4]
 8005436:	f7fb f863 	bl	8000500 <memcpy>
 800543a:	89a2      	ldrh	r2, [r4, #12]
 800543c:	9b01      	ldr	r3, [sp, #4]
 800543e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005442:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005446:	81a2      	strh	r2, [r4, #12]
 8005448:	eba7 020b 	sub.w	r2, r7, fp
 800544c:	eb03 000b 	add.w	r0, r3, fp
 8005450:	6167      	str	r7, [r4, #20]
 8005452:	6123      	str	r3, [r4, #16]
 8005454:	6020      	str	r0, [r4, #0]
 8005456:	60a2      	str	r2, [r4, #8]
 8005458:	462f      	mov	r7, r5
 800545a:	46ab      	mov	fp, r5
 800545c:	465a      	mov	r2, fp
 800545e:	4649      	mov	r1, r9
 8005460:	f000 fc40 	bl	8005ce4 <memmove>
 8005464:	68a2      	ldr	r2, [r4, #8]
 8005466:	6823      	ldr	r3, [r4, #0]
 8005468:	1bd2      	subs	r2, r2, r7
 800546a:	445b      	add	r3, fp
 800546c:	462f      	mov	r7, r5
 800546e:	60a2      	str	r2, [r4, #8]
 8005470:	6023      	str	r3, [r4, #0]
 8005472:	2500      	movs	r5, #0
 8005474:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005478:	1bdb      	subs	r3, r3, r7
 800547a:	44b9      	add	r9, r7
 800547c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005480:	2b00      	cmp	r3, #0
 8005482:	d039      	beq.n	80054f8 <__sfvwrite_r+0x1c8>
 8005484:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005488:	68a7      	ldr	r7, [r4, #8]
 800548a:	6820      	ldr	r0, [r4, #0]
 800548c:	b29b      	uxth	r3, r3
 800548e:	2d00      	cmp	r5, #0
 8005490:	d1aa      	bne.n	80053e8 <__sfvwrite_r+0xb8>
 8005492:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005496:	3608      	adds	r6, #8
 8005498:	e7a4      	b.n	80053e4 <__sfvwrite_r+0xb4>
 800549a:	4633      	mov	r3, r6
 800549c:	4691      	mov	r9, r2
 800549e:	4610      	mov	r0, r2
 80054a0:	4617      	mov	r7, r2
 80054a2:	464e      	mov	r6, r9
 80054a4:	469b      	mov	fp, r3
 80054a6:	2f00      	cmp	r7, #0
 80054a8:	d06b      	beq.n	8005582 <__sfvwrite_r+0x252>
 80054aa:	2800      	cmp	r0, #0
 80054ac:	d071      	beq.n	8005592 <__sfvwrite_r+0x262>
 80054ae:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80054b2:	6820      	ldr	r0, [r4, #0]
 80054b4:	45b9      	cmp	r9, r7
 80054b6:	464b      	mov	r3, r9
 80054b8:	bf28      	it	cs
 80054ba:	463b      	movcs	r3, r7
 80054bc:	4288      	cmp	r0, r1
 80054be:	d903      	bls.n	80054c8 <__sfvwrite_r+0x198>
 80054c0:	68a5      	ldr	r5, [r4, #8]
 80054c2:	4415      	add	r5, r2
 80054c4:	42ab      	cmp	r3, r5
 80054c6:	dc71      	bgt.n	80055ac <__sfvwrite_r+0x27c>
 80054c8:	429a      	cmp	r2, r3
 80054ca:	f300 8093 	bgt.w	80055f4 <__sfvwrite_r+0x2c4>
 80054ce:	4613      	mov	r3, r2
 80054d0:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80054d2:	69e1      	ldr	r1, [r4, #28]
 80054d4:	4632      	mov	r2, r6
 80054d6:	4650      	mov	r0, sl
 80054d8:	47a8      	blx	r5
 80054da:	1e05      	subs	r5, r0, #0
 80054dc:	dd18      	ble.n	8005510 <__sfvwrite_r+0x1e0>
 80054de:	ebb9 0905 	subs.w	r9, r9, r5
 80054e2:	d00f      	beq.n	8005504 <__sfvwrite_r+0x1d4>
 80054e4:	2001      	movs	r0, #1
 80054e6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80054ea:	1b5b      	subs	r3, r3, r5
 80054ec:	442e      	add	r6, r5
 80054ee:	1b7f      	subs	r7, r7, r5
 80054f0:	f8c8 3008 	str.w	r3, [r8, #8]
 80054f4:	2b00      	cmp	r3, #0
 80054f6:	d1d6      	bne.n	80054a6 <__sfvwrite_r+0x176>
 80054f8:	2000      	movs	r0, #0
 80054fa:	b003      	add	sp, #12
 80054fc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005500:	2000      	movs	r0, #0
 8005502:	4770      	bx	lr
 8005504:	4621      	mov	r1, r4
 8005506:	4650      	mov	r0, sl
 8005508:	f7ff fd20 	bl	8004f4c <_fflush_r>
 800550c:	2800      	cmp	r0, #0
 800550e:	d0ea      	beq.n	80054e6 <__sfvwrite_r+0x1b6>
 8005510:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005514:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005518:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800551c:	81a3      	strh	r3, [r4, #12]
 800551e:	b003      	add	sp, #12
 8005520:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005524:	6923      	ldr	r3, [r4, #16]
 8005526:	4283      	cmp	r3, r0
 8005528:	d315      	bcc.n	8005556 <__sfvwrite_r+0x226>
 800552a:	6961      	ldr	r1, [r4, #20]
 800552c:	42a9      	cmp	r1, r5
 800552e:	d812      	bhi.n	8005556 <__sfvwrite_r+0x226>
 8005530:	4b3c      	ldr	r3, [pc, #240]	; (8005624 <__sfvwrite_r+0x2f4>)
 8005532:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005534:	429d      	cmp	r5, r3
 8005536:	bf94      	ite	ls
 8005538:	462b      	movls	r3, r5
 800553a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800553e:	464a      	mov	r2, r9
 8005540:	fb93 f3f1 	sdiv	r3, r3, r1
 8005544:	4650      	mov	r0, sl
 8005546:	fb01 f303 	mul.w	r3, r1, r3
 800554a:	69e1      	ldr	r1, [r4, #28]
 800554c:	47b8      	blx	r7
 800554e:	1e07      	subs	r7, r0, #0
 8005550:	ddde      	ble.n	8005510 <__sfvwrite_r+0x1e0>
 8005552:	1bed      	subs	r5, r5, r7
 8005554:	e78e      	b.n	8005474 <__sfvwrite_r+0x144>
 8005556:	42af      	cmp	r7, r5
 8005558:	bf28      	it	cs
 800555a:	462f      	movcs	r7, r5
 800555c:	463a      	mov	r2, r7
 800555e:	4649      	mov	r1, r9
 8005560:	f000 fbc0 	bl	8005ce4 <memmove>
 8005564:	68a3      	ldr	r3, [r4, #8]
 8005566:	6822      	ldr	r2, [r4, #0]
 8005568:	1bdb      	subs	r3, r3, r7
 800556a:	443a      	add	r2, r7
 800556c:	60a3      	str	r3, [r4, #8]
 800556e:	6022      	str	r2, [r4, #0]
 8005570:	2b00      	cmp	r3, #0
 8005572:	d1ee      	bne.n	8005552 <__sfvwrite_r+0x222>
 8005574:	4621      	mov	r1, r4
 8005576:	4650      	mov	r0, sl
 8005578:	f7ff fce8 	bl	8004f4c <_fflush_r>
 800557c:	2800      	cmp	r0, #0
 800557e:	d0e8      	beq.n	8005552 <__sfvwrite_r+0x222>
 8005580:	e7c6      	b.n	8005510 <__sfvwrite_r+0x1e0>
 8005582:	f10b 0308 	add.w	r3, fp, #8
 8005586:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800558a:	469b      	mov	fp, r3
 800558c:	3308      	adds	r3, #8
 800558e:	2f00      	cmp	r7, #0
 8005590:	d0f9      	beq.n	8005586 <__sfvwrite_r+0x256>
 8005592:	463a      	mov	r2, r7
 8005594:	210a      	movs	r1, #10
 8005596:	4630      	mov	r0, r6
 8005598:	f7fb f8c2 	bl	8000720 <memchr>
 800559c:	b338      	cbz	r0, 80055ee <__sfvwrite_r+0x2be>
 800559e:	3001      	adds	r0, #1
 80055a0:	eba0 0906 	sub.w	r9, r0, r6
 80055a4:	e783      	b.n	80054ae <__sfvwrite_r+0x17e>
 80055a6:	462f      	mov	r7, r5
 80055a8:	46ab      	mov	fp, r5
 80055aa:	e757      	b.n	800545c <__sfvwrite_r+0x12c>
 80055ac:	4631      	mov	r1, r6
 80055ae:	462a      	mov	r2, r5
 80055b0:	f000 fb98 	bl	8005ce4 <memmove>
 80055b4:	6823      	ldr	r3, [r4, #0]
 80055b6:	442b      	add	r3, r5
 80055b8:	6023      	str	r3, [r4, #0]
 80055ba:	4621      	mov	r1, r4
 80055bc:	4650      	mov	r0, sl
 80055be:	f7ff fcc5 	bl	8004f4c <_fflush_r>
 80055c2:	2800      	cmp	r0, #0
 80055c4:	d08b      	beq.n	80054de <__sfvwrite_r+0x1ae>
 80055c6:	e7a3      	b.n	8005510 <__sfvwrite_r+0x1e0>
 80055c8:	4650      	mov	r0, sl
 80055ca:	f000 ff05 	bl	80063d8 <_realloc_r>
 80055ce:	4603      	mov	r3, r0
 80055d0:	2800      	cmp	r0, #0
 80055d2:	f47f af39 	bne.w	8005448 <__sfvwrite_r+0x118>
 80055d6:	6921      	ldr	r1, [r4, #16]
 80055d8:	4650      	mov	r0, sl
 80055da:	f7ff fdb5 	bl	8005148 <_free_r>
 80055de:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055e2:	220c      	movs	r2, #12
 80055e4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80055e8:	f8ca 2000 	str.w	r2, [sl]
 80055ec:	e792      	b.n	8005514 <__sfvwrite_r+0x1e4>
 80055ee:	f107 0901 	add.w	r9, r7, #1
 80055f2:	e75c      	b.n	80054ae <__sfvwrite_r+0x17e>
 80055f4:	461a      	mov	r2, r3
 80055f6:	4631      	mov	r1, r6
 80055f8:	9301      	str	r3, [sp, #4]
 80055fa:	f000 fb73 	bl	8005ce4 <memmove>
 80055fe:	9b01      	ldr	r3, [sp, #4]
 8005600:	68a1      	ldr	r1, [r4, #8]
 8005602:	6822      	ldr	r2, [r4, #0]
 8005604:	1ac9      	subs	r1, r1, r3
 8005606:	441a      	add	r2, r3
 8005608:	60a1      	str	r1, [r4, #8]
 800560a:	6022      	str	r2, [r4, #0]
 800560c:	461d      	mov	r5, r3
 800560e:	e766      	b.n	80054de <__sfvwrite_r+0x1ae>
 8005610:	230c      	movs	r3, #12
 8005612:	f8ca 3000 	str.w	r3, [sl]
 8005616:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800561a:	e77b      	b.n	8005514 <__sfvwrite_r+0x1e4>
 800561c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005620:	e76b      	b.n	80054fa <__sfvwrite_r+0x1ca>
 8005622:	bf00      	nop
 8005624:	7ffffffe 	.word	0x7ffffffe
 8005628:	7ffffc00 	.word	0x7ffffc00

0800562c <_fwalk_reent>:
 800562c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005630:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005634:	d01f      	beq.n	8005676 <_fwalk_reent+0x4a>
 8005636:	4688      	mov	r8, r1
 8005638:	4606      	mov	r6, r0
 800563a:	f04f 0900 	mov.w	r9, #0
 800563e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005642:	3d01      	subs	r5, #1
 8005644:	d411      	bmi.n	800566a <_fwalk_reent+0x3e>
 8005646:	89a3      	ldrh	r3, [r4, #12]
 8005648:	2b01      	cmp	r3, #1
 800564a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800564e:	4621      	mov	r1, r4
 8005650:	4630      	mov	r0, r6
 8005652:	d906      	bls.n	8005662 <_fwalk_reent+0x36>
 8005654:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005658:	3301      	adds	r3, #1
 800565a:	d002      	beq.n	8005662 <_fwalk_reent+0x36>
 800565c:	47c0      	blx	r8
 800565e:	ea49 0900 	orr.w	r9, r9, r0
 8005662:	1c6b      	adds	r3, r5, #1
 8005664:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005668:	d1ed      	bne.n	8005646 <_fwalk_reent+0x1a>
 800566a:	683f      	ldr	r7, [r7, #0]
 800566c:	2f00      	cmp	r7, #0
 800566e:	d1e6      	bne.n	800563e <_fwalk_reent+0x12>
 8005670:	4648      	mov	r0, r9
 8005672:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005676:	46b9      	mov	r9, r7
 8005678:	4648      	mov	r0, r9
 800567a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800567e:	bf00      	nop

08005680 <_localeconv_r>:
 8005680:	4a04      	ldr	r2, [pc, #16]	; (8005694 <_localeconv_r+0x14>)
 8005682:	4b05      	ldr	r3, [pc, #20]	; (8005698 <_localeconv_r+0x18>)
 8005684:	6812      	ldr	r2, [r2, #0]
 8005686:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005688:	2800      	cmp	r0, #0
 800568a:	bf08      	it	eq
 800568c:	4618      	moveq	r0, r3
 800568e:	30f0      	adds	r0, #240	; 0xf0
 8005690:	4770      	bx	lr
 8005692:	bf00      	nop
 8005694:	20000018 	.word	0x20000018
 8005698:	2000085c 	.word	0x2000085c

0800569c <__retarget_lock_init_recursive>:
 800569c:	4770      	bx	lr
 800569e:	bf00      	nop

080056a0 <__retarget_lock_close_recursive>:
 80056a0:	4770      	bx	lr
 80056a2:	bf00      	nop

080056a4 <__retarget_lock_acquire_recursive>:
 80056a4:	4770      	bx	lr
 80056a6:	bf00      	nop

080056a8 <__retarget_lock_release_recursive>:
 80056a8:	4770      	bx	lr
 80056aa:	bf00      	nop

080056ac <__swhatbuf_r>:
 80056ac:	b570      	push	{r4, r5, r6, lr}
 80056ae:	460c      	mov	r4, r1
 80056b0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80056b4:	2900      	cmp	r1, #0
 80056b6:	b096      	sub	sp, #88	; 0x58
 80056b8:	4615      	mov	r5, r2
 80056ba:	461e      	mov	r6, r3
 80056bc:	da0f      	bge.n	80056de <__swhatbuf_r+0x32>
 80056be:	89a2      	ldrh	r2, [r4, #12]
 80056c0:	2300      	movs	r3, #0
 80056c2:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80056c6:	6033      	str	r3, [r6, #0]
 80056c8:	d104      	bne.n	80056d4 <__swhatbuf_r+0x28>
 80056ca:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80056ce:	602b      	str	r3, [r5, #0]
 80056d0:	b016      	add	sp, #88	; 0x58
 80056d2:	bd70      	pop	{r4, r5, r6, pc}
 80056d4:	2240      	movs	r2, #64	; 0x40
 80056d6:	4618      	mov	r0, r3
 80056d8:	602a      	str	r2, [r5, #0]
 80056da:	b016      	add	sp, #88	; 0x58
 80056dc:	bd70      	pop	{r4, r5, r6, pc}
 80056de:	466a      	mov	r2, sp
 80056e0:	f001 fad0 	bl	8006c84 <_fstat_r>
 80056e4:	2800      	cmp	r0, #0
 80056e6:	dbea      	blt.n	80056be <__swhatbuf_r+0x12>
 80056e8:	9b01      	ldr	r3, [sp, #4]
 80056ea:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80056ee:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80056f2:	fab3 f383 	clz	r3, r3
 80056f6:	095b      	lsrs	r3, r3, #5
 80056f8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80056fc:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005700:	6033      	str	r3, [r6, #0]
 8005702:	602a      	str	r2, [r5, #0]
 8005704:	b016      	add	sp, #88	; 0x58
 8005706:	bd70      	pop	{r4, r5, r6, pc}

08005708 <__smakebuf_r>:
 8005708:	898a      	ldrh	r2, [r1, #12]
 800570a:	0792      	lsls	r2, r2, #30
 800570c:	460b      	mov	r3, r1
 800570e:	d506      	bpl.n	800571e <__smakebuf_r+0x16>
 8005710:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005714:	2101      	movs	r1, #1
 8005716:	601a      	str	r2, [r3, #0]
 8005718:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800571c:	4770      	bx	lr
 800571e:	b570      	push	{r4, r5, r6, lr}
 8005720:	b082      	sub	sp, #8
 8005722:	ab01      	add	r3, sp, #4
 8005724:	466a      	mov	r2, sp
 8005726:	460c      	mov	r4, r1
 8005728:	4605      	mov	r5, r0
 800572a:	f7ff ffbf 	bl	80056ac <__swhatbuf_r>
 800572e:	9900      	ldr	r1, [sp, #0]
 8005730:	4606      	mov	r6, r0
 8005732:	4628      	mov	r0, r5
 8005734:	f000 f832 	bl	800579c <_malloc_r>
 8005738:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800573c:	b1d8      	cbz	r0, 8005776 <__smakebuf_r+0x6e>
 800573e:	4916      	ldr	r1, [pc, #88]	; (8005798 <__smakebuf_r+0x90>)
 8005740:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005742:	9a01      	ldr	r2, [sp, #4]
 8005744:	9900      	ldr	r1, [sp, #0]
 8005746:	6020      	str	r0, [r4, #0]
 8005748:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800574c:	81a3      	strh	r3, [r4, #12]
 800574e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005752:	b91a      	cbnz	r2, 800575c <__smakebuf_r+0x54>
 8005754:	4333      	orrs	r3, r6
 8005756:	81a3      	strh	r3, [r4, #12]
 8005758:	b002      	add	sp, #8
 800575a:	bd70      	pop	{r4, r5, r6, pc}
 800575c:	4628      	mov	r0, r5
 800575e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005762:	f001 faa3 	bl	8006cac <_isatty_r>
 8005766:	b1a0      	cbz	r0, 8005792 <__smakebuf_r+0x8a>
 8005768:	89a3      	ldrh	r3, [r4, #12]
 800576a:	f023 0303 	bic.w	r3, r3, #3
 800576e:	f043 0301 	orr.w	r3, r3, #1
 8005772:	b21b      	sxth	r3, r3
 8005774:	e7ee      	b.n	8005754 <__smakebuf_r+0x4c>
 8005776:	059a      	lsls	r2, r3, #22
 8005778:	d4ee      	bmi.n	8005758 <__smakebuf_r+0x50>
 800577a:	f023 0303 	bic.w	r3, r3, #3
 800577e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005782:	f043 0302 	orr.w	r3, r3, #2
 8005786:	2101      	movs	r1, #1
 8005788:	81a3      	strh	r3, [r4, #12]
 800578a:	6022      	str	r2, [r4, #0]
 800578c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005790:	e7e2      	b.n	8005758 <__smakebuf_r+0x50>
 8005792:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005796:	e7dd      	b.n	8005754 <__smakebuf_r+0x4c>
 8005798:	08004ff9 	.word	0x08004ff9

0800579c <_malloc_r>:
 800579c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80057a0:	f101 050b 	add.w	r5, r1, #11
 80057a4:	2d16      	cmp	r5, #22
 80057a6:	b083      	sub	sp, #12
 80057a8:	4606      	mov	r6, r0
 80057aa:	d823      	bhi.n	80057f4 <_malloc_r+0x58>
 80057ac:	2910      	cmp	r1, #16
 80057ae:	f200 80b9 	bhi.w	8005924 <_malloc_r+0x188>
 80057b2:	f000 fafb 	bl	8005dac <__malloc_lock>
 80057b6:	2510      	movs	r5, #16
 80057b8:	2318      	movs	r3, #24
 80057ba:	2002      	movs	r0, #2
 80057bc:	4fc5      	ldr	r7, [pc, #788]	; (8005ad4 <_malloc_r+0x338>)
 80057be:	443b      	add	r3, r7
 80057c0:	f1a3 0208 	sub.w	r2, r3, #8
 80057c4:	685c      	ldr	r4, [r3, #4]
 80057c6:	4294      	cmp	r4, r2
 80057c8:	f000 8166 	beq.w	8005a98 <_malloc_r+0x2fc>
 80057cc:	6863      	ldr	r3, [r4, #4]
 80057ce:	f023 0303 	bic.w	r3, r3, #3
 80057d2:	4423      	add	r3, r4
 80057d4:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 80057d8:	685a      	ldr	r2, [r3, #4]
 80057da:	60e9      	str	r1, [r5, #12]
 80057dc:	f042 0201 	orr.w	r2, r2, #1
 80057e0:	608d      	str	r5, [r1, #8]
 80057e2:	4630      	mov	r0, r6
 80057e4:	605a      	str	r2, [r3, #4]
 80057e6:	f000 fae7 	bl	8005db8 <__malloc_unlock>
 80057ea:	3408      	adds	r4, #8
 80057ec:	4620      	mov	r0, r4
 80057ee:	b003      	add	sp, #12
 80057f0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80057f4:	f035 0507 	bics.w	r5, r5, #7
 80057f8:	f100 8094 	bmi.w	8005924 <_malloc_r+0x188>
 80057fc:	42a9      	cmp	r1, r5
 80057fe:	f200 8091 	bhi.w	8005924 <_malloc_r+0x188>
 8005802:	f000 fad3 	bl	8005dac <__malloc_lock>
 8005806:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800580a:	f0c0 8183 	bcc.w	8005b14 <_malloc_r+0x378>
 800580e:	0a6b      	lsrs	r3, r5, #9
 8005810:	f000 808f 	beq.w	8005932 <_malloc_r+0x196>
 8005814:	2b04      	cmp	r3, #4
 8005816:	f200 8146 	bhi.w	8005aa6 <_malloc_r+0x30a>
 800581a:	09ab      	lsrs	r3, r5, #6
 800581c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005820:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005824:	00c3      	lsls	r3, r0, #3
 8005826:	4fab      	ldr	r7, [pc, #684]	; (8005ad4 <_malloc_r+0x338>)
 8005828:	443b      	add	r3, r7
 800582a:	f1a3 0108 	sub.w	r1, r3, #8
 800582e:	685c      	ldr	r4, [r3, #4]
 8005830:	42a1      	cmp	r1, r4
 8005832:	d106      	bne.n	8005842 <_malloc_r+0xa6>
 8005834:	e00c      	b.n	8005850 <_malloc_r+0xb4>
 8005836:	2a00      	cmp	r2, #0
 8005838:	f280 811d 	bge.w	8005a76 <_malloc_r+0x2da>
 800583c:	68e4      	ldr	r4, [r4, #12]
 800583e:	42a1      	cmp	r1, r4
 8005840:	d006      	beq.n	8005850 <_malloc_r+0xb4>
 8005842:	6863      	ldr	r3, [r4, #4]
 8005844:	f023 0303 	bic.w	r3, r3, #3
 8005848:	1b5a      	subs	r2, r3, r5
 800584a:	2a0f      	cmp	r2, #15
 800584c:	ddf3      	ble.n	8005836 <_malloc_r+0x9a>
 800584e:	4660      	mov	r0, ip
 8005850:	693c      	ldr	r4, [r7, #16]
 8005852:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005ae8 <_malloc_r+0x34c>
 8005856:	4564      	cmp	r4, ip
 8005858:	d071      	beq.n	800593e <_malloc_r+0x1a2>
 800585a:	6863      	ldr	r3, [r4, #4]
 800585c:	f023 0303 	bic.w	r3, r3, #3
 8005860:	1b5a      	subs	r2, r3, r5
 8005862:	2a0f      	cmp	r2, #15
 8005864:	f300 8144 	bgt.w	8005af0 <_malloc_r+0x354>
 8005868:	2a00      	cmp	r2, #0
 800586a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800586e:	f280 8126 	bge.w	8005abe <_malloc_r+0x322>
 8005872:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005876:	f080 8169 	bcs.w	8005b4c <_malloc_r+0x3b0>
 800587a:	08db      	lsrs	r3, r3, #3
 800587c:	1c59      	adds	r1, r3, #1
 800587e:	687a      	ldr	r2, [r7, #4]
 8005880:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005884:	f8c4 8008 	str.w	r8, [r4, #8]
 8005888:	f04f 0e01 	mov.w	lr, #1
 800588c:	109b      	asrs	r3, r3, #2
 800588e:	fa0e f303 	lsl.w	r3, lr, r3
 8005892:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005896:	4313      	orrs	r3, r2
 8005898:	f1ae 0208 	sub.w	r2, lr, #8
 800589c:	60e2      	str	r2, [r4, #12]
 800589e:	607b      	str	r3, [r7, #4]
 80058a0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 80058a4:	f8c8 400c 	str.w	r4, [r8, #12]
 80058a8:	1082      	asrs	r2, r0, #2
 80058aa:	2401      	movs	r4, #1
 80058ac:	4094      	lsls	r4, r2
 80058ae:	429c      	cmp	r4, r3
 80058b0:	d84b      	bhi.n	800594a <_malloc_r+0x1ae>
 80058b2:	421c      	tst	r4, r3
 80058b4:	d106      	bne.n	80058c4 <_malloc_r+0x128>
 80058b6:	f020 0003 	bic.w	r0, r0, #3
 80058ba:	0064      	lsls	r4, r4, #1
 80058bc:	421c      	tst	r4, r3
 80058be:	f100 0004 	add.w	r0, r0, #4
 80058c2:	d0fa      	beq.n	80058ba <_malloc_r+0x11e>
 80058c4:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 80058c8:	46ce      	mov	lr, r9
 80058ca:	4680      	mov	r8, r0
 80058cc:	f8de 300c 	ldr.w	r3, [lr, #12]
 80058d0:	459e      	cmp	lr, r3
 80058d2:	d107      	bne.n	80058e4 <_malloc_r+0x148>
 80058d4:	e122      	b.n	8005b1c <_malloc_r+0x380>
 80058d6:	2a00      	cmp	r2, #0
 80058d8:	f280 8129 	bge.w	8005b2e <_malloc_r+0x392>
 80058dc:	68db      	ldr	r3, [r3, #12]
 80058de:	459e      	cmp	lr, r3
 80058e0:	f000 811c 	beq.w	8005b1c <_malloc_r+0x380>
 80058e4:	6859      	ldr	r1, [r3, #4]
 80058e6:	f021 0103 	bic.w	r1, r1, #3
 80058ea:	1b4a      	subs	r2, r1, r5
 80058ec:	2a0f      	cmp	r2, #15
 80058ee:	ddf2      	ble.n	80058d6 <_malloc_r+0x13a>
 80058f0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 80058f4:	195c      	adds	r4, r3, r5
 80058f6:	f045 0501 	orr.w	r5, r5, #1
 80058fa:	605d      	str	r5, [r3, #4]
 80058fc:	f042 0501 	orr.w	r5, r2, #1
 8005900:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005904:	4630      	mov	r0, r6
 8005906:	f8ce 8008 	str.w	r8, [lr, #8]
 800590a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800590e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005912:	6065      	str	r5, [r4, #4]
 8005914:	505a      	str	r2, [r3, r1]
 8005916:	9301      	str	r3, [sp, #4]
 8005918:	f000 fa4e 	bl	8005db8 <__malloc_unlock>
 800591c:	9b01      	ldr	r3, [sp, #4]
 800591e:	f103 0408 	add.w	r4, r3, #8
 8005922:	e763      	b.n	80057ec <_malloc_r+0x50>
 8005924:	2400      	movs	r4, #0
 8005926:	230c      	movs	r3, #12
 8005928:	4620      	mov	r0, r4
 800592a:	6033      	str	r3, [r6, #0]
 800592c:	b003      	add	sp, #12
 800592e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005932:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005936:	2040      	movs	r0, #64	; 0x40
 8005938:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 800593c:	e773      	b.n	8005826 <_malloc_r+0x8a>
 800593e:	687b      	ldr	r3, [r7, #4]
 8005940:	1082      	asrs	r2, r0, #2
 8005942:	2401      	movs	r4, #1
 8005944:	4094      	lsls	r4, r2
 8005946:	429c      	cmp	r4, r3
 8005948:	d9b3      	bls.n	80058b2 <_malloc_r+0x116>
 800594a:	68bc      	ldr	r4, [r7, #8]
 800594c:	6863      	ldr	r3, [r4, #4]
 800594e:	f023 0903 	bic.w	r9, r3, #3
 8005952:	45a9      	cmp	r9, r5
 8005954:	d303      	bcc.n	800595e <_malloc_r+0x1c2>
 8005956:	eba9 0305 	sub.w	r3, r9, r5
 800595a:	2b0f      	cmp	r3, #15
 800595c:	dc7b      	bgt.n	8005a56 <_malloc_r+0x2ba>
 800595e:	4b5e      	ldr	r3, [pc, #376]	; (8005ad8 <_malloc_r+0x33c>)
 8005960:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005aec <_malloc_r+0x350>
 8005964:	681a      	ldr	r2, [r3, #0]
 8005966:	f8da 3000 	ldr.w	r3, [sl]
 800596a:	3301      	adds	r3, #1
 800596c:	eb05 0802 	add.w	r8, r5, r2
 8005970:	f000 8148 	beq.w	8005c04 <_malloc_r+0x468>
 8005974:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005978:	f108 080f 	add.w	r8, r8, #15
 800597c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005980:	f028 080f 	bic.w	r8, r8, #15
 8005984:	4641      	mov	r1, r8
 8005986:	4630      	mov	r0, r6
 8005988:	f000 ff08 	bl	800679c <_sbrk_r>
 800598c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005990:	4683      	mov	fp, r0
 8005992:	f000 8104 	beq.w	8005b9e <_malloc_r+0x402>
 8005996:	eb04 0009 	add.w	r0, r4, r9
 800599a:	4558      	cmp	r0, fp
 800599c:	f200 80fd 	bhi.w	8005b9a <_malloc_r+0x3fe>
 80059a0:	4a4e      	ldr	r2, [pc, #312]	; (8005adc <_malloc_r+0x340>)
 80059a2:	6813      	ldr	r3, [r2, #0]
 80059a4:	4443      	add	r3, r8
 80059a6:	6013      	str	r3, [r2, #0]
 80059a8:	f000 814d 	beq.w	8005c46 <_malloc_r+0x4aa>
 80059ac:	f8da 1000 	ldr.w	r1, [sl]
 80059b0:	3101      	adds	r1, #1
 80059b2:	bf1b      	ittet	ne
 80059b4:	ebab 0000 	subne.w	r0, fp, r0
 80059b8:	181b      	addne	r3, r3, r0
 80059ba:	f8ca b000 	streq.w	fp, [sl]
 80059be:	6013      	strne	r3, [r2, #0]
 80059c0:	f01b 0307 	ands.w	r3, fp, #7
 80059c4:	f000 8134 	beq.w	8005c30 <_malloc_r+0x494>
 80059c8:	f1c3 0108 	rsb	r1, r3, #8
 80059cc:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80059d0:	448b      	add	fp, r1
 80059d2:	3308      	adds	r3, #8
 80059d4:	44d8      	add	r8, fp
 80059d6:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80059da:	eba3 0808 	sub.w	r8, r3, r8
 80059de:	4641      	mov	r1, r8
 80059e0:	4630      	mov	r0, r6
 80059e2:	9201      	str	r2, [sp, #4]
 80059e4:	f000 feda 	bl	800679c <_sbrk_r>
 80059e8:	1c43      	adds	r3, r0, #1
 80059ea:	9a01      	ldr	r2, [sp, #4]
 80059ec:	f000 8146 	beq.w	8005c7c <_malloc_r+0x4e0>
 80059f0:	eba0 010b 	sub.w	r1, r0, fp
 80059f4:	4441      	add	r1, r8
 80059f6:	f041 0101 	orr.w	r1, r1, #1
 80059fa:	6813      	ldr	r3, [r2, #0]
 80059fc:	f8c7 b008 	str.w	fp, [r7, #8]
 8005a00:	4443      	add	r3, r8
 8005a02:	42bc      	cmp	r4, r7
 8005a04:	f8cb 1004 	str.w	r1, [fp, #4]
 8005a08:	6013      	str	r3, [r2, #0]
 8005a0a:	d015      	beq.n	8005a38 <_malloc_r+0x29c>
 8005a0c:	f1b9 0f0f 	cmp.w	r9, #15
 8005a10:	f240 8130 	bls.w	8005c74 <_malloc_r+0x4d8>
 8005a14:	6860      	ldr	r0, [r4, #4]
 8005a16:	f1a9 010c 	sub.w	r1, r9, #12
 8005a1a:	f021 0107 	bic.w	r1, r1, #7
 8005a1e:	f000 0001 	and.w	r0, r0, #1
 8005a22:	eb04 0c01 	add.w	ip, r4, r1
 8005a26:	4308      	orrs	r0, r1
 8005a28:	f04f 0e05 	mov.w	lr, #5
 8005a2c:	290f      	cmp	r1, #15
 8005a2e:	6060      	str	r0, [r4, #4]
 8005a30:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005a34:	f200 813a 	bhi.w	8005cac <_malloc_r+0x510>
 8005a38:	4a29      	ldr	r2, [pc, #164]	; (8005ae0 <_malloc_r+0x344>)
 8005a3a:	482a      	ldr	r0, [pc, #168]	; (8005ae4 <_malloc_r+0x348>)
 8005a3c:	6811      	ldr	r1, [r2, #0]
 8005a3e:	68bc      	ldr	r4, [r7, #8]
 8005a40:	428b      	cmp	r3, r1
 8005a42:	6801      	ldr	r1, [r0, #0]
 8005a44:	bf88      	it	hi
 8005a46:	6013      	strhi	r3, [r2, #0]
 8005a48:	6862      	ldr	r2, [r4, #4]
 8005a4a:	428b      	cmp	r3, r1
 8005a4c:	f022 0203 	bic.w	r2, r2, #3
 8005a50:	bf88      	it	hi
 8005a52:	6003      	strhi	r3, [r0, #0]
 8005a54:	e0a7      	b.n	8005ba6 <_malloc_r+0x40a>
 8005a56:	1962      	adds	r2, r4, r5
 8005a58:	f043 0301 	orr.w	r3, r3, #1
 8005a5c:	f045 0501 	orr.w	r5, r5, #1
 8005a60:	6065      	str	r5, [r4, #4]
 8005a62:	4630      	mov	r0, r6
 8005a64:	60ba      	str	r2, [r7, #8]
 8005a66:	6053      	str	r3, [r2, #4]
 8005a68:	f000 f9a6 	bl	8005db8 <__malloc_unlock>
 8005a6c:	3408      	adds	r4, #8
 8005a6e:	4620      	mov	r0, r4
 8005a70:	b003      	add	sp, #12
 8005a72:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a76:	4423      	add	r3, r4
 8005a78:	68e1      	ldr	r1, [r4, #12]
 8005a7a:	685a      	ldr	r2, [r3, #4]
 8005a7c:	68a5      	ldr	r5, [r4, #8]
 8005a7e:	f042 0201 	orr.w	r2, r2, #1
 8005a82:	60e9      	str	r1, [r5, #12]
 8005a84:	4630      	mov	r0, r6
 8005a86:	608d      	str	r5, [r1, #8]
 8005a88:	605a      	str	r2, [r3, #4]
 8005a8a:	f000 f995 	bl	8005db8 <__malloc_unlock>
 8005a8e:	3408      	adds	r4, #8
 8005a90:	4620      	mov	r0, r4
 8005a92:	b003      	add	sp, #12
 8005a94:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a98:	68dc      	ldr	r4, [r3, #12]
 8005a9a:	42a3      	cmp	r3, r4
 8005a9c:	bf08      	it	eq
 8005a9e:	3002      	addeq	r0, #2
 8005aa0:	f43f aed6 	beq.w	8005850 <_malloc_r+0xb4>
 8005aa4:	e692      	b.n	80057cc <_malloc_r+0x30>
 8005aa6:	2b14      	cmp	r3, #20
 8005aa8:	d971      	bls.n	8005b8e <_malloc_r+0x3f2>
 8005aaa:	2b54      	cmp	r3, #84	; 0x54
 8005aac:	f200 80ad 	bhi.w	8005c0a <_malloc_r+0x46e>
 8005ab0:	0b2b      	lsrs	r3, r5, #12
 8005ab2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005ab6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005aba:	00c3      	lsls	r3, r0, #3
 8005abc:	e6b3      	b.n	8005826 <_malloc_r+0x8a>
 8005abe:	4423      	add	r3, r4
 8005ac0:	4630      	mov	r0, r6
 8005ac2:	685a      	ldr	r2, [r3, #4]
 8005ac4:	f042 0201 	orr.w	r2, r2, #1
 8005ac8:	605a      	str	r2, [r3, #4]
 8005aca:	3408      	adds	r4, #8
 8005acc:	f000 f974 	bl	8005db8 <__malloc_unlock>
 8005ad0:	e68c      	b.n	80057ec <_malloc_r+0x50>
 8005ad2:	bf00      	nop
 8005ad4:	2000044c 	.word	0x2000044c
 8005ad8:	20000aa0 	.word	0x20000aa0
 8005adc:	20000a70 	.word	0x20000a70
 8005ae0:	20000a98 	.word	0x20000a98
 8005ae4:	20000a9c 	.word	0x20000a9c
 8005ae8:	20000454 	.word	0x20000454
 8005aec:	20000854 	.word	0x20000854
 8005af0:	1961      	adds	r1, r4, r5
 8005af2:	f045 0e01 	orr.w	lr, r5, #1
 8005af6:	f042 0501 	orr.w	r5, r2, #1
 8005afa:	f8c4 e004 	str.w	lr, [r4, #4]
 8005afe:	4630      	mov	r0, r6
 8005b00:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005b04:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005b08:	604d      	str	r5, [r1, #4]
 8005b0a:	50e2      	str	r2, [r4, r3]
 8005b0c:	f000 f954 	bl	8005db8 <__malloc_unlock>
 8005b10:	3408      	adds	r4, #8
 8005b12:	e66b      	b.n	80057ec <_malloc_r+0x50>
 8005b14:	08e8      	lsrs	r0, r5, #3
 8005b16:	f105 0308 	add.w	r3, r5, #8
 8005b1a:	e64f      	b.n	80057bc <_malloc_r+0x20>
 8005b1c:	f108 0801 	add.w	r8, r8, #1
 8005b20:	f018 0f03 	tst.w	r8, #3
 8005b24:	f10e 0e08 	add.w	lr, lr, #8
 8005b28:	f47f aed0 	bne.w	80058cc <_malloc_r+0x130>
 8005b2c:	e052      	b.n	8005bd4 <_malloc_r+0x438>
 8005b2e:	4419      	add	r1, r3
 8005b30:	461c      	mov	r4, r3
 8005b32:	684a      	ldr	r2, [r1, #4]
 8005b34:	68db      	ldr	r3, [r3, #12]
 8005b36:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005b3a:	f042 0201 	orr.w	r2, r2, #1
 8005b3e:	604a      	str	r2, [r1, #4]
 8005b40:	4630      	mov	r0, r6
 8005b42:	60eb      	str	r3, [r5, #12]
 8005b44:	609d      	str	r5, [r3, #8]
 8005b46:	f000 f937 	bl	8005db8 <__malloc_unlock>
 8005b4a:	e64f      	b.n	80057ec <_malloc_r+0x50>
 8005b4c:	0a5a      	lsrs	r2, r3, #9
 8005b4e:	2a04      	cmp	r2, #4
 8005b50:	d935      	bls.n	8005bbe <_malloc_r+0x422>
 8005b52:	2a14      	cmp	r2, #20
 8005b54:	d86f      	bhi.n	8005c36 <_malloc_r+0x49a>
 8005b56:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005b5a:	00c9      	lsls	r1, r1, #3
 8005b5c:	325b      	adds	r2, #91	; 0x5b
 8005b5e:	eb07 0e01 	add.w	lr, r7, r1
 8005b62:	5879      	ldr	r1, [r7, r1]
 8005b64:	f1ae 0e08 	sub.w	lr, lr, #8
 8005b68:	458e      	cmp	lr, r1
 8005b6a:	d058      	beq.n	8005c1e <_malloc_r+0x482>
 8005b6c:	684a      	ldr	r2, [r1, #4]
 8005b6e:	f022 0203 	bic.w	r2, r2, #3
 8005b72:	429a      	cmp	r2, r3
 8005b74:	d902      	bls.n	8005b7c <_malloc_r+0x3e0>
 8005b76:	6889      	ldr	r1, [r1, #8]
 8005b78:	458e      	cmp	lr, r1
 8005b7a:	d1f7      	bne.n	8005b6c <_malloc_r+0x3d0>
 8005b7c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005b80:	687b      	ldr	r3, [r7, #4]
 8005b82:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005b86:	f8ce 4008 	str.w	r4, [lr, #8]
 8005b8a:	60cc      	str	r4, [r1, #12]
 8005b8c:	e68c      	b.n	80058a8 <_malloc_r+0x10c>
 8005b8e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005b92:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005b96:	00c3      	lsls	r3, r0, #3
 8005b98:	e645      	b.n	8005826 <_malloc_r+0x8a>
 8005b9a:	42bc      	cmp	r4, r7
 8005b9c:	d072      	beq.n	8005c84 <_malloc_r+0x4e8>
 8005b9e:	68bc      	ldr	r4, [r7, #8]
 8005ba0:	6862      	ldr	r2, [r4, #4]
 8005ba2:	f022 0203 	bic.w	r2, r2, #3
 8005ba6:	4295      	cmp	r5, r2
 8005ba8:	eba2 0305 	sub.w	r3, r2, r5
 8005bac:	d802      	bhi.n	8005bb4 <_malloc_r+0x418>
 8005bae:	2b0f      	cmp	r3, #15
 8005bb0:	f73f af51 	bgt.w	8005a56 <_malloc_r+0x2ba>
 8005bb4:	4630      	mov	r0, r6
 8005bb6:	f000 f8ff 	bl	8005db8 <__malloc_unlock>
 8005bba:	2400      	movs	r4, #0
 8005bbc:	e616      	b.n	80057ec <_malloc_r+0x50>
 8005bbe:	099a      	lsrs	r2, r3, #6
 8005bc0:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005bc4:	00c9      	lsls	r1, r1, #3
 8005bc6:	3238      	adds	r2, #56	; 0x38
 8005bc8:	e7c9      	b.n	8005b5e <_malloc_r+0x3c2>
 8005bca:	f8d9 9000 	ldr.w	r9, [r9]
 8005bce:	4599      	cmp	r9, r3
 8005bd0:	f040 8083 	bne.w	8005cda <_malloc_r+0x53e>
 8005bd4:	f010 0f03 	tst.w	r0, #3
 8005bd8:	f1a9 0308 	sub.w	r3, r9, #8
 8005bdc:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005be0:	d1f3      	bne.n	8005bca <_malloc_r+0x42e>
 8005be2:	687b      	ldr	r3, [r7, #4]
 8005be4:	ea23 0304 	bic.w	r3, r3, r4
 8005be8:	607b      	str	r3, [r7, #4]
 8005bea:	0064      	lsls	r4, r4, #1
 8005bec:	429c      	cmp	r4, r3
 8005bee:	f63f aeac 	bhi.w	800594a <_malloc_r+0x1ae>
 8005bf2:	b91c      	cbnz	r4, 8005bfc <_malloc_r+0x460>
 8005bf4:	e6a9      	b.n	800594a <_malloc_r+0x1ae>
 8005bf6:	0064      	lsls	r4, r4, #1
 8005bf8:	f108 0804 	add.w	r8, r8, #4
 8005bfc:	421c      	tst	r4, r3
 8005bfe:	d0fa      	beq.n	8005bf6 <_malloc_r+0x45a>
 8005c00:	4640      	mov	r0, r8
 8005c02:	e65f      	b.n	80058c4 <_malloc_r+0x128>
 8005c04:	f108 0810 	add.w	r8, r8, #16
 8005c08:	e6bc      	b.n	8005984 <_malloc_r+0x1e8>
 8005c0a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005c0e:	d826      	bhi.n	8005c5e <_malloc_r+0x4c2>
 8005c10:	0beb      	lsrs	r3, r5, #15
 8005c12:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005c16:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005c1a:	00c3      	lsls	r3, r0, #3
 8005c1c:	e603      	b.n	8005826 <_malloc_r+0x8a>
 8005c1e:	687b      	ldr	r3, [r7, #4]
 8005c20:	1092      	asrs	r2, r2, #2
 8005c22:	f04f 0801 	mov.w	r8, #1
 8005c26:	fa08 f202 	lsl.w	r2, r8, r2
 8005c2a:	4313      	orrs	r3, r2
 8005c2c:	607b      	str	r3, [r7, #4]
 8005c2e:	e7a8      	b.n	8005b82 <_malloc_r+0x3e6>
 8005c30:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005c34:	e6ce      	b.n	80059d4 <_malloc_r+0x238>
 8005c36:	2a54      	cmp	r2, #84	; 0x54
 8005c38:	d829      	bhi.n	8005c8e <_malloc_r+0x4f2>
 8005c3a:	0b1a      	lsrs	r2, r3, #12
 8005c3c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005c40:	00c9      	lsls	r1, r1, #3
 8005c42:	326e      	adds	r2, #110	; 0x6e
 8005c44:	e78b      	b.n	8005b5e <_malloc_r+0x3c2>
 8005c46:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005c4a:	2900      	cmp	r1, #0
 8005c4c:	f47f aeae 	bne.w	80059ac <_malloc_r+0x210>
 8005c50:	eb09 0208 	add.w	r2, r9, r8
 8005c54:	68b9      	ldr	r1, [r7, #8]
 8005c56:	f042 0201 	orr.w	r2, r2, #1
 8005c5a:	604a      	str	r2, [r1, #4]
 8005c5c:	e6ec      	b.n	8005a38 <_malloc_r+0x29c>
 8005c5e:	f240 5254 	movw	r2, #1364	; 0x554
 8005c62:	4293      	cmp	r3, r2
 8005c64:	d81c      	bhi.n	8005ca0 <_malloc_r+0x504>
 8005c66:	0cab      	lsrs	r3, r5, #18
 8005c68:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005c6c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005c70:	00c3      	lsls	r3, r0, #3
 8005c72:	e5d8      	b.n	8005826 <_malloc_r+0x8a>
 8005c74:	2301      	movs	r3, #1
 8005c76:	f8cb 3004 	str.w	r3, [fp, #4]
 8005c7a:	e79b      	b.n	8005bb4 <_malloc_r+0x418>
 8005c7c:	2101      	movs	r1, #1
 8005c7e:	f04f 0800 	mov.w	r8, #0
 8005c82:	e6ba      	b.n	80059fa <_malloc_r+0x25e>
 8005c84:	4a16      	ldr	r2, [pc, #88]	; (8005ce0 <_malloc_r+0x544>)
 8005c86:	6813      	ldr	r3, [r2, #0]
 8005c88:	4443      	add	r3, r8
 8005c8a:	6013      	str	r3, [r2, #0]
 8005c8c:	e68e      	b.n	80059ac <_malloc_r+0x210>
 8005c8e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005c92:	d814      	bhi.n	8005cbe <_malloc_r+0x522>
 8005c94:	0bda      	lsrs	r2, r3, #15
 8005c96:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005c9a:	00c9      	lsls	r1, r1, #3
 8005c9c:	3277      	adds	r2, #119	; 0x77
 8005c9e:	e75e      	b.n	8005b5e <_malloc_r+0x3c2>
 8005ca0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005ca4:	207f      	movs	r0, #127	; 0x7f
 8005ca6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005caa:	e5bc      	b.n	8005826 <_malloc_r+0x8a>
 8005cac:	f104 0108 	add.w	r1, r4, #8
 8005cb0:	4630      	mov	r0, r6
 8005cb2:	9201      	str	r2, [sp, #4]
 8005cb4:	f7ff fa48 	bl	8005148 <_free_r>
 8005cb8:	9a01      	ldr	r2, [sp, #4]
 8005cba:	6813      	ldr	r3, [r2, #0]
 8005cbc:	e6bc      	b.n	8005a38 <_malloc_r+0x29c>
 8005cbe:	f240 5154 	movw	r1, #1364	; 0x554
 8005cc2:	428a      	cmp	r2, r1
 8005cc4:	d805      	bhi.n	8005cd2 <_malloc_r+0x536>
 8005cc6:	0c9a      	lsrs	r2, r3, #18
 8005cc8:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005ccc:	00c9      	lsls	r1, r1, #3
 8005cce:	327c      	adds	r2, #124	; 0x7c
 8005cd0:	e745      	b.n	8005b5e <_malloc_r+0x3c2>
 8005cd2:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005cd6:	227e      	movs	r2, #126	; 0x7e
 8005cd8:	e741      	b.n	8005b5e <_malloc_r+0x3c2>
 8005cda:	687b      	ldr	r3, [r7, #4]
 8005cdc:	e785      	b.n	8005bea <_malloc_r+0x44e>
 8005cde:	bf00      	nop
 8005ce0:	20000a70 	.word	0x20000a70

08005ce4 <memmove>:
 8005ce4:	4288      	cmp	r0, r1
 8005ce6:	b4f0      	push	{r4, r5, r6, r7}
 8005ce8:	d90d      	bls.n	8005d06 <memmove+0x22>
 8005cea:	188b      	adds	r3, r1, r2
 8005cec:	4283      	cmp	r3, r0
 8005cee:	d90a      	bls.n	8005d06 <memmove+0x22>
 8005cf0:	1884      	adds	r4, r0, r2
 8005cf2:	b132      	cbz	r2, 8005d02 <memmove+0x1e>
 8005cf4:	4622      	mov	r2, r4
 8005cf6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005cfa:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005cfe:	4299      	cmp	r1, r3
 8005d00:	d1f9      	bne.n	8005cf6 <memmove+0x12>
 8005d02:	bcf0      	pop	{r4, r5, r6, r7}
 8005d04:	4770      	bx	lr
 8005d06:	2a0f      	cmp	r2, #15
 8005d08:	d949      	bls.n	8005d9e <memmove+0xba>
 8005d0a:	ea40 0301 	orr.w	r3, r0, r1
 8005d0e:	079b      	lsls	r3, r3, #30
 8005d10:	d147      	bne.n	8005da2 <memmove+0xbe>
 8005d12:	f1a2 0310 	sub.w	r3, r2, #16
 8005d16:	091b      	lsrs	r3, r3, #4
 8005d18:	f101 0720 	add.w	r7, r1, #32
 8005d1c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005d20:	f101 0410 	add.w	r4, r1, #16
 8005d24:	f100 0510 	add.w	r5, r0, #16
 8005d28:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005d2c:	f845 6c10 	str.w	r6, [r5, #-16]
 8005d30:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005d34:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005d38:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005d3c:	f845 6c08 	str.w	r6, [r5, #-8]
 8005d40:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005d44:	f845 6c04 	str.w	r6, [r5, #-4]
 8005d48:	3410      	adds	r4, #16
 8005d4a:	42bc      	cmp	r4, r7
 8005d4c:	f105 0510 	add.w	r5, r5, #16
 8005d50:	d1ea      	bne.n	8005d28 <memmove+0x44>
 8005d52:	3301      	adds	r3, #1
 8005d54:	f002 050f 	and.w	r5, r2, #15
 8005d58:	011b      	lsls	r3, r3, #4
 8005d5a:	2d03      	cmp	r5, #3
 8005d5c:	4419      	add	r1, r3
 8005d5e:	4403      	add	r3, r0
 8005d60:	d921      	bls.n	8005da6 <memmove+0xc2>
 8005d62:	1f1f      	subs	r7, r3, #4
 8005d64:	460e      	mov	r6, r1
 8005d66:	462c      	mov	r4, r5
 8005d68:	3c04      	subs	r4, #4
 8005d6a:	f856 cb04 	ldr.w	ip, [r6], #4
 8005d6e:	f847 cf04 	str.w	ip, [r7, #4]!
 8005d72:	2c03      	cmp	r4, #3
 8005d74:	d8f8      	bhi.n	8005d68 <memmove+0x84>
 8005d76:	1f2c      	subs	r4, r5, #4
 8005d78:	f024 0403 	bic.w	r4, r4, #3
 8005d7c:	3404      	adds	r4, #4
 8005d7e:	4423      	add	r3, r4
 8005d80:	4421      	add	r1, r4
 8005d82:	f002 0203 	and.w	r2, r2, #3
 8005d86:	2a00      	cmp	r2, #0
 8005d88:	d0bb      	beq.n	8005d02 <memmove+0x1e>
 8005d8a:	3b01      	subs	r3, #1
 8005d8c:	440a      	add	r2, r1
 8005d8e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005d92:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005d96:	4291      	cmp	r1, r2
 8005d98:	d1f9      	bne.n	8005d8e <memmove+0xaa>
 8005d9a:	bcf0      	pop	{r4, r5, r6, r7}
 8005d9c:	4770      	bx	lr
 8005d9e:	4603      	mov	r3, r0
 8005da0:	e7f1      	b.n	8005d86 <memmove+0xa2>
 8005da2:	4603      	mov	r3, r0
 8005da4:	e7f1      	b.n	8005d8a <memmove+0xa6>
 8005da6:	462a      	mov	r2, r5
 8005da8:	e7ed      	b.n	8005d86 <memmove+0xa2>
 8005daa:	bf00      	nop

08005dac <__malloc_lock>:
 8005dac:	4801      	ldr	r0, [pc, #4]	; (8005db4 <__malloc_lock+0x8>)
 8005dae:	f7ff bc79 	b.w	80056a4 <__retarget_lock_acquire_recursive>
 8005db2:	bf00      	nop
 8005db4:	20000afc 	.word	0x20000afc

08005db8 <__malloc_unlock>:
 8005db8:	4801      	ldr	r0, [pc, #4]	; (8005dc0 <__malloc_unlock+0x8>)
 8005dba:	f7ff bc75 	b.w	80056a8 <__retarget_lock_release_recursive>
 8005dbe:	bf00      	nop
 8005dc0:	20000afc 	.word	0x20000afc

08005dc4 <_Balloc>:
 8005dc4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005dc6:	b570      	push	{r4, r5, r6, lr}
 8005dc8:	4605      	mov	r5, r0
 8005dca:	460c      	mov	r4, r1
 8005dcc:	b14b      	cbz	r3, 8005de2 <_Balloc+0x1e>
 8005dce:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005dd2:	b180      	cbz	r0, 8005df6 <_Balloc+0x32>
 8005dd4:	6802      	ldr	r2, [r0, #0]
 8005dd6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005dda:	2300      	movs	r3, #0
 8005ddc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005de0:	bd70      	pop	{r4, r5, r6, pc}
 8005de2:	2221      	movs	r2, #33	; 0x21
 8005de4:	2104      	movs	r1, #4
 8005de6:	f000 fe1d 	bl	8006a24 <_calloc_r>
 8005dea:	4603      	mov	r3, r0
 8005dec:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005dee:	2800      	cmp	r0, #0
 8005df0:	d1ed      	bne.n	8005dce <_Balloc+0xa>
 8005df2:	2000      	movs	r0, #0
 8005df4:	bd70      	pop	{r4, r5, r6, pc}
 8005df6:	2101      	movs	r1, #1
 8005df8:	fa01 f604 	lsl.w	r6, r1, r4
 8005dfc:	1d72      	adds	r2, r6, #5
 8005dfe:	4628      	mov	r0, r5
 8005e00:	0092      	lsls	r2, r2, #2
 8005e02:	f000 fe0f 	bl	8006a24 <_calloc_r>
 8005e06:	2800      	cmp	r0, #0
 8005e08:	d0f3      	beq.n	8005df2 <_Balloc+0x2e>
 8005e0a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005e0e:	e7e4      	b.n	8005dda <_Balloc+0x16>

08005e10 <_Bfree>:
 8005e10:	b131      	cbz	r1, 8005e20 <_Bfree+0x10>
 8005e12:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005e14:	684a      	ldr	r2, [r1, #4]
 8005e16:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005e1a:	6008      	str	r0, [r1, #0]
 8005e1c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005e20:	4770      	bx	lr
 8005e22:	bf00      	nop

08005e24 <__multadd>:
 8005e24:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005e26:	690c      	ldr	r4, [r1, #16]
 8005e28:	b083      	sub	sp, #12
 8005e2a:	460d      	mov	r5, r1
 8005e2c:	4606      	mov	r6, r0
 8005e2e:	f101 0c14 	add.w	ip, r1, #20
 8005e32:	2700      	movs	r7, #0
 8005e34:	f8dc 0000 	ldr.w	r0, [ip]
 8005e38:	b281      	uxth	r1, r0
 8005e3a:	fb02 3301 	mla	r3, r2, r1, r3
 8005e3e:	0c01      	lsrs	r1, r0, #16
 8005e40:	0c18      	lsrs	r0, r3, #16
 8005e42:	fb02 0101 	mla	r1, r2, r1, r0
 8005e46:	b29b      	uxth	r3, r3
 8005e48:	3701      	adds	r7, #1
 8005e4a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005e4e:	42bc      	cmp	r4, r7
 8005e50:	f84c 3b04 	str.w	r3, [ip], #4
 8005e54:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005e58:	dcec      	bgt.n	8005e34 <__multadd+0x10>
 8005e5a:	b13b      	cbz	r3, 8005e6c <__multadd+0x48>
 8005e5c:	68aa      	ldr	r2, [r5, #8]
 8005e5e:	42a2      	cmp	r2, r4
 8005e60:	dd07      	ble.n	8005e72 <__multadd+0x4e>
 8005e62:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005e66:	3401      	adds	r4, #1
 8005e68:	6153      	str	r3, [r2, #20]
 8005e6a:	612c      	str	r4, [r5, #16]
 8005e6c:	4628      	mov	r0, r5
 8005e6e:	b003      	add	sp, #12
 8005e70:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005e72:	6869      	ldr	r1, [r5, #4]
 8005e74:	9301      	str	r3, [sp, #4]
 8005e76:	3101      	adds	r1, #1
 8005e78:	4630      	mov	r0, r6
 8005e7a:	f7ff ffa3 	bl	8005dc4 <_Balloc>
 8005e7e:	692a      	ldr	r2, [r5, #16]
 8005e80:	3202      	adds	r2, #2
 8005e82:	f105 010c 	add.w	r1, r5, #12
 8005e86:	4607      	mov	r7, r0
 8005e88:	0092      	lsls	r2, r2, #2
 8005e8a:	300c      	adds	r0, #12
 8005e8c:	f7fa fb38 	bl	8000500 <memcpy>
 8005e90:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8005e92:	6869      	ldr	r1, [r5, #4]
 8005e94:	9b01      	ldr	r3, [sp, #4]
 8005e96:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8005e9a:	6028      	str	r0, [r5, #0]
 8005e9c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8005ea0:	463d      	mov	r5, r7
 8005ea2:	e7de      	b.n	8005e62 <__multadd+0x3e>

08005ea4 <__hi0bits>:
 8005ea4:	0c02      	lsrs	r2, r0, #16
 8005ea6:	0412      	lsls	r2, r2, #16
 8005ea8:	4603      	mov	r3, r0
 8005eaa:	b9c2      	cbnz	r2, 8005ede <__hi0bits+0x3a>
 8005eac:	0403      	lsls	r3, r0, #16
 8005eae:	2010      	movs	r0, #16
 8005eb0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8005eb4:	bf04      	itt	eq
 8005eb6:	021b      	lsleq	r3, r3, #8
 8005eb8:	3008      	addeq	r0, #8
 8005eba:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8005ebe:	bf04      	itt	eq
 8005ec0:	011b      	lsleq	r3, r3, #4
 8005ec2:	3004      	addeq	r0, #4
 8005ec4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8005ec8:	bf04      	itt	eq
 8005eca:	009b      	lsleq	r3, r3, #2
 8005ecc:	3002      	addeq	r0, #2
 8005ece:	2b00      	cmp	r3, #0
 8005ed0:	db04      	blt.n	8005edc <__hi0bits+0x38>
 8005ed2:	005b      	lsls	r3, r3, #1
 8005ed4:	d501      	bpl.n	8005eda <__hi0bits+0x36>
 8005ed6:	3001      	adds	r0, #1
 8005ed8:	4770      	bx	lr
 8005eda:	2020      	movs	r0, #32
 8005edc:	4770      	bx	lr
 8005ede:	2000      	movs	r0, #0
 8005ee0:	e7e6      	b.n	8005eb0 <__hi0bits+0xc>
 8005ee2:	bf00      	nop

08005ee4 <__lo0bits>:
 8005ee4:	6803      	ldr	r3, [r0, #0]
 8005ee6:	f013 0207 	ands.w	r2, r3, #7
 8005eea:	4601      	mov	r1, r0
 8005eec:	d007      	beq.n	8005efe <__lo0bits+0x1a>
 8005eee:	07da      	lsls	r2, r3, #31
 8005ef0:	d41f      	bmi.n	8005f32 <__lo0bits+0x4e>
 8005ef2:	0798      	lsls	r0, r3, #30
 8005ef4:	d51f      	bpl.n	8005f36 <__lo0bits+0x52>
 8005ef6:	085b      	lsrs	r3, r3, #1
 8005ef8:	600b      	str	r3, [r1, #0]
 8005efa:	2001      	movs	r0, #1
 8005efc:	4770      	bx	lr
 8005efe:	b298      	uxth	r0, r3
 8005f00:	b1a0      	cbz	r0, 8005f2c <__lo0bits+0x48>
 8005f02:	4610      	mov	r0, r2
 8005f04:	f013 0fff 	tst.w	r3, #255	; 0xff
 8005f08:	bf04      	itt	eq
 8005f0a:	0a1b      	lsreq	r3, r3, #8
 8005f0c:	3008      	addeq	r0, #8
 8005f0e:	071a      	lsls	r2, r3, #28
 8005f10:	bf04      	itt	eq
 8005f12:	091b      	lsreq	r3, r3, #4
 8005f14:	3004      	addeq	r0, #4
 8005f16:	079a      	lsls	r2, r3, #30
 8005f18:	bf04      	itt	eq
 8005f1a:	089b      	lsreq	r3, r3, #2
 8005f1c:	3002      	addeq	r0, #2
 8005f1e:	07da      	lsls	r2, r3, #31
 8005f20:	d402      	bmi.n	8005f28 <__lo0bits+0x44>
 8005f22:	085b      	lsrs	r3, r3, #1
 8005f24:	d00b      	beq.n	8005f3e <__lo0bits+0x5a>
 8005f26:	3001      	adds	r0, #1
 8005f28:	600b      	str	r3, [r1, #0]
 8005f2a:	4770      	bx	lr
 8005f2c:	0c1b      	lsrs	r3, r3, #16
 8005f2e:	2010      	movs	r0, #16
 8005f30:	e7e8      	b.n	8005f04 <__lo0bits+0x20>
 8005f32:	2000      	movs	r0, #0
 8005f34:	4770      	bx	lr
 8005f36:	089b      	lsrs	r3, r3, #2
 8005f38:	600b      	str	r3, [r1, #0]
 8005f3a:	2002      	movs	r0, #2
 8005f3c:	4770      	bx	lr
 8005f3e:	2020      	movs	r0, #32
 8005f40:	4770      	bx	lr
 8005f42:	bf00      	nop

08005f44 <__i2b>:
 8005f44:	b510      	push	{r4, lr}
 8005f46:	460c      	mov	r4, r1
 8005f48:	2101      	movs	r1, #1
 8005f4a:	f7ff ff3b 	bl	8005dc4 <_Balloc>
 8005f4e:	2201      	movs	r2, #1
 8005f50:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8005f54:	bd10      	pop	{r4, pc}
 8005f56:	bf00      	nop

08005f58 <__multiply>:
 8005f58:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005f5c:	690e      	ldr	r6, [r1, #16]
 8005f5e:	6914      	ldr	r4, [r2, #16]
 8005f60:	42a6      	cmp	r6, r4
 8005f62:	b083      	sub	sp, #12
 8005f64:	460f      	mov	r7, r1
 8005f66:	4615      	mov	r5, r2
 8005f68:	da04      	bge.n	8005f74 <__multiply+0x1c>
 8005f6a:	4632      	mov	r2, r6
 8005f6c:	462f      	mov	r7, r5
 8005f6e:	4626      	mov	r6, r4
 8005f70:	460d      	mov	r5, r1
 8005f72:	4614      	mov	r4, r2
 8005f74:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8005f78:	eb06 0804 	add.w	r8, r6, r4
 8005f7c:	4543      	cmp	r3, r8
 8005f7e:	bfb8      	it	lt
 8005f80:	3101      	addlt	r1, #1
 8005f82:	f7ff ff1f 	bl	8005dc4 <_Balloc>
 8005f86:	f100 0914 	add.w	r9, r0, #20
 8005f8a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8005f8e:	45f1      	cmp	r9, lr
 8005f90:	9000      	str	r0, [sp, #0]
 8005f92:	d205      	bcs.n	8005fa0 <__multiply+0x48>
 8005f94:	464b      	mov	r3, r9
 8005f96:	2200      	movs	r2, #0
 8005f98:	f843 2b04 	str.w	r2, [r3], #4
 8005f9c:	459e      	cmp	lr, r3
 8005f9e:	d8fb      	bhi.n	8005f98 <__multiply+0x40>
 8005fa0:	f105 0a14 	add.w	sl, r5, #20
 8005fa4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8005fa8:	f107 0314 	add.w	r3, r7, #20
 8005fac:	45a2      	cmp	sl, r4
 8005fae:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8005fb2:	d261      	bcs.n	8006078 <__multiply+0x120>
 8005fb4:	1b64      	subs	r4, r4, r5
 8005fb6:	3c15      	subs	r4, #21
 8005fb8:	f024 0403 	bic.w	r4, r4, #3
 8005fbc:	f8cd e004 	str.w	lr, [sp, #4]
 8005fc0:	44a2      	add	sl, r4
 8005fc2:	f105 0210 	add.w	r2, r5, #16
 8005fc6:	469e      	mov	lr, r3
 8005fc8:	e005      	b.n	8005fd6 <__multiply+0x7e>
 8005fca:	0c2d      	lsrs	r5, r5, #16
 8005fcc:	d12b      	bne.n	8006026 <__multiply+0xce>
 8005fce:	4592      	cmp	sl, r2
 8005fd0:	f109 0904 	add.w	r9, r9, #4
 8005fd4:	d04e      	beq.n	8006074 <__multiply+0x11c>
 8005fd6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8005fda:	fa1f fb85 	uxth.w	fp, r5
 8005fde:	f1bb 0f00 	cmp.w	fp, #0
 8005fe2:	d0f2      	beq.n	8005fca <__multiply+0x72>
 8005fe4:	4677      	mov	r7, lr
 8005fe6:	464e      	mov	r6, r9
 8005fe8:	2000      	movs	r0, #0
 8005fea:	e000      	b.n	8005fee <__multiply+0x96>
 8005fec:	4626      	mov	r6, r4
 8005fee:	f857 1b04 	ldr.w	r1, [r7], #4
 8005ff2:	6834      	ldr	r4, [r6, #0]
 8005ff4:	b28b      	uxth	r3, r1
 8005ff6:	b2a5      	uxth	r5, r4
 8005ff8:	0c09      	lsrs	r1, r1, #16
 8005ffa:	0c24      	lsrs	r4, r4, #16
 8005ffc:	fb0b 5303 	mla	r3, fp, r3, r5
 8006000:	4403      	add	r3, r0
 8006002:	fb0b 4001 	mla	r0, fp, r1, r4
 8006006:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800600a:	4634      	mov	r4, r6
 800600c:	b29b      	uxth	r3, r3
 800600e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006012:	45bc      	cmp	ip, r7
 8006014:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006018:	f844 3b04 	str.w	r3, [r4], #4
 800601c:	d8e6      	bhi.n	8005fec <__multiply+0x94>
 800601e:	6070      	str	r0, [r6, #4]
 8006020:	6815      	ldr	r5, [r2, #0]
 8006022:	0c2d      	lsrs	r5, r5, #16
 8006024:	d0d3      	beq.n	8005fce <__multiply+0x76>
 8006026:	f8d9 3000 	ldr.w	r3, [r9]
 800602a:	4676      	mov	r6, lr
 800602c:	4618      	mov	r0, r3
 800602e:	46cb      	mov	fp, r9
 8006030:	2100      	movs	r1, #0
 8006032:	e000      	b.n	8006036 <__multiply+0xde>
 8006034:	46a3      	mov	fp, r4
 8006036:	8834      	ldrh	r4, [r6, #0]
 8006038:	0c00      	lsrs	r0, r0, #16
 800603a:	fb05 0004 	mla	r0, r5, r4, r0
 800603e:	4401      	add	r1, r0
 8006040:	b29b      	uxth	r3, r3
 8006042:	465c      	mov	r4, fp
 8006044:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006048:	f844 3b04 	str.w	r3, [r4], #4
 800604c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006050:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006054:	0c1b      	lsrs	r3, r3, #16
 8006056:	b287      	uxth	r7, r0
 8006058:	fb05 7303 	mla	r3, r5, r3, r7
 800605c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006060:	45b4      	cmp	ip, r6
 8006062:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006066:	d8e5      	bhi.n	8006034 <__multiply+0xdc>
 8006068:	4592      	cmp	sl, r2
 800606a:	f8cb 3004 	str.w	r3, [fp, #4]
 800606e:	f109 0904 	add.w	r9, r9, #4
 8006072:	d1b0      	bne.n	8005fd6 <__multiply+0x7e>
 8006074:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006078:	f1b8 0f00 	cmp.w	r8, #0
 800607c:	dd0b      	ble.n	8006096 <__multiply+0x13e>
 800607e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006082:	f1ae 0e04 	sub.w	lr, lr, #4
 8006086:	b11b      	cbz	r3, 8006090 <__multiply+0x138>
 8006088:	e005      	b.n	8006096 <__multiply+0x13e>
 800608a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800608e:	b913      	cbnz	r3, 8006096 <__multiply+0x13e>
 8006090:	f1b8 0801 	subs.w	r8, r8, #1
 8006094:	d1f9      	bne.n	800608a <__multiply+0x132>
 8006096:	9800      	ldr	r0, [sp, #0]
 8006098:	f8c0 8010 	str.w	r8, [r0, #16]
 800609c:	b003      	add	sp, #12
 800609e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80060a2:	bf00      	nop

080060a4 <__pow5mult>:
 80060a4:	f012 0303 	ands.w	r3, r2, #3
 80060a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80060ac:	4614      	mov	r4, r2
 80060ae:	4607      	mov	r7, r0
 80060b0:	d12e      	bne.n	8006110 <__pow5mult+0x6c>
 80060b2:	460d      	mov	r5, r1
 80060b4:	10a4      	asrs	r4, r4, #2
 80060b6:	d01c      	beq.n	80060f2 <__pow5mult+0x4e>
 80060b8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80060ba:	b396      	cbz	r6, 8006122 <__pow5mult+0x7e>
 80060bc:	07e3      	lsls	r3, r4, #31
 80060be:	f04f 0800 	mov.w	r8, #0
 80060c2:	d406      	bmi.n	80060d2 <__pow5mult+0x2e>
 80060c4:	1064      	asrs	r4, r4, #1
 80060c6:	d014      	beq.n	80060f2 <__pow5mult+0x4e>
 80060c8:	6830      	ldr	r0, [r6, #0]
 80060ca:	b1a8      	cbz	r0, 80060f8 <__pow5mult+0x54>
 80060cc:	4606      	mov	r6, r0
 80060ce:	07e3      	lsls	r3, r4, #31
 80060d0:	d5f8      	bpl.n	80060c4 <__pow5mult+0x20>
 80060d2:	4632      	mov	r2, r6
 80060d4:	4629      	mov	r1, r5
 80060d6:	4638      	mov	r0, r7
 80060d8:	f7ff ff3e 	bl	8005f58 <__multiply>
 80060dc:	b1b5      	cbz	r5, 800610c <__pow5mult+0x68>
 80060de:	686a      	ldr	r2, [r5, #4]
 80060e0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80060e2:	1064      	asrs	r4, r4, #1
 80060e4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80060e8:	6029      	str	r1, [r5, #0]
 80060ea:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80060ee:	4605      	mov	r5, r0
 80060f0:	d1ea      	bne.n	80060c8 <__pow5mult+0x24>
 80060f2:	4628      	mov	r0, r5
 80060f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80060f8:	4632      	mov	r2, r6
 80060fa:	4631      	mov	r1, r6
 80060fc:	4638      	mov	r0, r7
 80060fe:	f7ff ff2b 	bl	8005f58 <__multiply>
 8006102:	6030      	str	r0, [r6, #0]
 8006104:	f8c0 8000 	str.w	r8, [r0]
 8006108:	4606      	mov	r6, r0
 800610a:	e7e0      	b.n	80060ce <__pow5mult+0x2a>
 800610c:	4605      	mov	r5, r0
 800610e:	e7d9      	b.n	80060c4 <__pow5mult+0x20>
 8006110:	3b01      	subs	r3, #1
 8006112:	4a0b      	ldr	r2, [pc, #44]	; (8006140 <__pow5mult+0x9c>)
 8006114:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006118:	2300      	movs	r3, #0
 800611a:	f7ff fe83 	bl	8005e24 <__multadd>
 800611e:	4605      	mov	r5, r0
 8006120:	e7c8      	b.n	80060b4 <__pow5mult+0x10>
 8006122:	2101      	movs	r1, #1
 8006124:	4638      	mov	r0, r7
 8006126:	f7ff fe4d 	bl	8005dc4 <_Balloc>
 800612a:	f240 2371 	movw	r3, #625	; 0x271
 800612e:	6143      	str	r3, [r0, #20]
 8006130:	2201      	movs	r2, #1
 8006132:	2300      	movs	r3, #0
 8006134:	6102      	str	r2, [r0, #16]
 8006136:	4606      	mov	r6, r0
 8006138:	64b8      	str	r0, [r7, #72]	; 0x48
 800613a:	6003      	str	r3, [r0, #0]
 800613c:	e7be      	b.n	80060bc <__pow5mult+0x18>
 800613e:	bf00      	nop
 8006140:	08007130 	.word	0x08007130

08006144 <__lshift>:
 8006144:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006148:	4691      	mov	r9, r2
 800614a:	690a      	ldr	r2, [r1, #16]
 800614c:	460e      	mov	r6, r1
 800614e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006152:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006156:	eb04 0802 	add.w	r8, r4, r2
 800615a:	f108 0501 	add.w	r5, r8, #1
 800615e:	429d      	cmp	r5, r3
 8006160:	4607      	mov	r7, r0
 8006162:	dd04      	ble.n	800616e <__lshift+0x2a>
 8006164:	005b      	lsls	r3, r3, #1
 8006166:	429d      	cmp	r5, r3
 8006168:	f101 0101 	add.w	r1, r1, #1
 800616c:	dcfa      	bgt.n	8006164 <__lshift+0x20>
 800616e:	4638      	mov	r0, r7
 8006170:	f7ff fe28 	bl	8005dc4 <_Balloc>
 8006174:	2c00      	cmp	r4, #0
 8006176:	f100 0314 	add.w	r3, r0, #20
 800617a:	dd37      	ble.n	80061ec <__lshift+0xa8>
 800617c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006180:	2200      	movs	r2, #0
 8006182:	f843 2b04 	str.w	r2, [r3], #4
 8006186:	428b      	cmp	r3, r1
 8006188:	d1fb      	bne.n	8006182 <__lshift+0x3e>
 800618a:	6934      	ldr	r4, [r6, #16]
 800618c:	f106 0314 	add.w	r3, r6, #20
 8006190:	f019 091f 	ands.w	r9, r9, #31
 8006194:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006198:	d020      	beq.n	80061dc <__lshift+0x98>
 800619a:	f1c9 0e20 	rsb	lr, r9, #32
 800619e:	2200      	movs	r2, #0
 80061a0:	e000      	b.n	80061a4 <__lshift+0x60>
 80061a2:	4651      	mov	r1, sl
 80061a4:	681c      	ldr	r4, [r3, #0]
 80061a6:	468a      	mov	sl, r1
 80061a8:	fa04 f409 	lsl.w	r4, r4, r9
 80061ac:	4314      	orrs	r4, r2
 80061ae:	f84a 4b04 	str.w	r4, [sl], #4
 80061b2:	f853 2b04 	ldr.w	r2, [r3], #4
 80061b6:	4563      	cmp	r3, ip
 80061b8:	fa22 f20e 	lsr.w	r2, r2, lr
 80061bc:	d3f1      	bcc.n	80061a2 <__lshift+0x5e>
 80061be:	604a      	str	r2, [r1, #4]
 80061c0:	b10a      	cbz	r2, 80061c6 <__lshift+0x82>
 80061c2:	f108 0502 	add.w	r5, r8, #2
 80061c6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80061c8:	6872      	ldr	r2, [r6, #4]
 80061ca:	3d01      	subs	r5, #1
 80061cc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80061d0:	6105      	str	r5, [r0, #16]
 80061d2:	6031      	str	r1, [r6, #0]
 80061d4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80061d8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80061dc:	3904      	subs	r1, #4
 80061de:	f853 2b04 	ldr.w	r2, [r3], #4
 80061e2:	f841 2f04 	str.w	r2, [r1, #4]!
 80061e6:	459c      	cmp	ip, r3
 80061e8:	d8f9      	bhi.n	80061de <__lshift+0x9a>
 80061ea:	e7ec      	b.n	80061c6 <__lshift+0x82>
 80061ec:	4619      	mov	r1, r3
 80061ee:	e7cc      	b.n	800618a <__lshift+0x46>

080061f0 <__mcmp>:
 80061f0:	b430      	push	{r4, r5}
 80061f2:	690b      	ldr	r3, [r1, #16]
 80061f4:	4605      	mov	r5, r0
 80061f6:	6900      	ldr	r0, [r0, #16]
 80061f8:	1ac0      	subs	r0, r0, r3
 80061fa:	d10f      	bne.n	800621c <__mcmp+0x2c>
 80061fc:	009b      	lsls	r3, r3, #2
 80061fe:	3514      	adds	r5, #20
 8006200:	3114      	adds	r1, #20
 8006202:	4419      	add	r1, r3
 8006204:	442b      	add	r3, r5
 8006206:	e001      	b.n	800620c <__mcmp+0x1c>
 8006208:	429d      	cmp	r5, r3
 800620a:	d207      	bcs.n	800621c <__mcmp+0x2c>
 800620c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006210:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006214:	4294      	cmp	r4, r2
 8006216:	d0f7      	beq.n	8006208 <__mcmp+0x18>
 8006218:	d302      	bcc.n	8006220 <__mcmp+0x30>
 800621a:	2001      	movs	r0, #1
 800621c:	bc30      	pop	{r4, r5}
 800621e:	4770      	bx	lr
 8006220:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006224:	e7fa      	b.n	800621c <__mcmp+0x2c>
 8006226:	bf00      	nop

08006228 <__mdiff>:
 8006228:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800622c:	6913      	ldr	r3, [r2, #16]
 800622e:	690d      	ldr	r5, [r1, #16]
 8006230:	1aed      	subs	r5, r5, r3
 8006232:	2d00      	cmp	r5, #0
 8006234:	460e      	mov	r6, r1
 8006236:	4690      	mov	r8, r2
 8006238:	f101 0414 	add.w	r4, r1, #20
 800623c:	f102 0714 	add.w	r7, r2, #20
 8006240:	d114      	bne.n	800626c <__mdiff+0x44>
 8006242:	009b      	lsls	r3, r3, #2
 8006244:	18e2      	adds	r2, r4, r3
 8006246:	443b      	add	r3, r7
 8006248:	e001      	b.n	800624e <__mdiff+0x26>
 800624a:	42a2      	cmp	r2, r4
 800624c:	d959      	bls.n	8006302 <__mdiff+0xda>
 800624e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006252:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006256:	458c      	cmp	ip, r1
 8006258:	d0f7      	beq.n	800624a <__mdiff+0x22>
 800625a:	d209      	bcs.n	8006270 <__mdiff+0x48>
 800625c:	4622      	mov	r2, r4
 800625e:	4633      	mov	r3, r6
 8006260:	463c      	mov	r4, r7
 8006262:	4646      	mov	r6, r8
 8006264:	4617      	mov	r7, r2
 8006266:	4698      	mov	r8, r3
 8006268:	2501      	movs	r5, #1
 800626a:	e001      	b.n	8006270 <__mdiff+0x48>
 800626c:	dbf6      	blt.n	800625c <__mdiff+0x34>
 800626e:	2500      	movs	r5, #0
 8006270:	6871      	ldr	r1, [r6, #4]
 8006272:	f7ff fda7 	bl	8005dc4 <_Balloc>
 8006276:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800627a:	6936      	ldr	r6, [r6, #16]
 800627c:	60c5      	str	r5, [r0, #12]
 800627e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006282:	46bc      	mov	ip, r7
 8006284:	f100 0514 	add.w	r5, r0, #20
 8006288:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800628c:	2300      	movs	r3, #0
 800628e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006292:	f854 8b04 	ldr.w	r8, [r4], #4
 8006296:	b28a      	uxth	r2, r1
 8006298:	fa13 f388 	uxtah	r3, r3, r8
 800629c:	0c09      	lsrs	r1, r1, #16
 800629e:	1a9a      	subs	r2, r3, r2
 80062a0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80062a4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80062a8:	b292      	uxth	r2, r2
 80062aa:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80062ae:	45e6      	cmp	lr, ip
 80062b0:	f845 2b04 	str.w	r2, [r5], #4
 80062b4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80062b8:	d8e9      	bhi.n	800628e <__mdiff+0x66>
 80062ba:	42a7      	cmp	r7, r4
 80062bc:	d917      	bls.n	80062ee <__mdiff+0xc6>
 80062be:	46ae      	mov	lr, r5
 80062c0:	46a4      	mov	ip, r4
 80062c2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80062c6:	fa13 f382 	uxtah	r3, r3, r2
 80062ca:	1419      	asrs	r1, r3, #16
 80062cc:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80062d0:	b29b      	uxth	r3, r3
 80062d2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80062d6:	4567      	cmp	r7, ip
 80062d8:	f84e 2b04 	str.w	r2, [lr], #4
 80062dc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80062e0:	d8ef      	bhi.n	80062c2 <__mdiff+0x9a>
 80062e2:	43e4      	mvns	r4, r4
 80062e4:	4427      	add	r7, r4
 80062e6:	f027 0703 	bic.w	r7, r7, #3
 80062ea:	3704      	adds	r7, #4
 80062ec:	443d      	add	r5, r7
 80062ee:	3d04      	subs	r5, #4
 80062f0:	b922      	cbnz	r2, 80062fc <__mdiff+0xd4>
 80062f2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80062f6:	3e01      	subs	r6, #1
 80062f8:	2b00      	cmp	r3, #0
 80062fa:	d0fa      	beq.n	80062f2 <__mdiff+0xca>
 80062fc:	6106      	str	r6, [r0, #16]
 80062fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006302:	2100      	movs	r1, #0
 8006304:	f7ff fd5e 	bl	8005dc4 <_Balloc>
 8006308:	2201      	movs	r2, #1
 800630a:	2300      	movs	r3, #0
 800630c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006310:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006314 <__d2b>:
 8006314:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006318:	460f      	mov	r7, r1
 800631a:	b083      	sub	sp, #12
 800631c:	2101      	movs	r1, #1
 800631e:	ec55 4b10 	vmov	r4, r5, d0
 8006322:	4616      	mov	r6, r2
 8006324:	f7ff fd4e 	bl	8005dc4 <_Balloc>
 8006328:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800632c:	4681      	mov	r9, r0
 800632e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006332:	f1b8 0f00 	cmp.w	r8, #0
 8006336:	d001      	beq.n	800633c <__d2b+0x28>
 8006338:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800633c:	2c00      	cmp	r4, #0
 800633e:	9301      	str	r3, [sp, #4]
 8006340:	d024      	beq.n	800638c <__d2b+0x78>
 8006342:	a802      	add	r0, sp, #8
 8006344:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006348:	f7ff fdcc 	bl	8005ee4 <__lo0bits>
 800634c:	2800      	cmp	r0, #0
 800634e:	d136      	bne.n	80063be <__d2b+0xaa>
 8006350:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006354:	f8c9 2014 	str.w	r2, [r9, #20]
 8006358:	2b00      	cmp	r3, #0
 800635a:	bf0c      	ite	eq
 800635c:	2101      	moveq	r1, #1
 800635e:	2102      	movne	r1, #2
 8006360:	f8c9 3018 	str.w	r3, [r9, #24]
 8006364:	f8c9 1010 	str.w	r1, [r9, #16]
 8006368:	f1b8 0f00 	cmp.w	r8, #0
 800636c:	d11b      	bne.n	80063a6 <__d2b+0x92>
 800636e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006372:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006376:	6038      	str	r0, [r7, #0]
 8006378:	6918      	ldr	r0, [r3, #16]
 800637a:	f7ff fd93 	bl	8005ea4 <__hi0bits>
 800637e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006382:	6030      	str	r0, [r6, #0]
 8006384:	4648      	mov	r0, r9
 8006386:	b003      	add	sp, #12
 8006388:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800638c:	a801      	add	r0, sp, #4
 800638e:	f7ff fda9 	bl	8005ee4 <__lo0bits>
 8006392:	9b01      	ldr	r3, [sp, #4]
 8006394:	f8c9 3014 	str.w	r3, [r9, #20]
 8006398:	2101      	movs	r1, #1
 800639a:	3020      	adds	r0, #32
 800639c:	f8c9 1010 	str.w	r1, [r9, #16]
 80063a0:	f1b8 0f00 	cmp.w	r8, #0
 80063a4:	d0e3      	beq.n	800636e <__d2b+0x5a>
 80063a6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80063aa:	eb08 0300 	add.w	r3, r8, r0
 80063ae:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80063b2:	603b      	str	r3, [r7, #0]
 80063b4:	6030      	str	r0, [r6, #0]
 80063b6:	4648      	mov	r0, r9
 80063b8:	b003      	add	sp, #12
 80063ba:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80063be:	e9dd 1300 	ldrd	r1, r3, [sp]
 80063c2:	f1c0 0220 	rsb	r2, r0, #32
 80063c6:	fa03 f202 	lsl.w	r2, r3, r2
 80063ca:	430a      	orrs	r2, r1
 80063cc:	40c3      	lsrs	r3, r0
 80063ce:	9301      	str	r3, [sp, #4]
 80063d0:	f8c9 2014 	str.w	r2, [r9, #20]
 80063d4:	e7c0      	b.n	8006358 <__d2b+0x44>
 80063d6:	bf00      	nop

080063d8 <_realloc_r>:
 80063d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80063dc:	4692      	mov	sl, r2
 80063de:	b083      	sub	sp, #12
 80063e0:	2900      	cmp	r1, #0
 80063e2:	f000 80a1 	beq.w	8006528 <_realloc_r+0x150>
 80063e6:	460d      	mov	r5, r1
 80063e8:	4680      	mov	r8, r0
 80063ea:	f10a 040b 	add.w	r4, sl, #11
 80063ee:	f7ff fcdd 	bl	8005dac <__malloc_lock>
 80063f2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80063f6:	2c16      	cmp	r4, #22
 80063f8:	f022 0603 	bic.w	r6, r2, #3
 80063fc:	f1a5 0708 	sub.w	r7, r5, #8
 8006400:	d83e      	bhi.n	8006480 <_realloc_r+0xa8>
 8006402:	2410      	movs	r4, #16
 8006404:	4621      	mov	r1, r4
 8006406:	45a2      	cmp	sl, r4
 8006408:	d83f      	bhi.n	800648a <_realloc_r+0xb2>
 800640a:	428e      	cmp	r6, r1
 800640c:	eb07 0906 	add.w	r9, r7, r6
 8006410:	da74      	bge.n	80064fc <_realloc_r+0x124>
 8006412:	4bc7      	ldr	r3, [pc, #796]	; (8006730 <_realloc_r+0x358>)
 8006414:	6898      	ldr	r0, [r3, #8]
 8006416:	4548      	cmp	r0, r9
 8006418:	f000 80aa 	beq.w	8006570 <_realloc_r+0x198>
 800641c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006420:	f020 0301 	bic.w	r3, r0, #1
 8006424:	444b      	add	r3, r9
 8006426:	685b      	ldr	r3, [r3, #4]
 8006428:	07db      	lsls	r3, r3, #31
 800642a:	f140 8083 	bpl.w	8006534 <_realloc_r+0x15c>
 800642e:	07d2      	lsls	r2, r2, #31
 8006430:	d534      	bpl.n	800649c <_realloc_r+0xc4>
 8006432:	4651      	mov	r1, sl
 8006434:	4640      	mov	r0, r8
 8006436:	f7ff f9b1 	bl	800579c <_malloc_r>
 800643a:	4682      	mov	sl, r0
 800643c:	b1e0      	cbz	r0, 8006478 <_realloc_r+0xa0>
 800643e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006442:	f023 0301 	bic.w	r3, r3, #1
 8006446:	443b      	add	r3, r7
 8006448:	f1a0 0208 	sub.w	r2, r0, #8
 800644c:	4293      	cmp	r3, r2
 800644e:	f000 80f9 	beq.w	8006644 <_realloc_r+0x26c>
 8006452:	1f32      	subs	r2, r6, #4
 8006454:	2a24      	cmp	r2, #36	; 0x24
 8006456:	f200 8107 	bhi.w	8006668 <_realloc_r+0x290>
 800645a:	2a13      	cmp	r2, #19
 800645c:	6829      	ldr	r1, [r5, #0]
 800645e:	f200 80e6 	bhi.w	800662e <_realloc_r+0x256>
 8006462:	4603      	mov	r3, r0
 8006464:	462a      	mov	r2, r5
 8006466:	6019      	str	r1, [r3, #0]
 8006468:	6851      	ldr	r1, [r2, #4]
 800646a:	6059      	str	r1, [r3, #4]
 800646c:	6892      	ldr	r2, [r2, #8]
 800646e:	609a      	str	r2, [r3, #8]
 8006470:	4629      	mov	r1, r5
 8006472:	4640      	mov	r0, r8
 8006474:	f7fe fe68 	bl	8005148 <_free_r>
 8006478:	4640      	mov	r0, r8
 800647a:	f7ff fc9d 	bl	8005db8 <__malloc_unlock>
 800647e:	e04f      	b.n	8006520 <_realloc_r+0x148>
 8006480:	f024 0407 	bic.w	r4, r4, #7
 8006484:	2c00      	cmp	r4, #0
 8006486:	4621      	mov	r1, r4
 8006488:	dabd      	bge.n	8006406 <_realloc_r+0x2e>
 800648a:	f04f 0a00 	mov.w	sl, #0
 800648e:	230c      	movs	r3, #12
 8006490:	4650      	mov	r0, sl
 8006492:	f8c8 3000 	str.w	r3, [r8]
 8006496:	b003      	add	sp, #12
 8006498:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800649c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80064a0:	eba7 0b03 	sub.w	fp, r7, r3
 80064a4:	f8db 2004 	ldr.w	r2, [fp, #4]
 80064a8:	f022 0203 	bic.w	r2, r2, #3
 80064ac:	18b3      	adds	r3, r6, r2
 80064ae:	428b      	cmp	r3, r1
 80064b0:	dbbf      	blt.n	8006432 <_realloc_r+0x5a>
 80064b2:	46da      	mov	sl, fp
 80064b4:	f8db 100c 	ldr.w	r1, [fp, #12]
 80064b8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80064bc:	1f32      	subs	r2, r6, #4
 80064be:	2a24      	cmp	r2, #36	; 0x24
 80064c0:	60c1      	str	r1, [r0, #12]
 80064c2:	eb0b 0903 	add.w	r9, fp, r3
 80064c6:	6088      	str	r0, [r1, #8]
 80064c8:	f200 80c6 	bhi.w	8006658 <_realloc_r+0x280>
 80064cc:	2a13      	cmp	r2, #19
 80064ce:	6829      	ldr	r1, [r5, #0]
 80064d0:	f240 80c0 	bls.w	8006654 <_realloc_r+0x27c>
 80064d4:	f8cb 1008 	str.w	r1, [fp, #8]
 80064d8:	6869      	ldr	r1, [r5, #4]
 80064da:	f8cb 100c 	str.w	r1, [fp, #12]
 80064de:	2a1b      	cmp	r2, #27
 80064e0:	68a9      	ldr	r1, [r5, #8]
 80064e2:	f200 80d8 	bhi.w	8006696 <_realloc_r+0x2be>
 80064e6:	f10b 0210 	add.w	r2, fp, #16
 80064ea:	3508      	adds	r5, #8
 80064ec:	6011      	str	r1, [r2, #0]
 80064ee:	6869      	ldr	r1, [r5, #4]
 80064f0:	6051      	str	r1, [r2, #4]
 80064f2:	68a9      	ldr	r1, [r5, #8]
 80064f4:	6091      	str	r1, [r2, #8]
 80064f6:	461e      	mov	r6, r3
 80064f8:	465f      	mov	r7, fp
 80064fa:	4655      	mov	r5, sl
 80064fc:	687b      	ldr	r3, [r7, #4]
 80064fe:	1b32      	subs	r2, r6, r4
 8006500:	2a0f      	cmp	r2, #15
 8006502:	f003 0301 	and.w	r3, r3, #1
 8006506:	d822      	bhi.n	800654e <_realloc_r+0x176>
 8006508:	4333      	orrs	r3, r6
 800650a:	607b      	str	r3, [r7, #4]
 800650c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006510:	f043 0301 	orr.w	r3, r3, #1
 8006514:	f8c9 3004 	str.w	r3, [r9, #4]
 8006518:	4640      	mov	r0, r8
 800651a:	f7ff fc4d 	bl	8005db8 <__malloc_unlock>
 800651e:	46aa      	mov	sl, r5
 8006520:	4650      	mov	r0, sl
 8006522:	b003      	add	sp, #12
 8006524:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006528:	4611      	mov	r1, r2
 800652a:	b003      	add	sp, #12
 800652c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006530:	f7ff b934 	b.w	800579c <_malloc_r>
 8006534:	f020 0003 	bic.w	r0, r0, #3
 8006538:	1833      	adds	r3, r6, r0
 800653a:	428b      	cmp	r3, r1
 800653c:	db61      	blt.n	8006602 <_realloc_r+0x22a>
 800653e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006542:	461e      	mov	r6, r3
 8006544:	60ca      	str	r2, [r1, #12]
 8006546:	eb07 0903 	add.w	r9, r7, r3
 800654a:	6091      	str	r1, [r2, #8]
 800654c:	e7d6      	b.n	80064fc <_realloc_r+0x124>
 800654e:	1939      	adds	r1, r7, r4
 8006550:	4323      	orrs	r3, r4
 8006552:	f042 0201 	orr.w	r2, r2, #1
 8006556:	607b      	str	r3, [r7, #4]
 8006558:	604a      	str	r2, [r1, #4]
 800655a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800655e:	f043 0301 	orr.w	r3, r3, #1
 8006562:	3108      	adds	r1, #8
 8006564:	f8c9 3004 	str.w	r3, [r9, #4]
 8006568:	4640      	mov	r0, r8
 800656a:	f7fe fded 	bl	8005148 <_free_r>
 800656e:	e7d3      	b.n	8006518 <_realloc_r+0x140>
 8006570:	6840      	ldr	r0, [r0, #4]
 8006572:	f020 0903 	bic.w	r9, r0, #3
 8006576:	44b1      	add	r9, r6
 8006578:	f104 0010 	add.w	r0, r4, #16
 800657c:	4581      	cmp	r9, r0
 800657e:	da77      	bge.n	8006670 <_realloc_r+0x298>
 8006580:	07d2      	lsls	r2, r2, #31
 8006582:	f53f af56 	bmi.w	8006432 <_realloc_r+0x5a>
 8006586:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800658a:	eba7 0b02 	sub.w	fp, r7, r2
 800658e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006592:	f022 0203 	bic.w	r2, r2, #3
 8006596:	4491      	add	r9, r2
 8006598:	4548      	cmp	r0, r9
 800659a:	dc87      	bgt.n	80064ac <_realloc_r+0xd4>
 800659c:	46da      	mov	sl, fp
 800659e:	f8db 100c 	ldr.w	r1, [fp, #12]
 80065a2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80065a6:	1f32      	subs	r2, r6, #4
 80065a8:	2a24      	cmp	r2, #36	; 0x24
 80065aa:	60c1      	str	r1, [r0, #12]
 80065ac:	6088      	str	r0, [r1, #8]
 80065ae:	f200 80a1 	bhi.w	80066f4 <_realloc_r+0x31c>
 80065b2:	2a13      	cmp	r2, #19
 80065b4:	6829      	ldr	r1, [r5, #0]
 80065b6:	f240 809b 	bls.w	80066f0 <_realloc_r+0x318>
 80065ba:	f8cb 1008 	str.w	r1, [fp, #8]
 80065be:	6869      	ldr	r1, [r5, #4]
 80065c0:	f8cb 100c 	str.w	r1, [fp, #12]
 80065c4:	2a1b      	cmp	r2, #27
 80065c6:	68a9      	ldr	r1, [r5, #8]
 80065c8:	f200 809b 	bhi.w	8006702 <_realloc_r+0x32a>
 80065cc:	f10b 0210 	add.w	r2, fp, #16
 80065d0:	3508      	adds	r5, #8
 80065d2:	6011      	str	r1, [r2, #0]
 80065d4:	6869      	ldr	r1, [r5, #4]
 80065d6:	6051      	str	r1, [r2, #4]
 80065d8:	68a9      	ldr	r1, [r5, #8]
 80065da:	6091      	str	r1, [r2, #8]
 80065dc:	eb0b 0104 	add.w	r1, fp, r4
 80065e0:	eba9 0204 	sub.w	r2, r9, r4
 80065e4:	f042 0201 	orr.w	r2, r2, #1
 80065e8:	6099      	str	r1, [r3, #8]
 80065ea:	604a      	str	r2, [r1, #4]
 80065ec:	f8db 3004 	ldr.w	r3, [fp, #4]
 80065f0:	f003 0301 	and.w	r3, r3, #1
 80065f4:	431c      	orrs	r4, r3
 80065f6:	4640      	mov	r0, r8
 80065f8:	f8cb 4004 	str.w	r4, [fp, #4]
 80065fc:	f7ff fbdc 	bl	8005db8 <__malloc_unlock>
 8006600:	e78e      	b.n	8006520 <_realloc_r+0x148>
 8006602:	07d3      	lsls	r3, r2, #31
 8006604:	f53f af15 	bmi.w	8006432 <_realloc_r+0x5a>
 8006608:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800660c:	eba7 0b03 	sub.w	fp, r7, r3
 8006610:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006614:	f022 0203 	bic.w	r2, r2, #3
 8006618:	4410      	add	r0, r2
 800661a:	1983      	adds	r3, r0, r6
 800661c:	428b      	cmp	r3, r1
 800661e:	f6ff af45 	blt.w	80064ac <_realloc_r+0xd4>
 8006622:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006626:	46da      	mov	sl, fp
 8006628:	60ca      	str	r2, [r1, #12]
 800662a:	6091      	str	r1, [r2, #8]
 800662c:	e742      	b.n	80064b4 <_realloc_r+0xdc>
 800662e:	6001      	str	r1, [r0, #0]
 8006630:	686b      	ldr	r3, [r5, #4]
 8006632:	6043      	str	r3, [r0, #4]
 8006634:	2a1b      	cmp	r2, #27
 8006636:	d83a      	bhi.n	80066ae <_realloc_r+0x2d6>
 8006638:	f105 0208 	add.w	r2, r5, #8
 800663c:	f100 0308 	add.w	r3, r0, #8
 8006640:	68a9      	ldr	r1, [r5, #8]
 8006642:	e710      	b.n	8006466 <_realloc_r+0x8e>
 8006644:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006648:	f023 0303 	bic.w	r3, r3, #3
 800664c:	441e      	add	r6, r3
 800664e:	eb07 0906 	add.w	r9, r7, r6
 8006652:	e753      	b.n	80064fc <_realloc_r+0x124>
 8006654:	4652      	mov	r2, sl
 8006656:	e749      	b.n	80064ec <_realloc_r+0x114>
 8006658:	4629      	mov	r1, r5
 800665a:	4650      	mov	r0, sl
 800665c:	461e      	mov	r6, r3
 800665e:	465f      	mov	r7, fp
 8006660:	f7ff fb40 	bl	8005ce4 <memmove>
 8006664:	4655      	mov	r5, sl
 8006666:	e749      	b.n	80064fc <_realloc_r+0x124>
 8006668:	4629      	mov	r1, r5
 800666a:	f7ff fb3b 	bl	8005ce4 <memmove>
 800666e:	e6ff      	b.n	8006470 <_realloc_r+0x98>
 8006670:	4427      	add	r7, r4
 8006672:	eba9 0904 	sub.w	r9, r9, r4
 8006676:	f049 0201 	orr.w	r2, r9, #1
 800667a:	609f      	str	r7, [r3, #8]
 800667c:	607a      	str	r2, [r7, #4]
 800667e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006682:	f003 0301 	and.w	r3, r3, #1
 8006686:	431c      	orrs	r4, r3
 8006688:	4640      	mov	r0, r8
 800668a:	f845 4c04 	str.w	r4, [r5, #-4]
 800668e:	f7ff fb93 	bl	8005db8 <__malloc_unlock>
 8006692:	46aa      	mov	sl, r5
 8006694:	e744      	b.n	8006520 <_realloc_r+0x148>
 8006696:	f8cb 1010 	str.w	r1, [fp, #16]
 800669a:	68e9      	ldr	r1, [r5, #12]
 800669c:	f8cb 1014 	str.w	r1, [fp, #20]
 80066a0:	2a24      	cmp	r2, #36	; 0x24
 80066a2:	d010      	beq.n	80066c6 <_realloc_r+0x2ee>
 80066a4:	6929      	ldr	r1, [r5, #16]
 80066a6:	f10b 0218 	add.w	r2, fp, #24
 80066aa:	3510      	adds	r5, #16
 80066ac:	e71e      	b.n	80064ec <_realloc_r+0x114>
 80066ae:	68ab      	ldr	r3, [r5, #8]
 80066b0:	6083      	str	r3, [r0, #8]
 80066b2:	68eb      	ldr	r3, [r5, #12]
 80066b4:	60c3      	str	r3, [r0, #12]
 80066b6:	2a24      	cmp	r2, #36	; 0x24
 80066b8:	d010      	beq.n	80066dc <_realloc_r+0x304>
 80066ba:	f105 0210 	add.w	r2, r5, #16
 80066be:	f100 0310 	add.w	r3, r0, #16
 80066c2:	6929      	ldr	r1, [r5, #16]
 80066c4:	e6cf      	b.n	8006466 <_realloc_r+0x8e>
 80066c6:	692a      	ldr	r2, [r5, #16]
 80066c8:	f8cb 2018 	str.w	r2, [fp, #24]
 80066cc:	696a      	ldr	r2, [r5, #20]
 80066ce:	f8cb 201c 	str.w	r2, [fp, #28]
 80066d2:	69a9      	ldr	r1, [r5, #24]
 80066d4:	f10b 0220 	add.w	r2, fp, #32
 80066d8:	3518      	adds	r5, #24
 80066da:	e707      	b.n	80064ec <_realloc_r+0x114>
 80066dc:	692b      	ldr	r3, [r5, #16]
 80066de:	6103      	str	r3, [r0, #16]
 80066e0:	696b      	ldr	r3, [r5, #20]
 80066e2:	6143      	str	r3, [r0, #20]
 80066e4:	69a9      	ldr	r1, [r5, #24]
 80066e6:	f105 0218 	add.w	r2, r5, #24
 80066ea:	f100 0318 	add.w	r3, r0, #24
 80066ee:	e6ba      	b.n	8006466 <_realloc_r+0x8e>
 80066f0:	4652      	mov	r2, sl
 80066f2:	e76e      	b.n	80065d2 <_realloc_r+0x1fa>
 80066f4:	4629      	mov	r1, r5
 80066f6:	4650      	mov	r0, sl
 80066f8:	9301      	str	r3, [sp, #4]
 80066fa:	f7ff faf3 	bl	8005ce4 <memmove>
 80066fe:	9b01      	ldr	r3, [sp, #4]
 8006700:	e76c      	b.n	80065dc <_realloc_r+0x204>
 8006702:	f8cb 1010 	str.w	r1, [fp, #16]
 8006706:	68e9      	ldr	r1, [r5, #12]
 8006708:	f8cb 1014 	str.w	r1, [fp, #20]
 800670c:	2a24      	cmp	r2, #36	; 0x24
 800670e:	d004      	beq.n	800671a <_realloc_r+0x342>
 8006710:	6929      	ldr	r1, [r5, #16]
 8006712:	f10b 0218 	add.w	r2, fp, #24
 8006716:	3510      	adds	r5, #16
 8006718:	e75b      	b.n	80065d2 <_realloc_r+0x1fa>
 800671a:	692a      	ldr	r2, [r5, #16]
 800671c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006720:	696a      	ldr	r2, [r5, #20]
 8006722:	f8cb 201c 	str.w	r2, [fp, #28]
 8006726:	69a9      	ldr	r1, [r5, #24]
 8006728:	f10b 0220 	add.w	r2, fp, #32
 800672c:	3518      	adds	r5, #24
 800672e:	e750      	b.n	80065d2 <_realloc_r+0x1fa>
 8006730:	2000044c 	.word	0x2000044c

08006734 <frexp>:
 8006734:	ec53 2b10 	vmov	r2, r3, d0
 8006738:	b570      	push	{r4, r5, r6, lr}
 800673a:	4e16      	ldr	r6, [pc, #88]	; (8006794 <frexp+0x60>)
 800673c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006740:	2500      	movs	r5, #0
 8006742:	42b1      	cmp	r1, r6
 8006744:	4604      	mov	r4, r0
 8006746:	6005      	str	r5, [r0, #0]
 8006748:	dc21      	bgt.n	800678e <frexp+0x5a>
 800674a:	ee10 6a10 	vmov	r6, s0
 800674e:	430e      	orrs	r6, r1
 8006750:	d01d      	beq.n	800678e <frexp+0x5a>
 8006752:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006756:	4618      	mov	r0, r3
 8006758:	da0c      	bge.n	8006774 <frexp+0x40>
 800675a:	4619      	mov	r1, r3
 800675c:	2200      	movs	r2, #0
 800675e:	ee10 0a10 	vmov	r0, s0
 8006762:	4b0d      	ldr	r3, [pc, #52]	; (8006798 <frexp+0x64>)
 8006764:	f7fa f9e8 	bl	8000b38 <__aeabi_dmul>
 8006768:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800676c:	4602      	mov	r2, r0
 800676e:	4608      	mov	r0, r1
 8006770:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006774:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006778:	1509      	asrs	r1, r1, #20
 800677a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800677e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006782:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006786:	4429      	add	r1, r5
 8006788:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800678c:	6021      	str	r1, [r4, #0]
 800678e:	ec43 2b10 	vmov	d0, r2, r3
 8006792:	bd70      	pop	{r4, r5, r6, pc}
 8006794:	7fefffff 	.word	0x7fefffff
 8006798:	43500000 	.word	0x43500000

0800679c <_sbrk_r>:
 800679c:	b538      	push	{r3, r4, r5, lr}
 800679e:	4c07      	ldr	r4, [pc, #28]	; (80067bc <_sbrk_r+0x20>)
 80067a0:	2300      	movs	r3, #0
 80067a2:	4605      	mov	r5, r0
 80067a4:	4608      	mov	r0, r1
 80067a6:	6023      	str	r3, [r4, #0]
 80067a8:	f7fb fc35 	bl	8002016 <_sbrk>
 80067ac:	1c43      	adds	r3, r0, #1
 80067ae:	d000      	beq.n	80067b2 <_sbrk_r+0x16>
 80067b0:	bd38      	pop	{r3, r4, r5, pc}
 80067b2:	6823      	ldr	r3, [r4, #0]
 80067b4:	2b00      	cmp	r3, #0
 80067b6:	d0fb      	beq.n	80067b0 <_sbrk_r+0x14>
 80067b8:	602b      	str	r3, [r5, #0]
 80067ba:	bd38      	pop	{r3, r4, r5, pc}
 80067bc:	20000b10 	.word	0x20000b10

080067c0 <__sread>:
 80067c0:	b510      	push	{r4, lr}
 80067c2:	460c      	mov	r4, r1
 80067c4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80067c8:	f000 fabc 	bl	8006d44 <_read_r>
 80067cc:	2800      	cmp	r0, #0
 80067ce:	db03      	blt.n	80067d8 <__sread+0x18>
 80067d0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80067d2:	4403      	add	r3, r0
 80067d4:	6523      	str	r3, [r4, #80]	; 0x50
 80067d6:	bd10      	pop	{r4, pc}
 80067d8:	89a3      	ldrh	r3, [r4, #12]
 80067da:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 80067de:	81a3      	strh	r3, [r4, #12]
 80067e0:	bd10      	pop	{r4, pc}
 80067e2:	bf00      	nop

080067e4 <__swrite>:
 80067e4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80067e8:	4616      	mov	r6, r2
 80067ea:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80067ee:	461f      	mov	r7, r3
 80067f0:	05d3      	lsls	r3, r2, #23
 80067f2:	460c      	mov	r4, r1
 80067f4:	4605      	mov	r5, r0
 80067f6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80067fa:	d507      	bpl.n	800680c <__swrite+0x28>
 80067fc:	2200      	movs	r2, #0
 80067fe:	2302      	movs	r3, #2
 8006800:	f000 fa74 	bl	8006cec <_lseek_r>
 8006804:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006808:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800680c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006810:	81a2      	strh	r2, [r4, #12]
 8006812:	463b      	mov	r3, r7
 8006814:	4632      	mov	r2, r6
 8006816:	4628      	mov	r0, r5
 8006818:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800681c:	f000 b88c 	b.w	8006938 <_write_r>

08006820 <__sseek>:
 8006820:	b510      	push	{r4, lr}
 8006822:	460c      	mov	r4, r1
 8006824:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006828:	f000 fa60 	bl	8006cec <_lseek_r>
 800682c:	89a3      	ldrh	r3, [r4, #12]
 800682e:	1c42      	adds	r2, r0, #1
 8006830:	bf0e      	itee	eq
 8006832:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006836:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800683a:	6520      	strne	r0, [r4, #80]	; 0x50
 800683c:	81a3      	strh	r3, [r4, #12]
 800683e:	bd10      	pop	{r4, pc}

08006840 <__sclose>:
 8006840:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006844:	f000 b922 	b.w	8006a8c <_close_r>

08006848 <strncpy>:
 8006848:	ea40 0301 	orr.w	r3, r0, r1
 800684c:	079b      	lsls	r3, r3, #30
 800684e:	b470      	push	{r4, r5, r6}
 8006850:	d12a      	bne.n	80068a8 <strncpy+0x60>
 8006852:	2a03      	cmp	r2, #3
 8006854:	d928      	bls.n	80068a8 <strncpy+0x60>
 8006856:	460c      	mov	r4, r1
 8006858:	4603      	mov	r3, r0
 800685a:	4621      	mov	r1, r4
 800685c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006860:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006864:	ea25 0506 	bic.w	r5, r5, r6
 8006868:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 800686c:	d106      	bne.n	800687c <strncpy+0x34>
 800686e:	3a04      	subs	r2, #4
 8006870:	2a03      	cmp	r2, #3
 8006872:	f843 6b04 	str.w	r6, [r3], #4
 8006876:	4621      	mov	r1, r4
 8006878:	d8ef      	bhi.n	800685a <strncpy+0x12>
 800687a:	b19a      	cbz	r2, 80068a4 <strncpy+0x5c>
 800687c:	780c      	ldrb	r4, [r1, #0]
 800687e:	701c      	strb	r4, [r3, #0]
 8006880:	3a01      	subs	r2, #1
 8006882:	3301      	adds	r3, #1
 8006884:	b13c      	cbz	r4, 8006896 <strncpy+0x4e>
 8006886:	b16a      	cbz	r2, 80068a4 <strncpy+0x5c>
 8006888:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 800688c:	f803 4b01 	strb.w	r4, [r3], #1
 8006890:	3a01      	subs	r2, #1
 8006892:	2c00      	cmp	r4, #0
 8006894:	d1f7      	bne.n	8006886 <strncpy+0x3e>
 8006896:	b12a      	cbz	r2, 80068a4 <strncpy+0x5c>
 8006898:	441a      	add	r2, r3
 800689a:	2100      	movs	r1, #0
 800689c:	f803 1b01 	strb.w	r1, [r3], #1
 80068a0:	4293      	cmp	r3, r2
 80068a2:	d1fb      	bne.n	800689c <strncpy+0x54>
 80068a4:	bc70      	pop	{r4, r5, r6}
 80068a6:	4770      	bx	lr
 80068a8:	4603      	mov	r3, r0
 80068aa:	e7e6      	b.n	800687a <strncpy+0x32>

080068ac <__sprint_r.part.0>:
 80068ac:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80068b0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 80068b2:	049c      	lsls	r4, r3, #18
 80068b4:	4692      	mov	sl, r2
 80068b6:	d52d      	bpl.n	8006914 <__sprint_r.part.0+0x68>
 80068b8:	6893      	ldr	r3, [r2, #8]
 80068ba:	6812      	ldr	r2, [r2, #0]
 80068bc:	b343      	cbz	r3, 8006910 <__sprint_r.part.0+0x64>
 80068be:	460e      	mov	r6, r1
 80068c0:	4607      	mov	r7, r0
 80068c2:	f102 0908 	add.w	r9, r2, #8
 80068c6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 80068ca:	ea5f 089b 	movs.w	r8, fp, lsr #2
 80068ce:	d015      	beq.n	80068fc <__sprint_r.part.0+0x50>
 80068d0:	3d04      	subs	r5, #4
 80068d2:	2400      	movs	r4, #0
 80068d4:	e001      	b.n	80068da <__sprint_r.part.0+0x2e>
 80068d6:	45a0      	cmp	r8, r4
 80068d8:	d00e      	beq.n	80068f8 <__sprint_r.part.0+0x4c>
 80068da:	4632      	mov	r2, r6
 80068dc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 80068e0:	4638      	mov	r0, r7
 80068e2:	f000 f99d 	bl	8006c20 <_fputwc_r>
 80068e6:	1c43      	adds	r3, r0, #1
 80068e8:	f104 0401 	add.w	r4, r4, #1
 80068ec:	d1f3      	bne.n	80068d6 <__sprint_r.part.0+0x2a>
 80068ee:	2300      	movs	r3, #0
 80068f0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 80068f4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80068f8:	f8da 3008 	ldr.w	r3, [sl, #8]
 80068fc:	f02b 0b03 	bic.w	fp, fp, #3
 8006900:	eba3 030b 	sub.w	r3, r3, fp
 8006904:	f8ca 3008 	str.w	r3, [sl, #8]
 8006908:	f109 0908 	add.w	r9, r9, #8
 800690c:	2b00      	cmp	r3, #0
 800690e:	d1da      	bne.n	80068c6 <__sprint_r.part.0+0x1a>
 8006910:	2000      	movs	r0, #0
 8006912:	e7ec      	b.n	80068ee <__sprint_r.part.0+0x42>
 8006914:	f7fe fd0c 	bl	8005330 <__sfvwrite_r>
 8006918:	2300      	movs	r3, #0
 800691a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800691e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006922:	bf00      	nop

08006924 <__sprint_r>:
 8006924:	6893      	ldr	r3, [r2, #8]
 8006926:	b10b      	cbz	r3, 800692c <__sprint_r+0x8>
 8006928:	f7ff bfc0 	b.w	80068ac <__sprint_r.part.0>
 800692c:	b410      	push	{r4}
 800692e:	4618      	mov	r0, r3
 8006930:	6053      	str	r3, [r2, #4]
 8006932:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006936:	4770      	bx	lr

08006938 <_write_r>:
 8006938:	b570      	push	{r4, r5, r6, lr}
 800693a:	460d      	mov	r5, r1
 800693c:	4c08      	ldr	r4, [pc, #32]	; (8006960 <_write_r+0x28>)
 800693e:	4611      	mov	r1, r2
 8006940:	4606      	mov	r6, r0
 8006942:	461a      	mov	r2, r3
 8006944:	4628      	mov	r0, r5
 8006946:	2300      	movs	r3, #0
 8006948:	6023      	str	r3, [r4, #0]
 800694a:	f7fb fb51 	bl	8001ff0 <_write>
 800694e:	1c43      	adds	r3, r0, #1
 8006950:	d000      	beq.n	8006954 <_write_r+0x1c>
 8006952:	bd70      	pop	{r4, r5, r6, pc}
 8006954:	6823      	ldr	r3, [r4, #0]
 8006956:	2b00      	cmp	r3, #0
 8006958:	d0fb      	beq.n	8006952 <_write_r+0x1a>
 800695a:	6033      	str	r3, [r6, #0]
 800695c:	bd70      	pop	{r4, r5, r6, pc}
 800695e:	bf00      	nop
 8006960:	20000b10 	.word	0x20000b10

08006964 <__register_exitproc>:
 8006964:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006968:	4d2b      	ldr	r5, [pc, #172]	; (8006a18 <__register_exitproc+0xb4>)
 800696a:	4606      	mov	r6, r0
 800696c:	6828      	ldr	r0, [r5, #0]
 800696e:	4698      	mov	r8, r3
 8006970:	460f      	mov	r7, r1
 8006972:	4691      	mov	r9, r2
 8006974:	f7fe fe96 	bl	80056a4 <__retarget_lock_acquire_recursive>
 8006978:	4b28      	ldr	r3, [pc, #160]	; (8006a1c <__register_exitproc+0xb8>)
 800697a:	681c      	ldr	r4, [r3, #0]
 800697c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006980:	2b00      	cmp	r3, #0
 8006982:	d03d      	beq.n	8006a00 <__register_exitproc+0x9c>
 8006984:	685a      	ldr	r2, [r3, #4]
 8006986:	2a1f      	cmp	r2, #31
 8006988:	dc0d      	bgt.n	80069a6 <__register_exitproc+0x42>
 800698a:	f102 0c01 	add.w	ip, r2, #1
 800698e:	bb16      	cbnz	r6, 80069d6 <__register_exitproc+0x72>
 8006990:	3202      	adds	r2, #2
 8006992:	f8c3 c004 	str.w	ip, [r3, #4]
 8006996:	6828      	ldr	r0, [r5, #0]
 8006998:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800699c:	f7fe fe84 	bl	80056a8 <__retarget_lock_release_recursive>
 80069a0:	2000      	movs	r0, #0
 80069a2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80069a6:	4b1e      	ldr	r3, [pc, #120]	; (8006a20 <__register_exitproc+0xbc>)
 80069a8:	b37b      	cbz	r3, 8006a0a <__register_exitproc+0xa6>
 80069aa:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80069ae:	f3af 8000 	nop.w
 80069b2:	4603      	mov	r3, r0
 80069b4:	b348      	cbz	r0, 8006a0a <__register_exitproc+0xa6>
 80069b6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 80069ba:	2100      	movs	r1, #0
 80069bc:	e9c0 2100 	strd	r2, r1, [r0]
 80069c0:	f04f 0c01 	mov.w	ip, #1
 80069c4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 80069c8:	460a      	mov	r2, r1
 80069ca:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 80069ce:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 80069d2:	2e00      	cmp	r6, #0
 80069d4:	d0dc      	beq.n	8006990 <__register_exitproc+0x2c>
 80069d6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 80069da:	2401      	movs	r4, #1
 80069dc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 80069e0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 80069e4:	4094      	lsls	r4, r2
 80069e6:	4320      	orrs	r0, r4
 80069e8:	2e02      	cmp	r6, #2
 80069ea:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 80069ee:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 80069f2:	d1cd      	bne.n	8006990 <__register_exitproc+0x2c>
 80069f4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 80069f8:	430c      	orrs	r4, r1
 80069fa:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 80069fe:	e7c7      	b.n	8006990 <__register_exitproc+0x2c>
 8006a00:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006a04:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006a08:	e7bc      	b.n	8006984 <__register_exitproc+0x20>
 8006a0a:	6828      	ldr	r0, [r5, #0]
 8006a0c:	f7fe fe4c 	bl	80056a8 <__retarget_lock_release_recursive>
 8006a10:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006a14:	e7c5      	b.n	80069a2 <__register_exitproc+0x3e>
 8006a16:	bf00      	nop
 8006a18:	20000448 	.word	0x20000448
 8006a1c:	08006fc0 	.word	0x08006fc0
 8006a20:	00000000 	.word	0x00000000

08006a24 <_calloc_r>:
 8006a24:	b510      	push	{r4, lr}
 8006a26:	fb02 f101 	mul.w	r1, r2, r1
 8006a2a:	f7fe feb7 	bl	800579c <_malloc_r>
 8006a2e:	4604      	mov	r4, r0
 8006a30:	b1d8      	cbz	r0, 8006a6a <_calloc_r+0x46>
 8006a32:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006a36:	f022 0203 	bic.w	r2, r2, #3
 8006a3a:	3a04      	subs	r2, #4
 8006a3c:	2a24      	cmp	r2, #36	; 0x24
 8006a3e:	d81d      	bhi.n	8006a7c <_calloc_r+0x58>
 8006a40:	2a13      	cmp	r2, #19
 8006a42:	d914      	bls.n	8006a6e <_calloc_r+0x4a>
 8006a44:	2300      	movs	r3, #0
 8006a46:	2a1b      	cmp	r2, #27
 8006a48:	e9c0 3300 	strd	r3, r3, [r0]
 8006a4c:	d91b      	bls.n	8006a86 <_calloc_r+0x62>
 8006a4e:	2a24      	cmp	r2, #36	; 0x24
 8006a50:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006a54:	bf0a      	itet	eq
 8006a56:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006a5a:	f100 0210 	addne.w	r2, r0, #16
 8006a5e:	f100 0218 	addeq.w	r2, r0, #24
 8006a62:	2300      	movs	r3, #0
 8006a64:	e9c2 3300 	strd	r3, r3, [r2]
 8006a68:	6093      	str	r3, [r2, #8]
 8006a6a:	4620      	mov	r0, r4
 8006a6c:	bd10      	pop	{r4, pc}
 8006a6e:	4602      	mov	r2, r0
 8006a70:	2300      	movs	r3, #0
 8006a72:	e9c2 3300 	strd	r3, r3, [r2]
 8006a76:	6093      	str	r3, [r2, #8]
 8006a78:	4620      	mov	r0, r4
 8006a7a:	bd10      	pop	{r4, pc}
 8006a7c:	2100      	movs	r1, #0
 8006a7e:	f7fb fb6f 	bl	8002160 <memset>
 8006a82:	4620      	mov	r0, r4
 8006a84:	bd10      	pop	{r4, pc}
 8006a86:	f100 0208 	add.w	r2, r0, #8
 8006a8a:	e7f1      	b.n	8006a70 <_calloc_r+0x4c>

08006a8c <_close_r>:
 8006a8c:	b538      	push	{r3, r4, r5, lr}
 8006a8e:	4c07      	ldr	r4, [pc, #28]	; (8006aac <_close_r+0x20>)
 8006a90:	2300      	movs	r3, #0
 8006a92:	4605      	mov	r5, r0
 8006a94:	4608      	mov	r0, r1
 8006a96:	6023      	str	r3, [r4, #0]
 8006a98:	f7fb fad9 	bl	800204e <_close>
 8006a9c:	1c43      	adds	r3, r0, #1
 8006a9e:	d000      	beq.n	8006aa2 <_close_r+0x16>
 8006aa0:	bd38      	pop	{r3, r4, r5, pc}
 8006aa2:	6823      	ldr	r3, [r4, #0]
 8006aa4:	2b00      	cmp	r3, #0
 8006aa6:	d0fb      	beq.n	8006aa0 <_close_r+0x14>
 8006aa8:	602b      	str	r3, [r5, #0]
 8006aaa:	bd38      	pop	{r3, r4, r5, pc}
 8006aac:	20000b10 	.word	0x20000b10

08006ab0 <_fclose_r>:
 8006ab0:	b570      	push	{r4, r5, r6, lr}
 8006ab2:	2900      	cmp	r1, #0
 8006ab4:	d048      	beq.n	8006b48 <_fclose_r+0x98>
 8006ab6:	4605      	mov	r5, r0
 8006ab8:	460c      	mov	r4, r1
 8006aba:	b110      	cbz	r0, 8006ac2 <_fclose_r+0x12>
 8006abc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006abe:	2b00      	cmp	r3, #0
 8006ac0:	d048      	beq.n	8006b54 <_fclose_r+0xa4>
 8006ac2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006ac4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ac8:	07d0      	lsls	r0, r2, #31
 8006aca:	d440      	bmi.n	8006b4e <_fclose_r+0x9e>
 8006acc:	0599      	lsls	r1, r3, #22
 8006ace:	d530      	bpl.n	8006b32 <_fclose_r+0x82>
 8006ad0:	4621      	mov	r1, r4
 8006ad2:	4628      	mov	r0, r5
 8006ad4:	f7fe f990 	bl	8004df8 <__sflush_r>
 8006ad8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006ada:	4606      	mov	r6, r0
 8006adc:	b133      	cbz	r3, 8006aec <_fclose_r+0x3c>
 8006ade:	69e1      	ldr	r1, [r4, #28]
 8006ae0:	4628      	mov	r0, r5
 8006ae2:	4798      	blx	r3
 8006ae4:	2800      	cmp	r0, #0
 8006ae6:	bfb8      	it	lt
 8006ae8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006aec:	89a3      	ldrh	r3, [r4, #12]
 8006aee:	061a      	lsls	r2, r3, #24
 8006af0:	d43c      	bmi.n	8006b6c <_fclose_r+0xbc>
 8006af2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006af4:	b141      	cbz	r1, 8006b08 <_fclose_r+0x58>
 8006af6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006afa:	4299      	cmp	r1, r3
 8006afc:	d002      	beq.n	8006b04 <_fclose_r+0x54>
 8006afe:	4628      	mov	r0, r5
 8006b00:	f7fe fb22 	bl	8005148 <_free_r>
 8006b04:	2300      	movs	r3, #0
 8006b06:	6323      	str	r3, [r4, #48]	; 0x30
 8006b08:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006b0a:	b121      	cbz	r1, 8006b16 <_fclose_r+0x66>
 8006b0c:	4628      	mov	r0, r5
 8006b0e:	f7fe fb1b 	bl	8005148 <_free_r>
 8006b12:	2300      	movs	r3, #0
 8006b14:	6463      	str	r3, [r4, #68]	; 0x44
 8006b16:	f7fe faa1 	bl	800505c <__sfp_lock_acquire>
 8006b1a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006b1c:	2200      	movs	r2, #0
 8006b1e:	07db      	lsls	r3, r3, #31
 8006b20:	81a2      	strh	r2, [r4, #12]
 8006b22:	d51f      	bpl.n	8006b64 <_fclose_r+0xb4>
 8006b24:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b26:	f7fe fdbb 	bl	80056a0 <__retarget_lock_close_recursive>
 8006b2a:	f7fe fa9d 	bl	8005068 <__sfp_lock_release>
 8006b2e:	4630      	mov	r0, r6
 8006b30:	bd70      	pop	{r4, r5, r6, pc}
 8006b32:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b34:	f7fe fdb6 	bl	80056a4 <__retarget_lock_acquire_recursive>
 8006b38:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b3c:	2b00      	cmp	r3, #0
 8006b3e:	d1c7      	bne.n	8006ad0 <_fclose_r+0x20>
 8006b40:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006b42:	f016 0601 	ands.w	r6, r6, #1
 8006b46:	d016      	beq.n	8006b76 <_fclose_r+0xc6>
 8006b48:	2600      	movs	r6, #0
 8006b4a:	4630      	mov	r0, r6
 8006b4c:	bd70      	pop	{r4, r5, r6, pc}
 8006b4e:	2b00      	cmp	r3, #0
 8006b50:	d0fa      	beq.n	8006b48 <_fclose_r+0x98>
 8006b52:	e7bd      	b.n	8006ad0 <_fclose_r+0x20>
 8006b54:	f7fe fa56 	bl	8005004 <__sinit>
 8006b58:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006b5a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b5e:	07d0      	lsls	r0, r2, #31
 8006b60:	d4f5      	bmi.n	8006b4e <_fclose_r+0x9e>
 8006b62:	e7b3      	b.n	8006acc <_fclose_r+0x1c>
 8006b64:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b66:	f7fe fd9f 	bl	80056a8 <__retarget_lock_release_recursive>
 8006b6a:	e7db      	b.n	8006b24 <_fclose_r+0x74>
 8006b6c:	6921      	ldr	r1, [r4, #16]
 8006b6e:	4628      	mov	r0, r5
 8006b70:	f7fe faea 	bl	8005148 <_free_r>
 8006b74:	e7bd      	b.n	8006af2 <_fclose_r+0x42>
 8006b76:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006b78:	f7fe fd96 	bl	80056a8 <__retarget_lock_release_recursive>
 8006b7c:	4630      	mov	r0, r6
 8006b7e:	bd70      	pop	{r4, r5, r6, pc}

08006b80 <__fputwc>:
 8006b80:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006b84:	b082      	sub	sp, #8
 8006b86:	4681      	mov	r9, r0
 8006b88:	4688      	mov	r8, r1
 8006b8a:	4614      	mov	r4, r2
 8006b8c:	f000 f8a0 	bl	8006cd0 <__locale_mb_cur_max>
 8006b90:	2801      	cmp	r0, #1
 8006b92:	d103      	bne.n	8006b9c <__fputwc+0x1c>
 8006b94:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006b98:	2bfe      	cmp	r3, #254	; 0xfe
 8006b9a:	d933      	bls.n	8006c04 <__fputwc+0x84>
 8006b9c:	4642      	mov	r2, r8
 8006b9e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006ba2:	a901      	add	r1, sp, #4
 8006ba4:	4648      	mov	r0, r9
 8006ba6:	f000 f93b 	bl	8006e20 <_wcrtomb_r>
 8006baa:	1c42      	adds	r2, r0, #1
 8006bac:	4606      	mov	r6, r0
 8006bae:	d02f      	beq.n	8006c10 <__fputwc+0x90>
 8006bb0:	b320      	cbz	r0, 8006bfc <__fputwc+0x7c>
 8006bb2:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006bb6:	2500      	movs	r5, #0
 8006bb8:	f10d 0a04 	add.w	sl, sp, #4
 8006bbc:	e009      	b.n	8006bd2 <__fputwc+0x52>
 8006bbe:	6823      	ldr	r3, [r4, #0]
 8006bc0:	1c5a      	adds	r2, r3, #1
 8006bc2:	6022      	str	r2, [r4, #0]
 8006bc4:	f883 c000 	strb.w	ip, [r3]
 8006bc8:	3501      	adds	r5, #1
 8006bca:	42b5      	cmp	r5, r6
 8006bcc:	d216      	bcs.n	8006bfc <__fputwc+0x7c>
 8006bce:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006bd2:	68a3      	ldr	r3, [r4, #8]
 8006bd4:	3b01      	subs	r3, #1
 8006bd6:	2b00      	cmp	r3, #0
 8006bd8:	60a3      	str	r3, [r4, #8]
 8006bda:	daf0      	bge.n	8006bbe <__fputwc+0x3e>
 8006bdc:	69a7      	ldr	r7, [r4, #24]
 8006bde:	42bb      	cmp	r3, r7
 8006be0:	4661      	mov	r1, ip
 8006be2:	4622      	mov	r2, r4
 8006be4:	4648      	mov	r0, r9
 8006be6:	db02      	blt.n	8006bee <__fputwc+0x6e>
 8006be8:	f1bc 0f0a 	cmp.w	ip, #10
 8006bec:	d1e7      	bne.n	8006bbe <__fputwc+0x3e>
 8006bee:	f000 f8bf 	bl	8006d70 <__swbuf_r>
 8006bf2:	1c43      	adds	r3, r0, #1
 8006bf4:	d1e8      	bne.n	8006bc8 <__fputwc+0x48>
 8006bf6:	b002      	add	sp, #8
 8006bf8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006bfc:	4640      	mov	r0, r8
 8006bfe:	b002      	add	sp, #8
 8006c00:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c04:	fa5f fc88 	uxtb.w	ip, r8
 8006c08:	4606      	mov	r6, r0
 8006c0a:	f88d c004 	strb.w	ip, [sp, #4]
 8006c0e:	e7d2      	b.n	8006bb6 <__fputwc+0x36>
 8006c10:	89a3      	ldrh	r3, [r4, #12]
 8006c12:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006c16:	81a3      	strh	r3, [r4, #12]
 8006c18:	b002      	add	sp, #8
 8006c1a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006c1e:	bf00      	nop

08006c20 <_fputwc_r>:
 8006c20:	b530      	push	{r4, r5, lr}
 8006c22:	4605      	mov	r5, r0
 8006c24:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006c26:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006c2a:	07c0      	lsls	r0, r0, #31
 8006c2c:	4614      	mov	r4, r2
 8006c2e:	b083      	sub	sp, #12
 8006c30:	b29a      	uxth	r2, r3
 8006c32:	d401      	bmi.n	8006c38 <_fputwc_r+0x18>
 8006c34:	0590      	lsls	r0, r2, #22
 8006c36:	d51c      	bpl.n	8006c72 <_fputwc_r+0x52>
 8006c38:	0490      	lsls	r0, r2, #18
 8006c3a:	d406      	bmi.n	8006c4a <_fputwc_r+0x2a>
 8006c3c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c3e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006c42:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006c46:	81a3      	strh	r3, [r4, #12]
 8006c48:	6662      	str	r2, [r4, #100]	; 0x64
 8006c4a:	4628      	mov	r0, r5
 8006c4c:	4622      	mov	r2, r4
 8006c4e:	f7ff ff97 	bl	8006b80 <__fputwc>
 8006c52:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006c54:	07da      	lsls	r2, r3, #31
 8006c56:	4605      	mov	r5, r0
 8006c58:	d402      	bmi.n	8006c60 <_fputwc_r+0x40>
 8006c5a:	89a3      	ldrh	r3, [r4, #12]
 8006c5c:	059b      	lsls	r3, r3, #22
 8006c5e:	d502      	bpl.n	8006c66 <_fputwc_r+0x46>
 8006c60:	4628      	mov	r0, r5
 8006c62:	b003      	add	sp, #12
 8006c64:	bd30      	pop	{r4, r5, pc}
 8006c66:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c68:	f7fe fd1e 	bl	80056a8 <__retarget_lock_release_recursive>
 8006c6c:	4628      	mov	r0, r5
 8006c6e:	b003      	add	sp, #12
 8006c70:	bd30      	pop	{r4, r5, pc}
 8006c72:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006c74:	9101      	str	r1, [sp, #4]
 8006c76:	f7fe fd15 	bl	80056a4 <__retarget_lock_acquire_recursive>
 8006c7a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c7e:	9901      	ldr	r1, [sp, #4]
 8006c80:	b29a      	uxth	r2, r3
 8006c82:	e7d9      	b.n	8006c38 <_fputwc_r+0x18>

08006c84 <_fstat_r>:
 8006c84:	b538      	push	{r3, r4, r5, lr}
 8006c86:	460b      	mov	r3, r1
 8006c88:	4c07      	ldr	r4, [pc, #28]	; (8006ca8 <_fstat_r+0x24>)
 8006c8a:	4605      	mov	r5, r0
 8006c8c:	4611      	mov	r1, r2
 8006c8e:	4618      	mov	r0, r3
 8006c90:	2300      	movs	r3, #0
 8006c92:	6023      	str	r3, [r4, #0]
 8006c94:	f7fb f9de 	bl	8002054 <_fstat>
 8006c98:	1c43      	adds	r3, r0, #1
 8006c9a:	d000      	beq.n	8006c9e <_fstat_r+0x1a>
 8006c9c:	bd38      	pop	{r3, r4, r5, pc}
 8006c9e:	6823      	ldr	r3, [r4, #0]
 8006ca0:	2b00      	cmp	r3, #0
 8006ca2:	d0fb      	beq.n	8006c9c <_fstat_r+0x18>
 8006ca4:	602b      	str	r3, [r5, #0]
 8006ca6:	bd38      	pop	{r3, r4, r5, pc}
 8006ca8:	20000b10 	.word	0x20000b10

08006cac <_isatty_r>:
 8006cac:	b538      	push	{r3, r4, r5, lr}
 8006cae:	4c07      	ldr	r4, [pc, #28]	; (8006ccc <_isatty_r+0x20>)
 8006cb0:	2300      	movs	r3, #0
 8006cb2:	4605      	mov	r5, r0
 8006cb4:	4608      	mov	r0, r1
 8006cb6:	6023      	str	r3, [r4, #0]
 8006cb8:	f7fb f9d1 	bl	800205e <_isatty>
 8006cbc:	1c43      	adds	r3, r0, #1
 8006cbe:	d000      	beq.n	8006cc2 <_isatty_r+0x16>
 8006cc0:	bd38      	pop	{r3, r4, r5, pc}
 8006cc2:	6823      	ldr	r3, [r4, #0]
 8006cc4:	2b00      	cmp	r3, #0
 8006cc6:	d0fb      	beq.n	8006cc0 <_isatty_r+0x14>
 8006cc8:	602b      	str	r3, [r5, #0]
 8006cca:	bd38      	pop	{r3, r4, r5, pc}
 8006ccc:	20000b10 	.word	0x20000b10

08006cd0 <__locale_mb_cur_max>:
 8006cd0:	4b04      	ldr	r3, [pc, #16]	; (8006ce4 <__locale_mb_cur_max+0x14>)
 8006cd2:	4a05      	ldr	r2, [pc, #20]	; (8006ce8 <__locale_mb_cur_max+0x18>)
 8006cd4:	681b      	ldr	r3, [r3, #0]
 8006cd6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006cd8:	2b00      	cmp	r3, #0
 8006cda:	bf08      	it	eq
 8006cdc:	4613      	moveq	r3, r2
 8006cde:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006ce2:	4770      	bx	lr
 8006ce4:	20000018 	.word	0x20000018
 8006ce8:	2000085c 	.word	0x2000085c

08006cec <_lseek_r>:
 8006cec:	b570      	push	{r4, r5, r6, lr}
 8006cee:	460d      	mov	r5, r1
 8006cf0:	4c08      	ldr	r4, [pc, #32]	; (8006d14 <_lseek_r+0x28>)
 8006cf2:	4611      	mov	r1, r2
 8006cf4:	4606      	mov	r6, r0
 8006cf6:	461a      	mov	r2, r3
 8006cf8:	4628      	mov	r0, r5
 8006cfa:	2300      	movs	r3, #0
 8006cfc:	6023      	str	r3, [r4, #0]
 8006cfe:	f7fb f9b0 	bl	8002062 <_lseek>
 8006d02:	1c43      	adds	r3, r0, #1
 8006d04:	d000      	beq.n	8006d08 <_lseek_r+0x1c>
 8006d06:	bd70      	pop	{r4, r5, r6, pc}
 8006d08:	6823      	ldr	r3, [r4, #0]
 8006d0a:	2b00      	cmp	r3, #0
 8006d0c:	d0fb      	beq.n	8006d06 <_lseek_r+0x1a>
 8006d0e:	6033      	str	r3, [r6, #0]
 8006d10:	bd70      	pop	{r4, r5, r6, pc}
 8006d12:	bf00      	nop
 8006d14:	20000b10 	.word	0x20000b10

08006d18 <__ascii_mbtowc>:
 8006d18:	b082      	sub	sp, #8
 8006d1a:	b149      	cbz	r1, 8006d30 <__ascii_mbtowc+0x18>
 8006d1c:	b15a      	cbz	r2, 8006d36 <__ascii_mbtowc+0x1e>
 8006d1e:	b16b      	cbz	r3, 8006d3c <__ascii_mbtowc+0x24>
 8006d20:	7813      	ldrb	r3, [r2, #0]
 8006d22:	600b      	str	r3, [r1, #0]
 8006d24:	7812      	ldrb	r2, [r2, #0]
 8006d26:	1c10      	adds	r0, r2, #0
 8006d28:	bf18      	it	ne
 8006d2a:	2001      	movne	r0, #1
 8006d2c:	b002      	add	sp, #8
 8006d2e:	4770      	bx	lr
 8006d30:	a901      	add	r1, sp, #4
 8006d32:	2a00      	cmp	r2, #0
 8006d34:	d1f3      	bne.n	8006d1e <__ascii_mbtowc+0x6>
 8006d36:	4610      	mov	r0, r2
 8006d38:	b002      	add	sp, #8
 8006d3a:	4770      	bx	lr
 8006d3c:	f06f 0001 	mvn.w	r0, #1
 8006d40:	e7f4      	b.n	8006d2c <__ascii_mbtowc+0x14>
 8006d42:	bf00      	nop

08006d44 <_read_r>:
 8006d44:	b570      	push	{r4, r5, r6, lr}
 8006d46:	460d      	mov	r5, r1
 8006d48:	4c08      	ldr	r4, [pc, #32]	; (8006d6c <_read_r+0x28>)
 8006d4a:	4611      	mov	r1, r2
 8006d4c:	4606      	mov	r6, r0
 8006d4e:	461a      	mov	r2, r3
 8006d50:	4628      	mov	r0, r5
 8006d52:	2300      	movs	r3, #0
 8006d54:	6023      	str	r3, [r4, #0]
 8006d56:	f7fb f938 	bl	8001fca <_read>
 8006d5a:	1c43      	adds	r3, r0, #1
 8006d5c:	d000      	beq.n	8006d60 <_read_r+0x1c>
 8006d5e:	bd70      	pop	{r4, r5, r6, pc}
 8006d60:	6823      	ldr	r3, [r4, #0]
 8006d62:	2b00      	cmp	r3, #0
 8006d64:	d0fb      	beq.n	8006d5e <_read_r+0x1a>
 8006d66:	6033      	str	r3, [r6, #0]
 8006d68:	bd70      	pop	{r4, r5, r6, pc}
 8006d6a:	bf00      	nop
 8006d6c:	20000b10 	.word	0x20000b10

08006d70 <__swbuf_r>:
 8006d70:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006d72:	460d      	mov	r5, r1
 8006d74:	4614      	mov	r4, r2
 8006d76:	4606      	mov	r6, r0
 8006d78:	b110      	cbz	r0, 8006d80 <__swbuf_r+0x10>
 8006d7a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006d7c:	2b00      	cmp	r3, #0
 8006d7e:	d043      	beq.n	8006e08 <__swbuf_r+0x98>
 8006d80:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006d84:	69a3      	ldr	r3, [r4, #24]
 8006d86:	60a3      	str	r3, [r4, #8]
 8006d88:	b291      	uxth	r1, r2
 8006d8a:	0708      	lsls	r0, r1, #28
 8006d8c:	d51b      	bpl.n	8006dc6 <__swbuf_r+0x56>
 8006d8e:	6923      	ldr	r3, [r4, #16]
 8006d90:	b1cb      	cbz	r3, 8006dc6 <__swbuf_r+0x56>
 8006d92:	b2ed      	uxtb	r5, r5
 8006d94:	0489      	lsls	r1, r1, #18
 8006d96:	462f      	mov	r7, r5
 8006d98:	d522      	bpl.n	8006de0 <__swbuf_r+0x70>
 8006d9a:	6822      	ldr	r2, [r4, #0]
 8006d9c:	6961      	ldr	r1, [r4, #20]
 8006d9e:	1ad3      	subs	r3, r2, r3
 8006da0:	4299      	cmp	r1, r3
 8006da2:	dd29      	ble.n	8006df8 <__swbuf_r+0x88>
 8006da4:	3301      	adds	r3, #1
 8006da6:	68a1      	ldr	r1, [r4, #8]
 8006da8:	1c50      	adds	r0, r2, #1
 8006daa:	3901      	subs	r1, #1
 8006dac:	60a1      	str	r1, [r4, #8]
 8006dae:	6020      	str	r0, [r4, #0]
 8006db0:	7015      	strb	r5, [r2, #0]
 8006db2:	6962      	ldr	r2, [r4, #20]
 8006db4:	429a      	cmp	r2, r3
 8006db6:	d02a      	beq.n	8006e0e <__swbuf_r+0x9e>
 8006db8:	89a3      	ldrh	r3, [r4, #12]
 8006dba:	07db      	lsls	r3, r3, #31
 8006dbc:	d501      	bpl.n	8006dc2 <__swbuf_r+0x52>
 8006dbe:	2d0a      	cmp	r5, #10
 8006dc0:	d025      	beq.n	8006e0e <__swbuf_r+0x9e>
 8006dc2:	4638      	mov	r0, r7
 8006dc4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006dc6:	4621      	mov	r1, r4
 8006dc8:	4630      	mov	r0, r6
 8006dca:	f7fc fffd 	bl	8003dc8 <__swsetup_r>
 8006dce:	bb20      	cbnz	r0, 8006e1a <__swbuf_r+0xaa>
 8006dd0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006dd4:	6923      	ldr	r3, [r4, #16]
 8006dd6:	b291      	uxth	r1, r2
 8006dd8:	b2ed      	uxtb	r5, r5
 8006dda:	0489      	lsls	r1, r1, #18
 8006ddc:	462f      	mov	r7, r5
 8006dde:	d4dc      	bmi.n	8006d9a <__swbuf_r+0x2a>
 8006de0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006de2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006de6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006dea:	81a2      	strh	r2, [r4, #12]
 8006dec:	6822      	ldr	r2, [r4, #0]
 8006dee:	6661      	str	r1, [r4, #100]	; 0x64
 8006df0:	6961      	ldr	r1, [r4, #20]
 8006df2:	1ad3      	subs	r3, r2, r3
 8006df4:	4299      	cmp	r1, r3
 8006df6:	dcd5      	bgt.n	8006da4 <__swbuf_r+0x34>
 8006df8:	4621      	mov	r1, r4
 8006dfa:	4630      	mov	r0, r6
 8006dfc:	f7fe f8a6 	bl	8004f4c <_fflush_r>
 8006e00:	b958      	cbnz	r0, 8006e1a <__swbuf_r+0xaa>
 8006e02:	6822      	ldr	r2, [r4, #0]
 8006e04:	2301      	movs	r3, #1
 8006e06:	e7ce      	b.n	8006da6 <__swbuf_r+0x36>
 8006e08:	f7fe f8fc 	bl	8005004 <__sinit>
 8006e0c:	e7b8      	b.n	8006d80 <__swbuf_r+0x10>
 8006e0e:	4621      	mov	r1, r4
 8006e10:	4630      	mov	r0, r6
 8006e12:	f7fe f89b 	bl	8004f4c <_fflush_r>
 8006e16:	2800      	cmp	r0, #0
 8006e18:	d0d3      	beq.n	8006dc2 <__swbuf_r+0x52>
 8006e1a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006e1e:	e7d0      	b.n	8006dc2 <__swbuf_r+0x52>

08006e20 <_wcrtomb_r>:
 8006e20:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006e22:	4c11      	ldr	r4, [pc, #68]	; (8006e68 <_wcrtomb_r+0x48>)
 8006e24:	6824      	ldr	r4, [r4, #0]
 8006e26:	b085      	sub	sp, #20
 8006e28:	4606      	mov	r6, r0
 8006e2a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006e2c:	461f      	mov	r7, r3
 8006e2e:	b151      	cbz	r1, 8006e46 <_wcrtomb_r+0x26>
 8006e30:	4d0e      	ldr	r5, [pc, #56]	; (8006e6c <_wcrtomb_r+0x4c>)
 8006e32:	2c00      	cmp	r4, #0
 8006e34:	bf08      	it	eq
 8006e36:	462c      	moveq	r4, r5
 8006e38:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e3c:	47a0      	blx	r4
 8006e3e:	1c43      	adds	r3, r0, #1
 8006e40:	d00c      	beq.n	8006e5c <_wcrtomb_r+0x3c>
 8006e42:	b005      	add	sp, #20
 8006e44:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006e46:	4a09      	ldr	r2, [pc, #36]	; (8006e6c <_wcrtomb_r+0x4c>)
 8006e48:	2c00      	cmp	r4, #0
 8006e4a:	bf08      	it	eq
 8006e4c:	4614      	moveq	r4, r2
 8006e4e:	460a      	mov	r2, r1
 8006e50:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006e54:	a901      	add	r1, sp, #4
 8006e56:	47a0      	blx	r4
 8006e58:	1c43      	adds	r3, r0, #1
 8006e5a:	d1f2      	bne.n	8006e42 <_wcrtomb_r+0x22>
 8006e5c:	2200      	movs	r2, #0
 8006e5e:	238a      	movs	r3, #138	; 0x8a
 8006e60:	603a      	str	r2, [r7, #0]
 8006e62:	6033      	str	r3, [r6, #0]
 8006e64:	b005      	add	sp, #20
 8006e66:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006e68:	20000018 	.word	0x20000018
 8006e6c:	2000085c 	.word	0x2000085c

08006e70 <__ascii_wctomb>:
 8006e70:	b121      	cbz	r1, 8006e7c <__ascii_wctomb+0xc>
 8006e72:	2aff      	cmp	r2, #255	; 0xff
 8006e74:	d804      	bhi.n	8006e80 <__ascii_wctomb+0x10>
 8006e76:	700a      	strb	r2, [r1, #0]
 8006e78:	2001      	movs	r0, #1
 8006e7a:	4770      	bx	lr
 8006e7c:	4608      	mov	r0, r1
 8006e7e:	4770      	bx	lr
 8006e80:	238a      	movs	r3, #138	; 0x8a
 8006e82:	6003      	str	r3, [r0, #0]
 8006e84:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006e88:	4770      	bx	lr
 8006e8a:	bf00      	nop

08006e8c <_init>:
 8006e8c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006e8e:	bf00      	nop
 8006e90:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006e92:	bc08      	pop	{r3}
 8006e94:	469e      	mov	lr, r3
 8006e96:	4770      	bx	lr

08006e98 <_fini>:
 8006e98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006e9a:	bf00      	nop
 8006e9c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8006e9e:	bc08      	pop	{r3}
 8006ea0:	469e      	mov	lr, r3
 8006ea2:	4770      	bx	lr
 8006ea4:	0000      	movs	r0, r0
	...
