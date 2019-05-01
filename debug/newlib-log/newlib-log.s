
newlib-log.elf:     file format elf32-littlearm


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
 80001e0:	080070b4 	.word	0x080070b4

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
 80001fc:	080070b4 	.word	0x080070b4

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
 80013e8:	f247 02e8 	movw	r2, #28904	; 0x70e8
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
 8001462:	f247 02e0 	movw	r2, #28896	; 0x70e0
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
 800148c:	f247 02e0 	movw	r2, #28896	; 0x70e0
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
 80019d4:	f247 1318 	movw	r3, #28952	; 0x7118
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
 80019fc:	f247 1328 	movw	r3, #28968	; 0x7128
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

08001eb8 <__ieee754_logf>:
 8001eb8:	ee10 2a10 	vmov	r2, s0
 8001ebc:	f06f 4000 	mvn.w	r0, #2147483648	; 0x80000000
 8001ec0:	4202      	tst	r2, r0
 8001ec2:	bf04      	itt	eq
 8001ec4:	ed9f 0a73 	vldreq	s0, [pc, #460]	; 8002094 <__ieee754_logf+0x1dc>
 8001ec8:	4770      	bxeq	lr
 8001eca:	f1b2 3fff 	cmp.w	r2, #4294967295	; 0xffffffff
 8001ece:	dd4e      	ble.n	8001f6e <__ieee754_logf+0xb6>
 8001ed0:	f1b2 4fff 	cmp.w	r2, #2139095040	; 0x7f800000
 8001ed4:	bfa4      	itt	ge
 8001ed6:	ee30 0a00 	vaddge.f32	s0, s0, s0
 8001eda:	4770      	bxge	lr
 8001edc:	b580      	push	{r7, lr}
 8001ede:	466f      	mov	r7, sp
 8001ee0:	ed9f 1a6d 	vldr	s2, [pc, #436]	; 8002098 <__ieee754_logf+0x1e0>
 8001ee4:	f64f 7cf0 	movw	ip, #65520	; 0xfff0
 8001ee8:	f06f 007e 	mvn.w	r0, #126	; 0x7e
 8001eec:	f5b2 0f00 	cmp.w	r2, #8388608	; 0x800000
 8001ef0:	f64f 3320 	movw	r3, #64288	; 0xfb20
 8001ef4:	f2c0 0c7f 	movt	ip, #127	; 0x7f
 8001ef8:	f2c0 034a 	movt	r3, #74	; 0x4a
 8001efc:	f10c 010f 	add.w	r1, ip, #15
 8001f00:	ee20 0a01 	vmul.f32	s0, s0, s2
 8001f04:	bfbc      	itt	lt
 8001f06:	f06f 0097 	mvnlt.w	r0, #151	; 0x97
 8001f0a:	ee10 2a10 	vmovlt	r2, s0
 8001f0e:	eebf 0a00 	vmov.f32	s0, #240	; 0xbf800000 -1.0
 8001f12:	4011      	ands	r1, r2
 8001f14:	eb00 5ee2 	add.w	lr, r0, r2, asr #23
 8001f18:	320f      	adds	r2, #15
 8001f1a:	440b      	add	r3, r1
 8001f1c:	ea02 020c 	and.w	r2, r2, ip
 8001f20:	f403 0000 	and.w	r0, r3, #8388608	; 0x800000
 8001f24:	2a0f      	cmp	r2, #15
 8001f26:	ea40 0001 	orr.w	r0, r0, r1
 8001f2a:	f080 507e 	eor.w	r0, r0, #1065353216	; 0x3f800000
 8001f2e:	ee01 0a10 	vmov	s2, r0
 8001f32:	eb0e 50d3 	add.w	r0, lr, r3, lsr #23
 8001f36:	ee31 0a00 	vadd.f32	s0, s2, s0
 8001f3a:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001f3e:	d81d      	bhi.n	8001f7c <__ieee754_logf+0xc4>
 8001f40:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8001f44:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f48:	d168      	bne.n	800201c <__ieee754_logf+0x164>
 8001f4a:	2800      	cmp	r0, #0
 8001f4c:	bf04      	itt	eq
 8001f4e:	ed9f 0a5e 	vldreq	s0, [pc, #376]	; 80020c8 <__ieee754_logf+0x210>
 8001f52:	4770      	bxeq	lr
 8001f54:	ed9f 0a5a 	vldr	s0, [pc, #360]	; 80020c0 <__ieee754_logf+0x208>
 8001f58:	ed9f 1a58 	vldr	s2, [pc, #352]	; 80020bc <__ieee754_logf+0x204>
 8001f5c:	ee02 0a10 	vmov	s4, r0
 8001f60:	eeb8 2ac2 	vcvt.f32.s32	s4, s4
 8001f64:	ee22 0a00 	vmul.f32	s0, s4, s0
 8001f68:	ee02 0a01 	vmla.f32	s0, s4, s2
 8001f6c:	4770      	bx	lr
 8001f6e:	ed9f 1a56 	vldr	s2, [pc, #344]	; 80020c8 <__ieee754_logf+0x210>
 8001f72:	ee30 0a40 	vsub.f32	s0, s0, s0
 8001f76:	ee80 0a01 	vdiv.f32	s0, s0, s2
 8001f7a:	4770      	bx	lr
 8001f7c:	eeb0 1a00 	vmov.f32	s2, #0	; 0x40000000  2.0
 8001f80:	ed9f 3a46 	vldr	s6, [pc, #280]	; 800209c <__ieee754_logf+0x1e4>
 8001f84:	ed9f 4a46 	vldr	s8, [pc, #280]	; 80020a0 <__ieee754_logf+0x1e8>
 8001f88:	ed9f 5a46 	vldr	s10, [pc, #280]	; 80020a4 <__ieee754_logf+0x1ec>
 8001f8c:	ed9f 7a46 	vldr	s14, [pc, #280]	; 80020a8 <__ieee754_logf+0x1f0>
 8001f90:	eddf 0a46 	vldr	s1, [pc, #280]	; 80020ac <__ieee754_logf+0x1f4>
 8001f94:	f24c 2288 	movw	r2, #49800	; 0xc288
 8001f98:	f645 4330 	movw	r3, #23600	; 0x5c30
 8001f9c:	ee30 1a01 	vadd.f32	s2, s0, s2
 8001fa0:	f2c0 0235 	movt	r2, #53	; 0x35
 8001fa4:	f6cf 73cf 	movt	r3, #65487	; 0xffcf
 8001fa8:	ee80 1a01 	vdiv.f32	s2, s0, s2
 8001fac:	1a52      	subs	r2, r2, r1
 8001fae:	4419      	add	r1, r3
 8001fb0:	ee21 2a01 	vmul.f32	s4, s2, s2
 8001fb4:	4311      	orrs	r1, r2
 8001fb6:	ee22 6a02 	vmul.f32	s12, s4, s4
 8001fba:	2901      	cmp	r1, #1
 8001fbc:	ee06 4a03 	vmla.f32	s8, s12, s6
 8001fc0:	ed9f 3a3b 	vldr	s6, [pc, #236]	; 80020b0 <__ieee754_logf+0x1f8>
 8001fc4:	ee46 0a07 	vmla.f32	s1, s12, s14
 8001fc8:	ee06 5a04 	vmla.f32	s10, s12, s8
 8001fcc:	ed9f 4a39 	vldr	s8, [pc, #228]	; 80020b4 <__ieee754_logf+0x1fc>
 8001fd0:	ee06 3a05 	vmla.f32	s6, s12, s10
 8001fd4:	ee05 0a10 	vmov	s10, r0
 8001fd8:	ee22 3a03 	vmul.f32	s6, s4, s6
 8001fdc:	ee06 4a20 	vmla.f32	s8, s12, s1
 8001fe0:	eeb8 2ac5 	vcvt.f32.s32	s4, s10
 8001fe4:	ee06 3a04 	vmla.f32	s6, s12, s8
 8001fe8:	db36      	blt.n	8002058 <__ieee754_logf+0x1a0>
 8001fea:	eeb6 4a00 	vmov.f32	s8, #96	; 0x3f000000  0.5
 8001fee:	2800      	cmp	r0, #0
 8001ff0:	ee20 4a04 	vmul.f32	s8, s0, s8
 8001ff4:	ee20 4a04 	vmul.f32	s8, s0, s8
 8001ff8:	d044      	beq.n	8002084 <__ieee754_logf+0x1cc>
 8001ffa:	ed9f 5a31 	vldr	s10, [pc, #196]	; 80020c0 <__ieee754_logf+0x208>
 8001ffe:	ee34 3a03 	vadd.f32	s6, s8, s6
 8002002:	ee21 1a03 	vmul.f32	s2, s2, s6
 8002006:	ed9f 3a2d 	vldr	s6, [pc, #180]	; 80020bc <__ieee754_logf+0x204>
 800200a:	ee02 1a05 	vmla.f32	s2, s4, s10
 800200e:	ee34 1a41 	vsub.f32	s2, s8, s2
 8002012:	ee31 0a40 	vsub.f32	s0, s2, s0
 8002016:	ee12 0a03 	vnmls.f32	s0, s4, s6
 800201a:	4770      	bx	lr
 800201c:	ed9f 1a29 	vldr	s2, [pc, #164]	; 80020c4 <__ieee754_logf+0x20c>
 8002020:	eeb6 2a00 	vmov.f32	s4, #96	; 0x3f000000  0.5
 8002024:	ee20 3a00 	vmul.f32	s6, s0, s0
 8002028:	2800      	cmp	r0, #0
 800202a:	ee00 2a01 	vmla.f32	s4, s0, s2
 800202e:	ee23 1a02 	vmul.f32	s2, s6, s4
 8002032:	bf04      	itt	eq
 8002034:	ee30 0a41 	vsubeq.f32	s0, s0, s2
 8002038:	4770      	bxeq	lr
 800203a:	ed9f 2a1f 	vldr	s4, [pc, #124]	; 80020b8 <__ieee754_logf+0x200>
 800203e:	ee03 0a10 	vmov	s6, r0
 8002042:	ed9f 4a1e 	vldr	s8, [pc, #120]	; 80020bc <__ieee754_logf+0x204>
 8002046:	eeb8 3ac3 	vcvt.f32.s32	s6, s6
 800204a:	ee03 1a02 	vmla.f32	s2, s6, s4
 800204e:	ee31 0a40 	vsub.f32	s0, s2, s0
 8002052:	ee13 0a04 	vnmls.f32	s0, s6, s8
 8002056:	4770      	bx	lr
 8002058:	2800      	cmp	r0, #0
 800205a:	bf02      	ittt	eq
 800205c:	ee30 2a43 	vsubeq.f32	s4, s0, s6
 8002060:	ee01 0a42 	vmlseq.f32	s0, s2, s4
 8002064:	4770      	bxeq	lr
 8002066:	ed9f 4a14 	vldr	s8, [pc, #80]	; 80020b8 <__ieee754_logf+0x200>
 800206a:	ed9f 5a14 	vldr	s10, [pc, #80]	; 80020bc <__ieee754_logf+0x204>
 800206e:	ee30 3a43 	vsub.f32	s6, s0, s6
 8002072:	ee22 4a04 	vmul.f32	s8, s4, s8
 8002076:	ee01 4a03 	vmla.f32	s8, s2, s6
 800207a:	ee34 0a40 	vsub.f32	s0, s8, s0
 800207e:	ee12 0a05 	vnmls.f32	s0, s4, s10
 8002082:	4770      	bx	lr
 8002084:	ee34 2a03 	vadd.f32	s4, s8, s6
 8002088:	ee01 4a42 	vmls.f32	s8, s2, s4
 800208c:	ee30 0a44 	vsub.f32	s0, s0, s8
 8002090:	4770      	bx	lr
 8002092:	bf00      	nop
 8002094:	ff800000 	.word	0xff800000
 8002098:	4c000000 	.word	0x4c000000
 800209c:	3e178897 	.word	0x3e178897
 80020a0:	3e3a3325 	.word	0x3e3a3325
 80020a4:	3e924925 	.word	0x3e924925
 80020a8:	3e1cd04f 	.word	0x3e1cd04f
 80020ac:	3e638e29 	.word	0x3e638e29
 80020b0:	3f2aaaab 	.word	0x3f2aaaab
 80020b4:	3ecccccd 	.word	0x3ecccccd
 80020b8:	b717f7d1 	.word	0xb717f7d1
 80020bc:	3f317180 	.word	0x3f317180
 80020c0:	3717f7d1 	.word	0x3717f7d1
 80020c4:	beaaaaab 	.word	0xbeaaaaab
 80020c8:	00000000 	.word	0x00000000

080020cc <verify_benchmark>:
 80020cc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80020d0:	4770      	bx	lr

080020d2 <initialise_benchmark>:
 80020d2:	4770      	bx	lr

080020d4 <benchmark>:
 80020d4:	b5d0      	push	{r4, r6, r7, lr}
 80020d6:	af02      	add	r7, sp, #8
 80020d8:	eeb0 0a00 	vmov.f32	s0, #0	; 0x40000000  2.0
 80020dc:	f7ff feec 	bl	8001eb8 <__ieee754_logf>
 80020e0:	f640 14e4 	movw	r4, #2532	; 0x9e4
 80020e4:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80020e8:	ed84 0a00 	vstr	s0, [r4]
 80020ec:	eeb0 0a08 	vmov.f32	s0, #8	; 0x40400000  3.0
 80020f0:	f7ff fee2 	bl	8001eb8 <__ieee754_logf>
 80020f4:	ed84 0a00 	vstr	s0, [r4]
 80020f8:	eeb1 0a00 	vmov.f32	s0, #16	; 0x40800000  4.0
 80020fc:	f7ff fedc 	bl	8001eb8 <__ieee754_logf>
 8002100:	ed84 0a00 	vstr	s0, [r4]
 8002104:	eeb1 0a04 	vmov.f32	s0, #20	; 0x40a00000  5.0
 8002108:	f7ff fed6 	bl	8001eb8 <__ieee754_logf>
 800210c:	ed84 0a00 	vstr	s0, [r4]
 8002110:	eeb1 0a08 	vmov.f32	s0, #24	; 0x40c00000  6.0
 8002114:	f7ff fed0 	bl	8001eb8 <__ieee754_logf>
 8002118:	2000      	movs	r0, #0
 800211a:	ed84 0a00 	vstr	s0, [r4]
 800211e:	bdd0      	pop	{r4, r6, r7, pc}

08002120 <__io_putchar>:
 8002120:	b580      	push	{r7, lr}
 8002122:	466f      	mov	r7, sp
 8002124:	b082      	sub	sp, #8
 8002126:	9001      	str	r0, [sp, #4]
 8002128:	f640 10e8 	movw	r0, #2536	; 0x9e8
 800212c:	a901      	add	r1, sp, #4
 800212e:	2201      	movs	r2, #1
 8002130:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002134:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002138:	f7ff fdcf 	bl	8001cda <HAL_UART_Transmit>
 800213c:	9801      	ldr	r0, [sp, #4]
 800213e:	b002      	add	sp, #8
 8002140:	bd80      	pop	{r7, pc}

08002142 <main>:
 8002142:	b5b0      	push	{r4, r5, r7, lr}
 8002144:	af02      	add	r7, sp, #8
 8002146:	f640 11e8 	movw	r1, #2536	; 0x9e8
 800214a:	f643 0000 	movw	r0, #14336	; 0x3800
 800214e:	220c      	movs	r2, #12
 8002150:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002154:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002158:	6008      	str	r0, [r1, #0]
 800215a:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 800215e:	6048      	str	r0, [r1, #4]
 8002160:	2000      	movs	r0, #0
 8002162:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002166:	6108      	str	r0, [r1, #16]
 8002168:	6248      	str	r0, [r1, #36]	; 0x24
 800216a:	e9c1 0007 	strd	r0, r0, [r1, #28]
 800216e:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002172:	2000      	movs	r0, #0
 8002174:	f7ff fe46 	bl	8001e04 <BSP_COM_Init>
 8002178:	f7ff ffab 	bl	80020d2 <initialise_benchmark>
 800217c:	f247 1038 	movw	r0, #28984	; 0x7138
 8002180:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002184:	f000 f948 	bl	8002418 <printf>
 8002188:	f247 10e5 	movw	r0, #29157	; 0x71e5
 800218c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002190:	f000 f9a4 	bl	80024dc <puts>
 8002194:	f7fe ffa8 	bl	80010e8 <HAL_Init>
 8002198:	f7fe ffbe 	bl	8001118 <HAL_GetTick>
 800219c:	4604      	mov	r4, r0
 800219e:	f7ff ff99 	bl	80020d4 <benchmark>
 80021a2:	4605      	mov	r5, r0
 80021a4:	f7fe ffb8 	bl	8001118 <HAL_GetTick>
 80021a8:	1b04      	subs	r4, r0, r4
 80021aa:	4628      	mov	r0, r5
 80021ac:	f7ff ff8e 	bl	80020cc <verify_benchmark>
 80021b0:	1c41      	adds	r1, r0, #1
 80021b2:	d006      	beq.n	80021c2 <main+0x80>
 80021b4:	2801      	cmp	r0, #1
 80021b6:	d109      	bne.n	80021cc <main+0x8a>
 80021b8:	f247 1051 	movw	r0, #29009	; 0x7151
 80021bc:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021c0:	e008      	b.n	80021d4 <main+0x92>
 80021c2:	f247 1075 	movw	r0, #29045	; 0x7175
 80021c6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021ca:	e003      	b.n	80021d4 <main+0x92>
 80021cc:	f247 10aa 	movw	r0, #29098	; 0x71aa
 80021d0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021d4:	4621      	mov	r1, r4
 80021d6:	f000 f91f 	bl	8002418 <printf>
 80021da:	2000      	movs	r0, #0
 80021dc:	bdb0      	pop	{r4, r5, r7, pc}

080021de <SysTick_Handler>:
 80021de:	b580      	push	{r7, lr}
 80021e0:	466f      	mov	r7, sp
 80021e2:	f7fe ff91 	bl	8001108 <HAL_IncTick>
 80021e6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80021ea:	f7fe bfeb 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

080021ee <_read>:
 80021ee:	b5f0      	push	{r4, r5, r6, r7, lr}
 80021f0:	af03      	add	r7, sp, #12
 80021f2:	f84d bd04 	str.w	fp, [sp, #-4]!
 80021f6:	4614      	mov	r4, r2
 80021f8:	460d      	mov	r5, r1
 80021fa:	2c01      	cmp	r4, #1
 80021fc:	db06      	blt.n	800220c <_read+0x1e>
 80021fe:	4626      	mov	r6, r4
 8002200:	f3af 8000 	nop.w
 8002204:	f805 0b01 	strb.w	r0, [r5], #1
 8002208:	3e01      	subs	r6, #1
 800220a:	d1f9      	bne.n	8002200 <_read+0x12>
 800220c:	4620      	mov	r0, r4
 800220e:	f85d bb04 	ldr.w	fp, [sp], #4
 8002212:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002214 <_write>:
 8002214:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002216:	af03      	add	r7, sp, #12
 8002218:	f84d bd04 	str.w	fp, [sp, #-4]!
 800221c:	4614      	mov	r4, r2
 800221e:	460d      	mov	r5, r1
 8002220:	2c01      	cmp	r4, #1
 8002222:	db06      	blt.n	8002232 <_write+0x1e>
 8002224:	4626      	mov	r6, r4
 8002226:	f815 0b01 	ldrb.w	r0, [r5], #1
 800222a:	f7ff ff79 	bl	8002120 <__io_putchar>
 800222e:	3e01      	subs	r6, #1
 8002230:	d1f9      	bne.n	8002226 <_write+0x12>
 8002232:	4620      	mov	r0, r4
 8002234:	f85d bb04 	ldr.w	fp, [sp], #4
 8002238:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800223a <_sbrk>:
 800223a:	f640 226c 	movw	r2, #2668	; 0xa6c
 800223e:	4601      	mov	r1, r0
 8002240:	466b      	mov	r3, sp
 8002242:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002246:	6810      	ldr	r0, [r2, #0]
 8002248:	2800      	cmp	r0, #0
 800224a:	bf02      	ittt	eq
 800224c:	f640 3018 	movweq	r0, #2840	; 0xb18
 8002250:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002254:	6010      	streq	r0, [r2, #0]
 8002256:	4401      	add	r1, r0
 8002258:	4299      	cmp	r1, r3
 800225a:	bf9c      	itt	ls
 800225c:	6011      	strls	r1, [r2, #0]
 800225e:	4770      	bxls	lr
 8002260:	b580      	push	{r7, lr}
 8002262:	466f      	mov	r7, sp
 8002264:	f000 f864 	bl	8002330 <__errno>
 8002268:	210c      	movs	r1, #12
 800226a:	6001      	str	r1, [r0, #0]
 800226c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002270:	bd80      	pop	{r7, pc}

08002272 <_close>:
 8002272:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002276:	4770      	bx	lr

08002278 <_fstat>:
 8002278:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800227c:	6048      	str	r0, [r1, #4]
 800227e:	2000      	movs	r0, #0
 8002280:	4770      	bx	lr

08002282 <_isatty>:
 8002282:	2001      	movs	r0, #1
 8002284:	4770      	bx	lr

08002286 <_lseek>:
 8002286:	2000      	movs	r0, #0
 8002288:	4770      	bx	lr

0800228a <SystemInit>:
 800228a:	f64e 5088 	movw	r0, #60808	; 0xed88
 800228e:	f04f 0c00 	mov.w	ip, #0
 8002292:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002296:	6801      	ldr	r1, [r0, #0]
 8002298:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800229c:	6001      	str	r1, [r0, #0]
 800229e:	f241 0100 	movw	r1, #4096	; 0x1000
 80022a2:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80022a6:	680a      	ldr	r2, [r1, #0]
 80022a8:	f042 0201 	orr.w	r2, r2, #1
 80022ac:	600a      	str	r2, [r1, #0]
 80022ae:	f8c1 c008 	str.w	ip, [r1, #8]
 80022b2:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80022b6:	680b      	ldr	r3, [r1, #0]
 80022b8:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80022bc:	401a      	ands	r2, r3
 80022be:	600a      	str	r2, [r1, #0]
 80022c0:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80022c4:	60ca      	str	r2, [r1, #12]
 80022c6:	680a      	ldr	r2, [r1, #0]
 80022c8:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80022cc:	600a      	str	r2, [r1, #0]
 80022ce:	f8c1 c018 	str.w	ip, [r1, #24]
 80022d2:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80022d6:	f840 1c80 	str.w	r1, [r0, #-128]
 80022da:	4770      	bx	lr

080022dc <Reset_Handler>:
 80022dc:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002314 <LoopForever+0x2>
 80022e0:	2100      	movs	r1, #0
 80022e2:	e003      	b.n	80022ec <LoopCopyDataInit>

080022e4 <CopyDataInit>:
 80022e4:	4b0c      	ldr	r3, [pc, #48]	; (8002318 <LoopForever+0x6>)
 80022e6:	585b      	ldr	r3, [r3, r1]
 80022e8:	5043      	str	r3, [r0, r1]
 80022ea:	3104      	adds	r1, #4

080022ec <LoopCopyDataInit>:
 80022ec:	480b      	ldr	r0, [pc, #44]	; (800231c <LoopForever+0xa>)
 80022ee:	4b0c      	ldr	r3, [pc, #48]	; (8002320 <LoopForever+0xe>)
 80022f0:	1842      	adds	r2, r0, r1
 80022f2:	429a      	cmp	r2, r3
 80022f4:	d3f6      	bcc.n	80022e4 <CopyDataInit>
 80022f6:	4a0b      	ldr	r2, [pc, #44]	; (8002324 <LoopForever+0x12>)
 80022f8:	e002      	b.n	8002300 <LoopFillZerobss>

080022fa <FillZerobss>:
 80022fa:	2300      	movs	r3, #0
 80022fc:	f842 3b04 	str.w	r3, [r2], #4

08002300 <LoopFillZerobss>:
 8002300:	4b09      	ldr	r3, [pc, #36]	; (8002328 <LoopForever+0x16>)
 8002302:	429a      	cmp	r2, r3
 8002304:	d3f9      	bcc.n	80022fa <FillZerobss>
 8002306:	f7ff ffc0 	bl	800228a <SystemInit>
 800230a:	f000 f817 	bl	800233c <__libc_init_array>
 800230e:	f7ff ff18 	bl	8002142 <main>

08002312 <LoopForever>:
 8002312:	e7fe      	b.n	8002312 <LoopForever>
 8002314:	20018000 	.word	0x20018000
 8002318:	08007490 	.word	0x08007490
 800231c:	20000000 	.word	0x20000000
 8002320:	200009c8 	.word	0x200009c8
 8002324:	200009c8 	.word	0x200009c8
 8002328:	20000b14 	.word	0x20000b14

0800232c <ADC1_2_IRQHandler>:
 800232c:	e7fe      	b.n	800232c <ADC1_2_IRQHandler>
	...

08002330 <__errno>:
 8002330:	4b01      	ldr	r3, [pc, #4]	; (8002338 <__errno+0x8>)
 8002332:	6818      	ldr	r0, [r3, #0]
 8002334:	4770      	bx	lr
 8002336:	bf00      	nop
 8002338:	20000018 	.word	0x20000018

0800233c <__libc_init_array>:
 800233c:	b570      	push	{r4, r5, r6, lr}
 800233e:	4e0d      	ldr	r6, [pc, #52]	; (8002374 <__libc_init_array+0x38>)
 8002340:	4d0d      	ldr	r5, [pc, #52]	; (8002378 <__libc_init_array+0x3c>)
 8002342:	1b76      	subs	r6, r6, r5
 8002344:	10b6      	asrs	r6, r6, #2
 8002346:	d006      	beq.n	8002356 <__libc_init_array+0x1a>
 8002348:	2400      	movs	r4, #0
 800234a:	3401      	adds	r4, #1
 800234c:	f855 3b04 	ldr.w	r3, [r5], #4
 8002350:	4798      	blx	r3
 8002352:	42a6      	cmp	r6, r4
 8002354:	d1f9      	bne.n	800234a <__libc_init_array+0xe>
 8002356:	4e09      	ldr	r6, [pc, #36]	; (800237c <__libc_init_array+0x40>)
 8002358:	4d09      	ldr	r5, [pc, #36]	; (8002380 <__libc_init_array+0x44>)
 800235a:	1b76      	subs	r6, r6, r5
 800235c:	f004 feaa 	bl	80070b4 <_init>
 8002360:	10b6      	asrs	r6, r6, #2
 8002362:	d006      	beq.n	8002372 <__libc_init_array+0x36>
 8002364:	2400      	movs	r4, #0
 8002366:	3401      	adds	r4, #1
 8002368:	f855 3b04 	ldr.w	r3, [r5], #4
 800236c:	4798      	blx	r3
 800236e:	42a6      	cmp	r6, r4
 8002370:	d1f9      	bne.n	8002366 <__libc_init_array+0x2a>
 8002372:	bd70      	pop	{r4, r5, r6, pc}
 8002374:	08007480 	.word	0x08007480
 8002378:	08007480 	.word	0x08007480
 800237c:	08007488 	.word	0x08007488
 8002380:	08007480 	.word	0x08007480

08002384 <memset>:
 8002384:	b4f0      	push	{r4, r5, r6, r7}
 8002386:	0786      	lsls	r6, r0, #30
 8002388:	d043      	beq.n	8002412 <memset+0x8e>
 800238a:	1e54      	subs	r4, r2, #1
 800238c:	2a00      	cmp	r2, #0
 800238e:	d03e      	beq.n	800240e <memset+0x8a>
 8002390:	b2ca      	uxtb	r2, r1
 8002392:	4603      	mov	r3, r0
 8002394:	e002      	b.n	800239c <memset+0x18>
 8002396:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800239a:	d338      	bcc.n	800240e <memset+0x8a>
 800239c:	f803 2b01 	strb.w	r2, [r3], #1
 80023a0:	079d      	lsls	r5, r3, #30
 80023a2:	d1f8      	bne.n	8002396 <memset+0x12>
 80023a4:	2c03      	cmp	r4, #3
 80023a6:	d92b      	bls.n	8002400 <memset+0x7c>
 80023a8:	b2cd      	uxtb	r5, r1
 80023aa:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80023ae:	2c0f      	cmp	r4, #15
 80023b0:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80023b4:	d916      	bls.n	80023e4 <memset+0x60>
 80023b6:	f1a4 0710 	sub.w	r7, r4, #16
 80023ba:	093f      	lsrs	r7, r7, #4
 80023bc:	f103 0620 	add.w	r6, r3, #32
 80023c0:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80023c4:	f103 0210 	add.w	r2, r3, #16
 80023c8:	e942 5504 	strd	r5, r5, [r2, #-16]
 80023cc:	e942 5502 	strd	r5, r5, [r2, #-8]
 80023d0:	3210      	adds	r2, #16
 80023d2:	42b2      	cmp	r2, r6
 80023d4:	d1f8      	bne.n	80023c8 <memset+0x44>
 80023d6:	f004 040f 	and.w	r4, r4, #15
 80023da:	3701      	adds	r7, #1
 80023dc:	2c03      	cmp	r4, #3
 80023de:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80023e2:	d90d      	bls.n	8002400 <memset+0x7c>
 80023e4:	461e      	mov	r6, r3
 80023e6:	4622      	mov	r2, r4
 80023e8:	3a04      	subs	r2, #4
 80023ea:	2a03      	cmp	r2, #3
 80023ec:	f846 5b04 	str.w	r5, [r6], #4
 80023f0:	d8fa      	bhi.n	80023e8 <memset+0x64>
 80023f2:	1f22      	subs	r2, r4, #4
 80023f4:	f022 0203 	bic.w	r2, r2, #3
 80023f8:	3204      	adds	r2, #4
 80023fa:	4413      	add	r3, r2
 80023fc:	f004 0403 	and.w	r4, r4, #3
 8002400:	b12c      	cbz	r4, 800240e <memset+0x8a>
 8002402:	b2c9      	uxtb	r1, r1
 8002404:	441c      	add	r4, r3
 8002406:	f803 1b01 	strb.w	r1, [r3], #1
 800240a:	429c      	cmp	r4, r3
 800240c:	d1fb      	bne.n	8002406 <memset+0x82>
 800240e:	bcf0      	pop	{r4, r5, r6, r7}
 8002410:	4770      	bx	lr
 8002412:	4614      	mov	r4, r2
 8002414:	4603      	mov	r3, r0
 8002416:	e7c5      	b.n	80023a4 <memset+0x20>

08002418 <printf>:
 8002418:	b40f      	push	{r0, r1, r2, r3}
 800241a:	b500      	push	{lr}
 800241c:	4907      	ldr	r1, [pc, #28]	; (800243c <printf+0x24>)
 800241e:	b083      	sub	sp, #12
 8002420:	ab04      	add	r3, sp, #16
 8002422:	6808      	ldr	r0, [r1, #0]
 8002424:	f853 2b04 	ldr.w	r2, [r3], #4
 8002428:	6881      	ldr	r1, [r0, #8]
 800242a:	9301      	str	r3, [sp, #4]
 800242c:	f000 f860 	bl	80024f0 <_vfprintf_r>
 8002430:	b003      	add	sp, #12
 8002432:	f85d eb04 	ldr.w	lr, [sp], #4
 8002436:	b004      	add	sp, #16
 8002438:	4770      	bx	lr
 800243a:	bf00      	nop
 800243c:	20000018 	.word	0x20000018

08002440 <_puts_r>:
 8002440:	b570      	push	{r4, r5, r6, lr}
 8002442:	4605      	mov	r5, r0
 8002444:	b088      	sub	sp, #32
 8002446:	4608      	mov	r0, r1
 8002448:	460c      	mov	r4, r1
 800244a:	f7fe f8f9 	bl	8000640 <strlen>
 800244e:	4a22      	ldr	r2, [pc, #136]	; (80024d8 <_puts_r+0x98>)
 8002450:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002452:	9404      	str	r4, [sp, #16]
 8002454:	2601      	movs	r6, #1
 8002456:	1c44      	adds	r4, r0, #1
 8002458:	a904      	add	r1, sp, #16
 800245a:	9206      	str	r2, [sp, #24]
 800245c:	2202      	movs	r2, #2
 800245e:	9403      	str	r4, [sp, #12]
 8002460:	9005      	str	r0, [sp, #20]
 8002462:	68ac      	ldr	r4, [r5, #8]
 8002464:	9607      	str	r6, [sp, #28]
 8002466:	e9cd 1201 	strd	r1, r2, [sp, #4]
 800246a:	b31b      	cbz	r3, 80024b4 <_puts_r+0x74>
 800246c:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800246e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002472:	07ce      	lsls	r6, r1, #31
 8002474:	b29a      	uxth	r2, r3
 8002476:	d401      	bmi.n	800247c <_puts_r+0x3c>
 8002478:	0590      	lsls	r0, r2, #22
 800247a:	d525      	bpl.n	80024c8 <_puts_r+0x88>
 800247c:	0491      	lsls	r1, r2, #18
 800247e:	d406      	bmi.n	800248e <_puts_r+0x4e>
 8002480:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8002482:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002486:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 800248a:	81a3      	strh	r3, [r4, #12]
 800248c:	6662      	str	r2, [r4, #100]	; 0x64
 800248e:	4628      	mov	r0, r5
 8002490:	aa01      	add	r2, sp, #4
 8002492:	4621      	mov	r1, r4
 8002494:	f003 f860 	bl	8005558 <__sfvwrite_r>
 8002498:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800249a:	2800      	cmp	r0, #0
 800249c:	bf0c      	ite	eq
 800249e:	250a      	moveq	r5, #10
 80024a0:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80024a4:	07da      	lsls	r2, r3, #31
 80024a6:	d402      	bmi.n	80024ae <_puts_r+0x6e>
 80024a8:	89a3      	ldrh	r3, [r4, #12]
 80024aa:	059b      	lsls	r3, r3, #22
 80024ac:	d506      	bpl.n	80024bc <_puts_r+0x7c>
 80024ae:	4628      	mov	r0, r5
 80024b0:	b008      	add	sp, #32
 80024b2:	bd70      	pop	{r4, r5, r6, pc}
 80024b4:	4628      	mov	r0, r5
 80024b6:	f002 feb9 	bl	800522c <__sinit>
 80024ba:	e7d7      	b.n	800246c <_puts_r+0x2c>
 80024bc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80024be:	f003 fa07 	bl	80058d0 <__retarget_lock_release_recursive>
 80024c2:	4628      	mov	r0, r5
 80024c4:	b008      	add	sp, #32
 80024c6:	bd70      	pop	{r4, r5, r6, pc}
 80024c8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80024ca:	f003 f9ff 	bl	80058cc <__retarget_lock_acquire_recursive>
 80024ce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80024d2:	b29a      	uxth	r2, r3
 80024d4:	e7d2      	b.n	800247c <_puts_r+0x3c>
 80024d6:	bf00      	nop
 80024d8:	080071ec 	.word	0x080071ec

080024dc <puts>:
 80024dc:	4b02      	ldr	r3, [pc, #8]	; (80024e8 <puts+0xc>)
 80024de:	4601      	mov	r1, r0
 80024e0:	6818      	ldr	r0, [r3, #0]
 80024e2:	f7ff bfad 	b.w	8002440 <_puts_r>
 80024e6:	bf00      	nop
 80024e8:	20000018 	.word	0x20000018
 80024ec:	00000000 	.word	0x00000000

080024f0 <_vfprintf_r>:
 80024f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80024f4:	b0d7      	sub	sp, #348	; 0x15c
 80024f6:	461c      	mov	r4, r3
 80024f8:	4689      	mov	r9, r1
 80024fa:	4617      	mov	r7, r2
 80024fc:	4605      	mov	r5, r0
 80024fe:	9003      	str	r0, [sp, #12]
 8002500:	f003 f9d2 	bl	80058a8 <_localeconv_r>
 8002504:	6803      	ldr	r3, [r0, #0]
 8002506:	9316      	str	r3, [sp, #88]	; 0x58
 8002508:	4618      	mov	r0, r3
 800250a:	f7fe f899 	bl	8000640 <strlen>
 800250e:	9408      	str	r4, [sp, #32]
 8002510:	9015      	str	r0, [sp, #84]	; 0x54
 8002512:	b11d      	cbz	r5, 800251c <_vfprintf_r+0x2c>
 8002514:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002516:	2b00      	cmp	r3, #0
 8002518:	f000 8107 	beq.w	800272a <_vfprintf_r+0x23a>
 800251c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002520:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002524:	07c8      	lsls	r0, r1, #31
 8002526:	b293      	uxth	r3, r2
 8002528:	d402      	bmi.n	8002530 <_vfprintf_r+0x40>
 800252a:	0599      	lsls	r1, r3, #22
 800252c:	f140 811f 	bpl.w	800276e <_vfprintf_r+0x27e>
 8002530:	049e      	lsls	r6, r3, #18
 8002532:	d40a      	bmi.n	800254a <_vfprintf_r+0x5a>
 8002534:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002538:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 800253c:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002540:	f8a9 300c 	strh.w	r3, [r9, #12]
 8002544:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002548:	b29b      	uxth	r3, r3
 800254a:	071d      	lsls	r5, r3, #28
 800254c:	f140 80b2 	bpl.w	80026b4 <_vfprintf_r+0x1c4>
 8002550:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8002554:	2a00      	cmp	r2, #0
 8002556:	f000 80ad 	beq.w	80026b4 <_vfprintf_r+0x1c4>
 800255a:	f003 021a 	and.w	r2, r3, #26
 800255e:	2a0a      	cmp	r2, #10
 8002560:	f000 80c9 	beq.w	80026f6 <_vfprintf_r+0x206>
 8002564:	2300      	movs	r3, #0
 8002566:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002780 <_vfprintf_r+0x290>
 800256a:	9310      	str	r3, [sp, #64]	; 0x40
 800256c:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002570:	9317      	str	r3, [sp, #92]	; 0x5c
 8002572:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8002576:	931b      	str	r3, [sp, #108]	; 0x6c
 8002578:	9318      	str	r3, [sp, #96]	; 0x60
 800257a:	9305      	str	r3, [sp, #20]
 800257c:	ab2d      	add	r3, sp, #180	; 0xb4
 800257e:	932a      	str	r3, [sp, #168]	; 0xa8
 8002580:	469b      	mov	fp, r3
 8002582:	783b      	ldrb	r3, [r7, #0]
 8002584:	f8cd 901c 	str.w	r9, [sp, #28]
 8002588:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800258c:	2b00      	cmp	r3, #0
 800258e:	f000 8259 	beq.w	8002a44 <_vfprintf_r+0x554>
 8002592:	2b25      	cmp	r3, #37	; 0x25
 8002594:	463c      	mov	r4, r7
 8002596:	d102      	bne.n	800259e <_vfprintf_r+0xae>
 8002598:	e01d      	b.n	80025d6 <_vfprintf_r+0xe6>
 800259a:	2b25      	cmp	r3, #37	; 0x25
 800259c:	d003      	beq.n	80025a6 <_vfprintf_r+0xb6>
 800259e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80025a2:	2b00      	cmp	r3, #0
 80025a4:	d1f9      	bne.n	800259a <_vfprintf_r+0xaa>
 80025a6:	1be5      	subs	r5, r4, r7
 80025a8:	b18d      	cbz	r5, 80025ce <_vfprintf_r+0xde>
 80025aa:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80025ae:	3301      	adds	r3, #1
 80025b0:	442a      	add	r2, r5
 80025b2:	2b07      	cmp	r3, #7
 80025b4:	f8cb 7000 	str.w	r7, [fp]
 80025b8:	f8cb 5004 	str.w	r5, [fp, #4]
 80025bc:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80025c0:	f300 80ca 	bgt.w	8002758 <_vfprintf_r+0x268>
 80025c4:	f10b 0b08 	add.w	fp, fp, #8
 80025c8:	9b05      	ldr	r3, [sp, #20]
 80025ca:	442b      	add	r3, r5
 80025cc:	9305      	str	r3, [sp, #20]
 80025ce:	7823      	ldrb	r3, [r4, #0]
 80025d0:	2b00      	cmp	r3, #0
 80025d2:	f000 8237 	beq.w	8002a44 <_vfprintf_r+0x554>
 80025d6:	2300      	movs	r3, #0
 80025d8:	7866      	ldrb	r6, [r4, #1]
 80025da:	9306      	str	r3, [sp, #24]
 80025dc:	4698      	mov	r8, r3
 80025de:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80025e2:	f104 0a01 	add.w	sl, r4, #1
 80025e6:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80025ea:	252b      	movs	r5, #43	; 0x2b
 80025ec:	f10a 0a01 	add.w	sl, sl, #1
 80025f0:	f1a6 0320 	sub.w	r3, r6, #32
 80025f4:	2b5a      	cmp	r3, #90	; 0x5a
 80025f6:	f200 842a 	bhi.w	8002e4e <_vfprintf_r+0x95e>
 80025fa:	e8df f013 	tbh	[pc, r3, lsl #1]
 80025fe:	03aa      	.short	0x03aa
 8002600:	04280428 	.word	0x04280428
 8002604:	0428029c 	.word	0x0428029c
 8002608:	04280428 	.word	0x04280428
 800260c:	042802a7 	.word	0x042802a7
 8002610:	02c60428 	.word	0x02c60428
 8002614:	042802d2 	.word	0x042802d2
 8002618:	02dc02d7 	.word	0x02dc02d7
 800261c:	02f60428 	.word	0x02f60428
 8002620:	026d026d 	.word	0x026d026d
 8002624:	026d026d 	.word	0x026d026d
 8002628:	026d026d 	.word	0x026d026d
 800262c:	026d026d 	.word	0x026d026d
 8002630:	0428026d 	.word	0x0428026d
 8002634:	04280428 	.word	0x04280428
 8002638:	04280428 	.word	0x04280428
 800263c:	04280428 	.word	0x04280428
 8002640:	042802fb 	.word	0x042802fb
 8002644:	03f3033c 	.word	0x03f3033c
 8002648:	02fb02fb 	.word	0x02fb02fb
 800264c:	042802fb 	.word	0x042802fb
 8002650:	04280428 	.word	0x04280428
 8002654:	03ee0428 	.word	0x03ee0428
 8002658:	04280428 	.word	0x04280428
 800265c:	0428009a 	.word	0x0428009a
 8002660:	04280428 	.word	0x04280428
 8002664:	04280350 	.word	0x04280350
 8002668:	04280379 	.word	0x04280379
 800266c:	03900428 	.word	0x03900428
 8002670:	04280428 	.word	0x04280428
 8002674:	04280428 	.word	0x04280428
 8002678:	04280428 	.word	0x04280428
 800267c:	04280428 	.word	0x04280428
 8002680:	042802fb 	.word	0x042802fb
 8002684:	00c5033c 	.word	0x00c5033c
 8002688:	02fb02fb 	.word	0x02fb02fb
 800268c:	03d102fb 	.word	0x03d102fb
 8002690:	007000c5 	.word	0x007000c5
 8002694:	03b50428 	.word	0x03b50428
 8002698:	03c20428 	.word	0x03c20428
 800269c:	03de009c 	.word	0x03de009c
 80026a0:	04280070 	.word	0x04280070
 80026a4:	00720350 	.word	0x00720350
 80026a8:	0428022c 	.word	0x0428022c
 80026ac:	027c0428 	.word	0x027c0428
 80026b0:	00720428 	.word	0x00720428
 80026b4:	4649      	mov	r1, r9
 80026b6:	9803      	ldr	r0, [sp, #12]
 80026b8:	f001 fc9a 	bl	8003ff0 <__swsetup_r>
 80026bc:	b1a0      	cbz	r0, 80026e8 <_vfprintf_r+0x1f8>
 80026be:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80026c2:	07d8      	lsls	r0, r3, #31
 80026c4:	d404      	bmi.n	80026d0 <_vfprintf_r+0x1e0>
 80026c6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80026ca:	0599      	lsls	r1, r3, #22
 80026cc:	f140 83b7 	bpl.w	8002e3e <_vfprintf_r+0x94e>
 80026d0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80026d4:	9305      	str	r3, [sp, #20]
 80026d6:	9805      	ldr	r0, [sp, #20]
 80026d8:	b057      	add	sp, #348	; 0x15c
 80026da:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80026de:	f048 0820 	orr.w	r8, r8, #32
 80026e2:	f89a 6000 	ldrb.w	r6, [sl]
 80026e6:	e781      	b.n	80025ec <_vfprintf_r+0xfc>
 80026e8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80026ec:	f003 021a 	and.w	r2, r3, #26
 80026f0:	2a0a      	cmp	r2, #10
 80026f2:	f47f af37 	bne.w	8002564 <_vfprintf_r+0x74>
 80026f6:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80026fa:	2a00      	cmp	r2, #0
 80026fc:	f6ff af32 	blt.w	8002564 <_vfprintf_r+0x74>
 8002700:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002704:	07d2      	lsls	r2, r2, #31
 8002706:	d405      	bmi.n	8002714 <_vfprintf_r+0x224>
 8002708:	059b      	lsls	r3, r3, #22
 800270a:	d403      	bmi.n	8002714 <_vfprintf_r+0x224>
 800270c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002710:	f003 f8de 	bl	80058d0 <__retarget_lock_release_recursive>
 8002714:	4623      	mov	r3, r4
 8002716:	463a      	mov	r2, r7
 8002718:	4649      	mov	r1, r9
 800271a:	9803      	ldr	r0, [sp, #12]
 800271c:	f001 fc26 	bl	8003f6c <__sbprintf>
 8002720:	9005      	str	r0, [sp, #20]
 8002722:	9805      	ldr	r0, [sp, #20]
 8002724:	b057      	add	sp, #348	; 0x15c
 8002726:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800272a:	9803      	ldr	r0, [sp, #12]
 800272c:	f002 fd7e 	bl	800522c <__sinit>
 8002730:	e6f4      	b.n	800251c <_vfprintf_r+0x2c>
 8002732:	f048 0810 	orr.w	r8, r8, #16
 8002736:	f018 0f20 	tst.w	r8, #32
 800273a:	f000 836c 	beq.w	8002e16 <_vfprintf_r+0x926>
 800273e:	9c08      	ldr	r4, [sp, #32]
 8002740:	3407      	adds	r4, #7
 8002742:	f024 0307 	bic.w	r3, r4, #7
 8002746:	e9d3 4500 	ldrd	r4, r5, [r3]
 800274a:	f103 0208 	add.w	r2, r3, #8
 800274e:	9208      	str	r2, [sp, #32]
 8002750:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002754:	2200      	movs	r2, #0
 8002756:	e18c      	b.n	8002a72 <_vfprintf_r+0x582>
 8002758:	aa2a      	add	r2, sp, #168	; 0xa8
 800275a:	9907      	ldr	r1, [sp, #28]
 800275c:	9803      	ldr	r0, [sp, #12]
 800275e:	f004 f9f5 	bl	8006b4c <__sprint_r>
 8002762:	2800      	cmp	r0, #0
 8002764:	f041 8376 	bne.w	8003e54 <_vfprintf_r+0x1964>
 8002768:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800276c:	e72c      	b.n	80025c8 <_vfprintf_r+0xd8>
 800276e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002772:	f003 f8ab 	bl	80058cc <__retarget_lock_acquire_recursive>
 8002776:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800277a:	b293      	uxth	r3, r2
 800277c:	e6d8      	b.n	8002530 <_vfprintf_r+0x40>
 800277e:	bf00      	nop
	...
 8002788:	4643      	mov	r3, r8
 800278a:	069f      	lsls	r7, r3, #26
 800278c:	f140 832f 	bpl.w	8002dee <_vfprintf_r+0x8fe>
 8002790:	9c08      	ldr	r4, [sp, #32]
 8002792:	3407      	adds	r4, #7
 8002794:	f024 0407 	bic.w	r4, r4, #7
 8002798:	e9d4 0100 	ldrd	r0, r1, [r4]
 800279c:	f104 0208 	add.w	r2, r4, #8
 80027a0:	9208      	str	r2, [sp, #32]
 80027a2:	4604      	mov	r4, r0
 80027a4:	460d      	mov	r5, r1
 80027a6:	2800      	cmp	r0, #0
 80027a8:	f171 0200 	sbcs.w	r2, r1, #0
 80027ac:	da05      	bge.n	80027ba <_vfprintf_r+0x2ca>
 80027ae:	222d      	movs	r2, #45	; 0x2d
 80027b0:	4264      	negs	r4, r4
 80027b2:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80027b6:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80027ba:	aa56      	add	r2, sp, #344	; 0x158
 80027bc:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80027c0:	9204      	str	r2, [sp, #16]
 80027c2:	f000 84b2 	beq.w	800312a <_vfprintf_r+0xc3a>
 80027c6:	2201      	movs	r2, #1
 80027c8:	ea54 0105 	orrs.w	r1, r4, r5
 80027cc:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80027d0:	f040 8159 	bne.w	8002a86 <_vfprintf_r+0x596>
 80027d4:	f1b9 0f00 	cmp.w	r9, #0
 80027d8:	f040 8619 	bne.w	800340e <_vfprintf_r+0xf1e>
 80027dc:	2a00      	cmp	r2, #0
 80027de:	f040 8508 	bne.w	80031f2 <_vfprintf_r+0xd02>
 80027e2:	f013 0301 	ands.w	r3, r3, #1
 80027e6:	af56      	add	r7, sp, #344	; 0x158
 80027e8:	9309      	str	r3, [sp, #36]	; 0x24
 80027ea:	d002      	beq.n	80027f2 <_vfprintf_r+0x302>
 80027ec:	2330      	movs	r3, #48	; 0x30
 80027ee:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80027f2:	2300      	movs	r3, #0
 80027f4:	930a      	str	r3, [sp, #40]	; 0x28
 80027f6:	930f      	str	r3, [sp, #60]	; 0x3c
 80027f8:	9314      	str	r3, [sp, #80]	; 0x50
 80027fa:	9311      	str	r3, [sp, #68]	; 0x44
 80027fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80027fe:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002802:	454b      	cmp	r3, r9
 8002804:	bfb8      	it	lt
 8002806:	464b      	movlt	r3, r9
 8002808:	9304      	str	r3, [sp, #16]
 800280a:	b112      	cbz	r2, 8002812 <_vfprintf_r+0x322>
 800280c:	9b04      	ldr	r3, [sp, #16]
 800280e:	3301      	adds	r3, #1
 8002810:	9304      	str	r3, [sp, #16]
 8002812:	f018 0302 	ands.w	r3, r8, #2
 8002816:	930b      	str	r3, [sp, #44]	; 0x2c
 8002818:	d002      	beq.n	8002820 <_vfprintf_r+0x330>
 800281a:	9b04      	ldr	r3, [sp, #16]
 800281c:	3302      	adds	r3, #2
 800281e:	9304      	str	r3, [sp, #16]
 8002820:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002824:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002826:	930e      	str	r3, [sp, #56]	; 0x38
 8002828:	d13f      	bne.n	80028aa <_vfprintf_r+0x3ba>
 800282a:	9b06      	ldr	r3, [sp, #24]
 800282c:	9904      	ldr	r1, [sp, #16]
 800282e:	1a5d      	subs	r5, r3, r1
 8002830:	2d00      	cmp	r5, #0
 8002832:	dd3a      	ble.n	80028aa <_vfprintf_r+0x3ba>
 8002834:	2d10      	cmp	r5, #16
 8002836:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002838:	dd29      	ble.n	800288e <_vfprintf_r+0x39e>
 800283a:	4659      	mov	r1, fp
 800283c:	4620      	mov	r0, r4
 800283e:	9620      	str	r6, [sp, #128]	; 0x80
 8002840:	2310      	movs	r3, #16
 8002842:	9c03      	ldr	r4, [sp, #12]
 8002844:	9e07      	ldr	r6, [sp, #28]
 8002846:	46bb      	mov	fp, r7
 8002848:	e004      	b.n	8002854 <_vfprintf_r+0x364>
 800284a:	3d10      	subs	r5, #16
 800284c:	2d10      	cmp	r5, #16
 800284e:	f101 0108 	add.w	r1, r1, #8
 8002852:	dd18      	ble.n	8002886 <_vfprintf_r+0x396>
 8002854:	3201      	adds	r2, #1
 8002856:	4fba      	ldr	r7, [pc, #744]	; (8002b40 <_vfprintf_r+0x650>)
 8002858:	3010      	adds	r0, #16
 800285a:	2a07      	cmp	r2, #7
 800285c:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002860:	e9c1 7300 	strd	r7, r3, [r1]
 8002864:	ddf1      	ble.n	800284a <_vfprintf_r+0x35a>
 8002866:	aa2a      	add	r2, sp, #168	; 0xa8
 8002868:	4631      	mov	r1, r6
 800286a:	4620      	mov	r0, r4
 800286c:	930c      	str	r3, [sp, #48]	; 0x30
 800286e:	f004 f96d 	bl	8006b4c <__sprint_r>
 8002872:	2800      	cmp	r0, #0
 8002874:	f040 843d 	bne.w	80030f2 <_vfprintf_r+0xc02>
 8002878:	3d10      	subs	r5, #16
 800287a:	2d10      	cmp	r5, #16
 800287c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002880:	a92d      	add	r1, sp, #180	; 0xb4
 8002882:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002884:	dce6      	bgt.n	8002854 <_vfprintf_r+0x364>
 8002886:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002888:	465f      	mov	r7, fp
 800288a:	4604      	mov	r4, r0
 800288c:	468b      	mov	fp, r1
 800288e:	3201      	adds	r2, #1
 8002890:	4bab      	ldr	r3, [pc, #684]	; (8002b40 <_vfprintf_r+0x650>)
 8002892:	442c      	add	r4, r5
 8002894:	2a07      	cmp	r2, #7
 8002896:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800289a:	e9cb 3500 	strd	r3, r5, [fp]
 800289e:	f300 84ff 	bgt.w	80032a0 <_vfprintf_r+0xdb0>
 80028a2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80028a6:	f10b 0b08 	add.w	fp, fp, #8
 80028aa:	b172      	cbz	r2, 80028ca <_vfprintf_r+0x3da>
 80028ac:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80028ae:	3201      	adds	r2, #1
 80028b0:	3401      	adds	r4, #1
 80028b2:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80028b6:	2101      	movs	r1, #1
 80028b8:	2a07      	cmp	r2, #7
 80028ba:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028be:	e9cb 0100 	strd	r0, r1, [fp]
 80028c2:	f300 8418 	bgt.w	80030f6 <_vfprintf_r+0xc06>
 80028c6:	f10b 0b08 	add.w	fp, fp, #8
 80028ca:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80028cc:	b16b      	cbz	r3, 80028ea <_vfprintf_r+0x3fa>
 80028ce:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80028d0:	3301      	adds	r3, #1
 80028d2:	3402      	adds	r4, #2
 80028d4:	a923      	add	r1, sp, #140	; 0x8c
 80028d6:	2202      	movs	r2, #2
 80028d8:	2b07      	cmp	r3, #7
 80028da:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80028de:	e9cb 1200 	strd	r1, r2, [fp]
 80028e2:	f300 8415 	bgt.w	8003110 <_vfprintf_r+0xc20>
 80028e6:	f10b 0b08 	add.w	fp, fp, #8
 80028ea:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80028ec:	2b80      	cmp	r3, #128	; 0x80
 80028ee:	f000 8331 	beq.w	8002f54 <_vfprintf_r+0xa64>
 80028f2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80028f4:	eba9 0503 	sub.w	r5, r9, r3
 80028f8:	2d00      	cmp	r5, #0
 80028fa:	dd37      	ble.n	800296c <_vfprintf_r+0x47c>
 80028fc:	2d10      	cmp	r5, #16
 80028fe:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002900:	4b90      	ldr	r3, [pc, #576]	; (8002b44 <_vfprintf_r+0x654>)
 8002902:	dd28      	ble.n	8002956 <_vfprintf_r+0x466>
 8002904:	4659      	mov	r1, fp
 8002906:	4620      	mov	r0, r4
 8002908:	46bb      	mov	fp, r7
 800290a:	f04f 0910 	mov.w	r9, #16
 800290e:	4637      	mov	r7, r6
 8002910:	461c      	mov	r4, r3
 8002912:	9e07      	ldr	r6, [sp, #28]
 8002914:	e004      	b.n	8002920 <_vfprintf_r+0x430>
 8002916:	3d10      	subs	r5, #16
 8002918:	2d10      	cmp	r5, #16
 800291a:	f101 0108 	add.w	r1, r1, #8
 800291e:	dd15      	ble.n	800294c <_vfprintf_r+0x45c>
 8002920:	3201      	adds	r2, #1
 8002922:	3010      	adds	r0, #16
 8002924:	2a07      	cmp	r2, #7
 8002926:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 800292a:	e9c1 4900 	strd	r4, r9, [r1]
 800292e:	ddf2      	ble.n	8002916 <_vfprintf_r+0x426>
 8002930:	aa2a      	add	r2, sp, #168	; 0xa8
 8002932:	4631      	mov	r1, r6
 8002934:	9803      	ldr	r0, [sp, #12]
 8002936:	f004 f909 	bl	8006b4c <__sprint_r>
 800293a:	2800      	cmp	r0, #0
 800293c:	f040 83d9 	bne.w	80030f2 <_vfprintf_r+0xc02>
 8002940:	3d10      	subs	r5, #16
 8002942:	2d10      	cmp	r5, #16
 8002944:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002948:	a92d      	add	r1, sp, #180	; 0xb4
 800294a:	dce9      	bgt.n	8002920 <_vfprintf_r+0x430>
 800294c:	463e      	mov	r6, r7
 800294e:	4623      	mov	r3, r4
 8002950:	465f      	mov	r7, fp
 8002952:	4604      	mov	r4, r0
 8002954:	468b      	mov	fp, r1
 8002956:	3201      	adds	r2, #1
 8002958:	442c      	add	r4, r5
 800295a:	2a07      	cmp	r2, #7
 800295c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002960:	e9cb 3500 	strd	r3, r5, [fp]
 8002964:	f300 83ef 	bgt.w	8003146 <_vfprintf_r+0xc56>
 8002968:	f10b 0b08 	add.w	fp, fp, #8
 800296c:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002970:	f040 8280 	bne.w	8002e74 <_vfprintf_r+0x984>
 8002974:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002976:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002978:	f8cb 7000 	str.w	r7, [fp]
 800297c:	3301      	adds	r3, #1
 800297e:	4414      	add	r4, r2
 8002980:	2b07      	cmp	r3, #7
 8002982:	942c      	str	r4, [sp, #176]	; 0xb0
 8002984:	f8cb 2004 	str.w	r2, [fp, #4]
 8002988:	932b      	str	r3, [sp, #172]	; 0xac
 800298a:	f300 8392 	bgt.w	80030b2 <_vfprintf_r+0xbc2>
 800298e:	f10b 0b08 	add.w	fp, fp, #8
 8002992:	f018 0f04 	tst.w	r8, #4
 8002996:	d03b      	beq.n	8002a10 <_vfprintf_r+0x520>
 8002998:	9b06      	ldr	r3, [sp, #24]
 800299a:	9a04      	ldr	r2, [sp, #16]
 800299c:	1a9d      	subs	r5, r3, r2
 800299e:	2d00      	cmp	r5, #0
 80029a0:	dd36      	ble.n	8002a10 <_vfprintf_r+0x520>
 80029a2:	2d10      	cmp	r5, #16
 80029a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80029a6:	dd21      	ble.n	80029ec <_vfprintf_r+0x4fc>
 80029a8:	2610      	movs	r6, #16
 80029aa:	9f03      	ldr	r7, [sp, #12]
 80029ac:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80029b0:	e004      	b.n	80029bc <_vfprintf_r+0x4cc>
 80029b2:	3d10      	subs	r5, #16
 80029b4:	2d10      	cmp	r5, #16
 80029b6:	f10b 0b08 	add.w	fp, fp, #8
 80029ba:	dd17      	ble.n	80029ec <_vfprintf_r+0x4fc>
 80029bc:	3301      	adds	r3, #1
 80029be:	4a60      	ldr	r2, [pc, #384]	; (8002b40 <_vfprintf_r+0x650>)
 80029c0:	3410      	adds	r4, #16
 80029c2:	2b07      	cmp	r3, #7
 80029c4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80029c8:	e9cb 2600 	strd	r2, r6, [fp]
 80029cc:	ddf1      	ble.n	80029b2 <_vfprintf_r+0x4c2>
 80029ce:	aa2a      	add	r2, sp, #168	; 0xa8
 80029d0:	4641      	mov	r1, r8
 80029d2:	4638      	mov	r0, r7
 80029d4:	f004 f8ba 	bl	8006b4c <__sprint_r>
 80029d8:	2800      	cmp	r0, #0
 80029da:	f040 856c 	bne.w	80034b6 <_vfprintf_r+0xfc6>
 80029de:	3d10      	subs	r5, #16
 80029e0:	2d10      	cmp	r5, #16
 80029e2:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80029e6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80029ea:	dce7      	bgt.n	80029bc <_vfprintf_r+0x4cc>
 80029ec:	3301      	adds	r3, #1
 80029ee:	4a54      	ldr	r2, [pc, #336]	; (8002b40 <_vfprintf_r+0x650>)
 80029f0:	442c      	add	r4, r5
 80029f2:	2b07      	cmp	r3, #7
 80029f4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80029f8:	e9cb 2500 	strd	r2, r5, [fp]
 80029fc:	dd08      	ble.n	8002a10 <_vfprintf_r+0x520>
 80029fe:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a00:	9907      	ldr	r1, [sp, #28]
 8002a02:	9803      	ldr	r0, [sp, #12]
 8002a04:	f004 f8a2 	bl	8006b4c <__sprint_r>
 8002a08:	2800      	cmp	r0, #0
 8002a0a:	f040 82e9 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8002a0e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002a10:	9904      	ldr	r1, [sp, #16]
 8002a12:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002a16:	428a      	cmp	r2, r1
 8002a18:	bfac      	ite	ge
 8002a1a:	189b      	addge	r3, r3, r2
 8002a1c:	185b      	addlt	r3, r3, r1
 8002a1e:	9305      	str	r3, [sp, #20]
 8002a20:	2c00      	cmp	r4, #0
 8002a22:	f040 82d5 	bne.w	8002fd0 <_vfprintf_r+0xae0>
 8002a26:	2300      	movs	r3, #0
 8002a28:	932b      	str	r3, [sp, #172]	; 0xac
 8002a2a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002a2c:	b11b      	cbz	r3, 8002a36 <_vfprintf_r+0x546>
 8002a2e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002a30:	9803      	ldr	r0, [sp, #12]
 8002a32:	f002 fc9d 	bl	8005370 <_free_r>
 8002a36:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002a3a:	4657      	mov	r7, sl
 8002a3c:	783b      	ldrb	r3, [r7, #0]
 8002a3e:	2b00      	cmp	r3, #0
 8002a40:	f47f ada7 	bne.w	8002592 <_vfprintf_r+0xa2>
 8002a44:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002a46:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002a4a:	2b00      	cmp	r3, #0
 8002a4c:	f041 80e7 	bne.w	8003c1e <_vfprintf_r+0x172e>
 8002a50:	2300      	movs	r3, #0
 8002a52:	932b      	str	r3, [sp, #172]	; 0xac
 8002a54:	e2cb      	b.n	8002fee <_vfprintf_r+0xafe>
 8002a56:	4643      	mov	r3, r8
 8002a58:	069a      	lsls	r2, r3, #26
 8002a5a:	f140 814e 	bpl.w	8002cfa <_vfprintf_r+0x80a>
 8002a5e:	9c08      	ldr	r4, [sp, #32]
 8002a60:	3407      	adds	r4, #7
 8002a62:	f024 0207 	bic.w	r2, r4, #7
 8002a66:	f102 0108 	add.w	r1, r2, #8
 8002a6a:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002a6e:	9108      	str	r1, [sp, #32]
 8002a70:	2201      	movs	r2, #1
 8002a72:	2100      	movs	r1, #0
 8002a74:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002a78:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a7c:	a956      	add	r1, sp, #344	; 0x158
 8002a7e:	9104      	str	r1, [sp, #16]
 8002a80:	f47f aea2 	bne.w	80027c8 <_vfprintf_r+0x2d8>
 8002a84:	4698      	mov	r8, r3
 8002a86:	2a01      	cmp	r2, #1
 8002a88:	f000 8350 	beq.w	800312c <_vfprintf_r+0xc3c>
 8002a8c:	2a02      	cmp	r2, #2
 8002a8e:	f000 831b 	beq.w	80030c8 <_vfprintf_r+0xbd8>
 8002a92:	a956      	add	r1, sp, #344	; 0x158
 8002a94:	e000      	b.n	8002a98 <_vfprintf_r+0x5a8>
 8002a96:	4639      	mov	r1, r7
 8002a98:	08e2      	lsrs	r2, r4, #3
 8002a9a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002a9e:	08e8      	lsrs	r0, r5, #3
 8002aa0:	f004 0307 	and.w	r3, r4, #7
 8002aa4:	4605      	mov	r5, r0
 8002aa6:	4614      	mov	r4, r2
 8002aa8:	3330      	adds	r3, #48	; 0x30
 8002aaa:	ea54 0205 	orrs.w	r2, r4, r5
 8002aae:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002ab2:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002ab6:	d1ee      	bne.n	8002a96 <_vfprintf_r+0x5a6>
 8002ab8:	f018 0f01 	tst.w	r8, #1
 8002abc:	f000 8314 	beq.w	80030e8 <_vfprintf_r+0xbf8>
 8002ac0:	2b30      	cmp	r3, #48	; 0x30
 8002ac2:	f000 8311 	beq.w	80030e8 <_vfprintf_r+0xbf8>
 8002ac6:	9a04      	ldr	r2, [sp, #16]
 8002ac8:	3902      	subs	r1, #2
 8002aca:	2330      	movs	r3, #48	; 0x30
 8002acc:	1a52      	subs	r2, r2, r1
 8002ace:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002ad2:	9209      	str	r2, [sp, #36]	; 0x24
 8002ad4:	460f      	mov	r7, r1
 8002ad6:	e68c      	b.n	80027f2 <_vfprintf_r+0x302>
 8002ad8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002adc:	2200      	movs	r2, #0
 8002ade:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002ae2:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002ae6:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002aea:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002aee:	2b09      	cmp	r3, #9
 8002af0:	d9f5      	bls.n	8002ade <_vfprintf_r+0x5ee>
 8002af2:	9206      	str	r2, [sp, #24]
 8002af4:	e57c      	b.n	80025f0 <_vfprintf_r+0x100>
 8002af6:	4b14      	ldr	r3, [pc, #80]	; (8002b48 <_vfprintf_r+0x658>)
 8002af8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002afa:	f018 0f20 	tst.w	r8, #32
 8002afe:	f000 8114 	beq.w	8002d2a <_vfprintf_r+0x83a>
 8002b02:	9c08      	ldr	r4, [sp, #32]
 8002b04:	3407      	adds	r4, #7
 8002b06:	f024 0307 	bic.w	r3, r4, #7
 8002b0a:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002b0e:	f103 0208 	add.w	r2, r3, #8
 8002b12:	9208      	str	r2, [sp, #32]
 8002b14:	f018 0f01 	tst.w	r8, #1
 8002b18:	d009      	beq.n	8002b2e <_vfprintf_r+0x63e>
 8002b1a:	ea54 0305 	orrs.w	r3, r4, r5
 8002b1e:	d006      	beq.n	8002b2e <_vfprintf_r+0x63e>
 8002b20:	2330      	movs	r3, #48	; 0x30
 8002b22:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002b26:	f048 0802 	orr.w	r8, r8, #2
 8002b2a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002b2e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002b32:	2202      	movs	r2, #2
 8002b34:	e79d      	b.n	8002a72 <_vfprintf_r+0x582>
 8002b36:	f048 0801 	orr.w	r8, r8, #1
 8002b3a:	f89a 6000 	ldrb.w	r6, [sl]
 8002b3e:	e555      	b.n	80025ec <_vfprintf_r+0xfc>
 8002b40:	08007234 	.word	0x08007234
 8002b44:	08007244 	.word	0x08007244
 8002b48:	08007200 	.word	0x08007200
 8002b4c:	9e03      	ldr	r6, [sp, #12]
 8002b4e:	4630      	mov	r0, r6
 8002b50:	f002 feaa 	bl	80058a8 <_localeconv_r>
 8002b54:	6843      	ldr	r3, [r0, #4]
 8002b56:	9318      	str	r3, [sp, #96]	; 0x60
 8002b58:	4618      	mov	r0, r3
 8002b5a:	f7fd fd71 	bl	8000640 <strlen>
 8002b5e:	901b      	str	r0, [sp, #108]	; 0x6c
 8002b60:	4604      	mov	r4, r0
 8002b62:	4630      	mov	r0, r6
 8002b64:	f002 fea0 	bl	80058a8 <_localeconv_r>
 8002b68:	6883      	ldr	r3, [r0, #8]
 8002b6a:	931a      	str	r3, [sp, #104]	; 0x68
 8002b6c:	2c00      	cmp	r4, #0
 8002b6e:	f43f adb8 	beq.w	80026e2 <_vfprintf_r+0x1f2>
 8002b72:	f89a 6000 	ldrb.w	r6, [sl]
 8002b76:	2b00      	cmp	r3, #0
 8002b78:	f43f ad38 	beq.w	80025ec <_vfprintf_r+0xfc>
 8002b7c:	781b      	ldrb	r3, [r3, #0]
 8002b7e:	2b00      	cmp	r3, #0
 8002b80:	f43f ad34 	beq.w	80025ec <_vfprintf_r+0xfc>
 8002b84:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002b88:	e530      	b.n	80025ec <_vfprintf_r+0xfc>
 8002b8a:	9b08      	ldr	r3, [sp, #32]
 8002b8c:	f89a 6000 	ldrb.w	r6, [sl]
 8002b90:	681a      	ldr	r2, [r3, #0]
 8002b92:	9206      	str	r2, [sp, #24]
 8002b94:	2a00      	cmp	r2, #0
 8002b96:	f103 0304 	add.w	r3, r3, #4
 8002b9a:	f2c0 8697 	blt.w	80038cc <_vfprintf_r+0x13dc>
 8002b9e:	9308      	str	r3, [sp, #32]
 8002ba0:	e524      	b.n	80025ec <_vfprintf_r+0xfc>
 8002ba2:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002ba6:	f89a 6000 	ldrb.w	r6, [sl]
 8002baa:	e51f      	b.n	80025ec <_vfprintf_r+0xfc>
 8002bac:	f89a 6000 	ldrb.w	r6, [sl]
 8002bb0:	f048 0804 	orr.w	r8, r8, #4
 8002bb4:	e51a      	b.n	80025ec <_vfprintf_r+0xfc>
 8002bb6:	f89a 6000 	ldrb.w	r6, [sl]
 8002bba:	2e2a      	cmp	r6, #42	; 0x2a
 8002bbc:	f10a 0201 	add.w	r2, sl, #1
 8002bc0:	f001 81b0 	beq.w	8003f24 <_vfprintf_r+0x1a34>
 8002bc4:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002bc8:	2b09      	cmp	r3, #9
 8002bca:	4692      	mov	sl, r2
 8002bcc:	f04f 0900 	mov.w	r9, #0
 8002bd0:	f63f ad0e 	bhi.w	80025f0 <_vfprintf_r+0x100>
 8002bd4:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002bd8:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002bdc:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002be0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002be4:	2b09      	cmp	r3, #9
 8002be6:	d9f5      	bls.n	8002bd4 <_vfprintf_r+0x6e4>
 8002be8:	e502      	b.n	80025f0 <_vfprintf_r+0x100>
 8002bea:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002bee:	f89a 6000 	ldrb.w	r6, [sl]
 8002bf2:	e4fb      	b.n	80025ec <_vfprintf_r+0xfc>
 8002bf4:	9c08      	ldr	r4, [sp, #32]
 8002bf6:	3407      	adds	r4, #7
 8002bf8:	f024 0407 	bic.w	r4, r4, #7
 8002bfc:	ed94 7b00 	vldr	d7, [r4]
 8002c00:	ec52 1b17 	vmov	r1, r2, d7
 8002c04:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002c08:	931d      	str	r3, [sp, #116]	; 0x74
 8002c0a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002c0e:	3408      	adds	r4, #8
 8002c10:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002c14:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002c18:	4bba      	ldr	r3, [pc, #744]	; (8002f04 <_vfprintf_r+0xa14>)
 8002c1a:	9408      	str	r4, [sp, #32]
 8002c1c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002c20:	f7fe fa24 	bl	800106c <__aeabi_dcmpun>
 8002c24:	2800      	cmp	r0, #0
 8002c26:	f040 846f 	bne.w	8003508 <_vfprintf_r+0x1018>
 8002c2a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002c2e:	4bb5      	ldr	r3, [pc, #724]	; (8002f04 <_vfprintf_r+0xa14>)
 8002c30:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002c34:	f7fe f9fc 	bl	8001030 <__aeabi_dcmple>
 8002c38:	2800      	cmp	r0, #0
 8002c3a:	f040 8465 	bne.w	8003508 <_vfprintf_r+0x1018>
 8002c3e:	2200      	movs	r2, #0
 8002c40:	2300      	movs	r3, #0
 8002c42:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002c46:	f7fe f9e9 	bl	800101c <__aeabi_dcmplt>
 8002c4a:	2800      	cmp	r0, #0
 8002c4c:	f040 855b 	bne.w	8003706 <_vfprintf_r+0x1216>
 8002c50:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c54:	4fac      	ldr	r7, [pc, #688]	; (8002f08 <_vfprintf_r+0xa18>)
 8002c56:	4bad      	ldr	r3, [pc, #692]	; (8002f0c <_vfprintf_r+0xa1c>)
 8002c58:	2000      	movs	r0, #0
 8002c5a:	2103      	movs	r1, #3
 8002c5c:	9104      	str	r1, [sp, #16]
 8002c5e:	900a      	str	r0, [sp, #40]	; 0x28
 8002c60:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002c64:	2e47      	cmp	r6, #71	; 0x47
 8002c66:	bfd8      	it	le
 8002c68:	461f      	movle	r7, r3
 8002c6a:	9109      	str	r1, [sp, #36]	; 0x24
 8002c6c:	4681      	mov	r9, r0
 8002c6e:	900f      	str	r0, [sp, #60]	; 0x3c
 8002c70:	9014      	str	r0, [sp, #80]	; 0x50
 8002c72:	9011      	str	r0, [sp, #68]	; 0x44
 8002c74:	e5c9      	b.n	800280a <_vfprintf_r+0x31a>
 8002c76:	9808      	ldr	r0, [sp, #32]
 8002c78:	2300      	movs	r3, #0
 8002c7a:	6801      	ldr	r1, [r0, #0]
 8002c7c:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002c80:	461a      	mov	r2, r3
 8002c82:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002c86:	2301      	movs	r3, #1
 8002c88:	1d01      	adds	r1, r0, #4
 8002c8a:	9304      	str	r3, [sp, #16]
 8002c8c:	920a      	str	r2, [sp, #40]	; 0x28
 8002c8e:	4691      	mov	r9, r2
 8002c90:	920f      	str	r2, [sp, #60]	; 0x3c
 8002c92:	9214      	str	r2, [sp, #80]	; 0x50
 8002c94:	9211      	str	r2, [sp, #68]	; 0x44
 8002c96:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002c9a:	af3d      	add	r7, sp, #244	; 0xf4
 8002c9c:	e5b9      	b.n	8002812 <_vfprintf_r+0x322>
 8002c9e:	9b08      	ldr	r3, [sp, #32]
 8002ca0:	681f      	ldr	r7, [r3, #0]
 8002ca2:	2500      	movs	r5, #0
 8002ca4:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002ca8:	1d1c      	adds	r4, r3, #4
 8002caa:	2f00      	cmp	r7, #0
 8002cac:	f000 8639 	beq.w	8003922 <_vfprintf_r+0x1432>
 8002cb0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002cb4:	f000 8711 	beq.w	8003ada <_vfprintf_r+0x15ea>
 8002cb8:	464a      	mov	r2, r9
 8002cba:	4629      	mov	r1, r5
 8002cbc:	4638      	mov	r0, r7
 8002cbe:	f7fd fd2f 	bl	8000720 <memchr>
 8002cc2:	900a      	str	r0, [sp, #40]	; 0x28
 8002cc4:	2800      	cmp	r0, #0
 8002cc6:	f000 85e7 	beq.w	8003898 <_vfprintf_r+0x13a8>
 8002cca:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002ccc:	1bdb      	subs	r3, r3, r7
 8002cce:	9309      	str	r3, [sp, #36]	; 0x24
 8002cd0:	46a9      	mov	r9, r5
 8002cd2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002cd6:	9408      	str	r4, [sp, #32]
 8002cd8:	9304      	str	r3, [sp, #16]
 8002cda:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002cde:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002ce2:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002ce6:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002cea:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002cee:	e58c      	b.n	800280a <_vfprintf_r+0x31a>
 8002cf0:	f048 0310 	orr.w	r3, r8, #16
 8002cf4:	069a      	lsls	r2, r3, #26
 8002cf6:	f53f aeb2 	bmi.w	8002a5e <_vfprintf_r+0x56e>
 8002cfa:	9a08      	ldr	r2, [sp, #32]
 8002cfc:	06df      	lsls	r7, r3, #27
 8002cfe:	f102 0104 	add.w	r1, r2, #4
 8002d02:	f100 837e 	bmi.w	8003402 <_vfprintf_r+0xf12>
 8002d06:	065d      	lsls	r5, r3, #25
 8002d08:	9a08      	ldr	r2, [sp, #32]
 8002d0a:	f100 84e4 	bmi.w	80036d6 <_vfprintf_r+0x11e6>
 8002d0e:	059c      	lsls	r4, r3, #22
 8002d10:	f140 8377 	bpl.w	8003402 <_vfprintf_r+0xf12>
 8002d14:	7814      	ldrb	r4, [r2, #0]
 8002d16:	9108      	str	r1, [sp, #32]
 8002d18:	2500      	movs	r5, #0
 8002d1a:	2201      	movs	r2, #1
 8002d1c:	e6a9      	b.n	8002a72 <_vfprintf_r+0x582>
 8002d1e:	4b7c      	ldr	r3, [pc, #496]	; (8002f10 <_vfprintf_r+0xa20>)
 8002d20:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d22:	f018 0f20 	tst.w	r8, #32
 8002d26:	f47f aeec 	bne.w	8002b02 <_vfprintf_r+0x612>
 8002d2a:	9a08      	ldr	r2, [sp, #32]
 8002d2c:	f018 0f10 	tst.w	r8, #16
 8002d30:	f102 0304 	add.w	r3, r2, #4
 8002d34:	f040 8354 	bne.w	80033e0 <_vfprintf_r+0xef0>
 8002d38:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d3c:	9a08      	ldr	r2, [sp, #32]
 8002d3e:	f040 84d0 	bne.w	80036e2 <_vfprintf_r+0x11f2>
 8002d42:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002d46:	f000 834b 	beq.w	80033e0 <_vfprintf_r+0xef0>
 8002d4a:	7814      	ldrb	r4, [r2, #0]
 8002d4c:	9308      	str	r3, [sp, #32]
 8002d4e:	2500      	movs	r5, #0
 8002d50:	e6e0      	b.n	8002b14 <_vfprintf_r+0x624>
 8002d52:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002d56:	f89a 6000 	ldrb.w	r6, [sl]
 8002d5a:	2b00      	cmp	r3, #0
 8002d5c:	f47f ac46 	bne.w	80025ec <_vfprintf_r+0xfc>
 8002d60:	2320      	movs	r3, #32
 8002d62:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002d66:	e441      	b.n	80025ec <_vfprintf_r+0xfc>
 8002d68:	f89a 6000 	ldrb.w	r6, [sl]
 8002d6c:	2e6c      	cmp	r6, #108	; 0x6c
 8002d6e:	bf03      	ittte	eq
 8002d70:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002d74:	f048 0820 	orreq.w	r8, r8, #32
 8002d78:	f10a 0a01 	addeq.w	sl, sl, #1
 8002d7c:	f048 0810 	orrne.w	r8, r8, #16
 8002d80:	e434      	b.n	80025ec <_vfprintf_r+0xfc>
 8002d82:	9a08      	ldr	r2, [sp, #32]
 8002d84:	f018 0f20 	tst.w	r8, #32
 8002d88:	f852 3b04 	ldr.w	r3, [r2], #4
 8002d8c:	9208      	str	r2, [sp, #32]
 8002d8e:	f000 83a1 	beq.w	80034d4 <_vfprintf_r+0xfe4>
 8002d92:	9a05      	ldr	r2, [sp, #20]
 8002d94:	4610      	mov	r0, r2
 8002d96:	17d1      	asrs	r1, r2, #31
 8002d98:	e9c3 0100 	strd	r0, r1, [r3]
 8002d9c:	4657      	mov	r7, sl
 8002d9e:	e64d      	b.n	8002a3c <_vfprintf_r+0x54c>
 8002da0:	f89a 6000 	ldrb.w	r6, [sl]
 8002da4:	2e68      	cmp	r6, #104	; 0x68
 8002da6:	bf03      	ittte	eq
 8002da8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002dac:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002db0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002db4:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002db8:	e418      	b.n	80025ec <_vfprintf_r+0xfc>
 8002dba:	9908      	ldr	r1, [sp, #32]
 8002dbc:	4b55      	ldr	r3, [pc, #340]	; (8002f14 <_vfprintf_r+0xa24>)
 8002dbe:	680c      	ldr	r4, [r1, #0]
 8002dc0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002dc2:	f647 0230 	movw	r2, #30768	; 0x7830
 8002dc6:	3104      	adds	r1, #4
 8002dc8:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002dcc:	f048 0302 	orr.w	r3, r8, #2
 8002dd0:	9108      	str	r1, [sp, #32]
 8002dd2:	2500      	movs	r5, #0
 8002dd4:	2202      	movs	r2, #2
 8002dd6:	2678      	movs	r6, #120	; 0x78
 8002dd8:	e64b      	b.n	8002a72 <_vfprintf_r+0x582>
 8002dda:	f048 0808 	orr.w	r8, r8, #8
 8002dde:	f89a 6000 	ldrb.w	r6, [sl]
 8002de2:	e403      	b.n	80025ec <_vfprintf_r+0xfc>
 8002de4:	f048 0310 	orr.w	r3, r8, #16
 8002de8:	069f      	lsls	r7, r3, #26
 8002dea:	f53f acd1 	bmi.w	8002790 <_vfprintf_r+0x2a0>
 8002dee:	9908      	ldr	r1, [sp, #32]
 8002df0:	06dd      	lsls	r5, r3, #27
 8002df2:	f101 0204 	add.w	r2, r1, #4
 8002df6:	f100 82fd 	bmi.w	80033f4 <_vfprintf_r+0xf04>
 8002dfa:	065c      	lsls	r4, r3, #25
 8002dfc:	9908      	ldr	r1, [sp, #32]
 8002dfe:	f100 8475 	bmi.w	80036ec <_vfprintf_r+0x11fc>
 8002e02:	0598      	lsls	r0, r3, #22
 8002e04:	f140 82f6 	bpl.w	80033f4 <_vfprintf_r+0xf04>
 8002e08:	f991 4000 	ldrsb.w	r4, [r1]
 8002e0c:	9208      	str	r2, [sp, #32]
 8002e0e:	17e5      	asrs	r5, r4, #31
 8002e10:	4620      	mov	r0, r4
 8002e12:	4629      	mov	r1, r5
 8002e14:	e4c7      	b.n	80027a6 <_vfprintf_r+0x2b6>
 8002e16:	9a08      	ldr	r2, [sp, #32]
 8002e18:	f018 0f10 	tst.w	r8, #16
 8002e1c:	f102 0304 	add.w	r3, r2, #4
 8002e20:	f040 82e3 	bne.w	80033ea <_vfprintf_r+0xefa>
 8002e24:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002e28:	9a08      	ldr	r2, [sp, #32]
 8002e2a:	f040 8467 	bne.w	80036fc <_vfprintf_r+0x120c>
 8002e2e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002e32:	f000 82da 	beq.w	80033ea <_vfprintf_r+0xefa>
 8002e36:	7814      	ldrb	r4, [r2, #0]
 8002e38:	9308      	str	r3, [sp, #32]
 8002e3a:	2500      	movs	r5, #0
 8002e3c:	e488      	b.n	8002750 <_vfprintf_r+0x260>
 8002e3e:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002e42:	f002 fd45 	bl	80058d0 <__retarget_lock_release_recursive>
 8002e46:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002e4a:	9305      	str	r3, [sp, #20]
 8002e4c:	e443      	b.n	80026d6 <_vfprintf_r+0x1e6>
 8002e4e:	2e00      	cmp	r6, #0
 8002e50:	f43f adf8 	beq.w	8002a44 <_vfprintf_r+0x554>
 8002e54:	2300      	movs	r3, #0
 8002e56:	2101      	movs	r1, #1
 8002e58:	461a      	mov	r2, r3
 8002e5a:	9104      	str	r1, [sp, #16]
 8002e5c:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002e60:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002e64:	930a      	str	r3, [sp, #40]	; 0x28
 8002e66:	4699      	mov	r9, r3
 8002e68:	930f      	str	r3, [sp, #60]	; 0x3c
 8002e6a:	9314      	str	r3, [sp, #80]	; 0x50
 8002e6c:	9311      	str	r3, [sp, #68]	; 0x44
 8002e6e:	9109      	str	r1, [sp, #36]	; 0x24
 8002e70:	af3d      	add	r7, sp, #244	; 0xf4
 8002e72:	e4ce      	b.n	8002812 <_vfprintf_r+0x322>
 8002e74:	2e65      	cmp	r6, #101	; 0x65
 8002e76:	f340 80ca 	ble.w	800300e <_vfprintf_r+0xb1e>
 8002e7a:	2200      	movs	r2, #0
 8002e7c:	2300      	movs	r3, #0
 8002e7e:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e82:	f7fe f8c1 	bl	8001008 <__aeabi_dcmpeq>
 8002e86:	2800      	cmp	r0, #0
 8002e88:	f000 8169 	beq.w	800315e <_vfprintf_r+0xc6e>
 8002e8c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002e8e:	4a22      	ldr	r2, [pc, #136]	; (8002f18 <_vfprintf_r+0xa28>)
 8002e90:	f8cb 2000 	str.w	r2, [fp]
 8002e94:	3301      	adds	r3, #1
 8002e96:	3401      	adds	r4, #1
 8002e98:	2201      	movs	r2, #1
 8002e9a:	2b07      	cmp	r3, #7
 8002e9c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002ea0:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ea4:	f300 8406 	bgt.w	80036b4 <_vfprintf_r+0x11c4>
 8002ea8:	f10b 0b08 	add.w	fp, fp, #8
 8002eac:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002eae:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002eb0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002eb2:	4293      	cmp	r3, r2
 8002eb4:	db03      	blt.n	8002ebe <_vfprintf_r+0x9ce>
 8002eb6:	f018 0f01 	tst.w	r8, #1
 8002eba:	f43f ad6a 	beq.w	8002992 <_vfprintf_r+0x4a2>
 8002ebe:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ec0:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002ec2:	f8cb 2000 	str.w	r2, [fp]
 8002ec6:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002ec8:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ecc:	3301      	adds	r3, #1
 8002ece:	4414      	add	r4, r2
 8002ed0:	2b07      	cmp	r3, #7
 8002ed2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002ed6:	f300 8517 	bgt.w	8003908 <_vfprintf_r+0x1418>
 8002eda:	f10b 0b08 	add.w	fp, fp, #8
 8002ede:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002ee0:	1e5d      	subs	r5, r3, #1
 8002ee2:	2d00      	cmp	r5, #0
 8002ee4:	f77f ad55 	ble.w	8002992 <_vfprintf_r+0x4a2>
 8002ee8:	2d10      	cmp	r5, #16
 8002eea:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002eec:	4b0b      	ldr	r3, [pc, #44]	; (8002f1c <_vfprintf_r+0xa2c>)
 8002eee:	f340 82e7 	ble.w	80034c0 <_vfprintf_r+0xfd0>
 8002ef2:	4619      	mov	r1, r3
 8002ef4:	2610      	movs	r6, #16
 8002ef6:	4623      	mov	r3, r4
 8002ef8:	9f03      	ldr	r7, [sp, #12]
 8002efa:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002efe:	460c      	mov	r4, r1
 8002f00:	e014      	b.n	8002f2c <_vfprintf_r+0xa3c>
 8002f02:	bf00      	nop
 8002f04:	7fefffff 	.word	0x7fefffff
 8002f08:	080071f4 	.word	0x080071f4
 8002f0c:	080071f0 	.word	0x080071f0
 8002f10:	08007214 	.word	0x08007214
 8002f14:	08007200 	.word	0x08007200
 8002f18:	08007230 	.word	0x08007230
 8002f1c:	08007244 	.word	0x08007244
 8002f20:	f10b 0b08 	add.w	fp, fp, #8
 8002f24:	3d10      	subs	r5, #16
 8002f26:	2d10      	cmp	r5, #16
 8002f28:	f340 82c7 	ble.w	80034ba <_vfprintf_r+0xfca>
 8002f2c:	3201      	adds	r2, #1
 8002f2e:	3310      	adds	r3, #16
 8002f30:	2a07      	cmp	r2, #7
 8002f32:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002f36:	e9cb 4600 	strd	r4, r6, [fp]
 8002f3a:	ddf1      	ble.n	8002f20 <_vfprintf_r+0xa30>
 8002f3c:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f3e:	4649      	mov	r1, r9
 8002f40:	4638      	mov	r0, r7
 8002f42:	f003 fe03 	bl	8006b4c <__sprint_r>
 8002f46:	2800      	cmp	r0, #0
 8002f48:	d14c      	bne.n	8002fe4 <_vfprintf_r+0xaf4>
 8002f4a:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002f4e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f52:	e7e7      	b.n	8002f24 <_vfprintf_r+0xa34>
 8002f54:	9b06      	ldr	r3, [sp, #24]
 8002f56:	9a04      	ldr	r2, [sp, #16]
 8002f58:	1a9d      	subs	r5, r3, r2
 8002f5a:	2d00      	cmp	r5, #0
 8002f5c:	f77f acc9 	ble.w	80028f2 <_vfprintf_r+0x402>
 8002f60:	2d10      	cmp	r5, #16
 8002f62:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f64:	4bbc      	ldr	r3, [pc, #752]	; (8003258 <_vfprintf_r+0xd68>)
 8002f66:	dd27      	ble.n	8002fb8 <_vfprintf_r+0xac8>
 8002f68:	4659      	mov	r1, fp
 8002f6a:	4620      	mov	r0, r4
 8002f6c:	46bb      	mov	fp, r7
 8002f6e:	461c      	mov	r4, r3
 8002f70:	4637      	mov	r7, r6
 8002f72:	9e07      	ldr	r6, [sp, #28]
 8002f74:	e004      	b.n	8002f80 <_vfprintf_r+0xa90>
 8002f76:	3d10      	subs	r5, #16
 8002f78:	2d10      	cmp	r5, #16
 8002f7a:	f101 0108 	add.w	r1, r1, #8
 8002f7e:	dd16      	ble.n	8002fae <_vfprintf_r+0xabe>
 8002f80:	3201      	adds	r2, #1
 8002f82:	3010      	adds	r0, #16
 8002f84:	2310      	movs	r3, #16
 8002f86:	2a07      	cmp	r2, #7
 8002f88:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002f8c:	600c      	str	r4, [r1, #0]
 8002f8e:	604b      	str	r3, [r1, #4]
 8002f90:	ddf1      	ble.n	8002f76 <_vfprintf_r+0xa86>
 8002f92:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f94:	4631      	mov	r1, r6
 8002f96:	9803      	ldr	r0, [sp, #12]
 8002f98:	f003 fdd8 	bl	8006b4c <__sprint_r>
 8002f9c:	2800      	cmp	r0, #0
 8002f9e:	f040 80a8 	bne.w	80030f2 <_vfprintf_r+0xc02>
 8002fa2:	3d10      	subs	r5, #16
 8002fa4:	2d10      	cmp	r5, #16
 8002fa6:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002faa:	a92d      	add	r1, sp, #180	; 0xb4
 8002fac:	dce8      	bgt.n	8002f80 <_vfprintf_r+0xa90>
 8002fae:	463e      	mov	r6, r7
 8002fb0:	4623      	mov	r3, r4
 8002fb2:	465f      	mov	r7, fp
 8002fb4:	4604      	mov	r4, r0
 8002fb6:	468b      	mov	fp, r1
 8002fb8:	3201      	adds	r2, #1
 8002fba:	442c      	add	r4, r5
 8002fbc:	2a07      	cmp	r2, #7
 8002fbe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002fc2:	e9cb 3500 	strd	r3, r5, [fp]
 8002fc6:	f300 8292 	bgt.w	80034ee <_vfprintf_r+0xffe>
 8002fca:	f10b 0b08 	add.w	fp, fp, #8
 8002fce:	e490      	b.n	80028f2 <_vfprintf_r+0x402>
 8002fd0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fd2:	9907      	ldr	r1, [sp, #28]
 8002fd4:	9803      	ldr	r0, [sp, #12]
 8002fd6:	f003 fdb9 	bl	8006b4c <__sprint_r>
 8002fda:	2800      	cmp	r0, #0
 8002fdc:	f43f ad23 	beq.w	8002a26 <_vfprintf_r+0x536>
 8002fe0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002fe4:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002fe6:	b111      	cbz	r1, 8002fee <_vfprintf_r+0xafe>
 8002fe8:	9803      	ldr	r0, [sp, #12]
 8002fea:	f002 f9c1 	bl	8005370 <_free_r>
 8002fee:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002ff2:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002ff6:	07d0      	lsls	r0, r2, #31
 8002ff8:	d402      	bmi.n	8003000 <_vfprintf_r+0xb10>
 8002ffa:	0599      	lsls	r1, r3, #22
 8002ffc:	f140 81d0 	bpl.w	80033a0 <_vfprintf_r+0xeb0>
 8003000:	065a      	lsls	r2, r3, #25
 8003002:	f53f ab65 	bmi.w	80026d0 <_vfprintf_r+0x1e0>
 8003006:	9805      	ldr	r0, [sp, #20]
 8003008:	b057      	add	sp, #348	; 0x15c
 800300a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800300e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003010:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003012:	2a01      	cmp	r2, #1
 8003014:	f104 0401 	add.w	r4, r4, #1
 8003018:	f103 0501 	add.w	r5, r3, #1
 800301c:	f10b 0608 	add.w	r6, fp, #8
 8003020:	f340 811c 	ble.w	800325c <_vfprintf_r+0xd6c>
 8003024:	2301      	movs	r3, #1
 8003026:	2d07      	cmp	r5, #7
 8003028:	f8cb 7000 	str.w	r7, [fp]
 800302c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003030:	f8cb 3004 	str.w	r3, [fp, #4]
 8003034:	f300 81bb 	bgt.w	80033ae <_vfprintf_r+0xebe>
 8003038:	9b15      	ldr	r3, [sp, #84]	; 0x54
 800303a:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800303c:	1c69      	adds	r1, r5, #1
 800303e:	441c      	add	r4, r3
 8003040:	2907      	cmp	r1, #7
 8003042:	910b      	str	r1, [sp, #44]	; 0x2c
 8003044:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003048:	e9c6 2300 	strd	r2, r3, [r6]
 800304c:	f300 81bb 	bgt.w	80033c6 <_vfprintf_r+0xed6>
 8003050:	3608      	adds	r6, #8
 8003052:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003054:	1c53      	adds	r3, r2, #1
 8003056:	461d      	mov	r5, r3
 8003058:	9509      	str	r5, [sp, #36]	; 0x24
 800305a:	9d10      	ldr	r5, [sp, #64]	; 0x40
 800305c:	930e      	str	r3, [sp, #56]	; 0x38
 800305e:	2200      	movs	r2, #0
 8003060:	2300      	movs	r3, #0
 8003062:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003066:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 800306a:	f106 0b08 	add.w	fp, r6, #8
 800306e:	f7fd ffcb 	bl	8001008 <__aeabi_dcmpeq>
 8003072:	2800      	cmp	r0, #0
 8003074:	f040 80c2 	bne.w	80031fc <_vfprintf_r+0xd0c>
 8003078:	9d09      	ldr	r5, [sp, #36]	; 0x24
 800307a:	f8c6 9004 	str.w	r9, [r6, #4]
 800307e:	3701      	adds	r7, #1
 8003080:	444c      	add	r4, r9
 8003082:	2d07      	cmp	r5, #7
 8003084:	6037      	str	r7, [r6, #0]
 8003086:	942c      	str	r4, [sp, #176]	; 0xb0
 8003088:	952b      	str	r5, [sp, #172]	; 0xac
 800308a:	f300 80f9 	bgt.w	8003280 <_vfprintf_r+0xd90>
 800308e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003090:	f106 0310 	add.w	r3, r6, #16
 8003094:	3202      	adds	r2, #2
 8003096:	465e      	mov	r6, fp
 8003098:	9209      	str	r2, [sp, #36]	; 0x24
 800309a:	469b      	mov	fp, r3
 800309c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800309e:	6072      	str	r2, [r6, #4]
 80030a0:	4414      	add	r4, r2
 80030a2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80030a4:	942c      	str	r4, [sp, #176]	; 0xb0
 80030a6:	ab26      	add	r3, sp, #152	; 0x98
 80030a8:	2a07      	cmp	r2, #7
 80030aa:	922b      	str	r2, [sp, #172]	; 0xac
 80030ac:	6033      	str	r3, [r6, #0]
 80030ae:	f77f ac70 	ble.w	8002992 <_vfprintf_r+0x4a2>
 80030b2:	aa2a      	add	r2, sp, #168	; 0xa8
 80030b4:	9907      	ldr	r1, [sp, #28]
 80030b6:	9803      	ldr	r0, [sp, #12]
 80030b8:	f003 fd48 	bl	8006b4c <__sprint_r>
 80030bc:	2800      	cmp	r0, #0
 80030be:	d18f      	bne.n	8002fe0 <_vfprintf_r+0xaf0>
 80030c0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030c2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030c6:	e464      	b.n	8002992 <_vfprintf_r+0x4a2>
 80030c8:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80030ca:	af56      	add	r7, sp, #344	; 0x158
 80030cc:	0923      	lsrs	r3, r4, #4
 80030ce:	f004 010f 	and.w	r1, r4, #15
 80030d2:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80030d6:	092a      	lsrs	r2, r5, #4
 80030d8:	461c      	mov	r4, r3
 80030da:	4615      	mov	r5, r2
 80030dc:	5c43      	ldrb	r3, [r0, r1]
 80030de:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80030e2:	ea54 0305 	orrs.w	r3, r4, r5
 80030e6:	d1f1      	bne.n	80030cc <_vfprintf_r+0xbdc>
 80030e8:	9b04      	ldr	r3, [sp, #16]
 80030ea:	1bdb      	subs	r3, r3, r7
 80030ec:	9309      	str	r3, [sp, #36]	; 0x24
 80030ee:	f7ff bb80 	b.w	80027f2 <_vfprintf_r+0x302>
 80030f2:	46b1      	mov	r9, r6
 80030f4:	e776      	b.n	8002fe4 <_vfprintf_r+0xaf4>
 80030f6:	aa2a      	add	r2, sp, #168	; 0xa8
 80030f8:	9907      	ldr	r1, [sp, #28]
 80030fa:	9803      	ldr	r0, [sp, #12]
 80030fc:	f003 fd26 	bl	8006b4c <__sprint_r>
 8003100:	2800      	cmp	r0, #0
 8003102:	f47f af6d 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8003106:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003108:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800310c:	f7ff bbdd 	b.w	80028ca <_vfprintf_r+0x3da>
 8003110:	aa2a      	add	r2, sp, #168	; 0xa8
 8003112:	9907      	ldr	r1, [sp, #28]
 8003114:	9803      	ldr	r0, [sp, #12]
 8003116:	f003 fd19 	bl	8006b4c <__sprint_r>
 800311a:	2800      	cmp	r0, #0
 800311c:	f47f af60 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8003120:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003122:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003126:	f7ff bbe0 	b.w	80028ea <_vfprintf_r+0x3fa>
 800312a:	4698      	mov	r8, r3
 800312c:	2d00      	cmp	r5, #0
 800312e:	bf08      	it	eq
 8003130:	2c0a      	cmpeq	r4, #10
 8003132:	f080 8170 	bcs.w	8003416 <_vfprintf_r+0xf26>
 8003136:	af56      	add	r7, sp, #344	; 0x158
 8003138:	3430      	adds	r4, #48	; 0x30
 800313a:	2301      	movs	r3, #1
 800313c:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003140:	9309      	str	r3, [sp, #36]	; 0x24
 8003142:	f7ff bb56 	b.w	80027f2 <_vfprintf_r+0x302>
 8003146:	aa2a      	add	r2, sp, #168	; 0xa8
 8003148:	9907      	ldr	r1, [sp, #28]
 800314a:	9803      	ldr	r0, [sp, #12]
 800314c:	f003 fcfe 	bl	8006b4c <__sprint_r>
 8003150:	2800      	cmp	r0, #0
 8003152:	f47f af45 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8003156:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003158:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800315c:	e406      	b.n	800296c <_vfprintf_r+0x47c>
 800315e:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003160:	2b00      	cmp	r3, #0
 8003162:	f340 8273 	ble.w	800364c <_vfprintf_r+0x115c>
 8003166:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 800316a:	4293      	cmp	r3, r2
 800316c:	bfa8      	it	ge
 800316e:	4613      	movge	r3, r2
 8003170:	2b00      	cmp	r3, #0
 8003172:	461d      	mov	r5, r3
 8003174:	dd0d      	ble.n	8003192 <_vfprintf_r+0xca2>
 8003176:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003178:	f8cb 7000 	str.w	r7, [fp]
 800317c:	3301      	adds	r3, #1
 800317e:	442c      	add	r4, r5
 8003180:	2b07      	cmp	r3, #7
 8003182:	942c      	str	r4, [sp, #176]	; 0xb0
 8003184:	f8cb 5004 	str.w	r5, [fp, #4]
 8003188:	932b      	str	r3, [sp, #172]	; 0xac
 800318a:	f300 82c1 	bgt.w	8003710 <_vfprintf_r+0x1220>
 800318e:	f10b 0b08 	add.w	fp, fp, #8
 8003192:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003194:	2d00      	cmp	r5, #0
 8003196:	bfa8      	it	ge
 8003198:	1b5b      	subge	r3, r3, r5
 800319a:	2b00      	cmp	r3, #0
 800319c:	461d      	mov	r5, r3
 800319e:	f340 8099 	ble.w	80032d4 <_vfprintf_r+0xde4>
 80031a2:	2d10      	cmp	r5, #16
 80031a4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031a6:	4b2c      	ldr	r3, [pc, #176]	; (8003258 <_vfprintf_r+0xd68>)
 80031a8:	f340 83db 	ble.w	8003962 <_vfprintf_r+0x1472>
 80031ac:	4618      	mov	r0, r3
 80031ae:	4621      	mov	r1, r4
 80031b0:	465b      	mov	r3, fp
 80031b2:	2610      	movs	r6, #16
 80031b4:	46bb      	mov	fp, r7
 80031b6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80031ba:	9c07      	ldr	r4, [sp, #28]
 80031bc:	4607      	mov	r7, r0
 80031be:	e004      	b.n	80031ca <_vfprintf_r+0xcda>
 80031c0:	3308      	adds	r3, #8
 80031c2:	3d10      	subs	r5, #16
 80031c4:	2d10      	cmp	r5, #16
 80031c6:	f340 83c7 	ble.w	8003958 <_vfprintf_r+0x1468>
 80031ca:	3201      	adds	r2, #1
 80031cc:	3110      	adds	r1, #16
 80031ce:	2a07      	cmp	r2, #7
 80031d0:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80031d4:	e9c3 7600 	strd	r7, r6, [r3]
 80031d8:	ddf2      	ble.n	80031c0 <_vfprintf_r+0xcd0>
 80031da:	aa2a      	add	r2, sp, #168	; 0xa8
 80031dc:	4621      	mov	r1, r4
 80031de:	4648      	mov	r0, r9
 80031e0:	f003 fcb4 	bl	8006b4c <__sprint_r>
 80031e4:	2800      	cmp	r0, #0
 80031e6:	f040 84a5 	bne.w	8003b34 <_vfprintf_r+0x1644>
 80031ea:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80031ee:	ab2d      	add	r3, sp, #180	; 0xb4
 80031f0:	e7e7      	b.n	80031c2 <_vfprintf_r+0xcd2>
 80031f2:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80031f6:	af56      	add	r7, sp, #344	; 0x158
 80031f8:	f7ff bafb 	b.w	80027f2 <_vfprintf_r+0x302>
 80031fc:	f1b9 0f00 	cmp.w	r9, #0
 8003200:	f77f af4c 	ble.w	800309c <_vfprintf_r+0xbac>
 8003204:	f1b9 0f10 	cmp.w	r9, #16
 8003208:	4b13      	ldr	r3, [pc, #76]	; (8003258 <_vfprintf_r+0xd68>)
 800320a:	f340 8659 	ble.w	8003ec0 <_vfprintf_r+0x19d0>
 800320e:	4619      	mov	r1, r3
 8003210:	4622      	mov	r2, r4
 8003212:	4633      	mov	r3, r6
 8003214:	2710      	movs	r7, #16
 8003216:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800321a:	9c07      	ldr	r4, [sp, #28]
 800321c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800321e:	460e      	mov	r6, r1
 8003220:	e007      	b.n	8003232 <_vfprintf_r+0xd42>
 8003222:	3308      	adds	r3, #8
 8003224:	f1a9 0910 	sub.w	r9, r9, #16
 8003228:	f1b9 0f10 	cmp.w	r9, #16
 800322c:	f340 8353 	ble.w	80038d6 <_vfprintf_r+0x13e6>
 8003230:	3501      	adds	r5, #1
 8003232:	3210      	adds	r2, #16
 8003234:	2d07      	cmp	r5, #7
 8003236:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 800323a:	e9c3 6700 	strd	r6, r7, [r3]
 800323e:	ddf0      	ble.n	8003222 <_vfprintf_r+0xd32>
 8003240:	aa2a      	add	r2, sp, #168	; 0xa8
 8003242:	4621      	mov	r1, r4
 8003244:	4658      	mov	r0, fp
 8003246:	f003 fc81 	bl	8006b4c <__sprint_r>
 800324a:	2800      	cmp	r0, #0
 800324c:	f040 8472 	bne.w	8003b34 <_vfprintf_r+0x1644>
 8003250:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 8003254:	ab2d      	add	r3, sp, #180	; 0xb4
 8003256:	e7e5      	b.n	8003224 <_vfprintf_r+0xd34>
 8003258:	08007244 	.word	0x08007244
 800325c:	f018 0f01 	tst.w	r8, #1
 8003260:	f47f aee0 	bne.w	8003024 <_vfprintf_r+0xb34>
 8003264:	2201      	movs	r2, #1
 8003266:	2d07      	cmp	r5, #7
 8003268:	f8cb 7000 	str.w	r7, [fp]
 800326c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003270:	f8cb 2004 	str.w	r2, [fp, #4]
 8003274:	dc04      	bgt.n	8003280 <_vfprintf_r+0xd90>
 8003276:	3302      	adds	r3, #2
 8003278:	9309      	str	r3, [sp, #36]	; 0x24
 800327a:	f10b 0b10 	add.w	fp, fp, #16
 800327e:	e70d      	b.n	800309c <_vfprintf_r+0xbac>
 8003280:	aa2a      	add	r2, sp, #168	; 0xa8
 8003282:	9907      	ldr	r1, [sp, #28]
 8003284:	9803      	ldr	r0, [sp, #12]
 8003286:	f003 fc61 	bl	8006b4c <__sprint_r>
 800328a:	2800      	cmp	r0, #0
 800328c:	f47f aea8 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8003290:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003294:	3301      	adds	r3, #1
 8003296:	9309      	str	r3, [sp, #36]	; 0x24
 8003298:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800329c:	ae2d      	add	r6, sp, #180	; 0xb4
 800329e:	e6fd      	b.n	800309c <_vfprintf_r+0xbac>
 80032a0:	aa2a      	add	r2, sp, #168	; 0xa8
 80032a2:	9907      	ldr	r1, [sp, #28]
 80032a4:	9803      	ldr	r0, [sp, #12]
 80032a6:	f003 fc51 	bl	8006b4c <__sprint_r>
 80032aa:	2800      	cmp	r0, #0
 80032ac:	f47f ae98 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 80032b0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80032b4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032b6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032ba:	f7ff baf6 	b.w	80028aa <_vfprintf_r+0x3ba>
 80032be:	aa2a      	add	r2, sp, #168	; 0xa8
 80032c0:	9907      	ldr	r1, [sp, #28]
 80032c2:	9803      	ldr	r0, [sp, #12]
 80032c4:	f003 fc42 	bl	8006b4c <__sprint_r>
 80032c8:	2800      	cmp	r0, #0
 80032ca:	f47f ae89 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 80032ce:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032d4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80032d6:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80032da:	443b      	add	r3, r7
 80032dc:	4699      	mov	r9, r3
 80032de:	f040 8357 	bne.w	8003990 <_vfprintf_r+0x14a0>
 80032e2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80032e4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80032e6:	4293      	cmp	r3, r2
 80032e8:	db49      	blt.n	800337e <_vfprintf_r+0xe8e>
 80032ea:	f018 0f01 	tst.w	r8, #1
 80032ee:	d146      	bne.n	800337e <_vfprintf_r+0xe8e>
 80032f0:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80032f2:	18bd      	adds	r5, r7, r2
 80032f4:	eba5 0509 	sub.w	r5, r5, r9
 80032f8:	1ad3      	subs	r3, r2, r3
 80032fa:	429d      	cmp	r5, r3
 80032fc:	bfa8      	it	ge
 80032fe:	461d      	movge	r5, r3
 8003300:	2d00      	cmp	r5, #0
 8003302:	dd0d      	ble.n	8003320 <_vfprintf_r+0xe30>
 8003304:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003306:	f8cb 9000 	str.w	r9, [fp]
 800330a:	3201      	adds	r2, #1
 800330c:	442c      	add	r4, r5
 800330e:	2a07      	cmp	r2, #7
 8003310:	942c      	str	r4, [sp, #176]	; 0xb0
 8003312:	f8cb 5004 	str.w	r5, [fp, #4]
 8003316:	922b      	str	r2, [sp, #172]	; 0xac
 8003318:	f300 8462 	bgt.w	8003be0 <_vfprintf_r+0x16f0>
 800331c:	f10b 0b08 	add.w	fp, fp, #8
 8003320:	2d00      	cmp	r5, #0
 8003322:	bfac      	ite	ge
 8003324:	1b5d      	subge	r5, r3, r5
 8003326:	461d      	movlt	r5, r3
 8003328:	2d00      	cmp	r5, #0
 800332a:	f77f ab32 	ble.w	8002992 <_vfprintf_r+0x4a2>
 800332e:	2d10      	cmp	r5, #16
 8003330:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003332:	4bc5      	ldr	r3, [pc, #788]	; (8003648 <_vfprintf_r+0x1158>)
 8003334:	f340 80c4 	ble.w	80034c0 <_vfprintf_r+0xfd0>
 8003338:	4619      	mov	r1, r3
 800333a:	2610      	movs	r6, #16
 800333c:	4623      	mov	r3, r4
 800333e:	9f03      	ldr	r7, [sp, #12]
 8003340:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003344:	460c      	mov	r4, r1
 8003346:	e005      	b.n	8003354 <_vfprintf_r+0xe64>
 8003348:	f10b 0b08 	add.w	fp, fp, #8
 800334c:	3d10      	subs	r5, #16
 800334e:	2d10      	cmp	r5, #16
 8003350:	f340 80b3 	ble.w	80034ba <_vfprintf_r+0xfca>
 8003354:	3201      	adds	r2, #1
 8003356:	3310      	adds	r3, #16
 8003358:	2a07      	cmp	r2, #7
 800335a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800335e:	e9cb 4600 	strd	r4, r6, [fp]
 8003362:	ddf1      	ble.n	8003348 <_vfprintf_r+0xe58>
 8003364:	aa2a      	add	r2, sp, #168	; 0xa8
 8003366:	4649      	mov	r1, r9
 8003368:	4638      	mov	r0, r7
 800336a:	f003 fbef 	bl	8006b4c <__sprint_r>
 800336e:	2800      	cmp	r0, #0
 8003370:	f47f ae38 	bne.w	8002fe4 <_vfprintf_r+0xaf4>
 8003374:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003378:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800337c:	e7e6      	b.n	800334c <_vfprintf_r+0xe5c>
 800337e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003380:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003382:	f8cb 1000 	str.w	r1, [fp]
 8003386:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003388:	f8cb 1004 	str.w	r1, [fp, #4]
 800338c:	3201      	adds	r2, #1
 800338e:	440c      	add	r4, r1
 8003390:	2a07      	cmp	r2, #7
 8003392:	942c      	str	r4, [sp, #176]	; 0xb0
 8003394:	922b      	str	r2, [sp, #172]	; 0xac
 8003396:	f300 828c 	bgt.w	80038b2 <_vfprintf_r+0x13c2>
 800339a:	f10b 0b08 	add.w	fp, fp, #8
 800339e:	e7a7      	b.n	80032f0 <_vfprintf_r+0xe00>
 80033a0:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80033a4:	f002 fa94 	bl	80058d0 <__retarget_lock_release_recursive>
 80033a8:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80033ac:	e628      	b.n	8003000 <_vfprintf_r+0xb10>
 80033ae:	aa2a      	add	r2, sp, #168	; 0xa8
 80033b0:	9907      	ldr	r1, [sp, #28]
 80033b2:	9803      	ldr	r0, [sp, #12]
 80033b4:	f003 fbca 	bl	8006b4c <__sprint_r>
 80033b8:	2800      	cmp	r0, #0
 80033ba:	f47f ae11 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 80033be:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80033c2:	ae2d      	add	r6, sp, #180	; 0xb4
 80033c4:	e638      	b.n	8003038 <_vfprintf_r+0xb48>
 80033c6:	aa2a      	add	r2, sp, #168	; 0xa8
 80033c8:	9907      	ldr	r1, [sp, #28]
 80033ca:	9803      	ldr	r0, [sp, #12]
 80033cc:	f003 fbbe 	bl	8006b4c <__sprint_r>
 80033d0:	2800      	cmp	r0, #0
 80033d2:	f47f ae05 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 80033d6:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80033da:	ae2d      	add	r6, sp, #180	; 0xb4
 80033dc:	930b      	str	r3, [sp, #44]	; 0x2c
 80033de:	e638      	b.n	8003052 <_vfprintf_r+0xb62>
 80033e0:	6814      	ldr	r4, [r2, #0]
 80033e2:	9308      	str	r3, [sp, #32]
 80033e4:	2500      	movs	r5, #0
 80033e6:	f7ff bb95 	b.w	8002b14 <_vfprintf_r+0x624>
 80033ea:	6814      	ldr	r4, [r2, #0]
 80033ec:	9308      	str	r3, [sp, #32]
 80033ee:	2500      	movs	r5, #0
 80033f0:	f7ff b9ae 	b.w	8002750 <_vfprintf_r+0x260>
 80033f4:	680c      	ldr	r4, [r1, #0]
 80033f6:	9208      	str	r2, [sp, #32]
 80033f8:	17e5      	asrs	r5, r4, #31
 80033fa:	4620      	mov	r0, r4
 80033fc:	4629      	mov	r1, r5
 80033fe:	f7ff b9d2 	b.w	80027a6 <_vfprintf_r+0x2b6>
 8003402:	6814      	ldr	r4, [r2, #0]
 8003404:	9108      	str	r1, [sp, #32]
 8003406:	2201      	movs	r2, #1
 8003408:	2500      	movs	r5, #0
 800340a:	f7ff bb32 	b.w	8002a72 <_vfprintf_r+0x582>
 800340e:	2a01      	cmp	r2, #1
 8003410:	f47f ab3c 	bne.w	8002a8c <_vfprintf_r+0x59c>
 8003414:	e68f      	b.n	8003136 <_vfprintf_r+0xc46>
 8003416:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800341a:	2200      	movs	r2, #0
 800341c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003420:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003424:	af56      	add	r7, sp, #344	; 0x158
 8003426:	4692      	mov	sl, r2
 8003428:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800342c:	461e      	mov	r6, r3
 800342e:	e00a      	b.n	8003446 <_vfprintf_r+0xf56>
 8003430:	2300      	movs	r3, #0
 8003432:	4620      	mov	r0, r4
 8003434:	4629      	mov	r1, r5
 8003436:	220a      	movs	r2, #10
 8003438:	f7fc fee2 	bl	8000200 <__aeabi_uldivmod>
 800343c:	4604      	mov	r4, r0
 800343e:	460d      	mov	r5, r1
 8003440:	ea54 0305 	orrs.w	r3, r4, r5
 8003444:	d029      	beq.n	800349a <_vfprintf_r+0xfaa>
 8003446:	220a      	movs	r2, #10
 8003448:	2300      	movs	r3, #0
 800344a:	4620      	mov	r0, r4
 800344c:	4629      	mov	r1, r5
 800344e:	f7fc fed7 	bl	8000200 <__aeabi_uldivmod>
 8003452:	3230      	adds	r2, #48	; 0x30
 8003454:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003458:	f10a 0a01 	add.w	sl, sl, #1
 800345c:	3f01      	subs	r7, #1
 800345e:	2e00      	cmp	r6, #0
 8003460:	d0e6      	beq.n	8003430 <_vfprintf_r+0xf40>
 8003462:	f898 3000 	ldrb.w	r3, [r8]
 8003466:	459a      	cmp	sl, r3
 8003468:	d1e2      	bne.n	8003430 <_vfprintf_r+0xf40>
 800346a:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 800346e:	d0df      	beq.n	8003430 <_vfprintf_r+0xf40>
 8003470:	2d00      	cmp	r5, #0
 8003472:	bf08      	it	eq
 8003474:	2c0a      	cmpeq	r4, #10
 8003476:	d3db      	bcc.n	8003430 <_vfprintf_r+0xf40>
 8003478:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 800347a:	9918      	ldr	r1, [sp, #96]	; 0x60
 800347c:	1aff      	subs	r7, r7, r3
 800347e:	461a      	mov	r2, r3
 8003480:	4638      	mov	r0, r7
 8003482:	f003 faf5 	bl	8006a70 <strncpy>
 8003486:	f898 3001 	ldrb.w	r3, [r8, #1]
 800348a:	2b00      	cmp	r3, #0
 800348c:	f000 8496 	beq.w	8003dbc <_vfprintf_r+0x18cc>
 8003490:	f108 0801 	add.w	r8, r8, #1
 8003494:	f04f 0a00 	mov.w	sl, #0
 8003498:	e7ca      	b.n	8003430 <_vfprintf_r+0xf40>
 800349a:	9b04      	ldr	r3, [sp, #16]
 800349c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80034a0:	1bdb      	subs	r3, r3, r7
 80034a2:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80034a6:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80034a8:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80034ac:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80034b0:	9309      	str	r3, [sp, #36]	; 0x24
 80034b2:	f7ff b99e 	b.w	80027f2 <_vfprintf_r+0x302>
 80034b6:	46c1      	mov	r9, r8
 80034b8:	e594      	b.n	8002fe4 <_vfprintf_r+0xaf4>
 80034ba:	4621      	mov	r1, r4
 80034bc:	461c      	mov	r4, r3
 80034be:	460b      	mov	r3, r1
 80034c0:	3201      	adds	r2, #1
 80034c2:	442c      	add	r4, r5
 80034c4:	2a07      	cmp	r2, #7
 80034c6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80034ca:	e9cb 3500 	strd	r3, r5, [fp]
 80034ce:	f77f aa5e 	ble.w	800298e <_vfprintf_r+0x49e>
 80034d2:	e5ee      	b.n	80030b2 <_vfprintf_r+0xbc2>
 80034d4:	f018 0f10 	tst.w	r8, #16
 80034d8:	f040 80f8 	bne.w	80036cc <_vfprintf_r+0x11dc>
 80034dc:	f018 0f40 	tst.w	r8, #64	; 0x40
 80034e0:	f000 8351 	beq.w	8003b86 <_vfprintf_r+0x1696>
 80034e4:	9a05      	ldr	r2, [sp, #20]
 80034e6:	801a      	strh	r2, [r3, #0]
 80034e8:	4657      	mov	r7, sl
 80034ea:	f7ff baa7 	b.w	8002a3c <_vfprintf_r+0x54c>
 80034ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80034f0:	9907      	ldr	r1, [sp, #28]
 80034f2:	9803      	ldr	r0, [sp, #12]
 80034f4:	f003 fb2a 	bl	8006b4c <__sprint_r>
 80034f8:	2800      	cmp	r0, #0
 80034fa:	f47f ad71 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 80034fe:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003500:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003504:	f7ff b9f5 	b.w	80028f2 <_vfprintf_r+0x402>
 8003508:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800350c:	4602      	mov	r2, r0
 800350e:	460b      	mov	r3, r1
 8003510:	f7fd fdac 	bl	800106c <__aeabi_dcmpun>
 8003514:	2800      	cmp	r0, #0
 8003516:	f040 8491 	bne.w	8003e3c <_vfprintf_r+0x194c>
 800351a:	2e61      	cmp	r6, #97	; 0x61
 800351c:	f000 8111 	beq.w	8003742 <_vfprintf_r+0x1252>
 8003520:	2e41      	cmp	r6, #65	; 0x41
 8003522:	f000 8377 	beq.w	8003c14 <_vfprintf_r+0x1724>
 8003526:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800352a:	f026 0220 	bic.w	r2, r6, #32
 800352e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8003532:	930e      	str	r3, [sp, #56]	; 0x38
 8003534:	9204      	str	r2, [sp, #16]
 8003536:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003538:	f000 842d 	beq.w	8003d96 <_vfprintf_r+0x18a6>
 800353c:	2a47      	cmp	r2, #71	; 0x47
 800353e:	f000 8424 	beq.w	8003d8a <_vfprintf_r+0x189a>
 8003542:	2b00      	cmp	r3, #0
 8003544:	f2c0 82f9 	blt.w	8003b3a <_vfprintf_r+0x164a>
 8003548:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800354c:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003550:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003554:	2e66      	cmp	r6, #102	; 0x66
 8003556:	f000 83eb 	beq.w	8003d30 <_vfprintf_r+0x1840>
 800355a:	2e46      	cmp	r6, #70	; 0x46
 800355c:	f000 847e 	beq.w	8003e5c <_vfprintf_r+0x196c>
 8003560:	9b04      	ldr	r3, [sp, #16]
 8003562:	9803      	ldr	r0, [sp, #12]
 8003564:	2b45      	cmp	r3, #69	; 0x45
 8003566:	bf0c      	ite	eq
 8003568:	f109 0501 	addeq.w	r5, r9, #1
 800356c:	464d      	movne	r5, r9
 800356e:	aa28      	add	r2, sp, #160	; 0xa0
 8003570:	ab25      	add	r3, sp, #148	; 0x94
 8003572:	e9cd 3200 	strd	r3, r2, [sp]
 8003576:	2102      	movs	r1, #2
 8003578:	ab24      	add	r3, sp, #144	; 0x90
 800357a:	462a      	mov	r2, r5
 800357c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003580:	f000 fe3e 	bl	8004200 <_dtoa_r>
 8003584:	2e67      	cmp	r6, #103	; 0x67
 8003586:	4607      	mov	r7, r0
 8003588:	f040 849c 	bne.w	8003ec4 <_vfprintf_r+0x19d4>
 800358c:	f018 0f01 	tst.w	r8, #1
 8003590:	f040 83f9 	bne.w	8003d86 <_vfprintf_r+0x1896>
 8003594:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003596:	4640      	mov	r0, r8
 8003598:	1bdb      	subs	r3, r3, r7
 800359a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800359e:	9310      	str	r3, [sp, #64]	; 0x40
 80035a0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80035a2:	9311      	str	r3, [sp, #68]	; 0x44
 80035a4:	9b04      	ldr	r3, [sp, #16]
 80035a6:	2b47      	cmp	r3, #71	; 0x47
 80035a8:	f000 81e7 	beq.w	800397a <_vfprintf_r+0x148a>
 80035ac:	9b04      	ldr	r3, [sp, #16]
 80035ae:	2b46      	cmp	r3, #70	; 0x46
 80035b0:	f000 8300 	beq.w	8003bb4 <_vfprintf_r+0x16c4>
 80035b4:	9904      	ldr	r1, [sp, #16]
 80035b6:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80035b8:	b2f2      	uxtb	r2, r6
 80035ba:	2941      	cmp	r1, #65	; 0x41
 80035bc:	bf08      	it	eq
 80035be:	320f      	addeq	r2, #15
 80035c0:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80035c4:	bf06      	itte	eq
 80035c6:	b2d2      	uxtbeq	r2, r2
 80035c8:	2101      	moveq	r1, #1
 80035ca:	2100      	movne	r1, #0
 80035cc:	2b00      	cmp	r3, #0
 80035ce:	9324      	str	r3, [sp, #144]	; 0x90
 80035d0:	bfb8      	it	lt
 80035d2:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80035d4:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80035d8:	bfba      	itte	lt
 80035da:	f1c3 0301 	rsblt	r3, r3, #1
 80035de:	222d      	movlt	r2, #45	; 0x2d
 80035e0:	222b      	movge	r2, #43	; 0x2b
 80035e2:	2b09      	cmp	r3, #9
 80035e4:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80035e8:	f300 83f9 	bgt.w	8003dde <_vfprintf_r+0x18ee>
 80035ec:	2900      	cmp	r1, #0
 80035ee:	f040 8487 	bne.w	8003f00 <_vfprintf_r+0x1a10>
 80035f2:	2230      	movs	r2, #48	; 0x30
 80035f4:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80035f8:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80035fc:	3330      	adds	r3, #48	; 0x30
 80035fe:	7013      	strb	r3, [r2, #0]
 8003600:	1c53      	adds	r3, r2, #1
 8003602:	aa26      	add	r2, sp, #152	; 0x98
 8003604:	1a9b      	subs	r3, r3, r2
 8003606:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003608:	9319      	str	r3, [sp, #100]	; 0x64
 800360a:	2a01      	cmp	r2, #1
 800360c:	4413      	add	r3, r2
 800360e:	9309      	str	r3, [sp, #36]	; 0x24
 8003610:	f340 8442 	ble.w	8003e98 <_vfprintf_r+0x19a8>
 8003614:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003616:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003618:	4413      	add	r3, r2
 800361a:	9309      	str	r3, [sp, #36]	; 0x24
 800361c:	2300      	movs	r3, #0
 800361e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003620:	9314      	str	r3, [sp, #80]	; 0x50
 8003622:	9311      	str	r3, [sp, #68]	; 0x44
 8003624:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003626:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800362a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800362e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8003632:	9304      	str	r3, [sp, #16]
 8003634:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8003636:	2b00      	cmp	r3, #0
 8003638:	f040 8275 	bne.w	8003b26 <_vfprintf_r+0x1636>
 800363c:	4699      	mov	r9, r3
 800363e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003642:	f7ff b8e2 	b.w	800280a <_vfprintf_r+0x31a>
 8003646:	bf00      	nop
 8003648:	08007244 	.word	0x08007244
 800364c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800364e:	49bd      	ldr	r1, [pc, #756]	; (8003944 <_vfprintf_r+0x1454>)
 8003650:	f8cb 1000 	str.w	r1, [fp]
 8003654:	3201      	adds	r2, #1
 8003656:	3401      	adds	r4, #1
 8003658:	2101      	movs	r1, #1
 800365a:	2a07      	cmp	r2, #7
 800365c:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003660:	f8cb 1004 	str.w	r1, [fp, #4]
 8003664:	dc60      	bgt.n	8003728 <_vfprintf_r+0x1238>
 8003666:	f10b 0b08 	add.w	fp, fp, #8
 800366a:	b92b      	cbnz	r3, 8003678 <_vfprintf_r+0x1188>
 800366c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800366e:	b91a      	cbnz	r2, 8003678 <_vfprintf_r+0x1188>
 8003670:	f018 0f01 	tst.w	r8, #1
 8003674:	f43f a98d 	beq.w	8002992 <_vfprintf_r+0x4a2>
 8003678:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800367a:	9916      	ldr	r1, [sp, #88]	; 0x58
 800367c:	f8cb 1000 	str.w	r1, [fp]
 8003680:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003682:	f8cb 1004 	str.w	r1, [fp, #4]
 8003686:	3201      	adds	r2, #1
 8003688:	440c      	add	r4, r1
 800368a:	2a07      	cmp	r2, #7
 800368c:	942c      	str	r4, [sp, #176]	; 0xb0
 800368e:	922b      	str	r2, [sp, #172]	; 0xac
 8003690:	f300 8282 	bgt.w	8003b98 <_vfprintf_r+0x16a8>
 8003694:	f10b 0b08 	add.w	fp, fp, #8
 8003698:	2b00      	cmp	r3, #0
 800369a:	f2c0 82e7 	blt.w	8003c6c <_vfprintf_r+0x177c>
 800369e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80036a0:	3201      	adds	r2, #1
 80036a2:	441c      	add	r4, r3
 80036a4:	2a07      	cmp	r2, #7
 80036a6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80036aa:	e9cb 7300 	strd	r7, r3, [fp]
 80036ae:	f77f a96e 	ble.w	800298e <_vfprintf_r+0x49e>
 80036b2:	e4fe      	b.n	80030b2 <_vfprintf_r+0xbc2>
 80036b4:	aa2a      	add	r2, sp, #168	; 0xa8
 80036b6:	9907      	ldr	r1, [sp, #28]
 80036b8:	9803      	ldr	r0, [sp, #12]
 80036ba:	f003 fa47 	bl	8006b4c <__sprint_r>
 80036be:	2800      	cmp	r0, #0
 80036c0:	f47f ac8e 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 80036c4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036c8:	f7ff bbf0 	b.w	8002eac <_vfprintf_r+0x9bc>
 80036cc:	9a05      	ldr	r2, [sp, #20]
 80036ce:	601a      	str	r2, [r3, #0]
 80036d0:	4657      	mov	r7, sl
 80036d2:	f7ff b9b3 	b.w	8002a3c <_vfprintf_r+0x54c>
 80036d6:	8814      	ldrh	r4, [r2, #0]
 80036d8:	9108      	str	r1, [sp, #32]
 80036da:	2500      	movs	r5, #0
 80036dc:	2201      	movs	r2, #1
 80036de:	f7ff b9c8 	b.w	8002a72 <_vfprintf_r+0x582>
 80036e2:	8814      	ldrh	r4, [r2, #0]
 80036e4:	9308      	str	r3, [sp, #32]
 80036e6:	2500      	movs	r5, #0
 80036e8:	f7ff ba14 	b.w	8002b14 <_vfprintf_r+0x624>
 80036ec:	f9b1 4000 	ldrsh.w	r4, [r1]
 80036f0:	9208      	str	r2, [sp, #32]
 80036f2:	17e5      	asrs	r5, r4, #31
 80036f4:	4620      	mov	r0, r4
 80036f6:	4629      	mov	r1, r5
 80036f8:	f7ff b855 	b.w	80027a6 <_vfprintf_r+0x2b6>
 80036fc:	8814      	ldrh	r4, [r2, #0]
 80036fe:	9308      	str	r3, [sp, #32]
 8003700:	2500      	movs	r5, #0
 8003702:	f7ff b825 	b.w	8002750 <_vfprintf_r+0x260>
 8003706:	222d      	movs	r2, #45	; 0x2d
 8003708:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800370c:	f7ff baa2 	b.w	8002c54 <_vfprintf_r+0x764>
 8003710:	aa2a      	add	r2, sp, #168	; 0xa8
 8003712:	9907      	ldr	r1, [sp, #28]
 8003714:	9803      	ldr	r0, [sp, #12]
 8003716:	f003 fa19 	bl	8006b4c <__sprint_r>
 800371a:	2800      	cmp	r0, #0
 800371c:	f47f ac60 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8003720:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003722:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003726:	e534      	b.n	8003192 <_vfprintf_r+0xca2>
 8003728:	aa2a      	add	r2, sp, #168	; 0xa8
 800372a:	9907      	ldr	r1, [sp, #28]
 800372c:	9803      	ldr	r0, [sp, #12]
 800372e:	f003 fa0d 	bl	8006b4c <__sprint_r>
 8003732:	2800      	cmp	r0, #0
 8003734:	f47f ac54 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8003738:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800373a:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800373c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003740:	e793      	b.n	800366a <_vfprintf_r+0x117a>
 8003742:	2330      	movs	r3, #48	; 0x30
 8003744:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003748:	2378      	movs	r3, #120	; 0x78
 800374a:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 800374e:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003752:	f048 0402 	orr.w	r4, r8, #2
 8003756:	f300 82b0 	bgt.w	8003cba <_vfprintf_r+0x17ca>
 800375a:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 800375e:	930e      	str	r3, [sp, #56]	; 0x38
 8003760:	f026 0320 	bic.w	r3, r6, #32
 8003764:	9304      	str	r3, [sp, #16]
 8003766:	2200      	movs	r2, #0
 8003768:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 800376a:	920a      	str	r2, [sp, #40]	; 0x28
 800376c:	46a0      	mov	r8, r4
 800376e:	af3d      	add	r7, sp, #244	; 0xf4
 8003770:	2b00      	cmp	r3, #0
 8003772:	f2c0 81e3 	blt.w	8003b3c <_vfprintf_r+0x164c>
 8003776:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 800377a:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800377e:	2300      	movs	r3, #0
 8003780:	930b      	str	r3, [sp, #44]	; 0x2c
 8003782:	2e61      	cmp	r6, #97	; 0x61
 8003784:	f000 8255 	beq.w	8003c32 <_vfprintf_r+0x1742>
 8003788:	2e41      	cmp	r6, #65	; 0x41
 800378a:	f47f aee3 	bne.w	8003554 <_vfprintf_r+0x1064>
 800378e:	a824      	add	r0, sp, #144	; 0x90
 8003790:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003794:	f003 f8e2 	bl	800695c <frexp>
 8003798:	2200      	movs	r2, #0
 800379a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800379e:	ec51 0b10 	vmov	r0, r1, d0
 80037a2:	f7fd f9c9 	bl	8000b38 <__aeabi_dmul>
 80037a6:	2200      	movs	r2, #0
 80037a8:	2300      	movs	r3, #0
 80037aa:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80037ae:	f7fd fc2b 	bl	8001008 <__aeabi_dcmpeq>
 80037b2:	2800      	cmp	r0, #0
 80037b4:	f040 8305 	bne.w	8003dc2 <_vfprintf_r+0x18d2>
 80037b8:	4b63      	ldr	r3, [pc, #396]	; (8003948 <_vfprintf_r+0x1458>)
 80037ba:	9309      	str	r3, [sp, #36]	; 0x24
 80037bc:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80037c0:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80037c4:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80037c8:	9721      	str	r7, [sp, #132]	; 0x84
 80037ca:	46b9      	mov	r9, r7
 80037cc:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80037d0:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80037d4:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80037d8:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 80037dc:	e003      	b.n	80037e6 <_vfprintf_r+0x12f6>
 80037de:	f7fd fc13 	bl	8001008 <__aeabi_dcmpeq>
 80037e2:	bb20      	cbnz	r0, 800382e <_vfprintf_r+0x133e>
 80037e4:	46a9      	mov	r9, r5
 80037e6:	2200      	movs	r2, #0
 80037e8:	4b58      	ldr	r3, [pc, #352]	; (800394c <_vfprintf_r+0x145c>)
 80037ea:	4630      	mov	r0, r6
 80037ec:	4639      	mov	r1, r7
 80037ee:	f7fd f9a3 	bl	8000b38 <__aeabi_dmul>
 80037f2:	460f      	mov	r7, r1
 80037f4:	4606      	mov	r6, r0
 80037f6:	f7fd fc4f 	bl	8001098 <__aeabi_d2iz>
 80037fa:	4680      	mov	r8, r0
 80037fc:	f7fd f932 	bl	8000a64 <__aeabi_i2d>
 8003800:	4602      	mov	r2, r0
 8003802:	460b      	mov	r3, r1
 8003804:	4630      	mov	r0, r6
 8003806:	4639      	mov	r1, r7
 8003808:	f7fc ffde 	bl	80007c8 <__aeabi_dsub>
 800380c:	464d      	mov	r5, r9
 800380e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003812:	f805 cb01 	strb.w	ip, [r5], #1
 8003816:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800381a:	46a3      	mov	fp, r4
 800381c:	4606      	mov	r6, r0
 800381e:	460f      	mov	r7, r1
 8003820:	f04f 0200 	mov.w	r2, #0
 8003824:	f04f 0300 	mov.w	r3, #0
 8003828:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800382c:	d1d7      	bne.n	80037de <_vfprintf_r+0x12ee>
 800382e:	4630      	mov	r0, r6
 8003830:	4639      	mov	r1, r7
 8003832:	2200      	movs	r2, #0
 8003834:	4b46      	ldr	r3, [pc, #280]	; (8003950 <_vfprintf_r+0x1460>)
 8003836:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 800383a:	9e10      	ldr	r6, [sp, #64]	; 0x40
 800383c:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003840:	4644      	mov	r4, r8
 8003842:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003846:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 800384a:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 800384e:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003852:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003854:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003858:	f7fd fbfe 	bl	8001058 <__aeabi_dcmpgt>
 800385c:	2800      	cmp	r0, #0
 800385e:	f040 8176 	bne.w	8003b4e <_vfprintf_r+0x165e>
 8003862:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003866:	2200      	movs	r2, #0
 8003868:	4b39      	ldr	r3, [pc, #228]	; (8003950 <_vfprintf_r+0x1460>)
 800386a:	f7fd fbcd 	bl	8001008 <__aeabi_dcmpeq>
 800386e:	b110      	cbz	r0, 8003876 <_vfprintf_r+0x1386>
 8003870:	07e2      	lsls	r2, r4, #31
 8003872:	f100 816c 	bmi.w	8003b4e <_vfprintf_r+0x165e>
 8003876:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003878:	2b00      	cmp	r3, #0
 800387a:	db07      	blt.n	800388c <_vfprintf_r+0x139c>
 800387c:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800387e:	3301      	adds	r3, #1
 8003880:	442b      	add	r3, r5
 8003882:	2230      	movs	r2, #48	; 0x30
 8003884:	f805 2b01 	strb.w	r2, [r5], #1
 8003888:	42ab      	cmp	r3, r5
 800388a:	d1fb      	bne.n	8003884 <_vfprintf_r+0x1394>
 800388c:	1beb      	subs	r3, r5, r7
 800388e:	4640      	mov	r0, r8
 8003890:	9310      	str	r3, [sp, #64]	; 0x40
 8003892:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003896:	e683      	b.n	80035a0 <_vfprintf_r+0x10b0>
 8003898:	f8cd 9010 	str.w	r9, [sp, #16]
 800389c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80038a0:	9408      	str	r4, [sp, #32]
 80038a2:	4681      	mov	r9, r0
 80038a4:	900f      	str	r0, [sp, #60]	; 0x3c
 80038a6:	9014      	str	r0, [sp, #80]	; 0x50
 80038a8:	9011      	str	r0, [sp, #68]	; 0x44
 80038aa:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80038ae:	f7fe bfac 	b.w	800280a <_vfprintf_r+0x31a>
 80038b2:	aa2a      	add	r2, sp, #168	; 0xa8
 80038b4:	9907      	ldr	r1, [sp, #28]
 80038b6:	9803      	ldr	r0, [sp, #12]
 80038b8:	f003 f948 	bl	8006b4c <__sprint_r>
 80038bc:	2800      	cmp	r0, #0
 80038be:	f47f ab8f 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 80038c2:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80038c4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038ca:	e511      	b.n	80032f0 <_vfprintf_r+0xe00>
 80038cc:	4252      	negs	r2, r2
 80038ce:	9206      	str	r2, [sp, #24]
 80038d0:	9308      	str	r3, [sp, #32]
 80038d2:	f7ff b96d 	b.w	8002bb0 <_vfprintf_r+0x6c0>
 80038d6:	4614      	mov	r4, r2
 80038d8:	4632      	mov	r2, r6
 80038da:	461e      	mov	r6, r3
 80038dc:	4613      	mov	r3, r2
 80038de:	462a      	mov	r2, r5
 80038e0:	3201      	adds	r2, #1
 80038e2:	9209      	str	r2, [sp, #36]	; 0x24
 80038e4:	f106 0208 	add.w	r2, r6, #8
 80038e8:	e9c6 3900 	strd	r3, r9, [r6]
 80038ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80038ee:	932b      	str	r3, [sp, #172]	; 0xac
 80038f0:	444c      	add	r4, r9
 80038f2:	2b07      	cmp	r3, #7
 80038f4:	942c      	str	r4, [sp, #176]	; 0xb0
 80038f6:	f73f acc3 	bgt.w	8003280 <_vfprintf_r+0xd90>
 80038fa:	3301      	adds	r3, #1
 80038fc:	9309      	str	r3, [sp, #36]	; 0x24
 80038fe:	f102 0b08 	add.w	fp, r2, #8
 8003902:	4616      	mov	r6, r2
 8003904:	f7ff bbca 	b.w	800309c <_vfprintf_r+0xbac>
 8003908:	aa2a      	add	r2, sp, #168	; 0xa8
 800390a:	9907      	ldr	r1, [sp, #28]
 800390c:	9803      	ldr	r0, [sp, #12]
 800390e:	f003 f91d 	bl	8006b4c <__sprint_r>
 8003912:	2800      	cmp	r0, #0
 8003914:	f47f ab64 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8003918:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800391a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800391e:	f7ff bade 	b.w	8002ede <_vfprintf_r+0x9ee>
 8003922:	464b      	mov	r3, r9
 8003924:	2b06      	cmp	r3, #6
 8003926:	bf28      	it	cs
 8003928:	2306      	movcs	r3, #6
 800392a:	46b9      	mov	r9, r7
 800392c:	970f      	str	r7, [sp, #60]	; 0x3c
 800392e:	9714      	str	r7, [sp, #80]	; 0x50
 8003930:	9711      	str	r7, [sp, #68]	; 0x44
 8003932:	970a      	str	r7, [sp, #40]	; 0x28
 8003934:	463a      	mov	r2, r7
 8003936:	9304      	str	r3, [sp, #16]
 8003938:	e9cd 4308 	strd	r4, r3, [sp, #32]
 800393c:	4f05      	ldr	r7, [pc, #20]	; (8003954 <_vfprintf_r+0x1464>)
 800393e:	f7fe bf64 	b.w	800280a <_vfprintf_r+0x31a>
 8003942:	bf00      	nop
 8003944:	08007230 	.word	0x08007230
 8003948:	08007214 	.word	0x08007214
 800394c:	40300000 	.word	0x40300000
 8003950:	3fe00000 	.word	0x3fe00000
 8003954:	08007228 	.word	0x08007228
 8003958:	460c      	mov	r4, r1
 800395a:	4639      	mov	r1, r7
 800395c:	465f      	mov	r7, fp
 800395e:	469b      	mov	fp, r3
 8003960:	460b      	mov	r3, r1
 8003962:	3201      	adds	r2, #1
 8003964:	442c      	add	r4, r5
 8003966:	2a07      	cmp	r2, #7
 8003968:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800396c:	e9cb 3500 	strd	r3, r5, [fp]
 8003970:	f73f aca5 	bgt.w	80032be <_vfprintf_r+0xdce>
 8003974:	f10b 0b08 	add.w	fp, fp, #8
 8003978:	e4ac      	b.n	80032d4 <_vfprintf_r+0xde4>
 800397a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800397c:	1cda      	adds	r2, r3, #3
 800397e:	db02      	blt.n	8003986 <_vfprintf_r+0x1496>
 8003980:	4599      	cmp	r9, r3
 8003982:	f280 80b5 	bge.w	8003af0 <_vfprintf_r+0x1600>
 8003986:	3e02      	subs	r6, #2
 8003988:	f026 0320 	bic.w	r3, r6, #32
 800398c:	9304      	str	r3, [sp, #16]
 800398e:	e611      	b.n	80035b4 <_vfprintf_r+0x10c4>
 8003990:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003992:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003996:	465a      	mov	r2, fp
 8003998:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 800399c:	18fb      	adds	r3, r7, r3
 800399e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80039a2:	970c      	str	r7, [sp, #48]	; 0x30
 80039a4:	4eaf      	ldr	r6, [pc, #700]	; (8003c64 <_vfprintf_r+0x1774>)
 80039a6:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80039aa:	9309      	str	r3, [sp, #36]	; 0x24
 80039ac:	464f      	mov	r7, r9
 80039ae:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80039b2:	4621      	mov	r1, r4
 80039b4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80039b6:	2b00      	cmp	r3, #0
 80039b8:	d05b      	beq.n	8003a72 <_vfprintf_r+0x1582>
 80039ba:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039bc:	2b00      	cmp	r3, #0
 80039be:	d154      	bne.n	8003a6a <_vfprintf_r+0x157a>
 80039c0:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80039c2:	3b01      	subs	r3, #1
 80039c4:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80039c8:	9314      	str	r3, [sp, #80]	; 0x50
 80039ca:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80039cc:	9818      	ldr	r0, [sp, #96]	; 0x60
 80039ce:	6010      	str	r0, [r2, #0]
 80039d0:	3301      	adds	r3, #1
 80039d2:	4459      	add	r1, fp
 80039d4:	2b07      	cmp	r3, #7
 80039d6:	912c      	str	r1, [sp, #176]	; 0xb0
 80039d8:	f8c2 b004 	str.w	fp, [r2, #4]
 80039dc:	932b      	str	r3, [sp, #172]	; 0xac
 80039de:	dc68      	bgt.n	8003ab2 <_vfprintf_r+0x15c2>
 80039e0:	3208      	adds	r2, #8
 80039e2:	9809      	ldr	r0, [sp, #36]	; 0x24
 80039e4:	f898 3000 	ldrb.w	r3, [r8]
 80039e8:	1bc5      	subs	r5, r0, r7
 80039ea:	429d      	cmp	r5, r3
 80039ec:	bfa8      	it	ge
 80039ee:	461d      	movge	r5, r3
 80039f0:	2d00      	cmp	r5, #0
 80039f2:	dd0b      	ble.n	8003a0c <_vfprintf_r+0x151c>
 80039f4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80039f6:	6017      	str	r7, [r2, #0]
 80039f8:	3301      	adds	r3, #1
 80039fa:	4429      	add	r1, r5
 80039fc:	2b07      	cmp	r3, #7
 80039fe:	912c      	str	r1, [sp, #176]	; 0xb0
 8003a00:	6055      	str	r5, [r2, #4]
 8003a02:	932b      	str	r3, [sp, #172]	; 0xac
 8003a04:	dc5e      	bgt.n	8003ac4 <_vfprintf_r+0x15d4>
 8003a06:	f898 3000 	ldrb.w	r3, [r8]
 8003a0a:	3208      	adds	r2, #8
 8003a0c:	2d00      	cmp	r5, #0
 8003a0e:	bfac      	ite	ge
 8003a10:	1b5d      	subge	r5, r3, r5
 8003a12:	461d      	movlt	r5, r3
 8003a14:	2d00      	cmp	r5, #0
 8003a16:	dd26      	ble.n	8003a66 <_vfprintf_r+0x1576>
 8003a18:	2d10      	cmp	r5, #16
 8003a1a:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003a1c:	dd3c      	ble.n	8003a98 <_vfprintf_r+0x15a8>
 8003a1e:	2410      	movs	r4, #16
 8003a20:	e003      	b.n	8003a2a <_vfprintf_r+0x153a>
 8003a22:	3208      	adds	r2, #8
 8003a24:	3d10      	subs	r5, #16
 8003a26:	2d10      	cmp	r5, #16
 8003a28:	dd36      	ble.n	8003a98 <_vfprintf_r+0x15a8>
 8003a2a:	3001      	adds	r0, #1
 8003a2c:	3110      	adds	r1, #16
 8003a2e:	2807      	cmp	r0, #7
 8003a30:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003a34:	e9c2 6400 	strd	r6, r4, [r2]
 8003a38:	ddf3      	ble.n	8003a22 <_vfprintf_r+0x1532>
 8003a3a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a3c:	4651      	mov	r1, sl
 8003a3e:	4648      	mov	r0, r9
 8003a40:	f003 f884 	bl	8006b4c <__sprint_r>
 8003a44:	2800      	cmp	r0, #0
 8003a46:	d150      	bne.n	8003aea <_vfprintf_r+0x15fa>
 8003a48:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003a4c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a4e:	e7e9      	b.n	8003a24 <_vfprintf_r+0x1534>
 8003a50:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a52:	4651      	mov	r1, sl
 8003a54:	4648      	mov	r0, r9
 8003a56:	f003 f879 	bl	8006b4c <__sprint_r>
 8003a5a:	2800      	cmp	r0, #0
 8003a5c:	d145      	bne.n	8003aea <_vfprintf_r+0x15fa>
 8003a5e:	f898 3000 	ldrb.w	r3, [r8]
 8003a62:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a64:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a66:	441f      	add	r7, r3
 8003a68:	e7a4      	b.n	80039b4 <_vfprintf_r+0x14c4>
 8003a6a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a6c:	3b01      	subs	r3, #1
 8003a6e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a70:	e7ab      	b.n	80039ca <_vfprintf_r+0x14da>
 8003a72:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a74:	2b00      	cmp	r3, #0
 8003a76:	d1f8      	bne.n	8003a6a <_vfprintf_r+0x157a>
 8003a78:	46b9      	mov	r9, r7
 8003a7a:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003a7c:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003a7e:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003a82:	18fb      	adds	r3, r7, r3
 8003a84:	4599      	cmp	r9, r3
 8003a86:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003a8a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003a8e:	4693      	mov	fp, r2
 8003a90:	460c      	mov	r4, r1
 8003a92:	bf28      	it	cs
 8003a94:	4699      	movcs	r9, r3
 8003a96:	e424      	b.n	80032e2 <_vfprintf_r+0xdf2>
 8003a98:	3001      	adds	r0, #1
 8003a9a:	4429      	add	r1, r5
 8003a9c:	2807      	cmp	r0, #7
 8003a9e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003aa2:	e9c2 6500 	strd	r6, r5, [r2]
 8003aa6:	dcd3      	bgt.n	8003a50 <_vfprintf_r+0x1560>
 8003aa8:	f898 3000 	ldrb.w	r3, [r8]
 8003aac:	3208      	adds	r2, #8
 8003aae:	441f      	add	r7, r3
 8003ab0:	e780      	b.n	80039b4 <_vfprintf_r+0x14c4>
 8003ab2:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ab4:	4651      	mov	r1, sl
 8003ab6:	4648      	mov	r0, r9
 8003ab8:	f003 f848 	bl	8006b4c <__sprint_r>
 8003abc:	b9a8      	cbnz	r0, 8003aea <_vfprintf_r+0x15fa>
 8003abe:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003ac0:	aa2d      	add	r2, sp, #180	; 0xb4
 8003ac2:	e78e      	b.n	80039e2 <_vfprintf_r+0x14f2>
 8003ac4:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ac6:	4651      	mov	r1, sl
 8003ac8:	4648      	mov	r0, r9
 8003aca:	f003 f83f 	bl	8006b4c <__sprint_r>
 8003ace:	b960      	cbnz	r0, 8003aea <_vfprintf_r+0x15fa>
 8003ad0:	f898 3000 	ldrb.w	r3, [r8]
 8003ad4:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003ad6:	aa2d      	add	r2, sp, #180	; 0xb4
 8003ad8:	e798      	b.n	8003a0c <_vfprintf_r+0x151c>
 8003ada:	4638      	mov	r0, r7
 8003adc:	f7fc fdb0 	bl	8000640 <strlen>
 8003ae0:	46a9      	mov	r9, r5
 8003ae2:	4603      	mov	r3, r0
 8003ae4:	9009      	str	r0, [sp, #36]	; 0x24
 8003ae6:	f7ff b8f4 	b.w	8002cd2 <_vfprintf_r+0x7e2>
 8003aea:	46d1      	mov	r9, sl
 8003aec:	f7ff ba7a 	b.w	8002fe4 <_vfprintf_r+0xaf4>
 8003af0:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003af2:	4619      	mov	r1, r3
 8003af4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003af6:	4299      	cmp	r1, r3
 8003af8:	f300 8082 	bgt.w	8003c00 <_vfprintf_r+0x1710>
 8003afc:	07c4      	lsls	r4, r0, #31
 8003afe:	f140 816b 	bpl.w	8003dd8 <_vfprintf_r+0x18e8>
 8003b02:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b04:	4413      	add	r3, r2
 8003b06:	9309      	str	r3, [sp, #36]	; 0x24
 8003b08:	0541      	lsls	r1, r0, #21
 8003b0a:	d503      	bpl.n	8003b14 <_vfprintf_r+0x1624>
 8003b0c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b0e:	2b00      	cmp	r3, #0
 8003b10:	f300 80e6 	bgt.w	8003ce0 <_vfprintf_r+0x17f0>
 8003b14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b16:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b1a:	9304      	str	r3, [sp, #16]
 8003b1c:	2667      	movs	r6, #103	; 0x67
 8003b1e:	2300      	movs	r3, #0
 8003b20:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b22:	9314      	str	r3, [sp, #80]	; 0x50
 8003b24:	e586      	b.n	8003634 <_vfprintf_r+0x1144>
 8003b26:	222d      	movs	r2, #45	; 0x2d
 8003b28:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003b2c:	f04f 0900 	mov.w	r9, #0
 8003b30:	f7fe be6c 	b.w	800280c <_vfprintf_r+0x31c>
 8003b34:	46a1      	mov	r9, r4
 8003b36:	f7ff ba55 	b.w	8002fe4 <_vfprintf_r+0xaf4>
 8003b3a:	900a      	str	r0, [sp, #40]	; 0x28
 8003b3c:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003b40:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003b44:	931f      	str	r3, [sp, #124]	; 0x7c
 8003b46:	232d      	movs	r3, #45	; 0x2d
 8003b48:	911e      	str	r1, [sp, #120]	; 0x78
 8003b4a:	930b      	str	r3, [sp, #44]	; 0x2c
 8003b4c:	e619      	b.n	8003782 <_vfprintf_r+0x1292>
 8003b4e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b50:	9328      	str	r3, [sp, #160]	; 0xa0
 8003b52:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b54:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003b58:	7bd9      	ldrb	r1, [r3, #15]
 8003b5a:	4291      	cmp	r1, r2
 8003b5c:	462b      	mov	r3, r5
 8003b5e:	d109      	bne.n	8003b74 <_vfprintf_r+0x1684>
 8003b60:	2030      	movs	r0, #48	; 0x30
 8003b62:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003b66:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b68:	1e5a      	subs	r2, r3, #1
 8003b6a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003b6c:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003b70:	4291      	cmp	r1, r2
 8003b72:	d0f6      	beq.n	8003b62 <_vfprintf_r+0x1672>
 8003b74:	2a39      	cmp	r2, #57	; 0x39
 8003b76:	bf0b      	itete	eq
 8003b78:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003b7a:	3201      	addne	r2, #1
 8003b7c:	7a92      	ldrbeq	r2, [r2, #10]
 8003b7e:	b2d2      	uxtbne	r2, r2
 8003b80:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003b84:	e682      	b.n	800388c <_vfprintf_r+0x139c>
 8003b86:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003b8a:	f43f ad9f 	beq.w	80036cc <_vfprintf_r+0x11dc>
 8003b8e:	9a05      	ldr	r2, [sp, #20]
 8003b90:	701a      	strb	r2, [r3, #0]
 8003b92:	4657      	mov	r7, sl
 8003b94:	f7fe bf52 	b.w	8002a3c <_vfprintf_r+0x54c>
 8003b98:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b9a:	9907      	ldr	r1, [sp, #28]
 8003b9c:	9803      	ldr	r0, [sp, #12]
 8003b9e:	f002 ffd5 	bl	8006b4c <__sprint_r>
 8003ba2:	2800      	cmp	r0, #0
 8003ba4:	f47f aa1c 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8003ba8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003baa:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003bae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bb2:	e571      	b.n	8003698 <_vfprintf_r+0x11a8>
 8003bb4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bb6:	2b00      	cmp	r3, #0
 8003bb8:	f340 8164 	ble.w	8003e84 <_vfprintf_r+0x1994>
 8003bbc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bbe:	f1b9 0f00 	cmp.w	r9, #0
 8003bc2:	f040 8103 	bne.w	8003dcc <_vfprintf_r+0x18dc>
 8003bc6:	07c6      	lsls	r6, r0, #31
 8003bc8:	f100 8100 	bmi.w	8003dcc <_vfprintf_r+0x18dc>
 8003bcc:	9309      	str	r3, [sp, #36]	; 0x24
 8003bce:	2666      	movs	r6, #102	; 0x66
 8003bd0:	0543      	lsls	r3, r0, #21
 8003bd2:	f100 8086 	bmi.w	8003ce2 <_vfprintf_r+0x17f2>
 8003bd6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003bd8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003bdc:	9304      	str	r3, [sp, #16]
 8003bde:	e79e      	b.n	8003b1e <_vfprintf_r+0x162e>
 8003be0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003be2:	9907      	ldr	r1, [sp, #28]
 8003be4:	9803      	ldr	r0, [sp, #12]
 8003be6:	f002 ffb1 	bl	8006b4c <__sprint_r>
 8003bea:	2800      	cmp	r0, #0
 8003bec:	f47f a9f8 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8003bf0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003bf2:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003bf4:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003bf6:	1ad3      	subs	r3, r2, r3
 8003bf8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bfc:	f7ff bb90 	b.w	8003320 <_vfprintf_r+0xe30>
 8003c00:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c02:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c04:	4413      	add	r3, r2
 8003c06:	9309      	str	r3, [sp, #36]	; 0x24
 8003c08:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c0a:	2b00      	cmp	r3, #0
 8003c0c:	f340 8149 	ble.w	8003ea2 <_vfprintf_r+0x19b2>
 8003c10:	2667      	movs	r6, #103	; 0x67
 8003c12:	e7dd      	b.n	8003bd0 <_vfprintf_r+0x16e0>
 8003c14:	2330      	movs	r3, #48	; 0x30
 8003c16:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003c1a:	2358      	movs	r3, #88	; 0x58
 8003c1c:	e595      	b.n	800374a <_vfprintf_r+0x125a>
 8003c1e:	9803      	ldr	r0, [sp, #12]
 8003c20:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c22:	4649      	mov	r1, r9
 8003c24:	f002 ff92 	bl	8006b4c <__sprint_r>
 8003c28:	2800      	cmp	r0, #0
 8003c2a:	f47f a9e0 	bne.w	8002fee <_vfprintf_r+0xafe>
 8003c2e:	f7fe bf0f 	b.w	8002a50 <_vfprintf_r+0x560>
 8003c32:	a824      	add	r0, sp, #144	; 0x90
 8003c34:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c38:	f002 fe90 	bl	800695c <frexp>
 8003c3c:	2200      	movs	r2, #0
 8003c3e:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003c42:	ec51 0b10 	vmov	r0, r1, d0
 8003c46:	f7fc ff77 	bl	8000b38 <__aeabi_dmul>
 8003c4a:	2200      	movs	r2, #0
 8003c4c:	2300      	movs	r3, #0
 8003c4e:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003c52:	f7fd f9d9 	bl	8001008 <__aeabi_dcmpeq>
 8003c56:	b108      	cbz	r0, 8003c5c <_vfprintf_r+0x176c>
 8003c58:	2301      	movs	r3, #1
 8003c5a:	9324      	str	r3, [sp, #144]	; 0x90
 8003c5c:	4b02      	ldr	r3, [pc, #8]	; (8003c68 <_vfprintf_r+0x1778>)
 8003c5e:	9309      	str	r3, [sp, #36]	; 0x24
 8003c60:	e5ac      	b.n	80037bc <_vfprintf_r+0x12cc>
 8003c62:	bf00      	nop
 8003c64:	08007244 	.word	0x08007244
 8003c68:	08007200 	.word	0x08007200
 8003c6c:	425d      	negs	r5, r3
 8003c6e:	3310      	adds	r3, #16
 8003c70:	4bb9      	ldr	r3, [pc, #740]	; (8003f58 <_vfprintf_r+0x1a68>)
 8003c72:	f280 8097 	bge.w	8003da4 <_vfprintf_r+0x18b4>
 8003c76:	4619      	mov	r1, r3
 8003c78:	2610      	movs	r6, #16
 8003c7a:	4623      	mov	r3, r4
 8003c7c:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003c80:	460c      	mov	r4, r1
 8003c82:	e005      	b.n	8003c90 <_vfprintf_r+0x17a0>
 8003c84:	f10b 0b08 	add.w	fp, fp, #8
 8003c88:	3d10      	subs	r5, #16
 8003c8a:	2d10      	cmp	r5, #16
 8003c8c:	f340 8087 	ble.w	8003d9e <_vfprintf_r+0x18ae>
 8003c90:	3201      	adds	r2, #1
 8003c92:	3310      	adds	r3, #16
 8003c94:	2a07      	cmp	r2, #7
 8003c96:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003c9a:	e9cb 4600 	strd	r4, r6, [fp]
 8003c9e:	ddf1      	ble.n	8003c84 <_vfprintf_r+0x1794>
 8003ca0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ca2:	9907      	ldr	r1, [sp, #28]
 8003ca4:	4648      	mov	r0, r9
 8003ca6:	f002 ff51 	bl	8006b4c <__sprint_r>
 8003caa:	2800      	cmp	r0, #0
 8003cac:	f47f a998 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8003cb0:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003cb4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003cb8:	e7e6      	b.n	8003c88 <_vfprintf_r+0x1798>
 8003cba:	f109 0101 	add.w	r1, r9, #1
 8003cbe:	9803      	ldr	r0, [sp, #12]
 8003cc0:	f001 fe80 	bl	80059c4 <_malloc_r>
 8003cc4:	4607      	mov	r7, r0
 8003cc6:	2800      	cmp	r0, #0
 8003cc8:	f000 813b 	beq.w	8003f42 <_vfprintf_r+0x1a52>
 8003ccc:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003cd0:	930e      	str	r3, [sp, #56]	; 0x38
 8003cd2:	f026 0320 	bic.w	r3, r6, #32
 8003cd6:	9304      	str	r3, [sp, #16]
 8003cd8:	46a0      	mov	r8, r4
 8003cda:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003cdc:	900a      	str	r0, [sp, #40]	; 0x28
 8003cde:	e547      	b.n	8003770 <_vfprintf_r+0x1280>
 8003ce0:	2667      	movs	r6, #103	; 0x67
 8003ce2:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003ce4:	2200      	movs	r2, #0
 8003ce6:	920f      	str	r2, [sp, #60]	; 0x3c
 8003ce8:	9214      	str	r2, [sp, #80]	; 0x50
 8003cea:	7803      	ldrb	r3, [r0, #0]
 8003cec:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003cee:	2bff      	cmp	r3, #255	; 0xff
 8003cf0:	d00c      	beq.n	8003d0c <_vfprintf_r+0x181c>
 8003cf2:	4293      	cmp	r3, r2
 8003cf4:	da0a      	bge.n	8003d0c <_vfprintf_r+0x181c>
 8003cf6:	7841      	ldrb	r1, [r0, #1]
 8003cf8:	1ad2      	subs	r2, r2, r3
 8003cfa:	b1a9      	cbz	r1, 8003d28 <_vfprintf_r+0x1838>
 8003cfc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003cfe:	3301      	adds	r3, #1
 8003d00:	9314      	str	r3, [sp, #80]	; 0x50
 8003d02:	460b      	mov	r3, r1
 8003d04:	2bff      	cmp	r3, #255	; 0xff
 8003d06:	f100 0001 	add.w	r0, r0, #1
 8003d0a:	d1f2      	bne.n	8003cf2 <_vfprintf_r+0x1802>
 8003d0c:	9211      	str	r2, [sp, #68]	; 0x44
 8003d0e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d10:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003d12:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003d14:	901a      	str	r0, [sp, #104]	; 0x68
 8003d16:	4413      	add	r3, r2
 8003d18:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003d1a:	fb02 1303 	mla	r3, r2, r3, r1
 8003d1e:	9309      	str	r3, [sp, #36]	; 0x24
 8003d20:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d24:	9304      	str	r3, [sp, #16]
 8003d26:	e485      	b.n	8003634 <_vfprintf_r+0x1144>
 8003d28:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003d2a:	3101      	adds	r1, #1
 8003d2c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003d2e:	e7de      	b.n	8003cee <_vfprintf_r+0x17fe>
 8003d30:	aa28      	add	r2, sp, #160	; 0xa0
 8003d32:	ab25      	add	r3, sp, #148	; 0x94
 8003d34:	e9cd 3200 	strd	r3, r2, [sp]
 8003d38:	2103      	movs	r1, #3
 8003d3a:	ab24      	add	r3, sp, #144	; 0x90
 8003d3c:	464a      	mov	r2, r9
 8003d3e:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d42:	9803      	ldr	r0, [sp, #12]
 8003d44:	f000 fa5c 	bl	8004200 <_dtoa_r>
 8003d48:	464d      	mov	r5, r9
 8003d4a:	4607      	mov	r7, r0
 8003d4c:	eb00 0409 	add.w	r4, r0, r9
 8003d50:	783b      	ldrb	r3, [r7, #0]
 8003d52:	2b30      	cmp	r3, #48	; 0x30
 8003d54:	f000 80be 	beq.w	8003ed4 <_vfprintf_r+0x19e4>
 8003d58:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003d5a:	442c      	add	r4, r5
 8003d5c:	2200      	movs	r2, #0
 8003d5e:	2300      	movs	r3, #0
 8003d60:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003d64:	f7fd f950 	bl	8001008 <__aeabi_dcmpeq>
 8003d68:	b108      	cbz	r0, 8003d6e <_vfprintf_r+0x187e>
 8003d6a:	4623      	mov	r3, r4
 8003d6c:	e413      	b.n	8003596 <_vfprintf_r+0x10a6>
 8003d6e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d70:	42a3      	cmp	r3, r4
 8003d72:	f4bf ac10 	bcs.w	8003596 <_vfprintf_r+0x10a6>
 8003d76:	2130      	movs	r1, #48	; 0x30
 8003d78:	1c5a      	adds	r2, r3, #1
 8003d7a:	9228      	str	r2, [sp, #160]	; 0xa0
 8003d7c:	7019      	strb	r1, [r3, #0]
 8003d7e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d80:	429c      	cmp	r4, r3
 8003d82:	d8f9      	bhi.n	8003d78 <_vfprintf_r+0x1888>
 8003d84:	e407      	b.n	8003596 <_vfprintf_r+0x10a6>
 8003d86:	197c      	adds	r4, r7, r5
 8003d88:	e7e8      	b.n	8003d5c <_vfprintf_r+0x186c>
 8003d8a:	f1b9 0f00 	cmp.w	r9, #0
 8003d8e:	f000 8092 	beq.w	8003eb6 <_vfprintf_r+0x19c6>
 8003d92:	900a      	str	r0, [sp, #40]	; 0x28
 8003d94:	e4ec      	b.n	8003770 <_vfprintf_r+0x1280>
 8003d96:	900a      	str	r0, [sp, #40]	; 0x28
 8003d98:	f04f 0906 	mov.w	r9, #6
 8003d9c:	e4e8      	b.n	8003770 <_vfprintf_r+0x1280>
 8003d9e:	4621      	mov	r1, r4
 8003da0:	461c      	mov	r4, r3
 8003da2:	460b      	mov	r3, r1
 8003da4:	3201      	adds	r2, #1
 8003da6:	442c      	add	r4, r5
 8003da8:	2a07      	cmp	r2, #7
 8003daa:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003dae:	e9cb 3500 	strd	r3, r5, [fp]
 8003db2:	f300 80a9 	bgt.w	8003f08 <_vfprintf_r+0x1a18>
 8003db6:	f10b 0b08 	add.w	fp, fp, #8
 8003dba:	e470      	b.n	800369e <_vfprintf_r+0x11ae>
 8003dbc:	469a      	mov	sl, r3
 8003dbe:	f7ff bb37 	b.w	8003430 <_vfprintf_r+0xf40>
 8003dc2:	2301      	movs	r3, #1
 8003dc4:	9324      	str	r3, [sp, #144]	; 0x90
 8003dc6:	4b65      	ldr	r3, [pc, #404]	; (8003f5c <_vfprintf_r+0x1a6c>)
 8003dc8:	9309      	str	r3, [sp, #36]	; 0x24
 8003dca:	e4f7      	b.n	80037bc <_vfprintf_r+0x12cc>
 8003dcc:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003dce:	4413      	add	r3, r2
 8003dd0:	444b      	add	r3, r9
 8003dd2:	9309      	str	r3, [sp, #36]	; 0x24
 8003dd4:	2666      	movs	r6, #102	; 0x66
 8003dd6:	e6fb      	b.n	8003bd0 <_vfprintf_r+0x16e0>
 8003dd8:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003dda:	9309      	str	r3, [sp, #36]	; 0x24
 8003ddc:	e694      	b.n	8003b08 <_vfprintf_r+0x1618>
 8003dde:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003de2:	4664      	mov	r4, ip
 8003de4:	4d5e      	ldr	r5, [pc, #376]	; (8003f60 <_vfprintf_r+0x1a70>)
 8003de6:	e000      	b.n	8003dea <_vfprintf_r+0x18fa>
 8003de8:	4614      	mov	r4, r2
 8003dea:	fba5 1203 	umull	r1, r2, r5, r3
 8003dee:	08d2      	lsrs	r2, r2, #3
 8003df0:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003df4:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003df8:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003dfc:	4613      	mov	r3, r2
 8003dfe:	2b09      	cmp	r3, #9
 8003e00:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003e04:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003e08:	dcee      	bgt.n	8003de8 <_vfprintf_r+0x18f8>
 8003e0a:	3330      	adds	r3, #48	; 0x30
 8003e0c:	3c02      	subs	r4, #2
 8003e0e:	b2db      	uxtb	r3, r3
 8003e10:	45a4      	cmp	ip, r4
 8003e12:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003e16:	f240 8090 	bls.w	8003f3a <_vfprintf_r+0x1a4a>
 8003e1a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003e1e:	4611      	mov	r1, r2
 8003e20:	e001      	b.n	8003e26 <_vfprintf_r+0x1936>
 8003e22:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003e26:	f804 3b01 	strb.w	r3, [r4], #1
 8003e2a:	458c      	cmp	ip, r1
 8003e2c:	d1f9      	bne.n	8003e22 <_vfprintf_r+0x1932>
 8003e2e:	ab2a      	add	r3, sp, #168	; 0xa8
 8003e30:	1a9b      	subs	r3, r3, r2
 8003e32:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e36:	4413      	add	r3, r2
 8003e38:	f7ff bbe3 	b.w	8003602 <_vfprintf_r+0x1112>
 8003e3c:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003e3e:	4f49      	ldr	r7, [pc, #292]	; (8003f64 <_vfprintf_r+0x1a74>)
 8003e40:	2b00      	cmp	r3, #0
 8003e42:	bfb6      	itet	lt
 8003e44:	222d      	movlt	r2, #45	; 0x2d
 8003e46:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003e4a:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003e4e:	4b46      	ldr	r3, [pc, #280]	; (8003f68 <_vfprintf_r+0x1a78>)
 8003e50:	f7fe bf02 	b.w	8002c58 <_vfprintf_r+0x768>
 8003e54:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003e58:	f7ff b8c9 	b.w	8002fee <_vfprintf_r+0xafe>
 8003e5c:	aa28      	add	r2, sp, #160	; 0xa0
 8003e5e:	ab25      	add	r3, sp, #148	; 0x94
 8003e60:	e9cd 3200 	strd	r3, r2, [sp]
 8003e64:	2103      	movs	r1, #3
 8003e66:	ab24      	add	r3, sp, #144	; 0x90
 8003e68:	464a      	mov	r2, r9
 8003e6a:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e6e:	9803      	ldr	r0, [sp, #12]
 8003e70:	f000 f9c6 	bl	8004200 <_dtoa_r>
 8003e74:	464d      	mov	r5, r9
 8003e76:	4607      	mov	r7, r0
 8003e78:	2e46      	cmp	r6, #70	; 0x46
 8003e7a:	eb07 0405 	add.w	r4, r7, r5
 8003e7e:	f43f af67 	beq.w	8003d50 <_vfprintf_r+0x1860>
 8003e82:	e76b      	b.n	8003d5c <_vfprintf_r+0x186c>
 8003e84:	f1b9 0f00 	cmp.w	r9, #0
 8003e88:	d131      	bne.n	8003eee <_vfprintf_r+0x19fe>
 8003e8a:	07c5      	lsls	r5, r0, #31
 8003e8c:	d42f      	bmi.n	8003eee <_vfprintf_r+0x19fe>
 8003e8e:	2301      	movs	r3, #1
 8003e90:	9304      	str	r3, [sp, #16]
 8003e92:	9309      	str	r3, [sp, #36]	; 0x24
 8003e94:	2666      	movs	r6, #102	; 0x66
 8003e96:	e642      	b.n	8003b1e <_vfprintf_r+0x162e>
 8003e98:	07c3      	lsls	r3, r0, #31
 8003e9a:	f57f abbf 	bpl.w	800361c <_vfprintf_r+0x112c>
 8003e9e:	f7ff bbb9 	b.w	8003614 <_vfprintf_r+0x1124>
 8003ea2:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003ea4:	f1c3 0301 	rsb	r3, r3, #1
 8003ea8:	441a      	add	r2, r3
 8003eaa:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003eae:	9209      	str	r2, [sp, #36]	; 0x24
 8003eb0:	9304      	str	r3, [sp, #16]
 8003eb2:	2667      	movs	r6, #103	; 0x67
 8003eb4:	e633      	b.n	8003b1e <_vfprintf_r+0x162e>
 8003eb6:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003eba:	f04f 0901 	mov.w	r9, #1
 8003ebe:	e457      	b.n	8003770 <_vfprintf_r+0x1280>
 8003ec0:	465a      	mov	r2, fp
 8003ec2:	e511      	b.n	80038e8 <_vfprintf_r+0x13f8>
 8003ec4:	2e47      	cmp	r6, #71	; 0x47
 8003ec6:	f47f af5e 	bne.w	8003d86 <_vfprintf_r+0x1896>
 8003eca:	f018 0f01 	tst.w	r8, #1
 8003ece:	f43f ab61 	beq.w	8003594 <_vfprintf_r+0x10a4>
 8003ed2:	e7d1      	b.n	8003e78 <_vfprintf_r+0x1988>
 8003ed4:	2200      	movs	r2, #0
 8003ed6:	2300      	movs	r3, #0
 8003ed8:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003edc:	f7fd f894 	bl	8001008 <__aeabi_dcmpeq>
 8003ee0:	2800      	cmp	r0, #0
 8003ee2:	f47f af39 	bne.w	8003d58 <_vfprintf_r+0x1868>
 8003ee6:	f1c5 0501 	rsb	r5, r5, #1
 8003eea:	9524      	str	r5, [sp, #144]	; 0x90
 8003eec:	e735      	b.n	8003d5a <_vfprintf_r+0x186a>
 8003eee:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003ef0:	3301      	adds	r3, #1
 8003ef2:	444b      	add	r3, r9
 8003ef4:	9309      	str	r3, [sp, #36]	; 0x24
 8003ef6:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003efa:	9304      	str	r3, [sp, #16]
 8003efc:	2666      	movs	r6, #102	; 0x66
 8003efe:	e60e      	b.n	8003b1e <_vfprintf_r+0x162e>
 8003f00:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003f04:	f7ff bb7a 	b.w	80035fc <_vfprintf_r+0x110c>
 8003f08:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f0a:	9907      	ldr	r1, [sp, #28]
 8003f0c:	9803      	ldr	r0, [sp, #12]
 8003f0e:	f002 fe1d 	bl	8006b4c <__sprint_r>
 8003f12:	2800      	cmp	r0, #0
 8003f14:	f47f a864 	bne.w	8002fe0 <_vfprintf_r+0xaf0>
 8003f18:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003f1c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f20:	f7ff bbbd 	b.w	800369e <_vfprintf_r+0x11ae>
 8003f24:	9908      	ldr	r1, [sp, #32]
 8003f26:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003f2a:	680b      	ldr	r3, [r1, #0]
 8003f2c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003f30:	1d0b      	adds	r3, r1, #4
 8003f32:	4692      	mov	sl, r2
 8003f34:	9308      	str	r3, [sp, #32]
 8003f36:	f7fe bb59 	b.w	80025ec <_vfprintf_r+0xfc>
 8003f3a:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003f3e:	f7ff bb60 	b.w	8003602 <_vfprintf_r+0x1112>
 8003f42:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003f46:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003f4a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f4e:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003f52:	f7ff b84c 	b.w	8002fee <_vfprintf_r+0xafe>
 8003f56:	bf00      	nop
 8003f58:	08007244 	.word	0x08007244
 8003f5c:	08007214 	.word	0x08007214
 8003f60:	cccccccd 	.word	0xcccccccd
 8003f64:	080071fc 	.word	0x080071fc
 8003f68:	080071f8 	.word	0x080071f8

08003f6c <__sbprintf>:
 8003f6c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003f70:	460c      	mov	r4, r1
 8003f72:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003f76:	8989      	ldrh	r1, [r1, #12]
 8003f78:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003f7a:	89e5      	ldrh	r5, [r4, #14]
 8003f7c:	9619      	str	r6, [sp, #100]	; 0x64
 8003f7e:	f021 0102 	bic.w	r1, r1, #2
 8003f82:	4606      	mov	r6, r0
 8003f84:	69e0      	ldr	r0, [r4, #28]
 8003f86:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003f8a:	4617      	mov	r7, r2
 8003f8c:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003f90:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003f92:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003f96:	4698      	mov	r8, r3
 8003f98:	ad1a      	add	r5, sp, #104	; 0x68
 8003f9a:	2300      	movs	r3, #0
 8003f9c:	9007      	str	r0, [sp, #28]
 8003f9e:	a816      	add	r0, sp, #88	; 0x58
 8003fa0:	9209      	str	r2, [sp, #36]	; 0x24
 8003fa2:	9306      	str	r3, [sp, #24]
 8003fa4:	9500      	str	r5, [sp, #0]
 8003fa6:	9504      	str	r5, [sp, #16]
 8003fa8:	9102      	str	r1, [sp, #8]
 8003faa:	9105      	str	r1, [sp, #20]
 8003fac:	f001 fc8a 	bl	80058c4 <__retarget_lock_init_recursive>
 8003fb0:	4643      	mov	r3, r8
 8003fb2:	463a      	mov	r2, r7
 8003fb4:	4669      	mov	r1, sp
 8003fb6:	4630      	mov	r0, r6
 8003fb8:	f7fe fa9a 	bl	80024f0 <_vfprintf_r>
 8003fbc:	1e05      	subs	r5, r0, #0
 8003fbe:	db07      	blt.n	8003fd0 <__sbprintf+0x64>
 8003fc0:	4630      	mov	r0, r6
 8003fc2:	4669      	mov	r1, sp
 8003fc4:	f001 f8d6 	bl	8005174 <_fflush_r>
 8003fc8:	2800      	cmp	r0, #0
 8003fca:	bf18      	it	ne
 8003fcc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003fd0:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003fd4:	065b      	lsls	r3, r3, #25
 8003fd6:	d503      	bpl.n	8003fe0 <__sbprintf+0x74>
 8003fd8:	89a3      	ldrh	r3, [r4, #12]
 8003fda:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003fde:	81a3      	strh	r3, [r4, #12]
 8003fe0:	9816      	ldr	r0, [sp, #88]	; 0x58
 8003fe2:	f001 fc71 	bl	80058c8 <__retarget_lock_close_recursive>
 8003fe6:	4628      	mov	r0, r5
 8003fe8:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8003fec:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08003ff0 <__swsetup_r>:
 8003ff0:	b538      	push	{r3, r4, r5, lr}
 8003ff2:	4b31      	ldr	r3, [pc, #196]	; (80040b8 <__swsetup_r+0xc8>)
 8003ff4:	681b      	ldr	r3, [r3, #0]
 8003ff6:	4605      	mov	r5, r0
 8003ff8:	460c      	mov	r4, r1
 8003ffa:	b113      	cbz	r3, 8004002 <__swsetup_r+0x12>
 8003ffc:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8003ffe:	2a00      	cmp	r2, #0
 8004000:	d03a      	beq.n	8004078 <__swsetup_r+0x88>
 8004002:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004006:	b293      	uxth	r3, r2
 8004008:	0718      	lsls	r0, r3, #28
 800400a:	d50c      	bpl.n	8004026 <__swsetup_r+0x36>
 800400c:	6920      	ldr	r0, [r4, #16]
 800400e:	b1a8      	cbz	r0, 800403c <__swsetup_r+0x4c>
 8004010:	f013 0201 	ands.w	r2, r3, #1
 8004014:	d020      	beq.n	8004058 <__swsetup_r+0x68>
 8004016:	6963      	ldr	r3, [r4, #20]
 8004018:	2200      	movs	r2, #0
 800401a:	425b      	negs	r3, r3
 800401c:	61a3      	str	r3, [r4, #24]
 800401e:	60a2      	str	r2, [r4, #8]
 8004020:	b300      	cbz	r0, 8004064 <__swsetup_r+0x74>
 8004022:	2000      	movs	r0, #0
 8004024:	bd38      	pop	{r3, r4, r5, pc}
 8004026:	06d9      	lsls	r1, r3, #27
 8004028:	d53e      	bpl.n	80040a8 <__swsetup_r+0xb8>
 800402a:	0758      	lsls	r0, r3, #29
 800402c:	d428      	bmi.n	8004080 <__swsetup_r+0x90>
 800402e:	6920      	ldr	r0, [r4, #16]
 8004030:	f042 0308 	orr.w	r3, r2, #8
 8004034:	81a3      	strh	r3, [r4, #12]
 8004036:	b29b      	uxth	r3, r3
 8004038:	2800      	cmp	r0, #0
 800403a:	d1e9      	bne.n	8004010 <__swsetup_r+0x20>
 800403c:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004040:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 8004044:	d0e4      	beq.n	8004010 <__swsetup_r+0x20>
 8004046:	4628      	mov	r0, r5
 8004048:	4621      	mov	r1, r4
 800404a:	f001 fc71 	bl	8005930 <__smakebuf_r>
 800404e:	89a3      	ldrh	r3, [r4, #12]
 8004050:	6920      	ldr	r0, [r4, #16]
 8004052:	f013 0201 	ands.w	r2, r3, #1
 8004056:	d1de      	bne.n	8004016 <__swsetup_r+0x26>
 8004058:	0799      	lsls	r1, r3, #30
 800405a:	bf58      	it	pl
 800405c:	6962      	ldrpl	r2, [r4, #20]
 800405e:	60a2      	str	r2, [r4, #8]
 8004060:	2800      	cmp	r0, #0
 8004062:	d1de      	bne.n	8004022 <__swsetup_r+0x32>
 8004064:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004068:	061a      	lsls	r2, r3, #24
 800406a:	d5db      	bpl.n	8004024 <__swsetup_r+0x34>
 800406c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004070:	81a3      	strh	r3, [r4, #12]
 8004072:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004076:	bd38      	pop	{r3, r4, r5, pc}
 8004078:	4618      	mov	r0, r3
 800407a:	f001 f8d7 	bl	800522c <__sinit>
 800407e:	e7c0      	b.n	8004002 <__swsetup_r+0x12>
 8004080:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8004082:	b151      	cbz	r1, 800409a <__swsetup_r+0xaa>
 8004084:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004088:	4299      	cmp	r1, r3
 800408a:	d004      	beq.n	8004096 <__swsetup_r+0xa6>
 800408c:	4628      	mov	r0, r5
 800408e:	f001 f96f 	bl	8005370 <_free_r>
 8004092:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004096:	2300      	movs	r3, #0
 8004098:	6323      	str	r3, [r4, #48]	; 0x30
 800409a:	2300      	movs	r3, #0
 800409c:	6920      	ldr	r0, [r4, #16]
 800409e:	6063      	str	r3, [r4, #4]
 80040a0:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80040a4:	6020      	str	r0, [r4, #0]
 80040a6:	e7c3      	b.n	8004030 <__swsetup_r+0x40>
 80040a8:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80040ac:	2309      	movs	r3, #9
 80040ae:	602b      	str	r3, [r5, #0]
 80040b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80040b4:	81a2      	strh	r2, [r4, #12]
 80040b6:	bd38      	pop	{r3, r4, r5, pc}
 80040b8:	20000018 	.word	0x20000018

080040bc <register_fini>:
 80040bc:	4b02      	ldr	r3, [pc, #8]	; (80040c8 <register_fini+0xc>)
 80040be:	b113      	cbz	r3, 80040c6 <register_fini+0xa>
 80040c0:	4802      	ldr	r0, [pc, #8]	; (80040cc <register_fini+0x10>)
 80040c2:	f000 b805 	b.w	80040d0 <atexit>
 80040c6:	4770      	bx	lr
 80040c8:	00000000 	.word	0x00000000
 80040cc:	0800529d 	.word	0x0800529d

080040d0 <atexit>:
 80040d0:	2300      	movs	r3, #0
 80040d2:	4601      	mov	r1, r0
 80040d4:	461a      	mov	r2, r3
 80040d6:	4618      	mov	r0, r3
 80040d8:	f002 bd58 	b.w	8006b8c <__register_exitproc>

080040dc <quorem>:
 80040dc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80040e0:	6903      	ldr	r3, [r0, #16]
 80040e2:	690f      	ldr	r7, [r1, #16]
 80040e4:	42bb      	cmp	r3, r7
 80040e6:	b083      	sub	sp, #12
 80040e8:	f2c0 8086 	blt.w	80041f8 <quorem+0x11c>
 80040ec:	3f01      	subs	r7, #1
 80040ee:	f101 0914 	add.w	r9, r1, #20
 80040f2:	f100 0a14 	add.w	sl, r0, #20
 80040f6:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80040fa:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80040fe:	00bc      	lsls	r4, r7, #2
 8004100:	3201      	adds	r2, #1
 8004102:	fbb3 f8f2 	udiv	r8, r3, r2
 8004106:	eb0a 0304 	add.w	r3, sl, r4
 800410a:	9400      	str	r4, [sp, #0]
 800410c:	eb09 0b04 	add.w	fp, r9, r4
 8004110:	9301      	str	r3, [sp, #4]
 8004112:	f1b8 0f00 	cmp.w	r8, #0
 8004116:	d038      	beq.n	800418a <quorem+0xae>
 8004118:	2500      	movs	r5, #0
 800411a:	462e      	mov	r6, r5
 800411c:	46ce      	mov	lr, r9
 800411e:	46d4      	mov	ip, sl
 8004120:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004124:	f8dc 3000 	ldr.w	r3, [ip]
 8004128:	b2a2      	uxth	r2, r4
 800412a:	fb08 5502 	mla	r5, r8, r2, r5
 800412e:	0c22      	lsrs	r2, r4, #16
 8004130:	0c2c      	lsrs	r4, r5, #16
 8004132:	fb08 4202 	mla	r2, r8, r2, r4
 8004136:	b2ad      	uxth	r5, r5
 8004138:	1b75      	subs	r5, r6, r5
 800413a:	b296      	uxth	r6, r2
 800413c:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004140:	fa15 f383 	uxtah	r3, r5, r3
 8004144:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004148:	b29b      	uxth	r3, r3
 800414a:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 800414e:	45f3      	cmp	fp, lr
 8004150:	ea4f 4512 	mov.w	r5, r2, lsr #16
 8004154:	f84c 3b04 	str.w	r3, [ip], #4
 8004158:	ea4f 4626 	mov.w	r6, r6, asr #16
 800415c:	d2e0      	bcs.n	8004120 <quorem+0x44>
 800415e:	9b00      	ldr	r3, [sp, #0]
 8004160:	f85a 3003 	ldr.w	r3, [sl, r3]
 8004164:	b98b      	cbnz	r3, 800418a <quorem+0xae>
 8004166:	9a01      	ldr	r2, [sp, #4]
 8004168:	1f13      	subs	r3, r2, #4
 800416a:	459a      	cmp	sl, r3
 800416c:	d20c      	bcs.n	8004188 <quorem+0xac>
 800416e:	f852 3c04 	ldr.w	r3, [r2, #-4]
 8004172:	b94b      	cbnz	r3, 8004188 <quorem+0xac>
 8004174:	f1a2 0308 	sub.w	r3, r2, #8
 8004178:	e002      	b.n	8004180 <quorem+0xa4>
 800417a:	681a      	ldr	r2, [r3, #0]
 800417c:	3b04      	subs	r3, #4
 800417e:	b91a      	cbnz	r2, 8004188 <quorem+0xac>
 8004180:	459a      	cmp	sl, r3
 8004182:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004186:	d3f8      	bcc.n	800417a <quorem+0x9e>
 8004188:	6107      	str	r7, [r0, #16]
 800418a:	4604      	mov	r4, r0
 800418c:	f002 f944 	bl	8006418 <__mcmp>
 8004190:	2800      	cmp	r0, #0
 8004192:	db2d      	blt.n	80041f0 <quorem+0x114>
 8004194:	f108 0801 	add.w	r8, r8, #1
 8004198:	4655      	mov	r5, sl
 800419a:	2300      	movs	r3, #0
 800419c:	f859 1b04 	ldr.w	r1, [r9], #4
 80041a0:	6828      	ldr	r0, [r5, #0]
 80041a2:	b28a      	uxth	r2, r1
 80041a4:	1a9a      	subs	r2, r3, r2
 80041a6:	0c0b      	lsrs	r3, r1, #16
 80041a8:	fa12 f280 	uxtah	r2, r2, r0
 80041ac:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80041b0:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80041b4:	b292      	uxth	r2, r2
 80041b6:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80041ba:	45cb      	cmp	fp, r9
 80041bc:	f845 2b04 	str.w	r2, [r5], #4
 80041c0:	ea4f 4323 	mov.w	r3, r3, asr #16
 80041c4:	d2ea      	bcs.n	800419c <quorem+0xc0>
 80041c6:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80041ca:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80041ce:	b97a      	cbnz	r2, 80041f0 <quorem+0x114>
 80041d0:	1f1a      	subs	r2, r3, #4
 80041d2:	4592      	cmp	sl, r2
 80041d4:	d20b      	bcs.n	80041ee <quorem+0x112>
 80041d6:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80041da:	b942      	cbnz	r2, 80041ee <quorem+0x112>
 80041dc:	3b08      	subs	r3, #8
 80041de:	e002      	b.n	80041e6 <quorem+0x10a>
 80041e0:	681a      	ldr	r2, [r3, #0]
 80041e2:	3b04      	subs	r3, #4
 80041e4:	b91a      	cbnz	r2, 80041ee <quorem+0x112>
 80041e6:	459a      	cmp	sl, r3
 80041e8:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80041ec:	d3f8      	bcc.n	80041e0 <quorem+0x104>
 80041ee:	6127      	str	r7, [r4, #16]
 80041f0:	4640      	mov	r0, r8
 80041f2:	b003      	add	sp, #12
 80041f4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80041f8:	2000      	movs	r0, #0
 80041fa:	b003      	add	sp, #12
 80041fc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004200 <_dtoa_r>:
 8004200:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004204:	ec55 4b10 	vmov	r4, r5, d0
 8004208:	b09b      	sub	sp, #108	; 0x6c
 800420a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800420c:	9102      	str	r1, [sp, #8]
 800420e:	4681      	mov	r9, r0
 8004210:	9207      	str	r2, [sp, #28]
 8004212:	9305      	str	r3, [sp, #20]
 8004214:	e9cd 4500 	strd	r4, r5, [sp]
 8004218:	b156      	cbz	r6, 8004230 <_dtoa_r+0x30>
 800421a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800421c:	6072      	str	r2, [r6, #4]
 800421e:	2301      	movs	r3, #1
 8004220:	4093      	lsls	r3, r2
 8004222:	60b3      	str	r3, [r6, #8]
 8004224:	4631      	mov	r1, r6
 8004226:	f001 ff07 	bl	8006038 <_Bfree>
 800422a:	2300      	movs	r3, #0
 800422c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004230:	f1b5 0800 	subs.w	r8, r5, #0
 8004234:	9a24      	ldr	r2, [sp, #144]	; 0x90
 8004236:	bfb4      	ite	lt
 8004238:	2301      	movlt	r3, #1
 800423a:	2300      	movge	r3, #0
 800423c:	6013      	str	r3, [r2, #0]
 800423e:	4b76      	ldr	r3, [pc, #472]	; (8004418 <_dtoa_r+0x218>)
 8004240:	bfbc      	itt	lt
 8004242:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 8004246:	f8cd 8004 	strlt.w	r8, [sp, #4]
 800424a:	ea33 0308 	bics.w	r3, r3, r8
 800424e:	f000 80a6 	beq.w	800439e <_dtoa_r+0x19e>
 8004252:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004256:	2200      	movs	r2, #0
 8004258:	2300      	movs	r3, #0
 800425a:	4630      	mov	r0, r6
 800425c:	4639      	mov	r1, r7
 800425e:	f7fc fed3 	bl	8001008 <__aeabi_dcmpeq>
 8004262:	4605      	mov	r5, r0
 8004264:	b178      	cbz	r0, 8004286 <_dtoa_r+0x86>
 8004266:	9a05      	ldr	r2, [sp, #20]
 8004268:	2301      	movs	r3, #1
 800426a:	6013      	str	r3, [r2, #0]
 800426c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800426e:	2b00      	cmp	r3, #0
 8004270:	f000 80c0 	beq.w	80043f4 <_dtoa_r+0x1f4>
 8004274:	4b69      	ldr	r3, [pc, #420]	; (800441c <_dtoa_r+0x21c>)
 8004276:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004278:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 800427c:	6013      	str	r3, [r2, #0]
 800427e:	4658      	mov	r0, fp
 8004280:	b01b      	add	sp, #108	; 0x6c
 8004282:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004286:	aa18      	add	r2, sp, #96	; 0x60
 8004288:	a919      	add	r1, sp, #100	; 0x64
 800428a:	ec47 6b10 	vmov	d0, r6, r7
 800428e:	4648      	mov	r0, r9
 8004290:	f002 f954 	bl	800653c <__d2b>
 8004294:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004298:	4682      	mov	sl, r0
 800429a:	f040 80a0 	bne.w	80043de <_dtoa_r+0x1de>
 800429e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80042a2:	442c      	add	r4, r5
 80042a4:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80042a8:	2b20      	cmp	r3, #32
 80042aa:	f340 842c 	ble.w	8004b06 <_dtoa_r+0x906>
 80042ae:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80042b2:	fa08 f803 	lsl.w	r8, r8, r3
 80042b6:	9b00      	ldr	r3, [sp, #0]
 80042b8:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80042bc:	fa23 f000 	lsr.w	r0, r3, r0
 80042c0:	ea48 0000 	orr.w	r0, r8, r0
 80042c4:	f7fc fbbe 	bl	8000a44 <__aeabi_ui2d>
 80042c8:	2301      	movs	r3, #1
 80042ca:	4606      	mov	r6, r0
 80042cc:	3c01      	subs	r4, #1
 80042ce:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80042d2:	930f      	str	r3, [sp, #60]	; 0x3c
 80042d4:	4630      	mov	r0, r6
 80042d6:	4639      	mov	r1, r7
 80042d8:	2200      	movs	r2, #0
 80042da:	4b51      	ldr	r3, [pc, #324]	; (8004420 <_dtoa_r+0x220>)
 80042dc:	f7fc fa74 	bl	80007c8 <__aeabi_dsub>
 80042e0:	a347      	add	r3, pc, #284	; (adr r3, 8004400 <_dtoa_r+0x200>)
 80042e2:	e9d3 2300 	ldrd	r2, r3, [r3]
 80042e6:	f7fc fc27 	bl	8000b38 <__aeabi_dmul>
 80042ea:	a347      	add	r3, pc, #284	; (adr r3, 8004408 <_dtoa_r+0x208>)
 80042ec:	e9d3 2300 	ldrd	r2, r3, [r3]
 80042f0:	f7fc fa6c 	bl	80007cc <__adddf3>
 80042f4:	4606      	mov	r6, r0
 80042f6:	4620      	mov	r0, r4
 80042f8:	460f      	mov	r7, r1
 80042fa:	f7fc fbb3 	bl	8000a64 <__aeabi_i2d>
 80042fe:	a344      	add	r3, pc, #272	; (adr r3, 8004410 <_dtoa_r+0x210>)
 8004300:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004304:	f7fc fc18 	bl	8000b38 <__aeabi_dmul>
 8004308:	4602      	mov	r2, r0
 800430a:	460b      	mov	r3, r1
 800430c:	4630      	mov	r0, r6
 800430e:	4639      	mov	r1, r7
 8004310:	f7fc fa5c 	bl	80007cc <__adddf3>
 8004314:	4606      	mov	r6, r0
 8004316:	460f      	mov	r7, r1
 8004318:	f7fc febe 	bl	8001098 <__aeabi_d2iz>
 800431c:	2200      	movs	r2, #0
 800431e:	9006      	str	r0, [sp, #24]
 8004320:	2300      	movs	r3, #0
 8004322:	4630      	mov	r0, r6
 8004324:	4639      	mov	r1, r7
 8004326:	f7fc fe79 	bl	800101c <__aeabi_dcmplt>
 800432a:	2800      	cmp	r0, #0
 800432c:	f040 8273 	bne.w	8004816 <_dtoa_r+0x616>
 8004330:	9e06      	ldr	r6, [sp, #24]
 8004332:	2e16      	cmp	r6, #22
 8004334:	f200 825d 	bhi.w	80047f2 <_dtoa_r+0x5f2>
 8004338:	4b3a      	ldr	r3, [pc, #232]	; (8004424 <_dtoa_r+0x224>)
 800433a:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 800433e:	e9d3 0100 	ldrd	r0, r1, [r3]
 8004342:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004346:	f7fc fe87 	bl	8001058 <__aeabi_dcmpgt>
 800434a:	2800      	cmp	r0, #0
 800434c:	f000 83d7 	beq.w	8004afe <_dtoa_r+0x8fe>
 8004350:	1e73      	subs	r3, r6, #1
 8004352:	9306      	str	r3, [sp, #24]
 8004354:	2300      	movs	r3, #0
 8004356:	930d      	str	r3, [sp, #52]	; 0x34
 8004358:	1b2c      	subs	r4, r5, r4
 800435a:	f1b4 0801 	subs.w	r8, r4, #1
 800435e:	f100 8254 	bmi.w	800480a <_dtoa_r+0x60a>
 8004362:	2300      	movs	r3, #0
 8004364:	9308      	str	r3, [sp, #32]
 8004366:	9b06      	ldr	r3, [sp, #24]
 8004368:	2b00      	cmp	r3, #0
 800436a:	f2c0 8245 	blt.w	80047f8 <_dtoa_r+0x5f8>
 800436e:	4498      	add	r8, r3
 8004370:	930c      	str	r3, [sp, #48]	; 0x30
 8004372:	2300      	movs	r3, #0
 8004374:	930b      	str	r3, [sp, #44]	; 0x2c
 8004376:	9b02      	ldr	r3, [sp, #8]
 8004378:	2b09      	cmp	r3, #9
 800437a:	d85b      	bhi.n	8004434 <_dtoa_r+0x234>
 800437c:	2b05      	cmp	r3, #5
 800437e:	f340 83c0 	ble.w	8004b02 <_dtoa_r+0x902>
 8004382:	3b04      	subs	r3, #4
 8004384:	9302      	str	r3, [sp, #8]
 8004386:	2500      	movs	r5, #0
 8004388:	9b02      	ldr	r3, [sp, #8]
 800438a:	3b02      	subs	r3, #2
 800438c:	2b03      	cmp	r3, #3
 800438e:	f200 8498 	bhi.w	8004cc2 <_dtoa_r+0xac2>
 8004392:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004396:	03df      	.short	0x03df
 8004398:	03e803bf 	.word	0x03e803bf
 800439c:	04f5      	.short	0x04f5
 800439e:	9a05      	ldr	r2, [sp, #20]
 80043a0:	f242 730f 	movw	r3, #9999	; 0x270f
 80043a4:	6013      	str	r3, [r2, #0]
 80043a6:	9b00      	ldr	r3, [sp, #0]
 80043a8:	b983      	cbnz	r3, 80043cc <_dtoa_r+0x1cc>
 80043aa:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80043ae:	b96b      	cbnz	r3, 80043cc <_dtoa_r+0x1cc>
 80043b0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80043b2:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004428 <_dtoa_r+0x228>
 80043b6:	2b00      	cmp	r3, #0
 80043b8:	f43f af61 	beq.w	800427e <_dtoa_r+0x7e>
 80043bc:	f10b 0308 	add.w	r3, fp, #8
 80043c0:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80043c2:	4658      	mov	r0, fp
 80043c4:	6013      	str	r3, [r2, #0]
 80043c6:	b01b      	add	sp, #108	; 0x6c
 80043c8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80043cc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80043ce:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800442c <_dtoa_r+0x22c>
 80043d2:	2b00      	cmp	r3, #0
 80043d4:	f43f af53 	beq.w	800427e <_dtoa_r+0x7e>
 80043d8:	f10b 0303 	add.w	r3, fp, #3
 80043dc:	e7f0      	b.n	80043c0 <_dtoa_r+0x1c0>
 80043de:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80043e2:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80043e6:	950f      	str	r5, [sp, #60]	; 0x3c
 80043e8:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80043ec:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80043f0:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80043f2:	e76f      	b.n	80042d4 <_dtoa_r+0xd4>
 80043f4:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004430 <_dtoa_r+0x230>
 80043f8:	4658      	mov	r0, fp
 80043fa:	b01b      	add	sp, #108	; 0x6c
 80043fc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004400:	636f4361 	.word	0x636f4361
 8004404:	3fd287a7 	.word	0x3fd287a7
 8004408:	8b60c8b3 	.word	0x8b60c8b3
 800440c:	3fc68a28 	.word	0x3fc68a28
 8004410:	509f79fb 	.word	0x509f79fb
 8004414:	3fd34413 	.word	0x3fd34413
 8004418:	7ff00000 	.word	0x7ff00000
 800441c:	08007231 	.word	0x08007231
 8004420:	3ff80000 	.word	0x3ff80000
 8004424:	08007290 	.word	0x08007290
 8004428:	08007254 	.word	0x08007254
 800442c:	08007260 	.word	0x08007260
 8004430:	08007230 	.word	0x08007230
 8004434:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004438:	2501      	movs	r5, #1
 800443a:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 800443e:	2300      	movs	r3, #0
 8004440:	9302      	str	r3, [sp, #8]
 8004442:	9307      	str	r3, [sp, #28]
 8004444:	2100      	movs	r1, #0
 8004446:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800444a:	940e      	str	r4, [sp, #56]	; 0x38
 800444c:	4648      	mov	r0, r9
 800444e:	f001 fdcd 	bl	8005fec <_Balloc>
 8004452:	2c0e      	cmp	r4, #14
 8004454:	4683      	mov	fp, r0
 8004456:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800445a:	f200 80fb 	bhi.w	8004654 <_dtoa_r+0x454>
 800445e:	2d00      	cmp	r5, #0
 8004460:	f000 80f8 	beq.w	8004654 <_dtoa_r+0x454>
 8004464:	ed9d 7b00 	vldr	d7, [sp]
 8004468:	9906      	ldr	r1, [sp, #24]
 800446a:	2900      	cmp	r1, #0
 800446c:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004470:	f340 83e5 	ble.w	8004c3e <_dtoa_r+0xa3e>
 8004474:	4b9d      	ldr	r3, [pc, #628]	; (80046ec <_dtoa_r+0x4ec>)
 8004476:	f001 020f 	and.w	r2, r1, #15
 800447a:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800447e:	ed93 7b00 	vldr	d7, [r3]
 8004482:	110c      	asrs	r4, r1, #4
 8004484:	06e2      	lsls	r2, r4, #27
 8004486:	ed8d 7b00 	vstr	d7, [sp]
 800448a:	f140 849e 	bpl.w	8004dca <_dtoa_r+0xbca>
 800448e:	4b98      	ldr	r3, [pc, #608]	; (80046f0 <_dtoa_r+0x4f0>)
 8004490:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004494:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004498:	f7fc fc78 	bl	8000d8c <__aeabi_ddiv>
 800449c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80044a0:	f004 040f 	and.w	r4, r4, #15
 80044a4:	2603      	movs	r6, #3
 80044a6:	b17c      	cbz	r4, 80044c8 <_dtoa_r+0x2c8>
 80044a8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044ac:	4d90      	ldr	r5, [pc, #576]	; (80046f0 <_dtoa_r+0x4f0>)
 80044ae:	07e3      	lsls	r3, r4, #31
 80044b0:	d504      	bpl.n	80044bc <_dtoa_r+0x2bc>
 80044b2:	e9d5 2300 	ldrd	r2, r3, [r5]
 80044b6:	f7fc fb3f 	bl	8000b38 <__aeabi_dmul>
 80044ba:	3601      	adds	r6, #1
 80044bc:	1064      	asrs	r4, r4, #1
 80044be:	f105 0508 	add.w	r5, r5, #8
 80044c2:	d1f4      	bne.n	80044ae <_dtoa_r+0x2ae>
 80044c4:	e9cd 0100 	strd	r0, r1, [sp]
 80044c8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80044cc:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80044d0:	f7fc fc5c 	bl	8000d8c <__aeabi_ddiv>
 80044d4:	e9cd 0100 	strd	r0, r1, [sp]
 80044d8:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80044da:	b143      	cbz	r3, 80044ee <_dtoa_r+0x2ee>
 80044dc:	2200      	movs	r2, #0
 80044de:	4b85      	ldr	r3, [pc, #532]	; (80046f4 <_dtoa_r+0x4f4>)
 80044e0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044e4:	f7fc fd9a 	bl	800101c <__aeabi_dcmplt>
 80044e8:	2800      	cmp	r0, #0
 80044ea:	f040 84ff 	bne.w	8004eec <_dtoa_r+0xcec>
 80044ee:	4630      	mov	r0, r6
 80044f0:	f7fc fab8 	bl	8000a64 <__aeabi_i2d>
 80044f4:	e9dd 2300 	ldrd	r2, r3, [sp]
 80044f8:	f7fc fb1e 	bl	8000b38 <__aeabi_dmul>
 80044fc:	4b7e      	ldr	r3, [pc, #504]	; (80046f8 <_dtoa_r+0x4f8>)
 80044fe:	2200      	movs	r2, #0
 8004500:	f7fc f964 	bl	80007cc <__adddf3>
 8004504:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004506:	4606      	mov	r6, r0
 8004508:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800450c:	2b00      	cmp	r3, #0
 800450e:	f000 841c 	beq.w	8004d4a <_dtoa_r+0xb4a>
 8004512:	9b06      	ldr	r3, [sp, #24]
 8004514:	9316      	str	r3, [sp, #88]	; 0x58
 8004516:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004518:	9312      	str	r3, [sp, #72]	; 0x48
 800451a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800451e:	f7fc fdbb 	bl	8001098 <__aeabi_d2iz>
 8004522:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004524:	4b71      	ldr	r3, [pc, #452]	; (80046ec <_dtoa_r+0x4ec>)
 8004526:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800452a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800452e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8004532:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8004536:	f7fc fa95 	bl	8000a64 <__aeabi_i2d>
 800453a:	460b      	mov	r3, r1
 800453c:	4602      	mov	r2, r0
 800453e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004542:	e9cd 6700 	strd	r6, r7, [sp]
 8004546:	f7fc f93f 	bl	80007c8 <__aeabi_dsub>
 800454a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800454c:	b2ed      	uxtb	r5, r5
 800454e:	4606      	mov	r6, r0
 8004550:	460f      	mov	r7, r1
 8004552:	f10b 0401 	add.w	r4, fp, #1
 8004556:	2b00      	cmp	r3, #0
 8004558:	f000 8458 	beq.w	8004e0c <_dtoa_r+0xc0c>
 800455c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004560:	2000      	movs	r0, #0
 8004562:	4966      	ldr	r1, [pc, #408]	; (80046fc <_dtoa_r+0x4fc>)
 8004564:	f7fc fc12 	bl	8000d8c <__aeabi_ddiv>
 8004568:	e9dd 2300 	ldrd	r2, r3, [sp]
 800456c:	f7fc f92c 	bl	80007c8 <__aeabi_dsub>
 8004570:	f88b 5000 	strb.w	r5, [fp]
 8004574:	4632      	mov	r2, r6
 8004576:	463b      	mov	r3, r7
 8004578:	e9cd 0100 	strd	r0, r1, [sp]
 800457c:	f7fc fd6c 	bl	8001058 <__aeabi_dcmpgt>
 8004580:	2800      	cmp	r0, #0
 8004582:	f040 8502 	bne.w	8004f8a <_dtoa_r+0xd8a>
 8004586:	4632      	mov	r2, r6
 8004588:	463b      	mov	r3, r7
 800458a:	2000      	movs	r0, #0
 800458c:	4959      	ldr	r1, [pc, #356]	; (80046f4 <_dtoa_r+0x4f4>)
 800458e:	f7fc f91b 	bl	80007c8 <__aeabi_dsub>
 8004592:	4602      	mov	r2, r0
 8004594:	460b      	mov	r3, r1
 8004596:	e9dd 0100 	ldrd	r0, r1, [sp]
 800459a:	f7fc fd5d 	bl	8001058 <__aeabi_dcmpgt>
 800459e:	2800      	cmp	r0, #0
 80045a0:	f040 84fb 	bne.w	8004f9a <_dtoa_r+0xd9a>
 80045a4:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80045a6:	2a01      	cmp	r2, #1
 80045a8:	d050      	beq.n	800464c <_dtoa_r+0x44c>
 80045aa:	445a      	add	r2, fp
 80045ac:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80045b0:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80045b4:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80045b8:	4692      	mov	sl, r2
 80045ba:	46cb      	mov	fp, r9
 80045bc:	e9dd 8900 	ldrd	r8, r9, [sp]
 80045c0:	e00c      	b.n	80045dc <_dtoa_r+0x3dc>
 80045c2:	2000      	movs	r0, #0
 80045c4:	494b      	ldr	r1, [pc, #300]	; (80046f4 <_dtoa_r+0x4f4>)
 80045c6:	f7fc f8ff 	bl	80007c8 <__aeabi_dsub>
 80045ca:	4642      	mov	r2, r8
 80045cc:	464b      	mov	r3, r9
 80045ce:	f7fc fd25 	bl	800101c <__aeabi_dcmplt>
 80045d2:	2800      	cmp	r0, #0
 80045d4:	f040 84dc 	bne.w	8004f90 <_dtoa_r+0xd90>
 80045d8:	4554      	cmp	r4, sl
 80045da:	d030      	beq.n	800463e <_dtoa_r+0x43e>
 80045dc:	4640      	mov	r0, r8
 80045de:	4649      	mov	r1, r9
 80045e0:	2200      	movs	r2, #0
 80045e2:	4b47      	ldr	r3, [pc, #284]	; (8004700 <_dtoa_r+0x500>)
 80045e4:	f7fc faa8 	bl	8000b38 <__aeabi_dmul>
 80045e8:	2200      	movs	r2, #0
 80045ea:	4b45      	ldr	r3, [pc, #276]	; (8004700 <_dtoa_r+0x500>)
 80045ec:	4680      	mov	r8, r0
 80045ee:	4689      	mov	r9, r1
 80045f0:	4630      	mov	r0, r6
 80045f2:	4639      	mov	r1, r7
 80045f4:	f7fc faa0 	bl	8000b38 <__aeabi_dmul>
 80045f8:	460f      	mov	r7, r1
 80045fa:	4606      	mov	r6, r0
 80045fc:	f7fc fd4c 	bl	8001098 <__aeabi_d2iz>
 8004600:	4605      	mov	r5, r0
 8004602:	f7fc fa2f 	bl	8000a64 <__aeabi_i2d>
 8004606:	4602      	mov	r2, r0
 8004608:	460b      	mov	r3, r1
 800460a:	4630      	mov	r0, r6
 800460c:	4639      	mov	r1, r7
 800460e:	f7fc f8db 	bl	80007c8 <__aeabi_dsub>
 8004612:	3530      	adds	r5, #48	; 0x30
 8004614:	b2ed      	uxtb	r5, r5
 8004616:	4642      	mov	r2, r8
 8004618:	464b      	mov	r3, r9
 800461a:	f804 5b01 	strb.w	r5, [r4], #1
 800461e:	4606      	mov	r6, r0
 8004620:	460f      	mov	r7, r1
 8004622:	f7fc fcfb 	bl	800101c <__aeabi_dcmplt>
 8004626:	4632      	mov	r2, r6
 8004628:	463b      	mov	r3, r7
 800462a:	2800      	cmp	r0, #0
 800462c:	d0c9      	beq.n	80045c2 <_dtoa_r+0x3c2>
 800462e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004630:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004634:	9306      	str	r3, [sp, #24]
 8004636:	46d9      	mov	r9, fp
 8004638:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800463c:	e236      	b.n	8004aac <_dtoa_r+0x8ac>
 800463e:	46d9      	mov	r9, fp
 8004640:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8004644:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004648:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800464c:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004650:	e9cd 3400 	strd	r3, r4, [sp]
 8004654:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8004656:	2b00      	cmp	r3, #0
 8004658:	f2c0 80ae 	blt.w	80047b8 <_dtoa_r+0x5b8>
 800465c:	9a06      	ldr	r2, [sp, #24]
 800465e:	2a0e      	cmp	r2, #14
 8004660:	f300 80aa 	bgt.w	80047b8 <_dtoa_r+0x5b8>
 8004664:	4b21      	ldr	r3, [pc, #132]	; (80046ec <_dtoa_r+0x4ec>)
 8004666:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800466a:	ed93 7b00 	vldr	d7, [r3]
 800466e:	9b07      	ldr	r3, [sp, #28]
 8004670:	2b00      	cmp	r3, #0
 8004672:	ed8d 7b02 	vstr	d7, [sp, #8]
 8004676:	f2c0 82be 	blt.w	8004bf6 <_dtoa_r+0x9f6>
 800467a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800467e:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004682:	4630      	mov	r0, r6
 8004684:	4639      	mov	r1, r7
 8004686:	f7fc fb81 	bl	8000d8c <__aeabi_ddiv>
 800468a:	f7fc fd05 	bl	8001098 <__aeabi_d2iz>
 800468e:	4605      	mov	r5, r0
 8004690:	f7fc f9e8 	bl	8000a64 <__aeabi_i2d>
 8004694:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004698:	f7fc fa4e 	bl	8000b38 <__aeabi_dmul>
 800469c:	460b      	mov	r3, r1
 800469e:	4602      	mov	r2, r0
 80046a0:	4639      	mov	r1, r7
 80046a2:	4630      	mov	r0, r6
 80046a4:	f7fc f890 	bl	80007c8 <__aeabi_dsub>
 80046a8:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80046ac:	f88b 3000 	strb.w	r3, [fp]
 80046b0:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046b2:	2b01      	cmp	r3, #1
 80046b4:	4606      	mov	r6, r0
 80046b6:	460f      	mov	r7, r1
 80046b8:	f10b 0401 	add.w	r4, fp, #1
 80046bc:	d053      	beq.n	8004766 <_dtoa_r+0x566>
 80046be:	2200      	movs	r2, #0
 80046c0:	4b0f      	ldr	r3, [pc, #60]	; (8004700 <_dtoa_r+0x500>)
 80046c2:	f7fc fa39 	bl	8000b38 <__aeabi_dmul>
 80046c6:	2200      	movs	r2, #0
 80046c8:	2300      	movs	r3, #0
 80046ca:	4606      	mov	r6, r0
 80046cc:	460f      	mov	r7, r1
 80046ce:	f7fc fc9b 	bl	8001008 <__aeabi_dcmpeq>
 80046d2:	2800      	cmp	r0, #0
 80046d4:	f040 81ea 	bne.w	8004aac <_dtoa_r+0x8ac>
 80046d8:	f8cd a000 	str.w	sl, [sp]
 80046dc:	f8cd 901c 	str.w	r9, [sp, #28]
 80046e0:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80046e4:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80046e8:	e017      	b.n	800471a <_dtoa_r+0x51a>
 80046ea:	bf00      	nop
 80046ec:	08007290 	.word	0x08007290
 80046f0:	08007268 	.word	0x08007268
 80046f4:	3ff00000 	.word	0x3ff00000
 80046f8:	401c0000 	.word	0x401c0000
 80046fc:	3fe00000 	.word	0x3fe00000
 8004700:	40240000 	.word	0x40240000
 8004704:	f7fc fa18 	bl	8000b38 <__aeabi_dmul>
 8004708:	2200      	movs	r2, #0
 800470a:	2300      	movs	r3, #0
 800470c:	4606      	mov	r6, r0
 800470e:	460f      	mov	r7, r1
 8004710:	f7fc fc7a 	bl	8001008 <__aeabi_dcmpeq>
 8004714:	2800      	cmp	r0, #0
 8004716:	f040 833d 	bne.w	8004d94 <_dtoa_r+0xb94>
 800471a:	464a      	mov	r2, r9
 800471c:	4653      	mov	r3, sl
 800471e:	4630      	mov	r0, r6
 8004720:	4639      	mov	r1, r7
 8004722:	f7fc fb33 	bl	8000d8c <__aeabi_ddiv>
 8004726:	f7fc fcb7 	bl	8001098 <__aeabi_d2iz>
 800472a:	4605      	mov	r5, r0
 800472c:	f7fc f99a 	bl	8000a64 <__aeabi_i2d>
 8004730:	464a      	mov	r2, r9
 8004732:	4653      	mov	r3, sl
 8004734:	f7fc fa00 	bl	8000b38 <__aeabi_dmul>
 8004738:	4602      	mov	r2, r0
 800473a:	460b      	mov	r3, r1
 800473c:	4630      	mov	r0, r6
 800473e:	4639      	mov	r1, r7
 8004740:	f7fc f842 	bl	80007c8 <__aeabi_dsub>
 8004744:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004748:	f804 cb01 	strb.w	ip, [r4], #1
 800474c:	eba4 0c0b 	sub.w	ip, r4, fp
 8004750:	45e0      	cmp	r8, ip
 8004752:	4606      	mov	r6, r0
 8004754:	460f      	mov	r7, r1
 8004756:	f04f 0200 	mov.w	r2, #0
 800475a:	4bc1      	ldr	r3, [pc, #772]	; (8004a60 <_dtoa_r+0x860>)
 800475c:	d1d2      	bne.n	8004704 <_dtoa_r+0x504>
 800475e:	f8dd a000 	ldr.w	sl, [sp]
 8004762:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004766:	4632      	mov	r2, r6
 8004768:	463b      	mov	r3, r7
 800476a:	4630      	mov	r0, r6
 800476c:	4639      	mov	r1, r7
 800476e:	f7fc f82d 	bl	80007cc <__adddf3>
 8004772:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004776:	4606      	mov	r6, r0
 8004778:	460f      	mov	r7, r1
 800477a:	f7fc fc6d 	bl	8001058 <__aeabi_dcmpgt>
 800477e:	b958      	cbnz	r0, 8004798 <_dtoa_r+0x598>
 8004780:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004784:	4630      	mov	r0, r6
 8004786:	4639      	mov	r1, r7
 8004788:	f7fc fc3e 	bl	8001008 <__aeabi_dcmpeq>
 800478c:	2800      	cmp	r0, #0
 800478e:	f000 818d 	beq.w	8004aac <_dtoa_r+0x8ac>
 8004792:	07e9      	lsls	r1, r5, #31
 8004794:	f140 818a 	bpl.w	8004aac <_dtoa_r+0x8ac>
 8004798:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800479c:	e005      	b.n	80047aa <_dtoa_r+0x5aa>
 800479e:	459b      	cmp	fp, r3
 80047a0:	f000 8373 	beq.w	8004e8a <_dtoa_r+0xc8a>
 80047a4:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80047a8:	461c      	mov	r4, r3
 80047aa:	2d39      	cmp	r5, #57	; 0x39
 80047ac:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80047b0:	d0f5      	beq.n	800479e <_dtoa_r+0x59e>
 80047b2:	3501      	adds	r5, #1
 80047b4:	701d      	strb	r5, [r3, #0]
 80047b6:	e179      	b.n	8004aac <_dtoa_r+0x8ac>
 80047b8:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80047ba:	2a00      	cmp	r2, #0
 80047bc:	d03b      	beq.n	8004836 <_dtoa_r+0x636>
 80047be:	9a02      	ldr	r2, [sp, #8]
 80047c0:	2a01      	cmp	r2, #1
 80047c2:	f340 820b 	ble.w	8004bdc <_dtoa_r+0x9dc>
 80047c6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047c8:	1e5f      	subs	r7, r3, #1
 80047ca:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80047cc:	42bb      	cmp	r3, r7
 80047ce:	f2c0 82e6 	blt.w	8004d9e <_dtoa_r+0xb9e>
 80047d2:	1bdf      	subs	r7, r3, r7
 80047d4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047d6:	2b00      	cmp	r3, #0
 80047d8:	f2c0 830b 	blt.w	8004df2 <_dtoa_r+0xbf2>
 80047dc:	9a08      	ldr	r2, [sp, #32]
 80047de:	4614      	mov	r4, r2
 80047e0:	441a      	add	r2, r3
 80047e2:	4498      	add	r8, r3
 80047e4:	9208      	str	r2, [sp, #32]
 80047e6:	2101      	movs	r1, #1
 80047e8:	4648      	mov	r0, r9
 80047ea:	f001 fcbf 	bl	800616c <__i2b>
 80047ee:	4605      	mov	r5, r0
 80047f0:	e024      	b.n	800483c <_dtoa_r+0x63c>
 80047f2:	2301      	movs	r3, #1
 80047f4:	930d      	str	r3, [sp, #52]	; 0x34
 80047f6:	e5af      	b.n	8004358 <_dtoa_r+0x158>
 80047f8:	9a08      	ldr	r2, [sp, #32]
 80047fa:	9b06      	ldr	r3, [sp, #24]
 80047fc:	1ad2      	subs	r2, r2, r3
 80047fe:	425b      	negs	r3, r3
 8004800:	930b      	str	r3, [sp, #44]	; 0x2c
 8004802:	2300      	movs	r3, #0
 8004804:	9208      	str	r2, [sp, #32]
 8004806:	930c      	str	r3, [sp, #48]	; 0x30
 8004808:	e5b5      	b.n	8004376 <_dtoa_r+0x176>
 800480a:	f1c4 0301 	rsb	r3, r4, #1
 800480e:	9308      	str	r3, [sp, #32]
 8004810:	f04f 0800 	mov.w	r8, #0
 8004814:	e5a7      	b.n	8004366 <_dtoa_r+0x166>
 8004816:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800481a:	4640      	mov	r0, r8
 800481c:	f7fc f922 	bl	8000a64 <__aeabi_i2d>
 8004820:	4632      	mov	r2, r6
 8004822:	463b      	mov	r3, r7
 8004824:	f7fc fbf0 	bl	8001008 <__aeabi_dcmpeq>
 8004828:	2800      	cmp	r0, #0
 800482a:	f47f ad81 	bne.w	8004330 <_dtoa_r+0x130>
 800482e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004832:	9306      	str	r3, [sp, #24]
 8004834:	e57c      	b.n	8004330 <_dtoa_r+0x130>
 8004836:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004838:	9c08      	ldr	r4, [sp, #32]
 800483a:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800483c:	2c00      	cmp	r4, #0
 800483e:	dd0c      	ble.n	800485a <_dtoa_r+0x65a>
 8004840:	f1b8 0f00 	cmp.w	r8, #0
 8004844:	dd09      	ble.n	800485a <_dtoa_r+0x65a>
 8004846:	4544      	cmp	r4, r8
 8004848:	9a08      	ldr	r2, [sp, #32]
 800484a:	4623      	mov	r3, r4
 800484c:	bfa8      	it	ge
 800484e:	4643      	movge	r3, r8
 8004850:	1ad2      	subs	r2, r2, r3
 8004852:	9208      	str	r2, [sp, #32]
 8004854:	1ae4      	subs	r4, r4, r3
 8004856:	eba8 0803 	sub.w	r8, r8, r3
 800485a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800485c:	b16b      	cbz	r3, 800487a <_dtoa_r+0x67a>
 800485e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004860:	2a00      	cmp	r2, #0
 8004862:	f000 8290 	beq.w	8004d86 <_dtoa_r+0xb86>
 8004866:	1bde      	subs	r6, r3, r7
 8004868:	2f00      	cmp	r7, #0
 800486a:	f040 819b 	bne.w	8004ba4 <_dtoa_r+0x9a4>
 800486e:	4651      	mov	r1, sl
 8004870:	4632      	mov	r2, r6
 8004872:	4648      	mov	r0, r9
 8004874:	f001 fd2a 	bl	80062cc <__pow5mult>
 8004878:	4682      	mov	sl, r0
 800487a:	2101      	movs	r1, #1
 800487c:	4648      	mov	r0, r9
 800487e:	f001 fc75 	bl	800616c <__i2b>
 8004882:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004884:	4606      	mov	r6, r0
 8004886:	2a00      	cmp	r2, #0
 8004888:	f040 8125 	bne.w	8004ad6 <_dtoa_r+0x8d6>
 800488c:	9b02      	ldr	r3, [sp, #8]
 800488e:	2b01      	cmp	r3, #1
 8004890:	f340 816c 	ble.w	8004b6c <_dtoa_r+0x96c>
 8004894:	2001      	movs	r0, #1
 8004896:	4440      	add	r0, r8
 8004898:	f010 001f 	ands.w	r0, r0, #31
 800489c:	f000 8119 	beq.w	8004ad2 <_dtoa_r+0x8d2>
 80048a0:	f1c0 0320 	rsb	r3, r0, #32
 80048a4:	2b04      	cmp	r3, #4
 80048a6:	f340 83ac 	ble.w	8005002 <_dtoa_r+0xe02>
 80048aa:	f1c0 001c 	rsb	r0, r0, #28
 80048ae:	9b08      	ldr	r3, [sp, #32]
 80048b0:	4403      	add	r3, r0
 80048b2:	9308      	str	r3, [sp, #32]
 80048b4:	4404      	add	r4, r0
 80048b6:	4480      	add	r8, r0
 80048b8:	9b08      	ldr	r3, [sp, #32]
 80048ba:	2b00      	cmp	r3, #0
 80048bc:	dd05      	ble.n	80048ca <_dtoa_r+0x6ca>
 80048be:	4651      	mov	r1, sl
 80048c0:	461a      	mov	r2, r3
 80048c2:	4648      	mov	r0, r9
 80048c4:	f001 fd52 	bl	800636c <__lshift>
 80048c8:	4682      	mov	sl, r0
 80048ca:	f1b8 0f00 	cmp.w	r8, #0
 80048ce:	dd05      	ble.n	80048dc <_dtoa_r+0x6dc>
 80048d0:	4631      	mov	r1, r6
 80048d2:	4642      	mov	r2, r8
 80048d4:	4648      	mov	r0, r9
 80048d6:	f001 fd49 	bl	800636c <__lshift>
 80048da:	4606      	mov	r6, r0
 80048dc:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80048de:	2b00      	cmp	r3, #0
 80048e0:	d177      	bne.n	80049d2 <_dtoa_r+0x7d2>
 80048e2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048e4:	2b00      	cmp	r3, #0
 80048e6:	f340 8209 	ble.w	8004cfc <_dtoa_r+0xafc>
 80048ea:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80048ec:	2b00      	cmp	r3, #0
 80048ee:	f000 8089 	beq.w	8004a04 <_dtoa_r+0x804>
 80048f2:	2c00      	cmp	r4, #0
 80048f4:	f300 816b 	bgt.w	8004bce <_dtoa_r+0x9ce>
 80048f8:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80048fa:	2b00      	cmp	r3, #0
 80048fc:	f040 81cd 	bne.w	8004c9a <_dtoa_r+0xa9a>
 8004900:	46a8      	mov	r8, r5
 8004902:	9a00      	ldr	r2, [sp, #0]
 8004904:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004908:	f002 0201 	and.w	r2, r2, #1
 800490c:	920a      	str	r2, [sp, #40]	; 0x28
 800490e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004910:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004914:	441a      	add	r2, r3
 8004916:	465f      	mov	r7, fp
 8004918:	9209      	str	r2, [sp, #36]	; 0x24
 800491a:	46b3      	mov	fp, r6
 800491c:	4659      	mov	r1, fp
 800491e:	4650      	mov	r0, sl
 8004920:	f7ff fbdc 	bl	80040dc <quorem>
 8004924:	4629      	mov	r1, r5
 8004926:	4604      	mov	r4, r0
 8004928:	4650      	mov	r0, sl
 800492a:	f001 fd75 	bl	8006418 <__mcmp>
 800492e:	4659      	mov	r1, fp
 8004930:	4606      	mov	r6, r0
 8004932:	4642      	mov	r2, r8
 8004934:	4648      	mov	r0, r9
 8004936:	f001 fd8b 	bl	8006450 <__mdiff>
 800493a:	f104 0330 	add.w	r3, r4, #48	; 0x30
 800493e:	9300      	str	r3, [sp, #0]
 8004940:	68c3      	ldr	r3, [r0, #12]
 8004942:	4601      	mov	r1, r0
 8004944:	2b00      	cmp	r3, #0
 8004946:	f040 81d4 	bne.w	8004cf2 <_dtoa_r+0xaf2>
 800494a:	9008      	str	r0, [sp, #32]
 800494c:	4650      	mov	r0, sl
 800494e:	f001 fd63 	bl	8006418 <__mcmp>
 8004952:	9a08      	ldr	r2, [sp, #32]
 8004954:	9007      	str	r0, [sp, #28]
 8004956:	4611      	mov	r1, r2
 8004958:	4648      	mov	r0, r9
 800495a:	f001 fb6d 	bl	8006038 <_Bfree>
 800495e:	9b07      	ldr	r3, [sp, #28]
 8004960:	b933      	cbnz	r3, 8004970 <_dtoa_r+0x770>
 8004962:	9a02      	ldr	r2, [sp, #8]
 8004964:	b922      	cbnz	r2, 8004970 <_dtoa_r+0x770>
 8004966:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004968:	2b00      	cmp	r3, #0
 800496a:	f000 8319 	beq.w	8004fa0 <_dtoa_r+0xda0>
 800496e:	9b02      	ldr	r3, [sp, #8]
 8004970:	2e00      	cmp	r6, #0
 8004972:	f2c0 821c 	blt.w	8004dae <_dtoa_r+0xbae>
 8004976:	d105      	bne.n	8004984 <_dtoa_r+0x784>
 8004978:	9a02      	ldr	r2, [sp, #8]
 800497a:	b91a      	cbnz	r2, 8004984 <_dtoa_r+0x784>
 800497c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800497e:	2a00      	cmp	r2, #0
 8004980:	f000 8215 	beq.w	8004dae <_dtoa_r+0xbae>
 8004984:	2b00      	cmp	r3, #0
 8004986:	f107 0401 	add.w	r4, r7, #1
 800498a:	f300 8225 	bgt.w	8004dd8 <_dtoa_r+0xbd8>
 800498e:	9b00      	ldr	r3, [sp, #0]
 8004990:	703b      	strb	r3, [r7, #0]
 8004992:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004994:	42bb      	cmp	r3, r7
 8004996:	f000 8230 	beq.w	8004dfa <_dtoa_r+0xbfa>
 800499a:	4651      	mov	r1, sl
 800499c:	2300      	movs	r3, #0
 800499e:	220a      	movs	r2, #10
 80049a0:	4648      	mov	r0, r9
 80049a2:	f001 fb53 	bl	800604c <__multadd>
 80049a6:	4545      	cmp	r5, r8
 80049a8:	4682      	mov	sl, r0
 80049aa:	4629      	mov	r1, r5
 80049ac:	f04f 0300 	mov.w	r3, #0
 80049b0:	f04f 020a 	mov.w	r2, #10
 80049b4:	4648      	mov	r0, r9
 80049b6:	f000 8196 	beq.w	8004ce6 <_dtoa_r+0xae6>
 80049ba:	f001 fb47 	bl	800604c <__multadd>
 80049be:	4641      	mov	r1, r8
 80049c0:	4605      	mov	r5, r0
 80049c2:	2300      	movs	r3, #0
 80049c4:	220a      	movs	r2, #10
 80049c6:	4648      	mov	r0, r9
 80049c8:	f001 fb40 	bl	800604c <__multadd>
 80049cc:	4627      	mov	r7, r4
 80049ce:	4680      	mov	r8, r0
 80049d0:	e7a4      	b.n	800491c <_dtoa_r+0x71c>
 80049d2:	4631      	mov	r1, r6
 80049d4:	4650      	mov	r0, sl
 80049d6:	f001 fd1f 	bl	8006418 <__mcmp>
 80049da:	2800      	cmp	r0, #0
 80049dc:	da81      	bge.n	80048e2 <_dtoa_r+0x6e2>
 80049de:	9f06      	ldr	r7, [sp, #24]
 80049e0:	4651      	mov	r1, sl
 80049e2:	2300      	movs	r3, #0
 80049e4:	220a      	movs	r2, #10
 80049e6:	4648      	mov	r0, r9
 80049e8:	3f01      	subs	r7, #1
 80049ea:	9706      	str	r7, [sp, #24]
 80049ec:	f001 fb2e 	bl	800604c <__multadd>
 80049f0:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80049f2:	4682      	mov	sl, r0
 80049f4:	2b00      	cmp	r3, #0
 80049f6:	f040 82eb 	bne.w	8004fd0 <_dtoa_r+0xdd0>
 80049fa:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80049fc:	2b00      	cmp	r3, #0
 80049fe:	f340 82f3 	ble.w	8004fe8 <_dtoa_r+0xde8>
 8004a02:	9309      	str	r3, [sp, #36]	; 0x24
 8004a04:	465c      	mov	r4, fp
 8004a06:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004a0a:	e002      	b.n	8004a12 <_dtoa_r+0x812>
 8004a0c:	f001 fb1e 	bl	800604c <__multadd>
 8004a10:	4682      	mov	sl, r0
 8004a12:	4631      	mov	r1, r6
 8004a14:	4650      	mov	r0, sl
 8004a16:	f7ff fb61 	bl	80040dc <quorem>
 8004a1a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004a1e:	f804 7b01 	strb.w	r7, [r4], #1
 8004a22:	eba4 030b 	sub.w	r3, r4, fp
 8004a26:	4598      	cmp	r8, r3
 8004a28:	f04f 020a 	mov.w	r2, #10
 8004a2c:	f04f 0300 	mov.w	r3, #0
 8004a30:	4651      	mov	r1, sl
 8004a32:	4648      	mov	r0, r9
 8004a34:	dcea      	bgt.n	8004a0c <_dtoa_r+0x80c>
 8004a36:	2300      	movs	r3, #0
 8004a38:	9700      	str	r7, [sp, #0]
 8004a3a:	9302      	str	r3, [sp, #8]
 8004a3c:	4651      	mov	r1, sl
 8004a3e:	2201      	movs	r2, #1
 8004a40:	4648      	mov	r0, r9
 8004a42:	f001 fc93 	bl	800636c <__lshift>
 8004a46:	4631      	mov	r1, r6
 8004a48:	4682      	mov	sl, r0
 8004a4a:	f001 fce5 	bl	8006418 <__mcmp>
 8004a4e:	2800      	cmp	r0, #0
 8004a50:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004a54:	dc14      	bgt.n	8004a80 <_dtoa_r+0x880>
 8004a56:	d108      	bne.n	8004a6a <_dtoa_r+0x86a>
 8004a58:	9b00      	ldr	r3, [sp, #0]
 8004a5a:	07db      	lsls	r3, r3, #31
 8004a5c:	d410      	bmi.n	8004a80 <_dtoa_r+0x880>
 8004a5e:	e004      	b.n	8004a6a <_dtoa_r+0x86a>
 8004a60:	40240000 	.word	0x40240000
 8004a64:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004a68:	461c      	mov	r4, r3
 8004a6a:	2a30      	cmp	r2, #48	; 0x30
 8004a6c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a70:	d0f8      	beq.n	8004a64 <_dtoa_r+0x864>
 8004a72:	e00b      	b.n	8004a8c <_dtoa_r+0x88c>
 8004a74:	459b      	cmp	fp, r3
 8004a76:	f000 814e 	beq.w	8004d16 <_dtoa_r+0xb16>
 8004a7a:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004a7e:	461c      	mov	r4, r3
 8004a80:	2a39      	cmp	r2, #57	; 0x39
 8004a82:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a86:	d0f5      	beq.n	8004a74 <_dtoa_r+0x874>
 8004a88:	3201      	adds	r2, #1
 8004a8a:	701a      	strb	r2, [r3, #0]
 8004a8c:	4631      	mov	r1, r6
 8004a8e:	4648      	mov	r0, r9
 8004a90:	f001 fad2 	bl	8006038 <_Bfree>
 8004a94:	b155      	cbz	r5, 8004aac <_dtoa_r+0x8ac>
 8004a96:	9902      	ldr	r1, [sp, #8]
 8004a98:	b121      	cbz	r1, 8004aa4 <_dtoa_r+0x8a4>
 8004a9a:	42a9      	cmp	r1, r5
 8004a9c:	d002      	beq.n	8004aa4 <_dtoa_r+0x8a4>
 8004a9e:	4648      	mov	r0, r9
 8004aa0:	f001 faca 	bl	8006038 <_Bfree>
 8004aa4:	4629      	mov	r1, r5
 8004aa6:	4648      	mov	r0, r9
 8004aa8:	f001 fac6 	bl	8006038 <_Bfree>
 8004aac:	4651      	mov	r1, sl
 8004aae:	4648      	mov	r0, r9
 8004ab0:	f001 fac2 	bl	8006038 <_Bfree>
 8004ab4:	2200      	movs	r2, #0
 8004ab6:	9b06      	ldr	r3, [sp, #24]
 8004ab8:	7022      	strb	r2, [r4, #0]
 8004aba:	9a05      	ldr	r2, [sp, #20]
 8004abc:	3301      	adds	r3, #1
 8004abe:	6013      	str	r3, [r2, #0]
 8004ac0:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004ac2:	2b00      	cmp	r3, #0
 8004ac4:	f43f abdb 	beq.w	800427e <_dtoa_r+0x7e>
 8004ac8:	4658      	mov	r0, fp
 8004aca:	601c      	str	r4, [r3, #0]
 8004acc:	b01b      	add	sp, #108	; 0x6c
 8004ace:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004ad2:	201c      	movs	r0, #28
 8004ad4:	e6eb      	b.n	80048ae <_dtoa_r+0x6ae>
 8004ad6:	4601      	mov	r1, r0
 8004ad8:	4648      	mov	r0, r9
 8004ada:	f001 fbf7 	bl	80062cc <__pow5mult>
 8004ade:	9b02      	ldr	r3, [sp, #8]
 8004ae0:	2b01      	cmp	r3, #1
 8004ae2:	4606      	mov	r6, r0
 8004ae4:	f340 80d4 	ble.w	8004c90 <_dtoa_r+0xa90>
 8004ae8:	2300      	movs	r3, #0
 8004aea:	930c      	str	r3, [sp, #48]	; 0x30
 8004aec:	6933      	ldr	r3, [r6, #16]
 8004aee:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004af2:	6918      	ldr	r0, [r3, #16]
 8004af4:	f001 faea 	bl	80060cc <__hi0bits>
 8004af8:	f1c0 0020 	rsb	r0, r0, #32
 8004afc:	e6cb      	b.n	8004896 <_dtoa_r+0x696>
 8004afe:	900d      	str	r0, [sp, #52]	; 0x34
 8004b00:	e42a      	b.n	8004358 <_dtoa_r+0x158>
 8004b02:	2501      	movs	r5, #1
 8004b04:	e440      	b.n	8004388 <_dtoa_r+0x188>
 8004b06:	f1c3 0820 	rsb	r8, r3, #32
 8004b0a:	9b00      	ldr	r3, [sp, #0]
 8004b0c:	fa03 f008 	lsl.w	r0, r3, r8
 8004b10:	f7ff bbd8 	b.w	80042c4 <_dtoa_r+0xc4>
 8004b14:	2300      	movs	r3, #0
 8004b16:	930a      	str	r3, [sp, #40]	; 0x28
 8004b18:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004b1c:	4413      	add	r3, r2
 8004b1e:	930e      	str	r3, [sp, #56]	; 0x38
 8004b20:	3301      	adds	r3, #1
 8004b22:	2b01      	cmp	r3, #1
 8004b24:	461e      	mov	r6, r3
 8004b26:	9309      	str	r3, [sp, #36]	; 0x24
 8004b28:	bfb8      	it	lt
 8004b2a:	2601      	movlt	r6, #1
 8004b2c:	2100      	movs	r1, #0
 8004b2e:	2e17      	cmp	r6, #23
 8004b30:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004b34:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004b36:	f77f ac89 	ble.w	800444c <_dtoa_r+0x24c>
 8004b3a:	2201      	movs	r2, #1
 8004b3c:	2304      	movs	r3, #4
 8004b3e:	005b      	lsls	r3, r3, #1
 8004b40:	f103 0014 	add.w	r0, r3, #20
 8004b44:	42b0      	cmp	r0, r6
 8004b46:	4611      	mov	r1, r2
 8004b48:	f102 0201 	add.w	r2, r2, #1
 8004b4c:	d9f7      	bls.n	8004b3e <_dtoa_r+0x93e>
 8004b4e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004b52:	e47b      	b.n	800444c <_dtoa_r+0x24c>
 8004b54:	2300      	movs	r3, #0
 8004b56:	930a      	str	r3, [sp, #40]	; 0x28
 8004b58:	9e07      	ldr	r6, [sp, #28]
 8004b5a:	2e00      	cmp	r6, #0
 8004b5c:	f340 80e2 	ble.w	8004d24 <_dtoa_r+0xb24>
 8004b60:	960e      	str	r6, [sp, #56]	; 0x38
 8004b62:	9609      	str	r6, [sp, #36]	; 0x24
 8004b64:	e7e2      	b.n	8004b2c <_dtoa_r+0x92c>
 8004b66:	2301      	movs	r3, #1
 8004b68:	930a      	str	r3, [sp, #40]	; 0x28
 8004b6a:	e7f5      	b.n	8004b58 <_dtoa_r+0x958>
 8004b6c:	9b00      	ldr	r3, [sp, #0]
 8004b6e:	2b00      	cmp	r3, #0
 8004b70:	f47f ae90 	bne.w	8004894 <_dtoa_r+0x694>
 8004b74:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004b78:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004b7c:	2b00      	cmp	r3, #0
 8004b7e:	f040 8192 	bne.w	8004ea6 <_dtoa_r+0xca6>
 8004b82:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004b86:	0d1b      	lsrs	r3, r3, #20
 8004b88:	051b      	lsls	r3, r3, #20
 8004b8a:	b12b      	cbz	r3, 8004b98 <_dtoa_r+0x998>
 8004b8c:	9b08      	ldr	r3, [sp, #32]
 8004b8e:	3301      	adds	r3, #1
 8004b90:	9308      	str	r3, [sp, #32]
 8004b92:	f108 0801 	add.w	r8, r8, #1
 8004b96:	2301      	movs	r3, #1
 8004b98:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b9a:	930c      	str	r3, [sp, #48]	; 0x30
 8004b9c:	2a00      	cmp	r2, #0
 8004b9e:	f43f ae79 	beq.w	8004894 <_dtoa_r+0x694>
 8004ba2:	e7a3      	b.n	8004aec <_dtoa_r+0x8ec>
 8004ba4:	463a      	mov	r2, r7
 8004ba6:	4629      	mov	r1, r5
 8004ba8:	4648      	mov	r0, r9
 8004baa:	f001 fb8f 	bl	80062cc <__pow5mult>
 8004bae:	4652      	mov	r2, sl
 8004bb0:	4601      	mov	r1, r0
 8004bb2:	4605      	mov	r5, r0
 8004bb4:	4648      	mov	r0, r9
 8004bb6:	f001 fae3 	bl	8006180 <__multiply>
 8004bba:	4651      	mov	r1, sl
 8004bbc:	4607      	mov	r7, r0
 8004bbe:	4648      	mov	r0, r9
 8004bc0:	f001 fa3a 	bl	8006038 <_Bfree>
 8004bc4:	46ba      	mov	sl, r7
 8004bc6:	2e00      	cmp	r6, #0
 8004bc8:	f43f ae57 	beq.w	800487a <_dtoa_r+0x67a>
 8004bcc:	e64f      	b.n	800486e <_dtoa_r+0x66e>
 8004bce:	4629      	mov	r1, r5
 8004bd0:	4622      	mov	r2, r4
 8004bd2:	4648      	mov	r0, r9
 8004bd4:	f001 fbca 	bl	800636c <__lshift>
 8004bd8:	4605      	mov	r5, r0
 8004bda:	e68d      	b.n	80048f8 <_dtoa_r+0x6f8>
 8004bdc:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004bde:	2a00      	cmp	r2, #0
 8004be0:	f000 815d 	beq.w	8004e9e <_dtoa_r+0xc9e>
 8004be4:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004be8:	9a08      	ldr	r2, [sp, #32]
 8004bea:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004bec:	4614      	mov	r4, r2
 8004bee:	441a      	add	r2, r3
 8004bf0:	4498      	add	r8, r3
 8004bf2:	9208      	str	r2, [sp, #32]
 8004bf4:	e5f7      	b.n	80047e6 <_dtoa_r+0x5e6>
 8004bf6:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bf8:	2b00      	cmp	r3, #0
 8004bfa:	f73f ad3e 	bgt.w	800467a <_dtoa_r+0x47a>
 8004bfe:	f040 80bc 	bne.w	8004d7a <_dtoa_r+0xb7a>
 8004c02:	ec51 0b17 	vmov	r0, r1, d7
 8004c06:	2200      	movs	r2, #0
 8004c08:	4bb2      	ldr	r3, [pc, #712]	; (8004ed4 <_dtoa_r+0xcd4>)
 8004c0a:	f7fb ff95 	bl	8000b38 <__aeabi_dmul>
 8004c0e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c12:	f7fc fa17 	bl	8001044 <__aeabi_dcmpge>
 8004c16:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004c18:	4635      	mov	r5, r6
 8004c1a:	2800      	cmp	r0, #0
 8004c1c:	d176      	bne.n	8004d0c <_dtoa_r+0xb0c>
 8004c1e:	9a06      	ldr	r2, [sp, #24]
 8004c20:	2331      	movs	r3, #49	; 0x31
 8004c22:	3201      	adds	r2, #1
 8004c24:	9206      	str	r2, [sp, #24]
 8004c26:	f88b 3000 	strb.w	r3, [fp]
 8004c2a:	f10b 0401 	add.w	r4, fp, #1
 8004c2e:	4631      	mov	r1, r6
 8004c30:	4648      	mov	r0, r9
 8004c32:	f001 fa01 	bl	8006038 <_Bfree>
 8004c36:	2d00      	cmp	r5, #0
 8004c38:	f47f af34 	bne.w	8004aa4 <_dtoa_r+0x8a4>
 8004c3c:	e736      	b.n	8004aac <_dtoa_r+0x8ac>
 8004c3e:	f000 8142 	beq.w	8004ec6 <_dtoa_r+0xcc6>
 8004c42:	9b06      	ldr	r3, [sp, #24]
 8004c44:	425c      	negs	r4, r3
 8004c46:	4ba4      	ldr	r3, [pc, #656]	; (8004ed8 <_dtoa_r+0xcd8>)
 8004c48:	f004 020f 	and.w	r2, r4, #15
 8004c4c:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004c50:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c54:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004c58:	f7fb ff6e 	bl	8000b38 <__aeabi_dmul>
 8004c5c:	1124      	asrs	r4, r4, #4
 8004c5e:	e9cd 0100 	strd	r0, r1, [sp]
 8004c62:	f000 81c6 	beq.w	8004ff2 <_dtoa_r+0xdf2>
 8004c66:	4d9d      	ldr	r5, [pc, #628]	; (8004edc <_dtoa_r+0xcdc>)
 8004c68:	2300      	movs	r3, #0
 8004c6a:	2602      	movs	r6, #2
 8004c6c:	07e7      	lsls	r7, r4, #31
 8004c6e:	d505      	bpl.n	8004c7c <_dtoa_r+0xa7c>
 8004c70:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004c74:	f7fb ff60 	bl	8000b38 <__aeabi_dmul>
 8004c78:	3601      	adds	r6, #1
 8004c7a:	2301      	movs	r3, #1
 8004c7c:	1064      	asrs	r4, r4, #1
 8004c7e:	f105 0508 	add.w	r5, r5, #8
 8004c82:	d1f3      	bne.n	8004c6c <_dtoa_r+0xa6c>
 8004c84:	2b00      	cmp	r3, #0
 8004c86:	f43f ac27 	beq.w	80044d8 <_dtoa_r+0x2d8>
 8004c8a:	e9cd 0100 	strd	r0, r1, [sp]
 8004c8e:	e423      	b.n	80044d8 <_dtoa_r+0x2d8>
 8004c90:	9b00      	ldr	r3, [sp, #0]
 8004c92:	2b00      	cmp	r3, #0
 8004c94:	f43f af6e 	beq.w	8004b74 <_dtoa_r+0x974>
 8004c98:	e726      	b.n	8004ae8 <_dtoa_r+0x8e8>
 8004c9a:	6869      	ldr	r1, [r5, #4]
 8004c9c:	4648      	mov	r0, r9
 8004c9e:	f001 f9a5 	bl	8005fec <_Balloc>
 8004ca2:	692b      	ldr	r3, [r5, #16]
 8004ca4:	3302      	adds	r3, #2
 8004ca6:	009a      	lsls	r2, r3, #2
 8004ca8:	4604      	mov	r4, r0
 8004caa:	f105 010c 	add.w	r1, r5, #12
 8004cae:	300c      	adds	r0, #12
 8004cb0:	f7fb fc26 	bl	8000500 <memcpy>
 8004cb4:	4621      	mov	r1, r4
 8004cb6:	2201      	movs	r2, #1
 8004cb8:	4648      	mov	r0, r9
 8004cba:	f001 fb57 	bl	800636c <__lshift>
 8004cbe:	4680      	mov	r8, r0
 8004cc0:	e61f      	b.n	8004902 <_dtoa_r+0x702>
 8004cc2:	2400      	movs	r4, #0
 8004cc4:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004cc8:	4621      	mov	r1, r4
 8004cca:	4648      	mov	r0, r9
 8004ccc:	f001 f98e 	bl	8005fec <_Balloc>
 8004cd0:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004cd4:	930e      	str	r3, [sp, #56]	; 0x38
 8004cd6:	9309      	str	r3, [sp, #36]	; 0x24
 8004cd8:	2301      	movs	r3, #1
 8004cda:	4683      	mov	fp, r0
 8004cdc:	9407      	str	r4, [sp, #28]
 8004cde:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004ce2:	930a      	str	r3, [sp, #40]	; 0x28
 8004ce4:	e4b6      	b.n	8004654 <_dtoa_r+0x454>
 8004ce6:	f001 f9b1 	bl	800604c <__multadd>
 8004cea:	4627      	mov	r7, r4
 8004cec:	4605      	mov	r5, r0
 8004cee:	4680      	mov	r8, r0
 8004cf0:	e614      	b.n	800491c <_dtoa_r+0x71c>
 8004cf2:	4648      	mov	r0, r9
 8004cf4:	f001 f9a0 	bl	8006038 <_Bfree>
 8004cf8:	2301      	movs	r3, #1
 8004cfa:	e639      	b.n	8004970 <_dtoa_r+0x770>
 8004cfc:	9b02      	ldr	r3, [sp, #8]
 8004cfe:	2b02      	cmp	r3, #2
 8004d00:	f77f adf3 	ble.w	80048ea <_dtoa_r+0x6ea>
 8004d04:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d06:	2b00      	cmp	r3, #0
 8004d08:	f000 80cf 	beq.w	8004eaa <_dtoa_r+0xcaa>
 8004d0c:	9b07      	ldr	r3, [sp, #28]
 8004d0e:	43db      	mvns	r3, r3
 8004d10:	9306      	str	r3, [sp, #24]
 8004d12:	465c      	mov	r4, fp
 8004d14:	e78b      	b.n	8004c2e <_dtoa_r+0xa2e>
 8004d16:	9a06      	ldr	r2, [sp, #24]
 8004d18:	2331      	movs	r3, #49	; 0x31
 8004d1a:	3201      	adds	r2, #1
 8004d1c:	9206      	str	r2, [sp, #24]
 8004d1e:	f88b 3000 	strb.w	r3, [fp]
 8004d22:	e6b3      	b.n	8004a8c <_dtoa_r+0x88c>
 8004d24:	2401      	movs	r4, #1
 8004d26:	9409      	str	r4, [sp, #36]	; 0x24
 8004d28:	9407      	str	r4, [sp, #28]
 8004d2a:	f7ff bb8b 	b.w	8004444 <_dtoa_r+0x244>
 8004d2e:	4630      	mov	r0, r6
 8004d30:	f7fb fe98 	bl	8000a64 <__aeabi_i2d>
 8004d34:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d38:	f7fb fefe 	bl	8000b38 <__aeabi_dmul>
 8004d3c:	2200      	movs	r2, #0
 8004d3e:	4b68      	ldr	r3, [pc, #416]	; (8004ee0 <_dtoa_r+0xce0>)
 8004d40:	f7fb fd44 	bl	80007cc <__adddf3>
 8004d44:	4606      	mov	r6, r0
 8004d46:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d4a:	2200      	movs	r2, #0
 8004d4c:	4b61      	ldr	r3, [pc, #388]	; (8004ed4 <_dtoa_r+0xcd4>)
 8004d4e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d52:	f7fb fd39 	bl	80007c8 <__aeabi_dsub>
 8004d56:	4632      	mov	r2, r6
 8004d58:	463b      	mov	r3, r7
 8004d5a:	4604      	mov	r4, r0
 8004d5c:	460d      	mov	r5, r1
 8004d5e:	f7fc f97b 	bl	8001058 <__aeabi_dcmpgt>
 8004d62:	2800      	cmp	r0, #0
 8004d64:	d14f      	bne.n	8004e06 <_dtoa_r+0xc06>
 8004d66:	4632      	mov	r2, r6
 8004d68:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004d6c:	4620      	mov	r0, r4
 8004d6e:	4629      	mov	r1, r5
 8004d70:	f7fc f954 	bl	800101c <__aeabi_dcmplt>
 8004d74:	2800      	cmp	r0, #0
 8004d76:	f43f ac69 	beq.w	800464c <_dtoa_r+0x44c>
 8004d7a:	2600      	movs	r6, #0
 8004d7c:	4635      	mov	r5, r6
 8004d7e:	e7c5      	b.n	8004d0c <_dtoa_r+0xb0c>
 8004d80:	2301      	movs	r3, #1
 8004d82:	930a      	str	r3, [sp, #40]	; 0x28
 8004d84:	e6c8      	b.n	8004b18 <_dtoa_r+0x918>
 8004d86:	4651      	mov	r1, sl
 8004d88:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004d8a:	4648      	mov	r0, r9
 8004d8c:	f001 fa9e 	bl	80062cc <__pow5mult>
 8004d90:	4682      	mov	sl, r0
 8004d92:	e572      	b.n	800487a <_dtoa_r+0x67a>
 8004d94:	f8dd a000 	ldr.w	sl, [sp]
 8004d98:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004d9c:	e686      	b.n	8004aac <_dtoa_r+0x8ac>
 8004d9e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004da0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004da2:	1afb      	subs	r3, r7, r3
 8004da4:	441a      	add	r2, r3
 8004da6:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004daa:	2700      	movs	r7, #0
 8004dac:	e512      	b.n	80047d4 <_dtoa_r+0x5d4>
 8004dae:	2b00      	cmp	r3, #0
 8004db0:	9402      	str	r4, [sp, #8]
 8004db2:	465e      	mov	r6, fp
 8004db4:	f107 0401 	add.w	r4, r7, #1
 8004db8:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004dbc:	f300 80ba 	bgt.w	8004f34 <_dtoa_r+0xd34>
 8004dc0:	9b00      	ldr	r3, [sp, #0]
 8004dc2:	9502      	str	r5, [sp, #8]
 8004dc4:	703b      	strb	r3, [r7, #0]
 8004dc6:	4645      	mov	r5, r8
 8004dc8:	e660      	b.n	8004a8c <_dtoa_r+0x88c>
 8004dca:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004dce:	2602      	movs	r6, #2
 8004dd0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004dd4:	f7ff bb67 	b.w	80044a6 <_dtoa_r+0x2a6>
 8004dd8:	9b00      	ldr	r3, [sp, #0]
 8004dda:	2b39      	cmp	r3, #57	; 0x39
 8004ddc:	465e      	mov	r6, fp
 8004dde:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004de2:	f000 80b9 	beq.w	8004f58 <_dtoa_r+0xd58>
 8004de6:	9b00      	ldr	r3, [sp, #0]
 8004de8:	9502      	str	r5, [sp, #8]
 8004dea:	3301      	adds	r3, #1
 8004dec:	703b      	strb	r3, [r7, #0]
 8004dee:	4645      	mov	r5, r8
 8004df0:	e64c      	b.n	8004a8c <_dtoa_r+0x88c>
 8004df2:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004df6:	1a9c      	subs	r4, r3, r2
 8004df8:	e4f5      	b.n	80047e6 <_dtoa_r+0x5e6>
 8004dfa:	465e      	mov	r6, fp
 8004dfc:	9502      	str	r5, [sp, #8]
 8004dfe:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e02:	4645      	mov	r5, r8
 8004e04:	e61a      	b.n	8004a3c <_dtoa_r+0x83c>
 8004e06:	2600      	movs	r6, #0
 8004e08:	4635      	mov	r5, r6
 8004e0a:	e708      	b.n	8004c1e <_dtoa_r+0xa1e>
 8004e0c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004e10:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e14:	f7fb fe90 	bl	8000b38 <__aeabi_dmul>
 8004e18:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004e1a:	f88b 5000 	strb.w	r5, [fp]
 8004e1e:	2b01      	cmp	r3, #1
 8004e20:	e9cd 0100 	strd	r0, r1, [sp]
 8004e24:	d020      	beq.n	8004e68 <_dtoa_r+0xc68>
 8004e26:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004e28:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004e2c:	445b      	add	r3, fp
 8004e2e:	4698      	mov	r8, r3
 8004e30:	2200      	movs	r2, #0
 8004e32:	4b2c      	ldr	r3, [pc, #176]	; (8004ee4 <_dtoa_r+0xce4>)
 8004e34:	4630      	mov	r0, r6
 8004e36:	4639      	mov	r1, r7
 8004e38:	f7fb fe7e 	bl	8000b38 <__aeabi_dmul>
 8004e3c:	460f      	mov	r7, r1
 8004e3e:	4606      	mov	r6, r0
 8004e40:	f7fc f92a 	bl	8001098 <__aeabi_d2iz>
 8004e44:	4605      	mov	r5, r0
 8004e46:	f7fb fe0d 	bl	8000a64 <__aeabi_i2d>
 8004e4a:	3530      	adds	r5, #48	; 0x30
 8004e4c:	4602      	mov	r2, r0
 8004e4e:	460b      	mov	r3, r1
 8004e50:	4630      	mov	r0, r6
 8004e52:	4639      	mov	r1, r7
 8004e54:	f7fb fcb8 	bl	80007c8 <__aeabi_dsub>
 8004e58:	f804 5b01 	strb.w	r5, [r4], #1
 8004e5c:	4544      	cmp	r4, r8
 8004e5e:	4606      	mov	r6, r0
 8004e60:	460f      	mov	r7, r1
 8004e62:	d1e5      	bne.n	8004e30 <_dtoa_r+0xc30>
 8004e64:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004e68:	4b1f      	ldr	r3, [pc, #124]	; (8004ee8 <_dtoa_r+0xce8>)
 8004e6a:	2200      	movs	r2, #0
 8004e6c:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e70:	f7fb fcac 	bl	80007cc <__adddf3>
 8004e74:	4632      	mov	r2, r6
 8004e76:	463b      	mov	r3, r7
 8004e78:	f7fc f8d0 	bl	800101c <__aeabi_dcmplt>
 8004e7c:	2800      	cmp	r0, #0
 8004e7e:	d070      	beq.n	8004f62 <_dtoa_r+0xd62>
 8004e80:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004e82:	9306      	str	r3, [sp, #24]
 8004e84:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004e88:	e48f      	b.n	80047aa <_dtoa_r+0x5aa>
 8004e8a:	2330      	movs	r3, #48	; 0x30
 8004e8c:	f88b 3000 	strb.w	r3, [fp]
 8004e90:	9b06      	ldr	r3, [sp, #24]
 8004e92:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004e96:	3301      	adds	r3, #1
 8004e98:	9306      	str	r3, [sp, #24]
 8004e9a:	465b      	mov	r3, fp
 8004e9c:	e489      	b.n	80047b2 <_dtoa_r+0x5b2>
 8004e9e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004ea0:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004ea4:	e6a0      	b.n	8004be8 <_dtoa_r+0x9e8>
 8004ea6:	2300      	movs	r3, #0
 8004ea8:	e676      	b.n	8004b98 <_dtoa_r+0x998>
 8004eaa:	4631      	mov	r1, r6
 8004eac:	2205      	movs	r2, #5
 8004eae:	4648      	mov	r0, r9
 8004eb0:	f001 f8cc 	bl	800604c <__multadd>
 8004eb4:	4601      	mov	r1, r0
 8004eb6:	4606      	mov	r6, r0
 8004eb8:	4650      	mov	r0, sl
 8004eba:	f001 faad 	bl	8006418 <__mcmp>
 8004ebe:	2800      	cmp	r0, #0
 8004ec0:	f73f aead 	bgt.w	8004c1e <_dtoa_r+0xa1e>
 8004ec4:	e722      	b.n	8004d0c <_dtoa_r+0xb0c>
 8004ec6:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004eca:	2602      	movs	r6, #2
 8004ecc:	ed8d 7b00 	vstr	d7, [sp]
 8004ed0:	f7ff bb02 	b.w	80044d8 <_dtoa_r+0x2d8>
 8004ed4:	40140000 	.word	0x40140000
 8004ed8:	08007290 	.word	0x08007290
 8004edc:	08007268 	.word	0x08007268
 8004ee0:	401c0000 	.word	0x401c0000
 8004ee4:	40240000 	.word	0x40240000
 8004ee8:	3fe00000 	.word	0x3fe00000
 8004eec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004eee:	2b00      	cmp	r3, #0
 8004ef0:	f43f af1d 	beq.w	8004d2e <_dtoa_r+0xb2e>
 8004ef4:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004ef6:	2c00      	cmp	r4, #0
 8004ef8:	f77f aba8 	ble.w	800464c <_dtoa_r+0x44c>
 8004efc:	2200      	movs	r2, #0
 8004efe:	4b45      	ldr	r3, [pc, #276]	; (8005014 <_dtoa_r+0xe14>)
 8004f00:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f04:	f7fb fe18 	bl	8000b38 <__aeabi_dmul>
 8004f08:	e9cd 0100 	strd	r0, r1, [sp]
 8004f0c:	1c70      	adds	r0, r6, #1
 8004f0e:	f7fb fda9 	bl	8000a64 <__aeabi_i2d>
 8004f12:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f16:	f7fb fe0f 	bl	8000b38 <__aeabi_dmul>
 8004f1a:	4b3f      	ldr	r3, [pc, #252]	; (8005018 <_dtoa_r+0xe18>)
 8004f1c:	2200      	movs	r2, #0
 8004f1e:	f7fb fc55 	bl	80007cc <__adddf3>
 8004f22:	9b06      	ldr	r3, [sp, #24]
 8004f24:	9412      	str	r4, [sp, #72]	; 0x48
 8004f26:	3b01      	subs	r3, #1
 8004f28:	4606      	mov	r6, r0
 8004f2a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004f2e:	9316      	str	r3, [sp, #88]	; 0x58
 8004f30:	f7ff baf3 	b.w	800451a <_dtoa_r+0x31a>
 8004f34:	4651      	mov	r1, sl
 8004f36:	2201      	movs	r2, #1
 8004f38:	4648      	mov	r0, r9
 8004f3a:	f001 fa17 	bl	800636c <__lshift>
 8004f3e:	4631      	mov	r1, r6
 8004f40:	4682      	mov	sl, r0
 8004f42:	f001 fa69 	bl	8006418 <__mcmp>
 8004f46:	2800      	cmp	r0, #0
 8004f48:	dd3b      	ble.n	8004fc2 <_dtoa_r+0xdc2>
 8004f4a:	9b00      	ldr	r3, [sp, #0]
 8004f4c:	2b39      	cmp	r3, #57	; 0x39
 8004f4e:	d003      	beq.n	8004f58 <_dtoa_r+0xd58>
 8004f50:	9b02      	ldr	r3, [sp, #8]
 8004f52:	3331      	adds	r3, #49	; 0x31
 8004f54:	9300      	str	r3, [sp, #0]
 8004f56:	e733      	b.n	8004dc0 <_dtoa_r+0xbc0>
 8004f58:	2239      	movs	r2, #57	; 0x39
 8004f5a:	9502      	str	r5, [sp, #8]
 8004f5c:	703a      	strb	r2, [r7, #0]
 8004f5e:	4645      	mov	r5, r8
 8004f60:	e58e      	b.n	8004a80 <_dtoa_r+0x880>
 8004f62:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f66:	2000      	movs	r0, #0
 8004f68:	492c      	ldr	r1, [pc, #176]	; (800501c <_dtoa_r+0xe1c>)
 8004f6a:	f7fb fc2d 	bl	80007c8 <__aeabi_dsub>
 8004f6e:	4632      	mov	r2, r6
 8004f70:	463b      	mov	r3, r7
 8004f72:	f7fc f871 	bl	8001058 <__aeabi_dcmpgt>
 8004f76:	b910      	cbnz	r0, 8004f7e <_dtoa_r+0xd7e>
 8004f78:	f7ff bb68 	b.w	800464c <_dtoa_r+0x44c>
 8004f7c:	4614      	mov	r4, r2
 8004f7e:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004f82:	2b30      	cmp	r3, #48	; 0x30
 8004f84:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004f88:	d0f8      	beq.n	8004f7c <_dtoa_r+0xd7c>
 8004f8a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f8c:	9306      	str	r3, [sp, #24]
 8004f8e:	e58d      	b.n	8004aac <_dtoa_r+0x8ac>
 8004f90:	46d9      	mov	r9, fp
 8004f92:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004f96:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004f9a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004f9c:	9306      	str	r3, [sp, #24]
 8004f9e:	e404      	b.n	80047aa <_dtoa_r+0x5aa>
 8004fa0:	9b00      	ldr	r3, [sp, #0]
 8004fa2:	2b39      	cmp	r3, #57	; 0x39
 8004fa4:	4621      	mov	r1, r4
 8004fa6:	4632      	mov	r2, r6
 8004fa8:	f107 0401 	add.w	r4, r7, #1
 8004fac:	465e      	mov	r6, fp
 8004fae:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004fb2:	d0d1      	beq.n	8004f58 <_dtoa_r+0xd58>
 8004fb4:	2a00      	cmp	r2, #0
 8004fb6:	f77f af03 	ble.w	8004dc0 <_dtoa_r+0xbc0>
 8004fba:	460b      	mov	r3, r1
 8004fbc:	3331      	adds	r3, #49	; 0x31
 8004fbe:	9300      	str	r3, [sp, #0]
 8004fc0:	e6fe      	b.n	8004dc0 <_dtoa_r+0xbc0>
 8004fc2:	f47f aefd 	bne.w	8004dc0 <_dtoa_r+0xbc0>
 8004fc6:	9b00      	ldr	r3, [sp, #0]
 8004fc8:	07da      	lsls	r2, r3, #31
 8004fca:	f57f aef9 	bpl.w	8004dc0 <_dtoa_r+0xbc0>
 8004fce:	e7bc      	b.n	8004f4a <_dtoa_r+0xd4a>
 8004fd0:	4629      	mov	r1, r5
 8004fd2:	2300      	movs	r3, #0
 8004fd4:	220a      	movs	r2, #10
 8004fd6:	4648      	mov	r0, r9
 8004fd8:	f001 f838 	bl	800604c <__multadd>
 8004fdc:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004fde:	2b00      	cmp	r3, #0
 8004fe0:	4605      	mov	r5, r0
 8004fe2:	dd09      	ble.n	8004ff8 <_dtoa_r+0xdf8>
 8004fe4:	9309      	str	r3, [sp, #36]	; 0x24
 8004fe6:	e484      	b.n	80048f2 <_dtoa_r+0x6f2>
 8004fe8:	9b02      	ldr	r3, [sp, #8]
 8004fea:	2b02      	cmp	r3, #2
 8004fec:	dc0e      	bgt.n	800500c <_dtoa_r+0xe0c>
 8004fee:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004ff0:	e507      	b.n	8004a02 <_dtoa_r+0x802>
 8004ff2:	2602      	movs	r6, #2
 8004ff4:	f7ff ba70 	b.w	80044d8 <_dtoa_r+0x2d8>
 8004ff8:	9b02      	ldr	r3, [sp, #8]
 8004ffa:	2b02      	cmp	r3, #2
 8004ffc:	dc06      	bgt.n	800500c <_dtoa_r+0xe0c>
 8004ffe:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005000:	e7f0      	b.n	8004fe4 <_dtoa_r+0xde4>
 8005002:	f43f ac59 	beq.w	80048b8 <_dtoa_r+0x6b8>
 8005006:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800500a:	e450      	b.n	80048ae <_dtoa_r+0x6ae>
 800500c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800500e:	9309      	str	r3, [sp, #36]	; 0x24
 8005010:	e678      	b.n	8004d04 <_dtoa_r+0xb04>
 8005012:	bf00      	nop
 8005014:	40240000 	.word	0x40240000
 8005018:	401c0000 	.word	0x401c0000
 800501c:	3fe00000 	.word	0x3fe00000

08005020 <__sflush_r>:
 8005020:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005024:	b29a      	uxth	r2, r3
 8005026:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800502a:	460c      	mov	r4, r1
 800502c:	0711      	lsls	r1, r2, #28
 800502e:	4680      	mov	r8, r0
 8005030:	d444      	bmi.n	80050bc <__sflush_r+0x9c>
 8005032:	6862      	ldr	r2, [r4, #4]
 8005034:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005038:	2a00      	cmp	r2, #0
 800503a:	81a3      	strh	r3, [r4, #12]
 800503c:	dd59      	ble.n	80050f2 <__sflush_r+0xd2>
 800503e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005040:	2d00      	cmp	r5, #0
 8005042:	d053      	beq.n	80050ec <__sflush_r+0xcc>
 8005044:	2200      	movs	r2, #0
 8005046:	b29b      	uxth	r3, r3
 8005048:	f8d8 6000 	ldr.w	r6, [r8]
 800504c:	69e1      	ldr	r1, [r4, #28]
 800504e:	f8c8 2000 	str.w	r2, [r8]
 8005052:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 8005056:	f040 8083 	bne.w	8005160 <__sflush_r+0x140>
 800505a:	2301      	movs	r3, #1
 800505c:	4640      	mov	r0, r8
 800505e:	47a8      	blx	r5
 8005060:	1c42      	adds	r2, r0, #1
 8005062:	d04a      	beq.n	80050fa <__sflush_r+0xda>
 8005064:	89a3      	ldrh	r3, [r4, #12]
 8005066:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005068:	69e1      	ldr	r1, [r4, #28]
 800506a:	075b      	lsls	r3, r3, #29
 800506c:	d505      	bpl.n	800507a <__sflush_r+0x5a>
 800506e:	6862      	ldr	r2, [r4, #4]
 8005070:	6b23      	ldr	r3, [r4, #48]	; 0x30
 8005072:	1a80      	subs	r0, r0, r2
 8005074:	b10b      	cbz	r3, 800507a <__sflush_r+0x5a>
 8005076:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005078:	1ac0      	subs	r0, r0, r3
 800507a:	4602      	mov	r2, r0
 800507c:	2300      	movs	r3, #0
 800507e:	4640      	mov	r0, r8
 8005080:	47a8      	blx	r5
 8005082:	1c47      	adds	r7, r0, #1
 8005084:	d045      	beq.n	8005112 <__sflush_r+0xf2>
 8005086:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800508a:	6922      	ldr	r2, [r4, #16]
 800508c:	6022      	str	r2, [r4, #0]
 800508e:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005092:	2200      	movs	r2, #0
 8005094:	81a3      	strh	r3, [r4, #12]
 8005096:	04db      	lsls	r3, r3, #19
 8005098:	6062      	str	r2, [r4, #4]
 800509a:	d500      	bpl.n	800509e <__sflush_r+0x7e>
 800509c:	6520      	str	r0, [r4, #80]	; 0x50
 800509e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80050a0:	f8c8 6000 	str.w	r6, [r8]
 80050a4:	b311      	cbz	r1, 80050ec <__sflush_r+0xcc>
 80050a6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80050aa:	4299      	cmp	r1, r3
 80050ac:	d002      	beq.n	80050b4 <__sflush_r+0x94>
 80050ae:	4640      	mov	r0, r8
 80050b0:	f000 f95e 	bl	8005370 <_free_r>
 80050b4:	2000      	movs	r0, #0
 80050b6:	6320      	str	r0, [r4, #48]	; 0x30
 80050b8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80050bc:	6926      	ldr	r6, [r4, #16]
 80050be:	b1ae      	cbz	r6, 80050ec <__sflush_r+0xcc>
 80050c0:	6825      	ldr	r5, [r4, #0]
 80050c2:	6026      	str	r6, [r4, #0]
 80050c4:	0792      	lsls	r2, r2, #30
 80050c6:	bf0c      	ite	eq
 80050c8:	6963      	ldreq	r3, [r4, #20]
 80050ca:	2300      	movne	r3, #0
 80050cc:	1bad      	subs	r5, r5, r6
 80050ce:	60a3      	str	r3, [r4, #8]
 80050d0:	e00a      	b.n	80050e8 <__sflush_r+0xc8>
 80050d2:	462b      	mov	r3, r5
 80050d4:	4632      	mov	r2, r6
 80050d6:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80050d8:	69e1      	ldr	r1, [r4, #28]
 80050da:	4640      	mov	r0, r8
 80050dc:	47b8      	blx	r7
 80050de:	2800      	cmp	r0, #0
 80050e0:	eba5 0500 	sub.w	r5, r5, r0
 80050e4:	4406      	add	r6, r0
 80050e6:	dd2b      	ble.n	8005140 <__sflush_r+0x120>
 80050e8:	2d00      	cmp	r5, #0
 80050ea:	dcf2      	bgt.n	80050d2 <__sflush_r+0xb2>
 80050ec:	2000      	movs	r0, #0
 80050ee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80050f2:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80050f4:	2a00      	cmp	r2, #0
 80050f6:	dca2      	bgt.n	800503e <__sflush_r+0x1e>
 80050f8:	e7f8      	b.n	80050ec <__sflush_r+0xcc>
 80050fa:	f8d8 3000 	ldr.w	r3, [r8]
 80050fe:	2b00      	cmp	r3, #0
 8005100:	d0b0      	beq.n	8005064 <__sflush_r+0x44>
 8005102:	2b1d      	cmp	r3, #29
 8005104:	d001      	beq.n	800510a <__sflush_r+0xea>
 8005106:	2b16      	cmp	r3, #22
 8005108:	d12c      	bne.n	8005164 <__sflush_r+0x144>
 800510a:	f8c8 6000 	str.w	r6, [r8]
 800510e:	2000      	movs	r0, #0
 8005110:	e7ed      	b.n	80050ee <__sflush_r+0xce>
 8005112:	f8d8 1000 	ldr.w	r1, [r8]
 8005116:	291d      	cmp	r1, #29
 8005118:	d81a      	bhi.n	8005150 <__sflush_r+0x130>
 800511a:	4b15      	ldr	r3, [pc, #84]	; (8005170 <__sflush_r+0x150>)
 800511c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005120:	40cb      	lsrs	r3, r1
 8005122:	43db      	mvns	r3, r3
 8005124:	f013 0301 	ands.w	r3, r3, #1
 8005128:	d114      	bne.n	8005154 <__sflush_r+0x134>
 800512a:	6925      	ldr	r5, [r4, #16]
 800512c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005130:	e9c4 5300 	strd	r5, r3, [r4]
 8005134:	04d5      	lsls	r5, r2, #19
 8005136:	81a2      	strh	r2, [r4, #12]
 8005138:	d5b1      	bpl.n	800509e <__sflush_r+0x7e>
 800513a:	2900      	cmp	r1, #0
 800513c:	d1af      	bne.n	800509e <__sflush_r+0x7e>
 800513e:	e7ad      	b.n	800509c <__sflush_r+0x7c>
 8005140:	89a3      	ldrh	r3, [r4, #12]
 8005142:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005146:	81a3      	strh	r3, [r4, #12]
 8005148:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800514c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005150:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005154:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005158:	81a2      	strh	r2, [r4, #12]
 800515a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800515e:	e7c6      	b.n	80050ee <__sflush_r+0xce>
 8005160:	6d20      	ldr	r0, [r4, #80]	; 0x50
 8005162:	e782      	b.n	800506a <__sflush_r+0x4a>
 8005164:	89a3      	ldrh	r3, [r4, #12]
 8005166:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800516a:	81a3      	strh	r3, [r4, #12]
 800516c:	e7bf      	b.n	80050ee <__sflush_r+0xce>
 800516e:	bf00      	nop
 8005170:	20400001 	.word	0x20400001

08005174 <_fflush_r>:
 8005174:	b538      	push	{r3, r4, r5, lr}
 8005176:	460d      	mov	r5, r1
 8005178:	4604      	mov	r4, r0
 800517a:	b108      	cbz	r0, 8005180 <_fflush_r+0xc>
 800517c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800517e:	b1a3      	cbz	r3, 80051aa <_fflush_r+0x36>
 8005180:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005184:	b1b8      	cbz	r0, 80051b6 <_fflush_r+0x42>
 8005186:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005188:	07db      	lsls	r3, r3, #31
 800518a:	d401      	bmi.n	8005190 <_fflush_r+0x1c>
 800518c:	0581      	lsls	r1, r0, #22
 800518e:	d51a      	bpl.n	80051c6 <_fflush_r+0x52>
 8005190:	4620      	mov	r0, r4
 8005192:	4629      	mov	r1, r5
 8005194:	f7ff ff44 	bl	8005020 <__sflush_r>
 8005198:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800519a:	07da      	lsls	r2, r3, #31
 800519c:	4604      	mov	r4, r0
 800519e:	d402      	bmi.n	80051a6 <_fflush_r+0x32>
 80051a0:	89ab      	ldrh	r3, [r5, #12]
 80051a2:	059b      	lsls	r3, r3, #22
 80051a4:	d50a      	bpl.n	80051bc <_fflush_r+0x48>
 80051a6:	4620      	mov	r0, r4
 80051a8:	bd38      	pop	{r3, r4, r5, pc}
 80051aa:	f000 f83f 	bl	800522c <__sinit>
 80051ae:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80051b2:	2800      	cmp	r0, #0
 80051b4:	d1e7      	bne.n	8005186 <_fflush_r+0x12>
 80051b6:	4604      	mov	r4, r0
 80051b8:	4620      	mov	r0, r4
 80051ba:	bd38      	pop	{r3, r4, r5, pc}
 80051bc:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80051be:	f000 fb87 	bl	80058d0 <__retarget_lock_release_recursive>
 80051c2:	4620      	mov	r0, r4
 80051c4:	bd38      	pop	{r3, r4, r5, pc}
 80051c6:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80051c8:	f000 fb80 	bl	80058cc <__retarget_lock_acquire_recursive>
 80051cc:	e7e0      	b.n	8005190 <_fflush_r+0x1c>
 80051ce:	bf00      	nop

080051d0 <std>:
 80051d0:	b510      	push	{r4, lr}
 80051d2:	2300      	movs	r3, #0
 80051d4:	4604      	mov	r4, r0
 80051d6:	8181      	strh	r1, [r0, #12]
 80051d8:	81c2      	strh	r2, [r0, #14]
 80051da:	e9c0 3300 	strd	r3, r3, [r0]
 80051de:	6083      	str	r3, [r0, #8]
 80051e0:	6643      	str	r3, [r0, #100]	; 0x64
 80051e2:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80051e6:	6183      	str	r3, [r0, #24]
 80051e8:	4619      	mov	r1, r3
 80051ea:	2208      	movs	r2, #8
 80051ec:	305c      	adds	r0, #92	; 0x5c
 80051ee:	f7fd f8c9 	bl	8002384 <memset>
 80051f2:	4807      	ldr	r0, [pc, #28]	; (8005210 <std+0x40>)
 80051f4:	4907      	ldr	r1, [pc, #28]	; (8005214 <std+0x44>)
 80051f6:	4a08      	ldr	r2, [pc, #32]	; (8005218 <std+0x48>)
 80051f8:	4b08      	ldr	r3, [pc, #32]	; (800521c <std+0x4c>)
 80051fa:	62e3      	str	r3, [r4, #44]	; 0x2c
 80051fc:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005200:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005204:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005208:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800520c:	f000 bb5a 	b.w	80058c4 <__retarget_lock_init_recursive>
 8005210:	080069e9 	.word	0x080069e9
 8005214:	08006a0d 	.word	0x08006a0d
 8005218:	08006a49 	.word	0x08006a49
 800521c:	08006a69 	.word	0x08006a69

08005220 <_cleanup_r>:
 8005220:	4901      	ldr	r1, [pc, #4]	; (8005228 <_cleanup_r+0x8>)
 8005222:	f000 bb17 	b.w	8005854 <_fwalk_reent>
 8005226:	bf00      	nop
 8005228:	08006cd9 	.word	0x08006cd9

0800522c <__sinit>:
 800522c:	b510      	push	{r4, lr}
 800522e:	4604      	mov	r4, r0
 8005230:	4812      	ldr	r0, [pc, #72]	; (800527c <__sinit+0x50>)
 8005232:	f000 fb4b 	bl	80058cc <__retarget_lock_acquire_recursive>
 8005236:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005238:	b9d2      	cbnz	r2, 8005270 <__sinit+0x44>
 800523a:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 800523e:	4810      	ldr	r0, [pc, #64]	; (8005280 <__sinit+0x54>)
 8005240:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 8005244:	2103      	movs	r1, #3
 8005246:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 800524a:	63e0      	str	r0, [r4, #60]	; 0x3c
 800524c:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005250:	6860      	ldr	r0, [r4, #4]
 8005252:	2104      	movs	r1, #4
 8005254:	f7ff ffbc 	bl	80051d0 <std>
 8005258:	2201      	movs	r2, #1
 800525a:	2109      	movs	r1, #9
 800525c:	68a0      	ldr	r0, [r4, #8]
 800525e:	f7ff ffb7 	bl	80051d0 <std>
 8005262:	2202      	movs	r2, #2
 8005264:	2112      	movs	r1, #18
 8005266:	68e0      	ldr	r0, [r4, #12]
 8005268:	f7ff ffb2 	bl	80051d0 <std>
 800526c:	2301      	movs	r3, #1
 800526e:	63a3      	str	r3, [r4, #56]	; 0x38
 8005270:	4802      	ldr	r0, [pc, #8]	; (800527c <__sinit+0x50>)
 8005272:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005276:	f000 bb2b 	b.w	80058d0 <__retarget_lock_release_recursive>
 800527a:	bf00      	nop
 800527c:	20000af8 	.word	0x20000af8
 8005280:	08005221 	.word	0x08005221

08005284 <__sfp_lock_acquire>:
 8005284:	4801      	ldr	r0, [pc, #4]	; (800528c <__sfp_lock_acquire+0x8>)
 8005286:	f000 bb21 	b.w	80058cc <__retarget_lock_acquire_recursive>
 800528a:	bf00      	nop
 800528c:	20000b0c 	.word	0x20000b0c

08005290 <__sfp_lock_release>:
 8005290:	4801      	ldr	r0, [pc, #4]	; (8005298 <__sfp_lock_release+0x8>)
 8005292:	f000 bb1d 	b.w	80058d0 <__retarget_lock_release_recursive>
 8005296:	bf00      	nop
 8005298:	20000b0c 	.word	0x20000b0c

0800529c <__libc_fini_array>:
 800529c:	b538      	push	{r3, r4, r5, lr}
 800529e:	4c0a      	ldr	r4, [pc, #40]	; (80052c8 <__libc_fini_array+0x2c>)
 80052a0:	4d0a      	ldr	r5, [pc, #40]	; (80052cc <__libc_fini_array+0x30>)
 80052a2:	1b64      	subs	r4, r4, r5
 80052a4:	10a4      	asrs	r4, r4, #2
 80052a6:	d00a      	beq.n	80052be <__libc_fini_array+0x22>
 80052a8:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80052ac:	3b01      	subs	r3, #1
 80052ae:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80052b2:	3c01      	subs	r4, #1
 80052b4:	f855 3904 	ldr.w	r3, [r5], #-4
 80052b8:	4798      	blx	r3
 80052ba:	2c00      	cmp	r4, #0
 80052bc:	d1f9      	bne.n	80052b2 <__libc_fini_array+0x16>
 80052be:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80052c2:	f001 befd 	b.w	80070c0 <_fini>
 80052c6:	bf00      	nop
 80052c8:	0800748c 	.word	0x0800748c
 80052cc:	08007488 	.word	0x08007488

080052d0 <_malloc_trim_r>:
 80052d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80052d2:	4f24      	ldr	r7, [pc, #144]	; (8005364 <_malloc_trim_r+0x94>)
 80052d4:	460c      	mov	r4, r1
 80052d6:	4606      	mov	r6, r0
 80052d8:	f000 fe7c 	bl	8005fd4 <__malloc_lock>
 80052dc:	68bb      	ldr	r3, [r7, #8]
 80052de:	685d      	ldr	r5, [r3, #4]
 80052e0:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80052e4:	310f      	adds	r1, #15
 80052e6:	f025 0503 	bic.w	r5, r5, #3
 80052ea:	4429      	add	r1, r5
 80052ec:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80052f0:	f021 010f 	bic.w	r1, r1, #15
 80052f4:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80052f8:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80052fc:	db07      	blt.n	800530e <_malloc_trim_r+0x3e>
 80052fe:	2100      	movs	r1, #0
 8005300:	4630      	mov	r0, r6
 8005302:	f001 fb5f 	bl	80069c4 <_sbrk_r>
 8005306:	68bb      	ldr	r3, [r7, #8]
 8005308:	442b      	add	r3, r5
 800530a:	4298      	cmp	r0, r3
 800530c:	d004      	beq.n	8005318 <_malloc_trim_r+0x48>
 800530e:	4630      	mov	r0, r6
 8005310:	f000 fe66 	bl	8005fe0 <__malloc_unlock>
 8005314:	2000      	movs	r0, #0
 8005316:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005318:	4261      	negs	r1, r4
 800531a:	4630      	mov	r0, r6
 800531c:	f001 fb52 	bl	80069c4 <_sbrk_r>
 8005320:	3001      	adds	r0, #1
 8005322:	d00d      	beq.n	8005340 <_malloc_trim_r+0x70>
 8005324:	4b10      	ldr	r3, [pc, #64]	; (8005368 <_malloc_trim_r+0x98>)
 8005326:	68ba      	ldr	r2, [r7, #8]
 8005328:	6819      	ldr	r1, [r3, #0]
 800532a:	1b2d      	subs	r5, r5, r4
 800532c:	f045 0501 	orr.w	r5, r5, #1
 8005330:	4630      	mov	r0, r6
 8005332:	1b09      	subs	r1, r1, r4
 8005334:	6055      	str	r5, [r2, #4]
 8005336:	6019      	str	r1, [r3, #0]
 8005338:	f000 fe52 	bl	8005fe0 <__malloc_unlock>
 800533c:	2001      	movs	r0, #1
 800533e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005340:	2100      	movs	r1, #0
 8005342:	4630      	mov	r0, r6
 8005344:	f001 fb3e 	bl	80069c4 <_sbrk_r>
 8005348:	68ba      	ldr	r2, [r7, #8]
 800534a:	1a83      	subs	r3, r0, r2
 800534c:	2b0f      	cmp	r3, #15
 800534e:	ddde      	ble.n	800530e <_malloc_trim_r+0x3e>
 8005350:	4c06      	ldr	r4, [pc, #24]	; (800536c <_malloc_trim_r+0x9c>)
 8005352:	4905      	ldr	r1, [pc, #20]	; (8005368 <_malloc_trim_r+0x98>)
 8005354:	6824      	ldr	r4, [r4, #0]
 8005356:	f043 0301 	orr.w	r3, r3, #1
 800535a:	1b00      	subs	r0, r0, r4
 800535c:	6053      	str	r3, [r2, #4]
 800535e:	6008      	str	r0, [r1, #0]
 8005360:	e7d5      	b.n	800530e <_malloc_trim_r+0x3e>
 8005362:	bf00      	nop
 8005364:	2000044c 	.word	0x2000044c
 8005368:	20000a70 	.word	0x20000a70
 800536c:	20000854 	.word	0x20000854

08005370 <_free_r>:
 8005370:	2900      	cmp	r1, #0
 8005372:	d053      	beq.n	800541c <_free_r+0xac>
 8005374:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005376:	460c      	mov	r4, r1
 8005378:	4606      	mov	r6, r0
 800537a:	f000 fe2b 	bl	8005fd4 <__malloc_lock>
 800537e:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8005382:	4f71      	ldr	r7, [pc, #452]	; (8005548 <_free_r+0x1d8>)
 8005384:	f02c 0101 	bic.w	r1, ip, #1
 8005388:	f1a4 0508 	sub.w	r5, r4, #8
 800538c:	186b      	adds	r3, r5, r1
 800538e:	68b8      	ldr	r0, [r7, #8]
 8005390:	685a      	ldr	r2, [r3, #4]
 8005392:	4298      	cmp	r0, r3
 8005394:	f022 0203 	bic.w	r2, r2, #3
 8005398:	d053      	beq.n	8005442 <_free_r+0xd2>
 800539a:	f01c 0f01 	tst.w	ip, #1
 800539e:	605a      	str	r2, [r3, #4]
 80053a0:	eb03 0002 	add.w	r0, r3, r2
 80053a4:	d13b      	bne.n	800541e <_free_r+0xae>
 80053a6:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80053aa:	6840      	ldr	r0, [r0, #4]
 80053ac:	eba5 050c 	sub.w	r5, r5, ip
 80053b0:	f107 0e08 	add.w	lr, r7, #8
 80053b4:	68ac      	ldr	r4, [r5, #8]
 80053b6:	4574      	cmp	r4, lr
 80053b8:	4461      	add	r1, ip
 80053ba:	f000 0001 	and.w	r0, r0, #1
 80053be:	d075      	beq.n	80054ac <_free_r+0x13c>
 80053c0:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80053c4:	f8c4 c00c 	str.w	ip, [r4, #12]
 80053c8:	f8cc 4008 	str.w	r4, [ip, #8]
 80053cc:	b360      	cbz	r0, 8005428 <_free_r+0xb8>
 80053ce:	f041 0301 	orr.w	r3, r1, #1
 80053d2:	606b      	str	r3, [r5, #4]
 80053d4:	5069      	str	r1, [r5, r1]
 80053d6:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80053da:	d350      	bcc.n	800547e <_free_r+0x10e>
 80053dc:	0a4b      	lsrs	r3, r1, #9
 80053de:	2b04      	cmp	r3, #4
 80053e0:	d870      	bhi.n	80054c4 <_free_r+0x154>
 80053e2:	098b      	lsrs	r3, r1, #6
 80053e4:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80053e8:	00e4      	lsls	r4, r4, #3
 80053ea:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80053ee:	1938      	adds	r0, r7, r4
 80053f0:	593b      	ldr	r3, [r7, r4]
 80053f2:	3808      	subs	r0, #8
 80053f4:	4298      	cmp	r0, r3
 80053f6:	d078      	beq.n	80054ea <_free_r+0x17a>
 80053f8:	685a      	ldr	r2, [r3, #4]
 80053fa:	f022 0203 	bic.w	r2, r2, #3
 80053fe:	428a      	cmp	r2, r1
 8005400:	d971      	bls.n	80054e6 <_free_r+0x176>
 8005402:	689b      	ldr	r3, [r3, #8]
 8005404:	4298      	cmp	r0, r3
 8005406:	d1f7      	bne.n	80053f8 <_free_r+0x88>
 8005408:	68c3      	ldr	r3, [r0, #12]
 800540a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800540e:	609d      	str	r5, [r3, #8]
 8005410:	60c5      	str	r5, [r0, #12]
 8005412:	4630      	mov	r0, r6
 8005414:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005418:	f000 bde2 	b.w	8005fe0 <__malloc_unlock>
 800541c:	4770      	bx	lr
 800541e:	6840      	ldr	r0, [r0, #4]
 8005420:	f000 0001 	and.w	r0, r0, #1
 8005424:	2800      	cmp	r0, #0
 8005426:	d1d2      	bne.n	80053ce <_free_r+0x5e>
 8005428:	6898      	ldr	r0, [r3, #8]
 800542a:	4c48      	ldr	r4, [pc, #288]	; (800554c <_free_r+0x1dc>)
 800542c:	4411      	add	r1, r2
 800542e:	42a0      	cmp	r0, r4
 8005430:	f041 0201 	orr.w	r2, r1, #1
 8005434:	d062      	beq.n	80054fc <_free_r+0x18c>
 8005436:	68db      	ldr	r3, [r3, #12]
 8005438:	60c3      	str	r3, [r0, #12]
 800543a:	6098      	str	r0, [r3, #8]
 800543c:	606a      	str	r2, [r5, #4]
 800543e:	5069      	str	r1, [r5, r1]
 8005440:	e7c9      	b.n	80053d6 <_free_r+0x66>
 8005442:	f01c 0f01 	tst.w	ip, #1
 8005446:	440a      	add	r2, r1
 8005448:	d107      	bne.n	800545a <_free_r+0xea>
 800544a:	f854 3c08 	ldr.w	r3, [r4, #-8]
 800544e:	1aed      	subs	r5, r5, r3
 8005450:	441a      	add	r2, r3
 8005452:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8005456:	60cb      	str	r3, [r1, #12]
 8005458:	6099      	str	r1, [r3, #8]
 800545a:	4b3d      	ldr	r3, [pc, #244]	; (8005550 <_free_r+0x1e0>)
 800545c:	681b      	ldr	r3, [r3, #0]
 800545e:	f042 0101 	orr.w	r1, r2, #1
 8005462:	4293      	cmp	r3, r2
 8005464:	6069      	str	r1, [r5, #4]
 8005466:	60bd      	str	r5, [r7, #8]
 8005468:	d804      	bhi.n	8005474 <_free_r+0x104>
 800546a:	4b3a      	ldr	r3, [pc, #232]	; (8005554 <_free_r+0x1e4>)
 800546c:	4630      	mov	r0, r6
 800546e:	6819      	ldr	r1, [r3, #0]
 8005470:	f7ff ff2e 	bl	80052d0 <_malloc_trim_r>
 8005474:	4630      	mov	r0, r6
 8005476:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 800547a:	f000 bdb1 	b.w	8005fe0 <__malloc_unlock>
 800547e:	08c9      	lsrs	r1, r1, #3
 8005480:	6878      	ldr	r0, [r7, #4]
 8005482:	1c4a      	adds	r2, r1, #1
 8005484:	2301      	movs	r3, #1
 8005486:	1089      	asrs	r1, r1, #2
 8005488:	408b      	lsls	r3, r1
 800548a:	4303      	orrs	r3, r0
 800548c:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005490:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005494:	607b      	str	r3, [r7, #4]
 8005496:	3908      	subs	r1, #8
 8005498:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800549c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80054a0:	60c5      	str	r5, [r0, #12]
 80054a2:	4630      	mov	r0, r6
 80054a4:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80054a8:	f000 bd9a 	b.w	8005fe0 <__malloc_unlock>
 80054ac:	2800      	cmp	r0, #0
 80054ae:	d145      	bne.n	800553c <_free_r+0x1cc>
 80054b0:	440a      	add	r2, r1
 80054b2:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80054b6:	f042 0001 	orr.w	r0, r2, #1
 80054ba:	60cb      	str	r3, [r1, #12]
 80054bc:	6099      	str	r1, [r3, #8]
 80054be:	6068      	str	r0, [r5, #4]
 80054c0:	50aa      	str	r2, [r5, r2]
 80054c2:	e7d7      	b.n	8005474 <_free_r+0x104>
 80054c4:	2b14      	cmp	r3, #20
 80054c6:	d908      	bls.n	80054da <_free_r+0x16a>
 80054c8:	2b54      	cmp	r3, #84	; 0x54
 80054ca:	d81e      	bhi.n	800550a <_free_r+0x19a>
 80054cc:	0b0b      	lsrs	r3, r1, #12
 80054ce:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80054d2:	00e4      	lsls	r4, r4, #3
 80054d4:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80054d8:	e789      	b.n	80053ee <_free_r+0x7e>
 80054da:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80054de:	00e4      	lsls	r4, r4, #3
 80054e0:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80054e4:	e783      	b.n	80053ee <_free_r+0x7e>
 80054e6:	4618      	mov	r0, r3
 80054e8:	e78e      	b.n	8005408 <_free_r+0x98>
 80054ea:	1093      	asrs	r3, r2, #2
 80054ec:	6879      	ldr	r1, [r7, #4]
 80054ee:	2201      	movs	r2, #1
 80054f0:	fa02 f303 	lsl.w	r3, r2, r3
 80054f4:	430b      	orrs	r3, r1
 80054f6:	607b      	str	r3, [r7, #4]
 80054f8:	4603      	mov	r3, r0
 80054fa:	e786      	b.n	800540a <_free_r+0x9a>
 80054fc:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005500:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005504:	606a      	str	r2, [r5, #4]
 8005506:	5069      	str	r1, [r5, r1]
 8005508:	e7b4      	b.n	8005474 <_free_r+0x104>
 800550a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800550e:	d806      	bhi.n	800551e <_free_r+0x1ae>
 8005510:	0bcb      	lsrs	r3, r1, #15
 8005512:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005516:	00e4      	lsls	r4, r4, #3
 8005518:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800551c:	e767      	b.n	80053ee <_free_r+0x7e>
 800551e:	f240 5254 	movw	r2, #1364	; 0x554
 8005522:	4293      	cmp	r3, r2
 8005524:	d806      	bhi.n	8005534 <_free_r+0x1c4>
 8005526:	0c8b      	lsrs	r3, r1, #18
 8005528:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800552c:	00e4      	lsls	r4, r4, #3
 800552e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8005532:	e75c      	b.n	80053ee <_free_r+0x7e>
 8005534:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005538:	227e      	movs	r2, #126	; 0x7e
 800553a:	e758      	b.n	80053ee <_free_r+0x7e>
 800553c:	f041 0201 	orr.w	r2, r1, #1
 8005540:	606a      	str	r2, [r5, #4]
 8005542:	6019      	str	r1, [r3, #0]
 8005544:	e796      	b.n	8005474 <_free_r+0x104>
 8005546:	bf00      	nop
 8005548:	2000044c 	.word	0x2000044c
 800554c:	20000454 	.word	0x20000454
 8005550:	20000858 	.word	0x20000858
 8005554:	20000aa0 	.word	0x20000aa0

08005558 <__sfvwrite_r>:
 8005558:	6893      	ldr	r3, [r2, #8]
 800555a:	2b00      	cmp	r3, #0
 800555c:	f000 80e4 	beq.w	8005728 <__sfvwrite_r+0x1d0>
 8005560:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005564:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005568:	b29b      	uxth	r3, r3
 800556a:	460c      	mov	r4, r1
 800556c:	0719      	lsls	r1, r3, #28
 800556e:	b083      	sub	sp, #12
 8005570:	4682      	mov	sl, r0
 8005572:	4690      	mov	r8, r2
 8005574:	d535      	bpl.n	80055e2 <__sfvwrite_r+0x8a>
 8005576:	6922      	ldr	r2, [r4, #16]
 8005578:	b39a      	cbz	r2, 80055e2 <__sfvwrite_r+0x8a>
 800557a:	f013 0202 	ands.w	r2, r3, #2
 800557e:	f8d8 6000 	ldr.w	r6, [r8]
 8005582:	d03d      	beq.n	8005600 <__sfvwrite_r+0xa8>
 8005584:	2700      	movs	r7, #0
 8005586:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 800558a:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800558e:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005850 <__sfvwrite_r+0x2f8>
 8005592:	463d      	mov	r5, r7
 8005594:	454d      	cmp	r5, r9
 8005596:	462b      	mov	r3, r5
 8005598:	463a      	mov	r2, r7
 800559a:	bf28      	it	cs
 800559c:	464b      	movcs	r3, r9
 800559e:	4661      	mov	r1, ip
 80055a0:	4650      	mov	r0, sl
 80055a2:	b1d5      	cbz	r5, 80055da <__sfvwrite_r+0x82>
 80055a4:	47d8      	blx	fp
 80055a6:	2800      	cmp	r0, #0
 80055a8:	f340 80c6 	ble.w	8005738 <__sfvwrite_r+0x1e0>
 80055ac:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80055b0:	1a1b      	subs	r3, r3, r0
 80055b2:	4407      	add	r7, r0
 80055b4:	1a2d      	subs	r5, r5, r0
 80055b6:	f8c8 3008 	str.w	r3, [r8, #8]
 80055ba:	2b00      	cmp	r3, #0
 80055bc:	f000 80b0 	beq.w	8005720 <__sfvwrite_r+0x1c8>
 80055c0:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80055c4:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80055c8:	454d      	cmp	r5, r9
 80055ca:	462b      	mov	r3, r5
 80055cc:	463a      	mov	r2, r7
 80055ce:	bf28      	it	cs
 80055d0:	464b      	movcs	r3, r9
 80055d2:	4661      	mov	r1, ip
 80055d4:	4650      	mov	r0, sl
 80055d6:	2d00      	cmp	r5, #0
 80055d8:	d1e4      	bne.n	80055a4 <__sfvwrite_r+0x4c>
 80055da:	e9d6 7500 	ldrd	r7, r5, [r6]
 80055de:	3608      	adds	r6, #8
 80055e0:	e7d8      	b.n	8005594 <__sfvwrite_r+0x3c>
 80055e2:	4621      	mov	r1, r4
 80055e4:	4650      	mov	r0, sl
 80055e6:	f7fe fd03 	bl	8003ff0 <__swsetup_r>
 80055ea:	2800      	cmp	r0, #0
 80055ec:	f040 812a 	bne.w	8005844 <__sfvwrite_r+0x2ec>
 80055f0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80055f4:	f8d8 6000 	ldr.w	r6, [r8]
 80055f8:	b29b      	uxth	r3, r3
 80055fa:	f013 0202 	ands.w	r2, r3, #2
 80055fe:	d1c1      	bne.n	8005584 <__sfvwrite_r+0x2c>
 8005600:	f013 0901 	ands.w	r9, r3, #1
 8005604:	d15d      	bne.n	80056c2 <__sfvwrite_r+0x16a>
 8005606:	68a7      	ldr	r7, [r4, #8]
 8005608:	6820      	ldr	r0, [r4, #0]
 800560a:	464d      	mov	r5, r9
 800560c:	2d00      	cmp	r5, #0
 800560e:	d054      	beq.n	80056ba <__sfvwrite_r+0x162>
 8005610:	059a      	lsls	r2, r3, #22
 8005612:	f140 809b 	bpl.w	800574c <__sfvwrite_r+0x1f4>
 8005616:	42af      	cmp	r7, r5
 8005618:	46bb      	mov	fp, r7
 800561a:	f200 80d8 	bhi.w	80057ce <__sfvwrite_r+0x276>
 800561e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005622:	d02f      	beq.n	8005684 <__sfvwrite_r+0x12c>
 8005624:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005628:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800562c:	eba0 0b01 	sub.w	fp, r0, r1
 8005630:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8005634:	1c68      	adds	r0, r5, #1
 8005636:	107f      	asrs	r7, r7, #1
 8005638:	4458      	add	r0, fp
 800563a:	42b8      	cmp	r0, r7
 800563c:	463a      	mov	r2, r7
 800563e:	bf84      	itt	hi
 8005640:	4607      	movhi	r7, r0
 8005642:	463a      	movhi	r2, r7
 8005644:	055b      	lsls	r3, r3, #21
 8005646:	f140 80d3 	bpl.w	80057f0 <__sfvwrite_r+0x298>
 800564a:	4611      	mov	r1, r2
 800564c:	4650      	mov	r0, sl
 800564e:	f000 f9b9 	bl	80059c4 <_malloc_r>
 8005652:	2800      	cmp	r0, #0
 8005654:	f000 80f0 	beq.w	8005838 <__sfvwrite_r+0x2e0>
 8005658:	465a      	mov	r2, fp
 800565a:	6921      	ldr	r1, [r4, #16]
 800565c:	9001      	str	r0, [sp, #4]
 800565e:	f7fa ff4f 	bl	8000500 <memcpy>
 8005662:	89a2      	ldrh	r2, [r4, #12]
 8005664:	9b01      	ldr	r3, [sp, #4]
 8005666:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 800566a:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 800566e:	81a2      	strh	r2, [r4, #12]
 8005670:	eba7 020b 	sub.w	r2, r7, fp
 8005674:	eb03 000b 	add.w	r0, r3, fp
 8005678:	6167      	str	r7, [r4, #20]
 800567a:	6123      	str	r3, [r4, #16]
 800567c:	6020      	str	r0, [r4, #0]
 800567e:	60a2      	str	r2, [r4, #8]
 8005680:	462f      	mov	r7, r5
 8005682:	46ab      	mov	fp, r5
 8005684:	465a      	mov	r2, fp
 8005686:	4649      	mov	r1, r9
 8005688:	f000 fc40 	bl	8005f0c <memmove>
 800568c:	68a2      	ldr	r2, [r4, #8]
 800568e:	6823      	ldr	r3, [r4, #0]
 8005690:	1bd2      	subs	r2, r2, r7
 8005692:	445b      	add	r3, fp
 8005694:	462f      	mov	r7, r5
 8005696:	60a2      	str	r2, [r4, #8]
 8005698:	6023      	str	r3, [r4, #0]
 800569a:	2500      	movs	r5, #0
 800569c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80056a0:	1bdb      	subs	r3, r3, r7
 80056a2:	44b9      	add	r9, r7
 80056a4:	f8c8 3008 	str.w	r3, [r8, #8]
 80056a8:	2b00      	cmp	r3, #0
 80056aa:	d039      	beq.n	8005720 <__sfvwrite_r+0x1c8>
 80056ac:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056b0:	68a7      	ldr	r7, [r4, #8]
 80056b2:	6820      	ldr	r0, [r4, #0]
 80056b4:	b29b      	uxth	r3, r3
 80056b6:	2d00      	cmp	r5, #0
 80056b8:	d1aa      	bne.n	8005610 <__sfvwrite_r+0xb8>
 80056ba:	e9d6 9500 	ldrd	r9, r5, [r6]
 80056be:	3608      	adds	r6, #8
 80056c0:	e7a4      	b.n	800560c <__sfvwrite_r+0xb4>
 80056c2:	4633      	mov	r3, r6
 80056c4:	4691      	mov	r9, r2
 80056c6:	4610      	mov	r0, r2
 80056c8:	4617      	mov	r7, r2
 80056ca:	464e      	mov	r6, r9
 80056cc:	469b      	mov	fp, r3
 80056ce:	2f00      	cmp	r7, #0
 80056d0:	d06b      	beq.n	80057aa <__sfvwrite_r+0x252>
 80056d2:	2800      	cmp	r0, #0
 80056d4:	d071      	beq.n	80057ba <__sfvwrite_r+0x262>
 80056d6:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80056da:	6820      	ldr	r0, [r4, #0]
 80056dc:	45b9      	cmp	r9, r7
 80056de:	464b      	mov	r3, r9
 80056e0:	bf28      	it	cs
 80056e2:	463b      	movcs	r3, r7
 80056e4:	4288      	cmp	r0, r1
 80056e6:	d903      	bls.n	80056f0 <__sfvwrite_r+0x198>
 80056e8:	68a5      	ldr	r5, [r4, #8]
 80056ea:	4415      	add	r5, r2
 80056ec:	42ab      	cmp	r3, r5
 80056ee:	dc71      	bgt.n	80057d4 <__sfvwrite_r+0x27c>
 80056f0:	429a      	cmp	r2, r3
 80056f2:	f300 8093 	bgt.w	800581c <__sfvwrite_r+0x2c4>
 80056f6:	4613      	mov	r3, r2
 80056f8:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80056fa:	69e1      	ldr	r1, [r4, #28]
 80056fc:	4632      	mov	r2, r6
 80056fe:	4650      	mov	r0, sl
 8005700:	47a8      	blx	r5
 8005702:	1e05      	subs	r5, r0, #0
 8005704:	dd18      	ble.n	8005738 <__sfvwrite_r+0x1e0>
 8005706:	ebb9 0905 	subs.w	r9, r9, r5
 800570a:	d00f      	beq.n	800572c <__sfvwrite_r+0x1d4>
 800570c:	2001      	movs	r0, #1
 800570e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005712:	1b5b      	subs	r3, r3, r5
 8005714:	442e      	add	r6, r5
 8005716:	1b7f      	subs	r7, r7, r5
 8005718:	f8c8 3008 	str.w	r3, [r8, #8]
 800571c:	2b00      	cmp	r3, #0
 800571e:	d1d6      	bne.n	80056ce <__sfvwrite_r+0x176>
 8005720:	2000      	movs	r0, #0
 8005722:	b003      	add	sp, #12
 8005724:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005728:	2000      	movs	r0, #0
 800572a:	4770      	bx	lr
 800572c:	4621      	mov	r1, r4
 800572e:	4650      	mov	r0, sl
 8005730:	f7ff fd20 	bl	8005174 <_fflush_r>
 8005734:	2800      	cmp	r0, #0
 8005736:	d0ea      	beq.n	800570e <__sfvwrite_r+0x1b6>
 8005738:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800573c:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005740:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005744:	81a3      	strh	r3, [r4, #12]
 8005746:	b003      	add	sp, #12
 8005748:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800574c:	6923      	ldr	r3, [r4, #16]
 800574e:	4283      	cmp	r3, r0
 8005750:	d315      	bcc.n	800577e <__sfvwrite_r+0x226>
 8005752:	6961      	ldr	r1, [r4, #20]
 8005754:	42a9      	cmp	r1, r5
 8005756:	d812      	bhi.n	800577e <__sfvwrite_r+0x226>
 8005758:	4b3c      	ldr	r3, [pc, #240]	; (800584c <__sfvwrite_r+0x2f4>)
 800575a:	6a67      	ldr	r7, [r4, #36]	; 0x24
 800575c:	429d      	cmp	r5, r3
 800575e:	bf94      	ite	ls
 8005760:	462b      	movls	r3, r5
 8005762:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005766:	464a      	mov	r2, r9
 8005768:	fb93 f3f1 	sdiv	r3, r3, r1
 800576c:	4650      	mov	r0, sl
 800576e:	fb01 f303 	mul.w	r3, r1, r3
 8005772:	69e1      	ldr	r1, [r4, #28]
 8005774:	47b8      	blx	r7
 8005776:	1e07      	subs	r7, r0, #0
 8005778:	ddde      	ble.n	8005738 <__sfvwrite_r+0x1e0>
 800577a:	1bed      	subs	r5, r5, r7
 800577c:	e78e      	b.n	800569c <__sfvwrite_r+0x144>
 800577e:	42af      	cmp	r7, r5
 8005780:	bf28      	it	cs
 8005782:	462f      	movcs	r7, r5
 8005784:	463a      	mov	r2, r7
 8005786:	4649      	mov	r1, r9
 8005788:	f000 fbc0 	bl	8005f0c <memmove>
 800578c:	68a3      	ldr	r3, [r4, #8]
 800578e:	6822      	ldr	r2, [r4, #0]
 8005790:	1bdb      	subs	r3, r3, r7
 8005792:	443a      	add	r2, r7
 8005794:	60a3      	str	r3, [r4, #8]
 8005796:	6022      	str	r2, [r4, #0]
 8005798:	2b00      	cmp	r3, #0
 800579a:	d1ee      	bne.n	800577a <__sfvwrite_r+0x222>
 800579c:	4621      	mov	r1, r4
 800579e:	4650      	mov	r0, sl
 80057a0:	f7ff fce8 	bl	8005174 <_fflush_r>
 80057a4:	2800      	cmp	r0, #0
 80057a6:	d0e8      	beq.n	800577a <__sfvwrite_r+0x222>
 80057a8:	e7c6      	b.n	8005738 <__sfvwrite_r+0x1e0>
 80057aa:	f10b 0308 	add.w	r3, fp, #8
 80057ae:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80057b2:	469b      	mov	fp, r3
 80057b4:	3308      	adds	r3, #8
 80057b6:	2f00      	cmp	r7, #0
 80057b8:	d0f9      	beq.n	80057ae <__sfvwrite_r+0x256>
 80057ba:	463a      	mov	r2, r7
 80057bc:	210a      	movs	r1, #10
 80057be:	4630      	mov	r0, r6
 80057c0:	f7fa ffae 	bl	8000720 <memchr>
 80057c4:	b338      	cbz	r0, 8005816 <__sfvwrite_r+0x2be>
 80057c6:	3001      	adds	r0, #1
 80057c8:	eba0 0906 	sub.w	r9, r0, r6
 80057cc:	e783      	b.n	80056d6 <__sfvwrite_r+0x17e>
 80057ce:	462f      	mov	r7, r5
 80057d0:	46ab      	mov	fp, r5
 80057d2:	e757      	b.n	8005684 <__sfvwrite_r+0x12c>
 80057d4:	4631      	mov	r1, r6
 80057d6:	462a      	mov	r2, r5
 80057d8:	f000 fb98 	bl	8005f0c <memmove>
 80057dc:	6823      	ldr	r3, [r4, #0]
 80057de:	442b      	add	r3, r5
 80057e0:	6023      	str	r3, [r4, #0]
 80057e2:	4621      	mov	r1, r4
 80057e4:	4650      	mov	r0, sl
 80057e6:	f7ff fcc5 	bl	8005174 <_fflush_r>
 80057ea:	2800      	cmp	r0, #0
 80057ec:	d08b      	beq.n	8005706 <__sfvwrite_r+0x1ae>
 80057ee:	e7a3      	b.n	8005738 <__sfvwrite_r+0x1e0>
 80057f0:	4650      	mov	r0, sl
 80057f2:	f000 ff05 	bl	8006600 <_realloc_r>
 80057f6:	4603      	mov	r3, r0
 80057f8:	2800      	cmp	r0, #0
 80057fa:	f47f af39 	bne.w	8005670 <__sfvwrite_r+0x118>
 80057fe:	6921      	ldr	r1, [r4, #16]
 8005800:	4650      	mov	r0, sl
 8005802:	f7ff fdb5 	bl	8005370 <_free_r>
 8005806:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800580a:	220c      	movs	r2, #12
 800580c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005810:	f8ca 2000 	str.w	r2, [sl]
 8005814:	e792      	b.n	800573c <__sfvwrite_r+0x1e4>
 8005816:	f107 0901 	add.w	r9, r7, #1
 800581a:	e75c      	b.n	80056d6 <__sfvwrite_r+0x17e>
 800581c:	461a      	mov	r2, r3
 800581e:	4631      	mov	r1, r6
 8005820:	9301      	str	r3, [sp, #4]
 8005822:	f000 fb73 	bl	8005f0c <memmove>
 8005826:	9b01      	ldr	r3, [sp, #4]
 8005828:	68a1      	ldr	r1, [r4, #8]
 800582a:	6822      	ldr	r2, [r4, #0]
 800582c:	1ac9      	subs	r1, r1, r3
 800582e:	441a      	add	r2, r3
 8005830:	60a1      	str	r1, [r4, #8]
 8005832:	6022      	str	r2, [r4, #0]
 8005834:	461d      	mov	r5, r3
 8005836:	e766      	b.n	8005706 <__sfvwrite_r+0x1ae>
 8005838:	230c      	movs	r3, #12
 800583a:	f8ca 3000 	str.w	r3, [sl]
 800583e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005842:	e77b      	b.n	800573c <__sfvwrite_r+0x1e4>
 8005844:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005848:	e76b      	b.n	8005722 <__sfvwrite_r+0x1ca>
 800584a:	bf00      	nop
 800584c:	7ffffffe 	.word	0x7ffffffe
 8005850:	7ffffc00 	.word	0x7ffffc00

08005854 <_fwalk_reent>:
 8005854:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005858:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 800585c:	d01f      	beq.n	800589e <_fwalk_reent+0x4a>
 800585e:	4688      	mov	r8, r1
 8005860:	4606      	mov	r6, r0
 8005862:	f04f 0900 	mov.w	r9, #0
 8005866:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 800586a:	3d01      	subs	r5, #1
 800586c:	d411      	bmi.n	8005892 <_fwalk_reent+0x3e>
 800586e:	89a3      	ldrh	r3, [r4, #12]
 8005870:	2b01      	cmp	r3, #1
 8005872:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005876:	4621      	mov	r1, r4
 8005878:	4630      	mov	r0, r6
 800587a:	d906      	bls.n	800588a <_fwalk_reent+0x36>
 800587c:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005880:	3301      	adds	r3, #1
 8005882:	d002      	beq.n	800588a <_fwalk_reent+0x36>
 8005884:	47c0      	blx	r8
 8005886:	ea49 0900 	orr.w	r9, r9, r0
 800588a:	1c6b      	adds	r3, r5, #1
 800588c:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005890:	d1ed      	bne.n	800586e <_fwalk_reent+0x1a>
 8005892:	683f      	ldr	r7, [r7, #0]
 8005894:	2f00      	cmp	r7, #0
 8005896:	d1e6      	bne.n	8005866 <_fwalk_reent+0x12>
 8005898:	4648      	mov	r0, r9
 800589a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800589e:	46b9      	mov	r9, r7
 80058a0:	4648      	mov	r0, r9
 80058a2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80058a6:	bf00      	nop

080058a8 <_localeconv_r>:
 80058a8:	4a04      	ldr	r2, [pc, #16]	; (80058bc <_localeconv_r+0x14>)
 80058aa:	4b05      	ldr	r3, [pc, #20]	; (80058c0 <_localeconv_r+0x18>)
 80058ac:	6812      	ldr	r2, [r2, #0]
 80058ae:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80058b0:	2800      	cmp	r0, #0
 80058b2:	bf08      	it	eq
 80058b4:	4618      	moveq	r0, r3
 80058b6:	30f0      	adds	r0, #240	; 0xf0
 80058b8:	4770      	bx	lr
 80058ba:	bf00      	nop
 80058bc:	20000018 	.word	0x20000018
 80058c0:	2000085c 	.word	0x2000085c

080058c4 <__retarget_lock_init_recursive>:
 80058c4:	4770      	bx	lr
 80058c6:	bf00      	nop

080058c8 <__retarget_lock_close_recursive>:
 80058c8:	4770      	bx	lr
 80058ca:	bf00      	nop

080058cc <__retarget_lock_acquire_recursive>:
 80058cc:	4770      	bx	lr
 80058ce:	bf00      	nop

080058d0 <__retarget_lock_release_recursive>:
 80058d0:	4770      	bx	lr
 80058d2:	bf00      	nop

080058d4 <__swhatbuf_r>:
 80058d4:	b570      	push	{r4, r5, r6, lr}
 80058d6:	460c      	mov	r4, r1
 80058d8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80058dc:	2900      	cmp	r1, #0
 80058de:	b096      	sub	sp, #88	; 0x58
 80058e0:	4615      	mov	r5, r2
 80058e2:	461e      	mov	r6, r3
 80058e4:	da0f      	bge.n	8005906 <__swhatbuf_r+0x32>
 80058e6:	89a2      	ldrh	r2, [r4, #12]
 80058e8:	2300      	movs	r3, #0
 80058ea:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 80058ee:	6033      	str	r3, [r6, #0]
 80058f0:	d104      	bne.n	80058fc <__swhatbuf_r+0x28>
 80058f2:	f44f 6380 	mov.w	r3, #1024	; 0x400
 80058f6:	602b      	str	r3, [r5, #0]
 80058f8:	b016      	add	sp, #88	; 0x58
 80058fa:	bd70      	pop	{r4, r5, r6, pc}
 80058fc:	2240      	movs	r2, #64	; 0x40
 80058fe:	4618      	mov	r0, r3
 8005900:	602a      	str	r2, [r5, #0]
 8005902:	b016      	add	sp, #88	; 0x58
 8005904:	bd70      	pop	{r4, r5, r6, pc}
 8005906:	466a      	mov	r2, sp
 8005908:	f001 fad0 	bl	8006eac <_fstat_r>
 800590c:	2800      	cmp	r0, #0
 800590e:	dbea      	blt.n	80058e6 <__swhatbuf_r+0x12>
 8005910:	9b01      	ldr	r3, [sp, #4]
 8005912:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005916:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 800591a:	fab3 f383 	clz	r3, r3
 800591e:	095b      	lsrs	r3, r3, #5
 8005920:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005924:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005928:	6033      	str	r3, [r6, #0]
 800592a:	602a      	str	r2, [r5, #0]
 800592c:	b016      	add	sp, #88	; 0x58
 800592e:	bd70      	pop	{r4, r5, r6, pc}

08005930 <__smakebuf_r>:
 8005930:	898a      	ldrh	r2, [r1, #12]
 8005932:	0792      	lsls	r2, r2, #30
 8005934:	460b      	mov	r3, r1
 8005936:	d506      	bpl.n	8005946 <__smakebuf_r+0x16>
 8005938:	f101 0243 	add.w	r2, r1, #67	; 0x43
 800593c:	2101      	movs	r1, #1
 800593e:	601a      	str	r2, [r3, #0]
 8005940:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005944:	4770      	bx	lr
 8005946:	b570      	push	{r4, r5, r6, lr}
 8005948:	b082      	sub	sp, #8
 800594a:	ab01      	add	r3, sp, #4
 800594c:	466a      	mov	r2, sp
 800594e:	460c      	mov	r4, r1
 8005950:	4605      	mov	r5, r0
 8005952:	f7ff ffbf 	bl	80058d4 <__swhatbuf_r>
 8005956:	9900      	ldr	r1, [sp, #0]
 8005958:	4606      	mov	r6, r0
 800595a:	4628      	mov	r0, r5
 800595c:	f000 f832 	bl	80059c4 <_malloc_r>
 8005960:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005964:	b1d8      	cbz	r0, 800599e <__smakebuf_r+0x6e>
 8005966:	4916      	ldr	r1, [pc, #88]	; (80059c0 <__smakebuf_r+0x90>)
 8005968:	63e9      	str	r1, [r5, #60]	; 0x3c
 800596a:	9a01      	ldr	r2, [sp, #4]
 800596c:	9900      	ldr	r1, [sp, #0]
 800596e:	6020      	str	r0, [r4, #0]
 8005970:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005974:	81a3      	strh	r3, [r4, #12]
 8005976:	e9c4 0104 	strd	r0, r1, [r4, #16]
 800597a:	b91a      	cbnz	r2, 8005984 <__smakebuf_r+0x54>
 800597c:	4333      	orrs	r3, r6
 800597e:	81a3      	strh	r3, [r4, #12]
 8005980:	b002      	add	sp, #8
 8005982:	bd70      	pop	{r4, r5, r6, pc}
 8005984:	4628      	mov	r0, r5
 8005986:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800598a:	f001 faa3 	bl	8006ed4 <_isatty_r>
 800598e:	b1a0      	cbz	r0, 80059ba <__smakebuf_r+0x8a>
 8005990:	89a3      	ldrh	r3, [r4, #12]
 8005992:	f023 0303 	bic.w	r3, r3, #3
 8005996:	f043 0301 	orr.w	r3, r3, #1
 800599a:	b21b      	sxth	r3, r3
 800599c:	e7ee      	b.n	800597c <__smakebuf_r+0x4c>
 800599e:	059a      	lsls	r2, r3, #22
 80059a0:	d4ee      	bmi.n	8005980 <__smakebuf_r+0x50>
 80059a2:	f023 0303 	bic.w	r3, r3, #3
 80059a6:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80059aa:	f043 0302 	orr.w	r3, r3, #2
 80059ae:	2101      	movs	r1, #1
 80059b0:	81a3      	strh	r3, [r4, #12]
 80059b2:	6022      	str	r2, [r4, #0]
 80059b4:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80059b8:	e7e2      	b.n	8005980 <__smakebuf_r+0x50>
 80059ba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059be:	e7dd      	b.n	800597c <__smakebuf_r+0x4c>
 80059c0:	08005221 	.word	0x08005221

080059c4 <_malloc_r>:
 80059c4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80059c8:	f101 050b 	add.w	r5, r1, #11
 80059cc:	2d16      	cmp	r5, #22
 80059ce:	b083      	sub	sp, #12
 80059d0:	4606      	mov	r6, r0
 80059d2:	d823      	bhi.n	8005a1c <_malloc_r+0x58>
 80059d4:	2910      	cmp	r1, #16
 80059d6:	f200 80b9 	bhi.w	8005b4c <_malloc_r+0x188>
 80059da:	f000 fafb 	bl	8005fd4 <__malloc_lock>
 80059de:	2510      	movs	r5, #16
 80059e0:	2318      	movs	r3, #24
 80059e2:	2002      	movs	r0, #2
 80059e4:	4fc5      	ldr	r7, [pc, #788]	; (8005cfc <_malloc_r+0x338>)
 80059e6:	443b      	add	r3, r7
 80059e8:	f1a3 0208 	sub.w	r2, r3, #8
 80059ec:	685c      	ldr	r4, [r3, #4]
 80059ee:	4294      	cmp	r4, r2
 80059f0:	f000 8166 	beq.w	8005cc0 <_malloc_r+0x2fc>
 80059f4:	6863      	ldr	r3, [r4, #4]
 80059f6:	f023 0303 	bic.w	r3, r3, #3
 80059fa:	4423      	add	r3, r4
 80059fc:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005a00:	685a      	ldr	r2, [r3, #4]
 8005a02:	60e9      	str	r1, [r5, #12]
 8005a04:	f042 0201 	orr.w	r2, r2, #1
 8005a08:	608d      	str	r5, [r1, #8]
 8005a0a:	4630      	mov	r0, r6
 8005a0c:	605a      	str	r2, [r3, #4]
 8005a0e:	f000 fae7 	bl	8005fe0 <__malloc_unlock>
 8005a12:	3408      	adds	r4, #8
 8005a14:	4620      	mov	r0, r4
 8005a16:	b003      	add	sp, #12
 8005a18:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a1c:	f035 0507 	bics.w	r5, r5, #7
 8005a20:	f100 8094 	bmi.w	8005b4c <_malloc_r+0x188>
 8005a24:	42a9      	cmp	r1, r5
 8005a26:	f200 8091 	bhi.w	8005b4c <_malloc_r+0x188>
 8005a2a:	f000 fad3 	bl	8005fd4 <__malloc_lock>
 8005a2e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005a32:	f0c0 8183 	bcc.w	8005d3c <_malloc_r+0x378>
 8005a36:	0a6b      	lsrs	r3, r5, #9
 8005a38:	f000 808f 	beq.w	8005b5a <_malloc_r+0x196>
 8005a3c:	2b04      	cmp	r3, #4
 8005a3e:	f200 8146 	bhi.w	8005cce <_malloc_r+0x30a>
 8005a42:	09ab      	lsrs	r3, r5, #6
 8005a44:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005a48:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005a4c:	00c3      	lsls	r3, r0, #3
 8005a4e:	4fab      	ldr	r7, [pc, #684]	; (8005cfc <_malloc_r+0x338>)
 8005a50:	443b      	add	r3, r7
 8005a52:	f1a3 0108 	sub.w	r1, r3, #8
 8005a56:	685c      	ldr	r4, [r3, #4]
 8005a58:	42a1      	cmp	r1, r4
 8005a5a:	d106      	bne.n	8005a6a <_malloc_r+0xa6>
 8005a5c:	e00c      	b.n	8005a78 <_malloc_r+0xb4>
 8005a5e:	2a00      	cmp	r2, #0
 8005a60:	f280 811d 	bge.w	8005c9e <_malloc_r+0x2da>
 8005a64:	68e4      	ldr	r4, [r4, #12]
 8005a66:	42a1      	cmp	r1, r4
 8005a68:	d006      	beq.n	8005a78 <_malloc_r+0xb4>
 8005a6a:	6863      	ldr	r3, [r4, #4]
 8005a6c:	f023 0303 	bic.w	r3, r3, #3
 8005a70:	1b5a      	subs	r2, r3, r5
 8005a72:	2a0f      	cmp	r2, #15
 8005a74:	ddf3      	ble.n	8005a5e <_malloc_r+0x9a>
 8005a76:	4660      	mov	r0, ip
 8005a78:	693c      	ldr	r4, [r7, #16]
 8005a7a:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005d10 <_malloc_r+0x34c>
 8005a7e:	4564      	cmp	r4, ip
 8005a80:	d071      	beq.n	8005b66 <_malloc_r+0x1a2>
 8005a82:	6863      	ldr	r3, [r4, #4]
 8005a84:	f023 0303 	bic.w	r3, r3, #3
 8005a88:	1b5a      	subs	r2, r3, r5
 8005a8a:	2a0f      	cmp	r2, #15
 8005a8c:	f300 8144 	bgt.w	8005d18 <_malloc_r+0x354>
 8005a90:	2a00      	cmp	r2, #0
 8005a92:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005a96:	f280 8126 	bge.w	8005ce6 <_malloc_r+0x322>
 8005a9a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005a9e:	f080 8169 	bcs.w	8005d74 <_malloc_r+0x3b0>
 8005aa2:	08db      	lsrs	r3, r3, #3
 8005aa4:	1c59      	adds	r1, r3, #1
 8005aa6:	687a      	ldr	r2, [r7, #4]
 8005aa8:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005aac:	f8c4 8008 	str.w	r8, [r4, #8]
 8005ab0:	f04f 0e01 	mov.w	lr, #1
 8005ab4:	109b      	asrs	r3, r3, #2
 8005ab6:	fa0e f303 	lsl.w	r3, lr, r3
 8005aba:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005abe:	4313      	orrs	r3, r2
 8005ac0:	f1ae 0208 	sub.w	r2, lr, #8
 8005ac4:	60e2      	str	r2, [r4, #12]
 8005ac6:	607b      	str	r3, [r7, #4]
 8005ac8:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005acc:	f8c8 400c 	str.w	r4, [r8, #12]
 8005ad0:	1082      	asrs	r2, r0, #2
 8005ad2:	2401      	movs	r4, #1
 8005ad4:	4094      	lsls	r4, r2
 8005ad6:	429c      	cmp	r4, r3
 8005ad8:	d84b      	bhi.n	8005b72 <_malloc_r+0x1ae>
 8005ada:	421c      	tst	r4, r3
 8005adc:	d106      	bne.n	8005aec <_malloc_r+0x128>
 8005ade:	f020 0003 	bic.w	r0, r0, #3
 8005ae2:	0064      	lsls	r4, r4, #1
 8005ae4:	421c      	tst	r4, r3
 8005ae6:	f100 0004 	add.w	r0, r0, #4
 8005aea:	d0fa      	beq.n	8005ae2 <_malloc_r+0x11e>
 8005aec:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005af0:	46ce      	mov	lr, r9
 8005af2:	4680      	mov	r8, r0
 8005af4:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005af8:	459e      	cmp	lr, r3
 8005afa:	d107      	bne.n	8005b0c <_malloc_r+0x148>
 8005afc:	e122      	b.n	8005d44 <_malloc_r+0x380>
 8005afe:	2a00      	cmp	r2, #0
 8005b00:	f280 8129 	bge.w	8005d56 <_malloc_r+0x392>
 8005b04:	68db      	ldr	r3, [r3, #12]
 8005b06:	459e      	cmp	lr, r3
 8005b08:	f000 811c 	beq.w	8005d44 <_malloc_r+0x380>
 8005b0c:	6859      	ldr	r1, [r3, #4]
 8005b0e:	f021 0103 	bic.w	r1, r1, #3
 8005b12:	1b4a      	subs	r2, r1, r5
 8005b14:	2a0f      	cmp	r2, #15
 8005b16:	ddf2      	ble.n	8005afe <_malloc_r+0x13a>
 8005b18:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005b1c:	195c      	adds	r4, r3, r5
 8005b1e:	f045 0501 	orr.w	r5, r5, #1
 8005b22:	605d      	str	r5, [r3, #4]
 8005b24:	f042 0501 	orr.w	r5, r2, #1
 8005b28:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005b2c:	4630      	mov	r0, r6
 8005b2e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005b32:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005b36:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005b3a:	6065      	str	r5, [r4, #4]
 8005b3c:	505a      	str	r2, [r3, r1]
 8005b3e:	9301      	str	r3, [sp, #4]
 8005b40:	f000 fa4e 	bl	8005fe0 <__malloc_unlock>
 8005b44:	9b01      	ldr	r3, [sp, #4]
 8005b46:	f103 0408 	add.w	r4, r3, #8
 8005b4a:	e763      	b.n	8005a14 <_malloc_r+0x50>
 8005b4c:	2400      	movs	r4, #0
 8005b4e:	230c      	movs	r3, #12
 8005b50:	4620      	mov	r0, r4
 8005b52:	6033      	str	r3, [r6, #0]
 8005b54:	b003      	add	sp, #12
 8005b56:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b5a:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005b5e:	2040      	movs	r0, #64	; 0x40
 8005b60:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005b64:	e773      	b.n	8005a4e <_malloc_r+0x8a>
 8005b66:	687b      	ldr	r3, [r7, #4]
 8005b68:	1082      	asrs	r2, r0, #2
 8005b6a:	2401      	movs	r4, #1
 8005b6c:	4094      	lsls	r4, r2
 8005b6e:	429c      	cmp	r4, r3
 8005b70:	d9b3      	bls.n	8005ada <_malloc_r+0x116>
 8005b72:	68bc      	ldr	r4, [r7, #8]
 8005b74:	6863      	ldr	r3, [r4, #4]
 8005b76:	f023 0903 	bic.w	r9, r3, #3
 8005b7a:	45a9      	cmp	r9, r5
 8005b7c:	d303      	bcc.n	8005b86 <_malloc_r+0x1c2>
 8005b7e:	eba9 0305 	sub.w	r3, r9, r5
 8005b82:	2b0f      	cmp	r3, #15
 8005b84:	dc7b      	bgt.n	8005c7e <_malloc_r+0x2ba>
 8005b86:	4b5e      	ldr	r3, [pc, #376]	; (8005d00 <_malloc_r+0x33c>)
 8005b88:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005d14 <_malloc_r+0x350>
 8005b8c:	681a      	ldr	r2, [r3, #0]
 8005b8e:	f8da 3000 	ldr.w	r3, [sl]
 8005b92:	3301      	adds	r3, #1
 8005b94:	eb05 0802 	add.w	r8, r5, r2
 8005b98:	f000 8148 	beq.w	8005e2c <_malloc_r+0x468>
 8005b9c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005ba0:	f108 080f 	add.w	r8, r8, #15
 8005ba4:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005ba8:	f028 080f 	bic.w	r8, r8, #15
 8005bac:	4641      	mov	r1, r8
 8005bae:	4630      	mov	r0, r6
 8005bb0:	f000 ff08 	bl	80069c4 <_sbrk_r>
 8005bb4:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005bb8:	4683      	mov	fp, r0
 8005bba:	f000 8104 	beq.w	8005dc6 <_malloc_r+0x402>
 8005bbe:	eb04 0009 	add.w	r0, r4, r9
 8005bc2:	4558      	cmp	r0, fp
 8005bc4:	f200 80fd 	bhi.w	8005dc2 <_malloc_r+0x3fe>
 8005bc8:	4a4e      	ldr	r2, [pc, #312]	; (8005d04 <_malloc_r+0x340>)
 8005bca:	6813      	ldr	r3, [r2, #0]
 8005bcc:	4443      	add	r3, r8
 8005bce:	6013      	str	r3, [r2, #0]
 8005bd0:	f000 814d 	beq.w	8005e6e <_malloc_r+0x4aa>
 8005bd4:	f8da 1000 	ldr.w	r1, [sl]
 8005bd8:	3101      	adds	r1, #1
 8005bda:	bf1b      	ittet	ne
 8005bdc:	ebab 0000 	subne.w	r0, fp, r0
 8005be0:	181b      	addne	r3, r3, r0
 8005be2:	f8ca b000 	streq.w	fp, [sl]
 8005be6:	6013      	strne	r3, [r2, #0]
 8005be8:	f01b 0307 	ands.w	r3, fp, #7
 8005bec:	f000 8134 	beq.w	8005e58 <_malloc_r+0x494>
 8005bf0:	f1c3 0108 	rsb	r1, r3, #8
 8005bf4:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005bf8:	448b      	add	fp, r1
 8005bfa:	3308      	adds	r3, #8
 8005bfc:	44d8      	add	r8, fp
 8005bfe:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005c02:	eba3 0808 	sub.w	r8, r3, r8
 8005c06:	4641      	mov	r1, r8
 8005c08:	4630      	mov	r0, r6
 8005c0a:	9201      	str	r2, [sp, #4]
 8005c0c:	f000 feda 	bl	80069c4 <_sbrk_r>
 8005c10:	1c43      	adds	r3, r0, #1
 8005c12:	9a01      	ldr	r2, [sp, #4]
 8005c14:	f000 8146 	beq.w	8005ea4 <_malloc_r+0x4e0>
 8005c18:	eba0 010b 	sub.w	r1, r0, fp
 8005c1c:	4441      	add	r1, r8
 8005c1e:	f041 0101 	orr.w	r1, r1, #1
 8005c22:	6813      	ldr	r3, [r2, #0]
 8005c24:	f8c7 b008 	str.w	fp, [r7, #8]
 8005c28:	4443      	add	r3, r8
 8005c2a:	42bc      	cmp	r4, r7
 8005c2c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005c30:	6013      	str	r3, [r2, #0]
 8005c32:	d015      	beq.n	8005c60 <_malloc_r+0x29c>
 8005c34:	f1b9 0f0f 	cmp.w	r9, #15
 8005c38:	f240 8130 	bls.w	8005e9c <_malloc_r+0x4d8>
 8005c3c:	6860      	ldr	r0, [r4, #4]
 8005c3e:	f1a9 010c 	sub.w	r1, r9, #12
 8005c42:	f021 0107 	bic.w	r1, r1, #7
 8005c46:	f000 0001 	and.w	r0, r0, #1
 8005c4a:	eb04 0c01 	add.w	ip, r4, r1
 8005c4e:	4308      	orrs	r0, r1
 8005c50:	f04f 0e05 	mov.w	lr, #5
 8005c54:	290f      	cmp	r1, #15
 8005c56:	6060      	str	r0, [r4, #4]
 8005c58:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005c5c:	f200 813a 	bhi.w	8005ed4 <_malloc_r+0x510>
 8005c60:	4a29      	ldr	r2, [pc, #164]	; (8005d08 <_malloc_r+0x344>)
 8005c62:	482a      	ldr	r0, [pc, #168]	; (8005d0c <_malloc_r+0x348>)
 8005c64:	6811      	ldr	r1, [r2, #0]
 8005c66:	68bc      	ldr	r4, [r7, #8]
 8005c68:	428b      	cmp	r3, r1
 8005c6a:	6801      	ldr	r1, [r0, #0]
 8005c6c:	bf88      	it	hi
 8005c6e:	6013      	strhi	r3, [r2, #0]
 8005c70:	6862      	ldr	r2, [r4, #4]
 8005c72:	428b      	cmp	r3, r1
 8005c74:	f022 0203 	bic.w	r2, r2, #3
 8005c78:	bf88      	it	hi
 8005c7a:	6003      	strhi	r3, [r0, #0]
 8005c7c:	e0a7      	b.n	8005dce <_malloc_r+0x40a>
 8005c7e:	1962      	adds	r2, r4, r5
 8005c80:	f043 0301 	orr.w	r3, r3, #1
 8005c84:	f045 0501 	orr.w	r5, r5, #1
 8005c88:	6065      	str	r5, [r4, #4]
 8005c8a:	4630      	mov	r0, r6
 8005c8c:	60ba      	str	r2, [r7, #8]
 8005c8e:	6053      	str	r3, [r2, #4]
 8005c90:	f000 f9a6 	bl	8005fe0 <__malloc_unlock>
 8005c94:	3408      	adds	r4, #8
 8005c96:	4620      	mov	r0, r4
 8005c98:	b003      	add	sp, #12
 8005c9a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c9e:	4423      	add	r3, r4
 8005ca0:	68e1      	ldr	r1, [r4, #12]
 8005ca2:	685a      	ldr	r2, [r3, #4]
 8005ca4:	68a5      	ldr	r5, [r4, #8]
 8005ca6:	f042 0201 	orr.w	r2, r2, #1
 8005caa:	60e9      	str	r1, [r5, #12]
 8005cac:	4630      	mov	r0, r6
 8005cae:	608d      	str	r5, [r1, #8]
 8005cb0:	605a      	str	r2, [r3, #4]
 8005cb2:	f000 f995 	bl	8005fe0 <__malloc_unlock>
 8005cb6:	3408      	adds	r4, #8
 8005cb8:	4620      	mov	r0, r4
 8005cba:	b003      	add	sp, #12
 8005cbc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005cc0:	68dc      	ldr	r4, [r3, #12]
 8005cc2:	42a3      	cmp	r3, r4
 8005cc4:	bf08      	it	eq
 8005cc6:	3002      	addeq	r0, #2
 8005cc8:	f43f aed6 	beq.w	8005a78 <_malloc_r+0xb4>
 8005ccc:	e692      	b.n	80059f4 <_malloc_r+0x30>
 8005cce:	2b14      	cmp	r3, #20
 8005cd0:	d971      	bls.n	8005db6 <_malloc_r+0x3f2>
 8005cd2:	2b54      	cmp	r3, #84	; 0x54
 8005cd4:	f200 80ad 	bhi.w	8005e32 <_malloc_r+0x46e>
 8005cd8:	0b2b      	lsrs	r3, r5, #12
 8005cda:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005cde:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005ce2:	00c3      	lsls	r3, r0, #3
 8005ce4:	e6b3      	b.n	8005a4e <_malloc_r+0x8a>
 8005ce6:	4423      	add	r3, r4
 8005ce8:	4630      	mov	r0, r6
 8005cea:	685a      	ldr	r2, [r3, #4]
 8005cec:	f042 0201 	orr.w	r2, r2, #1
 8005cf0:	605a      	str	r2, [r3, #4]
 8005cf2:	3408      	adds	r4, #8
 8005cf4:	f000 f974 	bl	8005fe0 <__malloc_unlock>
 8005cf8:	e68c      	b.n	8005a14 <_malloc_r+0x50>
 8005cfa:	bf00      	nop
 8005cfc:	2000044c 	.word	0x2000044c
 8005d00:	20000aa0 	.word	0x20000aa0
 8005d04:	20000a70 	.word	0x20000a70
 8005d08:	20000a98 	.word	0x20000a98
 8005d0c:	20000a9c 	.word	0x20000a9c
 8005d10:	20000454 	.word	0x20000454
 8005d14:	20000854 	.word	0x20000854
 8005d18:	1961      	adds	r1, r4, r5
 8005d1a:	f045 0e01 	orr.w	lr, r5, #1
 8005d1e:	f042 0501 	orr.w	r5, r2, #1
 8005d22:	f8c4 e004 	str.w	lr, [r4, #4]
 8005d26:	4630      	mov	r0, r6
 8005d28:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005d2c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005d30:	604d      	str	r5, [r1, #4]
 8005d32:	50e2      	str	r2, [r4, r3]
 8005d34:	f000 f954 	bl	8005fe0 <__malloc_unlock>
 8005d38:	3408      	adds	r4, #8
 8005d3a:	e66b      	b.n	8005a14 <_malloc_r+0x50>
 8005d3c:	08e8      	lsrs	r0, r5, #3
 8005d3e:	f105 0308 	add.w	r3, r5, #8
 8005d42:	e64f      	b.n	80059e4 <_malloc_r+0x20>
 8005d44:	f108 0801 	add.w	r8, r8, #1
 8005d48:	f018 0f03 	tst.w	r8, #3
 8005d4c:	f10e 0e08 	add.w	lr, lr, #8
 8005d50:	f47f aed0 	bne.w	8005af4 <_malloc_r+0x130>
 8005d54:	e052      	b.n	8005dfc <_malloc_r+0x438>
 8005d56:	4419      	add	r1, r3
 8005d58:	461c      	mov	r4, r3
 8005d5a:	684a      	ldr	r2, [r1, #4]
 8005d5c:	68db      	ldr	r3, [r3, #12]
 8005d5e:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005d62:	f042 0201 	orr.w	r2, r2, #1
 8005d66:	604a      	str	r2, [r1, #4]
 8005d68:	4630      	mov	r0, r6
 8005d6a:	60eb      	str	r3, [r5, #12]
 8005d6c:	609d      	str	r5, [r3, #8]
 8005d6e:	f000 f937 	bl	8005fe0 <__malloc_unlock>
 8005d72:	e64f      	b.n	8005a14 <_malloc_r+0x50>
 8005d74:	0a5a      	lsrs	r2, r3, #9
 8005d76:	2a04      	cmp	r2, #4
 8005d78:	d935      	bls.n	8005de6 <_malloc_r+0x422>
 8005d7a:	2a14      	cmp	r2, #20
 8005d7c:	d86f      	bhi.n	8005e5e <_malloc_r+0x49a>
 8005d7e:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005d82:	00c9      	lsls	r1, r1, #3
 8005d84:	325b      	adds	r2, #91	; 0x5b
 8005d86:	eb07 0e01 	add.w	lr, r7, r1
 8005d8a:	5879      	ldr	r1, [r7, r1]
 8005d8c:	f1ae 0e08 	sub.w	lr, lr, #8
 8005d90:	458e      	cmp	lr, r1
 8005d92:	d058      	beq.n	8005e46 <_malloc_r+0x482>
 8005d94:	684a      	ldr	r2, [r1, #4]
 8005d96:	f022 0203 	bic.w	r2, r2, #3
 8005d9a:	429a      	cmp	r2, r3
 8005d9c:	d902      	bls.n	8005da4 <_malloc_r+0x3e0>
 8005d9e:	6889      	ldr	r1, [r1, #8]
 8005da0:	458e      	cmp	lr, r1
 8005da2:	d1f7      	bne.n	8005d94 <_malloc_r+0x3d0>
 8005da4:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005da8:	687b      	ldr	r3, [r7, #4]
 8005daa:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005dae:	f8ce 4008 	str.w	r4, [lr, #8]
 8005db2:	60cc      	str	r4, [r1, #12]
 8005db4:	e68c      	b.n	8005ad0 <_malloc_r+0x10c>
 8005db6:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005dba:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005dbe:	00c3      	lsls	r3, r0, #3
 8005dc0:	e645      	b.n	8005a4e <_malloc_r+0x8a>
 8005dc2:	42bc      	cmp	r4, r7
 8005dc4:	d072      	beq.n	8005eac <_malloc_r+0x4e8>
 8005dc6:	68bc      	ldr	r4, [r7, #8]
 8005dc8:	6862      	ldr	r2, [r4, #4]
 8005dca:	f022 0203 	bic.w	r2, r2, #3
 8005dce:	4295      	cmp	r5, r2
 8005dd0:	eba2 0305 	sub.w	r3, r2, r5
 8005dd4:	d802      	bhi.n	8005ddc <_malloc_r+0x418>
 8005dd6:	2b0f      	cmp	r3, #15
 8005dd8:	f73f af51 	bgt.w	8005c7e <_malloc_r+0x2ba>
 8005ddc:	4630      	mov	r0, r6
 8005dde:	f000 f8ff 	bl	8005fe0 <__malloc_unlock>
 8005de2:	2400      	movs	r4, #0
 8005de4:	e616      	b.n	8005a14 <_malloc_r+0x50>
 8005de6:	099a      	lsrs	r2, r3, #6
 8005de8:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005dec:	00c9      	lsls	r1, r1, #3
 8005dee:	3238      	adds	r2, #56	; 0x38
 8005df0:	e7c9      	b.n	8005d86 <_malloc_r+0x3c2>
 8005df2:	f8d9 9000 	ldr.w	r9, [r9]
 8005df6:	4599      	cmp	r9, r3
 8005df8:	f040 8083 	bne.w	8005f02 <_malloc_r+0x53e>
 8005dfc:	f010 0f03 	tst.w	r0, #3
 8005e00:	f1a9 0308 	sub.w	r3, r9, #8
 8005e04:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005e08:	d1f3      	bne.n	8005df2 <_malloc_r+0x42e>
 8005e0a:	687b      	ldr	r3, [r7, #4]
 8005e0c:	ea23 0304 	bic.w	r3, r3, r4
 8005e10:	607b      	str	r3, [r7, #4]
 8005e12:	0064      	lsls	r4, r4, #1
 8005e14:	429c      	cmp	r4, r3
 8005e16:	f63f aeac 	bhi.w	8005b72 <_malloc_r+0x1ae>
 8005e1a:	b91c      	cbnz	r4, 8005e24 <_malloc_r+0x460>
 8005e1c:	e6a9      	b.n	8005b72 <_malloc_r+0x1ae>
 8005e1e:	0064      	lsls	r4, r4, #1
 8005e20:	f108 0804 	add.w	r8, r8, #4
 8005e24:	421c      	tst	r4, r3
 8005e26:	d0fa      	beq.n	8005e1e <_malloc_r+0x45a>
 8005e28:	4640      	mov	r0, r8
 8005e2a:	e65f      	b.n	8005aec <_malloc_r+0x128>
 8005e2c:	f108 0810 	add.w	r8, r8, #16
 8005e30:	e6bc      	b.n	8005bac <_malloc_r+0x1e8>
 8005e32:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005e36:	d826      	bhi.n	8005e86 <_malloc_r+0x4c2>
 8005e38:	0beb      	lsrs	r3, r5, #15
 8005e3a:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005e3e:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005e42:	00c3      	lsls	r3, r0, #3
 8005e44:	e603      	b.n	8005a4e <_malloc_r+0x8a>
 8005e46:	687b      	ldr	r3, [r7, #4]
 8005e48:	1092      	asrs	r2, r2, #2
 8005e4a:	f04f 0801 	mov.w	r8, #1
 8005e4e:	fa08 f202 	lsl.w	r2, r8, r2
 8005e52:	4313      	orrs	r3, r2
 8005e54:	607b      	str	r3, [r7, #4]
 8005e56:	e7a8      	b.n	8005daa <_malloc_r+0x3e6>
 8005e58:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005e5c:	e6ce      	b.n	8005bfc <_malloc_r+0x238>
 8005e5e:	2a54      	cmp	r2, #84	; 0x54
 8005e60:	d829      	bhi.n	8005eb6 <_malloc_r+0x4f2>
 8005e62:	0b1a      	lsrs	r2, r3, #12
 8005e64:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005e68:	00c9      	lsls	r1, r1, #3
 8005e6a:	326e      	adds	r2, #110	; 0x6e
 8005e6c:	e78b      	b.n	8005d86 <_malloc_r+0x3c2>
 8005e6e:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005e72:	2900      	cmp	r1, #0
 8005e74:	f47f aeae 	bne.w	8005bd4 <_malloc_r+0x210>
 8005e78:	eb09 0208 	add.w	r2, r9, r8
 8005e7c:	68b9      	ldr	r1, [r7, #8]
 8005e7e:	f042 0201 	orr.w	r2, r2, #1
 8005e82:	604a      	str	r2, [r1, #4]
 8005e84:	e6ec      	b.n	8005c60 <_malloc_r+0x29c>
 8005e86:	f240 5254 	movw	r2, #1364	; 0x554
 8005e8a:	4293      	cmp	r3, r2
 8005e8c:	d81c      	bhi.n	8005ec8 <_malloc_r+0x504>
 8005e8e:	0cab      	lsrs	r3, r5, #18
 8005e90:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005e94:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005e98:	00c3      	lsls	r3, r0, #3
 8005e9a:	e5d8      	b.n	8005a4e <_malloc_r+0x8a>
 8005e9c:	2301      	movs	r3, #1
 8005e9e:	f8cb 3004 	str.w	r3, [fp, #4]
 8005ea2:	e79b      	b.n	8005ddc <_malloc_r+0x418>
 8005ea4:	2101      	movs	r1, #1
 8005ea6:	f04f 0800 	mov.w	r8, #0
 8005eaa:	e6ba      	b.n	8005c22 <_malloc_r+0x25e>
 8005eac:	4a16      	ldr	r2, [pc, #88]	; (8005f08 <_malloc_r+0x544>)
 8005eae:	6813      	ldr	r3, [r2, #0]
 8005eb0:	4443      	add	r3, r8
 8005eb2:	6013      	str	r3, [r2, #0]
 8005eb4:	e68e      	b.n	8005bd4 <_malloc_r+0x210>
 8005eb6:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005eba:	d814      	bhi.n	8005ee6 <_malloc_r+0x522>
 8005ebc:	0bda      	lsrs	r2, r3, #15
 8005ebe:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005ec2:	00c9      	lsls	r1, r1, #3
 8005ec4:	3277      	adds	r2, #119	; 0x77
 8005ec6:	e75e      	b.n	8005d86 <_malloc_r+0x3c2>
 8005ec8:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005ecc:	207f      	movs	r0, #127	; 0x7f
 8005ece:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005ed2:	e5bc      	b.n	8005a4e <_malloc_r+0x8a>
 8005ed4:	f104 0108 	add.w	r1, r4, #8
 8005ed8:	4630      	mov	r0, r6
 8005eda:	9201      	str	r2, [sp, #4]
 8005edc:	f7ff fa48 	bl	8005370 <_free_r>
 8005ee0:	9a01      	ldr	r2, [sp, #4]
 8005ee2:	6813      	ldr	r3, [r2, #0]
 8005ee4:	e6bc      	b.n	8005c60 <_malloc_r+0x29c>
 8005ee6:	f240 5154 	movw	r1, #1364	; 0x554
 8005eea:	428a      	cmp	r2, r1
 8005eec:	d805      	bhi.n	8005efa <_malloc_r+0x536>
 8005eee:	0c9a      	lsrs	r2, r3, #18
 8005ef0:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005ef4:	00c9      	lsls	r1, r1, #3
 8005ef6:	327c      	adds	r2, #124	; 0x7c
 8005ef8:	e745      	b.n	8005d86 <_malloc_r+0x3c2>
 8005efa:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005efe:	227e      	movs	r2, #126	; 0x7e
 8005f00:	e741      	b.n	8005d86 <_malloc_r+0x3c2>
 8005f02:	687b      	ldr	r3, [r7, #4]
 8005f04:	e785      	b.n	8005e12 <_malloc_r+0x44e>
 8005f06:	bf00      	nop
 8005f08:	20000a70 	.word	0x20000a70

08005f0c <memmove>:
 8005f0c:	4288      	cmp	r0, r1
 8005f0e:	b4f0      	push	{r4, r5, r6, r7}
 8005f10:	d90d      	bls.n	8005f2e <memmove+0x22>
 8005f12:	188b      	adds	r3, r1, r2
 8005f14:	4283      	cmp	r3, r0
 8005f16:	d90a      	bls.n	8005f2e <memmove+0x22>
 8005f18:	1884      	adds	r4, r0, r2
 8005f1a:	b132      	cbz	r2, 8005f2a <memmove+0x1e>
 8005f1c:	4622      	mov	r2, r4
 8005f1e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8005f22:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8005f26:	4299      	cmp	r1, r3
 8005f28:	d1f9      	bne.n	8005f1e <memmove+0x12>
 8005f2a:	bcf0      	pop	{r4, r5, r6, r7}
 8005f2c:	4770      	bx	lr
 8005f2e:	2a0f      	cmp	r2, #15
 8005f30:	d949      	bls.n	8005fc6 <memmove+0xba>
 8005f32:	ea40 0301 	orr.w	r3, r0, r1
 8005f36:	079b      	lsls	r3, r3, #30
 8005f38:	d147      	bne.n	8005fca <memmove+0xbe>
 8005f3a:	f1a2 0310 	sub.w	r3, r2, #16
 8005f3e:	091b      	lsrs	r3, r3, #4
 8005f40:	f101 0720 	add.w	r7, r1, #32
 8005f44:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8005f48:	f101 0410 	add.w	r4, r1, #16
 8005f4c:	f100 0510 	add.w	r5, r0, #16
 8005f50:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8005f54:	f845 6c10 	str.w	r6, [r5, #-16]
 8005f58:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8005f5c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8005f60:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8005f64:	f845 6c08 	str.w	r6, [r5, #-8]
 8005f68:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8005f6c:	f845 6c04 	str.w	r6, [r5, #-4]
 8005f70:	3410      	adds	r4, #16
 8005f72:	42bc      	cmp	r4, r7
 8005f74:	f105 0510 	add.w	r5, r5, #16
 8005f78:	d1ea      	bne.n	8005f50 <memmove+0x44>
 8005f7a:	3301      	adds	r3, #1
 8005f7c:	f002 050f 	and.w	r5, r2, #15
 8005f80:	011b      	lsls	r3, r3, #4
 8005f82:	2d03      	cmp	r5, #3
 8005f84:	4419      	add	r1, r3
 8005f86:	4403      	add	r3, r0
 8005f88:	d921      	bls.n	8005fce <memmove+0xc2>
 8005f8a:	1f1f      	subs	r7, r3, #4
 8005f8c:	460e      	mov	r6, r1
 8005f8e:	462c      	mov	r4, r5
 8005f90:	3c04      	subs	r4, #4
 8005f92:	f856 cb04 	ldr.w	ip, [r6], #4
 8005f96:	f847 cf04 	str.w	ip, [r7, #4]!
 8005f9a:	2c03      	cmp	r4, #3
 8005f9c:	d8f8      	bhi.n	8005f90 <memmove+0x84>
 8005f9e:	1f2c      	subs	r4, r5, #4
 8005fa0:	f024 0403 	bic.w	r4, r4, #3
 8005fa4:	3404      	adds	r4, #4
 8005fa6:	4423      	add	r3, r4
 8005fa8:	4421      	add	r1, r4
 8005faa:	f002 0203 	and.w	r2, r2, #3
 8005fae:	2a00      	cmp	r2, #0
 8005fb0:	d0bb      	beq.n	8005f2a <memmove+0x1e>
 8005fb2:	3b01      	subs	r3, #1
 8005fb4:	440a      	add	r2, r1
 8005fb6:	f811 4b01 	ldrb.w	r4, [r1], #1
 8005fba:	f803 4f01 	strb.w	r4, [r3, #1]!
 8005fbe:	4291      	cmp	r1, r2
 8005fc0:	d1f9      	bne.n	8005fb6 <memmove+0xaa>
 8005fc2:	bcf0      	pop	{r4, r5, r6, r7}
 8005fc4:	4770      	bx	lr
 8005fc6:	4603      	mov	r3, r0
 8005fc8:	e7f1      	b.n	8005fae <memmove+0xa2>
 8005fca:	4603      	mov	r3, r0
 8005fcc:	e7f1      	b.n	8005fb2 <memmove+0xa6>
 8005fce:	462a      	mov	r2, r5
 8005fd0:	e7ed      	b.n	8005fae <memmove+0xa2>
 8005fd2:	bf00      	nop

08005fd4 <__malloc_lock>:
 8005fd4:	4801      	ldr	r0, [pc, #4]	; (8005fdc <__malloc_lock+0x8>)
 8005fd6:	f7ff bc79 	b.w	80058cc <__retarget_lock_acquire_recursive>
 8005fda:	bf00      	nop
 8005fdc:	20000afc 	.word	0x20000afc

08005fe0 <__malloc_unlock>:
 8005fe0:	4801      	ldr	r0, [pc, #4]	; (8005fe8 <__malloc_unlock+0x8>)
 8005fe2:	f7ff bc75 	b.w	80058d0 <__retarget_lock_release_recursive>
 8005fe6:	bf00      	nop
 8005fe8:	20000afc 	.word	0x20000afc

08005fec <_Balloc>:
 8005fec:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8005fee:	b570      	push	{r4, r5, r6, lr}
 8005ff0:	4605      	mov	r5, r0
 8005ff2:	460c      	mov	r4, r1
 8005ff4:	b14b      	cbz	r3, 800600a <_Balloc+0x1e>
 8005ff6:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8005ffa:	b180      	cbz	r0, 800601e <_Balloc+0x32>
 8005ffc:	6802      	ldr	r2, [r0, #0]
 8005ffe:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006002:	2300      	movs	r3, #0
 8006004:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006008:	bd70      	pop	{r4, r5, r6, pc}
 800600a:	2221      	movs	r2, #33	; 0x21
 800600c:	2104      	movs	r1, #4
 800600e:	f000 fe1d 	bl	8006c4c <_calloc_r>
 8006012:	4603      	mov	r3, r0
 8006014:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006016:	2800      	cmp	r0, #0
 8006018:	d1ed      	bne.n	8005ff6 <_Balloc+0xa>
 800601a:	2000      	movs	r0, #0
 800601c:	bd70      	pop	{r4, r5, r6, pc}
 800601e:	2101      	movs	r1, #1
 8006020:	fa01 f604 	lsl.w	r6, r1, r4
 8006024:	1d72      	adds	r2, r6, #5
 8006026:	4628      	mov	r0, r5
 8006028:	0092      	lsls	r2, r2, #2
 800602a:	f000 fe0f 	bl	8006c4c <_calloc_r>
 800602e:	2800      	cmp	r0, #0
 8006030:	d0f3      	beq.n	800601a <_Balloc+0x2e>
 8006032:	e9c0 4601 	strd	r4, r6, [r0, #4]
 8006036:	e7e4      	b.n	8006002 <_Balloc+0x16>

08006038 <_Bfree>:
 8006038:	b131      	cbz	r1, 8006048 <_Bfree+0x10>
 800603a:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800603c:	684a      	ldr	r2, [r1, #4]
 800603e:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 8006042:	6008      	str	r0, [r1, #0]
 8006044:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006048:	4770      	bx	lr
 800604a:	bf00      	nop

0800604c <__multadd>:
 800604c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800604e:	690c      	ldr	r4, [r1, #16]
 8006050:	b083      	sub	sp, #12
 8006052:	460d      	mov	r5, r1
 8006054:	4606      	mov	r6, r0
 8006056:	f101 0c14 	add.w	ip, r1, #20
 800605a:	2700      	movs	r7, #0
 800605c:	f8dc 0000 	ldr.w	r0, [ip]
 8006060:	b281      	uxth	r1, r0
 8006062:	fb02 3301 	mla	r3, r2, r1, r3
 8006066:	0c01      	lsrs	r1, r0, #16
 8006068:	0c18      	lsrs	r0, r3, #16
 800606a:	fb02 0101 	mla	r1, r2, r1, r0
 800606e:	b29b      	uxth	r3, r3
 8006070:	3701      	adds	r7, #1
 8006072:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 8006076:	42bc      	cmp	r4, r7
 8006078:	f84c 3b04 	str.w	r3, [ip], #4
 800607c:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006080:	dcec      	bgt.n	800605c <__multadd+0x10>
 8006082:	b13b      	cbz	r3, 8006094 <__multadd+0x48>
 8006084:	68aa      	ldr	r2, [r5, #8]
 8006086:	42a2      	cmp	r2, r4
 8006088:	dd07      	ble.n	800609a <__multadd+0x4e>
 800608a:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 800608e:	3401      	adds	r4, #1
 8006090:	6153      	str	r3, [r2, #20]
 8006092:	612c      	str	r4, [r5, #16]
 8006094:	4628      	mov	r0, r5
 8006096:	b003      	add	sp, #12
 8006098:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800609a:	6869      	ldr	r1, [r5, #4]
 800609c:	9301      	str	r3, [sp, #4]
 800609e:	3101      	adds	r1, #1
 80060a0:	4630      	mov	r0, r6
 80060a2:	f7ff ffa3 	bl	8005fec <_Balloc>
 80060a6:	692a      	ldr	r2, [r5, #16]
 80060a8:	3202      	adds	r2, #2
 80060aa:	f105 010c 	add.w	r1, r5, #12
 80060ae:	4607      	mov	r7, r0
 80060b0:	0092      	lsls	r2, r2, #2
 80060b2:	300c      	adds	r0, #12
 80060b4:	f7fa fa24 	bl	8000500 <memcpy>
 80060b8:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80060ba:	6869      	ldr	r1, [r5, #4]
 80060bc:	9b01      	ldr	r3, [sp, #4]
 80060be:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80060c2:	6028      	str	r0, [r5, #0]
 80060c4:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80060c8:	463d      	mov	r5, r7
 80060ca:	e7de      	b.n	800608a <__multadd+0x3e>

080060cc <__hi0bits>:
 80060cc:	0c02      	lsrs	r2, r0, #16
 80060ce:	0412      	lsls	r2, r2, #16
 80060d0:	4603      	mov	r3, r0
 80060d2:	b9c2      	cbnz	r2, 8006106 <__hi0bits+0x3a>
 80060d4:	0403      	lsls	r3, r0, #16
 80060d6:	2010      	movs	r0, #16
 80060d8:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80060dc:	bf04      	itt	eq
 80060de:	021b      	lsleq	r3, r3, #8
 80060e0:	3008      	addeq	r0, #8
 80060e2:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80060e6:	bf04      	itt	eq
 80060e8:	011b      	lsleq	r3, r3, #4
 80060ea:	3004      	addeq	r0, #4
 80060ec:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80060f0:	bf04      	itt	eq
 80060f2:	009b      	lsleq	r3, r3, #2
 80060f4:	3002      	addeq	r0, #2
 80060f6:	2b00      	cmp	r3, #0
 80060f8:	db04      	blt.n	8006104 <__hi0bits+0x38>
 80060fa:	005b      	lsls	r3, r3, #1
 80060fc:	d501      	bpl.n	8006102 <__hi0bits+0x36>
 80060fe:	3001      	adds	r0, #1
 8006100:	4770      	bx	lr
 8006102:	2020      	movs	r0, #32
 8006104:	4770      	bx	lr
 8006106:	2000      	movs	r0, #0
 8006108:	e7e6      	b.n	80060d8 <__hi0bits+0xc>
 800610a:	bf00      	nop

0800610c <__lo0bits>:
 800610c:	6803      	ldr	r3, [r0, #0]
 800610e:	f013 0207 	ands.w	r2, r3, #7
 8006112:	4601      	mov	r1, r0
 8006114:	d007      	beq.n	8006126 <__lo0bits+0x1a>
 8006116:	07da      	lsls	r2, r3, #31
 8006118:	d41f      	bmi.n	800615a <__lo0bits+0x4e>
 800611a:	0798      	lsls	r0, r3, #30
 800611c:	d51f      	bpl.n	800615e <__lo0bits+0x52>
 800611e:	085b      	lsrs	r3, r3, #1
 8006120:	600b      	str	r3, [r1, #0]
 8006122:	2001      	movs	r0, #1
 8006124:	4770      	bx	lr
 8006126:	b298      	uxth	r0, r3
 8006128:	b1a0      	cbz	r0, 8006154 <__lo0bits+0x48>
 800612a:	4610      	mov	r0, r2
 800612c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006130:	bf04      	itt	eq
 8006132:	0a1b      	lsreq	r3, r3, #8
 8006134:	3008      	addeq	r0, #8
 8006136:	071a      	lsls	r2, r3, #28
 8006138:	bf04      	itt	eq
 800613a:	091b      	lsreq	r3, r3, #4
 800613c:	3004      	addeq	r0, #4
 800613e:	079a      	lsls	r2, r3, #30
 8006140:	bf04      	itt	eq
 8006142:	089b      	lsreq	r3, r3, #2
 8006144:	3002      	addeq	r0, #2
 8006146:	07da      	lsls	r2, r3, #31
 8006148:	d402      	bmi.n	8006150 <__lo0bits+0x44>
 800614a:	085b      	lsrs	r3, r3, #1
 800614c:	d00b      	beq.n	8006166 <__lo0bits+0x5a>
 800614e:	3001      	adds	r0, #1
 8006150:	600b      	str	r3, [r1, #0]
 8006152:	4770      	bx	lr
 8006154:	0c1b      	lsrs	r3, r3, #16
 8006156:	2010      	movs	r0, #16
 8006158:	e7e8      	b.n	800612c <__lo0bits+0x20>
 800615a:	2000      	movs	r0, #0
 800615c:	4770      	bx	lr
 800615e:	089b      	lsrs	r3, r3, #2
 8006160:	600b      	str	r3, [r1, #0]
 8006162:	2002      	movs	r0, #2
 8006164:	4770      	bx	lr
 8006166:	2020      	movs	r0, #32
 8006168:	4770      	bx	lr
 800616a:	bf00      	nop

0800616c <__i2b>:
 800616c:	b510      	push	{r4, lr}
 800616e:	460c      	mov	r4, r1
 8006170:	2101      	movs	r1, #1
 8006172:	f7ff ff3b 	bl	8005fec <_Balloc>
 8006176:	2201      	movs	r2, #1
 8006178:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800617c:	bd10      	pop	{r4, pc}
 800617e:	bf00      	nop

08006180 <__multiply>:
 8006180:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006184:	690e      	ldr	r6, [r1, #16]
 8006186:	6914      	ldr	r4, [r2, #16]
 8006188:	42a6      	cmp	r6, r4
 800618a:	b083      	sub	sp, #12
 800618c:	460f      	mov	r7, r1
 800618e:	4615      	mov	r5, r2
 8006190:	da04      	bge.n	800619c <__multiply+0x1c>
 8006192:	4632      	mov	r2, r6
 8006194:	462f      	mov	r7, r5
 8006196:	4626      	mov	r6, r4
 8006198:	460d      	mov	r5, r1
 800619a:	4614      	mov	r4, r2
 800619c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80061a0:	eb06 0804 	add.w	r8, r6, r4
 80061a4:	4543      	cmp	r3, r8
 80061a6:	bfb8      	it	lt
 80061a8:	3101      	addlt	r1, #1
 80061aa:	f7ff ff1f 	bl	8005fec <_Balloc>
 80061ae:	f100 0914 	add.w	r9, r0, #20
 80061b2:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80061b6:	45f1      	cmp	r9, lr
 80061b8:	9000      	str	r0, [sp, #0]
 80061ba:	d205      	bcs.n	80061c8 <__multiply+0x48>
 80061bc:	464b      	mov	r3, r9
 80061be:	2200      	movs	r2, #0
 80061c0:	f843 2b04 	str.w	r2, [r3], #4
 80061c4:	459e      	cmp	lr, r3
 80061c6:	d8fb      	bhi.n	80061c0 <__multiply+0x40>
 80061c8:	f105 0a14 	add.w	sl, r5, #20
 80061cc:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80061d0:	f107 0314 	add.w	r3, r7, #20
 80061d4:	45a2      	cmp	sl, r4
 80061d6:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80061da:	d261      	bcs.n	80062a0 <__multiply+0x120>
 80061dc:	1b64      	subs	r4, r4, r5
 80061de:	3c15      	subs	r4, #21
 80061e0:	f024 0403 	bic.w	r4, r4, #3
 80061e4:	f8cd e004 	str.w	lr, [sp, #4]
 80061e8:	44a2      	add	sl, r4
 80061ea:	f105 0210 	add.w	r2, r5, #16
 80061ee:	469e      	mov	lr, r3
 80061f0:	e005      	b.n	80061fe <__multiply+0x7e>
 80061f2:	0c2d      	lsrs	r5, r5, #16
 80061f4:	d12b      	bne.n	800624e <__multiply+0xce>
 80061f6:	4592      	cmp	sl, r2
 80061f8:	f109 0904 	add.w	r9, r9, #4
 80061fc:	d04e      	beq.n	800629c <__multiply+0x11c>
 80061fe:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006202:	fa1f fb85 	uxth.w	fp, r5
 8006206:	f1bb 0f00 	cmp.w	fp, #0
 800620a:	d0f2      	beq.n	80061f2 <__multiply+0x72>
 800620c:	4677      	mov	r7, lr
 800620e:	464e      	mov	r6, r9
 8006210:	2000      	movs	r0, #0
 8006212:	e000      	b.n	8006216 <__multiply+0x96>
 8006214:	4626      	mov	r6, r4
 8006216:	f857 1b04 	ldr.w	r1, [r7], #4
 800621a:	6834      	ldr	r4, [r6, #0]
 800621c:	b28b      	uxth	r3, r1
 800621e:	b2a5      	uxth	r5, r4
 8006220:	0c09      	lsrs	r1, r1, #16
 8006222:	0c24      	lsrs	r4, r4, #16
 8006224:	fb0b 5303 	mla	r3, fp, r3, r5
 8006228:	4403      	add	r3, r0
 800622a:	fb0b 4001 	mla	r0, fp, r1, r4
 800622e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 8006232:	4634      	mov	r4, r6
 8006234:	b29b      	uxth	r3, r3
 8006236:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800623a:	45bc      	cmp	ip, r7
 800623c:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006240:	f844 3b04 	str.w	r3, [r4], #4
 8006244:	d8e6      	bhi.n	8006214 <__multiply+0x94>
 8006246:	6070      	str	r0, [r6, #4]
 8006248:	6815      	ldr	r5, [r2, #0]
 800624a:	0c2d      	lsrs	r5, r5, #16
 800624c:	d0d3      	beq.n	80061f6 <__multiply+0x76>
 800624e:	f8d9 3000 	ldr.w	r3, [r9]
 8006252:	4676      	mov	r6, lr
 8006254:	4618      	mov	r0, r3
 8006256:	46cb      	mov	fp, r9
 8006258:	2100      	movs	r1, #0
 800625a:	e000      	b.n	800625e <__multiply+0xde>
 800625c:	46a3      	mov	fp, r4
 800625e:	8834      	ldrh	r4, [r6, #0]
 8006260:	0c00      	lsrs	r0, r0, #16
 8006262:	fb05 0004 	mla	r0, r5, r4, r0
 8006266:	4401      	add	r1, r0
 8006268:	b29b      	uxth	r3, r3
 800626a:	465c      	mov	r4, fp
 800626c:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006270:	f844 3b04 	str.w	r3, [r4], #4
 8006274:	f856 3b04 	ldr.w	r3, [r6], #4
 8006278:	f8db 0004 	ldr.w	r0, [fp, #4]
 800627c:	0c1b      	lsrs	r3, r3, #16
 800627e:	b287      	uxth	r7, r0
 8006280:	fb05 7303 	mla	r3, r5, r3, r7
 8006284:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006288:	45b4      	cmp	ip, r6
 800628a:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800628e:	d8e5      	bhi.n	800625c <__multiply+0xdc>
 8006290:	4592      	cmp	sl, r2
 8006292:	f8cb 3004 	str.w	r3, [fp, #4]
 8006296:	f109 0904 	add.w	r9, r9, #4
 800629a:	d1b0      	bne.n	80061fe <__multiply+0x7e>
 800629c:	f8dd e004 	ldr.w	lr, [sp, #4]
 80062a0:	f1b8 0f00 	cmp.w	r8, #0
 80062a4:	dd0b      	ble.n	80062be <__multiply+0x13e>
 80062a6:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80062aa:	f1ae 0e04 	sub.w	lr, lr, #4
 80062ae:	b11b      	cbz	r3, 80062b8 <__multiply+0x138>
 80062b0:	e005      	b.n	80062be <__multiply+0x13e>
 80062b2:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80062b6:	b913      	cbnz	r3, 80062be <__multiply+0x13e>
 80062b8:	f1b8 0801 	subs.w	r8, r8, #1
 80062bc:	d1f9      	bne.n	80062b2 <__multiply+0x132>
 80062be:	9800      	ldr	r0, [sp, #0]
 80062c0:	f8c0 8010 	str.w	r8, [r0, #16]
 80062c4:	b003      	add	sp, #12
 80062c6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80062ca:	bf00      	nop

080062cc <__pow5mult>:
 80062cc:	f012 0303 	ands.w	r3, r2, #3
 80062d0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80062d4:	4614      	mov	r4, r2
 80062d6:	4607      	mov	r7, r0
 80062d8:	d12e      	bne.n	8006338 <__pow5mult+0x6c>
 80062da:	460d      	mov	r5, r1
 80062dc:	10a4      	asrs	r4, r4, #2
 80062de:	d01c      	beq.n	800631a <__pow5mult+0x4e>
 80062e0:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80062e2:	b396      	cbz	r6, 800634a <__pow5mult+0x7e>
 80062e4:	07e3      	lsls	r3, r4, #31
 80062e6:	f04f 0800 	mov.w	r8, #0
 80062ea:	d406      	bmi.n	80062fa <__pow5mult+0x2e>
 80062ec:	1064      	asrs	r4, r4, #1
 80062ee:	d014      	beq.n	800631a <__pow5mult+0x4e>
 80062f0:	6830      	ldr	r0, [r6, #0]
 80062f2:	b1a8      	cbz	r0, 8006320 <__pow5mult+0x54>
 80062f4:	4606      	mov	r6, r0
 80062f6:	07e3      	lsls	r3, r4, #31
 80062f8:	d5f8      	bpl.n	80062ec <__pow5mult+0x20>
 80062fa:	4632      	mov	r2, r6
 80062fc:	4629      	mov	r1, r5
 80062fe:	4638      	mov	r0, r7
 8006300:	f7ff ff3e 	bl	8006180 <__multiply>
 8006304:	b1b5      	cbz	r5, 8006334 <__pow5mult+0x68>
 8006306:	686a      	ldr	r2, [r5, #4]
 8006308:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800630a:	1064      	asrs	r4, r4, #1
 800630c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006310:	6029      	str	r1, [r5, #0]
 8006312:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006316:	4605      	mov	r5, r0
 8006318:	d1ea      	bne.n	80062f0 <__pow5mult+0x24>
 800631a:	4628      	mov	r0, r5
 800631c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006320:	4632      	mov	r2, r6
 8006322:	4631      	mov	r1, r6
 8006324:	4638      	mov	r0, r7
 8006326:	f7ff ff2b 	bl	8006180 <__multiply>
 800632a:	6030      	str	r0, [r6, #0]
 800632c:	f8c0 8000 	str.w	r8, [r0]
 8006330:	4606      	mov	r6, r0
 8006332:	e7e0      	b.n	80062f6 <__pow5mult+0x2a>
 8006334:	4605      	mov	r5, r0
 8006336:	e7d9      	b.n	80062ec <__pow5mult+0x20>
 8006338:	3b01      	subs	r3, #1
 800633a:	4a0b      	ldr	r2, [pc, #44]	; (8006368 <__pow5mult+0x9c>)
 800633c:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006340:	2300      	movs	r3, #0
 8006342:	f7ff fe83 	bl	800604c <__multadd>
 8006346:	4605      	mov	r5, r0
 8006348:	e7c8      	b.n	80062dc <__pow5mult+0x10>
 800634a:	2101      	movs	r1, #1
 800634c:	4638      	mov	r0, r7
 800634e:	f7ff fe4d 	bl	8005fec <_Balloc>
 8006352:	f240 2371 	movw	r3, #625	; 0x271
 8006356:	6143      	str	r3, [r0, #20]
 8006358:	2201      	movs	r2, #1
 800635a:	2300      	movs	r3, #0
 800635c:	6102      	str	r2, [r0, #16]
 800635e:	4606      	mov	r6, r0
 8006360:	64b8      	str	r0, [r7, #72]	; 0x48
 8006362:	6003      	str	r3, [r0, #0]
 8006364:	e7be      	b.n	80062e4 <__pow5mult+0x18>
 8006366:	bf00      	nop
 8006368:	08007358 	.word	0x08007358

0800636c <__lshift>:
 800636c:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006370:	4691      	mov	r9, r2
 8006372:	690a      	ldr	r2, [r1, #16]
 8006374:	460e      	mov	r6, r1
 8006376:	ea4f 1469 	mov.w	r4, r9, asr #5
 800637a:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800637e:	eb04 0802 	add.w	r8, r4, r2
 8006382:	f108 0501 	add.w	r5, r8, #1
 8006386:	429d      	cmp	r5, r3
 8006388:	4607      	mov	r7, r0
 800638a:	dd04      	ble.n	8006396 <__lshift+0x2a>
 800638c:	005b      	lsls	r3, r3, #1
 800638e:	429d      	cmp	r5, r3
 8006390:	f101 0101 	add.w	r1, r1, #1
 8006394:	dcfa      	bgt.n	800638c <__lshift+0x20>
 8006396:	4638      	mov	r0, r7
 8006398:	f7ff fe28 	bl	8005fec <_Balloc>
 800639c:	2c00      	cmp	r4, #0
 800639e:	f100 0314 	add.w	r3, r0, #20
 80063a2:	dd37      	ble.n	8006414 <__lshift+0xa8>
 80063a4:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80063a8:	2200      	movs	r2, #0
 80063aa:	f843 2b04 	str.w	r2, [r3], #4
 80063ae:	428b      	cmp	r3, r1
 80063b0:	d1fb      	bne.n	80063aa <__lshift+0x3e>
 80063b2:	6934      	ldr	r4, [r6, #16]
 80063b4:	f106 0314 	add.w	r3, r6, #20
 80063b8:	f019 091f 	ands.w	r9, r9, #31
 80063bc:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80063c0:	d020      	beq.n	8006404 <__lshift+0x98>
 80063c2:	f1c9 0e20 	rsb	lr, r9, #32
 80063c6:	2200      	movs	r2, #0
 80063c8:	e000      	b.n	80063cc <__lshift+0x60>
 80063ca:	4651      	mov	r1, sl
 80063cc:	681c      	ldr	r4, [r3, #0]
 80063ce:	468a      	mov	sl, r1
 80063d0:	fa04 f409 	lsl.w	r4, r4, r9
 80063d4:	4314      	orrs	r4, r2
 80063d6:	f84a 4b04 	str.w	r4, [sl], #4
 80063da:	f853 2b04 	ldr.w	r2, [r3], #4
 80063de:	4563      	cmp	r3, ip
 80063e0:	fa22 f20e 	lsr.w	r2, r2, lr
 80063e4:	d3f1      	bcc.n	80063ca <__lshift+0x5e>
 80063e6:	604a      	str	r2, [r1, #4]
 80063e8:	b10a      	cbz	r2, 80063ee <__lshift+0x82>
 80063ea:	f108 0502 	add.w	r5, r8, #2
 80063ee:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80063f0:	6872      	ldr	r2, [r6, #4]
 80063f2:	3d01      	subs	r5, #1
 80063f4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80063f8:	6105      	str	r5, [r0, #16]
 80063fa:	6031      	str	r1, [r6, #0]
 80063fc:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006400:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006404:	3904      	subs	r1, #4
 8006406:	f853 2b04 	ldr.w	r2, [r3], #4
 800640a:	f841 2f04 	str.w	r2, [r1, #4]!
 800640e:	459c      	cmp	ip, r3
 8006410:	d8f9      	bhi.n	8006406 <__lshift+0x9a>
 8006412:	e7ec      	b.n	80063ee <__lshift+0x82>
 8006414:	4619      	mov	r1, r3
 8006416:	e7cc      	b.n	80063b2 <__lshift+0x46>

08006418 <__mcmp>:
 8006418:	b430      	push	{r4, r5}
 800641a:	690b      	ldr	r3, [r1, #16]
 800641c:	4605      	mov	r5, r0
 800641e:	6900      	ldr	r0, [r0, #16]
 8006420:	1ac0      	subs	r0, r0, r3
 8006422:	d10f      	bne.n	8006444 <__mcmp+0x2c>
 8006424:	009b      	lsls	r3, r3, #2
 8006426:	3514      	adds	r5, #20
 8006428:	3114      	adds	r1, #20
 800642a:	4419      	add	r1, r3
 800642c:	442b      	add	r3, r5
 800642e:	e001      	b.n	8006434 <__mcmp+0x1c>
 8006430:	429d      	cmp	r5, r3
 8006432:	d207      	bcs.n	8006444 <__mcmp+0x2c>
 8006434:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006438:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800643c:	4294      	cmp	r4, r2
 800643e:	d0f7      	beq.n	8006430 <__mcmp+0x18>
 8006440:	d302      	bcc.n	8006448 <__mcmp+0x30>
 8006442:	2001      	movs	r0, #1
 8006444:	bc30      	pop	{r4, r5}
 8006446:	4770      	bx	lr
 8006448:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800644c:	e7fa      	b.n	8006444 <__mcmp+0x2c>
 800644e:	bf00      	nop

08006450 <__mdiff>:
 8006450:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006454:	6913      	ldr	r3, [r2, #16]
 8006456:	690d      	ldr	r5, [r1, #16]
 8006458:	1aed      	subs	r5, r5, r3
 800645a:	2d00      	cmp	r5, #0
 800645c:	460e      	mov	r6, r1
 800645e:	4690      	mov	r8, r2
 8006460:	f101 0414 	add.w	r4, r1, #20
 8006464:	f102 0714 	add.w	r7, r2, #20
 8006468:	d114      	bne.n	8006494 <__mdiff+0x44>
 800646a:	009b      	lsls	r3, r3, #2
 800646c:	18e2      	adds	r2, r4, r3
 800646e:	443b      	add	r3, r7
 8006470:	e001      	b.n	8006476 <__mdiff+0x26>
 8006472:	42a2      	cmp	r2, r4
 8006474:	d959      	bls.n	800652a <__mdiff+0xda>
 8006476:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800647a:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800647e:	458c      	cmp	ip, r1
 8006480:	d0f7      	beq.n	8006472 <__mdiff+0x22>
 8006482:	d209      	bcs.n	8006498 <__mdiff+0x48>
 8006484:	4622      	mov	r2, r4
 8006486:	4633      	mov	r3, r6
 8006488:	463c      	mov	r4, r7
 800648a:	4646      	mov	r6, r8
 800648c:	4617      	mov	r7, r2
 800648e:	4698      	mov	r8, r3
 8006490:	2501      	movs	r5, #1
 8006492:	e001      	b.n	8006498 <__mdiff+0x48>
 8006494:	dbf6      	blt.n	8006484 <__mdiff+0x34>
 8006496:	2500      	movs	r5, #0
 8006498:	6871      	ldr	r1, [r6, #4]
 800649a:	f7ff fda7 	bl	8005fec <_Balloc>
 800649e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80064a2:	6936      	ldr	r6, [r6, #16]
 80064a4:	60c5      	str	r5, [r0, #12]
 80064a6:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80064aa:	46bc      	mov	ip, r7
 80064ac:	f100 0514 	add.w	r5, r0, #20
 80064b0:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80064b4:	2300      	movs	r3, #0
 80064b6:	f85c 1b04 	ldr.w	r1, [ip], #4
 80064ba:	f854 8b04 	ldr.w	r8, [r4], #4
 80064be:	b28a      	uxth	r2, r1
 80064c0:	fa13 f388 	uxtah	r3, r3, r8
 80064c4:	0c09      	lsrs	r1, r1, #16
 80064c6:	1a9a      	subs	r2, r3, r2
 80064c8:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80064cc:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80064d0:	b292      	uxth	r2, r2
 80064d2:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80064d6:	45e6      	cmp	lr, ip
 80064d8:	f845 2b04 	str.w	r2, [r5], #4
 80064dc:	ea4f 4323 	mov.w	r3, r3, asr #16
 80064e0:	d8e9      	bhi.n	80064b6 <__mdiff+0x66>
 80064e2:	42a7      	cmp	r7, r4
 80064e4:	d917      	bls.n	8006516 <__mdiff+0xc6>
 80064e6:	46ae      	mov	lr, r5
 80064e8:	46a4      	mov	ip, r4
 80064ea:	f85c 2b04 	ldr.w	r2, [ip], #4
 80064ee:	fa13 f382 	uxtah	r3, r3, r2
 80064f2:	1419      	asrs	r1, r3, #16
 80064f4:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80064f8:	b29b      	uxth	r3, r3
 80064fa:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80064fe:	4567      	cmp	r7, ip
 8006500:	f84e 2b04 	str.w	r2, [lr], #4
 8006504:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006508:	d8ef      	bhi.n	80064ea <__mdiff+0x9a>
 800650a:	43e4      	mvns	r4, r4
 800650c:	4427      	add	r7, r4
 800650e:	f027 0703 	bic.w	r7, r7, #3
 8006512:	3704      	adds	r7, #4
 8006514:	443d      	add	r5, r7
 8006516:	3d04      	subs	r5, #4
 8006518:	b922      	cbnz	r2, 8006524 <__mdiff+0xd4>
 800651a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800651e:	3e01      	subs	r6, #1
 8006520:	2b00      	cmp	r3, #0
 8006522:	d0fa      	beq.n	800651a <__mdiff+0xca>
 8006524:	6106      	str	r6, [r0, #16]
 8006526:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800652a:	2100      	movs	r1, #0
 800652c:	f7ff fd5e 	bl	8005fec <_Balloc>
 8006530:	2201      	movs	r2, #1
 8006532:	2300      	movs	r3, #0
 8006534:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006538:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800653c <__d2b>:
 800653c:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006540:	460f      	mov	r7, r1
 8006542:	b083      	sub	sp, #12
 8006544:	2101      	movs	r1, #1
 8006546:	ec55 4b10 	vmov	r4, r5, d0
 800654a:	4616      	mov	r6, r2
 800654c:	f7ff fd4e 	bl	8005fec <_Balloc>
 8006550:	f3c5 580a 	ubfx	r8, r5, #20, #11
 8006554:	4681      	mov	r9, r0
 8006556:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800655a:	f1b8 0f00 	cmp.w	r8, #0
 800655e:	d001      	beq.n	8006564 <__d2b+0x28>
 8006560:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8006564:	2c00      	cmp	r4, #0
 8006566:	9301      	str	r3, [sp, #4]
 8006568:	d024      	beq.n	80065b4 <__d2b+0x78>
 800656a:	a802      	add	r0, sp, #8
 800656c:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006570:	f7ff fdcc 	bl	800610c <__lo0bits>
 8006574:	2800      	cmp	r0, #0
 8006576:	d136      	bne.n	80065e6 <__d2b+0xaa>
 8006578:	e9dd 2300 	ldrd	r2, r3, [sp]
 800657c:	f8c9 2014 	str.w	r2, [r9, #20]
 8006580:	2b00      	cmp	r3, #0
 8006582:	bf0c      	ite	eq
 8006584:	2101      	moveq	r1, #1
 8006586:	2102      	movne	r1, #2
 8006588:	f8c9 3018 	str.w	r3, [r9, #24]
 800658c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006590:	f1b8 0f00 	cmp.w	r8, #0
 8006594:	d11b      	bne.n	80065ce <__d2b+0x92>
 8006596:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800659a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800659e:	6038      	str	r0, [r7, #0]
 80065a0:	6918      	ldr	r0, [r3, #16]
 80065a2:	f7ff fd93 	bl	80060cc <__hi0bits>
 80065a6:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80065aa:	6030      	str	r0, [r6, #0]
 80065ac:	4648      	mov	r0, r9
 80065ae:	b003      	add	sp, #12
 80065b0:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80065b4:	a801      	add	r0, sp, #4
 80065b6:	f7ff fda9 	bl	800610c <__lo0bits>
 80065ba:	9b01      	ldr	r3, [sp, #4]
 80065bc:	f8c9 3014 	str.w	r3, [r9, #20]
 80065c0:	2101      	movs	r1, #1
 80065c2:	3020      	adds	r0, #32
 80065c4:	f8c9 1010 	str.w	r1, [r9, #16]
 80065c8:	f1b8 0f00 	cmp.w	r8, #0
 80065cc:	d0e3      	beq.n	8006596 <__d2b+0x5a>
 80065ce:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80065d2:	eb08 0300 	add.w	r3, r8, r0
 80065d6:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80065da:	603b      	str	r3, [r7, #0]
 80065dc:	6030      	str	r0, [r6, #0]
 80065de:	4648      	mov	r0, r9
 80065e0:	b003      	add	sp, #12
 80065e2:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80065e6:	e9dd 1300 	ldrd	r1, r3, [sp]
 80065ea:	f1c0 0220 	rsb	r2, r0, #32
 80065ee:	fa03 f202 	lsl.w	r2, r3, r2
 80065f2:	430a      	orrs	r2, r1
 80065f4:	40c3      	lsrs	r3, r0
 80065f6:	9301      	str	r3, [sp, #4]
 80065f8:	f8c9 2014 	str.w	r2, [r9, #20]
 80065fc:	e7c0      	b.n	8006580 <__d2b+0x44>
 80065fe:	bf00      	nop

08006600 <_realloc_r>:
 8006600:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006604:	4692      	mov	sl, r2
 8006606:	b083      	sub	sp, #12
 8006608:	2900      	cmp	r1, #0
 800660a:	f000 80a1 	beq.w	8006750 <_realloc_r+0x150>
 800660e:	460d      	mov	r5, r1
 8006610:	4680      	mov	r8, r0
 8006612:	f10a 040b 	add.w	r4, sl, #11
 8006616:	f7ff fcdd 	bl	8005fd4 <__malloc_lock>
 800661a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800661e:	2c16      	cmp	r4, #22
 8006620:	f022 0603 	bic.w	r6, r2, #3
 8006624:	f1a5 0708 	sub.w	r7, r5, #8
 8006628:	d83e      	bhi.n	80066a8 <_realloc_r+0xa8>
 800662a:	2410      	movs	r4, #16
 800662c:	4621      	mov	r1, r4
 800662e:	45a2      	cmp	sl, r4
 8006630:	d83f      	bhi.n	80066b2 <_realloc_r+0xb2>
 8006632:	428e      	cmp	r6, r1
 8006634:	eb07 0906 	add.w	r9, r7, r6
 8006638:	da74      	bge.n	8006724 <_realloc_r+0x124>
 800663a:	4bc7      	ldr	r3, [pc, #796]	; (8006958 <_realloc_r+0x358>)
 800663c:	6898      	ldr	r0, [r3, #8]
 800663e:	4548      	cmp	r0, r9
 8006640:	f000 80aa 	beq.w	8006798 <_realloc_r+0x198>
 8006644:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006648:	f020 0301 	bic.w	r3, r0, #1
 800664c:	444b      	add	r3, r9
 800664e:	685b      	ldr	r3, [r3, #4]
 8006650:	07db      	lsls	r3, r3, #31
 8006652:	f140 8083 	bpl.w	800675c <_realloc_r+0x15c>
 8006656:	07d2      	lsls	r2, r2, #31
 8006658:	d534      	bpl.n	80066c4 <_realloc_r+0xc4>
 800665a:	4651      	mov	r1, sl
 800665c:	4640      	mov	r0, r8
 800665e:	f7ff f9b1 	bl	80059c4 <_malloc_r>
 8006662:	4682      	mov	sl, r0
 8006664:	b1e0      	cbz	r0, 80066a0 <_realloc_r+0xa0>
 8006666:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800666a:	f023 0301 	bic.w	r3, r3, #1
 800666e:	443b      	add	r3, r7
 8006670:	f1a0 0208 	sub.w	r2, r0, #8
 8006674:	4293      	cmp	r3, r2
 8006676:	f000 80f9 	beq.w	800686c <_realloc_r+0x26c>
 800667a:	1f32      	subs	r2, r6, #4
 800667c:	2a24      	cmp	r2, #36	; 0x24
 800667e:	f200 8107 	bhi.w	8006890 <_realloc_r+0x290>
 8006682:	2a13      	cmp	r2, #19
 8006684:	6829      	ldr	r1, [r5, #0]
 8006686:	f200 80e6 	bhi.w	8006856 <_realloc_r+0x256>
 800668a:	4603      	mov	r3, r0
 800668c:	462a      	mov	r2, r5
 800668e:	6019      	str	r1, [r3, #0]
 8006690:	6851      	ldr	r1, [r2, #4]
 8006692:	6059      	str	r1, [r3, #4]
 8006694:	6892      	ldr	r2, [r2, #8]
 8006696:	609a      	str	r2, [r3, #8]
 8006698:	4629      	mov	r1, r5
 800669a:	4640      	mov	r0, r8
 800669c:	f7fe fe68 	bl	8005370 <_free_r>
 80066a0:	4640      	mov	r0, r8
 80066a2:	f7ff fc9d 	bl	8005fe0 <__malloc_unlock>
 80066a6:	e04f      	b.n	8006748 <_realloc_r+0x148>
 80066a8:	f024 0407 	bic.w	r4, r4, #7
 80066ac:	2c00      	cmp	r4, #0
 80066ae:	4621      	mov	r1, r4
 80066b0:	dabd      	bge.n	800662e <_realloc_r+0x2e>
 80066b2:	f04f 0a00 	mov.w	sl, #0
 80066b6:	230c      	movs	r3, #12
 80066b8:	4650      	mov	r0, sl
 80066ba:	f8c8 3000 	str.w	r3, [r8]
 80066be:	b003      	add	sp, #12
 80066c0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066c4:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80066c8:	eba7 0b03 	sub.w	fp, r7, r3
 80066cc:	f8db 2004 	ldr.w	r2, [fp, #4]
 80066d0:	f022 0203 	bic.w	r2, r2, #3
 80066d4:	18b3      	adds	r3, r6, r2
 80066d6:	428b      	cmp	r3, r1
 80066d8:	dbbf      	blt.n	800665a <_realloc_r+0x5a>
 80066da:	46da      	mov	sl, fp
 80066dc:	f8db 100c 	ldr.w	r1, [fp, #12]
 80066e0:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80066e4:	1f32      	subs	r2, r6, #4
 80066e6:	2a24      	cmp	r2, #36	; 0x24
 80066e8:	60c1      	str	r1, [r0, #12]
 80066ea:	eb0b 0903 	add.w	r9, fp, r3
 80066ee:	6088      	str	r0, [r1, #8]
 80066f0:	f200 80c6 	bhi.w	8006880 <_realloc_r+0x280>
 80066f4:	2a13      	cmp	r2, #19
 80066f6:	6829      	ldr	r1, [r5, #0]
 80066f8:	f240 80c0 	bls.w	800687c <_realloc_r+0x27c>
 80066fc:	f8cb 1008 	str.w	r1, [fp, #8]
 8006700:	6869      	ldr	r1, [r5, #4]
 8006702:	f8cb 100c 	str.w	r1, [fp, #12]
 8006706:	2a1b      	cmp	r2, #27
 8006708:	68a9      	ldr	r1, [r5, #8]
 800670a:	f200 80d8 	bhi.w	80068be <_realloc_r+0x2be>
 800670e:	f10b 0210 	add.w	r2, fp, #16
 8006712:	3508      	adds	r5, #8
 8006714:	6011      	str	r1, [r2, #0]
 8006716:	6869      	ldr	r1, [r5, #4]
 8006718:	6051      	str	r1, [r2, #4]
 800671a:	68a9      	ldr	r1, [r5, #8]
 800671c:	6091      	str	r1, [r2, #8]
 800671e:	461e      	mov	r6, r3
 8006720:	465f      	mov	r7, fp
 8006722:	4655      	mov	r5, sl
 8006724:	687b      	ldr	r3, [r7, #4]
 8006726:	1b32      	subs	r2, r6, r4
 8006728:	2a0f      	cmp	r2, #15
 800672a:	f003 0301 	and.w	r3, r3, #1
 800672e:	d822      	bhi.n	8006776 <_realloc_r+0x176>
 8006730:	4333      	orrs	r3, r6
 8006732:	607b      	str	r3, [r7, #4]
 8006734:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006738:	f043 0301 	orr.w	r3, r3, #1
 800673c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006740:	4640      	mov	r0, r8
 8006742:	f7ff fc4d 	bl	8005fe0 <__malloc_unlock>
 8006746:	46aa      	mov	sl, r5
 8006748:	4650      	mov	r0, sl
 800674a:	b003      	add	sp, #12
 800674c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006750:	4611      	mov	r1, r2
 8006752:	b003      	add	sp, #12
 8006754:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006758:	f7ff b934 	b.w	80059c4 <_malloc_r>
 800675c:	f020 0003 	bic.w	r0, r0, #3
 8006760:	1833      	adds	r3, r6, r0
 8006762:	428b      	cmp	r3, r1
 8006764:	db61      	blt.n	800682a <_realloc_r+0x22a>
 8006766:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800676a:	461e      	mov	r6, r3
 800676c:	60ca      	str	r2, [r1, #12]
 800676e:	eb07 0903 	add.w	r9, r7, r3
 8006772:	6091      	str	r1, [r2, #8]
 8006774:	e7d6      	b.n	8006724 <_realloc_r+0x124>
 8006776:	1939      	adds	r1, r7, r4
 8006778:	4323      	orrs	r3, r4
 800677a:	f042 0201 	orr.w	r2, r2, #1
 800677e:	607b      	str	r3, [r7, #4]
 8006780:	604a      	str	r2, [r1, #4]
 8006782:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006786:	f043 0301 	orr.w	r3, r3, #1
 800678a:	3108      	adds	r1, #8
 800678c:	f8c9 3004 	str.w	r3, [r9, #4]
 8006790:	4640      	mov	r0, r8
 8006792:	f7fe fded 	bl	8005370 <_free_r>
 8006796:	e7d3      	b.n	8006740 <_realloc_r+0x140>
 8006798:	6840      	ldr	r0, [r0, #4]
 800679a:	f020 0903 	bic.w	r9, r0, #3
 800679e:	44b1      	add	r9, r6
 80067a0:	f104 0010 	add.w	r0, r4, #16
 80067a4:	4581      	cmp	r9, r0
 80067a6:	da77      	bge.n	8006898 <_realloc_r+0x298>
 80067a8:	07d2      	lsls	r2, r2, #31
 80067aa:	f53f af56 	bmi.w	800665a <_realloc_r+0x5a>
 80067ae:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80067b2:	eba7 0b02 	sub.w	fp, r7, r2
 80067b6:	f8db 2004 	ldr.w	r2, [fp, #4]
 80067ba:	f022 0203 	bic.w	r2, r2, #3
 80067be:	4491      	add	r9, r2
 80067c0:	4548      	cmp	r0, r9
 80067c2:	dc87      	bgt.n	80066d4 <_realloc_r+0xd4>
 80067c4:	46da      	mov	sl, fp
 80067c6:	f8db 100c 	ldr.w	r1, [fp, #12]
 80067ca:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80067ce:	1f32      	subs	r2, r6, #4
 80067d0:	2a24      	cmp	r2, #36	; 0x24
 80067d2:	60c1      	str	r1, [r0, #12]
 80067d4:	6088      	str	r0, [r1, #8]
 80067d6:	f200 80a1 	bhi.w	800691c <_realloc_r+0x31c>
 80067da:	2a13      	cmp	r2, #19
 80067dc:	6829      	ldr	r1, [r5, #0]
 80067de:	f240 809b 	bls.w	8006918 <_realloc_r+0x318>
 80067e2:	f8cb 1008 	str.w	r1, [fp, #8]
 80067e6:	6869      	ldr	r1, [r5, #4]
 80067e8:	f8cb 100c 	str.w	r1, [fp, #12]
 80067ec:	2a1b      	cmp	r2, #27
 80067ee:	68a9      	ldr	r1, [r5, #8]
 80067f0:	f200 809b 	bhi.w	800692a <_realloc_r+0x32a>
 80067f4:	f10b 0210 	add.w	r2, fp, #16
 80067f8:	3508      	adds	r5, #8
 80067fa:	6011      	str	r1, [r2, #0]
 80067fc:	6869      	ldr	r1, [r5, #4]
 80067fe:	6051      	str	r1, [r2, #4]
 8006800:	68a9      	ldr	r1, [r5, #8]
 8006802:	6091      	str	r1, [r2, #8]
 8006804:	eb0b 0104 	add.w	r1, fp, r4
 8006808:	eba9 0204 	sub.w	r2, r9, r4
 800680c:	f042 0201 	orr.w	r2, r2, #1
 8006810:	6099      	str	r1, [r3, #8]
 8006812:	604a      	str	r2, [r1, #4]
 8006814:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006818:	f003 0301 	and.w	r3, r3, #1
 800681c:	431c      	orrs	r4, r3
 800681e:	4640      	mov	r0, r8
 8006820:	f8cb 4004 	str.w	r4, [fp, #4]
 8006824:	f7ff fbdc 	bl	8005fe0 <__malloc_unlock>
 8006828:	e78e      	b.n	8006748 <_realloc_r+0x148>
 800682a:	07d3      	lsls	r3, r2, #31
 800682c:	f53f af15 	bmi.w	800665a <_realloc_r+0x5a>
 8006830:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006834:	eba7 0b03 	sub.w	fp, r7, r3
 8006838:	f8db 2004 	ldr.w	r2, [fp, #4]
 800683c:	f022 0203 	bic.w	r2, r2, #3
 8006840:	4410      	add	r0, r2
 8006842:	1983      	adds	r3, r0, r6
 8006844:	428b      	cmp	r3, r1
 8006846:	f6ff af45 	blt.w	80066d4 <_realloc_r+0xd4>
 800684a:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800684e:	46da      	mov	sl, fp
 8006850:	60ca      	str	r2, [r1, #12]
 8006852:	6091      	str	r1, [r2, #8]
 8006854:	e742      	b.n	80066dc <_realloc_r+0xdc>
 8006856:	6001      	str	r1, [r0, #0]
 8006858:	686b      	ldr	r3, [r5, #4]
 800685a:	6043      	str	r3, [r0, #4]
 800685c:	2a1b      	cmp	r2, #27
 800685e:	d83a      	bhi.n	80068d6 <_realloc_r+0x2d6>
 8006860:	f105 0208 	add.w	r2, r5, #8
 8006864:	f100 0308 	add.w	r3, r0, #8
 8006868:	68a9      	ldr	r1, [r5, #8]
 800686a:	e710      	b.n	800668e <_realloc_r+0x8e>
 800686c:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006870:	f023 0303 	bic.w	r3, r3, #3
 8006874:	441e      	add	r6, r3
 8006876:	eb07 0906 	add.w	r9, r7, r6
 800687a:	e753      	b.n	8006724 <_realloc_r+0x124>
 800687c:	4652      	mov	r2, sl
 800687e:	e749      	b.n	8006714 <_realloc_r+0x114>
 8006880:	4629      	mov	r1, r5
 8006882:	4650      	mov	r0, sl
 8006884:	461e      	mov	r6, r3
 8006886:	465f      	mov	r7, fp
 8006888:	f7ff fb40 	bl	8005f0c <memmove>
 800688c:	4655      	mov	r5, sl
 800688e:	e749      	b.n	8006724 <_realloc_r+0x124>
 8006890:	4629      	mov	r1, r5
 8006892:	f7ff fb3b 	bl	8005f0c <memmove>
 8006896:	e6ff      	b.n	8006698 <_realloc_r+0x98>
 8006898:	4427      	add	r7, r4
 800689a:	eba9 0904 	sub.w	r9, r9, r4
 800689e:	f049 0201 	orr.w	r2, r9, #1
 80068a2:	609f      	str	r7, [r3, #8]
 80068a4:	607a      	str	r2, [r7, #4]
 80068a6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80068aa:	f003 0301 	and.w	r3, r3, #1
 80068ae:	431c      	orrs	r4, r3
 80068b0:	4640      	mov	r0, r8
 80068b2:	f845 4c04 	str.w	r4, [r5, #-4]
 80068b6:	f7ff fb93 	bl	8005fe0 <__malloc_unlock>
 80068ba:	46aa      	mov	sl, r5
 80068bc:	e744      	b.n	8006748 <_realloc_r+0x148>
 80068be:	f8cb 1010 	str.w	r1, [fp, #16]
 80068c2:	68e9      	ldr	r1, [r5, #12]
 80068c4:	f8cb 1014 	str.w	r1, [fp, #20]
 80068c8:	2a24      	cmp	r2, #36	; 0x24
 80068ca:	d010      	beq.n	80068ee <_realloc_r+0x2ee>
 80068cc:	6929      	ldr	r1, [r5, #16]
 80068ce:	f10b 0218 	add.w	r2, fp, #24
 80068d2:	3510      	adds	r5, #16
 80068d4:	e71e      	b.n	8006714 <_realloc_r+0x114>
 80068d6:	68ab      	ldr	r3, [r5, #8]
 80068d8:	6083      	str	r3, [r0, #8]
 80068da:	68eb      	ldr	r3, [r5, #12]
 80068dc:	60c3      	str	r3, [r0, #12]
 80068de:	2a24      	cmp	r2, #36	; 0x24
 80068e0:	d010      	beq.n	8006904 <_realloc_r+0x304>
 80068e2:	f105 0210 	add.w	r2, r5, #16
 80068e6:	f100 0310 	add.w	r3, r0, #16
 80068ea:	6929      	ldr	r1, [r5, #16]
 80068ec:	e6cf      	b.n	800668e <_realloc_r+0x8e>
 80068ee:	692a      	ldr	r2, [r5, #16]
 80068f0:	f8cb 2018 	str.w	r2, [fp, #24]
 80068f4:	696a      	ldr	r2, [r5, #20]
 80068f6:	f8cb 201c 	str.w	r2, [fp, #28]
 80068fa:	69a9      	ldr	r1, [r5, #24]
 80068fc:	f10b 0220 	add.w	r2, fp, #32
 8006900:	3518      	adds	r5, #24
 8006902:	e707      	b.n	8006714 <_realloc_r+0x114>
 8006904:	692b      	ldr	r3, [r5, #16]
 8006906:	6103      	str	r3, [r0, #16]
 8006908:	696b      	ldr	r3, [r5, #20]
 800690a:	6143      	str	r3, [r0, #20]
 800690c:	69a9      	ldr	r1, [r5, #24]
 800690e:	f105 0218 	add.w	r2, r5, #24
 8006912:	f100 0318 	add.w	r3, r0, #24
 8006916:	e6ba      	b.n	800668e <_realloc_r+0x8e>
 8006918:	4652      	mov	r2, sl
 800691a:	e76e      	b.n	80067fa <_realloc_r+0x1fa>
 800691c:	4629      	mov	r1, r5
 800691e:	4650      	mov	r0, sl
 8006920:	9301      	str	r3, [sp, #4]
 8006922:	f7ff faf3 	bl	8005f0c <memmove>
 8006926:	9b01      	ldr	r3, [sp, #4]
 8006928:	e76c      	b.n	8006804 <_realloc_r+0x204>
 800692a:	f8cb 1010 	str.w	r1, [fp, #16]
 800692e:	68e9      	ldr	r1, [r5, #12]
 8006930:	f8cb 1014 	str.w	r1, [fp, #20]
 8006934:	2a24      	cmp	r2, #36	; 0x24
 8006936:	d004      	beq.n	8006942 <_realloc_r+0x342>
 8006938:	6929      	ldr	r1, [r5, #16]
 800693a:	f10b 0218 	add.w	r2, fp, #24
 800693e:	3510      	adds	r5, #16
 8006940:	e75b      	b.n	80067fa <_realloc_r+0x1fa>
 8006942:	692a      	ldr	r2, [r5, #16]
 8006944:	f8cb 2018 	str.w	r2, [fp, #24]
 8006948:	696a      	ldr	r2, [r5, #20]
 800694a:	f8cb 201c 	str.w	r2, [fp, #28]
 800694e:	69a9      	ldr	r1, [r5, #24]
 8006950:	f10b 0220 	add.w	r2, fp, #32
 8006954:	3518      	adds	r5, #24
 8006956:	e750      	b.n	80067fa <_realloc_r+0x1fa>
 8006958:	2000044c 	.word	0x2000044c

0800695c <frexp>:
 800695c:	ec53 2b10 	vmov	r2, r3, d0
 8006960:	b570      	push	{r4, r5, r6, lr}
 8006962:	4e16      	ldr	r6, [pc, #88]	; (80069bc <frexp+0x60>)
 8006964:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006968:	2500      	movs	r5, #0
 800696a:	42b1      	cmp	r1, r6
 800696c:	4604      	mov	r4, r0
 800696e:	6005      	str	r5, [r0, #0]
 8006970:	dc21      	bgt.n	80069b6 <frexp+0x5a>
 8006972:	ee10 6a10 	vmov	r6, s0
 8006976:	430e      	orrs	r6, r1
 8006978:	d01d      	beq.n	80069b6 <frexp+0x5a>
 800697a:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800697e:	4618      	mov	r0, r3
 8006980:	da0c      	bge.n	800699c <frexp+0x40>
 8006982:	4619      	mov	r1, r3
 8006984:	2200      	movs	r2, #0
 8006986:	ee10 0a10 	vmov	r0, s0
 800698a:	4b0d      	ldr	r3, [pc, #52]	; (80069c0 <frexp+0x64>)
 800698c:	f7fa f8d4 	bl	8000b38 <__aeabi_dmul>
 8006990:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006994:	4602      	mov	r2, r0
 8006996:	4608      	mov	r0, r1
 8006998:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800699c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80069a0:	1509      	asrs	r1, r1, #20
 80069a2:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80069a6:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80069aa:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80069ae:	4429      	add	r1, r5
 80069b0:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80069b4:	6021      	str	r1, [r4, #0]
 80069b6:	ec43 2b10 	vmov	d0, r2, r3
 80069ba:	bd70      	pop	{r4, r5, r6, pc}
 80069bc:	7fefffff 	.word	0x7fefffff
 80069c0:	43500000 	.word	0x43500000

080069c4 <_sbrk_r>:
 80069c4:	b538      	push	{r3, r4, r5, lr}
 80069c6:	4c07      	ldr	r4, [pc, #28]	; (80069e4 <_sbrk_r+0x20>)
 80069c8:	2300      	movs	r3, #0
 80069ca:	4605      	mov	r5, r0
 80069cc:	4608      	mov	r0, r1
 80069ce:	6023      	str	r3, [r4, #0]
 80069d0:	f7fb fc33 	bl	800223a <_sbrk>
 80069d4:	1c43      	adds	r3, r0, #1
 80069d6:	d000      	beq.n	80069da <_sbrk_r+0x16>
 80069d8:	bd38      	pop	{r3, r4, r5, pc}
 80069da:	6823      	ldr	r3, [r4, #0]
 80069dc:	2b00      	cmp	r3, #0
 80069de:	d0fb      	beq.n	80069d8 <_sbrk_r+0x14>
 80069e0:	602b      	str	r3, [r5, #0]
 80069e2:	bd38      	pop	{r3, r4, r5, pc}
 80069e4:	20000b10 	.word	0x20000b10

080069e8 <__sread>:
 80069e8:	b510      	push	{r4, lr}
 80069ea:	460c      	mov	r4, r1
 80069ec:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 80069f0:	f000 fabc 	bl	8006f6c <_read_r>
 80069f4:	2800      	cmp	r0, #0
 80069f6:	db03      	blt.n	8006a00 <__sread+0x18>
 80069f8:	6d23      	ldr	r3, [r4, #80]	; 0x50
 80069fa:	4403      	add	r3, r0
 80069fc:	6523      	str	r3, [r4, #80]	; 0x50
 80069fe:	bd10      	pop	{r4, pc}
 8006a00:	89a3      	ldrh	r3, [r4, #12]
 8006a02:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006a06:	81a3      	strh	r3, [r4, #12]
 8006a08:	bd10      	pop	{r4, pc}
 8006a0a:	bf00      	nop

08006a0c <__swrite>:
 8006a0c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006a10:	4616      	mov	r6, r2
 8006a12:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006a16:	461f      	mov	r7, r3
 8006a18:	05d3      	lsls	r3, r2, #23
 8006a1a:	460c      	mov	r4, r1
 8006a1c:	4605      	mov	r5, r0
 8006a1e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a22:	d507      	bpl.n	8006a34 <__swrite+0x28>
 8006a24:	2200      	movs	r2, #0
 8006a26:	2302      	movs	r3, #2
 8006a28:	f000 fa74 	bl	8006f14 <_lseek_r>
 8006a2c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006a30:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006a34:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006a38:	81a2      	strh	r2, [r4, #12]
 8006a3a:	463b      	mov	r3, r7
 8006a3c:	4632      	mov	r2, r6
 8006a3e:	4628      	mov	r0, r5
 8006a40:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006a44:	f000 b88c 	b.w	8006b60 <_write_r>

08006a48 <__sseek>:
 8006a48:	b510      	push	{r4, lr}
 8006a4a:	460c      	mov	r4, r1
 8006a4c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a50:	f000 fa60 	bl	8006f14 <_lseek_r>
 8006a54:	89a3      	ldrh	r3, [r4, #12]
 8006a56:	1c42      	adds	r2, r0, #1
 8006a58:	bf0e      	itee	eq
 8006a5a:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006a5e:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006a62:	6520      	strne	r0, [r4, #80]	; 0x50
 8006a64:	81a3      	strh	r3, [r4, #12]
 8006a66:	bd10      	pop	{r4, pc}

08006a68 <__sclose>:
 8006a68:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a6c:	f000 b922 	b.w	8006cb4 <_close_r>

08006a70 <strncpy>:
 8006a70:	ea40 0301 	orr.w	r3, r0, r1
 8006a74:	079b      	lsls	r3, r3, #30
 8006a76:	b470      	push	{r4, r5, r6}
 8006a78:	d12a      	bne.n	8006ad0 <strncpy+0x60>
 8006a7a:	2a03      	cmp	r2, #3
 8006a7c:	d928      	bls.n	8006ad0 <strncpy+0x60>
 8006a7e:	460c      	mov	r4, r1
 8006a80:	4603      	mov	r3, r0
 8006a82:	4621      	mov	r1, r4
 8006a84:	f854 6b04 	ldr.w	r6, [r4], #4
 8006a88:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006a8c:	ea25 0506 	bic.w	r5, r5, r6
 8006a90:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006a94:	d106      	bne.n	8006aa4 <strncpy+0x34>
 8006a96:	3a04      	subs	r2, #4
 8006a98:	2a03      	cmp	r2, #3
 8006a9a:	f843 6b04 	str.w	r6, [r3], #4
 8006a9e:	4621      	mov	r1, r4
 8006aa0:	d8ef      	bhi.n	8006a82 <strncpy+0x12>
 8006aa2:	b19a      	cbz	r2, 8006acc <strncpy+0x5c>
 8006aa4:	780c      	ldrb	r4, [r1, #0]
 8006aa6:	701c      	strb	r4, [r3, #0]
 8006aa8:	3a01      	subs	r2, #1
 8006aaa:	3301      	adds	r3, #1
 8006aac:	b13c      	cbz	r4, 8006abe <strncpy+0x4e>
 8006aae:	b16a      	cbz	r2, 8006acc <strncpy+0x5c>
 8006ab0:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006ab4:	f803 4b01 	strb.w	r4, [r3], #1
 8006ab8:	3a01      	subs	r2, #1
 8006aba:	2c00      	cmp	r4, #0
 8006abc:	d1f7      	bne.n	8006aae <strncpy+0x3e>
 8006abe:	b12a      	cbz	r2, 8006acc <strncpy+0x5c>
 8006ac0:	441a      	add	r2, r3
 8006ac2:	2100      	movs	r1, #0
 8006ac4:	f803 1b01 	strb.w	r1, [r3], #1
 8006ac8:	4293      	cmp	r3, r2
 8006aca:	d1fb      	bne.n	8006ac4 <strncpy+0x54>
 8006acc:	bc70      	pop	{r4, r5, r6}
 8006ace:	4770      	bx	lr
 8006ad0:	4603      	mov	r3, r0
 8006ad2:	e7e6      	b.n	8006aa2 <strncpy+0x32>

08006ad4 <__sprint_r.part.0>:
 8006ad4:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006ad8:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006ada:	049c      	lsls	r4, r3, #18
 8006adc:	4692      	mov	sl, r2
 8006ade:	d52d      	bpl.n	8006b3c <__sprint_r.part.0+0x68>
 8006ae0:	6893      	ldr	r3, [r2, #8]
 8006ae2:	6812      	ldr	r2, [r2, #0]
 8006ae4:	b343      	cbz	r3, 8006b38 <__sprint_r.part.0+0x64>
 8006ae6:	460e      	mov	r6, r1
 8006ae8:	4607      	mov	r7, r0
 8006aea:	f102 0908 	add.w	r9, r2, #8
 8006aee:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006af2:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006af6:	d015      	beq.n	8006b24 <__sprint_r.part.0+0x50>
 8006af8:	3d04      	subs	r5, #4
 8006afa:	2400      	movs	r4, #0
 8006afc:	e001      	b.n	8006b02 <__sprint_r.part.0+0x2e>
 8006afe:	45a0      	cmp	r8, r4
 8006b00:	d00e      	beq.n	8006b20 <__sprint_r.part.0+0x4c>
 8006b02:	4632      	mov	r2, r6
 8006b04:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006b08:	4638      	mov	r0, r7
 8006b0a:	f000 f99d 	bl	8006e48 <_fputwc_r>
 8006b0e:	1c43      	adds	r3, r0, #1
 8006b10:	f104 0401 	add.w	r4, r4, #1
 8006b14:	d1f3      	bne.n	8006afe <__sprint_r.part.0+0x2a>
 8006b16:	2300      	movs	r3, #0
 8006b18:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b1c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b20:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006b24:	f02b 0b03 	bic.w	fp, fp, #3
 8006b28:	eba3 030b 	sub.w	r3, r3, fp
 8006b2c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006b30:	f109 0908 	add.w	r9, r9, #8
 8006b34:	2b00      	cmp	r3, #0
 8006b36:	d1da      	bne.n	8006aee <__sprint_r.part.0+0x1a>
 8006b38:	2000      	movs	r0, #0
 8006b3a:	e7ec      	b.n	8006b16 <__sprint_r.part.0+0x42>
 8006b3c:	f7fe fd0c 	bl	8005558 <__sfvwrite_r>
 8006b40:	2300      	movs	r3, #0
 8006b42:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b46:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b4a:	bf00      	nop

08006b4c <__sprint_r>:
 8006b4c:	6893      	ldr	r3, [r2, #8]
 8006b4e:	b10b      	cbz	r3, 8006b54 <__sprint_r+0x8>
 8006b50:	f7ff bfc0 	b.w	8006ad4 <__sprint_r.part.0>
 8006b54:	b410      	push	{r4}
 8006b56:	4618      	mov	r0, r3
 8006b58:	6053      	str	r3, [r2, #4]
 8006b5a:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006b5e:	4770      	bx	lr

08006b60 <_write_r>:
 8006b60:	b570      	push	{r4, r5, r6, lr}
 8006b62:	460d      	mov	r5, r1
 8006b64:	4c08      	ldr	r4, [pc, #32]	; (8006b88 <_write_r+0x28>)
 8006b66:	4611      	mov	r1, r2
 8006b68:	4606      	mov	r6, r0
 8006b6a:	461a      	mov	r2, r3
 8006b6c:	4628      	mov	r0, r5
 8006b6e:	2300      	movs	r3, #0
 8006b70:	6023      	str	r3, [r4, #0]
 8006b72:	f7fb fb4f 	bl	8002214 <_write>
 8006b76:	1c43      	adds	r3, r0, #1
 8006b78:	d000      	beq.n	8006b7c <_write_r+0x1c>
 8006b7a:	bd70      	pop	{r4, r5, r6, pc}
 8006b7c:	6823      	ldr	r3, [r4, #0]
 8006b7e:	2b00      	cmp	r3, #0
 8006b80:	d0fb      	beq.n	8006b7a <_write_r+0x1a>
 8006b82:	6033      	str	r3, [r6, #0]
 8006b84:	bd70      	pop	{r4, r5, r6, pc}
 8006b86:	bf00      	nop
 8006b88:	20000b10 	.word	0x20000b10

08006b8c <__register_exitproc>:
 8006b8c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006b90:	4d2b      	ldr	r5, [pc, #172]	; (8006c40 <__register_exitproc+0xb4>)
 8006b92:	4606      	mov	r6, r0
 8006b94:	6828      	ldr	r0, [r5, #0]
 8006b96:	4698      	mov	r8, r3
 8006b98:	460f      	mov	r7, r1
 8006b9a:	4691      	mov	r9, r2
 8006b9c:	f7fe fe96 	bl	80058cc <__retarget_lock_acquire_recursive>
 8006ba0:	4b28      	ldr	r3, [pc, #160]	; (8006c44 <__register_exitproc+0xb8>)
 8006ba2:	681c      	ldr	r4, [r3, #0]
 8006ba4:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006ba8:	2b00      	cmp	r3, #0
 8006baa:	d03d      	beq.n	8006c28 <__register_exitproc+0x9c>
 8006bac:	685a      	ldr	r2, [r3, #4]
 8006bae:	2a1f      	cmp	r2, #31
 8006bb0:	dc0d      	bgt.n	8006bce <__register_exitproc+0x42>
 8006bb2:	f102 0c01 	add.w	ip, r2, #1
 8006bb6:	bb16      	cbnz	r6, 8006bfe <__register_exitproc+0x72>
 8006bb8:	3202      	adds	r2, #2
 8006bba:	f8c3 c004 	str.w	ip, [r3, #4]
 8006bbe:	6828      	ldr	r0, [r5, #0]
 8006bc0:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006bc4:	f7fe fe84 	bl	80058d0 <__retarget_lock_release_recursive>
 8006bc8:	2000      	movs	r0, #0
 8006bca:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006bce:	4b1e      	ldr	r3, [pc, #120]	; (8006c48 <__register_exitproc+0xbc>)
 8006bd0:	b37b      	cbz	r3, 8006c32 <__register_exitproc+0xa6>
 8006bd2:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006bd6:	f3af 8000 	nop.w
 8006bda:	4603      	mov	r3, r0
 8006bdc:	b348      	cbz	r0, 8006c32 <__register_exitproc+0xa6>
 8006bde:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006be2:	2100      	movs	r1, #0
 8006be4:	e9c0 2100 	strd	r2, r1, [r0]
 8006be8:	f04f 0c01 	mov.w	ip, #1
 8006bec:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006bf0:	460a      	mov	r2, r1
 8006bf2:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006bf6:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006bfa:	2e00      	cmp	r6, #0
 8006bfc:	d0dc      	beq.n	8006bb8 <__register_exitproc+0x2c>
 8006bfe:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006c02:	2401      	movs	r4, #1
 8006c04:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006c08:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006c0c:	4094      	lsls	r4, r2
 8006c0e:	4320      	orrs	r0, r4
 8006c10:	2e02      	cmp	r6, #2
 8006c12:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006c16:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006c1a:	d1cd      	bne.n	8006bb8 <__register_exitproc+0x2c>
 8006c1c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006c20:	430c      	orrs	r4, r1
 8006c22:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006c26:	e7c7      	b.n	8006bb8 <__register_exitproc+0x2c>
 8006c28:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006c2c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006c30:	e7bc      	b.n	8006bac <__register_exitproc+0x20>
 8006c32:	6828      	ldr	r0, [r5, #0]
 8006c34:	f7fe fe4c 	bl	80058d0 <__retarget_lock_release_recursive>
 8006c38:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006c3c:	e7c5      	b.n	8006bca <__register_exitproc+0x3e>
 8006c3e:	bf00      	nop
 8006c40:	20000448 	.word	0x20000448
 8006c44:	080071e8 	.word	0x080071e8
 8006c48:	00000000 	.word	0x00000000

08006c4c <_calloc_r>:
 8006c4c:	b510      	push	{r4, lr}
 8006c4e:	fb02 f101 	mul.w	r1, r2, r1
 8006c52:	f7fe feb7 	bl	80059c4 <_malloc_r>
 8006c56:	4604      	mov	r4, r0
 8006c58:	b1d8      	cbz	r0, 8006c92 <_calloc_r+0x46>
 8006c5a:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006c5e:	f022 0203 	bic.w	r2, r2, #3
 8006c62:	3a04      	subs	r2, #4
 8006c64:	2a24      	cmp	r2, #36	; 0x24
 8006c66:	d81d      	bhi.n	8006ca4 <_calloc_r+0x58>
 8006c68:	2a13      	cmp	r2, #19
 8006c6a:	d914      	bls.n	8006c96 <_calloc_r+0x4a>
 8006c6c:	2300      	movs	r3, #0
 8006c6e:	2a1b      	cmp	r2, #27
 8006c70:	e9c0 3300 	strd	r3, r3, [r0]
 8006c74:	d91b      	bls.n	8006cae <_calloc_r+0x62>
 8006c76:	2a24      	cmp	r2, #36	; 0x24
 8006c78:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006c7c:	bf0a      	itet	eq
 8006c7e:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006c82:	f100 0210 	addne.w	r2, r0, #16
 8006c86:	f100 0218 	addeq.w	r2, r0, #24
 8006c8a:	2300      	movs	r3, #0
 8006c8c:	e9c2 3300 	strd	r3, r3, [r2]
 8006c90:	6093      	str	r3, [r2, #8]
 8006c92:	4620      	mov	r0, r4
 8006c94:	bd10      	pop	{r4, pc}
 8006c96:	4602      	mov	r2, r0
 8006c98:	2300      	movs	r3, #0
 8006c9a:	e9c2 3300 	strd	r3, r3, [r2]
 8006c9e:	6093      	str	r3, [r2, #8]
 8006ca0:	4620      	mov	r0, r4
 8006ca2:	bd10      	pop	{r4, pc}
 8006ca4:	2100      	movs	r1, #0
 8006ca6:	f7fb fb6d 	bl	8002384 <memset>
 8006caa:	4620      	mov	r0, r4
 8006cac:	bd10      	pop	{r4, pc}
 8006cae:	f100 0208 	add.w	r2, r0, #8
 8006cb2:	e7f1      	b.n	8006c98 <_calloc_r+0x4c>

08006cb4 <_close_r>:
 8006cb4:	b538      	push	{r3, r4, r5, lr}
 8006cb6:	4c07      	ldr	r4, [pc, #28]	; (8006cd4 <_close_r+0x20>)
 8006cb8:	2300      	movs	r3, #0
 8006cba:	4605      	mov	r5, r0
 8006cbc:	4608      	mov	r0, r1
 8006cbe:	6023      	str	r3, [r4, #0]
 8006cc0:	f7fb fad7 	bl	8002272 <_close>
 8006cc4:	1c43      	adds	r3, r0, #1
 8006cc6:	d000      	beq.n	8006cca <_close_r+0x16>
 8006cc8:	bd38      	pop	{r3, r4, r5, pc}
 8006cca:	6823      	ldr	r3, [r4, #0]
 8006ccc:	2b00      	cmp	r3, #0
 8006cce:	d0fb      	beq.n	8006cc8 <_close_r+0x14>
 8006cd0:	602b      	str	r3, [r5, #0]
 8006cd2:	bd38      	pop	{r3, r4, r5, pc}
 8006cd4:	20000b10 	.word	0x20000b10

08006cd8 <_fclose_r>:
 8006cd8:	b570      	push	{r4, r5, r6, lr}
 8006cda:	2900      	cmp	r1, #0
 8006cdc:	d048      	beq.n	8006d70 <_fclose_r+0x98>
 8006cde:	4605      	mov	r5, r0
 8006ce0:	460c      	mov	r4, r1
 8006ce2:	b110      	cbz	r0, 8006cea <_fclose_r+0x12>
 8006ce4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006ce6:	2b00      	cmp	r3, #0
 8006ce8:	d048      	beq.n	8006d7c <_fclose_r+0xa4>
 8006cea:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006cec:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006cf0:	07d0      	lsls	r0, r2, #31
 8006cf2:	d440      	bmi.n	8006d76 <_fclose_r+0x9e>
 8006cf4:	0599      	lsls	r1, r3, #22
 8006cf6:	d530      	bpl.n	8006d5a <_fclose_r+0x82>
 8006cf8:	4621      	mov	r1, r4
 8006cfa:	4628      	mov	r0, r5
 8006cfc:	f7fe f990 	bl	8005020 <__sflush_r>
 8006d00:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006d02:	4606      	mov	r6, r0
 8006d04:	b133      	cbz	r3, 8006d14 <_fclose_r+0x3c>
 8006d06:	69e1      	ldr	r1, [r4, #28]
 8006d08:	4628      	mov	r0, r5
 8006d0a:	4798      	blx	r3
 8006d0c:	2800      	cmp	r0, #0
 8006d0e:	bfb8      	it	lt
 8006d10:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006d14:	89a3      	ldrh	r3, [r4, #12]
 8006d16:	061a      	lsls	r2, r3, #24
 8006d18:	d43c      	bmi.n	8006d94 <_fclose_r+0xbc>
 8006d1a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006d1c:	b141      	cbz	r1, 8006d30 <_fclose_r+0x58>
 8006d1e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006d22:	4299      	cmp	r1, r3
 8006d24:	d002      	beq.n	8006d2c <_fclose_r+0x54>
 8006d26:	4628      	mov	r0, r5
 8006d28:	f7fe fb22 	bl	8005370 <_free_r>
 8006d2c:	2300      	movs	r3, #0
 8006d2e:	6323      	str	r3, [r4, #48]	; 0x30
 8006d30:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006d32:	b121      	cbz	r1, 8006d3e <_fclose_r+0x66>
 8006d34:	4628      	mov	r0, r5
 8006d36:	f7fe fb1b 	bl	8005370 <_free_r>
 8006d3a:	2300      	movs	r3, #0
 8006d3c:	6463      	str	r3, [r4, #68]	; 0x44
 8006d3e:	f7fe faa1 	bl	8005284 <__sfp_lock_acquire>
 8006d42:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006d44:	2200      	movs	r2, #0
 8006d46:	07db      	lsls	r3, r3, #31
 8006d48:	81a2      	strh	r2, [r4, #12]
 8006d4a:	d51f      	bpl.n	8006d8c <_fclose_r+0xb4>
 8006d4c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d4e:	f7fe fdbb 	bl	80058c8 <__retarget_lock_close_recursive>
 8006d52:	f7fe fa9d 	bl	8005290 <__sfp_lock_release>
 8006d56:	4630      	mov	r0, r6
 8006d58:	bd70      	pop	{r4, r5, r6, pc}
 8006d5a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d5c:	f7fe fdb6 	bl	80058cc <__retarget_lock_acquire_recursive>
 8006d60:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d64:	2b00      	cmp	r3, #0
 8006d66:	d1c7      	bne.n	8006cf8 <_fclose_r+0x20>
 8006d68:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006d6a:	f016 0601 	ands.w	r6, r6, #1
 8006d6e:	d016      	beq.n	8006d9e <_fclose_r+0xc6>
 8006d70:	2600      	movs	r6, #0
 8006d72:	4630      	mov	r0, r6
 8006d74:	bd70      	pop	{r4, r5, r6, pc}
 8006d76:	2b00      	cmp	r3, #0
 8006d78:	d0fa      	beq.n	8006d70 <_fclose_r+0x98>
 8006d7a:	e7bd      	b.n	8006cf8 <_fclose_r+0x20>
 8006d7c:	f7fe fa56 	bl	800522c <__sinit>
 8006d80:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d82:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d86:	07d0      	lsls	r0, r2, #31
 8006d88:	d4f5      	bmi.n	8006d76 <_fclose_r+0x9e>
 8006d8a:	e7b3      	b.n	8006cf4 <_fclose_r+0x1c>
 8006d8c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d8e:	f7fe fd9f 	bl	80058d0 <__retarget_lock_release_recursive>
 8006d92:	e7db      	b.n	8006d4c <_fclose_r+0x74>
 8006d94:	6921      	ldr	r1, [r4, #16]
 8006d96:	4628      	mov	r0, r5
 8006d98:	f7fe faea 	bl	8005370 <_free_r>
 8006d9c:	e7bd      	b.n	8006d1a <_fclose_r+0x42>
 8006d9e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006da0:	f7fe fd96 	bl	80058d0 <__retarget_lock_release_recursive>
 8006da4:	4630      	mov	r0, r6
 8006da6:	bd70      	pop	{r4, r5, r6, pc}

08006da8 <__fputwc>:
 8006da8:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006dac:	b082      	sub	sp, #8
 8006dae:	4681      	mov	r9, r0
 8006db0:	4688      	mov	r8, r1
 8006db2:	4614      	mov	r4, r2
 8006db4:	f000 f8a0 	bl	8006ef8 <__locale_mb_cur_max>
 8006db8:	2801      	cmp	r0, #1
 8006dba:	d103      	bne.n	8006dc4 <__fputwc+0x1c>
 8006dbc:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006dc0:	2bfe      	cmp	r3, #254	; 0xfe
 8006dc2:	d933      	bls.n	8006e2c <__fputwc+0x84>
 8006dc4:	4642      	mov	r2, r8
 8006dc6:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006dca:	a901      	add	r1, sp, #4
 8006dcc:	4648      	mov	r0, r9
 8006dce:	f000 f93b 	bl	8007048 <_wcrtomb_r>
 8006dd2:	1c42      	adds	r2, r0, #1
 8006dd4:	4606      	mov	r6, r0
 8006dd6:	d02f      	beq.n	8006e38 <__fputwc+0x90>
 8006dd8:	b320      	cbz	r0, 8006e24 <__fputwc+0x7c>
 8006dda:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006dde:	2500      	movs	r5, #0
 8006de0:	f10d 0a04 	add.w	sl, sp, #4
 8006de4:	e009      	b.n	8006dfa <__fputwc+0x52>
 8006de6:	6823      	ldr	r3, [r4, #0]
 8006de8:	1c5a      	adds	r2, r3, #1
 8006dea:	6022      	str	r2, [r4, #0]
 8006dec:	f883 c000 	strb.w	ip, [r3]
 8006df0:	3501      	adds	r5, #1
 8006df2:	42b5      	cmp	r5, r6
 8006df4:	d216      	bcs.n	8006e24 <__fputwc+0x7c>
 8006df6:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006dfa:	68a3      	ldr	r3, [r4, #8]
 8006dfc:	3b01      	subs	r3, #1
 8006dfe:	2b00      	cmp	r3, #0
 8006e00:	60a3      	str	r3, [r4, #8]
 8006e02:	daf0      	bge.n	8006de6 <__fputwc+0x3e>
 8006e04:	69a7      	ldr	r7, [r4, #24]
 8006e06:	42bb      	cmp	r3, r7
 8006e08:	4661      	mov	r1, ip
 8006e0a:	4622      	mov	r2, r4
 8006e0c:	4648      	mov	r0, r9
 8006e0e:	db02      	blt.n	8006e16 <__fputwc+0x6e>
 8006e10:	f1bc 0f0a 	cmp.w	ip, #10
 8006e14:	d1e7      	bne.n	8006de6 <__fputwc+0x3e>
 8006e16:	f000 f8bf 	bl	8006f98 <__swbuf_r>
 8006e1a:	1c43      	adds	r3, r0, #1
 8006e1c:	d1e8      	bne.n	8006df0 <__fputwc+0x48>
 8006e1e:	b002      	add	sp, #8
 8006e20:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e24:	4640      	mov	r0, r8
 8006e26:	b002      	add	sp, #8
 8006e28:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e2c:	fa5f fc88 	uxtb.w	ip, r8
 8006e30:	4606      	mov	r6, r0
 8006e32:	f88d c004 	strb.w	ip, [sp, #4]
 8006e36:	e7d2      	b.n	8006dde <__fputwc+0x36>
 8006e38:	89a3      	ldrh	r3, [r4, #12]
 8006e3a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006e3e:	81a3      	strh	r3, [r4, #12]
 8006e40:	b002      	add	sp, #8
 8006e42:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e46:	bf00      	nop

08006e48 <_fputwc_r>:
 8006e48:	b530      	push	{r4, r5, lr}
 8006e4a:	4605      	mov	r5, r0
 8006e4c:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006e4e:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006e52:	07c0      	lsls	r0, r0, #31
 8006e54:	4614      	mov	r4, r2
 8006e56:	b083      	sub	sp, #12
 8006e58:	b29a      	uxth	r2, r3
 8006e5a:	d401      	bmi.n	8006e60 <_fputwc_r+0x18>
 8006e5c:	0590      	lsls	r0, r2, #22
 8006e5e:	d51c      	bpl.n	8006e9a <_fputwc_r+0x52>
 8006e60:	0490      	lsls	r0, r2, #18
 8006e62:	d406      	bmi.n	8006e72 <_fputwc_r+0x2a>
 8006e64:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006e66:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006e6a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006e6e:	81a3      	strh	r3, [r4, #12]
 8006e70:	6662      	str	r2, [r4, #100]	; 0x64
 8006e72:	4628      	mov	r0, r5
 8006e74:	4622      	mov	r2, r4
 8006e76:	f7ff ff97 	bl	8006da8 <__fputwc>
 8006e7a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006e7c:	07da      	lsls	r2, r3, #31
 8006e7e:	4605      	mov	r5, r0
 8006e80:	d402      	bmi.n	8006e88 <_fputwc_r+0x40>
 8006e82:	89a3      	ldrh	r3, [r4, #12]
 8006e84:	059b      	lsls	r3, r3, #22
 8006e86:	d502      	bpl.n	8006e8e <_fputwc_r+0x46>
 8006e88:	4628      	mov	r0, r5
 8006e8a:	b003      	add	sp, #12
 8006e8c:	bd30      	pop	{r4, r5, pc}
 8006e8e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e90:	f7fe fd1e 	bl	80058d0 <__retarget_lock_release_recursive>
 8006e94:	4628      	mov	r0, r5
 8006e96:	b003      	add	sp, #12
 8006e98:	bd30      	pop	{r4, r5, pc}
 8006e9a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006e9c:	9101      	str	r1, [sp, #4]
 8006e9e:	f7fe fd15 	bl	80058cc <__retarget_lock_acquire_recursive>
 8006ea2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ea6:	9901      	ldr	r1, [sp, #4]
 8006ea8:	b29a      	uxth	r2, r3
 8006eaa:	e7d9      	b.n	8006e60 <_fputwc_r+0x18>

08006eac <_fstat_r>:
 8006eac:	b538      	push	{r3, r4, r5, lr}
 8006eae:	460b      	mov	r3, r1
 8006eb0:	4c07      	ldr	r4, [pc, #28]	; (8006ed0 <_fstat_r+0x24>)
 8006eb2:	4605      	mov	r5, r0
 8006eb4:	4611      	mov	r1, r2
 8006eb6:	4618      	mov	r0, r3
 8006eb8:	2300      	movs	r3, #0
 8006eba:	6023      	str	r3, [r4, #0]
 8006ebc:	f7fb f9dc 	bl	8002278 <_fstat>
 8006ec0:	1c43      	adds	r3, r0, #1
 8006ec2:	d000      	beq.n	8006ec6 <_fstat_r+0x1a>
 8006ec4:	bd38      	pop	{r3, r4, r5, pc}
 8006ec6:	6823      	ldr	r3, [r4, #0]
 8006ec8:	2b00      	cmp	r3, #0
 8006eca:	d0fb      	beq.n	8006ec4 <_fstat_r+0x18>
 8006ecc:	602b      	str	r3, [r5, #0]
 8006ece:	bd38      	pop	{r3, r4, r5, pc}
 8006ed0:	20000b10 	.word	0x20000b10

08006ed4 <_isatty_r>:
 8006ed4:	b538      	push	{r3, r4, r5, lr}
 8006ed6:	4c07      	ldr	r4, [pc, #28]	; (8006ef4 <_isatty_r+0x20>)
 8006ed8:	2300      	movs	r3, #0
 8006eda:	4605      	mov	r5, r0
 8006edc:	4608      	mov	r0, r1
 8006ede:	6023      	str	r3, [r4, #0]
 8006ee0:	f7fb f9cf 	bl	8002282 <_isatty>
 8006ee4:	1c43      	adds	r3, r0, #1
 8006ee6:	d000      	beq.n	8006eea <_isatty_r+0x16>
 8006ee8:	bd38      	pop	{r3, r4, r5, pc}
 8006eea:	6823      	ldr	r3, [r4, #0]
 8006eec:	2b00      	cmp	r3, #0
 8006eee:	d0fb      	beq.n	8006ee8 <_isatty_r+0x14>
 8006ef0:	602b      	str	r3, [r5, #0]
 8006ef2:	bd38      	pop	{r3, r4, r5, pc}
 8006ef4:	20000b10 	.word	0x20000b10

08006ef8 <__locale_mb_cur_max>:
 8006ef8:	4b04      	ldr	r3, [pc, #16]	; (8006f0c <__locale_mb_cur_max+0x14>)
 8006efa:	4a05      	ldr	r2, [pc, #20]	; (8006f10 <__locale_mb_cur_max+0x18>)
 8006efc:	681b      	ldr	r3, [r3, #0]
 8006efe:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006f00:	2b00      	cmp	r3, #0
 8006f02:	bf08      	it	eq
 8006f04:	4613      	moveq	r3, r2
 8006f06:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006f0a:	4770      	bx	lr
 8006f0c:	20000018 	.word	0x20000018
 8006f10:	2000085c 	.word	0x2000085c

08006f14 <_lseek_r>:
 8006f14:	b570      	push	{r4, r5, r6, lr}
 8006f16:	460d      	mov	r5, r1
 8006f18:	4c08      	ldr	r4, [pc, #32]	; (8006f3c <_lseek_r+0x28>)
 8006f1a:	4611      	mov	r1, r2
 8006f1c:	4606      	mov	r6, r0
 8006f1e:	461a      	mov	r2, r3
 8006f20:	4628      	mov	r0, r5
 8006f22:	2300      	movs	r3, #0
 8006f24:	6023      	str	r3, [r4, #0]
 8006f26:	f7fb f9ae 	bl	8002286 <_lseek>
 8006f2a:	1c43      	adds	r3, r0, #1
 8006f2c:	d000      	beq.n	8006f30 <_lseek_r+0x1c>
 8006f2e:	bd70      	pop	{r4, r5, r6, pc}
 8006f30:	6823      	ldr	r3, [r4, #0]
 8006f32:	2b00      	cmp	r3, #0
 8006f34:	d0fb      	beq.n	8006f2e <_lseek_r+0x1a>
 8006f36:	6033      	str	r3, [r6, #0]
 8006f38:	bd70      	pop	{r4, r5, r6, pc}
 8006f3a:	bf00      	nop
 8006f3c:	20000b10 	.word	0x20000b10

08006f40 <__ascii_mbtowc>:
 8006f40:	b082      	sub	sp, #8
 8006f42:	b149      	cbz	r1, 8006f58 <__ascii_mbtowc+0x18>
 8006f44:	b15a      	cbz	r2, 8006f5e <__ascii_mbtowc+0x1e>
 8006f46:	b16b      	cbz	r3, 8006f64 <__ascii_mbtowc+0x24>
 8006f48:	7813      	ldrb	r3, [r2, #0]
 8006f4a:	600b      	str	r3, [r1, #0]
 8006f4c:	7812      	ldrb	r2, [r2, #0]
 8006f4e:	1c10      	adds	r0, r2, #0
 8006f50:	bf18      	it	ne
 8006f52:	2001      	movne	r0, #1
 8006f54:	b002      	add	sp, #8
 8006f56:	4770      	bx	lr
 8006f58:	a901      	add	r1, sp, #4
 8006f5a:	2a00      	cmp	r2, #0
 8006f5c:	d1f3      	bne.n	8006f46 <__ascii_mbtowc+0x6>
 8006f5e:	4610      	mov	r0, r2
 8006f60:	b002      	add	sp, #8
 8006f62:	4770      	bx	lr
 8006f64:	f06f 0001 	mvn.w	r0, #1
 8006f68:	e7f4      	b.n	8006f54 <__ascii_mbtowc+0x14>
 8006f6a:	bf00      	nop

08006f6c <_read_r>:
 8006f6c:	b570      	push	{r4, r5, r6, lr}
 8006f6e:	460d      	mov	r5, r1
 8006f70:	4c08      	ldr	r4, [pc, #32]	; (8006f94 <_read_r+0x28>)
 8006f72:	4611      	mov	r1, r2
 8006f74:	4606      	mov	r6, r0
 8006f76:	461a      	mov	r2, r3
 8006f78:	4628      	mov	r0, r5
 8006f7a:	2300      	movs	r3, #0
 8006f7c:	6023      	str	r3, [r4, #0]
 8006f7e:	f7fb f936 	bl	80021ee <_read>
 8006f82:	1c43      	adds	r3, r0, #1
 8006f84:	d000      	beq.n	8006f88 <_read_r+0x1c>
 8006f86:	bd70      	pop	{r4, r5, r6, pc}
 8006f88:	6823      	ldr	r3, [r4, #0]
 8006f8a:	2b00      	cmp	r3, #0
 8006f8c:	d0fb      	beq.n	8006f86 <_read_r+0x1a>
 8006f8e:	6033      	str	r3, [r6, #0]
 8006f90:	bd70      	pop	{r4, r5, r6, pc}
 8006f92:	bf00      	nop
 8006f94:	20000b10 	.word	0x20000b10

08006f98 <__swbuf_r>:
 8006f98:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006f9a:	460d      	mov	r5, r1
 8006f9c:	4614      	mov	r4, r2
 8006f9e:	4606      	mov	r6, r0
 8006fa0:	b110      	cbz	r0, 8006fa8 <__swbuf_r+0x10>
 8006fa2:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006fa4:	2b00      	cmp	r3, #0
 8006fa6:	d043      	beq.n	8007030 <__swbuf_r+0x98>
 8006fa8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006fac:	69a3      	ldr	r3, [r4, #24]
 8006fae:	60a3      	str	r3, [r4, #8]
 8006fb0:	b291      	uxth	r1, r2
 8006fb2:	0708      	lsls	r0, r1, #28
 8006fb4:	d51b      	bpl.n	8006fee <__swbuf_r+0x56>
 8006fb6:	6923      	ldr	r3, [r4, #16]
 8006fb8:	b1cb      	cbz	r3, 8006fee <__swbuf_r+0x56>
 8006fba:	b2ed      	uxtb	r5, r5
 8006fbc:	0489      	lsls	r1, r1, #18
 8006fbe:	462f      	mov	r7, r5
 8006fc0:	d522      	bpl.n	8007008 <__swbuf_r+0x70>
 8006fc2:	6822      	ldr	r2, [r4, #0]
 8006fc4:	6961      	ldr	r1, [r4, #20]
 8006fc6:	1ad3      	subs	r3, r2, r3
 8006fc8:	4299      	cmp	r1, r3
 8006fca:	dd29      	ble.n	8007020 <__swbuf_r+0x88>
 8006fcc:	3301      	adds	r3, #1
 8006fce:	68a1      	ldr	r1, [r4, #8]
 8006fd0:	1c50      	adds	r0, r2, #1
 8006fd2:	3901      	subs	r1, #1
 8006fd4:	60a1      	str	r1, [r4, #8]
 8006fd6:	6020      	str	r0, [r4, #0]
 8006fd8:	7015      	strb	r5, [r2, #0]
 8006fda:	6962      	ldr	r2, [r4, #20]
 8006fdc:	429a      	cmp	r2, r3
 8006fde:	d02a      	beq.n	8007036 <__swbuf_r+0x9e>
 8006fe0:	89a3      	ldrh	r3, [r4, #12]
 8006fe2:	07db      	lsls	r3, r3, #31
 8006fe4:	d501      	bpl.n	8006fea <__swbuf_r+0x52>
 8006fe6:	2d0a      	cmp	r5, #10
 8006fe8:	d025      	beq.n	8007036 <__swbuf_r+0x9e>
 8006fea:	4638      	mov	r0, r7
 8006fec:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8006fee:	4621      	mov	r1, r4
 8006ff0:	4630      	mov	r0, r6
 8006ff2:	f7fc fffd 	bl	8003ff0 <__swsetup_r>
 8006ff6:	bb20      	cbnz	r0, 8007042 <__swbuf_r+0xaa>
 8006ff8:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ffc:	6923      	ldr	r3, [r4, #16]
 8006ffe:	b291      	uxth	r1, r2
 8007000:	b2ed      	uxtb	r5, r5
 8007002:	0489      	lsls	r1, r1, #18
 8007004:	462f      	mov	r7, r5
 8007006:	d4dc      	bmi.n	8006fc2 <__swbuf_r+0x2a>
 8007008:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800700a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800700e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007012:	81a2      	strh	r2, [r4, #12]
 8007014:	6822      	ldr	r2, [r4, #0]
 8007016:	6661      	str	r1, [r4, #100]	; 0x64
 8007018:	6961      	ldr	r1, [r4, #20]
 800701a:	1ad3      	subs	r3, r2, r3
 800701c:	4299      	cmp	r1, r3
 800701e:	dcd5      	bgt.n	8006fcc <__swbuf_r+0x34>
 8007020:	4621      	mov	r1, r4
 8007022:	4630      	mov	r0, r6
 8007024:	f7fe f8a6 	bl	8005174 <_fflush_r>
 8007028:	b958      	cbnz	r0, 8007042 <__swbuf_r+0xaa>
 800702a:	6822      	ldr	r2, [r4, #0]
 800702c:	2301      	movs	r3, #1
 800702e:	e7ce      	b.n	8006fce <__swbuf_r+0x36>
 8007030:	f7fe f8fc 	bl	800522c <__sinit>
 8007034:	e7b8      	b.n	8006fa8 <__swbuf_r+0x10>
 8007036:	4621      	mov	r1, r4
 8007038:	4630      	mov	r0, r6
 800703a:	f7fe f89b 	bl	8005174 <_fflush_r>
 800703e:	2800      	cmp	r0, #0
 8007040:	d0d3      	beq.n	8006fea <__swbuf_r+0x52>
 8007042:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8007046:	e7d0      	b.n	8006fea <__swbuf_r+0x52>

08007048 <_wcrtomb_r>:
 8007048:	b5f0      	push	{r4, r5, r6, r7, lr}
 800704a:	4c11      	ldr	r4, [pc, #68]	; (8007090 <_wcrtomb_r+0x48>)
 800704c:	6824      	ldr	r4, [r4, #0]
 800704e:	b085      	sub	sp, #20
 8007050:	4606      	mov	r6, r0
 8007052:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8007054:	461f      	mov	r7, r3
 8007056:	b151      	cbz	r1, 800706e <_wcrtomb_r+0x26>
 8007058:	4d0e      	ldr	r5, [pc, #56]	; (8007094 <_wcrtomb_r+0x4c>)
 800705a:	2c00      	cmp	r4, #0
 800705c:	bf08      	it	eq
 800705e:	462c      	moveq	r4, r5
 8007060:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007064:	47a0      	blx	r4
 8007066:	1c43      	adds	r3, r0, #1
 8007068:	d00c      	beq.n	8007084 <_wcrtomb_r+0x3c>
 800706a:	b005      	add	sp, #20
 800706c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800706e:	4a09      	ldr	r2, [pc, #36]	; (8007094 <_wcrtomb_r+0x4c>)
 8007070:	2c00      	cmp	r4, #0
 8007072:	bf08      	it	eq
 8007074:	4614      	moveq	r4, r2
 8007076:	460a      	mov	r2, r1
 8007078:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800707c:	a901      	add	r1, sp, #4
 800707e:	47a0      	blx	r4
 8007080:	1c43      	adds	r3, r0, #1
 8007082:	d1f2      	bne.n	800706a <_wcrtomb_r+0x22>
 8007084:	2200      	movs	r2, #0
 8007086:	238a      	movs	r3, #138	; 0x8a
 8007088:	603a      	str	r2, [r7, #0]
 800708a:	6033      	str	r3, [r6, #0]
 800708c:	b005      	add	sp, #20
 800708e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007090:	20000018 	.word	0x20000018
 8007094:	2000085c 	.word	0x2000085c

08007098 <__ascii_wctomb>:
 8007098:	b121      	cbz	r1, 80070a4 <__ascii_wctomb+0xc>
 800709a:	2aff      	cmp	r2, #255	; 0xff
 800709c:	d804      	bhi.n	80070a8 <__ascii_wctomb+0x10>
 800709e:	700a      	strb	r2, [r1, #0]
 80070a0:	2001      	movs	r0, #1
 80070a2:	4770      	bx	lr
 80070a4:	4608      	mov	r0, r1
 80070a6:	4770      	bx	lr
 80070a8:	238a      	movs	r3, #138	; 0x8a
 80070aa:	6003      	str	r3, [r0, #0]
 80070ac:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80070b0:	4770      	bx	lr
 80070b2:	bf00      	nop

080070b4 <_init>:
 80070b4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80070b6:	bf00      	nop
 80070b8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80070ba:	bc08      	pop	{r3}
 80070bc:	469e      	mov	lr, r3
 80070be:	4770      	bx	lr

080070c0 <_fini>:
 80070c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80070c2:	bf00      	nop
 80070c4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80070c6:	bc08      	pop	{r3}
 80070c8:	469e      	mov	lr, r3
 80070ca:	4770      	bx	lr
 80070cc:	0000      	movs	r0, r0
	...
