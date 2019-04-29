
ludcmp.elf:     file format elf32-littlearm


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
 80001e0:	0800737c 	.word	0x0800737c

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
 80001fc:	0800737c 	.word	0x0800737c

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
 8001108:	f640 20a0 	movw	r0, #2720	; 0xaa0
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20a0 	movw	r0, #2720	; 0xaa0
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
 80013e8:	f247 42d0 	movw	r2, #29904	; 0x74d0
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
 8001462:	f247 42c8 	movw	r2, #29896	; 0x74c8
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
 800148c:	f247 42c8 	movw	r2, #29896	; 0x74c8
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
 8001842:	f640 21a4 	movw	r1, #2724	; 0xaa4
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
 800188c:	f640 20a4 	movw	r0, #2724	; 0xaa4
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20a4 	movw	r0, #2724	; 0xaa4
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
 80019d4:	f247 5300 	movw	r3, #29952	; 0x7500
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
 80019fc:	f247 5310 	movw	r3, #29968	; 0x7510
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

08001eb6 <ludcmp>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001ebe:	b08e      	sub	sp, #56	; 0x38
 8001ec0:	4605      	mov	r5, r0
 8001ec2:	f240 31e7 	movw	r1, #999	; 0x3e7
 8001ec6:	2d63      	cmp	r5, #99	; 0x63
 8001ec8:	f300 810e 	bgt.w	80020e8 <ludcmp+0x232>
 8001ecc:	eeb5 0ac0 	vcmpe.f32	s0, #0.0
 8001ed0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001ed4:	f240 8108 	bls.w	80020e8 <ludcmp+0x232>
 8001ed8:	2d00      	cmp	r5, #0
 8001eda:	f340 80ab 	ble.w	8002034 <ludcmp+0x17e>
 8001ede:	f640 3c1c 	movw	ip, #2844	; 0xb1c
 8001ee2:	f105 0901 	add.w	r9, r5, #1
 8001ee6:	2600      	movs	r6, #0
 8001ee8:	2301      	movs	r3, #1
 8001eea:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8001eee:	f10c 0004 	add.w	r0, ip, #4
 8001ef2:	f10c 0a24 	add.w	sl, ip, #36	; 0x24
 8001ef6:	e9cd 5001 	strd	r5, r0, [sp, #4]
 8001efa:	f8cd c00c 	str.w	ip, [sp, #12]
 8001efe:	f8cd a000 	str.w	sl, [sp]
 8001f02:	eb06 00c6 	add.w	r0, r6, r6, lsl #3
 8001f06:	eb0c 0080 	add.w	r0, ip, r0, lsl #2
 8001f0a:	eb00 0286 	add.w	r2, r0, r6, lsl #2
 8001f0e:	ed92 1a00 	vldr	s2, [r2]
 8001f12:	eeb5 1ac0 	vcmpe.f32	s2, #0.0
 8001f16:	eeb1 2a41 	vneg.f32	s4, s2
 8001f1a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f1e:	bfb8      	it	lt
 8001f20:	eeb0 1a42 	vmovlt.f32	s2, s4
 8001f24:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8001f28:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8001f2c:	f240 80db 	bls.w	80020e6 <ludcmp+0x230>
 8001f30:	f106 0b01 	add.w	fp, r6, #1
 8001f34:	4650      	mov	r0, sl
 8001f36:	465c      	mov	r4, fp
 8001f38:	eb04 01c4 	add.w	r1, r4, r4, lsl #3
 8001f3c:	2e01      	cmp	r6, #1
 8001f3e:	eb0c 0181 	add.w	r1, ip, r1, lsl #2
 8001f42:	eb01 0c86 	add.w	ip, r1, r6, lsl #2
 8001f46:	ed9c 1a00 	vldr	s2, [ip]
 8001f4a:	db11      	blt.n	8001f70 <ludcmp+0xba>
 8001f4c:	f8dd 800c 	ldr.w	r8, [sp, #12]
 8001f50:	f04f 0e00 	mov.w	lr, #0
 8001f54:	4605      	mov	r5, r0
 8001f56:	ed98 2a00 	vldr	s4, [r8]
 8001f5a:	ed95 3a00 	vldr	s6, [r5]
 8001f5e:	f10e 0e01 	add.w	lr, lr, #1
 8001f62:	f108 0824 	add.w	r8, r8, #36	; 0x24
 8001f66:	3504      	adds	r5, #4
 8001f68:	4576      	cmp	r6, lr
 8001f6a:	ee03 1a42 	vmls.f32	s2, s6, s4
 8001f6e:	d1f2      	bne.n	8001f56 <ludcmp+0xa0>
 8001f70:	ed92 2a00 	vldr	s4, [r2]
 8001f74:	3401      	adds	r4, #1
 8001f76:	3024      	adds	r0, #36	; 0x24
 8001f78:	454c      	cmp	r4, r9
 8001f7a:	ee81 1a02 	vdiv.f32	s2, s2, s4
 8001f7e:	ed8c 1a00 	vstr	s2, [ip]
 8001f82:	f640 3c1c 	movw	ip, #2844	; 0xb1c
 8001f86:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8001f8a:	d1d5      	bne.n	8001f38 <ludcmp+0x82>
 8001f8c:	9a02      	ldr	r2, [sp, #8]
 8001f8e:	465c      	mov	r4, fp
 8001f90:	eb0b 00cb 	add.w	r0, fp, fp, lsl #3
 8001f94:	2500      	movs	r5, #0
 8001f96:	4651      	mov	r1, sl
 8001f98:	eb0c 0080 	add.w	r0, ip, r0, lsl #2
 8001f9c:	eb00 0684 	add.w	r6, r0, r4, lsl #2
 8001fa0:	4610      	mov	r0, r2
 8001fa2:	ed96 1a00 	vldr	s2, [r6]
 8001fa6:	ed90 2a00 	vldr	s4, [r0]
 8001faa:	ed91 3a00 	vldr	s6, [r1]
 8001fae:	3501      	adds	r5, #1
 8001fb0:	3024      	adds	r0, #36	; 0x24
 8001fb2:	3104      	adds	r1, #4
 8001fb4:	42ab      	cmp	r3, r5
 8001fb6:	ee03 1a42 	vmls.f32	s2, s6, s4
 8001fba:	d1f4      	bne.n	8001fa6 <ludcmp+0xf0>
 8001fbc:	3401      	adds	r4, #1
 8001fbe:	3204      	adds	r2, #4
 8001fc0:	ed86 1a00 	vstr	s2, [r6]
 8001fc4:	454c      	cmp	r4, r9
 8001fc6:	d1e3      	bne.n	8001f90 <ludcmp+0xda>
 8001fc8:	9802      	ldr	r0, [sp, #8]
 8001fca:	f10a 0a24 	add.w	sl, sl, #36	; 0x24
 8001fce:	3301      	adds	r3, #1
 8001fd0:	465e      	mov	r6, fp
 8001fd2:	3004      	adds	r0, #4
 8001fd4:	9002      	str	r0, [sp, #8]
 8001fd6:	9803      	ldr	r0, [sp, #12]
 8001fd8:	3004      	adds	r0, #4
 8001fda:	9003      	str	r0, [sp, #12]
 8001fdc:	9801      	ldr	r0, [sp, #4]
 8001fde:	4583      	cmp	fp, r0
 8001fe0:	db8f      	blt.n	8001f02 <ludcmp+0x4c>
 8001fe2:	f640 2ce8 	movw	ip, #2792	; 0xae8
 8001fe6:	9d01      	ldr	r5, [sp, #4]
 8001fe8:	9900      	ldr	r1, [sp, #0]
 8001fea:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8001fee:	f8dc 0000 	ldr.w	r0, [ip]
 8001ff2:	2d01      	cmp	r5, #1
 8001ff4:	9004      	str	r0, [sp, #16]
 8001ff6:	db23      	blt.n	8002040 <ludcmp+0x18a>
 8001ff8:	2201      	movs	r2, #1
 8001ffa:	ac04      	add	r4, sp, #16
 8001ffc:	eb0c 0082 	add.w	r0, ip, r2, lsl #2
 8002000:	2600      	movs	r6, #0
 8002002:	4623      	mov	r3, r4
 8002004:	ed90 0a00 	vldr	s0, [r0]
 8002008:	4608      	mov	r0, r1
 800200a:	ed93 1a00 	vldr	s2, [r3]
 800200e:	ecb0 2a01 	vldmia	r0!, {s4}
 8002012:	3601      	adds	r6, #1
 8002014:	3304      	adds	r3, #4
 8002016:	42b2      	cmp	r2, r6
 8002018:	ee02 0a41 	vmls.f32	s0, s4, s2
 800201c:	d1f5      	bne.n	800200a <ludcmp+0x154>
 800201e:	eb04 0082 	add.w	r0, r4, r2, lsl #2
 8002022:	3124      	adds	r1, #36	; 0x24
 8002024:	42aa      	cmp	r2, r5
 8002026:	ed80 0a00 	vstr	s0, [r0]
 800202a:	f102 0001 	add.w	r0, r2, #1
 800202e:	4602      	mov	r2, r0
 8002030:	d1e4      	bne.n	8001ffc <ludcmp+0x146>
 8002032:	e005      	b.n	8002040 <ludcmp+0x18a>
 8002034:	f640 20e8 	movw	r0, #2792	; 0xae8
 8002038:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800203c:	6800      	ldr	r0, [r0, #0]
 800203e:	9004      	str	r0, [sp, #16]
 8002040:	f640 3c1c 	movw	ip, #2844	; 0xb1c
 8002044:	eb05 00c5 	add.w	r0, r5, r5, lsl #3
 8002048:	f10d 0e10 	add.w	lr, sp, #16
 800204c:	f640 3800 	movw	r8, #2816	; 0xb00
 8002050:	2d01      	cmp	r5, #1
 8002052:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002056:	eb0e 0185 	add.w	r1, lr, r5, lsl #2
 800205a:	f2c2 0800 	movt	r8, #8192	; 0x2000
 800205e:	eb0c 0080 	add.w	r0, ip, r0, lsl #2
 8002062:	ed91 0a00 	vldr	s0, [r1]
 8002066:	eb08 0985 	add.w	r9, r8, r5, lsl #2
 800206a:	eb00 0085 	add.w	r0, r0, r5, lsl #2
 800206e:	ed90 1a00 	vldr	s2, [r0]
 8002072:	ee80 0a01 	vdiv.f32	s0, s0, s2
 8002076:	ed89 0a00 	vstr	s0, [r9]
 800207a:	db32      	blt.n	80020e2 <ludcmp+0x22c>
 800207c:	eb05 0085 	add.w	r0, r5, r5, lsl #2
 8002080:	1e6b      	subs	r3, r5, #1
 8002082:	462a      	mov	r2, r5
 8002084:	eb0c 00c0 	add.w	r0, ip, r0, lsl #3
 8002088:	f1a0 0a24 	sub.w	sl, r0, #36	; 0x24
 800208c:	1e51      	subs	r1, r2, #1
 800208e:	42aa      	cmp	r2, r5
 8002090:	eb0e 0081 	add.w	r0, lr, r1, lsl #2
 8002094:	ed90 0a00 	vldr	s0, [r0]
 8002098:	dc0c      	bgt.n	80020b4 <ludcmp+0x1fe>
 800209a:	4650      	mov	r0, sl
 800209c:	464e      	mov	r6, r9
 800209e:	461c      	mov	r4, r3
 80020a0:	ed96 1a00 	vldr	s2, [r6]
 80020a4:	ecb0 2a01 	vldmia	r0!, {s4}
 80020a8:	3401      	adds	r4, #1
 80020aa:	3604      	adds	r6, #4
 80020ac:	42ac      	cmp	r4, r5
 80020ae:	ee02 0a41 	vmls.f32	s0, s4, s2
 80020b2:	dbf5      	blt.n	80020a0 <ludcmp+0x1ea>
 80020b4:	eb01 00c1 	add.w	r0, r1, r1, lsl #3
 80020b8:	2a01      	cmp	r2, #1
 80020ba:	f1aa 0a28 	sub.w	sl, sl, #40	; 0x28
 80020be:	f1a9 0904 	sub.w	r9, r9, #4
 80020c2:	f1a3 0301 	sub.w	r3, r3, #1
 80020c6:	460a      	mov	r2, r1
 80020c8:	eb0c 0080 	add.w	r0, ip, r0, lsl #2
 80020cc:	eb00 0081 	add.w	r0, r0, r1, lsl #2
 80020d0:	ed90 1a00 	vldr	s2, [r0]
 80020d4:	eb08 0081 	add.w	r0, r8, r1, lsl #2
 80020d8:	ee80 0a01 	vdiv.f32	s0, s0, s2
 80020dc:	ed80 0a00 	vstr	s0, [r0]
 80020e0:	dcd4      	bgt.n	800208c <ludcmp+0x1d6>
 80020e2:	2100      	movs	r1, #0
 80020e4:	e000      	b.n	80020e8 <ludcmp+0x232>
 80020e6:	2101      	movs	r1, #1
 80020e8:	4608      	mov	r0, r1
 80020ea:	b00e      	add	sp, #56	; 0x38
 80020ec:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80020f0:	bdf0      	pop	{r4, r5, r6, r7, pc}

080020f2 <initialise_benchmark>:
 80020f2:	4770      	bx	lr

080020f4 <benchmark>:
 80020f4:	b5f0      	push	{r4, r5, r6, r7, lr}
 80020f6:	af03      	add	r7, sp, #12
 80020f8:	f84d bd04 	str.w	fp, [sp, #-4]!
 80020fc:	f640 301c 	movw	r0, #2844	; 0xb1c
 8002100:	2100      	movs	r1, #0
 8002102:	2500      	movs	r5, #0
 8002104:	f240 0e00 	movw	lr, #0
 8002108:	2300      	movs	r3, #0
 800210a:	f240 0c00 	movw	ip, #0
 800210e:	2200      	movs	r2, #0
 8002110:	f04f 4481 	mov.w	r4, #1082130432	; 0x40800000
 8002114:	2600      	movs	r6, #0
 8002116:	ed9f 0a3d 	vldr	s0, [pc, #244]	; 800220c <benchmark+0x118>
 800211a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800211e:	f2c4 11a0 	movt	r1, #16800	; 0x41a0
 8002122:	f2c4 2534 	movt	r5, #16948	; 0x4234
 8002126:	f2c4 0e40 	movt	lr, #16448	; 0x4040
 800212a:	f2c4 03a0 	movt	r3, #16544	; 0x40a0
 800212e:	f2c4 0cc0 	movt	ip, #16576	; 0x40c0
 8002132:	f2c4 02e0 	movt	r2, #16608	; 0x40e0
 8002136:	f2c4 1620 	movt	r6, #16672	; 0x4120
 800213a:	6001      	str	r1, [r0, #0]
 800213c:	f640 21e8 	movw	r1, #2792	; 0xae8
 8002140:	f8c0 e004 	str.w	lr, [r0, #4]
 8002144:	6084      	str	r4, [r0, #8]
 8002146:	60c3      	str	r3, [r0, #12]
 8002148:	f8c0 c010 	str.w	ip, [r0, #16]
 800214c:	6142      	str	r2, [r0, #20]
 800214e:	f8c0 e024 	str.w	lr, [r0, #36]	; 0x24
 8002152:	f04f 4e82 	mov.w	lr, #1090519040	; 0x41000000
 8002156:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800215a:	600d      	str	r5, [r1, #0]
 800215c:	2500      	movs	r5, #0
 800215e:	f2c4 2520 	movt	r5, #16928	; 0x4220
 8002162:	e9c0 530a 	strd	r5, r3, [r0, #40]	; 0x28
 8002166:	2500      	movs	r5, #0
 8002168:	e9c0 c20c 	strd	ip, r2, [r0, #48]	; 0x30
 800216c:	f8c0 e038 	str.w	lr, [r0, #56]	; 0x38
 8002170:	f2c4 258a 	movt	r5, #17034	; 0x428a
 8002174:	604d      	str	r5, [r1, #4]
 8002176:	e9c0 4312 	strd	r4, r3, [r0, #72]	; 0x48
 800217a:	2400      	movs	r4, #0
 800217c:	2500      	movs	r5, #0
 800217e:	f2c4 2470 	movt	r4, #17008	; 0x4270
 8002182:	f2c4 25ba 	movt	r5, #17082	; 0x42ba
 8002186:	e9c0 4214 	strd	r4, r2, [r0, #80]	; 0x50
 800218a:	2400      	movs	r4, #0
 800218c:	608d      	str	r5, [r1, #8]
 800218e:	2500      	movs	r5, #0
 8002190:	f8c0 e058 	str.w	lr, [r0, #88]	; 0x58
 8002194:	f2c4 1410 	movt	r4, #16656	; 0x4110
 8002198:	f2c4 25ea 	movt	r5, #17130	; 0x42ea
 800219c:	65c4      	str	r4, [r0, #92]	; 0x5c
 800219e:	e9c0 3c1b 	strd	r3, ip, [r0, #108]	; 0x6c
 80021a2:	2300      	movs	r3, #0
 80021a4:	6742      	str	r2, [r0, #116]	; 0x74
 80021a6:	f2c4 23a0 	movt	r3, #17056	; 0x42a0
 80021aa:	e9c0 341e 	strd	r3, r4, [r0, #120]	; 0x78
 80021ae:	2300      	movs	r3, #0
 80021b0:	60cd      	str	r5, [r1, #12]
 80021b2:	2500      	movs	r5, #0
 80021b4:	f8c0 6080 	str.w	r6, [r0, #128]	; 0x80
 80021b8:	e9c0 c224 	strd	ip, r2, [r0, #144]	; 0x90
 80021bc:	e9c0 e426 	strd	lr, r4, [r0, #152]	; 0x98
 80021c0:	f2c4 25c8 	movt	r5, #17096	; 0x42c8
 80021c4:	f2c4 330d 	movt	r3, #17165	; 0x430d
 80021c8:	f8c0 50a0 	str.w	r5, [r0, #160]	; 0xa0
 80021cc:	2500      	movs	r5, #0
 80021ce:	610b      	str	r3, [r1, #16]
 80021d0:	2300      	movs	r3, #0
 80021d2:	f2c4 1530 	movt	r5, #16688	; 0x4130
 80021d6:	f2c4 23f0 	movt	r3, #17136	; 0x42f0
 80021da:	f8c0 50a4 	str.w	r5, [r0, #164]	; 0xa4
 80021de:	e9c0 2e2d 	strd	r2, lr, [r0, #180]	; 0xb4
 80021e2:	e9c0 462f 	strd	r4, r6, [r0, #188]	; 0xbc
 80021e6:	e9c0 5331 	strd	r5, r3, [r0, #196]	; 0xc4
 80021ea:	2000      	movs	r0, #0
 80021ec:	f2c4 3025 	movt	r0, #17189	; 0x4325
 80021f0:	6148      	str	r0, [r1, #20]
 80021f2:	2005      	movs	r0, #5
 80021f4:	f7ff fe5f 	bl	8001eb6 <ludcmp>
 80021f8:	f640 3118 	movw	r1, #2840	; 0xb18
 80021fc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002200:	6008      	str	r0, [r1, #0]
 8002202:	2000      	movs	r0, #0
 8002204:	f85d bb04 	ldr.w	fp, [sp], #4
 8002208:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800220a:	bf00      	nop
 800220c:	358637bd 	.word	0x358637bd

08002210 <verify_benchmark>:
 8002210:	b580      	push	{r7, lr}
 8002212:	466f      	mov	r7, sp
 8002214:	f640 21e8 	movw	r1, #2792	; 0xae8
 8002218:	ed9f 0a6c 	vldr	s0, [pc, #432]	; 80023cc <verify_benchmark+0x1bc>
 800221c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002220:	ed91 1a00 	vldr	s2, [r1]
 8002224:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8002228:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800222c:	f040 80cc 	bne.w	80023c8 <verify_benchmark+0x1b8>
 8002230:	f640 3200 	movw	r2, #2816	; 0xb00
 8002234:	eeb7 0a00 	vmov.f32	s0, #112	; 0x3f800000  1.0
 8002238:	2000      	movs	r0, #0
 800223a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800223e:	ed92 1a00 	vldr	s2, [r2]
 8002242:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8002246:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800224a:	f040 80be 	bne.w	80023ca <verify_benchmark+0x1ba>
 800224e:	ed91 1a01 	vldr	s2, [r1, #4]
 8002252:	ed9f 2a5f 	vldr	s4, [pc, #380]	; 80023d0 <verify_benchmark+0x1c0>
 8002256:	eeb4 1ac2 	vcmpe.f32	s2, s4
 800225a:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800225e:	bf02      	ittt	eq
 8002260:	ed92 1a01 	vldreq	s2, [r2, #4]
 8002264:	eeb4 1ac0 	vcmpeeq.f32	s2, s0
 8002268:	eef1 fa10 	vmrseq	APSR_nzcv, fpscr
 800226c:	f040 80ad 	bne.w	80023ca <verify_benchmark+0x1ba>
 8002270:	ed91 1a02 	vldr	s2, [r1, #8]
 8002274:	ed9f 2a57 	vldr	s4, [pc, #348]	; 80023d4 <verify_benchmark+0x1c4>
 8002278:	eeb4 1ac2 	vcmpe.f32	s2, s4
 800227c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002280:	bf01      	itttt	eq
 8002282:	ed92 1a02 	vldreq	s2, [r2, #8]
 8002286:	ed9f 2a54 	vldreq	s4, [pc, #336]	; 80023d8 <verify_benchmark+0x1c8>
 800228a:	eeb4 1ac2 	vcmpeeq.f32	s2, s4
 800228e:	eef1 fa10 	vmrseq	APSR_nzcv, fpscr
 8002292:	f040 809a 	bne.w	80023ca <verify_benchmark+0x1ba>
 8002296:	ed91 1a03 	vldr	s2, [r1, #12]
 800229a:	ed9f 2a50 	vldr	s4, [pc, #320]	; 80023dc <verify_benchmark+0x1cc>
 800229e:	eeb4 1ac2 	vcmpe.f32	s2, s4
 80022a2:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80022a6:	bf02      	ittt	eq
 80022a8:	ed92 1a03 	vldreq	s2, [r2, #12]
 80022ac:	eeb4 1ac0 	vcmpeeq.f32	s2, s0
 80022b0:	eef1 fa10 	vmrseq	APSR_nzcv, fpscr
 80022b4:	f040 8089 	bne.w	80023ca <verify_benchmark+0x1ba>
 80022b8:	ed91 1a04 	vldr	s2, [r1, #16]
 80022bc:	ed9f 2a48 	vldr	s4, [pc, #288]	; 80023e0 <verify_benchmark+0x1d0>
 80022c0:	eeb4 1ac2 	vcmpe.f32	s2, s4
 80022c4:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80022c8:	bf01      	itttt	eq
 80022ca:	ed92 1a04 	vldreq	s2, [r2, #16]
 80022ce:	ed9f 2a45 	vldreq	s4, [pc, #276]	; 80023e4 <verify_benchmark+0x1d4>
 80022d2:	eeb4 1ac2 	vcmpeeq.f32	s2, s4
 80022d6:	eef1 fa10 	vmrseq	APSR_nzcv, fpscr
 80022da:	d176      	bne.n	80023ca <verify_benchmark+0x1ba>
 80022dc:	ed91 1a05 	vldr	s2, [r1, #20]
 80022e0:	ed9f 2a41 	vldr	s4, [pc, #260]	; 80023e8 <verify_benchmark+0x1d8>
 80022e4:	eeb4 1ac2 	vcmpe.f32	s2, s4
 80022e8:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80022ec:	bf02      	ittt	eq
 80022ee:	ed92 1a05 	vldreq	s2, [r2, #20]
 80022f2:	eeb4 1ac0 	vcmpeeq.f32	s2, s0
 80022f6:	eef1 fa10 	vmrseq	APSR_nzcv, fpscr
 80022fa:	d166      	bne.n	80023ca <verify_benchmark+0x1ba>
 80022fc:	f640 3c1c 	movw	ip, #2844	; 0xb1c
 8002300:	f247 3e98 	movw	lr, #29592	; 0x7398
 8002304:	2100      	movs	r1, #0
 8002306:	2200      	movs	r2, #0
 8002308:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800230c:	f6c0 0e00 	movt	lr, #2048	; 0x800
 8002310:	e005      	b.n	800231e <verify_benchmark+0x10e>
 8002312:	3201      	adds	r2, #1
 8002314:	2001      	movs	r0, #1
 8002316:	3124      	adds	r1, #36	; 0x24
 8002318:	2a08      	cmp	r2, #8
 800231a:	bfa8      	it	ge
 800231c:	bd80      	popge	{r7, pc}
 800231e:	eb0c 0001 	add.w	r0, ip, r1
 8002322:	eb0e 0301 	add.w	r3, lr, r1
 8002326:	ed93 0a00 	vldr	s0, [r3]
 800232a:	ed90 1a00 	vldr	s2, [r0]
 800232e:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8002332:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002336:	bf01      	itttt	eq
 8002338:	ed93 0a01 	vldreq	s0, [r3, #4]
 800233c:	ed90 1a01 	vldreq	s2, [r0, #4]
 8002340:	eeb4 1ac0 	vcmpeeq.f32	s2, s0
 8002344:	eef1 fa10 	vmrseq	APSR_nzcv, fpscr
 8002348:	bf01      	itttt	eq
 800234a:	ed93 0a02 	vldreq	s0, [r3, #8]
 800234e:	ed90 1a02 	vldreq	s2, [r0, #8]
 8002352:	eeb4 1ac0 	vcmpeeq.f32	s2, s0
 8002356:	eef1 fa10 	vmrseq	APSR_nzcv, fpscr
 800235a:	d135      	bne.n	80023c8 <verify_benchmark+0x1b8>
 800235c:	ed93 0a03 	vldr	s0, [r3, #12]
 8002360:	ed90 1a03 	vldr	s2, [r0, #12]
 8002364:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8002368:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800236c:	bf01      	itttt	eq
 800236e:	ed93 0a04 	vldreq	s0, [r3, #16]
 8002372:	ed90 1a04 	vldreq	s2, [r0, #16]
 8002376:	eeb4 1ac0 	vcmpeeq.f32	s2, s0
 800237a:	eef1 fa10 	vmrseq	APSR_nzcv, fpscr
 800237e:	d123      	bne.n	80023c8 <verify_benchmark+0x1b8>
 8002380:	ed93 0a05 	vldr	s0, [r3, #20]
 8002384:	ed90 1a05 	vldr	s2, [r0, #20]
 8002388:	eeb4 1ac0 	vcmpe.f32	s2, s0
 800238c:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002390:	bf01      	itttt	eq
 8002392:	ed93 0a06 	vldreq	s0, [r3, #24]
 8002396:	ed90 1a06 	vldreq	s2, [r0, #24]
 800239a:	eeb4 1ac0 	vcmpeeq.f32	s2, s0
 800239e:	eef1 fa10 	vmrseq	APSR_nzcv, fpscr
 80023a2:	d111      	bne.n	80023c8 <verify_benchmark+0x1b8>
 80023a4:	ed93 0a07 	vldr	s0, [r3, #28]
 80023a8:	ed90 1a07 	vldr	s2, [r0, #28]
 80023ac:	eeb4 1ac0 	vcmpe.f32	s2, s0
 80023b0:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80023b4:	bf01      	itttt	eq
 80023b6:	ed93 0a08 	vldreq	s0, [r3, #32]
 80023ba:	ed90 1a08 	vldreq	s2, [r0, #32]
 80023be:	eeb4 1ac0 	vcmpeeq.f32	s2, s0
 80023c2:	eef1 fa10 	vmrseq	APSR_nzcv, fpscr
 80023c6:	d0a4      	beq.n	8002312 <verify_benchmark+0x102>
 80023c8:	2000      	movs	r0, #0
 80023ca:	bd80      	pop	{r7, pc}
 80023cc:	42340000 	.word	0x42340000
 80023d0:	428a0000 	.word	0x428a0000
 80023d4:	42ba0000 	.word	0x42ba0000
 80023d8:	3f7ffffd 	.word	0x3f7ffffd
 80023dc:	42ea0000 	.word	0x42ea0000
 80023e0:	430d0000 	.word	0x430d0000
 80023e4:	3f800001 	.word	0x3f800001
 80023e8:	43250000 	.word	0x43250000

080023ec <__io_putchar>:
 80023ec:	b580      	push	{r7, lr}
 80023ee:	466f      	mov	r7, sp
 80023f0:	b082      	sub	sp, #8
 80023f2:	9001      	str	r0, [sp, #4]
 80023f4:	f640 10e4 	movw	r0, #2532	; 0x9e4
 80023f8:	a901      	add	r1, sp, #4
 80023fa:	2201      	movs	r2, #1
 80023fc:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002400:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002404:	f7ff fc69 	bl	8001cda <HAL_UART_Transmit>
 8002408:	9801      	ldr	r0, [sp, #4]
 800240a:	b002      	add	sp, #8
 800240c:	bd80      	pop	{r7, pc}

0800240e <main>:
 800240e:	b5b0      	push	{r4, r5, r7, lr}
 8002410:	af02      	add	r7, sp, #8
 8002412:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8002416:	f643 0000 	movw	r0, #14336	; 0x3800
 800241a:	220c      	movs	r2, #12
 800241c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002420:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002424:	6008      	str	r0, [r1, #0]
 8002426:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 800242a:	6048      	str	r0, [r1, #4]
 800242c:	2000      	movs	r0, #0
 800242e:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002432:	6108      	str	r0, [r1, #16]
 8002434:	6248      	str	r0, [r1, #36]	; 0x24
 8002436:	e9c1 0007 	strd	r0, r0, [r1, #28]
 800243a:	e9c1 2005 	strd	r2, r0, [r1, #20]
 800243e:	2000      	movs	r0, #0
 8002440:	f7ff fce0 	bl	8001e04 <BSP_COM_Init>
 8002444:	f7ff fe55 	bl	80020f2 <initialise_benchmark>
 8002448:	f247 5020 	movw	r0, #29984	; 0x7520
 800244c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002450:	f000 f948 	bl	80026e4 <printf>
 8002454:	f247 50c9 	movw	r0, #30153	; 0x75c9
 8002458:	f6c0 0000 	movt	r0, #2048	; 0x800
 800245c:	f000 f9a4 	bl	80027a8 <puts>
 8002460:	f7fe fe42 	bl	80010e8 <HAL_Init>
 8002464:	f7fe fe58 	bl	8001118 <HAL_GetTick>
 8002468:	4604      	mov	r4, r0
 800246a:	f7ff fe43 	bl	80020f4 <benchmark>
 800246e:	4605      	mov	r5, r0
 8002470:	f7fe fe52 	bl	8001118 <HAL_GetTick>
 8002474:	1b04      	subs	r4, r0, r4
 8002476:	4628      	mov	r0, r5
 8002478:	f7ff feca 	bl	8002210 <verify_benchmark>
 800247c:	1c41      	adds	r1, r0, #1
 800247e:	d006      	beq.n	800248e <main+0x80>
 8002480:	2801      	cmp	r0, #1
 8002482:	d109      	bne.n	8002498 <main+0x8a>
 8002484:	f247 5035 	movw	r0, #30005	; 0x7535
 8002488:	f6c0 0000 	movt	r0, #2048	; 0x800
 800248c:	e008      	b.n	80024a0 <main+0x92>
 800248e:	f247 5059 	movw	r0, #30041	; 0x7559
 8002492:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002496:	e003      	b.n	80024a0 <main+0x92>
 8002498:	f247 508e 	movw	r0, #30094	; 0x758e
 800249c:	f6c0 0000 	movt	r0, #2048	; 0x800
 80024a0:	4621      	mov	r1, r4
 80024a2:	f000 f91f 	bl	80026e4 <printf>
 80024a6:	2000      	movs	r0, #0
 80024a8:	bdb0      	pop	{r4, r5, r7, pc}

080024aa <SysTick_Handler>:
 80024aa:	b580      	push	{r7, lr}
 80024ac:	466f      	mov	r7, sp
 80024ae:	f7fe fe2b 	bl	8001108 <HAL_IncTick>
 80024b2:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80024b6:	f7fe be85 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

080024ba <_read>:
 80024ba:	b5f0      	push	{r4, r5, r6, r7, lr}
 80024bc:	af03      	add	r7, sp, #12
 80024be:	f84d bd04 	str.w	fp, [sp, #-4]!
 80024c2:	4614      	mov	r4, r2
 80024c4:	460d      	mov	r5, r1
 80024c6:	2c01      	cmp	r4, #1
 80024c8:	db06      	blt.n	80024d8 <_read+0x1e>
 80024ca:	4626      	mov	r6, r4
 80024cc:	f3af 8000 	nop.w
 80024d0:	f805 0b01 	strb.w	r0, [r5], #1
 80024d4:	3e01      	subs	r6, #1
 80024d6:	d1f9      	bne.n	80024cc <_read+0x12>
 80024d8:	4620      	mov	r0, r4
 80024da:	f85d bb04 	ldr.w	fp, [sp], #4
 80024de:	bdf0      	pop	{r4, r5, r6, r7, pc}

080024e0 <_write>:
 80024e0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80024e2:	af03      	add	r7, sp, #12
 80024e4:	f84d bd04 	str.w	fp, [sp, #-4]!
 80024e8:	4614      	mov	r4, r2
 80024ea:	460d      	mov	r5, r1
 80024ec:	2c01      	cmp	r4, #1
 80024ee:	db06      	blt.n	80024fe <_write+0x1e>
 80024f0:	4626      	mov	r6, r4
 80024f2:	f815 0b01 	ldrb.w	r0, [r5], #1
 80024f6:	f7ff ff79 	bl	80023ec <__io_putchar>
 80024fa:	3e01      	subs	r6, #1
 80024fc:	d1f9      	bne.n	80024f2 <_write+0x12>
 80024fe:	4620      	mov	r0, r4
 8002500:	f85d bb04 	ldr.w	fp, [sp], #4
 8002504:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002506 <_sbrk>:
 8002506:	f640 2268 	movw	r2, #2664	; 0xa68
 800250a:	4601      	mov	r1, r0
 800250c:	466b      	mov	r3, sp
 800250e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002512:	6810      	ldr	r0, [r2, #0]
 8002514:	2800      	cmp	r0, #0
 8002516:	bf02      	ittt	eq
 8002518:	f640 4068 	movweq	r0, #3176	; 0xc68
 800251c:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002520:	6010      	streq	r0, [r2, #0]
 8002522:	4401      	add	r1, r0
 8002524:	4299      	cmp	r1, r3
 8002526:	bf9c      	itt	ls
 8002528:	6011      	strls	r1, [r2, #0]
 800252a:	4770      	bxls	lr
 800252c:	b580      	push	{r7, lr}
 800252e:	466f      	mov	r7, sp
 8002530:	f000 f864 	bl	80025fc <__errno>
 8002534:	210c      	movs	r1, #12
 8002536:	6001      	str	r1, [r0, #0]
 8002538:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800253c:	bd80      	pop	{r7, pc}

0800253e <_close>:
 800253e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002542:	4770      	bx	lr

08002544 <_fstat>:
 8002544:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002548:	6048      	str	r0, [r1, #4]
 800254a:	2000      	movs	r0, #0
 800254c:	4770      	bx	lr

0800254e <_isatty>:
 800254e:	2001      	movs	r0, #1
 8002550:	4770      	bx	lr

08002552 <_lseek>:
 8002552:	2000      	movs	r0, #0
 8002554:	4770      	bx	lr

08002556 <SystemInit>:
 8002556:	f64e 5088 	movw	r0, #60808	; 0xed88
 800255a:	f04f 0c00 	mov.w	ip, #0
 800255e:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002562:	6801      	ldr	r1, [r0, #0]
 8002564:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002568:	6001      	str	r1, [r0, #0]
 800256a:	f241 0100 	movw	r1, #4096	; 0x1000
 800256e:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002572:	680a      	ldr	r2, [r1, #0]
 8002574:	f042 0201 	orr.w	r2, r2, #1
 8002578:	600a      	str	r2, [r1, #0]
 800257a:	f8c1 c008 	str.w	ip, [r1, #8]
 800257e:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002582:	680b      	ldr	r3, [r1, #0]
 8002584:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002588:	401a      	ands	r2, r3
 800258a:	600a      	str	r2, [r1, #0]
 800258c:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002590:	60ca      	str	r2, [r1, #12]
 8002592:	680a      	ldr	r2, [r1, #0]
 8002594:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002598:	600a      	str	r2, [r1, #0]
 800259a:	f8c1 c018 	str.w	ip, [r1, #24]
 800259e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80025a2:	f840 1c80 	str.w	r1, [r0, #-128]
 80025a6:	4770      	bx	lr

080025a8 <Reset_Handler>:
 80025a8:	f8df d034 	ldr.w	sp, [pc, #52]	; 80025e0 <LoopForever+0x2>
 80025ac:	2100      	movs	r1, #0
 80025ae:	e003      	b.n	80025b8 <LoopCopyDataInit>

080025b0 <CopyDataInit>:
 80025b0:	4b0c      	ldr	r3, [pc, #48]	; (80025e4 <LoopForever+0x6>)
 80025b2:	585b      	ldr	r3, [r3, r1]
 80025b4:	5043      	str	r3, [r0, r1]
 80025b6:	3104      	adds	r1, #4

080025b8 <LoopCopyDataInit>:
 80025b8:	480b      	ldr	r0, [pc, #44]	; (80025e8 <LoopForever+0xa>)
 80025ba:	4b0c      	ldr	r3, [pc, #48]	; (80025ec <LoopForever+0xe>)
 80025bc:	1842      	adds	r2, r0, r1
 80025be:	429a      	cmp	r2, r3
 80025c0:	d3f6      	bcc.n	80025b0 <CopyDataInit>
 80025c2:	4a0b      	ldr	r2, [pc, #44]	; (80025f0 <LoopForever+0x12>)
 80025c4:	e002      	b.n	80025cc <LoopFillZerobss>

080025c6 <FillZerobss>:
 80025c6:	2300      	movs	r3, #0
 80025c8:	f842 3b04 	str.w	r3, [r2], #4

080025cc <LoopFillZerobss>:
 80025cc:	4b09      	ldr	r3, [pc, #36]	; (80025f4 <LoopForever+0x16>)
 80025ce:	429a      	cmp	r2, r3
 80025d0:	d3f9      	bcc.n	80025c6 <FillZerobss>
 80025d2:	f7ff ffc0 	bl	8002556 <SystemInit>
 80025d6:	f000 f817 	bl	8002608 <__libc_init_array>
 80025da:	f7ff ff18 	bl	800240e <main>

080025de <LoopForever>:
 80025de:	e7fe      	b.n	80025de <LoopForever>
 80025e0:	20018000 	.word	0x20018000
 80025e4:	08007870 	.word	0x08007870
 80025e8:	20000000 	.word	0x20000000
 80025ec:	200009c8 	.word	0x200009c8
 80025f0:	200009c8 	.word	0x200009c8
 80025f4:	20000c64 	.word	0x20000c64

080025f8 <ADC1_2_IRQHandler>:
 80025f8:	e7fe      	b.n	80025f8 <ADC1_2_IRQHandler>
	...

080025fc <__errno>:
 80025fc:	4b01      	ldr	r3, [pc, #4]	; (8002604 <__errno+0x8>)
 80025fe:	6818      	ldr	r0, [r3, #0]
 8002600:	4770      	bx	lr
 8002602:	bf00      	nop
 8002604:	20000018 	.word	0x20000018

08002608 <__libc_init_array>:
 8002608:	b570      	push	{r4, r5, r6, lr}
 800260a:	4e0d      	ldr	r6, [pc, #52]	; (8002640 <__libc_init_array+0x38>)
 800260c:	4d0d      	ldr	r5, [pc, #52]	; (8002644 <__libc_init_array+0x3c>)
 800260e:	1b76      	subs	r6, r6, r5
 8002610:	10b6      	asrs	r6, r6, #2
 8002612:	d006      	beq.n	8002622 <__libc_init_array+0x1a>
 8002614:	2400      	movs	r4, #0
 8002616:	3401      	adds	r4, #1
 8002618:	f855 3b04 	ldr.w	r3, [r5], #4
 800261c:	4798      	blx	r3
 800261e:	42a6      	cmp	r6, r4
 8002620:	d1f9      	bne.n	8002616 <__libc_init_array+0xe>
 8002622:	4e09      	ldr	r6, [pc, #36]	; (8002648 <__libc_init_array+0x40>)
 8002624:	4d09      	ldr	r5, [pc, #36]	; (800264c <__libc_init_array+0x44>)
 8002626:	1b76      	subs	r6, r6, r5
 8002628:	f004 fea8 	bl	800737c <_init>
 800262c:	10b6      	asrs	r6, r6, #2
 800262e:	d006      	beq.n	800263e <__libc_init_array+0x36>
 8002630:	2400      	movs	r4, #0
 8002632:	3401      	adds	r4, #1
 8002634:	f855 3b04 	ldr.w	r3, [r5], #4
 8002638:	4798      	blx	r3
 800263a:	42a6      	cmp	r6, r4
 800263c:	d1f9      	bne.n	8002632 <__libc_init_array+0x2a>
 800263e:	bd70      	pop	{r4, r5, r6, pc}
 8002640:	08007860 	.word	0x08007860
 8002644:	08007860 	.word	0x08007860
 8002648:	08007868 	.word	0x08007868
 800264c:	08007860 	.word	0x08007860

08002650 <memset>:
 8002650:	b4f0      	push	{r4, r5, r6, r7}
 8002652:	0786      	lsls	r6, r0, #30
 8002654:	d043      	beq.n	80026de <memset+0x8e>
 8002656:	1e54      	subs	r4, r2, #1
 8002658:	2a00      	cmp	r2, #0
 800265a:	d03e      	beq.n	80026da <memset+0x8a>
 800265c:	b2ca      	uxtb	r2, r1
 800265e:	4603      	mov	r3, r0
 8002660:	e002      	b.n	8002668 <memset+0x18>
 8002662:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002666:	d338      	bcc.n	80026da <memset+0x8a>
 8002668:	f803 2b01 	strb.w	r2, [r3], #1
 800266c:	079d      	lsls	r5, r3, #30
 800266e:	d1f8      	bne.n	8002662 <memset+0x12>
 8002670:	2c03      	cmp	r4, #3
 8002672:	d92b      	bls.n	80026cc <memset+0x7c>
 8002674:	b2cd      	uxtb	r5, r1
 8002676:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800267a:	2c0f      	cmp	r4, #15
 800267c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002680:	d916      	bls.n	80026b0 <memset+0x60>
 8002682:	f1a4 0710 	sub.w	r7, r4, #16
 8002686:	093f      	lsrs	r7, r7, #4
 8002688:	f103 0620 	add.w	r6, r3, #32
 800268c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002690:	f103 0210 	add.w	r2, r3, #16
 8002694:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002698:	e942 5502 	strd	r5, r5, [r2, #-8]
 800269c:	3210      	adds	r2, #16
 800269e:	42b2      	cmp	r2, r6
 80026a0:	d1f8      	bne.n	8002694 <memset+0x44>
 80026a2:	f004 040f 	and.w	r4, r4, #15
 80026a6:	3701      	adds	r7, #1
 80026a8:	2c03      	cmp	r4, #3
 80026aa:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 80026ae:	d90d      	bls.n	80026cc <memset+0x7c>
 80026b0:	461e      	mov	r6, r3
 80026b2:	4622      	mov	r2, r4
 80026b4:	3a04      	subs	r2, #4
 80026b6:	2a03      	cmp	r2, #3
 80026b8:	f846 5b04 	str.w	r5, [r6], #4
 80026bc:	d8fa      	bhi.n	80026b4 <memset+0x64>
 80026be:	1f22      	subs	r2, r4, #4
 80026c0:	f022 0203 	bic.w	r2, r2, #3
 80026c4:	3204      	adds	r2, #4
 80026c6:	4413      	add	r3, r2
 80026c8:	f004 0403 	and.w	r4, r4, #3
 80026cc:	b12c      	cbz	r4, 80026da <memset+0x8a>
 80026ce:	b2c9      	uxtb	r1, r1
 80026d0:	441c      	add	r4, r3
 80026d2:	f803 1b01 	strb.w	r1, [r3], #1
 80026d6:	429c      	cmp	r4, r3
 80026d8:	d1fb      	bne.n	80026d2 <memset+0x82>
 80026da:	bcf0      	pop	{r4, r5, r6, r7}
 80026dc:	4770      	bx	lr
 80026de:	4614      	mov	r4, r2
 80026e0:	4603      	mov	r3, r0
 80026e2:	e7c5      	b.n	8002670 <memset+0x20>

080026e4 <printf>:
 80026e4:	b40f      	push	{r0, r1, r2, r3}
 80026e6:	b500      	push	{lr}
 80026e8:	4907      	ldr	r1, [pc, #28]	; (8002708 <printf+0x24>)
 80026ea:	b083      	sub	sp, #12
 80026ec:	ab04      	add	r3, sp, #16
 80026ee:	6808      	ldr	r0, [r1, #0]
 80026f0:	f853 2b04 	ldr.w	r2, [r3], #4
 80026f4:	6881      	ldr	r1, [r0, #8]
 80026f6:	9301      	str	r3, [sp, #4]
 80026f8:	f000 f85e 	bl	80027b8 <_vfprintf_r>
 80026fc:	b003      	add	sp, #12
 80026fe:	f85d eb04 	ldr.w	lr, [sp], #4
 8002702:	b004      	add	sp, #16
 8002704:	4770      	bx	lr
 8002706:	bf00      	nop
 8002708:	20000018 	.word	0x20000018

0800270c <_puts_r>:
 800270c:	b570      	push	{r4, r5, r6, lr}
 800270e:	4605      	mov	r5, r0
 8002710:	b088      	sub	sp, #32
 8002712:	4608      	mov	r0, r1
 8002714:	460c      	mov	r4, r1
 8002716:	f7fd ff93 	bl	8000640 <strlen>
 800271a:	4a22      	ldr	r2, [pc, #136]	; (80027a4 <_puts_r+0x98>)
 800271c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800271e:	9404      	str	r4, [sp, #16]
 8002720:	2601      	movs	r6, #1
 8002722:	1c44      	adds	r4, r0, #1
 8002724:	a904      	add	r1, sp, #16
 8002726:	9206      	str	r2, [sp, #24]
 8002728:	2202      	movs	r2, #2
 800272a:	9403      	str	r4, [sp, #12]
 800272c:	9005      	str	r0, [sp, #20]
 800272e:	68ac      	ldr	r4, [r5, #8]
 8002730:	9607      	str	r6, [sp, #28]
 8002732:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002736:	b31b      	cbz	r3, 8002780 <_puts_r+0x74>
 8002738:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800273a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800273e:	07ce      	lsls	r6, r1, #31
 8002740:	b29a      	uxth	r2, r3
 8002742:	d401      	bmi.n	8002748 <_puts_r+0x3c>
 8002744:	0590      	lsls	r0, r2, #22
 8002746:	d525      	bpl.n	8002794 <_puts_r+0x88>
 8002748:	0491      	lsls	r1, r2, #18
 800274a:	d406      	bmi.n	800275a <_puts_r+0x4e>
 800274c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800274e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8002752:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002756:	81a3      	strh	r3, [r4, #12]
 8002758:	6662      	str	r2, [r4, #100]	; 0x64
 800275a:	4628      	mov	r0, r5
 800275c:	aa01      	add	r2, sp, #4
 800275e:	4621      	mov	r1, r4
 8002760:	f003 f85e 	bl	8005820 <__sfvwrite_r>
 8002764:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002766:	2800      	cmp	r0, #0
 8002768:	bf0c      	ite	eq
 800276a:	250a      	moveq	r5, #10
 800276c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002770:	07da      	lsls	r2, r3, #31
 8002772:	d402      	bmi.n	800277a <_puts_r+0x6e>
 8002774:	89a3      	ldrh	r3, [r4, #12]
 8002776:	059b      	lsls	r3, r3, #22
 8002778:	d506      	bpl.n	8002788 <_puts_r+0x7c>
 800277a:	4628      	mov	r0, r5
 800277c:	b008      	add	sp, #32
 800277e:	bd70      	pop	{r4, r5, r6, pc}
 8002780:	4628      	mov	r0, r5
 8002782:	f002 feb7 	bl	80054f4 <__sinit>
 8002786:	e7d7      	b.n	8002738 <_puts_r+0x2c>
 8002788:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800278a:	f003 fa05 	bl	8005b98 <__retarget_lock_release_recursive>
 800278e:	4628      	mov	r0, r5
 8002790:	b008      	add	sp, #32
 8002792:	bd70      	pop	{r4, r5, r6, pc}
 8002794:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002796:	f003 f9fd 	bl	8005b94 <__retarget_lock_acquire_recursive>
 800279a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800279e:	b29a      	uxth	r2, r3
 80027a0:	e7d2      	b.n	8002748 <_puts_r+0x3c>
 80027a2:	bf00      	nop
 80027a4:	080075d0 	.word	0x080075d0

080027a8 <puts>:
 80027a8:	4b02      	ldr	r3, [pc, #8]	; (80027b4 <puts+0xc>)
 80027aa:	4601      	mov	r1, r0
 80027ac:	6818      	ldr	r0, [r3, #0]
 80027ae:	f7ff bfad 	b.w	800270c <_puts_r>
 80027b2:	bf00      	nop
 80027b4:	20000018 	.word	0x20000018

080027b8 <_vfprintf_r>:
 80027b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80027bc:	b0d7      	sub	sp, #348	; 0x15c
 80027be:	461c      	mov	r4, r3
 80027c0:	4689      	mov	r9, r1
 80027c2:	4617      	mov	r7, r2
 80027c4:	4605      	mov	r5, r0
 80027c6:	9003      	str	r0, [sp, #12]
 80027c8:	f003 f9d2 	bl	8005b70 <_localeconv_r>
 80027cc:	6803      	ldr	r3, [r0, #0]
 80027ce:	9316      	str	r3, [sp, #88]	; 0x58
 80027d0:	4618      	mov	r0, r3
 80027d2:	f7fd ff35 	bl	8000640 <strlen>
 80027d6:	9408      	str	r4, [sp, #32]
 80027d8:	9015      	str	r0, [sp, #84]	; 0x54
 80027da:	b11d      	cbz	r5, 80027e4 <_vfprintf_r+0x2c>
 80027dc:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80027de:	2b00      	cmp	r3, #0
 80027e0:	f000 8107 	beq.w	80029f2 <_vfprintf_r+0x23a>
 80027e4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80027e8:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80027ec:	07c8      	lsls	r0, r1, #31
 80027ee:	b293      	uxth	r3, r2
 80027f0:	d402      	bmi.n	80027f8 <_vfprintf_r+0x40>
 80027f2:	0599      	lsls	r1, r3, #22
 80027f4:	f140 811f 	bpl.w	8002a36 <_vfprintf_r+0x27e>
 80027f8:	049e      	lsls	r6, r3, #18
 80027fa:	d40a      	bmi.n	8002812 <_vfprintf_r+0x5a>
 80027fc:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002800:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002804:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002808:	f8a9 300c 	strh.w	r3, [r9, #12]
 800280c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002810:	b29b      	uxth	r3, r3
 8002812:	071d      	lsls	r5, r3, #28
 8002814:	f140 80b2 	bpl.w	800297c <_vfprintf_r+0x1c4>
 8002818:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800281c:	2a00      	cmp	r2, #0
 800281e:	f000 80ad 	beq.w	800297c <_vfprintf_r+0x1c4>
 8002822:	f003 021a 	and.w	r2, r3, #26
 8002826:	2a0a      	cmp	r2, #10
 8002828:	f000 80c9 	beq.w	80029be <_vfprintf_r+0x206>
 800282c:	2300      	movs	r3, #0
 800282e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002a48 <_vfprintf_r+0x290>
 8002832:	9310      	str	r3, [sp, #64]	; 0x40
 8002834:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002838:	9317      	str	r3, [sp, #92]	; 0x5c
 800283a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800283e:	931b      	str	r3, [sp, #108]	; 0x6c
 8002840:	9318      	str	r3, [sp, #96]	; 0x60
 8002842:	9305      	str	r3, [sp, #20]
 8002844:	ab2d      	add	r3, sp, #180	; 0xb4
 8002846:	932a      	str	r3, [sp, #168]	; 0xa8
 8002848:	469b      	mov	fp, r3
 800284a:	783b      	ldrb	r3, [r7, #0]
 800284c:	f8cd 901c 	str.w	r9, [sp, #28]
 8002850:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002854:	2b00      	cmp	r3, #0
 8002856:	f000 8259 	beq.w	8002d0c <_vfprintf_r+0x554>
 800285a:	2b25      	cmp	r3, #37	; 0x25
 800285c:	463c      	mov	r4, r7
 800285e:	d102      	bne.n	8002866 <_vfprintf_r+0xae>
 8002860:	e01d      	b.n	800289e <_vfprintf_r+0xe6>
 8002862:	2b25      	cmp	r3, #37	; 0x25
 8002864:	d003      	beq.n	800286e <_vfprintf_r+0xb6>
 8002866:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 800286a:	2b00      	cmp	r3, #0
 800286c:	d1f9      	bne.n	8002862 <_vfprintf_r+0xaa>
 800286e:	1be5      	subs	r5, r4, r7
 8002870:	b18d      	cbz	r5, 8002896 <_vfprintf_r+0xde>
 8002872:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8002876:	3301      	adds	r3, #1
 8002878:	442a      	add	r2, r5
 800287a:	2b07      	cmp	r3, #7
 800287c:	f8cb 7000 	str.w	r7, [fp]
 8002880:	f8cb 5004 	str.w	r5, [fp, #4]
 8002884:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002888:	f300 80ca 	bgt.w	8002a20 <_vfprintf_r+0x268>
 800288c:	f10b 0b08 	add.w	fp, fp, #8
 8002890:	9b05      	ldr	r3, [sp, #20]
 8002892:	442b      	add	r3, r5
 8002894:	9305      	str	r3, [sp, #20]
 8002896:	7823      	ldrb	r3, [r4, #0]
 8002898:	2b00      	cmp	r3, #0
 800289a:	f000 8237 	beq.w	8002d0c <_vfprintf_r+0x554>
 800289e:	2300      	movs	r3, #0
 80028a0:	7866      	ldrb	r6, [r4, #1]
 80028a2:	9306      	str	r3, [sp, #24]
 80028a4:	4698      	mov	r8, r3
 80028a6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80028aa:	f104 0a01 	add.w	sl, r4, #1
 80028ae:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 80028b2:	252b      	movs	r5, #43	; 0x2b
 80028b4:	f10a 0a01 	add.w	sl, sl, #1
 80028b8:	f1a6 0320 	sub.w	r3, r6, #32
 80028bc:	2b5a      	cmp	r3, #90	; 0x5a
 80028be:	f200 842a 	bhi.w	8003116 <_vfprintf_r+0x95e>
 80028c2:	e8df f013 	tbh	[pc, r3, lsl #1]
 80028c6:	03aa      	.short	0x03aa
 80028c8:	04280428 	.word	0x04280428
 80028cc:	0428029c 	.word	0x0428029c
 80028d0:	04280428 	.word	0x04280428
 80028d4:	042802a7 	.word	0x042802a7
 80028d8:	02c60428 	.word	0x02c60428
 80028dc:	042802d2 	.word	0x042802d2
 80028e0:	02dc02d7 	.word	0x02dc02d7
 80028e4:	02f60428 	.word	0x02f60428
 80028e8:	026d026d 	.word	0x026d026d
 80028ec:	026d026d 	.word	0x026d026d
 80028f0:	026d026d 	.word	0x026d026d
 80028f4:	026d026d 	.word	0x026d026d
 80028f8:	0428026d 	.word	0x0428026d
 80028fc:	04280428 	.word	0x04280428
 8002900:	04280428 	.word	0x04280428
 8002904:	04280428 	.word	0x04280428
 8002908:	042802fb 	.word	0x042802fb
 800290c:	03f3033c 	.word	0x03f3033c
 8002910:	02fb02fb 	.word	0x02fb02fb
 8002914:	042802fb 	.word	0x042802fb
 8002918:	04280428 	.word	0x04280428
 800291c:	03ee0428 	.word	0x03ee0428
 8002920:	04280428 	.word	0x04280428
 8002924:	0428009a 	.word	0x0428009a
 8002928:	04280428 	.word	0x04280428
 800292c:	04280350 	.word	0x04280350
 8002930:	04280379 	.word	0x04280379
 8002934:	03900428 	.word	0x03900428
 8002938:	04280428 	.word	0x04280428
 800293c:	04280428 	.word	0x04280428
 8002940:	04280428 	.word	0x04280428
 8002944:	04280428 	.word	0x04280428
 8002948:	042802fb 	.word	0x042802fb
 800294c:	00c5033c 	.word	0x00c5033c
 8002950:	02fb02fb 	.word	0x02fb02fb
 8002954:	03d102fb 	.word	0x03d102fb
 8002958:	007000c5 	.word	0x007000c5
 800295c:	03b50428 	.word	0x03b50428
 8002960:	03c20428 	.word	0x03c20428
 8002964:	03de009c 	.word	0x03de009c
 8002968:	04280070 	.word	0x04280070
 800296c:	00720350 	.word	0x00720350
 8002970:	0428022c 	.word	0x0428022c
 8002974:	027c0428 	.word	0x027c0428
 8002978:	00720428 	.word	0x00720428
 800297c:	4649      	mov	r1, r9
 800297e:	9803      	ldr	r0, [sp, #12]
 8002980:	f001 fc9a 	bl	80042b8 <__swsetup_r>
 8002984:	b1a0      	cbz	r0, 80029b0 <_vfprintf_r+0x1f8>
 8002986:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 800298a:	07d8      	lsls	r0, r3, #31
 800298c:	d404      	bmi.n	8002998 <_vfprintf_r+0x1e0>
 800298e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002992:	0599      	lsls	r1, r3, #22
 8002994:	f140 83b7 	bpl.w	8003106 <_vfprintf_r+0x94e>
 8002998:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800299c:	9305      	str	r3, [sp, #20]
 800299e:	9805      	ldr	r0, [sp, #20]
 80029a0:	b057      	add	sp, #348	; 0x15c
 80029a2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80029a6:	f048 0820 	orr.w	r8, r8, #32
 80029aa:	f89a 6000 	ldrb.w	r6, [sl]
 80029ae:	e781      	b.n	80028b4 <_vfprintf_r+0xfc>
 80029b0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80029b4:	f003 021a 	and.w	r2, r3, #26
 80029b8:	2a0a      	cmp	r2, #10
 80029ba:	f47f af37 	bne.w	800282c <_vfprintf_r+0x74>
 80029be:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 80029c2:	2a00      	cmp	r2, #0
 80029c4:	f6ff af32 	blt.w	800282c <_vfprintf_r+0x74>
 80029c8:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80029cc:	07d2      	lsls	r2, r2, #31
 80029ce:	d405      	bmi.n	80029dc <_vfprintf_r+0x224>
 80029d0:	059b      	lsls	r3, r3, #22
 80029d2:	d403      	bmi.n	80029dc <_vfprintf_r+0x224>
 80029d4:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80029d8:	f003 f8de 	bl	8005b98 <__retarget_lock_release_recursive>
 80029dc:	4623      	mov	r3, r4
 80029de:	463a      	mov	r2, r7
 80029e0:	4649      	mov	r1, r9
 80029e2:	9803      	ldr	r0, [sp, #12]
 80029e4:	f001 fc26 	bl	8004234 <__sbprintf>
 80029e8:	9005      	str	r0, [sp, #20]
 80029ea:	9805      	ldr	r0, [sp, #20]
 80029ec:	b057      	add	sp, #348	; 0x15c
 80029ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80029f2:	9803      	ldr	r0, [sp, #12]
 80029f4:	f002 fd7e 	bl	80054f4 <__sinit>
 80029f8:	e6f4      	b.n	80027e4 <_vfprintf_r+0x2c>
 80029fa:	f048 0810 	orr.w	r8, r8, #16
 80029fe:	f018 0f20 	tst.w	r8, #32
 8002a02:	f000 836c 	beq.w	80030de <_vfprintf_r+0x926>
 8002a06:	9c08      	ldr	r4, [sp, #32]
 8002a08:	3407      	adds	r4, #7
 8002a0a:	f024 0307 	bic.w	r3, r4, #7
 8002a0e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002a12:	f103 0208 	add.w	r2, r3, #8
 8002a16:	9208      	str	r2, [sp, #32]
 8002a18:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002a1c:	2200      	movs	r2, #0
 8002a1e:	e18c      	b.n	8002d3a <_vfprintf_r+0x582>
 8002a20:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a22:	9907      	ldr	r1, [sp, #28]
 8002a24:	9803      	ldr	r0, [sp, #12]
 8002a26:	f004 f9f5 	bl	8006e14 <__sprint_r>
 8002a2a:	2800      	cmp	r0, #0
 8002a2c:	f041 8376 	bne.w	800411c <_vfprintf_r+0x1964>
 8002a30:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002a34:	e72c      	b.n	8002890 <_vfprintf_r+0xd8>
 8002a36:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002a3a:	f003 f8ab 	bl	8005b94 <__retarget_lock_acquire_recursive>
 8002a3e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002a42:	b293      	uxth	r3, r2
 8002a44:	e6d8      	b.n	80027f8 <_vfprintf_r+0x40>
 8002a46:	bf00      	nop
	...
 8002a50:	4643      	mov	r3, r8
 8002a52:	069f      	lsls	r7, r3, #26
 8002a54:	f140 832f 	bpl.w	80030b6 <_vfprintf_r+0x8fe>
 8002a58:	9c08      	ldr	r4, [sp, #32]
 8002a5a:	3407      	adds	r4, #7
 8002a5c:	f024 0407 	bic.w	r4, r4, #7
 8002a60:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002a64:	f104 0208 	add.w	r2, r4, #8
 8002a68:	9208      	str	r2, [sp, #32]
 8002a6a:	4604      	mov	r4, r0
 8002a6c:	460d      	mov	r5, r1
 8002a6e:	2800      	cmp	r0, #0
 8002a70:	f171 0200 	sbcs.w	r2, r1, #0
 8002a74:	da05      	bge.n	8002a82 <_vfprintf_r+0x2ca>
 8002a76:	222d      	movs	r2, #45	; 0x2d
 8002a78:	4264      	negs	r4, r4
 8002a7a:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002a7e:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002a82:	aa56      	add	r2, sp, #344	; 0x158
 8002a84:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002a88:	9204      	str	r2, [sp, #16]
 8002a8a:	f000 84b2 	beq.w	80033f2 <_vfprintf_r+0xc3a>
 8002a8e:	2201      	movs	r2, #1
 8002a90:	ea54 0105 	orrs.w	r1, r4, r5
 8002a94:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002a98:	f040 8159 	bne.w	8002d4e <_vfprintf_r+0x596>
 8002a9c:	f1b9 0f00 	cmp.w	r9, #0
 8002aa0:	f040 8619 	bne.w	80036d6 <_vfprintf_r+0xf1e>
 8002aa4:	2a00      	cmp	r2, #0
 8002aa6:	f040 8508 	bne.w	80034ba <_vfprintf_r+0xd02>
 8002aaa:	f013 0301 	ands.w	r3, r3, #1
 8002aae:	af56      	add	r7, sp, #344	; 0x158
 8002ab0:	9309      	str	r3, [sp, #36]	; 0x24
 8002ab2:	d002      	beq.n	8002aba <_vfprintf_r+0x302>
 8002ab4:	2330      	movs	r3, #48	; 0x30
 8002ab6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002aba:	2300      	movs	r3, #0
 8002abc:	930a      	str	r3, [sp, #40]	; 0x28
 8002abe:	930f      	str	r3, [sp, #60]	; 0x3c
 8002ac0:	9314      	str	r3, [sp, #80]	; 0x50
 8002ac2:	9311      	str	r3, [sp, #68]	; 0x44
 8002ac4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002ac6:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002aca:	454b      	cmp	r3, r9
 8002acc:	bfb8      	it	lt
 8002ace:	464b      	movlt	r3, r9
 8002ad0:	9304      	str	r3, [sp, #16]
 8002ad2:	b112      	cbz	r2, 8002ada <_vfprintf_r+0x322>
 8002ad4:	9b04      	ldr	r3, [sp, #16]
 8002ad6:	3301      	adds	r3, #1
 8002ad8:	9304      	str	r3, [sp, #16]
 8002ada:	f018 0302 	ands.w	r3, r8, #2
 8002ade:	930b      	str	r3, [sp, #44]	; 0x2c
 8002ae0:	d002      	beq.n	8002ae8 <_vfprintf_r+0x330>
 8002ae2:	9b04      	ldr	r3, [sp, #16]
 8002ae4:	3302      	adds	r3, #2
 8002ae6:	9304      	str	r3, [sp, #16]
 8002ae8:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002aec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002aee:	930e      	str	r3, [sp, #56]	; 0x38
 8002af0:	d13f      	bne.n	8002b72 <_vfprintf_r+0x3ba>
 8002af2:	9b06      	ldr	r3, [sp, #24]
 8002af4:	9904      	ldr	r1, [sp, #16]
 8002af6:	1a5d      	subs	r5, r3, r1
 8002af8:	2d00      	cmp	r5, #0
 8002afa:	dd3a      	ble.n	8002b72 <_vfprintf_r+0x3ba>
 8002afc:	2d10      	cmp	r5, #16
 8002afe:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b00:	dd29      	ble.n	8002b56 <_vfprintf_r+0x39e>
 8002b02:	4659      	mov	r1, fp
 8002b04:	4620      	mov	r0, r4
 8002b06:	9620      	str	r6, [sp, #128]	; 0x80
 8002b08:	2310      	movs	r3, #16
 8002b0a:	9c03      	ldr	r4, [sp, #12]
 8002b0c:	9e07      	ldr	r6, [sp, #28]
 8002b0e:	46bb      	mov	fp, r7
 8002b10:	e004      	b.n	8002b1c <_vfprintf_r+0x364>
 8002b12:	3d10      	subs	r5, #16
 8002b14:	2d10      	cmp	r5, #16
 8002b16:	f101 0108 	add.w	r1, r1, #8
 8002b1a:	dd18      	ble.n	8002b4e <_vfprintf_r+0x396>
 8002b1c:	3201      	adds	r2, #1
 8002b1e:	4fba      	ldr	r7, [pc, #744]	; (8002e08 <_vfprintf_r+0x650>)
 8002b20:	3010      	adds	r0, #16
 8002b22:	2a07      	cmp	r2, #7
 8002b24:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002b28:	e9c1 7300 	strd	r7, r3, [r1]
 8002b2c:	ddf1      	ble.n	8002b12 <_vfprintf_r+0x35a>
 8002b2e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b30:	4631      	mov	r1, r6
 8002b32:	4620      	mov	r0, r4
 8002b34:	930c      	str	r3, [sp, #48]	; 0x30
 8002b36:	f004 f96d 	bl	8006e14 <__sprint_r>
 8002b3a:	2800      	cmp	r0, #0
 8002b3c:	f040 843d 	bne.w	80033ba <_vfprintf_r+0xc02>
 8002b40:	3d10      	subs	r5, #16
 8002b42:	2d10      	cmp	r5, #16
 8002b44:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002b48:	a92d      	add	r1, sp, #180	; 0xb4
 8002b4a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002b4c:	dce6      	bgt.n	8002b1c <_vfprintf_r+0x364>
 8002b4e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002b50:	465f      	mov	r7, fp
 8002b52:	4604      	mov	r4, r0
 8002b54:	468b      	mov	fp, r1
 8002b56:	3201      	adds	r2, #1
 8002b58:	4bab      	ldr	r3, [pc, #684]	; (8002e08 <_vfprintf_r+0x650>)
 8002b5a:	442c      	add	r4, r5
 8002b5c:	2a07      	cmp	r2, #7
 8002b5e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002b62:	e9cb 3500 	strd	r3, r5, [fp]
 8002b66:	f300 84ff 	bgt.w	8003568 <_vfprintf_r+0xdb0>
 8002b6a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b6e:	f10b 0b08 	add.w	fp, fp, #8
 8002b72:	b172      	cbz	r2, 8002b92 <_vfprintf_r+0x3da>
 8002b74:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b76:	3201      	adds	r2, #1
 8002b78:	3401      	adds	r4, #1
 8002b7a:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002b7e:	2101      	movs	r1, #1
 8002b80:	2a07      	cmp	r2, #7
 8002b82:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002b86:	e9cb 0100 	strd	r0, r1, [fp]
 8002b8a:	f300 8418 	bgt.w	80033be <_vfprintf_r+0xc06>
 8002b8e:	f10b 0b08 	add.w	fp, fp, #8
 8002b92:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002b94:	b16b      	cbz	r3, 8002bb2 <_vfprintf_r+0x3fa>
 8002b96:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002b98:	3301      	adds	r3, #1
 8002b9a:	3402      	adds	r4, #2
 8002b9c:	a923      	add	r1, sp, #140	; 0x8c
 8002b9e:	2202      	movs	r2, #2
 8002ba0:	2b07      	cmp	r3, #7
 8002ba2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002ba6:	e9cb 1200 	strd	r1, r2, [fp]
 8002baa:	f300 8415 	bgt.w	80033d8 <_vfprintf_r+0xc20>
 8002bae:	f10b 0b08 	add.w	fp, fp, #8
 8002bb2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002bb4:	2b80      	cmp	r3, #128	; 0x80
 8002bb6:	f000 8331 	beq.w	800321c <_vfprintf_r+0xa64>
 8002bba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002bbc:	eba9 0503 	sub.w	r5, r9, r3
 8002bc0:	2d00      	cmp	r5, #0
 8002bc2:	dd37      	ble.n	8002c34 <_vfprintf_r+0x47c>
 8002bc4:	2d10      	cmp	r5, #16
 8002bc6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002bc8:	4b90      	ldr	r3, [pc, #576]	; (8002e0c <_vfprintf_r+0x654>)
 8002bca:	dd28      	ble.n	8002c1e <_vfprintf_r+0x466>
 8002bcc:	4659      	mov	r1, fp
 8002bce:	4620      	mov	r0, r4
 8002bd0:	46bb      	mov	fp, r7
 8002bd2:	f04f 0910 	mov.w	r9, #16
 8002bd6:	4637      	mov	r7, r6
 8002bd8:	461c      	mov	r4, r3
 8002bda:	9e07      	ldr	r6, [sp, #28]
 8002bdc:	e004      	b.n	8002be8 <_vfprintf_r+0x430>
 8002bde:	3d10      	subs	r5, #16
 8002be0:	2d10      	cmp	r5, #16
 8002be2:	f101 0108 	add.w	r1, r1, #8
 8002be6:	dd15      	ble.n	8002c14 <_vfprintf_r+0x45c>
 8002be8:	3201      	adds	r2, #1
 8002bea:	3010      	adds	r0, #16
 8002bec:	2a07      	cmp	r2, #7
 8002bee:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002bf2:	e9c1 4900 	strd	r4, r9, [r1]
 8002bf6:	ddf2      	ble.n	8002bde <_vfprintf_r+0x426>
 8002bf8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002bfa:	4631      	mov	r1, r6
 8002bfc:	9803      	ldr	r0, [sp, #12]
 8002bfe:	f004 f909 	bl	8006e14 <__sprint_r>
 8002c02:	2800      	cmp	r0, #0
 8002c04:	f040 83d9 	bne.w	80033ba <_vfprintf_r+0xc02>
 8002c08:	3d10      	subs	r5, #16
 8002c0a:	2d10      	cmp	r5, #16
 8002c0c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002c10:	a92d      	add	r1, sp, #180	; 0xb4
 8002c12:	dce9      	bgt.n	8002be8 <_vfprintf_r+0x430>
 8002c14:	463e      	mov	r6, r7
 8002c16:	4623      	mov	r3, r4
 8002c18:	465f      	mov	r7, fp
 8002c1a:	4604      	mov	r4, r0
 8002c1c:	468b      	mov	fp, r1
 8002c1e:	3201      	adds	r2, #1
 8002c20:	442c      	add	r4, r5
 8002c22:	2a07      	cmp	r2, #7
 8002c24:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002c28:	e9cb 3500 	strd	r3, r5, [fp]
 8002c2c:	f300 83ef 	bgt.w	800340e <_vfprintf_r+0xc56>
 8002c30:	f10b 0b08 	add.w	fp, fp, #8
 8002c34:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002c38:	f040 8280 	bne.w	800313c <_vfprintf_r+0x984>
 8002c3c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c3e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002c40:	f8cb 7000 	str.w	r7, [fp]
 8002c44:	3301      	adds	r3, #1
 8002c46:	4414      	add	r4, r2
 8002c48:	2b07      	cmp	r3, #7
 8002c4a:	942c      	str	r4, [sp, #176]	; 0xb0
 8002c4c:	f8cb 2004 	str.w	r2, [fp, #4]
 8002c50:	932b      	str	r3, [sp, #172]	; 0xac
 8002c52:	f300 8392 	bgt.w	800337a <_vfprintf_r+0xbc2>
 8002c56:	f10b 0b08 	add.w	fp, fp, #8
 8002c5a:	f018 0f04 	tst.w	r8, #4
 8002c5e:	d03b      	beq.n	8002cd8 <_vfprintf_r+0x520>
 8002c60:	9b06      	ldr	r3, [sp, #24]
 8002c62:	9a04      	ldr	r2, [sp, #16]
 8002c64:	1a9d      	subs	r5, r3, r2
 8002c66:	2d00      	cmp	r5, #0
 8002c68:	dd36      	ble.n	8002cd8 <_vfprintf_r+0x520>
 8002c6a:	2d10      	cmp	r5, #16
 8002c6c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c6e:	dd21      	ble.n	8002cb4 <_vfprintf_r+0x4fc>
 8002c70:	2610      	movs	r6, #16
 8002c72:	9f03      	ldr	r7, [sp, #12]
 8002c74:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002c78:	e004      	b.n	8002c84 <_vfprintf_r+0x4cc>
 8002c7a:	3d10      	subs	r5, #16
 8002c7c:	2d10      	cmp	r5, #16
 8002c7e:	f10b 0b08 	add.w	fp, fp, #8
 8002c82:	dd17      	ble.n	8002cb4 <_vfprintf_r+0x4fc>
 8002c84:	3301      	adds	r3, #1
 8002c86:	4a60      	ldr	r2, [pc, #384]	; (8002e08 <_vfprintf_r+0x650>)
 8002c88:	3410      	adds	r4, #16
 8002c8a:	2b07      	cmp	r3, #7
 8002c8c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c90:	e9cb 2600 	strd	r2, r6, [fp]
 8002c94:	ddf1      	ble.n	8002c7a <_vfprintf_r+0x4c2>
 8002c96:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c98:	4641      	mov	r1, r8
 8002c9a:	4638      	mov	r0, r7
 8002c9c:	f004 f8ba 	bl	8006e14 <__sprint_r>
 8002ca0:	2800      	cmp	r0, #0
 8002ca2:	f040 856c 	bne.w	800377e <_vfprintf_r+0xfc6>
 8002ca6:	3d10      	subs	r5, #16
 8002ca8:	2d10      	cmp	r5, #16
 8002caa:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002cae:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002cb2:	dce7      	bgt.n	8002c84 <_vfprintf_r+0x4cc>
 8002cb4:	3301      	adds	r3, #1
 8002cb6:	4a54      	ldr	r2, [pc, #336]	; (8002e08 <_vfprintf_r+0x650>)
 8002cb8:	442c      	add	r4, r5
 8002cba:	2b07      	cmp	r3, #7
 8002cbc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002cc0:	e9cb 2500 	strd	r2, r5, [fp]
 8002cc4:	dd08      	ble.n	8002cd8 <_vfprintf_r+0x520>
 8002cc6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002cc8:	9907      	ldr	r1, [sp, #28]
 8002cca:	9803      	ldr	r0, [sp, #12]
 8002ccc:	f004 f8a2 	bl	8006e14 <__sprint_r>
 8002cd0:	2800      	cmp	r0, #0
 8002cd2:	f040 82e9 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 8002cd6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002cd8:	9904      	ldr	r1, [sp, #16]
 8002cda:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002cde:	428a      	cmp	r2, r1
 8002ce0:	bfac      	ite	ge
 8002ce2:	189b      	addge	r3, r3, r2
 8002ce4:	185b      	addlt	r3, r3, r1
 8002ce6:	9305      	str	r3, [sp, #20]
 8002ce8:	2c00      	cmp	r4, #0
 8002cea:	f040 82d5 	bne.w	8003298 <_vfprintf_r+0xae0>
 8002cee:	2300      	movs	r3, #0
 8002cf0:	932b      	str	r3, [sp, #172]	; 0xac
 8002cf2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002cf4:	b11b      	cbz	r3, 8002cfe <_vfprintf_r+0x546>
 8002cf6:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002cf8:	9803      	ldr	r0, [sp, #12]
 8002cfa:	f002 fc9d 	bl	8005638 <_free_r>
 8002cfe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002d02:	4657      	mov	r7, sl
 8002d04:	783b      	ldrb	r3, [r7, #0]
 8002d06:	2b00      	cmp	r3, #0
 8002d08:	f47f ada7 	bne.w	800285a <_vfprintf_r+0xa2>
 8002d0c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002d0e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002d12:	2b00      	cmp	r3, #0
 8002d14:	f041 80e7 	bne.w	8003ee6 <_vfprintf_r+0x172e>
 8002d18:	2300      	movs	r3, #0
 8002d1a:	932b      	str	r3, [sp, #172]	; 0xac
 8002d1c:	e2cb      	b.n	80032b6 <_vfprintf_r+0xafe>
 8002d1e:	4643      	mov	r3, r8
 8002d20:	069a      	lsls	r2, r3, #26
 8002d22:	f140 814e 	bpl.w	8002fc2 <_vfprintf_r+0x80a>
 8002d26:	9c08      	ldr	r4, [sp, #32]
 8002d28:	3407      	adds	r4, #7
 8002d2a:	f024 0207 	bic.w	r2, r4, #7
 8002d2e:	f102 0108 	add.w	r1, r2, #8
 8002d32:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002d36:	9108      	str	r1, [sp, #32]
 8002d38:	2201      	movs	r2, #1
 8002d3a:	2100      	movs	r1, #0
 8002d3c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002d40:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002d44:	a956      	add	r1, sp, #344	; 0x158
 8002d46:	9104      	str	r1, [sp, #16]
 8002d48:	f47f aea2 	bne.w	8002a90 <_vfprintf_r+0x2d8>
 8002d4c:	4698      	mov	r8, r3
 8002d4e:	2a01      	cmp	r2, #1
 8002d50:	f000 8350 	beq.w	80033f4 <_vfprintf_r+0xc3c>
 8002d54:	2a02      	cmp	r2, #2
 8002d56:	f000 831b 	beq.w	8003390 <_vfprintf_r+0xbd8>
 8002d5a:	a956      	add	r1, sp, #344	; 0x158
 8002d5c:	e000      	b.n	8002d60 <_vfprintf_r+0x5a8>
 8002d5e:	4639      	mov	r1, r7
 8002d60:	08e2      	lsrs	r2, r4, #3
 8002d62:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002d66:	08e8      	lsrs	r0, r5, #3
 8002d68:	f004 0307 	and.w	r3, r4, #7
 8002d6c:	4605      	mov	r5, r0
 8002d6e:	4614      	mov	r4, r2
 8002d70:	3330      	adds	r3, #48	; 0x30
 8002d72:	ea54 0205 	orrs.w	r2, r4, r5
 8002d76:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002d7a:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002d7e:	d1ee      	bne.n	8002d5e <_vfprintf_r+0x5a6>
 8002d80:	f018 0f01 	tst.w	r8, #1
 8002d84:	f000 8314 	beq.w	80033b0 <_vfprintf_r+0xbf8>
 8002d88:	2b30      	cmp	r3, #48	; 0x30
 8002d8a:	f000 8311 	beq.w	80033b0 <_vfprintf_r+0xbf8>
 8002d8e:	9a04      	ldr	r2, [sp, #16]
 8002d90:	3902      	subs	r1, #2
 8002d92:	2330      	movs	r3, #48	; 0x30
 8002d94:	1a52      	subs	r2, r2, r1
 8002d96:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002d9a:	9209      	str	r2, [sp, #36]	; 0x24
 8002d9c:	460f      	mov	r7, r1
 8002d9e:	e68c      	b.n	8002aba <_vfprintf_r+0x302>
 8002da0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002da4:	2200      	movs	r2, #0
 8002da6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002daa:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002dae:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002db2:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002db6:	2b09      	cmp	r3, #9
 8002db8:	d9f5      	bls.n	8002da6 <_vfprintf_r+0x5ee>
 8002dba:	9206      	str	r2, [sp, #24]
 8002dbc:	e57c      	b.n	80028b8 <_vfprintf_r+0x100>
 8002dbe:	4b14      	ldr	r3, [pc, #80]	; (8002e10 <_vfprintf_r+0x658>)
 8002dc0:	9317      	str	r3, [sp, #92]	; 0x5c
 8002dc2:	f018 0f20 	tst.w	r8, #32
 8002dc6:	f000 8114 	beq.w	8002ff2 <_vfprintf_r+0x83a>
 8002dca:	9c08      	ldr	r4, [sp, #32]
 8002dcc:	3407      	adds	r4, #7
 8002dce:	f024 0307 	bic.w	r3, r4, #7
 8002dd2:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002dd6:	f103 0208 	add.w	r2, r3, #8
 8002dda:	9208      	str	r2, [sp, #32]
 8002ddc:	f018 0f01 	tst.w	r8, #1
 8002de0:	d009      	beq.n	8002df6 <_vfprintf_r+0x63e>
 8002de2:	ea54 0305 	orrs.w	r3, r4, r5
 8002de6:	d006      	beq.n	8002df6 <_vfprintf_r+0x63e>
 8002de8:	2330      	movs	r3, #48	; 0x30
 8002dea:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002dee:	f048 0802 	orr.w	r8, r8, #2
 8002df2:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002df6:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002dfa:	2202      	movs	r2, #2
 8002dfc:	e79d      	b.n	8002d3a <_vfprintf_r+0x582>
 8002dfe:	f048 0801 	orr.w	r8, r8, #1
 8002e02:	f89a 6000 	ldrb.w	r6, [sl]
 8002e06:	e555      	b.n	80028b4 <_vfprintf_r+0xfc>
 8002e08:	08007618 	.word	0x08007618
 8002e0c:	08007628 	.word	0x08007628
 8002e10:	080075e4 	.word	0x080075e4
 8002e14:	9e03      	ldr	r6, [sp, #12]
 8002e16:	4630      	mov	r0, r6
 8002e18:	f002 feaa 	bl	8005b70 <_localeconv_r>
 8002e1c:	6843      	ldr	r3, [r0, #4]
 8002e1e:	9318      	str	r3, [sp, #96]	; 0x60
 8002e20:	4618      	mov	r0, r3
 8002e22:	f7fd fc0d 	bl	8000640 <strlen>
 8002e26:	901b      	str	r0, [sp, #108]	; 0x6c
 8002e28:	4604      	mov	r4, r0
 8002e2a:	4630      	mov	r0, r6
 8002e2c:	f002 fea0 	bl	8005b70 <_localeconv_r>
 8002e30:	6883      	ldr	r3, [r0, #8]
 8002e32:	931a      	str	r3, [sp, #104]	; 0x68
 8002e34:	2c00      	cmp	r4, #0
 8002e36:	f43f adb8 	beq.w	80029aa <_vfprintf_r+0x1f2>
 8002e3a:	f89a 6000 	ldrb.w	r6, [sl]
 8002e3e:	2b00      	cmp	r3, #0
 8002e40:	f43f ad38 	beq.w	80028b4 <_vfprintf_r+0xfc>
 8002e44:	781b      	ldrb	r3, [r3, #0]
 8002e46:	2b00      	cmp	r3, #0
 8002e48:	f43f ad34 	beq.w	80028b4 <_vfprintf_r+0xfc>
 8002e4c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002e50:	e530      	b.n	80028b4 <_vfprintf_r+0xfc>
 8002e52:	9b08      	ldr	r3, [sp, #32]
 8002e54:	f89a 6000 	ldrb.w	r6, [sl]
 8002e58:	681a      	ldr	r2, [r3, #0]
 8002e5a:	9206      	str	r2, [sp, #24]
 8002e5c:	2a00      	cmp	r2, #0
 8002e5e:	f103 0304 	add.w	r3, r3, #4
 8002e62:	f2c0 8697 	blt.w	8003b94 <_vfprintf_r+0x13dc>
 8002e66:	9308      	str	r3, [sp, #32]
 8002e68:	e524      	b.n	80028b4 <_vfprintf_r+0xfc>
 8002e6a:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002e6e:	f89a 6000 	ldrb.w	r6, [sl]
 8002e72:	e51f      	b.n	80028b4 <_vfprintf_r+0xfc>
 8002e74:	f89a 6000 	ldrb.w	r6, [sl]
 8002e78:	f048 0804 	orr.w	r8, r8, #4
 8002e7c:	e51a      	b.n	80028b4 <_vfprintf_r+0xfc>
 8002e7e:	f89a 6000 	ldrb.w	r6, [sl]
 8002e82:	2e2a      	cmp	r6, #42	; 0x2a
 8002e84:	f10a 0201 	add.w	r2, sl, #1
 8002e88:	f001 81b0 	beq.w	80041ec <_vfprintf_r+0x1a34>
 8002e8c:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e90:	2b09      	cmp	r3, #9
 8002e92:	4692      	mov	sl, r2
 8002e94:	f04f 0900 	mov.w	r9, #0
 8002e98:	f63f ad0e 	bhi.w	80028b8 <_vfprintf_r+0x100>
 8002e9c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002ea0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002ea4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002ea8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002eac:	2b09      	cmp	r3, #9
 8002eae:	d9f5      	bls.n	8002e9c <_vfprintf_r+0x6e4>
 8002eb0:	e502      	b.n	80028b8 <_vfprintf_r+0x100>
 8002eb2:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002eb6:	f89a 6000 	ldrb.w	r6, [sl]
 8002eba:	e4fb      	b.n	80028b4 <_vfprintf_r+0xfc>
 8002ebc:	9c08      	ldr	r4, [sp, #32]
 8002ebe:	3407      	adds	r4, #7
 8002ec0:	f024 0407 	bic.w	r4, r4, #7
 8002ec4:	ed94 7b00 	vldr	d7, [r4]
 8002ec8:	ec52 1b17 	vmov	r1, r2, d7
 8002ecc:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002ed0:	931d      	str	r3, [sp, #116]	; 0x74
 8002ed2:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002ed6:	3408      	adds	r4, #8
 8002ed8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002edc:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002ee0:	4bba      	ldr	r3, [pc, #744]	; (80031cc <_vfprintf_r+0xa14>)
 8002ee2:	9408      	str	r4, [sp, #32]
 8002ee4:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002ee8:	f7fe f8c0 	bl	800106c <__aeabi_dcmpun>
 8002eec:	2800      	cmp	r0, #0
 8002eee:	f040 846f 	bne.w	80037d0 <_vfprintf_r+0x1018>
 8002ef2:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002ef6:	4bb5      	ldr	r3, [pc, #724]	; (80031cc <_vfprintf_r+0xa14>)
 8002ef8:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002efc:	f7fe f898 	bl	8001030 <__aeabi_dcmple>
 8002f00:	2800      	cmp	r0, #0
 8002f02:	f040 8465 	bne.w	80037d0 <_vfprintf_r+0x1018>
 8002f06:	2200      	movs	r2, #0
 8002f08:	2300      	movs	r3, #0
 8002f0a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002f0e:	f7fe f885 	bl	800101c <__aeabi_dcmplt>
 8002f12:	2800      	cmp	r0, #0
 8002f14:	f040 855b 	bne.w	80039ce <_vfprintf_r+0x1216>
 8002f18:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002f1c:	4fac      	ldr	r7, [pc, #688]	; (80031d0 <_vfprintf_r+0xa18>)
 8002f1e:	4bad      	ldr	r3, [pc, #692]	; (80031d4 <_vfprintf_r+0xa1c>)
 8002f20:	2000      	movs	r0, #0
 8002f22:	2103      	movs	r1, #3
 8002f24:	9104      	str	r1, [sp, #16]
 8002f26:	900a      	str	r0, [sp, #40]	; 0x28
 8002f28:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002f2c:	2e47      	cmp	r6, #71	; 0x47
 8002f2e:	bfd8      	it	le
 8002f30:	461f      	movle	r7, r3
 8002f32:	9109      	str	r1, [sp, #36]	; 0x24
 8002f34:	4681      	mov	r9, r0
 8002f36:	900f      	str	r0, [sp, #60]	; 0x3c
 8002f38:	9014      	str	r0, [sp, #80]	; 0x50
 8002f3a:	9011      	str	r0, [sp, #68]	; 0x44
 8002f3c:	e5c9      	b.n	8002ad2 <_vfprintf_r+0x31a>
 8002f3e:	9808      	ldr	r0, [sp, #32]
 8002f40:	2300      	movs	r3, #0
 8002f42:	6801      	ldr	r1, [r0, #0]
 8002f44:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002f48:	461a      	mov	r2, r3
 8002f4a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002f4e:	2301      	movs	r3, #1
 8002f50:	1d01      	adds	r1, r0, #4
 8002f52:	9304      	str	r3, [sp, #16]
 8002f54:	920a      	str	r2, [sp, #40]	; 0x28
 8002f56:	4691      	mov	r9, r2
 8002f58:	920f      	str	r2, [sp, #60]	; 0x3c
 8002f5a:	9214      	str	r2, [sp, #80]	; 0x50
 8002f5c:	9211      	str	r2, [sp, #68]	; 0x44
 8002f5e:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002f62:	af3d      	add	r7, sp, #244	; 0xf4
 8002f64:	e5b9      	b.n	8002ada <_vfprintf_r+0x322>
 8002f66:	9b08      	ldr	r3, [sp, #32]
 8002f68:	681f      	ldr	r7, [r3, #0]
 8002f6a:	2500      	movs	r5, #0
 8002f6c:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002f70:	1d1c      	adds	r4, r3, #4
 8002f72:	2f00      	cmp	r7, #0
 8002f74:	f000 8639 	beq.w	8003bea <_vfprintf_r+0x1432>
 8002f78:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002f7c:	f000 8711 	beq.w	8003da2 <_vfprintf_r+0x15ea>
 8002f80:	464a      	mov	r2, r9
 8002f82:	4629      	mov	r1, r5
 8002f84:	4638      	mov	r0, r7
 8002f86:	f7fd fbcb 	bl	8000720 <memchr>
 8002f8a:	900a      	str	r0, [sp, #40]	; 0x28
 8002f8c:	2800      	cmp	r0, #0
 8002f8e:	f000 85e7 	beq.w	8003b60 <_vfprintf_r+0x13a8>
 8002f92:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002f94:	1bdb      	subs	r3, r3, r7
 8002f96:	9309      	str	r3, [sp, #36]	; 0x24
 8002f98:	46a9      	mov	r9, r5
 8002f9a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002f9e:	9408      	str	r4, [sp, #32]
 8002fa0:	9304      	str	r3, [sp, #16]
 8002fa2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002fa6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002faa:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002fae:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002fb2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002fb6:	e58c      	b.n	8002ad2 <_vfprintf_r+0x31a>
 8002fb8:	f048 0310 	orr.w	r3, r8, #16
 8002fbc:	069a      	lsls	r2, r3, #26
 8002fbe:	f53f aeb2 	bmi.w	8002d26 <_vfprintf_r+0x56e>
 8002fc2:	9a08      	ldr	r2, [sp, #32]
 8002fc4:	06df      	lsls	r7, r3, #27
 8002fc6:	f102 0104 	add.w	r1, r2, #4
 8002fca:	f100 837e 	bmi.w	80036ca <_vfprintf_r+0xf12>
 8002fce:	065d      	lsls	r5, r3, #25
 8002fd0:	9a08      	ldr	r2, [sp, #32]
 8002fd2:	f100 84e4 	bmi.w	800399e <_vfprintf_r+0x11e6>
 8002fd6:	059c      	lsls	r4, r3, #22
 8002fd8:	f140 8377 	bpl.w	80036ca <_vfprintf_r+0xf12>
 8002fdc:	7814      	ldrb	r4, [r2, #0]
 8002fde:	9108      	str	r1, [sp, #32]
 8002fe0:	2500      	movs	r5, #0
 8002fe2:	2201      	movs	r2, #1
 8002fe4:	e6a9      	b.n	8002d3a <_vfprintf_r+0x582>
 8002fe6:	4b7c      	ldr	r3, [pc, #496]	; (80031d8 <_vfprintf_r+0xa20>)
 8002fe8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002fea:	f018 0f20 	tst.w	r8, #32
 8002fee:	f47f aeec 	bne.w	8002dca <_vfprintf_r+0x612>
 8002ff2:	9a08      	ldr	r2, [sp, #32]
 8002ff4:	f018 0f10 	tst.w	r8, #16
 8002ff8:	f102 0304 	add.w	r3, r2, #4
 8002ffc:	f040 8354 	bne.w	80036a8 <_vfprintf_r+0xef0>
 8003000:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003004:	9a08      	ldr	r2, [sp, #32]
 8003006:	f040 84d0 	bne.w	80039aa <_vfprintf_r+0x11f2>
 800300a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800300e:	f000 834b 	beq.w	80036a8 <_vfprintf_r+0xef0>
 8003012:	7814      	ldrb	r4, [r2, #0]
 8003014:	9308      	str	r3, [sp, #32]
 8003016:	2500      	movs	r5, #0
 8003018:	e6e0      	b.n	8002ddc <_vfprintf_r+0x624>
 800301a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800301e:	f89a 6000 	ldrb.w	r6, [sl]
 8003022:	2b00      	cmp	r3, #0
 8003024:	f47f ac46 	bne.w	80028b4 <_vfprintf_r+0xfc>
 8003028:	2320      	movs	r3, #32
 800302a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800302e:	e441      	b.n	80028b4 <_vfprintf_r+0xfc>
 8003030:	f89a 6000 	ldrb.w	r6, [sl]
 8003034:	2e6c      	cmp	r6, #108	; 0x6c
 8003036:	bf03      	ittte	eq
 8003038:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800303c:	f048 0820 	orreq.w	r8, r8, #32
 8003040:	f10a 0a01 	addeq.w	sl, sl, #1
 8003044:	f048 0810 	orrne.w	r8, r8, #16
 8003048:	e434      	b.n	80028b4 <_vfprintf_r+0xfc>
 800304a:	9a08      	ldr	r2, [sp, #32]
 800304c:	f018 0f20 	tst.w	r8, #32
 8003050:	f852 3b04 	ldr.w	r3, [r2], #4
 8003054:	9208      	str	r2, [sp, #32]
 8003056:	f000 83a1 	beq.w	800379c <_vfprintf_r+0xfe4>
 800305a:	9a05      	ldr	r2, [sp, #20]
 800305c:	4610      	mov	r0, r2
 800305e:	17d1      	asrs	r1, r2, #31
 8003060:	e9c3 0100 	strd	r0, r1, [r3]
 8003064:	4657      	mov	r7, sl
 8003066:	e64d      	b.n	8002d04 <_vfprintf_r+0x54c>
 8003068:	f89a 6000 	ldrb.w	r6, [sl]
 800306c:	2e68      	cmp	r6, #104	; 0x68
 800306e:	bf03      	ittte	eq
 8003070:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8003074:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8003078:	f10a 0a01 	addeq.w	sl, sl, #1
 800307c:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8003080:	e418      	b.n	80028b4 <_vfprintf_r+0xfc>
 8003082:	9908      	ldr	r1, [sp, #32]
 8003084:	4b55      	ldr	r3, [pc, #340]	; (80031dc <_vfprintf_r+0xa24>)
 8003086:	680c      	ldr	r4, [r1, #0]
 8003088:	9317      	str	r3, [sp, #92]	; 0x5c
 800308a:	f647 0230 	movw	r2, #30768	; 0x7830
 800308e:	3104      	adds	r1, #4
 8003090:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003094:	f048 0302 	orr.w	r3, r8, #2
 8003098:	9108      	str	r1, [sp, #32]
 800309a:	2500      	movs	r5, #0
 800309c:	2202      	movs	r2, #2
 800309e:	2678      	movs	r6, #120	; 0x78
 80030a0:	e64b      	b.n	8002d3a <_vfprintf_r+0x582>
 80030a2:	f048 0808 	orr.w	r8, r8, #8
 80030a6:	f89a 6000 	ldrb.w	r6, [sl]
 80030aa:	e403      	b.n	80028b4 <_vfprintf_r+0xfc>
 80030ac:	f048 0310 	orr.w	r3, r8, #16
 80030b0:	069f      	lsls	r7, r3, #26
 80030b2:	f53f acd1 	bmi.w	8002a58 <_vfprintf_r+0x2a0>
 80030b6:	9908      	ldr	r1, [sp, #32]
 80030b8:	06dd      	lsls	r5, r3, #27
 80030ba:	f101 0204 	add.w	r2, r1, #4
 80030be:	f100 82fd 	bmi.w	80036bc <_vfprintf_r+0xf04>
 80030c2:	065c      	lsls	r4, r3, #25
 80030c4:	9908      	ldr	r1, [sp, #32]
 80030c6:	f100 8475 	bmi.w	80039b4 <_vfprintf_r+0x11fc>
 80030ca:	0598      	lsls	r0, r3, #22
 80030cc:	f140 82f6 	bpl.w	80036bc <_vfprintf_r+0xf04>
 80030d0:	f991 4000 	ldrsb.w	r4, [r1]
 80030d4:	9208      	str	r2, [sp, #32]
 80030d6:	17e5      	asrs	r5, r4, #31
 80030d8:	4620      	mov	r0, r4
 80030da:	4629      	mov	r1, r5
 80030dc:	e4c7      	b.n	8002a6e <_vfprintf_r+0x2b6>
 80030de:	9a08      	ldr	r2, [sp, #32]
 80030e0:	f018 0f10 	tst.w	r8, #16
 80030e4:	f102 0304 	add.w	r3, r2, #4
 80030e8:	f040 82e3 	bne.w	80036b2 <_vfprintf_r+0xefa>
 80030ec:	f018 0f40 	tst.w	r8, #64	; 0x40
 80030f0:	9a08      	ldr	r2, [sp, #32]
 80030f2:	f040 8467 	bne.w	80039c4 <_vfprintf_r+0x120c>
 80030f6:	f418 7f00 	tst.w	r8, #512	; 0x200
 80030fa:	f000 82da 	beq.w	80036b2 <_vfprintf_r+0xefa>
 80030fe:	7814      	ldrb	r4, [r2, #0]
 8003100:	9308      	str	r3, [sp, #32]
 8003102:	2500      	movs	r5, #0
 8003104:	e488      	b.n	8002a18 <_vfprintf_r+0x260>
 8003106:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800310a:	f002 fd45 	bl	8005b98 <__retarget_lock_release_recursive>
 800310e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003112:	9305      	str	r3, [sp, #20]
 8003114:	e443      	b.n	800299e <_vfprintf_r+0x1e6>
 8003116:	2e00      	cmp	r6, #0
 8003118:	f43f adf8 	beq.w	8002d0c <_vfprintf_r+0x554>
 800311c:	2300      	movs	r3, #0
 800311e:	2101      	movs	r1, #1
 8003120:	461a      	mov	r2, r3
 8003122:	9104      	str	r1, [sp, #16]
 8003124:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003128:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800312c:	930a      	str	r3, [sp, #40]	; 0x28
 800312e:	4699      	mov	r9, r3
 8003130:	930f      	str	r3, [sp, #60]	; 0x3c
 8003132:	9314      	str	r3, [sp, #80]	; 0x50
 8003134:	9311      	str	r3, [sp, #68]	; 0x44
 8003136:	9109      	str	r1, [sp, #36]	; 0x24
 8003138:	af3d      	add	r7, sp, #244	; 0xf4
 800313a:	e4ce      	b.n	8002ada <_vfprintf_r+0x322>
 800313c:	2e65      	cmp	r6, #101	; 0x65
 800313e:	f340 80ca 	ble.w	80032d6 <_vfprintf_r+0xb1e>
 8003142:	2200      	movs	r2, #0
 8003144:	2300      	movs	r3, #0
 8003146:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800314a:	f7fd ff5d 	bl	8001008 <__aeabi_dcmpeq>
 800314e:	2800      	cmp	r0, #0
 8003150:	f000 8169 	beq.w	8003426 <_vfprintf_r+0xc6e>
 8003154:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003156:	4a22      	ldr	r2, [pc, #136]	; (80031e0 <_vfprintf_r+0xa28>)
 8003158:	f8cb 2000 	str.w	r2, [fp]
 800315c:	3301      	adds	r3, #1
 800315e:	3401      	adds	r4, #1
 8003160:	2201      	movs	r2, #1
 8003162:	2b07      	cmp	r3, #7
 8003164:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003168:	f8cb 2004 	str.w	r2, [fp, #4]
 800316c:	f300 8406 	bgt.w	800397c <_vfprintf_r+0x11c4>
 8003170:	f10b 0b08 	add.w	fp, fp, #8
 8003174:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003176:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003178:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800317a:	4293      	cmp	r3, r2
 800317c:	db03      	blt.n	8003186 <_vfprintf_r+0x9ce>
 800317e:	f018 0f01 	tst.w	r8, #1
 8003182:	f43f ad6a 	beq.w	8002c5a <_vfprintf_r+0x4a2>
 8003186:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003188:	9a16      	ldr	r2, [sp, #88]	; 0x58
 800318a:	f8cb 2000 	str.w	r2, [fp]
 800318e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003190:	f8cb 2004 	str.w	r2, [fp, #4]
 8003194:	3301      	adds	r3, #1
 8003196:	4414      	add	r4, r2
 8003198:	2b07      	cmp	r3, #7
 800319a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800319e:	f300 8517 	bgt.w	8003bd0 <_vfprintf_r+0x1418>
 80031a2:	f10b 0b08 	add.w	fp, fp, #8
 80031a6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80031a8:	1e5d      	subs	r5, r3, #1
 80031aa:	2d00      	cmp	r5, #0
 80031ac:	f77f ad55 	ble.w	8002c5a <_vfprintf_r+0x4a2>
 80031b0:	2d10      	cmp	r5, #16
 80031b2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031b4:	4b0b      	ldr	r3, [pc, #44]	; (80031e4 <_vfprintf_r+0xa2c>)
 80031b6:	f340 82e7 	ble.w	8003788 <_vfprintf_r+0xfd0>
 80031ba:	4619      	mov	r1, r3
 80031bc:	2610      	movs	r6, #16
 80031be:	4623      	mov	r3, r4
 80031c0:	9f03      	ldr	r7, [sp, #12]
 80031c2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80031c6:	460c      	mov	r4, r1
 80031c8:	e014      	b.n	80031f4 <_vfprintf_r+0xa3c>
 80031ca:	bf00      	nop
 80031cc:	7fefffff 	.word	0x7fefffff
 80031d0:	080075d8 	.word	0x080075d8
 80031d4:	080075d4 	.word	0x080075d4
 80031d8:	080075f8 	.word	0x080075f8
 80031dc:	080075e4 	.word	0x080075e4
 80031e0:	08007614 	.word	0x08007614
 80031e4:	08007628 	.word	0x08007628
 80031e8:	f10b 0b08 	add.w	fp, fp, #8
 80031ec:	3d10      	subs	r5, #16
 80031ee:	2d10      	cmp	r5, #16
 80031f0:	f340 82c7 	ble.w	8003782 <_vfprintf_r+0xfca>
 80031f4:	3201      	adds	r2, #1
 80031f6:	3310      	adds	r3, #16
 80031f8:	2a07      	cmp	r2, #7
 80031fa:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80031fe:	e9cb 4600 	strd	r4, r6, [fp]
 8003202:	ddf1      	ble.n	80031e8 <_vfprintf_r+0xa30>
 8003204:	aa2a      	add	r2, sp, #168	; 0xa8
 8003206:	4649      	mov	r1, r9
 8003208:	4638      	mov	r0, r7
 800320a:	f003 fe03 	bl	8006e14 <__sprint_r>
 800320e:	2800      	cmp	r0, #0
 8003210:	d14c      	bne.n	80032ac <_vfprintf_r+0xaf4>
 8003212:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003216:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800321a:	e7e7      	b.n	80031ec <_vfprintf_r+0xa34>
 800321c:	9b06      	ldr	r3, [sp, #24]
 800321e:	9a04      	ldr	r2, [sp, #16]
 8003220:	1a9d      	subs	r5, r3, r2
 8003222:	2d00      	cmp	r5, #0
 8003224:	f77f acc9 	ble.w	8002bba <_vfprintf_r+0x402>
 8003228:	2d10      	cmp	r5, #16
 800322a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800322c:	4bbc      	ldr	r3, [pc, #752]	; (8003520 <_vfprintf_r+0xd68>)
 800322e:	dd27      	ble.n	8003280 <_vfprintf_r+0xac8>
 8003230:	4659      	mov	r1, fp
 8003232:	4620      	mov	r0, r4
 8003234:	46bb      	mov	fp, r7
 8003236:	461c      	mov	r4, r3
 8003238:	4637      	mov	r7, r6
 800323a:	9e07      	ldr	r6, [sp, #28]
 800323c:	e004      	b.n	8003248 <_vfprintf_r+0xa90>
 800323e:	3d10      	subs	r5, #16
 8003240:	2d10      	cmp	r5, #16
 8003242:	f101 0108 	add.w	r1, r1, #8
 8003246:	dd16      	ble.n	8003276 <_vfprintf_r+0xabe>
 8003248:	3201      	adds	r2, #1
 800324a:	3010      	adds	r0, #16
 800324c:	2310      	movs	r3, #16
 800324e:	2a07      	cmp	r2, #7
 8003250:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8003254:	600c      	str	r4, [r1, #0]
 8003256:	604b      	str	r3, [r1, #4]
 8003258:	ddf1      	ble.n	800323e <_vfprintf_r+0xa86>
 800325a:	aa2a      	add	r2, sp, #168	; 0xa8
 800325c:	4631      	mov	r1, r6
 800325e:	9803      	ldr	r0, [sp, #12]
 8003260:	f003 fdd8 	bl	8006e14 <__sprint_r>
 8003264:	2800      	cmp	r0, #0
 8003266:	f040 80a8 	bne.w	80033ba <_vfprintf_r+0xc02>
 800326a:	3d10      	subs	r5, #16
 800326c:	2d10      	cmp	r5, #16
 800326e:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8003272:	a92d      	add	r1, sp, #180	; 0xb4
 8003274:	dce8      	bgt.n	8003248 <_vfprintf_r+0xa90>
 8003276:	463e      	mov	r6, r7
 8003278:	4623      	mov	r3, r4
 800327a:	465f      	mov	r7, fp
 800327c:	4604      	mov	r4, r0
 800327e:	468b      	mov	fp, r1
 8003280:	3201      	adds	r2, #1
 8003282:	442c      	add	r4, r5
 8003284:	2a07      	cmp	r2, #7
 8003286:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800328a:	e9cb 3500 	strd	r3, r5, [fp]
 800328e:	f300 8292 	bgt.w	80037b6 <_vfprintf_r+0xffe>
 8003292:	f10b 0b08 	add.w	fp, fp, #8
 8003296:	e490      	b.n	8002bba <_vfprintf_r+0x402>
 8003298:	aa2a      	add	r2, sp, #168	; 0xa8
 800329a:	9907      	ldr	r1, [sp, #28]
 800329c:	9803      	ldr	r0, [sp, #12]
 800329e:	f003 fdb9 	bl	8006e14 <__sprint_r>
 80032a2:	2800      	cmp	r0, #0
 80032a4:	f43f ad23 	beq.w	8002cee <_vfprintf_r+0x536>
 80032a8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80032ac:	990a      	ldr	r1, [sp, #40]	; 0x28
 80032ae:	b111      	cbz	r1, 80032b6 <_vfprintf_r+0xafe>
 80032b0:	9803      	ldr	r0, [sp, #12]
 80032b2:	f002 f9c1 	bl	8005638 <_free_r>
 80032b6:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 80032ba:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80032be:	07d0      	lsls	r0, r2, #31
 80032c0:	d402      	bmi.n	80032c8 <_vfprintf_r+0xb10>
 80032c2:	0599      	lsls	r1, r3, #22
 80032c4:	f140 81d0 	bpl.w	8003668 <_vfprintf_r+0xeb0>
 80032c8:	065a      	lsls	r2, r3, #25
 80032ca:	f53f ab65 	bmi.w	8002998 <_vfprintf_r+0x1e0>
 80032ce:	9805      	ldr	r0, [sp, #20]
 80032d0:	b057      	add	sp, #348	; 0x15c
 80032d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80032d6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80032d8:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032da:	2a01      	cmp	r2, #1
 80032dc:	f104 0401 	add.w	r4, r4, #1
 80032e0:	f103 0501 	add.w	r5, r3, #1
 80032e4:	f10b 0608 	add.w	r6, fp, #8
 80032e8:	f340 811c 	ble.w	8003524 <_vfprintf_r+0xd6c>
 80032ec:	2301      	movs	r3, #1
 80032ee:	2d07      	cmp	r5, #7
 80032f0:	f8cb 7000 	str.w	r7, [fp]
 80032f4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80032f8:	f8cb 3004 	str.w	r3, [fp, #4]
 80032fc:	f300 81bb 	bgt.w	8003676 <_vfprintf_r+0xebe>
 8003300:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003302:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003304:	1c69      	adds	r1, r5, #1
 8003306:	441c      	add	r4, r3
 8003308:	2907      	cmp	r1, #7
 800330a:	910b      	str	r1, [sp, #44]	; 0x2c
 800330c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003310:	e9c6 2300 	strd	r2, r3, [r6]
 8003314:	f300 81bb 	bgt.w	800368e <_vfprintf_r+0xed6>
 8003318:	3608      	adds	r6, #8
 800331a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800331c:	1c53      	adds	r3, r2, #1
 800331e:	461d      	mov	r5, r3
 8003320:	9509      	str	r5, [sp, #36]	; 0x24
 8003322:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003324:	930e      	str	r3, [sp, #56]	; 0x38
 8003326:	2200      	movs	r2, #0
 8003328:	2300      	movs	r3, #0
 800332a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800332e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003332:	f106 0b08 	add.w	fp, r6, #8
 8003336:	f7fd fe67 	bl	8001008 <__aeabi_dcmpeq>
 800333a:	2800      	cmp	r0, #0
 800333c:	f040 80c2 	bne.w	80034c4 <_vfprintf_r+0xd0c>
 8003340:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8003342:	f8c6 9004 	str.w	r9, [r6, #4]
 8003346:	3701      	adds	r7, #1
 8003348:	444c      	add	r4, r9
 800334a:	2d07      	cmp	r5, #7
 800334c:	6037      	str	r7, [r6, #0]
 800334e:	942c      	str	r4, [sp, #176]	; 0xb0
 8003350:	952b      	str	r5, [sp, #172]	; 0xac
 8003352:	f300 80f9 	bgt.w	8003548 <_vfprintf_r+0xd90>
 8003356:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003358:	f106 0310 	add.w	r3, r6, #16
 800335c:	3202      	adds	r2, #2
 800335e:	465e      	mov	r6, fp
 8003360:	9209      	str	r2, [sp, #36]	; 0x24
 8003362:	469b      	mov	fp, r3
 8003364:	9a19      	ldr	r2, [sp, #100]	; 0x64
 8003366:	6072      	str	r2, [r6, #4]
 8003368:	4414      	add	r4, r2
 800336a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800336c:	942c      	str	r4, [sp, #176]	; 0xb0
 800336e:	ab26      	add	r3, sp, #152	; 0x98
 8003370:	2a07      	cmp	r2, #7
 8003372:	922b      	str	r2, [sp, #172]	; 0xac
 8003374:	6033      	str	r3, [r6, #0]
 8003376:	f77f ac70 	ble.w	8002c5a <_vfprintf_r+0x4a2>
 800337a:	aa2a      	add	r2, sp, #168	; 0xa8
 800337c:	9907      	ldr	r1, [sp, #28]
 800337e:	9803      	ldr	r0, [sp, #12]
 8003380:	f003 fd48 	bl	8006e14 <__sprint_r>
 8003384:	2800      	cmp	r0, #0
 8003386:	d18f      	bne.n	80032a8 <_vfprintf_r+0xaf0>
 8003388:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800338a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800338e:	e464      	b.n	8002c5a <_vfprintf_r+0x4a2>
 8003390:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003392:	af56      	add	r7, sp, #344	; 0x158
 8003394:	0923      	lsrs	r3, r4, #4
 8003396:	f004 010f 	and.w	r1, r4, #15
 800339a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800339e:	092a      	lsrs	r2, r5, #4
 80033a0:	461c      	mov	r4, r3
 80033a2:	4615      	mov	r5, r2
 80033a4:	5c43      	ldrb	r3, [r0, r1]
 80033a6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80033aa:	ea54 0305 	orrs.w	r3, r4, r5
 80033ae:	d1f1      	bne.n	8003394 <_vfprintf_r+0xbdc>
 80033b0:	9b04      	ldr	r3, [sp, #16]
 80033b2:	1bdb      	subs	r3, r3, r7
 80033b4:	9309      	str	r3, [sp, #36]	; 0x24
 80033b6:	f7ff bb80 	b.w	8002aba <_vfprintf_r+0x302>
 80033ba:	46b1      	mov	r9, r6
 80033bc:	e776      	b.n	80032ac <_vfprintf_r+0xaf4>
 80033be:	aa2a      	add	r2, sp, #168	; 0xa8
 80033c0:	9907      	ldr	r1, [sp, #28]
 80033c2:	9803      	ldr	r0, [sp, #12]
 80033c4:	f003 fd26 	bl	8006e14 <__sprint_r>
 80033c8:	2800      	cmp	r0, #0
 80033ca:	f47f af6d 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 80033ce:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033d0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033d4:	f7ff bbdd 	b.w	8002b92 <_vfprintf_r+0x3da>
 80033d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80033da:	9907      	ldr	r1, [sp, #28]
 80033dc:	9803      	ldr	r0, [sp, #12]
 80033de:	f003 fd19 	bl	8006e14 <__sprint_r>
 80033e2:	2800      	cmp	r0, #0
 80033e4:	f47f af60 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 80033e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033ea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033ee:	f7ff bbe0 	b.w	8002bb2 <_vfprintf_r+0x3fa>
 80033f2:	4698      	mov	r8, r3
 80033f4:	2d00      	cmp	r5, #0
 80033f6:	bf08      	it	eq
 80033f8:	2c0a      	cmpeq	r4, #10
 80033fa:	f080 8170 	bcs.w	80036de <_vfprintf_r+0xf26>
 80033fe:	af56      	add	r7, sp, #344	; 0x158
 8003400:	3430      	adds	r4, #48	; 0x30
 8003402:	2301      	movs	r3, #1
 8003404:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003408:	9309      	str	r3, [sp, #36]	; 0x24
 800340a:	f7ff bb56 	b.w	8002aba <_vfprintf_r+0x302>
 800340e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003410:	9907      	ldr	r1, [sp, #28]
 8003412:	9803      	ldr	r0, [sp, #12]
 8003414:	f003 fcfe 	bl	8006e14 <__sprint_r>
 8003418:	2800      	cmp	r0, #0
 800341a:	f47f af45 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 800341e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003420:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003424:	e406      	b.n	8002c34 <_vfprintf_r+0x47c>
 8003426:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003428:	2b00      	cmp	r3, #0
 800342a:	f340 8273 	ble.w	8003914 <_vfprintf_r+0x115c>
 800342e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003432:	4293      	cmp	r3, r2
 8003434:	bfa8      	it	ge
 8003436:	4613      	movge	r3, r2
 8003438:	2b00      	cmp	r3, #0
 800343a:	461d      	mov	r5, r3
 800343c:	dd0d      	ble.n	800345a <_vfprintf_r+0xca2>
 800343e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003440:	f8cb 7000 	str.w	r7, [fp]
 8003444:	3301      	adds	r3, #1
 8003446:	442c      	add	r4, r5
 8003448:	2b07      	cmp	r3, #7
 800344a:	942c      	str	r4, [sp, #176]	; 0xb0
 800344c:	f8cb 5004 	str.w	r5, [fp, #4]
 8003450:	932b      	str	r3, [sp, #172]	; 0xac
 8003452:	f300 82c1 	bgt.w	80039d8 <_vfprintf_r+0x1220>
 8003456:	f10b 0b08 	add.w	fp, fp, #8
 800345a:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800345c:	2d00      	cmp	r5, #0
 800345e:	bfa8      	it	ge
 8003460:	1b5b      	subge	r3, r3, r5
 8003462:	2b00      	cmp	r3, #0
 8003464:	461d      	mov	r5, r3
 8003466:	f340 8099 	ble.w	800359c <_vfprintf_r+0xde4>
 800346a:	2d10      	cmp	r5, #16
 800346c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800346e:	4b2c      	ldr	r3, [pc, #176]	; (8003520 <_vfprintf_r+0xd68>)
 8003470:	f340 83db 	ble.w	8003c2a <_vfprintf_r+0x1472>
 8003474:	4618      	mov	r0, r3
 8003476:	4621      	mov	r1, r4
 8003478:	465b      	mov	r3, fp
 800347a:	2610      	movs	r6, #16
 800347c:	46bb      	mov	fp, r7
 800347e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003482:	9c07      	ldr	r4, [sp, #28]
 8003484:	4607      	mov	r7, r0
 8003486:	e004      	b.n	8003492 <_vfprintf_r+0xcda>
 8003488:	3308      	adds	r3, #8
 800348a:	3d10      	subs	r5, #16
 800348c:	2d10      	cmp	r5, #16
 800348e:	f340 83c7 	ble.w	8003c20 <_vfprintf_r+0x1468>
 8003492:	3201      	adds	r2, #1
 8003494:	3110      	adds	r1, #16
 8003496:	2a07      	cmp	r2, #7
 8003498:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800349c:	e9c3 7600 	strd	r7, r6, [r3]
 80034a0:	ddf2      	ble.n	8003488 <_vfprintf_r+0xcd0>
 80034a2:	aa2a      	add	r2, sp, #168	; 0xa8
 80034a4:	4621      	mov	r1, r4
 80034a6:	4648      	mov	r0, r9
 80034a8:	f003 fcb4 	bl	8006e14 <__sprint_r>
 80034ac:	2800      	cmp	r0, #0
 80034ae:	f040 84a5 	bne.w	8003dfc <_vfprintf_r+0x1644>
 80034b2:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 80034b6:	ab2d      	add	r3, sp, #180	; 0xb4
 80034b8:	e7e7      	b.n	800348a <_vfprintf_r+0xcd2>
 80034ba:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80034be:	af56      	add	r7, sp, #344	; 0x158
 80034c0:	f7ff bafb 	b.w	8002aba <_vfprintf_r+0x302>
 80034c4:	f1b9 0f00 	cmp.w	r9, #0
 80034c8:	f77f af4c 	ble.w	8003364 <_vfprintf_r+0xbac>
 80034cc:	f1b9 0f10 	cmp.w	r9, #16
 80034d0:	4b13      	ldr	r3, [pc, #76]	; (8003520 <_vfprintf_r+0xd68>)
 80034d2:	f340 8659 	ble.w	8004188 <_vfprintf_r+0x19d0>
 80034d6:	4619      	mov	r1, r3
 80034d8:	4622      	mov	r2, r4
 80034da:	4633      	mov	r3, r6
 80034dc:	2710      	movs	r7, #16
 80034de:	f8dd b00c 	ldr.w	fp, [sp, #12]
 80034e2:	9c07      	ldr	r4, [sp, #28]
 80034e4:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 80034e6:	460e      	mov	r6, r1
 80034e8:	e007      	b.n	80034fa <_vfprintf_r+0xd42>
 80034ea:	3308      	adds	r3, #8
 80034ec:	f1a9 0910 	sub.w	r9, r9, #16
 80034f0:	f1b9 0f10 	cmp.w	r9, #16
 80034f4:	f340 8353 	ble.w	8003b9e <_vfprintf_r+0x13e6>
 80034f8:	3501      	adds	r5, #1
 80034fa:	3210      	adds	r2, #16
 80034fc:	2d07      	cmp	r5, #7
 80034fe:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003502:	e9c3 6700 	strd	r6, r7, [r3]
 8003506:	ddf0      	ble.n	80034ea <_vfprintf_r+0xd32>
 8003508:	aa2a      	add	r2, sp, #168	; 0xa8
 800350a:	4621      	mov	r1, r4
 800350c:	4658      	mov	r0, fp
 800350e:	f003 fc81 	bl	8006e14 <__sprint_r>
 8003512:	2800      	cmp	r0, #0
 8003514:	f040 8472 	bne.w	8003dfc <_vfprintf_r+0x1644>
 8003518:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800351c:	ab2d      	add	r3, sp, #180	; 0xb4
 800351e:	e7e5      	b.n	80034ec <_vfprintf_r+0xd34>
 8003520:	08007628 	.word	0x08007628
 8003524:	f018 0f01 	tst.w	r8, #1
 8003528:	f47f aee0 	bne.w	80032ec <_vfprintf_r+0xb34>
 800352c:	2201      	movs	r2, #1
 800352e:	2d07      	cmp	r5, #7
 8003530:	f8cb 7000 	str.w	r7, [fp]
 8003534:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003538:	f8cb 2004 	str.w	r2, [fp, #4]
 800353c:	dc04      	bgt.n	8003548 <_vfprintf_r+0xd90>
 800353e:	3302      	adds	r3, #2
 8003540:	9309      	str	r3, [sp, #36]	; 0x24
 8003542:	f10b 0b10 	add.w	fp, fp, #16
 8003546:	e70d      	b.n	8003364 <_vfprintf_r+0xbac>
 8003548:	aa2a      	add	r2, sp, #168	; 0xa8
 800354a:	9907      	ldr	r1, [sp, #28]
 800354c:	9803      	ldr	r0, [sp, #12]
 800354e:	f003 fc61 	bl	8006e14 <__sprint_r>
 8003552:	2800      	cmp	r0, #0
 8003554:	f47f aea8 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 8003558:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800355c:	3301      	adds	r3, #1
 800355e:	9309      	str	r3, [sp, #36]	; 0x24
 8003560:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 8003564:	ae2d      	add	r6, sp, #180	; 0xb4
 8003566:	e6fd      	b.n	8003364 <_vfprintf_r+0xbac>
 8003568:	aa2a      	add	r2, sp, #168	; 0xa8
 800356a:	9907      	ldr	r1, [sp, #28]
 800356c:	9803      	ldr	r0, [sp, #12]
 800356e:	f003 fc51 	bl	8006e14 <__sprint_r>
 8003572:	2800      	cmp	r0, #0
 8003574:	f47f ae98 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 8003578:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800357c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800357e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003582:	f7ff baf6 	b.w	8002b72 <_vfprintf_r+0x3ba>
 8003586:	aa2a      	add	r2, sp, #168	; 0xa8
 8003588:	9907      	ldr	r1, [sp, #28]
 800358a:	9803      	ldr	r0, [sp, #12]
 800358c:	f003 fc42 	bl	8006e14 <__sprint_r>
 8003590:	2800      	cmp	r0, #0
 8003592:	f47f ae89 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 8003596:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003598:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800359c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800359e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80035a2:	443b      	add	r3, r7
 80035a4:	4699      	mov	r9, r3
 80035a6:	f040 8357 	bne.w	8003c58 <_vfprintf_r+0x14a0>
 80035aa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80035ac:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80035ae:	4293      	cmp	r3, r2
 80035b0:	db49      	blt.n	8003646 <_vfprintf_r+0xe8e>
 80035b2:	f018 0f01 	tst.w	r8, #1
 80035b6:	d146      	bne.n	8003646 <_vfprintf_r+0xe8e>
 80035b8:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80035ba:	18bd      	adds	r5, r7, r2
 80035bc:	eba5 0509 	sub.w	r5, r5, r9
 80035c0:	1ad3      	subs	r3, r2, r3
 80035c2:	429d      	cmp	r5, r3
 80035c4:	bfa8      	it	ge
 80035c6:	461d      	movge	r5, r3
 80035c8:	2d00      	cmp	r5, #0
 80035ca:	dd0d      	ble.n	80035e8 <_vfprintf_r+0xe30>
 80035cc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035ce:	f8cb 9000 	str.w	r9, [fp]
 80035d2:	3201      	adds	r2, #1
 80035d4:	442c      	add	r4, r5
 80035d6:	2a07      	cmp	r2, #7
 80035d8:	942c      	str	r4, [sp, #176]	; 0xb0
 80035da:	f8cb 5004 	str.w	r5, [fp, #4]
 80035de:	922b      	str	r2, [sp, #172]	; 0xac
 80035e0:	f300 8462 	bgt.w	8003ea8 <_vfprintf_r+0x16f0>
 80035e4:	f10b 0b08 	add.w	fp, fp, #8
 80035e8:	2d00      	cmp	r5, #0
 80035ea:	bfac      	ite	ge
 80035ec:	1b5d      	subge	r5, r3, r5
 80035ee:	461d      	movlt	r5, r3
 80035f0:	2d00      	cmp	r5, #0
 80035f2:	f77f ab32 	ble.w	8002c5a <_vfprintf_r+0x4a2>
 80035f6:	2d10      	cmp	r5, #16
 80035f8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035fa:	4bc5      	ldr	r3, [pc, #788]	; (8003910 <_vfprintf_r+0x1158>)
 80035fc:	f340 80c4 	ble.w	8003788 <_vfprintf_r+0xfd0>
 8003600:	4619      	mov	r1, r3
 8003602:	2610      	movs	r6, #16
 8003604:	4623      	mov	r3, r4
 8003606:	9f03      	ldr	r7, [sp, #12]
 8003608:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800360c:	460c      	mov	r4, r1
 800360e:	e005      	b.n	800361c <_vfprintf_r+0xe64>
 8003610:	f10b 0b08 	add.w	fp, fp, #8
 8003614:	3d10      	subs	r5, #16
 8003616:	2d10      	cmp	r5, #16
 8003618:	f340 80b3 	ble.w	8003782 <_vfprintf_r+0xfca>
 800361c:	3201      	adds	r2, #1
 800361e:	3310      	adds	r3, #16
 8003620:	2a07      	cmp	r2, #7
 8003622:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003626:	e9cb 4600 	strd	r4, r6, [fp]
 800362a:	ddf1      	ble.n	8003610 <_vfprintf_r+0xe58>
 800362c:	aa2a      	add	r2, sp, #168	; 0xa8
 800362e:	4649      	mov	r1, r9
 8003630:	4638      	mov	r0, r7
 8003632:	f003 fbef 	bl	8006e14 <__sprint_r>
 8003636:	2800      	cmp	r0, #0
 8003638:	f47f ae38 	bne.w	80032ac <_vfprintf_r+0xaf4>
 800363c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003640:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003644:	e7e6      	b.n	8003614 <_vfprintf_r+0xe5c>
 8003646:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003648:	9916      	ldr	r1, [sp, #88]	; 0x58
 800364a:	f8cb 1000 	str.w	r1, [fp]
 800364e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8003650:	f8cb 1004 	str.w	r1, [fp, #4]
 8003654:	3201      	adds	r2, #1
 8003656:	440c      	add	r4, r1
 8003658:	2a07      	cmp	r2, #7
 800365a:	942c      	str	r4, [sp, #176]	; 0xb0
 800365c:	922b      	str	r2, [sp, #172]	; 0xac
 800365e:	f300 828c 	bgt.w	8003b7a <_vfprintf_r+0x13c2>
 8003662:	f10b 0b08 	add.w	fp, fp, #8
 8003666:	e7a7      	b.n	80035b8 <_vfprintf_r+0xe00>
 8003668:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800366c:	f002 fa94 	bl	8005b98 <__retarget_lock_release_recursive>
 8003670:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003674:	e628      	b.n	80032c8 <_vfprintf_r+0xb10>
 8003676:	aa2a      	add	r2, sp, #168	; 0xa8
 8003678:	9907      	ldr	r1, [sp, #28]
 800367a:	9803      	ldr	r0, [sp, #12]
 800367c:	f003 fbca 	bl	8006e14 <__sprint_r>
 8003680:	2800      	cmp	r0, #0
 8003682:	f47f ae11 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 8003686:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 800368a:	ae2d      	add	r6, sp, #180	; 0xb4
 800368c:	e638      	b.n	8003300 <_vfprintf_r+0xb48>
 800368e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003690:	9907      	ldr	r1, [sp, #28]
 8003692:	9803      	ldr	r0, [sp, #12]
 8003694:	f003 fbbe 	bl	8006e14 <__sprint_r>
 8003698:	2800      	cmp	r0, #0
 800369a:	f47f ae05 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 800369e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80036a2:	ae2d      	add	r6, sp, #180	; 0xb4
 80036a4:	930b      	str	r3, [sp, #44]	; 0x2c
 80036a6:	e638      	b.n	800331a <_vfprintf_r+0xb62>
 80036a8:	6814      	ldr	r4, [r2, #0]
 80036aa:	9308      	str	r3, [sp, #32]
 80036ac:	2500      	movs	r5, #0
 80036ae:	f7ff bb95 	b.w	8002ddc <_vfprintf_r+0x624>
 80036b2:	6814      	ldr	r4, [r2, #0]
 80036b4:	9308      	str	r3, [sp, #32]
 80036b6:	2500      	movs	r5, #0
 80036b8:	f7ff b9ae 	b.w	8002a18 <_vfprintf_r+0x260>
 80036bc:	680c      	ldr	r4, [r1, #0]
 80036be:	9208      	str	r2, [sp, #32]
 80036c0:	17e5      	asrs	r5, r4, #31
 80036c2:	4620      	mov	r0, r4
 80036c4:	4629      	mov	r1, r5
 80036c6:	f7ff b9d2 	b.w	8002a6e <_vfprintf_r+0x2b6>
 80036ca:	6814      	ldr	r4, [r2, #0]
 80036cc:	9108      	str	r1, [sp, #32]
 80036ce:	2201      	movs	r2, #1
 80036d0:	2500      	movs	r5, #0
 80036d2:	f7ff bb32 	b.w	8002d3a <_vfprintf_r+0x582>
 80036d6:	2a01      	cmp	r2, #1
 80036d8:	f47f ab3c 	bne.w	8002d54 <_vfprintf_r+0x59c>
 80036dc:	e68f      	b.n	80033fe <_vfprintf_r+0xc46>
 80036de:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 80036e2:	2200      	movs	r2, #0
 80036e4:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 80036e8:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 80036ec:	af56      	add	r7, sp, #344	; 0x158
 80036ee:	4692      	mov	sl, r2
 80036f0:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 80036f4:	461e      	mov	r6, r3
 80036f6:	e00a      	b.n	800370e <_vfprintf_r+0xf56>
 80036f8:	2300      	movs	r3, #0
 80036fa:	4620      	mov	r0, r4
 80036fc:	4629      	mov	r1, r5
 80036fe:	220a      	movs	r2, #10
 8003700:	f7fc fd7e 	bl	8000200 <__aeabi_uldivmod>
 8003704:	4604      	mov	r4, r0
 8003706:	460d      	mov	r5, r1
 8003708:	ea54 0305 	orrs.w	r3, r4, r5
 800370c:	d029      	beq.n	8003762 <_vfprintf_r+0xfaa>
 800370e:	220a      	movs	r2, #10
 8003710:	2300      	movs	r3, #0
 8003712:	4620      	mov	r0, r4
 8003714:	4629      	mov	r1, r5
 8003716:	f7fc fd73 	bl	8000200 <__aeabi_uldivmod>
 800371a:	3230      	adds	r2, #48	; 0x30
 800371c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003720:	f10a 0a01 	add.w	sl, sl, #1
 8003724:	3f01      	subs	r7, #1
 8003726:	2e00      	cmp	r6, #0
 8003728:	d0e6      	beq.n	80036f8 <_vfprintf_r+0xf40>
 800372a:	f898 3000 	ldrb.w	r3, [r8]
 800372e:	459a      	cmp	sl, r3
 8003730:	d1e2      	bne.n	80036f8 <_vfprintf_r+0xf40>
 8003732:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003736:	d0df      	beq.n	80036f8 <_vfprintf_r+0xf40>
 8003738:	2d00      	cmp	r5, #0
 800373a:	bf08      	it	eq
 800373c:	2c0a      	cmpeq	r4, #10
 800373e:	d3db      	bcc.n	80036f8 <_vfprintf_r+0xf40>
 8003740:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8003742:	9918      	ldr	r1, [sp, #96]	; 0x60
 8003744:	1aff      	subs	r7, r7, r3
 8003746:	461a      	mov	r2, r3
 8003748:	4638      	mov	r0, r7
 800374a:	f003 faf5 	bl	8006d38 <strncpy>
 800374e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8003752:	2b00      	cmp	r3, #0
 8003754:	f000 8496 	beq.w	8004084 <_vfprintf_r+0x18cc>
 8003758:	f108 0801 	add.w	r8, r8, #1
 800375c:	f04f 0a00 	mov.w	sl, #0
 8003760:	e7ca      	b.n	80036f8 <_vfprintf_r+0xf40>
 8003762:	9b04      	ldr	r3, [sp, #16]
 8003764:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003768:	1bdb      	subs	r3, r3, r7
 800376a:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 800376e:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003770:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003774:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003778:	9309      	str	r3, [sp, #36]	; 0x24
 800377a:	f7ff b99e 	b.w	8002aba <_vfprintf_r+0x302>
 800377e:	46c1      	mov	r9, r8
 8003780:	e594      	b.n	80032ac <_vfprintf_r+0xaf4>
 8003782:	4621      	mov	r1, r4
 8003784:	461c      	mov	r4, r3
 8003786:	460b      	mov	r3, r1
 8003788:	3201      	adds	r2, #1
 800378a:	442c      	add	r4, r5
 800378c:	2a07      	cmp	r2, #7
 800378e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003792:	e9cb 3500 	strd	r3, r5, [fp]
 8003796:	f77f aa5e 	ble.w	8002c56 <_vfprintf_r+0x49e>
 800379a:	e5ee      	b.n	800337a <_vfprintf_r+0xbc2>
 800379c:	f018 0f10 	tst.w	r8, #16
 80037a0:	f040 80f8 	bne.w	8003994 <_vfprintf_r+0x11dc>
 80037a4:	f018 0f40 	tst.w	r8, #64	; 0x40
 80037a8:	f000 8351 	beq.w	8003e4e <_vfprintf_r+0x1696>
 80037ac:	9a05      	ldr	r2, [sp, #20]
 80037ae:	801a      	strh	r2, [r3, #0]
 80037b0:	4657      	mov	r7, sl
 80037b2:	f7ff baa7 	b.w	8002d04 <_vfprintf_r+0x54c>
 80037b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80037b8:	9907      	ldr	r1, [sp, #28]
 80037ba:	9803      	ldr	r0, [sp, #12]
 80037bc:	f003 fb2a 	bl	8006e14 <__sprint_r>
 80037c0:	2800      	cmp	r0, #0
 80037c2:	f47f ad71 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 80037c6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80037c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80037cc:	f7ff b9f5 	b.w	8002bba <_vfprintf_r+0x402>
 80037d0:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80037d4:	4602      	mov	r2, r0
 80037d6:	460b      	mov	r3, r1
 80037d8:	f7fd fc48 	bl	800106c <__aeabi_dcmpun>
 80037dc:	2800      	cmp	r0, #0
 80037de:	f040 8491 	bne.w	8004104 <_vfprintf_r+0x194c>
 80037e2:	2e61      	cmp	r6, #97	; 0x61
 80037e4:	f000 8111 	beq.w	8003a0a <_vfprintf_r+0x1252>
 80037e8:	2e41      	cmp	r6, #65	; 0x41
 80037ea:	f000 8377 	beq.w	8003edc <_vfprintf_r+0x1724>
 80037ee:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 80037f2:	f026 0220 	bic.w	r2, r6, #32
 80037f6:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80037fa:	930e      	str	r3, [sp, #56]	; 0x38
 80037fc:	9204      	str	r2, [sp, #16]
 80037fe:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003800:	f000 842d 	beq.w	800405e <_vfprintf_r+0x18a6>
 8003804:	2a47      	cmp	r2, #71	; 0x47
 8003806:	f000 8424 	beq.w	8004052 <_vfprintf_r+0x189a>
 800380a:	2b00      	cmp	r3, #0
 800380c:	f2c0 82f9 	blt.w	8003e02 <_vfprintf_r+0x164a>
 8003810:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003814:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003818:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800381c:	2e66      	cmp	r6, #102	; 0x66
 800381e:	f000 83eb 	beq.w	8003ff8 <_vfprintf_r+0x1840>
 8003822:	2e46      	cmp	r6, #70	; 0x46
 8003824:	f000 847e 	beq.w	8004124 <_vfprintf_r+0x196c>
 8003828:	9b04      	ldr	r3, [sp, #16]
 800382a:	9803      	ldr	r0, [sp, #12]
 800382c:	2b45      	cmp	r3, #69	; 0x45
 800382e:	bf0c      	ite	eq
 8003830:	f109 0501 	addeq.w	r5, r9, #1
 8003834:	464d      	movne	r5, r9
 8003836:	aa28      	add	r2, sp, #160	; 0xa0
 8003838:	ab25      	add	r3, sp, #148	; 0x94
 800383a:	e9cd 3200 	strd	r3, r2, [sp]
 800383e:	2102      	movs	r1, #2
 8003840:	ab24      	add	r3, sp, #144	; 0x90
 8003842:	462a      	mov	r2, r5
 8003844:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003848:	f000 fe3e 	bl	80044c8 <_dtoa_r>
 800384c:	2e67      	cmp	r6, #103	; 0x67
 800384e:	4607      	mov	r7, r0
 8003850:	f040 849c 	bne.w	800418c <_vfprintf_r+0x19d4>
 8003854:	f018 0f01 	tst.w	r8, #1
 8003858:	f040 83f9 	bne.w	800404e <_vfprintf_r+0x1896>
 800385c:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 800385e:	4640      	mov	r0, r8
 8003860:	1bdb      	subs	r3, r3, r7
 8003862:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003866:	9310      	str	r3, [sp, #64]	; 0x40
 8003868:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800386a:	9311      	str	r3, [sp, #68]	; 0x44
 800386c:	9b04      	ldr	r3, [sp, #16]
 800386e:	2b47      	cmp	r3, #71	; 0x47
 8003870:	f000 81e7 	beq.w	8003c42 <_vfprintf_r+0x148a>
 8003874:	9b04      	ldr	r3, [sp, #16]
 8003876:	2b46      	cmp	r3, #70	; 0x46
 8003878:	f000 8300 	beq.w	8003e7c <_vfprintf_r+0x16c4>
 800387c:	9904      	ldr	r1, [sp, #16]
 800387e:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003880:	b2f2      	uxtb	r2, r6
 8003882:	2941      	cmp	r1, #65	; 0x41
 8003884:	bf08      	it	eq
 8003886:	320f      	addeq	r2, #15
 8003888:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 800388c:	bf06      	itte	eq
 800388e:	b2d2      	uxtbeq	r2, r2
 8003890:	2101      	moveq	r1, #1
 8003892:	2100      	movne	r1, #0
 8003894:	2b00      	cmp	r3, #0
 8003896:	9324      	str	r3, [sp, #144]	; 0x90
 8003898:	bfb8      	it	lt
 800389a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800389c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 80038a0:	bfba      	itte	lt
 80038a2:	f1c3 0301 	rsblt	r3, r3, #1
 80038a6:	222d      	movlt	r2, #45	; 0x2d
 80038a8:	222b      	movge	r2, #43	; 0x2b
 80038aa:	2b09      	cmp	r3, #9
 80038ac:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 80038b0:	f300 83f9 	bgt.w	80040a6 <_vfprintf_r+0x18ee>
 80038b4:	2900      	cmp	r1, #0
 80038b6:	f040 8487 	bne.w	80041c8 <_vfprintf_r+0x1a10>
 80038ba:	2230      	movs	r2, #48	; 0x30
 80038bc:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 80038c0:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 80038c4:	3330      	adds	r3, #48	; 0x30
 80038c6:	7013      	strb	r3, [r2, #0]
 80038c8:	1c53      	adds	r3, r2, #1
 80038ca:	aa26      	add	r2, sp, #152	; 0x98
 80038cc:	1a9b      	subs	r3, r3, r2
 80038ce:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80038d0:	9319      	str	r3, [sp, #100]	; 0x64
 80038d2:	2a01      	cmp	r2, #1
 80038d4:	4413      	add	r3, r2
 80038d6:	9309      	str	r3, [sp, #36]	; 0x24
 80038d8:	f340 8442 	ble.w	8004160 <_vfprintf_r+0x19a8>
 80038dc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80038de:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80038e0:	4413      	add	r3, r2
 80038e2:	9309      	str	r3, [sp, #36]	; 0x24
 80038e4:	2300      	movs	r3, #0
 80038e6:	930f      	str	r3, [sp, #60]	; 0x3c
 80038e8:	9314      	str	r3, [sp, #80]	; 0x50
 80038ea:	9311      	str	r3, [sp, #68]	; 0x44
 80038ec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80038ee:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 80038f2:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80038f6:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80038fa:	9304      	str	r3, [sp, #16]
 80038fc:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80038fe:	2b00      	cmp	r3, #0
 8003900:	f040 8275 	bne.w	8003dee <_vfprintf_r+0x1636>
 8003904:	4699      	mov	r9, r3
 8003906:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800390a:	f7ff b8e2 	b.w	8002ad2 <_vfprintf_r+0x31a>
 800390e:	bf00      	nop
 8003910:	08007628 	.word	0x08007628
 8003914:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003916:	49bd      	ldr	r1, [pc, #756]	; (8003c0c <_vfprintf_r+0x1454>)
 8003918:	f8cb 1000 	str.w	r1, [fp]
 800391c:	3201      	adds	r2, #1
 800391e:	3401      	adds	r4, #1
 8003920:	2101      	movs	r1, #1
 8003922:	2a07      	cmp	r2, #7
 8003924:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003928:	f8cb 1004 	str.w	r1, [fp, #4]
 800392c:	dc60      	bgt.n	80039f0 <_vfprintf_r+0x1238>
 800392e:	f10b 0b08 	add.w	fp, fp, #8
 8003932:	b92b      	cbnz	r3, 8003940 <_vfprintf_r+0x1188>
 8003934:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003936:	b91a      	cbnz	r2, 8003940 <_vfprintf_r+0x1188>
 8003938:	f018 0f01 	tst.w	r8, #1
 800393c:	f43f a98d 	beq.w	8002c5a <_vfprintf_r+0x4a2>
 8003940:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003942:	9916      	ldr	r1, [sp, #88]	; 0x58
 8003944:	f8cb 1000 	str.w	r1, [fp]
 8003948:	9915      	ldr	r1, [sp, #84]	; 0x54
 800394a:	f8cb 1004 	str.w	r1, [fp, #4]
 800394e:	3201      	adds	r2, #1
 8003950:	440c      	add	r4, r1
 8003952:	2a07      	cmp	r2, #7
 8003954:	942c      	str	r4, [sp, #176]	; 0xb0
 8003956:	922b      	str	r2, [sp, #172]	; 0xac
 8003958:	f300 8282 	bgt.w	8003e60 <_vfprintf_r+0x16a8>
 800395c:	f10b 0b08 	add.w	fp, fp, #8
 8003960:	2b00      	cmp	r3, #0
 8003962:	f2c0 82e7 	blt.w	8003f34 <_vfprintf_r+0x177c>
 8003966:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003968:	3201      	adds	r2, #1
 800396a:	441c      	add	r4, r3
 800396c:	2a07      	cmp	r2, #7
 800396e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003972:	e9cb 7300 	strd	r7, r3, [fp]
 8003976:	f77f a96e 	ble.w	8002c56 <_vfprintf_r+0x49e>
 800397a:	e4fe      	b.n	800337a <_vfprintf_r+0xbc2>
 800397c:	aa2a      	add	r2, sp, #168	; 0xa8
 800397e:	9907      	ldr	r1, [sp, #28]
 8003980:	9803      	ldr	r0, [sp, #12]
 8003982:	f003 fa47 	bl	8006e14 <__sprint_r>
 8003986:	2800      	cmp	r0, #0
 8003988:	f47f ac8e 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 800398c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003990:	f7ff bbf0 	b.w	8003174 <_vfprintf_r+0x9bc>
 8003994:	9a05      	ldr	r2, [sp, #20]
 8003996:	601a      	str	r2, [r3, #0]
 8003998:	4657      	mov	r7, sl
 800399a:	f7ff b9b3 	b.w	8002d04 <_vfprintf_r+0x54c>
 800399e:	8814      	ldrh	r4, [r2, #0]
 80039a0:	9108      	str	r1, [sp, #32]
 80039a2:	2500      	movs	r5, #0
 80039a4:	2201      	movs	r2, #1
 80039a6:	f7ff b9c8 	b.w	8002d3a <_vfprintf_r+0x582>
 80039aa:	8814      	ldrh	r4, [r2, #0]
 80039ac:	9308      	str	r3, [sp, #32]
 80039ae:	2500      	movs	r5, #0
 80039b0:	f7ff ba14 	b.w	8002ddc <_vfprintf_r+0x624>
 80039b4:	f9b1 4000 	ldrsh.w	r4, [r1]
 80039b8:	9208      	str	r2, [sp, #32]
 80039ba:	17e5      	asrs	r5, r4, #31
 80039bc:	4620      	mov	r0, r4
 80039be:	4629      	mov	r1, r5
 80039c0:	f7ff b855 	b.w	8002a6e <_vfprintf_r+0x2b6>
 80039c4:	8814      	ldrh	r4, [r2, #0]
 80039c6:	9308      	str	r3, [sp, #32]
 80039c8:	2500      	movs	r5, #0
 80039ca:	f7ff b825 	b.w	8002a18 <_vfprintf_r+0x260>
 80039ce:	222d      	movs	r2, #45	; 0x2d
 80039d0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80039d4:	f7ff baa2 	b.w	8002f1c <_vfprintf_r+0x764>
 80039d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80039da:	9907      	ldr	r1, [sp, #28]
 80039dc:	9803      	ldr	r0, [sp, #12]
 80039de:	f003 fa19 	bl	8006e14 <__sprint_r>
 80039e2:	2800      	cmp	r0, #0
 80039e4:	f47f ac60 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 80039e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80039ea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80039ee:	e534      	b.n	800345a <_vfprintf_r+0xca2>
 80039f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80039f2:	9907      	ldr	r1, [sp, #28]
 80039f4:	9803      	ldr	r0, [sp, #12]
 80039f6:	f003 fa0d 	bl	8006e14 <__sprint_r>
 80039fa:	2800      	cmp	r0, #0
 80039fc:	f47f ac54 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 8003a00:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a02:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a04:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a08:	e793      	b.n	8003932 <_vfprintf_r+0x117a>
 8003a0a:	2330      	movs	r3, #48	; 0x30
 8003a0c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003a10:	2378      	movs	r3, #120	; 0x78
 8003a12:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003a16:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003a1a:	f048 0402 	orr.w	r4, r8, #2
 8003a1e:	f300 82b0 	bgt.w	8003f82 <_vfprintf_r+0x17ca>
 8003a22:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003a26:	930e      	str	r3, [sp, #56]	; 0x38
 8003a28:	f026 0320 	bic.w	r3, r6, #32
 8003a2c:	9304      	str	r3, [sp, #16]
 8003a2e:	2200      	movs	r2, #0
 8003a30:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003a32:	920a      	str	r2, [sp, #40]	; 0x28
 8003a34:	46a0      	mov	r8, r4
 8003a36:	af3d      	add	r7, sp, #244	; 0xf4
 8003a38:	2b00      	cmp	r3, #0
 8003a3a:	f2c0 81e3 	blt.w	8003e04 <_vfprintf_r+0x164c>
 8003a3e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003a42:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003a46:	2300      	movs	r3, #0
 8003a48:	930b      	str	r3, [sp, #44]	; 0x2c
 8003a4a:	2e61      	cmp	r6, #97	; 0x61
 8003a4c:	f000 8255 	beq.w	8003efa <_vfprintf_r+0x1742>
 8003a50:	2e41      	cmp	r6, #65	; 0x41
 8003a52:	f47f aee3 	bne.w	800381c <_vfprintf_r+0x1064>
 8003a56:	a824      	add	r0, sp, #144	; 0x90
 8003a58:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003a5c:	f003 f8e2 	bl	8006c24 <frexp>
 8003a60:	2200      	movs	r2, #0
 8003a62:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003a66:	ec51 0b10 	vmov	r0, r1, d0
 8003a6a:	f7fd f865 	bl	8000b38 <__aeabi_dmul>
 8003a6e:	2200      	movs	r2, #0
 8003a70:	2300      	movs	r3, #0
 8003a72:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a76:	f7fd fac7 	bl	8001008 <__aeabi_dcmpeq>
 8003a7a:	2800      	cmp	r0, #0
 8003a7c:	f040 8305 	bne.w	800408a <_vfprintf_r+0x18d2>
 8003a80:	4b63      	ldr	r3, [pc, #396]	; (8003c10 <_vfprintf_r+0x1458>)
 8003a82:	9309      	str	r3, [sp, #36]	; 0x24
 8003a84:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003a88:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003a8c:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003a90:	9721      	str	r7, [sp, #132]	; 0x84
 8003a92:	46b9      	mov	r9, r7
 8003a94:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003a98:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003a9c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003aa0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003aa4:	e003      	b.n	8003aae <_vfprintf_r+0x12f6>
 8003aa6:	f7fd faaf 	bl	8001008 <__aeabi_dcmpeq>
 8003aaa:	bb20      	cbnz	r0, 8003af6 <_vfprintf_r+0x133e>
 8003aac:	46a9      	mov	r9, r5
 8003aae:	2200      	movs	r2, #0
 8003ab0:	4b58      	ldr	r3, [pc, #352]	; (8003c14 <_vfprintf_r+0x145c>)
 8003ab2:	4630      	mov	r0, r6
 8003ab4:	4639      	mov	r1, r7
 8003ab6:	f7fd f83f 	bl	8000b38 <__aeabi_dmul>
 8003aba:	460f      	mov	r7, r1
 8003abc:	4606      	mov	r6, r0
 8003abe:	f7fd faeb 	bl	8001098 <__aeabi_d2iz>
 8003ac2:	4680      	mov	r8, r0
 8003ac4:	f7fc ffce 	bl	8000a64 <__aeabi_i2d>
 8003ac8:	4602      	mov	r2, r0
 8003aca:	460b      	mov	r3, r1
 8003acc:	4630      	mov	r0, r6
 8003ace:	4639      	mov	r1, r7
 8003ad0:	f7fc fe7a 	bl	80007c8 <__aeabi_dsub>
 8003ad4:	464d      	mov	r5, r9
 8003ad6:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003ada:	f805 cb01 	strb.w	ip, [r5], #1
 8003ade:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003ae2:	46a3      	mov	fp, r4
 8003ae4:	4606      	mov	r6, r0
 8003ae6:	460f      	mov	r7, r1
 8003ae8:	f04f 0200 	mov.w	r2, #0
 8003aec:	f04f 0300 	mov.w	r3, #0
 8003af0:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003af4:	d1d7      	bne.n	8003aa6 <_vfprintf_r+0x12ee>
 8003af6:	4630      	mov	r0, r6
 8003af8:	4639      	mov	r1, r7
 8003afa:	2200      	movs	r2, #0
 8003afc:	4b46      	ldr	r3, [pc, #280]	; (8003c18 <_vfprintf_r+0x1460>)
 8003afe:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003b02:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003b04:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003b08:	4644      	mov	r4, r8
 8003b0a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003b0e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003b12:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003b16:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003b1a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003b1c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003b20:	f7fd fa9a 	bl	8001058 <__aeabi_dcmpgt>
 8003b24:	2800      	cmp	r0, #0
 8003b26:	f040 8176 	bne.w	8003e16 <_vfprintf_r+0x165e>
 8003b2a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003b2e:	2200      	movs	r2, #0
 8003b30:	4b39      	ldr	r3, [pc, #228]	; (8003c18 <_vfprintf_r+0x1460>)
 8003b32:	f7fd fa69 	bl	8001008 <__aeabi_dcmpeq>
 8003b36:	b110      	cbz	r0, 8003b3e <_vfprintf_r+0x1386>
 8003b38:	07e2      	lsls	r2, r4, #31
 8003b3a:	f100 816c 	bmi.w	8003e16 <_vfprintf_r+0x165e>
 8003b3e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003b40:	2b00      	cmp	r3, #0
 8003b42:	db07      	blt.n	8003b54 <_vfprintf_r+0x139c>
 8003b44:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003b46:	3301      	adds	r3, #1
 8003b48:	442b      	add	r3, r5
 8003b4a:	2230      	movs	r2, #48	; 0x30
 8003b4c:	f805 2b01 	strb.w	r2, [r5], #1
 8003b50:	42ab      	cmp	r3, r5
 8003b52:	d1fb      	bne.n	8003b4c <_vfprintf_r+0x1394>
 8003b54:	1beb      	subs	r3, r5, r7
 8003b56:	4640      	mov	r0, r8
 8003b58:	9310      	str	r3, [sp, #64]	; 0x40
 8003b5a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003b5e:	e683      	b.n	8003868 <_vfprintf_r+0x10b0>
 8003b60:	f8cd 9010 	str.w	r9, [sp, #16]
 8003b64:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003b68:	9408      	str	r4, [sp, #32]
 8003b6a:	4681      	mov	r9, r0
 8003b6c:	900f      	str	r0, [sp, #60]	; 0x3c
 8003b6e:	9014      	str	r0, [sp, #80]	; 0x50
 8003b70:	9011      	str	r0, [sp, #68]	; 0x44
 8003b72:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003b76:	f7fe bfac 	b.w	8002ad2 <_vfprintf_r+0x31a>
 8003b7a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b7c:	9907      	ldr	r1, [sp, #28]
 8003b7e:	9803      	ldr	r0, [sp, #12]
 8003b80:	f003 f948 	bl	8006e14 <__sprint_r>
 8003b84:	2800      	cmp	r0, #0
 8003b86:	f47f ab8f 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 8003b8a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003b8c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b8e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b92:	e511      	b.n	80035b8 <_vfprintf_r+0xe00>
 8003b94:	4252      	negs	r2, r2
 8003b96:	9206      	str	r2, [sp, #24]
 8003b98:	9308      	str	r3, [sp, #32]
 8003b9a:	f7ff b96d 	b.w	8002e78 <_vfprintf_r+0x6c0>
 8003b9e:	4614      	mov	r4, r2
 8003ba0:	4632      	mov	r2, r6
 8003ba2:	461e      	mov	r6, r3
 8003ba4:	4613      	mov	r3, r2
 8003ba6:	462a      	mov	r2, r5
 8003ba8:	3201      	adds	r2, #1
 8003baa:	9209      	str	r2, [sp, #36]	; 0x24
 8003bac:	f106 0208 	add.w	r2, r6, #8
 8003bb0:	e9c6 3900 	strd	r3, r9, [r6]
 8003bb4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003bb6:	932b      	str	r3, [sp, #172]	; 0xac
 8003bb8:	444c      	add	r4, r9
 8003bba:	2b07      	cmp	r3, #7
 8003bbc:	942c      	str	r4, [sp, #176]	; 0xb0
 8003bbe:	f73f acc3 	bgt.w	8003548 <_vfprintf_r+0xd90>
 8003bc2:	3301      	adds	r3, #1
 8003bc4:	9309      	str	r3, [sp, #36]	; 0x24
 8003bc6:	f102 0b08 	add.w	fp, r2, #8
 8003bca:	4616      	mov	r6, r2
 8003bcc:	f7ff bbca 	b.w	8003364 <_vfprintf_r+0xbac>
 8003bd0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bd2:	9907      	ldr	r1, [sp, #28]
 8003bd4:	9803      	ldr	r0, [sp, #12]
 8003bd6:	f003 f91d 	bl	8006e14 <__sprint_r>
 8003bda:	2800      	cmp	r0, #0
 8003bdc:	f47f ab64 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 8003be0:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003be2:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003be6:	f7ff bade 	b.w	80031a6 <_vfprintf_r+0x9ee>
 8003bea:	464b      	mov	r3, r9
 8003bec:	2b06      	cmp	r3, #6
 8003bee:	bf28      	it	cs
 8003bf0:	2306      	movcs	r3, #6
 8003bf2:	46b9      	mov	r9, r7
 8003bf4:	970f      	str	r7, [sp, #60]	; 0x3c
 8003bf6:	9714      	str	r7, [sp, #80]	; 0x50
 8003bf8:	9711      	str	r7, [sp, #68]	; 0x44
 8003bfa:	970a      	str	r7, [sp, #40]	; 0x28
 8003bfc:	463a      	mov	r2, r7
 8003bfe:	9304      	str	r3, [sp, #16]
 8003c00:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003c04:	4f05      	ldr	r7, [pc, #20]	; (8003c1c <_vfprintf_r+0x1464>)
 8003c06:	f7fe bf64 	b.w	8002ad2 <_vfprintf_r+0x31a>
 8003c0a:	bf00      	nop
 8003c0c:	08007614 	.word	0x08007614
 8003c10:	080075f8 	.word	0x080075f8
 8003c14:	40300000 	.word	0x40300000
 8003c18:	3fe00000 	.word	0x3fe00000
 8003c1c:	0800760c 	.word	0x0800760c
 8003c20:	460c      	mov	r4, r1
 8003c22:	4639      	mov	r1, r7
 8003c24:	465f      	mov	r7, fp
 8003c26:	469b      	mov	fp, r3
 8003c28:	460b      	mov	r3, r1
 8003c2a:	3201      	adds	r2, #1
 8003c2c:	442c      	add	r4, r5
 8003c2e:	2a07      	cmp	r2, #7
 8003c30:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003c34:	e9cb 3500 	strd	r3, r5, [fp]
 8003c38:	f73f aca5 	bgt.w	8003586 <_vfprintf_r+0xdce>
 8003c3c:	f10b 0b08 	add.w	fp, fp, #8
 8003c40:	e4ac      	b.n	800359c <_vfprintf_r+0xde4>
 8003c42:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c44:	1cda      	adds	r2, r3, #3
 8003c46:	db02      	blt.n	8003c4e <_vfprintf_r+0x1496>
 8003c48:	4599      	cmp	r9, r3
 8003c4a:	f280 80b5 	bge.w	8003db8 <_vfprintf_r+0x1600>
 8003c4e:	3e02      	subs	r6, #2
 8003c50:	f026 0320 	bic.w	r3, r6, #32
 8003c54:	9304      	str	r3, [sp, #16]
 8003c56:	e611      	b.n	800387c <_vfprintf_r+0x10c4>
 8003c58:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c5a:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003c5e:	465a      	mov	r2, fp
 8003c60:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003c64:	18fb      	adds	r3, r7, r3
 8003c66:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003c6a:	970c      	str	r7, [sp, #48]	; 0x30
 8003c6c:	4eaf      	ldr	r6, [pc, #700]	; (8003f2c <_vfprintf_r+0x1774>)
 8003c6e:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003c72:	9309      	str	r3, [sp, #36]	; 0x24
 8003c74:	464f      	mov	r7, r9
 8003c76:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003c7a:	4621      	mov	r1, r4
 8003c7c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c7e:	2b00      	cmp	r3, #0
 8003c80:	d05b      	beq.n	8003d3a <_vfprintf_r+0x1582>
 8003c82:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c84:	2b00      	cmp	r3, #0
 8003c86:	d154      	bne.n	8003d32 <_vfprintf_r+0x157a>
 8003c88:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003c8a:	3b01      	subs	r3, #1
 8003c8c:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003c90:	9314      	str	r3, [sp, #80]	; 0x50
 8003c92:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003c94:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003c96:	6010      	str	r0, [r2, #0]
 8003c98:	3301      	adds	r3, #1
 8003c9a:	4459      	add	r1, fp
 8003c9c:	2b07      	cmp	r3, #7
 8003c9e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003ca0:	f8c2 b004 	str.w	fp, [r2, #4]
 8003ca4:	932b      	str	r3, [sp, #172]	; 0xac
 8003ca6:	dc68      	bgt.n	8003d7a <_vfprintf_r+0x15c2>
 8003ca8:	3208      	adds	r2, #8
 8003caa:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003cac:	f898 3000 	ldrb.w	r3, [r8]
 8003cb0:	1bc5      	subs	r5, r0, r7
 8003cb2:	429d      	cmp	r5, r3
 8003cb4:	bfa8      	it	ge
 8003cb6:	461d      	movge	r5, r3
 8003cb8:	2d00      	cmp	r5, #0
 8003cba:	dd0b      	ble.n	8003cd4 <_vfprintf_r+0x151c>
 8003cbc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003cbe:	6017      	str	r7, [r2, #0]
 8003cc0:	3301      	adds	r3, #1
 8003cc2:	4429      	add	r1, r5
 8003cc4:	2b07      	cmp	r3, #7
 8003cc6:	912c      	str	r1, [sp, #176]	; 0xb0
 8003cc8:	6055      	str	r5, [r2, #4]
 8003cca:	932b      	str	r3, [sp, #172]	; 0xac
 8003ccc:	dc5e      	bgt.n	8003d8c <_vfprintf_r+0x15d4>
 8003cce:	f898 3000 	ldrb.w	r3, [r8]
 8003cd2:	3208      	adds	r2, #8
 8003cd4:	2d00      	cmp	r5, #0
 8003cd6:	bfac      	ite	ge
 8003cd8:	1b5d      	subge	r5, r3, r5
 8003cda:	461d      	movlt	r5, r3
 8003cdc:	2d00      	cmp	r5, #0
 8003cde:	dd26      	ble.n	8003d2e <_vfprintf_r+0x1576>
 8003ce0:	2d10      	cmp	r5, #16
 8003ce2:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003ce4:	dd3c      	ble.n	8003d60 <_vfprintf_r+0x15a8>
 8003ce6:	2410      	movs	r4, #16
 8003ce8:	e003      	b.n	8003cf2 <_vfprintf_r+0x153a>
 8003cea:	3208      	adds	r2, #8
 8003cec:	3d10      	subs	r5, #16
 8003cee:	2d10      	cmp	r5, #16
 8003cf0:	dd36      	ble.n	8003d60 <_vfprintf_r+0x15a8>
 8003cf2:	3001      	adds	r0, #1
 8003cf4:	3110      	adds	r1, #16
 8003cf6:	2807      	cmp	r0, #7
 8003cf8:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003cfc:	e9c2 6400 	strd	r6, r4, [r2]
 8003d00:	ddf3      	ble.n	8003cea <_vfprintf_r+0x1532>
 8003d02:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d04:	4651      	mov	r1, sl
 8003d06:	4648      	mov	r0, r9
 8003d08:	f003 f884 	bl	8006e14 <__sprint_r>
 8003d0c:	2800      	cmp	r0, #0
 8003d0e:	d150      	bne.n	8003db2 <_vfprintf_r+0x15fa>
 8003d10:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003d14:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d16:	e7e9      	b.n	8003cec <_vfprintf_r+0x1534>
 8003d18:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d1a:	4651      	mov	r1, sl
 8003d1c:	4648      	mov	r0, r9
 8003d1e:	f003 f879 	bl	8006e14 <__sprint_r>
 8003d22:	2800      	cmp	r0, #0
 8003d24:	d145      	bne.n	8003db2 <_vfprintf_r+0x15fa>
 8003d26:	f898 3000 	ldrb.w	r3, [r8]
 8003d2a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d2c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d2e:	441f      	add	r7, r3
 8003d30:	e7a4      	b.n	8003c7c <_vfprintf_r+0x14c4>
 8003d32:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003d34:	3b01      	subs	r3, #1
 8003d36:	930f      	str	r3, [sp, #60]	; 0x3c
 8003d38:	e7ab      	b.n	8003c92 <_vfprintf_r+0x14da>
 8003d3a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003d3c:	2b00      	cmp	r3, #0
 8003d3e:	d1f8      	bne.n	8003d32 <_vfprintf_r+0x157a>
 8003d40:	46b9      	mov	r9, r7
 8003d42:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d44:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003d46:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003d4a:	18fb      	adds	r3, r7, r3
 8003d4c:	4599      	cmp	r9, r3
 8003d4e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003d52:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003d56:	4693      	mov	fp, r2
 8003d58:	460c      	mov	r4, r1
 8003d5a:	bf28      	it	cs
 8003d5c:	4699      	movcs	r9, r3
 8003d5e:	e424      	b.n	80035aa <_vfprintf_r+0xdf2>
 8003d60:	3001      	adds	r0, #1
 8003d62:	4429      	add	r1, r5
 8003d64:	2807      	cmp	r0, #7
 8003d66:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003d6a:	e9c2 6500 	strd	r6, r5, [r2]
 8003d6e:	dcd3      	bgt.n	8003d18 <_vfprintf_r+0x1560>
 8003d70:	f898 3000 	ldrb.w	r3, [r8]
 8003d74:	3208      	adds	r2, #8
 8003d76:	441f      	add	r7, r3
 8003d78:	e780      	b.n	8003c7c <_vfprintf_r+0x14c4>
 8003d7a:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d7c:	4651      	mov	r1, sl
 8003d7e:	4648      	mov	r0, r9
 8003d80:	f003 f848 	bl	8006e14 <__sprint_r>
 8003d84:	b9a8      	cbnz	r0, 8003db2 <_vfprintf_r+0x15fa>
 8003d86:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d88:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d8a:	e78e      	b.n	8003caa <_vfprintf_r+0x14f2>
 8003d8c:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d8e:	4651      	mov	r1, sl
 8003d90:	4648      	mov	r0, r9
 8003d92:	f003 f83f 	bl	8006e14 <__sprint_r>
 8003d96:	b960      	cbnz	r0, 8003db2 <_vfprintf_r+0x15fa>
 8003d98:	f898 3000 	ldrb.w	r3, [r8]
 8003d9c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d9e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003da0:	e798      	b.n	8003cd4 <_vfprintf_r+0x151c>
 8003da2:	4638      	mov	r0, r7
 8003da4:	f7fc fc4c 	bl	8000640 <strlen>
 8003da8:	46a9      	mov	r9, r5
 8003daa:	4603      	mov	r3, r0
 8003dac:	9009      	str	r0, [sp, #36]	; 0x24
 8003dae:	f7ff b8f4 	b.w	8002f9a <_vfprintf_r+0x7e2>
 8003db2:	46d1      	mov	r9, sl
 8003db4:	f7ff ba7a 	b.w	80032ac <_vfprintf_r+0xaf4>
 8003db8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003dba:	4619      	mov	r1, r3
 8003dbc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003dbe:	4299      	cmp	r1, r3
 8003dc0:	f300 8082 	bgt.w	8003ec8 <_vfprintf_r+0x1710>
 8003dc4:	07c4      	lsls	r4, r0, #31
 8003dc6:	f140 816b 	bpl.w	80040a0 <_vfprintf_r+0x18e8>
 8003dca:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003dcc:	4413      	add	r3, r2
 8003dce:	9309      	str	r3, [sp, #36]	; 0x24
 8003dd0:	0541      	lsls	r1, r0, #21
 8003dd2:	d503      	bpl.n	8003ddc <_vfprintf_r+0x1624>
 8003dd4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003dd6:	2b00      	cmp	r3, #0
 8003dd8:	f300 80e6 	bgt.w	8003fa8 <_vfprintf_r+0x17f0>
 8003ddc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003dde:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003de2:	9304      	str	r3, [sp, #16]
 8003de4:	2667      	movs	r6, #103	; 0x67
 8003de6:	2300      	movs	r3, #0
 8003de8:	930f      	str	r3, [sp, #60]	; 0x3c
 8003dea:	9314      	str	r3, [sp, #80]	; 0x50
 8003dec:	e586      	b.n	80038fc <_vfprintf_r+0x1144>
 8003dee:	222d      	movs	r2, #45	; 0x2d
 8003df0:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003df4:	f04f 0900 	mov.w	r9, #0
 8003df8:	f7fe be6c 	b.w	8002ad4 <_vfprintf_r+0x31c>
 8003dfc:	46a1      	mov	r9, r4
 8003dfe:	f7ff ba55 	b.w	80032ac <_vfprintf_r+0xaf4>
 8003e02:	900a      	str	r0, [sp, #40]	; 0x28
 8003e04:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003e08:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003e0c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003e0e:	232d      	movs	r3, #45	; 0x2d
 8003e10:	911e      	str	r1, [sp, #120]	; 0x78
 8003e12:	930b      	str	r3, [sp, #44]	; 0x2c
 8003e14:	e619      	b.n	8003a4a <_vfprintf_r+0x1292>
 8003e16:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e18:	9328      	str	r3, [sp, #160]	; 0xa0
 8003e1a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e1c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003e20:	7bd9      	ldrb	r1, [r3, #15]
 8003e22:	4291      	cmp	r1, r2
 8003e24:	462b      	mov	r3, r5
 8003e26:	d109      	bne.n	8003e3c <_vfprintf_r+0x1684>
 8003e28:	2030      	movs	r0, #48	; 0x30
 8003e2a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003e2e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003e30:	1e5a      	subs	r2, r3, #1
 8003e32:	9228      	str	r2, [sp, #160]	; 0xa0
 8003e34:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003e38:	4291      	cmp	r1, r2
 8003e3a:	d0f6      	beq.n	8003e2a <_vfprintf_r+0x1672>
 8003e3c:	2a39      	cmp	r2, #57	; 0x39
 8003e3e:	bf0b      	itete	eq
 8003e40:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003e42:	3201      	addne	r2, #1
 8003e44:	7a92      	ldrbeq	r2, [r2, #10]
 8003e46:	b2d2      	uxtbne	r2, r2
 8003e48:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003e4c:	e682      	b.n	8003b54 <_vfprintf_r+0x139c>
 8003e4e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003e52:	f43f ad9f 	beq.w	8003994 <_vfprintf_r+0x11dc>
 8003e56:	9a05      	ldr	r2, [sp, #20]
 8003e58:	701a      	strb	r2, [r3, #0]
 8003e5a:	4657      	mov	r7, sl
 8003e5c:	f7fe bf52 	b.w	8002d04 <_vfprintf_r+0x54c>
 8003e60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e62:	9907      	ldr	r1, [sp, #28]
 8003e64:	9803      	ldr	r0, [sp, #12]
 8003e66:	f002 ffd5 	bl	8006e14 <__sprint_r>
 8003e6a:	2800      	cmp	r0, #0
 8003e6c:	f47f aa1c 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 8003e70:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e72:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003e76:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e7a:	e571      	b.n	8003960 <_vfprintf_r+0x11a8>
 8003e7c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e7e:	2b00      	cmp	r3, #0
 8003e80:	f340 8164 	ble.w	800414c <_vfprintf_r+0x1994>
 8003e84:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e86:	f1b9 0f00 	cmp.w	r9, #0
 8003e8a:	f040 8103 	bne.w	8004094 <_vfprintf_r+0x18dc>
 8003e8e:	07c6      	lsls	r6, r0, #31
 8003e90:	f100 8100 	bmi.w	8004094 <_vfprintf_r+0x18dc>
 8003e94:	9309      	str	r3, [sp, #36]	; 0x24
 8003e96:	2666      	movs	r6, #102	; 0x66
 8003e98:	0543      	lsls	r3, r0, #21
 8003e9a:	f100 8086 	bmi.w	8003faa <_vfprintf_r+0x17f2>
 8003e9e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003ea0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003ea4:	9304      	str	r3, [sp, #16]
 8003ea6:	e79e      	b.n	8003de6 <_vfprintf_r+0x162e>
 8003ea8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003eaa:	9907      	ldr	r1, [sp, #28]
 8003eac:	9803      	ldr	r0, [sp, #12]
 8003eae:	f002 ffb1 	bl	8006e14 <__sprint_r>
 8003eb2:	2800      	cmp	r0, #0
 8003eb4:	f47f a9f8 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 8003eb8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003eba:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003ebc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003ebe:	1ad3      	subs	r3, r2, r3
 8003ec0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ec4:	f7ff bb90 	b.w	80035e8 <_vfprintf_r+0xe30>
 8003ec8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003eca:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003ecc:	4413      	add	r3, r2
 8003ece:	9309      	str	r3, [sp, #36]	; 0x24
 8003ed0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ed2:	2b00      	cmp	r3, #0
 8003ed4:	f340 8149 	ble.w	800416a <_vfprintf_r+0x19b2>
 8003ed8:	2667      	movs	r6, #103	; 0x67
 8003eda:	e7dd      	b.n	8003e98 <_vfprintf_r+0x16e0>
 8003edc:	2330      	movs	r3, #48	; 0x30
 8003ede:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003ee2:	2358      	movs	r3, #88	; 0x58
 8003ee4:	e595      	b.n	8003a12 <_vfprintf_r+0x125a>
 8003ee6:	9803      	ldr	r0, [sp, #12]
 8003ee8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003eea:	4649      	mov	r1, r9
 8003eec:	f002 ff92 	bl	8006e14 <__sprint_r>
 8003ef0:	2800      	cmp	r0, #0
 8003ef2:	f47f a9e0 	bne.w	80032b6 <_vfprintf_r+0xafe>
 8003ef6:	f7fe bf0f 	b.w	8002d18 <_vfprintf_r+0x560>
 8003efa:	a824      	add	r0, sp, #144	; 0x90
 8003efc:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003f00:	f002 fe90 	bl	8006c24 <frexp>
 8003f04:	2200      	movs	r2, #0
 8003f06:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003f0a:	ec51 0b10 	vmov	r0, r1, d0
 8003f0e:	f7fc fe13 	bl	8000b38 <__aeabi_dmul>
 8003f12:	2200      	movs	r2, #0
 8003f14:	2300      	movs	r3, #0
 8003f16:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003f1a:	f7fd f875 	bl	8001008 <__aeabi_dcmpeq>
 8003f1e:	b108      	cbz	r0, 8003f24 <_vfprintf_r+0x176c>
 8003f20:	2301      	movs	r3, #1
 8003f22:	9324      	str	r3, [sp, #144]	; 0x90
 8003f24:	4b02      	ldr	r3, [pc, #8]	; (8003f30 <_vfprintf_r+0x1778>)
 8003f26:	9309      	str	r3, [sp, #36]	; 0x24
 8003f28:	e5ac      	b.n	8003a84 <_vfprintf_r+0x12cc>
 8003f2a:	bf00      	nop
 8003f2c:	08007628 	.word	0x08007628
 8003f30:	080075e4 	.word	0x080075e4
 8003f34:	425d      	negs	r5, r3
 8003f36:	3310      	adds	r3, #16
 8003f38:	4bb9      	ldr	r3, [pc, #740]	; (8004220 <_vfprintf_r+0x1a68>)
 8003f3a:	f280 8097 	bge.w	800406c <_vfprintf_r+0x18b4>
 8003f3e:	4619      	mov	r1, r3
 8003f40:	2610      	movs	r6, #16
 8003f42:	4623      	mov	r3, r4
 8003f44:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003f48:	460c      	mov	r4, r1
 8003f4a:	e005      	b.n	8003f58 <_vfprintf_r+0x17a0>
 8003f4c:	f10b 0b08 	add.w	fp, fp, #8
 8003f50:	3d10      	subs	r5, #16
 8003f52:	2d10      	cmp	r5, #16
 8003f54:	f340 8087 	ble.w	8004066 <_vfprintf_r+0x18ae>
 8003f58:	3201      	adds	r2, #1
 8003f5a:	3310      	adds	r3, #16
 8003f5c:	2a07      	cmp	r2, #7
 8003f5e:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003f62:	e9cb 4600 	strd	r4, r6, [fp]
 8003f66:	ddf1      	ble.n	8003f4c <_vfprintf_r+0x1794>
 8003f68:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f6a:	9907      	ldr	r1, [sp, #28]
 8003f6c:	4648      	mov	r0, r9
 8003f6e:	f002 ff51 	bl	8006e14 <__sprint_r>
 8003f72:	2800      	cmp	r0, #0
 8003f74:	f47f a998 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 8003f78:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003f7c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f80:	e7e6      	b.n	8003f50 <_vfprintf_r+0x1798>
 8003f82:	f109 0101 	add.w	r1, r9, #1
 8003f86:	9803      	ldr	r0, [sp, #12]
 8003f88:	f001 fe80 	bl	8005c8c <_malloc_r>
 8003f8c:	4607      	mov	r7, r0
 8003f8e:	2800      	cmp	r0, #0
 8003f90:	f000 813b 	beq.w	800420a <_vfprintf_r+0x1a52>
 8003f94:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003f98:	930e      	str	r3, [sp, #56]	; 0x38
 8003f9a:	f026 0320 	bic.w	r3, r6, #32
 8003f9e:	9304      	str	r3, [sp, #16]
 8003fa0:	46a0      	mov	r8, r4
 8003fa2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003fa4:	900a      	str	r0, [sp, #40]	; 0x28
 8003fa6:	e547      	b.n	8003a38 <_vfprintf_r+0x1280>
 8003fa8:	2667      	movs	r6, #103	; 0x67
 8003faa:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003fac:	2200      	movs	r2, #0
 8003fae:	920f      	str	r2, [sp, #60]	; 0x3c
 8003fb0:	9214      	str	r2, [sp, #80]	; 0x50
 8003fb2:	7803      	ldrb	r3, [r0, #0]
 8003fb4:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003fb6:	2bff      	cmp	r3, #255	; 0xff
 8003fb8:	d00c      	beq.n	8003fd4 <_vfprintf_r+0x181c>
 8003fba:	4293      	cmp	r3, r2
 8003fbc:	da0a      	bge.n	8003fd4 <_vfprintf_r+0x181c>
 8003fbe:	7841      	ldrb	r1, [r0, #1]
 8003fc0:	1ad2      	subs	r2, r2, r3
 8003fc2:	b1a9      	cbz	r1, 8003ff0 <_vfprintf_r+0x1838>
 8003fc4:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003fc6:	3301      	adds	r3, #1
 8003fc8:	9314      	str	r3, [sp, #80]	; 0x50
 8003fca:	460b      	mov	r3, r1
 8003fcc:	2bff      	cmp	r3, #255	; 0xff
 8003fce:	f100 0001 	add.w	r0, r0, #1
 8003fd2:	d1f2      	bne.n	8003fba <_vfprintf_r+0x1802>
 8003fd4:	9211      	str	r2, [sp, #68]	; 0x44
 8003fd6:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003fd8:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003fda:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003fdc:	901a      	str	r0, [sp, #104]	; 0x68
 8003fde:	4413      	add	r3, r2
 8003fe0:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003fe2:	fb02 1303 	mla	r3, r2, r3, r1
 8003fe6:	9309      	str	r3, [sp, #36]	; 0x24
 8003fe8:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003fec:	9304      	str	r3, [sp, #16]
 8003fee:	e485      	b.n	80038fc <_vfprintf_r+0x1144>
 8003ff0:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003ff2:	3101      	adds	r1, #1
 8003ff4:	910f      	str	r1, [sp, #60]	; 0x3c
 8003ff6:	e7de      	b.n	8003fb6 <_vfprintf_r+0x17fe>
 8003ff8:	aa28      	add	r2, sp, #160	; 0xa0
 8003ffa:	ab25      	add	r3, sp, #148	; 0x94
 8003ffc:	e9cd 3200 	strd	r3, r2, [sp]
 8004000:	2103      	movs	r1, #3
 8004002:	ab24      	add	r3, sp, #144	; 0x90
 8004004:	464a      	mov	r2, r9
 8004006:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800400a:	9803      	ldr	r0, [sp, #12]
 800400c:	f000 fa5c 	bl	80044c8 <_dtoa_r>
 8004010:	464d      	mov	r5, r9
 8004012:	4607      	mov	r7, r0
 8004014:	eb00 0409 	add.w	r4, r0, r9
 8004018:	783b      	ldrb	r3, [r7, #0]
 800401a:	2b30      	cmp	r3, #48	; 0x30
 800401c:	f000 80be 	beq.w	800419c <_vfprintf_r+0x19e4>
 8004020:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8004022:	442c      	add	r4, r5
 8004024:	2200      	movs	r2, #0
 8004026:	2300      	movs	r3, #0
 8004028:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800402c:	f7fc ffec 	bl	8001008 <__aeabi_dcmpeq>
 8004030:	b108      	cbz	r0, 8004036 <_vfprintf_r+0x187e>
 8004032:	4623      	mov	r3, r4
 8004034:	e413      	b.n	800385e <_vfprintf_r+0x10a6>
 8004036:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004038:	42a3      	cmp	r3, r4
 800403a:	f4bf ac10 	bcs.w	800385e <_vfprintf_r+0x10a6>
 800403e:	2130      	movs	r1, #48	; 0x30
 8004040:	1c5a      	adds	r2, r3, #1
 8004042:	9228      	str	r2, [sp, #160]	; 0xa0
 8004044:	7019      	strb	r1, [r3, #0]
 8004046:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8004048:	429c      	cmp	r4, r3
 800404a:	d8f9      	bhi.n	8004040 <_vfprintf_r+0x1888>
 800404c:	e407      	b.n	800385e <_vfprintf_r+0x10a6>
 800404e:	197c      	adds	r4, r7, r5
 8004050:	e7e8      	b.n	8004024 <_vfprintf_r+0x186c>
 8004052:	f1b9 0f00 	cmp.w	r9, #0
 8004056:	f000 8092 	beq.w	800417e <_vfprintf_r+0x19c6>
 800405a:	900a      	str	r0, [sp, #40]	; 0x28
 800405c:	e4ec      	b.n	8003a38 <_vfprintf_r+0x1280>
 800405e:	900a      	str	r0, [sp, #40]	; 0x28
 8004060:	f04f 0906 	mov.w	r9, #6
 8004064:	e4e8      	b.n	8003a38 <_vfprintf_r+0x1280>
 8004066:	4621      	mov	r1, r4
 8004068:	461c      	mov	r4, r3
 800406a:	460b      	mov	r3, r1
 800406c:	3201      	adds	r2, #1
 800406e:	442c      	add	r4, r5
 8004070:	2a07      	cmp	r2, #7
 8004072:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004076:	e9cb 3500 	strd	r3, r5, [fp]
 800407a:	f300 80a9 	bgt.w	80041d0 <_vfprintf_r+0x1a18>
 800407e:	f10b 0b08 	add.w	fp, fp, #8
 8004082:	e470      	b.n	8003966 <_vfprintf_r+0x11ae>
 8004084:	469a      	mov	sl, r3
 8004086:	f7ff bb37 	b.w	80036f8 <_vfprintf_r+0xf40>
 800408a:	2301      	movs	r3, #1
 800408c:	9324      	str	r3, [sp, #144]	; 0x90
 800408e:	4b65      	ldr	r3, [pc, #404]	; (8004224 <_vfprintf_r+0x1a6c>)
 8004090:	9309      	str	r3, [sp, #36]	; 0x24
 8004092:	e4f7      	b.n	8003a84 <_vfprintf_r+0x12cc>
 8004094:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004096:	4413      	add	r3, r2
 8004098:	444b      	add	r3, r9
 800409a:	9309      	str	r3, [sp, #36]	; 0x24
 800409c:	2666      	movs	r6, #102	; 0x66
 800409e:	e6fb      	b.n	8003e98 <_vfprintf_r+0x16e0>
 80040a0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80040a2:	9309      	str	r3, [sp, #36]	; 0x24
 80040a4:	e694      	b.n	8003dd0 <_vfprintf_r+0x1618>
 80040a6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80040aa:	4664      	mov	r4, ip
 80040ac:	4d5e      	ldr	r5, [pc, #376]	; (8004228 <_vfprintf_r+0x1a70>)
 80040ae:	e000      	b.n	80040b2 <_vfprintf_r+0x18fa>
 80040b0:	4614      	mov	r4, r2
 80040b2:	fba5 1203 	umull	r1, r2, r5, r3
 80040b6:	08d2      	lsrs	r2, r2, #3
 80040b8:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 80040bc:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 80040c0:	f103 0130 	add.w	r1, r3, #48	; 0x30
 80040c4:	4613      	mov	r3, r2
 80040c6:	2b09      	cmp	r3, #9
 80040c8:	f804 1c01 	strb.w	r1, [r4, #-1]
 80040cc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80040d0:	dcee      	bgt.n	80040b0 <_vfprintf_r+0x18f8>
 80040d2:	3330      	adds	r3, #48	; 0x30
 80040d4:	3c02      	subs	r4, #2
 80040d6:	b2db      	uxtb	r3, r3
 80040d8:	45a4      	cmp	ip, r4
 80040da:	f802 3c01 	strb.w	r3, [r2, #-1]
 80040de:	f240 8090 	bls.w	8004202 <_vfprintf_r+0x1a4a>
 80040e2:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 80040e6:	4611      	mov	r1, r2
 80040e8:	e001      	b.n	80040ee <_vfprintf_r+0x1936>
 80040ea:	f811 3b01 	ldrb.w	r3, [r1], #1
 80040ee:	f804 3b01 	strb.w	r3, [r4], #1
 80040f2:	458c      	cmp	ip, r1
 80040f4:	d1f9      	bne.n	80040ea <_vfprintf_r+0x1932>
 80040f6:	ab2a      	add	r3, sp, #168	; 0xa8
 80040f8:	1a9b      	subs	r3, r3, r2
 80040fa:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80040fe:	4413      	add	r3, r2
 8004100:	f7ff bbe3 	b.w	80038ca <_vfprintf_r+0x1112>
 8004104:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004106:	4f49      	ldr	r7, [pc, #292]	; (800422c <_vfprintf_r+0x1a74>)
 8004108:	2b00      	cmp	r3, #0
 800410a:	bfb6      	itet	lt
 800410c:	222d      	movlt	r2, #45	; 0x2d
 800410e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004112:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004116:	4b46      	ldr	r3, [pc, #280]	; (8004230 <_vfprintf_r+0x1a78>)
 8004118:	f7fe bf02 	b.w	8002f20 <_vfprintf_r+0x768>
 800411c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004120:	f7ff b8c9 	b.w	80032b6 <_vfprintf_r+0xafe>
 8004124:	aa28      	add	r2, sp, #160	; 0xa0
 8004126:	ab25      	add	r3, sp, #148	; 0x94
 8004128:	e9cd 3200 	strd	r3, r2, [sp]
 800412c:	2103      	movs	r1, #3
 800412e:	ab24      	add	r3, sp, #144	; 0x90
 8004130:	464a      	mov	r2, r9
 8004132:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004136:	9803      	ldr	r0, [sp, #12]
 8004138:	f000 f9c6 	bl	80044c8 <_dtoa_r>
 800413c:	464d      	mov	r5, r9
 800413e:	4607      	mov	r7, r0
 8004140:	2e46      	cmp	r6, #70	; 0x46
 8004142:	eb07 0405 	add.w	r4, r7, r5
 8004146:	f43f af67 	beq.w	8004018 <_vfprintf_r+0x1860>
 800414a:	e76b      	b.n	8004024 <_vfprintf_r+0x186c>
 800414c:	f1b9 0f00 	cmp.w	r9, #0
 8004150:	d131      	bne.n	80041b6 <_vfprintf_r+0x19fe>
 8004152:	07c5      	lsls	r5, r0, #31
 8004154:	d42f      	bmi.n	80041b6 <_vfprintf_r+0x19fe>
 8004156:	2301      	movs	r3, #1
 8004158:	9304      	str	r3, [sp, #16]
 800415a:	9309      	str	r3, [sp, #36]	; 0x24
 800415c:	2666      	movs	r6, #102	; 0x66
 800415e:	e642      	b.n	8003de6 <_vfprintf_r+0x162e>
 8004160:	07c3      	lsls	r3, r0, #31
 8004162:	f57f abbf 	bpl.w	80038e4 <_vfprintf_r+0x112c>
 8004166:	f7ff bbb9 	b.w	80038dc <_vfprintf_r+0x1124>
 800416a:	9a09      	ldr	r2, [sp, #36]	; 0x24
 800416c:	f1c3 0301 	rsb	r3, r3, #1
 8004170:	441a      	add	r2, r3
 8004172:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8004176:	9209      	str	r2, [sp, #36]	; 0x24
 8004178:	9304      	str	r3, [sp, #16]
 800417a:	2667      	movs	r6, #103	; 0x67
 800417c:	e633      	b.n	8003de6 <_vfprintf_r+0x162e>
 800417e:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8004182:	f04f 0901 	mov.w	r9, #1
 8004186:	e457      	b.n	8003a38 <_vfprintf_r+0x1280>
 8004188:	465a      	mov	r2, fp
 800418a:	e511      	b.n	8003bb0 <_vfprintf_r+0x13f8>
 800418c:	2e47      	cmp	r6, #71	; 0x47
 800418e:	f47f af5e 	bne.w	800404e <_vfprintf_r+0x1896>
 8004192:	f018 0f01 	tst.w	r8, #1
 8004196:	f43f ab61 	beq.w	800385c <_vfprintf_r+0x10a4>
 800419a:	e7d1      	b.n	8004140 <_vfprintf_r+0x1988>
 800419c:	2200      	movs	r2, #0
 800419e:	2300      	movs	r3, #0
 80041a0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80041a4:	f7fc ff30 	bl	8001008 <__aeabi_dcmpeq>
 80041a8:	2800      	cmp	r0, #0
 80041aa:	f47f af39 	bne.w	8004020 <_vfprintf_r+0x1868>
 80041ae:	f1c5 0501 	rsb	r5, r5, #1
 80041b2:	9524      	str	r5, [sp, #144]	; 0x90
 80041b4:	e735      	b.n	8004022 <_vfprintf_r+0x186a>
 80041b6:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80041b8:	3301      	adds	r3, #1
 80041ba:	444b      	add	r3, r9
 80041bc:	9309      	str	r3, [sp, #36]	; 0x24
 80041be:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80041c2:	9304      	str	r3, [sp, #16]
 80041c4:	2666      	movs	r6, #102	; 0x66
 80041c6:	e60e      	b.n	8003de6 <_vfprintf_r+0x162e>
 80041c8:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 80041cc:	f7ff bb7a 	b.w	80038c4 <_vfprintf_r+0x110c>
 80041d0:	aa2a      	add	r2, sp, #168	; 0xa8
 80041d2:	9907      	ldr	r1, [sp, #28]
 80041d4:	9803      	ldr	r0, [sp, #12]
 80041d6:	f002 fe1d 	bl	8006e14 <__sprint_r>
 80041da:	2800      	cmp	r0, #0
 80041dc:	f47f a864 	bne.w	80032a8 <_vfprintf_r+0xaf0>
 80041e0:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80041e4:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80041e8:	f7ff bbbd 	b.w	8003966 <_vfprintf_r+0x11ae>
 80041ec:	9908      	ldr	r1, [sp, #32]
 80041ee:	f89a 6001 	ldrb.w	r6, [sl, #1]
 80041f2:	680b      	ldr	r3, [r1, #0]
 80041f4:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80041f8:	1d0b      	adds	r3, r1, #4
 80041fa:	4692      	mov	sl, r2
 80041fc:	9308      	str	r3, [sp, #32]
 80041fe:	f7fe bb59 	b.w	80028b4 <_vfprintf_r+0xfc>
 8004202:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004206:	f7ff bb60 	b.w	80038ca <_vfprintf_r+0x1112>
 800420a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800420e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004212:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004216:	f8a9 300c 	strh.w	r3, [r9, #12]
 800421a:	f7ff b84c 	b.w	80032b6 <_vfprintf_r+0xafe>
 800421e:	bf00      	nop
 8004220:	08007628 	.word	0x08007628
 8004224:	080075f8 	.word	0x080075f8
 8004228:	cccccccd 	.word	0xcccccccd
 800422c:	080075e0 	.word	0x080075e0
 8004230:	080075dc 	.word	0x080075dc

08004234 <__sbprintf>:
 8004234:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004238:	460c      	mov	r4, r1
 800423a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800423e:	8989      	ldrh	r1, [r1, #12]
 8004240:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8004242:	89e5      	ldrh	r5, [r4, #14]
 8004244:	9619      	str	r6, [sp, #100]	; 0x64
 8004246:	f021 0102 	bic.w	r1, r1, #2
 800424a:	4606      	mov	r6, r0
 800424c:	69e0      	ldr	r0, [r4, #28]
 800424e:	f8ad 100c 	strh.w	r1, [sp, #12]
 8004252:	4617      	mov	r7, r2
 8004254:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004258:	6a62      	ldr	r2, [r4, #36]	; 0x24
 800425a:	f8ad 500e 	strh.w	r5, [sp, #14]
 800425e:	4698      	mov	r8, r3
 8004260:	ad1a      	add	r5, sp, #104	; 0x68
 8004262:	2300      	movs	r3, #0
 8004264:	9007      	str	r0, [sp, #28]
 8004266:	a816      	add	r0, sp, #88	; 0x58
 8004268:	9209      	str	r2, [sp, #36]	; 0x24
 800426a:	9306      	str	r3, [sp, #24]
 800426c:	9500      	str	r5, [sp, #0]
 800426e:	9504      	str	r5, [sp, #16]
 8004270:	9102      	str	r1, [sp, #8]
 8004272:	9105      	str	r1, [sp, #20]
 8004274:	f001 fc8a 	bl	8005b8c <__retarget_lock_init_recursive>
 8004278:	4643      	mov	r3, r8
 800427a:	463a      	mov	r2, r7
 800427c:	4669      	mov	r1, sp
 800427e:	4630      	mov	r0, r6
 8004280:	f7fe fa9a 	bl	80027b8 <_vfprintf_r>
 8004284:	1e05      	subs	r5, r0, #0
 8004286:	db07      	blt.n	8004298 <__sbprintf+0x64>
 8004288:	4630      	mov	r0, r6
 800428a:	4669      	mov	r1, sp
 800428c:	f001 f8d6 	bl	800543c <_fflush_r>
 8004290:	2800      	cmp	r0, #0
 8004292:	bf18      	it	ne
 8004294:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004298:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800429c:	065b      	lsls	r3, r3, #25
 800429e:	d503      	bpl.n	80042a8 <__sbprintf+0x74>
 80042a0:	89a3      	ldrh	r3, [r4, #12]
 80042a2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80042a6:	81a3      	strh	r3, [r4, #12]
 80042a8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80042aa:	f001 fc71 	bl	8005b90 <__retarget_lock_close_recursive>
 80042ae:	4628      	mov	r0, r5
 80042b0:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 80042b4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080042b8 <__swsetup_r>:
 80042b8:	b538      	push	{r3, r4, r5, lr}
 80042ba:	4b31      	ldr	r3, [pc, #196]	; (8004380 <__swsetup_r+0xc8>)
 80042bc:	681b      	ldr	r3, [r3, #0]
 80042be:	4605      	mov	r5, r0
 80042c0:	460c      	mov	r4, r1
 80042c2:	b113      	cbz	r3, 80042ca <__swsetup_r+0x12>
 80042c4:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 80042c6:	2a00      	cmp	r2, #0
 80042c8:	d03a      	beq.n	8004340 <__swsetup_r+0x88>
 80042ca:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80042ce:	b293      	uxth	r3, r2
 80042d0:	0718      	lsls	r0, r3, #28
 80042d2:	d50c      	bpl.n	80042ee <__swsetup_r+0x36>
 80042d4:	6920      	ldr	r0, [r4, #16]
 80042d6:	b1a8      	cbz	r0, 8004304 <__swsetup_r+0x4c>
 80042d8:	f013 0201 	ands.w	r2, r3, #1
 80042dc:	d020      	beq.n	8004320 <__swsetup_r+0x68>
 80042de:	6963      	ldr	r3, [r4, #20]
 80042e0:	2200      	movs	r2, #0
 80042e2:	425b      	negs	r3, r3
 80042e4:	61a3      	str	r3, [r4, #24]
 80042e6:	60a2      	str	r2, [r4, #8]
 80042e8:	b300      	cbz	r0, 800432c <__swsetup_r+0x74>
 80042ea:	2000      	movs	r0, #0
 80042ec:	bd38      	pop	{r3, r4, r5, pc}
 80042ee:	06d9      	lsls	r1, r3, #27
 80042f0:	d53e      	bpl.n	8004370 <__swsetup_r+0xb8>
 80042f2:	0758      	lsls	r0, r3, #29
 80042f4:	d428      	bmi.n	8004348 <__swsetup_r+0x90>
 80042f6:	6920      	ldr	r0, [r4, #16]
 80042f8:	f042 0308 	orr.w	r3, r2, #8
 80042fc:	81a3      	strh	r3, [r4, #12]
 80042fe:	b29b      	uxth	r3, r3
 8004300:	2800      	cmp	r0, #0
 8004302:	d1e9      	bne.n	80042d8 <__swsetup_r+0x20>
 8004304:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004308:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800430c:	d0e4      	beq.n	80042d8 <__swsetup_r+0x20>
 800430e:	4628      	mov	r0, r5
 8004310:	4621      	mov	r1, r4
 8004312:	f001 fc71 	bl	8005bf8 <__smakebuf_r>
 8004316:	89a3      	ldrh	r3, [r4, #12]
 8004318:	6920      	ldr	r0, [r4, #16]
 800431a:	f013 0201 	ands.w	r2, r3, #1
 800431e:	d1de      	bne.n	80042de <__swsetup_r+0x26>
 8004320:	0799      	lsls	r1, r3, #30
 8004322:	bf58      	it	pl
 8004324:	6962      	ldrpl	r2, [r4, #20]
 8004326:	60a2      	str	r2, [r4, #8]
 8004328:	2800      	cmp	r0, #0
 800432a:	d1de      	bne.n	80042ea <__swsetup_r+0x32>
 800432c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004330:	061a      	lsls	r2, r3, #24
 8004332:	d5db      	bpl.n	80042ec <__swsetup_r+0x34>
 8004334:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004338:	81a3      	strh	r3, [r4, #12]
 800433a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800433e:	bd38      	pop	{r3, r4, r5, pc}
 8004340:	4618      	mov	r0, r3
 8004342:	f001 f8d7 	bl	80054f4 <__sinit>
 8004346:	e7c0      	b.n	80042ca <__swsetup_r+0x12>
 8004348:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800434a:	b151      	cbz	r1, 8004362 <__swsetup_r+0xaa>
 800434c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8004350:	4299      	cmp	r1, r3
 8004352:	d004      	beq.n	800435e <__swsetup_r+0xa6>
 8004354:	4628      	mov	r0, r5
 8004356:	f001 f96f 	bl	8005638 <_free_r>
 800435a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800435e:	2300      	movs	r3, #0
 8004360:	6323      	str	r3, [r4, #48]	; 0x30
 8004362:	2300      	movs	r3, #0
 8004364:	6920      	ldr	r0, [r4, #16]
 8004366:	6063      	str	r3, [r4, #4]
 8004368:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 800436c:	6020      	str	r0, [r4, #0]
 800436e:	e7c3      	b.n	80042f8 <__swsetup_r+0x40>
 8004370:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8004374:	2309      	movs	r3, #9
 8004376:	602b      	str	r3, [r5, #0]
 8004378:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800437c:	81a2      	strh	r2, [r4, #12]
 800437e:	bd38      	pop	{r3, r4, r5, pc}
 8004380:	20000018 	.word	0x20000018

08004384 <register_fini>:
 8004384:	4b02      	ldr	r3, [pc, #8]	; (8004390 <register_fini+0xc>)
 8004386:	b113      	cbz	r3, 800438e <register_fini+0xa>
 8004388:	4802      	ldr	r0, [pc, #8]	; (8004394 <register_fini+0x10>)
 800438a:	f000 b805 	b.w	8004398 <atexit>
 800438e:	4770      	bx	lr
 8004390:	00000000 	.word	0x00000000
 8004394:	08005565 	.word	0x08005565

08004398 <atexit>:
 8004398:	2300      	movs	r3, #0
 800439a:	4601      	mov	r1, r0
 800439c:	461a      	mov	r2, r3
 800439e:	4618      	mov	r0, r3
 80043a0:	f002 bd58 	b.w	8006e54 <__register_exitproc>

080043a4 <quorem>:
 80043a4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80043a8:	6903      	ldr	r3, [r0, #16]
 80043aa:	690f      	ldr	r7, [r1, #16]
 80043ac:	42bb      	cmp	r3, r7
 80043ae:	b083      	sub	sp, #12
 80043b0:	f2c0 8086 	blt.w	80044c0 <quorem+0x11c>
 80043b4:	3f01      	subs	r7, #1
 80043b6:	f101 0914 	add.w	r9, r1, #20
 80043ba:	f100 0a14 	add.w	sl, r0, #20
 80043be:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 80043c2:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 80043c6:	00bc      	lsls	r4, r7, #2
 80043c8:	3201      	adds	r2, #1
 80043ca:	fbb3 f8f2 	udiv	r8, r3, r2
 80043ce:	eb0a 0304 	add.w	r3, sl, r4
 80043d2:	9400      	str	r4, [sp, #0]
 80043d4:	eb09 0b04 	add.w	fp, r9, r4
 80043d8:	9301      	str	r3, [sp, #4]
 80043da:	f1b8 0f00 	cmp.w	r8, #0
 80043de:	d038      	beq.n	8004452 <quorem+0xae>
 80043e0:	2500      	movs	r5, #0
 80043e2:	462e      	mov	r6, r5
 80043e4:	46ce      	mov	lr, r9
 80043e6:	46d4      	mov	ip, sl
 80043e8:	f85e 4b04 	ldr.w	r4, [lr], #4
 80043ec:	f8dc 3000 	ldr.w	r3, [ip]
 80043f0:	b2a2      	uxth	r2, r4
 80043f2:	fb08 5502 	mla	r5, r8, r2, r5
 80043f6:	0c22      	lsrs	r2, r4, #16
 80043f8:	0c2c      	lsrs	r4, r5, #16
 80043fa:	fb08 4202 	mla	r2, r8, r2, r4
 80043fe:	b2ad      	uxth	r5, r5
 8004400:	1b75      	subs	r5, r6, r5
 8004402:	b296      	uxth	r6, r2
 8004404:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004408:	fa15 f383 	uxtah	r3, r5, r3
 800440c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004410:	b29b      	uxth	r3, r3
 8004412:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004416:	45f3      	cmp	fp, lr
 8004418:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800441c:	f84c 3b04 	str.w	r3, [ip], #4
 8004420:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004424:	d2e0      	bcs.n	80043e8 <quorem+0x44>
 8004426:	9b00      	ldr	r3, [sp, #0]
 8004428:	f85a 3003 	ldr.w	r3, [sl, r3]
 800442c:	b98b      	cbnz	r3, 8004452 <quorem+0xae>
 800442e:	9a01      	ldr	r2, [sp, #4]
 8004430:	1f13      	subs	r3, r2, #4
 8004432:	459a      	cmp	sl, r3
 8004434:	d20c      	bcs.n	8004450 <quorem+0xac>
 8004436:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800443a:	b94b      	cbnz	r3, 8004450 <quorem+0xac>
 800443c:	f1a2 0308 	sub.w	r3, r2, #8
 8004440:	e002      	b.n	8004448 <quorem+0xa4>
 8004442:	681a      	ldr	r2, [r3, #0]
 8004444:	3b04      	subs	r3, #4
 8004446:	b91a      	cbnz	r2, 8004450 <quorem+0xac>
 8004448:	459a      	cmp	sl, r3
 800444a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800444e:	d3f8      	bcc.n	8004442 <quorem+0x9e>
 8004450:	6107      	str	r7, [r0, #16]
 8004452:	4604      	mov	r4, r0
 8004454:	f002 f944 	bl	80066e0 <__mcmp>
 8004458:	2800      	cmp	r0, #0
 800445a:	db2d      	blt.n	80044b8 <quorem+0x114>
 800445c:	f108 0801 	add.w	r8, r8, #1
 8004460:	4655      	mov	r5, sl
 8004462:	2300      	movs	r3, #0
 8004464:	f859 1b04 	ldr.w	r1, [r9], #4
 8004468:	6828      	ldr	r0, [r5, #0]
 800446a:	b28a      	uxth	r2, r1
 800446c:	1a9a      	subs	r2, r3, r2
 800446e:	0c0b      	lsrs	r3, r1, #16
 8004470:	fa12 f280 	uxtah	r2, r2, r0
 8004474:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004478:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800447c:	b292      	uxth	r2, r2
 800447e:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8004482:	45cb      	cmp	fp, r9
 8004484:	f845 2b04 	str.w	r2, [r5], #4
 8004488:	ea4f 4323 	mov.w	r3, r3, asr #16
 800448c:	d2ea      	bcs.n	8004464 <quorem+0xc0>
 800448e:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004492:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004496:	b97a      	cbnz	r2, 80044b8 <quorem+0x114>
 8004498:	1f1a      	subs	r2, r3, #4
 800449a:	4592      	cmp	sl, r2
 800449c:	d20b      	bcs.n	80044b6 <quorem+0x112>
 800449e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80044a2:	b942      	cbnz	r2, 80044b6 <quorem+0x112>
 80044a4:	3b08      	subs	r3, #8
 80044a6:	e002      	b.n	80044ae <quorem+0x10a>
 80044a8:	681a      	ldr	r2, [r3, #0]
 80044aa:	3b04      	subs	r3, #4
 80044ac:	b91a      	cbnz	r2, 80044b6 <quorem+0x112>
 80044ae:	459a      	cmp	sl, r3
 80044b0:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80044b4:	d3f8      	bcc.n	80044a8 <quorem+0x104>
 80044b6:	6127      	str	r7, [r4, #16]
 80044b8:	4640      	mov	r0, r8
 80044ba:	b003      	add	sp, #12
 80044bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80044c0:	2000      	movs	r0, #0
 80044c2:	b003      	add	sp, #12
 80044c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

080044c8 <_dtoa_r>:
 80044c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80044cc:	ec55 4b10 	vmov	r4, r5, d0
 80044d0:	b09b      	sub	sp, #108	; 0x6c
 80044d2:	6c06      	ldr	r6, [r0, #64]	; 0x40
 80044d4:	9102      	str	r1, [sp, #8]
 80044d6:	4681      	mov	r9, r0
 80044d8:	9207      	str	r2, [sp, #28]
 80044da:	9305      	str	r3, [sp, #20]
 80044dc:	e9cd 4500 	strd	r4, r5, [sp]
 80044e0:	b156      	cbz	r6, 80044f8 <_dtoa_r+0x30>
 80044e2:	6c42      	ldr	r2, [r0, #68]	; 0x44
 80044e4:	6072      	str	r2, [r6, #4]
 80044e6:	2301      	movs	r3, #1
 80044e8:	4093      	lsls	r3, r2
 80044ea:	60b3      	str	r3, [r6, #8]
 80044ec:	4631      	mov	r1, r6
 80044ee:	f001 ff07 	bl	8006300 <_Bfree>
 80044f2:	2300      	movs	r3, #0
 80044f4:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80044f8:	f1b5 0800 	subs.w	r8, r5, #0
 80044fc:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80044fe:	bfb4      	ite	lt
 8004500:	2301      	movlt	r3, #1
 8004502:	2300      	movge	r3, #0
 8004504:	6013      	str	r3, [r2, #0]
 8004506:	4b76      	ldr	r3, [pc, #472]	; (80046e0 <_dtoa_r+0x218>)
 8004508:	bfbc      	itt	lt
 800450a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800450e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004512:	ea33 0308 	bics.w	r3, r3, r8
 8004516:	f000 80a6 	beq.w	8004666 <_dtoa_r+0x19e>
 800451a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800451e:	2200      	movs	r2, #0
 8004520:	2300      	movs	r3, #0
 8004522:	4630      	mov	r0, r6
 8004524:	4639      	mov	r1, r7
 8004526:	f7fc fd6f 	bl	8001008 <__aeabi_dcmpeq>
 800452a:	4605      	mov	r5, r0
 800452c:	b178      	cbz	r0, 800454e <_dtoa_r+0x86>
 800452e:	9a05      	ldr	r2, [sp, #20]
 8004530:	2301      	movs	r3, #1
 8004532:	6013      	str	r3, [r2, #0]
 8004534:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004536:	2b00      	cmp	r3, #0
 8004538:	f000 80c0 	beq.w	80046bc <_dtoa_r+0x1f4>
 800453c:	4b69      	ldr	r3, [pc, #420]	; (80046e4 <_dtoa_r+0x21c>)
 800453e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004540:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8004544:	6013      	str	r3, [r2, #0]
 8004546:	4658      	mov	r0, fp
 8004548:	b01b      	add	sp, #108	; 0x6c
 800454a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800454e:	aa18      	add	r2, sp, #96	; 0x60
 8004550:	a919      	add	r1, sp, #100	; 0x64
 8004552:	ec47 6b10 	vmov	d0, r6, r7
 8004556:	4648      	mov	r0, r9
 8004558:	f002 f954 	bl	8006804 <__d2b>
 800455c:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004560:	4682      	mov	sl, r0
 8004562:	f040 80a0 	bne.w	80046a6 <_dtoa_r+0x1de>
 8004566:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 800456a:	442c      	add	r4, r5
 800456c:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004570:	2b20      	cmp	r3, #32
 8004572:	f340 842c 	ble.w	8004dce <_dtoa_r+0x906>
 8004576:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 800457a:	fa08 f803 	lsl.w	r8, r8, r3
 800457e:	9b00      	ldr	r3, [sp, #0]
 8004580:	f204 4012 	addw	r0, r4, #1042	; 0x412
 8004584:	fa23 f000 	lsr.w	r0, r3, r0
 8004588:	ea48 0000 	orr.w	r0, r8, r0
 800458c:	f7fc fa5a 	bl	8000a44 <__aeabi_ui2d>
 8004590:	2301      	movs	r3, #1
 8004592:	4606      	mov	r6, r0
 8004594:	3c01      	subs	r4, #1
 8004596:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800459a:	930f      	str	r3, [sp, #60]	; 0x3c
 800459c:	4630      	mov	r0, r6
 800459e:	4639      	mov	r1, r7
 80045a0:	2200      	movs	r2, #0
 80045a2:	4b51      	ldr	r3, [pc, #324]	; (80046e8 <_dtoa_r+0x220>)
 80045a4:	f7fc f910 	bl	80007c8 <__aeabi_dsub>
 80045a8:	a347      	add	r3, pc, #284	; (adr r3, 80046c8 <_dtoa_r+0x200>)
 80045aa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80045ae:	f7fc fac3 	bl	8000b38 <__aeabi_dmul>
 80045b2:	a347      	add	r3, pc, #284	; (adr r3, 80046d0 <_dtoa_r+0x208>)
 80045b4:	e9d3 2300 	ldrd	r2, r3, [r3]
 80045b8:	f7fc f908 	bl	80007cc <__adddf3>
 80045bc:	4606      	mov	r6, r0
 80045be:	4620      	mov	r0, r4
 80045c0:	460f      	mov	r7, r1
 80045c2:	f7fc fa4f 	bl	8000a64 <__aeabi_i2d>
 80045c6:	a344      	add	r3, pc, #272	; (adr r3, 80046d8 <_dtoa_r+0x210>)
 80045c8:	e9d3 2300 	ldrd	r2, r3, [r3]
 80045cc:	f7fc fab4 	bl	8000b38 <__aeabi_dmul>
 80045d0:	4602      	mov	r2, r0
 80045d2:	460b      	mov	r3, r1
 80045d4:	4630      	mov	r0, r6
 80045d6:	4639      	mov	r1, r7
 80045d8:	f7fc f8f8 	bl	80007cc <__adddf3>
 80045dc:	4606      	mov	r6, r0
 80045de:	460f      	mov	r7, r1
 80045e0:	f7fc fd5a 	bl	8001098 <__aeabi_d2iz>
 80045e4:	2200      	movs	r2, #0
 80045e6:	9006      	str	r0, [sp, #24]
 80045e8:	2300      	movs	r3, #0
 80045ea:	4630      	mov	r0, r6
 80045ec:	4639      	mov	r1, r7
 80045ee:	f7fc fd15 	bl	800101c <__aeabi_dcmplt>
 80045f2:	2800      	cmp	r0, #0
 80045f4:	f040 8273 	bne.w	8004ade <_dtoa_r+0x616>
 80045f8:	9e06      	ldr	r6, [sp, #24]
 80045fa:	2e16      	cmp	r6, #22
 80045fc:	f200 825d 	bhi.w	8004aba <_dtoa_r+0x5f2>
 8004600:	4b3a      	ldr	r3, [pc, #232]	; (80046ec <_dtoa_r+0x224>)
 8004602:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004606:	e9d3 0100 	ldrd	r0, r1, [r3]
 800460a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800460e:	f7fc fd23 	bl	8001058 <__aeabi_dcmpgt>
 8004612:	2800      	cmp	r0, #0
 8004614:	f000 83d7 	beq.w	8004dc6 <_dtoa_r+0x8fe>
 8004618:	1e73      	subs	r3, r6, #1
 800461a:	9306      	str	r3, [sp, #24]
 800461c:	2300      	movs	r3, #0
 800461e:	930d      	str	r3, [sp, #52]	; 0x34
 8004620:	1b2c      	subs	r4, r5, r4
 8004622:	f1b4 0801 	subs.w	r8, r4, #1
 8004626:	f100 8254 	bmi.w	8004ad2 <_dtoa_r+0x60a>
 800462a:	2300      	movs	r3, #0
 800462c:	9308      	str	r3, [sp, #32]
 800462e:	9b06      	ldr	r3, [sp, #24]
 8004630:	2b00      	cmp	r3, #0
 8004632:	f2c0 8245 	blt.w	8004ac0 <_dtoa_r+0x5f8>
 8004636:	4498      	add	r8, r3
 8004638:	930c      	str	r3, [sp, #48]	; 0x30
 800463a:	2300      	movs	r3, #0
 800463c:	930b      	str	r3, [sp, #44]	; 0x2c
 800463e:	9b02      	ldr	r3, [sp, #8]
 8004640:	2b09      	cmp	r3, #9
 8004642:	d85b      	bhi.n	80046fc <_dtoa_r+0x234>
 8004644:	2b05      	cmp	r3, #5
 8004646:	f340 83c0 	ble.w	8004dca <_dtoa_r+0x902>
 800464a:	3b04      	subs	r3, #4
 800464c:	9302      	str	r3, [sp, #8]
 800464e:	2500      	movs	r5, #0
 8004650:	9b02      	ldr	r3, [sp, #8]
 8004652:	3b02      	subs	r3, #2
 8004654:	2b03      	cmp	r3, #3
 8004656:	f200 8498 	bhi.w	8004f8a <_dtoa_r+0xac2>
 800465a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800465e:	03df      	.short	0x03df
 8004660:	03e803bf 	.word	0x03e803bf
 8004664:	04f5      	.short	0x04f5
 8004666:	9a05      	ldr	r2, [sp, #20]
 8004668:	f242 730f 	movw	r3, #9999	; 0x270f
 800466c:	6013      	str	r3, [r2, #0]
 800466e:	9b00      	ldr	r3, [sp, #0]
 8004670:	b983      	cbnz	r3, 8004694 <_dtoa_r+0x1cc>
 8004672:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8004676:	b96b      	cbnz	r3, 8004694 <_dtoa_r+0x1cc>
 8004678:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800467a:	f8df b074 	ldr.w	fp, [pc, #116]	; 80046f0 <_dtoa_r+0x228>
 800467e:	2b00      	cmp	r3, #0
 8004680:	f43f af61 	beq.w	8004546 <_dtoa_r+0x7e>
 8004684:	f10b 0308 	add.w	r3, fp, #8
 8004688:	9a25      	ldr	r2, [sp, #148]	; 0x94
 800468a:	4658      	mov	r0, fp
 800468c:	6013      	str	r3, [r2, #0]
 800468e:	b01b      	add	sp, #108	; 0x6c
 8004690:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004694:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004696:	f8df b05c 	ldr.w	fp, [pc, #92]	; 80046f4 <_dtoa_r+0x22c>
 800469a:	2b00      	cmp	r3, #0
 800469c:	f43f af53 	beq.w	8004546 <_dtoa_r+0x7e>
 80046a0:	f10b 0303 	add.w	r3, fp, #3
 80046a4:	e7f0      	b.n	8004688 <_dtoa_r+0x1c0>
 80046a6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 80046aa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 80046ae:	950f      	str	r5, [sp, #60]	; 0x3c
 80046b0:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 80046b4:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 80046b8:	9d18      	ldr	r5, [sp, #96]	; 0x60
 80046ba:	e76f      	b.n	800459c <_dtoa_r+0xd4>
 80046bc:	f8df b038 	ldr.w	fp, [pc, #56]	; 80046f8 <_dtoa_r+0x230>
 80046c0:	4658      	mov	r0, fp
 80046c2:	b01b      	add	sp, #108	; 0x6c
 80046c4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80046c8:	636f4361 	.word	0x636f4361
 80046cc:	3fd287a7 	.word	0x3fd287a7
 80046d0:	8b60c8b3 	.word	0x8b60c8b3
 80046d4:	3fc68a28 	.word	0x3fc68a28
 80046d8:	509f79fb 	.word	0x509f79fb
 80046dc:	3fd34413 	.word	0x3fd34413
 80046e0:	7ff00000 	.word	0x7ff00000
 80046e4:	08007615 	.word	0x08007615
 80046e8:	3ff80000 	.word	0x3ff80000
 80046ec:	08007670 	.word	0x08007670
 80046f0:	08007638 	.word	0x08007638
 80046f4:	08007644 	.word	0x08007644
 80046f8:	08007614 	.word	0x08007614
 80046fc:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004700:	2501      	movs	r5, #1
 8004702:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004706:	2300      	movs	r3, #0
 8004708:	9302      	str	r3, [sp, #8]
 800470a:	9307      	str	r3, [sp, #28]
 800470c:	2100      	movs	r1, #0
 800470e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004712:	940e      	str	r4, [sp, #56]	; 0x38
 8004714:	4648      	mov	r0, r9
 8004716:	f001 fdcd 	bl	80062b4 <_Balloc>
 800471a:	2c0e      	cmp	r4, #14
 800471c:	4683      	mov	fp, r0
 800471e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004722:	f200 80fb 	bhi.w	800491c <_dtoa_r+0x454>
 8004726:	2d00      	cmp	r5, #0
 8004728:	f000 80f8 	beq.w	800491c <_dtoa_r+0x454>
 800472c:	ed9d 7b00 	vldr	d7, [sp]
 8004730:	9906      	ldr	r1, [sp, #24]
 8004732:	2900      	cmp	r1, #0
 8004734:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004738:	f340 83e5 	ble.w	8004f06 <_dtoa_r+0xa3e>
 800473c:	4b9d      	ldr	r3, [pc, #628]	; (80049b4 <_dtoa_r+0x4ec>)
 800473e:	f001 020f 	and.w	r2, r1, #15
 8004742:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004746:	ed93 7b00 	vldr	d7, [r3]
 800474a:	110c      	asrs	r4, r1, #4
 800474c:	06e2      	lsls	r2, r4, #27
 800474e:	ed8d 7b00 	vstr	d7, [sp]
 8004752:	f140 849e 	bpl.w	8005092 <_dtoa_r+0xbca>
 8004756:	4b98      	ldr	r3, [pc, #608]	; (80049b8 <_dtoa_r+0x4f0>)
 8004758:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 800475c:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004760:	f7fc fb14 	bl	8000d8c <__aeabi_ddiv>
 8004764:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004768:	f004 040f 	and.w	r4, r4, #15
 800476c:	2603      	movs	r6, #3
 800476e:	b17c      	cbz	r4, 8004790 <_dtoa_r+0x2c8>
 8004770:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004774:	4d90      	ldr	r5, [pc, #576]	; (80049b8 <_dtoa_r+0x4f0>)
 8004776:	07e3      	lsls	r3, r4, #31
 8004778:	d504      	bpl.n	8004784 <_dtoa_r+0x2bc>
 800477a:	e9d5 2300 	ldrd	r2, r3, [r5]
 800477e:	f7fc f9db 	bl	8000b38 <__aeabi_dmul>
 8004782:	3601      	adds	r6, #1
 8004784:	1064      	asrs	r4, r4, #1
 8004786:	f105 0508 	add.w	r5, r5, #8
 800478a:	d1f4      	bne.n	8004776 <_dtoa_r+0x2ae>
 800478c:	e9cd 0100 	strd	r0, r1, [sp]
 8004790:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004794:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004798:	f7fc faf8 	bl	8000d8c <__aeabi_ddiv>
 800479c:	e9cd 0100 	strd	r0, r1, [sp]
 80047a0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 80047a2:	b143      	cbz	r3, 80047b6 <_dtoa_r+0x2ee>
 80047a4:	2200      	movs	r2, #0
 80047a6:	4b85      	ldr	r3, [pc, #532]	; (80049bc <_dtoa_r+0x4f4>)
 80047a8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80047ac:	f7fc fc36 	bl	800101c <__aeabi_dcmplt>
 80047b0:	2800      	cmp	r0, #0
 80047b2:	f040 84ff 	bne.w	80051b4 <_dtoa_r+0xcec>
 80047b6:	4630      	mov	r0, r6
 80047b8:	f7fc f954 	bl	8000a64 <__aeabi_i2d>
 80047bc:	e9dd 2300 	ldrd	r2, r3, [sp]
 80047c0:	f7fc f9ba 	bl	8000b38 <__aeabi_dmul>
 80047c4:	4b7e      	ldr	r3, [pc, #504]	; (80049c0 <_dtoa_r+0x4f8>)
 80047c6:	2200      	movs	r2, #0
 80047c8:	f7fc f800 	bl	80007cc <__adddf3>
 80047cc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047ce:	4606      	mov	r6, r0
 80047d0:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80047d4:	2b00      	cmp	r3, #0
 80047d6:	f000 841c 	beq.w	8005012 <_dtoa_r+0xb4a>
 80047da:	9b06      	ldr	r3, [sp, #24]
 80047dc:	9316      	str	r3, [sp, #88]	; 0x58
 80047de:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047e0:	9312      	str	r3, [sp, #72]	; 0x48
 80047e2:	e9dd 0100 	ldrd	r0, r1, [sp]
 80047e6:	f7fc fc57 	bl	8001098 <__aeabi_d2iz>
 80047ea:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80047ec:	4b71      	ldr	r3, [pc, #452]	; (80049b4 <_dtoa_r+0x4ec>)
 80047ee:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80047f2:	ed13 7b02 	vldr	d7, [r3, #-8]
 80047f6:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80047fa:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80047fe:	f7fc f931 	bl	8000a64 <__aeabi_i2d>
 8004802:	460b      	mov	r3, r1
 8004804:	4602      	mov	r2, r0
 8004806:	e9dd 0100 	ldrd	r0, r1, [sp]
 800480a:	e9cd 6700 	strd	r6, r7, [sp]
 800480e:	f7fb ffdb 	bl	80007c8 <__aeabi_dsub>
 8004812:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004814:	b2ed      	uxtb	r5, r5
 8004816:	4606      	mov	r6, r0
 8004818:	460f      	mov	r7, r1
 800481a:	f10b 0401 	add.w	r4, fp, #1
 800481e:	2b00      	cmp	r3, #0
 8004820:	f000 8458 	beq.w	80050d4 <_dtoa_r+0xc0c>
 8004824:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004828:	2000      	movs	r0, #0
 800482a:	4966      	ldr	r1, [pc, #408]	; (80049c4 <_dtoa_r+0x4fc>)
 800482c:	f7fc faae 	bl	8000d8c <__aeabi_ddiv>
 8004830:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004834:	f7fb ffc8 	bl	80007c8 <__aeabi_dsub>
 8004838:	f88b 5000 	strb.w	r5, [fp]
 800483c:	4632      	mov	r2, r6
 800483e:	463b      	mov	r3, r7
 8004840:	e9cd 0100 	strd	r0, r1, [sp]
 8004844:	f7fc fc08 	bl	8001058 <__aeabi_dcmpgt>
 8004848:	2800      	cmp	r0, #0
 800484a:	f040 8502 	bne.w	8005252 <_dtoa_r+0xd8a>
 800484e:	4632      	mov	r2, r6
 8004850:	463b      	mov	r3, r7
 8004852:	2000      	movs	r0, #0
 8004854:	4959      	ldr	r1, [pc, #356]	; (80049bc <_dtoa_r+0x4f4>)
 8004856:	f7fb ffb7 	bl	80007c8 <__aeabi_dsub>
 800485a:	4602      	mov	r2, r0
 800485c:	460b      	mov	r3, r1
 800485e:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004862:	f7fc fbf9 	bl	8001058 <__aeabi_dcmpgt>
 8004866:	2800      	cmp	r0, #0
 8004868:	f040 84fb 	bne.w	8005262 <_dtoa_r+0xd9a>
 800486c:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800486e:	2a01      	cmp	r2, #1
 8004870:	d050      	beq.n	8004914 <_dtoa_r+0x44c>
 8004872:	445a      	add	r2, fp
 8004874:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004878:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 800487c:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004880:	4692      	mov	sl, r2
 8004882:	46cb      	mov	fp, r9
 8004884:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004888:	e00c      	b.n	80048a4 <_dtoa_r+0x3dc>
 800488a:	2000      	movs	r0, #0
 800488c:	494b      	ldr	r1, [pc, #300]	; (80049bc <_dtoa_r+0x4f4>)
 800488e:	f7fb ff9b 	bl	80007c8 <__aeabi_dsub>
 8004892:	4642      	mov	r2, r8
 8004894:	464b      	mov	r3, r9
 8004896:	f7fc fbc1 	bl	800101c <__aeabi_dcmplt>
 800489a:	2800      	cmp	r0, #0
 800489c:	f040 84dc 	bne.w	8005258 <_dtoa_r+0xd90>
 80048a0:	4554      	cmp	r4, sl
 80048a2:	d030      	beq.n	8004906 <_dtoa_r+0x43e>
 80048a4:	4640      	mov	r0, r8
 80048a6:	4649      	mov	r1, r9
 80048a8:	2200      	movs	r2, #0
 80048aa:	4b47      	ldr	r3, [pc, #284]	; (80049c8 <_dtoa_r+0x500>)
 80048ac:	f7fc f944 	bl	8000b38 <__aeabi_dmul>
 80048b0:	2200      	movs	r2, #0
 80048b2:	4b45      	ldr	r3, [pc, #276]	; (80049c8 <_dtoa_r+0x500>)
 80048b4:	4680      	mov	r8, r0
 80048b6:	4689      	mov	r9, r1
 80048b8:	4630      	mov	r0, r6
 80048ba:	4639      	mov	r1, r7
 80048bc:	f7fc f93c 	bl	8000b38 <__aeabi_dmul>
 80048c0:	460f      	mov	r7, r1
 80048c2:	4606      	mov	r6, r0
 80048c4:	f7fc fbe8 	bl	8001098 <__aeabi_d2iz>
 80048c8:	4605      	mov	r5, r0
 80048ca:	f7fc f8cb 	bl	8000a64 <__aeabi_i2d>
 80048ce:	4602      	mov	r2, r0
 80048d0:	460b      	mov	r3, r1
 80048d2:	4630      	mov	r0, r6
 80048d4:	4639      	mov	r1, r7
 80048d6:	f7fb ff77 	bl	80007c8 <__aeabi_dsub>
 80048da:	3530      	adds	r5, #48	; 0x30
 80048dc:	b2ed      	uxtb	r5, r5
 80048de:	4642      	mov	r2, r8
 80048e0:	464b      	mov	r3, r9
 80048e2:	f804 5b01 	strb.w	r5, [r4], #1
 80048e6:	4606      	mov	r6, r0
 80048e8:	460f      	mov	r7, r1
 80048ea:	f7fc fb97 	bl	800101c <__aeabi_dcmplt>
 80048ee:	4632      	mov	r2, r6
 80048f0:	463b      	mov	r3, r7
 80048f2:	2800      	cmp	r0, #0
 80048f4:	d0c9      	beq.n	800488a <_dtoa_r+0x3c2>
 80048f6:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80048f8:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80048fc:	9306      	str	r3, [sp, #24]
 80048fe:	46d9      	mov	r9, fp
 8004900:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004904:	e236      	b.n	8004d74 <_dtoa_r+0x8ac>
 8004906:	46d9      	mov	r9, fp
 8004908:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800490c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004910:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004914:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004918:	e9cd 3400 	strd	r3, r4, [sp]
 800491c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800491e:	2b00      	cmp	r3, #0
 8004920:	f2c0 80ae 	blt.w	8004a80 <_dtoa_r+0x5b8>
 8004924:	9a06      	ldr	r2, [sp, #24]
 8004926:	2a0e      	cmp	r2, #14
 8004928:	f300 80aa 	bgt.w	8004a80 <_dtoa_r+0x5b8>
 800492c:	4b21      	ldr	r3, [pc, #132]	; (80049b4 <_dtoa_r+0x4ec>)
 800492e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004932:	ed93 7b00 	vldr	d7, [r3]
 8004936:	9b07      	ldr	r3, [sp, #28]
 8004938:	2b00      	cmp	r3, #0
 800493a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800493e:	f2c0 82be 	blt.w	8004ebe <_dtoa_r+0x9f6>
 8004942:	e9dd 6700 	ldrd	r6, r7, [sp]
 8004946:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800494a:	4630      	mov	r0, r6
 800494c:	4639      	mov	r1, r7
 800494e:	f7fc fa1d 	bl	8000d8c <__aeabi_ddiv>
 8004952:	f7fc fba1 	bl	8001098 <__aeabi_d2iz>
 8004956:	4605      	mov	r5, r0
 8004958:	f7fc f884 	bl	8000a64 <__aeabi_i2d>
 800495c:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004960:	f7fc f8ea 	bl	8000b38 <__aeabi_dmul>
 8004964:	460b      	mov	r3, r1
 8004966:	4602      	mov	r2, r0
 8004968:	4639      	mov	r1, r7
 800496a:	4630      	mov	r0, r6
 800496c:	f7fb ff2c 	bl	80007c8 <__aeabi_dsub>
 8004970:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8004974:	f88b 3000 	strb.w	r3, [fp]
 8004978:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800497a:	2b01      	cmp	r3, #1
 800497c:	4606      	mov	r6, r0
 800497e:	460f      	mov	r7, r1
 8004980:	f10b 0401 	add.w	r4, fp, #1
 8004984:	d053      	beq.n	8004a2e <_dtoa_r+0x566>
 8004986:	2200      	movs	r2, #0
 8004988:	4b0f      	ldr	r3, [pc, #60]	; (80049c8 <_dtoa_r+0x500>)
 800498a:	f7fc f8d5 	bl	8000b38 <__aeabi_dmul>
 800498e:	2200      	movs	r2, #0
 8004990:	2300      	movs	r3, #0
 8004992:	4606      	mov	r6, r0
 8004994:	460f      	mov	r7, r1
 8004996:	f7fc fb37 	bl	8001008 <__aeabi_dcmpeq>
 800499a:	2800      	cmp	r0, #0
 800499c:	f040 81ea 	bne.w	8004d74 <_dtoa_r+0x8ac>
 80049a0:	f8cd a000 	str.w	sl, [sp]
 80049a4:	f8cd 901c 	str.w	r9, [sp, #28]
 80049a8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80049ac:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 80049b0:	e017      	b.n	80049e2 <_dtoa_r+0x51a>
 80049b2:	bf00      	nop
 80049b4:	08007670 	.word	0x08007670
 80049b8:	08007648 	.word	0x08007648
 80049bc:	3ff00000 	.word	0x3ff00000
 80049c0:	401c0000 	.word	0x401c0000
 80049c4:	3fe00000 	.word	0x3fe00000
 80049c8:	40240000 	.word	0x40240000
 80049cc:	f7fc f8b4 	bl	8000b38 <__aeabi_dmul>
 80049d0:	2200      	movs	r2, #0
 80049d2:	2300      	movs	r3, #0
 80049d4:	4606      	mov	r6, r0
 80049d6:	460f      	mov	r7, r1
 80049d8:	f7fc fb16 	bl	8001008 <__aeabi_dcmpeq>
 80049dc:	2800      	cmp	r0, #0
 80049de:	f040 833d 	bne.w	800505c <_dtoa_r+0xb94>
 80049e2:	464a      	mov	r2, r9
 80049e4:	4653      	mov	r3, sl
 80049e6:	4630      	mov	r0, r6
 80049e8:	4639      	mov	r1, r7
 80049ea:	f7fc f9cf 	bl	8000d8c <__aeabi_ddiv>
 80049ee:	f7fc fb53 	bl	8001098 <__aeabi_d2iz>
 80049f2:	4605      	mov	r5, r0
 80049f4:	f7fc f836 	bl	8000a64 <__aeabi_i2d>
 80049f8:	464a      	mov	r2, r9
 80049fa:	4653      	mov	r3, sl
 80049fc:	f7fc f89c 	bl	8000b38 <__aeabi_dmul>
 8004a00:	4602      	mov	r2, r0
 8004a02:	460b      	mov	r3, r1
 8004a04:	4630      	mov	r0, r6
 8004a06:	4639      	mov	r1, r7
 8004a08:	f7fb fede 	bl	80007c8 <__aeabi_dsub>
 8004a0c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004a10:	f804 cb01 	strb.w	ip, [r4], #1
 8004a14:	eba4 0c0b 	sub.w	ip, r4, fp
 8004a18:	45e0      	cmp	r8, ip
 8004a1a:	4606      	mov	r6, r0
 8004a1c:	460f      	mov	r7, r1
 8004a1e:	f04f 0200 	mov.w	r2, #0
 8004a22:	4bc1      	ldr	r3, [pc, #772]	; (8004d28 <_dtoa_r+0x860>)
 8004a24:	d1d2      	bne.n	80049cc <_dtoa_r+0x504>
 8004a26:	f8dd a000 	ldr.w	sl, [sp]
 8004a2a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004a2e:	4632      	mov	r2, r6
 8004a30:	463b      	mov	r3, r7
 8004a32:	4630      	mov	r0, r6
 8004a34:	4639      	mov	r1, r7
 8004a36:	f7fb fec9 	bl	80007cc <__adddf3>
 8004a3a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004a3e:	4606      	mov	r6, r0
 8004a40:	460f      	mov	r7, r1
 8004a42:	f7fc fb09 	bl	8001058 <__aeabi_dcmpgt>
 8004a46:	b958      	cbnz	r0, 8004a60 <_dtoa_r+0x598>
 8004a48:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004a4c:	4630      	mov	r0, r6
 8004a4e:	4639      	mov	r1, r7
 8004a50:	f7fc fada 	bl	8001008 <__aeabi_dcmpeq>
 8004a54:	2800      	cmp	r0, #0
 8004a56:	f000 818d 	beq.w	8004d74 <_dtoa_r+0x8ac>
 8004a5a:	07e9      	lsls	r1, r5, #31
 8004a5c:	f140 818a 	bpl.w	8004d74 <_dtoa_r+0x8ac>
 8004a60:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004a64:	e005      	b.n	8004a72 <_dtoa_r+0x5aa>
 8004a66:	459b      	cmp	fp, r3
 8004a68:	f000 8373 	beq.w	8005152 <_dtoa_r+0xc8a>
 8004a6c:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004a70:	461c      	mov	r4, r3
 8004a72:	2d39      	cmp	r5, #57	; 0x39
 8004a74:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a78:	d0f5      	beq.n	8004a66 <_dtoa_r+0x59e>
 8004a7a:	3501      	adds	r5, #1
 8004a7c:	701d      	strb	r5, [r3, #0]
 8004a7e:	e179      	b.n	8004d74 <_dtoa_r+0x8ac>
 8004a80:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004a82:	2a00      	cmp	r2, #0
 8004a84:	d03b      	beq.n	8004afe <_dtoa_r+0x636>
 8004a86:	9a02      	ldr	r2, [sp, #8]
 8004a88:	2a01      	cmp	r2, #1
 8004a8a:	f340 820b 	ble.w	8004ea4 <_dtoa_r+0x9dc>
 8004a8e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a90:	1e5f      	subs	r7, r3, #1
 8004a92:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004a94:	42bb      	cmp	r3, r7
 8004a96:	f2c0 82e6 	blt.w	8005066 <_dtoa_r+0xb9e>
 8004a9a:	1bdf      	subs	r7, r3, r7
 8004a9c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a9e:	2b00      	cmp	r3, #0
 8004aa0:	f2c0 830b 	blt.w	80050ba <_dtoa_r+0xbf2>
 8004aa4:	9a08      	ldr	r2, [sp, #32]
 8004aa6:	4614      	mov	r4, r2
 8004aa8:	441a      	add	r2, r3
 8004aaa:	4498      	add	r8, r3
 8004aac:	9208      	str	r2, [sp, #32]
 8004aae:	2101      	movs	r1, #1
 8004ab0:	4648      	mov	r0, r9
 8004ab2:	f001 fcbf 	bl	8006434 <__i2b>
 8004ab6:	4605      	mov	r5, r0
 8004ab8:	e024      	b.n	8004b04 <_dtoa_r+0x63c>
 8004aba:	2301      	movs	r3, #1
 8004abc:	930d      	str	r3, [sp, #52]	; 0x34
 8004abe:	e5af      	b.n	8004620 <_dtoa_r+0x158>
 8004ac0:	9a08      	ldr	r2, [sp, #32]
 8004ac2:	9b06      	ldr	r3, [sp, #24]
 8004ac4:	1ad2      	subs	r2, r2, r3
 8004ac6:	425b      	negs	r3, r3
 8004ac8:	930b      	str	r3, [sp, #44]	; 0x2c
 8004aca:	2300      	movs	r3, #0
 8004acc:	9208      	str	r2, [sp, #32]
 8004ace:	930c      	str	r3, [sp, #48]	; 0x30
 8004ad0:	e5b5      	b.n	800463e <_dtoa_r+0x176>
 8004ad2:	f1c4 0301 	rsb	r3, r4, #1
 8004ad6:	9308      	str	r3, [sp, #32]
 8004ad8:	f04f 0800 	mov.w	r8, #0
 8004adc:	e5a7      	b.n	800462e <_dtoa_r+0x166>
 8004ade:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004ae2:	4640      	mov	r0, r8
 8004ae4:	f7fb ffbe 	bl	8000a64 <__aeabi_i2d>
 8004ae8:	4632      	mov	r2, r6
 8004aea:	463b      	mov	r3, r7
 8004aec:	f7fc fa8c 	bl	8001008 <__aeabi_dcmpeq>
 8004af0:	2800      	cmp	r0, #0
 8004af2:	f47f ad81 	bne.w	80045f8 <_dtoa_r+0x130>
 8004af6:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004afa:	9306      	str	r3, [sp, #24]
 8004afc:	e57c      	b.n	80045f8 <_dtoa_r+0x130>
 8004afe:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004b00:	9c08      	ldr	r4, [sp, #32]
 8004b02:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004b04:	2c00      	cmp	r4, #0
 8004b06:	dd0c      	ble.n	8004b22 <_dtoa_r+0x65a>
 8004b08:	f1b8 0f00 	cmp.w	r8, #0
 8004b0c:	dd09      	ble.n	8004b22 <_dtoa_r+0x65a>
 8004b0e:	4544      	cmp	r4, r8
 8004b10:	9a08      	ldr	r2, [sp, #32]
 8004b12:	4623      	mov	r3, r4
 8004b14:	bfa8      	it	ge
 8004b16:	4643      	movge	r3, r8
 8004b18:	1ad2      	subs	r2, r2, r3
 8004b1a:	9208      	str	r2, [sp, #32]
 8004b1c:	1ae4      	subs	r4, r4, r3
 8004b1e:	eba8 0803 	sub.w	r8, r8, r3
 8004b22:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b24:	b16b      	cbz	r3, 8004b42 <_dtoa_r+0x67a>
 8004b26:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004b28:	2a00      	cmp	r2, #0
 8004b2a:	f000 8290 	beq.w	800504e <_dtoa_r+0xb86>
 8004b2e:	1bde      	subs	r6, r3, r7
 8004b30:	2f00      	cmp	r7, #0
 8004b32:	f040 819b 	bne.w	8004e6c <_dtoa_r+0x9a4>
 8004b36:	4651      	mov	r1, sl
 8004b38:	4632      	mov	r2, r6
 8004b3a:	4648      	mov	r0, r9
 8004b3c:	f001 fd2a 	bl	8006594 <__pow5mult>
 8004b40:	4682      	mov	sl, r0
 8004b42:	2101      	movs	r1, #1
 8004b44:	4648      	mov	r0, r9
 8004b46:	f001 fc75 	bl	8006434 <__i2b>
 8004b4a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004b4c:	4606      	mov	r6, r0
 8004b4e:	2a00      	cmp	r2, #0
 8004b50:	f040 8125 	bne.w	8004d9e <_dtoa_r+0x8d6>
 8004b54:	9b02      	ldr	r3, [sp, #8]
 8004b56:	2b01      	cmp	r3, #1
 8004b58:	f340 816c 	ble.w	8004e34 <_dtoa_r+0x96c>
 8004b5c:	2001      	movs	r0, #1
 8004b5e:	4440      	add	r0, r8
 8004b60:	f010 001f 	ands.w	r0, r0, #31
 8004b64:	f000 8119 	beq.w	8004d9a <_dtoa_r+0x8d2>
 8004b68:	f1c0 0320 	rsb	r3, r0, #32
 8004b6c:	2b04      	cmp	r3, #4
 8004b6e:	f340 83ac 	ble.w	80052ca <_dtoa_r+0xe02>
 8004b72:	f1c0 001c 	rsb	r0, r0, #28
 8004b76:	9b08      	ldr	r3, [sp, #32]
 8004b78:	4403      	add	r3, r0
 8004b7a:	9308      	str	r3, [sp, #32]
 8004b7c:	4404      	add	r4, r0
 8004b7e:	4480      	add	r8, r0
 8004b80:	9b08      	ldr	r3, [sp, #32]
 8004b82:	2b00      	cmp	r3, #0
 8004b84:	dd05      	ble.n	8004b92 <_dtoa_r+0x6ca>
 8004b86:	4651      	mov	r1, sl
 8004b88:	461a      	mov	r2, r3
 8004b8a:	4648      	mov	r0, r9
 8004b8c:	f001 fd52 	bl	8006634 <__lshift>
 8004b90:	4682      	mov	sl, r0
 8004b92:	f1b8 0f00 	cmp.w	r8, #0
 8004b96:	dd05      	ble.n	8004ba4 <_dtoa_r+0x6dc>
 8004b98:	4631      	mov	r1, r6
 8004b9a:	4642      	mov	r2, r8
 8004b9c:	4648      	mov	r0, r9
 8004b9e:	f001 fd49 	bl	8006634 <__lshift>
 8004ba2:	4606      	mov	r6, r0
 8004ba4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004ba6:	2b00      	cmp	r3, #0
 8004ba8:	d177      	bne.n	8004c9a <_dtoa_r+0x7d2>
 8004baa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bac:	2b00      	cmp	r3, #0
 8004bae:	f340 8209 	ble.w	8004fc4 <_dtoa_r+0xafc>
 8004bb2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004bb4:	2b00      	cmp	r3, #0
 8004bb6:	f000 8089 	beq.w	8004ccc <_dtoa_r+0x804>
 8004bba:	2c00      	cmp	r4, #0
 8004bbc:	f300 816b 	bgt.w	8004e96 <_dtoa_r+0x9ce>
 8004bc0:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004bc2:	2b00      	cmp	r3, #0
 8004bc4:	f040 81cd 	bne.w	8004f62 <_dtoa_r+0xa9a>
 8004bc8:	46a8      	mov	r8, r5
 8004bca:	9a00      	ldr	r2, [sp, #0]
 8004bcc:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004bd0:	f002 0201 	and.w	r2, r2, #1
 8004bd4:	920a      	str	r2, [sp, #40]	; 0x28
 8004bd6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004bd8:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004bdc:	441a      	add	r2, r3
 8004bde:	465f      	mov	r7, fp
 8004be0:	9209      	str	r2, [sp, #36]	; 0x24
 8004be2:	46b3      	mov	fp, r6
 8004be4:	4659      	mov	r1, fp
 8004be6:	4650      	mov	r0, sl
 8004be8:	f7ff fbdc 	bl	80043a4 <quorem>
 8004bec:	4629      	mov	r1, r5
 8004bee:	4604      	mov	r4, r0
 8004bf0:	4650      	mov	r0, sl
 8004bf2:	f001 fd75 	bl	80066e0 <__mcmp>
 8004bf6:	4659      	mov	r1, fp
 8004bf8:	4606      	mov	r6, r0
 8004bfa:	4642      	mov	r2, r8
 8004bfc:	4648      	mov	r0, r9
 8004bfe:	f001 fd8b 	bl	8006718 <__mdiff>
 8004c02:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004c06:	9300      	str	r3, [sp, #0]
 8004c08:	68c3      	ldr	r3, [r0, #12]
 8004c0a:	4601      	mov	r1, r0
 8004c0c:	2b00      	cmp	r3, #0
 8004c0e:	f040 81d4 	bne.w	8004fba <_dtoa_r+0xaf2>
 8004c12:	9008      	str	r0, [sp, #32]
 8004c14:	4650      	mov	r0, sl
 8004c16:	f001 fd63 	bl	80066e0 <__mcmp>
 8004c1a:	9a08      	ldr	r2, [sp, #32]
 8004c1c:	9007      	str	r0, [sp, #28]
 8004c1e:	4611      	mov	r1, r2
 8004c20:	4648      	mov	r0, r9
 8004c22:	f001 fb6d 	bl	8006300 <_Bfree>
 8004c26:	9b07      	ldr	r3, [sp, #28]
 8004c28:	b933      	cbnz	r3, 8004c38 <_dtoa_r+0x770>
 8004c2a:	9a02      	ldr	r2, [sp, #8]
 8004c2c:	b922      	cbnz	r2, 8004c38 <_dtoa_r+0x770>
 8004c2e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004c30:	2b00      	cmp	r3, #0
 8004c32:	f000 8319 	beq.w	8005268 <_dtoa_r+0xda0>
 8004c36:	9b02      	ldr	r3, [sp, #8]
 8004c38:	2e00      	cmp	r6, #0
 8004c3a:	f2c0 821c 	blt.w	8005076 <_dtoa_r+0xbae>
 8004c3e:	d105      	bne.n	8004c4c <_dtoa_r+0x784>
 8004c40:	9a02      	ldr	r2, [sp, #8]
 8004c42:	b91a      	cbnz	r2, 8004c4c <_dtoa_r+0x784>
 8004c44:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004c46:	2a00      	cmp	r2, #0
 8004c48:	f000 8215 	beq.w	8005076 <_dtoa_r+0xbae>
 8004c4c:	2b00      	cmp	r3, #0
 8004c4e:	f107 0401 	add.w	r4, r7, #1
 8004c52:	f300 8225 	bgt.w	80050a0 <_dtoa_r+0xbd8>
 8004c56:	9b00      	ldr	r3, [sp, #0]
 8004c58:	703b      	strb	r3, [r7, #0]
 8004c5a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c5c:	42bb      	cmp	r3, r7
 8004c5e:	f000 8230 	beq.w	80050c2 <_dtoa_r+0xbfa>
 8004c62:	4651      	mov	r1, sl
 8004c64:	2300      	movs	r3, #0
 8004c66:	220a      	movs	r2, #10
 8004c68:	4648      	mov	r0, r9
 8004c6a:	f001 fb53 	bl	8006314 <__multadd>
 8004c6e:	4545      	cmp	r5, r8
 8004c70:	4682      	mov	sl, r0
 8004c72:	4629      	mov	r1, r5
 8004c74:	f04f 0300 	mov.w	r3, #0
 8004c78:	f04f 020a 	mov.w	r2, #10
 8004c7c:	4648      	mov	r0, r9
 8004c7e:	f000 8196 	beq.w	8004fae <_dtoa_r+0xae6>
 8004c82:	f001 fb47 	bl	8006314 <__multadd>
 8004c86:	4641      	mov	r1, r8
 8004c88:	4605      	mov	r5, r0
 8004c8a:	2300      	movs	r3, #0
 8004c8c:	220a      	movs	r2, #10
 8004c8e:	4648      	mov	r0, r9
 8004c90:	f001 fb40 	bl	8006314 <__multadd>
 8004c94:	4627      	mov	r7, r4
 8004c96:	4680      	mov	r8, r0
 8004c98:	e7a4      	b.n	8004be4 <_dtoa_r+0x71c>
 8004c9a:	4631      	mov	r1, r6
 8004c9c:	4650      	mov	r0, sl
 8004c9e:	f001 fd1f 	bl	80066e0 <__mcmp>
 8004ca2:	2800      	cmp	r0, #0
 8004ca4:	da81      	bge.n	8004baa <_dtoa_r+0x6e2>
 8004ca6:	9f06      	ldr	r7, [sp, #24]
 8004ca8:	4651      	mov	r1, sl
 8004caa:	2300      	movs	r3, #0
 8004cac:	220a      	movs	r2, #10
 8004cae:	4648      	mov	r0, r9
 8004cb0:	3f01      	subs	r7, #1
 8004cb2:	9706      	str	r7, [sp, #24]
 8004cb4:	f001 fb2e 	bl	8006314 <__multadd>
 8004cb8:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004cba:	4682      	mov	sl, r0
 8004cbc:	2b00      	cmp	r3, #0
 8004cbe:	f040 82eb 	bne.w	8005298 <_dtoa_r+0xdd0>
 8004cc2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004cc4:	2b00      	cmp	r3, #0
 8004cc6:	f340 82f3 	ble.w	80052b0 <_dtoa_r+0xde8>
 8004cca:	9309      	str	r3, [sp, #36]	; 0x24
 8004ccc:	465c      	mov	r4, fp
 8004cce:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004cd2:	e002      	b.n	8004cda <_dtoa_r+0x812>
 8004cd4:	f001 fb1e 	bl	8006314 <__multadd>
 8004cd8:	4682      	mov	sl, r0
 8004cda:	4631      	mov	r1, r6
 8004cdc:	4650      	mov	r0, sl
 8004cde:	f7ff fb61 	bl	80043a4 <quorem>
 8004ce2:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004ce6:	f804 7b01 	strb.w	r7, [r4], #1
 8004cea:	eba4 030b 	sub.w	r3, r4, fp
 8004cee:	4598      	cmp	r8, r3
 8004cf0:	f04f 020a 	mov.w	r2, #10
 8004cf4:	f04f 0300 	mov.w	r3, #0
 8004cf8:	4651      	mov	r1, sl
 8004cfa:	4648      	mov	r0, r9
 8004cfc:	dcea      	bgt.n	8004cd4 <_dtoa_r+0x80c>
 8004cfe:	2300      	movs	r3, #0
 8004d00:	9700      	str	r7, [sp, #0]
 8004d02:	9302      	str	r3, [sp, #8]
 8004d04:	4651      	mov	r1, sl
 8004d06:	2201      	movs	r2, #1
 8004d08:	4648      	mov	r0, r9
 8004d0a:	f001 fc93 	bl	8006634 <__lshift>
 8004d0e:	4631      	mov	r1, r6
 8004d10:	4682      	mov	sl, r0
 8004d12:	f001 fce5 	bl	80066e0 <__mcmp>
 8004d16:	2800      	cmp	r0, #0
 8004d18:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004d1c:	dc14      	bgt.n	8004d48 <_dtoa_r+0x880>
 8004d1e:	d108      	bne.n	8004d32 <_dtoa_r+0x86a>
 8004d20:	9b00      	ldr	r3, [sp, #0]
 8004d22:	07db      	lsls	r3, r3, #31
 8004d24:	d410      	bmi.n	8004d48 <_dtoa_r+0x880>
 8004d26:	e004      	b.n	8004d32 <_dtoa_r+0x86a>
 8004d28:	40240000 	.word	0x40240000
 8004d2c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004d30:	461c      	mov	r4, r3
 8004d32:	2a30      	cmp	r2, #48	; 0x30
 8004d34:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004d38:	d0f8      	beq.n	8004d2c <_dtoa_r+0x864>
 8004d3a:	e00b      	b.n	8004d54 <_dtoa_r+0x88c>
 8004d3c:	459b      	cmp	fp, r3
 8004d3e:	f000 814e 	beq.w	8004fde <_dtoa_r+0xb16>
 8004d42:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004d46:	461c      	mov	r4, r3
 8004d48:	2a39      	cmp	r2, #57	; 0x39
 8004d4a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004d4e:	d0f5      	beq.n	8004d3c <_dtoa_r+0x874>
 8004d50:	3201      	adds	r2, #1
 8004d52:	701a      	strb	r2, [r3, #0]
 8004d54:	4631      	mov	r1, r6
 8004d56:	4648      	mov	r0, r9
 8004d58:	f001 fad2 	bl	8006300 <_Bfree>
 8004d5c:	b155      	cbz	r5, 8004d74 <_dtoa_r+0x8ac>
 8004d5e:	9902      	ldr	r1, [sp, #8]
 8004d60:	b121      	cbz	r1, 8004d6c <_dtoa_r+0x8a4>
 8004d62:	42a9      	cmp	r1, r5
 8004d64:	d002      	beq.n	8004d6c <_dtoa_r+0x8a4>
 8004d66:	4648      	mov	r0, r9
 8004d68:	f001 faca 	bl	8006300 <_Bfree>
 8004d6c:	4629      	mov	r1, r5
 8004d6e:	4648      	mov	r0, r9
 8004d70:	f001 fac6 	bl	8006300 <_Bfree>
 8004d74:	4651      	mov	r1, sl
 8004d76:	4648      	mov	r0, r9
 8004d78:	f001 fac2 	bl	8006300 <_Bfree>
 8004d7c:	2200      	movs	r2, #0
 8004d7e:	9b06      	ldr	r3, [sp, #24]
 8004d80:	7022      	strb	r2, [r4, #0]
 8004d82:	9a05      	ldr	r2, [sp, #20]
 8004d84:	3301      	adds	r3, #1
 8004d86:	6013      	str	r3, [r2, #0]
 8004d88:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004d8a:	2b00      	cmp	r3, #0
 8004d8c:	f43f abdb 	beq.w	8004546 <_dtoa_r+0x7e>
 8004d90:	4658      	mov	r0, fp
 8004d92:	601c      	str	r4, [r3, #0]
 8004d94:	b01b      	add	sp, #108	; 0x6c
 8004d96:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004d9a:	201c      	movs	r0, #28
 8004d9c:	e6eb      	b.n	8004b76 <_dtoa_r+0x6ae>
 8004d9e:	4601      	mov	r1, r0
 8004da0:	4648      	mov	r0, r9
 8004da2:	f001 fbf7 	bl	8006594 <__pow5mult>
 8004da6:	9b02      	ldr	r3, [sp, #8]
 8004da8:	2b01      	cmp	r3, #1
 8004daa:	4606      	mov	r6, r0
 8004dac:	f340 80d4 	ble.w	8004f58 <_dtoa_r+0xa90>
 8004db0:	2300      	movs	r3, #0
 8004db2:	930c      	str	r3, [sp, #48]	; 0x30
 8004db4:	6933      	ldr	r3, [r6, #16]
 8004db6:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004dba:	6918      	ldr	r0, [r3, #16]
 8004dbc:	f001 faea 	bl	8006394 <__hi0bits>
 8004dc0:	f1c0 0020 	rsb	r0, r0, #32
 8004dc4:	e6cb      	b.n	8004b5e <_dtoa_r+0x696>
 8004dc6:	900d      	str	r0, [sp, #52]	; 0x34
 8004dc8:	e42a      	b.n	8004620 <_dtoa_r+0x158>
 8004dca:	2501      	movs	r5, #1
 8004dcc:	e440      	b.n	8004650 <_dtoa_r+0x188>
 8004dce:	f1c3 0820 	rsb	r8, r3, #32
 8004dd2:	9b00      	ldr	r3, [sp, #0]
 8004dd4:	fa03 f008 	lsl.w	r0, r3, r8
 8004dd8:	f7ff bbd8 	b.w	800458c <_dtoa_r+0xc4>
 8004ddc:	2300      	movs	r3, #0
 8004dde:	930a      	str	r3, [sp, #40]	; 0x28
 8004de0:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004de4:	4413      	add	r3, r2
 8004de6:	930e      	str	r3, [sp, #56]	; 0x38
 8004de8:	3301      	adds	r3, #1
 8004dea:	2b01      	cmp	r3, #1
 8004dec:	461e      	mov	r6, r3
 8004dee:	9309      	str	r3, [sp, #36]	; 0x24
 8004df0:	bfb8      	it	lt
 8004df2:	2601      	movlt	r6, #1
 8004df4:	2100      	movs	r1, #0
 8004df6:	2e17      	cmp	r6, #23
 8004df8:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004dfc:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004dfe:	f77f ac89 	ble.w	8004714 <_dtoa_r+0x24c>
 8004e02:	2201      	movs	r2, #1
 8004e04:	2304      	movs	r3, #4
 8004e06:	005b      	lsls	r3, r3, #1
 8004e08:	f103 0014 	add.w	r0, r3, #20
 8004e0c:	42b0      	cmp	r0, r6
 8004e0e:	4611      	mov	r1, r2
 8004e10:	f102 0201 	add.w	r2, r2, #1
 8004e14:	d9f7      	bls.n	8004e06 <_dtoa_r+0x93e>
 8004e16:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004e1a:	e47b      	b.n	8004714 <_dtoa_r+0x24c>
 8004e1c:	2300      	movs	r3, #0
 8004e1e:	930a      	str	r3, [sp, #40]	; 0x28
 8004e20:	9e07      	ldr	r6, [sp, #28]
 8004e22:	2e00      	cmp	r6, #0
 8004e24:	f340 80e2 	ble.w	8004fec <_dtoa_r+0xb24>
 8004e28:	960e      	str	r6, [sp, #56]	; 0x38
 8004e2a:	9609      	str	r6, [sp, #36]	; 0x24
 8004e2c:	e7e2      	b.n	8004df4 <_dtoa_r+0x92c>
 8004e2e:	2301      	movs	r3, #1
 8004e30:	930a      	str	r3, [sp, #40]	; 0x28
 8004e32:	e7f5      	b.n	8004e20 <_dtoa_r+0x958>
 8004e34:	9b00      	ldr	r3, [sp, #0]
 8004e36:	2b00      	cmp	r3, #0
 8004e38:	f47f ae90 	bne.w	8004b5c <_dtoa_r+0x694>
 8004e3c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004e40:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004e44:	2b00      	cmp	r3, #0
 8004e46:	f040 8192 	bne.w	800516e <_dtoa_r+0xca6>
 8004e4a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004e4e:	0d1b      	lsrs	r3, r3, #20
 8004e50:	051b      	lsls	r3, r3, #20
 8004e52:	b12b      	cbz	r3, 8004e60 <_dtoa_r+0x998>
 8004e54:	9b08      	ldr	r3, [sp, #32]
 8004e56:	3301      	adds	r3, #1
 8004e58:	9308      	str	r3, [sp, #32]
 8004e5a:	f108 0801 	add.w	r8, r8, #1
 8004e5e:	2301      	movs	r3, #1
 8004e60:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004e62:	930c      	str	r3, [sp, #48]	; 0x30
 8004e64:	2a00      	cmp	r2, #0
 8004e66:	f43f ae79 	beq.w	8004b5c <_dtoa_r+0x694>
 8004e6a:	e7a3      	b.n	8004db4 <_dtoa_r+0x8ec>
 8004e6c:	463a      	mov	r2, r7
 8004e6e:	4629      	mov	r1, r5
 8004e70:	4648      	mov	r0, r9
 8004e72:	f001 fb8f 	bl	8006594 <__pow5mult>
 8004e76:	4652      	mov	r2, sl
 8004e78:	4601      	mov	r1, r0
 8004e7a:	4605      	mov	r5, r0
 8004e7c:	4648      	mov	r0, r9
 8004e7e:	f001 fae3 	bl	8006448 <__multiply>
 8004e82:	4651      	mov	r1, sl
 8004e84:	4607      	mov	r7, r0
 8004e86:	4648      	mov	r0, r9
 8004e88:	f001 fa3a 	bl	8006300 <_Bfree>
 8004e8c:	46ba      	mov	sl, r7
 8004e8e:	2e00      	cmp	r6, #0
 8004e90:	f43f ae57 	beq.w	8004b42 <_dtoa_r+0x67a>
 8004e94:	e64f      	b.n	8004b36 <_dtoa_r+0x66e>
 8004e96:	4629      	mov	r1, r5
 8004e98:	4622      	mov	r2, r4
 8004e9a:	4648      	mov	r0, r9
 8004e9c:	f001 fbca 	bl	8006634 <__lshift>
 8004ea0:	4605      	mov	r5, r0
 8004ea2:	e68d      	b.n	8004bc0 <_dtoa_r+0x6f8>
 8004ea4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004ea6:	2a00      	cmp	r2, #0
 8004ea8:	f000 815d 	beq.w	8005166 <_dtoa_r+0xc9e>
 8004eac:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004eb0:	9a08      	ldr	r2, [sp, #32]
 8004eb2:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004eb4:	4614      	mov	r4, r2
 8004eb6:	441a      	add	r2, r3
 8004eb8:	4498      	add	r8, r3
 8004eba:	9208      	str	r2, [sp, #32]
 8004ebc:	e5f7      	b.n	8004aae <_dtoa_r+0x5e6>
 8004ebe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ec0:	2b00      	cmp	r3, #0
 8004ec2:	f73f ad3e 	bgt.w	8004942 <_dtoa_r+0x47a>
 8004ec6:	f040 80bc 	bne.w	8005042 <_dtoa_r+0xb7a>
 8004eca:	ec51 0b17 	vmov	r0, r1, d7
 8004ece:	2200      	movs	r2, #0
 8004ed0:	4bb2      	ldr	r3, [pc, #712]	; (800519c <_dtoa_r+0xcd4>)
 8004ed2:	f7fb fe31 	bl	8000b38 <__aeabi_dmul>
 8004ed6:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004eda:	f7fc f8b3 	bl	8001044 <__aeabi_dcmpge>
 8004ede:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004ee0:	4635      	mov	r5, r6
 8004ee2:	2800      	cmp	r0, #0
 8004ee4:	d176      	bne.n	8004fd4 <_dtoa_r+0xb0c>
 8004ee6:	9a06      	ldr	r2, [sp, #24]
 8004ee8:	2331      	movs	r3, #49	; 0x31
 8004eea:	3201      	adds	r2, #1
 8004eec:	9206      	str	r2, [sp, #24]
 8004eee:	f88b 3000 	strb.w	r3, [fp]
 8004ef2:	f10b 0401 	add.w	r4, fp, #1
 8004ef6:	4631      	mov	r1, r6
 8004ef8:	4648      	mov	r0, r9
 8004efa:	f001 fa01 	bl	8006300 <_Bfree>
 8004efe:	2d00      	cmp	r5, #0
 8004f00:	f47f af34 	bne.w	8004d6c <_dtoa_r+0x8a4>
 8004f04:	e736      	b.n	8004d74 <_dtoa_r+0x8ac>
 8004f06:	f000 8142 	beq.w	800518e <_dtoa_r+0xcc6>
 8004f0a:	9b06      	ldr	r3, [sp, #24]
 8004f0c:	425c      	negs	r4, r3
 8004f0e:	4ba4      	ldr	r3, [pc, #656]	; (80051a0 <_dtoa_r+0xcd8>)
 8004f10:	f004 020f 	and.w	r2, r4, #15
 8004f14:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004f18:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004f1c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004f20:	f7fb fe0a 	bl	8000b38 <__aeabi_dmul>
 8004f24:	1124      	asrs	r4, r4, #4
 8004f26:	e9cd 0100 	strd	r0, r1, [sp]
 8004f2a:	f000 81c6 	beq.w	80052ba <_dtoa_r+0xdf2>
 8004f2e:	4d9d      	ldr	r5, [pc, #628]	; (80051a4 <_dtoa_r+0xcdc>)
 8004f30:	2300      	movs	r3, #0
 8004f32:	2602      	movs	r6, #2
 8004f34:	07e7      	lsls	r7, r4, #31
 8004f36:	d505      	bpl.n	8004f44 <_dtoa_r+0xa7c>
 8004f38:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004f3c:	f7fb fdfc 	bl	8000b38 <__aeabi_dmul>
 8004f40:	3601      	adds	r6, #1
 8004f42:	2301      	movs	r3, #1
 8004f44:	1064      	asrs	r4, r4, #1
 8004f46:	f105 0508 	add.w	r5, r5, #8
 8004f4a:	d1f3      	bne.n	8004f34 <_dtoa_r+0xa6c>
 8004f4c:	2b00      	cmp	r3, #0
 8004f4e:	f43f ac27 	beq.w	80047a0 <_dtoa_r+0x2d8>
 8004f52:	e9cd 0100 	strd	r0, r1, [sp]
 8004f56:	e423      	b.n	80047a0 <_dtoa_r+0x2d8>
 8004f58:	9b00      	ldr	r3, [sp, #0]
 8004f5a:	2b00      	cmp	r3, #0
 8004f5c:	f43f af6e 	beq.w	8004e3c <_dtoa_r+0x974>
 8004f60:	e726      	b.n	8004db0 <_dtoa_r+0x8e8>
 8004f62:	6869      	ldr	r1, [r5, #4]
 8004f64:	4648      	mov	r0, r9
 8004f66:	f001 f9a5 	bl	80062b4 <_Balloc>
 8004f6a:	692b      	ldr	r3, [r5, #16]
 8004f6c:	3302      	adds	r3, #2
 8004f6e:	009a      	lsls	r2, r3, #2
 8004f70:	4604      	mov	r4, r0
 8004f72:	f105 010c 	add.w	r1, r5, #12
 8004f76:	300c      	adds	r0, #12
 8004f78:	f7fb fac2 	bl	8000500 <memcpy>
 8004f7c:	4621      	mov	r1, r4
 8004f7e:	2201      	movs	r2, #1
 8004f80:	4648      	mov	r0, r9
 8004f82:	f001 fb57 	bl	8006634 <__lshift>
 8004f86:	4680      	mov	r8, r0
 8004f88:	e61f      	b.n	8004bca <_dtoa_r+0x702>
 8004f8a:	2400      	movs	r4, #0
 8004f8c:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004f90:	4621      	mov	r1, r4
 8004f92:	4648      	mov	r0, r9
 8004f94:	f001 f98e 	bl	80062b4 <_Balloc>
 8004f98:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004f9c:	930e      	str	r3, [sp, #56]	; 0x38
 8004f9e:	9309      	str	r3, [sp, #36]	; 0x24
 8004fa0:	2301      	movs	r3, #1
 8004fa2:	4683      	mov	fp, r0
 8004fa4:	9407      	str	r4, [sp, #28]
 8004fa6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004faa:	930a      	str	r3, [sp, #40]	; 0x28
 8004fac:	e4b6      	b.n	800491c <_dtoa_r+0x454>
 8004fae:	f001 f9b1 	bl	8006314 <__multadd>
 8004fb2:	4627      	mov	r7, r4
 8004fb4:	4605      	mov	r5, r0
 8004fb6:	4680      	mov	r8, r0
 8004fb8:	e614      	b.n	8004be4 <_dtoa_r+0x71c>
 8004fba:	4648      	mov	r0, r9
 8004fbc:	f001 f9a0 	bl	8006300 <_Bfree>
 8004fc0:	2301      	movs	r3, #1
 8004fc2:	e639      	b.n	8004c38 <_dtoa_r+0x770>
 8004fc4:	9b02      	ldr	r3, [sp, #8]
 8004fc6:	2b02      	cmp	r3, #2
 8004fc8:	f77f adf3 	ble.w	8004bb2 <_dtoa_r+0x6ea>
 8004fcc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004fce:	2b00      	cmp	r3, #0
 8004fd0:	f000 80cf 	beq.w	8005172 <_dtoa_r+0xcaa>
 8004fd4:	9b07      	ldr	r3, [sp, #28]
 8004fd6:	43db      	mvns	r3, r3
 8004fd8:	9306      	str	r3, [sp, #24]
 8004fda:	465c      	mov	r4, fp
 8004fdc:	e78b      	b.n	8004ef6 <_dtoa_r+0xa2e>
 8004fde:	9a06      	ldr	r2, [sp, #24]
 8004fe0:	2331      	movs	r3, #49	; 0x31
 8004fe2:	3201      	adds	r2, #1
 8004fe4:	9206      	str	r2, [sp, #24]
 8004fe6:	f88b 3000 	strb.w	r3, [fp]
 8004fea:	e6b3      	b.n	8004d54 <_dtoa_r+0x88c>
 8004fec:	2401      	movs	r4, #1
 8004fee:	9409      	str	r4, [sp, #36]	; 0x24
 8004ff0:	9407      	str	r4, [sp, #28]
 8004ff2:	f7ff bb8b 	b.w	800470c <_dtoa_r+0x244>
 8004ff6:	4630      	mov	r0, r6
 8004ff8:	f7fb fd34 	bl	8000a64 <__aeabi_i2d>
 8004ffc:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005000:	f7fb fd9a 	bl	8000b38 <__aeabi_dmul>
 8005004:	2200      	movs	r2, #0
 8005006:	4b68      	ldr	r3, [pc, #416]	; (80051a8 <_dtoa_r+0xce0>)
 8005008:	f7fb fbe0 	bl	80007cc <__adddf3>
 800500c:	4606      	mov	r6, r0
 800500e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005012:	2200      	movs	r2, #0
 8005014:	4b61      	ldr	r3, [pc, #388]	; (800519c <_dtoa_r+0xcd4>)
 8005016:	e9dd 0100 	ldrd	r0, r1, [sp]
 800501a:	f7fb fbd5 	bl	80007c8 <__aeabi_dsub>
 800501e:	4632      	mov	r2, r6
 8005020:	463b      	mov	r3, r7
 8005022:	4604      	mov	r4, r0
 8005024:	460d      	mov	r5, r1
 8005026:	f7fc f817 	bl	8001058 <__aeabi_dcmpgt>
 800502a:	2800      	cmp	r0, #0
 800502c:	d14f      	bne.n	80050ce <_dtoa_r+0xc06>
 800502e:	4632      	mov	r2, r6
 8005030:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8005034:	4620      	mov	r0, r4
 8005036:	4629      	mov	r1, r5
 8005038:	f7fb fff0 	bl	800101c <__aeabi_dcmplt>
 800503c:	2800      	cmp	r0, #0
 800503e:	f43f ac69 	beq.w	8004914 <_dtoa_r+0x44c>
 8005042:	2600      	movs	r6, #0
 8005044:	4635      	mov	r5, r6
 8005046:	e7c5      	b.n	8004fd4 <_dtoa_r+0xb0c>
 8005048:	2301      	movs	r3, #1
 800504a:	930a      	str	r3, [sp, #40]	; 0x28
 800504c:	e6c8      	b.n	8004de0 <_dtoa_r+0x918>
 800504e:	4651      	mov	r1, sl
 8005050:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8005052:	4648      	mov	r0, r9
 8005054:	f001 fa9e 	bl	8006594 <__pow5mult>
 8005058:	4682      	mov	sl, r0
 800505a:	e572      	b.n	8004b42 <_dtoa_r+0x67a>
 800505c:	f8dd a000 	ldr.w	sl, [sp]
 8005060:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005064:	e686      	b.n	8004d74 <_dtoa_r+0x8ac>
 8005066:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005068:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 800506a:	1afb      	subs	r3, r7, r3
 800506c:	441a      	add	r2, r3
 800506e:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8005072:	2700      	movs	r7, #0
 8005074:	e512      	b.n	8004a9c <_dtoa_r+0x5d4>
 8005076:	2b00      	cmp	r3, #0
 8005078:	9402      	str	r4, [sp, #8]
 800507a:	465e      	mov	r6, fp
 800507c:	f107 0401 	add.w	r4, r7, #1
 8005080:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005084:	f300 80ba 	bgt.w	80051fc <_dtoa_r+0xd34>
 8005088:	9b00      	ldr	r3, [sp, #0]
 800508a:	9502      	str	r5, [sp, #8]
 800508c:	703b      	strb	r3, [r7, #0]
 800508e:	4645      	mov	r5, r8
 8005090:	e660      	b.n	8004d54 <_dtoa_r+0x88c>
 8005092:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005096:	2602      	movs	r6, #2
 8005098:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800509c:	f7ff bb67 	b.w	800476e <_dtoa_r+0x2a6>
 80050a0:	9b00      	ldr	r3, [sp, #0]
 80050a2:	2b39      	cmp	r3, #57	; 0x39
 80050a4:	465e      	mov	r6, fp
 80050a6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80050aa:	f000 80b9 	beq.w	8005220 <_dtoa_r+0xd58>
 80050ae:	9b00      	ldr	r3, [sp, #0]
 80050b0:	9502      	str	r5, [sp, #8]
 80050b2:	3301      	adds	r3, #1
 80050b4:	703b      	strb	r3, [r7, #0]
 80050b6:	4645      	mov	r5, r8
 80050b8:	e64c      	b.n	8004d54 <_dtoa_r+0x88c>
 80050ba:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 80050be:	1a9c      	subs	r4, r3, r2
 80050c0:	e4f5      	b.n	8004aae <_dtoa_r+0x5e6>
 80050c2:	465e      	mov	r6, fp
 80050c4:	9502      	str	r5, [sp, #8]
 80050c6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80050ca:	4645      	mov	r5, r8
 80050cc:	e61a      	b.n	8004d04 <_dtoa_r+0x83c>
 80050ce:	2600      	movs	r6, #0
 80050d0:	4635      	mov	r5, r6
 80050d2:	e708      	b.n	8004ee6 <_dtoa_r+0xa1e>
 80050d4:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80050d8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80050dc:	f7fb fd2c 	bl	8000b38 <__aeabi_dmul>
 80050e0:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80050e2:	f88b 5000 	strb.w	r5, [fp]
 80050e6:	2b01      	cmp	r3, #1
 80050e8:	e9cd 0100 	strd	r0, r1, [sp]
 80050ec:	d020      	beq.n	8005130 <_dtoa_r+0xc68>
 80050ee:	9b12      	ldr	r3, [sp, #72]	; 0x48
 80050f0:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 80050f4:	445b      	add	r3, fp
 80050f6:	4698      	mov	r8, r3
 80050f8:	2200      	movs	r2, #0
 80050fa:	4b2c      	ldr	r3, [pc, #176]	; (80051ac <_dtoa_r+0xce4>)
 80050fc:	4630      	mov	r0, r6
 80050fe:	4639      	mov	r1, r7
 8005100:	f7fb fd1a 	bl	8000b38 <__aeabi_dmul>
 8005104:	460f      	mov	r7, r1
 8005106:	4606      	mov	r6, r0
 8005108:	f7fb ffc6 	bl	8001098 <__aeabi_d2iz>
 800510c:	4605      	mov	r5, r0
 800510e:	f7fb fca9 	bl	8000a64 <__aeabi_i2d>
 8005112:	3530      	adds	r5, #48	; 0x30
 8005114:	4602      	mov	r2, r0
 8005116:	460b      	mov	r3, r1
 8005118:	4630      	mov	r0, r6
 800511a:	4639      	mov	r1, r7
 800511c:	f7fb fb54 	bl	80007c8 <__aeabi_dsub>
 8005120:	f804 5b01 	strb.w	r5, [r4], #1
 8005124:	4544      	cmp	r4, r8
 8005126:	4606      	mov	r6, r0
 8005128:	460f      	mov	r7, r1
 800512a:	d1e5      	bne.n	80050f8 <_dtoa_r+0xc30>
 800512c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005130:	4b1f      	ldr	r3, [pc, #124]	; (80051b0 <_dtoa_r+0xce8>)
 8005132:	2200      	movs	r2, #0
 8005134:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005138:	f7fb fb48 	bl	80007cc <__adddf3>
 800513c:	4632      	mov	r2, r6
 800513e:	463b      	mov	r3, r7
 8005140:	f7fb ff6c 	bl	800101c <__aeabi_dcmplt>
 8005144:	2800      	cmp	r0, #0
 8005146:	d070      	beq.n	800522a <_dtoa_r+0xd62>
 8005148:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800514a:	9306      	str	r3, [sp, #24]
 800514c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005150:	e48f      	b.n	8004a72 <_dtoa_r+0x5aa>
 8005152:	2330      	movs	r3, #48	; 0x30
 8005154:	f88b 3000 	strb.w	r3, [fp]
 8005158:	9b06      	ldr	r3, [sp, #24]
 800515a:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800515e:	3301      	adds	r3, #1
 8005160:	9306      	str	r3, [sp, #24]
 8005162:	465b      	mov	r3, fp
 8005164:	e489      	b.n	8004a7a <_dtoa_r+0x5b2>
 8005166:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005168:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 800516c:	e6a0      	b.n	8004eb0 <_dtoa_r+0x9e8>
 800516e:	2300      	movs	r3, #0
 8005170:	e676      	b.n	8004e60 <_dtoa_r+0x998>
 8005172:	4631      	mov	r1, r6
 8005174:	2205      	movs	r2, #5
 8005176:	4648      	mov	r0, r9
 8005178:	f001 f8cc 	bl	8006314 <__multadd>
 800517c:	4601      	mov	r1, r0
 800517e:	4606      	mov	r6, r0
 8005180:	4650      	mov	r0, sl
 8005182:	f001 faad 	bl	80066e0 <__mcmp>
 8005186:	2800      	cmp	r0, #0
 8005188:	f73f aead 	bgt.w	8004ee6 <_dtoa_r+0xa1e>
 800518c:	e722      	b.n	8004fd4 <_dtoa_r+0xb0c>
 800518e:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005192:	2602      	movs	r6, #2
 8005194:	ed8d 7b00 	vstr	d7, [sp]
 8005198:	f7ff bb02 	b.w	80047a0 <_dtoa_r+0x2d8>
 800519c:	40140000 	.word	0x40140000
 80051a0:	08007670 	.word	0x08007670
 80051a4:	08007648 	.word	0x08007648
 80051a8:	401c0000 	.word	0x401c0000
 80051ac:	40240000 	.word	0x40240000
 80051b0:	3fe00000 	.word	0x3fe00000
 80051b4:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80051b6:	2b00      	cmp	r3, #0
 80051b8:	f43f af1d 	beq.w	8004ff6 <_dtoa_r+0xb2e>
 80051bc:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 80051be:	2c00      	cmp	r4, #0
 80051c0:	f77f aba8 	ble.w	8004914 <_dtoa_r+0x44c>
 80051c4:	2200      	movs	r2, #0
 80051c6:	4b45      	ldr	r3, [pc, #276]	; (80052dc <_dtoa_r+0xe14>)
 80051c8:	e9dd 0100 	ldrd	r0, r1, [sp]
 80051cc:	f7fb fcb4 	bl	8000b38 <__aeabi_dmul>
 80051d0:	e9cd 0100 	strd	r0, r1, [sp]
 80051d4:	1c70      	adds	r0, r6, #1
 80051d6:	f7fb fc45 	bl	8000a64 <__aeabi_i2d>
 80051da:	e9dd 2300 	ldrd	r2, r3, [sp]
 80051de:	f7fb fcab 	bl	8000b38 <__aeabi_dmul>
 80051e2:	4b3f      	ldr	r3, [pc, #252]	; (80052e0 <_dtoa_r+0xe18>)
 80051e4:	2200      	movs	r2, #0
 80051e6:	f7fb faf1 	bl	80007cc <__adddf3>
 80051ea:	9b06      	ldr	r3, [sp, #24]
 80051ec:	9412      	str	r4, [sp, #72]	; 0x48
 80051ee:	3b01      	subs	r3, #1
 80051f0:	4606      	mov	r6, r0
 80051f2:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 80051f6:	9316      	str	r3, [sp, #88]	; 0x58
 80051f8:	f7ff baf3 	b.w	80047e2 <_dtoa_r+0x31a>
 80051fc:	4651      	mov	r1, sl
 80051fe:	2201      	movs	r2, #1
 8005200:	4648      	mov	r0, r9
 8005202:	f001 fa17 	bl	8006634 <__lshift>
 8005206:	4631      	mov	r1, r6
 8005208:	4682      	mov	sl, r0
 800520a:	f001 fa69 	bl	80066e0 <__mcmp>
 800520e:	2800      	cmp	r0, #0
 8005210:	dd3b      	ble.n	800528a <_dtoa_r+0xdc2>
 8005212:	9b00      	ldr	r3, [sp, #0]
 8005214:	2b39      	cmp	r3, #57	; 0x39
 8005216:	d003      	beq.n	8005220 <_dtoa_r+0xd58>
 8005218:	9b02      	ldr	r3, [sp, #8]
 800521a:	3331      	adds	r3, #49	; 0x31
 800521c:	9300      	str	r3, [sp, #0]
 800521e:	e733      	b.n	8005088 <_dtoa_r+0xbc0>
 8005220:	2239      	movs	r2, #57	; 0x39
 8005222:	9502      	str	r5, [sp, #8]
 8005224:	703a      	strb	r2, [r7, #0]
 8005226:	4645      	mov	r5, r8
 8005228:	e58e      	b.n	8004d48 <_dtoa_r+0x880>
 800522a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800522e:	2000      	movs	r0, #0
 8005230:	492c      	ldr	r1, [pc, #176]	; (80052e4 <_dtoa_r+0xe1c>)
 8005232:	f7fb fac9 	bl	80007c8 <__aeabi_dsub>
 8005236:	4632      	mov	r2, r6
 8005238:	463b      	mov	r3, r7
 800523a:	f7fb ff0d 	bl	8001058 <__aeabi_dcmpgt>
 800523e:	b910      	cbnz	r0, 8005246 <_dtoa_r+0xd7e>
 8005240:	f7ff bb68 	b.w	8004914 <_dtoa_r+0x44c>
 8005244:	4614      	mov	r4, r2
 8005246:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800524a:	2b30      	cmp	r3, #48	; 0x30
 800524c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8005250:	d0f8      	beq.n	8005244 <_dtoa_r+0xd7c>
 8005252:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005254:	9306      	str	r3, [sp, #24]
 8005256:	e58d      	b.n	8004d74 <_dtoa_r+0x8ac>
 8005258:	46d9      	mov	r9, fp
 800525a:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800525e:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8005262:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8005264:	9306      	str	r3, [sp, #24]
 8005266:	e404      	b.n	8004a72 <_dtoa_r+0x5aa>
 8005268:	9b00      	ldr	r3, [sp, #0]
 800526a:	2b39      	cmp	r3, #57	; 0x39
 800526c:	4621      	mov	r1, r4
 800526e:	4632      	mov	r2, r6
 8005270:	f107 0401 	add.w	r4, r7, #1
 8005274:	465e      	mov	r6, fp
 8005276:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800527a:	d0d1      	beq.n	8005220 <_dtoa_r+0xd58>
 800527c:	2a00      	cmp	r2, #0
 800527e:	f77f af03 	ble.w	8005088 <_dtoa_r+0xbc0>
 8005282:	460b      	mov	r3, r1
 8005284:	3331      	adds	r3, #49	; 0x31
 8005286:	9300      	str	r3, [sp, #0]
 8005288:	e6fe      	b.n	8005088 <_dtoa_r+0xbc0>
 800528a:	f47f aefd 	bne.w	8005088 <_dtoa_r+0xbc0>
 800528e:	9b00      	ldr	r3, [sp, #0]
 8005290:	07da      	lsls	r2, r3, #31
 8005292:	f57f aef9 	bpl.w	8005088 <_dtoa_r+0xbc0>
 8005296:	e7bc      	b.n	8005212 <_dtoa_r+0xd4a>
 8005298:	4629      	mov	r1, r5
 800529a:	2300      	movs	r3, #0
 800529c:	220a      	movs	r2, #10
 800529e:	4648      	mov	r0, r9
 80052a0:	f001 f838 	bl	8006314 <__multadd>
 80052a4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80052a6:	2b00      	cmp	r3, #0
 80052a8:	4605      	mov	r5, r0
 80052aa:	dd09      	ble.n	80052c0 <_dtoa_r+0xdf8>
 80052ac:	9309      	str	r3, [sp, #36]	; 0x24
 80052ae:	e484      	b.n	8004bba <_dtoa_r+0x6f2>
 80052b0:	9b02      	ldr	r3, [sp, #8]
 80052b2:	2b02      	cmp	r3, #2
 80052b4:	dc0e      	bgt.n	80052d4 <_dtoa_r+0xe0c>
 80052b6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80052b8:	e507      	b.n	8004cca <_dtoa_r+0x802>
 80052ba:	2602      	movs	r6, #2
 80052bc:	f7ff ba70 	b.w	80047a0 <_dtoa_r+0x2d8>
 80052c0:	9b02      	ldr	r3, [sp, #8]
 80052c2:	2b02      	cmp	r3, #2
 80052c4:	dc06      	bgt.n	80052d4 <_dtoa_r+0xe0c>
 80052c6:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80052c8:	e7f0      	b.n	80052ac <_dtoa_r+0xde4>
 80052ca:	f43f ac59 	beq.w	8004b80 <_dtoa_r+0x6b8>
 80052ce:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 80052d2:	e450      	b.n	8004b76 <_dtoa_r+0x6ae>
 80052d4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80052d6:	9309      	str	r3, [sp, #36]	; 0x24
 80052d8:	e678      	b.n	8004fcc <_dtoa_r+0xb04>
 80052da:	bf00      	nop
 80052dc:	40240000 	.word	0x40240000
 80052e0:	401c0000 	.word	0x401c0000
 80052e4:	3fe00000 	.word	0x3fe00000

080052e8 <__sflush_r>:
 80052e8:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80052ec:	b29a      	uxth	r2, r3
 80052ee:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80052f2:	460c      	mov	r4, r1
 80052f4:	0711      	lsls	r1, r2, #28
 80052f6:	4680      	mov	r8, r0
 80052f8:	d444      	bmi.n	8005384 <__sflush_r+0x9c>
 80052fa:	6862      	ldr	r2, [r4, #4]
 80052fc:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005300:	2a00      	cmp	r2, #0
 8005302:	81a3      	strh	r3, [r4, #12]
 8005304:	dd59      	ble.n	80053ba <__sflush_r+0xd2>
 8005306:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005308:	2d00      	cmp	r5, #0
 800530a:	d053      	beq.n	80053b4 <__sflush_r+0xcc>
 800530c:	2200      	movs	r2, #0
 800530e:	b29b      	uxth	r3, r3
 8005310:	f8d8 6000 	ldr.w	r6, [r8]
 8005314:	69e1      	ldr	r1, [r4, #28]
 8005316:	f8c8 2000 	str.w	r2, [r8]
 800531a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800531e:	f040 8083 	bne.w	8005428 <__sflush_r+0x140>
 8005322:	2301      	movs	r3, #1
 8005324:	4640      	mov	r0, r8
 8005326:	47a8      	blx	r5
 8005328:	1c42      	adds	r2, r0, #1
 800532a:	d04a      	beq.n	80053c2 <__sflush_r+0xda>
 800532c:	89a3      	ldrh	r3, [r4, #12]
 800532e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005330:	69e1      	ldr	r1, [r4, #28]
 8005332:	075b      	lsls	r3, r3, #29
 8005334:	d505      	bpl.n	8005342 <__sflush_r+0x5a>
 8005336:	6862      	ldr	r2, [r4, #4]
 8005338:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800533a:	1a80      	subs	r0, r0, r2
 800533c:	b10b      	cbz	r3, 8005342 <__sflush_r+0x5a>
 800533e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8005340:	1ac0      	subs	r0, r0, r3
 8005342:	4602      	mov	r2, r0
 8005344:	2300      	movs	r3, #0
 8005346:	4640      	mov	r0, r8
 8005348:	47a8      	blx	r5
 800534a:	1c47      	adds	r7, r0, #1
 800534c:	d045      	beq.n	80053da <__sflush_r+0xf2>
 800534e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005352:	6922      	ldr	r2, [r4, #16]
 8005354:	6022      	str	r2, [r4, #0]
 8005356:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 800535a:	2200      	movs	r2, #0
 800535c:	81a3      	strh	r3, [r4, #12]
 800535e:	04db      	lsls	r3, r3, #19
 8005360:	6062      	str	r2, [r4, #4]
 8005362:	d500      	bpl.n	8005366 <__sflush_r+0x7e>
 8005364:	6520      	str	r0, [r4, #80]	; 0x50
 8005366:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005368:	f8c8 6000 	str.w	r6, [r8]
 800536c:	b311      	cbz	r1, 80053b4 <__sflush_r+0xcc>
 800536e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8005372:	4299      	cmp	r1, r3
 8005374:	d002      	beq.n	800537c <__sflush_r+0x94>
 8005376:	4640      	mov	r0, r8
 8005378:	f000 f95e 	bl	8005638 <_free_r>
 800537c:	2000      	movs	r0, #0
 800537e:	6320      	str	r0, [r4, #48]	; 0x30
 8005380:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005384:	6926      	ldr	r6, [r4, #16]
 8005386:	b1ae      	cbz	r6, 80053b4 <__sflush_r+0xcc>
 8005388:	6825      	ldr	r5, [r4, #0]
 800538a:	6026      	str	r6, [r4, #0]
 800538c:	0792      	lsls	r2, r2, #30
 800538e:	bf0c      	ite	eq
 8005390:	6963      	ldreq	r3, [r4, #20]
 8005392:	2300      	movne	r3, #0
 8005394:	1bad      	subs	r5, r5, r6
 8005396:	60a3      	str	r3, [r4, #8]
 8005398:	e00a      	b.n	80053b0 <__sflush_r+0xc8>
 800539a:	462b      	mov	r3, r5
 800539c:	4632      	mov	r2, r6
 800539e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80053a0:	69e1      	ldr	r1, [r4, #28]
 80053a2:	4640      	mov	r0, r8
 80053a4:	47b8      	blx	r7
 80053a6:	2800      	cmp	r0, #0
 80053a8:	eba5 0500 	sub.w	r5, r5, r0
 80053ac:	4406      	add	r6, r0
 80053ae:	dd2b      	ble.n	8005408 <__sflush_r+0x120>
 80053b0:	2d00      	cmp	r5, #0
 80053b2:	dcf2      	bgt.n	800539a <__sflush_r+0xb2>
 80053b4:	2000      	movs	r0, #0
 80053b6:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80053ba:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 80053bc:	2a00      	cmp	r2, #0
 80053be:	dca2      	bgt.n	8005306 <__sflush_r+0x1e>
 80053c0:	e7f8      	b.n	80053b4 <__sflush_r+0xcc>
 80053c2:	f8d8 3000 	ldr.w	r3, [r8]
 80053c6:	2b00      	cmp	r3, #0
 80053c8:	d0b0      	beq.n	800532c <__sflush_r+0x44>
 80053ca:	2b1d      	cmp	r3, #29
 80053cc:	d001      	beq.n	80053d2 <__sflush_r+0xea>
 80053ce:	2b16      	cmp	r3, #22
 80053d0:	d12c      	bne.n	800542c <__sflush_r+0x144>
 80053d2:	f8c8 6000 	str.w	r6, [r8]
 80053d6:	2000      	movs	r0, #0
 80053d8:	e7ed      	b.n	80053b6 <__sflush_r+0xce>
 80053da:	f8d8 1000 	ldr.w	r1, [r8]
 80053de:	291d      	cmp	r1, #29
 80053e0:	d81a      	bhi.n	8005418 <__sflush_r+0x130>
 80053e2:	4b15      	ldr	r3, [pc, #84]	; (8005438 <__sflush_r+0x150>)
 80053e4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80053e8:	40cb      	lsrs	r3, r1
 80053ea:	43db      	mvns	r3, r3
 80053ec:	f013 0301 	ands.w	r3, r3, #1
 80053f0:	d114      	bne.n	800541c <__sflush_r+0x134>
 80053f2:	6925      	ldr	r5, [r4, #16]
 80053f4:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80053f8:	e9c4 5300 	strd	r5, r3, [r4]
 80053fc:	04d5      	lsls	r5, r2, #19
 80053fe:	81a2      	strh	r2, [r4, #12]
 8005400:	d5b1      	bpl.n	8005366 <__sflush_r+0x7e>
 8005402:	2900      	cmp	r1, #0
 8005404:	d1af      	bne.n	8005366 <__sflush_r+0x7e>
 8005406:	e7ad      	b.n	8005364 <__sflush_r+0x7c>
 8005408:	89a3      	ldrh	r3, [r4, #12]
 800540a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800540e:	81a3      	strh	r3, [r4, #12]
 8005410:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005414:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005418:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800541c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005420:	81a2      	strh	r2, [r4, #12]
 8005422:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005426:	e7c6      	b.n	80053b6 <__sflush_r+0xce>
 8005428:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800542a:	e782      	b.n	8005332 <__sflush_r+0x4a>
 800542c:	89a3      	ldrh	r3, [r4, #12]
 800542e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005432:	81a3      	strh	r3, [r4, #12]
 8005434:	e7bf      	b.n	80053b6 <__sflush_r+0xce>
 8005436:	bf00      	nop
 8005438:	20400001 	.word	0x20400001

0800543c <_fflush_r>:
 800543c:	b538      	push	{r3, r4, r5, lr}
 800543e:	460d      	mov	r5, r1
 8005440:	4604      	mov	r4, r0
 8005442:	b108      	cbz	r0, 8005448 <_fflush_r+0xc>
 8005444:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8005446:	b1a3      	cbz	r3, 8005472 <_fflush_r+0x36>
 8005448:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800544c:	b1b8      	cbz	r0, 800547e <_fflush_r+0x42>
 800544e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005450:	07db      	lsls	r3, r3, #31
 8005452:	d401      	bmi.n	8005458 <_fflush_r+0x1c>
 8005454:	0581      	lsls	r1, r0, #22
 8005456:	d51a      	bpl.n	800548e <_fflush_r+0x52>
 8005458:	4620      	mov	r0, r4
 800545a:	4629      	mov	r1, r5
 800545c:	f7ff ff44 	bl	80052e8 <__sflush_r>
 8005460:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 8005462:	07da      	lsls	r2, r3, #31
 8005464:	4604      	mov	r4, r0
 8005466:	d402      	bmi.n	800546e <_fflush_r+0x32>
 8005468:	89ab      	ldrh	r3, [r5, #12]
 800546a:	059b      	lsls	r3, r3, #22
 800546c:	d50a      	bpl.n	8005484 <_fflush_r+0x48>
 800546e:	4620      	mov	r0, r4
 8005470:	bd38      	pop	{r3, r4, r5, pc}
 8005472:	f000 f83f 	bl	80054f4 <__sinit>
 8005476:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800547a:	2800      	cmp	r0, #0
 800547c:	d1e7      	bne.n	800544e <_fflush_r+0x12>
 800547e:	4604      	mov	r4, r0
 8005480:	4620      	mov	r0, r4
 8005482:	bd38      	pop	{r3, r4, r5, pc}
 8005484:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005486:	f000 fb87 	bl	8005b98 <__retarget_lock_release_recursive>
 800548a:	4620      	mov	r0, r4
 800548c:	bd38      	pop	{r3, r4, r5, pc}
 800548e:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005490:	f000 fb80 	bl	8005b94 <__retarget_lock_acquire_recursive>
 8005494:	e7e0      	b.n	8005458 <_fflush_r+0x1c>
 8005496:	bf00      	nop

08005498 <std>:
 8005498:	b510      	push	{r4, lr}
 800549a:	2300      	movs	r3, #0
 800549c:	4604      	mov	r4, r0
 800549e:	8181      	strh	r1, [r0, #12]
 80054a0:	81c2      	strh	r2, [r0, #14]
 80054a2:	e9c0 3300 	strd	r3, r3, [r0]
 80054a6:	6083      	str	r3, [r0, #8]
 80054a8:	6643      	str	r3, [r0, #100]	; 0x64
 80054aa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80054ae:	6183      	str	r3, [r0, #24]
 80054b0:	4619      	mov	r1, r3
 80054b2:	2208      	movs	r2, #8
 80054b4:	305c      	adds	r0, #92	; 0x5c
 80054b6:	f7fd f8cb 	bl	8002650 <memset>
 80054ba:	4807      	ldr	r0, [pc, #28]	; (80054d8 <std+0x40>)
 80054bc:	4907      	ldr	r1, [pc, #28]	; (80054dc <std+0x44>)
 80054be:	4a08      	ldr	r2, [pc, #32]	; (80054e0 <std+0x48>)
 80054c0:	4b08      	ldr	r3, [pc, #32]	; (80054e4 <std+0x4c>)
 80054c2:	62e3      	str	r3, [r4, #44]	; 0x2c
 80054c4:	e9c4 4007 	strd	r4, r0, [r4, #28]
 80054c8:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 80054cc:	f104 0058 	add.w	r0, r4, #88	; 0x58
 80054d0:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80054d4:	f000 bb5a 	b.w	8005b8c <__retarget_lock_init_recursive>
 80054d8:	08006cb1 	.word	0x08006cb1
 80054dc:	08006cd5 	.word	0x08006cd5
 80054e0:	08006d11 	.word	0x08006d11
 80054e4:	08006d31 	.word	0x08006d31

080054e8 <_cleanup_r>:
 80054e8:	4901      	ldr	r1, [pc, #4]	; (80054f0 <_cleanup_r+0x8>)
 80054ea:	f000 bb17 	b.w	8005b1c <_fwalk_reent>
 80054ee:	bf00      	nop
 80054f0:	08006fa1 	.word	0x08006fa1

080054f4 <__sinit>:
 80054f4:	b510      	push	{r4, lr}
 80054f6:	4604      	mov	r4, r0
 80054f8:	4812      	ldr	r0, [pc, #72]	; (8005544 <__sinit+0x50>)
 80054fa:	f000 fb4b 	bl	8005b94 <__retarget_lock_acquire_recursive>
 80054fe:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005500:	b9d2      	cbnz	r2, 8005538 <__sinit+0x44>
 8005502:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005506:	4810      	ldr	r0, [pc, #64]	; (8005548 <__sinit+0x54>)
 8005508:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800550c:	2103      	movs	r1, #3
 800550e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005512:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005514:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005518:	6860      	ldr	r0, [r4, #4]
 800551a:	2104      	movs	r1, #4
 800551c:	f7ff ffbc 	bl	8005498 <std>
 8005520:	2201      	movs	r2, #1
 8005522:	2109      	movs	r1, #9
 8005524:	68a0      	ldr	r0, [r4, #8]
 8005526:	f7ff ffb7 	bl	8005498 <std>
 800552a:	2202      	movs	r2, #2
 800552c:	2112      	movs	r1, #18
 800552e:	68e0      	ldr	r0, [r4, #12]
 8005530:	f7ff ffb2 	bl	8005498 <std>
 8005534:	2301      	movs	r3, #1
 8005536:	63a3      	str	r3, [r4, #56]	; 0x38
 8005538:	4802      	ldr	r0, [pc, #8]	; (8005544 <__sinit+0x50>)
 800553a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800553e:	f000 bb2b 	b.w	8005b98 <__retarget_lock_release_recursive>
 8005542:	bf00      	nop
 8005544:	20000c48 	.word	0x20000c48
 8005548:	080054e9 	.word	0x080054e9

0800554c <__sfp_lock_acquire>:
 800554c:	4801      	ldr	r0, [pc, #4]	; (8005554 <__sfp_lock_acquire+0x8>)
 800554e:	f000 bb21 	b.w	8005b94 <__retarget_lock_acquire_recursive>
 8005552:	bf00      	nop
 8005554:	20000c5c 	.word	0x20000c5c

08005558 <__sfp_lock_release>:
 8005558:	4801      	ldr	r0, [pc, #4]	; (8005560 <__sfp_lock_release+0x8>)
 800555a:	f000 bb1d 	b.w	8005b98 <__retarget_lock_release_recursive>
 800555e:	bf00      	nop
 8005560:	20000c5c 	.word	0x20000c5c

08005564 <__libc_fini_array>:
 8005564:	b538      	push	{r3, r4, r5, lr}
 8005566:	4c0a      	ldr	r4, [pc, #40]	; (8005590 <__libc_fini_array+0x2c>)
 8005568:	4d0a      	ldr	r5, [pc, #40]	; (8005594 <__libc_fini_array+0x30>)
 800556a:	1b64      	subs	r4, r4, r5
 800556c:	10a4      	asrs	r4, r4, #2
 800556e:	d00a      	beq.n	8005586 <__libc_fini_array+0x22>
 8005570:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 8005574:	3b01      	subs	r3, #1
 8005576:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 800557a:	3c01      	subs	r4, #1
 800557c:	f855 3904 	ldr.w	r3, [r5], #-4
 8005580:	4798      	blx	r3
 8005582:	2c00      	cmp	r4, #0
 8005584:	d1f9      	bne.n	800557a <__libc_fini_array+0x16>
 8005586:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 800558a:	f001 befd 	b.w	8007388 <_fini>
 800558e:	bf00      	nop
 8005590:	0800786c 	.word	0x0800786c
 8005594:	08007868 	.word	0x08007868

08005598 <_malloc_trim_r>:
 8005598:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800559a:	4f24      	ldr	r7, [pc, #144]	; (800562c <_malloc_trim_r+0x94>)
 800559c:	460c      	mov	r4, r1
 800559e:	4606      	mov	r6, r0
 80055a0:	f000 fe7c 	bl	800629c <__malloc_lock>
 80055a4:	68bb      	ldr	r3, [r7, #8]
 80055a6:	685d      	ldr	r5, [r3, #4]
 80055a8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80055ac:	310f      	adds	r1, #15
 80055ae:	f025 0503 	bic.w	r5, r5, #3
 80055b2:	4429      	add	r1, r5
 80055b4:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 80055b8:	f021 010f 	bic.w	r1, r1, #15
 80055bc:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 80055c0:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 80055c4:	db07      	blt.n	80055d6 <_malloc_trim_r+0x3e>
 80055c6:	2100      	movs	r1, #0
 80055c8:	4630      	mov	r0, r6
 80055ca:	f001 fb5f 	bl	8006c8c <_sbrk_r>
 80055ce:	68bb      	ldr	r3, [r7, #8]
 80055d0:	442b      	add	r3, r5
 80055d2:	4298      	cmp	r0, r3
 80055d4:	d004      	beq.n	80055e0 <_malloc_trim_r+0x48>
 80055d6:	4630      	mov	r0, r6
 80055d8:	f000 fe66 	bl	80062a8 <__malloc_unlock>
 80055dc:	2000      	movs	r0, #0
 80055de:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80055e0:	4261      	negs	r1, r4
 80055e2:	4630      	mov	r0, r6
 80055e4:	f001 fb52 	bl	8006c8c <_sbrk_r>
 80055e8:	3001      	adds	r0, #1
 80055ea:	d00d      	beq.n	8005608 <_malloc_trim_r+0x70>
 80055ec:	4b10      	ldr	r3, [pc, #64]	; (8005630 <_malloc_trim_r+0x98>)
 80055ee:	68ba      	ldr	r2, [r7, #8]
 80055f0:	6819      	ldr	r1, [r3, #0]
 80055f2:	1b2d      	subs	r5, r5, r4
 80055f4:	f045 0501 	orr.w	r5, r5, #1
 80055f8:	4630      	mov	r0, r6
 80055fa:	1b09      	subs	r1, r1, r4
 80055fc:	6055      	str	r5, [r2, #4]
 80055fe:	6019      	str	r1, [r3, #0]
 8005600:	f000 fe52 	bl	80062a8 <__malloc_unlock>
 8005604:	2001      	movs	r0, #1
 8005606:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005608:	2100      	movs	r1, #0
 800560a:	4630      	mov	r0, r6
 800560c:	f001 fb3e 	bl	8006c8c <_sbrk_r>
 8005610:	68ba      	ldr	r2, [r7, #8]
 8005612:	1a83      	subs	r3, r0, r2
 8005614:	2b0f      	cmp	r3, #15
 8005616:	ddde      	ble.n	80055d6 <_malloc_trim_r+0x3e>
 8005618:	4c06      	ldr	r4, [pc, #24]	; (8005634 <_malloc_trim_r+0x9c>)
 800561a:	4905      	ldr	r1, [pc, #20]	; (8005630 <_malloc_trim_r+0x98>)
 800561c:	6824      	ldr	r4, [r4, #0]
 800561e:	f043 0301 	orr.w	r3, r3, #1
 8005622:	1b00      	subs	r0, r0, r4
 8005624:	6053      	str	r3, [r2, #4]
 8005626:	6008      	str	r0, [r1, #0]
 8005628:	e7d5      	b.n	80055d6 <_malloc_trim_r+0x3e>
 800562a:	bf00      	nop
 800562c:	2000044c 	.word	0x2000044c
 8005630:	20000a6c 	.word	0x20000a6c
 8005634:	20000854 	.word	0x20000854

08005638 <_free_r>:
 8005638:	2900      	cmp	r1, #0
 800563a:	d053      	beq.n	80056e4 <_free_r+0xac>
 800563c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800563e:	460c      	mov	r4, r1
 8005640:	4606      	mov	r6, r0
 8005642:	f000 fe2b 	bl	800629c <__malloc_lock>
 8005646:	f854 cc04 	ldr.w	ip, [r4, #-4]
 800564a:	4f71      	ldr	r7, [pc, #452]	; (8005810 <_free_r+0x1d8>)
 800564c:	f02c 0101 	bic.w	r1, ip, #1
 8005650:	f1a4 0508 	sub.w	r5, r4, #8
 8005654:	186b      	adds	r3, r5, r1
 8005656:	68b8      	ldr	r0, [r7, #8]
 8005658:	685a      	ldr	r2, [r3, #4]
 800565a:	4298      	cmp	r0, r3
 800565c:	f022 0203 	bic.w	r2, r2, #3
 8005660:	d053      	beq.n	800570a <_free_r+0xd2>
 8005662:	f01c 0f01 	tst.w	ip, #1
 8005666:	605a      	str	r2, [r3, #4]
 8005668:	eb03 0002 	add.w	r0, r3, r2
 800566c:	d13b      	bne.n	80056e6 <_free_r+0xae>
 800566e:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8005672:	6840      	ldr	r0, [r0, #4]
 8005674:	eba5 050c 	sub.w	r5, r5, ip
 8005678:	f107 0e08 	add.w	lr, r7, #8
 800567c:	68ac      	ldr	r4, [r5, #8]
 800567e:	4574      	cmp	r4, lr
 8005680:	4461      	add	r1, ip
 8005682:	f000 0001 	and.w	r0, r0, #1
 8005686:	d075      	beq.n	8005774 <_free_r+0x13c>
 8005688:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 800568c:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005690:	f8cc 4008 	str.w	r4, [ip, #8]
 8005694:	b360      	cbz	r0, 80056f0 <_free_r+0xb8>
 8005696:	f041 0301 	orr.w	r3, r1, #1
 800569a:	606b      	str	r3, [r5, #4]
 800569c:	5069      	str	r1, [r5, r1]
 800569e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 80056a2:	d350      	bcc.n	8005746 <_free_r+0x10e>
 80056a4:	0a4b      	lsrs	r3, r1, #9
 80056a6:	2b04      	cmp	r3, #4
 80056a8:	d870      	bhi.n	800578c <_free_r+0x154>
 80056aa:	098b      	lsrs	r3, r1, #6
 80056ac:	f103 0439 	add.w	r4, r3, #57	; 0x39
 80056b0:	00e4      	lsls	r4, r4, #3
 80056b2:	f103 0238 	add.w	r2, r3, #56	; 0x38
 80056b6:	1938      	adds	r0, r7, r4
 80056b8:	593b      	ldr	r3, [r7, r4]
 80056ba:	3808      	subs	r0, #8
 80056bc:	4298      	cmp	r0, r3
 80056be:	d078      	beq.n	80057b2 <_free_r+0x17a>
 80056c0:	685a      	ldr	r2, [r3, #4]
 80056c2:	f022 0203 	bic.w	r2, r2, #3
 80056c6:	428a      	cmp	r2, r1
 80056c8:	d971      	bls.n	80057ae <_free_r+0x176>
 80056ca:	689b      	ldr	r3, [r3, #8]
 80056cc:	4298      	cmp	r0, r3
 80056ce:	d1f7      	bne.n	80056c0 <_free_r+0x88>
 80056d0:	68c3      	ldr	r3, [r0, #12]
 80056d2:	e9c5 0302 	strd	r0, r3, [r5, #8]
 80056d6:	609d      	str	r5, [r3, #8]
 80056d8:	60c5      	str	r5, [r0, #12]
 80056da:	4630      	mov	r0, r6
 80056dc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80056e0:	f000 bde2 	b.w	80062a8 <__malloc_unlock>
 80056e4:	4770      	bx	lr
 80056e6:	6840      	ldr	r0, [r0, #4]
 80056e8:	f000 0001 	and.w	r0, r0, #1
 80056ec:	2800      	cmp	r0, #0
 80056ee:	d1d2      	bne.n	8005696 <_free_r+0x5e>
 80056f0:	6898      	ldr	r0, [r3, #8]
 80056f2:	4c48      	ldr	r4, [pc, #288]	; (8005814 <_free_r+0x1dc>)
 80056f4:	4411      	add	r1, r2
 80056f6:	42a0      	cmp	r0, r4
 80056f8:	f041 0201 	orr.w	r2, r1, #1
 80056fc:	d062      	beq.n	80057c4 <_free_r+0x18c>
 80056fe:	68db      	ldr	r3, [r3, #12]
 8005700:	60c3      	str	r3, [r0, #12]
 8005702:	6098      	str	r0, [r3, #8]
 8005704:	606a      	str	r2, [r5, #4]
 8005706:	5069      	str	r1, [r5, r1]
 8005708:	e7c9      	b.n	800569e <_free_r+0x66>
 800570a:	f01c 0f01 	tst.w	ip, #1
 800570e:	440a      	add	r2, r1
 8005710:	d107      	bne.n	8005722 <_free_r+0xea>
 8005712:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005716:	1aed      	subs	r5, r5, r3
 8005718:	441a      	add	r2, r3
 800571a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800571e:	60cb      	str	r3, [r1, #12]
 8005720:	6099      	str	r1, [r3, #8]
 8005722:	4b3d      	ldr	r3, [pc, #244]	; (8005818 <_free_r+0x1e0>)
 8005724:	681b      	ldr	r3, [r3, #0]
 8005726:	f042 0101 	orr.w	r1, r2, #1
 800572a:	4293      	cmp	r3, r2
 800572c:	6069      	str	r1, [r5, #4]
 800572e:	60bd      	str	r5, [r7, #8]
 8005730:	d804      	bhi.n	800573c <_free_r+0x104>
 8005732:	4b3a      	ldr	r3, [pc, #232]	; (800581c <_free_r+0x1e4>)
 8005734:	4630      	mov	r0, r6
 8005736:	6819      	ldr	r1, [r3, #0]
 8005738:	f7ff ff2e 	bl	8005598 <_malloc_trim_r>
 800573c:	4630      	mov	r0, r6
 800573e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005742:	f000 bdb1 	b.w	80062a8 <__malloc_unlock>
 8005746:	08c9      	lsrs	r1, r1, #3
 8005748:	6878      	ldr	r0, [r7, #4]
 800574a:	1c4a      	adds	r2, r1, #1
 800574c:	2301      	movs	r3, #1
 800574e:	1089      	asrs	r1, r1, #2
 8005750:	408b      	lsls	r3, r1
 8005752:	4303      	orrs	r3, r0
 8005754:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005758:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 800575c:	607b      	str	r3, [r7, #4]
 800575e:	3908      	subs	r1, #8
 8005760:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8005764:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005768:	60c5      	str	r5, [r0, #12]
 800576a:	4630      	mov	r0, r6
 800576c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005770:	f000 bd9a 	b.w	80062a8 <__malloc_unlock>
 8005774:	2800      	cmp	r0, #0
 8005776:	d145      	bne.n	8005804 <_free_r+0x1cc>
 8005778:	440a      	add	r2, r1
 800577a:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 800577e:	f042 0001 	orr.w	r0, r2, #1
 8005782:	60cb      	str	r3, [r1, #12]
 8005784:	6099      	str	r1, [r3, #8]
 8005786:	6068      	str	r0, [r5, #4]
 8005788:	50aa      	str	r2, [r5, r2]
 800578a:	e7d7      	b.n	800573c <_free_r+0x104>
 800578c:	2b14      	cmp	r3, #20
 800578e:	d908      	bls.n	80057a2 <_free_r+0x16a>
 8005790:	2b54      	cmp	r3, #84	; 0x54
 8005792:	d81e      	bhi.n	80057d2 <_free_r+0x19a>
 8005794:	0b0b      	lsrs	r3, r1, #12
 8005796:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800579a:	00e4      	lsls	r4, r4, #3
 800579c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 80057a0:	e789      	b.n	80056b6 <_free_r+0x7e>
 80057a2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 80057a6:	00e4      	lsls	r4, r4, #3
 80057a8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 80057ac:	e783      	b.n	80056b6 <_free_r+0x7e>
 80057ae:	4618      	mov	r0, r3
 80057b0:	e78e      	b.n	80056d0 <_free_r+0x98>
 80057b2:	1093      	asrs	r3, r2, #2
 80057b4:	6879      	ldr	r1, [r7, #4]
 80057b6:	2201      	movs	r2, #1
 80057b8:	fa02 f303 	lsl.w	r3, r2, r3
 80057bc:	430b      	orrs	r3, r1
 80057be:	607b      	str	r3, [r7, #4]
 80057c0:	4603      	mov	r3, r0
 80057c2:	e786      	b.n	80056d2 <_free_r+0x9a>
 80057c4:	e9c7 5504 	strd	r5, r5, [r7, #16]
 80057c8:	e9c5 0002 	strd	r0, r0, [r5, #8]
 80057cc:	606a      	str	r2, [r5, #4]
 80057ce:	5069      	str	r1, [r5, r1]
 80057d0:	e7b4      	b.n	800573c <_free_r+0x104>
 80057d2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80057d6:	d806      	bhi.n	80057e6 <_free_r+0x1ae>
 80057d8:	0bcb      	lsrs	r3, r1, #15
 80057da:	f103 0478 	add.w	r4, r3, #120	; 0x78
 80057de:	00e4      	lsls	r4, r4, #3
 80057e0:	f103 0277 	add.w	r2, r3, #119	; 0x77
 80057e4:	e767      	b.n	80056b6 <_free_r+0x7e>
 80057e6:	f240 5254 	movw	r2, #1364	; 0x554
 80057ea:	4293      	cmp	r3, r2
 80057ec:	d806      	bhi.n	80057fc <_free_r+0x1c4>
 80057ee:	0c8b      	lsrs	r3, r1, #18
 80057f0:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 80057f4:	00e4      	lsls	r4, r4, #3
 80057f6:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80057fa:	e75c      	b.n	80056b6 <_free_r+0x7e>
 80057fc:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005800:	227e      	movs	r2, #126	; 0x7e
 8005802:	e758      	b.n	80056b6 <_free_r+0x7e>
 8005804:	f041 0201 	orr.w	r2, r1, #1
 8005808:	606a      	str	r2, [r5, #4]
 800580a:	6019      	str	r1, [r3, #0]
 800580c:	e796      	b.n	800573c <_free_r+0x104>
 800580e:	bf00      	nop
 8005810:	2000044c 	.word	0x2000044c
 8005814:	20000454 	.word	0x20000454
 8005818:	20000858 	.word	0x20000858
 800581c:	20000a9c 	.word	0x20000a9c

08005820 <__sfvwrite_r>:
 8005820:	6893      	ldr	r3, [r2, #8]
 8005822:	2b00      	cmp	r3, #0
 8005824:	f000 80e4 	beq.w	80059f0 <__sfvwrite_r+0x1d0>
 8005828:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800582c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005830:	b29b      	uxth	r3, r3
 8005832:	460c      	mov	r4, r1
 8005834:	0719      	lsls	r1, r3, #28
 8005836:	b083      	sub	sp, #12
 8005838:	4682      	mov	sl, r0
 800583a:	4690      	mov	r8, r2
 800583c:	d535      	bpl.n	80058aa <__sfvwrite_r+0x8a>
 800583e:	6922      	ldr	r2, [r4, #16]
 8005840:	b39a      	cbz	r2, 80058aa <__sfvwrite_r+0x8a>
 8005842:	f013 0202 	ands.w	r2, r3, #2
 8005846:	f8d8 6000 	ldr.w	r6, [r8]
 800584a:	d03d      	beq.n	80058c8 <__sfvwrite_r+0xa8>
 800584c:	2700      	movs	r7, #0
 800584e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005852:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005856:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005b18 <__sfvwrite_r+0x2f8>
 800585a:	463d      	mov	r5, r7
 800585c:	454d      	cmp	r5, r9
 800585e:	462b      	mov	r3, r5
 8005860:	463a      	mov	r2, r7
 8005862:	bf28      	it	cs
 8005864:	464b      	movcs	r3, r9
 8005866:	4661      	mov	r1, ip
 8005868:	4650      	mov	r0, sl
 800586a:	b1d5      	cbz	r5, 80058a2 <__sfvwrite_r+0x82>
 800586c:	47d8      	blx	fp
 800586e:	2800      	cmp	r0, #0
 8005870:	f340 80c6 	ble.w	8005a00 <__sfvwrite_r+0x1e0>
 8005874:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005878:	1a1b      	subs	r3, r3, r0
 800587a:	4407      	add	r7, r0
 800587c:	1a2d      	subs	r5, r5, r0
 800587e:	f8c8 3008 	str.w	r3, [r8, #8]
 8005882:	2b00      	cmp	r3, #0
 8005884:	f000 80b0 	beq.w	80059e8 <__sfvwrite_r+0x1c8>
 8005888:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 800588c:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005890:	454d      	cmp	r5, r9
 8005892:	462b      	mov	r3, r5
 8005894:	463a      	mov	r2, r7
 8005896:	bf28      	it	cs
 8005898:	464b      	movcs	r3, r9
 800589a:	4661      	mov	r1, ip
 800589c:	4650      	mov	r0, sl
 800589e:	2d00      	cmp	r5, #0
 80058a0:	d1e4      	bne.n	800586c <__sfvwrite_r+0x4c>
 80058a2:	e9d6 7500 	ldrd	r7, r5, [r6]
 80058a6:	3608      	adds	r6, #8
 80058a8:	e7d8      	b.n	800585c <__sfvwrite_r+0x3c>
 80058aa:	4621      	mov	r1, r4
 80058ac:	4650      	mov	r0, sl
 80058ae:	f7fe fd03 	bl	80042b8 <__swsetup_r>
 80058b2:	2800      	cmp	r0, #0
 80058b4:	f040 812a 	bne.w	8005b0c <__sfvwrite_r+0x2ec>
 80058b8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058bc:	f8d8 6000 	ldr.w	r6, [r8]
 80058c0:	b29b      	uxth	r3, r3
 80058c2:	f013 0202 	ands.w	r2, r3, #2
 80058c6:	d1c1      	bne.n	800584c <__sfvwrite_r+0x2c>
 80058c8:	f013 0901 	ands.w	r9, r3, #1
 80058cc:	d15d      	bne.n	800598a <__sfvwrite_r+0x16a>
 80058ce:	68a7      	ldr	r7, [r4, #8]
 80058d0:	6820      	ldr	r0, [r4, #0]
 80058d2:	464d      	mov	r5, r9
 80058d4:	2d00      	cmp	r5, #0
 80058d6:	d054      	beq.n	8005982 <__sfvwrite_r+0x162>
 80058d8:	059a      	lsls	r2, r3, #22
 80058da:	f140 809b 	bpl.w	8005a14 <__sfvwrite_r+0x1f4>
 80058de:	42af      	cmp	r7, r5
 80058e0:	46bb      	mov	fp, r7
 80058e2:	f200 80d8 	bhi.w	8005a96 <__sfvwrite_r+0x276>
 80058e6:	f413 6f90 	tst.w	r3, #1152	; 0x480
 80058ea:	d02f      	beq.n	800594c <__sfvwrite_r+0x12c>
 80058ec:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 80058f0:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 80058f4:	eba0 0b01 	sub.w	fp, r0, r1
 80058f8:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80058fc:	1c68      	adds	r0, r5, #1
 80058fe:	107f      	asrs	r7, r7, #1
 8005900:	4458      	add	r0, fp
 8005902:	42b8      	cmp	r0, r7
 8005904:	463a      	mov	r2, r7
 8005906:	bf84      	itt	hi
 8005908:	4607      	movhi	r7, r0
 800590a:	463a      	movhi	r2, r7
 800590c:	055b      	lsls	r3, r3, #21
 800590e:	f140 80d3 	bpl.w	8005ab8 <__sfvwrite_r+0x298>
 8005912:	4611      	mov	r1, r2
 8005914:	4650      	mov	r0, sl
 8005916:	f000 f9b9 	bl	8005c8c <_malloc_r>
 800591a:	2800      	cmp	r0, #0
 800591c:	f000 80f0 	beq.w	8005b00 <__sfvwrite_r+0x2e0>
 8005920:	465a      	mov	r2, fp
 8005922:	6921      	ldr	r1, [r4, #16]
 8005924:	9001      	str	r0, [sp, #4]
 8005926:	f7fa fdeb 	bl	8000500 <memcpy>
 800592a:	89a2      	ldrh	r2, [r4, #12]
 800592c:	9b01      	ldr	r3, [sp, #4]
 800592e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005932:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005936:	81a2      	strh	r2, [r4, #12]
 8005938:	eba7 020b 	sub.w	r2, r7, fp
 800593c:	eb03 000b 	add.w	r0, r3, fp
 8005940:	6167      	str	r7, [r4, #20]
 8005942:	6123      	str	r3, [r4, #16]
 8005944:	6020      	str	r0, [r4, #0]
 8005946:	60a2      	str	r2, [r4, #8]
 8005948:	462f      	mov	r7, r5
 800594a:	46ab      	mov	fp, r5
 800594c:	465a      	mov	r2, fp
 800594e:	4649      	mov	r1, r9
 8005950:	f000 fc40 	bl	80061d4 <memmove>
 8005954:	68a2      	ldr	r2, [r4, #8]
 8005956:	6823      	ldr	r3, [r4, #0]
 8005958:	1bd2      	subs	r2, r2, r7
 800595a:	445b      	add	r3, fp
 800595c:	462f      	mov	r7, r5
 800595e:	60a2      	str	r2, [r4, #8]
 8005960:	6023      	str	r3, [r4, #0]
 8005962:	2500      	movs	r5, #0
 8005964:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005968:	1bdb      	subs	r3, r3, r7
 800596a:	44b9      	add	r9, r7
 800596c:	f8c8 3008 	str.w	r3, [r8, #8]
 8005970:	2b00      	cmp	r3, #0
 8005972:	d039      	beq.n	80059e8 <__sfvwrite_r+0x1c8>
 8005974:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005978:	68a7      	ldr	r7, [r4, #8]
 800597a:	6820      	ldr	r0, [r4, #0]
 800597c:	b29b      	uxth	r3, r3
 800597e:	2d00      	cmp	r5, #0
 8005980:	d1aa      	bne.n	80058d8 <__sfvwrite_r+0xb8>
 8005982:	e9d6 9500 	ldrd	r9, r5, [r6]
 8005986:	3608      	adds	r6, #8
 8005988:	e7a4      	b.n	80058d4 <__sfvwrite_r+0xb4>
 800598a:	4633      	mov	r3, r6
 800598c:	4691      	mov	r9, r2
 800598e:	4610      	mov	r0, r2
 8005990:	4617      	mov	r7, r2
 8005992:	464e      	mov	r6, r9
 8005994:	469b      	mov	fp, r3
 8005996:	2f00      	cmp	r7, #0
 8005998:	d06b      	beq.n	8005a72 <__sfvwrite_r+0x252>
 800599a:	2800      	cmp	r0, #0
 800599c:	d071      	beq.n	8005a82 <__sfvwrite_r+0x262>
 800599e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 80059a2:	6820      	ldr	r0, [r4, #0]
 80059a4:	45b9      	cmp	r9, r7
 80059a6:	464b      	mov	r3, r9
 80059a8:	bf28      	it	cs
 80059aa:	463b      	movcs	r3, r7
 80059ac:	4288      	cmp	r0, r1
 80059ae:	d903      	bls.n	80059b8 <__sfvwrite_r+0x198>
 80059b0:	68a5      	ldr	r5, [r4, #8]
 80059b2:	4415      	add	r5, r2
 80059b4:	42ab      	cmp	r3, r5
 80059b6:	dc71      	bgt.n	8005a9c <__sfvwrite_r+0x27c>
 80059b8:	429a      	cmp	r2, r3
 80059ba:	f300 8093 	bgt.w	8005ae4 <__sfvwrite_r+0x2c4>
 80059be:	4613      	mov	r3, r2
 80059c0:	6a65      	ldr	r5, [r4, #36]	; 0x24
 80059c2:	69e1      	ldr	r1, [r4, #28]
 80059c4:	4632      	mov	r2, r6
 80059c6:	4650      	mov	r0, sl
 80059c8:	47a8      	blx	r5
 80059ca:	1e05      	subs	r5, r0, #0
 80059cc:	dd18      	ble.n	8005a00 <__sfvwrite_r+0x1e0>
 80059ce:	ebb9 0905 	subs.w	r9, r9, r5
 80059d2:	d00f      	beq.n	80059f4 <__sfvwrite_r+0x1d4>
 80059d4:	2001      	movs	r0, #1
 80059d6:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80059da:	1b5b      	subs	r3, r3, r5
 80059dc:	442e      	add	r6, r5
 80059de:	1b7f      	subs	r7, r7, r5
 80059e0:	f8c8 3008 	str.w	r3, [r8, #8]
 80059e4:	2b00      	cmp	r3, #0
 80059e6:	d1d6      	bne.n	8005996 <__sfvwrite_r+0x176>
 80059e8:	2000      	movs	r0, #0
 80059ea:	b003      	add	sp, #12
 80059ec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80059f0:	2000      	movs	r0, #0
 80059f2:	4770      	bx	lr
 80059f4:	4621      	mov	r1, r4
 80059f6:	4650      	mov	r0, sl
 80059f8:	f7ff fd20 	bl	800543c <_fflush_r>
 80059fc:	2800      	cmp	r0, #0
 80059fe:	d0ea      	beq.n	80059d6 <__sfvwrite_r+0x1b6>
 8005a00:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a04:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005a08:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a0c:	81a3      	strh	r3, [r4, #12]
 8005a0e:	b003      	add	sp, #12
 8005a10:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a14:	6923      	ldr	r3, [r4, #16]
 8005a16:	4283      	cmp	r3, r0
 8005a18:	d315      	bcc.n	8005a46 <__sfvwrite_r+0x226>
 8005a1a:	6961      	ldr	r1, [r4, #20]
 8005a1c:	42a9      	cmp	r1, r5
 8005a1e:	d812      	bhi.n	8005a46 <__sfvwrite_r+0x226>
 8005a20:	4b3c      	ldr	r3, [pc, #240]	; (8005b14 <__sfvwrite_r+0x2f4>)
 8005a22:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005a24:	429d      	cmp	r5, r3
 8005a26:	bf94      	ite	ls
 8005a28:	462b      	movls	r3, r5
 8005a2a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005a2e:	464a      	mov	r2, r9
 8005a30:	fb93 f3f1 	sdiv	r3, r3, r1
 8005a34:	4650      	mov	r0, sl
 8005a36:	fb01 f303 	mul.w	r3, r1, r3
 8005a3a:	69e1      	ldr	r1, [r4, #28]
 8005a3c:	47b8      	blx	r7
 8005a3e:	1e07      	subs	r7, r0, #0
 8005a40:	ddde      	ble.n	8005a00 <__sfvwrite_r+0x1e0>
 8005a42:	1bed      	subs	r5, r5, r7
 8005a44:	e78e      	b.n	8005964 <__sfvwrite_r+0x144>
 8005a46:	42af      	cmp	r7, r5
 8005a48:	bf28      	it	cs
 8005a4a:	462f      	movcs	r7, r5
 8005a4c:	463a      	mov	r2, r7
 8005a4e:	4649      	mov	r1, r9
 8005a50:	f000 fbc0 	bl	80061d4 <memmove>
 8005a54:	68a3      	ldr	r3, [r4, #8]
 8005a56:	6822      	ldr	r2, [r4, #0]
 8005a58:	1bdb      	subs	r3, r3, r7
 8005a5a:	443a      	add	r2, r7
 8005a5c:	60a3      	str	r3, [r4, #8]
 8005a5e:	6022      	str	r2, [r4, #0]
 8005a60:	2b00      	cmp	r3, #0
 8005a62:	d1ee      	bne.n	8005a42 <__sfvwrite_r+0x222>
 8005a64:	4621      	mov	r1, r4
 8005a66:	4650      	mov	r0, sl
 8005a68:	f7ff fce8 	bl	800543c <_fflush_r>
 8005a6c:	2800      	cmp	r0, #0
 8005a6e:	d0e8      	beq.n	8005a42 <__sfvwrite_r+0x222>
 8005a70:	e7c6      	b.n	8005a00 <__sfvwrite_r+0x1e0>
 8005a72:	f10b 0308 	add.w	r3, fp, #8
 8005a76:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005a7a:	469b      	mov	fp, r3
 8005a7c:	3308      	adds	r3, #8
 8005a7e:	2f00      	cmp	r7, #0
 8005a80:	d0f9      	beq.n	8005a76 <__sfvwrite_r+0x256>
 8005a82:	463a      	mov	r2, r7
 8005a84:	210a      	movs	r1, #10
 8005a86:	4630      	mov	r0, r6
 8005a88:	f7fa fe4a 	bl	8000720 <memchr>
 8005a8c:	b338      	cbz	r0, 8005ade <__sfvwrite_r+0x2be>
 8005a8e:	3001      	adds	r0, #1
 8005a90:	eba0 0906 	sub.w	r9, r0, r6
 8005a94:	e783      	b.n	800599e <__sfvwrite_r+0x17e>
 8005a96:	462f      	mov	r7, r5
 8005a98:	46ab      	mov	fp, r5
 8005a9a:	e757      	b.n	800594c <__sfvwrite_r+0x12c>
 8005a9c:	4631      	mov	r1, r6
 8005a9e:	462a      	mov	r2, r5
 8005aa0:	f000 fb98 	bl	80061d4 <memmove>
 8005aa4:	6823      	ldr	r3, [r4, #0]
 8005aa6:	442b      	add	r3, r5
 8005aa8:	6023      	str	r3, [r4, #0]
 8005aaa:	4621      	mov	r1, r4
 8005aac:	4650      	mov	r0, sl
 8005aae:	f7ff fcc5 	bl	800543c <_fflush_r>
 8005ab2:	2800      	cmp	r0, #0
 8005ab4:	d08b      	beq.n	80059ce <__sfvwrite_r+0x1ae>
 8005ab6:	e7a3      	b.n	8005a00 <__sfvwrite_r+0x1e0>
 8005ab8:	4650      	mov	r0, sl
 8005aba:	f000 ff05 	bl	80068c8 <_realloc_r>
 8005abe:	4603      	mov	r3, r0
 8005ac0:	2800      	cmp	r0, #0
 8005ac2:	f47f af39 	bne.w	8005938 <__sfvwrite_r+0x118>
 8005ac6:	6921      	ldr	r1, [r4, #16]
 8005ac8:	4650      	mov	r0, sl
 8005aca:	f7ff fdb5 	bl	8005638 <_free_r>
 8005ace:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ad2:	220c      	movs	r2, #12
 8005ad4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005ad8:	f8ca 2000 	str.w	r2, [sl]
 8005adc:	e792      	b.n	8005a04 <__sfvwrite_r+0x1e4>
 8005ade:	f107 0901 	add.w	r9, r7, #1
 8005ae2:	e75c      	b.n	800599e <__sfvwrite_r+0x17e>
 8005ae4:	461a      	mov	r2, r3
 8005ae6:	4631      	mov	r1, r6
 8005ae8:	9301      	str	r3, [sp, #4]
 8005aea:	f000 fb73 	bl	80061d4 <memmove>
 8005aee:	9b01      	ldr	r3, [sp, #4]
 8005af0:	68a1      	ldr	r1, [r4, #8]
 8005af2:	6822      	ldr	r2, [r4, #0]
 8005af4:	1ac9      	subs	r1, r1, r3
 8005af6:	441a      	add	r2, r3
 8005af8:	60a1      	str	r1, [r4, #8]
 8005afa:	6022      	str	r2, [r4, #0]
 8005afc:	461d      	mov	r5, r3
 8005afe:	e766      	b.n	80059ce <__sfvwrite_r+0x1ae>
 8005b00:	230c      	movs	r3, #12
 8005b02:	f8ca 3000 	str.w	r3, [sl]
 8005b06:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b0a:	e77b      	b.n	8005a04 <__sfvwrite_r+0x1e4>
 8005b0c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005b10:	e76b      	b.n	80059ea <__sfvwrite_r+0x1ca>
 8005b12:	bf00      	nop
 8005b14:	7ffffffe 	.word	0x7ffffffe
 8005b18:	7ffffc00 	.word	0x7ffffc00

08005b1c <_fwalk_reent>:
 8005b1c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005b20:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005b24:	d01f      	beq.n	8005b66 <_fwalk_reent+0x4a>
 8005b26:	4688      	mov	r8, r1
 8005b28:	4606      	mov	r6, r0
 8005b2a:	f04f 0900 	mov.w	r9, #0
 8005b2e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005b32:	3d01      	subs	r5, #1
 8005b34:	d411      	bmi.n	8005b5a <_fwalk_reent+0x3e>
 8005b36:	89a3      	ldrh	r3, [r4, #12]
 8005b38:	2b01      	cmp	r3, #1
 8005b3a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005b3e:	4621      	mov	r1, r4
 8005b40:	4630      	mov	r0, r6
 8005b42:	d906      	bls.n	8005b52 <_fwalk_reent+0x36>
 8005b44:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005b48:	3301      	adds	r3, #1
 8005b4a:	d002      	beq.n	8005b52 <_fwalk_reent+0x36>
 8005b4c:	47c0      	blx	r8
 8005b4e:	ea49 0900 	orr.w	r9, r9, r0
 8005b52:	1c6b      	adds	r3, r5, #1
 8005b54:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005b58:	d1ed      	bne.n	8005b36 <_fwalk_reent+0x1a>
 8005b5a:	683f      	ldr	r7, [r7, #0]
 8005b5c:	2f00      	cmp	r7, #0
 8005b5e:	d1e6      	bne.n	8005b2e <_fwalk_reent+0x12>
 8005b60:	4648      	mov	r0, r9
 8005b62:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005b66:	46b9      	mov	r9, r7
 8005b68:	4648      	mov	r0, r9
 8005b6a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005b6e:	bf00      	nop

08005b70 <_localeconv_r>:
 8005b70:	4a04      	ldr	r2, [pc, #16]	; (8005b84 <_localeconv_r+0x14>)
 8005b72:	4b05      	ldr	r3, [pc, #20]	; (8005b88 <_localeconv_r+0x18>)
 8005b74:	6812      	ldr	r2, [r2, #0]
 8005b76:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005b78:	2800      	cmp	r0, #0
 8005b7a:	bf08      	it	eq
 8005b7c:	4618      	moveq	r0, r3
 8005b7e:	30f0      	adds	r0, #240	; 0xf0
 8005b80:	4770      	bx	lr
 8005b82:	bf00      	nop
 8005b84:	20000018 	.word	0x20000018
 8005b88:	2000085c 	.word	0x2000085c

08005b8c <__retarget_lock_init_recursive>:
 8005b8c:	4770      	bx	lr
 8005b8e:	bf00      	nop

08005b90 <__retarget_lock_close_recursive>:
 8005b90:	4770      	bx	lr
 8005b92:	bf00      	nop

08005b94 <__retarget_lock_acquire_recursive>:
 8005b94:	4770      	bx	lr
 8005b96:	bf00      	nop

08005b98 <__retarget_lock_release_recursive>:
 8005b98:	4770      	bx	lr
 8005b9a:	bf00      	nop

08005b9c <__swhatbuf_r>:
 8005b9c:	b570      	push	{r4, r5, r6, lr}
 8005b9e:	460c      	mov	r4, r1
 8005ba0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005ba4:	2900      	cmp	r1, #0
 8005ba6:	b096      	sub	sp, #88	; 0x58
 8005ba8:	4615      	mov	r5, r2
 8005baa:	461e      	mov	r6, r3
 8005bac:	da0f      	bge.n	8005bce <__swhatbuf_r+0x32>
 8005bae:	89a2      	ldrh	r2, [r4, #12]
 8005bb0:	2300      	movs	r3, #0
 8005bb2:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005bb6:	6033      	str	r3, [r6, #0]
 8005bb8:	d104      	bne.n	8005bc4 <__swhatbuf_r+0x28>
 8005bba:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005bbe:	602b      	str	r3, [r5, #0]
 8005bc0:	b016      	add	sp, #88	; 0x58
 8005bc2:	bd70      	pop	{r4, r5, r6, pc}
 8005bc4:	2240      	movs	r2, #64	; 0x40
 8005bc6:	4618      	mov	r0, r3
 8005bc8:	602a      	str	r2, [r5, #0]
 8005bca:	b016      	add	sp, #88	; 0x58
 8005bcc:	bd70      	pop	{r4, r5, r6, pc}
 8005bce:	466a      	mov	r2, sp
 8005bd0:	f001 fad0 	bl	8007174 <_fstat_r>
 8005bd4:	2800      	cmp	r0, #0
 8005bd6:	dbea      	blt.n	8005bae <__swhatbuf_r+0x12>
 8005bd8:	9b01      	ldr	r3, [sp, #4]
 8005bda:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005bde:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005be2:	fab3 f383 	clz	r3, r3
 8005be6:	095b      	lsrs	r3, r3, #5
 8005be8:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005bec:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005bf0:	6033      	str	r3, [r6, #0]
 8005bf2:	602a      	str	r2, [r5, #0]
 8005bf4:	b016      	add	sp, #88	; 0x58
 8005bf6:	bd70      	pop	{r4, r5, r6, pc}

08005bf8 <__smakebuf_r>:
 8005bf8:	898a      	ldrh	r2, [r1, #12]
 8005bfa:	0792      	lsls	r2, r2, #30
 8005bfc:	460b      	mov	r3, r1
 8005bfe:	d506      	bpl.n	8005c0e <__smakebuf_r+0x16>
 8005c00:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005c04:	2101      	movs	r1, #1
 8005c06:	601a      	str	r2, [r3, #0]
 8005c08:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005c0c:	4770      	bx	lr
 8005c0e:	b570      	push	{r4, r5, r6, lr}
 8005c10:	b082      	sub	sp, #8
 8005c12:	ab01      	add	r3, sp, #4
 8005c14:	466a      	mov	r2, sp
 8005c16:	460c      	mov	r4, r1
 8005c18:	4605      	mov	r5, r0
 8005c1a:	f7ff ffbf 	bl	8005b9c <__swhatbuf_r>
 8005c1e:	9900      	ldr	r1, [sp, #0]
 8005c20:	4606      	mov	r6, r0
 8005c22:	4628      	mov	r0, r5
 8005c24:	f000 f832 	bl	8005c8c <_malloc_r>
 8005c28:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c2c:	b1d8      	cbz	r0, 8005c66 <__smakebuf_r+0x6e>
 8005c2e:	4916      	ldr	r1, [pc, #88]	; (8005c88 <__smakebuf_r+0x90>)
 8005c30:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005c32:	9a01      	ldr	r2, [sp, #4]
 8005c34:	9900      	ldr	r1, [sp, #0]
 8005c36:	6020      	str	r0, [r4, #0]
 8005c38:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005c3c:	81a3      	strh	r3, [r4, #12]
 8005c3e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005c42:	b91a      	cbnz	r2, 8005c4c <__smakebuf_r+0x54>
 8005c44:	4333      	orrs	r3, r6
 8005c46:	81a3      	strh	r3, [r4, #12]
 8005c48:	b002      	add	sp, #8
 8005c4a:	bd70      	pop	{r4, r5, r6, pc}
 8005c4c:	4628      	mov	r0, r5
 8005c4e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005c52:	f001 faa3 	bl	800719c <_isatty_r>
 8005c56:	b1a0      	cbz	r0, 8005c82 <__smakebuf_r+0x8a>
 8005c58:	89a3      	ldrh	r3, [r4, #12]
 8005c5a:	f023 0303 	bic.w	r3, r3, #3
 8005c5e:	f043 0301 	orr.w	r3, r3, #1
 8005c62:	b21b      	sxth	r3, r3
 8005c64:	e7ee      	b.n	8005c44 <__smakebuf_r+0x4c>
 8005c66:	059a      	lsls	r2, r3, #22
 8005c68:	d4ee      	bmi.n	8005c48 <__smakebuf_r+0x50>
 8005c6a:	f023 0303 	bic.w	r3, r3, #3
 8005c6e:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005c72:	f043 0302 	orr.w	r3, r3, #2
 8005c76:	2101      	movs	r1, #1
 8005c78:	81a3      	strh	r3, [r4, #12]
 8005c7a:	6022      	str	r2, [r4, #0]
 8005c7c:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005c80:	e7e2      	b.n	8005c48 <__smakebuf_r+0x50>
 8005c82:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c86:	e7dd      	b.n	8005c44 <__smakebuf_r+0x4c>
 8005c88:	080054e9 	.word	0x080054e9

08005c8c <_malloc_r>:
 8005c8c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005c90:	f101 050b 	add.w	r5, r1, #11
 8005c94:	2d16      	cmp	r5, #22
 8005c96:	b083      	sub	sp, #12
 8005c98:	4606      	mov	r6, r0
 8005c9a:	d823      	bhi.n	8005ce4 <_malloc_r+0x58>
 8005c9c:	2910      	cmp	r1, #16
 8005c9e:	f200 80b9 	bhi.w	8005e14 <_malloc_r+0x188>
 8005ca2:	f000 fafb 	bl	800629c <__malloc_lock>
 8005ca6:	2510      	movs	r5, #16
 8005ca8:	2318      	movs	r3, #24
 8005caa:	2002      	movs	r0, #2
 8005cac:	4fc5      	ldr	r7, [pc, #788]	; (8005fc4 <_malloc_r+0x338>)
 8005cae:	443b      	add	r3, r7
 8005cb0:	f1a3 0208 	sub.w	r2, r3, #8
 8005cb4:	685c      	ldr	r4, [r3, #4]
 8005cb6:	4294      	cmp	r4, r2
 8005cb8:	f000 8166 	beq.w	8005f88 <_malloc_r+0x2fc>
 8005cbc:	6863      	ldr	r3, [r4, #4]
 8005cbe:	f023 0303 	bic.w	r3, r3, #3
 8005cc2:	4423      	add	r3, r4
 8005cc4:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005cc8:	685a      	ldr	r2, [r3, #4]
 8005cca:	60e9      	str	r1, [r5, #12]
 8005ccc:	f042 0201 	orr.w	r2, r2, #1
 8005cd0:	608d      	str	r5, [r1, #8]
 8005cd2:	4630      	mov	r0, r6
 8005cd4:	605a      	str	r2, [r3, #4]
 8005cd6:	f000 fae7 	bl	80062a8 <__malloc_unlock>
 8005cda:	3408      	adds	r4, #8
 8005cdc:	4620      	mov	r0, r4
 8005cde:	b003      	add	sp, #12
 8005ce0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ce4:	f035 0507 	bics.w	r5, r5, #7
 8005ce8:	f100 8094 	bmi.w	8005e14 <_malloc_r+0x188>
 8005cec:	42a9      	cmp	r1, r5
 8005cee:	f200 8091 	bhi.w	8005e14 <_malloc_r+0x188>
 8005cf2:	f000 fad3 	bl	800629c <__malloc_lock>
 8005cf6:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005cfa:	f0c0 8183 	bcc.w	8006004 <_malloc_r+0x378>
 8005cfe:	0a6b      	lsrs	r3, r5, #9
 8005d00:	f000 808f 	beq.w	8005e22 <_malloc_r+0x196>
 8005d04:	2b04      	cmp	r3, #4
 8005d06:	f200 8146 	bhi.w	8005f96 <_malloc_r+0x30a>
 8005d0a:	09ab      	lsrs	r3, r5, #6
 8005d0c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005d10:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005d14:	00c3      	lsls	r3, r0, #3
 8005d16:	4fab      	ldr	r7, [pc, #684]	; (8005fc4 <_malloc_r+0x338>)
 8005d18:	443b      	add	r3, r7
 8005d1a:	f1a3 0108 	sub.w	r1, r3, #8
 8005d1e:	685c      	ldr	r4, [r3, #4]
 8005d20:	42a1      	cmp	r1, r4
 8005d22:	d106      	bne.n	8005d32 <_malloc_r+0xa6>
 8005d24:	e00c      	b.n	8005d40 <_malloc_r+0xb4>
 8005d26:	2a00      	cmp	r2, #0
 8005d28:	f280 811d 	bge.w	8005f66 <_malloc_r+0x2da>
 8005d2c:	68e4      	ldr	r4, [r4, #12]
 8005d2e:	42a1      	cmp	r1, r4
 8005d30:	d006      	beq.n	8005d40 <_malloc_r+0xb4>
 8005d32:	6863      	ldr	r3, [r4, #4]
 8005d34:	f023 0303 	bic.w	r3, r3, #3
 8005d38:	1b5a      	subs	r2, r3, r5
 8005d3a:	2a0f      	cmp	r2, #15
 8005d3c:	ddf3      	ble.n	8005d26 <_malloc_r+0x9a>
 8005d3e:	4660      	mov	r0, ip
 8005d40:	693c      	ldr	r4, [r7, #16]
 8005d42:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005fd8 <_malloc_r+0x34c>
 8005d46:	4564      	cmp	r4, ip
 8005d48:	d071      	beq.n	8005e2e <_malloc_r+0x1a2>
 8005d4a:	6863      	ldr	r3, [r4, #4]
 8005d4c:	f023 0303 	bic.w	r3, r3, #3
 8005d50:	1b5a      	subs	r2, r3, r5
 8005d52:	2a0f      	cmp	r2, #15
 8005d54:	f300 8144 	bgt.w	8005fe0 <_malloc_r+0x354>
 8005d58:	2a00      	cmp	r2, #0
 8005d5a:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005d5e:	f280 8126 	bge.w	8005fae <_malloc_r+0x322>
 8005d62:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005d66:	f080 8169 	bcs.w	800603c <_malloc_r+0x3b0>
 8005d6a:	08db      	lsrs	r3, r3, #3
 8005d6c:	1c59      	adds	r1, r3, #1
 8005d6e:	687a      	ldr	r2, [r7, #4]
 8005d70:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005d74:	f8c4 8008 	str.w	r8, [r4, #8]
 8005d78:	f04f 0e01 	mov.w	lr, #1
 8005d7c:	109b      	asrs	r3, r3, #2
 8005d7e:	fa0e f303 	lsl.w	r3, lr, r3
 8005d82:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005d86:	4313      	orrs	r3, r2
 8005d88:	f1ae 0208 	sub.w	r2, lr, #8
 8005d8c:	60e2      	str	r2, [r4, #12]
 8005d8e:	607b      	str	r3, [r7, #4]
 8005d90:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005d94:	f8c8 400c 	str.w	r4, [r8, #12]
 8005d98:	1082      	asrs	r2, r0, #2
 8005d9a:	2401      	movs	r4, #1
 8005d9c:	4094      	lsls	r4, r2
 8005d9e:	429c      	cmp	r4, r3
 8005da0:	d84b      	bhi.n	8005e3a <_malloc_r+0x1ae>
 8005da2:	421c      	tst	r4, r3
 8005da4:	d106      	bne.n	8005db4 <_malloc_r+0x128>
 8005da6:	f020 0003 	bic.w	r0, r0, #3
 8005daa:	0064      	lsls	r4, r4, #1
 8005dac:	421c      	tst	r4, r3
 8005dae:	f100 0004 	add.w	r0, r0, #4
 8005db2:	d0fa      	beq.n	8005daa <_malloc_r+0x11e>
 8005db4:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005db8:	46ce      	mov	lr, r9
 8005dba:	4680      	mov	r8, r0
 8005dbc:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005dc0:	459e      	cmp	lr, r3
 8005dc2:	d107      	bne.n	8005dd4 <_malloc_r+0x148>
 8005dc4:	e122      	b.n	800600c <_malloc_r+0x380>
 8005dc6:	2a00      	cmp	r2, #0
 8005dc8:	f280 8129 	bge.w	800601e <_malloc_r+0x392>
 8005dcc:	68db      	ldr	r3, [r3, #12]
 8005dce:	459e      	cmp	lr, r3
 8005dd0:	f000 811c 	beq.w	800600c <_malloc_r+0x380>
 8005dd4:	6859      	ldr	r1, [r3, #4]
 8005dd6:	f021 0103 	bic.w	r1, r1, #3
 8005dda:	1b4a      	subs	r2, r1, r5
 8005ddc:	2a0f      	cmp	r2, #15
 8005dde:	ddf2      	ble.n	8005dc6 <_malloc_r+0x13a>
 8005de0:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005de4:	195c      	adds	r4, r3, r5
 8005de6:	f045 0501 	orr.w	r5, r5, #1
 8005dea:	605d      	str	r5, [r3, #4]
 8005dec:	f042 0501 	orr.w	r5, r2, #1
 8005df0:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005df4:	4630      	mov	r0, r6
 8005df6:	f8ce 8008 	str.w	r8, [lr, #8]
 8005dfa:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005dfe:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005e02:	6065      	str	r5, [r4, #4]
 8005e04:	505a      	str	r2, [r3, r1]
 8005e06:	9301      	str	r3, [sp, #4]
 8005e08:	f000 fa4e 	bl	80062a8 <__malloc_unlock>
 8005e0c:	9b01      	ldr	r3, [sp, #4]
 8005e0e:	f103 0408 	add.w	r4, r3, #8
 8005e12:	e763      	b.n	8005cdc <_malloc_r+0x50>
 8005e14:	2400      	movs	r4, #0
 8005e16:	230c      	movs	r3, #12
 8005e18:	4620      	mov	r0, r4
 8005e1a:	6033      	str	r3, [r6, #0]
 8005e1c:	b003      	add	sp, #12
 8005e1e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e22:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005e26:	2040      	movs	r0, #64	; 0x40
 8005e28:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005e2c:	e773      	b.n	8005d16 <_malloc_r+0x8a>
 8005e2e:	687b      	ldr	r3, [r7, #4]
 8005e30:	1082      	asrs	r2, r0, #2
 8005e32:	2401      	movs	r4, #1
 8005e34:	4094      	lsls	r4, r2
 8005e36:	429c      	cmp	r4, r3
 8005e38:	d9b3      	bls.n	8005da2 <_malloc_r+0x116>
 8005e3a:	68bc      	ldr	r4, [r7, #8]
 8005e3c:	6863      	ldr	r3, [r4, #4]
 8005e3e:	f023 0903 	bic.w	r9, r3, #3
 8005e42:	45a9      	cmp	r9, r5
 8005e44:	d303      	bcc.n	8005e4e <_malloc_r+0x1c2>
 8005e46:	eba9 0305 	sub.w	r3, r9, r5
 8005e4a:	2b0f      	cmp	r3, #15
 8005e4c:	dc7b      	bgt.n	8005f46 <_malloc_r+0x2ba>
 8005e4e:	4b5e      	ldr	r3, [pc, #376]	; (8005fc8 <_malloc_r+0x33c>)
 8005e50:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005fdc <_malloc_r+0x350>
 8005e54:	681a      	ldr	r2, [r3, #0]
 8005e56:	f8da 3000 	ldr.w	r3, [sl]
 8005e5a:	3301      	adds	r3, #1
 8005e5c:	eb05 0802 	add.w	r8, r5, r2
 8005e60:	f000 8148 	beq.w	80060f4 <_malloc_r+0x468>
 8005e64:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005e68:	f108 080f 	add.w	r8, r8, #15
 8005e6c:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005e70:	f028 080f 	bic.w	r8, r8, #15
 8005e74:	4641      	mov	r1, r8
 8005e76:	4630      	mov	r0, r6
 8005e78:	f000 ff08 	bl	8006c8c <_sbrk_r>
 8005e7c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005e80:	4683      	mov	fp, r0
 8005e82:	f000 8104 	beq.w	800608e <_malloc_r+0x402>
 8005e86:	eb04 0009 	add.w	r0, r4, r9
 8005e8a:	4558      	cmp	r0, fp
 8005e8c:	f200 80fd 	bhi.w	800608a <_malloc_r+0x3fe>
 8005e90:	4a4e      	ldr	r2, [pc, #312]	; (8005fcc <_malloc_r+0x340>)
 8005e92:	6813      	ldr	r3, [r2, #0]
 8005e94:	4443      	add	r3, r8
 8005e96:	6013      	str	r3, [r2, #0]
 8005e98:	f000 814d 	beq.w	8006136 <_malloc_r+0x4aa>
 8005e9c:	f8da 1000 	ldr.w	r1, [sl]
 8005ea0:	3101      	adds	r1, #1
 8005ea2:	bf1b      	ittet	ne
 8005ea4:	ebab 0000 	subne.w	r0, fp, r0
 8005ea8:	181b      	addne	r3, r3, r0
 8005eaa:	f8ca b000 	streq.w	fp, [sl]
 8005eae:	6013      	strne	r3, [r2, #0]
 8005eb0:	f01b 0307 	ands.w	r3, fp, #7
 8005eb4:	f000 8134 	beq.w	8006120 <_malloc_r+0x494>
 8005eb8:	f1c3 0108 	rsb	r1, r3, #8
 8005ebc:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005ec0:	448b      	add	fp, r1
 8005ec2:	3308      	adds	r3, #8
 8005ec4:	44d8      	add	r8, fp
 8005ec6:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005eca:	eba3 0808 	sub.w	r8, r3, r8
 8005ece:	4641      	mov	r1, r8
 8005ed0:	4630      	mov	r0, r6
 8005ed2:	9201      	str	r2, [sp, #4]
 8005ed4:	f000 feda 	bl	8006c8c <_sbrk_r>
 8005ed8:	1c43      	adds	r3, r0, #1
 8005eda:	9a01      	ldr	r2, [sp, #4]
 8005edc:	f000 8146 	beq.w	800616c <_malloc_r+0x4e0>
 8005ee0:	eba0 010b 	sub.w	r1, r0, fp
 8005ee4:	4441      	add	r1, r8
 8005ee6:	f041 0101 	orr.w	r1, r1, #1
 8005eea:	6813      	ldr	r3, [r2, #0]
 8005eec:	f8c7 b008 	str.w	fp, [r7, #8]
 8005ef0:	4443      	add	r3, r8
 8005ef2:	42bc      	cmp	r4, r7
 8005ef4:	f8cb 1004 	str.w	r1, [fp, #4]
 8005ef8:	6013      	str	r3, [r2, #0]
 8005efa:	d015      	beq.n	8005f28 <_malloc_r+0x29c>
 8005efc:	f1b9 0f0f 	cmp.w	r9, #15
 8005f00:	f240 8130 	bls.w	8006164 <_malloc_r+0x4d8>
 8005f04:	6860      	ldr	r0, [r4, #4]
 8005f06:	f1a9 010c 	sub.w	r1, r9, #12
 8005f0a:	f021 0107 	bic.w	r1, r1, #7
 8005f0e:	f000 0001 	and.w	r0, r0, #1
 8005f12:	eb04 0c01 	add.w	ip, r4, r1
 8005f16:	4308      	orrs	r0, r1
 8005f18:	f04f 0e05 	mov.w	lr, #5
 8005f1c:	290f      	cmp	r1, #15
 8005f1e:	6060      	str	r0, [r4, #4]
 8005f20:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005f24:	f200 813a 	bhi.w	800619c <_malloc_r+0x510>
 8005f28:	4a29      	ldr	r2, [pc, #164]	; (8005fd0 <_malloc_r+0x344>)
 8005f2a:	482a      	ldr	r0, [pc, #168]	; (8005fd4 <_malloc_r+0x348>)
 8005f2c:	6811      	ldr	r1, [r2, #0]
 8005f2e:	68bc      	ldr	r4, [r7, #8]
 8005f30:	428b      	cmp	r3, r1
 8005f32:	6801      	ldr	r1, [r0, #0]
 8005f34:	bf88      	it	hi
 8005f36:	6013      	strhi	r3, [r2, #0]
 8005f38:	6862      	ldr	r2, [r4, #4]
 8005f3a:	428b      	cmp	r3, r1
 8005f3c:	f022 0203 	bic.w	r2, r2, #3
 8005f40:	bf88      	it	hi
 8005f42:	6003      	strhi	r3, [r0, #0]
 8005f44:	e0a7      	b.n	8006096 <_malloc_r+0x40a>
 8005f46:	1962      	adds	r2, r4, r5
 8005f48:	f043 0301 	orr.w	r3, r3, #1
 8005f4c:	f045 0501 	orr.w	r5, r5, #1
 8005f50:	6065      	str	r5, [r4, #4]
 8005f52:	4630      	mov	r0, r6
 8005f54:	60ba      	str	r2, [r7, #8]
 8005f56:	6053      	str	r3, [r2, #4]
 8005f58:	f000 f9a6 	bl	80062a8 <__malloc_unlock>
 8005f5c:	3408      	adds	r4, #8
 8005f5e:	4620      	mov	r0, r4
 8005f60:	b003      	add	sp, #12
 8005f62:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f66:	4423      	add	r3, r4
 8005f68:	68e1      	ldr	r1, [r4, #12]
 8005f6a:	685a      	ldr	r2, [r3, #4]
 8005f6c:	68a5      	ldr	r5, [r4, #8]
 8005f6e:	f042 0201 	orr.w	r2, r2, #1
 8005f72:	60e9      	str	r1, [r5, #12]
 8005f74:	4630      	mov	r0, r6
 8005f76:	608d      	str	r5, [r1, #8]
 8005f78:	605a      	str	r2, [r3, #4]
 8005f7a:	f000 f995 	bl	80062a8 <__malloc_unlock>
 8005f7e:	3408      	adds	r4, #8
 8005f80:	4620      	mov	r0, r4
 8005f82:	b003      	add	sp, #12
 8005f84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005f88:	68dc      	ldr	r4, [r3, #12]
 8005f8a:	42a3      	cmp	r3, r4
 8005f8c:	bf08      	it	eq
 8005f8e:	3002      	addeq	r0, #2
 8005f90:	f43f aed6 	beq.w	8005d40 <_malloc_r+0xb4>
 8005f94:	e692      	b.n	8005cbc <_malloc_r+0x30>
 8005f96:	2b14      	cmp	r3, #20
 8005f98:	d971      	bls.n	800607e <_malloc_r+0x3f2>
 8005f9a:	2b54      	cmp	r3, #84	; 0x54
 8005f9c:	f200 80ad 	bhi.w	80060fa <_malloc_r+0x46e>
 8005fa0:	0b2b      	lsrs	r3, r5, #12
 8005fa2:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005fa6:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005faa:	00c3      	lsls	r3, r0, #3
 8005fac:	e6b3      	b.n	8005d16 <_malloc_r+0x8a>
 8005fae:	4423      	add	r3, r4
 8005fb0:	4630      	mov	r0, r6
 8005fb2:	685a      	ldr	r2, [r3, #4]
 8005fb4:	f042 0201 	orr.w	r2, r2, #1
 8005fb8:	605a      	str	r2, [r3, #4]
 8005fba:	3408      	adds	r4, #8
 8005fbc:	f000 f974 	bl	80062a8 <__malloc_unlock>
 8005fc0:	e68c      	b.n	8005cdc <_malloc_r+0x50>
 8005fc2:	bf00      	nop
 8005fc4:	2000044c 	.word	0x2000044c
 8005fc8:	20000a9c 	.word	0x20000a9c
 8005fcc:	20000a6c 	.word	0x20000a6c
 8005fd0:	20000a94 	.word	0x20000a94
 8005fd4:	20000a98 	.word	0x20000a98
 8005fd8:	20000454 	.word	0x20000454
 8005fdc:	20000854 	.word	0x20000854
 8005fe0:	1961      	adds	r1, r4, r5
 8005fe2:	f045 0e01 	orr.w	lr, r5, #1
 8005fe6:	f042 0501 	orr.w	r5, r2, #1
 8005fea:	f8c4 e004 	str.w	lr, [r4, #4]
 8005fee:	4630      	mov	r0, r6
 8005ff0:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005ff4:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005ff8:	604d      	str	r5, [r1, #4]
 8005ffa:	50e2      	str	r2, [r4, r3]
 8005ffc:	f000 f954 	bl	80062a8 <__malloc_unlock>
 8006000:	3408      	adds	r4, #8
 8006002:	e66b      	b.n	8005cdc <_malloc_r+0x50>
 8006004:	08e8      	lsrs	r0, r5, #3
 8006006:	f105 0308 	add.w	r3, r5, #8
 800600a:	e64f      	b.n	8005cac <_malloc_r+0x20>
 800600c:	f108 0801 	add.w	r8, r8, #1
 8006010:	f018 0f03 	tst.w	r8, #3
 8006014:	f10e 0e08 	add.w	lr, lr, #8
 8006018:	f47f aed0 	bne.w	8005dbc <_malloc_r+0x130>
 800601c:	e052      	b.n	80060c4 <_malloc_r+0x438>
 800601e:	4419      	add	r1, r3
 8006020:	461c      	mov	r4, r3
 8006022:	684a      	ldr	r2, [r1, #4]
 8006024:	68db      	ldr	r3, [r3, #12]
 8006026:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800602a:	f042 0201 	orr.w	r2, r2, #1
 800602e:	604a      	str	r2, [r1, #4]
 8006030:	4630      	mov	r0, r6
 8006032:	60eb      	str	r3, [r5, #12]
 8006034:	609d      	str	r5, [r3, #8]
 8006036:	f000 f937 	bl	80062a8 <__malloc_unlock>
 800603a:	e64f      	b.n	8005cdc <_malloc_r+0x50>
 800603c:	0a5a      	lsrs	r2, r3, #9
 800603e:	2a04      	cmp	r2, #4
 8006040:	d935      	bls.n	80060ae <_malloc_r+0x422>
 8006042:	2a14      	cmp	r2, #20
 8006044:	d86f      	bhi.n	8006126 <_malloc_r+0x49a>
 8006046:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800604a:	00c9      	lsls	r1, r1, #3
 800604c:	325b      	adds	r2, #91	; 0x5b
 800604e:	eb07 0e01 	add.w	lr, r7, r1
 8006052:	5879      	ldr	r1, [r7, r1]
 8006054:	f1ae 0e08 	sub.w	lr, lr, #8
 8006058:	458e      	cmp	lr, r1
 800605a:	d058      	beq.n	800610e <_malloc_r+0x482>
 800605c:	684a      	ldr	r2, [r1, #4]
 800605e:	f022 0203 	bic.w	r2, r2, #3
 8006062:	429a      	cmp	r2, r3
 8006064:	d902      	bls.n	800606c <_malloc_r+0x3e0>
 8006066:	6889      	ldr	r1, [r1, #8]
 8006068:	458e      	cmp	lr, r1
 800606a:	d1f7      	bne.n	800605c <_malloc_r+0x3d0>
 800606c:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8006070:	687b      	ldr	r3, [r7, #4]
 8006072:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8006076:	f8ce 4008 	str.w	r4, [lr, #8]
 800607a:	60cc      	str	r4, [r1, #12]
 800607c:	e68c      	b.n	8005d98 <_malloc_r+0x10c>
 800607e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8006082:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8006086:	00c3      	lsls	r3, r0, #3
 8006088:	e645      	b.n	8005d16 <_malloc_r+0x8a>
 800608a:	42bc      	cmp	r4, r7
 800608c:	d072      	beq.n	8006174 <_malloc_r+0x4e8>
 800608e:	68bc      	ldr	r4, [r7, #8]
 8006090:	6862      	ldr	r2, [r4, #4]
 8006092:	f022 0203 	bic.w	r2, r2, #3
 8006096:	4295      	cmp	r5, r2
 8006098:	eba2 0305 	sub.w	r3, r2, r5
 800609c:	d802      	bhi.n	80060a4 <_malloc_r+0x418>
 800609e:	2b0f      	cmp	r3, #15
 80060a0:	f73f af51 	bgt.w	8005f46 <_malloc_r+0x2ba>
 80060a4:	4630      	mov	r0, r6
 80060a6:	f000 f8ff 	bl	80062a8 <__malloc_unlock>
 80060aa:	2400      	movs	r4, #0
 80060ac:	e616      	b.n	8005cdc <_malloc_r+0x50>
 80060ae:	099a      	lsrs	r2, r3, #6
 80060b0:	f102 0139 	add.w	r1, r2, #57	; 0x39
 80060b4:	00c9      	lsls	r1, r1, #3
 80060b6:	3238      	adds	r2, #56	; 0x38
 80060b8:	e7c9      	b.n	800604e <_malloc_r+0x3c2>
 80060ba:	f8d9 9000 	ldr.w	r9, [r9]
 80060be:	4599      	cmp	r9, r3
 80060c0:	f040 8083 	bne.w	80061ca <_malloc_r+0x53e>
 80060c4:	f010 0f03 	tst.w	r0, #3
 80060c8:	f1a9 0308 	sub.w	r3, r9, #8
 80060cc:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 80060d0:	d1f3      	bne.n	80060ba <_malloc_r+0x42e>
 80060d2:	687b      	ldr	r3, [r7, #4]
 80060d4:	ea23 0304 	bic.w	r3, r3, r4
 80060d8:	607b      	str	r3, [r7, #4]
 80060da:	0064      	lsls	r4, r4, #1
 80060dc:	429c      	cmp	r4, r3
 80060de:	f63f aeac 	bhi.w	8005e3a <_malloc_r+0x1ae>
 80060e2:	b91c      	cbnz	r4, 80060ec <_malloc_r+0x460>
 80060e4:	e6a9      	b.n	8005e3a <_malloc_r+0x1ae>
 80060e6:	0064      	lsls	r4, r4, #1
 80060e8:	f108 0804 	add.w	r8, r8, #4
 80060ec:	421c      	tst	r4, r3
 80060ee:	d0fa      	beq.n	80060e6 <_malloc_r+0x45a>
 80060f0:	4640      	mov	r0, r8
 80060f2:	e65f      	b.n	8005db4 <_malloc_r+0x128>
 80060f4:	f108 0810 	add.w	r8, r8, #16
 80060f8:	e6bc      	b.n	8005e74 <_malloc_r+0x1e8>
 80060fa:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 80060fe:	d826      	bhi.n	800614e <_malloc_r+0x4c2>
 8006100:	0beb      	lsrs	r3, r5, #15
 8006102:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006106:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800610a:	00c3      	lsls	r3, r0, #3
 800610c:	e603      	b.n	8005d16 <_malloc_r+0x8a>
 800610e:	687b      	ldr	r3, [r7, #4]
 8006110:	1092      	asrs	r2, r2, #2
 8006112:	f04f 0801 	mov.w	r8, #1
 8006116:	fa08 f202 	lsl.w	r2, r8, r2
 800611a:	4313      	orrs	r3, r2
 800611c:	607b      	str	r3, [r7, #4]
 800611e:	e7a8      	b.n	8006072 <_malloc_r+0x3e6>
 8006120:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006124:	e6ce      	b.n	8005ec4 <_malloc_r+0x238>
 8006126:	2a54      	cmp	r2, #84	; 0x54
 8006128:	d829      	bhi.n	800617e <_malloc_r+0x4f2>
 800612a:	0b1a      	lsrs	r2, r3, #12
 800612c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8006130:	00c9      	lsls	r1, r1, #3
 8006132:	326e      	adds	r2, #110	; 0x6e
 8006134:	e78b      	b.n	800604e <_malloc_r+0x3c2>
 8006136:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800613a:	2900      	cmp	r1, #0
 800613c:	f47f aeae 	bne.w	8005e9c <_malloc_r+0x210>
 8006140:	eb09 0208 	add.w	r2, r9, r8
 8006144:	68b9      	ldr	r1, [r7, #8]
 8006146:	f042 0201 	orr.w	r2, r2, #1
 800614a:	604a      	str	r2, [r1, #4]
 800614c:	e6ec      	b.n	8005f28 <_malloc_r+0x29c>
 800614e:	f240 5254 	movw	r2, #1364	; 0x554
 8006152:	4293      	cmp	r3, r2
 8006154:	d81c      	bhi.n	8006190 <_malloc_r+0x504>
 8006156:	0cab      	lsrs	r3, r5, #18
 8006158:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 800615c:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006160:	00c3      	lsls	r3, r0, #3
 8006162:	e5d8      	b.n	8005d16 <_malloc_r+0x8a>
 8006164:	2301      	movs	r3, #1
 8006166:	f8cb 3004 	str.w	r3, [fp, #4]
 800616a:	e79b      	b.n	80060a4 <_malloc_r+0x418>
 800616c:	2101      	movs	r1, #1
 800616e:	f04f 0800 	mov.w	r8, #0
 8006172:	e6ba      	b.n	8005eea <_malloc_r+0x25e>
 8006174:	4a16      	ldr	r2, [pc, #88]	; (80061d0 <_malloc_r+0x544>)
 8006176:	6813      	ldr	r3, [r2, #0]
 8006178:	4443      	add	r3, r8
 800617a:	6013      	str	r3, [r2, #0]
 800617c:	e68e      	b.n	8005e9c <_malloc_r+0x210>
 800617e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8006182:	d814      	bhi.n	80061ae <_malloc_r+0x522>
 8006184:	0bda      	lsrs	r2, r3, #15
 8006186:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800618a:	00c9      	lsls	r1, r1, #3
 800618c:	3277      	adds	r2, #119	; 0x77
 800618e:	e75e      	b.n	800604e <_malloc_r+0x3c2>
 8006190:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006194:	207f      	movs	r0, #127	; 0x7f
 8006196:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800619a:	e5bc      	b.n	8005d16 <_malloc_r+0x8a>
 800619c:	f104 0108 	add.w	r1, r4, #8
 80061a0:	4630      	mov	r0, r6
 80061a2:	9201      	str	r2, [sp, #4]
 80061a4:	f7ff fa48 	bl	8005638 <_free_r>
 80061a8:	9a01      	ldr	r2, [sp, #4]
 80061aa:	6813      	ldr	r3, [r2, #0]
 80061ac:	e6bc      	b.n	8005f28 <_malloc_r+0x29c>
 80061ae:	f240 5154 	movw	r1, #1364	; 0x554
 80061b2:	428a      	cmp	r2, r1
 80061b4:	d805      	bhi.n	80061c2 <_malloc_r+0x536>
 80061b6:	0c9a      	lsrs	r2, r3, #18
 80061b8:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 80061bc:	00c9      	lsls	r1, r1, #3
 80061be:	327c      	adds	r2, #124	; 0x7c
 80061c0:	e745      	b.n	800604e <_malloc_r+0x3c2>
 80061c2:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 80061c6:	227e      	movs	r2, #126	; 0x7e
 80061c8:	e741      	b.n	800604e <_malloc_r+0x3c2>
 80061ca:	687b      	ldr	r3, [r7, #4]
 80061cc:	e785      	b.n	80060da <_malloc_r+0x44e>
 80061ce:	bf00      	nop
 80061d0:	20000a6c 	.word	0x20000a6c

080061d4 <memmove>:
 80061d4:	4288      	cmp	r0, r1
 80061d6:	b4f0      	push	{r4, r5, r6, r7}
 80061d8:	d90d      	bls.n	80061f6 <memmove+0x22>
 80061da:	188b      	adds	r3, r1, r2
 80061dc:	4283      	cmp	r3, r0
 80061de:	d90a      	bls.n	80061f6 <memmove+0x22>
 80061e0:	1884      	adds	r4, r0, r2
 80061e2:	b132      	cbz	r2, 80061f2 <memmove+0x1e>
 80061e4:	4622      	mov	r2, r4
 80061e6:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80061ea:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80061ee:	4299      	cmp	r1, r3
 80061f0:	d1f9      	bne.n	80061e6 <memmove+0x12>
 80061f2:	bcf0      	pop	{r4, r5, r6, r7}
 80061f4:	4770      	bx	lr
 80061f6:	2a0f      	cmp	r2, #15
 80061f8:	d949      	bls.n	800628e <memmove+0xba>
 80061fa:	ea40 0301 	orr.w	r3, r0, r1
 80061fe:	079b      	lsls	r3, r3, #30
 8006200:	d147      	bne.n	8006292 <memmove+0xbe>
 8006202:	f1a2 0310 	sub.w	r3, r2, #16
 8006206:	091b      	lsrs	r3, r3, #4
 8006208:	f101 0720 	add.w	r7, r1, #32
 800620c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006210:	f101 0410 	add.w	r4, r1, #16
 8006214:	f100 0510 	add.w	r5, r0, #16
 8006218:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800621c:	f845 6c10 	str.w	r6, [r5, #-16]
 8006220:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006224:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006228:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800622c:	f845 6c08 	str.w	r6, [r5, #-8]
 8006230:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006234:	f845 6c04 	str.w	r6, [r5, #-4]
 8006238:	3410      	adds	r4, #16
 800623a:	42bc      	cmp	r4, r7
 800623c:	f105 0510 	add.w	r5, r5, #16
 8006240:	d1ea      	bne.n	8006218 <memmove+0x44>
 8006242:	3301      	adds	r3, #1
 8006244:	f002 050f 	and.w	r5, r2, #15
 8006248:	011b      	lsls	r3, r3, #4
 800624a:	2d03      	cmp	r5, #3
 800624c:	4419      	add	r1, r3
 800624e:	4403      	add	r3, r0
 8006250:	d921      	bls.n	8006296 <memmove+0xc2>
 8006252:	1f1f      	subs	r7, r3, #4
 8006254:	460e      	mov	r6, r1
 8006256:	462c      	mov	r4, r5
 8006258:	3c04      	subs	r4, #4
 800625a:	f856 cb04 	ldr.w	ip, [r6], #4
 800625e:	f847 cf04 	str.w	ip, [r7, #4]!
 8006262:	2c03      	cmp	r4, #3
 8006264:	d8f8      	bhi.n	8006258 <memmove+0x84>
 8006266:	1f2c      	subs	r4, r5, #4
 8006268:	f024 0403 	bic.w	r4, r4, #3
 800626c:	3404      	adds	r4, #4
 800626e:	4423      	add	r3, r4
 8006270:	4421      	add	r1, r4
 8006272:	f002 0203 	and.w	r2, r2, #3
 8006276:	2a00      	cmp	r2, #0
 8006278:	d0bb      	beq.n	80061f2 <memmove+0x1e>
 800627a:	3b01      	subs	r3, #1
 800627c:	440a      	add	r2, r1
 800627e:	f811 4b01 	ldrb.w	r4, [r1], #1
 8006282:	f803 4f01 	strb.w	r4, [r3, #1]!
 8006286:	4291      	cmp	r1, r2
 8006288:	d1f9      	bne.n	800627e <memmove+0xaa>
 800628a:	bcf0      	pop	{r4, r5, r6, r7}
 800628c:	4770      	bx	lr
 800628e:	4603      	mov	r3, r0
 8006290:	e7f1      	b.n	8006276 <memmove+0xa2>
 8006292:	4603      	mov	r3, r0
 8006294:	e7f1      	b.n	800627a <memmove+0xa6>
 8006296:	462a      	mov	r2, r5
 8006298:	e7ed      	b.n	8006276 <memmove+0xa2>
 800629a:	bf00      	nop

0800629c <__malloc_lock>:
 800629c:	4801      	ldr	r0, [pc, #4]	; (80062a4 <__malloc_lock+0x8>)
 800629e:	f7ff bc79 	b.w	8005b94 <__retarget_lock_acquire_recursive>
 80062a2:	bf00      	nop
 80062a4:	20000c4c 	.word	0x20000c4c

080062a8 <__malloc_unlock>:
 80062a8:	4801      	ldr	r0, [pc, #4]	; (80062b0 <__malloc_unlock+0x8>)
 80062aa:	f7ff bc75 	b.w	8005b98 <__retarget_lock_release_recursive>
 80062ae:	bf00      	nop
 80062b0:	20000c4c 	.word	0x20000c4c

080062b4 <_Balloc>:
 80062b4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80062b6:	b570      	push	{r4, r5, r6, lr}
 80062b8:	4605      	mov	r5, r0
 80062ba:	460c      	mov	r4, r1
 80062bc:	b14b      	cbz	r3, 80062d2 <_Balloc+0x1e>
 80062be:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80062c2:	b180      	cbz	r0, 80062e6 <_Balloc+0x32>
 80062c4:	6802      	ldr	r2, [r0, #0]
 80062c6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80062ca:	2300      	movs	r3, #0
 80062cc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80062d0:	bd70      	pop	{r4, r5, r6, pc}
 80062d2:	2221      	movs	r2, #33	; 0x21
 80062d4:	2104      	movs	r1, #4
 80062d6:	f000 fe1d 	bl	8006f14 <_calloc_r>
 80062da:	4603      	mov	r3, r0
 80062dc:	64e8      	str	r0, [r5, #76]	; 0x4c
 80062de:	2800      	cmp	r0, #0
 80062e0:	d1ed      	bne.n	80062be <_Balloc+0xa>
 80062e2:	2000      	movs	r0, #0
 80062e4:	bd70      	pop	{r4, r5, r6, pc}
 80062e6:	2101      	movs	r1, #1
 80062e8:	fa01 f604 	lsl.w	r6, r1, r4
 80062ec:	1d72      	adds	r2, r6, #5
 80062ee:	4628      	mov	r0, r5
 80062f0:	0092      	lsls	r2, r2, #2
 80062f2:	f000 fe0f 	bl	8006f14 <_calloc_r>
 80062f6:	2800      	cmp	r0, #0
 80062f8:	d0f3      	beq.n	80062e2 <_Balloc+0x2e>
 80062fa:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80062fe:	e7e4      	b.n	80062ca <_Balloc+0x16>

08006300 <_Bfree>:
 8006300:	b131      	cbz	r1, 8006310 <_Bfree+0x10>
 8006302:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006304:	684a      	ldr	r2, [r1, #4]
 8006306:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800630a:	6008      	str	r0, [r1, #0]
 800630c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006310:	4770      	bx	lr
 8006312:	bf00      	nop

08006314 <__multadd>:
 8006314:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006316:	690c      	ldr	r4, [r1, #16]
 8006318:	b083      	sub	sp, #12
 800631a:	460d      	mov	r5, r1
 800631c:	4606      	mov	r6, r0
 800631e:	f101 0c14 	add.w	ip, r1, #20
 8006322:	2700      	movs	r7, #0
 8006324:	f8dc 0000 	ldr.w	r0, [ip]
 8006328:	b281      	uxth	r1, r0
 800632a:	fb02 3301 	mla	r3, r2, r1, r3
 800632e:	0c01      	lsrs	r1, r0, #16
 8006330:	0c18      	lsrs	r0, r3, #16
 8006332:	fb02 0101 	mla	r1, r2, r1, r0
 8006336:	b29b      	uxth	r3, r3
 8006338:	3701      	adds	r7, #1
 800633a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800633e:	42bc      	cmp	r4, r7
 8006340:	f84c 3b04 	str.w	r3, [ip], #4
 8006344:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8006348:	dcec      	bgt.n	8006324 <__multadd+0x10>
 800634a:	b13b      	cbz	r3, 800635c <__multadd+0x48>
 800634c:	68aa      	ldr	r2, [r5, #8]
 800634e:	42a2      	cmp	r2, r4
 8006350:	dd07      	ble.n	8006362 <__multadd+0x4e>
 8006352:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8006356:	3401      	adds	r4, #1
 8006358:	6153      	str	r3, [r2, #20]
 800635a:	612c      	str	r4, [r5, #16]
 800635c:	4628      	mov	r0, r5
 800635e:	b003      	add	sp, #12
 8006360:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8006362:	6869      	ldr	r1, [r5, #4]
 8006364:	9301      	str	r3, [sp, #4]
 8006366:	3101      	adds	r1, #1
 8006368:	4630      	mov	r0, r6
 800636a:	f7ff ffa3 	bl	80062b4 <_Balloc>
 800636e:	692a      	ldr	r2, [r5, #16]
 8006370:	3202      	adds	r2, #2
 8006372:	f105 010c 	add.w	r1, r5, #12
 8006376:	4607      	mov	r7, r0
 8006378:	0092      	lsls	r2, r2, #2
 800637a:	300c      	adds	r0, #12
 800637c:	f7fa f8c0 	bl	8000500 <memcpy>
 8006380:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8006382:	6869      	ldr	r1, [r5, #4]
 8006384:	9b01      	ldr	r3, [sp, #4]
 8006386:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800638a:	6028      	str	r0, [r5, #0]
 800638c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006390:	463d      	mov	r5, r7
 8006392:	e7de      	b.n	8006352 <__multadd+0x3e>

08006394 <__hi0bits>:
 8006394:	0c02      	lsrs	r2, r0, #16
 8006396:	0412      	lsls	r2, r2, #16
 8006398:	4603      	mov	r3, r0
 800639a:	b9c2      	cbnz	r2, 80063ce <__hi0bits+0x3a>
 800639c:	0403      	lsls	r3, r0, #16
 800639e:	2010      	movs	r0, #16
 80063a0:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 80063a4:	bf04      	itt	eq
 80063a6:	021b      	lsleq	r3, r3, #8
 80063a8:	3008      	addeq	r0, #8
 80063aa:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 80063ae:	bf04      	itt	eq
 80063b0:	011b      	lsleq	r3, r3, #4
 80063b2:	3004      	addeq	r0, #4
 80063b4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80063b8:	bf04      	itt	eq
 80063ba:	009b      	lsleq	r3, r3, #2
 80063bc:	3002      	addeq	r0, #2
 80063be:	2b00      	cmp	r3, #0
 80063c0:	db04      	blt.n	80063cc <__hi0bits+0x38>
 80063c2:	005b      	lsls	r3, r3, #1
 80063c4:	d501      	bpl.n	80063ca <__hi0bits+0x36>
 80063c6:	3001      	adds	r0, #1
 80063c8:	4770      	bx	lr
 80063ca:	2020      	movs	r0, #32
 80063cc:	4770      	bx	lr
 80063ce:	2000      	movs	r0, #0
 80063d0:	e7e6      	b.n	80063a0 <__hi0bits+0xc>
 80063d2:	bf00      	nop

080063d4 <__lo0bits>:
 80063d4:	6803      	ldr	r3, [r0, #0]
 80063d6:	f013 0207 	ands.w	r2, r3, #7
 80063da:	4601      	mov	r1, r0
 80063dc:	d007      	beq.n	80063ee <__lo0bits+0x1a>
 80063de:	07da      	lsls	r2, r3, #31
 80063e0:	d41f      	bmi.n	8006422 <__lo0bits+0x4e>
 80063e2:	0798      	lsls	r0, r3, #30
 80063e4:	d51f      	bpl.n	8006426 <__lo0bits+0x52>
 80063e6:	085b      	lsrs	r3, r3, #1
 80063e8:	600b      	str	r3, [r1, #0]
 80063ea:	2001      	movs	r0, #1
 80063ec:	4770      	bx	lr
 80063ee:	b298      	uxth	r0, r3
 80063f0:	b1a0      	cbz	r0, 800641c <__lo0bits+0x48>
 80063f2:	4610      	mov	r0, r2
 80063f4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80063f8:	bf04      	itt	eq
 80063fa:	0a1b      	lsreq	r3, r3, #8
 80063fc:	3008      	addeq	r0, #8
 80063fe:	071a      	lsls	r2, r3, #28
 8006400:	bf04      	itt	eq
 8006402:	091b      	lsreq	r3, r3, #4
 8006404:	3004      	addeq	r0, #4
 8006406:	079a      	lsls	r2, r3, #30
 8006408:	bf04      	itt	eq
 800640a:	089b      	lsreq	r3, r3, #2
 800640c:	3002      	addeq	r0, #2
 800640e:	07da      	lsls	r2, r3, #31
 8006410:	d402      	bmi.n	8006418 <__lo0bits+0x44>
 8006412:	085b      	lsrs	r3, r3, #1
 8006414:	d00b      	beq.n	800642e <__lo0bits+0x5a>
 8006416:	3001      	adds	r0, #1
 8006418:	600b      	str	r3, [r1, #0]
 800641a:	4770      	bx	lr
 800641c:	0c1b      	lsrs	r3, r3, #16
 800641e:	2010      	movs	r0, #16
 8006420:	e7e8      	b.n	80063f4 <__lo0bits+0x20>
 8006422:	2000      	movs	r0, #0
 8006424:	4770      	bx	lr
 8006426:	089b      	lsrs	r3, r3, #2
 8006428:	600b      	str	r3, [r1, #0]
 800642a:	2002      	movs	r0, #2
 800642c:	4770      	bx	lr
 800642e:	2020      	movs	r0, #32
 8006430:	4770      	bx	lr
 8006432:	bf00      	nop

08006434 <__i2b>:
 8006434:	b510      	push	{r4, lr}
 8006436:	460c      	mov	r4, r1
 8006438:	2101      	movs	r1, #1
 800643a:	f7ff ff3b 	bl	80062b4 <_Balloc>
 800643e:	2201      	movs	r2, #1
 8006440:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8006444:	bd10      	pop	{r4, pc}
 8006446:	bf00      	nop

08006448 <__multiply>:
 8006448:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800644c:	690e      	ldr	r6, [r1, #16]
 800644e:	6914      	ldr	r4, [r2, #16]
 8006450:	42a6      	cmp	r6, r4
 8006452:	b083      	sub	sp, #12
 8006454:	460f      	mov	r7, r1
 8006456:	4615      	mov	r5, r2
 8006458:	da04      	bge.n	8006464 <__multiply+0x1c>
 800645a:	4632      	mov	r2, r6
 800645c:	462f      	mov	r7, r5
 800645e:	4626      	mov	r6, r4
 8006460:	460d      	mov	r5, r1
 8006462:	4614      	mov	r4, r2
 8006464:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006468:	eb06 0804 	add.w	r8, r6, r4
 800646c:	4543      	cmp	r3, r8
 800646e:	bfb8      	it	lt
 8006470:	3101      	addlt	r1, #1
 8006472:	f7ff ff1f 	bl	80062b4 <_Balloc>
 8006476:	f100 0914 	add.w	r9, r0, #20
 800647a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800647e:	45f1      	cmp	r9, lr
 8006480:	9000      	str	r0, [sp, #0]
 8006482:	d205      	bcs.n	8006490 <__multiply+0x48>
 8006484:	464b      	mov	r3, r9
 8006486:	2200      	movs	r2, #0
 8006488:	f843 2b04 	str.w	r2, [r3], #4
 800648c:	459e      	cmp	lr, r3
 800648e:	d8fb      	bhi.n	8006488 <__multiply+0x40>
 8006490:	f105 0a14 	add.w	sl, r5, #20
 8006494:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006498:	f107 0314 	add.w	r3, r7, #20
 800649c:	45a2      	cmp	sl, r4
 800649e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 80064a2:	d261      	bcs.n	8006568 <__multiply+0x120>
 80064a4:	1b64      	subs	r4, r4, r5
 80064a6:	3c15      	subs	r4, #21
 80064a8:	f024 0403 	bic.w	r4, r4, #3
 80064ac:	f8cd e004 	str.w	lr, [sp, #4]
 80064b0:	44a2      	add	sl, r4
 80064b2:	f105 0210 	add.w	r2, r5, #16
 80064b6:	469e      	mov	lr, r3
 80064b8:	e005      	b.n	80064c6 <__multiply+0x7e>
 80064ba:	0c2d      	lsrs	r5, r5, #16
 80064bc:	d12b      	bne.n	8006516 <__multiply+0xce>
 80064be:	4592      	cmp	sl, r2
 80064c0:	f109 0904 	add.w	r9, r9, #4
 80064c4:	d04e      	beq.n	8006564 <__multiply+0x11c>
 80064c6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80064ca:	fa1f fb85 	uxth.w	fp, r5
 80064ce:	f1bb 0f00 	cmp.w	fp, #0
 80064d2:	d0f2      	beq.n	80064ba <__multiply+0x72>
 80064d4:	4677      	mov	r7, lr
 80064d6:	464e      	mov	r6, r9
 80064d8:	2000      	movs	r0, #0
 80064da:	e000      	b.n	80064de <__multiply+0x96>
 80064dc:	4626      	mov	r6, r4
 80064de:	f857 1b04 	ldr.w	r1, [r7], #4
 80064e2:	6834      	ldr	r4, [r6, #0]
 80064e4:	b28b      	uxth	r3, r1
 80064e6:	b2a5      	uxth	r5, r4
 80064e8:	0c09      	lsrs	r1, r1, #16
 80064ea:	0c24      	lsrs	r4, r4, #16
 80064ec:	fb0b 5303 	mla	r3, fp, r3, r5
 80064f0:	4403      	add	r3, r0
 80064f2:	fb0b 4001 	mla	r0, fp, r1, r4
 80064f6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80064fa:	4634      	mov	r4, r6
 80064fc:	b29b      	uxth	r3, r3
 80064fe:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006502:	45bc      	cmp	ip, r7
 8006504:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006508:	f844 3b04 	str.w	r3, [r4], #4
 800650c:	d8e6      	bhi.n	80064dc <__multiply+0x94>
 800650e:	6070      	str	r0, [r6, #4]
 8006510:	6815      	ldr	r5, [r2, #0]
 8006512:	0c2d      	lsrs	r5, r5, #16
 8006514:	d0d3      	beq.n	80064be <__multiply+0x76>
 8006516:	f8d9 3000 	ldr.w	r3, [r9]
 800651a:	4676      	mov	r6, lr
 800651c:	4618      	mov	r0, r3
 800651e:	46cb      	mov	fp, r9
 8006520:	2100      	movs	r1, #0
 8006522:	e000      	b.n	8006526 <__multiply+0xde>
 8006524:	46a3      	mov	fp, r4
 8006526:	8834      	ldrh	r4, [r6, #0]
 8006528:	0c00      	lsrs	r0, r0, #16
 800652a:	fb05 0004 	mla	r0, r5, r4, r0
 800652e:	4401      	add	r1, r0
 8006530:	b29b      	uxth	r3, r3
 8006532:	465c      	mov	r4, fp
 8006534:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006538:	f844 3b04 	str.w	r3, [r4], #4
 800653c:	f856 3b04 	ldr.w	r3, [r6], #4
 8006540:	f8db 0004 	ldr.w	r0, [fp, #4]
 8006544:	0c1b      	lsrs	r3, r3, #16
 8006546:	b287      	uxth	r7, r0
 8006548:	fb05 7303 	mla	r3, r5, r3, r7
 800654c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8006550:	45b4      	cmp	ip, r6
 8006552:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8006556:	d8e5      	bhi.n	8006524 <__multiply+0xdc>
 8006558:	4592      	cmp	sl, r2
 800655a:	f8cb 3004 	str.w	r3, [fp, #4]
 800655e:	f109 0904 	add.w	r9, r9, #4
 8006562:	d1b0      	bne.n	80064c6 <__multiply+0x7e>
 8006564:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006568:	f1b8 0f00 	cmp.w	r8, #0
 800656c:	dd0b      	ble.n	8006586 <__multiply+0x13e>
 800656e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8006572:	f1ae 0e04 	sub.w	lr, lr, #4
 8006576:	b11b      	cbz	r3, 8006580 <__multiply+0x138>
 8006578:	e005      	b.n	8006586 <__multiply+0x13e>
 800657a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800657e:	b913      	cbnz	r3, 8006586 <__multiply+0x13e>
 8006580:	f1b8 0801 	subs.w	r8, r8, #1
 8006584:	d1f9      	bne.n	800657a <__multiply+0x132>
 8006586:	9800      	ldr	r0, [sp, #0]
 8006588:	f8c0 8010 	str.w	r8, [r0, #16]
 800658c:	b003      	add	sp, #12
 800658e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006592:	bf00      	nop

08006594 <__pow5mult>:
 8006594:	f012 0303 	ands.w	r3, r2, #3
 8006598:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800659c:	4614      	mov	r4, r2
 800659e:	4607      	mov	r7, r0
 80065a0:	d12e      	bne.n	8006600 <__pow5mult+0x6c>
 80065a2:	460d      	mov	r5, r1
 80065a4:	10a4      	asrs	r4, r4, #2
 80065a6:	d01c      	beq.n	80065e2 <__pow5mult+0x4e>
 80065a8:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 80065aa:	b396      	cbz	r6, 8006612 <__pow5mult+0x7e>
 80065ac:	07e3      	lsls	r3, r4, #31
 80065ae:	f04f 0800 	mov.w	r8, #0
 80065b2:	d406      	bmi.n	80065c2 <__pow5mult+0x2e>
 80065b4:	1064      	asrs	r4, r4, #1
 80065b6:	d014      	beq.n	80065e2 <__pow5mult+0x4e>
 80065b8:	6830      	ldr	r0, [r6, #0]
 80065ba:	b1a8      	cbz	r0, 80065e8 <__pow5mult+0x54>
 80065bc:	4606      	mov	r6, r0
 80065be:	07e3      	lsls	r3, r4, #31
 80065c0:	d5f8      	bpl.n	80065b4 <__pow5mult+0x20>
 80065c2:	4632      	mov	r2, r6
 80065c4:	4629      	mov	r1, r5
 80065c6:	4638      	mov	r0, r7
 80065c8:	f7ff ff3e 	bl	8006448 <__multiply>
 80065cc:	b1b5      	cbz	r5, 80065fc <__pow5mult+0x68>
 80065ce:	686a      	ldr	r2, [r5, #4]
 80065d0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80065d2:	1064      	asrs	r4, r4, #1
 80065d4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80065d8:	6029      	str	r1, [r5, #0]
 80065da:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80065de:	4605      	mov	r5, r0
 80065e0:	d1ea      	bne.n	80065b8 <__pow5mult+0x24>
 80065e2:	4628      	mov	r0, r5
 80065e4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80065e8:	4632      	mov	r2, r6
 80065ea:	4631      	mov	r1, r6
 80065ec:	4638      	mov	r0, r7
 80065ee:	f7ff ff2b 	bl	8006448 <__multiply>
 80065f2:	6030      	str	r0, [r6, #0]
 80065f4:	f8c0 8000 	str.w	r8, [r0]
 80065f8:	4606      	mov	r6, r0
 80065fa:	e7e0      	b.n	80065be <__pow5mult+0x2a>
 80065fc:	4605      	mov	r5, r0
 80065fe:	e7d9      	b.n	80065b4 <__pow5mult+0x20>
 8006600:	3b01      	subs	r3, #1
 8006602:	4a0b      	ldr	r2, [pc, #44]	; (8006630 <__pow5mult+0x9c>)
 8006604:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006608:	2300      	movs	r3, #0
 800660a:	f7ff fe83 	bl	8006314 <__multadd>
 800660e:	4605      	mov	r5, r0
 8006610:	e7c8      	b.n	80065a4 <__pow5mult+0x10>
 8006612:	2101      	movs	r1, #1
 8006614:	4638      	mov	r0, r7
 8006616:	f7ff fe4d 	bl	80062b4 <_Balloc>
 800661a:	f240 2371 	movw	r3, #625	; 0x271
 800661e:	6143      	str	r3, [r0, #20]
 8006620:	2201      	movs	r2, #1
 8006622:	2300      	movs	r3, #0
 8006624:	6102      	str	r2, [r0, #16]
 8006626:	4606      	mov	r6, r0
 8006628:	64b8      	str	r0, [r7, #72]	; 0x48
 800662a:	6003      	str	r3, [r0, #0]
 800662c:	e7be      	b.n	80065ac <__pow5mult+0x18>
 800662e:	bf00      	nop
 8006630:	08007738 	.word	0x08007738

08006634 <__lshift>:
 8006634:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006638:	4691      	mov	r9, r2
 800663a:	690a      	ldr	r2, [r1, #16]
 800663c:	460e      	mov	r6, r1
 800663e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8006642:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8006646:	eb04 0802 	add.w	r8, r4, r2
 800664a:	f108 0501 	add.w	r5, r8, #1
 800664e:	429d      	cmp	r5, r3
 8006650:	4607      	mov	r7, r0
 8006652:	dd04      	ble.n	800665e <__lshift+0x2a>
 8006654:	005b      	lsls	r3, r3, #1
 8006656:	429d      	cmp	r5, r3
 8006658:	f101 0101 	add.w	r1, r1, #1
 800665c:	dcfa      	bgt.n	8006654 <__lshift+0x20>
 800665e:	4638      	mov	r0, r7
 8006660:	f7ff fe28 	bl	80062b4 <_Balloc>
 8006664:	2c00      	cmp	r4, #0
 8006666:	f100 0314 	add.w	r3, r0, #20
 800666a:	dd37      	ble.n	80066dc <__lshift+0xa8>
 800666c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006670:	2200      	movs	r2, #0
 8006672:	f843 2b04 	str.w	r2, [r3], #4
 8006676:	428b      	cmp	r3, r1
 8006678:	d1fb      	bne.n	8006672 <__lshift+0x3e>
 800667a:	6934      	ldr	r4, [r6, #16]
 800667c:	f106 0314 	add.w	r3, r6, #20
 8006680:	f019 091f 	ands.w	r9, r9, #31
 8006684:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006688:	d020      	beq.n	80066cc <__lshift+0x98>
 800668a:	f1c9 0e20 	rsb	lr, r9, #32
 800668e:	2200      	movs	r2, #0
 8006690:	e000      	b.n	8006694 <__lshift+0x60>
 8006692:	4651      	mov	r1, sl
 8006694:	681c      	ldr	r4, [r3, #0]
 8006696:	468a      	mov	sl, r1
 8006698:	fa04 f409 	lsl.w	r4, r4, r9
 800669c:	4314      	orrs	r4, r2
 800669e:	f84a 4b04 	str.w	r4, [sl], #4
 80066a2:	f853 2b04 	ldr.w	r2, [r3], #4
 80066a6:	4563      	cmp	r3, ip
 80066a8:	fa22 f20e 	lsr.w	r2, r2, lr
 80066ac:	d3f1      	bcc.n	8006692 <__lshift+0x5e>
 80066ae:	604a      	str	r2, [r1, #4]
 80066b0:	b10a      	cbz	r2, 80066b6 <__lshift+0x82>
 80066b2:	f108 0502 	add.w	r5, r8, #2
 80066b6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80066b8:	6872      	ldr	r2, [r6, #4]
 80066ba:	3d01      	subs	r5, #1
 80066bc:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80066c0:	6105      	str	r5, [r0, #16]
 80066c2:	6031      	str	r1, [r6, #0]
 80066c4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80066c8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80066cc:	3904      	subs	r1, #4
 80066ce:	f853 2b04 	ldr.w	r2, [r3], #4
 80066d2:	f841 2f04 	str.w	r2, [r1, #4]!
 80066d6:	459c      	cmp	ip, r3
 80066d8:	d8f9      	bhi.n	80066ce <__lshift+0x9a>
 80066da:	e7ec      	b.n	80066b6 <__lshift+0x82>
 80066dc:	4619      	mov	r1, r3
 80066de:	e7cc      	b.n	800667a <__lshift+0x46>

080066e0 <__mcmp>:
 80066e0:	b430      	push	{r4, r5}
 80066e2:	690b      	ldr	r3, [r1, #16]
 80066e4:	4605      	mov	r5, r0
 80066e6:	6900      	ldr	r0, [r0, #16]
 80066e8:	1ac0      	subs	r0, r0, r3
 80066ea:	d10f      	bne.n	800670c <__mcmp+0x2c>
 80066ec:	009b      	lsls	r3, r3, #2
 80066ee:	3514      	adds	r5, #20
 80066f0:	3114      	adds	r1, #20
 80066f2:	4419      	add	r1, r3
 80066f4:	442b      	add	r3, r5
 80066f6:	e001      	b.n	80066fc <__mcmp+0x1c>
 80066f8:	429d      	cmp	r5, r3
 80066fa:	d207      	bcs.n	800670c <__mcmp+0x2c>
 80066fc:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006700:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006704:	4294      	cmp	r4, r2
 8006706:	d0f7      	beq.n	80066f8 <__mcmp+0x18>
 8006708:	d302      	bcc.n	8006710 <__mcmp+0x30>
 800670a:	2001      	movs	r0, #1
 800670c:	bc30      	pop	{r4, r5}
 800670e:	4770      	bx	lr
 8006710:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006714:	e7fa      	b.n	800670c <__mcmp+0x2c>
 8006716:	bf00      	nop

08006718 <__mdiff>:
 8006718:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800671c:	6913      	ldr	r3, [r2, #16]
 800671e:	690d      	ldr	r5, [r1, #16]
 8006720:	1aed      	subs	r5, r5, r3
 8006722:	2d00      	cmp	r5, #0
 8006724:	460e      	mov	r6, r1
 8006726:	4690      	mov	r8, r2
 8006728:	f101 0414 	add.w	r4, r1, #20
 800672c:	f102 0714 	add.w	r7, r2, #20
 8006730:	d114      	bne.n	800675c <__mdiff+0x44>
 8006732:	009b      	lsls	r3, r3, #2
 8006734:	18e2      	adds	r2, r4, r3
 8006736:	443b      	add	r3, r7
 8006738:	e001      	b.n	800673e <__mdiff+0x26>
 800673a:	42a2      	cmp	r2, r4
 800673c:	d959      	bls.n	80067f2 <__mdiff+0xda>
 800673e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8006742:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8006746:	458c      	cmp	ip, r1
 8006748:	d0f7      	beq.n	800673a <__mdiff+0x22>
 800674a:	d209      	bcs.n	8006760 <__mdiff+0x48>
 800674c:	4622      	mov	r2, r4
 800674e:	4633      	mov	r3, r6
 8006750:	463c      	mov	r4, r7
 8006752:	4646      	mov	r6, r8
 8006754:	4617      	mov	r7, r2
 8006756:	4698      	mov	r8, r3
 8006758:	2501      	movs	r5, #1
 800675a:	e001      	b.n	8006760 <__mdiff+0x48>
 800675c:	dbf6      	blt.n	800674c <__mdiff+0x34>
 800675e:	2500      	movs	r5, #0
 8006760:	6871      	ldr	r1, [r6, #4]
 8006762:	f7ff fda7 	bl	80062b4 <_Balloc>
 8006766:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800676a:	6936      	ldr	r6, [r6, #16]
 800676c:	60c5      	str	r5, [r0, #12]
 800676e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8006772:	46bc      	mov	ip, r7
 8006774:	f100 0514 	add.w	r5, r0, #20
 8006778:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800677c:	2300      	movs	r3, #0
 800677e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8006782:	f854 8b04 	ldr.w	r8, [r4], #4
 8006786:	b28a      	uxth	r2, r1
 8006788:	fa13 f388 	uxtah	r3, r3, r8
 800678c:	0c09      	lsrs	r1, r1, #16
 800678e:	1a9a      	subs	r2, r3, r2
 8006790:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006794:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006798:	b292      	uxth	r2, r2
 800679a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800679e:	45e6      	cmp	lr, ip
 80067a0:	f845 2b04 	str.w	r2, [r5], #4
 80067a4:	ea4f 4323 	mov.w	r3, r3, asr #16
 80067a8:	d8e9      	bhi.n	800677e <__mdiff+0x66>
 80067aa:	42a7      	cmp	r7, r4
 80067ac:	d917      	bls.n	80067de <__mdiff+0xc6>
 80067ae:	46ae      	mov	lr, r5
 80067b0:	46a4      	mov	ip, r4
 80067b2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80067b6:	fa13 f382 	uxtah	r3, r3, r2
 80067ba:	1419      	asrs	r1, r3, #16
 80067bc:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80067c0:	b29b      	uxth	r3, r3
 80067c2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80067c6:	4567      	cmp	r7, ip
 80067c8:	f84e 2b04 	str.w	r2, [lr], #4
 80067cc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80067d0:	d8ef      	bhi.n	80067b2 <__mdiff+0x9a>
 80067d2:	43e4      	mvns	r4, r4
 80067d4:	4427      	add	r7, r4
 80067d6:	f027 0703 	bic.w	r7, r7, #3
 80067da:	3704      	adds	r7, #4
 80067dc:	443d      	add	r5, r7
 80067de:	3d04      	subs	r5, #4
 80067e0:	b922      	cbnz	r2, 80067ec <__mdiff+0xd4>
 80067e2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80067e6:	3e01      	subs	r6, #1
 80067e8:	2b00      	cmp	r3, #0
 80067ea:	d0fa      	beq.n	80067e2 <__mdiff+0xca>
 80067ec:	6106      	str	r6, [r0, #16]
 80067ee:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80067f2:	2100      	movs	r1, #0
 80067f4:	f7ff fd5e 	bl	80062b4 <_Balloc>
 80067f8:	2201      	movs	r2, #1
 80067fa:	2300      	movs	r3, #0
 80067fc:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006800:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006804 <__d2b>:
 8006804:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006808:	460f      	mov	r7, r1
 800680a:	b083      	sub	sp, #12
 800680c:	2101      	movs	r1, #1
 800680e:	ec55 4b10 	vmov	r4, r5, d0
 8006812:	4616      	mov	r6, r2
 8006814:	f7ff fd4e 	bl	80062b4 <_Balloc>
 8006818:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800681c:	4681      	mov	r9, r0
 800681e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006822:	f1b8 0f00 	cmp.w	r8, #0
 8006826:	d001      	beq.n	800682c <__d2b+0x28>
 8006828:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800682c:	2c00      	cmp	r4, #0
 800682e:	9301      	str	r3, [sp, #4]
 8006830:	d024      	beq.n	800687c <__d2b+0x78>
 8006832:	a802      	add	r0, sp, #8
 8006834:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006838:	f7ff fdcc 	bl	80063d4 <__lo0bits>
 800683c:	2800      	cmp	r0, #0
 800683e:	d136      	bne.n	80068ae <__d2b+0xaa>
 8006840:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006844:	f8c9 2014 	str.w	r2, [r9, #20]
 8006848:	2b00      	cmp	r3, #0
 800684a:	bf0c      	ite	eq
 800684c:	2101      	moveq	r1, #1
 800684e:	2102      	movne	r1, #2
 8006850:	f8c9 3018 	str.w	r3, [r9, #24]
 8006854:	f8c9 1010 	str.w	r1, [r9, #16]
 8006858:	f1b8 0f00 	cmp.w	r8, #0
 800685c:	d11b      	bne.n	8006896 <__d2b+0x92>
 800685e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8006862:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8006866:	6038      	str	r0, [r7, #0]
 8006868:	6918      	ldr	r0, [r3, #16]
 800686a:	f7ff fd93 	bl	8006394 <__hi0bits>
 800686e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8006872:	6030      	str	r0, [r6, #0]
 8006874:	4648      	mov	r0, r9
 8006876:	b003      	add	sp, #12
 8006878:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800687c:	a801      	add	r0, sp, #4
 800687e:	f7ff fda9 	bl	80063d4 <__lo0bits>
 8006882:	9b01      	ldr	r3, [sp, #4]
 8006884:	f8c9 3014 	str.w	r3, [r9, #20]
 8006888:	2101      	movs	r1, #1
 800688a:	3020      	adds	r0, #32
 800688c:	f8c9 1010 	str.w	r1, [r9, #16]
 8006890:	f1b8 0f00 	cmp.w	r8, #0
 8006894:	d0e3      	beq.n	800685e <__d2b+0x5a>
 8006896:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800689a:	eb08 0300 	add.w	r3, r8, r0
 800689e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 80068a2:	603b      	str	r3, [r7, #0]
 80068a4:	6030      	str	r0, [r6, #0]
 80068a6:	4648      	mov	r0, r9
 80068a8:	b003      	add	sp, #12
 80068aa:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80068ae:	e9dd 1300 	ldrd	r1, r3, [sp]
 80068b2:	f1c0 0220 	rsb	r2, r0, #32
 80068b6:	fa03 f202 	lsl.w	r2, r3, r2
 80068ba:	430a      	orrs	r2, r1
 80068bc:	40c3      	lsrs	r3, r0
 80068be:	9301      	str	r3, [sp, #4]
 80068c0:	f8c9 2014 	str.w	r2, [r9, #20]
 80068c4:	e7c0      	b.n	8006848 <__d2b+0x44>
 80068c6:	bf00      	nop

080068c8 <_realloc_r>:
 80068c8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80068cc:	4692      	mov	sl, r2
 80068ce:	b083      	sub	sp, #12
 80068d0:	2900      	cmp	r1, #0
 80068d2:	f000 80a1 	beq.w	8006a18 <_realloc_r+0x150>
 80068d6:	460d      	mov	r5, r1
 80068d8:	4680      	mov	r8, r0
 80068da:	f10a 040b 	add.w	r4, sl, #11
 80068de:	f7ff fcdd 	bl	800629c <__malloc_lock>
 80068e2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80068e6:	2c16      	cmp	r4, #22
 80068e8:	f022 0603 	bic.w	r6, r2, #3
 80068ec:	f1a5 0708 	sub.w	r7, r5, #8
 80068f0:	d83e      	bhi.n	8006970 <_realloc_r+0xa8>
 80068f2:	2410      	movs	r4, #16
 80068f4:	4621      	mov	r1, r4
 80068f6:	45a2      	cmp	sl, r4
 80068f8:	d83f      	bhi.n	800697a <_realloc_r+0xb2>
 80068fa:	428e      	cmp	r6, r1
 80068fc:	eb07 0906 	add.w	r9, r7, r6
 8006900:	da74      	bge.n	80069ec <_realloc_r+0x124>
 8006902:	4bc7      	ldr	r3, [pc, #796]	; (8006c20 <_realloc_r+0x358>)
 8006904:	6898      	ldr	r0, [r3, #8]
 8006906:	4548      	cmp	r0, r9
 8006908:	f000 80aa 	beq.w	8006a60 <_realloc_r+0x198>
 800690c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006910:	f020 0301 	bic.w	r3, r0, #1
 8006914:	444b      	add	r3, r9
 8006916:	685b      	ldr	r3, [r3, #4]
 8006918:	07db      	lsls	r3, r3, #31
 800691a:	f140 8083 	bpl.w	8006a24 <_realloc_r+0x15c>
 800691e:	07d2      	lsls	r2, r2, #31
 8006920:	d534      	bpl.n	800698c <_realloc_r+0xc4>
 8006922:	4651      	mov	r1, sl
 8006924:	4640      	mov	r0, r8
 8006926:	f7ff f9b1 	bl	8005c8c <_malloc_r>
 800692a:	4682      	mov	sl, r0
 800692c:	b1e0      	cbz	r0, 8006968 <_realloc_r+0xa0>
 800692e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006932:	f023 0301 	bic.w	r3, r3, #1
 8006936:	443b      	add	r3, r7
 8006938:	f1a0 0208 	sub.w	r2, r0, #8
 800693c:	4293      	cmp	r3, r2
 800693e:	f000 80f9 	beq.w	8006b34 <_realloc_r+0x26c>
 8006942:	1f32      	subs	r2, r6, #4
 8006944:	2a24      	cmp	r2, #36	; 0x24
 8006946:	f200 8107 	bhi.w	8006b58 <_realloc_r+0x290>
 800694a:	2a13      	cmp	r2, #19
 800694c:	6829      	ldr	r1, [r5, #0]
 800694e:	f200 80e6 	bhi.w	8006b1e <_realloc_r+0x256>
 8006952:	4603      	mov	r3, r0
 8006954:	462a      	mov	r2, r5
 8006956:	6019      	str	r1, [r3, #0]
 8006958:	6851      	ldr	r1, [r2, #4]
 800695a:	6059      	str	r1, [r3, #4]
 800695c:	6892      	ldr	r2, [r2, #8]
 800695e:	609a      	str	r2, [r3, #8]
 8006960:	4629      	mov	r1, r5
 8006962:	4640      	mov	r0, r8
 8006964:	f7fe fe68 	bl	8005638 <_free_r>
 8006968:	4640      	mov	r0, r8
 800696a:	f7ff fc9d 	bl	80062a8 <__malloc_unlock>
 800696e:	e04f      	b.n	8006a10 <_realloc_r+0x148>
 8006970:	f024 0407 	bic.w	r4, r4, #7
 8006974:	2c00      	cmp	r4, #0
 8006976:	4621      	mov	r1, r4
 8006978:	dabd      	bge.n	80068f6 <_realloc_r+0x2e>
 800697a:	f04f 0a00 	mov.w	sl, #0
 800697e:	230c      	movs	r3, #12
 8006980:	4650      	mov	r0, sl
 8006982:	f8c8 3000 	str.w	r3, [r8]
 8006986:	b003      	add	sp, #12
 8006988:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800698c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006990:	eba7 0b03 	sub.w	fp, r7, r3
 8006994:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006998:	f022 0203 	bic.w	r2, r2, #3
 800699c:	18b3      	adds	r3, r6, r2
 800699e:	428b      	cmp	r3, r1
 80069a0:	dbbf      	blt.n	8006922 <_realloc_r+0x5a>
 80069a2:	46da      	mov	sl, fp
 80069a4:	f8db 100c 	ldr.w	r1, [fp, #12]
 80069a8:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80069ac:	1f32      	subs	r2, r6, #4
 80069ae:	2a24      	cmp	r2, #36	; 0x24
 80069b0:	60c1      	str	r1, [r0, #12]
 80069b2:	eb0b 0903 	add.w	r9, fp, r3
 80069b6:	6088      	str	r0, [r1, #8]
 80069b8:	f200 80c6 	bhi.w	8006b48 <_realloc_r+0x280>
 80069bc:	2a13      	cmp	r2, #19
 80069be:	6829      	ldr	r1, [r5, #0]
 80069c0:	f240 80c0 	bls.w	8006b44 <_realloc_r+0x27c>
 80069c4:	f8cb 1008 	str.w	r1, [fp, #8]
 80069c8:	6869      	ldr	r1, [r5, #4]
 80069ca:	f8cb 100c 	str.w	r1, [fp, #12]
 80069ce:	2a1b      	cmp	r2, #27
 80069d0:	68a9      	ldr	r1, [r5, #8]
 80069d2:	f200 80d8 	bhi.w	8006b86 <_realloc_r+0x2be>
 80069d6:	f10b 0210 	add.w	r2, fp, #16
 80069da:	3508      	adds	r5, #8
 80069dc:	6011      	str	r1, [r2, #0]
 80069de:	6869      	ldr	r1, [r5, #4]
 80069e0:	6051      	str	r1, [r2, #4]
 80069e2:	68a9      	ldr	r1, [r5, #8]
 80069e4:	6091      	str	r1, [r2, #8]
 80069e6:	461e      	mov	r6, r3
 80069e8:	465f      	mov	r7, fp
 80069ea:	4655      	mov	r5, sl
 80069ec:	687b      	ldr	r3, [r7, #4]
 80069ee:	1b32      	subs	r2, r6, r4
 80069f0:	2a0f      	cmp	r2, #15
 80069f2:	f003 0301 	and.w	r3, r3, #1
 80069f6:	d822      	bhi.n	8006a3e <_realloc_r+0x176>
 80069f8:	4333      	orrs	r3, r6
 80069fa:	607b      	str	r3, [r7, #4]
 80069fc:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006a00:	f043 0301 	orr.w	r3, r3, #1
 8006a04:	f8c9 3004 	str.w	r3, [r9, #4]
 8006a08:	4640      	mov	r0, r8
 8006a0a:	f7ff fc4d 	bl	80062a8 <__malloc_unlock>
 8006a0e:	46aa      	mov	sl, r5
 8006a10:	4650      	mov	r0, sl
 8006a12:	b003      	add	sp, #12
 8006a14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a18:	4611      	mov	r1, r2
 8006a1a:	b003      	add	sp, #12
 8006a1c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a20:	f7ff b934 	b.w	8005c8c <_malloc_r>
 8006a24:	f020 0003 	bic.w	r0, r0, #3
 8006a28:	1833      	adds	r3, r6, r0
 8006a2a:	428b      	cmp	r3, r1
 8006a2c:	db61      	blt.n	8006af2 <_realloc_r+0x22a>
 8006a2e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006a32:	461e      	mov	r6, r3
 8006a34:	60ca      	str	r2, [r1, #12]
 8006a36:	eb07 0903 	add.w	r9, r7, r3
 8006a3a:	6091      	str	r1, [r2, #8]
 8006a3c:	e7d6      	b.n	80069ec <_realloc_r+0x124>
 8006a3e:	1939      	adds	r1, r7, r4
 8006a40:	4323      	orrs	r3, r4
 8006a42:	f042 0201 	orr.w	r2, r2, #1
 8006a46:	607b      	str	r3, [r7, #4]
 8006a48:	604a      	str	r2, [r1, #4]
 8006a4a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006a4e:	f043 0301 	orr.w	r3, r3, #1
 8006a52:	3108      	adds	r1, #8
 8006a54:	f8c9 3004 	str.w	r3, [r9, #4]
 8006a58:	4640      	mov	r0, r8
 8006a5a:	f7fe fded 	bl	8005638 <_free_r>
 8006a5e:	e7d3      	b.n	8006a08 <_realloc_r+0x140>
 8006a60:	6840      	ldr	r0, [r0, #4]
 8006a62:	f020 0903 	bic.w	r9, r0, #3
 8006a66:	44b1      	add	r9, r6
 8006a68:	f104 0010 	add.w	r0, r4, #16
 8006a6c:	4581      	cmp	r9, r0
 8006a6e:	da77      	bge.n	8006b60 <_realloc_r+0x298>
 8006a70:	07d2      	lsls	r2, r2, #31
 8006a72:	f53f af56 	bmi.w	8006922 <_realloc_r+0x5a>
 8006a76:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006a7a:	eba7 0b02 	sub.w	fp, r7, r2
 8006a7e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a82:	f022 0203 	bic.w	r2, r2, #3
 8006a86:	4491      	add	r9, r2
 8006a88:	4548      	cmp	r0, r9
 8006a8a:	dc87      	bgt.n	800699c <_realloc_r+0xd4>
 8006a8c:	46da      	mov	sl, fp
 8006a8e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006a92:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006a96:	1f32      	subs	r2, r6, #4
 8006a98:	2a24      	cmp	r2, #36	; 0x24
 8006a9a:	60c1      	str	r1, [r0, #12]
 8006a9c:	6088      	str	r0, [r1, #8]
 8006a9e:	f200 80a1 	bhi.w	8006be4 <_realloc_r+0x31c>
 8006aa2:	2a13      	cmp	r2, #19
 8006aa4:	6829      	ldr	r1, [r5, #0]
 8006aa6:	f240 809b 	bls.w	8006be0 <_realloc_r+0x318>
 8006aaa:	f8cb 1008 	str.w	r1, [fp, #8]
 8006aae:	6869      	ldr	r1, [r5, #4]
 8006ab0:	f8cb 100c 	str.w	r1, [fp, #12]
 8006ab4:	2a1b      	cmp	r2, #27
 8006ab6:	68a9      	ldr	r1, [r5, #8]
 8006ab8:	f200 809b 	bhi.w	8006bf2 <_realloc_r+0x32a>
 8006abc:	f10b 0210 	add.w	r2, fp, #16
 8006ac0:	3508      	adds	r5, #8
 8006ac2:	6011      	str	r1, [r2, #0]
 8006ac4:	6869      	ldr	r1, [r5, #4]
 8006ac6:	6051      	str	r1, [r2, #4]
 8006ac8:	68a9      	ldr	r1, [r5, #8]
 8006aca:	6091      	str	r1, [r2, #8]
 8006acc:	eb0b 0104 	add.w	r1, fp, r4
 8006ad0:	eba9 0204 	sub.w	r2, r9, r4
 8006ad4:	f042 0201 	orr.w	r2, r2, #1
 8006ad8:	6099      	str	r1, [r3, #8]
 8006ada:	604a      	str	r2, [r1, #4]
 8006adc:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006ae0:	f003 0301 	and.w	r3, r3, #1
 8006ae4:	431c      	orrs	r4, r3
 8006ae6:	4640      	mov	r0, r8
 8006ae8:	f8cb 4004 	str.w	r4, [fp, #4]
 8006aec:	f7ff fbdc 	bl	80062a8 <__malloc_unlock>
 8006af0:	e78e      	b.n	8006a10 <_realloc_r+0x148>
 8006af2:	07d3      	lsls	r3, r2, #31
 8006af4:	f53f af15 	bmi.w	8006922 <_realloc_r+0x5a>
 8006af8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006afc:	eba7 0b03 	sub.w	fp, r7, r3
 8006b00:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006b04:	f022 0203 	bic.w	r2, r2, #3
 8006b08:	4410      	add	r0, r2
 8006b0a:	1983      	adds	r3, r0, r6
 8006b0c:	428b      	cmp	r3, r1
 8006b0e:	f6ff af45 	blt.w	800699c <_realloc_r+0xd4>
 8006b12:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006b16:	46da      	mov	sl, fp
 8006b18:	60ca      	str	r2, [r1, #12]
 8006b1a:	6091      	str	r1, [r2, #8]
 8006b1c:	e742      	b.n	80069a4 <_realloc_r+0xdc>
 8006b1e:	6001      	str	r1, [r0, #0]
 8006b20:	686b      	ldr	r3, [r5, #4]
 8006b22:	6043      	str	r3, [r0, #4]
 8006b24:	2a1b      	cmp	r2, #27
 8006b26:	d83a      	bhi.n	8006b9e <_realloc_r+0x2d6>
 8006b28:	f105 0208 	add.w	r2, r5, #8
 8006b2c:	f100 0308 	add.w	r3, r0, #8
 8006b30:	68a9      	ldr	r1, [r5, #8]
 8006b32:	e710      	b.n	8006956 <_realloc_r+0x8e>
 8006b34:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006b38:	f023 0303 	bic.w	r3, r3, #3
 8006b3c:	441e      	add	r6, r3
 8006b3e:	eb07 0906 	add.w	r9, r7, r6
 8006b42:	e753      	b.n	80069ec <_realloc_r+0x124>
 8006b44:	4652      	mov	r2, sl
 8006b46:	e749      	b.n	80069dc <_realloc_r+0x114>
 8006b48:	4629      	mov	r1, r5
 8006b4a:	4650      	mov	r0, sl
 8006b4c:	461e      	mov	r6, r3
 8006b4e:	465f      	mov	r7, fp
 8006b50:	f7ff fb40 	bl	80061d4 <memmove>
 8006b54:	4655      	mov	r5, sl
 8006b56:	e749      	b.n	80069ec <_realloc_r+0x124>
 8006b58:	4629      	mov	r1, r5
 8006b5a:	f7ff fb3b 	bl	80061d4 <memmove>
 8006b5e:	e6ff      	b.n	8006960 <_realloc_r+0x98>
 8006b60:	4427      	add	r7, r4
 8006b62:	eba9 0904 	sub.w	r9, r9, r4
 8006b66:	f049 0201 	orr.w	r2, r9, #1
 8006b6a:	609f      	str	r7, [r3, #8]
 8006b6c:	607a      	str	r2, [r7, #4]
 8006b6e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006b72:	f003 0301 	and.w	r3, r3, #1
 8006b76:	431c      	orrs	r4, r3
 8006b78:	4640      	mov	r0, r8
 8006b7a:	f845 4c04 	str.w	r4, [r5, #-4]
 8006b7e:	f7ff fb93 	bl	80062a8 <__malloc_unlock>
 8006b82:	46aa      	mov	sl, r5
 8006b84:	e744      	b.n	8006a10 <_realloc_r+0x148>
 8006b86:	f8cb 1010 	str.w	r1, [fp, #16]
 8006b8a:	68e9      	ldr	r1, [r5, #12]
 8006b8c:	f8cb 1014 	str.w	r1, [fp, #20]
 8006b90:	2a24      	cmp	r2, #36	; 0x24
 8006b92:	d010      	beq.n	8006bb6 <_realloc_r+0x2ee>
 8006b94:	6929      	ldr	r1, [r5, #16]
 8006b96:	f10b 0218 	add.w	r2, fp, #24
 8006b9a:	3510      	adds	r5, #16
 8006b9c:	e71e      	b.n	80069dc <_realloc_r+0x114>
 8006b9e:	68ab      	ldr	r3, [r5, #8]
 8006ba0:	6083      	str	r3, [r0, #8]
 8006ba2:	68eb      	ldr	r3, [r5, #12]
 8006ba4:	60c3      	str	r3, [r0, #12]
 8006ba6:	2a24      	cmp	r2, #36	; 0x24
 8006ba8:	d010      	beq.n	8006bcc <_realloc_r+0x304>
 8006baa:	f105 0210 	add.w	r2, r5, #16
 8006bae:	f100 0310 	add.w	r3, r0, #16
 8006bb2:	6929      	ldr	r1, [r5, #16]
 8006bb4:	e6cf      	b.n	8006956 <_realloc_r+0x8e>
 8006bb6:	692a      	ldr	r2, [r5, #16]
 8006bb8:	f8cb 2018 	str.w	r2, [fp, #24]
 8006bbc:	696a      	ldr	r2, [r5, #20]
 8006bbe:	f8cb 201c 	str.w	r2, [fp, #28]
 8006bc2:	69a9      	ldr	r1, [r5, #24]
 8006bc4:	f10b 0220 	add.w	r2, fp, #32
 8006bc8:	3518      	adds	r5, #24
 8006bca:	e707      	b.n	80069dc <_realloc_r+0x114>
 8006bcc:	692b      	ldr	r3, [r5, #16]
 8006bce:	6103      	str	r3, [r0, #16]
 8006bd0:	696b      	ldr	r3, [r5, #20]
 8006bd2:	6143      	str	r3, [r0, #20]
 8006bd4:	69a9      	ldr	r1, [r5, #24]
 8006bd6:	f105 0218 	add.w	r2, r5, #24
 8006bda:	f100 0318 	add.w	r3, r0, #24
 8006bde:	e6ba      	b.n	8006956 <_realloc_r+0x8e>
 8006be0:	4652      	mov	r2, sl
 8006be2:	e76e      	b.n	8006ac2 <_realloc_r+0x1fa>
 8006be4:	4629      	mov	r1, r5
 8006be6:	4650      	mov	r0, sl
 8006be8:	9301      	str	r3, [sp, #4]
 8006bea:	f7ff faf3 	bl	80061d4 <memmove>
 8006bee:	9b01      	ldr	r3, [sp, #4]
 8006bf0:	e76c      	b.n	8006acc <_realloc_r+0x204>
 8006bf2:	f8cb 1010 	str.w	r1, [fp, #16]
 8006bf6:	68e9      	ldr	r1, [r5, #12]
 8006bf8:	f8cb 1014 	str.w	r1, [fp, #20]
 8006bfc:	2a24      	cmp	r2, #36	; 0x24
 8006bfe:	d004      	beq.n	8006c0a <_realloc_r+0x342>
 8006c00:	6929      	ldr	r1, [r5, #16]
 8006c02:	f10b 0218 	add.w	r2, fp, #24
 8006c06:	3510      	adds	r5, #16
 8006c08:	e75b      	b.n	8006ac2 <_realloc_r+0x1fa>
 8006c0a:	692a      	ldr	r2, [r5, #16]
 8006c0c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006c10:	696a      	ldr	r2, [r5, #20]
 8006c12:	f8cb 201c 	str.w	r2, [fp, #28]
 8006c16:	69a9      	ldr	r1, [r5, #24]
 8006c18:	f10b 0220 	add.w	r2, fp, #32
 8006c1c:	3518      	adds	r5, #24
 8006c1e:	e750      	b.n	8006ac2 <_realloc_r+0x1fa>
 8006c20:	2000044c 	.word	0x2000044c

08006c24 <frexp>:
 8006c24:	ec53 2b10 	vmov	r2, r3, d0
 8006c28:	b570      	push	{r4, r5, r6, lr}
 8006c2a:	4e16      	ldr	r6, [pc, #88]	; (8006c84 <frexp+0x60>)
 8006c2c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006c30:	2500      	movs	r5, #0
 8006c32:	42b1      	cmp	r1, r6
 8006c34:	4604      	mov	r4, r0
 8006c36:	6005      	str	r5, [r0, #0]
 8006c38:	dc21      	bgt.n	8006c7e <frexp+0x5a>
 8006c3a:	ee10 6a10 	vmov	r6, s0
 8006c3e:	430e      	orrs	r6, r1
 8006c40:	d01d      	beq.n	8006c7e <frexp+0x5a>
 8006c42:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006c46:	4618      	mov	r0, r3
 8006c48:	da0c      	bge.n	8006c64 <frexp+0x40>
 8006c4a:	4619      	mov	r1, r3
 8006c4c:	2200      	movs	r2, #0
 8006c4e:	ee10 0a10 	vmov	r0, s0
 8006c52:	4b0d      	ldr	r3, [pc, #52]	; (8006c88 <frexp+0x64>)
 8006c54:	f7f9 ff70 	bl	8000b38 <__aeabi_dmul>
 8006c58:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006c5c:	4602      	mov	r2, r0
 8006c5e:	4608      	mov	r0, r1
 8006c60:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006c64:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006c68:	1509      	asrs	r1, r1, #20
 8006c6a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006c6e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006c72:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006c76:	4429      	add	r1, r5
 8006c78:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006c7c:	6021      	str	r1, [r4, #0]
 8006c7e:	ec43 2b10 	vmov	d0, r2, r3
 8006c82:	bd70      	pop	{r4, r5, r6, pc}
 8006c84:	7fefffff 	.word	0x7fefffff
 8006c88:	43500000 	.word	0x43500000

08006c8c <_sbrk_r>:
 8006c8c:	b538      	push	{r3, r4, r5, lr}
 8006c8e:	4c07      	ldr	r4, [pc, #28]	; (8006cac <_sbrk_r+0x20>)
 8006c90:	2300      	movs	r3, #0
 8006c92:	4605      	mov	r5, r0
 8006c94:	4608      	mov	r0, r1
 8006c96:	6023      	str	r3, [r4, #0]
 8006c98:	f7fb fc35 	bl	8002506 <_sbrk>
 8006c9c:	1c43      	adds	r3, r0, #1
 8006c9e:	d000      	beq.n	8006ca2 <_sbrk_r+0x16>
 8006ca0:	bd38      	pop	{r3, r4, r5, pc}
 8006ca2:	6823      	ldr	r3, [r4, #0]
 8006ca4:	2b00      	cmp	r3, #0
 8006ca6:	d0fb      	beq.n	8006ca0 <_sbrk_r+0x14>
 8006ca8:	602b      	str	r3, [r5, #0]
 8006caa:	bd38      	pop	{r3, r4, r5, pc}
 8006cac:	20000c60 	.word	0x20000c60

08006cb0 <__sread>:
 8006cb0:	b510      	push	{r4, lr}
 8006cb2:	460c      	mov	r4, r1
 8006cb4:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006cb8:	f000 fabc 	bl	8007234 <_read_r>
 8006cbc:	2800      	cmp	r0, #0
 8006cbe:	db03      	blt.n	8006cc8 <__sread+0x18>
 8006cc0:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006cc2:	4403      	add	r3, r0
 8006cc4:	6523      	str	r3, [r4, #80]	; 0x50
 8006cc6:	bd10      	pop	{r4, pc}
 8006cc8:	89a3      	ldrh	r3, [r4, #12]
 8006cca:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006cce:	81a3      	strh	r3, [r4, #12]
 8006cd0:	bd10      	pop	{r4, pc}
 8006cd2:	bf00      	nop

08006cd4 <__swrite>:
 8006cd4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006cd8:	4616      	mov	r6, r2
 8006cda:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006cde:	461f      	mov	r7, r3
 8006ce0:	05d3      	lsls	r3, r2, #23
 8006ce2:	460c      	mov	r4, r1
 8006ce4:	4605      	mov	r5, r0
 8006ce6:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006cea:	d507      	bpl.n	8006cfc <__swrite+0x28>
 8006cec:	2200      	movs	r2, #0
 8006cee:	2302      	movs	r3, #2
 8006cf0:	f000 fa74 	bl	80071dc <_lseek_r>
 8006cf4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006cf8:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006cfc:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006d00:	81a2      	strh	r2, [r4, #12]
 8006d02:	463b      	mov	r3, r7
 8006d04:	4632      	mov	r2, r6
 8006d06:	4628      	mov	r0, r5
 8006d08:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006d0c:	f000 b88c 	b.w	8006e28 <_write_r>

08006d10 <__sseek>:
 8006d10:	b510      	push	{r4, lr}
 8006d12:	460c      	mov	r4, r1
 8006d14:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d18:	f000 fa60 	bl	80071dc <_lseek_r>
 8006d1c:	89a3      	ldrh	r3, [r4, #12]
 8006d1e:	1c42      	adds	r2, r0, #1
 8006d20:	bf0e      	itee	eq
 8006d22:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006d26:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006d2a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006d2c:	81a3      	strh	r3, [r4, #12]
 8006d2e:	bd10      	pop	{r4, pc}

08006d30 <__sclose>:
 8006d30:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d34:	f000 b922 	b.w	8006f7c <_close_r>

08006d38 <strncpy>:
 8006d38:	ea40 0301 	orr.w	r3, r0, r1
 8006d3c:	079b      	lsls	r3, r3, #30
 8006d3e:	b470      	push	{r4, r5, r6}
 8006d40:	d12a      	bne.n	8006d98 <strncpy+0x60>
 8006d42:	2a03      	cmp	r2, #3
 8006d44:	d928      	bls.n	8006d98 <strncpy+0x60>
 8006d46:	460c      	mov	r4, r1
 8006d48:	4603      	mov	r3, r0
 8006d4a:	4621      	mov	r1, r4
 8006d4c:	f854 6b04 	ldr.w	r6, [r4], #4
 8006d50:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006d54:	ea25 0506 	bic.w	r5, r5, r6
 8006d58:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006d5c:	d106      	bne.n	8006d6c <strncpy+0x34>
 8006d5e:	3a04      	subs	r2, #4
 8006d60:	2a03      	cmp	r2, #3
 8006d62:	f843 6b04 	str.w	r6, [r3], #4
 8006d66:	4621      	mov	r1, r4
 8006d68:	d8ef      	bhi.n	8006d4a <strncpy+0x12>
 8006d6a:	b19a      	cbz	r2, 8006d94 <strncpy+0x5c>
 8006d6c:	780c      	ldrb	r4, [r1, #0]
 8006d6e:	701c      	strb	r4, [r3, #0]
 8006d70:	3a01      	subs	r2, #1
 8006d72:	3301      	adds	r3, #1
 8006d74:	b13c      	cbz	r4, 8006d86 <strncpy+0x4e>
 8006d76:	b16a      	cbz	r2, 8006d94 <strncpy+0x5c>
 8006d78:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006d7c:	f803 4b01 	strb.w	r4, [r3], #1
 8006d80:	3a01      	subs	r2, #1
 8006d82:	2c00      	cmp	r4, #0
 8006d84:	d1f7      	bne.n	8006d76 <strncpy+0x3e>
 8006d86:	b12a      	cbz	r2, 8006d94 <strncpy+0x5c>
 8006d88:	441a      	add	r2, r3
 8006d8a:	2100      	movs	r1, #0
 8006d8c:	f803 1b01 	strb.w	r1, [r3], #1
 8006d90:	4293      	cmp	r3, r2
 8006d92:	d1fb      	bne.n	8006d8c <strncpy+0x54>
 8006d94:	bc70      	pop	{r4, r5, r6}
 8006d96:	4770      	bx	lr
 8006d98:	4603      	mov	r3, r0
 8006d9a:	e7e6      	b.n	8006d6a <strncpy+0x32>

08006d9c <__sprint_r.part.0>:
 8006d9c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006da0:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006da2:	049c      	lsls	r4, r3, #18
 8006da4:	4692      	mov	sl, r2
 8006da6:	d52d      	bpl.n	8006e04 <__sprint_r.part.0+0x68>
 8006da8:	6893      	ldr	r3, [r2, #8]
 8006daa:	6812      	ldr	r2, [r2, #0]
 8006dac:	b343      	cbz	r3, 8006e00 <__sprint_r.part.0+0x64>
 8006dae:	460e      	mov	r6, r1
 8006db0:	4607      	mov	r7, r0
 8006db2:	f102 0908 	add.w	r9, r2, #8
 8006db6:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006dba:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006dbe:	d015      	beq.n	8006dec <__sprint_r.part.0+0x50>
 8006dc0:	3d04      	subs	r5, #4
 8006dc2:	2400      	movs	r4, #0
 8006dc4:	e001      	b.n	8006dca <__sprint_r.part.0+0x2e>
 8006dc6:	45a0      	cmp	r8, r4
 8006dc8:	d00e      	beq.n	8006de8 <__sprint_r.part.0+0x4c>
 8006dca:	4632      	mov	r2, r6
 8006dcc:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006dd0:	4638      	mov	r0, r7
 8006dd2:	f000 f99d 	bl	8007110 <_fputwc_r>
 8006dd6:	1c43      	adds	r3, r0, #1
 8006dd8:	f104 0401 	add.w	r4, r4, #1
 8006ddc:	d1f3      	bne.n	8006dc6 <__sprint_r.part.0+0x2a>
 8006dde:	2300      	movs	r3, #0
 8006de0:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006de4:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006de8:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006dec:	f02b 0b03 	bic.w	fp, fp, #3
 8006df0:	eba3 030b 	sub.w	r3, r3, fp
 8006df4:	f8ca 3008 	str.w	r3, [sl, #8]
 8006df8:	f109 0908 	add.w	r9, r9, #8
 8006dfc:	2b00      	cmp	r3, #0
 8006dfe:	d1da      	bne.n	8006db6 <__sprint_r.part.0+0x1a>
 8006e00:	2000      	movs	r0, #0
 8006e02:	e7ec      	b.n	8006dde <__sprint_r.part.0+0x42>
 8006e04:	f7fe fd0c 	bl	8005820 <__sfvwrite_r>
 8006e08:	2300      	movs	r3, #0
 8006e0a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006e0e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e12:	bf00      	nop

08006e14 <__sprint_r>:
 8006e14:	6893      	ldr	r3, [r2, #8]
 8006e16:	b10b      	cbz	r3, 8006e1c <__sprint_r+0x8>
 8006e18:	f7ff bfc0 	b.w	8006d9c <__sprint_r.part.0>
 8006e1c:	b410      	push	{r4}
 8006e1e:	4618      	mov	r0, r3
 8006e20:	6053      	str	r3, [r2, #4]
 8006e22:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006e26:	4770      	bx	lr

08006e28 <_write_r>:
 8006e28:	b570      	push	{r4, r5, r6, lr}
 8006e2a:	460d      	mov	r5, r1
 8006e2c:	4c08      	ldr	r4, [pc, #32]	; (8006e50 <_write_r+0x28>)
 8006e2e:	4611      	mov	r1, r2
 8006e30:	4606      	mov	r6, r0
 8006e32:	461a      	mov	r2, r3
 8006e34:	4628      	mov	r0, r5
 8006e36:	2300      	movs	r3, #0
 8006e38:	6023      	str	r3, [r4, #0]
 8006e3a:	f7fb fb51 	bl	80024e0 <_write>
 8006e3e:	1c43      	adds	r3, r0, #1
 8006e40:	d000      	beq.n	8006e44 <_write_r+0x1c>
 8006e42:	bd70      	pop	{r4, r5, r6, pc}
 8006e44:	6823      	ldr	r3, [r4, #0]
 8006e46:	2b00      	cmp	r3, #0
 8006e48:	d0fb      	beq.n	8006e42 <_write_r+0x1a>
 8006e4a:	6033      	str	r3, [r6, #0]
 8006e4c:	bd70      	pop	{r4, r5, r6, pc}
 8006e4e:	bf00      	nop
 8006e50:	20000c60 	.word	0x20000c60

08006e54 <__register_exitproc>:
 8006e54:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006e58:	4d2b      	ldr	r5, [pc, #172]	; (8006f08 <__register_exitproc+0xb4>)
 8006e5a:	4606      	mov	r6, r0
 8006e5c:	6828      	ldr	r0, [r5, #0]
 8006e5e:	4698      	mov	r8, r3
 8006e60:	460f      	mov	r7, r1
 8006e62:	4691      	mov	r9, r2
 8006e64:	f7fe fe96 	bl	8005b94 <__retarget_lock_acquire_recursive>
 8006e68:	4b28      	ldr	r3, [pc, #160]	; (8006f0c <__register_exitproc+0xb8>)
 8006e6a:	681c      	ldr	r4, [r3, #0]
 8006e6c:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006e70:	2b00      	cmp	r3, #0
 8006e72:	d03d      	beq.n	8006ef0 <__register_exitproc+0x9c>
 8006e74:	685a      	ldr	r2, [r3, #4]
 8006e76:	2a1f      	cmp	r2, #31
 8006e78:	dc0d      	bgt.n	8006e96 <__register_exitproc+0x42>
 8006e7a:	f102 0c01 	add.w	ip, r2, #1
 8006e7e:	bb16      	cbnz	r6, 8006ec6 <__register_exitproc+0x72>
 8006e80:	3202      	adds	r2, #2
 8006e82:	f8c3 c004 	str.w	ip, [r3, #4]
 8006e86:	6828      	ldr	r0, [r5, #0]
 8006e88:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006e8c:	f7fe fe84 	bl	8005b98 <__retarget_lock_release_recursive>
 8006e90:	2000      	movs	r0, #0
 8006e92:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006e96:	4b1e      	ldr	r3, [pc, #120]	; (8006f10 <__register_exitproc+0xbc>)
 8006e98:	b37b      	cbz	r3, 8006efa <__register_exitproc+0xa6>
 8006e9a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006e9e:	f3af 8000 	nop.w
 8006ea2:	4603      	mov	r3, r0
 8006ea4:	b348      	cbz	r0, 8006efa <__register_exitproc+0xa6>
 8006ea6:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006eaa:	2100      	movs	r1, #0
 8006eac:	e9c0 2100 	strd	r2, r1, [r0]
 8006eb0:	f04f 0c01 	mov.w	ip, #1
 8006eb4:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006eb8:	460a      	mov	r2, r1
 8006eba:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006ebe:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006ec2:	2e00      	cmp	r6, #0
 8006ec4:	d0dc      	beq.n	8006e80 <__register_exitproc+0x2c>
 8006ec6:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006eca:	2401      	movs	r4, #1
 8006ecc:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006ed0:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006ed4:	4094      	lsls	r4, r2
 8006ed6:	4320      	orrs	r0, r4
 8006ed8:	2e02      	cmp	r6, #2
 8006eda:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006ede:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006ee2:	d1cd      	bne.n	8006e80 <__register_exitproc+0x2c>
 8006ee4:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006ee8:	430c      	orrs	r4, r1
 8006eea:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006eee:	e7c7      	b.n	8006e80 <__register_exitproc+0x2c>
 8006ef0:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006ef4:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006ef8:	e7bc      	b.n	8006e74 <__register_exitproc+0x20>
 8006efa:	6828      	ldr	r0, [r5, #0]
 8006efc:	f7fe fe4c 	bl	8005b98 <__retarget_lock_release_recursive>
 8006f00:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006f04:	e7c5      	b.n	8006e92 <__register_exitproc+0x3e>
 8006f06:	bf00      	nop
 8006f08:	20000448 	.word	0x20000448
 8006f0c:	080075cc 	.word	0x080075cc
 8006f10:	00000000 	.word	0x00000000

08006f14 <_calloc_r>:
 8006f14:	b510      	push	{r4, lr}
 8006f16:	fb02 f101 	mul.w	r1, r2, r1
 8006f1a:	f7fe feb7 	bl	8005c8c <_malloc_r>
 8006f1e:	4604      	mov	r4, r0
 8006f20:	b1d8      	cbz	r0, 8006f5a <_calloc_r+0x46>
 8006f22:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006f26:	f022 0203 	bic.w	r2, r2, #3
 8006f2a:	3a04      	subs	r2, #4
 8006f2c:	2a24      	cmp	r2, #36	; 0x24
 8006f2e:	d81d      	bhi.n	8006f6c <_calloc_r+0x58>
 8006f30:	2a13      	cmp	r2, #19
 8006f32:	d914      	bls.n	8006f5e <_calloc_r+0x4a>
 8006f34:	2300      	movs	r3, #0
 8006f36:	2a1b      	cmp	r2, #27
 8006f38:	e9c0 3300 	strd	r3, r3, [r0]
 8006f3c:	d91b      	bls.n	8006f76 <_calloc_r+0x62>
 8006f3e:	2a24      	cmp	r2, #36	; 0x24
 8006f40:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006f44:	bf0a      	itet	eq
 8006f46:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006f4a:	f100 0210 	addne.w	r2, r0, #16
 8006f4e:	f100 0218 	addeq.w	r2, r0, #24
 8006f52:	2300      	movs	r3, #0
 8006f54:	e9c2 3300 	strd	r3, r3, [r2]
 8006f58:	6093      	str	r3, [r2, #8]
 8006f5a:	4620      	mov	r0, r4
 8006f5c:	bd10      	pop	{r4, pc}
 8006f5e:	4602      	mov	r2, r0
 8006f60:	2300      	movs	r3, #0
 8006f62:	e9c2 3300 	strd	r3, r3, [r2]
 8006f66:	6093      	str	r3, [r2, #8]
 8006f68:	4620      	mov	r0, r4
 8006f6a:	bd10      	pop	{r4, pc}
 8006f6c:	2100      	movs	r1, #0
 8006f6e:	f7fb fb6f 	bl	8002650 <memset>
 8006f72:	4620      	mov	r0, r4
 8006f74:	bd10      	pop	{r4, pc}
 8006f76:	f100 0208 	add.w	r2, r0, #8
 8006f7a:	e7f1      	b.n	8006f60 <_calloc_r+0x4c>

08006f7c <_close_r>:
 8006f7c:	b538      	push	{r3, r4, r5, lr}
 8006f7e:	4c07      	ldr	r4, [pc, #28]	; (8006f9c <_close_r+0x20>)
 8006f80:	2300      	movs	r3, #0
 8006f82:	4605      	mov	r5, r0
 8006f84:	4608      	mov	r0, r1
 8006f86:	6023      	str	r3, [r4, #0]
 8006f88:	f7fb fad9 	bl	800253e <_close>
 8006f8c:	1c43      	adds	r3, r0, #1
 8006f8e:	d000      	beq.n	8006f92 <_close_r+0x16>
 8006f90:	bd38      	pop	{r3, r4, r5, pc}
 8006f92:	6823      	ldr	r3, [r4, #0]
 8006f94:	2b00      	cmp	r3, #0
 8006f96:	d0fb      	beq.n	8006f90 <_close_r+0x14>
 8006f98:	602b      	str	r3, [r5, #0]
 8006f9a:	bd38      	pop	{r3, r4, r5, pc}
 8006f9c:	20000c60 	.word	0x20000c60

08006fa0 <_fclose_r>:
 8006fa0:	b570      	push	{r4, r5, r6, lr}
 8006fa2:	2900      	cmp	r1, #0
 8006fa4:	d048      	beq.n	8007038 <_fclose_r+0x98>
 8006fa6:	4605      	mov	r5, r0
 8006fa8:	460c      	mov	r4, r1
 8006faa:	b110      	cbz	r0, 8006fb2 <_fclose_r+0x12>
 8006fac:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006fae:	2b00      	cmp	r3, #0
 8006fb0:	d048      	beq.n	8007044 <_fclose_r+0xa4>
 8006fb2:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006fb4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006fb8:	07d0      	lsls	r0, r2, #31
 8006fba:	d440      	bmi.n	800703e <_fclose_r+0x9e>
 8006fbc:	0599      	lsls	r1, r3, #22
 8006fbe:	d530      	bpl.n	8007022 <_fclose_r+0x82>
 8006fc0:	4621      	mov	r1, r4
 8006fc2:	4628      	mov	r0, r5
 8006fc4:	f7fe f990 	bl	80052e8 <__sflush_r>
 8006fc8:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006fca:	4606      	mov	r6, r0
 8006fcc:	b133      	cbz	r3, 8006fdc <_fclose_r+0x3c>
 8006fce:	69e1      	ldr	r1, [r4, #28]
 8006fd0:	4628      	mov	r0, r5
 8006fd2:	4798      	blx	r3
 8006fd4:	2800      	cmp	r0, #0
 8006fd6:	bfb8      	it	lt
 8006fd8:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006fdc:	89a3      	ldrh	r3, [r4, #12]
 8006fde:	061a      	lsls	r2, r3, #24
 8006fe0:	d43c      	bmi.n	800705c <_fclose_r+0xbc>
 8006fe2:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006fe4:	b141      	cbz	r1, 8006ff8 <_fclose_r+0x58>
 8006fe6:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006fea:	4299      	cmp	r1, r3
 8006fec:	d002      	beq.n	8006ff4 <_fclose_r+0x54>
 8006fee:	4628      	mov	r0, r5
 8006ff0:	f7fe fb22 	bl	8005638 <_free_r>
 8006ff4:	2300      	movs	r3, #0
 8006ff6:	6323      	str	r3, [r4, #48]	; 0x30
 8006ff8:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006ffa:	b121      	cbz	r1, 8007006 <_fclose_r+0x66>
 8006ffc:	4628      	mov	r0, r5
 8006ffe:	f7fe fb1b 	bl	8005638 <_free_r>
 8007002:	2300      	movs	r3, #0
 8007004:	6463      	str	r3, [r4, #68]	; 0x44
 8007006:	f7fe faa1 	bl	800554c <__sfp_lock_acquire>
 800700a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800700c:	2200      	movs	r2, #0
 800700e:	07db      	lsls	r3, r3, #31
 8007010:	81a2      	strh	r2, [r4, #12]
 8007012:	d51f      	bpl.n	8007054 <_fclose_r+0xb4>
 8007014:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007016:	f7fe fdbb 	bl	8005b90 <__retarget_lock_close_recursive>
 800701a:	f7fe fa9d 	bl	8005558 <__sfp_lock_release>
 800701e:	4630      	mov	r0, r6
 8007020:	bd70      	pop	{r4, r5, r6, pc}
 8007022:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007024:	f7fe fdb6 	bl	8005b94 <__retarget_lock_acquire_recursive>
 8007028:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800702c:	2b00      	cmp	r3, #0
 800702e:	d1c7      	bne.n	8006fc0 <_fclose_r+0x20>
 8007030:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8007032:	f016 0601 	ands.w	r6, r6, #1
 8007036:	d016      	beq.n	8007066 <_fclose_r+0xc6>
 8007038:	2600      	movs	r6, #0
 800703a:	4630      	mov	r0, r6
 800703c:	bd70      	pop	{r4, r5, r6, pc}
 800703e:	2b00      	cmp	r3, #0
 8007040:	d0fa      	beq.n	8007038 <_fclose_r+0x98>
 8007042:	e7bd      	b.n	8006fc0 <_fclose_r+0x20>
 8007044:	f7fe fa56 	bl	80054f4 <__sinit>
 8007048:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800704a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800704e:	07d0      	lsls	r0, r2, #31
 8007050:	d4f5      	bmi.n	800703e <_fclose_r+0x9e>
 8007052:	e7b3      	b.n	8006fbc <_fclose_r+0x1c>
 8007054:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007056:	f7fe fd9f 	bl	8005b98 <__retarget_lock_release_recursive>
 800705a:	e7db      	b.n	8007014 <_fclose_r+0x74>
 800705c:	6921      	ldr	r1, [r4, #16]
 800705e:	4628      	mov	r0, r5
 8007060:	f7fe faea 	bl	8005638 <_free_r>
 8007064:	e7bd      	b.n	8006fe2 <_fclose_r+0x42>
 8007066:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007068:	f7fe fd96 	bl	8005b98 <__retarget_lock_release_recursive>
 800706c:	4630      	mov	r0, r6
 800706e:	bd70      	pop	{r4, r5, r6, pc}

08007070 <__fputwc>:
 8007070:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8007074:	b082      	sub	sp, #8
 8007076:	4681      	mov	r9, r0
 8007078:	4688      	mov	r8, r1
 800707a:	4614      	mov	r4, r2
 800707c:	f000 f8a0 	bl	80071c0 <__locale_mb_cur_max>
 8007080:	2801      	cmp	r0, #1
 8007082:	d103      	bne.n	800708c <__fputwc+0x1c>
 8007084:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8007088:	2bfe      	cmp	r3, #254	; 0xfe
 800708a:	d933      	bls.n	80070f4 <__fputwc+0x84>
 800708c:	4642      	mov	r2, r8
 800708e:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007092:	a901      	add	r1, sp, #4
 8007094:	4648      	mov	r0, r9
 8007096:	f000 f93b 	bl	8007310 <_wcrtomb_r>
 800709a:	1c42      	adds	r2, r0, #1
 800709c:	4606      	mov	r6, r0
 800709e:	d02f      	beq.n	8007100 <__fputwc+0x90>
 80070a0:	b320      	cbz	r0, 80070ec <__fputwc+0x7c>
 80070a2:	f89d c004 	ldrb.w	ip, [sp, #4]
 80070a6:	2500      	movs	r5, #0
 80070a8:	f10d 0a04 	add.w	sl, sp, #4
 80070ac:	e009      	b.n	80070c2 <__fputwc+0x52>
 80070ae:	6823      	ldr	r3, [r4, #0]
 80070b0:	1c5a      	adds	r2, r3, #1
 80070b2:	6022      	str	r2, [r4, #0]
 80070b4:	f883 c000 	strb.w	ip, [r3]
 80070b8:	3501      	adds	r5, #1
 80070ba:	42b5      	cmp	r5, r6
 80070bc:	d216      	bcs.n	80070ec <__fputwc+0x7c>
 80070be:	f815 c00a 	ldrb.w	ip, [r5, sl]
 80070c2:	68a3      	ldr	r3, [r4, #8]
 80070c4:	3b01      	subs	r3, #1
 80070c6:	2b00      	cmp	r3, #0
 80070c8:	60a3      	str	r3, [r4, #8]
 80070ca:	daf0      	bge.n	80070ae <__fputwc+0x3e>
 80070cc:	69a7      	ldr	r7, [r4, #24]
 80070ce:	42bb      	cmp	r3, r7
 80070d0:	4661      	mov	r1, ip
 80070d2:	4622      	mov	r2, r4
 80070d4:	4648      	mov	r0, r9
 80070d6:	db02      	blt.n	80070de <__fputwc+0x6e>
 80070d8:	f1bc 0f0a 	cmp.w	ip, #10
 80070dc:	d1e7      	bne.n	80070ae <__fputwc+0x3e>
 80070de:	f000 f8bf 	bl	8007260 <__swbuf_r>
 80070e2:	1c43      	adds	r3, r0, #1
 80070e4:	d1e8      	bne.n	80070b8 <__fputwc+0x48>
 80070e6:	b002      	add	sp, #8
 80070e8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80070ec:	4640      	mov	r0, r8
 80070ee:	b002      	add	sp, #8
 80070f0:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80070f4:	fa5f fc88 	uxtb.w	ip, r8
 80070f8:	4606      	mov	r6, r0
 80070fa:	f88d c004 	strb.w	ip, [sp, #4]
 80070fe:	e7d2      	b.n	80070a6 <__fputwc+0x36>
 8007100:	89a3      	ldrh	r3, [r4, #12]
 8007102:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007106:	81a3      	strh	r3, [r4, #12]
 8007108:	b002      	add	sp, #8
 800710a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800710e:	bf00      	nop

08007110 <_fputwc_r>:
 8007110:	b530      	push	{r4, r5, lr}
 8007112:	4605      	mov	r5, r0
 8007114:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007116:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800711a:	07c0      	lsls	r0, r0, #31
 800711c:	4614      	mov	r4, r2
 800711e:	b083      	sub	sp, #12
 8007120:	b29a      	uxth	r2, r3
 8007122:	d401      	bmi.n	8007128 <_fputwc_r+0x18>
 8007124:	0590      	lsls	r0, r2, #22
 8007126:	d51c      	bpl.n	8007162 <_fputwc_r+0x52>
 8007128:	0490      	lsls	r0, r2, #18
 800712a:	d406      	bmi.n	800713a <_fputwc_r+0x2a>
 800712c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800712e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8007132:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007136:	81a3      	strh	r3, [r4, #12]
 8007138:	6662      	str	r2, [r4, #100]	; 0x64
 800713a:	4628      	mov	r0, r5
 800713c:	4622      	mov	r2, r4
 800713e:	f7ff ff97 	bl	8007070 <__fputwc>
 8007142:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8007144:	07da      	lsls	r2, r3, #31
 8007146:	4605      	mov	r5, r0
 8007148:	d402      	bmi.n	8007150 <_fputwc_r+0x40>
 800714a:	89a3      	ldrh	r3, [r4, #12]
 800714c:	059b      	lsls	r3, r3, #22
 800714e:	d502      	bpl.n	8007156 <_fputwc_r+0x46>
 8007150:	4628      	mov	r0, r5
 8007152:	b003      	add	sp, #12
 8007154:	bd30      	pop	{r4, r5, pc}
 8007156:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007158:	f7fe fd1e 	bl	8005b98 <__retarget_lock_release_recursive>
 800715c:	4628      	mov	r0, r5
 800715e:	b003      	add	sp, #12
 8007160:	bd30      	pop	{r4, r5, pc}
 8007162:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007164:	9101      	str	r1, [sp, #4]
 8007166:	f7fe fd15 	bl	8005b94 <__retarget_lock_acquire_recursive>
 800716a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800716e:	9901      	ldr	r1, [sp, #4]
 8007170:	b29a      	uxth	r2, r3
 8007172:	e7d9      	b.n	8007128 <_fputwc_r+0x18>

08007174 <_fstat_r>:
 8007174:	b538      	push	{r3, r4, r5, lr}
 8007176:	460b      	mov	r3, r1
 8007178:	4c07      	ldr	r4, [pc, #28]	; (8007198 <_fstat_r+0x24>)
 800717a:	4605      	mov	r5, r0
 800717c:	4611      	mov	r1, r2
 800717e:	4618      	mov	r0, r3
 8007180:	2300      	movs	r3, #0
 8007182:	6023      	str	r3, [r4, #0]
 8007184:	f7fb f9de 	bl	8002544 <_fstat>
 8007188:	1c43      	adds	r3, r0, #1
 800718a:	d000      	beq.n	800718e <_fstat_r+0x1a>
 800718c:	bd38      	pop	{r3, r4, r5, pc}
 800718e:	6823      	ldr	r3, [r4, #0]
 8007190:	2b00      	cmp	r3, #0
 8007192:	d0fb      	beq.n	800718c <_fstat_r+0x18>
 8007194:	602b      	str	r3, [r5, #0]
 8007196:	bd38      	pop	{r3, r4, r5, pc}
 8007198:	20000c60 	.word	0x20000c60

0800719c <_isatty_r>:
 800719c:	b538      	push	{r3, r4, r5, lr}
 800719e:	4c07      	ldr	r4, [pc, #28]	; (80071bc <_isatty_r+0x20>)
 80071a0:	2300      	movs	r3, #0
 80071a2:	4605      	mov	r5, r0
 80071a4:	4608      	mov	r0, r1
 80071a6:	6023      	str	r3, [r4, #0]
 80071a8:	f7fb f9d1 	bl	800254e <_isatty>
 80071ac:	1c43      	adds	r3, r0, #1
 80071ae:	d000      	beq.n	80071b2 <_isatty_r+0x16>
 80071b0:	bd38      	pop	{r3, r4, r5, pc}
 80071b2:	6823      	ldr	r3, [r4, #0]
 80071b4:	2b00      	cmp	r3, #0
 80071b6:	d0fb      	beq.n	80071b0 <_isatty_r+0x14>
 80071b8:	602b      	str	r3, [r5, #0]
 80071ba:	bd38      	pop	{r3, r4, r5, pc}
 80071bc:	20000c60 	.word	0x20000c60

080071c0 <__locale_mb_cur_max>:
 80071c0:	4b04      	ldr	r3, [pc, #16]	; (80071d4 <__locale_mb_cur_max+0x14>)
 80071c2:	4a05      	ldr	r2, [pc, #20]	; (80071d8 <__locale_mb_cur_max+0x18>)
 80071c4:	681b      	ldr	r3, [r3, #0]
 80071c6:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 80071c8:	2b00      	cmp	r3, #0
 80071ca:	bf08      	it	eq
 80071cc:	4613      	moveq	r3, r2
 80071ce:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 80071d2:	4770      	bx	lr
 80071d4:	20000018 	.word	0x20000018
 80071d8:	2000085c 	.word	0x2000085c

080071dc <_lseek_r>:
 80071dc:	b570      	push	{r4, r5, r6, lr}
 80071de:	460d      	mov	r5, r1
 80071e0:	4c08      	ldr	r4, [pc, #32]	; (8007204 <_lseek_r+0x28>)
 80071e2:	4611      	mov	r1, r2
 80071e4:	4606      	mov	r6, r0
 80071e6:	461a      	mov	r2, r3
 80071e8:	4628      	mov	r0, r5
 80071ea:	2300      	movs	r3, #0
 80071ec:	6023      	str	r3, [r4, #0]
 80071ee:	f7fb f9b0 	bl	8002552 <_lseek>
 80071f2:	1c43      	adds	r3, r0, #1
 80071f4:	d000      	beq.n	80071f8 <_lseek_r+0x1c>
 80071f6:	bd70      	pop	{r4, r5, r6, pc}
 80071f8:	6823      	ldr	r3, [r4, #0]
 80071fa:	2b00      	cmp	r3, #0
 80071fc:	d0fb      	beq.n	80071f6 <_lseek_r+0x1a>
 80071fe:	6033      	str	r3, [r6, #0]
 8007200:	bd70      	pop	{r4, r5, r6, pc}
 8007202:	bf00      	nop
 8007204:	20000c60 	.word	0x20000c60

08007208 <__ascii_mbtowc>:
 8007208:	b082      	sub	sp, #8
 800720a:	b149      	cbz	r1, 8007220 <__ascii_mbtowc+0x18>
 800720c:	b15a      	cbz	r2, 8007226 <__ascii_mbtowc+0x1e>
 800720e:	b16b      	cbz	r3, 800722c <__ascii_mbtowc+0x24>
 8007210:	7813      	ldrb	r3, [r2, #0]
 8007212:	600b      	str	r3, [r1, #0]
 8007214:	7812      	ldrb	r2, [r2, #0]
 8007216:	1c10      	adds	r0, r2, #0
 8007218:	bf18      	it	ne
 800721a:	2001      	movne	r0, #1
 800721c:	b002      	add	sp, #8
 800721e:	4770      	bx	lr
 8007220:	a901      	add	r1, sp, #4
 8007222:	2a00      	cmp	r2, #0
 8007224:	d1f3      	bne.n	800720e <__ascii_mbtowc+0x6>
 8007226:	4610      	mov	r0, r2
 8007228:	b002      	add	sp, #8
 800722a:	4770      	bx	lr
 800722c:	f06f 0001 	mvn.w	r0, #1
 8007230:	e7f4      	b.n	800721c <__ascii_mbtowc+0x14>
 8007232:	bf00      	nop

08007234 <_read_r>:
 8007234:	b570      	push	{r4, r5, r6, lr}
 8007236:	460d      	mov	r5, r1
 8007238:	4c08      	ldr	r4, [pc, #32]	; (800725c <_read_r+0x28>)
 800723a:	4611      	mov	r1, r2
 800723c:	4606      	mov	r6, r0
 800723e:	461a      	mov	r2, r3
 8007240:	4628      	mov	r0, r5
 8007242:	2300      	movs	r3, #0
 8007244:	6023      	str	r3, [r4, #0]
 8007246:	f7fb f938 	bl	80024ba <_read>
 800724a:	1c43      	adds	r3, r0, #1
 800724c:	d000      	beq.n	8007250 <_read_r+0x1c>
 800724e:	bd70      	pop	{r4, r5, r6, pc}
 8007250:	6823      	ldr	r3, [r4, #0]
 8007252:	2b00      	cmp	r3, #0
 8007254:	d0fb      	beq.n	800724e <_read_r+0x1a>
 8007256:	6033      	str	r3, [r6, #0]
 8007258:	bd70      	pop	{r4, r5, r6, pc}
 800725a:	bf00      	nop
 800725c:	20000c60 	.word	0x20000c60

08007260 <__swbuf_r>:
 8007260:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007262:	460d      	mov	r5, r1
 8007264:	4614      	mov	r4, r2
 8007266:	4606      	mov	r6, r0
 8007268:	b110      	cbz	r0, 8007270 <__swbuf_r+0x10>
 800726a:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800726c:	2b00      	cmp	r3, #0
 800726e:	d043      	beq.n	80072f8 <__swbuf_r+0x98>
 8007270:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007274:	69a3      	ldr	r3, [r4, #24]
 8007276:	60a3      	str	r3, [r4, #8]
 8007278:	b291      	uxth	r1, r2
 800727a:	0708      	lsls	r0, r1, #28
 800727c:	d51b      	bpl.n	80072b6 <__swbuf_r+0x56>
 800727e:	6923      	ldr	r3, [r4, #16]
 8007280:	b1cb      	cbz	r3, 80072b6 <__swbuf_r+0x56>
 8007282:	b2ed      	uxtb	r5, r5
 8007284:	0489      	lsls	r1, r1, #18
 8007286:	462f      	mov	r7, r5
 8007288:	d522      	bpl.n	80072d0 <__swbuf_r+0x70>
 800728a:	6822      	ldr	r2, [r4, #0]
 800728c:	6961      	ldr	r1, [r4, #20]
 800728e:	1ad3      	subs	r3, r2, r3
 8007290:	4299      	cmp	r1, r3
 8007292:	dd29      	ble.n	80072e8 <__swbuf_r+0x88>
 8007294:	3301      	adds	r3, #1
 8007296:	68a1      	ldr	r1, [r4, #8]
 8007298:	1c50      	adds	r0, r2, #1
 800729a:	3901      	subs	r1, #1
 800729c:	60a1      	str	r1, [r4, #8]
 800729e:	6020      	str	r0, [r4, #0]
 80072a0:	7015      	strb	r5, [r2, #0]
 80072a2:	6962      	ldr	r2, [r4, #20]
 80072a4:	429a      	cmp	r2, r3
 80072a6:	d02a      	beq.n	80072fe <__swbuf_r+0x9e>
 80072a8:	89a3      	ldrh	r3, [r4, #12]
 80072aa:	07db      	lsls	r3, r3, #31
 80072ac:	d501      	bpl.n	80072b2 <__swbuf_r+0x52>
 80072ae:	2d0a      	cmp	r5, #10
 80072b0:	d025      	beq.n	80072fe <__swbuf_r+0x9e>
 80072b2:	4638      	mov	r0, r7
 80072b4:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80072b6:	4621      	mov	r1, r4
 80072b8:	4630      	mov	r0, r6
 80072ba:	f7fc fffd 	bl	80042b8 <__swsetup_r>
 80072be:	bb20      	cbnz	r0, 800730a <__swbuf_r+0xaa>
 80072c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80072c4:	6923      	ldr	r3, [r4, #16]
 80072c6:	b291      	uxth	r1, r2
 80072c8:	b2ed      	uxtb	r5, r5
 80072ca:	0489      	lsls	r1, r1, #18
 80072cc:	462f      	mov	r7, r5
 80072ce:	d4dc      	bmi.n	800728a <__swbuf_r+0x2a>
 80072d0:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80072d2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80072d6:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80072da:	81a2      	strh	r2, [r4, #12]
 80072dc:	6822      	ldr	r2, [r4, #0]
 80072de:	6661      	str	r1, [r4, #100]	; 0x64
 80072e0:	6961      	ldr	r1, [r4, #20]
 80072e2:	1ad3      	subs	r3, r2, r3
 80072e4:	4299      	cmp	r1, r3
 80072e6:	dcd5      	bgt.n	8007294 <__swbuf_r+0x34>
 80072e8:	4621      	mov	r1, r4
 80072ea:	4630      	mov	r0, r6
 80072ec:	f7fe f8a6 	bl	800543c <_fflush_r>
 80072f0:	b958      	cbnz	r0, 800730a <__swbuf_r+0xaa>
 80072f2:	6822      	ldr	r2, [r4, #0]
 80072f4:	2301      	movs	r3, #1
 80072f6:	e7ce      	b.n	8007296 <__swbuf_r+0x36>
 80072f8:	f7fe f8fc 	bl	80054f4 <__sinit>
 80072fc:	e7b8      	b.n	8007270 <__swbuf_r+0x10>
 80072fe:	4621      	mov	r1, r4
 8007300:	4630      	mov	r0, r6
 8007302:	f7fe f89b 	bl	800543c <_fflush_r>
 8007306:	2800      	cmp	r0, #0
 8007308:	d0d3      	beq.n	80072b2 <__swbuf_r+0x52>
 800730a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800730e:	e7d0      	b.n	80072b2 <__swbuf_r+0x52>

08007310 <_wcrtomb_r>:
 8007310:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007312:	4c11      	ldr	r4, [pc, #68]	; (8007358 <_wcrtomb_r+0x48>)
 8007314:	6824      	ldr	r4, [r4, #0]
 8007316:	b085      	sub	sp, #20
 8007318:	4606      	mov	r6, r0
 800731a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800731c:	461f      	mov	r7, r3
 800731e:	b151      	cbz	r1, 8007336 <_wcrtomb_r+0x26>
 8007320:	4d0e      	ldr	r5, [pc, #56]	; (800735c <_wcrtomb_r+0x4c>)
 8007322:	2c00      	cmp	r4, #0
 8007324:	bf08      	it	eq
 8007326:	462c      	moveq	r4, r5
 8007328:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800732c:	47a0      	blx	r4
 800732e:	1c43      	adds	r3, r0, #1
 8007330:	d00c      	beq.n	800734c <_wcrtomb_r+0x3c>
 8007332:	b005      	add	sp, #20
 8007334:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007336:	4a09      	ldr	r2, [pc, #36]	; (800735c <_wcrtomb_r+0x4c>)
 8007338:	2c00      	cmp	r4, #0
 800733a:	bf08      	it	eq
 800733c:	4614      	moveq	r4, r2
 800733e:	460a      	mov	r2, r1
 8007340:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8007344:	a901      	add	r1, sp, #4
 8007346:	47a0      	blx	r4
 8007348:	1c43      	adds	r3, r0, #1
 800734a:	d1f2      	bne.n	8007332 <_wcrtomb_r+0x22>
 800734c:	2200      	movs	r2, #0
 800734e:	238a      	movs	r3, #138	; 0x8a
 8007350:	603a      	str	r2, [r7, #0]
 8007352:	6033      	str	r3, [r6, #0]
 8007354:	b005      	add	sp, #20
 8007356:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007358:	20000018 	.word	0x20000018
 800735c:	2000085c 	.word	0x2000085c

08007360 <__ascii_wctomb>:
 8007360:	b121      	cbz	r1, 800736c <__ascii_wctomb+0xc>
 8007362:	2aff      	cmp	r2, #255	; 0xff
 8007364:	d804      	bhi.n	8007370 <__ascii_wctomb+0x10>
 8007366:	700a      	strb	r2, [r1, #0]
 8007368:	2001      	movs	r0, #1
 800736a:	4770      	bx	lr
 800736c:	4608      	mov	r0, r1
 800736e:	4770      	bx	lr
 8007370:	238a      	movs	r3, #138	; 0x8a
 8007372:	6003      	str	r3, [r0, #0]
 8007374:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007378:	4770      	bx	lr
 800737a:	bf00      	nop

0800737c <_init>:
 800737c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800737e:	bf00      	nop
 8007380:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007382:	bc08      	pop	{r3}
 8007384:	469e      	mov	lr, r3
 8007386:	4770      	bx	lr

08007388 <_fini>:
 8007388:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800738a:	bf00      	nop
 800738c:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800738e:	bc08      	pop	{r3}
 8007390:	469e      	mov	lr, r3
 8007392:	4770      	bx	lr
 8007394:	0000      	movs	r0, r0
	...
