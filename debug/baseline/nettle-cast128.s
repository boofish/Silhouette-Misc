
nettle-cast128.elf:     file format elf32-littlearm


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
 80001e0:	0800858c 	.word	0x0800858c

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
 80001fc:	0800858c 	.word	0x0800858c

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
 80013e8:	f24a 52e0 	movw	r2, #42464	; 0xa5e0
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
 8001462:	f24a 52d8 	movw	r2, #42456	; 0xa5d8
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
 800148c:	f24a 52d8 	movw	r2, #42456	; 0xa5d8
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
 80019d4:	f24a 6310 	movw	r3, #42512	; 0xa610
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
 80019fc:	f24a 6320 	movw	r3, #42528	; 0xa620
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

08001eb6 <cast128_encrypt>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ebe:	b084      	sub	sp, #16
 8001ec0:	2900      	cmp	r1, #0
 8001ec2:	f000 81f8 	beq.w	80022b6 <cast128_encrypt+0x400>
 8001ec6:	f248 58a8 	movw	r8, #34216	; 0x85a8
 8001eca:	f648 1ea8 	movw	lr, #35240	; 0x89a8
 8001ece:	f648 5aa8 	movw	sl, #36264	; 0x8da8
 8001ed2:	f249 1ba8 	movw	fp, #37288	; 0x91a8
 8001ed6:	f6c0 0800 	movt	r8, #2048	; 0x800
 8001eda:	f6c0 0e00 	movt	lr, #2048	; 0x800
 8001ede:	f6c0 0a00 	movt	sl, #2048	; 0x800
 8001ee2:	f6c0 0b00 	movt	fp, #2048	; 0x800
 8001ee6:	9101      	str	r1, [sp, #4]
 8001ee8:	795d      	ldrb	r5, [r3, #5]
 8001eea:	791c      	ldrb	r4, [r3, #4]
 8001eec:	7801      	ldrb	r1, [r0, #0]
 8001eee:	042d      	lsls	r5, r5, #16
 8001ef0:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
 8001ef4:	799d      	ldrb	r5, [r3, #6]
 8001ef6:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
 8001efa:	79dd      	ldrb	r5, [r3, #7]
 8001efc:	ea44 0905 	orr.w	r9, r4, r5
 8001f00:	6945      	ldr	r5, [r0, #20]
 8001f02:	9103      	str	r1, [sp, #12]
 8001f04:	461c      	mov	r4, r3
 8001f06:	7906      	ldrb	r6, [r0, #4]
 8001f08:	7981      	ldrb	r1, [r0, #6]
 8001f0a:	f890 c005 	ldrb.w	ip, [r0, #5]
 8001f0e:	444d      	add	r5, r9
 8001f10:	4276      	negs	r6, r6
 8001f12:	9102      	str	r1, [sp, #8]
 8001f14:	41f5      	rors	r5, r6
 8001f16:	0e2e      	lsrs	r6, r5, #24
 8001f18:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 8001f1c:	f3c5 4807 	ubfx	r8, r5, #16, #8
 8001f20:	f85e 1028 	ldr.w	r1, [lr, r8, lsl #2]
 8001f24:	4071      	eors	r1, r6
 8001f26:	f3c5 2607 	ubfx	r6, r5, #8, #8
 8001f2a:	b2ed      	uxtb	r5, r5
 8001f2c:	f85a 6026 	ldr.w	r6, [sl, r6, lsl #2]
 8001f30:	f85b 5025 	ldr.w	r5, [fp, r5, lsl #2]
 8001f34:	1b89      	subs	r1, r1, r6
 8001f36:	785e      	ldrb	r6, [r3, #1]
 8001f38:	eb01 0805 	add.w	r8, r1, r5
 8001f3c:	781d      	ldrb	r5, [r3, #0]
 8001f3e:	7899      	ldrb	r1, [r3, #2]
 8001f40:	9400      	str	r4, [sp, #0]
 8001f42:	4673      	mov	r3, lr
 8001f44:	f894 e003 	ldrb.w	lr, [r4, #3]
 8001f48:	0436      	lsls	r6, r6, #16
 8001f4a:	ea46 6505 	orr.w	r5, r6, r5, lsl #24
 8001f4e:	f1cc 0600 	rsb	r6, ip, #0
 8001f52:	ea45 2101 	orr.w	r1, r5, r1, lsl #8
 8001f56:	ea41 010e 	orr.w	r1, r1, lr
 8001f5a:	ea88 0501 	eor.w	r5, r8, r1
 8001f5e:	6981      	ldr	r1, [r0, #24]
 8001f60:	f248 58a8 	movw	r8, #34216	; 0x85a8
 8001f64:	f6c0 0800 	movt	r8, #2048	; 0x800
 8001f68:	4069      	eors	r1, r5
 8001f6a:	41f1      	rors	r1, r6
 8001f6c:	f3c1 4607 	ubfx	r6, r1, #16, #8
 8001f70:	0e0c      	lsrs	r4, r1, #24
 8001f72:	f853 6026 	ldr.w	r6, [r3, r6, lsl #2]
 8001f76:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8001f7a:	1ba6      	subs	r6, r4, r6
 8001f7c:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8001f80:	b2c9      	uxtb	r1, r1
 8001f82:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8001f86:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 8001f8a:	4426      	add	r6, r4
 8001f8c:	ea81 0109 	eor.w	r1, r1, r9
 8001f90:	ea81 0c06 	eor.w	ip, r1, r6
 8001f94:	69c1      	ldr	r1, [r0, #28]
 8001f96:	9e02      	ldr	r6, [sp, #8]
 8001f98:	eba1 010c 	sub.w	r1, r1, ip
 8001f9c:	4276      	negs	r6, r6
 8001f9e:	41f1      	rors	r1, r6
 8001fa0:	0e0e      	lsrs	r6, r1, #24
 8001fa2:	f3c1 4407 	ubfx	r4, r1, #16, #8
 8001fa6:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 8001faa:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 8001fae:	4426      	add	r6, r4
 8001fb0:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8001fb4:	b2c9      	uxtb	r1, r1
 8001fb6:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 8001fba:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8001fbe:	4066      	eors	r6, r4
 8001fc0:	1a71      	subs	r1, r6, r1
 8001fc2:	ea81 0605 	eor.w	r6, r1, r5
 8001fc6:	6a01      	ldr	r1, [r0, #32]
 8001fc8:	79c5      	ldrb	r5, [r0, #7]
 8001fca:	4431      	add	r1, r6
 8001fcc:	426d      	negs	r5, r5
 8001fce:	41e9      	rors	r1, r5
 8001fd0:	0e0d      	lsrs	r5, r1, #24
 8001fd2:	f3c1 4407 	ubfx	r4, r1, #16, #8
 8001fd6:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 8001fda:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 8001fde:	4065      	eors	r5, r4
 8001fe0:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8001fe4:	b2c9      	uxtb	r1, r1
 8001fe6:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 8001fea:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8001fee:	1b2d      	subs	r5, r5, r4
 8001ff0:	4429      	add	r1, r5
 8001ff2:	7a05      	ldrb	r5, [r0, #8]
 8001ff4:	ea8c 0c01 	eor.w	ip, ip, r1
 8001ff8:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001ffa:	426d      	negs	r5, r5
 8001ffc:	ea81 010c 	eor.w	r1, r1, ip
 8002000:	41e9      	rors	r1, r5
 8002002:	f3c1 4507 	ubfx	r5, r1, #16, #8
 8002006:	0e0c      	lsrs	r4, r1, #24
 8002008:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 800200c:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002010:	1b65      	subs	r5, r4, r5
 8002012:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002016:	b2c9      	uxtb	r1, r1
 8002018:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 800201c:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 8002020:	4425      	add	r5, r4
 8002022:	4071      	eors	r1, r6
 8002024:	ea81 0e05 	eor.w	lr, r1, r5
 8002028:	6a81      	ldr	r1, [r0, #40]	; 0x28
 800202a:	7a45      	ldrb	r5, [r0, #9]
 800202c:	eba1 010e 	sub.w	r1, r1, lr
 8002030:	426d      	negs	r5, r5
 8002032:	41e9      	rors	r1, r5
 8002034:	0e0d      	lsrs	r5, r1, #24
 8002036:	f3c1 4407 	ubfx	r4, r1, #16, #8
 800203a:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 800203e:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 8002042:	4425      	add	r5, r4
 8002044:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002048:	b2c9      	uxtb	r1, r1
 800204a:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 800204e:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002052:	4065      	eors	r5, r4
 8002054:	7a84      	ldrb	r4, [r0, #10]
 8002056:	1a69      	subs	r1, r5, r1
 8002058:	ea81 050c 	eor.w	r5, r1, ip
 800205c:	6ac1      	ldr	r1, [r0, #44]	; 0x2c
 800205e:	4264      	negs	r4, r4
 8002060:	4429      	add	r1, r5
 8002062:	41e1      	rors	r1, r4
 8002064:	0e0c      	lsrs	r4, r1, #24
 8002066:	f3c1 4607 	ubfx	r6, r1, #16, #8
 800206a:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 800206e:	f853 6026 	ldr.w	r6, [r3, r6, lsl #2]
 8002072:	4066      	eors	r6, r4
 8002074:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002078:	b2c9      	uxtb	r1, r1
 800207a:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 800207e:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002082:	1b36      	subs	r6, r6, r4
 8002084:	4431      	add	r1, r6
 8002086:	7ac6      	ldrb	r6, [r0, #11]
 8002088:	ea81 0c0e 	eor.w	ip, r1, lr
 800208c:	6b01      	ldr	r1, [r0, #48]	; 0x30
 800208e:	4276      	negs	r6, r6
 8002090:	ea81 010c 	eor.w	r1, r1, ip
 8002094:	41f1      	rors	r1, r6
 8002096:	f3c1 4607 	ubfx	r6, r1, #16, #8
 800209a:	0e0c      	lsrs	r4, r1, #24
 800209c:	f853 6026 	ldr.w	r6, [r3, r6, lsl #2]
 80020a0:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 80020a4:	1ba6      	subs	r6, r4, r6
 80020a6:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80020aa:	b2c9      	uxtb	r1, r1
 80020ac:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 80020b0:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 80020b4:	4069      	eors	r1, r5
 80020b6:	4426      	add	r6, r4
 80020b8:	7b05      	ldrb	r5, [r0, #12]
 80020ba:	ea81 0e06 	eor.w	lr, r1, r6
 80020be:	6b41      	ldr	r1, [r0, #52]	; 0x34
 80020c0:	426d      	negs	r5, r5
 80020c2:	eba1 010e 	sub.w	r1, r1, lr
 80020c6:	41e9      	rors	r1, r5
 80020c8:	0e0d      	lsrs	r5, r1, #24
 80020ca:	f3c1 4407 	ubfx	r4, r1, #16, #8
 80020ce:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 80020d2:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 80020d6:	4425      	add	r5, r4
 80020d8:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80020dc:	b2c9      	uxtb	r1, r1
 80020de:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 80020e2:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 80020e6:	4065      	eors	r5, r4
 80020e8:	7b44      	ldrb	r4, [r0, #13]
 80020ea:	1a69      	subs	r1, r5, r1
 80020ec:	ea81 050c 	eor.w	r5, r1, ip
 80020f0:	6b81      	ldr	r1, [r0, #56]	; 0x38
 80020f2:	4264      	negs	r4, r4
 80020f4:	4429      	add	r1, r5
 80020f6:	41e1      	rors	r1, r4
 80020f8:	0e0c      	lsrs	r4, r1, #24
 80020fa:	f3c1 4607 	ubfx	r6, r1, #16, #8
 80020fe:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002102:	f853 6026 	ldr.w	r6, [r3, r6, lsl #2]
 8002106:	4066      	eors	r6, r4
 8002108:	f3c1 2407 	ubfx	r4, r1, #8, #8
 800210c:	b2c9      	uxtb	r1, r1
 800210e:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 8002112:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002116:	1b36      	subs	r6, r6, r4
 8002118:	4431      	add	r1, r6
 800211a:	7b86      	ldrb	r6, [r0, #14]
 800211c:	ea81 0c0e 	eor.w	ip, r1, lr
 8002120:	6bc1      	ldr	r1, [r0, #60]	; 0x3c
 8002122:	469e      	mov	lr, r3
 8002124:	4276      	negs	r6, r6
 8002126:	ea81 010c 	eor.w	r1, r1, ip
 800212a:	41f1      	rors	r1, r6
 800212c:	f3c1 4607 	ubfx	r6, r1, #16, #8
 8002130:	0e0c      	lsrs	r4, r1, #24
 8002132:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 8002136:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 800213a:	1ba6      	subs	r6, r4, r6
 800213c:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002140:	b2c9      	uxtb	r1, r1
 8002142:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002146:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 800214a:	4069      	eors	r1, r5
 800214c:	4426      	add	r6, r4
 800214e:	7bc5      	ldrb	r5, [r0, #15]
 8002150:	ea81 0906 	eor.w	r9, r1, r6
 8002154:	6c01      	ldr	r1, [r0, #64]	; 0x40
 8002156:	426d      	negs	r5, r5
 8002158:	eba1 0109 	sub.w	r1, r1, r9
 800215c:	41e9      	rors	r1, r5
 800215e:	0e0d      	lsrs	r5, r1, #24
 8002160:	f3c1 4407 	ubfx	r4, r1, #16, #8
 8002164:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 8002168:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 800216c:	4425      	add	r5, r4
 800216e:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002172:	b2c9      	uxtb	r1, r1
 8002174:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 8002178:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 800217c:	4065      	eors	r5, r4
 800217e:	1a69      	subs	r1, r5, r1
 8002180:	ea81 040c 	eor.w	r4, r1, ip
 8002184:	9903      	ldr	r1, [sp, #12]
 8002186:	06c9      	lsls	r1, r1, #27
 8002188:	d57b      	bpl.n	8002282 <cast128_encrypt+0x3cc>
 800218a:	6c41      	ldr	r1, [r0, #68]	; 0x44
 800218c:	7c05      	ldrb	r5, [r0, #16]
 800218e:	7cc6      	ldrb	r6, [r0, #19]
 8002190:	f890 e011 	ldrb.w	lr, [r0, #17]
 8002194:	f890 c012 	ldrb.w	ip, [r0, #18]
 8002198:	4421      	add	r1, r4
 800219a:	426d      	negs	r5, r5
 800219c:	9603      	str	r6, [sp, #12]
 800219e:	f248 56a8 	movw	r6, #34216	; 0x85a8
 80021a2:	41e9      	rors	r1, r5
 80021a4:	f6c0 0600 	movt	r6, #2048	; 0x800
 80021a8:	0e0d      	lsrs	r5, r1, #24
 80021aa:	f856 8025 	ldr.w	r8, [r6, r5, lsl #2]
 80021ae:	f3c1 4507 	ubfx	r5, r1, #16, #8
 80021b2:	f1ce 0600 	rsb	r6, lr, #0
 80021b6:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 80021ba:	ea88 0805 	eor.w	r8, r8, r5
 80021be:	f3c1 2507 	ubfx	r5, r1, #8, #8
 80021c2:	b2c9      	uxtb	r1, r1
 80021c4:	f85a 5025 	ldr.w	r5, [sl, r5, lsl #2]
 80021c8:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 80021cc:	eba8 0505 	sub.w	r5, r8, r5
 80021d0:	4429      	add	r1, r5
 80021d2:	ea81 0809 	eor.w	r8, r1, r9
 80021d6:	6c81      	ldr	r1, [r0, #72]	; 0x48
 80021d8:	ea81 0108 	eor.w	r1, r1, r8
 80021dc:	41f1      	rors	r1, r6
 80021de:	f3c1 4607 	ubfx	r6, r1, #16, #8
 80021e2:	0e0d      	lsrs	r5, r1, #24
 80021e4:	f853 e026 	ldr.w	lr, [r3, r6, lsl #2]
 80021e8:	f248 56a8 	movw	r6, #34216	; 0x85a8
 80021ec:	f6c0 0600 	movt	r6, #2048	; 0x800
 80021f0:	f856 5025 	ldr.w	r5, [r6, r5, lsl #2]
 80021f4:	eba5 060e 	sub.w	r6, r5, lr
 80021f8:	f3c1 2507 	ubfx	r5, r1, #8, #8
 80021fc:	b2c9      	uxtb	r1, r1
 80021fe:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002202:	f85a 5025 	ldr.w	r5, [sl, r5, lsl #2]
 8002206:	4061      	eors	r1, r4
 8002208:	442e      	add	r6, r5
 800220a:	f248 54a8 	movw	r4, #34216	; 0x85a8
 800220e:	ea81 0e06 	eor.w	lr, r1, r6
 8002212:	6cc1      	ldr	r1, [r0, #76]	; 0x4c
 8002214:	f1cc 0600 	rsb	r6, ip, #0
 8002218:	f6c0 0400 	movt	r4, #2048	; 0x800
 800221c:	eba1 010e 	sub.w	r1, r1, lr
 8002220:	41f1      	rors	r1, r6
 8002222:	0e0e      	lsrs	r6, r1, #24
 8002224:	f3c1 4507 	ubfx	r5, r1, #16, #8
 8002228:	f854 6026 	ldr.w	r6, [r4, r6, lsl #2]
 800222c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8002230:	442e      	add	r6, r5
 8002232:	f3c1 2507 	ubfx	r5, r1, #8, #8
 8002236:	b2c9      	uxtb	r1, r1
 8002238:	f85a 5025 	ldr.w	r5, [sl, r5, lsl #2]
 800223c:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002240:	406e      	eors	r6, r5
 8002242:	1a71      	subs	r1, r6, r1
 8002244:	9e03      	ldr	r6, [sp, #12]
 8002246:	ea81 0908 	eor.w	r9, r1, r8
 800224a:	6d01      	ldr	r1, [r0, #80]	; 0x50
 800224c:	f248 58a8 	movw	r8, #34216	; 0x85a8
 8002250:	f6c0 0800 	movt	r8, #2048	; 0x800
 8002254:	4275      	negs	r5, r6
 8002256:	4449      	add	r1, r9
 8002258:	41e9      	rors	r1, r5
 800225a:	0e0d      	lsrs	r5, r1, #24
 800225c:	f3c1 4407 	ubfx	r4, r1, #16, #8
 8002260:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 8002264:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 8002268:	4065      	eors	r5, r4
 800226a:	f3c1 2407 	ubfx	r4, r1, #8, #8
 800226e:	b2c9      	uxtb	r1, r1
 8002270:	f85a 4024 	ldr.w	r4, [sl, r4, lsl #2]
 8002274:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002278:	1b2d      	subs	r5, r5, r4
 800227a:	4429      	add	r1, r5
 800227c:	ea81 040e 	eor.w	r4, r1, lr
 8002280:	469e      	mov	lr, r3
 8002282:	0e25      	lsrs	r5, r4, #24
 8002284:	e9dd 3100 	ldrd	r3, r1, [sp]
 8002288:	7015      	strb	r5, [r2, #0]
 800228a:	0c25      	lsrs	r5, r4, #16
 800228c:	7055      	strb	r5, [r2, #1]
 800228e:	0a25      	lsrs	r5, r4, #8
 8002290:	7095      	strb	r5, [r2, #2]
 8002292:	ea4f 6519 	mov.w	r5, r9, lsr #24
 8002296:	70d4      	strb	r4, [r2, #3]
 8002298:	7115      	strb	r5, [r2, #4]
 800229a:	ea4f 4519 	mov.w	r5, r9, lsr #16
 800229e:	3308      	adds	r3, #8
 80022a0:	3908      	subs	r1, #8
 80022a2:	7155      	strb	r5, [r2, #5]
 80022a4:	ea4f 2519 	mov.w	r5, r9, lsr #8
 80022a8:	7195      	strb	r5, [r2, #6]
 80022aa:	f882 9007 	strb.w	r9, [r2, #7]
 80022ae:	f102 0208 	add.w	r2, r2, #8
 80022b2:	f47f ae18 	bne.w	8001ee6 <cast128_encrypt+0x30>
 80022b6:	b004      	add	sp, #16
 80022b8:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80022bc:	bdf0      	pop	{r4, r5, r6, r7, pc}

080022be <cast128_decrypt>:
 80022be:	b5f0      	push	{r4, r5, r6, r7, lr}
 80022c0:	af03      	add	r7, sp, #12
 80022c2:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80022c6:	b084      	sub	sp, #16
 80022c8:	461e      	mov	r6, r3
 80022ca:	2900      	cmp	r1, #0
 80022cc:	f000 81d7 	beq.w	800267e <cast128_decrypt+0x3c0>
 80022d0:	f248 5ea8 	movw	lr, #34216	; 0x85a8
 80022d4:	f648 18a8 	movw	r8, #35240	; 0x89a8
 80022d8:	f648 53a8 	movw	r3, #36264	; 0x8da8
 80022dc:	f249 1ba8 	movw	fp, #37288	; 0x91a8
 80022e0:	f6c0 0e00 	movt	lr, #2048	; 0x800
 80022e4:	f6c0 0800 	movt	r8, #2048	; 0x800
 80022e8:	f6c0 0300 	movt	r3, #2048	; 0x800
 80022ec:	f6c0 0b00 	movt	fp, #2048	; 0x800
 80022f0:	7975      	ldrb	r5, [r6, #5]
 80022f2:	7934      	ldrb	r4, [r6, #4]
 80022f4:	f896 9000 	ldrb.w	r9, [r6]
 80022f8:	f896 c002 	ldrb.w	ip, [r6, #2]
 80022fc:	042d      	lsls	r5, r5, #16
 80022fe:	ea45 6404 	orr.w	r4, r5, r4, lsl #24
 8002302:	79b5      	ldrb	r5, [r6, #6]
 8002304:	ea44 2405 	orr.w	r4, r4, r5, lsl #8
 8002308:	79f5      	ldrb	r5, [r6, #7]
 800230a:	ea44 0a05 	orr.w	sl, r4, r5
 800230e:	7875      	ldrb	r5, [r6, #1]
 8002310:	78f4      	ldrb	r4, [r6, #3]
 8002312:	042d      	lsls	r5, r5, #16
 8002314:	ea45 6509 	orr.w	r5, r5, r9, lsl #24
 8002318:	ea45 250c 	orr.w	r5, r5, ip, lsl #8
 800231c:	432c      	orrs	r4, r5
 800231e:	7805      	ldrb	r5, [r0, #0]
 8002320:	9103      	str	r1, [sp, #12]
 8002322:	e9cd 2601 	strd	r2, r6, [sp, #4]
 8002326:	06ed      	lsls	r5, r5, #27
 8002328:	d567      	bpl.n	80023fa <cast128_decrypt+0x13c>
 800232a:	7c41      	ldrb	r1, [r0, #17]
 800232c:	6d05      	ldr	r5, [r0, #80]	; 0x50
 800232e:	7c02      	ldrb	r2, [r0, #16]
 8002330:	9100      	str	r1, [sp, #0]
 8002332:	eb05 060a 	add.w	r6, r5, sl
 8002336:	f890 9013 	ldrb.w	r9, [r0, #19]
 800233a:	f890 c012 	ldrb.w	ip, [r0, #18]
 800233e:	f1c9 0500 	rsb	r5, r9, #0
 8002342:	fa66 f505 	ror.w	r5, r6, r5
 8002346:	0e2e      	lsrs	r6, r5, #24
 8002348:	f3c5 4107 	ubfx	r1, r5, #16, #8
 800234c:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 8002350:	f858 1021 	ldr.w	r1, [r8, r1, lsl #2]
 8002354:	4071      	eors	r1, r6
 8002356:	f3c5 2607 	ubfx	r6, r5, #8, #8
 800235a:	b2ed      	uxtb	r5, r5
 800235c:	f853 6026 	ldr.w	r6, [r3, r6, lsl #2]
 8002360:	f85b 5025 	ldr.w	r5, [fp, r5, lsl #2]
 8002364:	1b89      	subs	r1, r1, r6
 8002366:	f1cc 0600 	rsb	r6, ip, #0
 800236a:	4429      	add	r1, r5
 800236c:	404c      	eors	r4, r1
 800236e:	6cc1      	ldr	r1, [r0, #76]	; 0x4c
 8002370:	1b09      	subs	r1, r1, r4
 8002372:	41f1      	rors	r1, r6
 8002374:	0e0e      	lsrs	r6, r1, #24
 8002376:	f3c1 4507 	ubfx	r5, r1, #16, #8
 800237a:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 800237e:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 8002382:	442e      	add	r6, r5
 8002384:	f3c1 2507 	ubfx	r5, r1, #8, #8
 8002388:	b2c9      	uxtb	r1, r1
 800238a:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 800238e:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002392:	406e      	eors	r6, r5
 8002394:	9d00      	ldr	r5, [sp, #0]
 8002396:	1a71      	subs	r1, r6, r1
 8002398:	ea81 0c0a 	eor.w	ip, r1, sl
 800239c:	6c81      	ldr	r1, [r0, #72]	; 0x48
 800239e:	426d      	negs	r5, r5
 80023a0:	ea81 010c 	eor.w	r1, r1, ip
 80023a4:	41e9      	rors	r1, r5
 80023a6:	f3c1 4507 	ubfx	r5, r1, #16, #8
 80023aa:	0e0e      	lsrs	r6, r1, #24
 80023ac:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 80023b0:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 80023b4:	1b75      	subs	r5, r6, r5
 80023b6:	f3c1 2607 	ubfx	r6, r1, #8, #8
 80023ba:	b2c9      	uxtb	r1, r1
 80023bc:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 80023c0:	f853 6026 	ldr.w	r6, [r3, r6, lsl #2]
 80023c4:	4435      	add	r5, r6
 80023c6:	4061      	eors	r1, r4
 80023c8:	ea81 0405 	eor.w	r4, r1, r5
 80023cc:	6c41      	ldr	r1, [r0, #68]	; 0x44
 80023ce:	4255      	negs	r5, r2
 80023d0:	4421      	add	r1, r4
 80023d2:	41e9      	rors	r1, r5
 80023d4:	0e0d      	lsrs	r5, r1, #24
 80023d6:	f3c1 4607 	ubfx	r6, r1, #16, #8
 80023da:	f85e 5025 	ldr.w	r5, [lr, r5, lsl #2]
 80023de:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 80023e2:	4075      	eors	r5, r6
 80023e4:	f3c1 2607 	ubfx	r6, r1, #8, #8
 80023e8:	b2c9      	uxtb	r1, r1
 80023ea:	f853 6026 	ldr.w	r6, [r3, r6, lsl #2]
 80023ee:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 80023f2:	1bad      	subs	r5, r5, r6
 80023f4:	4429      	add	r1, r5
 80023f6:	ea81 0a0c 	eor.w	sl, r1, ip
 80023fa:	6c01      	ldr	r1, [r0, #64]	; 0x40
 80023fc:	7bc6      	ldrb	r6, [r0, #15]
 80023fe:	eba1 010a 	sub.w	r1, r1, sl
 8002402:	4276      	negs	r6, r6
 8002404:	41f1      	rors	r1, r6
 8002406:	0e0e      	lsrs	r6, r1, #24
 8002408:	f3c1 4507 	ubfx	r5, r1, #16, #8
 800240c:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 8002410:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 8002414:	442e      	add	r6, r5
 8002416:	f3c1 2507 	ubfx	r5, r1, #8, #8
 800241a:	b2c9      	uxtb	r1, r1
 800241c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8002420:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002424:	406e      	eors	r6, r5
 8002426:	1a71      	subs	r1, r6, r1
 8002428:	7b86      	ldrb	r6, [r0, #14]
 800242a:	ea81 0c04 	eor.w	ip, r1, r4
 800242e:	6bc1      	ldr	r1, [r0, #60]	; 0x3c
 8002430:	4276      	negs	r6, r6
 8002432:	ea81 010c 	eor.w	r1, r1, ip
 8002436:	41f1      	rors	r1, r6
 8002438:	f3c1 4607 	ubfx	r6, r1, #16, #8
 800243c:	0e0d      	lsrs	r5, r1, #24
 800243e:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 8002442:	f85e 5025 	ldr.w	r5, [lr, r5, lsl #2]
 8002446:	1bae      	subs	r6, r5, r6
 8002448:	f3c1 2507 	ubfx	r5, r1, #8, #8
 800244c:	b2c9      	uxtb	r1, r1
 800244e:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002452:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8002456:	442e      	add	r6, r5
 8002458:	ea81 010a 	eor.w	r1, r1, sl
 800245c:	ea81 0906 	eor.w	r9, r1, r6
 8002460:	6b81      	ldr	r1, [r0, #56]	; 0x38
 8002462:	7b46      	ldrb	r6, [r0, #13]
 8002464:	4449      	add	r1, r9
 8002466:	4276      	negs	r6, r6
 8002468:	41f1      	rors	r1, r6
 800246a:	0e0e      	lsrs	r6, r1, #24
 800246c:	f3c1 4407 	ubfx	r4, r1, #16, #8
 8002470:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 8002474:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002478:	4074      	eors	r4, r6
 800247a:	f3c1 2607 	ubfx	r6, r1, #8, #8
 800247e:	b2c9      	uxtb	r1, r1
 8002480:	f853 6026 	ldr.w	r6, [r3, r6, lsl #2]
 8002484:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002488:	1ba4      	subs	r4, r4, r6
 800248a:	4421      	add	r1, r4
 800248c:	7b04      	ldrb	r4, [r0, #12]
 800248e:	ea81 060c 	eor.w	r6, r1, ip
 8002492:	6b41      	ldr	r1, [r0, #52]	; 0x34
 8002494:	4264      	negs	r4, r4
 8002496:	1b89      	subs	r1, r1, r6
 8002498:	41e1      	rors	r1, r4
 800249a:	0e0c      	lsrs	r4, r1, #24
 800249c:	f3c1 4507 	ubfx	r5, r1, #16, #8
 80024a0:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 80024a4:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 80024a8:	4425      	add	r5, r4
 80024aa:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80024ae:	b2c9      	uxtb	r1, r1
 80024b0:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 80024b4:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 80024b8:	4065      	eors	r5, r4
 80024ba:	1a69      	subs	r1, r5, r1
 80024bc:	7ac5      	ldrb	r5, [r0, #11]
 80024be:	ea81 0c09 	eor.w	ip, r1, r9
 80024c2:	6b01      	ldr	r1, [r0, #48]	; 0x30
 80024c4:	426d      	negs	r5, r5
 80024c6:	ea81 010c 	eor.w	r1, r1, ip
 80024ca:	41e9      	rors	r1, r5
 80024cc:	f3c1 4507 	ubfx	r5, r1, #16, #8
 80024d0:	0e0c      	lsrs	r4, r1, #24
 80024d2:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 80024d6:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 80024da:	1b64      	subs	r4, r4, r5
 80024dc:	f3c1 2507 	ubfx	r5, r1, #8, #8
 80024e0:	b2c9      	uxtb	r1, r1
 80024e2:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 80024e6:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 80024ea:	442c      	add	r4, r5
 80024ec:	4071      	eors	r1, r6
 80024ee:	ea81 0904 	eor.w	r9, r1, r4
 80024f2:	6ac1      	ldr	r1, [r0, #44]	; 0x2c
 80024f4:	7a84      	ldrb	r4, [r0, #10]
 80024f6:	4449      	add	r1, r9
 80024f8:	4264      	negs	r4, r4
 80024fa:	41e1      	rors	r1, r4
 80024fc:	0e0c      	lsrs	r4, r1, #24
 80024fe:	f3c1 4607 	ubfx	r6, r1, #16, #8
 8002502:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 8002506:	f858 6026 	ldr.w	r6, [r8, r6, lsl #2]
 800250a:	4074      	eors	r4, r6
 800250c:	f3c1 2607 	ubfx	r6, r1, #8, #8
 8002510:	b2c9      	uxtb	r1, r1
 8002512:	f853 6026 	ldr.w	r6, [r3, r6, lsl #2]
 8002516:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 800251a:	1ba4      	subs	r4, r4, r6
 800251c:	7a46      	ldrb	r6, [r0, #9]
 800251e:	4421      	add	r1, r4
 8002520:	ea81 040c 	eor.w	r4, r1, ip
 8002524:	6a81      	ldr	r1, [r0, #40]	; 0x28
 8002526:	4276      	negs	r6, r6
 8002528:	1b09      	subs	r1, r1, r4
 800252a:	41f1      	rors	r1, r6
 800252c:	0e0e      	lsrs	r6, r1, #24
 800252e:	f3c1 4507 	ubfx	r5, r1, #16, #8
 8002532:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 8002536:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 800253a:	442e      	add	r6, r5
 800253c:	f3c1 2507 	ubfx	r5, r1, #8, #8
 8002540:	b2c9      	uxtb	r1, r1
 8002542:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8002546:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 800254a:	406e      	eors	r6, r5
 800254c:	7a05      	ldrb	r5, [r0, #8]
 800254e:	1a71      	subs	r1, r6, r1
 8002550:	ea81 0c09 	eor.w	ip, r1, r9
 8002554:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8002556:	426d      	negs	r5, r5
 8002558:	ea81 010c 	eor.w	r1, r1, ip
 800255c:	41e9      	rors	r1, r5
 800255e:	f3c1 4507 	ubfx	r5, r1, #16, #8
 8002562:	0e0e      	lsrs	r6, r1, #24
 8002564:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 8002568:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 800256c:	1b75      	subs	r5, r6, r5
 800256e:	f3c1 2607 	ubfx	r6, r1, #8, #8
 8002572:	b2c9      	uxtb	r1, r1
 8002574:	7902      	ldrb	r2, [r0, #4]
 8002576:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 800257a:	f853 6026 	ldr.w	r6, [r3, r6, lsl #2]
 800257e:	4435      	add	r5, r6
 8002580:	4061      	eors	r1, r4
 8002582:	ea81 0a05 	eor.w	sl, r1, r5
 8002586:	6a01      	ldr	r1, [r0, #32]
 8002588:	9200      	str	r2, [sp, #0]
 800258a:	4675      	mov	r5, lr
 800258c:	79c6      	ldrb	r6, [r0, #7]
 800258e:	f890 9005 	ldrb.w	r9, [r0, #5]
 8002592:	7982      	ldrb	r2, [r0, #6]
 8002594:	4451      	add	r1, sl
 8002596:	4276      	negs	r6, r6
 8002598:	41f1      	rors	r1, r6
 800259a:	0e0e      	lsrs	r6, r1, #24
 800259c:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 80025a0:	f3c1 4e07 	ubfx	lr, r1, #16, #8
 80025a4:	f858 402e 	ldr.w	r4, [r8, lr, lsl #2]
 80025a8:	46ae      	mov	lr, r5
 80025aa:	4066      	eors	r6, r4
 80025ac:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80025b0:	b2c9      	uxtb	r1, r1
 80025b2:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 80025b6:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 80025ba:	1b36      	subs	r6, r6, r4
 80025bc:	4254      	negs	r4, r2
 80025be:	4431      	add	r1, r6
 80025c0:	ea81 060c 	eor.w	r6, r1, ip
 80025c4:	69c1      	ldr	r1, [r0, #28]
 80025c6:	1b89      	subs	r1, r1, r6
 80025c8:	41e1      	rors	r1, r4
 80025ca:	0e0c      	lsrs	r4, r1, #24
 80025cc:	f3c1 4507 	ubfx	r5, r1, #16, #8
 80025d0:	f85e 4024 	ldr.w	r4, [lr, r4, lsl #2]
 80025d4:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 80025d8:	4425      	add	r5, r4
 80025da:	f3c1 2407 	ubfx	r4, r1, #8, #8
 80025de:	b2c9      	uxtb	r1, r1
 80025e0:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 80025e4:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 80025e8:	4065      	eors	r5, r4
 80025ea:	f1c9 0400 	rsb	r4, r9, #0
 80025ee:	1a69      	subs	r1, r5, r1
 80025f0:	ea81 0c0a 	eor.w	ip, r1, sl
 80025f4:	6981      	ldr	r1, [r0, #24]
 80025f6:	ea81 010c 	eor.w	r1, r1, ip
 80025fa:	41e1      	rors	r1, r4
 80025fc:	f3c1 4407 	ubfx	r4, r1, #16, #8
 8002600:	0e0d      	lsrs	r5, r1, #24
 8002602:	f858 4024 	ldr.w	r4, [r8, r4, lsl #2]
 8002606:	f85e 5025 	ldr.w	r5, [lr, r5, lsl #2]
 800260a:	1b2d      	subs	r5, r5, r4
 800260c:	f3c1 2407 	ubfx	r4, r1, #8, #8
 8002610:	b2c9      	uxtb	r1, r1
 8002612:	9a00      	ldr	r2, [sp, #0]
 8002614:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002618:	f853 4024 	ldr.w	r4, [r3, r4, lsl #2]
 800261c:	4071      	eors	r1, r6
 800261e:	4425      	add	r5, r4
 8002620:	4256      	negs	r6, r2
 8002622:	ea81 0405 	eor.w	r4, r1, r5
 8002626:	6941      	ldr	r1, [r0, #20]
 8002628:	4421      	add	r1, r4
 800262a:	41f1      	rors	r1, r6
 800262c:	0e0e      	lsrs	r6, r1, #24
 800262e:	f3c1 4507 	ubfx	r5, r1, #16, #8
 8002632:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 8002636:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 800263a:	406e      	eors	r6, r5
 800263c:	f3c1 2507 	ubfx	r5, r1, #8, #8
 8002640:	b2c9      	uxtb	r1, r1
 8002642:	9a01      	ldr	r2, [sp, #4]
 8002644:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8002648:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 800264c:	1b76      	subs	r6, r6, r5
 800264e:	4431      	add	r1, r6
 8002650:	ea81 010c 	eor.w	r1, r1, ip
 8002654:	0e0e      	lsrs	r6, r1, #24
 8002656:	7016      	strb	r6, [r2, #0]
 8002658:	0c0e      	lsrs	r6, r1, #16
 800265a:	7056      	strb	r6, [r2, #1]
 800265c:	0a0e      	lsrs	r6, r1, #8
 800265e:	7096      	strb	r6, [r2, #2]
 8002660:	70d1      	strb	r1, [r2, #3]
 8002662:	0e21      	lsrs	r1, r4, #24
 8002664:	7111      	strb	r1, [r2, #4]
 8002666:	0c21      	lsrs	r1, r4, #16
 8002668:	7151      	strb	r1, [r2, #5]
 800266a:	0a21      	lsrs	r1, r4, #8
 800266c:	7191      	strb	r1, [r2, #6]
 800266e:	71d4      	strb	r4, [r2, #7]
 8002670:	3208      	adds	r2, #8
 8002672:	9e02      	ldr	r6, [sp, #8]
 8002674:	9903      	ldr	r1, [sp, #12]
 8002676:	3608      	adds	r6, #8
 8002678:	3908      	subs	r1, #8
 800267a:	f47f ae39 	bne.w	80022f0 <cast128_decrypt+0x32>
 800267e:	b004      	add	sp, #16
 8002680:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002684:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002686 <cast128_set_key>:
 8002686:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002688:	af03      	add	r7, sp, #12
 800268a:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 800268e:	b092      	sub	sp, #72	; 0x48
 8002690:	7853      	ldrb	r3, [r2, #1]
 8002692:	7815      	ldrb	r5, [r2, #0]
 8002694:	7896      	ldrb	r6, [r2, #2]
 8002696:	f892 e003 	ldrb.w	lr, [r2, #3]
 800269a:	041b      	lsls	r3, r3, #16
 800269c:	ea43 6305 	orr.w	r3, r3, r5, lsl #24
 80026a0:	ea43 2406 	orr.w	r4, r3, r6, lsl #8
 80026a4:	f001 0303 	and.w	r3, r1, #3
 80026a8:	2b01      	cmp	r3, #1
 80026aa:	d010      	beq.n	80026ce <cast128_set_key+0x48>
 80026ac:	2b02      	cmp	r3, #2
 80026ae:	d013      	beq.n	80026d8 <cast128_set_key+0x52>
 80026b0:	2b03      	cmp	r3, #3
 80026b2:	d11a      	bne.n	80026ea <cast128_set_key+0x64>
 80026b4:	1853      	adds	r3, r2, r1
 80026b6:	f813 5c02 	ldrb.w	r5, [r3, #-2]
 80026ba:	f813 6c03 	ldrb.w	r6, [r3, #-3]
 80026be:	f813 3c01 	ldrb.w	r3, [r3, #-1]
 80026c2:	022d      	lsls	r5, r5, #8
 80026c4:	ea45 4606 	orr.w	r6, r5, r6, lsl #16
 80026c8:	4333      	orrs	r3, r6
 80026ca:	021b      	lsls	r3, r3, #8
 80026cc:	e01c      	b.n	8002708 <cast128_set_key+0x82>
 80026ce:	1853      	adds	r3, r2, r1
 80026d0:	f813 3c01 	ldrb.w	r3, [r3, #-1]
 80026d4:	061b      	lsls	r3, r3, #24
 80026d6:	e017      	b.n	8002708 <cast128_set_key+0x82>
 80026d8:	1853      	adds	r3, r2, r1
 80026da:	f813 6c02 	ldrb.w	r6, [r3, #-2]
 80026de:	f813 3c01 	ldrb.w	r3, [r3, #-1]
 80026e2:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
 80026e6:	041b      	lsls	r3, r3, #16
 80026e8:	e00e      	b.n	8002708 <cast128_set_key+0x82>
 80026ea:	1853      	adds	r3, r2, r1
 80026ec:	f813 5c03 	ldrb.w	r5, [r3, #-3]
 80026f0:	f813 6c04 	ldrb.w	r6, [r3, #-4]
 80026f4:	f813 cc02 	ldrb.w	ip, [r3, #-2]
 80026f8:	f813 3c01 	ldrb.w	r3, [r3, #-1]
 80026fc:	042d      	lsls	r5, r5, #16
 80026fe:	ea45 6606 	orr.w	r6, r5, r6, lsl #24
 8002702:	ea46 260c 	orr.w	r6, r6, ip, lsl #8
 8002706:	4333      	orrs	r3, r6
 8002708:	ea4e 0e04 	orr.w	lr, lr, r4
 800270c:	2909      	cmp	r1, #9
 800270e:	e9cd 1010 	strd	r1, r0, [sp, #64]	; 0x40
 8002712:	da04      	bge.n	800271e <cast128_set_key+0x98>
 8002714:	f04f 0c00 	mov.w	ip, #0
 8002718:	930c      	str	r3, [sp, #48]	; 0x30
 800271a:	2100      	movs	r1, #0
 800271c:	e01d      	b.n	800275a <cast128_set_key+0xd4>
 800271e:	7956      	ldrb	r6, [r2, #5]
 8002720:	7910      	ldrb	r0, [r2, #4]
 8002722:	7995      	ldrb	r5, [r2, #6]
 8002724:	79d4      	ldrb	r4, [r2, #7]
 8002726:	290d      	cmp	r1, #13
 8002728:	ea4f 4606 	mov.w	r6, r6, lsl #16
 800272c:	ea46 6000 	orr.w	r0, r6, r0, lsl #24
 8002730:	ea40 2005 	orr.w	r0, r0, r5, lsl #8
 8002734:	ea40 0004 	orr.w	r0, r0, r4
 8002738:	900c      	str	r0, [sp, #48]	; 0x30
 800273a:	da02      	bge.n	8002742 <cast128_set_key+0xbc>
 800273c:	2100      	movs	r1, #0
 800273e:	469c      	mov	ip, r3
 8002740:	e00b      	b.n	800275a <cast128_set_key+0xd4>
 8002742:	7a56      	ldrb	r6, [r2, #9]
 8002744:	7a11      	ldrb	r1, [r2, #8]
 8002746:	7a95      	ldrb	r5, [r2, #10]
 8002748:	7ad2      	ldrb	r2, [r2, #11]
 800274a:	0436      	lsls	r6, r6, #16
 800274c:	ea46 6101 	orr.w	r1, r6, r1, lsl #24
 8002750:	ea41 2105 	orr.w	r1, r1, r5, lsl #8
 8002754:	ea41 0c02 	orr.w	ip, r1, r2
 8002758:	4619      	mov	r1, r3
 800275a:	f249 5aa8 	movw	sl, #38312	; 0x95a8
 800275e:	f649 10a8 	movw	r0, #39336	; 0x99a8
 8002762:	f3c1 4307 	ubfx	r3, r1, #16, #8
 8002766:	b2ca      	uxtb	r2, r1
 8002768:	f649 54a8 	movw	r4, #40360	; 0x9da8
 800276c:	f24a 16a8 	movw	r6, #41384	; 0xa1a8
 8002770:	f6c0 0a00 	movt	sl, #2048	; 0x800
 8002774:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002778:	f6c0 0400 	movt	r4, #2048	; 0x800
 800277c:	f6c0 0600 	movt	r6, #2048	; 0x800
 8002780:	f85a 3023 	ldr.w	r3, [sl, r3, lsl #2]
 8002784:	f850 2022 	ldr.w	r2, [r0, r2, lsl #2]
 8002788:	4680      	mov	r8, r0
 800278a:	46b1      	mov	r9, r6
 800278c:	ea83 000e 	eor.w	r0, r3, lr
 8002790:	4050      	eors	r0, r2
 8002792:	0e0a      	lsrs	r2, r1, #24
 8002794:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 8002798:	4050      	eors	r0, r2
 800279a:	f3c1 2207 	ubfx	r2, r1, #8, #8
 800279e:	f856 2022 	ldr.w	r2, [r6, r2, lsl #2]
 80027a2:	4050      	eors	r0, r2
 80027a4:	ea4f 621c 	mov.w	r2, ip, lsr #24
 80027a8:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 80027ac:	ea80 0502 	eor.w	r5, r0, r2
 80027b0:	0e28      	lsrs	r0, r5, #24
 80027b2:	950d      	str	r5, [sp, #52]	; 0x34
 80027b4:	900a      	str	r0, [sp, #40]	; 0x28
 80027b6:	f85a 0020 	ldr.w	r0, [sl, r0, lsl #2]
 80027ba:	ea80 020c 	eor.w	r2, r0, ip
 80027be:	f3c5 2007 	ubfx	r0, r5, #8, #8
 80027c2:	f858 3020 	ldr.w	r3, [r8, r0, lsl #2]
 80027c6:	9004      	str	r0, [sp, #16]
 80027c8:	f3c5 4007 	ubfx	r0, r5, #16, #8
 80027cc:	900e      	str	r0, [sp, #56]	; 0x38
 80027ce:	f854 0020 	ldr.w	r0, [r4, r0, lsl #2]
 80027d2:	405a      	eors	r2, r3
 80027d4:	9009      	str	r0, [sp, #36]	; 0x24
 80027d6:	4042      	eors	r2, r0
 80027d8:	b2e8      	uxtb	r0, r5
 80027da:	f856 3020 	ldr.w	r3, [r6, r0, lsl #2]
 80027de:	900f      	str	r0, [sp, #60]	; 0x3c
 80027e0:	405a      	eors	r2, r3
 80027e2:	f3cc 2307 	ubfx	r3, ip, #8, #8
 80027e6:	f856 3023 	ldr.w	r3, [r6, r3, lsl #2]
 80027ea:	4666      	mov	r6, ip
 80027ec:	46a4      	mov	ip, r4
 80027ee:	9603      	str	r6, [sp, #12]
 80027f0:	ea82 0003 	eor.w	r0, r2, r3
 80027f4:	fa5f fb80 	uxtb.w	fp, r0
 80027f8:	900b      	str	r0, [sp, #44]	; 0x2c
 80027fa:	f85a 202b 	ldr.w	r2, [sl, fp, lsl #2]
 80027fe:	f8cd b018 	str.w	fp, [sp, #24]
 8002802:	f85c b02b 	ldr.w	fp, [ip, fp, lsl #2]
 8002806:	404a      	eors	r2, r1
 8002808:	f3c0 2107 	ubfx	r1, r0, #8, #8
 800280c:	f3c0 4307 	ubfx	r3, r0, #16, #8
 8002810:	0e00      	lsrs	r0, r0, #24
 8002812:	f858 e021 	ldr.w	lr, [r8, r1, lsl #2]
 8002816:	f85c 5023 	ldr.w	r5, [ip, r3, lsl #2]
 800281a:	9307      	str	r3, [sp, #28]
 800281c:	9008      	str	r0, [sp, #32]
 800281e:	f3c6 4307 	ubfx	r3, r6, #16, #8
 8002822:	f859 4020 	ldr.w	r4, [r9, r0, lsl #2]
 8002826:	f85a 3023 	ldr.w	r3, [sl, r3, lsl #2]
 800282a:	ea82 020e 	eor.w	r2, r2, lr
 800282e:	406a      	eors	r2, r5
 8002830:	4062      	eors	r2, r4
 8002832:	4053      	eors	r3, r2
 8002834:	f24a 12a8 	movw	r2, #41384	; 0xa1a8
 8002838:	f3c3 4007 	ubfx	r0, r3, #16, #8
 800283c:	ea4f 6913 	mov.w	r9, r3, lsr #24
 8002840:	f8dd c010 	ldr.w	ip, [sp, #16]
 8002844:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002848:	9005      	str	r0, [sp, #20]
 800284a:	f858 0020 	ldr.w	r0, [r8, r0, lsl #2]
 800284e:	f85a 8029 	ldr.w	r8, [sl, r9, lsl #2]
 8002852:	ea88 0800 	eor.w	r8, r8, r0
 8002856:	ea88 080b 	eor.w	r8, r8, fp
 800285a:	f852 b021 	ldr.w	fp, [r2, r1, lsl #2]
 800285e:	f85a 202c 	ldr.w	r2, [sl, ip, lsl #2]
 8002862:	ea88 060b 	eor.w	r6, r8, fp
 8002866:	f649 18a8 	movw	r8, #39336	; 0x99a8
 800286a:	4072      	eors	r2, r6
 800286c:	9e11      	ldr	r6, [sp, #68]	; 0x44
 800286e:	f6c0 0800 	movt	r8, #2048	; 0x800
 8002872:	6172      	str	r2, [r6, #20]
 8002874:	f3c3 2207 	ubfx	r2, r3, #8, #8
 8002878:	f85a 2022 	ldr.w	r2, [sl, r2, lsl #2]
 800287c:	fa5f fa83 	uxtb.w	sl, r3
 8002880:	f858 102a 	ldr.w	r1, [r8, sl, lsl #2]
 8002884:	4051      	eors	r1, r2
 8002886:	4069      	eors	r1, r5
 8002888:	f649 55a8 	movw	r5, #40360	; 0x9da8
 800288c:	4061      	eors	r1, r4
 800288e:	f6c0 0500 	movt	r5, #2048	; 0x800
 8002892:	ea81 010e 	eor.w	r1, r1, lr
 8002896:	46b6      	mov	lr, r6
 8002898:	61b1      	str	r1, [r6, #24]
 800289a:	f24a 16a8 	movw	r6, #41384	; 0xa1a8
 800289e:	990c      	ldr	r1, [sp, #48]	; 0x30
 80028a0:	f6c0 0600 	movt	r6, #2048	; 0x800
 80028a4:	f856 402c 	ldr.w	r4, [r6, ip, lsl #2]
 80028a8:	4051      	eors	r1, r2
 80028aa:	4048      	eors	r0, r1
 80028ac:	f855 102a 	ldr.w	r1, [r5, sl, lsl #2]
 80028b0:	46c2      	mov	sl, r8
 80028b2:	4048      	eors	r0, r1
 80028b4:	f856 1029 	ldr.w	r1, [r6, r9, lsl #2]
 80028b8:	4048      	eors	r0, r1
 80028ba:	9903      	ldr	r1, [sp, #12]
 80028bc:	b2c9      	uxtb	r1, r1
 80028be:	f858 1021 	ldr.w	r1, [r8, r1, lsl #2]
 80028c2:	ea80 0901 	eor.w	r9, r0, r1
 80028c6:	f3c9 4007 	ubfx	r0, r9, #16, #8
 80028ca:	ea4f 6119 	mov.w	r1, r9, lsr #24
 80028ce:	f858 0020 	ldr.w	r0, [r8, r0, lsl #2]
 80028d2:	f249 58a8 	movw	r8, #38312	; 0x95a8
 80028d6:	f6c0 0800 	movt	r8, #2048	; 0x800
 80028da:	f858 2021 	ldr.w	r2, [r8, r1, lsl #2]
 80028de:	f856 1021 	ldr.w	r1, [r6, r1, lsl #2]
 80028e2:	46c4      	mov	ip, r8
 80028e4:	4050      	eors	r0, r2
 80028e6:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80028e8:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 80028ec:	4050      	eors	r0, r2
 80028ee:	9a05      	ldr	r2, [sp, #20]
 80028f0:	4060      	eors	r0, r4
 80028f2:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 80028f6:	4050      	eors	r0, r2
 80028f8:	fa5f f289 	uxtb.w	r2, r9
 80028fc:	f8ce 001c 	str.w	r0, [lr, #28]
 8002900:	f3c9 2007 	ubfx	r0, r9, #8, #8
 8002904:	f85a 2022 	ldr.w	r2, [sl, r2, lsl #2]
 8002908:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800290a:	f858 0020 	ldr.w	r0, [r8, r0, lsl #2]
 800290e:	4050      	eors	r0, r2
 8002910:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002912:	4050      	eors	r0, r2
 8002914:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 8002918:	4050      	eors	r0, r2
 800291a:	f649 52a8 	movw	r2, #40360	; 0x9da8
 800291e:	4048      	eors	r0, r1
 8002920:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002924:	f8ce 0020 	str.w	r0, [lr, #32]
 8002928:	9807      	ldr	r0, [sp, #28]
 800292a:	9906      	ldr	r1, [sp, #24]
 800292c:	f85c 0020 	ldr.w	r0, [ip, r0, lsl #2]
 8002930:	f85a 1021 	ldr.w	r1, [sl, r1, lsl #2]
 8002934:	4058      	eors	r0, r3
 8002936:	4048      	eors	r0, r1
 8002938:	9908      	ldr	r1, [sp, #32]
 800293a:	f852 1021 	ldr.w	r1, [r2, r1, lsl #2]
 800293e:	4048      	eors	r0, r1
 8002940:	f852 1025 	ldr.w	r1, [r2, r5, lsl #2]
 8002944:	ea80 000b 	eor.w	r0, r0, fp
 8002948:	ea80 0301 	eor.w	r3, r0, r1
 800294c:	9309      	str	r3, [sp, #36]	; 0x24
 800294e:	f3c3 2007 	ubfx	r0, r3, #8, #8
 8002952:	ea4f 6e13 	mov.w	lr, r3, lsr #24
 8002956:	990d      	ldr	r1, [sp, #52]	; 0x34
 8002958:	f3c3 4807 	ubfx	r8, r3, #16, #8
 800295c:	b2dd      	uxtb	r5, r3
 800295e:	f85a b020 	ldr.w	fp, [sl, r0, lsl #2]
 8002962:	f85c 002e 	ldr.w	r0, [ip, lr, lsl #2]
 8002966:	9505      	str	r5, [sp, #20]
 8002968:	4048      	eors	r0, r1
 800296a:	4611      	mov	r1, r2
 800296c:	f851 2028 	ldr.w	r2, [r1, r8, lsl #2]
 8002970:	ea80 000b 	eor.w	r0, r0, fp
 8002974:	4050      	eors	r0, r2
 8002976:	f856 2025 	ldr.w	r2, [r6, r5, lsl #2]
 800297a:	4050      	eors	r0, r2
 800297c:	ea80 0304 	eor.w	r3, r0, r4
 8002980:	930c      	str	r3, [sp, #48]	; 0x30
 8002982:	f3c3 2007 	ubfx	r0, r3, #8, #8
 8002986:	f85a 2020 	ldr.w	r2, [sl, r0, lsl #2]
 800298a:	b2d8      	uxtb	r0, r3
 800298c:	f85c 4020 	ldr.w	r4, [ip, r0, lsl #2]
 8002990:	900a      	str	r0, [sp, #40]	; 0x28
 8002992:	980b      	ldr	r0, [sp, #44]	; 0x2c
 8002994:	9206      	str	r2, [sp, #24]
 8002996:	4060      	eors	r0, r4
 8002998:	9407      	str	r4, [sp, #28]
 800299a:	460c      	mov	r4, r1
 800299c:	4050      	eors	r0, r2
 800299e:	f3c3 4207 	ubfx	r2, r3, #16, #8
 80029a2:	920b      	str	r2, [sp, #44]	; 0x2c
 80029a4:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 80029a8:	0e19      	lsrs	r1, r3, #24
 80029aa:	4663      	mov	r3, ip
 80029ac:	9108      	str	r1, [sp, #32]
 80029ae:	4050      	eors	r0, r2
 80029b0:	f856 2021 	ldr.w	r2, [r6, r1, lsl #2]
 80029b4:	990e      	ldr	r1, [sp, #56]	; 0x38
 80029b6:	4050      	eors	r0, r2
 80029b8:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
 80029bc:	4631      	mov	r1, r6
 80029be:	ea80 0c02 	eor.w	ip, r0, r2
 80029c2:	f3cc 2007 	ubfx	r0, ip, #8, #8
 80029c6:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
 80029ca:	9004      	str	r0, [sp, #16]
 80029cc:	f3cc 4007 	ubfx	r0, ip, #16, #8
 80029d0:	f85a 3020 	ldr.w	r3, [sl, r0, lsl #2]
 80029d4:	900d      	str	r0, [sp, #52]	; 0x34
 80029d6:	fa5f f08c 	uxtb.w	r0, ip
 80029da:	900e      	str	r0, [sp, #56]	; 0x38
 80029dc:	ea82 0209 	eor.w	r2, r2, r9
 80029e0:	405a      	eors	r2, r3
 80029e2:	f854 3020 	ldr.w	r3, [r4, r0, lsl #2]
 80029e6:	ea4f 601c 	mov.w	r0, ip, lsr #24
 80029ea:	405a      	eors	r2, r3
 80029ec:	f851 3020 	ldr.w	r3, [r1, r0, lsl #2]
 80029f0:	405a      	eors	r2, r3
 80029f2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80029f4:	f85a 3023 	ldr.w	r3, [sl, r3, lsl #2]
 80029f8:	ea82 0a03 	eor.w	sl, r2, r3
 80029fc:	ea4f 631a 	mov.w	r3, sl, lsr #24
 8002a00:	f854 2023 	ldr.w	r2, [r4, r3, lsl #2]
 8002a04:	f249 53a8 	movw	r3, #38312	; 0x95a8
 8002a08:	f6c0 0300 	movt	r3, #2048	; 0x800
 8002a0c:	f853 9025 	ldr.w	r9, [r3, r5, lsl #2]
 8002a10:	460d      	mov	r5, r1
 8002a12:	920f      	str	r2, [sp, #60]	; 0x3c
 8002a14:	ea89 040b 	eor.w	r4, r9, fp
 8002a18:	f3ca 4b07 	ubfx	fp, sl, #16, #8
 8002a1c:	f649 19a8 	movw	r9, #39336	; 0x99a8
 8002a20:	f851 602b 	ldr.w	r6, [r1, fp, lsl #2]
 8002a24:	4054      	eors	r4, r2
 8002a26:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8002a28:	f6c0 0900 	movt	r9, #2048	; 0x800
 8002a2c:	f649 51a8 	movw	r1, #40360	; 0x9da8
 8002a30:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002a34:	4074      	eors	r4, r6
 8002a36:	f853 6020 	ldr.w	r6, [r3, r0, lsl #2]
 8002a3a:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8002a3e:	4074      	eors	r4, r6
 8002a40:	f859 602e 	ldr.w	r6, [r9, lr, lsl #2]
 8002a44:	46ae      	mov	lr, r5
 8002a46:	6254      	str	r4, [r2, #36]	; 0x24
 8002a48:	f853 4028 	ldr.w	r4, [r3, r8, lsl #2]
 8002a4c:	4698      	mov	r8, r3
 8002a4e:	4074      	eors	r4, r6
 8002a50:	f3ca 2607 	ubfx	r6, sl, #8, #8
 8002a54:	f851 3026 	ldr.w	r3, [r1, r6, lsl #2]
 8002a58:	f85e 6026 	ldr.w	r6, [lr, r6, lsl #2]
 8002a5c:	4063      	eors	r3, r4
 8002a5e:	fa5f f48a 	uxtb.w	r4, sl
 8002a62:	f85e 5024 	ldr.w	r5, [lr, r4, lsl #2]
 8002a66:	406b      	eors	r3, r5
 8002a68:	f859 502b 	ldr.w	r5, [r9, fp, lsl #2]
 8002a6c:	406b      	eors	r3, r5
 8002a6e:	6293      	str	r3, [r2, #40]	; 0x28
 8002a70:	e9dd 5306 	ldrd	r5, r3, [sp, #24]
 8002a74:	406b      	eors	r3, r5
 8002a76:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 8002a78:	4043      	eors	r3, r0
 8002a7a:	f85e 5025 	ldr.w	r5, [lr, r5, lsl #2]
 8002a7e:	406b      	eors	r3, r5
 8002a80:	9d05      	ldr	r5, [sp, #20]
 8002a82:	f851 5025 	ldr.w	r5, [r1, r5, lsl #2]
 8002a86:	406b      	eors	r3, r5
 8002a88:	62d3      	str	r3, [r2, #44]	; 0x2c
 8002a8a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002a8c:	9d08      	ldr	r5, [sp, #32]
 8002a8e:	f858 3023 	ldr.w	r3, [r8, r3, lsl #2]
 8002a92:	f859 5025 	ldr.w	r5, [r9, r5, lsl #2]
 8002a96:	f8dd 8010 	ldr.w	r8, [sp, #16]
 8002a9a:	406b      	eors	r3, r5
 8002a9c:	f851 5028 	ldr.w	r5, [r1, r8, lsl #2]
 8002aa0:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002aa2:	406b      	eors	r3, r5
 8002aa4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8002aa6:	f85e 5025 	ldr.w	r5, [lr, r5, lsl #2]
 8002aaa:	406b      	eors	r3, r5
 8002aac:	f85e 5021 	ldr.w	r5, [lr, r1, lsl #2]
 8002ab0:	f249 51a8 	movw	r1, #38312	; 0x95a8
 8002ab4:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002ab8:	406b      	eors	r3, r5
 8002aba:	6313      	str	r3, [r2, #48]	; 0x30
 8002abc:	f859 3024 	ldr.w	r3, [r9, r4, lsl #2]
 8002ac0:	f851 402b 	ldr.w	r4, [r1, fp, lsl #2]
 8002ac4:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ac6:	ea84 0502 	eor.w	r5, r4, r2
 8002aca:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8002acc:	406b      	eors	r3, r5
 8002ace:	f649 55a8 	movw	r5, #40360	; 0x9da8
 8002ad2:	f6c0 0500 	movt	r5, #2048	; 0x800
 8002ad6:	4053      	eors	r3, r2
 8002ad8:	4073      	eors	r3, r6
 8002ada:	460e      	mov	r6, r1
 8002adc:	ea83 0200 	eor.w	r2, r3, r0
 8002ae0:	0e10      	lsrs	r0, r2, #24
 8002ae2:	9207      	str	r2, [sp, #28]
 8002ae4:	b2d4      	uxtb	r4, r2
 8002ae6:	9005      	str	r0, [sp, #20]
 8002ae8:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8002aec:	f3c2 2107 	ubfx	r1, r2, #8, #8
 8002af0:	910b      	str	r1, [sp, #44]	; 0x2c
 8002af2:	f859 b021 	ldr.w	fp, [r9, r1, lsl #2]
 8002af6:	f3c2 4107 	ubfx	r1, r2, #16, #8
 8002afa:	9409      	str	r4, [sp, #36]	; 0x24
 8002afc:	9101      	str	r1, [sp, #4]
 8002afe:	f855 1021 	ldr.w	r1, [r5, r1, lsl #2]
 8002b02:	ea80 000c 	eor.w	r0, r0, ip
 8002b06:	46b4      	mov	ip, r6
 8002b08:	ea80 000b 	eor.w	r0, r0, fp
 8002b0c:	4048      	eors	r0, r1
 8002b0e:	f85e 1024 	ldr.w	r1, [lr, r4, lsl #2]
 8002b12:	4048      	eors	r0, r1
 8002b14:	f85e 1028 	ldr.w	r1, [lr, r8, lsl #2]
 8002b18:	46c8      	mov	r8, r9
 8002b1a:	ea80 0301 	eor.w	r3, r0, r1
 8002b1e:	b2d8      	uxtb	r0, r3
 8002b20:	930a      	str	r3, [sp, #40]	; 0x28
 8002b22:	900f      	str	r0, [sp, #60]	; 0x3c
 8002b24:	f856 0020 	ldr.w	r0, [r6, r0, lsl #2]
 8002b28:	462e      	mov	r6, r5
 8002b2a:	9003      	str	r0, [sp, #12]
 8002b2c:	f3c3 2207 	ubfx	r2, r3, #8, #8
 8002b30:	ea80 000a 	eor.w	r0, r0, sl
 8002b34:	f859 1022 	ldr.w	r1, [r9, r2, lsl #2]
 8002b38:	9208      	str	r2, [sp, #32]
 8002b3a:	9102      	str	r1, [sp, #8]
 8002b3c:	4048      	eors	r0, r1
 8002b3e:	f3c3 4107 	ubfx	r1, r3, #16, #8
 8002b42:	f855 2021 	ldr.w	r2, [r5, r1, lsl #2]
 8002b46:	9106      	str	r1, [sp, #24]
 8002b48:	990d      	ldr	r1, [sp, #52]	; 0x34
 8002b4a:	4042      	eors	r2, r0
 8002b4c:	0e18      	lsrs	r0, r3, #24
 8002b4e:	f85e 3020 	ldr.w	r3, [lr, r0, lsl #2]
 8002b52:	9004      	str	r0, [sp, #16]
 8002b54:	4670      	mov	r0, lr
 8002b56:	405a      	eors	r2, r3
 8002b58:	f85c 3021 	ldr.w	r3, [ip, r1, lsl #2]
 8002b5c:	ea82 0e03 	eor.w	lr, r2, r3
 8002b60:	f3ce 2107 	ubfx	r1, lr, #8, #8
 8002b64:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8002b66:	f85c 3021 	ldr.w	r3, [ip, r1, lsl #2]
 8002b6a:	910d      	str	r1, [sp, #52]	; 0x34
 8002b6c:	f3ce 4907 	ubfx	r9, lr, #16, #8
 8002b70:	fa5f f18e 	uxtb.w	r1, lr
 8002b74:	f858 5029 	ldr.w	r5, [r8, r9, lsl #2]
 8002b78:	910c      	str	r1, [sp, #48]	; 0x30
 8002b7a:	4053      	eors	r3, r2
 8002b7c:	f856 2021 	ldr.w	r2, [r6, r1, lsl #2]
 8002b80:	406b      	eors	r3, r5
 8002b82:	ea4f 651e 	mov.w	r5, lr, lsr #24
 8002b86:	405a      	eors	r2, r3
 8002b88:	f850 3025 	ldr.w	r3, [r0, r5, lsl #2]
 8002b8c:	405a      	eors	r2, r3
 8002b8e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002b90:	f858 3023 	ldr.w	r3, [r8, r3, lsl #2]
 8002b94:	f85c 8024 	ldr.w	r8, [ip, r4, lsl #2]
 8002b98:	ea82 0a03 	eor.w	sl, r2, r3
 8002b9c:	ea88 040b 	eor.w	r4, r8, fp
 8002ba0:	4633      	mov	r3, r6
 8002ba2:	ea4f 681a 	mov.w	r8, sl, lsr #24
 8002ba6:	f3ca 4207 	ubfx	r2, sl, #16, #8
 8002baa:	9911      	ldr	r1, [sp, #68]	; 0x44
 8002bac:	f856 b028 	ldr.w	fp, [r6, r8, lsl #2]
 8002bb0:	f850 2022 	ldr.w	r2, [r0, r2, lsl #2]
 8002bb4:	ea84 040b 	eor.w	r4, r4, fp
 8002bb8:	4062      	eors	r2, r4
 8002bba:	f85c 4029 	ldr.w	r4, [ip, r9, lsl #2]
 8002bbe:	4062      	eors	r2, r4
 8002bc0:	634a      	str	r2, [r1, #52]	; 0x34
 8002bc2:	fa5f f28a 	uxtb.w	r2, sl
 8002bc6:	f3ca 2407 	ubfx	r4, sl, #8, #8
 8002bca:	9e05      	ldr	r6, [sp, #20]
 8002bcc:	f850 b022 	ldr.w	fp, [r0, r2, lsl #2]
 8002bd0:	9801      	ldr	r0, [sp, #4]
 8002bd2:	f853 2024 	ldr.w	r2, [r3, r4, lsl #2]
 8002bd6:	f85c 0020 	ldr.w	r0, [ip, r0, lsl #2]
 8002bda:	f649 1ca8 	movw	ip, #39336	; 0x99a8
 8002bde:	f6c0 0c00 	movt	ip, #2048	; 0x800
 8002be2:	f85c 4026 	ldr.w	r4, [ip, r6, lsl #2]
 8002be6:	900e      	str	r0, [sp, #56]	; 0x38
 8002be8:	4044      	eors	r4, r0
 8002bea:	4062      	eors	r2, r4
 8002bec:	f85c 4028 	ldr.w	r4, [ip, r8, lsl #2]
 8002bf0:	4688      	mov	r8, r1
 8002bf2:	ea82 020b 	eor.w	r2, r2, fp
 8002bf6:	46e3      	mov	fp, ip
 8002bf8:	f24a 1ca8 	movw	ip, #41384	; 0xa1a8
 8002bfc:	f6c0 0c00 	movt	ip, #2048	; 0x800
 8002c00:	4062      	eors	r2, r4
 8002c02:	f8c8 2038 	str.w	r2, [r8, #56]	; 0x38
 8002c06:	f853 2025 	ldr.w	r2, [r3, r5, lsl #2]
 8002c0a:	e9dd 5102 	ldrd	r5, r1, [sp, #8]
 8002c0e:	ea85 0401 	eor.w	r4, r5, r1
 8002c12:	f24a 11a8 	movw	r1, #41384	; 0xa1a8
 8002c16:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002c1a:	4062      	eors	r2, r4
 8002c1c:	f851 4029 	ldr.w	r4, [r1, r9, lsl #2]
 8002c20:	f8dd 902c 	ldr.w	r9, [sp, #44]	; 0x2c
 8002c24:	4062      	eors	r2, r4
 8002c26:	f853 4029 	ldr.w	r4, [r3, r9, lsl #2]
 8002c2a:	4062      	eors	r2, r4
 8002c2c:	f8c8 203c 	str.w	r2, [r8, #60]	; 0x3c
 8002c30:	980d      	ldr	r0, [sp, #52]	; 0x34
 8002c32:	9904      	ldr	r1, [sp, #16]
 8002c34:	f853 2020 	ldr.w	r2, [r3, r0, lsl #2]
 8002c38:	9806      	ldr	r0, [sp, #24]
 8002c3a:	f249 53a8 	movw	r3, #38312	; 0x95a8
 8002c3e:	f85b 4021 	ldr.w	r4, [fp, r1, lsl #2]
 8002c42:	f6c0 0300 	movt	r3, #2048	; 0x800
 8002c46:	f853 5020 	ldr.w	r5, [r3, r0, lsl #2]
 8002c4a:	980c      	ldr	r0, [sp, #48]	; 0x30
 8002c4c:	406c      	eors	r4, r5
 8002c4e:	4062      	eors	r2, r4
 8002c50:	f85c 4020 	ldr.w	r4, [ip, r0, lsl #2]
 8002c54:	9808      	ldr	r0, [sp, #32]
 8002c56:	4062      	eors	r2, r4
 8002c58:	f85c 4020 	ldr.w	r4, [ip, r0, lsl #2]
 8002c5c:	4062      	eors	r2, r4
 8002c5e:	f8c8 2040 	str.w	r2, [r8, #64]	; 0x40
 8002c62:	ea85 020e 	eor.w	r2, r5, lr
 8002c66:	980f      	ldr	r0, [sp, #60]	; 0x3c
 8002c68:	f85b 5020 	ldr.w	r5, [fp, r0, lsl #2]
 8002c6c:	406a      	eors	r2, r5
 8002c6e:	f649 55a8 	movw	r5, #40360	; 0x9da8
 8002c72:	f6c0 0500 	movt	r5, #2048	; 0x800
 8002c76:	f855 0021 	ldr.w	r0, [r5, r1, lsl #2]
 8002c7a:	46a8      	mov	r8, r5
 8002c7c:	9907      	ldr	r1, [sp, #28]
 8002c7e:	4050      	eors	r0, r2
 8002c80:	f855 2026 	ldr.w	r2, [r5, r6, lsl #2]
 8002c84:	4666      	mov	r6, ip
 8002c86:	4060      	eors	r0, r4
 8002c88:	461c      	mov	r4, r3
 8002c8a:	4633      	mov	r3, r6
 8002c8c:	ea80 0502 	eor.w	r5, r0, r2
 8002c90:	0e28      	lsrs	r0, r5, #24
 8002c92:	9008      	str	r0, [sp, #32]
 8002c94:	f854 0020 	ldr.w	r0, [r4, r0, lsl #2]
 8002c98:	4048      	eors	r0, r1
 8002c9a:	f3c5 2107 	ubfx	r1, r5, #8, #8
 8002c9e:	f85b 2021 	ldr.w	r2, [fp, r1, lsl #2]
 8002ca2:	9106      	str	r1, [sp, #24]
 8002ca4:	4050      	eors	r0, r2
 8002ca6:	f3c5 4207 	ubfx	r2, r5, #16, #8
 8002caa:	950f      	str	r5, [sp, #60]	; 0x3c
 8002cac:	f858 1022 	ldr.w	r1, [r8, r2, lsl #2]
 8002cb0:	9107      	str	r1, [sp, #28]
 8002cb2:	4048      	eors	r0, r1
 8002cb4:	b2e9      	uxtb	r1, r5
 8002cb6:	f856 2021 	ldr.w	r2, [r6, r1, lsl #2]
 8002cba:	9105      	str	r1, [sp, #20]
 8002cbc:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002cbe:	4050      	eors	r0, r2
 8002cc0:	f856 2029 	ldr.w	r2, [r6, r9, lsl #2]
 8002cc4:	46d9      	mov	r9, fp
 8002cc6:	ea80 0602 	eor.w	r6, r0, r2
 8002cca:	b2f2      	uxtb	r2, r6
 8002ccc:	f3c6 2507 	ubfx	r5, r6, #8, #8
 8002cd0:	f854 0022 	ldr.w	r0, [r4, r2, lsl #2]
 8002cd4:	4048      	eors	r0, r1
 8002cd6:	f85b 1025 	ldr.w	r1, [fp, r5, lsl #2]
 8002cda:	4048      	eors	r0, r1
 8002cdc:	f3c6 4107 	ubfx	r1, r6, #16, #8
 8002ce0:	960d      	str	r6, [sp, #52]	; 0x34
 8002ce2:	f858 1021 	ldr.w	r1, [r8, r1, lsl #2]
 8002ce6:	9104      	str	r1, [sp, #16]
 8002ce8:	4041      	eors	r1, r0
 8002cea:	0e30      	lsrs	r0, r6, #24
 8002cec:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 8002cf0:	9003      	str	r0, [sp, #12]
 8002cf2:	4041      	eors	r1, r0
 8002cf4:	980e      	ldr	r0, [sp, #56]	; 0x38
 8002cf6:	ea81 0b00 	eor.w	fp, r1, r0
 8002cfa:	f3cb 2007 	ubfx	r0, fp, #8, #8
 8002cfe:	fa5f fc8b 	uxtb.w	ip, fp
 8002d02:	f854 1020 	ldr.w	r1, [r4, r0, lsl #2]
 8002d06:	900a      	str	r0, [sp, #40]	; 0x28
 8002d08:	f3cb 4007 	ubfx	r0, fp, #16, #8
 8002d0c:	f858 602c 	ldr.w	r6, [r8, ip, lsl #2]
 8002d10:	f859 e020 	ldr.w	lr, [r9, r0, lsl #2]
 8002d14:	900b      	str	r0, [sp, #44]	; 0x2c
 8002d16:	f24a 10a8 	movw	r0, #41384	; 0xa1a8
 8002d1a:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002d1e:	ea81 030a 	eor.w	r3, r1, sl
 8002d22:	ea83 030e 	eor.w	r3, r3, lr
 8002d26:	405e      	eors	r6, r3
 8002d28:	ea4f 631b 	mov.w	r3, fp, lsr #24
 8002d2c:	f850 8023 	ldr.w	r8, [r0, r3, lsl #2]
 8002d30:	9809      	ldr	r0, [sp, #36]	; 0x24
 8002d32:	f859 0020 	ldr.w	r0, [r9, r0, lsl #2]
 8002d36:	ea86 0608 	eor.w	r6, r6, r8
 8002d3a:	ea86 0900 	eor.w	r9, r6, r0
 8002d3e:	9810      	ldr	r0, [sp, #64]	; 0x40
 8002d40:	280a      	cmp	r0, #10
 8002d42:	dd60      	ble.n	8002e06 <cast128_set_key+0x780>
 8002d44:	f649 50a8 	movw	r0, #40360	; 0x9da8
 8002d48:	9e05      	ldr	r6, [sp, #20]
 8002d4a:	ea4f 6a19 	mov.w	sl, r9, lsr #24
 8002d4e:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002d52:	f850 8022 	ldr.w	r8, [r0, r2, lsl #2]
 8002d56:	f249 50a8 	movw	r0, #38312	; 0x95a8
 8002d5a:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002d5e:	4604      	mov	r4, r0
 8002d60:	f854 0023 	ldr.w	r0, [r4, r3, lsl #2]
 8002d64:	ea80 000e 	eor.w	r0, r0, lr
 8002d68:	ea80 0008 	eor.w	r0, r0, r8
 8002d6c:	f24a 18a8 	movw	r8, #41384	; 0xa1a8
 8002d70:	f6c0 0800 	movt	r8, #2048	; 0x800
 8002d74:	f858 5025 	ldr.w	r5, [r8, r5, lsl #2]
 8002d78:	4068      	eors	r0, r5
 8002d7a:	f854 5026 	ldr.w	r5, [r4, r6, lsl #2]
 8002d7e:	4068      	eors	r0, r5
 8002d80:	4625      	mov	r5, r4
 8002d82:	9c11      	ldr	r4, [sp, #68]	; 0x44
 8002d84:	6460      	str	r0, [r4, #68]	; 0x44
 8002d86:	f649 10a8 	movw	r0, #39336	; 0x99a8
 8002d8a:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002d8e:	4686      	mov	lr, r0
 8002d90:	f85e 0022 	ldr.w	r0, [lr, r2, lsl #2]
 8002d94:	f85e 202c 	ldr.w	r2, [lr, ip, lsl #2]
 8002d98:	f649 5ca8 	movw	ip, #40360	; 0x9da8
 8002d9c:	f6c0 0c00 	movt	ip, #2048	; 0x800
 8002da0:	920c      	str	r2, [sp, #48]	; 0x30
 8002da2:	4051      	eors	r1, r2
 8002da4:	9a04      	ldr	r2, [sp, #16]
 8002da6:	4051      	eors	r1, r2
 8002da8:	9a03      	ldr	r2, [sp, #12]
 8002daa:	4051      	eors	r1, r2
 8002dac:	4048      	eors	r0, r1
 8002dae:	64a0      	str	r0, [r4, #72]	; 0x48
 8002db0:	f3c9 4107 	ubfx	r1, r9, #16, #8
 8002db4:	f855 002a 	ldr.w	r0, [r5, sl, lsl #2]
 8002db8:	f85e 2021 	ldr.w	r2, [lr, r1, lsl #2]
 8002dbc:	4050      	eors	r0, r2
 8002dbe:	f85c 2026 	ldr.w	r2, [ip, r6, lsl #2]
 8002dc2:	f85c c023 	ldr.w	ip, [ip, r3, lsl #2]
 8002dc6:	462e      	mov	r6, r5
 8002dc8:	4050      	eors	r0, r2
 8002dca:	9a06      	ldr	r2, [sp, #24]
 8002dcc:	f858 2022 	ldr.w	r2, [r8, r2, lsl #2]
 8002dd0:	4050      	eors	r0, r2
 8002dd2:	ea80 000c 	eor.w	r0, r0, ip
 8002dd6:	64e0      	str	r0, [r4, #76]	; 0x4c
 8002dd8:	f3c9 2207 	ubfx	r2, r9, #8, #8
 8002ddc:	f855 0022 	ldr.w	r0, [r5, r2, lsl #2]
 8002de0:	fa5f f589 	uxtb.w	r5, r9
 8002de4:	f85e 3025 	ldr.w	r3, [lr, r5, lsl #2]
 8002de8:	eb0e 0e85 	add.w	lr, lr, r5, lsl #2
 8002dec:	4058      	eors	r0, r3
 8002dee:	9b07      	ldr	r3, [sp, #28]
 8002df0:	4058      	eors	r0, r3
 8002df2:	9b08      	ldr	r3, [sp, #32]
 8002df4:	f858 3023 	ldr.w	r3, [r8, r3, lsl #2]
 8002df8:	4058      	eors	r0, r3
 8002dfa:	f858 3021 	ldr.w	r3, [r8, r1, lsl #2]
 8002dfe:	4058      	eors	r0, r3
 8002e00:	6520      	str	r0, [r4, #80]	; 0x50
 8002e02:	4634      	mov	r4, r6
 8002e04:	e01f      	b.n	8002e46 <cast128_set_key+0x7c0>
 8002e06:	f649 10a8 	movw	r0, #39336	; 0x99a8
 8002e0a:	f24a 18a8 	movw	r8, #41384	; 0xa1a8
 8002e0e:	f249 54a8 	movw	r4, #38312	; 0x95a8
 8002e12:	ea4f 6a19 	mov.w	sl, r9, lsr #24
 8002e16:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002e1a:	f6c0 0800 	movt	r8, #2048	; 0x800
 8002e1e:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002e22:	4601      	mov	r1, r0
 8002e24:	f851 002c 	ldr.w	r0, [r1, ip, lsl #2]
 8002e28:	900c      	str	r0, [sp, #48]	; 0x30
 8002e2a:	fa5f f089 	uxtb.w	r0, r9
 8002e2e:	f3c9 2207 	ubfx	r2, r9, #8, #8
 8002e32:	eb01 0e80 	add.w	lr, r1, r0, lsl #2
 8002e36:	f649 51a8 	movw	r1, #40360	; 0x9da8
 8002e3a:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002e3e:	f851 c023 	ldr.w	ip, [r1, r3, lsl #2]
 8002e42:	f3c9 4107 	ubfx	r1, r9, #16, #8
 8002e46:	f649 53a8 	movw	r3, #40360	; 0x9da8
 8002e4a:	f854 1021 	ldr.w	r1, [r4, r1, lsl #2]
 8002e4e:	f6c0 0300 	movt	r3, #2048	; 0x800
 8002e52:	4618      	mov	r0, r3
 8002e54:	f850 302a 	ldr.w	r3, [r0, sl, lsl #2]
 8002e58:	4682      	mov	sl, r0
 8002e5a:	980f      	ldr	r0, [sp, #60]	; 0x3c
 8002e5c:	4041      	eors	r1, r0
 8002e5e:	f8de 0000 	ldr.w	r0, [lr]
 8002e62:	4048      	eors	r0, r1
 8002e64:	f858 1022 	ldr.w	r1, [r8, r2, lsl #2]
 8002e68:	4058      	eors	r0, r3
 8002e6a:	4048      	eors	r0, r1
 8002e6c:	f649 11a8 	movw	r1, #39336	; 0x99a8
 8002e70:	ea80 030c 	eor.w	r3, r0, ip
 8002e74:	f6c0 0100 	movt	r1, #2048	; 0x800
 8002e78:	46a4      	mov	ip, r4
 8002e7a:	0e18      	lsrs	r0, r3, #24
 8002e7c:	9308      	str	r3, [sp, #32]
 8002e7e:	468e      	mov	lr, r1
 8002e80:	9007      	str	r0, [sp, #28]
 8002e82:	f854 0020 	ldr.w	r0, [r4, r0, lsl #2]
 8002e86:	f3c3 2207 	ubfx	r2, r3, #8, #8
 8002e8a:	920f      	str	r2, [sp, #60]	; 0x3c
 8002e8c:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8002e90:	f3c3 4107 	ubfx	r1, r3, #16, #8
 8002e94:	9109      	str	r1, [sp, #36]	; 0x24
 8002e96:	f85a 1021 	ldr.w	r1, [sl, r1, lsl #2]
 8002e9a:	ea80 000b 	eor.w	r0, r0, fp
 8002e9e:	46c3      	mov	fp, r8
 8002ea0:	4050      	eors	r0, r2
 8002ea2:	9106      	str	r1, [sp, #24]
 8002ea4:	4048      	eors	r0, r1
 8002ea6:	b2d9      	uxtb	r1, r3
 8002ea8:	f858 2021 	ldr.w	r2, [r8, r1, lsl #2]
 8002eac:	910e      	str	r1, [sp, #56]	; 0x38
 8002eae:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002eb0:	4050      	eors	r0, r2
 8002eb2:	f858 2021 	ldr.w	r2, [r8, r1, lsl #2]
 8002eb6:	ea80 0102 	eor.w	r1, r0, r2
 8002eba:	b2ca      	uxtb	r2, r1
 8002ebc:	910a      	str	r1, [sp, #40]	; 0x28
 8002ebe:	f854 0022 	ldr.w	r0, [r4, r2, lsl #2]
 8002ec2:	4616      	mov	r6, r2
 8002ec4:	4674      	mov	r4, lr
 8002ec6:	9603      	str	r6, [sp, #12]
 8002ec8:	ea80 0009 	eor.w	r0, r0, r9
 8002ecc:	f3c1 2907 	ubfx	r9, r1, #8, #8
 8002ed0:	f3c1 4207 	ubfx	r2, r1, #16, #8
 8002ed4:	0e09      	lsrs	r1, r1, #24
 8002ed6:	9204      	str	r2, [sp, #16]
 8002ed8:	f85a e022 	ldr.w	lr, [sl, r2, lsl #2]
 8002edc:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8002ede:	f854 8029 	ldr.w	r8, [r4, r9, lsl #2]
 8002ee2:	9105      	str	r1, [sp, #20]
 8002ee4:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8002ee8:	f85c 3022 	ldr.w	r3, [ip, r2, lsl #2]
 8002eec:	ea80 0008 	eor.w	r0, r0, r8
 8002ef0:	ea80 000e 	eor.w	r0, r0, lr
 8002ef4:	4048      	eors	r0, r1
 8002ef6:	4058      	eors	r0, r3
 8002ef8:	f3c0 4207 	ubfx	r2, r0, #16, #8
 8002efc:	0e03      	lsrs	r3, r0, #24
 8002efe:	9202      	str	r2, [sp, #8]
 8002f00:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 8002f04:	f649 54a8 	movw	r4, #40360	; 0x9da8
 8002f08:	f85c 5023 	ldr.w	r5, [ip, r3, lsl #2]
 8002f0c:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002f10:	f854 a026 	ldr.w	sl, [r4, r6, lsl #2]
 8002f14:	f85b 4029 	ldr.w	r4, [fp, r9, lsl #2]
 8002f18:	f8dd 9044 	ldr.w	r9, [sp, #68]	; 0x44
 8002f1c:	4055      	eors	r5, r2
 8002f1e:	ea85 050a 	eor.w	r5, r5, sl
 8002f22:	940b      	str	r4, [sp, #44]	; 0x2c
 8002f24:	4065      	eors	r5, r4
 8002f26:	9c0f      	ldr	r4, [sp, #60]	; 0x3c
 8002f28:	f85c 6024 	ldr.w	r6, [ip, r4, lsl #2]
 8002f2c:	f649 14a8 	movw	r4, #39336	; 0x99a8
 8002f30:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002f34:	4075      	eors	r5, r6
 8002f36:	b2c6      	uxtb	r6, r0
 8002f38:	f005 051f 	and.w	r5, r5, #31
 8002f3c:	f854 a026 	ldr.w	sl, [r4, r6, lsl #2]
 8002f40:	f889 5004 	strb.w	r5, [r9, #4]
 8002f44:	f3c0 2507 	ubfx	r5, r0, #8, #8
 8002f48:	f85c 5025 	ldr.w	r5, [ip, r5, lsl #2]
 8002f4c:	ea8a 0405 	eor.w	r4, sl, r5
 8002f50:	ea84 040e 	eor.w	r4, r4, lr
 8002f54:	4061      	eors	r1, r4
 8002f56:	f649 54a8 	movw	r4, #40360	; 0x9da8
 8002f5a:	ea81 0108 	eor.w	r1, r1, r8
 8002f5e:	f6c0 0400 	movt	r4, #2048	; 0x800
 8002f62:	f001 011f 	and.w	r1, r1, #31
 8002f66:	f889 1005 	strb.w	r1, [r9, #5]
 8002f6a:	990d      	ldr	r1, [sp, #52]	; 0x34
 8002f6c:	4069      	eors	r1, r5
 8002f6e:	f649 15a8 	movw	r5, #39336	; 0x99a8
 8002f72:	4051      	eors	r1, r2
 8002f74:	f854 2026 	ldr.w	r2, [r4, r6, lsl #2]
 8002f78:	f6c0 0500 	movt	r5, #2048	; 0x800
 8002f7c:	46ae      	mov	lr, r5
 8002f7e:	4051      	eors	r1, r2
 8002f80:	f85b 2023 	ldr.w	r2, [fp, r3, lsl #2]
 8002f84:	4051      	eors	r1, r2
 8002f86:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8002f88:	ea81 0802 	eor.w	r8, r1, r2
 8002f8c:	f3c8 4107 	ubfx	r1, r8, #16, #8
 8002f90:	ea4f 6218 	mov.w	r2, r8, lsr #24
 8002f94:	f85c 3022 	ldr.w	r3, [ip, r2, lsl #2]
 8002f98:	f855 1021 	ldr.w	r1, [r5, r1, lsl #2]
 8002f9c:	f85b 2022 	ldr.w	r2, [fp, r2, lsl #2]
 8002fa0:	4059      	eors	r1, r3
 8002fa2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002fa4:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002fa8:	4059      	eors	r1, r3
 8002faa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8002fac:	f85b 6023 	ldr.w	r6, [fp, r3, lsl #2]
 8002fb0:	9b02      	ldr	r3, [sp, #8]
 8002fb2:	f854 3023 	ldr.w	r3, [r4, r3, lsl #2]
 8002fb6:	4071      	eors	r1, r6
 8002fb8:	4059      	eors	r1, r3
 8002fba:	fa5f f388 	uxtb.w	r3, r8
 8002fbe:	f001 011f 	and.w	r1, r1, #31
 8002fc2:	f855 3023 	ldr.w	r3, [r5, r3, lsl #2]
 8002fc6:	f889 1006 	strb.w	r1, [r9, #6]
 8002fca:	f3c8 2107 	ubfx	r1, r8, #8, #8
 8002fce:	9d07      	ldr	r5, [sp, #28]
 8002fd0:	f85c 1021 	ldr.w	r1, [ip, r1, lsl #2]
 8002fd4:	4059      	eors	r1, r3
 8002fd6:	9b06      	ldr	r3, [sp, #24]
 8002fd8:	4059      	eors	r1, r3
 8002fda:	f85b 3025 	ldr.w	r3, [fp, r5, lsl #2]
 8002fde:	4059      	eors	r1, r3
 8002fe0:	4623      	mov	r3, r4
 8002fe2:	4051      	eors	r1, r2
 8002fe4:	f001 011f 	and.w	r1, r1, #31
 8002fe8:	f889 1007 	strb.w	r1, [r9, #7]
 8002fec:	46f1      	mov	r9, lr
 8002fee:	9904      	ldr	r1, [sp, #16]
 8002ff0:	f85c 1021 	ldr.w	r1, [ip, r1, lsl #2]
 8002ff4:	4048      	eors	r0, r1
 8002ff6:	9903      	ldr	r1, [sp, #12]
 8002ff8:	f859 1021 	ldr.w	r1, [r9, r1, lsl #2]
 8002ffc:	4048      	eors	r0, r1
 8002ffe:	9905      	ldr	r1, [sp, #20]
 8003000:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
 8003004:	4048      	eors	r0, r1
 8003006:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8003008:	4048      	eors	r0, r1
 800300a:	f853 1025 	ldr.w	r1, [r3, r5, lsl #2]
 800300e:	461d      	mov	r5, r3
 8003010:	ea80 0301 	eor.w	r3, r0, r1
 8003014:	930b      	str	r3, [sp, #44]	; 0x2c
 8003016:	f3c3 2007 	ubfx	r0, r3, #8, #8
 800301a:	9a08      	ldr	r2, [sp, #32]
 800301c:	fa5f fa83 	uxtb.w	sl, r3
 8003020:	f859 1020 	ldr.w	r1, [r9, r0, lsl #2]
 8003024:	0e18      	lsrs	r0, r3, #24
 8003026:	9006      	str	r0, [sp, #24]
 8003028:	f85c 0020 	ldr.w	r0, [ip, r0, lsl #2]
 800302c:	f3c3 4e07 	ubfx	lr, r3, #16, #8
 8003030:	4050      	eors	r0, r2
 8003032:	f855 202e 	ldr.w	r2, [r5, lr, lsl #2]
 8003036:	4048      	eors	r0, r1
 8003038:	4050      	eors	r0, r2
 800303a:	f85b 202a 	ldr.w	r2, [fp, sl, lsl #2]
 800303e:	4050      	eors	r0, r2
 8003040:	ea80 0406 	eor.w	r4, r0, r6
 8003044:	940c      	str	r4, [sp, #48]	; 0x30
 8003046:	f3c4 2007 	ubfx	r0, r4, #8, #8
 800304a:	f859 2020 	ldr.w	r2, [r9, r0, lsl #2]
 800304e:	b2e0      	uxtb	r0, r4
 8003050:	f85c 3020 	ldr.w	r3, [ip, r0, lsl #2]
 8003054:	9008      	str	r0, [sp, #32]
 8003056:	980a      	ldr	r0, [sp, #40]	; 0x28
 8003058:	9204      	str	r2, [sp, #16]
 800305a:	4058      	eors	r0, r3
 800305c:	9305      	str	r3, [sp, #20]
 800305e:	4050      	eors	r0, r2
 8003060:	f3c4 4207 	ubfx	r2, r4, #16, #8
 8003064:	920a      	str	r2, [sp, #40]	; 0x28
 8003066:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 800306a:	4050      	eors	r0, r2
 800306c:	0e22      	lsrs	r2, r4, #24
 800306e:	9207      	str	r2, [sp, #28]
 8003070:	f85b 2022 	ldr.w	r2, [fp, r2, lsl #2]
 8003074:	4050      	eors	r0, r2
 8003076:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003078:	f85c 2022 	ldr.w	r2, [ip, r2, lsl #2]
 800307c:	4042      	eors	r2, r0
 800307e:	f3c2 2007 	ubfx	r0, r2, #8, #8
 8003082:	9009      	str	r0, [sp, #36]	; 0x24
 8003084:	f3c2 4307 	ubfx	r3, r2, #16, #8
 8003088:	f85c 0020 	ldr.w	r0, [ip, r0, lsl #2]
 800308c:	f859 4023 	ldr.w	r4, [r9, r3, lsl #2]
 8003090:	930d      	str	r3, [sp, #52]	; 0x34
 8003092:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003094:	ea80 0008 	eor.w	r0, r0, r8
 8003098:	4060      	eors	r0, r4
 800309a:	b2d4      	uxtb	r4, r2
 800309c:	940f      	str	r4, [sp, #60]	; 0x3c
 800309e:	f855 4024 	ldr.w	r4, [r5, r4, lsl #2]
 80030a2:	4044      	eors	r4, r0
 80030a4:	0e10      	lsrs	r0, r2, #24
 80030a6:	f85b 6020 	ldr.w	r6, [fp, r0, lsl #2]
 80030aa:	4066      	eors	r6, r4
 80030ac:	f859 4023 	ldr.w	r4, [r9, r3, lsl #2]
 80030b0:	ea86 0804 	eor.w	r8, r6, r4
 80030b4:	ea4f 6618 	mov.w	r6, r8, lsr #24
 80030b8:	f855 3026 	ldr.w	r3, [r5, r6, lsl #2]
 80030bc:	f85c 602a 	ldr.w	r6, [ip, sl, lsl #2]
 80030c0:	4071      	eors	r1, r6
 80030c2:	930e      	str	r3, [sp, #56]	; 0x38
 80030c4:	ea81 0603 	eor.w	r6, r1, r3
 80030c8:	f3c8 4307 	ubfx	r3, r8, #16, #8
 80030cc:	f8dd 9044 	ldr.w	r9, [sp, #68]	; 0x44
 80030d0:	f85b 4023 	ldr.w	r4, [fp, r3, lsl #2]
 80030d4:	4074      	eors	r4, r6
 80030d6:	f85c 6020 	ldr.w	r6, [ip, r0, lsl #2]
 80030da:	4074      	eors	r4, r6
 80030dc:	f004 041f 	and.w	r4, r4, #31
 80030e0:	f889 4008 	strb.w	r4, [r9, #8]
 80030e4:	f85c 402e 	ldr.w	r4, [ip, lr, lsl #2]
 80030e8:	f649 1ea8 	movw	lr, #39336	; 0x99a8
 80030ec:	9906      	ldr	r1, [sp, #24]
 80030ee:	f6c0 0e00 	movt	lr, #2048	; 0x800
 80030f2:	f3c8 2507 	ubfx	r5, r8, #8, #8
 80030f6:	9506      	str	r5, [sp, #24]
 80030f8:	f85e 6021 	ldr.w	r6, [lr, r1, lsl #2]
 80030fc:	f649 51a8 	movw	r1, #40360	; 0x9da8
 8003100:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003104:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8003108:	4074      	eors	r4, r6
 800310a:	f851 6025 	ldr.w	r6, [r1, r5, lsl #2]
 800310e:	4074      	eors	r4, r6
 8003110:	fa5f f688 	uxtb.w	r6, r8
 8003114:	f85b 5026 	ldr.w	r5, [fp, r6, lsl #2]
 8003118:	406c      	eors	r4, r5
 800311a:	f85e 5023 	ldr.w	r5, [lr, r3, lsl #2]
 800311e:	406c      	eors	r4, r5
 8003120:	f004 041f 	and.w	r4, r4, #31
 8003124:	f889 4009 	strb.w	r4, [r9, #9]
 8003128:	e9dd 5404 	ldrd	r5, r4, [sp, #16]
 800312c:	406c      	eors	r4, r5
 800312e:	9d0d      	ldr	r5, [sp, #52]	; 0x34
 8003130:	4044      	eors	r4, r0
 8003132:	f85b 5025 	ldr.w	r5, [fp, r5, lsl #2]
 8003136:	406c      	eors	r4, r5
 8003138:	f851 502a 	ldr.w	r5, [r1, sl, lsl #2]
 800313c:	46f2      	mov	sl, lr
 800313e:	406c      	eors	r4, r5
 8003140:	f004 041f 	and.w	r4, r4, #31
 8003144:	f889 400a 	strb.w	r4, [r9, #10]
 8003148:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 800314a:	9d07      	ldr	r5, [sp, #28]
 800314c:	f8dd e024 	ldr.w	lr, [sp, #36]	; 0x24
 8003150:	f85c 4024 	ldr.w	r4, [ip, r4, lsl #2]
 8003154:	f85a 5025 	ldr.w	r5, [sl, r5, lsl #2]
 8003158:	406c      	eors	r4, r5
 800315a:	f851 502e 	ldr.w	r5, [r1, lr, lsl #2]
 800315e:	9908      	ldr	r1, [sp, #32]
 8003160:	406c      	eors	r4, r5
 8003162:	9d0f      	ldr	r5, [sp, #60]	; 0x3c
 8003164:	f85b 5025 	ldr.w	r5, [fp, r5, lsl #2]
 8003168:	406c      	eors	r4, r5
 800316a:	f85b 5021 	ldr.w	r5, [fp, r1, lsl #2]
 800316e:	f85c 1023 	ldr.w	r1, [ip, r3, lsl #2]
 8003172:	406c      	eors	r4, r5
 8003174:	4655      	mov	r5, sl
 8003176:	f004 041f 	and.w	r4, r4, #31
 800317a:	f889 400b 	strb.w	r4, [r9, #11]
 800317e:	f85a 4026 	ldr.w	r4, [sl, r6, lsl #2]
 8003182:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003184:	4059      	eors	r1, r3
 8003186:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003188:	4061      	eors	r1, r4
 800318a:	4059      	eors	r1, r3
 800318c:	9b06      	ldr	r3, [sp, #24]
 800318e:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 8003192:	4059      	eors	r1, r3
 8003194:	f649 53a8 	movw	r3, #40360	; 0x9da8
 8003198:	ea81 0400 	eor.w	r4, r1, r0
 800319c:	f6c0 0300 	movt	r3, #2048	; 0x800
 80031a0:	0e20      	lsrs	r0, r4, #24
 80031a2:	9402      	str	r4, [sp, #8]
 80031a4:	9008      	str	r0, [sp, #32]
 80031a6:	f3c4 2107 	ubfx	r1, r4, #8, #8
 80031aa:	f85c 0020 	ldr.w	r0, [ip, r0, lsl #2]
 80031ae:	f85a 9021 	ldr.w	r9, [sl, r1, lsl #2]
 80031b2:	910a      	str	r1, [sp, #40]	; 0x28
 80031b4:	f3c4 4107 	ubfx	r1, r4, #16, #8
 80031b8:	fa5f fa84 	uxtb.w	sl, r4
 80031bc:	9104      	str	r1, [sp, #16]
 80031be:	f853 1021 	ldr.w	r1, [r3, r1, lsl #2]
 80031c2:	4050      	eors	r0, r2
 80031c4:	ea80 0009 	eor.w	r0, r0, r9
 80031c8:	4048      	eors	r0, r1
 80031ca:	f85b 102a 	ldr.w	r1, [fp, sl, lsl #2]
 80031ce:	4048      	eors	r0, r1
 80031d0:	f85b 102e 	ldr.w	r1, [fp, lr, lsl #2]
 80031d4:	46ae      	mov	lr, r5
 80031d6:	4041      	eors	r1, r0
 80031d8:	b2c8      	uxtb	r0, r1
 80031da:	910e      	str	r1, [sp, #56]	; 0x38
 80031dc:	900b      	str	r0, [sp, #44]	; 0x2c
 80031de:	f85c 0020 	ldr.w	r0, [ip, r0, lsl #2]
 80031e2:	9005      	str	r0, [sp, #20]
 80031e4:	f3c1 2207 	ubfx	r2, r1, #8, #8
 80031e8:	ea80 0008 	eor.w	r0, r0, r8
 80031ec:	f85c 802a 	ldr.w	r8, [ip, sl, lsl #2]
 80031f0:	9209      	str	r2, [sp, #36]	; 0x24
 80031f2:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 80031f6:	9203      	str	r2, [sp, #12]
 80031f8:	4050      	eors	r0, r2
 80031fa:	f3c1 4207 	ubfx	r2, r1, #16, #8
 80031fe:	0e09      	lsrs	r1, r1, #24
 8003200:	9207      	str	r2, [sp, #28]
 8003202:	f853 2022 	ldr.w	r2, [r3, r2, lsl #2]
 8003206:	9106      	str	r1, [sp, #24]
 8003208:	4050      	eors	r0, r2
 800320a:	f85b 2021 	ldr.w	r2, [fp, r1, lsl #2]
 800320e:	990d      	ldr	r1, [sp, #52]	; 0x34
 8003210:	4050      	eors	r0, r2
 8003212:	f85c 2021 	ldr.w	r2, [ip, r1, lsl #2]
 8003216:	4042      	eors	r2, r0
 8003218:	f3c2 2007 	ubfx	r0, r2, #8, #8
 800321c:	990c      	ldr	r1, [sp, #48]	; 0x30
 800321e:	900d      	str	r0, [sp, #52]	; 0x34
 8003220:	f85c 0020 	ldr.w	r0, [ip, r0, lsl #2]
 8003224:	f3c2 4607 	ubfx	r6, r2, #16, #8
 8003228:	f855 4026 	ldr.w	r4, [r5, r6, lsl #2]
 800322c:	0e15      	lsrs	r5, r2, #24
 800322e:	4048      	eors	r0, r1
 8003230:	b2d1      	uxtb	r1, r2
 8003232:	4060      	eors	r0, r4
 8003234:	f853 4021 	ldr.w	r4, [r3, r1, lsl #2]
 8003238:	910c      	str	r1, [sp, #48]	; 0x30
 800323a:	f85b 3025 	ldr.w	r3, [fp, r5, lsl #2]
 800323e:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003240:	4044      	eors	r4, r0
 8003242:	f649 50a8 	movw	r0, #40360	; 0x9da8
 8003246:	4063      	eors	r3, r4
 8003248:	f85e 4021 	ldr.w	r4, [lr, r1, lsl #2]
 800324c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8003250:	405c      	eors	r4, r3
 8003252:	f3c4 4307 	ubfx	r3, r4, #16, #8
 8003256:	f8cd a004 	str.w	sl, [sp, #4]
 800325a:	f85b e023 	ldr.w	lr, [fp, r3, lsl #2]
 800325e:	ea88 0309 	eor.w	r3, r8, r9
 8003262:	ea4f 6814 	mov.w	r8, r4, lsr #24
 8003266:	f8dd 9044 	ldr.w	r9, [sp, #68]	; 0x44
 800326a:	f850 1028 	ldr.w	r1, [r0, r8, lsl #2]
 800326e:	4059      	eors	r1, r3
 8003270:	f85c 3026 	ldr.w	r3, [ip, r6, lsl #2]
 8003274:	ea81 010e 	eor.w	r1, r1, lr
 8003278:	4059      	eors	r1, r3
 800327a:	f001 011f 	and.w	r1, r1, #31
 800327e:	f889 100c 	strb.w	r1, [r9, #12]
 8003282:	b2e1      	uxtb	r1, r4
 8003284:	9400      	str	r4, [sp, #0]
 8003286:	f3c4 2307 	ubfx	r3, r4, #8, #8
 800328a:	f8dd e020 	ldr.w	lr, [sp, #32]
 800328e:	f85b a021 	ldr.w	sl, [fp, r1, lsl #2]
 8003292:	9904      	ldr	r1, [sp, #16]
 8003294:	f850 4023 	ldr.w	r4, [r0, r3, lsl #2]
 8003298:	f649 10a8 	movw	r0, #39336	; 0x99a8
 800329c:	f6c0 0000 	movt	r0, #2048	; 0x800
 80032a0:	f850 302e 	ldr.w	r3, [r0, lr, lsl #2]
 80032a4:	f85c 1021 	ldr.w	r1, [ip, r1, lsl #2]
 80032a8:	404b      	eors	r3, r1
 80032aa:	910f      	str	r1, [sp, #60]	; 0x3c
 80032ac:	4063      	eors	r3, r4
 80032ae:	ea83 010a 	eor.w	r1, r3, sl
 80032b2:	f850 3028 	ldr.w	r3, [r0, r8, lsl #2]
 80032b6:	4682      	mov	sl, r0
 80032b8:	46c8      	mov	r8, r9
 80032ba:	4059      	eors	r1, r3
 80032bc:	f649 53a8 	movw	r3, #40360	; 0x9da8
 80032c0:	f001 011f 	and.w	r1, r1, #31
 80032c4:	f6c0 0300 	movt	r3, #2048	; 0x800
 80032c8:	f889 100d 	strb.w	r1, [r9, #13]
 80032cc:	f853 0025 	ldr.w	r0, [r3, r5, lsl #2]
 80032d0:	461d      	mov	r5, r3
 80032d2:	9905      	ldr	r1, [sp, #20]
 80032d4:	9c03      	ldr	r4, [sp, #12]
 80032d6:	4061      	eors	r1, r4
 80032d8:	9c0a      	ldr	r4, [sp, #40]	; 0x28
 80032da:	4048      	eors	r0, r1
 80032dc:	f85b 1026 	ldr.w	r1, [fp, r6, lsl #2]
 80032e0:	4048      	eors	r0, r1
 80032e2:	f853 1024 	ldr.w	r1, [r3, r4, lsl #2]
 80032e6:	4048      	eors	r0, r1
 80032e8:	f000 001f 	and.w	r0, r0, #31
 80032ec:	f889 000e 	strb.w	r0, [r9, #14]
 80032f0:	980d      	ldr	r0, [sp, #52]	; 0x34
 80032f2:	9907      	ldr	r1, [sp, #28]
 80032f4:	9e06      	ldr	r6, [sp, #24]
 80032f6:	f853 0020 	ldr.w	r0, [r3, r0, lsl #2]
 80032fa:	f85c 1021 	ldr.w	r1, [ip, r1, lsl #2]
 80032fe:	f85a 3026 	ldr.w	r3, [sl, r6, lsl #2]
 8003302:	404b      	eors	r3, r1
 8003304:	4058      	eors	r0, r3
 8003306:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8003308:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 800330c:	4058      	eors	r0, r3
 800330e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003310:	f85b 3023 	ldr.w	r3, [fp, r3, lsl #2]
 8003314:	4058      	eors	r0, r3
 8003316:	f000 001f 	and.w	r0, r0, #31
 800331a:	f889 000f 	strb.w	r0, [r9, #15]
 800331e:	ea81 0002 	eor.w	r0, r1, r2
 8003322:	46d1      	mov	r9, sl
 8003324:	990b      	ldr	r1, [sp, #44]	; 0x2c
 8003326:	9a02      	ldr	r2, [sp, #8]
 8003328:	f859 1021 	ldr.w	r1, [r9, r1, lsl #2]
 800332c:	4048      	eors	r0, r1
 800332e:	f855 1026 	ldr.w	r1, [r5, r6, lsl #2]
 8003332:	4048      	eors	r0, r1
 8003334:	f855 102e 	ldr.w	r1, [r5, lr, lsl #2]
 8003338:	4058      	eors	r0, r3
 800333a:	464b      	mov	r3, r9
 800333c:	4048      	eors	r0, r1
 800333e:	0e01      	lsrs	r1, r0, #24
 8003340:	910d      	str	r1, [sp, #52]	; 0x34
 8003342:	f85c 1021 	ldr.w	r1, [ip, r1, lsl #2]
 8003346:	4051      	eors	r1, r2
 8003348:	f3c0 2207 	ubfx	r2, r0, #8, #8
 800334c:	920b      	str	r2, [sp, #44]	; 0x2c
 800334e:	f859 2022 	ldr.w	r2, [r9, r2, lsl #2]
 8003352:	4051      	eors	r1, r2
 8003354:	f3c0 4207 	ubfx	r2, r0, #16, #8
 8003358:	b2c0      	uxtb	r0, r0
 800335a:	f855 2022 	ldr.w	r2, [r5, r2, lsl #2]
 800335e:	9009      	str	r0, [sp, #36]	; 0x24
 8003360:	f85b 0020 	ldr.w	r0, [fp, r0, lsl #2]
 8003364:	4051      	eors	r1, r2
 8003366:	920c      	str	r2, [sp, #48]	; 0x30
 8003368:	9a0e      	ldr	r2, [sp, #56]	; 0x38
 800336a:	4048      	eors	r0, r1
 800336c:	f85b 1024 	ldr.w	r1, [fp, r4, lsl #2]
 8003370:	4644      	mov	r4, r8
 8003372:	46e0      	mov	r8, ip
 8003374:	4048      	eors	r0, r1
 8003376:	fa5f fa80 	uxtb.w	sl, r0
 800337a:	f3c0 2907 	ubfx	r9, r0, #8, #8
 800337e:	f85c 102a 	ldr.w	r1, [ip, sl, lsl #2]
 8003382:	4051      	eors	r1, r2
 8003384:	f853 2029 	ldr.w	r2, [r3, r9, lsl #2]
 8003388:	4051      	eors	r1, r2
 800338a:	f3c0 4207 	ubfx	r2, r0, #16, #8
 800338e:	0e00      	lsrs	r0, r0, #24
 8003390:	f855 6022 	ldr.w	r6, [r5, r2, lsl #2]
 8003394:	f85b 0020 	ldr.w	r0, [fp, r0, lsl #2]
 8003398:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800339a:	4071      	eors	r1, r6
 800339c:	4041      	eors	r1, r0
 800339e:	ea81 0302 	eor.w	r3, r1, r2
 80033a2:	f3c3 4207 	ubfx	r2, r3, #16, #8
 80033a6:	f3c3 2107 	ubfx	r1, r3, #8, #8
 80033aa:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80033ac:	2d0b      	cmp	r5, #11
 80033ae:	db77      	blt.n	80034a0 <cast128_set_key+0xe1a>
 80033b0:	900f      	str	r0, [sp, #60]	; 0x3c
 80033b2:	f858 0021 	ldr.w	r0, [r8, r1, lsl #2]
 80033b6:	9900      	ldr	r1, [sp, #0]
 80033b8:	f649 14a8 	movw	r4, #39336	; 0x99a8
 80033bc:	ea4f 6e13 	mov.w	lr, r3, lsr #24
 80033c0:	f6c0 0400 	movt	r4, #2048	; 0x800
 80033c4:	f854 2022 	ldr.w	r2, [r4, r2, lsl #2]
 80033c8:	4625      	mov	r5, r4
 80033ca:	ea80 0401 	eor.w	r4, r0, r1
 80033ce:	f649 51a8 	movw	r1, #40360	; 0x9da8
 80033d2:	900e      	str	r0, [sp, #56]	; 0x38
 80033d4:	b2d8      	uxtb	r0, r3
 80033d6:	9b01      	ldr	r3, [sp, #4]
 80033d8:	f6c0 0100 	movt	r1, #2048	; 0x800
 80033dc:	900a      	str	r0, [sp, #40]	; 0x28
 80033de:	468c      	mov	ip, r1
 80033e0:	4054      	eors	r4, r2
 80033e2:	f85c 1020 	ldr.w	r1, [ip, r0, lsl #2]
 80033e6:	4630      	mov	r0, r6
 80033e8:	462e      	mov	r6, r5
 80033ea:	4061      	eors	r1, r4
 80033ec:	f85b 402e 	ldr.w	r4, [fp, lr, lsl #2]
 80033f0:	4061      	eors	r1, r4
 80033f2:	f855 4023 	ldr.w	r4, [r5, r3, lsl #2]
 80033f6:	4645      	mov	r5, r8
 80033f8:	f855 802e 	ldr.w	r8, [r5, lr, lsl #2]
 80033fc:	ea81 0304 	eor.w	r3, r1, r4
 8003400:	f85c 102a 	ldr.w	r1, [ip, sl, lsl #2]
 8003404:	46ac      	mov	ip, r5
 8003406:	e9dd 5410 	ldrd	r5, r4, [sp, #64]	; 0x40
 800340a:	ea82 0208 	eor.w	r2, r2, r8
 800340e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8003412:	4051      	eors	r1, r2
 8003414:	f85b 2029 	ldr.w	r2, [fp, r9, lsl #2]
 8003418:	4051      	eors	r1, r2
 800341a:	f85c 2028 	ldr.w	r2, [ip, r8, lsl #2]
 800341e:	4051      	eors	r1, r2
 8003420:	f001 011f 	and.w	r1, r1, #31
 8003424:	7421      	strb	r1, [r4, #16]
 8003426:	4631      	mov	r1, r6
 8003428:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800342a:	f851 602a 	ldr.w	r6, [r1, sl, lsl #2]
 800342e:	4689      	mov	r9, r1
 8003430:	f851 2022 	ldr.w	r2, [r1, r2, lsl #2]
 8003434:	990e      	ldr	r1, [sp, #56]	; 0x38
 8003436:	404a      	eors	r2, r1
 8003438:	4042      	eors	r2, r0
 800343a:	980f      	ldr	r0, [sp, #60]	; 0x3c
 800343c:	4050      	eors	r0, r2
 800343e:	4070      	eors	r0, r6
 8003440:	f649 56a8 	movw	r6, #40360	; 0x9da8
 8003444:	f000 001f 	and.w	r0, r0, #31
 8003448:	f6c0 0600 	movt	r6, #2048	; 0x800
 800344c:	7460      	strb	r0, [r4, #17]
 800344e:	0e18      	lsrs	r0, r3, #24
 8003450:	f3c3 4107 	ubfx	r1, r3, #16, #8
 8003454:	f859 2021 	ldr.w	r2, [r9, r1, lsl #2]
 8003458:	f85c 0020 	ldr.w	r0, [ip, r0, lsl #2]
 800345c:	f85b 1021 	ldr.w	r1, [fp, r1, lsl #2]
 8003460:	4050      	eors	r0, r2
 8003462:	f856 2028 	ldr.w	r2, [r6, r8, lsl #2]
 8003466:	4050      	eors	r0, r2
 8003468:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800346a:	f85b 2022 	ldr.w	r2, [fp, r2, lsl #2]
 800346e:	4050      	eors	r0, r2
 8003470:	f856 202e 	ldr.w	r2, [r6, lr, lsl #2]
 8003474:	4050      	eors	r0, r2
 8003476:	b2da      	uxtb	r2, r3
 8003478:	f000 001f 	and.w	r0, r0, #31
 800347c:	f859 2022 	ldr.w	r2, [r9, r2, lsl #2]
 8003480:	74a0      	strb	r0, [r4, #18]
 8003482:	f3c3 2007 	ubfx	r0, r3, #8, #8
 8003486:	f85c 0020 	ldr.w	r0, [ip, r0, lsl #2]
 800348a:	4050      	eors	r0, r2
 800348c:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800348e:	4050      	eors	r0, r2
 8003490:	9a0d      	ldr	r2, [sp, #52]	; 0x34
 8003492:	f85b 2022 	ldr.w	r2, [fp, r2, lsl #2]
 8003496:	4050      	eors	r0, r2
 8003498:	4048      	eors	r0, r1
 800349a:	f000 001f 	and.w	r0, r0, #31
 800349e:	74e0      	strb	r0, [r4, #19]
 80034a0:	200c      	movs	r0, #12
 80034a2:	2d0a      	cmp	r5, #10
 80034a4:	bfc8      	it	gt
 80034a6:	2010      	movgt	r0, #16
 80034a8:	6020      	str	r0, [r4, #0]
 80034aa:	b012      	add	sp, #72	; 0x48
 80034ac:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80034b0:	bdf0      	pop	{r4, r5, r6, r7, pc}

080034b2 <initialise_benchmark>:
 80034b2:	b580      	push	{r7, lr}
 80034b4:	466f      	mov	r7, sp
 80034b6:	f640 20f8 	movw	r0, #2808	; 0xaf8
 80034ba:	f24a 52a8 	movw	r2, #42408	; 0xa5a8
 80034be:	2110      	movs	r1, #16
 80034c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80034c4:	f6c0 0200 	movt	r2, #2048	; 0x800
 80034c8:	f7ff f8dd 	bl	8002686 <cast128_set_key>
 80034cc:	2000      	movs	r0, #0
 80034ce:	bd80      	pop	{r7, pc}

080034d0 <benchmark>:
 80034d0:	b5b0      	push	{r4, r5, r7, lr}
 80034d2:	af02      	add	r7, sp, #8
 80034d4:	f640 24f8 	movw	r4, #2808	; 0xaf8
 80034d8:	f640 15e4 	movw	r5, #2532	; 0x9e4
 80034dc:	f24a 53b8 	movw	r3, #42424	; 0xa5b8
 80034e0:	2110      	movs	r1, #16
 80034e2:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80034e6:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80034ea:	f6c0 0300 	movt	r3, #2048	; 0x800
 80034ee:	4620      	mov	r0, r4
 80034f0:	462a      	mov	r2, r5
 80034f2:	f7fe fce0 	bl	8001eb6 <cast128_encrypt>
 80034f6:	4620      	mov	r0, r4
 80034f8:	2110      	movs	r1, #16
 80034fa:	462a      	mov	r2, r5
 80034fc:	462b      	mov	r3, r5
 80034fe:	f7fe fede 	bl	80022be <cast128_decrypt>
 8003502:	2000      	movs	r0, #0
 8003504:	bdb0      	pop	{r4, r5, r7, pc}

08003506 <verify_benchmark>:
 8003506:	b580      	push	{r7, lr}
 8003508:	466f      	mov	r7, sp
 800350a:	f640 10e4 	movw	r0, #2532	; 0x9e4
 800350e:	f04f 0c00 	mov.w	ip, #0
 8003512:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003516:	7881      	ldrb	r1, [r0, #2]
 8003518:	7802      	ldrb	r2, [r0, #0]
 800351a:	7843      	ldrb	r3, [r0, #1]
 800351c:	f890 e003 	ldrb.w	lr, [r0, #3]
 8003520:	2902      	cmp	r1, #2
 8003522:	f04f 0100 	mov.w	r1, #0
 8003526:	bf08      	it	eq
 8003528:	2101      	moveq	r1, #1
 800352a:	2a00      	cmp	r2, #0
 800352c:	f04f 0200 	mov.w	r2, #0
 8003530:	bf08      	it	eq
 8003532:	2201      	moveq	r2, #1
 8003534:	2b01      	cmp	r3, #1
 8003536:	bf18      	it	ne
 8003538:	2300      	movne	r3, #0
 800353a:	f1be 0f03 	cmp.w	lr, #3
 800353e:	ea02 0203 	and.w	r2, r2, r3
 8003542:	ea01 0102 	and.w	r1, r1, r2
 8003546:	f04f 0200 	mov.w	r2, #0
 800354a:	bf08      	it	eq
 800354c:	2201      	moveq	r2, #1
 800354e:	4011      	ands	r1, r2
 8003550:	7902      	ldrb	r2, [r0, #4]
 8003552:	2a04      	cmp	r2, #4
 8003554:	f04f 0200 	mov.w	r2, #0
 8003558:	bf08      	it	eq
 800355a:	2201      	moveq	r2, #1
 800355c:	4011      	ands	r1, r2
 800355e:	7942      	ldrb	r2, [r0, #5]
 8003560:	2a05      	cmp	r2, #5
 8003562:	f04f 0200 	mov.w	r2, #0
 8003566:	bf08      	it	eq
 8003568:	2201      	moveq	r2, #1
 800356a:	4011      	ands	r1, r2
 800356c:	7982      	ldrb	r2, [r0, #6]
 800356e:	2a06      	cmp	r2, #6
 8003570:	f04f 0200 	mov.w	r2, #0
 8003574:	bf08      	it	eq
 8003576:	2201      	moveq	r2, #1
 8003578:	4011      	ands	r1, r2
 800357a:	79c2      	ldrb	r2, [r0, #7]
 800357c:	2a07      	cmp	r2, #7
 800357e:	f04f 0200 	mov.w	r2, #0
 8003582:	bf08      	it	eq
 8003584:	2201      	moveq	r2, #1
 8003586:	4011      	ands	r1, r2
 8003588:	7a02      	ldrb	r2, [r0, #8]
 800358a:	2a08      	cmp	r2, #8
 800358c:	f04f 0200 	mov.w	r2, #0
 8003590:	bf08      	it	eq
 8003592:	2201      	moveq	r2, #1
 8003594:	4011      	ands	r1, r2
 8003596:	7a42      	ldrb	r2, [r0, #9]
 8003598:	2a09      	cmp	r2, #9
 800359a:	f04f 0200 	mov.w	r2, #0
 800359e:	bf08      	it	eq
 80035a0:	2201      	moveq	r2, #1
 80035a2:	4011      	ands	r1, r2
 80035a4:	7a82      	ldrb	r2, [r0, #10]
 80035a6:	2a0a      	cmp	r2, #10
 80035a8:	f04f 0200 	mov.w	r2, #0
 80035ac:	bf08      	it	eq
 80035ae:	2201      	moveq	r2, #1
 80035b0:	4011      	ands	r1, r2
 80035b2:	7ac2      	ldrb	r2, [r0, #11]
 80035b4:	2a0b      	cmp	r2, #11
 80035b6:	f04f 0200 	mov.w	r2, #0
 80035ba:	bf08      	it	eq
 80035bc:	2201      	moveq	r2, #1
 80035be:	4011      	ands	r1, r2
 80035c0:	7b02      	ldrb	r2, [r0, #12]
 80035c2:	2a0c      	cmp	r2, #12
 80035c4:	f04f 0200 	mov.w	r2, #0
 80035c8:	bf08      	it	eq
 80035ca:	2201      	moveq	r2, #1
 80035cc:	4011      	ands	r1, r2
 80035ce:	7b42      	ldrb	r2, [r0, #13]
 80035d0:	2a0d      	cmp	r2, #13
 80035d2:	f04f 0200 	mov.w	r2, #0
 80035d6:	bf08      	it	eq
 80035d8:	2201      	moveq	r2, #1
 80035da:	4011      	ands	r1, r2
 80035dc:	7b82      	ldrb	r2, [r0, #14]
 80035de:	2a0e      	cmp	r2, #14
 80035e0:	f04f 0200 	mov.w	r2, #0
 80035e4:	bf08      	it	eq
 80035e6:	2201      	moveq	r2, #1
 80035e8:	7bc0      	ldrb	r0, [r0, #15]
 80035ea:	4011      	ands	r1, r2
 80035ec:	280f      	cmp	r0, #15
 80035ee:	bf08      	it	eq
 80035f0:	f04f 0c01 	moveq.w	ip, #1
 80035f4:	ea01 000c 	and.w	r0, r1, ip
 80035f8:	bd80      	pop	{r7, pc}

080035fa <__io_putchar>:
 80035fa:	b580      	push	{r7, lr}
 80035fc:	466f      	mov	r7, sp
 80035fe:	b082      	sub	sp, #8
 8003600:	9001      	str	r0, [sp, #4]
 8003602:	f640 10f4 	movw	r0, #2548	; 0x9f4
 8003606:	a901      	add	r1, sp, #4
 8003608:	2201      	movs	r2, #1
 800360a:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800360e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003612:	f7fe fb62 	bl	8001cda <HAL_UART_Transmit>
 8003616:	9801      	ldr	r0, [sp, #4]
 8003618:	b002      	add	sp, #8
 800361a:	bd80      	pop	{r7, pc}

0800361c <main>:
 800361c:	b5b0      	push	{r4, r5, r7, lr}
 800361e:	af02      	add	r7, sp, #8
 8003620:	f640 11f4 	movw	r1, #2548	; 0x9f4
 8003624:	f643 0000 	movw	r0, #14336	; 0x3800
 8003628:	220c      	movs	r2, #12
 800362a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800362e:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8003632:	6008      	str	r0, [r1, #0]
 8003634:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8003638:	6048      	str	r0, [r1, #4]
 800363a:	2000      	movs	r0, #0
 800363c:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8003640:	6108      	str	r0, [r1, #16]
 8003642:	6248      	str	r0, [r1, #36]	; 0x24
 8003644:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8003648:	e9c1 2005 	strd	r2, r0, [r1, #20]
 800364c:	2000      	movs	r0, #0
 800364e:	f7fe fbd9 	bl	8001e04 <BSP_COM_Init>
 8003652:	f7ff ff2e 	bl	80034b2 <initialise_benchmark>
 8003656:	f24a 6030 	movw	r0, #42544	; 0xa630
 800365a:	f6c0 0000 	movt	r0, #2048	; 0x800
 800365e:	f000 f949 	bl	80038f4 <printf>
 8003662:	f24a 60e1 	movw	r0, #42721	; 0xa6e1
 8003666:	f6c0 0000 	movt	r0, #2048	; 0x800
 800366a:	f000 f9a5 	bl	80039b8 <puts>
 800366e:	f7fd fd3b 	bl	80010e8 <HAL_Init>
 8003672:	f7fd fd51 	bl	8001118 <HAL_GetTick>
 8003676:	4604      	mov	r4, r0
 8003678:	f7ff ff2a 	bl	80034d0 <benchmark>
 800367c:	4605      	mov	r5, r0
 800367e:	f7fd fd4b 	bl	8001118 <HAL_GetTick>
 8003682:	1b04      	subs	r4, r0, r4
 8003684:	4628      	mov	r0, r5
 8003686:	f7ff ff3e 	bl	8003506 <verify_benchmark>
 800368a:	1c41      	adds	r1, r0, #1
 800368c:	d006      	beq.n	800369c <main+0x80>
 800368e:	2801      	cmp	r0, #1
 8003690:	d109      	bne.n	80036a6 <main+0x8a>
 8003692:	f24a 604d 	movw	r0, #42573	; 0xa64d
 8003696:	f6c0 0000 	movt	r0, #2048	; 0x800
 800369a:	e008      	b.n	80036ae <main+0x92>
 800369c:	f24a 6071 	movw	r0, #42609	; 0xa671
 80036a0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80036a4:	e003      	b.n	80036ae <main+0x92>
 80036a6:	f24a 60a6 	movw	r0, #42662	; 0xa6a6
 80036aa:	f6c0 0000 	movt	r0, #2048	; 0x800
 80036ae:	4621      	mov	r1, r4
 80036b0:	f000 f920 	bl	80038f4 <printf>
 80036b4:	2000      	movs	r0, #0
 80036b6:	bdb0      	pop	{r4, r5, r7, pc}

080036b8 <SysTick_Handler>:
 80036b8:	b580      	push	{r7, lr}
 80036ba:	466f      	mov	r7, sp
 80036bc:	f7fd fd24 	bl	8001108 <HAL_IncTick>
 80036c0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80036c4:	f7fd bd7e 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

080036c8 <_read>:
 80036c8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80036ca:	af03      	add	r7, sp, #12
 80036cc:	f84d bd04 	str.w	fp, [sp, #-4]!
 80036d0:	4614      	mov	r4, r2
 80036d2:	460d      	mov	r5, r1
 80036d4:	2c01      	cmp	r4, #1
 80036d6:	db06      	blt.n	80036e6 <_read+0x1e>
 80036d8:	4626      	mov	r6, r4
 80036da:	f3af 8000 	nop.w
 80036de:	f805 0b01 	strb.w	r0, [r5], #1
 80036e2:	3e01      	subs	r6, #1
 80036e4:	d1f9      	bne.n	80036da <_read+0x12>
 80036e6:	4620      	mov	r0, r4
 80036e8:	f85d bb04 	ldr.w	fp, [sp], #4
 80036ec:	bdf0      	pop	{r4, r5, r6, r7, pc}

080036ee <_write>:
 80036ee:	b5f0      	push	{r4, r5, r6, r7, lr}
 80036f0:	af03      	add	r7, sp, #12
 80036f2:	f84d bd04 	str.w	fp, [sp, #-4]!
 80036f6:	4614      	mov	r4, r2
 80036f8:	460d      	mov	r5, r1
 80036fa:	2c01      	cmp	r4, #1
 80036fc:	db06      	blt.n	800370c <_write+0x1e>
 80036fe:	4626      	mov	r6, r4
 8003700:	f815 0b01 	ldrb.w	r0, [r5], #1
 8003704:	f7ff ff79 	bl	80035fa <__io_putchar>
 8003708:	3e01      	subs	r6, #1
 800370a:	d1f9      	bne.n	8003700 <_write+0x12>
 800370c:	4620      	mov	r0, r4
 800370e:	f85d bb04 	ldr.w	fp, [sp], #4
 8003712:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003714 <_sbrk>:
 8003714:	f640 2278 	movw	r2, #2680	; 0xa78
 8003718:	4601      	mov	r1, r0
 800371a:	466b      	mov	r3, sp
 800371c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003720:	6810      	ldr	r0, [r2, #0]
 8003722:	2800      	cmp	r0, #0
 8003724:	bf02      	ittt	eq
 8003726:	f640 3078 	movweq	r0, #2936	; 0xb78
 800372a:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800372e:	6010      	streq	r0, [r2, #0]
 8003730:	4401      	add	r1, r0
 8003732:	4299      	cmp	r1, r3
 8003734:	bf9c      	itt	ls
 8003736:	6011      	strls	r1, [r2, #0]
 8003738:	4770      	bxls	lr
 800373a:	b580      	push	{r7, lr}
 800373c:	466f      	mov	r7, sp
 800373e:	f000 f865 	bl	800380c <__errno>
 8003742:	210c      	movs	r1, #12
 8003744:	6001      	str	r1, [r0, #0]
 8003746:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800374a:	bd80      	pop	{r7, pc}

0800374c <_close>:
 800374c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8003750:	4770      	bx	lr

08003752 <_fstat>:
 8003752:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8003756:	6048      	str	r0, [r1, #4]
 8003758:	2000      	movs	r0, #0
 800375a:	4770      	bx	lr

0800375c <_isatty>:
 800375c:	2001      	movs	r0, #1
 800375e:	4770      	bx	lr

08003760 <_lseek>:
 8003760:	2000      	movs	r0, #0
 8003762:	4770      	bx	lr

08003764 <SystemInit>:
 8003764:	f64e 5088 	movw	r0, #60808	; 0xed88
 8003768:	f04f 0c00 	mov.w	ip, #0
 800376c:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8003770:	6801      	ldr	r1, [r0, #0]
 8003772:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8003776:	6001      	str	r1, [r0, #0]
 8003778:	f241 0100 	movw	r1, #4096	; 0x1000
 800377c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8003780:	680a      	ldr	r2, [r1, #0]
 8003782:	f042 0201 	orr.w	r2, r2, #1
 8003786:	600a      	str	r2, [r1, #0]
 8003788:	f8c1 c008 	str.w	ip, [r1, #8]
 800378c:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8003790:	680b      	ldr	r3, [r1, #0]
 8003792:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8003796:	401a      	ands	r2, r3
 8003798:	600a      	str	r2, [r1, #0]
 800379a:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 800379e:	60ca      	str	r2, [r1, #12]
 80037a0:	680a      	ldr	r2, [r1, #0]
 80037a2:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80037a6:	600a      	str	r2, [r1, #0]
 80037a8:	f8c1 c018 	str.w	ip, [r1, #24]
 80037ac:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80037b0:	f840 1c80 	str.w	r1, [r0, #-128]
 80037b4:	4770      	bx	lr
	...

080037b8 <Reset_Handler>:
 80037b8:	f8df d034 	ldr.w	sp, [pc, #52]	; 80037f0 <LoopForever+0x2>
 80037bc:	2100      	movs	r1, #0
 80037be:	e003      	b.n	80037c8 <LoopCopyDataInit>

080037c0 <CopyDataInit>:
 80037c0:	4b0c      	ldr	r3, [pc, #48]	; (80037f4 <LoopForever+0x6>)
 80037c2:	585b      	ldr	r3, [r3, r1]
 80037c4:	5043      	str	r3, [r0, r1]
 80037c6:	3104      	adds	r1, #4

080037c8 <LoopCopyDataInit>:
 80037c8:	480b      	ldr	r0, [pc, #44]	; (80037f8 <LoopForever+0xa>)
 80037ca:	4b0c      	ldr	r3, [pc, #48]	; (80037fc <LoopForever+0xe>)
 80037cc:	1842      	adds	r2, r0, r1
 80037ce:	429a      	cmp	r2, r3
 80037d0:	d3f6      	bcc.n	80037c0 <CopyDataInit>
 80037d2:	4a0b      	ldr	r2, [pc, #44]	; (8003800 <LoopForever+0x12>)
 80037d4:	e002      	b.n	80037dc <LoopFillZerobss>

080037d6 <FillZerobss>:
 80037d6:	2300      	movs	r3, #0
 80037d8:	f842 3b04 	str.w	r3, [r2], #4

080037dc <LoopFillZerobss>:
 80037dc:	4b09      	ldr	r3, [pc, #36]	; (8003804 <LoopForever+0x16>)
 80037de:	429a      	cmp	r2, r3
 80037e0:	d3f9      	bcc.n	80037d6 <FillZerobss>
 80037e2:	f7ff ffbf 	bl	8003764 <SystemInit>
 80037e6:	f000 f817 	bl	8003818 <__libc_init_array>
 80037ea:	f7ff ff17 	bl	800361c <main>

080037ee <LoopForever>:
 80037ee:	e7fe      	b.n	80037ee <LoopForever>
 80037f0:	20018000 	.word	0x20018000
 80037f4:	0800a988 	.word	0x0800a988
 80037f8:	20000000 	.word	0x20000000
 80037fc:	200009c8 	.word	0x200009c8
 8003800:	200009c8 	.word	0x200009c8
 8003804:	20000b74 	.word	0x20000b74

08003808 <ADC1_2_IRQHandler>:
 8003808:	e7fe      	b.n	8003808 <ADC1_2_IRQHandler>
	...

0800380c <__errno>:
 800380c:	4b01      	ldr	r3, [pc, #4]	; (8003814 <__errno+0x8>)
 800380e:	6818      	ldr	r0, [r3, #0]
 8003810:	4770      	bx	lr
 8003812:	bf00      	nop
 8003814:	20000018 	.word	0x20000018

08003818 <__libc_init_array>:
 8003818:	b570      	push	{r4, r5, r6, lr}
 800381a:	4e0d      	ldr	r6, [pc, #52]	; (8003850 <__libc_init_array+0x38>)
 800381c:	4d0d      	ldr	r5, [pc, #52]	; (8003854 <__libc_init_array+0x3c>)
 800381e:	1b76      	subs	r6, r6, r5
 8003820:	10b6      	asrs	r6, r6, #2
 8003822:	d006      	beq.n	8003832 <__libc_init_array+0x1a>
 8003824:	2400      	movs	r4, #0
 8003826:	3401      	adds	r4, #1
 8003828:	f855 3b04 	ldr.w	r3, [r5], #4
 800382c:	4798      	blx	r3
 800382e:	42a6      	cmp	r6, r4
 8003830:	d1f9      	bne.n	8003826 <__libc_init_array+0xe>
 8003832:	4e09      	ldr	r6, [pc, #36]	; (8003858 <__libc_init_array+0x40>)
 8003834:	4d09      	ldr	r5, [pc, #36]	; (800385c <__libc_init_array+0x44>)
 8003836:	1b76      	subs	r6, r6, r5
 8003838:	f004 fea8 	bl	800858c <_init>
 800383c:	10b6      	asrs	r6, r6, #2
 800383e:	d006      	beq.n	800384e <__libc_init_array+0x36>
 8003840:	2400      	movs	r4, #0
 8003842:	3401      	adds	r4, #1
 8003844:	f855 3b04 	ldr.w	r3, [r5], #4
 8003848:	4798      	blx	r3
 800384a:	42a6      	cmp	r6, r4
 800384c:	d1f9      	bne.n	8003842 <__libc_init_array+0x2a>
 800384e:	bd70      	pop	{r4, r5, r6, pc}
 8003850:	0800a978 	.word	0x0800a978
 8003854:	0800a978 	.word	0x0800a978
 8003858:	0800a980 	.word	0x0800a980
 800385c:	0800a978 	.word	0x0800a978

08003860 <memset>:
 8003860:	b4f0      	push	{r4, r5, r6, r7}
 8003862:	0786      	lsls	r6, r0, #30
 8003864:	d043      	beq.n	80038ee <memset+0x8e>
 8003866:	1e54      	subs	r4, r2, #1
 8003868:	2a00      	cmp	r2, #0
 800386a:	d03e      	beq.n	80038ea <memset+0x8a>
 800386c:	b2ca      	uxtb	r2, r1
 800386e:	4603      	mov	r3, r0
 8003870:	e002      	b.n	8003878 <memset+0x18>
 8003872:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8003876:	d338      	bcc.n	80038ea <memset+0x8a>
 8003878:	f803 2b01 	strb.w	r2, [r3], #1
 800387c:	079d      	lsls	r5, r3, #30
 800387e:	d1f8      	bne.n	8003872 <memset+0x12>
 8003880:	2c03      	cmp	r4, #3
 8003882:	d92b      	bls.n	80038dc <memset+0x7c>
 8003884:	b2cd      	uxtb	r5, r1
 8003886:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800388a:	2c0f      	cmp	r4, #15
 800388c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8003890:	d916      	bls.n	80038c0 <memset+0x60>
 8003892:	f1a4 0710 	sub.w	r7, r4, #16
 8003896:	093f      	lsrs	r7, r7, #4
 8003898:	f103 0620 	add.w	r6, r3, #32
 800389c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80038a0:	f103 0210 	add.w	r2, r3, #16
 80038a4:	e942 5504 	strd	r5, r5, [r2, #-16]
 80038a8:	e942 5502 	strd	r5, r5, [r2, #-8]
 80038ac:	3210      	adds	r2, #16
 80038ae:	42b2      	cmp	r2, r6
 80038b0:	d1f8      	bne.n	80038a4 <memset+0x44>
 80038b2:	f004 040f 	and.w	r4, r4, #15
 80038b6:	3701      	adds	r7, #1
 80038b8:	2c03      	cmp	r4, #3
 80038ba:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80038be:	d90d      	bls.n	80038dc <memset+0x7c>
 80038c0:	461e      	mov	r6, r3
 80038c2:	4622      	mov	r2, r4
 80038c4:	3a04      	subs	r2, #4
 80038c6:	2a03      	cmp	r2, #3
 80038c8:	f846 5b04 	str.w	r5, [r6], #4
 80038cc:	d8fa      	bhi.n	80038c4 <memset+0x64>
 80038ce:	1f22      	subs	r2, r4, #4
 80038d0:	f022 0203 	bic.w	r2, r2, #3
 80038d4:	3204      	adds	r2, #4
 80038d6:	4413      	add	r3, r2
 80038d8:	f004 0403 	and.w	r4, r4, #3
 80038dc:	b12c      	cbz	r4, 80038ea <memset+0x8a>
 80038de:	b2c9      	uxtb	r1, r1
 80038e0:	441c      	add	r4, r3
 80038e2:	f803 1b01 	strb.w	r1, [r3], #1
 80038e6:	429c      	cmp	r4, r3
 80038e8:	d1fb      	bne.n	80038e2 <memset+0x82>
 80038ea:	bcf0      	pop	{r4, r5, r6, r7}
 80038ec:	4770      	bx	lr
 80038ee:	4614      	mov	r4, r2
 80038f0:	4603      	mov	r3, r0
 80038f2:	e7c5      	b.n	8003880 <memset+0x20>

080038f4 <printf>:
 80038f4:	b40f      	push	{r0, r1, r2, r3}
 80038f6:	b500      	push	{lr}
 80038f8:	4907      	ldr	r1, [pc, #28]	; (8003918 <printf+0x24>)
 80038fa:	b083      	sub	sp, #12
 80038fc:	ab04      	add	r3, sp, #16
 80038fe:	6808      	ldr	r0, [r1, #0]
 8003900:	f853 2b04 	ldr.w	r2, [r3], #4
 8003904:	6881      	ldr	r1, [r0, #8]
 8003906:	9301      	str	r3, [sp, #4]
 8003908:	f000 f85e 	bl	80039c8 <_vfprintf_r>
 800390c:	b003      	add	sp, #12
 800390e:	f85d eb04 	ldr.w	lr, [sp], #4
 8003912:	b004      	add	sp, #16
 8003914:	4770      	bx	lr
 8003916:	bf00      	nop
 8003918:	20000018 	.word	0x20000018

0800391c <_puts_r>:
 800391c:	b570      	push	{r4, r5, r6, lr}
 800391e:	4605      	mov	r5, r0
 8003920:	b088      	sub	sp, #32
 8003922:	4608      	mov	r0, r1
 8003924:	460c      	mov	r4, r1
 8003926:	f7fc fe8b 	bl	8000640 <strlen>
 800392a:	4a22      	ldr	r2, [pc, #136]	; (80039b4 <_puts_r+0x98>)
 800392c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800392e:	9404      	str	r4, [sp, #16]
 8003930:	2601      	movs	r6, #1
 8003932:	1c44      	adds	r4, r0, #1
 8003934:	a904      	add	r1, sp, #16
 8003936:	9206      	str	r2, [sp, #24]
 8003938:	2202      	movs	r2, #2
 800393a:	9403      	str	r4, [sp, #12]
 800393c:	9005      	str	r0, [sp, #20]
 800393e:	68ac      	ldr	r4, [r5, #8]
 8003940:	9607      	str	r6, [sp, #28]
 8003942:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8003946:	b31b      	cbz	r3, 8003990 <_puts_r+0x74>
 8003948:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800394a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800394e:	07ce      	lsls	r6, r1, #31
 8003950:	b29a      	uxth	r2, r3
 8003952:	d401      	bmi.n	8003958 <_puts_r+0x3c>
 8003954:	0590      	lsls	r0, r2, #22
 8003956:	d525      	bpl.n	80039a4 <_puts_r+0x88>
 8003958:	0491      	lsls	r1, r2, #18
 800395a:	d406      	bmi.n	800396a <_puts_r+0x4e>
 800395c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800395e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8003962:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8003966:	81a3      	strh	r3, [r4, #12]
 8003968:	6662      	str	r2, [r4, #100]	; 0x64
 800396a:	4628      	mov	r0, r5
 800396c:	aa01      	add	r2, sp, #4
 800396e:	4621      	mov	r1, r4
 8003970:	f003 f85e 	bl	8006a30 <__sfvwrite_r>
 8003974:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8003976:	2800      	cmp	r0, #0
 8003978:	bf0c      	ite	eq
 800397a:	250a      	moveq	r5, #10
 800397c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003980:	07da      	lsls	r2, r3, #31
 8003982:	d402      	bmi.n	800398a <_puts_r+0x6e>
 8003984:	89a3      	ldrh	r3, [r4, #12]
 8003986:	059b      	lsls	r3, r3, #22
 8003988:	d506      	bpl.n	8003998 <_puts_r+0x7c>
 800398a:	4628      	mov	r0, r5
 800398c:	b008      	add	sp, #32
 800398e:	bd70      	pop	{r4, r5, r6, pc}
 8003990:	4628      	mov	r0, r5
 8003992:	f002 feb7 	bl	8006704 <__sinit>
 8003996:	e7d7      	b.n	8003948 <_puts_r+0x2c>
 8003998:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800399a:	f003 fa05 	bl	8006da8 <__retarget_lock_release_recursive>
 800399e:	4628      	mov	r0, r5
 80039a0:	b008      	add	sp, #32
 80039a2:	bd70      	pop	{r4, r5, r6, pc}
 80039a4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80039a6:	f003 f9fd 	bl	8006da4 <__retarget_lock_acquire_recursive>
 80039aa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80039ae:	b29a      	uxth	r2, r3
 80039b0:	e7d2      	b.n	8003958 <_puts_r+0x3c>
 80039b2:	bf00      	nop
 80039b4:	0800a6e8 	.word	0x0800a6e8

080039b8 <puts>:
 80039b8:	4b02      	ldr	r3, [pc, #8]	; (80039c4 <puts+0xc>)
 80039ba:	4601      	mov	r1, r0
 80039bc:	6818      	ldr	r0, [r3, #0]
 80039be:	f7ff bfad 	b.w	800391c <_puts_r>
 80039c2:	bf00      	nop
 80039c4:	20000018 	.word	0x20000018

080039c8 <_vfprintf_r>:
 80039c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80039cc:	b0d7      	sub	sp, #348	; 0x15c
 80039ce:	461c      	mov	r4, r3
 80039d0:	4689      	mov	r9, r1
 80039d2:	4617      	mov	r7, r2
 80039d4:	4605      	mov	r5, r0
 80039d6:	9003      	str	r0, [sp, #12]
 80039d8:	f003 f9d2 	bl	8006d80 <_localeconv_r>
 80039dc:	6803      	ldr	r3, [r0, #0]
 80039de:	9316      	str	r3, [sp, #88]	; 0x58
 80039e0:	4618      	mov	r0, r3
 80039e2:	f7fc fe2d 	bl	8000640 <strlen>
 80039e6:	9408      	str	r4, [sp, #32]
 80039e8:	9015      	str	r0, [sp, #84]	; 0x54
 80039ea:	b11d      	cbz	r5, 80039f4 <_vfprintf_r+0x2c>
 80039ec:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80039ee:	2b00      	cmp	r3, #0
 80039f0:	f000 8107 	beq.w	8003c02 <_vfprintf_r+0x23a>
 80039f4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80039f8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80039fc:	07c8      	lsls	r0, r1, #31
 80039fe:	b293      	uxth	r3, r2
 8003a00:	d402      	bmi.n	8003a08 <_vfprintf_r+0x40>
 8003a02:	0599      	lsls	r1, r3, #22
 8003a04:	f140 811f 	bpl.w	8003c46 <_vfprintf_r+0x27e>
 8003a08:	049e      	lsls	r6, r3, #18
 8003a0a:	d40a      	bmi.n	8003a22 <_vfprintf_r+0x5a>
 8003a0c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8003a10:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8003a14:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8003a18:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003a1c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8003a20:	b29b      	uxth	r3, r3
 8003a22:	071d      	lsls	r5, r3, #28
 8003a24:	f140 80b2 	bpl.w	8003b8c <_vfprintf_r+0x1c4>
 8003a28:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8003a2c:	2a00      	cmp	r2, #0
 8003a2e:	f000 80ad 	beq.w	8003b8c <_vfprintf_r+0x1c4>
 8003a32:	f003 021a 	and.w	r2, r3, #26
 8003a36:	2a0a      	cmp	r2, #10
 8003a38:	f000 80c9 	beq.w	8003bce <_vfprintf_r+0x206>
 8003a3c:	2300      	movs	r3, #0
 8003a3e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8003c58 <_vfprintf_r+0x290>
 8003a42:	9310      	str	r3, [sp, #64]	; 0x40
 8003a44:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8003a48:	9317      	str	r3, [sp, #92]	; 0x5c
 8003a4a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8003a4e:	931b      	str	r3, [sp, #108]	; 0x6c
 8003a50:	9318      	str	r3, [sp, #96]	; 0x60
 8003a52:	9305      	str	r3, [sp, #20]
 8003a54:	ab2d      	add	r3, sp, #180	; 0xb4
 8003a56:	932a      	str	r3, [sp, #168]	; 0xa8
 8003a58:	469b      	mov	fp, r3
 8003a5a:	783b      	ldrb	r3, [r7, #0]
 8003a5c:	f8cd 901c 	str.w	r9, [sp, #28]
 8003a60:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8003a64:	2b00      	cmp	r3, #0
 8003a66:	f000 8259 	beq.w	8003f1c <_vfprintf_r+0x554>
 8003a6a:	2b25      	cmp	r3, #37	; 0x25
 8003a6c:	463c      	mov	r4, r7
 8003a6e:	d102      	bne.n	8003a76 <_vfprintf_r+0xae>
 8003a70:	e01d      	b.n	8003aae <_vfprintf_r+0xe6>
 8003a72:	2b25      	cmp	r3, #37	; 0x25
 8003a74:	d003      	beq.n	8003a7e <_vfprintf_r+0xb6>
 8003a76:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8003a7a:	2b00      	cmp	r3, #0
 8003a7c:	d1f9      	bne.n	8003a72 <_vfprintf_r+0xaa>
 8003a7e:	1be5      	subs	r5, r4, r7
 8003a80:	b18d      	cbz	r5, 8003aa6 <_vfprintf_r+0xde>
 8003a82:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8003a86:	3301      	adds	r3, #1
 8003a88:	442a      	add	r2, r5
 8003a8a:	2b07      	cmp	r3, #7
 8003a8c:	f8cb 7000 	str.w	r7, [fp]
 8003a90:	f8cb 5004 	str.w	r5, [fp, #4]
 8003a94:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8003a98:	f300 80ca 	bgt.w	8003c30 <_vfprintf_r+0x268>
 8003a9c:	f10b 0b08 	add.w	fp, fp, #8
 8003aa0:	9b05      	ldr	r3, [sp, #20]
 8003aa2:	442b      	add	r3, r5
 8003aa4:	9305      	str	r3, [sp, #20]
 8003aa6:	7823      	ldrb	r3, [r4, #0]
 8003aa8:	2b00      	cmp	r3, #0
 8003aaa:	f000 8237 	beq.w	8003f1c <_vfprintf_r+0x554>
 8003aae:	2300      	movs	r3, #0
 8003ab0:	7866      	ldrb	r6, [r4, #1]
 8003ab2:	9306      	str	r3, [sp, #24]
 8003ab4:	4698      	mov	r8, r3
 8003ab6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8003aba:	f104 0a01 	add.w	sl, r4, #1
 8003abe:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8003ac2:	252b      	movs	r5, #43	; 0x2b
 8003ac4:	f10a 0a01 	add.w	sl, sl, #1
 8003ac8:	f1a6 0320 	sub.w	r3, r6, #32
 8003acc:	2b5a      	cmp	r3, #90	; 0x5a
 8003ace:	f200 842a 	bhi.w	8004326 <_vfprintf_r+0x95e>
 8003ad2:	e8df f013 	tbh	[pc, r3, lsl #1]
 8003ad6:	03aa      	.short	0x03aa
 8003ad8:	04280428 	.word	0x04280428
 8003adc:	0428029c 	.word	0x0428029c
 8003ae0:	04280428 	.word	0x04280428
 8003ae4:	042802a7 	.word	0x042802a7
 8003ae8:	02c60428 	.word	0x02c60428
 8003aec:	042802d2 	.word	0x042802d2
 8003af0:	02dc02d7 	.word	0x02dc02d7
 8003af4:	02f60428 	.word	0x02f60428
 8003af8:	026d026d 	.word	0x026d026d
 8003afc:	026d026d 	.word	0x026d026d
 8003b00:	026d026d 	.word	0x026d026d
 8003b04:	026d026d 	.word	0x026d026d
 8003b08:	0428026d 	.word	0x0428026d
 8003b0c:	04280428 	.word	0x04280428
 8003b10:	04280428 	.word	0x04280428
 8003b14:	04280428 	.word	0x04280428
 8003b18:	042802fb 	.word	0x042802fb
 8003b1c:	03f3033c 	.word	0x03f3033c
 8003b20:	02fb02fb 	.word	0x02fb02fb
 8003b24:	042802fb 	.word	0x042802fb
 8003b28:	04280428 	.word	0x04280428
 8003b2c:	03ee0428 	.word	0x03ee0428
 8003b30:	04280428 	.word	0x04280428
 8003b34:	0428009a 	.word	0x0428009a
 8003b38:	04280428 	.word	0x04280428
 8003b3c:	04280350 	.word	0x04280350
 8003b40:	04280379 	.word	0x04280379
 8003b44:	03900428 	.word	0x03900428
 8003b48:	04280428 	.word	0x04280428
 8003b4c:	04280428 	.word	0x04280428
 8003b50:	04280428 	.word	0x04280428
 8003b54:	04280428 	.word	0x04280428
 8003b58:	042802fb 	.word	0x042802fb
 8003b5c:	00c5033c 	.word	0x00c5033c
 8003b60:	02fb02fb 	.word	0x02fb02fb
 8003b64:	03d102fb 	.word	0x03d102fb
 8003b68:	007000c5 	.word	0x007000c5
 8003b6c:	03b50428 	.word	0x03b50428
 8003b70:	03c20428 	.word	0x03c20428
 8003b74:	03de009c 	.word	0x03de009c
 8003b78:	04280070 	.word	0x04280070
 8003b7c:	00720350 	.word	0x00720350
 8003b80:	0428022c 	.word	0x0428022c
 8003b84:	027c0428 	.word	0x027c0428
 8003b88:	00720428 	.word	0x00720428
 8003b8c:	4649      	mov	r1, r9
 8003b8e:	9803      	ldr	r0, [sp, #12]
 8003b90:	f001 fc9a 	bl	80054c8 <__swsetup_r>
 8003b94:	b1a0      	cbz	r0, 8003bc0 <_vfprintf_r+0x1f8>
 8003b96:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8003b9a:	07d8      	lsls	r0, r3, #31
 8003b9c:	d404      	bmi.n	8003ba8 <_vfprintf_r+0x1e0>
 8003b9e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003ba2:	0599      	lsls	r1, r3, #22
 8003ba4:	f140 83b7 	bpl.w	8004316 <_vfprintf_r+0x94e>
 8003ba8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003bac:	9305      	str	r3, [sp, #20]
 8003bae:	9805      	ldr	r0, [sp, #20]
 8003bb0:	b057      	add	sp, #348	; 0x15c
 8003bb2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003bb6:	f048 0820 	orr.w	r8, r8, #32
 8003bba:	f89a 6000 	ldrb.w	r6, [sl]
 8003bbe:	e781      	b.n	8003ac4 <_vfprintf_r+0xfc>
 8003bc0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003bc4:	f003 021a 	and.w	r2, r3, #26
 8003bc8:	2a0a      	cmp	r2, #10
 8003bca:	f47f af37 	bne.w	8003a3c <_vfprintf_r+0x74>
 8003bce:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8003bd2:	2a00      	cmp	r2, #0
 8003bd4:	f6ff af32 	blt.w	8003a3c <_vfprintf_r+0x74>
 8003bd8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003bdc:	07d2      	lsls	r2, r2, #31
 8003bde:	d405      	bmi.n	8003bec <_vfprintf_r+0x224>
 8003be0:	059b      	lsls	r3, r3, #22
 8003be2:	d403      	bmi.n	8003bec <_vfprintf_r+0x224>
 8003be4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003be8:	f003 f8de 	bl	8006da8 <__retarget_lock_release_recursive>
 8003bec:	4623      	mov	r3, r4
 8003bee:	463a      	mov	r2, r7
 8003bf0:	4649      	mov	r1, r9
 8003bf2:	9803      	ldr	r0, [sp, #12]
 8003bf4:	f001 fc26 	bl	8005444 <__sbprintf>
 8003bf8:	9005      	str	r0, [sp, #20]
 8003bfa:	9805      	ldr	r0, [sp, #20]
 8003bfc:	b057      	add	sp, #348	; 0x15c
 8003bfe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003c02:	9803      	ldr	r0, [sp, #12]
 8003c04:	f002 fd7e 	bl	8006704 <__sinit>
 8003c08:	e6f4      	b.n	80039f4 <_vfprintf_r+0x2c>
 8003c0a:	f048 0810 	orr.w	r8, r8, #16
 8003c0e:	f018 0f20 	tst.w	r8, #32
 8003c12:	f000 836c 	beq.w	80042ee <_vfprintf_r+0x926>
 8003c16:	9c08      	ldr	r4, [sp, #32]
 8003c18:	3407      	adds	r4, #7
 8003c1a:	f024 0307 	bic.w	r3, r4, #7
 8003c1e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003c22:	f103 0208 	add.w	r2, r3, #8
 8003c26:	9208      	str	r2, [sp, #32]
 8003c28:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8003c2c:	2200      	movs	r2, #0
 8003c2e:	e18c      	b.n	8003f4a <_vfprintf_r+0x582>
 8003c30:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c32:	9907      	ldr	r1, [sp, #28]
 8003c34:	9803      	ldr	r0, [sp, #12]
 8003c36:	f004 f9f5 	bl	8008024 <__sprint_r>
 8003c3a:	2800      	cmp	r0, #0
 8003c3c:	f041 8376 	bne.w	800532c <_vfprintf_r+0x1964>
 8003c40:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c44:	e72c      	b.n	8003aa0 <_vfprintf_r+0xd8>
 8003c46:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003c4a:	f003 f8ab 	bl	8006da4 <__retarget_lock_acquire_recursive>
 8003c4e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8003c52:	b293      	uxth	r3, r2
 8003c54:	e6d8      	b.n	8003a08 <_vfprintf_r+0x40>
 8003c56:	bf00      	nop
	...
 8003c60:	4643      	mov	r3, r8
 8003c62:	069f      	lsls	r7, r3, #26
 8003c64:	f140 832f 	bpl.w	80042c6 <_vfprintf_r+0x8fe>
 8003c68:	9c08      	ldr	r4, [sp, #32]
 8003c6a:	3407      	adds	r4, #7
 8003c6c:	f024 0407 	bic.w	r4, r4, #7
 8003c70:	e9d4 0100 	ldrd	r0, r1, [r4]
 8003c74:	f104 0208 	add.w	r2, r4, #8
 8003c78:	9208      	str	r2, [sp, #32]
 8003c7a:	4604      	mov	r4, r0
 8003c7c:	460d      	mov	r5, r1
 8003c7e:	2800      	cmp	r0, #0
 8003c80:	f171 0200 	sbcs.w	r2, r1, #0
 8003c84:	da05      	bge.n	8003c92 <_vfprintf_r+0x2ca>
 8003c86:	222d      	movs	r2, #45	; 0x2d
 8003c88:	4264      	negs	r4, r4
 8003c8a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8003c8e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003c92:	aa56      	add	r2, sp, #344	; 0x158
 8003c94:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003c98:	9204      	str	r2, [sp, #16]
 8003c9a:	f000 84b2 	beq.w	8004602 <_vfprintf_r+0xc3a>
 8003c9e:	2201      	movs	r2, #1
 8003ca0:	ea54 0105 	orrs.w	r1, r4, r5
 8003ca4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8003ca8:	f040 8159 	bne.w	8003f5e <_vfprintf_r+0x596>
 8003cac:	f1b9 0f00 	cmp.w	r9, #0
 8003cb0:	f040 8619 	bne.w	80048e6 <_vfprintf_r+0xf1e>
 8003cb4:	2a00      	cmp	r2, #0
 8003cb6:	f040 8508 	bne.w	80046ca <_vfprintf_r+0xd02>
 8003cba:	f013 0301 	ands.w	r3, r3, #1
 8003cbe:	af56      	add	r7, sp, #344	; 0x158
 8003cc0:	9309      	str	r3, [sp, #36]	; 0x24
 8003cc2:	d002      	beq.n	8003cca <_vfprintf_r+0x302>
 8003cc4:	2330      	movs	r3, #48	; 0x30
 8003cc6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003cca:	2300      	movs	r3, #0
 8003ccc:	930a      	str	r3, [sp, #40]	; 0x28
 8003cce:	930f      	str	r3, [sp, #60]	; 0x3c
 8003cd0:	9314      	str	r3, [sp, #80]	; 0x50
 8003cd2:	9311      	str	r3, [sp, #68]	; 0x44
 8003cd4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003cd6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003cda:	454b      	cmp	r3, r9
 8003cdc:	bfb8      	it	lt
 8003cde:	464b      	movlt	r3, r9
 8003ce0:	9304      	str	r3, [sp, #16]
 8003ce2:	b112      	cbz	r2, 8003cea <_vfprintf_r+0x322>
 8003ce4:	9b04      	ldr	r3, [sp, #16]
 8003ce6:	3301      	adds	r3, #1
 8003ce8:	9304      	str	r3, [sp, #16]
 8003cea:	f018 0302 	ands.w	r3, r8, #2
 8003cee:	930b      	str	r3, [sp, #44]	; 0x2c
 8003cf0:	d002      	beq.n	8003cf8 <_vfprintf_r+0x330>
 8003cf2:	9b04      	ldr	r3, [sp, #16]
 8003cf4:	3302      	adds	r3, #2
 8003cf6:	9304      	str	r3, [sp, #16]
 8003cf8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8003cfc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003cfe:	930e      	str	r3, [sp, #56]	; 0x38
 8003d00:	d13f      	bne.n	8003d82 <_vfprintf_r+0x3ba>
 8003d02:	9b06      	ldr	r3, [sp, #24]
 8003d04:	9904      	ldr	r1, [sp, #16]
 8003d06:	1a5d      	subs	r5, r3, r1
 8003d08:	2d00      	cmp	r5, #0
 8003d0a:	dd3a      	ble.n	8003d82 <_vfprintf_r+0x3ba>
 8003d0c:	2d10      	cmp	r5, #16
 8003d0e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003d10:	dd29      	ble.n	8003d66 <_vfprintf_r+0x39e>
 8003d12:	4659      	mov	r1, fp
 8003d14:	4620      	mov	r0, r4
 8003d16:	9620      	str	r6, [sp, #128]	; 0x80
 8003d18:	2310      	movs	r3, #16
 8003d1a:	9c03      	ldr	r4, [sp, #12]
 8003d1c:	9e07      	ldr	r6, [sp, #28]
 8003d1e:	46bb      	mov	fp, r7
 8003d20:	e004      	b.n	8003d2c <_vfprintf_r+0x364>
 8003d22:	3d10      	subs	r5, #16
 8003d24:	2d10      	cmp	r5, #16
 8003d26:	f101 0108 	add.w	r1, r1, #8
 8003d2a:	dd18      	ble.n	8003d5e <_vfprintf_r+0x396>
 8003d2c:	3201      	adds	r2, #1
 8003d2e:	4fba      	ldr	r7, [pc, #744]	; (8004018 <_vfprintf_r+0x650>)
 8003d30:	3010      	adds	r0, #16
 8003d32:	2a07      	cmp	r2, #7
 8003d34:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003d38:	e9c1 7300 	strd	r7, r3, [r1]
 8003d3c:	ddf1      	ble.n	8003d22 <_vfprintf_r+0x35a>
 8003d3e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d40:	4631      	mov	r1, r6
 8003d42:	4620      	mov	r0, r4
 8003d44:	930c      	str	r3, [sp, #48]	; 0x30
 8003d46:	f004 f96d 	bl	8008024 <__sprint_r>
 8003d4a:	2800      	cmp	r0, #0
 8003d4c:	f040 843d 	bne.w	80045ca <_vfprintf_r+0xc02>
 8003d50:	3d10      	subs	r5, #16
 8003d52:	2d10      	cmp	r5, #16
 8003d54:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003d58:	a92d      	add	r1, sp, #180	; 0xb4
 8003d5a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8003d5c:	dce6      	bgt.n	8003d2c <_vfprintf_r+0x364>
 8003d5e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8003d60:	465f      	mov	r7, fp
 8003d62:	4604      	mov	r4, r0
 8003d64:	468b      	mov	fp, r1
 8003d66:	3201      	adds	r2, #1
 8003d68:	4bab      	ldr	r3, [pc, #684]	; (8004018 <_vfprintf_r+0x650>)
 8003d6a:	442c      	add	r4, r5
 8003d6c:	2a07      	cmp	r2, #7
 8003d6e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d72:	e9cb 3500 	strd	r3, r5, [fp]
 8003d76:	f300 84ff 	bgt.w	8004778 <_vfprintf_r+0xdb0>
 8003d7a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003d7e:	f10b 0b08 	add.w	fp, fp, #8
 8003d82:	b172      	cbz	r2, 8003da2 <_vfprintf_r+0x3da>
 8003d84:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003d86:	3201      	adds	r2, #1
 8003d88:	3401      	adds	r4, #1
 8003d8a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8003d8e:	2101      	movs	r1, #1
 8003d90:	2a07      	cmp	r2, #7
 8003d92:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003d96:	e9cb 0100 	strd	r0, r1, [fp]
 8003d9a:	f300 8418 	bgt.w	80045ce <_vfprintf_r+0xc06>
 8003d9e:	f10b 0b08 	add.w	fp, fp, #8
 8003da2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003da4:	b16b      	cbz	r3, 8003dc2 <_vfprintf_r+0x3fa>
 8003da6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003da8:	3301      	adds	r3, #1
 8003daa:	3402      	adds	r4, #2
 8003dac:	a923      	add	r1, sp, #140	; 0x8c
 8003dae:	2202      	movs	r2, #2
 8003db0:	2b07      	cmp	r3, #7
 8003db2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003db6:	e9cb 1200 	strd	r1, r2, [fp]
 8003dba:	f300 8415 	bgt.w	80045e8 <_vfprintf_r+0xc20>
 8003dbe:	f10b 0b08 	add.w	fp, fp, #8
 8003dc2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8003dc4:	2b80      	cmp	r3, #128	; 0x80
 8003dc6:	f000 8331 	beq.w	800442c <_vfprintf_r+0xa64>
 8003dca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003dcc:	eba9 0503 	sub.w	r5, r9, r3
 8003dd0:	2d00      	cmp	r5, #0
 8003dd2:	dd37      	ble.n	8003e44 <_vfprintf_r+0x47c>
 8003dd4:	2d10      	cmp	r5, #16
 8003dd6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003dd8:	4b90      	ldr	r3, [pc, #576]	; (800401c <_vfprintf_r+0x654>)
 8003dda:	dd28      	ble.n	8003e2e <_vfprintf_r+0x466>
 8003ddc:	4659      	mov	r1, fp
 8003dde:	4620      	mov	r0, r4
 8003de0:	46bb      	mov	fp, r7
 8003de2:	f04f 0910 	mov.w	r9, #16
 8003de6:	4637      	mov	r7, r6
 8003de8:	461c      	mov	r4, r3
 8003dea:	9e07      	ldr	r6, [sp, #28]
 8003dec:	e004      	b.n	8003df8 <_vfprintf_r+0x430>
 8003dee:	3d10      	subs	r5, #16
 8003df0:	2d10      	cmp	r5, #16
 8003df2:	f101 0108 	add.w	r1, r1, #8
 8003df6:	dd15      	ble.n	8003e24 <_vfprintf_r+0x45c>
 8003df8:	3201      	adds	r2, #1
 8003dfa:	3010      	adds	r0, #16
 8003dfc:	2a07      	cmp	r2, #7
 8003dfe:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003e02:	e9c1 4900 	strd	r4, r9, [r1]
 8003e06:	ddf2      	ble.n	8003dee <_vfprintf_r+0x426>
 8003e08:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e0a:	4631      	mov	r1, r6
 8003e0c:	9803      	ldr	r0, [sp, #12]
 8003e0e:	f004 f909 	bl	8008024 <__sprint_r>
 8003e12:	2800      	cmp	r0, #0
 8003e14:	f040 83d9 	bne.w	80045ca <_vfprintf_r+0xc02>
 8003e18:	3d10      	subs	r5, #16
 8003e1a:	2d10      	cmp	r5, #16
 8003e1c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003e20:	a92d      	add	r1, sp, #180	; 0xb4
 8003e22:	dce9      	bgt.n	8003df8 <_vfprintf_r+0x430>
 8003e24:	463e      	mov	r6, r7
 8003e26:	4623      	mov	r3, r4
 8003e28:	465f      	mov	r7, fp
 8003e2a:	4604      	mov	r4, r0
 8003e2c:	468b      	mov	fp, r1
 8003e2e:	3201      	adds	r2, #1
 8003e30:	442c      	add	r4, r5
 8003e32:	2a07      	cmp	r2, #7
 8003e34:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003e38:	e9cb 3500 	strd	r3, r5, [fp]
 8003e3c:	f300 83ef 	bgt.w	800461e <_vfprintf_r+0xc56>
 8003e40:	f10b 0b08 	add.w	fp, fp, #8
 8003e44:	f418 7f80 	tst.w	r8, #256	; 0x100
 8003e48:	f040 8280 	bne.w	800434c <_vfprintf_r+0x984>
 8003e4c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003e4e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003e50:	f8cb 7000 	str.w	r7, [fp]
 8003e54:	3301      	adds	r3, #1
 8003e56:	4414      	add	r4, r2
 8003e58:	2b07      	cmp	r3, #7
 8003e5a:	942c      	str	r4, [sp, #176]	; 0xb0
 8003e5c:	f8cb 2004 	str.w	r2, [fp, #4]
 8003e60:	932b      	str	r3, [sp, #172]	; 0xac
 8003e62:	f300 8392 	bgt.w	800458a <_vfprintf_r+0xbc2>
 8003e66:	f10b 0b08 	add.w	fp, fp, #8
 8003e6a:	f018 0f04 	tst.w	r8, #4
 8003e6e:	d03b      	beq.n	8003ee8 <_vfprintf_r+0x520>
 8003e70:	9b06      	ldr	r3, [sp, #24]
 8003e72:	9a04      	ldr	r2, [sp, #16]
 8003e74:	1a9d      	subs	r5, r3, r2
 8003e76:	2d00      	cmp	r5, #0
 8003e78:	dd36      	ble.n	8003ee8 <_vfprintf_r+0x520>
 8003e7a:	2d10      	cmp	r5, #16
 8003e7c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003e7e:	dd21      	ble.n	8003ec4 <_vfprintf_r+0x4fc>
 8003e80:	2610      	movs	r6, #16
 8003e82:	9f03      	ldr	r7, [sp, #12]
 8003e84:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8003e88:	e004      	b.n	8003e94 <_vfprintf_r+0x4cc>
 8003e8a:	3d10      	subs	r5, #16
 8003e8c:	2d10      	cmp	r5, #16
 8003e8e:	f10b 0b08 	add.w	fp, fp, #8
 8003e92:	dd17      	ble.n	8003ec4 <_vfprintf_r+0x4fc>
 8003e94:	3301      	adds	r3, #1
 8003e96:	4a60      	ldr	r2, [pc, #384]	; (8004018 <_vfprintf_r+0x650>)
 8003e98:	3410      	adds	r4, #16
 8003e9a:	2b07      	cmp	r3, #7
 8003e9c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003ea0:	e9cb 2600 	strd	r2, r6, [fp]
 8003ea4:	ddf1      	ble.n	8003e8a <_vfprintf_r+0x4c2>
 8003ea6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ea8:	4641      	mov	r1, r8
 8003eaa:	4638      	mov	r0, r7
 8003eac:	f004 f8ba 	bl	8008024 <__sprint_r>
 8003eb0:	2800      	cmp	r0, #0
 8003eb2:	f040 856c 	bne.w	800498e <_vfprintf_r+0xfc6>
 8003eb6:	3d10      	subs	r5, #16
 8003eb8:	2d10      	cmp	r5, #16
 8003eba:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003ebe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ec2:	dce7      	bgt.n	8003e94 <_vfprintf_r+0x4cc>
 8003ec4:	3301      	adds	r3, #1
 8003ec6:	4a54      	ldr	r2, [pc, #336]	; (8004018 <_vfprintf_r+0x650>)
 8003ec8:	442c      	add	r4, r5
 8003eca:	2b07      	cmp	r3, #7
 8003ecc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003ed0:	e9cb 2500 	strd	r2, r5, [fp]
 8003ed4:	dd08      	ble.n	8003ee8 <_vfprintf_r+0x520>
 8003ed6:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ed8:	9907      	ldr	r1, [sp, #28]
 8003eda:	9803      	ldr	r0, [sp, #12]
 8003edc:	f004 f8a2 	bl	8008024 <__sprint_r>
 8003ee0:	2800      	cmp	r0, #0
 8003ee2:	f040 82e9 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 8003ee6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ee8:	9904      	ldr	r1, [sp, #16]
 8003eea:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8003eee:	428a      	cmp	r2, r1
 8003ef0:	bfac      	ite	ge
 8003ef2:	189b      	addge	r3, r3, r2
 8003ef4:	185b      	addlt	r3, r3, r1
 8003ef6:	9305      	str	r3, [sp, #20]
 8003ef8:	2c00      	cmp	r4, #0
 8003efa:	f040 82d5 	bne.w	80044a8 <_vfprintf_r+0xae0>
 8003efe:	2300      	movs	r3, #0
 8003f00:	932b      	str	r3, [sp, #172]	; 0xac
 8003f02:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003f04:	b11b      	cbz	r3, 8003f0e <_vfprintf_r+0x546>
 8003f06:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003f08:	9803      	ldr	r0, [sp, #12]
 8003f0a:	f002 fc9d 	bl	8006848 <_free_r>
 8003f0e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f12:	4657      	mov	r7, sl
 8003f14:	783b      	ldrb	r3, [r7, #0]
 8003f16:	2b00      	cmp	r3, #0
 8003f18:	f47f ada7 	bne.w	8003a6a <_vfprintf_r+0xa2>
 8003f1c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8003f1e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003f22:	2b00      	cmp	r3, #0
 8003f24:	f041 80e7 	bne.w	80050f6 <_vfprintf_r+0x172e>
 8003f28:	2300      	movs	r3, #0
 8003f2a:	932b      	str	r3, [sp, #172]	; 0xac
 8003f2c:	e2cb      	b.n	80044c6 <_vfprintf_r+0xafe>
 8003f2e:	4643      	mov	r3, r8
 8003f30:	069a      	lsls	r2, r3, #26
 8003f32:	f140 814e 	bpl.w	80041d2 <_vfprintf_r+0x80a>
 8003f36:	9c08      	ldr	r4, [sp, #32]
 8003f38:	3407      	adds	r4, #7
 8003f3a:	f024 0207 	bic.w	r2, r4, #7
 8003f3e:	f102 0108 	add.w	r1, r2, #8
 8003f42:	e9d2 4500 	ldrd	r4, r5, [r2]
 8003f46:	9108      	str	r1, [sp, #32]
 8003f48:	2201      	movs	r2, #1
 8003f4a:	2100      	movs	r1, #0
 8003f4c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8003f50:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003f54:	a956      	add	r1, sp, #344	; 0x158
 8003f56:	9104      	str	r1, [sp, #16]
 8003f58:	f47f aea2 	bne.w	8003ca0 <_vfprintf_r+0x2d8>
 8003f5c:	4698      	mov	r8, r3
 8003f5e:	2a01      	cmp	r2, #1
 8003f60:	f000 8350 	beq.w	8004604 <_vfprintf_r+0xc3c>
 8003f64:	2a02      	cmp	r2, #2
 8003f66:	f000 831b 	beq.w	80045a0 <_vfprintf_r+0xbd8>
 8003f6a:	a956      	add	r1, sp, #344	; 0x158
 8003f6c:	e000      	b.n	8003f70 <_vfprintf_r+0x5a8>
 8003f6e:	4639      	mov	r1, r7
 8003f70:	08e2      	lsrs	r2, r4, #3
 8003f72:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8003f76:	08e8      	lsrs	r0, r5, #3
 8003f78:	f004 0307 	and.w	r3, r4, #7
 8003f7c:	4605      	mov	r5, r0
 8003f7e:	4614      	mov	r4, r2
 8003f80:	3330      	adds	r3, #48	; 0x30
 8003f82:	ea54 0205 	orrs.w	r2, r4, r5
 8003f86:	f801 3c01 	strb.w	r3, [r1, #-1]
 8003f8a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8003f8e:	d1ee      	bne.n	8003f6e <_vfprintf_r+0x5a6>
 8003f90:	f018 0f01 	tst.w	r8, #1
 8003f94:	f000 8314 	beq.w	80045c0 <_vfprintf_r+0xbf8>
 8003f98:	2b30      	cmp	r3, #48	; 0x30
 8003f9a:	f000 8311 	beq.w	80045c0 <_vfprintf_r+0xbf8>
 8003f9e:	9a04      	ldr	r2, [sp, #16]
 8003fa0:	3902      	subs	r1, #2
 8003fa2:	2330      	movs	r3, #48	; 0x30
 8003fa4:	1a52      	subs	r2, r2, r1
 8003fa6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8003faa:	9209      	str	r2, [sp, #36]	; 0x24
 8003fac:	460f      	mov	r7, r1
 8003fae:	e68c      	b.n	8003cca <_vfprintf_r+0x302>
 8003fb0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003fb4:	2200      	movs	r2, #0
 8003fb6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8003fba:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8003fbe:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8003fc2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8003fc6:	2b09      	cmp	r3, #9
 8003fc8:	d9f5      	bls.n	8003fb6 <_vfprintf_r+0x5ee>
 8003fca:	9206      	str	r2, [sp, #24]
 8003fcc:	e57c      	b.n	8003ac8 <_vfprintf_r+0x100>
 8003fce:	4b14      	ldr	r3, [pc, #80]	; (8004020 <_vfprintf_r+0x658>)
 8003fd0:	9317      	str	r3, [sp, #92]	; 0x5c
 8003fd2:	f018 0f20 	tst.w	r8, #32
 8003fd6:	f000 8114 	beq.w	8004202 <_vfprintf_r+0x83a>
 8003fda:	9c08      	ldr	r4, [sp, #32]
 8003fdc:	3407      	adds	r4, #7
 8003fde:	f024 0307 	bic.w	r3, r4, #7
 8003fe2:	e9d3 4500 	ldrd	r4, r5, [r3]
 8003fe6:	f103 0208 	add.w	r2, r3, #8
 8003fea:	9208      	str	r2, [sp, #32]
 8003fec:	f018 0f01 	tst.w	r8, #1
 8003ff0:	d009      	beq.n	8004006 <_vfprintf_r+0x63e>
 8003ff2:	ea54 0305 	orrs.w	r3, r4, r5
 8003ff6:	d006      	beq.n	8004006 <_vfprintf_r+0x63e>
 8003ff8:	2330      	movs	r3, #48	; 0x30
 8003ffa:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8003ffe:	f048 0802 	orr.w	r8, r8, #2
 8004002:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004006:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800400a:	2202      	movs	r2, #2
 800400c:	e79d      	b.n	8003f4a <_vfprintf_r+0x582>
 800400e:	f048 0801 	orr.w	r8, r8, #1
 8004012:	f89a 6000 	ldrb.w	r6, [sl]
 8004016:	e555      	b.n	8003ac4 <_vfprintf_r+0xfc>
 8004018:	0800a730 	.word	0x0800a730
 800401c:	0800a740 	.word	0x0800a740
 8004020:	0800a6fc 	.word	0x0800a6fc
 8004024:	9e03      	ldr	r6, [sp, #12]
 8004026:	4630      	mov	r0, r6
 8004028:	f002 feaa 	bl	8006d80 <_localeconv_r>
 800402c:	6843      	ldr	r3, [r0, #4]
 800402e:	9318      	str	r3, [sp, #96]	; 0x60
 8004030:	4618      	mov	r0, r3
 8004032:	f7fc fb05 	bl	8000640 <strlen>
 8004036:	901b      	str	r0, [sp, #108]	; 0x6c
 8004038:	4604      	mov	r4, r0
 800403a:	4630      	mov	r0, r6
 800403c:	f002 fea0 	bl	8006d80 <_localeconv_r>
 8004040:	6883      	ldr	r3, [r0, #8]
 8004042:	931a      	str	r3, [sp, #104]	; 0x68
 8004044:	2c00      	cmp	r4, #0
 8004046:	f43f adb8 	beq.w	8003bba <_vfprintf_r+0x1f2>
 800404a:	f89a 6000 	ldrb.w	r6, [sl]
 800404e:	2b00      	cmp	r3, #0
 8004050:	f43f ad38 	beq.w	8003ac4 <_vfprintf_r+0xfc>
 8004054:	781b      	ldrb	r3, [r3, #0]
 8004056:	2b00      	cmp	r3, #0
 8004058:	f43f ad34 	beq.w	8003ac4 <_vfprintf_r+0xfc>
 800405c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8004060:	e530      	b.n	8003ac4 <_vfprintf_r+0xfc>
 8004062:	9b08      	ldr	r3, [sp, #32]
 8004064:	f89a 6000 	ldrb.w	r6, [sl]
 8004068:	681a      	ldr	r2, [r3, #0]
 800406a:	9206      	str	r2, [sp, #24]
 800406c:	2a00      	cmp	r2, #0
 800406e:	f103 0304 	add.w	r3, r3, #4
 8004072:	f2c0 8697 	blt.w	8004da4 <_vfprintf_r+0x13dc>
 8004076:	9308      	str	r3, [sp, #32]
 8004078:	e524      	b.n	8003ac4 <_vfprintf_r+0xfc>
 800407a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 800407e:	f89a 6000 	ldrb.w	r6, [sl]
 8004082:	e51f      	b.n	8003ac4 <_vfprintf_r+0xfc>
 8004084:	f89a 6000 	ldrb.w	r6, [sl]
 8004088:	f048 0804 	orr.w	r8, r8, #4
 800408c:	e51a      	b.n	8003ac4 <_vfprintf_r+0xfc>
 800408e:	f89a 6000 	ldrb.w	r6, [sl]
 8004092:	2e2a      	cmp	r6, #42	; 0x2a
 8004094:	f10a 0201 	add.w	r2, sl, #1
 8004098:	f001 81b0 	beq.w	80053fc <_vfprintf_r+0x1a34>
 800409c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80040a0:	2b09      	cmp	r3, #9
 80040a2:	4692      	mov	sl, r2
 80040a4:	f04f 0900 	mov.w	r9, #0
 80040a8:	f63f ad0e 	bhi.w	8003ac8 <_vfprintf_r+0x100>
 80040ac:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80040b0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80040b4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80040b8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80040bc:	2b09      	cmp	r3, #9
 80040be:	d9f5      	bls.n	80040ac <_vfprintf_r+0x6e4>
 80040c0:	e502      	b.n	8003ac8 <_vfprintf_r+0x100>
 80040c2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 80040c6:	f89a 6000 	ldrb.w	r6, [sl]
 80040ca:	e4fb      	b.n	8003ac4 <_vfprintf_r+0xfc>
 80040cc:	9c08      	ldr	r4, [sp, #32]
 80040ce:	3407      	adds	r4, #7
 80040d0:	f024 0407 	bic.w	r4, r4, #7
 80040d4:	ed94 7b00 	vldr	d7, [r4]
 80040d8:	ec52 1b17 	vmov	r1, r2, d7
 80040dc:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80040e0:	931d      	str	r3, [sp, #116]	; 0x74
 80040e2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 80040e6:	3408      	adds	r4, #8
 80040e8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 80040ec:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 80040f0:	4bba      	ldr	r3, [pc, #744]	; (80043dc <_vfprintf_r+0xa14>)
 80040f2:	9408      	str	r4, [sp, #32]
 80040f4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80040f8:	f7fc ffb8 	bl	800106c <__aeabi_dcmpun>
 80040fc:	2800      	cmp	r0, #0
 80040fe:	f040 846f 	bne.w	80049e0 <_vfprintf_r+0x1018>
 8004102:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8004106:	4bb5      	ldr	r3, [pc, #724]	; (80043dc <_vfprintf_r+0xa14>)
 8004108:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800410c:	f7fc ff90 	bl	8001030 <__aeabi_dcmple>
 8004110:	2800      	cmp	r0, #0
 8004112:	f040 8465 	bne.w	80049e0 <_vfprintf_r+0x1018>
 8004116:	2200      	movs	r2, #0
 8004118:	2300      	movs	r3, #0
 800411a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800411e:	f7fc ff7d 	bl	800101c <__aeabi_dcmplt>
 8004122:	2800      	cmp	r0, #0
 8004124:	f040 855b 	bne.w	8004bde <_vfprintf_r+0x1216>
 8004128:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800412c:	4fac      	ldr	r7, [pc, #688]	; (80043e0 <_vfprintf_r+0xa18>)
 800412e:	4bad      	ldr	r3, [pc, #692]	; (80043e4 <_vfprintf_r+0xa1c>)
 8004130:	2000      	movs	r0, #0
 8004132:	2103      	movs	r1, #3
 8004134:	9104      	str	r1, [sp, #16]
 8004136:	900a      	str	r0, [sp, #40]	; 0x28
 8004138:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800413c:	2e47      	cmp	r6, #71	; 0x47
 800413e:	bfd8      	it	le
 8004140:	461f      	movle	r7, r3
 8004142:	9109      	str	r1, [sp, #36]	; 0x24
 8004144:	4681      	mov	r9, r0
 8004146:	900f      	str	r0, [sp, #60]	; 0x3c
 8004148:	9014      	str	r0, [sp, #80]	; 0x50
 800414a:	9011      	str	r0, [sp, #68]	; 0x44
 800414c:	e5c9      	b.n	8003ce2 <_vfprintf_r+0x31a>
 800414e:	9808      	ldr	r0, [sp, #32]
 8004150:	2300      	movs	r3, #0
 8004152:	6801      	ldr	r1, [r0, #0]
 8004154:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8004158:	461a      	mov	r2, r3
 800415a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800415e:	2301      	movs	r3, #1
 8004160:	1d01      	adds	r1, r0, #4
 8004162:	9304      	str	r3, [sp, #16]
 8004164:	920a      	str	r2, [sp, #40]	; 0x28
 8004166:	4691      	mov	r9, r2
 8004168:	920f      	str	r2, [sp, #60]	; 0x3c
 800416a:	9214      	str	r2, [sp, #80]	; 0x50
 800416c:	9211      	str	r2, [sp, #68]	; 0x44
 800416e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8004172:	af3d      	add	r7, sp, #244	; 0xf4
 8004174:	e5b9      	b.n	8003cea <_vfprintf_r+0x322>
 8004176:	9b08      	ldr	r3, [sp, #32]
 8004178:	681f      	ldr	r7, [r3, #0]
 800417a:	2500      	movs	r5, #0
 800417c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8004180:	1d1c      	adds	r4, r3, #4
 8004182:	2f00      	cmp	r7, #0
 8004184:	f000 8639 	beq.w	8004dfa <_vfprintf_r+0x1432>
 8004188:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800418c:	f000 8711 	beq.w	8004fb2 <_vfprintf_r+0x15ea>
 8004190:	464a      	mov	r2, r9
 8004192:	4629      	mov	r1, r5
 8004194:	4638      	mov	r0, r7
 8004196:	f7fc fac3 	bl	8000720 <memchr>
 800419a:	900a      	str	r0, [sp, #40]	; 0x28
 800419c:	2800      	cmp	r0, #0
 800419e:	f000 85e7 	beq.w	8004d70 <_vfprintf_r+0x13a8>
 80041a2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80041a4:	1bdb      	subs	r3, r3, r7
 80041a6:	9309      	str	r3, [sp, #36]	; 0x24
 80041a8:	46a9      	mov	r9, r5
 80041aa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80041ae:	9408      	str	r4, [sp, #32]
 80041b0:	9304      	str	r3, [sp, #16]
 80041b2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80041b6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80041ba:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80041be:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 80041c2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80041c6:	e58c      	b.n	8003ce2 <_vfprintf_r+0x31a>
 80041c8:	f048 0310 	orr.w	r3, r8, #16
 80041cc:	069a      	lsls	r2, r3, #26
 80041ce:	f53f aeb2 	bmi.w	8003f36 <_vfprintf_r+0x56e>
 80041d2:	9a08      	ldr	r2, [sp, #32]
 80041d4:	06df      	lsls	r7, r3, #27
 80041d6:	f102 0104 	add.w	r1, r2, #4
 80041da:	f100 837e 	bmi.w	80048da <_vfprintf_r+0xf12>
 80041de:	065d      	lsls	r5, r3, #25
 80041e0:	9a08      	ldr	r2, [sp, #32]
 80041e2:	f100 84e4 	bmi.w	8004bae <_vfprintf_r+0x11e6>
 80041e6:	059c      	lsls	r4, r3, #22
 80041e8:	f140 8377 	bpl.w	80048da <_vfprintf_r+0xf12>
 80041ec:	7814      	ldrb	r4, [r2, #0]
 80041ee:	9108      	str	r1, [sp, #32]
 80041f0:	2500      	movs	r5, #0
 80041f2:	2201      	movs	r2, #1
 80041f4:	e6a9      	b.n	8003f4a <_vfprintf_r+0x582>
 80041f6:	4b7c      	ldr	r3, [pc, #496]	; (80043e8 <_vfprintf_r+0xa20>)
 80041f8:	9317      	str	r3, [sp, #92]	; 0x5c
 80041fa:	f018 0f20 	tst.w	r8, #32
 80041fe:	f47f aeec 	bne.w	8003fda <_vfprintf_r+0x612>
 8004202:	9a08      	ldr	r2, [sp, #32]
 8004204:	f018 0f10 	tst.w	r8, #16
 8004208:	f102 0304 	add.w	r3, r2, #4
 800420c:	f040 8354 	bne.w	80048b8 <_vfprintf_r+0xef0>
 8004210:	f018 0f40 	tst.w	r8, #64	; 0x40
 8004214:	9a08      	ldr	r2, [sp, #32]
 8004216:	f040 84d0 	bne.w	8004bba <_vfprintf_r+0x11f2>
 800421a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800421e:	f000 834b 	beq.w	80048b8 <_vfprintf_r+0xef0>
 8004222:	7814      	ldrb	r4, [r2, #0]
 8004224:	9308      	str	r3, [sp, #32]
 8004226:	2500      	movs	r5, #0
 8004228:	e6e0      	b.n	8003fec <_vfprintf_r+0x624>
 800422a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800422e:	f89a 6000 	ldrb.w	r6, [sl]
 8004232:	2b00      	cmp	r3, #0
 8004234:	f47f ac46 	bne.w	8003ac4 <_vfprintf_r+0xfc>
 8004238:	2320      	movs	r3, #32
 800423a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800423e:	e441      	b.n	8003ac4 <_vfprintf_r+0xfc>
 8004240:	f89a 6000 	ldrb.w	r6, [sl]
 8004244:	2e6c      	cmp	r6, #108	; 0x6c
 8004246:	bf03      	ittte	eq
 8004248:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800424c:	f048 0820 	orreq.w	r8, r8, #32
 8004250:	f10a 0a01 	addeq.w	sl, sl, #1
 8004254:	f048 0810 	orrne.w	r8, r8, #16
 8004258:	e434      	b.n	8003ac4 <_vfprintf_r+0xfc>
 800425a:	9a08      	ldr	r2, [sp, #32]
 800425c:	f018 0f20 	tst.w	r8, #32
 8004260:	f852 3b04 	ldr.w	r3, [r2], #4
 8004264:	9208      	str	r2, [sp, #32]
 8004266:	f000 83a1 	beq.w	80049ac <_vfprintf_r+0xfe4>
 800426a:	9a05      	ldr	r2, [sp, #20]
 800426c:	4610      	mov	r0, r2
 800426e:	17d1      	asrs	r1, r2, #31
 8004270:	e9c3 0100 	strd	r0, r1, [r3]
 8004274:	4657      	mov	r7, sl
 8004276:	e64d      	b.n	8003f14 <_vfprintf_r+0x54c>
 8004278:	f89a 6000 	ldrb.w	r6, [sl]
 800427c:	2e68      	cmp	r6, #104	; 0x68
 800427e:	bf03      	ittte	eq
 8004280:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8004284:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8004288:	f10a 0a01 	addeq.w	sl, sl, #1
 800428c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8004290:	e418      	b.n	8003ac4 <_vfprintf_r+0xfc>
 8004292:	9908      	ldr	r1, [sp, #32]
 8004294:	4b55      	ldr	r3, [pc, #340]	; (80043ec <_vfprintf_r+0xa24>)
 8004296:	680c      	ldr	r4, [r1, #0]
 8004298:	9317      	str	r3, [sp, #92]	; 0x5c
 800429a:	f647 0230 	movw	r2, #30768	; 0x7830
 800429e:	3104      	adds	r1, #4
 80042a0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80042a4:	f048 0302 	orr.w	r3, r8, #2
 80042a8:	9108      	str	r1, [sp, #32]
 80042aa:	2500      	movs	r5, #0
 80042ac:	2202      	movs	r2, #2
 80042ae:	2678      	movs	r6, #120	; 0x78
 80042b0:	e64b      	b.n	8003f4a <_vfprintf_r+0x582>
 80042b2:	f048 0808 	orr.w	r8, r8, #8
 80042b6:	f89a 6000 	ldrb.w	r6, [sl]
 80042ba:	e403      	b.n	8003ac4 <_vfprintf_r+0xfc>
 80042bc:	f048 0310 	orr.w	r3, r8, #16
 80042c0:	069f      	lsls	r7, r3, #26
 80042c2:	f53f acd1 	bmi.w	8003c68 <_vfprintf_r+0x2a0>
 80042c6:	9908      	ldr	r1, [sp, #32]
 80042c8:	06dd      	lsls	r5, r3, #27
 80042ca:	f101 0204 	add.w	r2, r1, #4
 80042ce:	f100 82fd 	bmi.w	80048cc <_vfprintf_r+0xf04>
 80042d2:	065c      	lsls	r4, r3, #25
 80042d4:	9908      	ldr	r1, [sp, #32]
 80042d6:	f100 8475 	bmi.w	8004bc4 <_vfprintf_r+0x11fc>
 80042da:	0598      	lsls	r0, r3, #22
 80042dc:	f140 82f6 	bpl.w	80048cc <_vfprintf_r+0xf04>
 80042e0:	f991 4000 	ldrsb.w	r4, [r1]
 80042e4:	9208      	str	r2, [sp, #32]
 80042e6:	17e5      	asrs	r5, r4, #31
 80042e8:	4620      	mov	r0, r4
 80042ea:	4629      	mov	r1, r5
 80042ec:	e4c7      	b.n	8003c7e <_vfprintf_r+0x2b6>
 80042ee:	9a08      	ldr	r2, [sp, #32]
 80042f0:	f018 0f10 	tst.w	r8, #16
 80042f4:	f102 0304 	add.w	r3, r2, #4
 80042f8:	f040 82e3 	bne.w	80048c2 <_vfprintf_r+0xefa>
 80042fc:	f018 0f40 	tst.w	r8, #64	; 0x40
 8004300:	9a08      	ldr	r2, [sp, #32]
 8004302:	f040 8467 	bne.w	8004bd4 <_vfprintf_r+0x120c>
 8004306:	f418 7f00 	tst.w	r8, #512	; 0x200
 800430a:	f000 82da 	beq.w	80048c2 <_vfprintf_r+0xefa>
 800430e:	7814      	ldrb	r4, [r2, #0]
 8004310:	9308      	str	r3, [sp, #32]
 8004312:	2500      	movs	r5, #0
 8004314:	e488      	b.n	8003c28 <_vfprintf_r+0x260>
 8004316:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800431a:	f002 fd45 	bl	8006da8 <__retarget_lock_release_recursive>
 800431e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004322:	9305      	str	r3, [sp, #20]
 8004324:	e443      	b.n	8003bae <_vfprintf_r+0x1e6>
 8004326:	2e00      	cmp	r6, #0
 8004328:	f43f adf8 	beq.w	8003f1c <_vfprintf_r+0x554>
 800432c:	2300      	movs	r3, #0
 800432e:	2101      	movs	r1, #1
 8004330:	461a      	mov	r2, r3
 8004332:	9104      	str	r1, [sp, #16]
 8004334:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8004338:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800433c:	930a      	str	r3, [sp, #40]	; 0x28
 800433e:	4699      	mov	r9, r3
 8004340:	930f      	str	r3, [sp, #60]	; 0x3c
 8004342:	9314      	str	r3, [sp, #80]	; 0x50
 8004344:	9311      	str	r3, [sp, #68]	; 0x44
 8004346:	9109      	str	r1, [sp, #36]	; 0x24
 8004348:	af3d      	add	r7, sp, #244	; 0xf4
 800434a:	e4ce      	b.n	8003cea <_vfprintf_r+0x322>
 800434c:	2e65      	cmp	r6, #101	; 0x65
 800434e:	f340 80ca 	ble.w	80044e6 <_vfprintf_r+0xb1e>
 8004352:	2200      	movs	r2, #0
 8004354:	2300      	movs	r3, #0
 8004356:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800435a:	f7fc fe55 	bl	8001008 <__aeabi_dcmpeq>
 800435e:	2800      	cmp	r0, #0
 8004360:	f000 8169 	beq.w	8004636 <_vfprintf_r+0xc6e>
 8004364:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004366:	4a22      	ldr	r2, [pc, #136]	; (80043f0 <_vfprintf_r+0xa28>)
 8004368:	f8cb 2000 	str.w	r2, [fp]
 800436c:	3301      	adds	r3, #1
 800436e:	3401      	adds	r4, #1
 8004370:	2201      	movs	r2, #1
 8004372:	2b07      	cmp	r3, #7
 8004374:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004378:	f8cb 2004 	str.w	r2, [fp, #4]
 800437c:	f300 8406 	bgt.w	8004b8c <_vfprintf_r+0x11c4>
 8004380:	f10b 0b08 	add.w	fp, fp, #8
 8004384:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004386:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004388:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800438a:	4293      	cmp	r3, r2
 800438c:	db03      	blt.n	8004396 <_vfprintf_r+0x9ce>
 800438e:	f018 0f01 	tst.w	r8, #1
 8004392:	f43f ad6a 	beq.w	8003e6a <_vfprintf_r+0x4a2>
 8004396:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004398:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800439a:	f8cb 2000 	str.w	r2, [fp]
 800439e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80043a0:	f8cb 2004 	str.w	r2, [fp, #4]
 80043a4:	3301      	adds	r3, #1
 80043a6:	4414      	add	r4, r2
 80043a8:	2b07      	cmp	r3, #7
 80043aa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80043ae:	f300 8517 	bgt.w	8004de0 <_vfprintf_r+0x1418>
 80043b2:	f10b 0b08 	add.w	fp, fp, #8
 80043b6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80043b8:	1e5d      	subs	r5, r3, #1
 80043ba:	2d00      	cmp	r5, #0
 80043bc:	f77f ad55 	ble.w	8003e6a <_vfprintf_r+0x4a2>
 80043c0:	2d10      	cmp	r5, #16
 80043c2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80043c4:	4b0b      	ldr	r3, [pc, #44]	; (80043f4 <_vfprintf_r+0xa2c>)
 80043c6:	f340 82e7 	ble.w	8004998 <_vfprintf_r+0xfd0>
 80043ca:	4619      	mov	r1, r3
 80043cc:	2610      	movs	r6, #16
 80043ce:	4623      	mov	r3, r4
 80043d0:	9f03      	ldr	r7, [sp, #12]
 80043d2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80043d6:	460c      	mov	r4, r1
 80043d8:	e014      	b.n	8004404 <_vfprintf_r+0xa3c>
 80043da:	bf00      	nop
 80043dc:	7fefffff 	.word	0x7fefffff
 80043e0:	0800a6f0 	.word	0x0800a6f0
 80043e4:	0800a6ec 	.word	0x0800a6ec
 80043e8:	0800a710 	.word	0x0800a710
 80043ec:	0800a6fc 	.word	0x0800a6fc
 80043f0:	0800a72c 	.word	0x0800a72c
 80043f4:	0800a740 	.word	0x0800a740
 80043f8:	f10b 0b08 	add.w	fp, fp, #8
 80043fc:	3d10      	subs	r5, #16
 80043fe:	2d10      	cmp	r5, #16
 8004400:	f340 82c7 	ble.w	8004992 <_vfprintf_r+0xfca>
 8004404:	3201      	adds	r2, #1
 8004406:	3310      	adds	r3, #16
 8004408:	2a07      	cmp	r2, #7
 800440a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800440e:	e9cb 4600 	strd	r4, r6, [fp]
 8004412:	ddf1      	ble.n	80043f8 <_vfprintf_r+0xa30>
 8004414:	aa2a      	add	r2, sp, #168	; 0xa8
 8004416:	4649      	mov	r1, r9
 8004418:	4638      	mov	r0, r7
 800441a:	f003 fe03 	bl	8008024 <__sprint_r>
 800441e:	2800      	cmp	r0, #0
 8004420:	d14c      	bne.n	80044bc <_vfprintf_r+0xaf4>
 8004422:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004426:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800442a:	e7e7      	b.n	80043fc <_vfprintf_r+0xa34>
 800442c:	9b06      	ldr	r3, [sp, #24]
 800442e:	9a04      	ldr	r2, [sp, #16]
 8004430:	1a9d      	subs	r5, r3, r2
 8004432:	2d00      	cmp	r5, #0
 8004434:	f77f acc9 	ble.w	8003dca <_vfprintf_r+0x402>
 8004438:	2d10      	cmp	r5, #16
 800443a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800443c:	4bbc      	ldr	r3, [pc, #752]	; (8004730 <_vfprintf_r+0xd68>)
 800443e:	dd27      	ble.n	8004490 <_vfprintf_r+0xac8>
 8004440:	4659      	mov	r1, fp
 8004442:	4620      	mov	r0, r4
 8004444:	46bb      	mov	fp, r7
 8004446:	461c      	mov	r4, r3
 8004448:	4637      	mov	r7, r6
 800444a:	9e07      	ldr	r6, [sp, #28]
 800444c:	e004      	b.n	8004458 <_vfprintf_r+0xa90>
 800444e:	3d10      	subs	r5, #16
 8004450:	2d10      	cmp	r5, #16
 8004452:	f101 0108 	add.w	r1, r1, #8
 8004456:	dd16      	ble.n	8004486 <_vfprintf_r+0xabe>
 8004458:	3201      	adds	r2, #1
 800445a:	3010      	adds	r0, #16
 800445c:	2310      	movs	r3, #16
 800445e:	2a07      	cmp	r2, #7
 8004460:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8004464:	600c      	str	r4, [r1, #0]
 8004466:	604b      	str	r3, [r1, #4]
 8004468:	ddf1      	ble.n	800444e <_vfprintf_r+0xa86>
 800446a:	aa2a      	add	r2, sp, #168	; 0xa8
 800446c:	4631      	mov	r1, r6
 800446e:	9803      	ldr	r0, [sp, #12]
 8004470:	f003 fdd8 	bl	8008024 <__sprint_r>
 8004474:	2800      	cmp	r0, #0
 8004476:	f040 80a8 	bne.w	80045ca <_vfprintf_r+0xc02>
 800447a:	3d10      	subs	r5, #16
 800447c:	2d10      	cmp	r5, #16
 800447e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8004482:	a92d      	add	r1, sp, #180	; 0xb4
 8004484:	dce8      	bgt.n	8004458 <_vfprintf_r+0xa90>
 8004486:	463e      	mov	r6, r7
 8004488:	4623      	mov	r3, r4
 800448a:	465f      	mov	r7, fp
 800448c:	4604      	mov	r4, r0
 800448e:	468b      	mov	fp, r1
 8004490:	3201      	adds	r2, #1
 8004492:	442c      	add	r4, r5
 8004494:	2a07      	cmp	r2, #7
 8004496:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800449a:	e9cb 3500 	strd	r3, r5, [fp]
 800449e:	f300 8292 	bgt.w	80049c6 <_vfprintf_r+0xffe>
 80044a2:	f10b 0b08 	add.w	fp, fp, #8
 80044a6:	e490      	b.n	8003dca <_vfprintf_r+0x402>
 80044a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80044aa:	9907      	ldr	r1, [sp, #28]
 80044ac:	9803      	ldr	r0, [sp, #12]
 80044ae:	f003 fdb9 	bl	8008024 <__sprint_r>
 80044b2:	2800      	cmp	r0, #0
 80044b4:	f43f ad23 	beq.w	8003efe <_vfprintf_r+0x536>
 80044b8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80044bc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80044be:	b111      	cbz	r1, 80044c6 <_vfprintf_r+0xafe>
 80044c0:	9803      	ldr	r0, [sp, #12]
 80044c2:	f002 f9c1 	bl	8006848 <_free_r>
 80044c6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80044ca:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80044ce:	07d0      	lsls	r0, r2, #31
 80044d0:	d402      	bmi.n	80044d8 <_vfprintf_r+0xb10>
 80044d2:	0599      	lsls	r1, r3, #22
 80044d4:	f140 81d0 	bpl.w	8004878 <_vfprintf_r+0xeb0>
 80044d8:	065a      	lsls	r2, r3, #25
 80044da:	f53f ab65 	bmi.w	8003ba8 <_vfprintf_r+0x1e0>
 80044de:	9805      	ldr	r0, [sp, #20]
 80044e0:	b057      	add	sp, #348	; 0x15c
 80044e2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80044e6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80044e8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80044ea:	2a01      	cmp	r2, #1
 80044ec:	f104 0401 	add.w	r4, r4, #1
 80044f0:	f103 0501 	add.w	r5, r3, #1
 80044f4:	f10b 0608 	add.w	r6, fp, #8
 80044f8:	f340 811c 	ble.w	8004734 <_vfprintf_r+0xd6c>
 80044fc:	2301      	movs	r3, #1
 80044fe:	2d07      	cmp	r5, #7
 8004500:	f8cb 7000 	str.w	r7, [fp]
 8004504:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8004508:	f8cb 3004 	str.w	r3, [fp, #4]
 800450c:	f300 81bb 	bgt.w	8004886 <_vfprintf_r+0xebe>
 8004510:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004512:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8004514:	1c69      	adds	r1, r5, #1
 8004516:	441c      	add	r4, r3
 8004518:	2907      	cmp	r1, #7
 800451a:	910b      	str	r1, [sp, #44]	; 0x2c
 800451c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8004520:	e9c6 2300 	strd	r2, r3, [r6]
 8004524:	f300 81bb 	bgt.w	800489e <_vfprintf_r+0xed6>
 8004528:	3608      	adds	r6, #8
 800452a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800452c:	1c53      	adds	r3, r2, #1
 800452e:	461d      	mov	r5, r3
 8004530:	9509      	str	r5, [sp, #36]	; 0x24
 8004532:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8004534:	930e      	str	r3, [sp, #56]	; 0x38
 8004536:	2200      	movs	r2, #0
 8004538:	2300      	movs	r3, #0
 800453a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800453e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8004542:	f106 0b08 	add.w	fp, r6, #8
 8004546:	f7fc fd5f 	bl	8001008 <__aeabi_dcmpeq>
 800454a:	2800      	cmp	r0, #0
 800454c:	f040 80c2 	bne.w	80046d4 <_vfprintf_r+0xd0c>
 8004550:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8004552:	f8c6 9004 	str.w	r9, [r6, #4]
 8004556:	3701      	adds	r7, #1
 8004558:	444c      	add	r4, r9
 800455a:	2d07      	cmp	r5, #7
 800455c:	6037      	str	r7, [r6, #0]
 800455e:	942c      	str	r4, [sp, #176]	; 0xb0
 8004560:	952b      	str	r5, [sp, #172]	; 0xac
 8004562:	f300 80f9 	bgt.w	8004758 <_vfprintf_r+0xd90>
 8004566:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004568:	f106 0310 	add.w	r3, r6, #16
 800456c:	3202      	adds	r2, #2
 800456e:	465e      	mov	r6, fp
 8004570:	9209      	str	r2, [sp, #36]	; 0x24
 8004572:	469b      	mov	fp, r3
 8004574:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8004576:	6072      	str	r2, [r6, #4]
 8004578:	4414      	add	r4, r2
 800457a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800457c:	942c      	str	r4, [sp, #176]	; 0xb0
 800457e:	ab26      	add	r3, sp, #152	; 0x98
 8004580:	2a07      	cmp	r2, #7
 8004582:	922b      	str	r2, [sp, #172]	; 0xac
 8004584:	6033      	str	r3, [r6, #0]
 8004586:	f77f ac70 	ble.w	8003e6a <_vfprintf_r+0x4a2>
 800458a:	aa2a      	add	r2, sp, #168	; 0xa8
 800458c:	9907      	ldr	r1, [sp, #28]
 800458e:	9803      	ldr	r0, [sp, #12]
 8004590:	f003 fd48 	bl	8008024 <__sprint_r>
 8004594:	2800      	cmp	r0, #0
 8004596:	d18f      	bne.n	80044b8 <_vfprintf_r+0xaf0>
 8004598:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800459a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800459e:	e464      	b.n	8003e6a <_vfprintf_r+0x4a2>
 80045a0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80045a2:	af56      	add	r7, sp, #344	; 0x158
 80045a4:	0923      	lsrs	r3, r4, #4
 80045a6:	f004 010f 	and.w	r1, r4, #15
 80045aa:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80045ae:	092a      	lsrs	r2, r5, #4
 80045b0:	461c      	mov	r4, r3
 80045b2:	4615      	mov	r5, r2
 80045b4:	5c43      	ldrb	r3, [r0, r1]
 80045b6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80045ba:	ea54 0305 	orrs.w	r3, r4, r5
 80045be:	d1f1      	bne.n	80045a4 <_vfprintf_r+0xbdc>
 80045c0:	9b04      	ldr	r3, [sp, #16]
 80045c2:	1bdb      	subs	r3, r3, r7
 80045c4:	9309      	str	r3, [sp, #36]	; 0x24
 80045c6:	f7ff bb80 	b.w	8003cca <_vfprintf_r+0x302>
 80045ca:	46b1      	mov	r9, r6
 80045cc:	e776      	b.n	80044bc <_vfprintf_r+0xaf4>
 80045ce:	aa2a      	add	r2, sp, #168	; 0xa8
 80045d0:	9907      	ldr	r1, [sp, #28]
 80045d2:	9803      	ldr	r0, [sp, #12]
 80045d4:	f003 fd26 	bl	8008024 <__sprint_r>
 80045d8:	2800      	cmp	r0, #0
 80045da:	f47f af6d 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 80045de:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80045e0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80045e4:	f7ff bbdd 	b.w	8003da2 <_vfprintf_r+0x3da>
 80045e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80045ea:	9907      	ldr	r1, [sp, #28]
 80045ec:	9803      	ldr	r0, [sp, #12]
 80045ee:	f003 fd19 	bl	8008024 <__sprint_r>
 80045f2:	2800      	cmp	r0, #0
 80045f4:	f47f af60 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 80045f8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80045fa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80045fe:	f7ff bbe0 	b.w	8003dc2 <_vfprintf_r+0x3fa>
 8004602:	4698      	mov	r8, r3
 8004604:	2d00      	cmp	r5, #0
 8004606:	bf08      	it	eq
 8004608:	2c0a      	cmpeq	r4, #10
 800460a:	f080 8170 	bcs.w	80048ee <_vfprintf_r+0xf26>
 800460e:	af56      	add	r7, sp, #344	; 0x158
 8004610:	3430      	adds	r4, #48	; 0x30
 8004612:	2301      	movs	r3, #1
 8004614:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8004618:	9309      	str	r3, [sp, #36]	; 0x24
 800461a:	f7ff bb56 	b.w	8003cca <_vfprintf_r+0x302>
 800461e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004620:	9907      	ldr	r1, [sp, #28]
 8004622:	9803      	ldr	r0, [sp, #12]
 8004624:	f003 fcfe 	bl	8008024 <__sprint_r>
 8004628:	2800      	cmp	r0, #0
 800462a:	f47f af45 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 800462e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004630:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004634:	e406      	b.n	8003e44 <_vfprintf_r+0x47c>
 8004636:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004638:	2b00      	cmp	r3, #0
 800463a:	f340 8273 	ble.w	8004b24 <_vfprintf_r+0x115c>
 800463e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8004642:	4293      	cmp	r3, r2
 8004644:	bfa8      	it	ge
 8004646:	4613      	movge	r3, r2
 8004648:	2b00      	cmp	r3, #0
 800464a:	461d      	mov	r5, r3
 800464c:	dd0d      	ble.n	800466a <_vfprintf_r+0xca2>
 800464e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004650:	f8cb 7000 	str.w	r7, [fp]
 8004654:	3301      	adds	r3, #1
 8004656:	442c      	add	r4, r5
 8004658:	2b07      	cmp	r3, #7
 800465a:	942c      	str	r4, [sp, #176]	; 0xb0
 800465c:	f8cb 5004 	str.w	r5, [fp, #4]
 8004660:	932b      	str	r3, [sp, #172]	; 0xac
 8004662:	f300 82c1 	bgt.w	8004be8 <_vfprintf_r+0x1220>
 8004666:	f10b 0b08 	add.w	fp, fp, #8
 800466a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800466c:	2d00      	cmp	r5, #0
 800466e:	bfa8      	it	ge
 8004670:	1b5b      	subge	r3, r3, r5
 8004672:	2b00      	cmp	r3, #0
 8004674:	461d      	mov	r5, r3
 8004676:	f340 8099 	ble.w	80047ac <_vfprintf_r+0xde4>
 800467a:	2d10      	cmp	r5, #16
 800467c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800467e:	4b2c      	ldr	r3, [pc, #176]	; (8004730 <_vfprintf_r+0xd68>)
 8004680:	f340 83db 	ble.w	8004e3a <_vfprintf_r+0x1472>
 8004684:	4618      	mov	r0, r3
 8004686:	4621      	mov	r1, r4
 8004688:	465b      	mov	r3, fp
 800468a:	2610      	movs	r6, #16
 800468c:	46bb      	mov	fp, r7
 800468e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004692:	9c07      	ldr	r4, [sp, #28]
 8004694:	4607      	mov	r7, r0
 8004696:	e004      	b.n	80046a2 <_vfprintf_r+0xcda>
 8004698:	3308      	adds	r3, #8
 800469a:	3d10      	subs	r5, #16
 800469c:	2d10      	cmp	r5, #16
 800469e:	f340 83c7 	ble.w	8004e30 <_vfprintf_r+0x1468>
 80046a2:	3201      	adds	r2, #1
 80046a4:	3110      	adds	r1, #16
 80046a6:	2a07      	cmp	r2, #7
 80046a8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80046ac:	e9c3 7600 	strd	r7, r6, [r3]
 80046b0:	ddf2      	ble.n	8004698 <_vfprintf_r+0xcd0>
 80046b2:	aa2a      	add	r2, sp, #168	; 0xa8
 80046b4:	4621      	mov	r1, r4
 80046b6:	4648      	mov	r0, r9
 80046b8:	f003 fcb4 	bl	8008024 <__sprint_r>
 80046bc:	2800      	cmp	r0, #0
 80046be:	f040 84a5 	bne.w	800500c <_vfprintf_r+0x1644>
 80046c2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80046c6:	ab2d      	add	r3, sp, #180	; 0xb4
 80046c8:	e7e7      	b.n	800469a <_vfprintf_r+0xcd2>
 80046ca:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80046ce:	af56      	add	r7, sp, #344	; 0x158
 80046d0:	f7ff bafb 	b.w	8003cca <_vfprintf_r+0x302>
 80046d4:	f1b9 0f00 	cmp.w	r9, #0
 80046d8:	f77f af4c 	ble.w	8004574 <_vfprintf_r+0xbac>
 80046dc:	f1b9 0f10 	cmp.w	r9, #16
 80046e0:	4b13      	ldr	r3, [pc, #76]	; (8004730 <_vfprintf_r+0xd68>)
 80046e2:	f340 8659 	ble.w	8005398 <_vfprintf_r+0x19d0>
 80046e6:	4619      	mov	r1, r3
 80046e8:	4622      	mov	r2, r4
 80046ea:	4633      	mov	r3, r6
 80046ec:	2710      	movs	r7, #16
 80046ee:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80046f2:	9c07      	ldr	r4, [sp, #28]
 80046f4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80046f6:	460e      	mov	r6, r1
 80046f8:	e007      	b.n	800470a <_vfprintf_r+0xd42>
 80046fa:	3308      	adds	r3, #8
 80046fc:	f1a9 0910 	sub.w	r9, r9, #16
 8004700:	f1b9 0f10 	cmp.w	r9, #16
 8004704:	f340 8353 	ble.w	8004dae <_vfprintf_r+0x13e6>
 8004708:	3501      	adds	r5, #1
 800470a:	3210      	adds	r2, #16
 800470c:	2d07      	cmp	r5, #7
 800470e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8004712:	e9c3 6700 	strd	r6, r7, [r3]
 8004716:	ddf0      	ble.n	80046fa <_vfprintf_r+0xd32>
 8004718:	aa2a      	add	r2, sp, #168	; 0xa8
 800471a:	4621      	mov	r1, r4
 800471c:	4658      	mov	r0, fp
 800471e:	f003 fc81 	bl	8008024 <__sprint_r>
 8004722:	2800      	cmp	r0, #0
 8004724:	f040 8472 	bne.w	800500c <_vfprintf_r+0x1644>
 8004728:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800472c:	ab2d      	add	r3, sp, #180	; 0xb4
 800472e:	e7e5      	b.n	80046fc <_vfprintf_r+0xd34>
 8004730:	0800a740 	.word	0x0800a740
 8004734:	f018 0f01 	tst.w	r8, #1
 8004738:	f47f aee0 	bne.w	80044fc <_vfprintf_r+0xb34>
 800473c:	2201      	movs	r2, #1
 800473e:	2d07      	cmp	r5, #7
 8004740:	f8cb 7000 	str.w	r7, [fp]
 8004744:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8004748:	f8cb 2004 	str.w	r2, [fp, #4]
 800474c:	dc04      	bgt.n	8004758 <_vfprintf_r+0xd90>
 800474e:	3302      	adds	r3, #2
 8004750:	9309      	str	r3, [sp, #36]	; 0x24
 8004752:	f10b 0b10 	add.w	fp, fp, #16
 8004756:	e70d      	b.n	8004574 <_vfprintf_r+0xbac>
 8004758:	aa2a      	add	r2, sp, #168	; 0xa8
 800475a:	9907      	ldr	r1, [sp, #28]
 800475c:	9803      	ldr	r0, [sp, #12]
 800475e:	f003 fc61 	bl	8008024 <__sprint_r>
 8004762:	2800      	cmp	r0, #0
 8004764:	f47f aea8 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 8004768:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800476c:	3301      	adds	r3, #1
 800476e:	9309      	str	r3, [sp, #36]	; 0x24
 8004770:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8004774:	ae2d      	add	r6, sp, #180	; 0xb4
 8004776:	e6fd      	b.n	8004574 <_vfprintf_r+0xbac>
 8004778:	aa2a      	add	r2, sp, #168	; 0xa8
 800477a:	9907      	ldr	r1, [sp, #28]
 800477c:	9803      	ldr	r0, [sp, #12]
 800477e:	f003 fc51 	bl	8008024 <__sprint_r>
 8004782:	2800      	cmp	r0, #0
 8004784:	f47f ae98 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 8004788:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800478c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800478e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004792:	f7ff baf6 	b.w	8003d82 <_vfprintf_r+0x3ba>
 8004796:	aa2a      	add	r2, sp, #168	; 0xa8
 8004798:	9907      	ldr	r1, [sp, #28]
 800479a:	9803      	ldr	r0, [sp, #12]
 800479c:	f003 fc42 	bl	8008024 <__sprint_r>
 80047a0:	2800      	cmp	r0, #0
 80047a2:	f47f ae89 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 80047a6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80047a8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80047ac:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80047ae:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80047b2:	443b      	add	r3, r7
 80047b4:	4699      	mov	r9, r3
 80047b6:	f040 8357 	bne.w	8004e68 <_vfprintf_r+0x14a0>
 80047ba:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80047bc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80047be:	4293      	cmp	r3, r2
 80047c0:	db49      	blt.n	8004856 <_vfprintf_r+0xe8e>
 80047c2:	f018 0f01 	tst.w	r8, #1
 80047c6:	d146      	bne.n	8004856 <_vfprintf_r+0xe8e>
 80047c8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80047ca:	18bd      	adds	r5, r7, r2
 80047cc:	eba5 0509 	sub.w	r5, r5, r9
 80047d0:	1ad3      	subs	r3, r2, r3
 80047d2:	429d      	cmp	r5, r3
 80047d4:	bfa8      	it	ge
 80047d6:	461d      	movge	r5, r3
 80047d8:	2d00      	cmp	r5, #0
 80047da:	dd0d      	ble.n	80047f8 <_vfprintf_r+0xe30>
 80047dc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80047de:	f8cb 9000 	str.w	r9, [fp]
 80047e2:	3201      	adds	r2, #1
 80047e4:	442c      	add	r4, r5
 80047e6:	2a07      	cmp	r2, #7
 80047e8:	942c      	str	r4, [sp, #176]	; 0xb0
 80047ea:	f8cb 5004 	str.w	r5, [fp, #4]
 80047ee:	922b      	str	r2, [sp, #172]	; 0xac
 80047f0:	f300 8462 	bgt.w	80050b8 <_vfprintf_r+0x16f0>
 80047f4:	f10b 0b08 	add.w	fp, fp, #8
 80047f8:	2d00      	cmp	r5, #0
 80047fa:	bfac      	ite	ge
 80047fc:	1b5d      	subge	r5, r3, r5
 80047fe:	461d      	movlt	r5, r3
 8004800:	2d00      	cmp	r5, #0
 8004802:	f77f ab32 	ble.w	8003e6a <_vfprintf_r+0x4a2>
 8004806:	2d10      	cmp	r5, #16
 8004808:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800480a:	4bc5      	ldr	r3, [pc, #788]	; (8004b20 <_vfprintf_r+0x1158>)
 800480c:	f340 80c4 	ble.w	8004998 <_vfprintf_r+0xfd0>
 8004810:	4619      	mov	r1, r3
 8004812:	2610      	movs	r6, #16
 8004814:	4623      	mov	r3, r4
 8004816:	9f03      	ldr	r7, [sp, #12]
 8004818:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800481c:	460c      	mov	r4, r1
 800481e:	e005      	b.n	800482c <_vfprintf_r+0xe64>
 8004820:	f10b 0b08 	add.w	fp, fp, #8
 8004824:	3d10      	subs	r5, #16
 8004826:	2d10      	cmp	r5, #16
 8004828:	f340 80b3 	ble.w	8004992 <_vfprintf_r+0xfca>
 800482c:	3201      	adds	r2, #1
 800482e:	3310      	adds	r3, #16
 8004830:	2a07      	cmp	r2, #7
 8004832:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8004836:	e9cb 4600 	strd	r4, r6, [fp]
 800483a:	ddf1      	ble.n	8004820 <_vfprintf_r+0xe58>
 800483c:	aa2a      	add	r2, sp, #168	; 0xa8
 800483e:	4649      	mov	r1, r9
 8004840:	4638      	mov	r0, r7
 8004842:	f003 fbef 	bl	8008024 <__sprint_r>
 8004846:	2800      	cmp	r0, #0
 8004848:	f47f ae38 	bne.w	80044bc <_vfprintf_r+0xaf4>
 800484c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8004850:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004854:	e7e6      	b.n	8004824 <_vfprintf_r+0xe5c>
 8004856:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004858:	9916      	ldr	r1, [sp, #88]	; 0x58
 800485a:	f8cb 1000 	str.w	r1, [fp]
 800485e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8004860:	f8cb 1004 	str.w	r1, [fp, #4]
 8004864:	3201      	adds	r2, #1
 8004866:	440c      	add	r4, r1
 8004868:	2a07      	cmp	r2, #7
 800486a:	942c      	str	r4, [sp, #176]	; 0xb0
 800486c:	922b      	str	r2, [sp, #172]	; 0xac
 800486e:	f300 828c 	bgt.w	8004d8a <_vfprintf_r+0x13c2>
 8004872:	f10b 0b08 	add.w	fp, fp, #8
 8004876:	e7a7      	b.n	80047c8 <_vfprintf_r+0xe00>
 8004878:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800487c:	f002 fa94 	bl	8006da8 <__retarget_lock_release_recursive>
 8004880:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004884:	e628      	b.n	80044d8 <_vfprintf_r+0xb10>
 8004886:	aa2a      	add	r2, sp, #168	; 0xa8
 8004888:	9907      	ldr	r1, [sp, #28]
 800488a:	9803      	ldr	r0, [sp, #12]
 800488c:	f003 fbca 	bl	8008024 <__sprint_r>
 8004890:	2800      	cmp	r0, #0
 8004892:	f47f ae11 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 8004896:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800489a:	ae2d      	add	r6, sp, #180	; 0xb4
 800489c:	e638      	b.n	8004510 <_vfprintf_r+0xb48>
 800489e:	aa2a      	add	r2, sp, #168	; 0xa8
 80048a0:	9907      	ldr	r1, [sp, #28]
 80048a2:	9803      	ldr	r0, [sp, #12]
 80048a4:	f003 fbbe 	bl	8008024 <__sprint_r>
 80048a8:	2800      	cmp	r0, #0
 80048aa:	f47f ae05 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 80048ae:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80048b2:	ae2d      	add	r6, sp, #180	; 0xb4
 80048b4:	930b      	str	r3, [sp, #44]	; 0x2c
 80048b6:	e638      	b.n	800452a <_vfprintf_r+0xb62>
 80048b8:	6814      	ldr	r4, [r2, #0]
 80048ba:	9308      	str	r3, [sp, #32]
 80048bc:	2500      	movs	r5, #0
 80048be:	f7ff bb95 	b.w	8003fec <_vfprintf_r+0x624>
 80048c2:	6814      	ldr	r4, [r2, #0]
 80048c4:	9308      	str	r3, [sp, #32]
 80048c6:	2500      	movs	r5, #0
 80048c8:	f7ff b9ae 	b.w	8003c28 <_vfprintf_r+0x260>
 80048cc:	680c      	ldr	r4, [r1, #0]
 80048ce:	9208      	str	r2, [sp, #32]
 80048d0:	17e5      	asrs	r5, r4, #31
 80048d2:	4620      	mov	r0, r4
 80048d4:	4629      	mov	r1, r5
 80048d6:	f7ff b9d2 	b.w	8003c7e <_vfprintf_r+0x2b6>
 80048da:	6814      	ldr	r4, [r2, #0]
 80048dc:	9108      	str	r1, [sp, #32]
 80048de:	2201      	movs	r2, #1
 80048e0:	2500      	movs	r5, #0
 80048e2:	f7ff bb32 	b.w	8003f4a <_vfprintf_r+0x582>
 80048e6:	2a01      	cmp	r2, #1
 80048e8:	f47f ab3c 	bne.w	8003f64 <_vfprintf_r+0x59c>
 80048ec:	e68f      	b.n	800460e <_vfprintf_r+0xc46>
 80048ee:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80048f2:	2200      	movs	r2, #0
 80048f4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80048f8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80048fc:	af56      	add	r7, sp, #344	; 0x158
 80048fe:	4692      	mov	sl, r2
 8004900:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8004904:	461e      	mov	r6, r3
 8004906:	e00a      	b.n	800491e <_vfprintf_r+0xf56>
 8004908:	2300      	movs	r3, #0
 800490a:	4620      	mov	r0, r4
 800490c:	4629      	mov	r1, r5
 800490e:	220a      	movs	r2, #10
 8004910:	f7fb fc76 	bl	8000200 <__aeabi_uldivmod>
 8004914:	4604      	mov	r4, r0
 8004916:	460d      	mov	r5, r1
 8004918:	ea54 0305 	orrs.w	r3, r4, r5
 800491c:	d029      	beq.n	8004972 <_vfprintf_r+0xfaa>
 800491e:	220a      	movs	r2, #10
 8004920:	2300      	movs	r3, #0
 8004922:	4620      	mov	r0, r4
 8004924:	4629      	mov	r1, r5
 8004926:	f7fb fc6b 	bl	8000200 <__aeabi_uldivmod>
 800492a:	3230      	adds	r2, #48	; 0x30
 800492c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8004930:	f10a 0a01 	add.w	sl, sl, #1
 8004934:	3f01      	subs	r7, #1
 8004936:	2e00      	cmp	r6, #0
 8004938:	d0e6      	beq.n	8004908 <_vfprintf_r+0xf40>
 800493a:	f898 3000 	ldrb.w	r3, [r8]
 800493e:	459a      	cmp	sl, r3
 8004940:	d1e2      	bne.n	8004908 <_vfprintf_r+0xf40>
 8004942:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8004946:	d0df      	beq.n	8004908 <_vfprintf_r+0xf40>
 8004948:	2d00      	cmp	r5, #0
 800494a:	bf08      	it	eq
 800494c:	2c0a      	cmpeq	r4, #10
 800494e:	d3db      	bcc.n	8004908 <_vfprintf_r+0xf40>
 8004950:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8004952:	9918      	ldr	r1, [sp, #96]	; 0x60
 8004954:	1aff      	subs	r7, r7, r3
 8004956:	461a      	mov	r2, r3
 8004958:	4638      	mov	r0, r7
 800495a:	f003 faf5 	bl	8007f48 <strncpy>
 800495e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8004962:	2b00      	cmp	r3, #0
 8004964:	f000 8496 	beq.w	8005294 <_vfprintf_r+0x18cc>
 8004968:	f108 0801 	add.w	r8, r8, #1
 800496c:	f04f 0a00 	mov.w	sl, #0
 8004970:	e7ca      	b.n	8004908 <_vfprintf_r+0xf40>
 8004972:	9b04      	ldr	r3, [sp, #16]
 8004974:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8004978:	1bdb      	subs	r3, r3, r7
 800497a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800497e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8004980:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004984:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8004988:	9309      	str	r3, [sp, #36]	; 0x24
 800498a:	f7ff b99e 	b.w	8003cca <_vfprintf_r+0x302>
 800498e:	46c1      	mov	r9, r8
 8004990:	e594      	b.n	80044bc <_vfprintf_r+0xaf4>
 8004992:	4621      	mov	r1, r4
 8004994:	461c      	mov	r4, r3
 8004996:	460b      	mov	r3, r1
 8004998:	3201      	adds	r2, #1
 800499a:	442c      	add	r4, r5
 800499c:	2a07      	cmp	r2, #7
 800499e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80049a2:	e9cb 3500 	strd	r3, r5, [fp]
 80049a6:	f77f aa5e 	ble.w	8003e66 <_vfprintf_r+0x49e>
 80049aa:	e5ee      	b.n	800458a <_vfprintf_r+0xbc2>
 80049ac:	f018 0f10 	tst.w	r8, #16
 80049b0:	f040 80f8 	bne.w	8004ba4 <_vfprintf_r+0x11dc>
 80049b4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80049b8:	f000 8351 	beq.w	800505e <_vfprintf_r+0x1696>
 80049bc:	9a05      	ldr	r2, [sp, #20]
 80049be:	801a      	strh	r2, [r3, #0]
 80049c0:	4657      	mov	r7, sl
 80049c2:	f7ff baa7 	b.w	8003f14 <_vfprintf_r+0x54c>
 80049c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80049c8:	9907      	ldr	r1, [sp, #28]
 80049ca:	9803      	ldr	r0, [sp, #12]
 80049cc:	f003 fb2a 	bl	8008024 <__sprint_r>
 80049d0:	2800      	cmp	r0, #0
 80049d2:	f47f ad71 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 80049d6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80049d8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80049dc:	f7ff b9f5 	b.w	8003dca <_vfprintf_r+0x402>
 80049e0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80049e4:	4602      	mov	r2, r0
 80049e6:	460b      	mov	r3, r1
 80049e8:	f7fc fb40 	bl	800106c <__aeabi_dcmpun>
 80049ec:	2800      	cmp	r0, #0
 80049ee:	f040 8491 	bne.w	8005314 <_vfprintf_r+0x194c>
 80049f2:	2e61      	cmp	r6, #97	; 0x61
 80049f4:	f000 8111 	beq.w	8004c1a <_vfprintf_r+0x1252>
 80049f8:	2e41      	cmp	r6, #65	; 0x41
 80049fa:	f000 8377 	beq.w	80050ec <_vfprintf_r+0x1724>
 80049fe:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8004a02:	f026 0220 	bic.w	r2, r6, #32
 8004a06:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8004a0a:	930e      	str	r3, [sp, #56]	; 0x38
 8004a0c:	9204      	str	r2, [sp, #16]
 8004a0e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004a10:	f000 842d 	beq.w	800526e <_vfprintf_r+0x18a6>
 8004a14:	2a47      	cmp	r2, #71	; 0x47
 8004a16:	f000 8424 	beq.w	8005262 <_vfprintf_r+0x189a>
 8004a1a:	2b00      	cmp	r3, #0
 8004a1c:	f2c0 82f9 	blt.w	8005012 <_vfprintf_r+0x164a>
 8004a20:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8004a24:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8004a28:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8004a2c:	2e66      	cmp	r6, #102	; 0x66
 8004a2e:	f000 83eb 	beq.w	8005208 <_vfprintf_r+0x1840>
 8004a32:	2e46      	cmp	r6, #70	; 0x46
 8004a34:	f000 847e 	beq.w	8005334 <_vfprintf_r+0x196c>
 8004a38:	9b04      	ldr	r3, [sp, #16]
 8004a3a:	9803      	ldr	r0, [sp, #12]
 8004a3c:	2b45      	cmp	r3, #69	; 0x45
 8004a3e:	bf0c      	ite	eq
 8004a40:	f109 0501 	addeq.w	r5, r9, #1
 8004a44:	464d      	movne	r5, r9
 8004a46:	aa28      	add	r2, sp, #160	; 0xa0
 8004a48:	ab25      	add	r3, sp, #148	; 0x94
 8004a4a:	e9cd 3200 	strd	r3, r2, [sp]
 8004a4e:	2102      	movs	r1, #2
 8004a50:	ab24      	add	r3, sp, #144	; 0x90
 8004a52:	462a      	mov	r2, r5
 8004a54:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004a58:	f000 fe3e 	bl	80056d8 <_dtoa_r>
 8004a5c:	2e67      	cmp	r6, #103	; 0x67
 8004a5e:	4607      	mov	r7, r0
 8004a60:	f040 849c 	bne.w	800539c <_vfprintf_r+0x19d4>
 8004a64:	f018 0f01 	tst.w	r8, #1
 8004a68:	f040 83f9 	bne.w	800525e <_vfprintf_r+0x1896>
 8004a6c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004a6e:	4640      	mov	r0, r8
 8004a70:	1bdb      	subs	r3, r3, r7
 8004a72:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004a76:	9310      	str	r3, [sp, #64]	; 0x40
 8004a78:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004a7a:	9311      	str	r3, [sp, #68]	; 0x44
 8004a7c:	9b04      	ldr	r3, [sp, #16]
 8004a7e:	2b47      	cmp	r3, #71	; 0x47
 8004a80:	f000 81e7 	beq.w	8004e52 <_vfprintf_r+0x148a>
 8004a84:	9b04      	ldr	r3, [sp, #16]
 8004a86:	2b46      	cmp	r3, #70	; 0x46
 8004a88:	f000 8300 	beq.w	800508c <_vfprintf_r+0x16c4>
 8004a8c:	9904      	ldr	r1, [sp, #16]
 8004a8e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004a90:	b2f2      	uxtb	r2, r6
 8004a92:	2941      	cmp	r1, #65	; 0x41
 8004a94:	bf08      	it	eq
 8004a96:	320f      	addeq	r2, #15
 8004a98:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8004a9c:	bf06      	itte	eq
 8004a9e:	b2d2      	uxtbeq	r2, r2
 8004aa0:	2101      	moveq	r1, #1
 8004aa2:	2100      	movne	r1, #0
 8004aa4:	2b00      	cmp	r3, #0
 8004aa6:	9324      	str	r3, [sp, #144]	; 0x90
 8004aa8:	bfb8      	it	lt
 8004aaa:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8004aac:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8004ab0:	bfba      	itte	lt
 8004ab2:	f1c3 0301 	rsblt	r3, r3, #1
 8004ab6:	222d      	movlt	r2, #45	; 0x2d
 8004ab8:	222b      	movge	r2, #43	; 0x2b
 8004aba:	2b09      	cmp	r3, #9
 8004abc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8004ac0:	f300 83f9 	bgt.w	80052b6 <_vfprintf_r+0x18ee>
 8004ac4:	2900      	cmp	r1, #0
 8004ac6:	f040 8487 	bne.w	80053d8 <_vfprintf_r+0x1a10>
 8004aca:	2230      	movs	r2, #48	; 0x30
 8004acc:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8004ad0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8004ad4:	3330      	adds	r3, #48	; 0x30
 8004ad6:	7013      	strb	r3, [r2, #0]
 8004ad8:	1c53      	adds	r3, r2, #1
 8004ada:	aa26      	add	r2, sp, #152	; 0x98
 8004adc:	1a9b      	subs	r3, r3, r2
 8004ade:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004ae0:	9319      	str	r3, [sp, #100]	; 0x64
 8004ae2:	2a01      	cmp	r2, #1
 8004ae4:	4413      	add	r3, r2
 8004ae6:	9309      	str	r3, [sp, #36]	; 0x24
 8004ae8:	f340 8442 	ble.w	8005370 <_vfprintf_r+0x19a8>
 8004aec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004aee:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004af0:	4413      	add	r3, r2
 8004af2:	9309      	str	r3, [sp, #36]	; 0x24
 8004af4:	2300      	movs	r3, #0
 8004af6:	930f      	str	r3, [sp, #60]	; 0x3c
 8004af8:	9314      	str	r3, [sp, #80]	; 0x50
 8004afa:	9311      	str	r3, [sp, #68]	; 0x44
 8004afc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004afe:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8004b02:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004b06:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8004b0a:	9304      	str	r3, [sp, #16]
 8004b0c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b0e:	2b00      	cmp	r3, #0
 8004b10:	f040 8275 	bne.w	8004ffe <_vfprintf_r+0x1636>
 8004b14:	4699      	mov	r9, r3
 8004b16:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004b1a:	f7ff b8e2 	b.w	8003ce2 <_vfprintf_r+0x31a>
 8004b1e:	bf00      	nop
 8004b20:	0800a740 	.word	0x0800a740
 8004b24:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004b26:	49bd      	ldr	r1, [pc, #756]	; (8004e1c <_vfprintf_r+0x1454>)
 8004b28:	f8cb 1000 	str.w	r1, [fp]
 8004b2c:	3201      	adds	r2, #1
 8004b2e:	3401      	adds	r4, #1
 8004b30:	2101      	movs	r1, #1
 8004b32:	2a07      	cmp	r2, #7
 8004b34:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004b38:	f8cb 1004 	str.w	r1, [fp, #4]
 8004b3c:	dc60      	bgt.n	8004c00 <_vfprintf_r+0x1238>
 8004b3e:	f10b 0b08 	add.w	fp, fp, #8
 8004b42:	b92b      	cbnz	r3, 8004b50 <_vfprintf_r+0x1188>
 8004b44:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8004b46:	b91a      	cbnz	r2, 8004b50 <_vfprintf_r+0x1188>
 8004b48:	f018 0f01 	tst.w	r8, #1
 8004b4c:	f43f a98d 	beq.w	8003e6a <_vfprintf_r+0x4a2>
 8004b50:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004b52:	9916      	ldr	r1, [sp, #88]	; 0x58
 8004b54:	f8cb 1000 	str.w	r1, [fp]
 8004b58:	9915      	ldr	r1, [sp, #84]	; 0x54
 8004b5a:	f8cb 1004 	str.w	r1, [fp, #4]
 8004b5e:	3201      	adds	r2, #1
 8004b60:	440c      	add	r4, r1
 8004b62:	2a07      	cmp	r2, #7
 8004b64:	942c      	str	r4, [sp, #176]	; 0xb0
 8004b66:	922b      	str	r2, [sp, #172]	; 0xac
 8004b68:	f300 8282 	bgt.w	8005070 <_vfprintf_r+0x16a8>
 8004b6c:	f10b 0b08 	add.w	fp, fp, #8
 8004b70:	2b00      	cmp	r3, #0
 8004b72:	f2c0 82e7 	blt.w	8005144 <_vfprintf_r+0x177c>
 8004b76:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004b78:	3201      	adds	r2, #1
 8004b7a:	441c      	add	r4, r3
 8004b7c:	2a07      	cmp	r2, #7
 8004b7e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004b82:	e9cb 7300 	strd	r7, r3, [fp]
 8004b86:	f77f a96e 	ble.w	8003e66 <_vfprintf_r+0x49e>
 8004b8a:	e4fe      	b.n	800458a <_vfprintf_r+0xbc2>
 8004b8c:	aa2a      	add	r2, sp, #168	; 0xa8
 8004b8e:	9907      	ldr	r1, [sp, #28]
 8004b90:	9803      	ldr	r0, [sp, #12]
 8004b92:	f003 fa47 	bl	8008024 <__sprint_r>
 8004b96:	2800      	cmp	r0, #0
 8004b98:	f47f ac8e 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 8004b9c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004ba0:	f7ff bbf0 	b.w	8004384 <_vfprintf_r+0x9bc>
 8004ba4:	9a05      	ldr	r2, [sp, #20]
 8004ba6:	601a      	str	r2, [r3, #0]
 8004ba8:	4657      	mov	r7, sl
 8004baa:	f7ff b9b3 	b.w	8003f14 <_vfprintf_r+0x54c>
 8004bae:	8814      	ldrh	r4, [r2, #0]
 8004bb0:	9108      	str	r1, [sp, #32]
 8004bb2:	2500      	movs	r5, #0
 8004bb4:	2201      	movs	r2, #1
 8004bb6:	f7ff b9c8 	b.w	8003f4a <_vfprintf_r+0x582>
 8004bba:	8814      	ldrh	r4, [r2, #0]
 8004bbc:	9308      	str	r3, [sp, #32]
 8004bbe:	2500      	movs	r5, #0
 8004bc0:	f7ff ba14 	b.w	8003fec <_vfprintf_r+0x624>
 8004bc4:	f9b1 4000 	ldrsh.w	r4, [r1]
 8004bc8:	9208      	str	r2, [sp, #32]
 8004bca:	17e5      	asrs	r5, r4, #31
 8004bcc:	4620      	mov	r0, r4
 8004bce:	4629      	mov	r1, r5
 8004bd0:	f7ff b855 	b.w	8003c7e <_vfprintf_r+0x2b6>
 8004bd4:	8814      	ldrh	r4, [r2, #0]
 8004bd6:	9308      	str	r3, [sp, #32]
 8004bd8:	2500      	movs	r5, #0
 8004bda:	f7ff b825 	b.w	8003c28 <_vfprintf_r+0x260>
 8004bde:	222d      	movs	r2, #45	; 0x2d
 8004be0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004be4:	f7ff baa2 	b.w	800412c <_vfprintf_r+0x764>
 8004be8:	aa2a      	add	r2, sp, #168	; 0xa8
 8004bea:	9907      	ldr	r1, [sp, #28]
 8004bec:	9803      	ldr	r0, [sp, #12]
 8004bee:	f003 fa19 	bl	8008024 <__sprint_r>
 8004bf2:	2800      	cmp	r0, #0
 8004bf4:	f47f ac60 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 8004bf8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004bfa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004bfe:	e534      	b.n	800466a <_vfprintf_r+0xca2>
 8004c00:	aa2a      	add	r2, sp, #168	; 0xa8
 8004c02:	9907      	ldr	r1, [sp, #28]
 8004c04:	9803      	ldr	r0, [sp, #12]
 8004c06:	f003 fa0d 	bl	8008024 <__sprint_r>
 8004c0a:	2800      	cmp	r0, #0
 8004c0c:	f47f ac54 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 8004c10:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004c12:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004c14:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004c18:	e793      	b.n	8004b42 <_vfprintf_r+0x117a>
 8004c1a:	2330      	movs	r3, #48	; 0x30
 8004c1c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8004c20:	2378      	movs	r3, #120	; 0x78
 8004c22:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8004c26:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8004c2a:	f048 0402 	orr.w	r4, r8, #2
 8004c2e:	f300 82b0 	bgt.w	8005192 <_vfprintf_r+0x17ca>
 8004c32:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004c36:	930e      	str	r3, [sp, #56]	; 0x38
 8004c38:	f026 0320 	bic.w	r3, r6, #32
 8004c3c:	9304      	str	r3, [sp, #16]
 8004c3e:	2200      	movs	r2, #0
 8004c40:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004c42:	920a      	str	r2, [sp, #40]	; 0x28
 8004c44:	46a0      	mov	r8, r4
 8004c46:	af3d      	add	r7, sp, #244	; 0xf4
 8004c48:	2b00      	cmp	r3, #0
 8004c4a:	f2c0 81e3 	blt.w	8005014 <_vfprintf_r+0x164c>
 8004c4e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8004c52:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8004c56:	2300      	movs	r3, #0
 8004c58:	930b      	str	r3, [sp, #44]	; 0x2c
 8004c5a:	2e61      	cmp	r6, #97	; 0x61
 8004c5c:	f000 8255 	beq.w	800510a <_vfprintf_r+0x1742>
 8004c60:	2e41      	cmp	r6, #65	; 0x41
 8004c62:	f47f aee3 	bne.w	8004a2c <_vfprintf_r+0x1064>
 8004c66:	a824      	add	r0, sp, #144	; 0x90
 8004c68:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004c6c:	f003 f8e2 	bl	8007e34 <frexp>
 8004c70:	2200      	movs	r2, #0
 8004c72:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8004c76:	ec51 0b10 	vmov	r0, r1, d0
 8004c7a:	f7fb ff5d 	bl	8000b38 <__aeabi_dmul>
 8004c7e:	2200      	movs	r2, #0
 8004c80:	2300      	movs	r3, #0
 8004c82:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004c86:	f7fc f9bf 	bl	8001008 <__aeabi_dcmpeq>
 8004c8a:	2800      	cmp	r0, #0
 8004c8c:	f040 8305 	bne.w	800529a <_vfprintf_r+0x18d2>
 8004c90:	4b63      	ldr	r3, [pc, #396]	; (8004e20 <_vfprintf_r+0x1458>)
 8004c92:	9309      	str	r3, [sp, #36]	; 0x24
 8004c94:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8004c98:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8004c9c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8004ca0:	9721      	str	r7, [sp, #132]	; 0x84
 8004ca2:	46b9      	mov	r9, r7
 8004ca4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8004ca8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8004cac:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8004cb0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8004cb4:	e003      	b.n	8004cbe <_vfprintf_r+0x12f6>
 8004cb6:	f7fc f9a7 	bl	8001008 <__aeabi_dcmpeq>
 8004cba:	bb20      	cbnz	r0, 8004d06 <_vfprintf_r+0x133e>
 8004cbc:	46a9      	mov	r9, r5
 8004cbe:	2200      	movs	r2, #0
 8004cc0:	4b58      	ldr	r3, [pc, #352]	; (8004e24 <_vfprintf_r+0x145c>)
 8004cc2:	4630      	mov	r0, r6
 8004cc4:	4639      	mov	r1, r7
 8004cc6:	f7fb ff37 	bl	8000b38 <__aeabi_dmul>
 8004cca:	460f      	mov	r7, r1
 8004ccc:	4606      	mov	r6, r0
 8004cce:	f7fc f9e3 	bl	8001098 <__aeabi_d2iz>
 8004cd2:	4680      	mov	r8, r0
 8004cd4:	f7fb fec6 	bl	8000a64 <__aeabi_i2d>
 8004cd8:	4602      	mov	r2, r0
 8004cda:	460b      	mov	r3, r1
 8004cdc:	4630      	mov	r0, r6
 8004cde:	4639      	mov	r1, r7
 8004ce0:	f7fb fd72 	bl	80007c8 <__aeabi_dsub>
 8004ce4:	464d      	mov	r5, r9
 8004ce6:	f81a c008 	ldrb.w	ip, [sl, r8]
 8004cea:	f805 cb01 	strb.w	ip, [r5], #1
 8004cee:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8004cf2:	46a3      	mov	fp, r4
 8004cf4:	4606      	mov	r6, r0
 8004cf6:	460f      	mov	r7, r1
 8004cf8:	f04f 0200 	mov.w	r2, #0
 8004cfc:	f04f 0300 	mov.w	r3, #0
 8004d00:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8004d04:	d1d7      	bne.n	8004cb6 <_vfprintf_r+0x12ee>
 8004d06:	4630      	mov	r0, r6
 8004d08:	4639      	mov	r1, r7
 8004d0a:	2200      	movs	r2, #0
 8004d0c:	4b46      	ldr	r3, [pc, #280]	; (8004e28 <_vfprintf_r+0x1460>)
 8004d0e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8004d12:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8004d14:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8004d18:	4644      	mov	r4, r8
 8004d1a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8004d1e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8004d22:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8004d26:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8004d2a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8004d2c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8004d30:	f7fc f992 	bl	8001058 <__aeabi_dcmpgt>
 8004d34:	2800      	cmp	r0, #0
 8004d36:	f040 8176 	bne.w	8005026 <_vfprintf_r+0x165e>
 8004d3a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8004d3e:	2200      	movs	r2, #0
 8004d40:	4b39      	ldr	r3, [pc, #228]	; (8004e28 <_vfprintf_r+0x1460>)
 8004d42:	f7fc f961 	bl	8001008 <__aeabi_dcmpeq>
 8004d46:	b110      	cbz	r0, 8004d4e <_vfprintf_r+0x1386>
 8004d48:	07e2      	lsls	r2, r4, #31
 8004d4a:	f100 816c 	bmi.w	8005026 <_vfprintf_r+0x165e>
 8004d4e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004d50:	2b00      	cmp	r3, #0
 8004d52:	db07      	blt.n	8004d64 <_vfprintf_r+0x139c>
 8004d54:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004d56:	3301      	adds	r3, #1
 8004d58:	442b      	add	r3, r5
 8004d5a:	2230      	movs	r2, #48	; 0x30
 8004d5c:	f805 2b01 	strb.w	r2, [r5], #1
 8004d60:	42ab      	cmp	r3, r5
 8004d62:	d1fb      	bne.n	8004d5c <_vfprintf_r+0x1394>
 8004d64:	1beb      	subs	r3, r5, r7
 8004d66:	4640      	mov	r0, r8
 8004d68:	9310      	str	r3, [sp, #64]	; 0x40
 8004d6a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004d6e:	e683      	b.n	8004a78 <_vfprintf_r+0x10b0>
 8004d70:	f8cd 9010 	str.w	r9, [sp, #16]
 8004d74:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8004d78:	9408      	str	r4, [sp, #32]
 8004d7a:	4681      	mov	r9, r0
 8004d7c:	900f      	str	r0, [sp, #60]	; 0x3c
 8004d7e:	9014      	str	r0, [sp, #80]	; 0x50
 8004d80:	9011      	str	r0, [sp, #68]	; 0x44
 8004d82:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004d86:	f7fe bfac 	b.w	8003ce2 <_vfprintf_r+0x31a>
 8004d8a:	aa2a      	add	r2, sp, #168	; 0xa8
 8004d8c:	9907      	ldr	r1, [sp, #28]
 8004d8e:	9803      	ldr	r0, [sp, #12]
 8004d90:	f003 f948 	bl	8008024 <__sprint_r>
 8004d94:	2800      	cmp	r0, #0
 8004d96:	f47f ab8f 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 8004d9a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8004d9c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004d9e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004da2:	e511      	b.n	80047c8 <_vfprintf_r+0xe00>
 8004da4:	4252      	negs	r2, r2
 8004da6:	9206      	str	r2, [sp, #24]
 8004da8:	9308      	str	r3, [sp, #32]
 8004daa:	f7ff b96d 	b.w	8004088 <_vfprintf_r+0x6c0>
 8004dae:	4614      	mov	r4, r2
 8004db0:	4632      	mov	r2, r6
 8004db2:	461e      	mov	r6, r3
 8004db4:	4613      	mov	r3, r2
 8004db6:	462a      	mov	r2, r5
 8004db8:	3201      	adds	r2, #1
 8004dba:	9209      	str	r2, [sp, #36]	; 0x24
 8004dbc:	f106 0208 	add.w	r2, r6, #8
 8004dc0:	e9c6 3900 	strd	r3, r9, [r6]
 8004dc4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004dc6:	932b      	str	r3, [sp, #172]	; 0xac
 8004dc8:	444c      	add	r4, r9
 8004dca:	2b07      	cmp	r3, #7
 8004dcc:	942c      	str	r4, [sp, #176]	; 0xb0
 8004dce:	f73f acc3 	bgt.w	8004758 <_vfprintf_r+0xd90>
 8004dd2:	3301      	adds	r3, #1
 8004dd4:	9309      	str	r3, [sp, #36]	; 0x24
 8004dd6:	f102 0b08 	add.w	fp, r2, #8
 8004dda:	4616      	mov	r6, r2
 8004ddc:	f7ff bbca 	b.w	8004574 <_vfprintf_r+0xbac>
 8004de0:	aa2a      	add	r2, sp, #168	; 0xa8
 8004de2:	9907      	ldr	r1, [sp, #28]
 8004de4:	9803      	ldr	r0, [sp, #12]
 8004de6:	f003 f91d 	bl	8008024 <__sprint_r>
 8004dea:	2800      	cmp	r0, #0
 8004dec:	f47f ab64 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 8004df0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004df2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004df6:	f7ff bade 	b.w	80043b6 <_vfprintf_r+0x9ee>
 8004dfa:	464b      	mov	r3, r9
 8004dfc:	2b06      	cmp	r3, #6
 8004dfe:	bf28      	it	cs
 8004e00:	2306      	movcs	r3, #6
 8004e02:	46b9      	mov	r9, r7
 8004e04:	970f      	str	r7, [sp, #60]	; 0x3c
 8004e06:	9714      	str	r7, [sp, #80]	; 0x50
 8004e08:	9711      	str	r7, [sp, #68]	; 0x44
 8004e0a:	970a      	str	r7, [sp, #40]	; 0x28
 8004e0c:	463a      	mov	r2, r7
 8004e0e:	9304      	str	r3, [sp, #16]
 8004e10:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8004e14:	4f05      	ldr	r7, [pc, #20]	; (8004e2c <_vfprintf_r+0x1464>)
 8004e16:	f7fe bf64 	b.w	8003ce2 <_vfprintf_r+0x31a>
 8004e1a:	bf00      	nop
 8004e1c:	0800a72c 	.word	0x0800a72c
 8004e20:	0800a710 	.word	0x0800a710
 8004e24:	40300000 	.word	0x40300000
 8004e28:	3fe00000 	.word	0x3fe00000
 8004e2c:	0800a724 	.word	0x0800a724
 8004e30:	460c      	mov	r4, r1
 8004e32:	4639      	mov	r1, r7
 8004e34:	465f      	mov	r7, fp
 8004e36:	469b      	mov	fp, r3
 8004e38:	460b      	mov	r3, r1
 8004e3a:	3201      	adds	r2, #1
 8004e3c:	442c      	add	r4, r5
 8004e3e:	2a07      	cmp	r2, #7
 8004e40:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004e44:	e9cb 3500 	strd	r3, r5, [fp]
 8004e48:	f73f aca5 	bgt.w	8004796 <_vfprintf_r+0xdce>
 8004e4c:	f10b 0b08 	add.w	fp, fp, #8
 8004e50:	e4ac      	b.n	80047ac <_vfprintf_r+0xde4>
 8004e52:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004e54:	1cda      	adds	r2, r3, #3
 8004e56:	db02      	blt.n	8004e5e <_vfprintf_r+0x1496>
 8004e58:	4599      	cmp	r9, r3
 8004e5a:	f280 80b5 	bge.w	8004fc8 <_vfprintf_r+0x1600>
 8004e5e:	3e02      	subs	r6, #2
 8004e60:	f026 0320 	bic.w	r3, r6, #32
 8004e64:	9304      	str	r3, [sp, #16]
 8004e66:	e611      	b.n	8004a8c <_vfprintf_r+0x10c4>
 8004e68:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004e6a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8004e6e:	465a      	mov	r2, fp
 8004e70:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8004e74:	18fb      	adds	r3, r7, r3
 8004e76:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8004e7a:	970c      	str	r7, [sp, #48]	; 0x30
 8004e7c:	4eaf      	ldr	r6, [pc, #700]	; (800513c <_vfprintf_r+0x1774>)
 8004e7e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8004e82:	9309      	str	r3, [sp, #36]	; 0x24
 8004e84:	464f      	mov	r7, r9
 8004e86:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8004e8a:	4621      	mov	r1, r4
 8004e8c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004e8e:	2b00      	cmp	r3, #0
 8004e90:	d05b      	beq.n	8004f4a <_vfprintf_r+0x1582>
 8004e92:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004e94:	2b00      	cmp	r3, #0
 8004e96:	d154      	bne.n	8004f42 <_vfprintf_r+0x157a>
 8004e98:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004e9a:	3b01      	subs	r3, #1
 8004e9c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8004ea0:	9314      	str	r3, [sp, #80]	; 0x50
 8004ea2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004ea4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8004ea6:	6010      	str	r0, [r2, #0]
 8004ea8:	3301      	adds	r3, #1
 8004eaa:	4459      	add	r1, fp
 8004eac:	2b07      	cmp	r3, #7
 8004eae:	912c      	str	r1, [sp, #176]	; 0xb0
 8004eb0:	f8c2 b004 	str.w	fp, [r2, #4]
 8004eb4:	932b      	str	r3, [sp, #172]	; 0xac
 8004eb6:	dc68      	bgt.n	8004f8a <_vfprintf_r+0x15c2>
 8004eb8:	3208      	adds	r2, #8
 8004eba:	9809      	ldr	r0, [sp, #36]	; 0x24
 8004ebc:	f898 3000 	ldrb.w	r3, [r8]
 8004ec0:	1bc5      	subs	r5, r0, r7
 8004ec2:	429d      	cmp	r5, r3
 8004ec4:	bfa8      	it	ge
 8004ec6:	461d      	movge	r5, r3
 8004ec8:	2d00      	cmp	r5, #0
 8004eca:	dd0b      	ble.n	8004ee4 <_vfprintf_r+0x151c>
 8004ecc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004ece:	6017      	str	r7, [r2, #0]
 8004ed0:	3301      	adds	r3, #1
 8004ed2:	4429      	add	r1, r5
 8004ed4:	2b07      	cmp	r3, #7
 8004ed6:	912c      	str	r1, [sp, #176]	; 0xb0
 8004ed8:	6055      	str	r5, [r2, #4]
 8004eda:	932b      	str	r3, [sp, #172]	; 0xac
 8004edc:	dc5e      	bgt.n	8004f9c <_vfprintf_r+0x15d4>
 8004ede:	f898 3000 	ldrb.w	r3, [r8]
 8004ee2:	3208      	adds	r2, #8
 8004ee4:	2d00      	cmp	r5, #0
 8004ee6:	bfac      	ite	ge
 8004ee8:	1b5d      	subge	r5, r3, r5
 8004eea:	461d      	movlt	r5, r3
 8004eec:	2d00      	cmp	r5, #0
 8004eee:	dd26      	ble.n	8004f3e <_vfprintf_r+0x1576>
 8004ef0:	2d10      	cmp	r5, #16
 8004ef2:	982b      	ldr	r0, [sp, #172]	; 0xac
 8004ef4:	dd3c      	ble.n	8004f70 <_vfprintf_r+0x15a8>
 8004ef6:	2410      	movs	r4, #16
 8004ef8:	e003      	b.n	8004f02 <_vfprintf_r+0x153a>
 8004efa:	3208      	adds	r2, #8
 8004efc:	3d10      	subs	r5, #16
 8004efe:	2d10      	cmp	r5, #16
 8004f00:	dd36      	ble.n	8004f70 <_vfprintf_r+0x15a8>
 8004f02:	3001      	adds	r0, #1
 8004f04:	3110      	adds	r1, #16
 8004f06:	2807      	cmp	r0, #7
 8004f08:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8004f0c:	e9c2 6400 	strd	r6, r4, [r2]
 8004f10:	ddf3      	ble.n	8004efa <_vfprintf_r+0x1532>
 8004f12:	aa2a      	add	r2, sp, #168	; 0xa8
 8004f14:	4651      	mov	r1, sl
 8004f16:	4648      	mov	r0, r9
 8004f18:	f003 f884 	bl	8008024 <__sprint_r>
 8004f1c:	2800      	cmp	r0, #0
 8004f1e:	d150      	bne.n	8004fc2 <_vfprintf_r+0x15fa>
 8004f20:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8004f24:	aa2d      	add	r2, sp, #180	; 0xb4
 8004f26:	e7e9      	b.n	8004efc <_vfprintf_r+0x1534>
 8004f28:	aa2a      	add	r2, sp, #168	; 0xa8
 8004f2a:	4651      	mov	r1, sl
 8004f2c:	4648      	mov	r0, r9
 8004f2e:	f003 f879 	bl	8008024 <__sprint_r>
 8004f32:	2800      	cmp	r0, #0
 8004f34:	d145      	bne.n	8004fc2 <_vfprintf_r+0x15fa>
 8004f36:	f898 3000 	ldrb.w	r3, [r8]
 8004f3a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004f3c:	aa2d      	add	r2, sp, #180	; 0xb4
 8004f3e:	441f      	add	r7, r3
 8004f40:	e7a4      	b.n	8004e8c <_vfprintf_r+0x14c4>
 8004f42:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004f44:	3b01      	subs	r3, #1
 8004f46:	930f      	str	r3, [sp, #60]	; 0x3c
 8004f48:	e7ab      	b.n	8004ea2 <_vfprintf_r+0x14da>
 8004f4a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8004f4c:	2b00      	cmp	r3, #0
 8004f4e:	d1f8      	bne.n	8004f42 <_vfprintf_r+0x157a>
 8004f50:	46b9      	mov	r9, r7
 8004f52:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004f54:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8004f56:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8004f5a:	18fb      	adds	r3, r7, r3
 8004f5c:	4599      	cmp	r9, r3
 8004f5e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8004f62:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8004f66:	4693      	mov	fp, r2
 8004f68:	460c      	mov	r4, r1
 8004f6a:	bf28      	it	cs
 8004f6c:	4699      	movcs	r9, r3
 8004f6e:	e424      	b.n	80047ba <_vfprintf_r+0xdf2>
 8004f70:	3001      	adds	r0, #1
 8004f72:	4429      	add	r1, r5
 8004f74:	2807      	cmp	r0, #7
 8004f76:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8004f7a:	e9c2 6500 	strd	r6, r5, [r2]
 8004f7e:	dcd3      	bgt.n	8004f28 <_vfprintf_r+0x1560>
 8004f80:	f898 3000 	ldrb.w	r3, [r8]
 8004f84:	3208      	adds	r2, #8
 8004f86:	441f      	add	r7, r3
 8004f88:	e780      	b.n	8004e8c <_vfprintf_r+0x14c4>
 8004f8a:	aa2a      	add	r2, sp, #168	; 0xa8
 8004f8c:	4651      	mov	r1, sl
 8004f8e:	4648      	mov	r0, r9
 8004f90:	f003 f848 	bl	8008024 <__sprint_r>
 8004f94:	b9a8      	cbnz	r0, 8004fc2 <_vfprintf_r+0x15fa>
 8004f96:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004f98:	aa2d      	add	r2, sp, #180	; 0xb4
 8004f9a:	e78e      	b.n	8004eba <_vfprintf_r+0x14f2>
 8004f9c:	aa2a      	add	r2, sp, #168	; 0xa8
 8004f9e:	4651      	mov	r1, sl
 8004fa0:	4648      	mov	r0, r9
 8004fa2:	f003 f83f 	bl	8008024 <__sprint_r>
 8004fa6:	b960      	cbnz	r0, 8004fc2 <_vfprintf_r+0x15fa>
 8004fa8:	f898 3000 	ldrb.w	r3, [r8]
 8004fac:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8004fae:	aa2d      	add	r2, sp, #180	; 0xb4
 8004fb0:	e798      	b.n	8004ee4 <_vfprintf_r+0x151c>
 8004fb2:	4638      	mov	r0, r7
 8004fb4:	f7fb fb44 	bl	8000640 <strlen>
 8004fb8:	46a9      	mov	r9, r5
 8004fba:	4603      	mov	r3, r0
 8004fbc:	9009      	str	r0, [sp, #36]	; 0x24
 8004fbe:	f7ff b8f4 	b.w	80041aa <_vfprintf_r+0x7e2>
 8004fc2:	46d1      	mov	r9, sl
 8004fc4:	f7ff ba7a 	b.w	80044bc <_vfprintf_r+0xaf4>
 8004fc8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8004fca:	4619      	mov	r1, r3
 8004fcc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004fce:	4299      	cmp	r1, r3
 8004fd0:	f300 8082 	bgt.w	80050d8 <_vfprintf_r+0x1710>
 8004fd4:	07c4      	lsls	r4, r0, #31
 8004fd6:	f140 816b 	bpl.w	80052b0 <_vfprintf_r+0x18e8>
 8004fda:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004fdc:	4413      	add	r3, r2
 8004fde:	9309      	str	r3, [sp, #36]	; 0x24
 8004fe0:	0541      	lsls	r1, r0, #21
 8004fe2:	d503      	bpl.n	8004fec <_vfprintf_r+0x1624>
 8004fe4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004fe6:	2b00      	cmp	r3, #0
 8004fe8:	f300 80e6 	bgt.w	80051b8 <_vfprintf_r+0x17f0>
 8004fec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fee:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004ff2:	9304      	str	r3, [sp, #16]
 8004ff4:	2667      	movs	r6, #103	; 0x67
 8004ff6:	2300      	movs	r3, #0
 8004ff8:	930f      	str	r3, [sp, #60]	; 0x3c
 8004ffa:	9314      	str	r3, [sp, #80]	; 0x50
 8004ffc:	e586      	b.n	8004b0c <_vfprintf_r+0x1144>
 8004ffe:	222d      	movs	r2, #45	; 0x2d
 8005000:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8005004:	f04f 0900 	mov.w	r9, #0
 8005008:	f7fe be6c 	b.w	8003ce4 <_vfprintf_r+0x31c>
 800500c:	46a1      	mov	r9, r4
 800500e:	f7ff ba55 	b.w	80044bc <_vfprintf_r+0xaf4>
 8005012:	900a      	str	r0, [sp, #40]	; 0x28
 8005014:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8005018:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800501c:	931f      	str	r3, [sp, #124]	; 0x7c
 800501e:	232d      	movs	r3, #45	; 0x2d
 8005020:	911e      	str	r1, [sp, #120]	; 0x78
 8005022:	930b      	str	r3, [sp, #44]	; 0x2c
 8005024:	e619      	b.n	8004c5a <_vfprintf_r+0x1292>
 8005026:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005028:	9328      	str	r3, [sp, #160]	; 0xa0
 800502a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800502c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8005030:	7bd9      	ldrb	r1, [r3, #15]
 8005032:	4291      	cmp	r1, r2
 8005034:	462b      	mov	r3, r5
 8005036:	d109      	bne.n	800504c <_vfprintf_r+0x1684>
 8005038:	2030      	movs	r0, #48	; 0x30
 800503a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800503e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005040:	1e5a      	subs	r2, r3, #1
 8005042:	9228      	str	r2, [sp, #160]	; 0xa0
 8005044:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8005048:	4291      	cmp	r1, r2
 800504a:	d0f6      	beq.n	800503a <_vfprintf_r+0x1672>
 800504c:	2a39      	cmp	r2, #57	; 0x39
 800504e:	bf0b      	itete	eq
 8005050:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8005052:	3201      	addne	r2, #1
 8005054:	7a92      	ldrbeq	r2, [r2, #10]
 8005056:	b2d2      	uxtbne	r2, r2
 8005058:	f803 2c01 	strb.w	r2, [r3, #-1]
 800505c:	e682      	b.n	8004d64 <_vfprintf_r+0x139c>
 800505e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8005062:	f43f ad9f 	beq.w	8004ba4 <_vfprintf_r+0x11dc>
 8005066:	9a05      	ldr	r2, [sp, #20]
 8005068:	701a      	strb	r2, [r3, #0]
 800506a:	4657      	mov	r7, sl
 800506c:	f7fe bf52 	b.w	8003f14 <_vfprintf_r+0x54c>
 8005070:	aa2a      	add	r2, sp, #168	; 0xa8
 8005072:	9907      	ldr	r1, [sp, #28]
 8005074:	9803      	ldr	r0, [sp, #12]
 8005076:	f002 ffd5 	bl	8008024 <__sprint_r>
 800507a:	2800      	cmp	r0, #0
 800507c:	f47f aa1c 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 8005080:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005082:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8005086:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800508a:	e571      	b.n	8004b70 <_vfprintf_r+0x11a8>
 800508c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800508e:	2b00      	cmp	r3, #0
 8005090:	f340 8164 	ble.w	800535c <_vfprintf_r+0x1994>
 8005094:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005096:	f1b9 0f00 	cmp.w	r9, #0
 800509a:	f040 8103 	bne.w	80052a4 <_vfprintf_r+0x18dc>
 800509e:	07c6      	lsls	r6, r0, #31
 80050a0:	f100 8100 	bmi.w	80052a4 <_vfprintf_r+0x18dc>
 80050a4:	9309      	str	r3, [sp, #36]	; 0x24
 80050a6:	2666      	movs	r6, #102	; 0x66
 80050a8:	0543      	lsls	r3, r0, #21
 80050aa:	f100 8086 	bmi.w	80051ba <_vfprintf_r+0x17f2>
 80050ae:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80050b0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80050b4:	9304      	str	r3, [sp, #16]
 80050b6:	e79e      	b.n	8004ff6 <_vfprintf_r+0x162e>
 80050b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80050ba:	9907      	ldr	r1, [sp, #28]
 80050bc:	9803      	ldr	r0, [sp, #12]
 80050be:	f002 ffb1 	bl	8008024 <__sprint_r>
 80050c2:	2800      	cmp	r0, #0
 80050c4:	f47f a9f8 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 80050c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80050ca:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80050cc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80050ce:	1ad3      	subs	r3, r2, r3
 80050d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80050d4:	f7ff bb90 	b.w	80047f8 <_vfprintf_r+0xe30>
 80050d8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80050da:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80050dc:	4413      	add	r3, r2
 80050de:	9309      	str	r3, [sp, #36]	; 0x24
 80050e0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80050e2:	2b00      	cmp	r3, #0
 80050e4:	f340 8149 	ble.w	800537a <_vfprintf_r+0x19b2>
 80050e8:	2667      	movs	r6, #103	; 0x67
 80050ea:	e7dd      	b.n	80050a8 <_vfprintf_r+0x16e0>
 80050ec:	2330      	movs	r3, #48	; 0x30
 80050ee:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80050f2:	2358      	movs	r3, #88	; 0x58
 80050f4:	e595      	b.n	8004c22 <_vfprintf_r+0x125a>
 80050f6:	9803      	ldr	r0, [sp, #12]
 80050f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80050fa:	4649      	mov	r1, r9
 80050fc:	f002 ff92 	bl	8008024 <__sprint_r>
 8005100:	2800      	cmp	r0, #0
 8005102:	f47f a9e0 	bne.w	80044c6 <_vfprintf_r+0xafe>
 8005106:	f7fe bf0f 	b.w	8003f28 <_vfprintf_r+0x560>
 800510a:	a824      	add	r0, sp, #144	; 0x90
 800510c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005110:	f002 fe90 	bl	8007e34 <frexp>
 8005114:	2200      	movs	r2, #0
 8005116:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800511a:	ec51 0b10 	vmov	r0, r1, d0
 800511e:	f7fb fd0b 	bl	8000b38 <__aeabi_dmul>
 8005122:	2200      	movs	r2, #0
 8005124:	2300      	movs	r3, #0
 8005126:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800512a:	f7fb ff6d 	bl	8001008 <__aeabi_dcmpeq>
 800512e:	b108      	cbz	r0, 8005134 <_vfprintf_r+0x176c>
 8005130:	2301      	movs	r3, #1
 8005132:	9324      	str	r3, [sp, #144]	; 0x90
 8005134:	4b02      	ldr	r3, [pc, #8]	; (8005140 <_vfprintf_r+0x1778>)
 8005136:	9309      	str	r3, [sp, #36]	; 0x24
 8005138:	e5ac      	b.n	8004c94 <_vfprintf_r+0x12cc>
 800513a:	bf00      	nop
 800513c:	0800a740 	.word	0x0800a740
 8005140:	0800a6fc 	.word	0x0800a6fc
 8005144:	425d      	negs	r5, r3
 8005146:	3310      	adds	r3, #16
 8005148:	4bb9      	ldr	r3, [pc, #740]	; (8005430 <_vfprintf_r+0x1a68>)
 800514a:	f280 8097 	bge.w	800527c <_vfprintf_r+0x18b4>
 800514e:	4619      	mov	r1, r3
 8005150:	2610      	movs	r6, #16
 8005152:	4623      	mov	r3, r4
 8005154:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005158:	460c      	mov	r4, r1
 800515a:	e005      	b.n	8005168 <_vfprintf_r+0x17a0>
 800515c:	f10b 0b08 	add.w	fp, fp, #8
 8005160:	3d10      	subs	r5, #16
 8005162:	2d10      	cmp	r5, #16
 8005164:	f340 8087 	ble.w	8005276 <_vfprintf_r+0x18ae>
 8005168:	3201      	adds	r2, #1
 800516a:	3310      	adds	r3, #16
 800516c:	2a07      	cmp	r2, #7
 800516e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8005172:	e9cb 4600 	strd	r4, r6, [fp]
 8005176:	ddf1      	ble.n	800515c <_vfprintf_r+0x1794>
 8005178:	aa2a      	add	r2, sp, #168	; 0xa8
 800517a:	9907      	ldr	r1, [sp, #28]
 800517c:	4648      	mov	r0, r9
 800517e:	f002 ff51 	bl	8008024 <__sprint_r>
 8005182:	2800      	cmp	r0, #0
 8005184:	f47f a998 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 8005188:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 800518c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005190:	e7e6      	b.n	8005160 <_vfprintf_r+0x1798>
 8005192:	f109 0101 	add.w	r1, r9, #1
 8005196:	9803      	ldr	r0, [sp, #12]
 8005198:	f001 fe80 	bl	8006e9c <_malloc_r>
 800519c:	4607      	mov	r7, r0
 800519e:	2800      	cmp	r0, #0
 80051a0:	f000 813b 	beq.w	800541a <_vfprintf_r+0x1a52>
 80051a4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80051a8:	930e      	str	r3, [sp, #56]	; 0x38
 80051aa:	f026 0320 	bic.w	r3, r6, #32
 80051ae:	9304      	str	r3, [sp, #16]
 80051b0:	46a0      	mov	r8, r4
 80051b2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80051b4:	900a      	str	r0, [sp, #40]	; 0x28
 80051b6:	e547      	b.n	8004c48 <_vfprintf_r+0x1280>
 80051b8:	2667      	movs	r6, #103	; 0x67
 80051ba:	981a      	ldr	r0, [sp, #104]	; 0x68
 80051bc:	2200      	movs	r2, #0
 80051be:	920f      	str	r2, [sp, #60]	; 0x3c
 80051c0:	9214      	str	r2, [sp, #80]	; 0x50
 80051c2:	7803      	ldrb	r3, [r0, #0]
 80051c4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 80051c6:	2bff      	cmp	r3, #255	; 0xff
 80051c8:	d00c      	beq.n	80051e4 <_vfprintf_r+0x181c>
 80051ca:	4293      	cmp	r3, r2
 80051cc:	da0a      	bge.n	80051e4 <_vfprintf_r+0x181c>
 80051ce:	7841      	ldrb	r1, [r0, #1]
 80051d0:	1ad2      	subs	r2, r2, r3
 80051d2:	b1a9      	cbz	r1, 8005200 <_vfprintf_r+0x1838>
 80051d4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80051d6:	3301      	adds	r3, #1
 80051d8:	9314      	str	r3, [sp, #80]	; 0x50
 80051da:	460b      	mov	r3, r1
 80051dc:	2bff      	cmp	r3, #255	; 0xff
 80051de:	f100 0001 	add.w	r0, r0, #1
 80051e2:	d1f2      	bne.n	80051ca <_vfprintf_r+0x1802>
 80051e4:	9211      	str	r2, [sp, #68]	; 0x44
 80051e6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80051e8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80051ea:	9909      	ldr	r1, [sp, #36]	; 0x24
 80051ec:	901a      	str	r0, [sp, #104]	; 0x68
 80051ee:	4413      	add	r3, r2
 80051f0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 80051f2:	fb02 1303 	mla	r3, r2, r3, r1
 80051f6:	9309      	str	r3, [sp, #36]	; 0x24
 80051f8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80051fc:	9304      	str	r3, [sp, #16]
 80051fe:	e485      	b.n	8004b0c <_vfprintf_r+0x1144>
 8005200:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8005202:	3101      	adds	r1, #1
 8005204:	910f      	str	r1, [sp, #60]	; 0x3c
 8005206:	e7de      	b.n	80051c6 <_vfprintf_r+0x17fe>
 8005208:	aa28      	add	r2, sp, #160	; 0xa0
 800520a:	ab25      	add	r3, sp, #148	; 0x94
 800520c:	e9cd 3200 	strd	r3, r2, [sp]
 8005210:	2103      	movs	r1, #3
 8005212:	ab24      	add	r3, sp, #144	; 0x90
 8005214:	464a      	mov	r2, r9
 8005216:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800521a:	9803      	ldr	r0, [sp, #12]
 800521c:	f000 fa5c 	bl	80056d8 <_dtoa_r>
 8005220:	464d      	mov	r5, r9
 8005222:	4607      	mov	r7, r0
 8005224:	eb00 0409 	add.w	r4, r0, r9
 8005228:	783b      	ldrb	r3, [r7, #0]
 800522a:	2b30      	cmp	r3, #48	; 0x30
 800522c:	f000 80be 	beq.w	80053ac <_vfprintf_r+0x19e4>
 8005230:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8005232:	442c      	add	r4, r5
 8005234:	2200      	movs	r2, #0
 8005236:	2300      	movs	r3, #0
 8005238:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800523c:	f7fb fee4 	bl	8001008 <__aeabi_dcmpeq>
 8005240:	b108      	cbz	r0, 8005246 <_vfprintf_r+0x187e>
 8005242:	4623      	mov	r3, r4
 8005244:	e413      	b.n	8004a6e <_vfprintf_r+0x10a6>
 8005246:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005248:	42a3      	cmp	r3, r4
 800524a:	f4bf ac10 	bcs.w	8004a6e <_vfprintf_r+0x10a6>
 800524e:	2130      	movs	r1, #48	; 0x30
 8005250:	1c5a      	adds	r2, r3, #1
 8005252:	9228      	str	r2, [sp, #160]	; 0xa0
 8005254:	7019      	strb	r1, [r3, #0]
 8005256:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005258:	429c      	cmp	r4, r3
 800525a:	d8f9      	bhi.n	8005250 <_vfprintf_r+0x1888>
 800525c:	e407      	b.n	8004a6e <_vfprintf_r+0x10a6>
 800525e:	197c      	adds	r4, r7, r5
 8005260:	e7e8      	b.n	8005234 <_vfprintf_r+0x186c>
 8005262:	f1b9 0f00 	cmp.w	r9, #0
 8005266:	f000 8092 	beq.w	800538e <_vfprintf_r+0x19c6>
 800526a:	900a      	str	r0, [sp, #40]	; 0x28
 800526c:	e4ec      	b.n	8004c48 <_vfprintf_r+0x1280>
 800526e:	900a      	str	r0, [sp, #40]	; 0x28
 8005270:	f04f 0906 	mov.w	r9, #6
 8005274:	e4e8      	b.n	8004c48 <_vfprintf_r+0x1280>
 8005276:	4621      	mov	r1, r4
 8005278:	461c      	mov	r4, r3
 800527a:	460b      	mov	r3, r1
 800527c:	3201      	adds	r2, #1
 800527e:	442c      	add	r4, r5
 8005280:	2a07      	cmp	r2, #7
 8005282:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005286:	e9cb 3500 	strd	r3, r5, [fp]
 800528a:	f300 80a9 	bgt.w	80053e0 <_vfprintf_r+0x1a18>
 800528e:	f10b 0b08 	add.w	fp, fp, #8
 8005292:	e470      	b.n	8004b76 <_vfprintf_r+0x11ae>
 8005294:	469a      	mov	sl, r3
 8005296:	f7ff bb37 	b.w	8004908 <_vfprintf_r+0xf40>
 800529a:	2301      	movs	r3, #1
 800529c:	9324      	str	r3, [sp, #144]	; 0x90
 800529e:	4b65      	ldr	r3, [pc, #404]	; (8005434 <_vfprintf_r+0x1a6c>)
 80052a0:	9309      	str	r3, [sp, #36]	; 0x24
 80052a2:	e4f7      	b.n	8004c94 <_vfprintf_r+0x12cc>
 80052a4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80052a6:	4413      	add	r3, r2
 80052a8:	444b      	add	r3, r9
 80052aa:	9309      	str	r3, [sp, #36]	; 0x24
 80052ac:	2666      	movs	r6, #102	; 0x66
 80052ae:	e6fb      	b.n	80050a8 <_vfprintf_r+0x16e0>
 80052b0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80052b2:	9309      	str	r3, [sp, #36]	; 0x24
 80052b4:	e694      	b.n	8004fe0 <_vfprintf_r+0x1618>
 80052b6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80052ba:	4664      	mov	r4, ip
 80052bc:	4d5e      	ldr	r5, [pc, #376]	; (8005438 <_vfprintf_r+0x1a70>)
 80052be:	e000      	b.n	80052c2 <_vfprintf_r+0x18fa>
 80052c0:	4614      	mov	r4, r2
 80052c2:	fba5 1203 	umull	r1, r2, r5, r3
 80052c6:	08d2      	lsrs	r2, r2, #3
 80052c8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 80052cc:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 80052d0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 80052d4:	4613      	mov	r3, r2
 80052d6:	2b09      	cmp	r3, #9
 80052d8:	f804 1c01 	strb.w	r1, [r4, #-1]
 80052dc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80052e0:	dcee      	bgt.n	80052c0 <_vfprintf_r+0x18f8>
 80052e2:	3330      	adds	r3, #48	; 0x30
 80052e4:	3c02      	subs	r4, #2
 80052e6:	b2db      	uxtb	r3, r3
 80052e8:	45a4      	cmp	ip, r4
 80052ea:	f802 3c01 	strb.w	r3, [r2, #-1]
 80052ee:	f240 8090 	bls.w	8005412 <_vfprintf_r+0x1a4a>
 80052f2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 80052f6:	4611      	mov	r1, r2
 80052f8:	e001      	b.n	80052fe <_vfprintf_r+0x1936>
 80052fa:	f811 3b01 	ldrb.w	r3, [r1], #1
 80052fe:	f804 3b01 	strb.w	r3, [r4], #1
 8005302:	458c      	cmp	ip, r1
 8005304:	d1f9      	bne.n	80052fa <_vfprintf_r+0x1932>
 8005306:	ab2a      	add	r3, sp, #168	; 0xa8
 8005308:	1a9b      	subs	r3, r3, r2
 800530a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800530e:	4413      	add	r3, r2
 8005310:	f7ff bbe3 	b.w	8004ada <_vfprintf_r+0x1112>
 8005314:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8005316:	4f49      	ldr	r7, [pc, #292]	; (800543c <_vfprintf_r+0x1a74>)
 8005318:	2b00      	cmp	r3, #0
 800531a:	bfb6      	itet	lt
 800531c:	222d      	movlt	r2, #45	; 0x2d
 800531e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8005322:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8005326:	4b46      	ldr	r3, [pc, #280]	; (8005440 <_vfprintf_r+0x1a78>)
 8005328:	f7fe bf02 	b.w	8004130 <_vfprintf_r+0x768>
 800532c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005330:	f7ff b8c9 	b.w	80044c6 <_vfprintf_r+0xafe>
 8005334:	aa28      	add	r2, sp, #160	; 0xa0
 8005336:	ab25      	add	r3, sp, #148	; 0x94
 8005338:	e9cd 3200 	strd	r3, r2, [sp]
 800533c:	2103      	movs	r1, #3
 800533e:	ab24      	add	r3, sp, #144	; 0x90
 8005340:	464a      	mov	r2, r9
 8005342:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005346:	9803      	ldr	r0, [sp, #12]
 8005348:	f000 f9c6 	bl	80056d8 <_dtoa_r>
 800534c:	464d      	mov	r5, r9
 800534e:	4607      	mov	r7, r0
 8005350:	2e46      	cmp	r6, #70	; 0x46
 8005352:	eb07 0405 	add.w	r4, r7, r5
 8005356:	f43f af67 	beq.w	8005228 <_vfprintf_r+0x1860>
 800535a:	e76b      	b.n	8005234 <_vfprintf_r+0x186c>
 800535c:	f1b9 0f00 	cmp.w	r9, #0
 8005360:	d131      	bne.n	80053c6 <_vfprintf_r+0x19fe>
 8005362:	07c5      	lsls	r5, r0, #31
 8005364:	d42f      	bmi.n	80053c6 <_vfprintf_r+0x19fe>
 8005366:	2301      	movs	r3, #1
 8005368:	9304      	str	r3, [sp, #16]
 800536a:	9309      	str	r3, [sp, #36]	; 0x24
 800536c:	2666      	movs	r6, #102	; 0x66
 800536e:	e642      	b.n	8004ff6 <_vfprintf_r+0x162e>
 8005370:	07c3      	lsls	r3, r0, #31
 8005372:	f57f abbf 	bpl.w	8004af4 <_vfprintf_r+0x112c>
 8005376:	f7ff bbb9 	b.w	8004aec <_vfprintf_r+0x1124>
 800537a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800537c:	f1c3 0301 	rsb	r3, r3, #1
 8005380:	441a      	add	r2, r3
 8005382:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8005386:	9209      	str	r2, [sp, #36]	; 0x24
 8005388:	9304      	str	r3, [sp, #16]
 800538a:	2667      	movs	r6, #103	; 0x67
 800538c:	e633      	b.n	8004ff6 <_vfprintf_r+0x162e>
 800538e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8005392:	f04f 0901 	mov.w	r9, #1
 8005396:	e457      	b.n	8004c48 <_vfprintf_r+0x1280>
 8005398:	465a      	mov	r2, fp
 800539a:	e511      	b.n	8004dc0 <_vfprintf_r+0x13f8>
 800539c:	2e47      	cmp	r6, #71	; 0x47
 800539e:	f47f af5e 	bne.w	800525e <_vfprintf_r+0x1896>
 80053a2:	f018 0f01 	tst.w	r8, #1
 80053a6:	f43f ab61 	beq.w	8004a6c <_vfprintf_r+0x10a4>
 80053aa:	e7d1      	b.n	8005350 <_vfprintf_r+0x1988>
 80053ac:	2200      	movs	r2, #0
 80053ae:	2300      	movs	r3, #0
 80053b0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80053b4:	f7fb fe28 	bl	8001008 <__aeabi_dcmpeq>
 80053b8:	2800      	cmp	r0, #0
 80053ba:	f47f af39 	bne.w	8005230 <_vfprintf_r+0x1868>
 80053be:	f1c5 0501 	rsb	r5, r5, #1
 80053c2:	9524      	str	r5, [sp, #144]	; 0x90
 80053c4:	e735      	b.n	8005232 <_vfprintf_r+0x186a>
 80053c6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80053c8:	3301      	adds	r3, #1
 80053ca:	444b      	add	r3, r9
 80053cc:	9309      	str	r3, [sp, #36]	; 0x24
 80053ce:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80053d2:	9304      	str	r3, [sp, #16]
 80053d4:	2666      	movs	r6, #102	; 0x66
 80053d6:	e60e      	b.n	8004ff6 <_vfprintf_r+0x162e>
 80053d8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80053dc:	f7ff bb7a 	b.w	8004ad4 <_vfprintf_r+0x110c>
 80053e0:	aa2a      	add	r2, sp, #168	; 0xa8
 80053e2:	9907      	ldr	r1, [sp, #28]
 80053e4:	9803      	ldr	r0, [sp, #12]
 80053e6:	f002 fe1d 	bl	8008024 <__sprint_r>
 80053ea:	2800      	cmp	r0, #0
 80053ec:	f47f a864 	bne.w	80044b8 <_vfprintf_r+0xaf0>
 80053f0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80053f4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80053f8:	f7ff bbbd 	b.w	8004b76 <_vfprintf_r+0x11ae>
 80053fc:	9908      	ldr	r1, [sp, #32]
 80053fe:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8005402:	680b      	ldr	r3, [r1, #0]
 8005404:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8005408:	1d0b      	adds	r3, r1, #4
 800540a:	4692      	mov	sl, r2
 800540c:	9308      	str	r3, [sp, #32]
 800540e:	f7fe bb59 	b.w	8003ac4 <_vfprintf_r+0xfc>
 8005412:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8005416:	f7ff bb60 	b.w	8004ada <_vfprintf_r+0x1112>
 800541a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800541e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005422:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005426:	f8a9 300c 	strh.w	r3, [r9, #12]
 800542a:	f7ff b84c 	b.w	80044c6 <_vfprintf_r+0xafe>
 800542e:	bf00      	nop
 8005430:	0800a740 	.word	0x0800a740
 8005434:	0800a710 	.word	0x0800a710
 8005438:	cccccccd 	.word	0xcccccccd
 800543c:	0800a6f8 	.word	0x0800a6f8
 8005440:	0800a6f4 	.word	0x0800a6f4

08005444 <__sbprintf>:
 8005444:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005448:	460c      	mov	r4, r1
 800544a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800544e:	8989      	ldrh	r1, [r1, #12]
 8005450:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8005452:	89e5      	ldrh	r5, [r4, #14]
 8005454:	9619      	str	r6, [sp, #100]	; 0x64
 8005456:	f021 0102 	bic.w	r1, r1, #2
 800545a:	4606      	mov	r6, r0
 800545c:	69e0      	ldr	r0, [r4, #28]
 800545e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8005462:	4617      	mov	r7, r2
 8005464:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8005468:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800546a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800546e:	4698      	mov	r8, r3
 8005470:	ad1a      	add	r5, sp, #104	; 0x68
 8005472:	2300      	movs	r3, #0
 8005474:	9007      	str	r0, [sp, #28]
 8005476:	a816      	add	r0, sp, #88	; 0x58
 8005478:	9209      	str	r2, [sp, #36]	; 0x24
 800547a:	9306      	str	r3, [sp, #24]
 800547c:	9500      	str	r5, [sp, #0]
 800547e:	9504      	str	r5, [sp, #16]
 8005480:	9102      	str	r1, [sp, #8]
 8005482:	9105      	str	r1, [sp, #20]
 8005484:	f001 fc8a 	bl	8006d9c <__retarget_lock_init_recursive>
 8005488:	4643      	mov	r3, r8
 800548a:	463a      	mov	r2, r7
 800548c:	4669      	mov	r1, sp
 800548e:	4630      	mov	r0, r6
 8005490:	f7fe fa9a 	bl	80039c8 <_vfprintf_r>
 8005494:	1e05      	subs	r5, r0, #0
 8005496:	db07      	blt.n	80054a8 <__sbprintf+0x64>
 8005498:	4630      	mov	r0, r6
 800549a:	4669      	mov	r1, sp
 800549c:	f001 f8d6 	bl	800664c <_fflush_r>
 80054a0:	2800      	cmp	r0, #0
 80054a2:	bf18      	it	ne
 80054a4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80054a8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80054ac:	065b      	lsls	r3, r3, #25
 80054ae:	d503      	bpl.n	80054b8 <__sbprintf+0x74>
 80054b0:	89a3      	ldrh	r3, [r4, #12]
 80054b2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80054b6:	81a3      	strh	r3, [r4, #12]
 80054b8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80054ba:	f001 fc71 	bl	8006da0 <__retarget_lock_close_recursive>
 80054be:	4628      	mov	r0, r5
 80054c0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 80054c4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080054c8 <__swsetup_r>:
 80054c8:	b538      	push	{r3, r4, r5, lr}
 80054ca:	4b31      	ldr	r3, [pc, #196]	; (8005590 <__swsetup_r+0xc8>)
 80054cc:	681b      	ldr	r3, [r3, #0]
 80054ce:	4605      	mov	r5, r0
 80054d0:	460c      	mov	r4, r1
 80054d2:	b113      	cbz	r3, 80054da <__swsetup_r+0x12>
 80054d4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80054d6:	2a00      	cmp	r2, #0
 80054d8:	d03a      	beq.n	8005550 <__swsetup_r+0x88>
 80054da:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80054de:	b293      	uxth	r3, r2
 80054e0:	0718      	lsls	r0, r3, #28
 80054e2:	d50c      	bpl.n	80054fe <__swsetup_r+0x36>
 80054e4:	6920      	ldr	r0, [r4, #16]
 80054e6:	b1a8      	cbz	r0, 8005514 <__swsetup_r+0x4c>
 80054e8:	f013 0201 	ands.w	r2, r3, #1
 80054ec:	d020      	beq.n	8005530 <__swsetup_r+0x68>
 80054ee:	6963      	ldr	r3, [r4, #20]
 80054f0:	2200      	movs	r2, #0
 80054f2:	425b      	negs	r3, r3
 80054f4:	61a3      	str	r3, [r4, #24]
 80054f6:	60a2      	str	r2, [r4, #8]
 80054f8:	b300      	cbz	r0, 800553c <__swsetup_r+0x74>
 80054fa:	2000      	movs	r0, #0
 80054fc:	bd38      	pop	{r3, r4, r5, pc}
 80054fe:	06d9      	lsls	r1, r3, #27
 8005500:	d53e      	bpl.n	8005580 <__swsetup_r+0xb8>
 8005502:	0758      	lsls	r0, r3, #29
 8005504:	d428      	bmi.n	8005558 <__swsetup_r+0x90>
 8005506:	6920      	ldr	r0, [r4, #16]
 8005508:	f042 0308 	orr.w	r3, r2, #8
 800550c:	81a3      	strh	r3, [r4, #12]
 800550e:	b29b      	uxth	r3, r3
 8005510:	2800      	cmp	r0, #0
 8005512:	d1e9      	bne.n	80054e8 <__swsetup_r+0x20>
 8005514:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8005518:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800551c:	d0e4      	beq.n	80054e8 <__swsetup_r+0x20>
 800551e:	4628      	mov	r0, r5
 8005520:	4621      	mov	r1, r4
 8005522:	f001 fc71 	bl	8006e08 <__smakebuf_r>
 8005526:	89a3      	ldrh	r3, [r4, #12]
 8005528:	6920      	ldr	r0, [r4, #16]
 800552a:	f013 0201 	ands.w	r2, r3, #1
 800552e:	d1de      	bne.n	80054ee <__swsetup_r+0x26>
 8005530:	0799      	lsls	r1, r3, #30
 8005532:	bf58      	it	pl
 8005534:	6962      	ldrpl	r2, [r4, #20]
 8005536:	60a2      	str	r2, [r4, #8]
 8005538:	2800      	cmp	r0, #0
 800553a:	d1de      	bne.n	80054fa <__swsetup_r+0x32>
 800553c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005540:	061a      	lsls	r2, r3, #24
 8005542:	d5db      	bpl.n	80054fc <__swsetup_r+0x34>
 8005544:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005548:	81a3      	strh	r3, [r4, #12]
 800554a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800554e:	bd38      	pop	{r3, r4, r5, pc}
 8005550:	4618      	mov	r0, r3
 8005552:	f001 f8d7 	bl	8006704 <__sinit>
 8005556:	e7c0      	b.n	80054da <__swsetup_r+0x12>
 8005558:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800555a:	b151      	cbz	r1, 8005572 <__swsetup_r+0xaa>
 800555c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005560:	4299      	cmp	r1, r3
 8005562:	d004      	beq.n	800556e <__swsetup_r+0xa6>
 8005564:	4628      	mov	r0, r5
 8005566:	f001 f96f 	bl	8006848 <_free_r>
 800556a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800556e:	2300      	movs	r3, #0
 8005570:	6323      	str	r3, [r4, #48]	; 0x30
 8005572:	2300      	movs	r3, #0
 8005574:	6920      	ldr	r0, [r4, #16]
 8005576:	6063      	str	r3, [r4, #4]
 8005578:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800557c:	6020      	str	r0, [r4, #0]
 800557e:	e7c3      	b.n	8005508 <__swsetup_r+0x40>
 8005580:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005584:	2309      	movs	r3, #9
 8005586:	602b      	str	r3, [r5, #0]
 8005588:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800558c:	81a2      	strh	r2, [r4, #12]
 800558e:	bd38      	pop	{r3, r4, r5, pc}
 8005590:	20000018 	.word	0x20000018

08005594 <register_fini>:
 8005594:	4b02      	ldr	r3, [pc, #8]	; (80055a0 <register_fini+0xc>)
 8005596:	b113      	cbz	r3, 800559e <register_fini+0xa>
 8005598:	4802      	ldr	r0, [pc, #8]	; (80055a4 <register_fini+0x10>)
 800559a:	f000 b805 	b.w	80055a8 <atexit>
 800559e:	4770      	bx	lr
 80055a0:	00000000 	.word	0x00000000
 80055a4:	08006775 	.word	0x08006775

080055a8 <atexit>:
 80055a8:	2300      	movs	r3, #0
 80055aa:	4601      	mov	r1, r0
 80055ac:	461a      	mov	r2, r3
 80055ae:	4618      	mov	r0, r3
 80055b0:	f002 bd58 	b.w	8008064 <__register_exitproc>

080055b4 <quorem>:
 80055b4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80055b8:	6903      	ldr	r3, [r0, #16]
 80055ba:	690f      	ldr	r7, [r1, #16]
 80055bc:	42bb      	cmp	r3, r7
 80055be:	b083      	sub	sp, #12
 80055c0:	f2c0 8086 	blt.w	80056d0 <quorem+0x11c>
 80055c4:	3f01      	subs	r7, #1
 80055c6:	f101 0914 	add.w	r9, r1, #20
 80055ca:	f100 0a14 	add.w	sl, r0, #20
 80055ce:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80055d2:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80055d6:	00bc      	lsls	r4, r7, #2
 80055d8:	3201      	adds	r2, #1
 80055da:	fbb3 f8f2 	udiv	r8, r3, r2
 80055de:	eb0a 0304 	add.w	r3, sl, r4
 80055e2:	9400      	str	r4, [sp, #0]
 80055e4:	eb09 0b04 	add.w	fp, r9, r4
 80055e8:	9301      	str	r3, [sp, #4]
 80055ea:	f1b8 0f00 	cmp.w	r8, #0
 80055ee:	d038      	beq.n	8005662 <quorem+0xae>
 80055f0:	2500      	movs	r5, #0
 80055f2:	462e      	mov	r6, r5
 80055f4:	46ce      	mov	lr, r9
 80055f6:	46d4      	mov	ip, sl
 80055f8:	f85e 4b04 	ldr.w	r4, [lr], #4
 80055fc:	f8dc 3000 	ldr.w	r3, [ip]
 8005600:	b2a2      	uxth	r2, r4
 8005602:	fb08 5502 	mla	r5, r8, r2, r5
 8005606:	0c22      	lsrs	r2, r4, #16
 8005608:	0c2c      	lsrs	r4, r5, #16
 800560a:	fb08 4202 	mla	r2, r8, r2, r4
 800560e:	b2ad      	uxth	r5, r5
 8005610:	1b75      	subs	r5, r6, r5
 8005612:	b296      	uxth	r6, r2
 8005614:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8005618:	fa15 f383 	uxtah	r3, r5, r3
 800561c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8005620:	b29b      	uxth	r3, r3
 8005622:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8005626:	45f3      	cmp	fp, lr
 8005628:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800562c:	f84c 3b04 	str.w	r3, [ip], #4
 8005630:	ea4f 4626 	mov.w	r6, r6, asr #16
 8005634:	d2e0      	bcs.n	80055f8 <quorem+0x44>
 8005636:	9b00      	ldr	r3, [sp, #0]
 8005638:	f85a 3003 	ldr.w	r3, [sl, r3]
 800563c:	b98b      	cbnz	r3, 8005662 <quorem+0xae>
 800563e:	9a01      	ldr	r2, [sp, #4]
 8005640:	1f13      	subs	r3, r2, #4
 8005642:	459a      	cmp	sl, r3
 8005644:	d20c      	bcs.n	8005660 <quorem+0xac>
 8005646:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800564a:	b94b      	cbnz	r3, 8005660 <quorem+0xac>
 800564c:	f1a2 0308 	sub.w	r3, r2, #8
 8005650:	e002      	b.n	8005658 <quorem+0xa4>
 8005652:	681a      	ldr	r2, [r3, #0]
 8005654:	3b04      	subs	r3, #4
 8005656:	b91a      	cbnz	r2, 8005660 <quorem+0xac>
 8005658:	459a      	cmp	sl, r3
 800565a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800565e:	d3f8      	bcc.n	8005652 <quorem+0x9e>
 8005660:	6107      	str	r7, [r0, #16]
 8005662:	4604      	mov	r4, r0
 8005664:	f002 f944 	bl	80078f0 <__mcmp>
 8005668:	2800      	cmp	r0, #0
 800566a:	db2d      	blt.n	80056c8 <quorem+0x114>
 800566c:	f108 0801 	add.w	r8, r8, #1
 8005670:	4655      	mov	r5, sl
 8005672:	2300      	movs	r3, #0
 8005674:	f859 1b04 	ldr.w	r1, [r9], #4
 8005678:	6828      	ldr	r0, [r5, #0]
 800567a:	b28a      	uxth	r2, r1
 800567c:	1a9a      	subs	r2, r3, r2
 800567e:	0c0b      	lsrs	r3, r1, #16
 8005680:	fa12 f280 	uxtah	r2, r2, r0
 8005684:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8005688:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800568c:	b292      	uxth	r2, r2
 800568e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8005692:	45cb      	cmp	fp, r9
 8005694:	f845 2b04 	str.w	r2, [r5], #4
 8005698:	ea4f 4323 	mov.w	r3, r3, asr #16
 800569c:	d2ea      	bcs.n	8005674 <quorem+0xc0>
 800569e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80056a2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80056a6:	b97a      	cbnz	r2, 80056c8 <quorem+0x114>
 80056a8:	1f1a      	subs	r2, r3, #4
 80056aa:	4592      	cmp	sl, r2
 80056ac:	d20b      	bcs.n	80056c6 <quorem+0x112>
 80056ae:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80056b2:	b942      	cbnz	r2, 80056c6 <quorem+0x112>
 80056b4:	3b08      	subs	r3, #8
 80056b6:	e002      	b.n	80056be <quorem+0x10a>
 80056b8:	681a      	ldr	r2, [r3, #0]
 80056ba:	3b04      	subs	r3, #4
 80056bc:	b91a      	cbnz	r2, 80056c6 <quorem+0x112>
 80056be:	459a      	cmp	sl, r3
 80056c0:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80056c4:	d3f8      	bcc.n	80056b8 <quorem+0x104>
 80056c6:	6127      	str	r7, [r4, #16]
 80056c8:	4640      	mov	r0, r8
 80056ca:	b003      	add	sp, #12
 80056cc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80056d0:	2000      	movs	r0, #0
 80056d2:	b003      	add	sp, #12
 80056d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080056d8 <_dtoa_r>:
 80056d8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80056dc:	ec55 4b10 	vmov	r4, r5, d0
 80056e0:	b09b      	sub	sp, #108	; 0x6c
 80056e2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80056e4:	9102      	str	r1, [sp, #8]
 80056e6:	4681      	mov	r9, r0
 80056e8:	9207      	str	r2, [sp, #28]
 80056ea:	9305      	str	r3, [sp, #20]
 80056ec:	e9cd 4500 	strd	r4, r5, [sp]
 80056f0:	b156      	cbz	r6, 8005708 <_dtoa_r+0x30>
 80056f2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80056f4:	6072      	str	r2, [r6, #4]
 80056f6:	2301      	movs	r3, #1
 80056f8:	4093      	lsls	r3, r2
 80056fa:	60b3      	str	r3, [r6, #8]
 80056fc:	4631      	mov	r1, r6
 80056fe:	f001 ff07 	bl	8007510 <_Bfree>
 8005702:	2300      	movs	r3, #0
 8005704:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8005708:	f1b5 0800 	subs.w	r8, r5, #0
 800570c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800570e:	bfb4      	ite	lt
 8005710:	2301      	movlt	r3, #1
 8005712:	2300      	movge	r3, #0
 8005714:	6013      	str	r3, [r2, #0]
 8005716:	4b76      	ldr	r3, [pc, #472]	; (80058f0 <_dtoa_r+0x218>)
 8005718:	bfbc      	itt	lt
 800571a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800571e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8005722:	ea33 0308 	bics.w	r3, r3, r8
 8005726:	f000 80a6 	beq.w	8005876 <_dtoa_r+0x19e>
 800572a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800572e:	2200      	movs	r2, #0
 8005730:	2300      	movs	r3, #0
 8005732:	4630      	mov	r0, r6
 8005734:	4639      	mov	r1, r7
 8005736:	f7fb fc67 	bl	8001008 <__aeabi_dcmpeq>
 800573a:	4605      	mov	r5, r0
 800573c:	b178      	cbz	r0, 800575e <_dtoa_r+0x86>
 800573e:	9a05      	ldr	r2, [sp, #20]
 8005740:	2301      	movs	r3, #1
 8005742:	6013      	str	r3, [r2, #0]
 8005744:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005746:	2b00      	cmp	r3, #0
 8005748:	f000 80c0 	beq.w	80058cc <_dtoa_r+0x1f4>
 800574c:	4b69      	ldr	r3, [pc, #420]	; (80058f4 <_dtoa_r+0x21c>)
 800574e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8005750:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8005754:	6013      	str	r3, [r2, #0]
 8005756:	4658      	mov	r0, fp
 8005758:	b01b      	add	sp, #108	; 0x6c
 800575a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800575e:	aa18      	add	r2, sp, #96	; 0x60
 8005760:	a919      	add	r1, sp, #100	; 0x64
 8005762:	ec47 6b10 	vmov	d0, r6, r7
 8005766:	4648      	mov	r0, r9
 8005768:	f002 f954 	bl	8007a14 <__d2b>
 800576c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8005770:	4682      	mov	sl, r0
 8005772:	f040 80a0 	bne.w	80058b6 <_dtoa_r+0x1de>
 8005776:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800577a:	442c      	add	r4, r5
 800577c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8005780:	2b20      	cmp	r3, #32
 8005782:	f340 842c 	ble.w	8005fde <_dtoa_r+0x906>
 8005786:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800578a:	fa08 f803 	lsl.w	r8, r8, r3
 800578e:	9b00      	ldr	r3, [sp, #0]
 8005790:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8005794:	fa23 f000 	lsr.w	r0, r3, r0
 8005798:	ea48 0000 	orr.w	r0, r8, r0
 800579c:	f7fb f952 	bl	8000a44 <__aeabi_ui2d>
 80057a0:	2301      	movs	r3, #1
 80057a2:	4606      	mov	r6, r0
 80057a4:	3c01      	subs	r4, #1
 80057a6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80057aa:	930f      	str	r3, [sp, #60]	; 0x3c
 80057ac:	4630      	mov	r0, r6
 80057ae:	4639      	mov	r1, r7
 80057b0:	2200      	movs	r2, #0
 80057b2:	4b51      	ldr	r3, [pc, #324]	; (80058f8 <_dtoa_r+0x220>)
 80057b4:	f7fb f808 	bl	80007c8 <__aeabi_dsub>
 80057b8:	a347      	add	r3, pc, #284	; (adr r3, 80058d8 <_dtoa_r+0x200>)
 80057ba:	e9d3 2300 	ldrd	r2, r3, [r3]
 80057be:	f7fb f9bb 	bl	8000b38 <__aeabi_dmul>
 80057c2:	a347      	add	r3, pc, #284	; (adr r3, 80058e0 <_dtoa_r+0x208>)
 80057c4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80057c8:	f7fb f800 	bl	80007cc <__adddf3>
 80057cc:	4606      	mov	r6, r0
 80057ce:	4620      	mov	r0, r4
 80057d0:	460f      	mov	r7, r1
 80057d2:	f7fb f947 	bl	8000a64 <__aeabi_i2d>
 80057d6:	a344      	add	r3, pc, #272	; (adr r3, 80058e8 <_dtoa_r+0x210>)
 80057d8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80057dc:	f7fb f9ac 	bl	8000b38 <__aeabi_dmul>
 80057e0:	4602      	mov	r2, r0
 80057e2:	460b      	mov	r3, r1
 80057e4:	4630      	mov	r0, r6
 80057e6:	4639      	mov	r1, r7
 80057e8:	f7fa fff0 	bl	80007cc <__adddf3>
 80057ec:	4606      	mov	r6, r0
 80057ee:	460f      	mov	r7, r1
 80057f0:	f7fb fc52 	bl	8001098 <__aeabi_d2iz>
 80057f4:	2200      	movs	r2, #0
 80057f6:	9006      	str	r0, [sp, #24]
 80057f8:	2300      	movs	r3, #0
 80057fa:	4630      	mov	r0, r6
 80057fc:	4639      	mov	r1, r7
 80057fe:	f7fb fc0d 	bl	800101c <__aeabi_dcmplt>
 8005802:	2800      	cmp	r0, #0
 8005804:	f040 8273 	bne.w	8005cee <_dtoa_r+0x616>
 8005808:	9e06      	ldr	r6, [sp, #24]
 800580a:	2e16      	cmp	r6, #22
 800580c:	f200 825d 	bhi.w	8005cca <_dtoa_r+0x5f2>
 8005810:	4b3a      	ldr	r3, [pc, #232]	; (80058fc <_dtoa_r+0x224>)
 8005812:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8005816:	e9d3 0100 	ldrd	r0, r1, [r3]
 800581a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800581e:	f7fb fc1b 	bl	8001058 <__aeabi_dcmpgt>
 8005822:	2800      	cmp	r0, #0
 8005824:	f000 83d7 	beq.w	8005fd6 <_dtoa_r+0x8fe>
 8005828:	1e73      	subs	r3, r6, #1
 800582a:	9306      	str	r3, [sp, #24]
 800582c:	2300      	movs	r3, #0
 800582e:	930d      	str	r3, [sp, #52]	; 0x34
 8005830:	1b2c      	subs	r4, r5, r4
 8005832:	f1b4 0801 	subs.w	r8, r4, #1
 8005836:	f100 8254 	bmi.w	8005ce2 <_dtoa_r+0x60a>
 800583a:	2300      	movs	r3, #0
 800583c:	9308      	str	r3, [sp, #32]
 800583e:	9b06      	ldr	r3, [sp, #24]
 8005840:	2b00      	cmp	r3, #0
 8005842:	f2c0 8245 	blt.w	8005cd0 <_dtoa_r+0x5f8>
 8005846:	4498      	add	r8, r3
 8005848:	930c      	str	r3, [sp, #48]	; 0x30
 800584a:	2300      	movs	r3, #0
 800584c:	930b      	str	r3, [sp, #44]	; 0x2c
 800584e:	9b02      	ldr	r3, [sp, #8]
 8005850:	2b09      	cmp	r3, #9
 8005852:	d85b      	bhi.n	800590c <_dtoa_r+0x234>
 8005854:	2b05      	cmp	r3, #5
 8005856:	f340 83c0 	ble.w	8005fda <_dtoa_r+0x902>
 800585a:	3b04      	subs	r3, #4
 800585c:	9302      	str	r3, [sp, #8]
 800585e:	2500      	movs	r5, #0
 8005860:	9b02      	ldr	r3, [sp, #8]
 8005862:	3b02      	subs	r3, #2
 8005864:	2b03      	cmp	r3, #3
 8005866:	f200 8498 	bhi.w	800619a <_dtoa_r+0xac2>
 800586a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800586e:	03df      	.short	0x03df
 8005870:	03e803bf 	.word	0x03e803bf
 8005874:	04f5      	.short	0x04f5
 8005876:	9a05      	ldr	r2, [sp, #20]
 8005878:	f242 730f 	movw	r3, #9999	; 0x270f
 800587c:	6013      	str	r3, [r2, #0]
 800587e:	9b00      	ldr	r3, [sp, #0]
 8005880:	b983      	cbnz	r3, 80058a4 <_dtoa_r+0x1cc>
 8005882:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8005886:	b96b      	cbnz	r3, 80058a4 <_dtoa_r+0x1cc>
 8005888:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800588a:	f8df b074 	ldr.w	fp, [pc, #116]	; 8005900 <_dtoa_r+0x228>
 800588e:	2b00      	cmp	r3, #0
 8005890:	f43f af61 	beq.w	8005756 <_dtoa_r+0x7e>
 8005894:	f10b 0308 	add.w	r3, fp, #8
 8005898:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800589a:	4658      	mov	r0, fp
 800589c:	6013      	str	r3, [r2, #0]
 800589e:	b01b      	add	sp, #108	; 0x6c
 80058a0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80058a4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80058a6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8005904 <_dtoa_r+0x22c>
 80058aa:	2b00      	cmp	r3, #0
 80058ac:	f43f af53 	beq.w	8005756 <_dtoa_r+0x7e>
 80058b0:	f10b 0303 	add.w	r3, fp, #3
 80058b4:	e7f0      	b.n	8005898 <_dtoa_r+0x1c0>
 80058b6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80058ba:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80058be:	950f      	str	r5, [sp, #60]	; 0x3c
 80058c0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80058c4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80058c8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80058ca:	e76f      	b.n	80057ac <_dtoa_r+0xd4>
 80058cc:	f8df b038 	ldr.w	fp, [pc, #56]	; 8005908 <_dtoa_r+0x230>
 80058d0:	4658      	mov	r0, fp
 80058d2:	b01b      	add	sp, #108	; 0x6c
 80058d4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80058d8:	636f4361 	.word	0x636f4361
 80058dc:	3fd287a7 	.word	0x3fd287a7
 80058e0:	8b60c8b3 	.word	0x8b60c8b3
 80058e4:	3fc68a28 	.word	0x3fc68a28
 80058e8:	509f79fb 	.word	0x509f79fb
 80058ec:	3fd34413 	.word	0x3fd34413
 80058f0:	7ff00000 	.word	0x7ff00000
 80058f4:	0800a72d 	.word	0x0800a72d
 80058f8:	3ff80000 	.word	0x3ff80000
 80058fc:	0800a788 	.word	0x0800a788
 8005900:	0800a750 	.word	0x0800a750
 8005904:	0800a75c 	.word	0x0800a75c
 8005908:	0800a72c 	.word	0x0800a72c
 800590c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8005910:	2501      	movs	r5, #1
 8005912:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8005916:	2300      	movs	r3, #0
 8005918:	9302      	str	r3, [sp, #8]
 800591a:	9307      	str	r3, [sp, #28]
 800591c:	2100      	movs	r1, #0
 800591e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8005922:	940e      	str	r4, [sp, #56]	; 0x38
 8005924:	4648      	mov	r0, r9
 8005926:	f001 fdcd 	bl	80074c4 <_Balloc>
 800592a:	2c0e      	cmp	r4, #14
 800592c:	4683      	mov	fp, r0
 800592e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8005932:	f200 80fb 	bhi.w	8005b2c <_dtoa_r+0x454>
 8005936:	2d00      	cmp	r5, #0
 8005938:	f000 80f8 	beq.w	8005b2c <_dtoa_r+0x454>
 800593c:	ed9d 7b00 	vldr	d7, [sp]
 8005940:	9906      	ldr	r1, [sp, #24]
 8005942:	2900      	cmp	r1, #0
 8005944:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8005948:	f340 83e5 	ble.w	8006116 <_dtoa_r+0xa3e>
 800594c:	4b9d      	ldr	r3, [pc, #628]	; (8005bc4 <_dtoa_r+0x4ec>)
 800594e:	f001 020f 	and.w	r2, r1, #15
 8005952:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005956:	ed93 7b00 	vldr	d7, [r3]
 800595a:	110c      	asrs	r4, r1, #4
 800595c:	06e2      	lsls	r2, r4, #27
 800595e:	ed8d 7b00 	vstr	d7, [sp]
 8005962:	f140 849e 	bpl.w	80062a2 <_dtoa_r+0xbca>
 8005966:	4b98      	ldr	r3, [pc, #608]	; (8005bc8 <_dtoa_r+0x4f0>)
 8005968:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800596c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8005970:	f7fb fa0c 	bl	8000d8c <__aeabi_ddiv>
 8005974:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8005978:	f004 040f 	and.w	r4, r4, #15
 800597c:	2603      	movs	r6, #3
 800597e:	b17c      	cbz	r4, 80059a0 <_dtoa_r+0x2c8>
 8005980:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005984:	4d90      	ldr	r5, [pc, #576]	; (8005bc8 <_dtoa_r+0x4f0>)
 8005986:	07e3      	lsls	r3, r4, #31
 8005988:	d504      	bpl.n	8005994 <_dtoa_r+0x2bc>
 800598a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800598e:	f7fb f8d3 	bl	8000b38 <__aeabi_dmul>
 8005992:	3601      	adds	r6, #1
 8005994:	1064      	asrs	r4, r4, #1
 8005996:	f105 0508 	add.w	r5, r5, #8
 800599a:	d1f4      	bne.n	8005986 <_dtoa_r+0x2ae>
 800599c:	e9cd 0100 	strd	r0, r1, [sp]
 80059a0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80059a4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80059a8:	f7fb f9f0 	bl	8000d8c <__aeabi_ddiv>
 80059ac:	e9cd 0100 	strd	r0, r1, [sp]
 80059b0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80059b2:	b143      	cbz	r3, 80059c6 <_dtoa_r+0x2ee>
 80059b4:	2200      	movs	r2, #0
 80059b6:	4b85      	ldr	r3, [pc, #532]	; (8005bcc <_dtoa_r+0x4f4>)
 80059b8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80059bc:	f7fb fb2e 	bl	800101c <__aeabi_dcmplt>
 80059c0:	2800      	cmp	r0, #0
 80059c2:	f040 84ff 	bne.w	80063c4 <_dtoa_r+0xcec>
 80059c6:	4630      	mov	r0, r6
 80059c8:	f7fb f84c 	bl	8000a64 <__aeabi_i2d>
 80059cc:	e9dd 2300 	ldrd	r2, r3, [sp]
 80059d0:	f7fb f8b2 	bl	8000b38 <__aeabi_dmul>
 80059d4:	4b7e      	ldr	r3, [pc, #504]	; (8005bd0 <_dtoa_r+0x4f8>)
 80059d6:	2200      	movs	r2, #0
 80059d8:	f7fa fef8 	bl	80007cc <__adddf3>
 80059dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80059de:	4606      	mov	r6, r0
 80059e0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80059e4:	2b00      	cmp	r3, #0
 80059e6:	f000 841c 	beq.w	8006222 <_dtoa_r+0xb4a>
 80059ea:	9b06      	ldr	r3, [sp, #24]
 80059ec:	9316      	str	r3, [sp, #88]	; 0x58
 80059ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80059f0:	9312      	str	r3, [sp, #72]	; 0x48
 80059f2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80059f6:	f7fb fb4f 	bl	8001098 <__aeabi_d2iz>
 80059fa:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80059fc:	4b71      	ldr	r3, [pc, #452]	; (8005bc4 <_dtoa_r+0x4ec>)
 80059fe:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005a02:	ed13 7b02 	vldr	d7, [r3, #-8]
 8005a06:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8005a0a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8005a0e:	f7fb f829 	bl	8000a64 <__aeabi_i2d>
 8005a12:	460b      	mov	r3, r1
 8005a14:	4602      	mov	r2, r0
 8005a16:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005a1a:	e9cd 6700 	strd	r6, r7, [sp]
 8005a1e:	f7fa fed3 	bl	80007c8 <__aeabi_dsub>
 8005a22:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005a24:	b2ed      	uxtb	r5, r5
 8005a26:	4606      	mov	r6, r0
 8005a28:	460f      	mov	r7, r1
 8005a2a:	f10b 0401 	add.w	r4, fp, #1
 8005a2e:	2b00      	cmp	r3, #0
 8005a30:	f000 8458 	beq.w	80062e4 <_dtoa_r+0xc0c>
 8005a34:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005a38:	2000      	movs	r0, #0
 8005a3a:	4966      	ldr	r1, [pc, #408]	; (8005bd4 <_dtoa_r+0x4fc>)
 8005a3c:	f7fb f9a6 	bl	8000d8c <__aeabi_ddiv>
 8005a40:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005a44:	f7fa fec0 	bl	80007c8 <__aeabi_dsub>
 8005a48:	f88b 5000 	strb.w	r5, [fp]
 8005a4c:	4632      	mov	r2, r6
 8005a4e:	463b      	mov	r3, r7
 8005a50:	e9cd 0100 	strd	r0, r1, [sp]
 8005a54:	f7fb fb00 	bl	8001058 <__aeabi_dcmpgt>
 8005a58:	2800      	cmp	r0, #0
 8005a5a:	f040 8502 	bne.w	8006462 <_dtoa_r+0xd8a>
 8005a5e:	4632      	mov	r2, r6
 8005a60:	463b      	mov	r3, r7
 8005a62:	2000      	movs	r0, #0
 8005a64:	4959      	ldr	r1, [pc, #356]	; (8005bcc <_dtoa_r+0x4f4>)
 8005a66:	f7fa feaf 	bl	80007c8 <__aeabi_dsub>
 8005a6a:	4602      	mov	r2, r0
 8005a6c:	460b      	mov	r3, r1
 8005a6e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005a72:	f7fb faf1 	bl	8001058 <__aeabi_dcmpgt>
 8005a76:	2800      	cmp	r0, #0
 8005a78:	f040 84fb 	bne.w	8006472 <_dtoa_r+0xd9a>
 8005a7c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8005a7e:	2a01      	cmp	r2, #1
 8005a80:	d050      	beq.n	8005b24 <_dtoa_r+0x44c>
 8005a82:	445a      	add	r2, fp
 8005a84:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8005a88:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8005a8c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8005a90:	4692      	mov	sl, r2
 8005a92:	46cb      	mov	fp, r9
 8005a94:	e9dd 8900 	ldrd	r8, r9, [sp]
 8005a98:	e00c      	b.n	8005ab4 <_dtoa_r+0x3dc>
 8005a9a:	2000      	movs	r0, #0
 8005a9c:	494b      	ldr	r1, [pc, #300]	; (8005bcc <_dtoa_r+0x4f4>)
 8005a9e:	f7fa fe93 	bl	80007c8 <__aeabi_dsub>
 8005aa2:	4642      	mov	r2, r8
 8005aa4:	464b      	mov	r3, r9
 8005aa6:	f7fb fab9 	bl	800101c <__aeabi_dcmplt>
 8005aaa:	2800      	cmp	r0, #0
 8005aac:	f040 84dc 	bne.w	8006468 <_dtoa_r+0xd90>
 8005ab0:	4554      	cmp	r4, sl
 8005ab2:	d030      	beq.n	8005b16 <_dtoa_r+0x43e>
 8005ab4:	4640      	mov	r0, r8
 8005ab6:	4649      	mov	r1, r9
 8005ab8:	2200      	movs	r2, #0
 8005aba:	4b47      	ldr	r3, [pc, #284]	; (8005bd8 <_dtoa_r+0x500>)
 8005abc:	f7fb f83c 	bl	8000b38 <__aeabi_dmul>
 8005ac0:	2200      	movs	r2, #0
 8005ac2:	4b45      	ldr	r3, [pc, #276]	; (8005bd8 <_dtoa_r+0x500>)
 8005ac4:	4680      	mov	r8, r0
 8005ac6:	4689      	mov	r9, r1
 8005ac8:	4630      	mov	r0, r6
 8005aca:	4639      	mov	r1, r7
 8005acc:	f7fb f834 	bl	8000b38 <__aeabi_dmul>
 8005ad0:	460f      	mov	r7, r1
 8005ad2:	4606      	mov	r6, r0
 8005ad4:	f7fb fae0 	bl	8001098 <__aeabi_d2iz>
 8005ad8:	4605      	mov	r5, r0
 8005ada:	f7fa ffc3 	bl	8000a64 <__aeabi_i2d>
 8005ade:	4602      	mov	r2, r0
 8005ae0:	460b      	mov	r3, r1
 8005ae2:	4630      	mov	r0, r6
 8005ae4:	4639      	mov	r1, r7
 8005ae6:	f7fa fe6f 	bl	80007c8 <__aeabi_dsub>
 8005aea:	3530      	adds	r5, #48	; 0x30
 8005aec:	b2ed      	uxtb	r5, r5
 8005aee:	4642      	mov	r2, r8
 8005af0:	464b      	mov	r3, r9
 8005af2:	f804 5b01 	strb.w	r5, [r4], #1
 8005af6:	4606      	mov	r6, r0
 8005af8:	460f      	mov	r7, r1
 8005afa:	f7fb fa8f 	bl	800101c <__aeabi_dcmplt>
 8005afe:	4632      	mov	r2, r6
 8005b00:	463b      	mov	r3, r7
 8005b02:	2800      	cmp	r0, #0
 8005b04:	d0c9      	beq.n	8005a9a <_dtoa_r+0x3c2>
 8005b06:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005b08:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005b0c:	9306      	str	r3, [sp, #24]
 8005b0e:	46d9      	mov	r9, fp
 8005b10:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005b14:	e236      	b.n	8005f84 <_dtoa_r+0x8ac>
 8005b16:	46d9      	mov	r9, fp
 8005b18:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8005b1c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005b20:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005b24:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8005b28:	e9cd 3400 	strd	r3, r4, [sp]
 8005b2c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8005b2e:	2b00      	cmp	r3, #0
 8005b30:	f2c0 80ae 	blt.w	8005c90 <_dtoa_r+0x5b8>
 8005b34:	9a06      	ldr	r2, [sp, #24]
 8005b36:	2a0e      	cmp	r2, #14
 8005b38:	f300 80aa 	bgt.w	8005c90 <_dtoa_r+0x5b8>
 8005b3c:	4b21      	ldr	r3, [pc, #132]	; (8005bc4 <_dtoa_r+0x4ec>)
 8005b3e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8005b42:	ed93 7b00 	vldr	d7, [r3]
 8005b46:	9b07      	ldr	r3, [sp, #28]
 8005b48:	2b00      	cmp	r3, #0
 8005b4a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8005b4e:	f2c0 82be 	blt.w	80060ce <_dtoa_r+0x9f6>
 8005b52:	e9dd 6700 	ldrd	r6, r7, [sp]
 8005b56:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005b5a:	4630      	mov	r0, r6
 8005b5c:	4639      	mov	r1, r7
 8005b5e:	f7fb f915 	bl	8000d8c <__aeabi_ddiv>
 8005b62:	f7fb fa99 	bl	8001098 <__aeabi_d2iz>
 8005b66:	4605      	mov	r5, r0
 8005b68:	f7fa ff7c 	bl	8000a64 <__aeabi_i2d>
 8005b6c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005b70:	f7fa ffe2 	bl	8000b38 <__aeabi_dmul>
 8005b74:	460b      	mov	r3, r1
 8005b76:	4602      	mov	r2, r0
 8005b78:	4639      	mov	r1, r7
 8005b7a:	4630      	mov	r0, r6
 8005b7c:	f7fa fe24 	bl	80007c8 <__aeabi_dsub>
 8005b80:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8005b84:	f88b 3000 	strb.w	r3, [fp]
 8005b88:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005b8a:	2b01      	cmp	r3, #1
 8005b8c:	4606      	mov	r6, r0
 8005b8e:	460f      	mov	r7, r1
 8005b90:	f10b 0401 	add.w	r4, fp, #1
 8005b94:	d053      	beq.n	8005c3e <_dtoa_r+0x566>
 8005b96:	2200      	movs	r2, #0
 8005b98:	4b0f      	ldr	r3, [pc, #60]	; (8005bd8 <_dtoa_r+0x500>)
 8005b9a:	f7fa ffcd 	bl	8000b38 <__aeabi_dmul>
 8005b9e:	2200      	movs	r2, #0
 8005ba0:	2300      	movs	r3, #0
 8005ba2:	4606      	mov	r6, r0
 8005ba4:	460f      	mov	r7, r1
 8005ba6:	f7fb fa2f 	bl	8001008 <__aeabi_dcmpeq>
 8005baa:	2800      	cmp	r0, #0
 8005bac:	f040 81ea 	bne.w	8005f84 <_dtoa_r+0x8ac>
 8005bb0:	f8cd a000 	str.w	sl, [sp]
 8005bb4:	f8cd 901c 	str.w	r9, [sp, #28]
 8005bb8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005bbc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8005bc0:	e017      	b.n	8005bf2 <_dtoa_r+0x51a>
 8005bc2:	bf00      	nop
 8005bc4:	0800a788 	.word	0x0800a788
 8005bc8:	0800a760 	.word	0x0800a760
 8005bcc:	3ff00000 	.word	0x3ff00000
 8005bd0:	401c0000 	.word	0x401c0000
 8005bd4:	3fe00000 	.word	0x3fe00000
 8005bd8:	40240000 	.word	0x40240000
 8005bdc:	f7fa ffac 	bl	8000b38 <__aeabi_dmul>
 8005be0:	2200      	movs	r2, #0
 8005be2:	2300      	movs	r3, #0
 8005be4:	4606      	mov	r6, r0
 8005be6:	460f      	mov	r7, r1
 8005be8:	f7fb fa0e 	bl	8001008 <__aeabi_dcmpeq>
 8005bec:	2800      	cmp	r0, #0
 8005bee:	f040 833d 	bne.w	800626c <_dtoa_r+0xb94>
 8005bf2:	464a      	mov	r2, r9
 8005bf4:	4653      	mov	r3, sl
 8005bf6:	4630      	mov	r0, r6
 8005bf8:	4639      	mov	r1, r7
 8005bfa:	f7fb f8c7 	bl	8000d8c <__aeabi_ddiv>
 8005bfe:	f7fb fa4b 	bl	8001098 <__aeabi_d2iz>
 8005c02:	4605      	mov	r5, r0
 8005c04:	f7fa ff2e 	bl	8000a64 <__aeabi_i2d>
 8005c08:	464a      	mov	r2, r9
 8005c0a:	4653      	mov	r3, sl
 8005c0c:	f7fa ff94 	bl	8000b38 <__aeabi_dmul>
 8005c10:	4602      	mov	r2, r0
 8005c12:	460b      	mov	r3, r1
 8005c14:	4630      	mov	r0, r6
 8005c16:	4639      	mov	r1, r7
 8005c18:	f7fa fdd6 	bl	80007c8 <__aeabi_dsub>
 8005c1c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8005c20:	f804 cb01 	strb.w	ip, [r4], #1
 8005c24:	eba4 0c0b 	sub.w	ip, r4, fp
 8005c28:	45e0      	cmp	r8, ip
 8005c2a:	4606      	mov	r6, r0
 8005c2c:	460f      	mov	r7, r1
 8005c2e:	f04f 0200 	mov.w	r2, #0
 8005c32:	4bc1      	ldr	r3, [pc, #772]	; (8005f38 <_dtoa_r+0x860>)
 8005c34:	d1d2      	bne.n	8005bdc <_dtoa_r+0x504>
 8005c36:	f8dd a000 	ldr.w	sl, [sp]
 8005c3a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005c3e:	4632      	mov	r2, r6
 8005c40:	463b      	mov	r3, r7
 8005c42:	4630      	mov	r0, r6
 8005c44:	4639      	mov	r1, r7
 8005c46:	f7fa fdc1 	bl	80007cc <__adddf3>
 8005c4a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005c4e:	4606      	mov	r6, r0
 8005c50:	460f      	mov	r7, r1
 8005c52:	f7fb fa01 	bl	8001058 <__aeabi_dcmpgt>
 8005c56:	b958      	cbnz	r0, 8005c70 <_dtoa_r+0x598>
 8005c58:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8005c5c:	4630      	mov	r0, r6
 8005c5e:	4639      	mov	r1, r7
 8005c60:	f7fb f9d2 	bl	8001008 <__aeabi_dcmpeq>
 8005c64:	2800      	cmp	r0, #0
 8005c66:	f000 818d 	beq.w	8005f84 <_dtoa_r+0x8ac>
 8005c6a:	07e9      	lsls	r1, r5, #31
 8005c6c:	f140 818a 	bpl.w	8005f84 <_dtoa_r+0x8ac>
 8005c70:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005c74:	e005      	b.n	8005c82 <_dtoa_r+0x5aa>
 8005c76:	459b      	cmp	fp, r3
 8005c78:	f000 8373 	beq.w	8006362 <_dtoa_r+0xc8a>
 8005c7c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8005c80:	461c      	mov	r4, r3
 8005c82:	2d39      	cmp	r5, #57	; 0x39
 8005c84:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005c88:	d0f5      	beq.n	8005c76 <_dtoa_r+0x59e>
 8005c8a:	3501      	adds	r5, #1
 8005c8c:	701d      	strb	r5, [r3, #0]
 8005c8e:	e179      	b.n	8005f84 <_dtoa_r+0x8ac>
 8005c90:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005c92:	2a00      	cmp	r2, #0
 8005c94:	d03b      	beq.n	8005d0e <_dtoa_r+0x636>
 8005c96:	9a02      	ldr	r2, [sp, #8]
 8005c98:	2a01      	cmp	r2, #1
 8005c9a:	f340 820b 	ble.w	80060b4 <_dtoa_r+0x9dc>
 8005c9e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005ca0:	1e5f      	subs	r7, r3, #1
 8005ca2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005ca4:	42bb      	cmp	r3, r7
 8005ca6:	f2c0 82e6 	blt.w	8006276 <_dtoa_r+0xb9e>
 8005caa:	1bdf      	subs	r7, r3, r7
 8005cac:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005cae:	2b00      	cmp	r3, #0
 8005cb0:	f2c0 830b 	blt.w	80062ca <_dtoa_r+0xbf2>
 8005cb4:	9a08      	ldr	r2, [sp, #32]
 8005cb6:	4614      	mov	r4, r2
 8005cb8:	441a      	add	r2, r3
 8005cba:	4498      	add	r8, r3
 8005cbc:	9208      	str	r2, [sp, #32]
 8005cbe:	2101      	movs	r1, #1
 8005cc0:	4648      	mov	r0, r9
 8005cc2:	f001 fcbf 	bl	8007644 <__i2b>
 8005cc6:	4605      	mov	r5, r0
 8005cc8:	e024      	b.n	8005d14 <_dtoa_r+0x63c>
 8005cca:	2301      	movs	r3, #1
 8005ccc:	930d      	str	r3, [sp, #52]	; 0x34
 8005cce:	e5af      	b.n	8005830 <_dtoa_r+0x158>
 8005cd0:	9a08      	ldr	r2, [sp, #32]
 8005cd2:	9b06      	ldr	r3, [sp, #24]
 8005cd4:	1ad2      	subs	r2, r2, r3
 8005cd6:	425b      	negs	r3, r3
 8005cd8:	930b      	str	r3, [sp, #44]	; 0x2c
 8005cda:	2300      	movs	r3, #0
 8005cdc:	9208      	str	r2, [sp, #32]
 8005cde:	930c      	str	r3, [sp, #48]	; 0x30
 8005ce0:	e5b5      	b.n	800584e <_dtoa_r+0x176>
 8005ce2:	f1c4 0301 	rsb	r3, r4, #1
 8005ce6:	9308      	str	r3, [sp, #32]
 8005ce8:	f04f 0800 	mov.w	r8, #0
 8005cec:	e5a7      	b.n	800583e <_dtoa_r+0x166>
 8005cee:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8005cf2:	4640      	mov	r0, r8
 8005cf4:	f7fa feb6 	bl	8000a64 <__aeabi_i2d>
 8005cf8:	4632      	mov	r2, r6
 8005cfa:	463b      	mov	r3, r7
 8005cfc:	f7fb f984 	bl	8001008 <__aeabi_dcmpeq>
 8005d00:	2800      	cmp	r0, #0
 8005d02:	f47f ad81 	bne.w	8005808 <_dtoa_r+0x130>
 8005d06:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8005d0a:	9306      	str	r3, [sp, #24]
 8005d0c:	e57c      	b.n	8005808 <_dtoa_r+0x130>
 8005d0e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8005d10:	9c08      	ldr	r4, [sp, #32]
 8005d12:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8005d14:	2c00      	cmp	r4, #0
 8005d16:	dd0c      	ble.n	8005d32 <_dtoa_r+0x65a>
 8005d18:	f1b8 0f00 	cmp.w	r8, #0
 8005d1c:	dd09      	ble.n	8005d32 <_dtoa_r+0x65a>
 8005d1e:	4544      	cmp	r4, r8
 8005d20:	9a08      	ldr	r2, [sp, #32]
 8005d22:	4623      	mov	r3, r4
 8005d24:	bfa8      	it	ge
 8005d26:	4643      	movge	r3, r8
 8005d28:	1ad2      	subs	r2, r2, r3
 8005d2a:	9208      	str	r2, [sp, #32]
 8005d2c:	1ae4      	subs	r4, r4, r3
 8005d2e:	eba8 0803 	sub.w	r8, r8, r3
 8005d32:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005d34:	b16b      	cbz	r3, 8005d52 <_dtoa_r+0x67a>
 8005d36:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005d38:	2a00      	cmp	r2, #0
 8005d3a:	f000 8290 	beq.w	800625e <_dtoa_r+0xb86>
 8005d3e:	1bde      	subs	r6, r3, r7
 8005d40:	2f00      	cmp	r7, #0
 8005d42:	f040 819b 	bne.w	800607c <_dtoa_r+0x9a4>
 8005d46:	4651      	mov	r1, sl
 8005d48:	4632      	mov	r2, r6
 8005d4a:	4648      	mov	r0, r9
 8005d4c:	f001 fd2a 	bl	80077a4 <__pow5mult>
 8005d50:	4682      	mov	sl, r0
 8005d52:	2101      	movs	r1, #1
 8005d54:	4648      	mov	r0, r9
 8005d56:	f001 fc75 	bl	8007644 <__i2b>
 8005d5a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8005d5c:	4606      	mov	r6, r0
 8005d5e:	2a00      	cmp	r2, #0
 8005d60:	f040 8125 	bne.w	8005fae <_dtoa_r+0x8d6>
 8005d64:	9b02      	ldr	r3, [sp, #8]
 8005d66:	2b01      	cmp	r3, #1
 8005d68:	f340 816c 	ble.w	8006044 <_dtoa_r+0x96c>
 8005d6c:	2001      	movs	r0, #1
 8005d6e:	4440      	add	r0, r8
 8005d70:	f010 001f 	ands.w	r0, r0, #31
 8005d74:	f000 8119 	beq.w	8005faa <_dtoa_r+0x8d2>
 8005d78:	f1c0 0320 	rsb	r3, r0, #32
 8005d7c:	2b04      	cmp	r3, #4
 8005d7e:	f340 83ac 	ble.w	80064da <_dtoa_r+0xe02>
 8005d82:	f1c0 001c 	rsb	r0, r0, #28
 8005d86:	9b08      	ldr	r3, [sp, #32]
 8005d88:	4403      	add	r3, r0
 8005d8a:	9308      	str	r3, [sp, #32]
 8005d8c:	4404      	add	r4, r0
 8005d8e:	4480      	add	r8, r0
 8005d90:	9b08      	ldr	r3, [sp, #32]
 8005d92:	2b00      	cmp	r3, #0
 8005d94:	dd05      	ble.n	8005da2 <_dtoa_r+0x6ca>
 8005d96:	4651      	mov	r1, sl
 8005d98:	461a      	mov	r2, r3
 8005d9a:	4648      	mov	r0, r9
 8005d9c:	f001 fd52 	bl	8007844 <__lshift>
 8005da0:	4682      	mov	sl, r0
 8005da2:	f1b8 0f00 	cmp.w	r8, #0
 8005da6:	dd05      	ble.n	8005db4 <_dtoa_r+0x6dc>
 8005da8:	4631      	mov	r1, r6
 8005daa:	4642      	mov	r2, r8
 8005dac:	4648      	mov	r0, r9
 8005dae:	f001 fd49 	bl	8007844 <__lshift>
 8005db2:	4606      	mov	r6, r0
 8005db4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8005db6:	2b00      	cmp	r3, #0
 8005db8:	d177      	bne.n	8005eaa <_dtoa_r+0x7d2>
 8005dba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005dbc:	2b00      	cmp	r3, #0
 8005dbe:	f340 8209 	ble.w	80061d4 <_dtoa_r+0xafc>
 8005dc2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005dc4:	2b00      	cmp	r3, #0
 8005dc6:	f000 8089 	beq.w	8005edc <_dtoa_r+0x804>
 8005dca:	2c00      	cmp	r4, #0
 8005dcc:	f300 816b 	bgt.w	80060a6 <_dtoa_r+0x9ce>
 8005dd0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8005dd2:	2b00      	cmp	r3, #0
 8005dd4:	f040 81cd 	bne.w	8006172 <_dtoa_r+0xa9a>
 8005dd8:	46a8      	mov	r8, r5
 8005dda:	9a00      	ldr	r2, [sp, #0]
 8005ddc:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8005de0:	f002 0201 	and.w	r2, r2, #1
 8005de4:	920a      	str	r2, [sp, #40]	; 0x28
 8005de6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005de8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8005dec:	441a      	add	r2, r3
 8005dee:	465f      	mov	r7, fp
 8005df0:	9209      	str	r2, [sp, #36]	; 0x24
 8005df2:	46b3      	mov	fp, r6
 8005df4:	4659      	mov	r1, fp
 8005df6:	4650      	mov	r0, sl
 8005df8:	f7ff fbdc 	bl	80055b4 <quorem>
 8005dfc:	4629      	mov	r1, r5
 8005dfe:	4604      	mov	r4, r0
 8005e00:	4650      	mov	r0, sl
 8005e02:	f001 fd75 	bl	80078f0 <__mcmp>
 8005e06:	4659      	mov	r1, fp
 8005e08:	4606      	mov	r6, r0
 8005e0a:	4642      	mov	r2, r8
 8005e0c:	4648      	mov	r0, r9
 8005e0e:	f001 fd8b 	bl	8007928 <__mdiff>
 8005e12:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8005e16:	9300      	str	r3, [sp, #0]
 8005e18:	68c3      	ldr	r3, [r0, #12]
 8005e1a:	4601      	mov	r1, r0
 8005e1c:	2b00      	cmp	r3, #0
 8005e1e:	f040 81d4 	bne.w	80061ca <_dtoa_r+0xaf2>
 8005e22:	9008      	str	r0, [sp, #32]
 8005e24:	4650      	mov	r0, sl
 8005e26:	f001 fd63 	bl	80078f0 <__mcmp>
 8005e2a:	9a08      	ldr	r2, [sp, #32]
 8005e2c:	9007      	str	r0, [sp, #28]
 8005e2e:	4611      	mov	r1, r2
 8005e30:	4648      	mov	r0, r9
 8005e32:	f001 fb6d 	bl	8007510 <_Bfree>
 8005e36:	9b07      	ldr	r3, [sp, #28]
 8005e38:	b933      	cbnz	r3, 8005e48 <_dtoa_r+0x770>
 8005e3a:	9a02      	ldr	r2, [sp, #8]
 8005e3c:	b922      	cbnz	r2, 8005e48 <_dtoa_r+0x770>
 8005e3e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005e40:	2b00      	cmp	r3, #0
 8005e42:	f000 8319 	beq.w	8006478 <_dtoa_r+0xda0>
 8005e46:	9b02      	ldr	r3, [sp, #8]
 8005e48:	2e00      	cmp	r6, #0
 8005e4a:	f2c0 821c 	blt.w	8006286 <_dtoa_r+0xbae>
 8005e4e:	d105      	bne.n	8005e5c <_dtoa_r+0x784>
 8005e50:	9a02      	ldr	r2, [sp, #8]
 8005e52:	b91a      	cbnz	r2, 8005e5c <_dtoa_r+0x784>
 8005e54:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8005e56:	2a00      	cmp	r2, #0
 8005e58:	f000 8215 	beq.w	8006286 <_dtoa_r+0xbae>
 8005e5c:	2b00      	cmp	r3, #0
 8005e5e:	f107 0401 	add.w	r4, r7, #1
 8005e62:	f300 8225 	bgt.w	80062b0 <_dtoa_r+0xbd8>
 8005e66:	9b00      	ldr	r3, [sp, #0]
 8005e68:	703b      	strb	r3, [r7, #0]
 8005e6a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005e6c:	42bb      	cmp	r3, r7
 8005e6e:	f000 8230 	beq.w	80062d2 <_dtoa_r+0xbfa>
 8005e72:	4651      	mov	r1, sl
 8005e74:	2300      	movs	r3, #0
 8005e76:	220a      	movs	r2, #10
 8005e78:	4648      	mov	r0, r9
 8005e7a:	f001 fb53 	bl	8007524 <__multadd>
 8005e7e:	4545      	cmp	r5, r8
 8005e80:	4682      	mov	sl, r0
 8005e82:	4629      	mov	r1, r5
 8005e84:	f04f 0300 	mov.w	r3, #0
 8005e88:	f04f 020a 	mov.w	r2, #10
 8005e8c:	4648      	mov	r0, r9
 8005e8e:	f000 8196 	beq.w	80061be <_dtoa_r+0xae6>
 8005e92:	f001 fb47 	bl	8007524 <__multadd>
 8005e96:	4641      	mov	r1, r8
 8005e98:	4605      	mov	r5, r0
 8005e9a:	2300      	movs	r3, #0
 8005e9c:	220a      	movs	r2, #10
 8005e9e:	4648      	mov	r0, r9
 8005ea0:	f001 fb40 	bl	8007524 <__multadd>
 8005ea4:	4627      	mov	r7, r4
 8005ea6:	4680      	mov	r8, r0
 8005ea8:	e7a4      	b.n	8005df4 <_dtoa_r+0x71c>
 8005eaa:	4631      	mov	r1, r6
 8005eac:	4650      	mov	r0, sl
 8005eae:	f001 fd1f 	bl	80078f0 <__mcmp>
 8005eb2:	2800      	cmp	r0, #0
 8005eb4:	da81      	bge.n	8005dba <_dtoa_r+0x6e2>
 8005eb6:	9f06      	ldr	r7, [sp, #24]
 8005eb8:	4651      	mov	r1, sl
 8005eba:	2300      	movs	r3, #0
 8005ebc:	220a      	movs	r2, #10
 8005ebe:	4648      	mov	r0, r9
 8005ec0:	3f01      	subs	r7, #1
 8005ec2:	9706      	str	r7, [sp, #24]
 8005ec4:	f001 fb2e 	bl	8007524 <__multadd>
 8005ec8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005eca:	4682      	mov	sl, r0
 8005ecc:	2b00      	cmp	r3, #0
 8005ece:	f040 82eb 	bne.w	80064a8 <_dtoa_r+0xdd0>
 8005ed2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005ed4:	2b00      	cmp	r3, #0
 8005ed6:	f340 82f3 	ble.w	80064c0 <_dtoa_r+0xde8>
 8005eda:	9309      	str	r3, [sp, #36]	; 0x24
 8005edc:	465c      	mov	r4, fp
 8005ede:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8005ee2:	e002      	b.n	8005eea <_dtoa_r+0x812>
 8005ee4:	f001 fb1e 	bl	8007524 <__multadd>
 8005ee8:	4682      	mov	sl, r0
 8005eea:	4631      	mov	r1, r6
 8005eec:	4650      	mov	r0, sl
 8005eee:	f7ff fb61 	bl	80055b4 <quorem>
 8005ef2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8005ef6:	f804 7b01 	strb.w	r7, [r4], #1
 8005efa:	eba4 030b 	sub.w	r3, r4, fp
 8005efe:	4598      	cmp	r8, r3
 8005f00:	f04f 020a 	mov.w	r2, #10
 8005f04:	f04f 0300 	mov.w	r3, #0
 8005f08:	4651      	mov	r1, sl
 8005f0a:	4648      	mov	r0, r9
 8005f0c:	dcea      	bgt.n	8005ee4 <_dtoa_r+0x80c>
 8005f0e:	2300      	movs	r3, #0
 8005f10:	9700      	str	r7, [sp, #0]
 8005f12:	9302      	str	r3, [sp, #8]
 8005f14:	4651      	mov	r1, sl
 8005f16:	2201      	movs	r2, #1
 8005f18:	4648      	mov	r0, r9
 8005f1a:	f001 fc93 	bl	8007844 <__lshift>
 8005f1e:	4631      	mov	r1, r6
 8005f20:	4682      	mov	sl, r0
 8005f22:	f001 fce5 	bl	80078f0 <__mcmp>
 8005f26:	2800      	cmp	r0, #0
 8005f28:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8005f2c:	dc14      	bgt.n	8005f58 <_dtoa_r+0x880>
 8005f2e:	d108      	bne.n	8005f42 <_dtoa_r+0x86a>
 8005f30:	9b00      	ldr	r3, [sp, #0]
 8005f32:	07db      	lsls	r3, r3, #31
 8005f34:	d410      	bmi.n	8005f58 <_dtoa_r+0x880>
 8005f36:	e004      	b.n	8005f42 <_dtoa_r+0x86a>
 8005f38:	40240000 	.word	0x40240000
 8005f3c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8005f40:	461c      	mov	r4, r3
 8005f42:	2a30      	cmp	r2, #48	; 0x30
 8005f44:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005f48:	d0f8      	beq.n	8005f3c <_dtoa_r+0x864>
 8005f4a:	e00b      	b.n	8005f64 <_dtoa_r+0x88c>
 8005f4c:	459b      	cmp	fp, r3
 8005f4e:	f000 814e 	beq.w	80061ee <_dtoa_r+0xb16>
 8005f52:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8005f56:	461c      	mov	r4, r3
 8005f58:	2a39      	cmp	r2, #57	; 0x39
 8005f5a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8005f5e:	d0f5      	beq.n	8005f4c <_dtoa_r+0x874>
 8005f60:	3201      	adds	r2, #1
 8005f62:	701a      	strb	r2, [r3, #0]
 8005f64:	4631      	mov	r1, r6
 8005f66:	4648      	mov	r0, r9
 8005f68:	f001 fad2 	bl	8007510 <_Bfree>
 8005f6c:	b155      	cbz	r5, 8005f84 <_dtoa_r+0x8ac>
 8005f6e:	9902      	ldr	r1, [sp, #8]
 8005f70:	b121      	cbz	r1, 8005f7c <_dtoa_r+0x8a4>
 8005f72:	42a9      	cmp	r1, r5
 8005f74:	d002      	beq.n	8005f7c <_dtoa_r+0x8a4>
 8005f76:	4648      	mov	r0, r9
 8005f78:	f001 faca 	bl	8007510 <_Bfree>
 8005f7c:	4629      	mov	r1, r5
 8005f7e:	4648      	mov	r0, r9
 8005f80:	f001 fac6 	bl	8007510 <_Bfree>
 8005f84:	4651      	mov	r1, sl
 8005f86:	4648      	mov	r0, r9
 8005f88:	f001 fac2 	bl	8007510 <_Bfree>
 8005f8c:	2200      	movs	r2, #0
 8005f8e:	9b06      	ldr	r3, [sp, #24]
 8005f90:	7022      	strb	r2, [r4, #0]
 8005f92:	9a05      	ldr	r2, [sp, #20]
 8005f94:	3301      	adds	r3, #1
 8005f96:	6013      	str	r3, [r2, #0]
 8005f98:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8005f9a:	2b00      	cmp	r3, #0
 8005f9c:	f43f abdb 	beq.w	8005756 <_dtoa_r+0x7e>
 8005fa0:	4658      	mov	r0, fp
 8005fa2:	601c      	str	r4, [r3, #0]
 8005fa4:	b01b      	add	sp, #108	; 0x6c
 8005fa6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005faa:	201c      	movs	r0, #28
 8005fac:	e6eb      	b.n	8005d86 <_dtoa_r+0x6ae>
 8005fae:	4601      	mov	r1, r0
 8005fb0:	4648      	mov	r0, r9
 8005fb2:	f001 fbf7 	bl	80077a4 <__pow5mult>
 8005fb6:	9b02      	ldr	r3, [sp, #8]
 8005fb8:	2b01      	cmp	r3, #1
 8005fba:	4606      	mov	r6, r0
 8005fbc:	f340 80d4 	ble.w	8006168 <_dtoa_r+0xa90>
 8005fc0:	2300      	movs	r3, #0
 8005fc2:	930c      	str	r3, [sp, #48]	; 0x30
 8005fc4:	6933      	ldr	r3, [r6, #16]
 8005fc6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8005fca:	6918      	ldr	r0, [r3, #16]
 8005fcc:	f001 faea 	bl	80075a4 <__hi0bits>
 8005fd0:	f1c0 0020 	rsb	r0, r0, #32
 8005fd4:	e6cb      	b.n	8005d6e <_dtoa_r+0x696>
 8005fd6:	900d      	str	r0, [sp, #52]	; 0x34
 8005fd8:	e42a      	b.n	8005830 <_dtoa_r+0x158>
 8005fda:	2501      	movs	r5, #1
 8005fdc:	e440      	b.n	8005860 <_dtoa_r+0x188>
 8005fde:	f1c3 0820 	rsb	r8, r3, #32
 8005fe2:	9b00      	ldr	r3, [sp, #0]
 8005fe4:	fa03 f008 	lsl.w	r0, r3, r8
 8005fe8:	f7ff bbd8 	b.w	800579c <_dtoa_r+0xc4>
 8005fec:	2300      	movs	r3, #0
 8005fee:	930a      	str	r3, [sp, #40]	; 0x28
 8005ff0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8005ff4:	4413      	add	r3, r2
 8005ff6:	930e      	str	r3, [sp, #56]	; 0x38
 8005ff8:	3301      	adds	r3, #1
 8005ffa:	2b01      	cmp	r3, #1
 8005ffc:	461e      	mov	r6, r3
 8005ffe:	9309      	str	r3, [sp, #36]	; 0x24
 8006000:	bfb8      	it	lt
 8006002:	2601      	movlt	r6, #1
 8006004:	2100      	movs	r1, #0
 8006006:	2e17      	cmp	r6, #23
 8006008:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800600c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800600e:	f77f ac89 	ble.w	8005924 <_dtoa_r+0x24c>
 8006012:	2201      	movs	r2, #1
 8006014:	2304      	movs	r3, #4
 8006016:	005b      	lsls	r3, r3, #1
 8006018:	f103 0014 	add.w	r0, r3, #20
 800601c:	42b0      	cmp	r0, r6
 800601e:	4611      	mov	r1, r2
 8006020:	f102 0201 	add.w	r2, r2, #1
 8006024:	d9f7      	bls.n	8006016 <_dtoa_r+0x93e>
 8006026:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800602a:	e47b      	b.n	8005924 <_dtoa_r+0x24c>
 800602c:	2300      	movs	r3, #0
 800602e:	930a      	str	r3, [sp, #40]	; 0x28
 8006030:	9e07      	ldr	r6, [sp, #28]
 8006032:	2e00      	cmp	r6, #0
 8006034:	f340 80e2 	ble.w	80061fc <_dtoa_r+0xb24>
 8006038:	960e      	str	r6, [sp, #56]	; 0x38
 800603a:	9609      	str	r6, [sp, #36]	; 0x24
 800603c:	e7e2      	b.n	8006004 <_dtoa_r+0x92c>
 800603e:	2301      	movs	r3, #1
 8006040:	930a      	str	r3, [sp, #40]	; 0x28
 8006042:	e7f5      	b.n	8006030 <_dtoa_r+0x958>
 8006044:	9b00      	ldr	r3, [sp, #0]
 8006046:	2b00      	cmp	r3, #0
 8006048:	f47f ae90 	bne.w	8005d6c <_dtoa_r+0x694>
 800604c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8006050:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8006054:	2b00      	cmp	r3, #0
 8006056:	f040 8192 	bne.w	800637e <_dtoa_r+0xca6>
 800605a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800605e:	0d1b      	lsrs	r3, r3, #20
 8006060:	051b      	lsls	r3, r3, #20
 8006062:	b12b      	cbz	r3, 8006070 <_dtoa_r+0x998>
 8006064:	9b08      	ldr	r3, [sp, #32]
 8006066:	3301      	adds	r3, #1
 8006068:	9308      	str	r3, [sp, #32]
 800606a:	f108 0801 	add.w	r8, r8, #1
 800606e:	2301      	movs	r3, #1
 8006070:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006072:	930c      	str	r3, [sp, #48]	; 0x30
 8006074:	2a00      	cmp	r2, #0
 8006076:	f43f ae79 	beq.w	8005d6c <_dtoa_r+0x694>
 800607a:	e7a3      	b.n	8005fc4 <_dtoa_r+0x8ec>
 800607c:	463a      	mov	r2, r7
 800607e:	4629      	mov	r1, r5
 8006080:	4648      	mov	r0, r9
 8006082:	f001 fb8f 	bl	80077a4 <__pow5mult>
 8006086:	4652      	mov	r2, sl
 8006088:	4601      	mov	r1, r0
 800608a:	4605      	mov	r5, r0
 800608c:	4648      	mov	r0, r9
 800608e:	f001 fae3 	bl	8007658 <__multiply>
 8006092:	4651      	mov	r1, sl
 8006094:	4607      	mov	r7, r0
 8006096:	4648      	mov	r0, r9
 8006098:	f001 fa3a 	bl	8007510 <_Bfree>
 800609c:	46ba      	mov	sl, r7
 800609e:	2e00      	cmp	r6, #0
 80060a0:	f43f ae57 	beq.w	8005d52 <_dtoa_r+0x67a>
 80060a4:	e64f      	b.n	8005d46 <_dtoa_r+0x66e>
 80060a6:	4629      	mov	r1, r5
 80060a8:	4622      	mov	r2, r4
 80060aa:	4648      	mov	r0, r9
 80060ac:	f001 fbca 	bl	8007844 <__lshift>
 80060b0:	4605      	mov	r5, r0
 80060b2:	e68d      	b.n	8005dd0 <_dtoa_r+0x6f8>
 80060b4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80060b6:	2a00      	cmp	r2, #0
 80060b8:	f000 815d 	beq.w	8006376 <_dtoa_r+0xc9e>
 80060bc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 80060c0:	9a08      	ldr	r2, [sp, #32]
 80060c2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80060c4:	4614      	mov	r4, r2
 80060c6:	441a      	add	r2, r3
 80060c8:	4498      	add	r8, r3
 80060ca:	9208      	str	r2, [sp, #32]
 80060cc:	e5f7      	b.n	8005cbe <_dtoa_r+0x5e6>
 80060ce:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80060d0:	2b00      	cmp	r3, #0
 80060d2:	f73f ad3e 	bgt.w	8005b52 <_dtoa_r+0x47a>
 80060d6:	f040 80bc 	bne.w	8006252 <_dtoa_r+0xb7a>
 80060da:	ec51 0b17 	vmov	r0, r1, d7
 80060de:	2200      	movs	r2, #0
 80060e0:	4bb2      	ldr	r3, [pc, #712]	; (80063ac <_dtoa_r+0xcd4>)
 80060e2:	f7fa fd29 	bl	8000b38 <__aeabi_dmul>
 80060e6:	e9dd 2300 	ldrd	r2, r3, [sp]
 80060ea:	f7fa ffab 	bl	8001044 <__aeabi_dcmpge>
 80060ee:	9e09      	ldr	r6, [sp, #36]	; 0x24
 80060f0:	4635      	mov	r5, r6
 80060f2:	2800      	cmp	r0, #0
 80060f4:	d176      	bne.n	80061e4 <_dtoa_r+0xb0c>
 80060f6:	9a06      	ldr	r2, [sp, #24]
 80060f8:	2331      	movs	r3, #49	; 0x31
 80060fa:	3201      	adds	r2, #1
 80060fc:	9206      	str	r2, [sp, #24]
 80060fe:	f88b 3000 	strb.w	r3, [fp]
 8006102:	f10b 0401 	add.w	r4, fp, #1
 8006106:	4631      	mov	r1, r6
 8006108:	4648      	mov	r0, r9
 800610a:	f001 fa01 	bl	8007510 <_Bfree>
 800610e:	2d00      	cmp	r5, #0
 8006110:	f47f af34 	bne.w	8005f7c <_dtoa_r+0x8a4>
 8006114:	e736      	b.n	8005f84 <_dtoa_r+0x8ac>
 8006116:	f000 8142 	beq.w	800639e <_dtoa_r+0xcc6>
 800611a:	9b06      	ldr	r3, [sp, #24]
 800611c:	425c      	negs	r4, r3
 800611e:	4ba4      	ldr	r3, [pc, #656]	; (80063b0 <_dtoa_r+0xcd8>)
 8006120:	f004 020f 	and.w	r2, r4, #15
 8006124:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006128:	e9d3 2300 	ldrd	r2, r3, [r3]
 800612c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8006130:	f7fa fd02 	bl	8000b38 <__aeabi_dmul>
 8006134:	1124      	asrs	r4, r4, #4
 8006136:	e9cd 0100 	strd	r0, r1, [sp]
 800613a:	f000 81c6 	beq.w	80064ca <_dtoa_r+0xdf2>
 800613e:	4d9d      	ldr	r5, [pc, #628]	; (80063b4 <_dtoa_r+0xcdc>)
 8006140:	2300      	movs	r3, #0
 8006142:	2602      	movs	r6, #2
 8006144:	07e7      	lsls	r7, r4, #31
 8006146:	d505      	bpl.n	8006154 <_dtoa_r+0xa7c>
 8006148:	e9d5 2300 	ldrd	r2, r3, [r5]
 800614c:	f7fa fcf4 	bl	8000b38 <__aeabi_dmul>
 8006150:	3601      	adds	r6, #1
 8006152:	2301      	movs	r3, #1
 8006154:	1064      	asrs	r4, r4, #1
 8006156:	f105 0508 	add.w	r5, r5, #8
 800615a:	d1f3      	bne.n	8006144 <_dtoa_r+0xa6c>
 800615c:	2b00      	cmp	r3, #0
 800615e:	f43f ac27 	beq.w	80059b0 <_dtoa_r+0x2d8>
 8006162:	e9cd 0100 	strd	r0, r1, [sp]
 8006166:	e423      	b.n	80059b0 <_dtoa_r+0x2d8>
 8006168:	9b00      	ldr	r3, [sp, #0]
 800616a:	2b00      	cmp	r3, #0
 800616c:	f43f af6e 	beq.w	800604c <_dtoa_r+0x974>
 8006170:	e726      	b.n	8005fc0 <_dtoa_r+0x8e8>
 8006172:	6869      	ldr	r1, [r5, #4]
 8006174:	4648      	mov	r0, r9
 8006176:	f001 f9a5 	bl	80074c4 <_Balloc>
 800617a:	692b      	ldr	r3, [r5, #16]
 800617c:	3302      	adds	r3, #2
 800617e:	009a      	lsls	r2, r3, #2
 8006180:	4604      	mov	r4, r0
 8006182:	f105 010c 	add.w	r1, r5, #12
 8006186:	300c      	adds	r0, #12
 8006188:	f7fa f9ba 	bl	8000500 <memcpy>
 800618c:	4621      	mov	r1, r4
 800618e:	2201      	movs	r2, #1
 8006190:	4648      	mov	r0, r9
 8006192:	f001 fb57 	bl	8007844 <__lshift>
 8006196:	4680      	mov	r8, r0
 8006198:	e61f      	b.n	8005dda <_dtoa_r+0x702>
 800619a:	2400      	movs	r4, #0
 800619c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80061a0:	4621      	mov	r1, r4
 80061a2:	4648      	mov	r0, r9
 80061a4:	f001 f98e 	bl	80074c4 <_Balloc>
 80061a8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80061ac:	930e      	str	r3, [sp, #56]	; 0x38
 80061ae:	9309      	str	r3, [sp, #36]	; 0x24
 80061b0:	2301      	movs	r3, #1
 80061b2:	4683      	mov	fp, r0
 80061b4:	9407      	str	r4, [sp, #28]
 80061b6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80061ba:	930a      	str	r3, [sp, #40]	; 0x28
 80061bc:	e4b6      	b.n	8005b2c <_dtoa_r+0x454>
 80061be:	f001 f9b1 	bl	8007524 <__multadd>
 80061c2:	4627      	mov	r7, r4
 80061c4:	4605      	mov	r5, r0
 80061c6:	4680      	mov	r8, r0
 80061c8:	e614      	b.n	8005df4 <_dtoa_r+0x71c>
 80061ca:	4648      	mov	r0, r9
 80061cc:	f001 f9a0 	bl	8007510 <_Bfree>
 80061d0:	2301      	movs	r3, #1
 80061d2:	e639      	b.n	8005e48 <_dtoa_r+0x770>
 80061d4:	9b02      	ldr	r3, [sp, #8]
 80061d6:	2b02      	cmp	r3, #2
 80061d8:	f77f adf3 	ble.w	8005dc2 <_dtoa_r+0x6ea>
 80061dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80061de:	2b00      	cmp	r3, #0
 80061e0:	f000 80cf 	beq.w	8006382 <_dtoa_r+0xcaa>
 80061e4:	9b07      	ldr	r3, [sp, #28]
 80061e6:	43db      	mvns	r3, r3
 80061e8:	9306      	str	r3, [sp, #24]
 80061ea:	465c      	mov	r4, fp
 80061ec:	e78b      	b.n	8006106 <_dtoa_r+0xa2e>
 80061ee:	9a06      	ldr	r2, [sp, #24]
 80061f0:	2331      	movs	r3, #49	; 0x31
 80061f2:	3201      	adds	r2, #1
 80061f4:	9206      	str	r2, [sp, #24]
 80061f6:	f88b 3000 	strb.w	r3, [fp]
 80061fa:	e6b3      	b.n	8005f64 <_dtoa_r+0x88c>
 80061fc:	2401      	movs	r4, #1
 80061fe:	9409      	str	r4, [sp, #36]	; 0x24
 8006200:	9407      	str	r4, [sp, #28]
 8006202:	f7ff bb8b 	b.w	800591c <_dtoa_r+0x244>
 8006206:	4630      	mov	r0, r6
 8006208:	f7fa fc2c 	bl	8000a64 <__aeabi_i2d>
 800620c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006210:	f7fa fc92 	bl	8000b38 <__aeabi_dmul>
 8006214:	2200      	movs	r2, #0
 8006216:	4b68      	ldr	r3, [pc, #416]	; (80063b8 <_dtoa_r+0xce0>)
 8006218:	f7fa fad8 	bl	80007cc <__adddf3>
 800621c:	4606      	mov	r6, r0
 800621e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8006222:	2200      	movs	r2, #0
 8006224:	4b61      	ldr	r3, [pc, #388]	; (80063ac <_dtoa_r+0xcd4>)
 8006226:	e9dd 0100 	ldrd	r0, r1, [sp]
 800622a:	f7fa facd 	bl	80007c8 <__aeabi_dsub>
 800622e:	4632      	mov	r2, r6
 8006230:	463b      	mov	r3, r7
 8006232:	4604      	mov	r4, r0
 8006234:	460d      	mov	r5, r1
 8006236:	f7fa ff0f 	bl	8001058 <__aeabi_dcmpgt>
 800623a:	2800      	cmp	r0, #0
 800623c:	d14f      	bne.n	80062de <_dtoa_r+0xc06>
 800623e:	4632      	mov	r2, r6
 8006240:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8006244:	4620      	mov	r0, r4
 8006246:	4629      	mov	r1, r5
 8006248:	f7fa fee8 	bl	800101c <__aeabi_dcmplt>
 800624c:	2800      	cmp	r0, #0
 800624e:	f43f ac69 	beq.w	8005b24 <_dtoa_r+0x44c>
 8006252:	2600      	movs	r6, #0
 8006254:	4635      	mov	r5, r6
 8006256:	e7c5      	b.n	80061e4 <_dtoa_r+0xb0c>
 8006258:	2301      	movs	r3, #1
 800625a:	930a      	str	r3, [sp, #40]	; 0x28
 800625c:	e6c8      	b.n	8005ff0 <_dtoa_r+0x918>
 800625e:	4651      	mov	r1, sl
 8006260:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8006262:	4648      	mov	r0, r9
 8006264:	f001 fa9e 	bl	80077a4 <__pow5mult>
 8006268:	4682      	mov	sl, r0
 800626a:	e572      	b.n	8005d52 <_dtoa_r+0x67a>
 800626c:	f8dd a000 	ldr.w	sl, [sp]
 8006270:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006274:	e686      	b.n	8005f84 <_dtoa_r+0x8ac>
 8006276:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006278:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800627a:	1afb      	subs	r3, r7, r3
 800627c:	441a      	add	r2, r3
 800627e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8006282:	2700      	movs	r7, #0
 8006284:	e512      	b.n	8005cac <_dtoa_r+0x5d4>
 8006286:	2b00      	cmp	r3, #0
 8006288:	9402      	str	r4, [sp, #8]
 800628a:	465e      	mov	r6, fp
 800628c:	f107 0401 	add.w	r4, r7, #1
 8006290:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8006294:	f300 80ba 	bgt.w	800640c <_dtoa_r+0xd34>
 8006298:	9b00      	ldr	r3, [sp, #0]
 800629a:	9502      	str	r5, [sp, #8]
 800629c:	703b      	strb	r3, [r7, #0]
 800629e:	4645      	mov	r5, r8
 80062a0:	e660      	b.n	8005f64 <_dtoa_r+0x88c>
 80062a2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80062a6:	2602      	movs	r6, #2
 80062a8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80062ac:	f7ff bb67 	b.w	800597e <_dtoa_r+0x2a6>
 80062b0:	9b00      	ldr	r3, [sp, #0]
 80062b2:	2b39      	cmp	r3, #57	; 0x39
 80062b4:	465e      	mov	r6, fp
 80062b6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80062ba:	f000 80b9 	beq.w	8006430 <_dtoa_r+0xd58>
 80062be:	9b00      	ldr	r3, [sp, #0]
 80062c0:	9502      	str	r5, [sp, #8]
 80062c2:	3301      	adds	r3, #1
 80062c4:	703b      	strb	r3, [r7, #0]
 80062c6:	4645      	mov	r5, r8
 80062c8:	e64c      	b.n	8005f64 <_dtoa_r+0x88c>
 80062ca:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 80062ce:	1a9c      	subs	r4, r3, r2
 80062d0:	e4f5      	b.n	8005cbe <_dtoa_r+0x5e6>
 80062d2:	465e      	mov	r6, fp
 80062d4:	9502      	str	r5, [sp, #8]
 80062d6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80062da:	4645      	mov	r5, r8
 80062dc:	e61a      	b.n	8005f14 <_dtoa_r+0x83c>
 80062de:	2600      	movs	r6, #0
 80062e0:	4635      	mov	r5, r6
 80062e2:	e708      	b.n	80060f6 <_dtoa_r+0xa1e>
 80062e4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80062e8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80062ec:	f7fa fc24 	bl	8000b38 <__aeabi_dmul>
 80062f0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80062f2:	f88b 5000 	strb.w	r5, [fp]
 80062f6:	2b01      	cmp	r3, #1
 80062f8:	e9cd 0100 	strd	r0, r1, [sp]
 80062fc:	d020      	beq.n	8006340 <_dtoa_r+0xc68>
 80062fe:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8006300:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8006304:	445b      	add	r3, fp
 8006306:	4698      	mov	r8, r3
 8006308:	2200      	movs	r2, #0
 800630a:	4b2c      	ldr	r3, [pc, #176]	; (80063bc <_dtoa_r+0xce4>)
 800630c:	4630      	mov	r0, r6
 800630e:	4639      	mov	r1, r7
 8006310:	f7fa fc12 	bl	8000b38 <__aeabi_dmul>
 8006314:	460f      	mov	r7, r1
 8006316:	4606      	mov	r6, r0
 8006318:	f7fa febe 	bl	8001098 <__aeabi_d2iz>
 800631c:	4605      	mov	r5, r0
 800631e:	f7fa fba1 	bl	8000a64 <__aeabi_i2d>
 8006322:	3530      	adds	r5, #48	; 0x30
 8006324:	4602      	mov	r2, r0
 8006326:	460b      	mov	r3, r1
 8006328:	4630      	mov	r0, r6
 800632a:	4639      	mov	r1, r7
 800632c:	f7fa fa4c 	bl	80007c8 <__aeabi_dsub>
 8006330:	f804 5b01 	strb.w	r5, [r4], #1
 8006334:	4544      	cmp	r4, r8
 8006336:	4606      	mov	r6, r0
 8006338:	460f      	mov	r7, r1
 800633a:	d1e5      	bne.n	8006308 <_dtoa_r+0xc30>
 800633c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8006340:	4b1f      	ldr	r3, [pc, #124]	; (80063c0 <_dtoa_r+0xce8>)
 8006342:	2200      	movs	r2, #0
 8006344:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006348:	f7fa fa40 	bl	80007cc <__adddf3>
 800634c:	4632      	mov	r2, r6
 800634e:	463b      	mov	r3, r7
 8006350:	f7fa fe64 	bl	800101c <__aeabi_dcmplt>
 8006354:	2800      	cmp	r0, #0
 8006356:	d070      	beq.n	800643a <_dtoa_r+0xd62>
 8006358:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800635a:	9306      	str	r3, [sp, #24]
 800635c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8006360:	e48f      	b.n	8005c82 <_dtoa_r+0x5aa>
 8006362:	2330      	movs	r3, #48	; 0x30
 8006364:	f88b 3000 	strb.w	r3, [fp]
 8006368:	9b06      	ldr	r3, [sp, #24]
 800636a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800636e:	3301      	adds	r3, #1
 8006370:	9306      	str	r3, [sp, #24]
 8006372:	465b      	mov	r3, fp
 8006374:	e489      	b.n	8005c8a <_dtoa_r+0x5b2>
 8006376:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8006378:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800637c:	e6a0      	b.n	80060c0 <_dtoa_r+0x9e8>
 800637e:	2300      	movs	r3, #0
 8006380:	e676      	b.n	8006070 <_dtoa_r+0x998>
 8006382:	4631      	mov	r1, r6
 8006384:	2205      	movs	r2, #5
 8006386:	4648      	mov	r0, r9
 8006388:	f001 f8cc 	bl	8007524 <__multadd>
 800638c:	4601      	mov	r1, r0
 800638e:	4606      	mov	r6, r0
 8006390:	4650      	mov	r0, sl
 8006392:	f001 faad 	bl	80078f0 <__mcmp>
 8006396:	2800      	cmp	r0, #0
 8006398:	f73f aead 	bgt.w	80060f6 <_dtoa_r+0xa1e>
 800639c:	e722      	b.n	80061e4 <_dtoa_r+0xb0c>
 800639e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80063a2:	2602      	movs	r6, #2
 80063a4:	ed8d 7b00 	vstr	d7, [sp]
 80063a8:	f7ff bb02 	b.w	80059b0 <_dtoa_r+0x2d8>
 80063ac:	40140000 	.word	0x40140000
 80063b0:	0800a788 	.word	0x0800a788
 80063b4:	0800a760 	.word	0x0800a760
 80063b8:	401c0000 	.word	0x401c0000
 80063bc:	40240000 	.word	0x40240000
 80063c0:	3fe00000 	.word	0x3fe00000
 80063c4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80063c6:	2b00      	cmp	r3, #0
 80063c8:	f43f af1d 	beq.w	8006206 <_dtoa_r+0xb2e>
 80063cc:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 80063ce:	2c00      	cmp	r4, #0
 80063d0:	f77f aba8 	ble.w	8005b24 <_dtoa_r+0x44c>
 80063d4:	2200      	movs	r2, #0
 80063d6:	4b45      	ldr	r3, [pc, #276]	; (80064ec <_dtoa_r+0xe14>)
 80063d8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80063dc:	f7fa fbac 	bl	8000b38 <__aeabi_dmul>
 80063e0:	e9cd 0100 	strd	r0, r1, [sp]
 80063e4:	1c70      	adds	r0, r6, #1
 80063e6:	f7fa fb3d 	bl	8000a64 <__aeabi_i2d>
 80063ea:	e9dd 2300 	ldrd	r2, r3, [sp]
 80063ee:	f7fa fba3 	bl	8000b38 <__aeabi_dmul>
 80063f2:	4b3f      	ldr	r3, [pc, #252]	; (80064f0 <_dtoa_r+0xe18>)
 80063f4:	2200      	movs	r2, #0
 80063f6:	f7fa f9e9 	bl	80007cc <__adddf3>
 80063fa:	9b06      	ldr	r3, [sp, #24]
 80063fc:	9412      	str	r4, [sp, #72]	; 0x48
 80063fe:	3b01      	subs	r3, #1
 8006400:	4606      	mov	r6, r0
 8006402:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8006406:	9316      	str	r3, [sp, #88]	; 0x58
 8006408:	f7ff baf3 	b.w	80059f2 <_dtoa_r+0x31a>
 800640c:	4651      	mov	r1, sl
 800640e:	2201      	movs	r2, #1
 8006410:	4648      	mov	r0, r9
 8006412:	f001 fa17 	bl	8007844 <__lshift>
 8006416:	4631      	mov	r1, r6
 8006418:	4682      	mov	sl, r0
 800641a:	f001 fa69 	bl	80078f0 <__mcmp>
 800641e:	2800      	cmp	r0, #0
 8006420:	dd3b      	ble.n	800649a <_dtoa_r+0xdc2>
 8006422:	9b00      	ldr	r3, [sp, #0]
 8006424:	2b39      	cmp	r3, #57	; 0x39
 8006426:	d003      	beq.n	8006430 <_dtoa_r+0xd58>
 8006428:	9b02      	ldr	r3, [sp, #8]
 800642a:	3331      	adds	r3, #49	; 0x31
 800642c:	9300      	str	r3, [sp, #0]
 800642e:	e733      	b.n	8006298 <_dtoa_r+0xbc0>
 8006430:	2239      	movs	r2, #57	; 0x39
 8006432:	9502      	str	r5, [sp, #8]
 8006434:	703a      	strb	r2, [r7, #0]
 8006436:	4645      	mov	r5, r8
 8006438:	e58e      	b.n	8005f58 <_dtoa_r+0x880>
 800643a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800643e:	2000      	movs	r0, #0
 8006440:	492c      	ldr	r1, [pc, #176]	; (80064f4 <_dtoa_r+0xe1c>)
 8006442:	f7fa f9c1 	bl	80007c8 <__aeabi_dsub>
 8006446:	4632      	mov	r2, r6
 8006448:	463b      	mov	r3, r7
 800644a:	f7fa fe05 	bl	8001058 <__aeabi_dcmpgt>
 800644e:	b910      	cbnz	r0, 8006456 <_dtoa_r+0xd7e>
 8006450:	f7ff bb68 	b.w	8005b24 <_dtoa_r+0x44c>
 8006454:	4614      	mov	r4, r2
 8006456:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800645a:	2b30      	cmp	r3, #48	; 0x30
 800645c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8006460:	d0f8      	beq.n	8006454 <_dtoa_r+0xd7c>
 8006462:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8006464:	9306      	str	r3, [sp, #24]
 8006466:	e58d      	b.n	8005f84 <_dtoa_r+0x8ac>
 8006468:	46d9      	mov	r9, fp
 800646a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800646e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8006472:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8006474:	9306      	str	r3, [sp, #24]
 8006476:	e404      	b.n	8005c82 <_dtoa_r+0x5aa>
 8006478:	9b00      	ldr	r3, [sp, #0]
 800647a:	2b39      	cmp	r3, #57	; 0x39
 800647c:	4621      	mov	r1, r4
 800647e:	4632      	mov	r2, r6
 8006480:	f107 0401 	add.w	r4, r7, #1
 8006484:	465e      	mov	r6, fp
 8006486:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800648a:	d0d1      	beq.n	8006430 <_dtoa_r+0xd58>
 800648c:	2a00      	cmp	r2, #0
 800648e:	f77f af03 	ble.w	8006298 <_dtoa_r+0xbc0>
 8006492:	460b      	mov	r3, r1
 8006494:	3331      	adds	r3, #49	; 0x31
 8006496:	9300      	str	r3, [sp, #0]
 8006498:	e6fe      	b.n	8006298 <_dtoa_r+0xbc0>
 800649a:	f47f aefd 	bne.w	8006298 <_dtoa_r+0xbc0>
 800649e:	9b00      	ldr	r3, [sp, #0]
 80064a0:	07da      	lsls	r2, r3, #31
 80064a2:	f57f aef9 	bpl.w	8006298 <_dtoa_r+0xbc0>
 80064a6:	e7bc      	b.n	8006422 <_dtoa_r+0xd4a>
 80064a8:	4629      	mov	r1, r5
 80064aa:	2300      	movs	r3, #0
 80064ac:	220a      	movs	r2, #10
 80064ae:	4648      	mov	r0, r9
 80064b0:	f001 f838 	bl	8007524 <__multadd>
 80064b4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80064b6:	2b00      	cmp	r3, #0
 80064b8:	4605      	mov	r5, r0
 80064ba:	dd09      	ble.n	80064d0 <_dtoa_r+0xdf8>
 80064bc:	9309      	str	r3, [sp, #36]	; 0x24
 80064be:	e484      	b.n	8005dca <_dtoa_r+0x6f2>
 80064c0:	9b02      	ldr	r3, [sp, #8]
 80064c2:	2b02      	cmp	r3, #2
 80064c4:	dc0e      	bgt.n	80064e4 <_dtoa_r+0xe0c>
 80064c6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80064c8:	e507      	b.n	8005eda <_dtoa_r+0x802>
 80064ca:	2602      	movs	r6, #2
 80064cc:	f7ff ba70 	b.w	80059b0 <_dtoa_r+0x2d8>
 80064d0:	9b02      	ldr	r3, [sp, #8]
 80064d2:	2b02      	cmp	r3, #2
 80064d4:	dc06      	bgt.n	80064e4 <_dtoa_r+0xe0c>
 80064d6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80064d8:	e7f0      	b.n	80064bc <_dtoa_r+0xde4>
 80064da:	f43f ac59 	beq.w	8005d90 <_dtoa_r+0x6b8>
 80064de:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80064e2:	e450      	b.n	8005d86 <_dtoa_r+0x6ae>
 80064e4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80064e6:	9309      	str	r3, [sp, #36]	; 0x24
 80064e8:	e678      	b.n	80061dc <_dtoa_r+0xb04>
 80064ea:	bf00      	nop
 80064ec:	40240000 	.word	0x40240000
 80064f0:	401c0000 	.word	0x401c0000
 80064f4:	3fe00000 	.word	0x3fe00000

080064f8 <__sflush_r>:
 80064f8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80064fc:	b29a      	uxth	r2, r3
 80064fe:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006502:	460c      	mov	r4, r1
 8006504:	0711      	lsls	r1, r2, #28
 8006506:	4680      	mov	r8, r0
 8006508:	d444      	bmi.n	8006594 <__sflush_r+0x9c>
 800650a:	6862      	ldr	r2, [r4, #4]
 800650c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8006510:	2a00      	cmp	r2, #0
 8006512:	81a3      	strh	r3, [r4, #12]
 8006514:	dd59      	ble.n	80065ca <__sflush_r+0xd2>
 8006516:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8006518:	2d00      	cmp	r5, #0
 800651a:	d053      	beq.n	80065c4 <__sflush_r+0xcc>
 800651c:	2200      	movs	r2, #0
 800651e:	b29b      	uxth	r3, r3
 8006520:	f8d8 6000 	ldr.w	r6, [r8]
 8006524:	69e1      	ldr	r1, [r4, #28]
 8006526:	f8c8 2000 	str.w	r2, [r8]
 800652a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800652e:	f040 8083 	bne.w	8006638 <__sflush_r+0x140>
 8006532:	2301      	movs	r3, #1
 8006534:	4640      	mov	r0, r8
 8006536:	47a8      	blx	r5
 8006538:	1c42      	adds	r2, r0, #1
 800653a:	d04a      	beq.n	80065d2 <__sflush_r+0xda>
 800653c:	89a3      	ldrh	r3, [r4, #12]
 800653e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8006540:	69e1      	ldr	r1, [r4, #28]
 8006542:	075b      	lsls	r3, r3, #29
 8006544:	d505      	bpl.n	8006552 <__sflush_r+0x5a>
 8006546:	6862      	ldr	r2, [r4, #4]
 8006548:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800654a:	1a80      	subs	r0, r0, r2
 800654c:	b10b      	cbz	r3, 8006552 <__sflush_r+0x5a>
 800654e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8006550:	1ac0      	subs	r0, r0, r3
 8006552:	4602      	mov	r2, r0
 8006554:	2300      	movs	r3, #0
 8006556:	4640      	mov	r0, r8
 8006558:	47a8      	blx	r5
 800655a:	1c47      	adds	r7, r0, #1
 800655c:	d045      	beq.n	80065ea <__sflush_r+0xf2>
 800655e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006562:	6922      	ldr	r2, [r4, #16]
 8006564:	6022      	str	r2, [r4, #0]
 8006566:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800656a:	2200      	movs	r2, #0
 800656c:	81a3      	strh	r3, [r4, #12]
 800656e:	04db      	lsls	r3, r3, #19
 8006570:	6062      	str	r2, [r4, #4]
 8006572:	d500      	bpl.n	8006576 <__sflush_r+0x7e>
 8006574:	6520      	str	r0, [r4, #80]	; 0x50
 8006576:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006578:	f8c8 6000 	str.w	r6, [r8]
 800657c:	b311      	cbz	r1, 80065c4 <__sflush_r+0xcc>
 800657e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006582:	4299      	cmp	r1, r3
 8006584:	d002      	beq.n	800658c <__sflush_r+0x94>
 8006586:	4640      	mov	r0, r8
 8006588:	f000 f95e 	bl	8006848 <_free_r>
 800658c:	2000      	movs	r0, #0
 800658e:	6320      	str	r0, [r4, #48]	; 0x30
 8006590:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006594:	6926      	ldr	r6, [r4, #16]
 8006596:	b1ae      	cbz	r6, 80065c4 <__sflush_r+0xcc>
 8006598:	6825      	ldr	r5, [r4, #0]
 800659a:	6026      	str	r6, [r4, #0]
 800659c:	0792      	lsls	r2, r2, #30
 800659e:	bf0c      	ite	eq
 80065a0:	6963      	ldreq	r3, [r4, #20]
 80065a2:	2300      	movne	r3, #0
 80065a4:	1bad      	subs	r5, r5, r6
 80065a6:	60a3      	str	r3, [r4, #8]
 80065a8:	e00a      	b.n	80065c0 <__sflush_r+0xc8>
 80065aa:	462b      	mov	r3, r5
 80065ac:	4632      	mov	r2, r6
 80065ae:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80065b0:	69e1      	ldr	r1, [r4, #28]
 80065b2:	4640      	mov	r0, r8
 80065b4:	47b8      	blx	r7
 80065b6:	2800      	cmp	r0, #0
 80065b8:	eba5 0500 	sub.w	r5, r5, r0
 80065bc:	4406      	add	r6, r0
 80065be:	dd2b      	ble.n	8006618 <__sflush_r+0x120>
 80065c0:	2d00      	cmp	r5, #0
 80065c2:	dcf2      	bgt.n	80065aa <__sflush_r+0xb2>
 80065c4:	2000      	movs	r0, #0
 80065c6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80065ca:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80065cc:	2a00      	cmp	r2, #0
 80065ce:	dca2      	bgt.n	8006516 <__sflush_r+0x1e>
 80065d0:	e7f8      	b.n	80065c4 <__sflush_r+0xcc>
 80065d2:	f8d8 3000 	ldr.w	r3, [r8]
 80065d6:	2b00      	cmp	r3, #0
 80065d8:	d0b0      	beq.n	800653c <__sflush_r+0x44>
 80065da:	2b1d      	cmp	r3, #29
 80065dc:	d001      	beq.n	80065e2 <__sflush_r+0xea>
 80065de:	2b16      	cmp	r3, #22
 80065e0:	d12c      	bne.n	800663c <__sflush_r+0x144>
 80065e2:	f8c8 6000 	str.w	r6, [r8]
 80065e6:	2000      	movs	r0, #0
 80065e8:	e7ed      	b.n	80065c6 <__sflush_r+0xce>
 80065ea:	f8d8 1000 	ldr.w	r1, [r8]
 80065ee:	291d      	cmp	r1, #29
 80065f0:	d81a      	bhi.n	8006628 <__sflush_r+0x130>
 80065f2:	4b15      	ldr	r3, [pc, #84]	; (8006648 <__sflush_r+0x150>)
 80065f4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80065f8:	40cb      	lsrs	r3, r1
 80065fa:	43db      	mvns	r3, r3
 80065fc:	f013 0301 	ands.w	r3, r3, #1
 8006600:	d114      	bne.n	800662c <__sflush_r+0x134>
 8006602:	6925      	ldr	r5, [r4, #16]
 8006604:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8006608:	e9c4 5300 	strd	r5, r3, [r4]
 800660c:	04d5      	lsls	r5, r2, #19
 800660e:	81a2      	strh	r2, [r4, #12]
 8006610:	d5b1      	bpl.n	8006576 <__sflush_r+0x7e>
 8006612:	2900      	cmp	r1, #0
 8006614:	d1af      	bne.n	8006576 <__sflush_r+0x7e>
 8006616:	e7ad      	b.n	8006574 <__sflush_r+0x7c>
 8006618:	89a3      	ldrh	r3, [r4, #12]
 800661a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800661e:	81a3      	strh	r3, [r4, #12]
 8006620:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006624:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006628:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800662c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8006630:	81a2      	strh	r2, [r4, #12]
 8006632:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006636:	e7c6      	b.n	80065c6 <__sflush_r+0xce>
 8006638:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800663a:	e782      	b.n	8006542 <__sflush_r+0x4a>
 800663c:	89a3      	ldrh	r3, [r4, #12]
 800663e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006642:	81a3      	strh	r3, [r4, #12]
 8006644:	e7bf      	b.n	80065c6 <__sflush_r+0xce>
 8006646:	bf00      	nop
 8006648:	20400001 	.word	0x20400001

0800664c <_fflush_r>:
 800664c:	b538      	push	{r3, r4, r5, lr}
 800664e:	460d      	mov	r5, r1
 8006650:	4604      	mov	r4, r0
 8006652:	b108      	cbz	r0, 8006658 <_fflush_r+0xc>
 8006654:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006656:	b1a3      	cbz	r3, 8006682 <_fflush_r+0x36>
 8006658:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800665c:	b1b8      	cbz	r0, 800668e <_fflush_r+0x42>
 800665e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8006660:	07db      	lsls	r3, r3, #31
 8006662:	d401      	bmi.n	8006668 <_fflush_r+0x1c>
 8006664:	0581      	lsls	r1, r0, #22
 8006666:	d51a      	bpl.n	800669e <_fflush_r+0x52>
 8006668:	4620      	mov	r0, r4
 800666a:	4629      	mov	r1, r5
 800666c:	f7ff ff44 	bl	80064f8 <__sflush_r>
 8006670:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8006672:	07da      	lsls	r2, r3, #31
 8006674:	4604      	mov	r4, r0
 8006676:	d402      	bmi.n	800667e <_fflush_r+0x32>
 8006678:	89ab      	ldrh	r3, [r5, #12]
 800667a:	059b      	lsls	r3, r3, #22
 800667c:	d50a      	bpl.n	8006694 <_fflush_r+0x48>
 800667e:	4620      	mov	r0, r4
 8006680:	bd38      	pop	{r3, r4, r5, pc}
 8006682:	f000 f83f 	bl	8006704 <__sinit>
 8006686:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800668a:	2800      	cmp	r0, #0
 800668c:	d1e7      	bne.n	800665e <_fflush_r+0x12>
 800668e:	4604      	mov	r4, r0
 8006690:	4620      	mov	r0, r4
 8006692:	bd38      	pop	{r3, r4, r5, pc}
 8006694:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8006696:	f000 fb87 	bl	8006da8 <__retarget_lock_release_recursive>
 800669a:	4620      	mov	r0, r4
 800669c:	bd38      	pop	{r3, r4, r5, pc}
 800669e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80066a0:	f000 fb80 	bl	8006da4 <__retarget_lock_acquire_recursive>
 80066a4:	e7e0      	b.n	8006668 <_fflush_r+0x1c>
 80066a6:	bf00      	nop

080066a8 <std>:
 80066a8:	b510      	push	{r4, lr}
 80066aa:	2300      	movs	r3, #0
 80066ac:	4604      	mov	r4, r0
 80066ae:	8181      	strh	r1, [r0, #12]
 80066b0:	81c2      	strh	r2, [r0, #14]
 80066b2:	e9c0 3300 	strd	r3, r3, [r0]
 80066b6:	6083      	str	r3, [r0, #8]
 80066b8:	6643      	str	r3, [r0, #100]	; 0x64
 80066ba:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80066be:	6183      	str	r3, [r0, #24]
 80066c0:	4619      	mov	r1, r3
 80066c2:	2208      	movs	r2, #8
 80066c4:	305c      	adds	r0, #92	; 0x5c
 80066c6:	f7fd f8cb 	bl	8003860 <memset>
 80066ca:	4807      	ldr	r0, [pc, #28]	; (80066e8 <std+0x40>)
 80066cc:	4907      	ldr	r1, [pc, #28]	; (80066ec <std+0x44>)
 80066ce:	4a08      	ldr	r2, [pc, #32]	; (80066f0 <std+0x48>)
 80066d0:	4b08      	ldr	r3, [pc, #32]	; (80066f4 <std+0x4c>)
 80066d2:	62e3      	str	r3, [r4, #44]	; 0x2c
 80066d4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80066d8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80066dc:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80066e0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80066e4:	f000 bb5a 	b.w	8006d9c <__retarget_lock_init_recursive>
 80066e8:	08007ec1 	.word	0x08007ec1
 80066ec:	08007ee5 	.word	0x08007ee5
 80066f0:	08007f21 	.word	0x08007f21
 80066f4:	08007f41 	.word	0x08007f41

080066f8 <_cleanup_r>:
 80066f8:	4901      	ldr	r1, [pc, #4]	; (8006700 <_cleanup_r+0x8>)
 80066fa:	f000 bb17 	b.w	8006d2c <_fwalk_reent>
 80066fe:	bf00      	nop
 8006700:	080081b1 	.word	0x080081b1

08006704 <__sinit>:
 8006704:	b510      	push	{r4, lr}
 8006706:	4604      	mov	r4, r0
 8006708:	4812      	ldr	r0, [pc, #72]	; (8006754 <__sinit+0x50>)
 800670a:	f000 fb4b 	bl	8006da4 <__retarget_lock_acquire_recursive>
 800670e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8006710:	b9d2      	cbnz	r2, 8006748 <__sinit+0x44>
 8006712:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8006716:	4810      	ldr	r0, [pc, #64]	; (8006758 <__sinit+0x54>)
 8006718:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800671c:	2103      	movs	r1, #3
 800671e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8006722:	63e0      	str	r0, [r4, #60]	; 0x3c
 8006724:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8006728:	6860      	ldr	r0, [r4, #4]
 800672a:	2104      	movs	r1, #4
 800672c:	f7ff ffbc 	bl	80066a8 <std>
 8006730:	2201      	movs	r2, #1
 8006732:	2109      	movs	r1, #9
 8006734:	68a0      	ldr	r0, [r4, #8]
 8006736:	f7ff ffb7 	bl	80066a8 <std>
 800673a:	2202      	movs	r2, #2
 800673c:	2112      	movs	r1, #18
 800673e:	68e0      	ldr	r0, [r4, #12]
 8006740:	f7ff ffb2 	bl	80066a8 <std>
 8006744:	2301      	movs	r3, #1
 8006746:	63a3      	str	r3, [r4, #56]	; 0x38
 8006748:	4802      	ldr	r0, [pc, #8]	; (8006754 <__sinit+0x50>)
 800674a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800674e:	f000 bb2b 	b.w	8006da8 <__retarget_lock_release_recursive>
 8006752:	bf00      	nop
 8006754:	20000b58 	.word	0x20000b58
 8006758:	080066f9 	.word	0x080066f9

0800675c <__sfp_lock_acquire>:
 800675c:	4801      	ldr	r0, [pc, #4]	; (8006764 <__sfp_lock_acquire+0x8>)
 800675e:	f000 bb21 	b.w	8006da4 <__retarget_lock_acquire_recursive>
 8006762:	bf00      	nop
 8006764:	20000b6c 	.word	0x20000b6c

08006768 <__sfp_lock_release>:
 8006768:	4801      	ldr	r0, [pc, #4]	; (8006770 <__sfp_lock_release+0x8>)
 800676a:	f000 bb1d 	b.w	8006da8 <__retarget_lock_release_recursive>
 800676e:	bf00      	nop
 8006770:	20000b6c 	.word	0x20000b6c

08006774 <__libc_fini_array>:
 8006774:	b538      	push	{r3, r4, r5, lr}
 8006776:	4c0a      	ldr	r4, [pc, #40]	; (80067a0 <__libc_fini_array+0x2c>)
 8006778:	4d0a      	ldr	r5, [pc, #40]	; (80067a4 <__libc_fini_array+0x30>)
 800677a:	1b64      	subs	r4, r4, r5
 800677c:	10a4      	asrs	r4, r4, #2
 800677e:	d00a      	beq.n	8006796 <__libc_fini_array+0x22>
 8006780:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8006784:	3b01      	subs	r3, #1
 8006786:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800678a:	3c01      	subs	r4, #1
 800678c:	f855 3904 	ldr.w	r3, [r5], #-4
 8006790:	4798      	blx	r3
 8006792:	2c00      	cmp	r4, #0
 8006794:	d1f9      	bne.n	800678a <__libc_fini_array+0x16>
 8006796:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800679a:	f001 befd 	b.w	8008598 <_fini>
 800679e:	bf00      	nop
 80067a0:	0800a984 	.word	0x0800a984
 80067a4:	0800a980 	.word	0x0800a980

080067a8 <_malloc_trim_r>:
 80067a8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80067aa:	4f24      	ldr	r7, [pc, #144]	; (800683c <_malloc_trim_r+0x94>)
 80067ac:	460c      	mov	r4, r1
 80067ae:	4606      	mov	r6, r0
 80067b0:	f000 fe7c 	bl	80074ac <__malloc_lock>
 80067b4:	68bb      	ldr	r3, [r7, #8]
 80067b6:	685d      	ldr	r5, [r3, #4]
 80067b8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80067bc:	310f      	adds	r1, #15
 80067be:	f025 0503 	bic.w	r5, r5, #3
 80067c2:	4429      	add	r1, r5
 80067c4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80067c8:	f021 010f 	bic.w	r1, r1, #15
 80067cc:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80067d0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80067d4:	db07      	blt.n	80067e6 <_malloc_trim_r+0x3e>
 80067d6:	2100      	movs	r1, #0
 80067d8:	4630      	mov	r0, r6
 80067da:	f001 fb5f 	bl	8007e9c <_sbrk_r>
 80067de:	68bb      	ldr	r3, [r7, #8]
 80067e0:	442b      	add	r3, r5
 80067e2:	4298      	cmp	r0, r3
 80067e4:	d004      	beq.n	80067f0 <_malloc_trim_r+0x48>
 80067e6:	4630      	mov	r0, r6
 80067e8:	f000 fe66 	bl	80074b8 <__malloc_unlock>
 80067ec:	2000      	movs	r0, #0
 80067ee:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80067f0:	4261      	negs	r1, r4
 80067f2:	4630      	mov	r0, r6
 80067f4:	f001 fb52 	bl	8007e9c <_sbrk_r>
 80067f8:	3001      	adds	r0, #1
 80067fa:	d00d      	beq.n	8006818 <_malloc_trim_r+0x70>
 80067fc:	4b10      	ldr	r3, [pc, #64]	; (8006840 <_malloc_trim_r+0x98>)
 80067fe:	68ba      	ldr	r2, [r7, #8]
 8006800:	6819      	ldr	r1, [r3, #0]
 8006802:	1b2d      	subs	r5, r5, r4
 8006804:	f045 0501 	orr.w	r5, r5, #1
 8006808:	4630      	mov	r0, r6
 800680a:	1b09      	subs	r1, r1, r4
 800680c:	6055      	str	r5, [r2, #4]
 800680e:	6019      	str	r1, [r3, #0]
 8006810:	f000 fe52 	bl	80074b8 <__malloc_unlock>
 8006814:	2001      	movs	r0, #1
 8006816:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006818:	2100      	movs	r1, #0
 800681a:	4630      	mov	r0, r6
 800681c:	f001 fb3e 	bl	8007e9c <_sbrk_r>
 8006820:	68ba      	ldr	r2, [r7, #8]
 8006822:	1a83      	subs	r3, r0, r2
 8006824:	2b0f      	cmp	r3, #15
 8006826:	ddde      	ble.n	80067e6 <_malloc_trim_r+0x3e>
 8006828:	4c06      	ldr	r4, [pc, #24]	; (8006844 <_malloc_trim_r+0x9c>)
 800682a:	4905      	ldr	r1, [pc, #20]	; (8006840 <_malloc_trim_r+0x98>)
 800682c:	6824      	ldr	r4, [r4, #0]
 800682e:	f043 0301 	orr.w	r3, r3, #1
 8006832:	1b00      	subs	r0, r0, r4
 8006834:	6053      	str	r3, [r2, #4]
 8006836:	6008      	str	r0, [r1, #0]
 8006838:	e7d5      	b.n	80067e6 <_malloc_trim_r+0x3e>
 800683a:	bf00      	nop
 800683c:	2000044c 	.word	0x2000044c
 8006840:	20000a7c 	.word	0x20000a7c
 8006844:	20000854 	.word	0x20000854

08006848 <_free_r>:
 8006848:	2900      	cmp	r1, #0
 800684a:	d053      	beq.n	80068f4 <_free_r+0xac>
 800684c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800684e:	460c      	mov	r4, r1
 8006850:	4606      	mov	r6, r0
 8006852:	f000 fe2b 	bl	80074ac <__malloc_lock>
 8006856:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800685a:	4f71      	ldr	r7, [pc, #452]	; (8006a20 <_free_r+0x1d8>)
 800685c:	f02c 0101 	bic.w	r1, ip, #1
 8006860:	f1a4 0508 	sub.w	r5, r4, #8
 8006864:	186b      	adds	r3, r5, r1
 8006866:	68b8      	ldr	r0, [r7, #8]
 8006868:	685a      	ldr	r2, [r3, #4]
 800686a:	4298      	cmp	r0, r3
 800686c:	f022 0203 	bic.w	r2, r2, #3
 8006870:	d053      	beq.n	800691a <_free_r+0xd2>
 8006872:	f01c 0f01 	tst.w	ip, #1
 8006876:	605a      	str	r2, [r3, #4]
 8006878:	eb03 0002 	add.w	r0, r3, r2
 800687c:	d13b      	bne.n	80068f6 <_free_r+0xae>
 800687e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8006882:	6840      	ldr	r0, [r0, #4]
 8006884:	eba5 050c 	sub.w	r5, r5, ip
 8006888:	f107 0e08 	add.w	lr, r7, #8
 800688c:	68ac      	ldr	r4, [r5, #8]
 800688e:	4574      	cmp	r4, lr
 8006890:	4461      	add	r1, ip
 8006892:	f000 0001 	and.w	r0, r0, #1
 8006896:	d075      	beq.n	8006984 <_free_r+0x13c>
 8006898:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800689c:	f8c4 c00c 	str.w	ip, [r4, #12]
 80068a0:	f8cc 4008 	str.w	r4, [ip, #8]
 80068a4:	b360      	cbz	r0, 8006900 <_free_r+0xb8>
 80068a6:	f041 0301 	orr.w	r3, r1, #1
 80068aa:	606b      	str	r3, [r5, #4]
 80068ac:	5069      	str	r1, [r5, r1]
 80068ae:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80068b2:	d350      	bcc.n	8006956 <_free_r+0x10e>
 80068b4:	0a4b      	lsrs	r3, r1, #9
 80068b6:	2b04      	cmp	r3, #4
 80068b8:	d870      	bhi.n	800699c <_free_r+0x154>
 80068ba:	098b      	lsrs	r3, r1, #6
 80068bc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80068c0:	00e4      	lsls	r4, r4, #3
 80068c2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80068c6:	1938      	adds	r0, r7, r4
 80068c8:	593b      	ldr	r3, [r7, r4]
 80068ca:	3808      	subs	r0, #8
 80068cc:	4298      	cmp	r0, r3
 80068ce:	d078      	beq.n	80069c2 <_free_r+0x17a>
 80068d0:	685a      	ldr	r2, [r3, #4]
 80068d2:	f022 0203 	bic.w	r2, r2, #3
 80068d6:	428a      	cmp	r2, r1
 80068d8:	d971      	bls.n	80069be <_free_r+0x176>
 80068da:	689b      	ldr	r3, [r3, #8]
 80068dc:	4298      	cmp	r0, r3
 80068de:	d1f7      	bne.n	80068d0 <_free_r+0x88>
 80068e0:	68c3      	ldr	r3, [r0, #12]
 80068e2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80068e6:	609d      	str	r5, [r3, #8]
 80068e8:	60c5      	str	r5, [r0, #12]
 80068ea:	4630      	mov	r0, r6
 80068ec:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80068f0:	f000 bde2 	b.w	80074b8 <__malloc_unlock>
 80068f4:	4770      	bx	lr
 80068f6:	6840      	ldr	r0, [r0, #4]
 80068f8:	f000 0001 	and.w	r0, r0, #1
 80068fc:	2800      	cmp	r0, #0
 80068fe:	d1d2      	bne.n	80068a6 <_free_r+0x5e>
 8006900:	6898      	ldr	r0, [r3, #8]
 8006902:	4c48      	ldr	r4, [pc, #288]	; (8006a24 <_free_r+0x1dc>)
 8006904:	4411      	add	r1, r2
 8006906:	42a0      	cmp	r0, r4
 8006908:	f041 0201 	orr.w	r2, r1, #1
 800690c:	d062      	beq.n	80069d4 <_free_r+0x18c>
 800690e:	68db      	ldr	r3, [r3, #12]
 8006910:	60c3      	str	r3, [r0, #12]
 8006912:	6098      	str	r0, [r3, #8]
 8006914:	606a      	str	r2, [r5, #4]
 8006916:	5069      	str	r1, [r5, r1]
 8006918:	e7c9      	b.n	80068ae <_free_r+0x66>
 800691a:	f01c 0f01 	tst.w	ip, #1
 800691e:	440a      	add	r2, r1
 8006920:	d107      	bne.n	8006932 <_free_r+0xea>
 8006922:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8006926:	1aed      	subs	r5, r5, r3
 8006928:	441a      	add	r2, r3
 800692a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800692e:	60cb      	str	r3, [r1, #12]
 8006930:	6099      	str	r1, [r3, #8]
 8006932:	4b3d      	ldr	r3, [pc, #244]	; (8006a28 <_free_r+0x1e0>)
 8006934:	681b      	ldr	r3, [r3, #0]
 8006936:	f042 0101 	orr.w	r1, r2, #1
 800693a:	4293      	cmp	r3, r2
 800693c:	6069      	str	r1, [r5, #4]
 800693e:	60bd      	str	r5, [r7, #8]
 8006940:	d804      	bhi.n	800694c <_free_r+0x104>
 8006942:	4b3a      	ldr	r3, [pc, #232]	; (8006a2c <_free_r+0x1e4>)
 8006944:	4630      	mov	r0, r6
 8006946:	6819      	ldr	r1, [r3, #0]
 8006948:	f7ff ff2e 	bl	80067a8 <_malloc_trim_r>
 800694c:	4630      	mov	r0, r6
 800694e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006952:	f000 bdb1 	b.w	80074b8 <__malloc_unlock>
 8006956:	08c9      	lsrs	r1, r1, #3
 8006958:	6878      	ldr	r0, [r7, #4]
 800695a:	1c4a      	adds	r2, r1, #1
 800695c:	2301      	movs	r3, #1
 800695e:	1089      	asrs	r1, r1, #2
 8006960:	408b      	lsls	r3, r1
 8006962:	4303      	orrs	r3, r0
 8006964:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8006968:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800696c:	607b      	str	r3, [r7, #4]
 800696e:	3908      	subs	r1, #8
 8006970:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8006974:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8006978:	60c5      	str	r5, [r0, #12]
 800697a:	4630      	mov	r0, r6
 800697c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8006980:	f000 bd9a 	b.w	80074b8 <__malloc_unlock>
 8006984:	2800      	cmp	r0, #0
 8006986:	d145      	bne.n	8006a14 <_free_r+0x1cc>
 8006988:	440a      	add	r2, r1
 800698a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800698e:	f042 0001 	orr.w	r0, r2, #1
 8006992:	60cb      	str	r3, [r1, #12]
 8006994:	6099      	str	r1, [r3, #8]
 8006996:	6068      	str	r0, [r5, #4]
 8006998:	50aa      	str	r2, [r5, r2]
 800699a:	e7d7      	b.n	800694c <_free_r+0x104>
 800699c:	2b14      	cmp	r3, #20
 800699e:	d908      	bls.n	80069b2 <_free_r+0x16a>
 80069a0:	2b54      	cmp	r3, #84	; 0x54
 80069a2:	d81e      	bhi.n	80069e2 <_free_r+0x19a>
 80069a4:	0b0b      	lsrs	r3, r1, #12
 80069a6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80069aa:	00e4      	lsls	r4, r4, #3
 80069ac:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80069b0:	e789      	b.n	80068c6 <_free_r+0x7e>
 80069b2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80069b6:	00e4      	lsls	r4, r4, #3
 80069b8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80069bc:	e783      	b.n	80068c6 <_free_r+0x7e>
 80069be:	4618      	mov	r0, r3
 80069c0:	e78e      	b.n	80068e0 <_free_r+0x98>
 80069c2:	1093      	asrs	r3, r2, #2
 80069c4:	6879      	ldr	r1, [r7, #4]
 80069c6:	2201      	movs	r2, #1
 80069c8:	fa02 f303 	lsl.w	r3, r2, r3
 80069cc:	430b      	orrs	r3, r1
 80069ce:	607b      	str	r3, [r7, #4]
 80069d0:	4603      	mov	r3, r0
 80069d2:	e786      	b.n	80068e2 <_free_r+0x9a>
 80069d4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80069d8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80069dc:	606a      	str	r2, [r5, #4]
 80069de:	5069      	str	r1, [r5, r1]
 80069e0:	e7b4      	b.n	800694c <_free_r+0x104>
 80069e2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80069e6:	d806      	bhi.n	80069f6 <_free_r+0x1ae>
 80069e8:	0bcb      	lsrs	r3, r1, #15
 80069ea:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80069ee:	00e4      	lsls	r4, r4, #3
 80069f0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80069f4:	e767      	b.n	80068c6 <_free_r+0x7e>
 80069f6:	f240 5254 	movw	r2, #1364	; 0x554
 80069fa:	4293      	cmp	r3, r2
 80069fc:	d806      	bhi.n	8006a0c <_free_r+0x1c4>
 80069fe:	0c8b      	lsrs	r3, r1, #18
 8006a00:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8006a04:	00e4      	lsls	r4, r4, #3
 8006a06:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8006a0a:	e75c      	b.n	80068c6 <_free_r+0x7e>
 8006a0c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8006a10:	227e      	movs	r2, #126	; 0x7e
 8006a12:	e758      	b.n	80068c6 <_free_r+0x7e>
 8006a14:	f041 0201 	orr.w	r2, r1, #1
 8006a18:	606a      	str	r2, [r5, #4]
 8006a1a:	6019      	str	r1, [r3, #0]
 8006a1c:	e796      	b.n	800694c <_free_r+0x104>
 8006a1e:	bf00      	nop
 8006a20:	2000044c 	.word	0x2000044c
 8006a24:	20000454 	.word	0x20000454
 8006a28:	20000858 	.word	0x20000858
 8006a2c:	20000aac 	.word	0x20000aac

08006a30 <__sfvwrite_r>:
 8006a30:	6893      	ldr	r3, [r2, #8]
 8006a32:	2b00      	cmp	r3, #0
 8006a34:	f000 80e4 	beq.w	8006c00 <__sfvwrite_r+0x1d0>
 8006a38:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a3c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8006a40:	b29b      	uxth	r3, r3
 8006a42:	460c      	mov	r4, r1
 8006a44:	0719      	lsls	r1, r3, #28
 8006a46:	b083      	sub	sp, #12
 8006a48:	4682      	mov	sl, r0
 8006a4a:	4690      	mov	r8, r2
 8006a4c:	d535      	bpl.n	8006aba <__sfvwrite_r+0x8a>
 8006a4e:	6922      	ldr	r2, [r4, #16]
 8006a50:	b39a      	cbz	r2, 8006aba <__sfvwrite_r+0x8a>
 8006a52:	f013 0202 	ands.w	r2, r3, #2
 8006a56:	f8d8 6000 	ldr.w	r6, [r8]
 8006a5a:	d03d      	beq.n	8006ad8 <__sfvwrite_r+0xa8>
 8006a5c:	2700      	movs	r7, #0
 8006a5e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8006a62:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8006a66:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8006d28 <__sfvwrite_r+0x2f8>
 8006a6a:	463d      	mov	r5, r7
 8006a6c:	454d      	cmp	r5, r9
 8006a6e:	462b      	mov	r3, r5
 8006a70:	463a      	mov	r2, r7
 8006a72:	bf28      	it	cs
 8006a74:	464b      	movcs	r3, r9
 8006a76:	4661      	mov	r1, ip
 8006a78:	4650      	mov	r0, sl
 8006a7a:	b1d5      	cbz	r5, 8006ab2 <__sfvwrite_r+0x82>
 8006a7c:	47d8      	blx	fp
 8006a7e:	2800      	cmp	r0, #0
 8006a80:	f340 80c6 	ble.w	8006c10 <__sfvwrite_r+0x1e0>
 8006a84:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006a88:	1a1b      	subs	r3, r3, r0
 8006a8a:	4407      	add	r7, r0
 8006a8c:	1a2d      	subs	r5, r5, r0
 8006a8e:	f8c8 3008 	str.w	r3, [r8, #8]
 8006a92:	2b00      	cmp	r3, #0
 8006a94:	f000 80b0 	beq.w	8006bf8 <__sfvwrite_r+0x1c8>
 8006a98:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8006a9c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8006aa0:	454d      	cmp	r5, r9
 8006aa2:	462b      	mov	r3, r5
 8006aa4:	463a      	mov	r2, r7
 8006aa6:	bf28      	it	cs
 8006aa8:	464b      	movcs	r3, r9
 8006aaa:	4661      	mov	r1, ip
 8006aac:	4650      	mov	r0, sl
 8006aae:	2d00      	cmp	r5, #0
 8006ab0:	d1e4      	bne.n	8006a7c <__sfvwrite_r+0x4c>
 8006ab2:	e9d6 7500 	ldrd	r7, r5, [r6]
 8006ab6:	3608      	adds	r6, #8
 8006ab8:	e7d8      	b.n	8006a6c <__sfvwrite_r+0x3c>
 8006aba:	4621      	mov	r1, r4
 8006abc:	4650      	mov	r0, sl
 8006abe:	f7fe fd03 	bl	80054c8 <__swsetup_r>
 8006ac2:	2800      	cmp	r0, #0
 8006ac4:	f040 812a 	bne.w	8006d1c <__sfvwrite_r+0x2ec>
 8006ac8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006acc:	f8d8 6000 	ldr.w	r6, [r8]
 8006ad0:	b29b      	uxth	r3, r3
 8006ad2:	f013 0202 	ands.w	r2, r3, #2
 8006ad6:	d1c1      	bne.n	8006a5c <__sfvwrite_r+0x2c>
 8006ad8:	f013 0901 	ands.w	r9, r3, #1
 8006adc:	d15d      	bne.n	8006b9a <__sfvwrite_r+0x16a>
 8006ade:	68a7      	ldr	r7, [r4, #8]
 8006ae0:	6820      	ldr	r0, [r4, #0]
 8006ae2:	464d      	mov	r5, r9
 8006ae4:	2d00      	cmp	r5, #0
 8006ae6:	d054      	beq.n	8006b92 <__sfvwrite_r+0x162>
 8006ae8:	059a      	lsls	r2, r3, #22
 8006aea:	f140 809b 	bpl.w	8006c24 <__sfvwrite_r+0x1f4>
 8006aee:	42af      	cmp	r7, r5
 8006af0:	46bb      	mov	fp, r7
 8006af2:	f200 80d8 	bhi.w	8006ca6 <__sfvwrite_r+0x276>
 8006af6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8006afa:	d02f      	beq.n	8006b5c <__sfvwrite_r+0x12c>
 8006afc:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8006b00:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8006b04:	eba0 0b01 	sub.w	fp, r0, r1
 8006b08:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8006b0c:	1c68      	adds	r0, r5, #1
 8006b0e:	107f      	asrs	r7, r7, #1
 8006b10:	4458      	add	r0, fp
 8006b12:	42b8      	cmp	r0, r7
 8006b14:	463a      	mov	r2, r7
 8006b16:	bf84      	itt	hi
 8006b18:	4607      	movhi	r7, r0
 8006b1a:	463a      	movhi	r2, r7
 8006b1c:	055b      	lsls	r3, r3, #21
 8006b1e:	f140 80d3 	bpl.w	8006cc8 <__sfvwrite_r+0x298>
 8006b22:	4611      	mov	r1, r2
 8006b24:	4650      	mov	r0, sl
 8006b26:	f000 f9b9 	bl	8006e9c <_malloc_r>
 8006b2a:	2800      	cmp	r0, #0
 8006b2c:	f000 80f0 	beq.w	8006d10 <__sfvwrite_r+0x2e0>
 8006b30:	465a      	mov	r2, fp
 8006b32:	6921      	ldr	r1, [r4, #16]
 8006b34:	9001      	str	r0, [sp, #4]
 8006b36:	f7f9 fce3 	bl	8000500 <memcpy>
 8006b3a:	89a2      	ldrh	r2, [r4, #12]
 8006b3c:	9b01      	ldr	r3, [sp, #4]
 8006b3e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8006b42:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8006b46:	81a2      	strh	r2, [r4, #12]
 8006b48:	eba7 020b 	sub.w	r2, r7, fp
 8006b4c:	eb03 000b 	add.w	r0, r3, fp
 8006b50:	6167      	str	r7, [r4, #20]
 8006b52:	6123      	str	r3, [r4, #16]
 8006b54:	6020      	str	r0, [r4, #0]
 8006b56:	60a2      	str	r2, [r4, #8]
 8006b58:	462f      	mov	r7, r5
 8006b5a:	46ab      	mov	fp, r5
 8006b5c:	465a      	mov	r2, fp
 8006b5e:	4649      	mov	r1, r9
 8006b60:	f000 fc40 	bl	80073e4 <memmove>
 8006b64:	68a2      	ldr	r2, [r4, #8]
 8006b66:	6823      	ldr	r3, [r4, #0]
 8006b68:	1bd2      	subs	r2, r2, r7
 8006b6a:	445b      	add	r3, fp
 8006b6c:	462f      	mov	r7, r5
 8006b6e:	60a2      	str	r2, [r4, #8]
 8006b70:	6023      	str	r3, [r4, #0]
 8006b72:	2500      	movs	r5, #0
 8006b74:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006b78:	1bdb      	subs	r3, r3, r7
 8006b7a:	44b9      	add	r9, r7
 8006b7c:	f8c8 3008 	str.w	r3, [r8, #8]
 8006b80:	2b00      	cmp	r3, #0
 8006b82:	d039      	beq.n	8006bf8 <__sfvwrite_r+0x1c8>
 8006b84:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006b88:	68a7      	ldr	r7, [r4, #8]
 8006b8a:	6820      	ldr	r0, [r4, #0]
 8006b8c:	b29b      	uxth	r3, r3
 8006b8e:	2d00      	cmp	r5, #0
 8006b90:	d1aa      	bne.n	8006ae8 <__sfvwrite_r+0xb8>
 8006b92:	e9d6 9500 	ldrd	r9, r5, [r6]
 8006b96:	3608      	adds	r6, #8
 8006b98:	e7a4      	b.n	8006ae4 <__sfvwrite_r+0xb4>
 8006b9a:	4633      	mov	r3, r6
 8006b9c:	4691      	mov	r9, r2
 8006b9e:	4610      	mov	r0, r2
 8006ba0:	4617      	mov	r7, r2
 8006ba2:	464e      	mov	r6, r9
 8006ba4:	469b      	mov	fp, r3
 8006ba6:	2f00      	cmp	r7, #0
 8006ba8:	d06b      	beq.n	8006c82 <__sfvwrite_r+0x252>
 8006baa:	2800      	cmp	r0, #0
 8006bac:	d071      	beq.n	8006c92 <__sfvwrite_r+0x262>
 8006bae:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8006bb2:	6820      	ldr	r0, [r4, #0]
 8006bb4:	45b9      	cmp	r9, r7
 8006bb6:	464b      	mov	r3, r9
 8006bb8:	bf28      	it	cs
 8006bba:	463b      	movcs	r3, r7
 8006bbc:	4288      	cmp	r0, r1
 8006bbe:	d903      	bls.n	8006bc8 <__sfvwrite_r+0x198>
 8006bc0:	68a5      	ldr	r5, [r4, #8]
 8006bc2:	4415      	add	r5, r2
 8006bc4:	42ab      	cmp	r3, r5
 8006bc6:	dc71      	bgt.n	8006cac <__sfvwrite_r+0x27c>
 8006bc8:	429a      	cmp	r2, r3
 8006bca:	f300 8093 	bgt.w	8006cf4 <__sfvwrite_r+0x2c4>
 8006bce:	4613      	mov	r3, r2
 8006bd0:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8006bd2:	69e1      	ldr	r1, [r4, #28]
 8006bd4:	4632      	mov	r2, r6
 8006bd6:	4650      	mov	r0, sl
 8006bd8:	47a8      	blx	r5
 8006bda:	1e05      	subs	r5, r0, #0
 8006bdc:	dd18      	ble.n	8006c10 <__sfvwrite_r+0x1e0>
 8006bde:	ebb9 0905 	subs.w	r9, r9, r5
 8006be2:	d00f      	beq.n	8006c04 <__sfvwrite_r+0x1d4>
 8006be4:	2001      	movs	r0, #1
 8006be6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8006bea:	1b5b      	subs	r3, r3, r5
 8006bec:	442e      	add	r6, r5
 8006bee:	1b7f      	subs	r7, r7, r5
 8006bf0:	f8c8 3008 	str.w	r3, [r8, #8]
 8006bf4:	2b00      	cmp	r3, #0
 8006bf6:	d1d6      	bne.n	8006ba6 <__sfvwrite_r+0x176>
 8006bf8:	2000      	movs	r0, #0
 8006bfa:	b003      	add	sp, #12
 8006bfc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c00:	2000      	movs	r0, #0
 8006c02:	4770      	bx	lr
 8006c04:	4621      	mov	r1, r4
 8006c06:	4650      	mov	r0, sl
 8006c08:	f7ff fd20 	bl	800664c <_fflush_r>
 8006c0c:	2800      	cmp	r0, #0
 8006c0e:	d0ea      	beq.n	8006be6 <__sfvwrite_r+0x1b6>
 8006c10:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006c14:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006c18:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006c1c:	81a3      	strh	r3, [r4, #12]
 8006c1e:	b003      	add	sp, #12
 8006c20:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c24:	6923      	ldr	r3, [r4, #16]
 8006c26:	4283      	cmp	r3, r0
 8006c28:	d315      	bcc.n	8006c56 <__sfvwrite_r+0x226>
 8006c2a:	6961      	ldr	r1, [r4, #20]
 8006c2c:	42a9      	cmp	r1, r5
 8006c2e:	d812      	bhi.n	8006c56 <__sfvwrite_r+0x226>
 8006c30:	4b3c      	ldr	r3, [pc, #240]	; (8006d24 <__sfvwrite_r+0x2f4>)
 8006c32:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8006c34:	429d      	cmp	r5, r3
 8006c36:	bf94      	ite	ls
 8006c38:	462b      	movls	r3, r5
 8006c3a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8006c3e:	464a      	mov	r2, r9
 8006c40:	fb93 f3f1 	sdiv	r3, r3, r1
 8006c44:	4650      	mov	r0, sl
 8006c46:	fb01 f303 	mul.w	r3, r1, r3
 8006c4a:	69e1      	ldr	r1, [r4, #28]
 8006c4c:	47b8      	blx	r7
 8006c4e:	1e07      	subs	r7, r0, #0
 8006c50:	ddde      	ble.n	8006c10 <__sfvwrite_r+0x1e0>
 8006c52:	1bed      	subs	r5, r5, r7
 8006c54:	e78e      	b.n	8006b74 <__sfvwrite_r+0x144>
 8006c56:	42af      	cmp	r7, r5
 8006c58:	bf28      	it	cs
 8006c5a:	462f      	movcs	r7, r5
 8006c5c:	463a      	mov	r2, r7
 8006c5e:	4649      	mov	r1, r9
 8006c60:	f000 fbc0 	bl	80073e4 <memmove>
 8006c64:	68a3      	ldr	r3, [r4, #8]
 8006c66:	6822      	ldr	r2, [r4, #0]
 8006c68:	1bdb      	subs	r3, r3, r7
 8006c6a:	443a      	add	r2, r7
 8006c6c:	60a3      	str	r3, [r4, #8]
 8006c6e:	6022      	str	r2, [r4, #0]
 8006c70:	2b00      	cmp	r3, #0
 8006c72:	d1ee      	bne.n	8006c52 <__sfvwrite_r+0x222>
 8006c74:	4621      	mov	r1, r4
 8006c76:	4650      	mov	r0, sl
 8006c78:	f7ff fce8 	bl	800664c <_fflush_r>
 8006c7c:	2800      	cmp	r0, #0
 8006c7e:	d0e8      	beq.n	8006c52 <__sfvwrite_r+0x222>
 8006c80:	e7c6      	b.n	8006c10 <__sfvwrite_r+0x1e0>
 8006c82:	f10b 0308 	add.w	r3, fp, #8
 8006c86:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8006c8a:	469b      	mov	fp, r3
 8006c8c:	3308      	adds	r3, #8
 8006c8e:	2f00      	cmp	r7, #0
 8006c90:	d0f9      	beq.n	8006c86 <__sfvwrite_r+0x256>
 8006c92:	463a      	mov	r2, r7
 8006c94:	210a      	movs	r1, #10
 8006c96:	4630      	mov	r0, r6
 8006c98:	f7f9 fd42 	bl	8000720 <memchr>
 8006c9c:	b338      	cbz	r0, 8006cee <__sfvwrite_r+0x2be>
 8006c9e:	3001      	adds	r0, #1
 8006ca0:	eba0 0906 	sub.w	r9, r0, r6
 8006ca4:	e783      	b.n	8006bae <__sfvwrite_r+0x17e>
 8006ca6:	462f      	mov	r7, r5
 8006ca8:	46ab      	mov	fp, r5
 8006caa:	e757      	b.n	8006b5c <__sfvwrite_r+0x12c>
 8006cac:	4631      	mov	r1, r6
 8006cae:	462a      	mov	r2, r5
 8006cb0:	f000 fb98 	bl	80073e4 <memmove>
 8006cb4:	6823      	ldr	r3, [r4, #0]
 8006cb6:	442b      	add	r3, r5
 8006cb8:	6023      	str	r3, [r4, #0]
 8006cba:	4621      	mov	r1, r4
 8006cbc:	4650      	mov	r0, sl
 8006cbe:	f7ff fcc5 	bl	800664c <_fflush_r>
 8006cc2:	2800      	cmp	r0, #0
 8006cc4:	d08b      	beq.n	8006bde <__sfvwrite_r+0x1ae>
 8006cc6:	e7a3      	b.n	8006c10 <__sfvwrite_r+0x1e0>
 8006cc8:	4650      	mov	r0, sl
 8006cca:	f000 ff05 	bl	8007ad8 <_realloc_r>
 8006cce:	4603      	mov	r3, r0
 8006cd0:	2800      	cmp	r0, #0
 8006cd2:	f47f af39 	bne.w	8006b48 <__sfvwrite_r+0x118>
 8006cd6:	6921      	ldr	r1, [r4, #16]
 8006cd8:	4650      	mov	r0, sl
 8006cda:	f7ff fdb5 	bl	8006848 <_free_r>
 8006cde:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ce2:	220c      	movs	r2, #12
 8006ce4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8006ce8:	f8ca 2000 	str.w	r2, [sl]
 8006cec:	e792      	b.n	8006c14 <__sfvwrite_r+0x1e4>
 8006cee:	f107 0901 	add.w	r9, r7, #1
 8006cf2:	e75c      	b.n	8006bae <__sfvwrite_r+0x17e>
 8006cf4:	461a      	mov	r2, r3
 8006cf6:	4631      	mov	r1, r6
 8006cf8:	9301      	str	r3, [sp, #4]
 8006cfa:	f000 fb73 	bl	80073e4 <memmove>
 8006cfe:	9b01      	ldr	r3, [sp, #4]
 8006d00:	68a1      	ldr	r1, [r4, #8]
 8006d02:	6822      	ldr	r2, [r4, #0]
 8006d04:	1ac9      	subs	r1, r1, r3
 8006d06:	441a      	add	r2, r3
 8006d08:	60a1      	str	r1, [r4, #8]
 8006d0a:	6022      	str	r2, [r4, #0]
 8006d0c:	461d      	mov	r5, r3
 8006d0e:	e766      	b.n	8006bde <__sfvwrite_r+0x1ae>
 8006d10:	230c      	movs	r3, #12
 8006d12:	f8ca 3000 	str.w	r3, [sl]
 8006d16:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d1a:	e77b      	b.n	8006c14 <__sfvwrite_r+0x1e4>
 8006d1c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006d20:	e76b      	b.n	8006bfa <__sfvwrite_r+0x1ca>
 8006d22:	bf00      	nop
 8006d24:	7ffffffe 	.word	0x7ffffffe
 8006d28:	7ffffc00 	.word	0x7ffffc00

08006d2c <_fwalk_reent>:
 8006d2c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006d30:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8006d34:	d01f      	beq.n	8006d76 <_fwalk_reent+0x4a>
 8006d36:	4688      	mov	r8, r1
 8006d38:	4606      	mov	r6, r0
 8006d3a:	f04f 0900 	mov.w	r9, #0
 8006d3e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8006d42:	3d01      	subs	r5, #1
 8006d44:	d411      	bmi.n	8006d6a <_fwalk_reent+0x3e>
 8006d46:	89a3      	ldrh	r3, [r4, #12]
 8006d48:	2b01      	cmp	r3, #1
 8006d4a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8006d4e:	4621      	mov	r1, r4
 8006d50:	4630      	mov	r0, r6
 8006d52:	d906      	bls.n	8006d62 <_fwalk_reent+0x36>
 8006d54:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8006d58:	3301      	adds	r3, #1
 8006d5a:	d002      	beq.n	8006d62 <_fwalk_reent+0x36>
 8006d5c:	47c0      	blx	r8
 8006d5e:	ea49 0900 	orr.w	r9, r9, r0
 8006d62:	1c6b      	adds	r3, r5, #1
 8006d64:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8006d68:	d1ed      	bne.n	8006d46 <_fwalk_reent+0x1a>
 8006d6a:	683f      	ldr	r7, [r7, #0]
 8006d6c:	2f00      	cmp	r7, #0
 8006d6e:	d1e6      	bne.n	8006d3e <_fwalk_reent+0x12>
 8006d70:	4648      	mov	r0, r9
 8006d72:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006d76:	46b9      	mov	r9, r7
 8006d78:	4648      	mov	r0, r9
 8006d7a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006d7e:	bf00      	nop

08006d80 <_localeconv_r>:
 8006d80:	4a04      	ldr	r2, [pc, #16]	; (8006d94 <_localeconv_r+0x14>)
 8006d82:	4b05      	ldr	r3, [pc, #20]	; (8006d98 <_localeconv_r+0x18>)
 8006d84:	6812      	ldr	r2, [r2, #0]
 8006d86:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8006d88:	2800      	cmp	r0, #0
 8006d8a:	bf08      	it	eq
 8006d8c:	4618      	moveq	r0, r3
 8006d8e:	30f0      	adds	r0, #240	; 0xf0
 8006d90:	4770      	bx	lr
 8006d92:	bf00      	nop
 8006d94:	20000018 	.word	0x20000018
 8006d98:	2000085c 	.word	0x2000085c

08006d9c <__retarget_lock_init_recursive>:
 8006d9c:	4770      	bx	lr
 8006d9e:	bf00      	nop

08006da0 <__retarget_lock_close_recursive>:
 8006da0:	4770      	bx	lr
 8006da2:	bf00      	nop

08006da4 <__retarget_lock_acquire_recursive>:
 8006da4:	4770      	bx	lr
 8006da6:	bf00      	nop

08006da8 <__retarget_lock_release_recursive>:
 8006da8:	4770      	bx	lr
 8006daa:	bf00      	nop

08006dac <__swhatbuf_r>:
 8006dac:	b570      	push	{r4, r5, r6, lr}
 8006dae:	460c      	mov	r4, r1
 8006db0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006db4:	2900      	cmp	r1, #0
 8006db6:	b096      	sub	sp, #88	; 0x58
 8006db8:	4615      	mov	r5, r2
 8006dba:	461e      	mov	r6, r3
 8006dbc:	da0f      	bge.n	8006dde <__swhatbuf_r+0x32>
 8006dbe:	89a2      	ldrh	r2, [r4, #12]
 8006dc0:	2300      	movs	r3, #0
 8006dc2:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8006dc6:	6033      	str	r3, [r6, #0]
 8006dc8:	d104      	bne.n	8006dd4 <__swhatbuf_r+0x28>
 8006dca:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8006dce:	602b      	str	r3, [r5, #0]
 8006dd0:	b016      	add	sp, #88	; 0x58
 8006dd2:	bd70      	pop	{r4, r5, r6, pc}
 8006dd4:	2240      	movs	r2, #64	; 0x40
 8006dd6:	4618      	mov	r0, r3
 8006dd8:	602a      	str	r2, [r5, #0]
 8006dda:	b016      	add	sp, #88	; 0x58
 8006ddc:	bd70      	pop	{r4, r5, r6, pc}
 8006dde:	466a      	mov	r2, sp
 8006de0:	f001 fad0 	bl	8008384 <_fstat_r>
 8006de4:	2800      	cmp	r0, #0
 8006de6:	dbea      	blt.n	8006dbe <__swhatbuf_r+0x12>
 8006de8:	9b01      	ldr	r3, [sp, #4]
 8006dea:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8006dee:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8006df2:	fab3 f383 	clz	r3, r3
 8006df6:	095b      	lsrs	r3, r3, #5
 8006df8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8006dfc:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8006e00:	6033      	str	r3, [r6, #0]
 8006e02:	602a      	str	r2, [r5, #0]
 8006e04:	b016      	add	sp, #88	; 0x58
 8006e06:	bd70      	pop	{r4, r5, r6, pc}

08006e08 <__smakebuf_r>:
 8006e08:	898a      	ldrh	r2, [r1, #12]
 8006e0a:	0792      	lsls	r2, r2, #30
 8006e0c:	460b      	mov	r3, r1
 8006e0e:	d506      	bpl.n	8006e1e <__smakebuf_r+0x16>
 8006e10:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8006e14:	2101      	movs	r1, #1
 8006e16:	601a      	str	r2, [r3, #0]
 8006e18:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8006e1c:	4770      	bx	lr
 8006e1e:	b570      	push	{r4, r5, r6, lr}
 8006e20:	b082      	sub	sp, #8
 8006e22:	ab01      	add	r3, sp, #4
 8006e24:	466a      	mov	r2, sp
 8006e26:	460c      	mov	r4, r1
 8006e28:	4605      	mov	r5, r0
 8006e2a:	f7ff ffbf 	bl	8006dac <__swhatbuf_r>
 8006e2e:	9900      	ldr	r1, [sp, #0]
 8006e30:	4606      	mov	r6, r0
 8006e32:	4628      	mov	r0, r5
 8006e34:	f000 f832 	bl	8006e9c <_malloc_r>
 8006e38:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e3c:	b1d8      	cbz	r0, 8006e76 <__smakebuf_r+0x6e>
 8006e3e:	4916      	ldr	r1, [pc, #88]	; (8006e98 <__smakebuf_r+0x90>)
 8006e40:	63e9      	str	r1, [r5, #60]	; 0x3c
 8006e42:	9a01      	ldr	r2, [sp, #4]
 8006e44:	9900      	ldr	r1, [sp, #0]
 8006e46:	6020      	str	r0, [r4, #0]
 8006e48:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8006e4c:	81a3      	strh	r3, [r4, #12]
 8006e4e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8006e52:	b91a      	cbnz	r2, 8006e5c <__smakebuf_r+0x54>
 8006e54:	4333      	orrs	r3, r6
 8006e56:	81a3      	strh	r3, [r4, #12]
 8006e58:	b002      	add	sp, #8
 8006e5a:	bd70      	pop	{r4, r5, r6, pc}
 8006e5c:	4628      	mov	r0, r5
 8006e5e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006e62:	f001 faa3 	bl	80083ac <_isatty_r>
 8006e66:	b1a0      	cbz	r0, 8006e92 <__smakebuf_r+0x8a>
 8006e68:	89a3      	ldrh	r3, [r4, #12]
 8006e6a:	f023 0303 	bic.w	r3, r3, #3
 8006e6e:	f043 0301 	orr.w	r3, r3, #1
 8006e72:	b21b      	sxth	r3, r3
 8006e74:	e7ee      	b.n	8006e54 <__smakebuf_r+0x4c>
 8006e76:	059a      	lsls	r2, r3, #22
 8006e78:	d4ee      	bmi.n	8006e58 <__smakebuf_r+0x50>
 8006e7a:	f023 0303 	bic.w	r3, r3, #3
 8006e7e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8006e82:	f043 0302 	orr.w	r3, r3, #2
 8006e86:	2101      	movs	r1, #1
 8006e88:	81a3      	strh	r3, [r4, #12]
 8006e8a:	6022      	str	r2, [r4, #0]
 8006e8c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8006e90:	e7e2      	b.n	8006e58 <__smakebuf_r+0x50>
 8006e92:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e96:	e7dd      	b.n	8006e54 <__smakebuf_r+0x4c>
 8006e98:	080066f9 	.word	0x080066f9

08006e9c <_malloc_r>:
 8006e9c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006ea0:	f101 050b 	add.w	r5, r1, #11
 8006ea4:	2d16      	cmp	r5, #22
 8006ea6:	b083      	sub	sp, #12
 8006ea8:	4606      	mov	r6, r0
 8006eaa:	d823      	bhi.n	8006ef4 <_malloc_r+0x58>
 8006eac:	2910      	cmp	r1, #16
 8006eae:	f200 80b9 	bhi.w	8007024 <_malloc_r+0x188>
 8006eb2:	f000 fafb 	bl	80074ac <__malloc_lock>
 8006eb6:	2510      	movs	r5, #16
 8006eb8:	2318      	movs	r3, #24
 8006eba:	2002      	movs	r0, #2
 8006ebc:	4fc5      	ldr	r7, [pc, #788]	; (80071d4 <_malloc_r+0x338>)
 8006ebe:	443b      	add	r3, r7
 8006ec0:	f1a3 0208 	sub.w	r2, r3, #8
 8006ec4:	685c      	ldr	r4, [r3, #4]
 8006ec6:	4294      	cmp	r4, r2
 8006ec8:	f000 8166 	beq.w	8007198 <_malloc_r+0x2fc>
 8006ecc:	6863      	ldr	r3, [r4, #4]
 8006ece:	f023 0303 	bic.w	r3, r3, #3
 8006ed2:	4423      	add	r3, r4
 8006ed4:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8006ed8:	685a      	ldr	r2, [r3, #4]
 8006eda:	60e9      	str	r1, [r5, #12]
 8006edc:	f042 0201 	orr.w	r2, r2, #1
 8006ee0:	608d      	str	r5, [r1, #8]
 8006ee2:	4630      	mov	r0, r6
 8006ee4:	605a      	str	r2, [r3, #4]
 8006ee6:	f000 fae7 	bl	80074b8 <__malloc_unlock>
 8006eea:	3408      	adds	r4, #8
 8006eec:	4620      	mov	r0, r4
 8006eee:	b003      	add	sp, #12
 8006ef0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ef4:	f035 0507 	bics.w	r5, r5, #7
 8006ef8:	f100 8094 	bmi.w	8007024 <_malloc_r+0x188>
 8006efc:	42a9      	cmp	r1, r5
 8006efe:	f200 8091 	bhi.w	8007024 <_malloc_r+0x188>
 8006f02:	f000 fad3 	bl	80074ac <__malloc_lock>
 8006f06:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8006f0a:	f0c0 8183 	bcc.w	8007214 <_malloc_r+0x378>
 8006f0e:	0a6b      	lsrs	r3, r5, #9
 8006f10:	f000 808f 	beq.w	8007032 <_malloc_r+0x196>
 8006f14:	2b04      	cmp	r3, #4
 8006f16:	f200 8146 	bhi.w	80071a6 <_malloc_r+0x30a>
 8006f1a:	09ab      	lsrs	r3, r5, #6
 8006f1c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8006f20:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8006f24:	00c3      	lsls	r3, r0, #3
 8006f26:	4fab      	ldr	r7, [pc, #684]	; (80071d4 <_malloc_r+0x338>)
 8006f28:	443b      	add	r3, r7
 8006f2a:	f1a3 0108 	sub.w	r1, r3, #8
 8006f2e:	685c      	ldr	r4, [r3, #4]
 8006f30:	42a1      	cmp	r1, r4
 8006f32:	d106      	bne.n	8006f42 <_malloc_r+0xa6>
 8006f34:	e00c      	b.n	8006f50 <_malloc_r+0xb4>
 8006f36:	2a00      	cmp	r2, #0
 8006f38:	f280 811d 	bge.w	8007176 <_malloc_r+0x2da>
 8006f3c:	68e4      	ldr	r4, [r4, #12]
 8006f3e:	42a1      	cmp	r1, r4
 8006f40:	d006      	beq.n	8006f50 <_malloc_r+0xb4>
 8006f42:	6863      	ldr	r3, [r4, #4]
 8006f44:	f023 0303 	bic.w	r3, r3, #3
 8006f48:	1b5a      	subs	r2, r3, r5
 8006f4a:	2a0f      	cmp	r2, #15
 8006f4c:	ddf3      	ble.n	8006f36 <_malloc_r+0x9a>
 8006f4e:	4660      	mov	r0, ip
 8006f50:	693c      	ldr	r4, [r7, #16]
 8006f52:	f8df c294 	ldr.w	ip, [pc, #660]	; 80071e8 <_malloc_r+0x34c>
 8006f56:	4564      	cmp	r4, ip
 8006f58:	d071      	beq.n	800703e <_malloc_r+0x1a2>
 8006f5a:	6863      	ldr	r3, [r4, #4]
 8006f5c:	f023 0303 	bic.w	r3, r3, #3
 8006f60:	1b5a      	subs	r2, r3, r5
 8006f62:	2a0f      	cmp	r2, #15
 8006f64:	f300 8144 	bgt.w	80071f0 <_malloc_r+0x354>
 8006f68:	2a00      	cmp	r2, #0
 8006f6a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8006f6e:	f280 8126 	bge.w	80071be <_malloc_r+0x322>
 8006f72:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8006f76:	f080 8169 	bcs.w	800724c <_malloc_r+0x3b0>
 8006f7a:	08db      	lsrs	r3, r3, #3
 8006f7c:	1c59      	adds	r1, r3, #1
 8006f7e:	687a      	ldr	r2, [r7, #4]
 8006f80:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8006f84:	f8c4 8008 	str.w	r8, [r4, #8]
 8006f88:	f04f 0e01 	mov.w	lr, #1
 8006f8c:	109b      	asrs	r3, r3, #2
 8006f8e:	fa0e f303 	lsl.w	r3, lr, r3
 8006f92:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8006f96:	4313      	orrs	r3, r2
 8006f98:	f1ae 0208 	sub.w	r2, lr, #8
 8006f9c:	60e2      	str	r2, [r4, #12]
 8006f9e:	607b      	str	r3, [r7, #4]
 8006fa0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8006fa4:	f8c8 400c 	str.w	r4, [r8, #12]
 8006fa8:	1082      	asrs	r2, r0, #2
 8006faa:	2401      	movs	r4, #1
 8006fac:	4094      	lsls	r4, r2
 8006fae:	429c      	cmp	r4, r3
 8006fb0:	d84b      	bhi.n	800704a <_malloc_r+0x1ae>
 8006fb2:	421c      	tst	r4, r3
 8006fb4:	d106      	bne.n	8006fc4 <_malloc_r+0x128>
 8006fb6:	f020 0003 	bic.w	r0, r0, #3
 8006fba:	0064      	lsls	r4, r4, #1
 8006fbc:	421c      	tst	r4, r3
 8006fbe:	f100 0004 	add.w	r0, r0, #4
 8006fc2:	d0fa      	beq.n	8006fba <_malloc_r+0x11e>
 8006fc4:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8006fc8:	46ce      	mov	lr, r9
 8006fca:	4680      	mov	r8, r0
 8006fcc:	f8de 300c 	ldr.w	r3, [lr, #12]
 8006fd0:	459e      	cmp	lr, r3
 8006fd2:	d107      	bne.n	8006fe4 <_malloc_r+0x148>
 8006fd4:	e122      	b.n	800721c <_malloc_r+0x380>
 8006fd6:	2a00      	cmp	r2, #0
 8006fd8:	f280 8129 	bge.w	800722e <_malloc_r+0x392>
 8006fdc:	68db      	ldr	r3, [r3, #12]
 8006fde:	459e      	cmp	lr, r3
 8006fe0:	f000 811c 	beq.w	800721c <_malloc_r+0x380>
 8006fe4:	6859      	ldr	r1, [r3, #4]
 8006fe6:	f021 0103 	bic.w	r1, r1, #3
 8006fea:	1b4a      	subs	r2, r1, r5
 8006fec:	2a0f      	cmp	r2, #15
 8006fee:	ddf2      	ble.n	8006fd6 <_malloc_r+0x13a>
 8006ff0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8006ff4:	195c      	adds	r4, r3, r5
 8006ff6:	f045 0501 	orr.w	r5, r5, #1
 8006ffa:	605d      	str	r5, [r3, #4]
 8006ffc:	f042 0501 	orr.w	r5, r2, #1
 8007000:	f8c8 e00c 	str.w	lr, [r8, #12]
 8007004:	4630      	mov	r0, r6
 8007006:	f8ce 8008 	str.w	r8, [lr, #8]
 800700a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800700e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8007012:	6065      	str	r5, [r4, #4]
 8007014:	505a      	str	r2, [r3, r1]
 8007016:	9301      	str	r3, [sp, #4]
 8007018:	f000 fa4e 	bl	80074b8 <__malloc_unlock>
 800701c:	9b01      	ldr	r3, [sp, #4]
 800701e:	f103 0408 	add.w	r4, r3, #8
 8007022:	e763      	b.n	8006eec <_malloc_r+0x50>
 8007024:	2400      	movs	r4, #0
 8007026:	230c      	movs	r3, #12
 8007028:	4620      	mov	r0, r4
 800702a:	6033      	str	r3, [r6, #0]
 800702c:	b003      	add	sp, #12
 800702e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007032:	f44f 7300 	mov.w	r3, #512	; 0x200
 8007036:	2040      	movs	r0, #64	; 0x40
 8007038:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 800703c:	e773      	b.n	8006f26 <_malloc_r+0x8a>
 800703e:	687b      	ldr	r3, [r7, #4]
 8007040:	1082      	asrs	r2, r0, #2
 8007042:	2401      	movs	r4, #1
 8007044:	4094      	lsls	r4, r2
 8007046:	429c      	cmp	r4, r3
 8007048:	d9b3      	bls.n	8006fb2 <_malloc_r+0x116>
 800704a:	68bc      	ldr	r4, [r7, #8]
 800704c:	6863      	ldr	r3, [r4, #4]
 800704e:	f023 0903 	bic.w	r9, r3, #3
 8007052:	45a9      	cmp	r9, r5
 8007054:	d303      	bcc.n	800705e <_malloc_r+0x1c2>
 8007056:	eba9 0305 	sub.w	r3, r9, r5
 800705a:	2b0f      	cmp	r3, #15
 800705c:	dc7b      	bgt.n	8007156 <_malloc_r+0x2ba>
 800705e:	4b5e      	ldr	r3, [pc, #376]	; (80071d8 <_malloc_r+0x33c>)
 8007060:	f8df a188 	ldr.w	sl, [pc, #392]	; 80071ec <_malloc_r+0x350>
 8007064:	681a      	ldr	r2, [r3, #0]
 8007066:	f8da 3000 	ldr.w	r3, [sl]
 800706a:	3301      	adds	r3, #1
 800706c:	eb05 0802 	add.w	r8, r5, r2
 8007070:	f000 8148 	beq.w	8007304 <_malloc_r+0x468>
 8007074:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8007078:	f108 080f 	add.w	r8, r8, #15
 800707c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8007080:	f028 080f 	bic.w	r8, r8, #15
 8007084:	4641      	mov	r1, r8
 8007086:	4630      	mov	r0, r6
 8007088:	f000 ff08 	bl	8007e9c <_sbrk_r>
 800708c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8007090:	4683      	mov	fp, r0
 8007092:	f000 8104 	beq.w	800729e <_malloc_r+0x402>
 8007096:	eb04 0009 	add.w	r0, r4, r9
 800709a:	4558      	cmp	r0, fp
 800709c:	f200 80fd 	bhi.w	800729a <_malloc_r+0x3fe>
 80070a0:	4a4e      	ldr	r2, [pc, #312]	; (80071dc <_malloc_r+0x340>)
 80070a2:	6813      	ldr	r3, [r2, #0]
 80070a4:	4443      	add	r3, r8
 80070a6:	6013      	str	r3, [r2, #0]
 80070a8:	f000 814d 	beq.w	8007346 <_malloc_r+0x4aa>
 80070ac:	f8da 1000 	ldr.w	r1, [sl]
 80070b0:	3101      	adds	r1, #1
 80070b2:	bf1b      	ittet	ne
 80070b4:	ebab 0000 	subne.w	r0, fp, r0
 80070b8:	181b      	addne	r3, r3, r0
 80070ba:	f8ca b000 	streq.w	fp, [sl]
 80070be:	6013      	strne	r3, [r2, #0]
 80070c0:	f01b 0307 	ands.w	r3, fp, #7
 80070c4:	f000 8134 	beq.w	8007330 <_malloc_r+0x494>
 80070c8:	f1c3 0108 	rsb	r1, r3, #8
 80070cc:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 80070d0:	448b      	add	fp, r1
 80070d2:	3308      	adds	r3, #8
 80070d4:	44d8      	add	r8, fp
 80070d6:	f3c8 080b 	ubfx	r8, r8, #0, #12
 80070da:	eba3 0808 	sub.w	r8, r3, r8
 80070de:	4641      	mov	r1, r8
 80070e0:	4630      	mov	r0, r6
 80070e2:	9201      	str	r2, [sp, #4]
 80070e4:	f000 feda 	bl	8007e9c <_sbrk_r>
 80070e8:	1c43      	adds	r3, r0, #1
 80070ea:	9a01      	ldr	r2, [sp, #4]
 80070ec:	f000 8146 	beq.w	800737c <_malloc_r+0x4e0>
 80070f0:	eba0 010b 	sub.w	r1, r0, fp
 80070f4:	4441      	add	r1, r8
 80070f6:	f041 0101 	orr.w	r1, r1, #1
 80070fa:	6813      	ldr	r3, [r2, #0]
 80070fc:	f8c7 b008 	str.w	fp, [r7, #8]
 8007100:	4443      	add	r3, r8
 8007102:	42bc      	cmp	r4, r7
 8007104:	f8cb 1004 	str.w	r1, [fp, #4]
 8007108:	6013      	str	r3, [r2, #0]
 800710a:	d015      	beq.n	8007138 <_malloc_r+0x29c>
 800710c:	f1b9 0f0f 	cmp.w	r9, #15
 8007110:	f240 8130 	bls.w	8007374 <_malloc_r+0x4d8>
 8007114:	6860      	ldr	r0, [r4, #4]
 8007116:	f1a9 010c 	sub.w	r1, r9, #12
 800711a:	f021 0107 	bic.w	r1, r1, #7
 800711e:	f000 0001 	and.w	r0, r0, #1
 8007122:	eb04 0c01 	add.w	ip, r4, r1
 8007126:	4308      	orrs	r0, r1
 8007128:	f04f 0e05 	mov.w	lr, #5
 800712c:	290f      	cmp	r1, #15
 800712e:	6060      	str	r0, [r4, #4]
 8007130:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8007134:	f200 813a 	bhi.w	80073ac <_malloc_r+0x510>
 8007138:	4a29      	ldr	r2, [pc, #164]	; (80071e0 <_malloc_r+0x344>)
 800713a:	482a      	ldr	r0, [pc, #168]	; (80071e4 <_malloc_r+0x348>)
 800713c:	6811      	ldr	r1, [r2, #0]
 800713e:	68bc      	ldr	r4, [r7, #8]
 8007140:	428b      	cmp	r3, r1
 8007142:	6801      	ldr	r1, [r0, #0]
 8007144:	bf88      	it	hi
 8007146:	6013      	strhi	r3, [r2, #0]
 8007148:	6862      	ldr	r2, [r4, #4]
 800714a:	428b      	cmp	r3, r1
 800714c:	f022 0203 	bic.w	r2, r2, #3
 8007150:	bf88      	it	hi
 8007152:	6003      	strhi	r3, [r0, #0]
 8007154:	e0a7      	b.n	80072a6 <_malloc_r+0x40a>
 8007156:	1962      	adds	r2, r4, r5
 8007158:	f043 0301 	orr.w	r3, r3, #1
 800715c:	f045 0501 	orr.w	r5, r5, #1
 8007160:	6065      	str	r5, [r4, #4]
 8007162:	4630      	mov	r0, r6
 8007164:	60ba      	str	r2, [r7, #8]
 8007166:	6053      	str	r3, [r2, #4]
 8007168:	f000 f9a6 	bl	80074b8 <__malloc_unlock>
 800716c:	3408      	adds	r4, #8
 800716e:	4620      	mov	r0, r4
 8007170:	b003      	add	sp, #12
 8007172:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007176:	4423      	add	r3, r4
 8007178:	68e1      	ldr	r1, [r4, #12]
 800717a:	685a      	ldr	r2, [r3, #4]
 800717c:	68a5      	ldr	r5, [r4, #8]
 800717e:	f042 0201 	orr.w	r2, r2, #1
 8007182:	60e9      	str	r1, [r5, #12]
 8007184:	4630      	mov	r0, r6
 8007186:	608d      	str	r5, [r1, #8]
 8007188:	605a      	str	r2, [r3, #4]
 800718a:	f000 f995 	bl	80074b8 <__malloc_unlock>
 800718e:	3408      	adds	r4, #8
 8007190:	4620      	mov	r0, r4
 8007192:	b003      	add	sp, #12
 8007194:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007198:	68dc      	ldr	r4, [r3, #12]
 800719a:	42a3      	cmp	r3, r4
 800719c:	bf08      	it	eq
 800719e:	3002      	addeq	r0, #2
 80071a0:	f43f aed6 	beq.w	8006f50 <_malloc_r+0xb4>
 80071a4:	e692      	b.n	8006ecc <_malloc_r+0x30>
 80071a6:	2b14      	cmp	r3, #20
 80071a8:	d971      	bls.n	800728e <_malloc_r+0x3f2>
 80071aa:	2b54      	cmp	r3, #84	; 0x54
 80071ac:	f200 80ad 	bhi.w	800730a <_malloc_r+0x46e>
 80071b0:	0b2b      	lsrs	r3, r5, #12
 80071b2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 80071b6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 80071ba:	00c3      	lsls	r3, r0, #3
 80071bc:	e6b3      	b.n	8006f26 <_malloc_r+0x8a>
 80071be:	4423      	add	r3, r4
 80071c0:	4630      	mov	r0, r6
 80071c2:	685a      	ldr	r2, [r3, #4]
 80071c4:	f042 0201 	orr.w	r2, r2, #1
 80071c8:	605a      	str	r2, [r3, #4]
 80071ca:	3408      	adds	r4, #8
 80071cc:	f000 f974 	bl	80074b8 <__malloc_unlock>
 80071d0:	e68c      	b.n	8006eec <_malloc_r+0x50>
 80071d2:	bf00      	nop
 80071d4:	2000044c 	.word	0x2000044c
 80071d8:	20000aac 	.word	0x20000aac
 80071dc:	20000a7c 	.word	0x20000a7c
 80071e0:	20000aa4 	.word	0x20000aa4
 80071e4:	20000aa8 	.word	0x20000aa8
 80071e8:	20000454 	.word	0x20000454
 80071ec:	20000854 	.word	0x20000854
 80071f0:	1961      	adds	r1, r4, r5
 80071f2:	f045 0e01 	orr.w	lr, r5, #1
 80071f6:	f042 0501 	orr.w	r5, r2, #1
 80071fa:	f8c4 e004 	str.w	lr, [r4, #4]
 80071fe:	4630      	mov	r0, r6
 8007200:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8007204:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8007208:	604d      	str	r5, [r1, #4]
 800720a:	50e2      	str	r2, [r4, r3]
 800720c:	f000 f954 	bl	80074b8 <__malloc_unlock>
 8007210:	3408      	adds	r4, #8
 8007212:	e66b      	b.n	8006eec <_malloc_r+0x50>
 8007214:	08e8      	lsrs	r0, r5, #3
 8007216:	f105 0308 	add.w	r3, r5, #8
 800721a:	e64f      	b.n	8006ebc <_malloc_r+0x20>
 800721c:	f108 0801 	add.w	r8, r8, #1
 8007220:	f018 0f03 	tst.w	r8, #3
 8007224:	f10e 0e08 	add.w	lr, lr, #8
 8007228:	f47f aed0 	bne.w	8006fcc <_malloc_r+0x130>
 800722c:	e052      	b.n	80072d4 <_malloc_r+0x438>
 800722e:	4419      	add	r1, r3
 8007230:	461c      	mov	r4, r3
 8007232:	684a      	ldr	r2, [r1, #4]
 8007234:	68db      	ldr	r3, [r3, #12]
 8007236:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800723a:	f042 0201 	orr.w	r2, r2, #1
 800723e:	604a      	str	r2, [r1, #4]
 8007240:	4630      	mov	r0, r6
 8007242:	60eb      	str	r3, [r5, #12]
 8007244:	609d      	str	r5, [r3, #8]
 8007246:	f000 f937 	bl	80074b8 <__malloc_unlock>
 800724a:	e64f      	b.n	8006eec <_malloc_r+0x50>
 800724c:	0a5a      	lsrs	r2, r3, #9
 800724e:	2a04      	cmp	r2, #4
 8007250:	d935      	bls.n	80072be <_malloc_r+0x422>
 8007252:	2a14      	cmp	r2, #20
 8007254:	d86f      	bhi.n	8007336 <_malloc_r+0x49a>
 8007256:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800725a:	00c9      	lsls	r1, r1, #3
 800725c:	325b      	adds	r2, #91	; 0x5b
 800725e:	eb07 0e01 	add.w	lr, r7, r1
 8007262:	5879      	ldr	r1, [r7, r1]
 8007264:	f1ae 0e08 	sub.w	lr, lr, #8
 8007268:	458e      	cmp	lr, r1
 800726a:	d058      	beq.n	800731e <_malloc_r+0x482>
 800726c:	684a      	ldr	r2, [r1, #4]
 800726e:	f022 0203 	bic.w	r2, r2, #3
 8007272:	429a      	cmp	r2, r3
 8007274:	d902      	bls.n	800727c <_malloc_r+0x3e0>
 8007276:	6889      	ldr	r1, [r1, #8]
 8007278:	458e      	cmp	lr, r1
 800727a:	d1f7      	bne.n	800726c <_malloc_r+0x3d0>
 800727c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8007280:	687b      	ldr	r3, [r7, #4]
 8007282:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8007286:	f8ce 4008 	str.w	r4, [lr, #8]
 800728a:	60cc      	str	r4, [r1, #12]
 800728c:	e68c      	b.n	8006fa8 <_malloc_r+0x10c>
 800728e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8007292:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8007296:	00c3      	lsls	r3, r0, #3
 8007298:	e645      	b.n	8006f26 <_malloc_r+0x8a>
 800729a:	42bc      	cmp	r4, r7
 800729c:	d072      	beq.n	8007384 <_malloc_r+0x4e8>
 800729e:	68bc      	ldr	r4, [r7, #8]
 80072a0:	6862      	ldr	r2, [r4, #4]
 80072a2:	f022 0203 	bic.w	r2, r2, #3
 80072a6:	4295      	cmp	r5, r2
 80072a8:	eba2 0305 	sub.w	r3, r2, r5
 80072ac:	d802      	bhi.n	80072b4 <_malloc_r+0x418>
 80072ae:	2b0f      	cmp	r3, #15
 80072b0:	f73f af51 	bgt.w	8007156 <_malloc_r+0x2ba>
 80072b4:	4630      	mov	r0, r6
 80072b6:	f000 f8ff 	bl	80074b8 <__malloc_unlock>
 80072ba:	2400      	movs	r4, #0
 80072bc:	e616      	b.n	8006eec <_malloc_r+0x50>
 80072be:	099a      	lsrs	r2, r3, #6
 80072c0:	f102 0139 	add.w	r1, r2, #57	; 0x39
 80072c4:	00c9      	lsls	r1, r1, #3
 80072c6:	3238      	adds	r2, #56	; 0x38
 80072c8:	e7c9      	b.n	800725e <_malloc_r+0x3c2>
 80072ca:	f8d9 9000 	ldr.w	r9, [r9]
 80072ce:	4599      	cmp	r9, r3
 80072d0:	f040 8083 	bne.w	80073da <_malloc_r+0x53e>
 80072d4:	f010 0f03 	tst.w	r0, #3
 80072d8:	f1a9 0308 	sub.w	r3, r9, #8
 80072dc:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 80072e0:	d1f3      	bne.n	80072ca <_malloc_r+0x42e>
 80072e2:	687b      	ldr	r3, [r7, #4]
 80072e4:	ea23 0304 	bic.w	r3, r3, r4
 80072e8:	607b      	str	r3, [r7, #4]
 80072ea:	0064      	lsls	r4, r4, #1
 80072ec:	429c      	cmp	r4, r3
 80072ee:	f63f aeac 	bhi.w	800704a <_malloc_r+0x1ae>
 80072f2:	b91c      	cbnz	r4, 80072fc <_malloc_r+0x460>
 80072f4:	e6a9      	b.n	800704a <_malloc_r+0x1ae>
 80072f6:	0064      	lsls	r4, r4, #1
 80072f8:	f108 0804 	add.w	r8, r8, #4
 80072fc:	421c      	tst	r4, r3
 80072fe:	d0fa      	beq.n	80072f6 <_malloc_r+0x45a>
 8007300:	4640      	mov	r0, r8
 8007302:	e65f      	b.n	8006fc4 <_malloc_r+0x128>
 8007304:	f108 0810 	add.w	r8, r8, #16
 8007308:	e6bc      	b.n	8007084 <_malloc_r+0x1e8>
 800730a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800730e:	d826      	bhi.n	800735e <_malloc_r+0x4c2>
 8007310:	0beb      	lsrs	r3, r5, #15
 8007312:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8007316:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800731a:	00c3      	lsls	r3, r0, #3
 800731c:	e603      	b.n	8006f26 <_malloc_r+0x8a>
 800731e:	687b      	ldr	r3, [r7, #4]
 8007320:	1092      	asrs	r2, r2, #2
 8007322:	f04f 0801 	mov.w	r8, #1
 8007326:	fa08 f202 	lsl.w	r2, r8, r2
 800732a:	4313      	orrs	r3, r2
 800732c:	607b      	str	r3, [r7, #4]
 800732e:	e7a8      	b.n	8007282 <_malloc_r+0x3e6>
 8007330:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8007334:	e6ce      	b.n	80070d4 <_malloc_r+0x238>
 8007336:	2a54      	cmp	r2, #84	; 0x54
 8007338:	d829      	bhi.n	800738e <_malloc_r+0x4f2>
 800733a:	0b1a      	lsrs	r2, r3, #12
 800733c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8007340:	00c9      	lsls	r1, r1, #3
 8007342:	326e      	adds	r2, #110	; 0x6e
 8007344:	e78b      	b.n	800725e <_malloc_r+0x3c2>
 8007346:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800734a:	2900      	cmp	r1, #0
 800734c:	f47f aeae 	bne.w	80070ac <_malloc_r+0x210>
 8007350:	eb09 0208 	add.w	r2, r9, r8
 8007354:	68b9      	ldr	r1, [r7, #8]
 8007356:	f042 0201 	orr.w	r2, r2, #1
 800735a:	604a      	str	r2, [r1, #4]
 800735c:	e6ec      	b.n	8007138 <_malloc_r+0x29c>
 800735e:	f240 5254 	movw	r2, #1364	; 0x554
 8007362:	4293      	cmp	r3, r2
 8007364:	d81c      	bhi.n	80073a0 <_malloc_r+0x504>
 8007366:	0cab      	lsrs	r3, r5, #18
 8007368:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 800736c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8007370:	00c3      	lsls	r3, r0, #3
 8007372:	e5d8      	b.n	8006f26 <_malloc_r+0x8a>
 8007374:	2301      	movs	r3, #1
 8007376:	f8cb 3004 	str.w	r3, [fp, #4]
 800737a:	e79b      	b.n	80072b4 <_malloc_r+0x418>
 800737c:	2101      	movs	r1, #1
 800737e:	f04f 0800 	mov.w	r8, #0
 8007382:	e6ba      	b.n	80070fa <_malloc_r+0x25e>
 8007384:	4a16      	ldr	r2, [pc, #88]	; (80073e0 <_malloc_r+0x544>)
 8007386:	6813      	ldr	r3, [r2, #0]
 8007388:	4443      	add	r3, r8
 800738a:	6013      	str	r3, [r2, #0]
 800738c:	e68e      	b.n	80070ac <_malloc_r+0x210>
 800738e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8007392:	d814      	bhi.n	80073be <_malloc_r+0x522>
 8007394:	0bda      	lsrs	r2, r3, #15
 8007396:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800739a:	00c9      	lsls	r1, r1, #3
 800739c:	3277      	adds	r2, #119	; 0x77
 800739e:	e75e      	b.n	800725e <_malloc_r+0x3c2>
 80073a0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80073a4:	207f      	movs	r0, #127	; 0x7f
 80073a6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80073aa:	e5bc      	b.n	8006f26 <_malloc_r+0x8a>
 80073ac:	f104 0108 	add.w	r1, r4, #8
 80073b0:	4630      	mov	r0, r6
 80073b2:	9201      	str	r2, [sp, #4]
 80073b4:	f7ff fa48 	bl	8006848 <_free_r>
 80073b8:	9a01      	ldr	r2, [sp, #4]
 80073ba:	6813      	ldr	r3, [r2, #0]
 80073bc:	e6bc      	b.n	8007138 <_malloc_r+0x29c>
 80073be:	f240 5154 	movw	r1, #1364	; 0x554
 80073c2:	428a      	cmp	r2, r1
 80073c4:	d805      	bhi.n	80073d2 <_malloc_r+0x536>
 80073c6:	0c9a      	lsrs	r2, r3, #18
 80073c8:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 80073cc:	00c9      	lsls	r1, r1, #3
 80073ce:	327c      	adds	r2, #124	; 0x7c
 80073d0:	e745      	b.n	800725e <_malloc_r+0x3c2>
 80073d2:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 80073d6:	227e      	movs	r2, #126	; 0x7e
 80073d8:	e741      	b.n	800725e <_malloc_r+0x3c2>
 80073da:	687b      	ldr	r3, [r7, #4]
 80073dc:	e785      	b.n	80072ea <_malloc_r+0x44e>
 80073de:	bf00      	nop
 80073e0:	20000a7c 	.word	0x20000a7c

080073e4 <memmove>:
 80073e4:	4288      	cmp	r0, r1
 80073e6:	b4f0      	push	{r4, r5, r6, r7}
 80073e8:	d90d      	bls.n	8007406 <memmove+0x22>
 80073ea:	188b      	adds	r3, r1, r2
 80073ec:	4283      	cmp	r3, r0
 80073ee:	d90a      	bls.n	8007406 <memmove+0x22>
 80073f0:	1884      	adds	r4, r0, r2
 80073f2:	b132      	cbz	r2, 8007402 <memmove+0x1e>
 80073f4:	4622      	mov	r2, r4
 80073f6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80073fa:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80073fe:	4299      	cmp	r1, r3
 8007400:	d1f9      	bne.n	80073f6 <memmove+0x12>
 8007402:	bcf0      	pop	{r4, r5, r6, r7}
 8007404:	4770      	bx	lr
 8007406:	2a0f      	cmp	r2, #15
 8007408:	d949      	bls.n	800749e <memmove+0xba>
 800740a:	ea40 0301 	orr.w	r3, r0, r1
 800740e:	079b      	lsls	r3, r3, #30
 8007410:	d147      	bne.n	80074a2 <memmove+0xbe>
 8007412:	f1a2 0310 	sub.w	r3, r2, #16
 8007416:	091b      	lsrs	r3, r3, #4
 8007418:	f101 0720 	add.w	r7, r1, #32
 800741c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8007420:	f101 0410 	add.w	r4, r1, #16
 8007424:	f100 0510 	add.w	r5, r0, #16
 8007428:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800742c:	f845 6c10 	str.w	r6, [r5, #-16]
 8007430:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8007434:	f845 6c0c 	str.w	r6, [r5, #-12]
 8007438:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800743c:	f845 6c08 	str.w	r6, [r5, #-8]
 8007440:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8007444:	f845 6c04 	str.w	r6, [r5, #-4]
 8007448:	3410      	adds	r4, #16
 800744a:	42bc      	cmp	r4, r7
 800744c:	f105 0510 	add.w	r5, r5, #16
 8007450:	d1ea      	bne.n	8007428 <memmove+0x44>
 8007452:	3301      	adds	r3, #1
 8007454:	f002 050f 	and.w	r5, r2, #15
 8007458:	011b      	lsls	r3, r3, #4
 800745a:	2d03      	cmp	r5, #3
 800745c:	4419      	add	r1, r3
 800745e:	4403      	add	r3, r0
 8007460:	d921      	bls.n	80074a6 <memmove+0xc2>
 8007462:	1f1f      	subs	r7, r3, #4
 8007464:	460e      	mov	r6, r1
 8007466:	462c      	mov	r4, r5
 8007468:	3c04      	subs	r4, #4
 800746a:	f856 cb04 	ldr.w	ip, [r6], #4
 800746e:	f847 cf04 	str.w	ip, [r7, #4]!
 8007472:	2c03      	cmp	r4, #3
 8007474:	d8f8      	bhi.n	8007468 <memmove+0x84>
 8007476:	1f2c      	subs	r4, r5, #4
 8007478:	f024 0403 	bic.w	r4, r4, #3
 800747c:	3404      	adds	r4, #4
 800747e:	4423      	add	r3, r4
 8007480:	4421      	add	r1, r4
 8007482:	f002 0203 	and.w	r2, r2, #3
 8007486:	2a00      	cmp	r2, #0
 8007488:	d0bb      	beq.n	8007402 <memmove+0x1e>
 800748a:	3b01      	subs	r3, #1
 800748c:	440a      	add	r2, r1
 800748e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8007492:	f803 4f01 	strb.w	r4, [r3, #1]!
 8007496:	4291      	cmp	r1, r2
 8007498:	d1f9      	bne.n	800748e <memmove+0xaa>
 800749a:	bcf0      	pop	{r4, r5, r6, r7}
 800749c:	4770      	bx	lr
 800749e:	4603      	mov	r3, r0
 80074a0:	e7f1      	b.n	8007486 <memmove+0xa2>
 80074a2:	4603      	mov	r3, r0
 80074a4:	e7f1      	b.n	800748a <memmove+0xa6>
 80074a6:	462a      	mov	r2, r5
 80074a8:	e7ed      	b.n	8007486 <memmove+0xa2>
 80074aa:	bf00      	nop

080074ac <__malloc_lock>:
 80074ac:	4801      	ldr	r0, [pc, #4]	; (80074b4 <__malloc_lock+0x8>)
 80074ae:	f7ff bc79 	b.w	8006da4 <__retarget_lock_acquire_recursive>
 80074b2:	bf00      	nop
 80074b4:	20000b5c 	.word	0x20000b5c

080074b8 <__malloc_unlock>:
 80074b8:	4801      	ldr	r0, [pc, #4]	; (80074c0 <__malloc_unlock+0x8>)
 80074ba:	f7ff bc75 	b.w	8006da8 <__retarget_lock_release_recursive>
 80074be:	bf00      	nop
 80074c0:	20000b5c 	.word	0x20000b5c

080074c4 <_Balloc>:
 80074c4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80074c6:	b570      	push	{r4, r5, r6, lr}
 80074c8:	4605      	mov	r5, r0
 80074ca:	460c      	mov	r4, r1
 80074cc:	b14b      	cbz	r3, 80074e2 <_Balloc+0x1e>
 80074ce:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80074d2:	b180      	cbz	r0, 80074f6 <_Balloc+0x32>
 80074d4:	6802      	ldr	r2, [r0, #0]
 80074d6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80074da:	2300      	movs	r3, #0
 80074dc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80074e0:	bd70      	pop	{r4, r5, r6, pc}
 80074e2:	2221      	movs	r2, #33	; 0x21
 80074e4:	2104      	movs	r1, #4
 80074e6:	f000 fe1d 	bl	8008124 <_calloc_r>
 80074ea:	4603      	mov	r3, r0
 80074ec:	64e8      	str	r0, [r5, #76]	; 0x4c
 80074ee:	2800      	cmp	r0, #0
 80074f0:	d1ed      	bne.n	80074ce <_Balloc+0xa>
 80074f2:	2000      	movs	r0, #0
 80074f4:	bd70      	pop	{r4, r5, r6, pc}
 80074f6:	2101      	movs	r1, #1
 80074f8:	fa01 f604 	lsl.w	r6, r1, r4
 80074fc:	1d72      	adds	r2, r6, #5
 80074fe:	4628      	mov	r0, r5
 8007500:	0092      	lsls	r2, r2, #2
 8007502:	f000 fe0f 	bl	8008124 <_calloc_r>
 8007506:	2800      	cmp	r0, #0
 8007508:	d0f3      	beq.n	80074f2 <_Balloc+0x2e>
 800750a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800750e:	e7e4      	b.n	80074da <_Balloc+0x16>

08007510 <_Bfree>:
 8007510:	b131      	cbz	r1, 8007520 <_Bfree+0x10>
 8007512:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8007514:	684a      	ldr	r2, [r1, #4]
 8007516:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800751a:	6008      	str	r0, [r1, #0]
 800751c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8007520:	4770      	bx	lr
 8007522:	bf00      	nop

08007524 <__multadd>:
 8007524:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007526:	690c      	ldr	r4, [r1, #16]
 8007528:	b083      	sub	sp, #12
 800752a:	460d      	mov	r5, r1
 800752c:	4606      	mov	r6, r0
 800752e:	f101 0c14 	add.w	ip, r1, #20
 8007532:	2700      	movs	r7, #0
 8007534:	f8dc 0000 	ldr.w	r0, [ip]
 8007538:	b281      	uxth	r1, r0
 800753a:	fb02 3301 	mla	r3, r2, r1, r3
 800753e:	0c01      	lsrs	r1, r0, #16
 8007540:	0c18      	lsrs	r0, r3, #16
 8007542:	fb02 0101 	mla	r1, r2, r1, r0
 8007546:	b29b      	uxth	r3, r3
 8007548:	3701      	adds	r7, #1
 800754a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800754e:	42bc      	cmp	r4, r7
 8007550:	f84c 3b04 	str.w	r3, [ip], #4
 8007554:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8007558:	dcec      	bgt.n	8007534 <__multadd+0x10>
 800755a:	b13b      	cbz	r3, 800756c <__multadd+0x48>
 800755c:	68aa      	ldr	r2, [r5, #8]
 800755e:	42a2      	cmp	r2, r4
 8007560:	dd07      	ble.n	8007572 <__multadd+0x4e>
 8007562:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8007566:	3401      	adds	r4, #1
 8007568:	6153      	str	r3, [r2, #20]
 800756a:	612c      	str	r4, [r5, #16]
 800756c:	4628      	mov	r0, r5
 800756e:	b003      	add	sp, #12
 8007570:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007572:	6869      	ldr	r1, [r5, #4]
 8007574:	9301      	str	r3, [sp, #4]
 8007576:	3101      	adds	r1, #1
 8007578:	4630      	mov	r0, r6
 800757a:	f7ff ffa3 	bl	80074c4 <_Balloc>
 800757e:	692a      	ldr	r2, [r5, #16]
 8007580:	3202      	adds	r2, #2
 8007582:	f105 010c 	add.w	r1, r5, #12
 8007586:	4607      	mov	r7, r0
 8007588:	0092      	lsls	r2, r2, #2
 800758a:	300c      	adds	r0, #12
 800758c:	f7f8 ffb8 	bl	8000500 <memcpy>
 8007590:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8007592:	6869      	ldr	r1, [r5, #4]
 8007594:	9b01      	ldr	r3, [sp, #4]
 8007596:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800759a:	6028      	str	r0, [r5, #0]
 800759c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80075a0:	463d      	mov	r5, r7
 80075a2:	e7de      	b.n	8007562 <__multadd+0x3e>

080075a4 <__hi0bits>:
 80075a4:	0c02      	lsrs	r2, r0, #16
 80075a6:	0412      	lsls	r2, r2, #16
 80075a8:	4603      	mov	r3, r0
 80075aa:	b9c2      	cbnz	r2, 80075de <__hi0bits+0x3a>
 80075ac:	0403      	lsls	r3, r0, #16
 80075ae:	2010      	movs	r0, #16
 80075b0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80075b4:	bf04      	itt	eq
 80075b6:	021b      	lsleq	r3, r3, #8
 80075b8:	3008      	addeq	r0, #8
 80075ba:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80075be:	bf04      	itt	eq
 80075c0:	011b      	lsleq	r3, r3, #4
 80075c2:	3004      	addeq	r0, #4
 80075c4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80075c8:	bf04      	itt	eq
 80075ca:	009b      	lsleq	r3, r3, #2
 80075cc:	3002      	addeq	r0, #2
 80075ce:	2b00      	cmp	r3, #0
 80075d0:	db04      	blt.n	80075dc <__hi0bits+0x38>
 80075d2:	005b      	lsls	r3, r3, #1
 80075d4:	d501      	bpl.n	80075da <__hi0bits+0x36>
 80075d6:	3001      	adds	r0, #1
 80075d8:	4770      	bx	lr
 80075da:	2020      	movs	r0, #32
 80075dc:	4770      	bx	lr
 80075de:	2000      	movs	r0, #0
 80075e0:	e7e6      	b.n	80075b0 <__hi0bits+0xc>
 80075e2:	bf00      	nop

080075e4 <__lo0bits>:
 80075e4:	6803      	ldr	r3, [r0, #0]
 80075e6:	f013 0207 	ands.w	r2, r3, #7
 80075ea:	4601      	mov	r1, r0
 80075ec:	d007      	beq.n	80075fe <__lo0bits+0x1a>
 80075ee:	07da      	lsls	r2, r3, #31
 80075f0:	d41f      	bmi.n	8007632 <__lo0bits+0x4e>
 80075f2:	0798      	lsls	r0, r3, #30
 80075f4:	d51f      	bpl.n	8007636 <__lo0bits+0x52>
 80075f6:	085b      	lsrs	r3, r3, #1
 80075f8:	600b      	str	r3, [r1, #0]
 80075fa:	2001      	movs	r0, #1
 80075fc:	4770      	bx	lr
 80075fe:	b298      	uxth	r0, r3
 8007600:	b1a0      	cbz	r0, 800762c <__lo0bits+0x48>
 8007602:	4610      	mov	r0, r2
 8007604:	f013 0fff 	tst.w	r3, #255	; 0xff
 8007608:	bf04      	itt	eq
 800760a:	0a1b      	lsreq	r3, r3, #8
 800760c:	3008      	addeq	r0, #8
 800760e:	071a      	lsls	r2, r3, #28
 8007610:	bf04      	itt	eq
 8007612:	091b      	lsreq	r3, r3, #4
 8007614:	3004      	addeq	r0, #4
 8007616:	079a      	lsls	r2, r3, #30
 8007618:	bf04      	itt	eq
 800761a:	089b      	lsreq	r3, r3, #2
 800761c:	3002      	addeq	r0, #2
 800761e:	07da      	lsls	r2, r3, #31
 8007620:	d402      	bmi.n	8007628 <__lo0bits+0x44>
 8007622:	085b      	lsrs	r3, r3, #1
 8007624:	d00b      	beq.n	800763e <__lo0bits+0x5a>
 8007626:	3001      	adds	r0, #1
 8007628:	600b      	str	r3, [r1, #0]
 800762a:	4770      	bx	lr
 800762c:	0c1b      	lsrs	r3, r3, #16
 800762e:	2010      	movs	r0, #16
 8007630:	e7e8      	b.n	8007604 <__lo0bits+0x20>
 8007632:	2000      	movs	r0, #0
 8007634:	4770      	bx	lr
 8007636:	089b      	lsrs	r3, r3, #2
 8007638:	600b      	str	r3, [r1, #0]
 800763a:	2002      	movs	r0, #2
 800763c:	4770      	bx	lr
 800763e:	2020      	movs	r0, #32
 8007640:	4770      	bx	lr
 8007642:	bf00      	nop

08007644 <__i2b>:
 8007644:	b510      	push	{r4, lr}
 8007646:	460c      	mov	r4, r1
 8007648:	2101      	movs	r1, #1
 800764a:	f7ff ff3b 	bl	80074c4 <_Balloc>
 800764e:	2201      	movs	r2, #1
 8007650:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8007654:	bd10      	pop	{r4, pc}
 8007656:	bf00      	nop

08007658 <__multiply>:
 8007658:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800765c:	690e      	ldr	r6, [r1, #16]
 800765e:	6914      	ldr	r4, [r2, #16]
 8007660:	42a6      	cmp	r6, r4
 8007662:	b083      	sub	sp, #12
 8007664:	460f      	mov	r7, r1
 8007666:	4615      	mov	r5, r2
 8007668:	da04      	bge.n	8007674 <__multiply+0x1c>
 800766a:	4632      	mov	r2, r6
 800766c:	462f      	mov	r7, r5
 800766e:	4626      	mov	r6, r4
 8007670:	460d      	mov	r5, r1
 8007672:	4614      	mov	r4, r2
 8007674:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8007678:	eb06 0804 	add.w	r8, r6, r4
 800767c:	4543      	cmp	r3, r8
 800767e:	bfb8      	it	lt
 8007680:	3101      	addlt	r1, #1
 8007682:	f7ff ff1f 	bl	80074c4 <_Balloc>
 8007686:	f100 0914 	add.w	r9, r0, #20
 800768a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800768e:	45f1      	cmp	r9, lr
 8007690:	9000      	str	r0, [sp, #0]
 8007692:	d205      	bcs.n	80076a0 <__multiply+0x48>
 8007694:	464b      	mov	r3, r9
 8007696:	2200      	movs	r2, #0
 8007698:	f843 2b04 	str.w	r2, [r3], #4
 800769c:	459e      	cmp	lr, r3
 800769e:	d8fb      	bhi.n	8007698 <__multiply+0x40>
 80076a0:	f105 0a14 	add.w	sl, r5, #20
 80076a4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80076a8:	f107 0314 	add.w	r3, r7, #20
 80076ac:	45a2      	cmp	sl, r4
 80076ae:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80076b2:	d261      	bcs.n	8007778 <__multiply+0x120>
 80076b4:	1b64      	subs	r4, r4, r5
 80076b6:	3c15      	subs	r4, #21
 80076b8:	f024 0403 	bic.w	r4, r4, #3
 80076bc:	f8cd e004 	str.w	lr, [sp, #4]
 80076c0:	44a2      	add	sl, r4
 80076c2:	f105 0210 	add.w	r2, r5, #16
 80076c6:	469e      	mov	lr, r3
 80076c8:	e005      	b.n	80076d6 <__multiply+0x7e>
 80076ca:	0c2d      	lsrs	r5, r5, #16
 80076cc:	d12b      	bne.n	8007726 <__multiply+0xce>
 80076ce:	4592      	cmp	sl, r2
 80076d0:	f109 0904 	add.w	r9, r9, #4
 80076d4:	d04e      	beq.n	8007774 <__multiply+0x11c>
 80076d6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80076da:	fa1f fb85 	uxth.w	fp, r5
 80076de:	f1bb 0f00 	cmp.w	fp, #0
 80076e2:	d0f2      	beq.n	80076ca <__multiply+0x72>
 80076e4:	4677      	mov	r7, lr
 80076e6:	464e      	mov	r6, r9
 80076e8:	2000      	movs	r0, #0
 80076ea:	e000      	b.n	80076ee <__multiply+0x96>
 80076ec:	4626      	mov	r6, r4
 80076ee:	f857 1b04 	ldr.w	r1, [r7], #4
 80076f2:	6834      	ldr	r4, [r6, #0]
 80076f4:	b28b      	uxth	r3, r1
 80076f6:	b2a5      	uxth	r5, r4
 80076f8:	0c09      	lsrs	r1, r1, #16
 80076fa:	0c24      	lsrs	r4, r4, #16
 80076fc:	fb0b 5303 	mla	r3, fp, r3, r5
 8007700:	4403      	add	r3, r0
 8007702:	fb0b 4001 	mla	r0, fp, r1, r4
 8007706:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800770a:	4634      	mov	r4, r6
 800770c:	b29b      	uxth	r3, r3
 800770e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8007712:	45bc      	cmp	ip, r7
 8007714:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8007718:	f844 3b04 	str.w	r3, [r4], #4
 800771c:	d8e6      	bhi.n	80076ec <__multiply+0x94>
 800771e:	6070      	str	r0, [r6, #4]
 8007720:	6815      	ldr	r5, [r2, #0]
 8007722:	0c2d      	lsrs	r5, r5, #16
 8007724:	d0d3      	beq.n	80076ce <__multiply+0x76>
 8007726:	f8d9 3000 	ldr.w	r3, [r9]
 800772a:	4676      	mov	r6, lr
 800772c:	4618      	mov	r0, r3
 800772e:	46cb      	mov	fp, r9
 8007730:	2100      	movs	r1, #0
 8007732:	e000      	b.n	8007736 <__multiply+0xde>
 8007734:	46a3      	mov	fp, r4
 8007736:	8834      	ldrh	r4, [r6, #0]
 8007738:	0c00      	lsrs	r0, r0, #16
 800773a:	fb05 0004 	mla	r0, r5, r4, r0
 800773e:	4401      	add	r1, r0
 8007740:	b29b      	uxth	r3, r3
 8007742:	465c      	mov	r4, fp
 8007744:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8007748:	f844 3b04 	str.w	r3, [r4], #4
 800774c:	f856 3b04 	ldr.w	r3, [r6], #4
 8007750:	f8db 0004 	ldr.w	r0, [fp, #4]
 8007754:	0c1b      	lsrs	r3, r3, #16
 8007756:	b287      	uxth	r7, r0
 8007758:	fb05 7303 	mla	r3, r5, r3, r7
 800775c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8007760:	45b4      	cmp	ip, r6
 8007762:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8007766:	d8e5      	bhi.n	8007734 <__multiply+0xdc>
 8007768:	4592      	cmp	sl, r2
 800776a:	f8cb 3004 	str.w	r3, [fp, #4]
 800776e:	f109 0904 	add.w	r9, r9, #4
 8007772:	d1b0      	bne.n	80076d6 <__multiply+0x7e>
 8007774:	f8dd e004 	ldr.w	lr, [sp, #4]
 8007778:	f1b8 0f00 	cmp.w	r8, #0
 800777c:	dd0b      	ble.n	8007796 <__multiply+0x13e>
 800777e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8007782:	f1ae 0e04 	sub.w	lr, lr, #4
 8007786:	b11b      	cbz	r3, 8007790 <__multiply+0x138>
 8007788:	e005      	b.n	8007796 <__multiply+0x13e>
 800778a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800778e:	b913      	cbnz	r3, 8007796 <__multiply+0x13e>
 8007790:	f1b8 0801 	subs.w	r8, r8, #1
 8007794:	d1f9      	bne.n	800778a <__multiply+0x132>
 8007796:	9800      	ldr	r0, [sp, #0]
 8007798:	f8c0 8010 	str.w	r8, [r0, #16]
 800779c:	b003      	add	sp, #12
 800779e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80077a2:	bf00      	nop

080077a4 <__pow5mult>:
 80077a4:	f012 0303 	ands.w	r3, r2, #3
 80077a8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80077ac:	4614      	mov	r4, r2
 80077ae:	4607      	mov	r7, r0
 80077b0:	d12e      	bne.n	8007810 <__pow5mult+0x6c>
 80077b2:	460d      	mov	r5, r1
 80077b4:	10a4      	asrs	r4, r4, #2
 80077b6:	d01c      	beq.n	80077f2 <__pow5mult+0x4e>
 80077b8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80077ba:	b396      	cbz	r6, 8007822 <__pow5mult+0x7e>
 80077bc:	07e3      	lsls	r3, r4, #31
 80077be:	f04f 0800 	mov.w	r8, #0
 80077c2:	d406      	bmi.n	80077d2 <__pow5mult+0x2e>
 80077c4:	1064      	asrs	r4, r4, #1
 80077c6:	d014      	beq.n	80077f2 <__pow5mult+0x4e>
 80077c8:	6830      	ldr	r0, [r6, #0]
 80077ca:	b1a8      	cbz	r0, 80077f8 <__pow5mult+0x54>
 80077cc:	4606      	mov	r6, r0
 80077ce:	07e3      	lsls	r3, r4, #31
 80077d0:	d5f8      	bpl.n	80077c4 <__pow5mult+0x20>
 80077d2:	4632      	mov	r2, r6
 80077d4:	4629      	mov	r1, r5
 80077d6:	4638      	mov	r0, r7
 80077d8:	f7ff ff3e 	bl	8007658 <__multiply>
 80077dc:	b1b5      	cbz	r5, 800780c <__pow5mult+0x68>
 80077de:	686a      	ldr	r2, [r5, #4]
 80077e0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80077e2:	1064      	asrs	r4, r4, #1
 80077e4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80077e8:	6029      	str	r1, [r5, #0]
 80077ea:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80077ee:	4605      	mov	r5, r0
 80077f0:	d1ea      	bne.n	80077c8 <__pow5mult+0x24>
 80077f2:	4628      	mov	r0, r5
 80077f4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80077f8:	4632      	mov	r2, r6
 80077fa:	4631      	mov	r1, r6
 80077fc:	4638      	mov	r0, r7
 80077fe:	f7ff ff2b 	bl	8007658 <__multiply>
 8007802:	6030      	str	r0, [r6, #0]
 8007804:	f8c0 8000 	str.w	r8, [r0]
 8007808:	4606      	mov	r6, r0
 800780a:	e7e0      	b.n	80077ce <__pow5mult+0x2a>
 800780c:	4605      	mov	r5, r0
 800780e:	e7d9      	b.n	80077c4 <__pow5mult+0x20>
 8007810:	3b01      	subs	r3, #1
 8007812:	4a0b      	ldr	r2, [pc, #44]	; (8007840 <__pow5mult+0x9c>)
 8007814:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8007818:	2300      	movs	r3, #0
 800781a:	f7ff fe83 	bl	8007524 <__multadd>
 800781e:	4605      	mov	r5, r0
 8007820:	e7c8      	b.n	80077b4 <__pow5mult+0x10>
 8007822:	2101      	movs	r1, #1
 8007824:	4638      	mov	r0, r7
 8007826:	f7ff fe4d 	bl	80074c4 <_Balloc>
 800782a:	f240 2371 	movw	r3, #625	; 0x271
 800782e:	6143      	str	r3, [r0, #20]
 8007830:	2201      	movs	r2, #1
 8007832:	2300      	movs	r3, #0
 8007834:	6102      	str	r2, [r0, #16]
 8007836:	4606      	mov	r6, r0
 8007838:	64b8      	str	r0, [r7, #72]	; 0x48
 800783a:	6003      	str	r3, [r0, #0]
 800783c:	e7be      	b.n	80077bc <__pow5mult+0x18>
 800783e:	bf00      	nop
 8007840:	0800a850 	.word	0x0800a850

08007844 <__lshift>:
 8007844:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007848:	4691      	mov	r9, r2
 800784a:	690a      	ldr	r2, [r1, #16]
 800784c:	460e      	mov	r6, r1
 800784e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8007852:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8007856:	eb04 0802 	add.w	r8, r4, r2
 800785a:	f108 0501 	add.w	r5, r8, #1
 800785e:	429d      	cmp	r5, r3
 8007860:	4607      	mov	r7, r0
 8007862:	dd04      	ble.n	800786e <__lshift+0x2a>
 8007864:	005b      	lsls	r3, r3, #1
 8007866:	429d      	cmp	r5, r3
 8007868:	f101 0101 	add.w	r1, r1, #1
 800786c:	dcfa      	bgt.n	8007864 <__lshift+0x20>
 800786e:	4638      	mov	r0, r7
 8007870:	f7ff fe28 	bl	80074c4 <_Balloc>
 8007874:	2c00      	cmp	r4, #0
 8007876:	f100 0314 	add.w	r3, r0, #20
 800787a:	dd37      	ble.n	80078ec <__lshift+0xa8>
 800787c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8007880:	2200      	movs	r2, #0
 8007882:	f843 2b04 	str.w	r2, [r3], #4
 8007886:	428b      	cmp	r3, r1
 8007888:	d1fb      	bne.n	8007882 <__lshift+0x3e>
 800788a:	6934      	ldr	r4, [r6, #16]
 800788c:	f106 0314 	add.w	r3, r6, #20
 8007890:	f019 091f 	ands.w	r9, r9, #31
 8007894:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8007898:	d020      	beq.n	80078dc <__lshift+0x98>
 800789a:	f1c9 0e20 	rsb	lr, r9, #32
 800789e:	2200      	movs	r2, #0
 80078a0:	e000      	b.n	80078a4 <__lshift+0x60>
 80078a2:	4651      	mov	r1, sl
 80078a4:	681c      	ldr	r4, [r3, #0]
 80078a6:	468a      	mov	sl, r1
 80078a8:	fa04 f409 	lsl.w	r4, r4, r9
 80078ac:	4314      	orrs	r4, r2
 80078ae:	f84a 4b04 	str.w	r4, [sl], #4
 80078b2:	f853 2b04 	ldr.w	r2, [r3], #4
 80078b6:	4563      	cmp	r3, ip
 80078b8:	fa22 f20e 	lsr.w	r2, r2, lr
 80078bc:	d3f1      	bcc.n	80078a2 <__lshift+0x5e>
 80078be:	604a      	str	r2, [r1, #4]
 80078c0:	b10a      	cbz	r2, 80078c6 <__lshift+0x82>
 80078c2:	f108 0502 	add.w	r5, r8, #2
 80078c6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80078c8:	6872      	ldr	r2, [r6, #4]
 80078ca:	3d01      	subs	r5, #1
 80078cc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80078d0:	6105      	str	r5, [r0, #16]
 80078d2:	6031      	str	r1, [r6, #0]
 80078d4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80078d8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80078dc:	3904      	subs	r1, #4
 80078de:	f853 2b04 	ldr.w	r2, [r3], #4
 80078e2:	f841 2f04 	str.w	r2, [r1, #4]!
 80078e6:	459c      	cmp	ip, r3
 80078e8:	d8f9      	bhi.n	80078de <__lshift+0x9a>
 80078ea:	e7ec      	b.n	80078c6 <__lshift+0x82>
 80078ec:	4619      	mov	r1, r3
 80078ee:	e7cc      	b.n	800788a <__lshift+0x46>

080078f0 <__mcmp>:
 80078f0:	b430      	push	{r4, r5}
 80078f2:	690b      	ldr	r3, [r1, #16]
 80078f4:	4605      	mov	r5, r0
 80078f6:	6900      	ldr	r0, [r0, #16]
 80078f8:	1ac0      	subs	r0, r0, r3
 80078fa:	d10f      	bne.n	800791c <__mcmp+0x2c>
 80078fc:	009b      	lsls	r3, r3, #2
 80078fe:	3514      	adds	r5, #20
 8007900:	3114      	adds	r1, #20
 8007902:	4419      	add	r1, r3
 8007904:	442b      	add	r3, r5
 8007906:	e001      	b.n	800790c <__mcmp+0x1c>
 8007908:	429d      	cmp	r5, r3
 800790a:	d207      	bcs.n	800791c <__mcmp+0x2c>
 800790c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8007910:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8007914:	4294      	cmp	r4, r2
 8007916:	d0f7      	beq.n	8007908 <__mcmp+0x18>
 8007918:	d302      	bcc.n	8007920 <__mcmp+0x30>
 800791a:	2001      	movs	r0, #1
 800791c:	bc30      	pop	{r4, r5}
 800791e:	4770      	bx	lr
 8007920:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007924:	e7fa      	b.n	800791c <__mcmp+0x2c>
 8007926:	bf00      	nop

08007928 <__mdiff>:
 8007928:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800792c:	6913      	ldr	r3, [r2, #16]
 800792e:	690d      	ldr	r5, [r1, #16]
 8007930:	1aed      	subs	r5, r5, r3
 8007932:	2d00      	cmp	r5, #0
 8007934:	460e      	mov	r6, r1
 8007936:	4690      	mov	r8, r2
 8007938:	f101 0414 	add.w	r4, r1, #20
 800793c:	f102 0714 	add.w	r7, r2, #20
 8007940:	d114      	bne.n	800796c <__mdiff+0x44>
 8007942:	009b      	lsls	r3, r3, #2
 8007944:	18e2      	adds	r2, r4, r3
 8007946:	443b      	add	r3, r7
 8007948:	e001      	b.n	800794e <__mdiff+0x26>
 800794a:	42a2      	cmp	r2, r4
 800794c:	d959      	bls.n	8007a02 <__mdiff+0xda>
 800794e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8007952:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8007956:	458c      	cmp	ip, r1
 8007958:	d0f7      	beq.n	800794a <__mdiff+0x22>
 800795a:	d209      	bcs.n	8007970 <__mdiff+0x48>
 800795c:	4622      	mov	r2, r4
 800795e:	4633      	mov	r3, r6
 8007960:	463c      	mov	r4, r7
 8007962:	4646      	mov	r6, r8
 8007964:	4617      	mov	r7, r2
 8007966:	4698      	mov	r8, r3
 8007968:	2501      	movs	r5, #1
 800796a:	e001      	b.n	8007970 <__mdiff+0x48>
 800796c:	dbf6      	blt.n	800795c <__mdiff+0x34>
 800796e:	2500      	movs	r5, #0
 8007970:	6871      	ldr	r1, [r6, #4]
 8007972:	f7ff fda7 	bl	80074c4 <_Balloc>
 8007976:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800797a:	6936      	ldr	r6, [r6, #16]
 800797c:	60c5      	str	r5, [r0, #12]
 800797e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8007982:	46bc      	mov	ip, r7
 8007984:	f100 0514 	add.w	r5, r0, #20
 8007988:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800798c:	2300      	movs	r3, #0
 800798e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8007992:	f854 8b04 	ldr.w	r8, [r4], #4
 8007996:	b28a      	uxth	r2, r1
 8007998:	fa13 f388 	uxtah	r3, r3, r8
 800799c:	0c09      	lsrs	r1, r1, #16
 800799e:	1a9a      	subs	r2, r3, r2
 80079a0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80079a4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80079a8:	b292      	uxth	r2, r2
 80079aa:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80079ae:	45e6      	cmp	lr, ip
 80079b0:	f845 2b04 	str.w	r2, [r5], #4
 80079b4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80079b8:	d8e9      	bhi.n	800798e <__mdiff+0x66>
 80079ba:	42a7      	cmp	r7, r4
 80079bc:	d917      	bls.n	80079ee <__mdiff+0xc6>
 80079be:	46ae      	mov	lr, r5
 80079c0:	46a4      	mov	ip, r4
 80079c2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80079c6:	fa13 f382 	uxtah	r3, r3, r2
 80079ca:	1419      	asrs	r1, r3, #16
 80079cc:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80079d0:	b29b      	uxth	r3, r3
 80079d2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80079d6:	4567      	cmp	r7, ip
 80079d8:	f84e 2b04 	str.w	r2, [lr], #4
 80079dc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80079e0:	d8ef      	bhi.n	80079c2 <__mdiff+0x9a>
 80079e2:	43e4      	mvns	r4, r4
 80079e4:	4427      	add	r7, r4
 80079e6:	f027 0703 	bic.w	r7, r7, #3
 80079ea:	3704      	adds	r7, #4
 80079ec:	443d      	add	r5, r7
 80079ee:	3d04      	subs	r5, #4
 80079f0:	b922      	cbnz	r2, 80079fc <__mdiff+0xd4>
 80079f2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80079f6:	3e01      	subs	r6, #1
 80079f8:	2b00      	cmp	r3, #0
 80079fa:	d0fa      	beq.n	80079f2 <__mdiff+0xca>
 80079fc:	6106      	str	r6, [r0, #16]
 80079fe:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007a02:	2100      	movs	r1, #0
 8007a04:	f7ff fd5e 	bl	80074c4 <_Balloc>
 8007a08:	2201      	movs	r2, #1
 8007a0a:	2300      	movs	r3, #0
 8007a0c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8007a10:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08007a14 <__d2b>:
 8007a14:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8007a18:	460f      	mov	r7, r1
 8007a1a:	b083      	sub	sp, #12
 8007a1c:	2101      	movs	r1, #1
 8007a1e:	ec55 4b10 	vmov	r4, r5, d0
 8007a22:	4616      	mov	r6, r2
 8007a24:	f7ff fd4e 	bl	80074c4 <_Balloc>
 8007a28:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8007a2c:	4681      	mov	r9, r0
 8007a2e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8007a32:	f1b8 0f00 	cmp.w	r8, #0
 8007a36:	d001      	beq.n	8007a3c <__d2b+0x28>
 8007a38:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8007a3c:	2c00      	cmp	r4, #0
 8007a3e:	9301      	str	r3, [sp, #4]
 8007a40:	d024      	beq.n	8007a8c <__d2b+0x78>
 8007a42:	a802      	add	r0, sp, #8
 8007a44:	f840 4d08 	str.w	r4, [r0, #-8]!
 8007a48:	f7ff fdcc 	bl	80075e4 <__lo0bits>
 8007a4c:	2800      	cmp	r0, #0
 8007a4e:	d136      	bne.n	8007abe <__d2b+0xaa>
 8007a50:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007a54:	f8c9 2014 	str.w	r2, [r9, #20]
 8007a58:	2b00      	cmp	r3, #0
 8007a5a:	bf0c      	ite	eq
 8007a5c:	2101      	moveq	r1, #1
 8007a5e:	2102      	movne	r1, #2
 8007a60:	f8c9 3018 	str.w	r3, [r9, #24]
 8007a64:	f8c9 1010 	str.w	r1, [r9, #16]
 8007a68:	f1b8 0f00 	cmp.w	r8, #0
 8007a6c:	d11b      	bne.n	8007aa6 <__d2b+0x92>
 8007a6e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8007a72:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8007a76:	6038      	str	r0, [r7, #0]
 8007a78:	6918      	ldr	r0, [r3, #16]
 8007a7a:	f7ff fd93 	bl	80075a4 <__hi0bits>
 8007a7e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8007a82:	6030      	str	r0, [r6, #0]
 8007a84:	4648      	mov	r0, r9
 8007a86:	b003      	add	sp, #12
 8007a88:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007a8c:	a801      	add	r0, sp, #4
 8007a8e:	f7ff fda9 	bl	80075e4 <__lo0bits>
 8007a92:	9b01      	ldr	r3, [sp, #4]
 8007a94:	f8c9 3014 	str.w	r3, [r9, #20]
 8007a98:	2101      	movs	r1, #1
 8007a9a:	3020      	adds	r0, #32
 8007a9c:	f8c9 1010 	str.w	r1, [r9, #16]
 8007aa0:	f1b8 0f00 	cmp.w	r8, #0
 8007aa4:	d0e3      	beq.n	8007a6e <__d2b+0x5a>
 8007aa6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8007aaa:	eb08 0300 	add.w	r3, r8, r0
 8007aae:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8007ab2:	603b      	str	r3, [r7, #0]
 8007ab4:	6030      	str	r0, [r6, #0]
 8007ab6:	4648      	mov	r0, r9
 8007ab8:	b003      	add	sp, #12
 8007aba:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8007abe:	e9dd 1300 	ldrd	r1, r3, [sp]
 8007ac2:	f1c0 0220 	rsb	r2, r0, #32
 8007ac6:	fa03 f202 	lsl.w	r2, r3, r2
 8007aca:	430a      	orrs	r2, r1
 8007acc:	40c3      	lsrs	r3, r0
 8007ace:	9301      	str	r3, [sp, #4]
 8007ad0:	f8c9 2014 	str.w	r2, [r9, #20]
 8007ad4:	e7c0      	b.n	8007a58 <__d2b+0x44>
 8007ad6:	bf00      	nop

08007ad8 <_realloc_r>:
 8007ad8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007adc:	4692      	mov	sl, r2
 8007ade:	b083      	sub	sp, #12
 8007ae0:	2900      	cmp	r1, #0
 8007ae2:	f000 80a1 	beq.w	8007c28 <_realloc_r+0x150>
 8007ae6:	460d      	mov	r5, r1
 8007ae8:	4680      	mov	r8, r0
 8007aea:	f10a 040b 	add.w	r4, sl, #11
 8007aee:	f7ff fcdd 	bl	80074ac <__malloc_lock>
 8007af2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8007af6:	2c16      	cmp	r4, #22
 8007af8:	f022 0603 	bic.w	r6, r2, #3
 8007afc:	f1a5 0708 	sub.w	r7, r5, #8
 8007b00:	d83e      	bhi.n	8007b80 <_realloc_r+0xa8>
 8007b02:	2410      	movs	r4, #16
 8007b04:	4621      	mov	r1, r4
 8007b06:	45a2      	cmp	sl, r4
 8007b08:	d83f      	bhi.n	8007b8a <_realloc_r+0xb2>
 8007b0a:	428e      	cmp	r6, r1
 8007b0c:	eb07 0906 	add.w	r9, r7, r6
 8007b10:	da74      	bge.n	8007bfc <_realloc_r+0x124>
 8007b12:	4bc7      	ldr	r3, [pc, #796]	; (8007e30 <_realloc_r+0x358>)
 8007b14:	6898      	ldr	r0, [r3, #8]
 8007b16:	4548      	cmp	r0, r9
 8007b18:	f000 80aa 	beq.w	8007c70 <_realloc_r+0x198>
 8007b1c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8007b20:	f020 0301 	bic.w	r3, r0, #1
 8007b24:	444b      	add	r3, r9
 8007b26:	685b      	ldr	r3, [r3, #4]
 8007b28:	07db      	lsls	r3, r3, #31
 8007b2a:	f140 8083 	bpl.w	8007c34 <_realloc_r+0x15c>
 8007b2e:	07d2      	lsls	r2, r2, #31
 8007b30:	d534      	bpl.n	8007b9c <_realloc_r+0xc4>
 8007b32:	4651      	mov	r1, sl
 8007b34:	4640      	mov	r0, r8
 8007b36:	f7ff f9b1 	bl	8006e9c <_malloc_r>
 8007b3a:	4682      	mov	sl, r0
 8007b3c:	b1e0      	cbz	r0, 8007b78 <_realloc_r+0xa0>
 8007b3e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8007b42:	f023 0301 	bic.w	r3, r3, #1
 8007b46:	443b      	add	r3, r7
 8007b48:	f1a0 0208 	sub.w	r2, r0, #8
 8007b4c:	4293      	cmp	r3, r2
 8007b4e:	f000 80f9 	beq.w	8007d44 <_realloc_r+0x26c>
 8007b52:	1f32      	subs	r2, r6, #4
 8007b54:	2a24      	cmp	r2, #36	; 0x24
 8007b56:	f200 8107 	bhi.w	8007d68 <_realloc_r+0x290>
 8007b5a:	2a13      	cmp	r2, #19
 8007b5c:	6829      	ldr	r1, [r5, #0]
 8007b5e:	f200 80e6 	bhi.w	8007d2e <_realloc_r+0x256>
 8007b62:	4603      	mov	r3, r0
 8007b64:	462a      	mov	r2, r5
 8007b66:	6019      	str	r1, [r3, #0]
 8007b68:	6851      	ldr	r1, [r2, #4]
 8007b6a:	6059      	str	r1, [r3, #4]
 8007b6c:	6892      	ldr	r2, [r2, #8]
 8007b6e:	609a      	str	r2, [r3, #8]
 8007b70:	4629      	mov	r1, r5
 8007b72:	4640      	mov	r0, r8
 8007b74:	f7fe fe68 	bl	8006848 <_free_r>
 8007b78:	4640      	mov	r0, r8
 8007b7a:	f7ff fc9d 	bl	80074b8 <__malloc_unlock>
 8007b7e:	e04f      	b.n	8007c20 <_realloc_r+0x148>
 8007b80:	f024 0407 	bic.w	r4, r4, #7
 8007b84:	2c00      	cmp	r4, #0
 8007b86:	4621      	mov	r1, r4
 8007b88:	dabd      	bge.n	8007b06 <_realloc_r+0x2e>
 8007b8a:	f04f 0a00 	mov.w	sl, #0
 8007b8e:	230c      	movs	r3, #12
 8007b90:	4650      	mov	r0, sl
 8007b92:	f8c8 3000 	str.w	r3, [r8]
 8007b96:	b003      	add	sp, #12
 8007b98:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007b9c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8007ba0:	eba7 0b03 	sub.w	fp, r7, r3
 8007ba4:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007ba8:	f022 0203 	bic.w	r2, r2, #3
 8007bac:	18b3      	adds	r3, r6, r2
 8007bae:	428b      	cmp	r3, r1
 8007bb0:	dbbf      	blt.n	8007b32 <_realloc_r+0x5a>
 8007bb2:	46da      	mov	sl, fp
 8007bb4:	f8db 100c 	ldr.w	r1, [fp, #12]
 8007bb8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8007bbc:	1f32      	subs	r2, r6, #4
 8007bbe:	2a24      	cmp	r2, #36	; 0x24
 8007bc0:	60c1      	str	r1, [r0, #12]
 8007bc2:	eb0b 0903 	add.w	r9, fp, r3
 8007bc6:	6088      	str	r0, [r1, #8]
 8007bc8:	f200 80c6 	bhi.w	8007d58 <_realloc_r+0x280>
 8007bcc:	2a13      	cmp	r2, #19
 8007bce:	6829      	ldr	r1, [r5, #0]
 8007bd0:	f240 80c0 	bls.w	8007d54 <_realloc_r+0x27c>
 8007bd4:	f8cb 1008 	str.w	r1, [fp, #8]
 8007bd8:	6869      	ldr	r1, [r5, #4]
 8007bda:	f8cb 100c 	str.w	r1, [fp, #12]
 8007bde:	2a1b      	cmp	r2, #27
 8007be0:	68a9      	ldr	r1, [r5, #8]
 8007be2:	f200 80d8 	bhi.w	8007d96 <_realloc_r+0x2be>
 8007be6:	f10b 0210 	add.w	r2, fp, #16
 8007bea:	3508      	adds	r5, #8
 8007bec:	6011      	str	r1, [r2, #0]
 8007bee:	6869      	ldr	r1, [r5, #4]
 8007bf0:	6051      	str	r1, [r2, #4]
 8007bf2:	68a9      	ldr	r1, [r5, #8]
 8007bf4:	6091      	str	r1, [r2, #8]
 8007bf6:	461e      	mov	r6, r3
 8007bf8:	465f      	mov	r7, fp
 8007bfa:	4655      	mov	r5, sl
 8007bfc:	687b      	ldr	r3, [r7, #4]
 8007bfe:	1b32      	subs	r2, r6, r4
 8007c00:	2a0f      	cmp	r2, #15
 8007c02:	f003 0301 	and.w	r3, r3, #1
 8007c06:	d822      	bhi.n	8007c4e <_realloc_r+0x176>
 8007c08:	4333      	orrs	r3, r6
 8007c0a:	607b      	str	r3, [r7, #4]
 8007c0c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8007c10:	f043 0301 	orr.w	r3, r3, #1
 8007c14:	f8c9 3004 	str.w	r3, [r9, #4]
 8007c18:	4640      	mov	r0, r8
 8007c1a:	f7ff fc4d 	bl	80074b8 <__malloc_unlock>
 8007c1e:	46aa      	mov	sl, r5
 8007c20:	4650      	mov	r0, sl
 8007c22:	b003      	add	sp, #12
 8007c24:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007c28:	4611      	mov	r1, r2
 8007c2a:	b003      	add	sp, #12
 8007c2c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007c30:	f7ff b934 	b.w	8006e9c <_malloc_r>
 8007c34:	f020 0003 	bic.w	r0, r0, #3
 8007c38:	1833      	adds	r3, r6, r0
 8007c3a:	428b      	cmp	r3, r1
 8007c3c:	db61      	blt.n	8007d02 <_realloc_r+0x22a>
 8007c3e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8007c42:	461e      	mov	r6, r3
 8007c44:	60ca      	str	r2, [r1, #12]
 8007c46:	eb07 0903 	add.w	r9, r7, r3
 8007c4a:	6091      	str	r1, [r2, #8]
 8007c4c:	e7d6      	b.n	8007bfc <_realloc_r+0x124>
 8007c4e:	1939      	adds	r1, r7, r4
 8007c50:	4323      	orrs	r3, r4
 8007c52:	f042 0201 	orr.w	r2, r2, #1
 8007c56:	607b      	str	r3, [r7, #4]
 8007c58:	604a      	str	r2, [r1, #4]
 8007c5a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8007c5e:	f043 0301 	orr.w	r3, r3, #1
 8007c62:	3108      	adds	r1, #8
 8007c64:	f8c9 3004 	str.w	r3, [r9, #4]
 8007c68:	4640      	mov	r0, r8
 8007c6a:	f7fe fded 	bl	8006848 <_free_r>
 8007c6e:	e7d3      	b.n	8007c18 <_realloc_r+0x140>
 8007c70:	6840      	ldr	r0, [r0, #4]
 8007c72:	f020 0903 	bic.w	r9, r0, #3
 8007c76:	44b1      	add	r9, r6
 8007c78:	f104 0010 	add.w	r0, r4, #16
 8007c7c:	4581      	cmp	r9, r0
 8007c7e:	da77      	bge.n	8007d70 <_realloc_r+0x298>
 8007c80:	07d2      	lsls	r2, r2, #31
 8007c82:	f53f af56 	bmi.w	8007b32 <_realloc_r+0x5a>
 8007c86:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8007c8a:	eba7 0b02 	sub.w	fp, r7, r2
 8007c8e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007c92:	f022 0203 	bic.w	r2, r2, #3
 8007c96:	4491      	add	r9, r2
 8007c98:	4548      	cmp	r0, r9
 8007c9a:	dc87      	bgt.n	8007bac <_realloc_r+0xd4>
 8007c9c:	46da      	mov	sl, fp
 8007c9e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8007ca2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8007ca6:	1f32      	subs	r2, r6, #4
 8007ca8:	2a24      	cmp	r2, #36	; 0x24
 8007caa:	60c1      	str	r1, [r0, #12]
 8007cac:	6088      	str	r0, [r1, #8]
 8007cae:	f200 80a1 	bhi.w	8007df4 <_realloc_r+0x31c>
 8007cb2:	2a13      	cmp	r2, #19
 8007cb4:	6829      	ldr	r1, [r5, #0]
 8007cb6:	f240 809b 	bls.w	8007df0 <_realloc_r+0x318>
 8007cba:	f8cb 1008 	str.w	r1, [fp, #8]
 8007cbe:	6869      	ldr	r1, [r5, #4]
 8007cc0:	f8cb 100c 	str.w	r1, [fp, #12]
 8007cc4:	2a1b      	cmp	r2, #27
 8007cc6:	68a9      	ldr	r1, [r5, #8]
 8007cc8:	f200 809b 	bhi.w	8007e02 <_realloc_r+0x32a>
 8007ccc:	f10b 0210 	add.w	r2, fp, #16
 8007cd0:	3508      	adds	r5, #8
 8007cd2:	6011      	str	r1, [r2, #0]
 8007cd4:	6869      	ldr	r1, [r5, #4]
 8007cd6:	6051      	str	r1, [r2, #4]
 8007cd8:	68a9      	ldr	r1, [r5, #8]
 8007cda:	6091      	str	r1, [r2, #8]
 8007cdc:	eb0b 0104 	add.w	r1, fp, r4
 8007ce0:	eba9 0204 	sub.w	r2, r9, r4
 8007ce4:	f042 0201 	orr.w	r2, r2, #1
 8007ce8:	6099      	str	r1, [r3, #8]
 8007cea:	604a      	str	r2, [r1, #4]
 8007cec:	f8db 3004 	ldr.w	r3, [fp, #4]
 8007cf0:	f003 0301 	and.w	r3, r3, #1
 8007cf4:	431c      	orrs	r4, r3
 8007cf6:	4640      	mov	r0, r8
 8007cf8:	f8cb 4004 	str.w	r4, [fp, #4]
 8007cfc:	f7ff fbdc 	bl	80074b8 <__malloc_unlock>
 8007d00:	e78e      	b.n	8007c20 <_realloc_r+0x148>
 8007d02:	07d3      	lsls	r3, r2, #31
 8007d04:	f53f af15 	bmi.w	8007b32 <_realloc_r+0x5a>
 8007d08:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8007d0c:	eba7 0b03 	sub.w	fp, r7, r3
 8007d10:	f8db 2004 	ldr.w	r2, [fp, #4]
 8007d14:	f022 0203 	bic.w	r2, r2, #3
 8007d18:	4410      	add	r0, r2
 8007d1a:	1983      	adds	r3, r0, r6
 8007d1c:	428b      	cmp	r3, r1
 8007d1e:	f6ff af45 	blt.w	8007bac <_realloc_r+0xd4>
 8007d22:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8007d26:	46da      	mov	sl, fp
 8007d28:	60ca      	str	r2, [r1, #12]
 8007d2a:	6091      	str	r1, [r2, #8]
 8007d2c:	e742      	b.n	8007bb4 <_realloc_r+0xdc>
 8007d2e:	6001      	str	r1, [r0, #0]
 8007d30:	686b      	ldr	r3, [r5, #4]
 8007d32:	6043      	str	r3, [r0, #4]
 8007d34:	2a1b      	cmp	r2, #27
 8007d36:	d83a      	bhi.n	8007dae <_realloc_r+0x2d6>
 8007d38:	f105 0208 	add.w	r2, r5, #8
 8007d3c:	f100 0308 	add.w	r3, r0, #8
 8007d40:	68a9      	ldr	r1, [r5, #8]
 8007d42:	e710      	b.n	8007b66 <_realloc_r+0x8e>
 8007d44:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8007d48:	f023 0303 	bic.w	r3, r3, #3
 8007d4c:	441e      	add	r6, r3
 8007d4e:	eb07 0906 	add.w	r9, r7, r6
 8007d52:	e753      	b.n	8007bfc <_realloc_r+0x124>
 8007d54:	4652      	mov	r2, sl
 8007d56:	e749      	b.n	8007bec <_realloc_r+0x114>
 8007d58:	4629      	mov	r1, r5
 8007d5a:	4650      	mov	r0, sl
 8007d5c:	461e      	mov	r6, r3
 8007d5e:	465f      	mov	r7, fp
 8007d60:	f7ff fb40 	bl	80073e4 <memmove>
 8007d64:	4655      	mov	r5, sl
 8007d66:	e749      	b.n	8007bfc <_realloc_r+0x124>
 8007d68:	4629      	mov	r1, r5
 8007d6a:	f7ff fb3b 	bl	80073e4 <memmove>
 8007d6e:	e6ff      	b.n	8007b70 <_realloc_r+0x98>
 8007d70:	4427      	add	r7, r4
 8007d72:	eba9 0904 	sub.w	r9, r9, r4
 8007d76:	f049 0201 	orr.w	r2, r9, #1
 8007d7a:	609f      	str	r7, [r3, #8]
 8007d7c:	607a      	str	r2, [r7, #4]
 8007d7e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8007d82:	f003 0301 	and.w	r3, r3, #1
 8007d86:	431c      	orrs	r4, r3
 8007d88:	4640      	mov	r0, r8
 8007d8a:	f845 4c04 	str.w	r4, [r5, #-4]
 8007d8e:	f7ff fb93 	bl	80074b8 <__malloc_unlock>
 8007d92:	46aa      	mov	sl, r5
 8007d94:	e744      	b.n	8007c20 <_realloc_r+0x148>
 8007d96:	f8cb 1010 	str.w	r1, [fp, #16]
 8007d9a:	68e9      	ldr	r1, [r5, #12]
 8007d9c:	f8cb 1014 	str.w	r1, [fp, #20]
 8007da0:	2a24      	cmp	r2, #36	; 0x24
 8007da2:	d010      	beq.n	8007dc6 <_realloc_r+0x2ee>
 8007da4:	6929      	ldr	r1, [r5, #16]
 8007da6:	f10b 0218 	add.w	r2, fp, #24
 8007daa:	3510      	adds	r5, #16
 8007dac:	e71e      	b.n	8007bec <_realloc_r+0x114>
 8007dae:	68ab      	ldr	r3, [r5, #8]
 8007db0:	6083      	str	r3, [r0, #8]
 8007db2:	68eb      	ldr	r3, [r5, #12]
 8007db4:	60c3      	str	r3, [r0, #12]
 8007db6:	2a24      	cmp	r2, #36	; 0x24
 8007db8:	d010      	beq.n	8007ddc <_realloc_r+0x304>
 8007dba:	f105 0210 	add.w	r2, r5, #16
 8007dbe:	f100 0310 	add.w	r3, r0, #16
 8007dc2:	6929      	ldr	r1, [r5, #16]
 8007dc4:	e6cf      	b.n	8007b66 <_realloc_r+0x8e>
 8007dc6:	692a      	ldr	r2, [r5, #16]
 8007dc8:	f8cb 2018 	str.w	r2, [fp, #24]
 8007dcc:	696a      	ldr	r2, [r5, #20]
 8007dce:	f8cb 201c 	str.w	r2, [fp, #28]
 8007dd2:	69a9      	ldr	r1, [r5, #24]
 8007dd4:	f10b 0220 	add.w	r2, fp, #32
 8007dd8:	3518      	adds	r5, #24
 8007dda:	e707      	b.n	8007bec <_realloc_r+0x114>
 8007ddc:	692b      	ldr	r3, [r5, #16]
 8007dde:	6103      	str	r3, [r0, #16]
 8007de0:	696b      	ldr	r3, [r5, #20]
 8007de2:	6143      	str	r3, [r0, #20]
 8007de4:	69a9      	ldr	r1, [r5, #24]
 8007de6:	f105 0218 	add.w	r2, r5, #24
 8007dea:	f100 0318 	add.w	r3, r0, #24
 8007dee:	e6ba      	b.n	8007b66 <_realloc_r+0x8e>
 8007df0:	4652      	mov	r2, sl
 8007df2:	e76e      	b.n	8007cd2 <_realloc_r+0x1fa>
 8007df4:	4629      	mov	r1, r5
 8007df6:	4650      	mov	r0, sl
 8007df8:	9301      	str	r3, [sp, #4]
 8007dfa:	f7ff faf3 	bl	80073e4 <memmove>
 8007dfe:	9b01      	ldr	r3, [sp, #4]
 8007e00:	e76c      	b.n	8007cdc <_realloc_r+0x204>
 8007e02:	f8cb 1010 	str.w	r1, [fp, #16]
 8007e06:	68e9      	ldr	r1, [r5, #12]
 8007e08:	f8cb 1014 	str.w	r1, [fp, #20]
 8007e0c:	2a24      	cmp	r2, #36	; 0x24
 8007e0e:	d004      	beq.n	8007e1a <_realloc_r+0x342>
 8007e10:	6929      	ldr	r1, [r5, #16]
 8007e12:	f10b 0218 	add.w	r2, fp, #24
 8007e16:	3510      	adds	r5, #16
 8007e18:	e75b      	b.n	8007cd2 <_realloc_r+0x1fa>
 8007e1a:	692a      	ldr	r2, [r5, #16]
 8007e1c:	f8cb 2018 	str.w	r2, [fp, #24]
 8007e20:	696a      	ldr	r2, [r5, #20]
 8007e22:	f8cb 201c 	str.w	r2, [fp, #28]
 8007e26:	69a9      	ldr	r1, [r5, #24]
 8007e28:	f10b 0220 	add.w	r2, fp, #32
 8007e2c:	3518      	adds	r5, #24
 8007e2e:	e750      	b.n	8007cd2 <_realloc_r+0x1fa>
 8007e30:	2000044c 	.word	0x2000044c

08007e34 <frexp>:
 8007e34:	ec53 2b10 	vmov	r2, r3, d0
 8007e38:	b570      	push	{r4, r5, r6, lr}
 8007e3a:	4e16      	ldr	r6, [pc, #88]	; (8007e94 <frexp+0x60>)
 8007e3c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8007e40:	2500      	movs	r5, #0
 8007e42:	42b1      	cmp	r1, r6
 8007e44:	4604      	mov	r4, r0
 8007e46:	6005      	str	r5, [r0, #0]
 8007e48:	dc21      	bgt.n	8007e8e <frexp+0x5a>
 8007e4a:	ee10 6a10 	vmov	r6, s0
 8007e4e:	430e      	orrs	r6, r1
 8007e50:	d01d      	beq.n	8007e8e <frexp+0x5a>
 8007e52:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8007e56:	4618      	mov	r0, r3
 8007e58:	da0c      	bge.n	8007e74 <frexp+0x40>
 8007e5a:	4619      	mov	r1, r3
 8007e5c:	2200      	movs	r2, #0
 8007e5e:	ee10 0a10 	vmov	r0, s0
 8007e62:	4b0d      	ldr	r3, [pc, #52]	; (8007e98 <frexp+0x64>)
 8007e64:	f7f8 fe68 	bl	8000b38 <__aeabi_dmul>
 8007e68:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8007e6c:	4602      	mov	r2, r0
 8007e6e:	4608      	mov	r0, r1
 8007e70:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8007e74:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8007e78:	1509      	asrs	r1, r1, #20
 8007e7a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8007e7e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8007e82:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8007e86:	4429      	add	r1, r5
 8007e88:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8007e8c:	6021      	str	r1, [r4, #0]
 8007e8e:	ec43 2b10 	vmov	d0, r2, r3
 8007e92:	bd70      	pop	{r4, r5, r6, pc}
 8007e94:	7fefffff 	.word	0x7fefffff
 8007e98:	43500000 	.word	0x43500000

08007e9c <_sbrk_r>:
 8007e9c:	b538      	push	{r3, r4, r5, lr}
 8007e9e:	4c07      	ldr	r4, [pc, #28]	; (8007ebc <_sbrk_r+0x20>)
 8007ea0:	2300      	movs	r3, #0
 8007ea2:	4605      	mov	r5, r0
 8007ea4:	4608      	mov	r0, r1
 8007ea6:	6023      	str	r3, [r4, #0]
 8007ea8:	f7fb fc34 	bl	8003714 <_sbrk>
 8007eac:	1c43      	adds	r3, r0, #1
 8007eae:	d000      	beq.n	8007eb2 <_sbrk_r+0x16>
 8007eb0:	bd38      	pop	{r3, r4, r5, pc}
 8007eb2:	6823      	ldr	r3, [r4, #0]
 8007eb4:	2b00      	cmp	r3, #0
 8007eb6:	d0fb      	beq.n	8007eb0 <_sbrk_r+0x14>
 8007eb8:	602b      	str	r3, [r5, #0]
 8007eba:	bd38      	pop	{r3, r4, r5, pc}
 8007ebc:	20000b70 	.word	0x20000b70

08007ec0 <__sread>:
 8007ec0:	b510      	push	{r4, lr}
 8007ec2:	460c      	mov	r4, r1
 8007ec4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007ec8:	f000 fabc 	bl	8008444 <_read_r>
 8007ecc:	2800      	cmp	r0, #0
 8007ece:	db03      	blt.n	8007ed8 <__sread+0x18>
 8007ed0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8007ed2:	4403      	add	r3, r0
 8007ed4:	6523      	str	r3, [r4, #80]	; 0x50
 8007ed6:	bd10      	pop	{r4, pc}
 8007ed8:	89a3      	ldrh	r3, [r4, #12]
 8007eda:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8007ede:	81a3      	strh	r3, [r4, #12]
 8007ee0:	bd10      	pop	{r4, pc}
 8007ee2:	bf00      	nop

08007ee4 <__swrite>:
 8007ee4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007ee8:	4616      	mov	r6, r2
 8007eea:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8007eee:	461f      	mov	r7, r3
 8007ef0:	05d3      	lsls	r3, r2, #23
 8007ef2:	460c      	mov	r4, r1
 8007ef4:	4605      	mov	r5, r0
 8007ef6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007efa:	d507      	bpl.n	8007f0c <__swrite+0x28>
 8007efc:	2200      	movs	r2, #0
 8007efe:	2302      	movs	r3, #2
 8007f00:	f000 fa74 	bl	80083ec <_lseek_r>
 8007f04:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007f08:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8007f0c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8007f10:	81a2      	strh	r2, [r4, #12]
 8007f12:	463b      	mov	r3, r7
 8007f14:	4632      	mov	r2, r6
 8007f16:	4628      	mov	r0, r5
 8007f18:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8007f1c:	f000 b88c 	b.w	8008038 <_write_r>

08007f20 <__sseek>:
 8007f20:	b510      	push	{r4, lr}
 8007f22:	460c      	mov	r4, r1
 8007f24:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007f28:	f000 fa60 	bl	80083ec <_lseek_r>
 8007f2c:	89a3      	ldrh	r3, [r4, #12]
 8007f2e:	1c42      	adds	r2, r0, #1
 8007f30:	bf0e      	itee	eq
 8007f32:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8007f36:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8007f3a:	6520      	strne	r0, [r4, #80]	; 0x50
 8007f3c:	81a3      	strh	r3, [r4, #12]
 8007f3e:	bd10      	pop	{r4, pc}

08007f40 <__sclose>:
 8007f40:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007f44:	f000 b922 	b.w	800818c <_close_r>

08007f48 <strncpy>:
 8007f48:	ea40 0301 	orr.w	r3, r0, r1
 8007f4c:	079b      	lsls	r3, r3, #30
 8007f4e:	b470      	push	{r4, r5, r6}
 8007f50:	d12a      	bne.n	8007fa8 <strncpy+0x60>
 8007f52:	2a03      	cmp	r2, #3
 8007f54:	d928      	bls.n	8007fa8 <strncpy+0x60>
 8007f56:	460c      	mov	r4, r1
 8007f58:	4603      	mov	r3, r0
 8007f5a:	4621      	mov	r1, r4
 8007f5c:	f854 6b04 	ldr.w	r6, [r4], #4
 8007f60:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8007f64:	ea25 0506 	bic.w	r5, r5, r6
 8007f68:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8007f6c:	d106      	bne.n	8007f7c <strncpy+0x34>
 8007f6e:	3a04      	subs	r2, #4
 8007f70:	2a03      	cmp	r2, #3
 8007f72:	f843 6b04 	str.w	r6, [r3], #4
 8007f76:	4621      	mov	r1, r4
 8007f78:	d8ef      	bhi.n	8007f5a <strncpy+0x12>
 8007f7a:	b19a      	cbz	r2, 8007fa4 <strncpy+0x5c>
 8007f7c:	780c      	ldrb	r4, [r1, #0]
 8007f7e:	701c      	strb	r4, [r3, #0]
 8007f80:	3a01      	subs	r2, #1
 8007f82:	3301      	adds	r3, #1
 8007f84:	b13c      	cbz	r4, 8007f96 <strncpy+0x4e>
 8007f86:	b16a      	cbz	r2, 8007fa4 <strncpy+0x5c>
 8007f88:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8007f8c:	f803 4b01 	strb.w	r4, [r3], #1
 8007f90:	3a01      	subs	r2, #1
 8007f92:	2c00      	cmp	r4, #0
 8007f94:	d1f7      	bne.n	8007f86 <strncpy+0x3e>
 8007f96:	b12a      	cbz	r2, 8007fa4 <strncpy+0x5c>
 8007f98:	441a      	add	r2, r3
 8007f9a:	2100      	movs	r1, #0
 8007f9c:	f803 1b01 	strb.w	r1, [r3], #1
 8007fa0:	4293      	cmp	r3, r2
 8007fa2:	d1fb      	bne.n	8007f9c <strncpy+0x54>
 8007fa4:	bc70      	pop	{r4, r5, r6}
 8007fa6:	4770      	bx	lr
 8007fa8:	4603      	mov	r3, r0
 8007faa:	e7e6      	b.n	8007f7a <strncpy+0x32>

08007fac <__sprint_r.part.0>:
 8007fac:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007fb0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8007fb2:	049c      	lsls	r4, r3, #18
 8007fb4:	4692      	mov	sl, r2
 8007fb6:	d52d      	bpl.n	8008014 <__sprint_r.part.0+0x68>
 8007fb8:	6893      	ldr	r3, [r2, #8]
 8007fba:	6812      	ldr	r2, [r2, #0]
 8007fbc:	b343      	cbz	r3, 8008010 <__sprint_r.part.0+0x64>
 8007fbe:	460e      	mov	r6, r1
 8007fc0:	4607      	mov	r7, r0
 8007fc2:	f102 0908 	add.w	r9, r2, #8
 8007fc6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8007fca:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8007fce:	d015      	beq.n	8007ffc <__sprint_r.part.0+0x50>
 8007fd0:	3d04      	subs	r5, #4
 8007fd2:	2400      	movs	r4, #0
 8007fd4:	e001      	b.n	8007fda <__sprint_r.part.0+0x2e>
 8007fd6:	45a0      	cmp	r8, r4
 8007fd8:	d00e      	beq.n	8007ff8 <__sprint_r.part.0+0x4c>
 8007fda:	4632      	mov	r2, r6
 8007fdc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8007fe0:	4638      	mov	r0, r7
 8007fe2:	f000 f99d 	bl	8008320 <_fputwc_r>
 8007fe6:	1c43      	adds	r3, r0, #1
 8007fe8:	f104 0401 	add.w	r4, r4, #1
 8007fec:	d1f3      	bne.n	8007fd6 <__sprint_r.part.0+0x2a>
 8007fee:	2300      	movs	r3, #0
 8007ff0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8007ff4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007ff8:	f8da 3008 	ldr.w	r3, [sl, #8]
 8007ffc:	f02b 0b03 	bic.w	fp, fp, #3
 8008000:	eba3 030b 	sub.w	r3, r3, fp
 8008004:	f8ca 3008 	str.w	r3, [sl, #8]
 8008008:	f109 0908 	add.w	r9, r9, #8
 800800c:	2b00      	cmp	r3, #0
 800800e:	d1da      	bne.n	8007fc6 <__sprint_r.part.0+0x1a>
 8008010:	2000      	movs	r0, #0
 8008012:	e7ec      	b.n	8007fee <__sprint_r.part.0+0x42>
 8008014:	f7fe fd0c 	bl	8006a30 <__sfvwrite_r>
 8008018:	2300      	movs	r3, #0
 800801a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800801e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008022:	bf00      	nop

08008024 <__sprint_r>:
 8008024:	6893      	ldr	r3, [r2, #8]
 8008026:	b10b      	cbz	r3, 800802c <__sprint_r+0x8>
 8008028:	f7ff bfc0 	b.w	8007fac <__sprint_r.part.0>
 800802c:	b410      	push	{r4}
 800802e:	4618      	mov	r0, r3
 8008030:	6053      	str	r3, [r2, #4]
 8008032:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008036:	4770      	bx	lr

08008038 <_write_r>:
 8008038:	b570      	push	{r4, r5, r6, lr}
 800803a:	460d      	mov	r5, r1
 800803c:	4c08      	ldr	r4, [pc, #32]	; (8008060 <_write_r+0x28>)
 800803e:	4611      	mov	r1, r2
 8008040:	4606      	mov	r6, r0
 8008042:	461a      	mov	r2, r3
 8008044:	4628      	mov	r0, r5
 8008046:	2300      	movs	r3, #0
 8008048:	6023      	str	r3, [r4, #0]
 800804a:	f7fb fb50 	bl	80036ee <_write>
 800804e:	1c43      	adds	r3, r0, #1
 8008050:	d000      	beq.n	8008054 <_write_r+0x1c>
 8008052:	bd70      	pop	{r4, r5, r6, pc}
 8008054:	6823      	ldr	r3, [r4, #0]
 8008056:	2b00      	cmp	r3, #0
 8008058:	d0fb      	beq.n	8008052 <_write_r+0x1a>
 800805a:	6033      	str	r3, [r6, #0]
 800805c:	bd70      	pop	{r4, r5, r6, pc}
 800805e:	bf00      	nop
 8008060:	20000b70 	.word	0x20000b70

08008064 <__register_exitproc>:
 8008064:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008068:	4d2b      	ldr	r5, [pc, #172]	; (8008118 <__register_exitproc+0xb4>)
 800806a:	4606      	mov	r6, r0
 800806c:	6828      	ldr	r0, [r5, #0]
 800806e:	4698      	mov	r8, r3
 8008070:	460f      	mov	r7, r1
 8008072:	4691      	mov	r9, r2
 8008074:	f7fe fe96 	bl	8006da4 <__retarget_lock_acquire_recursive>
 8008078:	4b28      	ldr	r3, [pc, #160]	; (800811c <__register_exitproc+0xb8>)
 800807a:	681c      	ldr	r4, [r3, #0]
 800807c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8008080:	2b00      	cmp	r3, #0
 8008082:	d03d      	beq.n	8008100 <__register_exitproc+0x9c>
 8008084:	685a      	ldr	r2, [r3, #4]
 8008086:	2a1f      	cmp	r2, #31
 8008088:	dc0d      	bgt.n	80080a6 <__register_exitproc+0x42>
 800808a:	f102 0c01 	add.w	ip, r2, #1
 800808e:	bb16      	cbnz	r6, 80080d6 <__register_exitproc+0x72>
 8008090:	3202      	adds	r2, #2
 8008092:	f8c3 c004 	str.w	ip, [r3, #4]
 8008096:	6828      	ldr	r0, [r5, #0]
 8008098:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800809c:	f7fe fe84 	bl	8006da8 <__retarget_lock_release_recursive>
 80080a0:	2000      	movs	r0, #0
 80080a2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80080a6:	4b1e      	ldr	r3, [pc, #120]	; (8008120 <__register_exitproc+0xbc>)
 80080a8:	b37b      	cbz	r3, 800810a <__register_exitproc+0xa6>
 80080aa:	f44f 70c8 	mov.w	r0, #400	; 0x190
 80080ae:	f3af 8000 	nop.w
 80080b2:	4603      	mov	r3, r0
 80080b4:	b348      	cbz	r0, 800810a <__register_exitproc+0xa6>
 80080b6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 80080ba:	2100      	movs	r1, #0
 80080bc:	e9c0 2100 	strd	r2, r1, [r0]
 80080c0:	f04f 0c01 	mov.w	ip, #1
 80080c4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 80080c8:	460a      	mov	r2, r1
 80080ca:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 80080ce:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 80080d2:	2e00      	cmp	r6, #0
 80080d4:	d0dc      	beq.n	8008090 <__register_exitproc+0x2c>
 80080d6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 80080da:	2401      	movs	r4, #1
 80080dc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 80080e0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 80080e4:	4094      	lsls	r4, r2
 80080e6:	4320      	orrs	r0, r4
 80080e8:	2e02      	cmp	r6, #2
 80080ea:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 80080ee:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 80080f2:	d1cd      	bne.n	8008090 <__register_exitproc+0x2c>
 80080f4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 80080f8:	430c      	orrs	r4, r1
 80080fa:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 80080fe:	e7c7      	b.n	8008090 <__register_exitproc+0x2c>
 8008100:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8008104:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8008108:	e7bc      	b.n	8008084 <__register_exitproc+0x20>
 800810a:	6828      	ldr	r0, [r5, #0]
 800810c:	f7fe fe4c 	bl	8006da8 <__retarget_lock_release_recursive>
 8008110:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008114:	e7c5      	b.n	80080a2 <__register_exitproc+0x3e>
 8008116:	bf00      	nop
 8008118:	20000448 	.word	0x20000448
 800811c:	0800a6e4 	.word	0x0800a6e4
 8008120:	00000000 	.word	0x00000000

08008124 <_calloc_r>:
 8008124:	b510      	push	{r4, lr}
 8008126:	fb02 f101 	mul.w	r1, r2, r1
 800812a:	f7fe feb7 	bl	8006e9c <_malloc_r>
 800812e:	4604      	mov	r4, r0
 8008130:	b1d8      	cbz	r0, 800816a <_calloc_r+0x46>
 8008132:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8008136:	f022 0203 	bic.w	r2, r2, #3
 800813a:	3a04      	subs	r2, #4
 800813c:	2a24      	cmp	r2, #36	; 0x24
 800813e:	d81d      	bhi.n	800817c <_calloc_r+0x58>
 8008140:	2a13      	cmp	r2, #19
 8008142:	d914      	bls.n	800816e <_calloc_r+0x4a>
 8008144:	2300      	movs	r3, #0
 8008146:	2a1b      	cmp	r2, #27
 8008148:	e9c0 3300 	strd	r3, r3, [r0]
 800814c:	d91b      	bls.n	8008186 <_calloc_r+0x62>
 800814e:	2a24      	cmp	r2, #36	; 0x24
 8008150:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8008154:	bf0a      	itet	eq
 8008156:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 800815a:	f100 0210 	addne.w	r2, r0, #16
 800815e:	f100 0218 	addeq.w	r2, r0, #24
 8008162:	2300      	movs	r3, #0
 8008164:	e9c2 3300 	strd	r3, r3, [r2]
 8008168:	6093      	str	r3, [r2, #8]
 800816a:	4620      	mov	r0, r4
 800816c:	bd10      	pop	{r4, pc}
 800816e:	4602      	mov	r2, r0
 8008170:	2300      	movs	r3, #0
 8008172:	e9c2 3300 	strd	r3, r3, [r2]
 8008176:	6093      	str	r3, [r2, #8]
 8008178:	4620      	mov	r0, r4
 800817a:	bd10      	pop	{r4, pc}
 800817c:	2100      	movs	r1, #0
 800817e:	f7fb fb6f 	bl	8003860 <memset>
 8008182:	4620      	mov	r0, r4
 8008184:	bd10      	pop	{r4, pc}
 8008186:	f100 0208 	add.w	r2, r0, #8
 800818a:	e7f1      	b.n	8008170 <_calloc_r+0x4c>

0800818c <_close_r>:
 800818c:	b538      	push	{r3, r4, r5, lr}
 800818e:	4c07      	ldr	r4, [pc, #28]	; (80081ac <_close_r+0x20>)
 8008190:	2300      	movs	r3, #0
 8008192:	4605      	mov	r5, r0
 8008194:	4608      	mov	r0, r1
 8008196:	6023      	str	r3, [r4, #0]
 8008198:	f7fb fad8 	bl	800374c <_close>
 800819c:	1c43      	adds	r3, r0, #1
 800819e:	d000      	beq.n	80081a2 <_close_r+0x16>
 80081a0:	bd38      	pop	{r3, r4, r5, pc}
 80081a2:	6823      	ldr	r3, [r4, #0]
 80081a4:	2b00      	cmp	r3, #0
 80081a6:	d0fb      	beq.n	80081a0 <_close_r+0x14>
 80081a8:	602b      	str	r3, [r5, #0]
 80081aa:	bd38      	pop	{r3, r4, r5, pc}
 80081ac:	20000b70 	.word	0x20000b70

080081b0 <_fclose_r>:
 80081b0:	b570      	push	{r4, r5, r6, lr}
 80081b2:	2900      	cmp	r1, #0
 80081b4:	d048      	beq.n	8008248 <_fclose_r+0x98>
 80081b6:	4605      	mov	r5, r0
 80081b8:	460c      	mov	r4, r1
 80081ba:	b110      	cbz	r0, 80081c2 <_fclose_r+0x12>
 80081bc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80081be:	2b00      	cmp	r3, #0
 80081c0:	d048      	beq.n	8008254 <_fclose_r+0xa4>
 80081c2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80081c4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80081c8:	07d0      	lsls	r0, r2, #31
 80081ca:	d440      	bmi.n	800824e <_fclose_r+0x9e>
 80081cc:	0599      	lsls	r1, r3, #22
 80081ce:	d530      	bpl.n	8008232 <_fclose_r+0x82>
 80081d0:	4621      	mov	r1, r4
 80081d2:	4628      	mov	r0, r5
 80081d4:	f7fe f990 	bl	80064f8 <__sflush_r>
 80081d8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 80081da:	4606      	mov	r6, r0
 80081dc:	b133      	cbz	r3, 80081ec <_fclose_r+0x3c>
 80081de:	69e1      	ldr	r1, [r4, #28]
 80081e0:	4628      	mov	r0, r5
 80081e2:	4798      	blx	r3
 80081e4:	2800      	cmp	r0, #0
 80081e6:	bfb8      	it	lt
 80081e8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 80081ec:	89a3      	ldrh	r3, [r4, #12]
 80081ee:	061a      	lsls	r2, r3, #24
 80081f0:	d43c      	bmi.n	800826c <_fclose_r+0xbc>
 80081f2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80081f4:	b141      	cbz	r1, 8008208 <_fclose_r+0x58>
 80081f6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80081fa:	4299      	cmp	r1, r3
 80081fc:	d002      	beq.n	8008204 <_fclose_r+0x54>
 80081fe:	4628      	mov	r0, r5
 8008200:	f7fe fb22 	bl	8006848 <_free_r>
 8008204:	2300      	movs	r3, #0
 8008206:	6323      	str	r3, [r4, #48]	; 0x30
 8008208:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800820a:	b121      	cbz	r1, 8008216 <_fclose_r+0x66>
 800820c:	4628      	mov	r0, r5
 800820e:	f7fe fb1b 	bl	8006848 <_free_r>
 8008212:	2300      	movs	r3, #0
 8008214:	6463      	str	r3, [r4, #68]	; 0x44
 8008216:	f7fe faa1 	bl	800675c <__sfp_lock_acquire>
 800821a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800821c:	2200      	movs	r2, #0
 800821e:	07db      	lsls	r3, r3, #31
 8008220:	81a2      	strh	r2, [r4, #12]
 8008222:	d51f      	bpl.n	8008264 <_fclose_r+0xb4>
 8008224:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008226:	f7fe fdbb 	bl	8006da0 <__retarget_lock_close_recursive>
 800822a:	f7fe fa9d 	bl	8006768 <__sfp_lock_release>
 800822e:	4630      	mov	r0, r6
 8008230:	bd70      	pop	{r4, r5, r6, pc}
 8008232:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008234:	f7fe fdb6 	bl	8006da4 <__retarget_lock_acquire_recursive>
 8008238:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800823c:	2b00      	cmp	r3, #0
 800823e:	d1c7      	bne.n	80081d0 <_fclose_r+0x20>
 8008240:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8008242:	f016 0601 	ands.w	r6, r6, #1
 8008246:	d016      	beq.n	8008276 <_fclose_r+0xc6>
 8008248:	2600      	movs	r6, #0
 800824a:	4630      	mov	r0, r6
 800824c:	bd70      	pop	{r4, r5, r6, pc}
 800824e:	2b00      	cmp	r3, #0
 8008250:	d0fa      	beq.n	8008248 <_fclose_r+0x98>
 8008252:	e7bd      	b.n	80081d0 <_fclose_r+0x20>
 8008254:	f7fe fa56 	bl	8006704 <__sinit>
 8008258:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800825a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800825e:	07d0      	lsls	r0, r2, #31
 8008260:	d4f5      	bmi.n	800824e <_fclose_r+0x9e>
 8008262:	e7b3      	b.n	80081cc <_fclose_r+0x1c>
 8008264:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008266:	f7fe fd9f 	bl	8006da8 <__retarget_lock_release_recursive>
 800826a:	e7db      	b.n	8008224 <_fclose_r+0x74>
 800826c:	6921      	ldr	r1, [r4, #16]
 800826e:	4628      	mov	r0, r5
 8008270:	f7fe faea 	bl	8006848 <_free_r>
 8008274:	e7bd      	b.n	80081f2 <_fclose_r+0x42>
 8008276:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008278:	f7fe fd96 	bl	8006da8 <__retarget_lock_release_recursive>
 800827c:	4630      	mov	r0, r6
 800827e:	bd70      	pop	{r4, r5, r6, pc}

08008280 <__fputwc>:
 8008280:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008284:	b082      	sub	sp, #8
 8008286:	4681      	mov	r9, r0
 8008288:	4688      	mov	r8, r1
 800828a:	4614      	mov	r4, r2
 800828c:	f000 f8a0 	bl	80083d0 <__locale_mb_cur_max>
 8008290:	2801      	cmp	r0, #1
 8008292:	d103      	bne.n	800829c <__fputwc+0x1c>
 8008294:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8008298:	2bfe      	cmp	r3, #254	; 0xfe
 800829a:	d933      	bls.n	8008304 <__fputwc+0x84>
 800829c:	4642      	mov	r2, r8
 800829e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 80082a2:	a901      	add	r1, sp, #4
 80082a4:	4648      	mov	r0, r9
 80082a6:	f000 f93b 	bl	8008520 <_wcrtomb_r>
 80082aa:	1c42      	adds	r2, r0, #1
 80082ac:	4606      	mov	r6, r0
 80082ae:	d02f      	beq.n	8008310 <__fputwc+0x90>
 80082b0:	b320      	cbz	r0, 80082fc <__fputwc+0x7c>
 80082b2:	f89d c004 	ldrb.w	ip, [sp, #4]
 80082b6:	2500      	movs	r5, #0
 80082b8:	f10d 0a04 	add.w	sl, sp, #4
 80082bc:	e009      	b.n	80082d2 <__fputwc+0x52>
 80082be:	6823      	ldr	r3, [r4, #0]
 80082c0:	1c5a      	adds	r2, r3, #1
 80082c2:	6022      	str	r2, [r4, #0]
 80082c4:	f883 c000 	strb.w	ip, [r3]
 80082c8:	3501      	adds	r5, #1
 80082ca:	42b5      	cmp	r5, r6
 80082cc:	d216      	bcs.n	80082fc <__fputwc+0x7c>
 80082ce:	f815 c00a 	ldrb.w	ip, [r5, sl]
 80082d2:	68a3      	ldr	r3, [r4, #8]
 80082d4:	3b01      	subs	r3, #1
 80082d6:	2b00      	cmp	r3, #0
 80082d8:	60a3      	str	r3, [r4, #8]
 80082da:	daf0      	bge.n	80082be <__fputwc+0x3e>
 80082dc:	69a7      	ldr	r7, [r4, #24]
 80082de:	42bb      	cmp	r3, r7
 80082e0:	4661      	mov	r1, ip
 80082e2:	4622      	mov	r2, r4
 80082e4:	4648      	mov	r0, r9
 80082e6:	db02      	blt.n	80082ee <__fputwc+0x6e>
 80082e8:	f1bc 0f0a 	cmp.w	ip, #10
 80082ec:	d1e7      	bne.n	80082be <__fputwc+0x3e>
 80082ee:	f000 f8bf 	bl	8008470 <__swbuf_r>
 80082f2:	1c43      	adds	r3, r0, #1
 80082f4:	d1e8      	bne.n	80082c8 <__fputwc+0x48>
 80082f6:	b002      	add	sp, #8
 80082f8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80082fc:	4640      	mov	r0, r8
 80082fe:	b002      	add	sp, #8
 8008300:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008304:	fa5f fc88 	uxtb.w	ip, r8
 8008308:	4606      	mov	r6, r0
 800830a:	f88d c004 	strb.w	ip, [sp, #4]
 800830e:	e7d2      	b.n	80082b6 <__fputwc+0x36>
 8008310:	89a3      	ldrh	r3, [r4, #12]
 8008312:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008316:	81a3      	strh	r3, [r4, #12]
 8008318:	b002      	add	sp, #8
 800831a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800831e:	bf00      	nop

08008320 <_fputwc_r>:
 8008320:	b530      	push	{r4, r5, lr}
 8008322:	4605      	mov	r5, r0
 8008324:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8008326:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800832a:	07c0      	lsls	r0, r0, #31
 800832c:	4614      	mov	r4, r2
 800832e:	b083      	sub	sp, #12
 8008330:	b29a      	uxth	r2, r3
 8008332:	d401      	bmi.n	8008338 <_fputwc_r+0x18>
 8008334:	0590      	lsls	r0, r2, #22
 8008336:	d51c      	bpl.n	8008372 <_fputwc_r+0x52>
 8008338:	0490      	lsls	r0, r2, #18
 800833a:	d406      	bmi.n	800834a <_fputwc_r+0x2a>
 800833c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800833e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8008342:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8008346:	81a3      	strh	r3, [r4, #12]
 8008348:	6662      	str	r2, [r4, #100]	; 0x64
 800834a:	4628      	mov	r0, r5
 800834c:	4622      	mov	r2, r4
 800834e:	f7ff ff97 	bl	8008280 <__fputwc>
 8008352:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8008354:	07da      	lsls	r2, r3, #31
 8008356:	4605      	mov	r5, r0
 8008358:	d402      	bmi.n	8008360 <_fputwc_r+0x40>
 800835a:	89a3      	ldrh	r3, [r4, #12]
 800835c:	059b      	lsls	r3, r3, #22
 800835e:	d502      	bpl.n	8008366 <_fputwc_r+0x46>
 8008360:	4628      	mov	r0, r5
 8008362:	b003      	add	sp, #12
 8008364:	bd30      	pop	{r4, r5, pc}
 8008366:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008368:	f7fe fd1e 	bl	8006da8 <__retarget_lock_release_recursive>
 800836c:	4628      	mov	r0, r5
 800836e:	b003      	add	sp, #12
 8008370:	bd30      	pop	{r4, r5, pc}
 8008372:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008374:	9101      	str	r1, [sp, #4]
 8008376:	f7fe fd15 	bl	8006da4 <__retarget_lock_acquire_recursive>
 800837a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800837e:	9901      	ldr	r1, [sp, #4]
 8008380:	b29a      	uxth	r2, r3
 8008382:	e7d9      	b.n	8008338 <_fputwc_r+0x18>

08008384 <_fstat_r>:
 8008384:	b538      	push	{r3, r4, r5, lr}
 8008386:	460b      	mov	r3, r1
 8008388:	4c07      	ldr	r4, [pc, #28]	; (80083a8 <_fstat_r+0x24>)
 800838a:	4605      	mov	r5, r0
 800838c:	4611      	mov	r1, r2
 800838e:	4618      	mov	r0, r3
 8008390:	2300      	movs	r3, #0
 8008392:	6023      	str	r3, [r4, #0]
 8008394:	f7fb f9dd 	bl	8003752 <_fstat>
 8008398:	1c43      	adds	r3, r0, #1
 800839a:	d000      	beq.n	800839e <_fstat_r+0x1a>
 800839c:	bd38      	pop	{r3, r4, r5, pc}
 800839e:	6823      	ldr	r3, [r4, #0]
 80083a0:	2b00      	cmp	r3, #0
 80083a2:	d0fb      	beq.n	800839c <_fstat_r+0x18>
 80083a4:	602b      	str	r3, [r5, #0]
 80083a6:	bd38      	pop	{r3, r4, r5, pc}
 80083a8:	20000b70 	.word	0x20000b70

080083ac <_isatty_r>:
 80083ac:	b538      	push	{r3, r4, r5, lr}
 80083ae:	4c07      	ldr	r4, [pc, #28]	; (80083cc <_isatty_r+0x20>)
 80083b0:	2300      	movs	r3, #0
 80083b2:	4605      	mov	r5, r0
 80083b4:	4608      	mov	r0, r1
 80083b6:	6023      	str	r3, [r4, #0]
 80083b8:	f7fb f9d0 	bl	800375c <_isatty>
 80083bc:	1c43      	adds	r3, r0, #1
 80083be:	d000      	beq.n	80083c2 <_isatty_r+0x16>
 80083c0:	bd38      	pop	{r3, r4, r5, pc}
 80083c2:	6823      	ldr	r3, [r4, #0]
 80083c4:	2b00      	cmp	r3, #0
 80083c6:	d0fb      	beq.n	80083c0 <_isatty_r+0x14>
 80083c8:	602b      	str	r3, [r5, #0]
 80083ca:	bd38      	pop	{r3, r4, r5, pc}
 80083cc:	20000b70 	.word	0x20000b70

080083d0 <__locale_mb_cur_max>:
 80083d0:	4b04      	ldr	r3, [pc, #16]	; (80083e4 <__locale_mb_cur_max+0x14>)
 80083d2:	4a05      	ldr	r2, [pc, #20]	; (80083e8 <__locale_mb_cur_max+0x18>)
 80083d4:	681b      	ldr	r3, [r3, #0]
 80083d6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80083d8:	2b00      	cmp	r3, #0
 80083da:	bf08      	it	eq
 80083dc:	4613      	moveq	r3, r2
 80083de:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 80083e2:	4770      	bx	lr
 80083e4:	20000018 	.word	0x20000018
 80083e8:	2000085c 	.word	0x2000085c

080083ec <_lseek_r>:
 80083ec:	b570      	push	{r4, r5, r6, lr}
 80083ee:	460d      	mov	r5, r1
 80083f0:	4c08      	ldr	r4, [pc, #32]	; (8008414 <_lseek_r+0x28>)
 80083f2:	4611      	mov	r1, r2
 80083f4:	4606      	mov	r6, r0
 80083f6:	461a      	mov	r2, r3
 80083f8:	4628      	mov	r0, r5
 80083fa:	2300      	movs	r3, #0
 80083fc:	6023      	str	r3, [r4, #0]
 80083fe:	f7fb f9af 	bl	8003760 <_lseek>
 8008402:	1c43      	adds	r3, r0, #1
 8008404:	d000      	beq.n	8008408 <_lseek_r+0x1c>
 8008406:	bd70      	pop	{r4, r5, r6, pc}
 8008408:	6823      	ldr	r3, [r4, #0]
 800840a:	2b00      	cmp	r3, #0
 800840c:	d0fb      	beq.n	8008406 <_lseek_r+0x1a>
 800840e:	6033      	str	r3, [r6, #0]
 8008410:	bd70      	pop	{r4, r5, r6, pc}
 8008412:	bf00      	nop
 8008414:	20000b70 	.word	0x20000b70

08008418 <__ascii_mbtowc>:
 8008418:	b082      	sub	sp, #8
 800841a:	b149      	cbz	r1, 8008430 <__ascii_mbtowc+0x18>
 800841c:	b15a      	cbz	r2, 8008436 <__ascii_mbtowc+0x1e>
 800841e:	b16b      	cbz	r3, 800843c <__ascii_mbtowc+0x24>
 8008420:	7813      	ldrb	r3, [r2, #0]
 8008422:	600b      	str	r3, [r1, #0]
 8008424:	7812      	ldrb	r2, [r2, #0]
 8008426:	1c10      	adds	r0, r2, #0
 8008428:	bf18      	it	ne
 800842a:	2001      	movne	r0, #1
 800842c:	b002      	add	sp, #8
 800842e:	4770      	bx	lr
 8008430:	a901      	add	r1, sp, #4
 8008432:	2a00      	cmp	r2, #0
 8008434:	d1f3      	bne.n	800841e <__ascii_mbtowc+0x6>
 8008436:	4610      	mov	r0, r2
 8008438:	b002      	add	sp, #8
 800843a:	4770      	bx	lr
 800843c:	f06f 0001 	mvn.w	r0, #1
 8008440:	e7f4      	b.n	800842c <__ascii_mbtowc+0x14>
 8008442:	bf00      	nop

08008444 <_read_r>:
 8008444:	b570      	push	{r4, r5, r6, lr}
 8008446:	460d      	mov	r5, r1
 8008448:	4c08      	ldr	r4, [pc, #32]	; (800846c <_read_r+0x28>)
 800844a:	4611      	mov	r1, r2
 800844c:	4606      	mov	r6, r0
 800844e:	461a      	mov	r2, r3
 8008450:	4628      	mov	r0, r5
 8008452:	2300      	movs	r3, #0
 8008454:	6023      	str	r3, [r4, #0]
 8008456:	f7fb f937 	bl	80036c8 <_read>
 800845a:	1c43      	adds	r3, r0, #1
 800845c:	d000      	beq.n	8008460 <_read_r+0x1c>
 800845e:	bd70      	pop	{r4, r5, r6, pc}
 8008460:	6823      	ldr	r3, [r4, #0]
 8008462:	2b00      	cmp	r3, #0
 8008464:	d0fb      	beq.n	800845e <_read_r+0x1a>
 8008466:	6033      	str	r3, [r6, #0]
 8008468:	bd70      	pop	{r4, r5, r6, pc}
 800846a:	bf00      	nop
 800846c:	20000b70 	.word	0x20000b70

08008470 <__swbuf_r>:
 8008470:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8008472:	460d      	mov	r5, r1
 8008474:	4614      	mov	r4, r2
 8008476:	4606      	mov	r6, r0
 8008478:	b110      	cbz	r0, 8008480 <__swbuf_r+0x10>
 800847a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800847c:	2b00      	cmp	r3, #0
 800847e:	d043      	beq.n	8008508 <__swbuf_r+0x98>
 8008480:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8008484:	69a3      	ldr	r3, [r4, #24]
 8008486:	60a3      	str	r3, [r4, #8]
 8008488:	b291      	uxth	r1, r2
 800848a:	0708      	lsls	r0, r1, #28
 800848c:	d51b      	bpl.n	80084c6 <__swbuf_r+0x56>
 800848e:	6923      	ldr	r3, [r4, #16]
 8008490:	b1cb      	cbz	r3, 80084c6 <__swbuf_r+0x56>
 8008492:	b2ed      	uxtb	r5, r5
 8008494:	0489      	lsls	r1, r1, #18
 8008496:	462f      	mov	r7, r5
 8008498:	d522      	bpl.n	80084e0 <__swbuf_r+0x70>
 800849a:	6822      	ldr	r2, [r4, #0]
 800849c:	6961      	ldr	r1, [r4, #20]
 800849e:	1ad3      	subs	r3, r2, r3
 80084a0:	4299      	cmp	r1, r3
 80084a2:	dd29      	ble.n	80084f8 <__swbuf_r+0x88>
 80084a4:	3301      	adds	r3, #1
 80084a6:	68a1      	ldr	r1, [r4, #8]
 80084a8:	1c50      	adds	r0, r2, #1
 80084aa:	3901      	subs	r1, #1
 80084ac:	60a1      	str	r1, [r4, #8]
 80084ae:	6020      	str	r0, [r4, #0]
 80084b0:	7015      	strb	r5, [r2, #0]
 80084b2:	6962      	ldr	r2, [r4, #20]
 80084b4:	429a      	cmp	r2, r3
 80084b6:	d02a      	beq.n	800850e <__swbuf_r+0x9e>
 80084b8:	89a3      	ldrh	r3, [r4, #12]
 80084ba:	07db      	lsls	r3, r3, #31
 80084bc:	d501      	bpl.n	80084c2 <__swbuf_r+0x52>
 80084be:	2d0a      	cmp	r5, #10
 80084c0:	d025      	beq.n	800850e <__swbuf_r+0x9e>
 80084c2:	4638      	mov	r0, r7
 80084c4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80084c6:	4621      	mov	r1, r4
 80084c8:	4630      	mov	r0, r6
 80084ca:	f7fc fffd 	bl	80054c8 <__swsetup_r>
 80084ce:	bb20      	cbnz	r0, 800851a <__swbuf_r+0xaa>
 80084d0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80084d4:	6923      	ldr	r3, [r4, #16]
 80084d6:	b291      	uxth	r1, r2
 80084d8:	b2ed      	uxtb	r5, r5
 80084da:	0489      	lsls	r1, r1, #18
 80084dc:	462f      	mov	r7, r5
 80084de:	d4dc      	bmi.n	800849a <__swbuf_r+0x2a>
 80084e0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80084e2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80084e6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80084ea:	81a2      	strh	r2, [r4, #12]
 80084ec:	6822      	ldr	r2, [r4, #0]
 80084ee:	6661      	str	r1, [r4, #100]	; 0x64
 80084f0:	6961      	ldr	r1, [r4, #20]
 80084f2:	1ad3      	subs	r3, r2, r3
 80084f4:	4299      	cmp	r1, r3
 80084f6:	dcd5      	bgt.n	80084a4 <__swbuf_r+0x34>
 80084f8:	4621      	mov	r1, r4
 80084fa:	4630      	mov	r0, r6
 80084fc:	f7fe f8a6 	bl	800664c <_fflush_r>
 8008500:	b958      	cbnz	r0, 800851a <__swbuf_r+0xaa>
 8008502:	6822      	ldr	r2, [r4, #0]
 8008504:	2301      	movs	r3, #1
 8008506:	e7ce      	b.n	80084a6 <__swbuf_r+0x36>
 8008508:	f7fe f8fc 	bl	8006704 <__sinit>
 800850c:	e7b8      	b.n	8008480 <__swbuf_r+0x10>
 800850e:	4621      	mov	r1, r4
 8008510:	4630      	mov	r0, r6
 8008512:	f7fe f89b 	bl	800664c <_fflush_r>
 8008516:	2800      	cmp	r0, #0
 8008518:	d0d3      	beq.n	80084c2 <__swbuf_r+0x52>
 800851a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800851e:	e7d0      	b.n	80084c2 <__swbuf_r+0x52>

08008520 <_wcrtomb_r>:
 8008520:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008522:	4c11      	ldr	r4, [pc, #68]	; (8008568 <_wcrtomb_r+0x48>)
 8008524:	6824      	ldr	r4, [r4, #0]
 8008526:	b085      	sub	sp, #20
 8008528:	4606      	mov	r6, r0
 800852a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800852c:	461f      	mov	r7, r3
 800852e:	b151      	cbz	r1, 8008546 <_wcrtomb_r+0x26>
 8008530:	4d0e      	ldr	r5, [pc, #56]	; (800856c <_wcrtomb_r+0x4c>)
 8008532:	2c00      	cmp	r4, #0
 8008534:	bf08      	it	eq
 8008536:	462c      	moveq	r4, r5
 8008538:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800853c:	47a0      	blx	r4
 800853e:	1c43      	adds	r3, r0, #1
 8008540:	d00c      	beq.n	800855c <_wcrtomb_r+0x3c>
 8008542:	b005      	add	sp, #20
 8008544:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008546:	4a09      	ldr	r2, [pc, #36]	; (800856c <_wcrtomb_r+0x4c>)
 8008548:	2c00      	cmp	r4, #0
 800854a:	bf08      	it	eq
 800854c:	4614      	moveq	r4, r2
 800854e:	460a      	mov	r2, r1
 8008550:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8008554:	a901      	add	r1, sp, #4
 8008556:	47a0      	blx	r4
 8008558:	1c43      	adds	r3, r0, #1
 800855a:	d1f2      	bne.n	8008542 <_wcrtomb_r+0x22>
 800855c:	2200      	movs	r2, #0
 800855e:	238a      	movs	r3, #138	; 0x8a
 8008560:	603a      	str	r2, [r7, #0]
 8008562:	6033      	str	r3, [r6, #0]
 8008564:	b005      	add	sp, #20
 8008566:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008568:	20000018 	.word	0x20000018
 800856c:	2000085c 	.word	0x2000085c

08008570 <__ascii_wctomb>:
 8008570:	b121      	cbz	r1, 800857c <__ascii_wctomb+0xc>
 8008572:	2aff      	cmp	r2, #255	; 0xff
 8008574:	d804      	bhi.n	8008580 <__ascii_wctomb+0x10>
 8008576:	700a      	strb	r2, [r1, #0]
 8008578:	2001      	movs	r0, #1
 800857a:	4770      	bx	lr
 800857c:	4608      	mov	r0, r1
 800857e:	4770      	bx	lr
 8008580:	238a      	movs	r3, #138	; 0x8a
 8008582:	6003      	str	r3, [r0, #0]
 8008584:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008588:	4770      	bx	lr
 800858a:	bf00      	nop

0800858c <_init>:
 800858c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800858e:	bf00      	nop
 8008590:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8008592:	bc08      	pop	{r3}
 8008594:	469e      	mov	lr, r3
 8008596:	4770      	bx	lr

08008598 <_fini>:
 8008598:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800859a:	bf00      	nop
 800859c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800859e:	bc08      	pop	{r3}
 80085a0:	469e      	mov	lr, r3
 80085a2:	4770      	bx	lr
 80085a4:	0000      	movs	r0, r0
	...
