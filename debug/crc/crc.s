
crc.elf:     file format elf32-littlearm


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
 80001e0:	08007014 	.word	0x08007014

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
 80001fc:	08007014 	.word	0x08007014

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
 8001108:	f640 50a4 	movw	r0, #3492	; 0xda4
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 50a4 	movw	r0, #3492	; 0xda4
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
 80013e8:	f247 1248 	movw	r2, #29000	; 0x7148
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
 8001462:	f247 1240 	movw	r2, #28992	; 0x7140
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
 800148c:	f247 1240 	movw	r2, #28992	; 0x7140
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
 8001842:	f640 51a8 	movw	r1, #3496	; 0xda8
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
 800188c:	f640 50a8 	movw	r0, #3496	; 0xda8
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 50a8 	movw	r0, #3496	; 0xda8
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
 80019d4:	f247 1378 	movw	r3, #29048	; 0x7178
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
 80019fc:	f247 1388 	movw	r3, #29064	; 0x7188
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

08001eb6 <icrc>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ebe:	b081      	sub	sp, #4
 8001ec0:	4604      	mov	r4, r0
 8001ec2:	f640 30e4 	movw	r0, #3044	; 0xbe4
 8001ec6:	4689      	mov	r9, r1
 8001ec8:	4698      	mov	r8, r3
 8001eca:	9200      	str	r2, [sp, #0]
 8001ecc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ed0:	7801      	ldrb	r1, [r0, #0]
 8001ed2:	2900      	cmp	r1, #0
 8001ed4:	d16f      	bne.n	8001fb6 <icrc+0x100>
 8001ed6:	2101      	movs	r1, #1
 8001ed8:	f24e 32de 	movw	r2, #58334	; 0xe3de
 8001edc:	f247 1c98 	movw	ip, #29080	; 0x7198
 8001ee0:	f04f 0e00 	mov.w	lr, #0
 8001ee4:	f04f 0b00 	mov.w	fp, #0
 8001ee8:	7001      	strb	r1, [r0, #0]
 8001eea:	f64f 00c6 	movw	r0, #63686	; 0xf8c6
 8001eee:	f2c0 0201 	movt	r2, #1
 8001ef2:	f241 0121 	movw	r1, #4129	; 0x1021
 8001ef6:	f6c0 0c00 	movt	ip, #2048	; 0x800
 8001efa:	f2c0 0001 	movt	r0, #1
 8001efe:	f502 655f 	add.w	r5, r2, #3568	; 0xdf0
 8001f02:	f502 6684 	add.w	r6, r2, #1056	; 0x420
 8001f06:	f502 6342 	add.w	r3, r2, #3104	; 0xc20
 8001f0a:	f500 7a5f 	add.w	sl, r0, #892	; 0x37c
 8001f0e:	4670      	mov	r0, lr
 8001f10:	f01b 0f80 	tst.w	fp, #128	; 0x80
 8001f14:	f50e 7e00 	add.w	lr, lr, #512	; 0x200
 8001f18:	bf18      	it	ne
 8001f1a:	4048      	eorne	r0, r1
 8001f1c:	ea0a 0240 	and.w	r2, sl, r0, lsl #1
 8001f20:	f410 4f00 	tst.w	r0, #32768	; 0x8000
 8001f24:	f64f 00c6 	movw	r0, #63686	; 0xf8c6
 8001f28:	bf18      	it	ne
 8001f2a:	404a      	eorne	r2, r1
 8001f2c:	f2c0 0001 	movt	r0, #1
 8001f30:	ea00 0042 	and.w	r0, r0, r2, lsl #1
 8001f34:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001f38:	bf18      	it	ne
 8001f3a:	4048      	eorne	r0, r1
 8001f3c:	ea05 0240 	and.w	r2, r5, r0, lsl #1
 8001f40:	f410 4f00 	tst.w	r0, #32768	; 0x8000
 8001f44:	f24e 30de 	movw	r0, #58334	; 0xe3de
 8001f48:	bf18      	it	ne
 8001f4a:	404a      	eorne	r2, r1
 8001f4c:	f2c0 0001 	movt	r0, #1
 8001f50:	ea00 0042 	and.w	r0, r0, r2, lsl #1
 8001f54:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001f58:	bf18      	it	ne
 8001f5a:	4308      	orrne	r0, r1
 8001f5c:	ea06 0240 	and.w	r2, r6, r0, lsl #1
 8001f60:	f410 4f00 	tst.w	r0, #32768	; 0x8000
 8001f64:	bf18      	it	ne
 8001f66:	404a      	eorne	r2, r1
 8001f68:	ea03 0042 	and.w	r0, r3, r2, lsl #1
 8001f6c:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 8001f70:	bf18      	it	ne
 8001f72:	4048      	eorne	r0, r1
 8001f74:	ea81 0240 	eor.w	r2, r1, r0, lsl #1
 8001f78:	f410 4f00 	tst.w	r0, #32768	; 0x8000
 8001f7c:	bf08      	it	eq
 8001f7e:	0042      	lsleq	r2, r0, #1
 8001f80:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001f84:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f88:	f820 201b 	strh.w	r2, [r0, fp, lsl #1]
 8001f8c:	f00b 000f 	and.w	r0, fp, #15
 8001f90:	ea4f 121b 	mov.w	r2, fp, lsr #4
 8001f94:	f81c 0000 	ldrb.w	r0, [ip, r0]
 8001f98:	f81c 2002 	ldrb.w	r2, [ip, r2]
 8001f9c:	ea42 1000 	orr.w	r0, r2, r0, lsl #4
 8001fa0:	f640 32e5 	movw	r2, #3045	; 0xbe5
 8001fa4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8001fa8:	f802 000b 	strb.w	r0, [r2, fp]
 8001fac:	f10b 0b01 	add.w	fp, fp, #1
 8001fb0:	f5bb 7f80 	cmp.w	fp, #256	; 0x100
 8001fb4:	d1ab      	bne.n	8001f0e <icrc+0x58>
 8001fb6:	9900      	ldr	r1, [sp, #0]
 8001fb8:	2900      	cmp	r1, #0
 8001fba:	db03      	blt.n	8001fc4 <icrc+0x10e>
 8001fbc:	b2c8      	uxtb	r0, r1
 8001fbe:	ea40 2401 	orr.w	r4, r0, r1, lsl #8
 8001fc2:	e00c      	b.n	8001fde <icrc+0x128>
 8001fc4:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
 8001fc8:	dc09      	bgt.n	8001fde <icrc+0x128>
 8001fca:	f640 31e5 	movw	r1, #3045	; 0xbe5
 8001fce:	b2e0      	uxtb	r0, r4
 8001fd0:	0a22      	lsrs	r2, r4, #8
 8001fd2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001fd6:	5c08      	ldrb	r0, [r1, r0]
 8001fd8:	5c89      	ldrb	r1, [r1, r2]
 8001fda:	ea41 2400 	orr.w	r4, r1, r0, lsl #8
 8001fde:	f247 10a8 	movw	r0, #29096	; 0x71a8
 8001fe2:	4649      	mov	r1, r9
 8001fe4:	f6c0 0000 	movt	r0, #2048	; 0x800
 8001fe8:	f000 f9c6 	bl	8002378 <printf>
 8001fec:	f1b9 0f00 	cmp.w	r9, #0
 8001ff0:	d01f      	beq.n	8002032 <icrc+0x17c>
 8001ff2:	f247 0030 	movw	r0, #28720	; 0x7030
 8001ff6:	f640 31e5 	movw	r1, #3045	; 0xbe5
 8001ffa:	f640 12e4 	movw	r2, #2532	; 0x9e4
 8001ffe:	2601      	movs	r6, #1
 8002000:	2301      	movs	r3, #1
 8002002:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002006:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800200a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800200e:	5d86      	ldrb	r6, [r0, r6]
 8002010:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
 8002014:	f404 457f 	and.w	r5, r4, #65280	; 0xff00
 8002018:	f103 0301 	add.w	r3, r3, #1
 800201c:	bfd8      	it	le
 800201e:	5d8e      	ldrble	r6, [r1, r6]
 8002020:	ea86 2615 	eor.w	r6, r6, r5, lsr #8
 8002024:	f832 6016 	ldrh.w	r6, [r2, r6, lsl #1]
 8002028:	ea86 2404 	eor.w	r4, r6, r4, lsl #8
 800202c:	b29e      	uxth	r6, r3
 800202e:	454e      	cmp	r6, r9
 8002030:	d9ed      	bls.n	800200e <icrc+0x158>
 8002032:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
 8002036:	dc0a      	bgt.n	800204e <icrc+0x198>
 8002038:	f640 31e5 	movw	r1, #3045	; 0xbe5
 800203c:	b2e0      	uxtb	r0, r4
 800203e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002042:	5c08      	ldrb	r0, [r1, r0]
 8002044:	f3c4 2207 	ubfx	r2, r4, #8, #8
 8002048:	5c89      	ldrb	r1, [r1, r2]
 800204a:	ea41 2400 	orr.w	r4, r1, r0, lsl #8
 800204e:	b2a0      	uxth	r0, r4
 8002050:	b001      	add	sp, #4
 8002052:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002056:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002058 <verify_benchmark>:
 8002058:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800205c:	4770      	bx	lr

0800205e <initialise_benchmark>:
 800205e:	4770      	bx	lr

08002060 <benchmark>:
 8002060:	b580      	push	{r7, lr}
 8002062:	466f      	mov	r7, sp
 8002064:	2000      	movs	r0, #0
 8002066:	2128      	movs	r1, #40	; 0x28
 8002068:	2200      	movs	r2, #0
 800206a:	2301      	movs	r3, #1
 800206c:	f7ff ff23 	bl	8001eb6 <icrc>
 8002070:	212a      	movs	r1, #42	; 0x2a
 8002072:	2200      	movs	r2, #0
 8002074:	2301      	movs	r3, #1
 8002076:	f7ff ff1e 	bl	8001eb6 <icrc>
 800207a:	2000      	movs	r0, #0
 800207c:	bd80      	pop	{r7, pc}

0800207e <__io_putchar>:
 800207e:	b580      	push	{r7, lr}
 8002080:	466f      	mov	r7, sp
 8002082:	b082      	sub	sp, #8
 8002084:	9001      	str	r0, [sp, #4]
 8002086:	f640 40e8 	movw	r0, #3304	; 0xce8
 800208a:	a901      	add	r1, sp, #4
 800208c:	2201      	movs	r2, #1
 800208e:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002092:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002096:	f7ff fe20 	bl	8001cda <HAL_UART_Transmit>
 800209a:	9801      	ldr	r0, [sp, #4]
 800209c:	b002      	add	sp, #8
 800209e:	bd80      	pop	{r7, pc}

080020a0 <main>:
 80020a0:	b5b0      	push	{r4, r5, r7, lr}
 80020a2:	af02      	add	r7, sp, #8
 80020a4:	f640 41e8 	movw	r1, #3304	; 0xce8
 80020a8:	f643 0000 	movw	r0, #14336	; 0x3800
 80020ac:	220c      	movs	r2, #12
 80020ae:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020b2:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80020b6:	6008      	str	r0, [r1, #0]
 80020b8:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80020bc:	6048      	str	r0, [r1, #4]
 80020be:	2000      	movs	r0, #0
 80020c0:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80020c4:	6108      	str	r0, [r1, #16]
 80020c6:	6248      	str	r0, [r1, #36]	; 0x24
 80020c8:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80020cc:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80020d0:	2000      	movs	r0, #0
 80020d2:	f7ff fe97 	bl	8001e04 <BSP_COM_Init>
 80020d6:	f7ff ffc2 	bl	800205e <initialise_benchmark>
 80020da:	f247 10b2 	movw	r0, #29106	; 0x71b2
 80020de:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020e2:	f000 f949 	bl	8002378 <printf>
 80020e6:	f247 2058 	movw	r0, #29272	; 0x7258
 80020ea:	f6c0 0000 	movt	r0, #2048	; 0x800
 80020ee:	f000 f9a5 	bl	800243c <puts>
 80020f2:	f7fe fff9 	bl	80010e8 <HAL_Init>
 80020f6:	f7ff f80f 	bl	8001118 <HAL_GetTick>
 80020fa:	4604      	mov	r4, r0
 80020fc:	f7ff ffb0 	bl	8002060 <benchmark>
 8002100:	4605      	mov	r5, r0
 8002102:	f7ff f809 	bl	8001118 <HAL_GetTick>
 8002106:	1b04      	subs	r4, r0, r4
 8002108:	4628      	mov	r0, r5
 800210a:	f7ff ffa5 	bl	8002058 <verify_benchmark>
 800210e:	1c41      	adds	r1, r0, #1
 8002110:	d006      	beq.n	8002120 <main+0x80>
 8002112:	2801      	cmp	r0, #1
 8002114:	d109      	bne.n	800212a <main+0x8a>
 8002116:	f247 10c4 	movw	r0, #29124	; 0x71c4
 800211a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800211e:	e008      	b.n	8002132 <main+0x92>
 8002120:	f247 10e8 	movw	r0, #29160	; 0x71e8
 8002124:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002128:	e003      	b.n	8002132 <main+0x92>
 800212a:	f247 201d 	movw	r0, #29213	; 0x721d
 800212e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002132:	4621      	mov	r1, r4
 8002134:	f000 f920 	bl	8002378 <printf>
 8002138:	2000      	movs	r0, #0
 800213a:	bdb0      	pop	{r4, r5, r7, pc}

0800213c <SysTick_Handler>:
 800213c:	b580      	push	{r7, lr}
 800213e:	466f      	mov	r7, sp
 8002140:	f7fe ffe2 	bl	8001108 <HAL_IncTick>
 8002144:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002148:	f7ff b83c 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

0800214c <_read>:
 800214c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800214e:	af03      	add	r7, sp, #12
 8002150:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002154:	4614      	mov	r4, r2
 8002156:	460d      	mov	r5, r1
 8002158:	2c01      	cmp	r4, #1
 800215a:	db06      	blt.n	800216a <_read+0x1e>
 800215c:	4626      	mov	r6, r4
 800215e:	f3af 8000 	nop.w
 8002162:	f805 0b01 	strb.w	r0, [r5], #1
 8002166:	3e01      	subs	r6, #1
 8002168:	d1f9      	bne.n	800215e <_read+0x12>
 800216a:	4620      	mov	r0, r4
 800216c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002170:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002172 <_write>:
 8002172:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002174:	af03      	add	r7, sp, #12
 8002176:	f84d bd04 	str.w	fp, [sp, #-4]!
 800217a:	4614      	mov	r4, r2
 800217c:	460d      	mov	r5, r1
 800217e:	2c01      	cmp	r4, #1
 8002180:	db06      	blt.n	8002190 <_write+0x1e>
 8002182:	4626      	mov	r6, r4
 8002184:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002188:	f7ff ff79 	bl	800207e <__io_putchar>
 800218c:	3e01      	subs	r6, #1
 800218e:	d1f9      	bne.n	8002184 <_write+0x12>
 8002190:	4620      	mov	r0, r4
 8002192:	f85d bb04 	ldr.w	fp, [sp], #4
 8002196:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002198 <_sbrk>:
 8002198:	f640 526c 	movw	r2, #3436	; 0xd6c
 800219c:	4601      	mov	r1, r0
 800219e:	466b      	mov	r3, sp
 80021a0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021a4:	6810      	ldr	r0, [r2, #0]
 80021a6:	2800      	cmp	r0, #0
 80021a8:	bf02      	ittt	eq
 80021aa:	f640 6018 	movweq	r0, #3608	; 0xe18
 80021ae:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80021b2:	6010      	streq	r0, [r2, #0]
 80021b4:	4401      	add	r1, r0
 80021b6:	4299      	cmp	r1, r3
 80021b8:	bf9c      	itt	ls
 80021ba:	6011      	strls	r1, [r2, #0]
 80021bc:	4770      	bxls	lr
 80021be:	b580      	push	{r7, lr}
 80021c0:	466f      	mov	r7, sp
 80021c2:	f000 f865 	bl	8002290 <__errno>
 80021c6:	210c      	movs	r1, #12
 80021c8:	6001      	str	r1, [r0, #0]
 80021ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021ce:	bd80      	pop	{r7, pc}

080021d0 <_close>:
 80021d0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021d4:	4770      	bx	lr

080021d6 <_fstat>:
 80021d6:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80021da:	6048      	str	r0, [r1, #4]
 80021dc:	2000      	movs	r0, #0
 80021de:	4770      	bx	lr

080021e0 <_isatty>:
 80021e0:	2001      	movs	r0, #1
 80021e2:	4770      	bx	lr

080021e4 <_lseek>:
 80021e4:	2000      	movs	r0, #0
 80021e6:	4770      	bx	lr

080021e8 <SystemInit>:
 80021e8:	f64e 5088 	movw	r0, #60808	; 0xed88
 80021ec:	f04f 0c00 	mov.w	ip, #0
 80021f0:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80021f4:	6801      	ldr	r1, [r0, #0]
 80021f6:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80021fa:	6001      	str	r1, [r0, #0]
 80021fc:	f241 0100 	movw	r1, #4096	; 0x1000
 8002200:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002204:	680a      	ldr	r2, [r1, #0]
 8002206:	f042 0201 	orr.w	r2, r2, #1
 800220a:	600a      	str	r2, [r1, #0]
 800220c:	f8c1 c008 	str.w	ip, [r1, #8]
 8002210:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002214:	680b      	ldr	r3, [r1, #0]
 8002216:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800221a:	401a      	ands	r2, r3
 800221c:	600a      	str	r2, [r1, #0]
 800221e:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002222:	60ca      	str	r2, [r1, #12]
 8002224:	680a      	ldr	r2, [r1, #0]
 8002226:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800222a:	600a      	str	r2, [r1, #0]
 800222c:	f8c1 c018 	str.w	ip, [r1, #24]
 8002230:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002234:	f840 1c80 	str.w	r1, [r0, #-128]
 8002238:	4770      	bx	lr
	...

0800223c <Reset_Handler>:
 800223c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002274 <LoopForever+0x2>
 8002240:	2100      	movs	r1, #0
 8002242:	e003      	b.n	800224c <LoopCopyDataInit>

08002244 <CopyDataInit>:
 8002244:	4b0c      	ldr	r3, [pc, #48]	; (8002278 <LoopForever+0x6>)
 8002246:	585b      	ldr	r3, [r3, r1]
 8002248:	5043      	str	r3, [r0, r1]
 800224a:	3104      	adds	r1, #4

0800224c <LoopCopyDataInit>:
 800224c:	480b      	ldr	r0, [pc, #44]	; (800227c <LoopForever+0xa>)
 800224e:	4b0c      	ldr	r3, [pc, #48]	; (8002280 <LoopForever+0xe>)
 8002250:	1842      	adds	r2, r0, r1
 8002252:	429a      	cmp	r2, r3
 8002254:	d3f6      	bcc.n	8002244 <CopyDataInit>
 8002256:	4a0b      	ldr	r2, [pc, #44]	; (8002284 <LoopForever+0x12>)
 8002258:	e002      	b.n	8002260 <LoopFillZerobss>

0800225a <FillZerobss>:
 800225a:	2300      	movs	r3, #0
 800225c:	f842 3b04 	str.w	r3, [r2], #4

08002260 <LoopFillZerobss>:
 8002260:	4b09      	ldr	r3, [pc, #36]	; (8002288 <LoopForever+0x16>)
 8002262:	429a      	cmp	r2, r3
 8002264:	d3f9      	bcc.n	800225a <FillZerobss>
 8002266:	f7ff ffbf 	bl	80021e8 <SystemInit>
 800226a:	f000 f817 	bl	800229c <__libc_init_array>
 800226e:	f7ff ff17 	bl	80020a0 <main>

08002272 <LoopForever>:
 8002272:	e7fe      	b.n	8002272 <LoopForever>
 8002274:	20018000 	.word	0x20018000
 8002278:	08007500 	.word	0x08007500
 800227c:	20000000 	.word	0x20000000
 8002280:	200009c8 	.word	0x200009c8
 8002284:	200009c8 	.word	0x200009c8
 8002288:	20000e14 	.word	0x20000e14

0800228c <ADC1_2_IRQHandler>:
 800228c:	e7fe      	b.n	800228c <ADC1_2_IRQHandler>
	...

08002290 <__errno>:
 8002290:	4b01      	ldr	r3, [pc, #4]	; (8002298 <__errno+0x8>)
 8002292:	6818      	ldr	r0, [r3, #0]
 8002294:	4770      	bx	lr
 8002296:	bf00      	nop
 8002298:	20000018 	.word	0x20000018

0800229c <__libc_init_array>:
 800229c:	b570      	push	{r4, r5, r6, lr}
 800229e:	4e0d      	ldr	r6, [pc, #52]	; (80022d4 <__libc_init_array+0x38>)
 80022a0:	4d0d      	ldr	r5, [pc, #52]	; (80022d8 <__libc_init_array+0x3c>)
 80022a2:	1b76      	subs	r6, r6, r5
 80022a4:	10b6      	asrs	r6, r6, #2
 80022a6:	d006      	beq.n	80022b6 <__libc_init_array+0x1a>
 80022a8:	2400      	movs	r4, #0
 80022aa:	3401      	adds	r4, #1
 80022ac:	f855 3b04 	ldr.w	r3, [r5], #4
 80022b0:	4798      	blx	r3
 80022b2:	42a6      	cmp	r6, r4
 80022b4:	d1f9      	bne.n	80022aa <__libc_init_array+0xe>
 80022b6:	4e09      	ldr	r6, [pc, #36]	; (80022dc <__libc_init_array+0x40>)
 80022b8:	4d09      	ldr	r5, [pc, #36]	; (80022e0 <__libc_init_array+0x44>)
 80022ba:	1b76      	subs	r6, r6, r5
 80022bc:	f004 feaa 	bl	8007014 <_init>
 80022c0:	10b6      	asrs	r6, r6, #2
 80022c2:	d006      	beq.n	80022d2 <__libc_init_array+0x36>
 80022c4:	2400      	movs	r4, #0
 80022c6:	3401      	adds	r4, #1
 80022c8:	f855 3b04 	ldr.w	r3, [r5], #4
 80022cc:	4798      	blx	r3
 80022ce:	42a6      	cmp	r6, r4
 80022d0:	d1f9      	bne.n	80022c6 <__libc_init_array+0x2a>
 80022d2:	bd70      	pop	{r4, r5, r6, pc}
 80022d4:	080074f0 	.word	0x080074f0
 80022d8:	080074f0 	.word	0x080074f0
 80022dc:	080074f8 	.word	0x080074f8
 80022e0:	080074f0 	.word	0x080074f0

080022e4 <memset>:
 80022e4:	b4f0      	push	{r4, r5, r6, r7}
 80022e6:	0786      	lsls	r6, r0, #30
 80022e8:	d043      	beq.n	8002372 <memset+0x8e>
 80022ea:	1e54      	subs	r4, r2, #1
 80022ec:	2a00      	cmp	r2, #0
 80022ee:	d03e      	beq.n	800236e <memset+0x8a>
 80022f0:	b2ca      	uxtb	r2, r1
 80022f2:	4603      	mov	r3, r0
 80022f4:	e002      	b.n	80022fc <memset+0x18>
 80022f6:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80022fa:	d338      	bcc.n	800236e <memset+0x8a>
 80022fc:	f803 2b01 	strb.w	r2, [r3], #1
 8002300:	079d      	lsls	r5, r3, #30
 8002302:	d1f8      	bne.n	80022f6 <memset+0x12>
 8002304:	2c03      	cmp	r4, #3
 8002306:	d92b      	bls.n	8002360 <memset+0x7c>
 8002308:	b2cd      	uxtb	r5, r1
 800230a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800230e:	2c0f      	cmp	r4, #15
 8002310:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002314:	d916      	bls.n	8002344 <memset+0x60>
 8002316:	f1a4 0710 	sub.w	r7, r4, #16
 800231a:	093f      	lsrs	r7, r7, #4
 800231c:	f103 0620 	add.w	r6, r3, #32
 8002320:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002324:	f103 0210 	add.w	r2, r3, #16
 8002328:	e942 5504 	strd	r5, r5, [r2, #-16]
 800232c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002330:	3210      	adds	r2, #16
 8002332:	42b2      	cmp	r2, r6
 8002334:	d1f8      	bne.n	8002328 <memset+0x44>
 8002336:	f004 040f 	and.w	r4, r4, #15
 800233a:	3701      	adds	r7, #1
 800233c:	2c03      	cmp	r4, #3
 800233e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002342:	d90d      	bls.n	8002360 <memset+0x7c>
 8002344:	461e      	mov	r6, r3
 8002346:	4622      	mov	r2, r4
 8002348:	3a04      	subs	r2, #4
 800234a:	2a03      	cmp	r2, #3
 800234c:	f846 5b04 	str.w	r5, [r6], #4
 8002350:	d8fa      	bhi.n	8002348 <memset+0x64>
 8002352:	1f22      	subs	r2, r4, #4
 8002354:	f022 0203 	bic.w	r2, r2, #3
 8002358:	3204      	adds	r2, #4
 800235a:	4413      	add	r3, r2
 800235c:	f004 0403 	and.w	r4, r4, #3
 8002360:	b12c      	cbz	r4, 800236e <memset+0x8a>
 8002362:	b2c9      	uxtb	r1, r1
 8002364:	441c      	add	r4, r3
 8002366:	f803 1b01 	strb.w	r1, [r3], #1
 800236a:	429c      	cmp	r4, r3
 800236c:	d1fb      	bne.n	8002366 <memset+0x82>
 800236e:	bcf0      	pop	{r4, r5, r6, r7}
 8002370:	4770      	bx	lr
 8002372:	4614      	mov	r4, r2
 8002374:	4603      	mov	r3, r0
 8002376:	e7c5      	b.n	8002304 <memset+0x20>

08002378 <printf>:
 8002378:	b40f      	push	{r0, r1, r2, r3}
 800237a:	b500      	push	{lr}
 800237c:	4907      	ldr	r1, [pc, #28]	; (800239c <printf+0x24>)
 800237e:	b083      	sub	sp, #12
 8002380:	ab04      	add	r3, sp, #16
 8002382:	6808      	ldr	r0, [r1, #0]
 8002384:	f853 2b04 	ldr.w	r2, [r3], #4
 8002388:	6881      	ldr	r1, [r0, #8]
 800238a:	9301      	str	r3, [sp, #4]
 800238c:	f000 f860 	bl	8002450 <_vfprintf_r>
 8002390:	b003      	add	sp, #12
 8002392:	f85d eb04 	ldr.w	lr, [sp], #4
 8002396:	b004      	add	sp, #16
 8002398:	4770      	bx	lr
 800239a:	bf00      	nop
 800239c:	20000018 	.word	0x20000018

080023a0 <_puts_r>:
 80023a0:	b570      	push	{r4, r5, r6, lr}
 80023a2:	4605      	mov	r5, r0
 80023a4:	b088      	sub	sp, #32
 80023a6:	4608      	mov	r0, r1
 80023a8:	460c      	mov	r4, r1
 80023aa:	f7fe f949 	bl	8000640 <strlen>
 80023ae:	4a22      	ldr	r2, [pc, #136]	; (8002438 <_puts_r+0x98>)
 80023b0:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80023b2:	9404      	str	r4, [sp, #16]
 80023b4:	2601      	movs	r6, #1
 80023b6:	1c44      	adds	r4, r0, #1
 80023b8:	a904      	add	r1, sp, #16
 80023ba:	9206      	str	r2, [sp, #24]
 80023bc:	2202      	movs	r2, #2
 80023be:	9403      	str	r4, [sp, #12]
 80023c0:	9005      	str	r0, [sp, #20]
 80023c2:	68ac      	ldr	r4, [r5, #8]
 80023c4:	9607      	str	r6, [sp, #28]
 80023c6:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80023ca:	b31b      	cbz	r3, 8002414 <_puts_r+0x74>
 80023cc:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80023ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80023d2:	07ce      	lsls	r6, r1, #31
 80023d4:	b29a      	uxth	r2, r3
 80023d6:	d401      	bmi.n	80023dc <_puts_r+0x3c>
 80023d8:	0590      	lsls	r0, r2, #22
 80023da:	d525      	bpl.n	8002428 <_puts_r+0x88>
 80023dc:	0491      	lsls	r1, r2, #18
 80023de:	d406      	bmi.n	80023ee <_puts_r+0x4e>
 80023e0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80023e2:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80023e6:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80023ea:	81a3      	strh	r3, [r4, #12]
 80023ec:	6662      	str	r2, [r4, #100]	; 0x64
 80023ee:	4628      	mov	r0, r5
 80023f0:	aa01      	add	r2, sp, #4
 80023f2:	4621      	mov	r1, r4
 80023f4:	f003 f860 	bl	80054b8 <__sfvwrite_r>
 80023f8:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80023fa:	2800      	cmp	r0, #0
 80023fc:	bf0c      	ite	eq
 80023fe:	250a      	moveq	r5, #10
 8002400:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002404:	07da      	lsls	r2, r3, #31
 8002406:	d402      	bmi.n	800240e <_puts_r+0x6e>
 8002408:	89a3      	ldrh	r3, [r4, #12]
 800240a:	059b      	lsls	r3, r3, #22
 800240c:	d506      	bpl.n	800241c <_puts_r+0x7c>
 800240e:	4628      	mov	r0, r5
 8002410:	b008      	add	sp, #32
 8002412:	bd70      	pop	{r4, r5, r6, pc}
 8002414:	4628      	mov	r0, r5
 8002416:	f002 feb9 	bl	800518c <__sinit>
 800241a:	e7d7      	b.n	80023cc <_puts_r+0x2c>
 800241c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800241e:	f003 fa07 	bl	8005830 <__retarget_lock_release_recursive>
 8002422:	4628      	mov	r0, r5
 8002424:	b008      	add	sp, #32
 8002426:	bd70      	pop	{r4, r5, r6, pc}
 8002428:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800242a:	f003 f9ff 	bl	800582c <__retarget_lock_acquire_recursive>
 800242e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002432:	b29a      	uxth	r2, r3
 8002434:	e7d2      	b.n	80023dc <_puts_r+0x3c>
 8002436:	bf00      	nop
 8002438:	08007260 	.word	0x08007260

0800243c <puts>:
 800243c:	4b02      	ldr	r3, [pc, #8]	; (8002448 <puts+0xc>)
 800243e:	4601      	mov	r1, r0
 8002440:	6818      	ldr	r0, [r3, #0]
 8002442:	f7ff bfad 	b.w	80023a0 <_puts_r>
 8002446:	bf00      	nop
 8002448:	20000018 	.word	0x20000018
 800244c:	00000000 	.word	0x00000000

08002450 <_vfprintf_r>:
 8002450:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002454:	b0d7      	sub	sp, #348	; 0x15c
 8002456:	461c      	mov	r4, r3
 8002458:	4689      	mov	r9, r1
 800245a:	4617      	mov	r7, r2
 800245c:	4605      	mov	r5, r0
 800245e:	9003      	str	r0, [sp, #12]
 8002460:	f003 f9d2 	bl	8005808 <_localeconv_r>
 8002464:	6803      	ldr	r3, [r0, #0]
 8002466:	9316      	str	r3, [sp, #88]	; 0x58
 8002468:	4618      	mov	r0, r3
 800246a:	f7fe f8e9 	bl	8000640 <strlen>
 800246e:	9408      	str	r4, [sp, #32]
 8002470:	9015      	str	r0, [sp, #84]	; 0x54
 8002472:	b11d      	cbz	r5, 800247c <_vfprintf_r+0x2c>
 8002474:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002476:	2b00      	cmp	r3, #0
 8002478:	f000 8107 	beq.w	800268a <_vfprintf_r+0x23a>
 800247c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002480:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002484:	07c8      	lsls	r0, r1, #31
 8002486:	b293      	uxth	r3, r2
 8002488:	d402      	bmi.n	8002490 <_vfprintf_r+0x40>
 800248a:	0599      	lsls	r1, r3, #22
 800248c:	f140 811f 	bpl.w	80026ce <_vfprintf_r+0x27e>
 8002490:	049e      	lsls	r6, r3, #18
 8002492:	d40a      	bmi.n	80024aa <_vfprintf_r+0x5a>
 8002494:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002498:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800249c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80024a0:	f8a9 300c 	strh.w	r3, [r9, #12]
 80024a4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80024a8:	b29b      	uxth	r3, r3
 80024aa:	071d      	lsls	r5, r3, #28
 80024ac:	f140 80b2 	bpl.w	8002614 <_vfprintf_r+0x1c4>
 80024b0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80024b4:	2a00      	cmp	r2, #0
 80024b6:	f000 80ad 	beq.w	8002614 <_vfprintf_r+0x1c4>
 80024ba:	f003 021a 	and.w	r2, r3, #26
 80024be:	2a0a      	cmp	r2, #10
 80024c0:	f000 80c9 	beq.w	8002656 <_vfprintf_r+0x206>
 80024c4:	2300      	movs	r3, #0
 80024c6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80026e0 <_vfprintf_r+0x290>
 80024ca:	9310      	str	r3, [sp, #64]	; 0x40
 80024cc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80024d0:	9317      	str	r3, [sp, #92]	; 0x5c
 80024d2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80024d6:	931b      	str	r3, [sp, #108]	; 0x6c
 80024d8:	9318      	str	r3, [sp, #96]	; 0x60
 80024da:	9305      	str	r3, [sp, #20]
 80024dc:	ab2d      	add	r3, sp, #180	; 0xb4
 80024de:	932a      	str	r3, [sp, #168]	; 0xa8
 80024e0:	469b      	mov	fp, r3
 80024e2:	783b      	ldrb	r3, [r7, #0]
 80024e4:	f8cd 901c 	str.w	r9, [sp, #28]
 80024e8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80024ec:	2b00      	cmp	r3, #0
 80024ee:	f000 8259 	beq.w	80029a4 <_vfprintf_r+0x554>
 80024f2:	2b25      	cmp	r3, #37	; 0x25
 80024f4:	463c      	mov	r4, r7
 80024f6:	d102      	bne.n	80024fe <_vfprintf_r+0xae>
 80024f8:	e01d      	b.n	8002536 <_vfprintf_r+0xe6>
 80024fa:	2b25      	cmp	r3, #37	; 0x25
 80024fc:	d003      	beq.n	8002506 <_vfprintf_r+0xb6>
 80024fe:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002502:	2b00      	cmp	r3, #0
 8002504:	d1f9      	bne.n	80024fa <_vfprintf_r+0xaa>
 8002506:	1be5      	subs	r5, r4, r7
 8002508:	b18d      	cbz	r5, 800252e <_vfprintf_r+0xde>
 800250a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800250e:	3301      	adds	r3, #1
 8002510:	442a      	add	r2, r5
 8002512:	2b07      	cmp	r3, #7
 8002514:	f8cb 7000 	str.w	r7, [fp]
 8002518:	f8cb 5004 	str.w	r5, [fp, #4]
 800251c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002520:	f300 80ca 	bgt.w	80026b8 <_vfprintf_r+0x268>
 8002524:	f10b 0b08 	add.w	fp, fp, #8
 8002528:	9b05      	ldr	r3, [sp, #20]
 800252a:	442b      	add	r3, r5
 800252c:	9305      	str	r3, [sp, #20]
 800252e:	7823      	ldrb	r3, [r4, #0]
 8002530:	2b00      	cmp	r3, #0
 8002532:	f000 8237 	beq.w	80029a4 <_vfprintf_r+0x554>
 8002536:	2300      	movs	r3, #0
 8002538:	7866      	ldrb	r6, [r4, #1]
 800253a:	9306      	str	r3, [sp, #24]
 800253c:	4698      	mov	r8, r3
 800253e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002542:	f104 0a01 	add.w	sl, r4, #1
 8002546:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800254a:	252b      	movs	r5, #43	; 0x2b
 800254c:	f10a 0a01 	add.w	sl, sl, #1
 8002550:	f1a6 0320 	sub.w	r3, r6, #32
 8002554:	2b5a      	cmp	r3, #90	; 0x5a
 8002556:	f200 842a 	bhi.w	8002dae <_vfprintf_r+0x95e>
 800255a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800255e:	03aa      	.short	0x03aa
 8002560:	04280428 	.word	0x04280428
 8002564:	0428029c 	.word	0x0428029c
 8002568:	04280428 	.word	0x04280428
 800256c:	042802a7 	.word	0x042802a7
 8002570:	02c60428 	.word	0x02c60428
 8002574:	042802d2 	.word	0x042802d2
 8002578:	02dc02d7 	.word	0x02dc02d7
 800257c:	02f60428 	.word	0x02f60428
 8002580:	026d026d 	.word	0x026d026d
 8002584:	026d026d 	.word	0x026d026d
 8002588:	026d026d 	.word	0x026d026d
 800258c:	026d026d 	.word	0x026d026d
 8002590:	0428026d 	.word	0x0428026d
 8002594:	04280428 	.word	0x04280428
 8002598:	04280428 	.word	0x04280428
 800259c:	04280428 	.word	0x04280428
 80025a0:	042802fb 	.word	0x042802fb
 80025a4:	03f3033c 	.word	0x03f3033c
 80025a8:	02fb02fb 	.word	0x02fb02fb
 80025ac:	042802fb 	.word	0x042802fb
 80025b0:	04280428 	.word	0x04280428
 80025b4:	03ee0428 	.word	0x03ee0428
 80025b8:	04280428 	.word	0x04280428
 80025bc:	0428009a 	.word	0x0428009a
 80025c0:	04280428 	.word	0x04280428
 80025c4:	04280350 	.word	0x04280350
 80025c8:	04280379 	.word	0x04280379
 80025cc:	03900428 	.word	0x03900428
 80025d0:	04280428 	.word	0x04280428
 80025d4:	04280428 	.word	0x04280428
 80025d8:	04280428 	.word	0x04280428
 80025dc:	04280428 	.word	0x04280428
 80025e0:	042802fb 	.word	0x042802fb
 80025e4:	00c5033c 	.word	0x00c5033c
 80025e8:	02fb02fb 	.word	0x02fb02fb
 80025ec:	03d102fb 	.word	0x03d102fb
 80025f0:	007000c5 	.word	0x007000c5
 80025f4:	03b50428 	.word	0x03b50428
 80025f8:	03c20428 	.word	0x03c20428
 80025fc:	03de009c 	.word	0x03de009c
 8002600:	04280070 	.word	0x04280070
 8002604:	00720350 	.word	0x00720350
 8002608:	0428022c 	.word	0x0428022c
 800260c:	027c0428 	.word	0x027c0428
 8002610:	00720428 	.word	0x00720428
 8002614:	4649      	mov	r1, r9
 8002616:	9803      	ldr	r0, [sp, #12]
 8002618:	f001 fc9a 	bl	8003f50 <__swsetup_r>
 800261c:	b1a0      	cbz	r0, 8002648 <_vfprintf_r+0x1f8>
 800261e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002622:	07d8      	lsls	r0, r3, #31
 8002624:	d404      	bmi.n	8002630 <_vfprintf_r+0x1e0>
 8002626:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800262a:	0599      	lsls	r1, r3, #22
 800262c:	f140 83b7 	bpl.w	8002d9e <_vfprintf_r+0x94e>
 8002630:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002634:	9305      	str	r3, [sp, #20]
 8002636:	9805      	ldr	r0, [sp, #20]
 8002638:	b057      	add	sp, #348	; 0x15c
 800263a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800263e:	f048 0820 	orr.w	r8, r8, #32
 8002642:	f89a 6000 	ldrb.w	r6, [sl]
 8002646:	e781      	b.n	800254c <_vfprintf_r+0xfc>
 8002648:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800264c:	f003 021a 	and.w	r2, r3, #26
 8002650:	2a0a      	cmp	r2, #10
 8002652:	f47f af37 	bne.w	80024c4 <_vfprintf_r+0x74>
 8002656:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800265a:	2a00      	cmp	r2, #0
 800265c:	f6ff af32 	blt.w	80024c4 <_vfprintf_r+0x74>
 8002660:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002664:	07d2      	lsls	r2, r2, #31
 8002666:	d405      	bmi.n	8002674 <_vfprintf_r+0x224>
 8002668:	059b      	lsls	r3, r3, #22
 800266a:	d403      	bmi.n	8002674 <_vfprintf_r+0x224>
 800266c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002670:	f003 f8de 	bl	8005830 <__retarget_lock_release_recursive>
 8002674:	4623      	mov	r3, r4
 8002676:	463a      	mov	r2, r7
 8002678:	4649      	mov	r1, r9
 800267a:	9803      	ldr	r0, [sp, #12]
 800267c:	f001 fc26 	bl	8003ecc <__sbprintf>
 8002680:	9005      	str	r0, [sp, #20]
 8002682:	9805      	ldr	r0, [sp, #20]
 8002684:	b057      	add	sp, #348	; 0x15c
 8002686:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800268a:	9803      	ldr	r0, [sp, #12]
 800268c:	f002 fd7e 	bl	800518c <__sinit>
 8002690:	e6f4      	b.n	800247c <_vfprintf_r+0x2c>
 8002692:	f048 0810 	orr.w	r8, r8, #16
 8002696:	f018 0f20 	tst.w	r8, #32
 800269a:	f000 836c 	beq.w	8002d76 <_vfprintf_r+0x926>
 800269e:	9c08      	ldr	r4, [sp, #32]
 80026a0:	3407      	adds	r4, #7
 80026a2:	f024 0307 	bic.w	r3, r4, #7
 80026a6:	e9d3 4500 	ldrd	r4, r5, [r3]
 80026aa:	f103 0208 	add.w	r2, r3, #8
 80026ae:	9208      	str	r2, [sp, #32]
 80026b0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80026b4:	2200      	movs	r2, #0
 80026b6:	e18c      	b.n	80029d2 <_vfprintf_r+0x582>
 80026b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80026ba:	9907      	ldr	r1, [sp, #28]
 80026bc:	9803      	ldr	r0, [sp, #12]
 80026be:	f004 f9f5 	bl	8006aac <__sprint_r>
 80026c2:	2800      	cmp	r0, #0
 80026c4:	f041 8376 	bne.w	8003db4 <_vfprintf_r+0x1964>
 80026c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80026cc:	e72c      	b.n	8002528 <_vfprintf_r+0xd8>
 80026ce:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80026d2:	f003 f8ab 	bl	800582c <__retarget_lock_acquire_recursive>
 80026d6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80026da:	b293      	uxth	r3, r2
 80026dc:	e6d8      	b.n	8002490 <_vfprintf_r+0x40>
 80026de:	bf00      	nop
	...
 80026e8:	4643      	mov	r3, r8
 80026ea:	069f      	lsls	r7, r3, #26
 80026ec:	f140 832f 	bpl.w	8002d4e <_vfprintf_r+0x8fe>
 80026f0:	9c08      	ldr	r4, [sp, #32]
 80026f2:	3407      	adds	r4, #7
 80026f4:	f024 0407 	bic.w	r4, r4, #7
 80026f8:	e9d4 0100 	ldrd	r0, r1, [r4]
 80026fc:	f104 0208 	add.w	r2, r4, #8
 8002700:	9208      	str	r2, [sp, #32]
 8002702:	4604      	mov	r4, r0
 8002704:	460d      	mov	r5, r1
 8002706:	2800      	cmp	r0, #0
 8002708:	f171 0200 	sbcs.w	r2, r1, #0
 800270c:	da05      	bge.n	800271a <_vfprintf_r+0x2ca>
 800270e:	222d      	movs	r2, #45	; 0x2d
 8002710:	4264      	negs	r4, r4
 8002712:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002716:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800271a:	aa56      	add	r2, sp, #344	; 0x158
 800271c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002720:	9204      	str	r2, [sp, #16]
 8002722:	f000 84b2 	beq.w	800308a <_vfprintf_r+0xc3a>
 8002726:	2201      	movs	r2, #1
 8002728:	ea54 0105 	orrs.w	r1, r4, r5
 800272c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002730:	f040 8159 	bne.w	80029e6 <_vfprintf_r+0x596>
 8002734:	f1b9 0f00 	cmp.w	r9, #0
 8002738:	f040 8619 	bne.w	800336e <_vfprintf_r+0xf1e>
 800273c:	2a00      	cmp	r2, #0
 800273e:	f040 8508 	bne.w	8003152 <_vfprintf_r+0xd02>
 8002742:	f013 0301 	ands.w	r3, r3, #1
 8002746:	af56      	add	r7, sp, #344	; 0x158
 8002748:	9309      	str	r3, [sp, #36]	; 0x24
 800274a:	d002      	beq.n	8002752 <_vfprintf_r+0x302>
 800274c:	2330      	movs	r3, #48	; 0x30
 800274e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002752:	2300      	movs	r3, #0
 8002754:	930a      	str	r3, [sp, #40]	; 0x28
 8002756:	930f      	str	r3, [sp, #60]	; 0x3c
 8002758:	9314      	str	r3, [sp, #80]	; 0x50
 800275a:	9311      	str	r3, [sp, #68]	; 0x44
 800275c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800275e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002762:	454b      	cmp	r3, r9
 8002764:	bfb8      	it	lt
 8002766:	464b      	movlt	r3, r9
 8002768:	9304      	str	r3, [sp, #16]
 800276a:	b112      	cbz	r2, 8002772 <_vfprintf_r+0x322>
 800276c:	9b04      	ldr	r3, [sp, #16]
 800276e:	3301      	adds	r3, #1
 8002770:	9304      	str	r3, [sp, #16]
 8002772:	f018 0302 	ands.w	r3, r8, #2
 8002776:	930b      	str	r3, [sp, #44]	; 0x2c
 8002778:	d002      	beq.n	8002780 <_vfprintf_r+0x330>
 800277a:	9b04      	ldr	r3, [sp, #16]
 800277c:	3302      	adds	r3, #2
 800277e:	9304      	str	r3, [sp, #16]
 8002780:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002784:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002786:	930e      	str	r3, [sp, #56]	; 0x38
 8002788:	d13f      	bne.n	800280a <_vfprintf_r+0x3ba>
 800278a:	9b06      	ldr	r3, [sp, #24]
 800278c:	9904      	ldr	r1, [sp, #16]
 800278e:	1a5d      	subs	r5, r3, r1
 8002790:	2d00      	cmp	r5, #0
 8002792:	dd3a      	ble.n	800280a <_vfprintf_r+0x3ba>
 8002794:	2d10      	cmp	r5, #16
 8002796:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002798:	dd29      	ble.n	80027ee <_vfprintf_r+0x39e>
 800279a:	4659      	mov	r1, fp
 800279c:	4620      	mov	r0, r4
 800279e:	9620      	str	r6, [sp, #128]	; 0x80
 80027a0:	2310      	movs	r3, #16
 80027a2:	9c03      	ldr	r4, [sp, #12]
 80027a4:	9e07      	ldr	r6, [sp, #28]
 80027a6:	46bb      	mov	fp, r7
 80027a8:	e004      	b.n	80027b4 <_vfprintf_r+0x364>
 80027aa:	3d10      	subs	r5, #16
 80027ac:	2d10      	cmp	r5, #16
 80027ae:	f101 0108 	add.w	r1, r1, #8
 80027b2:	dd18      	ble.n	80027e6 <_vfprintf_r+0x396>
 80027b4:	3201      	adds	r2, #1
 80027b6:	4fba      	ldr	r7, [pc, #744]	; (8002aa0 <_vfprintf_r+0x650>)
 80027b8:	3010      	adds	r0, #16
 80027ba:	2a07      	cmp	r2, #7
 80027bc:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80027c0:	e9c1 7300 	strd	r7, r3, [r1]
 80027c4:	ddf1      	ble.n	80027aa <_vfprintf_r+0x35a>
 80027c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80027c8:	4631      	mov	r1, r6
 80027ca:	4620      	mov	r0, r4
 80027cc:	930c      	str	r3, [sp, #48]	; 0x30
 80027ce:	f004 f96d 	bl	8006aac <__sprint_r>
 80027d2:	2800      	cmp	r0, #0
 80027d4:	f040 843d 	bne.w	8003052 <_vfprintf_r+0xc02>
 80027d8:	3d10      	subs	r5, #16
 80027da:	2d10      	cmp	r5, #16
 80027dc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80027e0:	a92d      	add	r1, sp, #180	; 0xb4
 80027e2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80027e4:	dce6      	bgt.n	80027b4 <_vfprintf_r+0x364>
 80027e6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80027e8:	465f      	mov	r7, fp
 80027ea:	4604      	mov	r4, r0
 80027ec:	468b      	mov	fp, r1
 80027ee:	3201      	adds	r2, #1
 80027f0:	4bab      	ldr	r3, [pc, #684]	; (8002aa0 <_vfprintf_r+0x650>)
 80027f2:	442c      	add	r4, r5
 80027f4:	2a07      	cmp	r2, #7
 80027f6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80027fa:	e9cb 3500 	strd	r3, r5, [fp]
 80027fe:	f300 84ff 	bgt.w	8003200 <_vfprintf_r+0xdb0>
 8002802:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002806:	f10b 0b08 	add.w	fp, fp, #8
 800280a:	b172      	cbz	r2, 800282a <_vfprintf_r+0x3da>
 800280c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800280e:	3201      	adds	r2, #1
 8002810:	3401      	adds	r4, #1
 8002812:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002816:	2101      	movs	r1, #1
 8002818:	2a07      	cmp	r2, #7
 800281a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800281e:	e9cb 0100 	strd	r0, r1, [fp]
 8002822:	f300 8418 	bgt.w	8003056 <_vfprintf_r+0xc06>
 8002826:	f10b 0b08 	add.w	fp, fp, #8
 800282a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800282c:	b16b      	cbz	r3, 800284a <_vfprintf_r+0x3fa>
 800282e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002830:	3301      	adds	r3, #1
 8002832:	3402      	adds	r4, #2
 8002834:	a923      	add	r1, sp, #140	; 0x8c
 8002836:	2202      	movs	r2, #2
 8002838:	2b07      	cmp	r3, #7
 800283a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800283e:	e9cb 1200 	strd	r1, r2, [fp]
 8002842:	f300 8415 	bgt.w	8003070 <_vfprintf_r+0xc20>
 8002846:	f10b 0b08 	add.w	fp, fp, #8
 800284a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800284c:	2b80      	cmp	r3, #128	; 0x80
 800284e:	f000 8331 	beq.w	8002eb4 <_vfprintf_r+0xa64>
 8002852:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002854:	eba9 0503 	sub.w	r5, r9, r3
 8002858:	2d00      	cmp	r5, #0
 800285a:	dd37      	ble.n	80028cc <_vfprintf_r+0x47c>
 800285c:	2d10      	cmp	r5, #16
 800285e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002860:	4b90      	ldr	r3, [pc, #576]	; (8002aa4 <_vfprintf_r+0x654>)
 8002862:	dd28      	ble.n	80028b6 <_vfprintf_r+0x466>
 8002864:	4659      	mov	r1, fp
 8002866:	4620      	mov	r0, r4
 8002868:	46bb      	mov	fp, r7
 800286a:	f04f 0910 	mov.w	r9, #16
 800286e:	4637      	mov	r7, r6
 8002870:	461c      	mov	r4, r3
 8002872:	9e07      	ldr	r6, [sp, #28]
 8002874:	e004      	b.n	8002880 <_vfprintf_r+0x430>
 8002876:	3d10      	subs	r5, #16
 8002878:	2d10      	cmp	r5, #16
 800287a:	f101 0108 	add.w	r1, r1, #8
 800287e:	dd15      	ble.n	80028ac <_vfprintf_r+0x45c>
 8002880:	3201      	adds	r2, #1
 8002882:	3010      	adds	r0, #16
 8002884:	2a07      	cmp	r2, #7
 8002886:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800288a:	e9c1 4900 	strd	r4, r9, [r1]
 800288e:	ddf2      	ble.n	8002876 <_vfprintf_r+0x426>
 8002890:	aa2a      	add	r2, sp, #168	; 0xa8
 8002892:	4631      	mov	r1, r6
 8002894:	9803      	ldr	r0, [sp, #12]
 8002896:	f004 f909 	bl	8006aac <__sprint_r>
 800289a:	2800      	cmp	r0, #0
 800289c:	f040 83d9 	bne.w	8003052 <_vfprintf_r+0xc02>
 80028a0:	3d10      	subs	r5, #16
 80028a2:	2d10      	cmp	r5, #16
 80028a4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80028a8:	a92d      	add	r1, sp, #180	; 0xb4
 80028aa:	dce9      	bgt.n	8002880 <_vfprintf_r+0x430>
 80028ac:	463e      	mov	r6, r7
 80028ae:	4623      	mov	r3, r4
 80028b0:	465f      	mov	r7, fp
 80028b2:	4604      	mov	r4, r0
 80028b4:	468b      	mov	fp, r1
 80028b6:	3201      	adds	r2, #1
 80028b8:	442c      	add	r4, r5
 80028ba:	2a07      	cmp	r2, #7
 80028bc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028c0:	e9cb 3500 	strd	r3, r5, [fp]
 80028c4:	f300 83ef 	bgt.w	80030a6 <_vfprintf_r+0xc56>
 80028c8:	f10b 0b08 	add.w	fp, fp, #8
 80028cc:	f418 7f80 	tst.w	r8, #256	; 0x100
 80028d0:	f040 8280 	bne.w	8002dd4 <_vfprintf_r+0x984>
 80028d4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80028d6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80028d8:	f8cb 7000 	str.w	r7, [fp]
 80028dc:	3301      	adds	r3, #1
 80028de:	4414      	add	r4, r2
 80028e0:	2b07      	cmp	r3, #7
 80028e2:	942c      	str	r4, [sp, #176]	; 0xb0
 80028e4:	f8cb 2004 	str.w	r2, [fp, #4]
 80028e8:	932b      	str	r3, [sp, #172]	; 0xac
 80028ea:	f300 8392 	bgt.w	8003012 <_vfprintf_r+0xbc2>
 80028ee:	f10b 0b08 	add.w	fp, fp, #8
 80028f2:	f018 0f04 	tst.w	r8, #4
 80028f6:	d03b      	beq.n	8002970 <_vfprintf_r+0x520>
 80028f8:	9b06      	ldr	r3, [sp, #24]
 80028fa:	9a04      	ldr	r2, [sp, #16]
 80028fc:	1a9d      	subs	r5, r3, r2
 80028fe:	2d00      	cmp	r5, #0
 8002900:	dd36      	ble.n	8002970 <_vfprintf_r+0x520>
 8002902:	2d10      	cmp	r5, #16
 8002904:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002906:	dd21      	ble.n	800294c <_vfprintf_r+0x4fc>
 8002908:	2610      	movs	r6, #16
 800290a:	9f03      	ldr	r7, [sp, #12]
 800290c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002910:	e004      	b.n	800291c <_vfprintf_r+0x4cc>
 8002912:	3d10      	subs	r5, #16
 8002914:	2d10      	cmp	r5, #16
 8002916:	f10b 0b08 	add.w	fp, fp, #8
 800291a:	dd17      	ble.n	800294c <_vfprintf_r+0x4fc>
 800291c:	3301      	adds	r3, #1
 800291e:	4a60      	ldr	r2, [pc, #384]	; (8002aa0 <_vfprintf_r+0x650>)
 8002920:	3410      	adds	r4, #16
 8002922:	2b07      	cmp	r3, #7
 8002924:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002928:	e9cb 2600 	strd	r2, r6, [fp]
 800292c:	ddf1      	ble.n	8002912 <_vfprintf_r+0x4c2>
 800292e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002930:	4641      	mov	r1, r8
 8002932:	4638      	mov	r0, r7
 8002934:	f004 f8ba 	bl	8006aac <__sprint_r>
 8002938:	2800      	cmp	r0, #0
 800293a:	f040 856c 	bne.w	8003416 <_vfprintf_r+0xfc6>
 800293e:	3d10      	subs	r5, #16
 8002940:	2d10      	cmp	r5, #16
 8002942:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002946:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800294a:	dce7      	bgt.n	800291c <_vfprintf_r+0x4cc>
 800294c:	3301      	adds	r3, #1
 800294e:	4a54      	ldr	r2, [pc, #336]	; (8002aa0 <_vfprintf_r+0x650>)
 8002950:	442c      	add	r4, r5
 8002952:	2b07      	cmp	r3, #7
 8002954:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002958:	e9cb 2500 	strd	r2, r5, [fp]
 800295c:	dd08      	ble.n	8002970 <_vfprintf_r+0x520>
 800295e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002960:	9907      	ldr	r1, [sp, #28]
 8002962:	9803      	ldr	r0, [sp, #12]
 8002964:	f004 f8a2 	bl	8006aac <__sprint_r>
 8002968:	2800      	cmp	r0, #0
 800296a:	f040 82e9 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 800296e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002970:	9904      	ldr	r1, [sp, #16]
 8002972:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002976:	428a      	cmp	r2, r1
 8002978:	bfac      	ite	ge
 800297a:	189b      	addge	r3, r3, r2
 800297c:	185b      	addlt	r3, r3, r1
 800297e:	9305      	str	r3, [sp, #20]
 8002980:	2c00      	cmp	r4, #0
 8002982:	f040 82d5 	bne.w	8002f30 <_vfprintf_r+0xae0>
 8002986:	2300      	movs	r3, #0
 8002988:	932b      	str	r3, [sp, #172]	; 0xac
 800298a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800298c:	b11b      	cbz	r3, 8002996 <_vfprintf_r+0x546>
 800298e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002990:	9803      	ldr	r0, [sp, #12]
 8002992:	f002 fc9d 	bl	80052d0 <_free_r>
 8002996:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800299a:	4657      	mov	r7, sl
 800299c:	783b      	ldrb	r3, [r7, #0]
 800299e:	2b00      	cmp	r3, #0
 80029a0:	f47f ada7 	bne.w	80024f2 <_vfprintf_r+0xa2>
 80029a4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80029a6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80029aa:	2b00      	cmp	r3, #0
 80029ac:	f041 80e7 	bne.w	8003b7e <_vfprintf_r+0x172e>
 80029b0:	2300      	movs	r3, #0
 80029b2:	932b      	str	r3, [sp, #172]	; 0xac
 80029b4:	e2cb      	b.n	8002f4e <_vfprintf_r+0xafe>
 80029b6:	4643      	mov	r3, r8
 80029b8:	069a      	lsls	r2, r3, #26
 80029ba:	f140 814e 	bpl.w	8002c5a <_vfprintf_r+0x80a>
 80029be:	9c08      	ldr	r4, [sp, #32]
 80029c0:	3407      	adds	r4, #7
 80029c2:	f024 0207 	bic.w	r2, r4, #7
 80029c6:	f102 0108 	add.w	r1, r2, #8
 80029ca:	e9d2 4500 	ldrd	r4, r5, [r2]
 80029ce:	9108      	str	r1, [sp, #32]
 80029d0:	2201      	movs	r2, #1
 80029d2:	2100      	movs	r1, #0
 80029d4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80029d8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80029dc:	a956      	add	r1, sp, #344	; 0x158
 80029de:	9104      	str	r1, [sp, #16]
 80029e0:	f47f aea2 	bne.w	8002728 <_vfprintf_r+0x2d8>
 80029e4:	4698      	mov	r8, r3
 80029e6:	2a01      	cmp	r2, #1
 80029e8:	f000 8350 	beq.w	800308c <_vfprintf_r+0xc3c>
 80029ec:	2a02      	cmp	r2, #2
 80029ee:	f000 831b 	beq.w	8003028 <_vfprintf_r+0xbd8>
 80029f2:	a956      	add	r1, sp, #344	; 0x158
 80029f4:	e000      	b.n	80029f8 <_vfprintf_r+0x5a8>
 80029f6:	4639      	mov	r1, r7
 80029f8:	08e2      	lsrs	r2, r4, #3
 80029fa:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80029fe:	08e8      	lsrs	r0, r5, #3
 8002a00:	f004 0307 	and.w	r3, r4, #7
 8002a04:	4605      	mov	r5, r0
 8002a06:	4614      	mov	r4, r2
 8002a08:	3330      	adds	r3, #48	; 0x30
 8002a0a:	ea54 0205 	orrs.w	r2, r4, r5
 8002a0e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002a12:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002a16:	d1ee      	bne.n	80029f6 <_vfprintf_r+0x5a6>
 8002a18:	f018 0f01 	tst.w	r8, #1
 8002a1c:	f000 8314 	beq.w	8003048 <_vfprintf_r+0xbf8>
 8002a20:	2b30      	cmp	r3, #48	; 0x30
 8002a22:	f000 8311 	beq.w	8003048 <_vfprintf_r+0xbf8>
 8002a26:	9a04      	ldr	r2, [sp, #16]
 8002a28:	3902      	subs	r1, #2
 8002a2a:	2330      	movs	r3, #48	; 0x30
 8002a2c:	1a52      	subs	r2, r2, r1
 8002a2e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002a32:	9209      	str	r2, [sp, #36]	; 0x24
 8002a34:	460f      	mov	r7, r1
 8002a36:	e68c      	b.n	8002752 <_vfprintf_r+0x302>
 8002a38:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a3c:	2200      	movs	r2, #0
 8002a3e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a42:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002a46:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002a4a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a4e:	2b09      	cmp	r3, #9
 8002a50:	d9f5      	bls.n	8002a3e <_vfprintf_r+0x5ee>
 8002a52:	9206      	str	r2, [sp, #24]
 8002a54:	e57c      	b.n	8002550 <_vfprintf_r+0x100>
 8002a56:	4b14      	ldr	r3, [pc, #80]	; (8002aa8 <_vfprintf_r+0x658>)
 8002a58:	9317      	str	r3, [sp, #92]	; 0x5c
 8002a5a:	f018 0f20 	tst.w	r8, #32
 8002a5e:	f000 8114 	beq.w	8002c8a <_vfprintf_r+0x83a>
 8002a62:	9c08      	ldr	r4, [sp, #32]
 8002a64:	3407      	adds	r4, #7
 8002a66:	f024 0307 	bic.w	r3, r4, #7
 8002a6a:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002a6e:	f103 0208 	add.w	r2, r3, #8
 8002a72:	9208      	str	r2, [sp, #32]
 8002a74:	f018 0f01 	tst.w	r8, #1
 8002a78:	d009      	beq.n	8002a8e <_vfprintf_r+0x63e>
 8002a7a:	ea54 0305 	orrs.w	r3, r4, r5
 8002a7e:	d006      	beq.n	8002a8e <_vfprintf_r+0x63e>
 8002a80:	2330      	movs	r3, #48	; 0x30
 8002a82:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002a86:	f048 0802 	orr.w	r8, r8, #2
 8002a8a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002a8e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002a92:	2202      	movs	r2, #2
 8002a94:	e79d      	b.n	80029d2 <_vfprintf_r+0x582>
 8002a96:	f048 0801 	orr.w	r8, r8, #1
 8002a9a:	f89a 6000 	ldrb.w	r6, [sl]
 8002a9e:	e555      	b.n	800254c <_vfprintf_r+0xfc>
 8002aa0:	080072a8 	.word	0x080072a8
 8002aa4:	080072b8 	.word	0x080072b8
 8002aa8:	08007274 	.word	0x08007274
 8002aac:	9e03      	ldr	r6, [sp, #12]
 8002aae:	4630      	mov	r0, r6
 8002ab0:	f002 feaa 	bl	8005808 <_localeconv_r>
 8002ab4:	6843      	ldr	r3, [r0, #4]
 8002ab6:	9318      	str	r3, [sp, #96]	; 0x60
 8002ab8:	4618      	mov	r0, r3
 8002aba:	f7fd fdc1 	bl	8000640 <strlen>
 8002abe:	901b      	str	r0, [sp, #108]	; 0x6c
 8002ac0:	4604      	mov	r4, r0
 8002ac2:	4630      	mov	r0, r6
 8002ac4:	f002 fea0 	bl	8005808 <_localeconv_r>
 8002ac8:	6883      	ldr	r3, [r0, #8]
 8002aca:	931a      	str	r3, [sp, #104]	; 0x68
 8002acc:	2c00      	cmp	r4, #0
 8002ace:	f43f adb8 	beq.w	8002642 <_vfprintf_r+0x1f2>
 8002ad2:	f89a 6000 	ldrb.w	r6, [sl]
 8002ad6:	2b00      	cmp	r3, #0
 8002ad8:	f43f ad38 	beq.w	800254c <_vfprintf_r+0xfc>
 8002adc:	781b      	ldrb	r3, [r3, #0]
 8002ade:	2b00      	cmp	r3, #0
 8002ae0:	f43f ad34 	beq.w	800254c <_vfprintf_r+0xfc>
 8002ae4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002ae8:	e530      	b.n	800254c <_vfprintf_r+0xfc>
 8002aea:	9b08      	ldr	r3, [sp, #32]
 8002aec:	f89a 6000 	ldrb.w	r6, [sl]
 8002af0:	681a      	ldr	r2, [r3, #0]
 8002af2:	9206      	str	r2, [sp, #24]
 8002af4:	2a00      	cmp	r2, #0
 8002af6:	f103 0304 	add.w	r3, r3, #4
 8002afa:	f2c0 8697 	blt.w	800382c <_vfprintf_r+0x13dc>
 8002afe:	9308      	str	r3, [sp, #32]
 8002b00:	e524      	b.n	800254c <_vfprintf_r+0xfc>
 8002b02:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002b06:	f89a 6000 	ldrb.w	r6, [sl]
 8002b0a:	e51f      	b.n	800254c <_vfprintf_r+0xfc>
 8002b0c:	f89a 6000 	ldrb.w	r6, [sl]
 8002b10:	f048 0804 	orr.w	r8, r8, #4
 8002b14:	e51a      	b.n	800254c <_vfprintf_r+0xfc>
 8002b16:	f89a 6000 	ldrb.w	r6, [sl]
 8002b1a:	2e2a      	cmp	r6, #42	; 0x2a
 8002b1c:	f10a 0201 	add.w	r2, sl, #1
 8002b20:	f001 81b0 	beq.w	8003e84 <_vfprintf_r+0x1a34>
 8002b24:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b28:	2b09      	cmp	r3, #9
 8002b2a:	4692      	mov	sl, r2
 8002b2c:	f04f 0900 	mov.w	r9, #0
 8002b30:	f63f ad0e 	bhi.w	8002550 <_vfprintf_r+0x100>
 8002b34:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b38:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002b3c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002b40:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b44:	2b09      	cmp	r3, #9
 8002b46:	d9f5      	bls.n	8002b34 <_vfprintf_r+0x6e4>
 8002b48:	e502      	b.n	8002550 <_vfprintf_r+0x100>
 8002b4a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002b4e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b52:	e4fb      	b.n	800254c <_vfprintf_r+0xfc>
 8002b54:	9c08      	ldr	r4, [sp, #32]
 8002b56:	3407      	adds	r4, #7
 8002b58:	f024 0407 	bic.w	r4, r4, #7
 8002b5c:	ed94 7b00 	vldr	d7, [r4]
 8002b60:	ec52 1b17 	vmov	r1, r2, d7
 8002b64:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002b68:	931d      	str	r3, [sp, #116]	; 0x74
 8002b6a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002b6e:	3408      	adds	r4, #8
 8002b70:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b74:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b78:	4bba      	ldr	r3, [pc, #744]	; (8002e64 <_vfprintf_r+0xa14>)
 8002b7a:	9408      	str	r4, [sp, #32]
 8002b7c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002b80:	f7fe fa74 	bl	800106c <__aeabi_dcmpun>
 8002b84:	2800      	cmp	r0, #0
 8002b86:	f040 846f 	bne.w	8003468 <_vfprintf_r+0x1018>
 8002b8a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002b8e:	4bb5      	ldr	r3, [pc, #724]	; (8002e64 <_vfprintf_r+0xa14>)
 8002b90:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002b94:	f7fe fa4c 	bl	8001030 <__aeabi_dcmple>
 8002b98:	2800      	cmp	r0, #0
 8002b9a:	f040 8465 	bne.w	8003468 <_vfprintf_r+0x1018>
 8002b9e:	2200      	movs	r2, #0
 8002ba0:	2300      	movs	r3, #0
 8002ba2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ba6:	f7fe fa39 	bl	800101c <__aeabi_dcmplt>
 8002baa:	2800      	cmp	r0, #0
 8002bac:	f040 855b 	bne.w	8003666 <_vfprintf_r+0x1216>
 8002bb0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002bb4:	4fac      	ldr	r7, [pc, #688]	; (8002e68 <_vfprintf_r+0xa18>)
 8002bb6:	4bad      	ldr	r3, [pc, #692]	; (8002e6c <_vfprintf_r+0xa1c>)
 8002bb8:	2000      	movs	r0, #0
 8002bba:	2103      	movs	r1, #3
 8002bbc:	9104      	str	r1, [sp, #16]
 8002bbe:	900a      	str	r0, [sp, #40]	; 0x28
 8002bc0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002bc4:	2e47      	cmp	r6, #71	; 0x47
 8002bc6:	bfd8      	it	le
 8002bc8:	461f      	movle	r7, r3
 8002bca:	9109      	str	r1, [sp, #36]	; 0x24
 8002bcc:	4681      	mov	r9, r0
 8002bce:	900f      	str	r0, [sp, #60]	; 0x3c
 8002bd0:	9014      	str	r0, [sp, #80]	; 0x50
 8002bd2:	9011      	str	r0, [sp, #68]	; 0x44
 8002bd4:	e5c9      	b.n	800276a <_vfprintf_r+0x31a>
 8002bd6:	9808      	ldr	r0, [sp, #32]
 8002bd8:	2300      	movs	r3, #0
 8002bda:	6801      	ldr	r1, [r0, #0]
 8002bdc:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002be0:	461a      	mov	r2, r3
 8002be2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002be6:	2301      	movs	r3, #1
 8002be8:	1d01      	adds	r1, r0, #4
 8002bea:	9304      	str	r3, [sp, #16]
 8002bec:	920a      	str	r2, [sp, #40]	; 0x28
 8002bee:	4691      	mov	r9, r2
 8002bf0:	920f      	str	r2, [sp, #60]	; 0x3c
 8002bf2:	9214      	str	r2, [sp, #80]	; 0x50
 8002bf4:	9211      	str	r2, [sp, #68]	; 0x44
 8002bf6:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002bfa:	af3d      	add	r7, sp, #244	; 0xf4
 8002bfc:	e5b9      	b.n	8002772 <_vfprintf_r+0x322>
 8002bfe:	9b08      	ldr	r3, [sp, #32]
 8002c00:	681f      	ldr	r7, [r3, #0]
 8002c02:	2500      	movs	r5, #0
 8002c04:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002c08:	1d1c      	adds	r4, r3, #4
 8002c0a:	2f00      	cmp	r7, #0
 8002c0c:	f000 8639 	beq.w	8003882 <_vfprintf_r+0x1432>
 8002c10:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002c14:	f000 8711 	beq.w	8003a3a <_vfprintf_r+0x15ea>
 8002c18:	464a      	mov	r2, r9
 8002c1a:	4629      	mov	r1, r5
 8002c1c:	4638      	mov	r0, r7
 8002c1e:	f7fd fd7f 	bl	8000720 <memchr>
 8002c22:	900a      	str	r0, [sp, #40]	; 0x28
 8002c24:	2800      	cmp	r0, #0
 8002c26:	f000 85e7 	beq.w	80037f8 <_vfprintf_r+0x13a8>
 8002c2a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c2c:	1bdb      	subs	r3, r3, r7
 8002c2e:	9309      	str	r3, [sp, #36]	; 0x24
 8002c30:	46a9      	mov	r9, r5
 8002c32:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002c36:	9408      	str	r4, [sp, #32]
 8002c38:	9304      	str	r3, [sp, #16]
 8002c3a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002c3e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002c42:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002c46:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002c4a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c4e:	e58c      	b.n	800276a <_vfprintf_r+0x31a>
 8002c50:	f048 0310 	orr.w	r3, r8, #16
 8002c54:	069a      	lsls	r2, r3, #26
 8002c56:	f53f aeb2 	bmi.w	80029be <_vfprintf_r+0x56e>
 8002c5a:	9a08      	ldr	r2, [sp, #32]
 8002c5c:	06df      	lsls	r7, r3, #27
 8002c5e:	f102 0104 	add.w	r1, r2, #4
 8002c62:	f100 837e 	bmi.w	8003362 <_vfprintf_r+0xf12>
 8002c66:	065d      	lsls	r5, r3, #25
 8002c68:	9a08      	ldr	r2, [sp, #32]
 8002c6a:	f100 84e4 	bmi.w	8003636 <_vfprintf_r+0x11e6>
 8002c6e:	059c      	lsls	r4, r3, #22
 8002c70:	f140 8377 	bpl.w	8003362 <_vfprintf_r+0xf12>
 8002c74:	7814      	ldrb	r4, [r2, #0]
 8002c76:	9108      	str	r1, [sp, #32]
 8002c78:	2500      	movs	r5, #0
 8002c7a:	2201      	movs	r2, #1
 8002c7c:	e6a9      	b.n	80029d2 <_vfprintf_r+0x582>
 8002c7e:	4b7c      	ldr	r3, [pc, #496]	; (8002e70 <_vfprintf_r+0xa20>)
 8002c80:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c82:	f018 0f20 	tst.w	r8, #32
 8002c86:	f47f aeec 	bne.w	8002a62 <_vfprintf_r+0x612>
 8002c8a:	9a08      	ldr	r2, [sp, #32]
 8002c8c:	f018 0f10 	tst.w	r8, #16
 8002c90:	f102 0304 	add.w	r3, r2, #4
 8002c94:	f040 8354 	bne.w	8003340 <_vfprintf_r+0xef0>
 8002c98:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002c9c:	9a08      	ldr	r2, [sp, #32]
 8002c9e:	f040 84d0 	bne.w	8003642 <_vfprintf_r+0x11f2>
 8002ca2:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002ca6:	f000 834b 	beq.w	8003340 <_vfprintf_r+0xef0>
 8002caa:	7814      	ldrb	r4, [r2, #0]
 8002cac:	9308      	str	r3, [sp, #32]
 8002cae:	2500      	movs	r5, #0
 8002cb0:	e6e0      	b.n	8002a74 <_vfprintf_r+0x624>
 8002cb2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002cb6:	f89a 6000 	ldrb.w	r6, [sl]
 8002cba:	2b00      	cmp	r3, #0
 8002cbc:	f47f ac46 	bne.w	800254c <_vfprintf_r+0xfc>
 8002cc0:	2320      	movs	r3, #32
 8002cc2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002cc6:	e441      	b.n	800254c <_vfprintf_r+0xfc>
 8002cc8:	f89a 6000 	ldrb.w	r6, [sl]
 8002ccc:	2e6c      	cmp	r6, #108	; 0x6c
 8002cce:	bf03      	ittte	eq
 8002cd0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002cd4:	f048 0820 	orreq.w	r8, r8, #32
 8002cd8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002cdc:	f048 0810 	orrne.w	r8, r8, #16
 8002ce0:	e434      	b.n	800254c <_vfprintf_r+0xfc>
 8002ce2:	9a08      	ldr	r2, [sp, #32]
 8002ce4:	f018 0f20 	tst.w	r8, #32
 8002ce8:	f852 3b04 	ldr.w	r3, [r2], #4
 8002cec:	9208      	str	r2, [sp, #32]
 8002cee:	f000 83a1 	beq.w	8003434 <_vfprintf_r+0xfe4>
 8002cf2:	9a05      	ldr	r2, [sp, #20]
 8002cf4:	4610      	mov	r0, r2
 8002cf6:	17d1      	asrs	r1, r2, #31
 8002cf8:	e9c3 0100 	strd	r0, r1, [r3]
 8002cfc:	4657      	mov	r7, sl
 8002cfe:	e64d      	b.n	800299c <_vfprintf_r+0x54c>
 8002d00:	f89a 6000 	ldrb.w	r6, [sl]
 8002d04:	2e68      	cmp	r6, #104	; 0x68
 8002d06:	bf03      	ittte	eq
 8002d08:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002d0c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002d10:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d14:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002d18:	e418      	b.n	800254c <_vfprintf_r+0xfc>
 8002d1a:	9908      	ldr	r1, [sp, #32]
 8002d1c:	4b55      	ldr	r3, [pc, #340]	; (8002e74 <_vfprintf_r+0xa24>)
 8002d1e:	680c      	ldr	r4, [r1, #0]
 8002d20:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d22:	f647 0230 	movw	r2, #30768	; 0x7830
 8002d26:	3104      	adds	r1, #4
 8002d28:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002d2c:	f048 0302 	orr.w	r3, r8, #2
 8002d30:	9108      	str	r1, [sp, #32]
 8002d32:	2500      	movs	r5, #0
 8002d34:	2202      	movs	r2, #2
 8002d36:	2678      	movs	r6, #120	; 0x78
 8002d38:	e64b      	b.n	80029d2 <_vfprintf_r+0x582>
 8002d3a:	f048 0808 	orr.w	r8, r8, #8
 8002d3e:	f89a 6000 	ldrb.w	r6, [sl]
 8002d42:	e403      	b.n	800254c <_vfprintf_r+0xfc>
 8002d44:	f048 0310 	orr.w	r3, r8, #16
 8002d48:	069f      	lsls	r7, r3, #26
 8002d4a:	f53f acd1 	bmi.w	80026f0 <_vfprintf_r+0x2a0>
 8002d4e:	9908      	ldr	r1, [sp, #32]
 8002d50:	06dd      	lsls	r5, r3, #27
 8002d52:	f101 0204 	add.w	r2, r1, #4
 8002d56:	f100 82fd 	bmi.w	8003354 <_vfprintf_r+0xf04>
 8002d5a:	065c      	lsls	r4, r3, #25
 8002d5c:	9908      	ldr	r1, [sp, #32]
 8002d5e:	f100 8475 	bmi.w	800364c <_vfprintf_r+0x11fc>
 8002d62:	0598      	lsls	r0, r3, #22
 8002d64:	f140 82f6 	bpl.w	8003354 <_vfprintf_r+0xf04>
 8002d68:	f991 4000 	ldrsb.w	r4, [r1]
 8002d6c:	9208      	str	r2, [sp, #32]
 8002d6e:	17e5      	asrs	r5, r4, #31
 8002d70:	4620      	mov	r0, r4
 8002d72:	4629      	mov	r1, r5
 8002d74:	e4c7      	b.n	8002706 <_vfprintf_r+0x2b6>
 8002d76:	9a08      	ldr	r2, [sp, #32]
 8002d78:	f018 0f10 	tst.w	r8, #16
 8002d7c:	f102 0304 	add.w	r3, r2, #4
 8002d80:	f040 82e3 	bne.w	800334a <_vfprintf_r+0xefa>
 8002d84:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d88:	9a08      	ldr	r2, [sp, #32]
 8002d8a:	f040 8467 	bne.w	800365c <_vfprintf_r+0x120c>
 8002d8e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002d92:	f000 82da 	beq.w	800334a <_vfprintf_r+0xefa>
 8002d96:	7814      	ldrb	r4, [r2, #0]
 8002d98:	9308      	str	r3, [sp, #32]
 8002d9a:	2500      	movs	r5, #0
 8002d9c:	e488      	b.n	80026b0 <_vfprintf_r+0x260>
 8002d9e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002da2:	f002 fd45 	bl	8005830 <__retarget_lock_release_recursive>
 8002da6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002daa:	9305      	str	r3, [sp, #20]
 8002dac:	e443      	b.n	8002636 <_vfprintf_r+0x1e6>
 8002dae:	2e00      	cmp	r6, #0
 8002db0:	f43f adf8 	beq.w	80029a4 <_vfprintf_r+0x554>
 8002db4:	2300      	movs	r3, #0
 8002db6:	2101      	movs	r1, #1
 8002db8:	461a      	mov	r2, r3
 8002dba:	9104      	str	r1, [sp, #16]
 8002dbc:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002dc0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002dc4:	930a      	str	r3, [sp, #40]	; 0x28
 8002dc6:	4699      	mov	r9, r3
 8002dc8:	930f      	str	r3, [sp, #60]	; 0x3c
 8002dca:	9314      	str	r3, [sp, #80]	; 0x50
 8002dcc:	9311      	str	r3, [sp, #68]	; 0x44
 8002dce:	9109      	str	r1, [sp, #36]	; 0x24
 8002dd0:	af3d      	add	r7, sp, #244	; 0xf4
 8002dd2:	e4ce      	b.n	8002772 <_vfprintf_r+0x322>
 8002dd4:	2e65      	cmp	r6, #101	; 0x65
 8002dd6:	f340 80ca 	ble.w	8002f6e <_vfprintf_r+0xb1e>
 8002dda:	2200      	movs	r2, #0
 8002ddc:	2300      	movs	r3, #0
 8002dde:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002de2:	f7fe f911 	bl	8001008 <__aeabi_dcmpeq>
 8002de6:	2800      	cmp	r0, #0
 8002de8:	f000 8169 	beq.w	80030be <_vfprintf_r+0xc6e>
 8002dec:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002dee:	4a22      	ldr	r2, [pc, #136]	; (8002e78 <_vfprintf_r+0xa28>)
 8002df0:	f8cb 2000 	str.w	r2, [fp]
 8002df4:	3301      	adds	r3, #1
 8002df6:	3401      	adds	r4, #1
 8002df8:	2201      	movs	r2, #1
 8002dfa:	2b07      	cmp	r3, #7
 8002dfc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e00:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e04:	f300 8406 	bgt.w	8003614 <_vfprintf_r+0x11c4>
 8002e08:	f10b 0b08 	add.w	fp, fp, #8
 8002e0c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002e0e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002e10:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e12:	4293      	cmp	r3, r2
 8002e14:	db03      	blt.n	8002e1e <_vfprintf_r+0x9ce>
 8002e16:	f018 0f01 	tst.w	r8, #1
 8002e1a:	f43f ad6a 	beq.w	80028f2 <_vfprintf_r+0x4a2>
 8002e1e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e20:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e22:	f8cb 2000 	str.w	r2, [fp]
 8002e26:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002e28:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e2c:	3301      	adds	r3, #1
 8002e2e:	4414      	add	r4, r2
 8002e30:	2b07      	cmp	r3, #7
 8002e32:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e36:	f300 8517 	bgt.w	8003868 <_vfprintf_r+0x1418>
 8002e3a:	f10b 0b08 	add.w	fp, fp, #8
 8002e3e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002e40:	1e5d      	subs	r5, r3, #1
 8002e42:	2d00      	cmp	r5, #0
 8002e44:	f77f ad55 	ble.w	80028f2 <_vfprintf_r+0x4a2>
 8002e48:	2d10      	cmp	r5, #16
 8002e4a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e4c:	4b0b      	ldr	r3, [pc, #44]	; (8002e7c <_vfprintf_r+0xa2c>)
 8002e4e:	f340 82e7 	ble.w	8003420 <_vfprintf_r+0xfd0>
 8002e52:	4619      	mov	r1, r3
 8002e54:	2610      	movs	r6, #16
 8002e56:	4623      	mov	r3, r4
 8002e58:	9f03      	ldr	r7, [sp, #12]
 8002e5a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e5e:	460c      	mov	r4, r1
 8002e60:	e014      	b.n	8002e8c <_vfprintf_r+0xa3c>
 8002e62:	bf00      	nop
 8002e64:	7fefffff 	.word	0x7fefffff
 8002e68:	08007268 	.word	0x08007268
 8002e6c:	08007264 	.word	0x08007264
 8002e70:	08007288 	.word	0x08007288
 8002e74:	08007274 	.word	0x08007274
 8002e78:	080072a4 	.word	0x080072a4
 8002e7c:	080072b8 	.word	0x080072b8
 8002e80:	f10b 0b08 	add.w	fp, fp, #8
 8002e84:	3d10      	subs	r5, #16
 8002e86:	2d10      	cmp	r5, #16
 8002e88:	f340 82c7 	ble.w	800341a <_vfprintf_r+0xfca>
 8002e8c:	3201      	adds	r2, #1
 8002e8e:	3310      	adds	r3, #16
 8002e90:	2a07      	cmp	r2, #7
 8002e92:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002e96:	e9cb 4600 	strd	r4, r6, [fp]
 8002e9a:	ddf1      	ble.n	8002e80 <_vfprintf_r+0xa30>
 8002e9c:	aa2a      	add	r2, sp, #168	; 0xa8
 8002e9e:	4649      	mov	r1, r9
 8002ea0:	4638      	mov	r0, r7
 8002ea2:	f003 fe03 	bl	8006aac <__sprint_r>
 8002ea6:	2800      	cmp	r0, #0
 8002ea8:	d14c      	bne.n	8002f44 <_vfprintf_r+0xaf4>
 8002eaa:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002eae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002eb2:	e7e7      	b.n	8002e84 <_vfprintf_r+0xa34>
 8002eb4:	9b06      	ldr	r3, [sp, #24]
 8002eb6:	9a04      	ldr	r2, [sp, #16]
 8002eb8:	1a9d      	subs	r5, r3, r2
 8002eba:	2d00      	cmp	r5, #0
 8002ebc:	f77f acc9 	ble.w	8002852 <_vfprintf_r+0x402>
 8002ec0:	2d10      	cmp	r5, #16
 8002ec2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ec4:	4bbc      	ldr	r3, [pc, #752]	; (80031b8 <_vfprintf_r+0xd68>)
 8002ec6:	dd27      	ble.n	8002f18 <_vfprintf_r+0xac8>
 8002ec8:	4659      	mov	r1, fp
 8002eca:	4620      	mov	r0, r4
 8002ecc:	46bb      	mov	fp, r7
 8002ece:	461c      	mov	r4, r3
 8002ed0:	4637      	mov	r7, r6
 8002ed2:	9e07      	ldr	r6, [sp, #28]
 8002ed4:	e004      	b.n	8002ee0 <_vfprintf_r+0xa90>
 8002ed6:	3d10      	subs	r5, #16
 8002ed8:	2d10      	cmp	r5, #16
 8002eda:	f101 0108 	add.w	r1, r1, #8
 8002ede:	dd16      	ble.n	8002f0e <_vfprintf_r+0xabe>
 8002ee0:	3201      	adds	r2, #1
 8002ee2:	3010      	adds	r0, #16
 8002ee4:	2310      	movs	r3, #16
 8002ee6:	2a07      	cmp	r2, #7
 8002ee8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002eec:	600c      	str	r4, [r1, #0]
 8002eee:	604b      	str	r3, [r1, #4]
 8002ef0:	ddf1      	ble.n	8002ed6 <_vfprintf_r+0xa86>
 8002ef2:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ef4:	4631      	mov	r1, r6
 8002ef6:	9803      	ldr	r0, [sp, #12]
 8002ef8:	f003 fdd8 	bl	8006aac <__sprint_r>
 8002efc:	2800      	cmp	r0, #0
 8002efe:	f040 80a8 	bne.w	8003052 <_vfprintf_r+0xc02>
 8002f02:	3d10      	subs	r5, #16
 8002f04:	2d10      	cmp	r5, #16
 8002f06:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002f0a:	a92d      	add	r1, sp, #180	; 0xb4
 8002f0c:	dce8      	bgt.n	8002ee0 <_vfprintf_r+0xa90>
 8002f0e:	463e      	mov	r6, r7
 8002f10:	4623      	mov	r3, r4
 8002f12:	465f      	mov	r7, fp
 8002f14:	4604      	mov	r4, r0
 8002f16:	468b      	mov	fp, r1
 8002f18:	3201      	adds	r2, #1
 8002f1a:	442c      	add	r4, r5
 8002f1c:	2a07      	cmp	r2, #7
 8002f1e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002f22:	e9cb 3500 	strd	r3, r5, [fp]
 8002f26:	f300 8292 	bgt.w	800344e <_vfprintf_r+0xffe>
 8002f2a:	f10b 0b08 	add.w	fp, fp, #8
 8002f2e:	e490      	b.n	8002852 <_vfprintf_r+0x402>
 8002f30:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f32:	9907      	ldr	r1, [sp, #28]
 8002f34:	9803      	ldr	r0, [sp, #12]
 8002f36:	f003 fdb9 	bl	8006aac <__sprint_r>
 8002f3a:	2800      	cmp	r0, #0
 8002f3c:	f43f ad23 	beq.w	8002986 <_vfprintf_r+0x536>
 8002f40:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f44:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f46:	b111      	cbz	r1, 8002f4e <_vfprintf_r+0xafe>
 8002f48:	9803      	ldr	r0, [sp, #12]
 8002f4a:	f002 f9c1 	bl	80052d0 <_free_r>
 8002f4e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002f52:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002f56:	07d0      	lsls	r0, r2, #31
 8002f58:	d402      	bmi.n	8002f60 <_vfprintf_r+0xb10>
 8002f5a:	0599      	lsls	r1, r3, #22
 8002f5c:	f140 81d0 	bpl.w	8003300 <_vfprintf_r+0xeb0>
 8002f60:	065a      	lsls	r2, r3, #25
 8002f62:	f53f ab65 	bmi.w	8002630 <_vfprintf_r+0x1e0>
 8002f66:	9805      	ldr	r0, [sp, #20]
 8002f68:	b057      	add	sp, #348	; 0x15c
 8002f6a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002f6e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002f70:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002f72:	2a01      	cmp	r2, #1
 8002f74:	f104 0401 	add.w	r4, r4, #1
 8002f78:	f103 0501 	add.w	r5, r3, #1
 8002f7c:	f10b 0608 	add.w	r6, fp, #8
 8002f80:	f340 811c 	ble.w	80031bc <_vfprintf_r+0xd6c>
 8002f84:	2301      	movs	r3, #1
 8002f86:	2d07      	cmp	r5, #7
 8002f88:	f8cb 7000 	str.w	r7, [fp]
 8002f8c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002f90:	f8cb 3004 	str.w	r3, [fp, #4]
 8002f94:	f300 81bb 	bgt.w	800330e <_vfprintf_r+0xebe>
 8002f98:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002f9a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002f9c:	1c69      	adds	r1, r5, #1
 8002f9e:	441c      	add	r4, r3
 8002fa0:	2907      	cmp	r1, #7
 8002fa2:	910b      	str	r1, [sp, #44]	; 0x2c
 8002fa4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002fa8:	e9c6 2300 	strd	r2, r3, [r6]
 8002fac:	f300 81bb 	bgt.w	8003326 <_vfprintf_r+0xed6>
 8002fb0:	3608      	adds	r6, #8
 8002fb2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002fb4:	1c53      	adds	r3, r2, #1
 8002fb6:	461d      	mov	r5, r3
 8002fb8:	9509      	str	r5, [sp, #36]	; 0x24
 8002fba:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002fbc:	930e      	str	r3, [sp, #56]	; 0x38
 8002fbe:	2200      	movs	r2, #0
 8002fc0:	2300      	movs	r3, #0
 8002fc2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002fc6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8002fca:	f106 0b08 	add.w	fp, r6, #8
 8002fce:	f7fe f81b 	bl	8001008 <__aeabi_dcmpeq>
 8002fd2:	2800      	cmp	r0, #0
 8002fd4:	f040 80c2 	bne.w	800315c <_vfprintf_r+0xd0c>
 8002fd8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8002fda:	f8c6 9004 	str.w	r9, [r6, #4]
 8002fde:	3701      	adds	r7, #1
 8002fe0:	444c      	add	r4, r9
 8002fe2:	2d07      	cmp	r5, #7
 8002fe4:	6037      	str	r7, [r6, #0]
 8002fe6:	942c      	str	r4, [sp, #176]	; 0xb0
 8002fe8:	952b      	str	r5, [sp, #172]	; 0xac
 8002fea:	f300 80f9 	bgt.w	80031e0 <_vfprintf_r+0xd90>
 8002fee:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002ff0:	f106 0310 	add.w	r3, r6, #16
 8002ff4:	3202      	adds	r2, #2
 8002ff6:	465e      	mov	r6, fp
 8002ff8:	9209      	str	r2, [sp, #36]	; 0x24
 8002ffa:	469b      	mov	fp, r3
 8002ffc:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8002ffe:	6072      	str	r2, [r6, #4]
 8003000:	4414      	add	r4, r2
 8003002:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003004:	942c      	str	r4, [sp, #176]	; 0xb0
 8003006:	ab26      	add	r3, sp, #152	; 0x98
 8003008:	2a07      	cmp	r2, #7
 800300a:	922b      	str	r2, [sp, #172]	; 0xac
 800300c:	6033      	str	r3, [r6, #0]
 800300e:	f77f ac70 	ble.w	80028f2 <_vfprintf_r+0x4a2>
 8003012:	aa2a      	add	r2, sp, #168	; 0xa8
 8003014:	9907      	ldr	r1, [sp, #28]
 8003016:	9803      	ldr	r0, [sp, #12]
 8003018:	f003 fd48 	bl	8006aac <__sprint_r>
 800301c:	2800      	cmp	r0, #0
 800301e:	d18f      	bne.n	8002f40 <_vfprintf_r+0xaf0>
 8003020:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003022:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003026:	e464      	b.n	80028f2 <_vfprintf_r+0x4a2>
 8003028:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800302a:	af56      	add	r7, sp, #344	; 0x158
 800302c:	0923      	lsrs	r3, r4, #4
 800302e:	f004 010f 	and.w	r1, r4, #15
 8003032:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003036:	092a      	lsrs	r2, r5, #4
 8003038:	461c      	mov	r4, r3
 800303a:	4615      	mov	r5, r2
 800303c:	5c43      	ldrb	r3, [r0, r1]
 800303e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003042:	ea54 0305 	orrs.w	r3, r4, r5
 8003046:	d1f1      	bne.n	800302c <_vfprintf_r+0xbdc>
 8003048:	9b04      	ldr	r3, [sp, #16]
 800304a:	1bdb      	subs	r3, r3, r7
 800304c:	9309      	str	r3, [sp, #36]	; 0x24
 800304e:	f7ff bb80 	b.w	8002752 <_vfprintf_r+0x302>
 8003052:	46b1      	mov	r9, r6
 8003054:	e776      	b.n	8002f44 <_vfprintf_r+0xaf4>
 8003056:	aa2a      	add	r2, sp, #168	; 0xa8
 8003058:	9907      	ldr	r1, [sp, #28]
 800305a:	9803      	ldr	r0, [sp, #12]
 800305c:	f003 fd26 	bl	8006aac <__sprint_r>
 8003060:	2800      	cmp	r0, #0
 8003062:	f47f af6d 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003066:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003068:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800306c:	f7ff bbdd 	b.w	800282a <_vfprintf_r+0x3da>
 8003070:	aa2a      	add	r2, sp, #168	; 0xa8
 8003072:	9907      	ldr	r1, [sp, #28]
 8003074:	9803      	ldr	r0, [sp, #12]
 8003076:	f003 fd19 	bl	8006aac <__sprint_r>
 800307a:	2800      	cmp	r0, #0
 800307c:	f47f af60 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003080:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003082:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003086:	f7ff bbe0 	b.w	800284a <_vfprintf_r+0x3fa>
 800308a:	4698      	mov	r8, r3
 800308c:	2d00      	cmp	r5, #0
 800308e:	bf08      	it	eq
 8003090:	2c0a      	cmpeq	r4, #10
 8003092:	f080 8170 	bcs.w	8003376 <_vfprintf_r+0xf26>
 8003096:	af56      	add	r7, sp, #344	; 0x158
 8003098:	3430      	adds	r4, #48	; 0x30
 800309a:	2301      	movs	r3, #1
 800309c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80030a0:	9309      	str	r3, [sp, #36]	; 0x24
 80030a2:	f7ff bb56 	b.w	8002752 <_vfprintf_r+0x302>
 80030a6:	aa2a      	add	r2, sp, #168	; 0xa8
 80030a8:	9907      	ldr	r1, [sp, #28]
 80030aa:	9803      	ldr	r0, [sp, #12]
 80030ac:	f003 fcfe 	bl	8006aac <__sprint_r>
 80030b0:	2800      	cmp	r0, #0
 80030b2:	f47f af45 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 80030b6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030b8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030bc:	e406      	b.n	80028cc <_vfprintf_r+0x47c>
 80030be:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030c0:	2b00      	cmp	r3, #0
 80030c2:	f340 8273 	ble.w	80035ac <_vfprintf_r+0x115c>
 80030c6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80030ca:	4293      	cmp	r3, r2
 80030cc:	bfa8      	it	ge
 80030ce:	4613      	movge	r3, r2
 80030d0:	2b00      	cmp	r3, #0
 80030d2:	461d      	mov	r5, r3
 80030d4:	dd0d      	ble.n	80030f2 <_vfprintf_r+0xca2>
 80030d6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030d8:	f8cb 7000 	str.w	r7, [fp]
 80030dc:	3301      	adds	r3, #1
 80030de:	442c      	add	r4, r5
 80030e0:	2b07      	cmp	r3, #7
 80030e2:	942c      	str	r4, [sp, #176]	; 0xb0
 80030e4:	f8cb 5004 	str.w	r5, [fp, #4]
 80030e8:	932b      	str	r3, [sp, #172]	; 0xac
 80030ea:	f300 82c1 	bgt.w	8003670 <_vfprintf_r+0x1220>
 80030ee:	f10b 0b08 	add.w	fp, fp, #8
 80030f2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80030f4:	2d00      	cmp	r5, #0
 80030f6:	bfa8      	it	ge
 80030f8:	1b5b      	subge	r3, r3, r5
 80030fa:	2b00      	cmp	r3, #0
 80030fc:	461d      	mov	r5, r3
 80030fe:	f340 8099 	ble.w	8003234 <_vfprintf_r+0xde4>
 8003102:	2d10      	cmp	r5, #16
 8003104:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003106:	4b2c      	ldr	r3, [pc, #176]	; (80031b8 <_vfprintf_r+0xd68>)
 8003108:	f340 83db 	ble.w	80038c2 <_vfprintf_r+0x1472>
 800310c:	4618      	mov	r0, r3
 800310e:	4621      	mov	r1, r4
 8003110:	465b      	mov	r3, fp
 8003112:	2610      	movs	r6, #16
 8003114:	46bb      	mov	fp, r7
 8003116:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800311a:	9c07      	ldr	r4, [sp, #28]
 800311c:	4607      	mov	r7, r0
 800311e:	e004      	b.n	800312a <_vfprintf_r+0xcda>
 8003120:	3308      	adds	r3, #8
 8003122:	3d10      	subs	r5, #16
 8003124:	2d10      	cmp	r5, #16
 8003126:	f340 83c7 	ble.w	80038b8 <_vfprintf_r+0x1468>
 800312a:	3201      	adds	r2, #1
 800312c:	3110      	adds	r1, #16
 800312e:	2a07      	cmp	r2, #7
 8003130:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003134:	e9c3 7600 	strd	r7, r6, [r3]
 8003138:	ddf2      	ble.n	8003120 <_vfprintf_r+0xcd0>
 800313a:	aa2a      	add	r2, sp, #168	; 0xa8
 800313c:	4621      	mov	r1, r4
 800313e:	4648      	mov	r0, r9
 8003140:	f003 fcb4 	bl	8006aac <__sprint_r>
 8003144:	2800      	cmp	r0, #0
 8003146:	f040 84a5 	bne.w	8003a94 <_vfprintf_r+0x1644>
 800314a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800314e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003150:	e7e7      	b.n	8003122 <_vfprintf_r+0xcd2>
 8003152:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003156:	af56      	add	r7, sp, #344	; 0x158
 8003158:	f7ff bafb 	b.w	8002752 <_vfprintf_r+0x302>
 800315c:	f1b9 0f00 	cmp.w	r9, #0
 8003160:	f77f af4c 	ble.w	8002ffc <_vfprintf_r+0xbac>
 8003164:	f1b9 0f10 	cmp.w	r9, #16
 8003168:	4b13      	ldr	r3, [pc, #76]	; (80031b8 <_vfprintf_r+0xd68>)
 800316a:	f340 8659 	ble.w	8003e20 <_vfprintf_r+0x19d0>
 800316e:	4619      	mov	r1, r3
 8003170:	4622      	mov	r2, r4
 8003172:	4633      	mov	r3, r6
 8003174:	2710      	movs	r7, #16
 8003176:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800317a:	9c07      	ldr	r4, [sp, #28]
 800317c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800317e:	460e      	mov	r6, r1
 8003180:	e007      	b.n	8003192 <_vfprintf_r+0xd42>
 8003182:	3308      	adds	r3, #8
 8003184:	f1a9 0910 	sub.w	r9, r9, #16
 8003188:	f1b9 0f10 	cmp.w	r9, #16
 800318c:	f340 8353 	ble.w	8003836 <_vfprintf_r+0x13e6>
 8003190:	3501      	adds	r5, #1
 8003192:	3210      	adds	r2, #16
 8003194:	2d07      	cmp	r5, #7
 8003196:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800319a:	e9c3 6700 	strd	r6, r7, [r3]
 800319e:	ddf0      	ble.n	8003182 <_vfprintf_r+0xd32>
 80031a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80031a2:	4621      	mov	r1, r4
 80031a4:	4658      	mov	r0, fp
 80031a6:	f003 fc81 	bl	8006aac <__sprint_r>
 80031aa:	2800      	cmp	r0, #0
 80031ac:	f040 8472 	bne.w	8003a94 <_vfprintf_r+0x1644>
 80031b0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80031b4:	ab2d      	add	r3, sp, #180	; 0xb4
 80031b6:	e7e5      	b.n	8003184 <_vfprintf_r+0xd34>
 80031b8:	080072b8 	.word	0x080072b8
 80031bc:	f018 0f01 	tst.w	r8, #1
 80031c0:	f47f aee0 	bne.w	8002f84 <_vfprintf_r+0xb34>
 80031c4:	2201      	movs	r2, #1
 80031c6:	2d07      	cmp	r5, #7
 80031c8:	f8cb 7000 	str.w	r7, [fp]
 80031cc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80031d0:	f8cb 2004 	str.w	r2, [fp, #4]
 80031d4:	dc04      	bgt.n	80031e0 <_vfprintf_r+0xd90>
 80031d6:	3302      	adds	r3, #2
 80031d8:	9309      	str	r3, [sp, #36]	; 0x24
 80031da:	f10b 0b10 	add.w	fp, fp, #16
 80031de:	e70d      	b.n	8002ffc <_vfprintf_r+0xbac>
 80031e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80031e2:	9907      	ldr	r1, [sp, #28]
 80031e4:	9803      	ldr	r0, [sp, #12]
 80031e6:	f003 fc61 	bl	8006aac <__sprint_r>
 80031ea:	2800      	cmp	r0, #0
 80031ec:	f47f aea8 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 80031f0:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80031f4:	3301      	adds	r3, #1
 80031f6:	9309      	str	r3, [sp, #36]	; 0x24
 80031f8:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80031fc:	ae2d      	add	r6, sp, #180	; 0xb4
 80031fe:	e6fd      	b.n	8002ffc <_vfprintf_r+0xbac>
 8003200:	aa2a      	add	r2, sp, #168	; 0xa8
 8003202:	9907      	ldr	r1, [sp, #28]
 8003204:	9803      	ldr	r0, [sp, #12]
 8003206:	f003 fc51 	bl	8006aac <__sprint_r>
 800320a:	2800      	cmp	r0, #0
 800320c:	f47f ae98 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003210:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003214:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003216:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800321a:	f7ff baf6 	b.w	800280a <_vfprintf_r+0x3ba>
 800321e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003220:	9907      	ldr	r1, [sp, #28]
 8003222:	9803      	ldr	r0, [sp, #12]
 8003224:	f003 fc42 	bl	8006aac <__sprint_r>
 8003228:	2800      	cmp	r0, #0
 800322a:	f47f ae89 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 800322e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003230:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003234:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003236:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800323a:	443b      	add	r3, r7
 800323c:	4699      	mov	r9, r3
 800323e:	f040 8357 	bne.w	80038f0 <_vfprintf_r+0x14a0>
 8003242:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003244:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003246:	4293      	cmp	r3, r2
 8003248:	db49      	blt.n	80032de <_vfprintf_r+0xe8e>
 800324a:	f018 0f01 	tst.w	r8, #1
 800324e:	d146      	bne.n	80032de <_vfprintf_r+0xe8e>
 8003250:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003252:	18bd      	adds	r5, r7, r2
 8003254:	eba5 0509 	sub.w	r5, r5, r9
 8003258:	1ad3      	subs	r3, r2, r3
 800325a:	429d      	cmp	r5, r3
 800325c:	bfa8      	it	ge
 800325e:	461d      	movge	r5, r3
 8003260:	2d00      	cmp	r5, #0
 8003262:	dd0d      	ble.n	8003280 <_vfprintf_r+0xe30>
 8003264:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003266:	f8cb 9000 	str.w	r9, [fp]
 800326a:	3201      	adds	r2, #1
 800326c:	442c      	add	r4, r5
 800326e:	2a07      	cmp	r2, #7
 8003270:	942c      	str	r4, [sp, #176]	; 0xb0
 8003272:	f8cb 5004 	str.w	r5, [fp, #4]
 8003276:	922b      	str	r2, [sp, #172]	; 0xac
 8003278:	f300 8462 	bgt.w	8003b40 <_vfprintf_r+0x16f0>
 800327c:	f10b 0b08 	add.w	fp, fp, #8
 8003280:	2d00      	cmp	r5, #0
 8003282:	bfac      	ite	ge
 8003284:	1b5d      	subge	r5, r3, r5
 8003286:	461d      	movlt	r5, r3
 8003288:	2d00      	cmp	r5, #0
 800328a:	f77f ab32 	ble.w	80028f2 <_vfprintf_r+0x4a2>
 800328e:	2d10      	cmp	r5, #16
 8003290:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003292:	4bc5      	ldr	r3, [pc, #788]	; (80035a8 <_vfprintf_r+0x1158>)
 8003294:	f340 80c4 	ble.w	8003420 <_vfprintf_r+0xfd0>
 8003298:	4619      	mov	r1, r3
 800329a:	2610      	movs	r6, #16
 800329c:	4623      	mov	r3, r4
 800329e:	9f03      	ldr	r7, [sp, #12]
 80032a0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80032a4:	460c      	mov	r4, r1
 80032a6:	e005      	b.n	80032b4 <_vfprintf_r+0xe64>
 80032a8:	f10b 0b08 	add.w	fp, fp, #8
 80032ac:	3d10      	subs	r5, #16
 80032ae:	2d10      	cmp	r5, #16
 80032b0:	f340 80b3 	ble.w	800341a <_vfprintf_r+0xfca>
 80032b4:	3201      	adds	r2, #1
 80032b6:	3310      	adds	r3, #16
 80032b8:	2a07      	cmp	r2, #7
 80032ba:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80032be:	e9cb 4600 	strd	r4, r6, [fp]
 80032c2:	ddf1      	ble.n	80032a8 <_vfprintf_r+0xe58>
 80032c4:	aa2a      	add	r2, sp, #168	; 0xa8
 80032c6:	4649      	mov	r1, r9
 80032c8:	4638      	mov	r0, r7
 80032ca:	f003 fbef 	bl	8006aac <__sprint_r>
 80032ce:	2800      	cmp	r0, #0
 80032d0:	f47f ae38 	bne.w	8002f44 <_vfprintf_r+0xaf4>
 80032d4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80032d8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032dc:	e7e6      	b.n	80032ac <_vfprintf_r+0xe5c>
 80032de:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032e0:	9916      	ldr	r1, [sp, #88]	; 0x58
 80032e2:	f8cb 1000 	str.w	r1, [fp]
 80032e6:	9915      	ldr	r1, [sp, #84]	; 0x54
 80032e8:	f8cb 1004 	str.w	r1, [fp, #4]
 80032ec:	3201      	adds	r2, #1
 80032ee:	440c      	add	r4, r1
 80032f0:	2a07      	cmp	r2, #7
 80032f2:	942c      	str	r4, [sp, #176]	; 0xb0
 80032f4:	922b      	str	r2, [sp, #172]	; 0xac
 80032f6:	f300 828c 	bgt.w	8003812 <_vfprintf_r+0x13c2>
 80032fa:	f10b 0b08 	add.w	fp, fp, #8
 80032fe:	e7a7      	b.n	8003250 <_vfprintf_r+0xe00>
 8003300:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003304:	f002 fa94 	bl	8005830 <__retarget_lock_release_recursive>
 8003308:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800330c:	e628      	b.n	8002f60 <_vfprintf_r+0xb10>
 800330e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003310:	9907      	ldr	r1, [sp, #28]
 8003312:	9803      	ldr	r0, [sp, #12]
 8003314:	f003 fbca 	bl	8006aac <__sprint_r>
 8003318:	2800      	cmp	r0, #0
 800331a:	f47f ae11 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 800331e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003322:	ae2d      	add	r6, sp, #180	; 0xb4
 8003324:	e638      	b.n	8002f98 <_vfprintf_r+0xb48>
 8003326:	aa2a      	add	r2, sp, #168	; 0xa8
 8003328:	9907      	ldr	r1, [sp, #28]
 800332a:	9803      	ldr	r0, [sp, #12]
 800332c:	f003 fbbe 	bl	8006aac <__sprint_r>
 8003330:	2800      	cmp	r0, #0
 8003332:	f47f ae05 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003336:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800333a:	ae2d      	add	r6, sp, #180	; 0xb4
 800333c:	930b      	str	r3, [sp, #44]	; 0x2c
 800333e:	e638      	b.n	8002fb2 <_vfprintf_r+0xb62>
 8003340:	6814      	ldr	r4, [r2, #0]
 8003342:	9308      	str	r3, [sp, #32]
 8003344:	2500      	movs	r5, #0
 8003346:	f7ff bb95 	b.w	8002a74 <_vfprintf_r+0x624>
 800334a:	6814      	ldr	r4, [r2, #0]
 800334c:	9308      	str	r3, [sp, #32]
 800334e:	2500      	movs	r5, #0
 8003350:	f7ff b9ae 	b.w	80026b0 <_vfprintf_r+0x260>
 8003354:	680c      	ldr	r4, [r1, #0]
 8003356:	9208      	str	r2, [sp, #32]
 8003358:	17e5      	asrs	r5, r4, #31
 800335a:	4620      	mov	r0, r4
 800335c:	4629      	mov	r1, r5
 800335e:	f7ff b9d2 	b.w	8002706 <_vfprintf_r+0x2b6>
 8003362:	6814      	ldr	r4, [r2, #0]
 8003364:	9108      	str	r1, [sp, #32]
 8003366:	2201      	movs	r2, #1
 8003368:	2500      	movs	r5, #0
 800336a:	f7ff bb32 	b.w	80029d2 <_vfprintf_r+0x582>
 800336e:	2a01      	cmp	r2, #1
 8003370:	f47f ab3c 	bne.w	80029ec <_vfprintf_r+0x59c>
 8003374:	e68f      	b.n	8003096 <_vfprintf_r+0xc46>
 8003376:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800337a:	2200      	movs	r2, #0
 800337c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003380:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003384:	af56      	add	r7, sp, #344	; 0x158
 8003386:	4692      	mov	sl, r2
 8003388:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800338c:	461e      	mov	r6, r3
 800338e:	e00a      	b.n	80033a6 <_vfprintf_r+0xf56>
 8003390:	2300      	movs	r3, #0
 8003392:	4620      	mov	r0, r4
 8003394:	4629      	mov	r1, r5
 8003396:	220a      	movs	r2, #10
 8003398:	f7fc ff32 	bl	8000200 <__aeabi_uldivmod>
 800339c:	4604      	mov	r4, r0
 800339e:	460d      	mov	r5, r1
 80033a0:	ea54 0305 	orrs.w	r3, r4, r5
 80033a4:	d029      	beq.n	80033fa <_vfprintf_r+0xfaa>
 80033a6:	220a      	movs	r2, #10
 80033a8:	2300      	movs	r3, #0
 80033aa:	4620      	mov	r0, r4
 80033ac:	4629      	mov	r1, r5
 80033ae:	f7fc ff27 	bl	8000200 <__aeabi_uldivmod>
 80033b2:	3230      	adds	r2, #48	; 0x30
 80033b4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80033b8:	f10a 0a01 	add.w	sl, sl, #1
 80033bc:	3f01      	subs	r7, #1
 80033be:	2e00      	cmp	r6, #0
 80033c0:	d0e6      	beq.n	8003390 <_vfprintf_r+0xf40>
 80033c2:	f898 3000 	ldrb.w	r3, [r8]
 80033c6:	459a      	cmp	sl, r3
 80033c8:	d1e2      	bne.n	8003390 <_vfprintf_r+0xf40>
 80033ca:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80033ce:	d0df      	beq.n	8003390 <_vfprintf_r+0xf40>
 80033d0:	2d00      	cmp	r5, #0
 80033d2:	bf08      	it	eq
 80033d4:	2c0a      	cmpeq	r4, #10
 80033d6:	d3db      	bcc.n	8003390 <_vfprintf_r+0xf40>
 80033d8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80033da:	9918      	ldr	r1, [sp, #96]	; 0x60
 80033dc:	1aff      	subs	r7, r7, r3
 80033de:	461a      	mov	r2, r3
 80033e0:	4638      	mov	r0, r7
 80033e2:	f003 faf5 	bl	80069d0 <strncpy>
 80033e6:	f898 3001 	ldrb.w	r3, [r8, #1]
 80033ea:	2b00      	cmp	r3, #0
 80033ec:	f000 8496 	beq.w	8003d1c <_vfprintf_r+0x18cc>
 80033f0:	f108 0801 	add.w	r8, r8, #1
 80033f4:	f04f 0a00 	mov.w	sl, #0
 80033f8:	e7ca      	b.n	8003390 <_vfprintf_r+0xf40>
 80033fa:	9b04      	ldr	r3, [sp, #16]
 80033fc:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003400:	1bdb      	subs	r3, r3, r7
 8003402:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003406:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003408:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800340c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003410:	9309      	str	r3, [sp, #36]	; 0x24
 8003412:	f7ff b99e 	b.w	8002752 <_vfprintf_r+0x302>
 8003416:	46c1      	mov	r9, r8
 8003418:	e594      	b.n	8002f44 <_vfprintf_r+0xaf4>
 800341a:	4621      	mov	r1, r4
 800341c:	461c      	mov	r4, r3
 800341e:	460b      	mov	r3, r1
 8003420:	3201      	adds	r2, #1
 8003422:	442c      	add	r4, r5
 8003424:	2a07      	cmp	r2, #7
 8003426:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800342a:	e9cb 3500 	strd	r3, r5, [fp]
 800342e:	f77f aa5e 	ble.w	80028ee <_vfprintf_r+0x49e>
 8003432:	e5ee      	b.n	8003012 <_vfprintf_r+0xbc2>
 8003434:	f018 0f10 	tst.w	r8, #16
 8003438:	f040 80f8 	bne.w	800362c <_vfprintf_r+0x11dc>
 800343c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003440:	f000 8351 	beq.w	8003ae6 <_vfprintf_r+0x1696>
 8003444:	9a05      	ldr	r2, [sp, #20]
 8003446:	801a      	strh	r2, [r3, #0]
 8003448:	4657      	mov	r7, sl
 800344a:	f7ff baa7 	b.w	800299c <_vfprintf_r+0x54c>
 800344e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003450:	9907      	ldr	r1, [sp, #28]
 8003452:	9803      	ldr	r0, [sp, #12]
 8003454:	f003 fb2a 	bl	8006aac <__sprint_r>
 8003458:	2800      	cmp	r0, #0
 800345a:	f47f ad71 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 800345e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003460:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003464:	f7ff b9f5 	b.w	8002852 <_vfprintf_r+0x402>
 8003468:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800346c:	4602      	mov	r2, r0
 800346e:	460b      	mov	r3, r1
 8003470:	f7fd fdfc 	bl	800106c <__aeabi_dcmpun>
 8003474:	2800      	cmp	r0, #0
 8003476:	f040 8491 	bne.w	8003d9c <_vfprintf_r+0x194c>
 800347a:	2e61      	cmp	r6, #97	; 0x61
 800347c:	f000 8111 	beq.w	80036a2 <_vfprintf_r+0x1252>
 8003480:	2e41      	cmp	r6, #65	; 0x41
 8003482:	f000 8377 	beq.w	8003b74 <_vfprintf_r+0x1724>
 8003486:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800348a:	f026 0220 	bic.w	r2, r6, #32
 800348e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003492:	930e      	str	r3, [sp, #56]	; 0x38
 8003494:	9204      	str	r2, [sp, #16]
 8003496:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003498:	f000 842d 	beq.w	8003cf6 <_vfprintf_r+0x18a6>
 800349c:	2a47      	cmp	r2, #71	; 0x47
 800349e:	f000 8424 	beq.w	8003cea <_vfprintf_r+0x189a>
 80034a2:	2b00      	cmp	r3, #0
 80034a4:	f2c0 82f9 	blt.w	8003a9a <_vfprintf_r+0x164a>
 80034a8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80034ac:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80034b0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80034b4:	2e66      	cmp	r6, #102	; 0x66
 80034b6:	f000 83eb 	beq.w	8003c90 <_vfprintf_r+0x1840>
 80034ba:	2e46      	cmp	r6, #70	; 0x46
 80034bc:	f000 847e 	beq.w	8003dbc <_vfprintf_r+0x196c>
 80034c0:	9b04      	ldr	r3, [sp, #16]
 80034c2:	9803      	ldr	r0, [sp, #12]
 80034c4:	2b45      	cmp	r3, #69	; 0x45
 80034c6:	bf0c      	ite	eq
 80034c8:	f109 0501 	addeq.w	r5, r9, #1
 80034cc:	464d      	movne	r5, r9
 80034ce:	aa28      	add	r2, sp, #160	; 0xa0
 80034d0:	ab25      	add	r3, sp, #148	; 0x94
 80034d2:	e9cd 3200 	strd	r3, r2, [sp]
 80034d6:	2102      	movs	r1, #2
 80034d8:	ab24      	add	r3, sp, #144	; 0x90
 80034da:	462a      	mov	r2, r5
 80034dc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80034e0:	f000 fe3e 	bl	8004160 <_dtoa_r>
 80034e4:	2e67      	cmp	r6, #103	; 0x67
 80034e6:	4607      	mov	r7, r0
 80034e8:	f040 849c 	bne.w	8003e24 <_vfprintf_r+0x19d4>
 80034ec:	f018 0f01 	tst.w	r8, #1
 80034f0:	f040 83f9 	bne.w	8003ce6 <_vfprintf_r+0x1896>
 80034f4:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80034f6:	4640      	mov	r0, r8
 80034f8:	1bdb      	subs	r3, r3, r7
 80034fa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80034fe:	9310      	str	r3, [sp, #64]	; 0x40
 8003500:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003502:	9311      	str	r3, [sp, #68]	; 0x44
 8003504:	9b04      	ldr	r3, [sp, #16]
 8003506:	2b47      	cmp	r3, #71	; 0x47
 8003508:	f000 81e7 	beq.w	80038da <_vfprintf_r+0x148a>
 800350c:	9b04      	ldr	r3, [sp, #16]
 800350e:	2b46      	cmp	r3, #70	; 0x46
 8003510:	f000 8300 	beq.w	8003b14 <_vfprintf_r+0x16c4>
 8003514:	9904      	ldr	r1, [sp, #16]
 8003516:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003518:	b2f2      	uxtb	r2, r6
 800351a:	2941      	cmp	r1, #65	; 0x41
 800351c:	bf08      	it	eq
 800351e:	320f      	addeq	r2, #15
 8003520:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003524:	bf06      	itte	eq
 8003526:	b2d2      	uxtbeq	r2, r2
 8003528:	2101      	moveq	r1, #1
 800352a:	2100      	movne	r1, #0
 800352c:	2b00      	cmp	r3, #0
 800352e:	9324      	str	r3, [sp, #144]	; 0x90
 8003530:	bfb8      	it	lt
 8003532:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003534:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003538:	bfba      	itte	lt
 800353a:	f1c3 0301 	rsblt	r3, r3, #1
 800353e:	222d      	movlt	r2, #45	; 0x2d
 8003540:	222b      	movge	r2, #43	; 0x2b
 8003542:	2b09      	cmp	r3, #9
 8003544:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003548:	f300 83f9 	bgt.w	8003d3e <_vfprintf_r+0x18ee>
 800354c:	2900      	cmp	r1, #0
 800354e:	f040 8487 	bne.w	8003e60 <_vfprintf_r+0x1a10>
 8003552:	2230      	movs	r2, #48	; 0x30
 8003554:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003558:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800355c:	3330      	adds	r3, #48	; 0x30
 800355e:	7013      	strb	r3, [r2, #0]
 8003560:	1c53      	adds	r3, r2, #1
 8003562:	aa26      	add	r2, sp, #152	; 0x98
 8003564:	1a9b      	subs	r3, r3, r2
 8003566:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003568:	9319      	str	r3, [sp, #100]	; 0x64
 800356a:	2a01      	cmp	r2, #1
 800356c:	4413      	add	r3, r2
 800356e:	9309      	str	r3, [sp, #36]	; 0x24
 8003570:	f340 8442 	ble.w	8003df8 <_vfprintf_r+0x19a8>
 8003574:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003576:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003578:	4413      	add	r3, r2
 800357a:	9309      	str	r3, [sp, #36]	; 0x24
 800357c:	2300      	movs	r3, #0
 800357e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003580:	9314      	str	r3, [sp, #80]	; 0x50
 8003582:	9311      	str	r3, [sp, #68]	; 0x44
 8003584:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003586:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800358a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800358e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003592:	9304      	str	r3, [sp, #16]
 8003594:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003596:	2b00      	cmp	r3, #0
 8003598:	f040 8275 	bne.w	8003a86 <_vfprintf_r+0x1636>
 800359c:	4699      	mov	r9, r3
 800359e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80035a2:	f7ff b8e2 	b.w	800276a <_vfprintf_r+0x31a>
 80035a6:	bf00      	nop
 80035a8:	080072b8 	.word	0x080072b8
 80035ac:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035ae:	49bd      	ldr	r1, [pc, #756]	; (80038a4 <_vfprintf_r+0x1454>)
 80035b0:	f8cb 1000 	str.w	r1, [fp]
 80035b4:	3201      	adds	r2, #1
 80035b6:	3401      	adds	r4, #1
 80035b8:	2101      	movs	r1, #1
 80035ba:	2a07      	cmp	r2, #7
 80035bc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80035c0:	f8cb 1004 	str.w	r1, [fp, #4]
 80035c4:	dc60      	bgt.n	8003688 <_vfprintf_r+0x1238>
 80035c6:	f10b 0b08 	add.w	fp, fp, #8
 80035ca:	b92b      	cbnz	r3, 80035d8 <_vfprintf_r+0x1188>
 80035cc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80035ce:	b91a      	cbnz	r2, 80035d8 <_vfprintf_r+0x1188>
 80035d0:	f018 0f01 	tst.w	r8, #1
 80035d4:	f43f a98d 	beq.w	80028f2 <_vfprintf_r+0x4a2>
 80035d8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035da:	9916      	ldr	r1, [sp, #88]	; 0x58
 80035dc:	f8cb 1000 	str.w	r1, [fp]
 80035e0:	9915      	ldr	r1, [sp, #84]	; 0x54
 80035e2:	f8cb 1004 	str.w	r1, [fp, #4]
 80035e6:	3201      	adds	r2, #1
 80035e8:	440c      	add	r4, r1
 80035ea:	2a07      	cmp	r2, #7
 80035ec:	942c      	str	r4, [sp, #176]	; 0xb0
 80035ee:	922b      	str	r2, [sp, #172]	; 0xac
 80035f0:	f300 8282 	bgt.w	8003af8 <_vfprintf_r+0x16a8>
 80035f4:	f10b 0b08 	add.w	fp, fp, #8
 80035f8:	2b00      	cmp	r3, #0
 80035fa:	f2c0 82e7 	blt.w	8003bcc <_vfprintf_r+0x177c>
 80035fe:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003600:	3201      	adds	r2, #1
 8003602:	441c      	add	r4, r3
 8003604:	2a07      	cmp	r2, #7
 8003606:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800360a:	e9cb 7300 	strd	r7, r3, [fp]
 800360e:	f77f a96e 	ble.w	80028ee <_vfprintf_r+0x49e>
 8003612:	e4fe      	b.n	8003012 <_vfprintf_r+0xbc2>
 8003614:	aa2a      	add	r2, sp, #168	; 0xa8
 8003616:	9907      	ldr	r1, [sp, #28]
 8003618:	9803      	ldr	r0, [sp, #12]
 800361a:	f003 fa47 	bl	8006aac <__sprint_r>
 800361e:	2800      	cmp	r0, #0
 8003620:	f47f ac8e 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003624:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003628:	f7ff bbf0 	b.w	8002e0c <_vfprintf_r+0x9bc>
 800362c:	9a05      	ldr	r2, [sp, #20]
 800362e:	601a      	str	r2, [r3, #0]
 8003630:	4657      	mov	r7, sl
 8003632:	f7ff b9b3 	b.w	800299c <_vfprintf_r+0x54c>
 8003636:	8814      	ldrh	r4, [r2, #0]
 8003638:	9108      	str	r1, [sp, #32]
 800363a:	2500      	movs	r5, #0
 800363c:	2201      	movs	r2, #1
 800363e:	f7ff b9c8 	b.w	80029d2 <_vfprintf_r+0x582>
 8003642:	8814      	ldrh	r4, [r2, #0]
 8003644:	9308      	str	r3, [sp, #32]
 8003646:	2500      	movs	r5, #0
 8003648:	f7ff ba14 	b.w	8002a74 <_vfprintf_r+0x624>
 800364c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003650:	9208      	str	r2, [sp, #32]
 8003652:	17e5      	asrs	r5, r4, #31
 8003654:	4620      	mov	r0, r4
 8003656:	4629      	mov	r1, r5
 8003658:	f7ff b855 	b.w	8002706 <_vfprintf_r+0x2b6>
 800365c:	8814      	ldrh	r4, [r2, #0]
 800365e:	9308      	str	r3, [sp, #32]
 8003660:	2500      	movs	r5, #0
 8003662:	f7ff b825 	b.w	80026b0 <_vfprintf_r+0x260>
 8003666:	222d      	movs	r2, #45	; 0x2d
 8003668:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800366c:	f7ff baa2 	b.w	8002bb4 <_vfprintf_r+0x764>
 8003670:	aa2a      	add	r2, sp, #168	; 0xa8
 8003672:	9907      	ldr	r1, [sp, #28]
 8003674:	9803      	ldr	r0, [sp, #12]
 8003676:	f003 fa19 	bl	8006aac <__sprint_r>
 800367a:	2800      	cmp	r0, #0
 800367c:	f47f ac60 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003680:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003682:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003686:	e534      	b.n	80030f2 <_vfprintf_r+0xca2>
 8003688:	aa2a      	add	r2, sp, #168	; 0xa8
 800368a:	9907      	ldr	r1, [sp, #28]
 800368c:	9803      	ldr	r0, [sp, #12]
 800368e:	f003 fa0d 	bl	8006aac <__sprint_r>
 8003692:	2800      	cmp	r0, #0
 8003694:	f47f ac54 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003698:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800369a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800369c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036a0:	e793      	b.n	80035ca <_vfprintf_r+0x117a>
 80036a2:	2330      	movs	r3, #48	; 0x30
 80036a4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80036a8:	2378      	movs	r3, #120	; 0x78
 80036aa:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80036ae:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80036b2:	f048 0402 	orr.w	r4, r8, #2
 80036b6:	f300 82b0 	bgt.w	8003c1a <_vfprintf_r+0x17ca>
 80036ba:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80036be:	930e      	str	r3, [sp, #56]	; 0x38
 80036c0:	f026 0320 	bic.w	r3, r6, #32
 80036c4:	9304      	str	r3, [sp, #16]
 80036c6:	2200      	movs	r2, #0
 80036c8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80036ca:	920a      	str	r2, [sp, #40]	; 0x28
 80036cc:	46a0      	mov	r8, r4
 80036ce:	af3d      	add	r7, sp, #244	; 0xf4
 80036d0:	2b00      	cmp	r3, #0
 80036d2:	f2c0 81e3 	blt.w	8003a9c <_vfprintf_r+0x164c>
 80036d6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80036da:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80036de:	2300      	movs	r3, #0
 80036e0:	930b      	str	r3, [sp, #44]	; 0x2c
 80036e2:	2e61      	cmp	r6, #97	; 0x61
 80036e4:	f000 8255 	beq.w	8003b92 <_vfprintf_r+0x1742>
 80036e8:	2e41      	cmp	r6, #65	; 0x41
 80036ea:	f47f aee3 	bne.w	80034b4 <_vfprintf_r+0x1064>
 80036ee:	a824      	add	r0, sp, #144	; 0x90
 80036f0:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80036f4:	f003 f8e2 	bl	80068bc <frexp>
 80036f8:	2200      	movs	r2, #0
 80036fa:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80036fe:	ec51 0b10 	vmov	r0, r1, d0
 8003702:	f7fd fa19 	bl	8000b38 <__aeabi_dmul>
 8003706:	2200      	movs	r2, #0
 8003708:	2300      	movs	r3, #0
 800370a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800370e:	f7fd fc7b 	bl	8001008 <__aeabi_dcmpeq>
 8003712:	2800      	cmp	r0, #0
 8003714:	f040 8305 	bne.w	8003d22 <_vfprintf_r+0x18d2>
 8003718:	4b63      	ldr	r3, [pc, #396]	; (80038a8 <_vfprintf_r+0x1458>)
 800371a:	9309      	str	r3, [sp, #36]	; 0x24
 800371c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003720:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003724:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003728:	9721      	str	r7, [sp, #132]	; 0x84
 800372a:	46b9      	mov	r9, r7
 800372c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003730:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003734:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003738:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800373c:	e003      	b.n	8003746 <_vfprintf_r+0x12f6>
 800373e:	f7fd fc63 	bl	8001008 <__aeabi_dcmpeq>
 8003742:	bb20      	cbnz	r0, 800378e <_vfprintf_r+0x133e>
 8003744:	46a9      	mov	r9, r5
 8003746:	2200      	movs	r2, #0
 8003748:	4b58      	ldr	r3, [pc, #352]	; (80038ac <_vfprintf_r+0x145c>)
 800374a:	4630      	mov	r0, r6
 800374c:	4639      	mov	r1, r7
 800374e:	f7fd f9f3 	bl	8000b38 <__aeabi_dmul>
 8003752:	460f      	mov	r7, r1
 8003754:	4606      	mov	r6, r0
 8003756:	f7fd fc9f 	bl	8001098 <__aeabi_d2iz>
 800375a:	4680      	mov	r8, r0
 800375c:	f7fd f982 	bl	8000a64 <__aeabi_i2d>
 8003760:	4602      	mov	r2, r0
 8003762:	460b      	mov	r3, r1
 8003764:	4630      	mov	r0, r6
 8003766:	4639      	mov	r1, r7
 8003768:	f7fd f82e 	bl	80007c8 <__aeabi_dsub>
 800376c:	464d      	mov	r5, r9
 800376e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003772:	f805 cb01 	strb.w	ip, [r5], #1
 8003776:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800377a:	46a3      	mov	fp, r4
 800377c:	4606      	mov	r6, r0
 800377e:	460f      	mov	r7, r1
 8003780:	f04f 0200 	mov.w	r2, #0
 8003784:	f04f 0300 	mov.w	r3, #0
 8003788:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800378c:	d1d7      	bne.n	800373e <_vfprintf_r+0x12ee>
 800378e:	4630      	mov	r0, r6
 8003790:	4639      	mov	r1, r7
 8003792:	2200      	movs	r2, #0
 8003794:	4b46      	ldr	r3, [pc, #280]	; (80038b0 <_vfprintf_r+0x1460>)
 8003796:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800379a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800379c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80037a0:	4644      	mov	r4, r8
 80037a2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80037a6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80037aa:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80037ae:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80037b2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80037b4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80037b8:	f7fd fc4e 	bl	8001058 <__aeabi_dcmpgt>
 80037bc:	2800      	cmp	r0, #0
 80037be:	f040 8176 	bne.w	8003aae <_vfprintf_r+0x165e>
 80037c2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80037c6:	2200      	movs	r2, #0
 80037c8:	4b39      	ldr	r3, [pc, #228]	; (80038b0 <_vfprintf_r+0x1460>)
 80037ca:	f7fd fc1d 	bl	8001008 <__aeabi_dcmpeq>
 80037ce:	b110      	cbz	r0, 80037d6 <_vfprintf_r+0x1386>
 80037d0:	07e2      	lsls	r2, r4, #31
 80037d2:	f100 816c 	bmi.w	8003aae <_vfprintf_r+0x165e>
 80037d6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80037d8:	2b00      	cmp	r3, #0
 80037da:	db07      	blt.n	80037ec <_vfprintf_r+0x139c>
 80037dc:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80037de:	3301      	adds	r3, #1
 80037e0:	442b      	add	r3, r5
 80037e2:	2230      	movs	r2, #48	; 0x30
 80037e4:	f805 2b01 	strb.w	r2, [r5], #1
 80037e8:	42ab      	cmp	r3, r5
 80037ea:	d1fb      	bne.n	80037e4 <_vfprintf_r+0x1394>
 80037ec:	1beb      	subs	r3, r5, r7
 80037ee:	4640      	mov	r0, r8
 80037f0:	9310      	str	r3, [sp, #64]	; 0x40
 80037f2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80037f6:	e683      	b.n	8003500 <_vfprintf_r+0x10b0>
 80037f8:	f8cd 9010 	str.w	r9, [sp, #16]
 80037fc:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003800:	9408      	str	r4, [sp, #32]
 8003802:	4681      	mov	r9, r0
 8003804:	900f      	str	r0, [sp, #60]	; 0x3c
 8003806:	9014      	str	r0, [sp, #80]	; 0x50
 8003808:	9011      	str	r0, [sp, #68]	; 0x44
 800380a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800380e:	f7fe bfac 	b.w	800276a <_vfprintf_r+0x31a>
 8003812:	aa2a      	add	r2, sp, #168	; 0xa8
 8003814:	9907      	ldr	r1, [sp, #28]
 8003816:	9803      	ldr	r0, [sp, #12]
 8003818:	f003 f948 	bl	8006aac <__sprint_r>
 800381c:	2800      	cmp	r0, #0
 800381e:	f47f ab8f 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003822:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003824:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003826:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800382a:	e511      	b.n	8003250 <_vfprintf_r+0xe00>
 800382c:	4252      	negs	r2, r2
 800382e:	9206      	str	r2, [sp, #24]
 8003830:	9308      	str	r3, [sp, #32]
 8003832:	f7ff b96d 	b.w	8002b10 <_vfprintf_r+0x6c0>
 8003836:	4614      	mov	r4, r2
 8003838:	4632      	mov	r2, r6
 800383a:	461e      	mov	r6, r3
 800383c:	4613      	mov	r3, r2
 800383e:	462a      	mov	r2, r5
 8003840:	3201      	adds	r2, #1
 8003842:	9209      	str	r2, [sp, #36]	; 0x24
 8003844:	f106 0208 	add.w	r2, r6, #8
 8003848:	e9c6 3900 	strd	r3, r9, [r6]
 800384c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800384e:	932b      	str	r3, [sp, #172]	; 0xac
 8003850:	444c      	add	r4, r9
 8003852:	2b07      	cmp	r3, #7
 8003854:	942c      	str	r4, [sp, #176]	; 0xb0
 8003856:	f73f acc3 	bgt.w	80031e0 <_vfprintf_r+0xd90>
 800385a:	3301      	adds	r3, #1
 800385c:	9309      	str	r3, [sp, #36]	; 0x24
 800385e:	f102 0b08 	add.w	fp, r2, #8
 8003862:	4616      	mov	r6, r2
 8003864:	f7ff bbca 	b.w	8002ffc <_vfprintf_r+0xbac>
 8003868:	aa2a      	add	r2, sp, #168	; 0xa8
 800386a:	9907      	ldr	r1, [sp, #28]
 800386c:	9803      	ldr	r0, [sp, #12]
 800386e:	f003 f91d 	bl	8006aac <__sprint_r>
 8003872:	2800      	cmp	r0, #0
 8003874:	f47f ab64 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003878:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800387a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800387e:	f7ff bade 	b.w	8002e3e <_vfprintf_r+0x9ee>
 8003882:	464b      	mov	r3, r9
 8003884:	2b06      	cmp	r3, #6
 8003886:	bf28      	it	cs
 8003888:	2306      	movcs	r3, #6
 800388a:	46b9      	mov	r9, r7
 800388c:	970f      	str	r7, [sp, #60]	; 0x3c
 800388e:	9714      	str	r7, [sp, #80]	; 0x50
 8003890:	9711      	str	r7, [sp, #68]	; 0x44
 8003892:	970a      	str	r7, [sp, #40]	; 0x28
 8003894:	463a      	mov	r2, r7
 8003896:	9304      	str	r3, [sp, #16]
 8003898:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800389c:	4f05      	ldr	r7, [pc, #20]	; (80038b4 <_vfprintf_r+0x1464>)
 800389e:	f7fe bf64 	b.w	800276a <_vfprintf_r+0x31a>
 80038a2:	bf00      	nop
 80038a4:	080072a4 	.word	0x080072a4
 80038a8:	08007288 	.word	0x08007288
 80038ac:	40300000 	.word	0x40300000
 80038b0:	3fe00000 	.word	0x3fe00000
 80038b4:	0800729c 	.word	0x0800729c
 80038b8:	460c      	mov	r4, r1
 80038ba:	4639      	mov	r1, r7
 80038bc:	465f      	mov	r7, fp
 80038be:	469b      	mov	fp, r3
 80038c0:	460b      	mov	r3, r1
 80038c2:	3201      	adds	r2, #1
 80038c4:	442c      	add	r4, r5
 80038c6:	2a07      	cmp	r2, #7
 80038c8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038cc:	e9cb 3500 	strd	r3, r5, [fp]
 80038d0:	f73f aca5 	bgt.w	800321e <_vfprintf_r+0xdce>
 80038d4:	f10b 0b08 	add.w	fp, fp, #8
 80038d8:	e4ac      	b.n	8003234 <_vfprintf_r+0xde4>
 80038da:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038dc:	1cda      	adds	r2, r3, #3
 80038de:	db02      	blt.n	80038e6 <_vfprintf_r+0x1496>
 80038e0:	4599      	cmp	r9, r3
 80038e2:	f280 80b5 	bge.w	8003a50 <_vfprintf_r+0x1600>
 80038e6:	3e02      	subs	r6, #2
 80038e8:	f026 0320 	bic.w	r3, r6, #32
 80038ec:	9304      	str	r3, [sp, #16]
 80038ee:	e611      	b.n	8003514 <_vfprintf_r+0x10c4>
 80038f0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038f2:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80038f6:	465a      	mov	r2, fp
 80038f8:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80038fc:	18fb      	adds	r3, r7, r3
 80038fe:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003902:	970c      	str	r7, [sp, #48]	; 0x30
 8003904:	4eaf      	ldr	r6, [pc, #700]	; (8003bc4 <_vfprintf_r+0x1774>)
 8003906:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800390a:	9309      	str	r3, [sp, #36]	; 0x24
 800390c:	464f      	mov	r7, r9
 800390e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003912:	4621      	mov	r1, r4
 8003914:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003916:	2b00      	cmp	r3, #0
 8003918:	d05b      	beq.n	80039d2 <_vfprintf_r+0x1582>
 800391a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800391c:	2b00      	cmp	r3, #0
 800391e:	d154      	bne.n	80039ca <_vfprintf_r+0x157a>
 8003920:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003922:	3b01      	subs	r3, #1
 8003924:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003928:	9314      	str	r3, [sp, #80]	; 0x50
 800392a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800392c:	9818      	ldr	r0, [sp, #96]	; 0x60
 800392e:	6010      	str	r0, [r2, #0]
 8003930:	3301      	adds	r3, #1
 8003932:	4459      	add	r1, fp
 8003934:	2b07      	cmp	r3, #7
 8003936:	912c      	str	r1, [sp, #176]	; 0xb0
 8003938:	f8c2 b004 	str.w	fp, [r2, #4]
 800393c:	932b      	str	r3, [sp, #172]	; 0xac
 800393e:	dc68      	bgt.n	8003a12 <_vfprintf_r+0x15c2>
 8003940:	3208      	adds	r2, #8
 8003942:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003944:	f898 3000 	ldrb.w	r3, [r8]
 8003948:	1bc5      	subs	r5, r0, r7
 800394a:	429d      	cmp	r5, r3
 800394c:	bfa8      	it	ge
 800394e:	461d      	movge	r5, r3
 8003950:	2d00      	cmp	r5, #0
 8003952:	dd0b      	ble.n	800396c <_vfprintf_r+0x151c>
 8003954:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003956:	6017      	str	r7, [r2, #0]
 8003958:	3301      	adds	r3, #1
 800395a:	4429      	add	r1, r5
 800395c:	2b07      	cmp	r3, #7
 800395e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003960:	6055      	str	r5, [r2, #4]
 8003962:	932b      	str	r3, [sp, #172]	; 0xac
 8003964:	dc5e      	bgt.n	8003a24 <_vfprintf_r+0x15d4>
 8003966:	f898 3000 	ldrb.w	r3, [r8]
 800396a:	3208      	adds	r2, #8
 800396c:	2d00      	cmp	r5, #0
 800396e:	bfac      	ite	ge
 8003970:	1b5d      	subge	r5, r3, r5
 8003972:	461d      	movlt	r5, r3
 8003974:	2d00      	cmp	r5, #0
 8003976:	dd26      	ble.n	80039c6 <_vfprintf_r+0x1576>
 8003978:	2d10      	cmp	r5, #16
 800397a:	982b      	ldr	r0, [sp, #172]	; 0xac
 800397c:	dd3c      	ble.n	80039f8 <_vfprintf_r+0x15a8>
 800397e:	2410      	movs	r4, #16
 8003980:	e003      	b.n	800398a <_vfprintf_r+0x153a>
 8003982:	3208      	adds	r2, #8
 8003984:	3d10      	subs	r5, #16
 8003986:	2d10      	cmp	r5, #16
 8003988:	dd36      	ble.n	80039f8 <_vfprintf_r+0x15a8>
 800398a:	3001      	adds	r0, #1
 800398c:	3110      	adds	r1, #16
 800398e:	2807      	cmp	r0, #7
 8003990:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003994:	e9c2 6400 	strd	r6, r4, [r2]
 8003998:	ddf3      	ble.n	8003982 <_vfprintf_r+0x1532>
 800399a:	aa2a      	add	r2, sp, #168	; 0xa8
 800399c:	4651      	mov	r1, sl
 800399e:	4648      	mov	r0, r9
 80039a0:	f003 f884 	bl	8006aac <__sprint_r>
 80039a4:	2800      	cmp	r0, #0
 80039a6:	d150      	bne.n	8003a4a <_vfprintf_r+0x15fa>
 80039a8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80039ac:	aa2d      	add	r2, sp, #180	; 0xb4
 80039ae:	e7e9      	b.n	8003984 <_vfprintf_r+0x1534>
 80039b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039b2:	4651      	mov	r1, sl
 80039b4:	4648      	mov	r0, r9
 80039b6:	f003 f879 	bl	8006aac <__sprint_r>
 80039ba:	2800      	cmp	r0, #0
 80039bc:	d145      	bne.n	8003a4a <_vfprintf_r+0x15fa>
 80039be:	f898 3000 	ldrb.w	r3, [r8]
 80039c2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80039c4:	aa2d      	add	r2, sp, #180	; 0xb4
 80039c6:	441f      	add	r7, r3
 80039c8:	e7a4      	b.n	8003914 <_vfprintf_r+0x14c4>
 80039ca:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039cc:	3b01      	subs	r3, #1
 80039ce:	930f      	str	r3, [sp, #60]	; 0x3c
 80039d0:	e7ab      	b.n	800392a <_vfprintf_r+0x14da>
 80039d2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039d4:	2b00      	cmp	r3, #0
 80039d6:	d1f8      	bne.n	80039ca <_vfprintf_r+0x157a>
 80039d8:	46b9      	mov	r9, r7
 80039da:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039dc:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80039de:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80039e2:	18fb      	adds	r3, r7, r3
 80039e4:	4599      	cmp	r9, r3
 80039e6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80039ea:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80039ee:	4693      	mov	fp, r2
 80039f0:	460c      	mov	r4, r1
 80039f2:	bf28      	it	cs
 80039f4:	4699      	movcs	r9, r3
 80039f6:	e424      	b.n	8003242 <_vfprintf_r+0xdf2>
 80039f8:	3001      	adds	r0, #1
 80039fa:	4429      	add	r1, r5
 80039fc:	2807      	cmp	r0, #7
 80039fe:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003a02:	e9c2 6500 	strd	r6, r5, [r2]
 8003a06:	dcd3      	bgt.n	80039b0 <_vfprintf_r+0x1560>
 8003a08:	f898 3000 	ldrb.w	r3, [r8]
 8003a0c:	3208      	adds	r2, #8
 8003a0e:	441f      	add	r7, r3
 8003a10:	e780      	b.n	8003914 <_vfprintf_r+0x14c4>
 8003a12:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a14:	4651      	mov	r1, sl
 8003a16:	4648      	mov	r0, r9
 8003a18:	f003 f848 	bl	8006aac <__sprint_r>
 8003a1c:	b9a8      	cbnz	r0, 8003a4a <_vfprintf_r+0x15fa>
 8003a1e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a20:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a22:	e78e      	b.n	8003942 <_vfprintf_r+0x14f2>
 8003a24:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a26:	4651      	mov	r1, sl
 8003a28:	4648      	mov	r0, r9
 8003a2a:	f003 f83f 	bl	8006aac <__sprint_r>
 8003a2e:	b960      	cbnz	r0, 8003a4a <_vfprintf_r+0x15fa>
 8003a30:	f898 3000 	ldrb.w	r3, [r8]
 8003a34:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a36:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a38:	e798      	b.n	800396c <_vfprintf_r+0x151c>
 8003a3a:	4638      	mov	r0, r7
 8003a3c:	f7fc fe00 	bl	8000640 <strlen>
 8003a40:	46a9      	mov	r9, r5
 8003a42:	4603      	mov	r3, r0
 8003a44:	9009      	str	r0, [sp, #36]	; 0x24
 8003a46:	f7ff b8f4 	b.w	8002c32 <_vfprintf_r+0x7e2>
 8003a4a:	46d1      	mov	r9, sl
 8003a4c:	f7ff ba7a 	b.w	8002f44 <_vfprintf_r+0xaf4>
 8003a50:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a52:	4619      	mov	r1, r3
 8003a54:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a56:	4299      	cmp	r1, r3
 8003a58:	f300 8082 	bgt.w	8003b60 <_vfprintf_r+0x1710>
 8003a5c:	07c4      	lsls	r4, r0, #31
 8003a5e:	f140 816b 	bpl.w	8003d38 <_vfprintf_r+0x18e8>
 8003a62:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a64:	4413      	add	r3, r2
 8003a66:	9309      	str	r3, [sp, #36]	; 0x24
 8003a68:	0541      	lsls	r1, r0, #21
 8003a6a:	d503      	bpl.n	8003a74 <_vfprintf_r+0x1624>
 8003a6c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a6e:	2b00      	cmp	r3, #0
 8003a70:	f300 80e6 	bgt.w	8003c40 <_vfprintf_r+0x17f0>
 8003a74:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a76:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003a7a:	9304      	str	r3, [sp, #16]
 8003a7c:	2667      	movs	r6, #103	; 0x67
 8003a7e:	2300      	movs	r3, #0
 8003a80:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a82:	9314      	str	r3, [sp, #80]	; 0x50
 8003a84:	e586      	b.n	8003594 <_vfprintf_r+0x1144>
 8003a86:	222d      	movs	r2, #45	; 0x2d
 8003a88:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003a8c:	f04f 0900 	mov.w	r9, #0
 8003a90:	f7fe be6c 	b.w	800276c <_vfprintf_r+0x31c>
 8003a94:	46a1      	mov	r9, r4
 8003a96:	f7ff ba55 	b.w	8002f44 <_vfprintf_r+0xaf4>
 8003a9a:	900a      	str	r0, [sp, #40]	; 0x28
 8003a9c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003aa0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003aa4:	931f      	str	r3, [sp, #124]	; 0x7c
 8003aa6:	232d      	movs	r3, #45	; 0x2d
 8003aa8:	911e      	str	r1, [sp, #120]	; 0x78
 8003aaa:	930b      	str	r3, [sp, #44]	; 0x2c
 8003aac:	e619      	b.n	80036e2 <_vfprintf_r+0x1292>
 8003aae:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ab0:	9328      	str	r3, [sp, #160]	; 0xa0
 8003ab2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ab4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003ab8:	7bd9      	ldrb	r1, [r3, #15]
 8003aba:	4291      	cmp	r1, r2
 8003abc:	462b      	mov	r3, r5
 8003abe:	d109      	bne.n	8003ad4 <_vfprintf_r+0x1684>
 8003ac0:	2030      	movs	r0, #48	; 0x30
 8003ac2:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003ac6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ac8:	1e5a      	subs	r2, r3, #1
 8003aca:	9228      	str	r2, [sp, #160]	; 0xa0
 8003acc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003ad0:	4291      	cmp	r1, r2
 8003ad2:	d0f6      	beq.n	8003ac2 <_vfprintf_r+0x1672>
 8003ad4:	2a39      	cmp	r2, #57	; 0x39
 8003ad6:	bf0b      	itete	eq
 8003ad8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003ada:	3201      	addne	r2, #1
 8003adc:	7a92      	ldrbeq	r2, [r2, #10]
 8003ade:	b2d2      	uxtbne	r2, r2
 8003ae0:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003ae4:	e682      	b.n	80037ec <_vfprintf_r+0x139c>
 8003ae6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003aea:	f43f ad9f 	beq.w	800362c <_vfprintf_r+0x11dc>
 8003aee:	9a05      	ldr	r2, [sp, #20]
 8003af0:	701a      	strb	r2, [r3, #0]
 8003af2:	4657      	mov	r7, sl
 8003af4:	f7fe bf52 	b.w	800299c <_vfprintf_r+0x54c>
 8003af8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003afa:	9907      	ldr	r1, [sp, #28]
 8003afc:	9803      	ldr	r0, [sp, #12]
 8003afe:	f002 ffd5 	bl	8006aac <__sprint_r>
 8003b02:	2800      	cmp	r0, #0
 8003b04:	f47f aa1c 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003b08:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b0a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003b0e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b12:	e571      	b.n	80035f8 <_vfprintf_r+0x11a8>
 8003b14:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b16:	2b00      	cmp	r3, #0
 8003b18:	f340 8164 	ble.w	8003de4 <_vfprintf_r+0x1994>
 8003b1c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b1e:	f1b9 0f00 	cmp.w	r9, #0
 8003b22:	f040 8103 	bne.w	8003d2c <_vfprintf_r+0x18dc>
 8003b26:	07c6      	lsls	r6, r0, #31
 8003b28:	f100 8100 	bmi.w	8003d2c <_vfprintf_r+0x18dc>
 8003b2c:	9309      	str	r3, [sp, #36]	; 0x24
 8003b2e:	2666      	movs	r6, #102	; 0x66
 8003b30:	0543      	lsls	r3, r0, #21
 8003b32:	f100 8086 	bmi.w	8003c42 <_vfprintf_r+0x17f2>
 8003b36:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b38:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b3c:	9304      	str	r3, [sp, #16]
 8003b3e:	e79e      	b.n	8003a7e <_vfprintf_r+0x162e>
 8003b40:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b42:	9907      	ldr	r1, [sp, #28]
 8003b44:	9803      	ldr	r0, [sp, #12]
 8003b46:	f002 ffb1 	bl	8006aac <__sprint_r>
 8003b4a:	2800      	cmp	r0, #0
 8003b4c:	f47f a9f8 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003b50:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b52:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b54:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b56:	1ad3      	subs	r3, r2, r3
 8003b58:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b5c:	f7ff bb90 	b.w	8003280 <_vfprintf_r+0xe30>
 8003b60:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b62:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b64:	4413      	add	r3, r2
 8003b66:	9309      	str	r3, [sp, #36]	; 0x24
 8003b68:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b6a:	2b00      	cmp	r3, #0
 8003b6c:	f340 8149 	ble.w	8003e02 <_vfprintf_r+0x19b2>
 8003b70:	2667      	movs	r6, #103	; 0x67
 8003b72:	e7dd      	b.n	8003b30 <_vfprintf_r+0x16e0>
 8003b74:	2330      	movs	r3, #48	; 0x30
 8003b76:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003b7a:	2358      	movs	r3, #88	; 0x58
 8003b7c:	e595      	b.n	80036aa <_vfprintf_r+0x125a>
 8003b7e:	9803      	ldr	r0, [sp, #12]
 8003b80:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b82:	4649      	mov	r1, r9
 8003b84:	f002 ff92 	bl	8006aac <__sprint_r>
 8003b88:	2800      	cmp	r0, #0
 8003b8a:	f47f a9e0 	bne.w	8002f4e <_vfprintf_r+0xafe>
 8003b8e:	f7fe bf0f 	b.w	80029b0 <_vfprintf_r+0x560>
 8003b92:	a824      	add	r0, sp, #144	; 0x90
 8003b94:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003b98:	f002 fe90 	bl	80068bc <frexp>
 8003b9c:	2200      	movs	r2, #0
 8003b9e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003ba2:	ec51 0b10 	vmov	r0, r1, d0
 8003ba6:	f7fc ffc7 	bl	8000b38 <__aeabi_dmul>
 8003baa:	2200      	movs	r2, #0
 8003bac:	2300      	movs	r3, #0
 8003bae:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003bb2:	f7fd fa29 	bl	8001008 <__aeabi_dcmpeq>
 8003bb6:	b108      	cbz	r0, 8003bbc <_vfprintf_r+0x176c>
 8003bb8:	2301      	movs	r3, #1
 8003bba:	9324      	str	r3, [sp, #144]	; 0x90
 8003bbc:	4b02      	ldr	r3, [pc, #8]	; (8003bc8 <_vfprintf_r+0x1778>)
 8003bbe:	9309      	str	r3, [sp, #36]	; 0x24
 8003bc0:	e5ac      	b.n	800371c <_vfprintf_r+0x12cc>
 8003bc2:	bf00      	nop
 8003bc4:	080072b8 	.word	0x080072b8
 8003bc8:	08007274 	.word	0x08007274
 8003bcc:	425d      	negs	r5, r3
 8003bce:	3310      	adds	r3, #16
 8003bd0:	4bb9      	ldr	r3, [pc, #740]	; (8003eb8 <_vfprintf_r+0x1a68>)
 8003bd2:	f280 8097 	bge.w	8003d04 <_vfprintf_r+0x18b4>
 8003bd6:	4619      	mov	r1, r3
 8003bd8:	2610      	movs	r6, #16
 8003bda:	4623      	mov	r3, r4
 8003bdc:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003be0:	460c      	mov	r4, r1
 8003be2:	e005      	b.n	8003bf0 <_vfprintf_r+0x17a0>
 8003be4:	f10b 0b08 	add.w	fp, fp, #8
 8003be8:	3d10      	subs	r5, #16
 8003bea:	2d10      	cmp	r5, #16
 8003bec:	f340 8087 	ble.w	8003cfe <_vfprintf_r+0x18ae>
 8003bf0:	3201      	adds	r2, #1
 8003bf2:	3310      	adds	r3, #16
 8003bf4:	2a07      	cmp	r2, #7
 8003bf6:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003bfa:	e9cb 4600 	strd	r4, r6, [fp]
 8003bfe:	ddf1      	ble.n	8003be4 <_vfprintf_r+0x1794>
 8003c00:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c02:	9907      	ldr	r1, [sp, #28]
 8003c04:	4648      	mov	r0, r9
 8003c06:	f002 ff51 	bl	8006aac <__sprint_r>
 8003c0a:	2800      	cmp	r0, #0
 8003c0c:	f47f a998 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003c10:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003c14:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c18:	e7e6      	b.n	8003be8 <_vfprintf_r+0x1798>
 8003c1a:	f109 0101 	add.w	r1, r9, #1
 8003c1e:	9803      	ldr	r0, [sp, #12]
 8003c20:	f001 fe80 	bl	8005924 <_malloc_r>
 8003c24:	4607      	mov	r7, r0
 8003c26:	2800      	cmp	r0, #0
 8003c28:	f000 813b 	beq.w	8003ea2 <_vfprintf_r+0x1a52>
 8003c2c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003c30:	930e      	str	r3, [sp, #56]	; 0x38
 8003c32:	f026 0320 	bic.w	r3, r6, #32
 8003c36:	9304      	str	r3, [sp, #16]
 8003c38:	46a0      	mov	r8, r4
 8003c3a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c3c:	900a      	str	r0, [sp, #40]	; 0x28
 8003c3e:	e547      	b.n	80036d0 <_vfprintf_r+0x1280>
 8003c40:	2667      	movs	r6, #103	; 0x67
 8003c42:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003c44:	2200      	movs	r2, #0
 8003c46:	920f      	str	r2, [sp, #60]	; 0x3c
 8003c48:	9214      	str	r2, [sp, #80]	; 0x50
 8003c4a:	7803      	ldrb	r3, [r0, #0]
 8003c4c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003c4e:	2bff      	cmp	r3, #255	; 0xff
 8003c50:	d00c      	beq.n	8003c6c <_vfprintf_r+0x181c>
 8003c52:	4293      	cmp	r3, r2
 8003c54:	da0a      	bge.n	8003c6c <_vfprintf_r+0x181c>
 8003c56:	7841      	ldrb	r1, [r0, #1]
 8003c58:	1ad2      	subs	r2, r2, r3
 8003c5a:	b1a9      	cbz	r1, 8003c88 <_vfprintf_r+0x1838>
 8003c5c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c5e:	3301      	adds	r3, #1
 8003c60:	9314      	str	r3, [sp, #80]	; 0x50
 8003c62:	460b      	mov	r3, r1
 8003c64:	2bff      	cmp	r3, #255	; 0xff
 8003c66:	f100 0001 	add.w	r0, r0, #1
 8003c6a:	d1f2      	bne.n	8003c52 <_vfprintf_r+0x1802>
 8003c6c:	9211      	str	r2, [sp, #68]	; 0x44
 8003c6e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c70:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003c72:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003c74:	901a      	str	r0, [sp, #104]	; 0x68
 8003c76:	4413      	add	r3, r2
 8003c78:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003c7a:	fb02 1303 	mla	r3, r2, r3, r1
 8003c7e:	9309      	str	r3, [sp, #36]	; 0x24
 8003c80:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c84:	9304      	str	r3, [sp, #16]
 8003c86:	e485      	b.n	8003594 <_vfprintf_r+0x1144>
 8003c88:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003c8a:	3101      	adds	r1, #1
 8003c8c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003c8e:	e7de      	b.n	8003c4e <_vfprintf_r+0x17fe>
 8003c90:	aa28      	add	r2, sp, #160	; 0xa0
 8003c92:	ab25      	add	r3, sp, #148	; 0x94
 8003c94:	e9cd 3200 	strd	r3, r2, [sp]
 8003c98:	2103      	movs	r1, #3
 8003c9a:	ab24      	add	r3, sp, #144	; 0x90
 8003c9c:	464a      	mov	r2, r9
 8003c9e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003ca2:	9803      	ldr	r0, [sp, #12]
 8003ca4:	f000 fa5c 	bl	8004160 <_dtoa_r>
 8003ca8:	464d      	mov	r5, r9
 8003caa:	4607      	mov	r7, r0
 8003cac:	eb00 0409 	add.w	r4, r0, r9
 8003cb0:	783b      	ldrb	r3, [r7, #0]
 8003cb2:	2b30      	cmp	r3, #48	; 0x30
 8003cb4:	f000 80be 	beq.w	8003e34 <_vfprintf_r+0x19e4>
 8003cb8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003cba:	442c      	add	r4, r5
 8003cbc:	2200      	movs	r2, #0
 8003cbe:	2300      	movs	r3, #0
 8003cc0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003cc4:	f7fd f9a0 	bl	8001008 <__aeabi_dcmpeq>
 8003cc8:	b108      	cbz	r0, 8003cce <_vfprintf_r+0x187e>
 8003cca:	4623      	mov	r3, r4
 8003ccc:	e413      	b.n	80034f6 <_vfprintf_r+0x10a6>
 8003cce:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003cd0:	42a3      	cmp	r3, r4
 8003cd2:	f4bf ac10 	bcs.w	80034f6 <_vfprintf_r+0x10a6>
 8003cd6:	2130      	movs	r1, #48	; 0x30
 8003cd8:	1c5a      	adds	r2, r3, #1
 8003cda:	9228      	str	r2, [sp, #160]	; 0xa0
 8003cdc:	7019      	strb	r1, [r3, #0]
 8003cde:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ce0:	429c      	cmp	r4, r3
 8003ce2:	d8f9      	bhi.n	8003cd8 <_vfprintf_r+0x1888>
 8003ce4:	e407      	b.n	80034f6 <_vfprintf_r+0x10a6>
 8003ce6:	197c      	adds	r4, r7, r5
 8003ce8:	e7e8      	b.n	8003cbc <_vfprintf_r+0x186c>
 8003cea:	f1b9 0f00 	cmp.w	r9, #0
 8003cee:	f000 8092 	beq.w	8003e16 <_vfprintf_r+0x19c6>
 8003cf2:	900a      	str	r0, [sp, #40]	; 0x28
 8003cf4:	e4ec      	b.n	80036d0 <_vfprintf_r+0x1280>
 8003cf6:	900a      	str	r0, [sp, #40]	; 0x28
 8003cf8:	f04f 0906 	mov.w	r9, #6
 8003cfc:	e4e8      	b.n	80036d0 <_vfprintf_r+0x1280>
 8003cfe:	4621      	mov	r1, r4
 8003d00:	461c      	mov	r4, r3
 8003d02:	460b      	mov	r3, r1
 8003d04:	3201      	adds	r2, #1
 8003d06:	442c      	add	r4, r5
 8003d08:	2a07      	cmp	r2, #7
 8003d0a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d0e:	e9cb 3500 	strd	r3, r5, [fp]
 8003d12:	f300 80a9 	bgt.w	8003e68 <_vfprintf_r+0x1a18>
 8003d16:	f10b 0b08 	add.w	fp, fp, #8
 8003d1a:	e470      	b.n	80035fe <_vfprintf_r+0x11ae>
 8003d1c:	469a      	mov	sl, r3
 8003d1e:	f7ff bb37 	b.w	8003390 <_vfprintf_r+0xf40>
 8003d22:	2301      	movs	r3, #1
 8003d24:	9324      	str	r3, [sp, #144]	; 0x90
 8003d26:	4b65      	ldr	r3, [pc, #404]	; (8003ebc <_vfprintf_r+0x1a6c>)
 8003d28:	9309      	str	r3, [sp, #36]	; 0x24
 8003d2a:	e4f7      	b.n	800371c <_vfprintf_r+0x12cc>
 8003d2c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d2e:	4413      	add	r3, r2
 8003d30:	444b      	add	r3, r9
 8003d32:	9309      	str	r3, [sp, #36]	; 0x24
 8003d34:	2666      	movs	r6, #102	; 0x66
 8003d36:	e6fb      	b.n	8003b30 <_vfprintf_r+0x16e0>
 8003d38:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d3a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d3c:	e694      	b.n	8003a68 <_vfprintf_r+0x1618>
 8003d3e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003d42:	4664      	mov	r4, ip
 8003d44:	4d5e      	ldr	r5, [pc, #376]	; (8003ec0 <_vfprintf_r+0x1a70>)
 8003d46:	e000      	b.n	8003d4a <_vfprintf_r+0x18fa>
 8003d48:	4614      	mov	r4, r2
 8003d4a:	fba5 1203 	umull	r1, r2, r5, r3
 8003d4e:	08d2      	lsrs	r2, r2, #3
 8003d50:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003d54:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003d58:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003d5c:	4613      	mov	r3, r2
 8003d5e:	2b09      	cmp	r3, #9
 8003d60:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003d64:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003d68:	dcee      	bgt.n	8003d48 <_vfprintf_r+0x18f8>
 8003d6a:	3330      	adds	r3, #48	; 0x30
 8003d6c:	3c02      	subs	r4, #2
 8003d6e:	b2db      	uxtb	r3, r3
 8003d70:	45a4      	cmp	ip, r4
 8003d72:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003d76:	f240 8090 	bls.w	8003e9a <_vfprintf_r+0x1a4a>
 8003d7a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003d7e:	4611      	mov	r1, r2
 8003d80:	e001      	b.n	8003d86 <_vfprintf_r+0x1936>
 8003d82:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003d86:	f804 3b01 	strb.w	r3, [r4], #1
 8003d8a:	458c      	cmp	ip, r1
 8003d8c:	d1f9      	bne.n	8003d82 <_vfprintf_r+0x1932>
 8003d8e:	ab2a      	add	r3, sp, #168	; 0xa8
 8003d90:	1a9b      	subs	r3, r3, r2
 8003d92:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003d96:	4413      	add	r3, r2
 8003d98:	f7ff bbe3 	b.w	8003562 <_vfprintf_r+0x1112>
 8003d9c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d9e:	4f49      	ldr	r7, [pc, #292]	; (8003ec4 <_vfprintf_r+0x1a74>)
 8003da0:	2b00      	cmp	r3, #0
 8003da2:	bfb6      	itet	lt
 8003da4:	222d      	movlt	r2, #45	; 0x2d
 8003da6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003daa:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003dae:	4b46      	ldr	r3, [pc, #280]	; (8003ec8 <_vfprintf_r+0x1a78>)
 8003db0:	f7fe bf02 	b.w	8002bb8 <_vfprintf_r+0x768>
 8003db4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003db8:	f7ff b8c9 	b.w	8002f4e <_vfprintf_r+0xafe>
 8003dbc:	aa28      	add	r2, sp, #160	; 0xa0
 8003dbe:	ab25      	add	r3, sp, #148	; 0x94
 8003dc0:	e9cd 3200 	strd	r3, r2, [sp]
 8003dc4:	2103      	movs	r1, #3
 8003dc6:	ab24      	add	r3, sp, #144	; 0x90
 8003dc8:	464a      	mov	r2, r9
 8003dca:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003dce:	9803      	ldr	r0, [sp, #12]
 8003dd0:	f000 f9c6 	bl	8004160 <_dtoa_r>
 8003dd4:	464d      	mov	r5, r9
 8003dd6:	4607      	mov	r7, r0
 8003dd8:	2e46      	cmp	r6, #70	; 0x46
 8003dda:	eb07 0405 	add.w	r4, r7, r5
 8003dde:	f43f af67 	beq.w	8003cb0 <_vfprintf_r+0x1860>
 8003de2:	e76b      	b.n	8003cbc <_vfprintf_r+0x186c>
 8003de4:	f1b9 0f00 	cmp.w	r9, #0
 8003de8:	d131      	bne.n	8003e4e <_vfprintf_r+0x19fe>
 8003dea:	07c5      	lsls	r5, r0, #31
 8003dec:	d42f      	bmi.n	8003e4e <_vfprintf_r+0x19fe>
 8003dee:	2301      	movs	r3, #1
 8003df0:	9304      	str	r3, [sp, #16]
 8003df2:	9309      	str	r3, [sp, #36]	; 0x24
 8003df4:	2666      	movs	r6, #102	; 0x66
 8003df6:	e642      	b.n	8003a7e <_vfprintf_r+0x162e>
 8003df8:	07c3      	lsls	r3, r0, #31
 8003dfa:	f57f abbf 	bpl.w	800357c <_vfprintf_r+0x112c>
 8003dfe:	f7ff bbb9 	b.w	8003574 <_vfprintf_r+0x1124>
 8003e02:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003e04:	f1c3 0301 	rsb	r3, r3, #1
 8003e08:	441a      	add	r2, r3
 8003e0a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003e0e:	9209      	str	r2, [sp, #36]	; 0x24
 8003e10:	9304      	str	r3, [sp, #16]
 8003e12:	2667      	movs	r6, #103	; 0x67
 8003e14:	e633      	b.n	8003a7e <_vfprintf_r+0x162e>
 8003e16:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003e1a:	f04f 0901 	mov.w	r9, #1
 8003e1e:	e457      	b.n	80036d0 <_vfprintf_r+0x1280>
 8003e20:	465a      	mov	r2, fp
 8003e22:	e511      	b.n	8003848 <_vfprintf_r+0x13f8>
 8003e24:	2e47      	cmp	r6, #71	; 0x47
 8003e26:	f47f af5e 	bne.w	8003ce6 <_vfprintf_r+0x1896>
 8003e2a:	f018 0f01 	tst.w	r8, #1
 8003e2e:	f43f ab61 	beq.w	80034f4 <_vfprintf_r+0x10a4>
 8003e32:	e7d1      	b.n	8003dd8 <_vfprintf_r+0x1988>
 8003e34:	2200      	movs	r2, #0
 8003e36:	2300      	movs	r3, #0
 8003e38:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003e3c:	f7fd f8e4 	bl	8001008 <__aeabi_dcmpeq>
 8003e40:	2800      	cmp	r0, #0
 8003e42:	f47f af39 	bne.w	8003cb8 <_vfprintf_r+0x1868>
 8003e46:	f1c5 0501 	rsb	r5, r5, #1
 8003e4a:	9524      	str	r5, [sp, #144]	; 0x90
 8003e4c:	e735      	b.n	8003cba <_vfprintf_r+0x186a>
 8003e4e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003e50:	3301      	adds	r3, #1
 8003e52:	444b      	add	r3, r9
 8003e54:	9309      	str	r3, [sp, #36]	; 0x24
 8003e56:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e5a:	9304      	str	r3, [sp, #16]
 8003e5c:	2666      	movs	r6, #102	; 0x66
 8003e5e:	e60e      	b.n	8003a7e <_vfprintf_r+0x162e>
 8003e60:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e64:	f7ff bb7a 	b.w	800355c <_vfprintf_r+0x110c>
 8003e68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e6a:	9907      	ldr	r1, [sp, #28]
 8003e6c:	9803      	ldr	r0, [sp, #12]
 8003e6e:	f002 fe1d 	bl	8006aac <__sprint_r>
 8003e72:	2800      	cmp	r0, #0
 8003e74:	f47f a864 	bne.w	8002f40 <_vfprintf_r+0xaf0>
 8003e78:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003e7c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e80:	f7ff bbbd 	b.w	80035fe <_vfprintf_r+0x11ae>
 8003e84:	9908      	ldr	r1, [sp, #32]
 8003e86:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003e8a:	680b      	ldr	r3, [r1, #0]
 8003e8c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003e90:	1d0b      	adds	r3, r1, #4
 8003e92:	4692      	mov	sl, r2
 8003e94:	9308      	str	r3, [sp, #32]
 8003e96:	f7fe bb59 	b.w	800254c <_vfprintf_r+0xfc>
 8003e9a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003e9e:	f7ff bb60 	b.w	8003562 <_vfprintf_r+0x1112>
 8003ea2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003ea6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003eaa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003eae:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003eb2:	f7ff b84c 	b.w	8002f4e <_vfprintf_r+0xafe>
 8003eb6:	bf00      	nop
 8003eb8:	080072b8 	.word	0x080072b8
 8003ebc:	08007288 	.word	0x08007288
 8003ec0:	cccccccd 	.word	0xcccccccd
 8003ec4:	08007270 	.word	0x08007270
 8003ec8:	0800726c 	.word	0x0800726c

08003ecc <__sbprintf>:
 8003ecc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003ed0:	460c      	mov	r4, r1
 8003ed2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003ed6:	8989      	ldrh	r1, [r1, #12]
 8003ed8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003eda:	89e5      	ldrh	r5, [r4, #14]
 8003edc:	9619      	str	r6, [sp, #100]	; 0x64
 8003ede:	f021 0102 	bic.w	r1, r1, #2
 8003ee2:	4606      	mov	r6, r0
 8003ee4:	69e0      	ldr	r0, [r4, #28]
 8003ee6:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003eea:	4617      	mov	r7, r2
 8003eec:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003ef0:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003ef2:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003ef6:	4698      	mov	r8, r3
 8003ef8:	ad1a      	add	r5, sp, #104	; 0x68
 8003efa:	2300      	movs	r3, #0
 8003efc:	9007      	str	r0, [sp, #28]
 8003efe:	a816      	add	r0, sp, #88	; 0x58
 8003f00:	9209      	str	r2, [sp, #36]	; 0x24
 8003f02:	9306      	str	r3, [sp, #24]
 8003f04:	9500      	str	r5, [sp, #0]
 8003f06:	9504      	str	r5, [sp, #16]
 8003f08:	9102      	str	r1, [sp, #8]
 8003f0a:	9105      	str	r1, [sp, #20]
 8003f0c:	f001 fc8a 	bl	8005824 <__retarget_lock_init_recursive>
 8003f10:	4643      	mov	r3, r8
 8003f12:	463a      	mov	r2, r7
 8003f14:	4669      	mov	r1, sp
 8003f16:	4630      	mov	r0, r6
 8003f18:	f7fe fa9a 	bl	8002450 <_vfprintf_r>
 8003f1c:	1e05      	subs	r5, r0, #0
 8003f1e:	db07      	blt.n	8003f30 <__sbprintf+0x64>
 8003f20:	4630      	mov	r0, r6
 8003f22:	4669      	mov	r1, sp
 8003f24:	f001 f8d6 	bl	80050d4 <_fflush_r>
 8003f28:	2800      	cmp	r0, #0
 8003f2a:	bf18      	it	ne
 8003f2c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003f30:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003f34:	065b      	lsls	r3, r3, #25
 8003f36:	d503      	bpl.n	8003f40 <__sbprintf+0x74>
 8003f38:	89a3      	ldrh	r3, [r4, #12]
 8003f3a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f3e:	81a3      	strh	r3, [r4, #12]
 8003f40:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003f42:	f001 fc71 	bl	8005828 <__retarget_lock_close_recursive>
 8003f46:	4628      	mov	r0, r5
 8003f48:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003f4c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003f50 <__swsetup_r>:
 8003f50:	b538      	push	{r3, r4, r5, lr}
 8003f52:	4b31      	ldr	r3, [pc, #196]	; (8004018 <__swsetup_r+0xc8>)
 8003f54:	681b      	ldr	r3, [r3, #0]
 8003f56:	4605      	mov	r5, r0
 8003f58:	460c      	mov	r4, r1
 8003f5a:	b113      	cbz	r3, 8003f62 <__swsetup_r+0x12>
 8003f5c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003f5e:	2a00      	cmp	r2, #0
 8003f60:	d03a      	beq.n	8003fd8 <__swsetup_r+0x88>
 8003f62:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003f66:	b293      	uxth	r3, r2
 8003f68:	0718      	lsls	r0, r3, #28
 8003f6a:	d50c      	bpl.n	8003f86 <__swsetup_r+0x36>
 8003f6c:	6920      	ldr	r0, [r4, #16]
 8003f6e:	b1a8      	cbz	r0, 8003f9c <__swsetup_r+0x4c>
 8003f70:	f013 0201 	ands.w	r2, r3, #1
 8003f74:	d020      	beq.n	8003fb8 <__swsetup_r+0x68>
 8003f76:	6963      	ldr	r3, [r4, #20]
 8003f78:	2200      	movs	r2, #0
 8003f7a:	425b      	negs	r3, r3
 8003f7c:	61a3      	str	r3, [r4, #24]
 8003f7e:	60a2      	str	r2, [r4, #8]
 8003f80:	b300      	cbz	r0, 8003fc4 <__swsetup_r+0x74>
 8003f82:	2000      	movs	r0, #0
 8003f84:	bd38      	pop	{r3, r4, r5, pc}
 8003f86:	06d9      	lsls	r1, r3, #27
 8003f88:	d53e      	bpl.n	8004008 <__swsetup_r+0xb8>
 8003f8a:	0758      	lsls	r0, r3, #29
 8003f8c:	d428      	bmi.n	8003fe0 <__swsetup_r+0x90>
 8003f8e:	6920      	ldr	r0, [r4, #16]
 8003f90:	f042 0308 	orr.w	r3, r2, #8
 8003f94:	81a3      	strh	r3, [r4, #12]
 8003f96:	b29b      	uxth	r3, r3
 8003f98:	2800      	cmp	r0, #0
 8003f9a:	d1e9      	bne.n	8003f70 <__swsetup_r+0x20>
 8003f9c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003fa0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003fa4:	d0e4      	beq.n	8003f70 <__swsetup_r+0x20>
 8003fa6:	4628      	mov	r0, r5
 8003fa8:	4621      	mov	r1, r4
 8003faa:	f001 fc71 	bl	8005890 <__smakebuf_r>
 8003fae:	89a3      	ldrh	r3, [r4, #12]
 8003fb0:	6920      	ldr	r0, [r4, #16]
 8003fb2:	f013 0201 	ands.w	r2, r3, #1
 8003fb6:	d1de      	bne.n	8003f76 <__swsetup_r+0x26>
 8003fb8:	0799      	lsls	r1, r3, #30
 8003fba:	bf58      	it	pl
 8003fbc:	6962      	ldrpl	r2, [r4, #20]
 8003fbe:	60a2      	str	r2, [r4, #8]
 8003fc0:	2800      	cmp	r0, #0
 8003fc2:	d1de      	bne.n	8003f82 <__swsetup_r+0x32>
 8003fc4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8003fc8:	061a      	lsls	r2, r3, #24
 8003fca:	d5db      	bpl.n	8003f84 <__swsetup_r+0x34>
 8003fcc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003fd0:	81a3      	strh	r3, [r4, #12]
 8003fd2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003fd6:	bd38      	pop	{r3, r4, r5, pc}
 8003fd8:	4618      	mov	r0, r3
 8003fda:	f001 f8d7 	bl	800518c <__sinit>
 8003fde:	e7c0      	b.n	8003f62 <__swsetup_r+0x12>
 8003fe0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8003fe2:	b151      	cbz	r1, 8003ffa <__swsetup_r+0xaa>
 8003fe4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8003fe8:	4299      	cmp	r1, r3
 8003fea:	d004      	beq.n	8003ff6 <__swsetup_r+0xa6>
 8003fec:	4628      	mov	r0, r5
 8003fee:	f001 f96f 	bl	80052d0 <_free_r>
 8003ff2:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003ff6:	2300      	movs	r3, #0
 8003ff8:	6323      	str	r3, [r4, #48]	; 0x30
 8003ffa:	2300      	movs	r3, #0
 8003ffc:	6920      	ldr	r0, [r4, #16]
 8003ffe:	6063      	str	r3, [r4, #4]
 8004000:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004004:	6020      	str	r0, [r4, #0]
 8004006:	e7c3      	b.n	8003f90 <__swsetup_r+0x40>
 8004008:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800400c:	2309      	movs	r3, #9
 800400e:	602b      	str	r3, [r5, #0]
 8004010:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004014:	81a2      	strh	r2, [r4, #12]
 8004016:	bd38      	pop	{r3, r4, r5, pc}
 8004018:	20000018 	.word	0x20000018

0800401c <register_fini>:
 800401c:	4b02      	ldr	r3, [pc, #8]	; (8004028 <register_fini+0xc>)
 800401e:	b113      	cbz	r3, 8004026 <register_fini+0xa>
 8004020:	4802      	ldr	r0, [pc, #8]	; (800402c <register_fini+0x10>)
 8004022:	f000 b805 	b.w	8004030 <atexit>
 8004026:	4770      	bx	lr
 8004028:	00000000 	.word	0x00000000
 800402c:	080051fd 	.word	0x080051fd

08004030 <atexit>:
 8004030:	2300      	movs	r3, #0
 8004032:	4601      	mov	r1, r0
 8004034:	461a      	mov	r2, r3
 8004036:	4618      	mov	r0, r3
 8004038:	f002 bd58 	b.w	8006aec <__register_exitproc>

0800403c <quorem>:
 800403c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004040:	6903      	ldr	r3, [r0, #16]
 8004042:	690f      	ldr	r7, [r1, #16]
 8004044:	42bb      	cmp	r3, r7
 8004046:	b083      	sub	sp, #12
 8004048:	f2c0 8086 	blt.w	8004158 <quorem+0x11c>
 800404c:	3f01      	subs	r7, #1
 800404e:	f101 0914 	add.w	r9, r1, #20
 8004052:	f100 0a14 	add.w	sl, r0, #20
 8004056:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800405a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800405e:	00bc      	lsls	r4, r7, #2
 8004060:	3201      	adds	r2, #1
 8004062:	fbb3 f8f2 	udiv	r8, r3, r2
 8004066:	eb0a 0304 	add.w	r3, sl, r4
 800406a:	9400      	str	r4, [sp, #0]
 800406c:	eb09 0b04 	add.w	fp, r9, r4
 8004070:	9301      	str	r3, [sp, #4]
 8004072:	f1b8 0f00 	cmp.w	r8, #0
 8004076:	d038      	beq.n	80040ea <quorem+0xae>
 8004078:	2500      	movs	r5, #0
 800407a:	462e      	mov	r6, r5
 800407c:	46ce      	mov	lr, r9
 800407e:	46d4      	mov	ip, sl
 8004080:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004084:	f8dc 3000 	ldr.w	r3, [ip]
 8004088:	b2a2      	uxth	r2, r4
 800408a:	fb08 5502 	mla	r5, r8, r2, r5
 800408e:	0c22      	lsrs	r2, r4, #16
 8004090:	0c2c      	lsrs	r4, r5, #16
 8004092:	fb08 4202 	mla	r2, r8, r2, r4
 8004096:	b2ad      	uxth	r5, r5
 8004098:	1b75      	subs	r5, r6, r5
 800409a:	b296      	uxth	r6, r2
 800409c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80040a0:	fa15 f383 	uxtah	r3, r5, r3
 80040a4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80040a8:	b29b      	uxth	r3, r3
 80040aa:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80040ae:	45f3      	cmp	fp, lr
 80040b0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80040b4:	f84c 3b04 	str.w	r3, [ip], #4
 80040b8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80040bc:	d2e0      	bcs.n	8004080 <quorem+0x44>
 80040be:	9b00      	ldr	r3, [sp, #0]
 80040c0:	f85a 3003 	ldr.w	r3, [sl, r3]
 80040c4:	b98b      	cbnz	r3, 80040ea <quorem+0xae>
 80040c6:	9a01      	ldr	r2, [sp, #4]
 80040c8:	1f13      	subs	r3, r2, #4
 80040ca:	459a      	cmp	sl, r3
 80040cc:	d20c      	bcs.n	80040e8 <quorem+0xac>
 80040ce:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80040d2:	b94b      	cbnz	r3, 80040e8 <quorem+0xac>
 80040d4:	f1a2 0308 	sub.w	r3, r2, #8
 80040d8:	e002      	b.n	80040e0 <quorem+0xa4>
 80040da:	681a      	ldr	r2, [r3, #0]
 80040dc:	3b04      	subs	r3, #4
 80040de:	b91a      	cbnz	r2, 80040e8 <quorem+0xac>
 80040e0:	459a      	cmp	sl, r3
 80040e2:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80040e6:	d3f8      	bcc.n	80040da <quorem+0x9e>
 80040e8:	6107      	str	r7, [r0, #16]
 80040ea:	4604      	mov	r4, r0
 80040ec:	f002 f944 	bl	8006378 <__mcmp>
 80040f0:	2800      	cmp	r0, #0
 80040f2:	db2d      	blt.n	8004150 <quorem+0x114>
 80040f4:	f108 0801 	add.w	r8, r8, #1
 80040f8:	4655      	mov	r5, sl
 80040fa:	2300      	movs	r3, #0
 80040fc:	f859 1b04 	ldr.w	r1, [r9], #4
 8004100:	6828      	ldr	r0, [r5, #0]
 8004102:	b28a      	uxth	r2, r1
 8004104:	1a9a      	subs	r2, r3, r2
 8004106:	0c0b      	lsrs	r3, r1, #16
 8004108:	fa12 f280 	uxtah	r2, r2, r0
 800410c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004110:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004114:	b292      	uxth	r2, r2
 8004116:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800411a:	45cb      	cmp	fp, r9
 800411c:	f845 2b04 	str.w	r2, [r5], #4
 8004120:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004124:	d2ea      	bcs.n	80040fc <quorem+0xc0>
 8004126:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800412a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800412e:	b97a      	cbnz	r2, 8004150 <quorem+0x114>
 8004130:	1f1a      	subs	r2, r3, #4
 8004132:	4592      	cmp	sl, r2
 8004134:	d20b      	bcs.n	800414e <quorem+0x112>
 8004136:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800413a:	b942      	cbnz	r2, 800414e <quorem+0x112>
 800413c:	3b08      	subs	r3, #8
 800413e:	e002      	b.n	8004146 <quorem+0x10a>
 8004140:	681a      	ldr	r2, [r3, #0]
 8004142:	3b04      	subs	r3, #4
 8004144:	b91a      	cbnz	r2, 800414e <quorem+0x112>
 8004146:	459a      	cmp	sl, r3
 8004148:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800414c:	d3f8      	bcc.n	8004140 <quorem+0x104>
 800414e:	6127      	str	r7, [r4, #16]
 8004150:	4640      	mov	r0, r8
 8004152:	b003      	add	sp, #12
 8004154:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004158:	2000      	movs	r0, #0
 800415a:	b003      	add	sp, #12
 800415c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004160 <_dtoa_r>:
 8004160:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004164:	ec55 4b10 	vmov	r4, r5, d0
 8004168:	b09b      	sub	sp, #108	; 0x6c
 800416a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800416c:	9102      	str	r1, [sp, #8]
 800416e:	4681      	mov	r9, r0
 8004170:	9207      	str	r2, [sp, #28]
 8004172:	9305      	str	r3, [sp, #20]
 8004174:	e9cd 4500 	strd	r4, r5, [sp]
 8004178:	b156      	cbz	r6, 8004190 <_dtoa_r+0x30>
 800417a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800417c:	6072      	str	r2, [r6, #4]
 800417e:	2301      	movs	r3, #1
 8004180:	4093      	lsls	r3, r2
 8004182:	60b3      	str	r3, [r6, #8]
 8004184:	4631      	mov	r1, r6
 8004186:	f001 ff07 	bl	8005f98 <_Bfree>
 800418a:	2300      	movs	r3, #0
 800418c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004190:	f1b5 0800 	subs.w	r8, r5, #0
 8004194:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004196:	bfb4      	ite	lt
 8004198:	2301      	movlt	r3, #1
 800419a:	2300      	movge	r3, #0
 800419c:	6013      	str	r3, [r2, #0]
 800419e:	4b76      	ldr	r3, [pc, #472]	; (8004378 <_dtoa_r+0x218>)
 80041a0:	bfbc      	itt	lt
 80041a2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80041a6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80041aa:	ea33 0308 	bics.w	r3, r3, r8
 80041ae:	f000 80a6 	beq.w	80042fe <_dtoa_r+0x19e>
 80041b2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80041b6:	2200      	movs	r2, #0
 80041b8:	2300      	movs	r3, #0
 80041ba:	4630      	mov	r0, r6
 80041bc:	4639      	mov	r1, r7
 80041be:	f7fc ff23 	bl	8001008 <__aeabi_dcmpeq>
 80041c2:	4605      	mov	r5, r0
 80041c4:	b178      	cbz	r0, 80041e6 <_dtoa_r+0x86>
 80041c6:	9a05      	ldr	r2, [sp, #20]
 80041c8:	2301      	movs	r3, #1
 80041ca:	6013      	str	r3, [r2, #0]
 80041cc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80041ce:	2b00      	cmp	r3, #0
 80041d0:	f000 80c0 	beq.w	8004354 <_dtoa_r+0x1f4>
 80041d4:	4b69      	ldr	r3, [pc, #420]	; (800437c <_dtoa_r+0x21c>)
 80041d6:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80041d8:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80041dc:	6013      	str	r3, [r2, #0]
 80041de:	4658      	mov	r0, fp
 80041e0:	b01b      	add	sp, #108	; 0x6c
 80041e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041e6:	aa18      	add	r2, sp, #96	; 0x60
 80041e8:	a919      	add	r1, sp, #100	; 0x64
 80041ea:	ec47 6b10 	vmov	d0, r6, r7
 80041ee:	4648      	mov	r0, r9
 80041f0:	f002 f954 	bl	800649c <__d2b>
 80041f4:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80041f8:	4682      	mov	sl, r0
 80041fa:	f040 80a0 	bne.w	800433e <_dtoa_r+0x1de>
 80041fe:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004202:	442c      	add	r4, r5
 8004204:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004208:	2b20      	cmp	r3, #32
 800420a:	f340 842c 	ble.w	8004a66 <_dtoa_r+0x906>
 800420e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004212:	fa08 f803 	lsl.w	r8, r8, r3
 8004216:	9b00      	ldr	r3, [sp, #0]
 8004218:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800421c:	fa23 f000 	lsr.w	r0, r3, r0
 8004220:	ea48 0000 	orr.w	r0, r8, r0
 8004224:	f7fc fc0e 	bl	8000a44 <__aeabi_ui2d>
 8004228:	2301      	movs	r3, #1
 800422a:	4606      	mov	r6, r0
 800422c:	3c01      	subs	r4, #1
 800422e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004232:	930f      	str	r3, [sp, #60]	; 0x3c
 8004234:	4630      	mov	r0, r6
 8004236:	4639      	mov	r1, r7
 8004238:	2200      	movs	r2, #0
 800423a:	4b51      	ldr	r3, [pc, #324]	; (8004380 <_dtoa_r+0x220>)
 800423c:	f7fc fac4 	bl	80007c8 <__aeabi_dsub>
 8004240:	a347      	add	r3, pc, #284	; (adr r3, 8004360 <_dtoa_r+0x200>)
 8004242:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004246:	f7fc fc77 	bl	8000b38 <__aeabi_dmul>
 800424a:	a347      	add	r3, pc, #284	; (adr r3, 8004368 <_dtoa_r+0x208>)
 800424c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004250:	f7fc fabc 	bl	80007cc <__adddf3>
 8004254:	4606      	mov	r6, r0
 8004256:	4620      	mov	r0, r4
 8004258:	460f      	mov	r7, r1
 800425a:	f7fc fc03 	bl	8000a64 <__aeabi_i2d>
 800425e:	a344      	add	r3, pc, #272	; (adr r3, 8004370 <_dtoa_r+0x210>)
 8004260:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004264:	f7fc fc68 	bl	8000b38 <__aeabi_dmul>
 8004268:	4602      	mov	r2, r0
 800426a:	460b      	mov	r3, r1
 800426c:	4630      	mov	r0, r6
 800426e:	4639      	mov	r1, r7
 8004270:	f7fc faac 	bl	80007cc <__adddf3>
 8004274:	4606      	mov	r6, r0
 8004276:	460f      	mov	r7, r1
 8004278:	f7fc ff0e 	bl	8001098 <__aeabi_d2iz>
 800427c:	2200      	movs	r2, #0
 800427e:	9006      	str	r0, [sp, #24]
 8004280:	2300      	movs	r3, #0
 8004282:	4630      	mov	r0, r6
 8004284:	4639      	mov	r1, r7
 8004286:	f7fc fec9 	bl	800101c <__aeabi_dcmplt>
 800428a:	2800      	cmp	r0, #0
 800428c:	f040 8273 	bne.w	8004776 <_dtoa_r+0x616>
 8004290:	9e06      	ldr	r6, [sp, #24]
 8004292:	2e16      	cmp	r6, #22
 8004294:	f200 825d 	bhi.w	8004752 <_dtoa_r+0x5f2>
 8004298:	4b3a      	ldr	r3, [pc, #232]	; (8004384 <_dtoa_r+0x224>)
 800429a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800429e:	e9d3 0100 	ldrd	r0, r1, [r3]
 80042a2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042a6:	f7fc fed7 	bl	8001058 <__aeabi_dcmpgt>
 80042aa:	2800      	cmp	r0, #0
 80042ac:	f000 83d7 	beq.w	8004a5e <_dtoa_r+0x8fe>
 80042b0:	1e73      	subs	r3, r6, #1
 80042b2:	9306      	str	r3, [sp, #24]
 80042b4:	2300      	movs	r3, #0
 80042b6:	930d      	str	r3, [sp, #52]	; 0x34
 80042b8:	1b2c      	subs	r4, r5, r4
 80042ba:	f1b4 0801 	subs.w	r8, r4, #1
 80042be:	f100 8254 	bmi.w	800476a <_dtoa_r+0x60a>
 80042c2:	2300      	movs	r3, #0
 80042c4:	9308      	str	r3, [sp, #32]
 80042c6:	9b06      	ldr	r3, [sp, #24]
 80042c8:	2b00      	cmp	r3, #0
 80042ca:	f2c0 8245 	blt.w	8004758 <_dtoa_r+0x5f8>
 80042ce:	4498      	add	r8, r3
 80042d0:	930c      	str	r3, [sp, #48]	; 0x30
 80042d2:	2300      	movs	r3, #0
 80042d4:	930b      	str	r3, [sp, #44]	; 0x2c
 80042d6:	9b02      	ldr	r3, [sp, #8]
 80042d8:	2b09      	cmp	r3, #9
 80042da:	d85b      	bhi.n	8004394 <_dtoa_r+0x234>
 80042dc:	2b05      	cmp	r3, #5
 80042de:	f340 83c0 	ble.w	8004a62 <_dtoa_r+0x902>
 80042e2:	3b04      	subs	r3, #4
 80042e4:	9302      	str	r3, [sp, #8]
 80042e6:	2500      	movs	r5, #0
 80042e8:	9b02      	ldr	r3, [sp, #8]
 80042ea:	3b02      	subs	r3, #2
 80042ec:	2b03      	cmp	r3, #3
 80042ee:	f200 8498 	bhi.w	8004c22 <_dtoa_r+0xac2>
 80042f2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80042f6:	03df      	.short	0x03df
 80042f8:	03e803bf 	.word	0x03e803bf
 80042fc:	04f5      	.short	0x04f5
 80042fe:	9a05      	ldr	r2, [sp, #20]
 8004300:	f242 730f 	movw	r3, #9999	; 0x270f
 8004304:	6013      	str	r3, [r2, #0]
 8004306:	9b00      	ldr	r3, [sp, #0]
 8004308:	b983      	cbnz	r3, 800432c <_dtoa_r+0x1cc>
 800430a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800430e:	b96b      	cbnz	r3, 800432c <_dtoa_r+0x1cc>
 8004310:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004312:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004388 <_dtoa_r+0x228>
 8004316:	2b00      	cmp	r3, #0
 8004318:	f43f af61 	beq.w	80041de <_dtoa_r+0x7e>
 800431c:	f10b 0308 	add.w	r3, fp, #8
 8004320:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004322:	4658      	mov	r0, fp
 8004324:	6013      	str	r3, [r2, #0]
 8004326:	b01b      	add	sp, #108	; 0x6c
 8004328:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800432c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800432e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800438c <_dtoa_r+0x22c>
 8004332:	2b00      	cmp	r3, #0
 8004334:	f43f af53 	beq.w	80041de <_dtoa_r+0x7e>
 8004338:	f10b 0303 	add.w	r3, fp, #3
 800433c:	e7f0      	b.n	8004320 <_dtoa_r+0x1c0>
 800433e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004342:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004346:	950f      	str	r5, [sp, #60]	; 0x3c
 8004348:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800434c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004350:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004352:	e76f      	b.n	8004234 <_dtoa_r+0xd4>
 8004354:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004390 <_dtoa_r+0x230>
 8004358:	4658      	mov	r0, fp
 800435a:	b01b      	add	sp, #108	; 0x6c
 800435c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004360:	636f4361 	.word	0x636f4361
 8004364:	3fd287a7 	.word	0x3fd287a7
 8004368:	8b60c8b3 	.word	0x8b60c8b3
 800436c:	3fc68a28 	.word	0x3fc68a28
 8004370:	509f79fb 	.word	0x509f79fb
 8004374:	3fd34413 	.word	0x3fd34413
 8004378:	7ff00000 	.word	0x7ff00000
 800437c:	080072a5 	.word	0x080072a5
 8004380:	3ff80000 	.word	0x3ff80000
 8004384:	08007300 	.word	0x08007300
 8004388:	080072c8 	.word	0x080072c8
 800438c:	080072d4 	.word	0x080072d4
 8004390:	080072a4 	.word	0x080072a4
 8004394:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004398:	2501      	movs	r5, #1
 800439a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800439e:	2300      	movs	r3, #0
 80043a0:	9302      	str	r3, [sp, #8]
 80043a2:	9307      	str	r3, [sp, #28]
 80043a4:	2100      	movs	r1, #0
 80043a6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80043aa:	940e      	str	r4, [sp, #56]	; 0x38
 80043ac:	4648      	mov	r0, r9
 80043ae:	f001 fdcd 	bl	8005f4c <_Balloc>
 80043b2:	2c0e      	cmp	r4, #14
 80043b4:	4683      	mov	fp, r0
 80043b6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80043ba:	f200 80fb 	bhi.w	80045b4 <_dtoa_r+0x454>
 80043be:	2d00      	cmp	r5, #0
 80043c0:	f000 80f8 	beq.w	80045b4 <_dtoa_r+0x454>
 80043c4:	ed9d 7b00 	vldr	d7, [sp]
 80043c8:	9906      	ldr	r1, [sp, #24]
 80043ca:	2900      	cmp	r1, #0
 80043cc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80043d0:	f340 83e5 	ble.w	8004b9e <_dtoa_r+0xa3e>
 80043d4:	4b9d      	ldr	r3, [pc, #628]	; (800464c <_dtoa_r+0x4ec>)
 80043d6:	f001 020f 	and.w	r2, r1, #15
 80043da:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80043de:	ed93 7b00 	vldr	d7, [r3]
 80043e2:	110c      	asrs	r4, r1, #4
 80043e4:	06e2      	lsls	r2, r4, #27
 80043e6:	ed8d 7b00 	vstr	d7, [sp]
 80043ea:	f140 849e 	bpl.w	8004d2a <_dtoa_r+0xbca>
 80043ee:	4b98      	ldr	r3, [pc, #608]	; (8004650 <_dtoa_r+0x4f0>)
 80043f0:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80043f4:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80043f8:	f7fc fcc8 	bl	8000d8c <__aeabi_ddiv>
 80043fc:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004400:	f004 040f 	and.w	r4, r4, #15
 8004404:	2603      	movs	r6, #3
 8004406:	b17c      	cbz	r4, 8004428 <_dtoa_r+0x2c8>
 8004408:	e9dd 0100 	ldrd	r0, r1, [sp]
 800440c:	4d90      	ldr	r5, [pc, #576]	; (8004650 <_dtoa_r+0x4f0>)
 800440e:	07e3      	lsls	r3, r4, #31
 8004410:	d504      	bpl.n	800441c <_dtoa_r+0x2bc>
 8004412:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004416:	f7fc fb8f 	bl	8000b38 <__aeabi_dmul>
 800441a:	3601      	adds	r6, #1
 800441c:	1064      	asrs	r4, r4, #1
 800441e:	f105 0508 	add.w	r5, r5, #8
 8004422:	d1f4      	bne.n	800440e <_dtoa_r+0x2ae>
 8004424:	e9cd 0100 	strd	r0, r1, [sp]
 8004428:	e9dd 2300 	ldrd	r2, r3, [sp]
 800442c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004430:	f7fc fcac 	bl	8000d8c <__aeabi_ddiv>
 8004434:	e9cd 0100 	strd	r0, r1, [sp]
 8004438:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800443a:	b143      	cbz	r3, 800444e <_dtoa_r+0x2ee>
 800443c:	2200      	movs	r2, #0
 800443e:	4b85      	ldr	r3, [pc, #532]	; (8004654 <_dtoa_r+0x4f4>)
 8004440:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004444:	f7fc fdea 	bl	800101c <__aeabi_dcmplt>
 8004448:	2800      	cmp	r0, #0
 800444a:	f040 84ff 	bne.w	8004e4c <_dtoa_r+0xcec>
 800444e:	4630      	mov	r0, r6
 8004450:	f7fc fb08 	bl	8000a64 <__aeabi_i2d>
 8004454:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004458:	f7fc fb6e 	bl	8000b38 <__aeabi_dmul>
 800445c:	4b7e      	ldr	r3, [pc, #504]	; (8004658 <_dtoa_r+0x4f8>)
 800445e:	2200      	movs	r2, #0
 8004460:	f7fc f9b4 	bl	80007cc <__adddf3>
 8004464:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004466:	4606      	mov	r6, r0
 8004468:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800446c:	2b00      	cmp	r3, #0
 800446e:	f000 841c 	beq.w	8004caa <_dtoa_r+0xb4a>
 8004472:	9b06      	ldr	r3, [sp, #24]
 8004474:	9316      	str	r3, [sp, #88]	; 0x58
 8004476:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004478:	9312      	str	r3, [sp, #72]	; 0x48
 800447a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800447e:	f7fc fe0b 	bl	8001098 <__aeabi_d2iz>
 8004482:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004484:	4b71      	ldr	r3, [pc, #452]	; (800464c <_dtoa_r+0x4ec>)
 8004486:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800448a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800448e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004492:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004496:	f7fc fae5 	bl	8000a64 <__aeabi_i2d>
 800449a:	460b      	mov	r3, r1
 800449c:	4602      	mov	r2, r0
 800449e:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044a2:	e9cd 6700 	strd	r6, r7, [sp]
 80044a6:	f7fc f98f 	bl	80007c8 <__aeabi_dsub>
 80044aa:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80044ac:	b2ed      	uxtb	r5, r5
 80044ae:	4606      	mov	r6, r0
 80044b0:	460f      	mov	r7, r1
 80044b2:	f10b 0401 	add.w	r4, fp, #1
 80044b6:	2b00      	cmp	r3, #0
 80044b8:	f000 8458 	beq.w	8004d6c <_dtoa_r+0xc0c>
 80044bc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80044c0:	2000      	movs	r0, #0
 80044c2:	4966      	ldr	r1, [pc, #408]	; (800465c <_dtoa_r+0x4fc>)
 80044c4:	f7fc fc62 	bl	8000d8c <__aeabi_ddiv>
 80044c8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80044cc:	f7fc f97c 	bl	80007c8 <__aeabi_dsub>
 80044d0:	f88b 5000 	strb.w	r5, [fp]
 80044d4:	4632      	mov	r2, r6
 80044d6:	463b      	mov	r3, r7
 80044d8:	e9cd 0100 	strd	r0, r1, [sp]
 80044dc:	f7fc fdbc 	bl	8001058 <__aeabi_dcmpgt>
 80044e0:	2800      	cmp	r0, #0
 80044e2:	f040 8502 	bne.w	8004eea <_dtoa_r+0xd8a>
 80044e6:	4632      	mov	r2, r6
 80044e8:	463b      	mov	r3, r7
 80044ea:	2000      	movs	r0, #0
 80044ec:	4959      	ldr	r1, [pc, #356]	; (8004654 <_dtoa_r+0x4f4>)
 80044ee:	f7fc f96b 	bl	80007c8 <__aeabi_dsub>
 80044f2:	4602      	mov	r2, r0
 80044f4:	460b      	mov	r3, r1
 80044f6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044fa:	f7fc fdad 	bl	8001058 <__aeabi_dcmpgt>
 80044fe:	2800      	cmp	r0, #0
 8004500:	f040 84fb 	bne.w	8004efa <_dtoa_r+0xd9a>
 8004504:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004506:	2a01      	cmp	r2, #1
 8004508:	d050      	beq.n	80045ac <_dtoa_r+0x44c>
 800450a:	445a      	add	r2, fp
 800450c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004510:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004514:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004518:	4692      	mov	sl, r2
 800451a:	46cb      	mov	fp, r9
 800451c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004520:	e00c      	b.n	800453c <_dtoa_r+0x3dc>
 8004522:	2000      	movs	r0, #0
 8004524:	494b      	ldr	r1, [pc, #300]	; (8004654 <_dtoa_r+0x4f4>)
 8004526:	f7fc f94f 	bl	80007c8 <__aeabi_dsub>
 800452a:	4642      	mov	r2, r8
 800452c:	464b      	mov	r3, r9
 800452e:	f7fc fd75 	bl	800101c <__aeabi_dcmplt>
 8004532:	2800      	cmp	r0, #0
 8004534:	f040 84dc 	bne.w	8004ef0 <_dtoa_r+0xd90>
 8004538:	4554      	cmp	r4, sl
 800453a:	d030      	beq.n	800459e <_dtoa_r+0x43e>
 800453c:	4640      	mov	r0, r8
 800453e:	4649      	mov	r1, r9
 8004540:	2200      	movs	r2, #0
 8004542:	4b47      	ldr	r3, [pc, #284]	; (8004660 <_dtoa_r+0x500>)
 8004544:	f7fc faf8 	bl	8000b38 <__aeabi_dmul>
 8004548:	2200      	movs	r2, #0
 800454a:	4b45      	ldr	r3, [pc, #276]	; (8004660 <_dtoa_r+0x500>)
 800454c:	4680      	mov	r8, r0
 800454e:	4689      	mov	r9, r1
 8004550:	4630      	mov	r0, r6
 8004552:	4639      	mov	r1, r7
 8004554:	f7fc faf0 	bl	8000b38 <__aeabi_dmul>
 8004558:	460f      	mov	r7, r1
 800455a:	4606      	mov	r6, r0
 800455c:	f7fc fd9c 	bl	8001098 <__aeabi_d2iz>
 8004560:	4605      	mov	r5, r0
 8004562:	f7fc fa7f 	bl	8000a64 <__aeabi_i2d>
 8004566:	4602      	mov	r2, r0
 8004568:	460b      	mov	r3, r1
 800456a:	4630      	mov	r0, r6
 800456c:	4639      	mov	r1, r7
 800456e:	f7fc f92b 	bl	80007c8 <__aeabi_dsub>
 8004572:	3530      	adds	r5, #48	; 0x30
 8004574:	b2ed      	uxtb	r5, r5
 8004576:	4642      	mov	r2, r8
 8004578:	464b      	mov	r3, r9
 800457a:	f804 5b01 	strb.w	r5, [r4], #1
 800457e:	4606      	mov	r6, r0
 8004580:	460f      	mov	r7, r1
 8004582:	f7fc fd4b 	bl	800101c <__aeabi_dcmplt>
 8004586:	4632      	mov	r2, r6
 8004588:	463b      	mov	r3, r7
 800458a:	2800      	cmp	r0, #0
 800458c:	d0c9      	beq.n	8004522 <_dtoa_r+0x3c2>
 800458e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004590:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004594:	9306      	str	r3, [sp, #24]
 8004596:	46d9      	mov	r9, fp
 8004598:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800459c:	e236      	b.n	8004a0c <_dtoa_r+0x8ac>
 800459e:	46d9      	mov	r9, fp
 80045a0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80045a4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80045a8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80045ac:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80045b0:	e9cd 3400 	strd	r3, r4, [sp]
 80045b4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80045b6:	2b00      	cmp	r3, #0
 80045b8:	f2c0 80ae 	blt.w	8004718 <_dtoa_r+0x5b8>
 80045bc:	9a06      	ldr	r2, [sp, #24]
 80045be:	2a0e      	cmp	r2, #14
 80045c0:	f300 80aa 	bgt.w	8004718 <_dtoa_r+0x5b8>
 80045c4:	4b21      	ldr	r3, [pc, #132]	; (800464c <_dtoa_r+0x4ec>)
 80045c6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80045ca:	ed93 7b00 	vldr	d7, [r3]
 80045ce:	9b07      	ldr	r3, [sp, #28]
 80045d0:	2b00      	cmp	r3, #0
 80045d2:	ed8d 7b02 	vstr	d7, [sp, #8]
 80045d6:	f2c0 82be 	blt.w	8004b56 <_dtoa_r+0x9f6>
 80045da:	e9dd 6700 	ldrd	r6, r7, [sp]
 80045de:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045e2:	4630      	mov	r0, r6
 80045e4:	4639      	mov	r1, r7
 80045e6:	f7fc fbd1 	bl	8000d8c <__aeabi_ddiv>
 80045ea:	f7fc fd55 	bl	8001098 <__aeabi_d2iz>
 80045ee:	4605      	mov	r5, r0
 80045f0:	f7fc fa38 	bl	8000a64 <__aeabi_i2d>
 80045f4:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80045f8:	f7fc fa9e 	bl	8000b38 <__aeabi_dmul>
 80045fc:	460b      	mov	r3, r1
 80045fe:	4602      	mov	r2, r0
 8004600:	4639      	mov	r1, r7
 8004602:	4630      	mov	r0, r6
 8004604:	f7fc f8e0 	bl	80007c8 <__aeabi_dsub>
 8004608:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800460c:	f88b 3000 	strb.w	r3, [fp]
 8004610:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004612:	2b01      	cmp	r3, #1
 8004614:	4606      	mov	r6, r0
 8004616:	460f      	mov	r7, r1
 8004618:	f10b 0401 	add.w	r4, fp, #1
 800461c:	d053      	beq.n	80046c6 <_dtoa_r+0x566>
 800461e:	2200      	movs	r2, #0
 8004620:	4b0f      	ldr	r3, [pc, #60]	; (8004660 <_dtoa_r+0x500>)
 8004622:	f7fc fa89 	bl	8000b38 <__aeabi_dmul>
 8004626:	2200      	movs	r2, #0
 8004628:	2300      	movs	r3, #0
 800462a:	4606      	mov	r6, r0
 800462c:	460f      	mov	r7, r1
 800462e:	f7fc fceb 	bl	8001008 <__aeabi_dcmpeq>
 8004632:	2800      	cmp	r0, #0
 8004634:	f040 81ea 	bne.w	8004a0c <_dtoa_r+0x8ac>
 8004638:	f8cd a000 	str.w	sl, [sp]
 800463c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004640:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004644:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004648:	e017      	b.n	800467a <_dtoa_r+0x51a>
 800464a:	bf00      	nop
 800464c:	08007300 	.word	0x08007300
 8004650:	080072d8 	.word	0x080072d8
 8004654:	3ff00000 	.word	0x3ff00000
 8004658:	401c0000 	.word	0x401c0000
 800465c:	3fe00000 	.word	0x3fe00000
 8004660:	40240000 	.word	0x40240000
 8004664:	f7fc fa68 	bl	8000b38 <__aeabi_dmul>
 8004668:	2200      	movs	r2, #0
 800466a:	2300      	movs	r3, #0
 800466c:	4606      	mov	r6, r0
 800466e:	460f      	mov	r7, r1
 8004670:	f7fc fcca 	bl	8001008 <__aeabi_dcmpeq>
 8004674:	2800      	cmp	r0, #0
 8004676:	f040 833d 	bne.w	8004cf4 <_dtoa_r+0xb94>
 800467a:	464a      	mov	r2, r9
 800467c:	4653      	mov	r3, sl
 800467e:	4630      	mov	r0, r6
 8004680:	4639      	mov	r1, r7
 8004682:	f7fc fb83 	bl	8000d8c <__aeabi_ddiv>
 8004686:	f7fc fd07 	bl	8001098 <__aeabi_d2iz>
 800468a:	4605      	mov	r5, r0
 800468c:	f7fc f9ea 	bl	8000a64 <__aeabi_i2d>
 8004690:	464a      	mov	r2, r9
 8004692:	4653      	mov	r3, sl
 8004694:	f7fc fa50 	bl	8000b38 <__aeabi_dmul>
 8004698:	4602      	mov	r2, r0
 800469a:	460b      	mov	r3, r1
 800469c:	4630      	mov	r0, r6
 800469e:	4639      	mov	r1, r7
 80046a0:	f7fc f892 	bl	80007c8 <__aeabi_dsub>
 80046a4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80046a8:	f804 cb01 	strb.w	ip, [r4], #1
 80046ac:	eba4 0c0b 	sub.w	ip, r4, fp
 80046b0:	45e0      	cmp	r8, ip
 80046b2:	4606      	mov	r6, r0
 80046b4:	460f      	mov	r7, r1
 80046b6:	f04f 0200 	mov.w	r2, #0
 80046ba:	4bc1      	ldr	r3, [pc, #772]	; (80049c0 <_dtoa_r+0x860>)
 80046bc:	d1d2      	bne.n	8004664 <_dtoa_r+0x504>
 80046be:	f8dd a000 	ldr.w	sl, [sp]
 80046c2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80046c6:	4632      	mov	r2, r6
 80046c8:	463b      	mov	r3, r7
 80046ca:	4630      	mov	r0, r6
 80046cc:	4639      	mov	r1, r7
 80046ce:	f7fc f87d 	bl	80007cc <__adddf3>
 80046d2:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046d6:	4606      	mov	r6, r0
 80046d8:	460f      	mov	r7, r1
 80046da:	f7fc fcbd 	bl	8001058 <__aeabi_dcmpgt>
 80046de:	b958      	cbnz	r0, 80046f8 <_dtoa_r+0x598>
 80046e0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046e4:	4630      	mov	r0, r6
 80046e6:	4639      	mov	r1, r7
 80046e8:	f7fc fc8e 	bl	8001008 <__aeabi_dcmpeq>
 80046ec:	2800      	cmp	r0, #0
 80046ee:	f000 818d 	beq.w	8004a0c <_dtoa_r+0x8ac>
 80046f2:	07e9      	lsls	r1, r5, #31
 80046f4:	f140 818a 	bpl.w	8004a0c <_dtoa_r+0x8ac>
 80046f8:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80046fc:	e005      	b.n	800470a <_dtoa_r+0x5aa>
 80046fe:	459b      	cmp	fp, r3
 8004700:	f000 8373 	beq.w	8004dea <_dtoa_r+0xc8a>
 8004704:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004708:	461c      	mov	r4, r3
 800470a:	2d39      	cmp	r5, #57	; 0x39
 800470c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004710:	d0f5      	beq.n	80046fe <_dtoa_r+0x59e>
 8004712:	3501      	adds	r5, #1
 8004714:	701d      	strb	r5, [r3, #0]
 8004716:	e179      	b.n	8004a0c <_dtoa_r+0x8ac>
 8004718:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800471a:	2a00      	cmp	r2, #0
 800471c:	d03b      	beq.n	8004796 <_dtoa_r+0x636>
 800471e:	9a02      	ldr	r2, [sp, #8]
 8004720:	2a01      	cmp	r2, #1
 8004722:	f340 820b 	ble.w	8004b3c <_dtoa_r+0x9dc>
 8004726:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004728:	1e5f      	subs	r7, r3, #1
 800472a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800472c:	42bb      	cmp	r3, r7
 800472e:	f2c0 82e6 	blt.w	8004cfe <_dtoa_r+0xb9e>
 8004732:	1bdf      	subs	r7, r3, r7
 8004734:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004736:	2b00      	cmp	r3, #0
 8004738:	f2c0 830b 	blt.w	8004d52 <_dtoa_r+0xbf2>
 800473c:	9a08      	ldr	r2, [sp, #32]
 800473e:	4614      	mov	r4, r2
 8004740:	441a      	add	r2, r3
 8004742:	4498      	add	r8, r3
 8004744:	9208      	str	r2, [sp, #32]
 8004746:	2101      	movs	r1, #1
 8004748:	4648      	mov	r0, r9
 800474a:	f001 fcbf 	bl	80060cc <__i2b>
 800474e:	4605      	mov	r5, r0
 8004750:	e024      	b.n	800479c <_dtoa_r+0x63c>
 8004752:	2301      	movs	r3, #1
 8004754:	930d      	str	r3, [sp, #52]	; 0x34
 8004756:	e5af      	b.n	80042b8 <_dtoa_r+0x158>
 8004758:	9a08      	ldr	r2, [sp, #32]
 800475a:	9b06      	ldr	r3, [sp, #24]
 800475c:	1ad2      	subs	r2, r2, r3
 800475e:	425b      	negs	r3, r3
 8004760:	930b      	str	r3, [sp, #44]	; 0x2c
 8004762:	2300      	movs	r3, #0
 8004764:	9208      	str	r2, [sp, #32]
 8004766:	930c      	str	r3, [sp, #48]	; 0x30
 8004768:	e5b5      	b.n	80042d6 <_dtoa_r+0x176>
 800476a:	f1c4 0301 	rsb	r3, r4, #1
 800476e:	9308      	str	r3, [sp, #32]
 8004770:	f04f 0800 	mov.w	r8, #0
 8004774:	e5a7      	b.n	80042c6 <_dtoa_r+0x166>
 8004776:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800477a:	4640      	mov	r0, r8
 800477c:	f7fc f972 	bl	8000a64 <__aeabi_i2d>
 8004780:	4632      	mov	r2, r6
 8004782:	463b      	mov	r3, r7
 8004784:	f7fc fc40 	bl	8001008 <__aeabi_dcmpeq>
 8004788:	2800      	cmp	r0, #0
 800478a:	f47f ad81 	bne.w	8004290 <_dtoa_r+0x130>
 800478e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004792:	9306      	str	r3, [sp, #24]
 8004794:	e57c      	b.n	8004290 <_dtoa_r+0x130>
 8004796:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004798:	9c08      	ldr	r4, [sp, #32]
 800479a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800479c:	2c00      	cmp	r4, #0
 800479e:	dd0c      	ble.n	80047ba <_dtoa_r+0x65a>
 80047a0:	f1b8 0f00 	cmp.w	r8, #0
 80047a4:	dd09      	ble.n	80047ba <_dtoa_r+0x65a>
 80047a6:	4544      	cmp	r4, r8
 80047a8:	9a08      	ldr	r2, [sp, #32]
 80047aa:	4623      	mov	r3, r4
 80047ac:	bfa8      	it	ge
 80047ae:	4643      	movge	r3, r8
 80047b0:	1ad2      	subs	r2, r2, r3
 80047b2:	9208      	str	r2, [sp, #32]
 80047b4:	1ae4      	subs	r4, r4, r3
 80047b6:	eba8 0803 	sub.w	r8, r8, r3
 80047ba:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80047bc:	b16b      	cbz	r3, 80047da <_dtoa_r+0x67a>
 80047be:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80047c0:	2a00      	cmp	r2, #0
 80047c2:	f000 8290 	beq.w	8004ce6 <_dtoa_r+0xb86>
 80047c6:	1bde      	subs	r6, r3, r7
 80047c8:	2f00      	cmp	r7, #0
 80047ca:	f040 819b 	bne.w	8004b04 <_dtoa_r+0x9a4>
 80047ce:	4651      	mov	r1, sl
 80047d0:	4632      	mov	r2, r6
 80047d2:	4648      	mov	r0, r9
 80047d4:	f001 fd2a 	bl	800622c <__pow5mult>
 80047d8:	4682      	mov	sl, r0
 80047da:	2101      	movs	r1, #1
 80047dc:	4648      	mov	r0, r9
 80047de:	f001 fc75 	bl	80060cc <__i2b>
 80047e2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80047e4:	4606      	mov	r6, r0
 80047e6:	2a00      	cmp	r2, #0
 80047e8:	f040 8125 	bne.w	8004a36 <_dtoa_r+0x8d6>
 80047ec:	9b02      	ldr	r3, [sp, #8]
 80047ee:	2b01      	cmp	r3, #1
 80047f0:	f340 816c 	ble.w	8004acc <_dtoa_r+0x96c>
 80047f4:	2001      	movs	r0, #1
 80047f6:	4440      	add	r0, r8
 80047f8:	f010 001f 	ands.w	r0, r0, #31
 80047fc:	f000 8119 	beq.w	8004a32 <_dtoa_r+0x8d2>
 8004800:	f1c0 0320 	rsb	r3, r0, #32
 8004804:	2b04      	cmp	r3, #4
 8004806:	f340 83ac 	ble.w	8004f62 <_dtoa_r+0xe02>
 800480a:	f1c0 001c 	rsb	r0, r0, #28
 800480e:	9b08      	ldr	r3, [sp, #32]
 8004810:	4403      	add	r3, r0
 8004812:	9308      	str	r3, [sp, #32]
 8004814:	4404      	add	r4, r0
 8004816:	4480      	add	r8, r0
 8004818:	9b08      	ldr	r3, [sp, #32]
 800481a:	2b00      	cmp	r3, #0
 800481c:	dd05      	ble.n	800482a <_dtoa_r+0x6ca>
 800481e:	4651      	mov	r1, sl
 8004820:	461a      	mov	r2, r3
 8004822:	4648      	mov	r0, r9
 8004824:	f001 fd52 	bl	80062cc <__lshift>
 8004828:	4682      	mov	sl, r0
 800482a:	f1b8 0f00 	cmp.w	r8, #0
 800482e:	dd05      	ble.n	800483c <_dtoa_r+0x6dc>
 8004830:	4631      	mov	r1, r6
 8004832:	4642      	mov	r2, r8
 8004834:	4648      	mov	r0, r9
 8004836:	f001 fd49 	bl	80062cc <__lshift>
 800483a:	4606      	mov	r6, r0
 800483c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800483e:	2b00      	cmp	r3, #0
 8004840:	d177      	bne.n	8004932 <_dtoa_r+0x7d2>
 8004842:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004844:	2b00      	cmp	r3, #0
 8004846:	f340 8209 	ble.w	8004c5c <_dtoa_r+0xafc>
 800484a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800484c:	2b00      	cmp	r3, #0
 800484e:	f000 8089 	beq.w	8004964 <_dtoa_r+0x804>
 8004852:	2c00      	cmp	r4, #0
 8004854:	f300 816b 	bgt.w	8004b2e <_dtoa_r+0x9ce>
 8004858:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800485a:	2b00      	cmp	r3, #0
 800485c:	f040 81cd 	bne.w	8004bfa <_dtoa_r+0xa9a>
 8004860:	46a8      	mov	r8, r5
 8004862:	9a00      	ldr	r2, [sp, #0]
 8004864:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004868:	f002 0201 	and.w	r2, r2, #1
 800486c:	920a      	str	r2, [sp, #40]	; 0x28
 800486e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004870:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004874:	441a      	add	r2, r3
 8004876:	465f      	mov	r7, fp
 8004878:	9209      	str	r2, [sp, #36]	; 0x24
 800487a:	46b3      	mov	fp, r6
 800487c:	4659      	mov	r1, fp
 800487e:	4650      	mov	r0, sl
 8004880:	f7ff fbdc 	bl	800403c <quorem>
 8004884:	4629      	mov	r1, r5
 8004886:	4604      	mov	r4, r0
 8004888:	4650      	mov	r0, sl
 800488a:	f001 fd75 	bl	8006378 <__mcmp>
 800488e:	4659      	mov	r1, fp
 8004890:	4606      	mov	r6, r0
 8004892:	4642      	mov	r2, r8
 8004894:	4648      	mov	r0, r9
 8004896:	f001 fd8b 	bl	80063b0 <__mdiff>
 800489a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800489e:	9300      	str	r3, [sp, #0]
 80048a0:	68c3      	ldr	r3, [r0, #12]
 80048a2:	4601      	mov	r1, r0
 80048a4:	2b00      	cmp	r3, #0
 80048a6:	f040 81d4 	bne.w	8004c52 <_dtoa_r+0xaf2>
 80048aa:	9008      	str	r0, [sp, #32]
 80048ac:	4650      	mov	r0, sl
 80048ae:	f001 fd63 	bl	8006378 <__mcmp>
 80048b2:	9a08      	ldr	r2, [sp, #32]
 80048b4:	9007      	str	r0, [sp, #28]
 80048b6:	4611      	mov	r1, r2
 80048b8:	4648      	mov	r0, r9
 80048ba:	f001 fb6d 	bl	8005f98 <_Bfree>
 80048be:	9b07      	ldr	r3, [sp, #28]
 80048c0:	b933      	cbnz	r3, 80048d0 <_dtoa_r+0x770>
 80048c2:	9a02      	ldr	r2, [sp, #8]
 80048c4:	b922      	cbnz	r2, 80048d0 <_dtoa_r+0x770>
 80048c6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048c8:	2b00      	cmp	r3, #0
 80048ca:	f000 8319 	beq.w	8004f00 <_dtoa_r+0xda0>
 80048ce:	9b02      	ldr	r3, [sp, #8]
 80048d0:	2e00      	cmp	r6, #0
 80048d2:	f2c0 821c 	blt.w	8004d0e <_dtoa_r+0xbae>
 80048d6:	d105      	bne.n	80048e4 <_dtoa_r+0x784>
 80048d8:	9a02      	ldr	r2, [sp, #8]
 80048da:	b91a      	cbnz	r2, 80048e4 <_dtoa_r+0x784>
 80048dc:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80048de:	2a00      	cmp	r2, #0
 80048e0:	f000 8215 	beq.w	8004d0e <_dtoa_r+0xbae>
 80048e4:	2b00      	cmp	r3, #0
 80048e6:	f107 0401 	add.w	r4, r7, #1
 80048ea:	f300 8225 	bgt.w	8004d38 <_dtoa_r+0xbd8>
 80048ee:	9b00      	ldr	r3, [sp, #0]
 80048f0:	703b      	strb	r3, [r7, #0]
 80048f2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048f4:	42bb      	cmp	r3, r7
 80048f6:	f000 8230 	beq.w	8004d5a <_dtoa_r+0xbfa>
 80048fa:	4651      	mov	r1, sl
 80048fc:	2300      	movs	r3, #0
 80048fe:	220a      	movs	r2, #10
 8004900:	4648      	mov	r0, r9
 8004902:	f001 fb53 	bl	8005fac <__multadd>
 8004906:	4545      	cmp	r5, r8
 8004908:	4682      	mov	sl, r0
 800490a:	4629      	mov	r1, r5
 800490c:	f04f 0300 	mov.w	r3, #0
 8004910:	f04f 020a 	mov.w	r2, #10
 8004914:	4648      	mov	r0, r9
 8004916:	f000 8196 	beq.w	8004c46 <_dtoa_r+0xae6>
 800491a:	f001 fb47 	bl	8005fac <__multadd>
 800491e:	4641      	mov	r1, r8
 8004920:	4605      	mov	r5, r0
 8004922:	2300      	movs	r3, #0
 8004924:	220a      	movs	r2, #10
 8004926:	4648      	mov	r0, r9
 8004928:	f001 fb40 	bl	8005fac <__multadd>
 800492c:	4627      	mov	r7, r4
 800492e:	4680      	mov	r8, r0
 8004930:	e7a4      	b.n	800487c <_dtoa_r+0x71c>
 8004932:	4631      	mov	r1, r6
 8004934:	4650      	mov	r0, sl
 8004936:	f001 fd1f 	bl	8006378 <__mcmp>
 800493a:	2800      	cmp	r0, #0
 800493c:	da81      	bge.n	8004842 <_dtoa_r+0x6e2>
 800493e:	9f06      	ldr	r7, [sp, #24]
 8004940:	4651      	mov	r1, sl
 8004942:	2300      	movs	r3, #0
 8004944:	220a      	movs	r2, #10
 8004946:	4648      	mov	r0, r9
 8004948:	3f01      	subs	r7, #1
 800494a:	9706      	str	r7, [sp, #24]
 800494c:	f001 fb2e 	bl	8005fac <__multadd>
 8004950:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004952:	4682      	mov	sl, r0
 8004954:	2b00      	cmp	r3, #0
 8004956:	f040 82eb 	bne.w	8004f30 <_dtoa_r+0xdd0>
 800495a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800495c:	2b00      	cmp	r3, #0
 800495e:	f340 82f3 	ble.w	8004f48 <_dtoa_r+0xde8>
 8004962:	9309      	str	r3, [sp, #36]	; 0x24
 8004964:	465c      	mov	r4, fp
 8004966:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800496a:	e002      	b.n	8004972 <_dtoa_r+0x812>
 800496c:	f001 fb1e 	bl	8005fac <__multadd>
 8004970:	4682      	mov	sl, r0
 8004972:	4631      	mov	r1, r6
 8004974:	4650      	mov	r0, sl
 8004976:	f7ff fb61 	bl	800403c <quorem>
 800497a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 800497e:	f804 7b01 	strb.w	r7, [r4], #1
 8004982:	eba4 030b 	sub.w	r3, r4, fp
 8004986:	4598      	cmp	r8, r3
 8004988:	f04f 020a 	mov.w	r2, #10
 800498c:	f04f 0300 	mov.w	r3, #0
 8004990:	4651      	mov	r1, sl
 8004992:	4648      	mov	r0, r9
 8004994:	dcea      	bgt.n	800496c <_dtoa_r+0x80c>
 8004996:	2300      	movs	r3, #0
 8004998:	9700      	str	r7, [sp, #0]
 800499a:	9302      	str	r3, [sp, #8]
 800499c:	4651      	mov	r1, sl
 800499e:	2201      	movs	r2, #1
 80049a0:	4648      	mov	r0, r9
 80049a2:	f001 fc93 	bl	80062cc <__lshift>
 80049a6:	4631      	mov	r1, r6
 80049a8:	4682      	mov	sl, r0
 80049aa:	f001 fce5 	bl	8006378 <__mcmp>
 80049ae:	2800      	cmp	r0, #0
 80049b0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80049b4:	dc14      	bgt.n	80049e0 <_dtoa_r+0x880>
 80049b6:	d108      	bne.n	80049ca <_dtoa_r+0x86a>
 80049b8:	9b00      	ldr	r3, [sp, #0]
 80049ba:	07db      	lsls	r3, r3, #31
 80049bc:	d410      	bmi.n	80049e0 <_dtoa_r+0x880>
 80049be:	e004      	b.n	80049ca <_dtoa_r+0x86a>
 80049c0:	40240000 	.word	0x40240000
 80049c4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 80049c8:	461c      	mov	r4, r3
 80049ca:	2a30      	cmp	r2, #48	; 0x30
 80049cc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049d0:	d0f8      	beq.n	80049c4 <_dtoa_r+0x864>
 80049d2:	e00b      	b.n	80049ec <_dtoa_r+0x88c>
 80049d4:	459b      	cmp	fp, r3
 80049d6:	f000 814e 	beq.w	8004c76 <_dtoa_r+0xb16>
 80049da:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80049de:	461c      	mov	r4, r3
 80049e0:	2a39      	cmp	r2, #57	; 0x39
 80049e2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049e6:	d0f5      	beq.n	80049d4 <_dtoa_r+0x874>
 80049e8:	3201      	adds	r2, #1
 80049ea:	701a      	strb	r2, [r3, #0]
 80049ec:	4631      	mov	r1, r6
 80049ee:	4648      	mov	r0, r9
 80049f0:	f001 fad2 	bl	8005f98 <_Bfree>
 80049f4:	b155      	cbz	r5, 8004a0c <_dtoa_r+0x8ac>
 80049f6:	9902      	ldr	r1, [sp, #8]
 80049f8:	b121      	cbz	r1, 8004a04 <_dtoa_r+0x8a4>
 80049fa:	42a9      	cmp	r1, r5
 80049fc:	d002      	beq.n	8004a04 <_dtoa_r+0x8a4>
 80049fe:	4648      	mov	r0, r9
 8004a00:	f001 faca 	bl	8005f98 <_Bfree>
 8004a04:	4629      	mov	r1, r5
 8004a06:	4648      	mov	r0, r9
 8004a08:	f001 fac6 	bl	8005f98 <_Bfree>
 8004a0c:	4651      	mov	r1, sl
 8004a0e:	4648      	mov	r0, r9
 8004a10:	f001 fac2 	bl	8005f98 <_Bfree>
 8004a14:	2200      	movs	r2, #0
 8004a16:	9b06      	ldr	r3, [sp, #24]
 8004a18:	7022      	strb	r2, [r4, #0]
 8004a1a:	9a05      	ldr	r2, [sp, #20]
 8004a1c:	3301      	adds	r3, #1
 8004a1e:	6013      	str	r3, [r2, #0]
 8004a20:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a22:	2b00      	cmp	r3, #0
 8004a24:	f43f abdb 	beq.w	80041de <_dtoa_r+0x7e>
 8004a28:	4658      	mov	r0, fp
 8004a2a:	601c      	str	r4, [r3, #0]
 8004a2c:	b01b      	add	sp, #108	; 0x6c
 8004a2e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a32:	201c      	movs	r0, #28
 8004a34:	e6eb      	b.n	800480e <_dtoa_r+0x6ae>
 8004a36:	4601      	mov	r1, r0
 8004a38:	4648      	mov	r0, r9
 8004a3a:	f001 fbf7 	bl	800622c <__pow5mult>
 8004a3e:	9b02      	ldr	r3, [sp, #8]
 8004a40:	2b01      	cmp	r3, #1
 8004a42:	4606      	mov	r6, r0
 8004a44:	f340 80d4 	ble.w	8004bf0 <_dtoa_r+0xa90>
 8004a48:	2300      	movs	r3, #0
 8004a4a:	930c      	str	r3, [sp, #48]	; 0x30
 8004a4c:	6933      	ldr	r3, [r6, #16]
 8004a4e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004a52:	6918      	ldr	r0, [r3, #16]
 8004a54:	f001 faea 	bl	800602c <__hi0bits>
 8004a58:	f1c0 0020 	rsb	r0, r0, #32
 8004a5c:	e6cb      	b.n	80047f6 <_dtoa_r+0x696>
 8004a5e:	900d      	str	r0, [sp, #52]	; 0x34
 8004a60:	e42a      	b.n	80042b8 <_dtoa_r+0x158>
 8004a62:	2501      	movs	r5, #1
 8004a64:	e440      	b.n	80042e8 <_dtoa_r+0x188>
 8004a66:	f1c3 0820 	rsb	r8, r3, #32
 8004a6a:	9b00      	ldr	r3, [sp, #0]
 8004a6c:	fa03 f008 	lsl.w	r0, r3, r8
 8004a70:	f7ff bbd8 	b.w	8004224 <_dtoa_r+0xc4>
 8004a74:	2300      	movs	r3, #0
 8004a76:	930a      	str	r3, [sp, #40]	; 0x28
 8004a78:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004a7c:	4413      	add	r3, r2
 8004a7e:	930e      	str	r3, [sp, #56]	; 0x38
 8004a80:	3301      	adds	r3, #1
 8004a82:	2b01      	cmp	r3, #1
 8004a84:	461e      	mov	r6, r3
 8004a86:	9309      	str	r3, [sp, #36]	; 0x24
 8004a88:	bfb8      	it	lt
 8004a8a:	2601      	movlt	r6, #1
 8004a8c:	2100      	movs	r1, #0
 8004a8e:	2e17      	cmp	r6, #23
 8004a90:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004a94:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004a96:	f77f ac89 	ble.w	80043ac <_dtoa_r+0x24c>
 8004a9a:	2201      	movs	r2, #1
 8004a9c:	2304      	movs	r3, #4
 8004a9e:	005b      	lsls	r3, r3, #1
 8004aa0:	f103 0014 	add.w	r0, r3, #20
 8004aa4:	42b0      	cmp	r0, r6
 8004aa6:	4611      	mov	r1, r2
 8004aa8:	f102 0201 	add.w	r2, r2, #1
 8004aac:	d9f7      	bls.n	8004a9e <_dtoa_r+0x93e>
 8004aae:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004ab2:	e47b      	b.n	80043ac <_dtoa_r+0x24c>
 8004ab4:	2300      	movs	r3, #0
 8004ab6:	930a      	str	r3, [sp, #40]	; 0x28
 8004ab8:	9e07      	ldr	r6, [sp, #28]
 8004aba:	2e00      	cmp	r6, #0
 8004abc:	f340 80e2 	ble.w	8004c84 <_dtoa_r+0xb24>
 8004ac0:	960e      	str	r6, [sp, #56]	; 0x38
 8004ac2:	9609      	str	r6, [sp, #36]	; 0x24
 8004ac4:	e7e2      	b.n	8004a8c <_dtoa_r+0x92c>
 8004ac6:	2301      	movs	r3, #1
 8004ac8:	930a      	str	r3, [sp, #40]	; 0x28
 8004aca:	e7f5      	b.n	8004ab8 <_dtoa_r+0x958>
 8004acc:	9b00      	ldr	r3, [sp, #0]
 8004ace:	2b00      	cmp	r3, #0
 8004ad0:	f47f ae90 	bne.w	80047f4 <_dtoa_r+0x694>
 8004ad4:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004ad8:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004adc:	2b00      	cmp	r3, #0
 8004ade:	f040 8192 	bne.w	8004e06 <_dtoa_r+0xca6>
 8004ae2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004ae6:	0d1b      	lsrs	r3, r3, #20
 8004ae8:	051b      	lsls	r3, r3, #20
 8004aea:	b12b      	cbz	r3, 8004af8 <_dtoa_r+0x998>
 8004aec:	9b08      	ldr	r3, [sp, #32]
 8004aee:	3301      	adds	r3, #1
 8004af0:	9308      	str	r3, [sp, #32]
 8004af2:	f108 0801 	add.w	r8, r8, #1
 8004af6:	2301      	movs	r3, #1
 8004af8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004afa:	930c      	str	r3, [sp, #48]	; 0x30
 8004afc:	2a00      	cmp	r2, #0
 8004afe:	f43f ae79 	beq.w	80047f4 <_dtoa_r+0x694>
 8004b02:	e7a3      	b.n	8004a4c <_dtoa_r+0x8ec>
 8004b04:	463a      	mov	r2, r7
 8004b06:	4629      	mov	r1, r5
 8004b08:	4648      	mov	r0, r9
 8004b0a:	f001 fb8f 	bl	800622c <__pow5mult>
 8004b0e:	4652      	mov	r2, sl
 8004b10:	4601      	mov	r1, r0
 8004b12:	4605      	mov	r5, r0
 8004b14:	4648      	mov	r0, r9
 8004b16:	f001 fae3 	bl	80060e0 <__multiply>
 8004b1a:	4651      	mov	r1, sl
 8004b1c:	4607      	mov	r7, r0
 8004b1e:	4648      	mov	r0, r9
 8004b20:	f001 fa3a 	bl	8005f98 <_Bfree>
 8004b24:	46ba      	mov	sl, r7
 8004b26:	2e00      	cmp	r6, #0
 8004b28:	f43f ae57 	beq.w	80047da <_dtoa_r+0x67a>
 8004b2c:	e64f      	b.n	80047ce <_dtoa_r+0x66e>
 8004b2e:	4629      	mov	r1, r5
 8004b30:	4622      	mov	r2, r4
 8004b32:	4648      	mov	r0, r9
 8004b34:	f001 fbca 	bl	80062cc <__lshift>
 8004b38:	4605      	mov	r5, r0
 8004b3a:	e68d      	b.n	8004858 <_dtoa_r+0x6f8>
 8004b3c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004b3e:	2a00      	cmp	r2, #0
 8004b40:	f000 815d 	beq.w	8004dfe <_dtoa_r+0xc9e>
 8004b44:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004b48:	9a08      	ldr	r2, [sp, #32]
 8004b4a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004b4c:	4614      	mov	r4, r2
 8004b4e:	441a      	add	r2, r3
 8004b50:	4498      	add	r8, r3
 8004b52:	9208      	str	r2, [sp, #32]
 8004b54:	e5f7      	b.n	8004746 <_dtoa_r+0x5e6>
 8004b56:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b58:	2b00      	cmp	r3, #0
 8004b5a:	f73f ad3e 	bgt.w	80045da <_dtoa_r+0x47a>
 8004b5e:	f040 80bc 	bne.w	8004cda <_dtoa_r+0xb7a>
 8004b62:	ec51 0b17 	vmov	r0, r1, d7
 8004b66:	2200      	movs	r2, #0
 8004b68:	4bb2      	ldr	r3, [pc, #712]	; (8004e34 <_dtoa_r+0xcd4>)
 8004b6a:	f7fb ffe5 	bl	8000b38 <__aeabi_dmul>
 8004b6e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004b72:	f7fc fa67 	bl	8001044 <__aeabi_dcmpge>
 8004b76:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004b78:	4635      	mov	r5, r6
 8004b7a:	2800      	cmp	r0, #0
 8004b7c:	d176      	bne.n	8004c6c <_dtoa_r+0xb0c>
 8004b7e:	9a06      	ldr	r2, [sp, #24]
 8004b80:	2331      	movs	r3, #49	; 0x31
 8004b82:	3201      	adds	r2, #1
 8004b84:	9206      	str	r2, [sp, #24]
 8004b86:	f88b 3000 	strb.w	r3, [fp]
 8004b8a:	f10b 0401 	add.w	r4, fp, #1
 8004b8e:	4631      	mov	r1, r6
 8004b90:	4648      	mov	r0, r9
 8004b92:	f001 fa01 	bl	8005f98 <_Bfree>
 8004b96:	2d00      	cmp	r5, #0
 8004b98:	f47f af34 	bne.w	8004a04 <_dtoa_r+0x8a4>
 8004b9c:	e736      	b.n	8004a0c <_dtoa_r+0x8ac>
 8004b9e:	f000 8142 	beq.w	8004e26 <_dtoa_r+0xcc6>
 8004ba2:	9b06      	ldr	r3, [sp, #24]
 8004ba4:	425c      	negs	r4, r3
 8004ba6:	4ba4      	ldr	r3, [pc, #656]	; (8004e38 <_dtoa_r+0xcd8>)
 8004ba8:	f004 020f 	and.w	r2, r4, #15
 8004bac:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004bb0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004bb4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004bb8:	f7fb ffbe 	bl	8000b38 <__aeabi_dmul>
 8004bbc:	1124      	asrs	r4, r4, #4
 8004bbe:	e9cd 0100 	strd	r0, r1, [sp]
 8004bc2:	f000 81c6 	beq.w	8004f52 <_dtoa_r+0xdf2>
 8004bc6:	4d9d      	ldr	r5, [pc, #628]	; (8004e3c <_dtoa_r+0xcdc>)
 8004bc8:	2300      	movs	r3, #0
 8004bca:	2602      	movs	r6, #2
 8004bcc:	07e7      	lsls	r7, r4, #31
 8004bce:	d505      	bpl.n	8004bdc <_dtoa_r+0xa7c>
 8004bd0:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004bd4:	f7fb ffb0 	bl	8000b38 <__aeabi_dmul>
 8004bd8:	3601      	adds	r6, #1
 8004bda:	2301      	movs	r3, #1
 8004bdc:	1064      	asrs	r4, r4, #1
 8004bde:	f105 0508 	add.w	r5, r5, #8
 8004be2:	d1f3      	bne.n	8004bcc <_dtoa_r+0xa6c>
 8004be4:	2b00      	cmp	r3, #0
 8004be6:	f43f ac27 	beq.w	8004438 <_dtoa_r+0x2d8>
 8004bea:	e9cd 0100 	strd	r0, r1, [sp]
 8004bee:	e423      	b.n	8004438 <_dtoa_r+0x2d8>
 8004bf0:	9b00      	ldr	r3, [sp, #0]
 8004bf2:	2b00      	cmp	r3, #0
 8004bf4:	f43f af6e 	beq.w	8004ad4 <_dtoa_r+0x974>
 8004bf8:	e726      	b.n	8004a48 <_dtoa_r+0x8e8>
 8004bfa:	6869      	ldr	r1, [r5, #4]
 8004bfc:	4648      	mov	r0, r9
 8004bfe:	f001 f9a5 	bl	8005f4c <_Balloc>
 8004c02:	692b      	ldr	r3, [r5, #16]
 8004c04:	3302      	adds	r3, #2
 8004c06:	009a      	lsls	r2, r3, #2
 8004c08:	4604      	mov	r4, r0
 8004c0a:	f105 010c 	add.w	r1, r5, #12
 8004c0e:	300c      	adds	r0, #12
 8004c10:	f7fb fc76 	bl	8000500 <memcpy>
 8004c14:	4621      	mov	r1, r4
 8004c16:	2201      	movs	r2, #1
 8004c18:	4648      	mov	r0, r9
 8004c1a:	f001 fb57 	bl	80062cc <__lshift>
 8004c1e:	4680      	mov	r8, r0
 8004c20:	e61f      	b.n	8004862 <_dtoa_r+0x702>
 8004c22:	2400      	movs	r4, #0
 8004c24:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004c28:	4621      	mov	r1, r4
 8004c2a:	4648      	mov	r0, r9
 8004c2c:	f001 f98e 	bl	8005f4c <_Balloc>
 8004c30:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004c34:	930e      	str	r3, [sp, #56]	; 0x38
 8004c36:	9309      	str	r3, [sp, #36]	; 0x24
 8004c38:	2301      	movs	r3, #1
 8004c3a:	4683      	mov	fp, r0
 8004c3c:	9407      	str	r4, [sp, #28]
 8004c3e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004c42:	930a      	str	r3, [sp, #40]	; 0x28
 8004c44:	e4b6      	b.n	80045b4 <_dtoa_r+0x454>
 8004c46:	f001 f9b1 	bl	8005fac <__multadd>
 8004c4a:	4627      	mov	r7, r4
 8004c4c:	4605      	mov	r5, r0
 8004c4e:	4680      	mov	r8, r0
 8004c50:	e614      	b.n	800487c <_dtoa_r+0x71c>
 8004c52:	4648      	mov	r0, r9
 8004c54:	f001 f9a0 	bl	8005f98 <_Bfree>
 8004c58:	2301      	movs	r3, #1
 8004c5a:	e639      	b.n	80048d0 <_dtoa_r+0x770>
 8004c5c:	9b02      	ldr	r3, [sp, #8]
 8004c5e:	2b02      	cmp	r3, #2
 8004c60:	f77f adf3 	ble.w	800484a <_dtoa_r+0x6ea>
 8004c64:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c66:	2b00      	cmp	r3, #0
 8004c68:	f000 80cf 	beq.w	8004e0a <_dtoa_r+0xcaa>
 8004c6c:	9b07      	ldr	r3, [sp, #28]
 8004c6e:	43db      	mvns	r3, r3
 8004c70:	9306      	str	r3, [sp, #24]
 8004c72:	465c      	mov	r4, fp
 8004c74:	e78b      	b.n	8004b8e <_dtoa_r+0xa2e>
 8004c76:	9a06      	ldr	r2, [sp, #24]
 8004c78:	2331      	movs	r3, #49	; 0x31
 8004c7a:	3201      	adds	r2, #1
 8004c7c:	9206      	str	r2, [sp, #24]
 8004c7e:	f88b 3000 	strb.w	r3, [fp]
 8004c82:	e6b3      	b.n	80049ec <_dtoa_r+0x88c>
 8004c84:	2401      	movs	r4, #1
 8004c86:	9409      	str	r4, [sp, #36]	; 0x24
 8004c88:	9407      	str	r4, [sp, #28]
 8004c8a:	f7ff bb8b 	b.w	80043a4 <_dtoa_r+0x244>
 8004c8e:	4630      	mov	r0, r6
 8004c90:	f7fb fee8 	bl	8000a64 <__aeabi_i2d>
 8004c94:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c98:	f7fb ff4e 	bl	8000b38 <__aeabi_dmul>
 8004c9c:	2200      	movs	r2, #0
 8004c9e:	4b68      	ldr	r3, [pc, #416]	; (8004e40 <_dtoa_r+0xce0>)
 8004ca0:	f7fb fd94 	bl	80007cc <__adddf3>
 8004ca4:	4606      	mov	r6, r0
 8004ca6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004caa:	2200      	movs	r2, #0
 8004cac:	4b61      	ldr	r3, [pc, #388]	; (8004e34 <_dtoa_r+0xcd4>)
 8004cae:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cb2:	f7fb fd89 	bl	80007c8 <__aeabi_dsub>
 8004cb6:	4632      	mov	r2, r6
 8004cb8:	463b      	mov	r3, r7
 8004cba:	4604      	mov	r4, r0
 8004cbc:	460d      	mov	r5, r1
 8004cbe:	f7fc f9cb 	bl	8001058 <__aeabi_dcmpgt>
 8004cc2:	2800      	cmp	r0, #0
 8004cc4:	d14f      	bne.n	8004d66 <_dtoa_r+0xc06>
 8004cc6:	4632      	mov	r2, r6
 8004cc8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004ccc:	4620      	mov	r0, r4
 8004cce:	4629      	mov	r1, r5
 8004cd0:	f7fc f9a4 	bl	800101c <__aeabi_dcmplt>
 8004cd4:	2800      	cmp	r0, #0
 8004cd6:	f43f ac69 	beq.w	80045ac <_dtoa_r+0x44c>
 8004cda:	2600      	movs	r6, #0
 8004cdc:	4635      	mov	r5, r6
 8004cde:	e7c5      	b.n	8004c6c <_dtoa_r+0xb0c>
 8004ce0:	2301      	movs	r3, #1
 8004ce2:	930a      	str	r3, [sp, #40]	; 0x28
 8004ce4:	e6c8      	b.n	8004a78 <_dtoa_r+0x918>
 8004ce6:	4651      	mov	r1, sl
 8004ce8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004cea:	4648      	mov	r0, r9
 8004cec:	f001 fa9e 	bl	800622c <__pow5mult>
 8004cf0:	4682      	mov	sl, r0
 8004cf2:	e572      	b.n	80047da <_dtoa_r+0x67a>
 8004cf4:	f8dd a000 	ldr.w	sl, [sp]
 8004cf8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004cfc:	e686      	b.n	8004a0c <_dtoa_r+0x8ac>
 8004cfe:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d00:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004d02:	1afb      	subs	r3, r7, r3
 8004d04:	441a      	add	r2, r3
 8004d06:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004d0a:	2700      	movs	r7, #0
 8004d0c:	e512      	b.n	8004734 <_dtoa_r+0x5d4>
 8004d0e:	2b00      	cmp	r3, #0
 8004d10:	9402      	str	r4, [sp, #8]
 8004d12:	465e      	mov	r6, fp
 8004d14:	f107 0401 	add.w	r4, r7, #1
 8004d18:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d1c:	f300 80ba 	bgt.w	8004e94 <_dtoa_r+0xd34>
 8004d20:	9b00      	ldr	r3, [sp, #0]
 8004d22:	9502      	str	r5, [sp, #8]
 8004d24:	703b      	strb	r3, [r7, #0]
 8004d26:	4645      	mov	r5, r8
 8004d28:	e660      	b.n	80049ec <_dtoa_r+0x88c>
 8004d2a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d2e:	2602      	movs	r6, #2
 8004d30:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004d34:	f7ff bb67 	b.w	8004406 <_dtoa_r+0x2a6>
 8004d38:	9b00      	ldr	r3, [sp, #0]
 8004d3a:	2b39      	cmp	r3, #57	; 0x39
 8004d3c:	465e      	mov	r6, fp
 8004d3e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d42:	f000 80b9 	beq.w	8004eb8 <_dtoa_r+0xd58>
 8004d46:	9b00      	ldr	r3, [sp, #0]
 8004d48:	9502      	str	r5, [sp, #8]
 8004d4a:	3301      	adds	r3, #1
 8004d4c:	703b      	strb	r3, [r7, #0]
 8004d4e:	4645      	mov	r5, r8
 8004d50:	e64c      	b.n	80049ec <_dtoa_r+0x88c>
 8004d52:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004d56:	1a9c      	subs	r4, r3, r2
 8004d58:	e4f5      	b.n	8004746 <_dtoa_r+0x5e6>
 8004d5a:	465e      	mov	r6, fp
 8004d5c:	9502      	str	r5, [sp, #8]
 8004d5e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d62:	4645      	mov	r5, r8
 8004d64:	e61a      	b.n	800499c <_dtoa_r+0x83c>
 8004d66:	2600      	movs	r6, #0
 8004d68:	4635      	mov	r5, r6
 8004d6a:	e708      	b.n	8004b7e <_dtoa_r+0xa1e>
 8004d6c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004d70:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d74:	f7fb fee0 	bl	8000b38 <__aeabi_dmul>
 8004d78:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d7a:	f88b 5000 	strb.w	r5, [fp]
 8004d7e:	2b01      	cmp	r3, #1
 8004d80:	e9cd 0100 	strd	r0, r1, [sp]
 8004d84:	d020      	beq.n	8004dc8 <_dtoa_r+0xc68>
 8004d86:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004d88:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004d8c:	445b      	add	r3, fp
 8004d8e:	4698      	mov	r8, r3
 8004d90:	2200      	movs	r2, #0
 8004d92:	4b2c      	ldr	r3, [pc, #176]	; (8004e44 <_dtoa_r+0xce4>)
 8004d94:	4630      	mov	r0, r6
 8004d96:	4639      	mov	r1, r7
 8004d98:	f7fb fece 	bl	8000b38 <__aeabi_dmul>
 8004d9c:	460f      	mov	r7, r1
 8004d9e:	4606      	mov	r6, r0
 8004da0:	f7fc f97a 	bl	8001098 <__aeabi_d2iz>
 8004da4:	4605      	mov	r5, r0
 8004da6:	f7fb fe5d 	bl	8000a64 <__aeabi_i2d>
 8004daa:	3530      	adds	r5, #48	; 0x30
 8004dac:	4602      	mov	r2, r0
 8004dae:	460b      	mov	r3, r1
 8004db0:	4630      	mov	r0, r6
 8004db2:	4639      	mov	r1, r7
 8004db4:	f7fb fd08 	bl	80007c8 <__aeabi_dsub>
 8004db8:	f804 5b01 	strb.w	r5, [r4], #1
 8004dbc:	4544      	cmp	r4, r8
 8004dbe:	4606      	mov	r6, r0
 8004dc0:	460f      	mov	r7, r1
 8004dc2:	d1e5      	bne.n	8004d90 <_dtoa_r+0xc30>
 8004dc4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004dc8:	4b1f      	ldr	r3, [pc, #124]	; (8004e48 <_dtoa_r+0xce8>)
 8004dca:	2200      	movs	r2, #0
 8004dcc:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004dd0:	f7fb fcfc 	bl	80007cc <__adddf3>
 8004dd4:	4632      	mov	r2, r6
 8004dd6:	463b      	mov	r3, r7
 8004dd8:	f7fc f920 	bl	800101c <__aeabi_dcmplt>
 8004ddc:	2800      	cmp	r0, #0
 8004dde:	d070      	beq.n	8004ec2 <_dtoa_r+0xd62>
 8004de0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004de2:	9306      	str	r3, [sp, #24]
 8004de4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004de8:	e48f      	b.n	800470a <_dtoa_r+0x5aa>
 8004dea:	2330      	movs	r3, #48	; 0x30
 8004dec:	f88b 3000 	strb.w	r3, [fp]
 8004df0:	9b06      	ldr	r3, [sp, #24]
 8004df2:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004df6:	3301      	adds	r3, #1
 8004df8:	9306      	str	r3, [sp, #24]
 8004dfa:	465b      	mov	r3, fp
 8004dfc:	e489      	b.n	8004712 <_dtoa_r+0x5b2>
 8004dfe:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004e00:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004e04:	e6a0      	b.n	8004b48 <_dtoa_r+0x9e8>
 8004e06:	2300      	movs	r3, #0
 8004e08:	e676      	b.n	8004af8 <_dtoa_r+0x998>
 8004e0a:	4631      	mov	r1, r6
 8004e0c:	2205      	movs	r2, #5
 8004e0e:	4648      	mov	r0, r9
 8004e10:	f001 f8cc 	bl	8005fac <__multadd>
 8004e14:	4601      	mov	r1, r0
 8004e16:	4606      	mov	r6, r0
 8004e18:	4650      	mov	r0, sl
 8004e1a:	f001 faad 	bl	8006378 <__mcmp>
 8004e1e:	2800      	cmp	r0, #0
 8004e20:	f73f aead 	bgt.w	8004b7e <_dtoa_r+0xa1e>
 8004e24:	e722      	b.n	8004c6c <_dtoa_r+0xb0c>
 8004e26:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e2a:	2602      	movs	r6, #2
 8004e2c:	ed8d 7b00 	vstr	d7, [sp]
 8004e30:	f7ff bb02 	b.w	8004438 <_dtoa_r+0x2d8>
 8004e34:	40140000 	.word	0x40140000
 8004e38:	08007300 	.word	0x08007300
 8004e3c:	080072d8 	.word	0x080072d8
 8004e40:	401c0000 	.word	0x401c0000
 8004e44:	40240000 	.word	0x40240000
 8004e48:	3fe00000 	.word	0x3fe00000
 8004e4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e4e:	2b00      	cmp	r3, #0
 8004e50:	f43f af1d 	beq.w	8004c8e <_dtoa_r+0xb2e>
 8004e54:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004e56:	2c00      	cmp	r4, #0
 8004e58:	f77f aba8 	ble.w	80045ac <_dtoa_r+0x44c>
 8004e5c:	2200      	movs	r2, #0
 8004e5e:	4b45      	ldr	r3, [pc, #276]	; (8004f74 <_dtoa_r+0xe14>)
 8004e60:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e64:	f7fb fe68 	bl	8000b38 <__aeabi_dmul>
 8004e68:	e9cd 0100 	strd	r0, r1, [sp]
 8004e6c:	1c70      	adds	r0, r6, #1
 8004e6e:	f7fb fdf9 	bl	8000a64 <__aeabi_i2d>
 8004e72:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e76:	f7fb fe5f 	bl	8000b38 <__aeabi_dmul>
 8004e7a:	4b3f      	ldr	r3, [pc, #252]	; (8004f78 <_dtoa_r+0xe18>)
 8004e7c:	2200      	movs	r2, #0
 8004e7e:	f7fb fca5 	bl	80007cc <__adddf3>
 8004e82:	9b06      	ldr	r3, [sp, #24]
 8004e84:	9412      	str	r4, [sp, #72]	; 0x48
 8004e86:	3b01      	subs	r3, #1
 8004e88:	4606      	mov	r6, r0
 8004e8a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004e8e:	9316      	str	r3, [sp, #88]	; 0x58
 8004e90:	f7ff baf3 	b.w	800447a <_dtoa_r+0x31a>
 8004e94:	4651      	mov	r1, sl
 8004e96:	2201      	movs	r2, #1
 8004e98:	4648      	mov	r0, r9
 8004e9a:	f001 fa17 	bl	80062cc <__lshift>
 8004e9e:	4631      	mov	r1, r6
 8004ea0:	4682      	mov	sl, r0
 8004ea2:	f001 fa69 	bl	8006378 <__mcmp>
 8004ea6:	2800      	cmp	r0, #0
 8004ea8:	dd3b      	ble.n	8004f22 <_dtoa_r+0xdc2>
 8004eaa:	9b00      	ldr	r3, [sp, #0]
 8004eac:	2b39      	cmp	r3, #57	; 0x39
 8004eae:	d003      	beq.n	8004eb8 <_dtoa_r+0xd58>
 8004eb0:	9b02      	ldr	r3, [sp, #8]
 8004eb2:	3331      	adds	r3, #49	; 0x31
 8004eb4:	9300      	str	r3, [sp, #0]
 8004eb6:	e733      	b.n	8004d20 <_dtoa_r+0xbc0>
 8004eb8:	2239      	movs	r2, #57	; 0x39
 8004eba:	9502      	str	r5, [sp, #8]
 8004ebc:	703a      	strb	r2, [r7, #0]
 8004ebe:	4645      	mov	r5, r8
 8004ec0:	e58e      	b.n	80049e0 <_dtoa_r+0x880>
 8004ec2:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ec6:	2000      	movs	r0, #0
 8004ec8:	492c      	ldr	r1, [pc, #176]	; (8004f7c <_dtoa_r+0xe1c>)
 8004eca:	f7fb fc7d 	bl	80007c8 <__aeabi_dsub>
 8004ece:	4632      	mov	r2, r6
 8004ed0:	463b      	mov	r3, r7
 8004ed2:	f7fc f8c1 	bl	8001058 <__aeabi_dcmpgt>
 8004ed6:	b910      	cbnz	r0, 8004ede <_dtoa_r+0xd7e>
 8004ed8:	f7ff bb68 	b.w	80045ac <_dtoa_r+0x44c>
 8004edc:	4614      	mov	r4, r2
 8004ede:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004ee2:	2b30      	cmp	r3, #48	; 0x30
 8004ee4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004ee8:	d0f8      	beq.n	8004edc <_dtoa_r+0xd7c>
 8004eea:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004eec:	9306      	str	r3, [sp, #24]
 8004eee:	e58d      	b.n	8004a0c <_dtoa_r+0x8ac>
 8004ef0:	46d9      	mov	r9, fp
 8004ef2:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004ef6:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004efa:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004efc:	9306      	str	r3, [sp, #24]
 8004efe:	e404      	b.n	800470a <_dtoa_r+0x5aa>
 8004f00:	9b00      	ldr	r3, [sp, #0]
 8004f02:	2b39      	cmp	r3, #57	; 0x39
 8004f04:	4621      	mov	r1, r4
 8004f06:	4632      	mov	r2, r6
 8004f08:	f107 0401 	add.w	r4, r7, #1
 8004f0c:	465e      	mov	r6, fp
 8004f0e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f12:	d0d1      	beq.n	8004eb8 <_dtoa_r+0xd58>
 8004f14:	2a00      	cmp	r2, #0
 8004f16:	f77f af03 	ble.w	8004d20 <_dtoa_r+0xbc0>
 8004f1a:	460b      	mov	r3, r1
 8004f1c:	3331      	adds	r3, #49	; 0x31
 8004f1e:	9300      	str	r3, [sp, #0]
 8004f20:	e6fe      	b.n	8004d20 <_dtoa_r+0xbc0>
 8004f22:	f47f aefd 	bne.w	8004d20 <_dtoa_r+0xbc0>
 8004f26:	9b00      	ldr	r3, [sp, #0]
 8004f28:	07da      	lsls	r2, r3, #31
 8004f2a:	f57f aef9 	bpl.w	8004d20 <_dtoa_r+0xbc0>
 8004f2e:	e7bc      	b.n	8004eaa <_dtoa_r+0xd4a>
 8004f30:	4629      	mov	r1, r5
 8004f32:	2300      	movs	r3, #0
 8004f34:	220a      	movs	r2, #10
 8004f36:	4648      	mov	r0, r9
 8004f38:	f001 f838 	bl	8005fac <__multadd>
 8004f3c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f3e:	2b00      	cmp	r3, #0
 8004f40:	4605      	mov	r5, r0
 8004f42:	dd09      	ble.n	8004f58 <_dtoa_r+0xdf8>
 8004f44:	9309      	str	r3, [sp, #36]	; 0x24
 8004f46:	e484      	b.n	8004852 <_dtoa_r+0x6f2>
 8004f48:	9b02      	ldr	r3, [sp, #8]
 8004f4a:	2b02      	cmp	r3, #2
 8004f4c:	dc0e      	bgt.n	8004f6c <_dtoa_r+0xe0c>
 8004f4e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f50:	e507      	b.n	8004962 <_dtoa_r+0x802>
 8004f52:	2602      	movs	r6, #2
 8004f54:	f7ff ba70 	b.w	8004438 <_dtoa_r+0x2d8>
 8004f58:	9b02      	ldr	r3, [sp, #8]
 8004f5a:	2b02      	cmp	r3, #2
 8004f5c:	dc06      	bgt.n	8004f6c <_dtoa_r+0xe0c>
 8004f5e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f60:	e7f0      	b.n	8004f44 <_dtoa_r+0xde4>
 8004f62:	f43f ac59 	beq.w	8004818 <_dtoa_r+0x6b8>
 8004f66:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004f6a:	e450      	b.n	800480e <_dtoa_r+0x6ae>
 8004f6c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f6e:	9309      	str	r3, [sp, #36]	; 0x24
 8004f70:	e678      	b.n	8004c64 <_dtoa_r+0xb04>
 8004f72:	bf00      	nop
 8004f74:	40240000 	.word	0x40240000
 8004f78:	401c0000 	.word	0x401c0000
 8004f7c:	3fe00000 	.word	0x3fe00000

08004f80 <__sflush_r>:
 8004f80:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004f84:	b29a      	uxth	r2, r3
 8004f86:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004f8a:	460c      	mov	r4, r1
 8004f8c:	0711      	lsls	r1, r2, #28
 8004f8e:	4680      	mov	r8, r0
 8004f90:	d444      	bmi.n	800501c <__sflush_r+0x9c>
 8004f92:	6862      	ldr	r2, [r4, #4]
 8004f94:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004f98:	2a00      	cmp	r2, #0
 8004f9a:	81a3      	strh	r3, [r4, #12]
 8004f9c:	dd59      	ble.n	8005052 <__sflush_r+0xd2>
 8004f9e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004fa0:	2d00      	cmp	r5, #0
 8004fa2:	d053      	beq.n	800504c <__sflush_r+0xcc>
 8004fa4:	2200      	movs	r2, #0
 8004fa6:	b29b      	uxth	r3, r3
 8004fa8:	f8d8 6000 	ldr.w	r6, [r8]
 8004fac:	69e1      	ldr	r1, [r4, #28]
 8004fae:	f8c8 2000 	str.w	r2, [r8]
 8004fb2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004fb6:	f040 8083 	bne.w	80050c0 <__sflush_r+0x140>
 8004fba:	2301      	movs	r3, #1
 8004fbc:	4640      	mov	r0, r8
 8004fbe:	47a8      	blx	r5
 8004fc0:	1c42      	adds	r2, r0, #1
 8004fc2:	d04a      	beq.n	800505a <__sflush_r+0xda>
 8004fc4:	89a3      	ldrh	r3, [r4, #12]
 8004fc6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004fc8:	69e1      	ldr	r1, [r4, #28]
 8004fca:	075b      	lsls	r3, r3, #29
 8004fcc:	d505      	bpl.n	8004fda <__sflush_r+0x5a>
 8004fce:	6862      	ldr	r2, [r4, #4]
 8004fd0:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8004fd2:	1a80      	subs	r0, r0, r2
 8004fd4:	b10b      	cbz	r3, 8004fda <__sflush_r+0x5a>
 8004fd6:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8004fd8:	1ac0      	subs	r0, r0, r3
 8004fda:	4602      	mov	r2, r0
 8004fdc:	2300      	movs	r3, #0
 8004fde:	4640      	mov	r0, r8
 8004fe0:	47a8      	blx	r5
 8004fe2:	1c47      	adds	r7, r0, #1
 8004fe4:	d045      	beq.n	8005072 <__sflush_r+0xf2>
 8004fe6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004fea:	6922      	ldr	r2, [r4, #16]
 8004fec:	6022      	str	r2, [r4, #0]
 8004fee:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8004ff2:	2200      	movs	r2, #0
 8004ff4:	81a3      	strh	r3, [r4, #12]
 8004ff6:	04db      	lsls	r3, r3, #19
 8004ff8:	6062      	str	r2, [r4, #4]
 8004ffa:	d500      	bpl.n	8004ffe <__sflush_r+0x7e>
 8004ffc:	6520      	str	r0, [r4, #80]	; 0x50
 8004ffe:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005000:	f8c8 6000 	str.w	r6, [r8]
 8005004:	b311      	cbz	r1, 800504c <__sflush_r+0xcc>
 8005006:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800500a:	4299      	cmp	r1, r3
 800500c:	d002      	beq.n	8005014 <__sflush_r+0x94>
 800500e:	4640      	mov	r0, r8
 8005010:	f000 f95e 	bl	80052d0 <_free_r>
 8005014:	2000      	movs	r0, #0
 8005016:	6320      	str	r0, [r4, #48]	; 0x30
 8005018:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800501c:	6926      	ldr	r6, [r4, #16]
 800501e:	b1ae      	cbz	r6, 800504c <__sflush_r+0xcc>
 8005020:	6825      	ldr	r5, [r4, #0]
 8005022:	6026      	str	r6, [r4, #0]
 8005024:	0792      	lsls	r2, r2, #30
 8005026:	bf0c      	ite	eq
 8005028:	6963      	ldreq	r3, [r4, #20]
 800502a:	2300      	movne	r3, #0
 800502c:	1bad      	subs	r5, r5, r6
 800502e:	60a3      	str	r3, [r4, #8]
 8005030:	e00a      	b.n	8005048 <__sflush_r+0xc8>
 8005032:	462b      	mov	r3, r5
 8005034:	4632      	mov	r2, r6
 8005036:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005038:	69e1      	ldr	r1, [r4, #28]
 800503a:	4640      	mov	r0, r8
 800503c:	47b8      	blx	r7
 800503e:	2800      	cmp	r0, #0
 8005040:	eba5 0500 	sub.w	r5, r5, r0
 8005044:	4406      	add	r6, r0
 8005046:	dd2b      	ble.n	80050a0 <__sflush_r+0x120>
 8005048:	2d00      	cmp	r5, #0
 800504a:	dcf2      	bgt.n	8005032 <__sflush_r+0xb2>
 800504c:	2000      	movs	r0, #0
 800504e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005052:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005054:	2a00      	cmp	r2, #0
 8005056:	dca2      	bgt.n	8004f9e <__sflush_r+0x1e>
 8005058:	e7f8      	b.n	800504c <__sflush_r+0xcc>
 800505a:	f8d8 3000 	ldr.w	r3, [r8]
 800505e:	2b00      	cmp	r3, #0
 8005060:	d0b0      	beq.n	8004fc4 <__sflush_r+0x44>
 8005062:	2b1d      	cmp	r3, #29
 8005064:	d001      	beq.n	800506a <__sflush_r+0xea>
 8005066:	2b16      	cmp	r3, #22
 8005068:	d12c      	bne.n	80050c4 <__sflush_r+0x144>
 800506a:	f8c8 6000 	str.w	r6, [r8]
 800506e:	2000      	movs	r0, #0
 8005070:	e7ed      	b.n	800504e <__sflush_r+0xce>
 8005072:	f8d8 1000 	ldr.w	r1, [r8]
 8005076:	291d      	cmp	r1, #29
 8005078:	d81a      	bhi.n	80050b0 <__sflush_r+0x130>
 800507a:	4b15      	ldr	r3, [pc, #84]	; (80050d0 <__sflush_r+0x150>)
 800507c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005080:	40cb      	lsrs	r3, r1
 8005082:	43db      	mvns	r3, r3
 8005084:	f013 0301 	ands.w	r3, r3, #1
 8005088:	d114      	bne.n	80050b4 <__sflush_r+0x134>
 800508a:	6925      	ldr	r5, [r4, #16]
 800508c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005090:	e9c4 5300 	strd	r5, r3, [r4]
 8005094:	04d5      	lsls	r5, r2, #19
 8005096:	81a2      	strh	r2, [r4, #12]
 8005098:	d5b1      	bpl.n	8004ffe <__sflush_r+0x7e>
 800509a:	2900      	cmp	r1, #0
 800509c:	d1af      	bne.n	8004ffe <__sflush_r+0x7e>
 800509e:	e7ad      	b.n	8004ffc <__sflush_r+0x7c>
 80050a0:	89a3      	ldrh	r3, [r4, #12]
 80050a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80050a6:	81a3      	strh	r3, [r4, #12]
 80050a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050ac:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80050b0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80050b4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80050b8:	81a2      	strh	r2, [r4, #12]
 80050ba:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050be:	e7c6      	b.n	800504e <__sflush_r+0xce>
 80050c0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80050c2:	e782      	b.n	8004fca <__sflush_r+0x4a>
 80050c4:	89a3      	ldrh	r3, [r4, #12]
 80050c6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80050ca:	81a3      	strh	r3, [r4, #12]
 80050cc:	e7bf      	b.n	800504e <__sflush_r+0xce>
 80050ce:	bf00      	nop
 80050d0:	20400001 	.word	0x20400001

080050d4 <_fflush_r>:
 80050d4:	b538      	push	{r3, r4, r5, lr}
 80050d6:	460d      	mov	r5, r1
 80050d8:	4604      	mov	r4, r0
 80050da:	b108      	cbz	r0, 80050e0 <_fflush_r+0xc>
 80050dc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80050de:	b1a3      	cbz	r3, 800510a <_fflush_r+0x36>
 80050e0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80050e4:	b1b8      	cbz	r0, 8005116 <_fflush_r+0x42>
 80050e6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80050e8:	07db      	lsls	r3, r3, #31
 80050ea:	d401      	bmi.n	80050f0 <_fflush_r+0x1c>
 80050ec:	0581      	lsls	r1, r0, #22
 80050ee:	d51a      	bpl.n	8005126 <_fflush_r+0x52>
 80050f0:	4620      	mov	r0, r4
 80050f2:	4629      	mov	r1, r5
 80050f4:	f7ff ff44 	bl	8004f80 <__sflush_r>
 80050f8:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80050fa:	07da      	lsls	r2, r3, #31
 80050fc:	4604      	mov	r4, r0
 80050fe:	d402      	bmi.n	8005106 <_fflush_r+0x32>
 8005100:	89ab      	ldrh	r3, [r5, #12]
 8005102:	059b      	lsls	r3, r3, #22
 8005104:	d50a      	bpl.n	800511c <_fflush_r+0x48>
 8005106:	4620      	mov	r0, r4
 8005108:	bd38      	pop	{r3, r4, r5, pc}
 800510a:	f000 f83f 	bl	800518c <__sinit>
 800510e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005112:	2800      	cmp	r0, #0
 8005114:	d1e7      	bne.n	80050e6 <_fflush_r+0x12>
 8005116:	4604      	mov	r4, r0
 8005118:	4620      	mov	r0, r4
 800511a:	bd38      	pop	{r3, r4, r5, pc}
 800511c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800511e:	f000 fb87 	bl	8005830 <__retarget_lock_release_recursive>
 8005122:	4620      	mov	r0, r4
 8005124:	bd38      	pop	{r3, r4, r5, pc}
 8005126:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005128:	f000 fb80 	bl	800582c <__retarget_lock_acquire_recursive>
 800512c:	e7e0      	b.n	80050f0 <_fflush_r+0x1c>
 800512e:	bf00      	nop

08005130 <std>:
 8005130:	b510      	push	{r4, lr}
 8005132:	2300      	movs	r3, #0
 8005134:	4604      	mov	r4, r0
 8005136:	8181      	strh	r1, [r0, #12]
 8005138:	81c2      	strh	r2, [r0, #14]
 800513a:	e9c0 3300 	strd	r3, r3, [r0]
 800513e:	6083      	str	r3, [r0, #8]
 8005140:	6643      	str	r3, [r0, #100]	; 0x64
 8005142:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005146:	6183      	str	r3, [r0, #24]
 8005148:	4619      	mov	r1, r3
 800514a:	2208      	movs	r2, #8
 800514c:	305c      	adds	r0, #92	; 0x5c
 800514e:	f7fd f8c9 	bl	80022e4 <memset>
 8005152:	4807      	ldr	r0, [pc, #28]	; (8005170 <std+0x40>)
 8005154:	4907      	ldr	r1, [pc, #28]	; (8005174 <std+0x44>)
 8005156:	4a08      	ldr	r2, [pc, #32]	; (8005178 <std+0x48>)
 8005158:	4b08      	ldr	r3, [pc, #32]	; (800517c <std+0x4c>)
 800515a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800515c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005160:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005164:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005168:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800516c:	f000 bb5a 	b.w	8005824 <__retarget_lock_init_recursive>
 8005170:	08006949 	.word	0x08006949
 8005174:	0800696d 	.word	0x0800696d
 8005178:	080069a9 	.word	0x080069a9
 800517c:	080069c9 	.word	0x080069c9

08005180 <_cleanup_r>:
 8005180:	4901      	ldr	r1, [pc, #4]	; (8005188 <_cleanup_r+0x8>)
 8005182:	f000 bb17 	b.w	80057b4 <_fwalk_reent>
 8005186:	bf00      	nop
 8005188:	08006c39 	.word	0x08006c39

0800518c <__sinit>:
 800518c:	b510      	push	{r4, lr}
 800518e:	4604      	mov	r4, r0
 8005190:	4812      	ldr	r0, [pc, #72]	; (80051dc <__sinit+0x50>)
 8005192:	f000 fb4b 	bl	800582c <__retarget_lock_acquire_recursive>
 8005196:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005198:	b9d2      	cbnz	r2, 80051d0 <__sinit+0x44>
 800519a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800519e:	4810      	ldr	r0, [pc, #64]	; (80051e0 <__sinit+0x54>)
 80051a0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80051a4:	2103      	movs	r1, #3
 80051a6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80051aa:	63e0      	str	r0, [r4, #60]	; 0x3c
 80051ac:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80051b0:	6860      	ldr	r0, [r4, #4]
 80051b2:	2104      	movs	r1, #4
 80051b4:	f7ff ffbc 	bl	8005130 <std>
 80051b8:	2201      	movs	r2, #1
 80051ba:	2109      	movs	r1, #9
 80051bc:	68a0      	ldr	r0, [r4, #8]
 80051be:	f7ff ffb7 	bl	8005130 <std>
 80051c2:	2202      	movs	r2, #2
 80051c4:	2112      	movs	r1, #18
 80051c6:	68e0      	ldr	r0, [r4, #12]
 80051c8:	f7ff ffb2 	bl	8005130 <std>
 80051cc:	2301      	movs	r3, #1
 80051ce:	63a3      	str	r3, [r4, #56]	; 0x38
 80051d0:	4802      	ldr	r0, [pc, #8]	; (80051dc <__sinit+0x50>)
 80051d2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80051d6:	f000 bb2b 	b.w	8005830 <__retarget_lock_release_recursive>
 80051da:	bf00      	nop
 80051dc:	20000df8 	.word	0x20000df8
 80051e0:	08005181 	.word	0x08005181

080051e4 <__sfp_lock_acquire>:
 80051e4:	4801      	ldr	r0, [pc, #4]	; (80051ec <__sfp_lock_acquire+0x8>)
 80051e6:	f000 bb21 	b.w	800582c <__retarget_lock_acquire_recursive>
 80051ea:	bf00      	nop
 80051ec:	20000e0c 	.word	0x20000e0c

080051f0 <__sfp_lock_release>:
 80051f0:	4801      	ldr	r0, [pc, #4]	; (80051f8 <__sfp_lock_release+0x8>)
 80051f2:	f000 bb1d 	b.w	8005830 <__retarget_lock_release_recursive>
 80051f6:	bf00      	nop
 80051f8:	20000e0c 	.word	0x20000e0c

080051fc <__libc_fini_array>:
 80051fc:	b538      	push	{r3, r4, r5, lr}
 80051fe:	4c0a      	ldr	r4, [pc, #40]	; (8005228 <__libc_fini_array+0x2c>)
 8005200:	4d0a      	ldr	r5, [pc, #40]	; (800522c <__libc_fini_array+0x30>)
 8005202:	1b64      	subs	r4, r4, r5
 8005204:	10a4      	asrs	r4, r4, #2
 8005206:	d00a      	beq.n	800521e <__libc_fini_array+0x22>
 8005208:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800520c:	3b01      	subs	r3, #1
 800520e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005212:	3c01      	subs	r4, #1
 8005214:	f855 3904 	ldr.w	r3, [r5], #-4
 8005218:	4798      	blx	r3
 800521a:	2c00      	cmp	r4, #0
 800521c:	d1f9      	bne.n	8005212 <__libc_fini_array+0x16>
 800521e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005222:	f001 befd 	b.w	8007020 <_fini>
 8005226:	bf00      	nop
 8005228:	080074fc 	.word	0x080074fc
 800522c:	080074f8 	.word	0x080074f8

08005230 <_malloc_trim_r>:
 8005230:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005232:	4f24      	ldr	r7, [pc, #144]	; (80052c4 <_malloc_trim_r+0x94>)
 8005234:	460c      	mov	r4, r1
 8005236:	4606      	mov	r6, r0
 8005238:	f000 fe7c 	bl	8005f34 <__malloc_lock>
 800523c:	68bb      	ldr	r3, [r7, #8]
 800523e:	685d      	ldr	r5, [r3, #4]
 8005240:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005244:	310f      	adds	r1, #15
 8005246:	f025 0503 	bic.w	r5, r5, #3
 800524a:	4429      	add	r1, r5
 800524c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005250:	f021 010f 	bic.w	r1, r1, #15
 8005254:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005258:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800525c:	db07      	blt.n	800526e <_malloc_trim_r+0x3e>
 800525e:	2100      	movs	r1, #0
 8005260:	4630      	mov	r0, r6
 8005262:	f001 fb5f 	bl	8006924 <_sbrk_r>
 8005266:	68bb      	ldr	r3, [r7, #8]
 8005268:	442b      	add	r3, r5
 800526a:	4298      	cmp	r0, r3
 800526c:	d004      	beq.n	8005278 <_malloc_trim_r+0x48>
 800526e:	4630      	mov	r0, r6
 8005270:	f000 fe66 	bl	8005f40 <__malloc_unlock>
 8005274:	2000      	movs	r0, #0
 8005276:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005278:	4261      	negs	r1, r4
 800527a:	4630      	mov	r0, r6
 800527c:	f001 fb52 	bl	8006924 <_sbrk_r>
 8005280:	3001      	adds	r0, #1
 8005282:	d00d      	beq.n	80052a0 <_malloc_trim_r+0x70>
 8005284:	4b10      	ldr	r3, [pc, #64]	; (80052c8 <_malloc_trim_r+0x98>)
 8005286:	68ba      	ldr	r2, [r7, #8]
 8005288:	6819      	ldr	r1, [r3, #0]
 800528a:	1b2d      	subs	r5, r5, r4
 800528c:	f045 0501 	orr.w	r5, r5, #1
 8005290:	4630      	mov	r0, r6
 8005292:	1b09      	subs	r1, r1, r4
 8005294:	6055      	str	r5, [r2, #4]
 8005296:	6019      	str	r1, [r3, #0]
 8005298:	f000 fe52 	bl	8005f40 <__malloc_unlock>
 800529c:	2001      	movs	r0, #1
 800529e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80052a0:	2100      	movs	r1, #0
 80052a2:	4630      	mov	r0, r6
 80052a4:	f001 fb3e 	bl	8006924 <_sbrk_r>
 80052a8:	68ba      	ldr	r2, [r7, #8]
 80052aa:	1a83      	subs	r3, r0, r2
 80052ac:	2b0f      	cmp	r3, #15
 80052ae:	ddde      	ble.n	800526e <_malloc_trim_r+0x3e>
 80052b0:	4c06      	ldr	r4, [pc, #24]	; (80052cc <_malloc_trim_r+0x9c>)
 80052b2:	4905      	ldr	r1, [pc, #20]	; (80052c8 <_malloc_trim_r+0x98>)
 80052b4:	6824      	ldr	r4, [r4, #0]
 80052b6:	f043 0301 	orr.w	r3, r3, #1
 80052ba:	1b00      	subs	r0, r0, r4
 80052bc:	6053      	str	r3, [r2, #4]
 80052be:	6008      	str	r0, [r1, #0]
 80052c0:	e7d5      	b.n	800526e <_malloc_trim_r+0x3e>
 80052c2:	bf00      	nop
 80052c4:	2000044c 	.word	0x2000044c
 80052c8:	20000d70 	.word	0x20000d70
 80052cc:	20000854 	.word	0x20000854

080052d0 <_free_r>:
 80052d0:	2900      	cmp	r1, #0
 80052d2:	d053      	beq.n	800537c <_free_r+0xac>
 80052d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80052d6:	460c      	mov	r4, r1
 80052d8:	4606      	mov	r6, r0
 80052da:	f000 fe2b 	bl	8005f34 <__malloc_lock>
 80052de:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80052e2:	4f71      	ldr	r7, [pc, #452]	; (80054a8 <_free_r+0x1d8>)
 80052e4:	f02c 0101 	bic.w	r1, ip, #1
 80052e8:	f1a4 0508 	sub.w	r5, r4, #8
 80052ec:	186b      	adds	r3, r5, r1
 80052ee:	68b8      	ldr	r0, [r7, #8]
 80052f0:	685a      	ldr	r2, [r3, #4]
 80052f2:	4298      	cmp	r0, r3
 80052f4:	f022 0203 	bic.w	r2, r2, #3
 80052f8:	d053      	beq.n	80053a2 <_free_r+0xd2>
 80052fa:	f01c 0f01 	tst.w	ip, #1
 80052fe:	605a      	str	r2, [r3, #4]
 8005300:	eb03 0002 	add.w	r0, r3, r2
 8005304:	d13b      	bne.n	800537e <_free_r+0xae>
 8005306:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800530a:	6840      	ldr	r0, [r0, #4]
 800530c:	eba5 050c 	sub.w	r5, r5, ip
 8005310:	f107 0e08 	add.w	lr, r7, #8
 8005314:	68ac      	ldr	r4, [r5, #8]
 8005316:	4574      	cmp	r4, lr
 8005318:	4461      	add	r1, ip
 800531a:	f000 0001 	and.w	r0, r0, #1
 800531e:	d075      	beq.n	800540c <_free_r+0x13c>
 8005320:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005324:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005328:	f8cc 4008 	str.w	r4, [ip, #8]
 800532c:	b360      	cbz	r0, 8005388 <_free_r+0xb8>
 800532e:	f041 0301 	orr.w	r3, r1, #1
 8005332:	606b      	str	r3, [r5, #4]
 8005334:	5069      	str	r1, [r5, r1]
 8005336:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800533a:	d350      	bcc.n	80053de <_free_r+0x10e>
 800533c:	0a4b      	lsrs	r3, r1, #9
 800533e:	2b04      	cmp	r3, #4
 8005340:	d870      	bhi.n	8005424 <_free_r+0x154>
 8005342:	098b      	lsrs	r3, r1, #6
 8005344:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005348:	00e4      	lsls	r4, r4, #3
 800534a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800534e:	1938      	adds	r0, r7, r4
 8005350:	593b      	ldr	r3, [r7, r4]
 8005352:	3808      	subs	r0, #8
 8005354:	4298      	cmp	r0, r3
 8005356:	d078      	beq.n	800544a <_free_r+0x17a>
 8005358:	685a      	ldr	r2, [r3, #4]
 800535a:	f022 0203 	bic.w	r2, r2, #3
 800535e:	428a      	cmp	r2, r1
 8005360:	d971      	bls.n	8005446 <_free_r+0x176>
 8005362:	689b      	ldr	r3, [r3, #8]
 8005364:	4298      	cmp	r0, r3
 8005366:	d1f7      	bne.n	8005358 <_free_r+0x88>
 8005368:	68c3      	ldr	r3, [r0, #12]
 800536a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800536e:	609d      	str	r5, [r3, #8]
 8005370:	60c5      	str	r5, [r0, #12]
 8005372:	4630      	mov	r0, r6
 8005374:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005378:	f000 bde2 	b.w	8005f40 <__malloc_unlock>
 800537c:	4770      	bx	lr
 800537e:	6840      	ldr	r0, [r0, #4]
 8005380:	f000 0001 	and.w	r0, r0, #1
 8005384:	2800      	cmp	r0, #0
 8005386:	d1d2      	bne.n	800532e <_free_r+0x5e>
 8005388:	6898      	ldr	r0, [r3, #8]
 800538a:	4c48      	ldr	r4, [pc, #288]	; (80054ac <_free_r+0x1dc>)
 800538c:	4411      	add	r1, r2
 800538e:	42a0      	cmp	r0, r4
 8005390:	f041 0201 	orr.w	r2, r1, #1
 8005394:	d062      	beq.n	800545c <_free_r+0x18c>
 8005396:	68db      	ldr	r3, [r3, #12]
 8005398:	60c3      	str	r3, [r0, #12]
 800539a:	6098      	str	r0, [r3, #8]
 800539c:	606a      	str	r2, [r5, #4]
 800539e:	5069      	str	r1, [r5, r1]
 80053a0:	e7c9      	b.n	8005336 <_free_r+0x66>
 80053a2:	f01c 0f01 	tst.w	ip, #1
 80053a6:	440a      	add	r2, r1
 80053a8:	d107      	bne.n	80053ba <_free_r+0xea>
 80053aa:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80053ae:	1aed      	subs	r5, r5, r3
 80053b0:	441a      	add	r2, r3
 80053b2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80053b6:	60cb      	str	r3, [r1, #12]
 80053b8:	6099      	str	r1, [r3, #8]
 80053ba:	4b3d      	ldr	r3, [pc, #244]	; (80054b0 <_free_r+0x1e0>)
 80053bc:	681b      	ldr	r3, [r3, #0]
 80053be:	f042 0101 	orr.w	r1, r2, #1
 80053c2:	4293      	cmp	r3, r2
 80053c4:	6069      	str	r1, [r5, #4]
 80053c6:	60bd      	str	r5, [r7, #8]
 80053c8:	d804      	bhi.n	80053d4 <_free_r+0x104>
 80053ca:	4b3a      	ldr	r3, [pc, #232]	; (80054b4 <_free_r+0x1e4>)
 80053cc:	4630      	mov	r0, r6
 80053ce:	6819      	ldr	r1, [r3, #0]
 80053d0:	f7ff ff2e 	bl	8005230 <_malloc_trim_r>
 80053d4:	4630      	mov	r0, r6
 80053d6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80053da:	f000 bdb1 	b.w	8005f40 <__malloc_unlock>
 80053de:	08c9      	lsrs	r1, r1, #3
 80053e0:	6878      	ldr	r0, [r7, #4]
 80053e2:	1c4a      	adds	r2, r1, #1
 80053e4:	2301      	movs	r3, #1
 80053e6:	1089      	asrs	r1, r1, #2
 80053e8:	408b      	lsls	r3, r1
 80053ea:	4303      	orrs	r3, r0
 80053ec:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80053f0:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80053f4:	607b      	str	r3, [r7, #4]
 80053f6:	3908      	subs	r1, #8
 80053f8:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80053fc:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005400:	60c5      	str	r5, [r0, #12]
 8005402:	4630      	mov	r0, r6
 8005404:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005408:	f000 bd9a 	b.w	8005f40 <__malloc_unlock>
 800540c:	2800      	cmp	r0, #0
 800540e:	d145      	bne.n	800549c <_free_r+0x1cc>
 8005410:	440a      	add	r2, r1
 8005412:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005416:	f042 0001 	orr.w	r0, r2, #1
 800541a:	60cb      	str	r3, [r1, #12]
 800541c:	6099      	str	r1, [r3, #8]
 800541e:	6068      	str	r0, [r5, #4]
 8005420:	50aa      	str	r2, [r5, r2]
 8005422:	e7d7      	b.n	80053d4 <_free_r+0x104>
 8005424:	2b14      	cmp	r3, #20
 8005426:	d908      	bls.n	800543a <_free_r+0x16a>
 8005428:	2b54      	cmp	r3, #84	; 0x54
 800542a:	d81e      	bhi.n	800546a <_free_r+0x19a>
 800542c:	0b0b      	lsrs	r3, r1, #12
 800542e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005432:	00e4      	lsls	r4, r4, #3
 8005434:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005438:	e789      	b.n	800534e <_free_r+0x7e>
 800543a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800543e:	00e4      	lsls	r4, r4, #3
 8005440:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005444:	e783      	b.n	800534e <_free_r+0x7e>
 8005446:	4618      	mov	r0, r3
 8005448:	e78e      	b.n	8005368 <_free_r+0x98>
 800544a:	1093      	asrs	r3, r2, #2
 800544c:	6879      	ldr	r1, [r7, #4]
 800544e:	2201      	movs	r2, #1
 8005450:	fa02 f303 	lsl.w	r3, r2, r3
 8005454:	430b      	orrs	r3, r1
 8005456:	607b      	str	r3, [r7, #4]
 8005458:	4603      	mov	r3, r0
 800545a:	e786      	b.n	800536a <_free_r+0x9a>
 800545c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005460:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005464:	606a      	str	r2, [r5, #4]
 8005466:	5069      	str	r1, [r5, r1]
 8005468:	e7b4      	b.n	80053d4 <_free_r+0x104>
 800546a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800546e:	d806      	bhi.n	800547e <_free_r+0x1ae>
 8005470:	0bcb      	lsrs	r3, r1, #15
 8005472:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005476:	00e4      	lsls	r4, r4, #3
 8005478:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800547c:	e767      	b.n	800534e <_free_r+0x7e>
 800547e:	f240 5254 	movw	r2, #1364	; 0x554
 8005482:	4293      	cmp	r3, r2
 8005484:	d806      	bhi.n	8005494 <_free_r+0x1c4>
 8005486:	0c8b      	lsrs	r3, r1, #18
 8005488:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800548c:	00e4      	lsls	r4, r4, #3
 800548e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005492:	e75c      	b.n	800534e <_free_r+0x7e>
 8005494:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005498:	227e      	movs	r2, #126	; 0x7e
 800549a:	e758      	b.n	800534e <_free_r+0x7e>
 800549c:	f041 0201 	orr.w	r2, r1, #1
 80054a0:	606a      	str	r2, [r5, #4]
 80054a2:	6019      	str	r1, [r3, #0]
 80054a4:	e796      	b.n	80053d4 <_free_r+0x104>
 80054a6:	bf00      	nop
 80054a8:	2000044c 	.word	0x2000044c
 80054ac:	20000454 	.word	0x20000454
 80054b0:	20000858 	.word	0x20000858
 80054b4:	20000da0 	.word	0x20000da0

080054b8 <__sfvwrite_r>:
 80054b8:	6893      	ldr	r3, [r2, #8]
 80054ba:	2b00      	cmp	r3, #0
 80054bc:	f000 80e4 	beq.w	8005688 <__sfvwrite_r+0x1d0>
 80054c0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80054c4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80054c8:	b29b      	uxth	r3, r3
 80054ca:	460c      	mov	r4, r1
 80054cc:	0719      	lsls	r1, r3, #28
 80054ce:	b083      	sub	sp, #12
 80054d0:	4682      	mov	sl, r0
 80054d2:	4690      	mov	r8, r2
 80054d4:	d535      	bpl.n	8005542 <__sfvwrite_r+0x8a>
 80054d6:	6922      	ldr	r2, [r4, #16]
 80054d8:	b39a      	cbz	r2, 8005542 <__sfvwrite_r+0x8a>
 80054da:	f013 0202 	ands.w	r2, r3, #2
 80054de:	f8d8 6000 	ldr.w	r6, [r8]
 80054e2:	d03d      	beq.n	8005560 <__sfvwrite_r+0xa8>
 80054e4:	2700      	movs	r7, #0
 80054e6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80054ea:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80054ee:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80057b0 <__sfvwrite_r+0x2f8>
 80054f2:	463d      	mov	r5, r7
 80054f4:	454d      	cmp	r5, r9
 80054f6:	462b      	mov	r3, r5
 80054f8:	463a      	mov	r2, r7
 80054fa:	bf28      	it	cs
 80054fc:	464b      	movcs	r3, r9
 80054fe:	4661      	mov	r1, ip
 8005500:	4650      	mov	r0, sl
 8005502:	b1d5      	cbz	r5, 800553a <__sfvwrite_r+0x82>
 8005504:	47d8      	blx	fp
 8005506:	2800      	cmp	r0, #0
 8005508:	f340 80c6 	ble.w	8005698 <__sfvwrite_r+0x1e0>
 800550c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005510:	1a1b      	subs	r3, r3, r0
 8005512:	4407      	add	r7, r0
 8005514:	1a2d      	subs	r5, r5, r0
 8005516:	f8c8 3008 	str.w	r3, [r8, #8]
 800551a:	2b00      	cmp	r3, #0
 800551c:	f000 80b0 	beq.w	8005680 <__sfvwrite_r+0x1c8>
 8005520:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005524:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005528:	454d      	cmp	r5, r9
 800552a:	462b      	mov	r3, r5
 800552c:	463a      	mov	r2, r7
 800552e:	bf28      	it	cs
 8005530:	464b      	movcs	r3, r9
 8005532:	4661      	mov	r1, ip
 8005534:	4650      	mov	r0, sl
 8005536:	2d00      	cmp	r5, #0
 8005538:	d1e4      	bne.n	8005504 <__sfvwrite_r+0x4c>
 800553a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800553e:	3608      	adds	r6, #8
 8005540:	e7d8      	b.n	80054f4 <__sfvwrite_r+0x3c>
 8005542:	4621      	mov	r1, r4
 8005544:	4650      	mov	r0, sl
 8005546:	f7fe fd03 	bl	8003f50 <__swsetup_r>
 800554a:	2800      	cmp	r0, #0
 800554c:	f040 812a 	bne.w	80057a4 <__sfvwrite_r+0x2ec>
 8005550:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005554:	f8d8 6000 	ldr.w	r6, [r8]
 8005558:	b29b      	uxth	r3, r3
 800555a:	f013 0202 	ands.w	r2, r3, #2
 800555e:	d1c1      	bne.n	80054e4 <__sfvwrite_r+0x2c>
 8005560:	f013 0901 	ands.w	r9, r3, #1
 8005564:	d15d      	bne.n	8005622 <__sfvwrite_r+0x16a>
 8005566:	68a7      	ldr	r7, [r4, #8]
 8005568:	6820      	ldr	r0, [r4, #0]
 800556a:	464d      	mov	r5, r9
 800556c:	2d00      	cmp	r5, #0
 800556e:	d054      	beq.n	800561a <__sfvwrite_r+0x162>
 8005570:	059a      	lsls	r2, r3, #22
 8005572:	f140 809b 	bpl.w	80056ac <__sfvwrite_r+0x1f4>
 8005576:	42af      	cmp	r7, r5
 8005578:	46bb      	mov	fp, r7
 800557a:	f200 80d8 	bhi.w	800572e <__sfvwrite_r+0x276>
 800557e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005582:	d02f      	beq.n	80055e4 <__sfvwrite_r+0x12c>
 8005584:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005588:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800558c:	eba0 0b01 	sub.w	fp, r0, r1
 8005590:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005594:	1c68      	adds	r0, r5, #1
 8005596:	107f      	asrs	r7, r7, #1
 8005598:	4458      	add	r0, fp
 800559a:	42b8      	cmp	r0, r7
 800559c:	463a      	mov	r2, r7
 800559e:	bf84      	itt	hi
 80055a0:	4607      	movhi	r7, r0
 80055a2:	463a      	movhi	r2, r7
 80055a4:	055b      	lsls	r3, r3, #21
 80055a6:	f140 80d3 	bpl.w	8005750 <__sfvwrite_r+0x298>
 80055aa:	4611      	mov	r1, r2
 80055ac:	4650      	mov	r0, sl
 80055ae:	f000 f9b9 	bl	8005924 <_malloc_r>
 80055b2:	2800      	cmp	r0, #0
 80055b4:	f000 80f0 	beq.w	8005798 <__sfvwrite_r+0x2e0>
 80055b8:	465a      	mov	r2, fp
 80055ba:	6921      	ldr	r1, [r4, #16]
 80055bc:	9001      	str	r0, [sp, #4]
 80055be:	f7fa ff9f 	bl	8000500 <memcpy>
 80055c2:	89a2      	ldrh	r2, [r4, #12]
 80055c4:	9b01      	ldr	r3, [sp, #4]
 80055c6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80055ca:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80055ce:	81a2      	strh	r2, [r4, #12]
 80055d0:	eba7 020b 	sub.w	r2, r7, fp
 80055d4:	eb03 000b 	add.w	r0, r3, fp
 80055d8:	6167      	str	r7, [r4, #20]
 80055da:	6123      	str	r3, [r4, #16]
 80055dc:	6020      	str	r0, [r4, #0]
 80055de:	60a2      	str	r2, [r4, #8]
 80055e0:	462f      	mov	r7, r5
 80055e2:	46ab      	mov	fp, r5
 80055e4:	465a      	mov	r2, fp
 80055e6:	4649      	mov	r1, r9
 80055e8:	f000 fc40 	bl	8005e6c <memmove>
 80055ec:	68a2      	ldr	r2, [r4, #8]
 80055ee:	6823      	ldr	r3, [r4, #0]
 80055f0:	1bd2      	subs	r2, r2, r7
 80055f2:	445b      	add	r3, fp
 80055f4:	462f      	mov	r7, r5
 80055f6:	60a2      	str	r2, [r4, #8]
 80055f8:	6023      	str	r3, [r4, #0]
 80055fa:	2500      	movs	r5, #0
 80055fc:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005600:	1bdb      	subs	r3, r3, r7
 8005602:	44b9      	add	r9, r7
 8005604:	f8c8 3008 	str.w	r3, [r8, #8]
 8005608:	2b00      	cmp	r3, #0
 800560a:	d039      	beq.n	8005680 <__sfvwrite_r+0x1c8>
 800560c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005610:	68a7      	ldr	r7, [r4, #8]
 8005612:	6820      	ldr	r0, [r4, #0]
 8005614:	b29b      	uxth	r3, r3
 8005616:	2d00      	cmp	r5, #0
 8005618:	d1aa      	bne.n	8005570 <__sfvwrite_r+0xb8>
 800561a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800561e:	3608      	adds	r6, #8
 8005620:	e7a4      	b.n	800556c <__sfvwrite_r+0xb4>
 8005622:	4633      	mov	r3, r6
 8005624:	4691      	mov	r9, r2
 8005626:	4610      	mov	r0, r2
 8005628:	4617      	mov	r7, r2
 800562a:	464e      	mov	r6, r9
 800562c:	469b      	mov	fp, r3
 800562e:	2f00      	cmp	r7, #0
 8005630:	d06b      	beq.n	800570a <__sfvwrite_r+0x252>
 8005632:	2800      	cmp	r0, #0
 8005634:	d071      	beq.n	800571a <__sfvwrite_r+0x262>
 8005636:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800563a:	6820      	ldr	r0, [r4, #0]
 800563c:	45b9      	cmp	r9, r7
 800563e:	464b      	mov	r3, r9
 8005640:	bf28      	it	cs
 8005642:	463b      	movcs	r3, r7
 8005644:	4288      	cmp	r0, r1
 8005646:	d903      	bls.n	8005650 <__sfvwrite_r+0x198>
 8005648:	68a5      	ldr	r5, [r4, #8]
 800564a:	4415      	add	r5, r2
 800564c:	42ab      	cmp	r3, r5
 800564e:	dc71      	bgt.n	8005734 <__sfvwrite_r+0x27c>
 8005650:	429a      	cmp	r2, r3
 8005652:	f300 8093 	bgt.w	800577c <__sfvwrite_r+0x2c4>
 8005656:	4613      	mov	r3, r2
 8005658:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800565a:	69e1      	ldr	r1, [r4, #28]
 800565c:	4632      	mov	r2, r6
 800565e:	4650      	mov	r0, sl
 8005660:	47a8      	blx	r5
 8005662:	1e05      	subs	r5, r0, #0
 8005664:	dd18      	ble.n	8005698 <__sfvwrite_r+0x1e0>
 8005666:	ebb9 0905 	subs.w	r9, r9, r5
 800566a:	d00f      	beq.n	800568c <__sfvwrite_r+0x1d4>
 800566c:	2001      	movs	r0, #1
 800566e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005672:	1b5b      	subs	r3, r3, r5
 8005674:	442e      	add	r6, r5
 8005676:	1b7f      	subs	r7, r7, r5
 8005678:	f8c8 3008 	str.w	r3, [r8, #8]
 800567c:	2b00      	cmp	r3, #0
 800567e:	d1d6      	bne.n	800562e <__sfvwrite_r+0x176>
 8005680:	2000      	movs	r0, #0
 8005682:	b003      	add	sp, #12
 8005684:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005688:	2000      	movs	r0, #0
 800568a:	4770      	bx	lr
 800568c:	4621      	mov	r1, r4
 800568e:	4650      	mov	r0, sl
 8005690:	f7ff fd20 	bl	80050d4 <_fflush_r>
 8005694:	2800      	cmp	r0, #0
 8005696:	d0ea      	beq.n	800566e <__sfvwrite_r+0x1b6>
 8005698:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800569c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056a0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056a4:	81a3      	strh	r3, [r4, #12]
 80056a6:	b003      	add	sp, #12
 80056a8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056ac:	6923      	ldr	r3, [r4, #16]
 80056ae:	4283      	cmp	r3, r0
 80056b0:	d315      	bcc.n	80056de <__sfvwrite_r+0x226>
 80056b2:	6961      	ldr	r1, [r4, #20]
 80056b4:	42a9      	cmp	r1, r5
 80056b6:	d812      	bhi.n	80056de <__sfvwrite_r+0x226>
 80056b8:	4b3c      	ldr	r3, [pc, #240]	; (80057ac <__sfvwrite_r+0x2f4>)
 80056ba:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80056bc:	429d      	cmp	r5, r3
 80056be:	bf94      	ite	ls
 80056c0:	462b      	movls	r3, r5
 80056c2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80056c6:	464a      	mov	r2, r9
 80056c8:	fb93 f3f1 	sdiv	r3, r3, r1
 80056cc:	4650      	mov	r0, sl
 80056ce:	fb01 f303 	mul.w	r3, r1, r3
 80056d2:	69e1      	ldr	r1, [r4, #28]
 80056d4:	47b8      	blx	r7
 80056d6:	1e07      	subs	r7, r0, #0
 80056d8:	ddde      	ble.n	8005698 <__sfvwrite_r+0x1e0>
 80056da:	1bed      	subs	r5, r5, r7
 80056dc:	e78e      	b.n	80055fc <__sfvwrite_r+0x144>
 80056de:	42af      	cmp	r7, r5
 80056e0:	bf28      	it	cs
 80056e2:	462f      	movcs	r7, r5
 80056e4:	463a      	mov	r2, r7
 80056e6:	4649      	mov	r1, r9
 80056e8:	f000 fbc0 	bl	8005e6c <memmove>
 80056ec:	68a3      	ldr	r3, [r4, #8]
 80056ee:	6822      	ldr	r2, [r4, #0]
 80056f0:	1bdb      	subs	r3, r3, r7
 80056f2:	443a      	add	r2, r7
 80056f4:	60a3      	str	r3, [r4, #8]
 80056f6:	6022      	str	r2, [r4, #0]
 80056f8:	2b00      	cmp	r3, #0
 80056fa:	d1ee      	bne.n	80056da <__sfvwrite_r+0x222>
 80056fc:	4621      	mov	r1, r4
 80056fe:	4650      	mov	r0, sl
 8005700:	f7ff fce8 	bl	80050d4 <_fflush_r>
 8005704:	2800      	cmp	r0, #0
 8005706:	d0e8      	beq.n	80056da <__sfvwrite_r+0x222>
 8005708:	e7c6      	b.n	8005698 <__sfvwrite_r+0x1e0>
 800570a:	f10b 0308 	add.w	r3, fp, #8
 800570e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005712:	469b      	mov	fp, r3
 8005714:	3308      	adds	r3, #8
 8005716:	2f00      	cmp	r7, #0
 8005718:	d0f9      	beq.n	800570e <__sfvwrite_r+0x256>
 800571a:	463a      	mov	r2, r7
 800571c:	210a      	movs	r1, #10
 800571e:	4630      	mov	r0, r6
 8005720:	f7fa fffe 	bl	8000720 <memchr>
 8005724:	b338      	cbz	r0, 8005776 <__sfvwrite_r+0x2be>
 8005726:	3001      	adds	r0, #1
 8005728:	eba0 0906 	sub.w	r9, r0, r6
 800572c:	e783      	b.n	8005636 <__sfvwrite_r+0x17e>
 800572e:	462f      	mov	r7, r5
 8005730:	46ab      	mov	fp, r5
 8005732:	e757      	b.n	80055e4 <__sfvwrite_r+0x12c>
 8005734:	4631      	mov	r1, r6
 8005736:	462a      	mov	r2, r5
 8005738:	f000 fb98 	bl	8005e6c <memmove>
 800573c:	6823      	ldr	r3, [r4, #0]
 800573e:	442b      	add	r3, r5
 8005740:	6023      	str	r3, [r4, #0]
 8005742:	4621      	mov	r1, r4
 8005744:	4650      	mov	r0, sl
 8005746:	f7ff fcc5 	bl	80050d4 <_fflush_r>
 800574a:	2800      	cmp	r0, #0
 800574c:	d08b      	beq.n	8005666 <__sfvwrite_r+0x1ae>
 800574e:	e7a3      	b.n	8005698 <__sfvwrite_r+0x1e0>
 8005750:	4650      	mov	r0, sl
 8005752:	f000 ff05 	bl	8006560 <_realloc_r>
 8005756:	4603      	mov	r3, r0
 8005758:	2800      	cmp	r0, #0
 800575a:	f47f af39 	bne.w	80055d0 <__sfvwrite_r+0x118>
 800575e:	6921      	ldr	r1, [r4, #16]
 8005760:	4650      	mov	r0, sl
 8005762:	f7ff fdb5 	bl	80052d0 <_free_r>
 8005766:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800576a:	220c      	movs	r2, #12
 800576c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005770:	f8ca 2000 	str.w	r2, [sl]
 8005774:	e792      	b.n	800569c <__sfvwrite_r+0x1e4>
 8005776:	f107 0901 	add.w	r9, r7, #1
 800577a:	e75c      	b.n	8005636 <__sfvwrite_r+0x17e>
 800577c:	461a      	mov	r2, r3
 800577e:	4631      	mov	r1, r6
 8005780:	9301      	str	r3, [sp, #4]
 8005782:	f000 fb73 	bl	8005e6c <memmove>
 8005786:	9b01      	ldr	r3, [sp, #4]
 8005788:	68a1      	ldr	r1, [r4, #8]
 800578a:	6822      	ldr	r2, [r4, #0]
 800578c:	1ac9      	subs	r1, r1, r3
 800578e:	441a      	add	r2, r3
 8005790:	60a1      	str	r1, [r4, #8]
 8005792:	6022      	str	r2, [r4, #0]
 8005794:	461d      	mov	r5, r3
 8005796:	e766      	b.n	8005666 <__sfvwrite_r+0x1ae>
 8005798:	230c      	movs	r3, #12
 800579a:	f8ca 3000 	str.w	r3, [sl]
 800579e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057a2:	e77b      	b.n	800569c <__sfvwrite_r+0x1e4>
 80057a4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80057a8:	e76b      	b.n	8005682 <__sfvwrite_r+0x1ca>
 80057aa:	bf00      	nop
 80057ac:	7ffffffe 	.word	0x7ffffffe
 80057b0:	7ffffc00 	.word	0x7ffffc00

080057b4 <_fwalk_reent>:
 80057b4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80057b8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80057bc:	d01f      	beq.n	80057fe <_fwalk_reent+0x4a>
 80057be:	4688      	mov	r8, r1
 80057c0:	4606      	mov	r6, r0
 80057c2:	f04f 0900 	mov.w	r9, #0
 80057c6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80057ca:	3d01      	subs	r5, #1
 80057cc:	d411      	bmi.n	80057f2 <_fwalk_reent+0x3e>
 80057ce:	89a3      	ldrh	r3, [r4, #12]
 80057d0:	2b01      	cmp	r3, #1
 80057d2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80057d6:	4621      	mov	r1, r4
 80057d8:	4630      	mov	r0, r6
 80057da:	d906      	bls.n	80057ea <_fwalk_reent+0x36>
 80057dc:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80057e0:	3301      	adds	r3, #1
 80057e2:	d002      	beq.n	80057ea <_fwalk_reent+0x36>
 80057e4:	47c0      	blx	r8
 80057e6:	ea49 0900 	orr.w	r9, r9, r0
 80057ea:	1c6b      	adds	r3, r5, #1
 80057ec:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80057f0:	d1ed      	bne.n	80057ce <_fwalk_reent+0x1a>
 80057f2:	683f      	ldr	r7, [r7, #0]
 80057f4:	2f00      	cmp	r7, #0
 80057f6:	d1e6      	bne.n	80057c6 <_fwalk_reent+0x12>
 80057f8:	4648      	mov	r0, r9
 80057fa:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80057fe:	46b9      	mov	r9, r7
 8005800:	4648      	mov	r0, r9
 8005802:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005806:	bf00      	nop

08005808 <_localeconv_r>:
 8005808:	4a04      	ldr	r2, [pc, #16]	; (800581c <_localeconv_r+0x14>)
 800580a:	4b05      	ldr	r3, [pc, #20]	; (8005820 <_localeconv_r+0x18>)
 800580c:	6812      	ldr	r2, [r2, #0]
 800580e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005810:	2800      	cmp	r0, #0
 8005812:	bf08      	it	eq
 8005814:	4618      	moveq	r0, r3
 8005816:	30f0      	adds	r0, #240	; 0xf0
 8005818:	4770      	bx	lr
 800581a:	bf00      	nop
 800581c:	20000018 	.word	0x20000018
 8005820:	2000085c 	.word	0x2000085c

08005824 <__retarget_lock_init_recursive>:
 8005824:	4770      	bx	lr
 8005826:	bf00      	nop

08005828 <__retarget_lock_close_recursive>:
 8005828:	4770      	bx	lr
 800582a:	bf00      	nop

0800582c <__retarget_lock_acquire_recursive>:
 800582c:	4770      	bx	lr
 800582e:	bf00      	nop

08005830 <__retarget_lock_release_recursive>:
 8005830:	4770      	bx	lr
 8005832:	bf00      	nop

08005834 <__swhatbuf_r>:
 8005834:	b570      	push	{r4, r5, r6, lr}
 8005836:	460c      	mov	r4, r1
 8005838:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800583c:	2900      	cmp	r1, #0
 800583e:	b096      	sub	sp, #88	; 0x58
 8005840:	4615      	mov	r5, r2
 8005842:	461e      	mov	r6, r3
 8005844:	da0f      	bge.n	8005866 <__swhatbuf_r+0x32>
 8005846:	89a2      	ldrh	r2, [r4, #12]
 8005848:	2300      	movs	r3, #0
 800584a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 800584e:	6033      	str	r3, [r6, #0]
 8005850:	d104      	bne.n	800585c <__swhatbuf_r+0x28>
 8005852:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005856:	602b      	str	r3, [r5, #0]
 8005858:	b016      	add	sp, #88	; 0x58
 800585a:	bd70      	pop	{r4, r5, r6, pc}
 800585c:	2240      	movs	r2, #64	; 0x40
 800585e:	4618      	mov	r0, r3
 8005860:	602a      	str	r2, [r5, #0]
 8005862:	b016      	add	sp, #88	; 0x58
 8005864:	bd70      	pop	{r4, r5, r6, pc}
 8005866:	466a      	mov	r2, sp
 8005868:	f001 fad0 	bl	8006e0c <_fstat_r>
 800586c:	2800      	cmp	r0, #0
 800586e:	dbea      	blt.n	8005846 <__swhatbuf_r+0x12>
 8005870:	9b01      	ldr	r3, [sp, #4]
 8005872:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005876:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800587a:	fab3 f383 	clz	r3, r3
 800587e:	095b      	lsrs	r3, r3, #5
 8005880:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005884:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005888:	6033      	str	r3, [r6, #0]
 800588a:	602a      	str	r2, [r5, #0]
 800588c:	b016      	add	sp, #88	; 0x58
 800588e:	bd70      	pop	{r4, r5, r6, pc}

08005890 <__smakebuf_r>:
 8005890:	898a      	ldrh	r2, [r1, #12]
 8005892:	0792      	lsls	r2, r2, #30
 8005894:	460b      	mov	r3, r1
 8005896:	d506      	bpl.n	80058a6 <__smakebuf_r+0x16>
 8005898:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800589c:	2101      	movs	r1, #1
 800589e:	601a      	str	r2, [r3, #0]
 80058a0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80058a4:	4770      	bx	lr
 80058a6:	b570      	push	{r4, r5, r6, lr}
 80058a8:	b082      	sub	sp, #8
 80058aa:	ab01      	add	r3, sp, #4
 80058ac:	466a      	mov	r2, sp
 80058ae:	460c      	mov	r4, r1
 80058b0:	4605      	mov	r5, r0
 80058b2:	f7ff ffbf 	bl	8005834 <__swhatbuf_r>
 80058b6:	9900      	ldr	r1, [sp, #0]
 80058b8:	4606      	mov	r6, r0
 80058ba:	4628      	mov	r0, r5
 80058bc:	f000 f832 	bl	8005924 <_malloc_r>
 80058c0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058c4:	b1d8      	cbz	r0, 80058fe <__smakebuf_r+0x6e>
 80058c6:	4916      	ldr	r1, [pc, #88]	; (8005920 <__smakebuf_r+0x90>)
 80058c8:	63e9      	str	r1, [r5, #60]	; 0x3c
 80058ca:	9a01      	ldr	r2, [sp, #4]
 80058cc:	9900      	ldr	r1, [sp, #0]
 80058ce:	6020      	str	r0, [r4, #0]
 80058d0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80058d4:	81a3      	strh	r3, [r4, #12]
 80058d6:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80058da:	b91a      	cbnz	r2, 80058e4 <__smakebuf_r+0x54>
 80058dc:	4333      	orrs	r3, r6
 80058de:	81a3      	strh	r3, [r4, #12]
 80058e0:	b002      	add	sp, #8
 80058e2:	bd70      	pop	{r4, r5, r6, pc}
 80058e4:	4628      	mov	r0, r5
 80058e6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80058ea:	f001 faa3 	bl	8006e34 <_isatty_r>
 80058ee:	b1a0      	cbz	r0, 800591a <__smakebuf_r+0x8a>
 80058f0:	89a3      	ldrh	r3, [r4, #12]
 80058f2:	f023 0303 	bic.w	r3, r3, #3
 80058f6:	f043 0301 	orr.w	r3, r3, #1
 80058fa:	b21b      	sxth	r3, r3
 80058fc:	e7ee      	b.n	80058dc <__smakebuf_r+0x4c>
 80058fe:	059a      	lsls	r2, r3, #22
 8005900:	d4ee      	bmi.n	80058e0 <__smakebuf_r+0x50>
 8005902:	f023 0303 	bic.w	r3, r3, #3
 8005906:	f104 0243 	add.w	r2, r4, #67	; 0x43
 800590a:	f043 0302 	orr.w	r3, r3, #2
 800590e:	2101      	movs	r1, #1
 8005910:	81a3      	strh	r3, [r4, #12]
 8005912:	6022      	str	r2, [r4, #0]
 8005914:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005918:	e7e2      	b.n	80058e0 <__smakebuf_r+0x50>
 800591a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800591e:	e7dd      	b.n	80058dc <__smakebuf_r+0x4c>
 8005920:	08005181 	.word	0x08005181

08005924 <_malloc_r>:
 8005924:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005928:	f101 050b 	add.w	r5, r1, #11
 800592c:	2d16      	cmp	r5, #22
 800592e:	b083      	sub	sp, #12
 8005930:	4606      	mov	r6, r0
 8005932:	d823      	bhi.n	800597c <_malloc_r+0x58>
 8005934:	2910      	cmp	r1, #16
 8005936:	f200 80b9 	bhi.w	8005aac <_malloc_r+0x188>
 800593a:	f000 fafb 	bl	8005f34 <__malloc_lock>
 800593e:	2510      	movs	r5, #16
 8005940:	2318      	movs	r3, #24
 8005942:	2002      	movs	r0, #2
 8005944:	4fc5      	ldr	r7, [pc, #788]	; (8005c5c <_malloc_r+0x338>)
 8005946:	443b      	add	r3, r7
 8005948:	f1a3 0208 	sub.w	r2, r3, #8
 800594c:	685c      	ldr	r4, [r3, #4]
 800594e:	4294      	cmp	r4, r2
 8005950:	f000 8166 	beq.w	8005c20 <_malloc_r+0x2fc>
 8005954:	6863      	ldr	r3, [r4, #4]
 8005956:	f023 0303 	bic.w	r3, r3, #3
 800595a:	4423      	add	r3, r4
 800595c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005960:	685a      	ldr	r2, [r3, #4]
 8005962:	60e9      	str	r1, [r5, #12]
 8005964:	f042 0201 	orr.w	r2, r2, #1
 8005968:	608d      	str	r5, [r1, #8]
 800596a:	4630      	mov	r0, r6
 800596c:	605a      	str	r2, [r3, #4]
 800596e:	f000 fae7 	bl	8005f40 <__malloc_unlock>
 8005972:	3408      	adds	r4, #8
 8005974:	4620      	mov	r0, r4
 8005976:	b003      	add	sp, #12
 8005978:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800597c:	f035 0507 	bics.w	r5, r5, #7
 8005980:	f100 8094 	bmi.w	8005aac <_malloc_r+0x188>
 8005984:	42a9      	cmp	r1, r5
 8005986:	f200 8091 	bhi.w	8005aac <_malloc_r+0x188>
 800598a:	f000 fad3 	bl	8005f34 <__malloc_lock>
 800598e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005992:	f0c0 8183 	bcc.w	8005c9c <_malloc_r+0x378>
 8005996:	0a6b      	lsrs	r3, r5, #9
 8005998:	f000 808f 	beq.w	8005aba <_malloc_r+0x196>
 800599c:	2b04      	cmp	r3, #4
 800599e:	f200 8146 	bhi.w	8005c2e <_malloc_r+0x30a>
 80059a2:	09ab      	lsrs	r3, r5, #6
 80059a4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80059a8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80059ac:	00c3      	lsls	r3, r0, #3
 80059ae:	4fab      	ldr	r7, [pc, #684]	; (8005c5c <_malloc_r+0x338>)
 80059b0:	443b      	add	r3, r7
 80059b2:	f1a3 0108 	sub.w	r1, r3, #8
 80059b6:	685c      	ldr	r4, [r3, #4]
 80059b8:	42a1      	cmp	r1, r4
 80059ba:	d106      	bne.n	80059ca <_malloc_r+0xa6>
 80059bc:	e00c      	b.n	80059d8 <_malloc_r+0xb4>
 80059be:	2a00      	cmp	r2, #0
 80059c0:	f280 811d 	bge.w	8005bfe <_malloc_r+0x2da>
 80059c4:	68e4      	ldr	r4, [r4, #12]
 80059c6:	42a1      	cmp	r1, r4
 80059c8:	d006      	beq.n	80059d8 <_malloc_r+0xb4>
 80059ca:	6863      	ldr	r3, [r4, #4]
 80059cc:	f023 0303 	bic.w	r3, r3, #3
 80059d0:	1b5a      	subs	r2, r3, r5
 80059d2:	2a0f      	cmp	r2, #15
 80059d4:	ddf3      	ble.n	80059be <_malloc_r+0x9a>
 80059d6:	4660      	mov	r0, ip
 80059d8:	693c      	ldr	r4, [r7, #16]
 80059da:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005c70 <_malloc_r+0x34c>
 80059de:	4564      	cmp	r4, ip
 80059e0:	d071      	beq.n	8005ac6 <_malloc_r+0x1a2>
 80059e2:	6863      	ldr	r3, [r4, #4]
 80059e4:	f023 0303 	bic.w	r3, r3, #3
 80059e8:	1b5a      	subs	r2, r3, r5
 80059ea:	2a0f      	cmp	r2, #15
 80059ec:	f300 8144 	bgt.w	8005c78 <_malloc_r+0x354>
 80059f0:	2a00      	cmp	r2, #0
 80059f2:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80059f6:	f280 8126 	bge.w	8005c46 <_malloc_r+0x322>
 80059fa:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80059fe:	f080 8169 	bcs.w	8005cd4 <_malloc_r+0x3b0>
 8005a02:	08db      	lsrs	r3, r3, #3
 8005a04:	1c59      	adds	r1, r3, #1
 8005a06:	687a      	ldr	r2, [r7, #4]
 8005a08:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005a0c:	f8c4 8008 	str.w	r8, [r4, #8]
 8005a10:	f04f 0e01 	mov.w	lr, #1
 8005a14:	109b      	asrs	r3, r3, #2
 8005a16:	fa0e f303 	lsl.w	r3, lr, r3
 8005a1a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005a1e:	4313      	orrs	r3, r2
 8005a20:	f1ae 0208 	sub.w	r2, lr, #8
 8005a24:	60e2      	str	r2, [r4, #12]
 8005a26:	607b      	str	r3, [r7, #4]
 8005a28:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005a2c:	f8c8 400c 	str.w	r4, [r8, #12]
 8005a30:	1082      	asrs	r2, r0, #2
 8005a32:	2401      	movs	r4, #1
 8005a34:	4094      	lsls	r4, r2
 8005a36:	429c      	cmp	r4, r3
 8005a38:	d84b      	bhi.n	8005ad2 <_malloc_r+0x1ae>
 8005a3a:	421c      	tst	r4, r3
 8005a3c:	d106      	bne.n	8005a4c <_malloc_r+0x128>
 8005a3e:	f020 0003 	bic.w	r0, r0, #3
 8005a42:	0064      	lsls	r4, r4, #1
 8005a44:	421c      	tst	r4, r3
 8005a46:	f100 0004 	add.w	r0, r0, #4
 8005a4a:	d0fa      	beq.n	8005a42 <_malloc_r+0x11e>
 8005a4c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005a50:	46ce      	mov	lr, r9
 8005a52:	4680      	mov	r8, r0
 8005a54:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005a58:	459e      	cmp	lr, r3
 8005a5a:	d107      	bne.n	8005a6c <_malloc_r+0x148>
 8005a5c:	e122      	b.n	8005ca4 <_malloc_r+0x380>
 8005a5e:	2a00      	cmp	r2, #0
 8005a60:	f280 8129 	bge.w	8005cb6 <_malloc_r+0x392>
 8005a64:	68db      	ldr	r3, [r3, #12]
 8005a66:	459e      	cmp	lr, r3
 8005a68:	f000 811c 	beq.w	8005ca4 <_malloc_r+0x380>
 8005a6c:	6859      	ldr	r1, [r3, #4]
 8005a6e:	f021 0103 	bic.w	r1, r1, #3
 8005a72:	1b4a      	subs	r2, r1, r5
 8005a74:	2a0f      	cmp	r2, #15
 8005a76:	ddf2      	ble.n	8005a5e <_malloc_r+0x13a>
 8005a78:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005a7c:	195c      	adds	r4, r3, r5
 8005a7e:	f045 0501 	orr.w	r5, r5, #1
 8005a82:	605d      	str	r5, [r3, #4]
 8005a84:	f042 0501 	orr.w	r5, r2, #1
 8005a88:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005a8c:	4630      	mov	r0, r6
 8005a8e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005a92:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005a96:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005a9a:	6065      	str	r5, [r4, #4]
 8005a9c:	505a      	str	r2, [r3, r1]
 8005a9e:	9301      	str	r3, [sp, #4]
 8005aa0:	f000 fa4e 	bl	8005f40 <__malloc_unlock>
 8005aa4:	9b01      	ldr	r3, [sp, #4]
 8005aa6:	f103 0408 	add.w	r4, r3, #8
 8005aaa:	e763      	b.n	8005974 <_malloc_r+0x50>
 8005aac:	2400      	movs	r4, #0
 8005aae:	230c      	movs	r3, #12
 8005ab0:	4620      	mov	r0, r4
 8005ab2:	6033      	str	r3, [r6, #0]
 8005ab4:	b003      	add	sp, #12
 8005ab6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005aba:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005abe:	2040      	movs	r0, #64	; 0x40
 8005ac0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005ac4:	e773      	b.n	80059ae <_malloc_r+0x8a>
 8005ac6:	687b      	ldr	r3, [r7, #4]
 8005ac8:	1082      	asrs	r2, r0, #2
 8005aca:	2401      	movs	r4, #1
 8005acc:	4094      	lsls	r4, r2
 8005ace:	429c      	cmp	r4, r3
 8005ad0:	d9b3      	bls.n	8005a3a <_malloc_r+0x116>
 8005ad2:	68bc      	ldr	r4, [r7, #8]
 8005ad4:	6863      	ldr	r3, [r4, #4]
 8005ad6:	f023 0903 	bic.w	r9, r3, #3
 8005ada:	45a9      	cmp	r9, r5
 8005adc:	d303      	bcc.n	8005ae6 <_malloc_r+0x1c2>
 8005ade:	eba9 0305 	sub.w	r3, r9, r5
 8005ae2:	2b0f      	cmp	r3, #15
 8005ae4:	dc7b      	bgt.n	8005bde <_malloc_r+0x2ba>
 8005ae6:	4b5e      	ldr	r3, [pc, #376]	; (8005c60 <_malloc_r+0x33c>)
 8005ae8:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005c74 <_malloc_r+0x350>
 8005aec:	681a      	ldr	r2, [r3, #0]
 8005aee:	f8da 3000 	ldr.w	r3, [sl]
 8005af2:	3301      	adds	r3, #1
 8005af4:	eb05 0802 	add.w	r8, r5, r2
 8005af8:	f000 8148 	beq.w	8005d8c <_malloc_r+0x468>
 8005afc:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005b00:	f108 080f 	add.w	r8, r8, #15
 8005b04:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005b08:	f028 080f 	bic.w	r8, r8, #15
 8005b0c:	4641      	mov	r1, r8
 8005b0e:	4630      	mov	r0, r6
 8005b10:	f000 ff08 	bl	8006924 <_sbrk_r>
 8005b14:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005b18:	4683      	mov	fp, r0
 8005b1a:	f000 8104 	beq.w	8005d26 <_malloc_r+0x402>
 8005b1e:	eb04 0009 	add.w	r0, r4, r9
 8005b22:	4558      	cmp	r0, fp
 8005b24:	f200 80fd 	bhi.w	8005d22 <_malloc_r+0x3fe>
 8005b28:	4a4e      	ldr	r2, [pc, #312]	; (8005c64 <_malloc_r+0x340>)
 8005b2a:	6813      	ldr	r3, [r2, #0]
 8005b2c:	4443      	add	r3, r8
 8005b2e:	6013      	str	r3, [r2, #0]
 8005b30:	f000 814d 	beq.w	8005dce <_malloc_r+0x4aa>
 8005b34:	f8da 1000 	ldr.w	r1, [sl]
 8005b38:	3101      	adds	r1, #1
 8005b3a:	bf1b      	ittet	ne
 8005b3c:	ebab 0000 	subne.w	r0, fp, r0
 8005b40:	181b      	addne	r3, r3, r0
 8005b42:	f8ca b000 	streq.w	fp, [sl]
 8005b46:	6013      	strne	r3, [r2, #0]
 8005b48:	f01b 0307 	ands.w	r3, fp, #7
 8005b4c:	f000 8134 	beq.w	8005db8 <_malloc_r+0x494>
 8005b50:	f1c3 0108 	rsb	r1, r3, #8
 8005b54:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005b58:	448b      	add	fp, r1
 8005b5a:	3308      	adds	r3, #8
 8005b5c:	44d8      	add	r8, fp
 8005b5e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005b62:	eba3 0808 	sub.w	r8, r3, r8
 8005b66:	4641      	mov	r1, r8
 8005b68:	4630      	mov	r0, r6
 8005b6a:	9201      	str	r2, [sp, #4]
 8005b6c:	f000 feda 	bl	8006924 <_sbrk_r>
 8005b70:	1c43      	adds	r3, r0, #1
 8005b72:	9a01      	ldr	r2, [sp, #4]
 8005b74:	f000 8146 	beq.w	8005e04 <_malloc_r+0x4e0>
 8005b78:	eba0 010b 	sub.w	r1, r0, fp
 8005b7c:	4441      	add	r1, r8
 8005b7e:	f041 0101 	orr.w	r1, r1, #1
 8005b82:	6813      	ldr	r3, [r2, #0]
 8005b84:	f8c7 b008 	str.w	fp, [r7, #8]
 8005b88:	4443      	add	r3, r8
 8005b8a:	42bc      	cmp	r4, r7
 8005b8c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005b90:	6013      	str	r3, [r2, #0]
 8005b92:	d015      	beq.n	8005bc0 <_malloc_r+0x29c>
 8005b94:	f1b9 0f0f 	cmp.w	r9, #15
 8005b98:	f240 8130 	bls.w	8005dfc <_malloc_r+0x4d8>
 8005b9c:	6860      	ldr	r0, [r4, #4]
 8005b9e:	f1a9 010c 	sub.w	r1, r9, #12
 8005ba2:	f021 0107 	bic.w	r1, r1, #7
 8005ba6:	f000 0001 	and.w	r0, r0, #1
 8005baa:	eb04 0c01 	add.w	ip, r4, r1
 8005bae:	4308      	orrs	r0, r1
 8005bb0:	f04f 0e05 	mov.w	lr, #5
 8005bb4:	290f      	cmp	r1, #15
 8005bb6:	6060      	str	r0, [r4, #4]
 8005bb8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005bbc:	f200 813a 	bhi.w	8005e34 <_malloc_r+0x510>
 8005bc0:	4a29      	ldr	r2, [pc, #164]	; (8005c68 <_malloc_r+0x344>)
 8005bc2:	482a      	ldr	r0, [pc, #168]	; (8005c6c <_malloc_r+0x348>)
 8005bc4:	6811      	ldr	r1, [r2, #0]
 8005bc6:	68bc      	ldr	r4, [r7, #8]
 8005bc8:	428b      	cmp	r3, r1
 8005bca:	6801      	ldr	r1, [r0, #0]
 8005bcc:	bf88      	it	hi
 8005bce:	6013      	strhi	r3, [r2, #0]
 8005bd0:	6862      	ldr	r2, [r4, #4]
 8005bd2:	428b      	cmp	r3, r1
 8005bd4:	f022 0203 	bic.w	r2, r2, #3
 8005bd8:	bf88      	it	hi
 8005bda:	6003      	strhi	r3, [r0, #0]
 8005bdc:	e0a7      	b.n	8005d2e <_malloc_r+0x40a>
 8005bde:	1962      	adds	r2, r4, r5
 8005be0:	f043 0301 	orr.w	r3, r3, #1
 8005be4:	f045 0501 	orr.w	r5, r5, #1
 8005be8:	6065      	str	r5, [r4, #4]
 8005bea:	4630      	mov	r0, r6
 8005bec:	60ba      	str	r2, [r7, #8]
 8005bee:	6053      	str	r3, [r2, #4]
 8005bf0:	f000 f9a6 	bl	8005f40 <__malloc_unlock>
 8005bf4:	3408      	adds	r4, #8
 8005bf6:	4620      	mov	r0, r4
 8005bf8:	b003      	add	sp, #12
 8005bfa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005bfe:	4423      	add	r3, r4
 8005c00:	68e1      	ldr	r1, [r4, #12]
 8005c02:	685a      	ldr	r2, [r3, #4]
 8005c04:	68a5      	ldr	r5, [r4, #8]
 8005c06:	f042 0201 	orr.w	r2, r2, #1
 8005c0a:	60e9      	str	r1, [r5, #12]
 8005c0c:	4630      	mov	r0, r6
 8005c0e:	608d      	str	r5, [r1, #8]
 8005c10:	605a      	str	r2, [r3, #4]
 8005c12:	f000 f995 	bl	8005f40 <__malloc_unlock>
 8005c16:	3408      	adds	r4, #8
 8005c18:	4620      	mov	r0, r4
 8005c1a:	b003      	add	sp, #12
 8005c1c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c20:	68dc      	ldr	r4, [r3, #12]
 8005c22:	42a3      	cmp	r3, r4
 8005c24:	bf08      	it	eq
 8005c26:	3002      	addeq	r0, #2
 8005c28:	f43f aed6 	beq.w	80059d8 <_malloc_r+0xb4>
 8005c2c:	e692      	b.n	8005954 <_malloc_r+0x30>
 8005c2e:	2b14      	cmp	r3, #20
 8005c30:	d971      	bls.n	8005d16 <_malloc_r+0x3f2>
 8005c32:	2b54      	cmp	r3, #84	; 0x54
 8005c34:	f200 80ad 	bhi.w	8005d92 <_malloc_r+0x46e>
 8005c38:	0b2b      	lsrs	r3, r5, #12
 8005c3a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005c3e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005c42:	00c3      	lsls	r3, r0, #3
 8005c44:	e6b3      	b.n	80059ae <_malloc_r+0x8a>
 8005c46:	4423      	add	r3, r4
 8005c48:	4630      	mov	r0, r6
 8005c4a:	685a      	ldr	r2, [r3, #4]
 8005c4c:	f042 0201 	orr.w	r2, r2, #1
 8005c50:	605a      	str	r2, [r3, #4]
 8005c52:	3408      	adds	r4, #8
 8005c54:	f000 f974 	bl	8005f40 <__malloc_unlock>
 8005c58:	e68c      	b.n	8005974 <_malloc_r+0x50>
 8005c5a:	bf00      	nop
 8005c5c:	2000044c 	.word	0x2000044c
 8005c60:	20000da0 	.word	0x20000da0
 8005c64:	20000d70 	.word	0x20000d70
 8005c68:	20000d98 	.word	0x20000d98
 8005c6c:	20000d9c 	.word	0x20000d9c
 8005c70:	20000454 	.word	0x20000454
 8005c74:	20000854 	.word	0x20000854
 8005c78:	1961      	adds	r1, r4, r5
 8005c7a:	f045 0e01 	orr.w	lr, r5, #1
 8005c7e:	f042 0501 	orr.w	r5, r2, #1
 8005c82:	f8c4 e004 	str.w	lr, [r4, #4]
 8005c86:	4630      	mov	r0, r6
 8005c88:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005c8c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005c90:	604d      	str	r5, [r1, #4]
 8005c92:	50e2      	str	r2, [r4, r3]
 8005c94:	f000 f954 	bl	8005f40 <__malloc_unlock>
 8005c98:	3408      	adds	r4, #8
 8005c9a:	e66b      	b.n	8005974 <_malloc_r+0x50>
 8005c9c:	08e8      	lsrs	r0, r5, #3
 8005c9e:	f105 0308 	add.w	r3, r5, #8
 8005ca2:	e64f      	b.n	8005944 <_malloc_r+0x20>
 8005ca4:	f108 0801 	add.w	r8, r8, #1
 8005ca8:	f018 0f03 	tst.w	r8, #3
 8005cac:	f10e 0e08 	add.w	lr, lr, #8
 8005cb0:	f47f aed0 	bne.w	8005a54 <_malloc_r+0x130>
 8005cb4:	e052      	b.n	8005d5c <_malloc_r+0x438>
 8005cb6:	4419      	add	r1, r3
 8005cb8:	461c      	mov	r4, r3
 8005cba:	684a      	ldr	r2, [r1, #4]
 8005cbc:	68db      	ldr	r3, [r3, #12]
 8005cbe:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005cc2:	f042 0201 	orr.w	r2, r2, #1
 8005cc6:	604a      	str	r2, [r1, #4]
 8005cc8:	4630      	mov	r0, r6
 8005cca:	60eb      	str	r3, [r5, #12]
 8005ccc:	609d      	str	r5, [r3, #8]
 8005cce:	f000 f937 	bl	8005f40 <__malloc_unlock>
 8005cd2:	e64f      	b.n	8005974 <_malloc_r+0x50>
 8005cd4:	0a5a      	lsrs	r2, r3, #9
 8005cd6:	2a04      	cmp	r2, #4
 8005cd8:	d935      	bls.n	8005d46 <_malloc_r+0x422>
 8005cda:	2a14      	cmp	r2, #20
 8005cdc:	d86f      	bhi.n	8005dbe <_malloc_r+0x49a>
 8005cde:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005ce2:	00c9      	lsls	r1, r1, #3
 8005ce4:	325b      	adds	r2, #91	; 0x5b
 8005ce6:	eb07 0e01 	add.w	lr, r7, r1
 8005cea:	5879      	ldr	r1, [r7, r1]
 8005cec:	f1ae 0e08 	sub.w	lr, lr, #8
 8005cf0:	458e      	cmp	lr, r1
 8005cf2:	d058      	beq.n	8005da6 <_malloc_r+0x482>
 8005cf4:	684a      	ldr	r2, [r1, #4]
 8005cf6:	f022 0203 	bic.w	r2, r2, #3
 8005cfa:	429a      	cmp	r2, r3
 8005cfc:	d902      	bls.n	8005d04 <_malloc_r+0x3e0>
 8005cfe:	6889      	ldr	r1, [r1, #8]
 8005d00:	458e      	cmp	lr, r1
 8005d02:	d1f7      	bne.n	8005cf4 <_malloc_r+0x3d0>
 8005d04:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005d08:	687b      	ldr	r3, [r7, #4]
 8005d0a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005d0e:	f8ce 4008 	str.w	r4, [lr, #8]
 8005d12:	60cc      	str	r4, [r1, #12]
 8005d14:	e68c      	b.n	8005a30 <_malloc_r+0x10c>
 8005d16:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005d1a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005d1e:	00c3      	lsls	r3, r0, #3
 8005d20:	e645      	b.n	80059ae <_malloc_r+0x8a>
 8005d22:	42bc      	cmp	r4, r7
 8005d24:	d072      	beq.n	8005e0c <_malloc_r+0x4e8>
 8005d26:	68bc      	ldr	r4, [r7, #8]
 8005d28:	6862      	ldr	r2, [r4, #4]
 8005d2a:	f022 0203 	bic.w	r2, r2, #3
 8005d2e:	4295      	cmp	r5, r2
 8005d30:	eba2 0305 	sub.w	r3, r2, r5
 8005d34:	d802      	bhi.n	8005d3c <_malloc_r+0x418>
 8005d36:	2b0f      	cmp	r3, #15
 8005d38:	f73f af51 	bgt.w	8005bde <_malloc_r+0x2ba>
 8005d3c:	4630      	mov	r0, r6
 8005d3e:	f000 f8ff 	bl	8005f40 <__malloc_unlock>
 8005d42:	2400      	movs	r4, #0
 8005d44:	e616      	b.n	8005974 <_malloc_r+0x50>
 8005d46:	099a      	lsrs	r2, r3, #6
 8005d48:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005d4c:	00c9      	lsls	r1, r1, #3
 8005d4e:	3238      	adds	r2, #56	; 0x38
 8005d50:	e7c9      	b.n	8005ce6 <_malloc_r+0x3c2>
 8005d52:	f8d9 9000 	ldr.w	r9, [r9]
 8005d56:	4599      	cmp	r9, r3
 8005d58:	f040 8083 	bne.w	8005e62 <_malloc_r+0x53e>
 8005d5c:	f010 0f03 	tst.w	r0, #3
 8005d60:	f1a9 0308 	sub.w	r3, r9, #8
 8005d64:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005d68:	d1f3      	bne.n	8005d52 <_malloc_r+0x42e>
 8005d6a:	687b      	ldr	r3, [r7, #4]
 8005d6c:	ea23 0304 	bic.w	r3, r3, r4
 8005d70:	607b      	str	r3, [r7, #4]
 8005d72:	0064      	lsls	r4, r4, #1
 8005d74:	429c      	cmp	r4, r3
 8005d76:	f63f aeac 	bhi.w	8005ad2 <_malloc_r+0x1ae>
 8005d7a:	b91c      	cbnz	r4, 8005d84 <_malloc_r+0x460>
 8005d7c:	e6a9      	b.n	8005ad2 <_malloc_r+0x1ae>
 8005d7e:	0064      	lsls	r4, r4, #1
 8005d80:	f108 0804 	add.w	r8, r8, #4
 8005d84:	421c      	tst	r4, r3
 8005d86:	d0fa      	beq.n	8005d7e <_malloc_r+0x45a>
 8005d88:	4640      	mov	r0, r8
 8005d8a:	e65f      	b.n	8005a4c <_malloc_r+0x128>
 8005d8c:	f108 0810 	add.w	r8, r8, #16
 8005d90:	e6bc      	b.n	8005b0c <_malloc_r+0x1e8>
 8005d92:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005d96:	d826      	bhi.n	8005de6 <_malloc_r+0x4c2>
 8005d98:	0beb      	lsrs	r3, r5, #15
 8005d9a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005d9e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005da2:	00c3      	lsls	r3, r0, #3
 8005da4:	e603      	b.n	80059ae <_malloc_r+0x8a>
 8005da6:	687b      	ldr	r3, [r7, #4]
 8005da8:	1092      	asrs	r2, r2, #2
 8005daa:	f04f 0801 	mov.w	r8, #1
 8005dae:	fa08 f202 	lsl.w	r2, r8, r2
 8005db2:	4313      	orrs	r3, r2
 8005db4:	607b      	str	r3, [r7, #4]
 8005db6:	e7a8      	b.n	8005d0a <_malloc_r+0x3e6>
 8005db8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005dbc:	e6ce      	b.n	8005b5c <_malloc_r+0x238>
 8005dbe:	2a54      	cmp	r2, #84	; 0x54
 8005dc0:	d829      	bhi.n	8005e16 <_malloc_r+0x4f2>
 8005dc2:	0b1a      	lsrs	r2, r3, #12
 8005dc4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005dc8:	00c9      	lsls	r1, r1, #3
 8005dca:	326e      	adds	r2, #110	; 0x6e
 8005dcc:	e78b      	b.n	8005ce6 <_malloc_r+0x3c2>
 8005dce:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005dd2:	2900      	cmp	r1, #0
 8005dd4:	f47f aeae 	bne.w	8005b34 <_malloc_r+0x210>
 8005dd8:	eb09 0208 	add.w	r2, r9, r8
 8005ddc:	68b9      	ldr	r1, [r7, #8]
 8005dde:	f042 0201 	orr.w	r2, r2, #1
 8005de2:	604a      	str	r2, [r1, #4]
 8005de4:	e6ec      	b.n	8005bc0 <_malloc_r+0x29c>
 8005de6:	f240 5254 	movw	r2, #1364	; 0x554
 8005dea:	4293      	cmp	r3, r2
 8005dec:	d81c      	bhi.n	8005e28 <_malloc_r+0x504>
 8005dee:	0cab      	lsrs	r3, r5, #18
 8005df0:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005df4:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005df8:	00c3      	lsls	r3, r0, #3
 8005dfa:	e5d8      	b.n	80059ae <_malloc_r+0x8a>
 8005dfc:	2301      	movs	r3, #1
 8005dfe:	f8cb 3004 	str.w	r3, [fp, #4]
 8005e02:	e79b      	b.n	8005d3c <_malloc_r+0x418>
 8005e04:	2101      	movs	r1, #1
 8005e06:	f04f 0800 	mov.w	r8, #0
 8005e0a:	e6ba      	b.n	8005b82 <_malloc_r+0x25e>
 8005e0c:	4a16      	ldr	r2, [pc, #88]	; (8005e68 <_malloc_r+0x544>)
 8005e0e:	6813      	ldr	r3, [r2, #0]
 8005e10:	4443      	add	r3, r8
 8005e12:	6013      	str	r3, [r2, #0]
 8005e14:	e68e      	b.n	8005b34 <_malloc_r+0x210>
 8005e16:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005e1a:	d814      	bhi.n	8005e46 <_malloc_r+0x522>
 8005e1c:	0bda      	lsrs	r2, r3, #15
 8005e1e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005e22:	00c9      	lsls	r1, r1, #3
 8005e24:	3277      	adds	r2, #119	; 0x77
 8005e26:	e75e      	b.n	8005ce6 <_malloc_r+0x3c2>
 8005e28:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005e2c:	207f      	movs	r0, #127	; 0x7f
 8005e2e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005e32:	e5bc      	b.n	80059ae <_malloc_r+0x8a>
 8005e34:	f104 0108 	add.w	r1, r4, #8
 8005e38:	4630      	mov	r0, r6
 8005e3a:	9201      	str	r2, [sp, #4]
 8005e3c:	f7ff fa48 	bl	80052d0 <_free_r>
 8005e40:	9a01      	ldr	r2, [sp, #4]
 8005e42:	6813      	ldr	r3, [r2, #0]
 8005e44:	e6bc      	b.n	8005bc0 <_malloc_r+0x29c>
 8005e46:	f240 5154 	movw	r1, #1364	; 0x554
 8005e4a:	428a      	cmp	r2, r1
 8005e4c:	d805      	bhi.n	8005e5a <_malloc_r+0x536>
 8005e4e:	0c9a      	lsrs	r2, r3, #18
 8005e50:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005e54:	00c9      	lsls	r1, r1, #3
 8005e56:	327c      	adds	r2, #124	; 0x7c
 8005e58:	e745      	b.n	8005ce6 <_malloc_r+0x3c2>
 8005e5a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005e5e:	227e      	movs	r2, #126	; 0x7e
 8005e60:	e741      	b.n	8005ce6 <_malloc_r+0x3c2>
 8005e62:	687b      	ldr	r3, [r7, #4]
 8005e64:	e785      	b.n	8005d72 <_malloc_r+0x44e>
 8005e66:	bf00      	nop
 8005e68:	20000d70 	.word	0x20000d70

08005e6c <memmove>:
 8005e6c:	4288      	cmp	r0, r1
 8005e6e:	b4f0      	push	{r4, r5, r6, r7}
 8005e70:	d90d      	bls.n	8005e8e <memmove+0x22>
 8005e72:	188b      	adds	r3, r1, r2
 8005e74:	4283      	cmp	r3, r0
 8005e76:	d90a      	bls.n	8005e8e <memmove+0x22>
 8005e78:	1884      	adds	r4, r0, r2
 8005e7a:	b132      	cbz	r2, 8005e8a <memmove+0x1e>
 8005e7c:	4622      	mov	r2, r4
 8005e7e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005e82:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005e86:	4299      	cmp	r1, r3
 8005e88:	d1f9      	bne.n	8005e7e <memmove+0x12>
 8005e8a:	bcf0      	pop	{r4, r5, r6, r7}
 8005e8c:	4770      	bx	lr
 8005e8e:	2a0f      	cmp	r2, #15
 8005e90:	d949      	bls.n	8005f26 <memmove+0xba>
 8005e92:	ea40 0301 	orr.w	r3, r0, r1
 8005e96:	079b      	lsls	r3, r3, #30
 8005e98:	d147      	bne.n	8005f2a <memmove+0xbe>
 8005e9a:	f1a2 0310 	sub.w	r3, r2, #16
 8005e9e:	091b      	lsrs	r3, r3, #4
 8005ea0:	f101 0720 	add.w	r7, r1, #32
 8005ea4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005ea8:	f101 0410 	add.w	r4, r1, #16
 8005eac:	f100 0510 	add.w	r5, r0, #16
 8005eb0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005eb4:	f845 6c10 	str.w	r6, [r5, #-16]
 8005eb8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005ebc:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005ec0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005ec4:	f845 6c08 	str.w	r6, [r5, #-8]
 8005ec8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005ecc:	f845 6c04 	str.w	r6, [r5, #-4]
 8005ed0:	3410      	adds	r4, #16
 8005ed2:	42bc      	cmp	r4, r7
 8005ed4:	f105 0510 	add.w	r5, r5, #16
 8005ed8:	d1ea      	bne.n	8005eb0 <memmove+0x44>
 8005eda:	3301      	adds	r3, #1
 8005edc:	f002 050f 	and.w	r5, r2, #15
 8005ee0:	011b      	lsls	r3, r3, #4
 8005ee2:	2d03      	cmp	r5, #3
 8005ee4:	4419      	add	r1, r3
 8005ee6:	4403      	add	r3, r0
 8005ee8:	d921      	bls.n	8005f2e <memmove+0xc2>
 8005eea:	1f1f      	subs	r7, r3, #4
 8005eec:	460e      	mov	r6, r1
 8005eee:	462c      	mov	r4, r5
 8005ef0:	3c04      	subs	r4, #4
 8005ef2:	f856 cb04 	ldr.w	ip, [r6], #4
 8005ef6:	f847 cf04 	str.w	ip, [r7, #4]!
 8005efa:	2c03      	cmp	r4, #3
 8005efc:	d8f8      	bhi.n	8005ef0 <memmove+0x84>
 8005efe:	1f2c      	subs	r4, r5, #4
 8005f00:	f024 0403 	bic.w	r4, r4, #3
 8005f04:	3404      	adds	r4, #4
 8005f06:	4423      	add	r3, r4
 8005f08:	4421      	add	r1, r4
 8005f0a:	f002 0203 	and.w	r2, r2, #3
 8005f0e:	2a00      	cmp	r2, #0
 8005f10:	d0bb      	beq.n	8005e8a <memmove+0x1e>
 8005f12:	3b01      	subs	r3, #1
 8005f14:	440a      	add	r2, r1
 8005f16:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005f1a:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005f1e:	4291      	cmp	r1, r2
 8005f20:	d1f9      	bne.n	8005f16 <memmove+0xaa>
 8005f22:	bcf0      	pop	{r4, r5, r6, r7}
 8005f24:	4770      	bx	lr
 8005f26:	4603      	mov	r3, r0
 8005f28:	e7f1      	b.n	8005f0e <memmove+0xa2>
 8005f2a:	4603      	mov	r3, r0
 8005f2c:	e7f1      	b.n	8005f12 <memmove+0xa6>
 8005f2e:	462a      	mov	r2, r5
 8005f30:	e7ed      	b.n	8005f0e <memmove+0xa2>
 8005f32:	bf00      	nop

08005f34 <__malloc_lock>:
 8005f34:	4801      	ldr	r0, [pc, #4]	; (8005f3c <__malloc_lock+0x8>)
 8005f36:	f7ff bc79 	b.w	800582c <__retarget_lock_acquire_recursive>
 8005f3a:	bf00      	nop
 8005f3c:	20000dfc 	.word	0x20000dfc

08005f40 <__malloc_unlock>:
 8005f40:	4801      	ldr	r0, [pc, #4]	; (8005f48 <__malloc_unlock+0x8>)
 8005f42:	f7ff bc75 	b.w	8005830 <__retarget_lock_release_recursive>
 8005f46:	bf00      	nop
 8005f48:	20000dfc 	.word	0x20000dfc

08005f4c <_Balloc>:
 8005f4c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f4e:	b570      	push	{r4, r5, r6, lr}
 8005f50:	4605      	mov	r5, r0
 8005f52:	460c      	mov	r4, r1
 8005f54:	b14b      	cbz	r3, 8005f6a <_Balloc+0x1e>
 8005f56:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005f5a:	b180      	cbz	r0, 8005f7e <_Balloc+0x32>
 8005f5c:	6802      	ldr	r2, [r0, #0]
 8005f5e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005f62:	2300      	movs	r3, #0
 8005f64:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005f68:	bd70      	pop	{r4, r5, r6, pc}
 8005f6a:	2221      	movs	r2, #33	; 0x21
 8005f6c:	2104      	movs	r1, #4
 8005f6e:	f000 fe1d 	bl	8006bac <_calloc_r>
 8005f72:	4603      	mov	r3, r0
 8005f74:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005f76:	2800      	cmp	r0, #0
 8005f78:	d1ed      	bne.n	8005f56 <_Balloc+0xa>
 8005f7a:	2000      	movs	r0, #0
 8005f7c:	bd70      	pop	{r4, r5, r6, pc}
 8005f7e:	2101      	movs	r1, #1
 8005f80:	fa01 f604 	lsl.w	r6, r1, r4
 8005f84:	1d72      	adds	r2, r6, #5
 8005f86:	4628      	mov	r0, r5
 8005f88:	0092      	lsls	r2, r2, #2
 8005f8a:	f000 fe0f 	bl	8006bac <_calloc_r>
 8005f8e:	2800      	cmp	r0, #0
 8005f90:	d0f3      	beq.n	8005f7a <_Balloc+0x2e>
 8005f92:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005f96:	e7e4      	b.n	8005f62 <_Balloc+0x16>

08005f98 <_Bfree>:
 8005f98:	b131      	cbz	r1, 8005fa8 <_Bfree+0x10>
 8005f9a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f9c:	684a      	ldr	r2, [r1, #4]
 8005f9e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005fa2:	6008      	str	r0, [r1, #0]
 8005fa4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005fa8:	4770      	bx	lr
 8005faa:	bf00      	nop

08005fac <__multadd>:
 8005fac:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005fae:	690c      	ldr	r4, [r1, #16]
 8005fb0:	b083      	sub	sp, #12
 8005fb2:	460d      	mov	r5, r1
 8005fb4:	4606      	mov	r6, r0
 8005fb6:	f101 0c14 	add.w	ip, r1, #20
 8005fba:	2700      	movs	r7, #0
 8005fbc:	f8dc 0000 	ldr.w	r0, [ip]
 8005fc0:	b281      	uxth	r1, r0
 8005fc2:	fb02 3301 	mla	r3, r2, r1, r3
 8005fc6:	0c01      	lsrs	r1, r0, #16
 8005fc8:	0c18      	lsrs	r0, r3, #16
 8005fca:	fb02 0101 	mla	r1, r2, r1, r0
 8005fce:	b29b      	uxth	r3, r3
 8005fd0:	3701      	adds	r7, #1
 8005fd2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8005fd6:	42bc      	cmp	r4, r7
 8005fd8:	f84c 3b04 	str.w	r3, [ip], #4
 8005fdc:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8005fe0:	dcec      	bgt.n	8005fbc <__multadd+0x10>
 8005fe2:	b13b      	cbz	r3, 8005ff4 <__multadd+0x48>
 8005fe4:	68aa      	ldr	r2, [r5, #8]
 8005fe6:	42a2      	cmp	r2, r4
 8005fe8:	dd07      	ble.n	8005ffa <__multadd+0x4e>
 8005fea:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8005fee:	3401      	adds	r4, #1
 8005ff0:	6153      	str	r3, [r2, #20]
 8005ff2:	612c      	str	r4, [r5, #16]
 8005ff4:	4628      	mov	r0, r5
 8005ff6:	b003      	add	sp, #12
 8005ff8:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8005ffa:	6869      	ldr	r1, [r5, #4]
 8005ffc:	9301      	str	r3, [sp, #4]
 8005ffe:	3101      	adds	r1, #1
 8006000:	4630      	mov	r0, r6
 8006002:	f7ff ffa3 	bl	8005f4c <_Balloc>
 8006006:	692a      	ldr	r2, [r5, #16]
 8006008:	3202      	adds	r2, #2
 800600a:	f105 010c 	add.w	r1, r5, #12
 800600e:	4607      	mov	r7, r0
 8006010:	0092      	lsls	r2, r2, #2
 8006012:	300c      	adds	r0, #12
 8006014:	f7fa fa74 	bl	8000500 <memcpy>
 8006018:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800601a:	6869      	ldr	r1, [r5, #4]
 800601c:	9b01      	ldr	r3, [sp, #4]
 800601e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006022:	6028      	str	r0, [r5, #0]
 8006024:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006028:	463d      	mov	r5, r7
 800602a:	e7de      	b.n	8005fea <__multadd+0x3e>

0800602c <__hi0bits>:
 800602c:	0c02      	lsrs	r2, r0, #16
 800602e:	0412      	lsls	r2, r2, #16
 8006030:	4603      	mov	r3, r0
 8006032:	b9c2      	cbnz	r2, 8006066 <__hi0bits+0x3a>
 8006034:	0403      	lsls	r3, r0, #16
 8006036:	2010      	movs	r0, #16
 8006038:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800603c:	bf04      	itt	eq
 800603e:	021b      	lsleq	r3, r3, #8
 8006040:	3008      	addeq	r0, #8
 8006042:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006046:	bf04      	itt	eq
 8006048:	011b      	lsleq	r3, r3, #4
 800604a:	3004      	addeq	r0, #4
 800604c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006050:	bf04      	itt	eq
 8006052:	009b      	lsleq	r3, r3, #2
 8006054:	3002      	addeq	r0, #2
 8006056:	2b00      	cmp	r3, #0
 8006058:	db04      	blt.n	8006064 <__hi0bits+0x38>
 800605a:	005b      	lsls	r3, r3, #1
 800605c:	d501      	bpl.n	8006062 <__hi0bits+0x36>
 800605e:	3001      	adds	r0, #1
 8006060:	4770      	bx	lr
 8006062:	2020      	movs	r0, #32
 8006064:	4770      	bx	lr
 8006066:	2000      	movs	r0, #0
 8006068:	e7e6      	b.n	8006038 <__hi0bits+0xc>
 800606a:	bf00      	nop

0800606c <__lo0bits>:
 800606c:	6803      	ldr	r3, [r0, #0]
 800606e:	f013 0207 	ands.w	r2, r3, #7
 8006072:	4601      	mov	r1, r0
 8006074:	d007      	beq.n	8006086 <__lo0bits+0x1a>
 8006076:	07da      	lsls	r2, r3, #31
 8006078:	d41f      	bmi.n	80060ba <__lo0bits+0x4e>
 800607a:	0798      	lsls	r0, r3, #30
 800607c:	d51f      	bpl.n	80060be <__lo0bits+0x52>
 800607e:	085b      	lsrs	r3, r3, #1
 8006080:	600b      	str	r3, [r1, #0]
 8006082:	2001      	movs	r0, #1
 8006084:	4770      	bx	lr
 8006086:	b298      	uxth	r0, r3
 8006088:	b1a0      	cbz	r0, 80060b4 <__lo0bits+0x48>
 800608a:	4610      	mov	r0, r2
 800608c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006090:	bf04      	itt	eq
 8006092:	0a1b      	lsreq	r3, r3, #8
 8006094:	3008      	addeq	r0, #8
 8006096:	071a      	lsls	r2, r3, #28
 8006098:	bf04      	itt	eq
 800609a:	091b      	lsreq	r3, r3, #4
 800609c:	3004      	addeq	r0, #4
 800609e:	079a      	lsls	r2, r3, #30
 80060a0:	bf04      	itt	eq
 80060a2:	089b      	lsreq	r3, r3, #2
 80060a4:	3002      	addeq	r0, #2
 80060a6:	07da      	lsls	r2, r3, #31
 80060a8:	d402      	bmi.n	80060b0 <__lo0bits+0x44>
 80060aa:	085b      	lsrs	r3, r3, #1
 80060ac:	d00b      	beq.n	80060c6 <__lo0bits+0x5a>
 80060ae:	3001      	adds	r0, #1
 80060b0:	600b      	str	r3, [r1, #0]
 80060b2:	4770      	bx	lr
 80060b4:	0c1b      	lsrs	r3, r3, #16
 80060b6:	2010      	movs	r0, #16
 80060b8:	e7e8      	b.n	800608c <__lo0bits+0x20>
 80060ba:	2000      	movs	r0, #0
 80060bc:	4770      	bx	lr
 80060be:	089b      	lsrs	r3, r3, #2
 80060c0:	600b      	str	r3, [r1, #0]
 80060c2:	2002      	movs	r0, #2
 80060c4:	4770      	bx	lr
 80060c6:	2020      	movs	r0, #32
 80060c8:	4770      	bx	lr
 80060ca:	bf00      	nop

080060cc <__i2b>:
 80060cc:	b510      	push	{r4, lr}
 80060ce:	460c      	mov	r4, r1
 80060d0:	2101      	movs	r1, #1
 80060d2:	f7ff ff3b 	bl	8005f4c <_Balloc>
 80060d6:	2201      	movs	r2, #1
 80060d8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80060dc:	bd10      	pop	{r4, pc}
 80060de:	bf00      	nop

080060e0 <__multiply>:
 80060e0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80060e4:	690e      	ldr	r6, [r1, #16]
 80060e6:	6914      	ldr	r4, [r2, #16]
 80060e8:	42a6      	cmp	r6, r4
 80060ea:	b083      	sub	sp, #12
 80060ec:	460f      	mov	r7, r1
 80060ee:	4615      	mov	r5, r2
 80060f0:	da04      	bge.n	80060fc <__multiply+0x1c>
 80060f2:	4632      	mov	r2, r6
 80060f4:	462f      	mov	r7, r5
 80060f6:	4626      	mov	r6, r4
 80060f8:	460d      	mov	r5, r1
 80060fa:	4614      	mov	r4, r2
 80060fc:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006100:	eb06 0804 	add.w	r8, r6, r4
 8006104:	4543      	cmp	r3, r8
 8006106:	bfb8      	it	lt
 8006108:	3101      	addlt	r1, #1
 800610a:	f7ff ff1f 	bl	8005f4c <_Balloc>
 800610e:	f100 0914 	add.w	r9, r0, #20
 8006112:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006116:	45f1      	cmp	r9, lr
 8006118:	9000      	str	r0, [sp, #0]
 800611a:	d205      	bcs.n	8006128 <__multiply+0x48>
 800611c:	464b      	mov	r3, r9
 800611e:	2200      	movs	r2, #0
 8006120:	f843 2b04 	str.w	r2, [r3], #4
 8006124:	459e      	cmp	lr, r3
 8006126:	d8fb      	bhi.n	8006120 <__multiply+0x40>
 8006128:	f105 0a14 	add.w	sl, r5, #20
 800612c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006130:	f107 0314 	add.w	r3, r7, #20
 8006134:	45a2      	cmp	sl, r4
 8006136:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800613a:	d261      	bcs.n	8006200 <__multiply+0x120>
 800613c:	1b64      	subs	r4, r4, r5
 800613e:	3c15      	subs	r4, #21
 8006140:	f024 0403 	bic.w	r4, r4, #3
 8006144:	f8cd e004 	str.w	lr, [sp, #4]
 8006148:	44a2      	add	sl, r4
 800614a:	f105 0210 	add.w	r2, r5, #16
 800614e:	469e      	mov	lr, r3
 8006150:	e005      	b.n	800615e <__multiply+0x7e>
 8006152:	0c2d      	lsrs	r5, r5, #16
 8006154:	d12b      	bne.n	80061ae <__multiply+0xce>
 8006156:	4592      	cmp	sl, r2
 8006158:	f109 0904 	add.w	r9, r9, #4
 800615c:	d04e      	beq.n	80061fc <__multiply+0x11c>
 800615e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006162:	fa1f fb85 	uxth.w	fp, r5
 8006166:	f1bb 0f00 	cmp.w	fp, #0
 800616a:	d0f2      	beq.n	8006152 <__multiply+0x72>
 800616c:	4677      	mov	r7, lr
 800616e:	464e      	mov	r6, r9
 8006170:	2000      	movs	r0, #0
 8006172:	e000      	b.n	8006176 <__multiply+0x96>
 8006174:	4626      	mov	r6, r4
 8006176:	f857 1b04 	ldr.w	r1, [r7], #4
 800617a:	6834      	ldr	r4, [r6, #0]
 800617c:	b28b      	uxth	r3, r1
 800617e:	b2a5      	uxth	r5, r4
 8006180:	0c09      	lsrs	r1, r1, #16
 8006182:	0c24      	lsrs	r4, r4, #16
 8006184:	fb0b 5303 	mla	r3, fp, r3, r5
 8006188:	4403      	add	r3, r0
 800618a:	fb0b 4001 	mla	r0, fp, r1, r4
 800618e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006192:	4634      	mov	r4, r6
 8006194:	b29b      	uxth	r3, r3
 8006196:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800619a:	45bc      	cmp	ip, r7
 800619c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80061a0:	f844 3b04 	str.w	r3, [r4], #4
 80061a4:	d8e6      	bhi.n	8006174 <__multiply+0x94>
 80061a6:	6070      	str	r0, [r6, #4]
 80061a8:	6815      	ldr	r5, [r2, #0]
 80061aa:	0c2d      	lsrs	r5, r5, #16
 80061ac:	d0d3      	beq.n	8006156 <__multiply+0x76>
 80061ae:	f8d9 3000 	ldr.w	r3, [r9]
 80061b2:	4676      	mov	r6, lr
 80061b4:	4618      	mov	r0, r3
 80061b6:	46cb      	mov	fp, r9
 80061b8:	2100      	movs	r1, #0
 80061ba:	e000      	b.n	80061be <__multiply+0xde>
 80061bc:	46a3      	mov	fp, r4
 80061be:	8834      	ldrh	r4, [r6, #0]
 80061c0:	0c00      	lsrs	r0, r0, #16
 80061c2:	fb05 0004 	mla	r0, r5, r4, r0
 80061c6:	4401      	add	r1, r0
 80061c8:	b29b      	uxth	r3, r3
 80061ca:	465c      	mov	r4, fp
 80061cc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80061d0:	f844 3b04 	str.w	r3, [r4], #4
 80061d4:	f856 3b04 	ldr.w	r3, [r6], #4
 80061d8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80061dc:	0c1b      	lsrs	r3, r3, #16
 80061de:	b287      	uxth	r7, r0
 80061e0:	fb05 7303 	mla	r3, r5, r3, r7
 80061e4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80061e8:	45b4      	cmp	ip, r6
 80061ea:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80061ee:	d8e5      	bhi.n	80061bc <__multiply+0xdc>
 80061f0:	4592      	cmp	sl, r2
 80061f2:	f8cb 3004 	str.w	r3, [fp, #4]
 80061f6:	f109 0904 	add.w	r9, r9, #4
 80061fa:	d1b0      	bne.n	800615e <__multiply+0x7e>
 80061fc:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006200:	f1b8 0f00 	cmp.w	r8, #0
 8006204:	dd0b      	ble.n	800621e <__multiply+0x13e>
 8006206:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800620a:	f1ae 0e04 	sub.w	lr, lr, #4
 800620e:	b11b      	cbz	r3, 8006218 <__multiply+0x138>
 8006210:	e005      	b.n	800621e <__multiply+0x13e>
 8006212:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006216:	b913      	cbnz	r3, 800621e <__multiply+0x13e>
 8006218:	f1b8 0801 	subs.w	r8, r8, #1
 800621c:	d1f9      	bne.n	8006212 <__multiply+0x132>
 800621e:	9800      	ldr	r0, [sp, #0]
 8006220:	f8c0 8010 	str.w	r8, [r0, #16]
 8006224:	b003      	add	sp, #12
 8006226:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800622a:	bf00      	nop

0800622c <__pow5mult>:
 800622c:	f012 0303 	ands.w	r3, r2, #3
 8006230:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006234:	4614      	mov	r4, r2
 8006236:	4607      	mov	r7, r0
 8006238:	d12e      	bne.n	8006298 <__pow5mult+0x6c>
 800623a:	460d      	mov	r5, r1
 800623c:	10a4      	asrs	r4, r4, #2
 800623e:	d01c      	beq.n	800627a <__pow5mult+0x4e>
 8006240:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006242:	b396      	cbz	r6, 80062aa <__pow5mult+0x7e>
 8006244:	07e3      	lsls	r3, r4, #31
 8006246:	f04f 0800 	mov.w	r8, #0
 800624a:	d406      	bmi.n	800625a <__pow5mult+0x2e>
 800624c:	1064      	asrs	r4, r4, #1
 800624e:	d014      	beq.n	800627a <__pow5mult+0x4e>
 8006250:	6830      	ldr	r0, [r6, #0]
 8006252:	b1a8      	cbz	r0, 8006280 <__pow5mult+0x54>
 8006254:	4606      	mov	r6, r0
 8006256:	07e3      	lsls	r3, r4, #31
 8006258:	d5f8      	bpl.n	800624c <__pow5mult+0x20>
 800625a:	4632      	mov	r2, r6
 800625c:	4629      	mov	r1, r5
 800625e:	4638      	mov	r0, r7
 8006260:	f7ff ff3e 	bl	80060e0 <__multiply>
 8006264:	b1b5      	cbz	r5, 8006294 <__pow5mult+0x68>
 8006266:	686a      	ldr	r2, [r5, #4]
 8006268:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800626a:	1064      	asrs	r4, r4, #1
 800626c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006270:	6029      	str	r1, [r5, #0]
 8006272:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006276:	4605      	mov	r5, r0
 8006278:	d1ea      	bne.n	8006250 <__pow5mult+0x24>
 800627a:	4628      	mov	r0, r5
 800627c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006280:	4632      	mov	r2, r6
 8006282:	4631      	mov	r1, r6
 8006284:	4638      	mov	r0, r7
 8006286:	f7ff ff2b 	bl	80060e0 <__multiply>
 800628a:	6030      	str	r0, [r6, #0]
 800628c:	f8c0 8000 	str.w	r8, [r0]
 8006290:	4606      	mov	r6, r0
 8006292:	e7e0      	b.n	8006256 <__pow5mult+0x2a>
 8006294:	4605      	mov	r5, r0
 8006296:	e7d9      	b.n	800624c <__pow5mult+0x20>
 8006298:	3b01      	subs	r3, #1
 800629a:	4a0b      	ldr	r2, [pc, #44]	; (80062c8 <__pow5mult+0x9c>)
 800629c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80062a0:	2300      	movs	r3, #0
 80062a2:	f7ff fe83 	bl	8005fac <__multadd>
 80062a6:	4605      	mov	r5, r0
 80062a8:	e7c8      	b.n	800623c <__pow5mult+0x10>
 80062aa:	2101      	movs	r1, #1
 80062ac:	4638      	mov	r0, r7
 80062ae:	f7ff fe4d 	bl	8005f4c <_Balloc>
 80062b2:	f240 2371 	movw	r3, #625	; 0x271
 80062b6:	6143      	str	r3, [r0, #20]
 80062b8:	2201      	movs	r2, #1
 80062ba:	2300      	movs	r3, #0
 80062bc:	6102      	str	r2, [r0, #16]
 80062be:	4606      	mov	r6, r0
 80062c0:	64b8      	str	r0, [r7, #72]	; 0x48
 80062c2:	6003      	str	r3, [r0, #0]
 80062c4:	e7be      	b.n	8006244 <__pow5mult+0x18>
 80062c6:	bf00      	nop
 80062c8:	080073c8 	.word	0x080073c8

080062cc <__lshift>:
 80062cc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80062d0:	4691      	mov	r9, r2
 80062d2:	690a      	ldr	r2, [r1, #16]
 80062d4:	460e      	mov	r6, r1
 80062d6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80062da:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80062de:	eb04 0802 	add.w	r8, r4, r2
 80062e2:	f108 0501 	add.w	r5, r8, #1
 80062e6:	429d      	cmp	r5, r3
 80062e8:	4607      	mov	r7, r0
 80062ea:	dd04      	ble.n	80062f6 <__lshift+0x2a>
 80062ec:	005b      	lsls	r3, r3, #1
 80062ee:	429d      	cmp	r5, r3
 80062f0:	f101 0101 	add.w	r1, r1, #1
 80062f4:	dcfa      	bgt.n	80062ec <__lshift+0x20>
 80062f6:	4638      	mov	r0, r7
 80062f8:	f7ff fe28 	bl	8005f4c <_Balloc>
 80062fc:	2c00      	cmp	r4, #0
 80062fe:	f100 0314 	add.w	r3, r0, #20
 8006302:	dd37      	ble.n	8006374 <__lshift+0xa8>
 8006304:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006308:	2200      	movs	r2, #0
 800630a:	f843 2b04 	str.w	r2, [r3], #4
 800630e:	428b      	cmp	r3, r1
 8006310:	d1fb      	bne.n	800630a <__lshift+0x3e>
 8006312:	6934      	ldr	r4, [r6, #16]
 8006314:	f106 0314 	add.w	r3, r6, #20
 8006318:	f019 091f 	ands.w	r9, r9, #31
 800631c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006320:	d020      	beq.n	8006364 <__lshift+0x98>
 8006322:	f1c9 0e20 	rsb	lr, r9, #32
 8006326:	2200      	movs	r2, #0
 8006328:	e000      	b.n	800632c <__lshift+0x60>
 800632a:	4651      	mov	r1, sl
 800632c:	681c      	ldr	r4, [r3, #0]
 800632e:	468a      	mov	sl, r1
 8006330:	fa04 f409 	lsl.w	r4, r4, r9
 8006334:	4314      	orrs	r4, r2
 8006336:	f84a 4b04 	str.w	r4, [sl], #4
 800633a:	f853 2b04 	ldr.w	r2, [r3], #4
 800633e:	4563      	cmp	r3, ip
 8006340:	fa22 f20e 	lsr.w	r2, r2, lr
 8006344:	d3f1      	bcc.n	800632a <__lshift+0x5e>
 8006346:	604a      	str	r2, [r1, #4]
 8006348:	b10a      	cbz	r2, 800634e <__lshift+0x82>
 800634a:	f108 0502 	add.w	r5, r8, #2
 800634e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006350:	6872      	ldr	r2, [r6, #4]
 8006352:	3d01      	subs	r5, #1
 8006354:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006358:	6105      	str	r5, [r0, #16]
 800635a:	6031      	str	r1, [r6, #0]
 800635c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006360:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006364:	3904      	subs	r1, #4
 8006366:	f853 2b04 	ldr.w	r2, [r3], #4
 800636a:	f841 2f04 	str.w	r2, [r1, #4]!
 800636e:	459c      	cmp	ip, r3
 8006370:	d8f9      	bhi.n	8006366 <__lshift+0x9a>
 8006372:	e7ec      	b.n	800634e <__lshift+0x82>
 8006374:	4619      	mov	r1, r3
 8006376:	e7cc      	b.n	8006312 <__lshift+0x46>

08006378 <__mcmp>:
 8006378:	b430      	push	{r4, r5}
 800637a:	690b      	ldr	r3, [r1, #16]
 800637c:	4605      	mov	r5, r0
 800637e:	6900      	ldr	r0, [r0, #16]
 8006380:	1ac0      	subs	r0, r0, r3
 8006382:	d10f      	bne.n	80063a4 <__mcmp+0x2c>
 8006384:	009b      	lsls	r3, r3, #2
 8006386:	3514      	adds	r5, #20
 8006388:	3114      	adds	r1, #20
 800638a:	4419      	add	r1, r3
 800638c:	442b      	add	r3, r5
 800638e:	e001      	b.n	8006394 <__mcmp+0x1c>
 8006390:	429d      	cmp	r5, r3
 8006392:	d207      	bcs.n	80063a4 <__mcmp+0x2c>
 8006394:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006398:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800639c:	4294      	cmp	r4, r2
 800639e:	d0f7      	beq.n	8006390 <__mcmp+0x18>
 80063a0:	d302      	bcc.n	80063a8 <__mcmp+0x30>
 80063a2:	2001      	movs	r0, #1
 80063a4:	bc30      	pop	{r4, r5}
 80063a6:	4770      	bx	lr
 80063a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80063ac:	e7fa      	b.n	80063a4 <__mcmp+0x2c>
 80063ae:	bf00      	nop

080063b0 <__mdiff>:
 80063b0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80063b4:	6913      	ldr	r3, [r2, #16]
 80063b6:	690d      	ldr	r5, [r1, #16]
 80063b8:	1aed      	subs	r5, r5, r3
 80063ba:	2d00      	cmp	r5, #0
 80063bc:	460e      	mov	r6, r1
 80063be:	4690      	mov	r8, r2
 80063c0:	f101 0414 	add.w	r4, r1, #20
 80063c4:	f102 0714 	add.w	r7, r2, #20
 80063c8:	d114      	bne.n	80063f4 <__mdiff+0x44>
 80063ca:	009b      	lsls	r3, r3, #2
 80063cc:	18e2      	adds	r2, r4, r3
 80063ce:	443b      	add	r3, r7
 80063d0:	e001      	b.n	80063d6 <__mdiff+0x26>
 80063d2:	42a2      	cmp	r2, r4
 80063d4:	d959      	bls.n	800648a <__mdiff+0xda>
 80063d6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80063da:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80063de:	458c      	cmp	ip, r1
 80063e0:	d0f7      	beq.n	80063d2 <__mdiff+0x22>
 80063e2:	d209      	bcs.n	80063f8 <__mdiff+0x48>
 80063e4:	4622      	mov	r2, r4
 80063e6:	4633      	mov	r3, r6
 80063e8:	463c      	mov	r4, r7
 80063ea:	4646      	mov	r6, r8
 80063ec:	4617      	mov	r7, r2
 80063ee:	4698      	mov	r8, r3
 80063f0:	2501      	movs	r5, #1
 80063f2:	e001      	b.n	80063f8 <__mdiff+0x48>
 80063f4:	dbf6      	blt.n	80063e4 <__mdiff+0x34>
 80063f6:	2500      	movs	r5, #0
 80063f8:	6871      	ldr	r1, [r6, #4]
 80063fa:	f7ff fda7 	bl	8005f4c <_Balloc>
 80063fe:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006402:	6936      	ldr	r6, [r6, #16]
 8006404:	60c5      	str	r5, [r0, #12]
 8006406:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800640a:	46bc      	mov	ip, r7
 800640c:	f100 0514 	add.w	r5, r0, #20
 8006410:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006414:	2300      	movs	r3, #0
 8006416:	f85c 1b04 	ldr.w	r1, [ip], #4
 800641a:	f854 8b04 	ldr.w	r8, [r4], #4
 800641e:	b28a      	uxth	r2, r1
 8006420:	fa13 f388 	uxtah	r3, r3, r8
 8006424:	0c09      	lsrs	r1, r1, #16
 8006426:	1a9a      	subs	r2, r3, r2
 8006428:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800642c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006430:	b292      	uxth	r2, r2
 8006432:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006436:	45e6      	cmp	lr, ip
 8006438:	f845 2b04 	str.w	r2, [r5], #4
 800643c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006440:	d8e9      	bhi.n	8006416 <__mdiff+0x66>
 8006442:	42a7      	cmp	r7, r4
 8006444:	d917      	bls.n	8006476 <__mdiff+0xc6>
 8006446:	46ae      	mov	lr, r5
 8006448:	46a4      	mov	ip, r4
 800644a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800644e:	fa13 f382 	uxtah	r3, r3, r2
 8006452:	1419      	asrs	r1, r3, #16
 8006454:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006458:	b29b      	uxth	r3, r3
 800645a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800645e:	4567      	cmp	r7, ip
 8006460:	f84e 2b04 	str.w	r2, [lr], #4
 8006464:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006468:	d8ef      	bhi.n	800644a <__mdiff+0x9a>
 800646a:	43e4      	mvns	r4, r4
 800646c:	4427      	add	r7, r4
 800646e:	f027 0703 	bic.w	r7, r7, #3
 8006472:	3704      	adds	r7, #4
 8006474:	443d      	add	r5, r7
 8006476:	3d04      	subs	r5, #4
 8006478:	b922      	cbnz	r2, 8006484 <__mdiff+0xd4>
 800647a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800647e:	3e01      	subs	r6, #1
 8006480:	2b00      	cmp	r3, #0
 8006482:	d0fa      	beq.n	800647a <__mdiff+0xca>
 8006484:	6106      	str	r6, [r0, #16]
 8006486:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800648a:	2100      	movs	r1, #0
 800648c:	f7ff fd5e 	bl	8005f4c <_Balloc>
 8006490:	2201      	movs	r2, #1
 8006492:	2300      	movs	r3, #0
 8006494:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006498:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800649c <__d2b>:
 800649c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80064a0:	460f      	mov	r7, r1
 80064a2:	b083      	sub	sp, #12
 80064a4:	2101      	movs	r1, #1
 80064a6:	ec55 4b10 	vmov	r4, r5, d0
 80064aa:	4616      	mov	r6, r2
 80064ac:	f7ff fd4e 	bl	8005f4c <_Balloc>
 80064b0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80064b4:	4681      	mov	r9, r0
 80064b6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80064ba:	f1b8 0f00 	cmp.w	r8, #0
 80064be:	d001      	beq.n	80064c4 <__d2b+0x28>
 80064c0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80064c4:	2c00      	cmp	r4, #0
 80064c6:	9301      	str	r3, [sp, #4]
 80064c8:	d024      	beq.n	8006514 <__d2b+0x78>
 80064ca:	a802      	add	r0, sp, #8
 80064cc:	f840 4d08 	str.w	r4, [r0, #-8]!
 80064d0:	f7ff fdcc 	bl	800606c <__lo0bits>
 80064d4:	2800      	cmp	r0, #0
 80064d6:	d136      	bne.n	8006546 <__d2b+0xaa>
 80064d8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80064dc:	f8c9 2014 	str.w	r2, [r9, #20]
 80064e0:	2b00      	cmp	r3, #0
 80064e2:	bf0c      	ite	eq
 80064e4:	2101      	moveq	r1, #1
 80064e6:	2102      	movne	r1, #2
 80064e8:	f8c9 3018 	str.w	r3, [r9, #24]
 80064ec:	f8c9 1010 	str.w	r1, [r9, #16]
 80064f0:	f1b8 0f00 	cmp.w	r8, #0
 80064f4:	d11b      	bne.n	800652e <__d2b+0x92>
 80064f6:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80064fa:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80064fe:	6038      	str	r0, [r7, #0]
 8006500:	6918      	ldr	r0, [r3, #16]
 8006502:	f7ff fd93 	bl	800602c <__hi0bits>
 8006506:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800650a:	6030      	str	r0, [r6, #0]
 800650c:	4648      	mov	r0, r9
 800650e:	b003      	add	sp, #12
 8006510:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006514:	a801      	add	r0, sp, #4
 8006516:	f7ff fda9 	bl	800606c <__lo0bits>
 800651a:	9b01      	ldr	r3, [sp, #4]
 800651c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006520:	2101      	movs	r1, #1
 8006522:	3020      	adds	r0, #32
 8006524:	f8c9 1010 	str.w	r1, [r9, #16]
 8006528:	f1b8 0f00 	cmp.w	r8, #0
 800652c:	d0e3      	beq.n	80064f6 <__d2b+0x5a>
 800652e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006532:	eb08 0300 	add.w	r3, r8, r0
 8006536:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800653a:	603b      	str	r3, [r7, #0]
 800653c:	6030      	str	r0, [r6, #0]
 800653e:	4648      	mov	r0, r9
 8006540:	b003      	add	sp, #12
 8006542:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006546:	e9dd 1300 	ldrd	r1, r3, [sp]
 800654a:	f1c0 0220 	rsb	r2, r0, #32
 800654e:	fa03 f202 	lsl.w	r2, r3, r2
 8006552:	430a      	orrs	r2, r1
 8006554:	40c3      	lsrs	r3, r0
 8006556:	9301      	str	r3, [sp, #4]
 8006558:	f8c9 2014 	str.w	r2, [r9, #20]
 800655c:	e7c0      	b.n	80064e0 <__d2b+0x44>
 800655e:	bf00      	nop

08006560 <_realloc_r>:
 8006560:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006564:	4692      	mov	sl, r2
 8006566:	b083      	sub	sp, #12
 8006568:	2900      	cmp	r1, #0
 800656a:	f000 80a1 	beq.w	80066b0 <_realloc_r+0x150>
 800656e:	460d      	mov	r5, r1
 8006570:	4680      	mov	r8, r0
 8006572:	f10a 040b 	add.w	r4, sl, #11
 8006576:	f7ff fcdd 	bl	8005f34 <__malloc_lock>
 800657a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800657e:	2c16      	cmp	r4, #22
 8006580:	f022 0603 	bic.w	r6, r2, #3
 8006584:	f1a5 0708 	sub.w	r7, r5, #8
 8006588:	d83e      	bhi.n	8006608 <_realloc_r+0xa8>
 800658a:	2410      	movs	r4, #16
 800658c:	4621      	mov	r1, r4
 800658e:	45a2      	cmp	sl, r4
 8006590:	d83f      	bhi.n	8006612 <_realloc_r+0xb2>
 8006592:	428e      	cmp	r6, r1
 8006594:	eb07 0906 	add.w	r9, r7, r6
 8006598:	da74      	bge.n	8006684 <_realloc_r+0x124>
 800659a:	4bc7      	ldr	r3, [pc, #796]	; (80068b8 <_realloc_r+0x358>)
 800659c:	6898      	ldr	r0, [r3, #8]
 800659e:	4548      	cmp	r0, r9
 80065a0:	f000 80aa 	beq.w	80066f8 <_realloc_r+0x198>
 80065a4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80065a8:	f020 0301 	bic.w	r3, r0, #1
 80065ac:	444b      	add	r3, r9
 80065ae:	685b      	ldr	r3, [r3, #4]
 80065b0:	07db      	lsls	r3, r3, #31
 80065b2:	f140 8083 	bpl.w	80066bc <_realloc_r+0x15c>
 80065b6:	07d2      	lsls	r2, r2, #31
 80065b8:	d534      	bpl.n	8006624 <_realloc_r+0xc4>
 80065ba:	4651      	mov	r1, sl
 80065bc:	4640      	mov	r0, r8
 80065be:	f7ff f9b1 	bl	8005924 <_malloc_r>
 80065c2:	4682      	mov	sl, r0
 80065c4:	b1e0      	cbz	r0, 8006600 <_realloc_r+0xa0>
 80065c6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80065ca:	f023 0301 	bic.w	r3, r3, #1
 80065ce:	443b      	add	r3, r7
 80065d0:	f1a0 0208 	sub.w	r2, r0, #8
 80065d4:	4293      	cmp	r3, r2
 80065d6:	f000 80f9 	beq.w	80067cc <_realloc_r+0x26c>
 80065da:	1f32      	subs	r2, r6, #4
 80065dc:	2a24      	cmp	r2, #36	; 0x24
 80065de:	f200 8107 	bhi.w	80067f0 <_realloc_r+0x290>
 80065e2:	2a13      	cmp	r2, #19
 80065e4:	6829      	ldr	r1, [r5, #0]
 80065e6:	f200 80e6 	bhi.w	80067b6 <_realloc_r+0x256>
 80065ea:	4603      	mov	r3, r0
 80065ec:	462a      	mov	r2, r5
 80065ee:	6019      	str	r1, [r3, #0]
 80065f0:	6851      	ldr	r1, [r2, #4]
 80065f2:	6059      	str	r1, [r3, #4]
 80065f4:	6892      	ldr	r2, [r2, #8]
 80065f6:	609a      	str	r2, [r3, #8]
 80065f8:	4629      	mov	r1, r5
 80065fa:	4640      	mov	r0, r8
 80065fc:	f7fe fe68 	bl	80052d0 <_free_r>
 8006600:	4640      	mov	r0, r8
 8006602:	f7ff fc9d 	bl	8005f40 <__malloc_unlock>
 8006606:	e04f      	b.n	80066a8 <_realloc_r+0x148>
 8006608:	f024 0407 	bic.w	r4, r4, #7
 800660c:	2c00      	cmp	r4, #0
 800660e:	4621      	mov	r1, r4
 8006610:	dabd      	bge.n	800658e <_realloc_r+0x2e>
 8006612:	f04f 0a00 	mov.w	sl, #0
 8006616:	230c      	movs	r3, #12
 8006618:	4650      	mov	r0, sl
 800661a:	f8c8 3000 	str.w	r3, [r8]
 800661e:	b003      	add	sp, #12
 8006620:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006624:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006628:	eba7 0b03 	sub.w	fp, r7, r3
 800662c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006630:	f022 0203 	bic.w	r2, r2, #3
 8006634:	18b3      	adds	r3, r6, r2
 8006636:	428b      	cmp	r3, r1
 8006638:	dbbf      	blt.n	80065ba <_realloc_r+0x5a>
 800663a:	46da      	mov	sl, fp
 800663c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006640:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006644:	1f32      	subs	r2, r6, #4
 8006646:	2a24      	cmp	r2, #36	; 0x24
 8006648:	60c1      	str	r1, [r0, #12]
 800664a:	eb0b 0903 	add.w	r9, fp, r3
 800664e:	6088      	str	r0, [r1, #8]
 8006650:	f200 80c6 	bhi.w	80067e0 <_realloc_r+0x280>
 8006654:	2a13      	cmp	r2, #19
 8006656:	6829      	ldr	r1, [r5, #0]
 8006658:	f240 80c0 	bls.w	80067dc <_realloc_r+0x27c>
 800665c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006660:	6869      	ldr	r1, [r5, #4]
 8006662:	f8cb 100c 	str.w	r1, [fp, #12]
 8006666:	2a1b      	cmp	r2, #27
 8006668:	68a9      	ldr	r1, [r5, #8]
 800666a:	f200 80d8 	bhi.w	800681e <_realloc_r+0x2be>
 800666e:	f10b 0210 	add.w	r2, fp, #16
 8006672:	3508      	adds	r5, #8
 8006674:	6011      	str	r1, [r2, #0]
 8006676:	6869      	ldr	r1, [r5, #4]
 8006678:	6051      	str	r1, [r2, #4]
 800667a:	68a9      	ldr	r1, [r5, #8]
 800667c:	6091      	str	r1, [r2, #8]
 800667e:	461e      	mov	r6, r3
 8006680:	465f      	mov	r7, fp
 8006682:	4655      	mov	r5, sl
 8006684:	687b      	ldr	r3, [r7, #4]
 8006686:	1b32      	subs	r2, r6, r4
 8006688:	2a0f      	cmp	r2, #15
 800668a:	f003 0301 	and.w	r3, r3, #1
 800668e:	d822      	bhi.n	80066d6 <_realloc_r+0x176>
 8006690:	4333      	orrs	r3, r6
 8006692:	607b      	str	r3, [r7, #4]
 8006694:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006698:	f043 0301 	orr.w	r3, r3, #1
 800669c:	f8c9 3004 	str.w	r3, [r9, #4]
 80066a0:	4640      	mov	r0, r8
 80066a2:	f7ff fc4d 	bl	8005f40 <__malloc_unlock>
 80066a6:	46aa      	mov	sl, r5
 80066a8:	4650      	mov	r0, sl
 80066aa:	b003      	add	sp, #12
 80066ac:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066b0:	4611      	mov	r1, r2
 80066b2:	b003      	add	sp, #12
 80066b4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066b8:	f7ff b934 	b.w	8005924 <_malloc_r>
 80066bc:	f020 0003 	bic.w	r0, r0, #3
 80066c0:	1833      	adds	r3, r6, r0
 80066c2:	428b      	cmp	r3, r1
 80066c4:	db61      	blt.n	800678a <_realloc_r+0x22a>
 80066c6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80066ca:	461e      	mov	r6, r3
 80066cc:	60ca      	str	r2, [r1, #12]
 80066ce:	eb07 0903 	add.w	r9, r7, r3
 80066d2:	6091      	str	r1, [r2, #8]
 80066d4:	e7d6      	b.n	8006684 <_realloc_r+0x124>
 80066d6:	1939      	adds	r1, r7, r4
 80066d8:	4323      	orrs	r3, r4
 80066da:	f042 0201 	orr.w	r2, r2, #1
 80066de:	607b      	str	r3, [r7, #4]
 80066e0:	604a      	str	r2, [r1, #4]
 80066e2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80066e6:	f043 0301 	orr.w	r3, r3, #1
 80066ea:	3108      	adds	r1, #8
 80066ec:	f8c9 3004 	str.w	r3, [r9, #4]
 80066f0:	4640      	mov	r0, r8
 80066f2:	f7fe fded 	bl	80052d0 <_free_r>
 80066f6:	e7d3      	b.n	80066a0 <_realloc_r+0x140>
 80066f8:	6840      	ldr	r0, [r0, #4]
 80066fa:	f020 0903 	bic.w	r9, r0, #3
 80066fe:	44b1      	add	r9, r6
 8006700:	f104 0010 	add.w	r0, r4, #16
 8006704:	4581      	cmp	r9, r0
 8006706:	da77      	bge.n	80067f8 <_realloc_r+0x298>
 8006708:	07d2      	lsls	r2, r2, #31
 800670a:	f53f af56 	bmi.w	80065ba <_realloc_r+0x5a>
 800670e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006712:	eba7 0b02 	sub.w	fp, r7, r2
 8006716:	f8db 2004 	ldr.w	r2, [fp, #4]
 800671a:	f022 0203 	bic.w	r2, r2, #3
 800671e:	4491      	add	r9, r2
 8006720:	4548      	cmp	r0, r9
 8006722:	dc87      	bgt.n	8006634 <_realloc_r+0xd4>
 8006724:	46da      	mov	sl, fp
 8006726:	f8db 100c 	ldr.w	r1, [fp, #12]
 800672a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800672e:	1f32      	subs	r2, r6, #4
 8006730:	2a24      	cmp	r2, #36	; 0x24
 8006732:	60c1      	str	r1, [r0, #12]
 8006734:	6088      	str	r0, [r1, #8]
 8006736:	f200 80a1 	bhi.w	800687c <_realloc_r+0x31c>
 800673a:	2a13      	cmp	r2, #19
 800673c:	6829      	ldr	r1, [r5, #0]
 800673e:	f240 809b 	bls.w	8006878 <_realloc_r+0x318>
 8006742:	f8cb 1008 	str.w	r1, [fp, #8]
 8006746:	6869      	ldr	r1, [r5, #4]
 8006748:	f8cb 100c 	str.w	r1, [fp, #12]
 800674c:	2a1b      	cmp	r2, #27
 800674e:	68a9      	ldr	r1, [r5, #8]
 8006750:	f200 809b 	bhi.w	800688a <_realloc_r+0x32a>
 8006754:	f10b 0210 	add.w	r2, fp, #16
 8006758:	3508      	adds	r5, #8
 800675a:	6011      	str	r1, [r2, #0]
 800675c:	6869      	ldr	r1, [r5, #4]
 800675e:	6051      	str	r1, [r2, #4]
 8006760:	68a9      	ldr	r1, [r5, #8]
 8006762:	6091      	str	r1, [r2, #8]
 8006764:	eb0b 0104 	add.w	r1, fp, r4
 8006768:	eba9 0204 	sub.w	r2, r9, r4
 800676c:	f042 0201 	orr.w	r2, r2, #1
 8006770:	6099      	str	r1, [r3, #8]
 8006772:	604a      	str	r2, [r1, #4]
 8006774:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006778:	f003 0301 	and.w	r3, r3, #1
 800677c:	431c      	orrs	r4, r3
 800677e:	4640      	mov	r0, r8
 8006780:	f8cb 4004 	str.w	r4, [fp, #4]
 8006784:	f7ff fbdc 	bl	8005f40 <__malloc_unlock>
 8006788:	e78e      	b.n	80066a8 <_realloc_r+0x148>
 800678a:	07d3      	lsls	r3, r2, #31
 800678c:	f53f af15 	bmi.w	80065ba <_realloc_r+0x5a>
 8006790:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006794:	eba7 0b03 	sub.w	fp, r7, r3
 8006798:	f8db 2004 	ldr.w	r2, [fp, #4]
 800679c:	f022 0203 	bic.w	r2, r2, #3
 80067a0:	4410      	add	r0, r2
 80067a2:	1983      	adds	r3, r0, r6
 80067a4:	428b      	cmp	r3, r1
 80067a6:	f6ff af45 	blt.w	8006634 <_realloc_r+0xd4>
 80067aa:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80067ae:	46da      	mov	sl, fp
 80067b0:	60ca      	str	r2, [r1, #12]
 80067b2:	6091      	str	r1, [r2, #8]
 80067b4:	e742      	b.n	800663c <_realloc_r+0xdc>
 80067b6:	6001      	str	r1, [r0, #0]
 80067b8:	686b      	ldr	r3, [r5, #4]
 80067ba:	6043      	str	r3, [r0, #4]
 80067bc:	2a1b      	cmp	r2, #27
 80067be:	d83a      	bhi.n	8006836 <_realloc_r+0x2d6>
 80067c0:	f105 0208 	add.w	r2, r5, #8
 80067c4:	f100 0308 	add.w	r3, r0, #8
 80067c8:	68a9      	ldr	r1, [r5, #8]
 80067ca:	e710      	b.n	80065ee <_realloc_r+0x8e>
 80067cc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80067d0:	f023 0303 	bic.w	r3, r3, #3
 80067d4:	441e      	add	r6, r3
 80067d6:	eb07 0906 	add.w	r9, r7, r6
 80067da:	e753      	b.n	8006684 <_realloc_r+0x124>
 80067dc:	4652      	mov	r2, sl
 80067de:	e749      	b.n	8006674 <_realloc_r+0x114>
 80067e0:	4629      	mov	r1, r5
 80067e2:	4650      	mov	r0, sl
 80067e4:	461e      	mov	r6, r3
 80067e6:	465f      	mov	r7, fp
 80067e8:	f7ff fb40 	bl	8005e6c <memmove>
 80067ec:	4655      	mov	r5, sl
 80067ee:	e749      	b.n	8006684 <_realloc_r+0x124>
 80067f0:	4629      	mov	r1, r5
 80067f2:	f7ff fb3b 	bl	8005e6c <memmove>
 80067f6:	e6ff      	b.n	80065f8 <_realloc_r+0x98>
 80067f8:	4427      	add	r7, r4
 80067fa:	eba9 0904 	sub.w	r9, r9, r4
 80067fe:	f049 0201 	orr.w	r2, r9, #1
 8006802:	609f      	str	r7, [r3, #8]
 8006804:	607a      	str	r2, [r7, #4]
 8006806:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800680a:	f003 0301 	and.w	r3, r3, #1
 800680e:	431c      	orrs	r4, r3
 8006810:	4640      	mov	r0, r8
 8006812:	f845 4c04 	str.w	r4, [r5, #-4]
 8006816:	f7ff fb93 	bl	8005f40 <__malloc_unlock>
 800681a:	46aa      	mov	sl, r5
 800681c:	e744      	b.n	80066a8 <_realloc_r+0x148>
 800681e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006822:	68e9      	ldr	r1, [r5, #12]
 8006824:	f8cb 1014 	str.w	r1, [fp, #20]
 8006828:	2a24      	cmp	r2, #36	; 0x24
 800682a:	d010      	beq.n	800684e <_realloc_r+0x2ee>
 800682c:	6929      	ldr	r1, [r5, #16]
 800682e:	f10b 0218 	add.w	r2, fp, #24
 8006832:	3510      	adds	r5, #16
 8006834:	e71e      	b.n	8006674 <_realloc_r+0x114>
 8006836:	68ab      	ldr	r3, [r5, #8]
 8006838:	6083      	str	r3, [r0, #8]
 800683a:	68eb      	ldr	r3, [r5, #12]
 800683c:	60c3      	str	r3, [r0, #12]
 800683e:	2a24      	cmp	r2, #36	; 0x24
 8006840:	d010      	beq.n	8006864 <_realloc_r+0x304>
 8006842:	f105 0210 	add.w	r2, r5, #16
 8006846:	f100 0310 	add.w	r3, r0, #16
 800684a:	6929      	ldr	r1, [r5, #16]
 800684c:	e6cf      	b.n	80065ee <_realloc_r+0x8e>
 800684e:	692a      	ldr	r2, [r5, #16]
 8006850:	f8cb 2018 	str.w	r2, [fp, #24]
 8006854:	696a      	ldr	r2, [r5, #20]
 8006856:	f8cb 201c 	str.w	r2, [fp, #28]
 800685a:	69a9      	ldr	r1, [r5, #24]
 800685c:	f10b 0220 	add.w	r2, fp, #32
 8006860:	3518      	adds	r5, #24
 8006862:	e707      	b.n	8006674 <_realloc_r+0x114>
 8006864:	692b      	ldr	r3, [r5, #16]
 8006866:	6103      	str	r3, [r0, #16]
 8006868:	696b      	ldr	r3, [r5, #20]
 800686a:	6143      	str	r3, [r0, #20]
 800686c:	69a9      	ldr	r1, [r5, #24]
 800686e:	f105 0218 	add.w	r2, r5, #24
 8006872:	f100 0318 	add.w	r3, r0, #24
 8006876:	e6ba      	b.n	80065ee <_realloc_r+0x8e>
 8006878:	4652      	mov	r2, sl
 800687a:	e76e      	b.n	800675a <_realloc_r+0x1fa>
 800687c:	4629      	mov	r1, r5
 800687e:	4650      	mov	r0, sl
 8006880:	9301      	str	r3, [sp, #4]
 8006882:	f7ff faf3 	bl	8005e6c <memmove>
 8006886:	9b01      	ldr	r3, [sp, #4]
 8006888:	e76c      	b.n	8006764 <_realloc_r+0x204>
 800688a:	f8cb 1010 	str.w	r1, [fp, #16]
 800688e:	68e9      	ldr	r1, [r5, #12]
 8006890:	f8cb 1014 	str.w	r1, [fp, #20]
 8006894:	2a24      	cmp	r2, #36	; 0x24
 8006896:	d004      	beq.n	80068a2 <_realloc_r+0x342>
 8006898:	6929      	ldr	r1, [r5, #16]
 800689a:	f10b 0218 	add.w	r2, fp, #24
 800689e:	3510      	adds	r5, #16
 80068a0:	e75b      	b.n	800675a <_realloc_r+0x1fa>
 80068a2:	692a      	ldr	r2, [r5, #16]
 80068a4:	f8cb 2018 	str.w	r2, [fp, #24]
 80068a8:	696a      	ldr	r2, [r5, #20]
 80068aa:	f8cb 201c 	str.w	r2, [fp, #28]
 80068ae:	69a9      	ldr	r1, [r5, #24]
 80068b0:	f10b 0220 	add.w	r2, fp, #32
 80068b4:	3518      	adds	r5, #24
 80068b6:	e750      	b.n	800675a <_realloc_r+0x1fa>
 80068b8:	2000044c 	.word	0x2000044c

080068bc <frexp>:
 80068bc:	ec53 2b10 	vmov	r2, r3, d0
 80068c0:	b570      	push	{r4, r5, r6, lr}
 80068c2:	4e16      	ldr	r6, [pc, #88]	; (800691c <frexp+0x60>)
 80068c4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80068c8:	2500      	movs	r5, #0
 80068ca:	42b1      	cmp	r1, r6
 80068cc:	4604      	mov	r4, r0
 80068ce:	6005      	str	r5, [r0, #0]
 80068d0:	dc21      	bgt.n	8006916 <frexp+0x5a>
 80068d2:	ee10 6a10 	vmov	r6, s0
 80068d6:	430e      	orrs	r6, r1
 80068d8:	d01d      	beq.n	8006916 <frexp+0x5a>
 80068da:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80068de:	4618      	mov	r0, r3
 80068e0:	da0c      	bge.n	80068fc <frexp+0x40>
 80068e2:	4619      	mov	r1, r3
 80068e4:	2200      	movs	r2, #0
 80068e6:	ee10 0a10 	vmov	r0, s0
 80068ea:	4b0d      	ldr	r3, [pc, #52]	; (8006920 <frexp+0x64>)
 80068ec:	f7fa f924 	bl	8000b38 <__aeabi_dmul>
 80068f0:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80068f4:	4602      	mov	r2, r0
 80068f6:	4608      	mov	r0, r1
 80068f8:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80068fc:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006900:	1509      	asrs	r1, r1, #20
 8006902:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006906:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800690a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800690e:	4429      	add	r1, r5
 8006910:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006914:	6021      	str	r1, [r4, #0]
 8006916:	ec43 2b10 	vmov	d0, r2, r3
 800691a:	bd70      	pop	{r4, r5, r6, pc}
 800691c:	7fefffff 	.word	0x7fefffff
 8006920:	43500000 	.word	0x43500000

08006924 <_sbrk_r>:
 8006924:	b538      	push	{r3, r4, r5, lr}
 8006926:	4c07      	ldr	r4, [pc, #28]	; (8006944 <_sbrk_r+0x20>)
 8006928:	2300      	movs	r3, #0
 800692a:	4605      	mov	r5, r0
 800692c:	4608      	mov	r0, r1
 800692e:	6023      	str	r3, [r4, #0]
 8006930:	f7fb fc32 	bl	8002198 <_sbrk>
 8006934:	1c43      	adds	r3, r0, #1
 8006936:	d000      	beq.n	800693a <_sbrk_r+0x16>
 8006938:	bd38      	pop	{r3, r4, r5, pc}
 800693a:	6823      	ldr	r3, [r4, #0]
 800693c:	2b00      	cmp	r3, #0
 800693e:	d0fb      	beq.n	8006938 <_sbrk_r+0x14>
 8006940:	602b      	str	r3, [r5, #0]
 8006942:	bd38      	pop	{r3, r4, r5, pc}
 8006944:	20000e10 	.word	0x20000e10

08006948 <__sread>:
 8006948:	b510      	push	{r4, lr}
 800694a:	460c      	mov	r4, r1
 800694c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006950:	f000 fabc 	bl	8006ecc <_read_r>
 8006954:	2800      	cmp	r0, #0
 8006956:	db03      	blt.n	8006960 <__sread+0x18>
 8006958:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800695a:	4403      	add	r3, r0
 800695c:	6523      	str	r3, [r4, #80]	; 0x50
 800695e:	bd10      	pop	{r4, pc}
 8006960:	89a3      	ldrh	r3, [r4, #12]
 8006962:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006966:	81a3      	strh	r3, [r4, #12]
 8006968:	bd10      	pop	{r4, pc}
 800696a:	bf00      	nop

0800696c <__swrite>:
 800696c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006970:	4616      	mov	r6, r2
 8006972:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006976:	461f      	mov	r7, r3
 8006978:	05d3      	lsls	r3, r2, #23
 800697a:	460c      	mov	r4, r1
 800697c:	4605      	mov	r5, r0
 800697e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006982:	d507      	bpl.n	8006994 <__swrite+0x28>
 8006984:	2200      	movs	r2, #0
 8006986:	2302      	movs	r3, #2
 8006988:	f000 fa74 	bl	8006e74 <_lseek_r>
 800698c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006990:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006994:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006998:	81a2      	strh	r2, [r4, #12]
 800699a:	463b      	mov	r3, r7
 800699c:	4632      	mov	r2, r6
 800699e:	4628      	mov	r0, r5
 80069a0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80069a4:	f000 b88c 	b.w	8006ac0 <_write_r>

080069a8 <__sseek>:
 80069a8:	b510      	push	{r4, lr}
 80069aa:	460c      	mov	r4, r1
 80069ac:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069b0:	f000 fa60 	bl	8006e74 <_lseek_r>
 80069b4:	89a3      	ldrh	r3, [r4, #12]
 80069b6:	1c42      	adds	r2, r0, #1
 80069b8:	bf0e      	itee	eq
 80069ba:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80069be:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80069c2:	6520      	strne	r0, [r4, #80]	; 0x50
 80069c4:	81a3      	strh	r3, [r4, #12]
 80069c6:	bd10      	pop	{r4, pc}

080069c8 <__sclose>:
 80069c8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069cc:	f000 b922 	b.w	8006c14 <_close_r>

080069d0 <strncpy>:
 80069d0:	ea40 0301 	orr.w	r3, r0, r1
 80069d4:	079b      	lsls	r3, r3, #30
 80069d6:	b470      	push	{r4, r5, r6}
 80069d8:	d12a      	bne.n	8006a30 <strncpy+0x60>
 80069da:	2a03      	cmp	r2, #3
 80069dc:	d928      	bls.n	8006a30 <strncpy+0x60>
 80069de:	460c      	mov	r4, r1
 80069e0:	4603      	mov	r3, r0
 80069e2:	4621      	mov	r1, r4
 80069e4:	f854 6b04 	ldr.w	r6, [r4], #4
 80069e8:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 80069ec:	ea25 0506 	bic.w	r5, r5, r6
 80069f0:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 80069f4:	d106      	bne.n	8006a04 <strncpy+0x34>
 80069f6:	3a04      	subs	r2, #4
 80069f8:	2a03      	cmp	r2, #3
 80069fa:	f843 6b04 	str.w	r6, [r3], #4
 80069fe:	4621      	mov	r1, r4
 8006a00:	d8ef      	bhi.n	80069e2 <strncpy+0x12>
 8006a02:	b19a      	cbz	r2, 8006a2c <strncpy+0x5c>
 8006a04:	780c      	ldrb	r4, [r1, #0]
 8006a06:	701c      	strb	r4, [r3, #0]
 8006a08:	3a01      	subs	r2, #1
 8006a0a:	3301      	adds	r3, #1
 8006a0c:	b13c      	cbz	r4, 8006a1e <strncpy+0x4e>
 8006a0e:	b16a      	cbz	r2, 8006a2c <strncpy+0x5c>
 8006a10:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006a14:	f803 4b01 	strb.w	r4, [r3], #1
 8006a18:	3a01      	subs	r2, #1
 8006a1a:	2c00      	cmp	r4, #0
 8006a1c:	d1f7      	bne.n	8006a0e <strncpy+0x3e>
 8006a1e:	b12a      	cbz	r2, 8006a2c <strncpy+0x5c>
 8006a20:	441a      	add	r2, r3
 8006a22:	2100      	movs	r1, #0
 8006a24:	f803 1b01 	strb.w	r1, [r3], #1
 8006a28:	4293      	cmp	r3, r2
 8006a2a:	d1fb      	bne.n	8006a24 <strncpy+0x54>
 8006a2c:	bc70      	pop	{r4, r5, r6}
 8006a2e:	4770      	bx	lr
 8006a30:	4603      	mov	r3, r0
 8006a32:	e7e6      	b.n	8006a02 <strncpy+0x32>

08006a34 <__sprint_r.part.0>:
 8006a34:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a38:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006a3a:	049c      	lsls	r4, r3, #18
 8006a3c:	4692      	mov	sl, r2
 8006a3e:	d52d      	bpl.n	8006a9c <__sprint_r.part.0+0x68>
 8006a40:	6893      	ldr	r3, [r2, #8]
 8006a42:	6812      	ldr	r2, [r2, #0]
 8006a44:	b343      	cbz	r3, 8006a98 <__sprint_r.part.0+0x64>
 8006a46:	460e      	mov	r6, r1
 8006a48:	4607      	mov	r7, r0
 8006a4a:	f102 0908 	add.w	r9, r2, #8
 8006a4e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006a52:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006a56:	d015      	beq.n	8006a84 <__sprint_r.part.0+0x50>
 8006a58:	3d04      	subs	r5, #4
 8006a5a:	2400      	movs	r4, #0
 8006a5c:	e001      	b.n	8006a62 <__sprint_r.part.0+0x2e>
 8006a5e:	45a0      	cmp	r8, r4
 8006a60:	d00e      	beq.n	8006a80 <__sprint_r.part.0+0x4c>
 8006a62:	4632      	mov	r2, r6
 8006a64:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006a68:	4638      	mov	r0, r7
 8006a6a:	f000 f99d 	bl	8006da8 <_fputwc_r>
 8006a6e:	1c43      	adds	r3, r0, #1
 8006a70:	f104 0401 	add.w	r4, r4, #1
 8006a74:	d1f3      	bne.n	8006a5e <__sprint_r.part.0+0x2a>
 8006a76:	2300      	movs	r3, #0
 8006a78:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006a7c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a80:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006a84:	f02b 0b03 	bic.w	fp, fp, #3
 8006a88:	eba3 030b 	sub.w	r3, r3, fp
 8006a8c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006a90:	f109 0908 	add.w	r9, r9, #8
 8006a94:	2b00      	cmp	r3, #0
 8006a96:	d1da      	bne.n	8006a4e <__sprint_r.part.0+0x1a>
 8006a98:	2000      	movs	r0, #0
 8006a9a:	e7ec      	b.n	8006a76 <__sprint_r.part.0+0x42>
 8006a9c:	f7fe fd0c 	bl	80054b8 <__sfvwrite_r>
 8006aa0:	2300      	movs	r3, #0
 8006aa2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006aa6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006aaa:	bf00      	nop

08006aac <__sprint_r>:
 8006aac:	6893      	ldr	r3, [r2, #8]
 8006aae:	b10b      	cbz	r3, 8006ab4 <__sprint_r+0x8>
 8006ab0:	f7ff bfc0 	b.w	8006a34 <__sprint_r.part.0>
 8006ab4:	b410      	push	{r4}
 8006ab6:	4618      	mov	r0, r3
 8006ab8:	6053      	str	r3, [r2, #4]
 8006aba:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006abe:	4770      	bx	lr

08006ac0 <_write_r>:
 8006ac0:	b570      	push	{r4, r5, r6, lr}
 8006ac2:	460d      	mov	r5, r1
 8006ac4:	4c08      	ldr	r4, [pc, #32]	; (8006ae8 <_write_r+0x28>)
 8006ac6:	4611      	mov	r1, r2
 8006ac8:	4606      	mov	r6, r0
 8006aca:	461a      	mov	r2, r3
 8006acc:	4628      	mov	r0, r5
 8006ace:	2300      	movs	r3, #0
 8006ad0:	6023      	str	r3, [r4, #0]
 8006ad2:	f7fb fb4e 	bl	8002172 <_write>
 8006ad6:	1c43      	adds	r3, r0, #1
 8006ad8:	d000      	beq.n	8006adc <_write_r+0x1c>
 8006ada:	bd70      	pop	{r4, r5, r6, pc}
 8006adc:	6823      	ldr	r3, [r4, #0]
 8006ade:	2b00      	cmp	r3, #0
 8006ae0:	d0fb      	beq.n	8006ada <_write_r+0x1a>
 8006ae2:	6033      	str	r3, [r6, #0]
 8006ae4:	bd70      	pop	{r4, r5, r6, pc}
 8006ae6:	bf00      	nop
 8006ae8:	20000e10 	.word	0x20000e10

08006aec <__register_exitproc>:
 8006aec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006af0:	4d2b      	ldr	r5, [pc, #172]	; (8006ba0 <__register_exitproc+0xb4>)
 8006af2:	4606      	mov	r6, r0
 8006af4:	6828      	ldr	r0, [r5, #0]
 8006af6:	4698      	mov	r8, r3
 8006af8:	460f      	mov	r7, r1
 8006afa:	4691      	mov	r9, r2
 8006afc:	f7fe fe96 	bl	800582c <__retarget_lock_acquire_recursive>
 8006b00:	4b28      	ldr	r3, [pc, #160]	; (8006ba4 <__register_exitproc+0xb8>)
 8006b02:	681c      	ldr	r4, [r3, #0]
 8006b04:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006b08:	2b00      	cmp	r3, #0
 8006b0a:	d03d      	beq.n	8006b88 <__register_exitproc+0x9c>
 8006b0c:	685a      	ldr	r2, [r3, #4]
 8006b0e:	2a1f      	cmp	r2, #31
 8006b10:	dc0d      	bgt.n	8006b2e <__register_exitproc+0x42>
 8006b12:	f102 0c01 	add.w	ip, r2, #1
 8006b16:	bb16      	cbnz	r6, 8006b5e <__register_exitproc+0x72>
 8006b18:	3202      	adds	r2, #2
 8006b1a:	f8c3 c004 	str.w	ip, [r3, #4]
 8006b1e:	6828      	ldr	r0, [r5, #0]
 8006b20:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006b24:	f7fe fe84 	bl	8005830 <__retarget_lock_release_recursive>
 8006b28:	2000      	movs	r0, #0
 8006b2a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006b2e:	4b1e      	ldr	r3, [pc, #120]	; (8006ba8 <__register_exitproc+0xbc>)
 8006b30:	b37b      	cbz	r3, 8006b92 <__register_exitproc+0xa6>
 8006b32:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006b36:	f3af 8000 	nop.w
 8006b3a:	4603      	mov	r3, r0
 8006b3c:	b348      	cbz	r0, 8006b92 <__register_exitproc+0xa6>
 8006b3e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006b42:	2100      	movs	r1, #0
 8006b44:	e9c0 2100 	strd	r2, r1, [r0]
 8006b48:	f04f 0c01 	mov.w	ip, #1
 8006b4c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006b50:	460a      	mov	r2, r1
 8006b52:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006b56:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006b5a:	2e00      	cmp	r6, #0
 8006b5c:	d0dc      	beq.n	8006b18 <__register_exitproc+0x2c>
 8006b5e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006b62:	2401      	movs	r4, #1
 8006b64:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006b68:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006b6c:	4094      	lsls	r4, r2
 8006b6e:	4320      	orrs	r0, r4
 8006b70:	2e02      	cmp	r6, #2
 8006b72:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006b76:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006b7a:	d1cd      	bne.n	8006b18 <__register_exitproc+0x2c>
 8006b7c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006b80:	430c      	orrs	r4, r1
 8006b82:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006b86:	e7c7      	b.n	8006b18 <__register_exitproc+0x2c>
 8006b88:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006b8c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006b90:	e7bc      	b.n	8006b0c <__register_exitproc+0x20>
 8006b92:	6828      	ldr	r0, [r5, #0]
 8006b94:	f7fe fe4c 	bl	8005830 <__retarget_lock_release_recursive>
 8006b98:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006b9c:	e7c5      	b.n	8006b2a <__register_exitproc+0x3e>
 8006b9e:	bf00      	nop
 8006ba0:	20000448 	.word	0x20000448
 8006ba4:	0800725c 	.word	0x0800725c
 8006ba8:	00000000 	.word	0x00000000

08006bac <_calloc_r>:
 8006bac:	b510      	push	{r4, lr}
 8006bae:	fb02 f101 	mul.w	r1, r2, r1
 8006bb2:	f7fe feb7 	bl	8005924 <_malloc_r>
 8006bb6:	4604      	mov	r4, r0
 8006bb8:	b1d8      	cbz	r0, 8006bf2 <_calloc_r+0x46>
 8006bba:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006bbe:	f022 0203 	bic.w	r2, r2, #3
 8006bc2:	3a04      	subs	r2, #4
 8006bc4:	2a24      	cmp	r2, #36	; 0x24
 8006bc6:	d81d      	bhi.n	8006c04 <_calloc_r+0x58>
 8006bc8:	2a13      	cmp	r2, #19
 8006bca:	d914      	bls.n	8006bf6 <_calloc_r+0x4a>
 8006bcc:	2300      	movs	r3, #0
 8006bce:	2a1b      	cmp	r2, #27
 8006bd0:	e9c0 3300 	strd	r3, r3, [r0]
 8006bd4:	d91b      	bls.n	8006c0e <_calloc_r+0x62>
 8006bd6:	2a24      	cmp	r2, #36	; 0x24
 8006bd8:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006bdc:	bf0a      	itet	eq
 8006bde:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006be2:	f100 0210 	addne.w	r2, r0, #16
 8006be6:	f100 0218 	addeq.w	r2, r0, #24
 8006bea:	2300      	movs	r3, #0
 8006bec:	e9c2 3300 	strd	r3, r3, [r2]
 8006bf0:	6093      	str	r3, [r2, #8]
 8006bf2:	4620      	mov	r0, r4
 8006bf4:	bd10      	pop	{r4, pc}
 8006bf6:	4602      	mov	r2, r0
 8006bf8:	2300      	movs	r3, #0
 8006bfa:	e9c2 3300 	strd	r3, r3, [r2]
 8006bfe:	6093      	str	r3, [r2, #8]
 8006c00:	4620      	mov	r0, r4
 8006c02:	bd10      	pop	{r4, pc}
 8006c04:	2100      	movs	r1, #0
 8006c06:	f7fb fb6d 	bl	80022e4 <memset>
 8006c0a:	4620      	mov	r0, r4
 8006c0c:	bd10      	pop	{r4, pc}
 8006c0e:	f100 0208 	add.w	r2, r0, #8
 8006c12:	e7f1      	b.n	8006bf8 <_calloc_r+0x4c>

08006c14 <_close_r>:
 8006c14:	b538      	push	{r3, r4, r5, lr}
 8006c16:	4c07      	ldr	r4, [pc, #28]	; (8006c34 <_close_r+0x20>)
 8006c18:	2300      	movs	r3, #0
 8006c1a:	4605      	mov	r5, r0
 8006c1c:	4608      	mov	r0, r1
 8006c1e:	6023      	str	r3, [r4, #0]
 8006c20:	f7fb fad6 	bl	80021d0 <_close>
 8006c24:	1c43      	adds	r3, r0, #1
 8006c26:	d000      	beq.n	8006c2a <_close_r+0x16>
 8006c28:	bd38      	pop	{r3, r4, r5, pc}
 8006c2a:	6823      	ldr	r3, [r4, #0]
 8006c2c:	2b00      	cmp	r3, #0
 8006c2e:	d0fb      	beq.n	8006c28 <_close_r+0x14>
 8006c30:	602b      	str	r3, [r5, #0]
 8006c32:	bd38      	pop	{r3, r4, r5, pc}
 8006c34:	20000e10 	.word	0x20000e10

08006c38 <_fclose_r>:
 8006c38:	b570      	push	{r4, r5, r6, lr}
 8006c3a:	2900      	cmp	r1, #0
 8006c3c:	d048      	beq.n	8006cd0 <_fclose_r+0x98>
 8006c3e:	4605      	mov	r5, r0
 8006c40:	460c      	mov	r4, r1
 8006c42:	b110      	cbz	r0, 8006c4a <_fclose_r+0x12>
 8006c44:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006c46:	2b00      	cmp	r3, #0
 8006c48:	d048      	beq.n	8006cdc <_fclose_r+0xa4>
 8006c4a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c4c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c50:	07d0      	lsls	r0, r2, #31
 8006c52:	d440      	bmi.n	8006cd6 <_fclose_r+0x9e>
 8006c54:	0599      	lsls	r1, r3, #22
 8006c56:	d530      	bpl.n	8006cba <_fclose_r+0x82>
 8006c58:	4621      	mov	r1, r4
 8006c5a:	4628      	mov	r0, r5
 8006c5c:	f7fe f990 	bl	8004f80 <__sflush_r>
 8006c60:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006c62:	4606      	mov	r6, r0
 8006c64:	b133      	cbz	r3, 8006c74 <_fclose_r+0x3c>
 8006c66:	69e1      	ldr	r1, [r4, #28]
 8006c68:	4628      	mov	r0, r5
 8006c6a:	4798      	blx	r3
 8006c6c:	2800      	cmp	r0, #0
 8006c6e:	bfb8      	it	lt
 8006c70:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006c74:	89a3      	ldrh	r3, [r4, #12]
 8006c76:	061a      	lsls	r2, r3, #24
 8006c78:	d43c      	bmi.n	8006cf4 <_fclose_r+0xbc>
 8006c7a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006c7c:	b141      	cbz	r1, 8006c90 <_fclose_r+0x58>
 8006c7e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006c82:	4299      	cmp	r1, r3
 8006c84:	d002      	beq.n	8006c8c <_fclose_r+0x54>
 8006c86:	4628      	mov	r0, r5
 8006c88:	f7fe fb22 	bl	80052d0 <_free_r>
 8006c8c:	2300      	movs	r3, #0
 8006c8e:	6323      	str	r3, [r4, #48]	; 0x30
 8006c90:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006c92:	b121      	cbz	r1, 8006c9e <_fclose_r+0x66>
 8006c94:	4628      	mov	r0, r5
 8006c96:	f7fe fb1b 	bl	80052d0 <_free_r>
 8006c9a:	2300      	movs	r3, #0
 8006c9c:	6463      	str	r3, [r4, #68]	; 0x44
 8006c9e:	f7fe faa1 	bl	80051e4 <__sfp_lock_acquire>
 8006ca2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ca4:	2200      	movs	r2, #0
 8006ca6:	07db      	lsls	r3, r3, #31
 8006ca8:	81a2      	strh	r2, [r4, #12]
 8006caa:	d51f      	bpl.n	8006cec <_fclose_r+0xb4>
 8006cac:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cae:	f7fe fdbb 	bl	8005828 <__retarget_lock_close_recursive>
 8006cb2:	f7fe fa9d 	bl	80051f0 <__sfp_lock_release>
 8006cb6:	4630      	mov	r0, r6
 8006cb8:	bd70      	pop	{r4, r5, r6, pc}
 8006cba:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cbc:	f7fe fdb6 	bl	800582c <__retarget_lock_acquire_recursive>
 8006cc0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cc4:	2b00      	cmp	r3, #0
 8006cc6:	d1c7      	bne.n	8006c58 <_fclose_r+0x20>
 8006cc8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006cca:	f016 0601 	ands.w	r6, r6, #1
 8006cce:	d016      	beq.n	8006cfe <_fclose_r+0xc6>
 8006cd0:	2600      	movs	r6, #0
 8006cd2:	4630      	mov	r0, r6
 8006cd4:	bd70      	pop	{r4, r5, r6, pc}
 8006cd6:	2b00      	cmp	r3, #0
 8006cd8:	d0fa      	beq.n	8006cd0 <_fclose_r+0x98>
 8006cda:	e7bd      	b.n	8006c58 <_fclose_r+0x20>
 8006cdc:	f7fe fa56 	bl	800518c <__sinit>
 8006ce0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006ce2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ce6:	07d0      	lsls	r0, r2, #31
 8006ce8:	d4f5      	bmi.n	8006cd6 <_fclose_r+0x9e>
 8006cea:	e7b3      	b.n	8006c54 <_fclose_r+0x1c>
 8006cec:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cee:	f7fe fd9f 	bl	8005830 <__retarget_lock_release_recursive>
 8006cf2:	e7db      	b.n	8006cac <_fclose_r+0x74>
 8006cf4:	6921      	ldr	r1, [r4, #16]
 8006cf6:	4628      	mov	r0, r5
 8006cf8:	f7fe faea 	bl	80052d0 <_free_r>
 8006cfc:	e7bd      	b.n	8006c7a <_fclose_r+0x42>
 8006cfe:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d00:	f7fe fd96 	bl	8005830 <__retarget_lock_release_recursive>
 8006d04:	4630      	mov	r0, r6
 8006d06:	bd70      	pop	{r4, r5, r6, pc}

08006d08 <__fputwc>:
 8006d08:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006d0c:	b082      	sub	sp, #8
 8006d0e:	4681      	mov	r9, r0
 8006d10:	4688      	mov	r8, r1
 8006d12:	4614      	mov	r4, r2
 8006d14:	f000 f8a0 	bl	8006e58 <__locale_mb_cur_max>
 8006d18:	2801      	cmp	r0, #1
 8006d1a:	d103      	bne.n	8006d24 <__fputwc+0x1c>
 8006d1c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006d20:	2bfe      	cmp	r3, #254	; 0xfe
 8006d22:	d933      	bls.n	8006d8c <__fputwc+0x84>
 8006d24:	4642      	mov	r2, r8
 8006d26:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006d2a:	a901      	add	r1, sp, #4
 8006d2c:	4648      	mov	r0, r9
 8006d2e:	f000 f93b 	bl	8006fa8 <_wcrtomb_r>
 8006d32:	1c42      	adds	r2, r0, #1
 8006d34:	4606      	mov	r6, r0
 8006d36:	d02f      	beq.n	8006d98 <__fputwc+0x90>
 8006d38:	b320      	cbz	r0, 8006d84 <__fputwc+0x7c>
 8006d3a:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006d3e:	2500      	movs	r5, #0
 8006d40:	f10d 0a04 	add.w	sl, sp, #4
 8006d44:	e009      	b.n	8006d5a <__fputwc+0x52>
 8006d46:	6823      	ldr	r3, [r4, #0]
 8006d48:	1c5a      	adds	r2, r3, #1
 8006d4a:	6022      	str	r2, [r4, #0]
 8006d4c:	f883 c000 	strb.w	ip, [r3]
 8006d50:	3501      	adds	r5, #1
 8006d52:	42b5      	cmp	r5, r6
 8006d54:	d216      	bcs.n	8006d84 <__fputwc+0x7c>
 8006d56:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006d5a:	68a3      	ldr	r3, [r4, #8]
 8006d5c:	3b01      	subs	r3, #1
 8006d5e:	2b00      	cmp	r3, #0
 8006d60:	60a3      	str	r3, [r4, #8]
 8006d62:	daf0      	bge.n	8006d46 <__fputwc+0x3e>
 8006d64:	69a7      	ldr	r7, [r4, #24]
 8006d66:	42bb      	cmp	r3, r7
 8006d68:	4661      	mov	r1, ip
 8006d6a:	4622      	mov	r2, r4
 8006d6c:	4648      	mov	r0, r9
 8006d6e:	db02      	blt.n	8006d76 <__fputwc+0x6e>
 8006d70:	f1bc 0f0a 	cmp.w	ip, #10
 8006d74:	d1e7      	bne.n	8006d46 <__fputwc+0x3e>
 8006d76:	f000 f8bf 	bl	8006ef8 <__swbuf_r>
 8006d7a:	1c43      	adds	r3, r0, #1
 8006d7c:	d1e8      	bne.n	8006d50 <__fputwc+0x48>
 8006d7e:	b002      	add	sp, #8
 8006d80:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d84:	4640      	mov	r0, r8
 8006d86:	b002      	add	sp, #8
 8006d88:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006d8c:	fa5f fc88 	uxtb.w	ip, r8
 8006d90:	4606      	mov	r6, r0
 8006d92:	f88d c004 	strb.w	ip, [sp, #4]
 8006d96:	e7d2      	b.n	8006d3e <__fputwc+0x36>
 8006d98:	89a3      	ldrh	r3, [r4, #12]
 8006d9a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006d9e:	81a3      	strh	r3, [r4, #12]
 8006da0:	b002      	add	sp, #8
 8006da2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006da6:	bf00      	nop

08006da8 <_fputwc_r>:
 8006da8:	b530      	push	{r4, r5, lr}
 8006daa:	4605      	mov	r5, r0
 8006dac:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006dae:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006db2:	07c0      	lsls	r0, r0, #31
 8006db4:	4614      	mov	r4, r2
 8006db6:	b083      	sub	sp, #12
 8006db8:	b29a      	uxth	r2, r3
 8006dba:	d401      	bmi.n	8006dc0 <_fputwc_r+0x18>
 8006dbc:	0590      	lsls	r0, r2, #22
 8006dbe:	d51c      	bpl.n	8006dfa <_fputwc_r+0x52>
 8006dc0:	0490      	lsls	r0, r2, #18
 8006dc2:	d406      	bmi.n	8006dd2 <_fputwc_r+0x2a>
 8006dc4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006dc6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006dca:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006dce:	81a3      	strh	r3, [r4, #12]
 8006dd0:	6662      	str	r2, [r4, #100]	; 0x64
 8006dd2:	4628      	mov	r0, r5
 8006dd4:	4622      	mov	r2, r4
 8006dd6:	f7ff ff97 	bl	8006d08 <__fputwc>
 8006dda:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ddc:	07da      	lsls	r2, r3, #31
 8006dde:	4605      	mov	r5, r0
 8006de0:	d402      	bmi.n	8006de8 <_fputwc_r+0x40>
 8006de2:	89a3      	ldrh	r3, [r4, #12]
 8006de4:	059b      	lsls	r3, r3, #22
 8006de6:	d502      	bpl.n	8006dee <_fputwc_r+0x46>
 8006de8:	4628      	mov	r0, r5
 8006dea:	b003      	add	sp, #12
 8006dec:	bd30      	pop	{r4, r5, pc}
 8006dee:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006df0:	f7fe fd1e 	bl	8005830 <__retarget_lock_release_recursive>
 8006df4:	4628      	mov	r0, r5
 8006df6:	b003      	add	sp, #12
 8006df8:	bd30      	pop	{r4, r5, pc}
 8006dfa:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006dfc:	9101      	str	r1, [sp, #4]
 8006dfe:	f7fe fd15 	bl	800582c <__retarget_lock_acquire_recursive>
 8006e02:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e06:	9901      	ldr	r1, [sp, #4]
 8006e08:	b29a      	uxth	r2, r3
 8006e0a:	e7d9      	b.n	8006dc0 <_fputwc_r+0x18>

08006e0c <_fstat_r>:
 8006e0c:	b538      	push	{r3, r4, r5, lr}
 8006e0e:	460b      	mov	r3, r1
 8006e10:	4c07      	ldr	r4, [pc, #28]	; (8006e30 <_fstat_r+0x24>)
 8006e12:	4605      	mov	r5, r0
 8006e14:	4611      	mov	r1, r2
 8006e16:	4618      	mov	r0, r3
 8006e18:	2300      	movs	r3, #0
 8006e1a:	6023      	str	r3, [r4, #0]
 8006e1c:	f7fb f9db 	bl	80021d6 <_fstat>
 8006e20:	1c43      	adds	r3, r0, #1
 8006e22:	d000      	beq.n	8006e26 <_fstat_r+0x1a>
 8006e24:	bd38      	pop	{r3, r4, r5, pc}
 8006e26:	6823      	ldr	r3, [r4, #0]
 8006e28:	2b00      	cmp	r3, #0
 8006e2a:	d0fb      	beq.n	8006e24 <_fstat_r+0x18>
 8006e2c:	602b      	str	r3, [r5, #0]
 8006e2e:	bd38      	pop	{r3, r4, r5, pc}
 8006e30:	20000e10 	.word	0x20000e10

08006e34 <_isatty_r>:
 8006e34:	b538      	push	{r3, r4, r5, lr}
 8006e36:	4c07      	ldr	r4, [pc, #28]	; (8006e54 <_isatty_r+0x20>)
 8006e38:	2300      	movs	r3, #0
 8006e3a:	4605      	mov	r5, r0
 8006e3c:	4608      	mov	r0, r1
 8006e3e:	6023      	str	r3, [r4, #0]
 8006e40:	f7fb f9ce 	bl	80021e0 <_isatty>
 8006e44:	1c43      	adds	r3, r0, #1
 8006e46:	d000      	beq.n	8006e4a <_isatty_r+0x16>
 8006e48:	bd38      	pop	{r3, r4, r5, pc}
 8006e4a:	6823      	ldr	r3, [r4, #0]
 8006e4c:	2b00      	cmp	r3, #0
 8006e4e:	d0fb      	beq.n	8006e48 <_isatty_r+0x14>
 8006e50:	602b      	str	r3, [r5, #0]
 8006e52:	bd38      	pop	{r3, r4, r5, pc}
 8006e54:	20000e10 	.word	0x20000e10

08006e58 <__locale_mb_cur_max>:
 8006e58:	4b04      	ldr	r3, [pc, #16]	; (8006e6c <__locale_mb_cur_max+0x14>)
 8006e5a:	4a05      	ldr	r2, [pc, #20]	; (8006e70 <__locale_mb_cur_max+0x18>)
 8006e5c:	681b      	ldr	r3, [r3, #0]
 8006e5e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006e60:	2b00      	cmp	r3, #0
 8006e62:	bf08      	it	eq
 8006e64:	4613      	moveq	r3, r2
 8006e66:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006e6a:	4770      	bx	lr
 8006e6c:	20000018 	.word	0x20000018
 8006e70:	2000085c 	.word	0x2000085c

08006e74 <_lseek_r>:
 8006e74:	b570      	push	{r4, r5, r6, lr}
 8006e76:	460d      	mov	r5, r1
 8006e78:	4c08      	ldr	r4, [pc, #32]	; (8006e9c <_lseek_r+0x28>)
 8006e7a:	4611      	mov	r1, r2
 8006e7c:	4606      	mov	r6, r0
 8006e7e:	461a      	mov	r2, r3
 8006e80:	4628      	mov	r0, r5
 8006e82:	2300      	movs	r3, #0
 8006e84:	6023      	str	r3, [r4, #0]
 8006e86:	f7fb f9ad 	bl	80021e4 <_lseek>
 8006e8a:	1c43      	adds	r3, r0, #1
 8006e8c:	d000      	beq.n	8006e90 <_lseek_r+0x1c>
 8006e8e:	bd70      	pop	{r4, r5, r6, pc}
 8006e90:	6823      	ldr	r3, [r4, #0]
 8006e92:	2b00      	cmp	r3, #0
 8006e94:	d0fb      	beq.n	8006e8e <_lseek_r+0x1a>
 8006e96:	6033      	str	r3, [r6, #0]
 8006e98:	bd70      	pop	{r4, r5, r6, pc}
 8006e9a:	bf00      	nop
 8006e9c:	20000e10 	.word	0x20000e10

08006ea0 <__ascii_mbtowc>:
 8006ea0:	b082      	sub	sp, #8
 8006ea2:	b149      	cbz	r1, 8006eb8 <__ascii_mbtowc+0x18>
 8006ea4:	b15a      	cbz	r2, 8006ebe <__ascii_mbtowc+0x1e>
 8006ea6:	b16b      	cbz	r3, 8006ec4 <__ascii_mbtowc+0x24>
 8006ea8:	7813      	ldrb	r3, [r2, #0]
 8006eaa:	600b      	str	r3, [r1, #0]
 8006eac:	7812      	ldrb	r2, [r2, #0]
 8006eae:	1c10      	adds	r0, r2, #0
 8006eb0:	bf18      	it	ne
 8006eb2:	2001      	movne	r0, #1
 8006eb4:	b002      	add	sp, #8
 8006eb6:	4770      	bx	lr
 8006eb8:	a901      	add	r1, sp, #4
 8006eba:	2a00      	cmp	r2, #0
 8006ebc:	d1f3      	bne.n	8006ea6 <__ascii_mbtowc+0x6>
 8006ebe:	4610      	mov	r0, r2
 8006ec0:	b002      	add	sp, #8
 8006ec2:	4770      	bx	lr
 8006ec4:	f06f 0001 	mvn.w	r0, #1
 8006ec8:	e7f4      	b.n	8006eb4 <__ascii_mbtowc+0x14>
 8006eca:	bf00      	nop

08006ecc <_read_r>:
 8006ecc:	b570      	push	{r4, r5, r6, lr}
 8006ece:	460d      	mov	r5, r1
 8006ed0:	4c08      	ldr	r4, [pc, #32]	; (8006ef4 <_read_r+0x28>)
 8006ed2:	4611      	mov	r1, r2
 8006ed4:	4606      	mov	r6, r0
 8006ed6:	461a      	mov	r2, r3
 8006ed8:	4628      	mov	r0, r5
 8006eda:	2300      	movs	r3, #0
 8006edc:	6023      	str	r3, [r4, #0]
 8006ede:	f7fb f935 	bl	800214c <_read>
 8006ee2:	1c43      	adds	r3, r0, #1
 8006ee4:	d000      	beq.n	8006ee8 <_read_r+0x1c>
 8006ee6:	bd70      	pop	{r4, r5, r6, pc}
 8006ee8:	6823      	ldr	r3, [r4, #0]
 8006eea:	2b00      	cmp	r3, #0
 8006eec:	d0fb      	beq.n	8006ee6 <_read_r+0x1a>
 8006eee:	6033      	str	r3, [r6, #0]
 8006ef0:	bd70      	pop	{r4, r5, r6, pc}
 8006ef2:	bf00      	nop
 8006ef4:	20000e10 	.word	0x20000e10

08006ef8 <__swbuf_r>:
 8006ef8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006efa:	460d      	mov	r5, r1
 8006efc:	4614      	mov	r4, r2
 8006efe:	4606      	mov	r6, r0
 8006f00:	b110      	cbz	r0, 8006f08 <__swbuf_r+0x10>
 8006f02:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f04:	2b00      	cmp	r3, #0
 8006f06:	d043      	beq.n	8006f90 <__swbuf_r+0x98>
 8006f08:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f0c:	69a3      	ldr	r3, [r4, #24]
 8006f0e:	60a3      	str	r3, [r4, #8]
 8006f10:	b291      	uxth	r1, r2
 8006f12:	0708      	lsls	r0, r1, #28
 8006f14:	d51b      	bpl.n	8006f4e <__swbuf_r+0x56>
 8006f16:	6923      	ldr	r3, [r4, #16]
 8006f18:	b1cb      	cbz	r3, 8006f4e <__swbuf_r+0x56>
 8006f1a:	b2ed      	uxtb	r5, r5
 8006f1c:	0489      	lsls	r1, r1, #18
 8006f1e:	462f      	mov	r7, r5
 8006f20:	d522      	bpl.n	8006f68 <__swbuf_r+0x70>
 8006f22:	6822      	ldr	r2, [r4, #0]
 8006f24:	6961      	ldr	r1, [r4, #20]
 8006f26:	1ad3      	subs	r3, r2, r3
 8006f28:	4299      	cmp	r1, r3
 8006f2a:	dd29      	ble.n	8006f80 <__swbuf_r+0x88>
 8006f2c:	3301      	adds	r3, #1
 8006f2e:	68a1      	ldr	r1, [r4, #8]
 8006f30:	1c50      	adds	r0, r2, #1
 8006f32:	3901      	subs	r1, #1
 8006f34:	60a1      	str	r1, [r4, #8]
 8006f36:	6020      	str	r0, [r4, #0]
 8006f38:	7015      	strb	r5, [r2, #0]
 8006f3a:	6962      	ldr	r2, [r4, #20]
 8006f3c:	429a      	cmp	r2, r3
 8006f3e:	d02a      	beq.n	8006f96 <__swbuf_r+0x9e>
 8006f40:	89a3      	ldrh	r3, [r4, #12]
 8006f42:	07db      	lsls	r3, r3, #31
 8006f44:	d501      	bpl.n	8006f4a <__swbuf_r+0x52>
 8006f46:	2d0a      	cmp	r5, #10
 8006f48:	d025      	beq.n	8006f96 <__swbuf_r+0x9e>
 8006f4a:	4638      	mov	r0, r7
 8006f4c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006f4e:	4621      	mov	r1, r4
 8006f50:	4630      	mov	r0, r6
 8006f52:	f7fc fffd 	bl	8003f50 <__swsetup_r>
 8006f56:	bb20      	cbnz	r0, 8006fa2 <__swbuf_r+0xaa>
 8006f58:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f5c:	6923      	ldr	r3, [r4, #16]
 8006f5e:	b291      	uxth	r1, r2
 8006f60:	b2ed      	uxtb	r5, r5
 8006f62:	0489      	lsls	r1, r1, #18
 8006f64:	462f      	mov	r7, r5
 8006f66:	d4dc      	bmi.n	8006f22 <__swbuf_r+0x2a>
 8006f68:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006f6a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006f6e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006f72:	81a2      	strh	r2, [r4, #12]
 8006f74:	6822      	ldr	r2, [r4, #0]
 8006f76:	6661      	str	r1, [r4, #100]	; 0x64
 8006f78:	6961      	ldr	r1, [r4, #20]
 8006f7a:	1ad3      	subs	r3, r2, r3
 8006f7c:	4299      	cmp	r1, r3
 8006f7e:	dcd5      	bgt.n	8006f2c <__swbuf_r+0x34>
 8006f80:	4621      	mov	r1, r4
 8006f82:	4630      	mov	r0, r6
 8006f84:	f7fe f8a6 	bl	80050d4 <_fflush_r>
 8006f88:	b958      	cbnz	r0, 8006fa2 <__swbuf_r+0xaa>
 8006f8a:	6822      	ldr	r2, [r4, #0]
 8006f8c:	2301      	movs	r3, #1
 8006f8e:	e7ce      	b.n	8006f2e <__swbuf_r+0x36>
 8006f90:	f7fe f8fc 	bl	800518c <__sinit>
 8006f94:	e7b8      	b.n	8006f08 <__swbuf_r+0x10>
 8006f96:	4621      	mov	r1, r4
 8006f98:	4630      	mov	r0, r6
 8006f9a:	f7fe f89b 	bl	80050d4 <_fflush_r>
 8006f9e:	2800      	cmp	r0, #0
 8006fa0:	d0d3      	beq.n	8006f4a <__swbuf_r+0x52>
 8006fa2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006fa6:	e7d0      	b.n	8006f4a <__swbuf_r+0x52>

08006fa8 <_wcrtomb_r>:
 8006fa8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006faa:	4c11      	ldr	r4, [pc, #68]	; (8006ff0 <_wcrtomb_r+0x48>)
 8006fac:	6824      	ldr	r4, [r4, #0]
 8006fae:	b085      	sub	sp, #20
 8006fb0:	4606      	mov	r6, r0
 8006fb2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006fb4:	461f      	mov	r7, r3
 8006fb6:	b151      	cbz	r1, 8006fce <_wcrtomb_r+0x26>
 8006fb8:	4d0e      	ldr	r5, [pc, #56]	; (8006ff4 <_wcrtomb_r+0x4c>)
 8006fba:	2c00      	cmp	r4, #0
 8006fbc:	bf08      	it	eq
 8006fbe:	462c      	moveq	r4, r5
 8006fc0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006fc4:	47a0      	blx	r4
 8006fc6:	1c43      	adds	r3, r0, #1
 8006fc8:	d00c      	beq.n	8006fe4 <_wcrtomb_r+0x3c>
 8006fca:	b005      	add	sp, #20
 8006fcc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006fce:	4a09      	ldr	r2, [pc, #36]	; (8006ff4 <_wcrtomb_r+0x4c>)
 8006fd0:	2c00      	cmp	r4, #0
 8006fd2:	bf08      	it	eq
 8006fd4:	4614      	moveq	r4, r2
 8006fd6:	460a      	mov	r2, r1
 8006fd8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006fdc:	a901      	add	r1, sp, #4
 8006fde:	47a0      	blx	r4
 8006fe0:	1c43      	adds	r3, r0, #1
 8006fe2:	d1f2      	bne.n	8006fca <_wcrtomb_r+0x22>
 8006fe4:	2200      	movs	r2, #0
 8006fe6:	238a      	movs	r3, #138	; 0x8a
 8006fe8:	603a      	str	r2, [r7, #0]
 8006fea:	6033      	str	r3, [r6, #0]
 8006fec:	b005      	add	sp, #20
 8006fee:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006ff0:	20000018 	.word	0x20000018
 8006ff4:	2000085c 	.word	0x2000085c

08006ff8 <__ascii_wctomb>:
 8006ff8:	b121      	cbz	r1, 8007004 <__ascii_wctomb+0xc>
 8006ffa:	2aff      	cmp	r2, #255	; 0xff
 8006ffc:	d804      	bhi.n	8007008 <__ascii_wctomb+0x10>
 8006ffe:	700a      	strb	r2, [r1, #0]
 8007000:	2001      	movs	r0, #1
 8007002:	4770      	bx	lr
 8007004:	4608      	mov	r0, r1
 8007006:	4770      	bx	lr
 8007008:	238a      	movs	r3, #138	; 0x8a
 800700a:	6003      	str	r3, [r0, #0]
 800700c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007010:	4770      	bx	lr
 8007012:	bf00      	nop

08007014 <_init>:
 8007014:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007016:	bf00      	nop
 8007018:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800701a:	bc08      	pop	{r3}
 800701c:	469e      	mov	lr, r3
 800701e:	4770      	bx	lr

08007020 <_fini>:
 8007020:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007022:	bf00      	nop
 8007024:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007026:	bc08      	pop	{r3}
 8007028:	469e      	mov	lr, r3
 800702a:	4770      	bx	lr
 800702c:	0000      	movs	r0, r0
	...
