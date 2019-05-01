
nettle-arcfour.elf:     file format elf32-littlearm


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
 80001e0:	0800704c 	.word	0x0800704c

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
 80001fc:	0800704c 	.word	0x0800704c

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
 8001108:	f640 20b0 	movw	r0, #2736	; 0xab0
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20b0 	movw	r0, #2736	; 0xab0
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
 80013e8:	f247 02a0 	movw	r2, #28832	; 0x70a0
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
 8001462:	f247 0298 	movw	r2, #28824	; 0x7098
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
 800148c:	f247 0298 	movw	r2, #28824	; 0x7098
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
 8001842:	f640 21b4 	movw	r1, #2740	; 0xab4
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
 800188c:	f640 20b4 	movw	r0, #2740	; 0xab4
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20b4 	movw	r0, #2740	; 0xab4
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
 80019d4:	f247 03d0 	movw	r3, #28880	; 0x70d0
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
 80019fc:	f247 03e0 	movw	r3, #28896	; 0x70e0
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

08001eb6 <initialise_benchmark>:
 8001eb6:	4770      	bx	lr

08001eb8 <benchmark>:
 8001eb8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eba:	af03      	add	r7, sp, #12
 8001ebc:	f84d 8d04 	str.w	r8, [sp, #-4]!
 8001ec0:	f640 25f8 	movw	r5, #2808	; 0xaf8
 8001ec4:	2100      	movs	r1, #0
 8001ec6:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8001eca:	5469      	strb	r1, [r5, r1]
 8001ecc:	3101      	adds	r1, #1
 8001ece:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 8001ed2:	d1fa      	bne.n	8001eca <benchmark+0x12>
 8001ed4:	f247 0c68 	movw	ip, #28776	; 0x7068
 8001ed8:	2200      	movs	r2, #0
 8001eda:	2100      	movs	r1, #0
 8001edc:	2300      	movs	r3, #0
 8001ede:	f6c0 0c00 	movt	ip, #2048	; 0x800
 8001ee2:	5ca8      	ldrb	r0, [r5, r2]
 8001ee4:	f81c 4001 	ldrb.w	r4, [ip, r1]
 8001ee8:	4403      	add	r3, r0
 8001eea:	4423      	add	r3, r4
 8001eec:	b2db      	uxtb	r3, r3
 8001eee:	5cec      	ldrb	r4, [r5, r3]
 8001ef0:	54ac      	strb	r4, [r5, r2]
 8001ef2:	54e8      	strb	r0, [r5, r3]
 8001ef4:	1c48      	adds	r0, r1, #1
 8001ef6:	3201      	adds	r2, #1
 8001ef8:	f000 010f 	and.w	r1, r0, #15
 8001efc:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8001f00:	d1ef      	bne.n	8001ee2 <benchmark+0x2a>
 8001f02:	f247 0e78 	movw	lr, #28792	; 0x7078
 8001f06:	f640 18e4 	movw	r8, #2532	; 0x9e4
 8001f0a:	2300      	movs	r3, #0
 8001f0c:	2100      	movs	r1, #0
 8001f0e:	f6c0 0e00 	movt	lr, #2048	; 0x800
 8001f12:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8001f16:	f885 3101 	strb.w	r3, [r5, #257]	; 0x101
 8001f1a:	f885 3100 	strb.w	r3, [r5, #256]	; 0x100
 8001f1e:	18e8      	adds	r0, r5, r3
 8001f20:	7842      	ldrb	r2, [r0, #1]
 8001f22:	1856      	adds	r6, r2, r1
 8001f24:	fa52 f181 	uxtab	r1, r2, r1
 8001f28:	b2f6      	uxtb	r6, r6
 8001f2a:	5dac      	ldrb	r4, [r5, r6]
 8001f2c:	7044      	strb	r4, [r0, #1]
 8001f2e:	18a0      	adds	r0, r4, r2
 8001f30:	55aa      	strb	r2, [r5, r6]
 8001f32:	f81e 4003 	ldrb.w	r4, [lr, r3]
 8001f36:	b2c0      	uxtb	r0, r0
 8001f38:	5c28      	ldrb	r0, [r5, r0]
 8001f3a:	4060      	eors	r0, r4
 8001f3c:	f808 0003 	strb.w	r0, [r8, r3]
 8001f40:	3301      	adds	r3, #1
 8001f42:	2b10      	cmp	r3, #16
 8001f44:	d1eb      	bne.n	8001f1e <benchmark+0x66>
 8001f46:	2010      	movs	r0, #16
 8001f48:	f885 0100 	strb.w	r0, [r5, #256]	; 0x100
 8001f4c:	f885 1101 	strb.w	r1, [r5, #257]	; 0x101
 8001f50:	2100      	movs	r1, #0
 8001f52:	5469      	strb	r1, [r5, r1]
 8001f54:	3101      	adds	r1, #1
 8001f56:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 8001f5a:	d1fa      	bne.n	8001f52 <benchmark+0x9a>
 8001f5c:	2300      	movs	r3, #0
 8001f5e:	2100      	movs	r1, #0
 8001f60:	2200      	movs	r2, #0
 8001f62:	5cee      	ldrb	r6, [r5, r3]
 8001f64:	f81c 0001 	ldrb.w	r0, [ip, r1]
 8001f68:	4432      	add	r2, r6
 8001f6a:	4410      	add	r0, r2
 8001f6c:	b2c2      	uxtb	r2, r0
 8001f6e:	5ca8      	ldrb	r0, [r5, r2]
 8001f70:	54e8      	strb	r0, [r5, r3]
 8001f72:	1c48      	adds	r0, r1, #1
 8001f74:	3301      	adds	r3, #1
 8001f76:	54ae      	strb	r6, [r5, r2]
 8001f78:	f000 010f 	and.w	r1, r0, #15
 8001f7c:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8001f80:	d1ef      	bne.n	8001f62 <benchmark+0xaa>
 8001f82:	2100      	movs	r1, #0
 8001f84:	2300      	movs	r3, #0
 8001f86:	f885 1101 	strb.w	r1, [r5, #257]	; 0x101
 8001f8a:	f885 1100 	strb.w	r1, [r5, #256]	; 0x100
 8001f8e:	1868      	adds	r0, r5, r1
 8001f90:	7842      	ldrb	r2, [r0, #1]
 8001f92:	18d6      	adds	r6, r2, r3
 8001f94:	fa52 f383 	uxtab	r3, r2, r3
 8001f98:	b2f6      	uxtb	r6, r6
 8001f9a:	5dac      	ldrb	r4, [r5, r6]
 8001f9c:	7044      	strb	r4, [r0, #1]
 8001f9e:	18a0      	adds	r0, r4, r2
 8001fa0:	55aa      	strb	r2, [r5, r6]
 8001fa2:	f818 6001 	ldrb.w	r6, [r8, r1]
 8001fa6:	b2c0      	uxtb	r0, r0
 8001fa8:	5c28      	ldrb	r0, [r5, r0]
 8001faa:	4070      	eors	r0, r6
 8001fac:	f808 0001 	strb.w	r0, [r8, r1]
 8001fb0:	3101      	adds	r1, #1
 8001fb2:	2910      	cmp	r1, #16
 8001fb4:	d1eb      	bne.n	8001f8e <benchmark+0xd6>
 8001fb6:	2010      	movs	r0, #16
 8001fb8:	f885 0100 	strb.w	r0, [r5, #256]	; 0x100
 8001fbc:	f885 3101 	strb.w	r3, [r5, #257]	; 0x101
 8001fc0:	2000      	movs	r0, #0
 8001fc2:	f85d 8b04 	ldr.w	r8, [sp], #4
 8001fc6:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001fc8 <verify_benchmark>:
 8001fc8:	b580      	push	{r7, lr}
 8001fca:	466f      	mov	r7, sp
 8001fcc:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001fd0:	f04f 0c00 	mov.w	ip, #0
 8001fd4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fd8:	7881      	ldrb	r1, [r0, #2]
 8001fda:	7802      	ldrb	r2, [r0, #0]
 8001fdc:	7843      	ldrb	r3, [r0, #1]
 8001fde:	f890 e003 	ldrb.w	lr, [r0, #3]
 8001fe2:	2902      	cmp	r1, #2
 8001fe4:	f04f 0100 	mov.w	r1, #0
 8001fe8:	bf08      	it	eq
 8001fea:	2101      	moveq	r1, #1
 8001fec:	2a00      	cmp	r2, #0
 8001fee:	f04f 0200 	mov.w	r2, #0
 8001ff2:	bf08      	it	eq
 8001ff4:	2201      	moveq	r2, #1
 8001ff6:	2b01      	cmp	r3, #1
 8001ff8:	bf18      	it	ne
 8001ffa:	2300      	movne	r3, #0
 8001ffc:	f1be 0f03 	cmp.w	lr, #3
 8002000:	ea02 0203 	and.w	r2, r2, r3
 8002004:	ea01 0102 	and.w	r1, r1, r2
 8002008:	f04f 0200 	mov.w	r2, #0
 800200c:	bf08      	it	eq
 800200e:	2201      	moveq	r2, #1
 8002010:	4011      	ands	r1, r2
 8002012:	7902      	ldrb	r2, [r0, #4]
 8002014:	2a04      	cmp	r2, #4
 8002016:	f04f 0200 	mov.w	r2, #0
 800201a:	bf08      	it	eq
 800201c:	2201      	moveq	r2, #1
 800201e:	4011      	ands	r1, r2
 8002020:	7942      	ldrb	r2, [r0, #5]
 8002022:	2a05      	cmp	r2, #5
 8002024:	f04f 0200 	mov.w	r2, #0
 8002028:	bf08      	it	eq
 800202a:	2201      	moveq	r2, #1
 800202c:	4011      	ands	r1, r2
 800202e:	7982      	ldrb	r2, [r0, #6]
 8002030:	2a06      	cmp	r2, #6
 8002032:	f04f 0200 	mov.w	r2, #0
 8002036:	bf08      	it	eq
 8002038:	2201      	moveq	r2, #1
 800203a:	4011      	ands	r1, r2
 800203c:	79c2      	ldrb	r2, [r0, #7]
 800203e:	2a07      	cmp	r2, #7
 8002040:	f04f 0200 	mov.w	r2, #0
 8002044:	bf08      	it	eq
 8002046:	2201      	moveq	r2, #1
 8002048:	4011      	ands	r1, r2
 800204a:	7a02      	ldrb	r2, [r0, #8]
 800204c:	2a08      	cmp	r2, #8
 800204e:	f04f 0200 	mov.w	r2, #0
 8002052:	bf08      	it	eq
 8002054:	2201      	moveq	r2, #1
 8002056:	4011      	ands	r1, r2
 8002058:	7a42      	ldrb	r2, [r0, #9]
 800205a:	2a09      	cmp	r2, #9
 800205c:	f04f 0200 	mov.w	r2, #0
 8002060:	bf08      	it	eq
 8002062:	2201      	moveq	r2, #1
 8002064:	4011      	ands	r1, r2
 8002066:	7a82      	ldrb	r2, [r0, #10]
 8002068:	2a0a      	cmp	r2, #10
 800206a:	f04f 0200 	mov.w	r2, #0
 800206e:	bf08      	it	eq
 8002070:	2201      	moveq	r2, #1
 8002072:	4011      	ands	r1, r2
 8002074:	7ac2      	ldrb	r2, [r0, #11]
 8002076:	2a0b      	cmp	r2, #11
 8002078:	f04f 0200 	mov.w	r2, #0
 800207c:	bf08      	it	eq
 800207e:	2201      	moveq	r2, #1
 8002080:	4011      	ands	r1, r2
 8002082:	7b02      	ldrb	r2, [r0, #12]
 8002084:	2a0c      	cmp	r2, #12
 8002086:	f04f 0200 	mov.w	r2, #0
 800208a:	bf08      	it	eq
 800208c:	2201      	moveq	r2, #1
 800208e:	4011      	ands	r1, r2
 8002090:	7b42      	ldrb	r2, [r0, #13]
 8002092:	2a0d      	cmp	r2, #13
 8002094:	f04f 0200 	mov.w	r2, #0
 8002098:	bf08      	it	eq
 800209a:	2201      	moveq	r2, #1
 800209c:	4011      	ands	r1, r2
 800209e:	7b82      	ldrb	r2, [r0, #14]
 80020a0:	2a0e      	cmp	r2, #14
 80020a2:	f04f 0200 	mov.w	r2, #0
 80020a6:	bf08      	it	eq
 80020a8:	2201      	moveq	r2, #1
 80020aa:	7bc0      	ldrb	r0, [r0, #15]
 80020ac:	4011      	ands	r1, r2
 80020ae:	280f      	cmp	r0, #15
 80020b0:	bf08      	it	eq
 80020b2:	f04f 0c01 	moveq.w	ip, #1
 80020b6:	ea01 000c 	and.w	r0, r1, ip
 80020ba:	bd80      	pop	{r7, pc}

080020bc <__io_putchar>:
 80020bc:	b580      	push	{r7, lr}
 80020be:	466f      	mov	r7, sp
 80020c0:	b082      	sub	sp, #8
 80020c2:	9001      	str	r0, [sp, #4]
 80020c4:	f640 10f4 	movw	r0, #2548	; 0x9f4
 80020c8:	a901      	add	r1, sp, #4
 80020ca:	2201      	movs	r2, #1
 80020cc:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80020d0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020d4:	f7ff fe01 	bl	8001cda <HAL_UART_Transmit>
 80020d8:	9801      	ldr	r0, [sp, #4]
 80020da:	b002      	add	sp, #8
 80020dc:	bd80      	pop	{r7, pc}

080020de <main>:
 80020de:	b5b0      	push	{r4, r5, r7, lr}
 80020e0:	af02      	add	r7, sp, #8
 80020e2:	f640 11f4 	movw	r1, #2548	; 0x9f4
 80020e6:	f643 0000 	movw	r0, #14336	; 0x3800
 80020ea:	220c      	movs	r2, #12
 80020ec:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020f0:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80020f4:	6008      	str	r0, [r1, #0]
 80020f6:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80020fa:	6048      	str	r0, [r1, #4]
 80020fc:	2000      	movs	r0, #0
 80020fe:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002102:	6108      	str	r0, [r1, #16]
 8002104:	6248      	str	r0, [r1, #36]	; 0x24
 8002106:	e9c1 0007 	strd	r0, r0, [r1, #28]
 800210a:	e9c1 2005 	strd	r2, r0, [r1, #20]
 800210e:	2000      	movs	r0, #0
 8002110:	f7ff fe78 	bl	8001e04 <BSP_COM_Init>
 8002114:	f7ff fecf 	bl	8001eb6 <initialise_benchmark>
 8002118:	f247 00f0 	movw	r0, #28912	; 0x70f0
 800211c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002120:	f000 f948 	bl	80023b4 <printf>
 8002124:	f247 10a1 	movw	r0, #29089	; 0x71a1
 8002128:	f6c0 0000 	movt	r0, #2048	; 0x800
 800212c:	f000 f9a4 	bl	8002478 <puts>
 8002130:	f7fe ffda 	bl	80010e8 <HAL_Init>
 8002134:	f7fe fff0 	bl	8001118 <HAL_GetTick>
 8002138:	4604      	mov	r4, r0
 800213a:	f7ff febd 	bl	8001eb8 <benchmark>
 800213e:	4605      	mov	r5, r0
 8002140:	f7fe ffea 	bl	8001118 <HAL_GetTick>
 8002144:	1b04      	subs	r4, r0, r4
 8002146:	4628      	mov	r0, r5
 8002148:	f7ff ff3e 	bl	8001fc8 <verify_benchmark>
 800214c:	1c41      	adds	r1, r0, #1
 800214e:	d006      	beq.n	800215e <main+0x80>
 8002150:	2801      	cmp	r0, #1
 8002152:	d109      	bne.n	8002168 <main+0x8a>
 8002154:	f247 100d 	movw	r0, #28941	; 0x710d
 8002158:	f6c0 0000 	movt	r0, #2048	; 0x800
 800215c:	e008      	b.n	8002170 <main+0x92>
 800215e:	f247 1031 	movw	r0, #28977	; 0x7131
 8002162:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002166:	e003      	b.n	8002170 <main+0x92>
 8002168:	f247 1066 	movw	r0, #29030	; 0x7166
 800216c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002170:	4621      	mov	r1, r4
 8002172:	f000 f91f 	bl	80023b4 <printf>
 8002176:	2000      	movs	r0, #0
 8002178:	bdb0      	pop	{r4, r5, r7, pc}

0800217a <SysTick_Handler>:
 800217a:	b580      	push	{r7, lr}
 800217c:	466f      	mov	r7, sp
 800217e:	f7fe ffc3 	bl	8001108 <HAL_IncTick>
 8002182:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002186:	f7ff b81d 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

0800218a <_read>:
 800218a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800218c:	af03      	add	r7, sp, #12
 800218e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002192:	4614      	mov	r4, r2
 8002194:	460d      	mov	r5, r1
 8002196:	2c01      	cmp	r4, #1
 8002198:	db06      	blt.n	80021a8 <_read+0x1e>
 800219a:	4626      	mov	r6, r4
 800219c:	f3af 8000 	nop.w
 80021a0:	f805 0b01 	strb.w	r0, [r5], #1
 80021a4:	3e01      	subs	r6, #1
 80021a6:	d1f9      	bne.n	800219c <_read+0x12>
 80021a8:	4620      	mov	r0, r4
 80021aa:	f85d bb04 	ldr.w	fp, [sp], #4
 80021ae:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021b0 <_write>:
 80021b0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80021b2:	af03      	add	r7, sp, #12
 80021b4:	f84d bd04 	str.w	fp, [sp, #-4]!
 80021b8:	4614      	mov	r4, r2
 80021ba:	460d      	mov	r5, r1
 80021bc:	2c01      	cmp	r4, #1
 80021be:	db06      	blt.n	80021ce <_write+0x1e>
 80021c0:	4626      	mov	r6, r4
 80021c2:	f815 0b01 	ldrb.w	r0, [r5], #1
 80021c6:	f7ff ff79 	bl	80020bc <__io_putchar>
 80021ca:	3e01      	subs	r6, #1
 80021cc:	d1f9      	bne.n	80021c2 <_write+0x12>
 80021ce:	4620      	mov	r0, r4
 80021d0:	f85d bb04 	ldr.w	fp, [sp], #4
 80021d4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021d6 <_sbrk>:
 80021d6:	f640 2278 	movw	r2, #2680	; 0xa78
 80021da:	4601      	mov	r1, r0
 80021dc:	466b      	mov	r3, sp
 80021de:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021e2:	6810      	ldr	r0, [r2, #0]
 80021e4:	2800      	cmp	r0, #0
 80021e6:	bf02      	ittt	eq
 80021e8:	f640 4028 	movweq	r0, #3112	; 0xc28
 80021ec:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80021f0:	6010      	streq	r0, [r2, #0]
 80021f2:	4401      	add	r1, r0
 80021f4:	4299      	cmp	r1, r3
 80021f6:	bf9c      	itt	ls
 80021f8:	6011      	strls	r1, [r2, #0]
 80021fa:	4770      	bxls	lr
 80021fc:	b580      	push	{r7, lr}
 80021fe:	466f      	mov	r7, sp
 8002200:	f000 f864 	bl	80022cc <__errno>
 8002204:	210c      	movs	r1, #12
 8002206:	6001      	str	r1, [r0, #0]
 8002208:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800220c:	bd80      	pop	{r7, pc}

0800220e <_close>:
 800220e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002212:	4770      	bx	lr

08002214 <_fstat>:
 8002214:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002218:	6048      	str	r0, [r1, #4]
 800221a:	2000      	movs	r0, #0
 800221c:	4770      	bx	lr

0800221e <_isatty>:
 800221e:	2001      	movs	r0, #1
 8002220:	4770      	bx	lr

08002222 <_lseek>:
 8002222:	2000      	movs	r0, #0
 8002224:	4770      	bx	lr

08002226 <SystemInit>:
 8002226:	f64e 5088 	movw	r0, #60808	; 0xed88
 800222a:	f04f 0c00 	mov.w	ip, #0
 800222e:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002232:	6801      	ldr	r1, [r0, #0]
 8002234:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002238:	6001      	str	r1, [r0, #0]
 800223a:	f241 0100 	movw	r1, #4096	; 0x1000
 800223e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002242:	680a      	ldr	r2, [r1, #0]
 8002244:	f042 0201 	orr.w	r2, r2, #1
 8002248:	600a      	str	r2, [r1, #0]
 800224a:	f8c1 c008 	str.w	ip, [r1, #8]
 800224e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002252:	680b      	ldr	r3, [r1, #0]
 8002254:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002258:	401a      	ands	r2, r3
 800225a:	600a      	str	r2, [r1, #0]
 800225c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002260:	60ca      	str	r2, [r1, #12]
 8002262:	680a      	ldr	r2, [r1, #0]
 8002264:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002268:	600a      	str	r2, [r1, #0]
 800226a:	f8c1 c018 	str.w	ip, [r1, #24]
 800226e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002272:	f840 1c80 	str.w	r1, [r0, #-128]
 8002276:	4770      	bx	lr

08002278 <Reset_Handler>:
 8002278:	f8df d034 	ldr.w	sp, [pc, #52]	; 80022b0 <LoopForever+0x2>
 800227c:	2100      	movs	r1, #0
 800227e:	e003      	b.n	8002288 <LoopCopyDataInit>

08002280 <CopyDataInit>:
 8002280:	4b0c      	ldr	r3, [pc, #48]	; (80022b4 <LoopForever+0x6>)
 8002282:	585b      	ldr	r3, [r3, r1]
 8002284:	5043      	str	r3, [r0, r1]
 8002286:	3104      	adds	r1, #4

08002288 <LoopCopyDataInit>:
 8002288:	480b      	ldr	r0, [pc, #44]	; (80022b8 <LoopForever+0xa>)
 800228a:	4b0c      	ldr	r3, [pc, #48]	; (80022bc <LoopForever+0xe>)
 800228c:	1842      	adds	r2, r0, r1
 800228e:	429a      	cmp	r2, r3
 8002290:	d3f6      	bcc.n	8002280 <CopyDataInit>
 8002292:	4a0b      	ldr	r2, [pc, #44]	; (80022c0 <LoopForever+0x12>)
 8002294:	e002      	b.n	800229c <LoopFillZerobss>

08002296 <FillZerobss>:
 8002296:	2300      	movs	r3, #0
 8002298:	f842 3b04 	str.w	r3, [r2], #4

0800229c <LoopFillZerobss>:
 800229c:	4b09      	ldr	r3, [pc, #36]	; (80022c4 <LoopForever+0x16>)
 800229e:	429a      	cmp	r2, r3
 80022a0:	d3f9      	bcc.n	8002296 <FillZerobss>
 80022a2:	f7ff ffc0 	bl	8002226 <SystemInit>
 80022a6:	f000 f817 	bl	80022d8 <__libc_init_array>
 80022aa:	f7ff ff18 	bl	80020de <main>

080022ae <LoopForever>:
 80022ae:	e7fe      	b.n	80022ae <LoopForever>
 80022b0:	20018000 	.word	0x20018000
 80022b4:	08007448 	.word	0x08007448
 80022b8:	20000000 	.word	0x20000000
 80022bc:	200009c8 	.word	0x200009c8
 80022c0:	200009c8 	.word	0x200009c8
 80022c4:	20000c24 	.word	0x20000c24

080022c8 <ADC1_2_IRQHandler>:
 80022c8:	e7fe      	b.n	80022c8 <ADC1_2_IRQHandler>
	...

080022cc <__errno>:
 80022cc:	4b01      	ldr	r3, [pc, #4]	; (80022d4 <__errno+0x8>)
 80022ce:	6818      	ldr	r0, [r3, #0]
 80022d0:	4770      	bx	lr
 80022d2:	bf00      	nop
 80022d4:	20000018 	.word	0x20000018

080022d8 <__libc_init_array>:
 80022d8:	b570      	push	{r4, r5, r6, lr}
 80022da:	4e0d      	ldr	r6, [pc, #52]	; (8002310 <__libc_init_array+0x38>)
 80022dc:	4d0d      	ldr	r5, [pc, #52]	; (8002314 <__libc_init_array+0x3c>)
 80022de:	1b76      	subs	r6, r6, r5
 80022e0:	10b6      	asrs	r6, r6, #2
 80022e2:	d006      	beq.n	80022f2 <__libc_init_array+0x1a>
 80022e4:	2400      	movs	r4, #0
 80022e6:	3401      	adds	r4, #1
 80022e8:	f855 3b04 	ldr.w	r3, [r5], #4
 80022ec:	4798      	blx	r3
 80022ee:	42a6      	cmp	r6, r4
 80022f0:	d1f9      	bne.n	80022e6 <__libc_init_array+0xe>
 80022f2:	4e09      	ldr	r6, [pc, #36]	; (8002318 <__libc_init_array+0x40>)
 80022f4:	4d09      	ldr	r5, [pc, #36]	; (800231c <__libc_init_array+0x44>)
 80022f6:	1b76      	subs	r6, r6, r5
 80022f8:	f004 fea8 	bl	800704c <_init>
 80022fc:	10b6      	asrs	r6, r6, #2
 80022fe:	d006      	beq.n	800230e <__libc_init_array+0x36>
 8002300:	2400      	movs	r4, #0
 8002302:	3401      	adds	r4, #1
 8002304:	f855 3b04 	ldr.w	r3, [r5], #4
 8002308:	4798      	blx	r3
 800230a:	42a6      	cmp	r6, r4
 800230c:	d1f9      	bne.n	8002302 <__libc_init_array+0x2a>
 800230e:	bd70      	pop	{r4, r5, r6, pc}
 8002310:	08007438 	.word	0x08007438
 8002314:	08007438 	.word	0x08007438
 8002318:	08007440 	.word	0x08007440
 800231c:	08007438 	.word	0x08007438

08002320 <memset>:
 8002320:	b4f0      	push	{r4, r5, r6, r7}
 8002322:	0786      	lsls	r6, r0, #30
 8002324:	d043      	beq.n	80023ae <memset+0x8e>
 8002326:	1e54      	subs	r4, r2, #1
 8002328:	2a00      	cmp	r2, #0
 800232a:	d03e      	beq.n	80023aa <memset+0x8a>
 800232c:	b2ca      	uxtb	r2, r1
 800232e:	4603      	mov	r3, r0
 8002330:	e002      	b.n	8002338 <memset+0x18>
 8002332:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002336:	d338      	bcc.n	80023aa <memset+0x8a>
 8002338:	f803 2b01 	strb.w	r2, [r3], #1
 800233c:	079d      	lsls	r5, r3, #30
 800233e:	d1f8      	bne.n	8002332 <memset+0x12>
 8002340:	2c03      	cmp	r4, #3
 8002342:	d92b      	bls.n	800239c <memset+0x7c>
 8002344:	b2cd      	uxtb	r5, r1
 8002346:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800234a:	2c0f      	cmp	r4, #15
 800234c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002350:	d916      	bls.n	8002380 <memset+0x60>
 8002352:	f1a4 0710 	sub.w	r7, r4, #16
 8002356:	093f      	lsrs	r7, r7, #4
 8002358:	f103 0620 	add.w	r6, r3, #32
 800235c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002360:	f103 0210 	add.w	r2, r3, #16
 8002364:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002368:	e942 5502 	strd	r5, r5, [r2, #-8]
 800236c:	3210      	adds	r2, #16
 800236e:	42b2      	cmp	r2, r6
 8002370:	d1f8      	bne.n	8002364 <memset+0x44>
 8002372:	f004 040f 	and.w	r4, r4, #15
 8002376:	3701      	adds	r7, #1
 8002378:	2c03      	cmp	r4, #3
 800237a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800237e:	d90d      	bls.n	800239c <memset+0x7c>
 8002380:	461e      	mov	r6, r3
 8002382:	4622      	mov	r2, r4
 8002384:	3a04      	subs	r2, #4
 8002386:	2a03      	cmp	r2, #3
 8002388:	f846 5b04 	str.w	r5, [r6], #4
 800238c:	d8fa      	bhi.n	8002384 <memset+0x64>
 800238e:	1f22      	subs	r2, r4, #4
 8002390:	f022 0203 	bic.w	r2, r2, #3
 8002394:	3204      	adds	r2, #4
 8002396:	4413      	add	r3, r2
 8002398:	f004 0403 	and.w	r4, r4, #3
 800239c:	b12c      	cbz	r4, 80023aa <memset+0x8a>
 800239e:	b2c9      	uxtb	r1, r1
 80023a0:	441c      	add	r4, r3
 80023a2:	f803 1b01 	strb.w	r1, [r3], #1
 80023a6:	429c      	cmp	r4, r3
 80023a8:	d1fb      	bne.n	80023a2 <memset+0x82>
 80023aa:	bcf0      	pop	{r4, r5, r6, r7}
 80023ac:	4770      	bx	lr
 80023ae:	4614      	mov	r4, r2
 80023b0:	4603      	mov	r3, r0
 80023b2:	e7c5      	b.n	8002340 <memset+0x20>

080023b4 <printf>:
 80023b4:	b40f      	push	{r0, r1, r2, r3}
 80023b6:	b500      	push	{lr}
 80023b8:	4907      	ldr	r1, [pc, #28]	; (80023d8 <printf+0x24>)
 80023ba:	b083      	sub	sp, #12
 80023bc:	ab04      	add	r3, sp, #16
 80023be:	6808      	ldr	r0, [r1, #0]
 80023c0:	f853 2b04 	ldr.w	r2, [r3], #4
 80023c4:	6881      	ldr	r1, [r0, #8]
 80023c6:	9301      	str	r3, [sp, #4]
 80023c8:	f000 f85e 	bl	8002488 <_vfprintf_r>
 80023cc:	b003      	add	sp, #12
 80023ce:	f85d eb04 	ldr.w	lr, [sp], #4
 80023d2:	b004      	add	sp, #16
 80023d4:	4770      	bx	lr
 80023d6:	bf00      	nop
 80023d8:	20000018 	.word	0x20000018

080023dc <_puts_r>:
 80023dc:	b570      	push	{r4, r5, r6, lr}
 80023de:	4605      	mov	r5, r0
 80023e0:	b088      	sub	sp, #32
 80023e2:	4608      	mov	r0, r1
 80023e4:	460c      	mov	r4, r1
 80023e6:	f7fe f92b 	bl	8000640 <strlen>
 80023ea:	4a22      	ldr	r2, [pc, #136]	; (8002474 <_puts_r+0x98>)
 80023ec:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80023ee:	9404      	str	r4, [sp, #16]
 80023f0:	2601      	movs	r6, #1
 80023f2:	1c44      	adds	r4, r0, #1
 80023f4:	a904      	add	r1, sp, #16
 80023f6:	9206      	str	r2, [sp, #24]
 80023f8:	2202      	movs	r2, #2
 80023fa:	9403      	str	r4, [sp, #12]
 80023fc:	9005      	str	r0, [sp, #20]
 80023fe:	68ac      	ldr	r4, [r5, #8]
 8002400:	9607      	str	r6, [sp, #28]
 8002402:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002406:	b31b      	cbz	r3, 8002450 <_puts_r+0x74>
 8002408:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800240a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800240e:	07ce      	lsls	r6, r1, #31
 8002410:	b29a      	uxth	r2, r3
 8002412:	d401      	bmi.n	8002418 <_puts_r+0x3c>
 8002414:	0590      	lsls	r0, r2, #22
 8002416:	d525      	bpl.n	8002464 <_puts_r+0x88>
 8002418:	0491      	lsls	r1, r2, #18
 800241a:	d406      	bmi.n	800242a <_puts_r+0x4e>
 800241c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800241e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002422:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002426:	81a3      	strh	r3, [r4, #12]
 8002428:	6662      	str	r2, [r4, #100]	; 0x64
 800242a:	4628      	mov	r0, r5
 800242c:	aa01      	add	r2, sp, #4
 800242e:	4621      	mov	r1, r4
 8002430:	f003 f85e 	bl	80054f0 <__sfvwrite_r>
 8002434:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002436:	2800      	cmp	r0, #0
 8002438:	bf0c      	ite	eq
 800243a:	250a      	moveq	r5, #10
 800243c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002440:	07da      	lsls	r2, r3, #31
 8002442:	d402      	bmi.n	800244a <_puts_r+0x6e>
 8002444:	89a3      	ldrh	r3, [r4, #12]
 8002446:	059b      	lsls	r3, r3, #22
 8002448:	d506      	bpl.n	8002458 <_puts_r+0x7c>
 800244a:	4628      	mov	r0, r5
 800244c:	b008      	add	sp, #32
 800244e:	bd70      	pop	{r4, r5, r6, pc}
 8002450:	4628      	mov	r0, r5
 8002452:	f002 feb7 	bl	80051c4 <__sinit>
 8002456:	e7d7      	b.n	8002408 <_puts_r+0x2c>
 8002458:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800245a:	f003 fa05 	bl	8005868 <__retarget_lock_release_recursive>
 800245e:	4628      	mov	r0, r5
 8002460:	b008      	add	sp, #32
 8002462:	bd70      	pop	{r4, r5, r6, pc}
 8002464:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002466:	f003 f9fd 	bl	8005864 <__retarget_lock_acquire_recursive>
 800246a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800246e:	b29a      	uxth	r2, r3
 8002470:	e7d2      	b.n	8002418 <_puts_r+0x3c>
 8002472:	bf00      	nop
 8002474:	080071a8 	.word	0x080071a8

08002478 <puts>:
 8002478:	4b02      	ldr	r3, [pc, #8]	; (8002484 <puts+0xc>)
 800247a:	4601      	mov	r1, r0
 800247c:	6818      	ldr	r0, [r3, #0]
 800247e:	f7ff bfad 	b.w	80023dc <_puts_r>
 8002482:	bf00      	nop
 8002484:	20000018 	.word	0x20000018

08002488 <_vfprintf_r>:
 8002488:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800248c:	b0d7      	sub	sp, #348	; 0x15c
 800248e:	461c      	mov	r4, r3
 8002490:	4689      	mov	r9, r1
 8002492:	4617      	mov	r7, r2
 8002494:	4605      	mov	r5, r0
 8002496:	9003      	str	r0, [sp, #12]
 8002498:	f003 f9d2 	bl	8005840 <_localeconv_r>
 800249c:	6803      	ldr	r3, [r0, #0]
 800249e:	9316      	str	r3, [sp, #88]	; 0x58
 80024a0:	4618      	mov	r0, r3
 80024a2:	f7fe f8cd 	bl	8000640 <strlen>
 80024a6:	9408      	str	r4, [sp, #32]
 80024a8:	9015      	str	r0, [sp, #84]	; 0x54
 80024aa:	b11d      	cbz	r5, 80024b4 <_vfprintf_r+0x2c>
 80024ac:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80024ae:	2b00      	cmp	r3, #0
 80024b0:	f000 8107 	beq.w	80026c2 <_vfprintf_r+0x23a>
 80024b4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80024b8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80024bc:	07c8      	lsls	r0, r1, #31
 80024be:	b293      	uxth	r3, r2
 80024c0:	d402      	bmi.n	80024c8 <_vfprintf_r+0x40>
 80024c2:	0599      	lsls	r1, r3, #22
 80024c4:	f140 811f 	bpl.w	8002706 <_vfprintf_r+0x27e>
 80024c8:	049e      	lsls	r6, r3, #18
 80024ca:	d40a      	bmi.n	80024e2 <_vfprintf_r+0x5a>
 80024cc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80024d0:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80024d4:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80024d8:	f8a9 300c 	strh.w	r3, [r9, #12]
 80024dc:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80024e0:	b29b      	uxth	r3, r3
 80024e2:	071d      	lsls	r5, r3, #28
 80024e4:	f140 80b2 	bpl.w	800264c <_vfprintf_r+0x1c4>
 80024e8:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80024ec:	2a00      	cmp	r2, #0
 80024ee:	f000 80ad 	beq.w	800264c <_vfprintf_r+0x1c4>
 80024f2:	f003 021a 	and.w	r2, r3, #26
 80024f6:	2a0a      	cmp	r2, #10
 80024f8:	f000 80c9 	beq.w	800268e <_vfprintf_r+0x206>
 80024fc:	2300      	movs	r3, #0
 80024fe:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002718 <_vfprintf_r+0x290>
 8002502:	9310      	str	r3, [sp, #64]	; 0x40
 8002504:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002508:	9317      	str	r3, [sp, #92]	; 0x5c
 800250a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800250e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002510:	9318      	str	r3, [sp, #96]	; 0x60
 8002512:	9305      	str	r3, [sp, #20]
 8002514:	ab2d      	add	r3, sp, #180	; 0xb4
 8002516:	932a      	str	r3, [sp, #168]	; 0xa8
 8002518:	469b      	mov	fp, r3
 800251a:	783b      	ldrb	r3, [r7, #0]
 800251c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002520:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002524:	2b00      	cmp	r3, #0
 8002526:	f000 8259 	beq.w	80029dc <_vfprintf_r+0x554>
 800252a:	2b25      	cmp	r3, #37	; 0x25
 800252c:	463c      	mov	r4, r7
 800252e:	d102      	bne.n	8002536 <_vfprintf_r+0xae>
 8002530:	e01d      	b.n	800256e <_vfprintf_r+0xe6>
 8002532:	2b25      	cmp	r3, #37	; 0x25
 8002534:	d003      	beq.n	800253e <_vfprintf_r+0xb6>
 8002536:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800253a:	2b00      	cmp	r3, #0
 800253c:	d1f9      	bne.n	8002532 <_vfprintf_r+0xaa>
 800253e:	1be5      	subs	r5, r4, r7
 8002540:	b18d      	cbz	r5, 8002566 <_vfprintf_r+0xde>
 8002542:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002546:	3301      	adds	r3, #1
 8002548:	442a      	add	r2, r5
 800254a:	2b07      	cmp	r3, #7
 800254c:	f8cb 7000 	str.w	r7, [fp]
 8002550:	f8cb 5004 	str.w	r5, [fp, #4]
 8002554:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002558:	f300 80ca 	bgt.w	80026f0 <_vfprintf_r+0x268>
 800255c:	f10b 0b08 	add.w	fp, fp, #8
 8002560:	9b05      	ldr	r3, [sp, #20]
 8002562:	442b      	add	r3, r5
 8002564:	9305      	str	r3, [sp, #20]
 8002566:	7823      	ldrb	r3, [r4, #0]
 8002568:	2b00      	cmp	r3, #0
 800256a:	f000 8237 	beq.w	80029dc <_vfprintf_r+0x554>
 800256e:	2300      	movs	r3, #0
 8002570:	7866      	ldrb	r6, [r4, #1]
 8002572:	9306      	str	r3, [sp, #24]
 8002574:	4698      	mov	r8, r3
 8002576:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800257a:	f104 0a01 	add.w	sl, r4, #1
 800257e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002582:	252b      	movs	r5, #43	; 0x2b
 8002584:	f10a 0a01 	add.w	sl, sl, #1
 8002588:	f1a6 0320 	sub.w	r3, r6, #32
 800258c:	2b5a      	cmp	r3, #90	; 0x5a
 800258e:	f200 842a 	bhi.w	8002de6 <_vfprintf_r+0x95e>
 8002592:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002596:	03aa      	.short	0x03aa
 8002598:	04280428 	.word	0x04280428
 800259c:	0428029c 	.word	0x0428029c
 80025a0:	04280428 	.word	0x04280428
 80025a4:	042802a7 	.word	0x042802a7
 80025a8:	02c60428 	.word	0x02c60428
 80025ac:	042802d2 	.word	0x042802d2
 80025b0:	02dc02d7 	.word	0x02dc02d7
 80025b4:	02f60428 	.word	0x02f60428
 80025b8:	026d026d 	.word	0x026d026d
 80025bc:	026d026d 	.word	0x026d026d
 80025c0:	026d026d 	.word	0x026d026d
 80025c4:	026d026d 	.word	0x026d026d
 80025c8:	0428026d 	.word	0x0428026d
 80025cc:	04280428 	.word	0x04280428
 80025d0:	04280428 	.word	0x04280428
 80025d4:	04280428 	.word	0x04280428
 80025d8:	042802fb 	.word	0x042802fb
 80025dc:	03f3033c 	.word	0x03f3033c
 80025e0:	02fb02fb 	.word	0x02fb02fb
 80025e4:	042802fb 	.word	0x042802fb
 80025e8:	04280428 	.word	0x04280428
 80025ec:	03ee0428 	.word	0x03ee0428
 80025f0:	04280428 	.word	0x04280428
 80025f4:	0428009a 	.word	0x0428009a
 80025f8:	04280428 	.word	0x04280428
 80025fc:	04280350 	.word	0x04280350
 8002600:	04280379 	.word	0x04280379
 8002604:	03900428 	.word	0x03900428
 8002608:	04280428 	.word	0x04280428
 800260c:	04280428 	.word	0x04280428
 8002610:	04280428 	.word	0x04280428
 8002614:	04280428 	.word	0x04280428
 8002618:	042802fb 	.word	0x042802fb
 800261c:	00c5033c 	.word	0x00c5033c
 8002620:	02fb02fb 	.word	0x02fb02fb
 8002624:	03d102fb 	.word	0x03d102fb
 8002628:	007000c5 	.word	0x007000c5
 800262c:	03b50428 	.word	0x03b50428
 8002630:	03c20428 	.word	0x03c20428
 8002634:	03de009c 	.word	0x03de009c
 8002638:	04280070 	.word	0x04280070
 800263c:	00720350 	.word	0x00720350
 8002640:	0428022c 	.word	0x0428022c
 8002644:	027c0428 	.word	0x027c0428
 8002648:	00720428 	.word	0x00720428
 800264c:	4649      	mov	r1, r9
 800264e:	9803      	ldr	r0, [sp, #12]
 8002650:	f001 fc9a 	bl	8003f88 <__swsetup_r>
 8002654:	b1a0      	cbz	r0, 8002680 <_vfprintf_r+0x1f8>
 8002656:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800265a:	07d8      	lsls	r0, r3, #31
 800265c:	d404      	bmi.n	8002668 <_vfprintf_r+0x1e0>
 800265e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002662:	0599      	lsls	r1, r3, #22
 8002664:	f140 83b7 	bpl.w	8002dd6 <_vfprintf_r+0x94e>
 8002668:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800266c:	9305      	str	r3, [sp, #20]
 800266e:	9805      	ldr	r0, [sp, #20]
 8002670:	b057      	add	sp, #348	; 0x15c
 8002672:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002676:	f048 0820 	orr.w	r8, r8, #32
 800267a:	f89a 6000 	ldrb.w	r6, [sl]
 800267e:	e781      	b.n	8002584 <_vfprintf_r+0xfc>
 8002680:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002684:	f003 021a 	and.w	r2, r3, #26
 8002688:	2a0a      	cmp	r2, #10
 800268a:	f47f af37 	bne.w	80024fc <_vfprintf_r+0x74>
 800268e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002692:	2a00      	cmp	r2, #0
 8002694:	f6ff af32 	blt.w	80024fc <_vfprintf_r+0x74>
 8002698:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800269c:	07d2      	lsls	r2, r2, #31
 800269e:	d405      	bmi.n	80026ac <_vfprintf_r+0x224>
 80026a0:	059b      	lsls	r3, r3, #22
 80026a2:	d403      	bmi.n	80026ac <_vfprintf_r+0x224>
 80026a4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80026a8:	f003 f8de 	bl	8005868 <__retarget_lock_release_recursive>
 80026ac:	4623      	mov	r3, r4
 80026ae:	463a      	mov	r2, r7
 80026b0:	4649      	mov	r1, r9
 80026b2:	9803      	ldr	r0, [sp, #12]
 80026b4:	f001 fc26 	bl	8003f04 <__sbprintf>
 80026b8:	9005      	str	r0, [sp, #20]
 80026ba:	9805      	ldr	r0, [sp, #20]
 80026bc:	b057      	add	sp, #348	; 0x15c
 80026be:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80026c2:	9803      	ldr	r0, [sp, #12]
 80026c4:	f002 fd7e 	bl	80051c4 <__sinit>
 80026c8:	e6f4      	b.n	80024b4 <_vfprintf_r+0x2c>
 80026ca:	f048 0810 	orr.w	r8, r8, #16
 80026ce:	f018 0f20 	tst.w	r8, #32
 80026d2:	f000 836c 	beq.w	8002dae <_vfprintf_r+0x926>
 80026d6:	9c08      	ldr	r4, [sp, #32]
 80026d8:	3407      	adds	r4, #7
 80026da:	f024 0307 	bic.w	r3, r4, #7
 80026de:	e9d3 4500 	ldrd	r4, r5, [r3]
 80026e2:	f103 0208 	add.w	r2, r3, #8
 80026e6:	9208      	str	r2, [sp, #32]
 80026e8:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80026ec:	2200      	movs	r2, #0
 80026ee:	e18c      	b.n	8002a0a <_vfprintf_r+0x582>
 80026f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80026f2:	9907      	ldr	r1, [sp, #28]
 80026f4:	9803      	ldr	r0, [sp, #12]
 80026f6:	f004 f9f5 	bl	8006ae4 <__sprint_r>
 80026fa:	2800      	cmp	r0, #0
 80026fc:	f041 8376 	bne.w	8003dec <_vfprintf_r+0x1964>
 8002700:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002704:	e72c      	b.n	8002560 <_vfprintf_r+0xd8>
 8002706:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800270a:	f003 f8ab 	bl	8005864 <__retarget_lock_acquire_recursive>
 800270e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002712:	b293      	uxth	r3, r2
 8002714:	e6d8      	b.n	80024c8 <_vfprintf_r+0x40>
 8002716:	bf00      	nop
	...
 8002720:	4643      	mov	r3, r8
 8002722:	069f      	lsls	r7, r3, #26
 8002724:	f140 832f 	bpl.w	8002d86 <_vfprintf_r+0x8fe>
 8002728:	9c08      	ldr	r4, [sp, #32]
 800272a:	3407      	adds	r4, #7
 800272c:	f024 0407 	bic.w	r4, r4, #7
 8002730:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002734:	f104 0208 	add.w	r2, r4, #8
 8002738:	9208      	str	r2, [sp, #32]
 800273a:	4604      	mov	r4, r0
 800273c:	460d      	mov	r5, r1
 800273e:	2800      	cmp	r0, #0
 8002740:	f171 0200 	sbcs.w	r2, r1, #0
 8002744:	da05      	bge.n	8002752 <_vfprintf_r+0x2ca>
 8002746:	222d      	movs	r2, #45	; 0x2d
 8002748:	4264      	negs	r4, r4
 800274a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 800274e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002752:	aa56      	add	r2, sp, #344	; 0x158
 8002754:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002758:	9204      	str	r2, [sp, #16]
 800275a:	f000 84b2 	beq.w	80030c2 <_vfprintf_r+0xc3a>
 800275e:	2201      	movs	r2, #1
 8002760:	ea54 0105 	orrs.w	r1, r4, r5
 8002764:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002768:	f040 8159 	bne.w	8002a1e <_vfprintf_r+0x596>
 800276c:	f1b9 0f00 	cmp.w	r9, #0
 8002770:	f040 8619 	bne.w	80033a6 <_vfprintf_r+0xf1e>
 8002774:	2a00      	cmp	r2, #0
 8002776:	f040 8508 	bne.w	800318a <_vfprintf_r+0xd02>
 800277a:	f013 0301 	ands.w	r3, r3, #1
 800277e:	af56      	add	r7, sp, #344	; 0x158
 8002780:	9309      	str	r3, [sp, #36]	; 0x24
 8002782:	d002      	beq.n	800278a <_vfprintf_r+0x302>
 8002784:	2330      	movs	r3, #48	; 0x30
 8002786:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800278a:	2300      	movs	r3, #0
 800278c:	930a      	str	r3, [sp, #40]	; 0x28
 800278e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002790:	9314      	str	r3, [sp, #80]	; 0x50
 8002792:	9311      	str	r3, [sp, #68]	; 0x44
 8002794:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002796:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800279a:	454b      	cmp	r3, r9
 800279c:	bfb8      	it	lt
 800279e:	464b      	movlt	r3, r9
 80027a0:	9304      	str	r3, [sp, #16]
 80027a2:	b112      	cbz	r2, 80027aa <_vfprintf_r+0x322>
 80027a4:	9b04      	ldr	r3, [sp, #16]
 80027a6:	3301      	adds	r3, #1
 80027a8:	9304      	str	r3, [sp, #16]
 80027aa:	f018 0302 	ands.w	r3, r8, #2
 80027ae:	930b      	str	r3, [sp, #44]	; 0x2c
 80027b0:	d002      	beq.n	80027b8 <_vfprintf_r+0x330>
 80027b2:	9b04      	ldr	r3, [sp, #16]
 80027b4:	3302      	adds	r3, #2
 80027b6:	9304      	str	r3, [sp, #16]
 80027b8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 80027bc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80027be:	930e      	str	r3, [sp, #56]	; 0x38
 80027c0:	d13f      	bne.n	8002842 <_vfprintf_r+0x3ba>
 80027c2:	9b06      	ldr	r3, [sp, #24]
 80027c4:	9904      	ldr	r1, [sp, #16]
 80027c6:	1a5d      	subs	r5, r3, r1
 80027c8:	2d00      	cmp	r5, #0
 80027ca:	dd3a      	ble.n	8002842 <_vfprintf_r+0x3ba>
 80027cc:	2d10      	cmp	r5, #16
 80027ce:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80027d0:	dd29      	ble.n	8002826 <_vfprintf_r+0x39e>
 80027d2:	4659      	mov	r1, fp
 80027d4:	4620      	mov	r0, r4
 80027d6:	9620      	str	r6, [sp, #128]	; 0x80
 80027d8:	2310      	movs	r3, #16
 80027da:	9c03      	ldr	r4, [sp, #12]
 80027dc:	9e07      	ldr	r6, [sp, #28]
 80027de:	46bb      	mov	fp, r7
 80027e0:	e004      	b.n	80027ec <_vfprintf_r+0x364>
 80027e2:	3d10      	subs	r5, #16
 80027e4:	2d10      	cmp	r5, #16
 80027e6:	f101 0108 	add.w	r1, r1, #8
 80027ea:	dd18      	ble.n	800281e <_vfprintf_r+0x396>
 80027ec:	3201      	adds	r2, #1
 80027ee:	4fba      	ldr	r7, [pc, #744]	; (8002ad8 <_vfprintf_r+0x650>)
 80027f0:	3010      	adds	r0, #16
 80027f2:	2a07      	cmp	r2, #7
 80027f4:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80027f8:	e9c1 7300 	strd	r7, r3, [r1]
 80027fc:	ddf1      	ble.n	80027e2 <_vfprintf_r+0x35a>
 80027fe:	aa2a      	add	r2, sp, #168	; 0xa8
 8002800:	4631      	mov	r1, r6
 8002802:	4620      	mov	r0, r4
 8002804:	930c      	str	r3, [sp, #48]	; 0x30
 8002806:	f004 f96d 	bl	8006ae4 <__sprint_r>
 800280a:	2800      	cmp	r0, #0
 800280c:	f040 843d 	bne.w	800308a <_vfprintf_r+0xc02>
 8002810:	3d10      	subs	r5, #16
 8002812:	2d10      	cmp	r5, #16
 8002814:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002818:	a92d      	add	r1, sp, #180	; 0xb4
 800281a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 800281c:	dce6      	bgt.n	80027ec <_vfprintf_r+0x364>
 800281e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002820:	465f      	mov	r7, fp
 8002822:	4604      	mov	r4, r0
 8002824:	468b      	mov	fp, r1
 8002826:	3201      	adds	r2, #1
 8002828:	4bab      	ldr	r3, [pc, #684]	; (8002ad8 <_vfprintf_r+0x650>)
 800282a:	442c      	add	r4, r5
 800282c:	2a07      	cmp	r2, #7
 800282e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002832:	e9cb 3500 	strd	r3, r5, [fp]
 8002836:	f300 84ff 	bgt.w	8003238 <_vfprintf_r+0xdb0>
 800283a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800283e:	f10b 0b08 	add.w	fp, fp, #8
 8002842:	b172      	cbz	r2, 8002862 <_vfprintf_r+0x3da>
 8002844:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002846:	3201      	adds	r2, #1
 8002848:	3401      	adds	r4, #1
 800284a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 800284e:	2101      	movs	r1, #1
 8002850:	2a07      	cmp	r2, #7
 8002852:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002856:	e9cb 0100 	strd	r0, r1, [fp]
 800285a:	f300 8418 	bgt.w	800308e <_vfprintf_r+0xc06>
 800285e:	f10b 0b08 	add.w	fp, fp, #8
 8002862:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002864:	b16b      	cbz	r3, 8002882 <_vfprintf_r+0x3fa>
 8002866:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002868:	3301      	adds	r3, #1
 800286a:	3402      	adds	r4, #2
 800286c:	a923      	add	r1, sp, #140	; 0x8c
 800286e:	2202      	movs	r2, #2
 8002870:	2b07      	cmp	r3, #7
 8002872:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002876:	e9cb 1200 	strd	r1, r2, [fp]
 800287a:	f300 8415 	bgt.w	80030a8 <_vfprintf_r+0xc20>
 800287e:	f10b 0b08 	add.w	fp, fp, #8
 8002882:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002884:	2b80      	cmp	r3, #128	; 0x80
 8002886:	f000 8331 	beq.w	8002eec <_vfprintf_r+0xa64>
 800288a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800288c:	eba9 0503 	sub.w	r5, r9, r3
 8002890:	2d00      	cmp	r5, #0
 8002892:	dd37      	ble.n	8002904 <_vfprintf_r+0x47c>
 8002894:	2d10      	cmp	r5, #16
 8002896:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002898:	4b90      	ldr	r3, [pc, #576]	; (8002adc <_vfprintf_r+0x654>)
 800289a:	dd28      	ble.n	80028ee <_vfprintf_r+0x466>
 800289c:	4659      	mov	r1, fp
 800289e:	4620      	mov	r0, r4
 80028a0:	46bb      	mov	fp, r7
 80028a2:	f04f 0910 	mov.w	r9, #16
 80028a6:	4637      	mov	r7, r6
 80028a8:	461c      	mov	r4, r3
 80028aa:	9e07      	ldr	r6, [sp, #28]
 80028ac:	e004      	b.n	80028b8 <_vfprintf_r+0x430>
 80028ae:	3d10      	subs	r5, #16
 80028b0:	2d10      	cmp	r5, #16
 80028b2:	f101 0108 	add.w	r1, r1, #8
 80028b6:	dd15      	ble.n	80028e4 <_vfprintf_r+0x45c>
 80028b8:	3201      	adds	r2, #1
 80028ba:	3010      	adds	r0, #16
 80028bc:	2a07      	cmp	r2, #7
 80028be:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80028c2:	e9c1 4900 	strd	r4, r9, [r1]
 80028c6:	ddf2      	ble.n	80028ae <_vfprintf_r+0x426>
 80028c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80028ca:	4631      	mov	r1, r6
 80028cc:	9803      	ldr	r0, [sp, #12]
 80028ce:	f004 f909 	bl	8006ae4 <__sprint_r>
 80028d2:	2800      	cmp	r0, #0
 80028d4:	f040 83d9 	bne.w	800308a <_vfprintf_r+0xc02>
 80028d8:	3d10      	subs	r5, #16
 80028da:	2d10      	cmp	r5, #16
 80028dc:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80028e0:	a92d      	add	r1, sp, #180	; 0xb4
 80028e2:	dce9      	bgt.n	80028b8 <_vfprintf_r+0x430>
 80028e4:	463e      	mov	r6, r7
 80028e6:	4623      	mov	r3, r4
 80028e8:	465f      	mov	r7, fp
 80028ea:	4604      	mov	r4, r0
 80028ec:	468b      	mov	fp, r1
 80028ee:	3201      	adds	r2, #1
 80028f0:	442c      	add	r4, r5
 80028f2:	2a07      	cmp	r2, #7
 80028f4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028f8:	e9cb 3500 	strd	r3, r5, [fp]
 80028fc:	f300 83ef 	bgt.w	80030de <_vfprintf_r+0xc56>
 8002900:	f10b 0b08 	add.w	fp, fp, #8
 8002904:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002908:	f040 8280 	bne.w	8002e0c <_vfprintf_r+0x984>
 800290c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800290e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002910:	f8cb 7000 	str.w	r7, [fp]
 8002914:	3301      	adds	r3, #1
 8002916:	4414      	add	r4, r2
 8002918:	2b07      	cmp	r3, #7
 800291a:	942c      	str	r4, [sp, #176]	; 0xb0
 800291c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002920:	932b      	str	r3, [sp, #172]	; 0xac
 8002922:	f300 8392 	bgt.w	800304a <_vfprintf_r+0xbc2>
 8002926:	f10b 0b08 	add.w	fp, fp, #8
 800292a:	f018 0f04 	tst.w	r8, #4
 800292e:	d03b      	beq.n	80029a8 <_vfprintf_r+0x520>
 8002930:	9b06      	ldr	r3, [sp, #24]
 8002932:	9a04      	ldr	r2, [sp, #16]
 8002934:	1a9d      	subs	r5, r3, r2
 8002936:	2d00      	cmp	r5, #0
 8002938:	dd36      	ble.n	80029a8 <_vfprintf_r+0x520>
 800293a:	2d10      	cmp	r5, #16
 800293c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800293e:	dd21      	ble.n	8002984 <_vfprintf_r+0x4fc>
 8002940:	2610      	movs	r6, #16
 8002942:	9f03      	ldr	r7, [sp, #12]
 8002944:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002948:	e004      	b.n	8002954 <_vfprintf_r+0x4cc>
 800294a:	3d10      	subs	r5, #16
 800294c:	2d10      	cmp	r5, #16
 800294e:	f10b 0b08 	add.w	fp, fp, #8
 8002952:	dd17      	ble.n	8002984 <_vfprintf_r+0x4fc>
 8002954:	3301      	adds	r3, #1
 8002956:	4a60      	ldr	r2, [pc, #384]	; (8002ad8 <_vfprintf_r+0x650>)
 8002958:	3410      	adds	r4, #16
 800295a:	2b07      	cmp	r3, #7
 800295c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002960:	e9cb 2600 	strd	r2, r6, [fp]
 8002964:	ddf1      	ble.n	800294a <_vfprintf_r+0x4c2>
 8002966:	aa2a      	add	r2, sp, #168	; 0xa8
 8002968:	4641      	mov	r1, r8
 800296a:	4638      	mov	r0, r7
 800296c:	f004 f8ba 	bl	8006ae4 <__sprint_r>
 8002970:	2800      	cmp	r0, #0
 8002972:	f040 856c 	bne.w	800344e <_vfprintf_r+0xfc6>
 8002976:	3d10      	subs	r5, #16
 8002978:	2d10      	cmp	r5, #16
 800297a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800297e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002982:	dce7      	bgt.n	8002954 <_vfprintf_r+0x4cc>
 8002984:	3301      	adds	r3, #1
 8002986:	4a54      	ldr	r2, [pc, #336]	; (8002ad8 <_vfprintf_r+0x650>)
 8002988:	442c      	add	r4, r5
 800298a:	2b07      	cmp	r3, #7
 800298c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002990:	e9cb 2500 	strd	r2, r5, [fp]
 8002994:	dd08      	ble.n	80029a8 <_vfprintf_r+0x520>
 8002996:	aa2a      	add	r2, sp, #168	; 0xa8
 8002998:	9907      	ldr	r1, [sp, #28]
 800299a:	9803      	ldr	r0, [sp, #12]
 800299c:	f004 f8a2 	bl	8006ae4 <__sprint_r>
 80029a0:	2800      	cmp	r0, #0
 80029a2:	f040 82e9 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 80029a6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80029a8:	9904      	ldr	r1, [sp, #16]
 80029aa:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 80029ae:	428a      	cmp	r2, r1
 80029b0:	bfac      	ite	ge
 80029b2:	189b      	addge	r3, r3, r2
 80029b4:	185b      	addlt	r3, r3, r1
 80029b6:	9305      	str	r3, [sp, #20]
 80029b8:	2c00      	cmp	r4, #0
 80029ba:	f040 82d5 	bne.w	8002f68 <_vfprintf_r+0xae0>
 80029be:	2300      	movs	r3, #0
 80029c0:	932b      	str	r3, [sp, #172]	; 0xac
 80029c2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80029c4:	b11b      	cbz	r3, 80029ce <_vfprintf_r+0x546>
 80029c6:	990a      	ldr	r1, [sp, #40]	; 0x28
 80029c8:	9803      	ldr	r0, [sp, #12]
 80029ca:	f002 fc9d 	bl	8005308 <_free_r>
 80029ce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80029d2:	4657      	mov	r7, sl
 80029d4:	783b      	ldrb	r3, [r7, #0]
 80029d6:	2b00      	cmp	r3, #0
 80029d8:	f47f ada7 	bne.w	800252a <_vfprintf_r+0xa2>
 80029dc:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 80029de:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80029e2:	2b00      	cmp	r3, #0
 80029e4:	f041 80e7 	bne.w	8003bb6 <_vfprintf_r+0x172e>
 80029e8:	2300      	movs	r3, #0
 80029ea:	932b      	str	r3, [sp, #172]	; 0xac
 80029ec:	e2cb      	b.n	8002f86 <_vfprintf_r+0xafe>
 80029ee:	4643      	mov	r3, r8
 80029f0:	069a      	lsls	r2, r3, #26
 80029f2:	f140 814e 	bpl.w	8002c92 <_vfprintf_r+0x80a>
 80029f6:	9c08      	ldr	r4, [sp, #32]
 80029f8:	3407      	adds	r4, #7
 80029fa:	f024 0207 	bic.w	r2, r4, #7
 80029fe:	f102 0108 	add.w	r1, r2, #8
 8002a02:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002a06:	9108      	str	r1, [sp, #32]
 8002a08:	2201      	movs	r2, #1
 8002a0a:	2100      	movs	r1, #0
 8002a0c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002a10:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a14:	a956      	add	r1, sp, #344	; 0x158
 8002a16:	9104      	str	r1, [sp, #16]
 8002a18:	f47f aea2 	bne.w	8002760 <_vfprintf_r+0x2d8>
 8002a1c:	4698      	mov	r8, r3
 8002a1e:	2a01      	cmp	r2, #1
 8002a20:	f000 8350 	beq.w	80030c4 <_vfprintf_r+0xc3c>
 8002a24:	2a02      	cmp	r2, #2
 8002a26:	f000 831b 	beq.w	8003060 <_vfprintf_r+0xbd8>
 8002a2a:	a956      	add	r1, sp, #344	; 0x158
 8002a2c:	e000      	b.n	8002a30 <_vfprintf_r+0x5a8>
 8002a2e:	4639      	mov	r1, r7
 8002a30:	08e2      	lsrs	r2, r4, #3
 8002a32:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002a36:	08e8      	lsrs	r0, r5, #3
 8002a38:	f004 0307 	and.w	r3, r4, #7
 8002a3c:	4605      	mov	r5, r0
 8002a3e:	4614      	mov	r4, r2
 8002a40:	3330      	adds	r3, #48	; 0x30
 8002a42:	ea54 0205 	orrs.w	r2, r4, r5
 8002a46:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002a4a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002a4e:	d1ee      	bne.n	8002a2e <_vfprintf_r+0x5a6>
 8002a50:	f018 0f01 	tst.w	r8, #1
 8002a54:	f000 8314 	beq.w	8003080 <_vfprintf_r+0xbf8>
 8002a58:	2b30      	cmp	r3, #48	; 0x30
 8002a5a:	f000 8311 	beq.w	8003080 <_vfprintf_r+0xbf8>
 8002a5e:	9a04      	ldr	r2, [sp, #16]
 8002a60:	3902      	subs	r1, #2
 8002a62:	2330      	movs	r3, #48	; 0x30
 8002a64:	1a52      	subs	r2, r2, r1
 8002a66:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002a6a:	9209      	str	r2, [sp, #36]	; 0x24
 8002a6c:	460f      	mov	r7, r1
 8002a6e:	e68c      	b.n	800278a <_vfprintf_r+0x302>
 8002a70:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a74:	2200      	movs	r2, #0
 8002a76:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002a7a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002a7e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002a82:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002a86:	2b09      	cmp	r3, #9
 8002a88:	d9f5      	bls.n	8002a76 <_vfprintf_r+0x5ee>
 8002a8a:	9206      	str	r2, [sp, #24]
 8002a8c:	e57c      	b.n	8002588 <_vfprintf_r+0x100>
 8002a8e:	4b14      	ldr	r3, [pc, #80]	; (8002ae0 <_vfprintf_r+0x658>)
 8002a90:	9317      	str	r3, [sp, #92]	; 0x5c
 8002a92:	f018 0f20 	tst.w	r8, #32
 8002a96:	f000 8114 	beq.w	8002cc2 <_vfprintf_r+0x83a>
 8002a9a:	9c08      	ldr	r4, [sp, #32]
 8002a9c:	3407      	adds	r4, #7
 8002a9e:	f024 0307 	bic.w	r3, r4, #7
 8002aa2:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002aa6:	f103 0208 	add.w	r2, r3, #8
 8002aaa:	9208      	str	r2, [sp, #32]
 8002aac:	f018 0f01 	tst.w	r8, #1
 8002ab0:	d009      	beq.n	8002ac6 <_vfprintf_r+0x63e>
 8002ab2:	ea54 0305 	orrs.w	r3, r4, r5
 8002ab6:	d006      	beq.n	8002ac6 <_vfprintf_r+0x63e>
 8002ab8:	2330      	movs	r3, #48	; 0x30
 8002aba:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002abe:	f048 0802 	orr.w	r8, r8, #2
 8002ac2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002ac6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002aca:	2202      	movs	r2, #2
 8002acc:	e79d      	b.n	8002a0a <_vfprintf_r+0x582>
 8002ace:	f048 0801 	orr.w	r8, r8, #1
 8002ad2:	f89a 6000 	ldrb.w	r6, [sl]
 8002ad6:	e555      	b.n	8002584 <_vfprintf_r+0xfc>
 8002ad8:	080071f0 	.word	0x080071f0
 8002adc:	08007200 	.word	0x08007200
 8002ae0:	080071bc 	.word	0x080071bc
 8002ae4:	9e03      	ldr	r6, [sp, #12]
 8002ae6:	4630      	mov	r0, r6
 8002ae8:	f002 feaa 	bl	8005840 <_localeconv_r>
 8002aec:	6843      	ldr	r3, [r0, #4]
 8002aee:	9318      	str	r3, [sp, #96]	; 0x60
 8002af0:	4618      	mov	r0, r3
 8002af2:	f7fd fda5 	bl	8000640 <strlen>
 8002af6:	901b      	str	r0, [sp, #108]	; 0x6c
 8002af8:	4604      	mov	r4, r0
 8002afa:	4630      	mov	r0, r6
 8002afc:	f002 fea0 	bl	8005840 <_localeconv_r>
 8002b00:	6883      	ldr	r3, [r0, #8]
 8002b02:	931a      	str	r3, [sp, #104]	; 0x68
 8002b04:	2c00      	cmp	r4, #0
 8002b06:	f43f adb8 	beq.w	800267a <_vfprintf_r+0x1f2>
 8002b0a:	f89a 6000 	ldrb.w	r6, [sl]
 8002b0e:	2b00      	cmp	r3, #0
 8002b10:	f43f ad38 	beq.w	8002584 <_vfprintf_r+0xfc>
 8002b14:	781b      	ldrb	r3, [r3, #0]
 8002b16:	2b00      	cmp	r3, #0
 8002b18:	f43f ad34 	beq.w	8002584 <_vfprintf_r+0xfc>
 8002b1c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002b20:	e530      	b.n	8002584 <_vfprintf_r+0xfc>
 8002b22:	9b08      	ldr	r3, [sp, #32]
 8002b24:	f89a 6000 	ldrb.w	r6, [sl]
 8002b28:	681a      	ldr	r2, [r3, #0]
 8002b2a:	9206      	str	r2, [sp, #24]
 8002b2c:	2a00      	cmp	r2, #0
 8002b2e:	f103 0304 	add.w	r3, r3, #4
 8002b32:	f2c0 8697 	blt.w	8003864 <_vfprintf_r+0x13dc>
 8002b36:	9308      	str	r3, [sp, #32]
 8002b38:	e524      	b.n	8002584 <_vfprintf_r+0xfc>
 8002b3a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002b3e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b42:	e51f      	b.n	8002584 <_vfprintf_r+0xfc>
 8002b44:	f89a 6000 	ldrb.w	r6, [sl]
 8002b48:	f048 0804 	orr.w	r8, r8, #4
 8002b4c:	e51a      	b.n	8002584 <_vfprintf_r+0xfc>
 8002b4e:	f89a 6000 	ldrb.w	r6, [sl]
 8002b52:	2e2a      	cmp	r6, #42	; 0x2a
 8002b54:	f10a 0201 	add.w	r2, sl, #1
 8002b58:	f001 81b0 	beq.w	8003ebc <_vfprintf_r+0x1a34>
 8002b5c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b60:	2b09      	cmp	r3, #9
 8002b62:	4692      	mov	sl, r2
 8002b64:	f04f 0900 	mov.w	r9, #0
 8002b68:	f63f ad0e 	bhi.w	8002588 <_vfprintf_r+0x100>
 8002b6c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b70:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002b74:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002b78:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b7c:	2b09      	cmp	r3, #9
 8002b7e:	d9f5      	bls.n	8002b6c <_vfprintf_r+0x6e4>
 8002b80:	e502      	b.n	8002588 <_vfprintf_r+0x100>
 8002b82:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002b86:	f89a 6000 	ldrb.w	r6, [sl]
 8002b8a:	e4fb      	b.n	8002584 <_vfprintf_r+0xfc>
 8002b8c:	9c08      	ldr	r4, [sp, #32]
 8002b8e:	3407      	adds	r4, #7
 8002b90:	f024 0407 	bic.w	r4, r4, #7
 8002b94:	ed94 7b00 	vldr	d7, [r4]
 8002b98:	ec52 1b17 	vmov	r1, r2, d7
 8002b9c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002ba0:	931d      	str	r3, [sp, #116]	; 0x74
 8002ba2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002ba6:	3408      	adds	r4, #8
 8002ba8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002bac:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002bb0:	4bba      	ldr	r3, [pc, #744]	; (8002e9c <_vfprintf_r+0xa14>)
 8002bb2:	9408      	str	r4, [sp, #32]
 8002bb4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002bb8:	f7fe fa58 	bl	800106c <__aeabi_dcmpun>
 8002bbc:	2800      	cmp	r0, #0
 8002bbe:	f040 846f 	bne.w	80034a0 <_vfprintf_r+0x1018>
 8002bc2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002bc6:	4bb5      	ldr	r3, [pc, #724]	; (8002e9c <_vfprintf_r+0xa14>)
 8002bc8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002bcc:	f7fe fa30 	bl	8001030 <__aeabi_dcmple>
 8002bd0:	2800      	cmp	r0, #0
 8002bd2:	f040 8465 	bne.w	80034a0 <_vfprintf_r+0x1018>
 8002bd6:	2200      	movs	r2, #0
 8002bd8:	2300      	movs	r3, #0
 8002bda:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002bde:	f7fe fa1d 	bl	800101c <__aeabi_dcmplt>
 8002be2:	2800      	cmp	r0, #0
 8002be4:	f040 855b 	bne.w	800369e <_vfprintf_r+0x1216>
 8002be8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002bec:	4fac      	ldr	r7, [pc, #688]	; (8002ea0 <_vfprintf_r+0xa18>)
 8002bee:	4bad      	ldr	r3, [pc, #692]	; (8002ea4 <_vfprintf_r+0xa1c>)
 8002bf0:	2000      	movs	r0, #0
 8002bf2:	2103      	movs	r1, #3
 8002bf4:	9104      	str	r1, [sp, #16]
 8002bf6:	900a      	str	r0, [sp, #40]	; 0x28
 8002bf8:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002bfc:	2e47      	cmp	r6, #71	; 0x47
 8002bfe:	bfd8      	it	le
 8002c00:	461f      	movle	r7, r3
 8002c02:	9109      	str	r1, [sp, #36]	; 0x24
 8002c04:	4681      	mov	r9, r0
 8002c06:	900f      	str	r0, [sp, #60]	; 0x3c
 8002c08:	9014      	str	r0, [sp, #80]	; 0x50
 8002c0a:	9011      	str	r0, [sp, #68]	; 0x44
 8002c0c:	e5c9      	b.n	80027a2 <_vfprintf_r+0x31a>
 8002c0e:	9808      	ldr	r0, [sp, #32]
 8002c10:	2300      	movs	r3, #0
 8002c12:	6801      	ldr	r1, [r0, #0]
 8002c14:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c18:	461a      	mov	r2, r3
 8002c1a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002c1e:	2301      	movs	r3, #1
 8002c20:	1d01      	adds	r1, r0, #4
 8002c22:	9304      	str	r3, [sp, #16]
 8002c24:	920a      	str	r2, [sp, #40]	; 0x28
 8002c26:	4691      	mov	r9, r2
 8002c28:	920f      	str	r2, [sp, #60]	; 0x3c
 8002c2a:	9214      	str	r2, [sp, #80]	; 0x50
 8002c2c:	9211      	str	r2, [sp, #68]	; 0x44
 8002c2e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002c32:	af3d      	add	r7, sp, #244	; 0xf4
 8002c34:	e5b9      	b.n	80027aa <_vfprintf_r+0x322>
 8002c36:	9b08      	ldr	r3, [sp, #32]
 8002c38:	681f      	ldr	r7, [r3, #0]
 8002c3a:	2500      	movs	r5, #0
 8002c3c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002c40:	1d1c      	adds	r4, r3, #4
 8002c42:	2f00      	cmp	r7, #0
 8002c44:	f000 8639 	beq.w	80038ba <_vfprintf_r+0x1432>
 8002c48:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002c4c:	f000 8711 	beq.w	8003a72 <_vfprintf_r+0x15ea>
 8002c50:	464a      	mov	r2, r9
 8002c52:	4629      	mov	r1, r5
 8002c54:	4638      	mov	r0, r7
 8002c56:	f7fd fd63 	bl	8000720 <memchr>
 8002c5a:	900a      	str	r0, [sp, #40]	; 0x28
 8002c5c:	2800      	cmp	r0, #0
 8002c5e:	f000 85e7 	beq.w	8003830 <_vfprintf_r+0x13a8>
 8002c62:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c64:	1bdb      	subs	r3, r3, r7
 8002c66:	9309      	str	r3, [sp, #36]	; 0x24
 8002c68:	46a9      	mov	r9, r5
 8002c6a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002c6e:	9408      	str	r4, [sp, #32]
 8002c70:	9304      	str	r3, [sp, #16]
 8002c72:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002c76:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002c7a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002c7e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002c82:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c86:	e58c      	b.n	80027a2 <_vfprintf_r+0x31a>
 8002c88:	f048 0310 	orr.w	r3, r8, #16
 8002c8c:	069a      	lsls	r2, r3, #26
 8002c8e:	f53f aeb2 	bmi.w	80029f6 <_vfprintf_r+0x56e>
 8002c92:	9a08      	ldr	r2, [sp, #32]
 8002c94:	06df      	lsls	r7, r3, #27
 8002c96:	f102 0104 	add.w	r1, r2, #4
 8002c9a:	f100 837e 	bmi.w	800339a <_vfprintf_r+0xf12>
 8002c9e:	065d      	lsls	r5, r3, #25
 8002ca0:	9a08      	ldr	r2, [sp, #32]
 8002ca2:	f100 84e4 	bmi.w	800366e <_vfprintf_r+0x11e6>
 8002ca6:	059c      	lsls	r4, r3, #22
 8002ca8:	f140 8377 	bpl.w	800339a <_vfprintf_r+0xf12>
 8002cac:	7814      	ldrb	r4, [r2, #0]
 8002cae:	9108      	str	r1, [sp, #32]
 8002cb0:	2500      	movs	r5, #0
 8002cb2:	2201      	movs	r2, #1
 8002cb4:	e6a9      	b.n	8002a0a <_vfprintf_r+0x582>
 8002cb6:	4b7c      	ldr	r3, [pc, #496]	; (8002ea8 <_vfprintf_r+0xa20>)
 8002cb8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002cba:	f018 0f20 	tst.w	r8, #32
 8002cbe:	f47f aeec 	bne.w	8002a9a <_vfprintf_r+0x612>
 8002cc2:	9a08      	ldr	r2, [sp, #32]
 8002cc4:	f018 0f10 	tst.w	r8, #16
 8002cc8:	f102 0304 	add.w	r3, r2, #4
 8002ccc:	f040 8354 	bne.w	8003378 <_vfprintf_r+0xef0>
 8002cd0:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002cd4:	9a08      	ldr	r2, [sp, #32]
 8002cd6:	f040 84d0 	bne.w	800367a <_vfprintf_r+0x11f2>
 8002cda:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002cde:	f000 834b 	beq.w	8003378 <_vfprintf_r+0xef0>
 8002ce2:	7814      	ldrb	r4, [r2, #0]
 8002ce4:	9308      	str	r3, [sp, #32]
 8002ce6:	2500      	movs	r5, #0
 8002ce8:	e6e0      	b.n	8002aac <_vfprintf_r+0x624>
 8002cea:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002cee:	f89a 6000 	ldrb.w	r6, [sl]
 8002cf2:	2b00      	cmp	r3, #0
 8002cf4:	f47f ac46 	bne.w	8002584 <_vfprintf_r+0xfc>
 8002cf8:	2320      	movs	r3, #32
 8002cfa:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002cfe:	e441      	b.n	8002584 <_vfprintf_r+0xfc>
 8002d00:	f89a 6000 	ldrb.w	r6, [sl]
 8002d04:	2e6c      	cmp	r6, #108	; 0x6c
 8002d06:	bf03      	ittte	eq
 8002d08:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002d0c:	f048 0820 	orreq.w	r8, r8, #32
 8002d10:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d14:	f048 0810 	orrne.w	r8, r8, #16
 8002d18:	e434      	b.n	8002584 <_vfprintf_r+0xfc>
 8002d1a:	9a08      	ldr	r2, [sp, #32]
 8002d1c:	f018 0f20 	tst.w	r8, #32
 8002d20:	f852 3b04 	ldr.w	r3, [r2], #4
 8002d24:	9208      	str	r2, [sp, #32]
 8002d26:	f000 83a1 	beq.w	800346c <_vfprintf_r+0xfe4>
 8002d2a:	9a05      	ldr	r2, [sp, #20]
 8002d2c:	4610      	mov	r0, r2
 8002d2e:	17d1      	asrs	r1, r2, #31
 8002d30:	e9c3 0100 	strd	r0, r1, [r3]
 8002d34:	4657      	mov	r7, sl
 8002d36:	e64d      	b.n	80029d4 <_vfprintf_r+0x54c>
 8002d38:	f89a 6000 	ldrb.w	r6, [sl]
 8002d3c:	2e68      	cmp	r6, #104	; 0x68
 8002d3e:	bf03      	ittte	eq
 8002d40:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002d44:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002d48:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d4c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002d50:	e418      	b.n	8002584 <_vfprintf_r+0xfc>
 8002d52:	9908      	ldr	r1, [sp, #32]
 8002d54:	4b55      	ldr	r3, [pc, #340]	; (8002eac <_vfprintf_r+0xa24>)
 8002d56:	680c      	ldr	r4, [r1, #0]
 8002d58:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d5a:	f647 0230 	movw	r2, #30768	; 0x7830
 8002d5e:	3104      	adds	r1, #4
 8002d60:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002d64:	f048 0302 	orr.w	r3, r8, #2
 8002d68:	9108      	str	r1, [sp, #32]
 8002d6a:	2500      	movs	r5, #0
 8002d6c:	2202      	movs	r2, #2
 8002d6e:	2678      	movs	r6, #120	; 0x78
 8002d70:	e64b      	b.n	8002a0a <_vfprintf_r+0x582>
 8002d72:	f048 0808 	orr.w	r8, r8, #8
 8002d76:	f89a 6000 	ldrb.w	r6, [sl]
 8002d7a:	e403      	b.n	8002584 <_vfprintf_r+0xfc>
 8002d7c:	f048 0310 	orr.w	r3, r8, #16
 8002d80:	069f      	lsls	r7, r3, #26
 8002d82:	f53f acd1 	bmi.w	8002728 <_vfprintf_r+0x2a0>
 8002d86:	9908      	ldr	r1, [sp, #32]
 8002d88:	06dd      	lsls	r5, r3, #27
 8002d8a:	f101 0204 	add.w	r2, r1, #4
 8002d8e:	f100 82fd 	bmi.w	800338c <_vfprintf_r+0xf04>
 8002d92:	065c      	lsls	r4, r3, #25
 8002d94:	9908      	ldr	r1, [sp, #32]
 8002d96:	f100 8475 	bmi.w	8003684 <_vfprintf_r+0x11fc>
 8002d9a:	0598      	lsls	r0, r3, #22
 8002d9c:	f140 82f6 	bpl.w	800338c <_vfprintf_r+0xf04>
 8002da0:	f991 4000 	ldrsb.w	r4, [r1]
 8002da4:	9208      	str	r2, [sp, #32]
 8002da6:	17e5      	asrs	r5, r4, #31
 8002da8:	4620      	mov	r0, r4
 8002daa:	4629      	mov	r1, r5
 8002dac:	e4c7      	b.n	800273e <_vfprintf_r+0x2b6>
 8002dae:	9a08      	ldr	r2, [sp, #32]
 8002db0:	f018 0f10 	tst.w	r8, #16
 8002db4:	f102 0304 	add.w	r3, r2, #4
 8002db8:	f040 82e3 	bne.w	8003382 <_vfprintf_r+0xefa>
 8002dbc:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002dc0:	9a08      	ldr	r2, [sp, #32]
 8002dc2:	f040 8467 	bne.w	8003694 <_vfprintf_r+0x120c>
 8002dc6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002dca:	f000 82da 	beq.w	8003382 <_vfprintf_r+0xefa>
 8002dce:	7814      	ldrb	r4, [r2, #0]
 8002dd0:	9308      	str	r3, [sp, #32]
 8002dd2:	2500      	movs	r5, #0
 8002dd4:	e488      	b.n	80026e8 <_vfprintf_r+0x260>
 8002dd6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002dda:	f002 fd45 	bl	8005868 <__retarget_lock_release_recursive>
 8002dde:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002de2:	9305      	str	r3, [sp, #20]
 8002de4:	e443      	b.n	800266e <_vfprintf_r+0x1e6>
 8002de6:	2e00      	cmp	r6, #0
 8002de8:	f43f adf8 	beq.w	80029dc <_vfprintf_r+0x554>
 8002dec:	2300      	movs	r3, #0
 8002dee:	2101      	movs	r1, #1
 8002df0:	461a      	mov	r2, r3
 8002df2:	9104      	str	r1, [sp, #16]
 8002df4:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002df8:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002dfc:	930a      	str	r3, [sp, #40]	; 0x28
 8002dfe:	4699      	mov	r9, r3
 8002e00:	930f      	str	r3, [sp, #60]	; 0x3c
 8002e02:	9314      	str	r3, [sp, #80]	; 0x50
 8002e04:	9311      	str	r3, [sp, #68]	; 0x44
 8002e06:	9109      	str	r1, [sp, #36]	; 0x24
 8002e08:	af3d      	add	r7, sp, #244	; 0xf4
 8002e0a:	e4ce      	b.n	80027aa <_vfprintf_r+0x322>
 8002e0c:	2e65      	cmp	r6, #101	; 0x65
 8002e0e:	f340 80ca 	ble.w	8002fa6 <_vfprintf_r+0xb1e>
 8002e12:	2200      	movs	r2, #0
 8002e14:	2300      	movs	r3, #0
 8002e16:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e1a:	f7fe f8f5 	bl	8001008 <__aeabi_dcmpeq>
 8002e1e:	2800      	cmp	r0, #0
 8002e20:	f000 8169 	beq.w	80030f6 <_vfprintf_r+0xc6e>
 8002e24:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e26:	4a22      	ldr	r2, [pc, #136]	; (8002eb0 <_vfprintf_r+0xa28>)
 8002e28:	f8cb 2000 	str.w	r2, [fp]
 8002e2c:	3301      	adds	r3, #1
 8002e2e:	3401      	adds	r4, #1
 8002e30:	2201      	movs	r2, #1
 8002e32:	2b07      	cmp	r3, #7
 8002e34:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e38:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e3c:	f300 8406 	bgt.w	800364c <_vfprintf_r+0x11c4>
 8002e40:	f10b 0b08 	add.w	fp, fp, #8
 8002e44:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002e46:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002e48:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002e4a:	4293      	cmp	r3, r2
 8002e4c:	db03      	blt.n	8002e56 <_vfprintf_r+0x9ce>
 8002e4e:	f018 0f01 	tst.w	r8, #1
 8002e52:	f43f ad6a 	beq.w	800292a <_vfprintf_r+0x4a2>
 8002e56:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e58:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002e5a:	f8cb 2000 	str.w	r2, [fp]
 8002e5e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002e60:	f8cb 2004 	str.w	r2, [fp, #4]
 8002e64:	3301      	adds	r3, #1
 8002e66:	4414      	add	r4, r2
 8002e68:	2b07      	cmp	r3, #7
 8002e6a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002e6e:	f300 8517 	bgt.w	80038a0 <_vfprintf_r+0x1418>
 8002e72:	f10b 0b08 	add.w	fp, fp, #8
 8002e76:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002e78:	1e5d      	subs	r5, r3, #1
 8002e7a:	2d00      	cmp	r5, #0
 8002e7c:	f77f ad55 	ble.w	800292a <_vfprintf_r+0x4a2>
 8002e80:	2d10      	cmp	r5, #16
 8002e82:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002e84:	4b0b      	ldr	r3, [pc, #44]	; (8002eb4 <_vfprintf_r+0xa2c>)
 8002e86:	f340 82e7 	ble.w	8003458 <_vfprintf_r+0xfd0>
 8002e8a:	4619      	mov	r1, r3
 8002e8c:	2610      	movs	r6, #16
 8002e8e:	4623      	mov	r3, r4
 8002e90:	9f03      	ldr	r7, [sp, #12]
 8002e92:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002e96:	460c      	mov	r4, r1
 8002e98:	e014      	b.n	8002ec4 <_vfprintf_r+0xa3c>
 8002e9a:	bf00      	nop
 8002e9c:	7fefffff 	.word	0x7fefffff
 8002ea0:	080071b0 	.word	0x080071b0
 8002ea4:	080071ac 	.word	0x080071ac
 8002ea8:	080071d0 	.word	0x080071d0
 8002eac:	080071bc 	.word	0x080071bc
 8002eb0:	080071ec 	.word	0x080071ec
 8002eb4:	08007200 	.word	0x08007200
 8002eb8:	f10b 0b08 	add.w	fp, fp, #8
 8002ebc:	3d10      	subs	r5, #16
 8002ebe:	2d10      	cmp	r5, #16
 8002ec0:	f340 82c7 	ble.w	8003452 <_vfprintf_r+0xfca>
 8002ec4:	3201      	adds	r2, #1
 8002ec6:	3310      	adds	r3, #16
 8002ec8:	2a07      	cmp	r2, #7
 8002eca:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002ece:	e9cb 4600 	strd	r4, r6, [fp]
 8002ed2:	ddf1      	ble.n	8002eb8 <_vfprintf_r+0xa30>
 8002ed4:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ed6:	4649      	mov	r1, r9
 8002ed8:	4638      	mov	r0, r7
 8002eda:	f003 fe03 	bl	8006ae4 <__sprint_r>
 8002ede:	2800      	cmp	r0, #0
 8002ee0:	d14c      	bne.n	8002f7c <_vfprintf_r+0xaf4>
 8002ee2:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002ee6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002eea:	e7e7      	b.n	8002ebc <_vfprintf_r+0xa34>
 8002eec:	9b06      	ldr	r3, [sp, #24]
 8002eee:	9a04      	ldr	r2, [sp, #16]
 8002ef0:	1a9d      	subs	r5, r3, r2
 8002ef2:	2d00      	cmp	r5, #0
 8002ef4:	f77f acc9 	ble.w	800288a <_vfprintf_r+0x402>
 8002ef8:	2d10      	cmp	r5, #16
 8002efa:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002efc:	4bbc      	ldr	r3, [pc, #752]	; (80031f0 <_vfprintf_r+0xd68>)
 8002efe:	dd27      	ble.n	8002f50 <_vfprintf_r+0xac8>
 8002f00:	4659      	mov	r1, fp
 8002f02:	4620      	mov	r0, r4
 8002f04:	46bb      	mov	fp, r7
 8002f06:	461c      	mov	r4, r3
 8002f08:	4637      	mov	r7, r6
 8002f0a:	9e07      	ldr	r6, [sp, #28]
 8002f0c:	e004      	b.n	8002f18 <_vfprintf_r+0xa90>
 8002f0e:	3d10      	subs	r5, #16
 8002f10:	2d10      	cmp	r5, #16
 8002f12:	f101 0108 	add.w	r1, r1, #8
 8002f16:	dd16      	ble.n	8002f46 <_vfprintf_r+0xabe>
 8002f18:	3201      	adds	r2, #1
 8002f1a:	3010      	adds	r0, #16
 8002f1c:	2310      	movs	r3, #16
 8002f1e:	2a07      	cmp	r2, #7
 8002f20:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002f24:	600c      	str	r4, [r1, #0]
 8002f26:	604b      	str	r3, [r1, #4]
 8002f28:	ddf1      	ble.n	8002f0e <_vfprintf_r+0xa86>
 8002f2a:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f2c:	4631      	mov	r1, r6
 8002f2e:	9803      	ldr	r0, [sp, #12]
 8002f30:	f003 fdd8 	bl	8006ae4 <__sprint_r>
 8002f34:	2800      	cmp	r0, #0
 8002f36:	f040 80a8 	bne.w	800308a <_vfprintf_r+0xc02>
 8002f3a:	3d10      	subs	r5, #16
 8002f3c:	2d10      	cmp	r5, #16
 8002f3e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002f42:	a92d      	add	r1, sp, #180	; 0xb4
 8002f44:	dce8      	bgt.n	8002f18 <_vfprintf_r+0xa90>
 8002f46:	463e      	mov	r6, r7
 8002f48:	4623      	mov	r3, r4
 8002f4a:	465f      	mov	r7, fp
 8002f4c:	4604      	mov	r4, r0
 8002f4e:	468b      	mov	fp, r1
 8002f50:	3201      	adds	r2, #1
 8002f52:	442c      	add	r4, r5
 8002f54:	2a07      	cmp	r2, #7
 8002f56:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002f5a:	e9cb 3500 	strd	r3, r5, [fp]
 8002f5e:	f300 8292 	bgt.w	8003486 <_vfprintf_r+0xffe>
 8002f62:	f10b 0b08 	add.w	fp, fp, #8
 8002f66:	e490      	b.n	800288a <_vfprintf_r+0x402>
 8002f68:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f6a:	9907      	ldr	r1, [sp, #28]
 8002f6c:	9803      	ldr	r0, [sp, #12]
 8002f6e:	f003 fdb9 	bl	8006ae4 <__sprint_r>
 8002f72:	2800      	cmp	r0, #0
 8002f74:	f43f ad23 	beq.w	80029be <_vfprintf_r+0x536>
 8002f78:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f7c:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002f7e:	b111      	cbz	r1, 8002f86 <_vfprintf_r+0xafe>
 8002f80:	9803      	ldr	r0, [sp, #12]
 8002f82:	f002 f9c1 	bl	8005308 <_free_r>
 8002f86:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002f8a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002f8e:	07d0      	lsls	r0, r2, #31
 8002f90:	d402      	bmi.n	8002f98 <_vfprintf_r+0xb10>
 8002f92:	0599      	lsls	r1, r3, #22
 8002f94:	f140 81d0 	bpl.w	8003338 <_vfprintf_r+0xeb0>
 8002f98:	065a      	lsls	r2, r3, #25
 8002f9a:	f53f ab65 	bmi.w	8002668 <_vfprintf_r+0x1e0>
 8002f9e:	9805      	ldr	r0, [sp, #20]
 8002fa0:	b057      	add	sp, #348	; 0x15c
 8002fa2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002fa6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002fa8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002faa:	2a01      	cmp	r2, #1
 8002fac:	f104 0401 	add.w	r4, r4, #1
 8002fb0:	f103 0501 	add.w	r5, r3, #1
 8002fb4:	f10b 0608 	add.w	r6, fp, #8
 8002fb8:	f340 811c 	ble.w	80031f4 <_vfprintf_r+0xd6c>
 8002fbc:	2301      	movs	r3, #1
 8002fbe:	2d07      	cmp	r5, #7
 8002fc0:	f8cb 7000 	str.w	r7, [fp]
 8002fc4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8002fc8:	f8cb 3004 	str.w	r3, [fp, #4]
 8002fcc:	f300 81bb 	bgt.w	8003346 <_vfprintf_r+0xebe>
 8002fd0:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8002fd2:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002fd4:	1c69      	adds	r1, r5, #1
 8002fd6:	441c      	add	r4, r3
 8002fd8:	2907      	cmp	r1, #7
 8002fda:	910b      	str	r1, [sp, #44]	; 0x2c
 8002fdc:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8002fe0:	e9c6 2300 	strd	r2, r3, [r6]
 8002fe4:	f300 81bb 	bgt.w	800335e <_vfprintf_r+0xed6>
 8002fe8:	3608      	adds	r6, #8
 8002fea:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002fec:	1c53      	adds	r3, r2, #1
 8002fee:	461d      	mov	r5, r3
 8002ff0:	9509      	str	r5, [sp, #36]	; 0x24
 8002ff2:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8002ff4:	930e      	str	r3, [sp, #56]	; 0x38
 8002ff6:	2200      	movs	r2, #0
 8002ff8:	2300      	movs	r3, #0
 8002ffa:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ffe:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003002:	f106 0b08 	add.w	fp, r6, #8
 8003006:	f7fd ffff 	bl	8001008 <__aeabi_dcmpeq>
 800300a:	2800      	cmp	r0, #0
 800300c:	f040 80c2 	bne.w	8003194 <_vfprintf_r+0xd0c>
 8003010:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003012:	f8c6 9004 	str.w	r9, [r6, #4]
 8003016:	3701      	adds	r7, #1
 8003018:	444c      	add	r4, r9
 800301a:	2d07      	cmp	r5, #7
 800301c:	6037      	str	r7, [r6, #0]
 800301e:	942c      	str	r4, [sp, #176]	; 0xb0
 8003020:	952b      	str	r5, [sp, #172]	; 0xac
 8003022:	f300 80f9 	bgt.w	8003218 <_vfprintf_r+0xd90>
 8003026:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003028:	f106 0310 	add.w	r3, r6, #16
 800302c:	3202      	adds	r2, #2
 800302e:	465e      	mov	r6, fp
 8003030:	9209      	str	r2, [sp, #36]	; 0x24
 8003032:	469b      	mov	fp, r3
 8003034:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003036:	6072      	str	r2, [r6, #4]
 8003038:	4414      	add	r4, r2
 800303a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800303c:	942c      	str	r4, [sp, #176]	; 0xb0
 800303e:	ab26      	add	r3, sp, #152	; 0x98
 8003040:	2a07      	cmp	r2, #7
 8003042:	922b      	str	r2, [sp, #172]	; 0xac
 8003044:	6033      	str	r3, [r6, #0]
 8003046:	f77f ac70 	ble.w	800292a <_vfprintf_r+0x4a2>
 800304a:	aa2a      	add	r2, sp, #168	; 0xa8
 800304c:	9907      	ldr	r1, [sp, #28]
 800304e:	9803      	ldr	r0, [sp, #12]
 8003050:	f003 fd48 	bl	8006ae4 <__sprint_r>
 8003054:	2800      	cmp	r0, #0
 8003056:	d18f      	bne.n	8002f78 <_vfprintf_r+0xaf0>
 8003058:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800305a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800305e:	e464      	b.n	800292a <_vfprintf_r+0x4a2>
 8003060:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003062:	af56      	add	r7, sp, #344	; 0x158
 8003064:	0923      	lsrs	r3, r4, #4
 8003066:	f004 010f 	and.w	r1, r4, #15
 800306a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800306e:	092a      	lsrs	r2, r5, #4
 8003070:	461c      	mov	r4, r3
 8003072:	4615      	mov	r5, r2
 8003074:	5c43      	ldrb	r3, [r0, r1]
 8003076:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800307a:	ea54 0305 	orrs.w	r3, r4, r5
 800307e:	d1f1      	bne.n	8003064 <_vfprintf_r+0xbdc>
 8003080:	9b04      	ldr	r3, [sp, #16]
 8003082:	1bdb      	subs	r3, r3, r7
 8003084:	9309      	str	r3, [sp, #36]	; 0x24
 8003086:	f7ff bb80 	b.w	800278a <_vfprintf_r+0x302>
 800308a:	46b1      	mov	r9, r6
 800308c:	e776      	b.n	8002f7c <_vfprintf_r+0xaf4>
 800308e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003090:	9907      	ldr	r1, [sp, #28]
 8003092:	9803      	ldr	r0, [sp, #12]
 8003094:	f003 fd26 	bl	8006ae4 <__sprint_r>
 8003098:	2800      	cmp	r0, #0
 800309a:	f47f af6d 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 800309e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030a4:	f7ff bbdd 	b.w	8002862 <_vfprintf_r+0x3da>
 80030a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80030aa:	9907      	ldr	r1, [sp, #28]
 80030ac:	9803      	ldr	r0, [sp, #12]
 80030ae:	f003 fd19 	bl	8006ae4 <__sprint_r>
 80030b2:	2800      	cmp	r0, #0
 80030b4:	f47f af60 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 80030b8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030ba:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030be:	f7ff bbe0 	b.w	8002882 <_vfprintf_r+0x3fa>
 80030c2:	4698      	mov	r8, r3
 80030c4:	2d00      	cmp	r5, #0
 80030c6:	bf08      	it	eq
 80030c8:	2c0a      	cmpeq	r4, #10
 80030ca:	f080 8170 	bcs.w	80033ae <_vfprintf_r+0xf26>
 80030ce:	af56      	add	r7, sp, #344	; 0x158
 80030d0:	3430      	adds	r4, #48	; 0x30
 80030d2:	2301      	movs	r3, #1
 80030d4:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80030d8:	9309      	str	r3, [sp, #36]	; 0x24
 80030da:	f7ff bb56 	b.w	800278a <_vfprintf_r+0x302>
 80030de:	aa2a      	add	r2, sp, #168	; 0xa8
 80030e0:	9907      	ldr	r1, [sp, #28]
 80030e2:	9803      	ldr	r0, [sp, #12]
 80030e4:	f003 fcfe 	bl	8006ae4 <__sprint_r>
 80030e8:	2800      	cmp	r0, #0
 80030ea:	f47f af45 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 80030ee:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030f0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030f4:	e406      	b.n	8002904 <_vfprintf_r+0x47c>
 80030f6:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030f8:	2b00      	cmp	r3, #0
 80030fa:	f340 8273 	ble.w	80035e4 <_vfprintf_r+0x115c>
 80030fe:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003102:	4293      	cmp	r3, r2
 8003104:	bfa8      	it	ge
 8003106:	4613      	movge	r3, r2
 8003108:	2b00      	cmp	r3, #0
 800310a:	461d      	mov	r5, r3
 800310c:	dd0d      	ble.n	800312a <_vfprintf_r+0xca2>
 800310e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003110:	f8cb 7000 	str.w	r7, [fp]
 8003114:	3301      	adds	r3, #1
 8003116:	442c      	add	r4, r5
 8003118:	2b07      	cmp	r3, #7
 800311a:	942c      	str	r4, [sp, #176]	; 0xb0
 800311c:	f8cb 5004 	str.w	r5, [fp, #4]
 8003120:	932b      	str	r3, [sp, #172]	; 0xac
 8003122:	f300 82c1 	bgt.w	80036a8 <_vfprintf_r+0x1220>
 8003126:	f10b 0b08 	add.w	fp, fp, #8
 800312a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800312c:	2d00      	cmp	r5, #0
 800312e:	bfa8      	it	ge
 8003130:	1b5b      	subge	r3, r3, r5
 8003132:	2b00      	cmp	r3, #0
 8003134:	461d      	mov	r5, r3
 8003136:	f340 8099 	ble.w	800326c <_vfprintf_r+0xde4>
 800313a:	2d10      	cmp	r5, #16
 800313c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800313e:	4b2c      	ldr	r3, [pc, #176]	; (80031f0 <_vfprintf_r+0xd68>)
 8003140:	f340 83db 	ble.w	80038fa <_vfprintf_r+0x1472>
 8003144:	4618      	mov	r0, r3
 8003146:	4621      	mov	r1, r4
 8003148:	465b      	mov	r3, fp
 800314a:	2610      	movs	r6, #16
 800314c:	46bb      	mov	fp, r7
 800314e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003152:	9c07      	ldr	r4, [sp, #28]
 8003154:	4607      	mov	r7, r0
 8003156:	e004      	b.n	8003162 <_vfprintf_r+0xcda>
 8003158:	3308      	adds	r3, #8
 800315a:	3d10      	subs	r5, #16
 800315c:	2d10      	cmp	r5, #16
 800315e:	f340 83c7 	ble.w	80038f0 <_vfprintf_r+0x1468>
 8003162:	3201      	adds	r2, #1
 8003164:	3110      	adds	r1, #16
 8003166:	2a07      	cmp	r2, #7
 8003168:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800316c:	e9c3 7600 	strd	r7, r6, [r3]
 8003170:	ddf2      	ble.n	8003158 <_vfprintf_r+0xcd0>
 8003172:	aa2a      	add	r2, sp, #168	; 0xa8
 8003174:	4621      	mov	r1, r4
 8003176:	4648      	mov	r0, r9
 8003178:	f003 fcb4 	bl	8006ae4 <__sprint_r>
 800317c:	2800      	cmp	r0, #0
 800317e:	f040 84a5 	bne.w	8003acc <_vfprintf_r+0x1644>
 8003182:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003186:	ab2d      	add	r3, sp, #180	; 0xb4
 8003188:	e7e7      	b.n	800315a <_vfprintf_r+0xcd2>
 800318a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800318e:	af56      	add	r7, sp, #344	; 0x158
 8003190:	f7ff bafb 	b.w	800278a <_vfprintf_r+0x302>
 8003194:	f1b9 0f00 	cmp.w	r9, #0
 8003198:	f77f af4c 	ble.w	8003034 <_vfprintf_r+0xbac>
 800319c:	f1b9 0f10 	cmp.w	r9, #16
 80031a0:	4b13      	ldr	r3, [pc, #76]	; (80031f0 <_vfprintf_r+0xd68>)
 80031a2:	f340 8659 	ble.w	8003e58 <_vfprintf_r+0x19d0>
 80031a6:	4619      	mov	r1, r3
 80031a8:	4622      	mov	r2, r4
 80031aa:	4633      	mov	r3, r6
 80031ac:	2710      	movs	r7, #16
 80031ae:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80031b2:	9c07      	ldr	r4, [sp, #28]
 80031b4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80031b6:	460e      	mov	r6, r1
 80031b8:	e007      	b.n	80031ca <_vfprintf_r+0xd42>
 80031ba:	3308      	adds	r3, #8
 80031bc:	f1a9 0910 	sub.w	r9, r9, #16
 80031c0:	f1b9 0f10 	cmp.w	r9, #16
 80031c4:	f340 8353 	ble.w	800386e <_vfprintf_r+0x13e6>
 80031c8:	3501      	adds	r5, #1
 80031ca:	3210      	adds	r2, #16
 80031cc:	2d07      	cmp	r5, #7
 80031ce:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80031d2:	e9c3 6700 	strd	r6, r7, [r3]
 80031d6:	ddf0      	ble.n	80031ba <_vfprintf_r+0xd32>
 80031d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80031da:	4621      	mov	r1, r4
 80031dc:	4658      	mov	r0, fp
 80031de:	f003 fc81 	bl	8006ae4 <__sprint_r>
 80031e2:	2800      	cmp	r0, #0
 80031e4:	f040 8472 	bne.w	8003acc <_vfprintf_r+0x1644>
 80031e8:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80031ec:	ab2d      	add	r3, sp, #180	; 0xb4
 80031ee:	e7e5      	b.n	80031bc <_vfprintf_r+0xd34>
 80031f0:	08007200 	.word	0x08007200
 80031f4:	f018 0f01 	tst.w	r8, #1
 80031f8:	f47f aee0 	bne.w	8002fbc <_vfprintf_r+0xb34>
 80031fc:	2201      	movs	r2, #1
 80031fe:	2d07      	cmp	r5, #7
 8003200:	f8cb 7000 	str.w	r7, [fp]
 8003204:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003208:	f8cb 2004 	str.w	r2, [fp, #4]
 800320c:	dc04      	bgt.n	8003218 <_vfprintf_r+0xd90>
 800320e:	3302      	adds	r3, #2
 8003210:	9309      	str	r3, [sp, #36]	; 0x24
 8003212:	f10b 0b10 	add.w	fp, fp, #16
 8003216:	e70d      	b.n	8003034 <_vfprintf_r+0xbac>
 8003218:	aa2a      	add	r2, sp, #168	; 0xa8
 800321a:	9907      	ldr	r1, [sp, #28]
 800321c:	9803      	ldr	r0, [sp, #12]
 800321e:	f003 fc61 	bl	8006ae4 <__sprint_r>
 8003222:	2800      	cmp	r0, #0
 8003224:	f47f aea8 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 8003228:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800322c:	3301      	adds	r3, #1
 800322e:	9309      	str	r3, [sp, #36]	; 0x24
 8003230:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003234:	ae2d      	add	r6, sp, #180	; 0xb4
 8003236:	e6fd      	b.n	8003034 <_vfprintf_r+0xbac>
 8003238:	aa2a      	add	r2, sp, #168	; 0xa8
 800323a:	9907      	ldr	r1, [sp, #28]
 800323c:	9803      	ldr	r0, [sp, #12]
 800323e:	f003 fc51 	bl	8006ae4 <__sprint_r>
 8003242:	2800      	cmp	r0, #0
 8003244:	f47f ae98 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 8003248:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800324c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800324e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003252:	f7ff baf6 	b.w	8002842 <_vfprintf_r+0x3ba>
 8003256:	aa2a      	add	r2, sp, #168	; 0xa8
 8003258:	9907      	ldr	r1, [sp, #28]
 800325a:	9803      	ldr	r0, [sp, #12]
 800325c:	f003 fc42 	bl	8006ae4 <__sprint_r>
 8003260:	2800      	cmp	r0, #0
 8003262:	f47f ae89 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 8003266:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003268:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800326c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800326e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003272:	443b      	add	r3, r7
 8003274:	4699      	mov	r9, r3
 8003276:	f040 8357 	bne.w	8003928 <_vfprintf_r+0x14a0>
 800327a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800327c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800327e:	4293      	cmp	r3, r2
 8003280:	db49      	blt.n	8003316 <_vfprintf_r+0xe8e>
 8003282:	f018 0f01 	tst.w	r8, #1
 8003286:	d146      	bne.n	8003316 <_vfprintf_r+0xe8e>
 8003288:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800328a:	18bd      	adds	r5, r7, r2
 800328c:	eba5 0509 	sub.w	r5, r5, r9
 8003290:	1ad3      	subs	r3, r2, r3
 8003292:	429d      	cmp	r5, r3
 8003294:	bfa8      	it	ge
 8003296:	461d      	movge	r5, r3
 8003298:	2d00      	cmp	r5, #0
 800329a:	dd0d      	ble.n	80032b8 <_vfprintf_r+0xe30>
 800329c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800329e:	f8cb 9000 	str.w	r9, [fp]
 80032a2:	3201      	adds	r2, #1
 80032a4:	442c      	add	r4, r5
 80032a6:	2a07      	cmp	r2, #7
 80032a8:	942c      	str	r4, [sp, #176]	; 0xb0
 80032aa:	f8cb 5004 	str.w	r5, [fp, #4]
 80032ae:	922b      	str	r2, [sp, #172]	; 0xac
 80032b0:	f300 8462 	bgt.w	8003b78 <_vfprintf_r+0x16f0>
 80032b4:	f10b 0b08 	add.w	fp, fp, #8
 80032b8:	2d00      	cmp	r5, #0
 80032ba:	bfac      	ite	ge
 80032bc:	1b5d      	subge	r5, r3, r5
 80032be:	461d      	movlt	r5, r3
 80032c0:	2d00      	cmp	r5, #0
 80032c2:	f77f ab32 	ble.w	800292a <_vfprintf_r+0x4a2>
 80032c6:	2d10      	cmp	r5, #16
 80032c8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80032ca:	4bc5      	ldr	r3, [pc, #788]	; (80035e0 <_vfprintf_r+0x1158>)
 80032cc:	f340 80c4 	ble.w	8003458 <_vfprintf_r+0xfd0>
 80032d0:	4619      	mov	r1, r3
 80032d2:	2610      	movs	r6, #16
 80032d4:	4623      	mov	r3, r4
 80032d6:	9f03      	ldr	r7, [sp, #12]
 80032d8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80032dc:	460c      	mov	r4, r1
 80032de:	e005      	b.n	80032ec <_vfprintf_r+0xe64>
 80032e0:	f10b 0b08 	add.w	fp, fp, #8
 80032e4:	3d10      	subs	r5, #16
 80032e6:	2d10      	cmp	r5, #16
 80032e8:	f340 80b3 	ble.w	8003452 <_vfprintf_r+0xfca>
 80032ec:	3201      	adds	r2, #1
 80032ee:	3310      	adds	r3, #16
 80032f0:	2a07      	cmp	r2, #7
 80032f2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80032f6:	e9cb 4600 	strd	r4, r6, [fp]
 80032fa:	ddf1      	ble.n	80032e0 <_vfprintf_r+0xe58>
 80032fc:	aa2a      	add	r2, sp, #168	; 0xa8
 80032fe:	4649      	mov	r1, r9
 8003300:	4638      	mov	r0, r7
 8003302:	f003 fbef 	bl	8006ae4 <__sprint_r>
 8003306:	2800      	cmp	r0, #0
 8003308:	f47f ae38 	bne.w	8002f7c <_vfprintf_r+0xaf4>
 800330c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003310:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003314:	e7e6      	b.n	80032e4 <_vfprintf_r+0xe5c>
 8003316:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003318:	9916      	ldr	r1, [sp, #88]	; 0x58
 800331a:	f8cb 1000 	str.w	r1, [fp]
 800331e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003320:	f8cb 1004 	str.w	r1, [fp, #4]
 8003324:	3201      	adds	r2, #1
 8003326:	440c      	add	r4, r1
 8003328:	2a07      	cmp	r2, #7
 800332a:	942c      	str	r4, [sp, #176]	; 0xb0
 800332c:	922b      	str	r2, [sp, #172]	; 0xac
 800332e:	f300 828c 	bgt.w	800384a <_vfprintf_r+0x13c2>
 8003332:	f10b 0b08 	add.w	fp, fp, #8
 8003336:	e7a7      	b.n	8003288 <_vfprintf_r+0xe00>
 8003338:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800333c:	f002 fa94 	bl	8005868 <__retarget_lock_release_recursive>
 8003340:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003344:	e628      	b.n	8002f98 <_vfprintf_r+0xb10>
 8003346:	aa2a      	add	r2, sp, #168	; 0xa8
 8003348:	9907      	ldr	r1, [sp, #28]
 800334a:	9803      	ldr	r0, [sp, #12]
 800334c:	f003 fbca 	bl	8006ae4 <__sprint_r>
 8003350:	2800      	cmp	r0, #0
 8003352:	f47f ae11 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 8003356:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800335a:	ae2d      	add	r6, sp, #180	; 0xb4
 800335c:	e638      	b.n	8002fd0 <_vfprintf_r+0xb48>
 800335e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003360:	9907      	ldr	r1, [sp, #28]
 8003362:	9803      	ldr	r0, [sp, #12]
 8003364:	f003 fbbe 	bl	8006ae4 <__sprint_r>
 8003368:	2800      	cmp	r0, #0
 800336a:	f47f ae05 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 800336e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003372:	ae2d      	add	r6, sp, #180	; 0xb4
 8003374:	930b      	str	r3, [sp, #44]	; 0x2c
 8003376:	e638      	b.n	8002fea <_vfprintf_r+0xb62>
 8003378:	6814      	ldr	r4, [r2, #0]
 800337a:	9308      	str	r3, [sp, #32]
 800337c:	2500      	movs	r5, #0
 800337e:	f7ff bb95 	b.w	8002aac <_vfprintf_r+0x624>
 8003382:	6814      	ldr	r4, [r2, #0]
 8003384:	9308      	str	r3, [sp, #32]
 8003386:	2500      	movs	r5, #0
 8003388:	f7ff b9ae 	b.w	80026e8 <_vfprintf_r+0x260>
 800338c:	680c      	ldr	r4, [r1, #0]
 800338e:	9208      	str	r2, [sp, #32]
 8003390:	17e5      	asrs	r5, r4, #31
 8003392:	4620      	mov	r0, r4
 8003394:	4629      	mov	r1, r5
 8003396:	f7ff b9d2 	b.w	800273e <_vfprintf_r+0x2b6>
 800339a:	6814      	ldr	r4, [r2, #0]
 800339c:	9108      	str	r1, [sp, #32]
 800339e:	2201      	movs	r2, #1
 80033a0:	2500      	movs	r5, #0
 80033a2:	f7ff bb32 	b.w	8002a0a <_vfprintf_r+0x582>
 80033a6:	2a01      	cmp	r2, #1
 80033a8:	f47f ab3c 	bne.w	8002a24 <_vfprintf_r+0x59c>
 80033ac:	e68f      	b.n	80030ce <_vfprintf_r+0xc46>
 80033ae:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80033b2:	2200      	movs	r2, #0
 80033b4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80033b8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80033bc:	af56      	add	r7, sp, #344	; 0x158
 80033be:	4692      	mov	sl, r2
 80033c0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80033c4:	461e      	mov	r6, r3
 80033c6:	e00a      	b.n	80033de <_vfprintf_r+0xf56>
 80033c8:	2300      	movs	r3, #0
 80033ca:	4620      	mov	r0, r4
 80033cc:	4629      	mov	r1, r5
 80033ce:	220a      	movs	r2, #10
 80033d0:	f7fc ff16 	bl	8000200 <__aeabi_uldivmod>
 80033d4:	4604      	mov	r4, r0
 80033d6:	460d      	mov	r5, r1
 80033d8:	ea54 0305 	orrs.w	r3, r4, r5
 80033dc:	d029      	beq.n	8003432 <_vfprintf_r+0xfaa>
 80033de:	220a      	movs	r2, #10
 80033e0:	2300      	movs	r3, #0
 80033e2:	4620      	mov	r0, r4
 80033e4:	4629      	mov	r1, r5
 80033e6:	f7fc ff0b 	bl	8000200 <__aeabi_uldivmod>
 80033ea:	3230      	adds	r2, #48	; 0x30
 80033ec:	f807 2c01 	strb.w	r2, [r7, #-1]
 80033f0:	f10a 0a01 	add.w	sl, sl, #1
 80033f4:	3f01      	subs	r7, #1
 80033f6:	2e00      	cmp	r6, #0
 80033f8:	d0e6      	beq.n	80033c8 <_vfprintf_r+0xf40>
 80033fa:	f898 3000 	ldrb.w	r3, [r8]
 80033fe:	459a      	cmp	sl, r3
 8003400:	d1e2      	bne.n	80033c8 <_vfprintf_r+0xf40>
 8003402:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003406:	d0df      	beq.n	80033c8 <_vfprintf_r+0xf40>
 8003408:	2d00      	cmp	r5, #0
 800340a:	bf08      	it	eq
 800340c:	2c0a      	cmpeq	r4, #10
 800340e:	d3db      	bcc.n	80033c8 <_vfprintf_r+0xf40>
 8003410:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003412:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003414:	1aff      	subs	r7, r7, r3
 8003416:	461a      	mov	r2, r3
 8003418:	4638      	mov	r0, r7
 800341a:	f003 faf5 	bl	8006a08 <strncpy>
 800341e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003422:	2b00      	cmp	r3, #0
 8003424:	f000 8496 	beq.w	8003d54 <_vfprintf_r+0x18cc>
 8003428:	f108 0801 	add.w	r8, r8, #1
 800342c:	f04f 0a00 	mov.w	sl, #0
 8003430:	e7ca      	b.n	80033c8 <_vfprintf_r+0xf40>
 8003432:	9b04      	ldr	r3, [sp, #16]
 8003434:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003438:	1bdb      	subs	r3, r3, r7
 800343a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800343e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003440:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003444:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003448:	9309      	str	r3, [sp, #36]	; 0x24
 800344a:	f7ff b99e 	b.w	800278a <_vfprintf_r+0x302>
 800344e:	46c1      	mov	r9, r8
 8003450:	e594      	b.n	8002f7c <_vfprintf_r+0xaf4>
 8003452:	4621      	mov	r1, r4
 8003454:	461c      	mov	r4, r3
 8003456:	460b      	mov	r3, r1
 8003458:	3201      	adds	r2, #1
 800345a:	442c      	add	r4, r5
 800345c:	2a07      	cmp	r2, #7
 800345e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003462:	e9cb 3500 	strd	r3, r5, [fp]
 8003466:	f77f aa5e 	ble.w	8002926 <_vfprintf_r+0x49e>
 800346a:	e5ee      	b.n	800304a <_vfprintf_r+0xbc2>
 800346c:	f018 0f10 	tst.w	r8, #16
 8003470:	f040 80f8 	bne.w	8003664 <_vfprintf_r+0x11dc>
 8003474:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003478:	f000 8351 	beq.w	8003b1e <_vfprintf_r+0x1696>
 800347c:	9a05      	ldr	r2, [sp, #20]
 800347e:	801a      	strh	r2, [r3, #0]
 8003480:	4657      	mov	r7, sl
 8003482:	f7ff baa7 	b.w	80029d4 <_vfprintf_r+0x54c>
 8003486:	aa2a      	add	r2, sp, #168	; 0xa8
 8003488:	9907      	ldr	r1, [sp, #28]
 800348a:	9803      	ldr	r0, [sp, #12]
 800348c:	f003 fb2a 	bl	8006ae4 <__sprint_r>
 8003490:	2800      	cmp	r0, #0
 8003492:	f47f ad71 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 8003496:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003498:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800349c:	f7ff b9f5 	b.w	800288a <_vfprintf_r+0x402>
 80034a0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80034a4:	4602      	mov	r2, r0
 80034a6:	460b      	mov	r3, r1
 80034a8:	f7fd fde0 	bl	800106c <__aeabi_dcmpun>
 80034ac:	2800      	cmp	r0, #0
 80034ae:	f040 8491 	bne.w	8003dd4 <_vfprintf_r+0x194c>
 80034b2:	2e61      	cmp	r6, #97	; 0x61
 80034b4:	f000 8111 	beq.w	80036da <_vfprintf_r+0x1252>
 80034b8:	2e41      	cmp	r6, #65	; 0x41
 80034ba:	f000 8377 	beq.w	8003bac <_vfprintf_r+0x1724>
 80034be:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80034c2:	f026 0220 	bic.w	r2, r6, #32
 80034c6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80034ca:	930e      	str	r3, [sp, #56]	; 0x38
 80034cc:	9204      	str	r2, [sp, #16]
 80034ce:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80034d0:	f000 842d 	beq.w	8003d2e <_vfprintf_r+0x18a6>
 80034d4:	2a47      	cmp	r2, #71	; 0x47
 80034d6:	f000 8424 	beq.w	8003d22 <_vfprintf_r+0x189a>
 80034da:	2b00      	cmp	r3, #0
 80034dc:	f2c0 82f9 	blt.w	8003ad2 <_vfprintf_r+0x164a>
 80034e0:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80034e4:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80034e8:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80034ec:	2e66      	cmp	r6, #102	; 0x66
 80034ee:	f000 83eb 	beq.w	8003cc8 <_vfprintf_r+0x1840>
 80034f2:	2e46      	cmp	r6, #70	; 0x46
 80034f4:	f000 847e 	beq.w	8003df4 <_vfprintf_r+0x196c>
 80034f8:	9b04      	ldr	r3, [sp, #16]
 80034fa:	9803      	ldr	r0, [sp, #12]
 80034fc:	2b45      	cmp	r3, #69	; 0x45
 80034fe:	bf0c      	ite	eq
 8003500:	f109 0501 	addeq.w	r5, r9, #1
 8003504:	464d      	movne	r5, r9
 8003506:	aa28      	add	r2, sp, #160	; 0xa0
 8003508:	ab25      	add	r3, sp, #148	; 0x94
 800350a:	e9cd 3200 	strd	r3, r2, [sp]
 800350e:	2102      	movs	r1, #2
 8003510:	ab24      	add	r3, sp, #144	; 0x90
 8003512:	462a      	mov	r2, r5
 8003514:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003518:	f000 fe3e 	bl	8004198 <_dtoa_r>
 800351c:	2e67      	cmp	r6, #103	; 0x67
 800351e:	4607      	mov	r7, r0
 8003520:	f040 849c 	bne.w	8003e5c <_vfprintf_r+0x19d4>
 8003524:	f018 0f01 	tst.w	r8, #1
 8003528:	f040 83f9 	bne.w	8003d1e <_vfprintf_r+0x1896>
 800352c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800352e:	4640      	mov	r0, r8
 8003530:	1bdb      	subs	r3, r3, r7
 8003532:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003536:	9310      	str	r3, [sp, #64]	; 0x40
 8003538:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800353a:	9311      	str	r3, [sp, #68]	; 0x44
 800353c:	9b04      	ldr	r3, [sp, #16]
 800353e:	2b47      	cmp	r3, #71	; 0x47
 8003540:	f000 81e7 	beq.w	8003912 <_vfprintf_r+0x148a>
 8003544:	9b04      	ldr	r3, [sp, #16]
 8003546:	2b46      	cmp	r3, #70	; 0x46
 8003548:	f000 8300 	beq.w	8003b4c <_vfprintf_r+0x16c4>
 800354c:	9904      	ldr	r1, [sp, #16]
 800354e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003550:	b2f2      	uxtb	r2, r6
 8003552:	2941      	cmp	r1, #65	; 0x41
 8003554:	bf08      	it	eq
 8003556:	320f      	addeq	r2, #15
 8003558:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800355c:	bf06      	itte	eq
 800355e:	b2d2      	uxtbeq	r2, r2
 8003560:	2101      	moveq	r1, #1
 8003562:	2100      	movne	r1, #0
 8003564:	2b00      	cmp	r3, #0
 8003566:	9324      	str	r3, [sp, #144]	; 0x90
 8003568:	bfb8      	it	lt
 800356a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800356c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003570:	bfba      	itte	lt
 8003572:	f1c3 0301 	rsblt	r3, r3, #1
 8003576:	222d      	movlt	r2, #45	; 0x2d
 8003578:	222b      	movge	r2, #43	; 0x2b
 800357a:	2b09      	cmp	r3, #9
 800357c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003580:	f300 83f9 	bgt.w	8003d76 <_vfprintf_r+0x18ee>
 8003584:	2900      	cmp	r1, #0
 8003586:	f040 8487 	bne.w	8003e98 <_vfprintf_r+0x1a10>
 800358a:	2230      	movs	r2, #48	; 0x30
 800358c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003590:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003594:	3330      	adds	r3, #48	; 0x30
 8003596:	7013      	strb	r3, [r2, #0]
 8003598:	1c53      	adds	r3, r2, #1
 800359a:	aa26      	add	r2, sp, #152	; 0x98
 800359c:	1a9b      	subs	r3, r3, r2
 800359e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80035a0:	9319      	str	r3, [sp, #100]	; 0x64
 80035a2:	2a01      	cmp	r2, #1
 80035a4:	4413      	add	r3, r2
 80035a6:	9309      	str	r3, [sp, #36]	; 0x24
 80035a8:	f340 8442 	ble.w	8003e30 <_vfprintf_r+0x19a8>
 80035ac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80035ae:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80035b0:	4413      	add	r3, r2
 80035b2:	9309      	str	r3, [sp, #36]	; 0x24
 80035b4:	2300      	movs	r3, #0
 80035b6:	930f      	str	r3, [sp, #60]	; 0x3c
 80035b8:	9314      	str	r3, [sp, #80]	; 0x50
 80035ba:	9311      	str	r3, [sp, #68]	; 0x44
 80035bc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80035be:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80035c2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80035c6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80035ca:	9304      	str	r3, [sp, #16]
 80035cc:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80035ce:	2b00      	cmp	r3, #0
 80035d0:	f040 8275 	bne.w	8003abe <_vfprintf_r+0x1636>
 80035d4:	4699      	mov	r9, r3
 80035d6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80035da:	f7ff b8e2 	b.w	80027a2 <_vfprintf_r+0x31a>
 80035de:	bf00      	nop
 80035e0:	08007200 	.word	0x08007200
 80035e4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035e6:	49bd      	ldr	r1, [pc, #756]	; (80038dc <_vfprintf_r+0x1454>)
 80035e8:	f8cb 1000 	str.w	r1, [fp]
 80035ec:	3201      	adds	r2, #1
 80035ee:	3401      	adds	r4, #1
 80035f0:	2101      	movs	r1, #1
 80035f2:	2a07      	cmp	r2, #7
 80035f4:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80035f8:	f8cb 1004 	str.w	r1, [fp, #4]
 80035fc:	dc60      	bgt.n	80036c0 <_vfprintf_r+0x1238>
 80035fe:	f10b 0b08 	add.w	fp, fp, #8
 8003602:	b92b      	cbnz	r3, 8003610 <_vfprintf_r+0x1188>
 8003604:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003606:	b91a      	cbnz	r2, 8003610 <_vfprintf_r+0x1188>
 8003608:	f018 0f01 	tst.w	r8, #1
 800360c:	f43f a98d 	beq.w	800292a <_vfprintf_r+0x4a2>
 8003610:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003612:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003614:	f8cb 1000 	str.w	r1, [fp]
 8003618:	9915      	ldr	r1, [sp, #84]	; 0x54
 800361a:	f8cb 1004 	str.w	r1, [fp, #4]
 800361e:	3201      	adds	r2, #1
 8003620:	440c      	add	r4, r1
 8003622:	2a07      	cmp	r2, #7
 8003624:	942c      	str	r4, [sp, #176]	; 0xb0
 8003626:	922b      	str	r2, [sp, #172]	; 0xac
 8003628:	f300 8282 	bgt.w	8003b30 <_vfprintf_r+0x16a8>
 800362c:	f10b 0b08 	add.w	fp, fp, #8
 8003630:	2b00      	cmp	r3, #0
 8003632:	f2c0 82e7 	blt.w	8003c04 <_vfprintf_r+0x177c>
 8003636:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003638:	3201      	adds	r2, #1
 800363a:	441c      	add	r4, r3
 800363c:	2a07      	cmp	r2, #7
 800363e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003642:	e9cb 7300 	strd	r7, r3, [fp]
 8003646:	f77f a96e 	ble.w	8002926 <_vfprintf_r+0x49e>
 800364a:	e4fe      	b.n	800304a <_vfprintf_r+0xbc2>
 800364c:	aa2a      	add	r2, sp, #168	; 0xa8
 800364e:	9907      	ldr	r1, [sp, #28]
 8003650:	9803      	ldr	r0, [sp, #12]
 8003652:	f003 fa47 	bl	8006ae4 <__sprint_r>
 8003656:	2800      	cmp	r0, #0
 8003658:	f47f ac8e 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 800365c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003660:	f7ff bbf0 	b.w	8002e44 <_vfprintf_r+0x9bc>
 8003664:	9a05      	ldr	r2, [sp, #20]
 8003666:	601a      	str	r2, [r3, #0]
 8003668:	4657      	mov	r7, sl
 800366a:	f7ff b9b3 	b.w	80029d4 <_vfprintf_r+0x54c>
 800366e:	8814      	ldrh	r4, [r2, #0]
 8003670:	9108      	str	r1, [sp, #32]
 8003672:	2500      	movs	r5, #0
 8003674:	2201      	movs	r2, #1
 8003676:	f7ff b9c8 	b.w	8002a0a <_vfprintf_r+0x582>
 800367a:	8814      	ldrh	r4, [r2, #0]
 800367c:	9308      	str	r3, [sp, #32]
 800367e:	2500      	movs	r5, #0
 8003680:	f7ff ba14 	b.w	8002aac <_vfprintf_r+0x624>
 8003684:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003688:	9208      	str	r2, [sp, #32]
 800368a:	17e5      	asrs	r5, r4, #31
 800368c:	4620      	mov	r0, r4
 800368e:	4629      	mov	r1, r5
 8003690:	f7ff b855 	b.w	800273e <_vfprintf_r+0x2b6>
 8003694:	8814      	ldrh	r4, [r2, #0]
 8003696:	9308      	str	r3, [sp, #32]
 8003698:	2500      	movs	r5, #0
 800369a:	f7ff b825 	b.w	80026e8 <_vfprintf_r+0x260>
 800369e:	222d      	movs	r2, #45	; 0x2d
 80036a0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80036a4:	f7ff baa2 	b.w	8002bec <_vfprintf_r+0x764>
 80036a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80036aa:	9907      	ldr	r1, [sp, #28]
 80036ac:	9803      	ldr	r0, [sp, #12]
 80036ae:	f003 fa19 	bl	8006ae4 <__sprint_r>
 80036b2:	2800      	cmp	r0, #0
 80036b4:	f47f ac60 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 80036b8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036ba:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036be:	e534      	b.n	800312a <_vfprintf_r+0xca2>
 80036c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80036c2:	9907      	ldr	r1, [sp, #28]
 80036c4:	9803      	ldr	r0, [sp, #12]
 80036c6:	f003 fa0d 	bl	8006ae4 <__sprint_r>
 80036ca:	2800      	cmp	r0, #0
 80036cc:	f47f ac54 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 80036d0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80036d2:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80036d4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036d8:	e793      	b.n	8003602 <_vfprintf_r+0x117a>
 80036da:	2330      	movs	r3, #48	; 0x30
 80036dc:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80036e0:	2378      	movs	r3, #120	; 0x78
 80036e2:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80036e6:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80036ea:	f048 0402 	orr.w	r4, r8, #2
 80036ee:	f300 82b0 	bgt.w	8003c52 <_vfprintf_r+0x17ca>
 80036f2:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80036f6:	930e      	str	r3, [sp, #56]	; 0x38
 80036f8:	f026 0320 	bic.w	r3, r6, #32
 80036fc:	9304      	str	r3, [sp, #16]
 80036fe:	2200      	movs	r2, #0
 8003700:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003702:	920a      	str	r2, [sp, #40]	; 0x28
 8003704:	46a0      	mov	r8, r4
 8003706:	af3d      	add	r7, sp, #244	; 0xf4
 8003708:	2b00      	cmp	r3, #0
 800370a:	f2c0 81e3 	blt.w	8003ad4 <_vfprintf_r+0x164c>
 800370e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003712:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003716:	2300      	movs	r3, #0
 8003718:	930b      	str	r3, [sp, #44]	; 0x2c
 800371a:	2e61      	cmp	r6, #97	; 0x61
 800371c:	f000 8255 	beq.w	8003bca <_vfprintf_r+0x1742>
 8003720:	2e41      	cmp	r6, #65	; 0x41
 8003722:	f47f aee3 	bne.w	80034ec <_vfprintf_r+0x1064>
 8003726:	a824      	add	r0, sp, #144	; 0x90
 8003728:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800372c:	f003 f8e2 	bl	80068f4 <frexp>
 8003730:	2200      	movs	r2, #0
 8003732:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003736:	ec51 0b10 	vmov	r0, r1, d0
 800373a:	f7fd f9fd 	bl	8000b38 <__aeabi_dmul>
 800373e:	2200      	movs	r2, #0
 8003740:	2300      	movs	r3, #0
 8003742:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003746:	f7fd fc5f 	bl	8001008 <__aeabi_dcmpeq>
 800374a:	2800      	cmp	r0, #0
 800374c:	f040 8305 	bne.w	8003d5a <_vfprintf_r+0x18d2>
 8003750:	4b63      	ldr	r3, [pc, #396]	; (80038e0 <_vfprintf_r+0x1458>)
 8003752:	9309      	str	r3, [sp, #36]	; 0x24
 8003754:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003758:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 800375c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003760:	9721      	str	r7, [sp, #132]	; 0x84
 8003762:	46b9      	mov	r9, r7
 8003764:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003768:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 800376c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003770:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003774:	e003      	b.n	800377e <_vfprintf_r+0x12f6>
 8003776:	f7fd fc47 	bl	8001008 <__aeabi_dcmpeq>
 800377a:	bb20      	cbnz	r0, 80037c6 <_vfprintf_r+0x133e>
 800377c:	46a9      	mov	r9, r5
 800377e:	2200      	movs	r2, #0
 8003780:	4b58      	ldr	r3, [pc, #352]	; (80038e4 <_vfprintf_r+0x145c>)
 8003782:	4630      	mov	r0, r6
 8003784:	4639      	mov	r1, r7
 8003786:	f7fd f9d7 	bl	8000b38 <__aeabi_dmul>
 800378a:	460f      	mov	r7, r1
 800378c:	4606      	mov	r6, r0
 800378e:	f7fd fc83 	bl	8001098 <__aeabi_d2iz>
 8003792:	4680      	mov	r8, r0
 8003794:	f7fd f966 	bl	8000a64 <__aeabi_i2d>
 8003798:	4602      	mov	r2, r0
 800379a:	460b      	mov	r3, r1
 800379c:	4630      	mov	r0, r6
 800379e:	4639      	mov	r1, r7
 80037a0:	f7fd f812 	bl	80007c8 <__aeabi_dsub>
 80037a4:	464d      	mov	r5, r9
 80037a6:	f81a c008 	ldrb.w	ip, [sl, r8]
 80037aa:	f805 cb01 	strb.w	ip, [r5], #1
 80037ae:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 80037b2:	46a3      	mov	fp, r4
 80037b4:	4606      	mov	r6, r0
 80037b6:	460f      	mov	r7, r1
 80037b8:	f04f 0200 	mov.w	r2, #0
 80037bc:	f04f 0300 	mov.w	r3, #0
 80037c0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 80037c4:	d1d7      	bne.n	8003776 <_vfprintf_r+0x12ee>
 80037c6:	4630      	mov	r0, r6
 80037c8:	4639      	mov	r1, r7
 80037ca:	2200      	movs	r2, #0
 80037cc:	4b46      	ldr	r3, [pc, #280]	; (80038e8 <_vfprintf_r+0x1460>)
 80037ce:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80037d2:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80037d4:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80037d8:	4644      	mov	r4, r8
 80037da:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80037de:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80037e2:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80037e6:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80037ea:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80037ec:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80037f0:	f7fd fc32 	bl	8001058 <__aeabi_dcmpgt>
 80037f4:	2800      	cmp	r0, #0
 80037f6:	f040 8176 	bne.w	8003ae6 <_vfprintf_r+0x165e>
 80037fa:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80037fe:	2200      	movs	r2, #0
 8003800:	4b39      	ldr	r3, [pc, #228]	; (80038e8 <_vfprintf_r+0x1460>)
 8003802:	f7fd fc01 	bl	8001008 <__aeabi_dcmpeq>
 8003806:	b110      	cbz	r0, 800380e <_vfprintf_r+0x1386>
 8003808:	07e2      	lsls	r2, r4, #31
 800380a:	f100 816c 	bmi.w	8003ae6 <_vfprintf_r+0x165e>
 800380e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003810:	2b00      	cmp	r3, #0
 8003812:	db07      	blt.n	8003824 <_vfprintf_r+0x139c>
 8003814:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003816:	3301      	adds	r3, #1
 8003818:	442b      	add	r3, r5
 800381a:	2230      	movs	r2, #48	; 0x30
 800381c:	f805 2b01 	strb.w	r2, [r5], #1
 8003820:	42ab      	cmp	r3, r5
 8003822:	d1fb      	bne.n	800381c <_vfprintf_r+0x1394>
 8003824:	1beb      	subs	r3, r5, r7
 8003826:	4640      	mov	r0, r8
 8003828:	9310      	str	r3, [sp, #64]	; 0x40
 800382a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800382e:	e683      	b.n	8003538 <_vfprintf_r+0x10b0>
 8003830:	f8cd 9010 	str.w	r9, [sp, #16]
 8003834:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003838:	9408      	str	r4, [sp, #32]
 800383a:	4681      	mov	r9, r0
 800383c:	900f      	str	r0, [sp, #60]	; 0x3c
 800383e:	9014      	str	r0, [sp, #80]	; 0x50
 8003840:	9011      	str	r0, [sp, #68]	; 0x44
 8003842:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003846:	f7fe bfac 	b.w	80027a2 <_vfprintf_r+0x31a>
 800384a:	aa2a      	add	r2, sp, #168	; 0xa8
 800384c:	9907      	ldr	r1, [sp, #28]
 800384e:	9803      	ldr	r0, [sp, #12]
 8003850:	f003 f948 	bl	8006ae4 <__sprint_r>
 8003854:	2800      	cmp	r0, #0
 8003856:	f47f ab8f 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 800385a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800385c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800385e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003862:	e511      	b.n	8003288 <_vfprintf_r+0xe00>
 8003864:	4252      	negs	r2, r2
 8003866:	9206      	str	r2, [sp, #24]
 8003868:	9308      	str	r3, [sp, #32]
 800386a:	f7ff b96d 	b.w	8002b48 <_vfprintf_r+0x6c0>
 800386e:	4614      	mov	r4, r2
 8003870:	4632      	mov	r2, r6
 8003872:	461e      	mov	r6, r3
 8003874:	4613      	mov	r3, r2
 8003876:	462a      	mov	r2, r5
 8003878:	3201      	adds	r2, #1
 800387a:	9209      	str	r2, [sp, #36]	; 0x24
 800387c:	f106 0208 	add.w	r2, r6, #8
 8003880:	e9c6 3900 	strd	r3, r9, [r6]
 8003884:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003886:	932b      	str	r3, [sp, #172]	; 0xac
 8003888:	444c      	add	r4, r9
 800388a:	2b07      	cmp	r3, #7
 800388c:	942c      	str	r4, [sp, #176]	; 0xb0
 800388e:	f73f acc3 	bgt.w	8003218 <_vfprintf_r+0xd90>
 8003892:	3301      	adds	r3, #1
 8003894:	9309      	str	r3, [sp, #36]	; 0x24
 8003896:	f102 0b08 	add.w	fp, r2, #8
 800389a:	4616      	mov	r6, r2
 800389c:	f7ff bbca 	b.w	8003034 <_vfprintf_r+0xbac>
 80038a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80038a2:	9907      	ldr	r1, [sp, #28]
 80038a4:	9803      	ldr	r0, [sp, #12]
 80038a6:	f003 f91d 	bl	8006ae4 <__sprint_r>
 80038aa:	2800      	cmp	r0, #0
 80038ac:	f47f ab64 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 80038b0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038b2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038b6:	f7ff bade 	b.w	8002e76 <_vfprintf_r+0x9ee>
 80038ba:	464b      	mov	r3, r9
 80038bc:	2b06      	cmp	r3, #6
 80038be:	bf28      	it	cs
 80038c0:	2306      	movcs	r3, #6
 80038c2:	46b9      	mov	r9, r7
 80038c4:	970f      	str	r7, [sp, #60]	; 0x3c
 80038c6:	9714      	str	r7, [sp, #80]	; 0x50
 80038c8:	9711      	str	r7, [sp, #68]	; 0x44
 80038ca:	970a      	str	r7, [sp, #40]	; 0x28
 80038cc:	463a      	mov	r2, r7
 80038ce:	9304      	str	r3, [sp, #16]
 80038d0:	e9cd 4308 	strd	r4, r3, [sp, #32]
 80038d4:	4f05      	ldr	r7, [pc, #20]	; (80038ec <_vfprintf_r+0x1464>)
 80038d6:	f7fe bf64 	b.w	80027a2 <_vfprintf_r+0x31a>
 80038da:	bf00      	nop
 80038dc:	080071ec 	.word	0x080071ec
 80038e0:	080071d0 	.word	0x080071d0
 80038e4:	40300000 	.word	0x40300000
 80038e8:	3fe00000 	.word	0x3fe00000
 80038ec:	080071e4 	.word	0x080071e4
 80038f0:	460c      	mov	r4, r1
 80038f2:	4639      	mov	r1, r7
 80038f4:	465f      	mov	r7, fp
 80038f6:	469b      	mov	fp, r3
 80038f8:	460b      	mov	r3, r1
 80038fa:	3201      	adds	r2, #1
 80038fc:	442c      	add	r4, r5
 80038fe:	2a07      	cmp	r2, #7
 8003900:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003904:	e9cb 3500 	strd	r3, r5, [fp]
 8003908:	f73f aca5 	bgt.w	8003256 <_vfprintf_r+0xdce>
 800390c:	f10b 0b08 	add.w	fp, fp, #8
 8003910:	e4ac      	b.n	800326c <_vfprintf_r+0xde4>
 8003912:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003914:	1cda      	adds	r2, r3, #3
 8003916:	db02      	blt.n	800391e <_vfprintf_r+0x1496>
 8003918:	4599      	cmp	r9, r3
 800391a:	f280 80b5 	bge.w	8003a88 <_vfprintf_r+0x1600>
 800391e:	3e02      	subs	r6, #2
 8003920:	f026 0320 	bic.w	r3, r6, #32
 8003924:	9304      	str	r3, [sp, #16]
 8003926:	e611      	b.n	800354c <_vfprintf_r+0x10c4>
 8003928:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800392a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 800392e:	465a      	mov	r2, fp
 8003930:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003934:	18fb      	adds	r3, r7, r3
 8003936:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 800393a:	970c      	str	r7, [sp, #48]	; 0x30
 800393c:	4eaf      	ldr	r6, [pc, #700]	; (8003bfc <_vfprintf_r+0x1774>)
 800393e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003942:	9309      	str	r3, [sp, #36]	; 0x24
 8003944:	464f      	mov	r7, r9
 8003946:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800394a:	4621      	mov	r1, r4
 800394c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800394e:	2b00      	cmp	r3, #0
 8003950:	d05b      	beq.n	8003a0a <_vfprintf_r+0x1582>
 8003952:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003954:	2b00      	cmp	r3, #0
 8003956:	d154      	bne.n	8003a02 <_vfprintf_r+0x157a>
 8003958:	9b14      	ldr	r3, [sp, #80]	; 0x50
 800395a:	3b01      	subs	r3, #1
 800395c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003960:	9314      	str	r3, [sp, #80]	; 0x50
 8003962:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003964:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003966:	6010      	str	r0, [r2, #0]
 8003968:	3301      	adds	r3, #1
 800396a:	4459      	add	r1, fp
 800396c:	2b07      	cmp	r3, #7
 800396e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003970:	f8c2 b004 	str.w	fp, [r2, #4]
 8003974:	932b      	str	r3, [sp, #172]	; 0xac
 8003976:	dc68      	bgt.n	8003a4a <_vfprintf_r+0x15c2>
 8003978:	3208      	adds	r2, #8
 800397a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800397c:	f898 3000 	ldrb.w	r3, [r8]
 8003980:	1bc5      	subs	r5, r0, r7
 8003982:	429d      	cmp	r5, r3
 8003984:	bfa8      	it	ge
 8003986:	461d      	movge	r5, r3
 8003988:	2d00      	cmp	r5, #0
 800398a:	dd0b      	ble.n	80039a4 <_vfprintf_r+0x151c>
 800398c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800398e:	6017      	str	r7, [r2, #0]
 8003990:	3301      	adds	r3, #1
 8003992:	4429      	add	r1, r5
 8003994:	2b07      	cmp	r3, #7
 8003996:	912c      	str	r1, [sp, #176]	; 0xb0
 8003998:	6055      	str	r5, [r2, #4]
 800399a:	932b      	str	r3, [sp, #172]	; 0xac
 800399c:	dc5e      	bgt.n	8003a5c <_vfprintf_r+0x15d4>
 800399e:	f898 3000 	ldrb.w	r3, [r8]
 80039a2:	3208      	adds	r2, #8
 80039a4:	2d00      	cmp	r5, #0
 80039a6:	bfac      	ite	ge
 80039a8:	1b5d      	subge	r5, r3, r5
 80039aa:	461d      	movlt	r5, r3
 80039ac:	2d00      	cmp	r5, #0
 80039ae:	dd26      	ble.n	80039fe <_vfprintf_r+0x1576>
 80039b0:	2d10      	cmp	r5, #16
 80039b2:	982b      	ldr	r0, [sp, #172]	; 0xac
 80039b4:	dd3c      	ble.n	8003a30 <_vfprintf_r+0x15a8>
 80039b6:	2410      	movs	r4, #16
 80039b8:	e003      	b.n	80039c2 <_vfprintf_r+0x153a>
 80039ba:	3208      	adds	r2, #8
 80039bc:	3d10      	subs	r5, #16
 80039be:	2d10      	cmp	r5, #16
 80039c0:	dd36      	ble.n	8003a30 <_vfprintf_r+0x15a8>
 80039c2:	3001      	adds	r0, #1
 80039c4:	3110      	adds	r1, #16
 80039c6:	2807      	cmp	r0, #7
 80039c8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80039cc:	e9c2 6400 	strd	r6, r4, [r2]
 80039d0:	ddf3      	ble.n	80039ba <_vfprintf_r+0x1532>
 80039d2:	aa2a      	add	r2, sp, #168	; 0xa8
 80039d4:	4651      	mov	r1, sl
 80039d6:	4648      	mov	r0, r9
 80039d8:	f003 f884 	bl	8006ae4 <__sprint_r>
 80039dc:	2800      	cmp	r0, #0
 80039de:	d150      	bne.n	8003a82 <_vfprintf_r+0x15fa>
 80039e0:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 80039e4:	aa2d      	add	r2, sp, #180	; 0xb4
 80039e6:	e7e9      	b.n	80039bc <_vfprintf_r+0x1534>
 80039e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80039ea:	4651      	mov	r1, sl
 80039ec:	4648      	mov	r0, r9
 80039ee:	f003 f879 	bl	8006ae4 <__sprint_r>
 80039f2:	2800      	cmp	r0, #0
 80039f4:	d145      	bne.n	8003a82 <_vfprintf_r+0x15fa>
 80039f6:	f898 3000 	ldrb.w	r3, [r8]
 80039fa:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80039fc:	aa2d      	add	r2, sp, #180	; 0xb4
 80039fe:	441f      	add	r7, r3
 8003a00:	e7a4      	b.n	800394c <_vfprintf_r+0x14c4>
 8003a02:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a04:	3b01      	subs	r3, #1
 8003a06:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a08:	e7ab      	b.n	8003962 <_vfprintf_r+0x14da>
 8003a0a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a0c:	2b00      	cmp	r3, #0
 8003a0e:	d1f8      	bne.n	8003a02 <_vfprintf_r+0x157a>
 8003a10:	46b9      	mov	r9, r7
 8003a12:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a14:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003a16:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003a1a:	18fb      	adds	r3, r7, r3
 8003a1c:	4599      	cmp	r9, r3
 8003a1e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003a22:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003a26:	4693      	mov	fp, r2
 8003a28:	460c      	mov	r4, r1
 8003a2a:	bf28      	it	cs
 8003a2c:	4699      	movcs	r9, r3
 8003a2e:	e424      	b.n	800327a <_vfprintf_r+0xdf2>
 8003a30:	3001      	adds	r0, #1
 8003a32:	4429      	add	r1, r5
 8003a34:	2807      	cmp	r0, #7
 8003a36:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003a3a:	e9c2 6500 	strd	r6, r5, [r2]
 8003a3e:	dcd3      	bgt.n	80039e8 <_vfprintf_r+0x1560>
 8003a40:	f898 3000 	ldrb.w	r3, [r8]
 8003a44:	3208      	adds	r2, #8
 8003a46:	441f      	add	r7, r3
 8003a48:	e780      	b.n	800394c <_vfprintf_r+0x14c4>
 8003a4a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a4c:	4651      	mov	r1, sl
 8003a4e:	4648      	mov	r0, r9
 8003a50:	f003 f848 	bl	8006ae4 <__sprint_r>
 8003a54:	b9a8      	cbnz	r0, 8003a82 <_vfprintf_r+0x15fa>
 8003a56:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a58:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a5a:	e78e      	b.n	800397a <_vfprintf_r+0x14f2>
 8003a5c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a5e:	4651      	mov	r1, sl
 8003a60:	4648      	mov	r0, r9
 8003a62:	f003 f83f 	bl	8006ae4 <__sprint_r>
 8003a66:	b960      	cbnz	r0, 8003a82 <_vfprintf_r+0x15fa>
 8003a68:	f898 3000 	ldrb.w	r3, [r8]
 8003a6c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a6e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a70:	e798      	b.n	80039a4 <_vfprintf_r+0x151c>
 8003a72:	4638      	mov	r0, r7
 8003a74:	f7fc fde4 	bl	8000640 <strlen>
 8003a78:	46a9      	mov	r9, r5
 8003a7a:	4603      	mov	r3, r0
 8003a7c:	9009      	str	r0, [sp, #36]	; 0x24
 8003a7e:	f7ff b8f4 	b.w	8002c6a <_vfprintf_r+0x7e2>
 8003a82:	46d1      	mov	r9, sl
 8003a84:	f7ff ba7a 	b.w	8002f7c <_vfprintf_r+0xaf4>
 8003a88:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a8a:	4619      	mov	r1, r3
 8003a8c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003a8e:	4299      	cmp	r1, r3
 8003a90:	f300 8082 	bgt.w	8003b98 <_vfprintf_r+0x1710>
 8003a94:	07c4      	lsls	r4, r0, #31
 8003a96:	f140 816b 	bpl.w	8003d70 <_vfprintf_r+0x18e8>
 8003a9a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003a9c:	4413      	add	r3, r2
 8003a9e:	9309      	str	r3, [sp, #36]	; 0x24
 8003aa0:	0541      	lsls	r1, r0, #21
 8003aa2:	d503      	bpl.n	8003aac <_vfprintf_r+0x1624>
 8003aa4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003aa6:	2b00      	cmp	r3, #0
 8003aa8:	f300 80e6 	bgt.w	8003c78 <_vfprintf_r+0x17f0>
 8003aac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003aae:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003ab2:	9304      	str	r3, [sp, #16]
 8003ab4:	2667      	movs	r6, #103	; 0x67
 8003ab6:	2300      	movs	r3, #0
 8003ab8:	930f      	str	r3, [sp, #60]	; 0x3c
 8003aba:	9314      	str	r3, [sp, #80]	; 0x50
 8003abc:	e586      	b.n	80035cc <_vfprintf_r+0x1144>
 8003abe:	222d      	movs	r2, #45	; 0x2d
 8003ac0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003ac4:	f04f 0900 	mov.w	r9, #0
 8003ac8:	f7fe be6c 	b.w	80027a4 <_vfprintf_r+0x31c>
 8003acc:	46a1      	mov	r9, r4
 8003ace:	f7ff ba55 	b.w	8002f7c <_vfprintf_r+0xaf4>
 8003ad2:	900a      	str	r0, [sp, #40]	; 0x28
 8003ad4:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003ad8:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003adc:	931f      	str	r3, [sp, #124]	; 0x7c
 8003ade:	232d      	movs	r3, #45	; 0x2d
 8003ae0:	911e      	str	r1, [sp, #120]	; 0x78
 8003ae2:	930b      	str	r3, [sp, #44]	; 0x2c
 8003ae4:	e619      	b.n	800371a <_vfprintf_r+0x1292>
 8003ae6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ae8:	9328      	str	r3, [sp, #160]	; 0xa0
 8003aea:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003aec:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003af0:	7bd9      	ldrb	r1, [r3, #15]
 8003af2:	4291      	cmp	r1, r2
 8003af4:	462b      	mov	r3, r5
 8003af6:	d109      	bne.n	8003b0c <_vfprintf_r+0x1684>
 8003af8:	2030      	movs	r0, #48	; 0x30
 8003afa:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003afe:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b00:	1e5a      	subs	r2, r3, #1
 8003b02:	9228      	str	r2, [sp, #160]	; 0xa0
 8003b04:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003b08:	4291      	cmp	r1, r2
 8003b0a:	d0f6      	beq.n	8003afa <_vfprintf_r+0x1672>
 8003b0c:	2a39      	cmp	r2, #57	; 0x39
 8003b0e:	bf0b      	itete	eq
 8003b10:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003b12:	3201      	addne	r2, #1
 8003b14:	7a92      	ldrbeq	r2, [r2, #10]
 8003b16:	b2d2      	uxtbne	r2, r2
 8003b18:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003b1c:	e682      	b.n	8003824 <_vfprintf_r+0x139c>
 8003b1e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003b22:	f43f ad9f 	beq.w	8003664 <_vfprintf_r+0x11dc>
 8003b26:	9a05      	ldr	r2, [sp, #20]
 8003b28:	701a      	strb	r2, [r3, #0]
 8003b2a:	4657      	mov	r7, sl
 8003b2c:	f7fe bf52 	b.w	80029d4 <_vfprintf_r+0x54c>
 8003b30:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b32:	9907      	ldr	r1, [sp, #28]
 8003b34:	9803      	ldr	r0, [sp, #12]
 8003b36:	f002 ffd5 	bl	8006ae4 <__sprint_r>
 8003b3a:	2800      	cmp	r0, #0
 8003b3c:	f47f aa1c 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 8003b40:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b42:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003b46:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b4a:	e571      	b.n	8003630 <_vfprintf_r+0x11a8>
 8003b4c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b4e:	2b00      	cmp	r3, #0
 8003b50:	f340 8164 	ble.w	8003e1c <_vfprintf_r+0x1994>
 8003b54:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b56:	f1b9 0f00 	cmp.w	r9, #0
 8003b5a:	f040 8103 	bne.w	8003d64 <_vfprintf_r+0x18dc>
 8003b5e:	07c6      	lsls	r6, r0, #31
 8003b60:	f100 8100 	bmi.w	8003d64 <_vfprintf_r+0x18dc>
 8003b64:	9309      	str	r3, [sp, #36]	; 0x24
 8003b66:	2666      	movs	r6, #102	; 0x66
 8003b68:	0543      	lsls	r3, r0, #21
 8003b6a:	f100 8086 	bmi.w	8003c7a <_vfprintf_r+0x17f2>
 8003b6e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b70:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b74:	9304      	str	r3, [sp, #16]
 8003b76:	e79e      	b.n	8003ab6 <_vfprintf_r+0x162e>
 8003b78:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b7a:	9907      	ldr	r1, [sp, #28]
 8003b7c:	9803      	ldr	r0, [sp, #12]
 8003b7e:	f002 ffb1 	bl	8006ae4 <__sprint_r>
 8003b82:	2800      	cmp	r0, #0
 8003b84:	f47f a9f8 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 8003b88:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b8a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003b8c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b8e:	1ad3      	subs	r3, r2, r3
 8003b90:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b94:	f7ff bb90 	b.w	80032b8 <_vfprintf_r+0xe30>
 8003b98:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b9a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b9c:	4413      	add	r3, r2
 8003b9e:	9309      	str	r3, [sp, #36]	; 0x24
 8003ba0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ba2:	2b00      	cmp	r3, #0
 8003ba4:	f340 8149 	ble.w	8003e3a <_vfprintf_r+0x19b2>
 8003ba8:	2667      	movs	r6, #103	; 0x67
 8003baa:	e7dd      	b.n	8003b68 <_vfprintf_r+0x16e0>
 8003bac:	2330      	movs	r3, #48	; 0x30
 8003bae:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003bb2:	2358      	movs	r3, #88	; 0x58
 8003bb4:	e595      	b.n	80036e2 <_vfprintf_r+0x125a>
 8003bb6:	9803      	ldr	r0, [sp, #12]
 8003bb8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bba:	4649      	mov	r1, r9
 8003bbc:	f002 ff92 	bl	8006ae4 <__sprint_r>
 8003bc0:	2800      	cmp	r0, #0
 8003bc2:	f47f a9e0 	bne.w	8002f86 <_vfprintf_r+0xafe>
 8003bc6:	f7fe bf0f 	b.w	80029e8 <_vfprintf_r+0x560>
 8003bca:	a824      	add	r0, sp, #144	; 0x90
 8003bcc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003bd0:	f002 fe90 	bl	80068f4 <frexp>
 8003bd4:	2200      	movs	r2, #0
 8003bd6:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003bda:	ec51 0b10 	vmov	r0, r1, d0
 8003bde:	f7fc ffab 	bl	8000b38 <__aeabi_dmul>
 8003be2:	2200      	movs	r2, #0
 8003be4:	2300      	movs	r3, #0
 8003be6:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003bea:	f7fd fa0d 	bl	8001008 <__aeabi_dcmpeq>
 8003bee:	b108      	cbz	r0, 8003bf4 <_vfprintf_r+0x176c>
 8003bf0:	2301      	movs	r3, #1
 8003bf2:	9324      	str	r3, [sp, #144]	; 0x90
 8003bf4:	4b02      	ldr	r3, [pc, #8]	; (8003c00 <_vfprintf_r+0x1778>)
 8003bf6:	9309      	str	r3, [sp, #36]	; 0x24
 8003bf8:	e5ac      	b.n	8003754 <_vfprintf_r+0x12cc>
 8003bfa:	bf00      	nop
 8003bfc:	08007200 	.word	0x08007200
 8003c00:	080071bc 	.word	0x080071bc
 8003c04:	425d      	negs	r5, r3
 8003c06:	3310      	adds	r3, #16
 8003c08:	4bb9      	ldr	r3, [pc, #740]	; (8003ef0 <_vfprintf_r+0x1a68>)
 8003c0a:	f280 8097 	bge.w	8003d3c <_vfprintf_r+0x18b4>
 8003c0e:	4619      	mov	r1, r3
 8003c10:	2610      	movs	r6, #16
 8003c12:	4623      	mov	r3, r4
 8003c14:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003c18:	460c      	mov	r4, r1
 8003c1a:	e005      	b.n	8003c28 <_vfprintf_r+0x17a0>
 8003c1c:	f10b 0b08 	add.w	fp, fp, #8
 8003c20:	3d10      	subs	r5, #16
 8003c22:	2d10      	cmp	r5, #16
 8003c24:	f340 8087 	ble.w	8003d36 <_vfprintf_r+0x18ae>
 8003c28:	3201      	adds	r2, #1
 8003c2a:	3310      	adds	r3, #16
 8003c2c:	2a07      	cmp	r2, #7
 8003c2e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003c32:	e9cb 4600 	strd	r4, r6, [fp]
 8003c36:	ddf1      	ble.n	8003c1c <_vfprintf_r+0x1794>
 8003c38:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c3a:	9907      	ldr	r1, [sp, #28]
 8003c3c:	4648      	mov	r0, r9
 8003c3e:	f002 ff51 	bl	8006ae4 <__sprint_r>
 8003c42:	2800      	cmp	r0, #0
 8003c44:	f47f a998 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 8003c48:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003c4c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c50:	e7e6      	b.n	8003c20 <_vfprintf_r+0x1798>
 8003c52:	f109 0101 	add.w	r1, r9, #1
 8003c56:	9803      	ldr	r0, [sp, #12]
 8003c58:	f001 fe80 	bl	800595c <_malloc_r>
 8003c5c:	4607      	mov	r7, r0
 8003c5e:	2800      	cmp	r0, #0
 8003c60:	f000 813b 	beq.w	8003eda <_vfprintf_r+0x1a52>
 8003c64:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003c68:	930e      	str	r3, [sp, #56]	; 0x38
 8003c6a:	f026 0320 	bic.w	r3, r6, #32
 8003c6e:	9304      	str	r3, [sp, #16]
 8003c70:	46a0      	mov	r8, r4
 8003c72:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003c74:	900a      	str	r0, [sp, #40]	; 0x28
 8003c76:	e547      	b.n	8003708 <_vfprintf_r+0x1280>
 8003c78:	2667      	movs	r6, #103	; 0x67
 8003c7a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003c7c:	2200      	movs	r2, #0
 8003c7e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003c80:	9214      	str	r2, [sp, #80]	; 0x50
 8003c82:	7803      	ldrb	r3, [r0, #0]
 8003c84:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003c86:	2bff      	cmp	r3, #255	; 0xff
 8003c88:	d00c      	beq.n	8003ca4 <_vfprintf_r+0x181c>
 8003c8a:	4293      	cmp	r3, r2
 8003c8c:	da0a      	bge.n	8003ca4 <_vfprintf_r+0x181c>
 8003c8e:	7841      	ldrb	r1, [r0, #1]
 8003c90:	1ad2      	subs	r2, r2, r3
 8003c92:	b1a9      	cbz	r1, 8003cc0 <_vfprintf_r+0x1838>
 8003c94:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c96:	3301      	adds	r3, #1
 8003c98:	9314      	str	r3, [sp, #80]	; 0x50
 8003c9a:	460b      	mov	r3, r1
 8003c9c:	2bff      	cmp	r3, #255	; 0xff
 8003c9e:	f100 0001 	add.w	r0, r0, #1
 8003ca2:	d1f2      	bne.n	8003c8a <_vfprintf_r+0x1802>
 8003ca4:	9211      	str	r2, [sp, #68]	; 0x44
 8003ca6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003ca8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003caa:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003cac:	901a      	str	r0, [sp, #104]	; 0x68
 8003cae:	4413      	add	r3, r2
 8003cb0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003cb2:	fb02 1303 	mla	r3, r2, r3, r1
 8003cb6:	9309      	str	r3, [sp, #36]	; 0x24
 8003cb8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003cbc:	9304      	str	r3, [sp, #16]
 8003cbe:	e485      	b.n	80035cc <_vfprintf_r+0x1144>
 8003cc0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003cc2:	3101      	adds	r1, #1
 8003cc4:	910f      	str	r1, [sp, #60]	; 0x3c
 8003cc6:	e7de      	b.n	8003c86 <_vfprintf_r+0x17fe>
 8003cc8:	aa28      	add	r2, sp, #160	; 0xa0
 8003cca:	ab25      	add	r3, sp, #148	; 0x94
 8003ccc:	e9cd 3200 	strd	r3, r2, [sp]
 8003cd0:	2103      	movs	r1, #3
 8003cd2:	ab24      	add	r3, sp, #144	; 0x90
 8003cd4:	464a      	mov	r2, r9
 8003cd6:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003cda:	9803      	ldr	r0, [sp, #12]
 8003cdc:	f000 fa5c 	bl	8004198 <_dtoa_r>
 8003ce0:	464d      	mov	r5, r9
 8003ce2:	4607      	mov	r7, r0
 8003ce4:	eb00 0409 	add.w	r4, r0, r9
 8003ce8:	783b      	ldrb	r3, [r7, #0]
 8003cea:	2b30      	cmp	r3, #48	; 0x30
 8003cec:	f000 80be 	beq.w	8003e6c <_vfprintf_r+0x19e4>
 8003cf0:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003cf2:	442c      	add	r4, r5
 8003cf4:	2200      	movs	r2, #0
 8003cf6:	2300      	movs	r3, #0
 8003cf8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003cfc:	f7fd f984 	bl	8001008 <__aeabi_dcmpeq>
 8003d00:	b108      	cbz	r0, 8003d06 <_vfprintf_r+0x187e>
 8003d02:	4623      	mov	r3, r4
 8003d04:	e413      	b.n	800352e <_vfprintf_r+0x10a6>
 8003d06:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d08:	42a3      	cmp	r3, r4
 8003d0a:	f4bf ac10 	bcs.w	800352e <_vfprintf_r+0x10a6>
 8003d0e:	2130      	movs	r1, #48	; 0x30
 8003d10:	1c5a      	adds	r2, r3, #1
 8003d12:	9228      	str	r2, [sp, #160]	; 0xa0
 8003d14:	7019      	strb	r1, [r3, #0]
 8003d16:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d18:	429c      	cmp	r4, r3
 8003d1a:	d8f9      	bhi.n	8003d10 <_vfprintf_r+0x1888>
 8003d1c:	e407      	b.n	800352e <_vfprintf_r+0x10a6>
 8003d1e:	197c      	adds	r4, r7, r5
 8003d20:	e7e8      	b.n	8003cf4 <_vfprintf_r+0x186c>
 8003d22:	f1b9 0f00 	cmp.w	r9, #0
 8003d26:	f000 8092 	beq.w	8003e4e <_vfprintf_r+0x19c6>
 8003d2a:	900a      	str	r0, [sp, #40]	; 0x28
 8003d2c:	e4ec      	b.n	8003708 <_vfprintf_r+0x1280>
 8003d2e:	900a      	str	r0, [sp, #40]	; 0x28
 8003d30:	f04f 0906 	mov.w	r9, #6
 8003d34:	e4e8      	b.n	8003708 <_vfprintf_r+0x1280>
 8003d36:	4621      	mov	r1, r4
 8003d38:	461c      	mov	r4, r3
 8003d3a:	460b      	mov	r3, r1
 8003d3c:	3201      	adds	r2, #1
 8003d3e:	442c      	add	r4, r5
 8003d40:	2a07      	cmp	r2, #7
 8003d42:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d46:	e9cb 3500 	strd	r3, r5, [fp]
 8003d4a:	f300 80a9 	bgt.w	8003ea0 <_vfprintf_r+0x1a18>
 8003d4e:	f10b 0b08 	add.w	fp, fp, #8
 8003d52:	e470      	b.n	8003636 <_vfprintf_r+0x11ae>
 8003d54:	469a      	mov	sl, r3
 8003d56:	f7ff bb37 	b.w	80033c8 <_vfprintf_r+0xf40>
 8003d5a:	2301      	movs	r3, #1
 8003d5c:	9324      	str	r3, [sp, #144]	; 0x90
 8003d5e:	4b65      	ldr	r3, [pc, #404]	; (8003ef4 <_vfprintf_r+0x1a6c>)
 8003d60:	9309      	str	r3, [sp, #36]	; 0x24
 8003d62:	e4f7      	b.n	8003754 <_vfprintf_r+0x12cc>
 8003d64:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d66:	4413      	add	r3, r2
 8003d68:	444b      	add	r3, r9
 8003d6a:	9309      	str	r3, [sp, #36]	; 0x24
 8003d6c:	2666      	movs	r6, #102	; 0x66
 8003d6e:	e6fb      	b.n	8003b68 <_vfprintf_r+0x16e0>
 8003d70:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d72:	9309      	str	r3, [sp, #36]	; 0x24
 8003d74:	e694      	b.n	8003aa0 <_vfprintf_r+0x1618>
 8003d76:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003d7a:	4664      	mov	r4, ip
 8003d7c:	4d5e      	ldr	r5, [pc, #376]	; (8003ef8 <_vfprintf_r+0x1a70>)
 8003d7e:	e000      	b.n	8003d82 <_vfprintf_r+0x18fa>
 8003d80:	4614      	mov	r4, r2
 8003d82:	fba5 1203 	umull	r1, r2, r5, r3
 8003d86:	08d2      	lsrs	r2, r2, #3
 8003d88:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003d8c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003d90:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003d94:	4613      	mov	r3, r2
 8003d96:	2b09      	cmp	r3, #9
 8003d98:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003d9c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003da0:	dcee      	bgt.n	8003d80 <_vfprintf_r+0x18f8>
 8003da2:	3330      	adds	r3, #48	; 0x30
 8003da4:	3c02      	subs	r4, #2
 8003da6:	b2db      	uxtb	r3, r3
 8003da8:	45a4      	cmp	ip, r4
 8003daa:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003dae:	f240 8090 	bls.w	8003ed2 <_vfprintf_r+0x1a4a>
 8003db2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003db6:	4611      	mov	r1, r2
 8003db8:	e001      	b.n	8003dbe <_vfprintf_r+0x1936>
 8003dba:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003dbe:	f804 3b01 	strb.w	r3, [r4], #1
 8003dc2:	458c      	cmp	ip, r1
 8003dc4:	d1f9      	bne.n	8003dba <_vfprintf_r+0x1932>
 8003dc6:	ab2a      	add	r3, sp, #168	; 0xa8
 8003dc8:	1a9b      	subs	r3, r3, r2
 8003dca:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003dce:	4413      	add	r3, r2
 8003dd0:	f7ff bbe3 	b.w	800359a <_vfprintf_r+0x1112>
 8003dd4:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003dd6:	4f49      	ldr	r7, [pc, #292]	; (8003efc <_vfprintf_r+0x1a74>)
 8003dd8:	2b00      	cmp	r3, #0
 8003dda:	bfb6      	itet	lt
 8003ddc:	222d      	movlt	r2, #45	; 0x2d
 8003dde:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003de2:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003de6:	4b46      	ldr	r3, [pc, #280]	; (8003f00 <_vfprintf_r+0x1a78>)
 8003de8:	f7fe bf02 	b.w	8002bf0 <_vfprintf_r+0x768>
 8003dec:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003df0:	f7ff b8c9 	b.w	8002f86 <_vfprintf_r+0xafe>
 8003df4:	aa28      	add	r2, sp, #160	; 0xa0
 8003df6:	ab25      	add	r3, sp, #148	; 0x94
 8003df8:	e9cd 3200 	strd	r3, r2, [sp]
 8003dfc:	2103      	movs	r1, #3
 8003dfe:	ab24      	add	r3, sp, #144	; 0x90
 8003e00:	464a      	mov	r2, r9
 8003e02:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e06:	9803      	ldr	r0, [sp, #12]
 8003e08:	f000 f9c6 	bl	8004198 <_dtoa_r>
 8003e0c:	464d      	mov	r5, r9
 8003e0e:	4607      	mov	r7, r0
 8003e10:	2e46      	cmp	r6, #70	; 0x46
 8003e12:	eb07 0405 	add.w	r4, r7, r5
 8003e16:	f43f af67 	beq.w	8003ce8 <_vfprintf_r+0x1860>
 8003e1a:	e76b      	b.n	8003cf4 <_vfprintf_r+0x186c>
 8003e1c:	f1b9 0f00 	cmp.w	r9, #0
 8003e20:	d131      	bne.n	8003e86 <_vfprintf_r+0x19fe>
 8003e22:	07c5      	lsls	r5, r0, #31
 8003e24:	d42f      	bmi.n	8003e86 <_vfprintf_r+0x19fe>
 8003e26:	2301      	movs	r3, #1
 8003e28:	9304      	str	r3, [sp, #16]
 8003e2a:	9309      	str	r3, [sp, #36]	; 0x24
 8003e2c:	2666      	movs	r6, #102	; 0x66
 8003e2e:	e642      	b.n	8003ab6 <_vfprintf_r+0x162e>
 8003e30:	07c3      	lsls	r3, r0, #31
 8003e32:	f57f abbf 	bpl.w	80035b4 <_vfprintf_r+0x112c>
 8003e36:	f7ff bbb9 	b.w	80035ac <_vfprintf_r+0x1124>
 8003e3a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003e3c:	f1c3 0301 	rsb	r3, r3, #1
 8003e40:	441a      	add	r2, r3
 8003e42:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003e46:	9209      	str	r2, [sp, #36]	; 0x24
 8003e48:	9304      	str	r3, [sp, #16]
 8003e4a:	2667      	movs	r6, #103	; 0x67
 8003e4c:	e633      	b.n	8003ab6 <_vfprintf_r+0x162e>
 8003e4e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003e52:	f04f 0901 	mov.w	r9, #1
 8003e56:	e457      	b.n	8003708 <_vfprintf_r+0x1280>
 8003e58:	465a      	mov	r2, fp
 8003e5a:	e511      	b.n	8003880 <_vfprintf_r+0x13f8>
 8003e5c:	2e47      	cmp	r6, #71	; 0x47
 8003e5e:	f47f af5e 	bne.w	8003d1e <_vfprintf_r+0x1896>
 8003e62:	f018 0f01 	tst.w	r8, #1
 8003e66:	f43f ab61 	beq.w	800352c <_vfprintf_r+0x10a4>
 8003e6a:	e7d1      	b.n	8003e10 <_vfprintf_r+0x1988>
 8003e6c:	2200      	movs	r2, #0
 8003e6e:	2300      	movs	r3, #0
 8003e70:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003e74:	f7fd f8c8 	bl	8001008 <__aeabi_dcmpeq>
 8003e78:	2800      	cmp	r0, #0
 8003e7a:	f47f af39 	bne.w	8003cf0 <_vfprintf_r+0x1868>
 8003e7e:	f1c5 0501 	rsb	r5, r5, #1
 8003e82:	9524      	str	r5, [sp, #144]	; 0x90
 8003e84:	e735      	b.n	8003cf2 <_vfprintf_r+0x186a>
 8003e86:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003e88:	3301      	adds	r3, #1
 8003e8a:	444b      	add	r3, r9
 8003e8c:	9309      	str	r3, [sp, #36]	; 0x24
 8003e8e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e92:	9304      	str	r3, [sp, #16]
 8003e94:	2666      	movs	r6, #102	; 0x66
 8003e96:	e60e      	b.n	8003ab6 <_vfprintf_r+0x162e>
 8003e98:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e9c:	f7ff bb7a 	b.w	8003594 <_vfprintf_r+0x110c>
 8003ea0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ea2:	9907      	ldr	r1, [sp, #28]
 8003ea4:	9803      	ldr	r0, [sp, #12]
 8003ea6:	f002 fe1d 	bl	8006ae4 <__sprint_r>
 8003eaa:	2800      	cmp	r0, #0
 8003eac:	f47f a864 	bne.w	8002f78 <_vfprintf_r+0xaf0>
 8003eb0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003eb4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003eb8:	f7ff bbbd 	b.w	8003636 <_vfprintf_r+0x11ae>
 8003ebc:	9908      	ldr	r1, [sp, #32]
 8003ebe:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003ec2:	680b      	ldr	r3, [r1, #0]
 8003ec4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003ec8:	1d0b      	adds	r3, r1, #4
 8003eca:	4692      	mov	sl, r2
 8003ecc:	9308      	str	r3, [sp, #32]
 8003ece:	f7fe bb59 	b.w	8002584 <_vfprintf_r+0xfc>
 8003ed2:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003ed6:	f7ff bb60 	b.w	800359a <_vfprintf_r+0x1112>
 8003eda:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003ede:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003ee2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003ee6:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003eea:	f7ff b84c 	b.w	8002f86 <_vfprintf_r+0xafe>
 8003eee:	bf00      	nop
 8003ef0:	08007200 	.word	0x08007200
 8003ef4:	080071d0 	.word	0x080071d0
 8003ef8:	cccccccd 	.word	0xcccccccd
 8003efc:	080071b8 	.word	0x080071b8
 8003f00:	080071b4 	.word	0x080071b4

08003f04 <__sbprintf>:
 8003f04:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003f08:	460c      	mov	r4, r1
 8003f0a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003f0e:	8989      	ldrh	r1, [r1, #12]
 8003f10:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003f12:	89e5      	ldrh	r5, [r4, #14]
 8003f14:	9619      	str	r6, [sp, #100]	; 0x64
 8003f16:	f021 0102 	bic.w	r1, r1, #2
 8003f1a:	4606      	mov	r6, r0
 8003f1c:	69e0      	ldr	r0, [r4, #28]
 8003f1e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003f22:	4617      	mov	r7, r2
 8003f24:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003f28:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003f2a:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003f2e:	4698      	mov	r8, r3
 8003f30:	ad1a      	add	r5, sp, #104	; 0x68
 8003f32:	2300      	movs	r3, #0
 8003f34:	9007      	str	r0, [sp, #28]
 8003f36:	a816      	add	r0, sp, #88	; 0x58
 8003f38:	9209      	str	r2, [sp, #36]	; 0x24
 8003f3a:	9306      	str	r3, [sp, #24]
 8003f3c:	9500      	str	r5, [sp, #0]
 8003f3e:	9504      	str	r5, [sp, #16]
 8003f40:	9102      	str	r1, [sp, #8]
 8003f42:	9105      	str	r1, [sp, #20]
 8003f44:	f001 fc8a 	bl	800585c <__retarget_lock_init_recursive>
 8003f48:	4643      	mov	r3, r8
 8003f4a:	463a      	mov	r2, r7
 8003f4c:	4669      	mov	r1, sp
 8003f4e:	4630      	mov	r0, r6
 8003f50:	f7fe fa9a 	bl	8002488 <_vfprintf_r>
 8003f54:	1e05      	subs	r5, r0, #0
 8003f56:	db07      	blt.n	8003f68 <__sbprintf+0x64>
 8003f58:	4630      	mov	r0, r6
 8003f5a:	4669      	mov	r1, sp
 8003f5c:	f001 f8d6 	bl	800510c <_fflush_r>
 8003f60:	2800      	cmp	r0, #0
 8003f62:	bf18      	it	ne
 8003f64:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003f68:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003f6c:	065b      	lsls	r3, r3, #25
 8003f6e:	d503      	bpl.n	8003f78 <__sbprintf+0x74>
 8003f70:	89a3      	ldrh	r3, [r4, #12]
 8003f72:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f76:	81a3      	strh	r3, [r4, #12]
 8003f78:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003f7a:	f001 fc71 	bl	8005860 <__retarget_lock_close_recursive>
 8003f7e:	4628      	mov	r0, r5
 8003f80:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003f84:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003f88 <__swsetup_r>:
 8003f88:	b538      	push	{r3, r4, r5, lr}
 8003f8a:	4b31      	ldr	r3, [pc, #196]	; (8004050 <__swsetup_r+0xc8>)
 8003f8c:	681b      	ldr	r3, [r3, #0]
 8003f8e:	4605      	mov	r5, r0
 8003f90:	460c      	mov	r4, r1
 8003f92:	b113      	cbz	r3, 8003f9a <__swsetup_r+0x12>
 8003f94:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003f96:	2a00      	cmp	r2, #0
 8003f98:	d03a      	beq.n	8004010 <__swsetup_r+0x88>
 8003f9a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8003f9e:	b293      	uxth	r3, r2
 8003fa0:	0718      	lsls	r0, r3, #28
 8003fa2:	d50c      	bpl.n	8003fbe <__swsetup_r+0x36>
 8003fa4:	6920      	ldr	r0, [r4, #16]
 8003fa6:	b1a8      	cbz	r0, 8003fd4 <__swsetup_r+0x4c>
 8003fa8:	f013 0201 	ands.w	r2, r3, #1
 8003fac:	d020      	beq.n	8003ff0 <__swsetup_r+0x68>
 8003fae:	6963      	ldr	r3, [r4, #20]
 8003fb0:	2200      	movs	r2, #0
 8003fb2:	425b      	negs	r3, r3
 8003fb4:	61a3      	str	r3, [r4, #24]
 8003fb6:	60a2      	str	r2, [r4, #8]
 8003fb8:	b300      	cbz	r0, 8003ffc <__swsetup_r+0x74>
 8003fba:	2000      	movs	r0, #0
 8003fbc:	bd38      	pop	{r3, r4, r5, pc}
 8003fbe:	06d9      	lsls	r1, r3, #27
 8003fc0:	d53e      	bpl.n	8004040 <__swsetup_r+0xb8>
 8003fc2:	0758      	lsls	r0, r3, #29
 8003fc4:	d428      	bmi.n	8004018 <__swsetup_r+0x90>
 8003fc6:	6920      	ldr	r0, [r4, #16]
 8003fc8:	f042 0308 	orr.w	r3, r2, #8
 8003fcc:	81a3      	strh	r3, [r4, #12]
 8003fce:	b29b      	uxth	r3, r3
 8003fd0:	2800      	cmp	r0, #0
 8003fd2:	d1e9      	bne.n	8003fa8 <__swsetup_r+0x20>
 8003fd4:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8003fd8:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8003fdc:	d0e4      	beq.n	8003fa8 <__swsetup_r+0x20>
 8003fde:	4628      	mov	r0, r5
 8003fe0:	4621      	mov	r1, r4
 8003fe2:	f001 fc71 	bl	80058c8 <__smakebuf_r>
 8003fe6:	89a3      	ldrh	r3, [r4, #12]
 8003fe8:	6920      	ldr	r0, [r4, #16]
 8003fea:	f013 0201 	ands.w	r2, r3, #1
 8003fee:	d1de      	bne.n	8003fae <__swsetup_r+0x26>
 8003ff0:	0799      	lsls	r1, r3, #30
 8003ff2:	bf58      	it	pl
 8003ff4:	6962      	ldrpl	r2, [r4, #20]
 8003ff6:	60a2      	str	r2, [r4, #8]
 8003ff8:	2800      	cmp	r0, #0
 8003ffa:	d1de      	bne.n	8003fba <__swsetup_r+0x32>
 8003ffc:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004000:	061a      	lsls	r2, r3, #24
 8004002:	d5db      	bpl.n	8003fbc <__swsetup_r+0x34>
 8004004:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004008:	81a3      	strh	r3, [r4, #12]
 800400a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800400e:	bd38      	pop	{r3, r4, r5, pc}
 8004010:	4618      	mov	r0, r3
 8004012:	f001 f8d7 	bl	80051c4 <__sinit>
 8004016:	e7c0      	b.n	8003f9a <__swsetup_r+0x12>
 8004018:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800401a:	b151      	cbz	r1, 8004032 <__swsetup_r+0xaa>
 800401c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004020:	4299      	cmp	r1, r3
 8004022:	d004      	beq.n	800402e <__swsetup_r+0xa6>
 8004024:	4628      	mov	r0, r5
 8004026:	f001 f96f 	bl	8005308 <_free_r>
 800402a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800402e:	2300      	movs	r3, #0
 8004030:	6323      	str	r3, [r4, #48]	; 0x30
 8004032:	2300      	movs	r3, #0
 8004034:	6920      	ldr	r0, [r4, #16]
 8004036:	6063      	str	r3, [r4, #4]
 8004038:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800403c:	6020      	str	r0, [r4, #0]
 800403e:	e7c3      	b.n	8003fc8 <__swsetup_r+0x40>
 8004040:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004044:	2309      	movs	r3, #9
 8004046:	602b      	str	r3, [r5, #0]
 8004048:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800404c:	81a2      	strh	r2, [r4, #12]
 800404e:	bd38      	pop	{r3, r4, r5, pc}
 8004050:	20000018 	.word	0x20000018

08004054 <register_fini>:
 8004054:	4b02      	ldr	r3, [pc, #8]	; (8004060 <register_fini+0xc>)
 8004056:	b113      	cbz	r3, 800405e <register_fini+0xa>
 8004058:	4802      	ldr	r0, [pc, #8]	; (8004064 <register_fini+0x10>)
 800405a:	f000 b805 	b.w	8004068 <atexit>
 800405e:	4770      	bx	lr
 8004060:	00000000 	.word	0x00000000
 8004064:	08005235 	.word	0x08005235

08004068 <atexit>:
 8004068:	2300      	movs	r3, #0
 800406a:	4601      	mov	r1, r0
 800406c:	461a      	mov	r2, r3
 800406e:	4618      	mov	r0, r3
 8004070:	f002 bd58 	b.w	8006b24 <__register_exitproc>

08004074 <quorem>:
 8004074:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004078:	6903      	ldr	r3, [r0, #16]
 800407a:	690f      	ldr	r7, [r1, #16]
 800407c:	42bb      	cmp	r3, r7
 800407e:	b083      	sub	sp, #12
 8004080:	f2c0 8086 	blt.w	8004190 <quorem+0x11c>
 8004084:	3f01      	subs	r7, #1
 8004086:	f101 0914 	add.w	r9, r1, #20
 800408a:	f100 0a14 	add.w	sl, r0, #20
 800408e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004092:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004096:	00bc      	lsls	r4, r7, #2
 8004098:	3201      	adds	r2, #1
 800409a:	fbb3 f8f2 	udiv	r8, r3, r2
 800409e:	eb0a 0304 	add.w	r3, sl, r4
 80040a2:	9400      	str	r4, [sp, #0]
 80040a4:	eb09 0b04 	add.w	fp, r9, r4
 80040a8:	9301      	str	r3, [sp, #4]
 80040aa:	f1b8 0f00 	cmp.w	r8, #0
 80040ae:	d038      	beq.n	8004122 <quorem+0xae>
 80040b0:	2500      	movs	r5, #0
 80040b2:	462e      	mov	r6, r5
 80040b4:	46ce      	mov	lr, r9
 80040b6:	46d4      	mov	ip, sl
 80040b8:	f85e 4b04 	ldr.w	r4, [lr], #4
 80040bc:	f8dc 3000 	ldr.w	r3, [ip]
 80040c0:	b2a2      	uxth	r2, r4
 80040c2:	fb08 5502 	mla	r5, r8, r2, r5
 80040c6:	0c22      	lsrs	r2, r4, #16
 80040c8:	0c2c      	lsrs	r4, r5, #16
 80040ca:	fb08 4202 	mla	r2, r8, r2, r4
 80040ce:	b2ad      	uxth	r5, r5
 80040d0:	1b75      	subs	r5, r6, r5
 80040d2:	b296      	uxth	r6, r2
 80040d4:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80040d8:	fa15 f383 	uxtah	r3, r5, r3
 80040dc:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80040e0:	b29b      	uxth	r3, r3
 80040e2:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80040e6:	45f3      	cmp	fp, lr
 80040e8:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80040ec:	f84c 3b04 	str.w	r3, [ip], #4
 80040f0:	ea4f 4626 	mov.w	r6, r6, asr #16
 80040f4:	d2e0      	bcs.n	80040b8 <quorem+0x44>
 80040f6:	9b00      	ldr	r3, [sp, #0]
 80040f8:	f85a 3003 	ldr.w	r3, [sl, r3]
 80040fc:	b98b      	cbnz	r3, 8004122 <quorem+0xae>
 80040fe:	9a01      	ldr	r2, [sp, #4]
 8004100:	1f13      	subs	r3, r2, #4
 8004102:	459a      	cmp	sl, r3
 8004104:	d20c      	bcs.n	8004120 <quorem+0xac>
 8004106:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800410a:	b94b      	cbnz	r3, 8004120 <quorem+0xac>
 800410c:	f1a2 0308 	sub.w	r3, r2, #8
 8004110:	e002      	b.n	8004118 <quorem+0xa4>
 8004112:	681a      	ldr	r2, [r3, #0]
 8004114:	3b04      	subs	r3, #4
 8004116:	b91a      	cbnz	r2, 8004120 <quorem+0xac>
 8004118:	459a      	cmp	sl, r3
 800411a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800411e:	d3f8      	bcc.n	8004112 <quorem+0x9e>
 8004120:	6107      	str	r7, [r0, #16]
 8004122:	4604      	mov	r4, r0
 8004124:	f002 f944 	bl	80063b0 <__mcmp>
 8004128:	2800      	cmp	r0, #0
 800412a:	db2d      	blt.n	8004188 <quorem+0x114>
 800412c:	f108 0801 	add.w	r8, r8, #1
 8004130:	4655      	mov	r5, sl
 8004132:	2300      	movs	r3, #0
 8004134:	f859 1b04 	ldr.w	r1, [r9], #4
 8004138:	6828      	ldr	r0, [r5, #0]
 800413a:	b28a      	uxth	r2, r1
 800413c:	1a9a      	subs	r2, r3, r2
 800413e:	0c0b      	lsrs	r3, r1, #16
 8004140:	fa12 f280 	uxtah	r2, r2, r0
 8004144:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004148:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800414c:	b292      	uxth	r2, r2
 800414e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004152:	45cb      	cmp	fp, r9
 8004154:	f845 2b04 	str.w	r2, [r5], #4
 8004158:	ea4f 4323 	mov.w	r3, r3, asr #16
 800415c:	d2ea      	bcs.n	8004134 <quorem+0xc0>
 800415e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004162:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004166:	b97a      	cbnz	r2, 8004188 <quorem+0x114>
 8004168:	1f1a      	subs	r2, r3, #4
 800416a:	4592      	cmp	sl, r2
 800416c:	d20b      	bcs.n	8004186 <quorem+0x112>
 800416e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004172:	b942      	cbnz	r2, 8004186 <quorem+0x112>
 8004174:	3b08      	subs	r3, #8
 8004176:	e002      	b.n	800417e <quorem+0x10a>
 8004178:	681a      	ldr	r2, [r3, #0]
 800417a:	3b04      	subs	r3, #4
 800417c:	b91a      	cbnz	r2, 8004186 <quorem+0x112>
 800417e:	459a      	cmp	sl, r3
 8004180:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004184:	d3f8      	bcc.n	8004178 <quorem+0x104>
 8004186:	6127      	str	r7, [r4, #16]
 8004188:	4640      	mov	r0, r8
 800418a:	b003      	add	sp, #12
 800418c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004190:	2000      	movs	r0, #0
 8004192:	b003      	add	sp, #12
 8004194:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004198 <_dtoa_r>:
 8004198:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800419c:	ec55 4b10 	vmov	r4, r5, d0
 80041a0:	b09b      	sub	sp, #108	; 0x6c
 80041a2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80041a4:	9102      	str	r1, [sp, #8]
 80041a6:	4681      	mov	r9, r0
 80041a8:	9207      	str	r2, [sp, #28]
 80041aa:	9305      	str	r3, [sp, #20]
 80041ac:	e9cd 4500 	strd	r4, r5, [sp]
 80041b0:	b156      	cbz	r6, 80041c8 <_dtoa_r+0x30>
 80041b2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80041b4:	6072      	str	r2, [r6, #4]
 80041b6:	2301      	movs	r3, #1
 80041b8:	4093      	lsls	r3, r2
 80041ba:	60b3      	str	r3, [r6, #8]
 80041bc:	4631      	mov	r1, r6
 80041be:	f001 ff07 	bl	8005fd0 <_Bfree>
 80041c2:	2300      	movs	r3, #0
 80041c4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80041c8:	f1b5 0800 	subs.w	r8, r5, #0
 80041cc:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80041ce:	bfb4      	ite	lt
 80041d0:	2301      	movlt	r3, #1
 80041d2:	2300      	movge	r3, #0
 80041d4:	6013      	str	r3, [r2, #0]
 80041d6:	4b76      	ldr	r3, [pc, #472]	; (80043b0 <_dtoa_r+0x218>)
 80041d8:	bfbc      	itt	lt
 80041da:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80041de:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80041e2:	ea33 0308 	bics.w	r3, r3, r8
 80041e6:	f000 80a6 	beq.w	8004336 <_dtoa_r+0x19e>
 80041ea:	e9dd 6700 	ldrd	r6, r7, [sp]
 80041ee:	2200      	movs	r2, #0
 80041f0:	2300      	movs	r3, #0
 80041f2:	4630      	mov	r0, r6
 80041f4:	4639      	mov	r1, r7
 80041f6:	f7fc ff07 	bl	8001008 <__aeabi_dcmpeq>
 80041fa:	4605      	mov	r5, r0
 80041fc:	b178      	cbz	r0, 800421e <_dtoa_r+0x86>
 80041fe:	9a05      	ldr	r2, [sp, #20]
 8004200:	2301      	movs	r3, #1
 8004202:	6013      	str	r3, [r2, #0]
 8004204:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004206:	2b00      	cmp	r3, #0
 8004208:	f000 80c0 	beq.w	800438c <_dtoa_r+0x1f4>
 800420c:	4b69      	ldr	r3, [pc, #420]	; (80043b4 <_dtoa_r+0x21c>)
 800420e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004210:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004214:	6013      	str	r3, [r2, #0]
 8004216:	4658      	mov	r0, fp
 8004218:	b01b      	add	sp, #108	; 0x6c
 800421a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800421e:	aa18      	add	r2, sp, #96	; 0x60
 8004220:	a919      	add	r1, sp, #100	; 0x64
 8004222:	ec47 6b10 	vmov	d0, r6, r7
 8004226:	4648      	mov	r0, r9
 8004228:	f002 f954 	bl	80064d4 <__d2b>
 800422c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004230:	4682      	mov	sl, r0
 8004232:	f040 80a0 	bne.w	8004376 <_dtoa_r+0x1de>
 8004236:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800423a:	442c      	add	r4, r5
 800423c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004240:	2b20      	cmp	r3, #32
 8004242:	f340 842c 	ble.w	8004a9e <_dtoa_r+0x906>
 8004246:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800424a:	fa08 f803 	lsl.w	r8, r8, r3
 800424e:	9b00      	ldr	r3, [sp, #0]
 8004250:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004254:	fa23 f000 	lsr.w	r0, r3, r0
 8004258:	ea48 0000 	orr.w	r0, r8, r0
 800425c:	f7fc fbf2 	bl	8000a44 <__aeabi_ui2d>
 8004260:	2301      	movs	r3, #1
 8004262:	4606      	mov	r6, r0
 8004264:	3c01      	subs	r4, #1
 8004266:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800426a:	930f      	str	r3, [sp, #60]	; 0x3c
 800426c:	4630      	mov	r0, r6
 800426e:	4639      	mov	r1, r7
 8004270:	2200      	movs	r2, #0
 8004272:	4b51      	ldr	r3, [pc, #324]	; (80043b8 <_dtoa_r+0x220>)
 8004274:	f7fc faa8 	bl	80007c8 <__aeabi_dsub>
 8004278:	a347      	add	r3, pc, #284	; (adr r3, 8004398 <_dtoa_r+0x200>)
 800427a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800427e:	f7fc fc5b 	bl	8000b38 <__aeabi_dmul>
 8004282:	a347      	add	r3, pc, #284	; (adr r3, 80043a0 <_dtoa_r+0x208>)
 8004284:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004288:	f7fc faa0 	bl	80007cc <__adddf3>
 800428c:	4606      	mov	r6, r0
 800428e:	4620      	mov	r0, r4
 8004290:	460f      	mov	r7, r1
 8004292:	f7fc fbe7 	bl	8000a64 <__aeabi_i2d>
 8004296:	a344      	add	r3, pc, #272	; (adr r3, 80043a8 <_dtoa_r+0x210>)
 8004298:	e9d3 2300 	ldrd	r2, r3, [r3]
 800429c:	f7fc fc4c 	bl	8000b38 <__aeabi_dmul>
 80042a0:	4602      	mov	r2, r0
 80042a2:	460b      	mov	r3, r1
 80042a4:	4630      	mov	r0, r6
 80042a6:	4639      	mov	r1, r7
 80042a8:	f7fc fa90 	bl	80007cc <__adddf3>
 80042ac:	4606      	mov	r6, r0
 80042ae:	460f      	mov	r7, r1
 80042b0:	f7fc fef2 	bl	8001098 <__aeabi_d2iz>
 80042b4:	2200      	movs	r2, #0
 80042b6:	9006      	str	r0, [sp, #24]
 80042b8:	2300      	movs	r3, #0
 80042ba:	4630      	mov	r0, r6
 80042bc:	4639      	mov	r1, r7
 80042be:	f7fc fead 	bl	800101c <__aeabi_dcmplt>
 80042c2:	2800      	cmp	r0, #0
 80042c4:	f040 8273 	bne.w	80047ae <_dtoa_r+0x616>
 80042c8:	9e06      	ldr	r6, [sp, #24]
 80042ca:	2e16      	cmp	r6, #22
 80042cc:	f200 825d 	bhi.w	800478a <_dtoa_r+0x5f2>
 80042d0:	4b3a      	ldr	r3, [pc, #232]	; (80043bc <_dtoa_r+0x224>)
 80042d2:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80042d6:	e9d3 0100 	ldrd	r0, r1, [r3]
 80042da:	e9dd 2300 	ldrd	r2, r3, [sp]
 80042de:	f7fc febb 	bl	8001058 <__aeabi_dcmpgt>
 80042e2:	2800      	cmp	r0, #0
 80042e4:	f000 83d7 	beq.w	8004a96 <_dtoa_r+0x8fe>
 80042e8:	1e73      	subs	r3, r6, #1
 80042ea:	9306      	str	r3, [sp, #24]
 80042ec:	2300      	movs	r3, #0
 80042ee:	930d      	str	r3, [sp, #52]	; 0x34
 80042f0:	1b2c      	subs	r4, r5, r4
 80042f2:	f1b4 0801 	subs.w	r8, r4, #1
 80042f6:	f100 8254 	bmi.w	80047a2 <_dtoa_r+0x60a>
 80042fa:	2300      	movs	r3, #0
 80042fc:	9308      	str	r3, [sp, #32]
 80042fe:	9b06      	ldr	r3, [sp, #24]
 8004300:	2b00      	cmp	r3, #0
 8004302:	f2c0 8245 	blt.w	8004790 <_dtoa_r+0x5f8>
 8004306:	4498      	add	r8, r3
 8004308:	930c      	str	r3, [sp, #48]	; 0x30
 800430a:	2300      	movs	r3, #0
 800430c:	930b      	str	r3, [sp, #44]	; 0x2c
 800430e:	9b02      	ldr	r3, [sp, #8]
 8004310:	2b09      	cmp	r3, #9
 8004312:	d85b      	bhi.n	80043cc <_dtoa_r+0x234>
 8004314:	2b05      	cmp	r3, #5
 8004316:	f340 83c0 	ble.w	8004a9a <_dtoa_r+0x902>
 800431a:	3b04      	subs	r3, #4
 800431c:	9302      	str	r3, [sp, #8]
 800431e:	2500      	movs	r5, #0
 8004320:	9b02      	ldr	r3, [sp, #8]
 8004322:	3b02      	subs	r3, #2
 8004324:	2b03      	cmp	r3, #3
 8004326:	f200 8498 	bhi.w	8004c5a <_dtoa_r+0xac2>
 800432a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800432e:	03df      	.short	0x03df
 8004330:	03e803bf 	.word	0x03e803bf
 8004334:	04f5      	.short	0x04f5
 8004336:	9a05      	ldr	r2, [sp, #20]
 8004338:	f242 730f 	movw	r3, #9999	; 0x270f
 800433c:	6013      	str	r3, [r2, #0]
 800433e:	9b00      	ldr	r3, [sp, #0]
 8004340:	b983      	cbnz	r3, 8004364 <_dtoa_r+0x1cc>
 8004342:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004346:	b96b      	cbnz	r3, 8004364 <_dtoa_r+0x1cc>
 8004348:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800434a:	f8df b074 	ldr.w	fp, [pc, #116]	; 80043c0 <_dtoa_r+0x228>
 800434e:	2b00      	cmp	r3, #0
 8004350:	f43f af61 	beq.w	8004216 <_dtoa_r+0x7e>
 8004354:	f10b 0308 	add.w	r3, fp, #8
 8004358:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800435a:	4658      	mov	r0, fp
 800435c:	6013      	str	r3, [r2, #0]
 800435e:	b01b      	add	sp, #108	; 0x6c
 8004360:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004364:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004366:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80043c4 <_dtoa_r+0x22c>
 800436a:	2b00      	cmp	r3, #0
 800436c:	f43f af53 	beq.w	8004216 <_dtoa_r+0x7e>
 8004370:	f10b 0303 	add.w	r3, fp, #3
 8004374:	e7f0      	b.n	8004358 <_dtoa_r+0x1c0>
 8004376:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800437a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800437e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004380:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004384:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004388:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800438a:	e76f      	b.n	800426c <_dtoa_r+0xd4>
 800438c:	f8df b038 	ldr.w	fp, [pc, #56]	; 80043c8 <_dtoa_r+0x230>
 8004390:	4658      	mov	r0, fp
 8004392:	b01b      	add	sp, #108	; 0x6c
 8004394:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004398:	636f4361 	.word	0x636f4361
 800439c:	3fd287a7 	.word	0x3fd287a7
 80043a0:	8b60c8b3 	.word	0x8b60c8b3
 80043a4:	3fc68a28 	.word	0x3fc68a28
 80043a8:	509f79fb 	.word	0x509f79fb
 80043ac:	3fd34413 	.word	0x3fd34413
 80043b0:	7ff00000 	.word	0x7ff00000
 80043b4:	080071ed 	.word	0x080071ed
 80043b8:	3ff80000 	.word	0x3ff80000
 80043bc:	08007248 	.word	0x08007248
 80043c0:	08007210 	.word	0x08007210
 80043c4:	0800721c 	.word	0x0800721c
 80043c8:	080071ec 	.word	0x080071ec
 80043cc:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80043d0:	2501      	movs	r5, #1
 80043d2:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80043d6:	2300      	movs	r3, #0
 80043d8:	9302      	str	r3, [sp, #8]
 80043da:	9307      	str	r3, [sp, #28]
 80043dc:	2100      	movs	r1, #0
 80043de:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80043e2:	940e      	str	r4, [sp, #56]	; 0x38
 80043e4:	4648      	mov	r0, r9
 80043e6:	f001 fdcd 	bl	8005f84 <_Balloc>
 80043ea:	2c0e      	cmp	r4, #14
 80043ec:	4683      	mov	fp, r0
 80043ee:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80043f2:	f200 80fb 	bhi.w	80045ec <_dtoa_r+0x454>
 80043f6:	2d00      	cmp	r5, #0
 80043f8:	f000 80f8 	beq.w	80045ec <_dtoa_r+0x454>
 80043fc:	ed9d 7b00 	vldr	d7, [sp]
 8004400:	9906      	ldr	r1, [sp, #24]
 8004402:	2900      	cmp	r1, #0
 8004404:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004408:	f340 83e5 	ble.w	8004bd6 <_dtoa_r+0xa3e>
 800440c:	4b9d      	ldr	r3, [pc, #628]	; (8004684 <_dtoa_r+0x4ec>)
 800440e:	f001 020f 	and.w	r2, r1, #15
 8004412:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004416:	ed93 7b00 	vldr	d7, [r3]
 800441a:	110c      	asrs	r4, r1, #4
 800441c:	06e2      	lsls	r2, r4, #27
 800441e:	ed8d 7b00 	vstr	d7, [sp]
 8004422:	f140 849e 	bpl.w	8004d62 <_dtoa_r+0xbca>
 8004426:	4b98      	ldr	r3, [pc, #608]	; (8004688 <_dtoa_r+0x4f0>)
 8004428:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800442c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004430:	f7fc fcac 	bl	8000d8c <__aeabi_ddiv>
 8004434:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004438:	f004 040f 	and.w	r4, r4, #15
 800443c:	2603      	movs	r6, #3
 800443e:	b17c      	cbz	r4, 8004460 <_dtoa_r+0x2c8>
 8004440:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004444:	4d90      	ldr	r5, [pc, #576]	; (8004688 <_dtoa_r+0x4f0>)
 8004446:	07e3      	lsls	r3, r4, #31
 8004448:	d504      	bpl.n	8004454 <_dtoa_r+0x2bc>
 800444a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800444e:	f7fc fb73 	bl	8000b38 <__aeabi_dmul>
 8004452:	3601      	adds	r6, #1
 8004454:	1064      	asrs	r4, r4, #1
 8004456:	f105 0508 	add.w	r5, r5, #8
 800445a:	d1f4      	bne.n	8004446 <_dtoa_r+0x2ae>
 800445c:	e9cd 0100 	strd	r0, r1, [sp]
 8004460:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004464:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004468:	f7fc fc90 	bl	8000d8c <__aeabi_ddiv>
 800446c:	e9cd 0100 	strd	r0, r1, [sp]
 8004470:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004472:	b143      	cbz	r3, 8004486 <_dtoa_r+0x2ee>
 8004474:	2200      	movs	r2, #0
 8004476:	4b85      	ldr	r3, [pc, #532]	; (800468c <_dtoa_r+0x4f4>)
 8004478:	e9dd 0100 	ldrd	r0, r1, [sp]
 800447c:	f7fc fdce 	bl	800101c <__aeabi_dcmplt>
 8004480:	2800      	cmp	r0, #0
 8004482:	f040 84ff 	bne.w	8004e84 <_dtoa_r+0xcec>
 8004486:	4630      	mov	r0, r6
 8004488:	f7fc faec 	bl	8000a64 <__aeabi_i2d>
 800448c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004490:	f7fc fb52 	bl	8000b38 <__aeabi_dmul>
 8004494:	4b7e      	ldr	r3, [pc, #504]	; (8004690 <_dtoa_r+0x4f8>)
 8004496:	2200      	movs	r2, #0
 8004498:	f7fc f998 	bl	80007cc <__adddf3>
 800449c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800449e:	4606      	mov	r6, r0
 80044a0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80044a4:	2b00      	cmp	r3, #0
 80044a6:	f000 841c 	beq.w	8004ce2 <_dtoa_r+0xb4a>
 80044aa:	9b06      	ldr	r3, [sp, #24]
 80044ac:	9316      	str	r3, [sp, #88]	; 0x58
 80044ae:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80044b0:	9312      	str	r3, [sp, #72]	; 0x48
 80044b2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044b6:	f7fc fdef 	bl	8001098 <__aeabi_d2iz>
 80044ba:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80044bc:	4b71      	ldr	r3, [pc, #452]	; (8004684 <_dtoa_r+0x4ec>)
 80044be:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80044c2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80044c6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80044ca:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80044ce:	f7fc fac9 	bl	8000a64 <__aeabi_i2d>
 80044d2:	460b      	mov	r3, r1
 80044d4:	4602      	mov	r2, r0
 80044d6:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044da:	e9cd 6700 	strd	r6, r7, [sp]
 80044de:	f7fc f973 	bl	80007c8 <__aeabi_dsub>
 80044e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80044e4:	b2ed      	uxtb	r5, r5
 80044e6:	4606      	mov	r6, r0
 80044e8:	460f      	mov	r7, r1
 80044ea:	f10b 0401 	add.w	r4, fp, #1
 80044ee:	2b00      	cmp	r3, #0
 80044f0:	f000 8458 	beq.w	8004da4 <_dtoa_r+0xc0c>
 80044f4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80044f8:	2000      	movs	r0, #0
 80044fa:	4966      	ldr	r1, [pc, #408]	; (8004694 <_dtoa_r+0x4fc>)
 80044fc:	f7fc fc46 	bl	8000d8c <__aeabi_ddiv>
 8004500:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004504:	f7fc f960 	bl	80007c8 <__aeabi_dsub>
 8004508:	f88b 5000 	strb.w	r5, [fp]
 800450c:	4632      	mov	r2, r6
 800450e:	463b      	mov	r3, r7
 8004510:	e9cd 0100 	strd	r0, r1, [sp]
 8004514:	f7fc fda0 	bl	8001058 <__aeabi_dcmpgt>
 8004518:	2800      	cmp	r0, #0
 800451a:	f040 8502 	bne.w	8004f22 <_dtoa_r+0xd8a>
 800451e:	4632      	mov	r2, r6
 8004520:	463b      	mov	r3, r7
 8004522:	2000      	movs	r0, #0
 8004524:	4959      	ldr	r1, [pc, #356]	; (800468c <_dtoa_r+0x4f4>)
 8004526:	f7fc f94f 	bl	80007c8 <__aeabi_dsub>
 800452a:	4602      	mov	r2, r0
 800452c:	460b      	mov	r3, r1
 800452e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004532:	f7fc fd91 	bl	8001058 <__aeabi_dcmpgt>
 8004536:	2800      	cmp	r0, #0
 8004538:	f040 84fb 	bne.w	8004f32 <_dtoa_r+0xd9a>
 800453c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800453e:	2a01      	cmp	r2, #1
 8004540:	d050      	beq.n	80045e4 <_dtoa_r+0x44c>
 8004542:	445a      	add	r2, fp
 8004544:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004548:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800454c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004550:	4692      	mov	sl, r2
 8004552:	46cb      	mov	fp, r9
 8004554:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004558:	e00c      	b.n	8004574 <_dtoa_r+0x3dc>
 800455a:	2000      	movs	r0, #0
 800455c:	494b      	ldr	r1, [pc, #300]	; (800468c <_dtoa_r+0x4f4>)
 800455e:	f7fc f933 	bl	80007c8 <__aeabi_dsub>
 8004562:	4642      	mov	r2, r8
 8004564:	464b      	mov	r3, r9
 8004566:	f7fc fd59 	bl	800101c <__aeabi_dcmplt>
 800456a:	2800      	cmp	r0, #0
 800456c:	f040 84dc 	bne.w	8004f28 <_dtoa_r+0xd90>
 8004570:	4554      	cmp	r4, sl
 8004572:	d030      	beq.n	80045d6 <_dtoa_r+0x43e>
 8004574:	4640      	mov	r0, r8
 8004576:	4649      	mov	r1, r9
 8004578:	2200      	movs	r2, #0
 800457a:	4b47      	ldr	r3, [pc, #284]	; (8004698 <_dtoa_r+0x500>)
 800457c:	f7fc fadc 	bl	8000b38 <__aeabi_dmul>
 8004580:	2200      	movs	r2, #0
 8004582:	4b45      	ldr	r3, [pc, #276]	; (8004698 <_dtoa_r+0x500>)
 8004584:	4680      	mov	r8, r0
 8004586:	4689      	mov	r9, r1
 8004588:	4630      	mov	r0, r6
 800458a:	4639      	mov	r1, r7
 800458c:	f7fc fad4 	bl	8000b38 <__aeabi_dmul>
 8004590:	460f      	mov	r7, r1
 8004592:	4606      	mov	r6, r0
 8004594:	f7fc fd80 	bl	8001098 <__aeabi_d2iz>
 8004598:	4605      	mov	r5, r0
 800459a:	f7fc fa63 	bl	8000a64 <__aeabi_i2d>
 800459e:	4602      	mov	r2, r0
 80045a0:	460b      	mov	r3, r1
 80045a2:	4630      	mov	r0, r6
 80045a4:	4639      	mov	r1, r7
 80045a6:	f7fc f90f 	bl	80007c8 <__aeabi_dsub>
 80045aa:	3530      	adds	r5, #48	; 0x30
 80045ac:	b2ed      	uxtb	r5, r5
 80045ae:	4642      	mov	r2, r8
 80045b0:	464b      	mov	r3, r9
 80045b2:	f804 5b01 	strb.w	r5, [r4], #1
 80045b6:	4606      	mov	r6, r0
 80045b8:	460f      	mov	r7, r1
 80045ba:	f7fc fd2f 	bl	800101c <__aeabi_dcmplt>
 80045be:	4632      	mov	r2, r6
 80045c0:	463b      	mov	r3, r7
 80045c2:	2800      	cmp	r0, #0
 80045c4:	d0c9      	beq.n	800455a <_dtoa_r+0x3c2>
 80045c6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80045c8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80045cc:	9306      	str	r3, [sp, #24]
 80045ce:	46d9      	mov	r9, fp
 80045d0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80045d4:	e236      	b.n	8004a44 <_dtoa_r+0x8ac>
 80045d6:	46d9      	mov	r9, fp
 80045d8:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80045dc:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80045e0:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80045e4:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80045e8:	e9cd 3400 	strd	r3, r4, [sp]
 80045ec:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80045ee:	2b00      	cmp	r3, #0
 80045f0:	f2c0 80ae 	blt.w	8004750 <_dtoa_r+0x5b8>
 80045f4:	9a06      	ldr	r2, [sp, #24]
 80045f6:	2a0e      	cmp	r2, #14
 80045f8:	f300 80aa 	bgt.w	8004750 <_dtoa_r+0x5b8>
 80045fc:	4b21      	ldr	r3, [pc, #132]	; (8004684 <_dtoa_r+0x4ec>)
 80045fe:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004602:	ed93 7b00 	vldr	d7, [r3]
 8004606:	9b07      	ldr	r3, [sp, #28]
 8004608:	2b00      	cmp	r3, #0
 800460a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800460e:	f2c0 82be 	blt.w	8004b8e <_dtoa_r+0x9f6>
 8004612:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004616:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800461a:	4630      	mov	r0, r6
 800461c:	4639      	mov	r1, r7
 800461e:	f7fc fbb5 	bl	8000d8c <__aeabi_ddiv>
 8004622:	f7fc fd39 	bl	8001098 <__aeabi_d2iz>
 8004626:	4605      	mov	r5, r0
 8004628:	f7fc fa1c 	bl	8000a64 <__aeabi_i2d>
 800462c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004630:	f7fc fa82 	bl	8000b38 <__aeabi_dmul>
 8004634:	460b      	mov	r3, r1
 8004636:	4602      	mov	r2, r0
 8004638:	4639      	mov	r1, r7
 800463a:	4630      	mov	r0, r6
 800463c:	f7fc f8c4 	bl	80007c8 <__aeabi_dsub>
 8004640:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004644:	f88b 3000 	strb.w	r3, [fp]
 8004648:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800464a:	2b01      	cmp	r3, #1
 800464c:	4606      	mov	r6, r0
 800464e:	460f      	mov	r7, r1
 8004650:	f10b 0401 	add.w	r4, fp, #1
 8004654:	d053      	beq.n	80046fe <_dtoa_r+0x566>
 8004656:	2200      	movs	r2, #0
 8004658:	4b0f      	ldr	r3, [pc, #60]	; (8004698 <_dtoa_r+0x500>)
 800465a:	f7fc fa6d 	bl	8000b38 <__aeabi_dmul>
 800465e:	2200      	movs	r2, #0
 8004660:	2300      	movs	r3, #0
 8004662:	4606      	mov	r6, r0
 8004664:	460f      	mov	r7, r1
 8004666:	f7fc fccf 	bl	8001008 <__aeabi_dcmpeq>
 800466a:	2800      	cmp	r0, #0
 800466c:	f040 81ea 	bne.w	8004a44 <_dtoa_r+0x8ac>
 8004670:	f8cd a000 	str.w	sl, [sp]
 8004674:	f8cd 901c 	str.w	r9, [sp, #28]
 8004678:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800467c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004680:	e017      	b.n	80046b2 <_dtoa_r+0x51a>
 8004682:	bf00      	nop
 8004684:	08007248 	.word	0x08007248
 8004688:	08007220 	.word	0x08007220
 800468c:	3ff00000 	.word	0x3ff00000
 8004690:	401c0000 	.word	0x401c0000
 8004694:	3fe00000 	.word	0x3fe00000
 8004698:	40240000 	.word	0x40240000
 800469c:	f7fc fa4c 	bl	8000b38 <__aeabi_dmul>
 80046a0:	2200      	movs	r2, #0
 80046a2:	2300      	movs	r3, #0
 80046a4:	4606      	mov	r6, r0
 80046a6:	460f      	mov	r7, r1
 80046a8:	f7fc fcae 	bl	8001008 <__aeabi_dcmpeq>
 80046ac:	2800      	cmp	r0, #0
 80046ae:	f040 833d 	bne.w	8004d2c <_dtoa_r+0xb94>
 80046b2:	464a      	mov	r2, r9
 80046b4:	4653      	mov	r3, sl
 80046b6:	4630      	mov	r0, r6
 80046b8:	4639      	mov	r1, r7
 80046ba:	f7fc fb67 	bl	8000d8c <__aeabi_ddiv>
 80046be:	f7fc fceb 	bl	8001098 <__aeabi_d2iz>
 80046c2:	4605      	mov	r5, r0
 80046c4:	f7fc f9ce 	bl	8000a64 <__aeabi_i2d>
 80046c8:	464a      	mov	r2, r9
 80046ca:	4653      	mov	r3, sl
 80046cc:	f7fc fa34 	bl	8000b38 <__aeabi_dmul>
 80046d0:	4602      	mov	r2, r0
 80046d2:	460b      	mov	r3, r1
 80046d4:	4630      	mov	r0, r6
 80046d6:	4639      	mov	r1, r7
 80046d8:	f7fc f876 	bl	80007c8 <__aeabi_dsub>
 80046dc:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80046e0:	f804 cb01 	strb.w	ip, [r4], #1
 80046e4:	eba4 0c0b 	sub.w	ip, r4, fp
 80046e8:	45e0      	cmp	r8, ip
 80046ea:	4606      	mov	r6, r0
 80046ec:	460f      	mov	r7, r1
 80046ee:	f04f 0200 	mov.w	r2, #0
 80046f2:	4bc1      	ldr	r3, [pc, #772]	; (80049f8 <_dtoa_r+0x860>)
 80046f4:	d1d2      	bne.n	800469c <_dtoa_r+0x504>
 80046f6:	f8dd a000 	ldr.w	sl, [sp]
 80046fa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80046fe:	4632      	mov	r2, r6
 8004700:	463b      	mov	r3, r7
 8004702:	4630      	mov	r0, r6
 8004704:	4639      	mov	r1, r7
 8004706:	f7fc f861 	bl	80007cc <__adddf3>
 800470a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800470e:	4606      	mov	r6, r0
 8004710:	460f      	mov	r7, r1
 8004712:	f7fc fca1 	bl	8001058 <__aeabi_dcmpgt>
 8004716:	b958      	cbnz	r0, 8004730 <_dtoa_r+0x598>
 8004718:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800471c:	4630      	mov	r0, r6
 800471e:	4639      	mov	r1, r7
 8004720:	f7fc fc72 	bl	8001008 <__aeabi_dcmpeq>
 8004724:	2800      	cmp	r0, #0
 8004726:	f000 818d 	beq.w	8004a44 <_dtoa_r+0x8ac>
 800472a:	07e9      	lsls	r1, r5, #31
 800472c:	f140 818a 	bpl.w	8004a44 <_dtoa_r+0x8ac>
 8004730:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004734:	e005      	b.n	8004742 <_dtoa_r+0x5aa>
 8004736:	459b      	cmp	fp, r3
 8004738:	f000 8373 	beq.w	8004e22 <_dtoa_r+0xc8a>
 800473c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004740:	461c      	mov	r4, r3
 8004742:	2d39      	cmp	r5, #57	; 0x39
 8004744:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004748:	d0f5      	beq.n	8004736 <_dtoa_r+0x59e>
 800474a:	3501      	adds	r5, #1
 800474c:	701d      	strb	r5, [r3, #0]
 800474e:	e179      	b.n	8004a44 <_dtoa_r+0x8ac>
 8004750:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004752:	2a00      	cmp	r2, #0
 8004754:	d03b      	beq.n	80047ce <_dtoa_r+0x636>
 8004756:	9a02      	ldr	r2, [sp, #8]
 8004758:	2a01      	cmp	r2, #1
 800475a:	f340 820b 	ble.w	8004b74 <_dtoa_r+0x9dc>
 800475e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004760:	1e5f      	subs	r7, r3, #1
 8004762:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004764:	42bb      	cmp	r3, r7
 8004766:	f2c0 82e6 	blt.w	8004d36 <_dtoa_r+0xb9e>
 800476a:	1bdf      	subs	r7, r3, r7
 800476c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800476e:	2b00      	cmp	r3, #0
 8004770:	f2c0 830b 	blt.w	8004d8a <_dtoa_r+0xbf2>
 8004774:	9a08      	ldr	r2, [sp, #32]
 8004776:	4614      	mov	r4, r2
 8004778:	441a      	add	r2, r3
 800477a:	4498      	add	r8, r3
 800477c:	9208      	str	r2, [sp, #32]
 800477e:	2101      	movs	r1, #1
 8004780:	4648      	mov	r0, r9
 8004782:	f001 fcbf 	bl	8006104 <__i2b>
 8004786:	4605      	mov	r5, r0
 8004788:	e024      	b.n	80047d4 <_dtoa_r+0x63c>
 800478a:	2301      	movs	r3, #1
 800478c:	930d      	str	r3, [sp, #52]	; 0x34
 800478e:	e5af      	b.n	80042f0 <_dtoa_r+0x158>
 8004790:	9a08      	ldr	r2, [sp, #32]
 8004792:	9b06      	ldr	r3, [sp, #24]
 8004794:	1ad2      	subs	r2, r2, r3
 8004796:	425b      	negs	r3, r3
 8004798:	930b      	str	r3, [sp, #44]	; 0x2c
 800479a:	2300      	movs	r3, #0
 800479c:	9208      	str	r2, [sp, #32]
 800479e:	930c      	str	r3, [sp, #48]	; 0x30
 80047a0:	e5b5      	b.n	800430e <_dtoa_r+0x176>
 80047a2:	f1c4 0301 	rsb	r3, r4, #1
 80047a6:	9308      	str	r3, [sp, #32]
 80047a8:	f04f 0800 	mov.w	r8, #0
 80047ac:	e5a7      	b.n	80042fe <_dtoa_r+0x166>
 80047ae:	f8dd 8018 	ldr.w	r8, [sp, #24]
 80047b2:	4640      	mov	r0, r8
 80047b4:	f7fc f956 	bl	8000a64 <__aeabi_i2d>
 80047b8:	4632      	mov	r2, r6
 80047ba:	463b      	mov	r3, r7
 80047bc:	f7fc fc24 	bl	8001008 <__aeabi_dcmpeq>
 80047c0:	2800      	cmp	r0, #0
 80047c2:	f47f ad81 	bne.w	80042c8 <_dtoa_r+0x130>
 80047c6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80047ca:	9306      	str	r3, [sp, #24]
 80047cc:	e57c      	b.n	80042c8 <_dtoa_r+0x130>
 80047ce:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80047d0:	9c08      	ldr	r4, [sp, #32]
 80047d2:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80047d4:	2c00      	cmp	r4, #0
 80047d6:	dd0c      	ble.n	80047f2 <_dtoa_r+0x65a>
 80047d8:	f1b8 0f00 	cmp.w	r8, #0
 80047dc:	dd09      	ble.n	80047f2 <_dtoa_r+0x65a>
 80047de:	4544      	cmp	r4, r8
 80047e0:	9a08      	ldr	r2, [sp, #32]
 80047e2:	4623      	mov	r3, r4
 80047e4:	bfa8      	it	ge
 80047e6:	4643      	movge	r3, r8
 80047e8:	1ad2      	subs	r2, r2, r3
 80047ea:	9208      	str	r2, [sp, #32]
 80047ec:	1ae4      	subs	r4, r4, r3
 80047ee:	eba8 0803 	sub.w	r8, r8, r3
 80047f2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80047f4:	b16b      	cbz	r3, 8004812 <_dtoa_r+0x67a>
 80047f6:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80047f8:	2a00      	cmp	r2, #0
 80047fa:	f000 8290 	beq.w	8004d1e <_dtoa_r+0xb86>
 80047fe:	1bde      	subs	r6, r3, r7
 8004800:	2f00      	cmp	r7, #0
 8004802:	f040 819b 	bne.w	8004b3c <_dtoa_r+0x9a4>
 8004806:	4651      	mov	r1, sl
 8004808:	4632      	mov	r2, r6
 800480a:	4648      	mov	r0, r9
 800480c:	f001 fd2a 	bl	8006264 <__pow5mult>
 8004810:	4682      	mov	sl, r0
 8004812:	2101      	movs	r1, #1
 8004814:	4648      	mov	r0, r9
 8004816:	f001 fc75 	bl	8006104 <__i2b>
 800481a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800481c:	4606      	mov	r6, r0
 800481e:	2a00      	cmp	r2, #0
 8004820:	f040 8125 	bne.w	8004a6e <_dtoa_r+0x8d6>
 8004824:	9b02      	ldr	r3, [sp, #8]
 8004826:	2b01      	cmp	r3, #1
 8004828:	f340 816c 	ble.w	8004b04 <_dtoa_r+0x96c>
 800482c:	2001      	movs	r0, #1
 800482e:	4440      	add	r0, r8
 8004830:	f010 001f 	ands.w	r0, r0, #31
 8004834:	f000 8119 	beq.w	8004a6a <_dtoa_r+0x8d2>
 8004838:	f1c0 0320 	rsb	r3, r0, #32
 800483c:	2b04      	cmp	r3, #4
 800483e:	f340 83ac 	ble.w	8004f9a <_dtoa_r+0xe02>
 8004842:	f1c0 001c 	rsb	r0, r0, #28
 8004846:	9b08      	ldr	r3, [sp, #32]
 8004848:	4403      	add	r3, r0
 800484a:	9308      	str	r3, [sp, #32]
 800484c:	4404      	add	r4, r0
 800484e:	4480      	add	r8, r0
 8004850:	9b08      	ldr	r3, [sp, #32]
 8004852:	2b00      	cmp	r3, #0
 8004854:	dd05      	ble.n	8004862 <_dtoa_r+0x6ca>
 8004856:	4651      	mov	r1, sl
 8004858:	461a      	mov	r2, r3
 800485a:	4648      	mov	r0, r9
 800485c:	f001 fd52 	bl	8006304 <__lshift>
 8004860:	4682      	mov	sl, r0
 8004862:	f1b8 0f00 	cmp.w	r8, #0
 8004866:	dd05      	ble.n	8004874 <_dtoa_r+0x6dc>
 8004868:	4631      	mov	r1, r6
 800486a:	4642      	mov	r2, r8
 800486c:	4648      	mov	r0, r9
 800486e:	f001 fd49 	bl	8006304 <__lshift>
 8004872:	4606      	mov	r6, r0
 8004874:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004876:	2b00      	cmp	r3, #0
 8004878:	d177      	bne.n	800496a <_dtoa_r+0x7d2>
 800487a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800487c:	2b00      	cmp	r3, #0
 800487e:	f340 8209 	ble.w	8004c94 <_dtoa_r+0xafc>
 8004882:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004884:	2b00      	cmp	r3, #0
 8004886:	f000 8089 	beq.w	800499c <_dtoa_r+0x804>
 800488a:	2c00      	cmp	r4, #0
 800488c:	f300 816b 	bgt.w	8004b66 <_dtoa_r+0x9ce>
 8004890:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004892:	2b00      	cmp	r3, #0
 8004894:	f040 81cd 	bne.w	8004c32 <_dtoa_r+0xa9a>
 8004898:	46a8      	mov	r8, r5
 800489a:	9a00      	ldr	r2, [sp, #0]
 800489c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 80048a0:	f002 0201 	and.w	r2, r2, #1
 80048a4:	920a      	str	r2, [sp, #40]	; 0x28
 80048a6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80048a8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 80048ac:	441a      	add	r2, r3
 80048ae:	465f      	mov	r7, fp
 80048b0:	9209      	str	r2, [sp, #36]	; 0x24
 80048b2:	46b3      	mov	fp, r6
 80048b4:	4659      	mov	r1, fp
 80048b6:	4650      	mov	r0, sl
 80048b8:	f7ff fbdc 	bl	8004074 <quorem>
 80048bc:	4629      	mov	r1, r5
 80048be:	4604      	mov	r4, r0
 80048c0:	4650      	mov	r0, sl
 80048c2:	f001 fd75 	bl	80063b0 <__mcmp>
 80048c6:	4659      	mov	r1, fp
 80048c8:	4606      	mov	r6, r0
 80048ca:	4642      	mov	r2, r8
 80048cc:	4648      	mov	r0, r9
 80048ce:	f001 fd8b 	bl	80063e8 <__mdiff>
 80048d2:	f104 0330 	add.w	r3, r4, #48	; 0x30
 80048d6:	9300      	str	r3, [sp, #0]
 80048d8:	68c3      	ldr	r3, [r0, #12]
 80048da:	4601      	mov	r1, r0
 80048dc:	2b00      	cmp	r3, #0
 80048de:	f040 81d4 	bne.w	8004c8a <_dtoa_r+0xaf2>
 80048e2:	9008      	str	r0, [sp, #32]
 80048e4:	4650      	mov	r0, sl
 80048e6:	f001 fd63 	bl	80063b0 <__mcmp>
 80048ea:	9a08      	ldr	r2, [sp, #32]
 80048ec:	9007      	str	r0, [sp, #28]
 80048ee:	4611      	mov	r1, r2
 80048f0:	4648      	mov	r0, r9
 80048f2:	f001 fb6d 	bl	8005fd0 <_Bfree>
 80048f6:	9b07      	ldr	r3, [sp, #28]
 80048f8:	b933      	cbnz	r3, 8004908 <_dtoa_r+0x770>
 80048fa:	9a02      	ldr	r2, [sp, #8]
 80048fc:	b922      	cbnz	r2, 8004908 <_dtoa_r+0x770>
 80048fe:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004900:	2b00      	cmp	r3, #0
 8004902:	f000 8319 	beq.w	8004f38 <_dtoa_r+0xda0>
 8004906:	9b02      	ldr	r3, [sp, #8]
 8004908:	2e00      	cmp	r6, #0
 800490a:	f2c0 821c 	blt.w	8004d46 <_dtoa_r+0xbae>
 800490e:	d105      	bne.n	800491c <_dtoa_r+0x784>
 8004910:	9a02      	ldr	r2, [sp, #8]
 8004912:	b91a      	cbnz	r2, 800491c <_dtoa_r+0x784>
 8004914:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004916:	2a00      	cmp	r2, #0
 8004918:	f000 8215 	beq.w	8004d46 <_dtoa_r+0xbae>
 800491c:	2b00      	cmp	r3, #0
 800491e:	f107 0401 	add.w	r4, r7, #1
 8004922:	f300 8225 	bgt.w	8004d70 <_dtoa_r+0xbd8>
 8004926:	9b00      	ldr	r3, [sp, #0]
 8004928:	703b      	strb	r3, [r7, #0]
 800492a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800492c:	42bb      	cmp	r3, r7
 800492e:	f000 8230 	beq.w	8004d92 <_dtoa_r+0xbfa>
 8004932:	4651      	mov	r1, sl
 8004934:	2300      	movs	r3, #0
 8004936:	220a      	movs	r2, #10
 8004938:	4648      	mov	r0, r9
 800493a:	f001 fb53 	bl	8005fe4 <__multadd>
 800493e:	4545      	cmp	r5, r8
 8004940:	4682      	mov	sl, r0
 8004942:	4629      	mov	r1, r5
 8004944:	f04f 0300 	mov.w	r3, #0
 8004948:	f04f 020a 	mov.w	r2, #10
 800494c:	4648      	mov	r0, r9
 800494e:	f000 8196 	beq.w	8004c7e <_dtoa_r+0xae6>
 8004952:	f001 fb47 	bl	8005fe4 <__multadd>
 8004956:	4641      	mov	r1, r8
 8004958:	4605      	mov	r5, r0
 800495a:	2300      	movs	r3, #0
 800495c:	220a      	movs	r2, #10
 800495e:	4648      	mov	r0, r9
 8004960:	f001 fb40 	bl	8005fe4 <__multadd>
 8004964:	4627      	mov	r7, r4
 8004966:	4680      	mov	r8, r0
 8004968:	e7a4      	b.n	80048b4 <_dtoa_r+0x71c>
 800496a:	4631      	mov	r1, r6
 800496c:	4650      	mov	r0, sl
 800496e:	f001 fd1f 	bl	80063b0 <__mcmp>
 8004972:	2800      	cmp	r0, #0
 8004974:	da81      	bge.n	800487a <_dtoa_r+0x6e2>
 8004976:	9f06      	ldr	r7, [sp, #24]
 8004978:	4651      	mov	r1, sl
 800497a:	2300      	movs	r3, #0
 800497c:	220a      	movs	r2, #10
 800497e:	4648      	mov	r0, r9
 8004980:	3f01      	subs	r7, #1
 8004982:	9706      	str	r7, [sp, #24]
 8004984:	f001 fb2e 	bl	8005fe4 <__multadd>
 8004988:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800498a:	4682      	mov	sl, r0
 800498c:	2b00      	cmp	r3, #0
 800498e:	f040 82eb 	bne.w	8004f68 <_dtoa_r+0xdd0>
 8004992:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004994:	2b00      	cmp	r3, #0
 8004996:	f340 82f3 	ble.w	8004f80 <_dtoa_r+0xde8>
 800499a:	9309      	str	r3, [sp, #36]	; 0x24
 800499c:	465c      	mov	r4, fp
 800499e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80049a2:	e002      	b.n	80049aa <_dtoa_r+0x812>
 80049a4:	f001 fb1e 	bl	8005fe4 <__multadd>
 80049a8:	4682      	mov	sl, r0
 80049aa:	4631      	mov	r1, r6
 80049ac:	4650      	mov	r0, sl
 80049ae:	f7ff fb61 	bl	8004074 <quorem>
 80049b2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 80049b6:	f804 7b01 	strb.w	r7, [r4], #1
 80049ba:	eba4 030b 	sub.w	r3, r4, fp
 80049be:	4598      	cmp	r8, r3
 80049c0:	f04f 020a 	mov.w	r2, #10
 80049c4:	f04f 0300 	mov.w	r3, #0
 80049c8:	4651      	mov	r1, sl
 80049ca:	4648      	mov	r0, r9
 80049cc:	dcea      	bgt.n	80049a4 <_dtoa_r+0x80c>
 80049ce:	2300      	movs	r3, #0
 80049d0:	9700      	str	r7, [sp, #0]
 80049d2:	9302      	str	r3, [sp, #8]
 80049d4:	4651      	mov	r1, sl
 80049d6:	2201      	movs	r2, #1
 80049d8:	4648      	mov	r0, r9
 80049da:	f001 fc93 	bl	8006304 <__lshift>
 80049de:	4631      	mov	r1, r6
 80049e0:	4682      	mov	sl, r0
 80049e2:	f001 fce5 	bl	80063b0 <__mcmp>
 80049e6:	2800      	cmp	r0, #0
 80049e8:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 80049ec:	dc14      	bgt.n	8004a18 <_dtoa_r+0x880>
 80049ee:	d108      	bne.n	8004a02 <_dtoa_r+0x86a>
 80049f0:	9b00      	ldr	r3, [sp, #0]
 80049f2:	07db      	lsls	r3, r3, #31
 80049f4:	d410      	bmi.n	8004a18 <_dtoa_r+0x880>
 80049f6:	e004      	b.n	8004a02 <_dtoa_r+0x86a>
 80049f8:	40240000 	.word	0x40240000
 80049fc:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004a00:	461c      	mov	r4, r3
 8004a02:	2a30      	cmp	r2, #48	; 0x30
 8004a04:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a08:	d0f8      	beq.n	80049fc <_dtoa_r+0x864>
 8004a0a:	e00b      	b.n	8004a24 <_dtoa_r+0x88c>
 8004a0c:	459b      	cmp	fp, r3
 8004a0e:	f000 814e 	beq.w	8004cae <_dtoa_r+0xb16>
 8004a12:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004a16:	461c      	mov	r4, r3
 8004a18:	2a39      	cmp	r2, #57	; 0x39
 8004a1a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a1e:	d0f5      	beq.n	8004a0c <_dtoa_r+0x874>
 8004a20:	3201      	adds	r2, #1
 8004a22:	701a      	strb	r2, [r3, #0]
 8004a24:	4631      	mov	r1, r6
 8004a26:	4648      	mov	r0, r9
 8004a28:	f001 fad2 	bl	8005fd0 <_Bfree>
 8004a2c:	b155      	cbz	r5, 8004a44 <_dtoa_r+0x8ac>
 8004a2e:	9902      	ldr	r1, [sp, #8]
 8004a30:	b121      	cbz	r1, 8004a3c <_dtoa_r+0x8a4>
 8004a32:	42a9      	cmp	r1, r5
 8004a34:	d002      	beq.n	8004a3c <_dtoa_r+0x8a4>
 8004a36:	4648      	mov	r0, r9
 8004a38:	f001 faca 	bl	8005fd0 <_Bfree>
 8004a3c:	4629      	mov	r1, r5
 8004a3e:	4648      	mov	r0, r9
 8004a40:	f001 fac6 	bl	8005fd0 <_Bfree>
 8004a44:	4651      	mov	r1, sl
 8004a46:	4648      	mov	r0, r9
 8004a48:	f001 fac2 	bl	8005fd0 <_Bfree>
 8004a4c:	2200      	movs	r2, #0
 8004a4e:	9b06      	ldr	r3, [sp, #24]
 8004a50:	7022      	strb	r2, [r4, #0]
 8004a52:	9a05      	ldr	r2, [sp, #20]
 8004a54:	3301      	adds	r3, #1
 8004a56:	6013      	str	r3, [r2, #0]
 8004a58:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004a5a:	2b00      	cmp	r3, #0
 8004a5c:	f43f abdb 	beq.w	8004216 <_dtoa_r+0x7e>
 8004a60:	4658      	mov	r0, fp
 8004a62:	601c      	str	r4, [r3, #0]
 8004a64:	b01b      	add	sp, #108	; 0x6c
 8004a66:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004a6a:	201c      	movs	r0, #28
 8004a6c:	e6eb      	b.n	8004846 <_dtoa_r+0x6ae>
 8004a6e:	4601      	mov	r1, r0
 8004a70:	4648      	mov	r0, r9
 8004a72:	f001 fbf7 	bl	8006264 <__pow5mult>
 8004a76:	9b02      	ldr	r3, [sp, #8]
 8004a78:	2b01      	cmp	r3, #1
 8004a7a:	4606      	mov	r6, r0
 8004a7c:	f340 80d4 	ble.w	8004c28 <_dtoa_r+0xa90>
 8004a80:	2300      	movs	r3, #0
 8004a82:	930c      	str	r3, [sp, #48]	; 0x30
 8004a84:	6933      	ldr	r3, [r6, #16]
 8004a86:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004a8a:	6918      	ldr	r0, [r3, #16]
 8004a8c:	f001 faea 	bl	8006064 <__hi0bits>
 8004a90:	f1c0 0020 	rsb	r0, r0, #32
 8004a94:	e6cb      	b.n	800482e <_dtoa_r+0x696>
 8004a96:	900d      	str	r0, [sp, #52]	; 0x34
 8004a98:	e42a      	b.n	80042f0 <_dtoa_r+0x158>
 8004a9a:	2501      	movs	r5, #1
 8004a9c:	e440      	b.n	8004320 <_dtoa_r+0x188>
 8004a9e:	f1c3 0820 	rsb	r8, r3, #32
 8004aa2:	9b00      	ldr	r3, [sp, #0]
 8004aa4:	fa03 f008 	lsl.w	r0, r3, r8
 8004aa8:	f7ff bbd8 	b.w	800425c <_dtoa_r+0xc4>
 8004aac:	2300      	movs	r3, #0
 8004aae:	930a      	str	r3, [sp, #40]	; 0x28
 8004ab0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004ab4:	4413      	add	r3, r2
 8004ab6:	930e      	str	r3, [sp, #56]	; 0x38
 8004ab8:	3301      	adds	r3, #1
 8004aba:	2b01      	cmp	r3, #1
 8004abc:	461e      	mov	r6, r3
 8004abe:	9309      	str	r3, [sp, #36]	; 0x24
 8004ac0:	bfb8      	it	lt
 8004ac2:	2601      	movlt	r6, #1
 8004ac4:	2100      	movs	r1, #0
 8004ac6:	2e17      	cmp	r6, #23
 8004ac8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004acc:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004ace:	f77f ac89 	ble.w	80043e4 <_dtoa_r+0x24c>
 8004ad2:	2201      	movs	r2, #1
 8004ad4:	2304      	movs	r3, #4
 8004ad6:	005b      	lsls	r3, r3, #1
 8004ad8:	f103 0014 	add.w	r0, r3, #20
 8004adc:	42b0      	cmp	r0, r6
 8004ade:	4611      	mov	r1, r2
 8004ae0:	f102 0201 	add.w	r2, r2, #1
 8004ae4:	d9f7      	bls.n	8004ad6 <_dtoa_r+0x93e>
 8004ae6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004aea:	e47b      	b.n	80043e4 <_dtoa_r+0x24c>
 8004aec:	2300      	movs	r3, #0
 8004aee:	930a      	str	r3, [sp, #40]	; 0x28
 8004af0:	9e07      	ldr	r6, [sp, #28]
 8004af2:	2e00      	cmp	r6, #0
 8004af4:	f340 80e2 	ble.w	8004cbc <_dtoa_r+0xb24>
 8004af8:	960e      	str	r6, [sp, #56]	; 0x38
 8004afa:	9609      	str	r6, [sp, #36]	; 0x24
 8004afc:	e7e2      	b.n	8004ac4 <_dtoa_r+0x92c>
 8004afe:	2301      	movs	r3, #1
 8004b00:	930a      	str	r3, [sp, #40]	; 0x28
 8004b02:	e7f5      	b.n	8004af0 <_dtoa_r+0x958>
 8004b04:	9b00      	ldr	r3, [sp, #0]
 8004b06:	2b00      	cmp	r3, #0
 8004b08:	f47f ae90 	bne.w	800482c <_dtoa_r+0x694>
 8004b0c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004b10:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004b14:	2b00      	cmp	r3, #0
 8004b16:	f040 8192 	bne.w	8004e3e <_dtoa_r+0xca6>
 8004b1a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004b1e:	0d1b      	lsrs	r3, r3, #20
 8004b20:	051b      	lsls	r3, r3, #20
 8004b22:	b12b      	cbz	r3, 8004b30 <_dtoa_r+0x998>
 8004b24:	9b08      	ldr	r3, [sp, #32]
 8004b26:	3301      	adds	r3, #1
 8004b28:	9308      	str	r3, [sp, #32]
 8004b2a:	f108 0801 	add.w	r8, r8, #1
 8004b2e:	2301      	movs	r3, #1
 8004b30:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b32:	930c      	str	r3, [sp, #48]	; 0x30
 8004b34:	2a00      	cmp	r2, #0
 8004b36:	f43f ae79 	beq.w	800482c <_dtoa_r+0x694>
 8004b3a:	e7a3      	b.n	8004a84 <_dtoa_r+0x8ec>
 8004b3c:	463a      	mov	r2, r7
 8004b3e:	4629      	mov	r1, r5
 8004b40:	4648      	mov	r0, r9
 8004b42:	f001 fb8f 	bl	8006264 <__pow5mult>
 8004b46:	4652      	mov	r2, sl
 8004b48:	4601      	mov	r1, r0
 8004b4a:	4605      	mov	r5, r0
 8004b4c:	4648      	mov	r0, r9
 8004b4e:	f001 fae3 	bl	8006118 <__multiply>
 8004b52:	4651      	mov	r1, sl
 8004b54:	4607      	mov	r7, r0
 8004b56:	4648      	mov	r0, r9
 8004b58:	f001 fa3a 	bl	8005fd0 <_Bfree>
 8004b5c:	46ba      	mov	sl, r7
 8004b5e:	2e00      	cmp	r6, #0
 8004b60:	f43f ae57 	beq.w	8004812 <_dtoa_r+0x67a>
 8004b64:	e64f      	b.n	8004806 <_dtoa_r+0x66e>
 8004b66:	4629      	mov	r1, r5
 8004b68:	4622      	mov	r2, r4
 8004b6a:	4648      	mov	r0, r9
 8004b6c:	f001 fbca 	bl	8006304 <__lshift>
 8004b70:	4605      	mov	r5, r0
 8004b72:	e68d      	b.n	8004890 <_dtoa_r+0x6f8>
 8004b74:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004b76:	2a00      	cmp	r2, #0
 8004b78:	f000 815d 	beq.w	8004e36 <_dtoa_r+0xc9e>
 8004b7c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004b80:	9a08      	ldr	r2, [sp, #32]
 8004b82:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004b84:	4614      	mov	r4, r2
 8004b86:	441a      	add	r2, r3
 8004b88:	4498      	add	r8, r3
 8004b8a:	9208      	str	r2, [sp, #32]
 8004b8c:	e5f7      	b.n	800477e <_dtoa_r+0x5e6>
 8004b8e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b90:	2b00      	cmp	r3, #0
 8004b92:	f73f ad3e 	bgt.w	8004612 <_dtoa_r+0x47a>
 8004b96:	f040 80bc 	bne.w	8004d12 <_dtoa_r+0xb7a>
 8004b9a:	ec51 0b17 	vmov	r0, r1, d7
 8004b9e:	2200      	movs	r2, #0
 8004ba0:	4bb2      	ldr	r3, [pc, #712]	; (8004e6c <_dtoa_r+0xcd4>)
 8004ba2:	f7fb ffc9 	bl	8000b38 <__aeabi_dmul>
 8004ba6:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004baa:	f7fc fa4b 	bl	8001044 <__aeabi_dcmpge>
 8004bae:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004bb0:	4635      	mov	r5, r6
 8004bb2:	2800      	cmp	r0, #0
 8004bb4:	d176      	bne.n	8004ca4 <_dtoa_r+0xb0c>
 8004bb6:	9a06      	ldr	r2, [sp, #24]
 8004bb8:	2331      	movs	r3, #49	; 0x31
 8004bba:	3201      	adds	r2, #1
 8004bbc:	9206      	str	r2, [sp, #24]
 8004bbe:	f88b 3000 	strb.w	r3, [fp]
 8004bc2:	f10b 0401 	add.w	r4, fp, #1
 8004bc6:	4631      	mov	r1, r6
 8004bc8:	4648      	mov	r0, r9
 8004bca:	f001 fa01 	bl	8005fd0 <_Bfree>
 8004bce:	2d00      	cmp	r5, #0
 8004bd0:	f47f af34 	bne.w	8004a3c <_dtoa_r+0x8a4>
 8004bd4:	e736      	b.n	8004a44 <_dtoa_r+0x8ac>
 8004bd6:	f000 8142 	beq.w	8004e5e <_dtoa_r+0xcc6>
 8004bda:	9b06      	ldr	r3, [sp, #24]
 8004bdc:	425c      	negs	r4, r3
 8004bde:	4ba4      	ldr	r3, [pc, #656]	; (8004e70 <_dtoa_r+0xcd8>)
 8004be0:	f004 020f 	and.w	r2, r4, #15
 8004be4:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004be8:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004bec:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004bf0:	f7fb ffa2 	bl	8000b38 <__aeabi_dmul>
 8004bf4:	1124      	asrs	r4, r4, #4
 8004bf6:	e9cd 0100 	strd	r0, r1, [sp]
 8004bfa:	f000 81c6 	beq.w	8004f8a <_dtoa_r+0xdf2>
 8004bfe:	4d9d      	ldr	r5, [pc, #628]	; (8004e74 <_dtoa_r+0xcdc>)
 8004c00:	2300      	movs	r3, #0
 8004c02:	2602      	movs	r6, #2
 8004c04:	07e7      	lsls	r7, r4, #31
 8004c06:	d505      	bpl.n	8004c14 <_dtoa_r+0xa7c>
 8004c08:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004c0c:	f7fb ff94 	bl	8000b38 <__aeabi_dmul>
 8004c10:	3601      	adds	r6, #1
 8004c12:	2301      	movs	r3, #1
 8004c14:	1064      	asrs	r4, r4, #1
 8004c16:	f105 0508 	add.w	r5, r5, #8
 8004c1a:	d1f3      	bne.n	8004c04 <_dtoa_r+0xa6c>
 8004c1c:	2b00      	cmp	r3, #0
 8004c1e:	f43f ac27 	beq.w	8004470 <_dtoa_r+0x2d8>
 8004c22:	e9cd 0100 	strd	r0, r1, [sp]
 8004c26:	e423      	b.n	8004470 <_dtoa_r+0x2d8>
 8004c28:	9b00      	ldr	r3, [sp, #0]
 8004c2a:	2b00      	cmp	r3, #0
 8004c2c:	f43f af6e 	beq.w	8004b0c <_dtoa_r+0x974>
 8004c30:	e726      	b.n	8004a80 <_dtoa_r+0x8e8>
 8004c32:	6869      	ldr	r1, [r5, #4]
 8004c34:	4648      	mov	r0, r9
 8004c36:	f001 f9a5 	bl	8005f84 <_Balloc>
 8004c3a:	692b      	ldr	r3, [r5, #16]
 8004c3c:	3302      	adds	r3, #2
 8004c3e:	009a      	lsls	r2, r3, #2
 8004c40:	4604      	mov	r4, r0
 8004c42:	f105 010c 	add.w	r1, r5, #12
 8004c46:	300c      	adds	r0, #12
 8004c48:	f7fb fc5a 	bl	8000500 <memcpy>
 8004c4c:	4621      	mov	r1, r4
 8004c4e:	2201      	movs	r2, #1
 8004c50:	4648      	mov	r0, r9
 8004c52:	f001 fb57 	bl	8006304 <__lshift>
 8004c56:	4680      	mov	r8, r0
 8004c58:	e61f      	b.n	800489a <_dtoa_r+0x702>
 8004c5a:	2400      	movs	r4, #0
 8004c5c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004c60:	4621      	mov	r1, r4
 8004c62:	4648      	mov	r0, r9
 8004c64:	f001 f98e 	bl	8005f84 <_Balloc>
 8004c68:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004c6c:	930e      	str	r3, [sp, #56]	; 0x38
 8004c6e:	9309      	str	r3, [sp, #36]	; 0x24
 8004c70:	2301      	movs	r3, #1
 8004c72:	4683      	mov	fp, r0
 8004c74:	9407      	str	r4, [sp, #28]
 8004c76:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004c7a:	930a      	str	r3, [sp, #40]	; 0x28
 8004c7c:	e4b6      	b.n	80045ec <_dtoa_r+0x454>
 8004c7e:	f001 f9b1 	bl	8005fe4 <__multadd>
 8004c82:	4627      	mov	r7, r4
 8004c84:	4605      	mov	r5, r0
 8004c86:	4680      	mov	r8, r0
 8004c88:	e614      	b.n	80048b4 <_dtoa_r+0x71c>
 8004c8a:	4648      	mov	r0, r9
 8004c8c:	f001 f9a0 	bl	8005fd0 <_Bfree>
 8004c90:	2301      	movs	r3, #1
 8004c92:	e639      	b.n	8004908 <_dtoa_r+0x770>
 8004c94:	9b02      	ldr	r3, [sp, #8]
 8004c96:	2b02      	cmp	r3, #2
 8004c98:	f77f adf3 	ble.w	8004882 <_dtoa_r+0x6ea>
 8004c9c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c9e:	2b00      	cmp	r3, #0
 8004ca0:	f000 80cf 	beq.w	8004e42 <_dtoa_r+0xcaa>
 8004ca4:	9b07      	ldr	r3, [sp, #28]
 8004ca6:	43db      	mvns	r3, r3
 8004ca8:	9306      	str	r3, [sp, #24]
 8004caa:	465c      	mov	r4, fp
 8004cac:	e78b      	b.n	8004bc6 <_dtoa_r+0xa2e>
 8004cae:	9a06      	ldr	r2, [sp, #24]
 8004cb0:	2331      	movs	r3, #49	; 0x31
 8004cb2:	3201      	adds	r2, #1
 8004cb4:	9206      	str	r2, [sp, #24]
 8004cb6:	f88b 3000 	strb.w	r3, [fp]
 8004cba:	e6b3      	b.n	8004a24 <_dtoa_r+0x88c>
 8004cbc:	2401      	movs	r4, #1
 8004cbe:	9409      	str	r4, [sp, #36]	; 0x24
 8004cc0:	9407      	str	r4, [sp, #28]
 8004cc2:	f7ff bb8b 	b.w	80043dc <_dtoa_r+0x244>
 8004cc6:	4630      	mov	r0, r6
 8004cc8:	f7fb fecc 	bl	8000a64 <__aeabi_i2d>
 8004ccc:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004cd0:	f7fb ff32 	bl	8000b38 <__aeabi_dmul>
 8004cd4:	2200      	movs	r2, #0
 8004cd6:	4b68      	ldr	r3, [pc, #416]	; (8004e78 <_dtoa_r+0xce0>)
 8004cd8:	f7fb fd78 	bl	80007cc <__adddf3>
 8004cdc:	4606      	mov	r6, r0
 8004cde:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004ce2:	2200      	movs	r2, #0
 8004ce4:	4b61      	ldr	r3, [pc, #388]	; (8004e6c <_dtoa_r+0xcd4>)
 8004ce6:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004cea:	f7fb fd6d 	bl	80007c8 <__aeabi_dsub>
 8004cee:	4632      	mov	r2, r6
 8004cf0:	463b      	mov	r3, r7
 8004cf2:	4604      	mov	r4, r0
 8004cf4:	460d      	mov	r5, r1
 8004cf6:	f7fc f9af 	bl	8001058 <__aeabi_dcmpgt>
 8004cfa:	2800      	cmp	r0, #0
 8004cfc:	d14f      	bne.n	8004d9e <_dtoa_r+0xc06>
 8004cfe:	4632      	mov	r2, r6
 8004d00:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004d04:	4620      	mov	r0, r4
 8004d06:	4629      	mov	r1, r5
 8004d08:	f7fc f988 	bl	800101c <__aeabi_dcmplt>
 8004d0c:	2800      	cmp	r0, #0
 8004d0e:	f43f ac69 	beq.w	80045e4 <_dtoa_r+0x44c>
 8004d12:	2600      	movs	r6, #0
 8004d14:	4635      	mov	r5, r6
 8004d16:	e7c5      	b.n	8004ca4 <_dtoa_r+0xb0c>
 8004d18:	2301      	movs	r3, #1
 8004d1a:	930a      	str	r3, [sp, #40]	; 0x28
 8004d1c:	e6c8      	b.n	8004ab0 <_dtoa_r+0x918>
 8004d1e:	4651      	mov	r1, sl
 8004d20:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004d22:	4648      	mov	r0, r9
 8004d24:	f001 fa9e 	bl	8006264 <__pow5mult>
 8004d28:	4682      	mov	sl, r0
 8004d2a:	e572      	b.n	8004812 <_dtoa_r+0x67a>
 8004d2c:	f8dd a000 	ldr.w	sl, [sp]
 8004d30:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004d34:	e686      	b.n	8004a44 <_dtoa_r+0x8ac>
 8004d36:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004d38:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004d3a:	1afb      	subs	r3, r7, r3
 8004d3c:	441a      	add	r2, r3
 8004d3e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004d42:	2700      	movs	r7, #0
 8004d44:	e512      	b.n	800476c <_dtoa_r+0x5d4>
 8004d46:	2b00      	cmp	r3, #0
 8004d48:	9402      	str	r4, [sp, #8]
 8004d4a:	465e      	mov	r6, fp
 8004d4c:	f107 0401 	add.w	r4, r7, #1
 8004d50:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d54:	f300 80ba 	bgt.w	8004ecc <_dtoa_r+0xd34>
 8004d58:	9b00      	ldr	r3, [sp, #0]
 8004d5a:	9502      	str	r5, [sp, #8]
 8004d5c:	703b      	strb	r3, [r7, #0]
 8004d5e:	4645      	mov	r5, r8
 8004d60:	e660      	b.n	8004a24 <_dtoa_r+0x88c>
 8004d62:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004d66:	2602      	movs	r6, #2
 8004d68:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004d6c:	f7ff bb67 	b.w	800443e <_dtoa_r+0x2a6>
 8004d70:	9b00      	ldr	r3, [sp, #0]
 8004d72:	2b39      	cmp	r3, #57	; 0x39
 8004d74:	465e      	mov	r6, fp
 8004d76:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d7a:	f000 80b9 	beq.w	8004ef0 <_dtoa_r+0xd58>
 8004d7e:	9b00      	ldr	r3, [sp, #0]
 8004d80:	9502      	str	r5, [sp, #8]
 8004d82:	3301      	adds	r3, #1
 8004d84:	703b      	strb	r3, [r7, #0]
 8004d86:	4645      	mov	r5, r8
 8004d88:	e64c      	b.n	8004a24 <_dtoa_r+0x88c>
 8004d8a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004d8e:	1a9c      	subs	r4, r3, r2
 8004d90:	e4f5      	b.n	800477e <_dtoa_r+0x5e6>
 8004d92:	465e      	mov	r6, fp
 8004d94:	9502      	str	r5, [sp, #8]
 8004d96:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004d9a:	4645      	mov	r5, r8
 8004d9c:	e61a      	b.n	80049d4 <_dtoa_r+0x83c>
 8004d9e:	2600      	movs	r6, #0
 8004da0:	4635      	mov	r5, r6
 8004da2:	e708      	b.n	8004bb6 <_dtoa_r+0xa1e>
 8004da4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004da8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004dac:	f7fb fec4 	bl	8000b38 <__aeabi_dmul>
 8004db0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004db2:	f88b 5000 	strb.w	r5, [fp]
 8004db6:	2b01      	cmp	r3, #1
 8004db8:	e9cd 0100 	strd	r0, r1, [sp]
 8004dbc:	d020      	beq.n	8004e00 <_dtoa_r+0xc68>
 8004dbe:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004dc0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004dc4:	445b      	add	r3, fp
 8004dc6:	4698      	mov	r8, r3
 8004dc8:	2200      	movs	r2, #0
 8004dca:	4b2c      	ldr	r3, [pc, #176]	; (8004e7c <_dtoa_r+0xce4>)
 8004dcc:	4630      	mov	r0, r6
 8004dce:	4639      	mov	r1, r7
 8004dd0:	f7fb feb2 	bl	8000b38 <__aeabi_dmul>
 8004dd4:	460f      	mov	r7, r1
 8004dd6:	4606      	mov	r6, r0
 8004dd8:	f7fc f95e 	bl	8001098 <__aeabi_d2iz>
 8004ddc:	4605      	mov	r5, r0
 8004dde:	f7fb fe41 	bl	8000a64 <__aeabi_i2d>
 8004de2:	3530      	adds	r5, #48	; 0x30
 8004de4:	4602      	mov	r2, r0
 8004de6:	460b      	mov	r3, r1
 8004de8:	4630      	mov	r0, r6
 8004dea:	4639      	mov	r1, r7
 8004dec:	f7fb fcec 	bl	80007c8 <__aeabi_dsub>
 8004df0:	f804 5b01 	strb.w	r5, [r4], #1
 8004df4:	4544      	cmp	r4, r8
 8004df6:	4606      	mov	r6, r0
 8004df8:	460f      	mov	r7, r1
 8004dfa:	d1e5      	bne.n	8004dc8 <_dtoa_r+0xc30>
 8004dfc:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004e00:	4b1f      	ldr	r3, [pc, #124]	; (8004e80 <_dtoa_r+0xce8>)
 8004e02:	2200      	movs	r2, #0
 8004e04:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e08:	f7fb fce0 	bl	80007cc <__adddf3>
 8004e0c:	4632      	mov	r2, r6
 8004e0e:	463b      	mov	r3, r7
 8004e10:	f7fc f904 	bl	800101c <__aeabi_dcmplt>
 8004e14:	2800      	cmp	r0, #0
 8004e16:	d070      	beq.n	8004efa <_dtoa_r+0xd62>
 8004e18:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e1a:	9306      	str	r3, [sp, #24]
 8004e1c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004e20:	e48f      	b.n	8004742 <_dtoa_r+0x5aa>
 8004e22:	2330      	movs	r3, #48	; 0x30
 8004e24:	f88b 3000 	strb.w	r3, [fp]
 8004e28:	9b06      	ldr	r3, [sp, #24]
 8004e2a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004e2e:	3301      	adds	r3, #1
 8004e30:	9306      	str	r3, [sp, #24]
 8004e32:	465b      	mov	r3, fp
 8004e34:	e489      	b.n	800474a <_dtoa_r+0x5b2>
 8004e36:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004e38:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004e3c:	e6a0      	b.n	8004b80 <_dtoa_r+0x9e8>
 8004e3e:	2300      	movs	r3, #0
 8004e40:	e676      	b.n	8004b30 <_dtoa_r+0x998>
 8004e42:	4631      	mov	r1, r6
 8004e44:	2205      	movs	r2, #5
 8004e46:	4648      	mov	r0, r9
 8004e48:	f001 f8cc 	bl	8005fe4 <__multadd>
 8004e4c:	4601      	mov	r1, r0
 8004e4e:	4606      	mov	r6, r0
 8004e50:	4650      	mov	r0, sl
 8004e52:	f001 faad 	bl	80063b0 <__mcmp>
 8004e56:	2800      	cmp	r0, #0
 8004e58:	f73f aead 	bgt.w	8004bb6 <_dtoa_r+0xa1e>
 8004e5c:	e722      	b.n	8004ca4 <_dtoa_r+0xb0c>
 8004e5e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004e62:	2602      	movs	r6, #2
 8004e64:	ed8d 7b00 	vstr	d7, [sp]
 8004e68:	f7ff bb02 	b.w	8004470 <_dtoa_r+0x2d8>
 8004e6c:	40140000 	.word	0x40140000
 8004e70:	08007248 	.word	0x08007248
 8004e74:	08007220 	.word	0x08007220
 8004e78:	401c0000 	.word	0x401c0000
 8004e7c:	40240000 	.word	0x40240000
 8004e80:	3fe00000 	.word	0x3fe00000
 8004e84:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e86:	2b00      	cmp	r3, #0
 8004e88:	f43f af1d 	beq.w	8004cc6 <_dtoa_r+0xb2e>
 8004e8c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004e8e:	2c00      	cmp	r4, #0
 8004e90:	f77f aba8 	ble.w	80045e4 <_dtoa_r+0x44c>
 8004e94:	2200      	movs	r2, #0
 8004e96:	4b45      	ldr	r3, [pc, #276]	; (8004fac <_dtoa_r+0xe14>)
 8004e98:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e9c:	f7fb fe4c 	bl	8000b38 <__aeabi_dmul>
 8004ea0:	e9cd 0100 	strd	r0, r1, [sp]
 8004ea4:	1c70      	adds	r0, r6, #1
 8004ea6:	f7fb fddd 	bl	8000a64 <__aeabi_i2d>
 8004eaa:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004eae:	f7fb fe43 	bl	8000b38 <__aeabi_dmul>
 8004eb2:	4b3f      	ldr	r3, [pc, #252]	; (8004fb0 <_dtoa_r+0xe18>)
 8004eb4:	2200      	movs	r2, #0
 8004eb6:	f7fb fc89 	bl	80007cc <__adddf3>
 8004eba:	9b06      	ldr	r3, [sp, #24]
 8004ebc:	9412      	str	r4, [sp, #72]	; 0x48
 8004ebe:	3b01      	subs	r3, #1
 8004ec0:	4606      	mov	r6, r0
 8004ec2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004ec6:	9316      	str	r3, [sp, #88]	; 0x58
 8004ec8:	f7ff baf3 	b.w	80044b2 <_dtoa_r+0x31a>
 8004ecc:	4651      	mov	r1, sl
 8004ece:	2201      	movs	r2, #1
 8004ed0:	4648      	mov	r0, r9
 8004ed2:	f001 fa17 	bl	8006304 <__lshift>
 8004ed6:	4631      	mov	r1, r6
 8004ed8:	4682      	mov	sl, r0
 8004eda:	f001 fa69 	bl	80063b0 <__mcmp>
 8004ede:	2800      	cmp	r0, #0
 8004ee0:	dd3b      	ble.n	8004f5a <_dtoa_r+0xdc2>
 8004ee2:	9b00      	ldr	r3, [sp, #0]
 8004ee4:	2b39      	cmp	r3, #57	; 0x39
 8004ee6:	d003      	beq.n	8004ef0 <_dtoa_r+0xd58>
 8004ee8:	9b02      	ldr	r3, [sp, #8]
 8004eea:	3331      	adds	r3, #49	; 0x31
 8004eec:	9300      	str	r3, [sp, #0]
 8004eee:	e733      	b.n	8004d58 <_dtoa_r+0xbc0>
 8004ef0:	2239      	movs	r2, #57	; 0x39
 8004ef2:	9502      	str	r5, [sp, #8]
 8004ef4:	703a      	strb	r2, [r7, #0]
 8004ef6:	4645      	mov	r5, r8
 8004ef8:	e58e      	b.n	8004a18 <_dtoa_r+0x880>
 8004efa:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004efe:	2000      	movs	r0, #0
 8004f00:	492c      	ldr	r1, [pc, #176]	; (8004fb4 <_dtoa_r+0xe1c>)
 8004f02:	f7fb fc61 	bl	80007c8 <__aeabi_dsub>
 8004f06:	4632      	mov	r2, r6
 8004f08:	463b      	mov	r3, r7
 8004f0a:	f7fc f8a5 	bl	8001058 <__aeabi_dcmpgt>
 8004f0e:	b910      	cbnz	r0, 8004f16 <_dtoa_r+0xd7e>
 8004f10:	f7ff bb68 	b.w	80045e4 <_dtoa_r+0x44c>
 8004f14:	4614      	mov	r4, r2
 8004f16:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004f1a:	2b30      	cmp	r3, #48	; 0x30
 8004f1c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004f20:	d0f8      	beq.n	8004f14 <_dtoa_r+0xd7c>
 8004f22:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f24:	9306      	str	r3, [sp, #24]
 8004f26:	e58d      	b.n	8004a44 <_dtoa_r+0x8ac>
 8004f28:	46d9      	mov	r9, fp
 8004f2a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004f2e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004f32:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f34:	9306      	str	r3, [sp, #24]
 8004f36:	e404      	b.n	8004742 <_dtoa_r+0x5aa>
 8004f38:	9b00      	ldr	r3, [sp, #0]
 8004f3a:	2b39      	cmp	r3, #57	; 0x39
 8004f3c:	4621      	mov	r1, r4
 8004f3e:	4632      	mov	r2, r6
 8004f40:	f107 0401 	add.w	r4, r7, #1
 8004f44:	465e      	mov	r6, fp
 8004f46:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f4a:	d0d1      	beq.n	8004ef0 <_dtoa_r+0xd58>
 8004f4c:	2a00      	cmp	r2, #0
 8004f4e:	f77f af03 	ble.w	8004d58 <_dtoa_r+0xbc0>
 8004f52:	460b      	mov	r3, r1
 8004f54:	3331      	adds	r3, #49	; 0x31
 8004f56:	9300      	str	r3, [sp, #0]
 8004f58:	e6fe      	b.n	8004d58 <_dtoa_r+0xbc0>
 8004f5a:	f47f aefd 	bne.w	8004d58 <_dtoa_r+0xbc0>
 8004f5e:	9b00      	ldr	r3, [sp, #0]
 8004f60:	07da      	lsls	r2, r3, #31
 8004f62:	f57f aef9 	bpl.w	8004d58 <_dtoa_r+0xbc0>
 8004f66:	e7bc      	b.n	8004ee2 <_dtoa_r+0xd4a>
 8004f68:	4629      	mov	r1, r5
 8004f6a:	2300      	movs	r3, #0
 8004f6c:	220a      	movs	r2, #10
 8004f6e:	4648      	mov	r0, r9
 8004f70:	f001 f838 	bl	8005fe4 <__multadd>
 8004f74:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f76:	2b00      	cmp	r3, #0
 8004f78:	4605      	mov	r5, r0
 8004f7a:	dd09      	ble.n	8004f90 <_dtoa_r+0xdf8>
 8004f7c:	9309      	str	r3, [sp, #36]	; 0x24
 8004f7e:	e484      	b.n	800488a <_dtoa_r+0x6f2>
 8004f80:	9b02      	ldr	r3, [sp, #8]
 8004f82:	2b02      	cmp	r3, #2
 8004f84:	dc0e      	bgt.n	8004fa4 <_dtoa_r+0xe0c>
 8004f86:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f88:	e507      	b.n	800499a <_dtoa_r+0x802>
 8004f8a:	2602      	movs	r6, #2
 8004f8c:	f7ff ba70 	b.w	8004470 <_dtoa_r+0x2d8>
 8004f90:	9b02      	ldr	r3, [sp, #8]
 8004f92:	2b02      	cmp	r3, #2
 8004f94:	dc06      	bgt.n	8004fa4 <_dtoa_r+0xe0c>
 8004f96:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004f98:	e7f0      	b.n	8004f7c <_dtoa_r+0xde4>
 8004f9a:	f43f ac59 	beq.w	8004850 <_dtoa_r+0x6b8>
 8004f9e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8004fa2:	e450      	b.n	8004846 <_dtoa_r+0x6ae>
 8004fa4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004fa6:	9309      	str	r3, [sp, #36]	; 0x24
 8004fa8:	e678      	b.n	8004c9c <_dtoa_r+0xb04>
 8004faa:	bf00      	nop
 8004fac:	40240000 	.word	0x40240000
 8004fb0:	401c0000 	.word	0x401c0000
 8004fb4:	3fe00000 	.word	0x3fe00000

08004fb8 <__sflush_r>:
 8004fb8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8004fbc:	b29a      	uxth	r2, r3
 8004fbe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004fc2:	460c      	mov	r4, r1
 8004fc4:	0711      	lsls	r1, r2, #28
 8004fc6:	4680      	mov	r8, r0
 8004fc8:	d444      	bmi.n	8005054 <__sflush_r+0x9c>
 8004fca:	6862      	ldr	r2, [r4, #4]
 8004fcc:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8004fd0:	2a00      	cmp	r2, #0
 8004fd2:	81a3      	strh	r3, [r4, #12]
 8004fd4:	dd59      	ble.n	800508a <__sflush_r+0xd2>
 8004fd6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8004fd8:	2d00      	cmp	r5, #0
 8004fda:	d053      	beq.n	8005084 <__sflush_r+0xcc>
 8004fdc:	2200      	movs	r2, #0
 8004fde:	b29b      	uxth	r3, r3
 8004fe0:	f8d8 6000 	ldr.w	r6, [r8]
 8004fe4:	69e1      	ldr	r1, [r4, #28]
 8004fe6:	f8c8 2000 	str.w	r2, [r8]
 8004fea:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8004fee:	f040 8083 	bne.w	80050f8 <__sflush_r+0x140>
 8004ff2:	2301      	movs	r3, #1
 8004ff4:	4640      	mov	r0, r8
 8004ff6:	47a8      	blx	r5
 8004ff8:	1c42      	adds	r2, r0, #1
 8004ffa:	d04a      	beq.n	8005092 <__sflush_r+0xda>
 8004ffc:	89a3      	ldrh	r3, [r4, #12]
 8004ffe:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005000:	69e1      	ldr	r1, [r4, #28]
 8005002:	075b      	lsls	r3, r3, #29
 8005004:	d505      	bpl.n	8005012 <__sflush_r+0x5a>
 8005006:	6862      	ldr	r2, [r4, #4]
 8005008:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800500a:	1a80      	subs	r0, r0, r2
 800500c:	b10b      	cbz	r3, 8005012 <__sflush_r+0x5a>
 800500e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005010:	1ac0      	subs	r0, r0, r3
 8005012:	4602      	mov	r2, r0
 8005014:	2300      	movs	r3, #0
 8005016:	4640      	mov	r0, r8
 8005018:	47a8      	blx	r5
 800501a:	1c47      	adds	r7, r0, #1
 800501c:	d045      	beq.n	80050aa <__sflush_r+0xf2>
 800501e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005022:	6922      	ldr	r2, [r4, #16]
 8005024:	6022      	str	r2, [r4, #0]
 8005026:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800502a:	2200      	movs	r2, #0
 800502c:	81a3      	strh	r3, [r4, #12]
 800502e:	04db      	lsls	r3, r3, #19
 8005030:	6062      	str	r2, [r4, #4]
 8005032:	d500      	bpl.n	8005036 <__sflush_r+0x7e>
 8005034:	6520      	str	r0, [r4, #80]	; 0x50
 8005036:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005038:	f8c8 6000 	str.w	r6, [r8]
 800503c:	b311      	cbz	r1, 8005084 <__sflush_r+0xcc>
 800503e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005042:	4299      	cmp	r1, r3
 8005044:	d002      	beq.n	800504c <__sflush_r+0x94>
 8005046:	4640      	mov	r0, r8
 8005048:	f000 f95e 	bl	8005308 <_free_r>
 800504c:	2000      	movs	r0, #0
 800504e:	6320      	str	r0, [r4, #48]	; 0x30
 8005050:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005054:	6926      	ldr	r6, [r4, #16]
 8005056:	b1ae      	cbz	r6, 8005084 <__sflush_r+0xcc>
 8005058:	6825      	ldr	r5, [r4, #0]
 800505a:	6026      	str	r6, [r4, #0]
 800505c:	0792      	lsls	r2, r2, #30
 800505e:	bf0c      	ite	eq
 8005060:	6963      	ldreq	r3, [r4, #20]
 8005062:	2300      	movne	r3, #0
 8005064:	1bad      	subs	r5, r5, r6
 8005066:	60a3      	str	r3, [r4, #8]
 8005068:	e00a      	b.n	8005080 <__sflush_r+0xc8>
 800506a:	462b      	mov	r3, r5
 800506c:	4632      	mov	r2, r6
 800506e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005070:	69e1      	ldr	r1, [r4, #28]
 8005072:	4640      	mov	r0, r8
 8005074:	47b8      	blx	r7
 8005076:	2800      	cmp	r0, #0
 8005078:	eba5 0500 	sub.w	r5, r5, r0
 800507c:	4406      	add	r6, r0
 800507e:	dd2b      	ble.n	80050d8 <__sflush_r+0x120>
 8005080:	2d00      	cmp	r5, #0
 8005082:	dcf2      	bgt.n	800506a <__sflush_r+0xb2>
 8005084:	2000      	movs	r0, #0
 8005086:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800508a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800508c:	2a00      	cmp	r2, #0
 800508e:	dca2      	bgt.n	8004fd6 <__sflush_r+0x1e>
 8005090:	e7f8      	b.n	8005084 <__sflush_r+0xcc>
 8005092:	f8d8 3000 	ldr.w	r3, [r8]
 8005096:	2b00      	cmp	r3, #0
 8005098:	d0b0      	beq.n	8004ffc <__sflush_r+0x44>
 800509a:	2b1d      	cmp	r3, #29
 800509c:	d001      	beq.n	80050a2 <__sflush_r+0xea>
 800509e:	2b16      	cmp	r3, #22
 80050a0:	d12c      	bne.n	80050fc <__sflush_r+0x144>
 80050a2:	f8c8 6000 	str.w	r6, [r8]
 80050a6:	2000      	movs	r0, #0
 80050a8:	e7ed      	b.n	8005086 <__sflush_r+0xce>
 80050aa:	f8d8 1000 	ldr.w	r1, [r8]
 80050ae:	291d      	cmp	r1, #29
 80050b0:	d81a      	bhi.n	80050e8 <__sflush_r+0x130>
 80050b2:	4b15      	ldr	r3, [pc, #84]	; (8005108 <__sflush_r+0x150>)
 80050b4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80050b8:	40cb      	lsrs	r3, r1
 80050ba:	43db      	mvns	r3, r3
 80050bc:	f013 0301 	ands.w	r3, r3, #1
 80050c0:	d114      	bne.n	80050ec <__sflush_r+0x134>
 80050c2:	6925      	ldr	r5, [r4, #16]
 80050c4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80050c8:	e9c4 5300 	strd	r5, r3, [r4]
 80050cc:	04d5      	lsls	r5, r2, #19
 80050ce:	81a2      	strh	r2, [r4, #12]
 80050d0:	d5b1      	bpl.n	8005036 <__sflush_r+0x7e>
 80050d2:	2900      	cmp	r1, #0
 80050d4:	d1af      	bne.n	8005036 <__sflush_r+0x7e>
 80050d6:	e7ad      	b.n	8005034 <__sflush_r+0x7c>
 80050d8:	89a3      	ldrh	r3, [r4, #12]
 80050da:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80050de:	81a3      	strh	r3, [r4, #12]
 80050e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80050e8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80050ec:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80050f0:	81a2      	strh	r2, [r4, #12]
 80050f2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80050f6:	e7c6      	b.n	8005086 <__sflush_r+0xce>
 80050f8:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80050fa:	e782      	b.n	8005002 <__sflush_r+0x4a>
 80050fc:	89a3      	ldrh	r3, [r4, #12]
 80050fe:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005102:	81a3      	strh	r3, [r4, #12]
 8005104:	e7bf      	b.n	8005086 <__sflush_r+0xce>
 8005106:	bf00      	nop
 8005108:	20400001 	.word	0x20400001

0800510c <_fflush_r>:
 800510c:	b538      	push	{r3, r4, r5, lr}
 800510e:	460d      	mov	r5, r1
 8005110:	4604      	mov	r4, r0
 8005112:	b108      	cbz	r0, 8005118 <_fflush_r+0xc>
 8005114:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005116:	b1a3      	cbz	r3, 8005142 <_fflush_r+0x36>
 8005118:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800511c:	b1b8      	cbz	r0, 800514e <_fflush_r+0x42>
 800511e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005120:	07db      	lsls	r3, r3, #31
 8005122:	d401      	bmi.n	8005128 <_fflush_r+0x1c>
 8005124:	0581      	lsls	r1, r0, #22
 8005126:	d51a      	bpl.n	800515e <_fflush_r+0x52>
 8005128:	4620      	mov	r0, r4
 800512a:	4629      	mov	r1, r5
 800512c:	f7ff ff44 	bl	8004fb8 <__sflush_r>
 8005130:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005132:	07da      	lsls	r2, r3, #31
 8005134:	4604      	mov	r4, r0
 8005136:	d402      	bmi.n	800513e <_fflush_r+0x32>
 8005138:	89ab      	ldrh	r3, [r5, #12]
 800513a:	059b      	lsls	r3, r3, #22
 800513c:	d50a      	bpl.n	8005154 <_fflush_r+0x48>
 800513e:	4620      	mov	r0, r4
 8005140:	bd38      	pop	{r3, r4, r5, pc}
 8005142:	f000 f83f 	bl	80051c4 <__sinit>
 8005146:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800514a:	2800      	cmp	r0, #0
 800514c:	d1e7      	bne.n	800511e <_fflush_r+0x12>
 800514e:	4604      	mov	r4, r0
 8005150:	4620      	mov	r0, r4
 8005152:	bd38      	pop	{r3, r4, r5, pc}
 8005154:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005156:	f000 fb87 	bl	8005868 <__retarget_lock_release_recursive>
 800515a:	4620      	mov	r0, r4
 800515c:	bd38      	pop	{r3, r4, r5, pc}
 800515e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005160:	f000 fb80 	bl	8005864 <__retarget_lock_acquire_recursive>
 8005164:	e7e0      	b.n	8005128 <_fflush_r+0x1c>
 8005166:	bf00      	nop

08005168 <std>:
 8005168:	b510      	push	{r4, lr}
 800516a:	2300      	movs	r3, #0
 800516c:	4604      	mov	r4, r0
 800516e:	8181      	strh	r1, [r0, #12]
 8005170:	81c2      	strh	r2, [r0, #14]
 8005172:	e9c0 3300 	strd	r3, r3, [r0]
 8005176:	6083      	str	r3, [r0, #8]
 8005178:	6643      	str	r3, [r0, #100]	; 0x64
 800517a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800517e:	6183      	str	r3, [r0, #24]
 8005180:	4619      	mov	r1, r3
 8005182:	2208      	movs	r2, #8
 8005184:	305c      	adds	r0, #92	; 0x5c
 8005186:	f7fd f8cb 	bl	8002320 <memset>
 800518a:	4807      	ldr	r0, [pc, #28]	; (80051a8 <std+0x40>)
 800518c:	4907      	ldr	r1, [pc, #28]	; (80051ac <std+0x44>)
 800518e:	4a08      	ldr	r2, [pc, #32]	; (80051b0 <std+0x48>)
 8005190:	4b08      	ldr	r3, [pc, #32]	; (80051b4 <std+0x4c>)
 8005192:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005194:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005198:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800519c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80051a0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80051a4:	f000 bb5a 	b.w	800585c <__retarget_lock_init_recursive>
 80051a8:	08006981 	.word	0x08006981
 80051ac:	080069a5 	.word	0x080069a5
 80051b0:	080069e1 	.word	0x080069e1
 80051b4:	08006a01 	.word	0x08006a01

080051b8 <_cleanup_r>:
 80051b8:	4901      	ldr	r1, [pc, #4]	; (80051c0 <_cleanup_r+0x8>)
 80051ba:	f000 bb17 	b.w	80057ec <_fwalk_reent>
 80051be:	bf00      	nop
 80051c0:	08006c71 	.word	0x08006c71

080051c4 <__sinit>:
 80051c4:	b510      	push	{r4, lr}
 80051c6:	4604      	mov	r4, r0
 80051c8:	4812      	ldr	r0, [pc, #72]	; (8005214 <__sinit+0x50>)
 80051ca:	f000 fb4b 	bl	8005864 <__retarget_lock_acquire_recursive>
 80051ce:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80051d0:	b9d2      	cbnz	r2, 8005208 <__sinit+0x44>
 80051d2:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80051d6:	4810      	ldr	r0, [pc, #64]	; (8005218 <__sinit+0x54>)
 80051d8:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80051dc:	2103      	movs	r1, #3
 80051de:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80051e2:	63e0      	str	r0, [r4, #60]	; 0x3c
 80051e4:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80051e8:	6860      	ldr	r0, [r4, #4]
 80051ea:	2104      	movs	r1, #4
 80051ec:	f7ff ffbc 	bl	8005168 <std>
 80051f0:	2201      	movs	r2, #1
 80051f2:	2109      	movs	r1, #9
 80051f4:	68a0      	ldr	r0, [r4, #8]
 80051f6:	f7ff ffb7 	bl	8005168 <std>
 80051fa:	2202      	movs	r2, #2
 80051fc:	2112      	movs	r1, #18
 80051fe:	68e0      	ldr	r0, [r4, #12]
 8005200:	f7ff ffb2 	bl	8005168 <std>
 8005204:	2301      	movs	r3, #1
 8005206:	63a3      	str	r3, [r4, #56]	; 0x38
 8005208:	4802      	ldr	r0, [pc, #8]	; (8005214 <__sinit+0x50>)
 800520a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800520e:	f000 bb2b 	b.w	8005868 <__retarget_lock_release_recursive>
 8005212:	bf00      	nop
 8005214:	20000c08 	.word	0x20000c08
 8005218:	080051b9 	.word	0x080051b9

0800521c <__sfp_lock_acquire>:
 800521c:	4801      	ldr	r0, [pc, #4]	; (8005224 <__sfp_lock_acquire+0x8>)
 800521e:	f000 bb21 	b.w	8005864 <__retarget_lock_acquire_recursive>
 8005222:	bf00      	nop
 8005224:	20000c1c 	.word	0x20000c1c

08005228 <__sfp_lock_release>:
 8005228:	4801      	ldr	r0, [pc, #4]	; (8005230 <__sfp_lock_release+0x8>)
 800522a:	f000 bb1d 	b.w	8005868 <__retarget_lock_release_recursive>
 800522e:	bf00      	nop
 8005230:	20000c1c 	.word	0x20000c1c

08005234 <__libc_fini_array>:
 8005234:	b538      	push	{r3, r4, r5, lr}
 8005236:	4c0a      	ldr	r4, [pc, #40]	; (8005260 <__libc_fini_array+0x2c>)
 8005238:	4d0a      	ldr	r5, [pc, #40]	; (8005264 <__libc_fini_array+0x30>)
 800523a:	1b64      	subs	r4, r4, r5
 800523c:	10a4      	asrs	r4, r4, #2
 800523e:	d00a      	beq.n	8005256 <__libc_fini_array+0x22>
 8005240:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005244:	3b01      	subs	r3, #1
 8005246:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800524a:	3c01      	subs	r4, #1
 800524c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005250:	4798      	blx	r3
 8005252:	2c00      	cmp	r4, #0
 8005254:	d1f9      	bne.n	800524a <__libc_fini_array+0x16>
 8005256:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800525a:	f001 befd 	b.w	8007058 <_fini>
 800525e:	bf00      	nop
 8005260:	08007444 	.word	0x08007444
 8005264:	08007440 	.word	0x08007440

08005268 <_malloc_trim_r>:
 8005268:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800526a:	4f24      	ldr	r7, [pc, #144]	; (80052fc <_malloc_trim_r+0x94>)
 800526c:	460c      	mov	r4, r1
 800526e:	4606      	mov	r6, r0
 8005270:	f000 fe7c 	bl	8005f6c <__malloc_lock>
 8005274:	68bb      	ldr	r3, [r7, #8]
 8005276:	685d      	ldr	r5, [r3, #4]
 8005278:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800527c:	310f      	adds	r1, #15
 800527e:	f025 0503 	bic.w	r5, r5, #3
 8005282:	4429      	add	r1, r5
 8005284:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005288:	f021 010f 	bic.w	r1, r1, #15
 800528c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005290:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005294:	db07      	blt.n	80052a6 <_malloc_trim_r+0x3e>
 8005296:	2100      	movs	r1, #0
 8005298:	4630      	mov	r0, r6
 800529a:	f001 fb5f 	bl	800695c <_sbrk_r>
 800529e:	68bb      	ldr	r3, [r7, #8]
 80052a0:	442b      	add	r3, r5
 80052a2:	4298      	cmp	r0, r3
 80052a4:	d004      	beq.n	80052b0 <_malloc_trim_r+0x48>
 80052a6:	4630      	mov	r0, r6
 80052a8:	f000 fe66 	bl	8005f78 <__malloc_unlock>
 80052ac:	2000      	movs	r0, #0
 80052ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80052b0:	4261      	negs	r1, r4
 80052b2:	4630      	mov	r0, r6
 80052b4:	f001 fb52 	bl	800695c <_sbrk_r>
 80052b8:	3001      	adds	r0, #1
 80052ba:	d00d      	beq.n	80052d8 <_malloc_trim_r+0x70>
 80052bc:	4b10      	ldr	r3, [pc, #64]	; (8005300 <_malloc_trim_r+0x98>)
 80052be:	68ba      	ldr	r2, [r7, #8]
 80052c0:	6819      	ldr	r1, [r3, #0]
 80052c2:	1b2d      	subs	r5, r5, r4
 80052c4:	f045 0501 	orr.w	r5, r5, #1
 80052c8:	4630      	mov	r0, r6
 80052ca:	1b09      	subs	r1, r1, r4
 80052cc:	6055      	str	r5, [r2, #4]
 80052ce:	6019      	str	r1, [r3, #0]
 80052d0:	f000 fe52 	bl	8005f78 <__malloc_unlock>
 80052d4:	2001      	movs	r0, #1
 80052d6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80052d8:	2100      	movs	r1, #0
 80052da:	4630      	mov	r0, r6
 80052dc:	f001 fb3e 	bl	800695c <_sbrk_r>
 80052e0:	68ba      	ldr	r2, [r7, #8]
 80052e2:	1a83      	subs	r3, r0, r2
 80052e4:	2b0f      	cmp	r3, #15
 80052e6:	ddde      	ble.n	80052a6 <_malloc_trim_r+0x3e>
 80052e8:	4c06      	ldr	r4, [pc, #24]	; (8005304 <_malloc_trim_r+0x9c>)
 80052ea:	4905      	ldr	r1, [pc, #20]	; (8005300 <_malloc_trim_r+0x98>)
 80052ec:	6824      	ldr	r4, [r4, #0]
 80052ee:	f043 0301 	orr.w	r3, r3, #1
 80052f2:	1b00      	subs	r0, r0, r4
 80052f4:	6053      	str	r3, [r2, #4]
 80052f6:	6008      	str	r0, [r1, #0]
 80052f8:	e7d5      	b.n	80052a6 <_malloc_trim_r+0x3e>
 80052fa:	bf00      	nop
 80052fc:	2000044c 	.word	0x2000044c
 8005300:	20000a7c 	.word	0x20000a7c
 8005304:	20000854 	.word	0x20000854

08005308 <_free_r>:
 8005308:	2900      	cmp	r1, #0
 800530a:	d053      	beq.n	80053b4 <_free_r+0xac>
 800530c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800530e:	460c      	mov	r4, r1
 8005310:	4606      	mov	r6, r0
 8005312:	f000 fe2b 	bl	8005f6c <__malloc_lock>
 8005316:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800531a:	4f71      	ldr	r7, [pc, #452]	; (80054e0 <_free_r+0x1d8>)
 800531c:	f02c 0101 	bic.w	r1, ip, #1
 8005320:	f1a4 0508 	sub.w	r5, r4, #8
 8005324:	186b      	adds	r3, r5, r1
 8005326:	68b8      	ldr	r0, [r7, #8]
 8005328:	685a      	ldr	r2, [r3, #4]
 800532a:	4298      	cmp	r0, r3
 800532c:	f022 0203 	bic.w	r2, r2, #3
 8005330:	d053      	beq.n	80053da <_free_r+0xd2>
 8005332:	f01c 0f01 	tst.w	ip, #1
 8005336:	605a      	str	r2, [r3, #4]
 8005338:	eb03 0002 	add.w	r0, r3, r2
 800533c:	d13b      	bne.n	80053b6 <_free_r+0xae>
 800533e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005342:	6840      	ldr	r0, [r0, #4]
 8005344:	eba5 050c 	sub.w	r5, r5, ip
 8005348:	f107 0e08 	add.w	lr, r7, #8
 800534c:	68ac      	ldr	r4, [r5, #8]
 800534e:	4574      	cmp	r4, lr
 8005350:	4461      	add	r1, ip
 8005352:	f000 0001 	and.w	r0, r0, #1
 8005356:	d075      	beq.n	8005444 <_free_r+0x13c>
 8005358:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800535c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005360:	f8cc 4008 	str.w	r4, [ip, #8]
 8005364:	b360      	cbz	r0, 80053c0 <_free_r+0xb8>
 8005366:	f041 0301 	orr.w	r3, r1, #1
 800536a:	606b      	str	r3, [r5, #4]
 800536c:	5069      	str	r1, [r5, r1]
 800536e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005372:	d350      	bcc.n	8005416 <_free_r+0x10e>
 8005374:	0a4b      	lsrs	r3, r1, #9
 8005376:	2b04      	cmp	r3, #4
 8005378:	d870      	bhi.n	800545c <_free_r+0x154>
 800537a:	098b      	lsrs	r3, r1, #6
 800537c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005380:	00e4      	lsls	r4, r4, #3
 8005382:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005386:	1938      	adds	r0, r7, r4
 8005388:	593b      	ldr	r3, [r7, r4]
 800538a:	3808      	subs	r0, #8
 800538c:	4298      	cmp	r0, r3
 800538e:	d078      	beq.n	8005482 <_free_r+0x17a>
 8005390:	685a      	ldr	r2, [r3, #4]
 8005392:	f022 0203 	bic.w	r2, r2, #3
 8005396:	428a      	cmp	r2, r1
 8005398:	d971      	bls.n	800547e <_free_r+0x176>
 800539a:	689b      	ldr	r3, [r3, #8]
 800539c:	4298      	cmp	r0, r3
 800539e:	d1f7      	bne.n	8005390 <_free_r+0x88>
 80053a0:	68c3      	ldr	r3, [r0, #12]
 80053a2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80053a6:	609d      	str	r5, [r3, #8]
 80053a8:	60c5      	str	r5, [r0, #12]
 80053aa:	4630      	mov	r0, r6
 80053ac:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80053b0:	f000 bde2 	b.w	8005f78 <__malloc_unlock>
 80053b4:	4770      	bx	lr
 80053b6:	6840      	ldr	r0, [r0, #4]
 80053b8:	f000 0001 	and.w	r0, r0, #1
 80053bc:	2800      	cmp	r0, #0
 80053be:	d1d2      	bne.n	8005366 <_free_r+0x5e>
 80053c0:	6898      	ldr	r0, [r3, #8]
 80053c2:	4c48      	ldr	r4, [pc, #288]	; (80054e4 <_free_r+0x1dc>)
 80053c4:	4411      	add	r1, r2
 80053c6:	42a0      	cmp	r0, r4
 80053c8:	f041 0201 	orr.w	r2, r1, #1
 80053cc:	d062      	beq.n	8005494 <_free_r+0x18c>
 80053ce:	68db      	ldr	r3, [r3, #12]
 80053d0:	60c3      	str	r3, [r0, #12]
 80053d2:	6098      	str	r0, [r3, #8]
 80053d4:	606a      	str	r2, [r5, #4]
 80053d6:	5069      	str	r1, [r5, r1]
 80053d8:	e7c9      	b.n	800536e <_free_r+0x66>
 80053da:	f01c 0f01 	tst.w	ip, #1
 80053de:	440a      	add	r2, r1
 80053e0:	d107      	bne.n	80053f2 <_free_r+0xea>
 80053e2:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80053e6:	1aed      	subs	r5, r5, r3
 80053e8:	441a      	add	r2, r3
 80053ea:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80053ee:	60cb      	str	r3, [r1, #12]
 80053f0:	6099      	str	r1, [r3, #8]
 80053f2:	4b3d      	ldr	r3, [pc, #244]	; (80054e8 <_free_r+0x1e0>)
 80053f4:	681b      	ldr	r3, [r3, #0]
 80053f6:	f042 0101 	orr.w	r1, r2, #1
 80053fa:	4293      	cmp	r3, r2
 80053fc:	6069      	str	r1, [r5, #4]
 80053fe:	60bd      	str	r5, [r7, #8]
 8005400:	d804      	bhi.n	800540c <_free_r+0x104>
 8005402:	4b3a      	ldr	r3, [pc, #232]	; (80054ec <_free_r+0x1e4>)
 8005404:	4630      	mov	r0, r6
 8005406:	6819      	ldr	r1, [r3, #0]
 8005408:	f7ff ff2e 	bl	8005268 <_malloc_trim_r>
 800540c:	4630      	mov	r0, r6
 800540e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005412:	f000 bdb1 	b.w	8005f78 <__malloc_unlock>
 8005416:	08c9      	lsrs	r1, r1, #3
 8005418:	6878      	ldr	r0, [r7, #4]
 800541a:	1c4a      	adds	r2, r1, #1
 800541c:	2301      	movs	r3, #1
 800541e:	1089      	asrs	r1, r1, #2
 8005420:	408b      	lsls	r3, r1
 8005422:	4303      	orrs	r3, r0
 8005424:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005428:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800542c:	607b      	str	r3, [r7, #4]
 800542e:	3908      	subs	r1, #8
 8005430:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005434:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005438:	60c5      	str	r5, [r0, #12]
 800543a:	4630      	mov	r0, r6
 800543c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005440:	f000 bd9a 	b.w	8005f78 <__malloc_unlock>
 8005444:	2800      	cmp	r0, #0
 8005446:	d145      	bne.n	80054d4 <_free_r+0x1cc>
 8005448:	440a      	add	r2, r1
 800544a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800544e:	f042 0001 	orr.w	r0, r2, #1
 8005452:	60cb      	str	r3, [r1, #12]
 8005454:	6099      	str	r1, [r3, #8]
 8005456:	6068      	str	r0, [r5, #4]
 8005458:	50aa      	str	r2, [r5, r2]
 800545a:	e7d7      	b.n	800540c <_free_r+0x104>
 800545c:	2b14      	cmp	r3, #20
 800545e:	d908      	bls.n	8005472 <_free_r+0x16a>
 8005460:	2b54      	cmp	r3, #84	; 0x54
 8005462:	d81e      	bhi.n	80054a2 <_free_r+0x19a>
 8005464:	0b0b      	lsrs	r3, r1, #12
 8005466:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800546a:	00e4      	lsls	r4, r4, #3
 800546c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005470:	e789      	b.n	8005386 <_free_r+0x7e>
 8005472:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005476:	00e4      	lsls	r4, r4, #3
 8005478:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800547c:	e783      	b.n	8005386 <_free_r+0x7e>
 800547e:	4618      	mov	r0, r3
 8005480:	e78e      	b.n	80053a0 <_free_r+0x98>
 8005482:	1093      	asrs	r3, r2, #2
 8005484:	6879      	ldr	r1, [r7, #4]
 8005486:	2201      	movs	r2, #1
 8005488:	fa02 f303 	lsl.w	r3, r2, r3
 800548c:	430b      	orrs	r3, r1
 800548e:	607b      	str	r3, [r7, #4]
 8005490:	4603      	mov	r3, r0
 8005492:	e786      	b.n	80053a2 <_free_r+0x9a>
 8005494:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005498:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800549c:	606a      	str	r2, [r5, #4]
 800549e:	5069      	str	r1, [r5, r1]
 80054a0:	e7b4      	b.n	800540c <_free_r+0x104>
 80054a2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80054a6:	d806      	bhi.n	80054b6 <_free_r+0x1ae>
 80054a8:	0bcb      	lsrs	r3, r1, #15
 80054aa:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80054ae:	00e4      	lsls	r4, r4, #3
 80054b0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80054b4:	e767      	b.n	8005386 <_free_r+0x7e>
 80054b6:	f240 5254 	movw	r2, #1364	; 0x554
 80054ba:	4293      	cmp	r3, r2
 80054bc:	d806      	bhi.n	80054cc <_free_r+0x1c4>
 80054be:	0c8b      	lsrs	r3, r1, #18
 80054c0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80054c4:	00e4      	lsls	r4, r4, #3
 80054c6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80054ca:	e75c      	b.n	8005386 <_free_r+0x7e>
 80054cc:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80054d0:	227e      	movs	r2, #126	; 0x7e
 80054d2:	e758      	b.n	8005386 <_free_r+0x7e>
 80054d4:	f041 0201 	orr.w	r2, r1, #1
 80054d8:	606a      	str	r2, [r5, #4]
 80054da:	6019      	str	r1, [r3, #0]
 80054dc:	e796      	b.n	800540c <_free_r+0x104>
 80054de:	bf00      	nop
 80054e0:	2000044c 	.word	0x2000044c
 80054e4:	20000454 	.word	0x20000454
 80054e8:	20000858 	.word	0x20000858
 80054ec:	20000aac 	.word	0x20000aac

080054f0 <__sfvwrite_r>:
 80054f0:	6893      	ldr	r3, [r2, #8]
 80054f2:	2b00      	cmp	r3, #0
 80054f4:	f000 80e4 	beq.w	80056c0 <__sfvwrite_r+0x1d0>
 80054f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80054fc:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005500:	b29b      	uxth	r3, r3
 8005502:	460c      	mov	r4, r1
 8005504:	0719      	lsls	r1, r3, #28
 8005506:	b083      	sub	sp, #12
 8005508:	4682      	mov	sl, r0
 800550a:	4690      	mov	r8, r2
 800550c:	d535      	bpl.n	800557a <__sfvwrite_r+0x8a>
 800550e:	6922      	ldr	r2, [r4, #16]
 8005510:	b39a      	cbz	r2, 800557a <__sfvwrite_r+0x8a>
 8005512:	f013 0202 	ands.w	r2, r3, #2
 8005516:	f8d8 6000 	ldr.w	r6, [r8]
 800551a:	d03d      	beq.n	8005598 <__sfvwrite_r+0xa8>
 800551c:	2700      	movs	r7, #0
 800551e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005522:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005526:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80057e8 <__sfvwrite_r+0x2f8>
 800552a:	463d      	mov	r5, r7
 800552c:	454d      	cmp	r5, r9
 800552e:	462b      	mov	r3, r5
 8005530:	463a      	mov	r2, r7
 8005532:	bf28      	it	cs
 8005534:	464b      	movcs	r3, r9
 8005536:	4661      	mov	r1, ip
 8005538:	4650      	mov	r0, sl
 800553a:	b1d5      	cbz	r5, 8005572 <__sfvwrite_r+0x82>
 800553c:	47d8      	blx	fp
 800553e:	2800      	cmp	r0, #0
 8005540:	f340 80c6 	ble.w	80056d0 <__sfvwrite_r+0x1e0>
 8005544:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005548:	1a1b      	subs	r3, r3, r0
 800554a:	4407      	add	r7, r0
 800554c:	1a2d      	subs	r5, r5, r0
 800554e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005552:	2b00      	cmp	r3, #0
 8005554:	f000 80b0 	beq.w	80056b8 <__sfvwrite_r+0x1c8>
 8005558:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800555c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005560:	454d      	cmp	r5, r9
 8005562:	462b      	mov	r3, r5
 8005564:	463a      	mov	r2, r7
 8005566:	bf28      	it	cs
 8005568:	464b      	movcs	r3, r9
 800556a:	4661      	mov	r1, ip
 800556c:	4650      	mov	r0, sl
 800556e:	2d00      	cmp	r5, #0
 8005570:	d1e4      	bne.n	800553c <__sfvwrite_r+0x4c>
 8005572:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005576:	3608      	adds	r6, #8
 8005578:	e7d8      	b.n	800552c <__sfvwrite_r+0x3c>
 800557a:	4621      	mov	r1, r4
 800557c:	4650      	mov	r0, sl
 800557e:	f7fe fd03 	bl	8003f88 <__swsetup_r>
 8005582:	2800      	cmp	r0, #0
 8005584:	f040 812a 	bne.w	80057dc <__sfvwrite_r+0x2ec>
 8005588:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800558c:	f8d8 6000 	ldr.w	r6, [r8]
 8005590:	b29b      	uxth	r3, r3
 8005592:	f013 0202 	ands.w	r2, r3, #2
 8005596:	d1c1      	bne.n	800551c <__sfvwrite_r+0x2c>
 8005598:	f013 0901 	ands.w	r9, r3, #1
 800559c:	d15d      	bne.n	800565a <__sfvwrite_r+0x16a>
 800559e:	68a7      	ldr	r7, [r4, #8]
 80055a0:	6820      	ldr	r0, [r4, #0]
 80055a2:	464d      	mov	r5, r9
 80055a4:	2d00      	cmp	r5, #0
 80055a6:	d054      	beq.n	8005652 <__sfvwrite_r+0x162>
 80055a8:	059a      	lsls	r2, r3, #22
 80055aa:	f140 809b 	bpl.w	80056e4 <__sfvwrite_r+0x1f4>
 80055ae:	42af      	cmp	r7, r5
 80055b0:	46bb      	mov	fp, r7
 80055b2:	f200 80d8 	bhi.w	8005766 <__sfvwrite_r+0x276>
 80055b6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80055ba:	d02f      	beq.n	800561c <__sfvwrite_r+0x12c>
 80055bc:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80055c0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80055c4:	eba0 0b01 	sub.w	fp, r0, r1
 80055c8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80055cc:	1c68      	adds	r0, r5, #1
 80055ce:	107f      	asrs	r7, r7, #1
 80055d0:	4458      	add	r0, fp
 80055d2:	42b8      	cmp	r0, r7
 80055d4:	463a      	mov	r2, r7
 80055d6:	bf84      	itt	hi
 80055d8:	4607      	movhi	r7, r0
 80055da:	463a      	movhi	r2, r7
 80055dc:	055b      	lsls	r3, r3, #21
 80055de:	f140 80d3 	bpl.w	8005788 <__sfvwrite_r+0x298>
 80055e2:	4611      	mov	r1, r2
 80055e4:	4650      	mov	r0, sl
 80055e6:	f000 f9b9 	bl	800595c <_malloc_r>
 80055ea:	2800      	cmp	r0, #0
 80055ec:	f000 80f0 	beq.w	80057d0 <__sfvwrite_r+0x2e0>
 80055f0:	465a      	mov	r2, fp
 80055f2:	6921      	ldr	r1, [r4, #16]
 80055f4:	9001      	str	r0, [sp, #4]
 80055f6:	f7fa ff83 	bl	8000500 <memcpy>
 80055fa:	89a2      	ldrh	r2, [r4, #12]
 80055fc:	9b01      	ldr	r3, [sp, #4]
 80055fe:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005602:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005606:	81a2      	strh	r2, [r4, #12]
 8005608:	eba7 020b 	sub.w	r2, r7, fp
 800560c:	eb03 000b 	add.w	r0, r3, fp
 8005610:	6167      	str	r7, [r4, #20]
 8005612:	6123      	str	r3, [r4, #16]
 8005614:	6020      	str	r0, [r4, #0]
 8005616:	60a2      	str	r2, [r4, #8]
 8005618:	462f      	mov	r7, r5
 800561a:	46ab      	mov	fp, r5
 800561c:	465a      	mov	r2, fp
 800561e:	4649      	mov	r1, r9
 8005620:	f000 fc40 	bl	8005ea4 <memmove>
 8005624:	68a2      	ldr	r2, [r4, #8]
 8005626:	6823      	ldr	r3, [r4, #0]
 8005628:	1bd2      	subs	r2, r2, r7
 800562a:	445b      	add	r3, fp
 800562c:	462f      	mov	r7, r5
 800562e:	60a2      	str	r2, [r4, #8]
 8005630:	6023      	str	r3, [r4, #0]
 8005632:	2500      	movs	r5, #0
 8005634:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005638:	1bdb      	subs	r3, r3, r7
 800563a:	44b9      	add	r9, r7
 800563c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005640:	2b00      	cmp	r3, #0
 8005642:	d039      	beq.n	80056b8 <__sfvwrite_r+0x1c8>
 8005644:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005648:	68a7      	ldr	r7, [r4, #8]
 800564a:	6820      	ldr	r0, [r4, #0]
 800564c:	b29b      	uxth	r3, r3
 800564e:	2d00      	cmp	r5, #0
 8005650:	d1aa      	bne.n	80055a8 <__sfvwrite_r+0xb8>
 8005652:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005656:	3608      	adds	r6, #8
 8005658:	e7a4      	b.n	80055a4 <__sfvwrite_r+0xb4>
 800565a:	4633      	mov	r3, r6
 800565c:	4691      	mov	r9, r2
 800565e:	4610      	mov	r0, r2
 8005660:	4617      	mov	r7, r2
 8005662:	464e      	mov	r6, r9
 8005664:	469b      	mov	fp, r3
 8005666:	2f00      	cmp	r7, #0
 8005668:	d06b      	beq.n	8005742 <__sfvwrite_r+0x252>
 800566a:	2800      	cmp	r0, #0
 800566c:	d071      	beq.n	8005752 <__sfvwrite_r+0x262>
 800566e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005672:	6820      	ldr	r0, [r4, #0]
 8005674:	45b9      	cmp	r9, r7
 8005676:	464b      	mov	r3, r9
 8005678:	bf28      	it	cs
 800567a:	463b      	movcs	r3, r7
 800567c:	4288      	cmp	r0, r1
 800567e:	d903      	bls.n	8005688 <__sfvwrite_r+0x198>
 8005680:	68a5      	ldr	r5, [r4, #8]
 8005682:	4415      	add	r5, r2
 8005684:	42ab      	cmp	r3, r5
 8005686:	dc71      	bgt.n	800576c <__sfvwrite_r+0x27c>
 8005688:	429a      	cmp	r2, r3
 800568a:	f300 8093 	bgt.w	80057b4 <__sfvwrite_r+0x2c4>
 800568e:	4613      	mov	r3, r2
 8005690:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005692:	69e1      	ldr	r1, [r4, #28]
 8005694:	4632      	mov	r2, r6
 8005696:	4650      	mov	r0, sl
 8005698:	47a8      	blx	r5
 800569a:	1e05      	subs	r5, r0, #0
 800569c:	dd18      	ble.n	80056d0 <__sfvwrite_r+0x1e0>
 800569e:	ebb9 0905 	subs.w	r9, r9, r5
 80056a2:	d00f      	beq.n	80056c4 <__sfvwrite_r+0x1d4>
 80056a4:	2001      	movs	r0, #1
 80056a6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80056aa:	1b5b      	subs	r3, r3, r5
 80056ac:	442e      	add	r6, r5
 80056ae:	1b7f      	subs	r7, r7, r5
 80056b0:	f8c8 3008 	str.w	r3, [r8, #8]
 80056b4:	2b00      	cmp	r3, #0
 80056b6:	d1d6      	bne.n	8005666 <__sfvwrite_r+0x176>
 80056b8:	2000      	movs	r0, #0
 80056ba:	b003      	add	sp, #12
 80056bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056c0:	2000      	movs	r0, #0
 80056c2:	4770      	bx	lr
 80056c4:	4621      	mov	r1, r4
 80056c6:	4650      	mov	r0, sl
 80056c8:	f7ff fd20 	bl	800510c <_fflush_r>
 80056cc:	2800      	cmp	r0, #0
 80056ce:	d0ea      	beq.n	80056a6 <__sfvwrite_r+0x1b6>
 80056d0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056d4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80056d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80056dc:	81a3      	strh	r3, [r4, #12]
 80056de:	b003      	add	sp, #12
 80056e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056e4:	6923      	ldr	r3, [r4, #16]
 80056e6:	4283      	cmp	r3, r0
 80056e8:	d315      	bcc.n	8005716 <__sfvwrite_r+0x226>
 80056ea:	6961      	ldr	r1, [r4, #20]
 80056ec:	42a9      	cmp	r1, r5
 80056ee:	d812      	bhi.n	8005716 <__sfvwrite_r+0x226>
 80056f0:	4b3c      	ldr	r3, [pc, #240]	; (80057e4 <__sfvwrite_r+0x2f4>)
 80056f2:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80056f4:	429d      	cmp	r5, r3
 80056f6:	bf94      	ite	ls
 80056f8:	462b      	movls	r3, r5
 80056fa:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80056fe:	464a      	mov	r2, r9
 8005700:	fb93 f3f1 	sdiv	r3, r3, r1
 8005704:	4650      	mov	r0, sl
 8005706:	fb01 f303 	mul.w	r3, r1, r3
 800570a:	69e1      	ldr	r1, [r4, #28]
 800570c:	47b8      	blx	r7
 800570e:	1e07      	subs	r7, r0, #0
 8005710:	ddde      	ble.n	80056d0 <__sfvwrite_r+0x1e0>
 8005712:	1bed      	subs	r5, r5, r7
 8005714:	e78e      	b.n	8005634 <__sfvwrite_r+0x144>
 8005716:	42af      	cmp	r7, r5
 8005718:	bf28      	it	cs
 800571a:	462f      	movcs	r7, r5
 800571c:	463a      	mov	r2, r7
 800571e:	4649      	mov	r1, r9
 8005720:	f000 fbc0 	bl	8005ea4 <memmove>
 8005724:	68a3      	ldr	r3, [r4, #8]
 8005726:	6822      	ldr	r2, [r4, #0]
 8005728:	1bdb      	subs	r3, r3, r7
 800572a:	443a      	add	r2, r7
 800572c:	60a3      	str	r3, [r4, #8]
 800572e:	6022      	str	r2, [r4, #0]
 8005730:	2b00      	cmp	r3, #0
 8005732:	d1ee      	bne.n	8005712 <__sfvwrite_r+0x222>
 8005734:	4621      	mov	r1, r4
 8005736:	4650      	mov	r0, sl
 8005738:	f7ff fce8 	bl	800510c <_fflush_r>
 800573c:	2800      	cmp	r0, #0
 800573e:	d0e8      	beq.n	8005712 <__sfvwrite_r+0x222>
 8005740:	e7c6      	b.n	80056d0 <__sfvwrite_r+0x1e0>
 8005742:	f10b 0308 	add.w	r3, fp, #8
 8005746:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 800574a:	469b      	mov	fp, r3
 800574c:	3308      	adds	r3, #8
 800574e:	2f00      	cmp	r7, #0
 8005750:	d0f9      	beq.n	8005746 <__sfvwrite_r+0x256>
 8005752:	463a      	mov	r2, r7
 8005754:	210a      	movs	r1, #10
 8005756:	4630      	mov	r0, r6
 8005758:	f7fa ffe2 	bl	8000720 <memchr>
 800575c:	b338      	cbz	r0, 80057ae <__sfvwrite_r+0x2be>
 800575e:	3001      	adds	r0, #1
 8005760:	eba0 0906 	sub.w	r9, r0, r6
 8005764:	e783      	b.n	800566e <__sfvwrite_r+0x17e>
 8005766:	462f      	mov	r7, r5
 8005768:	46ab      	mov	fp, r5
 800576a:	e757      	b.n	800561c <__sfvwrite_r+0x12c>
 800576c:	4631      	mov	r1, r6
 800576e:	462a      	mov	r2, r5
 8005770:	f000 fb98 	bl	8005ea4 <memmove>
 8005774:	6823      	ldr	r3, [r4, #0]
 8005776:	442b      	add	r3, r5
 8005778:	6023      	str	r3, [r4, #0]
 800577a:	4621      	mov	r1, r4
 800577c:	4650      	mov	r0, sl
 800577e:	f7ff fcc5 	bl	800510c <_fflush_r>
 8005782:	2800      	cmp	r0, #0
 8005784:	d08b      	beq.n	800569e <__sfvwrite_r+0x1ae>
 8005786:	e7a3      	b.n	80056d0 <__sfvwrite_r+0x1e0>
 8005788:	4650      	mov	r0, sl
 800578a:	f000 ff05 	bl	8006598 <_realloc_r>
 800578e:	4603      	mov	r3, r0
 8005790:	2800      	cmp	r0, #0
 8005792:	f47f af39 	bne.w	8005608 <__sfvwrite_r+0x118>
 8005796:	6921      	ldr	r1, [r4, #16]
 8005798:	4650      	mov	r0, sl
 800579a:	f7ff fdb5 	bl	8005308 <_free_r>
 800579e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057a2:	220c      	movs	r2, #12
 80057a4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 80057a8:	f8ca 2000 	str.w	r2, [sl]
 80057ac:	e792      	b.n	80056d4 <__sfvwrite_r+0x1e4>
 80057ae:	f107 0901 	add.w	r9, r7, #1
 80057b2:	e75c      	b.n	800566e <__sfvwrite_r+0x17e>
 80057b4:	461a      	mov	r2, r3
 80057b6:	4631      	mov	r1, r6
 80057b8:	9301      	str	r3, [sp, #4]
 80057ba:	f000 fb73 	bl	8005ea4 <memmove>
 80057be:	9b01      	ldr	r3, [sp, #4]
 80057c0:	68a1      	ldr	r1, [r4, #8]
 80057c2:	6822      	ldr	r2, [r4, #0]
 80057c4:	1ac9      	subs	r1, r1, r3
 80057c6:	441a      	add	r2, r3
 80057c8:	60a1      	str	r1, [r4, #8]
 80057ca:	6022      	str	r2, [r4, #0]
 80057cc:	461d      	mov	r5, r3
 80057ce:	e766      	b.n	800569e <__sfvwrite_r+0x1ae>
 80057d0:	230c      	movs	r3, #12
 80057d2:	f8ca 3000 	str.w	r3, [sl]
 80057d6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80057da:	e77b      	b.n	80056d4 <__sfvwrite_r+0x1e4>
 80057dc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80057e0:	e76b      	b.n	80056ba <__sfvwrite_r+0x1ca>
 80057e2:	bf00      	nop
 80057e4:	7ffffffe 	.word	0x7ffffffe
 80057e8:	7ffffc00 	.word	0x7ffffc00

080057ec <_fwalk_reent>:
 80057ec:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80057f0:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80057f4:	d01f      	beq.n	8005836 <_fwalk_reent+0x4a>
 80057f6:	4688      	mov	r8, r1
 80057f8:	4606      	mov	r6, r0
 80057fa:	f04f 0900 	mov.w	r9, #0
 80057fe:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005802:	3d01      	subs	r5, #1
 8005804:	d411      	bmi.n	800582a <_fwalk_reent+0x3e>
 8005806:	89a3      	ldrh	r3, [r4, #12]
 8005808:	2b01      	cmp	r3, #1
 800580a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800580e:	4621      	mov	r1, r4
 8005810:	4630      	mov	r0, r6
 8005812:	d906      	bls.n	8005822 <_fwalk_reent+0x36>
 8005814:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005818:	3301      	adds	r3, #1
 800581a:	d002      	beq.n	8005822 <_fwalk_reent+0x36>
 800581c:	47c0      	blx	r8
 800581e:	ea49 0900 	orr.w	r9, r9, r0
 8005822:	1c6b      	adds	r3, r5, #1
 8005824:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005828:	d1ed      	bne.n	8005806 <_fwalk_reent+0x1a>
 800582a:	683f      	ldr	r7, [r7, #0]
 800582c:	2f00      	cmp	r7, #0
 800582e:	d1e6      	bne.n	80057fe <_fwalk_reent+0x12>
 8005830:	4648      	mov	r0, r9
 8005832:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005836:	46b9      	mov	r9, r7
 8005838:	4648      	mov	r0, r9
 800583a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800583e:	bf00      	nop

08005840 <_localeconv_r>:
 8005840:	4a04      	ldr	r2, [pc, #16]	; (8005854 <_localeconv_r+0x14>)
 8005842:	4b05      	ldr	r3, [pc, #20]	; (8005858 <_localeconv_r+0x18>)
 8005844:	6812      	ldr	r2, [r2, #0]
 8005846:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005848:	2800      	cmp	r0, #0
 800584a:	bf08      	it	eq
 800584c:	4618      	moveq	r0, r3
 800584e:	30f0      	adds	r0, #240	; 0xf0
 8005850:	4770      	bx	lr
 8005852:	bf00      	nop
 8005854:	20000018 	.word	0x20000018
 8005858:	2000085c 	.word	0x2000085c

0800585c <__retarget_lock_init_recursive>:
 800585c:	4770      	bx	lr
 800585e:	bf00      	nop

08005860 <__retarget_lock_close_recursive>:
 8005860:	4770      	bx	lr
 8005862:	bf00      	nop

08005864 <__retarget_lock_acquire_recursive>:
 8005864:	4770      	bx	lr
 8005866:	bf00      	nop

08005868 <__retarget_lock_release_recursive>:
 8005868:	4770      	bx	lr
 800586a:	bf00      	nop

0800586c <__swhatbuf_r>:
 800586c:	b570      	push	{r4, r5, r6, lr}
 800586e:	460c      	mov	r4, r1
 8005870:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005874:	2900      	cmp	r1, #0
 8005876:	b096      	sub	sp, #88	; 0x58
 8005878:	4615      	mov	r5, r2
 800587a:	461e      	mov	r6, r3
 800587c:	da0f      	bge.n	800589e <__swhatbuf_r+0x32>
 800587e:	89a2      	ldrh	r2, [r4, #12]
 8005880:	2300      	movs	r3, #0
 8005882:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005886:	6033      	str	r3, [r6, #0]
 8005888:	d104      	bne.n	8005894 <__swhatbuf_r+0x28>
 800588a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800588e:	602b      	str	r3, [r5, #0]
 8005890:	b016      	add	sp, #88	; 0x58
 8005892:	bd70      	pop	{r4, r5, r6, pc}
 8005894:	2240      	movs	r2, #64	; 0x40
 8005896:	4618      	mov	r0, r3
 8005898:	602a      	str	r2, [r5, #0]
 800589a:	b016      	add	sp, #88	; 0x58
 800589c:	bd70      	pop	{r4, r5, r6, pc}
 800589e:	466a      	mov	r2, sp
 80058a0:	f001 fad0 	bl	8006e44 <_fstat_r>
 80058a4:	2800      	cmp	r0, #0
 80058a6:	dbea      	blt.n	800587e <__swhatbuf_r+0x12>
 80058a8:	9b01      	ldr	r3, [sp, #4]
 80058aa:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 80058ae:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 80058b2:	fab3 f383 	clz	r3, r3
 80058b6:	095b      	lsrs	r3, r3, #5
 80058b8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 80058bc:	f44f 6000 	mov.w	r0, #2048	; 0x800
 80058c0:	6033      	str	r3, [r6, #0]
 80058c2:	602a      	str	r2, [r5, #0]
 80058c4:	b016      	add	sp, #88	; 0x58
 80058c6:	bd70      	pop	{r4, r5, r6, pc}

080058c8 <__smakebuf_r>:
 80058c8:	898a      	ldrh	r2, [r1, #12]
 80058ca:	0792      	lsls	r2, r2, #30
 80058cc:	460b      	mov	r3, r1
 80058ce:	d506      	bpl.n	80058de <__smakebuf_r+0x16>
 80058d0:	f101 0243 	add.w	r2, r1, #67	; 0x43
 80058d4:	2101      	movs	r1, #1
 80058d6:	601a      	str	r2, [r3, #0]
 80058d8:	e9c3 2104 	strd	r2, r1, [r3, #16]
 80058dc:	4770      	bx	lr
 80058de:	b570      	push	{r4, r5, r6, lr}
 80058e0:	b082      	sub	sp, #8
 80058e2:	ab01      	add	r3, sp, #4
 80058e4:	466a      	mov	r2, sp
 80058e6:	460c      	mov	r4, r1
 80058e8:	4605      	mov	r5, r0
 80058ea:	f7ff ffbf 	bl	800586c <__swhatbuf_r>
 80058ee:	9900      	ldr	r1, [sp, #0]
 80058f0:	4606      	mov	r6, r0
 80058f2:	4628      	mov	r0, r5
 80058f4:	f000 f832 	bl	800595c <_malloc_r>
 80058f8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058fc:	b1d8      	cbz	r0, 8005936 <__smakebuf_r+0x6e>
 80058fe:	4916      	ldr	r1, [pc, #88]	; (8005958 <__smakebuf_r+0x90>)
 8005900:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005902:	9a01      	ldr	r2, [sp, #4]
 8005904:	9900      	ldr	r1, [sp, #0]
 8005906:	6020      	str	r0, [r4, #0]
 8005908:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800590c:	81a3      	strh	r3, [r4, #12]
 800590e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005912:	b91a      	cbnz	r2, 800591c <__smakebuf_r+0x54>
 8005914:	4333      	orrs	r3, r6
 8005916:	81a3      	strh	r3, [r4, #12]
 8005918:	b002      	add	sp, #8
 800591a:	bd70      	pop	{r4, r5, r6, pc}
 800591c:	4628      	mov	r0, r5
 800591e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005922:	f001 faa3 	bl	8006e6c <_isatty_r>
 8005926:	b1a0      	cbz	r0, 8005952 <__smakebuf_r+0x8a>
 8005928:	89a3      	ldrh	r3, [r4, #12]
 800592a:	f023 0303 	bic.w	r3, r3, #3
 800592e:	f043 0301 	orr.w	r3, r3, #1
 8005932:	b21b      	sxth	r3, r3
 8005934:	e7ee      	b.n	8005914 <__smakebuf_r+0x4c>
 8005936:	059a      	lsls	r2, r3, #22
 8005938:	d4ee      	bmi.n	8005918 <__smakebuf_r+0x50>
 800593a:	f023 0303 	bic.w	r3, r3, #3
 800593e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005942:	f043 0302 	orr.w	r3, r3, #2
 8005946:	2101      	movs	r1, #1
 8005948:	81a3      	strh	r3, [r4, #12]
 800594a:	6022      	str	r2, [r4, #0]
 800594c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005950:	e7e2      	b.n	8005918 <__smakebuf_r+0x50>
 8005952:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005956:	e7dd      	b.n	8005914 <__smakebuf_r+0x4c>
 8005958:	080051b9 	.word	0x080051b9

0800595c <_malloc_r>:
 800595c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005960:	f101 050b 	add.w	r5, r1, #11
 8005964:	2d16      	cmp	r5, #22
 8005966:	b083      	sub	sp, #12
 8005968:	4606      	mov	r6, r0
 800596a:	d823      	bhi.n	80059b4 <_malloc_r+0x58>
 800596c:	2910      	cmp	r1, #16
 800596e:	f200 80b9 	bhi.w	8005ae4 <_malloc_r+0x188>
 8005972:	f000 fafb 	bl	8005f6c <__malloc_lock>
 8005976:	2510      	movs	r5, #16
 8005978:	2318      	movs	r3, #24
 800597a:	2002      	movs	r0, #2
 800597c:	4fc5      	ldr	r7, [pc, #788]	; (8005c94 <_malloc_r+0x338>)
 800597e:	443b      	add	r3, r7
 8005980:	f1a3 0208 	sub.w	r2, r3, #8
 8005984:	685c      	ldr	r4, [r3, #4]
 8005986:	4294      	cmp	r4, r2
 8005988:	f000 8166 	beq.w	8005c58 <_malloc_r+0x2fc>
 800598c:	6863      	ldr	r3, [r4, #4]
 800598e:	f023 0303 	bic.w	r3, r3, #3
 8005992:	4423      	add	r3, r4
 8005994:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005998:	685a      	ldr	r2, [r3, #4]
 800599a:	60e9      	str	r1, [r5, #12]
 800599c:	f042 0201 	orr.w	r2, r2, #1
 80059a0:	608d      	str	r5, [r1, #8]
 80059a2:	4630      	mov	r0, r6
 80059a4:	605a      	str	r2, [r3, #4]
 80059a6:	f000 fae7 	bl	8005f78 <__malloc_unlock>
 80059aa:	3408      	adds	r4, #8
 80059ac:	4620      	mov	r0, r4
 80059ae:	b003      	add	sp, #12
 80059b0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059b4:	f035 0507 	bics.w	r5, r5, #7
 80059b8:	f100 8094 	bmi.w	8005ae4 <_malloc_r+0x188>
 80059bc:	42a9      	cmp	r1, r5
 80059be:	f200 8091 	bhi.w	8005ae4 <_malloc_r+0x188>
 80059c2:	f000 fad3 	bl	8005f6c <__malloc_lock>
 80059c6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 80059ca:	f0c0 8183 	bcc.w	8005cd4 <_malloc_r+0x378>
 80059ce:	0a6b      	lsrs	r3, r5, #9
 80059d0:	f000 808f 	beq.w	8005af2 <_malloc_r+0x196>
 80059d4:	2b04      	cmp	r3, #4
 80059d6:	f200 8146 	bhi.w	8005c66 <_malloc_r+0x30a>
 80059da:	09ab      	lsrs	r3, r5, #6
 80059dc:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80059e0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80059e4:	00c3      	lsls	r3, r0, #3
 80059e6:	4fab      	ldr	r7, [pc, #684]	; (8005c94 <_malloc_r+0x338>)
 80059e8:	443b      	add	r3, r7
 80059ea:	f1a3 0108 	sub.w	r1, r3, #8
 80059ee:	685c      	ldr	r4, [r3, #4]
 80059f0:	42a1      	cmp	r1, r4
 80059f2:	d106      	bne.n	8005a02 <_malloc_r+0xa6>
 80059f4:	e00c      	b.n	8005a10 <_malloc_r+0xb4>
 80059f6:	2a00      	cmp	r2, #0
 80059f8:	f280 811d 	bge.w	8005c36 <_malloc_r+0x2da>
 80059fc:	68e4      	ldr	r4, [r4, #12]
 80059fe:	42a1      	cmp	r1, r4
 8005a00:	d006      	beq.n	8005a10 <_malloc_r+0xb4>
 8005a02:	6863      	ldr	r3, [r4, #4]
 8005a04:	f023 0303 	bic.w	r3, r3, #3
 8005a08:	1b5a      	subs	r2, r3, r5
 8005a0a:	2a0f      	cmp	r2, #15
 8005a0c:	ddf3      	ble.n	80059f6 <_malloc_r+0x9a>
 8005a0e:	4660      	mov	r0, ip
 8005a10:	693c      	ldr	r4, [r7, #16]
 8005a12:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005ca8 <_malloc_r+0x34c>
 8005a16:	4564      	cmp	r4, ip
 8005a18:	d071      	beq.n	8005afe <_malloc_r+0x1a2>
 8005a1a:	6863      	ldr	r3, [r4, #4]
 8005a1c:	f023 0303 	bic.w	r3, r3, #3
 8005a20:	1b5a      	subs	r2, r3, r5
 8005a22:	2a0f      	cmp	r2, #15
 8005a24:	f300 8144 	bgt.w	8005cb0 <_malloc_r+0x354>
 8005a28:	2a00      	cmp	r2, #0
 8005a2a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005a2e:	f280 8126 	bge.w	8005c7e <_malloc_r+0x322>
 8005a32:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005a36:	f080 8169 	bcs.w	8005d0c <_malloc_r+0x3b0>
 8005a3a:	08db      	lsrs	r3, r3, #3
 8005a3c:	1c59      	adds	r1, r3, #1
 8005a3e:	687a      	ldr	r2, [r7, #4]
 8005a40:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005a44:	f8c4 8008 	str.w	r8, [r4, #8]
 8005a48:	f04f 0e01 	mov.w	lr, #1
 8005a4c:	109b      	asrs	r3, r3, #2
 8005a4e:	fa0e f303 	lsl.w	r3, lr, r3
 8005a52:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005a56:	4313      	orrs	r3, r2
 8005a58:	f1ae 0208 	sub.w	r2, lr, #8
 8005a5c:	60e2      	str	r2, [r4, #12]
 8005a5e:	607b      	str	r3, [r7, #4]
 8005a60:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005a64:	f8c8 400c 	str.w	r4, [r8, #12]
 8005a68:	1082      	asrs	r2, r0, #2
 8005a6a:	2401      	movs	r4, #1
 8005a6c:	4094      	lsls	r4, r2
 8005a6e:	429c      	cmp	r4, r3
 8005a70:	d84b      	bhi.n	8005b0a <_malloc_r+0x1ae>
 8005a72:	421c      	tst	r4, r3
 8005a74:	d106      	bne.n	8005a84 <_malloc_r+0x128>
 8005a76:	f020 0003 	bic.w	r0, r0, #3
 8005a7a:	0064      	lsls	r4, r4, #1
 8005a7c:	421c      	tst	r4, r3
 8005a7e:	f100 0004 	add.w	r0, r0, #4
 8005a82:	d0fa      	beq.n	8005a7a <_malloc_r+0x11e>
 8005a84:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005a88:	46ce      	mov	lr, r9
 8005a8a:	4680      	mov	r8, r0
 8005a8c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005a90:	459e      	cmp	lr, r3
 8005a92:	d107      	bne.n	8005aa4 <_malloc_r+0x148>
 8005a94:	e122      	b.n	8005cdc <_malloc_r+0x380>
 8005a96:	2a00      	cmp	r2, #0
 8005a98:	f280 8129 	bge.w	8005cee <_malloc_r+0x392>
 8005a9c:	68db      	ldr	r3, [r3, #12]
 8005a9e:	459e      	cmp	lr, r3
 8005aa0:	f000 811c 	beq.w	8005cdc <_malloc_r+0x380>
 8005aa4:	6859      	ldr	r1, [r3, #4]
 8005aa6:	f021 0103 	bic.w	r1, r1, #3
 8005aaa:	1b4a      	subs	r2, r1, r5
 8005aac:	2a0f      	cmp	r2, #15
 8005aae:	ddf2      	ble.n	8005a96 <_malloc_r+0x13a>
 8005ab0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005ab4:	195c      	adds	r4, r3, r5
 8005ab6:	f045 0501 	orr.w	r5, r5, #1
 8005aba:	605d      	str	r5, [r3, #4]
 8005abc:	f042 0501 	orr.w	r5, r2, #1
 8005ac0:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005ac4:	4630      	mov	r0, r6
 8005ac6:	f8ce 8008 	str.w	r8, [lr, #8]
 8005aca:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005ace:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005ad2:	6065      	str	r5, [r4, #4]
 8005ad4:	505a      	str	r2, [r3, r1]
 8005ad6:	9301      	str	r3, [sp, #4]
 8005ad8:	f000 fa4e 	bl	8005f78 <__malloc_unlock>
 8005adc:	9b01      	ldr	r3, [sp, #4]
 8005ade:	f103 0408 	add.w	r4, r3, #8
 8005ae2:	e763      	b.n	80059ac <_malloc_r+0x50>
 8005ae4:	2400      	movs	r4, #0
 8005ae6:	230c      	movs	r3, #12
 8005ae8:	4620      	mov	r0, r4
 8005aea:	6033      	str	r3, [r6, #0]
 8005aec:	b003      	add	sp, #12
 8005aee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005af2:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005af6:	2040      	movs	r0, #64	; 0x40
 8005af8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005afc:	e773      	b.n	80059e6 <_malloc_r+0x8a>
 8005afe:	687b      	ldr	r3, [r7, #4]
 8005b00:	1082      	asrs	r2, r0, #2
 8005b02:	2401      	movs	r4, #1
 8005b04:	4094      	lsls	r4, r2
 8005b06:	429c      	cmp	r4, r3
 8005b08:	d9b3      	bls.n	8005a72 <_malloc_r+0x116>
 8005b0a:	68bc      	ldr	r4, [r7, #8]
 8005b0c:	6863      	ldr	r3, [r4, #4]
 8005b0e:	f023 0903 	bic.w	r9, r3, #3
 8005b12:	45a9      	cmp	r9, r5
 8005b14:	d303      	bcc.n	8005b1e <_malloc_r+0x1c2>
 8005b16:	eba9 0305 	sub.w	r3, r9, r5
 8005b1a:	2b0f      	cmp	r3, #15
 8005b1c:	dc7b      	bgt.n	8005c16 <_malloc_r+0x2ba>
 8005b1e:	4b5e      	ldr	r3, [pc, #376]	; (8005c98 <_malloc_r+0x33c>)
 8005b20:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005cac <_malloc_r+0x350>
 8005b24:	681a      	ldr	r2, [r3, #0]
 8005b26:	f8da 3000 	ldr.w	r3, [sl]
 8005b2a:	3301      	adds	r3, #1
 8005b2c:	eb05 0802 	add.w	r8, r5, r2
 8005b30:	f000 8148 	beq.w	8005dc4 <_malloc_r+0x468>
 8005b34:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005b38:	f108 080f 	add.w	r8, r8, #15
 8005b3c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005b40:	f028 080f 	bic.w	r8, r8, #15
 8005b44:	4641      	mov	r1, r8
 8005b46:	4630      	mov	r0, r6
 8005b48:	f000 ff08 	bl	800695c <_sbrk_r>
 8005b4c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005b50:	4683      	mov	fp, r0
 8005b52:	f000 8104 	beq.w	8005d5e <_malloc_r+0x402>
 8005b56:	eb04 0009 	add.w	r0, r4, r9
 8005b5a:	4558      	cmp	r0, fp
 8005b5c:	f200 80fd 	bhi.w	8005d5a <_malloc_r+0x3fe>
 8005b60:	4a4e      	ldr	r2, [pc, #312]	; (8005c9c <_malloc_r+0x340>)
 8005b62:	6813      	ldr	r3, [r2, #0]
 8005b64:	4443      	add	r3, r8
 8005b66:	6013      	str	r3, [r2, #0]
 8005b68:	f000 814d 	beq.w	8005e06 <_malloc_r+0x4aa>
 8005b6c:	f8da 1000 	ldr.w	r1, [sl]
 8005b70:	3101      	adds	r1, #1
 8005b72:	bf1b      	ittet	ne
 8005b74:	ebab 0000 	subne.w	r0, fp, r0
 8005b78:	181b      	addne	r3, r3, r0
 8005b7a:	f8ca b000 	streq.w	fp, [sl]
 8005b7e:	6013      	strne	r3, [r2, #0]
 8005b80:	f01b 0307 	ands.w	r3, fp, #7
 8005b84:	f000 8134 	beq.w	8005df0 <_malloc_r+0x494>
 8005b88:	f1c3 0108 	rsb	r1, r3, #8
 8005b8c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005b90:	448b      	add	fp, r1
 8005b92:	3308      	adds	r3, #8
 8005b94:	44d8      	add	r8, fp
 8005b96:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005b9a:	eba3 0808 	sub.w	r8, r3, r8
 8005b9e:	4641      	mov	r1, r8
 8005ba0:	4630      	mov	r0, r6
 8005ba2:	9201      	str	r2, [sp, #4]
 8005ba4:	f000 feda 	bl	800695c <_sbrk_r>
 8005ba8:	1c43      	adds	r3, r0, #1
 8005baa:	9a01      	ldr	r2, [sp, #4]
 8005bac:	f000 8146 	beq.w	8005e3c <_malloc_r+0x4e0>
 8005bb0:	eba0 010b 	sub.w	r1, r0, fp
 8005bb4:	4441      	add	r1, r8
 8005bb6:	f041 0101 	orr.w	r1, r1, #1
 8005bba:	6813      	ldr	r3, [r2, #0]
 8005bbc:	f8c7 b008 	str.w	fp, [r7, #8]
 8005bc0:	4443      	add	r3, r8
 8005bc2:	42bc      	cmp	r4, r7
 8005bc4:	f8cb 1004 	str.w	r1, [fp, #4]
 8005bc8:	6013      	str	r3, [r2, #0]
 8005bca:	d015      	beq.n	8005bf8 <_malloc_r+0x29c>
 8005bcc:	f1b9 0f0f 	cmp.w	r9, #15
 8005bd0:	f240 8130 	bls.w	8005e34 <_malloc_r+0x4d8>
 8005bd4:	6860      	ldr	r0, [r4, #4]
 8005bd6:	f1a9 010c 	sub.w	r1, r9, #12
 8005bda:	f021 0107 	bic.w	r1, r1, #7
 8005bde:	f000 0001 	and.w	r0, r0, #1
 8005be2:	eb04 0c01 	add.w	ip, r4, r1
 8005be6:	4308      	orrs	r0, r1
 8005be8:	f04f 0e05 	mov.w	lr, #5
 8005bec:	290f      	cmp	r1, #15
 8005bee:	6060      	str	r0, [r4, #4]
 8005bf0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005bf4:	f200 813a 	bhi.w	8005e6c <_malloc_r+0x510>
 8005bf8:	4a29      	ldr	r2, [pc, #164]	; (8005ca0 <_malloc_r+0x344>)
 8005bfa:	482a      	ldr	r0, [pc, #168]	; (8005ca4 <_malloc_r+0x348>)
 8005bfc:	6811      	ldr	r1, [r2, #0]
 8005bfe:	68bc      	ldr	r4, [r7, #8]
 8005c00:	428b      	cmp	r3, r1
 8005c02:	6801      	ldr	r1, [r0, #0]
 8005c04:	bf88      	it	hi
 8005c06:	6013      	strhi	r3, [r2, #0]
 8005c08:	6862      	ldr	r2, [r4, #4]
 8005c0a:	428b      	cmp	r3, r1
 8005c0c:	f022 0203 	bic.w	r2, r2, #3
 8005c10:	bf88      	it	hi
 8005c12:	6003      	strhi	r3, [r0, #0]
 8005c14:	e0a7      	b.n	8005d66 <_malloc_r+0x40a>
 8005c16:	1962      	adds	r2, r4, r5
 8005c18:	f043 0301 	orr.w	r3, r3, #1
 8005c1c:	f045 0501 	orr.w	r5, r5, #1
 8005c20:	6065      	str	r5, [r4, #4]
 8005c22:	4630      	mov	r0, r6
 8005c24:	60ba      	str	r2, [r7, #8]
 8005c26:	6053      	str	r3, [r2, #4]
 8005c28:	f000 f9a6 	bl	8005f78 <__malloc_unlock>
 8005c2c:	3408      	adds	r4, #8
 8005c2e:	4620      	mov	r0, r4
 8005c30:	b003      	add	sp, #12
 8005c32:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c36:	4423      	add	r3, r4
 8005c38:	68e1      	ldr	r1, [r4, #12]
 8005c3a:	685a      	ldr	r2, [r3, #4]
 8005c3c:	68a5      	ldr	r5, [r4, #8]
 8005c3e:	f042 0201 	orr.w	r2, r2, #1
 8005c42:	60e9      	str	r1, [r5, #12]
 8005c44:	4630      	mov	r0, r6
 8005c46:	608d      	str	r5, [r1, #8]
 8005c48:	605a      	str	r2, [r3, #4]
 8005c4a:	f000 f995 	bl	8005f78 <__malloc_unlock>
 8005c4e:	3408      	adds	r4, #8
 8005c50:	4620      	mov	r0, r4
 8005c52:	b003      	add	sp, #12
 8005c54:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c58:	68dc      	ldr	r4, [r3, #12]
 8005c5a:	42a3      	cmp	r3, r4
 8005c5c:	bf08      	it	eq
 8005c5e:	3002      	addeq	r0, #2
 8005c60:	f43f aed6 	beq.w	8005a10 <_malloc_r+0xb4>
 8005c64:	e692      	b.n	800598c <_malloc_r+0x30>
 8005c66:	2b14      	cmp	r3, #20
 8005c68:	d971      	bls.n	8005d4e <_malloc_r+0x3f2>
 8005c6a:	2b54      	cmp	r3, #84	; 0x54
 8005c6c:	f200 80ad 	bhi.w	8005dca <_malloc_r+0x46e>
 8005c70:	0b2b      	lsrs	r3, r5, #12
 8005c72:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005c76:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005c7a:	00c3      	lsls	r3, r0, #3
 8005c7c:	e6b3      	b.n	80059e6 <_malloc_r+0x8a>
 8005c7e:	4423      	add	r3, r4
 8005c80:	4630      	mov	r0, r6
 8005c82:	685a      	ldr	r2, [r3, #4]
 8005c84:	f042 0201 	orr.w	r2, r2, #1
 8005c88:	605a      	str	r2, [r3, #4]
 8005c8a:	3408      	adds	r4, #8
 8005c8c:	f000 f974 	bl	8005f78 <__malloc_unlock>
 8005c90:	e68c      	b.n	80059ac <_malloc_r+0x50>
 8005c92:	bf00      	nop
 8005c94:	2000044c 	.word	0x2000044c
 8005c98:	20000aac 	.word	0x20000aac
 8005c9c:	20000a7c 	.word	0x20000a7c
 8005ca0:	20000aa4 	.word	0x20000aa4
 8005ca4:	20000aa8 	.word	0x20000aa8
 8005ca8:	20000454 	.word	0x20000454
 8005cac:	20000854 	.word	0x20000854
 8005cb0:	1961      	adds	r1, r4, r5
 8005cb2:	f045 0e01 	orr.w	lr, r5, #1
 8005cb6:	f042 0501 	orr.w	r5, r2, #1
 8005cba:	f8c4 e004 	str.w	lr, [r4, #4]
 8005cbe:	4630      	mov	r0, r6
 8005cc0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005cc4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005cc8:	604d      	str	r5, [r1, #4]
 8005cca:	50e2      	str	r2, [r4, r3]
 8005ccc:	f000 f954 	bl	8005f78 <__malloc_unlock>
 8005cd0:	3408      	adds	r4, #8
 8005cd2:	e66b      	b.n	80059ac <_malloc_r+0x50>
 8005cd4:	08e8      	lsrs	r0, r5, #3
 8005cd6:	f105 0308 	add.w	r3, r5, #8
 8005cda:	e64f      	b.n	800597c <_malloc_r+0x20>
 8005cdc:	f108 0801 	add.w	r8, r8, #1
 8005ce0:	f018 0f03 	tst.w	r8, #3
 8005ce4:	f10e 0e08 	add.w	lr, lr, #8
 8005ce8:	f47f aed0 	bne.w	8005a8c <_malloc_r+0x130>
 8005cec:	e052      	b.n	8005d94 <_malloc_r+0x438>
 8005cee:	4419      	add	r1, r3
 8005cf0:	461c      	mov	r4, r3
 8005cf2:	684a      	ldr	r2, [r1, #4]
 8005cf4:	68db      	ldr	r3, [r3, #12]
 8005cf6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005cfa:	f042 0201 	orr.w	r2, r2, #1
 8005cfe:	604a      	str	r2, [r1, #4]
 8005d00:	4630      	mov	r0, r6
 8005d02:	60eb      	str	r3, [r5, #12]
 8005d04:	609d      	str	r5, [r3, #8]
 8005d06:	f000 f937 	bl	8005f78 <__malloc_unlock>
 8005d0a:	e64f      	b.n	80059ac <_malloc_r+0x50>
 8005d0c:	0a5a      	lsrs	r2, r3, #9
 8005d0e:	2a04      	cmp	r2, #4
 8005d10:	d935      	bls.n	8005d7e <_malloc_r+0x422>
 8005d12:	2a14      	cmp	r2, #20
 8005d14:	d86f      	bhi.n	8005df6 <_malloc_r+0x49a>
 8005d16:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005d1a:	00c9      	lsls	r1, r1, #3
 8005d1c:	325b      	adds	r2, #91	; 0x5b
 8005d1e:	eb07 0e01 	add.w	lr, r7, r1
 8005d22:	5879      	ldr	r1, [r7, r1]
 8005d24:	f1ae 0e08 	sub.w	lr, lr, #8
 8005d28:	458e      	cmp	lr, r1
 8005d2a:	d058      	beq.n	8005dde <_malloc_r+0x482>
 8005d2c:	684a      	ldr	r2, [r1, #4]
 8005d2e:	f022 0203 	bic.w	r2, r2, #3
 8005d32:	429a      	cmp	r2, r3
 8005d34:	d902      	bls.n	8005d3c <_malloc_r+0x3e0>
 8005d36:	6889      	ldr	r1, [r1, #8]
 8005d38:	458e      	cmp	lr, r1
 8005d3a:	d1f7      	bne.n	8005d2c <_malloc_r+0x3d0>
 8005d3c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005d40:	687b      	ldr	r3, [r7, #4]
 8005d42:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005d46:	f8ce 4008 	str.w	r4, [lr, #8]
 8005d4a:	60cc      	str	r4, [r1, #12]
 8005d4c:	e68c      	b.n	8005a68 <_malloc_r+0x10c>
 8005d4e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005d52:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005d56:	00c3      	lsls	r3, r0, #3
 8005d58:	e645      	b.n	80059e6 <_malloc_r+0x8a>
 8005d5a:	42bc      	cmp	r4, r7
 8005d5c:	d072      	beq.n	8005e44 <_malloc_r+0x4e8>
 8005d5e:	68bc      	ldr	r4, [r7, #8]
 8005d60:	6862      	ldr	r2, [r4, #4]
 8005d62:	f022 0203 	bic.w	r2, r2, #3
 8005d66:	4295      	cmp	r5, r2
 8005d68:	eba2 0305 	sub.w	r3, r2, r5
 8005d6c:	d802      	bhi.n	8005d74 <_malloc_r+0x418>
 8005d6e:	2b0f      	cmp	r3, #15
 8005d70:	f73f af51 	bgt.w	8005c16 <_malloc_r+0x2ba>
 8005d74:	4630      	mov	r0, r6
 8005d76:	f000 f8ff 	bl	8005f78 <__malloc_unlock>
 8005d7a:	2400      	movs	r4, #0
 8005d7c:	e616      	b.n	80059ac <_malloc_r+0x50>
 8005d7e:	099a      	lsrs	r2, r3, #6
 8005d80:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005d84:	00c9      	lsls	r1, r1, #3
 8005d86:	3238      	adds	r2, #56	; 0x38
 8005d88:	e7c9      	b.n	8005d1e <_malloc_r+0x3c2>
 8005d8a:	f8d9 9000 	ldr.w	r9, [r9]
 8005d8e:	4599      	cmp	r9, r3
 8005d90:	f040 8083 	bne.w	8005e9a <_malloc_r+0x53e>
 8005d94:	f010 0f03 	tst.w	r0, #3
 8005d98:	f1a9 0308 	sub.w	r3, r9, #8
 8005d9c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005da0:	d1f3      	bne.n	8005d8a <_malloc_r+0x42e>
 8005da2:	687b      	ldr	r3, [r7, #4]
 8005da4:	ea23 0304 	bic.w	r3, r3, r4
 8005da8:	607b      	str	r3, [r7, #4]
 8005daa:	0064      	lsls	r4, r4, #1
 8005dac:	429c      	cmp	r4, r3
 8005dae:	f63f aeac 	bhi.w	8005b0a <_malloc_r+0x1ae>
 8005db2:	b91c      	cbnz	r4, 8005dbc <_malloc_r+0x460>
 8005db4:	e6a9      	b.n	8005b0a <_malloc_r+0x1ae>
 8005db6:	0064      	lsls	r4, r4, #1
 8005db8:	f108 0804 	add.w	r8, r8, #4
 8005dbc:	421c      	tst	r4, r3
 8005dbe:	d0fa      	beq.n	8005db6 <_malloc_r+0x45a>
 8005dc0:	4640      	mov	r0, r8
 8005dc2:	e65f      	b.n	8005a84 <_malloc_r+0x128>
 8005dc4:	f108 0810 	add.w	r8, r8, #16
 8005dc8:	e6bc      	b.n	8005b44 <_malloc_r+0x1e8>
 8005dca:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005dce:	d826      	bhi.n	8005e1e <_malloc_r+0x4c2>
 8005dd0:	0beb      	lsrs	r3, r5, #15
 8005dd2:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005dd6:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005dda:	00c3      	lsls	r3, r0, #3
 8005ddc:	e603      	b.n	80059e6 <_malloc_r+0x8a>
 8005dde:	687b      	ldr	r3, [r7, #4]
 8005de0:	1092      	asrs	r2, r2, #2
 8005de2:	f04f 0801 	mov.w	r8, #1
 8005de6:	fa08 f202 	lsl.w	r2, r8, r2
 8005dea:	4313      	orrs	r3, r2
 8005dec:	607b      	str	r3, [r7, #4]
 8005dee:	e7a8      	b.n	8005d42 <_malloc_r+0x3e6>
 8005df0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005df4:	e6ce      	b.n	8005b94 <_malloc_r+0x238>
 8005df6:	2a54      	cmp	r2, #84	; 0x54
 8005df8:	d829      	bhi.n	8005e4e <_malloc_r+0x4f2>
 8005dfa:	0b1a      	lsrs	r2, r3, #12
 8005dfc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005e00:	00c9      	lsls	r1, r1, #3
 8005e02:	326e      	adds	r2, #110	; 0x6e
 8005e04:	e78b      	b.n	8005d1e <_malloc_r+0x3c2>
 8005e06:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005e0a:	2900      	cmp	r1, #0
 8005e0c:	f47f aeae 	bne.w	8005b6c <_malloc_r+0x210>
 8005e10:	eb09 0208 	add.w	r2, r9, r8
 8005e14:	68b9      	ldr	r1, [r7, #8]
 8005e16:	f042 0201 	orr.w	r2, r2, #1
 8005e1a:	604a      	str	r2, [r1, #4]
 8005e1c:	e6ec      	b.n	8005bf8 <_malloc_r+0x29c>
 8005e1e:	f240 5254 	movw	r2, #1364	; 0x554
 8005e22:	4293      	cmp	r3, r2
 8005e24:	d81c      	bhi.n	8005e60 <_malloc_r+0x504>
 8005e26:	0cab      	lsrs	r3, r5, #18
 8005e28:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005e2c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005e30:	00c3      	lsls	r3, r0, #3
 8005e32:	e5d8      	b.n	80059e6 <_malloc_r+0x8a>
 8005e34:	2301      	movs	r3, #1
 8005e36:	f8cb 3004 	str.w	r3, [fp, #4]
 8005e3a:	e79b      	b.n	8005d74 <_malloc_r+0x418>
 8005e3c:	2101      	movs	r1, #1
 8005e3e:	f04f 0800 	mov.w	r8, #0
 8005e42:	e6ba      	b.n	8005bba <_malloc_r+0x25e>
 8005e44:	4a16      	ldr	r2, [pc, #88]	; (8005ea0 <_malloc_r+0x544>)
 8005e46:	6813      	ldr	r3, [r2, #0]
 8005e48:	4443      	add	r3, r8
 8005e4a:	6013      	str	r3, [r2, #0]
 8005e4c:	e68e      	b.n	8005b6c <_malloc_r+0x210>
 8005e4e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005e52:	d814      	bhi.n	8005e7e <_malloc_r+0x522>
 8005e54:	0bda      	lsrs	r2, r3, #15
 8005e56:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005e5a:	00c9      	lsls	r1, r1, #3
 8005e5c:	3277      	adds	r2, #119	; 0x77
 8005e5e:	e75e      	b.n	8005d1e <_malloc_r+0x3c2>
 8005e60:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005e64:	207f      	movs	r0, #127	; 0x7f
 8005e66:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005e6a:	e5bc      	b.n	80059e6 <_malloc_r+0x8a>
 8005e6c:	f104 0108 	add.w	r1, r4, #8
 8005e70:	4630      	mov	r0, r6
 8005e72:	9201      	str	r2, [sp, #4]
 8005e74:	f7ff fa48 	bl	8005308 <_free_r>
 8005e78:	9a01      	ldr	r2, [sp, #4]
 8005e7a:	6813      	ldr	r3, [r2, #0]
 8005e7c:	e6bc      	b.n	8005bf8 <_malloc_r+0x29c>
 8005e7e:	f240 5154 	movw	r1, #1364	; 0x554
 8005e82:	428a      	cmp	r2, r1
 8005e84:	d805      	bhi.n	8005e92 <_malloc_r+0x536>
 8005e86:	0c9a      	lsrs	r2, r3, #18
 8005e88:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005e8c:	00c9      	lsls	r1, r1, #3
 8005e8e:	327c      	adds	r2, #124	; 0x7c
 8005e90:	e745      	b.n	8005d1e <_malloc_r+0x3c2>
 8005e92:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005e96:	227e      	movs	r2, #126	; 0x7e
 8005e98:	e741      	b.n	8005d1e <_malloc_r+0x3c2>
 8005e9a:	687b      	ldr	r3, [r7, #4]
 8005e9c:	e785      	b.n	8005daa <_malloc_r+0x44e>
 8005e9e:	bf00      	nop
 8005ea0:	20000a7c 	.word	0x20000a7c

08005ea4 <memmove>:
 8005ea4:	4288      	cmp	r0, r1
 8005ea6:	b4f0      	push	{r4, r5, r6, r7}
 8005ea8:	d90d      	bls.n	8005ec6 <memmove+0x22>
 8005eaa:	188b      	adds	r3, r1, r2
 8005eac:	4283      	cmp	r3, r0
 8005eae:	d90a      	bls.n	8005ec6 <memmove+0x22>
 8005eb0:	1884      	adds	r4, r0, r2
 8005eb2:	b132      	cbz	r2, 8005ec2 <memmove+0x1e>
 8005eb4:	4622      	mov	r2, r4
 8005eb6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005eba:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005ebe:	4299      	cmp	r1, r3
 8005ec0:	d1f9      	bne.n	8005eb6 <memmove+0x12>
 8005ec2:	bcf0      	pop	{r4, r5, r6, r7}
 8005ec4:	4770      	bx	lr
 8005ec6:	2a0f      	cmp	r2, #15
 8005ec8:	d949      	bls.n	8005f5e <memmove+0xba>
 8005eca:	ea40 0301 	orr.w	r3, r0, r1
 8005ece:	079b      	lsls	r3, r3, #30
 8005ed0:	d147      	bne.n	8005f62 <memmove+0xbe>
 8005ed2:	f1a2 0310 	sub.w	r3, r2, #16
 8005ed6:	091b      	lsrs	r3, r3, #4
 8005ed8:	f101 0720 	add.w	r7, r1, #32
 8005edc:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005ee0:	f101 0410 	add.w	r4, r1, #16
 8005ee4:	f100 0510 	add.w	r5, r0, #16
 8005ee8:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005eec:	f845 6c10 	str.w	r6, [r5, #-16]
 8005ef0:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005ef4:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005ef8:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005efc:	f845 6c08 	str.w	r6, [r5, #-8]
 8005f00:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005f04:	f845 6c04 	str.w	r6, [r5, #-4]
 8005f08:	3410      	adds	r4, #16
 8005f0a:	42bc      	cmp	r4, r7
 8005f0c:	f105 0510 	add.w	r5, r5, #16
 8005f10:	d1ea      	bne.n	8005ee8 <memmove+0x44>
 8005f12:	3301      	adds	r3, #1
 8005f14:	f002 050f 	and.w	r5, r2, #15
 8005f18:	011b      	lsls	r3, r3, #4
 8005f1a:	2d03      	cmp	r5, #3
 8005f1c:	4419      	add	r1, r3
 8005f1e:	4403      	add	r3, r0
 8005f20:	d921      	bls.n	8005f66 <memmove+0xc2>
 8005f22:	1f1f      	subs	r7, r3, #4
 8005f24:	460e      	mov	r6, r1
 8005f26:	462c      	mov	r4, r5
 8005f28:	3c04      	subs	r4, #4
 8005f2a:	f856 cb04 	ldr.w	ip, [r6], #4
 8005f2e:	f847 cf04 	str.w	ip, [r7, #4]!
 8005f32:	2c03      	cmp	r4, #3
 8005f34:	d8f8      	bhi.n	8005f28 <memmove+0x84>
 8005f36:	1f2c      	subs	r4, r5, #4
 8005f38:	f024 0403 	bic.w	r4, r4, #3
 8005f3c:	3404      	adds	r4, #4
 8005f3e:	4423      	add	r3, r4
 8005f40:	4421      	add	r1, r4
 8005f42:	f002 0203 	and.w	r2, r2, #3
 8005f46:	2a00      	cmp	r2, #0
 8005f48:	d0bb      	beq.n	8005ec2 <memmove+0x1e>
 8005f4a:	3b01      	subs	r3, #1
 8005f4c:	440a      	add	r2, r1
 8005f4e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005f52:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005f56:	4291      	cmp	r1, r2
 8005f58:	d1f9      	bne.n	8005f4e <memmove+0xaa>
 8005f5a:	bcf0      	pop	{r4, r5, r6, r7}
 8005f5c:	4770      	bx	lr
 8005f5e:	4603      	mov	r3, r0
 8005f60:	e7f1      	b.n	8005f46 <memmove+0xa2>
 8005f62:	4603      	mov	r3, r0
 8005f64:	e7f1      	b.n	8005f4a <memmove+0xa6>
 8005f66:	462a      	mov	r2, r5
 8005f68:	e7ed      	b.n	8005f46 <memmove+0xa2>
 8005f6a:	bf00      	nop

08005f6c <__malloc_lock>:
 8005f6c:	4801      	ldr	r0, [pc, #4]	; (8005f74 <__malloc_lock+0x8>)
 8005f6e:	f7ff bc79 	b.w	8005864 <__retarget_lock_acquire_recursive>
 8005f72:	bf00      	nop
 8005f74:	20000c0c 	.word	0x20000c0c

08005f78 <__malloc_unlock>:
 8005f78:	4801      	ldr	r0, [pc, #4]	; (8005f80 <__malloc_unlock+0x8>)
 8005f7a:	f7ff bc75 	b.w	8005868 <__retarget_lock_release_recursive>
 8005f7e:	bf00      	nop
 8005f80:	20000c0c 	.word	0x20000c0c

08005f84 <_Balloc>:
 8005f84:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005f86:	b570      	push	{r4, r5, r6, lr}
 8005f88:	4605      	mov	r5, r0
 8005f8a:	460c      	mov	r4, r1
 8005f8c:	b14b      	cbz	r3, 8005fa2 <_Balloc+0x1e>
 8005f8e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005f92:	b180      	cbz	r0, 8005fb6 <_Balloc+0x32>
 8005f94:	6802      	ldr	r2, [r0, #0]
 8005f96:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8005f9a:	2300      	movs	r3, #0
 8005f9c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8005fa0:	bd70      	pop	{r4, r5, r6, pc}
 8005fa2:	2221      	movs	r2, #33	; 0x21
 8005fa4:	2104      	movs	r1, #4
 8005fa6:	f000 fe1d 	bl	8006be4 <_calloc_r>
 8005faa:	4603      	mov	r3, r0
 8005fac:	64e8      	str	r0, [r5, #76]	; 0x4c
 8005fae:	2800      	cmp	r0, #0
 8005fb0:	d1ed      	bne.n	8005f8e <_Balloc+0xa>
 8005fb2:	2000      	movs	r0, #0
 8005fb4:	bd70      	pop	{r4, r5, r6, pc}
 8005fb6:	2101      	movs	r1, #1
 8005fb8:	fa01 f604 	lsl.w	r6, r1, r4
 8005fbc:	1d72      	adds	r2, r6, #5
 8005fbe:	4628      	mov	r0, r5
 8005fc0:	0092      	lsls	r2, r2, #2
 8005fc2:	f000 fe0f 	bl	8006be4 <_calloc_r>
 8005fc6:	2800      	cmp	r0, #0
 8005fc8:	d0f3      	beq.n	8005fb2 <_Balloc+0x2e>
 8005fca:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8005fce:	e7e4      	b.n	8005f9a <_Balloc+0x16>

08005fd0 <_Bfree>:
 8005fd0:	b131      	cbz	r1, 8005fe0 <_Bfree+0x10>
 8005fd2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005fd4:	684a      	ldr	r2, [r1, #4]
 8005fd6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8005fda:	6008      	str	r0, [r1, #0]
 8005fdc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8005fe0:	4770      	bx	lr
 8005fe2:	bf00      	nop

08005fe4 <__multadd>:
 8005fe4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005fe6:	690c      	ldr	r4, [r1, #16]
 8005fe8:	b083      	sub	sp, #12
 8005fea:	460d      	mov	r5, r1
 8005fec:	4606      	mov	r6, r0
 8005fee:	f101 0c14 	add.w	ip, r1, #20
 8005ff2:	2700      	movs	r7, #0
 8005ff4:	f8dc 0000 	ldr.w	r0, [ip]
 8005ff8:	b281      	uxth	r1, r0
 8005ffa:	fb02 3301 	mla	r3, r2, r1, r3
 8005ffe:	0c01      	lsrs	r1, r0, #16
 8006000:	0c18      	lsrs	r0, r3, #16
 8006002:	fb02 0101 	mla	r1, r2, r1, r0
 8006006:	b29b      	uxth	r3, r3
 8006008:	3701      	adds	r7, #1
 800600a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800600e:	42bc      	cmp	r4, r7
 8006010:	f84c 3b04 	str.w	r3, [ip], #4
 8006014:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006018:	dcec      	bgt.n	8005ff4 <__multadd+0x10>
 800601a:	b13b      	cbz	r3, 800602c <__multadd+0x48>
 800601c:	68aa      	ldr	r2, [r5, #8]
 800601e:	42a2      	cmp	r2, r4
 8006020:	dd07      	ble.n	8006032 <__multadd+0x4e>
 8006022:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006026:	3401      	adds	r4, #1
 8006028:	6153      	str	r3, [r2, #20]
 800602a:	612c      	str	r4, [r5, #16]
 800602c:	4628      	mov	r0, r5
 800602e:	b003      	add	sp, #12
 8006030:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006032:	6869      	ldr	r1, [r5, #4]
 8006034:	9301      	str	r3, [sp, #4]
 8006036:	3101      	adds	r1, #1
 8006038:	4630      	mov	r0, r6
 800603a:	f7ff ffa3 	bl	8005f84 <_Balloc>
 800603e:	692a      	ldr	r2, [r5, #16]
 8006040:	3202      	adds	r2, #2
 8006042:	f105 010c 	add.w	r1, r5, #12
 8006046:	4607      	mov	r7, r0
 8006048:	0092      	lsls	r2, r2, #2
 800604a:	300c      	adds	r0, #12
 800604c:	f7fa fa58 	bl	8000500 <memcpy>
 8006050:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006052:	6869      	ldr	r1, [r5, #4]
 8006054:	9b01      	ldr	r3, [sp, #4]
 8006056:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800605a:	6028      	str	r0, [r5, #0]
 800605c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006060:	463d      	mov	r5, r7
 8006062:	e7de      	b.n	8006022 <__multadd+0x3e>

08006064 <__hi0bits>:
 8006064:	0c02      	lsrs	r2, r0, #16
 8006066:	0412      	lsls	r2, r2, #16
 8006068:	4603      	mov	r3, r0
 800606a:	b9c2      	cbnz	r2, 800609e <__hi0bits+0x3a>
 800606c:	0403      	lsls	r3, r0, #16
 800606e:	2010      	movs	r0, #16
 8006070:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006074:	bf04      	itt	eq
 8006076:	021b      	lsleq	r3, r3, #8
 8006078:	3008      	addeq	r0, #8
 800607a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800607e:	bf04      	itt	eq
 8006080:	011b      	lsleq	r3, r3, #4
 8006082:	3004      	addeq	r0, #4
 8006084:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006088:	bf04      	itt	eq
 800608a:	009b      	lsleq	r3, r3, #2
 800608c:	3002      	addeq	r0, #2
 800608e:	2b00      	cmp	r3, #0
 8006090:	db04      	blt.n	800609c <__hi0bits+0x38>
 8006092:	005b      	lsls	r3, r3, #1
 8006094:	d501      	bpl.n	800609a <__hi0bits+0x36>
 8006096:	3001      	adds	r0, #1
 8006098:	4770      	bx	lr
 800609a:	2020      	movs	r0, #32
 800609c:	4770      	bx	lr
 800609e:	2000      	movs	r0, #0
 80060a0:	e7e6      	b.n	8006070 <__hi0bits+0xc>
 80060a2:	bf00      	nop

080060a4 <__lo0bits>:
 80060a4:	6803      	ldr	r3, [r0, #0]
 80060a6:	f013 0207 	ands.w	r2, r3, #7
 80060aa:	4601      	mov	r1, r0
 80060ac:	d007      	beq.n	80060be <__lo0bits+0x1a>
 80060ae:	07da      	lsls	r2, r3, #31
 80060b0:	d41f      	bmi.n	80060f2 <__lo0bits+0x4e>
 80060b2:	0798      	lsls	r0, r3, #30
 80060b4:	d51f      	bpl.n	80060f6 <__lo0bits+0x52>
 80060b6:	085b      	lsrs	r3, r3, #1
 80060b8:	600b      	str	r3, [r1, #0]
 80060ba:	2001      	movs	r0, #1
 80060bc:	4770      	bx	lr
 80060be:	b298      	uxth	r0, r3
 80060c0:	b1a0      	cbz	r0, 80060ec <__lo0bits+0x48>
 80060c2:	4610      	mov	r0, r2
 80060c4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80060c8:	bf04      	itt	eq
 80060ca:	0a1b      	lsreq	r3, r3, #8
 80060cc:	3008      	addeq	r0, #8
 80060ce:	071a      	lsls	r2, r3, #28
 80060d0:	bf04      	itt	eq
 80060d2:	091b      	lsreq	r3, r3, #4
 80060d4:	3004      	addeq	r0, #4
 80060d6:	079a      	lsls	r2, r3, #30
 80060d8:	bf04      	itt	eq
 80060da:	089b      	lsreq	r3, r3, #2
 80060dc:	3002      	addeq	r0, #2
 80060de:	07da      	lsls	r2, r3, #31
 80060e0:	d402      	bmi.n	80060e8 <__lo0bits+0x44>
 80060e2:	085b      	lsrs	r3, r3, #1
 80060e4:	d00b      	beq.n	80060fe <__lo0bits+0x5a>
 80060e6:	3001      	adds	r0, #1
 80060e8:	600b      	str	r3, [r1, #0]
 80060ea:	4770      	bx	lr
 80060ec:	0c1b      	lsrs	r3, r3, #16
 80060ee:	2010      	movs	r0, #16
 80060f0:	e7e8      	b.n	80060c4 <__lo0bits+0x20>
 80060f2:	2000      	movs	r0, #0
 80060f4:	4770      	bx	lr
 80060f6:	089b      	lsrs	r3, r3, #2
 80060f8:	600b      	str	r3, [r1, #0]
 80060fa:	2002      	movs	r0, #2
 80060fc:	4770      	bx	lr
 80060fe:	2020      	movs	r0, #32
 8006100:	4770      	bx	lr
 8006102:	bf00      	nop

08006104 <__i2b>:
 8006104:	b510      	push	{r4, lr}
 8006106:	460c      	mov	r4, r1
 8006108:	2101      	movs	r1, #1
 800610a:	f7ff ff3b 	bl	8005f84 <_Balloc>
 800610e:	2201      	movs	r2, #1
 8006110:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006114:	bd10      	pop	{r4, pc}
 8006116:	bf00      	nop

08006118 <__multiply>:
 8006118:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800611c:	690e      	ldr	r6, [r1, #16]
 800611e:	6914      	ldr	r4, [r2, #16]
 8006120:	42a6      	cmp	r6, r4
 8006122:	b083      	sub	sp, #12
 8006124:	460f      	mov	r7, r1
 8006126:	4615      	mov	r5, r2
 8006128:	da04      	bge.n	8006134 <__multiply+0x1c>
 800612a:	4632      	mov	r2, r6
 800612c:	462f      	mov	r7, r5
 800612e:	4626      	mov	r6, r4
 8006130:	460d      	mov	r5, r1
 8006132:	4614      	mov	r4, r2
 8006134:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006138:	eb06 0804 	add.w	r8, r6, r4
 800613c:	4543      	cmp	r3, r8
 800613e:	bfb8      	it	lt
 8006140:	3101      	addlt	r1, #1
 8006142:	f7ff ff1f 	bl	8005f84 <_Balloc>
 8006146:	f100 0914 	add.w	r9, r0, #20
 800614a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800614e:	45f1      	cmp	r9, lr
 8006150:	9000      	str	r0, [sp, #0]
 8006152:	d205      	bcs.n	8006160 <__multiply+0x48>
 8006154:	464b      	mov	r3, r9
 8006156:	2200      	movs	r2, #0
 8006158:	f843 2b04 	str.w	r2, [r3], #4
 800615c:	459e      	cmp	lr, r3
 800615e:	d8fb      	bhi.n	8006158 <__multiply+0x40>
 8006160:	f105 0a14 	add.w	sl, r5, #20
 8006164:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006168:	f107 0314 	add.w	r3, r7, #20
 800616c:	45a2      	cmp	sl, r4
 800616e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006172:	d261      	bcs.n	8006238 <__multiply+0x120>
 8006174:	1b64      	subs	r4, r4, r5
 8006176:	3c15      	subs	r4, #21
 8006178:	f024 0403 	bic.w	r4, r4, #3
 800617c:	f8cd e004 	str.w	lr, [sp, #4]
 8006180:	44a2      	add	sl, r4
 8006182:	f105 0210 	add.w	r2, r5, #16
 8006186:	469e      	mov	lr, r3
 8006188:	e005      	b.n	8006196 <__multiply+0x7e>
 800618a:	0c2d      	lsrs	r5, r5, #16
 800618c:	d12b      	bne.n	80061e6 <__multiply+0xce>
 800618e:	4592      	cmp	sl, r2
 8006190:	f109 0904 	add.w	r9, r9, #4
 8006194:	d04e      	beq.n	8006234 <__multiply+0x11c>
 8006196:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800619a:	fa1f fb85 	uxth.w	fp, r5
 800619e:	f1bb 0f00 	cmp.w	fp, #0
 80061a2:	d0f2      	beq.n	800618a <__multiply+0x72>
 80061a4:	4677      	mov	r7, lr
 80061a6:	464e      	mov	r6, r9
 80061a8:	2000      	movs	r0, #0
 80061aa:	e000      	b.n	80061ae <__multiply+0x96>
 80061ac:	4626      	mov	r6, r4
 80061ae:	f857 1b04 	ldr.w	r1, [r7], #4
 80061b2:	6834      	ldr	r4, [r6, #0]
 80061b4:	b28b      	uxth	r3, r1
 80061b6:	b2a5      	uxth	r5, r4
 80061b8:	0c09      	lsrs	r1, r1, #16
 80061ba:	0c24      	lsrs	r4, r4, #16
 80061bc:	fb0b 5303 	mla	r3, fp, r3, r5
 80061c0:	4403      	add	r3, r0
 80061c2:	fb0b 4001 	mla	r0, fp, r1, r4
 80061c6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80061ca:	4634      	mov	r4, r6
 80061cc:	b29b      	uxth	r3, r3
 80061ce:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80061d2:	45bc      	cmp	ip, r7
 80061d4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80061d8:	f844 3b04 	str.w	r3, [r4], #4
 80061dc:	d8e6      	bhi.n	80061ac <__multiply+0x94>
 80061de:	6070      	str	r0, [r6, #4]
 80061e0:	6815      	ldr	r5, [r2, #0]
 80061e2:	0c2d      	lsrs	r5, r5, #16
 80061e4:	d0d3      	beq.n	800618e <__multiply+0x76>
 80061e6:	f8d9 3000 	ldr.w	r3, [r9]
 80061ea:	4676      	mov	r6, lr
 80061ec:	4618      	mov	r0, r3
 80061ee:	46cb      	mov	fp, r9
 80061f0:	2100      	movs	r1, #0
 80061f2:	e000      	b.n	80061f6 <__multiply+0xde>
 80061f4:	46a3      	mov	fp, r4
 80061f6:	8834      	ldrh	r4, [r6, #0]
 80061f8:	0c00      	lsrs	r0, r0, #16
 80061fa:	fb05 0004 	mla	r0, r5, r4, r0
 80061fe:	4401      	add	r1, r0
 8006200:	b29b      	uxth	r3, r3
 8006202:	465c      	mov	r4, fp
 8006204:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006208:	f844 3b04 	str.w	r3, [r4], #4
 800620c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006210:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006214:	0c1b      	lsrs	r3, r3, #16
 8006216:	b287      	uxth	r7, r0
 8006218:	fb05 7303 	mla	r3, r5, r3, r7
 800621c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006220:	45b4      	cmp	ip, r6
 8006222:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006226:	d8e5      	bhi.n	80061f4 <__multiply+0xdc>
 8006228:	4592      	cmp	sl, r2
 800622a:	f8cb 3004 	str.w	r3, [fp, #4]
 800622e:	f109 0904 	add.w	r9, r9, #4
 8006232:	d1b0      	bne.n	8006196 <__multiply+0x7e>
 8006234:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006238:	f1b8 0f00 	cmp.w	r8, #0
 800623c:	dd0b      	ble.n	8006256 <__multiply+0x13e>
 800623e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006242:	f1ae 0e04 	sub.w	lr, lr, #4
 8006246:	b11b      	cbz	r3, 8006250 <__multiply+0x138>
 8006248:	e005      	b.n	8006256 <__multiply+0x13e>
 800624a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800624e:	b913      	cbnz	r3, 8006256 <__multiply+0x13e>
 8006250:	f1b8 0801 	subs.w	r8, r8, #1
 8006254:	d1f9      	bne.n	800624a <__multiply+0x132>
 8006256:	9800      	ldr	r0, [sp, #0]
 8006258:	f8c0 8010 	str.w	r8, [r0, #16]
 800625c:	b003      	add	sp, #12
 800625e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006262:	bf00      	nop

08006264 <__pow5mult>:
 8006264:	f012 0303 	ands.w	r3, r2, #3
 8006268:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800626c:	4614      	mov	r4, r2
 800626e:	4607      	mov	r7, r0
 8006270:	d12e      	bne.n	80062d0 <__pow5mult+0x6c>
 8006272:	460d      	mov	r5, r1
 8006274:	10a4      	asrs	r4, r4, #2
 8006276:	d01c      	beq.n	80062b2 <__pow5mult+0x4e>
 8006278:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800627a:	b396      	cbz	r6, 80062e2 <__pow5mult+0x7e>
 800627c:	07e3      	lsls	r3, r4, #31
 800627e:	f04f 0800 	mov.w	r8, #0
 8006282:	d406      	bmi.n	8006292 <__pow5mult+0x2e>
 8006284:	1064      	asrs	r4, r4, #1
 8006286:	d014      	beq.n	80062b2 <__pow5mult+0x4e>
 8006288:	6830      	ldr	r0, [r6, #0]
 800628a:	b1a8      	cbz	r0, 80062b8 <__pow5mult+0x54>
 800628c:	4606      	mov	r6, r0
 800628e:	07e3      	lsls	r3, r4, #31
 8006290:	d5f8      	bpl.n	8006284 <__pow5mult+0x20>
 8006292:	4632      	mov	r2, r6
 8006294:	4629      	mov	r1, r5
 8006296:	4638      	mov	r0, r7
 8006298:	f7ff ff3e 	bl	8006118 <__multiply>
 800629c:	b1b5      	cbz	r5, 80062cc <__pow5mult+0x68>
 800629e:	686a      	ldr	r2, [r5, #4]
 80062a0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80062a2:	1064      	asrs	r4, r4, #1
 80062a4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80062a8:	6029      	str	r1, [r5, #0]
 80062aa:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80062ae:	4605      	mov	r5, r0
 80062b0:	d1ea      	bne.n	8006288 <__pow5mult+0x24>
 80062b2:	4628      	mov	r0, r5
 80062b4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80062b8:	4632      	mov	r2, r6
 80062ba:	4631      	mov	r1, r6
 80062bc:	4638      	mov	r0, r7
 80062be:	f7ff ff2b 	bl	8006118 <__multiply>
 80062c2:	6030      	str	r0, [r6, #0]
 80062c4:	f8c0 8000 	str.w	r8, [r0]
 80062c8:	4606      	mov	r6, r0
 80062ca:	e7e0      	b.n	800628e <__pow5mult+0x2a>
 80062cc:	4605      	mov	r5, r0
 80062ce:	e7d9      	b.n	8006284 <__pow5mult+0x20>
 80062d0:	3b01      	subs	r3, #1
 80062d2:	4a0b      	ldr	r2, [pc, #44]	; (8006300 <__pow5mult+0x9c>)
 80062d4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80062d8:	2300      	movs	r3, #0
 80062da:	f7ff fe83 	bl	8005fe4 <__multadd>
 80062de:	4605      	mov	r5, r0
 80062e0:	e7c8      	b.n	8006274 <__pow5mult+0x10>
 80062e2:	2101      	movs	r1, #1
 80062e4:	4638      	mov	r0, r7
 80062e6:	f7ff fe4d 	bl	8005f84 <_Balloc>
 80062ea:	f240 2371 	movw	r3, #625	; 0x271
 80062ee:	6143      	str	r3, [r0, #20]
 80062f0:	2201      	movs	r2, #1
 80062f2:	2300      	movs	r3, #0
 80062f4:	6102      	str	r2, [r0, #16]
 80062f6:	4606      	mov	r6, r0
 80062f8:	64b8      	str	r0, [r7, #72]	; 0x48
 80062fa:	6003      	str	r3, [r0, #0]
 80062fc:	e7be      	b.n	800627c <__pow5mult+0x18>
 80062fe:	bf00      	nop
 8006300:	08007310 	.word	0x08007310

08006304 <__lshift>:
 8006304:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006308:	4691      	mov	r9, r2
 800630a:	690a      	ldr	r2, [r1, #16]
 800630c:	460e      	mov	r6, r1
 800630e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006312:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006316:	eb04 0802 	add.w	r8, r4, r2
 800631a:	f108 0501 	add.w	r5, r8, #1
 800631e:	429d      	cmp	r5, r3
 8006320:	4607      	mov	r7, r0
 8006322:	dd04      	ble.n	800632e <__lshift+0x2a>
 8006324:	005b      	lsls	r3, r3, #1
 8006326:	429d      	cmp	r5, r3
 8006328:	f101 0101 	add.w	r1, r1, #1
 800632c:	dcfa      	bgt.n	8006324 <__lshift+0x20>
 800632e:	4638      	mov	r0, r7
 8006330:	f7ff fe28 	bl	8005f84 <_Balloc>
 8006334:	2c00      	cmp	r4, #0
 8006336:	f100 0314 	add.w	r3, r0, #20
 800633a:	dd37      	ble.n	80063ac <__lshift+0xa8>
 800633c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006340:	2200      	movs	r2, #0
 8006342:	f843 2b04 	str.w	r2, [r3], #4
 8006346:	428b      	cmp	r3, r1
 8006348:	d1fb      	bne.n	8006342 <__lshift+0x3e>
 800634a:	6934      	ldr	r4, [r6, #16]
 800634c:	f106 0314 	add.w	r3, r6, #20
 8006350:	f019 091f 	ands.w	r9, r9, #31
 8006354:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006358:	d020      	beq.n	800639c <__lshift+0x98>
 800635a:	f1c9 0e20 	rsb	lr, r9, #32
 800635e:	2200      	movs	r2, #0
 8006360:	e000      	b.n	8006364 <__lshift+0x60>
 8006362:	4651      	mov	r1, sl
 8006364:	681c      	ldr	r4, [r3, #0]
 8006366:	468a      	mov	sl, r1
 8006368:	fa04 f409 	lsl.w	r4, r4, r9
 800636c:	4314      	orrs	r4, r2
 800636e:	f84a 4b04 	str.w	r4, [sl], #4
 8006372:	f853 2b04 	ldr.w	r2, [r3], #4
 8006376:	4563      	cmp	r3, ip
 8006378:	fa22 f20e 	lsr.w	r2, r2, lr
 800637c:	d3f1      	bcc.n	8006362 <__lshift+0x5e>
 800637e:	604a      	str	r2, [r1, #4]
 8006380:	b10a      	cbz	r2, 8006386 <__lshift+0x82>
 8006382:	f108 0502 	add.w	r5, r8, #2
 8006386:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006388:	6872      	ldr	r2, [r6, #4]
 800638a:	3d01      	subs	r5, #1
 800638c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006390:	6105      	str	r5, [r0, #16]
 8006392:	6031      	str	r1, [r6, #0]
 8006394:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006398:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800639c:	3904      	subs	r1, #4
 800639e:	f853 2b04 	ldr.w	r2, [r3], #4
 80063a2:	f841 2f04 	str.w	r2, [r1, #4]!
 80063a6:	459c      	cmp	ip, r3
 80063a8:	d8f9      	bhi.n	800639e <__lshift+0x9a>
 80063aa:	e7ec      	b.n	8006386 <__lshift+0x82>
 80063ac:	4619      	mov	r1, r3
 80063ae:	e7cc      	b.n	800634a <__lshift+0x46>

080063b0 <__mcmp>:
 80063b0:	b430      	push	{r4, r5}
 80063b2:	690b      	ldr	r3, [r1, #16]
 80063b4:	4605      	mov	r5, r0
 80063b6:	6900      	ldr	r0, [r0, #16]
 80063b8:	1ac0      	subs	r0, r0, r3
 80063ba:	d10f      	bne.n	80063dc <__mcmp+0x2c>
 80063bc:	009b      	lsls	r3, r3, #2
 80063be:	3514      	adds	r5, #20
 80063c0:	3114      	adds	r1, #20
 80063c2:	4419      	add	r1, r3
 80063c4:	442b      	add	r3, r5
 80063c6:	e001      	b.n	80063cc <__mcmp+0x1c>
 80063c8:	429d      	cmp	r5, r3
 80063ca:	d207      	bcs.n	80063dc <__mcmp+0x2c>
 80063cc:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80063d0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80063d4:	4294      	cmp	r4, r2
 80063d6:	d0f7      	beq.n	80063c8 <__mcmp+0x18>
 80063d8:	d302      	bcc.n	80063e0 <__mcmp+0x30>
 80063da:	2001      	movs	r0, #1
 80063dc:	bc30      	pop	{r4, r5}
 80063de:	4770      	bx	lr
 80063e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80063e4:	e7fa      	b.n	80063dc <__mcmp+0x2c>
 80063e6:	bf00      	nop

080063e8 <__mdiff>:
 80063e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80063ec:	6913      	ldr	r3, [r2, #16]
 80063ee:	690d      	ldr	r5, [r1, #16]
 80063f0:	1aed      	subs	r5, r5, r3
 80063f2:	2d00      	cmp	r5, #0
 80063f4:	460e      	mov	r6, r1
 80063f6:	4690      	mov	r8, r2
 80063f8:	f101 0414 	add.w	r4, r1, #20
 80063fc:	f102 0714 	add.w	r7, r2, #20
 8006400:	d114      	bne.n	800642c <__mdiff+0x44>
 8006402:	009b      	lsls	r3, r3, #2
 8006404:	18e2      	adds	r2, r4, r3
 8006406:	443b      	add	r3, r7
 8006408:	e001      	b.n	800640e <__mdiff+0x26>
 800640a:	42a2      	cmp	r2, r4
 800640c:	d959      	bls.n	80064c2 <__mdiff+0xda>
 800640e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006412:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006416:	458c      	cmp	ip, r1
 8006418:	d0f7      	beq.n	800640a <__mdiff+0x22>
 800641a:	d209      	bcs.n	8006430 <__mdiff+0x48>
 800641c:	4622      	mov	r2, r4
 800641e:	4633      	mov	r3, r6
 8006420:	463c      	mov	r4, r7
 8006422:	4646      	mov	r6, r8
 8006424:	4617      	mov	r7, r2
 8006426:	4698      	mov	r8, r3
 8006428:	2501      	movs	r5, #1
 800642a:	e001      	b.n	8006430 <__mdiff+0x48>
 800642c:	dbf6      	blt.n	800641c <__mdiff+0x34>
 800642e:	2500      	movs	r5, #0
 8006430:	6871      	ldr	r1, [r6, #4]
 8006432:	f7ff fda7 	bl	8005f84 <_Balloc>
 8006436:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800643a:	6936      	ldr	r6, [r6, #16]
 800643c:	60c5      	str	r5, [r0, #12]
 800643e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006442:	46bc      	mov	ip, r7
 8006444:	f100 0514 	add.w	r5, r0, #20
 8006448:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800644c:	2300      	movs	r3, #0
 800644e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006452:	f854 8b04 	ldr.w	r8, [r4], #4
 8006456:	b28a      	uxth	r2, r1
 8006458:	fa13 f388 	uxtah	r3, r3, r8
 800645c:	0c09      	lsrs	r1, r1, #16
 800645e:	1a9a      	subs	r2, r3, r2
 8006460:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006464:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006468:	b292      	uxth	r2, r2
 800646a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800646e:	45e6      	cmp	lr, ip
 8006470:	f845 2b04 	str.w	r2, [r5], #4
 8006474:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006478:	d8e9      	bhi.n	800644e <__mdiff+0x66>
 800647a:	42a7      	cmp	r7, r4
 800647c:	d917      	bls.n	80064ae <__mdiff+0xc6>
 800647e:	46ae      	mov	lr, r5
 8006480:	46a4      	mov	ip, r4
 8006482:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006486:	fa13 f382 	uxtah	r3, r3, r2
 800648a:	1419      	asrs	r1, r3, #16
 800648c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006490:	b29b      	uxth	r3, r3
 8006492:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006496:	4567      	cmp	r7, ip
 8006498:	f84e 2b04 	str.w	r2, [lr], #4
 800649c:	ea4f 4321 	mov.w	r3, r1, asr #16
 80064a0:	d8ef      	bhi.n	8006482 <__mdiff+0x9a>
 80064a2:	43e4      	mvns	r4, r4
 80064a4:	4427      	add	r7, r4
 80064a6:	f027 0703 	bic.w	r7, r7, #3
 80064aa:	3704      	adds	r7, #4
 80064ac:	443d      	add	r5, r7
 80064ae:	3d04      	subs	r5, #4
 80064b0:	b922      	cbnz	r2, 80064bc <__mdiff+0xd4>
 80064b2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80064b6:	3e01      	subs	r6, #1
 80064b8:	2b00      	cmp	r3, #0
 80064ba:	d0fa      	beq.n	80064b2 <__mdiff+0xca>
 80064bc:	6106      	str	r6, [r0, #16]
 80064be:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80064c2:	2100      	movs	r1, #0
 80064c4:	f7ff fd5e 	bl	8005f84 <_Balloc>
 80064c8:	2201      	movs	r2, #1
 80064ca:	2300      	movs	r3, #0
 80064cc:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80064d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080064d4 <__d2b>:
 80064d4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80064d8:	460f      	mov	r7, r1
 80064da:	b083      	sub	sp, #12
 80064dc:	2101      	movs	r1, #1
 80064de:	ec55 4b10 	vmov	r4, r5, d0
 80064e2:	4616      	mov	r6, r2
 80064e4:	f7ff fd4e 	bl	8005f84 <_Balloc>
 80064e8:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80064ec:	4681      	mov	r9, r0
 80064ee:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80064f2:	f1b8 0f00 	cmp.w	r8, #0
 80064f6:	d001      	beq.n	80064fc <__d2b+0x28>
 80064f8:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80064fc:	2c00      	cmp	r4, #0
 80064fe:	9301      	str	r3, [sp, #4]
 8006500:	d024      	beq.n	800654c <__d2b+0x78>
 8006502:	a802      	add	r0, sp, #8
 8006504:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006508:	f7ff fdcc 	bl	80060a4 <__lo0bits>
 800650c:	2800      	cmp	r0, #0
 800650e:	d136      	bne.n	800657e <__d2b+0xaa>
 8006510:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006514:	f8c9 2014 	str.w	r2, [r9, #20]
 8006518:	2b00      	cmp	r3, #0
 800651a:	bf0c      	ite	eq
 800651c:	2101      	moveq	r1, #1
 800651e:	2102      	movne	r1, #2
 8006520:	f8c9 3018 	str.w	r3, [r9, #24]
 8006524:	f8c9 1010 	str.w	r1, [r9, #16]
 8006528:	f1b8 0f00 	cmp.w	r8, #0
 800652c:	d11b      	bne.n	8006566 <__d2b+0x92>
 800652e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006532:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006536:	6038      	str	r0, [r7, #0]
 8006538:	6918      	ldr	r0, [r3, #16]
 800653a:	f7ff fd93 	bl	8006064 <__hi0bits>
 800653e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006542:	6030      	str	r0, [r6, #0]
 8006544:	4648      	mov	r0, r9
 8006546:	b003      	add	sp, #12
 8006548:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800654c:	a801      	add	r0, sp, #4
 800654e:	f7ff fda9 	bl	80060a4 <__lo0bits>
 8006552:	9b01      	ldr	r3, [sp, #4]
 8006554:	f8c9 3014 	str.w	r3, [r9, #20]
 8006558:	2101      	movs	r1, #1
 800655a:	3020      	adds	r0, #32
 800655c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006560:	f1b8 0f00 	cmp.w	r8, #0
 8006564:	d0e3      	beq.n	800652e <__d2b+0x5a>
 8006566:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800656a:	eb08 0300 	add.w	r3, r8, r0
 800656e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006572:	603b      	str	r3, [r7, #0]
 8006574:	6030      	str	r0, [r6, #0]
 8006576:	4648      	mov	r0, r9
 8006578:	b003      	add	sp, #12
 800657a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800657e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006582:	f1c0 0220 	rsb	r2, r0, #32
 8006586:	fa03 f202 	lsl.w	r2, r3, r2
 800658a:	430a      	orrs	r2, r1
 800658c:	40c3      	lsrs	r3, r0
 800658e:	9301      	str	r3, [sp, #4]
 8006590:	f8c9 2014 	str.w	r2, [r9, #20]
 8006594:	e7c0      	b.n	8006518 <__d2b+0x44>
 8006596:	bf00      	nop

08006598 <_realloc_r>:
 8006598:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800659c:	4692      	mov	sl, r2
 800659e:	b083      	sub	sp, #12
 80065a0:	2900      	cmp	r1, #0
 80065a2:	f000 80a1 	beq.w	80066e8 <_realloc_r+0x150>
 80065a6:	460d      	mov	r5, r1
 80065a8:	4680      	mov	r8, r0
 80065aa:	f10a 040b 	add.w	r4, sl, #11
 80065ae:	f7ff fcdd 	bl	8005f6c <__malloc_lock>
 80065b2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80065b6:	2c16      	cmp	r4, #22
 80065b8:	f022 0603 	bic.w	r6, r2, #3
 80065bc:	f1a5 0708 	sub.w	r7, r5, #8
 80065c0:	d83e      	bhi.n	8006640 <_realloc_r+0xa8>
 80065c2:	2410      	movs	r4, #16
 80065c4:	4621      	mov	r1, r4
 80065c6:	45a2      	cmp	sl, r4
 80065c8:	d83f      	bhi.n	800664a <_realloc_r+0xb2>
 80065ca:	428e      	cmp	r6, r1
 80065cc:	eb07 0906 	add.w	r9, r7, r6
 80065d0:	da74      	bge.n	80066bc <_realloc_r+0x124>
 80065d2:	4bc7      	ldr	r3, [pc, #796]	; (80068f0 <_realloc_r+0x358>)
 80065d4:	6898      	ldr	r0, [r3, #8]
 80065d6:	4548      	cmp	r0, r9
 80065d8:	f000 80aa 	beq.w	8006730 <_realloc_r+0x198>
 80065dc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80065e0:	f020 0301 	bic.w	r3, r0, #1
 80065e4:	444b      	add	r3, r9
 80065e6:	685b      	ldr	r3, [r3, #4]
 80065e8:	07db      	lsls	r3, r3, #31
 80065ea:	f140 8083 	bpl.w	80066f4 <_realloc_r+0x15c>
 80065ee:	07d2      	lsls	r2, r2, #31
 80065f0:	d534      	bpl.n	800665c <_realloc_r+0xc4>
 80065f2:	4651      	mov	r1, sl
 80065f4:	4640      	mov	r0, r8
 80065f6:	f7ff f9b1 	bl	800595c <_malloc_r>
 80065fa:	4682      	mov	sl, r0
 80065fc:	b1e0      	cbz	r0, 8006638 <_realloc_r+0xa0>
 80065fe:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006602:	f023 0301 	bic.w	r3, r3, #1
 8006606:	443b      	add	r3, r7
 8006608:	f1a0 0208 	sub.w	r2, r0, #8
 800660c:	4293      	cmp	r3, r2
 800660e:	f000 80f9 	beq.w	8006804 <_realloc_r+0x26c>
 8006612:	1f32      	subs	r2, r6, #4
 8006614:	2a24      	cmp	r2, #36	; 0x24
 8006616:	f200 8107 	bhi.w	8006828 <_realloc_r+0x290>
 800661a:	2a13      	cmp	r2, #19
 800661c:	6829      	ldr	r1, [r5, #0]
 800661e:	f200 80e6 	bhi.w	80067ee <_realloc_r+0x256>
 8006622:	4603      	mov	r3, r0
 8006624:	462a      	mov	r2, r5
 8006626:	6019      	str	r1, [r3, #0]
 8006628:	6851      	ldr	r1, [r2, #4]
 800662a:	6059      	str	r1, [r3, #4]
 800662c:	6892      	ldr	r2, [r2, #8]
 800662e:	609a      	str	r2, [r3, #8]
 8006630:	4629      	mov	r1, r5
 8006632:	4640      	mov	r0, r8
 8006634:	f7fe fe68 	bl	8005308 <_free_r>
 8006638:	4640      	mov	r0, r8
 800663a:	f7ff fc9d 	bl	8005f78 <__malloc_unlock>
 800663e:	e04f      	b.n	80066e0 <_realloc_r+0x148>
 8006640:	f024 0407 	bic.w	r4, r4, #7
 8006644:	2c00      	cmp	r4, #0
 8006646:	4621      	mov	r1, r4
 8006648:	dabd      	bge.n	80065c6 <_realloc_r+0x2e>
 800664a:	f04f 0a00 	mov.w	sl, #0
 800664e:	230c      	movs	r3, #12
 8006650:	4650      	mov	r0, sl
 8006652:	f8c8 3000 	str.w	r3, [r8]
 8006656:	b003      	add	sp, #12
 8006658:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800665c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006660:	eba7 0b03 	sub.w	fp, r7, r3
 8006664:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006668:	f022 0203 	bic.w	r2, r2, #3
 800666c:	18b3      	adds	r3, r6, r2
 800666e:	428b      	cmp	r3, r1
 8006670:	dbbf      	blt.n	80065f2 <_realloc_r+0x5a>
 8006672:	46da      	mov	sl, fp
 8006674:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006678:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800667c:	1f32      	subs	r2, r6, #4
 800667e:	2a24      	cmp	r2, #36	; 0x24
 8006680:	60c1      	str	r1, [r0, #12]
 8006682:	eb0b 0903 	add.w	r9, fp, r3
 8006686:	6088      	str	r0, [r1, #8]
 8006688:	f200 80c6 	bhi.w	8006818 <_realloc_r+0x280>
 800668c:	2a13      	cmp	r2, #19
 800668e:	6829      	ldr	r1, [r5, #0]
 8006690:	f240 80c0 	bls.w	8006814 <_realloc_r+0x27c>
 8006694:	f8cb 1008 	str.w	r1, [fp, #8]
 8006698:	6869      	ldr	r1, [r5, #4]
 800669a:	f8cb 100c 	str.w	r1, [fp, #12]
 800669e:	2a1b      	cmp	r2, #27
 80066a0:	68a9      	ldr	r1, [r5, #8]
 80066a2:	f200 80d8 	bhi.w	8006856 <_realloc_r+0x2be>
 80066a6:	f10b 0210 	add.w	r2, fp, #16
 80066aa:	3508      	adds	r5, #8
 80066ac:	6011      	str	r1, [r2, #0]
 80066ae:	6869      	ldr	r1, [r5, #4]
 80066b0:	6051      	str	r1, [r2, #4]
 80066b2:	68a9      	ldr	r1, [r5, #8]
 80066b4:	6091      	str	r1, [r2, #8]
 80066b6:	461e      	mov	r6, r3
 80066b8:	465f      	mov	r7, fp
 80066ba:	4655      	mov	r5, sl
 80066bc:	687b      	ldr	r3, [r7, #4]
 80066be:	1b32      	subs	r2, r6, r4
 80066c0:	2a0f      	cmp	r2, #15
 80066c2:	f003 0301 	and.w	r3, r3, #1
 80066c6:	d822      	bhi.n	800670e <_realloc_r+0x176>
 80066c8:	4333      	orrs	r3, r6
 80066ca:	607b      	str	r3, [r7, #4]
 80066cc:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80066d0:	f043 0301 	orr.w	r3, r3, #1
 80066d4:	f8c9 3004 	str.w	r3, [r9, #4]
 80066d8:	4640      	mov	r0, r8
 80066da:	f7ff fc4d 	bl	8005f78 <__malloc_unlock>
 80066de:	46aa      	mov	sl, r5
 80066e0:	4650      	mov	r0, sl
 80066e2:	b003      	add	sp, #12
 80066e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066e8:	4611      	mov	r1, r2
 80066ea:	b003      	add	sp, #12
 80066ec:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80066f0:	f7ff b934 	b.w	800595c <_malloc_r>
 80066f4:	f020 0003 	bic.w	r0, r0, #3
 80066f8:	1833      	adds	r3, r6, r0
 80066fa:	428b      	cmp	r3, r1
 80066fc:	db61      	blt.n	80067c2 <_realloc_r+0x22a>
 80066fe:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006702:	461e      	mov	r6, r3
 8006704:	60ca      	str	r2, [r1, #12]
 8006706:	eb07 0903 	add.w	r9, r7, r3
 800670a:	6091      	str	r1, [r2, #8]
 800670c:	e7d6      	b.n	80066bc <_realloc_r+0x124>
 800670e:	1939      	adds	r1, r7, r4
 8006710:	4323      	orrs	r3, r4
 8006712:	f042 0201 	orr.w	r2, r2, #1
 8006716:	607b      	str	r3, [r7, #4]
 8006718:	604a      	str	r2, [r1, #4]
 800671a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800671e:	f043 0301 	orr.w	r3, r3, #1
 8006722:	3108      	adds	r1, #8
 8006724:	f8c9 3004 	str.w	r3, [r9, #4]
 8006728:	4640      	mov	r0, r8
 800672a:	f7fe fded 	bl	8005308 <_free_r>
 800672e:	e7d3      	b.n	80066d8 <_realloc_r+0x140>
 8006730:	6840      	ldr	r0, [r0, #4]
 8006732:	f020 0903 	bic.w	r9, r0, #3
 8006736:	44b1      	add	r9, r6
 8006738:	f104 0010 	add.w	r0, r4, #16
 800673c:	4581      	cmp	r9, r0
 800673e:	da77      	bge.n	8006830 <_realloc_r+0x298>
 8006740:	07d2      	lsls	r2, r2, #31
 8006742:	f53f af56 	bmi.w	80065f2 <_realloc_r+0x5a>
 8006746:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800674a:	eba7 0b02 	sub.w	fp, r7, r2
 800674e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006752:	f022 0203 	bic.w	r2, r2, #3
 8006756:	4491      	add	r9, r2
 8006758:	4548      	cmp	r0, r9
 800675a:	dc87      	bgt.n	800666c <_realloc_r+0xd4>
 800675c:	46da      	mov	sl, fp
 800675e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006762:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006766:	1f32      	subs	r2, r6, #4
 8006768:	2a24      	cmp	r2, #36	; 0x24
 800676a:	60c1      	str	r1, [r0, #12]
 800676c:	6088      	str	r0, [r1, #8]
 800676e:	f200 80a1 	bhi.w	80068b4 <_realloc_r+0x31c>
 8006772:	2a13      	cmp	r2, #19
 8006774:	6829      	ldr	r1, [r5, #0]
 8006776:	f240 809b 	bls.w	80068b0 <_realloc_r+0x318>
 800677a:	f8cb 1008 	str.w	r1, [fp, #8]
 800677e:	6869      	ldr	r1, [r5, #4]
 8006780:	f8cb 100c 	str.w	r1, [fp, #12]
 8006784:	2a1b      	cmp	r2, #27
 8006786:	68a9      	ldr	r1, [r5, #8]
 8006788:	f200 809b 	bhi.w	80068c2 <_realloc_r+0x32a>
 800678c:	f10b 0210 	add.w	r2, fp, #16
 8006790:	3508      	adds	r5, #8
 8006792:	6011      	str	r1, [r2, #0]
 8006794:	6869      	ldr	r1, [r5, #4]
 8006796:	6051      	str	r1, [r2, #4]
 8006798:	68a9      	ldr	r1, [r5, #8]
 800679a:	6091      	str	r1, [r2, #8]
 800679c:	eb0b 0104 	add.w	r1, fp, r4
 80067a0:	eba9 0204 	sub.w	r2, r9, r4
 80067a4:	f042 0201 	orr.w	r2, r2, #1
 80067a8:	6099      	str	r1, [r3, #8]
 80067aa:	604a      	str	r2, [r1, #4]
 80067ac:	f8db 3004 	ldr.w	r3, [fp, #4]
 80067b0:	f003 0301 	and.w	r3, r3, #1
 80067b4:	431c      	orrs	r4, r3
 80067b6:	4640      	mov	r0, r8
 80067b8:	f8cb 4004 	str.w	r4, [fp, #4]
 80067bc:	f7ff fbdc 	bl	8005f78 <__malloc_unlock>
 80067c0:	e78e      	b.n	80066e0 <_realloc_r+0x148>
 80067c2:	07d3      	lsls	r3, r2, #31
 80067c4:	f53f af15 	bmi.w	80065f2 <_realloc_r+0x5a>
 80067c8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80067cc:	eba7 0b03 	sub.w	fp, r7, r3
 80067d0:	f8db 2004 	ldr.w	r2, [fp, #4]
 80067d4:	f022 0203 	bic.w	r2, r2, #3
 80067d8:	4410      	add	r0, r2
 80067da:	1983      	adds	r3, r0, r6
 80067dc:	428b      	cmp	r3, r1
 80067de:	f6ff af45 	blt.w	800666c <_realloc_r+0xd4>
 80067e2:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80067e6:	46da      	mov	sl, fp
 80067e8:	60ca      	str	r2, [r1, #12]
 80067ea:	6091      	str	r1, [r2, #8]
 80067ec:	e742      	b.n	8006674 <_realloc_r+0xdc>
 80067ee:	6001      	str	r1, [r0, #0]
 80067f0:	686b      	ldr	r3, [r5, #4]
 80067f2:	6043      	str	r3, [r0, #4]
 80067f4:	2a1b      	cmp	r2, #27
 80067f6:	d83a      	bhi.n	800686e <_realloc_r+0x2d6>
 80067f8:	f105 0208 	add.w	r2, r5, #8
 80067fc:	f100 0308 	add.w	r3, r0, #8
 8006800:	68a9      	ldr	r1, [r5, #8]
 8006802:	e710      	b.n	8006626 <_realloc_r+0x8e>
 8006804:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006808:	f023 0303 	bic.w	r3, r3, #3
 800680c:	441e      	add	r6, r3
 800680e:	eb07 0906 	add.w	r9, r7, r6
 8006812:	e753      	b.n	80066bc <_realloc_r+0x124>
 8006814:	4652      	mov	r2, sl
 8006816:	e749      	b.n	80066ac <_realloc_r+0x114>
 8006818:	4629      	mov	r1, r5
 800681a:	4650      	mov	r0, sl
 800681c:	461e      	mov	r6, r3
 800681e:	465f      	mov	r7, fp
 8006820:	f7ff fb40 	bl	8005ea4 <memmove>
 8006824:	4655      	mov	r5, sl
 8006826:	e749      	b.n	80066bc <_realloc_r+0x124>
 8006828:	4629      	mov	r1, r5
 800682a:	f7ff fb3b 	bl	8005ea4 <memmove>
 800682e:	e6ff      	b.n	8006630 <_realloc_r+0x98>
 8006830:	4427      	add	r7, r4
 8006832:	eba9 0904 	sub.w	r9, r9, r4
 8006836:	f049 0201 	orr.w	r2, r9, #1
 800683a:	609f      	str	r7, [r3, #8]
 800683c:	607a      	str	r2, [r7, #4]
 800683e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006842:	f003 0301 	and.w	r3, r3, #1
 8006846:	431c      	orrs	r4, r3
 8006848:	4640      	mov	r0, r8
 800684a:	f845 4c04 	str.w	r4, [r5, #-4]
 800684e:	f7ff fb93 	bl	8005f78 <__malloc_unlock>
 8006852:	46aa      	mov	sl, r5
 8006854:	e744      	b.n	80066e0 <_realloc_r+0x148>
 8006856:	f8cb 1010 	str.w	r1, [fp, #16]
 800685a:	68e9      	ldr	r1, [r5, #12]
 800685c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006860:	2a24      	cmp	r2, #36	; 0x24
 8006862:	d010      	beq.n	8006886 <_realloc_r+0x2ee>
 8006864:	6929      	ldr	r1, [r5, #16]
 8006866:	f10b 0218 	add.w	r2, fp, #24
 800686a:	3510      	adds	r5, #16
 800686c:	e71e      	b.n	80066ac <_realloc_r+0x114>
 800686e:	68ab      	ldr	r3, [r5, #8]
 8006870:	6083      	str	r3, [r0, #8]
 8006872:	68eb      	ldr	r3, [r5, #12]
 8006874:	60c3      	str	r3, [r0, #12]
 8006876:	2a24      	cmp	r2, #36	; 0x24
 8006878:	d010      	beq.n	800689c <_realloc_r+0x304>
 800687a:	f105 0210 	add.w	r2, r5, #16
 800687e:	f100 0310 	add.w	r3, r0, #16
 8006882:	6929      	ldr	r1, [r5, #16]
 8006884:	e6cf      	b.n	8006626 <_realloc_r+0x8e>
 8006886:	692a      	ldr	r2, [r5, #16]
 8006888:	f8cb 2018 	str.w	r2, [fp, #24]
 800688c:	696a      	ldr	r2, [r5, #20]
 800688e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006892:	69a9      	ldr	r1, [r5, #24]
 8006894:	f10b 0220 	add.w	r2, fp, #32
 8006898:	3518      	adds	r5, #24
 800689a:	e707      	b.n	80066ac <_realloc_r+0x114>
 800689c:	692b      	ldr	r3, [r5, #16]
 800689e:	6103      	str	r3, [r0, #16]
 80068a0:	696b      	ldr	r3, [r5, #20]
 80068a2:	6143      	str	r3, [r0, #20]
 80068a4:	69a9      	ldr	r1, [r5, #24]
 80068a6:	f105 0218 	add.w	r2, r5, #24
 80068aa:	f100 0318 	add.w	r3, r0, #24
 80068ae:	e6ba      	b.n	8006626 <_realloc_r+0x8e>
 80068b0:	4652      	mov	r2, sl
 80068b2:	e76e      	b.n	8006792 <_realloc_r+0x1fa>
 80068b4:	4629      	mov	r1, r5
 80068b6:	4650      	mov	r0, sl
 80068b8:	9301      	str	r3, [sp, #4]
 80068ba:	f7ff faf3 	bl	8005ea4 <memmove>
 80068be:	9b01      	ldr	r3, [sp, #4]
 80068c0:	e76c      	b.n	800679c <_realloc_r+0x204>
 80068c2:	f8cb 1010 	str.w	r1, [fp, #16]
 80068c6:	68e9      	ldr	r1, [r5, #12]
 80068c8:	f8cb 1014 	str.w	r1, [fp, #20]
 80068cc:	2a24      	cmp	r2, #36	; 0x24
 80068ce:	d004      	beq.n	80068da <_realloc_r+0x342>
 80068d0:	6929      	ldr	r1, [r5, #16]
 80068d2:	f10b 0218 	add.w	r2, fp, #24
 80068d6:	3510      	adds	r5, #16
 80068d8:	e75b      	b.n	8006792 <_realloc_r+0x1fa>
 80068da:	692a      	ldr	r2, [r5, #16]
 80068dc:	f8cb 2018 	str.w	r2, [fp, #24]
 80068e0:	696a      	ldr	r2, [r5, #20]
 80068e2:	f8cb 201c 	str.w	r2, [fp, #28]
 80068e6:	69a9      	ldr	r1, [r5, #24]
 80068e8:	f10b 0220 	add.w	r2, fp, #32
 80068ec:	3518      	adds	r5, #24
 80068ee:	e750      	b.n	8006792 <_realloc_r+0x1fa>
 80068f0:	2000044c 	.word	0x2000044c

080068f4 <frexp>:
 80068f4:	ec53 2b10 	vmov	r2, r3, d0
 80068f8:	b570      	push	{r4, r5, r6, lr}
 80068fa:	4e16      	ldr	r6, [pc, #88]	; (8006954 <frexp+0x60>)
 80068fc:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006900:	2500      	movs	r5, #0
 8006902:	42b1      	cmp	r1, r6
 8006904:	4604      	mov	r4, r0
 8006906:	6005      	str	r5, [r0, #0]
 8006908:	dc21      	bgt.n	800694e <frexp+0x5a>
 800690a:	ee10 6a10 	vmov	r6, s0
 800690e:	430e      	orrs	r6, r1
 8006910:	d01d      	beq.n	800694e <frexp+0x5a>
 8006912:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006916:	4618      	mov	r0, r3
 8006918:	da0c      	bge.n	8006934 <frexp+0x40>
 800691a:	4619      	mov	r1, r3
 800691c:	2200      	movs	r2, #0
 800691e:	ee10 0a10 	vmov	r0, s0
 8006922:	4b0d      	ldr	r3, [pc, #52]	; (8006958 <frexp+0x64>)
 8006924:	f7fa f908 	bl	8000b38 <__aeabi_dmul>
 8006928:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800692c:	4602      	mov	r2, r0
 800692e:	4608      	mov	r0, r1
 8006930:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006934:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006938:	1509      	asrs	r1, r1, #20
 800693a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800693e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006942:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006946:	4429      	add	r1, r5
 8006948:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800694c:	6021      	str	r1, [r4, #0]
 800694e:	ec43 2b10 	vmov	d0, r2, r3
 8006952:	bd70      	pop	{r4, r5, r6, pc}
 8006954:	7fefffff 	.word	0x7fefffff
 8006958:	43500000 	.word	0x43500000

0800695c <_sbrk_r>:
 800695c:	b538      	push	{r3, r4, r5, lr}
 800695e:	4c07      	ldr	r4, [pc, #28]	; (800697c <_sbrk_r+0x20>)
 8006960:	2300      	movs	r3, #0
 8006962:	4605      	mov	r5, r0
 8006964:	4608      	mov	r0, r1
 8006966:	6023      	str	r3, [r4, #0]
 8006968:	f7fb fc35 	bl	80021d6 <_sbrk>
 800696c:	1c43      	adds	r3, r0, #1
 800696e:	d000      	beq.n	8006972 <_sbrk_r+0x16>
 8006970:	bd38      	pop	{r3, r4, r5, pc}
 8006972:	6823      	ldr	r3, [r4, #0]
 8006974:	2b00      	cmp	r3, #0
 8006976:	d0fb      	beq.n	8006970 <_sbrk_r+0x14>
 8006978:	602b      	str	r3, [r5, #0]
 800697a:	bd38      	pop	{r3, r4, r5, pc}
 800697c:	20000c20 	.word	0x20000c20

08006980 <__sread>:
 8006980:	b510      	push	{r4, lr}
 8006982:	460c      	mov	r4, r1
 8006984:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006988:	f000 fabc 	bl	8006f04 <_read_r>
 800698c:	2800      	cmp	r0, #0
 800698e:	db03      	blt.n	8006998 <__sread+0x18>
 8006990:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006992:	4403      	add	r3, r0
 8006994:	6523      	str	r3, [r4, #80]	; 0x50
 8006996:	bd10      	pop	{r4, pc}
 8006998:	89a3      	ldrh	r3, [r4, #12]
 800699a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800699e:	81a3      	strh	r3, [r4, #12]
 80069a0:	bd10      	pop	{r4, pc}
 80069a2:	bf00      	nop

080069a4 <__swrite>:
 80069a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80069a8:	4616      	mov	r6, r2
 80069aa:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 80069ae:	461f      	mov	r7, r3
 80069b0:	05d3      	lsls	r3, r2, #23
 80069b2:	460c      	mov	r4, r1
 80069b4:	4605      	mov	r5, r0
 80069b6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069ba:	d507      	bpl.n	80069cc <__swrite+0x28>
 80069bc:	2200      	movs	r2, #0
 80069be:	2302      	movs	r3, #2
 80069c0:	f000 fa74 	bl	8006eac <_lseek_r>
 80069c4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80069c8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80069cc:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 80069d0:	81a2      	strh	r2, [r4, #12]
 80069d2:	463b      	mov	r3, r7
 80069d4:	4632      	mov	r2, r6
 80069d6:	4628      	mov	r0, r5
 80069d8:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 80069dc:	f000 b88c 	b.w	8006af8 <_write_r>

080069e0 <__sseek>:
 80069e0:	b510      	push	{r4, lr}
 80069e2:	460c      	mov	r4, r1
 80069e4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069e8:	f000 fa60 	bl	8006eac <_lseek_r>
 80069ec:	89a3      	ldrh	r3, [r4, #12]
 80069ee:	1c42      	adds	r2, r0, #1
 80069f0:	bf0e      	itee	eq
 80069f2:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 80069f6:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 80069fa:	6520      	strne	r0, [r4, #80]	; 0x50
 80069fc:	81a3      	strh	r3, [r4, #12]
 80069fe:	bd10      	pop	{r4, pc}

08006a00 <__sclose>:
 8006a00:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a04:	f000 b922 	b.w	8006c4c <_close_r>

08006a08 <strncpy>:
 8006a08:	ea40 0301 	orr.w	r3, r0, r1
 8006a0c:	079b      	lsls	r3, r3, #30
 8006a0e:	b470      	push	{r4, r5, r6}
 8006a10:	d12a      	bne.n	8006a68 <strncpy+0x60>
 8006a12:	2a03      	cmp	r2, #3
 8006a14:	d928      	bls.n	8006a68 <strncpy+0x60>
 8006a16:	460c      	mov	r4, r1
 8006a18:	4603      	mov	r3, r0
 8006a1a:	4621      	mov	r1, r4
 8006a1c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006a20:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006a24:	ea25 0506 	bic.w	r5, r5, r6
 8006a28:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006a2c:	d106      	bne.n	8006a3c <strncpy+0x34>
 8006a2e:	3a04      	subs	r2, #4
 8006a30:	2a03      	cmp	r2, #3
 8006a32:	f843 6b04 	str.w	r6, [r3], #4
 8006a36:	4621      	mov	r1, r4
 8006a38:	d8ef      	bhi.n	8006a1a <strncpy+0x12>
 8006a3a:	b19a      	cbz	r2, 8006a64 <strncpy+0x5c>
 8006a3c:	780c      	ldrb	r4, [r1, #0]
 8006a3e:	701c      	strb	r4, [r3, #0]
 8006a40:	3a01      	subs	r2, #1
 8006a42:	3301      	adds	r3, #1
 8006a44:	b13c      	cbz	r4, 8006a56 <strncpy+0x4e>
 8006a46:	b16a      	cbz	r2, 8006a64 <strncpy+0x5c>
 8006a48:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006a4c:	f803 4b01 	strb.w	r4, [r3], #1
 8006a50:	3a01      	subs	r2, #1
 8006a52:	2c00      	cmp	r4, #0
 8006a54:	d1f7      	bne.n	8006a46 <strncpy+0x3e>
 8006a56:	b12a      	cbz	r2, 8006a64 <strncpy+0x5c>
 8006a58:	441a      	add	r2, r3
 8006a5a:	2100      	movs	r1, #0
 8006a5c:	f803 1b01 	strb.w	r1, [r3], #1
 8006a60:	4293      	cmp	r3, r2
 8006a62:	d1fb      	bne.n	8006a5c <strncpy+0x54>
 8006a64:	bc70      	pop	{r4, r5, r6}
 8006a66:	4770      	bx	lr
 8006a68:	4603      	mov	r3, r0
 8006a6a:	e7e6      	b.n	8006a3a <strncpy+0x32>

08006a6c <__sprint_r.part.0>:
 8006a6c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a70:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006a72:	049c      	lsls	r4, r3, #18
 8006a74:	4692      	mov	sl, r2
 8006a76:	d52d      	bpl.n	8006ad4 <__sprint_r.part.0+0x68>
 8006a78:	6893      	ldr	r3, [r2, #8]
 8006a7a:	6812      	ldr	r2, [r2, #0]
 8006a7c:	b343      	cbz	r3, 8006ad0 <__sprint_r.part.0+0x64>
 8006a7e:	460e      	mov	r6, r1
 8006a80:	4607      	mov	r7, r0
 8006a82:	f102 0908 	add.w	r9, r2, #8
 8006a86:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006a8a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006a8e:	d015      	beq.n	8006abc <__sprint_r.part.0+0x50>
 8006a90:	3d04      	subs	r5, #4
 8006a92:	2400      	movs	r4, #0
 8006a94:	e001      	b.n	8006a9a <__sprint_r.part.0+0x2e>
 8006a96:	45a0      	cmp	r8, r4
 8006a98:	d00e      	beq.n	8006ab8 <__sprint_r.part.0+0x4c>
 8006a9a:	4632      	mov	r2, r6
 8006a9c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006aa0:	4638      	mov	r0, r7
 8006aa2:	f000 f99d 	bl	8006de0 <_fputwc_r>
 8006aa6:	1c43      	adds	r3, r0, #1
 8006aa8:	f104 0401 	add.w	r4, r4, #1
 8006aac:	d1f3      	bne.n	8006a96 <__sprint_r.part.0+0x2a>
 8006aae:	2300      	movs	r3, #0
 8006ab0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006ab4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ab8:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006abc:	f02b 0b03 	bic.w	fp, fp, #3
 8006ac0:	eba3 030b 	sub.w	r3, r3, fp
 8006ac4:	f8ca 3008 	str.w	r3, [sl, #8]
 8006ac8:	f109 0908 	add.w	r9, r9, #8
 8006acc:	2b00      	cmp	r3, #0
 8006ace:	d1da      	bne.n	8006a86 <__sprint_r.part.0+0x1a>
 8006ad0:	2000      	movs	r0, #0
 8006ad2:	e7ec      	b.n	8006aae <__sprint_r.part.0+0x42>
 8006ad4:	f7fe fd0c 	bl	80054f0 <__sfvwrite_r>
 8006ad8:	2300      	movs	r3, #0
 8006ada:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006ade:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ae2:	bf00      	nop

08006ae4 <__sprint_r>:
 8006ae4:	6893      	ldr	r3, [r2, #8]
 8006ae6:	b10b      	cbz	r3, 8006aec <__sprint_r+0x8>
 8006ae8:	f7ff bfc0 	b.w	8006a6c <__sprint_r.part.0>
 8006aec:	b410      	push	{r4}
 8006aee:	4618      	mov	r0, r3
 8006af0:	6053      	str	r3, [r2, #4]
 8006af2:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006af6:	4770      	bx	lr

08006af8 <_write_r>:
 8006af8:	b570      	push	{r4, r5, r6, lr}
 8006afa:	460d      	mov	r5, r1
 8006afc:	4c08      	ldr	r4, [pc, #32]	; (8006b20 <_write_r+0x28>)
 8006afe:	4611      	mov	r1, r2
 8006b00:	4606      	mov	r6, r0
 8006b02:	461a      	mov	r2, r3
 8006b04:	4628      	mov	r0, r5
 8006b06:	2300      	movs	r3, #0
 8006b08:	6023      	str	r3, [r4, #0]
 8006b0a:	f7fb fb51 	bl	80021b0 <_write>
 8006b0e:	1c43      	adds	r3, r0, #1
 8006b10:	d000      	beq.n	8006b14 <_write_r+0x1c>
 8006b12:	bd70      	pop	{r4, r5, r6, pc}
 8006b14:	6823      	ldr	r3, [r4, #0]
 8006b16:	2b00      	cmp	r3, #0
 8006b18:	d0fb      	beq.n	8006b12 <_write_r+0x1a>
 8006b1a:	6033      	str	r3, [r6, #0]
 8006b1c:	bd70      	pop	{r4, r5, r6, pc}
 8006b1e:	bf00      	nop
 8006b20:	20000c20 	.word	0x20000c20

08006b24 <__register_exitproc>:
 8006b24:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006b28:	4d2b      	ldr	r5, [pc, #172]	; (8006bd8 <__register_exitproc+0xb4>)
 8006b2a:	4606      	mov	r6, r0
 8006b2c:	6828      	ldr	r0, [r5, #0]
 8006b2e:	4698      	mov	r8, r3
 8006b30:	460f      	mov	r7, r1
 8006b32:	4691      	mov	r9, r2
 8006b34:	f7fe fe96 	bl	8005864 <__retarget_lock_acquire_recursive>
 8006b38:	4b28      	ldr	r3, [pc, #160]	; (8006bdc <__register_exitproc+0xb8>)
 8006b3a:	681c      	ldr	r4, [r3, #0]
 8006b3c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006b40:	2b00      	cmp	r3, #0
 8006b42:	d03d      	beq.n	8006bc0 <__register_exitproc+0x9c>
 8006b44:	685a      	ldr	r2, [r3, #4]
 8006b46:	2a1f      	cmp	r2, #31
 8006b48:	dc0d      	bgt.n	8006b66 <__register_exitproc+0x42>
 8006b4a:	f102 0c01 	add.w	ip, r2, #1
 8006b4e:	bb16      	cbnz	r6, 8006b96 <__register_exitproc+0x72>
 8006b50:	3202      	adds	r2, #2
 8006b52:	f8c3 c004 	str.w	ip, [r3, #4]
 8006b56:	6828      	ldr	r0, [r5, #0]
 8006b58:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006b5c:	f7fe fe84 	bl	8005868 <__retarget_lock_release_recursive>
 8006b60:	2000      	movs	r0, #0
 8006b62:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006b66:	4b1e      	ldr	r3, [pc, #120]	; (8006be0 <__register_exitproc+0xbc>)
 8006b68:	b37b      	cbz	r3, 8006bca <__register_exitproc+0xa6>
 8006b6a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006b6e:	f3af 8000 	nop.w
 8006b72:	4603      	mov	r3, r0
 8006b74:	b348      	cbz	r0, 8006bca <__register_exitproc+0xa6>
 8006b76:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006b7a:	2100      	movs	r1, #0
 8006b7c:	e9c0 2100 	strd	r2, r1, [r0]
 8006b80:	f04f 0c01 	mov.w	ip, #1
 8006b84:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006b88:	460a      	mov	r2, r1
 8006b8a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006b8e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006b92:	2e00      	cmp	r6, #0
 8006b94:	d0dc      	beq.n	8006b50 <__register_exitproc+0x2c>
 8006b96:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006b9a:	2401      	movs	r4, #1
 8006b9c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006ba0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006ba4:	4094      	lsls	r4, r2
 8006ba6:	4320      	orrs	r0, r4
 8006ba8:	2e02      	cmp	r6, #2
 8006baa:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006bae:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006bb2:	d1cd      	bne.n	8006b50 <__register_exitproc+0x2c>
 8006bb4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006bb8:	430c      	orrs	r4, r1
 8006bba:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006bbe:	e7c7      	b.n	8006b50 <__register_exitproc+0x2c>
 8006bc0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006bc4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006bc8:	e7bc      	b.n	8006b44 <__register_exitproc+0x20>
 8006bca:	6828      	ldr	r0, [r5, #0]
 8006bcc:	f7fe fe4c 	bl	8005868 <__retarget_lock_release_recursive>
 8006bd0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006bd4:	e7c5      	b.n	8006b62 <__register_exitproc+0x3e>
 8006bd6:	bf00      	nop
 8006bd8:	20000448 	.word	0x20000448
 8006bdc:	080071a4 	.word	0x080071a4
 8006be0:	00000000 	.word	0x00000000

08006be4 <_calloc_r>:
 8006be4:	b510      	push	{r4, lr}
 8006be6:	fb02 f101 	mul.w	r1, r2, r1
 8006bea:	f7fe feb7 	bl	800595c <_malloc_r>
 8006bee:	4604      	mov	r4, r0
 8006bf0:	b1d8      	cbz	r0, 8006c2a <_calloc_r+0x46>
 8006bf2:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006bf6:	f022 0203 	bic.w	r2, r2, #3
 8006bfa:	3a04      	subs	r2, #4
 8006bfc:	2a24      	cmp	r2, #36	; 0x24
 8006bfe:	d81d      	bhi.n	8006c3c <_calloc_r+0x58>
 8006c00:	2a13      	cmp	r2, #19
 8006c02:	d914      	bls.n	8006c2e <_calloc_r+0x4a>
 8006c04:	2300      	movs	r3, #0
 8006c06:	2a1b      	cmp	r2, #27
 8006c08:	e9c0 3300 	strd	r3, r3, [r0]
 8006c0c:	d91b      	bls.n	8006c46 <_calloc_r+0x62>
 8006c0e:	2a24      	cmp	r2, #36	; 0x24
 8006c10:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006c14:	bf0a      	itet	eq
 8006c16:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006c1a:	f100 0210 	addne.w	r2, r0, #16
 8006c1e:	f100 0218 	addeq.w	r2, r0, #24
 8006c22:	2300      	movs	r3, #0
 8006c24:	e9c2 3300 	strd	r3, r3, [r2]
 8006c28:	6093      	str	r3, [r2, #8]
 8006c2a:	4620      	mov	r0, r4
 8006c2c:	bd10      	pop	{r4, pc}
 8006c2e:	4602      	mov	r2, r0
 8006c30:	2300      	movs	r3, #0
 8006c32:	e9c2 3300 	strd	r3, r3, [r2]
 8006c36:	6093      	str	r3, [r2, #8]
 8006c38:	4620      	mov	r0, r4
 8006c3a:	bd10      	pop	{r4, pc}
 8006c3c:	2100      	movs	r1, #0
 8006c3e:	f7fb fb6f 	bl	8002320 <memset>
 8006c42:	4620      	mov	r0, r4
 8006c44:	bd10      	pop	{r4, pc}
 8006c46:	f100 0208 	add.w	r2, r0, #8
 8006c4a:	e7f1      	b.n	8006c30 <_calloc_r+0x4c>

08006c4c <_close_r>:
 8006c4c:	b538      	push	{r3, r4, r5, lr}
 8006c4e:	4c07      	ldr	r4, [pc, #28]	; (8006c6c <_close_r+0x20>)
 8006c50:	2300      	movs	r3, #0
 8006c52:	4605      	mov	r5, r0
 8006c54:	4608      	mov	r0, r1
 8006c56:	6023      	str	r3, [r4, #0]
 8006c58:	f7fb fad9 	bl	800220e <_close>
 8006c5c:	1c43      	adds	r3, r0, #1
 8006c5e:	d000      	beq.n	8006c62 <_close_r+0x16>
 8006c60:	bd38      	pop	{r3, r4, r5, pc}
 8006c62:	6823      	ldr	r3, [r4, #0]
 8006c64:	2b00      	cmp	r3, #0
 8006c66:	d0fb      	beq.n	8006c60 <_close_r+0x14>
 8006c68:	602b      	str	r3, [r5, #0]
 8006c6a:	bd38      	pop	{r3, r4, r5, pc}
 8006c6c:	20000c20 	.word	0x20000c20

08006c70 <_fclose_r>:
 8006c70:	b570      	push	{r4, r5, r6, lr}
 8006c72:	2900      	cmp	r1, #0
 8006c74:	d048      	beq.n	8006d08 <_fclose_r+0x98>
 8006c76:	4605      	mov	r5, r0
 8006c78:	460c      	mov	r4, r1
 8006c7a:	b110      	cbz	r0, 8006c82 <_fclose_r+0x12>
 8006c7c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006c7e:	2b00      	cmp	r3, #0
 8006c80:	d048      	beq.n	8006d14 <_fclose_r+0xa4>
 8006c82:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006c84:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c88:	07d0      	lsls	r0, r2, #31
 8006c8a:	d440      	bmi.n	8006d0e <_fclose_r+0x9e>
 8006c8c:	0599      	lsls	r1, r3, #22
 8006c8e:	d530      	bpl.n	8006cf2 <_fclose_r+0x82>
 8006c90:	4621      	mov	r1, r4
 8006c92:	4628      	mov	r0, r5
 8006c94:	f7fe f990 	bl	8004fb8 <__sflush_r>
 8006c98:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006c9a:	4606      	mov	r6, r0
 8006c9c:	b133      	cbz	r3, 8006cac <_fclose_r+0x3c>
 8006c9e:	69e1      	ldr	r1, [r4, #28]
 8006ca0:	4628      	mov	r0, r5
 8006ca2:	4798      	blx	r3
 8006ca4:	2800      	cmp	r0, #0
 8006ca6:	bfb8      	it	lt
 8006ca8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006cac:	89a3      	ldrh	r3, [r4, #12]
 8006cae:	061a      	lsls	r2, r3, #24
 8006cb0:	d43c      	bmi.n	8006d2c <_fclose_r+0xbc>
 8006cb2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006cb4:	b141      	cbz	r1, 8006cc8 <_fclose_r+0x58>
 8006cb6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006cba:	4299      	cmp	r1, r3
 8006cbc:	d002      	beq.n	8006cc4 <_fclose_r+0x54>
 8006cbe:	4628      	mov	r0, r5
 8006cc0:	f7fe fb22 	bl	8005308 <_free_r>
 8006cc4:	2300      	movs	r3, #0
 8006cc6:	6323      	str	r3, [r4, #48]	; 0x30
 8006cc8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006cca:	b121      	cbz	r1, 8006cd6 <_fclose_r+0x66>
 8006ccc:	4628      	mov	r0, r5
 8006cce:	f7fe fb1b 	bl	8005308 <_free_r>
 8006cd2:	2300      	movs	r3, #0
 8006cd4:	6463      	str	r3, [r4, #68]	; 0x44
 8006cd6:	f7fe faa1 	bl	800521c <__sfp_lock_acquire>
 8006cda:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006cdc:	2200      	movs	r2, #0
 8006cde:	07db      	lsls	r3, r3, #31
 8006ce0:	81a2      	strh	r2, [r4, #12]
 8006ce2:	d51f      	bpl.n	8006d24 <_fclose_r+0xb4>
 8006ce4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ce6:	f7fe fdbb 	bl	8005860 <__retarget_lock_close_recursive>
 8006cea:	f7fe fa9d 	bl	8005228 <__sfp_lock_release>
 8006cee:	4630      	mov	r0, r6
 8006cf0:	bd70      	pop	{r4, r5, r6, pc}
 8006cf2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006cf4:	f7fe fdb6 	bl	8005864 <__retarget_lock_acquire_recursive>
 8006cf8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cfc:	2b00      	cmp	r3, #0
 8006cfe:	d1c7      	bne.n	8006c90 <_fclose_r+0x20>
 8006d00:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006d02:	f016 0601 	ands.w	r6, r6, #1
 8006d06:	d016      	beq.n	8006d36 <_fclose_r+0xc6>
 8006d08:	2600      	movs	r6, #0
 8006d0a:	4630      	mov	r0, r6
 8006d0c:	bd70      	pop	{r4, r5, r6, pc}
 8006d0e:	2b00      	cmp	r3, #0
 8006d10:	d0fa      	beq.n	8006d08 <_fclose_r+0x98>
 8006d12:	e7bd      	b.n	8006c90 <_fclose_r+0x20>
 8006d14:	f7fe fa56 	bl	80051c4 <__sinit>
 8006d18:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d1a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d1e:	07d0      	lsls	r0, r2, #31
 8006d20:	d4f5      	bmi.n	8006d0e <_fclose_r+0x9e>
 8006d22:	e7b3      	b.n	8006c8c <_fclose_r+0x1c>
 8006d24:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d26:	f7fe fd9f 	bl	8005868 <__retarget_lock_release_recursive>
 8006d2a:	e7db      	b.n	8006ce4 <_fclose_r+0x74>
 8006d2c:	6921      	ldr	r1, [r4, #16]
 8006d2e:	4628      	mov	r0, r5
 8006d30:	f7fe faea 	bl	8005308 <_free_r>
 8006d34:	e7bd      	b.n	8006cb2 <_fclose_r+0x42>
 8006d36:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d38:	f7fe fd96 	bl	8005868 <__retarget_lock_release_recursive>
 8006d3c:	4630      	mov	r0, r6
 8006d3e:	bd70      	pop	{r4, r5, r6, pc}

08006d40 <__fputwc>:
 8006d40:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006d44:	b082      	sub	sp, #8
 8006d46:	4681      	mov	r9, r0
 8006d48:	4688      	mov	r8, r1
 8006d4a:	4614      	mov	r4, r2
 8006d4c:	f000 f8a0 	bl	8006e90 <__locale_mb_cur_max>
 8006d50:	2801      	cmp	r0, #1
 8006d52:	d103      	bne.n	8006d5c <__fputwc+0x1c>
 8006d54:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006d58:	2bfe      	cmp	r3, #254	; 0xfe
 8006d5a:	d933      	bls.n	8006dc4 <__fputwc+0x84>
 8006d5c:	4642      	mov	r2, r8
 8006d5e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006d62:	a901      	add	r1, sp, #4
 8006d64:	4648      	mov	r0, r9
 8006d66:	f000 f93b 	bl	8006fe0 <_wcrtomb_r>
 8006d6a:	1c42      	adds	r2, r0, #1
 8006d6c:	4606      	mov	r6, r0
 8006d6e:	d02f      	beq.n	8006dd0 <__fputwc+0x90>
 8006d70:	b320      	cbz	r0, 8006dbc <__fputwc+0x7c>
 8006d72:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006d76:	2500      	movs	r5, #0
 8006d78:	f10d 0a04 	add.w	sl, sp, #4
 8006d7c:	e009      	b.n	8006d92 <__fputwc+0x52>
 8006d7e:	6823      	ldr	r3, [r4, #0]
 8006d80:	1c5a      	adds	r2, r3, #1
 8006d82:	6022      	str	r2, [r4, #0]
 8006d84:	f883 c000 	strb.w	ip, [r3]
 8006d88:	3501      	adds	r5, #1
 8006d8a:	42b5      	cmp	r5, r6
 8006d8c:	d216      	bcs.n	8006dbc <__fputwc+0x7c>
 8006d8e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006d92:	68a3      	ldr	r3, [r4, #8]
 8006d94:	3b01      	subs	r3, #1
 8006d96:	2b00      	cmp	r3, #0
 8006d98:	60a3      	str	r3, [r4, #8]
 8006d9a:	daf0      	bge.n	8006d7e <__fputwc+0x3e>
 8006d9c:	69a7      	ldr	r7, [r4, #24]
 8006d9e:	42bb      	cmp	r3, r7
 8006da0:	4661      	mov	r1, ip
 8006da2:	4622      	mov	r2, r4
 8006da4:	4648      	mov	r0, r9
 8006da6:	db02      	blt.n	8006dae <__fputwc+0x6e>
 8006da8:	f1bc 0f0a 	cmp.w	ip, #10
 8006dac:	d1e7      	bne.n	8006d7e <__fputwc+0x3e>
 8006dae:	f000 f8bf 	bl	8006f30 <__swbuf_r>
 8006db2:	1c43      	adds	r3, r0, #1
 8006db4:	d1e8      	bne.n	8006d88 <__fputwc+0x48>
 8006db6:	b002      	add	sp, #8
 8006db8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006dbc:	4640      	mov	r0, r8
 8006dbe:	b002      	add	sp, #8
 8006dc0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006dc4:	fa5f fc88 	uxtb.w	ip, r8
 8006dc8:	4606      	mov	r6, r0
 8006dca:	f88d c004 	strb.w	ip, [sp, #4]
 8006dce:	e7d2      	b.n	8006d76 <__fputwc+0x36>
 8006dd0:	89a3      	ldrh	r3, [r4, #12]
 8006dd2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006dd6:	81a3      	strh	r3, [r4, #12]
 8006dd8:	b002      	add	sp, #8
 8006dda:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006dde:	bf00      	nop

08006de0 <_fputwc_r>:
 8006de0:	b530      	push	{r4, r5, lr}
 8006de2:	4605      	mov	r5, r0
 8006de4:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006de6:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006dea:	07c0      	lsls	r0, r0, #31
 8006dec:	4614      	mov	r4, r2
 8006dee:	b083      	sub	sp, #12
 8006df0:	b29a      	uxth	r2, r3
 8006df2:	d401      	bmi.n	8006df8 <_fputwc_r+0x18>
 8006df4:	0590      	lsls	r0, r2, #22
 8006df6:	d51c      	bpl.n	8006e32 <_fputwc_r+0x52>
 8006df8:	0490      	lsls	r0, r2, #18
 8006dfa:	d406      	bmi.n	8006e0a <_fputwc_r+0x2a>
 8006dfc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006dfe:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006e02:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006e06:	81a3      	strh	r3, [r4, #12]
 8006e08:	6662      	str	r2, [r4, #100]	; 0x64
 8006e0a:	4628      	mov	r0, r5
 8006e0c:	4622      	mov	r2, r4
 8006e0e:	f7ff ff97 	bl	8006d40 <__fputwc>
 8006e12:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006e14:	07da      	lsls	r2, r3, #31
 8006e16:	4605      	mov	r5, r0
 8006e18:	d402      	bmi.n	8006e20 <_fputwc_r+0x40>
 8006e1a:	89a3      	ldrh	r3, [r4, #12]
 8006e1c:	059b      	lsls	r3, r3, #22
 8006e1e:	d502      	bpl.n	8006e26 <_fputwc_r+0x46>
 8006e20:	4628      	mov	r0, r5
 8006e22:	b003      	add	sp, #12
 8006e24:	bd30      	pop	{r4, r5, pc}
 8006e26:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e28:	f7fe fd1e 	bl	8005868 <__retarget_lock_release_recursive>
 8006e2c:	4628      	mov	r0, r5
 8006e2e:	b003      	add	sp, #12
 8006e30:	bd30      	pop	{r4, r5, pc}
 8006e32:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e34:	9101      	str	r1, [sp, #4]
 8006e36:	f7fe fd15 	bl	8005864 <__retarget_lock_acquire_recursive>
 8006e3a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e3e:	9901      	ldr	r1, [sp, #4]
 8006e40:	b29a      	uxth	r2, r3
 8006e42:	e7d9      	b.n	8006df8 <_fputwc_r+0x18>

08006e44 <_fstat_r>:
 8006e44:	b538      	push	{r3, r4, r5, lr}
 8006e46:	460b      	mov	r3, r1
 8006e48:	4c07      	ldr	r4, [pc, #28]	; (8006e68 <_fstat_r+0x24>)
 8006e4a:	4605      	mov	r5, r0
 8006e4c:	4611      	mov	r1, r2
 8006e4e:	4618      	mov	r0, r3
 8006e50:	2300      	movs	r3, #0
 8006e52:	6023      	str	r3, [r4, #0]
 8006e54:	f7fb f9de 	bl	8002214 <_fstat>
 8006e58:	1c43      	adds	r3, r0, #1
 8006e5a:	d000      	beq.n	8006e5e <_fstat_r+0x1a>
 8006e5c:	bd38      	pop	{r3, r4, r5, pc}
 8006e5e:	6823      	ldr	r3, [r4, #0]
 8006e60:	2b00      	cmp	r3, #0
 8006e62:	d0fb      	beq.n	8006e5c <_fstat_r+0x18>
 8006e64:	602b      	str	r3, [r5, #0]
 8006e66:	bd38      	pop	{r3, r4, r5, pc}
 8006e68:	20000c20 	.word	0x20000c20

08006e6c <_isatty_r>:
 8006e6c:	b538      	push	{r3, r4, r5, lr}
 8006e6e:	4c07      	ldr	r4, [pc, #28]	; (8006e8c <_isatty_r+0x20>)
 8006e70:	2300      	movs	r3, #0
 8006e72:	4605      	mov	r5, r0
 8006e74:	4608      	mov	r0, r1
 8006e76:	6023      	str	r3, [r4, #0]
 8006e78:	f7fb f9d1 	bl	800221e <_isatty>
 8006e7c:	1c43      	adds	r3, r0, #1
 8006e7e:	d000      	beq.n	8006e82 <_isatty_r+0x16>
 8006e80:	bd38      	pop	{r3, r4, r5, pc}
 8006e82:	6823      	ldr	r3, [r4, #0]
 8006e84:	2b00      	cmp	r3, #0
 8006e86:	d0fb      	beq.n	8006e80 <_isatty_r+0x14>
 8006e88:	602b      	str	r3, [r5, #0]
 8006e8a:	bd38      	pop	{r3, r4, r5, pc}
 8006e8c:	20000c20 	.word	0x20000c20

08006e90 <__locale_mb_cur_max>:
 8006e90:	4b04      	ldr	r3, [pc, #16]	; (8006ea4 <__locale_mb_cur_max+0x14>)
 8006e92:	4a05      	ldr	r2, [pc, #20]	; (8006ea8 <__locale_mb_cur_max+0x18>)
 8006e94:	681b      	ldr	r3, [r3, #0]
 8006e96:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006e98:	2b00      	cmp	r3, #0
 8006e9a:	bf08      	it	eq
 8006e9c:	4613      	moveq	r3, r2
 8006e9e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006ea2:	4770      	bx	lr
 8006ea4:	20000018 	.word	0x20000018
 8006ea8:	2000085c 	.word	0x2000085c

08006eac <_lseek_r>:
 8006eac:	b570      	push	{r4, r5, r6, lr}
 8006eae:	460d      	mov	r5, r1
 8006eb0:	4c08      	ldr	r4, [pc, #32]	; (8006ed4 <_lseek_r+0x28>)
 8006eb2:	4611      	mov	r1, r2
 8006eb4:	4606      	mov	r6, r0
 8006eb6:	461a      	mov	r2, r3
 8006eb8:	4628      	mov	r0, r5
 8006eba:	2300      	movs	r3, #0
 8006ebc:	6023      	str	r3, [r4, #0]
 8006ebe:	f7fb f9b0 	bl	8002222 <_lseek>
 8006ec2:	1c43      	adds	r3, r0, #1
 8006ec4:	d000      	beq.n	8006ec8 <_lseek_r+0x1c>
 8006ec6:	bd70      	pop	{r4, r5, r6, pc}
 8006ec8:	6823      	ldr	r3, [r4, #0]
 8006eca:	2b00      	cmp	r3, #0
 8006ecc:	d0fb      	beq.n	8006ec6 <_lseek_r+0x1a>
 8006ece:	6033      	str	r3, [r6, #0]
 8006ed0:	bd70      	pop	{r4, r5, r6, pc}
 8006ed2:	bf00      	nop
 8006ed4:	20000c20 	.word	0x20000c20

08006ed8 <__ascii_mbtowc>:
 8006ed8:	b082      	sub	sp, #8
 8006eda:	b149      	cbz	r1, 8006ef0 <__ascii_mbtowc+0x18>
 8006edc:	b15a      	cbz	r2, 8006ef6 <__ascii_mbtowc+0x1e>
 8006ede:	b16b      	cbz	r3, 8006efc <__ascii_mbtowc+0x24>
 8006ee0:	7813      	ldrb	r3, [r2, #0]
 8006ee2:	600b      	str	r3, [r1, #0]
 8006ee4:	7812      	ldrb	r2, [r2, #0]
 8006ee6:	1c10      	adds	r0, r2, #0
 8006ee8:	bf18      	it	ne
 8006eea:	2001      	movne	r0, #1
 8006eec:	b002      	add	sp, #8
 8006eee:	4770      	bx	lr
 8006ef0:	a901      	add	r1, sp, #4
 8006ef2:	2a00      	cmp	r2, #0
 8006ef4:	d1f3      	bne.n	8006ede <__ascii_mbtowc+0x6>
 8006ef6:	4610      	mov	r0, r2
 8006ef8:	b002      	add	sp, #8
 8006efa:	4770      	bx	lr
 8006efc:	f06f 0001 	mvn.w	r0, #1
 8006f00:	e7f4      	b.n	8006eec <__ascii_mbtowc+0x14>
 8006f02:	bf00      	nop

08006f04 <_read_r>:
 8006f04:	b570      	push	{r4, r5, r6, lr}
 8006f06:	460d      	mov	r5, r1
 8006f08:	4c08      	ldr	r4, [pc, #32]	; (8006f2c <_read_r+0x28>)
 8006f0a:	4611      	mov	r1, r2
 8006f0c:	4606      	mov	r6, r0
 8006f0e:	461a      	mov	r2, r3
 8006f10:	4628      	mov	r0, r5
 8006f12:	2300      	movs	r3, #0
 8006f14:	6023      	str	r3, [r4, #0]
 8006f16:	f7fb f938 	bl	800218a <_read>
 8006f1a:	1c43      	adds	r3, r0, #1
 8006f1c:	d000      	beq.n	8006f20 <_read_r+0x1c>
 8006f1e:	bd70      	pop	{r4, r5, r6, pc}
 8006f20:	6823      	ldr	r3, [r4, #0]
 8006f22:	2b00      	cmp	r3, #0
 8006f24:	d0fb      	beq.n	8006f1e <_read_r+0x1a>
 8006f26:	6033      	str	r3, [r6, #0]
 8006f28:	bd70      	pop	{r4, r5, r6, pc}
 8006f2a:	bf00      	nop
 8006f2c:	20000c20 	.word	0x20000c20

08006f30 <__swbuf_r>:
 8006f30:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f32:	460d      	mov	r5, r1
 8006f34:	4614      	mov	r4, r2
 8006f36:	4606      	mov	r6, r0
 8006f38:	b110      	cbz	r0, 8006f40 <__swbuf_r+0x10>
 8006f3a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f3c:	2b00      	cmp	r3, #0
 8006f3e:	d043      	beq.n	8006fc8 <__swbuf_r+0x98>
 8006f40:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f44:	69a3      	ldr	r3, [r4, #24]
 8006f46:	60a3      	str	r3, [r4, #8]
 8006f48:	b291      	uxth	r1, r2
 8006f4a:	0708      	lsls	r0, r1, #28
 8006f4c:	d51b      	bpl.n	8006f86 <__swbuf_r+0x56>
 8006f4e:	6923      	ldr	r3, [r4, #16]
 8006f50:	b1cb      	cbz	r3, 8006f86 <__swbuf_r+0x56>
 8006f52:	b2ed      	uxtb	r5, r5
 8006f54:	0489      	lsls	r1, r1, #18
 8006f56:	462f      	mov	r7, r5
 8006f58:	d522      	bpl.n	8006fa0 <__swbuf_r+0x70>
 8006f5a:	6822      	ldr	r2, [r4, #0]
 8006f5c:	6961      	ldr	r1, [r4, #20]
 8006f5e:	1ad3      	subs	r3, r2, r3
 8006f60:	4299      	cmp	r1, r3
 8006f62:	dd29      	ble.n	8006fb8 <__swbuf_r+0x88>
 8006f64:	3301      	adds	r3, #1
 8006f66:	68a1      	ldr	r1, [r4, #8]
 8006f68:	1c50      	adds	r0, r2, #1
 8006f6a:	3901      	subs	r1, #1
 8006f6c:	60a1      	str	r1, [r4, #8]
 8006f6e:	6020      	str	r0, [r4, #0]
 8006f70:	7015      	strb	r5, [r2, #0]
 8006f72:	6962      	ldr	r2, [r4, #20]
 8006f74:	429a      	cmp	r2, r3
 8006f76:	d02a      	beq.n	8006fce <__swbuf_r+0x9e>
 8006f78:	89a3      	ldrh	r3, [r4, #12]
 8006f7a:	07db      	lsls	r3, r3, #31
 8006f7c:	d501      	bpl.n	8006f82 <__swbuf_r+0x52>
 8006f7e:	2d0a      	cmp	r5, #10
 8006f80:	d025      	beq.n	8006fce <__swbuf_r+0x9e>
 8006f82:	4638      	mov	r0, r7
 8006f84:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006f86:	4621      	mov	r1, r4
 8006f88:	4630      	mov	r0, r6
 8006f8a:	f7fc fffd 	bl	8003f88 <__swsetup_r>
 8006f8e:	bb20      	cbnz	r0, 8006fda <__swbuf_r+0xaa>
 8006f90:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006f94:	6923      	ldr	r3, [r4, #16]
 8006f96:	b291      	uxth	r1, r2
 8006f98:	b2ed      	uxtb	r5, r5
 8006f9a:	0489      	lsls	r1, r1, #18
 8006f9c:	462f      	mov	r7, r5
 8006f9e:	d4dc      	bmi.n	8006f5a <__swbuf_r+0x2a>
 8006fa0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006fa2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006fa6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006faa:	81a2      	strh	r2, [r4, #12]
 8006fac:	6822      	ldr	r2, [r4, #0]
 8006fae:	6661      	str	r1, [r4, #100]	; 0x64
 8006fb0:	6961      	ldr	r1, [r4, #20]
 8006fb2:	1ad3      	subs	r3, r2, r3
 8006fb4:	4299      	cmp	r1, r3
 8006fb6:	dcd5      	bgt.n	8006f64 <__swbuf_r+0x34>
 8006fb8:	4621      	mov	r1, r4
 8006fba:	4630      	mov	r0, r6
 8006fbc:	f7fe f8a6 	bl	800510c <_fflush_r>
 8006fc0:	b958      	cbnz	r0, 8006fda <__swbuf_r+0xaa>
 8006fc2:	6822      	ldr	r2, [r4, #0]
 8006fc4:	2301      	movs	r3, #1
 8006fc6:	e7ce      	b.n	8006f66 <__swbuf_r+0x36>
 8006fc8:	f7fe f8fc 	bl	80051c4 <__sinit>
 8006fcc:	e7b8      	b.n	8006f40 <__swbuf_r+0x10>
 8006fce:	4621      	mov	r1, r4
 8006fd0:	4630      	mov	r0, r6
 8006fd2:	f7fe f89b 	bl	800510c <_fflush_r>
 8006fd6:	2800      	cmp	r0, #0
 8006fd8:	d0d3      	beq.n	8006f82 <__swbuf_r+0x52>
 8006fda:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8006fde:	e7d0      	b.n	8006f82 <__swbuf_r+0x52>

08006fe0 <_wcrtomb_r>:
 8006fe0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006fe2:	4c11      	ldr	r4, [pc, #68]	; (8007028 <_wcrtomb_r+0x48>)
 8006fe4:	6824      	ldr	r4, [r4, #0]
 8006fe6:	b085      	sub	sp, #20
 8006fe8:	4606      	mov	r6, r0
 8006fea:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8006fec:	461f      	mov	r7, r3
 8006fee:	b151      	cbz	r1, 8007006 <_wcrtomb_r+0x26>
 8006ff0:	4d0e      	ldr	r5, [pc, #56]	; (800702c <_wcrtomb_r+0x4c>)
 8006ff2:	2c00      	cmp	r4, #0
 8006ff4:	bf08      	it	eq
 8006ff6:	462c      	moveq	r4, r5
 8006ff8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8006ffc:	47a0      	blx	r4
 8006ffe:	1c43      	adds	r3, r0, #1
 8007000:	d00c      	beq.n	800701c <_wcrtomb_r+0x3c>
 8007002:	b005      	add	sp, #20
 8007004:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007006:	4a09      	ldr	r2, [pc, #36]	; (800702c <_wcrtomb_r+0x4c>)
 8007008:	2c00      	cmp	r4, #0
 800700a:	bf08      	it	eq
 800700c:	4614      	moveq	r4, r2
 800700e:	460a      	mov	r2, r1
 8007010:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007014:	a901      	add	r1, sp, #4
 8007016:	47a0      	blx	r4
 8007018:	1c43      	adds	r3, r0, #1
 800701a:	d1f2      	bne.n	8007002 <_wcrtomb_r+0x22>
 800701c:	2200      	movs	r2, #0
 800701e:	238a      	movs	r3, #138	; 0x8a
 8007020:	603a      	str	r2, [r7, #0]
 8007022:	6033      	str	r3, [r6, #0]
 8007024:	b005      	add	sp, #20
 8007026:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007028:	20000018 	.word	0x20000018
 800702c:	2000085c 	.word	0x2000085c

08007030 <__ascii_wctomb>:
 8007030:	b121      	cbz	r1, 800703c <__ascii_wctomb+0xc>
 8007032:	2aff      	cmp	r2, #255	; 0xff
 8007034:	d804      	bhi.n	8007040 <__ascii_wctomb+0x10>
 8007036:	700a      	strb	r2, [r1, #0]
 8007038:	2001      	movs	r0, #1
 800703a:	4770      	bx	lr
 800703c:	4608      	mov	r0, r1
 800703e:	4770      	bx	lr
 8007040:	238a      	movs	r3, #138	; 0x8a
 8007042:	6003      	str	r3, [r0, #0]
 8007044:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007048:	4770      	bx	lr
 800704a:	bf00      	nop

0800704c <_init>:
 800704c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800704e:	bf00      	nop
 8007050:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007052:	bc08      	pop	{r3}
 8007054:	469e      	mov	lr, r3
 8007056:	4770      	bx	lr

08007058 <_fini>:
 8007058:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800705a:	bf00      	nop
 800705c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800705e:	bc08      	pop	{r3}
 8007060:	469e      	mov	lr, r3
 8007062:	4770      	bx	lr
 8007064:	0000      	movs	r0, r0
	...
