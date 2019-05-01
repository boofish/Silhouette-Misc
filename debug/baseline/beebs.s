
beebs.elf:     file format elf32-littlearm


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
 80001d8:	200009e8 	.word	0x200009e8
 80001dc:	00000000 	.word	0x00000000
 80001e0:	080072cc 	.word	0x080072cc

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	200009ec 	.word	0x200009ec
 80001fc:	080072cc 	.word	0x080072cc

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
 8001108:	f640 20c4 	movw	r0, #2756	; 0xac4
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20c4 	movw	r0, #2756	; 0xac4
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
 80013e8:	f247 3208 	movw	r2, #29448	; 0x7308
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
 800145a:	f240 0038 	movw	r0, #56	; 0x38
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f247 3200 	movw	r2, #29440	; 0x7300
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
 8001484:	f240 0038 	movw	r0, #56	; 0x38
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f247 3200 	movw	r2, #29440	; 0x7300
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
 8001842:	f640 21c8 	movw	r1, #2760	; 0xac8
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
 800188c:	f640 20c8 	movw	r0, #2760	; 0xac8
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20c8 	movw	r0, #2760	; 0xac8
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
 80019d4:	f247 3338 	movw	r3, #29496	; 0x7338
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
 80019fc:	f247 3348 	movw	r3, #29512	; 0x7348
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
	...

08001eb8 <minver>:
 8001eb8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eba:	af03      	add	r7, sp, #12
 8001ebc:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ec0:	f5ad 6dfc 	sub.w	sp, sp, #2016	; 0x7e0
 8001ec4:	1e83      	subs	r3, r0, #2
 8001ec6:	460c      	mov	r4, r1
 8001ec8:	f240 32e7 	movw	r2, #999	; 0x3e7
 8001ecc:	f5b3 7ff9 	cmp.w	r3, #498	; 0x1f2
 8001ed0:	f200 8135 	bhi.w	800213e <minver+0x286>
 8001ed4:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8001ed8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001edc:	f240 812f 	bls.w	800213e <minver+0x286>
 8001ee0:	2200      	movs	r2, #0
 8001ee2:	f10d 0a10 	add.w	sl, sp, #16
 8001ee6:	f84a 2022 	str.w	r2, [sl, r2, lsl #2]
 8001eea:	3201      	adds	r2, #1
 8001eec:	4290      	cmp	r0, r2
 8001eee:	d1fa      	bne.n	8001ee6 <minver+0x2e>
 8001ef0:	ed9f 3a96 	vldr	s6, [pc, #600]	; 800214c <minver+0x294>
 8001ef4:	f240 0b14 	movw	fp, #20
 8001ef8:	1e41      	subs	r1, r0, #1
 8001efa:	eeb7 2a00 	vmov.f32	s4, #112	; 0x3f800000  1.0
 8001efe:	2200      	movs	r2, #0
 8001f00:	f04f 0c00 	mov.w	ip, #0
 8001f04:	2600      	movs	r6, #0
 8001f06:	9100      	str	r1, [sp, #0]
 8001f08:	2100      	movs	r1, #0
 8001f0a:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8001f0e:	eeb0 1a42 	vmov.f32	s2, s4
 8001f12:	9101      	str	r1, [sp, #4]
 8001f14:	4659      	mov	r1, fp
 8001f16:	f8cd b00c 	str.w	fp, [sp, #12]
 8001f1a:	4696      	mov	lr, r2
 8001f1c:	460b      	mov	r3, r1
 8001f1e:	4635      	mov	r5, r6
 8001f20:	eeb0 4a43 	vmov.f32	s8, s6
 8001f24:	ed93 5a00 	vldr	s10, [r3]
 8001f28:	1c6a      	adds	r2, r5, #1
 8001f2a:	330c      	adds	r3, #12
 8001f2c:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
 8001f30:	eeb1 6a45 	vneg.f32	s12, s10
 8001f34:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f38:	bfb8      	it	lt
 8001f3a:	eeb0 5a46 	vmovlt.f32	s10, s12
 8001f3e:	eeb4 5ac4 	vcmpe.f32	s10, s8
 8001f42:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f46:	bfc4      	itt	gt
 8001f48:	eeb0 4a45 	vmovgt.f32	s8, s10
 8001f4c:	46ac      	movgt	ip, r5
 8001f4e:	4290      	cmp	r0, r2
 8001f50:	4615      	mov	r5, r2
 8001f52:	d1e7      	bne.n	8001f24 <minver+0x6c>
 8001f54:	eb0c 024c 	add.w	r2, ip, ip, lsl #1
 8001f58:	eb0b 0382 	add.w	r3, fp, r2, lsl #2
 8001f5c:	eb03 0286 	add.w	r2, r3, r6, lsl #2
 8001f60:	ed92 4a00 	vldr	s8, [r2]
 8001f64:	eeb5 4ac0 	vcmpe.f32	s8, #0.0
 8001f68:	eeb1 6a44 	vneg.f32	s12, s8
 8001f6c:	eeb0 7a44 	vmov.f32	s14, s8
 8001f70:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f74:	bfb8      	it	lt
 8001f76:	eeb0 7a46 	vmovlt.f32	s14, s12
 8001f7a:	eeb4 7ac0 	vcmpe.f32	s14, s0
 8001f7e:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f82:	f240 80cf 	bls.w	8002124 <minver+0x26c>
 8001f86:	45b4      	cmp	ip, r6
 8001f88:	4672      	mov	r2, lr
 8001f8a:	9102      	str	r1, [sp, #8]
 8001f8c:	d102      	bne.n	8001f94 <minver+0xdc>
 8001f8e:	ee21 1a04 	vmul.f32	s2, s2, s8
 8001f92:	e01f      	b.n	8001fd4 <minver+0x11c>
 8001f94:	f85a 502c 	ldr.w	r5, [sl, ip, lsl #2]
 8001f98:	f85a 2026 	ldr.w	r2, [sl, r6, lsl #2]
 8001f9c:	fb0c f804 	mul.w	r8, ip, r4
 8001fa0:	46a1      	mov	r9, r4
 8001fa2:	fb06 fe04 	mul.w	lr, r6, r4
 8001fa6:	eeb1 1a45 	vneg.f32	s2, s10
 8001faa:	f84a 5026 	str.w	r5, [sl, r6, lsl #2]
 8001fae:	9d03      	ldr	r5, [sp, #12]
 8001fb0:	f84a 202c 	str.w	r2, [sl, ip, lsl #2]
 8001fb4:	4602      	mov	r2, r0
 8001fb6:	682c      	ldr	r4, [r5, #0]
 8001fb8:	6819      	ldr	r1, [r3, #0]
 8001fba:	3a01      	subs	r2, #1
 8001fbc:	f845 1b04 	str.w	r1, [r5], #4
 8001fc0:	f843 4b04 	str.w	r4, [r3], #4
 8001fc4:	d1f7      	bne.n	8001fb6 <minver+0xfe>
 8001fc6:	9900      	ldr	r1, [sp, #0]
 8001fc8:	464c      	mov	r4, r9
 8001fca:	460a      	mov	r2, r1
 8001fcc:	eb02 0108 	add.w	r1, r2, r8
 8001fd0:	4472      	add	r2, lr
 8001fd2:	9101      	str	r1, [sp, #4]
 8001fd4:	9b03      	ldr	r3, [sp, #12]
 8001fd6:	4605      	mov	r5, r0
 8001fd8:	ed93 5a00 	vldr	s10, [r3]
 8001fdc:	3d01      	subs	r5, #1
 8001fde:	ee85 5a04 	vdiv.f32	s10, s10, s8
 8001fe2:	eca3 5a01 	vstmia	r3!, {s10}
 8001fe6:	d1f7      	bne.n	8001fd8 <minver+0x120>
 8001fe8:	2300      	movs	r3, #0
 8001fea:	46d9      	mov	r9, fp
 8001fec:	42b3      	cmp	r3, r6
 8001fee:	d038      	beq.n	8002062 <minver+0x1aa>
 8001ff0:	eb03 0143 	add.w	r1, r3, r3, lsl #1
 8001ff4:	fb03 6204 	mla	r2, r3, r4, r6
 8001ff8:	eb0b 0181 	add.w	r1, fp, r1, lsl #2
 8001ffc:	eb01 0e86 	add.w	lr, r1, r6, lsl #2
 8002000:	ed9e 5a00 	vldr	s10, [lr]
 8002004:	eeb5 5ac0 	vcmpe.f32	s10, #0.0
 8002008:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800200c:	d029      	beq.n	8002062 <minver+0x1aa>
 800200e:	4659      	mov	r1, fp
 8002010:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8002014:	f04f 0800 	mov.w	r8, #0
 8002018:	464d      	mov	r5, r9
 800201a:	4546      	cmp	r6, r8
 800201c:	f108 0801 	add.w	r8, r8, #1
 8002020:	bf1f      	itttt	ne
 8002022:	ed9b 6a00 	vldrne	s12, [fp]
 8002026:	ed95 7a00 	vldrne	s14, [r5]
 800202a:	ee05 7a46 	vmlsne.f32	s14, s10, s12
 800202e:	b081      	subne	sp, #4
 8002030:	f84d 0e00 	strt	r0, [sp]
 8002034:	ee10 0a10 	vmov	r0, s0
 8002038:	f845 0e00 	strt	r0, [r5]
 800203c:	bc01      	pop	{r0}
 800203e:	3504      	adds	r5, #4
 8002040:	f10b 0b04 	add.w	fp, fp, #4
 8002044:	4540      	cmp	r0, r8
 8002046:	d1e8      	bne.n	800201a <minver+0x162>
 8002048:	eeb1 5a45 	vneg.f32	s10, s10
 800204c:	468b      	mov	fp, r1
 800204e:	ee85 5a04 	vdiv.f32	s10, s10, s8
 8002052:	b081      	sub	sp, #4
 8002054:	f84d 0e00 	strt	r0, [sp]
 8002058:	ee10 0a10 	vmov	r0, s0
 800205c:	f84e 0e00 	strt	r0, [lr]
 8002060:	bc01      	pop	{r0}
 8002062:	3301      	adds	r3, #1
 8002064:	f109 090c 	add.w	r9, r9, #12
 8002068:	4283      	cmp	r3, r0
 800206a:	d1bf      	bne.n	8001fec <minver+0x134>
 800206c:	eb06 0146 	add.w	r1, r6, r6, lsl #1
 8002070:	ee82 4a04 	vdiv.f32	s8, s4, s8
 8002074:	eb0b 0181 	add.w	r1, fp, r1, lsl #2
 8002078:	eb01 0186 	add.w	r1, r1, r6, lsl #2
 800207c:	3601      	adds	r6, #1
 800207e:	b081      	sub	sp, #4
 8002080:	f84d 0e00 	strt	r0, [sp]
 8002084:	ee10 0a10 	vmov	r0, s0
 8002088:	f841 0e00 	strt	r0, [r1]
 800208c:	bc01      	pop	{r0}
 800208e:	9903      	ldr	r1, [sp, #12]
 8002090:	4286      	cmp	r6, r0
 8002092:	f101 010c 	add.w	r1, r1, #12
 8002096:	9103      	str	r1, [sp, #12]
 8002098:	9902      	ldr	r1, [sp, #8]
 800209a:	f101 0110 	add.w	r1, r1, #16
 800209e:	f6ff af3c 	blt.w	8001f1a <minver+0x62>
 80020a2:	9900      	ldr	r1, [sp, #0]
 80020a4:	f04f 0e00 	mov.w	lr, #0
 80020a8:	fb01 fc04 	mul.w	ip, r1, r4
 80020ac:	9901      	ldr	r1, [sp, #4]
 80020ae:	f85a 802e 	ldr.w	r8, [sl, lr, lsl #2]
 80020b2:	45f0      	cmp	r8, lr
 80020b4:	d01e      	beq.n	80020f4 <minver+0x23c>
 80020b6:	eb0c 090e 	add.w	r9, ip, lr
 80020ba:	4646      	mov	r6, r8
 80020bc:	eb06 0146 	add.w	r1, r6, r6, lsl #1
 80020c0:	f85a 8026 	ldr.w	r8, [sl, r6, lsl #2]
 80020c4:	f84a 6026 	str.w	r6, [sl, r6, lsl #2]
 80020c8:	eb0b 0281 	add.w	r2, fp, r1, lsl #2
 80020cc:	f852 3026 	ldr.w	r3, [r2, r6, lsl #2]
 80020d0:	eb02 0486 	add.w	r4, r2, r6, lsl #2
 80020d4:	eb02 018e 	add.w	r1, r2, lr, lsl #2
 80020d8:	4602      	mov	r2, r0
 80020da:	f84a 802e 	str.w	r8, [sl, lr, lsl #2]
 80020de:	680d      	ldr	r5, [r1, #0]
 80020e0:	600b      	str	r3, [r1, #0]
 80020e2:	3a01      	subs	r2, #1
 80020e4:	462b      	mov	r3, r5
 80020e6:	6025      	str	r5, [r4, #0]
 80020e8:	d1f9      	bne.n	80020de <minver+0x226>
 80020ea:	45f0      	cmp	r8, lr
 80020ec:	d1e5      	bne.n	80020ba <minver+0x202>
 80020ee:	eb0c 0106 	add.w	r1, ip, r6
 80020f2:	464a      	mov	r2, r9
 80020f4:	f10e 0e01 	add.w	lr, lr, #1
 80020f8:	4586      	cmp	lr, r0
 80020fa:	d1d8      	bne.n	80020ae <minver+0x1f6>
 80020fc:	f640 3030 	movw	r0, #2864	; 0xb30
 8002100:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002104:	b081      	sub	sp, #4
 8002106:	f84d 1e00 	strt	r1, [sp]
 800210a:	ee10 1a90 	vmov	r1, s1
 800210e:	f840 1e00 	strt	r1, [r0]
 8002112:	bc02      	pop	{r1}
 8002114:	f640 2004 	movw	r0, #2564	; 0xa04
 8002118:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800211c:	6001      	str	r1, [r0, #0]
 800211e:	6002      	str	r2, [r0, #0]
 8002120:	2200      	movs	r2, #0
 8002122:	e00c      	b.n	800213e <minver+0x286>
 8002124:	f640 3030 	movw	r0, #2864	; 0xb30
 8002128:	2201      	movs	r2, #1
 800212a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800212e:	b081      	sub	sp, #4
 8002130:	f84d 1e00 	strt	r1, [sp]
 8002134:	ee10 1a90 	vmov	r1, s1
 8002138:	f840 1e00 	strt	r1, [r0]
 800213c:	bc02      	pop	{r1}
 800213e:	4610      	mov	r0, r2
 8002140:	f50d 6dfc 	add.w	sp, sp, #2016	; 0x7e0
 8002144:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002148:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800214a:	bf00      	nop
 800214c:	00000000 	.word	0x00000000

08002150 <verify_benchmark>:
 8002150:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002154:	4770      	bx	lr

08002156 <initialise_benchmark>:
 8002156:	4770      	bx	lr

08002158 <benchmark>:
 8002158:	b5d0      	push	{r4, r6, r7, lr}
 800215a:	af02      	add	r7, sp, #8
 800215c:	f240 0414 	movw	r4, #20
 8002160:	f640 3358 	movw	r3, #2904	; 0xb58
 8002164:	ed9f 0a75 	vldr	s0, [pc, #468]	; 800233c <benchmark+0x1e4>
 8002168:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800216c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002170:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
 8002174:	f103 0c0c 	add.w	ip, r3, #12
 8002178:	e883 0007 	stmia.w	r3, {r0, r1, r2}
 800217c:	f104 020c 	add.w	r2, r4, #12
 8002180:	3318      	adds	r3, #24
 8002182:	ca07      	ldmia	r2, {r0, r1, r2}
 8002184:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
 8002188:	f104 0218 	add.w	r2, r4, #24
 800218c:	ca07      	ldmia	r2, {r0, r1, r2}
 800218e:	c307      	stmia	r3!, {r0, r1, r2}
 8002190:	2003      	movs	r0, #3
 8002192:	2103      	movs	r1, #3
 8002194:	f7ff fe90 	bl	8001eb8 <minver>
 8002198:	e894 0007 	ldmia.w	r4, {r0, r1, r2}
 800219c:	f640 3334 	movw	r3, #2868	; 0xb34
 80021a0:	ed9f 0a67 	vldr	s0, [pc, #412]	; 8002340 <benchmark+0x1e8>
 80021a4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80021a8:	f103 0c0c 	add.w	ip, r3, #12
 80021ac:	e883 0007 	stmia.w	r3, {r0, r1, r2}
 80021b0:	f104 020c 	add.w	r2, r4, #12
 80021b4:	3318      	adds	r3, #24
 80021b6:	eef0 1a40 	vmov.f32	s3, s0
 80021ba:	eef0 2a40 	vmov.f32	s5, s0
 80021be:	eef0 6a40 	vmov.f32	s13, s0
 80021c2:	eef0 7a40 	vmov.f32	s15, s0
 80021c6:	ca07      	ldmia	r2, {r0, r1, r2}
 80021c8:	e88c 0007 	stmia.w	ip, {r0, r1, r2}
 80021cc:	f104 0218 	add.w	r2, r4, #24
 80021d0:	ca07      	ldmia	r2, {r0, r1, r2}
 80021d2:	c307      	stmia	r3!, {r0, r1, r2}
 80021d4:	f640 300c 	movw	r0, #2828	; 0xb0c
 80021d8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021dc:	ed94 5a00 	vldr	s10, [r4]
 80021e0:	ed94 6a01 	vldr	s12, [r4, #4]
 80021e4:	ed94 7a02 	vldr	s14, [r4, #8]
 80021e8:	ed90 2a00 	vldr	s4, [r0]
 80021ec:	ed90 3a01 	vldr	s6, [r0, #4]
 80021f0:	ed90 1a02 	vldr	s2, [r0, #8]
 80021f4:	ed90 4a03 	vldr	s8, [r0, #12]
 80021f8:	edd0 0a04 	vldr	s1, [r0, #16]
 80021fc:	edd0 4a05 	vldr	s9, [r0, #20]
 8002200:	edd0 3a06 	vldr	s7, [r0, #24]
 8002204:	edd0 5a07 	vldr	s11, [r0, #28]
 8002208:	ee45 1a02 	vmla.f32	s3, s10, s4
 800220c:	ee45 2a03 	vmla.f32	s5, s10, s6
 8002210:	ee45 6a01 	vmla.f32	s13, s10, s2
 8002214:	ed90 5a08 	vldr	s10, [r0, #32]
 8002218:	f640 307c 	movw	r0, #2940	; 0xb7c
 800221c:	ee46 1a04 	vmla.f32	s3, s12, s8
 8002220:	ee46 2a20 	vmla.f32	s5, s12, s1
 8002224:	ee46 6a24 	vmla.f32	s13, s12, s9
 8002228:	ed94 6a03 	vldr	s12, [r4, #12]
 800222c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002230:	ee47 1a23 	vmla.f32	s3, s14, s7
 8002234:	ee47 2a25 	vmla.f32	s5, s14, s11
 8002238:	b081      	sub	sp, #4
 800223a:	f84d 1e00 	strt	r1, [sp]
 800223e:	ee10 1a90 	vmov	r1, s1
 8002242:	f840 1e00 	strt	r1, [r0]
 8002246:	bc02      	pop	{r1}
 8002248:	edd4 1a05 	vldr	s3, [r4, #20]
 800224c:	b081      	sub	sp, #4
 800224e:	f84d 1e00 	strt	r1, [sp]
 8002252:	ee10 1a90 	vmov	r1, s1
 8002256:	f840 1e04 	strt	r1, [r0, #4]
 800225a:	bc02      	pop	{r1}
 800225c:	eef0 2a40 	vmov.f32	s5, s0
 8002260:	ee47 6a05 	vmla.f32	s13, s14, s10
 8002264:	ed94 7a04 	vldr	s14, [r4, #16]
 8002268:	b081      	sub	sp, #4
 800226a:	f84d 1e00 	strt	r1, [sp]
 800226e:	ee10 1a90 	vmov	r1, s1
 8002272:	f840 1e08 	strt	r1, [r0, #8]
 8002276:	bc02      	pop	{r1}
 8002278:	eef0 6a40 	vmov.f32	s13, s0
 800227c:	ee46 2a02 	vmla.f32	s5, s12, s4
 8002280:	ee46 7a01 	vmla.f32	s15, s12, s2
 8002284:	ee46 6a03 	vmla.f32	s13, s12, s6
 8002288:	ed94 6a06 	vldr	s12, [r4, #24]
 800228c:	ee47 2a04 	vmla.f32	s5, s14, s8
 8002290:	ee47 6a20 	vmla.f32	s13, s14, s1
 8002294:	ee47 7a24 	vmla.f32	s15, s14, s9
 8002298:	ed94 7a07 	vldr	s14, [r4, #28]
 800229c:	ee41 2aa3 	vmla.f32	s5, s3, s7
 80022a0:	ee41 6aa5 	vmla.f32	s13, s3, s11
 80022a4:	ee41 7a85 	vmla.f32	s15, s3, s10
 80022a8:	edd4 1a08 	vldr	s3, [r4, #32]
 80022ac:	b081      	sub	sp, #4
 80022ae:	f84d 1e00 	strt	r1, [sp]
 80022b2:	ee10 1a90 	vmov	r1, s1
 80022b6:	f840 1e0c 	strt	r1, [r0, #12]
 80022ba:	bc02      	pop	{r1}
 80022bc:	eef0 2a40 	vmov.f32	s5, s0
 80022c0:	b081      	sub	sp, #4
 80022c2:	f84d 1e00 	strt	r1, [sp]
 80022c6:	ee10 1a90 	vmov	r1, s1
 80022ca:	f840 1e10 	strt	r1, [r0, #16]
 80022ce:	bc02      	pop	{r1}
 80022d0:	b081      	sub	sp, #4
 80022d2:	f84d 1e00 	strt	r1, [sp]
 80022d6:	ee10 1a90 	vmov	r1, s1
 80022da:	f840 1e14 	strt	r1, [r0, #20]
 80022de:	bc02      	pop	{r1}
 80022e0:	ee46 2a02 	vmla.f32	s5, s12, s4
 80022e4:	eeb0 2a40 	vmov.f32	s4, s0
 80022e8:	ee06 0a01 	vmla.f32	s0, s12, s2
 80022ec:	ee06 2a03 	vmla.f32	s4, s12, s6
 80022f0:	ee47 2a04 	vmla.f32	s5, s14, s8
 80022f4:	ee07 0a24 	vmla.f32	s0, s14, s9
 80022f8:	ee07 2a20 	vmla.f32	s4, s14, s1
 80022fc:	ee41 2aa3 	vmla.f32	s5, s3, s7
 8002300:	ee01 0a85 	vmla.f32	s0, s3, s10
 8002304:	ee01 2aa5 	vmla.f32	s4, s3, s11
 8002308:	b081      	sub	sp, #4
 800230a:	f84d 1e00 	strt	r1, [sp]
 800230e:	ee10 1a90 	vmov	r1, s1
 8002312:	f840 1e18 	strt	r1, [r0, #24]
 8002316:	bc02      	pop	{r1}
 8002318:	b081      	sub	sp, #4
 800231a:	f84d 1e00 	strt	r1, [sp]
 800231e:	ee10 1a90 	vmov	r1, s1
 8002322:	f840 1e1c 	strt	r1, [r0, #28]
 8002326:	bc02      	pop	{r1}
 8002328:	b081      	sub	sp, #4
 800232a:	f84d 1e00 	strt	r1, [sp]
 800232e:	ee10 1a90 	vmov	r1, s1
 8002332:	f840 1e20 	strt	r1, [r0, #32]
 8002336:	bc02      	pop	{r1}
 8002338:	2000      	movs	r0, #0
 800233a:	bdd0      	pop	{r4, r6, r7, pc}
 800233c:	358637bd 	.word	0x358637bd
 8002340:	00000000 	.word	0x00000000

08002344 <__io_putchar>:
 8002344:	b580      	push	{r7, lr}
 8002346:	466f      	mov	r7, sp
 8002348:	b082      	sub	sp, #8
 800234a:	9001      	str	r0, [sp, #4]
 800234c:	f640 2008 	movw	r0, #2568	; 0xa08
 8002350:	a901      	add	r1, sp, #4
 8002352:	2201      	movs	r2, #1
 8002354:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002358:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800235c:	f7ff fcbd 	bl	8001cda <HAL_UART_Transmit>
 8002360:	9801      	ldr	r0, [sp, #4]
 8002362:	b002      	add	sp, #8
 8002364:	bd80      	pop	{r7, pc}

08002366 <main>:
 8002366:	b5b0      	push	{r4, r5, r7, lr}
 8002368:	af02      	add	r7, sp, #8
 800236a:	f640 2108 	movw	r1, #2568	; 0xa08
 800236e:	f643 0000 	movw	r0, #14336	; 0x3800
 8002372:	220c      	movs	r2, #12
 8002374:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002378:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800237c:	6008      	str	r0, [r1, #0]
 800237e:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002382:	6048      	str	r0, [r1, #4]
 8002384:	2000      	movs	r0, #0
 8002386:	e9c1 0002 	strd	r0, r0, [r1, #8]
 800238a:	6108      	str	r0, [r1, #16]
 800238c:	6248      	str	r0, [r1, #36]	; 0x24
 800238e:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002392:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002396:	2000      	movs	r0, #0
 8002398:	f7ff fd34 	bl	8001e04 <BSP_COM_Init>
 800239c:	f7ff fedb 	bl	8002156 <initialise_benchmark>
 80023a0:	f247 30f0 	movw	r0, #29680	; 0x73f0
 80023a4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023a8:	f000 f9a4 	bl	80026f4 <puts>
 80023ac:	f7fe fe9c 	bl	80010e8 <HAL_Init>
 80023b0:	f7fe feb2 	bl	8001118 <HAL_GetTick>
 80023b4:	4604      	mov	r4, r0
 80023b6:	f7ff fecf 	bl	8002158 <benchmark>
 80023ba:	4605      	mov	r5, r0
 80023bc:	f7fe feac 	bl	8001118 <HAL_GetTick>
 80023c0:	1b04      	subs	r4, r0, r4
 80023c2:	4628      	mov	r0, r5
 80023c4:	f7ff fec4 	bl	8002150 <verify_benchmark>
 80023c8:	1c41      	adds	r1, r0, #1
 80023ca:	d006      	beq.n	80023da <main+0x74>
 80023cc:	2801      	cmp	r0, #1
 80023ce:	d109      	bne.n	80023e4 <main+0x7e>
 80023d0:	f247 3058 	movw	r0, #29528	; 0x7358
 80023d4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023d8:	e008      	b.n	80023ec <main+0x86>
 80023da:	f247 307c 	movw	r0, #29564	; 0x737c
 80023de:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023e2:	e003      	b.n	80023ec <main+0x86>
 80023e4:	f247 30b1 	movw	r0, #29617	; 0x73b1
 80023e8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80023ec:	4621      	mov	r1, r4
 80023ee:	f000 f91f 	bl	8002630 <printf>
 80023f2:	2000      	movs	r0, #0
 80023f4:	bdb0      	pop	{r4, r5, r7, pc}

080023f6 <SysTick_Handler>:
 80023f6:	b580      	push	{r7, lr}
 80023f8:	466f      	mov	r7, sp
 80023fa:	f7fe fe85 	bl	8001108 <HAL_IncTick>
 80023fe:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002402:	f7fe bedf 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08002406 <_read>:
 8002406:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002408:	af03      	add	r7, sp, #12
 800240a:	f84d bd04 	str.w	fp, [sp, #-4]!
 800240e:	4614      	mov	r4, r2
 8002410:	460d      	mov	r5, r1
 8002412:	2c01      	cmp	r4, #1
 8002414:	db06      	blt.n	8002424 <_read+0x1e>
 8002416:	4626      	mov	r6, r4
 8002418:	f3af 8000 	nop.w
 800241c:	f805 0b01 	strb.w	r0, [r5], #1
 8002420:	3e01      	subs	r6, #1
 8002422:	d1f9      	bne.n	8002418 <_read+0x12>
 8002424:	4620      	mov	r0, r4
 8002426:	f85d bb04 	ldr.w	fp, [sp], #4
 800242a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800242c <_write>:
 800242c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800242e:	af03      	add	r7, sp, #12
 8002430:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002434:	4614      	mov	r4, r2
 8002436:	460d      	mov	r5, r1
 8002438:	2c01      	cmp	r4, #1
 800243a:	db06      	blt.n	800244a <_write+0x1e>
 800243c:	4626      	mov	r6, r4
 800243e:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002442:	f7ff ff7f 	bl	8002344 <__io_putchar>
 8002446:	3e01      	subs	r6, #1
 8002448:	d1f9      	bne.n	800243e <_write+0x12>
 800244a:	4620      	mov	r0, r4
 800244c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002450:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002452 <_sbrk>:
 8002452:	f640 228c 	movw	r2, #2700	; 0xa8c
 8002456:	4601      	mov	r1, r0
 8002458:	466b      	mov	r3, sp
 800245a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800245e:	6810      	ldr	r0, [r2, #0]
 8002460:	2800      	cmp	r0, #0
 8002462:	bf02      	ittt	eq
 8002464:	f640 30f0 	movweq	r0, #3056	; 0xbf0
 8002468:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800246c:	6010      	streq	r0, [r2, #0]
 800246e:	4401      	add	r1, r0
 8002470:	4299      	cmp	r1, r3
 8002472:	bf9c      	itt	ls
 8002474:	6011      	strls	r1, [r2, #0]
 8002476:	4770      	bxls	lr
 8002478:	b580      	push	{r7, lr}
 800247a:	466f      	mov	r7, sp
 800247c:	f000 f864 	bl	8002548 <__errno>
 8002480:	210c      	movs	r1, #12
 8002482:	6001      	str	r1, [r0, #0]
 8002484:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002488:	bd80      	pop	{r7, pc}

0800248a <_close>:
 800248a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800248e:	4770      	bx	lr

08002490 <_fstat>:
 8002490:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002494:	6048      	str	r0, [r1, #4]
 8002496:	2000      	movs	r0, #0
 8002498:	4770      	bx	lr

0800249a <_isatty>:
 800249a:	2001      	movs	r0, #1
 800249c:	4770      	bx	lr

0800249e <_lseek>:
 800249e:	2000      	movs	r0, #0
 80024a0:	4770      	bx	lr

080024a2 <SystemInit>:
 80024a2:	f64e 5088 	movw	r0, #60808	; 0xed88
 80024a6:	f04f 0c00 	mov.w	ip, #0
 80024aa:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80024ae:	6801      	ldr	r1, [r0, #0]
 80024b0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80024b4:	6001      	str	r1, [r0, #0]
 80024b6:	f241 0100 	movw	r1, #4096	; 0x1000
 80024ba:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80024be:	680a      	ldr	r2, [r1, #0]
 80024c0:	f042 0201 	orr.w	r2, r2, #1
 80024c4:	600a      	str	r2, [r1, #0]
 80024c6:	f8c1 c008 	str.w	ip, [r1, #8]
 80024ca:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80024ce:	680b      	ldr	r3, [r1, #0]
 80024d0:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80024d4:	401a      	ands	r2, r3
 80024d6:	600a      	str	r2, [r1, #0]
 80024d8:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80024dc:	60ca      	str	r2, [r1, #12]
 80024de:	680a      	ldr	r2, [r1, #0]
 80024e0:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80024e4:	600a      	str	r2, [r1, #0]
 80024e6:	f8c1 c018 	str.w	ip, [r1, #24]
 80024ea:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80024ee:	f840 1c80 	str.w	r1, [r0, #-128]
 80024f2:	4770      	bx	lr

080024f4 <Reset_Handler>:
 80024f4:	f8df d034 	ldr.w	sp, [pc, #52]	; 800252c <LoopForever+0x2>
 80024f8:	2100      	movs	r1, #0
 80024fa:	e003      	b.n	8002504 <LoopCopyDataInit>

080024fc <CopyDataInit>:
 80024fc:	4b0c      	ldr	r3, [pc, #48]	; (8002530 <LoopForever+0x6>)
 80024fe:	585b      	ldr	r3, [r3, r1]
 8002500:	5043      	str	r3, [r0, r1]
 8002502:	3104      	adds	r1, #4

08002504 <LoopCopyDataInit>:
 8002504:	480b      	ldr	r0, [pc, #44]	; (8002534 <LoopForever+0xa>)
 8002506:	4b0c      	ldr	r3, [pc, #48]	; (8002538 <LoopForever+0xe>)
 8002508:	1842      	adds	r2, r0, r1
 800250a:	429a      	cmp	r2, r3
 800250c:	d3f6      	bcc.n	80024fc <CopyDataInit>
 800250e:	4a0b      	ldr	r2, [pc, #44]	; (800253c <LoopForever+0x12>)
 8002510:	e002      	b.n	8002518 <LoopFillZerobss>

08002512 <FillZerobss>:
 8002512:	2300      	movs	r3, #0
 8002514:	f842 3b04 	str.w	r3, [r2], #4

08002518 <LoopFillZerobss>:
 8002518:	4b09      	ldr	r3, [pc, #36]	; (8002540 <LoopForever+0x16>)
 800251a:	429a      	cmp	r2, r3
 800251c:	d3f9      	bcc.n	8002512 <FillZerobss>
 800251e:	f7ff ffc0 	bl	80024a2 <SystemInit>
 8002522:	f000 f817 	bl	8002554 <__libc_init_array>
 8002526:	f7ff ff1e 	bl	8002366 <main>

0800252a <LoopForever>:
 800252a:	e7fe      	b.n	800252a <LoopForever>
 800252c:	20018000 	.word	0x20018000
 8002530:	080076b8 	.word	0x080076b8
 8002534:	20000000 	.word	0x20000000
 8002538:	200009e8 	.word	0x200009e8
 800253c:	200009e8 	.word	0x200009e8
 8002540:	20000bec 	.word	0x20000bec

08002544 <ADC1_2_IRQHandler>:
 8002544:	e7fe      	b.n	8002544 <ADC1_2_IRQHandler>
	...

08002548 <__errno>:
 8002548:	4b01      	ldr	r3, [pc, #4]	; (8002550 <__errno+0x8>)
 800254a:	6818      	ldr	r0, [r3, #0]
 800254c:	4770      	bx	lr
 800254e:	bf00      	nop
 8002550:	2000003c 	.word	0x2000003c

08002554 <__libc_init_array>:
 8002554:	b570      	push	{r4, r5, r6, lr}
 8002556:	4e0d      	ldr	r6, [pc, #52]	; (800258c <__libc_init_array+0x38>)
 8002558:	4d0d      	ldr	r5, [pc, #52]	; (8002590 <__libc_init_array+0x3c>)
 800255a:	1b76      	subs	r6, r6, r5
 800255c:	10b6      	asrs	r6, r6, #2
 800255e:	d006      	beq.n	800256e <__libc_init_array+0x1a>
 8002560:	2400      	movs	r4, #0
 8002562:	3401      	adds	r4, #1
 8002564:	f855 3b04 	ldr.w	r3, [r5], #4
 8002568:	4798      	blx	r3
 800256a:	42a6      	cmp	r6, r4
 800256c:	d1f9      	bne.n	8002562 <__libc_init_array+0xe>
 800256e:	4e09      	ldr	r6, [pc, #36]	; (8002594 <__libc_init_array+0x40>)
 8002570:	4d09      	ldr	r5, [pc, #36]	; (8002598 <__libc_init_array+0x44>)
 8002572:	1b76      	subs	r6, r6, r5
 8002574:	f004 feaa 	bl	80072cc <_init>
 8002578:	10b6      	asrs	r6, r6, #2
 800257a:	d006      	beq.n	800258a <__libc_init_array+0x36>
 800257c:	2400      	movs	r4, #0
 800257e:	3401      	adds	r4, #1
 8002580:	f855 3b04 	ldr.w	r3, [r5], #4
 8002584:	4798      	blx	r3
 8002586:	42a6      	cmp	r6, r4
 8002588:	d1f9      	bne.n	800257e <__libc_init_array+0x2a>
 800258a:	bd70      	pop	{r4, r5, r6, pc}
 800258c:	080076a8 	.word	0x080076a8
 8002590:	080076a8 	.word	0x080076a8
 8002594:	080076b0 	.word	0x080076b0
 8002598:	080076a8 	.word	0x080076a8

0800259c <memset>:
 800259c:	b4f0      	push	{r4, r5, r6, r7}
 800259e:	0786      	lsls	r6, r0, #30
 80025a0:	d043      	beq.n	800262a <memset+0x8e>
 80025a2:	1e54      	subs	r4, r2, #1
 80025a4:	2a00      	cmp	r2, #0
 80025a6:	d03e      	beq.n	8002626 <memset+0x8a>
 80025a8:	b2ca      	uxtb	r2, r1
 80025aa:	4603      	mov	r3, r0
 80025ac:	e002      	b.n	80025b4 <memset+0x18>
 80025ae:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80025b2:	d338      	bcc.n	8002626 <memset+0x8a>
 80025b4:	f803 2b01 	strb.w	r2, [r3], #1
 80025b8:	079d      	lsls	r5, r3, #30
 80025ba:	d1f8      	bne.n	80025ae <memset+0x12>
 80025bc:	2c03      	cmp	r4, #3
 80025be:	d92b      	bls.n	8002618 <memset+0x7c>
 80025c0:	b2cd      	uxtb	r5, r1
 80025c2:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80025c6:	2c0f      	cmp	r4, #15
 80025c8:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80025cc:	d916      	bls.n	80025fc <memset+0x60>
 80025ce:	f1a4 0710 	sub.w	r7, r4, #16
 80025d2:	093f      	lsrs	r7, r7, #4
 80025d4:	f103 0620 	add.w	r6, r3, #32
 80025d8:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80025dc:	f103 0210 	add.w	r2, r3, #16
 80025e0:	e942 5504 	strd	r5, r5, [r2, #-16]
 80025e4:	e942 5502 	strd	r5, r5, [r2, #-8]
 80025e8:	3210      	adds	r2, #16
 80025ea:	42b2      	cmp	r2, r6
 80025ec:	d1f8      	bne.n	80025e0 <memset+0x44>
 80025ee:	f004 040f 	and.w	r4, r4, #15
 80025f2:	3701      	adds	r7, #1
 80025f4:	2c03      	cmp	r4, #3
 80025f6:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80025fa:	d90d      	bls.n	8002618 <memset+0x7c>
 80025fc:	461e      	mov	r6, r3
 80025fe:	4622      	mov	r2, r4
 8002600:	3a04      	subs	r2, #4
 8002602:	2a03      	cmp	r2, #3
 8002604:	f846 5b04 	str.w	r5, [r6], #4
 8002608:	d8fa      	bhi.n	8002600 <memset+0x64>
 800260a:	1f22      	subs	r2, r4, #4
 800260c:	f022 0203 	bic.w	r2, r2, #3
 8002610:	3204      	adds	r2, #4
 8002612:	4413      	add	r3, r2
 8002614:	f004 0403 	and.w	r4, r4, #3
 8002618:	b12c      	cbz	r4, 8002626 <memset+0x8a>
 800261a:	b2c9      	uxtb	r1, r1
 800261c:	441c      	add	r4, r3
 800261e:	f803 1b01 	strb.w	r1, [r3], #1
 8002622:	429c      	cmp	r4, r3
 8002624:	d1fb      	bne.n	800261e <memset+0x82>
 8002626:	bcf0      	pop	{r4, r5, r6, r7}
 8002628:	4770      	bx	lr
 800262a:	4614      	mov	r4, r2
 800262c:	4603      	mov	r3, r0
 800262e:	e7c5      	b.n	80025bc <memset+0x20>

08002630 <printf>:
 8002630:	b40f      	push	{r0, r1, r2, r3}
 8002632:	b500      	push	{lr}
 8002634:	4907      	ldr	r1, [pc, #28]	; (8002654 <printf+0x24>)
 8002636:	b083      	sub	sp, #12
 8002638:	ab04      	add	r3, sp, #16
 800263a:	6808      	ldr	r0, [r1, #0]
 800263c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002640:	6881      	ldr	r1, [r0, #8]
 8002642:	9301      	str	r3, [sp, #4]
 8002644:	f000 f860 	bl	8002708 <_vfprintf_r>
 8002648:	b003      	add	sp, #12
 800264a:	f85d eb04 	ldr.w	lr, [sp], #4
 800264e:	b004      	add	sp, #16
 8002650:	4770      	bx	lr
 8002652:	bf00      	nop
 8002654:	2000003c 	.word	0x2000003c

08002658 <_puts_r>:
 8002658:	b570      	push	{r4, r5, r6, lr}
 800265a:	4605      	mov	r5, r0
 800265c:	b088      	sub	sp, #32
 800265e:	4608      	mov	r0, r1
 8002660:	460c      	mov	r4, r1
 8002662:	f7fd ffed 	bl	8000640 <strlen>
 8002666:	4a22      	ldr	r2, [pc, #136]	; (80026f0 <_puts_r+0x98>)
 8002668:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800266a:	9404      	str	r4, [sp, #16]
 800266c:	2601      	movs	r6, #1
 800266e:	1c44      	adds	r4, r0, #1
 8002670:	a904      	add	r1, sp, #16
 8002672:	9206      	str	r2, [sp, #24]
 8002674:	2202      	movs	r2, #2
 8002676:	9403      	str	r4, [sp, #12]
 8002678:	9005      	str	r0, [sp, #20]
 800267a:	68ac      	ldr	r4, [r5, #8]
 800267c:	9607      	str	r6, [sp, #28]
 800267e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002682:	b31b      	cbz	r3, 80026cc <_puts_r+0x74>
 8002684:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002686:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800268a:	07ce      	lsls	r6, r1, #31
 800268c:	b29a      	uxth	r2, r3
 800268e:	d401      	bmi.n	8002694 <_puts_r+0x3c>
 8002690:	0590      	lsls	r0, r2, #22
 8002692:	d525      	bpl.n	80026e0 <_puts_r+0x88>
 8002694:	0491      	lsls	r1, r2, #18
 8002696:	d406      	bmi.n	80026a6 <_puts_r+0x4e>
 8002698:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800269a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800269e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80026a2:	81a3      	strh	r3, [r4, #12]
 80026a4:	6662      	str	r2, [r4, #100]	; 0x64
 80026a6:	4628      	mov	r0, r5
 80026a8:	aa01      	add	r2, sp, #4
 80026aa:	4621      	mov	r1, r4
 80026ac:	f003 f860 	bl	8005770 <__sfvwrite_r>
 80026b0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80026b2:	2800      	cmp	r0, #0
 80026b4:	bf0c      	ite	eq
 80026b6:	250a      	moveq	r5, #10
 80026b8:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80026bc:	07da      	lsls	r2, r3, #31
 80026be:	d402      	bmi.n	80026c6 <_puts_r+0x6e>
 80026c0:	89a3      	ldrh	r3, [r4, #12]
 80026c2:	059b      	lsls	r3, r3, #22
 80026c4:	d506      	bpl.n	80026d4 <_puts_r+0x7c>
 80026c6:	4628      	mov	r0, r5
 80026c8:	b008      	add	sp, #32
 80026ca:	bd70      	pop	{r4, r5, r6, pc}
 80026cc:	4628      	mov	r0, r5
 80026ce:	f002 feb9 	bl	8005444 <__sinit>
 80026d2:	e7d7      	b.n	8002684 <_puts_r+0x2c>
 80026d4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80026d6:	f003 fa07 	bl	8005ae8 <__retarget_lock_release_recursive>
 80026da:	4628      	mov	r0, r5
 80026dc:	b008      	add	sp, #32
 80026de:	bd70      	pop	{r4, r5, r6, pc}
 80026e0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80026e2:	f003 f9ff 	bl	8005ae4 <__retarget_lock_acquire_recursive>
 80026e6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80026ea:	b29a      	uxth	r2, r3
 80026ec:	e7d2      	b.n	8002694 <_puts_r+0x3c>
 80026ee:	bf00      	nop
 80026f0:	08007414 	.word	0x08007414

080026f4 <puts>:
 80026f4:	4b02      	ldr	r3, [pc, #8]	; (8002700 <puts+0xc>)
 80026f6:	4601      	mov	r1, r0
 80026f8:	6818      	ldr	r0, [r3, #0]
 80026fa:	f7ff bfad 	b.w	8002658 <_puts_r>
 80026fe:	bf00      	nop
 8002700:	2000003c 	.word	0x2000003c
 8002704:	00000000 	.word	0x00000000

08002708 <_vfprintf_r>:
 8002708:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800270c:	b0d7      	sub	sp, #348	; 0x15c
 800270e:	461c      	mov	r4, r3
 8002710:	4689      	mov	r9, r1
 8002712:	4617      	mov	r7, r2
 8002714:	4605      	mov	r5, r0
 8002716:	9003      	str	r0, [sp, #12]
 8002718:	f003 f9d2 	bl	8005ac0 <_localeconv_r>
 800271c:	6803      	ldr	r3, [r0, #0]
 800271e:	9316      	str	r3, [sp, #88]	; 0x58
 8002720:	4618      	mov	r0, r3
 8002722:	f7fd ff8d 	bl	8000640 <strlen>
 8002726:	9408      	str	r4, [sp, #32]
 8002728:	9015      	str	r0, [sp, #84]	; 0x54
 800272a:	b11d      	cbz	r5, 8002734 <_vfprintf_r+0x2c>
 800272c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800272e:	2b00      	cmp	r3, #0
 8002730:	f000 8107 	beq.w	8002942 <_vfprintf_r+0x23a>
 8002734:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002738:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800273c:	07c8      	lsls	r0, r1, #31
 800273e:	b293      	uxth	r3, r2
 8002740:	d402      	bmi.n	8002748 <_vfprintf_r+0x40>
 8002742:	0599      	lsls	r1, r3, #22
 8002744:	f140 811f 	bpl.w	8002986 <_vfprintf_r+0x27e>
 8002748:	049e      	lsls	r6, r3, #18
 800274a:	d40a      	bmi.n	8002762 <_vfprintf_r+0x5a>
 800274c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002750:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002754:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002758:	f8a9 300c 	strh.w	r3, [r9, #12]
 800275c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002760:	b29b      	uxth	r3, r3
 8002762:	071d      	lsls	r5, r3, #28
 8002764:	f140 80b2 	bpl.w	80028cc <_vfprintf_r+0x1c4>
 8002768:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800276c:	2a00      	cmp	r2, #0
 800276e:	f000 80ad 	beq.w	80028cc <_vfprintf_r+0x1c4>
 8002772:	f003 021a 	and.w	r2, r3, #26
 8002776:	2a0a      	cmp	r2, #10
 8002778:	f000 80c9 	beq.w	800290e <_vfprintf_r+0x206>
 800277c:	2300      	movs	r3, #0
 800277e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002998 <_vfprintf_r+0x290>
 8002782:	9310      	str	r3, [sp, #64]	; 0x40
 8002784:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002788:	9317      	str	r3, [sp, #92]	; 0x5c
 800278a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800278e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002790:	9318      	str	r3, [sp, #96]	; 0x60
 8002792:	9305      	str	r3, [sp, #20]
 8002794:	ab2d      	add	r3, sp, #180	; 0xb4
 8002796:	932a      	str	r3, [sp, #168]	; 0xa8
 8002798:	469b      	mov	fp, r3
 800279a:	783b      	ldrb	r3, [r7, #0]
 800279c:	f8cd 901c 	str.w	r9, [sp, #28]
 80027a0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80027a4:	2b00      	cmp	r3, #0
 80027a6:	f000 8259 	beq.w	8002c5c <_vfprintf_r+0x554>
 80027aa:	2b25      	cmp	r3, #37	; 0x25
 80027ac:	463c      	mov	r4, r7
 80027ae:	d102      	bne.n	80027b6 <_vfprintf_r+0xae>
 80027b0:	e01d      	b.n	80027ee <_vfprintf_r+0xe6>
 80027b2:	2b25      	cmp	r3, #37	; 0x25
 80027b4:	d003      	beq.n	80027be <_vfprintf_r+0xb6>
 80027b6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80027ba:	2b00      	cmp	r3, #0
 80027bc:	d1f9      	bne.n	80027b2 <_vfprintf_r+0xaa>
 80027be:	1be5      	subs	r5, r4, r7
 80027c0:	b18d      	cbz	r5, 80027e6 <_vfprintf_r+0xde>
 80027c2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80027c6:	3301      	adds	r3, #1
 80027c8:	442a      	add	r2, r5
 80027ca:	2b07      	cmp	r3, #7
 80027cc:	f8cb 7000 	str.w	r7, [fp]
 80027d0:	f8cb 5004 	str.w	r5, [fp, #4]
 80027d4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80027d8:	f300 80ca 	bgt.w	8002970 <_vfprintf_r+0x268>
 80027dc:	f10b 0b08 	add.w	fp, fp, #8
 80027e0:	9b05      	ldr	r3, [sp, #20]
 80027e2:	442b      	add	r3, r5
 80027e4:	9305      	str	r3, [sp, #20]
 80027e6:	7823      	ldrb	r3, [r4, #0]
 80027e8:	2b00      	cmp	r3, #0
 80027ea:	f000 8237 	beq.w	8002c5c <_vfprintf_r+0x554>
 80027ee:	2300      	movs	r3, #0
 80027f0:	7866      	ldrb	r6, [r4, #1]
 80027f2:	9306      	str	r3, [sp, #24]
 80027f4:	4698      	mov	r8, r3
 80027f6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80027fa:	f104 0a01 	add.w	sl, r4, #1
 80027fe:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002802:	252b      	movs	r5, #43	; 0x2b
 8002804:	f10a 0a01 	add.w	sl, sl, #1
 8002808:	f1a6 0320 	sub.w	r3, r6, #32
 800280c:	2b5a      	cmp	r3, #90	; 0x5a
 800280e:	f200 842a 	bhi.w	8003066 <_vfprintf_r+0x95e>
 8002812:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002816:	03aa      	.short	0x03aa
 8002818:	04280428 	.word	0x04280428
 800281c:	0428029c 	.word	0x0428029c
 8002820:	04280428 	.word	0x04280428
 8002824:	042802a7 	.word	0x042802a7
 8002828:	02c60428 	.word	0x02c60428
 800282c:	042802d2 	.word	0x042802d2
 8002830:	02dc02d7 	.word	0x02dc02d7
 8002834:	02f60428 	.word	0x02f60428
 8002838:	026d026d 	.word	0x026d026d
 800283c:	026d026d 	.word	0x026d026d
 8002840:	026d026d 	.word	0x026d026d
 8002844:	026d026d 	.word	0x026d026d
 8002848:	0428026d 	.word	0x0428026d
 800284c:	04280428 	.word	0x04280428
 8002850:	04280428 	.word	0x04280428
 8002854:	04280428 	.word	0x04280428
 8002858:	042802fb 	.word	0x042802fb
 800285c:	03f3033c 	.word	0x03f3033c
 8002860:	02fb02fb 	.word	0x02fb02fb
 8002864:	042802fb 	.word	0x042802fb
 8002868:	04280428 	.word	0x04280428
 800286c:	03ee0428 	.word	0x03ee0428
 8002870:	04280428 	.word	0x04280428
 8002874:	0428009a 	.word	0x0428009a
 8002878:	04280428 	.word	0x04280428
 800287c:	04280350 	.word	0x04280350
 8002880:	04280379 	.word	0x04280379
 8002884:	03900428 	.word	0x03900428
 8002888:	04280428 	.word	0x04280428
 800288c:	04280428 	.word	0x04280428
 8002890:	04280428 	.word	0x04280428
 8002894:	04280428 	.word	0x04280428
 8002898:	042802fb 	.word	0x042802fb
 800289c:	00c5033c 	.word	0x00c5033c
 80028a0:	02fb02fb 	.word	0x02fb02fb
 80028a4:	03d102fb 	.word	0x03d102fb
 80028a8:	007000c5 	.word	0x007000c5
 80028ac:	03b50428 	.word	0x03b50428
 80028b0:	03c20428 	.word	0x03c20428
 80028b4:	03de009c 	.word	0x03de009c
 80028b8:	04280070 	.word	0x04280070
 80028bc:	00720350 	.word	0x00720350
 80028c0:	0428022c 	.word	0x0428022c
 80028c4:	027c0428 	.word	0x027c0428
 80028c8:	00720428 	.word	0x00720428
 80028cc:	4649      	mov	r1, r9
 80028ce:	9803      	ldr	r0, [sp, #12]
 80028d0:	f001 fc9a 	bl	8004208 <__swsetup_r>
 80028d4:	b1a0      	cbz	r0, 8002900 <_vfprintf_r+0x1f8>
 80028d6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80028da:	07d8      	lsls	r0, r3, #31
 80028dc:	d404      	bmi.n	80028e8 <_vfprintf_r+0x1e0>
 80028de:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80028e2:	0599      	lsls	r1, r3, #22
 80028e4:	f140 83b7 	bpl.w	8003056 <_vfprintf_r+0x94e>
 80028e8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80028ec:	9305      	str	r3, [sp, #20]
 80028ee:	9805      	ldr	r0, [sp, #20]
 80028f0:	b057      	add	sp, #348	; 0x15c
 80028f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80028f6:	f048 0820 	orr.w	r8, r8, #32
 80028fa:	f89a 6000 	ldrb.w	r6, [sl]
 80028fe:	e781      	b.n	8002804 <_vfprintf_r+0xfc>
 8002900:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002904:	f003 021a 	and.w	r2, r3, #26
 8002908:	2a0a      	cmp	r2, #10
 800290a:	f47f af37 	bne.w	800277c <_vfprintf_r+0x74>
 800290e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002912:	2a00      	cmp	r2, #0
 8002914:	f6ff af32 	blt.w	800277c <_vfprintf_r+0x74>
 8002918:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800291c:	07d2      	lsls	r2, r2, #31
 800291e:	d405      	bmi.n	800292c <_vfprintf_r+0x224>
 8002920:	059b      	lsls	r3, r3, #22
 8002922:	d403      	bmi.n	800292c <_vfprintf_r+0x224>
 8002924:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002928:	f003 f8de 	bl	8005ae8 <__retarget_lock_release_recursive>
 800292c:	4623      	mov	r3, r4
 800292e:	463a      	mov	r2, r7
 8002930:	4649      	mov	r1, r9
 8002932:	9803      	ldr	r0, [sp, #12]
 8002934:	f001 fc26 	bl	8004184 <__sbprintf>
 8002938:	9005      	str	r0, [sp, #20]
 800293a:	9805      	ldr	r0, [sp, #20]
 800293c:	b057      	add	sp, #348	; 0x15c
 800293e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002942:	9803      	ldr	r0, [sp, #12]
 8002944:	f002 fd7e 	bl	8005444 <__sinit>
 8002948:	e6f4      	b.n	8002734 <_vfprintf_r+0x2c>
 800294a:	f048 0810 	orr.w	r8, r8, #16
 800294e:	f018 0f20 	tst.w	r8, #32
 8002952:	f000 836c 	beq.w	800302e <_vfprintf_r+0x926>
 8002956:	9c08      	ldr	r4, [sp, #32]
 8002958:	3407      	adds	r4, #7
 800295a:	f024 0307 	bic.w	r3, r4, #7
 800295e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002962:	f103 0208 	add.w	r2, r3, #8
 8002966:	9208      	str	r2, [sp, #32]
 8002968:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800296c:	2200      	movs	r2, #0
 800296e:	e18c      	b.n	8002c8a <_vfprintf_r+0x582>
 8002970:	aa2a      	add	r2, sp, #168	; 0xa8
 8002972:	9907      	ldr	r1, [sp, #28]
 8002974:	9803      	ldr	r0, [sp, #12]
 8002976:	f004 f9f5 	bl	8006d64 <__sprint_r>
 800297a:	2800      	cmp	r0, #0
 800297c:	f041 8376 	bne.w	800406c <_vfprintf_r+0x1964>
 8002980:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002984:	e72c      	b.n	80027e0 <_vfprintf_r+0xd8>
 8002986:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800298a:	f003 f8ab 	bl	8005ae4 <__retarget_lock_acquire_recursive>
 800298e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002992:	b293      	uxth	r3, r2
 8002994:	e6d8      	b.n	8002748 <_vfprintf_r+0x40>
 8002996:	bf00      	nop
	...
 80029a0:	4643      	mov	r3, r8
 80029a2:	069f      	lsls	r7, r3, #26
 80029a4:	f140 832f 	bpl.w	8003006 <_vfprintf_r+0x8fe>
 80029a8:	9c08      	ldr	r4, [sp, #32]
 80029aa:	3407      	adds	r4, #7
 80029ac:	f024 0407 	bic.w	r4, r4, #7
 80029b0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80029b4:	f104 0208 	add.w	r2, r4, #8
 80029b8:	9208      	str	r2, [sp, #32]
 80029ba:	4604      	mov	r4, r0
 80029bc:	460d      	mov	r5, r1
 80029be:	2800      	cmp	r0, #0
 80029c0:	f171 0200 	sbcs.w	r2, r1, #0
 80029c4:	da05      	bge.n	80029d2 <_vfprintf_r+0x2ca>
 80029c6:	222d      	movs	r2, #45	; 0x2d
 80029c8:	4264      	negs	r4, r4
 80029ca:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80029ce:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80029d2:	aa56      	add	r2, sp, #344	; 0x158
 80029d4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80029d8:	9204      	str	r2, [sp, #16]
 80029da:	f000 84b2 	beq.w	8003342 <_vfprintf_r+0xc3a>
 80029de:	2201      	movs	r2, #1
 80029e0:	ea54 0105 	orrs.w	r1, r4, r5
 80029e4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80029e8:	f040 8159 	bne.w	8002c9e <_vfprintf_r+0x596>
 80029ec:	f1b9 0f00 	cmp.w	r9, #0
 80029f0:	f040 8619 	bne.w	8003626 <_vfprintf_r+0xf1e>
 80029f4:	2a00      	cmp	r2, #0
 80029f6:	f040 8508 	bne.w	800340a <_vfprintf_r+0xd02>
 80029fa:	f013 0301 	ands.w	r3, r3, #1
 80029fe:	af56      	add	r7, sp, #344	; 0x158
 8002a00:	9309      	str	r3, [sp, #36]	; 0x24
 8002a02:	d002      	beq.n	8002a0a <_vfprintf_r+0x302>
 8002a04:	2330      	movs	r3, #48	; 0x30
 8002a06:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002a0a:	2300      	movs	r3, #0
 8002a0c:	930a      	str	r3, [sp, #40]	; 0x28
 8002a0e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002a10:	9314      	str	r3, [sp, #80]	; 0x50
 8002a12:	9311      	str	r3, [sp, #68]	; 0x44
 8002a14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002a16:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a1a:	454b      	cmp	r3, r9
 8002a1c:	bfb8      	it	lt
 8002a1e:	464b      	movlt	r3, r9
 8002a20:	9304      	str	r3, [sp, #16]
 8002a22:	b112      	cbz	r2, 8002a2a <_vfprintf_r+0x322>
 8002a24:	9b04      	ldr	r3, [sp, #16]
 8002a26:	3301      	adds	r3, #1
 8002a28:	9304      	str	r3, [sp, #16]
 8002a2a:	f018 0302 	ands.w	r3, r8, #2
 8002a2e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002a30:	d002      	beq.n	8002a38 <_vfprintf_r+0x330>
 8002a32:	9b04      	ldr	r3, [sp, #16]
 8002a34:	3302      	adds	r3, #2
 8002a36:	9304      	str	r3, [sp, #16]
 8002a38:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002a3c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002a3e:	930e      	str	r3, [sp, #56]	; 0x38
 8002a40:	d13f      	bne.n	8002ac2 <_vfprintf_r+0x3ba>
 8002a42:	9b06      	ldr	r3, [sp, #24]
 8002a44:	9904      	ldr	r1, [sp, #16]
 8002a46:	1a5d      	subs	r5, r3, r1
 8002a48:	2d00      	cmp	r5, #0
 8002a4a:	dd3a      	ble.n	8002ac2 <_vfprintf_r+0x3ba>
 8002a4c:	2d10      	cmp	r5, #16
 8002a4e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002a50:	dd29      	ble.n	8002aa6 <_vfprintf_r+0x39e>
 8002a52:	4659      	mov	r1, fp
 8002a54:	4620      	mov	r0, r4
 8002a56:	9620      	str	r6, [sp, #128]	; 0x80
 8002a58:	2310      	movs	r3, #16
 8002a5a:	9c03      	ldr	r4, [sp, #12]
 8002a5c:	9e07      	ldr	r6, [sp, #28]
 8002a5e:	46bb      	mov	fp, r7
 8002a60:	e004      	b.n	8002a6c <_vfprintf_r+0x364>
 8002a62:	3d10      	subs	r5, #16
 8002a64:	2d10      	cmp	r5, #16
 8002a66:	f101 0108 	add.w	r1, r1, #8
 8002a6a:	dd18      	ble.n	8002a9e <_vfprintf_r+0x396>
 8002a6c:	3201      	adds	r2, #1
 8002a6e:	4fba      	ldr	r7, [pc, #744]	; (8002d58 <_vfprintf_r+0x650>)
 8002a70:	3010      	adds	r0, #16
 8002a72:	2a07      	cmp	r2, #7
 8002a74:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002a78:	e9c1 7300 	strd	r7, r3, [r1]
 8002a7c:	ddf1      	ble.n	8002a62 <_vfprintf_r+0x35a>
 8002a7e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a80:	4631      	mov	r1, r6
 8002a82:	4620      	mov	r0, r4
 8002a84:	930c      	str	r3, [sp, #48]	; 0x30
 8002a86:	f004 f96d 	bl	8006d64 <__sprint_r>
 8002a8a:	2800      	cmp	r0, #0
 8002a8c:	f040 843d 	bne.w	800330a <_vfprintf_r+0xc02>
 8002a90:	3d10      	subs	r5, #16
 8002a92:	2d10      	cmp	r5, #16
 8002a94:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002a98:	a92d      	add	r1, sp, #180	; 0xb4
 8002a9a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002a9c:	dce6      	bgt.n	8002a6c <_vfprintf_r+0x364>
 8002a9e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002aa0:	465f      	mov	r7, fp
 8002aa2:	4604      	mov	r4, r0
 8002aa4:	468b      	mov	fp, r1
 8002aa6:	3201      	adds	r2, #1
 8002aa8:	4bab      	ldr	r3, [pc, #684]	; (8002d58 <_vfprintf_r+0x650>)
 8002aaa:	442c      	add	r4, r5
 8002aac:	2a07      	cmp	r2, #7
 8002aae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002ab2:	e9cb 3500 	strd	r3, r5, [fp]
 8002ab6:	f300 84ff 	bgt.w	80034b8 <_vfprintf_r+0xdb0>
 8002aba:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002abe:	f10b 0b08 	add.w	fp, fp, #8
 8002ac2:	b172      	cbz	r2, 8002ae2 <_vfprintf_r+0x3da>
 8002ac4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ac6:	3201      	adds	r2, #1
 8002ac8:	3401      	adds	r4, #1
 8002aca:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002ace:	2101      	movs	r1, #1
 8002ad0:	2a07      	cmp	r2, #7
 8002ad2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002ad6:	e9cb 0100 	strd	r0, r1, [fp]
 8002ada:	f300 8418 	bgt.w	800330e <_vfprintf_r+0xc06>
 8002ade:	f10b 0b08 	add.w	fp, fp, #8
 8002ae2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002ae4:	b16b      	cbz	r3, 8002b02 <_vfprintf_r+0x3fa>
 8002ae6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ae8:	3301      	adds	r3, #1
 8002aea:	3402      	adds	r4, #2
 8002aec:	a923      	add	r1, sp, #140	; 0x8c
 8002aee:	2202      	movs	r2, #2
 8002af0:	2b07      	cmp	r3, #7
 8002af2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002af6:	e9cb 1200 	strd	r1, r2, [fp]
 8002afa:	f300 8415 	bgt.w	8003328 <_vfprintf_r+0xc20>
 8002afe:	f10b 0b08 	add.w	fp, fp, #8
 8002b02:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002b04:	2b80      	cmp	r3, #128	; 0x80
 8002b06:	f000 8331 	beq.w	800316c <_vfprintf_r+0xa64>
 8002b0a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002b0c:	eba9 0503 	sub.w	r5, r9, r3
 8002b10:	2d00      	cmp	r5, #0
 8002b12:	dd37      	ble.n	8002b84 <_vfprintf_r+0x47c>
 8002b14:	2d10      	cmp	r5, #16
 8002b16:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b18:	4b90      	ldr	r3, [pc, #576]	; (8002d5c <_vfprintf_r+0x654>)
 8002b1a:	dd28      	ble.n	8002b6e <_vfprintf_r+0x466>
 8002b1c:	4659      	mov	r1, fp
 8002b1e:	4620      	mov	r0, r4
 8002b20:	46bb      	mov	fp, r7
 8002b22:	f04f 0910 	mov.w	r9, #16
 8002b26:	4637      	mov	r7, r6
 8002b28:	461c      	mov	r4, r3
 8002b2a:	9e07      	ldr	r6, [sp, #28]
 8002b2c:	e004      	b.n	8002b38 <_vfprintf_r+0x430>
 8002b2e:	3d10      	subs	r5, #16
 8002b30:	2d10      	cmp	r5, #16
 8002b32:	f101 0108 	add.w	r1, r1, #8
 8002b36:	dd15      	ble.n	8002b64 <_vfprintf_r+0x45c>
 8002b38:	3201      	adds	r2, #1
 8002b3a:	3010      	adds	r0, #16
 8002b3c:	2a07      	cmp	r2, #7
 8002b3e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002b42:	e9c1 4900 	strd	r4, r9, [r1]
 8002b46:	ddf2      	ble.n	8002b2e <_vfprintf_r+0x426>
 8002b48:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b4a:	4631      	mov	r1, r6
 8002b4c:	9803      	ldr	r0, [sp, #12]
 8002b4e:	f004 f909 	bl	8006d64 <__sprint_r>
 8002b52:	2800      	cmp	r0, #0
 8002b54:	f040 83d9 	bne.w	800330a <_vfprintf_r+0xc02>
 8002b58:	3d10      	subs	r5, #16
 8002b5a:	2d10      	cmp	r5, #16
 8002b5c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002b60:	a92d      	add	r1, sp, #180	; 0xb4
 8002b62:	dce9      	bgt.n	8002b38 <_vfprintf_r+0x430>
 8002b64:	463e      	mov	r6, r7
 8002b66:	4623      	mov	r3, r4
 8002b68:	465f      	mov	r7, fp
 8002b6a:	4604      	mov	r4, r0
 8002b6c:	468b      	mov	fp, r1
 8002b6e:	3201      	adds	r2, #1
 8002b70:	442c      	add	r4, r5
 8002b72:	2a07      	cmp	r2, #7
 8002b74:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002b78:	e9cb 3500 	strd	r3, r5, [fp]
 8002b7c:	f300 83ef 	bgt.w	800335e <_vfprintf_r+0xc56>
 8002b80:	f10b 0b08 	add.w	fp, fp, #8
 8002b84:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002b88:	f040 8280 	bne.w	800308c <_vfprintf_r+0x984>
 8002b8c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002b8e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002b90:	f8cb 7000 	str.w	r7, [fp]
 8002b94:	3301      	adds	r3, #1
 8002b96:	4414      	add	r4, r2
 8002b98:	2b07      	cmp	r3, #7
 8002b9a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002b9c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ba0:	932b      	str	r3, [sp, #172]	; 0xac
 8002ba2:	f300 8392 	bgt.w	80032ca <_vfprintf_r+0xbc2>
 8002ba6:	f10b 0b08 	add.w	fp, fp, #8
 8002baa:	f018 0f04 	tst.w	r8, #4
 8002bae:	d03b      	beq.n	8002c28 <_vfprintf_r+0x520>
 8002bb0:	9b06      	ldr	r3, [sp, #24]
 8002bb2:	9a04      	ldr	r2, [sp, #16]
 8002bb4:	1a9d      	subs	r5, r3, r2
 8002bb6:	2d00      	cmp	r5, #0
 8002bb8:	dd36      	ble.n	8002c28 <_vfprintf_r+0x520>
 8002bba:	2d10      	cmp	r5, #16
 8002bbc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002bbe:	dd21      	ble.n	8002c04 <_vfprintf_r+0x4fc>
 8002bc0:	2610      	movs	r6, #16
 8002bc2:	9f03      	ldr	r7, [sp, #12]
 8002bc4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002bc8:	e004      	b.n	8002bd4 <_vfprintf_r+0x4cc>
 8002bca:	3d10      	subs	r5, #16
 8002bcc:	2d10      	cmp	r5, #16
 8002bce:	f10b 0b08 	add.w	fp, fp, #8
 8002bd2:	dd17      	ble.n	8002c04 <_vfprintf_r+0x4fc>
 8002bd4:	3301      	adds	r3, #1
 8002bd6:	4a60      	ldr	r2, [pc, #384]	; (8002d58 <_vfprintf_r+0x650>)
 8002bd8:	3410      	adds	r4, #16
 8002bda:	2b07      	cmp	r3, #7
 8002bdc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002be0:	e9cb 2600 	strd	r2, r6, [fp]
 8002be4:	ddf1      	ble.n	8002bca <_vfprintf_r+0x4c2>
 8002be6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002be8:	4641      	mov	r1, r8
 8002bea:	4638      	mov	r0, r7
 8002bec:	f004 f8ba 	bl	8006d64 <__sprint_r>
 8002bf0:	2800      	cmp	r0, #0
 8002bf2:	f040 856c 	bne.w	80036ce <_vfprintf_r+0xfc6>
 8002bf6:	3d10      	subs	r5, #16
 8002bf8:	2d10      	cmp	r5, #16
 8002bfa:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002bfe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c02:	dce7      	bgt.n	8002bd4 <_vfprintf_r+0x4cc>
 8002c04:	3301      	adds	r3, #1
 8002c06:	4a54      	ldr	r2, [pc, #336]	; (8002d58 <_vfprintf_r+0x650>)
 8002c08:	442c      	add	r4, r5
 8002c0a:	2b07      	cmp	r3, #7
 8002c0c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c10:	e9cb 2500 	strd	r2, r5, [fp]
 8002c14:	dd08      	ble.n	8002c28 <_vfprintf_r+0x520>
 8002c16:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c18:	9907      	ldr	r1, [sp, #28]
 8002c1a:	9803      	ldr	r0, [sp, #12]
 8002c1c:	f004 f8a2 	bl	8006d64 <__sprint_r>
 8002c20:	2800      	cmp	r0, #0
 8002c22:	f040 82e9 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 8002c26:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002c28:	9904      	ldr	r1, [sp, #16]
 8002c2a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002c2e:	428a      	cmp	r2, r1
 8002c30:	bfac      	ite	ge
 8002c32:	189b      	addge	r3, r3, r2
 8002c34:	185b      	addlt	r3, r3, r1
 8002c36:	9305      	str	r3, [sp, #20]
 8002c38:	2c00      	cmp	r4, #0
 8002c3a:	f040 82d5 	bne.w	80031e8 <_vfprintf_r+0xae0>
 8002c3e:	2300      	movs	r3, #0
 8002c40:	932b      	str	r3, [sp, #172]	; 0xac
 8002c42:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c44:	b11b      	cbz	r3, 8002c4e <_vfprintf_r+0x546>
 8002c46:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002c48:	9803      	ldr	r0, [sp, #12]
 8002c4a:	f002 fc9d 	bl	8005588 <_free_r>
 8002c4e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c52:	4657      	mov	r7, sl
 8002c54:	783b      	ldrb	r3, [r7, #0]
 8002c56:	2b00      	cmp	r3, #0
 8002c58:	f47f ada7 	bne.w	80027aa <_vfprintf_r+0xa2>
 8002c5c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002c5e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002c62:	2b00      	cmp	r3, #0
 8002c64:	f041 80e7 	bne.w	8003e36 <_vfprintf_r+0x172e>
 8002c68:	2300      	movs	r3, #0
 8002c6a:	932b      	str	r3, [sp, #172]	; 0xac
 8002c6c:	e2cb      	b.n	8003206 <_vfprintf_r+0xafe>
 8002c6e:	4643      	mov	r3, r8
 8002c70:	069a      	lsls	r2, r3, #26
 8002c72:	f140 814e 	bpl.w	8002f12 <_vfprintf_r+0x80a>
 8002c76:	9c08      	ldr	r4, [sp, #32]
 8002c78:	3407      	adds	r4, #7
 8002c7a:	f024 0207 	bic.w	r2, r4, #7
 8002c7e:	f102 0108 	add.w	r1, r2, #8
 8002c82:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002c86:	9108      	str	r1, [sp, #32]
 8002c88:	2201      	movs	r2, #1
 8002c8a:	2100      	movs	r1, #0
 8002c8c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002c90:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002c94:	a956      	add	r1, sp, #344	; 0x158
 8002c96:	9104      	str	r1, [sp, #16]
 8002c98:	f47f aea2 	bne.w	80029e0 <_vfprintf_r+0x2d8>
 8002c9c:	4698      	mov	r8, r3
 8002c9e:	2a01      	cmp	r2, #1
 8002ca0:	f000 8350 	beq.w	8003344 <_vfprintf_r+0xc3c>
 8002ca4:	2a02      	cmp	r2, #2
 8002ca6:	f000 831b 	beq.w	80032e0 <_vfprintf_r+0xbd8>
 8002caa:	a956      	add	r1, sp, #344	; 0x158
 8002cac:	e000      	b.n	8002cb0 <_vfprintf_r+0x5a8>
 8002cae:	4639      	mov	r1, r7
 8002cb0:	08e2      	lsrs	r2, r4, #3
 8002cb2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002cb6:	08e8      	lsrs	r0, r5, #3
 8002cb8:	f004 0307 	and.w	r3, r4, #7
 8002cbc:	4605      	mov	r5, r0
 8002cbe:	4614      	mov	r4, r2
 8002cc0:	3330      	adds	r3, #48	; 0x30
 8002cc2:	ea54 0205 	orrs.w	r2, r4, r5
 8002cc6:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002cca:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002cce:	d1ee      	bne.n	8002cae <_vfprintf_r+0x5a6>
 8002cd0:	f018 0f01 	tst.w	r8, #1
 8002cd4:	f000 8314 	beq.w	8003300 <_vfprintf_r+0xbf8>
 8002cd8:	2b30      	cmp	r3, #48	; 0x30
 8002cda:	f000 8311 	beq.w	8003300 <_vfprintf_r+0xbf8>
 8002cde:	9a04      	ldr	r2, [sp, #16]
 8002ce0:	3902      	subs	r1, #2
 8002ce2:	2330      	movs	r3, #48	; 0x30
 8002ce4:	1a52      	subs	r2, r2, r1
 8002ce6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002cea:	9209      	str	r2, [sp, #36]	; 0x24
 8002cec:	460f      	mov	r7, r1
 8002cee:	e68c      	b.n	8002a0a <_vfprintf_r+0x302>
 8002cf0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002cf4:	2200      	movs	r2, #0
 8002cf6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002cfa:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002cfe:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002d02:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d06:	2b09      	cmp	r3, #9
 8002d08:	d9f5      	bls.n	8002cf6 <_vfprintf_r+0x5ee>
 8002d0a:	9206      	str	r2, [sp, #24]
 8002d0c:	e57c      	b.n	8002808 <_vfprintf_r+0x100>
 8002d0e:	4b14      	ldr	r3, [pc, #80]	; (8002d60 <_vfprintf_r+0x658>)
 8002d10:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d12:	f018 0f20 	tst.w	r8, #32
 8002d16:	f000 8114 	beq.w	8002f42 <_vfprintf_r+0x83a>
 8002d1a:	9c08      	ldr	r4, [sp, #32]
 8002d1c:	3407      	adds	r4, #7
 8002d1e:	f024 0307 	bic.w	r3, r4, #7
 8002d22:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002d26:	f103 0208 	add.w	r2, r3, #8
 8002d2a:	9208      	str	r2, [sp, #32]
 8002d2c:	f018 0f01 	tst.w	r8, #1
 8002d30:	d009      	beq.n	8002d46 <_vfprintf_r+0x63e>
 8002d32:	ea54 0305 	orrs.w	r3, r4, r5
 8002d36:	d006      	beq.n	8002d46 <_vfprintf_r+0x63e>
 8002d38:	2330      	movs	r3, #48	; 0x30
 8002d3a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002d3e:	f048 0802 	orr.w	r8, r8, #2
 8002d42:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002d46:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002d4a:	2202      	movs	r2, #2
 8002d4c:	e79d      	b.n	8002c8a <_vfprintf_r+0x582>
 8002d4e:	f048 0801 	orr.w	r8, r8, #1
 8002d52:	f89a 6000 	ldrb.w	r6, [sl]
 8002d56:	e555      	b.n	8002804 <_vfprintf_r+0xfc>
 8002d58:	0800745c 	.word	0x0800745c
 8002d5c:	0800746c 	.word	0x0800746c
 8002d60:	08007428 	.word	0x08007428
 8002d64:	9e03      	ldr	r6, [sp, #12]
 8002d66:	4630      	mov	r0, r6
 8002d68:	f002 feaa 	bl	8005ac0 <_localeconv_r>
 8002d6c:	6843      	ldr	r3, [r0, #4]
 8002d6e:	9318      	str	r3, [sp, #96]	; 0x60
 8002d70:	4618      	mov	r0, r3
 8002d72:	f7fd fc65 	bl	8000640 <strlen>
 8002d76:	901b      	str	r0, [sp, #108]	; 0x6c
 8002d78:	4604      	mov	r4, r0
 8002d7a:	4630      	mov	r0, r6
 8002d7c:	f002 fea0 	bl	8005ac0 <_localeconv_r>
 8002d80:	6883      	ldr	r3, [r0, #8]
 8002d82:	931a      	str	r3, [sp, #104]	; 0x68
 8002d84:	2c00      	cmp	r4, #0
 8002d86:	f43f adb8 	beq.w	80028fa <_vfprintf_r+0x1f2>
 8002d8a:	f89a 6000 	ldrb.w	r6, [sl]
 8002d8e:	2b00      	cmp	r3, #0
 8002d90:	f43f ad38 	beq.w	8002804 <_vfprintf_r+0xfc>
 8002d94:	781b      	ldrb	r3, [r3, #0]
 8002d96:	2b00      	cmp	r3, #0
 8002d98:	f43f ad34 	beq.w	8002804 <_vfprintf_r+0xfc>
 8002d9c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002da0:	e530      	b.n	8002804 <_vfprintf_r+0xfc>
 8002da2:	9b08      	ldr	r3, [sp, #32]
 8002da4:	f89a 6000 	ldrb.w	r6, [sl]
 8002da8:	681a      	ldr	r2, [r3, #0]
 8002daa:	9206      	str	r2, [sp, #24]
 8002dac:	2a00      	cmp	r2, #0
 8002dae:	f103 0304 	add.w	r3, r3, #4
 8002db2:	f2c0 8697 	blt.w	8003ae4 <_vfprintf_r+0x13dc>
 8002db6:	9308      	str	r3, [sp, #32]
 8002db8:	e524      	b.n	8002804 <_vfprintf_r+0xfc>
 8002dba:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002dbe:	f89a 6000 	ldrb.w	r6, [sl]
 8002dc2:	e51f      	b.n	8002804 <_vfprintf_r+0xfc>
 8002dc4:	f89a 6000 	ldrb.w	r6, [sl]
 8002dc8:	f048 0804 	orr.w	r8, r8, #4
 8002dcc:	e51a      	b.n	8002804 <_vfprintf_r+0xfc>
 8002dce:	f89a 6000 	ldrb.w	r6, [sl]
 8002dd2:	2e2a      	cmp	r6, #42	; 0x2a
 8002dd4:	f10a 0201 	add.w	r2, sl, #1
 8002dd8:	f001 81b0 	beq.w	800413c <_vfprintf_r+0x1a34>
 8002ddc:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002de0:	2b09      	cmp	r3, #9
 8002de2:	4692      	mov	sl, r2
 8002de4:	f04f 0900 	mov.w	r9, #0
 8002de8:	f63f ad0e 	bhi.w	8002808 <_vfprintf_r+0x100>
 8002dec:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002df0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002df4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002df8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002dfc:	2b09      	cmp	r3, #9
 8002dfe:	d9f5      	bls.n	8002dec <_vfprintf_r+0x6e4>
 8002e00:	e502      	b.n	8002808 <_vfprintf_r+0x100>
 8002e02:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002e06:	f89a 6000 	ldrb.w	r6, [sl]
 8002e0a:	e4fb      	b.n	8002804 <_vfprintf_r+0xfc>
 8002e0c:	9c08      	ldr	r4, [sp, #32]
 8002e0e:	3407      	adds	r4, #7
 8002e10:	f024 0407 	bic.w	r4, r4, #7
 8002e14:	ed94 7b00 	vldr	d7, [r4]
 8002e18:	ec52 1b17 	vmov	r1, r2, d7
 8002e1c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002e20:	931d      	str	r3, [sp, #116]	; 0x74
 8002e22:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002e26:	3408      	adds	r4, #8
 8002e28:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002e2c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002e30:	4bba      	ldr	r3, [pc, #744]	; (800311c <_vfprintf_r+0xa14>)
 8002e32:	9408      	str	r4, [sp, #32]
 8002e34:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002e38:	f7fe f918 	bl	800106c <__aeabi_dcmpun>
 8002e3c:	2800      	cmp	r0, #0
 8002e3e:	f040 846f 	bne.w	8003720 <_vfprintf_r+0x1018>
 8002e42:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002e46:	4bb5      	ldr	r3, [pc, #724]	; (800311c <_vfprintf_r+0xa14>)
 8002e48:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002e4c:	f7fe f8f0 	bl	8001030 <__aeabi_dcmple>
 8002e50:	2800      	cmp	r0, #0
 8002e52:	f040 8465 	bne.w	8003720 <_vfprintf_r+0x1018>
 8002e56:	2200      	movs	r2, #0
 8002e58:	2300      	movs	r3, #0
 8002e5a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e5e:	f7fe f8dd 	bl	800101c <__aeabi_dcmplt>
 8002e62:	2800      	cmp	r0, #0
 8002e64:	f040 855b 	bne.w	800391e <_vfprintf_r+0x1216>
 8002e68:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002e6c:	4fac      	ldr	r7, [pc, #688]	; (8003120 <_vfprintf_r+0xa18>)
 8002e6e:	4bad      	ldr	r3, [pc, #692]	; (8003124 <_vfprintf_r+0xa1c>)
 8002e70:	2000      	movs	r0, #0
 8002e72:	2103      	movs	r1, #3
 8002e74:	9104      	str	r1, [sp, #16]
 8002e76:	900a      	str	r0, [sp, #40]	; 0x28
 8002e78:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002e7c:	2e47      	cmp	r6, #71	; 0x47
 8002e7e:	bfd8      	it	le
 8002e80:	461f      	movle	r7, r3
 8002e82:	9109      	str	r1, [sp, #36]	; 0x24
 8002e84:	4681      	mov	r9, r0
 8002e86:	900f      	str	r0, [sp, #60]	; 0x3c
 8002e88:	9014      	str	r0, [sp, #80]	; 0x50
 8002e8a:	9011      	str	r0, [sp, #68]	; 0x44
 8002e8c:	e5c9      	b.n	8002a22 <_vfprintf_r+0x31a>
 8002e8e:	9808      	ldr	r0, [sp, #32]
 8002e90:	2300      	movs	r3, #0
 8002e92:	6801      	ldr	r1, [r0, #0]
 8002e94:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002e98:	461a      	mov	r2, r3
 8002e9a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002e9e:	2301      	movs	r3, #1
 8002ea0:	1d01      	adds	r1, r0, #4
 8002ea2:	9304      	str	r3, [sp, #16]
 8002ea4:	920a      	str	r2, [sp, #40]	; 0x28
 8002ea6:	4691      	mov	r9, r2
 8002ea8:	920f      	str	r2, [sp, #60]	; 0x3c
 8002eaa:	9214      	str	r2, [sp, #80]	; 0x50
 8002eac:	9211      	str	r2, [sp, #68]	; 0x44
 8002eae:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002eb2:	af3d      	add	r7, sp, #244	; 0xf4
 8002eb4:	e5b9      	b.n	8002a2a <_vfprintf_r+0x322>
 8002eb6:	9b08      	ldr	r3, [sp, #32]
 8002eb8:	681f      	ldr	r7, [r3, #0]
 8002eba:	2500      	movs	r5, #0
 8002ebc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002ec0:	1d1c      	adds	r4, r3, #4
 8002ec2:	2f00      	cmp	r7, #0
 8002ec4:	f000 8639 	beq.w	8003b3a <_vfprintf_r+0x1432>
 8002ec8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002ecc:	f000 8711 	beq.w	8003cf2 <_vfprintf_r+0x15ea>
 8002ed0:	464a      	mov	r2, r9
 8002ed2:	4629      	mov	r1, r5
 8002ed4:	4638      	mov	r0, r7
 8002ed6:	f7fd fc23 	bl	8000720 <memchr>
 8002eda:	900a      	str	r0, [sp, #40]	; 0x28
 8002edc:	2800      	cmp	r0, #0
 8002ede:	f000 85e7 	beq.w	8003ab0 <_vfprintf_r+0x13a8>
 8002ee2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002ee4:	1bdb      	subs	r3, r3, r7
 8002ee6:	9309      	str	r3, [sp, #36]	; 0x24
 8002ee8:	46a9      	mov	r9, r5
 8002eea:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002eee:	9408      	str	r4, [sp, #32]
 8002ef0:	9304      	str	r3, [sp, #16]
 8002ef2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002ef6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002efa:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002efe:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002f02:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002f06:	e58c      	b.n	8002a22 <_vfprintf_r+0x31a>
 8002f08:	f048 0310 	orr.w	r3, r8, #16
 8002f0c:	069a      	lsls	r2, r3, #26
 8002f0e:	f53f aeb2 	bmi.w	8002c76 <_vfprintf_r+0x56e>
 8002f12:	9a08      	ldr	r2, [sp, #32]
 8002f14:	06df      	lsls	r7, r3, #27
 8002f16:	f102 0104 	add.w	r1, r2, #4
 8002f1a:	f100 837e 	bmi.w	800361a <_vfprintf_r+0xf12>
 8002f1e:	065d      	lsls	r5, r3, #25
 8002f20:	9a08      	ldr	r2, [sp, #32]
 8002f22:	f100 84e4 	bmi.w	80038ee <_vfprintf_r+0x11e6>
 8002f26:	059c      	lsls	r4, r3, #22
 8002f28:	f140 8377 	bpl.w	800361a <_vfprintf_r+0xf12>
 8002f2c:	7814      	ldrb	r4, [r2, #0]
 8002f2e:	9108      	str	r1, [sp, #32]
 8002f30:	2500      	movs	r5, #0
 8002f32:	2201      	movs	r2, #1
 8002f34:	e6a9      	b.n	8002c8a <_vfprintf_r+0x582>
 8002f36:	4b7c      	ldr	r3, [pc, #496]	; (8003128 <_vfprintf_r+0xa20>)
 8002f38:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f3a:	f018 0f20 	tst.w	r8, #32
 8002f3e:	f47f aeec 	bne.w	8002d1a <_vfprintf_r+0x612>
 8002f42:	9a08      	ldr	r2, [sp, #32]
 8002f44:	f018 0f10 	tst.w	r8, #16
 8002f48:	f102 0304 	add.w	r3, r2, #4
 8002f4c:	f040 8354 	bne.w	80035f8 <_vfprintf_r+0xef0>
 8002f50:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002f54:	9a08      	ldr	r2, [sp, #32]
 8002f56:	f040 84d0 	bne.w	80038fa <_vfprintf_r+0x11f2>
 8002f5a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002f5e:	f000 834b 	beq.w	80035f8 <_vfprintf_r+0xef0>
 8002f62:	7814      	ldrb	r4, [r2, #0]
 8002f64:	9308      	str	r3, [sp, #32]
 8002f66:	2500      	movs	r5, #0
 8002f68:	e6e0      	b.n	8002d2c <_vfprintf_r+0x624>
 8002f6a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002f6e:	f89a 6000 	ldrb.w	r6, [sl]
 8002f72:	2b00      	cmp	r3, #0
 8002f74:	f47f ac46 	bne.w	8002804 <_vfprintf_r+0xfc>
 8002f78:	2320      	movs	r3, #32
 8002f7a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002f7e:	e441      	b.n	8002804 <_vfprintf_r+0xfc>
 8002f80:	f89a 6000 	ldrb.w	r6, [sl]
 8002f84:	2e6c      	cmp	r6, #108	; 0x6c
 8002f86:	bf03      	ittte	eq
 8002f88:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002f8c:	f048 0820 	orreq.w	r8, r8, #32
 8002f90:	f10a 0a01 	addeq.w	sl, sl, #1
 8002f94:	f048 0810 	orrne.w	r8, r8, #16
 8002f98:	e434      	b.n	8002804 <_vfprintf_r+0xfc>
 8002f9a:	9a08      	ldr	r2, [sp, #32]
 8002f9c:	f018 0f20 	tst.w	r8, #32
 8002fa0:	f852 3b04 	ldr.w	r3, [r2], #4
 8002fa4:	9208      	str	r2, [sp, #32]
 8002fa6:	f000 83a1 	beq.w	80036ec <_vfprintf_r+0xfe4>
 8002faa:	9a05      	ldr	r2, [sp, #20]
 8002fac:	4610      	mov	r0, r2
 8002fae:	17d1      	asrs	r1, r2, #31
 8002fb0:	e9c3 0100 	strd	r0, r1, [r3]
 8002fb4:	4657      	mov	r7, sl
 8002fb6:	e64d      	b.n	8002c54 <_vfprintf_r+0x54c>
 8002fb8:	f89a 6000 	ldrb.w	r6, [sl]
 8002fbc:	2e68      	cmp	r6, #104	; 0x68
 8002fbe:	bf03      	ittte	eq
 8002fc0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002fc4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002fc8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002fcc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002fd0:	e418      	b.n	8002804 <_vfprintf_r+0xfc>
 8002fd2:	9908      	ldr	r1, [sp, #32]
 8002fd4:	4b55      	ldr	r3, [pc, #340]	; (800312c <_vfprintf_r+0xa24>)
 8002fd6:	680c      	ldr	r4, [r1, #0]
 8002fd8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002fda:	f647 0230 	movw	r2, #30768	; 0x7830
 8002fde:	3104      	adds	r1, #4
 8002fe0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002fe4:	f048 0302 	orr.w	r3, r8, #2
 8002fe8:	9108      	str	r1, [sp, #32]
 8002fea:	2500      	movs	r5, #0
 8002fec:	2202      	movs	r2, #2
 8002fee:	2678      	movs	r6, #120	; 0x78
 8002ff0:	e64b      	b.n	8002c8a <_vfprintf_r+0x582>
 8002ff2:	f048 0808 	orr.w	r8, r8, #8
 8002ff6:	f89a 6000 	ldrb.w	r6, [sl]
 8002ffa:	e403      	b.n	8002804 <_vfprintf_r+0xfc>
 8002ffc:	f048 0310 	orr.w	r3, r8, #16
 8003000:	069f      	lsls	r7, r3, #26
 8003002:	f53f acd1 	bmi.w	80029a8 <_vfprintf_r+0x2a0>
 8003006:	9908      	ldr	r1, [sp, #32]
 8003008:	06dd      	lsls	r5, r3, #27
 800300a:	f101 0204 	add.w	r2, r1, #4
 800300e:	f100 82fd 	bmi.w	800360c <_vfprintf_r+0xf04>
 8003012:	065c      	lsls	r4, r3, #25
 8003014:	9908      	ldr	r1, [sp, #32]
 8003016:	f100 8475 	bmi.w	8003904 <_vfprintf_r+0x11fc>
 800301a:	0598      	lsls	r0, r3, #22
 800301c:	f140 82f6 	bpl.w	800360c <_vfprintf_r+0xf04>
 8003020:	f991 4000 	ldrsb.w	r4, [r1]
 8003024:	9208      	str	r2, [sp, #32]
 8003026:	17e5      	asrs	r5, r4, #31
 8003028:	4620      	mov	r0, r4
 800302a:	4629      	mov	r1, r5
 800302c:	e4c7      	b.n	80029be <_vfprintf_r+0x2b6>
 800302e:	9a08      	ldr	r2, [sp, #32]
 8003030:	f018 0f10 	tst.w	r8, #16
 8003034:	f102 0304 	add.w	r3, r2, #4
 8003038:	f040 82e3 	bne.w	8003602 <_vfprintf_r+0xefa>
 800303c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003040:	9a08      	ldr	r2, [sp, #32]
 8003042:	f040 8467 	bne.w	8003914 <_vfprintf_r+0x120c>
 8003046:	f418 7f00 	tst.w	r8, #512	; 0x200
 800304a:	f000 82da 	beq.w	8003602 <_vfprintf_r+0xefa>
 800304e:	7814      	ldrb	r4, [r2, #0]
 8003050:	9308      	str	r3, [sp, #32]
 8003052:	2500      	movs	r5, #0
 8003054:	e488      	b.n	8002968 <_vfprintf_r+0x260>
 8003056:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800305a:	f002 fd45 	bl	8005ae8 <__retarget_lock_release_recursive>
 800305e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003062:	9305      	str	r3, [sp, #20]
 8003064:	e443      	b.n	80028ee <_vfprintf_r+0x1e6>
 8003066:	2e00      	cmp	r6, #0
 8003068:	f43f adf8 	beq.w	8002c5c <_vfprintf_r+0x554>
 800306c:	2300      	movs	r3, #0
 800306e:	2101      	movs	r1, #1
 8003070:	461a      	mov	r2, r3
 8003072:	9104      	str	r1, [sp, #16]
 8003074:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003078:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800307c:	930a      	str	r3, [sp, #40]	; 0x28
 800307e:	4699      	mov	r9, r3
 8003080:	930f      	str	r3, [sp, #60]	; 0x3c
 8003082:	9314      	str	r3, [sp, #80]	; 0x50
 8003084:	9311      	str	r3, [sp, #68]	; 0x44
 8003086:	9109      	str	r1, [sp, #36]	; 0x24
 8003088:	af3d      	add	r7, sp, #244	; 0xf4
 800308a:	e4ce      	b.n	8002a2a <_vfprintf_r+0x322>
 800308c:	2e65      	cmp	r6, #101	; 0x65
 800308e:	f340 80ca 	ble.w	8003226 <_vfprintf_r+0xb1e>
 8003092:	2200      	movs	r2, #0
 8003094:	2300      	movs	r3, #0
 8003096:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800309a:	f7fd ffb5 	bl	8001008 <__aeabi_dcmpeq>
 800309e:	2800      	cmp	r0, #0
 80030a0:	f000 8169 	beq.w	8003376 <_vfprintf_r+0xc6e>
 80030a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030a6:	4a22      	ldr	r2, [pc, #136]	; (8003130 <_vfprintf_r+0xa28>)
 80030a8:	f8cb 2000 	str.w	r2, [fp]
 80030ac:	3301      	adds	r3, #1
 80030ae:	3401      	adds	r4, #1
 80030b0:	2201      	movs	r2, #1
 80030b2:	2b07      	cmp	r3, #7
 80030b4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80030b8:	f8cb 2004 	str.w	r2, [fp, #4]
 80030bc:	f300 8406 	bgt.w	80038cc <_vfprintf_r+0x11c4>
 80030c0:	f10b 0b08 	add.w	fp, fp, #8
 80030c4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030c6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80030c8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030ca:	4293      	cmp	r3, r2
 80030cc:	db03      	blt.n	80030d6 <_vfprintf_r+0x9ce>
 80030ce:	f018 0f01 	tst.w	r8, #1
 80030d2:	f43f ad6a 	beq.w	8002baa <_vfprintf_r+0x4a2>
 80030d6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030d8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80030da:	f8cb 2000 	str.w	r2, [fp]
 80030de:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80030e0:	f8cb 2004 	str.w	r2, [fp, #4]
 80030e4:	3301      	adds	r3, #1
 80030e6:	4414      	add	r4, r2
 80030e8:	2b07      	cmp	r3, #7
 80030ea:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80030ee:	f300 8517 	bgt.w	8003b20 <_vfprintf_r+0x1418>
 80030f2:	f10b 0b08 	add.w	fp, fp, #8
 80030f6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80030f8:	1e5d      	subs	r5, r3, #1
 80030fa:	2d00      	cmp	r5, #0
 80030fc:	f77f ad55 	ble.w	8002baa <_vfprintf_r+0x4a2>
 8003100:	2d10      	cmp	r5, #16
 8003102:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003104:	4b0b      	ldr	r3, [pc, #44]	; (8003134 <_vfprintf_r+0xa2c>)
 8003106:	f340 82e7 	ble.w	80036d8 <_vfprintf_r+0xfd0>
 800310a:	4619      	mov	r1, r3
 800310c:	2610      	movs	r6, #16
 800310e:	4623      	mov	r3, r4
 8003110:	9f03      	ldr	r7, [sp, #12]
 8003112:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003116:	460c      	mov	r4, r1
 8003118:	e014      	b.n	8003144 <_vfprintf_r+0xa3c>
 800311a:	bf00      	nop
 800311c:	7fefffff 	.word	0x7fefffff
 8003120:	0800741c 	.word	0x0800741c
 8003124:	08007418 	.word	0x08007418
 8003128:	0800743c 	.word	0x0800743c
 800312c:	08007428 	.word	0x08007428
 8003130:	08007458 	.word	0x08007458
 8003134:	0800746c 	.word	0x0800746c
 8003138:	f10b 0b08 	add.w	fp, fp, #8
 800313c:	3d10      	subs	r5, #16
 800313e:	2d10      	cmp	r5, #16
 8003140:	f340 82c7 	ble.w	80036d2 <_vfprintf_r+0xfca>
 8003144:	3201      	adds	r2, #1
 8003146:	3310      	adds	r3, #16
 8003148:	2a07      	cmp	r2, #7
 800314a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800314e:	e9cb 4600 	strd	r4, r6, [fp]
 8003152:	ddf1      	ble.n	8003138 <_vfprintf_r+0xa30>
 8003154:	aa2a      	add	r2, sp, #168	; 0xa8
 8003156:	4649      	mov	r1, r9
 8003158:	4638      	mov	r0, r7
 800315a:	f003 fe03 	bl	8006d64 <__sprint_r>
 800315e:	2800      	cmp	r0, #0
 8003160:	d14c      	bne.n	80031fc <_vfprintf_r+0xaf4>
 8003162:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003166:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800316a:	e7e7      	b.n	800313c <_vfprintf_r+0xa34>
 800316c:	9b06      	ldr	r3, [sp, #24]
 800316e:	9a04      	ldr	r2, [sp, #16]
 8003170:	1a9d      	subs	r5, r3, r2
 8003172:	2d00      	cmp	r5, #0
 8003174:	f77f acc9 	ble.w	8002b0a <_vfprintf_r+0x402>
 8003178:	2d10      	cmp	r5, #16
 800317a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800317c:	4bbc      	ldr	r3, [pc, #752]	; (8003470 <_vfprintf_r+0xd68>)
 800317e:	dd27      	ble.n	80031d0 <_vfprintf_r+0xac8>
 8003180:	4659      	mov	r1, fp
 8003182:	4620      	mov	r0, r4
 8003184:	46bb      	mov	fp, r7
 8003186:	461c      	mov	r4, r3
 8003188:	4637      	mov	r7, r6
 800318a:	9e07      	ldr	r6, [sp, #28]
 800318c:	e004      	b.n	8003198 <_vfprintf_r+0xa90>
 800318e:	3d10      	subs	r5, #16
 8003190:	2d10      	cmp	r5, #16
 8003192:	f101 0108 	add.w	r1, r1, #8
 8003196:	dd16      	ble.n	80031c6 <_vfprintf_r+0xabe>
 8003198:	3201      	adds	r2, #1
 800319a:	3010      	adds	r0, #16
 800319c:	2310      	movs	r3, #16
 800319e:	2a07      	cmp	r2, #7
 80031a0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80031a4:	600c      	str	r4, [r1, #0]
 80031a6:	604b      	str	r3, [r1, #4]
 80031a8:	ddf1      	ble.n	800318e <_vfprintf_r+0xa86>
 80031aa:	aa2a      	add	r2, sp, #168	; 0xa8
 80031ac:	4631      	mov	r1, r6
 80031ae:	9803      	ldr	r0, [sp, #12]
 80031b0:	f003 fdd8 	bl	8006d64 <__sprint_r>
 80031b4:	2800      	cmp	r0, #0
 80031b6:	f040 80a8 	bne.w	800330a <_vfprintf_r+0xc02>
 80031ba:	3d10      	subs	r5, #16
 80031bc:	2d10      	cmp	r5, #16
 80031be:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80031c2:	a92d      	add	r1, sp, #180	; 0xb4
 80031c4:	dce8      	bgt.n	8003198 <_vfprintf_r+0xa90>
 80031c6:	463e      	mov	r6, r7
 80031c8:	4623      	mov	r3, r4
 80031ca:	465f      	mov	r7, fp
 80031cc:	4604      	mov	r4, r0
 80031ce:	468b      	mov	fp, r1
 80031d0:	3201      	adds	r2, #1
 80031d2:	442c      	add	r4, r5
 80031d4:	2a07      	cmp	r2, #7
 80031d6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80031da:	e9cb 3500 	strd	r3, r5, [fp]
 80031de:	f300 8292 	bgt.w	8003706 <_vfprintf_r+0xffe>
 80031e2:	f10b 0b08 	add.w	fp, fp, #8
 80031e6:	e490      	b.n	8002b0a <_vfprintf_r+0x402>
 80031e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80031ea:	9907      	ldr	r1, [sp, #28]
 80031ec:	9803      	ldr	r0, [sp, #12]
 80031ee:	f003 fdb9 	bl	8006d64 <__sprint_r>
 80031f2:	2800      	cmp	r0, #0
 80031f4:	f43f ad23 	beq.w	8002c3e <_vfprintf_r+0x536>
 80031f8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80031fc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80031fe:	b111      	cbz	r1, 8003206 <_vfprintf_r+0xafe>
 8003200:	9803      	ldr	r0, [sp, #12]
 8003202:	f002 f9c1 	bl	8005588 <_free_r>
 8003206:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800320a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800320e:	07d0      	lsls	r0, r2, #31
 8003210:	d402      	bmi.n	8003218 <_vfprintf_r+0xb10>
 8003212:	0599      	lsls	r1, r3, #22
 8003214:	f140 81d0 	bpl.w	80035b8 <_vfprintf_r+0xeb0>
 8003218:	065a      	lsls	r2, r3, #25
 800321a:	f53f ab65 	bmi.w	80028e8 <_vfprintf_r+0x1e0>
 800321e:	9805      	ldr	r0, [sp, #20]
 8003220:	b057      	add	sp, #348	; 0x15c
 8003222:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003226:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003228:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800322a:	2a01      	cmp	r2, #1
 800322c:	f104 0401 	add.w	r4, r4, #1
 8003230:	f103 0501 	add.w	r5, r3, #1
 8003234:	f10b 0608 	add.w	r6, fp, #8
 8003238:	f340 811c 	ble.w	8003474 <_vfprintf_r+0xd6c>
 800323c:	2301      	movs	r3, #1
 800323e:	2d07      	cmp	r5, #7
 8003240:	f8cb 7000 	str.w	r7, [fp]
 8003244:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003248:	f8cb 3004 	str.w	r3, [fp, #4]
 800324c:	f300 81bb 	bgt.w	80035c6 <_vfprintf_r+0xebe>
 8003250:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003252:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003254:	1c69      	adds	r1, r5, #1
 8003256:	441c      	add	r4, r3
 8003258:	2907      	cmp	r1, #7
 800325a:	910b      	str	r1, [sp, #44]	; 0x2c
 800325c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003260:	e9c6 2300 	strd	r2, r3, [r6]
 8003264:	f300 81bb 	bgt.w	80035de <_vfprintf_r+0xed6>
 8003268:	3608      	adds	r6, #8
 800326a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800326c:	1c53      	adds	r3, r2, #1
 800326e:	461d      	mov	r5, r3
 8003270:	9509      	str	r5, [sp, #36]	; 0x24
 8003272:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003274:	930e      	str	r3, [sp, #56]	; 0x38
 8003276:	2200      	movs	r2, #0
 8003278:	2300      	movs	r3, #0
 800327a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800327e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003282:	f106 0b08 	add.w	fp, r6, #8
 8003286:	f7fd febf 	bl	8001008 <__aeabi_dcmpeq>
 800328a:	2800      	cmp	r0, #0
 800328c:	f040 80c2 	bne.w	8003414 <_vfprintf_r+0xd0c>
 8003290:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003292:	f8c6 9004 	str.w	r9, [r6, #4]
 8003296:	3701      	adds	r7, #1
 8003298:	444c      	add	r4, r9
 800329a:	2d07      	cmp	r5, #7
 800329c:	6037      	str	r7, [r6, #0]
 800329e:	942c      	str	r4, [sp, #176]	; 0xb0
 80032a0:	952b      	str	r5, [sp, #172]	; 0xac
 80032a2:	f300 80f9 	bgt.w	8003498 <_vfprintf_r+0xd90>
 80032a6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80032a8:	f106 0310 	add.w	r3, r6, #16
 80032ac:	3202      	adds	r2, #2
 80032ae:	465e      	mov	r6, fp
 80032b0:	9209      	str	r2, [sp, #36]	; 0x24
 80032b2:	469b      	mov	fp, r3
 80032b4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80032b6:	6072      	str	r2, [r6, #4]
 80032b8:	4414      	add	r4, r2
 80032ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80032bc:	942c      	str	r4, [sp, #176]	; 0xb0
 80032be:	ab26      	add	r3, sp, #152	; 0x98
 80032c0:	2a07      	cmp	r2, #7
 80032c2:	922b      	str	r2, [sp, #172]	; 0xac
 80032c4:	6033      	str	r3, [r6, #0]
 80032c6:	f77f ac70 	ble.w	8002baa <_vfprintf_r+0x4a2>
 80032ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80032cc:	9907      	ldr	r1, [sp, #28]
 80032ce:	9803      	ldr	r0, [sp, #12]
 80032d0:	f003 fd48 	bl	8006d64 <__sprint_r>
 80032d4:	2800      	cmp	r0, #0
 80032d6:	d18f      	bne.n	80031f8 <_vfprintf_r+0xaf0>
 80032d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032da:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032de:	e464      	b.n	8002baa <_vfprintf_r+0x4a2>
 80032e0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80032e2:	af56      	add	r7, sp, #344	; 0x158
 80032e4:	0923      	lsrs	r3, r4, #4
 80032e6:	f004 010f 	and.w	r1, r4, #15
 80032ea:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80032ee:	092a      	lsrs	r2, r5, #4
 80032f0:	461c      	mov	r4, r3
 80032f2:	4615      	mov	r5, r2
 80032f4:	5c43      	ldrb	r3, [r0, r1]
 80032f6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80032fa:	ea54 0305 	orrs.w	r3, r4, r5
 80032fe:	d1f1      	bne.n	80032e4 <_vfprintf_r+0xbdc>
 8003300:	9b04      	ldr	r3, [sp, #16]
 8003302:	1bdb      	subs	r3, r3, r7
 8003304:	9309      	str	r3, [sp, #36]	; 0x24
 8003306:	f7ff bb80 	b.w	8002a0a <_vfprintf_r+0x302>
 800330a:	46b1      	mov	r9, r6
 800330c:	e776      	b.n	80031fc <_vfprintf_r+0xaf4>
 800330e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003310:	9907      	ldr	r1, [sp, #28]
 8003312:	9803      	ldr	r0, [sp, #12]
 8003314:	f003 fd26 	bl	8006d64 <__sprint_r>
 8003318:	2800      	cmp	r0, #0
 800331a:	f47f af6d 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 800331e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003320:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003324:	f7ff bbdd 	b.w	8002ae2 <_vfprintf_r+0x3da>
 8003328:	aa2a      	add	r2, sp, #168	; 0xa8
 800332a:	9907      	ldr	r1, [sp, #28]
 800332c:	9803      	ldr	r0, [sp, #12]
 800332e:	f003 fd19 	bl	8006d64 <__sprint_r>
 8003332:	2800      	cmp	r0, #0
 8003334:	f47f af60 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 8003338:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800333a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800333e:	f7ff bbe0 	b.w	8002b02 <_vfprintf_r+0x3fa>
 8003342:	4698      	mov	r8, r3
 8003344:	2d00      	cmp	r5, #0
 8003346:	bf08      	it	eq
 8003348:	2c0a      	cmpeq	r4, #10
 800334a:	f080 8170 	bcs.w	800362e <_vfprintf_r+0xf26>
 800334e:	af56      	add	r7, sp, #344	; 0x158
 8003350:	3430      	adds	r4, #48	; 0x30
 8003352:	2301      	movs	r3, #1
 8003354:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003358:	9309      	str	r3, [sp, #36]	; 0x24
 800335a:	f7ff bb56 	b.w	8002a0a <_vfprintf_r+0x302>
 800335e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003360:	9907      	ldr	r1, [sp, #28]
 8003362:	9803      	ldr	r0, [sp, #12]
 8003364:	f003 fcfe 	bl	8006d64 <__sprint_r>
 8003368:	2800      	cmp	r0, #0
 800336a:	f47f af45 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 800336e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003370:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003374:	e406      	b.n	8002b84 <_vfprintf_r+0x47c>
 8003376:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003378:	2b00      	cmp	r3, #0
 800337a:	f340 8273 	ble.w	8003864 <_vfprintf_r+0x115c>
 800337e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003382:	4293      	cmp	r3, r2
 8003384:	bfa8      	it	ge
 8003386:	4613      	movge	r3, r2
 8003388:	2b00      	cmp	r3, #0
 800338a:	461d      	mov	r5, r3
 800338c:	dd0d      	ble.n	80033aa <_vfprintf_r+0xca2>
 800338e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003390:	f8cb 7000 	str.w	r7, [fp]
 8003394:	3301      	adds	r3, #1
 8003396:	442c      	add	r4, r5
 8003398:	2b07      	cmp	r3, #7
 800339a:	942c      	str	r4, [sp, #176]	; 0xb0
 800339c:	f8cb 5004 	str.w	r5, [fp, #4]
 80033a0:	932b      	str	r3, [sp, #172]	; 0xac
 80033a2:	f300 82c1 	bgt.w	8003928 <_vfprintf_r+0x1220>
 80033a6:	f10b 0b08 	add.w	fp, fp, #8
 80033aa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80033ac:	2d00      	cmp	r5, #0
 80033ae:	bfa8      	it	ge
 80033b0:	1b5b      	subge	r3, r3, r5
 80033b2:	2b00      	cmp	r3, #0
 80033b4:	461d      	mov	r5, r3
 80033b6:	f340 8099 	ble.w	80034ec <_vfprintf_r+0xde4>
 80033ba:	2d10      	cmp	r5, #16
 80033bc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033be:	4b2c      	ldr	r3, [pc, #176]	; (8003470 <_vfprintf_r+0xd68>)
 80033c0:	f340 83db 	ble.w	8003b7a <_vfprintf_r+0x1472>
 80033c4:	4618      	mov	r0, r3
 80033c6:	4621      	mov	r1, r4
 80033c8:	465b      	mov	r3, fp
 80033ca:	2610      	movs	r6, #16
 80033cc:	46bb      	mov	fp, r7
 80033ce:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80033d2:	9c07      	ldr	r4, [sp, #28]
 80033d4:	4607      	mov	r7, r0
 80033d6:	e004      	b.n	80033e2 <_vfprintf_r+0xcda>
 80033d8:	3308      	adds	r3, #8
 80033da:	3d10      	subs	r5, #16
 80033dc:	2d10      	cmp	r5, #16
 80033de:	f340 83c7 	ble.w	8003b70 <_vfprintf_r+0x1468>
 80033e2:	3201      	adds	r2, #1
 80033e4:	3110      	adds	r1, #16
 80033e6:	2a07      	cmp	r2, #7
 80033e8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80033ec:	e9c3 7600 	strd	r7, r6, [r3]
 80033f0:	ddf2      	ble.n	80033d8 <_vfprintf_r+0xcd0>
 80033f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80033f4:	4621      	mov	r1, r4
 80033f6:	4648      	mov	r0, r9
 80033f8:	f003 fcb4 	bl	8006d64 <__sprint_r>
 80033fc:	2800      	cmp	r0, #0
 80033fe:	f040 84a5 	bne.w	8003d4c <_vfprintf_r+0x1644>
 8003402:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003406:	ab2d      	add	r3, sp, #180	; 0xb4
 8003408:	e7e7      	b.n	80033da <_vfprintf_r+0xcd2>
 800340a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800340e:	af56      	add	r7, sp, #344	; 0x158
 8003410:	f7ff bafb 	b.w	8002a0a <_vfprintf_r+0x302>
 8003414:	f1b9 0f00 	cmp.w	r9, #0
 8003418:	f77f af4c 	ble.w	80032b4 <_vfprintf_r+0xbac>
 800341c:	f1b9 0f10 	cmp.w	r9, #16
 8003420:	4b13      	ldr	r3, [pc, #76]	; (8003470 <_vfprintf_r+0xd68>)
 8003422:	f340 8659 	ble.w	80040d8 <_vfprintf_r+0x19d0>
 8003426:	4619      	mov	r1, r3
 8003428:	4622      	mov	r2, r4
 800342a:	4633      	mov	r3, r6
 800342c:	2710      	movs	r7, #16
 800342e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003432:	9c07      	ldr	r4, [sp, #28]
 8003434:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003436:	460e      	mov	r6, r1
 8003438:	e007      	b.n	800344a <_vfprintf_r+0xd42>
 800343a:	3308      	adds	r3, #8
 800343c:	f1a9 0910 	sub.w	r9, r9, #16
 8003440:	f1b9 0f10 	cmp.w	r9, #16
 8003444:	f340 8353 	ble.w	8003aee <_vfprintf_r+0x13e6>
 8003448:	3501      	adds	r5, #1
 800344a:	3210      	adds	r2, #16
 800344c:	2d07      	cmp	r5, #7
 800344e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003452:	e9c3 6700 	strd	r6, r7, [r3]
 8003456:	ddf0      	ble.n	800343a <_vfprintf_r+0xd32>
 8003458:	aa2a      	add	r2, sp, #168	; 0xa8
 800345a:	4621      	mov	r1, r4
 800345c:	4658      	mov	r0, fp
 800345e:	f003 fc81 	bl	8006d64 <__sprint_r>
 8003462:	2800      	cmp	r0, #0
 8003464:	f040 8472 	bne.w	8003d4c <_vfprintf_r+0x1644>
 8003468:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800346c:	ab2d      	add	r3, sp, #180	; 0xb4
 800346e:	e7e5      	b.n	800343c <_vfprintf_r+0xd34>
 8003470:	0800746c 	.word	0x0800746c
 8003474:	f018 0f01 	tst.w	r8, #1
 8003478:	f47f aee0 	bne.w	800323c <_vfprintf_r+0xb34>
 800347c:	2201      	movs	r2, #1
 800347e:	2d07      	cmp	r5, #7
 8003480:	f8cb 7000 	str.w	r7, [fp]
 8003484:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003488:	f8cb 2004 	str.w	r2, [fp, #4]
 800348c:	dc04      	bgt.n	8003498 <_vfprintf_r+0xd90>
 800348e:	3302      	adds	r3, #2
 8003490:	9309      	str	r3, [sp, #36]	; 0x24
 8003492:	f10b 0b10 	add.w	fp, fp, #16
 8003496:	e70d      	b.n	80032b4 <_vfprintf_r+0xbac>
 8003498:	aa2a      	add	r2, sp, #168	; 0xa8
 800349a:	9907      	ldr	r1, [sp, #28]
 800349c:	9803      	ldr	r0, [sp, #12]
 800349e:	f003 fc61 	bl	8006d64 <__sprint_r>
 80034a2:	2800      	cmp	r0, #0
 80034a4:	f47f aea8 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 80034a8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80034ac:	3301      	adds	r3, #1
 80034ae:	9309      	str	r3, [sp, #36]	; 0x24
 80034b0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80034b4:	ae2d      	add	r6, sp, #180	; 0xb4
 80034b6:	e6fd      	b.n	80032b4 <_vfprintf_r+0xbac>
 80034b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ba:	9907      	ldr	r1, [sp, #28]
 80034bc:	9803      	ldr	r0, [sp, #12]
 80034be:	f003 fc51 	bl	8006d64 <__sprint_r>
 80034c2:	2800      	cmp	r0, #0
 80034c4:	f47f ae98 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 80034c8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80034cc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034ce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034d2:	f7ff baf6 	b.w	8002ac2 <_vfprintf_r+0x3ba>
 80034d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80034d8:	9907      	ldr	r1, [sp, #28]
 80034da:	9803      	ldr	r0, [sp, #12]
 80034dc:	f003 fc42 	bl	8006d64 <__sprint_r>
 80034e0:	2800      	cmp	r0, #0
 80034e2:	f47f ae89 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 80034e6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034ec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80034ee:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80034f2:	443b      	add	r3, r7
 80034f4:	4699      	mov	r9, r3
 80034f6:	f040 8357 	bne.w	8003ba8 <_vfprintf_r+0x14a0>
 80034fa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80034fc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80034fe:	4293      	cmp	r3, r2
 8003500:	db49      	blt.n	8003596 <_vfprintf_r+0xe8e>
 8003502:	f018 0f01 	tst.w	r8, #1
 8003506:	d146      	bne.n	8003596 <_vfprintf_r+0xe8e>
 8003508:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800350a:	18bd      	adds	r5, r7, r2
 800350c:	eba5 0509 	sub.w	r5, r5, r9
 8003510:	1ad3      	subs	r3, r2, r3
 8003512:	429d      	cmp	r5, r3
 8003514:	bfa8      	it	ge
 8003516:	461d      	movge	r5, r3
 8003518:	2d00      	cmp	r5, #0
 800351a:	dd0d      	ble.n	8003538 <_vfprintf_r+0xe30>
 800351c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800351e:	f8cb 9000 	str.w	r9, [fp]
 8003522:	3201      	adds	r2, #1
 8003524:	442c      	add	r4, r5
 8003526:	2a07      	cmp	r2, #7
 8003528:	942c      	str	r4, [sp, #176]	; 0xb0
 800352a:	f8cb 5004 	str.w	r5, [fp, #4]
 800352e:	922b      	str	r2, [sp, #172]	; 0xac
 8003530:	f300 8462 	bgt.w	8003df8 <_vfprintf_r+0x16f0>
 8003534:	f10b 0b08 	add.w	fp, fp, #8
 8003538:	2d00      	cmp	r5, #0
 800353a:	bfac      	ite	ge
 800353c:	1b5d      	subge	r5, r3, r5
 800353e:	461d      	movlt	r5, r3
 8003540:	2d00      	cmp	r5, #0
 8003542:	f77f ab32 	ble.w	8002baa <_vfprintf_r+0x4a2>
 8003546:	2d10      	cmp	r5, #16
 8003548:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800354a:	4bc5      	ldr	r3, [pc, #788]	; (8003860 <_vfprintf_r+0x1158>)
 800354c:	f340 80c4 	ble.w	80036d8 <_vfprintf_r+0xfd0>
 8003550:	4619      	mov	r1, r3
 8003552:	2610      	movs	r6, #16
 8003554:	4623      	mov	r3, r4
 8003556:	9f03      	ldr	r7, [sp, #12]
 8003558:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800355c:	460c      	mov	r4, r1
 800355e:	e005      	b.n	800356c <_vfprintf_r+0xe64>
 8003560:	f10b 0b08 	add.w	fp, fp, #8
 8003564:	3d10      	subs	r5, #16
 8003566:	2d10      	cmp	r5, #16
 8003568:	f340 80b3 	ble.w	80036d2 <_vfprintf_r+0xfca>
 800356c:	3201      	adds	r2, #1
 800356e:	3310      	adds	r3, #16
 8003570:	2a07      	cmp	r2, #7
 8003572:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003576:	e9cb 4600 	strd	r4, r6, [fp]
 800357a:	ddf1      	ble.n	8003560 <_vfprintf_r+0xe58>
 800357c:	aa2a      	add	r2, sp, #168	; 0xa8
 800357e:	4649      	mov	r1, r9
 8003580:	4638      	mov	r0, r7
 8003582:	f003 fbef 	bl	8006d64 <__sprint_r>
 8003586:	2800      	cmp	r0, #0
 8003588:	f47f ae38 	bne.w	80031fc <_vfprintf_r+0xaf4>
 800358c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003590:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003594:	e7e6      	b.n	8003564 <_vfprintf_r+0xe5c>
 8003596:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003598:	9916      	ldr	r1, [sp, #88]	; 0x58
 800359a:	f8cb 1000 	str.w	r1, [fp]
 800359e:	9915      	ldr	r1, [sp, #84]	; 0x54
 80035a0:	f8cb 1004 	str.w	r1, [fp, #4]
 80035a4:	3201      	adds	r2, #1
 80035a6:	440c      	add	r4, r1
 80035a8:	2a07      	cmp	r2, #7
 80035aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80035ac:	922b      	str	r2, [sp, #172]	; 0xac
 80035ae:	f300 828c 	bgt.w	8003aca <_vfprintf_r+0x13c2>
 80035b2:	f10b 0b08 	add.w	fp, fp, #8
 80035b6:	e7a7      	b.n	8003508 <_vfprintf_r+0xe00>
 80035b8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80035bc:	f002 fa94 	bl	8005ae8 <__retarget_lock_release_recursive>
 80035c0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80035c4:	e628      	b.n	8003218 <_vfprintf_r+0xb10>
 80035c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80035c8:	9907      	ldr	r1, [sp, #28]
 80035ca:	9803      	ldr	r0, [sp, #12]
 80035cc:	f003 fbca 	bl	8006d64 <__sprint_r>
 80035d0:	2800      	cmp	r0, #0
 80035d2:	f47f ae11 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 80035d6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80035da:	ae2d      	add	r6, sp, #180	; 0xb4
 80035dc:	e638      	b.n	8003250 <_vfprintf_r+0xb48>
 80035de:	aa2a      	add	r2, sp, #168	; 0xa8
 80035e0:	9907      	ldr	r1, [sp, #28]
 80035e2:	9803      	ldr	r0, [sp, #12]
 80035e4:	f003 fbbe 	bl	8006d64 <__sprint_r>
 80035e8:	2800      	cmp	r0, #0
 80035ea:	f47f ae05 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 80035ee:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80035f2:	ae2d      	add	r6, sp, #180	; 0xb4
 80035f4:	930b      	str	r3, [sp, #44]	; 0x2c
 80035f6:	e638      	b.n	800326a <_vfprintf_r+0xb62>
 80035f8:	6814      	ldr	r4, [r2, #0]
 80035fa:	9308      	str	r3, [sp, #32]
 80035fc:	2500      	movs	r5, #0
 80035fe:	f7ff bb95 	b.w	8002d2c <_vfprintf_r+0x624>
 8003602:	6814      	ldr	r4, [r2, #0]
 8003604:	9308      	str	r3, [sp, #32]
 8003606:	2500      	movs	r5, #0
 8003608:	f7ff b9ae 	b.w	8002968 <_vfprintf_r+0x260>
 800360c:	680c      	ldr	r4, [r1, #0]
 800360e:	9208      	str	r2, [sp, #32]
 8003610:	17e5      	asrs	r5, r4, #31
 8003612:	4620      	mov	r0, r4
 8003614:	4629      	mov	r1, r5
 8003616:	f7ff b9d2 	b.w	80029be <_vfprintf_r+0x2b6>
 800361a:	6814      	ldr	r4, [r2, #0]
 800361c:	9108      	str	r1, [sp, #32]
 800361e:	2201      	movs	r2, #1
 8003620:	2500      	movs	r5, #0
 8003622:	f7ff bb32 	b.w	8002c8a <_vfprintf_r+0x582>
 8003626:	2a01      	cmp	r2, #1
 8003628:	f47f ab3c 	bne.w	8002ca4 <_vfprintf_r+0x59c>
 800362c:	e68f      	b.n	800334e <_vfprintf_r+0xc46>
 800362e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003632:	2200      	movs	r2, #0
 8003634:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003638:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800363c:	af56      	add	r7, sp, #344	; 0x158
 800363e:	4692      	mov	sl, r2
 8003640:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003644:	461e      	mov	r6, r3
 8003646:	e00a      	b.n	800365e <_vfprintf_r+0xf56>
 8003648:	2300      	movs	r3, #0
 800364a:	4620      	mov	r0, r4
 800364c:	4629      	mov	r1, r5
 800364e:	220a      	movs	r2, #10
 8003650:	f7fc fdd6 	bl	8000200 <__aeabi_uldivmod>
 8003654:	4604      	mov	r4, r0
 8003656:	460d      	mov	r5, r1
 8003658:	ea54 0305 	orrs.w	r3, r4, r5
 800365c:	d029      	beq.n	80036b2 <_vfprintf_r+0xfaa>
 800365e:	220a      	movs	r2, #10
 8003660:	2300      	movs	r3, #0
 8003662:	4620      	mov	r0, r4
 8003664:	4629      	mov	r1, r5
 8003666:	f7fc fdcb 	bl	8000200 <__aeabi_uldivmod>
 800366a:	3230      	adds	r2, #48	; 0x30
 800366c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003670:	f10a 0a01 	add.w	sl, sl, #1
 8003674:	3f01      	subs	r7, #1
 8003676:	2e00      	cmp	r6, #0
 8003678:	d0e6      	beq.n	8003648 <_vfprintf_r+0xf40>
 800367a:	f898 3000 	ldrb.w	r3, [r8]
 800367e:	459a      	cmp	sl, r3
 8003680:	d1e2      	bne.n	8003648 <_vfprintf_r+0xf40>
 8003682:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003686:	d0df      	beq.n	8003648 <_vfprintf_r+0xf40>
 8003688:	2d00      	cmp	r5, #0
 800368a:	bf08      	it	eq
 800368c:	2c0a      	cmpeq	r4, #10
 800368e:	d3db      	bcc.n	8003648 <_vfprintf_r+0xf40>
 8003690:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003692:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003694:	1aff      	subs	r7, r7, r3
 8003696:	461a      	mov	r2, r3
 8003698:	4638      	mov	r0, r7
 800369a:	f003 faf5 	bl	8006c88 <strncpy>
 800369e:	f898 3001 	ldrb.w	r3, [r8, #1]
 80036a2:	2b00      	cmp	r3, #0
 80036a4:	f000 8496 	beq.w	8003fd4 <_vfprintf_r+0x18cc>
 80036a8:	f108 0801 	add.w	r8, r8, #1
 80036ac:	f04f 0a00 	mov.w	sl, #0
 80036b0:	e7ca      	b.n	8003648 <_vfprintf_r+0xf40>
 80036b2:	9b04      	ldr	r3, [sp, #16]
 80036b4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80036b8:	1bdb      	subs	r3, r3, r7
 80036ba:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80036be:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80036c0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80036c4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80036c8:	9309      	str	r3, [sp, #36]	; 0x24
 80036ca:	f7ff b99e 	b.w	8002a0a <_vfprintf_r+0x302>
 80036ce:	46c1      	mov	r9, r8
 80036d0:	e594      	b.n	80031fc <_vfprintf_r+0xaf4>
 80036d2:	4621      	mov	r1, r4
 80036d4:	461c      	mov	r4, r3
 80036d6:	460b      	mov	r3, r1
 80036d8:	3201      	adds	r2, #1
 80036da:	442c      	add	r4, r5
 80036dc:	2a07      	cmp	r2, #7
 80036de:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80036e2:	e9cb 3500 	strd	r3, r5, [fp]
 80036e6:	f77f aa5e 	ble.w	8002ba6 <_vfprintf_r+0x49e>
 80036ea:	e5ee      	b.n	80032ca <_vfprintf_r+0xbc2>
 80036ec:	f018 0f10 	tst.w	r8, #16
 80036f0:	f040 80f8 	bne.w	80038e4 <_vfprintf_r+0x11dc>
 80036f4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80036f8:	f000 8351 	beq.w	8003d9e <_vfprintf_r+0x1696>
 80036fc:	9a05      	ldr	r2, [sp, #20]
 80036fe:	801a      	strh	r2, [r3, #0]
 8003700:	4657      	mov	r7, sl
 8003702:	f7ff baa7 	b.w	8002c54 <_vfprintf_r+0x54c>
 8003706:	aa2a      	add	r2, sp, #168	; 0xa8
 8003708:	9907      	ldr	r1, [sp, #28]
 800370a:	9803      	ldr	r0, [sp, #12]
 800370c:	f003 fb2a 	bl	8006d64 <__sprint_r>
 8003710:	2800      	cmp	r0, #0
 8003712:	f47f ad71 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 8003716:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003718:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800371c:	f7ff b9f5 	b.w	8002b0a <_vfprintf_r+0x402>
 8003720:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003724:	4602      	mov	r2, r0
 8003726:	460b      	mov	r3, r1
 8003728:	f7fd fca0 	bl	800106c <__aeabi_dcmpun>
 800372c:	2800      	cmp	r0, #0
 800372e:	f040 8491 	bne.w	8004054 <_vfprintf_r+0x194c>
 8003732:	2e61      	cmp	r6, #97	; 0x61
 8003734:	f000 8111 	beq.w	800395a <_vfprintf_r+0x1252>
 8003738:	2e41      	cmp	r6, #65	; 0x41
 800373a:	f000 8377 	beq.w	8003e2c <_vfprintf_r+0x1724>
 800373e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003742:	f026 0220 	bic.w	r2, r6, #32
 8003746:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800374a:	930e      	str	r3, [sp, #56]	; 0x38
 800374c:	9204      	str	r2, [sp, #16]
 800374e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003750:	f000 842d 	beq.w	8003fae <_vfprintf_r+0x18a6>
 8003754:	2a47      	cmp	r2, #71	; 0x47
 8003756:	f000 8424 	beq.w	8003fa2 <_vfprintf_r+0x189a>
 800375a:	2b00      	cmp	r3, #0
 800375c:	f2c0 82f9 	blt.w	8003d52 <_vfprintf_r+0x164a>
 8003760:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003764:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003768:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800376c:	2e66      	cmp	r6, #102	; 0x66
 800376e:	f000 83eb 	beq.w	8003f48 <_vfprintf_r+0x1840>
 8003772:	2e46      	cmp	r6, #70	; 0x46
 8003774:	f000 847e 	beq.w	8004074 <_vfprintf_r+0x196c>
 8003778:	9b04      	ldr	r3, [sp, #16]
 800377a:	9803      	ldr	r0, [sp, #12]
 800377c:	2b45      	cmp	r3, #69	; 0x45
 800377e:	bf0c      	ite	eq
 8003780:	f109 0501 	addeq.w	r5, r9, #1
 8003784:	464d      	movne	r5, r9
 8003786:	aa28      	add	r2, sp, #160	; 0xa0
 8003788:	ab25      	add	r3, sp, #148	; 0x94
 800378a:	e9cd 3200 	strd	r3, r2, [sp]
 800378e:	2102      	movs	r1, #2
 8003790:	ab24      	add	r3, sp, #144	; 0x90
 8003792:	462a      	mov	r2, r5
 8003794:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003798:	f000 fe3e 	bl	8004418 <_dtoa_r>
 800379c:	2e67      	cmp	r6, #103	; 0x67
 800379e:	4607      	mov	r7, r0
 80037a0:	f040 849c 	bne.w	80040dc <_vfprintf_r+0x19d4>
 80037a4:	f018 0f01 	tst.w	r8, #1
 80037a8:	f040 83f9 	bne.w	8003f9e <_vfprintf_r+0x1896>
 80037ac:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80037ae:	4640      	mov	r0, r8
 80037b0:	1bdb      	subs	r3, r3, r7
 80037b2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80037b6:	9310      	str	r3, [sp, #64]	; 0x40
 80037b8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037ba:	9311      	str	r3, [sp, #68]	; 0x44
 80037bc:	9b04      	ldr	r3, [sp, #16]
 80037be:	2b47      	cmp	r3, #71	; 0x47
 80037c0:	f000 81e7 	beq.w	8003b92 <_vfprintf_r+0x148a>
 80037c4:	9b04      	ldr	r3, [sp, #16]
 80037c6:	2b46      	cmp	r3, #70	; 0x46
 80037c8:	f000 8300 	beq.w	8003dcc <_vfprintf_r+0x16c4>
 80037cc:	9904      	ldr	r1, [sp, #16]
 80037ce:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80037d0:	b2f2      	uxtb	r2, r6
 80037d2:	2941      	cmp	r1, #65	; 0x41
 80037d4:	bf08      	it	eq
 80037d6:	320f      	addeq	r2, #15
 80037d8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80037dc:	bf06      	itte	eq
 80037de:	b2d2      	uxtbeq	r2, r2
 80037e0:	2101      	moveq	r1, #1
 80037e2:	2100      	movne	r1, #0
 80037e4:	2b00      	cmp	r3, #0
 80037e6:	9324      	str	r3, [sp, #144]	; 0x90
 80037e8:	bfb8      	it	lt
 80037ea:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80037ec:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80037f0:	bfba      	itte	lt
 80037f2:	f1c3 0301 	rsblt	r3, r3, #1
 80037f6:	222d      	movlt	r2, #45	; 0x2d
 80037f8:	222b      	movge	r2, #43	; 0x2b
 80037fa:	2b09      	cmp	r3, #9
 80037fc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003800:	f300 83f9 	bgt.w	8003ff6 <_vfprintf_r+0x18ee>
 8003804:	2900      	cmp	r1, #0
 8003806:	f040 8487 	bne.w	8004118 <_vfprintf_r+0x1a10>
 800380a:	2230      	movs	r2, #48	; 0x30
 800380c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003810:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003814:	3330      	adds	r3, #48	; 0x30
 8003816:	7013      	strb	r3, [r2, #0]
 8003818:	1c53      	adds	r3, r2, #1
 800381a:	aa26      	add	r2, sp, #152	; 0x98
 800381c:	1a9b      	subs	r3, r3, r2
 800381e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003820:	9319      	str	r3, [sp, #100]	; 0x64
 8003822:	2a01      	cmp	r2, #1
 8003824:	4413      	add	r3, r2
 8003826:	9309      	str	r3, [sp, #36]	; 0x24
 8003828:	f340 8442 	ble.w	80040b0 <_vfprintf_r+0x19a8>
 800382c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800382e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003830:	4413      	add	r3, r2
 8003832:	9309      	str	r3, [sp, #36]	; 0x24
 8003834:	2300      	movs	r3, #0
 8003836:	930f      	str	r3, [sp, #60]	; 0x3c
 8003838:	9314      	str	r3, [sp, #80]	; 0x50
 800383a:	9311      	str	r3, [sp, #68]	; 0x44
 800383c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800383e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003842:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003846:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800384a:	9304      	str	r3, [sp, #16]
 800384c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800384e:	2b00      	cmp	r3, #0
 8003850:	f040 8275 	bne.w	8003d3e <_vfprintf_r+0x1636>
 8003854:	4699      	mov	r9, r3
 8003856:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800385a:	f7ff b8e2 	b.w	8002a22 <_vfprintf_r+0x31a>
 800385e:	bf00      	nop
 8003860:	0800746c 	.word	0x0800746c
 8003864:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003866:	49bd      	ldr	r1, [pc, #756]	; (8003b5c <_vfprintf_r+0x1454>)
 8003868:	f8cb 1000 	str.w	r1, [fp]
 800386c:	3201      	adds	r2, #1
 800386e:	3401      	adds	r4, #1
 8003870:	2101      	movs	r1, #1
 8003872:	2a07      	cmp	r2, #7
 8003874:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003878:	f8cb 1004 	str.w	r1, [fp, #4]
 800387c:	dc60      	bgt.n	8003940 <_vfprintf_r+0x1238>
 800387e:	f10b 0b08 	add.w	fp, fp, #8
 8003882:	b92b      	cbnz	r3, 8003890 <_vfprintf_r+0x1188>
 8003884:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003886:	b91a      	cbnz	r2, 8003890 <_vfprintf_r+0x1188>
 8003888:	f018 0f01 	tst.w	r8, #1
 800388c:	f43f a98d 	beq.w	8002baa <_vfprintf_r+0x4a2>
 8003890:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003892:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003894:	f8cb 1000 	str.w	r1, [fp]
 8003898:	9915      	ldr	r1, [sp, #84]	; 0x54
 800389a:	f8cb 1004 	str.w	r1, [fp, #4]
 800389e:	3201      	adds	r2, #1
 80038a0:	440c      	add	r4, r1
 80038a2:	2a07      	cmp	r2, #7
 80038a4:	942c      	str	r4, [sp, #176]	; 0xb0
 80038a6:	922b      	str	r2, [sp, #172]	; 0xac
 80038a8:	f300 8282 	bgt.w	8003db0 <_vfprintf_r+0x16a8>
 80038ac:	f10b 0b08 	add.w	fp, fp, #8
 80038b0:	2b00      	cmp	r3, #0
 80038b2:	f2c0 82e7 	blt.w	8003e84 <_vfprintf_r+0x177c>
 80038b6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038b8:	3201      	adds	r2, #1
 80038ba:	441c      	add	r4, r3
 80038bc:	2a07      	cmp	r2, #7
 80038be:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038c2:	e9cb 7300 	strd	r7, r3, [fp]
 80038c6:	f77f a96e 	ble.w	8002ba6 <_vfprintf_r+0x49e>
 80038ca:	e4fe      	b.n	80032ca <_vfprintf_r+0xbc2>
 80038cc:	aa2a      	add	r2, sp, #168	; 0xa8
 80038ce:	9907      	ldr	r1, [sp, #28]
 80038d0:	9803      	ldr	r0, [sp, #12]
 80038d2:	f003 fa47 	bl	8006d64 <__sprint_r>
 80038d6:	2800      	cmp	r0, #0
 80038d8:	f47f ac8e 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 80038dc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038e0:	f7ff bbf0 	b.w	80030c4 <_vfprintf_r+0x9bc>
 80038e4:	9a05      	ldr	r2, [sp, #20]
 80038e6:	601a      	str	r2, [r3, #0]
 80038e8:	4657      	mov	r7, sl
 80038ea:	f7ff b9b3 	b.w	8002c54 <_vfprintf_r+0x54c>
 80038ee:	8814      	ldrh	r4, [r2, #0]
 80038f0:	9108      	str	r1, [sp, #32]
 80038f2:	2500      	movs	r5, #0
 80038f4:	2201      	movs	r2, #1
 80038f6:	f7ff b9c8 	b.w	8002c8a <_vfprintf_r+0x582>
 80038fa:	8814      	ldrh	r4, [r2, #0]
 80038fc:	9308      	str	r3, [sp, #32]
 80038fe:	2500      	movs	r5, #0
 8003900:	f7ff ba14 	b.w	8002d2c <_vfprintf_r+0x624>
 8003904:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003908:	9208      	str	r2, [sp, #32]
 800390a:	17e5      	asrs	r5, r4, #31
 800390c:	4620      	mov	r0, r4
 800390e:	4629      	mov	r1, r5
 8003910:	f7ff b855 	b.w	80029be <_vfprintf_r+0x2b6>
 8003914:	8814      	ldrh	r4, [r2, #0]
 8003916:	9308      	str	r3, [sp, #32]
 8003918:	2500      	movs	r5, #0
 800391a:	f7ff b825 	b.w	8002968 <_vfprintf_r+0x260>
 800391e:	222d      	movs	r2, #45	; 0x2d
 8003920:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003924:	f7ff baa2 	b.w	8002e6c <_vfprintf_r+0x764>
 8003928:	aa2a      	add	r2, sp, #168	; 0xa8
 800392a:	9907      	ldr	r1, [sp, #28]
 800392c:	9803      	ldr	r0, [sp, #12]
 800392e:	f003 fa19 	bl	8006d64 <__sprint_r>
 8003932:	2800      	cmp	r0, #0
 8003934:	f47f ac60 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 8003938:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800393a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800393e:	e534      	b.n	80033aa <_vfprintf_r+0xca2>
 8003940:	aa2a      	add	r2, sp, #168	; 0xa8
 8003942:	9907      	ldr	r1, [sp, #28]
 8003944:	9803      	ldr	r0, [sp, #12]
 8003946:	f003 fa0d 	bl	8006d64 <__sprint_r>
 800394a:	2800      	cmp	r0, #0
 800394c:	f47f ac54 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 8003950:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003952:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003954:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003958:	e793      	b.n	8003882 <_vfprintf_r+0x117a>
 800395a:	2330      	movs	r3, #48	; 0x30
 800395c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003960:	2378      	movs	r3, #120	; 0x78
 8003962:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003966:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800396a:	f048 0402 	orr.w	r4, r8, #2
 800396e:	f300 82b0 	bgt.w	8003ed2 <_vfprintf_r+0x17ca>
 8003972:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003976:	930e      	str	r3, [sp, #56]	; 0x38
 8003978:	f026 0320 	bic.w	r3, r6, #32
 800397c:	9304      	str	r3, [sp, #16]
 800397e:	2200      	movs	r2, #0
 8003980:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003982:	920a      	str	r2, [sp, #40]	; 0x28
 8003984:	46a0      	mov	r8, r4
 8003986:	af3d      	add	r7, sp, #244	; 0xf4
 8003988:	2b00      	cmp	r3, #0
 800398a:	f2c0 81e3 	blt.w	8003d54 <_vfprintf_r+0x164c>
 800398e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003992:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003996:	2300      	movs	r3, #0
 8003998:	930b      	str	r3, [sp, #44]	; 0x2c
 800399a:	2e61      	cmp	r6, #97	; 0x61
 800399c:	f000 8255 	beq.w	8003e4a <_vfprintf_r+0x1742>
 80039a0:	2e41      	cmp	r6, #65	; 0x41
 80039a2:	f47f aee3 	bne.w	800376c <_vfprintf_r+0x1064>
 80039a6:	a824      	add	r0, sp, #144	; 0x90
 80039a8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80039ac:	f003 f8e2 	bl	8006b74 <frexp>
 80039b0:	2200      	movs	r2, #0
 80039b2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80039b6:	ec51 0b10 	vmov	r0, r1, d0
 80039ba:	f7fd f8bd 	bl	8000b38 <__aeabi_dmul>
 80039be:	2200      	movs	r2, #0
 80039c0:	2300      	movs	r3, #0
 80039c2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80039c6:	f7fd fb1f 	bl	8001008 <__aeabi_dcmpeq>
 80039ca:	2800      	cmp	r0, #0
 80039cc:	f040 8305 	bne.w	8003fda <_vfprintf_r+0x18d2>
 80039d0:	4b63      	ldr	r3, [pc, #396]	; (8003b60 <_vfprintf_r+0x1458>)
 80039d2:	9309      	str	r3, [sp, #36]	; 0x24
 80039d4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80039d8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80039dc:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80039e0:	9721      	str	r7, [sp, #132]	; 0x84
 80039e2:	46b9      	mov	r9, r7
 80039e4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80039e8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80039ec:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80039f0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80039f4:	e003      	b.n	80039fe <_vfprintf_r+0x12f6>
 80039f6:	f7fd fb07 	bl	8001008 <__aeabi_dcmpeq>
 80039fa:	bb20      	cbnz	r0, 8003a46 <_vfprintf_r+0x133e>
 80039fc:	46a9      	mov	r9, r5
 80039fe:	2200      	movs	r2, #0
 8003a00:	4b58      	ldr	r3, [pc, #352]	; (8003b64 <_vfprintf_r+0x145c>)
 8003a02:	4630      	mov	r0, r6
 8003a04:	4639      	mov	r1, r7
 8003a06:	f7fd f897 	bl	8000b38 <__aeabi_dmul>
 8003a0a:	460f      	mov	r7, r1
 8003a0c:	4606      	mov	r6, r0
 8003a0e:	f7fd fb43 	bl	8001098 <__aeabi_d2iz>
 8003a12:	4680      	mov	r8, r0
 8003a14:	f7fd f826 	bl	8000a64 <__aeabi_i2d>
 8003a18:	4602      	mov	r2, r0
 8003a1a:	460b      	mov	r3, r1
 8003a1c:	4630      	mov	r0, r6
 8003a1e:	4639      	mov	r1, r7
 8003a20:	f7fc fed2 	bl	80007c8 <__aeabi_dsub>
 8003a24:	464d      	mov	r5, r9
 8003a26:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003a2a:	f805 cb01 	strb.w	ip, [r5], #1
 8003a2e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003a32:	46a3      	mov	fp, r4
 8003a34:	4606      	mov	r6, r0
 8003a36:	460f      	mov	r7, r1
 8003a38:	f04f 0200 	mov.w	r2, #0
 8003a3c:	f04f 0300 	mov.w	r3, #0
 8003a40:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003a44:	d1d7      	bne.n	80039f6 <_vfprintf_r+0x12ee>
 8003a46:	4630      	mov	r0, r6
 8003a48:	4639      	mov	r1, r7
 8003a4a:	2200      	movs	r2, #0
 8003a4c:	4b46      	ldr	r3, [pc, #280]	; (8003b68 <_vfprintf_r+0x1460>)
 8003a4e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003a52:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003a54:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003a58:	4644      	mov	r4, r8
 8003a5a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003a5e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003a62:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003a66:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003a6a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003a6c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a70:	f7fd faf2 	bl	8001058 <__aeabi_dcmpgt>
 8003a74:	2800      	cmp	r0, #0
 8003a76:	f040 8176 	bne.w	8003d66 <_vfprintf_r+0x165e>
 8003a7a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003a7e:	2200      	movs	r2, #0
 8003a80:	4b39      	ldr	r3, [pc, #228]	; (8003b68 <_vfprintf_r+0x1460>)
 8003a82:	f7fd fac1 	bl	8001008 <__aeabi_dcmpeq>
 8003a86:	b110      	cbz	r0, 8003a8e <_vfprintf_r+0x1386>
 8003a88:	07e2      	lsls	r2, r4, #31
 8003a8a:	f100 816c 	bmi.w	8003d66 <_vfprintf_r+0x165e>
 8003a8e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a90:	2b00      	cmp	r3, #0
 8003a92:	db07      	blt.n	8003aa4 <_vfprintf_r+0x139c>
 8003a94:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a96:	3301      	adds	r3, #1
 8003a98:	442b      	add	r3, r5
 8003a9a:	2230      	movs	r2, #48	; 0x30
 8003a9c:	f805 2b01 	strb.w	r2, [r5], #1
 8003aa0:	42ab      	cmp	r3, r5
 8003aa2:	d1fb      	bne.n	8003a9c <_vfprintf_r+0x1394>
 8003aa4:	1beb      	subs	r3, r5, r7
 8003aa6:	4640      	mov	r0, r8
 8003aa8:	9310      	str	r3, [sp, #64]	; 0x40
 8003aaa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003aae:	e683      	b.n	80037b8 <_vfprintf_r+0x10b0>
 8003ab0:	f8cd 9010 	str.w	r9, [sp, #16]
 8003ab4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003ab8:	9408      	str	r4, [sp, #32]
 8003aba:	4681      	mov	r9, r0
 8003abc:	900f      	str	r0, [sp, #60]	; 0x3c
 8003abe:	9014      	str	r0, [sp, #80]	; 0x50
 8003ac0:	9011      	str	r0, [sp, #68]	; 0x44
 8003ac2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003ac6:	f7fe bfac 	b.w	8002a22 <_vfprintf_r+0x31a>
 8003aca:	aa2a      	add	r2, sp, #168	; 0xa8
 8003acc:	9907      	ldr	r1, [sp, #28]
 8003ace:	9803      	ldr	r0, [sp, #12]
 8003ad0:	f003 f948 	bl	8006d64 <__sprint_r>
 8003ad4:	2800      	cmp	r0, #0
 8003ad6:	f47f ab8f 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 8003ada:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003adc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ade:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ae2:	e511      	b.n	8003508 <_vfprintf_r+0xe00>
 8003ae4:	4252      	negs	r2, r2
 8003ae6:	9206      	str	r2, [sp, #24]
 8003ae8:	9308      	str	r3, [sp, #32]
 8003aea:	f7ff b96d 	b.w	8002dc8 <_vfprintf_r+0x6c0>
 8003aee:	4614      	mov	r4, r2
 8003af0:	4632      	mov	r2, r6
 8003af2:	461e      	mov	r6, r3
 8003af4:	4613      	mov	r3, r2
 8003af6:	462a      	mov	r2, r5
 8003af8:	3201      	adds	r2, #1
 8003afa:	9209      	str	r2, [sp, #36]	; 0x24
 8003afc:	f106 0208 	add.w	r2, r6, #8
 8003b00:	e9c6 3900 	strd	r3, r9, [r6]
 8003b04:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b06:	932b      	str	r3, [sp, #172]	; 0xac
 8003b08:	444c      	add	r4, r9
 8003b0a:	2b07      	cmp	r3, #7
 8003b0c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003b0e:	f73f acc3 	bgt.w	8003498 <_vfprintf_r+0xd90>
 8003b12:	3301      	adds	r3, #1
 8003b14:	9309      	str	r3, [sp, #36]	; 0x24
 8003b16:	f102 0b08 	add.w	fp, r2, #8
 8003b1a:	4616      	mov	r6, r2
 8003b1c:	f7ff bbca 	b.w	80032b4 <_vfprintf_r+0xbac>
 8003b20:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b22:	9907      	ldr	r1, [sp, #28]
 8003b24:	9803      	ldr	r0, [sp, #12]
 8003b26:	f003 f91d 	bl	8006d64 <__sprint_r>
 8003b2a:	2800      	cmp	r0, #0
 8003b2c:	f47f ab64 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 8003b30:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b32:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b36:	f7ff bade 	b.w	80030f6 <_vfprintf_r+0x9ee>
 8003b3a:	464b      	mov	r3, r9
 8003b3c:	2b06      	cmp	r3, #6
 8003b3e:	bf28      	it	cs
 8003b40:	2306      	movcs	r3, #6
 8003b42:	46b9      	mov	r9, r7
 8003b44:	970f      	str	r7, [sp, #60]	; 0x3c
 8003b46:	9714      	str	r7, [sp, #80]	; 0x50
 8003b48:	9711      	str	r7, [sp, #68]	; 0x44
 8003b4a:	970a      	str	r7, [sp, #40]	; 0x28
 8003b4c:	463a      	mov	r2, r7
 8003b4e:	9304      	str	r3, [sp, #16]
 8003b50:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003b54:	4f05      	ldr	r7, [pc, #20]	; (8003b6c <_vfprintf_r+0x1464>)
 8003b56:	f7fe bf64 	b.w	8002a22 <_vfprintf_r+0x31a>
 8003b5a:	bf00      	nop
 8003b5c:	08007458 	.word	0x08007458
 8003b60:	0800743c 	.word	0x0800743c
 8003b64:	40300000 	.word	0x40300000
 8003b68:	3fe00000 	.word	0x3fe00000
 8003b6c:	08007450 	.word	0x08007450
 8003b70:	460c      	mov	r4, r1
 8003b72:	4639      	mov	r1, r7
 8003b74:	465f      	mov	r7, fp
 8003b76:	469b      	mov	fp, r3
 8003b78:	460b      	mov	r3, r1
 8003b7a:	3201      	adds	r2, #1
 8003b7c:	442c      	add	r4, r5
 8003b7e:	2a07      	cmp	r2, #7
 8003b80:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b84:	e9cb 3500 	strd	r3, r5, [fp]
 8003b88:	f73f aca5 	bgt.w	80034d6 <_vfprintf_r+0xdce>
 8003b8c:	f10b 0b08 	add.w	fp, fp, #8
 8003b90:	e4ac      	b.n	80034ec <_vfprintf_r+0xde4>
 8003b92:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b94:	1cda      	adds	r2, r3, #3
 8003b96:	db02      	blt.n	8003b9e <_vfprintf_r+0x1496>
 8003b98:	4599      	cmp	r9, r3
 8003b9a:	f280 80b5 	bge.w	8003d08 <_vfprintf_r+0x1600>
 8003b9e:	3e02      	subs	r6, #2
 8003ba0:	f026 0320 	bic.w	r3, r6, #32
 8003ba4:	9304      	str	r3, [sp, #16]
 8003ba6:	e611      	b.n	80037cc <_vfprintf_r+0x10c4>
 8003ba8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003baa:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003bae:	465a      	mov	r2, fp
 8003bb0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003bb4:	18fb      	adds	r3, r7, r3
 8003bb6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003bba:	970c      	str	r7, [sp, #48]	; 0x30
 8003bbc:	4eaf      	ldr	r6, [pc, #700]	; (8003e7c <_vfprintf_r+0x1774>)
 8003bbe:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003bc2:	9309      	str	r3, [sp, #36]	; 0x24
 8003bc4:	464f      	mov	r7, r9
 8003bc6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003bca:	4621      	mov	r1, r4
 8003bcc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003bce:	2b00      	cmp	r3, #0
 8003bd0:	d05b      	beq.n	8003c8a <_vfprintf_r+0x1582>
 8003bd2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003bd4:	2b00      	cmp	r3, #0
 8003bd6:	d154      	bne.n	8003c82 <_vfprintf_r+0x157a>
 8003bd8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003bda:	3b01      	subs	r3, #1
 8003bdc:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003be0:	9314      	str	r3, [sp, #80]	; 0x50
 8003be2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003be4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003be6:	6010      	str	r0, [r2, #0]
 8003be8:	3301      	adds	r3, #1
 8003bea:	4459      	add	r1, fp
 8003bec:	2b07      	cmp	r3, #7
 8003bee:	912c      	str	r1, [sp, #176]	; 0xb0
 8003bf0:	f8c2 b004 	str.w	fp, [r2, #4]
 8003bf4:	932b      	str	r3, [sp, #172]	; 0xac
 8003bf6:	dc68      	bgt.n	8003cca <_vfprintf_r+0x15c2>
 8003bf8:	3208      	adds	r2, #8
 8003bfa:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003bfc:	f898 3000 	ldrb.w	r3, [r8]
 8003c00:	1bc5      	subs	r5, r0, r7
 8003c02:	429d      	cmp	r5, r3
 8003c04:	bfa8      	it	ge
 8003c06:	461d      	movge	r5, r3
 8003c08:	2d00      	cmp	r5, #0
 8003c0a:	dd0b      	ble.n	8003c24 <_vfprintf_r+0x151c>
 8003c0c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003c0e:	6017      	str	r7, [r2, #0]
 8003c10:	3301      	adds	r3, #1
 8003c12:	4429      	add	r1, r5
 8003c14:	2b07      	cmp	r3, #7
 8003c16:	912c      	str	r1, [sp, #176]	; 0xb0
 8003c18:	6055      	str	r5, [r2, #4]
 8003c1a:	932b      	str	r3, [sp, #172]	; 0xac
 8003c1c:	dc5e      	bgt.n	8003cdc <_vfprintf_r+0x15d4>
 8003c1e:	f898 3000 	ldrb.w	r3, [r8]
 8003c22:	3208      	adds	r2, #8
 8003c24:	2d00      	cmp	r5, #0
 8003c26:	bfac      	ite	ge
 8003c28:	1b5d      	subge	r5, r3, r5
 8003c2a:	461d      	movlt	r5, r3
 8003c2c:	2d00      	cmp	r5, #0
 8003c2e:	dd26      	ble.n	8003c7e <_vfprintf_r+0x1576>
 8003c30:	2d10      	cmp	r5, #16
 8003c32:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003c34:	dd3c      	ble.n	8003cb0 <_vfprintf_r+0x15a8>
 8003c36:	2410      	movs	r4, #16
 8003c38:	e003      	b.n	8003c42 <_vfprintf_r+0x153a>
 8003c3a:	3208      	adds	r2, #8
 8003c3c:	3d10      	subs	r5, #16
 8003c3e:	2d10      	cmp	r5, #16
 8003c40:	dd36      	ble.n	8003cb0 <_vfprintf_r+0x15a8>
 8003c42:	3001      	adds	r0, #1
 8003c44:	3110      	adds	r1, #16
 8003c46:	2807      	cmp	r0, #7
 8003c48:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003c4c:	e9c2 6400 	strd	r6, r4, [r2]
 8003c50:	ddf3      	ble.n	8003c3a <_vfprintf_r+0x1532>
 8003c52:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c54:	4651      	mov	r1, sl
 8003c56:	4648      	mov	r0, r9
 8003c58:	f003 f884 	bl	8006d64 <__sprint_r>
 8003c5c:	2800      	cmp	r0, #0
 8003c5e:	d150      	bne.n	8003d02 <_vfprintf_r+0x15fa>
 8003c60:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003c64:	aa2d      	add	r2, sp, #180	; 0xb4
 8003c66:	e7e9      	b.n	8003c3c <_vfprintf_r+0x1534>
 8003c68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c6a:	4651      	mov	r1, sl
 8003c6c:	4648      	mov	r0, r9
 8003c6e:	f003 f879 	bl	8006d64 <__sprint_r>
 8003c72:	2800      	cmp	r0, #0
 8003c74:	d145      	bne.n	8003d02 <_vfprintf_r+0x15fa>
 8003c76:	f898 3000 	ldrb.w	r3, [r8]
 8003c7a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003c7c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003c7e:	441f      	add	r7, r3
 8003c80:	e7a4      	b.n	8003bcc <_vfprintf_r+0x14c4>
 8003c82:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c84:	3b01      	subs	r3, #1
 8003c86:	930f      	str	r3, [sp, #60]	; 0x3c
 8003c88:	e7ab      	b.n	8003be2 <_vfprintf_r+0x14da>
 8003c8a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c8c:	2b00      	cmp	r3, #0
 8003c8e:	d1f8      	bne.n	8003c82 <_vfprintf_r+0x157a>
 8003c90:	46b9      	mov	r9, r7
 8003c92:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c94:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003c96:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003c9a:	18fb      	adds	r3, r7, r3
 8003c9c:	4599      	cmp	r9, r3
 8003c9e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003ca2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ca6:	4693      	mov	fp, r2
 8003ca8:	460c      	mov	r4, r1
 8003caa:	bf28      	it	cs
 8003cac:	4699      	movcs	r9, r3
 8003cae:	e424      	b.n	80034fa <_vfprintf_r+0xdf2>
 8003cb0:	3001      	adds	r0, #1
 8003cb2:	4429      	add	r1, r5
 8003cb4:	2807      	cmp	r0, #7
 8003cb6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003cba:	e9c2 6500 	strd	r6, r5, [r2]
 8003cbe:	dcd3      	bgt.n	8003c68 <_vfprintf_r+0x1560>
 8003cc0:	f898 3000 	ldrb.w	r3, [r8]
 8003cc4:	3208      	adds	r2, #8
 8003cc6:	441f      	add	r7, r3
 8003cc8:	e780      	b.n	8003bcc <_vfprintf_r+0x14c4>
 8003cca:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ccc:	4651      	mov	r1, sl
 8003cce:	4648      	mov	r0, r9
 8003cd0:	f003 f848 	bl	8006d64 <__sprint_r>
 8003cd4:	b9a8      	cbnz	r0, 8003d02 <_vfprintf_r+0x15fa>
 8003cd6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003cd8:	aa2d      	add	r2, sp, #180	; 0xb4
 8003cda:	e78e      	b.n	8003bfa <_vfprintf_r+0x14f2>
 8003cdc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cde:	4651      	mov	r1, sl
 8003ce0:	4648      	mov	r0, r9
 8003ce2:	f003 f83f 	bl	8006d64 <__sprint_r>
 8003ce6:	b960      	cbnz	r0, 8003d02 <_vfprintf_r+0x15fa>
 8003ce8:	f898 3000 	ldrb.w	r3, [r8]
 8003cec:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003cee:	aa2d      	add	r2, sp, #180	; 0xb4
 8003cf0:	e798      	b.n	8003c24 <_vfprintf_r+0x151c>
 8003cf2:	4638      	mov	r0, r7
 8003cf4:	f7fc fca4 	bl	8000640 <strlen>
 8003cf8:	46a9      	mov	r9, r5
 8003cfa:	4603      	mov	r3, r0
 8003cfc:	9009      	str	r0, [sp, #36]	; 0x24
 8003cfe:	f7ff b8f4 	b.w	8002eea <_vfprintf_r+0x7e2>
 8003d02:	46d1      	mov	r9, sl
 8003d04:	f7ff ba7a 	b.w	80031fc <_vfprintf_r+0xaf4>
 8003d08:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d0a:	4619      	mov	r1, r3
 8003d0c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d0e:	4299      	cmp	r1, r3
 8003d10:	f300 8082 	bgt.w	8003e18 <_vfprintf_r+0x1710>
 8003d14:	07c4      	lsls	r4, r0, #31
 8003d16:	f140 816b 	bpl.w	8003ff0 <_vfprintf_r+0x18e8>
 8003d1a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d1c:	4413      	add	r3, r2
 8003d1e:	9309      	str	r3, [sp, #36]	; 0x24
 8003d20:	0541      	lsls	r1, r0, #21
 8003d22:	d503      	bpl.n	8003d2c <_vfprintf_r+0x1624>
 8003d24:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d26:	2b00      	cmp	r3, #0
 8003d28:	f300 80e6 	bgt.w	8003ef8 <_vfprintf_r+0x17f0>
 8003d2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d2e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d32:	9304      	str	r3, [sp, #16]
 8003d34:	2667      	movs	r6, #103	; 0x67
 8003d36:	2300      	movs	r3, #0
 8003d38:	930f      	str	r3, [sp, #60]	; 0x3c
 8003d3a:	9314      	str	r3, [sp, #80]	; 0x50
 8003d3c:	e586      	b.n	800384c <_vfprintf_r+0x1144>
 8003d3e:	222d      	movs	r2, #45	; 0x2d
 8003d40:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003d44:	f04f 0900 	mov.w	r9, #0
 8003d48:	f7fe be6c 	b.w	8002a24 <_vfprintf_r+0x31c>
 8003d4c:	46a1      	mov	r9, r4
 8003d4e:	f7ff ba55 	b.w	80031fc <_vfprintf_r+0xaf4>
 8003d52:	900a      	str	r0, [sp, #40]	; 0x28
 8003d54:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003d58:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003d5c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003d5e:	232d      	movs	r3, #45	; 0x2d
 8003d60:	911e      	str	r1, [sp, #120]	; 0x78
 8003d62:	930b      	str	r3, [sp, #44]	; 0x2c
 8003d64:	e619      	b.n	800399a <_vfprintf_r+0x1292>
 8003d66:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d68:	9328      	str	r3, [sp, #160]	; 0xa0
 8003d6a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d6c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003d70:	7bd9      	ldrb	r1, [r3, #15]
 8003d72:	4291      	cmp	r1, r2
 8003d74:	462b      	mov	r3, r5
 8003d76:	d109      	bne.n	8003d8c <_vfprintf_r+0x1684>
 8003d78:	2030      	movs	r0, #48	; 0x30
 8003d7a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003d7e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d80:	1e5a      	subs	r2, r3, #1
 8003d82:	9228      	str	r2, [sp, #160]	; 0xa0
 8003d84:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003d88:	4291      	cmp	r1, r2
 8003d8a:	d0f6      	beq.n	8003d7a <_vfprintf_r+0x1672>
 8003d8c:	2a39      	cmp	r2, #57	; 0x39
 8003d8e:	bf0b      	itete	eq
 8003d90:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003d92:	3201      	addne	r2, #1
 8003d94:	7a92      	ldrbeq	r2, [r2, #10]
 8003d96:	b2d2      	uxtbne	r2, r2
 8003d98:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003d9c:	e682      	b.n	8003aa4 <_vfprintf_r+0x139c>
 8003d9e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003da2:	f43f ad9f 	beq.w	80038e4 <_vfprintf_r+0x11dc>
 8003da6:	9a05      	ldr	r2, [sp, #20]
 8003da8:	701a      	strb	r2, [r3, #0]
 8003daa:	4657      	mov	r7, sl
 8003dac:	f7fe bf52 	b.w	8002c54 <_vfprintf_r+0x54c>
 8003db0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003db2:	9907      	ldr	r1, [sp, #28]
 8003db4:	9803      	ldr	r0, [sp, #12]
 8003db6:	f002 ffd5 	bl	8006d64 <__sprint_r>
 8003dba:	2800      	cmp	r0, #0
 8003dbc:	f47f aa1c 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 8003dc0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003dc2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003dc6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003dca:	e571      	b.n	80038b0 <_vfprintf_r+0x11a8>
 8003dcc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003dce:	2b00      	cmp	r3, #0
 8003dd0:	f340 8164 	ble.w	800409c <_vfprintf_r+0x1994>
 8003dd4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003dd6:	f1b9 0f00 	cmp.w	r9, #0
 8003dda:	f040 8103 	bne.w	8003fe4 <_vfprintf_r+0x18dc>
 8003dde:	07c6      	lsls	r6, r0, #31
 8003de0:	f100 8100 	bmi.w	8003fe4 <_vfprintf_r+0x18dc>
 8003de4:	9309      	str	r3, [sp, #36]	; 0x24
 8003de6:	2666      	movs	r6, #102	; 0x66
 8003de8:	0543      	lsls	r3, r0, #21
 8003dea:	f100 8086 	bmi.w	8003efa <_vfprintf_r+0x17f2>
 8003dee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003df0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003df4:	9304      	str	r3, [sp, #16]
 8003df6:	e79e      	b.n	8003d36 <_vfprintf_r+0x162e>
 8003df8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dfa:	9907      	ldr	r1, [sp, #28]
 8003dfc:	9803      	ldr	r0, [sp, #12]
 8003dfe:	f002 ffb1 	bl	8006d64 <__sprint_r>
 8003e02:	2800      	cmp	r0, #0
 8003e04:	f47f a9f8 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 8003e08:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e0a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003e0c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e0e:	1ad3      	subs	r3, r2, r3
 8003e10:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e14:	f7ff bb90 	b.w	8003538 <_vfprintf_r+0xe30>
 8003e18:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e1a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e1c:	4413      	add	r3, r2
 8003e1e:	9309      	str	r3, [sp, #36]	; 0x24
 8003e20:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e22:	2b00      	cmp	r3, #0
 8003e24:	f340 8149 	ble.w	80040ba <_vfprintf_r+0x19b2>
 8003e28:	2667      	movs	r6, #103	; 0x67
 8003e2a:	e7dd      	b.n	8003de8 <_vfprintf_r+0x16e0>
 8003e2c:	2330      	movs	r3, #48	; 0x30
 8003e2e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003e32:	2358      	movs	r3, #88	; 0x58
 8003e34:	e595      	b.n	8003962 <_vfprintf_r+0x125a>
 8003e36:	9803      	ldr	r0, [sp, #12]
 8003e38:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e3a:	4649      	mov	r1, r9
 8003e3c:	f002 ff92 	bl	8006d64 <__sprint_r>
 8003e40:	2800      	cmp	r0, #0
 8003e42:	f47f a9e0 	bne.w	8003206 <_vfprintf_r+0xafe>
 8003e46:	f7fe bf0f 	b.w	8002c68 <_vfprintf_r+0x560>
 8003e4a:	a824      	add	r0, sp, #144	; 0x90
 8003e4c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e50:	f002 fe90 	bl	8006b74 <frexp>
 8003e54:	2200      	movs	r2, #0
 8003e56:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003e5a:	ec51 0b10 	vmov	r0, r1, d0
 8003e5e:	f7fc fe6b 	bl	8000b38 <__aeabi_dmul>
 8003e62:	2200      	movs	r2, #0
 8003e64:	2300      	movs	r3, #0
 8003e66:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003e6a:	f7fd f8cd 	bl	8001008 <__aeabi_dcmpeq>
 8003e6e:	b108      	cbz	r0, 8003e74 <_vfprintf_r+0x176c>
 8003e70:	2301      	movs	r3, #1
 8003e72:	9324      	str	r3, [sp, #144]	; 0x90
 8003e74:	4b02      	ldr	r3, [pc, #8]	; (8003e80 <_vfprintf_r+0x1778>)
 8003e76:	9309      	str	r3, [sp, #36]	; 0x24
 8003e78:	e5ac      	b.n	80039d4 <_vfprintf_r+0x12cc>
 8003e7a:	bf00      	nop
 8003e7c:	0800746c 	.word	0x0800746c
 8003e80:	08007428 	.word	0x08007428
 8003e84:	425d      	negs	r5, r3
 8003e86:	3310      	adds	r3, #16
 8003e88:	4bb9      	ldr	r3, [pc, #740]	; (8004170 <_vfprintf_r+0x1a68>)
 8003e8a:	f280 8097 	bge.w	8003fbc <_vfprintf_r+0x18b4>
 8003e8e:	4619      	mov	r1, r3
 8003e90:	2610      	movs	r6, #16
 8003e92:	4623      	mov	r3, r4
 8003e94:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003e98:	460c      	mov	r4, r1
 8003e9a:	e005      	b.n	8003ea8 <_vfprintf_r+0x17a0>
 8003e9c:	f10b 0b08 	add.w	fp, fp, #8
 8003ea0:	3d10      	subs	r5, #16
 8003ea2:	2d10      	cmp	r5, #16
 8003ea4:	f340 8087 	ble.w	8003fb6 <_vfprintf_r+0x18ae>
 8003ea8:	3201      	adds	r2, #1
 8003eaa:	3310      	adds	r3, #16
 8003eac:	2a07      	cmp	r2, #7
 8003eae:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003eb2:	e9cb 4600 	strd	r4, r6, [fp]
 8003eb6:	ddf1      	ble.n	8003e9c <_vfprintf_r+0x1794>
 8003eb8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003eba:	9907      	ldr	r1, [sp, #28]
 8003ebc:	4648      	mov	r0, r9
 8003ebe:	f002 ff51 	bl	8006d64 <__sprint_r>
 8003ec2:	2800      	cmp	r0, #0
 8003ec4:	f47f a998 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 8003ec8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003ecc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ed0:	e7e6      	b.n	8003ea0 <_vfprintf_r+0x1798>
 8003ed2:	f109 0101 	add.w	r1, r9, #1
 8003ed6:	9803      	ldr	r0, [sp, #12]
 8003ed8:	f001 fe80 	bl	8005bdc <_malloc_r>
 8003edc:	4607      	mov	r7, r0
 8003ede:	2800      	cmp	r0, #0
 8003ee0:	f000 813b 	beq.w	800415a <_vfprintf_r+0x1a52>
 8003ee4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003ee8:	930e      	str	r3, [sp, #56]	; 0x38
 8003eea:	f026 0320 	bic.w	r3, r6, #32
 8003eee:	9304      	str	r3, [sp, #16]
 8003ef0:	46a0      	mov	r8, r4
 8003ef2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003ef4:	900a      	str	r0, [sp, #40]	; 0x28
 8003ef6:	e547      	b.n	8003988 <_vfprintf_r+0x1280>
 8003ef8:	2667      	movs	r6, #103	; 0x67
 8003efa:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003efc:	2200      	movs	r2, #0
 8003efe:	920f      	str	r2, [sp, #60]	; 0x3c
 8003f00:	9214      	str	r2, [sp, #80]	; 0x50
 8003f02:	7803      	ldrb	r3, [r0, #0]
 8003f04:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003f06:	2bff      	cmp	r3, #255	; 0xff
 8003f08:	d00c      	beq.n	8003f24 <_vfprintf_r+0x181c>
 8003f0a:	4293      	cmp	r3, r2
 8003f0c:	da0a      	bge.n	8003f24 <_vfprintf_r+0x181c>
 8003f0e:	7841      	ldrb	r1, [r0, #1]
 8003f10:	1ad2      	subs	r2, r2, r3
 8003f12:	b1a9      	cbz	r1, 8003f40 <_vfprintf_r+0x1838>
 8003f14:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f16:	3301      	adds	r3, #1
 8003f18:	9314      	str	r3, [sp, #80]	; 0x50
 8003f1a:	460b      	mov	r3, r1
 8003f1c:	2bff      	cmp	r3, #255	; 0xff
 8003f1e:	f100 0001 	add.w	r0, r0, #1
 8003f22:	d1f2      	bne.n	8003f0a <_vfprintf_r+0x1802>
 8003f24:	9211      	str	r2, [sp, #68]	; 0x44
 8003f26:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f28:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003f2a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003f2c:	901a      	str	r0, [sp, #104]	; 0x68
 8003f2e:	4413      	add	r3, r2
 8003f30:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003f32:	fb02 1303 	mla	r3, r2, r3, r1
 8003f36:	9309      	str	r3, [sp, #36]	; 0x24
 8003f38:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f3c:	9304      	str	r3, [sp, #16]
 8003f3e:	e485      	b.n	800384c <_vfprintf_r+0x1144>
 8003f40:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003f42:	3101      	adds	r1, #1
 8003f44:	910f      	str	r1, [sp, #60]	; 0x3c
 8003f46:	e7de      	b.n	8003f06 <_vfprintf_r+0x17fe>
 8003f48:	aa28      	add	r2, sp, #160	; 0xa0
 8003f4a:	ab25      	add	r3, sp, #148	; 0x94
 8003f4c:	e9cd 3200 	strd	r3, r2, [sp]
 8003f50:	2103      	movs	r1, #3
 8003f52:	ab24      	add	r3, sp, #144	; 0x90
 8003f54:	464a      	mov	r2, r9
 8003f56:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003f5a:	9803      	ldr	r0, [sp, #12]
 8003f5c:	f000 fa5c 	bl	8004418 <_dtoa_r>
 8003f60:	464d      	mov	r5, r9
 8003f62:	4607      	mov	r7, r0
 8003f64:	eb00 0409 	add.w	r4, r0, r9
 8003f68:	783b      	ldrb	r3, [r7, #0]
 8003f6a:	2b30      	cmp	r3, #48	; 0x30
 8003f6c:	f000 80be 	beq.w	80040ec <_vfprintf_r+0x19e4>
 8003f70:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003f72:	442c      	add	r4, r5
 8003f74:	2200      	movs	r2, #0
 8003f76:	2300      	movs	r3, #0
 8003f78:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003f7c:	f7fd f844 	bl	8001008 <__aeabi_dcmpeq>
 8003f80:	b108      	cbz	r0, 8003f86 <_vfprintf_r+0x187e>
 8003f82:	4623      	mov	r3, r4
 8003f84:	e413      	b.n	80037ae <_vfprintf_r+0x10a6>
 8003f86:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003f88:	42a3      	cmp	r3, r4
 8003f8a:	f4bf ac10 	bcs.w	80037ae <_vfprintf_r+0x10a6>
 8003f8e:	2130      	movs	r1, #48	; 0x30
 8003f90:	1c5a      	adds	r2, r3, #1
 8003f92:	9228      	str	r2, [sp, #160]	; 0xa0
 8003f94:	7019      	strb	r1, [r3, #0]
 8003f96:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003f98:	429c      	cmp	r4, r3
 8003f9a:	d8f9      	bhi.n	8003f90 <_vfprintf_r+0x1888>
 8003f9c:	e407      	b.n	80037ae <_vfprintf_r+0x10a6>
 8003f9e:	197c      	adds	r4, r7, r5
 8003fa0:	e7e8      	b.n	8003f74 <_vfprintf_r+0x186c>
 8003fa2:	f1b9 0f00 	cmp.w	r9, #0
 8003fa6:	f000 8092 	beq.w	80040ce <_vfprintf_r+0x19c6>
 8003faa:	900a      	str	r0, [sp, #40]	; 0x28
 8003fac:	e4ec      	b.n	8003988 <_vfprintf_r+0x1280>
 8003fae:	900a      	str	r0, [sp, #40]	; 0x28
 8003fb0:	f04f 0906 	mov.w	r9, #6
 8003fb4:	e4e8      	b.n	8003988 <_vfprintf_r+0x1280>
 8003fb6:	4621      	mov	r1, r4
 8003fb8:	461c      	mov	r4, r3
 8003fba:	460b      	mov	r3, r1
 8003fbc:	3201      	adds	r2, #1
 8003fbe:	442c      	add	r4, r5
 8003fc0:	2a07      	cmp	r2, #7
 8003fc2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003fc6:	e9cb 3500 	strd	r3, r5, [fp]
 8003fca:	f300 80a9 	bgt.w	8004120 <_vfprintf_r+0x1a18>
 8003fce:	f10b 0b08 	add.w	fp, fp, #8
 8003fd2:	e470      	b.n	80038b6 <_vfprintf_r+0x11ae>
 8003fd4:	469a      	mov	sl, r3
 8003fd6:	f7ff bb37 	b.w	8003648 <_vfprintf_r+0xf40>
 8003fda:	2301      	movs	r3, #1
 8003fdc:	9324      	str	r3, [sp, #144]	; 0x90
 8003fde:	4b65      	ldr	r3, [pc, #404]	; (8004174 <_vfprintf_r+0x1a6c>)
 8003fe0:	9309      	str	r3, [sp, #36]	; 0x24
 8003fe2:	e4f7      	b.n	80039d4 <_vfprintf_r+0x12cc>
 8003fe4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003fe6:	4413      	add	r3, r2
 8003fe8:	444b      	add	r3, r9
 8003fea:	9309      	str	r3, [sp, #36]	; 0x24
 8003fec:	2666      	movs	r6, #102	; 0x66
 8003fee:	e6fb      	b.n	8003de8 <_vfprintf_r+0x16e0>
 8003ff0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ff2:	9309      	str	r3, [sp, #36]	; 0x24
 8003ff4:	e694      	b.n	8003d20 <_vfprintf_r+0x1618>
 8003ff6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003ffa:	4664      	mov	r4, ip
 8003ffc:	4d5e      	ldr	r5, [pc, #376]	; (8004178 <_vfprintf_r+0x1a70>)
 8003ffe:	e000      	b.n	8004002 <_vfprintf_r+0x18fa>
 8004000:	4614      	mov	r4, r2
 8004002:	fba5 1203 	umull	r1, r2, r5, r3
 8004006:	08d2      	lsrs	r2, r2, #3
 8004008:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800400c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004010:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004014:	4613      	mov	r3, r2
 8004016:	2b09      	cmp	r3, #9
 8004018:	f804 1c01 	strb.w	r1, [r4, #-1]
 800401c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004020:	dcee      	bgt.n	8004000 <_vfprintf_r+0x18f8>
 8004022:	3330      	adds	r3, #48	; 0x30
 8004024:	3c02      	subs	r4, #2
 8004026:	b2db      	uxtb	r3, r3
 8004028:	45a4      	cmp	ip, r4
 800402a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800402e:	f240 8090 	bls.w	8004152 <_vfprintf_r+0x1a4a>
 8004032:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004036:	4611      	mov	r1, r2
 8004038:	e001      	b.n	800403e <_vfprintf_r+0x1936>
 800403a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800403e:	f804 3b01 	strb.w	r3, [r4], #1
 8004042:	458c      	cmp	ip, r1
 8004044:	d1f9      	bne.n	800403a <_vfprintf_r+0x1932>
 8004046:	ab2a      	add	r3, sp, #168	; 0xa8
 8004048:	1a9b      	subs	r3, r3, r2
 800404a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800404e:	4413      	add	r3, r2
 8004050:	f7ff bbe3 	b.w	800381a <_vfprintf_r+0x1112>
 8004054:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004056:	4f49      	ldr	r7, [pc, #292]	; (800417c <_vfprintf_r+0x1a74>)
 8004058:	2b00      	cmp	r3, #0
 800405a:	bfb6      	itet	lt
 800405c:	222d      	movlt	r2, #45	; 0x2d
 800405e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004062:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004066:	4b46      	ldr	r3, [pc, #280]	; (8004180 <_vfprintf_r+0x1a78>)
 8004068:	f7fe bf02 	b.w	8002e70 <_vfprintf_r+0x768>
 800406c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004070:	f7ff b8c9 	b.w	8003206 <_vfprintf_r+0xafe>
 8004074:	aa28      	add	r2, sp, #160	; 0xa0
 8004076:	ab25      	add	r3, sp, #148	; 0x94
 8004078:	e9cd 3200 	strd	r3, r2, [sp]
 800407c:	2103      	movs	r1, #3
 800407e:	ab24      	add	r3, sp, #144	; 0x90
 8004080:	464a      	mov	r2, r9
 8004082:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004086:	9803      	ldr	r0, [sp, #12]
 8004088:	f000 f9c6 	bl	8004418 <_dtoa_r>
 800408c:	464d      	mov	r5, r9
 800408e:	4607      	mov	r7, r0
 8004090:	2e46      	cmp	r6, #70	; 0x46
 8004092:	eb07 0405 	add.w	r4, r7, r5
 8004096:	f43f af67 	beq.w	8003f68 <_vfprintf_r+0x1860>
 800409a:	e76b      	b.n	8003f74 <_vfprintf_r+0x186c>
 800409c:	f1b9 0f00 	cmp.w	r9, #0
 80040a0:	d131      	bne.n	8004106 <_vfprintf_r+0x19fe>
 80040a2:	07c5      	lsls	r5, r0, #31
 80040a4:	d42f      	bmi.n	8004106 <_vfprintf_r+0x19fe>
 80040a6:	2301      	movs	r3, #1
 80040a8:	9304      	str	r3, [sp, #16]
 80040aa:	9309      	str	r3, [sp, #36]	; 0x24
 80040ac:	2666      	movs	r6, #102	; 0x66
 80040ae:	e642      	b.n	8003d36 <_vfprintf_r+0x162e>
 80040b0:	07c3      	lsls	r3, r0, #31
 80040b2:	f57f abbf 	bpl.w	8003834 <_vfprintf_r+0x112c>
 80040b6:	f7ff bbb9 	b.w	800382c <_vfprintf_r+0x1124>
 80040ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80040bc:	f1c3 0301 	rsb	r3, r3, #1
 80040c0:	441a      	add	r2, r3
 80040c2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80040c6:	9209      	str	r2, [sp, #36]	; 0x24
 80040c8:	9304      	str	r3, [sp, #16]
 80040ca:	2667      	movs	r6, #103	; 0x67
 80040cc:	e633      	b.n	8003d36 <_vfprintf_r+0x162e>
 80040ce:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80040d2:	f04f 0901 	mov.w	r9, #1
 80040d6:	e457      	b.n	8003988 <_vfprintf_r+0x1280>
 80040d8:	465a      	mov	r2, fp
 80040da:	e511      	b.n	8003b00 <_vfprintf_r+0x13f8>
 80040dc:	2e47      	cmp	r6, #71	; 0x47
 80040de:	f47f af5e 	bne.w	8003f9e <_vfprintf_r+0x1896>
 80040e2:	f018 0f01 	tst.w	r8, #1
 80040e6:	f43f ab61 	beq.w	80037ac <_vfprintf_r+0x10a4>
 80040ea:	e7d1      	b.n	8004090 <_vfprintf_r+0x1988>
 80040ec:	2200      	movs	r2, #0
 80040ee:	2300      	movs	r3, #0
 80040f0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80040f4:	f7fc ff88 	bl	8001008 <__aeabi_dcmpeq>
 80040f8:	2800      	cmp	r0, #0
 80040fa:	f47f af39 	bne.w	8003f70 <_vfprintf_r+0x1868>
 80040fe:	f1c5 0501 	rsb	r5, r5, #1
 8004102:	9524      	str	r5, [sp, #144]	; 0x90
 8004104:	e735      	b.n	8003f72 <_vfprintf_r+0x186a>
 8004106:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004108:	3301      	adds	r3, #1
 800410a:	444b      	add	r3, r9
 800410c:	9309      	str	r3, [sp, #36]	; 0x24
 800410e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004112:	9304      	str	r3, [sp, #16]
 8004114:	2666      	movs	r6, #102	; 0x66
 8004116:	e60e      	b.n	8003d36 <_vfprintf_r+0x162e>
 8004118:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800411c:	f7ff bb7a 	b.w	8003814 <_vfprintf_r+0x110c>
 8004120:	aa2a      	add	r2, sp, #168	; 0xa8
 8004122:	9907      	ldr	r1, [sp, #28]
 8004124:	9803      	ldr	r0, [sp, #12]
 8004126:	f002 fe1d 	bl	8006d64 <__sprint_r>
 800412a:	2800      	cmp	r0, #0
 800412c:	f47f a864 	bne.w	80031f8 <_vfprintf_r+0xaf0>
 8004130:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004134:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004138:	f7ff bbbd 	b.w	80038b6 <_vfprintf_r+0x11ae>
 800413c:	9908      	ldr	r1, [sp, #32]
 800413e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004142:	680b      	ldr	r3, [r1, #0]
 8004144:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004148:	1d0b      	adds	r3, r1, #4
 800414a:	4692      	mov	sl, r2
 800414c:	9308      	str	r3, [sp, #32]
 800414e:	f7fe bb59 	b.w	8002804 <_vfprintf_r+0xfc>
 8004152:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004156:	f7ff bb60 	b.w	800381a <_vfprintf_r+0x1112>
 800415a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800415e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004162:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004166:	f8a9 300c 	strh.w	r3, [r9, #12]
 800416a:	f7ff b84c 	b.w	8003206 <_vfprintf_r+0xafe>
 800416e:	bf00      	nop
 8004170:	0800746c 	.word	0x0800746c
 8004174:	0800743c 	.word	0x0800743c
 8004178:	cccccccd 	.word	0xcccccccd
 800417c:	08007424 	.word	0x08007424
 8004180:	08007420 	.word	0x08007420

08004184 <__sbprintf>:
 8004184:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004188:	460c      	mov	r4, r1
 800418a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800418e:	8989      	ldrh	r1, [r1, #12]
 8004190:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004192:	89e5      	ldrh	r5, [r4, #14]
 8004194:	9619      	str	r6, [sp, #100]	; 0x64
 8004196:	f021 0102 	bic.w	r1, r1, #2
 800419a:	4606      	mov	r6, r0
 800419c:	69e0      	ldr	r0, [r4, #28]
 800419e:	f8ad 100c 	strh.w	r1, [sp, #12]
 80041a2:	4617      	mov	r7, r2
 80041a4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80041a8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80041aa:	f8ad 500e 	strh.w	r5, [sp, #14]
 80041ae:	4698      	mov	r8, r3
 80041b0:	ad1a      	add	r5, sp, #104	; 0x68
 80041b2:	2300      	movs	r3, #0
 80041b4:	9007      	str	r0, [sp, #28]
 80041b6:	a816      	add	r0, sp, #88	; 0x58
 80041b8:	9209      	str	r2, [sp, #36]	; 0x24
 80041ba:	9306      	str	r3, [sp, #24]
 80041bc:	9500      	str	r5, [sp, #0]
 80041be:	9504      	str	r5, [sp, #16]
 80041c0:	9102      	str	r1, [sp, #8]
 80041c2:	9105      	str	r1, [sp, #20]
 80041c4:	f001 fc8a 	bl	8005adc <__retarget_lock_init_recursive>
 80041c8:	4643      	mov	r3, r8
 80041ca:	463a      	mov	r2, r7
 80041cc:	4669      	mov	r1, sp
 80041ce:	4630      	mov	r0, r6
 80041d0:	f7fe fa9a 	bl	8002708 <_vfprintf_r>
 80041d4:	1e05      	subs	r5, r0, #0
 80041d6:	db07      	blt.n	80041e8 <__sbprintf+0x64>
 80041d8:	4630      	mov	r0, r6
 80041da:	4669      	mov	r1, sp
 80041dc:	f001 f8d6 	bl	800538c <_fflush_r>
 80041e0:	2800      	cmp	r0, #0
 80041e2:	bf18      	it	ne
 80041e4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80041e8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80041ec:	065b      	lsls	r3, r3, #25
 80041ee:	d503      	bpl.n	80041f8 <__sbprintf+0x74>
 80041f0:	89a3      	ldrh	r3, [r4, #12]
 80041f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80041f6:	81a3      	strh	r3, [r4, #12]
 80041f8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80041fa:	f001 fc71 	bl	8005ae0 <__retarget_lock_close_recursive>
 80041fe:	4628      	mov	r0, r5
 8004200:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004204:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004208 <__swsetup_r>:
 8004208:	b538      	push	{r3, r4, r5, lr}
 800420a:	4b31      	ldr	r3, [pc, #196]	; (80042d0 <__swsetup_r+0xc8>)
 800420c:	681b      	ldr	r3, [r3, #0]
 800420e:	4605      	mov	r5, r0
 8004210:	460c      	mov	r4, r1
 8004212:	b113      	cbz	r3, 800421a <__swsetup_r+0x12>
 8004214:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004216:	2a00      	cmp	r2, #0
 8004218:	d03a      	beq.n	8004290 <__swsetup_r+0x88>
 800421a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800421e:	b293      	uxth	r3, r2
 8004220:	0718      	lsls	r0, r3, #28
 8004222:	d50c      	bpl.n	800423e <__swsetup_r+0x36>
 8004224:	6920      	ldr	r0, [r4, #16]
 8004226:	b1a8      	cbz	r0, 8004254 <__swsetup_r+0x4c>
 8004228:	f013 0201 	ands.w	r2, r3, #1
 800422c:	d020      	beq.n	8004270 <__swsetup_r+0x68>
 800422e:	6963      	ldr	r3, [r4, #20]
 8004230:	2200      	movs	r2, #0
 8004232:	425b      	negs	r3, r3
 8004234:	61a3      	str	r3, [r4, #24]
 8004236:	60a2      	str	r2, [r4, #8]
 8004238:	b300      	cbz	r0, 800427c <__swsetup_r+0x74>
 800423a:	2000      	movs	r0, #0
 800423c:	bd38      	pop	{r3, r4, r5, pc}
 800423e:	06d9      	lsls	r1, r3, #27
 8004240:	d53e      	bpl.n	80042c0 <__swsetup_r+0xb8>
 8004242:	0758      	lsls	r0, r3, #29
 8004244:	d428      	bmi.n	8004298 <__swsetup_r+0x90>
 8004246:	6920      	ldr	r0, [r4, #16]
 8004248:	f042 0308 	orr.w	r3, r2, #8
 800424c:	81a3      	strh	r3, [r4, #12]
 800424e:	b29b      	uxth	r3, r3
 8004250:	2800      	cmp	r0, #0
 8004252:	d1e9      	bne.n	8004228 <__swsetup_r+0x20>
 8004254:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004258:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800425c:	d0e4      	beq.n	8004228 <__swsetup_r+0x20>
 800425e:	4628      	mov	r0, r5
 8004260:	4621      	mov	r1, r4
 8004262:	f001 fc71 	bl	8005b48 <__smakebuf_r>
 8004266:	89a3      	ldrh	r3, [r4, #12]
 8004268:	6920      	ldr	r0, [r4, #16]
 800426a:	f013 0201 	ands.w	r2, r3, #1
 800426e:	d1de      	bne.n	800422e <__swsetup_r+0x26>
 8004270:	0799      	lsls	r1, r3, #30
 8004272:	bf58      	it	pl
 8004274:	6962      	ldrpl	r2, [r4, #20]
 8004276:	60a2      	str	r2, [r4, #8]
 8004278:	2800      	cmp	r0, #0
 800427a:	d1de      	bne.n	800423a <__swsetup_r+0x32>
 800427c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004280:	061a      	lsls	r2, r3, #24
 8004282:	d5db      	bpl.n	800423c <__swsetup_r+0x34>
 8004284:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004288:	81a3      	strh	r3, [r4, #12]
 800428a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800428e:	bd38      	pop	{r3, r4, r5, pc}
 8004290:	4618      	mov	r0, r3
 8004292:	f001 f8d7 	bl	8005444 <__sinit>
 8004296:	e7c0      	b.n	800421a <__swsetup_r+0x12>
 8004298:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800429a:	b151      	cbz	r1, 80042b2 <__swsetup_r+0xaa>
 800429c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80042a0:	4299      	cmp	r1, r3
 80042a2:	d004      	beq.n	80042ae <__swsetup_r+0xa6>
 80042a4:	4628      	mov	r0, r5
 80042a6:	f001 f96f 	bl	8005588 <_free_r>
 80042aa:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80042ae:	2300      	movs	r3, #0
 80042b0:	6323      	str	r3, [r4, #48]	; 0x30
 80042b2:	2300      	movs	r3, #0
 80042b4:	6920      	ldr	r0, [r4, #16]
 80042b6:	6063      	str	r3, [r4, #4]
 80042b8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80042bc:	6020      	str	r0, [r4, #0]
 80042be:	e7c3      	b.n	8004248 <__swsetup_r+0x40>
 80042c0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80042c4:	2309      	movs	r3, #9
 80042c6:	602b      	str	r3, [r5, #0]
 80042c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80042cc:	81a2      	strh	r2, [r4, #12]
 80042ce:	bd38      	pop	{r3, r4, r5, pc}
 80042d0:	2000003c 	.word	0x2000003c

080042d4 <register_fini>:
 80042d4:	4b02      	ldr	r3, [pc, #8]	; (80042e0 <register_fini+0xc>)
 80042d6:	b113      	cbz	r3, 80042de <register_fini+0xa>
 80042d8:	4802      	ldr	r0, [pc, #8]	; (80042e4 <register_fini+0x10>)
 80042da:	f000 b805 	b.w	80042e8 <atexit>
 80042de:	4770      	bx	lr
 80042e0:	00000000 	.word	0x00000000
 80042e4:	080054b5 	.word	0x080054b5

080042e8 <atexit>:
 80042e8:	2300      	movs	r3, #0
 80042ea:	4601      	mov	r1, r0
 80042ec:	461a      	mov	r2, r3
 80042ee:	4618      	mov	r0, r3
 80042f0:	f002 bd58 	b.w	8006da4 <__register_exitproc>

080042f4 <quorem>:
 80042f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80042f8:	6903      	ldr	r3, [r0, #16]
 80042fa:	690f      	ldr	r7, [r1, #16]
 80042fc:	42bb      	cmp	r3, r7
 80042fe:	b083      	sub	sp, #12
 8004300:	f2c0 8086 	blt.w	8004410 <quorem+0x11c>
 8004304:	3f01      	subs	r7, #1
 8004306:	f101 0914 	add.w	r9, r1, #20
 800430a:	f100 0a14 	add.w	sl, r0, #20
 800430e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004312:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004316:	00bc      	lsls	r4, r7, #2
 8004318:	3201      	adds	r2, #1
 800431a:	fbb3 f8f2 	udiv	r8, r3, r2
 800431e:	eb0a 0304 	add.w	r3, sl, r4
 8004322:	9400      	str	r4, [sp, #0]
 8004324:	eb09 0b04 	add.w	fp, r9, r4
 8004328:	9301      	str	r3, [sp, #4]
 800432a:	f1b8 0f00 	cmp.w	r8, #0
 800432e:	d038      	beq.n	80043a2 <quorem+0xae>
 8004330:	2500      	movs	r5, #0
 8004332:	462e      	mov	r6, r5
 8004334:	46ce      	mov	lr, r9
 8004336:	46d4      	mov	ip, sl
 8004338:	f85e 4b04 	ldr.w	r4, [lr], #4
 800433c:	f8dc 3000 	ldr.w	r3, [ip]
 8004340:	b2a2      	uxth	r2, r4
 8004342:	fb08 5502 	mla	r5, r8, r2, r5
 8004346:	0c22      	lsrs	r2, r4, #16
 8004348:	0c2c      	lsrs	r4, r5, #16
 800434a:	fb08 4202 	mla	r2, r8, r2, r4
 800434e:	b2ad      	uxth	r5, r5
 8004350:	1b75      	subs	r5, r6, r5
 8004352:	b296      	uxth	r6, r2
 8004354:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004358:	fa15 f383 	uxtah	r3, r5, r3
 800435c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004360:	b29b      	uxth	r3, r3
 8004362:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004366:	45f3      	cmp	fp, lr
 8004368:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800436c:	f84c 3b04 	str.w	r3, [ip], #4
 8004370:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004374:	d2e0      	bcs.n	8004338 <quorem+0x44>
 8004376:	9b00      	ldr	r3, [sp, #0]
 8004378:	f85a 3003 	ldr.w	r3, [sl, r3]
 800437c:	b98b      	cbnz	r3, 80043a2 <quorem+0xae>
 800437e:	9a01      	ldr	r2, [sp, #4]
 8004380:	1f13      	subs	r3, r2, #4
 8004382:	459a      	cmp	sl, r3
 8004384:	d20c      	bcs.n	80043a0 <quorem+0xac>
 8004386:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800438a:	b94b      	cbnz	r3, 80043a0 <quorem+0xac>
 800438c:	f1a2 0308 	sub.w	r3, r2, #8
 8004390:	e002      	b.n	8004398 <quorem+0xa4>
 8004392:	681a      	ldr	r2, [r3, #0]
 8004394:	3b04      	subs	r3, #4
 8004396:	b91a      	cbnz	r2, 80043a0 <quorem+0xac>
 8004398:	459a      	cmp	sl, r3
 800439a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800439e:	d3f8      	bcc.n	8004392 <quorem+0x9e>
 80043a0:	6107      	str	r7, [r0, #16]
 80043a2:	4604      	mov	r4, r0
 80043a4:	f002 f944 	bl	8006630 <__mcmp>
 80043a8:	2800      	cmp	r0, #0
 80043aa:	db2d      	blt.n	8004408 <quorem+0x114>
 80043ac:	f108 0801 	add.w	r8, r8, #1
 80043b0:	4655      	mov	r5, sl
 80043b2:	2300      	movs	r3, #0
 80043b4:	f859 1b04 	ldr.w	r1, [r9], #4
 80043b8:	6828      	ldr	r0, [r5, #0]
 80043ba:	b28a      	uxth	r2, r1
 80043bc:	1a9a      	subs	r2, r3, r2
 80043be:	0c0b      	lsrs	r3, r1, #16
 80043c0:	fa12 f280 	uxtah	r2, r2, r0
 80043c4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80043c8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80043cc:	b292      	uxth	r2, r2
 80043ce:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80043d2:	45cb      	cmp	fp, r9
 80043d4:	f845 2b04 	str.w	r2, [r5], #4
 80043d8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80043dc:	d2ea      	bcs.n	80043b4 <quorem+0xc0>
 80043de:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80043e2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80043e6:	b97a      	cbnz	r2, 8004408 <quorem+0x114>
 80043e8:	1f1a      	subs	r2, r3, #4
 80043ea:	4592      	cmp	sl, r2
 80043ec:	d20b      	bcs.n	8004406 <quorem+0x112>
 80043ee:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80043f2:	b942      	cbnz	r2, 8004406 <quorem+0x112>
 80043f4:	3b08      	subs	r3, #8
 80043f6:	e002      	b.n	80043fe <quorem+0x10a>
 80043f8:	681a      	ldr	r2, [r3, #0]
 80043fa:	3b04      	subs	r3, #4
 80043fc:	b91a      	cbnz	r2, 8004406 <quorem+0x112>
 80043fe:	459a      	cmp	sl, r3
 8004400:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004404:	d3f8      	bcc.n	80043f8 <quorem+0x104>
 8004406:	6127      	str	r7, [r4, #16]
 8004408:	4640      	mov	r0, r8
 800440a:	b003      	add	sp, #12
 800440c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004410:	2000      	movs	r0, #0
 8004412:	b003      	add	sp, #12
 8004414:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004418 <_dtoa_r>:
 8004418:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800441c:	ec55 4b10 	vmov	r4, r5, d0
 8004420:	b09b      	sub	sp, #108	; 0x6c
 8004422:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004424:	9102      	str	r1, [sp, #8]
 8004426:	4681      	mov	r9, r0
 8004428:	9207      	str	r2, [sp, #28]
 800442a:	9305      	str	r3, [sp, #20]
 800442c:	e9cd 4500 	strd	r4, r5, [sp]
 8004430:	b156      	cbz	r6, 8004448 <_dtoa_r+0x30>
 8004432:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004434:	6072      	str	r2, [r6, #4]
 8004436:	2301      	movs	r3, #1
 8004438:	4093      	lsls	r3, r2
 800443a:	60b3      	str	r3, [r6, #8]
 800443c:	4631      	mov	r1, r6
 800443e:	f001 ff07 	bl	8006250 <_Bfree>
 8004442:	2300      	movs	r3, #0
 8004444:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004448:	f1b5 0800 	subs.w	r8, r5, #0
 800444c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800444e:	bfb4      	ite	lt
 8004450:	2301      	movlt	r3, #1
 8004452:	2300      	movge	r3, #0
 8004454:	6013      	str	r3, [r2, #0]
 8004456:	4b76      	ldr	r3, [pc, #472]	; (8004630 <_dtoa_r+0x218>)
 8004458:	bfbc      	itt	lt
 800445a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800445e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004462:	ea33 0308 	bics.w	r3, r3, r8
 8004466:	f000 80a6 	beq.w	80045b6 <_dtoa_r+0x19e>
 800446a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800446e:	2200      	movs	r2, #0
 8004470:	2300      	movs	r3, #0
 8004472:	4630      	mov	r0, r6
 8004474:	4639      	mov	r1, r7
 8004476:	f7fc fdc7 	bl	8001008 <__aeabi_dcmpeq>
 800447a:	4605      	mov	r5, r0
 800447c:	b178      	cbz	r0, 800449e <_dtoa_r+0x86>
 800447e:	9a05      	ldr	r2, [sp, #20]
 8004480:	2301      	movs	r3, #1
 8004482:	6013      	str	r3, [r2, #0]
 8004484:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004486:	2b00      	cmp	r3, #0
 8004488:	f000 80c0 	beq.w	800460c <_dtoa_r+0x1f4>
 800448c:	4b69      	ldr	r3, [pc, #420]	; (8004634 <_dtoa_r+0x21c>)
 800448e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004490:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004494:	6013      	str	r3, [r2, #0]
 8004496:	4658      	mov	r0, fp
 8004498:	b01b      	add	sp, #108	; 0x6c
 800449a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800449e:	aa18      	add	r2, sp, #96	; 0x60
 80044a0:	a919      	add	r1, sp, #100	; 0x64
 80044a2:	ec47 6b10 	vmov	d0, r6, r7
 80044a6:	4648      	mov	r0, r9
 80044a8:	f002 f954 	bl	8006754 <__d2b>
 80044ac:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80044b0:	4682      	mov	sl, r0
 80044b2:	f040 80a0 	bne.w	80045f6 <_dtoa_r+0x1de>
 80044b6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80044ba:	442c      	add	r4, r5
 80044bc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80044c0:	2b20      	cmp	r3, #32
 80044c2:	f340 842c 	ble.w	8004d1e <_dtoa_r+0x906>
 80044c6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80044ca:	fa08 f803 	lsl.w	r8, r8, r3
 80044ce:	9b00      	ldr	r3, [sp, #0]
 80044d0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80044d4:	fa23 f000 	lsr.w	r0, r3, r0
 80044d8:	ea48 0000 	orr.w	r0, r8, r0
 80044dc:	f7fc fab2 	bl	8000a44 <__aeabi_ui2d>
 80044e0:	2301      	movs	r3, #1
 80044e2:	4606      	mov	r6, r0
 80044e4:	3c01      	subs	r4, #1
 80044e6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80044ea:	930f      	str	r3, [sp, #60]	; 0x3c
 80044ec:	4630      	mov	r0, r6
 80044ee:	4639      	mov	r1, r7
 80044f0:	2200      	movs	r2, #0
 80044f2:	4b51      	ldr	r3, [pc, #324]	; (8004638 <_dtoa_r+0x220>)
 80044f4:	f7fc f968 	bl	80007c8 <__aeabi_dsub>
 80044f8:	a347      	add	r3, pc, #284	; (adr r3, 8004618 <_dtoa_r+0x200>)
 80044fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80044fe:	f7fc fb1b 	bl	8000b38 <__aeabi_dmul>
 8004502:	a347      	add	r3, pc, #284	; (adr r3, 8004620 <_dtoa_r+0x208>)
 8004504:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004508:	f7fc f960 	bl	80007cc <__adddf3>
 800450c:	4606      	mov	r6, r0
 800450e:	4620      	mov	r0, r4
 8004510:	460f      	mov	r7, r1
 8004512:	f7fc faa7 	bl	8000a64 <__aeabi_i2d>
 8004516:	a344      	add	r3, pc, #272	; (adr r3, 8004628 <_dtoa_r+0x210>)
 8004518:	e9d3 2300 	ldrd	r2, r3, [r3]
 800451c:	f7fc fb0c 	bl	8000b38 <__aeabi_dmul>
 8004520:	4602      	mov	r2, r0
 8004522:	460b      	mov	r3, r1
 8004524:	4630      	mov	r0, r6
 8004526:	4639      	mov	r1, r7
 8004528:	f7fc f950 	bl	80007cc <__adddf3>
 800452c:	4606      	mov	r6, r0
 800452e:	460f      	mov	r7, r1
 8004530:	f7fc fdb2 	bl	8001098 <__aeabi_d2iz>
 8004534:	2200      	movs	r2, #0
 8004536:	9006      	str	r0, [sp, #24]
 8004538:	2300      	movs	r3, #0
 800453a:	4630      	mov	r0, r6
 800453c:	4639      	mov	r1, r7
 800453e:	f7fc fd6d 	bl	800101c <__aeabi_dcmplt>
 8004542:	2800      	cmp	r0, #0
 8004544:	f040 8273 	bne.w	8004a2e <_dtoa_r+0x616>
 8004548:	9e06      	ldr	r6, [sp, #24]
 800454a:	2e16      	cmp	r6, #22
 800454c:	f200 825d 	bhi.w	8004a0a <_dtoa_r+0x5f2>
 8004550:	4b3a      	ldr	r3, [pc, #232]	; (800463c <_dtoa_r+0x224>)
 8004552:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004556:	e9d3 0100 	ldrd	r0, r1, [r3]
 800455a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800455e:	f7fc fd7b 	bl	8001058 <__aeabi_dcmpgt>
 8004562:	2800      	cmp	r0, #0
 8004564:	f000 83d7 	beq.w	8004d16 <_dtoa_r+0x8fe>
 8004568:	1e73      	subs	r3, r6, #1
 800456a:	9306      	str	r3, [sp, #24]
 800456c:	2300      	movs	r3, #0
 800456e:	930d      	str	r3, [sp, #52]	; 0x34
 8004570:	1b2c      	subs	r4, r5, r4
 8004572:	f1b4 0801 	subs.w	r8, r4, #1
 8004576:	f100 8254 	bmi.w	8004a22 <_dtoa_r+0x60a>
 800457a:	2300      	movs	r3, #0
 800457c:	9308      	str	r3, [sp, #32]
 800457e:	9b06      	ldr	r3, [sp, #24]
 8004580:	2b00      	cmp	r3, #0
 8004582:	f2c0 8245 	blt.w	8004a10 <_dtoa_r+0x5f8>
 8004586:	4498      	add	r8, r3
 8004588:	930c      	str	r3, [sp, #48]	; 0x30
 800458a:	2300      	movs	r3, #0
 800458c:	930b      	str	r3, [sp, #44]	; 0x2c
 800458e:	9b02      	ldr	r3, [sp, #8]
 8004590:	2b09      	cmp	r3, #9
 8004592:	d85b      	bhi.n	800464c <_dtoa_r+0x234>
 8004594:	2b05      	cmp	r3, #5
 8004596:	f340 83c0 	ble.w	8004d1a <_dtoa_r+0x902>
 800459a:	3b04      	subs	r3, #4
 800459c:	9302      	str	r3, [sp, #8]
 800459e:	2500      	movs	r5, #0
 80045a0:	9b02      	ldr	r3, [sp, #8]
 80045a2:	3b02      	subs	r3, #2
 80045a4:	2b03      	cmp	r3, #3
 80045a6:	f200 8498 	bhi.w	8004eda <_dtoa_r+0xac2>
 80045aa:	e8df f013 	tbh	[pc, r3, lsl #1]
 80045ae:	03df      	.short	0x03df
 80045b0:	03e803bf 	.word	0x03e803bf
 80045b4:	04f5      	.short	0x04f5
 80045b6:	9a05      	ldr	r2, [sp, #20]
 80045b8:	f242 730f 	movw	r3, #9999	; 0x270f
 80045bc:	6013      	str	r3, [r2, #0]
 80045be:	9b00      	ldr	r3, [sp, #0]
 80045c0:	b983      	cbnz	r3, 80045e4 <_dtoa_r+0x1cc>
 80045c2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80045c6:	b96b      	cbnz	r3, 80045e4 <_dtoa_r+0x1cc>
 80045c8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80045ca:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004640 <_dtoa_r+0x228>
 80045ce:	2b00      	cmp	r3, #0
 80045d0:	f43f af61 	beq.w	8004496 <_dtoa_r+0x7e>
 80045d4:	f10b 0308 	add.w	r3, fp, #8
 80045d8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80045da:	4658      	mov	r0, fp
 80045dc:	6013      	str	r3, [r2, #0]
 80045de:	b01b      	add	sp, #108	; 0x6c
 80045e0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80045e4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80045e6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004644 <_dtoa_r+0x22c>
 80045ea:	2b00      	cmp	r3, #0
 80045ec:	f43f af53 	beq.w	8004496 <_dtoa_r+0x7e>
 80045f0:	f10b 0303 	add.w	r3, fp, #3
 80045f4:	e7f0      	b.n	80045d8 <_dtoa_r+0x1c0>
 80045f6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80045fa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80045fe:	950f      	str	r5, [sp, #60]	; 0x3c
 8004600:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004604:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004608:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800460a:	e76f      	b.n	80044ec <_dtoa_r+0xd4>
 800460c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004648 <_dtoa_r+0x230>
 8004610:	4658      	mov	r0, fp
 8004612:	b01b      	add	sp, #108	; 0x6c
 8004614:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004618:	636f4361 	.word	0x636f4361
 800461c:	3fd287a7 	.word	0x3fd287a7
 8004620:	8b60c8b3 	.word	0x8b60c8b3
 8004624:	3fc68a28 	.word	0x3fc68a28
 8004628:	509f79fb 	.word	0x509f79fb
 800462c:	3fd34413 	.word	0x3fd34413
 8004630:	7ff00000 	.word	0x7ff00000
 8004634:	08007459 	.word	0x08007459
 8004638:	3ff80000 	.word	0x3ff80000
 800463c:	080074b8 	.word	0x080074b8
 8004640:	0800747c 	.word	0x0800747c
 8004644:	08007488 	.word	0x08007488
 8004648:	08007458 	.word	0x08007458
 800464c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004650:	2501      	movs	r5, #1
 8004652:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004656:	2300      	movs	r3, #0
 8004658:	9302      	str	r3, [sp, #8]
 800465a:	9307      	str	r3, [sp, #28]
 800465c:	2100      	movs	r1, #0
 800465e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004662:	940e      	str	r4, [sp, #56]	; 0x38
 8004664:	4648      	mov	r0, r9
 8004666:	f001 fdcd 	bl	8006204 <_Balloc>
 800466a:	2c0e      	cmp	r4, #14
 800466c:	4683      	mov	fp, r0
 800466e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004672:	f200 80fb 	bhi.w	800486c <_dtoa_r+0x454>
 8004676:	2d00      	cmp	r5, #0
 8004678:	f000 80f8 	beq.w	800486c <_dtoa_r+0x454>
 800467c:	ed9d 7b00 	vldr	d7, [sp]
 8004680:	9906      	ldr	r1, [sp, #24]
 8004682:	2900      	cmp	r1, #0
 8004684:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004688:	f340 83e5 	ble.w	8004e56 <_dtoa_r+0xa3e>
 800468c:	4b9d      	ldr	r3, [pc, #628]	; (8004904 <_dtoa_r+0x4ec>)
 800468e:	f001 020f 	and.w	r2, r1, #15
 8004692:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004696:	ed93 7b00 	vldr	d7, [r3]
 800469a:	110c      	asrs	r4, r1, #4
 800469c:	06e2      	lsls	r2, r4, #27
 800469e:	ed8d 7b00 	vstr	d7, [sp]
 80046a2:	f140 849e 	bpl.w	8004fe2 <_dtoa_r+0xbca>
 80046a6:	4b98      	ldr	r3, [pc, #608]	; (8004908 <_dtoa_r+0x4f0>)
 80046a8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80046ac:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80046b0:	f7fc fb6c 	bl	8000d8c <__aeabi_ddiv>
 80046b4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80046b8:	f004 040f 	and.w	r4, r4, #15
 80046bc:	2603      	movs	r6, #3
 80046be:	b17c      	cbz	r4, 80046e0 <_dtoa_r+0x2c8>
 80046c0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80046c4:	4d90      	ldr	r5, [pc, #576]	; (8004908 <_dtoa_r+0x4f0>)
 80046c6:	07e3      	lsls	r3, r4, #31
 80046c8:	d504      	bpl.n	80046d4 <_dtoa_r+0x2bc>
 80046ca:	e9d5 2300 	ldrd	r2, r3, [r5]
 80046ce:	f7fc fa33 	bl	8000b38 <__aeabi_dmul>
 80046d2:	3601      	adds	r6, #1
 80046d4:	1064      	asrs	r4, r4, #1
 80046d6:	f105 0508 	add.w	r5, r5, #8
 80046da:	d1f4      	bne.n	80046c6 <_dtoa_r+0x2ae>
 80046dc:	e9cd 0100 	strd	r0, r1, [sp]
 80046e0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80046e4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80046e8:	f7fc fb50 	bl	8000d8c <__aeabi_ddiv>
 80046ec:	e9cd 0100 	strd	r0, r1, [sp]
 80046f0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80046f2:	b143      	cbz	r3, 8004706 <_dtoa_r+0x2ee>
 80046f4:	2200      	movs	r2, #0
 80046f6:	4b85      	ldr	r3, [pc, #532]	; (800490c <_dtoa_r+0x4f4>)
 80046f8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80046fc:	f7fc fc8e 	bl	800101c <__aeabi_dcmplt>
 8004700:	2800      	cmp	r0, #0
 8004702:	f040 84ff 	bne.w	8005104 <_dtoa_r+0xcec>
 8004706:	4630      	mov	r0, r6
 8004708:	f7fc f9ac 	bl	8000a64 <__aeabi_i2d>
 800470c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004710:	f7fc fa12 	bl	8000b38 <__aeabi_dmul>
 8004714:	4b7e      	ldr	r3, [pc, #504]	; (8004910 <_dtoa_r+0x4f8>)
 8004716:	2200      	movs	r2, #0
 8004718:	f7fc f858 	bl	80007cc <__adddf3>
 800471c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800471e:	4606      	mov	r6, r0
 8004720:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004724:	2b00      	cmp	r3, #0
 8004726:	f000 841c 	beq.w	8004f62 <_dtoa_r+0xb4a>
 800472a:	9b06      	ldr	r3, [sp, #24]
 800472c:	9316      	str	r3, [sp, #88]	; 0x58
 800472e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004730:	9312      	str	r3, [sp, #72]	; 0x48
 8004732:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004736:	f7fc fcaf 	bl	8001098 <__aeabi_d2iz>
 800473a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800473c:	4b71      	ldr	r3, [pc, #452]	; (8004904 <_dtoa_r+0x4ec>)
 800473e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004742:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004746:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800474a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800474e:	f7fc f989 	bl	8000a64 <__aeabi_i2d>
 8004752:	460b      	mov	r3, r1
 8004754:	4602      	mov	r2, r0
 8004756:	e9dd 0100 	ldrd	r0, r1, [sp]
 800475a:	e9cd 6700 	strd	r6, r7, [sp]
 800475e:	f7fc f833 	bl	80007c8 <__aeabi_dsub>
 8004762:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004764:	b2ed      	uxtb	r5, r5
 8004766:	4606      	mov	r6, r0
 8004768:	460f      	mov	r7, r1
 800476a:	f10b 0401 	add.w	r4, fp, #1
 800476e:	2b00      	cmp	r3, #0
 8004770:	f000 8458 	beq.w	8005024 <_dtoa_r+0xc0c>
 8004774:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004778:	2000      	movs	r0, #0
 800477a:	4966      	ldr	r1, [pc, #408]	; (8004914 <_dtoa_r+0x4fc>)
 800477c:	f7fc fb06 	bl	8000d8c <__aeabi_ddiv>
 8004780:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004784:	f7fc f820 	bl	80007c8 <__aeabi_dsub>
 8004788:	f88b 5000 	strb.w	r5, [fp]
 800478c:	4632      	mov	r2, r6
 800478e:	463b      	mov	r3, r7
 8004790:	e9cd 0100 	strd	r0, r1, [sp]
 8004794:	f7fc fc60 	bl	8001058 <__aeabi_dcmpgt>
 8004798:	2800      	cmp	r0, #0
 800479a:	f040 8502 	bne.w	80051a2 <_dtoa_r+0xd8a>
 800479e:	4632      	mov	r2, r6
 80047a0:	463b      	mov	r3, r7
 80047a2:	2000      	movs	r0, #0
 80047a4:	4959      	ldr	r1, [pc, #356]	; (800490c <_dtoa_r+0x4f4>)
 80047a6:	f7fc f80f 	bl	80007c8 <__aeabi_dsub>
 80047aa:	4602      	mov	r2, r0
 80047ac:	460b      	mov	r3, r1
 80047ae:	e9dd 0100 	ldrd	r0, r1, [sp]
 80047b2:	f7fc fc51 	bl	8001058 <__aeabi_dcmpgt>
 80047b6:	2800      	cmp	r0, #0
 80047b8:	f040 84fb 	bne.w	80051b2 <_dtoa_r+0xd9a>
 80047bc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80047be:	2a01      	cmp	r2, #1
 80047c0:	d050      	beq.n	8004864 <_dtoa_r+0x44c>
 80047c2:	445a      	add	r2, fp
 80047c4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80047c8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80047cc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80047d0:	4692      	mov	sl, r2
 80047d2:	46cb      	mov	fp, r9
 80047d4:	e9dd 8900 	ldrd	r8, r9, [sp]
 80047d8:	e00c      	b.n	80047f4 <_dtoa_r+0x3dc>
 80047da:	2000      	movs	r0, #0
 80047dc:	494b      	ldr	r1, [pc, #300]	; (800490c <_dtoa_r+0x4f4>)
 80047de:	f7fb fff3 	bl	80007c8 <__aeabi_dsub>
 80047e2:	4642      	mov	r2, r8
 80047e4:	464b      	mov	r3, r9
 80047e6:	f7fc fc19 	bl	800101c <__aeabi_dcmplt>
 80047ea:	2800      	cmp	r0, #0
 80047ec:	f040 84dc 	bne.w	80051a8 <_dtoa_r+0xd90>
 80047f0:	4554      	cmp	r4, sl
 80047f2:	d030      	beq.n	8004856 <_dtoa_r+0x43e>
 80047f4:	4640      	mov	r0, r8
 80047f6:	4649      	mov	r1, r9
 80047f8:	2200      	movs	r2, #0
 80047fa:	4b47      	ldr	r3, [pc, #284]	; (8004918 <_dtoa_r+0x500>)
 80047fc:	f7fc f99c 	bl	8000b38 <__aeabi_dmul>
 8004800:	2200      	movs	r2, #0
 8004802:	4b45      	ldr	r3, [pc, #276]	; (8004918 <_dtoa_r+0x500>)
 8004804:	4680      	mov	r8, r0
 8004806:	4689      	mov	r9, r1
 8004808:	4630      	mov	r0, r6
 800480a:	4639      	mov	r1, r7
 800480c:	f7fc f994 	bl	8000b38 <__aeabi_dmul>
 8004810:	460f      	mov	r7, r1
 8004812:	4606      	mov	r6, r0
 8004814:	f7fc fc40 	bl	8001098 <__aeabi_d2iz>
 8004818:	4605      	mov	r5, r0
 800481a:	f7fc f923 	bl	8000a64 <__aeabi_i2d>
 800481e:	4602      	mov	r2, r0
 8004820:	460b      	mov	r3, r1
 8004822:	4630      	mov	r0, r6
 8004824:	4639      	mov	r1, r7
 8004826:	f7fb ffcf 	bl	80007c8 <__aeabi_dsub>
 800482a:	3530      	adds	r5, #48	; 0x30
 800482c:	b2ed      	uxtb	r5, r5
 800482e:	4642      	mov	r2, r8
 8004830:	464b      	mov	r3, r9
 8004832:	f804 5b01 	strb.w	r5, [r4], #1
 8004836:	4606      	mov	r6, r0
 8004838:	460f      	mov	r7, r1
 800483a:	f7fc fbef 	bl	800101c <__aeabi_dcmplt>
 800483e:	4632      	mov	r2, r6
 8004840:	463b      	mov	r3, r7
 8004842:	2800      	cmp	r0, #0
 8004844:	d0c9      	beq.n	80047da <_dtoa_r+0x3c2>
 8004846:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004848:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800484c:	9306      	str	r3, [sp, #24]
 800484e:	46d9      	mov	r9, fp
 8004850:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004854:	e236      	b.n	8004cc4 <_dtoa_r+0x8ac>
 8004856:	46d9      	mov	r9, fp
 8004858:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800485c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004860:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004864:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004868:	e9cd 3400 	strd	r3, r4, [sp]
 800486c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800486e:	2b00      	cmp	r3, #0
 8004870:	f2c0 80ae 	blt.w	80049d0 <_dtoa_r+0x5b8>
 8004874:	9a06      	ldr	r2, [sp, #24]
 8004876:	2a0e      	cmp	r2, #14
 8004878:	f300 80aa 	bgt.w	80049d0 <_dtoa_r+0x5b8>
 800487c:	4b21      	ldr	r3, [pc, #132]	; (8004904 <_dtoa_r+0x4ec>)
 800487e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004882:	ed93 7b00 	vldr	d7, [r3]
 8004886:	9b07      	ldr	r3, [sp, #28]
 8004888:	2b00      	cmp	r3, #0
 800488a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800488e:	f2c0 82be 	blt.w	8004e0e <_dtoa_r+0x9f6>
 8004892:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004896:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800489a:	4630      	mov	r0, r6
 800489c:	4639      	mov	r1, r7
 800489e:	f7fc fa75 	bl	8000d8c <__aeabi_ddiv>
 80048a2:	f7fc fbf9 	bl	8001098 <__aeabi_d2iz>
 80048a6:	4605      	mov	r5, r0
 80048a8:	f7fc f8dc 	bl	8000a64 <__aeabi_i2d>
 80048ac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048b0:	f7fc f942 	bl	8000b38 <__aeabi_dmul>
 80048b4:	460b      	mov	r3, r1
 80048b6:	4602      	mov	r2, r0
 80048b8:	4639      	mov	r1, r7
 80048ba:	4630      	mov	r0, r6
 80048bc:	f7fb ff84 	bl	80007c8 <__aeabi_dsub>
 80048c0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80048c4:	f88b 3000 	strb.w	r3, [fp]
 80048c8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048ca:	2b01      	cmp	r3, #1
 80048cc:	4606      	mov	r6, r0
 80048ce:	460f      	mov	r7, r1
 80048d0:	f10b 0401 	add.w	r4, fp, #1
 80048d4:	d053      	beq.n	800497e <_dtoa_r+0x566>
 80048d6:	2200      	movs	r2, #0
 80048d8:	4b0f      	ldr	r3, [pc, #60]	; (8004918 <_dtoa_r+0x500>)
 80048da:	f7fc f92d 	bl	8000b38 <__aeabi_dmul>
 80048de:	2200      	movs	r2, #0
 80048e0:	2300      	movs	r3, #0
 80048e2:	4606      	mov	r6, r0
 80048e4:	460f      	mov	r7, r1
 80048e6:	f7fc fb8f 	bl	8001008 <__aeabi_dcmpeq>
 80048ea:	2800      	cmp	r0, #0
 80048ec:	f040 81ea 	bne.w	8004cc4 <_dtoa_r+0x8ac>
 80048f0:	f8cd a000 	str.w	sl, [sp]
 80048f4:	f8cd 901c 	str.w	r9, [sp, #28]
 80048f8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80048fc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004900:	e017      	b.n	8004932 <_dtoa_r+0x51a>
 8004902:	bf00      	nop
 8004904:	080074b8 	.word	0x080074b8
 8004908:	08007490 	.word	0x08007490
 800490c:	3ff00000 	.word	0x3ff00000
 8004910:	401c0000 	.word	0x401c0000
 8004914:	3fe00000 	.word	0x3fe00000
 8004918:	40240000 	.word	0x40240000
 800491c:	f7fc f90c 	bl	8000b38 <__aeabi_dmul>
 8004920:	2200      	movs	r2, #0
 8004922:	2300      	movs	r3, #0
 8004924:	4606      	mov	r6, r0
 8004926:	460f      	mov	r7, r1
 8004928:	f7fc fb6e 	bl	8001008 <__aeabi_dcmpeq>
 800492c:	2800      	cmp	r0, #0
 800492e:	f040 833d 	bne.w	8004fac <_dtoa_r+0xb94>
 8004932:	464a      	mov	r2, r9
 8004934:	4653      	mov	r3, sl
 8004936:	4630      	mov	r0, r6
 8004938:	4639      	mov	r1, r7
 800493a:	f7fc fa27 	bl	8000d8c <__aeabi_ddiv>
 800493e:	f7fc fbab 	bl	8001098 <__aeabi_d2iz>
 8004942:	4605      	mov	r5, r0
 8004944:	f7fc f88e 	bl	8000a64 <__aeabi_i2d>
 8004948:	464a      	mov	r2, r9
 800494a:	4653      	mov	r3, sl
 800494c:	f7fc f8f4 	bl	8000b38 <__aeabi_dmul>
 8004950:	4602      	mov	r2, r0
 8004952:	460b      	mov	r3, r1
 8004954:	4630      	mov	r0, r6
 8004956:	4639      	mov	r1, r7
 8004958:	f7fb ff36 	bl	80007c8 <__aeabi_dsub>
 800495c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004960:	f804 cb01 	strb.w	ip, [r4], #1
 8004964:	eba4 0c0b 	sub.w	ip, r4, fp
 8004968:	45e0      	cmp	r8, ip
 800496a:	4606      	mov	r6, r0
 800496c:	460f      	mov	r7, r1
 800496e:	f04f 0200 	mov.w	r2, #0
 8004972:	4bc1      	ldr	r3, [pc, #772]	; (8004c78 <_dtoa_r+0x860>)
 8004974:	d1d2      	bne.n	800491c <_dtoa_r+0x504>
 8004976:	f8dd a000 	ldr.w	sl, [sp]
 800497a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800497e:	4632      	mov	r2, r6
 8004980:	463b      	mov	r3, r7
 8004982:	4630      	mov	r0, r6
 8004984:	4639      	mov	r1, r7
 8004986:	f7fb ff21 	bl	80007cc <__adddf3>
 800498a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800498e:	4606      	mov	r6, r0
 8004990:	460f      	mov	r7, r1
 8004992:	f7fc fb61 	bl	8001058 <__aeabi_dcmpgt>
 8004996:	b958      	cbnz	r0, 80049b0 <_dtoa_r+0x598>
 8004998:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800499c:	4630      	mov	r0, r6
 800499e:	4639      	mov	r1, r7
 80049a0:	f7fc fb32 	bl	8001008 <__aeabi_dcmpeq>
 80049a4:	2800      	cmp	r0, #0
 80049a6:	f000 818d 	beq.w	8004cc4 <_dtoa_r+0x8ac>
 80049aa:	07e9      	lsls	r1, r5, #31
 80049ac:	f140 818a 	bpl.w	8004cc4 <_dtoa_r+0x8ac>
 80049b0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80049b4:	e005      	b.n	80049c2 <_dtoa_r+0x5aa>
 80049b6:	459b      	cmp	fp, r3
 80049b8:	f000 8373 	beq.w	80050a2 <_dtoa_r+0xc8a>
 80049bc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80049c0:	461c      	mov	r4, r3
 80049c2:	2d39      	cmp	r5, #57	; 0x39
 80049c4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049c8:	d0f5      	beq.n	80049b6 <_dtoa_r+0x59e>
 80049ca:	3501      	adds	r5, #1
 80049cc:	701d      	strb	r5, [r3, #0]
 80049ce:	e179      	b.n	8004cc4 <_dtoa_r+0x8ac>
 80049d0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80049d2:	2a00      	cmp	r2, #0
 80049d4:	d03b      	beq.n	8004a4e <_dtoa_r+0x636>
 80049d6:	9a02      	ldr	r2, [sp, #8]
 80049d8:	2a01      	cmp	r2, #1
 80049da:	f340 820b 	ble.w	8004df4 <_dtoa_r+0x9dc>
 80049de:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049e0:	1e5f      	subs	r7, r3, #1
 80049e2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80049e4:	42bb      	cmp	r3, r7
 80049e6:	f2c0 82e6 	blt.w	8004fb6 <_dtoa_r+0xb9e>
 80049ea:	1bdf      	subs	r7, r3, r7
 80049ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049ee:	2b00      	cmp	r3, #0
 80049f0:	f2c0 830b 	blt.w	800500a <_dtoa_r+0xbf2>
 80049f4:	9a08      	ldr	r2, [sp, #32]
 80049f6:	4614      	mov	r4, r2
 80049f8:	441a      	add	r2, r3
 80049fa:	4498      	add	r8, r3
 80049fc:	9208      	str	r2, [sp, #32]
 80049fe:	2101      	movs	r1, #1
 8004a00:	4648      	mov	r0, r9
 8004a02:	f001 fcbf 	bl	8006384 <__i2b>
 8004a06:	4605      	mov	r5, r0
 8004a08:	e024      	b.n	8004a54 <_dtoa_r+0x63c>
 8004a0a:	2301      	movs	r3, #1
 8004a0c:	930d      	str	r3, [sp, #52]	; 0x34
 8004a0e:	e5af      	b.n	8004570 <_dtoa_r+0x158>
 8004a10:	9a08      	ldr	r2, [sp, #32]
 8004a12:	9b06      	ldr	r3, [sp, #24]
 8004a14:	1ad2      	subs	r2, r2, r3
 8004a16:	425b      	negs	r3, r3
 8004a18:	930b      	str	r3, [sp, #44]	; 0x2c
 8004a1a:	2300      	movs	r3, #0
 8004a1c:	9208      	str	r2, [sp, #32]
 8004a1e:	930c      	str	r3, [sp, #48]	; 0x30
 8004a20:	e5b5      	b.n	800458e <_dtoa_r+0x176>
 8004a22:	f1c4 0301 	rsb	r3, r4, #1
 8004a26:	9308      	str	r3, [sp, #32]
 8004a28:	f04f 0800 	mov.w	r8, #0
 8004a2c:	e5a7      	b.n	800457e <_dtoa_r+0x166>
 8004a2e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004a32:	4640      	mov	r0, r8
 8004a34:	f7fc f816 	bl	8000a64 <__aeabi_i2d>
 8004a38:	4632      	mov	r2, r6
 8004a3a:	463b      	mov	r3, r7
 8004a3c:	f7fc fae4 	bl	8001008 <__aeabi_dcmpeq>
 8004a40:	2800      	cmp	r0, #0
 8004a42:	f47f ad81 	bne.w	8004548 <_dtoa_r+0x130>
 8004a46:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004a4a:	9306      	str	r3, [sp, #24]
 8004a4c:	e57c      	b.n	8004548 <_dtoa_r+0x130>
 8004a4e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004a50:	9c08      	ldr	r4, [sp, #32]
 8004a52:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004a54:	2c00      	cmp	r4, #0
 8004a56:	dd0c      	ble.n	8004a72 <_dtoa_r+0x65a>
 8004a58:	f1b8 0f00 	cmp.w	r8, #0
 8004a5c:	dd09      	ble.n	8004a72 <_dtoa_r+0x65a>
 8004a5e:	4544      	cmp	r4, r8
 8004a60:	9a08      	ldr	r2, [sp, #32]
 8004a62:	4623      	mov	r3, r4
 8004a64:	bfa8      	it	ge
 8004a66:	4643      	movge	r3, r8
 8004a68:	1ad2      	subs	r2, r2, r3
 8004a6a:	9208      	str	r2, [sp, #32]
 8004a6c:	1ae4      	subs	r4, r4, r3
 8004a6e:	eba8 0803 	sub.w	r8, r8, r3
 8004a72:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004a74:	b16b      	cbz	r3, 8004a92 <_dtoa_r+0x67a>
 8004a76:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004a78:	2a00      	cmp	r2, #0
 8004a7a:	f000 8290 	beq.w	8004f9e <_dtoa_r+0xb86>
 8004a7e:	1bde      	subs	r6, r3, r7
 8004a80:	2f00      	cmp	r7, #0
 8004a82:	f040 819b 	bne.w	8004dbc <_dtoa_r+0x9a4>
 8004a86:	4651      	mov	r1, sl
 8004a88:	4632      	mov	r2, r6
 8004a8a:	4648      	mov	r0, r9
 8004a8c:	f001 fd2a 	bl	80064e4 <__pow5mult>
 8004a90:	4682      	mov	sl, r0
 8004a92:	2101      	movs	r1, #1
 8004a94:	4648      	mov	r0, r9
 8004a96:	f001 fc75 	bl	8006384 <__i2b>
 8004a9a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004a9c:	4606      	mov	r6, r0
 8004a9e:	2a00      	cmp	r2, #0
 8004aa0:	f040 8125 	bne.w	8004cee <_dtoa_r+0x8d6>
 8004aa4:	9b02      	ldr	r3, [sp, #8]
 8004aa6:	2b01      	cmp	r3, #1
 8004aa8:	f340 816c 	ble.w	8004d84 <_dtoa_r+0x96c>
 8004aac:	2001      	movs	r0, #1
 8004aae:	4440      	add	r0, r8
 8004ab0:	f010 001f 	ands.w	r0, r0, #31
 8004ab4:	f000 8119 	beq.w	8004cea <_dtoa_r+0x8d2>
 8004ab8:	f1c0 0320 	rsb	r3, r0, #32
 8004abc:	2b04      	cmp	r3, #4
 8004abe:	f340 83ac 	ble.w	800521a <_dtoa_r+0xe02>
 8004ac2:	f1c0 001c 	rsb	r0, r0, #28
 8004ac6:	9b08      	ldr	r3, [sp, #32]
 8004ac8:	4403      	add	r3, r0
 8004aca:	9308      	str	r3, [sp, #32]
 8004acc:	4404      	add	r4, r0
 8004ace:	4480      	add	r8, r0
 8004ad0:	9b08      	ldr	r3, [sp, #32]
 8004ad2:	2b00      	cmp	r3, #0
 8004ad4:	dd05      	ble.n	8004ae2 <_dtoa_r+0x6ca>
 8004ad6:	4651      	mov	r1, sl
 8004ad8:	461a      	mov	r2, r3
 8004ada:	4648      	mov	r0, r9
 8004adc:	f001 fd52 	bl	8006584 <__lshift>
 8004ae0:	4682      	mov	sl, r0
 8004ae2:	f1b8 0f00 	cmp.w	r8, #0
 8004ae6:	dd05      	ble.n	8004af4 <_dtoa_r+0x6dc>
 8004ae8:	4631      	mov	r1, r6
 8004aea:	4642      	mov	r2, r8
 8004aec:	4648      	mov	r0, r9
 8004aee:	f001 fd49 	bl	8006584 <__lshift>
 8004af2:	4606      	mov	r6, r0
 8004af4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004af6:	2b00      	cmp	r3, #0
 8004af8:	d177      	bne.n	8004bea <_dtoa_r+0x7d2>
 8004afa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004afc:	2b00      	cmp	r3, #0
 8004afe:	f340 8209 	ble.w	8004f14 <_dtoa_r+0xafc>
 8004b02:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b04:	2b00      	cmp	r3, #0
 8004b06:	f000 8089 	beq.w	8004c1c <_dtoa_r+0x804>
 8004b0a:	2c00      	cmp	r4, #0
 8004b0c:	f300 816b 	bgt.w	8004de6 <_dtoa_r+0x9ce>
 8004b10:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004b12:	2b00      	cmp	r3, #0
 8004b14:	f040 81cd 	bne.w	8004eb2 <_dtoa_r+0xa9a>
 8004b18:	46a8      	mov	r8, r5
 8004b1a:	9a00      	ldr	r2, [sp, #0]
 8004b1c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004b20:	f002 0201 	and.w	r2, r2, #1
 8004b24:	920a      	str	r2, [sp, #40]	; 0x28
 8004b26:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004b28:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004b2c:	441a      	add	r2, r3
 8004b2e:	465f      	mov	r7, fp
 8004b30:	9209      	str	r2, [sp, #36]	; 0x24
 8004b32:	46b3      	mov	fp, r6
 8004b34:	4659      	mov	r1, fp
 8004b36:	4650      	mov	r0, sl
 8004b38:	f7ff fbdc 	bl	80042f4 <quorem>
 8004b3c:	4629      	mov	r1, r5
 8004b3e:	4604      	mov	r4, r0
 8004b40:	4650      	mov	r0, sl
 8004b42:	f001 fd75 	bl	8006630 <__mcmp>
 8004b46:	4659      	mov	r1, fp
 8004b48:	4606      	mov	r6, r0
 8004b4a:	4642      	mov	r2, r8
 8004b4c:	4648      	mov	r0, r9
 8004b4e:	f001 fd8b 	bl	8006668 <__mdiff>
 8004b52:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004b56:	9300      	str	r3, [sp, #0]
 8004b58:	68c3      	ldr	r3, [r0, #12]
 8004b5a:	4601      	mov	r1, r0
 8004b5c:	2b00      	cmp	r3, #0
 8004b5e:	f040 81d4 	bne.w	8004f0a <_dtoa_r+0xaf2>
 8004b62:	9008      	str	r0, [sp, #32]
 8004b64:	4650      	mov	r0, sl
 8004b66:	f001 fd63 	bl	8006630 <__mcmp>
 8004b6a:	9a08      	ldr	r2, [sp, #32]
 8004b6c:	9007      	str	r0, [sp, #28]
 8004b6e:	4611      	mov	r1, r2
 8004b70:	4648      	mov	r0, r9
 8004b72:	f001 fb6d 	bl	8006250 <_Bfree>
 8004b76:	9b07      	ldr	r3, [sp, #28]
 8004b78:	b933      	cbnz	r3, 8004b88 <_dtoa_r+0x770>
 8004b7a:	9a02      	ldr	r2, [sp, #8]
 8004b7c:	b922      	cbnz	r2, 8004b88 <_dtoa_r+0x770>
 8004b7e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b80:	2b00      	cmp	r3, #0
 8004b82:	f000 8319 	beq.w	80051b8 <_dtoa_r+0xda0>
 8004b86:	9b02      	ldr	r3, [sp, #8]
 8004b88:	2e00      	cmp	r6, #0
 8004b8a:	f2c0 821c 	blt.w	8004fc6 <_dtoa_r+0xbae>
 8004b8e:	d105      	bne.n	8004b9c <_dtoa_r+0x784>
 8004b90:	9a02      	ldr	r2, [sp, #8]
 8004b92:	b91a      	cbnz	r2, 8004b9c <_dtoa_r+0x784>
 8004b94:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004b96:	2a00      	cmp	r2, #0
 8004b98:	f000 8215 	beq.w	8004fc6 <_dtoa_r+0xbae>
 8004b9c:	2b00      	cmp	r3, #0
 8004b9e:	f107 0401 	add.w	r4, r7, #1
 8004ba2:	f300 8225 	bgt.w	8004ff0 <_dtoa_r+0xbd8>
 8004ba6:	9b00      	ldr	r3, [sp, #0]
 8004ba8:	703b      	strb	r3, [r7, #0]
 8004baa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bac:	42bb      	cmp	r3, r7
 8004bae:	f000 8230 	beq.w	8005012 <_dtoa_r+0xbfa>
 8004bb2:	4651      	mov	r1, sl
 8004bb4:	2300      	movs	r3, #0
 8004bb6:	220a      	movs	r2, #10
 8004bb8:	4648      	mov	r0, r9
 8004bba:	f001 fb53 	bl	8006264 <__multadd>
 8004bbe:	4545      	cmp	r5, r8
 8004bc0:	4682      	mov	sl, r0
 8004bc2:	4629      	mov	r1, r5
 8004bc4:	f04f 0300 	mov.w	r3, #0
 8004bc8:	f04f 020a 	mov.w	r2, #10
 8004bcc:	4648      	mov	r0, r9
 8004bce:	f000 8196 	beq.w	8004efe <_dtoa_r+0xae6>
 8004bd2:	f001 fb47 	bl	8006264 <__multadd>
 8004bd6:	4641      	mov	r1, r8
 8004bd8:	4605      	mov	r5, r0
 8004bda:	2300      	movs	r3, #0
 8004bdc:	220a      	movs	r2, #10
 8004bde:	4648      	mov	r0, r9
 8004be0:	f001 fb40 	bl	8006264 <__multadd>
 8004be4:	4627      	mov	r7, r4
 8004be6:	4680      	mov	r8, r0
 8004be8:	e7a4      	b.n	8004b34 <_dtoa_r+0x71c>
 8004bea:	4631      	mov	r1, r6
 8004bec:	4650      	mov	r0, sl
 8004bee:	f001 fd1f 	bl	8006630 <__mcmp>
 8004bf2:	2800      	cmp	r0, #0
 8004bf4:	da81      	bge.n	8004afa <_dtoa_r+0x6e2>
 8004bf6:	9f06      	ldr	r7, [sp, #24]
 8004bf8:	4651      	mov	r1, sl
 8004bfa:	2300      	movs	r3, #0
 8004bfc:	220a      	movs	r2, #10
 8004bfe:	4648      	mov	r0, r9
 8004c00:	3f01      	subs	r7, #1
 8004c02:	9706      	str	r7, [sp, #24]
 8004c04:	f001 fb2e 	bl	8006264 <__multadd>
 8004c08:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004c0a:	4682      	mov	sl, r0
 8004c0c:	2b00      	cmp	r3, #0
 8004c0e:	f040 82eb 	bne.w	80051e8 <_dtoa_r+0xdd0>
 8004c12:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004c14:	2b00      	cmp	r3, #0
 8004c16:	f340 82f3 	ble.w	8005200 <_dtoa_r+0xde8>
 8004c1a:	9309      	str	r3, [sp, #36]	; 0x24
 8004c1c:	465c      	mov	r4, fp
 8004c1e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004c22:	e002      	b.n	8004c2a <_dtoa_r+0x812>
 8004c24:	f001 fb1e 	bl	8006264 <__multadd>
 8004c28:	4682      	mov	sl, r0
 8004c2a:	4631      	mov	r1, r6
 8004c2c:	4650      	mov	r0, sl
 8004c2e:	f7ff fb61 	bl	80042f4 <quorem>
 8004c32:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004c36:	f804 7b01 	strb.w	r7, [r4], #1
 8004c3a:	eba4 030b 	sub.w	r3, r4, fp
 8004c3e:	4598      	cmp	r8, r3
 8004c40:	f04f 020a 	mov.w	r2, #10
 8004c44:	f04f 0300 	mov.w	r3, #0
 8004c48:	4651      	mov	r1, sl
 8004c4a:	4648      	mov	r0, r9
 8004c4c:	dcea      	bgt.n	8004c24 <_dtoa_r+0x80c>
 8004c4e:	2300      	movs	r3, #0
 8004c50:	9700      	str	r7, [sp, #0]
 8004c52:	9302      	str	r3, [sp, #8]
 8004c54:	4651      	mov	r1, sl
 8004c56:	2201      	movs	r2, #1
 8004c58:	4648      	mov	r0, r9
 8004c5a:	f001 fc93 	bl	8006584 <__lshift>
 8004c5e:	4631      	mov	r1, r6
 8004c60:	4682      	mov	sl, r0
 8004c62:	f001 fce5 	bl	8006630 <__mcmp>
 8004c66:	2800      	cmp	r0, #0
 8004c68:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004c6c:	dc14      	bgt.n	8004c98 <_dtoa_r+0x880>
 8004c6e:	d108      	bne.n	8004c82 <_dtoa_r+0x86a>
 8004c70:	9b00      	ldr	r3, [sp, #0]
 8004c72:	07db      	lsls	r3, r3, #31
 8004c74:	d410      	bmi.n	8004c98 <_dtoa_r+0x880>
 8004c76:	e004      	b.n	8004c82 <_dtoa_r+0x86a>
 8004c78:	40240000 	.word	0x40240000
 8004c7c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004c80:	461c      	mov	r4, r3
 8004c82:	2a30      	cmp	r2, #48	; 0x30
 8004c84:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004c88:	d0f8      	beq.n	8004c7c <_dtoa_r+0x864>
 8004c8a:	e00b      	b.n	8004ca4 <_dtoa_r+0x88c>
 8004c8c:	459b      	cmp	fp, r3
 8004c8e:	f000 814e 	beq.w	8004f2e <_dtoa_r+0xb16>
 8004c92:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004c96:	461c      	mov	r4, r3
 8004c98:	2a39      	cmp	r2, #57	; 0x39
 8004c9a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004c9e:	d0f5      	beq.n	8004c8c <_dtoa_r+0x874>
 8004ca0:	3201      	adds	r2, #1
 8004ca2:	701a      	strb	r2, [r3, #0]
 8004ca4:	4631      	mov	r1, r6
 8004ca6:	4648      	mov	r0, r9
 8004ca8:	f001 fad2 	bl	8006250 <_Bfree>
 8004cac:	b155      	cbz	r5, 8004cc4 <_dtoa_r+0x8ac>
 8004cae:	9902      	ldr	r1, [sp, #8]
 8004cb0:	b121      	cbz	r1, 8004cbc <_dtoa_r+0x8a4>
 8004cb2:	42a9      	cmp	r1, r5
 8004cb4:	d002      	beq.n	8004cbc <_dtoa_r+0x8a4>
 8004cb6:	4648      	mov	r0, r9
 8004cb8:	f001 faca 	bl	8006250 <_Bfree>
 8004cbc:	4629      	mov	r1, r5
 8004cbe:	4648      	mov	r0, r9
 8004cc0:	f001 fac6 	bl	8006250 <_Bfree>
 8004cc4:	4651      	mov	r1, sl
 8004cc6:	4648      	mov	r0, r9
 8004cc8:	f001 fac2 	bl	8006250 <_Bfree>
 8004ccc:	2200      	movs	r2, #0
 8004cce:	9b06      	ldr	r3, [sp, #24]
 8004cd0:	7022      	strb	r2, [r4, #0]
 8004cd2:	9a05      	ldr	r2, [sp, #20]
 8004cd4:	3301      	adds	r3, #1
 8004cd6:	6013      	str	r3, [r2, #0]
 8004cd8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004cda:	2b00      	cmp	r3, #0
 8004cdc:	f43f abdb 	beq.w	8004496 <_dtoa_r+0x7e>
 8004ce0:	4658      	mov	r0, fp
 8004ce2:	601c      	str	r4, [r3, #0]
 8004ce4:	b01b      	add	sp, #108	; 0x6c
 8004ce6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004cea:	201c      	movs	r0, #28
 8004cec:	e6eb      	b.n	8004ac6 <_dtoa_r+0x6ae>
 8004cee:	4601      	mov	r1, r0
 8004cf0:	4648      	mov	r0, r9
 8004cf2:	f001 fbf7 	bl	80064e4 <__pow5mult>
 8004cf6:	9b02      	ldr	r3, [sp, #8]
 8004cf8:	2b01      	cmp	r3, #1
 8004cfa:	4606      	mov	r6, r0
 8004cfc:	f340 80d4 	ble.w	8004ea8 <_dtoa_r+0xa90>
 8004d00:	2300      	movs	r3, #0
 8004d02:	930c      	str	r3, [sp, #48]	; 0x30
 8004d04:	6933      	ldr	r3, [r6, #16]
 8004d06:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004d0a:	6918      	ldr	r0, [r3, #16]
 8004d0c:	f001 faea 	bl	80062e4 <__hi0bits>
 8004d10:	f1c0 0020 	rsb	r0, r0, #32
 8004d14:	e6cb      	b.n	8004aae <_dtoa_r+0x696>
 8004d16:	900d      	str	r0, [sp, #52]	; 0x34
 8004d18:	e42a      	b.n	8004570 <_dtoa_r+0x158>
 8004d1a:	2501      	movs	r5, #1
 8004d1c:	e440      	b.n	80045a0 <_dtoa_r+0x188>
 8004d1e:	f1c3 0820 	rsb	r8, r3, #32
 8004d22:	9b00      	ldr	r3, [sp, #0]
 8004d24:	fa03 f008 	lsl.w	r0, r3, r8
 8004d28:	f7ff bbd8 	b.w	80044dc <_dtoa_r+0xc4>
 8004d2c:	2300      	movs	r3, #0
 8004d2e:	930a      	str	r3, [sp, #40]	; 0x28
 8004d30:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004d34:	4413      	add	r3, r2
 8004d36:	930e      	str	r3, [sp, #56]	; 0x38
 8004d38:	3301      	adds	r3, #1
 8004d3a:	2b01      	cmp	r3, #1
 8004d3c:	461e      	mov	r6, r3
 8004d3e:	9309      	str	r3, [sp, #36]	; 0x24
 8004d40:	bfb8      	it	lt
 8004d42:	2601      	movlt	r6, #1
 8004d44:	2100      	movs	r1, #0
 8004d46:	2e17      	cmp	r6, #23
 8004d48:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004d4c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004d4e:	f77f ac89 	ble.w	8004664 <_dtoa_r+0x24c>
 8004d52:	2201      	movs	r2, #1
 8004d54:	2304      	movs	r3, #4
 8004d56:	005b      	lsls	r3, r3, #1
 8004d58:	f103 0014 	add.w	r0, r3, #20
 8004d5c:	42b0      	cmp	r0, r6
 8004d5e:	4611      	mov	r1, r2
 8004d60:	f102 0201 	add.w	r2, r2, #1
 8004d64:	d9f7      	bls.n	8004d56 <_dtoa_r+0x93e>
 8004d66:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004d6a:	e47b      	b.n	8004664 <_dtoa_r+0x24c>
 8004d6c:	2300      	movs	r3, #0
 8004d6e:	930a      	str	r3, [sp, #40]	; 0x28
 8004d70:	9e07      	ldr	r6, [sp, #28]
 8004d72:	2e00      	cmp	r6, #0
 8004d74:	f340 80e2 	ble.w	8004f3c <_dtoa_r+0xb24>
 8004d78:	960e      	str	r6, [sp, #56]	; 0x38
 8004d7a:	9609      	str	r6, [sp, #36]	; 0x24
 8004d7c:	e7e2      	b.n	8004d44 <_dtoa_r+0x92c>
 8004d7e:	2301      	movs	r3, #1
 8004d80:	930a      	str	r3, [sp, #40]	; 0x28
 8004d82:	e7f5      	b.n	8004d70 <_dtoa_r+0x958>
 8004d84:	9b00      	ldr	r3, [sp, #0]
 8004d86:	2b00      	cmp	r3, #0
 8004d88:	f47f ae90 	bne.w	8004aac <_dtoa_r+0x694>
 8004d8c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004d90:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004d94:	2b00      	cmp	r3, #0
 8004d96:	f040 8192 	bne.w	80050be <_dtoa_r+0xca6>
 8004d9a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004d9e:	0d1b      	lsrs	r3, r3, #20
 8004da0:	051b      	lsls	r3, r3, #20
 8004da2:	b12b      	cbz	r3, 8004db0 <_dtoa_r+0x998>
 8004da4:	9b08      	ldr	r3, [sp, #32]
 8004da6:	3301      	adds	r3, #1
 8004da8:	9308      	str	r3, [sp, #32]
 8004daa:	f108 0801 	add.w	r8, r8, #1
 8004dae:	2301      	movs	r3, #1
 8004db0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004db2:	930c      	str	r3, [sp, #48]	; 0x30
 8004db4:	2a00      	cmp	r2, #0
 8004db6:	f43f ae79 	beq.w	8004aac <_dtoa_r+0x694>
 8004dba:	e7a3      	b.n	8004d04 <_dtoa_r+0x8ec>
 8004dbc:	463a      	mov	r2, r7
 8004dbe:	4629      	mov	r1, r5
 8004dc0:	4648      	mov	r0, r9
 8004dc2:	f001 fb8f 	bl	80064e4 <__pow5mult>
 8004dc6:	4652      	mov	r2, sl
 8004dc8:	4601      	mov	r1, r0
 8004dca:	4605      	mov	r5, r0
 8004dcc:	4648      	mov	r0, r9
 8004dce:	f001 fae3 	bl	8006398 <__multiply>
 8004dd2:	4651      	mov	r1, sl
 8004dd4:	4607      	mov	r7, r0
 8004dd6:	4648      	mov	r0, r9
 8004dd8:	f001 fa3a 	bl	8006250 <_Bfree>
 8004ddc:	46ba      	mov	sl, r7
 8004dde:	2e00      	cmp	r6, #0
 8004de0:	f43f ae57 	beq.w	8004a92 <_dtoa_r+0x67a>
 8004de4:	e64f      	b.n	8004a86 <_dtoa_r+0x66e>
 8004de6:	4629      	mov	r1, r5
 8004de8:	4622      	mov	r2, r4
 8004dea:	4648      	mov	r0, r9
 8004dec:	f001 fbca 	bl	8006584 <__lshift>
 8004df0:	4605      	mov	r5, r0
 8004df2:	e68d      	b.n	8004b10 <_dtoa_r+0x6f8>
 8004df4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004df6:	2a00      	cmp	r2, #0
 8004df8:	f000 815d 	beq.w	80050b6 <_dtoa_r+0xc9e>
 8004dfc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004e00:	9a08      	ldr	r2, [sp, #32]
 8004e02:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004e04:	4614      	mov	r4, r2
 8004e06:	441a      	add	r2, r3
 8004e08:	4498      	add	r8, r3
 8004e0a:	9208      	str	r2, [sp, #32]
 8004e0c:	e5f7      	b.n	80049fe <_dtoa_r+0x5e6>
 8004e0e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e10:	2b00      	cmp	r3, #0
 8004e12:	f73f ad3e 	bgt.w	8004892 <_dtoa_r+0x47a>
 8004e16:	f040 80bc 	bne.w	8004f92 <_dtoa_r+0xb7a>
 8004e1a:	ec51 0b17 	vmov	r0, r1, d7
 8004e1e:	2200      	movs	r2, #0
 8004e20:	4bb2      	ldr	r3, [pc, #712]	; (80050ec <_dtoa_r+0xcd4>)
 8004e22:	f7fb fe89 	bl	8000b38 <__aeabi_dmul>
 8004e26:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e2a:	f7fc f90b 	bl	8001044 <__aeabi_dcmpge>
 8004e2e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004e30:	4635      	mov	r5, r6
 8004e32:	2800      	cmp	r0, #0
 8004e34:	d176      	bne.n	8004f24 <_dtoa_r+0xb0c>
 8004e36:	9a06      	ldr	r2, [sp, #24]
 8004e38:	2331      	movs	r3, #49	; 0x31
 8004e3a:	3201      	adds	r2, #1
 8004e3c:	9206      	str	r2, [sp, #24]
 8004e3e:	f88b 3000 	strb.w	r3, [fp]
 8004e42:	f10b 0401 	add.w	r4, fp, #1
 8004e46:	4631      	mov	r1, r6
 8004e48:	4648      	mov	r0, r9
 8004e4a:	f001 fa01 	bl	8006250 <_Bfree>
 8004e4e:	2d00      	cmp	r5, #0
 8004e50:	f47f af34 	bne.w	8004cbc <_dtoa_r+0x8a4>
 8004e54:	e736      	b.n	8004cc4 <_dtoa_r+0x8ac>
 8004e56:	f000 8142 	beq.w	80050de <_dtoa_r+0xcc6>
 8004e5a:	9b06      	ldr	r3, [sp, #24]
 8004e5c:	425c      	negs	r4, r3
 8004e5e:	4ba4      	ldr	r3, [pc, #656]	; (80050f0 <_dtoa_r+0xcd8>)
 8004e60:	f004 020f 	and.w	r2, r4, #15
 8004e64:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004e68:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004e6c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004e70:	f7fb fe62 	bl	8000b38 <__aeabi_dmul>
 8004e74:	1124      	asrs	r4, r4, #4
 8004e76:	e9cd 0100 	strd	r0, r1, [sp]
 8004e7a:	f000 81c6 	beq.w	800520a <_dtoa_r+0xdf2>
 8004e7e:	4d9d      	ldr	r5, [pc, #628]	; (80050f4 <_dtoa_r+0xcdc>)
 8004e80:	2300      	movs	r3, #0
 8004e82:	2602      	movs	r6, #2
 8004e84:	07e7      	lsls	r7, r4, #31
 8004e86:	d505      	bpl.n	8004e94 <_dtoa_r+0xa7c>
 8004e88:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004e8c:	f7fb fe54 	bl	8000b38 <__aeabi_dmul>
 8004e90:	3601      	adds	r6, #1
 8004e92:	2301      	movs	r3, #1
 8004e94:	1064      	asrs	r4, r4, #1
 8004e96:	f105 0508 	add.w	r5, r5, #8
 8004e9a:	d1f3      	bne.n	8004e84 <_dtoa_r+0xa6c>
 8004e9c:	2b00      	cmp	r3, #0
 8004e9e:	f43f ac27 	beq.w	80046f0 <_dtoa_r+0x2d8>
 8004ea2:	e9cd 0100 	strd	r0, r1, [sp]
 8004ea6:	e423      	b.n	80046f0 <_dtoa_r+0x2d8>
 8004ea8:	9b00      	ldr	r3, [sp, #0]
 8004eaa:	2b00      	cmp	r3, #0
 8004eac:	f43f af6e 	beq.w	8004d8c <_dtoa_r+0x974>
 8004eb0:	e726      	b.n	8004d00 <_dtoa_r+0x8e8>
 8004eb2:	6869      	ldr	r1, [r5, #4]
 8004eb4:	4648      	mov	r0, r9
 8004eb6:	f001 f9a5 	bl	8006204 <_Balloc>
 8004eba:	692b      	ldr	r3, [r5, #16]
 8004ebc:	3302      	adds	r3, #2
 8004ebe:	009a      	lsls	r2, r3, #2
 8004ec0:	4604      	mov	r4, r0
 8004ec2:	f105 010c 	add.w	r1, r5, #12
 8004ec6:	300c      	adds	r0, #12
 8004ec8:	f7fb fb1a 	bl	8000500 <memcpy>
 8004ecc:	4621      	mov	r1, r4
 8004ece:	2201      	movs	r2, #1
 8004ed0:	4648      	mov	r0, r9
 8004ed2:	f001 fb57 	bl	8006584 <__lshift>
 8004ed6:	4680      	mov	r8, r0
 8004ed8:	e61f      	b.n	8004b1a <_dtoa_r+0x702>
 8004eda:	2400      	movs	r4, #0
 8004edc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004ee0:	4621      	mov	r1, r4
 8004ee2:	4648      	mov	r0, r9
 8004ee4:	f001 f98e 	bl	8006204 <_Balloc>
 8004ee8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004eec:	930e      	str	r3, [sp, #56]	; 0x38
 8004eee:	9309      	str	r3, [sp, #36]	; 0x24
 8004ef0:	2301      	movs	r3, #1
 8004ef2:	4683      	mov	fp, r0
 8004ef4:	9407      	str	r4, [sp, #28]
 8004ef6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004efa:	930a      	str	r3, [sp, #40]	; 0x28
 8004efc:	e4b6      	b.n	800486c <_dtoa_r+0x454>
 8004efe:	f001 f9b1 	bl	8006264 <__multadd>
 8004f02:	4627      	mov	r7, r4
 8004f04:	4605      	mov	r5, r0
 8004f06:	4680      	mov	r8, r0
 8004f08:	e614      	b.n	8004b34 <_dtoa_r+0x71c>
 8004f0a:	4648      	mov	r0, r9
 8004f0c:	f001 f9a0 	bl	8006250 <_Bfree>
 8004f10:	2301      	movs	r3, #1
 8004f12:	e639      	b.n	8004b88 <_dtoa_r+0x770>
 8004f14:	9b02      	ldr	r3, [sp, #8]
 8004f16:	2b02      	cmp	r3, #2
 8004f18:	f77f adf3 	ble.w	8004b02 <_dtoa_r+0x6ea>
 8004f1c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f1e:	2b00      	cmp	r3, #0
 8004f20:	f000 80cf 	beq.w	80050c2 <_dtoa_r+0xcaa>
 8004f24:	9b07      	ldr	r3, [sp, #28]
 8004f26:	43db      	mvns	r3, r3
 8004f28:	9306      	str	r3, [sp, #24]
 8004f2a:	465c      	mov	r4, fp
 8004f2c:	e78b      	b.n	8004e46 <_dtoa_r+0xa2e>
 8004f2e:	9a06      	ldr	r2, [sp, #24]
 8004f30:	2331      	movs	r3, #49	; 0x31
 8004f32:	3201      	adds	r2, #1
 8004f34:	9206      	str	r2, [sp, #24]
 8004f36:	f88b 3000 	strb.w	r3, [fp]
 8004f3a:	e6b3      	b.n	8004ca4 <_dtoa_r+0x88c>
 8004f3c:	2401      	movs	r4, #1
 8004f3e:	9409      	str	r4, [sp, #36]	; 0x24
 8004f40:	9407      	str	r4, [sp, #28]
 8004f42:	f7ff bb8b 	b.w	800465c <_dtoa_r+0x244>
 8004f46:	4630      	mov	r0, r6
 8004f48:	f7fb fd8c 	bl	8000a64 <__aeabi_i2d>
 8004f4c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f50:	f7fb fdf2 	bl	8000b38 <__aeabi_dmul>
 8004f54:	2200      	movs	r2, #0
 8004f56:	4b68      	ldr	r3, [pc, #416]	; (80050f8 <_dtoa_r+0xce0>)
 8004f58:	f7fb fc38 	bl	80007cc <__adddf3>
 8004f5c:	4606      	mov	r6, r0
 8004f5e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004f62:	2200      	movs	r2, #0
 8004f64:	4b61      	ldr	r3, [pc, #388]	; (80050ec <_dtoa_r+0xcd4>)
 8004f66:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f6a:	f7fb fc2d 	bl	80007c8 <__aeabi_dsub>
 8004f6e:	4632      	mov	r2, r6
 8004f70:	463b      	mov	r3, r7
 8004f72:	4604      	mov	r4, r0
 8004f74:	460d      	mov	r5, r1
 8004f76:	f7fc f86f 	bl	8001058 <__aeabi_dcmpgt>
 8004f7a:	2800      	cmp	r0, #0
 8004f7c:	d14f      	bne.n	800501e <_dtoa_r+0xc06>
 8004f7e:	4632      	mov	r2, r6
 8004f80:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004f84:	4620      	mov	r0, r4
 8004f86:	4629      	mov	r1, r5
 8004f88:	f7fc f848 	bl	800101c <__aeabi_dcmplt>
 8004f8c:	2800      	cmp	r0, #0
 8004f8e:	f43f ac69 	beq.w	8004864 <_dtoa_r+0x44c>
 8004f92:	2600      	movs	r6, #0
 8004f94:	4635      	mov	r5, r6
 8004f96:	e7c5      	b.n	8004f24 <_dtoa_r+0xb0c>
 8004f98:	2301      	movs	r3, #1
 8004f9a:	930a      	str	r3, [sp, #40]	; 0x28
 8004f9c:	e6c8      	b.n	8004d30 <_dtoa_r+0x918>
 8004f9e:	4651      	mov	r1, sl
 8004fa0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004fa2:	4648      	mov	r0, r9
 8004fa4:	f001 fa9e 	bl	80064e4 <__pow5mult>
 8004fa8:	4682      	mov	sl, r0
 8004faa:	e572      	b.n	8004a92 <_dtoa_r+0x67a>
 8004fac:	f8dd a000 	ldr.w	sl, [sp]
 8004fb0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004fb4:	e686      	b.n	8004cc4 <_dtoa_r+0x8ac>
 8004fb6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004fb8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004fba:	1afb      	subs	r3, r7, r3
 8004fbc:	441a      	add	r2, r3
 8004fbe:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004fc2:	2700      	movs	r7, #0
 8004fc4:	e512      	b.n	80049ec <_dtoa_r+0x5d4>
 8004fc6:	2b00      	cmp	r3, #0
 8004fc8:	9402      	str	r4, [sp, #8]
 8004fca:	465e      	mov	r6, fp
 8004fcc:	f107 0401 	add.w	r4, r7, #1
 8004fd0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004fd4:	f300 80ba 	bgt.w	800514c <_dtoa_r+0xd34>
 8004fd8:	9b00      	ldr	r3, [sp, #0]
 8004fda:	9502      	str	r5, [sp, #8]
 8004fdc:	703b      	strb	r3, [r7, #0]
 8004fde:	4645      	mov	r5, r8
 8004fe0:	e660      	b.n	8004ca4 <_dtoa_r+0x88c>
 8004fe2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004fe6:	2602      	movs	r6, #2
 8004fe8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004fec:	f7ff bb67 	b.w	80046be <_dtoa_r+0x2a6>
 8004ff0:	9b00      	ldr	r3, [sp, #0]
 8004ff2:	2b39      	cmp	r3, #57	; 0x39
 8004ff4:	465e      	mov	r6, fp
 8004ff6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004ffa:	f000 80b9 	beq.w	8005170 <_dtoa_r+0xd58>
 8004ffe:	9b00      	ldr	r3, [sp, #0]
 8005000:	9502      	str	r5, [sp, #8]
 8005002:	3301      	adds	r3, #1
 8005004:	703b      	strb	r3, [r7, #0]
 8005006:	4645      	mov	r5, r8
 8005008:	e64c      	b.n	8004ca4 <_dtoa_r+0x88c>
 800500a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800500e:	1a9c      	subs	r4, r3, r2
 8005010:	e4f5      	b.n	80049fe <_dtoa_r+0x5e6>
 8005012:	465e      	mov	r6, fp
 8005014:	9502      	str	r5, [sp, #8]
 8005016:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800501a:	4645      	mov	r5, r8
 800501c:	e61a      	b.n	8004c54 <_dtoa_r+0x83c>
 800501e:	2600      	movs	r6, #0
 8005020:	4635      	mov	r5, r6
 8005022:	e708      	b.n	8004e36 <_dtoa_r+0xa1e>
 8005024:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005028:	e9dd 0100 	ldrd	r0, r1, [sp]
 800502c:	f7fb fd84 	bl	8000b38 <__aeabi_dmul>
 8005030:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005032:	f88b 5000 	strb.w	r5, [fp]
 8005036:	2b01      	cmp	r3, #1
 8005038:	e9cd 0100 	strd	r0, r1, [sp]
 800503c:	d020      	beq.n	8005080 <_dtoa_r+0xc68>
 800503e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005040:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005044:	445b      	add	r3, fp
 8005046:	4698      	mov	r8, r3
 8005048:	2200      	movs	r2, #0
 800504a:	4b2c      	ldr	r3, [pc, #176]	; (80050fc <_dtoa_r+0xce4>)
 800504c:	4630      	mov	r0, r6
 800504e:	4639      	mov	r1, r7
 8005050:	f7fb fd72 	bl	8000b38 <__aeabi_dmul>
 8005054:	460f      	mov	r7, r1
 8005056:	4606      	mov	r6, r0
 8005058:	f7fc f81e 	bl	8001098 <__aeabi_d2iz>
 800505c:	4605      	mov	r5, r0
 800505e:	f7fb fd01 	bl	8000a64 <__aeabi_i2d>
 8005062:	3530      	adds	r5, #48	; 0x30
 8005064:	4602      	mov	r2, r0
 8005066:	460b      	mov	r3, r1
 8005068:	4630      	mov	r0, r6
 800506a:	4639      	mov	r1, r7
 800506c:	f7fb fbac 	bl	80007c8 <__aeabi_dsub>
 8005070:	f804 5b01 	strb.w	r5, [r4], #1
 8005074:	4544      	cmp	r4, r8
 8005076:	4606      	mov	r6, r0
 8005078:	460f      	mov	r7, r1
 800507a:	d1e5      	bne.n	8005048 <_dtoa_r+0xc30>
 800507c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005080:	4b1f      	ldr	r3, [pc, #124]	; (8005100 <_dtoa_r+0xce8>)
 8005082:	2200      	movs	r2, #0
 8005084:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005088:	f7fb fba0 	bl	80007cc <__adddf3>
 800508c:	4632      	mov	r2, r6
 800508e:	463b      	mov	r3, r7
 8005090:	f7fb ffc4 	bl	800101c <__aeabi_dcmplt>
 8005094:	2800      	cmp	r0, #0
 8005096:	d070      	beq.n	800517a <_dtoa_r+0xd62>
 8005098:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800509a:	9306      	str	r3, [sp, #24]
 800509c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80050a0:	e48f      	b.n	80049c2 <_dtoa_r+0x5aa>
 80050a2:	2330      	movs	r3, #48	; 0x30
 80050a4:	f88b 3000 	strb.w	r3, [fp]
 80050a8:	9b06      	ldr	r3, [sp, #24]
 80050aa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80050ae:	3301      	adds	r3, #1
 80050b0:	9306      	str	r3, [sp, #24]
 80050b2:	465b      	mov	r3, fp
 80050b4:	e489      	b.n	80049ca <_dtoa_r+0x5b2>
 80050b6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80050b8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80050bc:	e6a0      	b.n	8004e00 <_dtoa_r+0x9e8>
 80050be:	2300      	movs	r3, #0
 80050c0:	e676      	b.n	8004db0 <_dtoa_r+0x998>
 80050c2:	4631      	mov	r1, r6
 80050c4:	2205      	movs	r2, #5
 80050c6:	4648      	mov	r0, r9
 80050c8:	f001 f8cc 	bl	8006264 <__multadd>
 80050cc:	4601      	mov	r1, r0
 80050ce:	4606      	mov	r6, r0
 80050d0:	4650      	mov	r0, sl
 80050d2:	f001 faad 	bl	8006630 <__mcmp>
 80050d6:	2800      	cmp	r0, #0
 80050d8:	f73f aead 	bgt.w	8004e36 <_dtoa_r+0xa1e>
 80050dc:	e722      	b.n	8004f24 <_dtoa_r+0xb0c>
 80050de:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80050e2:	2602      	movs	r6, #2
 80050e4:	ed8d 7b00 	vstr	d7, [sp]
 80050e8:	f7ff bb02 	b.w	80046f0 <_dtoa_r+0x2d8>
 80050ec:	40140000 	.word	0x40140000
 80050f0:	080074b8 	.word	0x080074b8
 80050f4:	08007490 	.word	0x08007490
 80050f8:	401c0000 	.word	0x401c0000
 80050fc:	40240000 	.word	0x40240000
 8005100:	3fe00000 	.word	0x3fe00000
 8005104:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005106:	2b00      	cmp	r3, #0
 8005108:	f43f af1d 	beq.w	8004f46 <_dtoa_r+0xb2e>
 800510c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800510e:	2c00      	cmp	r4, #0
 8005110:	f77f aba8 	ble.w	8004864 <_dtoa_r+0x44c>
 8005114:	2200      	movs	r2, #0
 8005116:	4b45      	ldr	r3, [pc, #276]	; (800522c <_dtoa_r+0xe14>)
 8005118:	e9dd 0100 	ldrd	r0, r1, [sp]
 800511c:	f7fb fd0c 	bl	8000b38 <__aeabi_dmul>
 8005120:	e9cd 0100 	strd	r0, r1, [sp]
 8005124:	1c70      	adds	r0, r6, #1
 8005126:	f7fb fc9d 	bl	8000a64 <__aeabi_i2d>
 800512a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800512e:	f7fb fd03 	bl	8000b38 <__aeabi_dmul>
 8005132:	4b3f      	ldr	r3, [pc, #252]	; (8005230 <_dtoa_r+0xe18>)
 8005134:	2200      	movs	r2, #0
 8005136:	f7fb fb49 	bl	80007cc <__adddf3>
 800513a:	9b06      	ldr	r3, [sp, #24]
 800513c:	9412      	str	r4, [sp, #72]	; 0x48
 800513e:	3b01      	subs	r3, #1
 8005140:	4606      	mov	r6, r0
 8005142:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005146:	9316      	str	r3, [sp, #88]	; 0x58
 8005148:	f7ff baf3 	b.w	8004732 <_dtoa_r+0x31a>
 800514c:	4651      	mov	r1, sl
 800514e:	2201      	movs	r2, #1
 8005150:	4648      	mov	r0, r9
 8005152:	f001 fa17 	bl	8006584 <__lshift>
 8005156:	4631      	mov	r1, r6
 8005158:	4682      	mov	sl, r0
 800515a:	f001 fa69 	bl	8006630 <__mcmp>
 800515e:	2800      	cmp	r0, #0
 8005160:	dd3b      	ble.n	80051da <_dtoa_r+0xdc2>
 8005162:	9b00      	ldr	r3, [sp, #0]
 8005164:	2b39      	cmp	r3, #57	; 0x39
 8005166:	d003      	beq.n	8005170 <_dtoa_r+0xd58>
 8005168:	9b02      	ldr	r3, [sp, #8]
 800516a:	3331      	adds	r3, #49	; 0x31
 800516c:	9300      	str	r3, [sp, #0]
 800516e:	e733      	b.n	8004fd8 <_dtoa_r+0xbc0>
 8005170:	2239      	movs	r2, #57	; 0x39
 8005172:	9502      	str	r5, [sp, #8]
 8005174:	703a      	strb	r2, [r7, #0]
 8005176:	4645      	mov	r5, r8
 8005178:	e58e      	b.n	8004c98 <_dtoa_r+0x880>
 800517a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800517e:	2000      	movs	r0, #0
 8005180:	492c      	ldr	r1, [pc, #176]	; (8005234 <_dtoa_r+0xe1c>)
 8005182:	f7fb fb21 	bl	80007c8 <__aeabi_dsub>
 8005186:	4632      	mov	r2, r6
 8005188:	463b      	mov	r3, r7
 800518a:	f7fb ff65 	bl	8001058 <__aeabi_dcmpgt>
 800518e:	b910      	cbnz	r0, 8005196 <_dtoa_r+0xd7e>
 8005190:	f7ff bb68 	b.w	8004864 <_dtoa_r+0x44c>
 8005194:	4614      	mov	r4, r2
 8005196:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800519a:	2b30      	cmp	r3, #48	; 0x30
 800519c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80051a0:	d0f8      	beq.n	8005194 <_dtoa_r+0xd7c>
 80051a2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80051a4:	9306      	str	r3, [sp, #24]
 80051a6:	e58d      	b.n	8004cc4 <_dtoa_r+0x8ac>
 80051a8:	46d9      	mov	r9, fp
 80051aa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80051ae:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80051b2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80051b4:	9306      	str	r3, [sp, #24]
 80051b6:	e404      	b.n	80049c2 <_dtoa_r+0x5aa>
 80051b8:	9b00      	ldr	r3, [sp, #0]
 80051ba:	2b39      	cmp	r3, #57	; 0x39
 80051bc:	4621      	mov	r1, r4
 80051be:	4632      	mov	r2, r6
 80051c0:	f107 0401 	add.w	r4, r7, #1
 80051c4:	465e      	mov	r6, fp
 80051c6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80051ca:	d0d1      	beq.n	8005170 <_dtoa_r+0xd58>
 80051cc:	2a00      	cmp	r2, #0
 80051ce:	f77f af03 	ble.w	8004fd8 <_dtoa_r+0xbc0>
 80051d2:	460b      	mov	r3, r1
 80051d4:	3331      	adds	r3, #49	; 0x31
 80051d6:	9300      	str	r3, [sp, #0]
 80051d8:	e6fe      	b.n	8004fd8 <_dtoa_r+0xbc0>
 80051da:	f47f aefd 	bne.w	8004fd8 <_dtoa_r+0xbc0>
 80051de:	9b00      	ldr	r3, [sp, #0]
 80051e0:	07da      	lsls	r2, r3, #31
 80051e2:	f57f aef9 	bpl.w	8004fd8 <_dtoa_r+0xbc0>
 80051e6:	e7bc      	b.n	8005162 <_dtoa_r+0xd4a>
 80051e8:	4629      	mov	r1, r5
 80051ea:	2300      	movs	r3, #0
 80051ec:	220a      	movs	r2, #10
 80051ee:	4648      	mov	r0, r9
 80051f0:	f001 f838 	bl	8006264 <__multadd>
 80051f4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80051f6:	2b00      	cmp	r3, #0
 80051f8:	4605      	mov	r5, r0
 80051fa:	dd09      	ble.n	8005210 <_dtoa_r+0xdf8>
 80051fc:	9309      	str	r3, [sp, #36]	; 0x24
 80051fe:	e484      	b.n	8004b0a <_dtoa_r+0x6f2>
 8005200:	9b02      	ldr	r3, [sp, #8]
 8005202:	2b02      	cmp	r3, #2
 8005204:	dc0e      	bgt.n	8005224 <_dtoa_r+0xe0c>
 8005206:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005208:	e507      	b.n	8004c1a <_dtoa_r+0x802>
 800520a:	2602      	movs	r6, #2
 800520c:	f7ff ba70 	b.w	80046f0 <_dtoa_r+0x2d8>
 8005210:	9b02      	ldr	r3, [sp, #8]
 8005212:	2b02      	cmp	r3, #2
 8005214:	dc06      	bgt.n	8005224 <_dtoa_r+0xe0c>
 8005216:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005218:	e7f0      	b.n	80051fc <_dtoa_r+0xde4>
 800521a:	f43f ac59 	beq.w	8004ad0 <_dtoa_r+0x6b8>
 800521e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005222:	e450      	b.n	8004ac6 <_dtoa_r+0x6ae>
 8005224:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005226:	9309      	str	r3, [sp, #36]	; 0x24
 8005228:	e678      	b.n	8004f1c <_dtoa_r+0xb04>
 800522a:	bf00      	nop
 800522c:	40240000 	.word	0x40240000
 8005230:	401c0000 	.word	0x401c0000
 8005234:	3fe00000 	.word	0x3fe00000

08005238 <__sflush_r>:
 8005238:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800523c:	b29a      	uxth	r2, r3
 800523e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005242:	460c      	mov	r4, r1
 8005244:	0711      	lsls	r1, r2, #28
 8005246:	4680      	mov	r8, r0
 8005248:	d444      	bmi.n	80052d4 <__sflush_r+0x9c>
 800524a:	6862      	ldr	r2, [r4, #4]
 800524c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005250:	2a00      	cmp	r2, #0
 8005252:	81a3      	strh	r3, [r4, #12]
 8005254:	dd59      	ble.n	800530a <__sflush_r+0xd2>
 8005256:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005258:	2d00      	cmp	r5, #0
 800525a:	d053      	beq.n	8005304 <__sflush_r+0xcc>
 800525c:	2200      	movs	r2, #0
 800525e:	b29b      	uxth	r3, r3
 8005260:	f8d8 6000 	ldr.w	r6, [r8]
 8005264:	69e1      	ldr	r1, [r4, #28]
 8005266:	f8c8 2000 	str.w	r2, [r8]
 800526a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800526e:	f040 8083 	bne.w	8005378 <__sflush_r+0x140>
 8005272:	2301      	movs	r3, #1
 8005274:	4640      	mov	r0, r8
 8005276:	47a8      	blx	r5
 8005278:	1c42      	adds	r2, r0, #1
 800527a:	d04a      	beq.n	8005312 <__sflush_r+0xda>
 800527c:	89a3      	ldrh	r3, [r4, #12]
 800527e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005280:	69e1      	ldr	r1, [r4, #28]
 8005282:	075b      	lsls	r3, r3, #29
 8005284:	d505      	bpl.n	8005292 <__sflush_r+0x5a>
 8005286:	6862      	ldr	r2, [r4, #4]
 8005288:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800528a:	1a80      	subs	r0, r0, r2
 800528c:	b10b      	cbz	r3, 8005292 <__sflush_r+0x5a>
 800528e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005290:	1ac0      	subs	r0, r0, r3
 8005292:	4602      	mov	r2, r0
 8005294:	2300      	movs	r3, #0
 8005296:	4640      	mov	r0, r8
 8005298:	47a8      	blx	r5
 800529a:	1c47      	adds	r7, r0, #1
 800529c:	d045      	beq.n	800532a <__sflush_r+0xf2>
 800529e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80052a2:	6922      	ldr	r2, [r4, #16]
 80052a4:	6022      	str	r2, [r4, #0]
 80052a6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80052aa:	2200      	movs	r2, #0
 80052ac:	81a3      	strh	r3, [r4, #12]
 80052ae:	04db      	lsls	r3, r3, #19
 80052b0:	6062      	str	r2, [r4, #4]
 80052b2:	d500      	bpl.n	80052b6 <__sflush_r+0x7e>
 80052b4:	6520      	str	r0, [r4, #80]	; 0x50
 80052b6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80052b8:	f8c8 6000 	str.w	r6, [r8]
 80052bc:	b311      	cbz	r1, 8005304 <__sflush_r+0xcc>
 80052be:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80052c2:	4299      	cmp	r1, r3
 80052c4:	d002      	beq.n	80052cc <__sflush_r+0x94>
 80052c6:	4640      	mov	r0, r8
 80052c8:	f000 f95e 	bl	8005588 <_free_r>
 80052cc:	2000      	movs	r0, #0
 80052ce:	6320      	str	r0, [r4, #48]	; 0x30
 80052d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80052d4:	6926      	ldr	r6, [r4, #16]
 80052d6:	b1ae      	cbz	r6, 8005304 <__sflush_r+0xcc>
 80052d8:	6825      	ldr	r5, [r4, #0]
 80052da:	6026      	str	r6, [r4, #0]
 80052dc:	0792      	lsls	r2, r2, #30
 80052de:	bf0c      	ite	eq
 80052e0:	6963      	ldreq	r3, [r4, #20]
 80052e2:	2300      	movne	r3, #0
 80052e4:	1bad      	subs	r5, r5, r6
 80052e6:	60a3      	str	r3, [r4, #8]
 80052e8:	e00a      	b.n	8005300 <__sflush_r+0xc8>
 80052ea:	462b      	mov	r3, r5
 80052ec:	4632      	mov	r2, r6
 80052ee:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80052f0:	69e1      	ldr	r1, [r4, #28]
 80052f2:	4640      	mov	r0, r8
 80052f4:	47b8      	blx	r7
 80052f6:	2800      	cmp	r0, #0
 80052f8:	eba5 0500 	sub.w	r5, r5, r0
 80052fc:	4406      	add	r6, r0
 80052fe:	dd2b      	ble.n	8005358 <__sflush_r+0x120>
 8005300:	2d00      	cmp	r5, #0
 8005302:	dcf2      	bgt.n	80052ea <__sflush_r+0xb2>
 8005304:	2000      	movs	r0, #0
 8005306:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800530a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800530c:	2a00      	cmp	r2, #0
 800530e:	dca2      	bgt.n	8005256 <__sflush_r+0x1e>
 8005310:	e7f8      	b.n	8005304 <__sflush_r+0xcc>
 8005312:	f8d8 3000 	ldr.w	r3, [r8]
 8005316:	2b00      	cmp	r3, #0
 8005318:	d0b0      	beq.n	800527c <__sflush_r+0x44>
 800531a:	2b1d      	cmp	r3, #29
 800531c:	d001      	beq.n	8005322 <__sflush_r+0xea>
 800531e:	2b16      	cmp	r3, #22
 8005320:	d12c      	bne.n	800537c <__sflush_r+0x144>
 8005322:	f8c8 6000 	str.w	r6, [r8]
 8005326:	2000      	movs	r0, #0
 8005328:	e7ed      	b.n	8005306 <__sflush_r+0xce>
 800532a:	f8d8 1000 	ldr.w	r1, [r8]
 800532e:	291d      	cmp	r1, #29
 8005330:	d81a      	bhi.n	8005368 <__sflush_r+0x130>
 8005332:	4b15      	ldr	r3, [pc, #84]	; (8005388 <__sflush_r+0x150>)
 8005334:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005338:	40cb      	lsrs	r3, r1
 800533a:	43db      	mvns	r3, r3
 800533c:	f013 0301 	ands.w	r3, r3, #1
 8005340:	d114      	bne.n	800536c <__sflush_r+0x134>
 8005342:	6925      	ldr	r5, [r4, #16]
 8005344:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005348:	e9c4 5300 	strd	r5, r3, [r4]
 800534c:	04d5      	lsls	r5, r2, #19
 800534e:	81a2      	strh	r2, [r4, #12]
 8005350:	d5b1      	bpl.n	80052b6 <__sflush_r+0x7e>
 8005352:	2900      	cmp	r1, #0
 8005354:	d1af      	bne.n	80052b6 <__sflush_r+0x7e>
 8005356:	e7ad      	b.n	80052b4 <__sflush_r+0x7c>
 8005358:	89a3      	ldrh	r3, [r4, #12]
 800535a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800535e:	81a3      	strh	r3, [r4, #12]
 8005360:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005364:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005368:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800536c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005370:	81a2      	strh	r2, [r4, #12]
 8005372:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005376:	e7c6      	b.n	8005306 <__sflush_r+0xce>
 8005378:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800537a:	e782      	b.n	8005282 <__sflush_r+0x4a>
 800537c:	89a3      	ldrh	r3, [r4, #12]
 800537e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005382:	81a3      	strh	r3, [r4, #12]
 8005384:	e7bf      	b.n	8005306 <__sflush_r+0xce>
 8005386:	bf00      	nop
 8005388:	20400001 	.word	0x20400001

0800538c <_fflush_r>:
 800538c:	b538      	push	{r3, r4, r5, lr}
 800538e:	460d      	mov	r5, r1
 8005390:	4604      	mov	r4, r0
 8005392:	b108      	cbz	r0, 8005398 <_fflush_r+0xc>
 8005394:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005396:	b1a3      	cbz	r3, 80053c2 <_fflush_r+0x36>
 8005398:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800539c:	b1b8      	cbz	r0, 80053ce <_fflush_r+0x42>
 800539e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80053a0:	07db      	lsls	r3, r3, #31
 80053a2:	d401      	bmi.n	80053a8 <_fflush_r+0x1c>
 80053a4:	0581      	lsls	r1, r0, #22
 80053a6:	d51a      	bpl.n	80053de <_fflush_r+0x52>
 80053a8:	4620      	mov	r0, r4
 80053aa:	4629      	mov	r1, r5
 80053ac:	f7ff ff44 	bl	8005238 <__sflush_r>
 80053b0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80053b2:	07da      	lsls	r2, r3, #31
 80053b4:	4604      	mov	r4, r0
 80053b6:	d402      	bmi.n	80053be <_fflush_r+0x32>
 80053b8:	89ab      	ldrh	r3, [r5, #12]
 80053ba:	059b      	lsls	r3, r3, #22
 80053bc:	d50a      	bpl.n	80053d4 <_fflush_r+0x48>
 80053be:	4620      	mov	r0, r4
 80053c0:	bd38      	pop	{r3, r4, r5, pc}
 80053c2:	f000 f83f 	bl	8005444 <__sinit>
 80053c6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80053ca:	2800      	cmp	r0, #0
 80053cc:	d1e7      	bne.n	800539e <_fflush_r+0x12>
 80053ce:	4604      	mov	r4, r0
 80053d0:	4620      	mov	r0, r4
 80053d2:	bd38      	pop	{r3, r4, r5, pc}
 80053d4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80053d6:	f000 fb87 	bl	8005ae8 <__retarget_lock_release_recursive>
 80053da:	4620      	mov	r0, r4
 80053dc:	bd38      	pop	{r3, r4, r5, pc}
 80053de:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80053e0:	f000 fb80 	bl	8005ae4 <__retarget_lock_acquire_recursive>
 80053e4:	e7e0      	b.n	80053a8 <_fflush_r+0x1c>
 80053e6:	bf00      	nop

080053e8 <std>:
 80053e8:	b510      	push	{r4, lr}
 80053ea:	2300      	movs	r3, #0
 80053ec:	4604      	mov	r4, r0
 80053ee:	8181      	strh	r1, [r0, #12]
 80053f0:	81c2      	strh	r2, [r0, #14]
 80053f2:	e9c0 3300 	strd	r3, r3, [r0]
 80053f6:	6083      	str	r3, [r0, #8]
 80053f8:	6643      	str	r3, [r0, #100]	; 0x64
 80053fa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80053fe:	6183      	str	r3, [r0, #24]
 8005400:	4619      	mov	r1, r3
 8005402:	2208      	movs	r2, #8
 8005404:	305c      	adds	r0, #92	; 0x5c
 8005406:	f7fd f8c9 	bl	800259c <memset>
 800540a:	4807      	ldr	r0, [pc, #28]	; (8005428 <std+0x40>)
 800540c:	4907      	ldr	r1, [pc, #28]	; (800542c <std+0x44>)
 800540e:	4a08      	ldr	r2, [pc, #32]	; (8005430 <std+0x48>)
 8005410:	4b08      	ldr	r3, [pc, #32]	; (8005434 <std+0x4c>)
 8005412:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005414:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005418:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800541c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005420:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005424:	f000 bb5a 	b.w	8005adc <__retarget_lock_init_recursive>
 8005428:	08006c01 	.word	0x08006c01
 800542c:	08006c25 	.word	0x08006c25
 8005430:	08006c61 	.word	0x08006c61
 8005434:	08006c81 	.word	0x08006c81

08005438 <_cleanup_r>:
 8005438:	4901      	ldr	r1, [pc, #4]	; (8005440 <_cleanup_r+0x8>)
 800543a:	f000 bb17 	b.w	8005a6c <_fwalk_reent>
 800543e:	bf00      	nop
 8005440:	08006ef1 	.word	0x08006ef1

08005444 <__sinit>:
 8005444:	b510      	push	{r4, lr}
 8005446:	4604      	mov	r4, r0
 8005448:	4812      	ldr	r0, [pc, #72]	; (8005494 <__sinit+0x50>)
 800544a:	f000 fb4b 	bl	8005ae4 <__retarget_lock_acquire_recursive>
 800544e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005450:	b9d2      	cbnz	r2, 8005488 <__sinit+0x44>
 8005452:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005456:	4810      	ldr	r0, [pc, #64]	; (8005498 <__sinit+0x54>)
 8005458:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800545c:	2103      	movs	r1, #3
 800545e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005462:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005464:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005468:	6860      	ldr	r0, [r4, #4]
 800546a:	2104      	movs	r1, #4
 800546c:	f7ff ffbc 	bl	80053e8 <std>
 8005470:	2201      	movs	r2, #1
 8005472:	2109      	movs	r1, #9
 8005474:	68a0      	ldr	r0, [r4, #8]
 8005476:	f7ff ffb7 	bl	80053e8 <std>
 800547a:	2202      	movs	r2, #2
 800547c:	2112      	movs	r1, #18
 800547e:	68e0      	ldr	r0, [r4, #12]
 8005480:	f7ff ffb2 	bl	80053e8 <std>
 8005484:	2301      	movs	r3, #1
 8005486:	63a3      	str	r3, [r4, #56]	; 0x38
 8005488:	4802      	ldr	r0, [pc, #8]	; (8005494 <__sinit+0x50>)
 800548a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800548e:	f000 bb2b 	b.w	8005ae8 <__retarget_lock_release_recursive>
 8005492:	bf00      	nop
 8005494:	20000bd0 	.word	0x20000bd0
 8005498:	08005439 	.word	0x08005439

0800549c <__sfp_lock_acquire>:
 800549c:	4801      	ldr	r0, [pc, #4]	; (80054a4 <__sfp_lock_acquire+0x8>)
 800549e:	f000 bb21 	b.w	8005ae4 <__retarget_lock_acquire_recursive>
 80054a2:	bf00      	nop
 80054a4:	20000be4 	.word	0x20000be4

080054a8 <__sfp_lock_release>:
 80054a8:	4801      	ldr	r0, [pc, #4]	; (80054b0 <__sfp_lock_release+0x8>)
 80054aa:	f000 bb1d 	b.w	8005ae8 <__retarget_lock_release_recursive>
 80054ae:	bf00      	nop
 80054b0:	20000be4 	.word	0x20000be4

080054b4 <__libc_fini_array>:
 80054b4:	b538      	push	{r3, r4, r5, lr}
 80054b6:	4c0a      	ldr	r4, [pc, #40]	; (80054e0 <__libc_fini_array+0x2c>)
 80054b8:	4d0a      	ldr	r5, [pc, #40]	; (80054e4 <__libc_fini_array+0x30>)
 80054ba:	1b64      	subs	r4, r4, r5
 80054bc:	10a4      	asrs	r4, r4, #2
 80054be:	d00a      	beq.n	80054d6 <__libc_fini_array+0x22>
 80054c0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80054c4:	3b01      	subs	r3, #1
 80054c6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80054ca:	3c01      	subs	r4, #1
 80054cc:	f855 3904 	ldr.w	r3, [r5], #-4
 80054d0:	4798      	blx	r3
 80054d2:	2c00      	cmp	r4, #0
 80054d4:	d1f9      	bne.n	80054ca <__libc_fini_array+0x16>
 80054d6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80054da:	f001 befd 	b.w	80072d8 <_fini>
 80054de:	bf00      	nop
 80054e0:	080076b4 	.word	0x080076b4
 80054e4:	080076b0 	.word	0x080076b0

080054e8 <_malloc_trim_r>:
 80054e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80054ea:	4f24      	ldr	r7, [pc, #144]	; (800557c <_malloc_trim_r+0x94>)
 80054ec:	460c      	mov	r4, r1
 80054ee:	4606      	mov	r6, r0
 80054f0:	f000 fe7c 	bl	80061ec <__malloc_lock>
 80054f4:	68bb      	ldr	r3, [r7, #8]
 80054f6:	685d      	ldr	r5, [r3, #4]
 80054f8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80054fc:	310f      	adds	r1, #15
 80054fe:	f025 0503 	bic.w	r5, r5, #3
 8005502:	4429      	add	r1, r5
 8005504:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005508:	f021 010f 	bic.w	r1, r1, #15
 800550c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005510:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005514:	db07      	blt.n	8005526 <_malloc_trim_r+0x3e>
 8005516:	2100      	movs	r1, #0
 8005518:	4630      	mov	r0, r6
 800551a:	f001 fb5f 	bl	8006bdc <_sbrk_r>
 800551e:	68bb      	ldr	r3, [r7, #8]
 8005520:	442b      	add	r3, r5
 8005522:	4298      	cmp	r0, r3
 8005524:	d004      	beq.n	8005530 <_malloc_trim_r+0x48>
 8005526:	4630      	mov	r0, r6
 8005528:	f000 fe66 	bl	80061f8 <__malloc_unlock>
 800552c:	2000      	movs	r0, #0
 800552e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005530:	4261      	negs	r1, r4
 8005532:	4630      	mov	r0, r6
 8005534:	f001 fb52 	bl	8006bdc <_sbrk_r>
 8005538:	3001      	adds	r0, #1
 800553a:	d00d      	beq.n	8005558 <_malloc_trim_r+0x70>
 800553c:	4b10      	ldr	r3, [pc, #64]	; (8005580 <_malloc_trim_r+0x98>)
 800553e:	68ba      	ldr	r2, [r7, #8]
 8005540:	6819      	ldr	r1, [r3, #0]
 8005542:	1b2d      	subs	r5, r5, r4
 8005544:	f045 0501 	orr.w	r5, r5, #1
 8005548:	4630      	mov	r0, r6
 800554a:	1b09      	subs	r1, r1, r4
 800554c:	6055      	str	r5, [r2, #4]
 800554e:	6019      	str	r1, [r3, #0]
 8005550:	f000 fe52 	bl	80061f8 <__malloc_unlock>
 8005554:	2001      	movs	r0, #1
 8005556:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005558:	2100      	movs	r1, #0
 800555a:	4630      	mov	r0, r6
 800555c:	f001 fb3e 	bl	8006bdc <_sbrk_r>
 8005560:	68ba      	ldr	r2, [r7, #8]
 8005562:	1a83      	subs	r3, r0, r2
 8005564:	2b0f      	cmp	r3, #15
 8005566:	ddde      	ble.n	8005526 <_malloc_trim_r+0x3e>
 8005568:	4c06      	ldr	r4, [pc, #24]	; (8005584 <_malloc_trim_r+0x9c>)
 800556a:	4905      	ldr	r1, [pc, #20]	; (8005580 <_malloc_trim_r+0x98>)
 800556c:	6824      	ldr	r4, [r4, #0]
 800556e:	f043 0301 	orr.w	r3, r3, #1
 8005572:	1b00      	subs	r0, r0, r4
 8005574:	6053      	str	r3, [r2, #4]
 8005576:	6008      	str	r0, [r1, #0]
 8005578:	e7d5      	b.n	8005526 <_malloc_trim_r+0x3e>
 800557a:	bf00      	nop
 800557c:	2000046c 	.word	0x2000046c
 8005580:	20000a90 	.word	0x20000a90
 8005584:	20000874 	.word	0x20000874

08005588 <_free_r>:
 8005588:	2900      	cmp	r1, #0
 800558a:	d053      	beq.n	8005634 <_free_r+0xac>
 800558c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800558e:	460c      	mov	r4, r1
 8005590:	4606      	mov	r6, r0
 8005592:	f000 fe2b 	bl	80061ec <__malloc_lock>
 8005596:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800559a:	4f71      	ldr	r7, [pc, #452]	; (8005760 <_free_r+0x1d8>)
 800559c:	f02c 0101 	bic.w	r1, ip, #1
 80055a0:	f1a4 0508 	sub.w	r5, r4, #8
 80055a4:	186b      	adds	r3, r5, r1
 80055a6:	68b8      	ldr	r0, [r7, #8]
 80055a8:	685a      	ldr	r2, [r3, #4]
 80055aa:	4298      	cmp	r0, r3
 80055ac:	f022 0203 	bic.w	r2, r2, #3
 80055b0:	d053      	beq.n	800565a <_free_r+0xd2>
 80055b2:	f01c 0f01 	tst.w	ip, #1
 80055b6:	605a      	str	r2, [r3, #4]
 80055b8:	eb03 0002 	add.w	r0, r3, r2
 80055bc:	d13b      	bne.n	8005636 <_free_r+0xae>
 80055be:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80055c2:	6840      	ldr	r0, [r0, #4]
 80055c4:	eba5 050c 	sub.w	r5, r5, ip
 80055c8:	f107 0e08 	add.w	lr, r7, #8
 80055cc:	68ac      	ldr	r4, [r5, #8]
 80055ce:	4574      	cmp	r4, lr
 80055d0:	4461      	add	r1, ip
 80055d2:	f000 0001 	and.w	r0, r0, #1
 80055d6:	d075      	beq.n	80056c4 <_free_r+0x13c>
 80055d8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80055dc:	f8c4 c00c 	str.w	ip, [r4, #12]
 80055e0:	f8cc 4008 	str.w	r4, [ip, #8]
 80055e4:	b360      	cbz	r0, 8005640 <_free_r+0xb8>
 80055e6:	f041 0301 	orr.w	r3, r1, #1
 80055ea:	606b      	str	r3, [r5, #4]
 80055ec:	5069      	str	r1, [r5, r1]
 80055ee:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80055f2:	d350      	bcc.n	8005696 <_free_r+0x10e>
 80055f4:	0a4b      	lsrs	r3, r1, #9
 80055f6:	2b04      	cmp	r3, #4
 80055f8:	d870      	bhi.n	80056dc <_free_r+0x154>
 80055fa:	098b      	lsrs	r3, r1, #6
 80055fc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005600:	00e4      	lsls	r4, r4, #3
 8005602:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005606:	1938      	adds	r0, r7, r4
 8005608:	593b      	ldr	r3, [r7, r4]
 800560a:	3808      	subs	r0, #8
 800560c:	4298      	cmp	r0, r3
 800560e:	d078      	beq.n	8005702 <_free_r+0x17a>
 8005610:	685a      	ldr	r2, [r3, #4]
 8005612:	f022 0203 	bic.w	r2, r2, #3
 8005616:	428a      	cmp	r2, r1
 8005618:	d971      	bls.n	80056fe <_free_r+0x176>
 800561a:	689b      	ldr	r3, [r3, #8]
 800561c:	4298      	cmp	r0, r3
 800561e:	d1f7      	bne.n	8005610 <_free_r+0x88>
 8005620:	68c3      	ldr	r3, [r0, #12]
 8005622:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005626:	609d      	str	r5, [r3, #8]
 8005628:	60c5      	str	r5, [r0, #12]
 800562a:	4630      	mov	r0, r6
 800562c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005630:	f000 bde2 	b.w	80061f8 <__malloc_unlock>
 8005634:	4770      	bx	lr
 8005636:	6840      	ldr	r0, [r0, #4]
 8005638:	f000 0001 	and.w	r0, r0, #1
 800563c:	2800      	cmp	r0, #0
 800563e:	d1d2      	bne.n	80055e6 <_free_r+0x5e>
 8005640:	6898      	ldr	r0, [r3, #8]
 8005642:	4c48      	ldr	r4, [pc, #288]	; (8005764 <_free_r+0x1dc>)
 8005644:	4411      	add	r1, r2
 8005646:	42a0      	cmp	r0, r4
 8005648:	f041 0201 	orr.w	r2, r1, #1
 800564c:	d062      	beq.n	8005714 <_free_r+0x18c>
 800564e:	68db      	ldr	r3, [r3, #12]
 8005650:	60c3      	str	r3, [r0, #12]
 8005652:	6098      	str	r0, [r3, #8]
 8005654:	606a      	str	r2, [r5, #4]
 8005656:	5069      	str	r1, [r5, r1]
 8005658:	e7c9      	b.n	80055ee <_free_r+0x66>
 800565a:	f01c 0f01 	tst.w	ip, #1
 800565e:	440a      	add	r2, r1
 8005660:	d107      	bne.n	8005672 <_free_r+0xea>
 8005662:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005666:	1aed      	subs	r5, r5, r3
 8005668:	441a      	add	r2, r3
 800566a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800566e:	60cb      	str	r3, [r1, #12]
 8005670:	6099      	str	r1, [r3, #8]
 8005672:	4b3d      	ldr	r3, [pc, #244]	; (8005768 <_free_r+0x1e0>)
 8005674:	681b      	ldr	r3, [r3, #0]
 8005676:	f042 0101 	orr.w	r1, r2, #1
 800567a:	4293      	cmp	r3, r2
 800567c:	6069      	str	r1, [r5, #4]
 800567e:	60bd      	str	r5, [r7, #8]
 8005680:	d804      	bhi.n	800568c <_free_r+0x104>
 8005682:	4b3a      	ldr	r3, [pc, #232]	; (800576c <_free_r+0x1e4>)
 8005684:	4630      	mov	r0, r6
 8005686:	6819      	ldr	r1, [r3, #0]
 8005688:	f7ff ff2e 	bl	80054e8 <_malloc_trim_r>
 800568c:	4630      	mov	r0, r6
 800568e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005692:	f000 bdb1 	b.w	80061f8 <__malloc_unlock>
 8005696:	08c9      	lsrs	r1, r1, #3
 8005698:	6878      	ldr	r0, [r7, #4]
 800569a:	1c4a      	adds	r2, r1, #1
 800569c:	2301      	movs	r3, #1
 800569e:	1089      	asrs	r1, r1, #2
 80056a0:	408b      	lsls	r3, r1
 80056a2:	4303      	orrs	r3, r0
 80056a4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80056a8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80056ac:	607b      	str	r3, [r7, #4]
 80056ae:	3908      	subs	r1, #8
 80056b0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80056b4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80056b8:	60c5      	str	r5, [r0, #12]
 80056ba:	4630      	mov	r0, r6
 80056bc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80056c0:	f000 bd9a 	b.w	80061f8 <__malloc_unlock>
 80056c4:	2800      	cmp	r0, #0
 80056c6:	d145      	bne.n	8005754 <_free_r+0x1cc>
 80056c8:	440a      	add	r2, r1
 80056ca:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80056ce:	f042 0001 	orr.w	r0, r2, #1
 80056d2:	60cb      	str	r3, [r1, #12]
 80056d4:	6099      	str	r1, [r3, #8]
 80056d6:	6068      	str	r0, [r5, #4]
 80056d8:	50aa      	str	r2, [r5, r2]
 80056da:	e7d7      	b.n	800568c <_free_r+0x104>
 80056dc:	2b14      	cmp	r3, #20
 80056de:	d908      	bls.n	80056f2 <_free_r+0x16a>
 80056e0:	2b54      	cmp	r3, #84	; 0x54
 80056e2:	d81e      	bhi.n	8005722 <_free_r+0x19a>
 80056e4:	0b0b      	lsrs	r3, r1, #12
 80056e6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80056ea:	00e4      	lsls	r4, r4, #3
 80056ec:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80056f0:	e789      	b.n	8005606 <_free_r+0x7e>
 80056f2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80056f6:	00e4      	lsls	r4, r4, #3
 80056f8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80056fc:	e783      	b.n	8005606 <_free_r+0x7e>
 80056fe:	4618      	mov	r0, r3
 8005700:	e78e      	b.n	8005620 <_free_r+0x98>
 8005702:	1093      	asrs	r3, r2, #2
 8005704:	6879      	ldr	r1, [r7, #4]
 8005706:	2201      	movs	r2, #1
 8005708:	fa02 f303 	lsl.w	r3, r2, r3
 800570c:	430b      	orrs	r3, r1
 800570e:	607b      	str	r3, [r7, #4]
 8005710:	4603      	mov	r3, r0
 8005712:	e786      	b.n	8005622 <_free_r+0x9a>
 8005714:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005718:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800571c:	606a      	str	r2, [r5, #4]
 800571e:	5069      	str	r1, [r5, r1]
 8005720:	e7b4      	b.n	800568c <_free_r+0x104>
 8005722:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005726:	d806      	bhi.n	8005736 <_free_r+0x1ae>
 8005728:	0bcb      	lsrs	r3, r1, #15
 800572a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800572e:	00e4      	lsls	r4, r4, #3
 8005730:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005734:	e767      	b.n	8005606 <_free_r+0x7e>
 8005736:	f240 5254 	movw	r2, #1364	; 0x554
 800573a:	4293      	cmp	r3, r2
 800573c:	d806      	bhi.n	800574c <_free_r+0x1c4>
 800573e:	0c8b      	lsrs	r3, r1, #18
 8005740:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005744:	00e4      	lsls	r4, r4, #3
 8005746:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800574a:	e75c      	b.n	8005606 <_free_r+0x7e>
 800574c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005750:	227e      	movs	r2, #126	; 0x7e
 8005752:	e758      	b.n	8005606 <_free_r+0x7e>
 8005754:	f041 0201 	orr.w	r2, r1, #1
 8005758:	606a      	str	r2, [r5, #4]
 800575a:	6019      	str	r1, [r3, #0]
 800575c:	e796      	b.n	800568c <_free_r+0x104>
 800575e:	bf00      	nop
 8005760:	2000046c 	.word	0x2000046c
 8005764:	20000474 	.word	0x20000474
 8005768:	20000878 	.word	0x20000878
 800576c:	20000ac0 	.word	0x20000ac0

08005770 <__sfvwrite_r>:
 8005770:	6893      	ldr	r3, [r2, #8]
 8005772:	2b00      	cmp	r3, #0
 8005774:	f000 80e4 	beq.w	8005940 <__sfvwrite_r+0x1d0>
 8005778:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800577c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005780:	b29b      	uxth	r3, r3
 8005782:	460c      	mov	r4, r1
 8005784:	0719      	lsls	r1, r3, #28
 8005786:	b083      	sub	sp, #12
 8005788:	4682      	mov	sl, r0
 800578a:	4690      	mov	r8, r2
 800578c:	d535      	bpl.n	80057fa <__sfvwrite_r+0x8a>
 800578e:	6922      	ldr	r2, [r4, #16]
 8005790:	b39a      	cbz	r2, 80057fa <__sfvwrite_r+0x8a>
 8005792:	f013 0202 	ands.w	r2, r3, #2
 8005796:	f8d8 6000 	ldr.w	r6, [r8]
 800579a:	d03d      	beq.n	8005818 <__sfvwrite_r+0xa8>
 800579c:	2700      	movs	r7, #0
 800579e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80057a2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80057a6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005a68 <__sfvwrite_r+0x2f8>
 80057aa:	463d      	mov	r5, r7
 80057ac:	454d      	cmp	r5, r9
 80057ae:	462b      	mov	r3, r5
 80057b0:	463a      	mov	r2, r7
 80057b2:	bf28      	it	cs
 80057b4:	464b      	movcs	r3, r9
 80057b6:	4661      	mov	r1, ip
 80057b8:	4650      	mov	r0, sl
 80057ba:	b1d5      	cbz	r5, 80057f2 <__sfvwrite_r+0x82>
 80057bc:	47d8      	blx	fp
 80057be:	2800      	cmp	r0, #0
 80057c0:	f340 80c6 	ble.w	8005950 <__sfvwrite_r+0x1e0>
 80057c4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80057c8:	1a1b      	subs	r3, r3, r0
 80057ca:	4407      	add	r7, r0
 80057cc:	1a2d      	subs	r5, r5, r0
 80057ce:	f8c8 3008 	str.w	r3, [r8, #8]
 80057d2:	2b00      	cmp	r3, #0
 80057d4:	f000 80b0 	beq.w	8005938 <__sfvwrite_r+0x1c8>
 80057d8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80057dc:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80057e0:	454d      	cmp	r5, r9
 80057e2:	462b      	mov	r3, r5
 80057e4:	463a      	mov	r2, r7
 80057e6:	bf28      	it	cs
 80057e8:	464b      	movcs	r3, r9
 80057ea:	4661      	mov	r1, ip
 80057ec:	4650      	mov	r0, sl
 80057ee:	2d00      	cmp	r5, #0
 80057f0:	d1e4      	bne.n	80057bc <__sfvwrite_r+0x4c>
 80057f2:	e9d6 7500 	ldrd	r7, r5, [r6]
 80057f6:	3608      	adds	r6, #8
 80057f8:	e7d8      	b.n	80057ac <__sfvwrite_r+0x3c>
 80057fa:	4621      	mov	r1, r4
 80057fc:	4650      	mov	r0, sl
 80057fe:	f7fe fd03 	bl	8004208 <__swsetup_r>
 8005802:	2800      	cmp	r0, #0
 8005804:	f040 812a 	bne.w	8005a5c <__sfvwrite_r+0x2ec>
 8005808:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800580c:	f8d8 6000 	ldr.w	r6, [r8]
 8005810:	b29b      	uxth	r3, r3
 8005812:	f013 0202 	ands.w	r2, r3, #2
 8005816:	d1c1      	bne.n	800579c <__sfvwrite_r+0x2c>
 8005818:	f013 0901 	ands.w	r9, r3, #1
 800581c:	d15d      	bne.n	80058da <__sfvwrite_r+0x16a>
 800581e:	68a7      	ldr	r7, [r4, #8]
 8005820:	6820      	ldr	r0, [r4, #0]
 8005822:	464d      	mov	r5, r9
 8005824:	2d00      	cmp	r5, #0
 8005826:	d054      	beq.n	80058d2 <__sfvwrite_r+0x162>
 8005828:	059a      	lsls	r2, r3, #22
 800582a:	f140 809b 	bpl.w	8005964 <__sfvwrite_r+0x1f4>
 800582e:	42af      	cmp	r7, r5
 8005830:	46bb      	mov	fp, r7
 8005832:	f200 80d8 	bhi.w	80059e6 <__sfvwrite_r+0x276>
 8005836:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800583a:	d02f      	beq.n	800589c <__sfvwrite_r+0x12c>
 800583c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005840:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005844:	eba0 0b01 	sub.w	fp, r0, r1
 8005848:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800584c:	1c68      	adds	r0, r5, #1
 800584e:	107f      	asrs	r7, r7, #1
 8005850:	4458      	add	r0, fp
 8005852:	42b8      	cmp	r0, r7
 8005854:	463a      	mov	r2, r7
 8005856:	bf84      	itt	hi
 8005858:	4607      	movhi	r7, r0
 800585a:	463a      	movhi	r2, r7
 800585c:	055b      	lsls	r3, r3, #21
 800585e:	f140 80d3 	bpl.w	8005a08 <__sfvwrite_r+0x298>
 8005862:	4611      	mov	r1, r2
 8005864:	4650      	mov	r0, sl
 8005866:	f000 f9b9 	bl	8005bdc <_malloc_r>
 800586a:	2800      	cmp	r0, #0
 800586c:	f000 80f0 	beq.w	8005a50 <__sfvwrite_r+0x2e0>
 8005870:	465a      	mov	r2, fp
 8005872:	6921      	ldr	r1, [r4, #16]
 8005874:	9001      	str	r0, [sp, #4]
 8005876:	f7fa fe43 	bl	8000500 <memcpy>
 800587a:	89a2      	ldrh	r2, [r4, #12]
 800587c:	9b01      	ldr	r3, [sp, #4]
 800587e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005882:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005886:	81a2      	strh	r2, [r4, #12]
 8005888:	eba7 020b 	sub.w	r2, r7, fp
 800588c:	eb03 000b 	add.w	r0, r3, fp
 8005890:	6167      	str	r7, [r4, #20]
 8005892:	6123      	str	r3, [r4, #16]
 8005894:	6020      	str	r0, [r4, #0]
 8005896:	60a2      	str	r2, [r4, #8]
 8005898:	462f      	mov	r7, r5
 800589a:	46ab      	mov	fp, r5
 800589c:	465a      	mov	r2, fp
 800589e:	4649      	mov	r1, r9
 80058a0:	f000 fc40 	bl	8006124 <memmove>
 80058a4:	68a2      	ldr	r2, [r4, #8]
 80058a6:	6823      	ldr	r3, [r4, #0]
 80058a8:	1bd2      	subs	r2, r2, r7
 80058aa:	445b      	add	r3, fp
 80058ac:	462f      	mov	r7, r5
 80058ae:	60a2      	str	r2, [r4, #8]
 80058b0:	6023      	str	r3, [r4, #0]
 80058b2:	2500      	movs	r5, #0
 80058b4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80058b8:	1bdb      	subs	r3, r3, r7
 80058ba:	44b9      	add	r9, r7
 80058bc:	f8c8 3008 	str.w	r3, [r8, #8]
 80058c0:	2b00      	cmp	r3, #0
 80058c2:	d039      	beq.n	8005938 <__sfvwrite_r+0x1c8>
 80058c4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058c8:	68a7      	ldr	r7, [r4, #8]
 80058ca:	6820      	ldr	r0, [r4, #0]
 80058cc:	b29b      	uxth	r3, r3
 80058ce:	2d00      	cmp	r5, #0
 80058d0:	d1aa      	bne.n	8005828 <__sfvwrite_r+0xb8>
 80058d2:	e9d6 9500 	ldrd	r9, r5, [r6]
 80058d6:	3608      	adds	r6, #8
 80058d8:	e7a4      	b.n	8005824 <__sfvwrite_r+0xb4>
 80058da:	4633      	mov	r3, r6
 80058dc:	4691      	mov	r9, r2
 80058de:	4610      	mov	r0, r2
 80058e0:	4617      	mov	r7, r2
 80058e2:	464e      	mov	r6, r9
 80058e4:	469b      	mov	fp, r3
 80058e6:	2f00      	cmp	r7, #0
 80058e8:	d06b      	beq.n	80059c2 <__sfvwrite_r+0x252>
 80058ea:	2800      	cmp	r0, #0
 80058ec:	d071      	beq.n	80059d2 <__sfvwrite_r+0x262>
 80058ee:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80058f2:	6820      	ldr	r0, [r4, #0]
 80058f4:	45b9      	cmp	r9, r7
 80058f6:	464b      	mov	r3, r9
 80058f8:	bf28      	it	cs
 80058fa:	463b      	movcs	r3, r7
 80058fc:	4288      	cmp	r0, r1
 80058fe:	d903      	bls.n	8005908 <__sfvwrite_r+0x198>
 8005900:	68a5      	ldr	r5, [r4, #8]
 8005902:	4415      	add	r5, r2
 8005904:	42ab      	cmp	r3, r5
 8005906:	dc71      	bgt.n	80059ec <__sfvwrite_r+0x27c>
 8005908:	429a      	cmp	r2, r3
 800590a:	f300 8093 	bgt.w	8005a34 <__sfvwrite_r+0x2c4>
 800590e:	4613      	mov	r3, r2
 8005910:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005912:	69e1      	ldr	r1, [r4, #28]
 8005914:	4632      	mov	r2, r6
 8005916:	4650      	mov	r0, sl
 8005918:	47a8      	blx	r5
 800591a:	1e05      	subs	r5, r0, #0
 800591c:	dd18      	ble.n	8005950 <__sfvwrite_r+0x1e0>
 800591e:	ebb9 0905 	subs.w	r9, r9, r5
 8005922:	d00f      	beq.n	8005944 <__sfvwrite_r+0x1d4>
 8005924:	2001      	movs	r0, #1
 8005926:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800592a:	1b5b      	subs	r3, r3, r5
 800592c:	442e      	add	r6, r5
 800592e:	1b7f      	subs	r7, r7, r5
 8005930:	f8c8 3008 	str.w	r3, [r8, #8]
 8005934:	2b00      	cmp	r3, #0
 8005936:	d1d6      	bne.n	80058e6 <__sfvwrite_r+0x176>
 8005938:	2000      	movs	r0, #0
 800593a:	b003      	add	sp, #12
 800593c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005940:	2000      	movs	r0, #0
 8005942:	4770      	bx	lr
 8005944:	4621      	mov	r1, r4
 8005946:	4650      	mov	r0, sl
 8005948:	f7ff fd20 	bl	800538c <_fflush_r>
 800594c:	2800      	cmp	r0, #0
 800594e:	d0ea      	beq.n	8005926 <__sfvwrite_r+0x1b6>
 8005950:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005954:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005958:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800595c:	81a3      	strh	r3, [r4, #12]
 800595e:	b003      	add	sp, #12
 8005960:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005964:	6923      	ldr	r3, [r4, #16]
 8005966:	4283      	cmp	r3, r0
 8005968:	d315      	bcc.n	8005996 <__sfvwrite_r+0x226>
 800596a:	6961      	ldr	r1, [r4, #20]
 800596c:	42a9      	cmp	r1, r5
 800596e:	d812      	bhi.n	8005996 <__sfvwrite_r+0x226>
 8005970:	4b3c      	ldr	r3, [pc, #240]	; (8005a64 <__sfvwrite_r+0x2f4>)
 8005972:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005974:	429d      	cmp	r5, r3
 8005976:	bf94      	ite	ls
 8005978:	462b      	movls	r3, r5
 800597a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800597e:	464a      	mov	r2, r9
 8005980:	fb93 f3f1 	sdiv	r3, r3, r1
 8005984:	4650      	mov	r0, sl
 8005986:	fb01 f303 	mul.w	r3, r1, r3
 800598a:	69e1      	ldr	r1, [r4, #28]
 800598c:	47b8      	blx	r7
 800598e:	1e07      	subs	r7, r0, #0
 8005990:	ddde      	ble.n	8005950 <__sfvwrite_r+0x1e0>
 8005992:	1bed      	subs	r5, r5, r7
 8005994:	e78e      	b.n	80058b4 <__sfvwrite_r+0x144>
 8005996:	42af      	cmp	r7, r5
 8005998:	bf28      	it	cs
 800599a:	462f      	movcs	r7, r5
 800599c:	463a      	mov	r2, r7
 800599e:	4649      	mov	r1, r9
 80059a0:	f000 fbc0 	bl	8006124 <memmove>
 80059a4:	68a3      	ldr	r3, [r4, #8]
 80059a6:	6822      	ldr	r2, [r4, #0]
 80059a8:	1bdb      	subs	r3, r3, r7
 80059aa:	443a      	add	r2, r7
 80059ac:	60a3      	str	r3, [r4, #8]
 80059ae:	6022      	str	r2, [r4, #0]
 80059b0:	2b00      	cmp	r3, #0
 80059b2:	d1ee      	bne.n	8005992 <__sfvwrite_r+0x222>
 80059b4:	4621      	mov	r1, r4
 80059b6:	4650      	mov	r0, sl
 80059b8:	f7ff fce8 	bl	800538c <_fflush_r>
 80059bc:	2800      	cmp	r0, #0
 80059be:	d0e8      	beq.n	8005992 <__sfvwrite_r+0x222>
 80059c0:	e7c6      	b.n	8005950 <__sfvwrite_r+0x1e0>
 80059c2:	f10b 0308 	add.w	r3, fp, #8
 80059c6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80059ca:	469b      	mov	fp, r3
 80059cc:	3308      	adds	r3, #8
 80059ce:	2f00      	cmp	r7, #0
 80059d0:	d0f9      	beq.n	80059c6 <__sfvwrite_r+0x256>
 80059d2:	463a      	mov	r2, r7
 80059d4:	210a      	movs	r1, #10
 80059d6:	4630      	mov	r0, r6
 80059d8:	f7fa fea2 	bl	8000720 <memchr>
 80059dc:	b338      	cbz	r0, 8005a2e <__sfvwrite_r+0x2be>
 80059de:	3001      	adds	r0, #1
 80059e0:	eba0 0906 	sub.w	r9, r0, r6
 80059e4:	e783      	b.n	80058ee <__sfvwrite_r+0x17e>
 80059e6:	462f      	mov	r7, r5
 80059e8:	46ab      	mov	fp, r5
 80059ea:	e757      	b.n	800589c <__sfvwrite_r+0x12c>
 80059ec:	4631      	mov	r1, r6
 80059ee:	462a      	mov	r2, r5
 80059f0:	f000 fb98 	bl	8006124 <memmove>
 80059f4:	6823      	ldr	r3, [r4, #0]
 80059f6:	442b      	add	r3, r5
 80059f8:	6023      	str	r3, [r4, #0]
 80059fa:	4621      	mov	r1, r4
 80059fc:	4650      	mov	r0, sl
 80059fe:	f7ff fcc5 	bl	800538c <_fflush_r>
 8005a02:	2800      	cmp	r0, #0
 8005a04:	d08b      	beq.n	800591e <__sfvwrite_r+0x1ae>
 8005a06:	e7a3      	b.n	8005950 <__sfvwrite_r+0x1e0>
 8005a08:	4650      	mov	r0, sl
 8005a0a:	f000 ff05 	bl	8006818 <_realloc_r>
 8005a0e:	4603      	mov	r3, r0
 8005a10:	2800      	cmp	r0, #0
 8005a12:	f47f af39 	bne.w	8005888 <__sfvwrite_r+0x118>
 8005a16:	6921      	ldr	r1, [r4, #16]
 8005a18:	4650      	mov	r0, sl
 8005a1a:	f7ff fdb5 	bl	8005588 <_free_r>
 8005a1e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a22:	220c      	movs	r2, #12
 8005a24:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005a28:	f8ca 2000 	str.w	r2, [sl]
 8005a2c:	e792      	b.n	8005954 <__sfvwrite_r+0x1e4>
 8005a2e:	f107 0901 	add.w	r9, r7, #1
 8005a32:	e75c      	b.n	80058ee <__sfvwrite_r+0x17e>
 8005a34:	461a      	mov	r2, r3
 8005a36:	4631      	mov	r1, r6
 8005a38:	9301      	str	r3, [sp, #4]
 8005a3a:	f000 fb73 	bl	8006124 <memmove>
 8005a3e:	9b01      	ldr	r3, [sp, #4]
 8005a40:	68a1      	ldr	r1, [r4, #8]
 8005a42:	6822      	ldr	r2, [r4, #0]
 8005a44:	1ac9      	subs	r1, r1, r3
 8005a46:	441a      	add	r2, r3
 8005a48:	60a1      	str	r1, [r4, #8]
 8005a4a:	6022      	str	r2, [r4, #0]
 8005a4c:	461d      	mov	r5, r3
 8005a4e:	e766      	b.n	800591e <__sfvwrite_r+0x1ae>
 8005a50:	230c      	movs	r3, #12
 8005a52:	f8ca 3000 	str.w	r3, [sl]
 8005a56:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a5a:	e77b      	b.n	8005954 <__sfvwrite_r+0x1e4>
 8005a5c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a60:	e76b      	b.n	800593a <__sfvwrite_r+0x1ca>
 8005a62:	bf00      	nop
 8005a64:	7ffffffe 	.word	0x7ffffffe
 8005a68:	7ffffc00 	.word	0x7ffffc00

08005a6c <_fwalk_reent>:
 8005a6c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005a70:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005a74:	d01f      	beq.n	8005ab6 <_fwalk_reent+0x4a>
 8005a76:	4688      	mov	r8, r1
 8005a78:	4606      	mov	r6, r0
 8005a7a:	f04f 0900 	mov.w	r9, #0
 8005a7e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005a82:	3d01      	subs	r5, #1
 8005a84:	d411      	bmi.n	8005aaa <_fwalk_reent+0x3e>
 8005a86:	89a3      	ldrh	r3, [r4, #12]
 8005a88:	2b01      	cmp	r3, #1
 8005a8a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005a8e:	4621      	mov	r1, r4
 8005a90:	4630      	mov	r0, r6
 8005a92:	d906      	bls.n	8005aa2 <_fwalk_reent+0x36>
 8005a94:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005a98:	3301      	adds	r3, #1
 8005a9a:	d002      	beq.n	8005aa2 <_fwalk_reent+0x36>
 8005a9c:	47c0      	blx	r8
 8005a9e:	ea49 0900 	orr.w	r9, r9, r0
 8005aa2:	1c6b      	adds	r3, r5, #1
 8005aa4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005aa8:	d1ed      	bne.n	8005a86 <_fwalk_reent+0x1a>
 8005aaa:	683f      	ldr	r7, [r7, #0]
 8005aac:	2f00      	cmp	r7, #0
 8005aae:	d1e6      	bne.n	8005a7e <_fwalk_reent+0x12>
 8005ab0:	4648      	mov	r0, r9
 8005ab2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005ab6:	46b9      	mov	r9, r7
 8005ab8:	4648      	mov	r0, r9
 8005aba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005abe:	bf00      	nop

08005ac0 <_localeconv_r>:
 8005ac0:	4a04      	ldr	r2, [pc, #16]	; (8005ad4 <_localeconv_r+0x14>)
 8005ac2:	4b05      	ldr	r3, [pc, #20]	; (8005ad8 <_localeconv_r+0x18>)
 8005ac4:	6812      	ldr	r2, [r2, #0]
 8005ac6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005ac8:	2800      	cmp	r0, #0
 8005aca:	bf08      	it	eq
 8005acc:	4618      	moveq	r0, r3
 8005ace:	30f0      	adds	r0, #240	; 0xf0
 8005ad0:	4770      	bx	lr
 8005ad2:	bf00      	nop
 8005ad4:	2000003c 	.word	0x2000003c
 8005ad8:	2000087c 	.word	0x2000087c

08005adc <__retarget_lock_init_recursive>:
 8005adc:	4770      	bx	lr
 8005ade:	bf00      	nop

08005ae0 <__retarget_lock_close_recursive>:
 8005ae0:	4770      	bx	lr
 8005ae2:	bf00      	nop

08005ae4 <__retarget_lock_acquire_recursive>:
 8005ae4:	4770      	bx	lr
 8005ae6:	bf00      	nop

08005ae8 <__retarget_lock_release_recursive>:
 8005ae8:	4770      	bx	lr
 8005aea:	bf00      	nop

08005aec <__swhatbuf_r>:
 8005aec:	b570      	push	{r4, r5, r6, lr}
 8005aee:	460c      	mov	r4, r1
 8005af0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005af4:	2900      	cmp	r1, #0
 8005af6:	b096      	sub	sp, #88	; 0x58
 8005af8:	4615      	mov	r5, r2
 8005afa:	461e      	mov	r6, r3
 8005afc:	da0f      	bge.n	8005b1e <__swhatbuf_r+0x32>
 8005afe:	89a2      	ldrh	r2, [r4, #12]
 8005b00:	2300      	movs	r3, #0
 8005b02:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005b06:	6033      	str	r3, [r6, #0]
 8005b08:	d104      	bne.n	8005b14 <__swhatbuf_r+0x28>
 8005b0a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005b0e:	602b      	str	r3, [r5, #0]
 8005b10:	b016      	add	sp, #88	; 0x58
 8005b12:	bd70      	pop	{r4, r5, r6, pc}
 8005b14:	2240      	movs	r2, #64	; 0x40
 8005b16:	4618      	mov	r0, r3
 8005b18:	602a      	str	r2, [r5, #0]
 8005b1a:	b016      	add	sp, #88	; 0x58
 8005b1c:	bd70      	pop	{r4, r5, r6, pc}
 8005b1e:	466a      	mov	r2, sp
 8005b20:	f001 fad0 	bl	80070c4 <_fstat_r>
 8005b24:	2800      	cmp	r0, #0
 8005b26:	dbea      	blt.n	8005afe <__swhatbuf_r+0x12>
 8005b28:	9b01      	ldr	r3, [sp, #4]
 8005b2a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005b2e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005b32:	fab3 f383 	clz	r3, r3
 8005b36:	095b      	lsrs	r3, r3, #5
 8005b38:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005b3c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005b40:	6033      	str	r3, [r6, #0]
 8005b42:	602a      	str	r2, [r5, #0]
 8005b44:	b016      	add	sp, #88	; 0x58
 8005b46:	bd70      	pop	{r4, r5, r6, pc}

08005b48 <__smakebuf_r>:
 8005b48:	898a      	ldrh	r2, [r1, #12]
 8005b4a:	0792      	lsls	r2, r2, #30
 8005b4c:	460b      	mov	r3, r1
 8005b4e:	d506      	bpl.n	8005b5e <__smakebuf_r+0x16>
 8005b50:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005b54:	2101      	movs	r1, #1
 8005b56:	601a      	str	r2, [r3, #0]
 8005b58:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005b5c:	4770      	bx	lr
 8005b5e:	b570      	push	{r4, r5, r6, lr}
 8005b60:	b082      	sub	sp, #8
 8005b62:	ab01      	add	r3, sp, #4
 8005b64:	466a      	mov	r2, sp
 8005b66:	460c      	mov	r4, r1
 8005b68:	4605      	mov	r5, r0
 8005b6a:	f7ff ffbf 	bl	8005aec <__swhatbuf_r>
 8005b6e:	9900      	ldr	r1, [sp, #0]
 8005b70:	4606      	mov	r6, r0
 8005b72:	4628      	mov	r0, r5
 8005b74:	f000 f832 	bl	8005bdc <_malloc_r>
 8005b78:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b7c:	b1d8      	cbz	r0, 8005bb6 <__smakebuf_r+0x6e>
 8005b7e:	4916      	ldr	r1, [pc, #88]	; (8005bd8 <__smakebuf_r+0x90>)
 8005b80:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005b82:	9a01      	ldr	r2, [sp, #4]
 8005b84:	9900      	ldr	r1, [sp, #0]
 8005b86:	6020      	str	r0, [r4, #0]
 8005b88:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005b8c:	81a3      	strh	r3, [r4, #12]
 8005b8e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005b92:	b91a      	cbnz	r2, 8005b9c <__smakebuf_r+0x54>
 8005b94:	4333      	orrs	r3, r6
 8005b96:	81a3      	strh	r3, [r4, #12]
 8005b98:	b002      	add	sp, #8
 8005b9a:	bd70      	pop	{r4, r5, r6, pc}
 8005b9c:	4628      	mov	r0, r5
 8005b9e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005ba2:	f001 faa3 	bl	80070ec <_isatty_r>
 8005ba6:	b1a0      	cbz	r0, 8005bd2 <__smakebuf_r+0x8a>
 8005ba8:	89a3      	ldrh	r3, [r4, #12]
 8005baa:	f023 0303 	bic.w	r3, r3, #3
 8005bae:	f043 0301 	orr.w	r3, r3, #1
 8005bb2:	b21b      	sxth	r3, r3
 8005bb4:	e7ee      	b.n	8005b94 <__smakebuf_r+0x4c>
 8005bb6:	059a      	lsls	r2, r3, #22
 8005bb8:	d4ee      	bmi.n	8005b98 <__smakebuf_r+0x50>
 8005bba:	f023 0303 	bic.w	r3, r3, #3
 8005bbe:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005bc2:	f043 0302 	orr.w	r3, r3, #2
 8005bc6:	2101      	movs	r1, #1
 8005bc8:	81a3      	strh	r3, [r4, #12]
 8005bca:	6022      	str	r2, [r4, #0]
 8005bcc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005bd0:	e7e2      	b.n	8005b98 <__smakebuf_r+0x50>
 8005bd2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005bd6:	e7dd      	b.n	8005b94 <__smakebuf_r+0x4c>
 8005bd8:	08005439 	.word	0x08005439

08005bdc <_malloc_r>:
 8005bdc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005be0:	f101 050b 	add.w	r5, r1, #11
 8005be4:	2d16      	cmp	r5, #22
 8005be6:	b083      	sub	sp, #12
 8005be8:	4606      	mov	r6, r0
 8005bea:	d823      	bhi.n	8005c34 <_malloc_r+0x58>
 8005bec:	2910      	cmp	r1, #16
 8005bee:	f200 80b9 	bhi.w	8005d64 <_malloc_r+0x188>
 8005bf2:	f000 fafb 	bl	80061ec <__malloc_lock>
 8005bf6:	2510      	movs	r5, #16
 8005bf8:	2318      	movs	r3, #24
 8005bfa:	2002      	movs	r0, #2
 8005bfc:	4fc5      	ldr	r7, [pc, #788]	; (8005f14 <_malloc_r+0x338>)
 8005bfe:	443b      	add	r3, r7
 8005c00:	f1a3 0208 	sub.w	r2, r3, #8
 8005c04:	685c      	ldr	r4, [r3, #4]
 8005c06:	4294      	cmp	r4, r2
 8005c08:	f000 8166 	beq.w	8005ed8 <_malloc_r+0x2fc>
 8005c0c:	6863      	ldr	r3, [r4, #4]
 8005c0e:	f023 0303 	bic.w	r3, r3, #3
 8005c12:	4423      	add	r3, r4
 8005c14:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005c18:	685a      	ldr	r2, [r3, #4]
 8005c1a:	60e9      	str	r1, [r5, #12]
 8005c1c:	f042 0201 	orr.w	r2, r2, #1
 8005c20:	608d      	str	r5, [r1, #8]
 8005c22:	4630      	mov	r0, r6
 8005c24:	605a      	str	r2, [r3, #4]
 8005c26:	f000 fae7 	bl	80061f8 <__malloc_unlock>
 8005c2a:	3408      	adds	r4, #8
 8005c2c:	4620      	mov	r0, r4
 8005c2e:	b003      	add	sp, #12
 8005c30:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c34:	f035 0507 	bics.w	r5, r5, #7
 8005c38:	f100 8094 	bmi.w	8005d64 <_malloc_r+0x188>
 8005c3c:	42a9      	cmp	r1, r5
 8005c3e:	f200 8091 	bhi.w	8005d64 <_malloc_r+0x188>
 8005c42:	f000 fad3 	bl	80061ec <__malloc_lock>
 8005c46:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005c4a:	f0c0 8183 	bcc.w	8005f54 <_malloc_r+0x378>
 8005c4e:	0a6b      	lsrs	r3, r5, #9
 8005c50:	f000 808f 	beq.w	8005d72 <_malloc_r+0x196>
 8005c54:	2b04      	cmp	r3, #4
 8005c56:	f200 8146 	bhi.w	8005ee6 <_malloc_r+0x30a>
 8005c5a:	09ab      	lsrs	r3, r5, #6
 8005c5c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005c60:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005c64:	00c3      	lsls	r3, r0, #3
 8005c66:	4fab      	ldr	r7, [pc, #684]	; (8005f14 <_malloc_r+0x338>)
 8005c68:	443b      	add	r3, r7
 8005c6a:	f1a3 0108 	sub.w	r1, r3, #8
 8005c6e:	685c      	ldr	r4, [r3, #4]
 8005c70:	42a1      	cmp	r1, r4
 8005c72:	d106      	bne.n	8005c82 <_malloc_r+0xa6>
 8005c74:	e00c      	b.n	8005c90 <_malloc_r+0xb4>
 8005c76:	2a00      	cmp	r2, #0
 8005c78:	f280 811d 	bge.w	8005eb6 <_malloc_r+0x2da>
 8005c7c:	68e4      	ldr	r4, [r4, #12]
 8005c7e:	42a1      	cmp	r1, r4
 8005c80:	d006      	beq.n	8005c90 <_malloc_r+0xb4>
 8005c82:	6863      	ldr	r3, [r4, #4]
 8005c84:	f023 0303 	bic.w	r3, r3, #3
 8005c88:	1b5a      	subs	r2, r3, r5
 8005c8a:	2a0f      	cmp	r2, #15
 8005c8c:	ddf3      	ble.n	8005c76 <_malloc_r+0x9a>
 8005c8e:	4660      	mov	r0, ip
 8005c90:	693c      	ldr	r4, [r7, #16]
 8005c92:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005f28 <_malloc_r+0x34c>
 8005c96:	4564      	cmp	r4, ip
 8005c98:	d071      	beq.n	8005d7e <_malloc_r+0x1a2>
 8005c9a:	6863      	ldr	r3, [r4, #4]
 8005c9c:	f023 0303 	bic.w	r3, r3, #3
 8005ca0:	1b5a      	subs	r2, r3, r5
 8005ca2:	2a0f      	cmp	r2, #15
 8005ca4:	f300 8144 	bgt.w	8005f30 <_malloc_r+0x354>
 8005ca8:	2a00      	cmp	r2, #0
 8005caa:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005cae:	f280 8126 	bge.w	8005efe <_malloc_r+0x322>
 8005cb2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005cb6:	f080 8169 	bcs.w	8005f8c <_malloc_r+0x3b0>
 8005cba:	08db      	lsrs	r3, r3, #3
 8005cbc:	1c59      	adds	r1, r3, #1
 8005cbe:	687a      	ldr	r2, [r7, #4]
 8005cc0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005cc4:	f8c4 8008 	str.w	r8, [r4, #8]
 8005cc8:	f04f 0e01 	mov.w	lr, #1
 8005ccc:	109b      	asrs	r3, r3, #2
 8005cce:	fa0e f303 	lsl.w	r3, lr, r3
 8005cd2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005cd6:	4313      	orrs	r3, r2
 8005cd8:	f1ae 0208 	sub.w	r2, lr, #8
 8005cdc:	60e2      	str	r2, [r4, #12]
 8005cde:	607b      	str	r3, [r7, #4]
 8005ce0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005ce4:	f8c8 400c 	str.w	r4, [r8, #12]
 8005ce8:	1082      	asrs	r2, r0, #2
 8005cea:	2401      	movs	r4, #1
 8005cec:	4094      	lsls	r4, r2
 8005cee:	429c      	cmp	r4, r3
 8005cf0:	d84b      	bhi.n	8005d8a <_malloc_r+0x1ae>
 8005cf2:	421c      	tst	r4, r3
 8005cf4:	d106      	bne.n	8005d04 <_malloc_r+0x128>
 8005cf6:	f020 0003 	bic.w	r0, r0, #3
 8005cfa:	0064      	lsls	r4, r4, #1
 8005cfc:	421c      	tst	r4, r3
 8005cfe:	f100 0004 	add.w	r0, r0, #4
 8005d02:	d0fa      	beq.n	8005cfa <_malloc_r+0x11e>
 8005d04:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005d08:	46ce      	mov	lr, r9
 8005d0a:	4680      	mov	r8, r0
 8005d0c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005d10:	459e      	cmp	lr, r3
 8005d12:	d107      	bne.n	8005d24 <_malloc_r+0x148>
 8005d14:	e122      	b.n	8005f5c <_malloc_r+0x380>
 8005d16:	2a00      	cmp	r2, #0
 8005d18:	f280 8129 	bge.w	8005f6e <_malloc_r+0x392>
 8005d1c:	68db      	ldr	r3, [r3, #12]
 8005d1e:	459e      	cmp	lr, r3
 8005d20:	f000 811c 	beq.w	8005f5c <_malloc_r+0x380>
 8005d24:	6859      	ldr	r1, [r3, #4]
 8005d26:	f021 0103 	bic.w	r1, r1, #3
 8005d2a:	1b4a      	subs	r2, r1, r5
 8005d2c:	2a0f      	cmp	r2, #15
 8005d2e:	ddf2      	ble.n	8005d16 <_malloc_r+0x13a>
 8005d30:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005d34:	195c      	adds	r4, r3, r5
 8005d36:	f045 0501 	orr.w	r5, r5, #1
 8005d3a:	605d      	str	r5, [r3, #4]
 8005d3c:	f042 0501 	orr.w	r5, r2, #1
 8005d40:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005d44:	4630      	mov	r0, r6
 8005d46:	f8ce 8008 	str.w	r8, [lr, #8]
 8005d4a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005d4e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005d52:	6065      	str	r5, [r4, #4]
 8005d54:	505a      	str	r2, [r3, r1]
 8005d56:	9301      	str	r3, [sp, #4]
 8005d58:	f000 fa4e 	bl	80061f8 <__malloc_unlock>
 8005d5c:	9b01      	ldr	r3, [sp, #4]
 8005d5e:	f103 0408 	add.w	r4, r3, #8
 8005d62:	e763      	b.n	8005c2c <_malloc_r+0x50>
 8005d64:	2400      	movs	r4, #0
 8005d66:	230c      	movs	r3, #12
 8005d68:	4620      	mov	r0, r4
 8005d6a:	6033      	str	r3, [r6, #0]
 8005d6c:	b003      	add	sp, #12
 8005d6e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d72:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005d76:	2040      	movs	r0, #64	; 0x40
 8005d78:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005d7c:	e773      	b.n	8005c66 <_malloc_r+0x8a>
 8005d7e:	687b      	ldr	r3, [r7, #4]
 8005d80:	1082      	asrs	r2, r0, #2
 8005d82:	2401      	movs	r4, #1
 8005d84:	4094      	lsls	r4, r2
 8005d86:	429c      	cmp	r4, r3
 8005d88:	d9b3      	bls.n	8005cf2 <_malloc_r+0x116>
 8005d8a:	68bc      	ldr	r4, [r7, #8]
 8005d8c:	6863      	ldr	r3, [r4, #4]
 8005d8e:	f023 0903 	bic.w	r9, r3, #3
 8005d92:	45a9      	cmp	r9, r5
 8005d94:	d303      	bcc.n	8005d9e <_malloc_r+0x1c2>
 8005d96:	eba9 0305 	sub.w	r3, r9, r5
 8005d9a:	2b0f      	cmp	r3, #15
 8005d9c:	dc7b      	bgt.n	8005e96 <_malloc_r+0x2ba>
 8005d9e:	4b5e      	ldr	r3, [pc, #376]	; (8005f18 <_malloc_r+0x33c>)
 8005da0:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005f2c <_malloc_r+0x350>
 8005da4:	681a      	ldr	r2, [r3, #0]
 8005da6:	f8da 3000 	ldr.w	r3, [sl]
 8005daa:	3301      	adds	r3, #1
 8005dac:	eb05 0802 	add.w	r8, r5, r2
 8005db0:	f000 8148 	beq.w	8006044 <_malloc_r+0x468>
 8005db4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005db8:	f108 080f 	add.w	r8, r8, #15
 8005dbc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005dc0:	f028 080f 	bic.w	r8, r8, #15
 8005dc4:	4641      	mov	r1, r8
 8005dc6:	4630      	mov	r0, r6
 8005dc8:	f000 ff08 	bl	8006bdc <_sbrk_r>
 8005dcc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005dd0:	4683      	mov	fp, r0
 8005dd2:	f000 8104 	beq.w	8005fde <_malloc_r+0x402>
 8005dd6:	eb04 0009 	add.w	r0, r4, r9
 8005dda:	4558      	cmp	r0, fp
 8005ddc:	f200 80fd 	bhi.w	8005fda <_malloc_r+0x3fe>
 8005de0:	4a4e      	ldr	r2, [pc, #312]	; (8005f1c <_malloc_r+0x340>)
 8005de2:	6813      	ldr	r3, [r2, #0]
 8005de4:	4443      	add	r3, r8
 8005de6:	6013      	str	r3, [r2, #0]
 8005de8:	f000 814d 	beq.w	8006086 <_malloc_r+0x4aa>
 8005dec:	f8da 1000 	ldr.w	r1, [sl]
 8005df0:	3101      	adds	r1, #1
 8005df2:	bf1b      	ittet	ne
 8005df4:	ebab 0000 	subne.w	r0, fp, r0
 8005df8:	181b      	addne	r3, r3, r0
 8005dfa:	f8ca b000 	streq.w	fp, [sl]
 8005dfe:	6013      	strne	r3, [r2, #0]
 8005e00:	f01b 0307 	ands.w	r3, fp, #7
 8005e04:	f000 8134 	beq.w	8006070 <_malloc_r+0x494>
 8005e08:	f1c3 0108 	rsb	r1, r3, #8
 8005e0c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005e10:	448b      	add	fp, r1
 8005e12:	3308      	adds	r3, #8
 8005e14:	44d8      	add	r8, fp
 8005e16:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005e1a:	eba3 0808 	sub.w	r8, r3, r8
 8005e1e:	4641      	mov	r1, r8
 8005e20:	4630      	mov	r0, r6
 8005e22:	9201      	str	r2, [sp, #4]
 8005e24:	f000 feda 	bl	8006bdc <_sbrk_r>
 8005e28:	1c43      	adds	r3, r0, #1
 8005e2a:	9a01      	ldr	r2, [sp, #4]
 8005e2c:	f000 8146 	beq.w	80060bc <_malloc_r+0x4e0>
 8005e30:	eba0 010b 	sub.w	r1, r0, fp
 8005e34:	4441      	add	r1, r8
 8005e36:	f041 0101 	orr.w	r1, r1, #1
 8005e3a:	6813      	ldr	r3, [r2, #0]
 8005e3c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005e40:	4443      	add	r3, r8
 8005e42:	42bc      	cmp	r4, r7
 8005e44:	f8cb 1004 	str.w	r1, [fp, #4]
 8005e48:	6013      	str	r3, [r2, #0]
 8005e4a:	d015      	beq.n	8005e78 <_malloc_r+0x29c>
 8005e4c:	f1b9 0f0f 	cmp.w	r9, #15
 8005e50:	f240 8130 	bls.w	80060b4 <_malloc_r+0x4d8>
 8005e54:	6860      	ldr	r0, [r4, #4]
 8005e56:	f1a9 010c 	sub.w	r1, r9, #12
 8005e5a:	f021 0107 	bic.w	r1, r1, #7
 8005e5e:	f000 0001 	and.w	r0, r0, #1
 8005e62:	eb04 0c01 	add.w	ip, r4, r1
 8005e66:	4308      	orrs	r0, r1
 8005e68:	f04f 0e05 	mov.w	lr, #5
 8005e6c:	290f      	cmp	r1, #15
 8005e6e:	6060      	str	r0, [r4, #4]
 8005e70:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005e74:	f200 813a 	bhi.w	80060ec <_malloc_r+0x510>
 8005e78:	4a29      	ldr	r2, [pc, #164]	; (8005f20 <_malloc_r+0x344>)
 8005e7a:	482a      	ldr	r0, [pc, #168]	; (8005f24 <_malloc_r+0x348>)
 8005e7c:	6811      	ldr	r1, [r2, #0]
 8005e7e:	68bc      	ldr	r4, [r7, #8]
 8005e80:	428b      	cmp	r3, r1
 8005e82:	6801      	ldr	r1, [r0, #0]
 8005e84:	bf88      	it	hi
 8005e86:	6013      	strhi	r3, [r2, #0]
 8005e88:	6862      	ldr	r2, [r4, #4]
 8005e8a:	428b      	cmp	r3, r1
 8005e8c:	f022 0203 	bic.w	r2, r2, #3
 8005e90:	bf88      	it	hi
 8005e92:	6003      	strhi	r3, [r0, #0]
 8005e94:	e0a7      	b.n	8005fe6 <_malloc_r+0x40a>
 8005e96:	1962      	adds	r2, r4, r5
 8005e98:	f043 0301 	orr.w	r3, r3, #1
 8005e9c:	f045 0501 	orr.w	r5, r5, #1
 8005ea0:	6065      	str	r5, [r4, #4]
 8005ea2:	4630      	mov	r0, r6
 8005ea4:	60ba      	str	r2, [r7, #8]
 8005ea6:	6053      	str	r3, [r2, #4]
 8005ea8:	f000 f9a6 	bl	80061f8 <__malloc_unlock>
 8005eac:	3408      	adds	r4, #8
 8005eae:	4620      	mov	r0, r4
 8005eb0:	b003      	add	sp, #12
 8005eb2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005eb6:	4423      	add	r3, r4
 8005eb8:	68e1      	ldr	r1, [r4, #12]
 8005eba:	685a      	ldr	r2, [r3, #4]
 8005ebc:	68a5      	ldr	r5, [r4, #8]
 8005ebe:	f042 0201 	orr.w	r2, r2, #1
 8005ec2:	60e9      	str	r1, [r5, #12]
 8005ec4:	4630      	mov	r0, r6
 8005ec6:	608d      	str	r5, [r1, #8]
 8005ec8:	605a      	str	r2, [r3, #4]
 8005eca:	f000 f995 	bl	80061f8 <__malloc_unlock>
 8005ece:	3408      	adds	r4, #8
 8005ed0:	4620      	mov	r0, r4
 8005ed2:	b003      	add	sp, #12
 8005ed4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ed8:	68dc      	ldr	r4, [r3, #12]
 8005eda:	42a3      	cmp	r3, r4
 8005edc:	bf08      	it	eq
 8005ede:	3002      	addeq	r0, #2
 8005ee0:	f43f aed6 	beq.w	8005c90 <_malloc_r+0xb4>
 8005ee4:	e692      	b.n	8005c0c <_malloc_r+0x30>
 8005ee6:	2b14      	cmp	r3, #20
 8005ee8:	d971      	bls.n	8005fce <_malloc_r+0x3f2>
 8005eea:	2b54      	cmp	r3, #84	; 0x54
 8005eec:	f200 80ad 	bhi.w	800604a <_malloc_r+0x46e>
 8005ef0:	0b2b      	lsrs	r3, r5, #12
 8005ef2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005ef6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005efa:	00c3      	lsls	r3, r0, #3
 8005efc:	e6b3      	b.n	8005c66 <_malloc_r+0x8a>
 8005efe:	4423      	add	r3, r4
 8005f00:	4630      	mov	r0, r6
 8005f02:	685a      	ldr	r2, [r3, #4]
 8005f04:	f042 0201 	orr.w	r2, r2, #1
 8005f08:	605a      	str	r2, [r3, #4]
 8005f0a:	3408      	adds	r4, #8
 8005f0c:	f000 f974 	bl	80061f8 <__malloc_unlock>
 8005f10:	e68c      	b.n	8005c2c <_malloc_r+0x50>
 8005f12:	bf00      	nop
 8005f14:	2000046c 	.word	0x2000046c
 8005f18:	20000ac0 	.word	0x20000ac0
 8005f1c:	20000a90 	.word	0x20000a90
 8005f20:	20000ab8 	.word	0x20000ab8
 8005f24:	20000abc 	.word	0x20000abc
 8005f28:	20000474 	.word	0x20000474
 8005f2c:	20000874 	.word	0x20000874
 8005f30:	1961      	adds	r1, r4, r5
 8005f32:	f045 0e01 	orr.w	lr, r5, #1
 8005f36:	f042 0501 	orr.w	r5, r2, #1
 8005f3a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005f3e:	4630      	mov	r0, r6
 8005f40:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005f44:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005f48:	604d      	str	r5, [r1, #4]
 8005f4a:	50e2      	str	r2, [r4, r3]
 8005f4c:	f000 f954 	bl	80061f8 <__malloc_unlock>
 8005f50:	3408      	adds	r4, #8
 8005f52:	e66b      	b.n	8005c2c <_malloc_r+0x50>
 8005f54:	08e8      	lsrs	r0, r5, #3
 8005f56:	f105 0308 	add.w	r3, r5, #8
 8005f5a:	e64f      	b.n	8005bfc <_malloc_r+0x20>
 8005f5c:	f108 0801 	add.w	r8, r8, #1
 8005f60:	f018 0f03 	tst.w	r8, #3
 8005f64:	f10e 0e08 	add.w	lr, lr, #8
 8005f68:	f47f aed0 	bne.w	8005d0c <_malloc_r+0x130>
 8005f6c:	e052      	b.n	8006014 <_malloc_r+0x438>
 8005f6e:	4419      	add	r1, r3
 8005f70:	461c      	mov	r4, r3
 8005f72:	684a      	ldr	r2, [r1, #4]
 8005f74:	68db      	ldr	r3, [r3, #12]
 8005f76:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005f7a:	f042 0201 	orr.w	r2, r2, #1
 8005f7e:	604a      	str	r2, [r1, #4]
 8005f80:	4630      	mov	r0, r6
 8005f82:	60eb      	str	r3, [r5, #12]
 8005f84:	609d      	str	r5, [r3, #8]
 8005f86:	f000 f937 	bl	80061f8 <__malloc_unlock>
 8005f8a:	e64f      	b.n	8005c2c <_malloc_r+0x50>
 8005f8c:	0a5a      	lsrs	r2, r3, #9
 8005f8e:	2a04      	cmp	r2, #4
 8005f90:	d935      	bls.n	8005ffe <_malloc_r+0x422>
 8005f92:	2a14      	cmp	r2, #20
 8005f94:	d86f      	bhi.n	8006076 <_malloc_r+0x49a>
 8005f96:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005f9a:	00c9      	lsls	r1, r1, #3
 8005f9c:	325b      	adds	r2, #91	; 0x5b
 8005f9e:	eb07 0e01 	add.w	lr, r7, r1
 8005fa2:	5879      	ldr	r1, [r7, r1]
 8005fa4:	f1ae 0e08 	sub.w	lr, lr, #8
 8005fa8:	458e      	cmp	lr, r1
 8005faa:	d058      	beq.n	800605e <_malloc_r+0x482>
 8005fac:	684a      	ldr	r2, [r1, #4]
 8005fae:	f022 0203 	bic.w	r2, r2, #3
 8005fb2:	429a      	cmp	r2, r3
 8005fb4:	d902      	bls.n	8005fbc <_malloc_r+0x3e0>
 8005fb6:	6889      	ldr	r1, [r1, #8]
 8005fb8:	458e      	cmp	lr, r1
 8005fba:	d1f7      	bne.n	8005fac <_malloc_r+0x3d0>
 8005fbc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005fc0:	687b      	ldr	r3, [r7, #4]
 8005fc2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005fc6:	f8ce 4008 	str.w	r4, [lr, #8]
 8005fca:	60cc      	str	r4, [r1, #12]
 8005fcc:	e68c      	b.n	8005ce8 <_malloc_r+0x10c>
 8005fce:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005fd2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005fd6:	00c3      	lsls	r3, r0, #3
 8005fd8:	e645      	b.n	8005c66 <_malloc_r+0x8a>
 8005fda:	42bc      	cmp	r4, r7
 8005fdc:	d072      	beq.n	80060c4 <_malloc_r+0x4e8>
 8005fde:	68bc      	ldr	r4, [r7, #8]
 8005fe0:	6862      	ldr	r2, [r4, #4]
 8005fe2:	f022 0203 	bic.w	r2, r2, #3
 8005fe6:	4295      	cmp	r5, r2
 8005fe8:	eba2 0305 	sub.w	r3, r2, r5
 8005fec:	d802      	bhi.n	8005ff4 <_malloc_r+0x418>
 8005fee:	2b0f      	cmp	r3, #15
 8005ff0:	f73f af51 	bgt.w	8005e96 <_malloc_r+0x2ba>
 8005ff4:	4630      	mov	r0, r6
 8005ff6:	f000 f8ff 	bl	80061f8 <__malloc_unlock>
 8005ffa:	2400      	movs	r4, #0
 8005ffc:	e616      	b.n	8005c2c <_malloc_r+0x50>
 8005ffe:	099a      	lsrs	r2, r3, #6
 8006000:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006004:	00c9      	lsls	r1, r1, #3
 8006006:	3238      	adds	r2, #56	; 0x38
 8006008:	e7c9      	b.n	8005f9e <_malloc_r+0x3c2>
 800600a:	f8d9 9000 	ldr.w	r9, [r9]
 800600e:	4599      	cmp	r9, r3
 8006010:	f040 8083 	bne.w	800611a <_malloc_r+0x53e>
 8006014:	f010 0f03 	tst.w	r0, #3
 8006018:	f1a9 0308 	sub.w	r3, r9, #8
 800601c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006020:	d1f3      	bne.n	800600a <_malloc_r+0x42e>
 8006022:	687b      	ldr	r3, [r7, #4]
 8006024:	ea23 0304 	bic.w	r3, r3, r4
 8006028:	607b      	str	r3, [r7, #4]
 800602a:	0064      	lsls	r4, r4, #1
 800602c:	429c      	cmp	r4, r3
 800602e:	f63f aeac 	bhi.w	8005d8a <_malloc_r+0x1ae>
 8006032:	b91c      	cbnz	r4, 800603c <_malloc_r+0x460>
 8006034:	e6a9      	b.n	8005d8a <_malloc_r+0x1ae>
 8006036:	0064      	lsls	r4, r4, #1
 8006038:	f108 0804 	add.w	r8, r8, #4
 800603c:	421c      	tst	r4, r3
 800603e:	d0fa      	beq.n	8006036 <_malloc_r+0x45a>
 8006040:	4640      	mov	r0, r8
 8006042:	e65f      	b.n	8005d04 <_malloc_r+0x128>
 8006044:	f108 0810 	add.w	r8, r8, #16
 8006048:	e6bc      	b.n	8005dc4 <_malloc_r+0x1e8>
 800604a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800604e:	d826      	bhi.n	800609e <_malloc_r+0x4c2>
 8006050:	0beb      	lsrs	r3, r5, #15
 8006052:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006056:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800605a:	00c3      	lsls	r3, r0, #3
 800605c:	e603      	b.n	8005c66 <_malloc_r+0x8a>
 800605e:	687b      	ldr	r3, [r7, #4]
 8006060:	1092      	asrs	r2, r2, #2
 8006062:	f04f 0801 	mov.w	r8, #1
 8006066:	fa08 f202 	lsl.w	r2, r8, r2
 800606a:	4313      	orrs	r3, r2
 800606c:	607b      	str	r3, [r7, #4]
 800606e:	e7a8      	b.n	8005fc2 <_malloc_r+0x3e6>
 8006070:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006074:	e6ce      	b.n	8005e14 <_malloc_r+0x238>
 8006076:	2a54      	cmp	r2, #84	; 0x54
 8006078:	d829      	bhi.n	80060ce <_malloc_r+0x4f2>
 800607a:	0b1a      	lsrs	r2, r3, #12
 800607c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8006080:	00c9      	lsls	r1, r1, #3
 8006082:	326e      	adds	r2, #110	; 0x6e
 8006084:	e78b      	b.n	8005f9e <_malloc_r+0x3c2>
 8006086:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800608a:	2900      	cmp	r1, #0
 800608c:	f47f aeae 	bne.w	8005dec <_malloc_r+0x210>
 8006090:	eb09 0208 	add.w	r2, r9, r8
 8006094:	68b9      	ldr	r1, [r7, #8]
 8006096:	f042 0201 	orr.w	r2, r2, #1
 800609a:	604a      	str	r2, [r1, #4]
 800609c:	e6ec      	b.n	8005e78 <_malloc_r+0x29c>
 800609e:	f240 5254 	movw	r2, #1364	; 0x554
 80060a2:	4293      	cmp	r3, r2
 80060a4:	d81c      	bhi.n	80060e0 <_malloc_r+0x504>
 80060a6:	0cab      	lsrs	r3, r5, #18
 80060a8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80060ac:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80060b0:	00c3      	lsls	r3, r0, #3
 80060b2:	e5d8      	b.n	8005c66 <_malloc_r+0x8a>
 80060b4:	2301      	movs	r3, #1
 80060b6:	f8cb 3004 	str.w	r3, [fp, #4]
 80060ba:	e79b      	b.n	8005ff4 <_malloc_r+0x418>
 80060bc:	2101      	movs	r1, #1
 80060be:	f04f 0800 	mov.w	r8, #0
 80060c2:	e6ba      	b.n	8005e3a <_malloc_r+0x25e>
 80060c4:	4a16      	ldr	r2, [pc, #88]	; (8006120 <_malloc_r+0x544>)
 80060c6:	6813      	ldr	r3, [r2, #0]
 80060c8:	4443      	add	r3, r8
 80060ca:	6013      	str	r3, [r2, #0]
 80060cc:	e68e      	b.n	8005dec <_malloc_r+0x210>
 80060ce:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80060d2:	d814      	bhi.n	80060fe <_malloc_r+0x522>
 80060d4:	0bda      	lsrs	r2, r3, #15
 80060d6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80060da:	00c9      	lsls	r1, r1, #3
 80060dc:	3277      	adds	r2, #119	; 0x77
 80060de:	e75e      	b.n	8005f9e <_malloc_r+0x3c2>
 80060e0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80060e4:	207f      	movs	r0, #127	; 0x7f
 80060e6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80060ea:	e5bc      	b.n	8005c66 <_malloc_r+0x8a>
 80060ec:	f104 0108 	add.w	r1, r4, #8
 80060f0:	4630      	mov	r0, r6
 80060f2:	9201      	str	r2, [sp, #4]
 80060f4:	f7ff fa48 	bl	8005588 <_free_r>
 80060f8:	9a01      	ldr	r2, [sp, #4]
 80060fa:	6813      	ldr	r3, [r2, #0]
 80060fc:	e6bc      	b.n	8005e78 <_malloc_r+0x29c>
 80060fe:	f240 5154 	movw	r1, #1364	; 0x554
 8006102:	428a      	cmp	r2, r1
 8006104:	d805      	bhi.n	8006112 <_malloc_r+0x536>
 8006106:	0c9a      	lsrs	r2, r3, #18
 8006108:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800610c:	00c9      	lsls	r1, r1, #3
 800610e:	327c      	adds	r2, #124	; 0x7c
 8006110:	e745      	b.n	8005f9e <_malloc_r+0x3c2>
 8006112:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006116:	227e      	movs	r2, #126	; 0x7e
 8006118:	e741      	b.n	8005f9e <_malloc_r+0x3c2>
 800611a:	687b      	ldr	r3, [r7, #4]
 800611c:	e785      	b.n	800602a <_malloc_r+0x44e>
 800611e:	bf00      	nop
 8006120:	20000a90 	.word	0x20000a90

08006124 <memmove>:
 8006124:	4288      	cmp	r0, r1
 8006126:	b4f0      	push	{r4, r5, r6, r7}
 8006128:	d90d      	bls.n	8006146 <memmove+0x22>
 800612a:	188b      	adds	r3, r1, r2
 800612c:	4283      	cmp	r3, r0
 800612e:	d90a      	bls.n	8006146 <memmove+0x22>
 8006130:	1884      	adds	r4, r0, r2
 8006132:	b132      	cbz	r2, 8006142 <memmove+0x1e>
 8006134:	4622      	mov	r2, r4
 8006136:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800613a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800613e:	4299      	cmp	r1, r3
 8006140:	d1f9      	bne.n	8006136 <memmove+0x12>
 8006142:	bcf0      	pop	{r4, r5, r6, r7}
 8006144:	4770      	bx	lr
 8006146:	2a0f      	cmp	r2, #15
 8006148:	d949      	bls.n	80061de <memmove+0xba>
 800614a:	ea40 0301 	orr.w	r3, r0, r1
 800614e:	079b      	lsls	r3, r3, #30
 8006150:	d147      	bne.n	80061e2 <memmove+0xbe>
 8006152:	f1a2 0310 	sub.w	r3, r2, #16
 8006156:	091b      	lsrs	r3, r3, #4
 8006158:	f101 0720 	add.w	r7, r1, #32
 800615c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006160:	f101 0410 	add.w	r4, r1, #16
 8006164:	f100 0510 	add.w	r5, r0, #16
 8006168:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800616c:	f845 6c10 	str.w	r6, [r5, #-16]
 8006170:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006174:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006178:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800617c:	f845 6c08 	str.w	r6, [r5, #-8]
 8006180:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006184:	f845 6c04 	str.w	r6, [r5, #-4]
 8006188:	3410      	adds	r4, #16
 800618a:	42bc      	cmp	r4, r7
 800618c:	f105 0510 	add.w	r5, r5, #16
 8006190:	d1ea      	bne.n	8006168 <memmove+0x44>
 8006192:	3301      	adds	r3, #1
 8006194:	f002 050f 	and.w	r5, r2, #15
 8006198:	011b      	lsls	r3, r3, #4
 800619a:	2d03      	cmp	r5, #3
 800619c:	4419      	add	r1, r3
 800619e:	4403      	add	r3, r0
 80061a0:	d921      	bls.n	80061e6 <memmove+0xc2>
 80061a2:	1f1f      	subs	r7, r3, #4
 80061a4:	460e      	mov	r6, r1
 80061a6:	462c      	mov	r4, r5
 80061a8:	3c04      	subs	r4, #4
 80061aa:	f856 cb04 	ldr.w	ip, [r6], #4
 80061ae:	f847 cf04 	str.w	ip, [r7, #4]!
 80061b2:	2c03      	cmp	r4, #3
 80061b4:	d8f8      	bhi.n	80061a8 <memmove+0x84>
 80061b6:	1f2c      	subs	r4, r5, #4
 80061b8:	f024 0403 	bic.w	r4, r4, #3
 80061bc:	3404      	adds	r4, #4
 80061be:	4423      	add	r3, r4
 80061c0:	4421      	add	r1, r4
 80061c2:	f002 0203 	and.w	r2, r2, #3
 80061c6:	2a00      	cmp	r2, #0
 80061c8:	d0bb      	beq.n	8006142 <memmove+0x1e>
 80061ca:	3b01      	subs	r3, #1
 80061cc:	440a      	add	r2, r1
 80061ce:	f811 4b01 	ldrb.w	r4, [r1], #1
 80061d2:	f803 4f01 	strb.w	r4, [r3, #1]!
 80061d6:	4291      	cmp	r1, r2
 80061d8:	d1f9      	bne.n	80061ce <memmove+0xaa>
 80061da:	bcf0      	pop	{r4, r5, r6, r7}
 80061dc:	4770      	bx	lr
 80061de:	4603      	mov	r3, r0
 80061e0:	e7f1      	b.n	80061c6 <memmove+0xa2>
 80061e2:	4603      	mov	r3, r0
 80061e4:	e7f1      	b.n	80061ca <memmove+0xa6>
 80061e6:	462a      	mov	r2, r5
 80061e8:	e7ed      	b.n	80061c6 <memmove+0xa2>
 80061ea:	bf00      	nop

080061ec <__malloc_lock>:
 80061ec:	4801      	ldr	r0, [pc, #4]	; (80061f4 <__malloc_lock+0x8>)
 80061ee:	f7ff bc79 	b.w	8005ae4 <__retarget_lock_acquire_recursive>
 80061f2:	bf00      	nop
 80061f4:	20000bd4 	.word	0x20000bd4

080061f8 <__malloc_unlock>:
 80061f8:	4801      	ldr	r0, [pc, #4]	; (8006200 <__malloc_unlock+0x8>)
 80061fa:	f7ff bc75 	b.w	8005ae8 <__retarget_lock_release_recursive>
 80061fe:	bf00      	nop
 8006200:	20000bd4 	.word	0x20000bd4

08006204 <_Balloc>:
 8006204:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006206:	b570      	push	{r4, r5, r6, lr}
 8006208:	4605      	mov	r5, r0
 800620a:	460c      	mov	r4, r1
 800620c:	b14b      	cbz	r3, 8006222 <_Balloc+0x1e>
 800620e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006212:	b180      	cbz	r0, 8006236 <_Balloc+0x32>
 8006214:	6802      	ldr	r2, [r0, #0]
 8006216:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800621a:	2300      	movs	r3, #0
 800621c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006220:	bd70      	pop	{r4, r5, r6, pc}
 8006222:	2221      	movs	r2, #33	; 0x21
 8006224:	2104      	movs	r1, #4
 8006226:	f000 fe1d 	bl	8006e64 <_calloc_r>
 800622a:	4603      	mov	r3, r0
 800622c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800622e:	2800      	cmp	r0, #0
 8006230:	d1ed      	bne.n	800620e <_Balloc+0xa>
 8006232:	2000      	movs	r0, #0
 8006234:	bd70      	pop	{r4, r5, r6, pc}
 8006236:	2101      	movs	r1, #1
 8006238:	fa01 f604 	lsl.w	r6, r1, r4
 800623c:	1d72      	adds	r2, r6, #5
 800623e:	4628      	mov	r0, r5
 8006240:	0092      	lsls	r2, r2, #2
 8006242:	f000 fe0f 	bl	8006e64 <_calloc_r>
 8006246:	2800      	cmp	r0, #0
 8006248:	d0f3      	beq.n	8006232 <_Balloc+0x2e>
 800624a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800624e:	e7e4      	b.n	800621a <_Balloc+0x16>

08006250 <_Bfree>:
 8006250:	b131      	cbz	r1, 8006260 <_Bfree+0x10>
 8006252:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006254:	684a      	ldr	r2, [r1, #4]
 8006256:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800625a:	6008      	str	r0, [r1, #0]
 800625c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006260:	4770      	bx	lr
 8006262:	bf00      	nop

08006264 <__multadd>:
 8006264:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006266:	690c      	ldr	r4, [r1, #16]
 8006268:	b083      	sub	sp, #12
 800626a:	460d      	mov	r5, r1
 800626c:	4606      	mov	r6, r0
 800626e:	f101 0c14 	add.w	ip, r1, #20
 8006272:	2700      	movs	r7, #0
 8006274:	f8dc 0000 	ldr.w	r0, [ip]
 8006278:	b281      	uxth	r1, r0
 800627a:	fb02 3301 	mla	r3, r2, r1, r3
 800627e:	0c01      	lsrs	r1, r0, #16
 8006280:	0c18      	lsrs	r0, r3, #16
 8006282:	fb02 0101 	mla	r1, r2, r1, r0
 8006286:	b29b      	uxth	r3, r3
 8006288:	3701      	adds	r7, #1
 800628a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800628e:	42bc      	cmp	r4, r7
 8006290:	f84c 3b04 	str.w	r3, [ip], #4
 8006294:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006298:	dcec      	bgt.n	8006274 <__multadd+0x10>
 800629a:	b13b      	cbz	r3, 80062ac <__multadd+0x48>
 800629c:	68aa      	ldr	r2, [r5, #8]
 800629e:	42a2      	cmp	r2, r4
 80062a0:	dd07      	ble.n	80062b2 <__multadd+0x4e>
 80062a2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80062a6:	3401      	adds	r4, #1
 80062a8:	6153      	str	r3, [r2, #20]
 80062aa:	612c      	str	r4, [r5, #16]
 80062ac:	4628      	mov	r0, r5
 80062ae:	b003      	add	sp, #12
 80062b0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80062b2:	6869      	ldr	r1, [r5, #4]
 80062b4:	9301      	str	r3, [sp, #4]
 80062b6:	3101      	adds	r1, #1
 80062b8:	4630      	mov	r0, r6
 80062ba:	f7ff ffa3 	bl	8006204 <_Balloc>
 80062be:	692a      	ldr	r2, [r5, #16]
 80062c0:	3202      	adds	r2, #2
 80062c2:	f105 010c 	add.w	r1, r5, #12
 80062c6:	4607      	mov	r7, r0
 80062c8:	0092      	lsls	r2, r2, #2
 80062ca:	300c      	adds	r0, #12
 80062cc:	f7fa f918 	bl	8000500 <memcpy>
 80062d0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80062d2:	6869      	ldr	r1, [r5, #4]
 80062d4:	9b01      	ldr	r3, [sp, #4]
 80062d6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80062da:	6028      	str	r0, [r5, #0]
 80062dc:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80062e0:	463d      	mov	r5, r7
 80062e2:	e7de      	b.n	80062a2 <__multadd+0x3e>

080062e4 <__hi0bits>:
 80062e4:	0c02      	lsrs	r2, r0, #16
 80062e6:	0412      	lsls	r2, r2, #16
 80062e8:	4603      	mov	r3, r0
 80062ea:	b9c2      	cbnz	r2, 800631e <__hi0bits+0x3a>
 80062ec:	0403      	lsls	r3, r0, #16
 80062ee:	2010      	movs	r0, #16
 80062f0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80062f4:	bf04      	itt	eq
 80062f6:	021b      	lsleq	r3, r3, #8
 80062f8:	3008      	addeq	r0, #8
 80062fa:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80062fe:	bf04      	itt	eq
 8006300:	011b      	lsleq	r3, r3, #4
 8006302:	3004      	addeq	r0, #4
 8006304:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006308:	bf04      	itt	eq
 800630a:	009b      	lsleq	r3, r3, #2
 800630c:	3002      	addeq	r0, #2
 800630e:	2b00      	cmp	r3, #0
 8006310:	db04      	blt.n	800631c <__hi0bits+0x38>
 8006312:	005b      	lsls	r3, r3, #1
 8006314:	d501      	bpl.n	800631a <__hi0bits+0x36>
 8006316:	3001      	adds	r0, #1
 8006318:	4770      	bx	lr
 800631a:	2020      	movs	r0, #32
 800631c:	4770      	bx	lr
 800631e:	2000      	movs	r0, #0
 8006320:	e7e6      	b.n	80062f0 <__hi0bits+0xc>
 8006322:	bf00      	nop

08006324 <__lo0bits>:
 8006324:	6803      	ldr	r3, [r0, #0]
 8006326:	f013 0207 	ands.w	r2, r3, #7
 800632a:	4601      	mov	r1, r0
 800632c:	d007      	beq.n	800633e <__lo0bits+0x1a>
 800632e:	07da      	lsls	r2, r3, #31
 8006330:	d41f      	bmi.n	8006372 <__lo0bits+0x4e>
 8006332:	0798      	lsls	r0, r3, #30
 8006334:	d51f      	bpl.n	8006376 <__lo0bits+0x52>
 8006336:	085b      	lsrs	r3, r3, #1
 8006338:	600b      	str	r3, [r1, #0]
 800633a:	2001      	movs	r0, #1
 800633c:	4770      	bx	lr
 800633e:	b298      	uxth	r0, r3
 8006340:	b1a0      	cbz	r0, 800636c <__lo0bits+0x48>
 8006342:	4610      	mov	r0, r2
 8006344:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006348:	bf04      	itt	eq
 800634a:	0a1b      	lsreq	r3, r3, #8
 800634c:	3008      	addeq	r0, #8
 800634e:	071a      	lsls	r2, r3, #28
 8006350:	bf04      	itt	eq
 8006352:	091b      	lsreq	r3, r3, #4
 8006354:	3004      	addeq	r0, #4
 8006356:	079a      	lsls	r2, r3, #30
 8006358:	bf04      	itt	eq
 800635a:	089b      	lsreq	r3, r3, #2
 800635c:	3002      	addeq	r0, #2
 800635e:	07da      	lsls	r2, r3, #31
 8006360:	d402      	bmi.n	8006368 <__lo0bits+0x44>
 8006362:	085b      	lsrs	r3, r3, #1
 8006364:	d00b      	beq.n	800637e <__lo0bits+0x5a>
 8006366:	3001      	adds	r0, #1
 8006368:	600b      	str	r3, [r1, #0]
 800636a:	4770      	bx	lr
 800636c:	0c1b      	lsrs	r3, r3, #16
 800636e:	2010      	movs	r0, #16
 8006370:	e7e8      	b.n	8006344 <__lo0bits+0x20>
 8006372:	2000      	movs	r0, #0
 8006374:	4770      	bx	lr
 8006376:	089b      	lsrs	r3, r3, #2
 8006378:	600b      	str	r3, [r1, #0]
 800637a:	2002      	movs	r0, #2
 800637c:	4770      	bx	lr
 800637e:	2020      	movs	r0, #32
 8006380:	4770      	bx	lr
 8006382:	bf00      	nop

08006384 <__i2b>:
 8006384:	b510      	push	{r4, lr}
 8006386:	460c      	mov	r4, r1
 8006388:	2101      	movs	r1, #1
 800638a:	f7ff ff3b 	bl	8006204 <_Balloc>
 800638e:	2201      	movs	r2, #1
 8006390:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006394:	bd10      	pop	{r4, pc}
 8006396:	bf00      	nop

08006398 <__multiply>:
 8006398:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800639c:	690e      	ldr	r6, [r1, #16]
 800639e:	6914      	ldr	r4, [r2, #16]
 80063a0:	42a6      	cmp	r6, r4
 80063a2:	b083      	sub	sp, #12
 80063a4:	460f      	mov	r7, r1
 80063a6:	4615      	mov	r5, r2
 80063a8:	da04      	bge.n	80063b4 <__multiply+0x1c>
 80063aa:	4632      	mov	r2, r6
 80063ac:	462f      	mov	r7, r5
 80063ae:	4626      	mov	r6, r4
 80063b0:	460d      	mov	r5, r1
 80063b2:	4614      	mov	r4, r2
 80063b4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80063b8:	eb06 0804 	add.w	r8, r6, r4
 80063bc:	4543      	cmp	r3, r8
 80063be:	bfb8      	it	lt
 80063c0:	3101      	addlt	r1, #1
 80063c2:	f7ff ff1f 	bl	8006204 <_Balloc>
 80063c6:	f100 0914 	add.w	r9, r0, #20
 80063ca:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80063ce:	45f1      	cmp	r9, lr
 80063d0:	9000      	str	r0, [sp, #0]
 80063d2:	d205      	bcs.n	80063e0 <__multiply+0x48>
 80063d4:	464b      	mov	r3, r9
 80063d6:	2200      	movs	r2, #0
 80063d8:	f843 2b04 	str.w	r2, [r3], #4
 80063dc:	459e      	cmp	lr, r3
 80063de:	d8fb      	bhi.n	80063d8 <__multiply+0x40>
 80063e0:	f105 0a14 	add.w	sl, r5, #20
 80063e4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80063e8:	f107 0314 	add.w	r3, r7, #20
 80063ec:	45a2      	cmp	sl, r4
 80063ee:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80063f2:	d261      	bcs.n	80064b8 <__multiply+0x120>
 80063f4:	1b64      	subs	r4, r4, r5
 80063f6:	3c15      	subs	r4, #21
 80063f8:	f024 0403 	bic.w	r4, r4, #3
 80063fc:	f8cd e004 	str.w	lr, [sp, #4]
 8006400:	44a2      	add	sl, r4
 8006402:	f105 0210 	add.w	r2, r5, #16
 8006406:	469e      	mov	lr, r3
 8006408:	e005      	b.n	8006416 <__multiply+0x7e>
 800640a:	0c2d      	lsrs	r5, r5, #16
 800640c:	d12b      	bne.n	8006466 <__multiply+0xce>
 800640e:	4592      	cmp	sl, r2
 8006410:	f109 0904 	add.w	r9, r9, #4
 8006414:	d04e      	beq.n	80064b4 <__multiply+0x11c>
 8006416:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800641a:	fa1f fb85 	uxth.w	fp, r5
 800641e:	f1bb 0f00 	cmp.w	fp, #0
 8006422:	d0f2      	beq.n	800640a <__multiply+0x72>
 8006424:	4677      	mov	r7, lr
 8006426:	464e      	mov	r6, r9
 8006428:	2000      	movs	r0, #0
 800642a:	e000      	b.n	800642e <__multiply+0x96>
 800642c:	4626      	mov	r6, r4
 800642e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006432:	6834      	ldr	r4, [r6, #0]
 8006434:	b28b      	uxth	r3, r1
 8006436:	b2a5      	uxth	r5, r4
 8006438:	0c09      	lsrs	r1, r1, #16
 800643a:	0c24      	lsrs	r4, r4, #16
 800643c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006440:	4403      	add	r3, r0
 8006442:	fb0b 4001 	mla	r0, fp, r1, r4
 8006446:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800644a:	4634      	mov	r4, r6
 800644c:	b29b      	uxth	r3, r3
 800644e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006452:	45bc      	cmp	ip, r7
 8006454:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006458:	f844 3b04 	str.w	r3, [r4], #4
 800645c:	d8e6      	bhi.n	800642c <__multiply+0x94>
 800645e:	6070      	str	r0, [r6, #4]
 8006460:	6815      	ldr	r5, [r2, #0]
 8006462:	0c2d      	lsrs	r5, r5, #16
 8006464:	d0d3      	beq.n	800640e <__multiply+0x76>
 8006466:	f8d9 3000 	ldr.w	r3, [r9]
 800646a:	4676      	mov	r6, lr
 800646c:	4618      	mov	r0, r3
 800646e:	46cb      	mov	fp, r9
 8006470:	2100      	movs	r1, #0
 8006472:	e000      	b.n	8006476 <__multiply+0xde>
 8006474:	46a3      	mov	fp, r4
 8006476:	8834      	ldrh	r4, [r6, #0]
 8006478:	0c00      	lsrs	r0, r0, #16
 800647a:	fb05 0004 	mla	r0, r5, r4, r0
 800647e:	4401      	add	r1, r0
 8006480:	b29b      	uxth	r3, r3
 8006482:	465c      	mov	r4, fp
 8006484:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006488:	f844 3b04 	str.w	r3, [r4], #4
 800648c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006490:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006494:	0c1b      	lsrs	r3, r3, #16
 8006496:	b287      	uxth	r7, r0
 8006498:	fb05 7303 	mla	r3, r5, r3, r7
 800649c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80064a0:	45b4      	cmp	ip, r6
 80064a2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80064a6:	d8e5      	bhi.n	8006474 <__multiply+0xdc>
 80064a8:	4592      	cmp	sl, r2
 80064aa:	f8cb 3004 	str.w	r3, [fp, #4]
 80064ae:	f109 0904 	add.w	r9, r9, #4
 80064b2:	d1b0      	bne.n	8006416 <__multiply+0x7e>
 80064b4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80064b8:	f1b8 0f00 	cmp.w	r8, #0
 80064bc:	dd0b      	ble.n	80064d6 <__multiply+0x13e>
 80064be:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80064c2:	f1ae 0e04 	sub.w	lr, lr, #4
 80064c6:	b11b      	cbz	r3, 80064d0 <__multiply+0x138>
 80064c8:	e005      	b.n	80064d6 <__multiply+0x13e>
 80064ca:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80064ce:	b913      	cbnz	r3, 80064d6 <__multiply+0x13e>
 80064d0:	f1b8 0801 	subs.w	r8, r8, #1
 80064d4:	d1f9      	bne.n	80064ca <__multiply+0x132>
 80064d6:	9800      	ldr	r0, [sp, #0]
 80064d8:	f8c0 8010 	str.w	r8, [r0, #16]
 80064dc:	b003      	add	sp, #12
 80064de:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80064e2:	bf00      	nop

080064e4 <__pow5mult>:
 80064e4:	f012 0303 	ands.w	r3, r2, #3
 80064e8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80064ec:	4614      	mov	r4, r2
 80064ee:	4607      	mov	r7, r0
 80064f0:	d12e      	bne.n	8006550 <__pow5mult+0x6c>
 80064f2:	460d      	mov	r5, r1
 80064f4:	10a4      	asrs	r4, r4, #2
 80064f6:	d01c      	beq.n	8006532 <__pow5mult+0x4e>
 80064f8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80064fa:	b396      	cbz	r6, 8006562 <__pow5mult+0x7e>
 80064fc:	07e3      	lsls	r3, r4, #31
 80064fe:	f04f 0800 	mov.w	r8, #0
 8006502:	d406      	bmi.n	8006512 <__pow5mult+0x2e>
 8006504:	1064      	asrs	r4, r4, #1
 8006506:	d014      	beq.n	8006532 <__pow5mult+0x4e>
 8006508:	6830      	ldr	r0, [r6, #0]
 800650a:	b1a8      	cbz	r0, 8006538 <__pow5mult+0x54>
 800650c:	4606      	mov	r6, r0
 800650e:	07e3      	lsls	r3, r4, #31
 8006510:	d5f8      	bpl.n	8006504 <__pow5mult+0x20>
 8006512:	4632      	mov	r2, r6
 8006514:	4629      	mov	r1, r5
 8006516:	4638      	mov	r0, r7
 8006518:	f7ff ff3e 	bl	8006398 <__multiply>
 800651c:	b1b5      	cbz	r5, 800654c <__pow5mult+0x68>
 800651e:	686a      	ldr	r2, [r5, #4]
 8006520:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006522:	1064      	asrs	r4, r4, #1
 8006524:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006528:	6029      	str	r1, [r5, #0]
 800652a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800652e:	4605      	mov	r5, r0
 8006530:	d1ea      	bne.n	8006508 <__pow5mult+0x24>
 8006532:	4628      	mov	r0, r5
 8006534:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006538:	4632      	mov	r2, r6
 800653a:	4631      	mov	r1, r6
 800653c:	4638      	mov	r0, r7
 800653e:	f7ff ff2b 	bl	8006398 <__multiply>
 8006542:	6030      	str	r0, [r6, #0]
 8006544:	f8c0 8000 	str.w	r8, [r0]
 8006548:	4606      	mov	r6, r0
 800654a:	e7e0      	b.n	800650e <__pow5mult+0x2a>
 800654c:	4605      	mov	r5, r0
 800654e:	e7d9      	b.n	8006504 <__pow5mult+0x20>
 8006550:	3b01      	subs	r3, #1
 8006552:	4a0b      	ldr	r2, [pc, #44]	; (8006580 <__pow5mult+0x9c>)
 8006554:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006558:	2300      	movs	r3, #0
 800655a:	f7ff fe83 	bl	8006264 <__multadd>
 800655e:	4605      	mov	r5, r0
 8006560:	e7c8      	b.n	80064f4 <__pow5mult+0x10>
 8006562:	2101      	movs	r1, #1
 8006564:	4638      	mov	r0, r7
 8006566:	f7ff fe4d 	bl	8006204 <_Balloc>
 800656a:	f240 2371 	movw	r3, #625	; 0x271
 800656e:	6143      	str	r3, [r0, #20]
 8006570:	2201      	movs	r2, #1
 8006572:	2300      	movs	r3, #0
 8006574:	6102      	str	r2, [r0, #16]
 8006576:	4606      	mov	r6, r0
 8006578:	64b8      	str	r0, [r7, #72]	; 0x48
 800657a:	6003      	str	r3, [r0, #0]
 800657c:	e7be      	b.n	80064fc <__pow5mult+0x18>
 800657e:	bf00      	nop
 8006580:	08007580 	.word	0x08007580

08006584 <__lshift>:
 8006584:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006588:	4691      	mov	r9, r2
 800658a:	690a      	ldr	r2, [r1, #16]
 800658c:	460e      	mov	r6, r1
 800658e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006592:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006596:	eb04 0802 	add.w	r8, r4, r2
 800659a:	f108 0501 	add.w	r5, r8, #1
 800659e:	429d      	cmp	r5, r3
 80065a0:	4607      	mov	r7, r0
 80065a2:	dd04      	ble.n	80065ae <__lshift+0x2a>
 80065a4:	005b      	lsls	r3, r3, #1
 80065a6:	429d      	cmp	r5, r3
 80065a8:	f101 0101 	add.w	r1, r1, #1
 80065ac:	dcfa      	bgt.n	80065a4 <__lshift+0x20>
 80065ae:	4638      	mov	r0, r7
 80065b0:	f7ff fe28 	bl	8006204 <_Balloc>
 80065b4:	2c00      	cmp	r4, #0
 80065b6:	f100 0314 	add.w	r3, r0, #20
 80065ba:	dd37      	ble.n	800662c <__lshift+0xa8>
 80065bc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80065c0:	2200      	movs	r2, #0
 80065c2:	f843 2b04 	str.w	r2, [r3], #4
 80065c6:	428b      	cmp	r3, r1
 80065c8:	d1fb      	bne.n	80065c2 <__lshift+0x3e>
 80065ca:	6934      	ldr	r4, [r6, #16]
 80065cc:	f106 0314 	add.w	r3, r6, #20
 80065d0:	f019 091f 	ands.w	r9, r9, #31
 80065d4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80065d8:	d020      	beq.n	800661c <__lshift+0x98>
 80065da:	f1c9 0e20 	rsb	lr, r9, #32
 80065de:	2200      	movs	r2, #0
 80065e0:	e000      	b.n	80065e4 <__lshift+0x60>
 80065e2:	4651      	mov	r1, sl
 80065e4:	681c      	ldr	r4, [r3, #0]
 80065e6:	468a      	mov	sl, r1
 80065e8:	fa04 f409 	lsl.w	r4, r4, r9
 80065ec:	4314      	orrs	r4, r2
 80065ee:	f84a 4b04 	str.w	r4, [sl], #4
 80065f2:	f853 2b04 	ldr.w	r2, [r3], #4
 80065f6:	4563      	cmp	r3, ip
 80065f8:	fa22 f20e 	lsr.w	r2, r2, lr
 80065fc:	d3f1      	bcc.n	80065e2 <__lshift+0x5e>
 80065fe:	604a      	str	r2, [r1, #4]
 8006600:	b10a      	cbz	r2, 8006606 <__lshift+0x82>
 8006602:	f108 0502 	add.w	r5, r8, #2
 8006606:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006608:	6872      	ldr	r2, [r6, #4]
 800660a:	3d01      	subs	r5, #1
 800660c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006610:	6105      	str	r5, [r0, #16]
 8006612:	6031      	str	r1, [r6, #0]
 8006614:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006618:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800661c:	3904      	subs	r1, #4
 800661e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006622:	f841 2f04 	str.w	r2, [r1, #4]!
 8006626:	459c      	cmp	ip, r3
 8006628:	d8f9      	bhi.n	800661e <__lshift+0x9a>
 800662a:	e7ec      	b.n	8006606 <__lshift+0x82>
 800662c:	4619      	mov	r1, r3
 800662e:	e7cc      	b.n	80065ca <__lshift+0x46>

08006630 <__mcmp>:
 8006630:	b430      	push	{r4, r5}
 8006632:	690b      	ldr	r3, [r1, #16]
 8006634:	4605      	mov	r5, r0
 8006636:	6900      	ldr	r0, [r0, #16]
 8006638:	1ac0      	subs	r0, r0, r3
 800663a:	d10f      	bne.n	800665c <__mcmp+0x2c>
 800663c:	009b      	lsls	r3, r3, #2
 800663e:	3514      	adds	r5, #20
 8006640:	3114      	adds	r1, #20
 8006642:	4419      	add	r1, r3
 8006644:	442b      	add	r3, r5
 8006646:	e001      	b.n	800664c <__mcmp+0x1c>
 8006648:	429d      	cmp	r5, r3
 800664a:	d207      	bcs.n	800665c <__mcmp+0x2c>
 800664c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006650:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006654:	4294      	cmp	r4, r2
 8006656:	d0f7      	beq.n	8006648 <__mcmp+0x18>
 8006658:	d302      	bcc.n	8006660 <__mcmp+0x30>
 800665a:	2001      	movs	r0, #1
 800665c:	bc30      	pop	{r4, r5}
 800665e:	4770      	bx	lr
 8006660:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006664:	e7fa      	b.n	800665c <__mcmp+0x2c>
 8006666:	bf00      	nop

08006668 <__mdiff>:
 8006668:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800666c:	6913      	ldr	r3, [r2, #16]
 800666e:	690d      	ldr	r5, [r1, #16]
 8006670:	1aed      	subs	r5, r5, r3
 8006672:	2d00      	cmp	r5, #0
 8006674:	460e      	mov	r6, r1
 8006676:	4690      	mov	r8, r2
 8006678:	f101 0414 	add.w	r4, r1, #20
 800667c:	f102 0714 	add.w	r7, r2, #20
 8006680:	d114      	bne.n	80066ac <__mdiff+0x44>
 8006682:	009b      	lsls	r3, r3, #2
 8006684:	18e2      	adds	r2, r4, r3
 8006686:	443b      	add	r3, r7
 8006688:	e001      	b.n	800668e <__mdiff+0x26>
 800668a:	42a2      	cmp	r2, r4
 800668c:	d959      	bls.n	8006742 <__mdiff+0xda>
 800668e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006692:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006696:	458c      	cmp	ip, r1
 8006698:	d0f7      	beq.n	800668a <__mdiff+0x22>
 800669a:	d209      	bcs.n	80066b0 <__mdiff+0x48>
 800669c:	4622      	mov	r2, r4
 800669e:	4633      	mov	r3, r6
 80066a0:	463c      	mov	r4, r7
 80066a2:	4646      	mov	r6, r8
 80066a4:	4617      	mov	r7, r2
 80066a6:	4698      	mov	r8, r3
 80066a8:	2501      	movs	r5, #1
 80066aa:	e001      	b.n	80066b0 <__mdiff+0x48>
 80066ac:	dbf6      	blt.n	800669c <__mdiff+0x34>
 80066ae:	2500      	movs	r5, #0
 80066b0:	6871      	ldr	r1, [r6, #4]
 80066b2:	f7ff fda7 	bl	8006204 <_Balloc>
 80066b6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80066ba:	6936      	ldr	r6, [r6, #16]
 80066bc:	60c5      	str	r5, [r0, #12]
 80066be:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80066c2:	46bc      	mov	ip, r7
 80066c4:	f100 0514 	add.w	r5, r0, #20
 80066c8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80066cc:	2300      	movs	r3, #0
 80066ce:	f85c 1b04 	ldr.w	r1, [ip], #4
 80066d2:	f854 8b04 	ldr.w	r8, [r4], #4
 80066d6:	b28a      	uxth	r2, r1
 80066d8:	fa13 f388 	uxtah	r3, r3, r8
 80066dc:	0c09      	lsrs	r1, r1, #16
 80066de:	1a9a      	subs	r2, r3, r2
 80066e0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80066e4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80066e8:	b292      	uxth	r2, r2
 80066ea:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80066ee:	45e6      	cmp	lr, ip
 80066f0:	f845 2b04 	str.w	r2, [r5], #4
 80066f4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80066f8:	d8e9      	bhi.n	80066ce <__mdiff+0x66>
 80066fa:	42a7      	cmp	r7, r4
 80066fc:	d917      	bls.n	800672e <__mdiff+0xc6>
 80066fe:	46ae      	mov	lr, r5
 8006700:	46a4      	mov	ip, r4
 8006702:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006706:	fa13 f382 	uxtah	r3, r3, r2
 800670a:	1419      	asrs	r1, r3, #16
 800670c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006710:	b29b      	uxth	r3, r3
 8006712:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006716:	4567      	cmp	r7, ip
 8006718:	f84e 2b04 	str.w	r2, [lr], #4
 800671c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006720:	d8ef      	bhi.n	8006702 <__mdiff+0x9a>
 8006722:	43e4      	mvns	r4, r4
 8006724:	4427      	add	r7, r4
 8006726:	f027 0703 	bic.w	r7, r7, #3
 800672a:	3704      	adds	r7, #4
 800672c:	443d      	add	r5, r7
 800672e:	3d04      	subs	r5, #4
 8006730:	b922      	cbnz	r2, 800673c <__mdiff+0xd4>
 8006732:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006736:	3e01      	subs	r6, #1
 8006738:	2b00      	cmp	r3, #0
 800673a:	d0fa      	beq.n	8006732 <__mdiff+0xca>
 800673c:	6106      	str	r6, [r0, #16]
 800673e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006742:	2100      	movs	r1, #0
 8006744:	f7ff fd5e 	bl	8006204 <_Balloc>
 8006748:	2201      	movs	r2, #1
 800674a:	2300      	movs	r3, #0
 800674c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006750:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006754 <__d2b>:
 8006754:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006758:	460f      	mov	r7, r1
 800675a:	b083      	sub	sp, #12
 800675c:	2101      	movs	r1, #1
 800675e:	ec55 4b10 	vmov	r4, r5, d0
 8006762:	4616      	mov	r6, r2
 8006764:	f7ff fd4e 	bl	8006204 <_Balloc>
 8006768:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800676c:	4681      	mov	r9, r0
 800676e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006772:	f1b8 0f00 	cmp.w	r8, #0
 8006776:	d001      	beq.n	800677c <__d2b+0x28>
 8006778:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800677c:	2c00      	cmp	r4, #0
 800677e:	9301      	str	r3, [sp, #4]
 8006780:	d024      	beq.n	80067cc <__d2b+0x78>
 8006782:	a802      	add	r0, sp, #8
 8006784:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006788:	f7ff fdcc 	bl	8006324 <__lo0bits>
 800678c:	2800      	cmp	r0, #0
 800678e:	d136      	bne.n	80067fe <__d2b+0xaa>
 8006790:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006794:	f8c9 2014 	str.w	r2, [r9, #20]
 8006798:	2b00      	cmp	r3, #0
 800679a:	bf0c      	ite	eq
 800679c:	2101      	moveq	r1, #1
 800679e:	2102      	movne	r1, #2
 80067a0:	f8c9 3018 	str.w	r3, [r9, #24]
 80067a4:	f8c9 1010 	str.w	r1, [r9, #16]
 80067a8:	f1b8 0f00 	cmp.w	r8, #0
 80067ac:	d11b      	bne.n	80067e6 <__d2b+0x92>
 80067ae:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80067b2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80067b6:	6038      	str	r0, [r7, #0]
 80067b8:	6918      	ldr	r0, [r3, #16]
 80067ba:	f7ff fd93 	bl	80062e4 <__hi0bits>
 80067be:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80067c2:	6030      	str	r0, [r6, #0]
 80067c4:	4648      	mov	r0, r9
 80067c6:	b003      	add	sp, #12
 80067c8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80067cc:	a801      	add	r0, sp, #4
 80067ce:	f7ff fda9 	bl	8006324 <__lo0bits>
 80067d2:	9b01      	ldr	r3, [sp, #4]
 80067d4:	f8c9 3014 	str.w	r3, [r9, #20]
 80067d8:	2101      	movs	r1, #1
 80067da:	3020      	adds	r0, #32
 80067dc:	f8c9 1010 	str.w	r1, [r9, #16]
 80067e0:	f1b8 0f00 	cmp.w	r8, #0
 80067e4:	d0e3      	beq.n	80067ae <__d2b+0x5a>
 80067e6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80067ea:	eb08 0300 	add.w	r3, r8, r0
 80067ee:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80067f2:	603b      	str	r3, [r7, #0]
 80067f4:	6030      	str	r0, [r6, #0]
 80067f6:	4648      	mov	r0, r9
 80067f8:	b003      	add	sp, #12
 80067fa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80067fe:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006802:	f1c0 0220 	rsb	r2, r0, #32
 8006806:	fa03 f202 	lsl.w	r2, r3, r2
 800680a:	430a      	orrs	r2, r1
 800680c:	40c3      	lsrs	r3, r0
 800680e:	9301      	str	r3, [sp, #4]
 8006810:	f8c9 2014 	str.w	r2, [r9, #20]
 8006814:	e7c0      	b.n	8006798 <__d2b+0x44>
 8006816:	bf00      	nop

08006818 <_realloc_r>:
 8006818:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800681c:	4692      	mov	sl, r2
 800681e:	b083      	sub	sp, #12
 8006820:	2900      	cmp	r1, #0
 8006822:	f000 80a1 	beq.w	8006968 <_realloc_r+0x150>
 8006826:	460d      	mov	r5, r1
 8006828:	4680      	mov	r8, r0
 800682a:	f10a 040b 	add.w	r4, sl, #11
 800682e:	f7ff fcdd 	bl	80061ec <__malloc_lock>
 8006832:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006836:	2c16      	cmp	r4, #22
 8006838:	f022 0603 	bic.w	r6, r2, #3
 800683c:	f1a5 0708 	sub.w	r7, r5, #8
 8006840:	d83e      	bhi.n	80068c0 <_realloc_r+0xa8>
 8006842:	2410      	movs	r4, #16
 8006844:	4621      	mov	r1, r4
 8006846:	45a2      	cmp	sl, r4
 8006848:	d83f      	bhi.n	80068ca <_realloc_r+0xb2>
 800684a:	428e      	cmp	r6, r1
 800684c:	eb07 0906 	add.w	r9, r7, r6
 8006850:	da74      	bge.n	800693c <_realloc_r+0x124>
 8006852:	4bc7      	ldr	r3, [pc, #796]	; (8006b70 <_realloc_r+0x358>)
 8006854:	6898      	ldr	r0, [r3, #8]
 8006856:	4548      	cmp	r0, r9
 8006858:	f000 80aa 	beq.w	80069b0 <_realloc_r+0x198>
 800685c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006860:	f020 0301 	bic.w	r3, r0, #1
 8006864:	444b      	add	r3, r9
 8006866:	685b      	ldr	r3, [r3, #4]
 8006868:	07db      	lsls	r3, r3, #31
 800686a:	f140 8083 	bpl.w	8006974 <_realloc_r+0x15c>
 800686e:	07d2      	lsls	r2, r2, #31
 8006870:	d534      	bpl.n	80068dc <_realloc_r+0xc4>
 8006872:	4651      	mov	r1, sl
 8006874:	4640      	mov	r0, r8
 8006876:	f7ff f9b1 	bl	8005bdc <_malloc_r>
 800687a:	4682      	mov	sl, r0
 800687c:	b1e0      	cbz	r0, 80068b8 <_realloc_r+0xa0>
 800687e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006882:	f023 0301 	bic.w	r3, r3, #1
 8006886:	443b      	add	r3, r7
 8006888:	f1a0 0208 	sub.w	r2, r0, #8
 800688c:	4293      	cmp	r3, r2
 800688e:	f000 80f9 	beq.w	8006a84 <_realloc_r+0x26c>
 8006892:	1f32      	subs	r2, r6, #4
 8006894:	2a24      	cmp	r2, #36	; 0x24
 8006896:	f200 8107 	bhi.w	8006aa8 <_realloc_r+0x290>
 800689a:	2a13      	cmp	r2, #19
 800689c:	6829      	ldr	r1, [r5, #0]
 800689e:	f200 80e6 	bhi.w	8006a6e <_realloc_r+0x256>
 80068a2:	4603      	mov	r3, r0
 80068a4:	462a      	mov	r2, r5
 80068a6:	6019      	str	r1, [r3, #0]
 80068a8:	6851      	ldr	r1, [r2, #4]
 80068aa:	6059      	str	r1, [r3, #4]
 80068ac:	6892      	ldr	r2, [r2, #8]
 80068ae:	609a      	str	r2, [r3, #8]
 80068b0:	4629      	mov	r1, r5
 80068b2:	4640      	mov	r0, r8
 80068b4:	f7fe fe68 	bl	8005588 <_free_r>
 80068b8:	4640      	mov	r0, r8
 80068ba:	f7ff fc9d 	bl	80061f8 <__malloc_unlock>
 80068be:	e04f      	b.n	8006960 <_realloc_r+0x148>
 80068c0:	f024 0407 	bic.w	r4, r4, #7
 80068c4:	2c00      	cmp	r4, #0
 80068c6:	4621      	mov	r1, r4
 80068c8:	dabd      	bge.n	8006846 <_realloc_r+0x2e>
 80068ca:	f04f 0a00 	mov.w	sl, #0
 80068ce:	230c      	movs	r3, #12
 80068d0:	4650      	mov	r0, sl
 80068d2:	f8c8 3000 	str.w	r3, [r8]
 80068d6:	b003      	add	sp, #12
 80068d8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80068dc:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80068e0:	eba7 0b03 	sub.w	fp, r7, r3
 80068e4:	f8db 2004 	ldr.w	r2, [fp, #4]
 80068e8:	f022 0203 	bic.w	r2, r2, #3
 80068ec:	18b3      	adds	r3, r6, r2
 80068ee:	428b      	cmp	r3, r1
 80068f0:	dbbf      	blt.n	8006872 <_realloc_r+0x5a>
 80068f2:	46da      	mov	sl, fp
 80068f4:	f8db 100c 	ldr.w	r1, [fp, #12]
 80068f8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80068fc:	1f32      	subs	r2, r6, #4
 80068fe:	2a24      	cmp	r2, #36	; 0x24
 8006900:	60c1      	str	r1, [r0, #12]
 8006902:	eb0b 0903 	add.w	r9, fp, r3
 8006906:	6088      	str	r0, [r1, #8]
 8006908:	f200 80c6 	bhi.w	8006a98 <_realloc_r+0x280>
 800690c:	2a13      	cmp	r2, #19
 800690e:	6829      	ldr	r1, [r5, #0]
 8006910:	f240 80c0 	bls.w	8006a94 <_realloc_r+0x27c>
 8006914:	f8cb 1008 	str.w	r1, [fp, #8]
 8006918:	6869      	ldr	r1, [r5, #4]
 800691a:	f8cb 100c 	str.w	r1, [fp, #12]
 800691e:	2a1b      	cmp	r2, #27
 8006920:	68a9      	ldr	r1, [r5, #8]
 8006922:	f200 80d8 	bhi.w	8006ad6 <_realloc_r+0x2be>
 8006926:	f10b 0210 	add.w	r2, fp, #16
 800692a:	3508      	adds	r5, #8
 800692c:	6011      	str	r1, [r2, #0]
 800692e:	6869      	ldr	r1, [r5, #4]
 8006930:	6051      	str	r1, [r2, #4]
 8006932:	68a9      	ldr	r1, [r5, #8]
 8006934:	6091      	str	r1, [r2, #8]
 8006936:	461e      	mov	r6, r3
 8006938:	465f      	mov	r7, fp
 800693a:	4655      	mov	r5, sl
 800693c:	687b      	ldr	r3, [r7, #4]
 800693e:	1b32      	subs	r2, r6, r4
 8006940:	2a0f      	cmp	r2, #15
 8006942:	f003 0301 	and.w	r3, r3, #1
 8006946:	d822      	bhi.n	800698e <_realloc_r+0x176>
 8006948:	4333      	orrs	r3, r6
 800694a:	607b      	str	r3, [r7, #4]
 800694c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006950:	f043 0301 	orr.w	r3, r3, #1
 8006954:	f8c9 3004 	str.w	r3, [r9, #4]
 8006958:	4640      	mov	r0, r8
 800695a:	f7ff fc4d 	bl	80061f8 <__malloc_unlock>
 800695e:	46aa      	mov	sl, r5
 8006960:	4650      	mov	r0, sl
 8006962:	b003      	add	sp, #12
 8006964:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006968:	4611      	mov	r1, r2
 800696a:	b003      	add	sp, #12
 800696c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006970:	f7ff b934 	b.w	8005bdc <_malloc_r>
 8006974:	f020 0003 	bic.w	r0, r0, #3
 8006978:	1833      	adds	r3, r6, r0
 800697a:	428b      	cmp	r3, r1
 800697c:	db61      	blt.n	8006a42 <_realloc_r+0x22a>
 800697e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006982:	461e      	mov	r6, r3
 8006984:	60ca      	str	r2, [r1, #12]
 8006986:	eb07 0903 	add.w	r9, r7, r3
 800698a:	6091      	str	r1, [r2, #8]
 800698c:	e7d6      	b.n	800693c <_realloc_r+0x124>
 800698e:	1939      	adds	r1, r7, r4
 8006990:	4323      	orrs	r3, r4
 8006992:	f042 0201 	orr.w	r2, r2, #1
 8006996:	607b      	str	r3, [r7, #4]
 8006998:	604a      	str	r2, [r1, #4]
 800699a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800699e:	f043 0301 	orr.w	r3, r3, #1
 80069a2:	3108      	adds	r1, #8
 80069a4:	f8c9 3004 	str.w	r3, [r9, #4]
 80069a8:	4640      	mov	r0, r8
 80069aa:	f7fe fded 	bl	8005588 <_free_r>
 80069ae:	e7d3      	b.n	8006958 <_realloc_r+0x140>
 80069b0:	6840      	ldr	r0, [r0, #4]
 80069b2:	f020 0903 	bic.w	r9, r0, #3
 80069b6:	44b1      	add	r9, r6
 80069b8:	f104 0010 	add.w	r0, r4, #16
 80069bc:	4581      	cmp	r9, r0
 80069be:	da77      	bge.n	8006ab0 <_realloc_r+0x298>
 80069c0:	07d2      	lsls	r2, r2, #31
 80069c2:	f53f af56 	bmi.w	8006872 <_realloc_r+0x5a>
 80069c6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80069ca:	eba7 0b02 	sub.w	fp, r7, r2
 80069ce:	f8db 2004 	ldr.w	r2, [fp, #4]
 80069d2:	f022 0203 	bic.w	r2, r2, #3
 80069d6:	4491      	add	r9, r2
 80069d8:	4548      	cmp	r0, r9
 80069da:	dc87      	bgt.n	80068ec <_realloc_r+0xd4>
 80069dc:	46da      	mov	sl, fp
 80069de:	f8db 100c 	ldr.w	r1, [fp, #12]
 80069e2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80069e6:	1f32      	subs	r2, r6, #4
 80069e8:	2a24      	cmp	r2, #36	; 0x24
 80069ea:	60c1      	str	r1, [r0, #12]
 80069ec:	6088      	str	r0, [r1, #8]
 80069ee:	f200 80a1 	bhi.w	8006b34 <_realloc_r+0x31c>
 80069f2:	2a13      	cmp	r2, #19
 80069f4:	6829      	ldr	r1, [r5, #0]
 80069f6:	f240 809b 	bls.w	8006b30 <_realloc_r+0x318>
 80069fa:	f8cb 1008 	str.w	r1, [fp, #8]
 80069fe:	6869      	ldr	r1, [r5, #4]
 8006a00:	f8cb 100c 	str.w	r1, [fp, #12]
 8006a04:	2a1b      	cmp	r2, #27
 8006a06:	68a9      	ldr	r1, [r5, #8]
 8006a08:	f200 809b 	bhi.w	8006b42 <_realloc_r+0x32a>
 8006a0c:	f10b 0210 	add.w	r2, fp, #16
 8006a10:	3508      	adds	r5, #8
 8006a12:	6011      	str	r1, [r2, #0]
 8006a14:	6869      	ldr	r1, [r5, #4]
 8006a16:	6051      	str	r1, [r2, #4]
 8006a18:	68a9      	ldr	r1, [r5, #8]
 8006a1a:	6091      	str	r1, [r2, #8]
 8006a1c:	eb0b 0104 	add.w	r1, fp, r4
 8006a20:	eba9 0204 	sub.w	r2, r9, r4
 8006a24:	f042 0201 	orr.w	r2, r2, #1
 8006a28:	6099      	str	r1, [r3, #8]
 8006a2a:	604a      	str	r2, [r1, #4]
 8006a2c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006a30:	f003 0301 	and.w	r3, r3, #1
 8006a34:	431c      	orrs	r4, r3
 8006a36:	4640      	mov	r0, r8
 8006a38:	f8cb 4004 	str.w	r4, [fp, #4]
 8006a3c:	f7ff fbdc 	bl	80061f8 <__malloc_unlock>
 8006a40:	e78e      	b.n	8006960 <_realloc_r+0x148>
 8006a42:	07d3      	lsls	r3, r2, #31
 8006a44:	f53f af15 	bmi.w	8006872 <_realloc_r+0x5a>
 8006a48:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006a4c:	eba7 0b03 	sub.w	fp, r7, r3
 8006a50:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a54:	f022 0203 	bic.w	r2, r2, #3
 8006a58:	4410      	add	r0, r2
 8006a5a:	1983      	adds	r3, r0, r6
 8006a5c:	428b      	cmp	r3, r1
 8006a5e:	f6ff af45 	blt.w	80068ec <_realloc_r+0xd4>
 8006a62:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006a66:	46da      	mov	sl, fp
 8006a68:	60ca      	str	r2, [r1, #12]
 8006a6a:	6091      	str	r1, [r2, #8]
 8006a6c:	e742      	b.n	80068f4 <_realloc_r+0xdc>
 8006a6e:	6001      	str	r1, [r0, #0]
 8006a70:	686b      	ldr	r3, [r5, #4]
 8006a72:	6043      	str	r3, [r0, #4]
 8006a74:	2a1b      	cmp	r2, #27
 8006a76:	d83a      	bhi.n	8006aee <_realloc_r+0x2d6>
 8006a78:	f105 0208 	add.w	r2, r5, #8
 8006a7c:	f100 0308 	add.w	r3, r0, #8
 8006a80:	68a9      	ldr	r1, [r5, #8]
 8006a82:	e710      	b.n	80068a6 <_realloc_r+0x8e>
 8006a84:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006a88:	f023 0303 	bic.w	r3, r3, #3
 8006a8c:	441e      	add	r6, r3
 8006a8e:	eb07 0906 	add.w	r9, r7, r6
 8006a92:	e753      	b.n	800693c <_realloc_r+0x124>
 8006a94:	4652      	mov	r2, sl
 8006a96:	e749      	b.n	800692c <_realloc_r+0x114>
 8006a98:	4629      	mov	r1, r5
 8006a9a:	4650      	mov	r0, sl
 8006a9c:	461e      	mov	r6, r3
 8006a9e:	465f      	mov	r7, fp
 8006aa0:	f7ff fb40 	bl	8006124 <memmove>
 8006aa4:	4655      	mov	r5, sl
 8006aa6:	e749      	b.n	800693c <_realloc_r+0x124>
 8006aa8:	4629      	mov	r1, r5
 8006aaa:	f7ff fb3b 	bl	8006124 <memmove>
 8006aae:	e6ff      	b.n	80068b0 <_realloc_r+0x98>
 8006ab0:	4427      	add	r7, r4
 8006ab2:	eba9 0904 	sub.w	r9, r9, r4
 8006ab6:	f049 0201 	orr.w	r2, r9, #1
 8006aba:	609f      	str	r7, [r3, #8]
 8006abc:	607a      	str	r2, [r7, #4]
 8006abe:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006ac2:	f003 0301 	and.w	r3, r3, #1
 8006ac6:	431c      	orrs	r4, r3
 8006ac8:	4640      	mov	r0, r8
 8006aca:	f845 4c04 	str.w	r4, [r5, #-4]
 8006ace:	f7ff fb93 	bl	80061f8 <__malloc_unlock>
 8006ad2:	46aa      	mov	sl, r5
 8006ad4:	e744      	b.n	8006960 <_realloc_r+0x148>
 8006ad6:	f8cb 1010 	str.w	r1, [fp, #16]
 8006ada:	68e9      	ldr	r1, [r5, #12]
 8006adc:	f8cb 1014 	str.w	r1, [fp, #20]
 8006ae0:	2a24      	cmp	r2, #36	; 0x24
 8006ae2:	d010      	beq.n	8006b06 <_realloc_r+0x2ee>
 8006ae4:	6929      	ldr	r1, [r5, #16]
 8006ae6:	f10b 0218 	add.w	r2, fp, #24
 8006aea:	3510      	adds	r5, #16
 8006aec:	e71e      	b.n	800692c <_realloc_r+0x114>
 8006aee:	68ab      	ldr	r3, [r5, #8]
 8006af0:	6083      	str	r3, [r0, #8]
 8006af2:	68eb      	ldr	r3, [r5, #12]
 8006af4:	60c3      	str	r3, [r0, #12]
 8006af6:	2a24      	cmp	r2, #36	; 0x24
 8006af8:	d010      	beq.n	8006b1c <_realloc_r+0x304>
 8006afa:	f105 0210 	add.w	r2, r5, #16
 8006afe:	f100 0310 	add.w	r3, r0, #16
 8006b02:	6929      	ldr	r1, [r5, #16]
 8006b04:	e6cf      	b.n	80068a6 <_realloc_r+0x8e>
 8006b06:	692a      	ldr	r2, [r5, #16]
 8006b08:	f8cb 2018 	str.w	r2, [fp, #24]
 8006b0c:	696a      	ldr	r2, [r5, #20]
 8006b0e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006b12:	69a9      	ldr	r1, [r5, #24]
 8006b14:	f10b 0220 	add.w	r2, fp, #32
 8006b18:	3518      	adds	r5, #24
 8006b1a:	e707      	b.n	800692c <_realloc_r+0x114>
 8006b1c:	692b      	ldr	r3, [r5, #16]
 8006b1e:	6103      	str	r3, [r0, #16]
 8006b20:	696b      	ldr	r3, [r5, #20]
 8006b22:	6143      	str	r3, [r0, #20]
 8006b24:	69a9      	ldr	r1, [r5, #24]
 8006b26:	f105 0218 	add.w	r2, r5, #24
 8006b2a:	f100 0318 	add.w	r3, r0, #24
 8006b2e:	e6ba      	b.n	80068a6 <_realloc_r+0x8e>
 8006b30:	4652      	mov	r2, sl
 8006b32:	e76e      	b.n	8006a12 <_realloc_r+0x1fa>
 8006b34:	4629      	mov	r1, r5
 8006b36:	4650      	mov	r0, sl
 8006b38:	9301      	str	r3, [sp, #4]
 8006b3a:	f7ff faf3 	bl	8006124 <memmove>
 8006b3e:	9b01      	ldr	r3, [sp, #4]
 8006b40:	e76c      	b.n	8006a1c <_realloc_r+0x204>
 8006b42:	f8cb 1010 	str.w	r1, [fp, #16]
 8006b46:	68e9      	ldr	r1, [r5, #12]
 8006b48:	f8cb 1014 	str.w	r1, [fp, #20]
 8006b4c:	2a24      	cmp	r2, #36	; 0x24
 8006b4e:	d004      	beq.n	8006b5a <_realloc_r+0x342>
 8006b50:	6929      	ldr	r1, [r5, #16]
 8006b52:	f10b 0218 	add.w	r2, fp, #24
 8006b56:	3510      	adds	r5, #16
 8006b58:	e75b      	b.n	8006a12 <_realloc_r+0x1fa>
 8006b5a:	692a      	ldr	r2, [r5, #16]
 8006b5c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006b60:	696a      	ldr	r2, [r5, #20]
 8006b62:	f8cb 201c 	str.w	r2, [fp, #28]
 8006b66:	69a9      	ldr	r1, [r5, #24]
 8006b68:	f10b 0220 	add.w	r2, fp, #32
 8006b6c:	3518      	adds	r5, #24
 8006b6e:	e750      	b.n	8006a12 <_realloc_r+0x1fa>
 8006b70:	2000046c 	.word	0x2000046c

08006b74 <frexp>:
 8006b74:	ec53 2b10 	vmov	r2, r3, d0
 8006b78:	b570      	push	{r4, r5, r6, lr}
 8006b7a:	4e16      	ldr	r6, [pc, #88]	; (8006bd4 <frexp+0x60>)
 8006b7c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006b80:	2500      	movs	r5, #0
 8006b82:	42b1      	cmp	r1, r6
 8006b84:	4604      	mov	r4, r0
 8006b86:	6005      	str	r5, [r0, #0]
 8006b88:	dc21      	bgt.n	8006bce <frexp+0x5a>
 8006b8a:	ee10 6a10 	vmov	r6, s0
 8006b8e:	430e      	orrs	r6, r1
 8006b90:	d01d      	beq.n	8006bce <frexp+0x5a>
 8006b92:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006b96:	4618      	mov	r0, r3
 8006b98:	da0c      	bge.n	8006bb4 <frexp+0x40>
 8006b9a:	4619      	mov	r1, r3
 8006b9c:	2200      	movs	r2, #0
 8006b9e:	ee10 0a10 	vmov	r0, s0
 8006ba2:	4b0d      	ldr	r3, [pc, #52]	; (8006bd8 <frexp+0x64>)
 8006ba4:	f7f9 ffc8 	bl	8000b38 <__aeabi_dmul>
 8006ba8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006bac:	4602      	mov	r2, r0
 8006bae:	4608      	mov	r0, r1
 8006bb0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006bb4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006bb8:	1509      	asrs	r1, r1, #20
 8006bba:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006bbe:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006bc2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006bc6:	4429      	add	r1, r5
 8006bc8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006bcc:	6021      	str	r1, [r4, #0]
 8006bce:	ec43 2b10 	vmov	d0, r2, r3
 8006bd2:	bd70      	pop	{r4, r5, r6, pc}
 8006bd4:	7fefffff 	.word	0x7fefffff
 8006bd8:	43500000 	.word	0x43500000

08006bdc <_sbrk_r>:
 8006bdc:	b538      	push	{r3, r4, r5, lr}
 8006bde:	4c07      	ldr	r4, [pc, #28]	; (8006bfc <_sbrk_r+0x20>)
 8006be0:	2300      	movs	r3, #0
 8006be2:	4605      	mov	r5, r0
 8006be4:	4608      	mov	r0, r1
 8006be6:	6023      	str	r3, [r4, #0]
 8006be8:	f7fb fc33 	bl	8002452 <_sbrk>
 8006bec:	1c43      	adds	r3, r0, #1
 8006bee:	d000      	beq.n	8006bf2 <_sbrk_r+0x16>
 8006bf0:	bd38      	pop	{r3, r4, r5, pc}
 8006bf2:	6823      	ldr	r3, [r4, #0]
 8006bf4:	2b00      	cmp	r3, #0
 8006bf6:	d0fb      	beq.n	8006bf0 <_sbrk_r+0x14>
 8006bf8:	602b      	str	r3, [r5, #0]
 8006bfa:	bd38      	pop	{r3, r4, r5, pc}
 8006bfc:	20000be8 	.word	0x20000be8

08006c00 <__sread>:
 8006c00:	b510      	push	{r4, lr}
 8006c02:	460c      	mov	r4, r1
 8006c04:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c08:	f000 fabc 	bl	8007184 <_read_r>
 8006c0c:	2800      	cmp	r0, #0
 8006c0e:	db03      	blt.n	8006c18 <__sread+0x18>
 8006c10:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006c12:	4403      	add	r3, r0
 8006c14:	6523      	str	r3, [r4, #80]	; 0x50
 8006c16:	bd10      	pop	{r4, pc}
 8006c18:	89a3      	ldrh	r3, [r4, #12]
 8006c1a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006c1e:	81a3      	strh	r3, [r4, #12]
 8006c20:	bd10      	pop	{r4, pc}
 8006c22:	bf00      	nop

08006c24 <__swrite>:
 8006c24:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006c28:	4616      	mov	r6, r2
 8006c2a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006c2e:	461f      	mov	r7, r3
 8006c30:	05d3      	lsls	r3, r2, #23
 8006c32:	460c      	mov	r4, r1
 8006c34:	4605      	mov	r5, r0
 8006c36:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c3a:	d507      	bpl.n	8006c4c <__swrite+0x28>
 8006c3c:	2200      	movs	r2, #0
 8006c3e:	2302      	movs	r3, #2
 8006c40:	f000 fa74 	bl	800712c <_lseek_r>
 8006c44:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006c48:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006c4c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006c50:	81a2      	strh	r2, [r4, #12]
 8006c52:	463b      	mov	r3, r7
 8006c54:	4632      	mov	r2, r6
 8006c56:	4628      	mov	r0, r5
 8006c58:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006c5c:	f000 b88c 	b.w	8006d78 <_write_r>

08006c60 <__sseek>:
 8006c60:	b510      	push	{r4, lr}
 8006c62:	460c      	mov	r4, r1
 8006c64:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c68:	f000 fa60 	bl	800712c <_lseek_r>
 8006c6c:	89a3      	ldrh	r3, [r4, #12]
 8006c6e:	1c42      	adds	r2, r0, #1
 8006c70:	bf0e      	itee	eq
 8006c72:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006c76:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006c7a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006c7c:	81a3      	strh	r3, [r4, #12]
 8006c7e:	bd10      	pop	{r4, pc}

08006c80 <__sclose>:
 8006c80:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c84:	f000 b922 	b.w	8006ecc <_close_r>

08006c88 <strncpy>:
 8006c88:	ea40 0301 	orr.w	r3, r0, r1
 8006c8c:	079b      	lsls	r3, r3, #30
 8006c8e:	b470      	push	{r4, r5, r6}
 8006c90:	d12a      	bne.n	8006ce8 <strncpy+0x60>
 8006c92:	2a03      	cmp	r2, #3
 8006c94:	d928      	bls.n	8006ce8 <strncpy+0x60>
 8006c96:	460c      	mov	r4, r1
 8006c98:	4603      	mov	r3, r0
 8006c9a:	4621      	mov	r1, r4
 8006c9c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006ca0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006ca4:	ea25 0506 	bic.w	r5, r5, r6
 8006ca8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006cac:	d106      	bne.n	8006cbc <strncpy+0x34>
 8006cae:	3a04      	subs	r2, #4
 8006cb0:	2a03      	cmp	r2, #3
 8006cb2:	f843 6b04 	str.w	r6, [r3], #4
 8006cb6:	4621      	mov	r1, r4
 8006cb8:	d8ef      	bhi.n	8006c9a <strncpy+0x12>
 8006cba:	b19a      	cbz	r2, 8006ce4 <strncpy+0x5c>
 8006cbc:	780c      	ldrb	r4, [r1, #0]
 8006cbe:	701c      	strb	r4, [r3, #0]
 8006cc0:	3a01      	subs	r2, #1
 8006cc2:	3301      	adds	r3, #1
 8006cc4:	b13c      	cbz	r4, 8006cd6 <strncpy+0x4e>
 8006cc6:	b16a      	cbz	r2, 8006ce4 <strncpy+0x5c>
 8006cc8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006ccc:	f803 4b01 	strb.w	r4, [r3], #1
 8006cd0:	3a01      	subs	r2, #1
 8006cd2:	2c00      	cmp	r4, #0
 8006cd4:	d1f7      	bne.n	8006cc6 <strncpy+0x3e>
 8006cd6:	b12a      	cbz	r2, 8006ce4 <strncpy+0x5c>
 8006cd8:	441a      	add	r2, r3
 8006cda:	2100      	movs	r1, #0
 8006cdc:	f803 1b01 	strb.w	r1, [r3], #1
 8006ce0:	4293      	cmp	r3, r2
 8006ce2:	d1fb      	bne.n	8006cdc <strncpy+0x54>
 8006ce4:	bc70      	pop	{r4, r5, r6}
 8006ce6:	4770      	bx	lr
 8006ce8:	4603      	mov	r3, r0
 8006cea:	e7e6      	b.n	8006cba <strncpy+0x32>

08006cec <__sprint_r.part.0>:
 8006cec:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006cf0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006cf2:	049c      	lsls	r4, r3, #18
 8006cf4:	4692      	mov	sl, r2
 8006cf6:	d52d      	bpl.n	8006d54 <__sprint_r.part.0+0x68>
 8006cf8:	6893      	ldr	r3, [r2, #8]
 8006cfa:	6812      	ldr	r2, [r2, #0]
 8006cfc:	b343      	cbz	r3, 8006d50 <__sprint_r.part.0+0x64>
 8006cfe:	460e      	mov	r6, r1
 8006d00:	4607      	mov	r7, r0
 8006d02:	f102 0908 	add.w	r9, r2, #8
 8006d06:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006d0a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006d0e:	d015      	beq.n	8006d3c <__sprint_r.part.0+0x50>
 8006d10:	3d04      	subs	r5, #4
 8006d12:	2400      	movs	r4, #0
 8006d14:	e001      	b.n	8006d1a <__sprint_r.part.0+0x2e>
 8006d16:	45a0      	cmp	r8, r4
 8006d18:	d00e      	beq.n	8006d38 <__sprint_r.part.0+0x4c>
 8006d1a:	4632      	mov	r2, r6
 8006d1c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006d20:	4638      	mov	r0, r7
 8006d22:	f000 f99d 	bl	8007060 <_fputwc_r>
 8006d26:	1c43      	adds	r3, r0, #1
 8006d28:	f104 0401 	add.w	r4, r4, #1
 8006d2c:	d1f3      	bne.n	8006d16 <__sprint_r.part.0+0x2a>
 8006d2e:	2300      	movs	r3, #0
 8006d30:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006d34:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d38:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006d3c:	f02b 0b03 	bic.w	fp, fp, #3
 8006d40:	eba3 030b 	sub.w	r3, r3, fp
 8006d44:	f8ca 3008 	str.w	r3, [sl, #8]
 8006d48:	f109 0908 	add.w	r9, r9, #8
 8006d4c:	2b00      	cmp	r3, #0
 8006d4e:	d1da      	bne.n	8006d06 <__sprint_r.part.0+0x1a>
 8006d50:	2000      	movs	r0, #0
 8006d52:	e7ec      	b.n	8006d2e <__sprint_r.part.0+0x42>
 8006d54:	f7fe fd0c 	bl	8005770 <__sfvwrite_r>
 8006d58:	2300      	movs	r3, #0
 8006d5a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006d5e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d62:	bf00      	nop

08006d64 <__sprint_r>:
 8006d64:	6893      	ldr	r3, [r2, #8]
 8006d66:	b10b      	cbz	r3, 8006d6c <__sprint_r+0x8>
 8006d68:	f7ff bfc0 	b.w	8006cec <__sprint_r.part.0>
 8006d6c:	b410      	push	{r4}
 8006d6e:	4618      	mov	r0, r3
 8006d70:	6053      	str	r3, [r2, #4]
 8006d72:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006d76:	4770      	bx	lr

08006d78 <_write_r>:
 8006d78:	b570      	push	{r4, r5, r6, lr}
 8006d7a:	460d      	mov	r5, r1
 8006d7c:	4c08      	ldr	r4, [pc, #32]	; (8006da0 <_write_r+0x28>)
 8006d7e:	4611      	mov	r1, r2
 8006d80:	4606      	mov	r6, r0
 8006d82:	461a      	mov	r2, r3
 8006d84:	4628      	mov	r0, r5
 8006d86:	2300      	movs	r3, #0
 8006d88:	6023      	str	r3, [r4, #0]
 8006d8a:	f7fb fb4f 	bl	800242c <_write>
 8006d8e:	1c43      	adds	r3, r0, #1
 8006d90:	d000      	beq.n	8006d94 <_write_r+0x1c>
 8006d92:	bd70      	pop	{r4, r5, r6, pc}
 8006d94:	6823      	ldr	r3, [r4, #0]
 8006d96:	2b00      	cmp	r3, #0
 8006d98:	d0fb      	beq.n	8006d92 <_write_r+0x1a>
 8006d9a:	6033      	str	r3, [r6, #0]
 8006d9c:	bd70      	pop	{r4, r5, r6, pc}
 8006d9e:	bf00      	nop
 8006da0:	20000be8 	.word	0x20000be8

08006da4 <__register_exitproc>:
 8006da4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006da8:	4d2b      	ldr	r5, [pc, #172]	; (8006e58 <__register_exitproc+0xb4>)
 8006daa:	4606      	mov	r6, r0
 8006dac:	6828      	ldr	r0, [r5, #0]
 8006dae:	4698      	mov	r8, r3
 8006db0:	460f      	mov	r7, r1
 8006db2:	4691      	mov	r9, r2
 8006db4:	f7fe fe96 	bl	8005ae4 <__retarget_lock_acquire_recursive>
 8006db8:	4b28      	ldr	r3, [pc, #160]	; (8006e5c <__register_exitproc+0xb8>)
 8006dba:	681c      	ldr	r4, [r3, #0]
 8006dbc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006dc0:	2b00      	cmp	r3, #0
 8006dc2:	d03d      	beq.n	8006e40 <__register_exitproc+0x9c>
 8006dc4:	685a      	ldr	r2, [r3, #4]
 8006dc6:	2a1f      	cmp	r2, #31
 8006dc8:	dc0d      	bgt.n	8006de6 <__register_exitproc+0x42>
 8006dca:	f102 0c01 	add.w	ip, r2, #1
 8006dce:	bb16      	cbnz	r6, 8006e16 <__register_exitproc+0x72>
 8006dd0:	3202      	adds	r2, #2
 8006dd2:	f8c3 c004 	str.w	ip, [r3, #4]
 8006dd6:	6828      	ldr	r0, [r5, #0]
 8006dd8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006ddc:	f7fe fe84 	bl	8005ae8 <__retarget_lock_release_recursive>
 8006de0:	2000      	movs	r0, #0
 8006de2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006de6:	4b1e      	ldr	r3, [pc, #120]	; (8006e60 <__register_exitproc+0xbc>)
 8006de8:	b37b      	cbz	r3, 8006e4a <__register_exitproc+0xa6>
 8006dea:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006dee:	f3af 8000 	nop.w
 8006df2:	4603      	mov	r3, r0
 8006df4:	b348      	cbz	r0, 8006e4a <__register_exitproc+0xa6>
 8006df6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006dfa:	2100      	movs	r1, #0
 8006dfc:	e9c0 2100 	strd	r2, r1, [r0]
 8006e00:	f04f 0c01 	mov.w	ip, #1
 8006e04:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006e08:	460a      	mov	r2, r1
 8006e0a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006e0e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006e12:	2e00      	cmp	r6, #0
 8006e14:	d0dc      	beq.n	8006dd0 <__register_exitproc+0x2c>
 8006e16:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006e1a:	2401      	movs	r4, #1
 8006e1c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006e20:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006e24:	4094      	lsls	r4, r2
 8006e26:	4320      	orrs	r0, r4
 8006e28:	2e02      	cmp	r6, #2
 8006e2a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006e2e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006e32:	d1cd      	bne.n	8006dd0 <__register_exitproc+0x2c>
 8006e34:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006e38:	430c      	orrs	r4, r1
 8006e3a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006e3e:	e7c7      	b.n	8006dd0 <__register_exitproc+0x2c>
 8006e40:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006e44:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006e48:	e7bc      	b.n	8006dc4 <__register_exitproc+0x20>
 8006e4a:	6828      	ldr	r0, [r5, #0]
 8006e4c:	f7fe fe4c 	bl	8005ae8 <__retarget_lock_release_recursive>
 8006e50:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006e54:	e7c5      	b.n	8006de2 <__register_exitproc+0x3e>
 8006e56:	bf00      	nop
 8006e58:	20000468 	.word	0x20000468
 8006e5c:	08007410 	.word	0x08007410
 8006e60:	00000000 	.word	0x00000000

08006e64 <_calloc_r>:
 8006e64:	b510      	push	{r4, lr}
 8006e66:	fb02 f101 	mul.w	r1, r2, r1
 8006e6a:	f7fe feb7 	bl	8005bdc <_malloc_r>
 8006e6e:	4604      	mov	r4, r0
 8006e70:	b1d8      	cbz	r0, 8006eaa <_calloc_r+0x46>
 8006e72:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006e76:	f022 0203 	bic.w	r2, r2, #3
 8006e7a:	3a04      	subs	r2, #4
 8006e7c:	2a24      	cmp	r2, #36	; 0x24
 8006e7e:	d81d      	bhi.n	8006ebc <_calloc_r+0x58>
 8006e80:	2a13      	cmp	r2, #19
 8006e82:	d914      	bls.n	8006eae <_calloc_r+0x4a>
 8006e84:	2300      	movs	r3, #0
 8006e86:	2a1b      	cmp	r2, #27
 8006e88:	e9c0 3300 	strd	r3, r3, [r0]
 8006e8c:	d91b      	bls.n	8006ec6 <_calloc_r+0x62>
 8006e8e:	2a24      	cmp	r2, #36	; 0x24
 8006e90:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006e94:	bf0a      	itet	eq
 8006e96:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006e9a:	f100 0210 	addne.w	r2, r0, #16
 8006e9e:	f100 0218 	addeq.w	r2, r0, #24
 8006ea2:	2300      	movs	r3, #0
 8006ea4:	e9c2 3300 	strd	r3, r3, [r2]
 8006ea8:	6093      	str	r3, [r2, #8]
 8006eaa:	4620      	mov	r0, r4
 8006eac:	bd10      	pop	{r4, pc}
 8006eae:	4602      	mov	r2, r0
 8006eb0:	2300      	movs	r3, #0
 8006eb2:	e9c2 3300 	strd	r3, r3, [r2]
 8006eb6:	6093      	str	r3, [r2, #8]
 8006eb8:	4620      	mov	r0, r4
 8006eba:	bd10      	pop	{r4, pc}
 8006ebc:	2100      	movs	r1, #0
 8006ebe:	f7fb fb6d 	bl	800259c <memset>
 8006ec2:	4620      	mov	r0, r4
 8006ec4:	bd10      	pop	{r4, pc}
 8006ec6:	f100 0208 	add.w	r2, r0, #8
 8006eca:	e7f1      	b.n	8006eb0 <_calloc_r+0x4c>

08006ecc <_close_r>:
 8006ecc:	b538      	push	{r3, r4, r5, lr}
 8006ece:	4c07      	ldr	r4, [pc, #28]	; (8006eec <_close_r+0x20>)
 8006ed0:	2300      	movs	r3, #0
 8006ed2:	4605      	mov	r5, r0
 8006ed4:	4608      	mov	r0, r1
 8006ed6:	6023      	str	r3, [r4, #0]
 8006ed8:	f7fb fad7 	bl	800248a <_close>
 8006edc:	1c43      	adds	r3, r0, #1
 8006ede:	d000      	beq.n	8006ee2 <_close_r+0x16>
 8006ee0:	bd38      	pop	{r3, r4, r5, pc}
 8006ee2:	6823      	ldr	r3, [r4, #0]
 8006ee4:	2b00      	cmp	r3, #0
 8006ee6:	d0fb      	beq.n	8006ee0 <_close_r+0x14>
 8006ee8:	602b      	str	r3, [r5, #0]
 8006eea:	bd38      	pop	{r3, r4, r5, pc}
 8006eec:	20000be8 	.word	0x20000be8

08006ef0 <_fclose_r>:
 8006ef0:	b570      	push	{r4, r5, r6, lr}
 8006ef2:	2900      	cmp	r1, #0
 8006ef4:	d048      	beq.n	8006f88 <_fclose_r+0x98>
 8006ef6:	4605      	mov	r5, r0
 8006ef8:	460c      	mov	r4, r1
 8006efa:	b110      	cbz	r0, 8006f02 <_fclose_r+0x12>
 8006efc:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006efe:	2b00      	cmp	r3, #0
 8006f00:	d048      	beq.n	8006f94 <_fclose_r+0xa4>
 8006f02:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006f04:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f08:	07d0      	lsls	r0, r2, #31
 8006f0a:	d440      	bmi.n	8006f8e <_fclose_r+0x9e>
 8006f0c:	0599      	lsls	r1, r3, #22
 8006f0e:	d530      	bpl.n	8006f72 <_fclose_r+0x82>
 8006f10:	4621      	mov	r1, r4
 8006f12:	4628      	mov	r0, r5
 8006f14:	f7fe f990 	bl	8005238 <__sflush_r>
 8006f18:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006f1a:	4606      	mov	r6, r0
 8006f1c:	b133      	cbz	r3, 8006f2c <_fclose_r+0x3c>
 8006f1e:	69e1      	ldr	r1, [r4, #28]
 8006f20:	4628      	mov	r0, r5
 8006f22:	4798      	blx	r3
 8006f24:	2800      	cmp	r0, #0
 8006f26:	bfb8      	it	lt
 8006f28:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006f2c:	89a3      	ldrh	r3, [r4, #12]
 8006f2e:	061a      	lsls	r2, r3, #24
 8006f30:	d43c      	bmi.n	8006fac <_fclose_r+0xbc>
 8006f32:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006f34:	b141      	cbz	r1, 8006f48 <_fclose_r+0x58>
 8006f36:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006f3a:	4299      	cmp	r1, r3
 8006f3c:	d002      	beq.n	8006f44 <_fclose_r+0x54>
 8006f3e:	4628      	mov	r0, r5
 8006f40:	f7fe fb22 	bl	8005588 <_free_r>
 8006f44:	2300      	movs	r3, #0
 8006f46:	6323      	str	r3, [r4, #48]	; 0x30
 8006f48:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006f4a:	b121      	cbz	r1, 8006f56 <_fclose_r+0x66>
 8006f4c:	4628      	mov	r0, r5
 8006f4e:	f7fe fb1b 	bl	8005588 <_free_r>
 8006f52:	2300      	movs	r3, #0
 8006f54:	6463      	str	r3, [r4, #68]	; 0x44
 8006f56:	f7fe faa1 	bl	800549c <__sfp_lock_acquire>
 8006f5a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006f5c:	2200      	movs	r2, #0
 8006f5e:	07db      	lsls	r3, r3, #31
 8006f60:	81a2      	strh	r2, [r4, #12]
 8006f62:	d51f      	bpl.n	8006fa4 <_fclose_r+0xb4>
 8006f64:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f66:	f7fe fdbb 	bl	8005ae0 <__retarget_lock_close_recursive>
 8006f6a:	f7fe fa9d 	bl	80054a8 <__sfp_lock_release>
 8006f6e:	4630      	mov	r0, r6
 8006f70:	bd70      	pop	{r4, r5, r6, pc}
 8006f72:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f74:	f7fe fdb6 	bl	8005ae4 <__retarget_lock_acquire_recursive>
 8006f78:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f7c:	2b00      	cmp	r3, #0
 8006f7e:	d1c7      	bne.n	8006f10 <_fclose_r+0x20>
 8006f80:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006f82:	f016 0601 	ands.w	r6, r6, #1
 8006f86:	d016      	beq.n	8006fb6 <_fclose_r+0xc6>
 8006f88:	2600      	movs	r6, #0
 8006f8a:	4630      	mov	r0, r6
 8006f8c:	bd70      	pop	{r4, r5, r6, pc}
 8006f8e:	2b00      	cmp	r3, #0
 8006f90:	d0fa      	beq.n	8006f88 <_fclose_r+0x98>
 8006f92:	e7bd      	b.n	8006f10 <_fclose_r+0x20>
 8006f94:	f7fe fa56 	bl	8005444 <__sinit>
 8006f98:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006f9a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f9e:	07d0      	lsls	r0, r2, #31
 8006fa0:	d4f5      	bmi.n	8006f8e <_fclose_r+0x9e>
 8006fa2:	e7b3      	b.n	8006f0c <_fclose_r+0x1c>
 8006fa4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fa6:	f7fe fd9f 	bl	8005ae8 <__retarget_lock_release_recursive>
 8006faa:	e7db      	b.n	8006f64 <_fclose_r+0x74>
 8006fac:	6921      	ldr	r1, [r4, #16]
 8006fae:	4628      	mov	r0, r5
 8006fb0:	f7fe faea 	bl	8005588 <_free_r>
 8006fb4:	e7bd      	b.n	8006f32 <_fclose_r+0x42>
 8006fb6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fb8:	f7fe fd96 	bl	8005ae8 <__retarget_lock_release_recursive>
 8006fbc:	4630      	mov	r0, r6
 8006fbe:	bd70      	pop	{r4, r5, r6, pc}

08006fc0 <__fputwc>:
 8006fc0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006fc4:	b082      	sub	sp, #8
 8006fc6:	4681      	mov	r9, r0
 8006fc8:	4688      	mov	r8, r1
 8006fca:	4614      	mov	r4, r2
 8006fcc:	f000 f8a0 	bl	8007110 <__locale_mb_cur_max>
 8006fd0:	2801      	cmp	r0, #1
 8006fd2:	d103      	bne.n	8006fdc <__fputwc+0x1c>
 8006fd4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006fd8:	2bfe      	cmp	r3, #254	; 0xfe
 8006fda:	d933      	bls.n	8007044 <__fputwc+0x84>
 8006fdc:	4642      	mov	r2, r8
 8006fde:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006fe2:	a901      	add	r1, sp, #4
 8006fe4:	4648      	mov	r0, r9
 8006fe6:	f000 f93b 	bl	8007260 <_wcrtomb_r>
 8006fea:	1c42      	adds	r2, r0, #1
 8006fec:	4606      	mov	r6, r0
 8006fee:	d02f      	beq.n	8007050 <__fputwc+0x90>
 8006ff0:	b320      	cbz	r0, 800703c <__fputwc+0x7c>
 8006ff2:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006ff6:	2500      	movs	r5, #0
 8006ff8:	f10d 0a04 	add.w	sl, sp, #4
 8006ffc:	e009      	b.n	8007012 <__fputwc+0x52>
 8006ffe:	6823      	ldr	r3, [r4, #0]
 8007000:	1c5a      	adds	r2, r3, #1
 8007002:	6022      	str	r2, [r4, #0]
 8007004:	f883 c000 	strb.w	ip, [r3]
 8007008:	3501      	adds	r5, #1
 800700a:	42b5      	cmp	r5, r6
 800700c:	d216      	bcs.n	800703c <__fputwc+0x7c>
 800700e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007012:	68a3      	ldr	r3, [r4, #8]
 8007014:	3b01      	subs	r3, #1
 8007016:	2b00      	cmp	r3, #0
 8007018:	60a3      	str	r3, [r4, #8]
 800701a:	daf0      	bge.n	8006ffe <__fputwc+0x3e>
 800701c:	69a7      	ldr	r7, [r4, #24]
 800701e:	42bb      	cmp	r3, r7
 8007020:	4661      	mov	r1, ip
 8007022:	4622      	mov	r2, r4
 8007024:	4648      	mov	r0, r9
 8007026:	db02      	blt.n	800702e <__fputwc+0x6e>
 8007028:	f1bc 0f0a 	cmp.w	ip, #10
 800702c:	d1e7      	bne.n	8006ffe <__fputwc+0x3e>
 800702e:	f000 f8bf 	bl	80071b0 <__swbuf_r>
 8007032:	1c43      	adds	r3, r0, #1
 8007034:	d1e8      	bne.n	8007008 <__fputwc+0x48>
 8007036:	b002      	add	sp, #8
 8007038:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800703c:	4640      	mov	r0, r8
 800703e:	b002      	add	sp, #8
 8007040:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007044:	fa5f fc88 	uxtb.w	ip, r8
 8007048:	4606      	mov	r6, r0
 800704a:	f88d c004 	strb.w	ip, [sp, #4]
 800704e:	e7d2      	b.n	8006ff6 <__fputwc+0x36>
 8007050:	89a3      	ldrh	r3, [r4, #12]
 8007052:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007056:	81a3      	strh	r3, [r4, #12]
 8007058:	b002      	add	sp, #8
 800705a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800705e:	bf00      	nop

08007060 <_fputwc_r>:
 8007060:	b530      	push	{r4, r5, lr}
 8007062:	4605      	mov	r5, r0
 8007064:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007066:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800706a:	07c0      	lsls	r0, r0, #31
 800706c:	4614      	mov	r4, r2
 800706e:	b083      	sub	sp, #12
 8007070:	b29a      	uxth	r2, r3
 8007072:	d401      	bmi.n	8007078 <_fputwc_r+0x18>
 8007074:	0590      	lsls	r0, r2, #22
 8007076:	d51c      	bpl.n	80070b2 <_fputwc_r+0x52>
 8007078:	0490      	lsls	r0, r2, #18
 800707a:	d406      	bmi.n	800708a <_fputwc_r+0x2a>
 800707c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800707e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8007082:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007086:	81a3      	strh	r3, [r4, #12]
 8007088:	6662      	str	r2, [r4, #100]	; 0x64
 800708a:	4628      	mov	r0, r5
 800708c:	4622      	mov	r2, r4
 800708e:	f7ff ff97 	bl	8006fc0 <__fputwc>
 8007092:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007094:	07da      	lsls	r2, r3, #31
 8007096:	4605      	mov	r5, r0
 8007098:	d402      	bmi.n	80070a0 <_fputwc_r+0x40>
 800709a:	89a3      	ldrh	r3, [r4, #12]
 800709c:	059b      	lsls	r3, r3, #22
 800709e:	d502      	bpl.n	80070a6 <_fputwc_r+0x46>
 80070a0:	4628      	mov	r0, r5
 80070a2:	b003      	add	sp, #12
 80070a4:	bd30      	pop	{r4, r5, pc}
 80070a6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070a8:	f7fe fd1e 	bl	8005ae8 <__retarget_lock_release_recursive>
 80070ac:	4628      	mov	r0, r5
 80070ae:	b003      	add	sp, #12
 80070b0:	bd30      	pop	{r4, r5, pc}
 80070b2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070b4:	9101      	str	r1, [sp, #4]
 80070b6:	f7fe fd15 	bl	8005ae4 <__retarget_lock_acquire_recursive>
 80070ba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80070be:	9901      	ldr	r1, [sp, #4]
 80070c0:	b29a      	uxth	r2, r3
 80070c2:	e7d9      	b.n	8007078 <_fputwc_r+0x18>

080070c4 <_fstat_r>:
 80070c4:	b538      	push	{r3, r4, r5, lr}
 80070c6:	460b      	mov	r3, r1
 80070c8:	4c07      	ldr	r4, [pc, #28]	; (80070e8 <_fstat_r+0x24>)
 80070ca:	4605      	mov	r5, r0
 80070cc:	4611      	mov	r1, r2
 80070ce:	4618      	mov	r0, r3
 80070d0:	2300      	movs	r3, #0
 80070d2:	6023      	str	r3, [r4, #0]
 80070d4:	f7fb f9dc 	bl	8002490 <_fstat>
 80070d8:	1c43      	adds	r3, r0, #1
 80070da:	d000      	beq.n	80070de <_fstat_r+0x1a>
 80070dc:	bd38      	pop	{r3, r4, r5, pc}
 80070de:	6823      	ldr	r3, [r4, #0]
 80070e0:	2b00      	cmp	r3, #0
 80070e2:	d0fb      	beq.n	80070dc <_fstat_r+0x18>
 80070e4:	602b      	str	r3, [r5, #0]
 80070e6:	bd38      	pop	{r3, r4, r5, pc}
 80070e8:	20000be8 	.word	0x20000be8

080070ec <_isatty_r>:
 80070ec:	b538      	push	{r3, r4, r5, lr}
 80070ee:	4c07      	ldr	r4, [pc, #28]	; (800710c <_isatty_r+0x20>)
 80070f0:	2300      	movs	r3, #0
 80070f2:	4605      	mov	r5, r0
 80070f4:	4608      	mov	r0, r1
 80070f6:	6023      	str	r3, [r4, #0]
 80070f8:	f7fb f9cf 	bl	800249a <_isatty>
 80070fc:	1c43      	adds	r3, r0, #1
 80070fe:	d000      	beq.n	8007102 <_isatty_r+0x16>
 8007100:	bd38      	pop	{r3, r4, r5, pc}
 8007102:	6823      	ldr	r3, [r4, #0]
 8007104:	2b00      	cmp	r3, #0
 8007106:	d0fb      	beq.n	8007100 <_isatty_r+0x14>
 8007108:	602b      	str	r3, [r5, #0]
 800710a:	bd38      	pop	{r3, r4, r5, pc}
 800710c:	20000be8 	.word	0x20000be8

08007110 <__locale_mb_cur_max>:
 8007110:	4b04      	ldr	r3, [pc, #16]	; (8007124 <__locale_mb_cur_max+0x14>)
 8007112:	4a05      	ldr	r2, [pc, #20]	; (8007128 <__locale_mb_cur_max+0x18>)
 8007114:	681b      	ldr	r3, [r3, #0]
 8007116:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007118:	2b00      	cmp	r3, #0
 800711a:	bf08      	it	eq
 800711c:	4613      	moveq	r3, r2
 800711e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007122:	4770      	bx	lr
 8007124:	2000003c 	.word	0x2000003c
 8007128:	2000087c 	.word	0x2000087c

0800712c <_lseek_r>:
 800712c:	b570      	push	{r4, r5, r6, lr}
 800712e:	460d      	mov	r5, r1
 8007130:	4c08      	ldr	r4, [pc, #32]	; (8007154 <_lseek_r+0x28>)
 8007132:	4611      	mov	r1, r2
 8007134:	4606      	mov	r6, r0
 8007136:	461a      	mov	r2, r3
 8007138:	4628      	mov	r0, r5
 800713a:	2300      	movs	r3, #0
 800713c:	6023      	str	r3, [r4, #0]
 800713e:	f7fb f9ae 	bl	800249e <_lseek>
 8007142:	1c43      	adds	r3, r0, #1
 8007144:	d000      	beq.n	8007148 <_lseek_r+0x1c>
 8007146:	bd70      	pop	{r4, r5, r6, pc}
 8007148:	6823      	ldr	r3, [r4, #0]
 800714a:	2b00      	cmp	r3, #0
 800714c:	d0fb      	beq.n	8007146 <_lseek_r+0x1a>
 800714e:	6033      	str	r3, [r6, #0]
 8007150:	bd70      	pop	{r4, r5, r6, pc}
 8007152:	bf00      	nop
 8007154:	20000be8 	.word	0x20000be8

08007158 <__ascii_mbtowc>:
 8007158:	b082      	sub	sp, #8
 800715a:	b149      	cbz	r1, 8007170 <__ascii_mbtowc+0x18>
 800715c:	b15a      	cbz	r2, 8007176 <__ascii_mbtowc+0x1e>
 800715e:	b16b      	cbz	r3, 800717c <__ascii_mbtowc+0x24>
 8007160:	7813      	ldrb	r3, [r2, #0]
 8007162:	600b      	str	r3, [r1, #0]
 8007164:	7812      	ldrb	r2, [r2, #0]
 8007166:	1c10      	adds	r0, r2, #0
 8007168:	bf18      	it	ne
 800716a:	2001      	movne	r0, #1
 800716c:	b002      	add	sp, #8
 800716e:	4770      	bx	lr
 8007170:	a901      	add	r1, sp, #4
 8007172:	2a00      	cmp	r2, #0
 8007174:	d1f3      	bne.n	800715e <__ascii_mbtowc+0x6>
 8007176:	4610      	mov	r0, r2
 8007178:	b002      	add	sp, #8
 800717a:	4770      	bx	lr
 800717c:	f06f 0001 	mvn.w	r0, #1
 8007180:	e7f4      	b.n	800716c <__ascii_mbtowc+0x14>
 8007182:	bf00      	nop

08007184 <_read_r>:
 8007184:	b570      	push	{r4, r5, r6, lr}
 8007186:	460d      	mov	r5, r1
 8007188:	4c08      	ldr	r4, [pc, #32]	; (80071ac <_read_r+0x28>)
 800718a:	4611      	mov	r1, r2
 800718c:	4606      	mov	r6, r0
 800718e:	461a      	mov	r2, r3
 8007190:	4628      	mov	r0, r5
 8007192:	2300      	movs	r3, #0
 8007194:	6023      	str	r3, [r4, #0]
 8007196:	f7fb f936 	bl	8002406 <_read>
 800719a:	1c43      	adds	r3, r0, #1
 800719c:	d000      	beq.n	80071a0 <_read_r+0x1c>
 800719e:	bd70      	pop	{r4, r5, r6, pc}
 80071a0:	6823      	ldr	r3, [r4, #0]
 80071a2:	2b00      	cmp	r3, #0
 80071a4:	d0fb      	beq.n	800719e <_read_r+0x1a>
 80071a6:	6033      	str	r3, [r6, #0]
 80071a8:	bd70      	pop	{r4, r5, r6, pc}
 80071aa:	bf00      	nop
 80071ac:	20000be8 	.word	0x20000be8

080071b0 <__swbuf_r>:
 80071b0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80071b2:	460d      	mov	r5, r1
 80071b4:	4614      	mov	r4, r2
 80071b6:	4606      	mov	r6, r0
 80071b8:	b110      	cbz	r0, 80071c0 <__swbuf_r+0x10>
 80071ba:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80071bc:	2b00      	cmp	r3, #0
 80071be:	d043      	beq.n	8007248 <__swbuf_r+0x98>
 80071c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80071c4:	69a3      	ldr	r3, [r4, #24]
 80071c6:	60a3      	str	r3, [r4, #8]
 80071c8:	b291      	uxth	r1, r2
 80071ca:	0708      	lsls	r0, r1, #28
 80071cc:	d51b      	bpl.n	8007206 <__swbuf_r+0x56>
 80071ce:	6923      	ldr	r3, [r4, #16]
 80071d0:	b1cb      	cbz	r3, 8007206 <__swbuf_r+0x56>
 80071d2:	b2ed      	uxtb	r5, r5
 80071d4:	0489      	lsls	r1, r1, #18
 80071d6:	462f      	mov	r7, r5
 80071d8:	d522      	bpl.n	8007220 <__swbuf_r+0x70>
 80071da:	6822      	ldr	r2, [r4, #0]
 80071dc:	6961      	ldr	r1, [r4, #20]
 80071de:	1ad3      	subs	r3, r2, r3
 80071e0:	4299      	cmp	r1, r3
 80071e2:	dd29      	ble.n	8007238 <__swbuf_r+0x88>
 80071e4:	3301      	adds	r3, #1
 80071e6:	68a1      	ldr	r1, [r4, #8]
 80071e8:	1c50      	adds	r0, r2, #1
 80071ea:	3901      	subs	r1, #1
 80071ec:	60a1      	str	r1, [r4, #8]
 80071ee:	6020      	str	r0, [r4, #0]
 80071f0:	7015      	strb	r5, [r2, #0]
 80071f2:	6962      	ldr	r2, [r4, #20]
 80071f4:	429a      	cmp	r2, r3
 80071f6:	d02a      	beq.n	800724e <__swbuf_r+0x9e>
 80071f8:	89a3      	ldrh	r3, [r4, #12]
 80071fa:	07db      	lsls	r3, r3, #31
 80071fc:	d501      	bpl.n	8007202 <__swbuf_r+0x52>
 80071fe:	2d0a      	cmp	r5, #10
 8007200:	d025      	beq.n	800724e <__swbuf_r+0x9e>
 8007202:	4638      	mov	r0, r7
 8007204:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007206:	4621      	mov	r1, r4
 8007208:	4630      	mov	r0, r6
 800720a:	f7fc fffd 	bl	8004208 <__swsetup_r>
 800720e:	bb20      	cbnz	r0, 800725a <__swbuf_r+0xaa>
 8007210:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007214:	6923      	ldr	r3, [r4, #16]
 8007216:	b291      	uxth	r1, r2
 8007218:	b2ed      	uxtb	r5, r5
 800721a:	0489      	lsls	r1, r1, #18
 800721c:	462f      	mov	r7, r5
 800721e:	d4dc      	bmi.n	80071da <__swbuf_r+0x2a>
 8007220:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007222:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007226:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800722a:	81a2      	strh	r2, [r4, #12]
 800722c:	6822      	ldr	r2, [r4, #0]
 800722e:	6661      	str	r1, [r4, #100]	; 0x64
 8007230:	6961      	ldr	r1, [r4, #20]
 8007232:	1ad3      	subs	r3, r2, r3
 8007234:	4299      	cmp	r1, r3
 8007236:	dcd5      	bgt.n	80071e4 <__swbuf_r+0x34>
 8007238:	4621      	mov	r1, r4
 800723a:	4630      	mov	r0, r6
 800723c:	f7fe f8a6 	bl	800538c <_fflush_r>
 8007240:	b958      	cbnz	r0, 800725a <__swbuf_r+0xaa>
 8007242:	6822      	ldr	r2, [r4, #0]
 8007244:	2301      	movs	r3, #1
 8007246:	e7ce      	b.n	80071e6 <__swbuf_r+0x36>
 8007248:	f7fe f8fc 	bl	8005444 <__sinit>
 800724c:	e7b8      	b.n	80071c0 <__swbuf_r+0x10>
 800724e:	4621      	mov	r1, r4
 8007250:	4630      	mov	r0, r6
 8007252:	f7fe f89b 	bl	800538c <_fflush_r>
 8007256:	2800      	cmp	r0, #0
 8007258:	d0d3      	beq.n	8007202 <__swbuf_r+0x52>
 800725a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800725e:	e7d0      	b.n	8007202 <__swbuf_r+0x52>

08007260 <_wcrtomb_r>:
 8007260:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007262:	4c11      	ldr	r4, [pc, #68]	; (80072a8 <_wcrtomb_r+0x48>)
 8007264:	6824      	ldr	r4, [r4, #0]
 8007266:	b085      	sub	sp, #20
 8007268:	4606      	mov	r6, r0
 800726a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800726c:	461f      	mov	r7, r3
 800726e:	b151      	cbz	r1, 8007286 <_wcrtomb_r+0x26>
 8007270:	4d0e      	ldr	r5, [pc, #56]	; (80072ac <_wcrtomb_r+0x4c>)
 8007272:	2c00      	cmp	r4, #0
 8007274:	bf08      	it	eq
 8007276:	462c      	moveq	r4, r5
 8007278:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800727c:	47a0      	blx	r4
 800727e:	1c43      	adds	r3, r0, #1
 8007280:	d00c      	beq.n	800729c <_wcrtomb_r+0x3c>
 8007282:	b005      	add	sp, #20
 8007284:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007286:	4a09      	ldr	r2, [pc, #36]	; (80072ac <_wcrtomb_r+0x4c>)
 8007288:	2c00      	cmp	r4, #0
 800728a:	bf08      	it	eq
 800728c:	4614      	moveq	r4, r2
 800728e:	460a      	mov	r2, r1
 8007290:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007294:	a901      	add	r1, sp, #4
 8007296:	47a0      	blx	r4
 8007298:	1c43      	adds	r3, r0, #1
 800729a:	d1f2      	bne.n	8007282 <_wcrtomb_r+0x22>
 800729c:	2200      	movs	r2, #0
 800729e:	238a      	movs	r3, #138	; 0x8a
 80072a0:	603a      	str	r2, [r7, #0]
 80072a2:	6033      	str	r3, [r6, #0]
 80072a4:	b005      	add	sp, #20
 80072a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80072a8:	2000003c 	.word	0x2000003c
 80072ac:	2000087c 	.word	0x2000087c

080072b0 <__ascii_wctomb>:
 80072b0:	b121      	cbz	r1, 80072bc <__ascii_wctomb+0xc>
 80072b2:	2aff      	cmp	r2, #255	; 0xff
 80072b4:	d804      	bhi.n	80072c0 <__ascii_wctomb+0x10>
 80072b6:	700a      	strb	r2, [r1, #0]
 80072b8:	2001      	movs	r0, #1
 80072ba:	4770      	bx	lr
 80072bc:	4608      	mov	r0, r1
 80072be:	4770      	bx	lr
 80072c0:	238a      	movs	r3, #138	; 0x8a
 80072c2:	6003      	str	r3, [r0, #0]
 80072c4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80072c8:	4770      	bx	lr
 80072ca:	bf00      	nop

080072cc <_init>:
 80072cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80072ce:	bf00      	nop
 80072d0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80072d2:	bc08      	pop	{r3}
 80072d4:	469e      	mov	lr, r3
 80072d6:	4770      	bx	lr

080072d8 <_fini>:
 80072d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80072da:	bf00      	nop
 80072dc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80072de:	bc08      	pop	{r3}
 80072e0:	469e      	mov	lr, r3
 80072e2:	4770      	bx	lr
 80072e4:	0000      	movs	r0, r0
	...
