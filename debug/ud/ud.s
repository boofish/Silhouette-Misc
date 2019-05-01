
ud.elf:     file format elf32-littlearm


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
 80001e0:	080070dc 	.word	0x080070dc

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
 80001fc:	080070dc 	.word	0x080070dc

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
 80013e8:	f247 1210 	movw	r2, #28944	; 0x7110
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
 8001462:	f247 1208 	movw	r2, #28936	; 0x7108
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
 800148c:	f247 1208 	movw	r2, #28936	; 0x7108
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
 80019d4:	f247 1340 	movw	r3, #28992	; 0x7140
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
 80019fc:	f247 1350 	movw	r3, #29008	; 0x7150
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
 8001ebe:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ec0:	af03      	add	r7, sp, #12
 8001ec2:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001ec6:	f640 308c 	movw	r0, #2956	; 0xb8c
 8001eca:	f640 21ec 	movw	r1, #2796	; 0xaec
 8001ece:	f04f 0e04 	mov.w	lr, #4
 8001ed2:	2303      	movs	r3, #3
 8001ed4:	251d      	movs	r5, #29
 8001ed6:	2405      	movs	r4, #5
 8001ed8:	f04f 0c06 	mov.w	ip, #6
 8001edc:	2207      	movs	r2, #7
 8001ede:	2608      	movs	r6, #8
 8001ee0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ee4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001ee8:	f8c0 e000 	str.w	lr, [r0]
 8001eec:	e9c0 3e01 	strd	r3, lr, [r0, #4]
 8001ef0:	600d      	str	r5, [r1, #0]
 8001ef2:	2525      	movs	r5, #37	; 0x25
 8001ef4:	60c4      	str	r4, [r0, #12]
 8001ef6:	f8c0 c010 	str.w	ip, [r0, #16]
 8001efa:	6142      	str	r2, [r0, #20]
 8001efc:	6503      	str	r3, [r0, #80]	; 0x50
 8001efe:	e9c0 6415 	strd	r6, r4, [r0, #84]	; 0x54
 8001f02:	e9c0 c217 	strd	ip, r2, [r0, #92]	; 0x5c
 8001f06:	6646      	str	r6, [r0, #100]	; 0x64
 8001f08:	232d      	movs	r3, #45	; 0x2d
 8001f0a:	604d      	str	r5, [r1, #4]
 8001f0c:	250c      	movs	r5, #12
 8001f0e:	e9c0 e428 	strd	lr, r4, [r0, #160]	; 0xa0
 8001f12:	f04f 0e0a 	mov.w	lr, #10
 8001f16:	e9c0 522a 	strd	r5, r2, [r0, #168]	; 0xa8
 8001f1a:	2509      	movs	r5, #9
 8001f1c:	f8c0 60b0 	str.w	r6, [r0, #176]	; 0xb0
 8001f20:	608b      	str	r3, [r1, #8]
 8001f22:	2310      	movs	r3, #16
 8001f24:	f8c0 50b4 	str.w	r5, [r0, #180]	; 0xb4
 8001f28:	e9c0 4c3c 	strd	r4, ip, [r0, #240]	; 0xf0
 8001f2c:	2435      	movs	r4, #53	; 0x35
 8001f2e:	f8c0 20f8 	str.w	r2, [r0, #248]	; 0xf8
 8001f32:	e9c0 353f 	strd	r3, r5, [r0, #252]	; 0xfc
 8001f36:	233d      	movs	r3, #61	; 0x3d
 8001f38:	f8c0 e104 	str.w	lr, [r0, #260]	; 0x104
 8001f3c:	60cc      	str	r4, [r1, #12]
 8001f3e:	2414      	movs	r4, #20
 8001f40:	e9c0 c250 	strd	ip, r2, [r0, #320]	; 0x140
 8001f44:	e9c0 6552 	strd	r6, r5, [r0, #328]	; 0x148
 8001f48:	610b      	str	r3, [r1, #16]
 8001f4a:	2318      	movs	r3, #24
 8001f4c:	f8c0 4150 	str.w	r4, [r0, #336]	; 0x150
 8001f50:	240b      	movs	r4, #11
 8001f52:	f8c0 4154 	str.w	r4, [r0, #340]	; 0x154
 8001f56:	e9c0 2664 	strd	r2, r6, [r0, #400]	; 0x190
 8001f5a:	e9c0 5e66 	strd	r5, lr, [r0, #408]	; 0x198
 8001f5e:	e9c0 4368 	strd	r4, r3, [r0, #416]	; 0x1a0
 8001f62:	2045      	movs	r0, #69	; 0x45
 8001f64:	6148      	str	r0, [r1, #20]
 8001f66:	2105      	movs	r1, #5
 8001f68:	f000 f80a 	bl	8001f80 <ludcmp>
 8001f6c:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001f70:	2100      	movs	r1, #0
 8001f72:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f76:	6001      	str	r1, [r0, #0]
 8001f78:	2000      	movs	r0, #0
 8001f7a:	f85d bb04 	ldr.w	fp, [sp], #4
 8001f7e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001f80 <ludcmp>:
 8001f80:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f82:	af03      	add	r7, sp, #12
 8001f84:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001f88:	b0e9      	sub	sp, #420	; 0x1a4
 8001f8a:	2900      	cmp	r1, #0
 8001f8c:	f340 8090 	ble.w	80020b0 <ludcmp+0x130>
 8001f90:	f640 398c 	movw	r9, #2956	; 0xb8c
 8001f94:	f04f 0a00 	mov.w	sl, #0
 8001f98:	2301      	movs	r3, #1
 8001f9a:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8001f9e:	f109 0004 	add.w	r0, r9, #4
 8001fa2:	f109 0450 	add.w	r4, r9, #80	; 0x50
 8001fa6:	e9cd 1001 	strd	r1, r0, [sp, #4]
 8001faa:	1c48      	adds	r0, r1, #1
 8001fac:	9400      	str	r4, [sp, #0]
 8001fae:	9004      	str	r0, [sp, #16]
 8001fb0:	4656      	mov	r6, sl
 8001fb2:	4621      	mov	r1, r4
 8001fb4:	eb06 0086 	add.w	r0, r6, r6, lsl #2
 8001fb8:	f106 0b01 	add.w	fp, r6, #1
 8001fbc:	eb09 1000 	add.w	r0, r9, r0, lsl #4
 8001fc0:	465d      	mov	r5, fp
 8001fc2:	eb00 0086 	add.w	r0, r0, r6, lsl #2
 8001fc6:	9003      	str	r0, [sp, #12]
 8001fc8:	eb05 0085 	add.w	r0, r5, r5, lsl #2
 8001fcc:	2e01      	cmp	r6, #1
 8001fce:	eb09 1200 	add.w	r2, r9, r0, lsl #4
 8001fd2:	f852 c026 	ldr.w	ip, [r2, r6, lsl #2]
 8001fd6:	eb02 0086 	add.w	r0, r2, r6, lsl #2
 8001fda:	db0e      	blt.n	8001ffa <ludcmp+0x7a>
 8001fdc:	f04f 0e00 	mov.w	lr, #0
 8001fe0:	460a      	mov	r2, r1
 8001fe2:	f859 8026 	ldr.w	r8, [r9, r6, lsl #2]
 8001fe6:	f852 ab04 	ldr.w	sl, [r2], #4
 8001fea:	f10e 0e01 	add.w	lr, lr, #1
 8001fee:	f109 0950 	add.w	r9, r9, #80	; 0x50
 8001ff2:	4576      	cmp	r6, lr
 8001ff4:	fb08 cc1a 	mls	ip, r8, sl, ip
 8001ff8:	d1f3      	bne.n	8001fe2 <ludcmp+0x62>
 8001ffa:	9a03      	ldr	r2, [sp, #12]
 8001ffc:	f640 398c 	movw	r9, #2956	; 0xb8c
 8002000:	3501      	adds	r5, #1
 8002002:	3150      	adds	r1, #80	; 0x50
 8002004:	46da      	mov	sl, fp
 8002006:	f2c2 0900 	movt	r9, #8192	; 0x2000
 800200a:	6812      	ldr	r2, [r2, #0]
 800200c:	fb9c f2f2 	sdiv	r2, ip, r2
 8002010:	6002      	str	r2, [r0, #0]
 8002012:	9804      	ldr	r0, [sp, #16]
 8002014:	4285      	cmp	r5, r0
 8002016:	d1d7      	bne.n	8001fc8 <ludcmp+0x48>
 8002018:	f8dd e008 	ldr.w	lr, [sp, #8]
 800201c:	46d0      	mov	r8, sl
 800201e:	eb0a 018a 	add.w	r1, sl, sl, lsl #2
 8002022:	4672      	mov	r2, lr
 8002024:	eb09 1101 	add.w	r1, r9, r1, lsl #4
 8002028:	f851 5028 	ldr.w	r5, [r1, r8, lsl #2]
 800202c:	eb01 0c88 	add.w	ip, r1, r8, lsl #2
 8002030:	2100      	movs	r1, #0
 8002032:	f854 6021 	ldr.w	r6, [r4, r1, lsl #2]
 8002036:	f852 0b50 	ldr.w	r0, [r2], #80
 800203a:	3101      	adds	r1, #1
 800203c:	428b      	cmp	r3, r1
 800203e:	fb00 5516 	mls	r5, r0, r6, r5
 8002042:	d1f6      	bne.n	8002032 <ludcmp+0xb2>
 8002044:	9804      	ldr	r0, [sp, #16]
 8002046:	f108 0801 	add.w	r8, r8, #1
 800204a:	f10e 0e04 	add.w	lr, lr, #4
 800204e:	f8cc 5000 	str.w	r5, [ip]
 8002052:	4580      	cmp	r8, r0
 8002054:	d1e3      	bne.n	800201e <ludcmp+0x9e>
 8002056:	9802      	ldr	r0, [sp, #8]
 8002058:	3450      	adds	r4, #80	; 0x50
 800205a:	3301      	adds	r3, #1
 800205c:	3004      	adds	r0, #4
 800205e:	9002      	str	r0, [sp, #8]
 8002060:	9801      	ldr	r0, [sp, #4]
 8002062:	4582      	cmp	sl, r0
 8002064:	d1a4      	bne.n	8001fb0 <ludcmp+0x30>
 8002066:	f640 2cec 	movw	ip, #2796	; 0xaec
 800206a:	f8dd 8000 	ldr.w	r8, [sp]
 800206e:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002072:	f8dc 1000 	ldr.w	r1, [ip]
 8002076:	9105      	str	r1, [sp, #20]
 8002078:	9901      	ldr	r1, [sp, #4]
 800207a:	2901      	cmp	r1, #1
 800207c:	db1e      	blt.n	80020bc <ludcmp+0x13c>
 800207e:	2201      	movs	r2, #1
 8002080:	f10d 0e14 	add.w	lr, sp, #20
 8002084:	f85c 3022 	ldr.w	r3, [ip, r2, lsl #2]
 8002088:	2600      	movs	r6, #0
 800208a:	4645      	mov	r5, r8
 800208c:	f85e 4026 	ldr.w	r4, [lr, r6, lsl #2]
 8002090:	f855 0b04 	ldr.w	r0, [r5], #4
 8002094:	3601      	adds	r6, #1
 8002096:	42b2      	cmp	r2, r6
 8002098:	fb04 3310 	mls	r3, r4, r0, r3
 800209c:	d1f6      	bne.n	800208c <ludcmp+0x10c>
 800209e:	1c50      	adds	r0, r2, #1
 80020a0:	f84e 3022 	str.w	r3, [lr, r2, lsl #2]
 80020a4:	428a      	cmp	r2, r1
 80020a6:	f108 0850 	add.w	r8, r8, #80	; 0x50
 80020aa:	4602      	mov	r2, r0
 80020ac:	d1ea      	bne.n	8002084 <ludcmp+0x104>
 80020ae:	e005      	b.n	80020bc <ludcmp+0x13c>
 80020b0:	f640 20ec 	movw	r0, #2796	; 0xaec
 80020b4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80020b8:	6800      	ldr	r0, [r0, #0]
 80020ba:	9005      	str	r0, [sp, #20]
 80020bc:	f640 3e8c 	movw	lr, #2956	; 0xb8c
 80020c0:	eb01 0281 	add.w	r2, r1, r1, lsl #2
 80020c4:	f10d 0c14 	add.w	ip, sp, #20
 80020c8:	f640 333c 	movw	r3, #2876	; 0xb3c
 80020cc:	2901      	cmp	r1, #1
 80020ce:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80020d2:	f85c 0021 	ldr.w	r0, [ip, r1, lsl #2]
 80020d6:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80020da:	eb0e 1202 	add.w	r2, lr, r2, lsl #4
 80020de:	f852 2021 	ldr.w	r2, [r2, r1, lsl #2]
 80020e2:	fb90 f0f2 	sdiv	r0, r0, r2
 80020e6:	f843 0021 	str.w	r0, [r3, r1, lsl #2]
 80020ea:	db28      	blt.n	800213e <ludcmp+0x1be>
 80020ec:	2054      	movs	r0, #84	; 0x54
 80020ee:	468a      	mov	sl, r1
 80020f0:	fb01 e000 	mla	r0, r1, r0, lr
 80020f4:	f1a0 0850 	sub.w	r8, r0, #80	; 0x50
 80020f8:	f1aa 0901 	sub.w	r9, sl, #1
 80020fc:	458a      	cmp	sl, r1
 80020fe:	f85c 0029 	ldr.w	r0, [ip, r9, lsl #2]
 8002102:	dc0c      	bgt.n	800211e <ludcmp+0x19e>
 8002104:	4645      	mov	r5, r8
 8002106:	4652      	mov	r2, sl
 8002108:	f853 6022 	ldr.w	r6, [r3, r2, lsl #2]
 800210c:	f855 4b04 	ldr.w	r4, [r5], #4
 8002110:	428a      	cmp	r2, r1
 8002112:	fb06 0014 	mls	r0, r6, r4, r0
 8002116:	f102 0401 	add.w	r4, r2, #1
 800211a:	4622      	mov	r2, r4
 800211c:	dbf4      	blt.n	8002108 <ludcmp+0x188>
 800211e:	eb09 0289 	add.w	r2, r9, r9, lsl #2
 8002122:	f1ba 0f01 	cmp.w	sl, #1
 8002126:	f1a8 0854 	sub.w	r8, r8, #84	; 0x54
 800212a:	46ca      	mov	sl, r9
 800212c:	eb0e 1202 	add.w	r2, lr, r2, lsl #4
 8002130:	f852 2029 	ldr.w	r2, [r2, r9, lsl #2]
 8002134:	fb90 f0f2 	sdiv	r0, r0, r2
 8002138:	f843 0029 	str.w	r0, [r3, r9, lsl #2]
 800213c:	dcdc      	bgt.n	80020f8 <ludcmp+0x178>
 800213e:	2000      	movs	r0, #0
 8002140:	b069      	add	sp, #420	; 0x1a4
 8002142:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002146:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002148 <__io_putchar>:
 8002148:	b580      	push	{r7, lr}
 800214a:	466f      	mov	r7, sp
 800214c:	b082      	sub	sp, #8
 800214e:	9001      	str	r0, [sp, #4]
 8002150:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8002154:	a901      	add	r1, sp, #4
 8002156:	2201      	movs	r2, #1
 8002158:	f64f 73ff 	movw	r3, #65535	; 0xffff
 800215c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002160:	f7ff fdbb 	bl	8001cda <HAL_UART_Transmit>
 8002164:	9801      	ldr	r0, [sp, #4]
 8002166:	b002      	add	sp, #8
 8002168:	bd80      	pop	{r7, pc}

0800216a <main>:
 800216a:	b5b0      	push	{r4, r5, r7, lr}
 800216c:	af02      	add	r7, sp, #8
 800216e:	f640 11e8 	movw	r1, #2536	; 0x9e8
 8002172:	f643 0000 	movw	r0, #14336	; 0x3800
 8002176:	220c      	movs	r2, #12
 8002178:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800217c:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002180:	6008      	str	r0, [r1, #0]
 8002182:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002186:	6048      	str	r0, [r1, #4]
 8002188:	2000      	movs	r0, #0
 800218a:	e9c1 0002 	strd	r0, r0, [r1, #8]
 800218e:	6108      	str	r0, [r1, #16]
 8002190:	6248      	str	r0, [r1, #36]	; 0x24
 8002192:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002196:	e9c1 2005 	strd	r2, r0, [r1, #20]
 800219a:	2000      	movs	r0, #0
 800219c:	f7ff fe32 	bl	8001e04 <BSP_COM_Init>
 80021a0:	f7ff fe8c 	bl	8001ebc <initialise_benchmark>
 80021a4:	f247 1060 	movw	r0, #29024	; 0x7160
 80021a8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021ac:	f000 f948 	bl	8002440 <printf>
 80021b0:	f247 2005 	movw	r0, #29189	; 0x7205
 80021b4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021b8:	f000 f9a4 	bl	8002504 <puts>
 80021bc:	f7fe ff94 	bl	80010e8 <HAL_Init>
 80021c0:	f7fe ffaa 	bl	8001118 <HAL_GetTick>
 80021c4:	4604      	mov	r4, r0
 80021c6:	f7ff fe7a 	bl	8001ebe <benchmark>
 80021ca:	4605      	mov	r5, r0
 80021cc:	f7fe ffa4 	bl	8001118 <HAL_GetTick>
 80021d0:	1b04      	subs	r4, r0, r4
 80021d2:	4628      	mov	r0, r5
 80021d4:	f7ff fe6f 	bl	8001eb6 <verify_benchmark>
 80021d8:	1c41      	adds	r1, r0, #1
 80021da:	d006      	beq.n	80021ea <main+0x80>
 80021dc:	2801      	cmp	r0, #1
 80021de:	d109      	bne.n	80021f4 <main+0x8a>
 80021e0:	f247 1071 	movw	r0, #29041	; 0x7171
 80021e4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021e8:	e008      	b.n	80021fc <main+0x92>
 80021ea:	f247 1095 	movw	r0, #29077	; 0x7195
 80021ee:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021f2:	e003      	b.n	80021fc <main+0x92>
 80021f4:	f247 10ca 	movw	r0, #29130	; 0x71ca
 80021f8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80021fc:	4621      	mov	r1, r4
 80021fe:	f000 f91f 	bl	8002440 <printf>
 8002202:	2000      	movs	r0, #0
 8002204:	bdb0      	pop	{r4, r5, r7, pc}

08002206 <SysTick_Handler>:
 8002206:	b580      	push	{r7, lr}
 8002208:	466f      	mov	r7, sp
 800220a:	f7fe ff7d 	bl	8001108 <HAL_IncTick>
 800220e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002212:	f7fe bfd7 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

08002216 <_read>:
 8002216:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002218:	af03      	add	r7, sp, #12
 800221a:	f84d bd04 	str.w	fp, [sp, #-4]!
 800221e:	4614      	mov	r4, r2
 8002220:	460d      	mov	r5, r1
 8002222:	2c01      	cmp	r4, #1
 8002224:	db06      	blt.n	8002234 <_read+0x1e>
 8002226:	4626      	mov	r6, r4
 8002228:	f3af 8000 	nop.w
 800222c:	f805 0b01 	strb.w	r0, [r5], #1
 8002230:	3e01      	subs	r6, #1
 8002232:	d1f9      	bne.n	8002228 <_read+0x12>
 8002234:	4620      	mov	r0, r4
 8002236:	f85d bb04 	ldr.w	fp, [sp], #4
 800223a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800223c <_write>:
 800223c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800223e:	af03      	add	r7, sp, #12
 8002240:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002244:	4614      	mov	r4, r2
 8002246:	460d      	mov	r5, r1
 8002248:	2c01      	cmp	r4, #1
 800224a:	db06      	blt.n	800225a <_write+0x1e>
 800224c:	4626      	mov	r6, r4
 800224e:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002252:	f7ff ff79 	bl	8002148 <__io_putchar>
 8002256:	3e01      	subs	r6, #1
 8002258:	d1f9      	bne.n	800224e <_write+0x12>
 800225a:	4620      	mov	r0, r4
 800225c:	f85d bb04 	ldr.w	fp, [sp], #4
 8002260:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002262 <_sbrk>:
 8002262:	f640 226c 	movw	r2, #2668	; 0xa6c
 8002266:	4601      	mov	r1, r0
 8002268:	466b      	mov	r3, sp
 800226a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800226e:	6810      	ldr	r0, [r2, #0]
 8002270:	2800      	cmp	r0, #0
 8002272:	bf02      	ittt	eq
 8002274:	f241 10f8 	movweq	r0, #4600	; 0x11f8
 8002278:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 800227c:	6010      	streq	r0, [r2, #0]
 800227e:	4401      	add	r1, r0
 8002280:	4299      	cmp	r1, r3
 8002282:	bf9c      	itt	ls
 8002284:	6011      	strls	r1, [r2, #0]
 8002286:	4770      	bxls	lr
 8002288:	b580      	push	{r7, lr}
 800228a:	466f      	mov	r7, sp
 800228c:	f000 f864 	bl	8002358 <__errno>
 8002290:	210c      	movs	r1, #12
 8002292:	6001      	str	r1, [r0, #0]
 8002294:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002298:	bd80      	pop	{r7, pc}

0800229a <_close>:
 800229a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800229e:	4770      	bx	lr

080022a0 <_fstat>:
 80022a0:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80022a4:	6048      	str	r0, [r1, #4]
 80022a6:	2000      	movs	r0, #0
 80022a8:	4770      	bx	lr

080022aa <_isatty>:
 80022aa:	2001      	movs	r0, #1
 80022ac:	4770      	bx	lr

080022ae <_lseek>:
 80022ae:	2000      	movs	r0, #0
 80022b0:	4770      	bx	lr

080022b2 <SystemInit>:
 80022b2:	f64e 5088 	movw	r0, #60808	; 0xed88
 80022b6:	f04f 0c00 	mov.w	ip, #0
 80022ba:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80022be:	6801      	ldr	r1, [r0, #0]
 80022c0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80022c4:	6001      	str	r1, [r0, #0]
 80022c6:	f241 0100 	movw	r1, #4096	; 0x1000
 80022ca:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80022ce:	680a      	ldr	r2, [r1, #0]
 80022d0:	f042 0201 	orr.w	r2, r2, #1
 80022d4:	600a      	str	r2, [r1, #0]
 80022d6:	f8c1 c008 	str.w	ip, [r1, #8]
 80022da:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80022de:	680b      	ldr	r3, [r1, #0]
 80022e0:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80022e4:	401a      	ands	r2, r3
 80022e6:	600a      	str	r2, [r1, #0]
 80022e8:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80022ec:	60ca      	str	r2, [r1, #12]
 80022ee:	680a      	ldr	r2, [r1, #0]
 80022f0:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80022f4:	600a      	str	r2, [r1, #0]
 80022f6:	f8c1 c018 	str.w	ip, [r1, #24]
 80022fa:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80022fe:	f840 1c80 	str.w	r1, [r0, #-128]
 8002302:	4770      	bx	lr

08002304 <Reset_Handler>:
 8002304:	f8df d034 	ldr.w	sp, [pc, #52]	; 800233c <LoopForever+0x2>
 8002308:	2100      	movs	r1, #0
 800230a:	e003      	b.n	8002314 <LoopCopyDataInit>

0800230c <CopyDataInit>:
 800230c:	4b0c      	ldr	r3, [pc, #48]	; (8002340 <LoopForever+0x6>)
 800230e:	585b      	ldr	r3, [r3, r1]
 8002310:	5043      	str	r3, [r0, r1]
 8002312:	3104      	adds	r1, #4

08002314 <LoopCopyDataInit>:
 8002314:	480b      	ldr	r0, [pc, #44]	; (8002344 <LoopForever+0xa>)
 8002316:	4b0c      	ldr	r3, [pc, #48]	; (8002348 <LoopForever+0xe>)
 8002318:	1842      	adds	r2, r0, r1
 800231a:	429a      	cmp	r2, r3
 800231c:	d3f6      	bcc.n	800230c <CopyDataInit>
 800231e:	4a0b      	ldr	r2, [pc, #44]	; (800234c <LoopForever+0x12>)
 8002320:	e002      	b.n	8002328 <LoopFillZerobss>

08002322 <FillZerobss>:
 8002322:	2300      	movs	r3, #0
 8002324:	f842 3b04 	str.w	r3, [r2], #4

08002328 <LoopFillZerobss>:
 8002328:	4b09      	ldr	r3, [pc, #36]	; (8002350 <LoopForever+0x16>)
 800232a:	429a      	cmp	r2, r3
 800232c:	d3f9      	bcc.n	8002322 <FillZerobss>
 800232e:	f7ff ffc0 	bl	80022b2 <SystemInit>
 8002332:	f000 f817 	bl	8002364 <__libc_init_array>
 8002336:	f7ff ff18 	bl	800216a <main>

0800233a <LoopForever>:
 800233a:	e7fe      	b.n	800233a <LoopForever>
 800233c:	20018000 	.word	0x20018000
 8002340:	080074b0 	.word	0x080074b0
 8002344:	20000000 	.word	0x20000000
 8002348:	200009c8 	.word	0x200009c8
 800234c:	200009c8 	.word	0x200009c8
 8002350:	200011f4 	.word	0x200011f4

08002354 <ADC1_2_IRQHandler>:
 8002354:	e7fe      	b.n	8002354 <ADC1_2_IRQHandler>
	...

08002358 <__errno>:
 8002358:	4b01      	ldr	r3, [pc, #4]	; (8002360 <__errno+0x8>)
 800235a:	6818      	ldr	r0, [r3, #0]
 800235c:	4770      	bx	lr
 800235e:	bf00      	nop
 8002360:	20000018 	.word	0x20000018

08002364 <__libc_init_array>:
 8002364:	b570      	push	{r4, r5, r6, lr}
 8002366:	4e0d      	ldr	r6, [pc, #52]	; (800239c <__libc_init_array+0x38>)
 8002368:	4d0d      	ldr	r5, [pc, #52]	; (80023a0 <__libc_init_array+0x3c>)
 800236a:	1b76      	subs	r6, r6, r5
 800236c:	10b6      	asrs	r6, r6, #2
 800236e:	d006      	beq.n	800237e <__libc_init_array+0x1a>
 8002370:	2400      	movs	r4, #0
 8002372:	3401      	adds	r4, #1
 8002374:	f855 3b04 	ldr.w	r3, [r5], #4
 8002378:	4798      	blx	r3
 800237a:	42a6      	cmp	r6, r4
 800237c:	d1f9      	bne.n	8002372 <__libc_init_array+0xe>
 800237e:	4e09      	ldr	r6, [pc, #36]	; (80023a4 <__libc_init_array+0x40>)
 8002380:	4d09      	ldr	r5, [pc, #36]	; (80023a8 <__libc_init_array+0x44>)
 8002382:	1b76      	subs	r6, r6, r5
 8002384:	f004 feaa 	bl	80070dc <_init>
 8002388:	10b6      	asrs	r6, r6, #2
 800238a:	d006      	beq.n	800239a <__libc_init_array+0x36>
 800238c:	2400      	movs	r4, #0
 800238e:	3401      	adds	r4, #1
 8002390:	f855 3b04 	ldr.w	r3, [r5], #4
 8002394:	4798      	blx	r3
 8002396:	42a6      	cmp	r6, r4
 8002398:	d1f9      	bne.n	800238e <__libc_init_array+0x2a>
 800239a:	bd70      	pop	{r4, r5, r6, pc}
 800239c:	080074a0 	.word	0x080074a0
 80023a0:	080074a0 	.word	0x080074a0
 80023a4:	080074a8 	.word	0x080074a8
 80023a8:	080074a0 	.word	0x080074a0

080023ac <memset>:
 80023ac:	b4f0      	push	{r4, r5, r6, r7}
 80023ae:	0786      	lsls	r6, r0, #30
 80023b0:	d043      	beq.n	800243a <memset+0x8e>
 80023b2:	1e54      	subs	r4, r2, #1
 80023b4:	2a00      	cmp	r2, #0
 80023b6:	d03e      	beq.n	8002436 <memset+0x8a>
 80023b8:	b2ca      	uxtb	r2, r1
 80023ba:	4603      	mov	r3, r0
 80023bc:	e002      	b.n	80023c4 <memset+0x18>
 80023be:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80023c2:	d338      	bcc.n	8002436 <memset+0x8a>
 80023c4:	f803 2b01 	strb.w	r2, [r3], #1
 80023c8:	079d      	lsls	r5, r3, #30
 80023ca:	d1f8      	bne.n	80023be <memset+0x12>
 80023cc:	2c03      	cmp	r4, #3
 80023ce:	d92b      	bls.n	8002428 <memset+0x7c>
 80023d0:	b2cd      	uxtb	r5, r1
 80023d2:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80023d6:	2c0f      	cmp	r4, #15
 80023d8:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80023dc:	d916      	bls.n	800240c <memset+0x60>
 80023de:	f1a4 0710 	sub.w	r7, r4, #16
 80023e2:	093f      	lsrs	r7, r7, #4
 80023e4:	f103 0620 	add.w	r6, r3, #32
 80023e8:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80023ec:	f103 0210 	add.w	r2, r3, #16
 80023f0:	e942 5504 	strd	r5, r5, [r2, #-16]
 80023f4:	e942 5502 	strd	r5, r5, [r2, #-8]
 80023f8:	3210      	adds	r2, #16
 80023fa:	42b2      	cmp	r2, r6
 80023fc:	d1f8      	bne.n	80023f0 <memset+0x44>
 80023fe:	f004 040f 	and.w	r4, r4, #15
 8002402:	3701      	adds	r7, #1
 8002404:	2c03      	cmp	r4, #3
 8002406:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800240a:	d90d      	bls.n	8002428 <memset+0x7c>
 800240c:	461e      	mov	r6, r3
 800240e:	4622      	mov	r2, r4
 8002410:	3a04      	subs	r2, #4
 8002412:	2a03      	cmp	r2, #3
 8002414:	f846 5b04 	str.w	r5, [r6], #4
 8002418:	d8fa      	bhi.n	8002410 <memset+0x64>
 800241a:	1f22      	subs	r2, r4, #4
 800241c:	f022 0203 	bic.w	r2, r2, #3
 8002420:	3204      	adds	r2, #4
 8002422:	4413      	add	r3, r2
 8002424:	f004 0403 	and.w	r4, r4, #3
 8002428:	b12c      	cbz	r4, 8002436 <memset+0x8a>
 800242a:	b2c9      	uxtb	r1, r1
 800242c:	441c      	add	r4, r3
 800242e:	f803 1b01 	strb.w	r1, [r3], #1
 8002432:	429c      	cmp	r4, r3
 8002434:	d1fb      	bne.n	800242e <memset+0x82>
 8002436:	bcf0      	pop	{r4, r5, r6, r7}
 8002438:	4770      	bx	lr
 800243a:	4614      	mov	r4, r2
 800243c:	4603      	mov	r3, r0
 800243e:	e7c5      	b.n	80023cc <memset+0x20>

08002440 <printf>:
 8002440:	b40f      	push	{r0, r1, r2, r3}
 8002442:	b500      	push	{lr}
 8002444:	4907      	ldr	r1, [pc, #28]	; (8002464 <printf+0x24>)
 8002446:	b083      	sub	sp, #12
 8002448:	ab04      	add	r3, sp, #16
 800244a:	6808      	ldr	r0, [r1, #0]
 800244c:	f853 2b04 	ldr.w	r2, [r3], #4
 8002450:	6881      	ldr	r1, [r0, #8]
 8002452:	9301      	str	r3, [sp, #4]
 8002454:	f000 f860 	bl	8002518 <_vfprintf_r>
 8002458:	b003      	add	sp, #12
 800245a:	f85d eb04 	ldr.w	lr, [sp], #4
 800245e:	b004      	add	sp, #16
 8002460:	4770      	bx	lr
 8002462:	bf00      	nop
 8002464:	20000018 	.word	0x20000018

08002468 <_puts_r>:
 8002468:	b570      	push	{r4, r5, r6, lr}
 800246a:	4605      	mov	r5, r0
 800246c:	b088      	sub	sp, #32
 800246e:	4608      	mov	r0, r1
 8002470:	460c      	mov	r4, r1
 8002472:	f7fe f8e5 	bl	8000640 <strlen>
 8002476:	4a22      	ldr	r2, [pc, #136]	; (8002500 <_puts_r+0x98>)
 8002478:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800247a:	9404      	str	r4, [sp, #16]
 800247c:	2601      	movs	r6, #1
 800247e:	1c44      	adds	r4, r0, #1
 8002480:	a904      	add	r1, sp, #16
 8002482:	9206      	str	r2, [sp, #24]
 8002484:	2202      	movs	r2, #2
 8002486:	9403      	str	r4, [sp, #12]
 8002488:	9005      	str	r0, [sp, #20]
 800248a:	68ac      	ldr	r4, [r5, #8]
 800248c:	9607      	str	r6, [sp, #28]
 800248e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002492:	b31b      	cbz	r3, 80024dc <_puts_r+0x74>
 8002494:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002496:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800249a:	07ce      	lsls	r6, r1, #31
 800249c:	b29a      	uxth	r2, r3
 800249e:	d401      	bmi.n	80024a4 <_puts_r+0x3c>
 80024a0:	0590      	lsls	r0, r2, #22
 80024a2:	d525      	bpl.n	80024f0 <_puts_r+0x88>
 80024a4:	0491      	lsls	r1, r2, #18
 80024a6:	d406      	bmi.n	80024b6 <_puts_r+0x4e>
 80024a8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80024aa:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80024ae:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80024b2:	81a3      	strh	r3, [r4, #12]
 80024b4:	6662      	str	r2, [r4, #100]	; 0x64
 80024b6:	4628      	mov	r0, r5
 80024b8:	aa01      	add	r2, sp, #4
 80024ba:	4621      	mov	r1, r4
 80024bc:	f003 f860 	bl	8005580 <__sfvwrite_r>
 80024c0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80024c2:	2800      	cmp	r0, #0
 80024c4:	bf0c      	ite	eq
 80024c6:	250a      	moveq	r5, #10
 80024c8:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80024cc:	07da      	lsls	r2, r3, #31
 80024ce:	d402      	bmi.n	80024d6 <_puts_r+0x6e>
 80024d0:	89a3      	ldrh	r3, [r4, #12]
 80024d2:	059b      	lsls	r3, r3, #22
 80024d4:	d506      	bpl.n	80024e4 <_puts_r+0x7c>
 80024d6:	4628      	mov	r0, r5
 80024d8:	b008      	add	sp, #32
 80024da:	bd70      	pop	{r4, r5, r6, pc}
 80024dc:	4628      	mov	r0, r5
 80024de:	f002 feb9 	bl	8005254 <__sinit>
 80024e2:	e7d7      	b.n	8002494 <_puts_r+0x2c>
 80024e4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80024e6:	f003 fa07 	bl	80058f8 <__retarget_lock_release_recursive>
 80024ea:	4628      	mov	r0, r5
 80024ec:	b008      	add	sp, #32
 80024ee:	bd70      	pop	{r4, r5, r6, pc}
 80024f0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80024f2:	f003 f9ff 	bl	80058f4 <__retarget_lock_acquire_recursive>
 80024f6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80024fa:	b29a      	uxth	r2, r3
 80024fc:	e7d2      	b.n	80024a4 <_puts_r+0x3c>
 80024fe:	bf00      	nop
 8002500:	0800720c 	.word	0x0800720c

08002504 <puts>:
 8002504:	4b02      	ldr	r3, [pc, #8]	; (8002510 <puts+0xc>)
 8002506:	4601      	mov	r1, r0
 8002508:	6818      	ldr	r0, [r3, #0]
 800250a:	f7ff bfad 	b.w	8002468 <_puts_r>
 800250e:	bf00      	nop
 8002510:	20000018 	.word	0x20000018
 8002514:	00000000 	.word	0x00000000

08002518 <_vfprintf_r>:
 8002518:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800251c:	b0d7      	sub	sp, #348	; 0x15c
 800251e:	461c      	mov	r4, r3
 8002520:	4689      	mov	r9, r1
 8002522:	4617      	mov	r7, r2
 8002524:	4605      	mov	r5, r0
 8002526:	9003      	str	r0, [sp, #12]
 8002528:	f003 f9d2 	bl	80058d0 <_localeconv_r>
 800252c:	6803      	ldr	r3, [r0, #0]
 800252e:	9316      	str	r3, [sp, #88]	; 0x58
 8002530:	4618      	mov	r0, r3
 8002532:	f7fe f885 	bl	8000640 <strlen>
 8002536:	9408      	str	r4, [sp, #32]
 8002538:	9015      	str	r0, [sp, #84]	; 0x54
 800253a:	b11d      	cbz	r5, 8002544 <_vfprintf_r+0x2c>
 800253c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800253e:	2b00      	cmp	r3, #0
 8002540:	f000 8107 	beq.w	8002752 <_vfprintf_r+0x23a>
 8002544:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002548:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800254c:	07c8      	lsls	r0, r1, #31
 800254e:	b293      	uxth	r3, r2
 8002550:	d402      	bmi.n	8002558 <_vfprintf_r+0x40>
 8002552:	0599      	lsls	r1, r3, #22
 8002554:	f140 811f 	bpl.w	8002796 <_vfprintf_r+0x27e>
 8002558:	049e      	lsls	r6, r3, #18
 800255a:	d40a      	bmi.n	8002572 <_vfprintf_r+0x5a>
 800255c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002560:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002564:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002568:	f8a9 300c 	strh.w	r3, [r9, #12]
 800256c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002570:	b29b      	uxth	r3, r3
 8002572:	071d      	lsls	r5, r3, #28
 8002574:	f140 80b2 	bpl.w	80026dc <_vfprintf_r+0x1c4>
 8002578:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800257c:	2a00      	cmp	r2, #0
 800257e:	f000 80ad 	beq.w	80026dc <_vfprintf_r+0x1c4>
 8002582:	f003 021a 	and.w	r2, r3, #26
 8002586:	2a0a      	cmp	r2, #10
 8002588:	f000 80c9 	beq.w	800271e <_vfprintf_r+0x206>
 800258c:	2300      	movs	r3, #0
 800258e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80027a8 <_vfprintf_r+0x290>
 8002592:	9310      	str	r3, [sp, #64]	; 0x40
 8002594:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002598:	9317      	str	r3, [sp, #92]	; 0x5c
 800259a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800259e:	931b      	str	r3, [sp, #108]	; 0x6c
 80025a0:	9318      	str	r3, [sp, #96]	; 0x60
 80025a2:	9305      	str	r3, [sp, #20]
 80025a4:	ab2d      	add	r3, sp, #180	; 0xb4
 80025a6:	932a      	str	r3, [sp, #168]	; 0xa8
 80025a8:	469b      	mov	fp, r3
 80025aa:	783b      	ldrb	r3, [r7, #0]
 80025ac:	f8cd 901c 	str.w	r9, [sp, #28]
 80025b0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80025b4:	2b00      	cmp	r3, #0
 80025b6:	f000 8259 	beq.w	8002a6c <_vfprintf_r+0x554>
 80025ba:	2b25      	cmp	r3, #37	; 0x25
 80025bc:	463c      	mov	r4, r7
 80025be:	d102      	bne.n	80025c6 <_vfprintf_r+0xae>
 80025c0:	e01d      	b.n	80025fe <_vfprintf_r+0xe6>
 80025c2:	2b25      	cmp	r3, #37	; 0x25
 80025c4:	d003      	beq.n	80025ce <_vfprintf_r+0xb6>
 80025c6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80025ca:	2b00      	cmp	r3, #0
 80025cc:	d1f9      	bne.n	80025c2 <_vfprintf_r+0xaa>
 80025ce:	1be5      	subs	r5, r4, r7
 80025d0:	b18d      	cbz	r5, 80025f6 <_vfprintf_r+0xde>
 80025d2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80025d6:	3301      	adds	r3, #1
 80025d8:	442a      	add	r2, r5
 80025da:	2b07      	cmp	r3, #7
 80025dc:	f8cb 7000 	str.w	r7, [fp]
 80025e0:	f8cb 5004 	str.w	r5, [fp, #4]
 80025e4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80025e8:	f300 80ca 	bgt.w	8002780 <_vfprintf_r+0x268>
 80025ec:	f10b 0b08 	add.w	fp, fp, #8
 80025f0:	9b05      	ldr	r3, [sp, #20]
 80025f2:	442b      	add	r3, r5
 80025f4:	9305      	str	r3, [sp, #20]
 80025f6:	7823      	ldrb	r3, [r4, #0]
 80025f8:	2b00      	cmp	r3, #0
 80025fa:	f000 8237 	beq.w	8002a6c <_vfprintf_r+0x554>
 80025fe:	2300      	movs	r3, #0
 8002600:	7866      	ldrb	r6, [r4, #1]
 8002602:	9306      	str	r3, [sp, #24]
 8002604:	4698      	mov	r8, r3
 8002606:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800260a:	f104 0a01 	add.w	sl, r4, #1
 800260e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002612:	252b      	movs	r5, #43	; 0x2b
 8002614:	f10a 0a01 	add.w	sl, sl, #1
 8002618:	f1a6 0320 	sub.w	r3, r6, #32
 800261c:	2b5a      	cmp	r3, #90	; 0x5a
 800261e:	f200 842a 	bhi.w	8002e76 <_vfprintf_r+0x95e>
 8002622:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002626:	03aa      	.short	0x03aa
 8002628:	04280428 	.word	0x04280428
 800262c:	0428029c 	.word	0x0428029c
 8002630:	04280428 	.word	0x04280428
 8002634:	042802a7 	.word	0x042802a7
 8002638:	02c60428 	.word	0x02c60428
 800263c:	042802d2 	.word	0x042802d2
 8002640:	02dc02d7 	.word	0x02dc02d7
 8002644:	02f60428 	.word	0x02f60428
 8002648:	026d026d 	.word	0x026d026d
 800264c:	026d026d 	.word	0x026d026d
 8002650:	026d026d 	.word	0x026d026d
 8002654:	026d026d 	.word	0x026d026d
 8002658:	0428026d 	.word	0x0428026d
 800265c:	04280428 	.word	0x04280428
 8002660:	04280428 	.word	0x04280428
 8002664:	04280428 	.word	0x04280428
 8002668:	042802fb 	.word	0x042802fb
 800266c:	03f3033c 	.word	0x03f3033c
 8002670:	02fb02fb 	.word	0x02fb02fb
 8002674:	042802fb 	.word	0x042802fb
 8002678:	04280428 	.word	0x04280428
 800267c:	03ee0428 	.word	0x03ee0428
 8002680:	04280428 	.word	0x04280428
 8002684:	0428009a 	.word	0x0428009a
 8002688:	04280428 	.word	0x04280428
 800268c:	04280350 	.word	0x04280350
 8002690:	04280379 	.word	0x04280379
 8002694:	03900428 	.word	0x03900428
 8002698:	04280428 	.word	0x04280428
 800269c:	04280428 	.word	0x04280428
 80026a0:	04280428 	.word	0x04280428
 80026a4:	04280428 	.word	0x04280428
 80026a8:	042802fb 	.word	0x042802fb
 80026ac:	00c5033c 	.word	0x00c5033c
 80026b0:	02fb02fb 	.word	0x02fb02fb
 80026b4:	03d102fb 	.word	0x03d102fb
 80026b8:	007000c5 	.word	0x007000c5
 80026bc:	03b50428 	.word	0x03b50428
 80026c0:	03c20428 	.word	0x03c20428
 80026c4:	03de009c 	.word	0x03de009c
 80026c8:	04280070 	.word	0x04280070
 80026cc:	00720350 	.word	0x00720350
 80026d0:	0428022c 	.word	0x0428022c
 80026d4:	027c0428 	.word	0x027c0428
 80026d8:	00720428 	.word	0x00720428
 80026dc:	4649      	mov	r1, r9
 80026de:	9803      	ldr	r0, [sp, #12]
 80026e0:	f001 fc9a 	bl	8004018 <__swsetup_r>
 80026e4:	b1a0      	cbz	r0, 8002710 <_vfprintf_r+0x1f8>
 80026e6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80026ea:	07d8      	lsls	r0, r3, #31
 80026ec:	d404      	bmi.n	80026f8 <_vfprintf_r+0x1e0>
 80026ee:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80026f2:	0599      	lsls	r1, r3, #22
 80026f4:	f140 83b7 	bpl.w	8002e66 <_vfprintf_r+0x94e>
 80026f8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80026fc:	9305      	str	r3, [sp, #20]
 80026fe:	9805      	ldr	r0, [sp, #20]
 8002700:	b057      	add	sp, #348	; 0x15c
 8002702:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002706:	f048 0820 	orr.w	r8, r8, #32
 800270a:	f89a 6000 	ldrb.w	r6, [sl]
 800270e:	e781      	b.n	8002614 <_vfprintf_r+0xfc>
 8002710:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002714:	f003 021a 	and.w	r2, r3, #26
 8002718:	2a0a      	cmp	r2, #10
 800271a:	f47f af37 	bne.w	800258c <_vfprintf_r+0x74>
 800271e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002722:	2a00      	cmp	r2, #0
 8002724:	f6ff af32 	blt.w	800258c <_vfprintf_r+0x74>
 8002728:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800272c:	07d2      	lsls	r2, r2, #31
 800272e:	d405      	bmi.n	800273c <_vfprintf_r+0x224>
 8002730:	059b      	lsls	r3, r3, #22
 8002732:	d403      	bmi.n	800273c <_vfprintf_r+0x224>
 8002734:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002738:	f003 f8de 	bl	80058f8 <__retarget_lock_release_recursive>
 800273c:	4623      	mov	r3, r4
 800273e:	463a      	mov	r2, r7
 8002740:	4649      	mov	r1, r9
 8002742:	9803      	ldr	r0, [sp, #12]
 8002744:	f001 fc26 	bl	8003f94 <__sbprintf>
 8002748:	9005      	str	r0, [sp, #20]
 800274a:	9805      	ldr	r0, [sp, #20]
 800274c:	b057      	add	sp, #348	; 0x15c
 800274e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002752:	9803      	ldr	r0, [sp, #12]
 8002754:	f002 fd7e 	bl	8005254 <__sinit>
 8002758:	e6f4      	b.n	8002544 <_vfprintf_r+0x2c>
 800275a:	f048 0810 	orr.w	r8, r8, #16
 800275e:	f018 0f20 	tst.w	r8, #32
 8002762:	f000 836c 	beq.w	8002e3e <_vfprintf_r+0x926>
 8002766:	9c08      	ldr	r4, [sp, #32]
 8002768:	3407      	adds	r4, #7
 800276a:	f024 0307 	bic.w	r3, r4, #7
 800276e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002772:	f103 0208 	add.w	r2, r3, #8
 8002776:	9208      	str	r2, [sp, #32]
 8002778:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800277c:	2200      	movs	r2, #0
 800277e:	e18c      	b.n	8002a9a <_vfprintf_r+0x582>
 8002780:	aa2a      	add	r2, sp, #168	; 0xa8
 8002782:	9907      	ldr	r1, [sp, #28]
 8002784:	9803      	ldr	r0, [sp, #12]
 8002786:	f004 f9f5 	bl	8006b74 <__sprint_r>
 800278a:	2800      	cmp	r0, #0
 800278c:	f041 8376 	bne.w	8003e7c <_vfprintf_r+0x1964>
 8002790:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002794:	e72c      	b.n	80025f0 <_vfprintf_r+0xd8>
 8002796:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800279a:	f003 f8ab 	bl	80058f4 <__retarget_lock_acquire_recursive>
 800279e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80027a2:	b293      	uxth	r3, r2
 80027a4:	e6d8      	b.n	8002558 <_vfprintf_r+0x40>
 80027a6:	bf00      	nop
	...
 80027b0:	4643      	mov	r3, r8
 80027b2:	069f      	lsls	r7, r3, #26
 80027b4:	f140 832f 	bpl.w	8002e16 <_vfprintf_r+0x8fe>
 80027b8:	9c08      	ldr	r4, [sp, #32]
 80027ba:	3407      	adds	r4, #7
 80027bc:	f024 0407 	bic.w	r4, r4, #7
 80027c0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80027c4:	f104 0208 	add.w	r2, r4, #8
 80027c8:	9208      	str	r2, [sp, #32]
 80027ca:	4604      	mov	r4, r0
 80027cc:	460d      	mov	r5, r1
 80027ce:	2800      	cmp	r0, #0
 80027d0:	f171 0200 	sbcs.w	r2, r1, #0
 80027d4:	da05      	bge.n	80027e2 <_vfprintf_r+0x2ca>
 80027d6:	222d      	movs	r2, #45	; 0x2d
 80027d8:	4264      	negs	r4, r4
 80027da:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80027de:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80027e2:	aa56      	add	r2, sp, #344	; 0x158
 80027e4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80027e8:	9204      	str	r2, [sp, #16]
 80027ea:	f000 84b2 	beq.w	8003152 <_vfprintf_r+0xc3a>
 80027ee:	2201      	movs	r2, #1
 80027f0:	ea54 0105 	orrs.w	r1, r4, r5
 80027f4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80027f8:	f040 8159 	bne.w	8002aae <_vfprintf_r+0x596>
 80027fc:	f1b9 0f00 	cmp.w	r9, #0
 8002800:	f040 8619 	bne.w	8003436 <_vfprintf_r+0xf1e>
 8002804:	2a00      	cmp	r2, #0
 8002806:	f040 8508 	bne.w	800321a <_vfprintf_r+0xd02>
 800280a:	f013 0301 	ands.w	r3, r3, #1
 800280e:	af56      	add	r7, sp, #344	; 0x158
 8002810:	9309      	str	r3, [sp, #36]	; 0x24
 8002812:	d002      	beq.n	800281a <_vfprintf_r+0x302>
 8002814:	2330      	movs	r3, #48	; 0x30
 8002816:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800281a:	2300      	movs	r3, #0
 800281c:	930a      	str	r3, [sp, #40]	; 0x28
 800281e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002820:	9314      	str	r3, [sp, #80]	; 0x50
 8002822:	9311      	str	r3, [sp, #68]	; 0x44
 8002824:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002826:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800282a:	454b      	cmp	r3, r9
 800282c:	bfb8      	it	lt
 800282e:	464b      	movlt	r3, r9
 8002830:	9304      	str	r3, [sp, #16]
 8002832:	b112      	cbz	r2, 800283a <_vfprintf_r+0x322>
 8002834:	9b04      	ldr	r3, [sp, #16]
 8002836:	3301      	adds	r3, #1
 8002838:	9304      	str	r3, [sp, #16]
 800283a:	f018 0302 	ands.w	r3, r8, #2
 800283e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002840:	d002      	beq.n	8002848 <_vfprintf_r+0x330>
 8002842:	9b04      	ldr	r3, [sp, #16]
 8002844:	3302      	adds	r3, #2
 8002846:	9304      	str	r3, [sp, #16]
 8002848:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 800284c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800284e:	930e      	str	r3, [sp, #56]	; 0x38
 8002850:	d13f      	bne.n	80028d2 <_vfprintf_r+0x3ba>
 8002852:	9b06      	ldr	r3, [sp, #24]
 8002854:	9904      	ldr	r1, [sp, #16]
 8002856:	1a5d      	subs	r5, r3, r1
 8002858:	2d00      	cmp	r5, #0
 800285a:	dd3a      	ble.n	80028d2 <_vfprintf_r+0x3ba>
 800285c:	2d10      	cmp	r5, #16
 800285e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002860:	dd29      	ble.n	80028b6 <_vfprintf_r+0x39e>
 8002862:	4659      	mov	r1, fp
 8002864:	4620      	mov	r0, r4
 8002866:	9620      	str	r6, [sp, #128]	; 0x80
 8002868:	2310      	movs	r3, #16
 800286a:	9c03      	ldr	r4, [sp, #12]
 800286c:	9e07      	ldr	r6, [sp, #28]
 800286e:	46bb      	mov	fp, r7
 8002870:	e004      	b.n	800287c <_vfprintf_r+0x364>
 8002872:	3d10      	subs	r5, #16
 8002874:	2d10      	cmp	r5, #16
 8002876:	f101 0108 	add.w	r1, r1, #8
 800287a:	dd18      	ble.n	80028ae <_vfprintf_r+0x396>
 800287c:	3201      	adds	r2, #1
 800287e:	4fba      	ldr	r7, [pc, #744]	; (8002b68 <_vfprintf_r+0x650>)
 8002880:	3010      	adds	r0, #16
 8002882:	2a07      	cmp	r2, #7
 8002884:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002888:	e9c1 7300 	strd	r7, r3, [r1]
 800288c:	ddf1      	ble.n	8002872 <_vfprintf_r+0x35a>
 800288e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002890:	4631      	mov	r1, r6
 8002892:	4620      	mov	r0, r4
 8002894:	930c      	str	r3, [sp, #48]	; 0x30
 8002896:	f004 f96d 	bl	8006b74 <__sprint_r>
 800289a:	2800      	cmp	r0, #0
 800289c:	f040 843d 	bne.w	800311a <_vfprintf_r+0xc02>
 80028a0:	3d10      	subs	r5, #16
 80028a2:	2d10      	cmp	r5, #16
 80028a4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80028a8:	a92d      	add	r1, sp, #180	; 0xb4
 80028aa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80028ac:	dce6      	bgt.n	800287c <_vfprintf_r+0x364>
 80028ae:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80028b0:	465f      	mov	r7, fp
 80028b2:	4604      	mov	r4, r0
 80028b4:	468b      	mov	fp, r1
 80028b6:	3201      	adds	r2, #1
 80028b8:	4bab      	ldr	r3, [pc, #684]	; (8002b68 <_vfprintf_r+0x650>)
 80028ba:	442c      	add	r4, r5
 80028bc:	2a07      	cmp	r2, #7
 80028be:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028c2:	e9cb 3500 	strd	r3, r5, [fp]
 80028c6:	f300 84ff 	bgt.w	80032c8 <_vfprintf_r+0xdb0>
 80028ca:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80028ce:	f10b 0b08 	add.w	fp, fp, #8
 80028d2:	b172      	cbz	r2, 80028f2 <_vfprintf_r+0x3da>
 80028d4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80028d6:	3201      	adds	r2, #1
 80028d8:	3401      	adds	r4, #1
 80028da:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 80028de:	2101      	movs	r1, #1
 80028e0:	2a07      	cmp	r2, #7
 80028e2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80028e6:	e9cb 0100 	strd	r0, r1, [fp]
 80028ea:	f300 8418 	bgt.w	800311e <_vfprintf_r+0xc06>
 80028ee:	f10b 0b08 	add.w	fp, fp, #8
 80028f2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80028f4:	b16b      	cbz	r3, 8002912 <_vfprintf_r+0x3fa>
 80028f6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80028f8:	3301      	adds	r3, #1
 80028fa:	3402      	adds	r4, #2
 80028fc:	a923      	add	r1, sp, #140	; 0x8c
 80028fe:	2202      	movs	r2, #2
 8002900:	2b07      	cmp	r3, #7
 8002902:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002906:	e9cb 1200 	strd	r1, r2, [fp]
 800290a:	f300 8415 	bgt.w	8003138 <_vfprintf_r+0xc20>
 800290e:	f10b 0b08 	add.w	fp, fp, #8
 8002912:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002914:	2b80      	cmp	r3, #128	; 0x80
 8002916:	f000 8331 	beq.w	8002f7c <_vfprintf_r+0xa64>
 800291a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800291c:	eba9 0503 	sub.w	r5, r9, r3
 8002920:	2d00      	cmp	r5, #0
 8002922:	dd37      	ble.n	8002994 <_vfprintf_r+0x47c>
 8002924:	2d10      	cmp	r5, #16
 8002926:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002928:	4b90      	ldr	r3, [pc, #576]	; (8002b6c <_vfprintf_r+0x654>)
 800292a:	dd28      	ble.n	800297e <_vfprintf_r+0x466>
 800292c:	4659      	mov	r1, fp
 800292e:	4620      	mov	r0, r4
 8002930:	46bb      	mov	fp, r7
 8002932:	f04f 0910 	mov.w	r9, #16
 8002936:	4637      	mov	r7, r6
 8002938:	461c      	mov	r4, r3
 800293a:	9e07      	ldr	r6, [sp, #28]
 800293c:	e004      	b.n	8002948 <_vfprintf_r+0x430>
 800293e:	3d10      	subs	r5, #16
 8002940:	2d10      	cmp	r5, #16
 8002942:	f101 0108 	add.w	r1, r1, #8
 8002946:	dd15      	ble.n	8002974 <_vfprintf_r+0x45c>
 8002948:	3201      	adds	r2, #1
 800294a:	3010      	adds	r0, #16
 800294c:	2a07      	cmp	r2, #7
 800294e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002952:	e9c1 4900 	strd	r4, r9, [r1]
 8002956:	ddf2      	ble.n	800293e <_vfprintf_r+0x426>
 8002958:	aa2a      	add	r2, sp, #168	; 0xa8
 800295a:	4631      	mov	r1, r6
 800295c:	9803      	ldr	r0, [sp, #12]
 800295e:	f004 f909 	bl	8006b74 <__sprint_r>
 8002962:	2800      	cmp	r0, #0
 8002964:	f040 83d9 	bne.w	800311a <_vfprintf_r+0xc02>
 8002968:	3d10      	subs	r5, #16
 800296a:	2d10      	cmp	r5, #16
 800296c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002970:	a92d      	add	r1, sp, #180	; 0xb4
 8002972:	dce9      	bgt.n	8002948 <_vfprintf_r+0x430>
 8002974:	463e      	mov	r6, r7
 8002976:	4623      	mov	r3, r4
 8002978:	465f      	mov	r7, fp
 800297a:	4604      	mov	r4, r0
 800297c:	468b      	mov	fp, r1
 800297e:	3201      	adds	r2, #1
 8002980:	442c      	add	r4, r5
 8002982:	2a07      	cmp	r2, #7
 8002984:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002988:	e9cb 3500 	strd	r3, r5, [fp]
 800298c:	f300 83ef 	bgt.w	800316e <_vfprintf_r+0xc56>
 8002990:	f10b 0b08 	add.w	fp, fp, #8
 8002994:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002998:	f040 8280 	bne.w	8002e9c <_vfprintf_r+0x984>
 800299c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800299e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80029a0:	f8cb 7000 	str.w	r7, [fp]
 80029a4:	3301      	adds	r3, #1
 80029a6:	4414      	add	r4, r2
 80029a8:	2b07      	cmp	r3, #7
 80029aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80029ac:	f8cb 2004 	str.w	r2, [fp, #4]
 80029b0:	932b      	str	r3, [sp, #172]	; 0xac
 80029b2:	f300 8392 	bgt.w	80030da <_vfprintf_r+0xbc2>
 80029b6:	f10b 0b08 	add.w	fp, fp, #8
 80029ba:	f018 0f04 	tst.w	r8, #4
 80029be:	d03b      	beq.n	8002a38 <_vfprintf_r+0x520>
 80029c0:	9b06      	ldr	r3, [sp, #24]
 80029c2:	9a04      	ldr	r2, [sp, #16]
 80029c4:	1a9d      	subs	r5, r3, r2
 80029c6:	2d00      	cmp	r5, #0
 80029c8:	dd36      	ble.n	8002a38 <_vfprintf_r+0x520>
 80029ca:	2d10      	cmp	r5, #16
 80029cc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80029ce:	dd21      	ble.n	8002a14 <_vfprintf_r+0x4fc>
 80029d0:	2610      	movs	r6, #16
 80029d2:	9f03      	ldr	r7, [sp, #12]
 80029d4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80029d8:	e004      	b.n	80029e4 <_vfprintf_r+0x4cc>
 80029da:	3d10      	subs	r5, #16
 80029dc:	2d10      	cmp	r5, #16
 80029de:	f10b 0b08 	add.w	fp, fp, #8
 80029e2:	dd17      	ble.n	8002a14 <_vfprintf_r+0x4fc>
 80029e4:	3301      	adds	r3, #1
 80029e6:	4a60      	ldr	r2, [pc, #384]	; (8002b68 <_vfprintf_r+0x650>)
 80029e8:	3410      	adds	r4, #16
 80029ea:	2b07      	cmp	r3, #7
 80029ec:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80029f0:	e9cb 2600 	strd	r2, r6, [fp]
 80029f4:	ddf1      	ble.n	80029da <_vfprintf_r+0x4c2>
 80029f6:	aa2a      	add	r2, sp, #168	; 0xa8
 80029f8:	4641      	mov	r1, r8
 80029fa:	4638      	mov	r0, r7
 80029fc:	f004 f8ba 	bl	8006b74 <__sprint_r>
 8002a00:	2800      	cmp	r0, #0
 8002a02:	f040 856c 	bne.w	80034de <_vfprintf_r+0xfc6>
 8002a06:	3d10      	subs	r5, #16
 8002a08:	2d10      	cmp	r5, #16
 8002a0a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002a0e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002a12:	dce7      	bgt.n	80029e4 <_vfprintf_r+0x4cc>
 8002a14:	3301      	adds	r3, #1
 8002a16:	4a54      	ldr	r2, [pc, #336]	; (8002b68 <_vfprintf_r+0x650>)
 8002a18:	442c      	add	r4, r5
 8002a1a:	2b07      	cmp	r3, #7
 8002a1c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002a20:	e9cb 2500 	strd	r2, r5, [fp]
 8002a24:	dd08      	ble.n	8002a38 <_vfprintf_r+0x520>
 8002a26:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a28:	9907      	ldr	r1, [sp, #28]
 8002a2a:	9803      	ldr	r0, [sp, #12]
 8002a2c:	f004 f8a2 	bl	8006b74 <__sprint_r>
 8002a30:	2800      	cmp	r0, #0
 8002a32:	f040 82e9 	bne.w	8003008 <_vfprintf_r+0xaf0>
 8002a36:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002a38:	9904      	ldr	r1, [sp, #16]
 8002a3a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002a3e:	428a      	cmp	r2, r1
 8002a40:	bfac      	ite	ge
 8002a42:	189b      	addge	r3, r3, r2
 8002a44:	185b      	addlt	r3, r3, r1
 8002a46:	9305      	str	r3, [sp, #20]
 8002a48:	2c00      	cmp	r4, #0
 8002a4a:	f040 82d5 	bne.w	8002ff8 <_vfprintf_r+0xae0>
 8002a4e:	2300      	movs	r3, #0
 8002a50:	932b      	str	r3, [sp, #172]	; 0xac
 8002a52:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002a54:	b11b      	cbz	r3, 8002a5e <_vfprintf_r+0x546>
 8002a56:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002a58:	9803      	ldr	r0, [sp, #12]
 8002a5a:	f002 fc9d 	bl	8005398 <_free_r>
 8002a5e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002a62:	4657      	mov	r7, sl
 8002a64:	783b      	ldrb	r3, [r7, #0]
 8002a66:	2b00      	cmp	r3, #0
 8002a68:	f47f ada7 	bne.w	80025ba <_vfprintf_r+0xa2>
 8002a6c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002a6e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002a72:	2b00      	cmp	r3, #0
 8002a74:	f041 80e7 	bne.w	8003c46 <_vfprintf_r+0x172e>
 8002a78:	2300      	movs	r3, #0
 8002a7a:	932b      	str	r3, [sp, #172]	; 0xac
 8002a7c:	e2cb      	b.n	8003016 <_vfprintf_r+0xafe>
 8002a7e:	4643      	mov	r3, r8
 8002a80:	069a      	lsls	r2, r3, #26
 8002a82:	f140 814e 	bpl.w	8002d22 <_vfprintf_r+0x80a>
 8002a86:	9c08      	ldr	r4, [sp, #32]
 8002a88:	3407      	adds	r4, #7
 8002a8a:	f024 0207 	bic.w	r2, r4, #7
 8002a8e:	f102 0108 	add.w	r1, r2, #8
 8002a92:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002a96:	9108      	str	r1, [sp, #32]
 8002a98:	2201      	movs	r2, #1
 8002a9a:	2100      	movs	r1, #0
 8002a9c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002aa0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002aa4:	a956      	add	r1, sp, #344	; 0x158
 8002aa6:	9104      	str	r1, [sp, #16]
 8002aa8:	f47f aea2 	bne.w	80027f0 <_vfprintf_r+0x2d8>
 8002aac:	4698      	mov	r8, r3
 8002aae:	2a01      	cmp	r2, #1
 8002ab0:	f000 8350 	beq.w	8003154 <_vfprintf_r+0xc3c>
 8002ab4:	2a02      	cmp	r2, #2
 8002ab6:	f000 831b 	beq.w	80030f0 <_vfprintf_r+0xbd8>
 8002aba:	a956      	add	r1, sp, #344	; 0x158
 8002abc:	e000      	b.n	8002ac0 <_vfprintf_r+0x5a8>
 8002abe:	4639      	mov	r1, r7
 8002ac0:	08e2      	lsrs	r2, r4, #3
 8002ac2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002ac6:	08e8      	lsrs	r0, r5, #3
 8002ac8:	f004 0307 	and.w	r3, r4, #7
 8002acc:	4605      	mov	r5, r0
 8002ace:	4614      	mov	r4, r2
 8002ad0:	3330      	adds	r3, #48	; 0x30
 8002ad2:	ea54 0205 	orrs.w	r2, r4, r5
 8002ad6:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002ada:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002ade:	d1ee      	bne.n	8002abe <_vfprintf_r+0x5a6>
 8002ae0:	f018 0f01 	tst.w	r8, #1
 8002ae4:	f000 8314 	beq.w	8003110 <_vfprintf_r+0xbf8>
 8002ae8:	2b30      	cmp	r3, #48	; 0x30
 8002aea:	f000 8311 	beq.w	8003110 <_vfprintf_r+0xbf8>
 8002aee:	9a04      	ldr	r2, [sp, #16]
 8002af0:	3902      	subs	r1, #2
 8002af2:	2330      	movs	r3, #48	; 0x30
 8002af4:	1a52      	subs	r2, r2, r1
 8002af6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002afa:	9209      	str	r2, [sp, #36]	; 0x24
 8002afc:	460f      	mov	r7, r1
 8002afe:	e68c      	b.n	800281a <_vfprintf_r+0x302>
 8002b00:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b04:	2200      	movs	r2, #0
 8002b06:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002b0a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002b0e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002b12:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002b16:	2b09      	cmp	r3, #9
 8002b18:	d9f5      	bls.n	8002b06 <_vfprintf_r+0x5ee>
 8002b1a:	9206      	str	r2, [sp, #24]
 8002b1c:	e57c      	b.n	8002618 <_vfprintf_r+0x100>
 8002b1e:	4b14      	ldr	r3, [pc, #80]	; (8002b70 <_vfprintf_r+0x658>)
 8002b20:	9317      	str	r3, [sp, #92]	; 0x5c
 8002b22:	f018 0f20 	tst.w	r8, #32
 8002b26:	f000 8114 	beq.w	8002d52 <_vfprintf_r+0x83a>
 8002b2a:	9c08      	ldr	r4, [sp, #32]
 8002b2c:	3407      	adds	r4, #7
 8002b2e:	f024 0307 	bic.w	r3, r4, #7
 8002b32:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002b36:	f103 0208 	add.w	r2, r3, #8
 8002b3a:	9208      	str	r2, [sp, #32]
 8002b3c:	f018 0f01 	tst.w	r8, #1
 8002b40:	d009      	beq.n	8002b56 <_vfprintf_r+0x63e>
 8002b42:	ea54 0305 	orrs.w	r3, r4, r5
 8002b46:	d006      	beq.n	8002b56 <_vfprintf_r+0x63e>
 8002b48:	2330      	movs	r3, #48	; 0x30
 8002b4a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002b4e:	f048 0802 	orr.w	r8, r8, #2
 8002b52:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002b56:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002b5a:	2202      	movs	r2, #2
 8002b5c:	e79d      	b.n	8002a9a <_vfprintf_r+0x582>
 8002b5e:	f048 0801 	orr.w	r8, r8, #1
 8002b62:	f89a 6000 	ldrb.w	r6, [sl]
 8002b66:	e555      	b.n	8002614 <_vfprintf_r+0xfc>
 8002b68:	08007254 	.word	0x08007254
 8002b6c:	08007264 	.word	0x08007264
 8002b70:	08007220 	.word	0x08007220
 8002b74:	9e03      	ldr	r6, [sp, #12]
 8002b76:	4630      	mov	r0, r6
 8002b78:	f002 feaa 	bl	80058d0 <_localeconv_r>
 8002b7c:	6843      	ldr	r3, [r0, #4]
 8002b7e:	9318      	str	r3, [sp, #96]	; 0x60
 8002b80:	4618      	mov	r0, r3
 8002b82:	f7fd fd5d 	bl	8000640 <strlen>
 8002b86:	901b      	str	r0, [sp, #108]	; 0x6c
 8002b88:	4604      	mov	r4, r0
 8002b8a:	4630      	mov	r0, r6
 8002b8c:	f002 fea0 	bl	80058d0 <_localeconv_r>
 8002b90:	6883      	ldr	r3, [r0, #8]
 8002b92:	931a      	str	r3, [sp, #104]	; 0x68
 8002b94:	2c00      	cmp	r4, #0
 8002b96:	f43f adb8 	beq.w	800270a <_vfprintf_r+0x1f2>
 8002b9a:	f89a 6000 	ldrb.w	r6, [sl]
 8002b9e:	2b00      	cmp	r3, #0
 8002ba0:	f43f ad38 	beq.w	8002614 <_vfprintf_r+0xfc>
 8002ba4:	781b      	ldrb	r3, [r3, #0]
 8002ba6:	2b00      	cmp	r3, #0
 8002ba8:	f43f ad34 	beq.w	8002614 <_vfprintf_r+0xfc>
 8002bac:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002bb0:	e530      	b.n	8002614 <_vfprintf_r+0xfc>
 8002bb2:	9b08      	ldr	r3, [sp, #32]
 8002bb4:	f89a 6000 	ldrb.w	r6, [sl]
 8002bb8:	681a      	ldr	r2, [r3, #0]
 8002bba:	9206      	str	r2, [sp, #24]
 8002bbc:	2a00      	cmp	r2, #0
 8002bbe:	f103 0304 	add.w	r3, r3, #4
 8002bc2:	f2c0 8697 	blt.w	80038f4 <_vfprintf_r+0x13dc>
 8002bc6:	9308      	str	r3, [sp, #32]
 8002bc8:	e524      	b.n	8002614 <_vfprintf_r+0xfc>
 8002bca:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002bce:	f89a 6000 	ldrb.w	r6, [sl]
 8002bd2:	e51f      	b.n	8002614 <_vfprintf_r+0xfc>
 8002bd4:	f89a 6000 	ldrb.w	r6, [sl]
 8002bd8:	f048 0804 	orr.w	r8, r8, #4
 8002bdc:	e51a      	b.n	8002614 <_vfprintf_r+0xfc>
 8002bde:	f89a 6000 	ldrb.w	r6, [sl]
 8002be2:	2e2a      	cmp	r6, #42	; 0x2a
 8002be4:	f10a 0201 	add.w	r2, sl, #1
 8002be8:	f001 81b0 	beq.w	8003f4c <_vfprintf_r+0x1a34>
 8002bec:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002bf0:	2b09      	cmp	r3, #9
 8002bf2:	4692      	mov	sl, r2
 8002bf4:	f04f 0900 	mov.w	r9, #0
 8002bf8:	f63f ad0e 	bhi.w	8002618 <_vfprintf_r+0x100>
 8002bfc:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002c00:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002c04:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002c08:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002c0c:	2b09      	cmp	r3, #9
 8002c0e:	d9f5      	bls.n	8002bfc <_vfprintf_r+0x6e4>
 8002c10:	e502      	b.n	8002618 <_vfprintf_r+0x100>
 8002c12:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002c16:	f89a 6000 	ldrb.w	r6, [sl]
 8002c1a:	e4fb      	b.n	8002614 <_vfprintf_r+0xfc>
 8002c1c:	9c08      	ldr	r4, [sp, #32]
 8002c1e:	3407      	adds	r4, #7
 8002c20:	f024 0407 	bic.w	r4, r4, #7
 8002c24:	ed94 7b00 	vldr	d7, [r4]
 8002c28:	ec52 1b17 	vmov	r1, r2, d7
 8002c2c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002c30:	931d      	str	r3, [sp, #116]	; 0x74
 8002c32:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002c36:	3408      	adds	r4, #8
 8002c38:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002c3c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002c40:	4bba      	ldr	r3, [pc, #744]	; (8002f2c <_vfprintf_r+0xa14>)
 8002c42:	9408      	str	r4, [sp, #32]
 8002c44:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002c48:	f7fe fa10 	bl	800106c <__aeabi_dcmpun>
 8002c4c:	2800      	cmp	r0, #0
 8002c4e:	f040 846f 	bne.w	8003530 <_vfprintf_r+0x1018>
 8002c52:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002c56:	4bb5      	ldr	r3, [pc, #724]	; (8002f2c <_vfprintf_r+0xa14>)
 8002c58:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002c5c:	f7fe f9e8 	bl	8001030 <__aeabi_dcmple>
 8002c60:	2800      	cmp	r0, #0
 8002c62:	f040 8465 	bne.w	8003530 <_vfprintf_r+0x1018>
 8002c66:	2200      	movs	r2, #0
 8002c68:	2300      	movs	r3, #0
 8002c6a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002c6e:	f7fe f9d5 	bl	800101c <__aeabi_dcmplt>
 8002c72:	2800      	cmp	r0, #0
 8002c74:	f040 855b 	bne.w	800372e <_vfprintf_r+0x1216>
 8002c78:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002c7c:	4fac      	ldr	r7, [pc, #688]	; (8002f30 <_vfprintf_r+0xa18>)
 8002c7e:	4bad      	ldr	r3, [pc, #692]	; (8002f34 <_vfprintf_r+0xa1c>)
 8002c80:	2000      	movs	r0, #0
 8002c82:	2103      	movs	r1, #3
 8002c84:	9104      	str	r1, [sp, #16]
 8002c86:	900a      	str	r0, [sp, #40]	; 0x28
 8002c88:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002c8c:	2e47      	cmp	r6, #71	; 0x47
 8002c8e:	bfd8      	it	le
 8002c90:	461f      	movle	r7, r3
 8002c92:	9109      	str	r1, [sp, #36]	; 0x24
 8002c94:	4681      	mov	r9, r0
 8002c96:	900f      	str	r0, [sp, #60]	; 0x3c
 8002c98:	9014      	str	r0, [sp, #80]	; 0x50
 8002c9a:	9011      	str	r0, [sp, #68]	; 0x44
 8002c9c:	e5c9      	b.n	8002832 <_vfprintf_r+0x31a>
 8002c9e:	9808      	ldr	r0, [sp, #32]
 8002ca0:	2300      	movs	r3, #0
 8002ca2:	6801      	ldr	r1, [r0, #0]
 8002ca4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ca8:	461a      	mov	r2, r3
 8002caa:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002cae:	2301      	movs	r3, #1
 8002cb0:	1d01      	adds	r1, r0, #4
 8002cb2:	9304      	str	r3, [sp, #16]
 8002cb4:	920a      	str	r2, [sp, #40]	; 0x28
 8002cb6:	4691      	mov	r9, r2
 8002cb8:	920f      	str	r2, [sp, #60]	; 0x3c
 8002cba:	9214      	str	r2, [sp, #80]	; 0x50
 8002cbc:	9211      	str	r2, [sp, #68]	; 0x44
 8002cbe:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002cc2:	af3d      	add	r7, sp, #244	; 0xf4
 8002cc4:	e5b9      	b.n	800283a <_vfprintf_r+0x322>
 8002cc6:	9b08      	ldr	r3, [sp, #32]
 8002cc8:	681f      	ldr	r7, [r3, #0]
 8002cca:	2500      	movs	r5, #0
 8002ccc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002cd0:	1d1c      	adds	r4, r3, #4
 8002cd2:	2f00      	cmp	r7, #0
 8002cd4:	f000 8639 	beq.w	800394a <_vfprintf_r+0x1432>
 8002cd8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002cdc:	f000 8711 	beq.w	8003b02 <_vfprintf_r+0x15ea>
 8002ce0:	464a      	mov	r2, r9
 8002ce2:	4629      	mov	r1, r5
 8002ce4:	4638      	mov	r0, r7
 8002ce6:	f7fd fd1b 	bl	8000720 <memchr>
 8002cea:	900a      	str	r0, [sp, #40]	; 0x28
 8002cec:	2800      	cmp	r0, #0
 8002cee:	f000 85e7 	beq.w	80038c0 <_vfprintf_r+0x13a8>
 8002cf2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002cf4:	1bdb      	subs	r3, r3, r7
 8002cf6:	9309      	str	r3, [sp, #36]	; 0x24
 8002cf8:	46a9      	mov	r9, r5
 8002cfa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002cfe:	9408      	str	r4, [sp, #32]
 8002d00:	9304      	str	r3, [sp, #16]
 8002d02:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002d06:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002d0a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002d0e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002d12:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002d16:	e58c      	b.n	8002832 <_vfprintf_r+0x31a>
 8002d18:	f048 0310 	orr.w	r3, r8, #16
 8002d1c:	069a      	lsls	r2, r3, #26
 8002d1e:	f53f aeb2 	bmi.w	8002a86 <_vfprintf_r+0x56e>
 8002d22:	9a08      	ldr	r2, [sp, #32]
 8002d24:	06df      	lsls	r7, r3, #27
 8002d26:	f102 0104 	add.w	r1, r2, #4
 8002d2a:	f100 837e 	bmi.w	800342a <_vfprintf_r+0xf12>
 8002d2e:	065d      	lsls	r5, r3, #25
 8002d30:	9a08      	ldr	r2, [sp, #32]
 8002d32:	f100 84e4 	bmi.w	80036fe <_vfprintf_r+0x11e6>
 8002d36:	059c      	lsls	r4, r3, #22
 8002d38:	f140 8377 	bpl.w	800342a <_vfprintf_r+0xf12>
 8002d3c:	7814      	ldrb	r4, [r2, #0]
 8002d3e:	9108      	str	r1, [sp, #32]
 8002d40:	2500      	movs	r5, #0
 8002d42:	2201      	movs	r2, #1
 8002d44:	e6a9      	b.n	8002a9a <_vfprintf_r+0x582>
 8002d46:	4b7c      	ldr	r3, [pc, #496]	; (8002f38 <_vfprintf_r+0xa20>)
 8002d48:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d4a:	f018 0f20 	tst.w	r8, #32
 8002d4e:	f47f aeec 	bne.w	8002b2a <_vfprintf_r+0x612>
 8002d52:	9a08      	ldr	r2, [sp, #32]
 8002d54:	f018 0f10 	tst.w	r8, #16
 8002d58:	f102 0304 	add.w	r3, r2, #4
 8002d5c:	f040 8354 	bne.w	8003408 <_vfprintf_r+0xef0>
 8002d60:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002d64:	9a08      	ldr	r2, [sp, #32]
 8002d66:	f040 84d0 	bne.w	800370a <_vfprintf_r+0x11f2>
 8002d6a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002d6e:	f000 834b 	beq.w	8003408 <_vfprintf_r+0xef0>
 8002d72:	7814      	ldrb	r4, [r2, #0]
 8002d74:	9308      	str	r3, [sp, #32]
 8002d76:	2500      	movs	r5, #0
 8002d78:	e6e0      	b.n	8002b3c <_vfprintf_r+0x624>
 8002d7a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002d7e:	f89a 6000 	ldrb.w	r6, [sl]
 8002d82:	2b00      	cmp	r3, #0
 8002d84:	f47f ac46 	bne.w	8002614 <_vfprintf_r+0xfc>
 8002d88:	2320      	movs	r3, #32
 8002d8a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002d8e:	e441      	b.n	8002614 <_vfprintf_r+0xfc>
 8002d90:	f89a 6000 	ldrb.w	r6, [sl]
 8002d94:	2e6c      	cmp	r6, #108	; 0x6c
 8002d96:	bf03      	ittte	eq
 8002d98:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002d9c:	f048 0820 	orreq.w	r8, r8, #32
 8002da0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002da4:	f048 0810 	orrne.w	r8, r8, #16
 8002da8:	e434      	b.n	8002614 <_vfprintf_r+0xfc>
 8002daa:	9a08      	ldr	r2, [sp, #32]
 8002dac:	f018 0f20 	tst.w	r8, #32
 8002db0:	f852 3b04 	ldr.w	r3, [r2], #4
 8002db4:	9208      	str	r2, [sp, #32]
 8002db6:	f000 83a1 	beq.w	80034fc <_vfprintf_r+0xfe4>
 8002dba:	9a05      	ldr	r2, [sp, #20]
 8002dbc:	4610      	mov	r0, r2
 8002dbe:	17d1      	asrs	r1, r2, #31
 8002dc0:	e9c3 0100 	strd	r0, r1, [r3]
 8002dc4:	4657      	mov	r7, sl
 8002dc6:	e64d      	b.n	8002a64 <_vfprintf_r+0x54c>
 8002dc8:	f89a 6000 	ldrb.w	r6, [sl]
 8002dcc:	2e68      	cmp	r6, #104	; 0x68
 8002dce:	bf03      	ittte	eq
 8002dd0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002dd4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002dd8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002ddc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002de0:	e418      	b.n	8002614 <_vfprintf_r+0xfc>
 8002de2:	9908      	ldr	r1, [sp, #32]
 8002de4:	4b55      	ldr	r3, [pc, #340]	; (8002f3c <_vfprintf_r+0xa24>)
 8002de6:	680c      	ldr	r4, [r1, #0]
 8002de8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002dea:	f647 0230 	movw	r2, #30768	; 0x7830
 8002dee:	3104      	adds	r1, #4
 8002df0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002df4:	f048 0302 	orr.w	r3, r8, #2
 8002df8:	9108      	str	r1, [sp, #32]
 8002dfa:	2500      	movs	r5, #0
 8002dfc:	2202      	movs	r2, #2
 8002dfe:	2678      	movs	r6, #120	; 0x78
 8002e00:	e64b      	b.n	8002a9a <_vfprintf_r+0x582>
 8002e02:	f048 0808 	orr.w	r8, r8, #8
 8002e06:	f89a 6000 	ldrb.w	r6, [sl]
 8002e0a:	e403      	b.n	8002614 <_vfprintf_r+0xfc>
 8002e0c:	f048 0310 	orr.w	r3, r8, #16
 8002e10:	069f      	lsls	r7, r3, #26
 8002e12:	f53f acd1 	bmi.w	80027b8 <_vfprintf_r+0x2a0>
 8002e16:	9908      	ldr	r1, [sp, #32]
 8002e18:	06dd      	lsls	r5, r3, #27
 8002e1a:	f101 0204 	add.w	r2, r1, #4
 8002e1e:	f100 82fd 	bmi.w	800341c <_vfprintf_r+0xf04>
 8002e22:	065c      	lsls	r4, r3, #25
 8002e24:	9908      	ldr	r1, [sp, #32]
 8002e26:	f100 8475 	bmi.w	8003714 <_vfprintf_r+0x11fc>
 8002e2a:	0598      	lsls	r0, r3, #22
 8002e2c:	f140 82f6 	bpl.w	800341c <_vfprintf_r+0xf04>
 8002e30:	f991 4000 	ldrsb.w	r4, [r1]
 8002e34:	9208      	str	r2, [sp, #32]
 8002e36:	17e5      	asrs	r5, r4, #31
 8002e38:	4620      	mov	r0, r4
 8002e3a:	4629      	mov	r1, r5
 8002e3c:	e4c7      	b.n	80027ce <_vfprintf_r+0x2b6>
 8002e3e:	9a08      	ldr	r2, [sp, #32]
 8002e40:	f018 0f10 	tst.w	r8, #16
 8002e44:	f102 0304 	add.w	r3, r2, #4
 8002e48:	f040 82e3 	bne.w	8003412 <_vfprintf_r+0xefa>
 8002e4c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002e50:	9a08      	ldr	r2, [sp, #32]
 8002e52:	f040 8467 	bne.w	8003724 <_vfprintf_r+0x120c>
 8002e56:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002e5a:	f000 82da 	beq.w	8003412 <_vfprintf_r+0xefa>
 8002e5e:	7814      	ldrb	r4, [r2, #0]
 8002e60:	9308      	str	r3, [sp, #32]
 8002e62:	2500      	movs	r5, #0
 8002e64:	e488      	b.n	8002778 <_vfprintf_r+0x260>
 8002e66:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002e6a:	f002 fd45 	bl	80058f8 <__retarget_lock_release_recursive>
 8002e6e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002e72:	9305      	str	r3, [sp, #20]
 8002e74:	e443      	b.n	80026fe <_vfprintf_r+0x1e6>
 8002e76:	2e00      	cmp	r6, #0
 8002e78:	f43f adf8 	beq.w	8002a6c <_vfprintf_r+0x554>
 8002e7c:	2300      	movs	r3, #0
 8002e7e:	2101      	movs	r1, #1
 8002e80:	461a      	mov	r2, r3
 8002e82:	9104      	str	r1, [sp, #16]
 8002e84:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002e88:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002e8c:	930a      	str	r3, [sp, #40]	; 0x28
 8002e8e:	4699      	mov	r9, r3
 8002e90:	930f      	str	r3, [sp, #60]	; 0x3c
 8002e92:	9314      	str	r3, [sp, #80]	; 0x50
 8002e94:	9311      	str	r3, [sp, #68]	; 0x44
 8002e96:	9109      	str	r1, [sp, #36]	; 0x24
 8002e98:	af3d      	add	r7, sp, #244	; 0xf4
 8002e9a:	e4ce      	b.n	800283a <_vfprintf_r+0x322>
 8002e9c:	2e65      	cmp	r6, #101	; 0x65
 8002e9e:	f340 80ca 	ble.w	8003036 <_vfprintf_r+0xb1e>
 8002ea2:	2200      	movs	r2, #0
 8002ea4:	2300      	movs	r3, #0
 8002ea6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002eaa:	f7fe f8ad 	bl	8001008 <__aeabi_dcmpeq>
 8002eae:	2800      	cmp	r0, #0
 8002eb0:	f000 8169 	beq.w	8003186 <_vfprintf_r+0xc6e>
 8002eb4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002eb6:	4a22      	ldr	r2, [pc, #136]	; (8002f40 <_vfprintf_r+0xa28>)
 8002eb8:	f8cb 2000 	str.w	r2, [fp]
 8002ebc:	3301      	adds	r3, #1
 8002ebe:	3401      	adds	r4, #1
 8002ec0:	2201      	movs	r2, #1
 8002ec2:	2b07      	cmp	r3, #7
 8002ec4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002ec8:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ecc:	f300 8406 	bgt.w	80036dc <_vfprintf_r+0x11c4>
 8002ed0:	f10b 0b08 	add.w	fp, fp, #8
 8002ed4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8002ed6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8002ed8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002eda:	4293      	cmp	r3, r2
 8002edc:	db03      	blt.n	8002ee6 <_vfprintf_r+0x9ce>
 8002ede:	f018 0f01 	tst.w	r8, #1
 8002ee2:	f43f ad6a 	beq.w	80029ba <_vfprintf_r+0x4a2>
 8002ee6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ee8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8002eea:	f8cb 2000 	str.w	r2, [fp]
 8002eee:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8002ef0:	f8cb 2004 	str.w	r2, [fp, #4]
 8002ef4:	3301      	adds	r3, #1
 8002ef6:	4414      	add	r4, r2
 8002ef8:	2b07      	cmp	r3, #7
 8002efa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002efe:	f300 8517 	bgt.w	8003930 <_vfprintf_r+0x1418>
 8002f02:	f10b 0b08 	add.w	fp, fp, #8
 8002f06:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8002f08:	1e5d      	subs	r5, r3, #1
 8002f0a:	2d00      	cmp	r5, #0
 8002f0c:	f77f ad55 	ble.w	80029ba <_vfprintf_r+0x4a2>
 8002f10:	2d10      	cmp	r5, #16
 8002f12:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f14:	4b0b      	ldr	r3, [pc, #44]	; (8002f44 <_vfprintf_r+0xa2c>)
 8002f16:	f340 82e7 	ble.w	80034e8 <_vfprintf_r+0xfd0>
 8002f1a:	4619      	mov	r1, r3
 8002f1c:	2610      	movs	r6, #16
 8002f1e:	4623      	mov	r3, r4
 8002f20:	9f03      	ldr	r7, [sp, #12]
 8002f22:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002f26:	460c      	mov	r4, r1
 8002f28:	e014      	b.n	8002f54 <_vfprintf_r+0xa3c>
 8002f2a:	bf00      	nop
 8002f2c:	7fefffff 	.word	0x7fefffff
 8002f30:	08007214 	.word	0x08007214
 8002f34:	08007210 	.word	0x08007210
 8002f38:	08007234 	.word	0x08007234
 8002f3c:	08007220 	.word	0x08007220
 8002f40:	08007250 	.word	0x08007250
 8002f44:	08007264 	.word	0x08007264
 8002f48:	f10b 0b08 	add.w	fp, fp, #8
 8002f4c:	3d10      	subs	r5, #16
 8002f4e:	2d10      	cmp	r5, #16
 8002f50:	f340 82c7 	ble.w	80034e2 <_vfprintf_r+0xfca>
 8002f54:	3201      	adds	r2, #1
 8002f56:	3310      	adds	r3, #16
 8002f58:	2a07      	cmp	r2, #7
 8002f5a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8002f5e:	e9cb 4600 	strd	r4, r6, [fp]
 8002f62:	ddf1      	ble.n	8002f48 <_vfprintf_r+0xa30>
 8002f64:	aa2a      	add	r2, sp, #168	; 0xa8
 8002f66:	4649      	mov	r1, r9
 8002f68:	4638      	mov	r0, r7
 8002f6a:	f003 fe03 	bl	8006b74 <__sprint_r>
 8002f6e:	2800      	cmp	r0, #0
 8002f70:	d14c      	bne.n	800300c <_vfprintf_r+0xaf4>
 8002f72:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8002f76:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002f7a:	e7e7      	b.n	8002f4c <_vfprintf_r+0xa34>
 8002f7c:	9b06      	ldr	r3, [sp, #24]
 8002f7e:	9a04      	ldr	r2, [sp, #16]
 8002f80:	1a9d      	subs	r5, r3, r2
 8002f82:	2d00      	cmp	r5, #0
 8002f84:	f77f acc9 	ble.w	800291a <_vfprintf_r+0x402>
 8002f88:	2d10      	cmp	r5, #16
 8002f8a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002f8c:	4bbc      	ldr	r3, [pc, #752]	; (8003280 <_vfprintf_r+0xd68>)
 8002f8e:	dd27      	ble.n	8002fe0 <_vfprintf_r+0xac8>
 8002f90:	4659      	mov	r1, fp
 8002f92:	4620      	mov	r0, r4
 8002f94:	46bb      	mov	fp, r7
 8002f96:	461c      	mov	r4, r3
 8002f98:	4637      	mov	r7, r6
 8002f9a:	9e07      	ldr	r6, [sp, #28]
 8002f9c:	e004      	b.n	8002fa8 <_vfprintf_r+0xa90>
 8002f9e:	3d10      	subs	r5, #16
 8002fa0:	2d10      	cmp	r5, #16
 8002fa2:	f101 0108 	add.w	r1, r1, #8
 8002fa6:	dd16      	ble.n	8002fd6 <_vfprintf_r+0xabe>
 8002fa8:	3201      	adds	r2, #1
 8002faa:	3010      	adds	r0, #16
 8002fac:	2310      	movs	r3, #16
 8002fae:	2a07      	cmp	r2, #7
 8002fb0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002fb4:	600c      	str	r4, [r1, #0]
 8002fb6:	604b      	str	r3, [r1, #4]
 8002fb8:	ddf1      	ble.n	8002f9e <_vfprintf_r+0xa86>
 8002fba:	aa2a      	add	r2, sp, #168	; 0xa8
 8002fbc:	4631      	mov	r1, r6
 8002fbe:	9803      	ldr	r0, [sp, #12]
 8002fc0:	f003 fdd8 	bl	8006b74 <__sprint_r>
 8002fc4:	2800      	cmp	r0, #0
 8002fc6:	f040 80a8 	bne.w	800311a <_vfprintf_r+0xc02>
 8002fca:	3d10      	subs	r5, #16
 8002fcc:	2d10      	cmp	r5, #16
 8002fce:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002fd2:	a92d      	add	r1, sp, #180	; 0xb4
 8002fd4:	dce8      	bgt.n	8002fa8 <_vfprintf_r+0xa90>
 8002fd6:	463e      	mov	r6, r7
 8002fd8:	4623      	mov	r3, r4
 8002fda:	465f      	mov	r7, fp
 8002fdc:	4604      	mov	r4, r0
 8002fde:	468b      	mov	fp, r1
 8002fe0:	3201      	adds	r2, #1
 8002fe2:	442c      	add	r4, r5
 8002fe4:	2a07      	cmp	r2, #7
 8002fe6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002fea:	e9cb 3500 	strd	r3, r5, [fp]
 8002fee:	f300 8292 	bgt.w	8003516 <_vfprintf_r+0xffe>
 8002ff2:	f10b 0b08 	add.w	fp, fp, #8
 8002ff6:	e490      	b.n	800291a <_vfprintf_r+0x402>
 8002ff8:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ffa:	9907      	ldr	r1, [sp, #28]
 8002ffc:	9803      	ldr	r0, [sp, #12]
 8002ffe:	f003 fdb9 	bl	8006b74 <__sprint_r>
 8003002:	2800      	cmp	r0, #0
 8003004:	f43f ad23 	beq.w	8002a4e <_vfprintf_r+0x536>
 8003008:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800300c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800300e:	b111      	cbz	r1, 8003016 <_vfprintf_r+0xafe>
 8003010:	9803      	ldr	r0, [sp, #12]
 8003012:	f002 f9c1 	bl	8005398 <_free_r>
 8003016:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800301a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800301e:	07d0      	lsls	r0, r2, #31
 8003020:	d402      	bmi.n	8003028 <_vfprintf_r+0xb10>
 8003022:	0599      	lsls	r1, r3, #22
 8003024:	f140 81d0 	bpl.w	80033c8 <_vfprintf_r+0xeb0>
 8003028:	065a      	lsls	r2, r3, #25
 800302a:	f53f ab65 	bmi.w	80026f8 <_vfprintf_r+0x1e0>
 800302e:	9805      	ldr	r0, [sp, #20]
 8003030:	b057      	add	sp, #348	; 0x15c
 8003032:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003036:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003038:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800303a:	2a01      	cmp	r2, #1
 800303c:	f104 0401 	add.w	r4, r4, #1
 8003040:	f103 0501 	add.w	r5, r3, #1
 8003044:	f10b 0608 	add.w	r6, fp, #8
 8003048:	f340 811c 	ble.w	8003284 <_vfprintf_r+0xd6c>
 800304c:	2301      	movs	r3, #1
 800304e:	2d07      	cmp	r5, #7
 8003050:	f8cb 7000 	str.w	r7, [fp]
 8003054:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003058:	f8cb 3004 	str.w	r3, [fp, #4]
 800305c:	f300 81bb 	bgt.w	80033d6 <_vfprintf_r+0xebe>
 8003060:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003062:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003064:	1c69      	adds	r1, r5, #1
 8003066:	441c      	add	r4, r3
 8003068:	2907      	cmp	r1, #7
 800306a:	910b      	str	r1, [sp, #44]	; 0x2c
 800306c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003070:	e9c6 2300 	strd	r2, r3, [r6]
 8003074:	f300 81bb 	bgt.w	80033ee <_vfprintf_r+0xed6>
 8003078:	3608      	adds	r6, #8
 800307a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800307c:	1c53      	adds	r3, r2, #1
 800307e:	461d      	mov	r5, r3
 8003080:	9509      	str	r5, [sp, #36]	; 0x24
 8003082:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003084:	930e      	str	r3, [sp, #56]	; 0x38
 8003086:	2200      	movs	r2, #0
 8003088:	2300      	movs	r3, #0
 800308a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800308e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003092:	f106 0b08 	add.w	fp, r6, #8
 8003096:	f7fd ffb7 	bl	8001008 <__aeabi_dcmpeq>
 800309a:	2800      	cmp	r0, #0
 800309c:	f040 80c2 	bne.w	8003224 <_vfprintf_r+0xd0c>
 80030a0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80030a2:	f8c6 9004 	str.w	r9, [r6, #4]
 80030a6:	3701      	adds	r7, #1
 80030a8:	444c      	add	r4, r9
 80030aa:	2d07      	cmp	r5, #7
 80030ac:	6037      	str	r7, [r6, #0]
 80030ae:	942c      	str	r4, [sp, #176]	; 0xb0
 80030b0:	952b      	str	r5, [sp, #172]	; 0xac
 80030b2:	f300 80f9 	bgt.w	80032a8 <_vfprintf_r+0xd90>
 80030b6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80030b8:	f106 0310 	add.w	r3, r6, #16
 80030bc:	3202      	adds	r2, #2
 80030be:	465e      	mov	r6, fp
 80030c0:	9209      	str	r2, [sp, #36]	; 0x24
 80030c2:	469b      	mov	fp, r3
 80030c4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80030c6:	6072      	str	r2, [r6, #4]
 80030c8:	4414      	add	r4, r2
 80030ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80030cc:	942c      	str	r4, [sp, #176]	; 0xb0
 80030ce:	ab26      	add	r3, sp, #152	; 0x98
 80030d0:	2a07      	cmp	r2, #7
 80030d2:	922b      	str	r2, [sp, #172]	; 0xac
 80030d4:	6033      	str	r3, [r6, #0]
 80030d6:	f77f ac70 	ble.w	80029ba <_vfprintf_r+0x4a2>
 80030da:	aa2a      	add	r2, sp, #168	; 0xa8
 80030dc:	9907      	ldr	r1, [sp, #28]
 80030de:	9803      	ldr	r0, [sp, #12]
 80030e0:	f003 fd48 	bl	8006b74 <__sprint_r>
 80030e4:	2800      	cmp	r0, #0
 80030e6:	d18f      	bne.n	8003008 <_vfprintf_r+0xaf0>
 80030e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030ea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030ee:	e464      	b.n	80029ba <_vfprintf_r+0x4a2>
 80030f0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80030f2:	af56      	add	r7, sp, #344	; 0x158
 80030f4:	0923      	lsrs	r3, r4, #4
 80030f6:	f004 010f 	and.w	r1, r4, #15
 80030fa:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80030fe:	092a      	lsrs	r2, r5, #4
 8003100:	461c      	mov	r4, r3
 8003102:	4615      	mov	r5, r2
 8003104:	5c43      	ldrb	r3, [r0, r1]
 8003106:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800310a:	ea54 0305 	orrs.w	r3, r4, r5
 800310e:	d1f1      	bne.n	80030f4 <_vfprintf_r+0xbdc>
 8003110:	9b04      	ldr	r3, [sp, #16]
 8003112:	1bdb      	subs	r3, r3, r7
 8003114:	9309      	str	r3, [sp, #36]	; 0x24
 8003116:	f7ff bb80 	b.w	800281a <_vfprintf_r+0x302>
 800311a:	46b1      	mov	r9, r6
 800311c:	e776      	b.n	800300c <_vfprintf_r+0xaf4>
 800311e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003120:	9907      	ldr	r1, [sp, #28]
 8003122:	9803      	ldr	r0, [sp, #12]
 8003124:	f003 fd26 	bl	8006b74 <__sprint_r>
 8003128:	2800      	cmp	r0, #0
 800312a:	f47f af6d 	bne.w	8003008 <_vfprintf_r+0xaf0>
 800312e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003130:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003134:	f7ff bbdd 	b.w	80028f2 <_vfprintf_r+0x3da>
 8003138:	aa2a      	add	r2, sp, #168	; 0xa8
 800313a:	9907      	ldr	r1, [sp, #28]
 800313c:	9803      	ldr	r0, [sp, #12]
 800313e:	f003 fd19 	bl	8006b74 <__sprint_r>
 8003142:	2800      	cmp	r0, #0
 8003144:	f47f af60 	bne.w	8003008 <_vfprintf_r+0xaf0>
 8003148:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800314a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800314e:	f7ff bbe0 	b.w	8002912 <_vfprintf_r+0x3fa>
 8003152:	4698      	mov	r8, r3
 8003154:	2d00      	cmp	r5, #0
 8003156:	bf08      	it	eq
 8003158:	2c0a      	cmpeq	r4, #10
 800315a:	f080 8170 	bcs.w	800343e <_vfprintf_r+0xf26>
 800315e:	af56      	add	r7, sp, #344	; 0x158
 8003160:	3430      	adds	r4, #48	; 0x30
 8003162:	2301      	movs	r3, #1
 8003164:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003168:	9309      	str	r3, [sp, #36]	; 0x24
 800316a:	f7ff bb56 	b.w	800281a <_vfprintf_r+0x302>
 800316e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003170:	9907      	ldr	r1, [sp, #28]
 8003172:	9803      	ldr	r0, [sp, #12]
 8003174:	f003 fcfe 	bl	8006b74 <__sprint_r>
 8003178:	2800      	cmp	r0, #0
 800317a:	f47f af45 	bne.w	8003008 <_vfprintf_r+0xaf0>
 800317e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003180:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003184:	e406      	b.n	8002994 <_vfprintf_r+0x47c>
 8003186:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003188:	2b00      	cmp	r3, #0
 800318a:	f340 8273 	ble.w	8003674 <_vfprintf_r+0x115c>
 800318e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003192:	4293      	cmp	r3, r2
 8003194:	bfa8      	it	ge
 8003196:	4613      	movge	r3, r2
 8003198:	2b00      	cmp	r3, #0
 800319a:	461d      	mov	r5, r3
 800319c:	dd0d      	ble.n	80031ba <_vfprintf_r+0xca2>
 800319e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80031a0:	f8cb 7000 	str.w	r7, [fp]
 80031a4:	3301      	adds	r3, #1
 80031a6:	442c      	add	r4, r5
 80031a8:	2b07      	cmp	r3, #7
 80031aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80031ac:	f8cb 5004 	str.w	r5, [fp, #4]
 80031b0:	932b      	str	r3, [sp, #172]	; 0xac
 80031b2:	f300 82c1 	bgt.w	8003738 <_vfprintf_r+0x1220>
 80031b6:	f10b 0b08 	add.w	fp, fp, #8
 80031ba:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80031bc:	2d00      	cmp	r5, #0
 80031be:	bfa8      	it	ge
 80031c0:	1b5b      	subge	r3, r3, r5
 80031c2:	2b00      	cmp	r3, #0
 80031c4:	461d      	mov	r5, r3
 80031c6:	f340 8099 	ble.w	80032fc <_vfprintf_r+0xde4>
 80031ca:	2d10      	cmp	r5, #16
 80031cc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80031ce:	4b2c      	ldr	r3, [pc, #176]	; (8003280 <_vfprintf_r+0xd68>)
 80031d0:	f340 83db 	ble.w	800398a <_vfprintf_r+0x1472>
 80031d4:	4618      	mov	r0, r3
 80031d6:	4621      	mov	r1, r4
 80031d8:	465b      	mov	r3, fp
 80031da:	2610      	movs	r6, #16
 80031dc:	46bb      	mov	fp, r7
 80031de:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80031e2:	9c07      	ldr	r4, [sp, #28]
 80031e4:	4607      	mov	r7, r0
 80031e6:	e004      	b.n	80031f2 <_vfprintf_r+0xcda>
 80031e8:	3308      	adds	r3, #8
 80031ea:	3d10      	subs	r5, #16
 80031ec:	2d10      	cmp	r5, #16
 80031ee:	f340 83c7 	ble.w	8003980 <_vfprintf_r+0x1468>
 80031f2:	3201      	adds	r2, #1
 80031f4:	3110      	adds	r1, #16
 80031f6:	2a07      	cmp	r2, #7
 80031f8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80031fc:	e9c3 7600 	strd	r7, r6, [r3]
 8003200:	ddf2      	ble.n	80031e8 <_vfprintf_r+0xcd0>
 8003202:	aa2a      	add	r2, sp, #168	; 0xa8
 8003204:	4621      	mov	r1, r4
 8003206:	4648      	mov	r0, r9
 8003208:	f003 fcb4 	bl	8006b74 <__sprint_r>
 800320c:	2800      	cmp	r0, #0
 800320e:	f040 84a5 	bne.w	8003b5c <_vfprintf_r+0x1644>
 8003212:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003216:	ab2d      	add	r3, sp, #180	; 0xb4
 8003218:	e7e7      	b.n	80031ea <_vfprintf_r+0xcd2>
 800321a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800321e:	af56      	add	r7, sp, #344	; 0x158
 8003220:	f7ff bafb 	b.w	800281a <_vfprintf_r+0x302>
 8003224:	f1b9 0f00 	cmp.w	r9, #0
 8003228:	f77f af4c 	ble.w	80030c4 <_vfprintf_r+0xbac>
 800322c:	f1b9 0f10 	cmp.w	r9, #16
 8003230:	4b13      	ldr	r3, [pc, #76]	; (8003280 <_vfprintf_r+0xd68>)
 8003232:	f340 8659 	ble.w	8003ee8 <_vfprintf_r+0x19d0>
 8003236:	4619      	mov	r1, r3
 8003238:	4622      	mov	r2, r4
 800323a:	4633      	mov	r3, r6
 800323c:	2710      	movs	r7, #16
 800323e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003242:	9c07      	ldr	r4, [sp, #28]
 8003244:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003246:	460e      	mov	r6, r1
 8003248:	e007      	b.n	800325a <_vfprintf_r+0xd42>
 800324a:	3308      	adds	r3, #8
 800324c:	f1a9 0910 	sub.w	r9, r9, #16
 8003250:	f1b9 0f10 	cmp.w	r9, #16
 8003254:	f340 8353 	ble.w	80038fe <_vfprintf_r+0x13e6>
 8003258:	3501      	adds	r5, #1
 800325a:	3210      	adds	r2, #16
 800325c:	2d07      	cmp	r5, #7
 800325e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003262:	e9c3 6700 	strd	r6, r7, [r3]
 8003266:	ddf0      	ble.n	800324a <_vfprintf_r+0xd32>
 8003268:	aa2a      	add	r2, sp, #168	; 0xa8
 800326a:	4621      	mov	r1, r4
 800326c:	4658      	mov	r0, fp
 800326e:	f003 fc81 	bl	8006b74 <__sprint_r>
 8003272:	2800      	cmp	r0, #0
 8003274:	f040 8472 	bne.w	8003b5c <_vfprintf_r+0x1644>
 8003278:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800327c:	ab2d      	add	r3, sp, #180	; 0xb4
 800327e:	e7e5      	b.n	800324c <_vfprintf_r+0xd34>
 8003280:	08007264 	.word	0x08007264
 8003284:	f018 0f01 	tst.w	r8, #1
 8003288:	f47f aee0 	bne.w	800304c <_vfprintf_r+0xb34>
 800328c:	2201      	movs	r2, #1
 800328e:	2d07      	cmp	r5, #7
 8003290:	f8cb 7000 	str.w	r7, [fp]
 8003294:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003298:	f8cb 2004 	str.w	r2, [fp, #4]
 800329c:	dc04      	bgt.n	80032a8 <_vfprintf_r+0xd90>
 800329e:	3302      	adds	r3, #2
 80032a0:	9309      	str	r3, [sp, #36]	; 0x24
 80032a2:	f10b 0b10 	add.w	fp, fp, #16
 80032a6:	e70d      	b.n	80030c4 <_vfprintf_r+0xbac>
 80032a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80032aa:	9907      	ldr	r1, [sp, #28]
 80032ac:	9803      	ldr	r0, [sp, #12]
 80032ae:	f003 fc61 	bl	8006b74 <__sprint_r>
 80032b2:	2800      	cmp	r0, #0
 80032b4:	f47f aea8 	bne.w	8003008 <_vfprintf_r+0xaf0>
 80032b8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80032bc:	3301      	adds	r3, #1
 80032be:	9309      	str	r3, [sp, #36]	; 0x24
 80032c0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80032c4:	ae2d      	add	r6, sp, #180	; 0xb4
 80032c6:	e6fd      	b.n	80030c4 <_vfprintf_r+0xbac>
 80032c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80032ca:	9907      	ldr	r1, [sp, #28]
 80032cc:	9803      	ldr	r0, [sp, #12]
 80032ce:	f003 fc51 	bl	8006b74 <__sprint_r>
 80032d2:	2800      	cmp	r0, #0
 80032d4:	f47f ae98 	bne.w	8003008 <_vfprintf_r+0xaf0>
 80032d8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80032dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032de:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032e2:	f7ff baf6 	b.w	80028d2 <_vfprintf_r+0x3ba>
 80032e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80032e8:	9907      	ldr	r1, [sp, #28]
 80032ea:	9803      	ldr	r0, [sp, #12]
 80032ec:	f003 fc42 	bl	8006b74 <__sprint_r>
 80032f0:	2800      	cmp	r0, #0
 80032f2:	f47f ae89 	bne.w	8003008 <_vfprintf_r+0xaf0>
 80032f6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032fc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80032fe:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003302:	443b      	add	r3, r7
 8003304:	4699      	mov	r9, r3
 8003306:	f040 8357 	bne.w	80039b8 <_vfprintf_r+0x14a0>
 800330a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800330c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800330e:	4293      	cmp	r3, r2
 8003310:	db49      	blt.n	80033a6 <_vfprintf_r+0xe8e>
 8003312:	f018 0f01 	tst.w	r8, #1
 8003316:	d146      	bne.n	80033a6 <_vfprintf_r+0xe8e>
 8003318:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800331a:	18bd      	adds	r5, r7, r2
 800331c:	eba5 0509 	sub.w	r5, r5, r9
 8003320:	1ad3      	subs	r3, r2, r3
 8003322:	429d      	cmp	r5, r3
 8003324:	bfa8      	it	ge
 8003326:	461d      	movge	r5, r3
 8003328:	2d00      	cmp	r5, #0
 800332a:	dd0d      	ble.n	8003348 <_vfprintf_r+0xe30>
 800332c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800332e:	f8cb 9000 	str.w	r9, [fp]
 8003332:	3201      	adds	r2, #1
 8003334:	442c      	add	r4, r5
 8003336:	2a07      	cmp	r2, #7
 8003338:	942c      	str	r4, [sp, #176]	; 0xb0
 800333a:	f8cb 5004 	str.w	r5, [fp, #4]
 800333e:	922b      	str	r2, [sp, #172]	; 0xac
 8003340:	f300 8462 	bgt.w	8003c08 <_vfprintf_r+0x16f0>
 8003344:	f10b 0b08 	add.w	fp, fp, #8
 8003348:	2d00      	cmp	r5, #0
 800334a:	bfac      	ite	ge
 800334c:	1b5d      	subge	r5, r3, r5
 800334e:	461d      	movlt	r5, r3
 8003350:	2d00      	cmp	r5, #0
 8003352:	f77f ab32 	ble.w	80029ba <_vfprintf_r+0x4a2>
 8003356:	2d10      	cmp	r5, #16
 8003358:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800335a:	4bc5      	ldr	r3, [pc, #788]	; (8003670 <_vfprintf_r+0x1158>)
 800335c:	f340 80c4 	ble.w	80034e8 <_vfprintf_r+0xfd0>
 8003360:	4619      	mov	r1, r3
 8003362:	2610      	movs	r6, #16
 8003364:	4623      	mov	r3, r4
 8003366:	9f03      	ldr	r7, [sp, #12]
 8003368:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800336c:	460c      	mov	r4, r1
 800336e:	e005      	b.n	800337c <_vfprintf_r+0xe64>
 8003370:	f10b 0b08 	add.w	fp, fp, #8
 8003374:	3d10      	subs	r5, #16
 8003376:	2d10      	cmp	r5, #16
 8003378:	f340 80b3 	ble.w	80034e2 <_vfprintf_r+0xfca>
 800337c:	3201      	adds	r2, #1
 800337e:	3310      	adds	r3, #16
 8003380:	2a07      	cmp	r2, #7
 8003382:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003386:	e9cb 4600 	strd	r4, r6, [fp]
 800338a:	ddf1      	ble.n	8003370 <_vfprintf_r+0xe58>
 800338c:	aa2a      	add	r2, sp, #168	; 0xa8
 800338e:	4649      	mov	r1, r9
 8003390:	4638      	mov	r0, r7
 8003392:	f003 fbef 	bl	8006b74 <__sprint_r>
 8003396:	2800      	cmp	r0, #0
 8003398:	f47f ae38 	bne.w	800300c <_vfprintf_r+0xaf4>
 800339c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80033a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033a4:	e7e6      	b.n	8003374 <_vfprintf_r+0xe5c>
 80033a6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033a8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80033aa:	f8cb 1000 	str.w	r1, [fp]
 80033ae:	9915      	ldr	r1, [sp, #84]	; 0x54
 80033b0:	f8cb 1004 	str.w	r1, [fp, #4]
 80033b4:	3201      	adds	r2, #1
 80033b6:	440c      	add	r4, r1
 80033b8:	2a07      	cmp	r2, #7
 80033ba:	942c      	str	r4, [sp, #176]	; 0xb0
 80033bc:	922b      	str	r2, [sp, #172]	; 0xac
 80033be:	f300 828c 	bgt.w	80038da <_vfprintf_r+0x13c2>
 80033c2:	f10b 0b08 	add.w	fp, fp, #8
 80033c6:	e7a7      	b.n	8003318 <_vfprintf_r+0xe00>
 80033c8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80033cc:	f002 fa94 	bl	80058f8 <__retarget_lock_release_recursive>
 80033d0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80033d4:	e628      	b.n	8003028 <_vfprintf_r+0xb10>
 80033d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80033d8:	9907      	ldr	r1, [sp, #28]
 80033da:	9803      	ldr	r0, [sp, #12]
 80033dc:	f003 fbca 	bl	8006b74 <__sprint_r>
 80033e0:	2800      	cmp	r0, #0
 80033e2:	f47f ae11 	bne.w	8003008 <_vfprintf_r+0xaf0>
 80033e6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80033ea:	ae2d      	add	r6, sp, #180	; 0xb4
 80033ec:	e638      	b.n	8003060 <_vfprintf_r+0xb48>
 80033ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80033f0:	9907      	ldr	r1, [sp, #28]
 80033f2:	9803      	ldr	r0, [sp, #12]
 80033f4:	f003 fbbe 	bl	8006b74 <__sprint_r>
 80033f8:	2800      	cmp	r0, #0
 80033fa:	f47f ae05 	bne.w	8003008 <_vfprintf_r+0xaf0>
 80033fe:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003402:	ae2d      	add	r6, sp, #180	; 0xb4
 8003404:	930b      	str	r3, [sp, #44]	; 0x2c
 8003406:	e638      	b.n	800307a <_vfprintf_r+0xb62>
 8003408:	6814      	ldr	r4, [r2, #0]
 800340a:	9308      	str	r3, [sp, #32]
 800340c:	2500      	movs	r5, #0
 800340e:	f7ff bb95 	b.w	8002b3c <_vfprintf_r+0x624>
 8003412:	6814      	ldr	r4, [r2, #0]
 8003414:	9308      	str	r3, [sp, #32]
 8003416:	2500      	movs	r5, #0
 8003418:	f7ff b9ae 	b.w	8002778 <_vfprintf_r+0x260>
 800341c:	680c      	ldr	r4, [r1, #0]
 800341e:	9208      	str	r2, [sp, #32]
 8003420:	17e5      	asrs	r5, r4, #31
 8003422:	4620      	mov	r0, r4
 8003424:	4629      	mov	r1, r5
 8003426:	f7ff b9d2 	b.w	80027ce <_vfprintf_r+0x2b6>
 800342a:	6814      	ldr	r4, [r2, #0]
 800342c:	9108      	str	r1, [sp, #32]
 800342e:	2201      	movs	r2, #1
 8003430:	2500      	movs	r5, #0
 8003432:	f7ff bb32 	b.w	8002a9a <_vfprintf_r+0x582>
 8003436:	2a01      	cmp	r2, #1
 8003438:	f47f ab3c 	bne.w	8002ab4 <_vfprintf_r+0x59c>
 800343c:	e68f      	b.n	800315e <_vfprintf_r+0xc46>
 800343e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003442:	2200      	movs	r2, #0
 8003444:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003448:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800344c:	af56      	add	r7, sp, #344	; 0x158
 800344e:	4692      	mov	sl, r2
 8003450:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003454:	461e      	mov	r6, r3
 8003456:	e00a      	b.n	800346e <_vfprintf_r+0xf56>
 8003458:	2300      	movs	r3, #0
 800345a:	4620      	mov	r0, r4
 800345c:	4629      	mov	r1, r5
 800345e:	220a      	movs	r2, #10
 8003460:	f7fc fece 	bl	8000200 <__aeabi_uldivmod>
 8003464:	4604      	mov	r4, r0
 8003466:	460d      	mov	r5, r1
 8003468:	ea54 0305 	orrs.w	r3, r4, r5
 800346c:	d029      	beq.n	80034c2 <_vfprintf_r+0xfaa>
 800346e:	220a      	movs	r2, #10
 8003470:	2300      	movs	r3, #0
 8003472:	4620      	mov	r0, r4
 8003474:	4629      	mov	r1, r5
 8003476:	f7fc fec3 	bl	8000200 <__aeabi_uldivmod>
 800347a:	3230      	adds	r2, #48	; 0x30
 800347c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003480:	f10a 0a01 	add.w	sl, sl, #1
 8003484:	3f01      	subs	r7, #1
 8003486:	2e00      	cmp	r6, #0
 8003488:	d0e6      	beq.n	8003458 <_vfprintf_r+0xf40>
 800348a:	f898 3000 	ldrb.w	r3, [r8]
 800348e:	459a      	cmp	sl, r3
 8003490:	d1e2      	bne.n	8003458 <_vfprintf_r+0xf40>
 8003492:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003496:	d0df      	beq.n	8003458 <_vfprintf_r+0xf40>
 8003498:	2d00      	cmp	r5, #0
 800349a:	bf08      	it	eq
 800349c:	2c0a      	cmpeq	r4, #10
 800349e:	d3db      	bcc.n	8003458 <_vfprintf_r+0xf40>
 80034a0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80034a2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80034a4:	1aff      	subs	r7, r7, r3
 80034a6:	461a      	mov	r2, r3
 80034a8:	4638      	mov	r0, r7
 80034aa:	f003 faf5 	bl	8006a98 <strncpy>
 80034ae:	f898 3001 	ldrb.w	r3, [r8, #1]
 80034b2:	2b00      	cmp	r3, #0
 80034b4:	f000 8496 	beq.w	8003de4 <_vfprintf_r+0x18cc>
 80034b8:	f108 0801 	add.w	r8, r8, #1
 80034bc:	f04f 0a00 	mov.w	sl, #0
 80034c0:	e7ca      	b.n	8003458 <_vfprintf_r+0xf40>
 80034c2:	9b04      	ldr	r3, [sp, #16]
 80034c4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80034c8:	1bdb      	subs	r3, r3, r7
 80034ca:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80034ce:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80034d0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80034d4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80034d8:	9309      	str	r3, [sp, #36]	; 0x24
 80034da:	f7ff b99e 	b.w	800281a <_vfprintf_r+0x302>
 80034de:	46c1      	mov	r9, r8
 80034e0:	e594      	b.n	800300c <_vfprintf_r+0xaf4>
 80034e2:	4621      	mov	r1, r4
 80034e4:	461c      	mov	r4, r3
 80034e6:	460b      	mov	r3, r1
 80034e8:	3201      	adds	r2, #1
 80034ea:	442c      	add	r4, r5
 80034ec:	2a07      	cmp	r2, #7
 80034ee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80034f2:	e9cb 3500 	strd	r3, r5, [fp]
 80034f6:	f77f aa5e 	ble.w	80029b6 <_vfprintf_r+0x49e>
 80034fa:	e5ee      	b.n	80030da <_vfprintf_r+0xbc2>
 80034fc:	f018 0f10 	tst.w	r8, #16
 8003500:	f040 80f8 	bne.w	80036f4 <_vfprintf_r+0x11dc>
 8003504:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003508:	f000 8351 	beq.w	8003bae <_vfprintf_r+0x1696>
 800350c:	9a05      	ldr	r2, [sp, #20]
 800350e:	801a      	strh	r2, [r3, #0]
 8003510:	4657      	mov	r7, sl
 8003512:	f7ff baa7 	b.w	8002a64 <_vfprintf_r+0x54c>
 8003516:	aa2a      	add	r2, sp, #168	; 0xa8
 8003518:	9907      	ldr	r1, [sp, #28]
 800351a:	9803      	ldr	r0, [sp, #12]
 800351c:	f003 fb2a 	bl	8006b74 <__sprint_r>
 8003520:	2800      	cmp	r0, #0
 8003522:	f47f ad71 	bne.w	8003008 <_vfprintf_r+0xaf0>
 8003526:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003528:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800352c:	f7ff b9f5 	b.w	800291a <_vfprintf_r+0x402>
 8003530:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003534:	4602      	mov	r2, r0
 8003536:	460b      	mov	r3, r1
 8003538:	f7fd fd98 	bl	800106c <__aeabi_dcmpun>
 800353c:	2800      	cmp	r0, #0
 800353e:	f040 8491 	bne.w	8003e64 <_vfprintf_r+0x194c>
 8003542:	2e61      	cmp	r6, #97	; 0x61
 8003544:	f000 8111 	beq.w	800376a <_vfprintf_r+0x1252>
 8003548:	2e41      	cmp	r6, #65	; 0x41
 800354a:	f000 8377 	beq.w	8003c3c <_vfprintf_r+0x1724>
 800354e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003552:	f026 0220 	bic.w	r2, r6, #32
 8003556:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800355a:	930e      	str	r3, [sp, #56]	; 0x38
 800355c:	9204      	str	r2, [sp, #16]
 800355e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003560:	f000 842d 	beq.w	8003dbe <_vfprintf_r+0x18a6>
 8003564:	2a47      	cmp	r2, #71	; 0x47
 8003566:	f000 8424 	beq.w	8003db2 <_vfprintf_r+0x189a>
 800356a:	2b00      	cmp	r3, #0
 800356c:	f2c0 82f9 	blt.w	8003b62 <_vfprintf_r+0x164a>
 8003570:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003574:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003578:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800357c:	2e66      	cmp	r6, #102	; 0x66
 800357e:	f000 83eb 	beq.w	8003d58 <_vfprintf_r+0x1840>
 8003582:	2e46      	cmp	r6, #70	; 0x46
 8003584:	f000 847e 	beq.w	8003e84 <_vfprintf_r+0x196c>
 8003588:	9b04      	ldr	r3, [sp, #16]
 800358a:	9803      	ldr	r0, [sp, #12]
 800358c:	2b45      	cmp	r3, #69	; 0x45
 800358e:	bf0c      	ite	eq
 8003590:	f109 0501 	addeq.w	r5, r9, #1
 8003594:	464d      	movne	r5, r9
 8003596:	aa28      	add	r2, sp, #160	; 0xa0
 8003598:	ab25      	add	r3, sp, #148	; 0x94
 800359a:	e9cd 3200 	strd	r3, r2, [sp]
 800359e:	2102      	movs	r1, #2
 80035a0:	ab24      	add	r3, sp, #144	; 0x90
 80035a2:	462a      	mov	r2, r5
 80035a4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80035a8:	f000 fe3e 	bl	8004228 <_dtoa_r>
 80035ac:	2e67      	cmp	r6, #103	; 0x67
 80035ae:	4607      	mov	r7, r0
 80035b0:	f040 849c 	bne.w	8003eec <_vfprintf_r+0x19d4>
 80035b4:	f018 0f01 	tst.w	r8, #1
 80035b8:	f040 83f9 	bne.w	8003dae <_vfprintf_r+0x1896>
 80035bc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80035be:	4640      	mov	r0, r8
 80035c0:	1bdb      	subs	r3, r3, r7
 80035c2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80035c6:	9310      	str	r3, [sp, #64]	; 0x40
 80035c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80035ca:	9311      	str	r3, [sp, #68]	; 0x44
 80035cc:	9b04      	ldr	r3, [sp, #16]
 80035ce:	2b47      	cmp	r3, #71	; 0x47
 80035d0:	f000 81e7 	beq.w	80039a2 <_vfprintf_r+0x148a>
 80035d4:	9b04      	ldr	r3, [sp, #16]
 80035d6:	2b46      	cmp	r3, #70	; 0x46
 80035d8:	f000 8300 	beq.w	8003bdc <_vfprintf_r+0x16c4>
 80035dc:	9904      	ldr	r1, [sp, #16]
 80035de:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80035e0:	b2f2      	uxtb	r2, r6
 80035e2:	2941      	cmp	r1, #65	; 0x41
 80035e4:	bf08      	it	eq
 80035e6:	320f      	addeq	r2, #15
 80035e8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80035ec:	bf06      	itte	eq
 80035ee:	b2d2      	uxtbeq	r2, r2
 80035f0:	2101      	moveq	r1, #1
 80035f2:	2100      	movne	r1, #0
 80035f4:	2b00      	cmp	r3, #0
 80035f6:	9324      	str	r3, [sp, #144]	; 0x90
 80035f8:	bfb8      	it	lt
 80035fa:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80035fc:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003600:	bfba      	itte	lt
 8003602:	f1c3 0301 	rsblt	r3, r3, #1
 8003606:	222d      	movlt	r2, #45	; 0x2d
 8003608:	222b      	movge	r2, #43	; 0x2b
 800360a:	2b09      	cmp	r3, #9
 800360c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003610:	f300 83f9 	bgt.w	8003e06 <_vfprintf_r+0x18ee>
 8003614:	2900      	cmp	r1, #0
 8003616:	f040 8487 	bne.w	8003f28 <_vfprintf_r+0x1a10>
 800361a:	2230      	movs	r2, #48	; 0x30
 800361c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003620:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003624:	3330      	adds	r3, #48	; 0x30
 8003626:	7013      	strb	r3, [r2, #0]
 8003628:	1c53      	adds	r3, r2, #1
 800362a:	aa26      	add	r2, sp, #152	; 0x98
 800362c:	1a9b      	subs	r3, r3, r2
 800362e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003630:	9319      	str	r3, [sp, #100]	; 0x64
 8003632:	2a01      	cmp	r2, #1
 8003634:	4413      	add	r3, r2
 8003636:	9309      	str	r3, [sp, #36]	; 0x24
 8003638:	f340 8442 	ble.w	8003ec0 <_vfprintf_r+0x19a8>
 800363c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800363e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003640:	4413      	add	r3, r2
 8003642:	9309      	str	r3, [sp, #36]	; 0x24
 8003644:	2300      	movs	r3, #0
 8003646:	930f      	str	r3, [sp, #60]	; 0x3c
 8003648:	9314      	str	r3, [sp, #80]	; 0x50
 800364a:	9311      	str	r3, [sp, #68]	; 0x44
 800364c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800364e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003652:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003656:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800365a:	9304      	str	r3, [sp, #16]
 800365c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800365e:	2b00      	cmp	r3, #0
 8003660:	f040 8275 	bne.w	8003b4e <_vfprintf_r+0x1636>
 8003664:	4699      	mov	r9, r3
 8003666:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800366a:	f7ff b8e2 	b.w	8002832 <_vfprintf_r+0x31a>
 800366e:	bf00      	nop
 8003670:	08007264 	.word	0x08007264
 8003674:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003676:	49bd      	ldr	r1, [pc, #756]	; (800396c <_vfprintf_r+0x1454>)
 8003678:	f8cb 1000 	str.w	r1, [fp]
 800367c:	3201      	adds	r2, #1
 800367e:	3401      	adds	r4, #1
 8003680:	2101      	movs	r1, #1
 8003682:	2a07      	cmp	r2, #7
 8003684:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003688:	f8cb 1004 	str.w	r1, [fp, #4]
 800368c:	dc60      	bgt.n	8003750 <_vfprintf_r+0x1238>
 800368e:	f10b 0b08 	add.w	fp, fp, #8
 8003692:	b92b      	cbnz	r3, 80036a0 <_vfprintf_r+0x1188>
 8003694:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003696:	b91a      	cbnz	r2, 80036a0 <_vfprintf_r+0x1188>
 8003698:	f018 0f01 	tst.w	r8, #1
 800369c:	f43f a98d 	beq.w	80029ba <_vfprintf_r+0x4a2>
 80036a0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036a2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80036a4:	f8cb 1000 	str.w	r1, [fp]
 80036a8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80036aa:	f8cb 1004 	str.w	r1, [fp, #4]
 80036ae:	3201      	adds	r2, #1
 80036b0:	440c      	add	r4, r1
 80036b2:	2a07      	cmp	r2, #7
 80036b4:	942c      	str	r4, [sp, #176]	; 0xb0
 80036b6:	922b      	str	r2, [sp, #172]	; 0xac
 80036b8:	f300 8282 	bgt.w	8003bc0 <_vfprintf_r+0x16a8>
 80036bc:	f10b 0b08 	add.w	fp, fp, #8
 80036c0:	2b00      	cmp	r3, #0
 80036c2:	f2c0 82e7 	blt.w	8003c94 <_vfprintf_r+0x177c>
 80036c6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80036c8:	3201      	adds	r2, #1
 80036ca:	441c      	add	r4, r3
 80036cc:	2a07      	cmp	r2, #7
 80036ce:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80036d2:	e9cb 7300 	strd	r7, r3, [fp]
 80036d6:	f77f a96e 	ble.w	80029b6 <_vfprintf_r+0x49e>
 80036da:	e4fe      	b.n	80030da <_vfprintf_r+0xbc2>
 80036dc:	aa2a      	add	r2, sp, #168	; 0xa8
 80036de:	9907      	ldr	r1, [sp, #28]
 80036e0:	9803      	ldr	r0, [sp, #12]
 80036e2:	f003 fa47 	bl	8006b74 <__sprint_r>
 80036e6:	2800      	cmp	r0, #0
 80036e8:	f47f ac8e 	bne.w	8003008 <_vfprintf_r+0xaf0>
 80036ec:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036f0:	f7ff bbf0 	b.w	8002ed4 <_vfprintf_r+0x9bc>
 80036f4:	9a05      	ldr	r2, [sp, #20]
 80036f6:	601a      	str	r2, [r3, #0]
 80036f8:	4657      	mov	r7, sl
 80036fa:	f7ff b9b3 	b.w	8002a64 <_vfprintf_r+0x54c>
 80036fe:	8814      	ldrh	r4, [r2, #0]
 8003700:	9108      	str	r1, [sp, #32]
 8003702:	2500      	movs	r5, #0
 8003704:	2201      	movs	r2, #1
 8003706:	f7ff b9c8 	b.w	8002a9a <_vfprintf_r+0x582>
 800370a:	8814      	ldrh	r4, [r2, #0]
 800370c:	9308      	str	r3, [sp, #32]
 800370e:	2500      	movs	r5, #0
 8003710:	f7ff ba14 	b.w	8002b3c <_vfprintf_r+0x624>
 8003714:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003718:	9208      	str	r2, [sp, #32]
 800371a:	17e5      	asrs	r5, r4, #31
 800371c:	4620      	mov	r0, r4
 800371e:	4629      	mov	r1, r5
 8003720:	f7ff b855 	b.w	80027ce <_vfprintf_r+0x2b6>
 8003724:	8814      	ldrh	r4, [r2, #0]
 8003726:	9308      	str	r3, [sp, #32]
 8003728:	2500      	movs	r5, #0
 800372a:	f7ff b825 	b.w	8002778 <_vfprintf_r+0x260>
 800372e:	222d      	movs	r2, #45	; 0x2d
 8003730:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003734:	f7ff baa2 	b.w	8002c7c <_vfprintf_r+0x764>
 8003738:	aa2a      	add	r2, sp, #168	; 0xa8
 800373a:	9907      	ldr	r1, [sp, #28]
 800373c:	9803      	ldr	r0, [sp, #12]
 800373e:	f003 fa19 	bl	8006b74 <__sprint_r>
 8003742:	2800      	cmp	r0, #0
 8003744:	f47f ac60 	bne.w	8003008 <_vfprintf_r+0xaf0>
 8003748:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800374a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800374e:	e534      	b.n	80031ba <_vfprintf_r+0xca2>
 8003750:	aa2a      	add	r2, sp, #168	; 0xa8
 8003752:	9907      	ldr	r1, [sp, #28]
 8003754:	9803      	ldr	r0, [sp, #12]
 8003756:	f003 fa0d 	bl	8006b74 <__sprint_r>
 800375a:	2800      	cmp	r0, #0
 800375c:	f47f ac54 	bne.w	8003008 <_vfprintf_r+0xaf0>
 8003760:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003762:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003764:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003768:	e793      	b.n	8003692 <_vfprintf_r+0x117a>
 800376a:	2330      	movs	r3, #48	; 0x30
 800376c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003770:	2378      	movs	r3, #120	; 0x78
 8003772:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003776:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800377a:	f048 0402 	orr.w	r4, r8, #2
 800377e:	f300 82b0 	bgt.w	8003ce2 <_vfprintf_r+0x17ca>
 8003782:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003786:	930e      	str	r3, [sp, #56]	; 0x38
 8003788:	f026 0320 	bic.w	r3, r6, #32
 800378c:	9304      	str	r3, [sp, #16]
 800378e:	2200      	movs	r2, #0
 8003790:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003792:	920a      	str	r2, [sp, #40]	; 0x28
 8003794:	46a0      	mov	r8, r4
 8003796:	af3d      	add	r7, sp, #244	; 0xf4
 8003798:	2b00      	cmp	r3, #0
 800379a:	f2c0 81e3 	blt.w	8003b64 <_vfprintf_r+0x164c>
 800379e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80037a2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80037a6:	2300      	movs	r3, #0
 80037a8:	930b      	str	r3, [sp, #44]	; 0x2c
 80037aa:	2e61      	cmp	r6, #97	; 0x61
 80037ac:	f000 8255 	beq.w	8003c5a <_vfprintf_r+0x1742>
 80037b0:	2e41      	cmp	r6, #65	; 0x41
 80037b2:	f47f aee3 	bne.w	800357c <_vfprintf_r+0x1064>
 80037b6:	a824      	add	r0, sp, #144	; 0x90
 80037b8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80037bc:	f003 f8e2 	bl	8006984 <frexp>
 80037c0:	2200      	movs	r2, #0
 80037c2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80037c6:	ec51 0b10 	vmov	r0, r1, d0
 80037ca:	f7fd f9b5 	bl	8000b38 <__aeabi_dmul>
 80037ce:	2200      	movs	r2, #0
 80037d0:	2300      	movs	r3, #0
 80037d2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80037d6:	f7fd fc17 	bl	8001008 <__aeabi_dcmpeq>
 80037da:	2800      	cmp	r0, #0
 80037dc:	f040 8305 	bne.w	8003dea <_vfprintf_r+0x18d2>
 80037e0:	4b63      	ldr	r3, [pc, #396]	; (8003970 <_vfprintf_r+0x1458>)
 80037e2:	9309      	str	r3, [sp, #36]	; 0x24
 80037e4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80037e8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80037ec:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80037f0:	9721      	str	r7, [sp, #132]	; 0x84
 80037f2:	46b9      	mov	r9, r7
 80037f4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80037f8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80037fc:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003800:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003804:	e003      	b.n	800380e <_vfprintf_r+0x12f6>
 8003806:	f7fd fbff 	bl	8001008 <__aeabi_dcmpeq>
 800380a:	bb20      	cbnz	r0, 8003856 <_vfprintf_r+0x133e>
 800380c:	46a9      	mov	r9, r5
 800380e:	2200      	movs	r2, #0
 8003810:	4b58      	ldr	r3, [pc, #352]	; (8003974 <_vfprintf_r+0x145c>)
 8003812:	4630      	mov	r0, r6
 8003814:	4639      	mov	r1, r7
 8003816:	f7fd f98f 	bl	8000b38 <__aeabi_dmul>
 800381a:	460f      	mov	r7, r1
 800381c:	4606      	mov	r6, r0
 800381e:	f7fd fc3b 	bl	8001098 <__aeabi_d2iz>
 8003822:	4680      	mov	r8, r0
 8003824:	f7fd f91e 	bl	8000a64 <__aeabi_i2d>
 8003828:	4602      	mov	r2, r0
 800382a:	460b      	mov	r3, r1
 800382c:	4630      	mov	r0, r6
 800382e:	4639      	mov	r1, r7
 8003830:	f7fc ffca 	bl	80007c8 <__aeabi_dsub>
 8003834:	464d      	mov	r5, r9
 8003836:	f81a c008 	ldrb.w	ip, [sl, r8]
 800383a:	f805 cb01 	strb.w	ip, [r5], #1
 800383e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003842:	46a3      	mov	fp, r4
 8003844:	4606      	mov	r6, r0
 8003846:	460f      	mov	r7, r1
 8003848:	f04f 0200 	mov.w	r2, #0
 800384c:	f04f 0300 	mov.w	r3, #0
 8003850:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003854:	d1d7      	bne.n	8003806 <_vfprintf_r+0x12ee>
 8003856:	4630      	mov	r0, r6
 8003858:	4639      	mov	r1, r7
 800385a:	2200      	movs	r2, #0
 800385c:	4b46      	ldr	r3, [pc, #280]	; (8003978 <_vfprintf_r+0x1460>)
 800385e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003862:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003864:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003868:	4644      	mov	r4, r8
 800386a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 800386e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003872:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003876:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 800387a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 800387c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003880:	f7fd fbea 	bl	8001058 <__aeabi_dcmpgt>
 8003884:	2800      	cmp	r0, #0
 8003886:	f040 8176 	bne.w	8003b76 <_vfprintf_r+0x165e>
 800388a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 800388e:	2200      	movs	r2, #0
 8003890:	4b39      	ldr	r3, [pc, #228]	; (8003978 <_vfprintf_r+0x1460>)
 8003892:	f7fd fbb9 	bl	8001008 <__aeabi_dcmpeq>
 8003896:	b110      	cbz	r0, 800389e <_vfprintf_r+0x1386>
 8003898:	07e2      	lsls	r2, r4, #31
 800389a:	f100 816c 	bmi.w	8003b76 <_vfprintf_r+0x165e>
 800389e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038a0:	2b00      	cmp	r3, #0
 80038a2:	db07      	blt.n	80038b4 <_vfprintf_r+0x139c>
 80038a4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80038a6:	3301      	adds	r3, #1
 80038a8:	442b      	add	r3, r5
 80038aa:	2230      	movs	r2, #48	; 0x30
 80038ac:	f805 2b01 	strb.w	r2, [r5], #1
 80038b0:	42ab      	cmp	r3, r5
 80038b2:	d1fb      	bne.n	80038ac <_vfprintf_r+0x1394>
 80038b4:	1beb      	subs	r3, r5, r7
 80038b6:	4640      	mov	r0, r8
 80038b8:	9310      	str	r3, [sp, #64]	; 0x40
 80038ba:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80038be:	e683      	b.n	80035c8 <_vfprintf_r+0x10b0>
 80038c0:	f8cd 9010 	str.w	r9, [sp, #16]
 80038c4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 80038c8:	9408      	str	r4, [sp, #32]
 80038ca:	4681      	mov	r9, r0
 80038cc:	900f      	str	r0, [sp, #60]	; 0x3c
 80038ce:	9014      	str	r0, [sp, #80]	; 0x50
 80038d0:	9011      	str	r0, [sp, #68]	; 0x44
 80038d2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80038d6:	f7fe bfac 	b.w	8002832 <_vfprintf_r+0x31a>
 80038da:	aa2a      	add	r2, sp, #168	; 0xa8
 80038dc:	9907      	ldr	r1, [sp, #28]
 80038de:	9803      	ldr	r0, [sp, #12]
 80038e0:	f003 f948 	bl	8006b74 <__sprint_r>
 80038e4:	2800      	cmp	r0, #0
 80038e6:	f47f ab8f 	bne.w	8003008 <_vfprintf_r+0xaf0>
 80038ea:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80038ec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038ee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038f2:	e511      	b.n	8003318 <_vfprintf_r+0xe00>
 80038f4:	4252      	negs	r2, r2
 80038f6:	9206      	str	r2, [sp, #24]
 80038f8:	9308      	str	r3, [sp, #32]
 80038fa:	f7ff b96d 	b.w	8002bd8 <_vfprintf_r+0x6c0>
 80038fe:	4614      	mov	r4, r2
 8003900:	4632      	mov	r2, r6
 8003902:	461e      	mov	r6, r3
 8003904:	4613      	mov	r3, r2
 8003906:	462a      	mov	r2, r5
 8003908:	3201      	adds	r2, #1
 800390a:	9209      	str	r2, [sp, #36]	; 0x24
 800390c:	f106 0208 	add.w	r2, r6, #8
 8003910:	e9c6 3900 	strd	r3, r9, [r6]
 8003914:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003916:	932b      	str	r3, [sp, #172]	; 0xac
 8003918:	444c      	add	r4, r9
 800391a:	2b07      	cmp	r3, #7
 800391c:	942c      	str	r4, [sp, #176]	; 0xb0
 800391e:	f73f acc3 	bgt.w	80032a8 <_vfprintf_r+0xd90>
 8003922:	3301      	adds	r3, #1
 8003924:	9309      	str	r3, [sp, #36]	; 0x24
 8003926:	f102 0b08 	add.w	fp, r2, #8
 800392a:	4616      	mov	r6, r2
 800392c:	f7ff bbca 	b.w	80030c4 <_vfprintf_r+0xbac>
 8003930:	aa2a      	add	r2, sp, #168	; 0xa8
 8003932:	9907      	ldr	r1, [sp, #28]
 8003934:	9803      	ldr	r0, [sp, #12]
 8003936:	f003 f91d 	bl	8006b74 <__sprint_r>
 800393a:	2800      	cmp	r0, #0
 800393c:	f47f ab64 	bne.w	8003008 <_vfprintf_r+0xaf0>
 8003940:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003942:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003946:	f7ff bade 	b.w	8002f06 <_vfprintf_r+0x9ee>
 800394a:	464b      	mov	r3, r9
 800394c:	2b06      	cmp	r3, #6
 800394e:	bf28      	it	cs
 8003950:	2306      	movcs	r3, #6
 8003952:	46b9      	mov	r9, r7
 8003954:	970f      	str	r7, [sp, #60]	; 0x3c
 8003956:	9714      	str	r7, [sp, #80]	; 0x50
 8003958:	9711      	str	r7, [sp, #68]	; 0x44
 800395a:	970a      	str	r7, [sp, #40]	; 0x28
 800395c:	463a      	mov	r2, r7
 800395e:	9304      	str	r3, [sp, #16]
 8003960:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003964:	4f05      	ldr	r7, [pc, #20]	; (800397c <_vfprintf_r+0x1464>)
 8003966:	f7fe bf64 	b.w	8002832 <_vfprintf_r+0x31a>
 800396a:	bf00      	nop
 800396c:	08007250 	.word	0x08007250
 8003970:	08007234 	.word	0x08007234
 8003974:	40300000 	.word	0x40300000
 8003978:	3fe00000 	.word	0x3fe00000
 800397c:	08007248 	.word	0x08007248
 8003980:	460c      	mov	r4, r1
 8003982:	4639      	mov	r1, r7
 8003984:	465f      	mov	r7, fp
 8003986:	469b      	mov	fp, r3
 8003988:	460b      	mov	r3, r1
 800398a:	3201      	adds	r2, #1
 800398c:	442c      	add	r4, r5
 800398e:	2a07      	cmp	r2, #7
 8003990:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003994:	e9cb 3500 	strd	r3, r5, [fp]
 8003998:	f73f aca5 	bgt.w	80032e6 <_vfprintf_r+0xdce>
 800399c:	f10b 0b08 	add.w	fp, fp, #8
 80039a0:	e4ac      	b.n	80032fc <_vfprintf_r+0xde4>
 80039a2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80039a4:	1cda      	adds	r2, r3, #3
 80039a6:	db02      	blt.n	80039ae <_vfprintf_r+0x1496>
 80039a8:	4599      	cmp	r9, r3
 80039aa:	f280 80b5 	bge.w	8003b18 <_vfprintf_r+0x1600>
 80039ae:	3e02      	subs	r6, #2
 80039b0:	f026 0320 	bic.w	r3, r6, #32
 80039b4:	9304      	str	r3, [sp, #16]
 80039b6:	e611      	b.n	80035dc <_vfprintf_r+0x10c4>
 80039b8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039ba:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80039be:	465a      	mov	r2, fp
 80039c0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80039c4:	18fb      	adds	r3, r7, r3
 80039c6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80039ca:	970c      	str	r7, [sp, #48]	; 0x30
 80039cc:	4eaf      	ldr	r6, [pc, #700]	; (8003c8c <_vfprintf_r+0x1774>)
 80039ce:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80039d2:	9309      	str	r3, [sp, #36]	; 0x24
 80039d4:	464f      	mov	r7, r9
 80039d6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80039da:	4621      	mov	r1, r4
 80039dc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80039de:	2b00      	cmp	r3, #0
 80039e0:	d05b      	beq.n	8003a9a <_vfprintf_r+0x1582>
 80039e2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039e4:	2b00      	cmp	r3, #0
 80039e6:	d154      	bne.n	8003a92 <_vfprintf_r+0x157a>
 80039e8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80039ea:	3b01      	subs	r3, #1
 80039ec:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80039f0:	9314      	str	r3, [sp, #80]	; 0x50
 80039f2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80039f4:	9818      	ldr	r0, [sp, #96]	; 0x60
 80039f6:	6010      	str	r0, [r2, #0]
 80039f8:	3301      	adds	r3, #1
 80039fa:	4459      	add	r1, fp
 80039fc:	2b07      	cmp	r3, #7
 80039fe:	912c      	str	r1, [sp, #176]	; 0xb0
 8003a00:	f8c2 b004 	str.w	fp, [r2, #4]
 8003a04:	932b      	str	r3, [sp, #172]	; 0xac
 8003a06:	dc68      	bgt.n	8003ada <_vfprintf_r+0x15c2>
 8003a08:	3208      	adds	r2, #8
 8003a0a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003a0c:	f898 3000 	ldrb.w	r3, [r8]
 8003a10:	1bc5      	subs	r5, r0, r7
 8003a12:	429d      	cmp	r5, r3
 8003a14:	bfa8      	it	ge
 8003a16:	461d      	movge	r5, r3
 8003a18:	2d00      	cmp	r5, #0
 8003a1a:	dd0b      	ble.n	8003a34 <_vfprintf_r+0x151c>
 8003a1c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003a1e:	6017      	str	r7, [r2, #0]
 8003a20:	3301      	adds	r3, #1
 8003a22:	4429      	add	r1, r5
 8003a24:	2b07      	cmp	r3, #7
 8003a26:	912c      	str	r1, [sp, #176]	; 0xb0
 8003a28:	6055      	str	r5, [r2, #4]
 8003a2a:	932b      	str	r3, [sp, #172]	; 0xac
 8003a2c:	dc5e      	bgt.n	8003aec <_vfprintf_r+0x15d4>
 8003a2e:	f898 3000 	ldrb.w	r3, [r8]
 8003a32:	3208      	adds	r2, #8
 8003a34:	2d00      	cmp	r5, #0
 8003a36:	bfac      	ite	ge
 8003a38:	1b5d      	subge	r5, r3, r5
 8003a3a:	461d      	movlt	r5, r3
 8003a3c:	2d00      	cmp	r5, #0
 8003a3e:	dd26      	ble.n	8003a8e <_vfprintf_r+0x1576>
 8003a40:	2d10      	cmp	r5, #16
 8003a42:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003a44:	dd3c      	ble.n	8003ac0 <_vfprintf_r+0x15a8>
 8003a46:	2410      	movs	r4, #16
 8003a48:	e003      	b.n	8003a52 <_vfprintf_r+0x153a>
 8003a4a:	3208      	adds	r2, #8
 8003a4c:	3d10      	subs	r5, #16
 8003a4e:	2d10      	cmp	r5, #16
 8003a50:	dd36      	ble.n	8003ac0 <_vfprintf_r+0x15a8>
 8003a52:	3001      	adds	r0, #1
 8003a54:	3110      	adds	r1, #16
 8003a56:	2807      	cmp	r0, #7
 8003a58:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003a5c:	e9c2 6400 	strd	r6, r4, [r2]
 8003a60:	ddf3      	ble.n	8003a4a <_vfprintf_r+0x1532>
 8003a62:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a64:	4651      	mov	r1, sl
 8003a66:	4648      	mov	r0, r9
 8003a68:	f003 f884 	bl	8006b74 <__sprint_r>
 8003a6c:	2800      	cmp	r0, #0
 8003a6e:	d150      	bne.n	8003b12 <_vfprintf_r+0x15fa>
 8003a70:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003a74:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a76:	e7e9      	b.n	8003a4c <_vfprintf_r+0x1534>
 8003a78:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a7a:	4651      	mov	r1, sl
 8003a7c:	4648      	mov	r0, r9
 8003a7e:	f003 f879 	bl	8006b74 <__sprint_r>
 8003a82:	2800      	cmp	r0, #0
 8003a84:	d145      	bne.n	8003b12 <_vfprintf_r+0x15fa>
 8003a86:	f898 3000 	ldrb.w	r3, [r8]
 8003a8a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003a8c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003a8e:	441f      	add	r7, r3
 8003a90:	e7a4      	b.n	80039dc <_vfprintf_r+0x14c4>
 8003a92:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a94:	3b01      	subs	r3, #1
 8003a96:	930f      	str	r3, [sp, #60]	; 0x3c
 8003a98:	e7ab      	b.n	80039f2 <_vfprintf_r+0x14da>
 8003a9a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003a9c:	2b00      	cmp	r3, #0
 8003a9e:	d1f8      	bne.n	8003a92 <_vfprintf_r+0x157a>
 8003aa0:	46b9      	mov	r9, r7
 8003aa2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003aa4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003aa6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003aaa:	18fb      	adds	r3, r7, r3
 8003aac:	4599      	cmp	r9, r3
 8003aae:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003ab2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003ab6:	4693      	mov	fp, r2
 8003ab8:	460c      	mov	r4, r1
 8003aba:	bf28      	it	cs
 8003abc:	4699      	movcs	r9, r3
 8003abe:	e424      	b.n	800330a <_vfprintf_r+0xdf2>
 8003ac0:	3001      	adds	r0, #1
 8003ac2:	4429      	add	r1, r5
 8003ac4:	2807      	cmp	r0, #7
 8003ac6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003aca:	e9c2 6500 	strd	r6, r5, [r2]
 8003ace:	dcd3      	bgt.n	8003a78 <_vfprintf_r+0x1560>
 8003ad0:	f898 3000 	ldrb.w	r3, [r8]
 8003ad4:	3208      	adds	r2, #8
 8003ad6:	441f      	add	r7, r3
 8003ad8:	e780      	b.n	80039dc <_vfprintf_r+0x14c4>
 8003ada:	aa2a      	add	r2, sp, #168	; 0xa8
 8003adc:	4651      	mov	r1, sl
 8003ade:	4648      	mov	r0, r9
 8003ae0:	f003 f848 	bl	8006b74 <__sprint_r>
 8003ae4:	b9a8      	cbnz	r0, 8003b12 <_vfprintf_r+0x15fa>
 8003ae6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003ae8:	aa2d      	add	r2, sp, #180	; 0xb4
 8003aea:	e78e      	b.n	8003a0a <_vfprintf_r+0x14f2>
 8003aec:	aa2a      	add	r2, sp, #168	; 0xa8
 8003aee:	4651      	mov	r1, sl
 8003af0:	4648      	mov	r0, r9
 8003af2:	f003 f83f 	bl	8006b74 <__sprint_r>
 8003af6:	b960      	cbnz	r0, 8003b12 <_vfprintf_r+0x15fa>
 8003af8:	f898 3000 	ldrb.w	r3, [r8]
 8003afc:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003afe:	aa2d      	add	r2, sp, #180	; 0xb4
 8003b00:	e798      	b.n	8003a34 <_vfprintf_r+0x151c>
 8003b02:	4638      	mov	r0, r7
 8003b04:	f7fc fd9c 	bl	8000640 <strlen>
 8003b08:	46a9      	mov	r9, r5
 8003b0a:	4603      	mov	r3, r0
 8003b0c:	9009      	str	r0, [sp, #36]	; 0x24
 8003b0e:	f7ff b8f4 	b.w	8002cfa <_vfprintf_r+0x7e2>
 8003b12:	46d1      	mov	r9, sl
 8003b14:	f7ff ba7a 	b.w	800300c <_vfprintf_r+0xaf4>
 8003b18:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b1a:	4619      	mov	r1, r3
 8003b1c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b1e:	4299      	cmp	r1, r3
 8003b20:	f300 8082 	bgt.w	8003c28 <_vfprintf_r+0x1710>
 8003b24:	07c4      	lsls	r4, r0, #31
 8003b26:	f140 816b 	bpl.w	8003e00 <_vfprintf_r+0x18e8>
 8003b2a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003b2c:	4413      	add	r3, r2
 8003b2e:	9309      	str	r3, [sp, #36]	; 0x24
 8003b30:	0541      	lsls	r1, r0, #21
 8003b32:	d503      	bpl.n	8003b3c <_vfprintf_r+0x1624>
 8003b34:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003b36:	2b00      	cmp	r3, #0
 8003b38:	f300 80e6 	bgt.w	8003d08 <_vfprintf_r+0x17f0>
 8003b3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b3e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003b42:	9304      	str	r3, [sp, #16]
 8003b44:	2667      	movs	r6, #103	; 0x67
 8003b46:	2300      	movs	r3, #0
 8003b48:	930f      	str	r3, [sp, #60]	; 0x3c
 8003b4a:	9314      	str	r3, [sp, #80]	; 0x50
 8003b4c:	e586      	b.n	800365c <_vfprintf_r+0x1144>
 8003b4e:	222d      	movs	r2, #45	; 0x2d
 8003b50:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003b54:	f04f 0900 	mov.w	r9, #0
 8003b58:	f7fe be6c 	b.w	8002834 <_vfprintf_r+0x31c>
 8003b5c:	46a1      	mov	r9, r4
 8003b5e:	f7ff ba55 	b.w	800300c <_vfprintf_r+0xaf4>
 8003b62:	900a      	str	r0, [sp, #40]	; 0x28
 8003b64:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003b68:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003b6c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003b6e:	232d      	movs	r3, #45	; 0x2d
 8003b70:	911e      	str	r1, [sp, #120]	; 0x78
 8003b72:	930b      	str	r3, [sp, #44]	; 0x2c
 8003b74:	e619      	b.n	80037aa <_vfprintf_r+0x1292>
 8003b76:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b78:	9328      	str	r3, [sp, #160]	; 0xa0
 8003b7a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b7c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003b80:	7bd9      	ldrb	r1, [r3, #15]
 8003b82:	4291      	cmp	r1, r2
 8003b84:	462b      	mov	r3, r5
 8003b86:	d109      	bne.n	8003b9c <_vfprintf_r+0x1684>
 8003b88:	2030      	movs	r0, #48	; 0x30
 8003b8a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003b8e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003b90:	1e5a      	subs	r2, r3, #1
 8003b92:	9228      	str	r2, [sp, #160]	; 0xa0
 8003b94:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003b98:	4291      	cmp	r1, r2
 8003b9a:	d0f6      	beq.n	8003b8a <_vfprintf_r+0x1672>
 8003b9c:	2a39      	cmp	r2, #57	; 0x39
 8003b9e:	bf0b      	itete	eq
 8003ba0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003ba2:	3201      	addne	r2, #1
 8003ba4:	7a92      	ldrbeq	r2, [r2, #10]
 8003ba6:	b2d2      	uxtbne	r2, r2
 8003ba8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003bac:	e682      	b.n	80038b4 <_vfprintf_r+0x139c>
 8003bae:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003bb2:	f43f ad9f 	beq.w	80036f4 <_vfprintf_r+0x11dc>
 8003bb6:	9a05      	ldr	r2, [sp, #20]
 8003bb8:	701a      	strb	r2, [r3, #0]
 8003bba:	4657      	mov	r7, sl
 8003bbc:	f7fe bf52 	b.w	8002a64 <_vfprintf_r+0x54c>
 8003bc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bc2:	9907      	ldr	r1, [sp, #28]
 8003bc4:	9803      	ldr	r0, [sp, #12]
 8003bc6:	f002 ffd5 	bl	8006b74 <__sprint_r>
 8003bca:	2800      	cmp	r0, #0
 8003bcc:	f47f aa1c 	bne.w	8003008 <_vfprintf_r+0xaf0>
 8003bd0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003bd2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003bd6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003bda:	e571      	b.n	80036c0 <_vfprintf_r+0x11a8>
 8003bdc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003bde:	2b00      	cmp	r3, #0
 8003be0:	f340 8164 	ble.w	8003eac <_vfprintf_r+0x1994>
 8003be4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003be6:	f1b9 0f00 	cmp.w	r9, #0
 8003bea:	f040 8103 	bne.w	8003df4 <_vfprintf_r+0x18dc>
 8003bee:	07c6      	lsls	r6, r0, #31
 8003bf0:	f100 8100 	bmi.w	8003df4 <_vfprintf_r+0x18dc>
 8003bf4:	9309      	str	r3, [sp, #36]	; 0x24
 8003bf6:	2666      	movs	r6, #102	; 0x66
 8003bf8:	0543      	lsls	r3, r0, #21
 8003bfa:	f100 8086 	bmi.w	8003d0a <_vfprintf_r+0x17f2>
 8003bfe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c00:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c04:	9304      	str	r3, [sp, #16]
 8003c06:	e79e      	b.n	8003b46 <_vfprintf_r+0x162e>
 8003c08:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c0a:	9907      	ldr	r1, [sp, #28]
 8003c0c:	9803      	ldr	r0, [sp, #12]
 8003c0e:	f002 ffb1 	bl	8006b74 <__sprint_r>
 8003c12:	2800      	cmp	r0, #0
 8003c14:	f47f a9f8 	bne.w	8003008 <_vfprintf_r+0xaf0>
 8003c18:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003c1a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003c1c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c1e:	1ad3      	subs	r3, r2, r3
 8003c20:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c24:	f7ff bb90 	b.w	8003348 <_vfprintf_r+0xe30>
 8003c28:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c2a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c2c:	4413      	add	r3, r2
 8003c2e:	9309      	str	r3, [sp, #36]	; 0x24
 8003c30:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c32:	2b00      	cmp	r3, #0
 8003c34:	f340 8149 	ble.w	8003eca <_vfprintf_r+0x19b2>
 8003c38:	2667      	movs	r6, #103	; 0x67
 8003c3a:	e7dd      	b.n	8003bf8 <_vfprintf_r+0x16e0>
 8003c3c:	2330      	movs	r3, #48	; 0x30
 8003c3e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003c42:	2358      	movs	r3, #88	; 0x58
 8003c44:	e595      	b.n	8003772 <_vfprintf_r+0x125a>
 8003c46:	9803      	ldr	r0, [sp, #12]
 8003c48:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c4a:	4649      	mov	r1, r9
 8003c4c:	f002 ff92 	bl	8006b74 <__sprint_r>
 8003c50:	2800      	cmp	r0, #0
 8003c52:	f47f a9e0 	bne.w	8003016 <_vfprintf_r+0xafe>
 8003c56:	f7fe bf0f 	b.w	8002a78 <_vfprintf_r+0x560>
 8003c5a:	a824      	add	r0, sp, #144	; 0x90
 8003c5c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003c60:	f002 fe90 	bl	8006984 <frexp>
 8003c64:	2200      	movs	r2, #0
 8003c66:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003c6a:	ec51 0b10 	vmov	r0, r1, d0
 8003c6e:	f7fc ff63 	bl	8000b38 <__aeabi_dmul>
 8003c72:	2200      	movs	r2, #0
 8003c74:	2300      	movs	r3, #0
 8003c76:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003c7a:	f7fd f9c5 	bl	8001008 <__aeabi_dcmpeq>
 8003c7e:	b108      	cbz	r0, 8003c84 <_vfprintf_r+0x176c>
 8003c80:	2301      	movs	r3, #1
 8003c82:	9324      	str	r3, [sp, #144]	; 0x90
 8003c84:	4b02      	ldr	r3, [pc, #8]	; (8003c90 <_vfprintf_r+0x1778>)
 8003c86:	9309      	str	r3, [sp, #36]	; 0x24
 8003c88:	e5ac      	b.n	80037e4 <_vfprintf_r+0x12cc>
 8003c8a:	bf00      	nop
 8003c8c:	08007264 	.word	0x08007264
 8003c90:	08007220 	.word	0x08007220
 8003c94:	425d      	negs	r5, r3
 8003c96:	3310      	adds	r3, #16
 8003c98:	4bb9      	ldr	r3, [pc, #740]	; (8003f80 <_vfprintf_r+0x1a68>)
 8003c9a:	f280 8097 	bge.w	8003dcc <_vfprintf_r+0x18b4>
 8003c9e:	4619      	mov	r1, r3
 8003ca0:	2610      	movs	r6, #16
 8003ca2:	4623      	mov	r3, r4
 8003ca4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003ca8:	460c      	mov	r4, r1
 8003caa:	e005      	b.n	8003cb8 <_vfprintf_r+0x17a0>
 8003cac:	f10b 0b08 	add.w	fp, fp, #8
 8003cb0:	3d10      	subs	r5, #16
 8003cb2:	2d10      	cmp	r5, #16
 8003cb4:	f340 8087 	ble.w	8003dc6 <_vfprintf_r+0x18ae>
 8003cb8:	3201      	adds	r2, #1
 8003cba:	3310      	adds	r3, #16
 8003cbc:	2a07      	cmp	r2, #7
 8003cbe:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003cc2:	e9cb 4600 	strd	r4, r6, [fp]
 8003cc6:	ddf1      	ble.n	8003cac <_vfprintf_r+0x1794>
 8003cc8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cca:	9907      	ldr	r1, [sp, #28]
 8003ccc:	4648      	mov	r0, r9
 8003cce:	f002 ff51 	bl	8006b74 <__sprint_r>
 8003cd2:	2800      	cmp	r0, #0
 8003cd4:	f47f a998 	bne.w	8003008 <_vfprintf_r+0xaf0>
 8003cd8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003cdc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ce0:	e7e6      	b.n	8003cb0 <_vfprintf_r+0x1798>
 8003ce2:	f109 0101 	add.w	r1, r9, #1
 8003ce6:	9803      	ldr	r0, [sp, #12]
 8003ce8:	f001 fe80 	bl	80059ec <_malloc_r>
 8003cec:	4607      	mov	r7, r0
 8003cee:	2800      	cmp	r0, #0
 8003cf0:	f000 813b 	beq.w	8003f6a <_vfprintf_r+0x1a52>
 8003cf4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003cf8:	930e      	str	r3, [sp, #56]	; 0x38
 8003cfa:	f026 0320 	bic.w	r3, r6, #32
 8003cfe:	9304      	str	r3, [sp, #16]
 8003d00:	46a0      	mov	r8, r4
 8003d02:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003d04:	900a      	str	r0, [sp, #40]	; 0x28
 8003d06:	e547      	b.n	8003798 <_vfprintf_r+0x1280>
 8003d08:	2667      	movs	r6, #103	; 0x67
 8003d0a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003d0c:	2200      	movs	r2, #0
 8003d0e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003d10:	9214      	str	r2, [sp, #80]	; 0x50
 8003d12:	7803      	ldrb	r3, [r0, #0]
 8003d14:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003d16:	2bff      	cmp	r3, #255	; 0xff
 8003d18:	d00c      	beq.n	8003d34 <_vfprintf_r+0x181c>
 8003d1a:	4293      	cmp	r3, r2
 8003d1c:	da0a      	bge.n	8003d34 <_vfprintf_r+0x181c>
 8003d1e:	7841      	ldrb	r1, [r0, #1]
 8003d20:	1ad2      	subs	r2, r2, r3
 8003d22:	b1a9      	cbz	r1, 8003d50 <_vfprintf_r+0x1838>
 8003d24:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d26:	3301      	adds	r3, #1
 8003d28:	9314      	str	r3, [sp, #80]	; 0x50
 8003d2a:	460b      	mov	r3, r1
 8003d2c:	2bff      	cmp	r3, #255	; 0xff
 8003d2e:	f100 0001 	add.w	r0, r0, #1
 8003d32:	d1f2      	bne.n	8003d1a <_vfprintf_r+0x1802>
 8003d34:	9211      	str	r2, [sp, #68]	; 0x44
 8003d36:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003d38:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003d3a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003d3c:	901a      	str	r0, [sp, #104]	; 0x68
 8003d3e:	4413      	add	r3, r2
 8003d40:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003d42:	fb02 1303 	mla	r3, r2, r3, r1
 8003d46:	9309      	str	r3, [sp, #36]	; 0x24
 8003d48:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d4c:	9304      	str	r3, [sp, #16]
 8003d4e:	e485      	b.n	800365c <_vfprintf_r+0x1144>
 8003d50:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003d52:	3101      	adds	r1, #1
 8003d54:	910f      	str	r1, [sp, #60]	; 0x3c
 8003d56:	e7de      	b.n	8003d16 <_vfprintf_r+0x17fe>
 8003d58:	aa28      	add	r2, sp, #160	; 0xa0
 8003d5a:	ab25      	add	r3, sp, #148	; 0x94
 8003d5c:	e9cd 3200 	strd	r3, r2, [sp]
 8003d60:	2103      	movs	r1, #3
 8003d62:	ab24      	add	r3, sp, #144	; 0x90
 8003d64:	464a      	mov	r2, r9
 8003d66:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003d6a:	9803      	ldr	r0, [sp, #12]
 8003d6c:	f000 fa5c 	bl	8004228 <_dtoa_r>
 8003d70:	464d      	mov	r5, r9
 8003d72:	4607      	mov	r7, r0
 8003d74:	eb00 0409 	add.w	r4, r0, r9
 8003d78:	783b      	ldrb	r3, [r7, #0]
 8003d7a:	2b30      	cmp	r3, #48	; 0x30
 8003d7c:	f000 80be 	beq.w	8003efc <_vfprintf_r+0x19e4>
 8003d80:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003d82:	442c      	add	r4, r5
 8003d84:	2200      	movs	r2, #0
 8003d86:	2300      	movs	r3, #0
 8003d88:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003d8c:	f7fd f93c 	bl	8001008 <__aeabi_dcmpeq>
 8003d90:	b108      	cbz	r0, 8003d96 <_vfprintf_r+0x187e>
 8003d92:	4623      	mov	r3, r4
 8003d94:	e413      	b.n	80035be <_vfprintf_r+0x10a6>
 8003d96:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d98:	42a3      	cmp	r3, r4
 8003d9a:	f4bf ac10 	bcs.w	80035be <_vfprintf_r+0x10a6>
 8003d9e:	2130      	movs	r1, #48	; 0x30
 8003da0:	1c5a      	adds	r2, r3, #1
 8003da2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003da4:	7019      	strb	r1, [r3, #0]
 8003da6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003da8:	429c      	cmp	r4, r3
 8003daa:	d8f9      	bhi.n	8003da0 <_vfprintf_r+0x1888>
 8003dac:	e407      	b.n	80035be <_vfprintf_r+0x10a6>
 8003dae:	197c      	adds	r4, r7, r5
 8003db0:	e7e8      	b.n	8003d84 <_vfprintf_r+0x186c>
 8003db2:	f1b9 0f00 	cmp.w	r9, #0
 8003db6:	f000 8092 	beq.w	8003ede <_vfprintf_r+0x19c6>
 8003dba:	900a      	str	r0, [sp, #40]	; 0x28
 8003dbc:	e4ec      	b.n	8003798 <_vfprintf_r+0x1280>
 8003dbe:	900a      	str	r0, [sp, #40]	; 0x28
 8003dc0:	f04f 0906 	mov.w	r9, #6
 8003dc4:	e4e8      	b.n	8003798 <_vfprintf_r+0x1280>
 8003dc6:	4621      	mov	r1, r4
 8003dc8:	461c      	mov	r4, r3
 8003dca:	460b      	mov	r3, r1
 8003dcc:	3201      	adds	r2, #1
 8003dce:	442c      	add	r4, r5
 8003dd0:	2a07      	cmp	r2, #7
 8003dd2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003dd6:	e9cb 3500 	strd	r3, r5, [fp]
 8003dda:	f300 80a9 	bgt.w	8003f30 <_vfprintf_r+0x1a18>
 8003dde:	f10b 0b08 	add.w	fp, fp, #8
 8003de2:	e470      	b.n	80036c6 <_vfprintf_r+0x11ae>
 8003de4:	469a      	mov	sl, r3
 8003de6:	f7ff bb37 	b.w	8003458 <_vfprintf_r+0xf40>
 8003dea:	2301      	movs	r3, #1
 8003dec:	9324      	str	r3, [sp, #144]	; 0x90
 8003dee:	4b65      	ldr	r3, [pc, #404]	; (8003f84 <_vfprintf_r+0x1a6c>)
 8003df0:	9309      	str	r3, [sp, #36]	; 0x24
 8003df2:	e4f7      	b.n	80037e4 <_vfprintf_r+0x12cc>
 8003df4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003df6:	4413      	add	r3, r2
 8003df8:	444b      	add	r3, r9
 8003dfa:	9309      	str	r3, [sp, #36]	; 0x24
 8003dfc:	2666      	movs	r6, #102	; 0x66
 8003dfe:	e6fb      	b.n	8003bf8 <_vfprintf_r+0x16e0>
 8003e00:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e02:	9309      	str	r3, [sp, #36]	; 0x24
 8003e04:	e694      	b.n	8003b30 <_vfprintf_r+0x1618>
 8003e06:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003e0a:	4664      	mov	r4, ip
 8003e0c:	4d5e      	ldr	r5, [pc, #376]	; (8003f88 <_vfprintf_r+0x1a70>)
 8003e0e:	e000      	b.n	8003e12 <_vfprintf_r+0x18fa>
 8003e10:	4614      	mov	r4, r2
 8003e12:	fba5 1203 	umull	r1, r2, r5, r3
 8003e16:	08d2      	lsrs	r2, r2, #3
 8003e18:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003e1c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003e20:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003e24:	4613      	mov	r3, r2
 8003e26:	2b09      	cmp	r3, #9
 8003e28:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003e2c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003e30:	dcee      	bgt.n	8003e10 <_vfprintf_r+0x18f8>
 8003e32:	3330      	adds	r3, #48	; 0x30
 8003e34:	3c02      	subs	r4, #2
 8003e36:	b2db      	uxtb	r3, r3
 8003e38:	45a4      	cmp	ip, r4
 8003e3a:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003e3e:	f240 8090 	bls.w	8003f62 <_vfprintf_r+0x1a4a>
 8003e42:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003e46:	4611      	mov	r1, r2
 8003e48:	e001      	b.n	8003e4e <_vfprintf_r+0x1936>
 8003e4a:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003e4e:	f804 3b01 	strb.w	r3, [r4], #1
 8003e52:	458c      	cmp	ip, r1
 8003e54:	d1f9      	bne.n	8003e4a <_vfprintf_r+0x1932>
 8003e56:	ab2a      	add	r3, sp, #168	; 0xa8
 8003e58:	1a9b      	subs	r3, r3, r2
 8003e5a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003e5e:	4413      	add	r3, r2
 8003e60:	f7ff bbe3 	b.w	800362a <_vfprintf_r+0x1112>
 8003e64:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003e66:	4f49      	ldr	r7, [pc, #292]	; (8003f8c <_vfprintf_r+0x1a74>)
 8003e68:	2b00      	cmp	r3, #0
 8003e6a:	bfb6      	itet	lt
 8003e6c:	222d      	movlt	r2, #45	; 0x2d
 8003e6e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003e72:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003e76:	4b46      	ldr	r3, [pc, #280]	; (8003f90 <_vfprintf_r+0x1a78>)
 8003e78:	f7fe bf02 	b.w	8002c80 <_vfprintf_r+0x768>
 8003e7c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003e80:	f7ff b8c9 	b.w	8003016 <_vfprintf_r+0xafe>
 8003e84:	aa28      	add	r2, sp, #160	; 0xa0
 8003e86:	ab25      	add	r3, sp, #148	; 0x94
 8003e88:	e9cd 3200 	strd	r3, r2, [sp]
 8003e8c:	2103      	movs	r1, #3
 8003e8e:	ab24      	add	r3, sp, #144	; 0x90
 8003e90:	464a      	mov	r2, r9
 8003e92:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e96:	9803      	ldr	r0, [sp, #12]
 8003e98:	f000 f9c6 	bl	8004228 <_dtoa_r>
 8003e9c:	464d      	mov	r5, r9
 8003e9e:	4607      	mov	r7, r0
 8003ea0:	2e46      	cmp	r6, #70	; 0x46
 8003ea2:	eb07 0405 	add.w	r4, r7, r5
 8003ea6:	f43f af67 	beq.w	8003d78 <_vfprintf_r+0x1860>
 8003eaa:	e76b      	b.n	8003d84 <_vfprintf_r+0x186c>
 8003eac:	f1b9 0f00 	cmp.w	r9, #0
 8003eb0:	d131      	bne.n	8003f16 <_vfprintf_r+0x19fe>
 8003eb2:	07c5      	lsls	r5, r0, #31
 8003eb4:	d42f      	bmi.n	8003f16 <_vfprintf_r+0x19fe>
 8003eb6:	2301      	movs	r3, #1
 8003eb8:	9304      	str	r3, [sp, #16]
 8003eba:	9309      	str	r3, [sp, #36]	; 0x24
 8003ebc:	2666      	movs	r6, #102	; 0x66
 8003ebe:	e642      	b.n	8003b46 <_vfprintf_r+0x162e>
 8003ec0:	07c3      	lsls	r3, r0, #31
 8003ec2:	f57f abbf 	bpl.w	8003644 <_vfprintf_r+0x112c>
 8003ec6:	f7ff bbb9 	b.w	800363c <_vfprintf_r+0x1124>
 8003eca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003ecc:	f1c3 0301 	rsb	r3, r3, #1
 8003ed0:	441a      	add	r2, r3
 8003ed2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 8003ed6:	9209      	str	r2, [sp, #36]	; 0x24
 8003ed8:	9304      	str	r3, [sp, #16]
 8003eda:	2667      	movs	r6, #103	; 0x67
 8003edc:	e633      	b.n	8003b46 <_vfprintf_r+0x162e>
 8003ede:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003ee2:	f04f 0901 	mov.w	r9, #1
 8003ee6:	e457      	b.n	8003798 <_vfprintf_r+0x1280>
 8003ee8:	465a      	mov	r2, fp
 8003eea:	e511      	b.n	8003910 <_vfprintf_r+0x13f8>
 8003eec:	2e47      	cmp	r6, #71	; 0x47
 8003eee:	f47f af5e 	bne.w	8003dae <_vfprintf_r+0x1896>
 8003ef2:	f018 0f01 	tst.w	r8, #1
 8003ef6:	f43f ab61 	beq.w	80035bc <_vfprintf_r+0x10a4>
 8003efa:	e7d1      	b.n	8003ea0 <_vfprintf_r+0x1988>
 8003efc:	2200      	movs	r2, #0
 8003efe:	2300      	movs	r3, #0
 8003f00:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003f04:	f7fd f880 	bl	8001008 <__aeabi_dcmpeq>
 8003f08:	2800      	cmp	r0, #0
 8003f0a:	f47f af39 	bne.w	8003d80 <_vfprintf_r+0x1868>
 8003f0e:	f1c5 0501 	rsb	r5, r5, #1
 8003f12:	9524      	str	r5, [sp, #144]	; 0x90
 8003f14:	e735      	b.n	8003d82 <_vfprintf_r+0x186a>
 8003f16:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003f18:	3301      	adds	r3, #1
 8003f1a:	444b      	add	r3, r9
 8003f1c:	9309      	str	r3, [sp, #36]	; 0x24
 8003f1e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f22:	9304      	str	r3, [sp, #16]
 8003f24:	2666      	movs	r6, #102	; 0x66
 8003f26:	e60e      	b.n	8003b46 <_vfprintf_r+0x162e>
 8003f28:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003f2c:	f7ff bb7a 	b.w	8003624 <_vfprintf_r+0x110c>
 8003f30:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f32:	9907      	ldr	r1, [sp, #28]
 8003f34:	9803      	ldr	r0, [sp, #12]
 8003f36:	f002 fe1d 	bl	8006b74 <__sprint_r>
 8003f3a:	2800      	cmp	r0, #0
 8003f3c:	f47f a864 	bne.w	8003008 <_vfprintf_r+0xaf0>
 8003f40:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003f44:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f48:	f7ff bbbd 	b.w	80036c6 <_vfprintf_r+0x11ae>
 8003f4c:	9908      	ldr	r1, [sp, #32]
 8003f4e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8003f52:	680b      	ldr	r3, [r1, #0]
 8003f54:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8003f58:	1d0b      	adds	r3, r1, #4
 8003f5a:	4692      	mov	sl, r2
 8003f5c:	9308      	str	r3, [sp, #32]
 8003f5e:	f7fe bb59 	b.w	8002614 <_vfprintf_r+0xfc>
 8003f62:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8003f66:	f7ff bb60 	b.w	800362a <_vfprintf_r+0x1112>
 8003f6a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003f6e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003f72:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8003f76:	f8a9 300c 	strh.w	r3, [r9, #12]
 8003f7a:	f7ff b84c 	b.w	8003016 <_vfprintf_r+0xafe>
 8003f7e:	bf00      	nop
 8003f80:	08007264 	.word	0x08007264
 8003f84:	08007234 	.word	0x08007234
 8003f88:	cccccccd 	.word	0xcccccccd
 8003f8c:	0800721c 	.word	0x0800721c
 8003f90:	08007218 	.word	0x08007218

08003f94 <__sbprintf>:
 8003f94:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8003f98:	460c      	mov	r4, r1
 8003f9a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 8003f9e:	8989      	ldrh	r1, [r1, #12]
 8003fa0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8003fa2:	89e5      	ldrh	r5, [r4, #14]
 8003fa4:	9619      	str	r6, [sp, #100]	; 0x64
 8003fa6:	f021 0102 	bic.w	r1, r1, #2
 8003faa:	4606      	mov	r6, r0
 8003fac:	69e0      	ldr	r0, [r4, #28]
 8003fae:	f8ad 100c 	strh.w	r1, [sp, #12]
 8003fb2:	4617      	mov	r7, r2
 8003fb4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8003fb8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8003fba:	f8ad 500e 	strh.w	r5, [sp, #14]
 8003fbe:	4698      	mov	r8, r3
 8003fc0:	ad1a      	add	r5, sp, #104	; 0x68
 8003fc2:	2300      	movs	r3, #0
 8003fc4:	9007      	str	r0, [sp, #28]
 8003fc6:	a816      	add	r0, sp, #88	; 0x58
 8003fc8:	9209      	str	r2, [sp, #36]	; 0x24
 8003fca:	9306      	str	r3, [sp, #24]
 8003fcc:	9500      	str	r5, [sp, #0]
 8003fce:	9504      	str	r5, [sp, #16]
 8003fd0:	9102      	str	r1, [sp, #8]
 8003fd2:	9105      	str	r1, [sp, #20]
 8003fd4:	f001 fc8a 	bl	80058ec <__retarget_lock_init_recursive>
 8003fd8:	4643      	mov	r3, r8
 8003fda:	463a      	mov	r2, r7
 8003fdc:	4669      	mov	r1, sp
 8003fde:	4630      	mov	r0, r6
 8003fe0:	f7fe fa9a 	bl	8002518 <_vfprintf_r>
 8003fe4:	1e05      	subs	r5, r0, #0
 8003fe6:	db07      	blt.n	8003ff8 <__sbprintf+0x64>
 8003fe8:	4630      	mov	r0, r6
 8003fea:	4669      	mov	r1, sp
 8003fec:	f001 f8d6 	bl	800519c <_fflush_r>
 8003ff0:	2800      	cmp	r0, #0
 8003ff2:	bf18      	it	ne
 8003ff4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8003ff8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8003ffc:	065b      	lsls	r3, r3, #25
 8003ffe:	d503      	bpl.n	8004008 <__sbprintf+0x74>
 8004000:	89a3      	ldrh	r3, [r4, #12]
 8004002:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004006:	81a3      	strh	r3, [r4, #12]
 8004008:	9816      	ldr	r0, [sp, #88]	; 0x58
 800400a:	f001 fc71 	bl	80058f0 <__retarget_lock_close_recursive>
 800400e:	4628      	mov	r0, r5
 8004010:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004014:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004018 <__swsetup_r>:
 8004018:	b538      	push	{r3, r4, r5, lr}
 800401a:	4b31      	ldr	r3, [pc, #196]	; (80040e0 <__swsetup_r+0xc8>)
 800401c:	681b      	ldr	r3, [r3, #0]
 800401e:	4605      	mov	r5, r0
 8004020:	460c      	mov	r4, r1
 8004022:	b113      	cbz	r3, 800402a <__swsetup_r+0x12>
 8004024:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004026:	2a00      	cmp	r2, #0
 8004028:	d03a      	beq.n	80040a0 <__swsetup_r+0x88>
 800402a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800402e:	b293      	uxth	r3, r2
 8004030:	0718      	lsls	r0, r3, #28
 8004032:	d50c      	bpl.n	800404e <__swsetup_r+0x36>
 8004034:	6920      	ldr	r0, [r4, #16]
 8004036:	b1a8      	cbz	r0, 8004064 <__swsetup_r+0x4c>
 8004038:	f013 0201 	ands.w	r2, r3, #1
 800403c:	d020      	beq.n	8004080 <__swsetup_r+0x68>
 800403e:	6963      	ldr	r3, [r4, #20]
 8004040:	2200      	movs	r2, #0
 8004042:	425b      	negs	r3, r3
 8004044:	61a3      	str	r3, [r4, #24]
 8004046:	60a2      	str	r2, [r4, #8]
 8004048:	b300      	cbz	r0, 800408c <__swsetup_r+0x74>
 800404a:	2000      	movs	r0, #0
 800404c:	bd38      	pop	{r3, r4, r5, pc}
 800404e:	06d9      	lsls	r1, r3, #27
 8004050:	d53e      	bpl.n	80040d0 <__swsetup_r+0xb8>
 8004052:	0758      	lsls	r0, r3, #29
 8004054:	d428      	bmi.n	80040a8 <__swsetup_r+0x90>
 8004056:	6920      	ldr	r0, [r4, #16]
 8004058:	f042 0308 	orr.w	r3, r2, #8
 800405c:	81a3      	strh	r3, [r4, #12]
 800405e:	b29b      	uxth	r3, r3
 8004060:	2800      	cmp	r0, #0
 8004062:	d1e9      	bne.n	8004038 <__swsetup_r+0x20>
 8004064:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004068:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800406c:	d0e4      	beq.n	8004038 <__swsetup_r+0x20>
 800406e:	4628      	mov	r0, r5
 8004070:	4621      	mov	r1, r4
 8004072:	f001 fc71 	bl	8005958 <__smakebuf_r>
 8004076:	89a3      	ldrh	r3, [r4, #12]
 8004078:	6920      	ldr	r0, [r4, #16]
 800407a:	f013 0201 	ands.w	r2, r3, #1
 800407e:	d1de      	bne.n	800403e <__swsetup_r+0x26>
 8004080:	0799      	lsls	r1, r3, #30
 8004082:	bf58      	it	pl
 8004084:	6962      	ldrpl	r2, [r4, #20]
 8004086:	60a2      	str	r2, [r4, #8]
 8004088:	2800      	cmp	r0, #0
 800408a:	d1de      	bne.n	800404a <__swsetup_r+0x32>
 800408c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004090:	061a      	lsls	r2, r3, #24
 8004092:	d5db      	bpl.n	800404c <__swsetup_r+0x34>
 8004094:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004098:	81a3      	strh	r3, [r4, #12]
 800409a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800409e:	bd38      	pop	{r3, r4, r5, pc}
 80040a0:	4618      	mov	r0, r3
 80040a2:	f001 f8d7 	bl	8005254 <__sinit>
 80040a6:	e7c0      	b.n	800402a <__swsetup_r+0x12>
 80040a8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80040aa:	b151      	cbz	r1, 80040c2 <__swsetup_r+0xaa>
 80040ac:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80040b0:	4299      	cmp	r1, r3
 80040b2:	d004      	beq.n	80040be <__swsetup_r+0xa6>
 80040b4:	4628      	mov	r0, r5
 80040b6:	f001 f96f 	bl	8005398 <_free_r>
 80040ba:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80040be:	2300      	movs	r3, #0
 80040c0:	6323      	str	r3, [r4, #48]	; 0x30
 80040c2:	2300      	movs	r3, #0
 80040c4:	6920      	ldr	r0, [r4, #16]
 80040c6:	6063      	str	r3, [r4, #4]
 80040c8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80040cc:	6020      	str	r0, [r4, #0]
 80040ce:	e7c3      	b.n	8004058 <__swsetup_r+0x40>
 80040d0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80040d4:	2309      	movs	r3, #9
 80040d6:	602b      	str	r3, [r5, #0]
 80040d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80040dc:	81a2      	strh	r2, [r4, #12]
 80040de:	bd38      	pop	{r3, r4, r5, pc}
 80040e0:	20000018 	.word	0x20000018

080040e4 <register_fini>:
 80040e4:	4b02      	ldr	r3, [pc, #8]	; (80040f0 <register_fini+0xc>)
 80040e6:	b113      	cbz	r3, 80040ee <register_fini+0xa>
 80040e8:	4802      	ldr	r0, [pc, #8]	; (80040f4 <register_fini+0x10>)
 80040ea:	f000 b805 	b.w	80040f8 <atexit>
 80040ee:	4770      	bx	lr
 80040f0:	00000000 	.word	0x00000000
 80040f4:	080052c5 	.word	0x080052c5

080040f8 <atexit>:
 80040f8:	2300      	movs	r3, #0
 80040fa:	4601      	mov	r1, r0
 80040fc:	461a      	mov	r2, r3
 80040fe:	4618      	mov	r0, r3
 8004100:	f002 bd58 	b.w	8006bb4 <__register_exitproc>

08004104 <quorem>:
 8004104:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004108:	6903      	ldr	r3, [r0, #16]
 800410a:	690f      	ldr	r7, [r1, #16]
 800410c:	42bb      	cmp	r3, r7
 800410e:	b083      	sub	sp, #12
 8004110:	f2c0 8086 	blt.w	8004220 <quorem+0x11c>
 8004114:	3f01      	subs	r7, #1
 8004116:	f101 0914 	add.w	r9, r1, #20
 800411a:	f100 0a14 	add.w	sl, r0, #20
 800411e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004122:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004126:	00bc      	lsls	r4, r7, #2
 8004128:	3201      	adds	r2, #1
 800412a:	fbb3 f8f2 	udiv	r8, r3, r2
 800412e:	eb0a 0304 	add.w	r3, sl, r4
 8004132:	9400      	str	r4, [sp, #0]
 8004134:	eb09 0b04 	add.w	fp, r9, r4
 8004138:	9301      	str	r3, [sp, #4]
 800413a:	f1b8 0f00 	cmp.w	r8, #0
 800413e:	d038      	beq.n	80041b2 <quorem+0xae>
 8004140:	2500      	movs	r5, #0
 8004142:	462e      	mov	r6, r5
 8004144:	46ce      	mov	lr, r9
 8004146:	46d4      	mov	ip, sl
 8004148:	f85e 4b04 	ldr.w	r4, [lr], #4
 800414c:	f8dc 3000 	ldr.w	r3, [ip]
 8004150:	b2a2      	uxth	r2, r4
 8004152:	fb08 5502 	mla	r5, r8, r2, r5
 8004156:	0c22      	lsrs	r2, r4, #16
 8004158:	0c2c      	lsrs	r4, r5, #16
 800415a:	fb08 4202 	mla	r2, r8, r2, r4
 800415e:	b2ad      	uxth	r5, r5
 8004160:	1b75      	subs	r5, r6, r5
 8004162:	b296      	uxth	r6, r2
 8004164:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004168:	fa15 f383 	uxtah	r3, r5, r3
 800416c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004170:	b29b      	uxth	r3, r3
 8004172:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004176:	45f3      	cmp	fp, lr
 8004178:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800417c:	f84c 3b04 	str.w	r3, [ip], #4
 8004180:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004184:	d2e0      	bcs.n	8004148 <quorem+0x44>
 8004186:	9b00      	ldr	r3, [sp, #0]
 8004188:	f85a 3003 	ldr.w	r3, [sl, r3]
 800418c:	b98b      	cbnz	r3, 80041b2 <quorem+0xae>
 800418e:	9a01      	ldr	r2, [sp, #4]
 8004190:	1f13      	subs	r3, r2, #4
 8004192:	459a      	cmp	sl, r3
 8004194:	d20c      	bcs.n	80041b0 <quorem+0xac>
 8004196:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800419a:	b94b      	cbnz	r3, 80041b0 <quorem+0xac>
 800419c:	f1a2 0308 	sub.w	r3, r2, #8
 80041a0:	e002      	b.n	80041a8 <quorem+0xa4>
 80041a2:	681a      	ldr	r2, [r3, #0]
 80041a4:	3b04      	subs	r3, #4
 80041a6:	b91a      	cbnz	r2, 80041b0 <quorem+0xac>
 80041a8:	459a      	cmp	sl, r3
 80041aa:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80041ae:	d3f8      	bcc.n	80041a2 <quorem+0x9e>
 80041b0:	6107      	str	r7, [r0, #16]
 80041b2:	4604      	mov	r4, r0
 80041b4:	f002 f944 	bl	8006440 <__mcmp>
 80041b8:	2800      	cmp	r0, #0
 80041ba:	db2d      	blt.n	8004218 <quorem+0x114>
 80041bc:	f108 0801 	add.w	r8, r8, #1
 80041c0:	4655      	mov	r5, sl
 80041c2:	2300      	movs	r3, #0
 80041c4:	f859 1b04 	ldr.w	r1, [r9], #4
 80041c8:	6828      	ldr	r0, [r5, #0]
 80041ca:	b28a      	uxth	r2, r1
 80041cc:	1a9a      	subs	r2, r3, r2
 80041ce:	0c0b      	lsrs	r3, r1, #16
 80041d0:	fa12 f280 	uxtah	r2, r2, r0
 80041d4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80041d8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80041dc:	b292      	uxth	r2, r2
 80041de:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80041e2:	45cb      	cmp	fp, r9
 80041e4:	f845 2b04 	str.w	r2, [r5], #4
 80041e8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80041ec:	d2ea      	bcs.n	80041c4 <quorem+0xc0>
 80041ee:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80041f2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80041f6:	b97a      	cbnz	r2, 8004218 <quorem+0x114>
 80041f8:	1f1a      	subs	r2, r3, #4
 80041fa:	4592      	cmp	sl, r2
 80041fc:	d20b      	bcs.n	8004216 <quorem+0x112>
 80041fe:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004202:	b942      	cbnz	r2, 8004216 <quorem+0x112>
 8004204:	3b08      	subs	r3, #8
 8004206:	e002      	b.n	800420e <quorem+0x10a>
 8004208:	681a      	ldr	r2, [r3, #0]
 800420a:	3b04      	subs	r3, #4
 800420c:	b91a      	cbnz	r2, 8004216 <quorem+0x112>
 800420e:	459a      	cmp	sl, r3
 8004210:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004214:	d3f8      	bcc.n	8004208 <quorem+0x104>
 8004216:	6127      	str	r7, [r4, #16]
 8004218:	4640      	mov	r0, r8
 800421a:	b003      	add	sp, #12
 800421c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004220:	2000      	movs	r0, #0
 8004222:	b003      	add	sp, #12
 8004224:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004228 <_dtoa_r>:
 8004228:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800422c:	ec55 4b10 	vmov	r4, r5, d0
 8004230:	b09b      	sub	sp, #108	; 0x6c
 8004232:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004234:	9102      	str	r1, [sp, #8]
 8004236:	4681      	mov	r9, r0
 8004238:	9207      	str	r2, [sp, #28]
 800423a:	9305      	str	r3, [sp, #20]
 800423c:	e9cd 4500 	strd	r4, r5, [sp]
 8004240:	b156      	cbz	r6, 8004258 <_dtoa_r+0x30>
 8004242:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004244:	6072      	str	r2, [r6, #4]
 8004246:	2301      	movs	r3, #1
 8004248:	4093      	lsls	r3, r2
 800424a:	60b3      	str	r3, [r6, #8]
 800424c:	4631      	mov	r1, r6
 800424e:	f001 ff07 	bl	8006060 <_Bfree>
 8004252:	2300      	movs	r3, #0
 8004254:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004258:	f1b5 0800 	subs.w	r8, r5, #0
 800425c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800425e:	bfb4      	ite	lt
 8004260:	2301      	movlt	r3, #1
 8004262:	2300      	movge	r3, #0
 8004264:	6013      	str	r3, [r2, #0]
 8004266:	4b76      	ldr	r3, [pc, #472]	; (8004440 <_dtoa_r+0x218>)
 8004268:	bfbc      	itt	lt
 800426a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800426e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004272:	ea33 0308 	bics.w	r3, r3, r8
 8004276:	f000 80a6 	beq.w	80043c6 <_dtoa_r+0x19e>
 800427a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800427e:	2200      	movs	r2, #0
 8004280:	2300      	movs	r3, #0
 8004282:	4630      	mov	r0, r6
 8004284:	4639      	mov	r1, r7
 8004286:	f7fc febf 	bl	8001008 <__aeabi_dcmpeq>
 800428a:	4605      	mov	r5, r0
 800428c:	b178      	cbz	r0, 80042ae <_dtoa_r+0x86>
 800428e:	9a05      	ldr	r2, [sp, #20]
 8004290:	2301      	movs	r3, #1
 8004292:	6013      	str	r3, [r2, #0]
 8004294:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004296:	2b00      	cmp	r3, #0
 8004298:	f000 80c0 	beq.w	800441c <_dtoa_r+0x1f4>
 800429c:	4b69      	ldr	r3, [pc, #420]	; (8004444 <_dtoa_r+0x21c>)
 800429e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80042a0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80042a4:	6013      	str	r3, [r2, #0]
 80042a6:	4658      	mov	r0, fp
 80042a8:	b01b      	add	sp, #108	; 0x6c
 80042aa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80042ae:	aa18      	add	r2, sp, #96	; 0x60
 80042b0:	a919      	add	r1, sp, #100	; 0x64
 80042b2:	ec47 6b10 	vmov	d0, r6, r7
 80042b6:	4648      	mov	r0, r9
 80042b8:	f002 f954 	bl	8006564 <__d2b>
 80042bc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80042c0:	4682      	mov	sl, r0
 80042c2:	f040 80a0 	bne.w	8004406 <_dtoa_r+0x1de>
 80042c6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80042ca:	442c      	add	r4, r5
 80042cc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80042d0:	2b20      	cmp	r3, #32
 80042d2:	f340 842c 	ble.w	8004b2e <_dtoa_r+0x906>
 80042d6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80042da:	fa08 f803 	lsl.w	r8, r8, r3
 80042de:	9b00      	ldr	r3, [sp, #0]
 80042e0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80042e4:	fa23 f000 	lsr.w	r0, r3, r0
 80042e8:	ea48 0000 	orr.w	r0, r8, r0
 80042ec:	f7fc fbaa 	bl	8000a44 <__aeabi_ui2d>
 80042f0:	2301      	movs	r3, #1
 80042f2:	4606      	mov	r6, r0
 80042f4:	3c01      	subs	r4, #1
 80042f6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80042fa:	930f      	str	r3, [sp, #60]	; 0x3c
 80042fc:	4630      	mov	r0, r6
 80042fe:	4639      	mov	r1, r7
 8004300:	2200      	movs	r2, #0
 8004302:	4b51      	ldr	r3, [pc, #324]	; (8004448 <_dtoa_r+0x220>)
 8004304:	f7fc fa60 	bl	80007c8 <__aeabi_dsub>
 8004308:	a347      	add	r3, pc, #284	; (adr r3, 8004428 <_dtoa_r+0x200>)
 800430a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800430e:	f7fc fc13 	bl	8000b38 <__aeabi_dmul>
 8004312:	a347      	add	r3, pc, #284	; (adr r3, 8004430 <_dtoa_r+0x208>)
 8004314:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004318:	f7fc fa58 	bl	80007cc <__adddf3>
 800431c:	4606      	mov	r6, r0
 800431e:	4620      	mov	r0, r4
 8004320:	460f      	mov	r7, r1
 8004322:	f7fc fb9f 	bl	8000a64 <__aeabi_i2d>
 8004326:	a344      	add	r3, pc, #272	; (adr r3, 8004438 <_dtoa_r+0x210>)
 8004328:	e9d3 2300 	ldrd	r2, r3, [r3]
 800432c:	f7fc fc04 	bl	8000b38 <__aeabi_dmul>
 8004330:	4602      	mov	r2, r0
 8004332:	460b      	mov	r3, r1
 8004334:	4630      	mov	r0, r6
 8004336:	4639      	mov	r1, r7
 8004338:	f7fc fa48 	bl	80007cc <__adddf3>
 800433c:	4606      	mov	r6, r0
 800433e:	460f      	mov	r7, r1
 8004340:	f7fc feaa 	bl	8001098 <__aeabi_d2iz>
 8004344:	2200      	movs	r2, #0
 8004346:	9006      	str	r0, [sp, #24]
 8004348:	2300      	movs	r3, #0
 800434a:	4630      	mov	r0, r6
 800434c:	4639      	mov	r1, r7
 800434e:	f7fc fe65 	bl	800101c <__aeabi_dcmplt>
 8004352:	2800      	cmp	r0, #0
 8004354:	f040 8273 	bne.w	800483e <_dtoa_r+0x616>
 8004358:	9e06      	ldr	r6, [sp, #24]
 800435a:	2e16      	cmp	r6, #22
 800435c:	f200 825d 	bhi.w	800481a <_dtoa_r+0x5f2>
 8004360:	4b3a      	ldr	r3, [pc, #232]	; (800444c <_dtoa_r+0x224>)
 8004362:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004366:	e9d3 0100 	ldrd	r0, r1, [r3]
 800436a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800436e:	f7fc fe73 	bl	8001058 <__aeabi_dcmpgt>
 8004372:	2800      	cmp	r0, #0
 8004374:	f000 83d7 	beq.w	8004b26 <_dtoa_r+0x8fe>
 8004378:	1e73      	subs	r3, r6, #1
 800437a:	9306      	str	r3, [sp, #24]
 800437c:	2300      	movs	r3, #0
 800437e:	930d      	str	r3, [sp, #52]	; 0x34
 8004380:	1b2c      	subs	r4, r5, r4
 8004382:	f1b4 0801 	subs.w	r8, r4, #1
 8004386:	f100 8254 	bmi.w	8004832 <_dtoa_r+0x60a>
 800438a:	2300      	movs	r3, #0
 800438c:	9308      	str	r3, [sp, #32]
 800438e:	9b06      	ldr	r3, [sp, #24]
 8004390:	2b00      	cmp	r3, #0
 8004392:	f2c0 8245 	blt.w	8004820 <_dtoa_r+0x5f8>
 8004396:	4498      	add	r8, r3
 8004398:	930c      	str	r3, [sp, #48]	; 0x30
 800439a:	2300      	movs	r3, #0
 800439c:	930b      	str	r3, [sp, #44]	; 0x2c
 800439e:	9b02      	ldr	r3, [sp, #8]
 80043a0:	2b09      	cmp	r3, #9
 80043a2:	d85b      	bhi.n	800445c <_dtoa_r+0x234>
 80043a4:	2b05      	cmp	r3, #5
 80043a6:	f340 83c0 	ble.w	8004b2a <_dtoa_r+0x902>
 80043aa:	3b04      	subs	r3, #4
 80043ac:	9302      	str	r3, [sp, #8]
 80043ae:	2500      	movs	r5, #0
 80043b0:	9b02      	ldr	r3, [sp, #8]
 80043b2:	3b02      	subs	r3, #2
 80043b4:	2b03      	cmp	r3, #3
 80043b6:	f200 8498 	bhi.w	8004cea <_dtoa_r+0xac2>
 80043ba:	e8df f013 	tbh	[pc, r3, lsl #1]
 80043be:	03df      	.short	0x03df
 80043c0:	03e803bf 	.word	0x03e803bf
 80043c4:	04f5      	.short	0x04f5
 80043c6:	9a05      	ldr	r2, [sp, #20]
 80043c8:	f242 730f 	movw	r3, #9999	; 0x270f
 80043cc:	6013      	str	r3, [r2, #0]
 80043ce:	9b00      	ldr	r3, [sp, #0]
 80043d0:	b983      	cbnz	r3, 80043f4 <_dtoa_r+0x1cc>
 80043d2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80043d6:	b96b      	cbnz	r3, 80043f4 <_dtoa_r+0x1cc>
 80043d8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80043da:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004450 <_dtoa_r+0x228>
 80043de:	2b00      	cmp	r3, #0
 80043e0:	f43f af61 	beq.w	80042a6 <_dtoa_r+0x7e>
 80043e4:	f10b 0308 	add.w	r3, fp, #8
 80043e8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80043ea:	4658      	mov	r0, fp
 80043ec:	6013      	str	r3, [r2, #0]
 80043ee:	b01b      	add	sp, #108	; 0x6c
 80043f0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80043f4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80043f6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004454 <_dtoa_r+0x22c>
 80043fa:	2b00      	cmp	r3, #0
 80043fc:	f43f af53 	beq.w	80042a6 <_dtoa_r+0x7e>
 8004400:	f10b 0303 	add.w	r3, fp, #3
 8004404:	e7f0      	b.n	80043e8 <_dtoa_r+0x1c0>
 8004406:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800440a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800440e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004410:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004414:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004418:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800441a:	e76f      	b.n	80042fc <_dtoa_r+0xd4>
 800441c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004458 <_dtoa_r+0x230>
 8004420:	4658      	mov	r0, fp
 8004422:	b01b      	add	sp, #108	; 0x6c
 8004424:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004428:	636f4361 	.word	0x636f4361
 800442c:	3fd287a7 	.word	0x3fd287a7
 8004430:	8b60c8b3 	.word	0x8b60c8b3
 8004434:	3fc68a28 	.word	0x3fc68a28
 8004438:	509f79fb 	.word	0x509f79fb
 800443c:	3fd34413 	.word	0x3fd34413
 8004440:	7ff00000 	.word	0x7ff00000
 8004444:	08007251 	.word	0x08007251
 8004448:	3ff80000 	.word	0x3ff80000
 800444c:	080072b0 	.word	0x080072b0
 8004450:	08007274 	.word	0x08007274
 8004454:	08007280 	.word	0x08007280
 8004458:	08007250 	.word	0x08007250
 800445c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004460:	2501      	movs	r5, #1
 8004462:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004466:	2300      	movs	r3, #0
 8004468:	9302      	str	r3, [sp, #8]
 800446a:	9307      	str	r3, [sp, #28]
 800446c:	2100      	movs	r1, #0
 800446e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004472:	940e      	str	r4, [sp, #56]	; 0x38
 8004474:	4648      	mov	r0, r9
 8004476:	f001 fdcd 	bl	8006014 <_Balloc>
 800447a:	2c0e      	cmp	r4, #14
 800447c:	4683      	mov	fp, r0
 800447e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004482:	f200 80fb 	bhi.w	800467c <_dtoa_r+0x454>
 8004486:	2d00      	cmp	r5, #0
 8004488:	f000 80f8 	beq.w	800467c <_dtoa_r+0x454>
 800448c:	ed9d 7b00 	vldr	d7, [sp]
 8004490:	9906      	ldr	r1, [sp, #24]
 8004492:	2900      	cmp	r1, #0
 8004494:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004498:	f340 83e5 	ble.w	8004c66 <_dtoa_r+0xa3e>
 800449c:	4b9d      	ldr	r3, [pc, #628]	; (8004714 <_dtoa_r+0x4ec>)
 800449e:	f001 020f 	and.w	r2, r1, #15
 80044a2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80044a6:	ed93 7b00 	vldr	d7, [r3]
 80044aa:	110c      	asrs	r4, r1, #4
 80044ac:	06e2      	lsls	r2, r4, #27
 80044ae:	ed8d 7b00 	vstr	d7, [sp]
 80044b2:	f140 849e 	bpl.w	8004df2 <_dtoa_r+0xbca>
 80044b6:	4b98      	ldr	r3, [pc, #608]	; (8004718 <_dtoa_r+0x4f0>)
 80044b8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80044bc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80044c0:	f7fc fc64 	bl	8000d8c <__aeabi_ddiv>
 80044c4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80044c8:	f004 040f 	and.w	r4, r4, #15
 80044cc:	2603      	movs	r6, #3
 80044ce:	b17c      	cbz	r4, 80044f0 <_dtoa_r+0x2c8>
 80044d0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80044d4:	4d90      	ldr	r5, [pc, #576]	; (8004718 <_dtoa_r+0x4f0>)
 80044d6:	07e3      	lsls	r3, r4, #31
 80044d8:	d504      	bpl.n	80044e4 <_dtoa_r+0x2bc>
 80044da:	e9d5 2300 	ldrd	r2, r3, [r5]
 80044de:	f7fc fb2b 	bl	8000b38 <__aeabi_dmul>
 80044e2:	3601      	adds	r6, #1
 80044e4:	1064      	asrs	r4, r4, #1
 80044e6:	f105 0508 	add.w	r5, r5, #8
 80044ea:	d1f4      	bne.n	80044d6 <_dtoa_r+0x2ae>
 80044ec:	e9cd 0100 	strd	r0, r1, [sp]
 80044f0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80044f4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80044f8:	f7fc fc48 	bl	8000d8c <__aeabi_ddiv>
 80044fc:	e9cd 0100 	strd	r0, r1, [sp]
 8004500:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004502:	b143      	cbz	r3, 8004516 <_dtoa_r+0x2ee>
 8004504:	2200      	movs	r2, #0
 8004506:	4b85      	ldr	r3, [pc, #532]	; (800471c <_dtoa_r+0x4f4>)
 8004508:	e9dd 0100 	ldrd	r0, r1, [sp]
 800450c:	f7fc fd86 	bl	800101c <__aeabi_dcmplt>
 8004510:	2800      	cmp	r0, #0
 8004512:	f040 84ff 	bne.w	8004f14 <_dtoa_r+0xcec>
 8004516:	4630      	mov	r0, r6
 8004518:	f7fc faa4 	bl	8000a64 <__aeabi_i2d>
 800451c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004520:	f7fc fb0a 	bl	8000b38 <__aeabi_dmul>
 8004524:	4b7e      	ldr	r3, [pc, #504]	; (8004720 <_dtoa_r+0x4f8>)
 8004526:	2200      	movs	r2, #0
 8004528:	f7fc f950 	bl	80007cc <__adddf3>
 800452c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800452e:	4606      	mov	r6, r0
 8004530:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004534:	2b00      	cmp	r3, #0
 8004536:	f000 841c 	beq.w	8004d72 <_dtoa_r+0xb4a>
 800453a:	9b06      	ldr	r3, [sp, #24]
 800453c:	9316      	str	r3, [sp, #88]	; 0x58
 800453e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004540:	9312      	str	r3, [sp, #72]	; 0x48
 8004542:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004546:	f7fc fda7 	bl	8001098 <__aeabi_d2iz>
 800454a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800454c:	4b71      	ldr	r3, [pc, #452]	; (8004714 <_dtoa_r+0x4ec>)
 800454e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004552:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004556:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800455a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800455e:	f7fc fa81 	bl	8000a64 <__aeabi_i2d>
 8004562:	460b      	mov	r3, r1
 8004564:	4602      	mov	r2, r0
 8004566:	e9dd 0100 	ldrd	r0, r1, [sp]
 800456a:	e9cd 6700 	strd	r6, r7, [sp]
 800456e:	f7fc f92b 	bl	80007c8 <__aeabi_dsub>
 8004572:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004574:	b2ed      	uxtb	r5, r5
 8004576:	4606      	mov	r6, r0
 8004578:	460f      	mov	r7, r1
 800457a:	f10b 0401 	add.w	r4, fp, #1
 800457e:	2b00      	cmp	r3, #0
 8004580:	f000 8458 	beq.w	8004e34 <_dtoa_r+0xc0c>
 8004584:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004588:	2000      	movs	r0, #0
 800458a:	4966      	ldr	r1, [pc, #408]	; (8004724 <_dtoa_r+0x4fc>)
 800458c:	f7fc fbfe 	bl	8000d8c <__aeabi_ddiv>
 8004590:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004594:	f7fc f918 	bl	80007c8 <__aeabi_dsub>
 8004598:	f88b 5000 	strb.w	r5, [fp]
 800459c:	4632      	mov	r2, r6
 800459e:	463b      	mov	r3, r7
 80045a0:	e9cd 0100 	strd	r0, r1, [sp]
 80045a4:	f7fc fd58 	bl	8001058 <__aeabi_dcmpgt>
 80045a8:	2800      	cmp	r0, #0
 80045aa:	f040 8502 	bne.w	8004fb2 <_dtoa_r+0xd8a>
 80045ae:	4632      	mov	r2, r6
 80045b0:	463b      	mov	r3, r7
 80045b2:	2000      	movs	r0, #0
 80045b4:	4959      	ldr	r1, [pc, #356]	; (800471c <_dtoa_r+0x4f4>)
 80045b6:	f7fc f907 	bl	80007c8 <__aeabi_dsub>
 80045ba:	4602      	mov	r2, r0
 80045bc:	460b      	mov	r3, r1
 80045be:	e9dd 0100 	ldrd	r0, r1, [sp]
 80045c2:	f7fc fd49 	bl	8001058 <__aeabi_dcmpgt>
 80045c6:	2800      	cmp	r0, #0
 80045c8:	f040 84fb 	bne.w	8004fc2 <_dtoa_r+0xd9a>
 80045cc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80045ce:	2a01      	cmp	r2, #1
 80045d0:	d050      	beq.n	8004674 <_dtoa_r+0x44c>
 80045d2:	445a      	add	r2, fp
 80045d4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80045d8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80045dc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80045e0:	4692      	mov	sl, r2
 80045e2:	46cb      	mov	fp, r9
 80045e4:	e9dd 8900 	ldrd	r8, r9, [sp]
 80045e8:	e00c      	b.n	8004604 <_dtoa_r+0x3dc>
 80045ea:	2000      	movs	r0, #0
 80045ec:	494b      	ldr	r1, [pc, #300]	; (800471c <_dtoa_r+0x4f4>)
 80045ee:	f7fc f8eb 	bl	80007c8 <__aeabi_dsub>
 80045f2:	4642      	mov	r2, r8
 80045f4:	464b      	mov	r3, r9
 80045f6:	f7fc fd11 	bl	800101c <__aeabi_dcmplt>
 80045fa:	2800      	cmp	r0, #0
 80045fc:	f040 84dc 	bne.w	8004fb8 <_dtoa_r+0xd90>
 8004600:	4554      	cmp	r4, sl
 8004602:	d030      	beq.n	8004666 <_dtoa_r+0x43e>
 8004604:	4640      	mov	r0, r8
 8004606:	4649      	mov	r1, r9
 8004608:	2200      	movs	r2, #0
 800460a:	4b47      	ldr	r3, [pc, #284]	; (8004728 <_dtoa_r+0x500>)
 800460c:	f7fc fa94 	bl	8000b38 <__aeabi_dmul>
 8004610:	2200      	movs	r2, #0
 8004612:	4b45      	ldr	r3, [pc, #276]	; (8004728 <_dtoa_r+0x500>)
 8004614:	4680      	mov	r8, r0
 8004616:	4689      	mov	r9, r1
 8004618:	4630      	mov	r0, r6
 800461a:	4639      	mov	r1, r7
 800461c:	f7fc fa8c 	bl	8000b38 <__aeabi_dmul>
 8004620:	460f      	mov	r7, r1
 8004622:	4606      	mov	r6, r0
 8004624:	f7fc fd38 	bl	8001098 <__aeabi_d2iz>
 8004628:	4605      	mov	r5, r0
 800462a:	f7fc fa1b 	bl	8000a64 <__aeabi_i2d>
 800462e:	4602      	mov	r2, r0
 8004630:	460b      	mov	r3, r1
 8004632:	4630      	mov	r0, r6
 8004634:	4639      	mov	r1, r7
 8004636:	f7fc f8c7 	bl	80007c8 <__aeabi_dsub>
 800463a:	3530      	adds	r5, #48	; 0x30
 800463c:	b2ed      	uxtb	r5, r5
 800463e:	4642      	mov	r2, r8
 8004640:	464b      	mov	r3, r9
 8004642:	f804 5b01 	strb.w	r5, [r4], #1
 8004646:	4606      	mov	r6, r0
 8004648:	460f      	mov	r7, r1
 800464a:	f7fc fce7 	bl	800101c <__aeabi_dcmplt>
 800464e:	4632      	mov	r2, r6
 8004650:	463b      	mov	r3, r7
 8004652:	2800      	cmp	r0, #0
 8004654:	d0c9      	beq.n	80045ea <_dtoa_r+0x3c2>
 8004656:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004658:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800465c:	9306      	str	r3, [sp, #24]
 800465e:	46d9      	mov	r9, fp
 8004660:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004664:	e236      	b.n	8004ad4 <_dtoa_r+0x8ac>
 8004666:	46d9      	mov	r9, fp
 8004668:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800466c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004670:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004674:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004678:	e9cd 3400 	strd	r3, r4, [sp]
 800467c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800467e:	2b00      	cmp	r3, #0
 8004680:	f2c0 80ae 	blt.w	80047e0 <_dtoa_r+0x5b8>
 8004684:	9a06      	ldr	r2, [sp, #24]
 8004686:	2a0e      	cmp	r2, #14
 8004688:	f300 80aa 	bgt.w	80047e0 <_dtoa_r+0x5b8>
 800468c:	4b21      	ldr	r3, [pc, #132]	; (8004714 <_dtoa_r+0x4ec>)
 800468e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004692:	ed93 7b00 	vldr	d7, [r3]
 8004696:	9b07      	ldr	r3, [sp, #28]
 8004698:	2b00      	cmp	r3, #0
 800469a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800469e:	f2c0 82be 	blt.w	8004c1e <_dtoa_r+0x9f6>
 80046a2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80046a6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046aa:	4630      	mov	r0, r6
 80046ac:	4639      	mov	r1, r7
 80046ae:	f7fc fb6d 	bl	8000d8c <__aeabi_ddiv>
 80046b2:	f7fc fcf1 	bl	8001098 <__aeabi_d2iz>
 80046b6:	4605      	mov	r5, r0
 80046b8:	f7fc f9d4 	bl	8000a64 <__aeabi_i2d>
 80046bc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80046c0:	f7fc fa3a 	bl	8000b38 <__aeabi_dmul>
 80046c4:	460b      	mov	r3, r1
 80046c6:	4602      	mov	r2, r0
 80046c8:	4639      	mov	r1, r7
 80046ca:	4630      	mov	r0, r6
 80046cc:	f7fc f87c 	bl	80007c8 <__aeabi_dsub>
 80046d0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80046d4:	f88b 3000 	strb.w	r3, [fp]
 80046d8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80046da:	2b01      	cmp	r3, #1
 80046dc:	4606      	mov	r6, r0
 80046de:	460f      	mov	r7, r1
 80046e0:	f10b 0401 	add.w	r4, fp, #1
 80046e4:	d053      	beq.n	800478e <_dtoa_r+0x566>
 80046e6:	2200      	movs	r2, #0
 80046e8:	4b0f      	ldr	r3, [pc, #60]	; (8004728 <_dtoa_r+0x500>)
 80046ea:	f7fc fa25 	bl	8000b38 <__aeabi_dmul>
 80046ee:	2200      	movs	r2, #0
 80046f0:	2300      	movs	r3, #0
 80046f2:	4606      	mov	r6, r0
 80046f4:	460f      	mov	r7, r1
 80046f6:	f7fc fc87 	bl	8001008 <__aeabi_dcmpeq>
 80046fa:	2800      	cmp	r0, #0
 80046fc:	f040 81ea 	bne.w	8004ad4 <_dtoa_r+0x8ac>
 8004700:	f8cd a000 	str.w	sl, [sp]
 8004704:	f8cd 901c 	str.w	r9, [sp, #28]
 8004708:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800470c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004710:	e017      	b.n	8004742 <_dtoa_r+0x51a>
 8004712:	bf00      	nop
 8004714:	080072b0 	.word	0x080072b0
 8004718:	08007288 	.word	0x08007288
 800471c:	3ff00000 	.word	0x3ff00000
 8004720:	401c0000 	.word	0x401c0000
 8004724:	3fe00000 	.word	0x3fe00000
 8004728:	40240000 	.word	0x40240000
 800472c:	f7fc fa04 	bl	8000b38 <__aeabi_dmul>
 8004730:	2200      	movs	r2, #0
 8004732:	2300      	movs	r3, #0
 8004734:	4606      	mov	r6, r0
 8004736:	460f      	mov	r7, r1
 8004738:	f7fc fc66 	bl	8001008 <__aeabi_dcmpeq>
 800473c:	2800      	cmp	r0, #0
 800473e:	f040 833d 	bne.w	8004dbc <_dtoa_r+0xb94>
 8004742:	464a      	mov	r2, r9
 8004744:	4653      	mov	r3, sl
 8004746:	4630      	mov	r0, r6
 8004748:	4639      	mov	r1, r7
 800474a:	f7fc fb1f 	bl	8000d8c <__aeabi_ddiv>
 800474e:	f7fc fca3 	bl	8001098 <__aeabi_d2iz>
 8004752:	4605      	mov	r5, r0
 8004754:	f7fc f986 	bl	8000a64 <__aeabi_i2d>
 8004758:	464a      	mov	r2, r9
 800475a:	4653      	mov	r3, sl
 800475c:	f7fc f9ec 	bl	8000b38 <__aeabi_dmul>
 8004760:	4602      	mov	r2, r0
 8004762:	460b      	mov	r3, r1
 8004764:	4630      	mov	r0, r6
 8004766:	4639      	mov	r1, r7
 8004768:	f7fc f82e 	bl	80007c8 <__aeabi_dsub>
 800476c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004770:	f804 cb01 	strb.w	ip, [r4], #1
 8004774:	eba4 0c0b 	sub.w	ip, r4, fp
 8004778:	45e0      	cmp	r8, ip
 800477a:	4606      	mov	r6, r0
 800477c:	460f      	mov	r7, r1
 800477e:	f04f 0200 	mov.w	r2, #0
 8004782:	4bc1      	ldr	r3, [pc, #772]	; (8004a88 <_dtoa_r+0x860>)
 8004784:	d1d2      	bne.n	800472c <_dtoa_r+0x504>
 8004786:	f8dd a000 	ldr.w	sl, [sp]
 800478a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800478e:	4632      	mov	r2, r6
 8004790:	463b      	mov	r3, r7
 8004792:	4630      	mov	r0, r6
 8004794:	4639      	mov	r1, r7
 8004796:	f7fc f819 	bl	80007cc <__adddf3>
 800479a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800479e:	4606      	mov	r6, r0
 80047a0:	460f      	mov	r7, r1
 80047a2:	f7fc fc59 	bl	8001058 <__aeabi_dcmpgt>
 80047a6:	b958      	cbnz	r0, 80047c0 <_dtoa_r+0x598>
 80047a8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80047ac:	4630      	mov	r0, r6
 80047ae:	4639      	mov	r1, r7
 80047b0:	f7fc fc2a 	bl	8001008 <__aeabi_dcmpeq>
 80047b4:	2800      	cmp	r0, #0
 80047b6:	f000 818d 	beq.w	8004ad4 <_dtoa_r+0x8ac>
 80047ba:	07e9      	lsls	r1, r5, #31
 80047bc:	f140 818a 	bpl.w	8004ad4 <_dtoa_r+0x8ac>
 80047c0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80047c4:	e005      	b.n	80047d2 <_dtoa_r+0x5aa>
 80047c6:	459b      	cmp	fp, r3
 80047c8:	f000 8373 	beq.w	8004eb2 <_dtoa_r+0xc8a>
 80047cc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80047d0:	461c      	mov	r4, r3
 80047d2:	2d39      	cmp	r5, #57	; 0x39
 80047d4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80047d8:	d0f5      	beq.n	80047c6 <_dtoa_r+0x59e>
 80047da:	3501      	adds	r5, #1
 80047dc:	701d      	strb	r5, [r3, #0]
 80047de:	e179      	b.n	8004ad4 <_dtoa_r+0x8ac>
 80047e0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80047e2:	2a00      	cmp	r2, #0
 80047e4:	d03b      	beq.n	800485e <_dtoa_r+0x636>
 80047e6:	9a02      	ldr	r2, [sp, #8]
 80047e8:	2a01      	cmp	r2, #1
 80047ea:	f340 820b 	ble.w	8004c04 <_dtoa_r+0x9dc>
 80047ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047f0:	1e5f      	subs	r7, r3, #1
 80047f2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80047f4:	42bb      	cmp	r3, r7
 80047f6:	f2c0 82e6 	blt.w	8004dc6 <_dtoa_r+0xb9e>
 80047fa:	1bdf      	subs	r7, r3, r7
 80047fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80047fe:	2b00      	cmp	r3, #0
 8004800:	f2c0 830b 	blt.w	8004e1a <_dtoa_r+0xbf2>
 8004804:	9a08      	ldr	r2, [sp, #32]
 8004806:	4614      	mov	r4, r2
 8004808:	441a      	add	r2, r3
 800480a:	4498      	add	r8, r3
 800480c:	9208      	str	r2, [sp, #32]
 800480e:	2101      	movs	r1, #1
 8004810:	4648      	mov	r0, r9
 8004812:	f001 fcbf 	bl	8006194 <__i2b>
 8004816:	4605      	mov	r5, r0
 8004818:	e024      	b.n	8004864 <_dtoa_r+0x63c>
 800481a:	2301      	movs	r3, #1
 800481c:	930d      	str	r3, [sp, #52]	; 0x34
 800481e:	e5af      	b.n	8004380 <_dtoa_r+0x158>
 8004820:	9a08      	ldr	r2, [sp, #32]
 8004822:	9b06      	ldr	r3, [sp, #24]
 8004824:	1ad2      	subs	r2, r2, r3
 8004826:	425b      	negs	r3, r3
 8004828:	930b      	str	r3, [sp, #44]	; 0x2c
 800482a:	2300      	movs	r3, #0
 800482c:	9208      	str	r2, [sp, #32]
 800482e:	930c      	str	r3, [sp, #48]	; 0x30
 8004830:	e5b5      	b.n	800439e <_dtoa_r+0x176>
 8004832:	f1c4 0301 	rsb	r3, r4, #1
 8004836:	9308      	str	r3, [sp, #32]
 8004838:	f04f 0800 	mov.w	r8, #0
 800483c:	e5a7      	b.n	800438e <_dtoa_r+0x166>
 800483e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004842:	4640      	mov	r0, r8
 8004844:	f7fc f90e 	bl	8000a64 <__aeabi_i2d>
 8004848:	4632      	mov	r2, r6
 800484a:	463b      	mov	r3, r7
 800484c:	f7fc fbdc 	bl	8001008 <__aeabi_dcmpeq>
 8004850:	2800      	cmp	r0, #0
 8004852:	f47f ad81 	bne.w	8004358 <_dtoa_r+0x130>
 8004856:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800485a:	9306      	str	r3, [sp, #24]
 800485c:	e57c      	b.n	8004358 <_dtoa_r+0x130>
 800485e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004860:	9c08      	ldr	r4, [sp, #32]
 8004862:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004864:	2c00      	cmp	r4, #0
 8004866:	dd0c      	ble.n	8004882 <_dtoa_r+0x65a>
 8004868:	f1b8 0f00 	cmp.w	r8, #0
 800486c:	dd09      	ble.n	8004882 <_dtoa_r+0x65a>
 800486e:	4544      	cmp	r4, r8
 8004870:	9a08      	ldr	r2, [sp, #32]
 8004872:	4623      	mov	r3, r4
 8004874:	bfa8      	it	ge
 8004876:	4643      	movge	r3, r8
 8004878:	1ad2      	subs	r2, r2, r3
 800487a:	9208      	str	r2, [sp, #32]
 800487c:	1ae4      	subs	r4, r4, r3
 800487e:	eba8 0803 	sub.w	r8, r8, r3
 8004882:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004884:	b16b      	cbz	r3, 80048a2 <_dtoa_r+0x67a>
 8004886:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004888:	2a00      	cmp	r2, #0
 800488a:	f000 8290 	beq.w	8004dae <_dtoa_r+0xb86>
 800488e:	1bde      	subs	r6, r3, r7
 8004890:	2f00      	cmp	r7, #0
 8004892:	f040 819b 	bne.w	8004bcc <_dtoa_r+0x9a4>
 8004896:	4651      	mov	r1, sl
 8004898:	4632      	mov	r2, r6
 800489a:	4648      	mov	r0, r9
 800489c:	f001 fd2a 	bl	80062f4 <__pow5mult>
 80048a0:	4682      	mov	sl, r0
 80048a2:	2101      	movs	r1, #1
 80048a4:	4648      	mov	r0, r9
 80048a6:	f001 fc75 	bl	8006194 <__i2b>
 80048aa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80048ac:	4606      	mov	r6, r0
 80048ae:	2a00      	cmp	r2, #0
 80048b0:	f040 8125 	bne.w	8004afe <_dtoa_r+0x8d6>
 80048b4:	9b02      	ldr	r3, [sp, #8]
 80048b6:	2b01      	cmp	r3, #1
 80048b8:	f340 816c 	ble.w	8004b94 <_dtoa_r+0x96c>
 80048bc:	2001      	movs	r0, #1
 80048be:	4440      	add	r0, r8
 80048c0:	f010 001f 	ands.w	r0, r0, #31
 80048c4:	f000 8119 	beq.w	8004afa <_dtoa_r+0x8d2>
 80048c8:	f1c0 0320 	rsb	r3, r0, #32
 80048cc:	2b04      	cmp	r3, #4
 80048ce:	f340 83ac 	ble.w	800502a <_dtoa_r+0xe02>
 80048d2:	f1c0 001c 	rsb	r0, r0, #28
 80048d6:	9b08      	ldr	r3, [sp, #32]
 80048d8:	4403      	add	r3, r0
 80048da:	9308      	str	r3, [sp, #32]
 80048dc:	4404      	add	r4, r0
 80048de:	4480      	add	r8, r0
 80048e0:	9b08      	ldr	r3, [sp, #32]
 80048e2:	2b00      	cmp	r3, #0
 80048e4:	dd05      	ble.n	80048f2 <_dtoa_r+0x6ca>
 80048e6:	4651      	mov	r1, sl
 80048e8:	461a      	mov	r2, r3
 80048ea:	4648      	mov	r0, r9
 80048ec:	f001 fd52 	bl	8006394 <__lshift>
 80048f0:	4682      	mov	sl, r0
 80048f2:	f1b8 0f00 	cmp.w	r8, #0
 80048f6:	dd05      	ble.n	8004904 <_dtoa_r+0x6dc>
 80048f8:	4631      	mov	r1, r6
 80048fa:	4642      	mov	r2, r8
 80048fc:	4648      	mov	r0, r9
 80048fe:	f001 fd49 	bl	8006394 <__lshift>
 8004902:	4606      	mov	r6, r0
 8004904:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004906:	2b00      	cmp	r3, #0
 8004908:	d177      	bne.n	80049fa <_dtoa_r+0x7d2>
 800490a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800490c:	2b00      	cmp	r3, #0
 800490e:	f340 8209 	ble.w	8004d24 <_dtoa_r+0xafc>
 8004912:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004914:	2b00      	cmp	r3, #0
 8004916:	f000 8089 	beq.w	8004a2c <_dtoa_r+0x804>
 800491a:	2c00      	cmp	r4, #0
 800491c:	f300 816b 	bgt.w	8004bf6 <_dtoa_r+0x9ce>
 8004920:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004922:	2b00      	cmp	r3, #0
 8004924:	f040 81cd 	bne.w	8004cc2 <_dtoa_r+0xa9a>
 8004928:	46a8      	mov	r8, r5
 800492a:	9a00      	ldr	r2, [sp, #0]
 800492c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004930:	f002 0201 	and.w	r2, r2, #1
 8004934:	920a      	str	r2, [sp, #40]	; 0x28
 8004936:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004938:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800493c:	441a      	add	r2, r3
 800493e:	465f      	mov	r7, fp
 8004940:	9209      	str	r2, [sp, #36]	; 0x24
 8004942:	46b3      	mov	fp, r6
 8004944:	4659      	mov	r1, fp
 8004946:	4650      	mov	r0, sl
 8004948:	f7ff fbdc 	bl	8004104 <quorem>
 800494c:	4629      	mov	r1, r5
 800494e:	4604      	mov	r4, r0
 8004950:	4650      	mov	r0, sl
 8004952:	f001 fd75 	bl	8006440 <__mcmp>
 8004956:	4659      	mov	r1, fp
 8004958:	4606      	mov	r6, r0
 800495a:	4642      	mov	r2, r8
 800495c:	4648      	mov	r0, r9
 800495e:	f001 fd8b 	bl	8006478 <__mdiff>
 8004962:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004966:	9300      	str	r3, [sp, #0]
 8004968:	68c3      	ldr	r3, [r0, #12]
 800496a:	4601      	mov	r1, r0
 800496c:	2b00      	cmp	r3, #0
 800496e:	f040 81d4 	bne.w	8004d1a <_dtoa_r+0xaf2>
 8004972:	9008      	str	r0, [sp, #32]
 8004974:	4650      	mov	r0, sl
 8004976:	f001 fd63 	bl	8006440 <__mcmp>
 800497a:	9a08      	ldr	r2, [sp, #32]
 800497c:	9007      	str	r0, [sp, #28]
 800497e:	4611      	mov	r1, r2
 8004980:	4648      	mov	r0, r9
 8004982:	f001 fb6d 	bl	8006060 <_Bfree>
 8004986:	9b07      	ldr	r3, [sp, #28]
 8004988:	b933      	cbnz	r3, 8004998 <_dtoa_r+0x770>
 800498a:	9a02      	ldr	r2, [sp, #8]
 800498c:	b922      	cbnz	r2, 8004998 <_dtoa_r+0x770>
 800498e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004990:	2b00      	cmp	r3, #0
 8004992:	f000 8319 	beq.w	8004fc8 <_dtoa_r+0xda0>
 8004996:	9b02      	ldr	r3, [sp, #8]
 8004998:	2e00      	cmp	r6, #0
 800499a:	f2c0 821c 	blt.w	8004dd6 <_dtoa_r+0xbae>
 800499e:	d105      	bne.n	80049ac <_dtoa_r+0x784>
 80049a0:	9a02      	ldr	r2, [sp, #8]
 80049a2:	b91a      	cbnz	r2, 80049ac <_dtoa_r+0x784>
 80049a4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80049a6:	2a00      	cmp	r2, #0
 80049a8:	f000 8215 	beq.w	8004dd6 <_dtoa_r+0xbae>
 80049ac:	2b00      	cmp	r3, #0
 80049ae:	f107 0401 	add.w	r4, r7, #1
 80049b2:	f300 8225 	bgt.w	8004e00 <_dtoa_r+0xbd8>
 80049b6:	9b00      	ldr	r3, [sp, #0]
 80049b8:	703b      	strb	r3, [r7, #0]
 80049ba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049bc:	42bb      	cmp	r3, r7
 80049be:	f000 8230 	beq.w	8004e22 <_dtoa_r+0xbfa>
 80049c2:	4651      	mov	r1, sl
 80049c4:	2300      	movs	r3, #0
 80049c6:	220a      	movs	r2, #10
 80049c8:	4648      	mov	r0, r9
 80049ca:	f001 fb53 	bl	8006074 <__multadd>
 80049ce:	4545      	cmp	r5, r8
 80049d0:	4682      	mov	sl, r0
 80049d2:	4629      	mov	r1, r5
 80049d4:	f04f 0300 	mov.w	r3, #0
 80049d8:	f04f 020a 	mov.w	r2, #10
 80049dc:	4648      	mov	r0, r9
 80049de:	f000 8196 	beq.w	8004d0e <_dtoa_r+0xae6>
 80049e2:	f001 fb47 	bl	8006074 <__multadd>
 80049e6:	4641      	mov	r1, r8
 80049e8:	4605      	mov	r5, r0
 80049ea:	2300      	movs	r3, #0
 80049ec:	220a      	movs	r2, #10
 80049ee:	4648      	mov	r0, r9
 80049f0:	f001 fb40 	bl	8006074 <__multadd>
 80049f4:	4627      	mov	r7, r4
 80049f6:	4680      	mov	r8, r0
 80049f8:	e7a4      	b.n	8004944 <_dtoa_r+0x71c>
 80049fa:	4631      	mov	r1, r6
 80049fc:	4650      	mov	r0, sl
 80049fe:	f001 fd1f 	bl	8006440 <__mcmp>
 8004a02:	2800      	cmp	r0, #0
 8004a04:	da81      	bge.n	800490a <_dtoa_r+0x6e2>
 8004a06:	9f06      	ldr	r7, [sp, #24]
 8004a08:	4651      	mov	r1, sl
 8004a0a:	2300      	movs	r3, #0
 8004a0c:	220a      	movs	r2, #10
 8004a0e:	4648      	mov	r0, r9
 8004a10:	3f01      	subs	r7, #1
 8004a12:	9706      	str	r7, [sp, #24]
 8004a14:	f001 fb2e 	bl	8006074 <__multadd>
 8004a18:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a1a:	4682      	mov	sl, r0
 8004a1c:	2b00      	cmp	r3, #0
 8004a1e:	f040 82eb 	bne.w	8004ff8 <_dtoa_r+0xdd0>
 8004a22:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004a24:	2b00      	cmp	r3, #0
 8004a26:	f340 82f3 	ble.w	8005010 <_dtoa_r+0xde8>
 8004a2a:	9309      	str	r3, [sp, #36]	; 0x24
 8004a2c:	465c      	mov	r4, fp
 8004a2e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004a32:	e002      	b.n	8004a3a <_dtoa_r+0x812>
 8004a34:	f001 fb1e 	bl	8006074 <__multadd>
 8004a38:	4682      	mov	sl, r0
 8004a3a:	4631      	mov	r1, r6
 8004a3c:	4650      	mov	r0, sl
 8004a3e:	f7ff fb61 	bl	8004104 <quorem>
 8004a42:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004a46:	f804 7b01 	strb.w	r7, [r4], #1
 8004a4a:	eba4 030b 	sub.w	r3, r4, fp
 8004a4e:	4598      	cmp	r8, r3
 8004a50:	f04f 020a 	mov.w	r2, #10
 8004a54:	f04f 0300 	mov.w	r3, #0
 8004a58:	4651      	mov	r1, sl
 8004a5a:	4648      	mov	r0, r9
 8004a5c:	dcea      	bgt.n	8004a34 <_dtoa_r+0x80c>
 8004a5e:	2300      	movs	r3, #0
 8004a60:	9700      	str	r7, [sp, #0]
 8004a62:	9302      	str	r3, [sp, #8]
 8004a64:	4651      	mov	r1, sl
 8004a66:	2201      	movs	r2, #1
 8004a68:	4648      	mov	r0, r9
 8004a6a:	f001 fc93 	bl	8006394 <__lshift>
 8004a6e:	4631      	mov	r1, r6
 8004a70:	4682      	mov	sl, r0
 8004a72:	f001 fce5 	bl	8006440 <__mcmp>
 8004a76:	2800      	cmp	r0, #0
 8004a78:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004a7c:	dc14      	bgt.n	8004aa8 <_dtoa_r+0x880>
 8004a7e:	d108      	bne.n	8004a92 <_dtoa_r+0x86a>
 8004a80:	9b00      	ldr	r3, [sp, #0]
 8004a82:	07db      	lsls	r3, r3, #31
 8004a84:	d410      	bmi.n	8004aa8 <_dtoa_r+0x880>
 8004a86:	e004      	b.n	8004a92 <_dtoa_r+0x86a>
 8004a88:	40240000 	.word	0x40240000
 8004a8c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004a90:	461c      	mov	r4, r3
 8004a92:	2a30      	cmp	r2, #48	; 0x30
 8004a94:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004a98:	d0f8      	beq.n	8004a8c <_dtoa_r+0x864>
 8004a9a:	e00b      	b.n	8004ab4 <_dtoa_r+0x88c>
 8004a9c:	459b      	cmp	fp, r3
 8004a9e:	f000 814e 	beq.w	8004d3e <_dtoa_r+0xb16>
 8004aa2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004aa6:	461c      	mov	r4, r3
 8004aa8:	2a39      	cmp	r2, #57	; 0x39
 8004aaa:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004aae:	d0f5      	beq.n	8004a9c <_dtoa_r+0x874>
 8004ab0:	3201      	adds	r2, #1
 8004ab2:	701a      	strb	r2, [r3, #0]
 8004ab4:	4631      	mov	r1, r6
 8004ab6:	4648      	mov	r0, r9
 8004ab8:	f001 fad2 	bl	8006060 <_Bfree>
 8004abc:	b155      	cbz	r5, 8004ad4 <_dtoa_r+0x8ac>
 8004abe:	9902      	ldr	r1, [sp, #8]
 8004ac0:	b121      	cbz	r1, 8004acc <_dtoa_r+0x8a4>
 8004ac2:	42a9      	cmp	r1, r5
 8004ac4:	d002      	beq.n	8004acc <_dtoa_r+0x8a4>
 8004ac6:	4648      	mov	r0, r9
 8004ac8:	f001 faca 	bl	8006060 <_Bfree>
 8004acc:	4629      	mov	r1, r5
 8004ace:	4648      	mov	r0, r9
 8004ad0:	f001 fac6 	bl	8006060 <_Bfree>
 8004ad4:	4651      	mov	r1, sl
 8004ad6:	4648      	mov	r0, r9
 8004ad8:	f001 fac2 	bl	8006060 <_Bfree>
 8004adc:	2200      	movs	r2, #0
 8004ade:	9b06      	ldr	r3, [sp, #24]
 8004ae0:	7022      	strb	r2, [r4, #0]
 8004ae2:	9a05      	ldr	r2, [sp, #20]
 8004ae4:	3301      	adds	r3, #1
 8004ae6:	6013      	str	r3, [r2, #0]
 8004ae8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004aea:	2b00      	cmp	r3, #0
 8004aec:	f43f abdb 	beq.w	80042a6 <_dtoa_r+0x7e>
 8004af0:	4658      	mov	r0, fp
 8004af2:	601c      	str	r4, [r3, #0]
 8004af4:	b01b      	add	sp, #108	; 0x6c
 8004af6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004afa:	201c      	movs	r0, #28
 8004afc:	e6eb      	b.n	80048d6 <_dtoa_r+0x6ae>
 8004afe:	4601      	mov	r1, r0
 8004b00:	4648      	mov	r0, r9
 8004b02:	f001 fbf7 	bl	80062f4 <__pow5mult>
 8004b06:	9b02      	ldr	r3, [sp, #8]
 8004b08:	2b01      	cmp	r3, #1
 8004b0a:	4606      	mov	r6, r0
 8004b0c:	f340 80d4 	ble.w	8004cb8 <_dtoa_r+0xa90>
 8004b10:	2300      	movs	r3, #0
 8004b12:	930c      	str	r3, [sp, #48]	; 0x30
 8004b14:	6933      	ldr	r3, [r6, #16]
 8004b16:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004b1a:	6918      	ldr	r0, [r3, #16]
 8004b1c:	f001 faea 	bl	80060f4 <__hi0bits>
 8004b20:	f1c0 0020 	rsb	r0, r0, #32
 8004b24:	e6cb      	b.n	80048be <_dtoa_r+0x696>
 8004b26:	900d      	str	r0, [sp, #52]	; 0x34
 8004b28:	e42a      	b.n	8004380 <_dtoa_r+0x158>
 8004b2a:	2501      	movs	r5, #1
 8004b2c:	e440      	b.n	80043b0 <_dtoa_r+0x188>
 8004b2e:	f1c3 0820 	rsb	r8, r3, #32
 8004b32:	9b00      	ldr	r3, [sp, #0]
 8004b34:	fa03 f008 	lsl.w	r0, r3, r8
 8004b38:	f7ff bbd8 	b.w	80042ec <_dtoa_r+0xc4>
 8004b3c:	2300      	movs	r3, #0
 8004b3e:	930a      	str	r3, [sp, #40]	; 0x28
 8004b40:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004b44:	4413      	add	r3, r2
 8004b46:	930e      	str	r3, [sp, #56]	; 0x38
 8004b48:	3301      	adds	r3, #1
 8004b4a:	2b01      	cmp	r3, #1
 8004b4c:	461e      	mov	r6, r3
 8004b4e:	9309      	str	r3, [sp, #36]	; 0x24
 8004b50:	bfb8      	it	lt
 8004b52:	2601      	movlt	r6, #1
 8004b54:	2100      	movs	r1, #0
 8004b56:	2e17      	cmp	r6, #23
 8004b58:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004b5c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004b5e:	f77f ac89 	ble.w	8004474 <_dtoa_r+0x24c>
 8004b62:	2201      	movs	r2, #1
 8004b64:	2304      	movs	r3, #4
 8004b66:	005b      	lsls	r3, r3, #1
 8004b68:	f103 0014 	add.w	r0, r3, #20
 8004b6c:	42b0      	cmp	r0, r6
 8004b6e:	4611      	mov	r1, r2
 8004b70:	f102 0201 	add.w	r2, r2, #1
 8004b74:	d9f7      	bls.n	8004b66 <_dtoa_r+0x93e>
 8004b76:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004b7a:	e47b      	b.n	8004474 <_dtoa_r+0x24c>
 8004b7c:	2300      	movs	r3, #0
 8004b7e:	930a      	str	r3, [sp, #40]	; 0x28
 8004b80:	9e07      	ldr	r6, [sp, #28]
 8004b82:	2e00      	cmp	r6, #0
 8004b84:	f340 80e2 	ble.w	8004d4c <_dtoa_r+0xb24>
 8004b88:	960e      	str	r6, [sp, #56]	; 0x38
 8004b8a:	9609      	str	r6, [sp, #36]	; 0x24
 8004b8c:	e7e2      	b.n	8004b54 <_dtoa_r+0x92c>
 8004b8e:	2301      	movs	r3, #1
 8004b90:	930a      	str	r3, [sp, #40]	; 0x28
 8004b92:	e7f5      	b.n	8004b80 <_dtoa_r+0x958>
 8004b94:	9b00      	ldr	r3, [sp, #0]
 8004b96:	2b00      	cmp	r3, #0
 8004b98:	f47f ae90 	bne.w	80048bc <_dtoa_r+0x694>
 8004b9c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004ba0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004ba4:	2b00      	cmp	r3, #0
 8004ba6:	f040 8192 	bne.w	8004ece <_dtoa_r+0xca6>
 8004baa:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004bae:	0d1b      	lsrs	r3, r3, #20
 8004bb0:	051b      	lsls	r3, r3, #20
 8004bb2:	b12b      	cbz	r3, 8004bc0 <_dtoa_r+0x998>
 8004bb4:	9b08      	ldr	r3, [sp, #32]
 8004bb6:	3301      	adds	r3, #1
 8004bb8:	9308      	str	r3, [sp, #32]
 8004bba:	f108 0801 	add.w	r8, r8, #1
 8004bbe:	2301      	movs	r3, #1
 8004bc0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004bc2:	930c      	str	r3, [sp, #48]	; 0x30
 8004bc4:	2a00      	cmp	r2, #0
 8004bc6:	f43f ae79 	beq.w	80048bc <_dtoa_r+0x694>
 8004bca:	e7a3      	b.n	8004b14 <_dtoa_r+0x8ec>
 8004bcc:	463a      	mov	r2, r7
 8004bce:	4629      	mov	r1, r5
 8004bd0:	4648      	mov	r0, r9
 8004bd2:	f001 fb8f 	bl	80062f4 <__pow5mult>
 8004bd6:	4652      	mov	r2, sl
 8004bd8:	4601      	mov	r1, r0
 8004bda:	4605      	mov	r5, r0
 8004bdc:	4648      	mov	r0, r9
 8004bde:	f001 fae3 	bl	80061a8 <__multiply>
 8004be2:	4651      	mov	r1, sl
 8004be4:	4607      	mov	r7, r0
 8004be6:	4648      	mov	r0, r9
 8004be8:	f001 fa3a 	bl	8006060 <_Bfree>
 8004bec:	46ba      	mov	sl, r7
 8004bee:	2e00      	cmp	r6, #0
 8004bf0:	f43f ae57 	beq.w	80048a2 <_dtoa_r+0x67a>
 8004bf4:	e64f      	b.n	8004896 <_dtoa_r+0x66e>
 8004bf6:	4629      	mov	r1, r5
 8004bf8:	4622      	mov	r2, r4
 8004bfa:	4648      	mov	r0, r9
 8004bfc:	f001 fbca 	bl	8006394 <__lshift>
 8004c00:	4605      	mov	r5, r0
 8004c02:	e68d      	b.n	8004920 <_dtoa_r+0x6f8>
 8004c04:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004c06:	2a00      	cmp	r2, #0
 8004c08:	f000 815d 	beq.w	8004ec6 <_dtoa_r+0xc9e>
 8004c0c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004c10:	9a08      	ldr	r2, [sp, #32]
 8004c12:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004c14:	4614      	mov	r4, r2
 8004c16:	441a      	add	r2, r3
 8004c18:	4498      	add	r8, r3
 8004c1a:	9208      	str	r2, [sp, #32]
 8004c1c:	e5f7      	b.n	800480e <_dtoa_r+0x5e6>
 8004c1e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c20:	2b00      	cmp	r3, #0
 8004c22:	f73f ad3e 	bgt.w	80046a2 <_dtoa_r+0x47a>
 8004c26:	f040 80bc 	bne.w	8004da2 <_dtoa_r+0xb7a>
 8004c2a:	ec51 0b17 	vmov	r0, r1, d7
 8004c2e:	2200      	movs	r2, #0
 8004c30:	4bb2      	ldr	r3, [pc, #712]	; (8004efc <_dtoa_r+0xcd4>)
 8004c32:	f7fb ff81 	bl	8000b38 <__aeabi_dmul>
 8004c36:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004c3a:	f7fc fa03 	bl	8001044 <__aeabi_dcmpge>
 8004c3e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004c40:	4635      	mov	r5, r6
 8004c42:	2800      	cmp	r0, #0
 8004c44:	d176      	bne.n	8004d34 <_dtoa_r+0xb0c>
 8004c46:	9a06      	ldr	r2, [sp, #24]
 8004c48:	2331      	movs	r3, #49	; 0x31
 8004c4a:	3201      	adds	r2, #1
 8004c4c:	9206      	str	r2, [sp, #24]
 8004c4e:	f88b 3000 	strb.w	r3, [fp]
 8004c52:	f10b 0401 	add.w	r4, fp, #1
 8004c56:	4631      	mov	r1, r6
 8004c58:	4648      	mov	r0, r9
 8004c5a:	f001 fa01 	bl	8006060 <_Bfree>
 8004c5e:	2d00      	cmp	r5, #0
 8004c60:	f47f af34 	bne.w	8004acc <_dtoa_r+0x8a4>
 8004c64:	e736      	b.n	8004ad4 <_dtoa_r+0x8ac>
 8004c66:	f000 8142 	beq.w	8004eee <_dtoa_r+0xcc6>
 8004c6a:	9b06      	ldr	r3, [sp, #24]
 8004c6c:	425c      	negs	r4, r3
 8004c6e:	4ba4      	ldr	r3, [pc, #656]	; (8004f00 <_dtoa_r+0xcd8>)
 8004c70:	f004 020f 	and.w	r2, r4, #15
 8004c74:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004c78:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004c7c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004c80:	f7fb ff5a 	bl	8000b38 <__aeabi_dmul>
 8004c84:	1124      	asrs	r4, r4, #4
 8004c86:	e9cd 0100 	strd	r0, r1, [sp]
 8004c8a:	f000 81c6 	beq.w	800501a <_dtoa_r+0xdf2>
 8004c8e:	4d9d      	ldr	r5, [pc, #628]	; (8004f04 <_dtoa_r+0xcdc>)
 8004c90:	2300      	movs	r3, #0
 8004c92:	2602      	movs	r6, #2
 8004c94:	07e7      	lsls	r7, r4, #31
 8004c96:	d505      	bpl.n	8004ca4 <_dtoa_r+0xa7c>
 8004c98:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004c9c:	f7fb ff4c 	bl	8000b38 <__aeabi_dmul>
 8004ca0:	3601      	adds	r6, #1
 8004ca2:	2301      	movs	r3, #1
 8004ca4:	1064      	asrs	r4, r4, #1
 8004ca6:	f105 0508 	add.w	r5, r5, #8
 8004caa:	d1f3      	bne.n	8004c94 <_dtoa_r+0xa6c>
 8004cac:	2b00      	cmp	r3, #0
 8004cae:	f43f ac27 	beq.w	8004500 <_dtoa_r+0x2d8>
 8004cb2:	e9cd 0100 	strd	r0, r1, [sp]
 8004cb6:	e423      	b.n	8004500 <_dtoa_r+0x2d8>
 8004cb8:	9b00      	ldr	r3, [sp, #0]
 8004cba:	2b00      	cmp	r3, #0
 8004cbc:	f43f af6e 	beq.w	8004b9c <_dtoa_r+0x974>
 8004cc0:	e726      	b.n	8004b10 <_dtoa_r+0x8e8>
 8004cc2:	6869      	ldr	r1, [r5, #4]
 8004cc4:	4648      	mov	r0, r9
 8004cc6:	f001 f9a5 	bl	8006014 <_Balloc>
 8004cca:	692b      	ldr	r3, [r5, #16]
 8004ccc:	3302      	adds	r3, #2
 8004cce:	009a      	lsls	r2, r3, #2
 8004cd0:	4604      	mov	r4, r0
 8004cd2:	f105 010c 	add.w	r1, r5, #12
 8004cd6:	300c      	adds	r0, #12
 8004cd8:	f7fb fc12 	bl	8000500 <memcpy>
 8004cdc:	4621      	mov	r1, r4
 8004cde:	2201      	movs	r2, #1
 8004ce0:	4648      	mov	r0, r9
 8004ce2:	f001 fb57 	bl	8006394 <__lshift>
 8004ce6:	4680      	mov	r8, r0
 8004ce8:	e61f      	b.n	800492a <_dtoa_r+0x702>
 8004cea:	2400      	movs	r4, #0
 8004cec:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004cf0:	4621      	mov	r1, r4
 8004cf2:	4648      	mov	r0, r9
 8004cf4:	f001 f98e 	bl	8006014 <_Balloc>
 8004cf8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004cfc:	930e      	str	r3, [sp, #56]	; 0x38
 8004cfe:	9309      	str	r3, [sp, #36]	; 0x24
 8004d00:	2301      	movs	r3, #1
 8004d02:	4683      	mov	fp, r0
 8004d04:	9407      	str	r4, [sp, #28]
 8004d06:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004d0a:	930a      	str	r3, [sp, #40]	; 0x28
 8004d0c:	e4b6      	b.n	800467c <_dtoa_r+0x454>
 8004d0e:	f001 f9b1 	bl	8006074 <__multadd>
 8004d12:	4627      	mov	r7, r4
 8004d14:	4605      	mov	r5, r0
 8004d16:	4680      	mov	r8, r0
 8004d18:	e614      	b.n	8004944 <_dtoa_r+0x71c>
 8004d1a:	4648      	mov	r0, r9
 8004d1c:	f001 f9a0 	bl	8006060 <_Bfree>
 8004d20:	2301      	movs	r3, #1
 8004d22:	e639      	b.n	8004998 <_dtoa_r+0x770>
 8004d24:	9b02      	ldr	r3, [sp, #8]
 8004d26:	2b02      	cmp	r3, #2
 8004d28:	f77f adf3 	ble.w	8004912 <_dtoa_r+0x6ea>
 8004d2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d2e:	2b00      	cmp	r3, #0
 8004d30:	f000 80cf 	beq.w	8004ed2 <_dtoa_r+0xcaa>
 8004d34:	9b07      	ldr	r3, [sp, #28]
 8004d36:	43db      	mvns	r3, r3
 8004d38:	9306      	str	r3, [sp, #24]
 8004d3a:	465c      	mov	r4, fp
 8004d3c:	e78b      	b.n	8004c56 <_dtoa_r+0xa2e>
 8004d3e:	9a06      	ldr	r2, [sp, #24]
 8004d40:	2331      	movs	r3, #49	; 0x31
 8004d42:	3201      	adds	r2, #1
 8004d44:	9206      	str	r2, [sp, #24]
 8004d46:	f88b 3000 	strb.w	r3, [fp]
 8004d4a:	e6b3      	b.n	8004ab4 <_dtoa_r+0x88c>
 8004d4c:	2401      	movs	r4, #1
 8004d4e:	9409      	str	r4, [sp, #36]	; 0x24
 8004d50:	9407      	str	r4, [sp, #28]
 8004d52:	f7ff bb8b 	b.w	800446c <_dtoa_r+0x244>
 8004d56:	4630      	mov	r0, r6
 8004d58:	f7fb fe84 	bl	8000a64 <__aeabi_i2d>
 8004d5c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d60:	f7fb feea 	bl	8000b38 <__aeabi_dmul>
 8004d64:	2200      	movs	r2, #0
 8004d66:	4b68      	ldr	r3, [pc, #416]	; (8004f08 <_dtoa_r+0xce0>)
 8004d68:	f7fb fd30 	bl	80007cc <__adddf3>
 8004d6c:	4606      	mov	r6, r0
 8004d6e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004d72:	2200      	movs	r2, #0
 8004d74:	4b61      	ldr	r3, [pc, #388]	; (8004efc <_dtoa_r+0xcd4>)
 8004d76:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004d7a:	f7fb fd25 	bl	80007c8 <__aeabi_dsub>
 8004d7e:	4632      	mov	r2, r6
 8004d80:	463b      	mov	r3, r7
 8004d82:	4604      	mov	r4, r0
 8004d84:	460d      	mov	r5, r1
 8004d86:	f7fc f967 	bl	8001058 <__aeabi_dcmpgt>
 8004d8a:	2800      	cmp	r0, #0
 8004d8c:	d14f      	bne.n	8004e2e <_dtoa_r+0xc06>
 8004d8e:	4632      	mov	r2, r6
 8004d90:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004d94:	4620      	mov	r0, r4
 8004d96:	4629      	mov	r1, r5
 8004d98:	f7fc f940 	bl	800101c <__aeabi_dcmplt>
 8004d9c:	2800      	cmp	r0, #0
 8004d9e:	f43f ac69 	beq.w	8004674 <_dtoa_r+0x44c>
 8004da2:	2600      	movs	r6, #0
 8004da4:	4635      	mov	r5, r6
 8004da6:	e7c5      	b.n	8004d34 <_dtoa_r+0xb0c>
 8004da8:	2301      	movs	r3, #1
 8004daa:	930a      	str	r3, [sp, #40]	; 0x28
 8004dac:	e6c8      	b.n	8004b40 <_dtoa_r+0x918>
 8004dae:	4651      	mov	r1, sl
 8004db0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004db2:	4648      	mov	r0, r9
 8004db4:	f001 fa9e 	bl	80062f4 <__pow5mult>
 8004db8:	4682      	mov	sl, r0
 8004dba:	e572      	b.n	80048a2 <_dtoa_r+0x67a>
 8004dbc:	f8dd a000 	ldr.w	sl, [sp]
 8004dc0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004dc4:	e686      	b.n	8004ad4 <_dtoa_r+0x8ac>
 8004dc6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004dc8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004dca:	1afb      	subs	r3, r7, r3
 8004dcc:	441a      	add	r2, r3
 8004dce:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004dd2:	2700      	movs	r7, #0
 8004dd4:	e512      	b.n	80047fc <_dtoa_r+0x5d4>
 8004dd6:	2b00      	cmp	r3, #0
 8004dd8:	9402      	str	r4, [sp, #8]
 8004dda:	465e      	mov	r6, fp
 8004ddc:	f107 0401 	add.w	r4, r7, #1
 8004de0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004de4:	f300 80ba 	bgt.w	8004f5c <_dtoa_r+0xd34>
 8004de8:	9b00      	ldr	r3, [sp, #0]
 8004dea:	9502      	str	r5, [sp, #8]
 8004dec:	703b      	strb	r3, [r7, #0]
 8004dee:	4645      	mov	r5, r8
 8004df0:	e660      	b.n	8004ab4 <_dtoa_r+0x88c>
 8004df2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004df6:	2602      	movs	r6, #2
 8004df8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004dfc:	f7ff bb67 	b.w	80044ce <_dtoa_r+0x2a6>
 8004e00:	9b00      	ldr	r3, [sp, #0]
 8004e02:	2b39      	cmp	r3, #57	; 0x39
 8004e04:	465e      	mov	r6, fp
 8004e06:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e0a:	f000 80b9 	beq.w	8004f80 <_dtoa_r+0xd58>
 8004e0e:	9b00      	ldr	r3, [sp, #0]
 8004e10:	9502      	str	r5, [sp, #8]
 8004e12:	3301      	adds	r3, #1
 8004e14:	703b      	strb	r3, [r7, #0]
 8004e16:	4645      	mov	r5, r8
 8004e18:	e64c      	b.n	8004ab4 <_dtoa_r+0x88c>
 8004e1a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004e1e:	1a9c      	subs	r4, r3, r2
 8004e20:	e4f5      	b.n	800480e <_dtoa_r+0x5e6>
 8004e22:	465e      	mov	r6, fp
 8004e24:	9502      	str	r5, [sp, #8]
 8004e26:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004e2a:	4645      	mov	r5, r8
 8004e2c:	e61a      	b.n	8004a64 <_dtoa_r+0x83c>
 8004e2e:	2600      	movs	r6, #0
 8004e30:	4635      	mov	r5, r6
 8004e32:	e708      	b.n	8004c46 <_dtoa_r+0xa1e>
 8004e34:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004e38:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e3c:	f7fb fe7c 	bl	8000b38 <__aeabi_dmul>
 8004e40:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004e42:	f88b 5000 	strb.w	r5, [fp]
 8004e46:	2b01      	cmp	r3, #1
 8004e48:	e9cd 0100 	strd	r0, r1, [sp]
 8004e4c:	d020      	beq.n	8004e90 <_dtoa_r+0xc68>
 8004e4e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004e50:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004e54:	445b      	add	r3, fp
 8004e56:	4698      	mov	r8, r3
 8004e58:	2200      	movs	r2, #0
 8004e5a:	4b2c      	ldr	r3, [pc, #176]	; (8004f0c <_dtoa_r+0xce4>)
 8004e5c:	4630      	mov	r0, r6
 8004e5e:	4639      	mov	r1, r7
 8004e60:	f7fb fe6a 	bl	8000b38 <__aeabi_dmul>
 8004e64:	460f      	mov	r7, r1
 8004e66:	4606      	mov	r6, r0
 8004e68:	f7fc f916 	bl	8001098 <__aeabi_d2iz>
 8004e6c:	4605      	mov	r5, r0
 8004e6e:	f7fb fdf9 	bl	8000a64 <__aeabi_i2d>
 8004e72:	3530      	adds	r5, #48	; 0x30
 8004e74:	4602      	mov	r2, r0
 8004e76:	460b      	mov	r3, r1
 8004e78:	4630      	mov	r0, r6
 8004e7a:	4639      	mov	r1, r7
 8004e7c:	f7fb fca4 	bl	80007c8 <__aeabi_dsub>
 8004e80:	f804 5b01 	strb.w	r5, [r4], #1
 8004e84:	4544      	cmp	r4, r8
 8004e86:	4606      	mov	r6, r0
 8004e88:	460f      	mov	r7, r1
 8004e8a:	d1e5      	bne.n	8004e58 <_dtoa_r+0xc30>
 8004e8c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004e90:	4b1f      	ldr	r3, [pc, #124]	; (8004f10 <_dtoa_r+0xce8>)
 8004e92:	2200      	movs	r2, #0
 8004e94:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004e98:	f7fb fc98 	bl	80007cc <__adddf3>
 8004e9c:	4632      	mov	r2, r6
 8004e9e:	463b      	mov	r3, r7
 8004ea0:	f7fc f8bc 	bl	800101c <__aeabi_dcmplt>
 8004ea4:	2800      	cmp	r0, #0
 8004ea6:	d070      	beq.n	8004f8a <_dtoa_r+0xd62>
 8004ea8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004eaa:	9306      	str	r3, [sp, #24]
 8004eac:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004eb0:	e48f      	b.n	80047d2 <_dtoa_r+0x5aa>
 8004eb2:	2330      	movs	r3, #48	; 0x30
 8004eb4:	f88b 3000 	strb.w	r3, [fp]
 8004eb8:	9b06      	ldr	r3, [sp, #24]
 8004eba:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004ebe:	3301      	adds	r3, #1
 8004ec0:	9306      	str	r3, [sp, #24]
 8004ec2:	465b      	mov	r3, fp
 8004ec4:	e489      	b.n	80047da <_dtoa_r+0x5b2>
 8004ec6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8004ec8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8004ecc:	e6a0      	b.n	8004c10 <_dtoa_r+0x9e8>
 8004ece:	2300      	movs	r3, #0
 8004ed0:	e676      	b.n	8004bc0 <_dtoa_r+0x998>
 8004ed2:	4631      	mov	r1, r6
 8004ed4:	2205      	movs	r2, #5
 8004ed6:	4648      	mov	r0, r9
 8004ed8:	f001 f8cc 	bl	8006074 <__multadd>
 8004edc:	4601      	mov	r1, r0
 8004ede:	4606      	mov	r6, r0
 8004ee0:	4650      	mov	r0, sl
 8004ee2:	f001 faad 	bl	8006440 <__mcmp>
 8004ee6:	2800      	cmp	r0, #0
 8004ee8:	f73f aead 	bgt.w	8004c46 <_dtoa_r+0xa1e>
 8004eec:	e722      	b.n	8004d34 <_dtoa_r+0xb0c>
 8004eee:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004ef2:	2602      	movs	r6, #2
 8004ef4:	ed8d 7b00 	vstr	d7, [sp]
 8004ef8:	f7ff bb02 	b.w	8004500 <_dtoa_r+0x2d8>
 8004efc:	40140000 	.word	0x40140000
 8004f00:	080072b0 	.word	0x080072b0
 8004f04:	08007288 	.word	0x08007288
 8004f08:	401c0000 	.word	0x401c0000
 8004f0c:	40240000 	.word	0x40240000
 8004f10:	3fe00000 	.word	0x3fe00000
 8004f14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f16:	2b00      	cmp	r3, #0
 8004f18:	f43f af1d 	beq.w	8004d56 <_dtoa_r+0xb2e>
 8004f1c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8004f1e:	2c00      	cmp	r4, #0
 8004f20:	f77f aba8 	ble.w	8004674 <_dtoa_r+0x44c>
 8004f24:	2200      	movs	r2, #0
 8004f26:	4b45      	ldr	r3, [pc, #276]	; (800503c <_dtoa_r+0xe14>)
 8004f28:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f2c:	f7fb fe04 	bl	8000b38 <__aeabi_dmul>
 8004f30:	e9cd 0100 	strd	r0, r1, [sp]
 8004f34:	1c70      	adds	r0, r6, #1
 8004f36:	f7fb fd95 	bl	8000a64 <__aeabi_i2d>
 8004f3a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f3e:	f7fb fdfb 	bl	8000b38 <__aeabi_dmul>
 8004f42:	4b3f      	ldr	r3, [pc, #252]	; (8005040 <_dtoa_r+0xe18>)
 8004f44:	2200      	movs	r2, #0
 8004f46:	f7fb fc41 	bl	80007cc <__adddf3>
 8004f4a:	9b06      	ldr	r3, [sp, #24]
 8004f4c:	9412      	str	r4, [sp, #72]	; 0x48
 8004f4e:	3b01      	subs	r3, #1
 8004f50:	4606      	mov	r6, r0
 8004f52:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004f56:	9316      	str	r3, [sp, #88]	; 0x58
 8004f58:	f7ff baf3 	b.w	8004542 <_dtoa_r+0x31a>
 8004f5c:	4651      	mov	r1, sl
 8004f5e:	2201      	movs	r2, #1
 8004f60:	4648      	mov	r0, r9
 8004f62:	f001 fa17 	bl	8006394 <__lshift>
 8004f66:	4631      	mov	r1, r6
 8004f68:	4682      	mov	sl, r0
 8004f6a:	f001 fa69 	bl	8006440 <__mcmp>
 8004f6e:	2800      	cmp	r0, #0
 8004f70:	dd3b      	ble.n	8004fea <_dtoa_r+0xdc2>
 8004f72:	9b00      	ldr	r3, [sp, #0]
 8004f74:	2b39      	cmp	r3, #57	; 0x39
 8004f76:	d003      	beq.n	8004f80 <_dtoa_r+0xd58>
 8004f78:	9b02      	ldr	r3, [sp, #8]
 8004f7a:	3331      	adds	r3, #49	; 0x31
 8004f7c:	9300      	str	r3, [sp, #0]
 8004f7e:	e733      	b.n	8004de8 <_dtoa_r+0xbc0>
 8004f80:	2239      	movs	r2, #57	; 0x39
 8004f82:	9502      	str	r5, [sp, #8]
 8004f84:	703a      	strb	r2, [r7, #0]
 8004f86:	4645      	mov	r5, r8
 8004f88:	e58e      	b.n	8004aa8 <_dtoa_r+0x880>
 8004f8a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f8e:	2000      	movs	r0, #0
 8004f90:	492c      	ldr	r1, [pc, #176]	; (8005044 <_dtoa_r+0xe1c>)
 8004f92:	f7fb fc19 	bl	80007c8 <__aeabi_dsub>
 8004f96:	4632      	mov	r2, r6
 8004f98:	463b      	mov	r3, r7
 8004f9a:	f7fc f85d 	bl	8001058 <__aeabi_dcmpgt>
 8004f9e:	b910      	cbnz	r0, 8004fa6 <_dtoa_r+0xd7e>
 8004fa0:	f7ff bb68 	b.w	8004674 <_dtoa_r+0x44c>
 8004fa4:	4614      	mov	r4, r2
 8004fa6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 8004faa:	2b30      	cmp	r3, #48	; 0x30
 8004fac:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004fb0:	d0f8      	beq.n	8004fa4 <_dtoa_r+0xd7c>
 8004fb2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004fb4:	9306      	str	r3, [sp, #24]
 8004fb6:	e58d      	b.n	8004ad4 <_dtoa_r+0x8ac>
 8004fb8:	46d9      	mov	r9, fp
 8004fba:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004fbe:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004fc2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004fc4:	9306      	str	r3, [sp, #24]
 8004fc6:	e404      	b.n	80047d2 <_dtoa_r+0x5aa>
 8004fc8:	9b00      	ldr	r3, [sp, #0]
 8004fca:	2b39      	cmp	r3, #57	; 0x39
 8004fcc:	4621      	mov	r1, r4
 8004fce:	4632      	mov	r2, r6
 8004fd0:	f107 0401 	add.w	r4, r7, #1
 8004fd4:	465e      	mov	r6, fp
 8004fd6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004fda:	d0d1      	beq.n	8004f80 <_dtoa_r+0xd58>
 8004fdc:	2a00      	cmp	r2, #0
 8004fde:	f77f af03 	ble.w	8004de8 <_dtoa_r+0xbc0>
 8004fe2:	460b      	mov	r3, r1
 8004fe4:	3331      	adds	r3, #49	; 0x31
 8004fe6:	9300      	str	r3, [sp, #0]
 8004fe8:	e6fe      	b.n	8004de8 <_dtoa_r+0xbc0>
 8004fea:	f47f aefd 	bne.w	8004de8 <_dtoa_r+0xbc0>
 8004fee:	9b00      	ldr	r3, [sp, #0]
 8004ff0:	07da      	lsls	r2, r3, #31
 8004ff2:	f57f aef9 	bpl.w	8004de8 <_dtoa_r+0xbc0>
 8004ff6:	e7bc      	b.n	8004f72 <_dtoa_r+0xd4a>
 8004ff8:	4629      	mov	r1, r5
 8004ffa:	2300      	movs	r3, #0
 8004ffc:	220a      	movs	r2, #10
 8004ffe:	4648      	mov	r0, r9
 8005000:	f001 f838 	bl	8006074 <__multadd>
 8005004:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005006:	2b00      	cmp	r3, #0
 8005008:	4605      	mov	r5, r0
 800500a:	dd09      	ble.n	8005020 <_dtoa_r+0xdf8>
 800500c:	9309      	str	r3, [sp, #36]	; 0x24
 800500e:	e484      	b.n	800491a <_dtoa_r+0x6f2>
 8005010:	9b02      	ldr	r3, [sp, #8]
 8005012:	2b02      	cmp	r3, #2
 8005014:	dc0e      	bgt.n	8005034 <_dtoa_r+0xe0c>
 8005016:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005018:	e507      	b.n	8004a2a <_dtoa_r+0x802>
 800501a:	2602      	movs	r6, #2
 800501c:	f7ff ba70 	b.w	8004500 <_dtoa_r+0x2d8>
 8005020:	9b02      	ldr	r3, [sp, #8]
 8005022:	2b02      	cmp	r3, #2
 8005024:	dc06      	bgt.n	8005034 <_dtoa_r+0xe0c>
 8005026:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005028:	e7f0      	b.n	800500c <_dtoa_r+0xde4>
 800502a:	f43f ac59 	beq.w	80048e0 <_dtoa_r+0x6b8>
 800502e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005032:	e450      	b.n	80048d6 <_dtoa_r+0x6ae>
 8005034:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005036:	9309      	str	r3, [sp, #36]	; 0x24
 8005038:	e678      	b.n	8004d2c <_dtoa_r+0xb04>
 800503a:	bf00      	nop
 800503c:	40240000 	.word	0x40240000
 8005040:	401c0000 	.word	0x401c0000
 8005044:	3fe00000 	.word	0x3fe00000

08005048 <__sflush_r>:
 8005048:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800504c:	b29a      	uxth	r2, r3
 800504e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005052:	460c      	mov	r4, r1
 8005054:	0711      	lsls	r1, r2, #28
 8005056:	4680      	mov	r8, r0
 8005058:	d444      	bmi.n	80050e4 <__sflush_r+0x9c>
 800505a:	6862      	ldr	r2, [r4, #4]
 800505c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005060:	2a00      	cmp	r2, #0
 8005062:	81a3      	strh	r3, [r4, #12]
 8005064:	dd59      	ble.n	800511a <__sflush_r+0xd2>
 8005066:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005068:	2d00      	cmp	r5, #0
 800506a:	d053      	beq.n	8005114 <__sflush_r+0xcc>
 800506c:	2200      	movs	r2, #0
 800506e:	b29b      	uxth	r3, r3
 8005070:	f8d8 6000 	ldr.w	r6, [r8]
 8005074:	69e1      	ldr	r1, [r4, #28]
 8005076:	f8c8 2000 	str.w	r2, [r8]
 800507a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800507e:	f040 8083 	bne.w	8005188 <__sflush_r+0x140>
 8005082:	2301      	movs	r3, #1
 8005084:	4640      	mov	r0, r8
 8005086:	47a8      	blx	r5
 8005088:	1c42      	adds	r2, r0, #1
 800508a:	d04a      	beq.n	8005122 <__sflush_r+0xda>
 800508c:	89a3      	ldrh	r3, [r4, #12]
 800508e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005090:	69e1      	ldr	r1, [r4, #28]
 8005092:	075b      	lsls	r3, r3, #29
 8005094:	d505      	bpl.n	80050a2 <__sflush_r+0x5a>
 8005096:	6862      	ldr	r2, [r4, #4]
 8005098:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800509a:	1a80      	subs	r0, r0, r2
 800509c:	b10b      	cbz	r3, 80050a2 <__sflush_r+0x5a>
 800509e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80050a0:	1ac0      	subs	r0, r0, r3
 80050a2:	4602      	mov	r2, r0
 80050a4:	2300      	movs	r3, #0
 80050a6:	4640      	mov	r0, r8
 80050a8:	47a8      	blx	r5
 80050aa:	1c47      	adds	r7, r0, #1
 80050ac:	d045      	beq.n	800513a <__sflush_r+0xf2>
 80050ae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80050b2:	6922      	ldr	r2, [r4, #16]
 80050b4:	6022      	str	r2, [r4, #0]
 80050b6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80050ba:	2200      	movs	r2, #0
 80050bc:	81a3      	strh	r3, [r4, #12]
 80050be:	04db      	lsls	r3, r3, #19
 80050c0:	6062      	str	r2, [r4, #4]
 80050c2:	d500      	bpl.n	80050c6 <__sflush_r+0x7e>
 80050c4:	6520      	str	r0, [r4, #80]	; 0x50
 80050c6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80050c8:	f8c8 6000 	str.w	r6, [r8]
 80050cc:	b311      	cbz	r1, 8005114 <__sflush_r+0xcc>
 80050ce:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80050d2:	4299      	cmp	r1, r3
 80050d4:	d002      	beq.n	80050dc <__sflush_r+0x94>
 80050d6:	4640      	mov	r0, r8
 80050d8:	f000 f95e 	bl	8005398 <_free_r>
 80050dc:	2000      	movs	r0, #0
 80050de:	6320      	str	r0, [r4, #48]	; 0x30
 80050e0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80050e4:	6926      	ldr	r6, [r4, #16]
 80050e6:	b1ae      	cbz	r6, 8005114 <__sflush_r+0xcc>
 80050e8:	6825      	ldr	r5, [r4, #0]
 80050ea:	6026      	str	r6, [r4, #0]
 80050ec:	0792      	lsls	r2, r2, #30
 80050ee:	bf0c      	ite	eq
 80050f0:	6963      	ldreq	r3, [r4, #20]
 80050f2:	2300      	movne	r3, #0
 80050f4:	1bad      	subs	r5, r5, r6
 80050f6:	60a3      	str	r3, [r4, #8]
 80050f8:	e00a      	b.n	8005110 <__sflush_r+0xc8>
 80050fa:	462b      	mov	r3, r5
 80050fc:	4632      	mov	r2, r6
 80050fe:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005100:	69e1      	ldr	r1, [r4, #28]
 8005102:	4640      	mov	r0, r8
 8005104:	47b8      	blx	r7
 8005106:	2800      	cmp	r0, #0
 8005108:	eba5 0500 	sub.w	r5, r5, r0
 800510c:	4406      	add	r6, r0
 800510e:	dd2b      	ble.n	8005168 <__sflush_r+0x120>
 8005110:	2d00      	cmp	r5, #0
 8005112:	dcf2      	bgt.n	80050fa <__sflush_r+0xb2>
 8005114:	2000      	movs	r0, #0
 8005116:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800511a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800511c:	2a00      	cmp	r2, #0
 800511e:	dca2      	bgt.n	8005066 <__sflush_r+0x1e>
 8005120:	e7f8      	b.n	8005114 <__sflush_r+0xcc>
 8005122:	f8d8 3000 	ldr.w	r3, [r8]
 8005126:	2b00      	cmp	r3, #0
 8005128:	d0b0      	beq.n	800508c <__sflush_r+0x44>
 800512a:	2b1d      	cmp	r3, #29
 800512c:	d001      	beq.n	8005132 <__sflush_r+0xea>
 800512e:	2b16      	cmp	r3, #22
 8005130:	d12c      	bne.n	800518c <__sflush_r+0x144>
 8005132:	f8c8 6000 	str.w	r6, [r8]
 8005136:	2000      	movs	r0, #0
 8005138:	e7ed      	b.n	8005116 <__sflush_r+0xce>
 800513a:	f8d8 1000 	ldr.w	r1, [r8]
 800513e:	291d      	cmp	r1, #29
 8005140:	d81a      	bhi.n	8005178 <__sflush_r+0x130>
 8005142:	4b15      	ldr	r3, [pc, #84]	; (8005198 <__sflush_r+0x150>)
 8005144:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005148:	40cb      	lsrs	r3, r1
 800514a:	43db      	mvns	r3, r3
 800514c:	f013 0301 	ands.w	r3, r3, #1
 8005150:	d114      	bne.n	800517c <__sflush_r+0x134>
 8005152:	6925      	ldr	r5, [r4, #16]
 8005154:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005158:	e9c4 5300 	strd	r5, r3, [r4]
 800515c:	04d5      	lsls	r5, r2, #19
 800515e:	81a2      	strh	r2, [r4, #12]
 8005160:	d5b1      	bpl.n	80050c6 <__sflush_r+0x7e>
 8005162:	2900      	cmp	r1, #0
 8005164:	d1af      	bne.n	80050c6 <__sflush_r+0x7e>
 8005166:	e7ad      	b.n	80050c4 <__sflush_r+0x7c>
 8005168:	89a3      	ldrh	r3, [r4, #12]
 800516a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800516e:	81a3      	strh	r3, [r4, #12]
 8005170:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005174:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005178:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800517c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005180:	81a2      	strh	r2, [r4, #12]
 8005182:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005186:	e7c6      	b.n	8005116 <__sflush_r+0xce>
 8005188:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800518a:	e782      	b.n	8005092 <__sflush_r+0x4a>
 800518c:	89a3      	ldrh	r3, [r4, #12]
 800518e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005192:	81a3      	strh	r3, [r4, #12]
 8005194:	e7bf      	b.n	8005116 <__sflush_r+0xce>
 8005196:	bf00      	nop
 8005198:	20400001 	.word	0x20400001

0800519c <_fflush_r>:
 800519c:	b538      	push	{r3, r4, r5, lr}
 800519e:	460d      	mov	r5, r1
 80051a0:	4604      	mov	r4, r0
 80051a2:	b108      	cbz	r0, 80051a8 <_fflush_r+0xc>
 80051a4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80051a6:	b1a3      	cbz	r3, 80051d2 <_fflush_r+0x36>
 80051a8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80051ac:	b1b8      	cbz	r0, 80051de <_fflush_r+0x42>
 80051ae:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80051b0:	07db      	lsls	r3, r3, #31
 80051b2:	d401      	bmi.n	80051b8 <_fflush_r+0x1c>
 80051b4:	0581      	lsls	r1, r0, #22
 80051b6:	d51a      	bpl.n	80051ee <_fflush_r+0x52>
 80051b8:	4620      	mov	r0, r4
 80051ba:	4629      	mov	r1, r5
 80051bc:	f7ff ff44 	bl	8005048 <__sflush_r>
 80051c0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80051c2:	07da      	lsls	r2, r3, #31
 80051c4:	4604      	mov	r4, r0
 80051c6:	d402      	bmi.n	80051ce <_fflush_r+0x32>
 80051c8:	89ab      	ldrh	r3, [r5, #12]
 80051ca:	059b      	lsls	r3, r3, #22
 80051cc:	d50a      	bpl.n	80051e4 <_fflush_r+0x48>
 80051ce:	4620      	mov	r0, r4
 80051d0:	bd38      	pop	{r3, r4, r5, pc}
 80051d2:	f000 f83f 	bl	8005254 <__sinit>
 80051d6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80051da:	2800      	cmp	r0, #0
 80051dc:	d1e7      	bne.n	80051ae <_fflush_r+0x12>
 80051de:	4604      	mov	r4, r0
 80051e0:	4620      	mov	r0, r4
 80051e2:	bd38      	pop	{r3, r4, r5, pc}
 80051e4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80051e6:	f000 fb87 	bl	80058f8 <__retarget_lock_release_recursive>
 80051ea:	4620      	mov	r0, r4
 80051ec:	bd38      	pop	{r3, r4, r5, pc}
 80051ee:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80051f0:	f000 fb80 	bl	80058f4 <__retarget_lock_acquire_recursive>
 80051f4:	e7e0      	b.n	80051b8 <_fflush_r+0x1c>
 80051f6:	bf00      	nop

080051f8 <std>:
 80051f8:	b510      	push	{r4, lr}
 80051fa:	2300      	movs	r3, #0
 80051fc:	4604      	mov	r4, r0
 80051fe:	8181      	strh	r1, [r0, #12]
 8005200:	81c2      	strh	r2, [r0, #14]
 8005202:	e9c0 3300 	strd	r3, r3, [r0]
 8005206:	6083      	str	r3, [r0, #8]
 8005208:	6643      	str	r3, [r0, #100]	; 0x64
 800520a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800520e:	6183      	str	r3, [r0, #24]
 8005210:	4619      	mov	r1, r3
 8005212:	2208      	movs	r2, #8
 8005214:	305c      	adds	r0, #92	; 0x5c
 8005216:	f7fd f8c9 	bl	80023ac <memset>
 800521a:	4807      	ldr	r0, [pc, #28]	; (8005238 <std+0x40>)
 800521c:	4907      	ldr	r1, [pc, #28]	; (800523c <std+0x44>)
 800521e:	4a08      	ldr	r2, [pc, #32]	; (8005240 <std+0x48>)
 8005220:	4b08      	ldr	r3, [pc, #32]	; (8005244 <std+0x4c>)
 8005222:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005224:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005228:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800522c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005230:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005234:	f000 bb5a 	b.w	80058ec <__retarget_lock_init_recursive>
 8005238:	08006a11 	.word	0x08006a11
 800523c:	08006a35 	.word	0x08006a35
 8005240:	08006a71 	.word	0x08006a71
 8005244:	08006a91 	.word	0x08006a91

08005248 <_cleanup_r>:
 8005248:	4901      	ldr	r1, [pc, #4]	; (8005250 <_cleanup_r+0x8>)
 800524a:	f000 bb17 	b.w	800587c <_fwalk_reent>
 800524e:	bf00      	nop
 8005250:	08006d01 	.word	0x08006d01

08005254 <__sinit>:
 8005254:	b510      	push	{r4, lr}
 8005256:	4604      	mov	r4, r0
 8005258:	4812      	ldr	r0, [pc, #72]	; (80052a4 <__sinit+0x50>)
 800525a:	f000 fb4b 	bl	80058f4 <__retarget_lock_acquire_recursive>
 800525e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005260:	b9d2      	cbnz	r2, 8005298 <__sinit+0x44>
 8005262:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005266:	4810      	ldr	r0, [pc, #64]	; (80052a8 <__sinit+0x54>)
 8005268:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800526c:	2103      	movs	r1, #3
 800526e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005272:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005274:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005278:	6860      	ldr	r0, [r4, #4]
 800527a:	2104      	movs	r1, #4
 800527c:	f7ff ffbc 	bl	80051f8 <std>
 8005280:	2201      	movs	r2, #1
 8005282:	2109      	movs	r1, #9
 8005284:	68a0      	ldr	r0, [r4, #8]
 8005286:	f7ff ffb7 	bl	80051f8 <std>
 800528a:	2202      	movs	r2, #2
 800528c:	2112      	movs	r1, #18
 800528e:	68e0      	ldr	r0, [r4, #12]
 8005290:	f7ff ffb2 	bl	80051f8 <std>
 8005294:	2301      	movs	r3, #1
 8005296:	63a3      	str	r3, [r4, #56]	; 0x38
 8005298:	4802      	ldr	r0, [pc, #8]	; (80052a4 <__sinit+0x50>)
 800529a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800529e:	f000 bb2b 	b.w	80058f8 <__retarget_lock_release_recursive>
 80052a2:	bf00      	nop
 80052a4:	200011d8 	.word	0x200011d8
 80052a8:	08005249 	.word	0x08005249

080052ac <__sfp_lock_acquire>:
 80052ac:	4801      	ldr	r0, [pc, #4]	; (80052b4 <__sfp_lock_acquire+0x8>)
 80052ae:	f000 bb21 	b.w	80058f4 <__retarget_lock_acquire_recursive>
 80052b2:	bf00      	nop
 80052b4:	200011ec 	.word	0x200011ec

080052b8 <__sfp_lock_release>:
 80052b8:	4801      	ldr	r0, [pc, #4]	; (80052c0 <__sfp_lock_release+0x8>)
 80052ba:	f000 bb1d 	b.w	80058f8 <__retarget_lock_release_recursive>
 80052be:	bf00      	nop
 80052c0:	200011ec 	.word	0x200011ec

080052c4 <__libc_fini_array>:
 80052c4:	b538      	push	{r3, r4, r5, lr}
 80052c6:	4c0a      	ldr	r4, [pc, #40]	; (80052f0 <__libc_fini_array+0x2c>)
 80052c8:	4d0a      	ldr	r5, [pc, #40]	; (80052f4 <__libc_fini_array+0x30>)
 80052ca:	1b64      	subs	r4, r4, r5
 80052cc:	10a4      	asrs	r4, r4, #2
 80052ce:	d00a      	beq.n	80052e6 <__libc_fini_array+0x22>
 80052d0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80052d4:	3b01      	subs	r3, #1
 80052d6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80052da:	3c01      	subs	r4, #1
 80052dc:	f855 3904 	ldr.w	r3, [r5], #-4
 80052e0:	4798      	blx	r3
 80052e2:	2c00      	cmp	r4, #0
 80052e4:	d1f9      	bne.n	80052da <__libc_fini_array+0x16>
 80052e6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80052ea:	f001 befd 	b.w	80070e8 <_fini>
 80052ee:	bf00      	nop
 80052f0:	080074ac 	.word	0x080074ac
 80052f4:	080074a8 	.word	0x080074a8

080052f8 <_malloc_trim_r>:
 80052f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80052fa:	4f24      	ldr	r7, [pc, #144]	; (800538c <_malloc_trim_r+0x94>)
 80052fc:	460c      	mov	r4, r1
 80052fe:	4606      	mov	r6, r0
 8005300:	f000 fe7c 	bl	8005ffc <__malloc_lock>
 8005304:	68bb      	ldr	r3, [r7, #8]
 8005306:	685d      	ldr	r5, [r3, #4]
 8005308:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800530c:	310f      	adds	r1, #15
 800530e:	f025 0503 	bic.w	r5, r5, #3
 8005312:	4429      	add	r1, r5
 8005314:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005318:	f021 010f 	bic.w	r1, r1, #15
 800531c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005320:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005324:	db07      	blt.n	8005336 <_malloc_trim_r+0x3e>
 8005326:	2100      	movs	r1, #0
 8005328:	4630      	mov	r0, r6
 800532a:	f001 fb5f 	bl	80069ec <_sbrk_r>
 800532e:	68bb      	ldr	r3, [r7, #8]
 8005330:	442b      	add	r3, r5
 8005332:	4298      	cmp	r0, r3
 8005334:	d004      	beq.n	8005340 <_malloc_trim_r+0x48>
 8005336:	4630      	mov	r0, r6
 8005338:	f000 fe66 	bl	8006008 <__malloc_unlock>
 800533c:	2000      	movs	r0, #0
 800533e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005340:	4261      	negs	r1, r4
 8005342:	4630      	mov	r0, r6
 8005344:	f001 fb52 	bl	80069ec <_sbrk_r>
 8005348:	3001      	adds	r0, #1
 800534a:	d00d      	beq.n	8005368 <_malloc_trim_r+0x70>
 800534c:	4b10      	ldr	r3, [pc, #64]	; (8005390 <_malloc_trim_r+0x98>)
 800534e:	68ba      	ldr	r2, [r7, #8]
 8005350:	6819      	ldr	r1, [r3, #0]
 8005352:	1b2d      	subs	r5, r5, r4
 8005354:	f045 0501 	orr.w	r5, r5, #1
 8005358:	4630      	mov	r0, r6
 800535a:	1b09      	subs	r1, r1, r4
 800535c:	6055      	str	r5, [r2, #4]
 800535e:	6019      	str	r1, [r3, #0]
 8005360:	f000 fe52 	bl	8006008 <__malloc_unlock>
 8005364:	2001      	movs	r0, #1
 8005366:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005368:	2100      	movs	r1, #0
 800536a:	4630      	mov	r0, r6
 800536c:	f001 fb3e 	bl	80069ec <_sbrk_r>
 8005370:	68ba      	ldr	r2, [r7, #8]
 8005372:	1a83      	subs	r3, r0, r2
 8005374:	2b0f      	cmp	r3, #15
 8005376:	ddde      	ble.n	8005336 <_malloc_trim_r+0x3e>
 8005378:	4c06      	ldr	r4, [pc, #24]	; (8005394 <_malloc_trim_r+0x9c>)
 800537a:	4905      	ldr	r1, [pc, #20]	; (8005390 <_malloc_trim_r+0x98>)
 800537c:	6824      	ldr	r4, [r4, #0]
 800537e:	f043 0301 	orr.w	r3, r3, #1
 8005382:	1b00      	subs	r0, r0, r4
 8005384:	6053      	str	r3, [r2, #4]
 8005386:	6008      	str	r0, [r1, #0]
 8005388:	e7d5      	b.n	8005336 <_malloc_trim_r+0x3e>
 800538a:	bf00      	nop
 800538c:	2000044c 	.word	0x2000044c
 8005390:	20000a70 	.word	0x20000a70
 8005394:	20000854 	.word	0x20000854

08005398 <_free_r>:
 8005398:	2900      	cmp	r1, #0
 800539a:	d053      	beq.n	8005444 <_free_r+0xac>
 800539c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800539e:	460c      	mov	r4, r1
 80053a0:	4606      	mov	r6, r0
 80053a2:	f000 fe2b 	bl	8005ffc <__malloc_lock>
 80053a6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80053aa:	4f71      	ldr	r7, [pc, #452]	; (8005570 <_free_r+0x1d8>)
 80053ac:	f02c 0101 	bic.w	r1, ip, #1
 80053b0:	f1a4 0508 	sub.w	r5, r4, #8
 80053b4:	186b      	adds	r3, r5, r1
 80053b6:	68b8      	ldr	r0, [r7, #8]
 80053b8:	685a      	ldr	r2, [r3, #4]
 80053ba:	4298      	cmp	r0, r3
 80053bc:	f022 0203 	bic.w	r2, r2, #3
 80053c0:	d053      	beq.n	800546a <_free_r+0xd2>
 80053c2:	f01c 0f01 	tst.w	ip, #1
 80053c6:	605a      	str	r2, [r3, #4]
 80053c8:	eb03 0002 	add.w	r0, r3, r2
 80053cc:	d13b      	bne.n	8005446 <_free_r+0xae>
 80053ce:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80053d2:	6840      	ldr	r0, [r0, #4]
 80053d4:	eba5 050c 	sub.w	r5, r5, ip
 80053d8:	f107 0e08 	add.w	lr, r7, #8
 80053dc:	68ac      	ldr	r4, [r5, #8]
 80053de:	4574      	cmp	r4, lr
 80053e0:	4461      	add	r1, ip
 80053e2:	f000 0001 	and.w	r0, r0, #1
 80053e6:	d075      	beq.n	80054d4 <_free_r+0x13c>
 80053e8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80053ec:	f8c4 c00c 	str.w	ip, [r4, #12]
 80053f0:	f8cc 4008 	str.w	r4, [ip, #8]
 80053f4:	b360      	cbz	r0, 8005450 <_free_r+0xb8>
 80053f6:	f041 0301 	orr.w	r3, r1, #1
 80053fa:	606b      	str	r3, [r5, #4]
 80053fc:	5069      	str	r1, [r5, r1]
 80053fe:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005402:	d350      	bcc.n	80054a6 <_free_r+0x10e>
 8005404:	0a4b      	lsrs	r3, r1, #9
 8005406:	2b04      	cmp	r3, #4
 8005408:	d870      	bhi.n	80054ec <_free_r+0x154>
 800540a:	098b      	lsrs	r3, r1, #6
 800540c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005410:	00e4      	lsls	r4, r4, #3
 8005412:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005416:	1938      	adds	r0, r7, r4
 8005418:	593b      	ldr	r3, [r7, r4]
 800541a:	3808      	subs	r0, #8
 800541c:	4298      	cmp	r0, r3
 800541e:	d078      	beq.n	8005512 <_free_r+0x17a>
 8005420:	685a      	ldr	r2, [r3, #4]
 8005422:	f022 0203 	bic.w	r2, r2, #3
 8005426:	428a      	cmp	r2, r1
 8005428:	d971      	bls.n	800550e <_free_r+0x176>
 800542a:	689b      	ldr	r3, [r3, #8]
 800542c:	4298      	cmp	r0, r3
 800542e:	d1f7      	bne.n	8005420 <_free_r+0x88>
 8005430:	68c3      	ldr	r3, [r0, #12]
 8005432:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005436:	609d      	str	r5, [r3, #8]
 8005438:	60c5      	str	r5, [r0, #12]
 800543a:	4630      	mov	r0, r6
 800543c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005440:	f000 bde2 	b.w	8006008 <__malloc_unlock>
 8005444:	4770      	bx	lr
 8005446:	6840      	ldr	r0, [r0, #4]
 8005448:	f000 0001 	and.w	r0, r0, #1
 800544c:	2800      	cmp	r0, #0
 800544e:	d1d2      	bne.n	80053f6 <_free_r+0x5e>
 8005450:	6898      	ldr	r0, [r3, #8]
 8005452:	4c48      	ldr	r4, [pc, #288]	; (8005574 <_free_r+0x1dc>)
 8005454:	4411      	add	r1, r2
 8005456:	42a0      	cmp	r0, r4
 8005458:	f041 0201 	orr.w	r2, r1, #1
 800545c:	d062      	beq.n	8005524 <_free_r+0x18c>
 800545e:	68db      	ldr	r3, [r3, #12]
 8005460:	60c3      	str	r3, [r0, #12]
 8005462:	6098      	str	r0, [r3, #8]
 8005464:	606a      	str	r2, [r5, #4]
 8005466:	5069      	str	r1, [r5, r1]
 8005468:	e7c9      	b.n	80053fe <_free_r+0x66>
 800546a:	f01c 0f01 	tst.w	ip, #1
 800546e:	440a      	add	r2, r1
 8005470:	d107      	bne.n	8005482 <_free_r+0xea>
 8005472:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005476:	1aed      	subs	r5, r5, r3
 8005478:	441a      	add	r2, r3
 800547a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800547e:	60cb      	str	r3, [r1, #12]
 8005480:	6099      	str	r1, [r3, #8]
 8005482:	4b3d      	ldr	r3, [pc, #244]	; (8005578 <_free_r+0x1e0>)
 8005484:	681b      	ldr	r3, [r3, #0]
 8005486:	f042 0101 	orr.w	r1, r2, #1
 800548a:	4293      	cmp	r3, r2
 800548c:	6069      	str	r1, [r5, #4]
 800548e:	60bd      	str	r5, [r7, #8]
 8005490:	d804      	bhi.n	800549c <_free_r+0x104>
 8005492:	4b3a      	ldr	r3, [pc, #232]	; (800557c <_free_r+0x1e4>)
 8005494:	4630      	mov	r0, r6
 8005496:	6819      	ldr	r1, [r3, #0]
 8005498:	f7ff ff2e 	bl	80052f8 <_malloc_trim_r>
 800549c:	4630      	mov	r0, r6
 800549e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80054a2:	f000 bdb1 	b.w	8006008 <__malloc_unlock>
 80054a6:	08c9      	lsrs	r1, r1, #3
 80054a8:	6878      	ldr	r0, [r7, #4]
 80054aa:	1c4a      	adds	r2, r1, #1
 80054ac:	2301      	movs	r3, #1
 80054ae:	1089      	asrs	r1, r1, #2
 80054b0:	408b      	lsls	r3, r1
 80054b2:	4303      	orrs	r3, r0
 80054b4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80054b8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80054bc:	607b      	str	r3, [r7, #4]
 80054be:	3908      	subs	r1, #8
 80054c0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80054c4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80054c8:	60c5      	str	r5, [r0, #12]
 80054ca:	4630      	mov	r0, r6
 80054cc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80054d0:	f000 bd9a 	b.w	8006008 <__malloc_unlock>
 80054d4:	2800      	cmp	r0, #0
 80054d6:	d145      	bne.n	8005564 <_free_r+0x1cc>
 80054d8:	440a      	add	r2, r1
 80054da:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80054de:	f042 0001 	orr.w	r0, r2, #1
 80054e2:	60cb      	str	r3, [r1, #12]
 80054e4:	6099      	str	r1, [r3, #8]
 80054e6:	6068      	str	r0, [r5, #4]
 80054e8:	50aa      	str	r2, [r5, r2]
 80054ea:	e7d7      	b.n	800549c <_free_r+0x104>
 80054ec:	2b14      	cmp	r3, #20
 80054ee:	d908      	bls.n	8005502 <_free_r+0x16a>
 80054f0:	2b54      	cmp	r3, #84	; 0x54
 80054f2:	d81e      	bhi.n	8005532 <_free_r+0x19a>
 80054f4:	0b0b      	lsrs	r3, r1, #12
 80054f6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80054fa:	00e4      	lsls	r4, r4, #3
 80054fc:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005500:	e789      	b.n	8005416 <_free_r+0x7e>
 8005502:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005506:	00e4      	lsls	r4, r4, #3
 8005508:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800550c:	e783      	b.n	8005416 <_free_r+0x7e>
 800550e:	4618      	mov	r0, r3
 8005510:	e78e      	b.n	8005430 <_free_r+0x98>
 8005512:	1093      	asrs	r3, r2, #2
 8005514:	6879      	ldr	r1, [r7, #4]
 8005516:	2201      	movs	r2, #1
 8005518:	fa02 f303 	lsl.w	r3, r2, r3
 800551c:	430b      	orrs	r3, r1
 800551e:	607b      	str	r3, [r7, #4]
 8005520:	4603      	mov	r3, r0
 8005522:	e786      	b.n	8005432 <_free_r+0x9a>
 8005524:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005528:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800552c:	606a      	str	r2, [r5, #4]
 800552e:	5069      	str	r1, [r5, r1]
 8005530:	e7b4      	b.n	800549c <_free_r+0x104>
 8005532:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005536:	d806      	bhi.n	8005546 <_free_r+0x1ae>
 8005538:	0bcb      	lsrs	r3, r1, #15
 800553a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800553e:	00e4      	lsls	r4, r4, #3
 8005540:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005544:	e767      	b.n	8005416 <_free_r+0x7e>
 8005546:	f240 5254 	movw	r2, #1364	; 0x554
 800554a:	4293      	cmp	r3, r2
 800554c:	d806      	bhi.n	800555c <_free_r+0x1c4>
 800554e:	0c8b      	lsrs	r3, r1, #18
 8005550:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005554:	00e4      	lsls	r4, r4, #3
 8005556:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800555a:	e75c      	b.n	8005416 <_free_r+0x7e>
 800555c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005560:	227e      	movs	r2, #126	; 0x7e
 8005562:	e758      	b.n	8005416 <_free_r+0x7e>
 8005564:	f041 0201 	orr.w	r2, r1, #1
 8005568:	606a      	str	r2, [r5, #4]
 800556a:	6019      	str	r1, [r3, #0]
 800556c:	e796      	b.n	800549c <_free_r+0x104>
 800556e:	bf00      	nop
 8005570:	2000044c 	.word	0x2000044c
 8005574:	20000454 	.word	0x20000454
 8005578:	20000858 	.word	0x20000858
 800557c:	20000aa0 	.word	0x20000aa0

08005580 <__sfvwrite_r>:
 8005580:	6893      	ldr	r3, [r2, #8]
 8005582:	2b00      	cmp	r3, #0
 8005584:	f000 80e4 	beq.w	8005750 <__sfvwrite_r+0x1d0>
 8005588:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800558c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005590:	b29b      	uxth	r3, r3
 8005592:	460c      	mov	r4, r1
 8005594:	0719      	lsls	r1, r3, #28
 8005596:	b083      	sub	sp, #12
 8005598:	4682      	mov	sl, r0
 800559a:	4690      	mov	r8, r2
 800559c:	d535      	bpl.n	800560a <__sfvwrite_r+0x8a>
 800559e:	6922      	ldr	r2, [r4, #16]
 80055a0:	b39a      	cbz	r2, 800560a <__sfvwrite_r+0x8a>
 80055a2:	f013 0202 	ands.w	r2, r3, #2
 80055a6:	f8d8 6000 	ldr.w	r6, [r8]
 80055aa:	d03d      	beq.n	8005628 <__sfvwrite_r+0xa8>
 80055ac:	2700      	movs	r7, #0
 80055ae:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80055b2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80055b6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005878 <__sfvwrite_r+0x2f8>
 80055ba:	463d      	mov	r5, r7
 80055bc:	454d      	cmp	r5, r9
 80055be:	462b      	mov	r3, r5
 80055c0:	463a      	mov	r2, r7
 80055c2:	bf28      	it	cs
 80055c4:	464b      	movcs	r3, r9
 80055c6:	4661      	mov	r1, ip
 80055c8:	4650      	mov	r0, sl
 80055ca:	b1d5      	cbz	r5, 8005602 <__sfvwrite_r+0x82>
 80055cc:	47d8      	blx	fp
 80055ce:	2800      	cmp	r0, #0
 80055d0:	f340 80c6 	ble.w	8005760 <__sfvwrite_r+0x1e0>
 80055d4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80055d8:	1a1b      	subs	r3, r3, r0
 80055da:	4407      	add	r7, r0
 80055dc:	1a2d      	subs	r5, r5, r0
 80055de:	f8c8 3008 	str.w	r3, [r8, #8]
 80055e2:	2b00      	cmp	r3, #0
 80055e4:	f000 80b0 	beq.w	8005748 <__sfvwrite_r+0x1c8>
 80055e8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80055ec:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80055f0:	454d      	cmp	r5, r9
 80055f2:	462b      	mov	r3, r5
 80055f4:	463a      	mov	r2, r7
 80055f6:	bf28      	it	cs
 80055f8:	464b      	movcs	r3, r9
 80055fa:	4661      	mov	r1, ip
 80055fc:	4650      	mov	r0, sl
 80055fe:	2d00      	cmp	r5, #0
 8005600:	d1e4      	bne.n	80055cc <__sfvwrite_r+0x4c>
 8005602:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005606:	3608      	adds	r6, #8
 8005608:	e7d8      	b.n	80055bc <__sfvwrite_r+0x3c>
 800560a:	4621      	mov	r1, r4
 800560c:	4650      	mov	r0, sl
 800560e:	f7fe fd03 	bl	8004018 <__swsetup_r>
 8005612:	2800      	cmp	r0, #0
 8005614:	f040 812a 	bne.w	800586c <__sfvwrite_r+0x2ec>
 8005618:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800561c:	f8d8 6000 	ldr.w	r6, [r8]
 8005620:	b29b      	uxth	r3, r3
 8005622:	f013 0202 	ands.w	r2, r3, #2
 8005626:	d1c1      	bne.n	80055ac <__sfvwrite_r+0x2c>
 8005628:	f013 0901 	ands.w	r9, r3, #1
 800562c:	d15d      	bne.n	80056ea <__sfvwrite_r+0x16a>
 800562e:	68a7      	ldr	r7, [r4, #8]
 8005630:	6820      	ldr	r0, [r4, #0]
 8005632:	464d      	mov	r5, r9
 8005634:	2d00      	cmp	r5, #0
 8005636:	d054      	beq.n	80056e2 <__sfvwrite_r+0x162>
 8005638:	059a      	lsls	r2, r3, #22
 800563a:	f140 809b 	bpl.w	8005774 <__sfvwrite_r+0x1f4>
 800563e:	42af      	cmp	r7, r5
 8005640:	46bb      	mov	fp, r7
 8005642:	f200 80d8 	bhi.w	80057f6 <__sfvwrite_r+0x276>
 8005646:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800564a:	d02f      	beq.n	80056ac <__sfvwrite_r+0x12c>
 800564c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005650:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005654:	eba0 0b01 	sub.w	fp, r0, r1
 8005658:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800565c:	1c68      	adds	r0, r5, #1
 800565e:	107f      	asrs	r7, r7, #1
 8005660:	4458      	add	r0, fp
 8005662:	42b8      	cmp	r0, r7
 8005664:	463a      	mov	r2, r7
 8005666:	bf84      	itt	hi
 8005668:	4607      	movhi	r7, r0
 800566a:	463a      	movhi	r2, r7
 800566c:	055b      	lsls	r3, r3, #21
 800566e:	f140 80d3 	bpl.w	8005818 <__sfvwrite_r+0x298>
 8005672:	4611      	mov	r1, r2
 8005674:	4650      	mov	r0, sl
 8005676:	f000 f9b9 	bl	80059ec <_malloc_r>
 800567a:	2800      	cmp	r0, #0
 800567c:	f000 80f0 	beq.w	8005860 <__sfvwrite_r+0x2e0>
 8005680:	465a      	mov	r2, fp
 8005682:	6921      	ldr	r1, [r4, #16]
 8005684:	9001      	str	r0, [sp, #4]
 8005686:	f7fa ff3b 	bl	8000500 <memcpy>
 800568a:	89a2      	ldrh	r2, [r4, #12]
 800568c:	9b01      	ldr	r3, [sp, #4]
 800568e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005692:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005696:	81a2      	strh	r2, [r4, #12]
 8005698:	eba7 020b 	sub.w	r2, r7, fp
 800569c:	eb03 000b 	add.w	r0, r3, fp
 80056a0:	6167      	str	r7, [r4, #20]
 80056a2:	6123      	str	r3, [r4, #16]
 80056a4:	6020      	str	r0, [r4, #0]
 80056a6:	60a2      	str	r2, [r4, #8]
 80056a8:	462f      	mov	r7, r5
 80056aa:	46ab      	mov	fp, r5
 80056ac:	465a      	mov	r2, fp
 80056ae:	4649      	mov	r1, r9
 80056b0:	f000 fc40 	bl	8005f34 <memmove>
 80056b4:	68a2      	ldr	r2, [r4, #8]
 80056b6:	6823      	ldr	r3, [r4, #0]
 80056b8:	1bd2      	subs	r2, r2, r7
 80056ba:	445b      	add	r3, fp
 80056bc:	462f      	mov	r7, r5
 80056be:	60a2      	str	r2, [r4, #8]
 80056c0:	6023      	str	r3, [r4, #0]
 80056c2:	2500      	movs	r5, #0
 80056c4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80056c8:	1bdb      	subs	r3, r3, r7
 80056ca:	44b9      	add	r9, r7
 80056cc:	f8c8 3008 	str.w	r3, [r8, #8]
 80056d0:	2b00      	cmp	r3, #0
 80056d2:	d039      	beq.n	8005748 <__sfvwrite_r+0x1c8>
 80056d4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80056d8:	68a7      	ldr	r7, [r4, #8]
 80056da:	6820      	ldr	r0, [r4, #0]
 80056dc:	b29b      	uxth	r3, r3
 80056de:	2d00      	cmp	r5, #0
 80056e0:	d1aa      	bne.n	8005638 <__sfvwrite_r+0xb8>
 80056e2:	e9d6 9500 	ldrd	r9, r5, [r6]
 80056e6:	3608      	adds	r6, #8
 80056e8:	e7a4      	b.n	8005634 <__sfvwrite_r+0xb4>
 80056ea:	4633      	mov	r3, r6
 80056ec:	4691      	mov	r9, r2
 80056ee:	4610      	mov	r0, r2
 80056f0:	4617      	mov	r7, r2
 80056f2:	464e      	mov	r6, r9
 80056f4:	469b      	mov	fp, r3
 80056f6:	2f00      	cmp	r7, #0
 80056f8:	d06b      	beq.n	80057d2 <__sfvwrite_r+0x252>
 80056fa:	2800      	cmp	r0, #0
 80056fc:	d071      	beq.n	80057e2 <__sfvwrite_r+0x262>
 80056fe:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005702:	6820      	ldr	r0, [r4, #0]
 8005704:	45b9      	cmp	r9, r7
 8005706:	464b      	mov	r3, r9
 8005708:	bf28      	it	cs
 800570a:	463b      	movcs	r3, r7
 800570c:	4288      	cmp	r0, r1
 800570e:	d903      	bls.n	8005718 <__sfvwrite_r+0x198>
 8005710:	68a5      	ldr	r5, [r4, #8]
 8005712:	4415      	add	r5, r2
 8005714:	42ab      	cmp	r3, r5
 8005716:	dc71      	bgt.n	80057fc <__sfvwrite_r+0x27c>
 8005718:	429a      	cmp	r2, r3
 800571a:	f300 8093 	bgt.w	8005844 <__sfvwrite_r+0x2c4>
 800571e:	4613      	mov	r3, r2
 8005720:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005722:	69e1      	ldr	r1, [r4, #28]
 8005724:	4632      	mov	r2, r6
 8005726:	4650      	mov	r0, sl
 8005728:	47a8      	blx	r5
 800572a:	1e05      	subs	r5, r0, #0
 800572c:	dd18      	ble.n	8005760 <__sfvwrite_r+0x1e0>
 800572e:	ebb9 0905 	subs.w	r9, r9, r5
 8005732:	d00f      	beq.n	8005754 <__sfvwrite_r+0x1d4>
 8005734:	2001      	movs	r0, #1
 8005736:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800573a:	1b5b      	subs	r3, r3, r5
 800573c:	442e      	add	r6, r5
 800573e:	1b7f      	subs	r7, r7, r5
 8005740:	f8c8 3008 	str.w	r3, [r8, #8]
 8005744:	2b00      	cmp	r3, #0
 8005746:	d1d6      	bne.n	80056f6 <__sfvwrite_r+0x176>
 8005748:	2000      	movs	r0, #0
 800574a:	b003      	add	sp, #12
 800574c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005750:	2000      	movs	r0, #0
 8005752:	4770      	bx	lr
 8005754:	4621      	mov	r1, r4
 8005756:	4650      	mov	r0, sl
 8005758:	f7ff fd20 	bl	800519c <_fflush_r>
 800575c:	2800      	cmp	r0, #0
 800575e:	d0ea      	beq.n	8005736 <__sfvwrite_r+0x1b6>
 8005760:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005764:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005768:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800576c:	81a3      	strh	r3, [r4, #12]
 800576e:	b003      	add	sp, #12
 8005770:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005774:	6923      	ldr	r3, [r4, #16]
 8005776:	4283      	cmp	r3, r0
 8005778:	d315      	bcc.n	80057a6 <__sfvwrite_r+0x226>
 800577a:	6961      	ldr	r1, [r4, #20]
 800577c:	42a9      	cmp	r1, r5
 800577e:	d812      	bhi.n	80057a6 <__sfvwrite_r+0x226>
 8005780:	4b3c      	ldr	r3, [pc, #240]	; (8005874 <__sfvwrite_r+0x2f4>)
 8005782:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005784:	429d      	cmp	r5, r3
 8005786:	bf94      	ite	ls
 8005788:	462b      	movls	r3, r5
 800578a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800578e:	464a      	mov	r2, r9
 8005790:	fb93 f3f1 	sdiv	r3, r3, r1
 8005794:	4650      	mov	r0, sl
 8005796:	fb01 f303 	mul.w	r3, r1, r3
 800579a:	69e1      	ldr	r1, [r4, #28]
 800579c:	47b8      	blx	r7
 800579e:	1e07      	subs	r7, r0, #0
 80057a0:	ddde      	ble.n	8005760 <__sfvwrite_r+0x1e0>
 80057a2:	1bed      	subs	r5, r5, r7
 80057a4:	e78e      	b.n	80056c4 <__sfvwrite_r+0x144>
 80057a6:	42af      	cmp	r7, r5
 80057a8:	bf28      	it	cs
 80057aa:	462f      	movcs	r7, r5
 80057ac:	463a      	mov	r2, r7
 80057ae:	4649      	mov	r1, r9
 80057b0:	f000 fbc0 	bl	8005f34 <memmove>
 80057b4:	68a3      	ldr	r3, [r4, #8]
 80057b6:	6822      	ldr	r2, [r4, #0]
 80057b8:	1bdb      	subs	r3, r3, r7
 80057ba:	443a      	add	r2, r7
 80057bc:	60a3      	str	r3, [r4, #8]
 80057be:	6022      	str	r2, [r4, #0]
 80057c0:	2b00      	cmp	r3, #0
 80057c2:	d1ee      	bne.n	80057a2 <__sfvwrite_r+0x222>
 80057c4:	4621      	mov	r1, r4
 80057c6:	4650      	mov	r0, sl
 80057c8:	f7ff fce8 	bl	800519c <_fflush_r>
 80057cc:	2800      	cmp	r0, #0
 80057ce:	d0e8      	beq.n	80057a2 <__sfvwrite_r+0x222>
 80057d0:	e7c6      	b.n	8005760 <__sfvwrite_r+0x1e0>
 80057d2:	f10b 0308 	add.w	r3, fp, #8
 80057d6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80057da:	469b      	mov	fp, r3
 80057dc:	3308      	adds	r3, #8
 80057de:	2f00      	cmp	r7, #0
 80057e0:	d0f9      	beq.n	80057d6 <__sfvwrite_r+0x256>
 80057e2:	463a      	mov	r2, r7
 80057e4:	210a      	movs	r1, #10
 80057e6:	4630      	mov	r0, r6
 80057e8:	f7fa ff9a 	bl	8000720 <memchr>
 80057ec:	b338      	cbz	r0, 800583e <__sfvwrite_r+0x2be>
 80057ee:	3001      	adds	r0, #1
 80057f0:	eba0 0906 	sub.w	r9, r0, r6
 80057f4:	e783      	b.n	80056fe <__sfvwrite_r+0x17e>
 80057f6:	462f      	mov	r7, r5
 80057f8:	46ab      	mov	fp, r5
 80057fa:	e757      	b.n	80056ac <__sfvwrite_r+0x12c>
 80057fc:	4631      	mov	r1, r6
 80057fe:	462a      	mov	r2, r5
 8005800:	f000 fb98 	bl	8005f34 <memmove>
 8005804:	6823      	ldr	r3, [r4, #0]
 8005806:	442b      	add	r3, r5
 8005808:	6023      	str	r3, [r4, #0]
 800580a:	4621      	mov	r1, r4
 800580c:	4650      	mov	r0, sl
 800580e:	f7ff fcc5 	bl	800519c <_fflush_r>
 8005812:	2800      	cmp	r0, #0
 8005814:	d08b      	beq.n	800572e <__sfvwrite_r+0x1ae>
 8005816:	e7a3      	b.n	8005760 <__sfvwrite_r+0x1e0>
 8005818:	4650      	mov	r0, sl
 800581a:	f000 ff05 	bl	8006628 <_realloc_r>
 800581e:	4603      	mov	r3, r0
 8005820:	2800      	cmp	r0, #0
 8005822:	f47f af39 	bne.w	8005698 <__sfvwrite_r+0x118>
 8005826:	6921      	ldr	r1, [r4, #16]
 8005828:	4650      	mov	r0, sl
 800582a:	f7ff fdb5 	bl	8005398 <_free_r>
 800582e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005832:	220c      	movs	r2, #12
 8005834:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005838:	f8ca 2000 	str.w	r2, [sl]
 800583c:	e792      	b.n	8005764 <__sfvwrite_r+0x1e4>
 800583e:	f107 0901 	add.w	r9, r7, #1
 8005842:	e75c      	b.n	80056fe <__sfvwrite_r+0x17e>
 8005844:	461a      	mov	r2, r3
 8005846:	4631      	mov	r1, r6
 8005848:	9301      	str	r3, [sp, #4]
 800584a:	f000 fb73 	bl	8005f34 <memmove>
 800584e:	9b01      	ldr	r3, [sp, #4]
 8005850:	68a1      	ldr	r1, [r4, #8]
 8005852:	6822      	ldr	r2, [r4, #0]
 8005854:	1ac9      	subs	r1, r1, r3
 8005856:	441a      	add	r2, r3
 8005858:	60a1      	str	r1, [r4, #8]
 800585a:	6022      	str	r2, [r4, #0]
 800585c:	461d      	mov	r5, r3
 800585e:	e766      	b.n	800572e <__sfvwrite_r+0x1ae>
 8005860:	230c      	movs	r3, #12
 8005862:	f8ca 3000 	str.w	r3, [sl]
 8005866:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800586a:	e77b      	b.n	8005764 <__sfvwrite_r+0x1e4>
 800586c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005870:	e76b      	b.n	800574a <__sfvwrite_r+0x1ca>
 8005872:	bf00      	nop
 8005874:	7ffffffe 	.word	0x7ffffffe
 8005878:	7ffffc00 	.word	0x7ffffc00

0800587c <_fwalk_reent>:
 800587c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005880:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005884:	d01f      	beq.n	80058c6 <_fwalk_reent+0x4a>
 8005886:	4688      	mov	r8, r1
 8005888:	4606      	mov	r6, r0
 800588a:	f04f 0900 	mov.w	r9, #0
 800588e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005892:	3d01      	subs	r5, #1
 8005894:	d411      	bmi.n	80058ba <_fwalk_reent+0x3e>
 8005896:	89a3      	ldrh	r3, [r4, #12]
 8005898:	2b01      	cmp	r3, #1
 800589a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 800589e:	4621      	mov	r1, r4
 80058a0:	4630      	mov	r0, r6
 80058a2:	d906      	bls.n	80058b2 <_fwalk_reent+0x36>
 80058a4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80058a8:	3301      	adds	r3, #1
 80058aa:	d002      	beq.n	80058b2 <_fwalk_reent+0x36>
 80058ac:	47c0      	blx	r8
 80058ae:	ea49 0900 	orr.w	r9, r9, r0
 80058b2:	1c6b      	adds	r3, r5, #1
 80058b4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 80058b8:	d1ed      	bne.n	8005896 <_fwalk_reent+0x1a>
 80058ba:	683f      	ldr	r7, [r7, #0]
 80058bc:	2f00      	cmp	r7, #0
 80058be:	d1e6      	bne.n	800588e <_fwalk_reent+0x12>
 80058c0:	4648      	mov	r0, r9
 80058c2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80058c6:	46b9      	mov	r9, r7
 80058c8:	4648      	mov	r0, r9
 80058ca:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 80058ce:	bf00      	nop

080058d0 <_localeconv_r>:
 80058d0:	4a04      	ldr	r2, [pc, #16]	; (80058e4 <_localeconv_r+0x14>)
 80058d2:	4b05      	ldr	r3, [pc, #20]	; (80058e8 <_localeconv_r+0x18>)
 80058d4:	6812      	ldr	r2, [r2, #0]
 80058d6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 80058d8:	2800      	cmp	r0, #0
 80058da:	bf08      	it	eq
 80058dc:	4618      	moveq	r0, r3
 80058de:	30f0      	adds	r0, #240	; 0xf0
 80058e0:	4770      	bx	lr
 80058e2:	bf00      	nop
 80058e4:	20000018 	.word	0x20000018
 80058e8:	2000085c 	.word	0x2000085c

080058ec <__retarget_lock_init_recursive>:
 80058ec:	4770      	bx	lr
 80058ee:	bf00      	nop

080058f0 <__retarget_lock_close_recursive>:
 80058f0:	4770      	bx	lr
 80058f2:	bf00      	nop

080058f4 <__retarget_lock_acquire_recursive>:
 80058f4:	4770      	bx	lr
 80058f6:	bf00      	nop

080058f8 <__retarget_lock_release_recursive>:
 80058f8:	4770      	bx	lr
 80058fa:	bf00      	nop

080058fc <__swhatbuf_r>:
 80058fc:	b570      	push	{r4, r5, r6, lr}
 80058fe:	460c      	mov	r4, r1
 8005900:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005904:	2900      	cmp	r1, #0
 8005906:	b096      	sub	sp, #88	; 0x58
 8005908:	4615      	mov	r5, r2
 800590a:	461e      	mov	r6, r3
 800590c:	da0f      	bge.n	800592e <__swhatbuf_r+0x32>
 800590e:	89a2      	ldrh	r2, [r4, #12]
 8005910:	2300      	movs	r3, #0
 8005912:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005916:	6033      	str	r3, [r6, #0]
 8005918:	d104      	bne.n	8005924 <__swhatbuf_r+0x28>
 800591a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800591e:	602b      	str	r3, [r5, #0]
 8005920:	b016      	add	sp, #88	; 0x58
 8005922:	bd70      	pop	{r4, r5, r6, pc}
 8005924:	2240      	movs	r2, #64	; 0x40
 8005926:	4618      	mov	r0, r3
 8005928:	602a      	str	r2, [r5, #0]
 800592a:	b016      	add	sp, #88	; 0x58
 800592c:	bd70      	pop	{r4, r5, r6, pc}
 800592e:	466a      	mov	r2, sp
 8005930:	f001 fad0 	bl	8006ed4 <_fstat_r>
 8005934:	2800      	cmp	r0, #0
 8005936:	dbea      	blt.n	800590e <__swhatbuf_r+0x12>
 8005938:	9b01      	ldr	r3, [sp, #4]
 800593a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800593e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005942:	fab3 f383 	clz	r3, r3
 8005946:	095b      	lsrs	r3, r3, #5
 8005948:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800594c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005950:	6033      	str	r3, [r6, #0]
 8005952:	602a      	str	r2, [r5, #0]
 8005954:	b016      	add	sp, #88	; 0x58
 8005956:	bd70      	pop	{r4, r5, r6, pc}

08005958 <__smakebuf_r>:
 8005958:	898a      	ldrh	r2, [r1, #12]
 800595a:	0792      	lsls	r2, r2, #30
 800595c:	460b      	mov	r3, r1
 800595e:	d506      	bpl.n	800596e <__smakebuf_r+0x16>
 8005960:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005964:	2101      	movs	r1, #1
 8005966:	601a      	str	r2, [r3, #0]
 8005968:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800596c:	4770      	bx	lr
 800596e:	b570      	push	{r4, r5, r6, lr}
 8005970:	b082      	sub	sp, #8
 8005972:	ab01      	add	r3, sp, #4
 8005974:	466a      	mov	r2, sp
 8005976:	460c      	mov	r4, r1
 8005978:	4605      	mov	r5, r0
 800597a:	f7ff ffbf 	bl	80058fc <__swhatbuf_r>
 800597e:	9900      	ldr	r1, [sp, #0]
 8005980:	4606      	mov	r6, r0
 8005982:	4628      	mov	r0, r5
 8005984:	f000 f832 	bl	80059ec <_malloc_r>
 8005988:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800598c:	b1d8      	cbz	r0, 80059c6 <__smakebuf_r+0x6e>
 800598e:	4916      	ldr	r1, [pc, #88]	; (80059e8 <__smakebuf_r+0x90>)
 8005990:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005992:	9a01      	ldr	r2, [sp, #4]
 8005994:	9900      	ldr	r1, [sp, #0]
 8005996:	6020      	str	r0, [r4, #0]
 8005998:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800599c:	81a3      	strh	r3, [r4, #12]
 800599e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 80059a2:	b91a      	cbnz	r2, 80059ac <__smakebuf_r+0x54>
 80059a4:	4333      	orrs	r3, r6
 80059a6:	81a3      	strh	r3, [r4, #12]
 80059a8:	b002      	add	sp, #8
 80059aa:	bd70      	pop	{r4, r5, r6, pc}
 80059ac:	4628      	mov	r0, r5
 80059ae:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80059b2:	f001 faa3 	bl	8006efc <_isatty_r>
 80059b6:	b1a0      	cbz	r0, 80059e2 <__smakebuf_r+0x8a>
 80059b8:	89a3      	ldrh	r3, [r4, #12]
 80059ba:	f023 0303 	bic.w	r3, r3, #3
 80059be:	f043 0301 	orr.w	r3, r3, #1
 80059c2:	b21b      	sxth	r3, r3
 80059c4:	e7ee      	b.n	80059a4 <__smakebuf_r+0x4c>
 80059c6:	059a      	lsls	r2, r3, #22
 80059c8:	d4ee      	bmi.n	80059a8 <__smakebuf_r+0x50>
 80059ca:	f023 0303 	bic.w	r3, r3, #3
 80059ce:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80059d2:	f043 0302 	orr.w	r3, r3, #2
 80059d6:	2101      	movs	r1, #1
 80059d8:	81a3      	strh	r3, [r4, #12]
 80059da:	6022      	str	r2, [r4, #0]
 80059dc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80059e0:	e7e2      	b.n	80059a8 <__smakebuf_r+0x50>
 80059e2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059e6:	e7dd      	b.n	80059a4 <__smakebuf_r+0x4c>
 80059e8:	08005249 	.word	0x08005249

080059ec <_malloc_r>:
 80059ec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80059f0:	f101 050b 	add.w	r5, r1, #11
 80059f4:	2d16      	cmp	r5, #22
 80059f6:	b083      	sub	sp, #12
 80059f8:	4606      	mov	r6, r0
 80059fa:	d823      	bhi.n	8005a44 <_malloc_r+0x58>
 80059fc:	2910      	cmp	r1, #16
 80059fe:	f200 80b9 	bhi.w	8005b74 <_malloc_r+0x188>
 8005a02:	f000 fafb 	bl	8005ffc <__malloc_lock>
 8005a06:	2510      	movs	r5, #16
 8005a08:	2318      	movs	r3, #24
 8005a0a:	2002      	movs	r0, #2
 8005a0c:	4fc5      	ldr	r7, [pc, #788]	; (8005d24 <_malloc_r+0x338>)
 8005a0e:	443b      	add	r3, r7
 8005a10:	f1a3 0208 	sub.w	r2, r3, #8
 8005a14:	685c      	ldr	r4, [r3, #4]
 8005a16:	4294      	cmp	r4, r2
 8005a18:	f000 8166 	beq.w	8005ce8 <_malloc_r+0x2fc>
 8005a1c:	6863      	ldr	r3, [r4, #4]
 8005a1e:	f023 0303 	bic.w	r3, r3, #3
 8005a22:	4423      	add	r3, r4
 8005a24:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005a28:	685a      	ldr	r2, [r3, #4]
 8005a2a:	60e9      	str	r1, [r5, #12]
 8005a2c:	f042 0201 	orr.w	r2, r2, #1
 8005a30:	608d      	str	r5, [r1, #8]
 8005a32:	4630      	mov	r0, r6
 8005a34:	605a      	str	r2, [r3, #4]
 8005a36:	f000 fae7 	bl	8006008 <__malloc_unlock>
 8005a3a:	3408      	adds	r4, #8
 8005a3c:	4620      	mov	r0, r4
 8005a3e:	b003      	add	sp, #12
 8005a40:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a44:	f035 0507 	bics.w	r5, r5, #7
 8005a48:	f100 8094 	bmi.w	8005b74 <_malloc_r+0x188>
 8005a4c:	42a9      	cmp	r1, r5
 8005a4e:	f200 8091 	bhi.w	8005b74 <_malloc_r+0x188>
 8005a52:	f000 fad3 	bl	8005ffc <__malloc_lock>
 8005a56:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005a5a:	f0c0 8183 	bcc.w	8005d64 <_malloc_r+0x378>
 8005a5e:	0a6b      	lsrs	r3, r5, #9
 8005a60:	f000 808f 	beq.w	8005b82 <_malloc_r+0x196>
 8005a64:	2b04      	cmp	r3, #4
 8005a66:	f200 8146 	bhi.w	8005cf6 <_malloc_r+0x30a>
 8005a6a:	09ab      	lsrs	r3, r5, #6
 8005a6c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005a70:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005a74:	00c3      	lsls	r3, r0, #3
 8005a76:	4fab      	ldr	r7, [pc, #684]	; (8005d24 <_malloc_r+0x338>)
 8005a78:	443b      	add	r3, r7
 8005a7a:	f1a3 0108 	sub.w	r1, r3, #8
 8005a7e:	685c      	ldr	r4, [r3, #4]
 8005a80:	42a1      	cmp	r1, r4
 8005a82:	d106      	bne.n	8005a92 <_malloc_r+0xa6>
 8005a84:	e00c      	b.n	8005aa0 <_malloc_r+0xb4>
 8005a86:	2a00      	cmp	r2, #0
 8005a88:	f280 811d 	bge.w	8005cc6 <_malloc_r+0x2da>
 8005a8c:	68e4      	ldr	r4, [r4, #12]
 8005a8e:	42a1      	cmp	r1, r4
 8005a90:	d006      	beq.n	8005aa0 <_malloc_r+0xb4>
 8005a92:	6863      	ldr	r3, [r4, #4]
 8005a94:	f023 0303 	bic.w	r3, r3, #3
 8005a98:	1b5a      	subs	r2, r3, r5
 8005a9a:	2a0f      	cmp	r2, #15
 8005a9c:	ddf3      	ble.n	8005a86 <_malloc_r+0x9a>
 8005a9e:	4660      	mov	r0, ip
 8005aa0:	693c      	ldr	r4, [r7, #16]
 8005aa2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005d38 <_malloc_r+0x34c>
 8005aa6:	4564      	cmp	r4, ip
 8005aa8:	d071      	beq.n	8005b8e <_malloc_r+0x1a2>
 8005aaa:	6863      	ldr	r3, [r4, #4]
 8005aac:	f023 0303 	bic.w	r3, r3, #3
 8005ab0:	1b5a      	subs	r2, r3, r5
 8005ab2:	2a0f      	cmp	r2, #15
 8005ab4:	f300 8144 	bgt.w	8005d40 <_malloc_r+0x354>
 8005ab8:	2a00      	cmp	r2, #0
 8005aba:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005abe:	f280 8126 	bge.w	8005d0e <_malloc_r+0x322>
 8005ac2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005ac6:	f080 8169 	bcs.w	8005d9c <_malloc_r+0x3b0>
 8005aca:	08db      	lsrs	r3, r3, #3
 8005acc:	1c59      	adds	r1, r3, #1
 8005ace:	687a      	ldr	r2, [r7, #4]
 8005ad0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005ad4:	f8c4 8008 	str.w	r8, [r4, #8]
 8005ad8:	f04f 0e01 	mov.w	lr, #1
 8005adc:	109b      	asrs	r3, r3, #2
 8005ade:	fa0e f303 	lsl.w	r3, lr, r3
 8005ae2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005ae6:	4313      	orrs	r3, r2
 8005ae8:	f1ae 0208 	sub.w	r2, lr, #8
 8005aec:	60e2      	str	r2, [r4, #12]
 8005aee:	607b      	str	r3, [r7, #4]
 8005af0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005af4:	f8c8 400c 	str.w	r4, [r8, #12]
 8005af8:	1082      	asrs	r2, r0, #2
 8005afa:	2401      	movs	r4, #1
 8005afc:	4094      	lsls	r4, r2
 8005afe:	429c      	cmp	r4, r3
 8005b00:	d84b      	bhi.n	8005b9a <_malloc_r+0x1ae>
 8005b02:	421c      	tst	r4, r3
 8005b04:	d106      	bne.n	8005b14 <_malloc_r+0x128>
 8005b06:	f020 0003 	bic.w	r0, r0, #3
 8005b0a:	0064      	lsls	r4, r4, #1
 8005b0c:	421c      	tst	r4, r3
 8005b0e:	f100 0004 	add.w	r0, r0, #4
 8005b12:	d0fa      	beq.n	8005b0a <_malloc_r+0x11e>
 8005b14:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005b18:	46ce      	mov	lr, r9
 8005b1a:	4680      	mov	r8, r0
 8005b1c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005b20:	459e      	cmp	lr, r3
 8005b22:	d107      	bne.n	8005b34 <_malloc_r+0x148>
 8005b24:	e122      	b.n	8005d6c <_malloc_r+0x380>
 8005b26:	2a00      	cmp	r2, #0
 8005b28:	f280 8129 	bge.w	8005d7e <_malloc_r+0x392>
 8005b2c:	68db      	ldr	r3, [r3, #12]
 8005b2e:	459e      	cmp	lr, r3
 8005b30:	f000 811c 	beq.w	8005d6c <_malloc_r+0x380>
 8005b34:	6859      	ldr	r1, [r3, #4]
 8005b36:	f021 0103 	bic.w	r1, r1, #3
 8005b3a:	1b4a      	subs	r2, r1, r5
 8005b3c:	2a0f      	cmp	r2, #15
 8005b3e:	ddf2      	ble.n	8005b26 <_malloc_r+0x13a>
 8005b40:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005b44:	195c      	adds	r4, r3, r5
 8005b46:	f045 0501 	orr.w	r5, r5, #1
 8005b4a:	605d      	str	r5, [r3, #4]
 8005b4c:	f042 0501 	orr.w	r5, r2, #1
 8005b50:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005b54:	4630      	mov	r0, r6
 8005b56:	f8ce 8008 	str.w	r8, [lr, #8]
 8005b5a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005b5e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005b62:	6065      	str	r5, [r4, #4]
 8005b64:	505a      	str	r2, [r3, r1]
 8005b66:	9301      	str	r3, [sp, #4]
 8005b68:	f000 fa4e 	bl	8006008 <__malloc_unlock>
 8005b6c:	9b01      	ldr	r3, [sp, #4]
 8005b6e:	f103 0408 	add.w	r4, r3, #8
 8005b72:	e763      	b.n	8005a3c <_malloc_r+0x50>
 8005b74:	2400      	movs	r4, #0
 8005b76:	230c      	movs	r3, #12
 8005b78:	4620      	mov	r0, r4
 8005b7a:	6033      	str	r3, [r6, #0]
 8005b7c:	b003      	add	sp, #12
 8005b7e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b82:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005b86:	2040      	movs	r0, #64	; 0x40
 8005b88:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005b8c:	e773      	b.n	8005a76 <_malloc_r+0x8a>
 8005b8e:	687b      	ldr	r3, [r7, #4]
 8005b90:	1082      	asrs	r2, r0, #2
 8005b92:	2401      	movs	r4, #1
 8005b94:	4094      	lsls	r4, r2
 8005b96:	429c      	cmp	r4, r3
 8005b98:	d9b3      	bls.n	8005b02 <_malloc_r+0x116>
 8005b9a:	68bc      	ldr	r4, [r7, #8]
 8005b9c:	6863      	ldr	r3, [r4, #4]
 8005b9e:	f023 0903 	bic.w	r9, r3, #3
 8005ba2:	45a9      	cmp	r9, r5
 8005ba4:	d303      	bcc.n	8005bae <_malloc_r+0x1c2>
 8005ba6:	eba9 0305 	sub.w	r3, r9, r5
 8005baa:	2b0f      	cmp	r3, #15
 8005bac:	dc7b      	bgt.n	8005ca6 <_malloc_r+0x2ba>
 8005bae:	4b5e      	ldr	r3, [pc, #376]	; (8005d28 <_malloc_r+0x33c>)
 8005bb0:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005d3c <_malloc_r+0x350>
 8005bb4:	681a      	ldr	r2, [r3, #0]
 8005bb6:	f8da 3000 	ldr.w	r3, [sl]
 8005bba:	3301      	adds	r3, #1
 8005bbc:	eb05 0802 	add.w	r8, r5, r2
 8005bc0:	f000 8148 	beq.w	8005e54 <_malloc_r+0x468>
 8005bc4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005bc8:	f108 080f 	add.w	r8, r8, #15
 8005bcc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005bd0:	f028 080f 	bic.w	r8, r8, #15
 8005bd4:	4641      	mov	r1, r8
 8005bd6:	4630      	mov	r0, r6
 8005bd8:	f000 ff08 	bl	80069ec <_sbrk_r>
 8005bdc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005be0:	4683      	mov	fp, r0
 8005be2:	f000 8104 	beq.w	8005dee <_malloc_r+0x402>
 8005be6:	eb04 0009 	add.w	r0, r4, r9
 8005bea:	4558      	cmp	r0, fp
 8005bec:	f200 80fd 	bhi.w	8005dea <_malloc_r+0x3fe>
 8005bf0:	4a4e      	ldr	r2, [pc, #312]	; (8005d2c <_malloc_r+0x340>)
 8005bf2:	6813      	ldr	r3, [r2, #0]
 8005bf4:	4443      	add	r3, r8
 8005bf6:	6013      	str	r3, [r2, #0]
 8005bf8:	f000 814d 	beq.w	8005e96 <_malloc_r+0x4aa>
 8005bfc:	f8da 1000 	ldr.w	r1, [sl]
 8005c00:	3101      	adds	r1, #1
 8005c02:	bf1b      	ittet	ne
 8005c04:	ebab 0000 	subne.w	r0, fp, r0
 8005c08:	181b      	addne	r3, r3, r0
 8005c0a:	f8ca b000 	streq.w	fp, [sl]
 8005c0e:	6013      	strne	r3, [r2, #0]
 8005c10:	f01b 0307 	ands.w	r3, fp, #7
 8005c14:	f000 8134 	beq.w	8005e80 <_malloc_r+0x494>
 8005c18:	f1c3 0108 	rsb	r1, r3, #8
 8005c1c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005c20:	448b      	add	fp, r1
 8005c22:	3308      	adds	r3, #8
 8005c24:	44d8      	add	r8, fp
 8005c26:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005c2a:	eba3 0808 	sub.w	r8, r3, r8
 8005c2e:	4641      	mov	r1, r8
 8005c30:	4630      	mov	r0, r6
 8005c32:	9201      	str	r2, [sp, #4]
 8005c34:	f000 feda 	bl	80069ec <_sbrk_r>
 8005c38:	1c43      	adds	r3, r0, #1
 8005c3a:	9a01      	ldr	r2, [sp, #4]
 8005c3c:	f000 8146 	beq.w	8005ecc <_malloc_r+0x4e0>
 8005c40:	eba0 010b 	sub.w	r1, r0, fp
 8005c44:	4441      	add	r1, r8
 8005c46:	f041 0101 	orr.w	r1, r1, #1
 8005c4a:	6813      	ldr	r3, [r2, #0]
 8005c4c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005c50:	4443      	add	r3, r8
 8005c52:	42bc      	cmp	r4, r7
 8005c54:	f8cb 1004 	str.w	r1, [fp, #4]
 8005c58:	6013      	str	r3, [r2, #0]
 8005c5a:	d015      	beq.n	8005c88 <_malloc_r+0x29c>
 8005c5c:	f1b9 0f0f 	cmp.w	r9, #15
 8005c60:	f240 8130 	bls.w	8005ec4 <_malloc_r+0x4d8>
 8005c64:	6860      	ldr	r0, [r4, #4]
 8005c66:	f1a9 010c 	sub.w	r1, r9, #12
 8005c6a:	f021 0107 	bic.w	r1, r1, #7
 8005c6e:	f000 0001 	and.w	r0, r0, #1
 8005c72:	eb04 0c01 	add.w	ip, r4, r1
 8005c76:	4308      	orrs	r0, r1
 8005c78:	f04f 0e05 	mov.w	lr, #5
 8005c7c:	290f      	cmp	r1, #15
 8005c7e:	6060      	str	r0, [r4, #4]
 8005c80:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005c84:	f200 813a 	bhi.w	8005efc <_malloc_r+0x510>
 8005c88:	4a29      	ldr	r2, [pc, #164]	; (8005d30 <_malloc_r+0x344>)
 8005c8a:	482a      	ldr	r0, [pc, #168]	; (8005d34 <_malloc_r+0x348>)
 8005c8c:	6811      	ldr	r1, [r2, #0]
 8005c8e:	68bc      	ldr	r4, [r7, #8]
 8005c90:	428b      	cmp	r3, r1
 8005c92:	6801      	ldr	r1, [r0, #0]
 8005c94:	bf88      	it	hi
 8005c96:	6013      	strhi	r3, [r2, #0]
 8005c98:	6862      	ldr	r2, [r4, #4]
 8005c9a:	428b      	cmp	r3, r1
 8005c9c:	f022 0203 	bic.w	r2, r2, #3
 8005ca0:	bf88      	it	hi
 8005ca2:	6003      	strhi	r3, [r0, #0]
 8005ca4:	e0a7      	b.n	8005df6 <_malloc_r+0x40a>
 8005ca6:	1962      	adds	r2, r4, r5
 8005ca8:	f043 0301 	orr.w	r3, r3, #1
 8005cac:	f045 0501 	orr.w	r5, r5, #1
 8005cb0:	6065      	str	r5, [r4, #4]
 8005cb2:	4630      	mov	r0, r6
 8005cb4:	60ba      	str	r2, [r7, #8]
 8005cb6:	6053      	str	r3, [r2, #4]
 8005cb8:	f000 f9a6 	bl	8006008 <__malloc_unlock>
 8005cbc:	3408      	adds	r4, #8
 8005cbe:	4620      	mov	r0, r4
 8005cc0:	b003      	add	sp, #12
 8005cc2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005cc6:	4423      	add	r3, r4
 8005cc8:	68e1      	ldr	r1, [r4, #12]
 8005cca:	685a      	ldr	r2, [r3, #4]
 8005ccc:	68a5      	ldr	r5, [r4, #8]
 8005cce:	f042 0201 	orr.w	r2, r2, #1
 8005cd2:	60e9      	str	r1, [r5, #12]
 8005cd4:	4630      	mov	r0, r6
 8005cd6:	608d      	str	r5, [r1, #8]
 8005cd8:	605a      	str	r2, [r3, #4]
 8005cda:	f000 f995 	bl	8006008 <__malloc_unlock>
 8005cde:	3408      	adds	r4, #8
 8005ce0:	4620      	mov	r0, r4
 8005ce2:	b003      	add	sp, #12
 8005ce4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ce8:	68dc      	ldr	r4, [r3, #12]
 8005cea:	42a3      	cmp	r3, r4
 8005cec:	bf08      	it	eq
 8005cee:	3002      	addeq	r0, #2
 8005cf0:	f43f aed6 	beq.w	8005aa0 <_malloc_r+0xb4>
 8005cf4:	e692      	b.n	8005a1c <_malloc_r+0x30>
 8005cf6:	2b14      	cmp	r3, #20
 8005cf8:	d971      	bls.n	8005dde <_malloc_r+0x3f2>
 8005cfa:	2b54      	cmp	r3, #84	; 0x54
 8005cfc:	f200 80ad 	bhi.w	8005e5a <_malloc_r+0x46e>
 8005d00:	0b2b      	lsrs	r3, r5, #12
 8005d02:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005d06:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005d0a:	00c3      	lsls	r3, r0, #3
 8005d0c:	e6b3      	b.n	8005a76 <_malloc_r+0x8a>
 8005d0e:	4423      	add	r3, r4
 8005d10:	4630      	mov	r0, r6
 8005d12:	685a      	ldr	r2, [r3, #4]
 8005d14:	f042 0201 	orr.w	r2, r2, #1
 8005d18:	605a      	str	r2, [r3, #4]
 8005d1a:	3408      	adds	r4, #8
 8005d1c:	f000 f974 	bl	8006008 <__malloc_unlock>
 8005d20:	e68c      	b.n	8005a3c <_malloc_r+0x50>
 8005d22:	bf00      	nop
 8005d24:	2000044c 	.word	0x2000044c
 8005d28:	20000aa0 	.word	0x20000aa0
 8005d2c:	20000a70 	.word	0x20000a70
 8005d30:	20000a98 	.word	0x20000a98
 8005d34:	20000a9c 	.word	0x20000a9c
 8005d38:	20000454 	.word	0x20000454
 8005d3c:	20000854 	.word	0x20000854
 8005d40:	1961      	adds	r1, r4, r5
 8005d42:	f045 0e01 	orr.w	lr, r5, #1
 8005d46:	f042 0501 	orr.w	r5, r2, #1
 8005d4a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005d4e:	4630      	mov	r0, r6
 8005d50:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005d54:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005d58:	604d      	str	r5, [r1, #4]
 8005d5a:	50e2      	str	r2, [r4, r3]
 8005d5c:	f000 f954 	bl	8006008 <__malloc_unlock>
 8005d60:	3408      	adds	r4, #8
 8005d62:	e66b      	b.n	8005a3c <_malloc_r+0x50>
 8005d64:	08e8      	lsrs	r0, r5, #3
 8005d66:	f105 0308 	add.w	r3, r5, #8
 8005d6a:	e64f      	b.n	8005a0c <_malloc_r+0x20>
 8005d6c:	f108 0801 	add.w	r8, r8, #1
 8005d70:	f018 0f03 	tst.w	r8, #3
 8005d74:	f10e 0e08 	add.w	lr, lr, #8
 8005d78:	f47f aed0 	bne.w	8005b1c <_malloc_r+0x130>
 8005d7c:	e052      	b.n	8005e24 <_malloc_r+0x438>
 8005d7e:	4419      	add	r1, r3
 8005d80:	461c      	mov	r4, r3
 8005d82:	684a      	ldr	r2, [r1, #4]
 8005d84:	68db      	ldr	r3, [r3, #12]
 8005d86:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005d8a:	f042 0201 	orr.w	r2, r2, #1
 8005d8e:	604a      	str	r2, [r1, #4]
 8005d90:	4630      	mov	r0, r6
 8005d92:	60eb      	str	r3, [r5, #12]
 8005d94:	609d      	str	r5, [r3, #8]
 8005d96:	f000 f937 	bl	8006008 <__malloc_unlock>
 8005d9a:	e64f      	b.n	8005a3c <_malloc_r+0x50>
 8005d9c:	0a5a      	lsrs	r2, r3, #9
 8005d9e:	2a04      	cmp	r2, #4
 8005da0:	d935      	bls.n	8005e0e <_malloc_r+0x422>
 8005da2:	2a14      	cmp	r2, #20
 8005da4:	d86f      	bhi.n	8005e86 <_malloc_r+0x49a>
 8005da6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005daa:	00c9      	lsls	r1, r1, #3
 8005dac:	325b      	adds	r2, #91	; 0x5b
 8005dae:	eb07 0e01 	add.w	lr, r7, r1
 8005db2:	5879      	ldr	r1, [r7, r1]
 8005db4:	f1ae 0e08 	sub.w	lr, lr, #8
 8005db8:	458e      	cmp	lr, r1
 8005dba:	d058      	beq.n	8005e6e <_malloc_r+0x482>
 8005dbc:	684a      	ldr	r2, [r1, #4]
 8005dbe:	f022 0203 	bic.w	r2, r2, #3
 8005dc2:	429a      	cmp	r2, r3
 8005dc4:	d902      	bls.n	8005dcc <_malloc_r+0x3e0>
 8005dc6:	6889      	ldr	r1, [r1, #8]
 8005dc8:	458e      	cmp	lr, r1
 8005dca:	d1f7      	bne.n	8005dbc <_malloc_r+0x3d0>
 8005dcc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005dd0:	687b      	ldr	r3, [r7, #4]
 8005dd2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005dd6:	f8ce 4008 	str.w	r4, [lr, #8]
 8005dda:	60cc      	str	r4, [r1, #12]
 8005ddc:	e68c      	b.n	8005af8 <_malloc_r+0x10c>
 8005dde:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005de2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005de6:	00c3      	lsls	r3, r0, #3
 8005de8:	e645      	b.n	8005a76 <_malloc_r+0x8a>
 8005dea:	42bc      	cmp	r4, r7
 8005dec:	d072      	beq.n	8005ed4 <_malloc_r+0x4e8>
 8005dee:	68bc      	ldr	r4, [r7, #8]
 8005df0:	6862      	ldr	r2, [r4, #4]
 8005df2:	f022 0203 	bic.w	r2, r2, #3
 8005df6:	4295      	cmp	r5, r2
 8005df8:	eba2 0305 	sub.w	r3, r2, r5
 8005dfc:	d802      	bhi.n	8005e04 <_malloc_r+0x418>
 8005dfe:	2b0f      	cmp	r3, #15
 8005e00:	f73f af51 	bgt.w	8005ca6 <_malloc_r+0x2ba>
 8005e04:	4630      	mov	r0, r6
 8005e06:	f000 f8ff 	bl	8006008 <__malloc_unlock>
 8005e0a:	2400      	movs	r4, #0
 8005e0c:	e616      	b.n	8005a3c <_malloc_r+0x50>
 8005e0e:	099a      	lsrs	r2, r3, #6
 8005e10:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005e14:	00c9      	lsls	r1, r1, #3
 8005e16:	3238      	adds	r2, #56	; 0x38
 8005e18:	e7c9      	b.n	8005dae <_malloc_r+0x3c2>
 8005e1a:	f8d9 9000 	ldr.w	r9, [r9]
 8005e1e:	4599      	cmp	r9, r3
 8005e20:	f040 8083 	bne.w	8005f2a <_malloc_r+0x53e>
 8005e24:	f010 0f03 	tst.w	r0, #3
 8005e28:	f1a9 0308 	sub.w	r3, r9, #8
 8005e2c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005e30:	d1f3      	bne.n	8005e1a <_malloc_r+0x42e>
 8005e32:	687b      	ldr	r3, [r7, #4]
 8005e34:	ea23 0304 	bic.w	r3, r3, r4
 8005e38:	607b      	str	r3, [r7, #4]
 8005e3a:	0064      	lsls	r4, r4, #1
 8005e3c:	429c      	cmp	r4, r3
 8005e3e:	f63f aeac 	bhi.w	8005b9a <_malloc_r+0x1ae>
 8005e42:	b91c      	cbnz	r4, 8005e4c <_malloc_r+0x460>
 8005e44:	e6a9      	b.n	8005b9a <_malloc_r+0x1ae>
 8005e46:	0064      	lsls	r4, r4, #1
 8005e48:	f108 0804 	add.w	r8, r8, #4
 8005e4c:	421c      	tst	r4, r3
 8005e4e:	d0fa      	beq.n	8005e46 <_malloc_r+0x45a>
 8005e50:	4640      	mov	r0, r8
 8005e52:	e65f      	b.n	8005b14 <_malloc_r+0x128>
 8005e54:	f108 0810 	add.w	r8, r8, #16
 8005e58:	e6bc      	b.n	8005bd4 <_malloc_r+0x1e8>
 8005e5a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005e5e:	d826      	bhi.n	8005eae <_malloc_r+0x4c2>
 8005e60:	0beb      	lsrs	r3, r5, #15
 8005e62:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005e66:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005e6a:	00c3      	lsls	r3, r0, #3
 8005e6c:	e603      	b.n	8005a76 <_malloc_r+0x8a>
 8005e6e:	687b      	ldr	r3, [r7, #4]
 8005e70:	1092      	asrs	r2, r2, #2
 8005e72:	f04f 0801 	mov.w	r8, #1
 8005e76:	fa08 f202 	lsl.w	r2, r8, r2
 8005e7a:	4313      	orrs	r3, r2
 8005e7c:	607b      	str	r3, [r7, #4]
 8005e7e:	e7a8      	b.n	8005dd2 <_malloc_r+0x3e6>
 8005e80:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005e84:	e6ce      	b.n	8005c24 <_malloc_r+0x238>
 8005e86:	2a54      	cmp	r2, #84	; 0x54
 8005e88:	d829      	bhi.n	8005ede <_malloc_r+0x4f2>
 8005e8a:	0b1a      	lsrs	r2, r3, #12
 8005e8c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005e90:	00c9      	lsls	r1, r1, #3
 8005e92:	326e      	adds	r2, #110	; 0x6e
 8005e94:	e78b      	b.n	8005dae <_malloc_r+0x3c2>
 8005e96:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005e9a:	2900      	cmp	r1, #0
 8005e9c:	f47f aeae 	bne.w	8005bfc <_malloc_r+0x210>
 8005ea0:	eb09 0208 	add.w	r2, r9, r8
 8005ea4:	68b9      	ldr	r1, [r7, #8]
 8005ea6:	f042 0201 	orr.w	r2, r2, #1
 8005eaa:	604a      	str	r2, [r1, #4]
 8005eac:	e6ec      	b.n	8005c88 <_malloc_r+0x29c>
 8005eae:	f240 5254 	movw	r2, #1364	; 0x554
 8005eb2:	4293      	cmp	r3, r2
 8005eb4:	d81c      	bhi.n	8005ef0 <_malloc_r+0x504>
 8005eb6:	0cab      	lsrs	r3, r5, #18
 8005eb8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8005ebc:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8005ec0:	00c3      	lsls	r3, r0, #3
 8005ec2:	e5d8      	b.n	8005a76 <_malloc_r+0x8a>
 8005ec4:	2301      	movs	r3, #1
 8005ec6:	f8cb 3004 	str.w	r3, [fp, #4]
 8005eca:	e79b      	b.n	8005e04 <_malloc_r+0x418>
 8005ecc:	2101      	movs	r1, #1
 8005ece:	f04f 0800 	mov.w	r8, #0
 8005ed2:	e6ba      	b.n	8005c4a <_malloc_r+0x25e>
 8005ed4:	4a16      	ldr	r2, [pc, #88]	; (8005f30 <_malloc_r+0x544>)
 8005ed6:	6813      	ldr	r3, [r2, #0]
 8005ed8:	4443      	add	r3, r8
 8005eda:	6013      	str	r3, [r2, #0]
 8005edc:	e68e      	b.n	8005bfc <_malloc_r+0x210>
 8005ede:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8005ee2:	d814      	bhi.n	8005f0e <_malloc_r+0x522>
 8005ee4:	0bda      	lsrs	r2, r3, #15
 8005ee6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8005eea:	00c9      	lsls	r1, r1, #3
 8005eec:	3277      	adds	r2, #119	; 0x77
 8005eee:	e75e      	b.n	8005dae <_malloc_r+0x3c2>
 8005ef0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8005ef4:	207f      	movs	r0, #127	; 0x7f
 8005ef6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8005efa:	e5bc      	b.n	8005a76 <_malloc_r+0x8a>
 8005efc:	f104 0108 	add.w	r1, r4, #8
 8005f00:	4630      	mov	r0, r6
 8005f02:	9201      	str	r2, [sp, #4]
 8005f04:	f7ff fa48 	bl	8005398 <_free_r>
 8005f08:	9a01      	ldr	r2, [sp, #4]
 8005f0a:	6813      	ldr	r3, [r2, #0]
 8005f0c:	e6bc      	b.n	8005c88 <_malloc_r+0x29c>
 8005f0e:	f240 5154 	movw	r1, #1364	; 0x554
 8005f12:	428a      	cmp	r2, r1
 8005f14:	d805      	bhi.n	8005f22 <_malloc_r+0x536>
 8005f16:	0c9a      	lsrs	r2, r3, #18
 8005f18:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8005f1c:	00c9      	lsls	r1, r1, #3
 8005f1e:	327c      	adds	r2, #124	; 0x7c
 8005f20:	e745      	b.n	8005dae <_malloc_r+0x3c2>
 8005f22:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8005f26:	227e      	movs	r2, #126	; 0x7e
 8005f28:	e741      	b.n	8005dae <_malloc_r+0x3c2>
 8005f2a:	687b      	ldr	r3, [r7, #4]
 8005f2c:	e785      	b.n	8005e3a <_malloc_r+0x44e>
 8005f2e:	bf00      	nop
 8005f30:	20000a70 	.word	0x20000a70

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

08005ffc <__malloc_lock>:
 8005ffc:	4801      	ldr	r0, [pc, #4]	; (8006004 <__malloc_lock+0x8>)
 8005ffe:	f7ff bc79 	b.w	80058f4 <__retarget_lock_acquire_recursive>
 8006002:	bf00      	nop
 8006004:	200011dc 	.word	0x200011dc

08006008 <__malloc_unlock>:
 8006008:	4801      	ldr	r0, [pc, #4]	; (8006010 <__malloc_unlock+0x8>)
 800600a:	f7ff bc75 	b.w	80058f8 <__retarget_lock_release_recursive>
 800600e:	bf00      	nop
 8006010:	200011dc 	.word	0x200011dc

08006014 <_Balloc>:
 8006014:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006016:	b570      	push	{r4, r5, r6, lr}
 8006018:	4605      	mov	r5, r0
 800601a:	460c      	mov	r4, r1
 800601c:	b14b      	cbz	r3, 8006032 <_Balloc+0x1e>
 800601e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006022:	b180      	cbz	r0, 8006046 <_Balloc+0x32>
 8006024:	6802      	ldr	r2, [r0, #0]
 8006026:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800602a:	2300      	movs	r3, #0
 800602c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006030:	bd70      	pop	{r4, r5, r6, pc}
 8006032:	2221      	movs	r2, #33	; 0x21
 8006034:	2104      	movs	r1, #4
 8006036:	f000 fe1d 	bl	8006c74 <_calloc_r>
 800603a:	4603      	mov	r3, r0
 800603c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800603e:	2800      	cmp	r0, #0
 8006040:	d1ed      	bne.n	800601e <_Balloc+0xa>
 8006042:	2000      	movs	r0, #0
 8006044:	bd70      	pop	{r4, r5, r6, pc}
 8006046:	2101      	movs	r1, #1
 8006048:	fa01 f604 	lsl.w	r6, r1, r4
 800604c:	1d72      	adds	r2, r6, #5
 800604e:	4628      	mov	r0, r5
 8006050:	0092      	lsls	r2, r2, #2
 8006052:	f000 fe0f 	bl	8006c74 <_calloc_r>
 8006056:	2800      	cmp	r0, #0
 8006058:	d0f3      	beq.n	8006042 <_Balloc+0x2e>
 800605a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800605e:	e7e4      	b.n	800602a <_Balloc+0x16>

08006060 <_Bfree>:
 8006060:	b131      	cbz	r1, 8006070 <_Bfree+0x10>
 8006062:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006064:	684a      	ldr	r2, [r1, #4]
 8006066:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800606a:	6008      	str	r0, [r1, #0]
 800606c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006070:	4770      	bx	lr
 8006072:	bf00      	nop

08006074 <__multadd>:
 8006074:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006076:	690c      	ldr	r4, [r1, #16]
 8006078:	b083      	sub	sp, #12
 800607a:	460d      	mov	r5, r1
 800607c:	4606      	mov	r6, r0
 800607e:	f101 0c14 	add.w	ip, r1, #20
 8006082:	2700      	movs	r7, #0
 8006084:	f8dc 0000 	ldr.w	r0, [ip]
 8006088:	b281      	uxth	r1, r0
 800608a:	fb02 3301 	mla	r3, r2, r1, r3
 800608e:	0c01      	lsrs	r1, r0, #16
 8006090:	0c18      	lsrs	r0, r3, #16
 8006092:	fb02 0101 	mla	r1, r2, r1, r0
 8006096:	b29b      	uxth	r3, r3
 8006098:	3701      	adds	r7, #1
 800609a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800609e:	42bc      	cmp	r4, r7
 80060a0:	f84c 3b04 	str.w	r3, [ip], #4
 80060a4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80060a8:	dcec      	bgt.n	8006084 <__multadd+0x10>
 80060aa:	b13b      	cbz	r3, 80060bc <__multadd+0x48>
 80060ac:	68aa      	ldr	r2, [r5, #8]
 80060ae:	42a2      	cmp	r2, r4
 80060b0:	dd07      	ble.n	80060c2 <__multadd+0x4e>
 80060b2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80060b6:	3401      	adds	r4, #1
 80060b8:	6153      	str	r3, [r2, #20]
 80060ba:	612c      	str	r4, [r5, #16]
 80060bc:	4628      	mov	r0, r5
 80060be:	b003      	add	sp, #12
 80060c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80060c2:	6869      	ldr	r1, [r5, #4]
 80060c4:	9301      	str	r3, [sp, #4]
 80060c6:	3101      	adds	r1, #1
 80060c8:	4630      	mov	r0, r6
 80060ca:	f7ff ffa3 	bl	8006014 <_Balloc>
 80060ce:	692a      	ldr	r2, [r5, #16]
 80060d0:	3202      	adds	r2, #2
 80060d2:	f105 010c 	add.w	r1, r5, #12
 80060d6:	4607      	mov	r7, r0
 80060d8:	0092      	lsls	r2, r2, #2
 80060da:	300c      	adds	r0, #12
 80060dc:	f7fa fa10 	bl	8000500 <memcpy>
 80060e0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80060e2:	6869      	ldr	r1, [r5, #4]
 80060e4:	9b01      	ldr	r3, [sp, #4]
 80060e6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80060ea:	6028      	str	r0, [r5, #0]
 80060ec:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80060f0:	463d      	mov	r5, r7
 80060f2:	e7de      	b.n	80060b2 <__multadd+0x3e>

080060f4 <__hi0bits>:
 80060f4:	0c02      	lsrs	r2, r0, #16
 80060f6:	0412      	lsls	r2, r2, #16
 80060f8:	4603      	mov	r3, r0
 80060fa:	b9c2      	cbnz	r2, 800612e <__hi0bits+0x3a>
 80060fc:	0403      	lsls	r3, r0, #16
 80060fe:	2010      	movs	r0, #16
 8006100:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006104:	bf04      	itt	eq
 8006106:	021b      	lsleq	r3, r3, #8
 8006108:	3008      	addeq	r0, #8
 800610a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800610e:	bf04      	itt	eq
 8006110:	011b      	lsleq	r3, r3, #4
 8006112:	3004      	addeq	r0, #4
 8006114:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006118:	bf04      	itt	eq
 800611a:	009b      	lsleq	r3, r3, #2
 800611c:	3002      	addeq	r0, #2
 800611e:	2b00      	cmp	r3, #0
 8006120:	db04      	blt.n	800612c <__hi0bits+0x38>
 8006122:	005b      	lsls	r3, r3, #1
 8006124:	d501      	bpl.n	800612a <__hi0bits+0x36>
 8006126:	3001      	adds	r0, #1
 8006128:	4770      	bx	lr
 800612a:	2020      	movs	r0, #32
 800612c:	4770      	bx	lr
 800612e:	2000      	movs	r0, #0
 8006130:	e7e6      	b.n	8006100 <__hi0bits+0xc>
 8006132:	bf00      	nop

08006134 <__lo0bits>:
 8006134:	6803      	ldr	r3, [r0, #0]
 8006136:	f013 0207 	ands.w	r2, r3, #7
 800613a:	4601      	mov	r1, r0
 800613c:	d007      	beq.n	800614e <__lo0bits+0x1a>
 800613e:	07da      	lsls	r2, r3, #31
 8006140:	d41f      	bmi.n	8006182 <__lo0bits+0x4e>
 8006142:	0798      	lsls	r0, r3, #30
 8006144:	d51f      	bpl.n	8006186 <__lo0bits+0x52>
 8006146:	085b      	lsrs	r3, r3, #1
 8006148:	600b      	str	r3, [r1, #0]
 800614a:	2001      	movs	r0, #1
 800614c:	4770      	bx	lr
 800614e:	b298      	uxth	r0, r3
 8006150:	b1a0      	cbz	r0, 800617c <__lo0bits+0x48>
 8006152:	4610      	mov	r0, r2
 8006154:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006158:	bf04      	itt	eq
 800615a:	0a1b      	lsreq	r3, r3, #8
 800615c:	3008      	addeq	r0, #8
 800615e:	071a      	lsls	r2, r3, #28
 8006160:	bf04      	itt	eq
 8006162:	091b      	lsreq	r3, r3, #4
 8006164:	3004      	addeq	r0, #4
 8006166:	079a      	lsls	r2, r3, #30
 8006168:	bf04      	itt	eq
 800616a:	089b      	lsreq	r3, r3, #2
 800616c:	3002      	addeq	r0, #2
 800616e:	07da      	lsls	r2, r3, #31
 8006170:	d402      	bmi.n	8006178 <__lo0bits+0x44>
 8006172:	085b      	lsrs	r3, r3, #1
 8006174:	d00b      	beq.n	800618e <__lo0bits+0x5a>
 8006176:	3001      	adds	r0, #1
 8006178:	600b      	str	r3, [r1, #0]
 800617a:	4770      	bx	lr
 800617c:	0c1b      	lsrs	r3, r3, #16
 800617e:	2010      	movs	r0, #16
 8006180:	e7e8      	b.n	8006154 <__lo0bits+0x20>
 8006182:	2000      	movs	r0, #0
 8006184:	4770      	bx	lr
 8006186:	089b      	lsrs	r3, r3, #2
 8006188:	600b      	str	r3, [r1, #0]
 800618a:	2002      	movs	r0, #2
 800618c:	4770      	bx	lr
 800618e:	2020      	movs	r0, #32
 8006190:	4770      	bx	lr
 8006192:	bf00      	nop

08006194 <__i2b>:
 8006194:	b510      	push	{r4, lr}
 8006196:	460c      	mov	r4, r1
 8006198:	2101      	movs	r1, #1
 800619a:	f7ff ff3b 	bl	8006014 <_Balloc>
 800619e:	2201      	movs	r2, #1
 80061a0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80061a4:	bd10      	pop	{r4, pc}
 80061a6:	bf00      	nop

080061a8 <__multiply>:
 80061a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80061ac:	690e      	ldr	r6, [r1, #16]
 80061ae:	6914      	ldr	r4, [r2, #16]
 80061b0:	42a6      	cmp	r6, r4
 80061b2:	b083      	sub	sp, #12
 80061b4:	460f      	mov	r7, r1
 80061b6:	4615      	mov	r5, r2
 80061b8:	da04      	bge.n	80061c4 <__multiply+0x1c>
 80061ba:	4632      	mov	r2, r6
 80061bc:	462f      	mov	r7, r5
 80061be:	4626      	mov	r6, r4
 80061c0:	460d      	mov	r5, r1
 80061c2:	4614      	mov	r4, r2
 80061c4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80061c8:	eb06 0804 	add.w	r8, r6, r4
 80061cc:	4543      	cmp	r3, r8
 80061ce:	bfb8      	it	lt
 80061d0:	3101      	addlt	r1, #1
 80061d2:	f7ff ff1f 	bl	8006014 <_Balloc>
 80061d6:	f100 0914 	add.w	r9, r0, #20
 80061da:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80061de:	45f1      	cmp	r9, lr
 80061e0:	9000      	str	r0, [sp, #0]
 80061e2:	d205      	bcs.n	80061f0 <__multiply+0x48>
 80061e4:	464b      	mov	r3, r9
 80061e6:	2200      	movs	r2, #0
 80061e8:	f843 2b04 	str.w	r2, [r3], #4
 80061ec:	459e      	cmp	lr, r3
 80061ee:	d8fb      	bhi.n	80061e8 <__multiply+0x40>
 80061f0:	f105 0a14 	add.w	sl, r5, #20
 80061f4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80061f8:	f107 0314 	add.w	r3, r7, #20
 80061fc:	45a2      	cmp	sl, r4
 80061fe:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006202:	d261      	bcs.n	80062c8 <__multiply+0x120>
 8006204:	1b64      	subs	r4, r4, r5
 8006206:	3c15      	subs	r4, #21
 8006208:	f024 0403 	bic.w	r4, r4, #3
 800620c:	f8cd e004 	str.w	lr, [sp, #4]
 8006210:	44a2      	add	sl, r4
 8006212:	f105 0210 	add.w	r2, r5, #16
 8006216:	469e      	mov	lr, r3
 8006218:	e005      	b.n	8006226 <__multiply+0x7e>
 800621a:	0c2d      	lsrs	r5, r5, #16
 800621c:	d12b      	bne.n	8006276 <__multiply+0xce>
 800621e:	4592      	cmp	sl, r2
 8006220:	f109 0904 	add.w	r9, r9, #4
 8006224:	d04e      	beq.n	80062c4 <__multiply+0x11c>
 8006226:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800622a:	fa1f fb85 	uxth.w	fp, r5
 800622e:	f1bb 0f00 	cmp.w	fp, #0
 8006232:	d0f2      	beq.n	800621a <__multiply+0x72>
 8006234:	4677      	mov	r7, lr
 8006236:	464e      	mov	r6, r9
 8006238:	2000      	movs	r0, #0
 800623a:	e000      	b.n	800623e <__multiply+0x96>
 800623c:	4626      	mov	r6, r4
 800623e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006242:	6834      	ldr	r4, [r6, #0]
 8006244:	b28b      	uxth	r3, r1
 8006246:	b2a5      	uxth	r5, r4
 8006248:	0c09      	lsrs	r1, r1, #16
 800624a:	0c24      	lsrs	r4, r4, #16
 800624c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006250:	4403      	add	r3, r0
 8006252:	fb0b 4001 	mla	r0, fp, r1, r4
 8006256:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800625a:	4634      	mov	r4, r6
 800625c:	b29b      	uxth	r3, r3
 800625e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006262:	45bc      	cmp	ip, r7
 8006264:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006268:	f844 3b04 	str.w	r3, [r4], #4
 800626c:	d8e6      	bhi.n	800623c <__multiply+0x94>
 800626e:	6070      	str	r0, [r6, #4]
 8006270:	6815      	ldr	r5, [r2, #0]
 8006272:	0c2d      	lsrs	r5, r5, #16
 8006274:	d0d3      	beq.n	800621e <__multiply+0x76>
 8006276:	f8d9 3000 	ldr.w	r3, [r9]
 800627a:	4676      	mov	r6, lr
 800627c:	4618      	mov	r0, r3
 800627e:	46cb      	mov	fp, r9
 8006280:	2100      	movs	r1, #0
 8006282:	e000      	b.n	8006286 <__multiply+0xde>
 8006284:	46a3      	mov	fp, r4
 8006286:	8834      	ldrh	r4, [r6, #0]
 8006288:	0c00      	lsrs	r0, r0, #16
 800628a:	fb05 0004 	mla	r0, r5, r4, r0
 800628e:	4401      	add	r1, r0
 8006290:	b29b      	uxth	r3, r3
 8006292:	465c      	mov	r4, fp
 8006294:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006298:	f844 3b04 	str.w	r3, [r4], #4
 800629c:	f856 3b04 	ldr.w	r3, [r6], #4
 80062a0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80062a4:	0c1b      	lsrs	r3, r3, #16
 80062a6:	b287      	uxth	r7, r0
 80062a8:	fb05 7303 	mla	r3, r5, r3, r7
 80062ac:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80062b0:	45b4      	cmp	ip, r6
 80062b2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80062b6:	d8e5      	bhi.n	8006284 <__multiply+0xdc>
 80062b8:	4592      	cmp	sl, r2
 80062ba:	f8cb 3004 	str.w	r3, [fp, #4]
 80062be:	f109 0904 	add.w	r9, r9, #4
 80062c2:	d1b0      	bne.n	8006226 <__multiply+0x7e>
 80062c4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80062c8:	f1b8 0f00 	cmp.w	r8, #0
 80062cc:	dd0b      	ble.n	80062e6 <__multiply+0x13e>
 80062ce:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80062d2:	f1ae 0e04 	sub.w	lr, lr, #4
 80062d6:	b11b      	cbz	r3, 80062e0 <__multiply+0x138>
 80062d8:	e005      	b.n	80062e6 <__multiply+0x13e>
 80062da:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80062de:	b913      	cbnz	r3, 80062e6 <__multiply+0x13e>
 80062e0:	f1b8 0801 	subs.w	r8, r8, #1
 80062e4:	d1f9      	bne.n	80062da <__multiply+0x132>
 80062e6:	9800      	ldr	r0, [sp, #0]
 80062e8:	f8c0 8010 	str.w	r8, [r0, #16]
 80062ec:	b003      	add	sp, #12
 80062ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80062f2:	bf00      	nop

080062f4 <__pow5mult>:
 80062f4:	f012 0303 	ands.w	r3, r2, #3
 80062f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80062fc:	4614      	mov	r4, r2
 80062fe:	4607      	mov	r7, r0
 8006300:	d12e      	bne.n	8006360 <__pow5mult+0x6c>
 8006302:	460d      	mov	r5, r1
 8006304:	10a4      	asrs	r4, r4, #2
 8006306:	d01c      	beq.n	8006342 <__pow5mult+0x4e>
 8006308:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800630a:	b396      	cbz	r6, 8006372 <__pow5mult+0x7e>
 800630c:	07e3      	lsls	r3, r4, #31
 800630e:	f04f 0800 	mov.w	r8, #0
 8006312:	d406      	bmi.n	8006322 <__pow5mult+0x2e>
 8006314:	1064      	asrs	r4, r4, #1
 8006316:	d014      	beq.n	8006342 <__pow5mult+0x4e>
 8006318:	6830      	ldr	r0, [r6, #0]
 800631a:	b1a8      	cbz	r0, 8006348 <__pow5mult+0x54>
 800631c:	4606      	mov	r6, r0
 800631e:	07e3      	lsls	r3, r4, #31
 8006320:	d5f8      	bpl.n	8006314 <__pow5mult+0x20>
 8006322:	4632      	mov	r2, r6
 8006324:	4629      	mov	r1, r5
 8006326:	4638      	mov	r0, r7
 8006328:	f7ff ff3e 	bl	80061a8 <__multiply>
 800632c:	b1b5      	cbz	r5, 800635c <__pow5mult+0x68>
 800632e:	686a      	ldr	r2, [r5, #4]
 8006330:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006332:	1064      	asrs	r4, r4, #1
 8006334:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006338:	6029      	str	r1, [r5, #0]
 800633a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800633e:	4605      	mov	r5, r0
 8006340:	d1ea      	bne.n	8006318 <__pow5mult+0x24>
 8006342:	4628      	mov	r0, r5
 8006344:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006348:	4632      	mov	r2, r6
 800634a:	4631      	mov	r1, r6
 800634c:	4638      	mov	r0, r7
 800634e:	f7ff ff2b 	bl	80061a8 <__multiply>
 8006352:	6030      	str	r0, [r6, #0]
 8006354:	f8c0 8000 	str.w	r8, [r0]
 8006358:	4606      	mov	r6, r0
 800635a:	e7e0      	b.n	800631e <__pow5mult+0x2a>
 800635c:	4605      	mov	r5, r0
 800635e:	e7d9      	b.n	8006314 <__pow5mult+0x20>
 8006360:	3b01      	subs	r3, #1
 8006362:	4a0b      	ldr	r2, [pc, #44]	; (8006390 <__pow5mult+0x9c>)
 8006364:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006368:	2300      	movs	r3, #0
 800636a:	f7ff fe83 	bl	8006074 <__multadd>
 800636e:	4605      	mov	r5, r0
 8006370:	e7c8      	b.n	8006304 <__pow5mult+0x10>
 8006372:	2101      	movs	r1, #1
 8006374:	4638      	mov	r0, r7
 8006376:	f7ff fe4d 	bl	8006014 <_Balloc>
 800637a:	f240 2371 	movw	r3, #625	; 0x271
 800637e:	6143      	str	r3, [r0, #20]
 8006380:	2201      	movs	r2, #1
 8006382:	2300      	movs	r3, #0
 8006384:	6102      	str	r2, [r0, #16]
 8006386:	4606      	mov	r6, r0
 8006388:	64b8      	str	r0, [r7, #72]	; 0x48
 800638a:	6003      	str	r3, [r0, #0]
 800638c:	e7be      	b.n	800630c <__pow5mult+0x18>
 800638e:	bf00      	nop
 8006390:	08007378 	.word	0x08007378

08006394 <__lshift>:
 8006394:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006398:	4691      	mov	r9, r2
 800639a:	690a      	ldr	r2, [r1, #16]
 800639c:	460e      	mov	r6, r1
 800639e:	ea4f 1469 	mov.w	r4, r9, asr #5
 80063a2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80063a6:	eb04 0802 	add.w	r8, r4, r2
 80063aa:	f108 0501 	add.w	r5, r8, #1
 80063ae:	429d      	cmp	r5, r3
 80063b0:	4607      	mov	r7, r0
 80063b2:	dd04      	ble.n	80063be <__lshift+0x2a>
 80063b4:	005b      	lsls	r3, r3, #1
 80063b6:	429d      	cmp	r5, r3
 80063b8:	f101 0101 	add.w	r1, r1, #1
 80063bc:	dcfa      	bgt.n	80063b4 <__lshift+0x20>
 80063be:	4638      	mov	r0, r7
 80063c0:	f7ff fe28 	bl	8006014 <_Balloc>
 80063c4:	2c00      	cmp	r4, #0
 80063c6:	f100 0314 	add.w	r3, r0, #20
 80063ca:	dd37      	ble.n	800643c <__lshift+0xa8>
 80063cc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80063d0:	2200      	movs	r2, #0
 80063d2:	f843 2b04 	str.w	r2, [r3], #4
 80063d6:	428b      	cmp	r3, r1
 80063d8:	d1fb      	bne.n	80063d2 <__lshift+0x3e>
 80063da:	6934      	ldr	r4, [r6, #16]
 80063dc:	f106 0314 	add.w	r3, r6, #20
 80063e0:	f019 091f 	ands.w	r9, r9, #31
 80063e4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80063e8:	d020      	beq.n	800642c <__lshift+0x98>
 80063ea:	f1c9 0e20 	rsb	lr, r9, #32
 80063ee:	2200      	movs	r2, #0
 80063f0:	e000      	b.n	80063f4 <__lshift+0x60>
 80063f2:	4651      	mov	r1, sl
 80063f4:	681c      	ldr	r4, [r3, #0]
 80063f6:	468a      	mov	sl, r1
 80063f8:	fa04 f409 	lsl.w	r4, r4, r9
 80063fc:	4314      	orrs	r4, r2
 80063fe:	f84a 4b04 	str.w	r4, [sl], #4
 8006402:	f853 2b04 	ldr.w	r2, [r3], #4
 8006406:	4563      	cmp	r3, ip
 8006408:	fa22 f20e 	lsr.w	r2, r2, lr
 800640c:	d3f1      	bcc.n	80063f2 <__lshift+0x5e>
 800640e:	604a      	str	r2, [r1, #4]
 8006410:	b10a      	cbz	r2, 8006416 <__lshift+0x82>
 8006412:	f108 0502 	add.w	r5, r8, #2
 8006416:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006418:	6872      	ldr	r2, [r6, #4]
 800641a:	3d01      	subs	r5, #1
 800641c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006420:	6105      	str	r5, [r0, #16]
 8006422:	6031      	str	r1, [r6, #0]
 8006424:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006428:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800642c:	3904      	subs	r1, #4
 800642e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006432:	f841 2f04 	str.w	r2, [r1, #4]!
 8006436:	459c      	cmp	ip, r3
 8006438:	d8f9      	bhi.n	800642e <__lshift+0x9a>
 800643a:	e7ec      	b.n	8006416 <__lshift+0x82>
 800643c:	4619      	mov	r1, r3
 800643e:	e7cc      	b.n	80063da <__lshift+0x46>

08006440 <__mcmp>:
 8006440:	b430      	push	{r4, r5}
 8006442:	690b      	ldr	r3, [r1, #16]
 8006444:	4605      	mov	r5, r0
 8006446:	6900      	ldr	r0, [r0, #16]
 8006448:	1ac0      	subs	r0, r0, r3
 800644a:	d10f      	bne.n	800646c <__mcmp+0x2c>
 800644c:	009b      	lsls	r3, r3, #2
 800644e:	3514      	adds	r5, #20
 8006450:	3114      	adds	r1, #20
 8006452:	4419      	add	r1, r3
 8006454:	442b      	add	r3, r5
 8006456:	e001      	b.n	800645c <__mcmp+0x1c>
 8006458:	429d      	cmp	r5, r3
 800645a:	d207      	bcs.n	800646c <__mcmp+0x2c>
 800645c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006460:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006464:	4294      	cmp	r4, r2
 8006466:	d0f7      	beq.n	8006458 <__mcmp+0x18>
 8006468:	d302      	bcc.n	8006470 <__mcmp+0x30>
 800646a:	2001      	movs	r0, #1
 800646c:	bc30      	pop	{r4, r5}
 800646e:	4770      	bx	lr
 8006470:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006474:	e7fa      	b.n	800646c <__mcmp+0x2c>
 8006476:	bf00      	nop

08006478 <__mdiff>:
 8006478:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800647c:	6913      	ldr	r3, [r2, #16]
 800647e:	690d      	ldr	r5, [r1, #16]
 8006480:	1aed      	subs	r5, r5, r3
 8006482:	2d00      	cmp	r5, #0
 8006484:	460e      	mov	r6, r1
 8006486:	4690      	mov	r8, r2
 8006488:	f101 0414 	add.w	r4, r1, #20
 800648c:	f102 0714 	add.w	r7, r2, #20
 8006490:	d114      	bne.n	80064bc <__mdiff+0x44>
 8006492:	009b      	lsls	r3, r3, #2
 8006494:	18e2      	adds	r2, r4, r3
 8006496:	443b      	add	r3, r7
 8006498:	e001      	b.n	800649e <__mdiff+0x26>
 800649a:	42a2      	cmp	r2, r4
 800649c:	d959      	bls.n	8006552 <__mdiff+0xda>
 800649e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80064a2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80064a6:	458c      	cmp	ip, r1
 80064a8:	d0f7      	beq.n	800649a <__mdiff+0x22>
 80064aa:	d209      	bcs.n	80064c0 <__mdiff+0x48>
 80064ac:	4622      	mov	r2, r4
 80064ae:	4633      	mov	r3, r6
 80064b0:	463c      	mov	r4, r7
 80064b2:	4646      	mov	r6, r8
 80064b4:	4617      	mov	r7, r2
 80064b6:	4698      	mov	r8, r3
 80064b8:	2501      	movs	r5, #1
 80064ba:	e001      	b.n	80064c0 <__mdiff+0x48>
 80064bc:	dbf6      	blt.n	80064ac <__mdiff+0x34>
 80064be:	2500      	movs	r5, #0
 80064c0:	6871      	ldr	r1, [r6, #4]
 80064c2:	f7ff fda7 	bl	8006014 <_Balloc>
 80064c6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80064ca:	6936      	ldr	r6, [r6, #16]
 80064cc:	60c5      	str	r5, [r0, #12]
 80064ce:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80064d2:	46bc      	mov	ip, r7
 80064d4:	f100 0514 	add.w	r5, r0, #20
 80064d8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80064dc:	2300      	movs	r3, #0
 80064de:	f85c 1b04 	ldr.w	r1, [ip], #4
 80064e2:	f854 8b04 	ldr.w	r8, [r4], #4
 80064e6:	b28a      	uxth	r2, r1
 80064e8:	fa13 f388 	uxtah	r3, r3, r8
 80064ec:	0c09      	lsrs	r1, r1, #16
 80064ee:	1a9a      	subs	r2, r3, r2
 80064f0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80064f4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80064f8:	b292      	uxth	r2, r2
 80064fa:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80064fe:	45e6      	cmp	lr, ip
 8006500:	f845 2b04 	str.w	r2, [r5], #4
 8006504:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006508:	d8e9      	bhi.n	80064de <__mdiff+0x66>
 800650a:	42a7      	cmp	r7, r4
 800650c:	d917      	bls.n	800653e <__mdiff+0xc6>
 800650e:	46ae      	mov	lr, r5
 8006510:	46a4      	mov	ip, r4
 8006512:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006516:	fa13 f382 	uxtah	r3, r3, r2
 800651a:	1419      	asrs	r1, r3, #16
 800651c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006520:	b29b      	uxth	r3, r3
 8006522:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006526:	4567      	cmp	r7, ip
 8006528:	f84e 2b04 	str.w	r2, [lr], #4
 800652c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006530:	d8ef      	bhi.n	8006512 <__mdiff+0x9a>
 8006532:	43e4      	mvns	r4, r4
 8006534:	4427      	add	r7, r4
 8006536:	f027 0703 	bic.w	r7, r7, #3
 800653a:	3704      	adds	r7, #4
 800653c:	443d      	add	r5, r7
 800653e:	3d04      	subs	r5, #4
 8006540:	b922      	cbnz	r2, 800654c <__mdiff+0xd4>
 8006542:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006546:	3e01      	subs	r6, #1
 8006548:	2b00      	cmp	r3, #0
 800654a:	d0fa      	beq.n	8006542 <__mdiff+0xca>
 800654c:	6106      	str	r6, [r0, #16]
 800654e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006552:	2100      	movs	r1, #0
 8006554:	f7ff fd5e 	bl	8006014 <_Balloc>
 8006558:	2201      	movs	r2, #1
 800655a:	2300      	movs	r3, #0
 800655c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006560:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006564 <__d2b>:
 8006564:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006568:	460f      	mov	r7, r1
 800656a:	b083      	sub	sp, #12
 800656c:	2101      	movs	r1, #1
 800656e:	ec55 4b10 	vmov	r4, r5, d0
 8006572:	4616      	mov	r6, r2
 8006574:	f7ff fd4e 	bl	8006014 <_Balloc>
 8006578:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800657c:	4681      	mov	r9, r0
 800657e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006582:	f1b8 0f00 	cmp.w	r8, #0
 8006586:	d001      	beq.n	800658c <__d2b+0x28>
 8006588:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800658c:	2c00      	cmp	r4, #0
 800658e:	9301      	str	r3, [sp, #4]
 8006590:	d024      	beq.n	80065dc <__d2b+0x78>
 8006592:	a802      	add	r0, sp, #8
 8006594:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006598:	f7ff fdcc 	bl	8006134 <__lo0bits>
 800659c:	2800      	cmp	r0, #0
 800659e:	d136      	bne.n	800660e <__d2b+0xaa>
 80065a0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80065a4:	f8c9 2014 	str.w	r2, [r9, #20]
 80065a8:	2b00      	cmp	r3, #0
 80065aa:	bf0c      	ite	eq
 80065ac:	2101      	moveq	r1, #1
 80065ae:	2102      	movne	r1, #2
 80065b0:	f8c9 3018 	str.w	r3, [r9, #24]
 80065b4:	f8c9 1010 	str.w	r1, [r9, #16]
 80065b8:	f1b8 0f00 	cmp.w	r8, #0
 80065bc:	d11b      	bne.n	80065f6 <__d2b+0x92>
 80065be:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80065c2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80065c6:	6038      	str	r0, [r7, #0]
 80065c8:	6918      	ldr	r0, [r3, #16]
 80065ca:	f7ff fd93 	bl	80060f4 <__hi0bits>
 80065ce:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80065d2:	6030      	str	r0, [r6, #0]
 80065d4:	4648      	mov	r0, r9
 80065d6:	b003      	add	sp, #12
 80065d8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80065dc:	a801      	add	r0, sp, #4
 80065de:	f7ff fda9 	bl	8006134 <__lo0bits>
 80065e2:	9b01      	ldr	r3, [sp, #4]
 80065e4:	f8c9 3014 	str.w	r3, [r9, #20]
 80065e8:	2101      	movs	r1, #1
 80065ea:	3020      	adds	r0, #32
 80065ec:	f8c9 1010 	str.w	r1, [r9, #16]
 80065f0:	f1b8 0f00 	cmp.w	r8, #0
 80065f4:	d0e3      	beq.n	80065be <__d2b+0x5a>
 80065f6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80065fa:	eb08 0300 	add.w	r3, r8, r0
 80065fe:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006602:	603b      	str	r3, [r7, #0]
 8006604:	6030      	str	r0, [r6, #0]
 8006606:	4648      	mov	r0, r9
 8006608:	b003      	add	sp, #12
 800660a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800660e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006612:	f1c0 0220 	rsb	r2, r0, #32
 8006616:	fa03 f202 	lsl.w	r2, r3, r2
 800661a:	430a      	orrs	r2, r1
 800661c:	40c3      	lsrs	r3, r0
 800661e:	9301      	str	r3, [sp, #4]
 8006620:	f8c9 2014 	str.w	r2, [r9, #20]
 8006624:	e7c0      	b.n	80065a8 <__d2b+0x44>
 8006626:	bf00      	nop

08006628 <_realloc_r>:
 8006628:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800662c:	4692      	mov	sl, r2
 800662e:	b083      	sub	sp, #12
 8006630:	2900      	cmp	r1, #0
 8006632:	f000 80a1 	beq.w	8006778 <_realloc_r+0x150>
 8006636:	460d      	mov	r5, r1
 8006638:	4680      	mov	r8, r0
 800663a:	f10a 040b 	add.w	r4, sl, #11
 800663e:	f7ff fcdd 	bl	8005ffc <__malloc_lock>
 8006642:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006646:	2c16      	cmp	r4, #22
 8006648:	f022 0603 	bic.w	r6, r2, #3
 800664c:	f1a5 0708 	sub.w	r7, r5, #8
 8006650:	d83e      	bhi.n	80066d0 <_realloc_r+0xa8>
 8006652:	2410      	movs	r4, #16
 8006654:	4621      	mov	r1, r4
 8006656:	45a2      	cmp	sl, r4
 8006658:	d83f      	bhi.n	80066da <_realloc_r+0xb2>
 800665a:	428e      	cmp	r6, r1
 800665c:	eb07 0906 	add.w	r9, r7, r6
 8006660:	da74      	bge.n	800674c <_realloc_r+0x124>
 8006662:	4bc7      	ldr	r3, [pc, #796]	; (8006980 <_realloc_r+0x358>)
 8006664:	6898      	ldr	r0, [r3, #8]
 8006666:	4548      	cmp	r0, r9
 8006668:	f000 80aa 	beq.w	80067c0 <_realloc_r+0x198>
 800666c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006670:	f020 0301 	bic.w	r3, r0, #1
 8006674:	444b      	add	r3, r9
 8006676:	685b      	ldr	r3, [r3, #4]
 8006678:	07db      	lsls	r3, r3, #31
 800667a:	f140 8083 	bpl.w	8006784 <_realloc_r+0x15c>
 800667e:	07d2      	lsls	r2, r2, #31
 8006680:	d534      	bpl.n	80066ec <_realloc_r+0xc4>
 8006682:	4651      	mov	r1, sl
 8006684:	4640      	mov	r0, r8
 8006686:	f7ff f9b1 	bl	80059ec <_malloc_r>
 800668a:	4682      	mov	sl, r0
 800668c:	b1e0      	cbz	r0, 80066c8 <_realloc_r+0xa0>
 800668e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006692:	f023 0301 	bic.w	r3, r3, #1
 8006696:	443b      	add	r3, r7
 8006698:	f1a0 0208 	sub.w	r2, r0, #8
 800669c:	4293      	cmp	r3, r2
 800669e:	f000 80f9 	beq.w	8006894 <_realloc_r+0x26c>
 80066a2:	1f32      	subs	r2, r6, #4
 80066a4:	2a24      	cmp	r2, #36	; 0x24
 80066a6:	f200 8107 	bhi.w	80068b8 <_realloc_r+0x290>
 80066aa:	2a13      	cmp	r2, #19
 80066ac:	6829      	ldr	r1, [r5, #0]
 80066ae:	f200 80e6 	bhi.w	800687e <_realloc_r+0x256>
 80066b2:	4603      	mov	r3, r0
 80066b4:	462a      	mov	r2, r5
 80066b6:	6019      	str	r1, [r3, #0]
 80066b8:	6851      	ldr	r1, [r2, #4]
 80066ba:	6059      	str	r1, [r3, #4]
 80066bc:	6892      	ldr	r2, [r2, #8]
 80066be:	609a      	str	r2, [r3, #8]
 80066c0:	4629      	mov	r1, r5
 80066c2:	4640      	mov	r0, r8
 80066c4:	f7fe fe68 	bl	8005398 <_free_r>
 80066c8:	4640      	mov	r0, r8
 80066ca:	f7ff fc9d 	bl	8006008 <__malloc_unlock>
 80066ce:	e04f      	b.n	8006770 <_realloc_r+0x148>
 80066d0:	f024 0407 	bic.w	r4, r4, #7
 80066d4:	2c00      	cmp	r4, #0
 80066d6:	4621      	mov	r1, r4
 80066d8:	dabd      	bge.n	8006656 <_realloc_r+0x2e>
 80066da:	f04f 0a00 	mov.w	sl, #0
 80066de:	230c      	movs	r3, #12
 80066e0:	4650      	mov	r0, sl
 80066e2:	f8c8 3000 	str.w	r3, [r8]
 80066e6:	b003      	add	sp, #12
 80066e8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80066ec:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80066f0:	eba7 0b03 	sub.w	fp, r7, r3
 80066f4:	f8db 2004 	ldr.w	r2, [fp, #4]
 80066f8:	f022 0203 	bic.w	r2, r2, #3
 80066fc:	18b3      	adds	r3, r6, r2
 80066fe:	428b      	cmp	r3, r1
 8006700:	dbbf      	blt.n	8006682 <_realloc_r+0x5a>
 8006702:	46da      	mov	sl, fp
 8006704:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006708:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800670c:	1f32      	subs	r2, r6, #4
 800670e:	2a24      	cmp	r2, #36	; 0x24
 8006710:	60c1      	str	r1, [r0, #12]
 8006712:	eb0b 0903 	add.w	r9, fp, r3
 8006716:	6088      	str	r0, [r1, #8]
 8006718:	f200 80c6 	bhi.w	80068a8 <_realloc_r+0x280>
 800671c:	2a13      	cmp	r2, #19
 800671e:	6829      	ldr	r1, [r5, #0]
 8006720:	f240 80c0 	bls.w	80068a4 <_realloc_r+0x27c>
 8006724:	f8cb 1008 	str.w	r1, [fp, #8]
 8006728:	6869      	ldr	r1, [r5, #4]
 800672a:	f8cb 100c 	str.w	r1, [fp, #12]
 800672e:	2a1b      	cmp	r2, #27
 8006730:	68a9      	ldr	r1, [r5, #8]
 8006732:	f200 80d8 	bhi.w	80068e6 <_realloc_r+0x2be>
 8006736:	f10b 0210 	add.w	r2, fp, #16
 800673a:	3508      	adds	r5, #8
 800673c:	6011      	str	r1, [r2, #0]
 800673e:	6869      	ldr	r1, [r5, #4]
 8006740:	6051      	str	r1, [r2, #4]
 8006742:	68a9      	ldr	r1, [r5, #8]
 8006744:	6091      	str	r1, [r2, #8]
 8006746:	461e      	mov	r6, r3
 8006748:	465f      	mov	r7, fp
 800674a:	4655      	mov	r5, sl
 800674c:	687b      	ldr	r3, [r7, #4]
 800674e:	1b32      	subs	r2, r6, r4
 8006750:	2a0f      	cmp	r2, #15
 8006752:	f003 0301 	and.w	r3, r3, #1
 8006756:	d822      	bhi.n	800679e <_realloc_r+0x176>
 8006758:	4333      	orrs	r3, r6
 800675a:	607b      	str	r3, [r7, #4]
 800675c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006760:	f043 0301 	orr.w	r3, r3, #1
 8006764:	f8c9 3004 	str.w	r3, [r9, #4]
 8006768:	4640      	mov	r0, r8
 800676a:	f7ff fc4d 	bl	8006008 <__malloc_unlock>
 800676e:	46aa      	mov	sl, r5
 8006770:	4650      	mov	r0, sl
 8006772:	b003      	add	sp, #12
 8006774:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006778:	4611      	mov	r1, r2
 800677a:	b003      	add	sp, #12
 800677c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006780:	f7ff b934 	b.w	80059ec <_malloc_r>
 8006784:	f020 0003 	bic.w	r0, r0, #3
 8006788:	1833      	adds	r3, r6, r0
 800678a:	428b      	cmp	r3, r1
 800678c:	db61      	blt.n	8006852 <_realloc_r+0x22a>
 800678e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006792:	461e      	mov	r6, r3
 8006794:	60ca      	str	r2, [r1, #12]
 8006796:	eb07 0903 	add.w	r9, r7, r3
 800679a:	6091      	str	r1, [r2, #8]
 800679c:	e7d6      	b.n	800674c <_realloc_r+0x124>
 800679e:	1939      	adds	r1, r7, r4
 80067a0:	4323      	orrs	r3, r4
 80067a2:	f042 0201 	orr.w	r2, r2, #1
 80067a6:	607b      	str	r3, [r7, #4]
 80067a8:	604a      	str	r2, [r1, #4]
 80067aa:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80067ae:	f043 0301 	orr.w	r3, r3, #1
 80067b2:	3108      	adds	r1, #8
 80067b4:	f8c9 3004 	str.w	r3, [r9, #4]
 80067b8:	4640      	mov	r0, r8
 80067ba:	f7fe fded 	bl	8005398 <_free_r>
 80067be:	e7d3      	b.n	8006768 <_realloc_r+0x140>
 80067c0:	6840      	ldr	r0, [r0, #4]
 80067c2:	f020 0903 	bic.w	r9, r0, #3
 80067c6:	44b1      	add	r9, r6
 80067c8:	f104 0010 	add.w	r0, r4, #16
 80067cc:	4581      	cmp	r9, r0
 80067ce:	da77      	bge.n	80068c0 <_realloc_r+0x298>
 80067d0:	07d2      	lsls	r2, r2, #31
 80067d2:	f53f af56 	bmi.w	8006682 <_realloc_r+0x5a>
 80067d6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80067da:	eba7 0b02 	sub.w	fp, r7, r2
 80067de:	f8db 2004 	ldr.w	r2, [fp, #4]
 80067e2:	f022 0203 	bic.w	r2, r2, #3
 80067e6:	4491      	add	r9, r2
 80067e8:	4548      	cmp	r0, r9
 80067ea:	dc87      	bgt.n	80066fc <_realloc_r+0xd4>
 80067ec:	46da      	mov	sl, fp
 80067ee:	f8db 100c 	ldr.w	r1, [fp, #12]
 80067f2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80067f6:	1f32      	subs	r2, r6, #4
 80067f8:	2a24      	cmp	r2, #36	; 0x24
 80067fa:	60c1      	str	r1, [r0, #12]
 80067fc:	6088      	str	r0, [r1, #8]
 80067fe:	f200 80a1 	bhi.w	8006944 <_realloc_r+0x31c>
 8006802:	2a13      	cmp	r2, #19
 8006804:	6829      	ldr	r1, [r5, #0]
 8006806:	f240 809b 	bls.w	8006940 <_realloc_r+0x318>
 800680a:	f8cb 1008 	str.w	r1, [fp, #8]
 800680e:	6869      	ldr	r1, [r5, #4]
 8006810:	f8cb 100c 	str.w	r1, [fp, #12]
 8006814:	2a1b      	cmp	r2, #27
 8006816:	68a9      	ldr	r1, [r5, #8]
 8006818:	f200 809b 	bhi.w	8006952 <_realloc_r+0x32a>
 800681c:	f10b 0210 	add.w	r2, fp, #16
 8006820:	3508      	adds	r5, #8
 8006822:	6011      	str	r1, [r2, #0]
 8006824:	6869      	ldr	r1, [r5, #4]
 8006826:	6051      	str	r1, [r2, #4]
 8006828:	68a9      	ldr	r1, [r5, #8]
 800682a:	6091      	str	r1, [r2, #8]
 800682c:	eb0b 0104 	add.w	r1, fp, r4
 8006830:	eba9 0204 	sub.w	r2, r9, r4
 8006834:	f042 0201 	orr.w	r2, r2, #1
 8006838:	6099      	str	r1, [r3, #8]
 800683a:	604a      	str	r2, [r1, #4]
 800683c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006840:	f003 0301 	and.w	r3, r3, #1
 8006844:	431c      	orrs	r4, r3
 8006846:	4640      	mov	r0, r8
 8006848:	f8cb 4004 	str.w	r4, [fp, #4]
 800684c:	f7ff fbdc 	bl	8006008 <__malloc_unlock>
 8006850:	e78e      	b.n	8006770 <_realloc_r+0x148>
 8006852:	07d3      	lsls	r3, r2, #31
 8006854:	f53f af15 	bmi.w	8006682 <_realloc_r+0x5a>
 8006858:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800685c:	eba7 0b03 	sub.w	fp, r7, r3
 8006860:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006864:	f022 0203 	bic.w	r2, r2, #3
 8006868:	4410      	add	r0, r2
 800686a:	1983      	adds	r3, r0, r6
 800686c:	428b      	cmp	r3, r1
 800686e:	f6ff af45 	blt.w	80066fc <_realloc_r+0xd4>
 8006872:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006876:	46da      	mov	sl, fp
 8006878:	60ca      	str	r2, [r1, #12]
 800687a:	6091      	str	r1, [r2, #8]
 800687c:	e742      	b.n	8006704 <_realloc_r+0xdc>
 800687e:	6001      	str	r1, [r0, #0]
 8006880:	686b      	ldr	r3, [r5, #4]
 8006882:	6043      	str	r3, [r0, #4]
 8006884:	2a1b      	cmp	r2, #27
 8006886:	d83a      	bhi.n	80068fe <_realloc_r+0x2d6>
 8006888:	f105 0208 	add.w	r2, r5, #8
 800688c:	f100 0308 	add.w	r3, r0, #8
 8006890:	68a9      	ldr	r1, [r5, #8]
 8006892:	e710      	b.n	80066b6 <_realloc_r+0x8e>
 8006894:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006898:	f023 0303 	bic.w	r3, r3, #3
 800689c:	441e      	add	r6, r3
 800689e:	eb07 0906 	add.w	r9, r7, r6
 80068a2:	e753      	b.n	800674c <_realloc_r+0x124>
 80068a4:	4652      	mov	r2, sl
 80068a6:	e749      	b.n	800673c <_realloc_r+0x114>
 80068a8:	4629      	mov	r1, r5
 80068aa:	4650      	mov	r0, sl
 80068ac:	461e      	mov	r6, r3
 80068ae:	465f      	mov	r7, fp
 80068b0:	f7ff fb40 	bl	8005f34 <memmove>
 80068b4:	4655      	mov	r5, sl
 80068b6:	e749      	b.n	800674c <_realloc_r+0x124>
 80068b8:	4629      	mov	r1, r5
 80068ba:	f7ff fb3b 	bl	8005f34 <memmove>
 80068be:	e6ff      	b.n	80066c0 <_realloc_r+0x98>
 80068c0:	4427      	add	r7, r4
 80068c2:	eba9 0904 	sub.w	r9, r9, r4
 80068c6:	f049 0201 	orr.w	r2, r9, #1
 80068ca:	609f      	str	r7, [r3, #8]
 80068cc:	607a      	str	r2, [r7, #4]
 80068ce:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80068d2:	f003 0301 	and.w	r3, r3, #1
 80068d6:	431c      	orrs	r4, r3
 80068d8:	4640      	mov	r0, r8
 80068da:	f845 4c04 	str.w	r4, [r5, #-4]
 80068de:	f7ff fb93 	bl	8006008 <__malloc_unlock>
 80068e2:	46aa      	mov	sl, r5
 80068e4:	e744      	b.n	8006770 <_realloc_r+0x148>
 80068e6:	f8cb 1010 	str.w	r1, [fp, #16]
 80068ea:	68e9      	ldr	r1, [r5, #12]
 80068ec:	f8cb 1014 	str.w	r1, [fp, #20]
 80068f0:	2a24      	cmp	r2, #36	; 0x24
 80068f2:	d010      	beq.n	8006916 <_realloc_r+0x2ee>
 80068f4:	6929      	ldr	r1, [r5, #16]
 80068f6:	f10b 0218 	add.w	r2, fp, #24
 80068fa:	3510      	adds	r5, #16
 80068fc:	e71e      	b.n	800673c <_realloc_r+0x114>
 80068fe:	68ab      	ldr	r3, [r5, #8]
 8006900:	6083      	str	r3, [r0, #8]
 8006902:	68eb      	ldr	r3, [r5, #12]
 8006904:	60c3      	str	r3, [r0, #12]
 8006906:	2a24      	cmp	r2, #36	; 0x24
 8006908:	d010      	beq.n	800692c <_realloc_r+0x304>
 800690a:	f105 0210 	add.w	r2, r5, #16
 800690e:	f100 0310 	add.w	r3, r0, #16
 8006912:	6929      	ldr	r1, [r5, #16]
 8006914:	e6cf      	b.n	80066b6 <_realloc_r+0x8e>
 8006916:	692a      	ldr	r2, [r5, #16]
 8006918:	f8cb 2018 	str.w	r2, [fp, #24]
 800691c:	696a      	ldr	r2, [r5, #20]
 800691e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006922:	69a9      	ldr	r1, [r5, #24]
 8006924:	f10b 0220 	add.w	r2, fp, #32
 8006928:	3518      	adds	r5, #24
 800692a:	e707      	b.n	800673c <_realloc_r+0x114>
 800692c:	692b      	ldr	r3, [r5, #16]
 800692e:	6103      	str	r3, [r0, #16]
 8006930:	696b      	ldr	r3, [r5, #20]
 8006932:	6143      	str	r3, [r0, #20]
 8006934:	69a9      	ldr	r1, [r5, #24]
 8006936:	f105 0218 	add.w	r2, r5, #24
 800693a:	f100 0318 	add.w	r3, r0, #24
 800693e:	e6ba      	b.n	80066b6 <_realloc_r+0x8e>
 8006940:	4652      	mov	r2, sl
 8006942:	e76e      	b.n	8006822 <_realloc_r+0x1fa>
 8006944:	4629      	mov	r1, r5
 8006946:	4650      	mov	r0, sl
 8006948:	9301      	str	r3, [sp, #4]
 800694a:	f7ff faf3 	bl	8005f34 <memmove>
 800694e:	9b01      	ldr	r3, [sp, #4]
 8006950:	e76c      	b.n	800682c <_realloc_r+0x204>
 8006952:	f8cb 1010 	str.w	r1, [fp, #16]
 8006956:	68e9      	ldr	r1, [r5, #12]
 8006958:	f8cb 1014 	str.w	r1, [fp, #20]
 800695c:	2a24      	cmp	r2, #36	; 0x24
 800695e:	d004      	beq.n	800696a <_realloc_r+0x342>
 8006960:	6929      	ldr	r1, [r5, #16]
 8006962:	f10b 0218 	add.w	r2, fp, #24
 8006966:	3510      	adds	r5, #16
 8006968:	e75b      	b.n	8006822 <_realloc_r+0x1fa>
 800696a:	692a      	ldr	r2, [r5, #16]
 800696c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006970:	696a      	ldr	r2, [r5, #20]
 8006972:	f8cb 201c 	str.w	r2, [fp, #28]
 8006976:	69a9      	ldr	r1, [r5, #24]
 8006978:	f10b 0220 	add.w	r2, fp, #32
 800697c:	3518      	adds	r5, #24
 800697e:	e750      	b.n	8006822 <_realloc_r+0x1fa>
 8006980:	2000044c 	.word	0x2000044c

08006984 <frexp>:
 8006984:	ec53 2b10 	vmov	r2, r3, d0
 8006988:	b570      	push	{r4, r5, r6, lr}
 800698a:	4e16      	ldr	r6, [pc, #88]	; (80069e4 <frexp+0x60>)
 800698c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006990:	2500      	movs	r5, #0
 8006992:	42b1      	cmp	r1, r6
 8006994:	4604      	mov	r4, r0
 8006996:	6005      	str	r5, [r0, #0]
 8006998:	dc21      	bgt.n	80069de <frexp+0x5a>
 800699a:	ee10 6a10 	vmov	r6, s0
 800699e:	430e      	orrs	r6, r1
 80069a0:	d01d      	beq.n	80069de <frexp+0x5a>
 80069a2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80069a6:	4618      	mov	r0, r3
 80069a8:	da0c      	bge.n	80069c4 <frexp+0x40>
 80069aa:	4619      	mov	r1, r3
 80069ac:	2200      	movs	r2, #0
 80069ae:	ee10 0a10 	vmov	r0, s0
 80069b2:	4b0d      	ldr	r3, [pc, #52]	; (80069e8 <frexp+0x64>)
 80069b4:	f7fa f8c0 	bl	8000b38 <__aeabi_dmul>
 80069b8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 80069bc:	4602      	mov	r2, r0
 80069be:	4608      	mov	r0, r1
 80069c0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 80069c4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 80069c8:	1509      	asrs	r1, r1, #20
 80069ca:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 80069ce:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 80069d2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 80069d6:	4429      	add	r1, r5
 80069d8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 80069dc:	6021      	str	r1, [r4, #0]
 80069de:	ec43 2b10 	vmov	d0, r2, r3
 80069e2:	bd70      	pop	{r4, r5, r6, pc}
 80069e4:	7fefffff 	.word	0x7fefffff
 80069e8:	43500000 	.word	0x43500000

080069ec <_sbrk_r>:
 80069ec:	b538      	push	{r3, r4, r5, lr}
 80069ee:	4c07      	ldr	r4, [pc, #28]	; (8006a0c <_sbrk_r+0x20>)
 80069f0:	2300      	movs	r3, #0
 80069f2:	4605      	mov	r5, r0
 80069f4:	4608      	mov	r0, r1
 80069f6:	6023      	str	r3, [r4, #0]
 80069f8:	f7fb fc33 	bl	8002262 <_sbrk>
 80069fc:	1c43      	adds	r3, r0, #1
 80069fe:	d000      	beq.n	8006a02 <_sbrk_r+0x16>
 8006a00:	bd38      	pop	{r3, r4, r5, pc}
 8006a02:	6823      	ldr	r3, [r4, #0]
 8006a04:	2b00      	cmp	r3, #0
 8006a06:	d0fb      	beq.n	8006a00 <_sbrk_r+0x14>
 8006a08:	602b      	str	r3, [r5, #0]
 8006a0a:	bd38      	pop	{r3, r4, r5, pc}
 8006a0c:	200011f0 	.word	0x200011f0

08006a10 <__sread>:
 8006a10:	b510      	push	{r4, lr}
 8006a12:	460c      	mov	r4, r1
 8006a14:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a18:	f000 fabc 	bl	8006f94 <_read_r>
 8006a1c:	2800      	cmp	r0, #0
 8006a1e:	db03      	blt.n	8006a28 <__sread+0x18>
 8006a20:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006a22:	4403      	add	r3, r0
 8006a24:	6523      	str	r3, [r4, #80]	; 0x50
 8006a26:	bd10      	pop	{r4, pc}
 8006a28:	89a3      	ldrh	r3, [r4, #12]
 8006a2a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006a2e:	81a3      	strh	r3, [r4, #12]
 8006a30:	bd10      	pop	{r4, pc}
 8006a32:	bf00      	nop

08006a34 <__swrite>:
 8006a34:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006a38:	4616      	mov	r6, r2
 8006a3a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006a3e:	461f      	mov	r7, r3
 8006a40:	05d3      	lsls	r3, r2, #23
 8006a42:	460c      	mov	r4, r1
 8006a44:	4605      	mov	r5, r0
 8006a46:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a4a:	d507      	bpl.n	8006a5c <__swrite+0x28>
 8006a4c:	2200      	movs	r2, #0
 8006a4e:	2302      	movs	r3, #2
 8006a50:	f000 fa74 	bl	8006f3c <_lseek_r>
 8006a54:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006a58:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006a5c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006a60:	81a2      	strh	r2, [r4, #12]
 8006a62:	463b      	mov	r3, r7
 8006a64:	4632      	mov	r2, r6
 8006a66:	4628      	mov	r0, r5
 8006a68:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006a6c:	f000 b88c 	b.w	8006b88 <_write_r>

08006a70 <__sseek>:
 8006a70:	b510      	push	{r4, lr}
 8006a72:	460c      	mov	r4, r1
 8006a74:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a78:	f000 fa60 	bl	8006f3c <_lseek_r>
 8006a7c:	89a3      	ldrh	r3, [r4, #12]
 8006a7e:	1c42      	adds	r2, r0, #1
 8006a80:	bf0e      	itee	eq
 8006a82:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006a86:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006a8a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006a8c:	81a3      	strh	r3, [r4, #12]
 8006a8e:	bd10      	pop	{r4, pc}

08006a90 <__sclose>:
 8006a90:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006a94:	f000 b922 	b.w	8006cdc <_close_r>

08006a98 <strncpy>:
 8006a98:	ea40 0301 	orr.w	r3, r0, r1
 8006a9c:	079b      	lsls	r3, r3, #30
 8006a9e:	b470      	push	{r4, r5, r6}
 8006aa0:	d12a      	bne.n	8006af8 <strncpy+0x60>
 8006aa2:	2a03      	cmp	r2, #3
 8006aa4:	d928      	bls.n	8006af8 <strncpy+0x60>
 8006aa6:	460c      	mov	r4, r1
 8006aa8:	4603      	mov	r3, r0
 8006aaa:	4621      	mov	r1, r4
 8006aac:	f854 6b04 	ldr.w	r6, [r4], #4
 8006ab0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006ab4:	ea25 0506 	bic.w	r5, r5, r6
 8006ab8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006abc:	d106      	bne.n	8006acc <strncpy+0x34>
 8006abe:	3a04      	subs	r2, #4
 8006ac0:	2a03      	cmp	r2, #3
 8006ac2:	f843 6b04 	str.w	r6, [r3], #4
 8006ac6:	4621      	mov	r1, r4
 8006ac8:	d8ef      	bhi.n	8006aaa <strncpy+0x12>
 8006aca:	b19a      	cbz	r2, 8006af4 <strncpy+0x5c>
 8006acc:	780c      	ldrb	r4, [r1, #0]
 8006ace:	701c      	strb	r4, [r3, #0]
 8006ad0:	3a01      	subs	r2, #1
 8006ad2:	3301      	adds	r3, #1
 8006ad4:	b13c      	cbz	r4, 8006ae6 <strncpy+0x4e>
 8006ad6:	b16a      	cbz	r2, 8006af4 <strncpy+0x5c>
 8006ad8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006adc:	f803 4b01 	strb.w	r4, [r3], #1
 8006ae0:	3a01      	subs	r2, #1
 8006ae2:	2c00      	cmp	r4, #0
 8006ae4:	d1f7      	bne.n	8006ad6 <strncpy+0x3e>
 8006ae6:	b12a      	cbz	r2, 8006af4 <strncpy+0x5c>
 8006ae8:	441a      	add	r2, r3
 8006aea:	2100      	movs	r1, #0
 8006aec:	f803 1b01 	strb.w	r1, [r3], #1
 8006af0:	4293      	cmp	r3, r2
 8006af2:	d1fb      	bne.n	8006aec <strncpy+0x54>
 8006af4:	bc70      	pop	{r4, r5, r6}
 8006af6:	4770      	bx	lr
 8006af8:	4603      	mov	r3, r0
 8006afa:	e7e6      	b.n	8006aca <strncpy+0x32>

08006afc <__sprint_r.part.0>:
 8006afc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b00:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006b02:	049c      	lsls	r4, r3, #18
 8006b04:	4692      	mov	sl, r2
 8006b06:	d52d      	bpl.n	8006b64 <__sprint_r.part.0+0x68>
 8006b08:	6893      	ldr	r3, [r2, #8]
 8006b0a:	6812      	ldr	r2, [r2, #0]
 8006b0c:	b343      	cbz	r3, 8006b60 <__sprint_r.part.0+0x64>
 8006b0e:	460e      	mov	r6, r1
 8006b10:	4607      	mov	r7, r0
 8006b12:	f102 0908 	add.w	r9, r2, #8
 8006b16:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006b1a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006b1e:	d015      	beq.n	8006b4c <__sprint_r.part.0+0x50>
 8006b20:	3d04      	subs	r5, #4
 8006b22:	2400      	movs	r4, #0
 8006b24:	e001      	b.n	8006b2a <__sprint_r.part.0+0x2e>
 8006b26:	45a0      	cmp	r8, r4
 8006b28:	d00e      	beq.n	8006b48 <__sprint_r.part.0+0x4c>
 8006b2a:	4632      	mov	r2, r6
 8006b2c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006b30:	4638      	mov	r0, r7
 8006b32:	f000 f99d 	bl	8006e70 <_fputwc_r>
 8006b36:	1c43      	adds	r3, r0, #1
 8006b38:	f104 0401 	add.w	r4, r4, #1
 8006b3c:	d1f3      	bne.n	8006b26 <__sprint_r.part.0+0x2a>
 8006b3e:	2300      	movs	r3, #0
 8006b40:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b44:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b48:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006b4c:	f02b 0b03 	bic.w	fp, fp, #3
 8006b50:	eba3 030b 	sub.w	r3, r3, fp
 8006b54:	f8ca 3008 	str.w	r3, [sl, #8]
 8006b58:	f109 0908 	add.w	r9, r9, #8
 8006b5c:	2b00      	cmp	r3, #0
 8006b5e:	d1da      	bne.n	8006b16 <__sprint_r.part.0+0x1a>
 8006b60:	2000      	movs	r0, #0
 8006b62:	e7ec      	b.n	8006b3e <__sprint_r.part.0+0x42>
 8006b64:	f7fe fd0c 	bl	8005580 <__sfvwrite_r>
 8006b68:	2300      	movs	r3, #0
 8006b6a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006b6e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b72:	bf00      	nop

08006b74 <__sprint_r>:
 8006b74:	6893      	ldr	r3, [r2, #8]
 8006b76:	b10b      	cbz	r3, 8006b7c <__sprint_r+0x8>
 8006b78:	f7ff bfc0 	b.w	8006afc <__sprint_r.part.0>
 8006b7c:	b410      	push	{r4}
 8006b7e:	4618      	mov	r0, r3
 8006b80:	6053      	str	r3, [r2, #4]
 8006b82:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006b86:	4770      	bx	lr

08006b88 <_write_r>:
 8006b88:	b570      	push	{r4, r5, r6, lr}
 8006b8a:	460d      	mov	r5, r1
 8006b8c:	4c08      	ldr	r4, [pc, #32]	; (8006bb0 <_write_r+0x28>)
 8006b8e:	4611      	mov	r1, r2
 8006b90:	4606      	mov	r6, r0
 8006b92:	461a      	mov	r2, r3
 8006b94:	4628      	mov	r0, r5
 8006b96:	2300      	movs	r3, #0
 8006b98:	6023      	str	r3, [r4, #0]
 8006b9a:	f7fb fb4f 	bl	800223c <_write>
 8006b9e:	1c43      	adds	r3, r0, #1
 8006ba0:	d000      	beq.n	8006ba4 <_write_r+0x1c>
 8006ba2:	bd70      	pop	{r4, r5, r6, pc}
 8006ba4:	6823      	ldr	r3, [r4, #0]
 8006ba6:	2b00      	cmp	r3, #0
 8006ba8:	d0fb      	beq.n	8006ba2 <_write_r+0x1a>
 8006baa:	6033      	str	r3, [r6, #0]
 8006bac:	bd70      	pop	{r4, r5, r6, pc}
 8006bae:	bf00      	nop
 8006bb0:	200011f0 	.word	0x200011f0

08006bb4 <__register_exitproc>:
 8006bb4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006bb8:	4d2b      	ldr	r5, [pc, #172]	; (8006c68 <__register_exitproc+0xb4>)
 8006bba:	4606      	mov	r6, r0
 8006bbc:	6828      	ldr	r0, [r5, #0]
 8006bbe:	4698      	mov	r8, r3
 8006bc0:	460f      	mov	r7, r1
 8006bc2:	4691      	mov	r9, r2
 8006bc4:	f7fe fe96 	bl	80058f4 <__retarget_lock_acquire_recursive>
 8006bc8:	4b28      	ldr	r3, [pc, #160]	; (8006c6c <__register_exitproc+0xb8>)
 8006bca:	681c      	ldr	r4, [r3, #0]
 8006bcc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006bd0:	2b00      	cmp	r3, #0
 8006bd2:	d03d      	beq.n	8006c50 <__register_exitproc+0x9c>
 8006bd4:	685a      	ldr	r2, [r3, #4]
 8006bd6:	2a1f      	cmp	r2, #31
 8006bd8:	dc0d      	bgt.n	8006bf6 <__register_exitproc+0x42>
 8006bda:	f102 0c01 	add.w	ip, r2, #1
 8006bde:	bb16      	cbnz	r6, 8006c26 <__register_exitproc+0x72>
 8006be0:	3202      	adds	r2, #2
 8006be2:	f8c3 c004 	str.w	ip, [r3, #4]
 8006be6:	6828      	ldr	r0, [r5, #0]
 8006be8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006bec:	f7fe fe84 	bl	80058f8 <__retarget_lock_release_recursive>
 8006bf0:	2000      	movs	r0, #0
 8006bf2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006bf6:	4b1e      	ldr	r3, [pc, #120]	; (8006c70 <__register_exitproc+0xbc>)
 8006bf8:	b37b      	cbz	r3, 8006c5a <__register_exitproc+0xa6>
 8006bfa:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006bfe:	f3af 8000 	nop.w
 8006c02:	4603      	mov	r3, r0
 8006c04:	b348      	cbz	r0, 8006c5a <__register_exitproc+0xa6>
 8006c06:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006c0a:	2100      	movs	r1, #0
 8006c0c:	e9c0 2100 	strd	r2, r1, [r0]
 8006c10:	f04f 0c01 	mov.w	ip, #1
 8006c14:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006c18:	460a      	mov	r2, r1
 8006c1a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006c1e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006c22:	2e00      	cmp	r6, #0
 8006c24:	d0dc      	beq.n	8006be0 <__register_exitproc+0x2c>
 8006c26:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006c2a:	2401      	movs	r4, #1
 8006c2c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006c30:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006c34:	4094      	lsls	r4, r2
 8006c36:	4320      	orrs	r0, r4
 8006c38:	2e02      	cmp	r6, #2
 8006c3a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006c3e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006c42:	d1cd      	bne.n	8006be0 <__register_exitproc+0x2c>
 8006c44:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006c48:	430c      	orrs	r4, r1
 8006c4a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006c4e:	e7c7      	b.n	8006be0 <__register_exitproc+0x2c>
 8006c50:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006c54:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006c58:	e7bc      	b.n	8006bd4 <__register_exitproc+0x20>
 8006c5a:	6828      	ldr	r0, [r5, #0]
 8006c5c:	f7fe fe4c 	bl	80058f8 <__retarget_lock_release_recursive>
 8006c60:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006c64:	e7c5      	b.n	8006bf2 <__register_exitproc+0x3e>
 8006c66:	bf00      	nop
 8006c68:	20000448 	.word	0x20000448
 8006c6c:	08007208 	.word	0x08007208
 8006c70:	00000000 	.word	0x00000000

08006c74 <_calloc_r>:
 8006c74:	b510      	push	{r4, lr}
 8006c76:	fb02 f101 	mul.w	r1, r2, r1
 8006c7a:	f7fe feb7 	bl	80059ec <_malloc_r>
 8006c7e:	4604      	mov	r4, r0
 8006c80:	b1d8      	cbz	r0, 8006cba <_calloc_r+0x46>
 8006c82:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006c86:	f022 0203 	bic.w	r2, r2, #3
 8006c8a:	3a04      	subs	r2, #4
 8006c8c:	2a24      	cmp	r2, #36	; 0x24
 8006c8e:	d81d      	bhi.n	8006ccc <_calloc_r+0x58>
 8006c90:	2a13      	cmp	r2, #19
 8006c92:	d914      	bls.n	8006cbe <_calloc_r+0x4a>
 8006c94:	2300      	movs	r3, #0
 8006c96:	2a1b      	cmp	r2, #27
 8006c98:	e9c0 3300 	strd	r3, r3, [r0]
 8006c9c:	d91b      	bls.n	8006cd6 <_calloc_r+0x62>
 8006c9e:	2a24      	cmp	r2, #36	; 0x24
 8006ca0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006ca4:	bf0a      	itet	eq
 8006ca6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006caa:	f100 0210 	addne.w	r2, r0, #16
 8006cae:	f100 0218 	addeq.w	r2, r0, #24
 8006cb2:	2300      	movs	r3, #0
 8006cb4:	e9c2 3300 	strd	r3, r3, [r2]
 8006cb8:	6093      	str	r3, [r2, #8]
 8006cba:	4620      	mov	r0, r4
 8006cbc:	bd10      	pop	{r4, pc}
 8006cbe:	4602      	mov	r2, r0
 8006cc0:	2300      	movs	r3, #0
 8006cc2:	e9c2 3300 	strd	r3, r3, [r2]
 8006cc6:	6093      	str	r3, [r2, #8]
 8006cc8:	4620      	mov	r0, r4
 8006cca:	bd10      	pop	{r4, pc}
 8006ccc:	2100      	movs	r1, #0
 8006cce:	f7fb fb6d 	bl	80023ac <memset>
 8006cd2:	4620      	mov	r0, r4
 8006cd4:	bd10      	pop	{r4, pc}
 8006cd6:	f100 0208 	add.w	r2, r0, #8
 8006cda:	e7f1      	b.n	8006cc0 <_calloc_r+0x4c>

08006cdc <_close_r>:
 8006cdc:	b538      	push	{r3, r4, r5, lr}
 8006cde:	4c07      	ldr	r4, [pc, #28]	; (8006cfc <_close_r+0x20>)
 8006ce0:	2300      	movs	r3, #0
 8006ce2:	4605      	mov	r5, r0
 8006ce4:	4608      	mov	r0, r1
 8006ce6:	6023      	str	r3, [r4, #0]
 8006ce8:	f7fb fad7 	bl	800229a <_close>
 8006cec:	1c43      	adds	r3, r0, #1
 8006cee:	d000      	beq.n	8006cf2 <_close_r+0x16>
 8006cf0:	bd38      	pop	{r3, r4, r5, pc}
 8006cf2:	6823      	ldr	r3, [r4, #0]
 8006cf4:	2b00      	cmp	r3, #0
 8006cf6:	d0fb      	beq.n	8006cf0 <_close_r+0x14>
 8006cf8:	602b      	str	r3, [r5, #0]
 8006cfa:	bd38      	pop	{r3, r4, r5, pc}
 8006cfc:	200011f0 	.word	0x200011f0

08006d00 <_fclose_r>:
 8006d00:	b570      	push	{r4, r5, r6, lr}
 8006d02:	2900      	cmp	r1, #0
 8006d04:	d048      	beq.n	8006d98 <_fclose_r+0x98>
 8006d06:	4605      	mov	r5, r0
 8006d08:	460c      	mov	r4, r1
 8006d0a:	b110      	cbz	r0, 8006d12 <_fclose_r+0x12>
 8006d0c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006d0e:	2b00      	cmp	r3, #0
 8006d10:	d048      	beq.n	8006da4 <_fclose_r+0xa4>
 8006d12:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006d14:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d18:	07d0      	lsls	r0, r2, #31
 8006d1a:	d440      	bmi.n	8006d9e <_fclose_r+0x9e>
 8006d1c:	0599      	lsls	r1, r3, #22
 8006d1e:	d530      	bpl.n	8006d82 <_fclose_r+0x82>
 8006d20:	4621      	mov	r1, r4
 8006d22:	4628      	mov	r0, r5
 8006d24:	f7fe f990 	bl	8005048 <__sflush_r>
 8006d28:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006d2a:	4606      	mov	r6, r0
 8006d2c:	b133      	cbz	r3, 8006d3c <_fclose_r+0x3c>
 8006d2e:	69e1      	ldr	r1, [r4, #28]
 8006d30:	4628      	mov	r0, r5
 8006d32:	4798      	blx	r3
 8006d34:	2800      	cmp	r0, #0
 8006d36:	bfb8      	it	lt
 8006d38:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006d3c:	89a3      	ldrh	r3, [r4, #12]
 8006d3e:	061a      	lsls	r2, r3, #24
 8006d40:	d43c      	bmi.n	8006dbc <_fclose_r+0xbc>
 8006d42:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006d44:	b141      	cbz	r1, 8006d58 <_fclose_r+0x58>
 8006d46:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006d4a:	4299      	cmp	r1, r3
 8006d4c:	d002      	beq.n	8006d54 <_fclose_r+0x54>
 8006d4e:	4628      	mov	r0, r5
 8006d50:	f7fe fb22 	bl	8005398 <_free_r>
 8006d54:	2300      	movs	r3, #0
 8006d56:	6323      	str	r3, [r4, #48]	; 0x30
 8006d58:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006d5a:	b121      	cbz	r1, 8006d66 <_fclose_r+0x66>
 8006d5c:	4628      	mov	r0, r5
 8006d5e:	f7fe fb1b 	bl	8005398 <_free_r>
 8006d62:	2300      	movs	r3, #0
 8006d64:	6463      	str	r3, [r4, #68]	; 0x44
 8006d66:	f7fe faa1 	bl	80052ac <__sfp_lock_acquire>
 8006d6a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006d6c:	2200      	movs	r2, #0
 8006d6e:	07db      	lsls	r3, r3, #31
 8006d70:	81a2      	strh	r2, [r4, #12]
 8006d72:	d51f      	bpl.n	8006db4 <_fclose_r+0xb4>
 8006d74:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d76:	f7fe fdbb 	bl	80058f0 <__retarget_lock_close_recursive>
 8006d7a:	f7fe fa9d 	bl	80052b8 <__sfp_lock_release>
 8006d7e:	4630      	mov	r0, r6
 8006d80:	bd70      	pop	{r4, r5, r6, pc}
 8006d82:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006d84:	f7fe fdb6 	bl	80058f4 <__retarget_lock_acquire_recursive>
 8006d88:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006d8c:	2b00      	cmp	r3, #0
 8006d8e:	d1c7      	bne.n	8006d20 <_fclose_r+0x20>
 8006d90:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006d92:	f016 0601 	ands.w	r6, r6, #1
 8006d96:	d016      	beq.n	8006dc6 <_fclose_r+0xc6>
 8006d98:	2600      	movs	r6, #0
 8006d9a:	4630      	mov	r0, r6
 8006d9c:	bd70      	pop	{r4, r5, r6, pc}
 8006d9e:	2b00      	cmp	r3, #0
 8006da0:	d0fa      	beq.n	8006d98 <_fclose_r+0x98>
 8006da2:	e7bd      	b.n	8006d20 <_fclose_r+0x20>
 8006da4:	f7fe fa56 	bl	8005254 <__sinit>
 8006da8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006daa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006dae:	07d0      	lsls	r0, r2, #31
 8006db0:	d4f5      	bmi.n	8006d9e <_fclose_r+0x9e>
 8006db2:	e7b3      	b.n	8006d1c <_fclose_r+0x1c>
 8006db4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006db6:	f7fe fd9f 	bl	80058f8 <__retarget_lock_release_recursive>
 8006dba:	e7db      	b.n	8006d74 <_fclose_r+0x74>
 8006dbc:	6921      	ldr	r1, [r4, #16]
 8006dbe:	4628      	mov	r0, r5
 8006dc0:	f7fe faea 	bl	8005398 <_free_r>
 8006dc4:	e7bd      	b.n	8006d42 <_fclose_r+0x42>
 8006dc6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006dc8:	f7fe fd96 	bl	80058f8 <__retarget_lock_release_recursive>
 8006dcc:	4630      	mov	r0, r6
 8006dce:	bd70      	pop	{r4, r5, r6, pc}

08006dd0 <__fputwc>:
 8006dd0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006dd4:	b082      	sub	sp, #8
 8006dd6:	4681      	mov	r9, r0
 8006dd8:	4688      	mov	r8, r1
 8006dda:	4614      	mov	r4, r2
 8006ddc:	f000 f8a0 	bl	8006f20 <__locale_mb_cur_max>
 8006de0:	2801      	cmp	r0, #1
 8006de2:	d103      	bne.n	8006dec <__fputwc+0x1c>
 8006de4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006de8:	2bfe      	cmp	r3, #254	; 0xfe
 8006dea:	d933      	bls.n	8006e54 <__fputwc+0x84>
 8006dec:	4642      	mov	r2, r8
 8006dee:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006df2:	a901      	add	r1, sp, #4
 8006df4:	4648      	mov	r0, r9
 8006df6:	f000 f93b 	bl	8007070 <_wcrtomb_r>
 8006dfa:	1c42      	adds	r2, r0, #1
 8006dfc:	4606      	mov	r6, r0
 8006dfe:	d02f      	beq.n	8006e60 <__fputwc+0x90>
 8006e00:	b320      	cbz	r0, 8006e4c <__fputwc+0x7c>
 8006e02:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006e06:	2500      	movs	r5, #0
 8006e08:	f10d 0a04 	add.w	sl, sp, #4
 8006e0c:	e009      	b.n	8006e22 <__fputwc+0x52>
 8006e0e:	6823      	ldr	r3, [r4, #0]
 8006e10:	1c5a      	adds	r2, r3, #1
 8006e12:	6022      	str	r2, [r4, #0]
 8006e14:	f883 c000 	strb.w	ip, [r3]
 8006e18:	3501      	adds	r5, #1
 8006e1a:	42b5      	cmp	r5, r6
 8006e1c:	d216      	bcs.n	8006e4c <__fputwc+0x7c>
 8006e1e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006e22:	68a3      	ldr	r3, [r4, #8]
 8006e24:	3b01      	subs	r3, #1
 8006e26:	2b00      	cmp	r3, #0
 8006e28:	60a3      	str	r3, [r4, #8]
 8006e2a:	daf0      	bge.n	8006e0e <__fputwc+0x3e>
 8006e2c:	69a7      	ldr	r7, [r4, #24]
 8006e2e:	42bb      	cmp	r3, r7
 8006e30:	4661      	mov	r1, ip
 8006e32:	4622      	mov	r2, r4
 8006e34:	4648      	mov	r0, r9
 8006e36:	db02      	blt.n	8006e3e <__fputwc+0x6e>
 8006e38:	f1bc 0f0a 	cmp.w	ip, #10
 8006e3c:	d1e7      	bne.n	8006e0e <__fputwc+0x3e>
 8006e3e:	f000 f8bf 	bl	8006fc0 <__swbuf_r>
 8006e42:	1c43      	adds	r3, r0, #1
 8006e44:	d1e8      	bne.n	8006e18 <__fputwc+0x48>
 8006e46:	b002      	add	sp, #8
 8006e48:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e4c:	4640      	mov	r0, r8
 8006e4e:	b002      	add	sp, #8
 8006e50:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e54:	fa5f fc88 	uxtb.w	ip, r8
 8006e58:	4606      	mov	r6, r0
 8006e5a:	f88d c004 	strb.w	ip, [sp, #4]
 8006e5e:	e7d2      	b.n	8006e06 <__fputwc+0x36>
 8006e60:	89a3      	ldrh	r3, [r4, #12]
 8006e62:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006e66:	81a3      	strh	r3, [r4, #12]
 8006e68:	b002      	add	sp, #8
 8006e6a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006e6e:	bf00      	nop

08006e70 <_fputwc_r>:
 8006e70:	b530      	push	{r4, r5, lr}
 8006e72:	4605      	mov	r5, r0
 8006e74:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006e76:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006e7a:	07c0      	lsls	r0, r0, #31
 8006e7c:	4614      	mov	r4, r2
 8006e7e:	b083      	sub	sp, #12
 8006e80:	b29a      	uxth	r2, r3
 8006e82:	d401      	bmi.n	8006e88 <_fputwc_r+0x18>
 8006e84:	0590      	lsls	r0, r2, #22
 8006e86:	d51c      	bpl.n	8006ec2 <_fputwc_r+0x52>
 8006e88:	0490      	lsls	r0, r2, #18
 8006e8a:	d406      	bmi.n	8006e9a <_fputwc_r+0x2a>
 8006e8c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006e8e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006e92:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006e96:	81a3      	strh	r3, [r4, #12]
 8006e98:	6662      	str	r2, [r4, #100]	; 0x64
 8006e9a:	4628      	mov	r0, r5
 8006e9c:	4622      	mov	r2, r4
 8006e9e:	f7ff ff97 	bl	8006dd0 <__fputwc>
 8006ea2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ea4:	07da      	lsls	r2, r3, #31
 8006ea6:	4605      	mov	r5, r0
 8006ea8:	d402      	bmi.n	8006eb0 <_fputwc_r+0x40>
 8006eaa:	89a3      	ldrh	r3, [r4, #12]
 8006eac:	059b      	lsls	r3, r3, #22
 8006eae:	d502      	bpl.n	8006eb6 <_fputwc_r+0x46>
 8006eb0:	4628      	mov	r0, r5
 8006eb2:	b003      	add	sp, #12
 8006eb4:	bd30      	pop	{r4, r5, pc}
 8006eb6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006eb8:	f7fe fd1e 	bl	80058f8 <__retarget_lock_release_recursive>
 8006ebc:	4628      	mov	r0, r5
 8006ebe:	b003      	add	sp, #12
 8006ec0:	bd30      	pop	{r4, r5, pc}
 8006ec2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ec4:	9101      	str	r1, [sp, #4]
 8006ec6:	f7fe fd15 	bl	80058f4 <__retarget_lock_acquire_recursive>
 8006eca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ece:	9901      	ldr	r1, [sp, #4]
 8006ed0:	b29a      	uxth	r2, r3
 8006ed2:	e7d9      	b.n	8006e88 <_fputwc_r+0x18>

08006ed4 <_fstat_r>:
 8006ed4:	b538      	push	{r3, r4, r5, lr}
 8006ed6:	460b      	mov	r3, r1
 8006ed8:	4c07      	ldr	r4, [pc, #28]	; (8006ef8 <_fstat_r+0x24>)
 8006eda:	4605      	mov	r5, r0
 8006edc:	4611      	mov	r1, r2
 8006ede:	4618      	mov	r0, r3
 8006ee0:	2300      	movs	r3, #0
 8006ee2:	6023      	str	r3, [r4, #0]
 8006ee4:	f7fb f9dc 	bl	80022a0 <_fstat>
 8006ee8:	1c43      	adds	r3, r0, #1
 8006eea:	d000      	beq.n	8006eee <_fstat_r+0x1a>
 8006eec:	bd38      	pop	{r3, r4, r5, pc}
 8006eee:	6823      	ldr	r3, [r4, #0]
 8006ef0:	2b00      	cmp	r3, #0
 8006ef2:	d0fb      	beq.n	8006eec <_fstat_r+0x18>
 8006ef4:	602b      	str	r3, [r5, #0]
 8006ef6:	bd38      	pop	{r3, r4, r5, pc}
 8006ef8:	200011f0 	.word	0x200011f0

08006efc <_isatty_r>:
 8006efc:	b538      	push	{r3, r4, r5, lr}
 8006efe:	4c07      	ldr	r4, [pc, #28]	; (8006f1c <_isatty_r+0x20>)
 8006f00:	2300      	movs	r3, #0
 8006f02:	4605      	mov	r5, r0
 8006f04:	4608      	mov	r0, r1
 8006f06:	6023      	str	r3, [r4, #0]
 8006f08:	f7fb f9cf 	bl	80022aa <_isatty>
 8006f0c:	1c43      	adds	r3, r0, #1
 8006f0e:	d000      	beq.n	8006f12 <_isatty_r+0x16>
 8006f10:	bd38      	pop	{r3, r4, r5, pc}
 8006f12:	6823      	ldr	r3, [r4, #0]
 8006f14:	2b00      	cmp	r3, #0
 8006f16:	d0fb      	beq.n	8006f10 <_isatty_r+0x14>
 8006f18:	602b      	str	r3, [r5, #0]
 8006f1a:	bd38      	pop	{r3, r4, r5, pc}
 8006f1c:	200011f0 	.word	0x200011f0

08006f20 <__locale_mb_cur_max>:
 8006f20:	4b04      	ldr	r3, [pc, #16]	; (8006f34 <__locale_mb_cur_max+0x14>)
 8006f22:	4a05      	ldr	r2, [pc, #20]	; (8006f38 <__locale_mb_cur_max+0x18>)
 8006f24:	681b      	ldr	r3, [r3, #0]
 8006f26:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8006f28:	2b00      	cmp	r3, #0
 8006f2a:	bf08      	it	eq
 8006f2c:	4613      	moveq	r3, r2
 8006f2e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8006f32:	4770      	bx	lr
 8006f34:	20000018 	.word	0x20000018
 8006f38:	2000085c 	.word	0x2000085c

08006f3c <_lseek_r>:
 8006f3c:	b570      	push	{r4, r5, r6, lr}
 8006f3e:	460d      	mov	r5, r1
 8006f40:	4c08      	ldr	r4, [pc, #32]	; (8006f64 <_lseek_r+0x28>)
 8006f42:	4611      	mov	r1, r2
 8006f44:	4606      	mov	r6, r0
 8006f46:	461a      	mov	r2, r3
 8006f48:	4628      	mov	r0, r5
 8006f4a:	2300      	movs	r3, #0
 8006f4c:	6023      	str	r3, [r4, #0]
 8006f4e:	f7fb f9ae 	bl	80022ae <_lseek>
 8006f52:	1c43      	adds	r3, r0, #1
 8006f54:	d000      	beq.n	8006f58 <_lseek_r+0x1c>
 8006f56:	bd70      	pop	{r4, r5, r6, pc}
 8006f58:	6823      	ldr	r3, [r4, #0]
 8006f5a:	2b00      	cmp	r3, #0
 8006f5c:	d0fb      	beq.n	8006f56 <_lseek_r+0x1a>
 8006f5e:	6033      	str	r3, [r6, #0]
 8006f60:	bd70      	pop	{r4, r5, r6, pc}
 8006f62:	bf00      	nop
 8006f64:	200011f0 	.word	0x200011f0

08006f68 <__ascii_mbtowc>:
 8006f68:	b082      	sub	sp, #8
 8006f6a:	b149      	cbz	r1, 8006f80 <__ascii_mbtowc+0x18>
 8006f6c:	b15a      	cbz	r2, 8006f86 <__ascii_mbtowc+0x1e>
 8006f6e:	b16b      	cbz	r3, 8006f8c <__ascii_mbtowc+0x24>
 8006f70:	7813      	ldrb	r3, [r2, #0]
 8006f72:	600b      	str	r3, [r1, #0]
 8006f74:	7812      	ldrb	r2, [r2, #0]
 8006f76:	1c10      	adds	r0, r2, #0
 8006f78:	bf18      	it	ne
 8006f7a:	2001      	movne	r0, #1
 8006f7c:	b002      	add	sp, #8
 8006f7e:	4770      	bx	lr
 8006f80:	a901      	add	r1, sp, #4
 8006f82:	2a00      	cmp	r2, #0
 8006f84:	d1f3      	bne.n	8006f6e <__ascii_mbtowc+0x6>
 8006f86:	4610      	mov	r0, r2
 8006f88:	b002      	add	sp, #8
 8006f8a:	4770      	bx	lr
 8006f8c:	f06f 0001 	mvn.w	r0, #1
 8006f90:	e7f4      	b.n	8006f7c <__ascii_mbtowc+0x14>
 8006f92:	bf00      	nop

08006f94 <_read_r>:
 8006f94:	b570      	push	{r4, r5, r6, lr}
 8006f96:	460d      	mov	r5, r1
 8006f98:	4c08      	ldr	r4, [pc, #32]	; (8006fbc <_read_r+0x28>)
 8006f9a:	4611      	mov	r1, r2
 8006f9c:	4606      	mov	r6, r0
 8006f9e:	461a      	mov	r2, r3
 8006fa0:	4628      	mov	r0, r5
 8006fa2:	2300      	movs	r3, #0
 8006fa4:	6023      	str	r3, [r4, #0]
 8006fa6:	f7fb f936 	bl	8002216 <_read>
 8006faa:	1c43      	adds	r3, r0, #1
 8006fac:	d000      	beq.n	8006fb0 <_read_r+0x1c>
 8006fae:	bd70      	pop	{r4, r5, r6, pc}
 8006fb0:	6823      	ldr	r3, [r4, #0]
 8006fb2:	2b00      	cmp	r3, #0
 8006fb4:	d0fb      	beq.n	8006fae <_read_r+0x1a>
 8006fb6:	6033      	str	r3, [r6, #0]
 8006fb8:	bd70      	pop	{r4, r5, r6, pc}
 8006fba:	bf00      	nop
 8006fbc:	200011f0 	.word	0x200011f0

08006fc0 <__swbuf_r>:
 8006fc0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8006fc2:	460d      	mov	r5, r1
 8006fc4:	4614      	mov	r4, r2
 8006fc6:	4606      	mov	r6, r0
 8006fc8:	b110      	cbz	r0, 8006fd0 <__swbuf_r+0x10>
 8006fca:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006fcc:	2b00      	cmp	r3, #0
 8006fce:	d043      	beq.n	8007058 <__swbuf_r+0x98>
 8006fd0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006fd4:	69a3      	ldr	r3, [r4, #24]
 8006fd6:	60a3      	str	r3, [r4, #8]
 8006fd8:	b291      	uxth	r1, r2
 8006fda:	0708      	lsls	r0, r1, #28
 8006fdc:	d51b      	bpl.n	8007016 <__swbuf_r+0x56>
 8006fde:	6923      	ldr	r3, [r4, #16]
 8006fe0:	b1cb      	cbz	r3, 8007016 <__swbuf_r+0x56>
 8006fe2:	b2ed      	uxtb	r5, r5
 8006fe4:	0489      	lsls	r1, r1, #18
 8006fe6:	462f      	mov	r7, r5
 8006fe8:	d522      	bpl.n	8007030 <__swbuf_r+0x70>
 8006fea:	6822      	ldr	r2, [r4, #0]
 8006fec:	6961      	ldr	r1, [r4, #20]
 8006fee:	1ad3      	subs	r3, r2, r3
 8006ff0:	4299      	cmp	r1, r3
 8006ff2:	dd29      	ble.n	8007048 <__swbuf_r+0x88>
 8006ff4:	3301      	adds	r3, #1
 8006ff6:	68a1      	ldr	r1, [r4, #8]
 8006ff8:	1c50      	adds	r0, r2, #1
 8006ffa:	3901      	subs	r1, #1
 8006ffc:	60a1      	str	r1, [r4, #8]
 8006ffe:	6020      	str	r0, [r4, #0]
 8007000:	7015      	strb	r5, [r2, #0]
 8007002:	6962      	ldr	r2, [r4, #20]
 8007004:	429a      	cmp	r2, r3
 8007006:	d02a      	beq.n	800705e <__swbuf_r+0x9e>
 8007008:	89a3      	ldrh	r3, [r4, #12]
 800700a:	07db      	lsls	r3, r3, #31
 800700c:	d501      	bpl.n	8007012 <__swbuf_r+0x52>
 800700e:	2d0a      	cmp	r5, #10
 8007010:	d025      	beq.n	800705e <__swbuf_r+0x9e>
 8007012:	4638      	mov	r0, r7
 8007014:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007016:	4621      	mov	r1, r4
 8007018:	4630      	mov	r0, r6
 800701a:	f7fc fffd 	bl	8004018 <__swsetup_r>
 800701e:	bb20      	cbnz	r0, 800706a <__swbuf_r+0xaa>
 8007020:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007024:	6923      	ldr	r3, [r4, #16]
 8007026:	b291      	uxth	r1, r2
 8007028:	b2ed      	uxtb	r5, r5
 800702a:	0489      	lsls	r1, r1, #18
 800702c:	462f      	mov	r7, r5
 800702e:	d4dc      	bmi.n	8006fea <__swbuf_r+0x2a>
 8007030:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007032:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007036:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800703a:	81a2      	strh	r2, [r4, #12]
 800703c:	6822      	ldr	r2, [r4, #0]
 800703e:	6661      	str	r1, [r4, #100]	; 0x64
 8007040:	6961      	ldr	r1, [r4, #20]
 8007042:	1ad3      	subs	r3, r2, r3
 8007044:	4299      	cmp	r1, r3
 8007046:	dcd5      	bgt.n	8006ff4 <__swbuf_r+0x34>
 8007048:	4621      	mov	r1, r4
 800704a:	4630      	mov	r0, r6
 800704c:	f7fe f8a6 	bl	800519c <_fflush_r>
 8007050:	b958      	cbnz	r0, 800706a <__swbuf_r+0xaa>
 8007052:	6822      	ldr	r2, [r4, #0]
 8007054:	2301      	movs	r3, #1
 8007056:	e7ce      	b.n	8006ff6 <__swbuf_r+0x36>
 8007058:	f7fe f8fc 	bl	8005254 <__sinit>
 800705c:	e7b8      	b.n	8006fd0 <__swbuf_r+0x10>
 800705e:	4621      	mov	r1, r4
 8007060:	4630      	mov	r0, r6
 8007062:	f7fe f89b 	bl	800519c <_fflush_r>
 8007066:	2800      	cmp	r0, #0
 8007068:	d0d3      	beq.n	8007012 <__swbuf_r+0x52>
 800706a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800706e:	e7d0      	b.n	8007012 <__swbuf_r+0x52>

08007070 <_wcrtomb_r>:
 8007070:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007072:	4c11      	ldr	r4, [pc, #68]	; (80070b8 <_wcrtomb_r+0x48>)
 8007074:	6824      	ldr	r4, [r4, #0]
 8007076:	b085      	sub	sp, #20
 8007078:	4606      	mov	r6, r0
 800707a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800707c:	461f      	mov	r7, r3
 800707e:	b151      	cbz	r1, 8007096 <_wcrtomb_r+0x26>
 8007080:	4d0e      	ldr	r5, [pc, #56]	; (80070bc <_wcrtomb_r+0x4c>)
 8007082:	2c00      	cmp	r4, #0
 8007084:	bf08      	it	eq
 8007086:	462c      	moveq	r4, r5
 8007088:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800708c:	47a0      	blx	r4
 800708e:	1c43      	adds	r3, r0, #1
 8007090:	d00c      	beq.n	80070ac <_wcrtomb_r+0x3c>
 8007092:	b005      	add	sp, #20
 8007094:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007096:	4a09      	ldr	r2, [pc, #36]	; (80070bc <_wcrtomb_r+0x4c>)
 8007098:	2c00      	cmp	r4, #0
 800709a:	bf08      	it	eq
 800709c:	4614      	moveq	r4, r2
 800709e:	460a      	mov	r2, r1
 80070a0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80070a4:	a901      	add	r1, sp, #4
 80070a6:	47a0      	blx	r4
 80070a8:	1c43      	adds	r3, r0, #1
 80070aa:	d1f2      	bne.n	8007092 <_wcrtomb_r+0x22>
 80070ac:	2200      	movs	r2, #0
 80070ae:	238a      	movs	r3, #138	; 0x8a
 80070b0:	603a      	str	r2, [r7, #0]
 80070b2:	6033      	str	r3, [r6, #0]
 80070b4:	b005      	add	sp, #20
 80070b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80070b8:	20000018 	.word	0x20000018
 80070bc:	2000085c 	.word	0x2000085c

080070c0 <__ascii_wctomb>:
 80070c0:	b121      	cbz	r1, 80070cc <__ascii_wctomb+0xc>
 80070c2:	2aff      	cmp	r2, #255	; 0xff
 80070c4:	d804      	bhi.n	80070d0 <__ascii_wctomb+0x10>
 80070c6:	700a      	strb	r2, [r1, #0]
 80070c8:	2001      	movs	r0, #1
 80070ca:	4770      	bx	lr
 80070cc:	4608      	mov	r0, r1
 80070ce:	4770      	bx	lr
 80070d0:	238a      	movs	r3, #138	; 0x8a
 80070d2:	6003      	str	r3, [r0, #0]
 80070d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80070d8:	4770      	bx	lr
 80070da:	bf00      	nop

080070dc <_init>:
 80070dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80070de:	bf00      	nop
 80070e0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80070e2:	bc08      	pop	{r3}
 80070e4:	469e      	mov	lr, r3
 80070e6:	4770      	bx	lr

080070e8 <_fini>:
 80070e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80070ea:	bf00      	nop
 80070ec:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80070ee:	bc08      	pop	{r3}
 80070f0:	469e      	mov	lr, r3
 80070f2:	4770      	bx	lr
 80070f4:	0000      	movs	r0, r0
	...
