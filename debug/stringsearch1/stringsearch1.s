
stringsearch1.elf:     file format elf32-littlearm


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
 80001d8:	20000a30 	.word	0x20000a30
 80001dc:	00000000 	.word	0x00000000
 80001e0:	080072dc 	.word	0x080072dc

080001e4 <frame_dummy>:
 80001e4:	b508      	push	{r3, lr}
 80001e6:	4b03      	ldr	r3, [pc, #12]	; (80001f4 <frame_dummy+0x10>)
 80001e8:	b11b      	cbz	r3, 80001f2 <frame_dummy+0xe>
 80001ea:	4903      	ldr	r1, [pc, #12]	; (80001f8 <frame_dummy+0x14>)
 80001ec:	4803      	ldr	r0, [pc, #12]	; (80001fc <frame_dummy+0x18>)
 80001ee:	f3af 8000 	nop.w
 80001f2:	bd08      	pop	{r3, pc}
 80001f4:	00000000 	.word	0x00000000
 80001f8:	20000a34 	.word	0x20000a34
 80001fc:	080072dc 	.word	0x080072dc

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
 8001108:	f641 5020 	movw	r0, #7456	; 0x1d20
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f641 5020 	movw	r0, #7456	; 0x1d20
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
 80013e8:	f247 3210 	movw	r2, #29456	; 0x7310
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
 800145a:	f240 007c 	movw	r0, #124	; 0x7c
 800145e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001462:	f247 3208 	movw	r2, #29448	; 0x7308
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
 8001484:	f240 007c 	movw	r0, #124	; 0x7c
 8001488:	f241 0108 	movw	r1, #4104	; 0x1008
 800148c:	f247 3208 	movw	r2, #29448	; 0x7308
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
 8001842:	f641 5124 	movw	r1, #7460	; 0x1d24
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
 800188c:	f641 5024 	movw	r0, #7460	; 0x1d24
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f641 5024 	movw	r0, #7460	; 0x1d24
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
 80019d4:	f247 3340 	movw	r3, #29504	; 0x7340
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
 80019fc:	f247 3350 	movw	r3, #29520	; 0x7350
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

08001eb6 <prep1>:
 8001eb6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eb8:	af03      	add	r7, sp, #12
 8001eba:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001ebe:	460d      	mov	r5, r1
 8001ec0:	f640 264c 	movw	r6, #2636	; 0xa4c
 8001ec4:	4601      	mov	r1, r0
 8001ec6:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8001eca:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
 8001ece:	6035      	str	r5, [r6, #0]
 8001ed0:	dc22      	bgt.n	8001f18 <prep1+0x62>
 8001ed2:	1d34      	adds	r4, r6, #4
 8001ed4:	462a      	mov	r2, r5
 8001ed6:	4620      	mov	r0, r4
 8001ed8:	f000 faf4 	bl	80024c4 <__aeabi_memcpy>
 8001edc:	2000      	movs	r0, #0
 8001ede:	eb06 0180 	add.w	r1, r6, r0, lsl #2
 8001ee2:	3001      	adds	r0, #1
 8001ee4:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8001ee8:	f8c1 5104 	str.w	r5, [r1, #260]	; 0x104
 8001eec:	d1f7      	bne.n	8001ede <prep1+0x28>
 8001eee:	1960      	adds	r0, r4, r5
 8001ef0:	3801      	subs	r0, #1
 8001ef2:	42a0      	cmp	r0, r4
 8001ef4:	d90a      	bls.n	8001f0c <prep1+0x56>
 8001ef6:	1e69      	subs	r1, r5, #1
 8001ef8:	1b02      	subs	r2, r0, r4
 8001efa:	f814 3b01 	ldrb.w	r3, [r4], #1
 8001efe:	3901      	subs	r1, #1
 8001f00:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8001f04:	f8c3 2104 	str.w	r2, [r3, #260]	; 0x104
 8001f08:	d1f6      	bne.n	8001ef8 <prep1+0x42>
 8001f0a:	4604      	mov	r4, r0
 8001f0c:	7820      	ldrb	r0, [r4, #0]
 8001f0e:	f8c6 0504 	str.w	r0, [r6, #1284]	; 0x504
 8001f12:	f85d bb04 	ldr.w	fp, [sp], #4
 8001f16:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001f18:	f000 facc 	bl	80024b4 <abort>

08001f1c <exec1>:
 8001f1c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f1e:	af03      	add	r7, sp, #12
 8001f20:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
 8001f24:	f640 2a4c 	movw	sl, #2636	; 0xa4c
 8001f28:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8001f2c:	f8da 6000 	ldr.w	r6, [sl]
 8001f30:	f8da 3504 	ldr.w	r3, [sl, #1284]	; 0x504
 8001f34:	1874      	adds	r4, r6, r1
 8001f36:	4401      	add	r1, r0
 8001f38:	4430      	add	r0, r6
 8001f3a:	eb0a 0383 	add.w	r3, sl, r3, lsl #2
 8001f3e:	1e45      	subs	r5, r0, #1
 8001f40:	f8c3 4104 	str.w	r4, [r3, #260]	; 0x104
 8001f44:	428d      	cmp	r5, r1
 8001f46:	bf22      	ittt	cs
 8001f48:	2000      	movcs	r0, #0
 8001f4a:	e8bd 0700 	ldmiacs.w	sp!, {r8, r9, sl}
 8001f4e:	bdf0      	popcs	{r4, r5, r6, r7, pc}
 8001f50:	eb0a 0006 	add.w	r0, sl, r6
 8001f54:	eb01 0c06 	add.w	ip, r1, r6
 8001f58:	f1c6 0e01 	rsb	lr, r6, #1
 8001f5c:	f1c4 0800 	rsb	r8, r4, #0
 8001f60:	1cc3      	adds	r3, r0, #3
 8001f62:	2000      	movs	r0, #0
 8001f64:	782c      	ldrb	r4, [r5, #0]
 8001f66:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8001f6a:	f8d4 4104 	ldr.w	r4, [r4, #260]	; 0x104
 8001f6e:	4425      	add	r5, r4
 8001f70:	428d      	cmp	r5, r1
 8001f72:	d3f7      	bcc.n	8001f64 <exec1+0x48>
 8001f74:	4565      	cmp	r5, ip
 8001f76:	d313      	bcc.n	8001fa0 <exec1+0x84>
 8001f78:	eb05 0908 	add.w	r9, r5, r8
 8001f7c:	f10a 0404 	add.w	r4, sl, #4
 8001f80:	eb09 060e 	add.w	r6, r9, lr
 8001f84:	429c      	cmp	r4, r3
 8001f86:	d206      	bcs.n	8001f96 <exec1+0x7a>
 8001f88:	f814 5b01 	ldrb.w	r5, [r4], #1
 8001f8c:	f816 2b01 	ldrb.w	r2, [r6], #1
 8001f90:	42aa      	cmp	r2, r5
 8001f92:	d0f7      	beq.n	8001f84 <exec1+0x68>
 8001f94:	e000      	b.n	8001f98 <exec1+0x7c>
 8001f96:	3001      	adds	r0, #1
 8001f98:	f109 0501 	add.w	r5, r9, #1
 8001f9c:	428d      	cmp	r5, r1
 8001f9e:	d3e1      	bcc.n	8001f64 <exec1+0x48>
 8001fa0:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 8001fa4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001fa6 <prep2>:
 8001fa6:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001fa8:	af03      	add	r7, sp, #12
 8001faa:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001fae:	f5ad 6d00 	sub.w	sp, sp, #2048	; 0x800
 8001fb2:	f640 7954 	movw	r9, #3924	; 0xf54
 8001fb6:	4688      	mov	r8, r1
 8001fb8:	4605      	mov	r5, r0
 8001fba:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8001fbe:	f5b8 7f80 	cmp.w	r8, #256	; 0x100
 8001fc2:	f8c9 8000 	str.w	r8, [r9]
 8001fc6:	f300 80bd 	bgt.w	8002144 <prep2+0x19e>
 8001fca:	f109 0604 	add.w	r6, r9, #4
 8001fce:	4629      	mov	r1, r5
 8001fd0:	4642      	mov	r2, r8
 8001fd2:	4630      	mov	r0, r6
 8001fd4:	f000 fa76 	bl	80024c4 <__aeabi_memcpy>
 8001fd8:	2000      	movs	r0, #0
 8001fda:	eb09 0180 	add.w	r1, r9, r0, lsl #2
 8001fde:	3001      	adds	r0, #1
 8001fe0:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8001fe4:	f8c1 8104 	str.w	r8, [r1, #260]	; 0x104
 8001fe8:	d1f7      	bne.n	8001fda <prep2+0x34>
 8001fea:	eb06 0008 	add.w	r0, r6, r8
 8001fee:	3801      	subs	r0, #1
 8001ff0:	42b0      	cmp	r0, r6
 8001ff2:	d90b      	bls.n	800200c <prep2+0x66>
 8001ff4:	f1a8 0101 	sub.w	r1, r8, #1
 8001ff8:	1b82      	subs	r2, r0, r6
 8001ffa:	f816 3b01 	ldrb.w	r3, [r6], #1
 8001ffe:	3901      	subs	r1, #1
 8002000:	eb09 0383 	add.w	r3, r9, r3, lsl #2
 8002004:	f8c3 2104 	str.w	r2, [r3, #260]	; 0x104
 8002008:	d1f6      	bne.n	8001ff8 <prep2+0x52>
 800200a:	4606      	mov	r6, r0
 800200c:	7830      	ldrb	r0, [r6, #0]
 800200e:	f8c9 0504 	str.w	r0, [r9, #1284]	; 0x504
 8002012:	2000      	movs	r0, #0
 8002014:	eb09 0180 	add.w	r1, r9, r0, lsl #2
 8002018:	3001      	adds	r0, #1
 800201a:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 800201e:	f8c1 8508 	str.w	r8, [r1, #1288]	; 0x508
 8002022:	d1f7      	bne.n	8002014 <prep2+0x6e>
 8002024:	f1b8 0f00 	cmp.w	r8, #0
 8002028:	dd44      	ble.n	80020b4 <prep2+0x10e>
 800202a:	f1a8 0001 	sub.w	r0, r8, #1
 800202e:	4629      	mov	r1, r5
 8002030:	4602      	mov	r2, r0
 8002032:	f811 3b01 	ldrb.w	r3, [r1], #1
 8002036:	eb09 0383 	add.w	r3, r9, r3, lsl #2
 800203a:	f8c3 2508 	str.w	r2, [r3, #1288]	; 0x508
 800203e:	3a01      	subs	r2, #1
 8002040:	1c53      	adds	r3, r2, #1
 8002042:	d1f6      	bne.n	8002032 <prep2+0x8c>
 8002044:	f1b8 0f02 	cmp.w	r8, #2
 8002048:	db0b      	blt.n	8002062 <prep2+0xbc>
 800204a:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
 800204e:	f609 120c 	addw	r2, r9, #2316	; 0x90c
 8002052:	eb01 0148 	add.w	r1, r1, r8, lsl #1
 8002056:	f842 1b04 	str.w	r1, [r2], #4
 800205a:	3801      	subs	r0, #1
 800205c:	f1a1 0101 	sub.w	r1, r1, #1
 8002060:	d1f9      	bne.n	8002056 <prep2+0xb0>
 8002062:	f108 0c01 	add.w	ip, r8, #1
 8002066:	f1b8 0f01 	cmp.w	r8, #1
 800206a:	db25      	blt.n	80020b8 <prep2+0x112>
 800206c:	f50d 6e80 	add.w	lr, sp, #1024	; 0x400
 8002070:	4661      	mov	r1, ip
 8002072:	4643      	mov	r3, r8
 8002074:	461e      	mov	r6, r3
 8002076:	4541      	cmp	r1, r8
 8002078:	f1a6 0301 	sub.w	r3, r6, #1
 800207c:	f84e 1026 	str.w	r1, [lr, r6, lsl #2]
 8002080:	dc14      	bgt.n	80020ac <prep2+0x106>
 8002082:	eba8 0006 	sub.w	r0, r8, r6
 8002086:	186a      	adds	r2, r5, r1
 8002088:	5cec      	ldrb	r4, [r5, r3]
 800208a:	f812 2c01 	ldrb.w	r2, [r2, #-1]
 800208e:	42a2      	cmp	r2, r4
 8002090:	d00c      	beq.n	80020ac <prep2+0x106>
 8002092:	eb09 0481 	add.w	r4, r9, r1, lsl #2
 8002096:	f8d4 2908 	ldr.w	r2, [r4, #2312]	; 0x908
 800209a:	4290      	cmp	r0, r2
 800209c:	bfbc      	itt	lt
 800209e:	f604 1208 	addwlt	r2, r4, #2312	; 0x908
 80020a2:	6010      	strlt	r0, [r2, #0]
 80020a4:	f85e 1021 	ldr.w	r1, [lr, r1, lsl #2]
 80020a8:	4541      	cmp	r1, r8
 80020aa:	ddec      	ble.n	8002086 <prep2+0xe0>
 80020ac:	3901      	subs	r1, #1
 80020ae:	2e01      	cmp	r6, #1
 80020b0:	dce0      	bgt.n	8002074 <prep2+0xce>
 80020b2:	e002      	b.n	80020ba <prep2+0x114>
 80020b4:	f108 0c01 	add.w	ip, r8, #1
 80020b8:	4661      	mov	r1, ip
 80020ba:	ebac 0e01 	sub.w	lr, ip, r1
 80020be:	f1be 0f01 	cmp.w	lr, #1
 80020c2:	db16      	blt.n	80020f2 <prep2+0x14c>
 80020c4:	2301      	movs	r3, #1
 80020c6:	2600      	movs	r6, #0
 80020c8:	4668      	mov	r0, sp
 80020ca:	2e01      	cmp	r6, #1
 80020cc:	f840 6023 	str.w	r6, [r0, r3, lsl #2]
 80020d0:	db0b      	blt.n	80020ea <prep2+0x144>
 80020d2:	18ec      	adds	r4, r5, r3
 80020d4:	f814 4c01 	ldrb.w	r4, [r4, #-1]
 80020d8:	19aa      	adds	r2, r5, r6
 80020da:	f812 2c01 	ldrb.w	r2, [r2, #-1]
 80020de:	4294      	cmp	r4, r2
 80020e0:	d003      	beq.n	80020ea <prep2+0x144>
 80020e2:	f850 6026 	ldr.w	r6, [r0, r6, lsl #2]
 80020e6:	2e00      	cmp	r6, #0
 80020e8:	dcf6      	bgt.n	80020d8 <prep2+0x132>
 80020ea:	3601      	adds	r6, #1
 80020ec:	3301      	adds	r3, #1
 80020ee:	4576      	cmp	r6, lr
 80020f0:	dbeb      	blt.n	80020ca <prep2+0x124>
 80020f2:	4541      	cmp	r1, r8
 80020f4:	da1f      	bge.n	8002136 <prep2+0x190>
 80020f6:	2601      	movs	r6, #1
 80020f8:	466b      	mov	r3, sp
 80020fa:	428e      	cmp	r6, r1
 80020fc:	dc11      	bgt.n	8002122 <prep2+0x17c>
 80020fe:	eb08 0001 	add.w	r0, r8, r1
 8002102:	1b80      	subs	r0, r0, r6
 8002104:	eb09 0586 	add.w	r5, r9, r6, lsl #2
 8002108:	f8d5 2908 	ldr.w	r2, [r5, #2312]	; 0x908
 800210c:	4290      	cmp	r0, r2
 800210e:	f106 0201 	add.w	r2, r6, #1
 8002112:	bfb8      	it	lt
 8002114:	f8c5 0908 	strlt.w	r0, [r5, #2312]	; 0x908
 8002118:	428e      	cmp	r6, r1
 800211a:	f1a0 0001 	sub.w	r0, r0, #1
 800211e:	4616      	mov	r6, r2
 8002120:	dbf0      	blt.n	8002104 <prep2+0x15e>
 8002122:	f853 002e 	ldr.w	r0, [r3, lr, lsl #2]
 8002126:	eb0e 0201 	add.w	r2, lr, r1
 800212a:	1c4e      	adds	r6, r1, #1
 800212c:	1a12      	subs	r2, r2, r0
 800212e:	4686      	mov	lr, r0
 8002130:	4542      	cmp	r2, r8
 8002132:	4611      	mov	r1, r2
 8002134:	dbe1      	blt.n	80020fa <prep2+0x154>
 8002136:	f8c9 c908 	str.w	ip, [r9, #2312]	; 0x908
 800213a:	f50d 6d00 	add.w	sp, sp, #2048	; 0x800
 800213e:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002142:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8002144:	f000 f9b6 	bl	80024b4 <abort>

08002148 <exec2>:
 8002148:	b5f0      	push	{r4, r5, r6, r7, lr}
 800214a:	af03      	add	r7, sp, #12
 800214c:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002150:	f640 7a54 	movw	sl, #3924	; 0xf54
 8002154:	eb00 0b01 	add.w	fp, r0, r1
 8002158:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 800215c:	f8da 2504 	ldr.w	r2, [sl, #1284]	; 0x504
 8002160:	eb0a 0382 	add.w	r3, sl, r2, lsl #2
 8002164:	f8da 2000 	ldr.w	r2, [sl]
 8002168:	4410      	add	r0, r2
 800216a:	1856      	adds	r6, r2, r1
 800216c:	1e44      	subs	r4, r0, #1
 800216e:	f8c3 6104 	str.w	r6, [r3, #260]	; 0x104
 8002172:	455c      	cmp	r4, fp
 8002174:	bf22      	ittt	cs
 8002176:	2000      	movcs	r0, #0
 8002178:	e8bd 0f00 	ldmiacs.w	sp!, {r8, r9, sl, fp}
 800217c:	bdf0      	popcs	{r4, r5, r6, r7, pc}
 800217e:	4250      	negs	r0, r2
 8002180:	eb0a 0c02 	add.w	ip, sl, r2
 8002184:	eb0b 0e02 	add.w	lr, fp, r2
 8002188:	eba0 0801 	sub.w	r8, r0, r1
 800218c:	2000      	movs	r0, #0
 800218e:	4621      	mov	r1, r4
 8002190:	780a      	ldrb	r2, [r1, #0]
 8002192:	eb0a 0282 	add.w	r2, sl, r2, lsl #2
 8002196:	f8d2 2104 	ldr.w	r2, [r2, #260]	; 0x104
 800219a:	188c      	adds	r4, r1, r2
 800219c:	455c      	cmp	r4, fp
 800219e:	d3f6      	bcc.n	800218e <exec2+0x46>
 80021a0:	4574      	cmp	r4, lr
 80021a2:	d32a      	bcc.n	80021fa <exec2+0xb2>
 80021a4:	4441      	add	r1, r8
 80021a6:	188e      	adds	r6, r1, r2
 80021a8:	2200      	movs	r2, #0
 80021aa:	eb0c 0302 	add.w	r3, ip, r2
 80021ae:	f10a 0404 	add.w	r4, sl, #4
 80021b2:	1cd9      	adds	r1, r3, #3
 80021b4:	42a1      	cmp	r1, r4
 80021b6:	d90c      	bls.n	80021d2 <exec2+0x8a>
 80021b8:	18b1      	adds	r1, r6, r2
 80021ba:	3a01      	subs	r2, #1
 80021bc:	f811 5c01 	ldrb.w	r5, [r1, #-1]
 80021c0:	7899      	ldrb	r1, [r3, #2]
 80021c2:	428d      	cmp	r5, r1
 80021c4:	d0f1      	beq.n	80021aa <exec2+0x62>
 80021c6:	eb0c 0102 	add.w	r1, ip, r2
 80021ca:	eb06 0902 	add.w	r9, r6, r2
 80021ce:	3103      	adds	r1, #3
 80021d0:	e003      	b.n	80021da <exec2+0x92>
 80021d2:	5cb5      	ldrb	r5, [r6, r2]
 80021d4:	eb06 0902 	add.w	r9, r6, r2
 80021d8:	3001      	adds	r0, #1
 80021da:	1b09      	subs	r1, r1, r4
 80021dc:	eb0a 0285 	add.w	r2, sl, r5, lsl #2
 80021e0:	eb0a 0181 	add.w	r1, sl, r1, lsl #2
 80021e4:	f8d2 2508 	ldr.w	r2, [r2, #1288]	; 0x508
 80021e8:	f8d1 190c 	ldr.w	r1, [r1, #2316]	; 0x90c
 80021ec:	4291      	cmp	r1, r2
 80021ee:	bfb8      	it	lt
 80021f0:	4611      	movlt	r1, r2
 80021f2:	eb09 0401 	add.w	r4, r9, r1
 80021f6:	455c      	cmp	r4, fp
 80021f8:	d3c9      	bcc.n	800218e <exec2+0x46>
 80021fa:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80021fe:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002200 <__io_putchar>:
 8002200:	b580      	push	{r7, lr}
 8002202:	466f      	mov	r7, sp
 8002204:	b082      	sub	sp, #8
 8002206:	9001      	str	r0, [sp, #4]
 8002208:	f641 4060 	movw	r0, #7264	; 0x1c60
 800220c:	a901      	add	r1, sp, #4
 800220e:	2201      	movs	r2, #1
 8002210:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002214:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002218:	f7ff fd5f 	bl	8001cda <HAL_UART_Transmit>
 800221c:	9801      	ldr	r0, [sp, #4]
 800221e:	b002      	add	sp, #8
 8002220:	bd80      	pop	{r7, pc}

08002222 <main>:
 8002222:	b5b0      	push	{r4, r5, r7, lr}
 8002224:	af02      	add	r7, sp, #8
 8002226:	f641 4160 	movw	r1, #7264	; 0x1c60
 800222a:	f643 0000 	movw	r0, #14336	; 0x3800
 800222e:	220c      	movs	r2, #12
 8002230:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002234:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002238:	6008      	str	r0, [r1, #0]
 800223a:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 800223e:	6048      	str	r0, [r1, #4]
 8002240:	2000      	movs	r0, #0
 8002242:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8002246:	6108      	str	r0, [r1, #16]
 8002248:	6248      	str	r0, [r1, #36]	; 0x24
 800224a:	e9c1 0007 	strd	r0, r0, [r1, #28]
 800224e:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002252:	2000      	movs	r0, #0
 8002254:	f7ff fdd6 	bl	8001e04 <BSP_COM_Init>
 8002258:	f000 f86c 	bl	8002334 <initialise_benchmark>
 800225c:	f247 3060 	movw	r0, #29536	; 0x7360
 8002260:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002264:	f000 f9a4 	bl	80025b0 <printf>
 8002268:	f247 4010 	movw	r0, #29712	; 0x7410
 800226c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002270:	f000 fa00 	bl	8002674 <puts>
 8002274:	f7fe ff38 	bl	80010e8 <HAL_Init>
 8002278:	f7fe ff4e 	bl	8001118 <HAL_GetTick>
 800227c:	4604      	mov	r4, r0
 800227e:	f000 f826 	bl	80022ce <benchmark>
 8002282:	4605      	mov	r5, r0
 8002284:	f7fe ff48 	bl	8001118 <HAL_GetTick>
 8002288:	1b04      	subs	r4, r0, r4
 800228a:	4628      	mov	r0, r5
 800228c:	f000 f859 	bl	8002342 <verify_benchmark>
 8002290:	1c41      	adds	r1, r0, #1
 8002292:	d006      	beq.n	80022a2 <main+0x80>
 8002294:	2801      	cmp	r0, #1
 8002296:	d109      	bne.n	80022ac <main+0x8a>
 8002298:	f247 307c 	movw	r0, #29564	; 0x737c
 800229c:	f6c0 0000 	movt	r0, #2048	; 0x800
 80022a0:	e008      	b.n	80022b4 <main+0x92>
 80022a2:	f247 30a0 	movw	r0, #29600	; 0x73a0
 80022a6:	f6c0 0000 	movt	r0, #2048	; 0x800
 80022aa:	e003      	b.n	80022b4 <main+0x92>
 80022ac:	f247 30d5 	movw	r0, #29653	; 0x73d5
 80022b0:	f6c0 0000 	movt	r0, #2048	; 0x800
 80022b4:	4621      	mov	r1, r4
 80022b6:	f000 f97b 	bl	80025b0 <printf>
 80022ba:	2000      	movs	r0, #0
 80022bc:	bdb0      	pop	{r4, r5, r7, pc}

080022be <SysTick_Handler>:
 80022be:	b580      	push	{r7, lr}
 80022c0:	466f      	mov	r7, sp
 80022c2:	f7fe ff21 	bl	8001108 <HAL_IncTick>
 80022c6:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80022ca:	f7fe bf7b 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

080022ce <benchmark>:
 80022ce:	b5f0      	push	{r4, r5, r6, r7, lr}
 80022d0:	af03      	add	r7, sp, #12
 80022d2:	f84d 8d04 	str.w	r8, [sp, #-4]!
 80022d6:	f641 48e0 	movw	r8, #7392	; 0x1ce0
 80022da:	f240 0478 	movw	r4, #120	; 0x78
 80022de:	f2c2 0800 	movt	r8, #8192	; 0x2000
 80022e2:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80022e6:	f898 1000 	ldrb.w	r1, [r8]
 80022ea:	4620      	mov	r0, r4
 80022ec:	2900      	cmp	r1, #0
 80022ee:	bf18      	it	ne
 80022f0:	2103      	movne	r1, #3
 80022f2:	f7ff fde0 	bl	8001eb6 <prep1>
 80022f6:	f240 0514 	movw	r5, #20
 80022fa:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80022fe:	4628      	mov	r0, r5
 8002300:	f7fe f99e 	bl	8000640 <strlen>
 8002304:	4601      	mov	r1, r0
 8002306:	4628      	mov	r0, r5
 8002308:	f7ff fe08 	bl	8001f1c <exec1>
 800230c:	f898 1000 	ldrb.w	r1, [r8]
 8002310:	4606      	mov	r6, r0
 8002312:	4620      	mov	r0, r4
 8002314:	2900      	cmp	r1, #0
 8002316:	bf18      	it	ne
 8002318:	2103      	movne	r1, #3
 800231a:	f7ff fe44 	bl	8001fa6 <prep2>
 800231e:	4628      	mov	r0, r5
 8002320:	f7fe f98e 	bl	8000640 <strlen>
 8002324:	4601      	mov	r1, r0
 8002326:	4628      	mov	r0, r5
 8002328:	f7ff ff0e 	bl	8002148 <exec2>
 800232c:	4370      	muls	r0, r6
 800232e:	f85d 8b04 	ldr.w	r8, [sp], #4
 8002332:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002334 <initialise_benchmark>:
 8002334:	f641 40e0 	movw	r0, #7392	; 0x1ce0
 8002338:	2101      	movs	r1, #1
 800233a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800233e:	7001      	strb	r1, [r0, #0]
 8002340:	4770      	bx	lr

08002342 <verify_benchmark>:
 8002342:	2100      	movs	r1, #0
 8002344:	2824      	cmp	r0, #36	; 0x24
 8002346:	bf08      	it	eq
 8002348:	2101      	moveq	r1, #1
 800234a:	4608      	mov	r0, r1
 800234c:	4770      	bx	lr

0800234e <_getpid>:
 800234e:	2001      	movs	r0, #1
 8002350:	4770      	bx	lr

08002352 <_kill>:
 8002352:	b580      	push	{r7, lr}
 8002354:	466f      	mov	r7, sp
 8002356:	f000 f8b7 	bl	80024c8 <__errno>
 800235a:	2116      	movs	r1, #22
 800235c:	6001      	str	r1, [r0, #0]
 800235e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002362:	bd80      	pop	{r7, pc}

08002364 <_exit>:
 8002364:	b580      	push	{r7, lr}
 8002366:	466f      	mov	r7, sp
 8002368:	f000 f8ae 	bl	80024c8 <__errno>
 800236c:	2116      	movs	r1, #22
 800236e:	6001      	str	r1, [r0, #0]
 8002370:	e7fe      	b.n	8002370 <_exit+0xc>

08002372 <_read>:
 8002372:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002374:	af03      	add	r7, sp, #12
 8002376:	f84d bd04 	str.w	fp, [sp, #-4]!
 800237a:	4614      	mov	r4, r2
 800237c:	460d      	mov	r5, r1
 800237e:	2c01      	cmp	r4, #1
 8002380:	db06      	blt.n	8002390 <_read+0x1e>
 8002382:	4626      	mov	r6, r4
 8002384:	f3af 8000 	nop.w
 8002388:	f805 0b01 	strb.w	r0, [r5], #1
 800238c:	3e01      	subs	r6, #1
 800238e:	d1f9      	bne.n	8002384 <_read+0x12>
 8002390:	4620      	mov	r0, r4
 8002392:	f85d bb04 	ldr.w	fp, [sp], #4
 8002396:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002398 <_write>:
 8002398:	b5f0      	push	{r4, r5, r6, r7, lr}
 800239a:	af03      	add	r7, sp, #12
 800239c:	f84d bd04 	str.w	fp, [sp, #-4]!
 80023a0:	4614      	mov	r4, r2
 80023a2:	460d      	mov	r5, r1
 80023a4:	2c01      	cmp	r4, #1
 80023a6:	db06      	blt.n	80023b6 <_write+0x1e>
 80023a8:	4626      	mov	r6, r4
 80023aa:	f815 0b01 	ldrb.w	r0, [r5], #1
 80023ae:	f7ff ff27 	bl	8002200 <__io_putchar>
 80023b2:	3e01      	subs	r6, #1
 80023b4:	d1f9      	bne.n	80023aa <_write+0x12>
 80023b6:	4620      	mov	r0, r4
 80023b8:	f85d bb04 	ldr.w	fp, [sp], #4
 80023bc:	bdf0      	pop	{r4, r5, r6, r7, pc}

080023be <_sbrk>:
 80023be:	f641 42e8 	movw	r2, #7400	; 0x1ce8
 80023c2:	4601      	mov	r1, r0
 80023c4:	466b      	mov	r3, sp
 80023c6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80023ca:	6810      	ldr	r0, [r2, #0]
 80023cc:	2800      	cmp	r0, #0
 80023ce:	bf02      	ittt	eq
 80023d0:	f641 5090 	movweq	r0, #7568	; 0x1d90
 80023d4:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80023d8:	6010      	streq	r0, [r2, #0]
 80023da:	4401      	add	r1, r0
 80023dc:	4299      	cmp	r1, r3
 80023de:	bf9c      	itt	ls
 80023e0:	6011      	strls	r1, [r2, #0]
 80023e2:	4770      	bxls	lr
 80023e4:	b580      	push	{r7, lr}
 80023e6:	466f      	mov	r7, sp
 80023e8:	f000 f86e 	bl	80024c8 <__errno>
 80023ec:	210c      	movs	r1, #12
 80023ee:	6001      	str	r1, [r0, #0]
 80023f0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80023f4:	bd80      	pop	{r7, pc}

080023f6 <_close>:
 80023f6:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80023fa:	4770      	bx	lr

080023fc <_fstat>:
 80023fc:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8002400:	6048      	str	r0, [r1, #4]
 8002402:	2000      	movs	r0, #0
 8002404:	4770      	bx	lr

08002406 <_isatty>:
 8002406:	2001      	movs	r0, #1
 8002408:	4770      	bx	lr

0800240a <_lseek>:
 800240a:	2000      	movs	r0, #0
 800240c:	4770      	bx	lr

0800240e <SystemInit>:
 800240e:	f64e 5088 	movw	r0, #60808	; 0xed88
 8002412:	f04f 0c00 	mov.w	ip, #0
 8002416:	f2ce 0000 	movt	r0, #57344	; 0xe000
 800241a:	6801      	ldr	r1, [r0, #0]
 800241c:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8002420:	6001      	str	r1, [r0, #0]
 8002422:	f241 0100 	movw	r1, #4096	; 0x1000
 8002426:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800242a:	680a      	ldr	r2, [r1, #0]
 800242c:	f042 0201 	orr.w	r2, r2, #1
 8002430:	600a      	str	r2, [r1, #0]
 8002432:	f8c1 c008 	str.w	ip, [r1, #8]
 8002436:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800243a:	680b      	ldr	r3, [r1, #0]
 800243c:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 8002440:	401a      	ands	r2, r3
 8002442:	600a      	str	r2, [r1, #0]
 8002444:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002448:	60ca      	str	r2, [r1, #12]
 800244a:	680a      	ldr	r2, [r1, #0]
 800244c:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002450:	600a      	str	r2, [r1, #0]
 8002452:	f8c1 c018 	str.w	ip, [r1, #24]
 8002456:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 800245a:	f840 1c80 	str.w	r1, [r0, #-128]
 800245e:	4770      	bx	lr

08002460 <Reset_Handler>:
 8002460:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002498 <LoopForever+0x2>
 8002464:	2100      	movs	r1, #0
 8002466:	e003      	b.n	8002470 <LoopCopyDataInit>

08002468 <CopyDataInit>:
 8002468:	4b0c      	ldr	r3, [pc, #48]	; (800249c <LoopForever+0x6>)
 800246a:	585b      	ldr	r3, [r3, r1]
 800246c:	5043      	str	r3, [r0, r1]
 800246e:	3104      	adds	r1, #4

08002470 <LoopCopyDataInit>:
 8002470:	480b      	ldr	r0, [pc, #44]	; (80024a0 <LoopForever+0xa>)
 8002472:	4b0c      	ldr	r3, [pc, #48]	; (80024a4 <LoopForever+0xe>)
 8002474:	1842      	adds	r2, r0, r1
 8002476:	429a      	cmp	r2, r3
 8002478:	d3f6      	bcc.n	8002468 <CopyDataInit>
 800247a:	4a0b      	ldr	r2, [pc, #44]	; (80024a8 <LoopForever+0x12>)
 800247c:	e002      	b.n	8002484 <LoopFillZerobss>

0800247e <FillZerobss>:
 800247e:	2300      	movs	r3, #0
 8002480:	f842 3b04 	str.w	r3, [r2], #4

08002484 <LoopFillZerobss>:
 8002484:	4b09      	ldr	r3, [pc, #36]	; (80024ac <LoopForever+0x16>)
 8002486:	429a      	cmp	r2, r3
 8002488:	d3f9      	bcc.n	800247e <FillZerobss>
 800248a:	f7ff ffc0 	bl	800240e <SystemInit>
 800248e:	f000 f821 	bl	80024d4 <__libc_init_array>
 8002492:	f7ff fec6 	bl	8002222 <main>

08002496 <LoopForever>:
 8002496:	e7fe      	b.n	8002496 <LoopForever>
 8002498:	20018000 	.word	0x20018000
 800249c:	080076b8 	.word	0x080076b8
 80024a0:	20000000 	.word	0x20000000
 80024a4:	20000a30 	.word	0x20000a30
 80024a8:	20000a30 	.word	0x20000a30
 80024ac:	20001d90 	.word	0x20001d90

080024b0 <ADC1_2_IRQHandler>:
 80024b0:	e7fe      	b.n	80024b0 <ADC1_2_IRQHandler>
	...

080024b4 <abort>:
 80024b4:	b508      	push	{r3, lr}
 80024b6:	2006      	movs	r0, #6
 80024b8:	f000 f910 	bl	80026dc <raise>
 80024bc:	2001      	movs	r0, #1
 80024be:	f7ff ff51 	bl	8002364 <_exit>
 80024c2:	bf00      	nop

080024c4 <__aeabi_memcpy>:
 80024c4:	f7fe b81c 	b.w	8000500 <memcpy>

080024c8 <__errno>:
 80024c8:	4b01      	ldr	r3, [pc, #4]	; (80024d0 <__errno+0x8>)
 80024ca:	6818      	ldr	r0, [r3, #0]
 80024cc:	4770      	bx	lr
 80024ce:	bf00      	nop
 80024d0:	20000080 	.word	0x20000080

080024d4 <__libc_init_array>:
 80024d4:	b570      	push	{r4, r5, r6, lr}
 80024d6:	4e0d      	ldr	r6, [pc, #52]	; (800250c <__libc_init_array+0x38>)
 80024d8:	4d0d      	ldr	r5, [pc, #52]	; (8002510 <__libc_init_array+0x3c>)
 80024da:	1b76      	subs	r6, r6, r5
 80024dc:	10b6      	asrs	r6, r6, #2
 80024de:	d006      	beq.n	80024ee <__libc_init_array+0x1a>
 80024e0:	2400      	movs	r4, #0
 80024e2:	3401      	adds	r4, #1
 80024e4:	f855 3b04 	ldr.w	r3, [r5], #4
 80024e8:	4798      	blx	r3
 80024ea:	42a6      	cmp	r6, r4
 80024ec:	d1f9      	bne.n	80024e2 <__libc_init_array+0xe>
 80024ee:	4e09      	ldr	r6, [pc, #36]	; (8002514 <__libc_init_array+0x40>)
 80024f0:	4d09      	ldr	r5, [pc, #36]	; (8002518 <__libc_init_array+0x44>)
 80024f2:	1b76      	subs	r6, r6, r5
 80024f4:	f004 fef2 	bl	80072dc <_init>
 80024f8:	10b6      	asrs	r6, r6, #2
 80024fa:	d006      	beq.n	800250a <__libc_init_array+0x36>
 80024fc:	2400      	movs	r4, #0
 80024fe:	3401      	adds	r4, #1
 8002500:	f855 3b04 	ldr.w	r3, [r5], #4
 8002504:	4798      	blx	r3
 8002506:	42a6      	cmp	r6, r4
 8002508:	d1f9      	bne.n	80024fe <__libc_init_array+0x2a>
 800250a:	bd70      	pop	{r4, r5, r6, pc}
 800250c:	080076a8 	.word	0x080076a8
 8002510:	080076a8 	.word	0x080076a8
 8002514:	080076b0 	.word	0x080076b0
 8002518:	080076a8 	.word	0x080076a8

0800251c <memset>:
 800251c:	b4f0      	push	{r4, r5, r6, r7}
 800251e:	0786      	lsls	r6, r0, #30
 8002520:	d043      	beq.n	80025aa <memset+0x8e>
 8002522:	1e54      	subs	r4, r2, #1
 8002524:	2a00      	cmp	r2, #0
 8002526:	d03e      	beq.n	80025a6 <memset+0x8a>
 8002528:	b2ca      	uxtb	r2, r1
 800252a:	4603      	mov	r3, r0
 800252c:	e002      	b.n	8002534 <memset+0x18>
 800252e:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8002532:	d338      	bcc.n	80025a6 <memset+0x8a>
 8002534:	f803 2b01 	strb.w	r2, [r3], #1
 8002538:	079d      	lsls	r5, r3, #30
 800253a:	d1f8      	bne.n	800252e <memset+0x12>
 800253c:	2c03      	cmp	r4, #3
 800253e:	d92b      	bls.n	8002598 <memset+0x7c>
 8002540:	b2cd      	uxtb	r5, r1
 8002542:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8002546:	2c0f      	cmp	r4, #15
 8002548:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 800254c:	d916      	bls.n	800257c <memset+0x60>
 800254e:	f1a4 0710 	sub.w	r7, r4, #16
 8002552:	093f      	lsrs	r7, r7, #4
 8002554:	f103 0620 	add.w	r6, r3, #32
 8002558:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 800255c:	f103 0210 	add.w	r2, r3, #16
 8002560:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002564:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002568:	3210      	adds	r2, #16
 800256a:	42b2      	cmp	r2, r6
 800256c:	d1f8      	bne.n	8002560 <memset+0x44>
 800256e:	f004 040f 	and.w	r4, r4, #15
 8002572:	3701      	adds	r7, #1
 8002574:	2c03      	cmp	r4, #3
 8002576:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800257a:	d90d      	bls.n	8002598 <memset+0x7c>
 800257c:	461e      	mov	r6, r3
 800257e:	4622      	mov	r2, r4
 8002580:	3a04      	subs	r2, #4
 8002582:	2a03      	cmp	r2, #3
 8002584:	f846 5b04 	str.w	r5, [r6], #4
 8002588:	d8fa      	bhi.n	8002580 <memset+0x64>
 800258a:	1f22      	subs	r2, r4, #4
 800258c:	f022 0203 	bic.w	r2, r2, #3
 8002590:	3204      	adds	r2, #4
 8002592:	4413      	add	r3, r2
 8002594:	f004 0403 	and.w	r4, r4, #3
 8002598:	b12c      	cbz	r4, 80025a6 <memset+0x8a>
 800259a:	b2c9      	uxtb	r1, r1
 800259c:	441c      	add	r4, r3
 800259e:	f803 1b01 	strb.w	r1, [r3], #1
 80025a2:	429c      	cmp	r4, r3
 80025a4:	d1fb      	bne.n	800259e <memset+0x82>
 80025a6:	bcf0      	pop	{r4, r5, r6, r7}
 80025a8:	4770      	bx	lr
 80025aa:	4614      	mov	r4, r2
 80025ac:	4603      	mov	r3, r0
 80025ae:	e7c5      	b.n	800253c <memset+0x20>

080025b0 <printf>:
 80025b0:	b40f      	push	{r0, r1, r2, r3}
 80025b2:	b500      	push	{lr}
 80025b4:	4907      	ldr	r1, [pc, #28]	; (80025d4 <printf+0x24>)
 80025b6:	b083      	sub	sp, #12
 80025b8:	ab04      	add	r3, sp, #16
 80025ba:	6808      	ldr	r0, [r1, #0]
 80025bc:	f853 2b04 	ldr.w	r2, [r3], #4
 80025c0:	6881      	ldr	r1, [r0, #8]
 80025c2:	9301      	str	r3, [sp, #4]
 80025c4:	f000 f8a8 	bl	8002718 <_vfprintf_r>
 80025c8:	b003      	add	sp, #12
 80025ca:	f85d eb04 	ldr.w	lr, [sp], #4
 80025ce:	b004      	add	sp, #16
 80025d0:	4770      	bx	lr
 80025d2:	bf00      	nop
 80025d4:	20000080 	.word	0x20000080

080025d8 <_puts_r>:
 80025d8:	b570      	push	{r4, r5, r6, lr}
 80025da:	4605      	mov	r5, r0
 80025dc:	b088      	sub	sp, #32
 80025de:	4608      	mov	r0, r1
 80025e0:	460c      	mov	r4, r1
 80025e2:	f7fe f82d 	bl	8000640 <strlen>
 80025e6:	4a22      	ldr	r2, [pc, #136]	; (8002670 <_puts_r+0x98>)
 80025e8:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80025ea:	9404      	str	r4, [sp, #16]
 80025ec:	2601      	movs	r6, #1
 80025ee:	1c44      	adds	r4, r0, #1
 80025f0:	a904      	add	r1, sp, #16
 80025f2:	9206      	str	r2, [sp, #24]
 80025f4:	2202      	movs	r2, #2
 80025f6:	9403      	str	r4, [sp, #12]
 80025f8:	9005      	str	r0, [sp, #20]
 80025fa:	68ac      	ldr	r4, [r5, #8]
 80025fc:	9607      	str	r6, [sp, #28]
 80025fe:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8002602:	b31b      	cbz	r3, 800264c <_puts_r+0x74>
 8002604:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8002606:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800260a:	07ce      	lsls	r6, r1, #31
 800260c:	b29a      	uxth	r2, r3
 800260e:	d401      	bmi.n	8002614 <_puts_r+0x3c>
 8002610:	0590      	lsls	r0, r2, #22
 8002612:	d525      	bpl.n	8002660 <_puts_r+0x88>
 8002614:	0491      	lsls	r1, r2, #18
 8002616:	d406      	bmi.n	8002626 <_puts_r+0x4e>
 8002618:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800261a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800261e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8002622:	81a3      	strh	r3, [r4, #12]
 8002624:	6662      	str	r2, [r4, #100]	; 0x64
 8002626:	4628      	mov	r0, r5
 8002628:	aa01      	add	r2, sp, #4
 800262a:	4621      	mov	r1, r4
 800262c:	f003 f8a8 	bl	8005780 <__sfvwrite_r>
 8002630:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8002632:	2800      	cmp	r0, #0
 8002634:	bf0c      	ite	eq
 8002636:	250a      	moveq	r5, #10
 8002638:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 800263c:	07da      	lsls	r2, r3, #31
 800263e:	d402      	bmi.n	8002646 <_puts_r+0x6e>
 8002640:	89a3      	ldrh	r3, [r4, #12]
 8002642:	059b      	lsls	r3, r3, #22
 8002644:	d506      	bpl.n	8002654 <_puts_r+0x7c>
 8002646:	4628      	mov	r0, r5
 8002648:	b008      	add	sp, #32
 800264a:	bd70      	pop	{r4, r5, r6, pc}
 800264c:	4628      	mov	r0, r5
 800264e:	f002 ff01 	bl	8005454 <__sinit>
 8002652:	e7d7      	b.n	8002604 <_puts_r+0x2c>
 8002654:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002656:	f003 fa4f 	bl	8005af8 <__retarget_lock_release_recursive>
 800265a:	4628      	mov	r0, r5
 800265c:	b008      	add	sp, #32
 800265e:	bd70      	pop	{r4, r5, r6, pc}
 8002660:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002662:	f003 fa47 	bl	8005af4 <__retarget_lock_acquire_recursive>
 8002666:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800266a:	b29a      	uxth	r2, r3
 800266c:	e7d2      	b.n	8002614 <_puts_r+0x3c>
 800266e:	bf00      	nop
 8002670:	08007418 	.word	0x08007418

08002674 <puts>:
 8002674:	4b02      	ldr	r3, [pc, #8]	; (8002680 <puts+0xc>)
 8002676:	4601      	mov	r1, r0
 8002678:	6818      	ldr	r0, [r3, #0]
 800267a:	f7ff bfad 	b.w	80025d8 <_puts_r>
 800267e:	bf00      	nop
 8002680:	20000080 	.word	0x20000080

08002684 <_raise_r>:
 8002684:	291f      	cmp	r1, #31
 8002686:	b538      	push	{r3, r4, r5, lr}
 8002688:	d822      	bhi.n	80026d0 <_raise_r+0x4c>
 800268a:	f8d0 32dc 	ldr.w	r3, [r0, #732]	; 0x2dc
 800268e:	4605      	mov	r5, r0
 8002690:	460c      	mov	r4, r1
 8002692:	b16b      	cbz	r3, 80026b0 <_raise_r+0x2c>
 8002694:	f853 2021 	ldr.w	r2, [r3, r1, lsl #2]
 8002698:	b152      	cbz	r2, 80026b0 <_raise_r+0x2c>
 800269a:	2a01      	cmp	r2, #1
 800269c:	d012      	beq.n	80026c4 <_raise_r+0x40>
 800269e:	1c51      	adds	r1, r2, #1
 80026a0:	d012      	beq.n	80026c8 <_raise_r+0x44>
 80026a2:	2500      	movs	r5, #0
 80026a4:	4620      	mov	r0, r4
 80026a6:	f843 5024 	str.w	r5, [r3, r4, lsl #2]
 80026aa:	4790      	blx	r2
 80026ac:	4628      	mov	r0, r5
 80026ae:	bd38      	pop	{r3, r4, r5, pc}
 80026b0:	4628      	mov	r0, r5
 80026b2:	f000 f82f 	bl	8002714 <_getpid_r>
 80026b6:	4622      	mov	r2, r4
 80026b8:	4601      	mov	r1, r0
 80026ba:	4628      	mov	r0, r5
 80026bc:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80026c0:	f000 b814 	b.w	80026ec <_kill_r>
 80026c4:	2000      	movs	r0, #0
 80026c6:	bd38      	pop	{r3, r4, r5, pc}
 80026c8:	2316      	movs	r3, #22
 80026ca:	6003      	str	r3, [r0, #0]
 80026cc:	2001      	movs	r0, #1
 80026ce:	bd38      	pop	{r3, r4, r5, pc}
 80026d0:	2316      	movs	r3, #22
 80026d2:	6003      	str	r3, [r0, #0]
 80026d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80026d8:	bd38      	pop	{r3, r4, r5, pc}
 80026da:	bf00      	nop

080026dc <raise>:
 80026dc:	4b02      	ldr	r3, [pc, #8]	; (80026e8 <raise+0xc>)
 80026de:	4601      	mov	r1, r0
 80026e0:	6818      	ldr	r0, [r3, #0]
 80026e2:	f7ff bfcf 	b.w	8002684 <_raise_r>
 80026e6:	bf00      	nop
 80026e8:	20000080 	.word	0x20000080

080026ec <_kill_r>:
 80026ec:	b538      	push	{r3, r4, r5, lr}
 80026ee:	460b      	mov	r3, r1
 80026f0:	4c07      	ldr	r4, [pc, #28]	; (8002710 <_kill_r+0x24>)
 80026f2:	4605      	mov	r5, r0
 80026f4:	4611      	mov	r1, r2
 80026f6:	4618      	mov	r0, r3
 80026f8:	2300      	movs	r3, #0
 80026fa:	6023      	str	r3, [r4, #0]
 80026fc:	f7ff fe29 	bl	8002352 <_kill>
 8002700:	1c43      	adds	r3, r0, #1
 8002702:	d000      	beq.n	8002706 <_kill_r+0x1a>
 8002704:	bd38      	pop	{r3, r4, r5, pc}
 8002706:	6823      	ldr	r3, [r4, #0]
 8002708:	2b00      	cmp	r3, #0
 800270a:	d0fb      	beq.n	8002704 <_kill_r+0x18>
 800270c:	602b      	str	r3, [r5, #0]
 800270e:	bd38      	pop	{r3, r4, r5, pc}
 8002710:	20001d8c 	.word	0x20001d8c

08002714 <_getpid_r>:
 8002714:	f7ff be1b 	b.w	800234e <_getpid>

08002718 <_vfprintf_r>:
 8002718:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800271c:	b0d7      	sub	sp, #348	; 0x15c
 800271e:	461c      	mov	r4, r3
 8002720:	4689      	mov	r9, r1
 8002722:	4617      	mov	r7, r2
 8002724:	4605      	mov	r5, r0
 8002726:	9003      	str	r0, [sp, #12]
 8002728:	f003 f9d2 	bl	8005ad0 <_localeconv_r>
 800272c:	6803      	ldr	r3, [r0, #0]
 800272e:	9316      	str	r3, [sp, #88]	; 0x58
 8002730:	4618      	mov	r0, r3
 8002732:	f7fd ff85 	bl	8000640 <strlen>
 8002736:	9408      	str	r4, [sp, #32]
 8002738:	9015      	str	r0, [sp, #84]	; 0x54
 800273a:	b11d      	cbz	r5, 8002744 <_vfprintf_r+0x2c>
 800273c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800273e:	2b00      	cmp	r3, #0
 8002740:	f000 8107 	beq.w	8002952 <_vfprintf_r+0x23a>
 8002744:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002748:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800274c:	07c8      	lsls	r0, r1, #31
 800274e:	b293      	uxth	r3, r2
 8002750:	d402      	bmi.n	8002758 <_vfprintf_r+0x40>
 8002752:	0599      	lsls	r1, r3, #22
 8002754:	f140 811f 	bpl.w	8002996 <_vfprintf_r+0x27e>
 8002758:	049e      	lsls	r6, r3, #18
 800275a:	d40a      	bmi.n	8002772 <_vfprintf_r+0x5a>
 800275c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002760:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002764:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002768:	f8a9 300c 	strh.w	r3, [r9, #12]
 800276c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002770:	b29b      	uxth	r3, r3
 8002772:	071d      	lsls	r5, r3, #28
 8002774:	f140 80b2 	bpl.w	80028dc <_vfprintf_r+0x1c4>
 8002778:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800277c:	2a00      	cmp	r2, #0
 800277e:	f000 80ad 	beq.w	80028dc <_vfprintf_r+0x1c4>
 8002782:	f003 021a 	and.w	r2, r3, #26
 8002786:	2a0a      	cmp	r2, #10
 8002788:	f000 80c9 	beq.w	800291e <_vfprintf_r+0x206>
 800278c:	2300      	movs	r3, #0
 800278e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80029a8 <_vfprintf_r+0x290>
 8002792:	9310      	str	r3, [sp, #64]	; 0x40
 8002794:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8002798:	9317      	str	r3, [sp, #92]	; 0x5c
 800279a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 800279e:	931b      	str	r3, [sp, #108]	; 0x6c
 80027a0:	9318      	str	r3, [sp, #96]	; 0x60
 80027a2:	9305      	str	r3, [sp, #20]
 80027a4:	ab2d      	add	r3, sp, #180	; 0xb4
 80027a6:	932a      	str	r3, [sp, #168]	; 0xa8
 80027a8:	469b      	mov	fp, r3
 80027aa:	783b      	ldrb	r3, [r7, #0]
 80027ac:	f8cd 901c 	str.w	r9, [sp, #28]
 80027b0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80027b4:	2b00      	cmp	r3, #0
 80027b6:	f000 8259 	beq.w	8002c6c <_vfprintf_r+0x554>
 80027ba:	2b25      	cmp	r3, #37	; 0x25
 80027bc:	463c      	mov	r4, r7
 80027be:	d102      	bne.n	80027c6 <_vfprintf_r+0xae>
 80027c0:	e01d      	b.n	80027fe <_vfprintf_r+0xe6>
 80027c2:	2b25      	cmp	r3, #37	; 0x25
 80027c4:	d003      	beq.n	80027ce <_vfprintf_r+0xb6>
 80027c6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80027ca:	2b00      	cmp	r3, #0
 80027cc:	d1f9      	bne.n	80027c2 <_vfprintf_r+0xaa>
 80027ce:	1be5      	subs	r5, r4, r7
 80027d0:	b18d      	cbz	r5, 80027f6 <_vfprintf_r+0xde>
 80027d2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80027d6:	3301      	adds	r3, #1
 80027d8:	442a      	add	r2, r5
 80027da:	2b07      	cmp	r3, #7
 80027dc:	f8cb 7000 	str.w	r7, [fp]
 80027e0:	f8cb 5004 	str.w	r5, [fp, #4]
 80027e4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80027e8:	f300 80ca 	bgt.w	8002980 <_vfprintf_r+0x268>
 80027ec:	f10b 0b08 	add.w	fp, fp, #8
 80027f0:	9b05      	ldr	r3, [sp, #20]
 80027f2:	442b      	add	r3, r5
 80027f4:	9305      	str	r3, [sp, #20]
 80027f6:	7823      	ldrb	r3, [r4, #0]
 80027f8:	2b00      	cmp	r3, #0
 80027fa:	f000 8237 	beq.w	8002c6c <_vfprintf_r+0x554>
 80027fe:	2300      	movs	r3, #0
 8002800:	7866      	ldrb	r6, [r4, #1]
 8002802:	9306      	str	r3, [sp, #24]
 8002804:	4698      	mov	r8, r3
 8002806:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800280a:	f104 0a01 	add.w	sl, r4, #1
 800280e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002812:	252b      	movs	r5, #43	; 0x2b
 8002814:	f10a 0a01 	add.w	sl, sl, #1
 8002818:	f1a6 0320 	sub.w	r3, r6, #32
 800281c:	2b5a      	cmp	r3, #90	; 0x5a
 800281e:	f200 842a 	bhi.w	8003076 <_vfprintf_r+0x95e>
 8002822:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002826:	03aa      	.short	0x03aa
 8002828:	04280428 	.word	0x04280428
 800282c:	0428029c 	.word	0x0428029c
 8002830:	04280428 	.word	0x04280428
 8002834:	042802a7 	.word	0x042802a7
 8002838:	02c60428 	.word	0x02c60428
 800283c:	042802d2 	.word	0x042802d2
 8002840:	02dc02d7 	.word	0x02dc02d7
 8002844:	02f60428 	.word	0x02f60428
 8002848:	026d026d 	.word	0x026d026d
 800284c:	026d026d 	.word	0x026d026d
 8002850:	026d026d 	.word	0x026d026d
 8002854:	026d026d 	.word	0x026d026d
 8002858:	0428026d 	.word	0x0428026d
 800285c:	04280428 	.word	0x04280428
 8002860:	04280428 	.word	0x04280428
 8002864:	04280428 	.word	0x04280428
 8002868:	042802fb 	.word	0x042802fb
 800286c:	03f3033c 	.word	0x03f3033c
 8002870:	02fb02fb 	.word	0x02fb02fb
 8002874:	042802fb 	.word	0x042802fb
 8002878:	04280428 	.word	0x04280428
 800287c:	03ee0428 	.word	0x03ee0428
 8002880:	04280428 	.word	0x04280428
 8002884:	0428009a 	.word	0x0428009a
 8002888:	04280428 	.word	0x04280428
 800288c:	04280350 	.word	0x04280350
 8002890:	04280379 	.word	0x04280379
 8002894:	03900428 	.word	0x03900428
 8002898:	04280428 	.word	0x04280428
 800289c:	04280428 	.word	0x04280428
 80028a0:	04280428 	.word	0x04280428
 80028a4:	04280428 	.word	0x04280428
 80028a8:	042802fb 	.word	0x042802fb
 80028ac:	00c5033c 	.word	0x00c5033c
 80028b0:	02fb02fb 	.word	0x02fb02fb
 80028b4:	03d102fb 	.word	0x03d102fb
 80028b8:	007000c5 	.word	0x007000c5
 80028bc:	03b50428 	.word	0x03b50428
 80028c0:	03c20428 	.word	0x03c20428
 80028c4:	03de009c 	.word	0x03de009c
 80028c8:	04280070 	.word	0x04280070
 80028cc:	00720350 	.word	0x00720350
 80028d0:	0428022c 	.word	0x0428022c
 80028d4:	027c0428 	.word	0x027c0428
 80028d8:	00720428 	.word	0x00720428
 80028dc:	4649      	mov	r1, r9
 80028de:	9803      	ldr	r0, [sp, #12]
 80028e0:	f001 fc9a 	bl	8004218 <__swsetup_r>
 80028e4:	b1a0      	cbz	r0, 8002910 <_vfprintf_r+0x1f8>
 80028e6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80028ea:	07d8      	lsls	r0, r3, #31
 80028ec:	d404      	bmi.n	80028f8 <_vfprintf_r+0x1e0>
 80028ee:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80028f2:	0599      	lsls	r1, r3, #22
 80028f4:	f140 83b7 	bpl.w	8003066 <_vfprintf_r+0x94e>
 80028f8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80028fc:	9305      	str	r3, [sp, #20]
 80028fe:	9805      	ldr	r0, [sp, #20]
 8002900:	b057      	add	sp, #348	; 0x15c
 8002902:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002906:	f048 0820 	orr.w	r8, r8, #32
 800290a:	f89a 6000 	ldrb.w	r6, [sl]
 800290e:	e781      	b.n	8002814 <_vfprintf_r+0xfc>
 8002910:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002914:	f003 021a 	and.w	r2, r3, #26
 8002918:	2a0a      	cmp	r2, #10
 800291a:	f47f af37 	bne.w	800278c <_vfprintf_r+0x74>
 800291e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002922:	2a00      	cmp	r2, #0
 8002924:	f6ff af32 	blt.w	800278c <_vfprintf_r+0x74>
 8002928:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800292c:	07d2      	lsls	r2, r2, #31
 800292e:	d405      	bmi.n	800293c <_vfprintf_r+0x224>
 8002930:	059b      	lsls	r3, r3, #22
 8002932:	d403      	bmi.n	800293c <_vfprintf_r+0x224>
 8002934:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002938:	f003 f8de 	bl	8005af8 <__retarget_lock_release_recursive>
 800293c:	4623      	mov	r3, r4
 800293e:	463a      	mov	r2, r7
 8002940:	4649      	mov	r1, r9
 8002942:	9803      	ldr	r0, [sp, #12]
 8002944:	f001 fc26 	bl	8004194 <__sbprintf>
 8002948:	9005      	str	r0, [sp, #20]
 800294a:	9805      	ldr	r0, [sp, #20]
 800294c:	b057      	add	sp, #348	; 0x15c
 800294e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002952:	9803      	ldr	r0, [sp, #12]
 8002954:	f002 fd7e 	bl	8005454 <__sinit>
 8002958:	e6f4      	b.n	8002744 <_vfprintf_r+0x2c>
 800295a:	f048 0810 	orr.w	r8, r8, #16
 800295e:	f018 0f20 	tst.w	r8, #32
 8002962:	f000 836c 	beq.w	800303e <_vfprintf_r+0x926>
 8002966:	9c08      	ldr	r4, [sp, #32]
 8002968:	3407      	adds	r4, #7
 800296a:	f024 0307 	bic.w	r3, r4, #7
 800296e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002972:	f103 0208 	add.w	r2, r3, #8
 8002976:	9208      	str	r2, [sp, #32]
 8002978:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800297c:	2200      	movs	r2, #0
 800297e:	e18c      	b.n	8002c9a <_vfprintf_r+0x582>
 8002980:	aa2a      	add	r2, sp, #168	; 0xa8
 8002982:	9907      	ldr	r1, [sp, #28]
 8002984:	9803      	ldr	r0, [sp, #12]
 8002986:	f004 f9f5 	bl	8006d74 <__sprint_r>
 800298a:	2800      	cmp	r0, #0
 800298c:	f041 8376 	bne.w	800407c <_vfprintf_r+0x1964>
 8002990:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002994:	e72c      	b.n	80027f0 <_vfprintf_r+0xd8>
 8002996:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800299a:	f003 f8ab 	bl	8005af4 <__retarget_lock_acquire_recursive>
 800299e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80029a2:	b293      	uxth	r3, r2
 80029a4:	e6d8      	b.n	8002758 <_vfprintf_r+0x40>
 80029a6:	bf00      	nop
	...
 80029b0:	4643      	mov	r3, r8
 80029b2:	069f      	lsls	r7, r3, #26
 80029b4:	f140 832f 	bpl.w	8003016 <_vfprintf_r+0x8fe>
 80029b8:	9c08      	ldr	r4, [sp, #32]
 80029ba:	3407      	adds	r4, #7
 80029bc:	f024 0407 	bic.w	r4, r4, #7
 80029c0:	e9d4 0100 	ldrd	r0, r1, [r4]
 80029c4:	f104 0208 	add.w	r2, r4, #8
 80029c8:	9208      	str	r2, [sp, #32]
 80029ca:	4604      	mov	r4, r0
 80029cc:	460d      	mov	r5, r1
 80029ce:	2800      	cmp	r0, #0
 80029d0:	f171 0200 	sbcs.w	r2, r1, #0
 80029d4:	da05      	bge.n	80029e2 <_vfprintf_r+0x2ca>
 80029d6:	222d      	movs	r2, #45	; 0x2d
 80029d8:	4264      	negs	r4, r4
 80029da:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 80029de:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 80029e2:	aa56      	add	r2, sp, #344	; 0x158
 80029e4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80029e8:	9204      	str	r2, [sp, #16]
 80029ea:	f000 84b2 	beq.w	8003352 <_vfprintf_r+0xc3a>
 80029ee:	2201      	movs	r2, #1
 80029f0:	ea54 0105 	orrs.w	r1, r4, r5
 80029f4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 80029f8:	f040 8159 	bne.w	8002cae <_vfprintf_r+0x596>
 80029fc:	f1b9 0f00 	cmp.w	r9, #0
 8002a00:	f040 8619 	bne.w	8003636 <_vfprintf_r+0xf1e>
 8002a04:	2a00      	cmp	r2, #0
 8002a06:	f040 8508 	bne.w	800341a <_vfprintf_r+0xd02>
 8002a0a:	f013 0301 	ands.w	r3, r3, #1
 8002a0e:	af56      	add	r7, sp, #344	; 0x158
 8002a10:	9309      	str	r3, [sp, #36]	; 0x24
 8002a12:	d002      	beq.n	8002a1a <_vfprintf_r+0x302>
 8002a14:	2330      	movs	r3, #48	; 0x30
 8002a16:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002a1a:	2300      	movs	r3, #0
 8002a1c:	930a      	str	r3, [sp, #40]	; 0x28
 8002a1e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002a20:	9314      	str	r3, [sp, #80]	; 0x50
 8002a22:	9311      	str	r3, [sp, #68]	; 0x44
 8002a24:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002a26:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a2a:	454b      	cmp	r3, r9
 8002a2c:	bfb8      	it	lt
 8002a2e:	464b      	movlt	r3, r9
 8002a30:	9304      	str	r3, [sp, #16]
 8002a32:	b112      	cbz	r2, 8002a3a <_vfprintf_r+0x322>
 8002a34:	9b04      	ldr	r3, [sp, #16]
 8002a36:	3301      	adds	r3, #1
 8002a38:	9304      	str	r3, [sp, #16]
 8002a3a:	f018 0302 	ands.w	r3, r8, #2
 8002a3e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002a40:	d002      	beq.n	8002a48 <_vfprintf_r+0x330>
 8002a42:	9b04      	ldr	r3, [sp, #16]
 8002a44:	3302      	adds	r3, #2
 8002a46:	9304      	str	r3, [sp, #16]
 8002a48:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002a4c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002a4e:	930e      	str	r3, [sp, #56]	; 0x38
 8002a50:	d13f      	bne.n	8002ad2 <_vfprintf_r+0x3ba>
 8002a52:	9b06      	ldr	r3, [sp, #24]
 8002a54:	9904      	ldr	r1, [sp, #16]
 8002a56:	1a5d      	subs	r5, r3, r1
 8002a58:	2d00      	cmp	r5, #0
 8002a5a:	dd3a      	ble.n	8002ad2 <_vfprintf_r+0x3ba>
 8002a5c:	2d10      	cmp	r5, #16
 8002a5e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002a60:	dd29      	ble.n	8002ab6 <_vfprintf_r+0x39e>
 8002a62:	4659      	mov	r1, fp
 8002a64:	4620      	mov	r0, r4
 8002a66:	9620      	str	r6, [sp, #128]	; 0x80
 8002a68:	2310      	movs	r3, #16
 8002a6a:	9c03      	ldr	r4, [sp, #12]
 8002a6c:	9e07      	ldr	r6, [sp, #28]
 8002a6e:	46bb      	mov	fp, r7
 8002a70:	e004      	b.n	8002a7c <_vfprintf_r+0x364>
 8002a72:	3d10      	subs	r5, #16
 8002a74:	2d10      	cmp	r5, #16
 8002a76:	f101 0108 	add.w	r1, r1, #8
 8002a7a:	dd18      	ble.n	8002aae <_vfprintf_r+0x396>
 8002a7c:	3201      	adds	r2, #1
 8002a7e:	4fba      	ldr	r7, [pc, #744]	; (8002d68 <_vfprintf_r+0x650>)
 8002a80:	3010      	adds	r0, #16
 8002a82:	2a07      	cmp	r2, #7
 8002a84:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002a88:	e9c1 7300 	strd	r7, r3, [r1]
 8002a8c:	ddf1      	ble.n	8002a72 <_vfprintf_r+0x35a>
 8002a8e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a90:	4631      	mov	r1, r6
 8002a92:	4620      	mov	r0, r4
 8002a94:	930c      	str	r3, [sp, #48]	; 0x30
 8002a96:	f004 f96d 	bl	8006d74 <__sprint_r>
 8002a9a:	2800      	cmp	r0, #0
 8002a9c:	f040 843d 	bne.w	800331a <_vfprintf_r+0xc02>
 8002aa0:	3d10      	subs	r5, #16
 8002aa2:	2d10      	cmp	r5, #16
 8002aa4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002aa8:	a92d      	add	r1, sp, #180	; 0xb4
 8002aaa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002aac:	dce6      	bgt.n	8002a7c <_vfprintf_r+0x364>
 8002aae:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002ab0:	465f      	mov	r7, fp
 8002ab2:	4604      	mov	r4, r0
 8002ab4:	468b      	mov	fp, r1
 8002ab6:	3201      	adds	r2, #1
 8002ab8:	4bab      	ldr	r3, [pc, #684]	; (8002d68 <_vfprintf_r+0x650>)
 8002aba:	442c      	add	r4, r5
 8002abc:	2a07      	cmp	r2, #7
 8002abe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002ac2:	e9cb 3500 	strd	r3, r5, [fp]
 8002ac6:	f300 84ff 	bgt.w	80034c8 <_vfprintf_r+0xdb0>
 8002aca:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002ace:	f10b 0b08 	add.w	fp, fp, #8
 8002ad2:	b172      	cbz	r2, 8002af2 <_vfprintf_r+0x3da>
 8002ad4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002ad6:	3201      	adds	r2, #1
 8002ad8:	3401      	adds	r4, #1
 8002ada:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002ade:	2101      	movs	r1, #1
 8002ae0:	2a07      	cmp	r2, #7
 8002ae2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002ae6:	e9cb 0100 	strd	r0, r1, [fp]
 8002aea:	f300 8418 	bgt.w	800331e <_vfprintf_r+0xc06>
 8002aee:	f10b 0b08 	add.w	fp, fp, #8
 8002af2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002af4:	b16b      	cbz	r3, 8002b12 <_vfprintf_r+0x3fa>
 8002af6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002af8:	3301      	adds	r3, #1
 8002afa:	3402      	adds	r4, #2
 8002afc:	a923      	add	r1, sp, #140	; 0x8c
 8002afe:	2202      	movs	r2, #2
 8002b00:	2b07      	cmp	r3, #7
 8002b02:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002b06:	e9cb 1200 	strd	r1, r2, [fp]
 8002b0a:	f300 8415 	bgt.w	8003338 <_vfprintf_r+0xc20>
 8002b0e:	f10b 0b08 	add.w	fp, fp, #8
 8002b12:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002b14:	2b80      	cmp	r3, #128	; 0x80
 8002b16:	f000 8331 	beq.w	800317c <_vfprintf_r+0xa64>
 8002b1a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002b1c:	eba9 0503 	sub.w	r5, r9, r3
 8002b20:	2d00      	cmp	r5, #0
 8002b22:	dd37      	ble.n	8002b94 <_vfprintf_r+0x47c>
 8002b24:	2d10      	cmp	r5, #16
 8002b26:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b28:	4b90      	ldr	r3, [pc, #576]	; (8002d6c <_vfprintf_r+0x654>)
 8002b2a:	dd28      	ble.n	8002b7e <_vfprintf_r+0x466>
 8002b2c:	4659      	mov	r1, fp
 8002b2e:	4620      	mov	r0, r4
 8002b30:	46bb      	mov	fp, r7
 8002b32:	f04f 0910 	mov.w	r9, #16
 8002b36:	4637      	mov	r7, r6
 8002b38:	461c      	mov	r4, r3
 8002b3a:	9e07      	ldr	r6, [sp, #28]
 8002b3c:	e004      	b.n	8002b48 <_vfprintf_r+0x430>
 8002b3e:	3d10      	subs	r5, #16
 8002b40:	2d10      	cmp	r5, #16
 8002b42:	f101 0108 	add.w	r1, r1, #8
 8002b46:	dd15      	ble.n	8002b74 <_vfprintf_r+0x45c>
 8002b48:	3201      	adds	r2, #1
 8002b4a:	3010      	adds	r0, #16
 8002b4c:	2a07      	cmp	r2, #7
 8002b4e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002b52:	e9c1 4900 	strd	r4, r9, [r1]
 8002b56:	ddf2      	ble.n	8002b3e <_vfprintf_r+0x426>
 8002b58:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b5a:	4631      	mov	r1, r6
 8002b5c:	9803      	ldr	r0, [sp, #12]
 8002b5e:	f004 f909 	bl	8006d74 <__sprint_r>
 8002b62:	2800      	cmp	r0, #0
 8002b64:	f040 83d9 	bne.w	800331a <_vfprintf_r+0xc02>
 8002b68:	3d10      	subs	r5, #16
 8002b6a:	2d10      	cmp	r5, #16
 8002b6c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002b70:	a92d      	add	r1, sp, #180	; 0xb4
 8002b72:	dce9      	bgt.n	8002b48 <_vfprintf_r+0x430>
 8002b74:	463e      	mov	r6, r7
 8002b76:	4623      	mov	r3, r4
 8002b78:	465f      	mov	r7, fp
 8002b7a:	4604      	mov	r4, r0
 8002b7c:	468b      	mov	fp, r1
 8002b7e:	3201      	adds	r2, #1
 8002b80:	442c      	add	r4, r5
 8002b82:	2a07      	cmp	r2, #7
 8002b84:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002b88:	e9cb 3500 	strd	r3, r5, [fp]
 8002b8c:	f300 83ef 	bgt.w	800336e <_vfprintf_r+0xc56>
 8002b90:	f10b 0b08 	add.w	fp, fp, #8
 8002b94:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002b98:	f040 8280 	bne.w	800309c <_vfprintf_r+0x984>
 8002b9c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002b9e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ba0:	f8cb 7000 	str.w	r7, [fp]
 8002ba4:	3301      	adds	r3, #1
 8002ba6:	4414      	add	r4, r2
 8002ba8:	2b07      	cmp	r3, #7
 8002baa:	942c      	str	r4, [sp, #176]	; 0xb0
 8002bac:	f8cb 2004 	str.w	r2, [fp, #4]
 8002bb0:	932b      	str	r3, [sp, #172]	; 0xac
 8002bb2:	f300 8392 	bgt.w	80032da <_vfprintf_r+0xbc2>
 8002bb6:	f10b 0b08 	add.w	fp, fp, #8
 8002bba:	f018 0f04 	tst.w	r8, #4
 8002bbe:	d03b      	beq.n	8002c38 <_vfprintf_r+0x520>
 8002bc0:	9b06      	ldr	r3, [sp, #24]
 8002bc2:	9a04      	ldr	r2, [sp, #16]
 8002bc4:	1a9d      	subs	r5, r3, r2
 8002bc6:	2d00      	cmp	r5, #0
 8002bc8:	dd36      	ble.n	8002c38 <_vfprintf_r+0x520>
 8002bca:	2d10      	cmp	r5, #16
 8002bcc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002bce:	dd21      	ble.n	8002c14 <_vfprintf_r+0x4fc>
 8002bd0:	2610      	movs	r6, #16
 8002bd2:	9f03      	ldr	r7, [sp, #12]
 8002bd4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002bd8:	e004      	b.n	8002be4 <_vfprintf_r+0x4cc>
 8002bda:	3d10      	subs	r5, #16
 8002bdc:	2d10      	cmp	r5, #16
 8002bde:	f10b 0b08 	add.w	fp, fp, #8
 8002be2:	dd17      	ble.n	8002c14 <_vfprintf_r+0x4fc>
 8002be4:	3301      	adds	r3, #1
 8002be6:	4a60      	ldr	r2, [pc, #384]	; (8002d68 <_vfprintf_r+0x650>)
 8002be8:	3410      	adds	r4, #16
 8002bea:	2b07      	cmp	r3, #7
 8002bec:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002bf0:	e9cb 2600 	strd	r2, r6, [fp]
 8002bf4:	ddf1      	ble.n	8002bda <_vfprintf_r+0x4c2>
 8002bf6:	aa2a      	add	r2, sp, #168	; 0xa8
 8002bf8:	4641      	mov	r1, r8
 8002bfa:	4638      	mov	r0, r7
 8002bfc:	f004 f8ba 	bl	8006d74 <__sprint_r>
 8002c00:	2800      	cmp	r0, #0
 8002c02:	f040 856c 	bne.w	80036de <_vfprintf_r+0xfc6>
 8002c06:	3d10      	subs	r5, #16
 8002c08:	2d10      	cmp	r5, #16
 8002c0a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002c0e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c12:	dce7      	bgt.n	8002be4 <_vfprintf_r+0x4cc>
 8002c14:	3301      	adds	r3, #1
 8002c16:	4a54      	ldr	r2, [pc, #336]	; (8002d68 <_vfprintf_r+0x650>)
 8002c18:	442c      	add	r4, r5
 8002c1a:	2b07      	cmp	r3, #7
 8002c1c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c20:	e9cb 2500 	strd	r2, r5, [fp]
 8002c24:	dd08      	ble.n	8002c38 <_vfprintf_r+0x520>
 8002c26:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c28:	9907      	ldr	r1, [sp, #28]
 8002c2a:	9803      	ldr	r0, [sp, #12]
 8002c2c:	f004 f8a2 	bl	8006d74 <__sprint_r>
 8002c30:	2800      	cmp	r0, #0
 8002c32:	f040 82e9 	bne.w	8003208 <_vfprintf_r+0xaf0>
 8002c36:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002c38:	9904      	ldr	r1, [sp, #16]
 8002c3a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002c3e:	428a      	cmp	r2, r1
 8002c40:	bfac      	ite	ge
 8002c42:	189b      	addge	r3, r3, r2
 8002c44:	185b      	addlt	r3, r3, r1
 8002c46:	9305      	str	r3, [sp, #20]
 8002c48:	2c00      	cmp	r4, #0
 8002c4a:	f040 82d5 	bne.w	80031f8 <_vfprintf_r+0xae0>
 8002c4e:	2300      	movs	r3, #0
 8002c50:	932b      	str	r3, [sp, #172]	; 0xac
 8002c52:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002c54:	b11b      	cbz	r3, 8002c5e <_vfprintf_r+0x546>
 8002c56:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002c58:	9803      	ldr	r0, [sp, #12]
 8002c5a:	f002 fc9d 	bl	8005598 <_free_r>
 8002c5e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002c62:	4657      	mov	r7, sl
 8002c64:	783b      	ldrb	r3, [r7, #0]
 8002c66:	2b00      	cmp	r3, #0
 8002c68:	f47f ada7 	bne.w	80027ba <_vfprintf_r+0xa2>
 8002c6c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002c6e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002c72:	2b00      	cmp	r3, #0
 8002c74:	f041 80e7 	bne.w	8003e46 <_vfprintf_r+0x172e>
 8002c78:	2300      	movs	r3, #0
 8002c7a:	932b      	str	r3, [sp, #172]	; 0xac
 8002c7c:	e2cb      	b.n	8003216 <_vfprintf_r+0xafe>
 8002c7e:	4643      	mov	r3, r8
 8002c80:	069a      	lsls	r2, r3, #26
 8002c82:	f140 814e 	bpl.w	8002f22 <_vfprintf_r+0x80a>
 8002c86:	9c08      	ldr	r4, [sp, #32]
 8002c88:	3407      	adds	r4, #7
 8002c8a:	f024 0207 	bic.w	r2, r4, #7
 8002c8e:	f102 0108 	add.w	r1, r2, #8
 8002c92:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002c96:	9108      	str	r1, [sp, #32]
 8002c98:	2201      	movs	r2, #1
 8002c9a:	2100      	movs	r1, #0
 8002c9c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002ca0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002ca4:	a956      	add	r1, sp, #344	; 0x158
 8002ca6:	9104      	str	r1, [sp, #16]
 8002ca8:	f47f aea2 	bne.w	80029f0 <_vfprintf_r+0x2d8>
 8002cac:	4698      	mov	r8, r3
 8002cae:	2a01      	cmp	r2, #1
 8002cb0:	f000 8350 	beq.w	8003354 <_vfprintf_r+0xc3c>
 8002cb4:	2a02      	cmp	r2, #2
 8002cb6:	f000 831b 	beq.w	80032f0 <_vfprintf_r+0xbd8>
 8002cba:	a956      	add	r1, sp, #344	; 0x158
 8002cbc:	e000      	b.n	8002cc0 <_vfprintf_r+0x5a8>
 8002cbe:	4639      	mov	r1, r7
 8002cc0:	08e2      	lsrs	r2, r4, #3
 8002cc2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002cc6:	08e8      	lsrs	r0, r5, #3
 8002cc8:	f004 0307 	and.w	r3, r4, #7
 8002ccc:	4605      	mov	r5, r0
 8002cce:	4614      	mov	r4, r2
 8002cd0:	3330      	adds	r3, #48	; 0x30
 8002cd2:	ea54 0205 	orrs.w	r2, r4, r5
 8002cd6:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002cda:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002cde:	d1ee      	bne.n	8002cbe <_vfprintf_r+0x5a6>
 8002ce0:	f018 0f01 	tst.w	r8, #1
 8002ce4:	f000 8314 	beq.w	8003310 <_vfprintf_r+0xbf8>
 8002ce8:	2b30      	cmp	r3, #48	; 0x30
 8002cea:	f000 8311 	beq.w	8003310 <_vfprintf_r+0xbf8>
 8002cee:	9a04      	ldr	r2, [sp, #16]
 8002cf0:	3902      	subs	r1, #2
 8002cf2:	2330      	movs	r3, #48	; 0x30
 8002cf4:	1a52      	subs	r2, r2, r1
 8002cf6:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002cfa:	9209      	str	r2, [sp, #36]	; 0x24
 8002cfc:	460f      	mov	r7, r1
 8002cfe:	e68c      	b.n	8002a1a <_vfprintf_r+0x302>
 8002d00:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d04:	2200      	movs	r2, #0
 8002d06:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002d0a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002d0e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002d12:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d16:	2b09      	cmp	r3, #9
 8002d18:	d9f5      	bls.n	8002d06 <_vfprintf_r+0x5ee>
 8002d1a:	9206      	str	r2, [sp, #24]
 8002d1c:	e57c      	b.n	8002818 <_vfprintf_r+0x100>
 8002d1e:	4b14      	ldr	r3, [pc, #80]	; (8002d70 <_vfprintf_r+0x658>)
 8002d20:	9317      	str	r3, [sp, #92]	; 0x5c
 8002d22:	f018 0f20 	tst.w	r8, #32
 8002d26:	f000 8114 	beq.w	8002f52 <_vfprintf_r+0x83a>
 8002d2a:	9c08      	ldr	r4, [sp, #32]
 8002d2c:	3407      	adds	r4, #7
 8002d2e:	f024 0307 	bic.w	r3, r4, #7
 8002d32:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002d36:	f103 0208 	add.w	r2, r3, #8
 8002d3a:	9208      	str	r2, [sp, #32]
 8002d3c:	f018 0f01 	tst.w	r8, #1
 8002d40:	d009      	beq.n	8002d56 <_vfprintf_r+0x63e>
 8002d42:	ea54 0305 	orrs.w	r3, r4, r5
 8002d46:	d006      	beq.n	8002d56 <_vfprintf_r+0x63e>
 8002d48:	2330      	movs	r3, #48	; 0x30
 8002d4a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002d4e:	f048 0802 	orr.w	r8, r8, #2
 8002d52:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002d56:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002d5a:	2202      	movs	r2, #2
 8002d5c:	e79d      	b.n	8002c9a <_vfprintf_r+0x582>
 8002d5e:	f048 0801 	orr.w	r8, r8, #1
 8002d62:	f89a 6000 	ldrb.w	r6, [sl]
 8002d66:	e555      	b.n	8002814 <_vfprintf_r+0xfc>
 8002d68:	08007460 	.word	0x08007460
 8002d6c:	08007470 	.word	0x08007470
 8002d70:	0800742c 	.word	0x0800742c
 8002d74:	9e03      	ldr	r6, [sp, #12]
 8002d76:	4630      	mov	r0, r6
 8002d78:	f002 feaa 	bl	8005ad0 <_localeconv_r>
 8002d7c:	6843      	ldr	r3, [r0, #4]
 8002d7e:	9318      	str	r3, [sp, #96]	; 0x60
 8002d80:	4618      	mov	r0, r3
 8002d82:	f7fd fc5d 	bl	8000640 <strlen>
 8002d86:	901b      	str	r0, [sp, #108]	; 0x6c
 8002d88:	4604      	mov	r4, r0
 8002d8a:	4630      	mov	r0, r6
 8002d8c:	f002 fea0 	bl	8005ad0 <_localeconv_r>
 8002d90:	6883      	ldr	r3, [r0, #8]
 8002d92:	931a      	str	r3, [sp, #104]	; 0x68
 8002d94:	2c00      	cmp	r4, #0
 8002d96:	f43f adb8 	beq.w	800290a <_vfprintf_r+0x1f2>
 8002d9a:	f89a 6000 	ldrb.w	r6, [sl]
 8002d9e:	2b00      	cmp	r3, #0
 8002da0:	f43f ad38 	beq.w	8002814 <_vfprintf_r+0xfc>
 8002da4:	781b      	ldrb	r3, [r3, #0]
 8002da6:	2b00      	cmp	r3, #0
 8002da8:	f43f ad34 	beq.w	8002814 <_vfprintf_r+0xfc>
 8002dac:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002db0:	e530      	b.n	8002814 <_vfprintf_r+0xfc>
 8002db2:	9b08      	ldr	r3, [sp, #32]
 8002db4:	f89a 6000 	ldrb.w	r6, [sl]
 8002db8:	681a      	ldr	r2, [r3, #0]
 8002dba:	9206      	str	r2, [sp, #24]
 8002dbc:	2a00      	cmp	r2, #0
 8002dbe:	f103 0304 	add.w	r3, r3, #4
 8002dc2:	f2c0 8697 	blt.w	8003af4 <_vfprintf_r+0x13dc>
 8002dc6:	9308      	str	r3, [sp, #32]
 8002dc8:	e524      	b.n	8002814 <_vfprintf_r+0xfc>
 8002dca:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002dce:	f89a 6000 	ldrb.w	r6, [sl]
 8002dd2:	e51f      	b.n	8002814 <_vfprintf_r+0xfc>
 8002dd4:	f89a 6000 	ldrb.w	r6, [sl]
 8002dd8:	f048 0804 	orr.w	r8, r8, #4
 8002ddc:	e51a      	b.n	8002814 <_vfprintf_r+0xfc>
 8002dde:	f89a 6000 	ldrb.w	r6, [sl]
 8002de2:	2e2a      	cmp	r6, #42	; 0x2a
 8002de4:	f10a 0201 	add.w	r2, sl, #1
 8002de8:	f001 81b0 	beq.w	800414c <_vfprintf_r+0x1a34>
 8002dec:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002df0:	2b09      	cmp	r3, #9
 8002df2:	4692      	mov	sl, r2
 8002df4:	f04f 0900 	mov.w	r9, #0
 8002df8:	f63f ad0e 	bhi.w	8002818 <_vfprintf_r+0x100>
 8002dfc:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002e00:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002e04:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002e08:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e0c:	2b09      	cmp	r3, #9
 8002e0e:	d9f5      	bls.n	8002dfc <_vfprintf_r+0x6e4>
 8002e10:	e502      	b.n	8002818 <_vfprintf_r+0x100>
 8002e12:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002e16:	f89a 6000 	ldrb.w	r6, [sl]
 8002e1a:	e4fb      	b.n	8002814 <_vfprintf_r+0xfc>
 8002e1c:	9c08      	ldr	r4, [sp, #32]
 8002e1e:	3407      	adds	r4, #7
 8002e20:	f024 0407 	bic.w	r4, r4, #7
 8002e24:	ed94 7b00 	vldr	d7, [r4]
 8002e28:	ec52 1b17 	vmov	r1, r2, d7
 8002e2c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002e30:	931d      	str	r3, [sp, #116]	; 0x74
 8002e32:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002e36:	3408      	adds	r4, #8
 8002e38:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002e3c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002e40:	4bba      	ldr	r3, [pc, #744]	; (800312c <_vfprintf_r+0xa14>)
 8002e42:	9408      	str	r4, [sp, #32]
 8002e44:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002e48:	f7fe f910 	bl	800106c <__aeabi_dcmpun>
 8002e4c:	2800      	cmp	r0, #0
 8002e4e:	f040 846f 	bne.w	8003730 <_vfprintf_r+0x1018>
 8002e52:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002e56:	4bb5      	ldr	r3, [pc, #724]	; (800312c <_vfprintf_r+0xa14>)
 8002e58:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002e5c:	f7fe f8e8 	bl	8001030 <__aeabi_dcmple>
 8002e60:	2800      	cmp	r0, #0
 8002e62:	f040 8465 	bne.w	8003730 <_vfprintf_r+0x1018>
 8002e66:	2200      	movs	r2, #0
 8002e68:	2300      	movs	r3, #0
 8002e6a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002e6e:	f7fe f8d5 	bl	800101c <__aeabi_dcmplt>
 8002e72:	2800      	cmp	r0, #0
 8002e74:	f040 855b 	bne.w	800392e <_vfprintf_r+0x1216>
 8002e78:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002e7c:	4fac      	ldr	r7, [pc, #688]	; (8003130 <_vfprintf_r+0xa18>)
 8002e7e:	4bad      	ldr	r3, [pc, #692]	; (8003134 <_vfprintf_r+0xa1c>)
 8002e80:	2000      	movs	r0, #0
 8002e82:	2103      	movs	r1, #3
 8002e84:	9104      	str	r1, [sp, #16]
 8002e86:	900a      	str	r0, [sp, #40]	; 0x28
 8002e88:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002e8c:	2e47      	cmp	r6, #71	; 0x47
 8002e8e:	bfd8      	it	le
 8002e90:	461f      	movle	r7, r3
 8002e92:	9109      	str	r1, [sp, #36]	; 0x24
 8002e94:	4681      	mov	r9, r0
 8002e96:	900f      	str	r0, [sp, #60]	; 0x3c
 8002e98:	9014      	str	r0, [sp, #80]	; 0x50
 8002e9a:	9011      	str	r0, [sp, #68]	; 0x44
 8002e9c:	e5c9      	b.n	8002a32 <_vfprintf_r+0x31a>
 8002e9e:	9808      	ldr	r0, [sp, #32]
 8002ea0:	2300      	movs	r3, #0
 8002ea2:	6801      	ldr	r1, [r0, #0]
 8002ea4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ea8:	461a      	mov	r2, r3
 8002eaa:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002eae:	2301      	movs	r3, #1
 8002eb0:	1d01      	adds	r1, r0, #4
 8002eb2:	9304      	str	r3, [sp, #16]
 8002eb4:	920a      	str	r2, [sp, #40]	; 0x28
 8002eb6:	4691      	mov	r9, r2
 8002eb8:	920f      	str	r2, [sp, #60]	; 0x3c
 8002eba:	9214      	str	r2, [sp, #80]	; 0x50
 8002ebc:	9211      	str	r2, [sp, #68]	; 0x44
 8002ebe:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002ec2:	af3d      	add	r7, sp, #244	; 0xf4
 8002ec4:	e5b9      	b.n	8002a3a <_vfprintf_r+0x322>
 8002ec6:	9b08      	ldr	r3, [sp, #32]
 8002ec8:	681f      	ldr	r7, [r3, #0]
 8002eca:	2500      	movs	r5, #0
 8002ecc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002ed0:	1d1c      	adds	r4, r3, #4
 8002ed2:	2f00      	cmp	r7, #0
 8002ed4:	f000 8639 	beq.w	8003b4a <_vfprintf_r+0x1432>
 8002ed8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002edc:	f000 8711 	beq.w	8003d02 <_vfprintf_r+0x15ea>
 8002ee0:	464a      	mov	r2, r9
 8002ee2:	4629      	mov	r1, r5
 8002ee4:	4638      	mov	r0, r7
 8002ee6:	f7fd fc1b 	bl	8000720 <memchr>
 8002eea:	900a      	str	r0, [sp, #40]	; 0x28
 8002eec:	2800      	cmp	r0, #0
 8002eee:	f000 85e7 	beq.w	8003ac0 <_vfprintf_r+0x13a8>
 8002ef2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002ef4:	1bdb      	subs	r3, r3, r7
 8002ef6:	9309      	str	r3, [sp, #36]	; 0x24
 8002ef8:	46a9      	mov	r9, r5
 8002efa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002efe:	9408      	str	r4, [sp, #32]
 8002f00:	9304      	str	r3, [sp, #16]
 8002f02:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002f06:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002f0a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002f0e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002f12:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002f16:	e58c      	b.n	8002a32 <_vfprintf_r+0x31a>
 8002f18:	f048 0310 	orr.w	r3, r8, #16
 8002f1c:	069a      	lsls	r2, r3, #26
 8002f1e:	f53f aeb2 	bmi.w	8002c86 <_vfprintf_r+0x56e>
 8002f22:	9a08      	ldr	r2, [sp, #32]
 8002f24:	06df      	lsls	r7, r3, #27
 8002f26:	f102 0104 	add.w	r1, r2, #4
 8002f2a:	f100 837e 	bmi.w	800362a <_vfprintf_r+0xf12>
 8002f2e:	065d      	lsls	r5, r3, #25
 8002f30:	9a08      	ldr	r2, [sp, #32]
 8002f32:	f100 84e4 	bmi.w	80038fe <_vfprintf_r+0x11e6>
 8002f36:	059c      	lsls	r4, r3, #22
 8002f38:	f140 8377 	bpl.w	800362a <_vfprintf_r+0xf12>
 8002f3c:	7814      	ldrb	r4, [r2, #0]
 8002f3e:	9108      	str	r1, [sp, #32]
 8002f40:	2500      	movs	r5, #0
 8002f42:	2201      	movs	r2, #1
 8002f44:	e6a9      	b.n	8002c9a <_vfprintf_r+0x582>
 8002f46:	4b7c      	ldr	r3, [pc, #496]	; (8003138 <_vfprintf_r+0xa20>)
 8002f48:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f4a:	f018 0f20 	tst.w	r8, #32
 8002f4e:	f47f aeec 	bne.w	8002d2a <_vfprintf_r+0x612>
 8002f52:	9a08      	ldr	r2, [sp, #32]
 8002f54:	f018 0f10 	tst.w	r8, #16
 8002f58:	f102 0304 	add.w	r3, r2, #4
 8002f5c:	f040 8354 	bne.w	8003608 <_vfprintf_r+0xef0>
 8002f60:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002f64:	9a08      	ldr	r2, [sp, #32]
 8002f66:	f040 84d0 	bne.w	800390a <_vfprintf_r+0x11f2>
 8002f6a:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002f6e:	f000 834b 	beq.w	8003608 <_vfprintf_r+0xef0>
 8002f72:	7814      	ldrb	r4, [r2, #0]
 8002f74:	9308      	str	r3, [sp, #32]
 8002f76:	2500      	movs	r5, #0
 8002f78:	e6e0      	b.n	8002d3c <_vfprintf_r+0x624>
 8002f7a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002f7e:	f89a 6000 	ldrb.w	r6, [sl]
 8002f82:	2b00      	cmp	r3, #0
 8002f84:	f47f ac46 	bne.w	8002814 <_vfprintf_r+0xfc>
 8002f88:	2320      	movs	r3, #32
 8002f8a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002f8e:	e441      	b.n	8002814 <_vfprintf_r+0xfc>
 8002f90:	f89a 6000 	ldrb.w	r6, [sl]
 8002f94:	2e6c      	cmp	r6, #108	; 0x6c
 8002f96:	bf03      	ittte	eq
 8002f98:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002f9c:	f048 0820 	orreq.w	r8, r8, #32
 8002fa0:	f10a 0a01 	addeq.w	sl, sl, #1
 8002fa4:	f048 0810 	orrne.w	r8, r8, #16
 8002fa8:	e434      	b.n	8002814 <_vfprintf_r+0xfc>
 8002faa:	9a08      	ldr	r2, [sp, #32]
 8002fac:	f018 0f20 	tst.w	r8, #32
 8002fb0:	f852 3b04 	ldr.w	r3, [r2], #4
 8002fb4:	9208      	str	r2, [sp, #32]
 8002fb6:	f000 83a1 	beq.w	80036fc <_vfprintf_r+0xfe4>
 8002fba:	9a05      	ldr	r2, [sp, #20]
 8002fbc:	4610      	mov	r0, r2
 8002fbe:	17d1      	asrs	r1, r2, #31
 8002fc0:	e9c3 0100 	strd	r0, r1, [r3]
 8002fc4:	4657      	mov	r7, sl
 8002fc6:	e64d      	b.n	8002c64 <_vfprintf_r+0x54c>
 8002fc8:	f89a 6000 	ldrb.w	r6, [sl]
 8002fcc:	2e68      	cmp	r6, #104	; 0x68
 8002fce:	bf03      	ittte	eq
 8002fd0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002fd4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002fd8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002fdc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002fe0:	e418      	b.n	8002814 <_vfprintf_r+0xfc>
 8002fe2:	9908      	ldr	r1, [sp, #32]
 8002fe4:	4b55      	ldr	r3, [pc, #340]	; (800313c <_vfprintf_r+0xa24>)
 8002fe6:	680c      	ldr	r4, [r1, #0]
 8002fe8:	9317      	str	r3, [sp, #92]	; 0x5c
 8002fea:	f647 0230 	movw	r2, #30768	; 0x7830
 8002fee:	3104      	adds	r1, #4
 8002ff0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002ff4:	f048 0302 	orr.w	r3, r8, #2
 8002ff8:	9108      	str	r1, [sp, #32]
 8002ffa:	2500      	movs	r5, #0
 8002ffc:	2202      	movs	r2, #2
 8002ffe:	2678      	movs	r6, #120	; 0x78
 8003000:	e64b      	b.n	8002c9a <_vfprintf_r+0x582>
 8003002:	f048 0808 	orr.w	r8, r8, #8
 8003006:	f89a 6000 	ldrb.w	r6, [sl]
 800300a:	e403      	b.n	8002814 <_vfprintf_r+0xfc>
 800300c:	f048 0310 	orr.w	r3, r8, #16
 8003010:	069f      	lsls	r7, r3, #26
 8003012:	f53f acd1 	bmi.w	80029b8 <_vfprintf_r+0x2a0>
 8003016:	9908      	ldr	r1, [sp, #32]
 8003018:	06dd      	lsls	r5, r3, #27
 800301a:	f101 0204 	add.w	r2, r1, #4
 800301e:	f100 82fd 	bmi.w	800361c <_vfprintf_r+0xf04>
 8003022:	065c      	lsls	r4, r3, #25
 8003024:	9908      	ldr	r1, [sp, #32]
 8003026:	f100 8475 	bmi.w	8003914 <_vfprintf_r+0x11fc>
 800302a:	0598      	lsls	r0, r3, #22
 800302c:	f140 82f6 	bpl.w	800361c <_vfprintf_r+0xf04>
 8003030:	f991 4000 	ldrsb.w	r4, [r1]
 8003034:	9208      	str	r2, [sp, #32]
 8003036:	17e5      	asrs	r5, r4, #31
 8003038:	4620      	mov	r0, r4
 800303a:	4629      	mov	r1, r5
 800303c:	e4c7      	b.n	80029ce <_vfprintf_r+0x2b6>
 800303e:	9a08      	ldr	r2, [sp, #32]
 8003040:	f018 0f10 	tst.w	r8, #16
 8003044:	f102 0304 	add.w	r3, r2, #4
 8003048:	f040 82e3 	bne.w	8003612 <_vfprintf_r+0xefa>
 800304c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003050:	9a08      	ldr	r2, [sp, #32]
 8003052:	f040 8467 	bne.w	8003924 <_vfprintf_r+0x120c>
 8003056:	f418 7f00 	tst.w	r8, #512	; 0x200
 800305a:	f000 82da 	beq.w	8003612 <_vfprintf_r+0xefa>
 800305e:	7814      	ldrb	r4, [r2, #0]
 8003060:	9308      	str	r3, [sp, #32]
 8003062:	2500      	movs	r5, #0
 8003064:	e488      	b.n	8002978 <_vfprintf_r+0x260>
 8003066:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800306a:	f002 fd45 	bl	8005af8 <__retarget_lock_release_recursive>
 800306e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003072:	9305      	str	r3, [sp, #20]
 8003074:	e443      	b.n	80028fe <_vfprintf_r+0x1e6>
 8003076:	2e00      	cmp	r6, #0
 8003078:	f43f adf8 	beq.w	8002c6c <_vfprintf_r+0x554>
 800307c:	2300      	movs	r3, #0
 800307e:	2101      	movs	r1, #1
 8003080:	461a      	mov	r2, r3
 8003082:	9104      	str	r1, [sp, #16]
 8003084:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003088:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800308c:	930a      	str	r3, [sp, #40]	; 0x28
 800308e:	4699      	mov	r9, r3
 8003090:	930f      	str	r3, [sp, #60]	; 0x3c
 8003092:	9314      	str	r3, [sp, #80]	; 0x50
 8003094:	9311      	str	r3, [sp, #68]	; 0x44
 8003096:	9109      	str	r1, [sp, #36]	; 0x24
 8003098:	af3d      	add	r7, sp, #244	; 0xf4
 800309a:	e4ce      	b.n	8002a3a <_vfprintf_r+0x322>
 800309c:	2e65      	cmp	r6, #101	; 0x65
 800309e:	f340 80ca 	ble.w	8003236 <_vfprintf_r+0xb1e>
 80030a2:	2200      	movs	r2, #0
 80030a4:	2300      	movs	r3, #0
 80030a6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80030aa:	f7fd ffad 	bl	8001008 <__aeabi_dcmpeq>
 80030ae:	2800      	cmp	r0, #0
 80030b0:	f000 8169 	beq.w	8003386 <_vfprintf_r+0xc6e>
 80030b4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030b6:	4a22      	ldr	r2, [pc, #136]	; (8003140 <_vfprintf_r+0xa28>)
 80030b8:	f8cb 2000 	str.w	r2, [fp]
 80030bc:	3301      	adds	r3, #1
 80030be:	3401      	adds	r4, #1
 80030c0:	2201      	movs	r2, #1
 80030c2:	2b07      	cmp	r3, #7
 80030c4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80030c8:	f8cb 2004 	str.w	r2, [fp, #4]
 80030cc:	f300 8406 	bgt.w	80038dc <_vfprintf_r+0x11c4>
 80030d0:	f10b 0b08 	add.w	fp, fp, #8
 80030d4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80030d6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80030d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80030da:	4293      	cmp	r3, r2
 80030dc:	db03      	blt.n	80030e6 <_vfprintf_r+0x9ce>
 80030de:	f018 0f01 	tst.w	r8, #1
 80030e2:	f43f ad6a 	beq.w	8002bba <_vfprintf_r+0x4a2>
 80030e6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80030e8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80030ea:	f8cb 2000 	str.w	r2, [fp]
 80030ee:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80030f0:	f8cb 2004 	str.w	r2, [fp, #4]
 80030f4:	3301      	adds	r3, #1
 80030f6:	4414      	add	r4, r2
 80030f8:	2b07      	cmp	r3, #7
 80030fa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80030fe:	f300 8517 	bgt.w	8003b30 <_vfprintf_r+0x1418>
 8003102:	f10b 0b08 	add.w	fp, fp, #8
 8003106:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003108:	1e5d      	subs	r5, r3, #1
 800310a:	2d00      	cmp	r5, #0
 800310c:	f77f ad55 	ble.w	8002bba <_vfprintf_r+0x4a2>
 8003110:	2d10      	cmp	r5, #16
 8003112:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003114:	4b0b      	ldr	r3, [pc, #44]	; (8003144 <_vfprintf_r+0xa2c>)
 8003116:	f340 82e7 	ble.w	80036e8 <_vfprintf_r+0xfd0>
 800311a:	4619      	mov	r1, r3
 800311c:	2610      	movs	r6, #16
 800311e:	4623      	mov	r3, r4
 8003120:	9f03      	ldr	r7, [sp, #12]
 8003122:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003126:	460c      	mov	r4, r1
 8003128:	e014      	b.n	8003154 <_vfprintf_r+0xa3c>
 800312a:	bf00      	nop
 800312c:	7fefffff 	.word	0x7fefffff
 8003130:	08007420 	.word	0x08007420
 8003134:	0800741c 	.word	0x0800741c
 8003138:	08007440 	.word	0x08007440
 800313c:	0800742c 	.word	0x0800742c
 8003140:	0800745c 	.word	0x0800745c
 8003144:	08007470 	.word	0x08007470
 8003148:	f10b 0b08 	add.w	fp, fp, #8
 800314c:	3d10      	subs	r5, #16
 800314e:	2d10      	cmp	r5, #16
 8003150:	f340 82c7 	ble.w	80036e2 <_vfprintf_r+0xfca>
 8003154:	3201      	adds	r2, #1
 8003156:	3310      	adds	r3, #16
 8003158:	2a07      	cmp	r2, #7
 800315a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800315e:	e9cb 4600 	strd	r4, r6, [fp]
 8003162:	ddf1      	ble.n	8003148 <_vfprintf_r+0xa30>
 8003164:	aa2a      	add	r2, sp, #168	; 0xa8
 8003166:	4649      	mov	r1, r9
 8003168:	4638      	mov	r0, r7
 800316a:	f003 fe03 	bl	8006d74 <__sprint_r>
 800316e:	2800      	cmp	r0, #0
 8003170:	d14c      	bne.n	800320c <_vfprintf_r+0xaf4>
 8003172:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003176:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800317a:	e7e7      	b.n	800314c <_vfprintf_r+0xa34>
 800317c:	9b06      	ldr	r3, [sp, #24]
 800317e:	9a04      	ldr	r2, [sp, #16]
 8003180:	1a9d      	subs	r5, r3, r2
 8003182:	2d00      	cmp	r5, #0
 8003184:	f77f acc9 	ble.w	8002b1a <_vfprintf_r+0x402>
 8003188:	2d10      	cmp	r5, #16
 800318a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800318c:	4bbc      	ldr	r3, [pc, #752]	; (8003480 <_vfprintf_r+0xd68>)
 800318e:	dd27      	ble.n	80031e0 <_vfprintf_r+0xac8>
 8003190:	4659      	mov	r1, fp
 8003192:	4620      	mov	r0, r4
 8003194:	46bb      	mov	fp, r7
 8003196:	461c      	mov	r4, r3
 8003198:	4637      	mov	r7, r6
 800319a:	9e07      	ldr	r6, [sp, #28]
 800319c:	e004      	b.n	80031a8 <_vfprintf_r+0xa90>
 800319e:	3d10      	subs	r5, #16
 80031a0:	2d10      	cmp	r5, #16
 80031a2:	f101 0108 	add.w	r1, r1, #8
 80031a6:	dd16      	ble.n	80031d6 <_vfprintf_r+0xabe>
 80031a8:	3201      	adds	r2, #1
 80031aa:	3010      	adds	r0, #16
 80031ac:	2310      	movs	r3, #16
 80031ae:	2a07      	cmp	r2, #7
 80031b0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80031b4:	600c      	str	r4, [r1, #0]
 80031b6:	604b      	str	r3, [r1, #4]
 80031b8:	ddf1      	ble.n	800319e <_vfprintf_r+0xa86>
 80031ba:	aa2a      	add	r2, sp, #168	; 0xa8
 80031bc:	4631      	mov	r1, r6
 80031be:	9803      	ldr	r0, [sp, #12]
 80031c0:	f003 fdd8 	bl	8006d74 <__sprint_r>
 80031c4:	2800      	cmp	r0, #0
 80031c6:	f040 80a8 	bne.w	800331a <_vfprintf_r+0xc02>
 80031ca:	3d10      	subs	r5, #16
 80031cc:	2d10      	cmp	r5, #16
 80031ce:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80031d2:	a92d      	add	r1, sp, #180	; 0xb4
 80031d4:	dce8      	bgt.n	80031a8 <_vfprintf_r+0xa90>
 80031d6:	463e      	mov	r6, r7
 80031d8:	4623      	mov	r3, r4
 80031da:	465f      	mov	r7, fp
 80031dc:	4604      	mov	r4, r0
 80031de:	468b      	mov	fp, r1
 80031e0:	3201      	adds	r2, #1
 80031e2:	442c      	add	r4, r5
 80031e4:	2a07      	cmp	r2, #7
 80031e6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80031ea:	e9cb 3500 	strd	r3, r5, [fp]
 80031ee:	f300 8292 	bgt.w	8003716 <_vfprintf_r+0xffe>
 80031f2:	f10b 0b08 	add.w	fp, fp, #8
 80031f6:	e490      	b.n	8002b1a <_vfprintf_r+0x402>
 80031f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80031fa:	9907      	ldr	r1, [sp, #28]
 80031fc:	9803      	ldr	r0, [sp, #12]
 80031fe:	f003 fdb9 	bl	8006d74 <__sprint_r>
 8003202:	2800      	cmp	r0, #0
 8003204:	f43f ad23 	beq.w	8002c4e <_vfprintf_r+0x536>
 8003208:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800320c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800320e:	b111      	cbz	r1, 8003216 <_vfprintf_r+0xafe>
 8003210:	9803      	ldr	r0, [sp, #12]
 8003212:	f002 f9c1 	bl	8005598 <_free_r>
 8003216:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800321a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800321e:	07d0      	lsls	r0, r2, #31
 8003220:	d402      	bmi.n	8003228 <_vfprintf_r+0xb10>
 8003222:	0599      	lsls	r1, r3, #22
 8003224:	f140 81d0 	bpl.w	80035c8 <_vfprintf_r+0xeb0>
 8003228:	065a      	lsls	r2, r3, #25
 800322a:	f53f ab65 	bmi.w	80028f8 <_vfprintf_r+0x1e0>
 800322e:	9805      	ldr	r0, [sp, #20]
 8003230:	b057      	add	sp, #348	; 0x15c
 8003232:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003236:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003238:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800323a:	2a01      	cmp	r2, #1
 800323c:	f104 0401 	add.w	r4, r4, #1
 8003240:	f103 0501 	add.w	r5, r3, #1
 8003244:	f10b 0608 	add.w	r6, fp, #8
 8003248:	f340 811c 	ble.w	8003484 <_vfprintf_r+0xd6c>
 800324c:	2301      	movs	r3, #1
 800324e:	2d07      	cmp	r5, #7
 8003250:	f8cb 7000 	str.w	r7, [fp]
 8003254:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003258:	f8cb 3004 	str.w	r3, [fp, #4]
 800325c:	f300 81bb 	bgt.w	80035d6 <_vfprintf_r+0xebe>
 8003260:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003262:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003264:	1c69      	adds	r1, r5, #1
 8003266:	441c      	add	r4, r3
 8003268:	2907      	cmp	r1, #7
 800326a:	910b      	str	r1, [sp, #44]	; 0x2c
 800326c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003270:	e9c6 2300 	strd	r2, r3, [r6]
 8003274:	f300 81bb 	bgt.w	80035ee <_vfprintf_r+0xed6>
 8003278:	3608      	adds	r6, #8
 800327a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800327c:	1c53      	adds	r3, r2, #1
 800327e:	461d      	mov	r5, r3
 8003280:	9509      	str	r5, [sp, #36]	; 0x24
 8003282:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003284:	930e      	str	r3, [sp, #56]	; 0x38
 8003286:	2200      	movs	r2, #0
 8003288:	2300      	movs	r3, #0
 800328a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800328e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8003292:	f106 0b08 	add.w	fp, r6, #8
 8003296:	f7fd feb7 	bl	8001008 <__aeabi_dcmpeq>
 800329a:	2800      	cmp	r0, #0
 800329c:	f040 80c2 	bne.w	8003424 <_vfprintf_r+0xd0c>
 80032a0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80032a2:	f8c6 9004 	str.w	r9, [r6, #4]
 80032a6:	3701      	adds	r7, #1
 80032a8:	444c      	add	r4, r9
 80032aa:	2d07      	cmp	r5, #7
 80032ac:	6037      	str	r7, [r6, #0]
 80032ae:	942c      	str	r4, [sp, #176]	; 0xb0
 80032b0:	952b      	str	r5, [sp, #172]	; 0xac
 80032b2:	f300 80f9 	bgt.w	80034a8 <_vfprintf_r+0xd90>
 80032b6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80032b8:	f106 0310 	add.w	r3, r6, #16
 80032bc:	3202      	adds	r2, #2
 80032be:	465e      	mov	r6, fp
 80032c0:	9209      	str	r2, [sp, #36]	; 0x24
 80032c2:	469b      	mov	fp, r3
 80032c4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80032c6:	6072      	str	r2, [r6, #4]
 80032c8:	4414      	add	r4, r2
 80032ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80032cc:	942c      	str	r4, [sp, #176]	; 0xb0
 80032ce:	ab26      	add	r3, sp, #152	; 0x98
 80032d0:	2a07      	cmp	r2, #7
 80032d2:	922b      	str	r2, [sp, #172]	; 0xac
 80032d4:	6033      	str	r3, [r6, #0]
 80032d6:	f77f ac70 	ble.w	8002bba <_vfprintf_r+0x4a2>
 80032da:	aa2a      	add	r2, sp, #168	; 0xa8
 80032dc:	9907      	ldr	r1, [sp, #28]
 80032de:	9803      	ldr	r0, [sp, #12]
 80032e0:	f003 fd48 	bl	8006d74 <__sprint_r>
 80032e4:	2800      	cmp	r0, #0
 80032e6:	d18f      	bne.n	8003208 <_vfprintf_r+0xaf0>
 80032e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032ea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032ee:	e464      	b.n	8002bba <_vfprintf_r+0x4a2>
 80032f0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80032f2:	af56      	add	r7, sp, #344	; 0x158
 80032f4:	0923      	lsrs	r3, r4, #4
 80032f6:	f004 010f 	and.w	r1, r4, #15
 80032fa:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80032fe:	092a      	lsrs	r2, r5, #4
 8003300:	461c      	mov	r4, r3
 8003302:	4615      	mov	r5, r2
 8003304:	5c43      	ldrb	r3, [r0, r1]
 8003306:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800330a:	ea54 0305 	orrs.w	r3, r4, r5
 800330e:	d1f1      	bne.n	80032f4 <_vfprintf_r+0xbdc>
 8003310:	9b04      	ldr	r3, [sp, #16]
 8003312:	1bdb      	subs	r3, r3, r7
 8003314:	9309      	str	r3, [sp, #36]	; 0x24
 8003316:	f7ff bb80 	b.w	8002a1a <_vfprintf_r+0x302>
 800331a:	46b1      	mov	r9, r6
 800331c:	e776      	b.n	800320c <_vfprintf_r+0xaf4>
 800331e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003320:	9907      	ldr	r1, [sp, #28]
 8003322:	9803      	ldr	r0, [sp, #12]
 8003324:	f003 fd26 	bl	8006d74 <__sprint_r>
 8003328:	2800      	cmp	r0, #0
 800332a:	f47f af6d 	bne.w	8003208 <_vfprintf_r+0xaf0>
 800332e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003330:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003334:	f7ff bbdd 	b.w	8002af2 <_vfprintf_r+0x3da>
 8003338:	aa2a      	add	r2, sp, #168	; 0xa8
 800333a:	9907      	ldr	r1, [sp, #28]
 800333c:	9803      	ldr	r0, [sp, #12]
 800333e:	f003 fd19 	bl	8006d74 <__sprint_r>
 8003342:	2800      	cmp	r0, #0
 8003344:	f47f af60 	bne.w	8003208 <_vfprintf_r+0xaf0>
 8003348:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800334a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800334e:	f7ff bbe0 	b.w	8002b12 <_vfprintf_r+0x3fa>
 8003352:	4698      	mov	r8, r3
 8003354:	2d00      	cmp	r5, #0
 8003356:	bf08      	it	eq
 8003358:	2c0a      	cmpeq	r4, #10
 800335a:	f080 8170 	bcs.w	800363e <_vfprintf_r+0xf26>
 800335e:	af56      	add	r7, sp, #344	; 0x158
 8003360:	3430      	adds	r4, #48	; 0x30
 8003362:	2301      	movs	r3, #1
 8003364:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003368:	9309      	str	r3, [sp, #36]	; 0x24
 800336a:	f7ff bb56 	b.w	8002a1a <_vfprintf_r+0x302>
 800336e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003370:	9907      	ldr	r1, [sp, #28]
 8003372:	9803      	ldr	r0, [sp, #12]
 8003374:	f003 fcfe 	bl	8006d74 <__sprint_r>
 8003378:	2800      	cmp	r0, #0
 800337a:	f47f af45 	bne.w	8003208 <_vfprintf_r+0xaf0>
 800337e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003380:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003384:	e406      	b.n	8002b94 <_vfprintf_r+0x47c>
 8003386:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003388:	2b00      	cmp	r3, #0
 800338a:	f340 8273 	ble.w	8003874 <_vfprintf_r+0x115c>
 800338e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8003392:	4293      	cmp	r3, r2
 8003394:	bfa8      	it	ge
 8003396:	4613      	movge	r3, r2
 8003398:	2b00      	cmp	r3, #0
 800339a:	461d      	mov	r5, r3
 800339c:	dd0d      	ble.n	80033ba <_vfprintf_r+0xca2>
 800339e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80033a0:	f8cb 7000 	str.w	r7, [fp]
 80033a4:	3301      	adds	r3, #1
 80033a6:	442c      	add	r4, r5
 80033a8:	2b07      	cmp	r3, #7
 80033aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80033ac:	f8cb 5004 	str.w	r5, [fp, #4]
 80033b0:	932b      	str	r3, [sp, #172]	; 0xac
 80033b2:	f300 82c1 	bgt.w	8003938 <_vfprintf_r+0x1220>
 80033b6:	f10b 0b08 	add.w	fp, fp, #8
 80033ba:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80033bc:	2d00      	cmp	r5, #0
 80033be:	bfa8      	it	ge
 80033c0:	1b5b      	subge	r3, r3, r5
 80033c2:	2b00      	cmp	r3, #0
 80033c4:	461d      	mov	r5, r3
 80033c6:	f340 8099 	ble.w	80034fc <_vfprintf_r+0xde4>
 80033ca:	2d10      	cmp	r5, #16
 80033cc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80033ce:	4b2c      	ldr	r3, [pc, #176]	; (8003480 <_vfprintf_r+0xd68>)
 80033d0:	f340 83db 	ble.w	8003b8a <_vfprintf_r+0x1472>
 80033d4:	4618      	mov	r0, r3
 80033d6:	4621      	mov	r1, r4
 80033d8:	465b      	mov	r3, fp
 80033da:	2610      	movs	r6, #16
 80033dc:	46bb      	mov	fp, r7
 80033de:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80033e2:	9c07      	ldr	r4, [sp, #28]
 80033e4:	4607      	mov	r7, r0
 80033e6:	e004      	b.n	80033f2 <_vfprintf_r+0xcda>
 80033e8:	3308      	adds	r3, #8
 80033ea:	3d10      	subs	r5, #16
 80033ec:	2d10      	cmp	r5, #16
 80033ee:	f340 83c7 	ble.w	8003b80 <_vfprintf_r+0x1468>
 80033f2:	3201      	adds	r2, #1
 80033f4:	3110      	adds	r1, #16
 80033f6:	2a07      	cmp	r2, #7
 80033f8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80033fc:	e9c3 7600 	strd	r7, r6, [r3]
 8003400:	ddf2      	ble.n	80033e8 <_vfprintf_r+0xcd0>
 8003402:	aa2a      	add	r2, sp, #168	; 0xa8
 8003404:	4621      	mov	r1, r4
 8003406:	4648      	mov	r0, r9
 8003408:	f003 fcb4 	bl	8006d74 <__sprint_r>
 800340c:	2800      	cmp	r0, #0
 800340e:	f040 84a5 	bne.w	8003d5c <_vfprintf_r+0x1644>
 8003412:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003416:	ab2d      	add	r3, sp, #180	; 0xb4
 8003418:	e7e7      	b.n	80033ea <_vfprintf_r+0xcd2>
 800341a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800341e:	af56      	add	r7, sp, #344	; 0x158
 8003420:	f7ff bafb 	b.w	8002a1a <_vfprintf_r+0x302>
 8003424:	f1b9 0f00 	cmp.w	r9, #0
 8003428:	f77f af4c 	ble.w	80032c4 <_vfprintf_r+0xbac>
 800342c:	f1b9 0f10 	cmp.w	r9, #16
 8003430:	4b13      	ldr	r3, [pc, #76]	; (8003480 <_vfprintf_r+0xd68>)
 8003432:	f340 8659 	ble.w	80040e8 <_vfprintf_r+0x19d0>
 8003436:	4619      	mov	r1, r3
 8003438:	4622      	mov	r2, r4
 800343a:	4633      	mov	r3, r6
 800343c:	2710      	movs	r7, #16
 800343e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003442:	9c07      	ldr	r4, [sp, #28]
 8003444:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003446:	460e      	mov	r6, r1
 8003448:	e007      	b.n	800345a <_vfprintf_r+0xd42>
 800344a:	3308      	adds	r3, #8
 800344c:	f1a9 0910 	sub.w	r9, r9, #16
 8003450:	f1b9 0f10 	cmp.w	r9, #16
 8003454:	f340 8353 	ble.w	8003afe <_vfprintf_r+0x13e6>
 8003458:	3501      	adds	r5, #1
 800345a:	3210      	adds	r2, #16
 800345c:	2d07      	cmp	r5, #7
 800345e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003462:	e9c3 6700 	strd	r6, r7, [r3]
 8003466:	ddf0      	ble.n	800344a <_vfprintf_r+0xd32>
 8003468:	aa2a      	add	r2, sp, #168	; 0xa8
 800346a:	4621      	mov	r1, r4
 800346c:	4658      	mov	r0, fp
 800346e:	f003 fc81 	bl	8006d74 <__sprint_r>
 8003472:	2800      	cmp	r0, #0
 8003474:	f040 8472 	bne.w	8003d5c <_vfprintf_r+0x1644>
 8003478:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800347c:	ab2d      	add	r3, sp, #180	; 0xb4
 800347e:	e7e5      	b.n	800344c <_vfprintf_r+0xd34>
 8003480:	08007470 	.word	0x08007470
 8003484:	f018 0f01 	tst.w	r8, #1
 8003488:	f47f aee0 	bne.w	800324c <_vfprintf_r+0xb34>
 800348c:	2201      	movs	r2, #1
 800348e:	2d07      	cmp	r5, #7
 8003490:	f8cb 7000 	str.w	r7, [fp]
 8003494:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003498:	f8cb 2004 	str.w	r2, [fp, #4]
 800349c:	dc04      	bgt.n	80034a8 <_vfprintf_r+0xd90>
 800349e:	3302      	adds	r3, #2
 80034a0:	9309      	str	r3, [sp, #36]	; 0x24
 80034a2:	f10b 0b10 	add.w	fp, fp, #16
 80034a6:	e70d      	b.n	80032c4 <_vfprintf_r+0xbac>
 80034a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034aa:	9907      	ldr	r1, [sp, #28]
 80034ac:	9803      	ldr	r0, [sp, #12]
 80034ae:	f003 fc61 	bl	8006d74 <__sprint_r>
 80034b2:	2800      	cmp	r0, #0
 80034b4:	f47f aea8 	bne.w	8003208 <_vfprintf_r+0xaf0>
 80034b8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80034bc:	3301      	adds	r3, #1
 80034be:	9309      	str	r3, [sp, #36]	; 0x24
 80034c0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80034c4:	ae2d      	add	r6, sp, #180	; 0xb4
 80034c6:	e6fd      	b.n	80032c4 <_vfprintf_r+0xbac>
 80034c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80034ca:	9907      	ldr	r1, [sp, #28]
 80034cc:	9803      	ldr	r0, [sp, #12]
 80034ce:	f003 fc51 	bl	8006d74 <__sprint_r>
 80034d2:	2800      	cmp	r0, #0
 80034d4:	f47f ae98 	bne.w	8003208 <_vfprintf_r+0xaf0>
 80034d8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80034dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034de:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034e2:	f7ff baf6 	b.w	8002ad2 <_vfprintf_r+0x3ba>
 80034e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80034e8:	9907      	ldr	r1, [sp, #28]
 80034ea:	9803      	ldr	r0, [sp, #12]
 80034ec:	f003 fc42 	bl	8006d74 <__sprint_r>
 80034f0:	2800      	cmp	r0, #0
 80034f2:	f47f ae89 	bne.w	8003208 <_vfprintf_r+0xaf0>
 80034f6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80034f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034fc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80034fe:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003502:	443b      	add	r3, r7
 8003504:	4699      	mov	r9, r3
 8003506:	f040 8357 	bne.w	8003bb8 <_vfprintf_r+0x14a0>
 800350a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800350c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800350e:	4293      	cmp	r3, r2
 8003510:	db49      	blt.n	80035a6 <_vfprintf_r+0xe8e>
 8003512:	f018 0f01 	tst.w	r8, #1
 8003516:	d146      	bne.n	80035a6 <_vfprintf_r+0xe8e>
 8003518:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800351a:	18bd      	adds	r5, r7, r2
 800351c:	eba5 0509 	sub.w	r5, r5, r9
 8003520:	1ad3      	subs	r3, r2, r3
 8003522:	429d      	cmp	r5, r3
 8003524:	bfa8      	it	ge
 8003526:	461d      	movge	r5, r3
 8003528:	2d00      	cmp	r5, #0
 800352a:	dd0d      	ble.n	8003548 <_vfprintf_r+0xe30>
 800352c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800352e:	f8cb 9000 	str.w	r9, [fp]
 8003532:	3201      	adds	r2, #1
 8003534:	442c      	add	r4, r5
 8003536:	2a07      	cmp	r2, #7
 8003538:	942c      	str	r4, [sp, #176]	; 0xb0
 800353a:	f8cb 5004 	str.w	r5, [fp, #4]
 800353e:	922b      	str	r2, [sp, #172]	; 0xac
 8003540:	f300 8462 	bgt.w	8003e08 <_vfprintf_r+0x16f0>
 8003544:	f10b 0b08 	add.w	fp, fp, #8
 8003548:	2d00      	cmp	r5, #0
 800354a:	bfac      	ite	ge
 800354c:	1b5d      	subge	r5, r3, r5
 800354e:	461d      	movlt	r5, r3
 8003550:	2d00      	cmp	r5, #0
 8003552:	f77f ab32 	ble.w	8002bba <_vfprintf_r+0x4a2>
 8003556:	2d10      	cmp	r5, #16
 8003558:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800355a:	4bc5      	ldr	r3, [pc, #788]	; (8003870 <_vfprintf_r+0x1158>)
 800355c:	f340 80c4 	ble.w	80036e8 <_vfprintf_r+0xfd0>
 8003560:	4619      	mov	r1, r3
 8003562:	2610      	movs	r6, #16
 8003564:	4623      	mov	r3, r4
 8003566:	9f03      	ldr	r7, [sp, #12]
 8003568:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800356c:	460c      	mov	r4, r1
 800356e:	e005      	b.n	800357c <_vfprintf_r+0xe64>
 8003570:	f10b 0b08 	add.w	fp, fp, #8
 8003574:	3d10      	subs	r5, #16
 8003576:	2d10      	cmp	r5, #16
 8003578:	f340 80b3 	ble.w	80036e2 <_vfprintf_r+0xfca>
 800357c:	3201      	adds	r2, #1
 800357e:	3310      	adds	r3, #16
 8003580:	2a07      	cmp	r2, #7
 8003582:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003586:	e9cb 4600 	strd	r4, r6, [fp]
 800358a:	ddf1      	ble.n	8003570 <_vfprintf_r+0xe58>
 800358c:	aa2a      	add	r2, sp, #168	; 0xa8
 800358e:	4649      	mov	r1, r9
 8003590:	4638      	mov	r0, r7
 8003592:	f003 fbef 	bl	8006d74 <__sprint_r>
 8003596:	2800      	cmp	r0, #0
 8003598:	f47f ae38 	bne.w	800320c <_vfprintf_r+0xaf4>
 800359c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80035a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035a4:	e7e6      	b.n	8003574 <_vfprintf_r+0xe5c>
 80035a6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80035a8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80035aa:	f8cb 1000 	str.w	r1, [fp]
 80035ae:	9915      	ldr	r1, [sp, #84]	; 0x54
 80035b0:	f8cb 1004 	str.w	r1, [fp, #4]
 80035b4:	3201      	adds	r2, #1
 80035b6:	440c      	add	r4, r1
 80035b8:	2a07      	cmp	r2, #7
 80035ba:	942c      	str	r4, [sp, #176]	; 0xb0
 80035bc:	922b      	str	r2, [sp, #172]	; 0xac
 80035be:	f300 828c 	bgt.w	8003ada <_vfprintf_r+0x13c2>
 80035c2:	f10b 0b08 	add.w	fp, fp, #8
 80035c6:	e7a7      	b.n	8003518 <_vfprintf_r+0xe00>
 80035c8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80035cc:	f002 fa94 	bl	8005af8 <__retarget_lock_release_recursive>
 80035d0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80035d4:	e628      	b.n	8003228 <_vfprintf_r+0xb10>
 80035d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80035d8:	9907      	ldr	r1, [sp, #28]
 80035da:	9803      	ldr	r0, [sp, #12]
 80035dc:	f003 fbca 	bl	8006d74 <__sprint_r>
 80035e0:	2800      	cmp	r0, #0
 80035e2:	f47f ae11 	bne.w	8003208 <_vfprintf_r+0xaf0>
 80035e6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80035ea:	ae2d      	add	r6, sp, #180	; 0xb4
 80035ec:	e638      	b.n	8003260 <_vfprintf_r+0xb48>
 80035ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80035f0:	9907      	ldr	r1, [sp, #28]
 80035f2:	9803      	ldr	r0, [sp, #12]
 80035f4:	f003 fbbe 	bl	8006d74 <__sprint_r>
 80035f8:	2800      	cmp	r0, #0
 80035fa:	f47f ae05 	bne.w	8003208 <_vfprintf_r+0xaf0>
 80035fe:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003602:	ae2d      	add	r6, sp, #180	; 0xb4
 8003604:	930b      	str	r3, [sp, #44]	; 0x2c
 8003606:	e638      	b.n	800327a <_vfprintf_r+0xb62>
 8003608:	6814      	ldr	r4, [r2, #0]
 800360a:	9308      	str	r3, [sp, #32]
 800360c:	2500      	movs	r5, #0
 800360e:	f7ff bb95 	b.w	8002d3c <_vfprintf_r+0x624>
 8003612:	6814      	ldr	r4, [r2, #0]
 8003614:	9308      	str	r3, [sp, #32]
 8003616:	2500      	movs	r5, #0
 8003618:	f7ff b9ae 	b.w	8002978 <_vfprintf_r+0x260>
 800361c:	680c      	ldr	r4, [r1, #0]
 800361e:	9208      	str	r2, [sp, #32]
 8003620:	17e5      	asrs	r5, r4, #31
 8003622:	4620      	mov	r0, r4
 8003624:	4629      	mov	r1, r5
 8003626:	f7ff b9d2 	b.w	80029ce <_vfprintf_r+0x2b6>
 800362a:	6814      	ldr	r4, [r2, #0]
 800362c:	9108      	str	r1, [sp, #32]
 800362e:	2201      	movs	r2, #1
 8003630:	2500      	movs	r5, #0
 8003632:	f7ff bb32 	b.w	8002c9a <_vfprintf_r+0x582>
 8003636:	2a01      	cmp	r2, #1
 8003638:	f47f ab3c 	bne.w	8002cb4 <_vfprintf_r+0x59c>
 800363c:	e68f      	b.n	800335e <_vfprintf_r+0xc46>
 800363e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003642:	2200      	movs	r2, #0
 8003644:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003648:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800364c:	af56      	add	r7, sp, #344	; 0x158
 800364e:	4692      	mov	sl, r2
 8003650:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003654:	461e      	mov	r6, r3
 8003656:	e00a      	b.n	800366e <_vfprintf_r+0xf56>
 8003658:	2300      	movs	r3, #0
 800365a:	4620      	mov	r0, r4
 800365c:	4629      	mov	r1, r5
 800365e:	220a      	movs	r2, #10
 8003660:	f7fc fdce 	bl	8000200 <__aeabi_uldivmod>
 8003664:	4604      	mov	r4, r0
 8003666:	460d      	mov	r5, r1
 8003668:	ea54 0305 	orrs.w	r3, r4, r5
 800366c:	d029      	beq.n	80036c2 <_vfprintf_r+0xfaa>
 800366e:	220a      	movs	r2, #10
 8003670:	2300      	movs	r3, #0
 8003672:	4620      	mov	r0, r4
 8003674:	4629      	mov	r1, r5
 8003676:	f7fc fdc3 	bl	8000200 <__aeabi_uldivmod>
 800367a:	3230      	adds	r2, #48	; 0x30
 800367c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003680:	f10a 0a01 	add.w	sl, sl, #1
 8003684:	3f01      	subs	r7, #1
 8003686:	2e00      	cmp	r6, #0
 8003688:	d0e6      	beq.n	8003658 <_vfprintf_r+0xf40>
 800368a:	f898 3000 	ldrb.w	r3, [r8]
 800368e:	459a      	cmp	sl, r3
 8003690:	d1e2      	bne.n	8003658 <_vfprintf_r+0xf40>
 8003692:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8003696:	d0df      	beq.n	8003658 <_vfprintf_r+0xf40>
 8003698:	2d00      	cmp	r5, #0
 800369a:	bf08      	it	eq
 800369c:	2c0a      	cmpeq	r4, #10
 800369e:	d3db      	bcc.n	8003658 <_vfprintf_r+0xf40>
 80036a0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80036a2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80036a4:	1aff      	subs	r7, r7, r3
 80036a6:	461a      	mov	r2, r3
 80036a8:	4638      	mov	r0, r7
 80036aa:	f003 faf5 	bl	8006c98 <strncpy>
 80036ae:	f898 3001 	ldrb.w	r3, [r8, #1]
 80036b2:	2b00      	cmp	r3, #0
 80036b4:	f000 8496 	beq.w	8003fe4 <_vfprintf_r+0x18cc>
 80036b8:	f108 0801 	add.w	r8, r8, #1
 80036bc:	f04f 0a00 	mov.w	sl, #0
 80036c0:	e7ca      	b.n	8003658 <_vfprintf_r+0xf40>
 80036c2:	9b04      	ldr	r3, [sp, #16]
 80036c4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80036c8:	1bdb      	subs	r3, r3, r7
 80036ca:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80036ce:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80036d0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80036d4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80036d8:	9309      	str	r3, [sp, #36]	; 0x24
 80036da:	f7ff b99e 	b.w	8002a1a <_vfprintf_r+0x302>
 80036de:	46c1      	mov	r9, r8
 80036e0:	e594      	b.n	800320c <_vfprintf_r+0xaf4>
 80036e2:	4621      	mov	r1, r4
 80036e4:	461c      	mov	r4, r3
 80036e6:	460b      	mov	r3, r1
 80036e8:	3201      	adds	r2, #1
 80036ea:	442c      	add	r4, r5
 80036ec:	2a07      	cmp	r2, #7
 80036ee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80036f2:	e9cb 3500 	strd	r3, r5, [fp]
 80036f6:	f77f aa5e 	ble.w	8002bb6 <_vfprintf_r+0x49e>
 80036fa:	e5ee      	b.n	80032da <_vfprintf_r+0xbc2>
 80036fc:	f018 0f10 	tst.w	r8, #16
 8003700:	f040 80f8 	bne.w	80038f4 <_vfprintf_r+0x11dc>
 8003704:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003708:	f000 8351 	beq.w	8003dae <_vfprintf_r+0x1696>
 800370c:	9a05      	ldr	r2, [sp, #20]
 800370e:	801a      	strh	r2, [r3, #0]
 8003710:	4657      	mov	r7, sl
 8003712:	f7ff baa7 	b.w	8002c64 <_vfprintf_r+0x54c>
 8003716:	aa2a      	add	r2, sp, #168	; 0xa8
 8003718:	9907      	ldr	r1, [sp, #28]
 800371a:	9803      	ldr	r0, [sp, #12]
 800371c:	f003 fb2a 	bl	8006d74 <__sprint_r>
 8003720:	2800      	cmp	r0, #0
 8003722:	f47f ad71 	bne.w	8003208 <_vfprintf_r+0xaf0>
 8003726:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003728:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800372c:	f7ff b9f5 	b.w	8002b1a <_vfprintf_r+0x402>
 8003730:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003734:	4602      	mov	r2, r0
 8003736:	460b      	mov	r3, r1
 8003738:	f7fd fc98 	bl	800106c <__aeabi_dcmpun>
 800373c:	2800      	cmp	r0, #0
 800373e:	f040 8491 	bne.w	8004064 <_vfprintf_r+0x194c>
 8003742:	2e61      	cmp	r6, #97	; 0x61
 8003744:	f000 8111 	beq.w	800396a <_vfprintf_r+0x1252>
 8003748:	2e41      	cmp	r6, #65	; 0x41
 800374a:	f000 8377 	beq.w	8003e3c <_vfprintf_r+0x1724>
 800374e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003752:	f026 0220 	bic.w	r2, r6, #32
 8003756:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800375a:	930e      	str	r3, [sp, #56]	; 0x38
 800375c:	9204      	str	r2, [sp, #16]
 800375e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003760:	f000 842d 	beq.w	8003fbe <_vfprintf_r+0x18a6>
 8003764:	2a47      	cmp	r2, #71	; 0x47
 8003766:	f000 8424 	beq.w	8003fb2 <_vfprintf_r+0x189a>
 800376a:	2b00      	cmp	r3, #0
 800376c:	f2c0 82f9 	blt.w	8003d62 <_vfprintf_r+0x164a>
 8003770:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003774:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003778:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800377c:	2e66      	cmp	r6, #102	; 0x66
 800377e:	f000 83eb 	beq.w	8003f58 <_vfprintf_r+0x1840>
 8003782:	2e46      	cmp	r6, #70	; 0x46
 8003784:	f000 847e 	beq.w	8004084 <_vfprintf_r+0x196c>
 8003788:	9b04      	ldr	r3, [sp, #16]
 800378a:	9803      	ldr	r0, [sp, #12]
 800378c:	2b45      	cmp	r3, #69	; 0x45
 800378e:	bf0c      	ite	eq
 8003790:	f109 0501 	addeq.w	r5, r9, #1
 8003794:	464d      	movne	r5, r9
 8003796:	aa28      	add	r2, sp, #160	; 0xa0
 8003798:	ab25      	add	r3, sp, #148	; 0x94
 800379a:	e9cd 3200 	strd	r3, r2, [sp]
 800379e:	2102      	movs	r1, #2
 80037a0:	ab24      	add	r3, sp, #144	; 0x90
 80037a2:	462a      	mov	r2, r5
 80037a4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80037a8:	f000 fe3e 	bl	8004428 <_dtoa_r>
 80037ac:	2e67      	cmp	r6, #103	; 0x67
 80037ae:	4607      	mov	r7, r0
 80037b0:	f040 849c 	bne.w	80040ec <_vfprintf_r+0x19d4>
 80037b4:	f018 0f01 	tst.w	r8, #1
 80037b8:	f040 83f9 	bne.w	8003fae <_vfprintf_r+0x1896>
 80037bc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80037be:	4640      	mov	r0, r8
 80037c0:	1bdb      	subs	r3, r3, r7
 80037c2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80037c6:	9310      	str	r3, [sp, #64]	; 0x40
 80037c8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80037ca:	9311      	str	r3, [sp, #68]	; 0x44
 80037cc:	9b04      	ldr	r3, [sp, #16]
 80037ce:	2b47      	cmp	r3, #71	; 0x47
 80037d0:	f000 81e7 	beq.w	8003ba2 <_vfprintf_r+0x148a>
 80037d4:	9b04      	ldr	r3, [sp, #16]
 80037d6:	2b46      	cmp	r3, #70	; 0x46
 80037d8:	f000 8300 	beq.w	8003ddc <_vfprintf_r+0x16c4>
 80037dc:	9904      	ldr	r1, [sp, #16]
 80037de:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80037e0:	b2f2      	uxtb	r2, r6
 80037e2:	2941      	cmp	r1, #65	; 0x41
 80037e4:	bf08      	it	eq
 80037e6:	320f      	addeq	r2, #15
 80037e8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80037ec:	bf06      	itte	eq
 80037ee:	b2d2      	uxtbeq	r2, r2
 80037f0:	2101      	moveq	r1, #1
 80037f2:	2100      	movne	r1, #0
 80037f4:	2b00      	cmp	r3, #0
 80037f6:	9324      	str	r3, [sp, #144]	; 0x90
 80037f8:	bfb8      	it	lt
 80037fa:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 80037fc:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003800:	bfba      	itte	lt
 8003802:	f1c3 0301 	rsblt	r3, r3, #1
 8003806:	222d      	movlt	r2, #45	; 0x2d
 8003808:	222b      	movge	r2, #43	; 0x2b
 800380a:	2b09      	cmp	r3, #9
 800380c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003810:	f300 83f9 	bgt.w	8004006 <_vfprintf_r+0x18ee>
 8003814:	2900      	cmp	r1, #0
 8003816:	f040 8487 	bne.w	8004128 <_vfprintf_r+0x1a10>
 800381a:	2230      	movs	r2, #48	; 0x30
 800381c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003820:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003824:	3330      	adds	r3, #48	; 0x30
 8003826:	7013      	strb	r3, [r2, #0]
 8003828:	1c53      	adds	r3, r2, #1
 800382a:	aa26      	add	r2, sp, #152	; 0x98
 800382c:	1a9b      	subs	r3, r3, r2
 800382e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003830:	9319      	str	r3, [sp, #100]	; 0x64
 8003832:	2a01      	cmp	r2, #1
 8003834:	4413      	add	r3, r2
 8003836:	9309      	str	r3, [sp, #36]	; 0x24
 8003838:	f340 8442 	ble.w	80040c0 <_vfprintf_r+0x19a8>
 800383c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800383e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003840:	4413      	add	r3, r2
 8003842:	9309      	str	r3, [sp, #36]	; 0x24
 8003844:	2300      	movs	r3, #0
 8003846:	930f      	str	r3, [sp, #60]	; 0x3c
 8003848:	9314      	str	r3, [sp, #80]	; 0x50
 800384a:	9311      	str	r3, [sp, #68]	; 0x44
 800384c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800384e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003852:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003856:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800385a:	9304      	str	r3, [sp, #16]
 800385c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800385e:	2b00      	cmp	r3, #0
 8003860:	f040 8275 	bne.w	8003d4e <_vfprintf_r+0x1636>
 8003864:	4699      	mov	r9, r3
 8003866:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800386a:	f7ff b8e2 	b.w	8002a32 <_vfprintf_r+0x31a>
 800386e:	bf00      	nop
 8003870:	08007470 	.word	0x08007470
 8003874:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003876:	49bd      	ldr	r1, [pc, #756]	; (8003b6c <_vfprintf_r+0x1454>)
 8003878:	f8cb 1000 	str.w	r1, [fp]
 800387c:	3201      	adds	r2, #1
 800387e:	3401      	adds	r4, #1
 8003880:	2101      	movs	r1, #1
 8003882:	2a07      	cmp	r2, #7
 8003884:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003888:	f8cb 1004 	str.w	r1, [fp, #4]
 800388c:	dc60      	bgt.n	8003950 <_vfprintf_r+0x1238>
 800388e:	f10b 0b08 	add.w	fp, fp, #8
 8003892:	b92b      	cbnz	r3, 80038a0 <_vfprintf_r+0x1188>
 8003894:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003896:	b91a      	cbnz	r2, 80038a0 <_vfprintf_r+0x1188>
 8003898:	f018 0f01 	tst.w	r8, #1
 800389c:	f43f a98d 	beq.w	8002bba <_vfprintf_r+0x4a2>
 80038a0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80038a2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80038a4:	f8cb 1000 	str.w	r1, [fp]
 80038a8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80038aa:	f8cb 1004 	str.w	r1, [fp, #4]
 80038ae:	3201      	adds	r2, #1
 80038b0:	440c      	add	r4, r1
 80038b2:	2a07      	cmp	r2, #7
 80038b4:	942c      	str	r4, [sp, #176]	; 0xb0
 80038b6:	922b      	str	r2, [sp, #172]	; 0xac
 80038b8:	f300 8282 	bgt.w	8003dc0 <_vfprintf_r+0x16a8>
 80038bc:	f10b 0b08 	add.w	fp, fp, #8
 80038c0:	2b00      	cmp	r3, #0
 80038c2:	f2c0 82e7 	blt.w	8003e94 <_vfprintf_r+0x177c>
 80038c6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80038c8:	3201      	adds	r2, #1
 80038ca:	441c      	add	r4, r3
 80038cc:	2a07      	cmp	r2, #7
 80038ce:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80038d2:	e9cb 7300 	strd	r7, r3, [fp]
 80038d6:	f77f a96e 	ble.w	8002bb6 <_vfprintf_r+0x49e>
 80038da:	e4fe      	b.n	80032da <_vfprintf_r+0xbc2>
 80038dc:	aa2a      	add	r2, sp, #168	; 0xa8
 80038de:	9907      	ldr	r1, [sp, #28]
 80038e0:	9803      	ldr	r0, [sp, #12]
 80038e2:	f003 fa47 	bl	8006d74 <__sprint_r>
 80038e6:	2800      	cmp	r0, #0
 80038e8:	f47f ac8e 	bne.w	8003208 <_vfprintf_r+0xaf0>
 80038ec:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038f0:	f7ff bbf0 	b.w	80030d4 <_vfprintf_r+0x9bc>
 80038f4:	9a05      	ldr	r2, [sp, #20]
 80038f6:	601a      	str	r2, [r3, #0]
 80038f8:	4657      	mov	r7, sl
 80038fa:	f7ff b9b3 	b.w	8002c64 <_vfprintf_r+0x54c>
 80038fe:	8814      	ldrh	r4, [r2, #0]
 8003900:	9108      	str	r1, [sp, #32]
 8003902:	2500      	movs	r5, #0
 8003904:	2201      	movs	r2, #1
 8003906:	f7ff b9c8 	b.w	8002c9a <_vfprintf_r+0x582>
 800390a:	8814      	ldrh	r4, [r2, #0]
 800390c:	9308      	str	r3, [sp, #32]
 800390e:	2500      	movs	r5, #0
 8003910:	f7ff ba14 	b.w	8002d3c <_vfprintf_r+0x624>
 8003914:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003918:	9208      	str	r2, [sp, #32]
 800391a:	17e5      	asrs	r5, r4, #31
 800391c:	4620      	mov	r0, r4
 800391e:	4629      	mov	r1, r5
 8003920:	f7ff b855 	b.w	80029ce <_vfprintf_r+0x2b6>
 8003924:	8814      	ldrh	r4, [r2, #0]
 8003926:	9308      	str	r3, [sp, #32]
 8003928:	2500      	movs	r5, #0
 800392a:	f7ff b825 	b.w	8002978 <_vfprintf_r+0x260>
 800392e:	222d      	movs	r2, #45	; 0x2d
 8003930:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003934:	f7ff baa2 	b.w	8002e7c <_vfprintf_r+0x764>
 8003938:	aa2a      	add	r2, sp, #168	; 0xa8
 800393a:	9907      	ldr	r1, [sp, #28]
 800393c:	9803      	ldr	r0, [sp, #12]
 800393e:	f003 fa19 	bl	8006d74 <__sprint_r>
 8003942:	2800      	cmp	r0, #0
 8003944:	f47f ac60 	bne.w	8003208 <_vfprintf_r+0xaf0>
 8003948:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800394a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800394e:	e534      	b.n	80033ba <_vfprintf_r+0xca2>
 8003950:	aa2a      	add	r2, sp, #168	; 0xa8
 8003952:	9907      	ldr	r1, [sp, #28]
 8003954:	9803      	ldr	r0, [sp, #12]
 8003956:	f003 fa0d 	bl	8006d74 <__sprint_r>
 800395a:	2800      	cmp	r0, #0
 800395c:	f47f ac54 	bne.w	8003208 <_vfprintf_r+0xaf0>
 8003960:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003962:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003964:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003968:	e793      	b.n	8003892 <_vfprintf_r+0x117a>
 800396a:	2330      	movs	r3, #48	; 0x30
 800396c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003970:	2378      	movs	r3, #120	; 0x78
 8003972:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003976:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 800397a:	f048 0402 	orr.w	r4, r8, #2
 800397e:	f300 82b0 	bgt.w	8003ee2 <_vfprintf_r+0x17ca>
 8003982:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003986:	930e      	str	r3, [sp, #56]	; 0x38
 8003988:	f026 0320 	bic.w	r3, r6, #32
 800398c:	9304      	str	r3, [sp, #16]
 800398e:	2200      	movs	r2, #0
 8003990:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003992:	920a      	str	r2, [sp, #40]	; 0x28
 8003994:	46a0      	mov	r8, r4
 8003996:	af3d      	add	r7, sp, #244	; 0xf4
 8003998:	2b00      	cmp	r3, #0
 800399a:	f2c0 81e3 	blt.w	8003d64 <_vfprintf_r+0x164c>
 800399e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80039a2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80039a6:	2300      	movs	r3, #0
 80039a8:	930b      	str	r3, [sp, #44]	; 0x2c
 80039aa:	2e61      	cmp	r6, #97	; 0x61
 80039ac:	f000 8255 	beq.w	8003e5a <_vfprintf_r+0x1742>
 80039b0:	2e41      	cmp	r6, #65	; 0x41
 80039b2:	f47f aee3 	bne.w	800377c <_vfprintf_r+0x1064>
 80039b6:	a824      	add	r0, sp, #144	; 0x90
 80039b8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80039bc:	f003 f8e2 	bl	8006b84 <frexp>
 80039c0:	2200      	movs	r2, #0
 80039c2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 80039c6:	ec51 0b10 	vmov	r0, r1, d0
 80039ca:	f7fd f8b5 	bl	8000b38 <__aeabi_dmul>
 80039ce:	2200      	movs	r2, #0
 80039d0:	2300      	movs	r3, #0
 80039d2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80039d6:	f7fd fb17 	bl	8001008 <__aeabi_dcmpeq>
 80039da:	2800      	cmp	r0, #0
 80039dc:	f040 8305 	bne.w	8003fea <_vfprintf_r+0x18d2>
 80039e0:	4b63      	ldr	r3, [pc, #396]	; (8003b70 <_vfprintf_r+0x1458>)
 80039e2:	9309      	str	r3, [sp, #36]	; 0x24
 80039e4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 80039e8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 80039ec:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80039f0:	9721      	str	r7, [sp, #132]	; 0x84
 80039f2:	46b9      	mov	r9, r7
 80039f4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 80039f8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 80039fc:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003a00:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003a04:	e003      	b.n	8003a0e <_vfprintf_r+0x12f6>
 8003a06:	f7fd faff 	bl	8001008 <__aeabi_dcmpeq>
 8003a0a:	bb20      	cbnz	r0, 8003a56 <_vfprintf_r+0x133e>
 8003a0c:	46a9      	mov	r9, r5
 8003a0e:	2200      	movs	r2, #0
 8003a10:	4b58      	ldr	r3, [pc, #352]	; (8003b74 <_vfprintf_r+0x145c>)
 8003a12:	4630      	mov	r0, r6
 8003a14:	4639      	mov	r1, r7
 8003a16:	f7fd f88f 	bl	8000b38 <__aeabi_dmul>
 8003a1a:	460f      	mov	r7, r1
 8003a1c:	4606      	mov	r6, r0
 8003a1e:	f7fd fb3b 	bl	8001098 <__aeabi_d2iz>
 8003a22:	4680      	mov	r8, r0
 8003a24:	f7fd f81e 	bl	8000a64 <__aeabi_i2d>
 8003a28:	4602      	mov	r2, r0
 8003a2a:	460b      	mov	r3, r1
 8003a2c:	4630      	mov	r0, r6
 8003a2e:	4639      	mov	r1, r7
 8003a30:	f7fc feca 	bl	80007c8 <__aeabi_dsub>
 8003a34:	464d      	mov	r5, r9
 8003a36:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003a3a:	f805 cb01 	strb.w	ip, [r5], #1
 8003a3e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003a42:	46a3      	mov	fp, r4
 8003a44:	4606      	mov	r6, r0
 8003a46:	460f      	mov	r7, r1
 8003a48:	f04f 0200 	mov.w	r2, #0
 8003a4c:	f04f 0300 	mov.w	r3, #0
 8003a50:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003a54:	d1d7      	bne.n	8003a06 <_vfprintf_r+0x12ee>
 8003a56:	4630      	mov	r0, r6
 8003a58:	4639      	mov	r1, r7
 8003a5a:	2200      	movs	r2, #0
 8003a5c:	4b46      	ldr	r3, [pc, #280]	; (8003b78 <_vfprintf_r+0x1460>)
 8003a5e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003a62:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003a64:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003a68:	4644      	mov	r4, r8
 8003a6a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003a6e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003a72:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003a76:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003a7a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003a7c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003a80:	f7fd faea 	bl	8001058 <__aeabi_dcmpgt>
 8003a84:	2800      	cmp	r0, #0
 8003a86:	f040 8176 	bne.w	8003d76 <_vfprintf_r+0x165e>
 8003a8a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003a8e:	2200      	movs	r2, #0
 8003a90:	4b39      	ldr	r3, [pc, #228]	; (8003b78 <_vfprintf_r+0x1460>)
 8003a92:	f7fd fab9 	bl	8001008 <__aeabi_dcmpeq>
 8003a96:	b110      	cbz	r0, 8003a9e <_vfprintf_r+0x1386>
 8003a98:	07e2      	lsls	r2, r4, #31
 8003a9a:	f100 816c 	bmi.w	8003d76 <_vfprintf_r+0x165e>
 8003a9e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003aa0:	2b00      	cmp	r3, #0
 8003aa2:	db07      	blt.n	8003ab4 <_vfprintf_r+0x139c>
 8003aa4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003aa6:	3301      	adds	r3, #1
 8003aa8:	442b      	add	r3, r5
 8003aaa:	2230      	movs	r2, #48	; 0x30
 8003aac:	f805 2b01 	strb.w	r2, [r5], #1
 8003ab0:	42ab      	cmp	r3, r5
 8003ab2:	d1fb      	bne.n	8003aac <_vfprintf_r+0x1394>
 8003ab4:	1beb      	subs	r3, r5, r7
 8003ab6:	4640      	mov	r0, r8
 8003ab8:	9310      	str	r3, [sp, #64]	; 0x40
 8003aba:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003abe:	e683      	b.n	80037c8 <_vfprintf_r+0x10b0>
 8003ac0:	f8cd 9010 	str.w	r9, [sp, #16]
 8003ac4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003ac8:	9408      	str	r4, [sp, #32]
 8003aca:	4681      	mov	r9, r0
 8003acc:	900f      	str	r0, [sp, #60]	; 0x3c
 8003ace:	9014      	str	r0, [sp, #80]	; 0x50
 8003ad0:	9011      	str	r0, [sp, #68]	; 0x44
 8003ad2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003ad6:	f7fe bfac 	b.w	8002a32 <_vfprintf_r+0x31a>
 8003ada:	aa2a      	add	r2, sp, #168	; 0xa8
 8003adc:	9907      	ldr	r1, [sp, #28]
 8003ade:	9803      	ldr	r0, [sp, #12]
 8003ae0:	f003 f948 	bl	8006d74 <__sprint_r>
 8003ae4:	2800      	cmp	r0, #0
 8003ae6:	f47f ab8f 	bne.w	8003208 <_vfprintf_r+0xaf0>
 8003aea:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003aec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003aee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003af2:	e511      	b.n	8003518 <_vfprintf_r+0xe00>
 8003af4:	4252      	negs	r2, r2
 8003af6:	9206      	str	r2, [sp, #24]
 8003af8:	9308      	str	r3, [sp, #32]
 8003afa:	f7ff b96d 	b.w	8002dd8 <_vfprintf_r+0x6c0>
 8003afe:	4614      	mov	r4, r2
 8003b00:	4632      	mov	r2, r6
 8003b02:	461e      	mov	r6, r3
 8003b04:	4613      	mov	r3, r2
 8003b06:	462a      	mov	r2, r5
 8003b08:	3201      	adds	r2, #1
 8003b0a:	9209      	str	r2, [sp, #36]	; 0x24
 8003b0c:	f106 0208 	add.w	r2, r6, #8
 8003b10:	e9c6 3900 	strd	r3, r9, [r6]
 8003b14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003b16:	932b      	str	r3, [sp, #172]	; 0xac
 8003b18:	444c      	add	r4, r9
 8003b1a:	2b07      	cmp	r3, #7
 8003b1c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003b1e:	f73f acc3 	bgt.w	80034a8 <_vfprintf_r+0xd90>
 8003b22:	3301      	adds	r3, #1
 8003b24:	9309      	str	r3, [sp, #36]	; 0x24
 8003b26:	f102 0b08 	add.w	fp, r2, #8
 8003b2a:	4616      	mov	r6, r2
 8003b2c:	f7ff bbca 	b.w	80032c4 <_vfprintf_r+0xbac>
 8003b30:	aa2a      	add	r2, sp, #168	; 0xa8
 8003b32:	9907      	ldr	r1, [sp, #28]
 8003b34:	9803      	ldr	r0, [sp, #12]
 8003b36:	f003 f91d 	bl	8006d74 <__sprint_r>
 8003b3a:	2800      	cmp	r0, #0
 8003b3c:	f47f ab64 	bne.w	8003208 <_vfprintf_r+0xaf0>
 8003b40:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003b42:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003b46:	f7ff bade 	b.w	8003106 <_vfprintf_r+0x9ee>
 8003b4a:	464b      	mov	r3, r9
 8003b4c:	2b06      	cmp	r3, #6
 8003b4e:	bf28      	it	cs
 8003b50:	2306      	movcs	r3, #6
 8003b52:	46b9      	mov	r9, r7
 8003b54:	970f      	str	r7, [sp, #60]	; 0x3c
 8003b56:	9714      	str	r7, [sp, #80]	; 0x50
 8003b58:	9711      	str	r7, [sp, #68]	; 0x44
 8003b5a:	970a      	str	r7, [sp, #40]	; 0x28
 8003b5c:	463a      	mov	r2, r7
 8003b5e:	9304      	str	r3, [sp, #16]
 8003b60:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003b64:	4f05      	ldr	r7, [pc, #20]	; (8003b7c <_vfprintf_r+0x1464>)
 8003b66:	f7fe bf64 	b.w	8002a32 <_vfprintf_r+0x31a>
 8003b6a:	bf00      	nop
 8003b6c:	0800745c 	.word	0x0800745c
 8003b70:	08007440 	.word	0x08007440
 8003b74:	40300000 	.word	0x40300000
 8003b78:	3fe00000 	.word	0x3fe00000
 8003b7c:	08007454 	.word	0x08007454
 8003b80:	460c      	mov	r4, r1
 8003b82:	4639      	mov	r1, r7
 8003b84:	465f      	mov	r7, fp
 8003b86:	469b      	mov	fp, r3
 8003b88:	460b      	mov	r3, r1
 8003b8a:	3201      	adds	r2, #1
 8003b8c:	442c      	add	r4, r5
 8003b8e:	2a07      	cmp	r2, #7
 8003b90:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003b94:	e9cb 3500 	strd	r3, r5, [fp]
 8003b98:	f73f aca5 	bgt.w	80034e6 <_vfprintf_r+0xdce>
 8003b9c:	f10b 0b08 	add.w	fp, fp, #8
 8003ba0:	e4ac      	b.n	80034fc <_vfprintf_r+0xde4>
 8003ba2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ba4:	1cda      	adds	r2, r3, #3
 8003ba6:	db02      	blt.n	8003bae <_vfprintf_r+0x1496>
 8003ba8:	4599      	cmp	r9, r3
 8003baa:	f280 80b5 	bge.w	8003d18 <_vfprintf_r+0x1600>
 8003bae:	3e02      	subs	r6, #2
 8003bb0:	f026 0320 	bic.w	r3, r6, #32
 8003bb4:	9304      	str	r3, [sp, #16]
 8003bb6:	e611      	b.n	80037dc <_vfprintf_r+0x10c4>
 8003bb8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003bba:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003bbe:	465a      	mov	r2, fp
 8003bc0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003bc4:	18fb      	adds	r3, r7, r3
 8003bc6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003bca:	970c      	str	r7, [sp, #48]	; 0x30
 8003bcc:	4eaf      	ldr	r6, [pc, #700]	; (8003e8c <_vfprintf_r+0x1774>)
 8003bce:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003bd2:	9309      	str	r3, [sp, #36]	; 0x24
 8003bd4:	464f      	mov	r7, r9
 8003bd6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003bda:	4621      	mov	r1, r4
 8003bdc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003bde:	2b00      	cmp	r3, #0
 8003be0:	d05b      	beq.n	8003c9a <_vfprintf_r+0x1582>
 8003be2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003be4:	2b00      	cmp	r3, #0
 8003be6:	d154      	bne.n	8003c92 <_vfprintf_r+0x157a>
 8003be8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003bea:	3b01      	subs	r3, #1
 8003bec:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003bf0:	9314      	str	r3, [sp, #80]	; 0x50
 8003bf2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003bf4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003bf6:	6010      	str	r0, [r2, #0]
 8003bf8:	3301      	adds	r3, #1
 8003bfa:	4459      	add	r1, fp
 8003bfc:	2b07      	cmp	r3, #7
 8003bfe:	912c      	str	r1, [sp, #176]	; 0xb0
 8003c00:	f8c2 b004 	str.w	fp, [r2, #4]
 8003c04:	932b      	str	r3, [sp, #172]	; 0xac
 8003c06:	dc68      	bgt.n	8003cda <_vfprintf_r+0x15c2>
 8003c08:	3208      	adds	r2, #8
 8003c0a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003c0c:	f898 3000 	ldrb.w	r3, [r8]
 8003c10:	1bc5      	subs	r5, r0, r7
 8003c12:	429d      	cmp	r5, r3
 8003c14:	bfa8      	it	ge
 8003c16:	461d      	movge	r5, r3
 8003c18:	2d00      	cmp	r5, #0
 8003c1a:	dd0b      	ble.n	8003c34 <_vfprintf_r+0x151c>
 8003c1c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003c1e:	6017      	str	r7, [r2, #0]
 8003c20:	3301      	adds	r3, #1
 8003c22:	4429      	add	r1, r5
 8003c24:	2b07      	cmp	r3, #7
 8003c26:	912c      	str	r1, [sp, #176]	; 0xb0
 8003c28:	6055      	str	r5, [r2, #4]
 8003c2a:	932b      	str	r3, [sp, #172]	; 0xac
 8003c2c:	dc5e      	bgt.n	8003cec <_vfprintf_r+0x15d4>
 8003c2e:	f898 3000 	ldrb.w	r3, [r8]
 8003c32:	3208      	adds	r2, #8
 8003c34:	2d00      	cmp	r5, #0
 8003c36:	bfac      	ite	ge
 8003c38:	1b5d      	subge	r5, r3, r5
 8003c3a:	461d      	movlt	r5, r3
 8003c3c:	2d00      	cmp	r5, #0
 8003c3e:	dd26      	ble.n	8003c8e <_vfprintf_r+0x1576>
 8003c40:	2d10      	cmp	r5, #16
 8003c42:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003c44:	dd3c      	ble.n	8003cc0 <_vfprintf_r+0x15a8>
 8003c46:	2410      	movs	r4, #16
 8003c48:	e003      	b.n	8003c52 <_vfprintf_r+0x153a>
 8003c4a:	3208      	adds	r2, #8
 8003c4c:	3d10      	subs	r5, #16
 8003c4e:	2d10      	cmp	r5, #16
 8003c50:	dd36      	ble.n	8003cc0 <_vfprintf_r+0x15a8>
 8003c52:	3001      	adds	r0, #1
 8003c54:	3110      	adds	r1, #16
 8003c56:	2807      	cmp	r0, #7
 8003c58:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003c5c:	e9c2 6400 	strd	r6, r4, [r2]
 8003c60:	ddf3      	ble.n	8003c4a <_vfprintf_r+0x1532>
 8003c62:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c64:	4651      	mov	r1, sl
 8003c66:	4648      	mov	r0, r9
 8003c68:	f003 f884 	bl	8006d74 <__sprint_r>
 8003c6c:	2800      	cmp	r0, #0
 8003c6e:	d150      	bne.n	8003d12 <_vfprintf_r+0x15fa>
 8003c70:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003c74:	aa2d      	add	r2, sp, #180	; 0xb4
 8003c76:	e7e9      	b.n	8003c4c <_vfprintf_r+0x1534>
 8003c78:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c7a:	4651      	mov	r1, sl
 8003c7c:	4648      	mov	r0, r9
 8003c7e:	f003 f879 	bl	8006d74 <__sprint_r>
 8003c82:	2800      	cmp	r0, #0
 8003c84:	d145      	bne.n	8003d12 <_vfprintf_r+0x15fa>
 8003c86:	f898 3000 	ldrb.w	r3, [r8]
 8003c8a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003c8c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003c8e:	441f      	add	r7, r3
 8003c90:	e7a4      	b.n	8003bdc <_vfprintf_r+0x14c4>
 8003c92:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c94:	3b01      	subs	r3, #1
 8003c96:	930f      	str	r3, [sp, #60]	; 0x3c
 8003c98:	e7ab      	b.n	8003bf2 <_vfprintf_r+0x14da>
 8003c9a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003c9c:	2b00      	cmp	r3, #0
 8003c9e:	d1f8      	bne.n	8003c92 <_vfprintf_r+0x157a>
 8003ca0:	46b9      	mov	r9, r7
 8003ca2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003ca4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003ca6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003caa:	18fb      	adds	r3, r7, r3
 8003cac:	4599      	cmp	r9, r3
 8003cae:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003cb2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003cb6:	4693      	mov	fp, r2
 8003cb8:	460c      	mov	r4, r1
 8003cba:	bf28      	it	cs
 8003cbc:	4699      	movcs	r9, r3
 8003cbe:	e424      	b.n	800350a <_vfprintf_r+0xdf2>
 8003cc0:	3001      	adds	r0, #1
 8003cc2:	4429      	add	r1, r5
 8003cc4:	2807      	cmp	r0, #7
 8003cc6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003cca:	e9c2 6500 	strd	r6, r5, [r2]
 8003cce:	dcd3      	bgt.n	8003c78 <_vfprintf_r+0x1560>
 8003cd0:	f898 3000 	ldrb.w	r3, [r8]
 8003cd4:	3208      	adds	r2, #8
 8003cd6:	441f      	add	r7, r3
 8003cd8:	e780      	b.n	8003bdc <_vfprintf_r+0x14c4>
 8003cda:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cdc:	4651      	mov	r1, sl
 8003cde:	4648      	mov	r0, r9
 8003ce0:	f003 f848 	bl	8006d74 <__sprint_r>
 8003ce4:	b9a8      	cbnz	r0, 8003d12 <_vfprintf_r+0x15fa>
 8003ce6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003ce8:	aa2d      	add	r2, sp, #180	; 0xb4
 8003cea:	e78e      	b.n	8003c0a <_vfprintf_r+0x14f2>
 8003cec:	aa2a      	add	r2, sp, #168	; 0xa8
 8003cee:	4651      	mov	r1, sl
 8003cf0:	4648      	mov	r0, r9
 8003cf2:	f003 f83f 	bl	8006d74 <__sprint_r>
 8003cf6:	b960      	cbnz	r0, 8003d12 <_vfprintf_r+0x15fa>
 8003cf8:	f898 3000 	ldrb.w	r3, [r8]
 8003cfc:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003cfe:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d00:	e798      	b.n	8003c34 <_vfprintf_r+0x151c>
 8003d02:	4638      	mov	r0, r7
 8003d04:	f7fc fc9c 	bl	8000640 <strlen>
 8003d08:	46a9      	mov	r9, r5
 8003d0a:	4603      	mov	r3, r0
 8003d0c:	9009      	str	r0, [sp, #36]	; 0x24
 8003d0e:	f7ff b8f4 	b.w	8002efa <_vfprintf_r+0x7e2>
 8003d12:	46d1      	mov	r9, sl
 8003d14:	f7ff ba7a 	b.w	800320c <_vfprintf_r+0xaf4>
 8003d18:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d1a:	4619      	mov	r1, r3
 8003d1c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d1e:	4299      	cmp	r1, r3
 8003d20:	f300 8082 	bgt.w	8003e28 <_vfprintf_r+0x1710>
 8003d24:	07c4      	lsls	r4, r0, #31
 8003d26:	f140 816b 	bpl.w	8004000 <_vfprintf_r+0x18e8>
 8003d2a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d2c:	4413      	add	r3, r2
 8003d2e:	9309      	str	r3, [sp, #36]	; 0x24
 8003d30:	0541      	lsls	r1, r0, #21
 8003d32:	d503      	bpl.n	8003d3c <_vfprintf_r+0x1624>
 8003d34:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d36:	2b00      	cmp	r3, #0
 8003d38:	f300 80e6 	bgt.w	8003f08 <_vfprintf_r+0x17f0>
 8003d3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d3e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d42:	9304      	str	r3, [sp, #16]
 8003d44:	2667      	movs	r6, #103	; 0x67
 8003d46:	2300      	movs	r3, #0
 8003d48:	930f      	str	r3, [sp, #60]	; 0x3c
 8003d4a:	9314      	str	r3, [sp, #80]	; 0x50
 8003d4c:	e586      	b.n	800385c <_vfprintf_r+0x1144>
 8003d4e:	222d      	movs	r2, #45	; 0x2d
 8003d50:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003d54:	f04f 0900 	mov.w	r9, #0
 8003d58:	f7fe be6c 	b.w	8002a34 <_vfprintf_r+0x31c>
 8003d5c:	46a1      	mov	r9, r4
 8003d5e:	f7ff ba55 	b.w	800320c <_vfprintf_r+0xaf4>
 8003d62:	900a      	str	r0, [sp, #40]	; 0x28
 8003d64:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003d68:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003d6c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003d6e:	232d      	movs	r3, #45	; 0x2d
 8003d70:	911e      	str	r1, [sp, #120]	; 0x78
 8003d72:	930b      	str	r3, [sp, #44]	; 0x2c
 8003d74:	e619      	b.n	80039aa <_vfprintf_r+0x1292>
 8003d76:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d78:	9328      	str	r3, [sp, #160]	; 0xa0
 8003d7a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d7c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003d80:	7bd9      	ldrb	r1, [r3, #15]
 8003d82:	4291      	cmp	r1, r2
 8003d84:	462b      	mov	r3, r5
 8003d86:	d109      	bne.n	8003d9c <_vfprintf_r+0x1684>
 8003d88:	2030      	movs	r0, #48	; 0x30
 8003d8a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003d8e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003d90:	1e5a      	subs	r2, r3, #1
 8003d92:	9228      	str	r2, [sp, #160]	; 0xa0
 8003d94:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003d98:	4291      	cmp	r1, r2
 8003d9a:	d0f6      	beq.n	8003d8a <_vfprintf_r+0x1672>
 8003d9c:	2a39      	cmp	r2, #57	; 0x39
 8003d9e:	bf0b      	itete	eq
 8003da0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003da2:	3201      	addne	r2, #1
 8003da4:	7a92      	ldrbeq	r2, [r2, #10]
 8003da6:	b2d2      	uxtbne	r2, r2
 8003da8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003dac:	e682      	b.n	8003ab4 <_vfprintf_r+0x139c>
 8003dae:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003db2:	f43f ad9f 	beq.w	80038f4 <_vfprintf_r+0x11dc>
 8003db6:	9a05      	ldr	r2, [sp, #20]
 8003db8:	701a      	strb	r2, [r3, #0]
 8003dba:	4657      	mov	r7, sl
 8003dbc:	f7fe bf52 	b.w	8002c64 <_vfprintf_r+0x54c>
 8003dc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dc2:	9907      	ldr	r1, [sp, #28]
 8003dc4:	9803      	ldr	r0, [sp, #12]
 8003dc6:	f002 ffd5 	bl	8006d74 <__sprint_r>
 8003dca:	2800      	cmp	r0, #0
 8003dcc:	f47f aa1c 	bne.w	8003208 <_vfprintf_r+0xaf0>
 8003dd0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003dd2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003dd6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003dda:	e571      	b.n	80038c0 <_vfprintf_r+0x11a8>
 8003ddc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003dde:	2b00      	cmp	r3, #0
 8003de0:	f340 8164 	ble.w	80040ac <_vfprintf_r+0x1994>
 8003de4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003de6:	f1b9 0f00 	cmp.w	r9, #0
 8003dea:	f040 8103 	bne.w	8003ff4 <_vfprintf_r+0x18dc>
 8003dee:	07c6      	lsls	r6, r0, #31
 8003df0:	f100 8100 	bmi.w	8003ff4 <_vfprintf_r+0x18dc>
 8003df4:	9309      	str	r3, [sp, #36]	; 0x24
 8003df6:	2666      	movs	r6, #102	; 0x66
 8003df8:	0543      	lsls	r3, r0, #21
 8003dfa:	f100 8086 	bmi.w	8003f0a <_vfprintf_r+0x17f2>
 8003dfe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e00:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e04:	9304      	str	r3, [sp, #16]
 8003e06:	e79e      	b.n	8003d46 <_vfprintf_r+0x162e>
 8003e08:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e0a:	9907      	ldr	r1, [sp, #28]
 8003e0c:	9803      	ldr	r0, [sp, #12]
 8003e0e:	f002 ffb1 	bl	8006d74 <__sprint_r>
 8003e12:	2800      	cmp	r0, #0
 8003e14:	f47f a9f8 	bne.w	8003208 <_vfprintf_r+0xaf0>
 8003e18:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003e1a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003e1c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003e1e:	1ad3      	subs	r3, r2, r3
 8003e20:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e24:	f7ff bb90 	b.w	8003548 <_vfprintf_r+0xe30>
 8003e28:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e2a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e2c:	4413      	add	r3, r2
 8003e2e:	9309      	str	r3, [sp, #36]	; 0x24
 8003e30:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e32:	2b00      	cmp	r3, #0
 8003e34:	f340 8149 	ble.w	80040ca <_vfprintf_r+0x19b2>
 8003e38:	2667      	movs	r6, #103	; 0x67
 8003e3a:	e7dd      	b.n	8003df8 <_vfprintf_r+0x16e0>
 8003e3c:	2330      	movs	r3, #48	; 0x30
 8003e3e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003e42:	2358      	movs	r3, #88	; 0x58
 8003e44:	e595      	b.n	8003972 <_vfprintf_r+0x125a>
 8003e46:	9803      	ldr	r0, [sp, #12]
 8003e48:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e4a:	4649      	mov	r1, r9
 8003e4c:	f002 ff92 	bl	8006d74 <__sprint_r>
 8003e50:	2800      	cmp	r0, #0
 8003e52:	f47f a9e0 	bne.w	8003216 <_vfprintf_r+0xafe>
 8003e56:	f7fe bf0f 	b.w	8002c78 <_vfprintf_r+0x560>
 8003e5a:	a824      	add	r0, sp, #144	; 0x90
 8003e5c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003e60:	f002 fe90 	bl	8006b84 <frexp>
 8003e64:	2200      	movs	r2, #0
 8003e66:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003e6a:	ec51 0b10 	vmov	r0, r1, d0
 8003e6e:	f7fc fe63 	bl	8000b38 <__aeabi_dmul>
 8003e72:	2200      	movs	r2, #0
 8003e74:	2300      	movs	r3, #0
 8003e76:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003e7a:	f7fd f8c5 	bl	8001008 <__aeabi_dcmpeq>
 8003e7e:	b108      	cbz	r0, 8003e84 <_vfprintf_r+0x176c>
 8003e80:	2301      	movs	r3, #1
 8003e82:	9324      	str	r3, [sp, #144]	; 0x90
 8003e84:	4b02      	ldr	r3, [pc, #8]	; (8003e90 <_vfprintf_r+0x1778>)
 8003e86:	9309      	str	r3, [sp, #36]	; 0x24
 8003e88:	e5ac      	b.n	80039e4 <_vfprintf_r+0x12cc>
 8003e8a:	bf00      	nop
 8003e8c:	08007470 	.word	0x08007470
 8003e90:	0800742c 	.word	0x0800742c
 8003e94:	425d      	negs	r5, r3
 8003e96:	3310      	adds	r3, #16
 8003e98:	4bb9      	ldr	r3, [pc, #740]	; (8004180 <_vfprintf_r+0x1a68>)
 8003e9a:	f280 8097 	bge.w	8003fcc <_vfprintf_r+0x18b4>
 8003e9e:	4619      	mov	r1, r3
 8003ea0:	2610      	movs	r6, #16
 8003ea2:	4623      	mov	r3, r4
 8003ea4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003ea8:	460c      	mov	r4, r1
 8003eaa:	e005      	b.n	8003eb8 <_vfprintf_r+0x17a0>
 8003eac:	f10b 0b08 	add.w	fp, fp, #8
 8003eb0:	3d10      	subs	r5, #16
 8003eb2:	2d10      	cmp	r5, #16
 8003eb4:	f340 8087 	ble.w	8003fc6 <_vfprintf_r+0x18ae>
 8003eb8:	3201      	adds	r2, #1
 8003eba:	3310      	adds	r3, #16
 8003ebc:	2a07      	cmp	r2, #7
 8003ebe:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003ec2:	e9cb 4600 	strd	r4, r6, [fp]
 8003ec6:	ddf1      	ble.n	8003eac <_vfprintf_r+0x1794>
 8003ec8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003eca:	9907      	ldr	r1, [sp, #28]
 8003ecc:	4648      	mov	r0, r9
 8003ece:	f002 ff51 	bl	8006d74 <__sprint_r>
 8003ed2:	2800      	cmp	r0, #0
 8003ed4:	f47f a998 	bne.w	8003208 <_vfprintf_r+0xaf0>
 8003ed8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003edc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ee0:	e7e6      	b.n	8003eb0 <_vfprintf_r+0x1798>
 8003ee2:	f109 0101 	add.w	r1, r9, #1
 8003ee6:	9803      	ldr	r0, [sp, #12]
 8003ee8:	f001 fe80 	bl	8005bec <_malloc_r>
 8003eec:	4607      	mov	r7, r0
 8003eee:	2800      	cmp	r0, #0
 8003ef0:	f000 813b 	beq.w	800416a <_vfprintf_r+0x1a52>
 8003ef4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003ef8:	930e      	str	r3, [sp, #56]	; 0x38
 8003efa:	f026 0320 	bic.w	r3, r6, #32
 8003efe:	9304      	str	r3, [sp, #16]
 8003f00:	46a0      	mov	r8, r4
 8003f02:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003f04:	900a      	str	r0, [sp, #40]	; 0x28
 8003f06:	e547      	b.n	8003998 <_vfprintf_r+0x1280>
 8003f08:	2667      	movs	r6, #103	; 0x67
 8003f0a:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003f0c:	2200      	movs	r2, #0
 8003f0e:	920f      	str	r2, [sp, #60]	; 0x3c
 8003f10:	9214      	str	r2, [sp, #80]	; 0x50
 8003f12:	7803      	ldrb	r3, [r0, #0]
 8003f14:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003f16:	2bff      	cmp	r3, #255	; 0xff
 8003f18:	d00c      	beq.n	8003f34 <_vfprintf_r+0x181c>
 8003f1a:	4293      	cmp	r3, r2
 8003f1c:	da0a      	bge.n	8003f34 <_vfprintf_r+0x181c>
 8003f1e:	7841      	ldrb	r1, [r0, #1]
 8003f20:	1ad2      	subs	r2, r2, r3
 8003f22:	b1a9      	cbz	r1, 8003f50 <_vfprintf_r+0x1838>
 8003f24:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f26:	3301      	adds	r3, #1
 8003f28:	9314      	str	r3, [sp, #80]	; 0x50
 8003f2a:	460b      	mov	r3, r1
 8003f2c:	2bff      	cmp	r3, #255	; 0xff
 8003f2e:	f100 0001 	add.w	r0, r0, #1
 8003f32:	d1f2      	bne.n	8003f1a <_vfprintf_r+0x1802>
 8003f34:	9211      	str	r2, [sp, #68]	; 0x44
 8003f36:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003f38:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003f3a:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003f3c:	901a      	str	r0, [sp, #104]	; 0x68
 8003f3e:	4413      	add	r3, r2
 8003f40:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003f42:	fb02 1303 	mla	r3, r2, r3, r1
 8003f46:	9309      	str	r3, [sp, #36]	; 0x24
 8003f48:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f4c:	9304      	str	r3, [sp, #16]
 8003f4e:	e485      	b.n	800385c <_vfprintf_r+0x1144>
 8003f50:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003f52:	3101      	adds	r1, #1
 8003f54:	910f      	str	r1, [sp, #60]	; 0x3c
 8003f56:	e7de      	b.n	8003f16 <_vfprintf_r+0x17fe>
 8003f58:	aa28      	add	r2, sp, #160	; 0xa0
 8003f5a:	ab25      	add	r3, sp, #148	; 0x94
 8003f5c:	e9cd 3200 	strd	r3, r2, [sp]
 8003f60:	2103      	movs	r1, #3
 8003f62:	ab24      	add	r3, sp, #144	; 0x90
 8003f64:	464a      	mov	r2, r9
 8003f66:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003f6a:	9803      	ldr	r0, [sp, #12]
 8003f6c:	f000 fa5c 	bl	8004428 <_dtoa_r>
 8003f70:	464d      	mov	r5, r9
 8003f72:	4607      	mov	r7, r0
 8003f74:	eb00 0409 	add.w	r4, r0, r9
 8003f78:	783b      	ldrb	r3, [r7, #0]
 8003f7a:	2b30      	cmp	r3, #48	; 0x30
 8003f7c:	f000 80be 	beq.w	80040fc <_vfprintf_r+0x19e4>
 8003f80:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003f82:	442c      	add	r4, r5
 8003f84:	2200      	movs	r2, #0
 8003f86:	2300      	movs	r3, #0
 8003f88:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003f8c:	f7fd f83c 	bl	8001008 <__aeabi_dcmpeq>
 8003f90:	b108      	cbz	r0, 8003f96 <_vfprintf_r+0x187e>
 8003f92:	4623      	mov	r3, r4
 8003f94:	e413      	b.n	80037be <_vfprintf_r+0x10a6>
 8003f96:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003f98:	42a3      	cmp	r3, r4
 8003f9a:	f4bf ac10 	bcs.w	80037be <_vfprintf_r+0x10a6>
 8003f9e:	2130      	movs	r1, #48	; 0x30
 8003fa0:	1c5a      	adds	r2, r3, #1
 8003fa2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003fa4:	7019      	strb	r1, [r3, #0]
 8003fa6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003fa8:	429c      	cmp	r4, r3
 8003faa:	d8f9      	bhi.n	8003fa0 <_vfprintf_r+0x1888>
 8003fac:	e407      	b.n	80037be <_vfprintf_r+0x10a6>
 8003fae:	197c      	adds	r4, r7, r5
 8003fb0:	e7e8      	b.n	8003f84 <_vfprintf_r+0x186c>
 8003fb2:	f1b9 0f00 	cmp.w	r9, #0
 8003fb6:	f000 8092 	beq.w	80040de <_vfprintf_r+0x19c6>
 8003fba:	900a      	str	r0, [sp, #40]	; 0x28
 8003fbc:	e4ec      	b.n	8003998 <_vfprintf_r+0x1280>
 8003fbe:	900a      	str	r0, [sp, #40]	; 0x28
 8003fc0:	f04f 0906 	mov.w	r9, #6
 8003fc4:	e4e8      	b.n	8003998 <_vfprintf_r+0x1280>
 8003fc6:	4621      	mov	r1, r4
 8003fc8:	461c      	mov	r4, r3
 8003fca:	460b      	mov	r3, r1
 8003fcc:	3201      	adds	r2, #1
 8003fce:	442c      	add	r4, r5
 8003fd0:	2a07      	cmp	r2, #7
 8003fd2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003fd6:	e9cb 3500 	strd	r3, r5, [fp]
 8003fda:	f300 80a9 	bgt.w	8004130 <_vfprintf_r+0x1a18>
 8003fde:	f10b 0b08 	add.w	fp, fp, #8
 8003fe2:	e470      	b.n	80038c6 <_vfprintf_r+0x11ae>
 8003fe4:	469a      	mov	sl, r3
 8003fe6:	f7ff bb37 	b.w	8003658 <_vfprintf_r+0xf40>
 8003fea:	2301      	movs	r3, #1
 8003fec:	9324      	str	r3, [sp, #144]	; 0x90
 8003fee:	4b65      	ldr	r3, [pc, #404]	; (8004184 <_vfprintf_r+0x1a6c>)
 8003ff0:	9309      	str	r3, [sp, #36]	; 0x24
 8003ff2:	e4f7      	b.n	80039e4 <_vfprintf_r+0x12cc>
 8003ff4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003ff6:	4413      	add	r3, r2
 8003ff8:	444b      	add	r3, r9
 8003ffa:	9309      	str	r3, [sp, #36]	; 0x24
 8003ffc:	2666      	movs	r6, #102	; 0x66
 8003ffe:	e6fb      	b.n	8003df8 <_vfprintf_r+0x16e0>
 8004000:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004002:	9309      	str	r3, [sp, #36]	; 0x24
 8004004:	e694      	b.n	8003d30 <_vfprintf_r+0x1618>
 8004006:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800400a:	4664      	mov	r4, ip
 800400c:	4d5e      	ldr	r5, [pc, #376]	; (8004188 <_vfprintf_r+0x1a70>)
 800400e:	e000      	b.n	8004012 <_vfprintf_r+0x18fa>
 8004010:	4614      	mov	r4, r2
 8004012:	fba5 1203 	umull	r1, r2, r5, r3
 8004016:	08d2      	lsrs	r2, r2, #3
 8004018:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800401c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004020:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004024:	4613      	mov	r3, r2
 8004026:	2b09      	cmp	r3, #9
 8004028:	f804 1c01 	strb.w	r1, [r4, #-1]
 800402c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004030:	dcee      	bgt.n	8004010 <_vfprintf_r+0x18f8>
 8004032:	3330      	adds	r3, #48	; 0x30
 8004034:	3c02      	subs	r4, #2
 8004036:	b2db      	uxtb	r3, r3
 8004038:	45a4      	cmp	ip, r4
 800403a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800403e:	f240 8090 	bls.w	8004162 <_vfprintf_r+0x1a4a>
 8004042:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004046:	4611      	mov	r1, r2
 8004048:	e001      	b.n	800404e <_vfprintf_r+0x1936>
 800404a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800404e:	f804 3b01 	strb.w	r3, [r4], #1
 8004052:	458c      	cmp	ip, r1
 8004054:	d1f9      	bne.n	800404a <_vfprintf_r+0x1932>
 8004056:	ab2a      	add	r3, sp, #168	; 0xa8
 8004058:	1a9b      	subs	r3, r3, r2
 800405a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800405e:	4413      	add	r3, r2
 8004060:	f7ff bbe3 	b.w	800382a <_vfprintf_r+0x1112>
 8004064:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004066:	4f49      	ldr	r7, [pc, #292]	; (800418c <_vfprintf_r+0x1a74>)
 8004068:	2b00      	cmp	r3, #0
 800406a:	bfb6      	itet	lt
 800406c:	222d      	movlt	r2, #45	; 0x2d
 800406e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004072:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004076:	4b46      	ldr	r3, [pc, #280]	; (8004190 <_vfprintf_r+0x1a78>)
 8004078:	f7fe bf02 	b.w	8002e80 <_vfprintf_r+0x768>
 800407c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004080:	f7ff b8c9 	b.w	8003216 <_vfprintf_r+0xafe>
 8004084:	aa28      	add	r2, sp, #160	; 0xa0
 8004086:	ab25      	add	r3, sp, #148	; 0x94
 8004088:	e9cd 3200 	strd	r3, r2, [sp]
 800408c:	2103      	movs	r1, #3
 800408e:	ab24      	add	r3, sp, #144	; 0x90
 8004090:	464a      	mov	r2, r9
 8004092:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8004096:	9803      	ldr	r0, [sp, #12]
 8004098:	f000 f9c6 	bl	8004428 <_dtoa_r>
 800409c:	464d      	mov	r5, r9
 800409e:	4607      	mov	r7, r0
 80040a0:	2e46      	cmp	r6, #70	; 0x46
 80040a2:	eb07 0405 	add.w	r4, r7, r5
 80040a6:	f43f af67 	beq.w	8003f78 <_vfprintf_r+0x1860>
 80040aa:	e76b      	b.n	8003f84 <_vfprintf_r+0x186c>
 80040ac:	f1b9 0f00 	cmp.w	r9, #0
 80040b0:	d131      	bne.n	8004116 <_vfprintf_r+0x19fe>
 80040b2:	07c5      	lsls	r5, r0, #31
 80040b4:	d42f      	bmi.n	8004116 <_vfprintf_r+0x19fe>
 80040b6:	2301      	movs	r3, #1
 80040b8:	9304      	str	r3, [sp, #16]
 80040ba:	9309      	str	r3, [sp, #36]	; 0x24
 80040bc:	2666      	movs	r6, #102	; 0x66
 80040be:	e642      	b.n	8003d46 <_vfprintf_r+0x162e>
 80040c0:	07c3      	lsls	r3, r0, #31
 80040c2:	f57f abbf 	bpl.w	8003844 <_vfprintf_r+0x112c>
 80040c6:	f7ff bbb9 	b.w	800383c <_vfprintf_r+0x1124>
 80040ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80040cc:	f1c3 0301 	rsb	r3, r3, #1
 80040d0:	441a      	add	r2, r3
 80040d2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80040d6:	9209      	str	r2, [sp, #36]	; 0x24
 80040d8:	9304      	str	r3, [sp, #16]
 80040da:	2667      	movs	r6, #103	; 0x67
 80040dc:	e633      	b.n	8003d46 <_vfprintf_r+0x162e>
 80040de:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80040e2:	f04f 0901 	mov.w	r9, #1
 80040e6:	e457      	b.n	8003998 <_vfprintf_r+0x1280>
 80040e8:	465a      	mov	r2, fp
 80040ea:	e511      	b.n	8003b10 <_vfprintf_r+0x13f8>
 80040ec:	2e47      	cmp	r6, #71	; 0x47
 80040ee:	f47f af5e 	bne.w	8003fae <_vfprintf_r+0x1896>
 80040f2:	f018 0f01 	tst.w	r8, #1
 80040f6:	f43f ab61 	beq.w	80037bc <_vfprintf_r+0x10a4>
 80040fa:	e7d1      	b.n	80040a0 <_vfprintf_r+0x1988>
 80040fc:	2200      	movs	r2, #0
 80040fe:	2300      	movs	r3, #0
 8004100:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004104:	f7fc ff80 	bl	8001008 <__aeabi_dcmpeq>
 8004108:	2800      	cmp	r0, #0
 800410a:	f47f af39 	bne.w	8003f80 <_vfprintf_r+0x1868>
 800410e:	f1c5 0501 	rsb	r5, r5, #1
 8004112:	9524      	str	r5, [sp, #144]	; 0x90
 8004114:	e735      	b.n	8003f82 <_vfprintf_r+0x186a>
 8004116:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004118:	3301      	adds	r3, #1
 800411a:	444b      	add	r3, r9
 800411c:	9309      	str	r3, [sp, #36]	; 0x24
 800411e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004122:	9304      	str	r3, [sp, #16]
 8004124:	2666      	movs	r6, #102	; 0x66
 8004126:	e60e      	b.n	8003d46 <_vfprintf_r+0x162e>
 8004128:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800412c:	f7ff bb7a 	b.w	8003824 <_vfprintf_r+0x110c>
 8004130:	aa2a      	add	r2, sp, #168	; 0xa8
 8004132:	9907      	ldr	r1, [sp, #28]
 8004134:	9803      	ldr	r0, [sp, #12]
 8004136:	f002 fe1d 	bl	8006d74 <__sprint_r>
 800413a:	2800      	cmp	r0, #0
 800413c:	f47f a864 	bne.w	8003208 <_vfprintf_r+0xaf0>
 8004140:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004144:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004148:	f7ff bbbd 	b.w	80038c6 <_vfprintf_r+0x11ae>
 800414c:	9908      	ldr	r1, [sp, #32]
 800414e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004152:	680b      	ldr	r3, [r1, #0]
 8004154:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004158:	1d0b      	adds	r3, r1, #4
 800415a:	4692      	mov	sl, r2
 800415c:	9308      	str	r3, [sp, #32]
 800415e:	f7fe bb59 	b.w	8002814 <_vfprintf_r+0xfc>
 8004162:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004166:	f7ff bb60 	b.w	800382a <_vfprintf_r+0x1112>
 800416a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800416e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004172:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004176:	f8a9 300c 	strh.w	r3, [r9, #12]
 800417a:	f7ff b84c 	b.w	8003216 <_vfprintf_r+0xafe>
 800417e:	bf00      	nop
 8004180:	08007470 	.word	0x08007470
 8004184:	08007440 	.word	0x08007440
 8004188:	cccccccd 	.word	0xcccccccd
 800418c:	08007428 	.word	0x08007428
 8004190:	08007424 	.word	0x08007424

08004194 <__sbprintf>:
 8004194:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8004198:	460c      	mov	r4, r1
 800419a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800419e:	8989      	ldrh	r1, [r1, #12]
 80041a0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80041a2:	89e5      	ldrh	r5, [r4, #14]
 80041a4:	9619      	str	r6, [sp, #100]	; 0x64
 80041a6:	f021 0102 	bic.w	r1, r1, #2
 80041aa:	4606      	mov	r6, r0
 80041ac:	69e0      	ldr	r0, [r4, #28]
 80041ae:	f8ad 100c 	strh.w	r1, [sp, #12]
 80041b2:	4617      	mov	r7, r2
 80041b4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80041b8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80041ba:	f8ad 500e 	strh.w	r5, [sp, #14]
 80041be:	4698      	mov	r8, r3
 80041c0:	ad1a      	add	r5, sp, #104	; 0x68
 80041c2:	2300      	movs	r3, #0
 80041c4:	9007      	str	r0, [sp, #28]
 80041c6:	a816      	add	r0, sp, #88	; 0x58
 80041c8:	9209      	str	r2, [sp, #36]	; 0x24
 80041ca:	9306      	str	r3, [sp, #24]
 80041cc:	9500      	str	r5, [sp, #0]
 80041ce:	9504      	str	r5, [sp, #16]
 80041d0:	9102      	str	r1, [sp, #8]
 80041d2:	9105      	str	r1, [sp, #20]
 80041d4:	f001 fc8a 	bl	8005aec <__retarget_lock_init_recursive>
 80041d8:	4643      	mov	r3, r8
 80041da:	463a      	mov	r2, r7
 80041dc:	4669      	mov	r1, sp
 80041de:	4630      	mov	r0, r6
 80041e0:	f7fe fa9a 	bl	8002718 <_vfprintf_r>
 80041e4:	1e05      	subs	r5, r0, #0
 80041e6:	db07      	blt.n	80041f8 <__sbprintf+0x64>
 80041e8:	4630      	mov	r0, r6
 80041ea:	4669      	mov	r1, sp
 80041ec:	f001 f8d6 	bl	800539c <_fflush_r>
 80041f0:	2800      	cmp	r0, #0
 80041f2:	bf18      	it	ne
 80041f4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80041f8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80041fc:	065b      	lsls	r3, r3, #25
 80041fe:	d503      	bpl.n	8004208 <__sbprintf+0x74>
 8004200:	89a3      	ldrh	r3, [r4, #12]
 8004202:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004206:	81a3      	strh	r3, [r4, #12]
 8004208:	9816      	ldr	r0, [sp, #88]	; 0x58
 800420a:	f001 fc71 	bl	8005af0 <__retarget_lock_close_recursive>
 800420e:	4628      	mov	r0, r5
 8004210:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004214:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004218 <__swsetup_r>:
 8004218:	b538      	push	{r3, r4, r5, lr}
 800421a:	4b31      	ldr	r3, [pc, #196]	; (80042e0 <__swsetup_r+0xc8>)
 800421c:	681b      	ldr	r3, [r3, #0]
 800421e:	4605      	mov	r5, r0
 8004220:	460c      	mov	r4, r1
 8004222:	b113      	cbz	r3, 800422a <__swsetup_r+0x12>
 8004224:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004226:	2a00      	cmp	r2, #0
 8004228:	d03a      	beq.n	80042a0 <__swsetup_r+0x88>
 800422a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800422e:	b293      	uxth	r3, r2
 8004230:	0718      	lsls	r0, r3, #28
 8004232:	d50c      	bpl.n	800424e <__swsetup_r+0x36>
 8004234:	6920      	ldr	r0, [r4, #16]
 8004236:	b1a8      	cbz	r0, 8004264 <__swsetup_r+0x4c>
 8004238:	f013 0201 	ands.w	r2, r3, #1
 800423c:	d020      	beq.n	8004280 <__swsetup_r+0x68>
 800423e:	6963      	ldr	r3, [r4, #20]
 8004240:	2200      	movs	r2, #0
 8004242:	425b      	negs	r3, r3
 8004244:	61a3      	str	r3, [r4, #24]
 8004246:	60a2      	str	r2, [r4, #8]
 8004248:	b300      	cbz	r0, 800428c <__swsetup_r+0x74>
 800424a:	2000      	movs	r0, #0
 800424c:	bd38      	pop	{r3, r4, r5, pc}
 800424e:	06d9      	lsls	r1, r3, #27
 8004250:	d53e      	bpl.n	80042d0 <__swsetup_r+0xb8>
 8004252:	0758      	lsls	r0, r3, #29
 8004254:	d428      	bmi.n	80042a8 <__swsetup_r+0x90>
 8004256:	6920      	ldr	r0, [r4, #16]
 8004258:	f042 0308 	orr.w	r3, r2, #8
 800425c:	81a3      	strh	r3, [r4, #12]
 800425e:	b29b      	uxth	r3, r3
 8004260:	2800      	cmp	r0, #0
 8004262:	d1e9      	bne.n	8004238 <__swsetup_r+0x20>
 8004264:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004268:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800426c:	d0e4      	beq.n	8004238 <__swsetup_r+0x20>
 800426e:	4628      	mov	r0, r5
 8004270:	4621      	mov	r1, r4
 8004272:	f001 fc71 	bl	8005b58 <__smakebuf_r>
 8004276:	89a3      	ldrh	r3, [r4, #12]
 8004278:	6920      	ldr	r0, [r4, #16]
 800427a:	f013 0201 	ands.w	r2, r3, #1
 800427e:	d1de      	bne.n	800423e <__swsetup_r+0x26>
 8004280:	0799      	lsls	r1, r3, #30
 8004282:	bf58      	it	pl
 8004284:	6962      	ldrpl	r2, [r4, #20]
 8004286:	60a2      	str	r2, [r4, #8]
 8004288:	2800      	cmp	r0, #0
 800428a:	d1de      	bne.n	800424a <__swsetup_r+0x32>
 800428c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004290:	061a      	lsls	r2, r3, #24
 8004292:	d5db      	bpl.n	800424c <__swsetup_r+0x34>
 8004294:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004298:	81a3      	strh	r3, [r4, #12]
 800429a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800429e:	bd38      	pop	{r3, r4, r5, pc}
 80042a0:	4618      	mov	r0, r3
 80042a2:	f001 f8d7 	bl	8005454 <__sinit>
 80042a6:	e7c0      	b.n	800422a <__swsetup_r+0x12>
 80042a8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80042aa:	b151      	cbz	r1, 80042c2 <__swsetup_r+0xaa>
 80042ac:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80042b0:	4299      	cmp	r1, r3
 80042b2:	d004      	beq.n	80042be <__swsetup_r+0xa6>
 80042b4:	4628      	mov	r0, r5
 80042b6:	f001 f96f 	bl	8005598 <_free_r>
 80042ba:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80042be:	2300      	movs	r3, #0
 80042c0:	6323      	str	r3, [r4, #48]	; 0x30
 80042c2:	2300      	movs	r3, #0
 80042c4:	6920      	ldr	r0, [r4, #16]
 80042c6:	6063      	str	r3, [r4, #4]
 80042c8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80042cc:	6020      	str	r0, [r4, #0]
 80042ce:	e7c3      	b.n	8004258 <__swsetup_r+0x40>
 80042d0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80042d4:	2309      	movs	r3, #9
 80042d6:	602b      	str	r3, [r5, #0]
 80042d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80042dc:	81a2      	strh	r2, [r4, #12]
 80042de:	bd38      	pop	{r3, r4, r5, pc}
 80042e0:	20000080 	.word	0x20000080

080042e4 <register_fini>:
 80042e4:	4b02      	ldr	r3, [pc, #8]	; (80042f0 <register_fini+0xc>)
 80042e6:	b113      	cbz	r3, 80042ee <register_fini+0xa>
 80042e8:	4802      	ldr	r0, [pc, #8]	; (80042f4 <register_fini+0x10>)
 80042ea:	f000 b805 	b.w	80042f8 <atexit>
 80042ee:	4770      	bx	lr
 80042f0:	00000000 	.word	0x00000000
 80042f4:	080054c5 	.word	0x080054c5

080042f8 <atexit>:
 80042f8:	2300      	movs	r3, #0
 80042fa:	4601      	mov	r1, r0
 80042fc:	461a      	mov	r2, r3
 80042fe:	4618      	mov	r0, r3
 8004300:	f002 bd58 	b.w	8006db4 <__register_exitproc>

08004304 <quorem>:
 8004304:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004308:	6903      	ldr	r3, [r0, #16]
 800430a:	690f      	ldr	r7, [r1, #16]
 800430c:	42bb      	cmp	r3, r7
 800430e:	b083      	sub	sp, #12
 8004310:	f2c0 8086 	blt.w	8004420 <quorem+0x11c>
 8004314:	3f01      	subs	r7, #1
 8004316:	f101 0914 	add.w	r9, r1, #20
 800431a:	f100 0a14 	add.w	sl, r0, #20
 800431e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004322:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004326:	00bc      	lsls	r4, r7, #2
 8004328:	3201      	adds	r2, #1
 800432a:	fbb3 f8f2 	udiv	r8, r3, r2
 800432e:	eb0a 0304 	add.w	r3, sl, r4
 8004332:	9400      	str	r4, [sp, #0]
 8004334:	eb09 0b04 	add.w	fp, r9, r4
 8004338:	9301      	str	r3, [sp, #4]
 800433a:	f1b8 0f00 	cmp.w	r8, #0
 800433e:	d038      	beq.n	80043b2 <quorem+0xae>
 8004340:	2500      	movs	r5, #0
 8004342:	462e      	mov	r6, r5
 8004344:	46ce      	mov	lr, r9
 8004346:	46d4      	mov	ip, sl
 8004348:	f85e 4b04 	ldr.w	r4, [lr], #4
 800434c:	f8dc 3000 	ldr.w	r3, [ip]
 8004350:	b2a2      	uxth	r2, r4
 8004352:	fb08 5502 	mla	r5, r8, r2, r5
 8004356:	0c22      	lsrs	r2, r4, #16
 8004358:	0c2c      	lsrs	r4, r5, #16
 800435a:	fb08 4202 	mla	r2, r8, r2, r4
 800435e:	b2ad      	uxth	r5, r5
 8004360:	1b75      	subs	r5, r6, r5
 8004362:	b296      	uxth	r6, r2
 8004364:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004368:	fa15 f383 	uxtah	r3, r5, r3
 800436c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004370:	b29b      	uxth	r3, r3
 8004372:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004376:	45f3      	cmp	fp, lr
 8004378:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800437c:	f84c 3b04 	str.w	r3, [ip], #4
 8004380:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004384:	d2e0      	bcs.n	8004348 <quorem+0x44>
 8004386:	9b00      	ldr	r3, [sp, #0]
 8004388:	f85a 3003 	ldr.w	r3, [sl, r3]
 800438c:	b98b      	cbnz	r3, 80043b2 <quorem+0xae>
 800438e:	9a01      	ldr	r2, [sp, #4]
 8004390:	1f13      	subs	r3, r2, #4
 8004392:	459a      	cmp	sl, r3
 8004394:	d20c      	bcs.n	80043b0 <quorem+0xac>
 8004396:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800439a:	b94b      	cbnz	r3, 80043b0 <quorem+0xac>
 800439c:	f1a2 0308 	sub.w	r3, r2, #8
 80043a0:	e002      	b.n	80043a8 <quorem+0xa4>
 80043a2:	681a      	ldr	r2, [r3, #0]
 80043a4:	3b04      	subs	r3, #4
 80043a6:	b91a      	cbnz	r2, 80043b0 <quorem+0xac>
 80043a8:	459a      	cmp	sl, r3
 80043aa:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80043ae:	d3f8      	bcc.n	80043a2 <quorem+0x9e>
 80043b0:	6107      	str	r7, [r0, #16]
 80043b2:	4604      	mov	r4, r0
 80043b4:	f002 f944 	bl	8006640 <__mcmp>
 80043b8:	2800      	cmp	r0, #0
 80043ba:	db2d      	blt.n	8004418 <quorem+0x114>
 80043bc:	f108 0801 	add.w	r8, r8, #1
 80043c0:	4655      	mov	r5, sl
 80043c2:	2300      	movs	r3, #0
 80043c4:	f859 1b04 	ldr.w	r1, [r9], #4
 80043c8:	6828      	ldr	r0, [r5, #0]
 80043ca:	b28a      	uxth	r2, r1
 80043cc:	1a9a      	subs	r2, r3, r2
 80043ce:	0c0b      	lsrs	r3, r1, #16
 80043d0:	fa12 f280 	uxtah	r2, r2, r0
 80043d4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80043d8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80043dc:	b292      	uxth	r2, r2
 80043de:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80043e2:	45cb      	cmp	fp, r9
 80043e4:	f845 2b04 	str.w	r2, [r5], #4
 80043e8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80043ec:	d2ea      	bcs.n	80043c4 <quorem+0xc0>
 80043ee:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80043f2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80043f6:	b97a      	cbnz	r2, 8004418 <quorem+0x114>
 80043f8:	1f1a      	subs	r2, r3, #4
 80043fa:	4592      	cmp	sl, r2
 80043fc:	d20b      	bcs.n	8004416 <quorem+0x112>
 80043fe:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004402:	b942      	cbnz	r2, 8004416 <quorem+0x112>
 8004404:	3b08      	subs	r3, #8
 8004406:	e002      	b.n	800440e <quorem+0x10a>
 8004408:	681a      	ldr	r2, [r3, #0]
 800440a:	3b04      	subs	r3, #4
 800440c:	b91a      	cbnz	r2, 8004416 <quorem+0x112>
 800440e:	459a      	cmp	sl, r3
 8004410:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004414:	d3f8      	bcc.n	8004408 <quorem+0x104>
 8004416:	6127      	str	r7, [r4, #16]
 8004418:	4640      	mov	r0, r8
 800441a:	b003      	add	sp, #12
 800441c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004420:	2000      	movs	r0, #0
 8004422:	b003      	add	sp, #12
 8004424:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004428 <_dtoa_r>:
 8004428:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800442c:	ec55 4b10 	vmov	r4, r5, d0
 8004430:	b09b      	sub	sp, #108	; 0x6c
 8004432:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004434:	9102      	str	r1, [sp, #8]
 8004436:	4681      	mov	r9, r0
 8004438:	9207      	str	r2, [sp, #28]
 800443a:	9305      	str	r3, [sp, #20]
 800443c:	e9cd 4500 	strd	r4, r5, [sp]
 8004440:	b156      	cbz	r6, 8004458 <_dtoa_r+0x30>
 8004442:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004444:	6072      	str	r2, [r6, #4]
 8004446:	2301      	movs	r3, #1
 8004448:	4093      	lsls	r3, r2
 800444a:	60b3      	str	r3, [r6, #8]
 800444c:	4631      	mov	r1, r6
 800444e:	f001 ff07 	bl	8006260 <_Bfree>
 8004452:	2300      	movs	r3, #0
 8004454:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004458:	f1b5 0800 	subs.w	r8, r5, #0
 800445c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800445e:	bfb4      	ite	lt
 8004460:	2301      	movlt	r3, #1
 8004462:	2300      	movge	r3, #0
 8004464:	6013      	str	r3, [r2, #0]
 8004466:	4b76      	ldr	r3, [pc, #472]	; (8004640 <_dtoa_r+0x218>)
 8004468:	bfbc      	itt	lt
 800446a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800446e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004472:	ea33 0308 	bics.w	r3, r3, r8
 8004476:	f000 80a6 	beq.w	80045c6 <_dtoa_r+0x19e>
 800447a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800447e:	2200      	movs	r2, #0
 8004480:	2300      	movs	r3, #0
 8004482:	4630      	mov	r0, r6
 8004484:	4639      	mov	r1, r7
 8004486:	f7fc fdbf 	bl	8001008 <__aeabi_dcmpeq>
 800448a:	4605      	mov	r5, r0
 800448c:	b178      	cbz	r0, 80044ae <_dtoa_r+0x86>
 800448e:	9a05      	ldr	r2, [sp, #20]
 8004490:	2301      	movs	r3, #1
 8004492:	6013      	str	r3, [r2, #0]
 8004494:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004496:	2b00      	cmp	r3, #0
 8004498:	f000 80c0 	beq.w	800461c <_dtoa_r+0x1f4>
 800449c:	4b69      	ldr	r3, [pc, #420]	; (8004644 <_dtoa_r+0x21c>)
 800449e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80044a0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80044a4:	6013      	str	r3, [r2, #0]
 80044a6:	4658      	mov	r0, fp
 80044a8:	b01b      	add	sp, #108	; 0x6c
 80044aa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80044ae:	aa18      	add	r2, sp, #96	; 0x60
 80044b0:	a919      	add	r1, sp, #100	; 0x64
 80044b2:	ec47 6b10 	vmov	d0, r6, r7
 80044b6:	4648      	mov	r0, r9
 80044b8:	f002 f954 	bl	8006764 <__d2b>
 80044bc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80044c0:	4682      	mov	sl, r0
 80044c2:	f040 80a0 	bne.w	8004606 <_dtoa_r+0x1de>
 80044c6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80044ca:	442c      	add	r4, r5
 80044cc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80044d0:	2b20      	cmp	r3, #32
 80044d2:	f340 842c 	ble.w	8004d2e <_dtoa_r+0x906>
 80044d6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80044da:	fa08 f803 	lsl.w	r8, r8, r3
 80044de:	9b00      	ldr	r3, [sp, #0]
 80044e0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80044e4:	fa23 f000 	lsr.w	r0, r3, r0
 80044e8:	ea48 0000 	orr.w	r0, r8, r0
 80044ec:	f7fc faaa 	bl	8000a44 <__aeabi_ui2d>
 80044f0:	2301      	movs	r3, #1
 80044f2:	4606      	mov	r6, r0
 80044f4:	3c01      	subs	r4, #1
 80044f6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80044fa:	930f      	str	r3, [sp, #60]	; 0x3c
 80044fc:	4630      	mov	r0, r6
 80044fe:	4639      	mov	r1, r7
 8004500:	2200      	movs	r2, #0
 8004502:	4b51      	ldr	r3, [pc, #324]	; (8004648 <_dtoa_r+0x220>)
 8004504:	f7fc f960 	bl	80007c8 <__aeabi_dsub>
 8004508:	a347      	add	r3, pc, #284	; (adr r3, 8004628 <_dtoa_r+0x200>)
 800450a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800450e:	f7fc fb13 	bl	8000b38 <__aeabi_dmul>
 8004512:	a347      	add	r3, pc, #284	; (adr r3, 8004630 <_dtoa_r+0x208>)
 8004514:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004518:	f7fc f958 	bl	80007cc <__adddf3>
 800451c:	4606      	mov	r6, r0
 800451e:	4620      	mov	r0, r4
 8004520:	460f      	mov	r7, r1
 8004522:	f7fc fa9f 	bl	8000a64 <__aeabi_i2d>
 8004526:	a344      	add	r3, pc, #272	; (adr r3, 8004638 <_dtoa_r+0x210>)
 8004528:	e9d3 2300 	ldrd	r2, r3, [r3]
 800452c:	f7fc fb04 	bl	8000b38 <__aeabi_dmul>
 8004530:	4602      	mov	r2, r0
 8004532:	460b      	mov	r3, r1
 8004534:	4630      	mov	r0, r6
 8004536:	4639      	mov	r1, r7
 8004538:	f7fc f948 	bl	80007cc <__adddf3>
 800453c:	4606      	mov	r6, r0
 800453e:	460f      	mov	r7, r1
 8004540:	f7fc fdaa 	bl	8001098 <__aeabi_d2iz>
 8004544:	2200      	movs	r2, #0
 8004546:	9006      	str	r0, [sp, #24]
 8004548:	2300      	movs	r3, #0
 800454a:	4630      	mov	r0, r6
 800454c:	4639      	mov	r1, r7
 800454e:	f7fc fd65 	bl	800101c <__aeabi_dcmplt>
 8004552:	2800      	cmp	r0, #0
 8004554:	f040 8273 	bne.w	8004a3e <_dtoa_r+0x616>
 8004558:	9e06      	ldr	r6, [sp, #24]
 800455a:	2e16      	cmp	r6, #22
 800455c:	f200 825d 	bhi.w	8004a1a <_dtoa_r+0x5f2>
 8004560:	4b3a      	ldr	r3, [pc, #232]	; (800464c <_dtoa_r+0x224>)
 8004562:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004566:	e9d3 0100 	ldrd	r0, r1, [r3]
 800456a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800456e:	f7fc fd73 	bl	8001058 <__aeabi_dcmpgt>
 8004572:	2800      	cmp	r0, #0
 8004574:	f000 83d7 	beq.w	8004d26 <_dtoa_r+0x8fe>
 8004578:	1e73      	subs	r3, r6, #1
 800457a:	9306      	str	r3, [sp, #24]
 800457c:	2300      	movs	r3, #0
 800457e:	930d      	str	r3, [sp, #52]	; 0x34
 8004580:	1b2c      	subs	r4, r5, r4
 8004582:	f1b4 0801 	subs.w	r8, r4, #1
 8004586:	f100 8254 	bmi.w	8004a32 <_dtoa_r+0x60a>
 800458a:	2300      	movs	r3, #0
 800458c:	9308      	str	r3, [sp, #32]
 800458e:	9b06      	ldr	r3, [sp, #24]
 8004590:	2b00      	cmp	r3, #0
 8004592:	f2c0 8245 	blt.w	8004a20 <_dtoa_r+0x5f8>
 8004596:	4498      	add	r8, r3
 8004598:	930c      	str	r3, [sp, #48]	; 0x30
 800459a:	2300      	movs	r3, #0
 800459c:	930b      	str	r3, [sp, #44]	; 0x2c
 800459e:	9b02      	ldr	r3, [sp, #8]
 80045a0:	2b09      	cmp	r3, #9
 80045a2:	d85b      	bhi.n	800465c <_dtoa_r+0x234>
 80045a4:	2b05      	cmp	r3, #5
 80045a6:	f340 83c0 	ble.w	8004d2a <_dtoa_r+0x902>
 80045aa:	3b04      	subs	r3, #4
 80045ac:	9302      	str	r3, [sp, #8]
 80045ae:	2500      	movs	r5, #0
 80045b0:	9b02      	ldr	r3, [sp, #8]
 80045b2:	3b02      	subs	r3, #2
 80045b4:	2b03      	cmp	r3, #3
 80045b6:	f200 8498 	bhi.w	8004eea <_dtoa_r+0xac2>
 80045ba:	e8df f013 	tbh	[pc, r3, lsl #1]
 80045be:	03df      	.short	0x03df
 80045c0:	03e803bf 	.word	0x03e803bf
 80045c4:	04f5      	.short	0x04f5
 80045c6:	9a05      	ldr	r2, [sp, #20]
 80045c8:	f242 730f 	movw	r3, #9999	; 0x270f
 80045cc:	6013      	str	r3, [r2, #0]
 80045ce:	9b00      	ldr	r3, [sp, #0]
 80045d0:	b983      	cbnz	r3, 80045f4 <_dtoa_r+0x1cc>
 80045d2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80045d6:	b96b      	cbnz	r3, 80045f4 <_dtoa_r+0x1cc>
 80045d8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80045da:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004650 <_dtoa_r+0x228>
 80045de:	2b00      	cmp	r3, #0
 80045e0:	f43f af61 	beq.w	80044a6 <_dtoa_r+0x7e>
 80045e4:	f10b 0308 	add.w	r3, fp, #8
 80045e8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80045ea:	4658      	mov	r0, fp
 80045ec:	6013      	str	r3, [r2, #0]
 80045ee:	b01b      	add	sp, #108	; 0x6c
 80045f0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80045f4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80045f6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004654 <_dtoa_r+0x22c>
 80045fa:	2b00      	cmp	r3, #0
 80045fc:	f43f af53 	beq.w	80044a6 <_dtoa_r+0x7e>
 8004600:	f10b 0303 	add.w	r3, fp, #3
 8004604:	e7f0      	b.n	80045e8 <_dtoa_r+0x1c0>
 8004606:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800460a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800460e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004610:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004614:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004618:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800461a:	e76f      	b.n	80044fc <_dtoa_r+0xd4>
 800461c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004658 <_dtoa_r+0x230>
 8004620:	4658      	mov	r0, fp
 8004622:	b01b      	add	sp, #108	; 0x6c
 8004624:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004628:	636f4361 	.word	0x636f4361
 800462c:	3fd287a7 	.word	0x3fd287a7
 8004630:	8b60c8b3 	.word	0x8b60c8b3
 8004634:	3fc68a28 	.word	0x3fc68a28
 8004638:	509f79fb 	.word	0x509f79fb
 800463c:	3fd34413 	.word	0x3fd34413
 8004640:	7ff00000 	.word	0x7ff00000
 8004644:	0800745d 	.word	0x0800745d
 8004648:	3ff80000 	.word	0x3ff80000
 800464c:	080074b8 	.word	0x080074b8
 8004650:	08007480 	.word	0x08007480
 8004654:	0800748c 	.word	0x0800748c
 8004658:	0800745c 	.word	0x0800745c
 800465c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004660:	2501      	movs	r5, #1
 8004662:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004666:	2300      	movs	r3, #0
 8004668:	9302      	str	r3, [sp, #8]
 800466a:	9307      	str	r3, [sp, #28]
 800466c:	2100      	movs	r1, #0
 800466e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004672:	940e      	str	r4, [sp, #56]	; 0x38
 8004674:	4648      	mov	r0, r9
 8004676:	f001 fdcd 	bl	8006214 <_Balloc>
 800467a:	2c0e      	cmp	r4, #14
 800467c:	4683      	mov	fp, r0
 800467e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004682:	f200 80fb 	bhi.w	800487c <_dtoa_r+0x454>
 8004686:	2d00      	cmp	r5, #0
 8004688:	f000 80f8 	beq.w	800487c <_dtoa_r+0x454>
 800468c:	ed9d 7b00 	vldr	d7, [sp]
 8004690:	9906      	ldr	r1, [sp, #24]
 8004692:	2900      	cmp	r1, #0
 8004694:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8004698:	f340 83e5 	ble.w	8004e66 <_dtoa_r+0xa3e>
 800469c:	4b9d      	ldr	r3, [pc, #628]	; (8004914 <_dtoa_r+0x4ec>)
 800469e:	f001 020f 	and.w	r2, r1, #15
 80046a2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80046a6:	ed93 7b00 	vldr	d7, [r3]
 80046aa:	110c      	asrs	r4, r1, #4
 80046ac:	06e2      	lsls	r2, r4, #27
 80046ae:	ed8d 7b00 	vstr	d7, [sp]
 80046b2:	f140 849e 	bpl.w	8004ff2 <_dtoa_r+0xbca>
 80046b6:	4b98      	ldr	r3, [pc, #608]	; (8004918 <_dtoa_r+0x4f0>)
 80046b8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80046bc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80046c0:	f7fc fb64 	bl	8000d8c <__aeabi_ddiv>
 80046c4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80046c8:	f004 040f 	and.w	r4, r4, #15
 80046cc:	2603      	movs	r6, #3
 80046ce:	b17c      	cbz	r4, 80046f0 <_dtoa_r+0x2c8>
 80046d0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80046d4:	4d90      	ldr	r5, [pc, #576]	; (8004918 <_dtoa_r+0x4f0>)
 80046d6:	07e3      	lsls	r3, r4, #31
 80046d8:	d504      	bpl.n	80046e4 <_dtoa_r+0x2bc>
 80046da:	e9d5 2300 	ldrd	r2, r3, [r5]
 80046de:	f7fc fa2b 	bl	8000b38 <__aeabi_dmul>
 80046e2:	3601      	adds	r6, #1
 80046e4:	1064      	asrs	r4, r4, #1
 80046e6:	f105 0508 	add.w	r5, r5, #8
 80046ea:	d1f4      	bne.n	80046d6 <_dtoa_r+0x2ae>
 80046ec:	e9cd 0100 	strd	r0, r1, [sp]
 80046f0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80046f4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80046f8:	f7fc fb48 	bl	8000d8c <__aeabi_ddiv>
 80046fc:	e9cd 0100 	strd	r0, r1, [sp]
 8004700:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004702:	b143      	cbz	r3, 8004716 <_dtoa_r+0x2ee>
 8004704:	2200      	movs	r2, #0
 8004706:	4b85      	ldr	r3, [pc, #532]	; (800491c <_dtoa_r+0x4f4>)
 8004708:	e9dd 0100 	ldrd	r0, r1, [sp]
 800470c:	f7fc fc86 	bl	800101c <__aeabi_dcmplt>
 8004710:	2800      	cmp	r0, #0
 8004712:	f040 84ff 	bne.w	8005114 <_dtoa_r+0xcec>
 8004716:	4630      	mov	r0, r6
 8004718:	f7fc f9a4 	bl	8000a64 <__aeabi_i2d>
 800471c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004720:	f7fc fa0a 	bl	8000b38 <__aeabi_dmul>
 8004724:	4b7e      	ldr	r3, [pc, #504]	; (8004920 <_dtoa_r+0x4f8>)
 8004726:	2200      	movs	r2, #0
 8004728:	f7fc f850 	bl	80007cc <__adddf3>
 800472c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800472e:	4606      	mov	r6, r0
 8004730:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004734:	2b00      	cmp	r3, #0
 8004736:	f000 841c 	beq.w	8004f72 <_dtoa_r+0xb4a>
 800473a:	9b06      	ldr	r3, [sp, #24]
 800473c:	9316      	str	r3, [sp, #88]	; 0x58
 800473e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004740:	9312      	str	r3, [sp, #72]	; 0x48
 8004742:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004746:	f7fc fca7 	bl	8001098 <__aeabi_d2iz>
 800474a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800474c:	4b71      	ldr	r3, [pc, #452]	; (8004914 <_dtoa_r+0x4ec>)
 800474e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004752:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004756:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800475a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800475e:	f7fc f981 	bl	8000a64 <__aeabi_i2d>
 8004762:	460b      	mov	r3, r1
 8004764:	4602      	mov	r2, r0
 8004766:	e9dd 0100 	ldrd	r0, r1, [sp]
 800476a:	e9cd 6700 	strd	r6, r7, [sp]
 800476e:	f7fc f82b 	bl	80007c8 <__aeabi_dsub>
 8004772:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004774:	b2ed      	uxtb	r5, r5
 8004776:	4606      	mov	r6, r0
 8004778:	460f      	mov	r7, r1
 800477a:	f10b 0401 	add.w	r4, fp, #1
 800477e:	2b00      	cmp	r3, #0
 8004780:	f000 8458 	beq.w	8005034 <_dtoa_r+0xc0c>
 8004784:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004788:	2000      	movs	r0, #0
 800478a:	4966      	ldr	r1, [pc, #408]	; (8004924 <_dtoa_r+0x4fc>)
 800478c:	f7fc fafe 	bl	8000d8c <__aeabi_ddiv>
 8004790:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004794:	f7fc f818 	bl	80007c8 <__aeabi_dsub>
 8004798:	f88b 5000 	strb.w	r5, [fp]
 800479c:	4632      	mov	r2, r6
 800479e:	463b      	mov	r3, r7
 80047a0:	e9cd 0100 	strd	r0, r1, [sp]
 80047a4:	f7fc fc58 	bl	8001058 <__aeabi_dcmpgt>
 80047a8:	2800      	cmp	r0, #0
 80047aa:	f040 8502 	bne.w	80051b2 <_dtoa_r+0xd8a>
 80047ae:	4632      	mov	r2, r6
 80047b0:	463b      	mov	r3, r7
 80047b2:	2000      	movs	r0, #0
 80047b4:	4959      	ldr	r1, [pc, #356]	; (800491c <_dtoa_r+0x4f4>)
 80047b6:	f7fc f807 	bl	80007c8 <__aeabi_dsub>
 80047ba:	4602      	mov	r2, r0
 80047bc:	460b      	mov	r3, r1
 80047be:	e9dd 0100 	ldrd	r0, r1, [sp]
 80047c2:	f7fc fc49 	bl	8001058 <__aeabi_dcmpgt>
 80047c6:	2800      	cmp	r0, #0
 80047c8:	f040 84fb 	bne.w	80051c2 <_dtoa_r+0xd9a>
 80047cc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80047ce:	2a01      	cmp	r2, #1
 80047d0:	d050      	beq.n	8004874 <_dtoa_r+0x44c>
 80047d2:	445a      	add	r2, fp
 80047d4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80047d8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80047dc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80047e0:	4692      	mov	sl, r2
 80047e2:	46cb      	mov	fp, r9
 80047e4:	e9dd 8900 	ldrd	r8, r9, [sp]
 80047e8:	e00c      	b.n	8004804 <_dtoa_r+0x3dc>
 80047ea:	2000      	movs	r0, #0
 80047ec:	494b      	ldr	r1, [pc, #300]	; (800491c <_dtoa_r+0x4f4>)
 80047ee:	f7fb ffeb 	bl	80007c8 <__aeabi_dsub>
 80047f2:	4642      	mov	r2, r8
 80047f4:	464b      	mov	r3, r9
 80047f6:	f7fc fc11 	bl	800101c <__aeabi_dcmplt>
 80047fa:	2800      	cmp	r0, #0
 80047fc:	f040 84dc 	bne.w	80051b8 <_dtoa_r+0xd90>
 8004800:	4554      	cmp	r4, sl
 8004802:	d030      	beq.n	8004866 <_dtoa_r+0x43e>
 8004804:	4640      	mov	r0, r8
 8004806:	4649      	mov	r1, r9
 8004808:	2200      	movs	r2, #0
 800480a:	4b47      	ldr	r3, [pc, #284]	; (8004928 <_dtoa_r+0x500>)
 800480c:	f7fc f994 	bl	8000b38 <__aeabi_dmul>
 8004810:	2200      	movs	r2, #0
 8004812:	4b45      	ldr	r3, [pc, #276]	; (8004928 <_dtoa_r+0x500>)
 8004814:	4680      	mov	r8, r0
 8004816:	4689      	mov	r9, r1
 8004818:	4630      	mov	r0, r6
 800481a:	4639      	mov	r1, r7
 800481c:	f7fc f98c 	bl	8000b38 <__aeabi_dmul>
 8004820:	460f      	mov	r7, r1
 8004822:	4606      	mov	r6, r0
 8004824:	f7fc fc38 	bl	8001098 <__aeabi_d2iz>
 8004828:	4605      	mov	r5, r0
 800482a:	f7fc f91b 	bl	8000a64 <__aeabi_i2d>
 800482e:	4602      	mov	r2, r0
 8004830:	460b      	mov	r3, r1
 8004832:	4630      	mov	r0, r6
 8004834:	4639      	mov	r1, r7
 8004836:	f7fb ffc7 	bl	80007c8 <__aeabi_dsub>
 800483a:	3530      	adds	r5, #48	; 0x30
 800483c:	b2ed      	uxtb	r5, r5
 800483e:	4642      	mov	r2, r8
 8004840:	464b      	mov	r3, r9
 8004842:	f804 5b01 	strb.w	r5, [r4], #1
 8004846:	4606      	mov	r6, r0
 8004848:	460f      	mov	r7, r1
 800484a:	f7fc fbe7 	bl	800101c <__aeabi_dcmplt>
 800484e:	4632      	mov	r2, r6
 8004850:	463b      	mov	r3, r7
 8004852:	2800      	cmp	r0, #0
 8004854:	d0c9      	beq.n	80047ea <_dtoa_r+0x3c2>
 8004856:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004858:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800485c:	9306      	str	r3, [sp, #24]
 800485e:	46d9      	mov	r9, fp
 8004860:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004864:	e236      	b.n	8004cd4 <_dtoa_r+0x8ac>
 8004866:	46d9      	mov	r9, fp
 8004868:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800486c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004870:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004874:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004878:	e9cd 3400 	strd	r3, r4, [sp]
 800487c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800487e:	2b00      	cmp	r3, #0
 8004880:	f2c0 80ae 	blt.w	80049e0 <_dtoa_r+0x5b8>
 8004884:	9a06      	ldr	r2, [sp, #24]
 8004886:	2a0e      	cmp	r2, #14
 8004888:	f300 80aa 	bgt.w	80049e0 <_dtoa_r+0x5b8>
 800488c:	4b21      	ldr	r3, [pc, #132]	; (8004914 <_dtoa_r+0x4ec>)
 800488e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004892:	ed93 7b00 	vldr	d7, [r3]
 8004896:	9b07      	ldr	r3, [sp, #28]
 8004898:	2b00      	cmp	r3, #0
 800489a:	ed8d 7b02 	vstr	d7, [sp, #8]
 800489e:	f2c0 82be 	blt.w	8004e1e <_dtoa_r+0x9f6>
 80048a2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80048a6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048aa:	4630      	mov	r0, r6
 80048ac:	4639      	mov	r1, r7
 80048ae:	f7fc fa6d 	bl	8000d8c <__aeabi_ddiv>
 80048b2:	f7fc fbf1 	bl	8001098 <__aeabi_d2iz>
 80048b6:	4605      	mov	r5, r0
 80048b8:	f7fc f8d4 	bl	8000a64 <__aeabi_i2d>
 80048bc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048c0:	f7fc f93a 	bl	8000b38 <__aeabi_dmul>
 80048c4:	460b      	mov	r3, r1
 80048c6:	4602      	mov	r2, r0
 80048c8:	4639      	mov	r1, r7
 80048ca:	4630      	mov	r0, r6
 80048cc:	f7fb ff7c 	bl	80007c8 <__aeabi_dsub>
 80048d0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80048d4:	f88b 3000 	strb.w	r3, [fp]
 80048d8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80048da:	2b01      	cmp	r3, #1
 80048dc:	4606      	mov	r6, r0
 80048de:	460f      	mov	r7, r1
 80048e0:	f10b 0401 	add.w	r4, fp, #1
 80048e4:	d053      	beq.n	800498e <_dtoa_r+0x566>
 80048e6:	2200      	movs	r2, #0
 80048e8:	4b0f      	ldr	r3, [pc, #60]	; (8004928 <_dtoa_r+0x500>)
 80048ea:	f7fc f925 	bl	8000b38 <__aeabi_dmul>
 80048ee:	2200      	movs	r2, #0
 80048f0:	2300      	movs	r3, #0
 80048f2:	4606      	mov	r6, r0
 80048f4:	460f      	mov	r7, r1
 80048f6:	f7fc fb87 	bl	8001008 <__aeabi_dcmpeq>
 80048fa:	2800      	cmp	r0, #0
 80048fc:	f040 81ea 	bne.w	8004cd4 <_dtoa_r+0x8ac>
 8004900:	f8cd a000 	str.w	sl, [sp]
 8004904:	f8cd 901c 	str.w	r9, [sp, #28]
 8004908:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 800490c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004910:	e017      	b.n	8004942 <_dtoa_r+0x51a>
 8004912:	bf00      	nop
 8004914:	080074b8 	.word	0x080074b8
 8004918:	08007490 	.word	0x08007490
 800491c:	3ff00000 	.word	0x3ff00000
 8004920:	401c0000 	.word	0x401c0000
 8004924:	3fe00000 	.word	0x3fe00000
 8004928:	40240000 	.word	0x40240000
 800492c:	f7fc f904 	bl	8000b38 <__aeabi_dmul>
 8004930:	2200      	movs	r2, #0
 8004932:	2300      	movs	r3, #0
 8004934:	4606      	mov	r6, r0
 8004936:	460f      	mov	r7, r1
 8004938:	f7fc fb66 	bl	8001008 <__aeabi_dcmpeq>
 800493c:	2800      	cmp	r0, #0
 800493e:	f040 833d 	bne.w	8004fbc <_dtoa_r+0xb94>
 8004942:	464a      	mov	r2, r9
 8004944:	4653      	mov	r3, sl
 8004946:	4630      	mov	r0, r6
 8004948:	4639      	mov	r1, r7
 800494a:	f7fc fa1f 	bl	8000d8c <__aeabi_ddiv>
 800494e:	f7fc fba3 	bl	8001098 <__aeabi_d2iz>
 8004952:	4605      	mov	r5, r0
 8004954:	f7fc f886 	bl	8000a64 <__aeabi_i2d>
 8004958:	464a      	mov	r2, r9
 800495a:	4653      	mov	r3, sl
 800495c:	f7fc f8ec 	bl	8000b38 <__aeabi_dmul>
 8004960:	4602      	mov	r2, r0
 8004962:	460b      	mov	r3, r1
 8004964:	4630      	mov	r0, r6
 8004966:	4639      	mov	r1, r7
 8004968:	f7fb ff2e 	bl	80007c8 <__aeabi_dsub>
 800496c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004970:	f804 cb01 	strb.w	ip, [r4], #1
 8004974:	eba4 0c0b 	sub.w	ip, r4, fp
 8004978:	45e0      	cmp	r8, ip
 800497a:	4606      	mov	r6, r0
 800497c:	460f      	mov	r7, r1
 800497e:	f04f 0200 	mov.w	r2, #0
 8004982:	4bc1      	ldr	r3, [pc, #772]	; (8004c88 <_dtoa_r+0x860>)
 8004984:	d1d2      	bne.n	800492c <_dtoa_r+0x504>
 8004986:	f8dd a000 	ldr.w	sl, [sp]
 800498a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800498e:	4632      	mov	r2, r6
 8004990:	463b      	mov	r3, r7
 8004992:	4630      	mov	r0, r6
 8004994:	4639      	mov	r1, r7
 8004996:	f7fb ff19 	bl	80007cc <__adddf3>
 800499a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 800499e:	4606      	mov	r6, r0
 80049a0:	460f      	mov	r7, r1
 80049a2:	f7fc fb59 	bl	8001058 <__aeabi_dcmpgt>
 80049a6:	b958      	cbnz	r0, 80049c0 <_dtoa_r+0x598>
 80049a8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80049ac:	4630      	mov	r0, r6
 80049ae:	4639      	mov	r1, r7
 80049b0:	f7fc fb2a 	bl	8001008 <__aeabi_dcmpeq>
 80049b4:	2800      	cmp	r0, #0
 80049b6:	f000 818d 	beq.w	8004cd4 <_dtoa_r+0x8ac>
 80049ba:	07e9      	lsls	r1, r5, #31
 80049bc:	f140 818a 	bpl.w	8004cd4 <_dtoa_r+0x8ac>
 80049c0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80049c4:	e005      	b.n	80049d2 <_dtoa_r+0x5aa>
 80049c6:	459b      	cmp	fp, r3
 80049c8:	f000 8373 	beq.w	80050b2 <_dtoa_r+0xc8a>
 80049cc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 80049d0:	461c      	mov	r4, r3
 80049d2:	2d39      	cmp	r5, #57	; 0x39
 80049d4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80049d8:	d0f5      	beq.n	80049c6 <_dtoa_r+0x59e>
 80049da:	3501      	adds	r5, #1
 80049dc:	701d      	strb	r5, [r3, #0]
 80049de:	e179      	b.n	8004cd4 <_dtoa_r+0x8ac>
 80049e0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80049e2:	2a00      	cmp	r2, #0
 80049e4:	d03b      	beq.n	8004a5e <_dtoa_r+0x636>
 80049e6:	9a02      	ldr	r2, [sp, #8]
 80049e8:	2a01      	cmp	r2, #1
 80049ea:	f340 820b 	ble.w	8004e04 <_dtoa_r+0x9dc>
 80049ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049f0:	1e5f      	subs	r7, r3, #1
 80049f2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80049f4:	42bb      	cmp	r3, r7
 80049f6:	f2c0 82e6 	blt.w	8004fc6 <_dtoa_r+0xb9e>
 80049fa:	1bdf      	subs	r7, r3, r7
 80049fc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049fe:	2b00      	cmp	r3, #0
 8004a00:	f2c0 830b 	blt.w	800501a <_dtoa_r+0xbf2>
 8004a04:	9a08      	ldr	r2, [sp, #32]
 8004a06:	4614      	mov	r4, r2
 8004a08:	441a      	add	r2, r3
 8004a0a:	4498      	add	r8, r3
 8004a0c:	9208      	str	r2, [sp, #32]
 8004a0e:	2101      	movs	r1, #1
 8004a10:	4648      	mov	r0, r9
 8004a12:	f001 fcbf 	bl	8006394 <__i2b>
 8004a16:	4605      	mov	r5, r0
 8004a18:	e024      	b.n	8004a64 <_dtoa_r+0x63c>
 8004a1a:	2301      	movs	r3, #1
 8004a1c:	930d      	str	r3, [sp, #52]	; 0x34
 8004a1e:	e5af      	b.n	8004580 <_dtoa_r+0x158>
 8004a20:	9a08      	ldr	r2, [sp, #32]
 8004a22:	9b06      	ldr	r3, [sp, #24]
 8004a24:	1ad2      	subs	r2, r2, r3
 8004a26:	425b      	negs	r3, r3
 8004a28:	930b      	str	r3, [sp, #44]	; 0x2c
 8004a2a:	2300      	movs	r3, #0
 8004a2c:	9208      	str	r2, [sp, #32]
 8004a2e:	930c      	str	r3, [sp, #48]	; 0x30
 8004a30:	e5b5      	b.n	800459e <_dtoa_r+0x176>
 8004a32:	f1c4 0301 	rsb	r3, r4, #1
 8004a36:	9308      	str	r3, [sp, #32]
 8004a38:	f04f 0800 	mov.w	r8, #0
 8004a3c:	e5a7      	b.n	800458e <_dtoa_r+0x166>
 8004a3e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004a42:	4640      	mov	r0, r8
 8004a44:	f7fc f80e 	bl	8000a64 <__aeabi_i2d>
 8004a48:	4632      	mov	r2, r6
 8004a4a:	463b      	mov	r3, r7
 8004a4c:	f7fc fadc 	bl	8001008 <__aeabi_dcmpeq>
 8004a50:	2800      	cmp	r0, #0
 8004a52:	f47f ad81 	bne.w	8004558 <_dtoa_r+0x130>
 8004a56:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004a5a:	9306      	str	r3, [sp, #24]
 8004a5c:	e57c      	b.n	8004558 <_dtoa_r+0x130>
 8004a5e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004a60:	9c08      	ldr	r4, [sp, #32]
 8004a62:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004a64:	2c00      	cmp	r4, #0
 8004a66:	dd0c      	ble.n	8004a82 <_dtoa_r+0x65a>
 8004a68:	f1b8 0f00 	cmp.w	r8, #0
 8004a6c:	dd09      	ble.n	8004a82 <_dtoa_r+0x65a>
 8004a6e:	4544      	cmp	r4, r8
 8004a70:	9a08      	ldr	r2, [sp, #32]
 8004a72:	4623      	mov	r3, r4
 8004a74:	bfa8      	it	ge
 8004a76:	4643      	movge	r3, r8
 8004a78:	1ad2      	subs	r2, r2, r3
 8004a7a:	9208      	str	r2, [sp, #32]
 8004a7c:	1ae4      	subs	r4, r4, r3
 8004a7e:	eba8 0803 	sub.w	r8, r8, r3
 8004a82:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004a84:	b16b      	cbz	r3, 8004aa2 <_dtoa_r+0x67a>
 8004a86:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004a88:	2a00      	cmp	r2, #0
 8004a8a:	f000 8290 	beq.w	8004fae <_dtoa_r+0xb86>
 8004a8e:	1bde      	subs	r6, r3, r7
 8004a90:	2f00      	cmp	r7, #0
 8004a92:	f040 819b 	bne.w	8004dcc <_dtoa_r+0x9a4>
 8004a96:	4651      	mov	r1, sl
 8004a98:	4632      	mov	r2, r6
 8004a9a:	4648      	mov	r0, r9
 8004a9c:	f001 fd2a 	bl	80064f4 <__pow5mult>
 8004aa0:	4682      	mov	sl, r0
 8004aa2:	2101      	movs	r1, #1
 8004aa4:	4648      	mov	r0, r9
 8004aa6:	f001 fc75 	bl	8006394 <__i2b>
 8004aaa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004aac:	4606      	mov	r6, r0
 8004aae:	2a00      	cmp	r2, #0
 8004ab0:	f040 8125 	bne.w	8004cfe <_dtoa_r+0x8d6>
 8004ab4:	9b02      	ldr	r3, [sp, #8]
 8004ab6:	2b01      	cmp	r3, #1
 8004ab8:	f340 816c 	ble.w	8004d94 <_dtoa_r+0x96c>
 8004abc:	2001      	movs	r0, #1
 8004abe:	4440      	add	r0, r8
 8004ac0:	f010 001f 	ands.w	r0, r0, #31
 8004ac4:	f000 8119 	beq.w	8004cfa <_dtoa_r+0x8d2>
 8004ac8:	f1c0 0320 	rsb	r3, r0, #32
 8004acc:	2b04      	cmp	r3, #4
 8004ace:	f340 83ac 	ble.w	800522a <_dtoa_r+0xe02>
 8004ad2:	f1c0 001c 	rsb	r0, r0, #28
 8004ad6:	9b08      	ldr	r3, [sp, #32]
 8004ad8:	4403      	add	r3, r0
 8004ada:	9308      	str	r3, [sp, #32]
 8004adc:	4404      	add	r4, r0
 8004ade:	4480      	add	r8, r0
 8004ae0:	9b08      	ldr	r3, [sp, #32]
 8004ae2:	2b00      	cmp	r3, #0
 8004ae4:	dd05      	ble.n	8004af2 <_dtoa_r+0x6ca>
 8004ae6:	4651      	mov	r1, sl
 8004ae8:	461a      	mov	r2, r3
 8004aea:	4648      	mov	r0, r9
 8004aec:	f001 fd52 	bl	8006594 <__lshift>
 8004af0:	4682      	mov	sl, r0
 8004af2:	f1b8 0f00 	cmp.w	r8, #0
 8004af6:	dd05      	ble.n	8004b04 <_dtoa_r+0x6dc>
 8004af8:	4631      	mov	r1, r6
 8004afa:	4642      	mov	r2, r8
 8004afc:	4648      	mov	r0, r9
 8004afe:	f001 fd49 	bl	8006594 <__lshift>
 8004b02:	4606      	mov	r6, r0
 8004b04:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004b06:	2b00      	cmp	r3, #0
 8004b08:	d177      	bne.n	8004bfa <_dtoa_r+0x7d2>
 8004b0a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b0c:	2b00      	cmp	r3, #0
 8004b0e:	f340 8209 	ble.w	8004f24 <_dtoa_r+0xafc>
 8004b12:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b14:	2b00      	cmp	r3, #0
 8004b16:	f000 8089 	beq.w	8004c2c <_dtoa_r+0x804>
 8004b1a:	2c00      	cmp	r4, #0
 8004b1c:	f300 816b 	bgt.w	8004df6 <_dtoa_r+0x9ce>
 8004b20:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004b22:	2b00      	cmp	r3, #0
 8004b24:	f040 81cd 	bne.w	8004ec2 <_dtoa_r+0xa9a>
 8004b28:	46a8      	mov	r8, r5
 8004b2a:	9a00      	ldr	r2, [sp, #0]
 8004b2c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004b30:	f002 0201 	and.w	r2, r2, #1
 8004b34:	920a      	str	r2, [sp, #40]	; 0x28
 8004b36:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004b38:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004b3c:	441a      	add	r2, r3
 8004b3e:	465f      	mov	r7, fp
 8004b40:	9209      	str	r2, [sp, #36]	; 0x24
 8004b42:	46b3      	mov	fp, r6
 8004b44:	4659      	mov	r1, fp
 8004b46:	4650      	mov	r0, sl
 8004b48:	f7ff fbdc 	bl	8004304 <quorem>
 8004b4c:	4629      	mov	r1, r5
 8004b4e:	4604      	mov	r4, r0
 8004b50:	4650      	mov	r0, sl
 8004b52:	f001 fd75 	bl	8006640 <__mcmp>
 8004b56:	4659      	mov	r1, fp
 8004b58:	4606      	mov	r6, r0
 8004b5a:	4642      	mov	r2, r8
 8004b5c:	4648      	mov	r0, r9
 8004b5e:	f001 fd8b 	bl	8006678 <__mdiff>
 8004b62:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004b66:	9300      	str	r3, [sp, #0]
 8004b68:	68c3      	ldr	r3, [r0, #12]
 8004b6a:	4601      	mov	r1, r0
 8004b6c:	2b00      	cmp	r3, #0
 8004b6e:	f040 81d4 	bne.w	8004f1a <_dtoa_r+0xaf2>
 8004b72:	9008      	str	r0, [sp, #32]
 8004b74:	4650      	mov	r0, sl
 8004b76:	f001 fd63 	bl	8006640 <__mcmp>
 8004b7a:	9a08      	ldr	r2, [sp, #32]
 8004b7c:	9007      	str	r0, [sp, #28]
 8004b7e:	4611      	mov	r1, r2
 8004b80:	4648      	mov	r0, r9
 8004b82:	f001 fb6d 	bl	8006260 <_Bfree>
 8004b86:	9b07      	ldr	r3, [sp, #28]
 8004b88:	b933      	cbnz	r3, 8004b98 <_dtoa_r+0x770>
 8004b8a:	9a02      	ldr	r2, [sp, #8]
 8004b8c:	b922      	cbnz	r2, 8004b98 <_dtoa_r+0x770>
 8004b8e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b90:	2b00      	cmp	r3, #0
 8004b92:	f000 8319 	beq.w	80051c8 <_dtoa_r+0xda0>
 8004b96:	9b02      	ldr	r3, [sp, #8]
 8004b98:	2e00      	cmp	r6, #0
 8004b9a:	f2c0 821c 	blt.w	8004fd6 <_dtoa_r+0xbae>
 8004b9e:	d105      	bne.n	8004bac <_dtoa_r+0x784>
 8004ba0:	9a02      	ldr	r2, [sp, #8]
 8004ba2:	b91a      	cbnz	r2, 8004bac <_dtoa_r+0x784>
 8004ba4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004ba6:	2a00      	cmp	r2, #0
 8004ba8:	f000 8215 	beq.w	8004fd6 <_dtoa_r+0xbae>
 8004bac:	2b00      	cmp	r3, #0
 8004bae:	f107 0401 	add.w	r4, r7, #1
 8004bb2:	f300 8225 	bgt.w	8005000 <_dtoa_r+0xbd8>
 8004bb6:	9b00      	ldr	r3, [sp, #0]
 8004bb8:	703b      	strb	r3, [r7, #0]
 8004bba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004bbc:	42bb      	cmp	r3, r7
 8004bbe:	f000 8230 	beq.w	8005022 <_dtoa_r+0xbfa>
 8004bc2:	4651      	mov	r1, sl
 8004bc4:	2300      	movs	r3, #0
 8004bc6:	220a      	movs	r2, #10
 8004bc8:	4648      	mov	r0, r9
 8004bca:	f001 fb53 	bl	8006274 <__multadd>
 8004bce:	4545      	cmp	r5, r8
 8004bd0:	4682      	mov	sl, r0
 8004bd2:	4629      	mov	r1, r5
 8004bd4:	f04f 0300 	mov.w	r3, #0
 8004bd8:	f04f 020a 	mov.w	r2, #10
 8004bdc:	4648      	mov	r0, r9
 8004bde:	f000 8196 	beq.w	8004f0e <_dtoa_r+0xae6>
 8004be2:	f001 fb47 	bl	8006274 <__multadd>
 8004be6:	4641      	mov	r1, r8
 8004be8:	4605      	mov	r5, r0
 8004bea:	2300      	movs	r3, #0
 8004bec:	220a      	movs	r2, #10
 8004bee:	4648      	mov	r0, r9
 8004bf0:	f001 fb40 	bl	8006274 <__multadd>
 8004bf4:	4627      	mov	r7, r4
 8004bf6:	4680      	mov	r8, r0
 8004bf8:	e7a4      	b.n	8004b44 <_dtoa_r+0x71c>
 8004bfa:	4631      	mov	r1, r6
 8004bfc:	4650      	mov	r0, sl
 8004bfe:	f001 fd1f 	bl	8006640 <__mcmp>
 8004c02:	2800      	cmp	r0, #0
 8004c04:	da81      	bge.n	8004b0a <_dtoa_r+0x6e2>
 8004c06:	9f06      	ldr	r7, [sp, #24]
 8004c08:	4651      	mov	r1, sl
 8004c0a:	2300      	movs	r3, #0
 8004c0c:	220a      	movs	r2, #10
 8004c0e:	4648      	mov	r0, r9
 8004c10:	3f01      	subs	r7, #1
 8004c12:	9706      	str	r7, [sp, #24]
 8004c14:	f001 fb2e 	bl	8006274 <__multadd>
 8004c18:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004c1a:	4682      	mov	sl, r0
 8004c1c:	2b00      	cmp	r3, #0
 8004c1e:	f040 82eb 	bne.w	80051f8 <_dtoa_r+0xdd0>
 8004c22:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004c24:	2b00      	cmp	r3, #0
 8004c26:	f340 82f3 	ble.w	8005210 <_dtoa_r+0xde8>
 8004c2a:	9309      	str	r3, [sp, #36]	; 0x24
 8004c2c:	465c      	mov	r4, fp
 8004c2e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004c32:	e002      	b.n	8004c3a <_dtoa_r+0x812>
 8004c34:	f001 fb1e 	bl	8006274 <__multadd>
 8004c38:	4682      	mov	sl, r0
 8004c3a:	4631      	mov	r1, r6
 8004c3c:	4650      	mov	r0, sl
 8004c3e:	f7ff fb61 	bl	8004304 <quorem>
 8004c42:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004c46:	f804 7b01 	strb.w	r7, [r4], #1
 8004c4a:	eba4 030b 	sub.w	r3, r4, fp
 8004c4e:	4598      	cmp	r8, r3
 8004c50:	f04f 020a 	mov.w	r2, #10
 8004c54:	f04f 0300 	mov.w	r3, #0
 8004c58:	4651      	mov	r1, sl
 8004c5a:	4648      	mov	r0, r9
 8004c5c:	dcea      	bgt.n	8004c34 <_dtoa_r+0x80c>
 8004c5e:	2300      	movs	r3, #0
 8004c60:	9700      	str	r7, [sp, #0]
 8004c62:	9302      	str	r3, [sp, #8]
 8004c64:	4651      	mov	r1, sl
 8004c66:	2201      	movs	r2, #1
 8004c68:	4648      	mov	r0, r9
 8004c6a:	f001 fc93 	bl	8006594 <__lshift>
 8004c6e:	4631      	mov	r1, r6
 8004c70:	4682      	mov	sl, r0
 8004c72:	f001 fce5 	bl	8006640 <__mcmp>
 8004c76:	2800      	cmp	r0, #0
 8004c78:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004c7c:	dc14      	bgt.n	8004ca8 <_dtoa_r+0x880>
 8004c7e:	d108      	bne.n	8004c92 <_dtoa_r+0x86a>
 8004c80:	9b00      	ldr	r3, [sp, #0]
 8004c82:	07db      	lsls	r3, r3, #31
 8004c84:	d410      	bmi.n	8004ca8 <_dtoa_r+0x880>
 8004c86:	e004      	b.n	8004c92 <_dtoa_r+0x86a>
 8004c88:	40240000 	.word	0x40240000
 8004c8c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004c90:	461c      	mov	r4, r3
 8004c92:	2a30      	cmp	r2, #48	; 0x30
 8004c94:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004c98:	d0f8      	beq.n	8004c8c <_dtoa_r+0x864>
 8004c9a:	e00b      	b.n	8004cb4 <_dtoa_r+0x88c>
 8004c9c:	459b      	cmp	fp, r3
 8004c9e:	f000 814e 	beq.w	8004f3e <_dtoa_r+0xb16>
 8004ca2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004ca6:	461c      	mov	r4, r3
 8004ca8:	2a39      	cmp	r2, #57	; 0x39
 8004caa:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004cae:	d0f5      	beq.n	8004c9c <_dtoa_r+0x874>
 8004cb0:	3201      	adds	r2, #1
 8004cb2:	701a      	strb	r2, [r3, #0]
 8004cb4:	4631      	mov	r1, r6
 8004cb6:	4648      	mov	r0, r9
 8004cb8:	f001 fad2 	bl	8006260 <_Bfree>
 8004cbc:	b155      	cbz	r5, 8004cd4 <_dtoa_r+0x8ac>
 8004cbe:	9902      	ldr	r1, [sp, #8]
 8004cc0:	b121      	cbz	r1, 8004ccc <_dtoa_r+0x8a4>
 8004cc2:	42a9      	cmp	r1, r5
 8004cc4:	d002      	beq.n	8004ccc <_dtoa_r+0x8a4>
 8004cc6:	4648      	mov	r0, r9
 8004cc8:	f001 faca 	bl	8006260 <_Bfree>
 8004ccc:	4629      	mov	r1, r5
 8004cce:	4648      	mov	r0, r9
 8004cd0:	f001 fac6 	bl	8006260 <_Bfree>
 8004cd4:	4651      	mov	r1, sl
 8004cd6:	4648      	mov	r0, r9
 8004cd8:	f001 fac2 	bl	8006260 <_Bfree>
 8004cdc:	2200      	movs	r2, #0
 8004cde:	9b06      	ldr	r3, [sp, #24]
 8004ce0:	7022      	strb	r2, [r4, #0]
 8004ce2:	9a05      	ldr	r2, [sp, #20]
 8004ce4:	3301      	adds	r3, #1
 8004ce6:	6013      	str	r3, [r2, #0]
 8004ce8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004cea:	2b00      	cmp	r3, #0
 8004cec:	f43f abdb 	beq.w	80044a6 <_dtoa_r+0x7e>
 8004cf0:	4658      	mov	r0, fp
 8004cf2:	601c      	str	r4, [r3, #0]
 8004cf4:	b01b      	add	sp, #108	; 0x6c
 8004cf6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004cfa:	201c      	movs	r0, #28
 8004cfc:	e6eb      	b.n	8004ad6 <_dtoa_r+0x6ae>
 8004cfe:	4601      	mov	r1, r0
 8004d00:	4648      	mov	r0, r9
 8004d02:	f001 fbf7 	bl	80064f4 <__pow5mult>
 8004d06:	9b02      	ldr	r3, [sp, #8]
 8004d08:	2b01      	cmp	r3, #1
 8004d0a:	4606      	mov	r6, r0
 8004d0c:	f340 80d4 	ble.w	8004eb8 <_dtoa_r+0xa90>
 8004d10:	2300      	movs	r3, #0
 8004d12:	930c      	str	r3, [sp, #48]	; 0x30
 8004d14:	6933      	ldr	r3, [r6, #16]
 8004d16:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004d1a:	6918      	ldr	r0, [r3, #16]
 8004d1c:	f001 faea 	bl	80062f4 <__hi0bits>
 8004d20:	f1c0 0020 	rsb	r0, r0, #32
 8004d24:	e6cb      	b.n	8004abe <_dtoa_r+0x696>
 8004d26:	900d      	str	r0, [sp, #52]	; 0x34
 8004d28:	e42a      	b.n	8004580 <_dtoa_r+0x158>
 8004d2a:	2501      	movs	r5, #1
 8004d2c:	e440      	b.n	80045b0 <_dtoa_r+0x188>
 8004d2e:	f1c3 0820 	rsb	r8, r3, #32
 8004d32:	9b00      	ldr	r3, [sp, #0]
 8004d34:	fa03 f008 	lsl.w	r0, r3, r8
 8004d38:	f7ff bbd8 	b.w	80044ec <_dtoa_r+0xc4>
 8004d3c:	2300      	movs	r3, #0
 8004d3e:	930a      	str	r3, [sp, #40]	; 0x28
 8004d40:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004d44:	4413      	add	r3, r2
 8004d46:	930e      	str	r3, [sp, #56]	; 0x38
 8004d48:	3301      	adds	r3, #1
 8004d4a:	2b01      	cmp	r3, #1
 8004d4c:	461e      	mov	r6, r3
 8004d4e:	9309      	str	r3, [sp, #36]	; 0x24
 8004d50:	bfb8      	it	lt
 8004d52:	2601      	movlt	r6, #1
 8004d54:	2100      	movs	r1, #0
 8004d56:	2e17      	cmp	r6, #23
 8004d58:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004d5c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004d5e:	f77f ac89 	ble.w	8004674 <_dtoa_r+0x24c>
 8004d62:	2201      	movs	r2, #1
 8004d64:	2304      	movs	r3, #4
 8004d66:	005b      	lsls	r3, r3, #1
 8004d68:	f103 0014 	add.w	r0, r3, #20
 8004d6c:	42b0      	cmp	r0, r6
 8004d6e:	4611      	mov	r1, r2
 8004d70:	f102 0201 	add.w	r2, r2, #1
 8004d74:	d9f7      	bls.n	8004d66 <_dtoa_r+0x93e>
 8004d76:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004d7a:	e47b      	b.n	8004674 <_dtoa_r+0x24c>
 8004d7c:	2300      	movs	r3, #0
 8004d7e:	930a      	str	r3, [sp, #40]	; 0x28
 8004d80:	9e07      	ldr	r6, [sp, #28]
 8004d82:	2e00      	cmp	r6, #0
 8004d84:	f340 80e2 	ble.w	8004f4c <_dtoa_r+0xb24>
 8004d88:	960e      	str	r6, [sp, #56]	; 0x38
 8004d8a:	9609      	str	r6, [sp, #36]	; 0x24
 8004d8c:	e7e2      	b.n	8004d54 <_dtoa_r+0x92c>
 8004d8e:	2301      	movs	r3, #1
 8004d90:	930a      	str	r3, [sp, #40]	; 0x28
 8004d92:	e7f5      	b.n	8004d80 <_dtoa_r+0x958>
 8004d94:	9b00      	ldr	r3, [sp, #0]
 8004d96:	2b00      	cmp	r3, #0
 8004d98:	f47f ae90 	bne.w	8004abc <_dtoa_r+0x694>
 8004d9c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004da0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004da4:	2b00      	cmp	r3, #0
 8004da6:	f040 8192 	bne.w	80050ce <_dtoa_r+0xca6>
 8004daa:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004dae:	0d1b      	lsrs	r3, r3, #20
 8004db0:	051b      	lsls	r3, r3, #20
 8004db2:	b12b      	cbz	r3, 8004dc0 <_dtoa_r+0x998>
 8004db4:	9b08      	ldr	r3, [sp, #32]
 8004db6:	3301      	adds	r3, #1
 8004db8:	9308      	str	r3, [sp, #32]
 8004dba:	f108 0801 	add.w	r8, r8, #1
 8004dbe:	2301      	movs	r3, #1
 8004dc0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004dc2:	930c      	str	r3, [sp, #48]	; 0x30
 8004dc4:	2a00      	cmp	r2, #0
 8004dc6:	f43f ae79 	beq.w	8004abc <_dtoa_r+0x694>
 8004dca:	e7a3      	b.n	8004d14 <_dtoa_r+0x8ec>
 8004dcc:	463a      	mov	r2, r7
 8004dce:	4629      	mov	r1, r5
 8004dd0:	4648      	mov	r0, r9
 8004dd2:	f001 fb8f 	bl	80064f4 <__pow5mult>
 8004dd6:	4652      	mov	r2, sl
 8004dd8:	4601      	mov	r1, r0
 8004dda:	4605      	mov	r5, r0
 8004ddc:	4648      	mov	r0, r9
 8004dde:	f001 fae3 	bl	80063a8 <__multiply>
 8004de2:	4651      	mov	r1, sl
 8004de4:	4607      	mov	r7, r0
 8004de6:	4648      	mov	r0, r9
 8004de8:	f001 fa3a 	bl	8006260 <_Bfree>
 8004dec:	46ba      	mov	sl, r7
 8004dee:	2e00      	cmp	r6, #0
 8004df0:	f43f ae57 	beq.w	8004aa2 <_dtoa_r+0x67a>
 8004df4:	e64f      	b.n	8004a96 <_dtoa_r+0x66e>
 8004df6:	4629      	mov	r1, r5
 8004df8:	4622      	mov	r2, r4
 8004dfa:	4648      	mov	r0, r9
 8004dfc:	f001 fbca 	bl	8006594 <__lshift>
 8004e00:	4605      	mov	r5, r0
 8004e02:	e68d      	b.n	8004b20 <_dtoa_r+0x6f8>
 8004e04:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004e06:	2a00      	cmp	r2, #0
 8004e08:	f000 815d 	beq.w	80050c6 <_dtoa_r+0xc9e>
 8004e0c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004e10:	9a08      	ldr	r2, [sp, #32]
 8004e12:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004e14:	4614      	mov	r4, r2
 8004e16:	441a      	add	r2, r3
 8004e18:	4498      	add	r8, r3
 8004e1a:	9208      	str	r2, [sp, #32]
 8004e1c:	e5f7      	b.n	8004a0e <_dtoa_r+0x5e6>
 8004e1e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e20:	2b00      	cmp	r3, #0
 8004e22:	f73f ad3e 	bgt.w	80048a2 <_dtoa_r+0x47a>
 8004e26:	f040 80bc 	bne.w	8004fa2 <_dtoa_r+0xb7a>
 8004e2a:	ec51 0b17 	vmov	r0, r1, d7
 8004e2e:	2200      	movs	r2, #0
 8004e30:	4bb2      	ldr	r3, [pc, #712]	; (80050fc <_dtoa_r+0xcd4>)
 8004e32:	f7fb fe81 	bl	8000b38 <__aeabi_dmul>
 8004e36:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004e3a:	f7fc f903 	bl	8001044 <__aeabi_dcmpge>
 8004e3e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004e40:	4635      	mov	r5, r6
 8004e42:	2800      	cmp	r0, #0
 8004e44:	d176      	bne.n	8004f34 <_dtoa_r+0xb0c>
 8004e46:	9a06      	ldr	r2, [sp, #24]
 8004e48:	2331      	movs	r3, #49	; 0x31
 8004e4a:	3201      	adds	r2, #1
 8004e4c:	9206      	str	r2, [sp, #24]
 8004e4e:	f88b 3000 	strb.w	r3, [fp]
 8004e52:	f10b 0401 	add.w	r4, fp, #1
 8004e56:	4631      	mov	r1, r6
 8004e58:	4648      	mov	r0, r9
 8004e5a:	f001 fa01 	bl	8006260 <_Bfree>
 8004e5e:	2d00      	cmp	r5, #0
 8004e60:	f47f af34 	bne.w	8004ccc <_dtoa_r+0x8a4>
 8004e64:	e736      	b.n	8004cd4 <_dtoa_r+0x8ac>
 8004e66:	f000 8142 	beq.w	80050ee <_dtoa_r+0xcc6>
 8004e6a:	9b06      	ldr	r3, [sp, #24]
 8004e6c:	425c      	negs	r4, r3
 8004e6e:	4ba4      	ldr	r3, [pc, #656]	; (8005100 <_dtoa_r+0xcd8>)
 8004e70:	f004 020f 	and.w	r2, r4, #15
 8004e74:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004e78:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004e7c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004e80:	f7fb fe5a 	bl	8000b38 <__aeabi_dmul>
 8004e84:	1124      	asrs	r4, r4, #4
 8004e86:	e9cd 0100 	strd	r0, r1, [sp]
 8004e8a:	f000 81c6 	beq.w	800521a <_dtoa_r+0xdf2>
 8004e8e:	4d9d      	ldr	r5, [pc, #628]	; (8005104 <_dtoa_r+0xcdc>)
 8004e90:	2300      	movs	r3, #0
 8004e92:	2602      	movs	r6, #2
 8004e94:	07e7      	lsls	r7, r4, #31
 8004e96:	d505      	bpl.n	8004ea4 <_dtoa_r+0xa7c>
 8004e98:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004e9c:	f7fb fe4c 	bl	8000b38 <__aeabi_dmul>
 8004ea0:	3601      	adds	r6, #1
 8004ea2:	2301      	movs	r3, #1
 8004ea4:	1064      	asrs	r4, r4, #1
 8004ea6:	f105 0508 	add.w	r5, r5, #8
 8004eaa:	d1f3      	bne.n	8004e94 <_dtoa_r+0xa6c>
 8004eac:	2b00      	cmp	r3, #0
 8004eae:	f43f ac27 	beq.w	8004700 <_dtoa_r+0x2d8>
 8004eb2:	e9cd 0100 	strd	r0, r1, [sp]
 8004eb6:	e423      	b.n	8004700 <_dtoa_r+0x2d8>
 8004eb8:	9b00      	ldr	r3, [sp, #0]
 8004eba:	2b00      	cmp	r3, #0
 8004ebc:	f43f af6e 	beq.w	8004d9c <_dtoa_r+0x974>
 8004ec0:	e726      	b.n	8004d10 <_dtoa_r+0x8e8>
 8004ec2:	6869      	ldr	r1, [r5, #4]
 8004ec4:	4648      	mov	r0, r9
 8004ec6:	f001 f9a5 	bl	8006214 <_Balloc>
 8004eca:	692b      	ldr	r3, [r5, #16]
 8004ecc:	3302      	adds	r3, #2
 8004ece:	009a      	lsls	r2, r3, #2
 8004ed0:	4604      	mov	r4, r0
 8004ed2:	f105 010c 	add.w	r1, r5, #12
 8004ed6:	300c      	adds	r0, #12
 8004ed8:	f7fb fb12 	bl	8000500 <memcpy>
 8004edc:	4621      	mov	r1, r4
 8004ede:	2201      	movs	r2, #1
 8004ee0:	4648      	mov	r0, r9
 8004ee2:	f001 fb57 	bl	8006594 <__lshift>
 8004ee6:	4680      	mov	r8, r0
 8004ee8:	e61f      	b.n	8004b2a <_dtoa_r+0x702>
 8004eea:	2400      	movs	r4, #0
 8004eec:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004ef0:	4621      	mov	r1, r4
 8004ef2:	4648      	mov	r0, r9
 8004ef4:	f001 f98e 	bl	8006214 <_Balloc>
 8004ef8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004efc:	930e      	str	r3, [sp, #56]	; 0x38
 8004efe:	9309      	str	r3, [sp, #36]	; 0x24
 8004f00:	2301      	movs	r3, #1
 8004f02:	4683      	mov	fp, r0
 8004f04:	9407      	str	r4, [sp, #28]
 8004f06:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004f0a:	930a      	str	r3, [sp, #40]	; 0x28
 8004f0c:	e4b6      	b.n	800487c <_dtoa_r+0x454>
 8004f0e:	f001 f9b1 	bl	8006274 <__multadd>
 8004f12:	4627      	mov	r7, r4
 8004f14:	4605      	mov	r5, r0
 8004f16:	4680      	mov	r8, r0
 8004f18:	e614      	b.n	8004b44 <_dtoa_r+0x71c>
 8004f1a:	4648      	mov	r0, r9
 8004f1c:	f001 f9a0 	bl	8006260 <_Bfree>
 8004f20:	2301      	movs	r3, #1
 8004f22:	e639      	b.n	8004b98 <_dtoa_r+0x770>
 8004f24:	9b02      	ldr	r3, [sp, #8]
 8004f26:	2b02      	cmp	r3, #2
 8004f28:	f77f adf3 	ble.w	8004b12 <_dtoa_r+0x6ea>
 8004f2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f2e:	2b00      	cmp	r3, #0
 8004f30:	f000 80cf 	beq.w	80050d2 <_dtoa_r+0xcaa>
 8004f34:	9b07      	ldr	r3, [sp, #28]
 8004f36:	43db      	mvns	r3, r3
 8004f38:	9306      	str	r3, [sp, #24]
 8004f3a:	465c      	mov	r4, fp
 8004f3c:	e78b      	b.n	8004e56 <_dtoa_r+0xa2e>
 8004f3e:	9a06      	ldr	r2, [sp, #24]
 8004f40:	2331      	movs	r3, #49	; 0x31
 8004f42:	3201      	adds	r2, #1
 8004f44:	9206      	str	r2, [sp, #24]
 8004f46:	f88b 3000 	strb.w	r3, [fp]
 8004f4a:	e6b3      	b.n	8004cb4 <_dtoa_r+0x88c>
 8004f4c:	2401      	movs	r4, #1
 8004f4e:	9409      	str	r4, [sp, #36]	; 0x24
 8004f50:	9407      	str	r4, [sp, #28]
 8004f52:	f7ff bb8b 	b.w	800466c <_dtoa_r+0x244>
 8004f56:	4630      	mov	r0, r6
 8004f58:	f7fb fd84 	bl	8000a64 <__aeabi_i2d>
 8004f5c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f60:	f7fb fdea 	bl	8000b38 <__aeabi_dmul>
 8004f64:	2200      	movs	r2, #0
 8004f66:	4b68      	ldr	r3, [pc, #416]	; (8005108 <_dtoa_r+0xce0>)
 8004f68:	f7fb fc30 	bl	80007cc <__adddf3>
 8004f6c:	4606      	mov	r6, r0
 8004f6e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004f72:	2200      	movs	r2, #0
 8004f74:	4b61      	ldr	r3, [pc, #388]	; (80050fc <_dtoa_r+0xcd4>)
 8004f76:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f7a:	f7fb fc25 	bl	80007c8 <__aeabi_dsub>
 8004f7e:	4632      	mov	r2, r6
 8004f80:	463b      	mov	r3, r7
 8004f82:	4604      	mov	r4, r0
 8004f84:	460d      	mov	r5, r1
 8004f86:	f7fc f867 	bl	8001058 <__aeabi_dcmpgt>
 8004f8a:	2800      	cmp	r0, #0
 8004f8c:	d14f      	bne.n	800502e <_dtoa_r+0xc06>
 8004f8e:	4632      	mov	r2, r6
 8004f90:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004f94:	4620      	mov	r0, r4
 8004f96:	4629      	mov	r1, r5
 8004f98:	f7fc f840 	bl	800101c <__aeabi_dcmplt>
 8004f9c:	2800      	cmp	r0, #0
 8004f9e:	f43f ac69 	beq.w	8004874 <_dtoa_r+0x44c>
 8004fa2:	2600      	movs	r6, #0
 8004fa4:	4635      	mov	r5, r6
 8004fa6:	e7c5      	b.n	8004f34 <_dtoa_r+0xb0c>
 8004fa8:	2301      	movs	r3, #1
 8004faa:	930a      	str	r3, [sp, #40]	; 0x28
 8004fac:	e6c8      	b.n	8004d40 <_dtoa_r+0x918>
 8004fae:	4651      	mov	r1, sl
 8004fb0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004fb2:	4648      	mov	r0, r9
 8004fb4:	f001 fa9e 	bl	80064f4 <__pow5mult>
 8004fb8:	4682      	mov	sl, r0
 8004fba:	e572      	b.n	8004aa2 <_dtoa_r+0x67a>
 8004fbc:	f8dd a000 	ldr.w	sl, [sp]
 8004fc0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004fc4:	e686      	b.n	8004cd4 <_dtoa_r+0x8ac>
 8004fc6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004fc8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004fca:	1afb      	subs	r3, r7, r3
 8004fcc:	441a      	add	r2, r3
 8004fce:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004fd2:	2700      	movs	r7, #0
 8004fd4:	e512      	b.n	80049fc <_dtoa_r+0x5d4>
 8004fd6:	2b00      	cmp	r3, #0
 8004fd8:	9402      	str	r4, [sp, #8]
 8004fda:	465e      	mov	r6, fp
 8004fdc:	f107 0401 	add.w	r4, r7, #1
 8004fe0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004fe4:	f300 80ba 	bgt.w	800515c <_dtoa_r+0xd34>
 8004fe8:	9b00      	ldr	r3, [sp, #0]
 8004fea:	9502      	str	r5, [sp, #8]
 8004fec:	703b      	strb	r3, [r7, #0]
 8004fee:	4645      	mov	r5, r8
 8004ff0:	e660      	b.n	8004cb4 <_dtoa_r+0x88c>
 8004ff2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004ff6:	2602      	movs	r6, #2
 8004ff8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004ffc:	f7ff bb67 	b.w	80046ce <_dtoa_r+0x2a6>
 8005000:	9b00      	ldr	r3, [sp, #0]
 8005002:	2b39      	cmp	r3, #57	; 0x39
 8005004:	465e      	mov	r6, fp
 8005006:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800500a:	f000 80b9 	beq.w	8005180 <_dtoa_r+0xd58>
 800500e:	9b00      	ldr	r3, [sp, #0]
 8005010:	9502      	str	r5, [sp, #8]
 8005012:	3301      	adds	r3, #1
 8005014:	703b      	strb	r3, [r7, #0]
 8005016:	4645      	mov	r5, r8
 8005018:	e64c      	b.n	8004cb4 <_dtoa_r+0x88c>
 800501a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800501e:	1a9c      	subs	r4, r3, r2
 8005020:	e4f5      	b.n	8004a0e <_dtoa_r+0x5e6>
 8005022:	465e      	mov	r6, fp
 8005024:	9502      	str	r5, [sp, #8]
 8005026:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800502a:	4645      	mov	r5, r8
 800502c:	e61a      	b.n	8004c64 <_dtoa_r+0x83c>
 800502e:	2600      	movs	r6, #0
 8005030:	4635      	mov	r5, r6
 8005032:	e708      	b.n	8004e46 <_dtoa_r+0xa1e>
 8005034:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005038:	e9dd 0100 	ldrd	r0, r1, [sp]
 800503c:	f7fb fd7c 	bl	8000b38 <__aeabi_dmul>
 8005040:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005042:	f88b 5000 	strb.w	r5, [fp]
 8005046:	2b01      	cmp	r3, #1
 8005048:	e9cd 0100 	strd	r0, r1, [sp]
 800504c:	d020      	beq.n	8005090 <_dtoa_r+0xc68>
 800504e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005050:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005054:	445b      	add	r3, fp
 8005056:	4698      	mov	r8, r3
 8005058:	2200      	movs	r2, #0
 800505a:	4b2c      	ldr	r3, [pc, #176]	; (800510c <_dtoa_r+0xce4>)
 800505c:	4630      	mov	r0, r6
 800505e:	4639      	mov	r1, r7
 8005060:	f7fb fd6a 	bl	8000b38 <__aeabi_dmul>
 8005064:	460f      	mov	r7, r1
 8005066:	4606      	mov	r6, r0
 8005068:	f7fc f816 	bl	8001098 <__aeabi_d2iz>
 800506c:	4605      	mov	r5, r0
 800506e:	f7fb fcf9 	bl	8000a64 <__aeabi_i2d>
 8005072:	3530      	adds	r5, #48	; 0x30
 8005074:	4602      	mov	r2, r0
 8005076:	460b      	mov	r3, r1
 8005078:	4630      	mov	r0, r6
 800507a:	4639      	mov	r1, r7
 800507c:	f7fb fba4 	bl	80007c8 <__aeabi_dsub>
 8005080:	f804 5b01 	strb.w	r5, [r4], #1
 8005084:	4544      	cmp	r4, r8
 8005086:	4606      	mov	r6, r0
 8005088:	460f      	mov	r7, r1
 800508a:	d1e5      	bne.n	8005058 <_dtoa_r+0xc30>
 800508c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8005090:	4b1f      	ldr	r3, [pc, #124]	; (8005110 <_dtoa_r+0xce8>)
 8005092:	2200      	movs	r2, #0
 8005094:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005098:	f7fb fb98 	bl	80007cc <__adddf3>
 800509c:	4632      	mov	r2, r6
 800509e:	463b      	mov	r3, r7
 80050a0:	f7fb ffbc 	bl	800101c <__aeabi_dcmplt>
 80050a4:	2800      	cmp	r0, #0
 80050a6:	d070      	beq.n	800518a <_dtoa_r+0xd62>
 80050a8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80050aa:	9306      	str	r3, [sp, #24]
 80050ac:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80050b0:	e48f      	b.n	80049d2 <_dtoa_r+0x5aa>
 80050b2:	2330      	movs	r3, #48	; 0x30
 80050b4:	f88b 3000 	strb.w	r3, [fp]
 80050b8:	9b06      	ldr	r3, [sp, #24]
 80050ba:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80050be:	3301      	adds	r3, #1
 80050c0:	9306      	str	r3, [sp, #24]
 80050c2:	465b      	mov	r3, fp
 80050c4:	e489      	b.n	80049da <_dtoa_r+0x5b2>
 80050c6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80050c8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80050cc:	e6a0      	b.n	8004e10 <_dtoa_r+0x9e8>
 80050ce:	2300      	movs	r3, #0
 80050d0:	e676      	b.n	8004dc0 <_dtoa_r+0x998>
 80050d2:	4631      	mov	r1, r6
 80050d4:	2205      	movs	r2, #5
 80050d6:	4648      	mov	r0, r9
 80050d8:	f001 f8cc 	bl	8006274 <__multadd>
 80050dc:	4601      	mov	r1, r0
 80050de:	4606      	mov	r6, r0
 80050e0:	4650      	mov	r0, sl
 80050e2:	f001 faad 	bl	8006640 <__mcmp>
 80050e6:	2800      	cmp	r0, #0
 80050e8:	f73f aead 	bgt.w	8004e46 <_dtoa_r+0xa1e>
 80050ec:	e722      	b.n	8004f34 <_dtoa_r+0xb0c>
 80050ee:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80050f2:	2602      	movs	r6, #2
 80050f4:	ed8d 7b00 	vstr	d7, [sp]
 80050f8:	f7ff bb02 	b.w	8004700 <_dtoa_r+0x2d8>
 80050fc:	40140000 	.word	0x40140000
 8005100:	080074b8 	.word	0x080074b8
 8005104:	08007490 	.word	0x08007490
 8005108:	401c0000 	.word	0x401c0000
 800510c:	40240000 	.word	0x40240000
 8005110:	3fe00000 	.word	0x3fe00000
 8005114:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005116:	2b00      	cmp	r3, #0
 8005118:	f43f af1d 	beq.w	8004f56 <_dtoa_r+0xb2e>
 800511c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800511e:	2c00      	cmp	r4, #0
 8005120:	f77f aba8 	ble.w	8004874 <_dtoa_r+0x44c>
 8005124:	2200      	movs	r2, #0
 8005126:	4b45      	ldr	r3, [pc, #276]	; (800523c <_dtoa_r+0xe14>)
 8005128:	e9dd 0100 	ldrd	r0, r1, [sp]
 800512c:	f7fb fd04 	bl	8000b38 <__aeabi_dmul>
 8005130:	e9cd 0100 	strd	r0, r1, [sp]
 8005134:	1c70      	adds	r0, r6, #1
 8005136:	f7fb fc95 	bl	8000a64 <__aeabi_i2d>
 800513a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800513e:	f7fb fcfb 	bl	8000b38 <__aeabi_dmul>
 8005142:	4b3f      	ldr	r3, [pc, #252]	; (8005240 <_dtoa_r+0xe18>)
 8005144:	2200      	movs	r2, #0
 8005146:	f7fb fb41 	bl	80007cc <__adddf3>
 800514a:	9b06      	ldr	r3, [sp, #24]
 800514c:	9412      	str	r4, [sp, #72]	; 0x48
 800514e:	3b01      	subs	r3, #1
 8005150:	4606      	mov	r6, r0
 8005152:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005156:	9316      	str	r3, [sp, #88]	; 0x58
 8005158:	f7ff baf3 	b.w	8004742 <_dtoa_r+0x31a>
 800515c:	4651      	mov	r1, sl
 800515e:	2201      	movs	r2, #1
 8005160:	4648      	mov	r0, r9
 8005162:	f001 fa17 	bl	8006594 <__lshift>
 8005166:	4631      	mov	r1, r6
 8005168:	4682      	mov	sl, r0
 800516a:	f001 fa69 	bl	8006640 <__mcmp>
 800516e:	2800      	cmp	r0, #0
 8005170:	dd3b      	ble.n	80051ea <_dtoa_r+0xdc2>
 8005172:	9b00      	ldr	r3, [sp, #0]
 8005174:	2b39      	cmp	r3, #57	; 0x39
 8005176:	d003      	beq.n	8005180 <_dtoa_r+0xd58>
 8005178:	9b02      	ldr	r3, [sp, #8]
 800517a:	3331      	adds	r3, #49	; 0x31
 800517c:	9300      	str	r3, [sp, #0]
 800517e:	e733      	b.n	8004fe8 <_dtoa_r+0xbc0>
 8005180:	2239      	movs	r2, #57	; 0x39
 8005182:	9502      	str	r5, [sp, #8]
 8005184:	703a      	strb	r2, [r7, #0]
 8005186:	4645      	mov	r5, r8
 8005188:	e58e      	b.n	8004ca8 <_dtoa_r+0x880>
 800518a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800518e:	2000      	movs	r0, #0
 8005190:	492c      	ldr	r1, [pc, #176]	; (8005244 <_dtoa_r+0xe1c>)
 8005192:	f7fb fb19 	bl	80007c8 <__aeabi_dsub>
 8005196:	4632      	mov	r2, r6
 8005198:	463b      	mov	r3, r7
 800519a:	f7fb ff5d 	bl	8001058 <__aeabi_dcmpgt>
 800519e:	b910      	cbnz	r0, 80051a6 <_dtoa_r+0xd7e>
 80051a0:	f7ff bb68 	b.w	8004874 <_dtoa_r+0x44c>
 80051a4:	4614      	mov	r4, r2
 80051a6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80051aa:	2b30      	cmp	r3, #48	; 0x30
 80051ac:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80051b0:	d0f8      	beq.n	80051a4 <_dtoa_r+0xd7c>
 80051b2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80051b4:	9306      	str	r3, [sp, #24]
 80051b6:	e58d      	b.n	8004cd4 <_dtoa_r+0x8ac>
 80051b8:	46d9      	mov	r9, fp
 80051ba:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80051be:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80051c2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80051c4:	9306      	str	r3, [sp, #24]
 80051c6:	e404      	b.n	80049d2 <_dtoa_r+0x5aa>
 80051c8:	9b00      	ldr	r3, [sp, #0]
 80051ca:	2b39      	cmp	r3, #57	; 0x39
 80051cc:	4621      	mov	r1, r4
 80051ce:	4632      	mov	r2, r6
 80051d0:	f107 0401 	add.w	r4, r7, #1
 80051d4:	465e      	mov	r6, fp
 80051d6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80051da:	d0d1      	beq.n	8005180 <_dtoa_r+0xd58>
 80051dc:	2a00      	cmp	r2, #0
 80051de:	f77f af03 	ble.w	8004fe8 <_dtoa_r+0xbc0>
 80051e2:	460b      	mov	r3, r1
 80051e4:	3331      	adds	r3, #49	; 0x31
 80051e6:	9300      	str	r3, [sp, #0]
 80051e8:	e6fe      	b.n	8004fe8 <_dtoa_r+0xbc0>
 80051ea:	f47f aefd 	bne.w	8004fe8 <_dtoa_r+0xbc0>
 80051ee:	9b00      	ldr	r3, [sp, #0]
 80051f0:	07da      	lsls	r2, r3, #31
 80051f2:	f57f aef9 	bpl.w	8004fe8 <_dtoa_r+0xbc0>
 80051f6:	e7bc      	b.n	8005172 <_dtoa_r+0xd4a>
 80051f8:	4629      	mov	r1, r5
 80051fa:	2300      	movs	r3, #0
 80051fc:	220a      	movs	r2, #10
 80051fe:	4648      	mov	r0, r9
 8005200:	f001 f838 	bl	8006274 <__multadd>
 8005204:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005206:	2b00      	cmp	r3, #0
 8005208:	4605      	mov	r5, r0
 800520a:	dd09      	ble.n	8005220 <_dtoa_r+0xdf8>
 800520c:	9309      	str	r3, [sp, #36]	; 0x24
 800520e:	e484      	b.n	8004b1a <_dtoa_r+0x6f2>
 8005210:	9b02      	ldr	r3, [sp, #8]
 8005212:	2b02      	cmp	r3, #2
 8005214:	dc0e      	bgt.n	8005234 <_dtoa_r+0xe0c>
 8005216:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005218:	e507      	b.n	8004c2a <_dtoa_r+0x802>
 800521a:	2602      	movs	r6, #2
 800521c:	f7ff ba70 	b.w	8004700 <_dtoa_r+0x2d8>
 8005220:	9b02      	ldr	r3, [sp, #8]
 8005222:	2b02      	cmp	r3, #2
 8005224:	dc06      	bgt.n	8005234 <_dtoa_r+0xe0c>
 8005226:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005228:	e7f0      	b.n	800520c <_dtoa_r+0xde4>
 800522a:	f43f ac59 	beq.w	8004ae0 <_dtoa_r+0x6b8>
 800522e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005232:	e450      	b.n	8004ad6 <_dtoa_r+0x6ae>
 8005234:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005236:	9309      	str	r3, [sp, #36]	; 0x24
 8005238:	e678      	b.n	8004f2c <_dtoa_r+0xb04>
 800523a:	bf00      	nop
 800523c:	40240000 	.word	0x40240000
 8005240:	401c0000 	.word	0x401c0000
 8005244:	3fe00000 	.word	0x3fe00000

08005248 <__sflush_r>:
 8005248:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800524c:	b29a      	uxth	r2, r3
 800524e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005252:	460c      	mov	r4, r1
 8005254:	0711      	lsls	r1, r2, #28
 8005256:	4680      	mov	r8, r0
 8005258:	d444      	bmi.n	80052e4 <__sflush_r+0x9c>
 800525a:	6862      	ldr	r2, [r4, #4]
 800525c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005260:	2a00      	cmp	r2, #0
 8005262:	81a3      	strh	r3, [r4, #12]
 8005264:	dd59      	ble.n	800531a <__sflush_r+0xd2>
 8005266:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005268:	2d00      	cmp	r5, #0
 800526a:	d053      	beq.n	8005314 <__sflush_r+0xcc>
 800526c:	2200      	movs	r2, #0
 800526e:	b29b      	uxth	r3, r3
 8005270:	f8d8 6000 	ldr.w	r6, [r8]
 8005274:	69e1      	ldr	r1, [r4, #28]
 8005276:	f8c8 2000 	str.w	r2, [r8]
 800527a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800527e:	f040 8083 	bne.w	8005388 <__sflush_r+0x140>
 8005282:	2301      	movs	r3, #1
 8005284:	4640      	mov	r0, r8
 8005286:	47a8      	blx	r5
 8005288:	1c42      	adds	r2, r0, #1
 800528a:	d04a      	beq.n	8005322 <__sflush_r+0xda>
 800528c:	89a3      	ldrh	r3, [r4, #12]
 800528e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005290:	69e1      	ldr	r1, [r4, #28]
 8005292:	075b      	lsls	r3, r3, #29
 8005294:	d505      	bpl.n	80052a2 <__sflush_r+0x5a>
 8005296:	6862      	ldr	r2, [r4, #4]
 8005298:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800529a:	1a80      	subs	r0, r0, r2
 800529c:	b10b      	cbz	r3, 80052a2 <__sflush_r+0x5a>
 800529e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80052a0:	1ac0      	subs	r0, r0, r3
 80052a2:	4602      	mov	r2, r0
 80052a4:	2300      	movs	r3, #0
 80052a6:	4640      	mov	r0, r8
 80052a8:	47a8      	blx	r5
 80052aa:	1c47      	adds	r7, r0, #1
 80052ac:	d045      	beq.n	800533a <__sflush_r+0xf2>
 80052ae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80052b2:	6922      	ldr	r2, [r4, #16]
 80052b4:	6022      	str	r2, [r4, #0]
 80052b6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80052ba:	2200      	movs	r2, #0
 80052bc:	81a3      	strh	r3, [r4, #12]
 80052be:	04db      	lsls	r3, r3, #19
 80052c0:	6062      	str	r2, [r4, #4]
 80052c2:	d500      	bpl.n	80052c6 <__sflush_r+0x7e>
 80052c4:	6520      	str	r0, [r4, #80]	; 0x50
 80052c6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80052c8:	f8c8 6000 	str.w	r6, [r8]
 80052cc:	b311      	cbz	r1, 8005314 <__sflush_r+0xcc>
 80052ce:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80052d2:	4299      	cmp	r1, r3
 80052d4:	d002      	beq.n	80052dc <__sflush_r+0x94>
 80052d6:	4640      	mov	r0, r8
 80052d8:	f000 f95e 	bl	8005598 <_free_r>
 80052dc:	2000      	movs	r0, #0
 80052de:	6320      	str	r0, [r4, #48]	; 0x30
 80052e0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80052e4:	6926      	ldr	r6, [r4, #16]
 80052e6:	b1ae      	cbz	r6, 8005314 <__sflush_r+0xcc>
 80052e8:	6825      	ldr	r5, [r4, #0]
 80052ea:	6026      	str	r6, [r4, #0]
 80052ec:	0792      	lsls	r2, r2, #30
 80052ee:	bf0c      	ite	eq
 80052f0:	6963      	ldreq	r3, [r4, #20]
 80052f2:	2300      	movne	r3, #0
 80052f4:	1bad      	subs	r5, r5, r6
 80052f6:	60a3      	str	r3, [r4, #8]
 80052f8:	e00a      	b.n	8005310 <__sflush_r+0xc8>
 80052fa:	462b      	mov	r3, r5
 80052fc:	4632      	mov	r2, r6
 80052fe:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005300:	69e1      	ldr	r1, [r4, #28]
 8005302:	4640      	mov	r0, r8
 8005304:	47b8      	blx	r7
 8005306:	2800      	cmp	r0, #0
 8005308:	eba5 0500 	sub.w	r5, r5, r0
 800530c:	4406      	add	r6, r0
 800530e:	dd2b      	ble.n	8005368 <__sflush_r+0x120>
 8005310:	2d00      	cmp	r5, #0
 8005312:	dcf2      	bgt.n	80052fa <__sflush_r+0xb2>
 8005314:	2000      	movs	r0, #0
 8005316:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800531a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800531c:	2a00      	cmp	r2, #0
 800531e:	dca2      	bgt.n	8005266 <__sflush_r+0x1e>
 8005320:	e7f8      	b.n	8005314 <__sflush_r+0xcc>
 8005322:	f8d8 3000 	ldr.w	r3, [r8]
 8005326:	2b00      	cmp	r3, #0
 8005328:	d0b0      	beq.n	800528c <__sflush_r+0x44>
 800532a:	2b1d      	cmp	r3, #29
 800532c:	d001      	beq.n	8005332 <__sflush_r+0xea>
 800532e:	2b16      	cmp	r3, #22
 8005330:	d12c      	bne.n	800538c <__sflush_r+0x144>
 8005332:	f8c8 6000 	str.w	r6, [r8]
 8005336:	2000      	movs	r0, #0
 8005338:	e7ed      	b.n	8005316 <__sflush_r+0xce>
 800533a:	f8d8 1000 	ldr.w	r1, [r8]
 800533e:	291d      	cmp	r1, #29
 8005340:	d81a      	bhi.n	8005378 <__sflush_r+0x130>
 8005342:	4b15      	ldr	r3, [pc, #84]	; (8005398 <__sflush_r+0x150>)
 8005344:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005348:	40cb      	lsrs	r3, r1
 800534a:	43db      	mvns	r3, r3
 800534c:	f013 0301 	ands.w	r3, r3, #1
 8005350:	d114      	bne.n	800537c <__sflush_r+0x134>
 8005352:	6925      	ldr	r5, [r4, #16]
 8005354:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005358:	e9c4 5300 	strd	r5, r3, [r4]
 800535c:	04d5      	lsls	r5, r2, #19
 800535e:	81a2      	strh	r2, [r4, #12]
 8005360:	d5b1      	bpl.n	80052c6 <__sflush_r+0x7e>
 8005362:	2900      	cmp	r1, #0
 8005364:	d1af      	bne.n	80052c6 <__sflush_r+0x7e>
 8005366:	e7ad      	b.n	80052c4 <__sflush_r+0x7c>
 8005368:	89a3      	ldrh	r3, [r4, #12]
 800536a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800536e:	81a3      	strh	r3, [r4, #12]
 8005370:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005374:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005378:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800537c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005380:	81a2      	strh	r2, [r4, #12]
 8005382:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005386:	e7c6      	b.n	8005316 <__sflush_r+0xce>
 8005388:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800538a:	e782      	b.n	8005292 <__sflush_r+0x4a>
 800538c:	89a3      	ldrh	r3, [r4, #12]
 800538e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005392:	81a3      	strh	r3, [r4, #12]
 8005394:	e7bf      	b.n	8005316 <__sflush_r+0xce>
 8005396:	bf00      	nop
 8005398:	20400001 	.word	0x20400001

0800539c <_fflush_r>:
 800539c:	b538      	push	{r3, r4, r5, lr}
 800539e:	460d      	mov	r5, r1
 80053a0:	4604      	mov	r4, r0
 80053a2:	b108      	cbz	r0, 80053a8 <_fflush_r+0xc>
 80053a4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80053a6:	b1a3      	cbz	r3, 80053d2 <_fflush_r+0x36>
 80053a8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80053ac:	b1b8      	cbz	r0, 80053de <_fflush_r+0x42>
 80053ae:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80053b0:	07db      	lsls	r3, r3, #31
 80053b2:	d401      	bmi.n	80053b8 <_fflush_r+0x1c>
 80053b4:	0581      	lsls	r1, r0, #22
 80053b6:	d51a      	bpl.n	80053ee <_fflush_r+0x52>
 80053b8:	4620      	mov	r0, r4
 80053ba:	4629      	mov	r1, r5
 80053bc:	f7ff ff44 	bl	8005248 <__sflush_r>
 80053c0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80053c2:	07da      	lsls	r2, r3, #31
 80053c4:	4604      	mov	r4, r0
 80053c6:	d402      	bmi.n	80053ce <_fflush_r+0x32>
 80053c8:	89ab      	ldrh	r3, [r5, #12]
 80053ca:	059b      	lsls	r3, r3, #22
 80053cc:	d50a      	bpl.n	80053e4 <_fflush_r+0x48>
 80053ce:	4620      	mov	r0, r4
 80053d0:	bd38      	pop	{r3, r4, r5, pc}
 80053d2:	f000 f83f 	bl	8005454 <__sinit>
 80053d6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80053da:	2800      	cmp	r0, #0
 80053dc:	d1e7      	bne.n	80053ae <_fflush_r+0x12>
 80053de:	4604      	mov	r4, r0
 80053e0:	4620      	mov	r0, r4
 80053e2:	bd38      	pop	{r3, r4, r5, pc}
 80053e4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80053e6:	f000 fb87 	bl	8005af8 <__retarget_lock_release_recursive>
 80053ea:	4620      	mov	r0, r4
 80053ec:	bd38      	pop	{r3, r4, r5, pc}
 80053ee:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80053f0:	f000 fb80 	bl	8005af4 <__retarget_lock_acquire_recursive>
 80053f4:	e7e0      	b.n	80053b8 <_fflush_r+0x1c>
 80053f6:	bf00      	nop

080053f8 <std>:
 80053f8:	b510      	push	{r4, lr}
 80053fa:	2300      	movs	r3, #0
 80053fc:	4604      	mov	r4, r0
 80053fe:	8181      	strh	r1, [r0, #12]
 8005400:	81c2      	strh	r2, [r0, #14]
 8005402:	e9c0 3300 	strd	r3, r3, [r0]
 8005406:	6083      	str	r3, [r0, #8]
 8005408:	6643      	str	r3, [r0, #100]	; 0x64
 800540a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800540e:	6183      	str	r3, [r0, #24]
 8005410:	4619      	mov	r1, r3
 8005412:	2208      	movs	r2, #8
 8005414:	305c      	adds	r0, #92	; 0x5c
 8005416:	f7fd f881 	bl	800251c <memset>
 800541a:	4807      	ldr	r0, [pc, #28]	; (8005438 <std+0x40>)
 800541c:	4907      	ldr	r1, [pc, #28]	; (800543c <std+0x44>)
 800541e:	4a08      	ldr	r2, [pc, #32]	; (8005440 <std+0x48>)
 8005420:	4b08      	ldr	r3, [pc, #32]	; (8005444 <std+0x4c>)
 8005422:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005424:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005428:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800542c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005430:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005434:	f000 bb5a 	b.w	8005aec <__retarget_lock_init_recursive>
 8005438:	08006c11 	.word	0x08006c11
 800543c:	08006c35 	.word	0x08006c35
 8005440:	08006c71 	.word	0x08006c71
 8005444:	08006c91 	.word	0x08006c91

08005448 <_cleanup_r>:
 8005448:	4901      	ldr	r1, [pc, #4]	; (8005450 <_cleanup_r+0x8>)
 800544a:	f000 bb17 	b.w	8005a7c <_fwalk_reent>
 800544e:	bf00      	nop
 8005450:	08006f01 	.word	0x08006f01

08005454 <__sinit>:
 8005454:	b510      	push	{r4, lr}
 8005456:	4604      	mov	r4, r0
 8005458:	4812      	ldr	r0, [pc, #72]	; (80054a4 <__sinit+0x50>)
 800545a:	f000 fb4b 	bl	8005af4 <__retarget_lock_acquire_recursive>
 800545e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005460:	b9d2      	cbnz	r2, 8005498 <__sinit+0x44>
 8005462:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005466:	4810      	ldr	r0, [pc, #64]	; (80054a8 <__sinit+0x54>)
 8005468:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800546c:	2103      	movs	r1, #3
 800546e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005472:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005474:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005478:	6860      	ldr	r0, [r4, #4]
 800547a:	2104      	movs	r1, #4
 800547c:	f7ff ffbc 	bl	80053f8 <std>
 8005480:	2201      	movs	r2, #1
 8005482:	2109      	movs	r1, #9
 8005484:	68a0      	ldr	r0, [r4, #8]
 8005486:	f7ff ffb7 	bl	80053f8 <std>
 800548a:	2202      	movs	r2, #2
 800548c:	2112      	movs	r1, #18
 800548e:	68e0      	ldr	r0, [r4, #12]
 8005490:	f7ff ffb2 	bl	80053f8 <std>
 8005494:	2301      	movs	r3, #1
 8005496:	63a3      	str	r3, [r4, #56]	; 0x38
 8005498:	4802      	ldr	r0, [pc, #8]	; (80054a4 <__sinit+0x50>)
 800549a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800549e:	f000 bb2b 	b.w	8005af8 <__retarget_lock_release_recursive>
 80054a2:	bf00      	nop
 80054a4:	20001d74 	.word	0x20001d74
 80054a8:	08005449 	.word	0x08005449

080054ac <__sfp_lock_acquire>:
 80054ac:	4801      	ldr	r0, [pc, #4]	; (80054b4 <__sfp_lock_acquire+0x8>)
 80054ae:	f000 bb21 	b.w	8005af4 <__retarget_lock_acquire_recursive>
 80054b2:	bf00      	nop
 80054b4:	20001d88 	.word	0x20001d88

080054b8 <__sfp_lock_release>:
 80054b8:	4801      	ldr	r0, [pc, #4]	; (80054c0 <__sfp_lock_release+0x8>)
 80054ba:	f000 bb1d 	b.w	8005af8 <__retarget_lock_release_recursive>
 80054be:	bf00      	nop
 80054c0:	20001d88 	.word	0x20001d88

080054c4 <__libc_fini_array>:
 80054c4:	b538      	push	{r3, r4, r5, lr}
 80054c6:	4c0a      	ldr	r4, [pc, #40]	; (80054f0 <__libc_fini_array+0x2c>)
 80054c8:	4d0a      	ldr	r5, [pc, #40]	; (80054f4 <__libc_fini_array+0x30>)
 80054ca:	1b64      	subs	r4, r4, r5
 80054cc:	10a4      	asrs	r4, r4, #2
 80054ce:	d00a      	beq.n	80054e6 <__libc_fini_array+0x22>
 80054d0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80054d4:	3b01      	subs	r3, #1
 80054d6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80054da:	3c01      	subs	r4, #1
 80054dc:	f855 3904 	ldr.w	r3, [r5], #-4
 80054e0:	4798      	blx	r3
 80054e2:	2c00      	cmp	r4, #0
 80054e4:	d1f9      	bne.n	80054da <__libc_fini_array+0x16>
 80054e6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80054ea:	f001 befd 	b.w	80072e8 <_fini>
 80054ee:	bf00      	nop
 80054f0:	080076b4 	.word	0x080076b4
 80054f4:	080076b0 	.word	0x080076b0

080054f8 <_malloc_trim_r>:
 80054f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80054fa:	4f24      	ldr	r7, [pc, #144]	; (800558c <_malloc_trim_r+0x94>)
 80054fc:	460c      	mov	r4, r1
 80054fe:	4606      	mov	r6, r0
 8005500:	f000 fe7c 	bl	80061fc <__malloc_lock>
 8005504:	68bb      	ldr	r3, [r7, #8]
 8005506:	685d      	ldr	r5, [r3, #4]
 8005508:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800550c:	310f      	adds	r1, #15
 800550e:	f025 0503 	bic.w	r5, r5, #3
 8005512:	4429      	add	r1, r5
 8005514:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005518:	f021 010f 	bic.w	r1, r1, #15
 800551c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005520:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005524:	db07      	blt.n	8005536 <_malloc_trim_r+0x3e>
 8005526:	2100      	movs	r1, #0
 8005528:	4630      	mov	r0, r6
 800552a:	f001 fb5f 	bl	8006bec <_sbrk_r>
 800552e:	68bb      	ldr	r3, [r7, #8]
 8005530:	442b      	add	r3, r5
 8005532:	4298      	cmp	r0, r3
 8005534:	d004      	beq.n	8005540 <_malloc_trim_r+0x48>
 8005536:	4630      	mov	r0, r6
 8005538:	f000 fe66 	bl	8006208 <__malloc_unlock>
 800553c:	2000      	movs	r0, #0
 800553e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005540:	4261      	negs	r1, r4
 8005542:	4630      	mov	r0, r6
 8005544:	f001 fb52 	bl	8006bec <_sbrk_r>
 8005548:	3001      	adds	r0, #1
 800554a:	d00d      	beq.n	8005568 <_malloc_trim_r+0x70>
 800554c:	4b10      	ldr	r3, [pc, #64]	; (8005590 <_malloc_trim_r+0x98>)
 800554e:	68ba      	ldr	r2, [r7, #8]
 8005550:	6819      	ldr	r1, [r3, #0]
 8005552:	1b2d      	subs	r5, r5, r4
 8005554:	f045 0501 	orr.w	r5, r5, #1
 8005558:	4630      	mov	r0, r6
 800555a:	1b09      	subs	r1, r1, r4
 800555c:	6055      	str	r5, [r2, #4]
 800555e:	6019      	str	r1, [r3, #0]
 8005560:	f000 fe52 	bl	8006208 <__malloc_unlock>
 8005564:	2001      	movs	r0, #1
 8005566:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005568:	2100      	movs	r1, #0
 800556a:	4630      	mov	r0, r6
 800556c:	f001 fb3e 	bl	8006bec <_sbrk_r>
 8005570:	68ba      	ldr	r2, [r7, #8]
 8005572:	1a83      	subs	r3, r0, r2
 8005574:	2b0f      	cmp	r3, #15
 8005576:	ddde      	ble.n	8005536 <_malloc_trim_r+0x3e>
 8005578:	4c06      	ldr	r4, [pc, #24]	; (8005594 <_malloc_trim_r+0x9c>)
 800557a:	4905      	ldr	r1, [pc, #20]	; (8005590 <_malloc_trim_r+0x98>)
 800557c:	6824      	ldr	r4, [r4, #0]
 800557e:	f043 0301 	orr.w	r3, r3, #1
 8005582:	1b00      	subs	r0, r0, r4
 8005584:	6053      	str	r3, [r2, #4]
 8005586:	6008      	str	r0, [r1, #0]
 8005588:	e7d5      	b.n	8005536 <_malloc_trim_r+0x3e>
 800558a:	bf00      	nop
 800558c:	200004b4 	.word	0x200004b4
 8005590:	20001cec 	.word	0x20001cec
 8005594:	200008bc 	.word	0x200008bc

08005598 <_free_r>:
 8005598:	2900      	cmp	r1, #0
 800559a:	d053      	beq.n	8005644 <_free_r+0xac>
 800559c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800559e:	460c      	mov	r4, r1
 80055a0:	4606      	mov	r6, r0
 80055a2:	f000 fe2b 	bl	80061fc <__malloc_lock>
 80055a6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80055aa:	4f71      	ldr	r7, [pc, #452]	; (8005770 <_free_r+0x1d8>)
 80055ac:	f02c 0101 	bic.w	r1, ip, #1
 80055b0:	f1a4 0508 	sub.w	r5, r4, #8
 80055b4:	186b      	adds	r3, r5, r1
 80055b6:	68b8      	ldr	r0, [r7, #8]
 80055b8:	685a      	ldr	r2, [r3, #4]
 80055ba:	4298      	cmp	r0, r3
 80055bc:	f022 0203 	bic.w	r2, r2, #3
 80055c0:	d053      	beq.n	800566a <_free_r+0xd2>
 80055c2:	f01c 0f01 	tst.w	ip, #1
 80055c6:	605a      	str	r2, [r3, #4]
 80055c8:	eb03 0002 	add.w	r0, r3, r2
 80055cc:	d13b      	bne.n	8005646 <_free_r+0xae>
 80055ce:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80055d2:	6840      	ldr	r0, [r0, #4]
 80055d4:	eba5 050c 	sub.w	r5, r5, ip
 80055d8:	f107 0e08 	add.w	lr, r7, #8
 80055dc:	68ac      	ldr	r4, [r5, #8]
 80055de:	4574      	cmp	r4, lr
 80055e0:	4461      	add	r1, ip
 80055e2:	f000 0001 	and.w	r0, r0, #1
 80055e6:	d075      	beq.n	80056d4 <_free_r+0x13c>
 80055e8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80055ec:	f8c4 c00c 	str.w	ip, [r4, #12]
 80055f0:	f8cc 4008 	str.w	r4, [ip, #8]
 80055f4:	b360      	cbz	r0, 8005650 <_free_r+0xb8>
 80055f6:	f041 0301 	orr.w	r3, r1, #1
 80055fa:	606b      	str	r3, [r5, #4]
 80055fc:	5069      	str	r1, [r5, r1]
 80055fe:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005602:	d350      	bcc.n	80056a6 <_free_r+0x10e>
 8005604:	0a4b      	lsrs	r3, r1, #9
 8005606:	2b04      	cmp	r3, #4
 8005608:	d870      	bhi.n	80056ec <_free_r+0x154>
 800560a:	098b      	lsrs	r3, r1, #6
 800560c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005610:	00e4      	lsls	r4, r4, #3
 8005612:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005616:	1938      	adds	r0, r7, r4
 8005618:	593b      	ldr	r3, [r7, r4]
 800561a:	3808      	subs	r0, #8
 800561c:	4298      	cmp	r0, r3
 800561e:	d078      	beq.n	8005712 <_free_r+0x17a>
 8005620:	685a      	ldr	r2, [r3, #4]
 8005622:	f022 0203 	bic.w	r2, r2, #3
 8005626:	428a      	cmp	r2, r1
 8005628:	d971      	bls.n	800570e <_free_r+0x176>
 800562a:	689b      	ldr	r3, [r3, #8]
 800562c:	4298      	cmp	r0, r3
 800562e:	d1f7      	bne.n	8005620 <_free_r+0x88>
 8005630:	68c3      	ldr	r3, [r0, #12]
 8005632:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005636:	609d      	str	r5, [r3, #8]
 8005638:	60c5      	str	r5, [r0, #12]
 800563a:	4630      	mov	r0, r6
 800563c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005640:	f000 bde2 	b.w	8006208 <__malloc_unlock>
 8005644:	4770      	bx	lr
 8005646:	6840      	ldr	r0, [r0, #4]
 8005648:	f000 0001 	and.w	r0, r0, #1
 800564c:	2800      	cmp	r0, #0
 800564e:	d1d2      	bne.n	80055f6 <_free_r+0x5e>
 8005650:	6898      	ldr	r0, [r3, #8]
 8005652:	4c48      	ldr	r4, [pc, #288]	; (8005774 <_free_r+0x1dc>)
 8005654:	4411      	add	r1, r2
 8005656:	42a0      	cmp	r0, r4
 8005658:	f041 0201 	orr.w	r2, r1, #1
 800565c:	d062      	beq.n	8005724 <_free_r+0x18c>
 800565e:	68db      	ldr	r3, [r3, #12]
 8005660:	60c3      	str	r3, [r0, #12]
 8005662:	6098      	str	r0, [r3, #8]
 8005664:	606a      	str	r2, [r5, #4]
 8005666:	5069      	str	r1, [r5, r1]
 8005668:	e7c9      	b.n	80055fe <_free_r+0x66>
 800566a:	f01c 0f01 	tst.w	ip, #1
 800566e:	440a      	add	r2, r1
 8005670:	d107      	bne.n	8005682 <_free_r+0xea>
 8005672:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005676:	1aed      	subs	r5, r5, r3
 8005678:	441a      	add	r2, r3
 800567a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800567e:	60cb      	str	r3, [r1, #12]
 8005680:	6099      	str	r1, [r3, #8]
 8005682:	4b3d      	ldr	r3, [pc, #244]	; (8005778 <_free_r+0x1e0>)
 8005684:	681b      	ldr	r3, [r3, #0]
 8005686:	f042 0101 	orr.w	r1, r2, #1
 800568a:	4293      	cmp	r3, r2
 800568c:	6069      	str	r1, [r5, #4]
 800568e:	60bd      	str	r5, [r7, #8]
 8005690:	d804      	bhi.n	800569c <_free_r+0x104>
 8005692:	4b3a      	ldr	r3, [pc, #232]	; (800577c <_free_r+0x1e4>)
 8005694:	4630      	mov	r0, r6
 8005696:	6819      	ldr	r1, [r3, #0]
 8005698:	f7ff ff2e 	bl	80054f8 <_malloc_trim_r>
 800569c:	4630      	mov	r0, r6
 800569e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80056a2:	f000 bdb1 	b.w	8006208 <__malloc_unlock>
 80056a6:	08c9      	lsrs	r1, r1, #3
 80056a8:	6878      	ldr	r0, [r7, #4]
 80056aa:	1c4a      	adds	r2, r1, #1
 80056ac:	2301      	movs	r3, #1
 80056ae:	1089      	asrs	r1, r1, #2
 80056b0:	408b      	lsls	r3, r1
 80056b2:	4303      	orrs	r3, r0
 80056b4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80056b8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80056bc:	607b      	str	r3, [r7, #4]
 80056be:	3908      	subs	r1, #8
 80056c0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80056c4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80056c8:	60c5      	str	r5, [r0, #12]
 80056ca:	4630      	mov	r0, r6
 80056cc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80056d0:	f000 bd9a 	b.w	8006208 <__malloc_unlock>
 80056d4:	2800      	cmp	r0, #0
 80056d6:	d145      	bne.n	8005764 <_free_r+0x1cc>
 80056d8:	440a      	add	r2, r1
 80056da:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80056de:	f042 0001 	orr.w	r0, r2, #1
 80056e2:	60cb      	str	r3, [r1, #12]
 80056e4:	6099      	str	r1, [r3, #8]
 80056e6:	6068      	str	r0, [r5, #4]
 80056e8:	50aa      	str	r2, [r5, r2]
 80056ea:	e7d7      	b.n	800569c <_free_r+0x104>
 80056ec:	2b14      	cmp	r3, #20
 80056ee:	d908      	bls.n	8005702 <_free_r+0x16a>
 80056f0:	2b54      	cmp	r3, #84	; 0x54
 80056f2:	d81e      	bhi.n	8005732 <_free_r+0x19a>
 80056f4:	0b0b      	lsrs	r3, r1, #12
 80056f6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 80056fa:	00e4      	lsls	r4, r4, #3
 80056fc:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005700:	e789      	b.n	8005616 <_free_r+0x7e>
 8005702:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005706:	00e4      	lsls	r4, r4, #3
 8005708:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800570c:	e783      	b.n	8005616 <_free_r+0x7e>
 800570e:	4618      	mov	r0, r3
 8005710:	e78e      	b.n	8005630 <_free_r+0x98>
 8005712:	1093      	asrs	r3, r2, #2
 8005714:	6879      	ldr	r1, [r7, #4]
 8005716:	2201      	movs	r2, #1
 8005718:	fa02 f303 	lsl.w	r3, r2, r3
 800571c:	430b      	orrs	r3, r1
 800571e:	607b      	str	r3, [r7, #4]
 8005720:	4603      	mov	r3, r0
 8005722:	e786      	b.n	8005632 <_free_r+0x9a>
 8005724:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005728:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800572c:	606a      	str	r2, [r5, #4]
 800572e:	5069      	str	r1, [r5, r1]
 8005730:	e7b4      	b.n	800569c <_free_r+0x104>
 8005732:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005736:	d806      	bhi.n	8005746 <_free_r+0x1ae>
 8005738:	0bcb      	lsrs	r3, r1, #15
 800573a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800573e:	00e4      	lsls	r4, r4, #3
 8005740:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005744:	e767      	b.n	8005616 <_free_r+0x7e>
 8005746:	f240 5254 	movw	r2, #1364	; 0x554
 800574a:	4293      	cmp	r3, r2
 800574c:	d806      	bhi.n	800575c <_free_r+0x1c4>
 800574e:	0c8b      	lsrs	r3, r1, #18
 8005750:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005754:	00e4      	lsls	r4, r4, #3
 8005756:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800575a:	e75c      	b.n	8005616 <_free_r+0x7e>
 800575c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005760:	227e      	movs	r2, #126	; 0x7e
 8005762:	e758      	b.n	8005616 <_free_r+0x7e>
 8005764:	f041 0201 	orr.w	r2, r1, #1
 8005768:	606a      	str	r2, [r5, #4]
 800576a:	6019      	str	r1, [r3, #0]
 800576c:	e796      	b.n	800569c <_free_r+0x104>
 800576e:	bf00      	nop
 8005770:	200004b4 	.word	0x200004b4
 8005774:	200004bc 	.word	0x200004bc
 8005778:	200008c0 	.word	0x200008c0
 800577c:	20001d1c 	.word	0x20001d1c

08005780 <__sfvwrite_r>:
 8005780:	6893      	ldr	r3, [r2, #8]
 8005782:	2b00      	cmp	r3, #0
 8005784:	f000 80e4 	beq.w	8005950 <__sfvwrite_r+0x1d0>
 8005788:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800578c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005790:	b29b      	uxth	r3, r3
 8005792:	460c      	mov	r4, r1
 8005794:	0719      	lsls	r1, r3, #28
 8005796:	b083      	sub	sp, #12
 8005798:	4682      	mov	sl, r0
 800579a:	4690      	mov	r8, r2
 800579c:	d535      	bpl.n	800580a <__sfvwrite_r+0x8a>
 800579e:	6922      	ldr	r2, [r4, #16]
 80057a0:	b39a      	cbz	r2, 800580a <__sfvwrite_r+0x8a>
 80057a2:	f013 0202 	ands.w	r2, r3, #2
 80057a6:	f8d8 6000 	ldr.w	r6, [r8]
 80057aa:	d03d      	beq.n	8005828 <__sfvwrite_r+0xa8>
 80057ac:	2700      	movs	r7, #0
 80057ae:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80057b2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80057b6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005a78 <__sfvwrite_r+0x2f8>
 80057ba:	463d      	mov	r5, r7
 80057bc:	454d      	cmp	r5, r9
 80057be:	462b      	mov	r3, r5
 80057c0:	463a      	mov	r2, r7
 80057c2:	bf28      	it	cs
 80057c4:	464b      	movcs	r3, r9
 80057c6:	4661      	mov	r1, ip
 80057c8:	4650      	mov	r0, sl
 80057ca:	b1d5      	cbz	r5, 8005802 <__sfvwrite_r+0x82>
 80057cc:	47d8      	blx	fp
 80057ce:	2800      	cmp	r0, #0
 80057d0:	f340 80c6 	ble.w	8005960 <__sfvwrite_r+0x1e0>
 80057d4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80057d8:	1a1b      	subs	r3, r3, r0
 80057da:	4407      	add	r7, r0
 80057dc:	1a2d      	subs	r5, r5, r0
 80057de:	f8c8 3008 	str.w	r3, [r8, #8]
 80057e2:	2b00      	cmp	r3, #0
 80057e4:	f000 80b0 	beq.w	8005948 <__sfvwrite_r+0x1c8>
 80057e8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80057ec:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80057f0:	454d      	cmp	r5, r9
 80057f2:	462b      	mov	r3, r5
 80057f4:	463a      	mov	r2, r7
 80057f6:	bf28      	it	cs
 80057f8:	464b      	movcs	r3, r9
 80057fa:	4661      	mov	r1, ip
 80057fc:	4650      	mov	r0, sl
 80057fe:	2d00      	cmp	r5, #0
 8005800:	d1e4      	bne.n	80057cc <__sfvwrite_r+0x4c>
 8005802:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005806:	3608      	adds	r6, #8
 8005808:	e7d8      	b.n	80057bc <__sfvwrite_r+0x3c>
 800580a:	4621      	mov	r1, r4
 800580c:	4650      	mov	r0, sl
 800580e:	f7fe fd03 	bl	8004218 <__swsetup_r>
 8005812:	2800      	cmp	r0, #0
 8005814:	f040 812a 	bne.w	8005a6c <__sfvwrite_r+0x2ec>
 8005818:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800581c:	f8d8 6000 	ldr.w	r6, [r8]
 8005820:	b29b      	uxth	r3, r3
 8005822:	f013 0202 	ands.w	r2, r3, #2
 8005826:	d1c1      	bne.n	80057ac <__sfvwrite_r+0x2c>
 8005828:	f013 0901 	ands.w	r9, r3, #1
 800582c:	d15d      	bne.n	80058ea <__sfvwrite_r+0x16a>
 800582e:	68a7      	ldr	r7, [r4, #8]
 8005830:	6820      	ldr	r0, [r4, #0]
 8005832:	464d      	mov	r5, r9
 8005834:	2d00      	cmp	r5, #0
 8005836:	d054      	beq.n	80058e2 <__sfvwrite_r+0x162>
 8005838:	059a      	lsls	r2, r3, #22
 800583a:	f140 809b 	bpl.w	8005974 <__sfvwrite_r+0x1f4>
 800583e:	42af      	cmp	r7, r5
 8005840:	46bb      	mov	fp, r7
 8005842:	f200 80d8 	bhi.w	80059f6 <__sfvwrite_r+0x276>
 8005846:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800584a:	d02f      	beq.n	80058ac <__sfvwrite_r+0x12c>
 800584c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005850:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005854:	eba0 0b01 	sub.w	fp, r0, r1
 8005858:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800585c:	1c68      	adds	r0, r5, #1
 800585e:	107f      	asrs	r7, r7, #1
 8005860:	4458      	add	r0, fp
 8005862:	42b8      	cmp	r0, r7
 8005864:	463a      	mov	r2, r7
 8005866:	bf84      	itt	hi
 8005868:	4607      	movhi	r7, r0
 800586a:	463a      	movhi	r2, r7
 800586c:	055b      	lsls	r3, r3, #21
 800586e:	f140 80d3 	bpl.w	8005a18 <__sfvwrite_r+0x298>
 8005872:	4611      	mov	r1, r2
 8005874:	4650      	mov	r0, sl
 8005876:	f000 f9b9 	bl	8005bec <_malloc_r>
 800587a:	2800      	cmp	r0, #0
 800587c:	f000 80f0 	beq.w	8005a60 <__sfvwrite_r+0x2e0>
 8005880:	465a      	mov	r2, fp
 8005882:	6921      	ldr	r1, [r4, #16]
 8005884:	9001      	str	r0, [sp, #4]
 8005886:	f7fa fe3b 	bl	8000500 <memcpy>
 800588a:	89a2      	ldrh	r2, [r4, #12]
 800588c:	9b01      	ldr	r3, [sp, #4]
 800588e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8005892:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8005896:	81a2      	strh	r2, [r4, #12]
 8005898:	eba7 020b 	sub.w	r2, r7, fp
 800589c:	eb03 000b 	add.w	r0, r3, fp
 80058a0:	6167      	str	r7, [r4, #20]
 80058a2:	6123      	str	r3, [r4, #16]
 80058a4:	6020      	str	r0, [r4, #0]
 80058a6:	60a2      	str	r2, [r4, #8]
 80058a8:	462f      	mov	r7, r5
 80058aa:	46ab      	mov	fp, r5
 80058ac:	465a      	mov	r2, fp
 80058ae:	4649      	mov	r1, r9
 80058b0:	f000 fc40 	bl	8006134 <memmove>
 80058b4:	68a2      	ldr	r2, [r4, #8]
 80058b6:	6823      	ldr	r3, [r4, #0]
 80058b8:	1bd2      	subs	r2, r2, r7
 80058ba:	445b      	add	r3, fp
 80058bc:	462f      	mov	r7, r5
 80058be:	60a2      	str	r2, [r4, #8]
 80058c0:	6023      	str	r3, [r4, #0]
 80058c2:	2500      	movs	r5, #0
 80058c4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80058c8:	1bdb      	subs	r3, r3, r7
 80058ca:	44b9      	add	r9, r7
 80058cc:	f8c8 3008 	str.w	r3, [r8, #8]
 80058d0:	2b00      	cmp	r3, #0
 80058d2:	d039      	beq.n	8005948 <__sfvwrite_r+0x1c8>
 80058d4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058d8:	68a7      	ldr	r7, [r4, #8]
 80058da:	6820      	ldr	r0, [r4, #0]
 80058dc:	b29b      	uxth	r3, r3
 80058de:	2d00      	cmp	r5, #0
 80058e0:	d1aa      	bne.n	8005838 <__sfvwrite_r+0xb8>
 80058e2:	e9d6 9500 	ldrd	r9, r5, [r6]
 80058e6:	3608      	adds	r6, #8
 80058e8:	e7a4      	b.n	8005834 <__sfvwrite_r+0xb4>
 80058ea:	4633      	mov	r3, r6
 80058ec:	4691      	mov	r9, r2
 80058ee:	4610      	mov	r0, r2
 80058f0:	4617      	mov	r7, r2
 80058f2:	464e      	mov	r6, r9
 80058f4:	469b      	mov	fp, r3
 80058f6:	2f00      	cmp	r7, #0
 80058f8:	d06b      	beq.n	80059d2 <__sfvwrite_r+0x252>
 80058fa:	2800      	cmp	r0, #0
 80058fc:	d071      	beq.n	80059e2 <__sfvwrite_r+0x262>
 80058fe:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005902:	6820      	ldr	r0, [r4, #0]
 8005904:	45b9      	cmp	r9, r7
 8005906:	464b      	mov	r3, r9
 8005908:	bf28      	it	cs
 800590a:	463b      	movcs	r3, r7
 800590c:	4288      	cmp	r0, r1
 800590e:	d903      	bls.n	8005918 <__sfvwrite_r+0x198>
 8005910:	68a5      	ldr	r5, [r4, #8]
 8005912:	4415      	add	r5, r2
 8005914:	42ab      	cmp	r3, r5
 8005916:	dc71      	bgt.n	80059fc <__sfvwrite_r+0x27c>
 8005918:	429a      	cmp	r2, r3
 800591a:	f300 8093 	bgt.w	8005a44 <__sfvwrite_r+0x2c4>
 800591e:	4613      	mov	r3, r2
 8005920:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005922:	69e1      	ldr	r1, [r4, #28]
 8005924:	4632      	mov	r2, r6
 8005926:	4650      	mov	r0, sl
 8005928:	47a8      	blx	r5
 800592a:	1e05      	subs	r5, r0, #0
 800592c:	dd18      	ble.n	8005960 <__sfvwrite_r+0x1e0>
 800592e:	ebb9 0905 	subs.w	r9, r9, r5
 8005932:	d00f      	beq.n	8005954 <__sfvwrite_r+0x1d4>
 8005934:	2001      	movs	r0, #1
 8005936:	f8d8 3008 	ldr.w	r3, [r8, #8]
 800593a:	1b5b      	subs	r3, r3, r5
 800593c:	442e      	add	r6, r5
 800593e:	1b7f      	subs	r7, r7, r5
 8005940:	f8c8 3008 	str.w	r3, [r8, #8]
 8005944:	2b00      	cmp	r3, #0
 8005946:	d1d6      	bne.n	80058f6 <__sfvwrite_r+0x176>
 8005948:	2000      	movs	r0, #0
 800594a:	b003      	add	sp, #12
 800594c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005950:	2000      	movs	r0, #0
 8005952:	4770      	bx	lr
 8005954:	4621      	mov	r1, r4
 8005956:	4650      	mov	r0, sl
 8005958:	f7ff fd20 	bl	800539c <_fflush_r>
 800595c:	2800      	cmp	r0, #0
 800595e:	d0ea      	beq.n	8005936 <__sfvwrite_r+0x1b6>
 8005960:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005964:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005968:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800596c:	81a3      	strh	r3, [r4, #12]
 800596e:	b003      	add	sp, #12
 8005970:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005974:	6923      	ldr	r3, [r4, #16]
 8005976:	4283      	cmp	r3, r0
 8005978:	d315      	bcc.n	80059a6 <__sfvwrite_r+0x226>
 800597a:	6961      	ldr	r1, [r4, #20]
 800597c:	42a9      	cmp	r1, r5
 800597e:	d812      	bhi.n	80059a6 <__sfvwrite_r+0x226>
 8005980:	4b3c      	ldr	r3, [pc, #240]	; (8005a74 <__sfvwrite_r+0x2f4>)
 8005982:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005984:	429d      	cmp	r5, r3
 8005986:	bf94      	ite	ls
 8005988:	462b      	movls	r3, r5
 800598a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 800598e:	464a      	mov	r2, r9
 8005990:	fb93 f3f1 	sdiv	r3, r3, r1
 8005994:	4650      	mov	r0, sl
 8005996:	fb01 f303 	mul.w	r3, r1, r3
 800599a:	69e1      	ldr	r1, [r4, #28]
 800599c:	47b8      	blx	r7
 800599e:	1e07      	subs	r7, r0, #0
 80059a0:	ddde      	ble.n	8005960 <__sfvwrite_r+0x1e0>
 80059a2:	1bed      	subs	r5, r5, r7
 80059a4:	e78e      	b.n	80058c4 <__sfvwrite_r+0x144>
 80059a6:	42af      	cmp	r7, r5
 80059a8:	bf28      	it	cs
 80059aa:	462f      	movcs	r7, r5
 80059ac:	463a      	mov	r2, r7
 80059ae:	4649      	mov	r1, r9
 80059b0:	f000 fbc0 	bl	8006134 <memmove>
 80059b4:	68a3      	ldr	r3, [r4, #8]
 80059b6:	6822      	ldr	r2, [r4, #0]
 80059b8:	1bdb      	subs	r3, r3, r7
 80059ba:	443a      	add	r2, r7
 80059bc:	60a3      	str	r3, [r4, #8]
 80059be:	6022      	str	r2, [r4, #0]
 80059c0:	2b00      	cmp	r3, #0
 80059c2:	d1ee      	bne.n	80059a2 <__sfvwrite_r+0x222>
 80059c4:	4621      	mov	r1, r4
 80059c6:	4650      	mov	r0, sl
 80059c8:	f7ff fce8 	bl	800539c <_fflush_r>
 80059cc:	2800      	cmp	r0, #0
 80059ce:	d0e8      	beq.n	80059a2 <__sfvwrite_r+0x222>
 80059d0:	e7c6      	b.n	8005960 <__sfvwrite_r+0x1e0>
 80059d2:	f10b 0308 	add.w	r3, fp, #8
 80059d6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 80059da:	469b      	mov	fp, r3
 80059dc:	3308      	adds	r3, #8
 80059de:	2f00      	cmp	r7, #0
 80059e0:	d0f9      	beq.n	80059d6 <__sfvwrite_r+0x256>
 80059e2:	463a      	mov	r2, r7
 80059e4:	210a      	movs	r1, #10
 80059e6:	4630      	mov	r0, r6
 80059e8:	f7fa fe9a 	bl	8000720 <memchr>
 80059ec:	b338      	cbz	r0, 8005a3e <__sfvwrite_r+0x2be>
 80059ee:	3001      	adds	r0, #1
 80059f0:	eba0 0906 	sub.w	r9, r0, r6
 80059f4:	e783      	b.n	80058fe <__sfvwrite_r+0x17e>
 80059f6:	462f      	mov	r7, r5
 80059f8:	46ab      	mov	fp, r5
 80059fa:	e757      	b.n	80058ac <__sfvwrite_r+0x12c>
 80059fc:	4631      	mov	r1, r6
 80059fe:	462a      	mov	r2, r5
 8005a00:	f000 fb98 	bl	8006134 <memmove>
 8005a04:	6823      	ldr	r3, [r4, #0]
 8005a06:	442b      	add	r3, r5
 8005a08:	6023      	str	r3, [r4, #0]
 8005a0a:	4621      	mov	r1, r4
 8005a0c:	4650      	mov	r0, sl
 8005a0e:	f7ff fcc5 	bl	800539c <_fflush_r>
 8005a12:	2800      	cmp	r0, #0
 8005a14:	d08b      	beq.n	800592e <__sfvwrite_r+0x1ae>
 8005a16:	e7a3      	b.n	8005960 <__sfvwrite_r+0x1e0>
 8005a18:	4650      	mov	r0, sl
 8005a1a:	f000 ff05 	bl	8006828 <_realloc_r>
 8005a1e:	4603      	mov	r3, r0
 8005a20:	2800      	cmp	r0, #0
 8005a22:	f47f af39 	bne.w	8005898 <__sfvwrite_r+0x118>
 8005a26:	6921      	ldr	r1, [r4, #16]
 8005a28:	4650      	mov	r0, sl
 8005a2a:	f7ff fdb5 	bl	8005598 <_free_r>
 8005a2e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a32:	220c      	movs	r2, #12
 8005a34:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005a38:	f8ca 2000 	str.w	r2, [sl]
 8005a3c:	e792      	b.n	8005964 <__sfvwrite_r+0x1e4>
 8005a3e:	f107 0901 	add.w	r9, r7, #1
 8005a42:	e75c      	b.n	80058fe <__sfvwrite_r+0x17e>
 8005a44:	461a      	mov	r2, r3
 8005a46:	4631      	mov	r1, r6
 8005a48:	9301      	str	r3, [sp, #4]
 8005a4a:	f000 fb73 	bl	8006134 <memmove>
 8005a4e:	9b01      	ldr	r3, [sp, #4]
 8005a50:	68a1      	ldr	r1, [r4, #8]
 8005a52:	6822      	ldr	r2, [r4, #0]
 8005a54:	1ac9      	subs	r1, r1, r3
 8005a56:	441a      	add	r2, r3
 8005a58:	60a1      	str	r1, [r4, #8]
 8005a5a:	6022      	str	r2, [r4, #0]
 8005a5c:	461d      	mov	r5, r3
 8005a5e:	e766      	b.n	800592e <__sfvwrite_r+0x1ae>
 8005a60:	230c      	movs	r3, #12
 8005a62:	f8ca 3000 	str.w	r3, [sl]
 8005a66:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a6a:	e77b      	b.n	8005964 <__sfvwrite_r+0x1e4>
 8005a6c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a70:	e76b      	b.n	800594a <__sfvwrite_r+0x1ca>
 8005a72:	bf00      	nop
 8005a74:	7ffffffe 	.word	0x7ffffffe
 8005a78:	7ffffc00 	.word	0x7ffffc00

08005a7c <_fwalk_reent>:
 8005a7c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005a80:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005a84:	d01f      	beq.n	8005ac6 <_fwalk_reent+0x4a>
 8005a86:	4688      	mov	r8, r1
 8005a88:	4606      	mov	r6, r0
 8005a8a:	f04f 0900 	mov.w	r9, #0
 8005a8e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005a92:	3d01      	subs	r5, #1
 8005a94:	d411      	bmi.n	8005aba <_fwalk_reent+0x3e>
 8005a96:	89a3      	ldrh	r3, [r4, #12]
 8005a98:	2b01      	cmp	r3, #1
 8005a9a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005a9e:	4621      	mov	r1, r4
 8005aa0:	4630      	mov	r0, r6
 8005aa2:	d906      	bls.n	8005ab2 <_fwalk_reent+0x36>
 8005aa4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005aa8:	3301      	adds	r3, #1
 8005aaa:	d002      	beq.n	8005ab2 <_fwalk_reent+0x36>
 8005aac:	47c0      	blx	r8
 8005aae:	ea49 0900 	orr.w	r9, r9, r0
 8005ab2:	1c6b      	adds	r3, r5, #1
 8005ab4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005ab8:	d1ed      	bne.n	8005a96 <_fwalk_reent+0x1a>
 8005aba:	683f      	ldr	r7, [r7, #0]
 8005abc:	2f00      	cmp	r7, #0
 8005abe:	d1e6      	bne.n	8005a8e <_fwalk_reent+0x12>
 8005ac0:	4648      	mov	r0, r9
 8005ac2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005ac6:	46b9      	mov	r9, r7
 8005ac8:	4648      	mov	r0, r9
 8005aca:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005ace:	bf00      	nop

08005ad0 <_localeconv_r>:
 8005ad0:	4a04      	ldr	r2, [pc, #16]	; (8005ae4 <_localeconv_r+0x14>)
 8005ad2:	4b05      	ldr	r3, [pc, #20]	; (8005ae8 <_localeconv_r+0x18>)
 8005ad4:	6812      	ldr	r2, [r2, #0]
 8005ad6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005ad8:	2800      	cmp	r0, #0
 8005ada:	bf08      	it	eq
 8005adc:	4618      	moveq	r0, r3
 8005ade:	30f0      	adds	r0, #240	; 0xf0
 8005ae0:	4770      	bx	lr
 8005ae2:	bf00      	nop
 8005ae4:	20000080 	.word	0x20000080
 8005ae8:	200008c4 	.word	0x200008c4

08005aec <__retarget_lock_init_recursive>:
 8005aec:	4770      	bx	lr
 8005aee:	bf00      	nop

08005af0 <__retarget_lock_close_recursive>:
 8005af0:	4770      	bx	lr
 8005af2:	bf00      	nop

08005af4 <__retarget_lock_acquire_recursive>:
 8005af4:	4770      	bx	lr
 8005af6:	bf00      	nop

08005af8 <__retarget_lock_release_recursive>:
 8005af8:	4770      	bx	lr
 8005afa:	bf00      	nop

08005afc <__swhatbuf_r>:
 8005afc:	b570      	push	{r4, r5, r6, lr}
 8005afe:	460c      	mov	r4, r1
 8005b00:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005b04:	2900      	cmp	r1, #0
 8005b06:	b096      	sub	sp, #88	; 0x58
 8005b08:	4615      	mov	r5, r2
 8005b0a:	461e      	mov	r6, r3
 8005b0c:	da0f      	bge.n	8005b2e <__swhatbuf_r+0x32>
 8005b0e:	89a2      	ldrh	r2, [r4, #12]
 8005b10:	2300      	movs	r3, #0
 8005b12:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005b16:	6033      	str	r3, [r6, #0]
 8005b18:	d104      	bne.n	8005b24 <__swhatbuf_r+0x28>
 8005b1a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005b1e:	602b      	str	r3, [r5, #0]
 8005b20:	b016      	add	sp, #88	; 0x58
 8005b22:	bd70      	pop	{r4, r5, r6, pc}
 8005b24:	2240      	movs	r2, #64	; 0x40
 8005b26:	4618      	mov	r0, r3
 8005b28:	602a      	str	r2, [r5, #0]
 8005b2a:	b016      	add	sp, #88	; 0x58
 8005b2c:	bd70      	pop	{r4, r5, r6, pc}
 8005b2e:	466a      	mov	r2, sp
 8005b30:	f001 fad0 	bl	80070d4 <_fstat_r>
 8005b34:	2800      	cmp	r0, #0
 8005b36:	dbea      	blt.n	8005b0e <__swhatbuf_r+0x12>
 8005b38:	9b01      	ldr	r3, [sp, #4]
 8005b3a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005b3e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005b42:	fab3 f383 	clz	r3, r3
 8005b46:	095b      	lsrs	r3, r3, #5
 8005b48:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005b4c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005b50:	6033      	str	r3, [r6, #0]
 8005b52:	602a      	str	r2, [r5, #0]
 8005b54:	b016      	add	sp, #88	; 0x58
 8005b56:	bd70      	pop	{r4, r5, r6, pc}

08005b58 <__smakebuf_r>:
 8005b58:	898a      	ldrh	r2, [r1, #12]
 8005b5a:	0792      	lsls	r2, r2, #30
 8005b5c:	460b      	mov	r3, r1
 8005b5e:	d506      	bpl.n	8005b6e <__smakebuf_r+0x16>
 8005b60:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005b64:	2101      	movs	r1, #1
 8005b66:	601a      	str	r2, [r3, #0]
 8005b68:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005b6c:	4770      	bx	lr
 8005b6e:	b570      	push	{r4, r5, r6, lr}
 8005b70:	b082      	sub	sp, #8
 8005b72:	ab01      	add	r3, sp, #4
 8005b74:	466a      	mov	r2, sp
 8005b76:	460c      	mov	r4, r1
 8005b78:	4605      	mov	r5, r0
 8005b7a:	f7ff ffbf 	bl	8005afc <__swhatbuf_r>
 8005b7e:	9900      	ldr	r1, [sp, #0]
 8005b80:	4606      	mov	r6, r0
 8005b82:	4628      	mov	r0, r5
 8005b84:	f000 f832 	bl	8005bec <_malloc_r>
 8005b88:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b8c:	b1d8      	cbz	r0, 8005bc6 <__smakebuf_r+0x6e>
 8005b8e:	4916      	ldr	r1, [pc, #88]	; (8005be8 <__smakebuf_r+0x90>)
 8005b90:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005b92:	9a01      	ldr	r2, [sp, #4]
 8005b94:	9900      	ldr	r1, [sp, #0]
 8005b96:	6020      	str	r0, [r4, #0]
 8005b98:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005b9c:	81a3      	strh	r3, [r4, #12]
 8005b9e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005ba2:	b91a      	cbnz	r2, 8005bac <__smakebuf_r+0x54>
 8005ba4:	4333      	orrs	r3, r6
 8005ba6:	81a3      	strh	r3, [r4, #12]
 8005ba8:	b002      	add	sp, #8
 8005baa:	bd70      	pop	{r4, r5, r6, pc}
 8005bac:	4628      	mov	r0, r5
 8005bae:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005bb2:	f001 faa3 	bl	80070fc <_isatty_r>
 8005bb6:	b1a0      	cbz	r0, 8005be2 <__smakebuf_r+0x8a>
 8005bb8:	89a3      	ldrh	r3, [r4, #12]
 8005bba:	f023 0303 	bic.w	r3, r3, #3
 8005bbe:	f043 0301 	orr.w	r3, r3, #1
 8005bc2:	b21b      	sxth	r3, r3
 8005bc4:	e7ee      	b.n	8005ba4 <__smakebuf_r+0x4c>
 8005bc6:	059a      	lsls	r2, r3, #22
 8005bc8:	d4ee      	bmi.n	8005ba8 <__smakebuf_r+0x50>
 8005bca:	f023 0303 	bic.w	r3, r3, #3
 8005bce:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005bd2:	f043 0302 	orr.w	r3, r3, #2
 8005bd6:	2101      	movs	r1, #1
 8005bd8:	81a3      	strh	r3, [r4, #12]
 8005bda:	6022      	str	r2, [r4, #0]
 8005bdc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005be0:	e7e2      	b.n	8005ba8 <__smakebuf_r+0x50>
 8005be2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005be6:	e7dd      	b.n	8005ba4 <__smakebuf_r+0x4c>
 8005be8:	08005449 	.word	0x08005449

08005bec <_malloc_r>:
 8005bec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005bf0:	f101 050b 	add.w	r5, r1, #11
 8005bf4:	2d16      	cmp	r5, #22
 8005bf6:	b083      	sub	sp, #12
 8005bf8:	4606      	mov	r6, r0
 8005bfa:	d823      	bhi.n	8005c44 <_malloc_r+0x58>
 8005bfc:	2910      	cmp	r1, #16
 8005bfe:	f200 80b9 	bhi.w	8005d74 <_malloc_r+0x188>
 8005c02:	f000 fafb 	bl	80061fc <__malloc_lock>
 8005c06:	2510      	movs	r5, #16
 8005c08:	2318      	movs	r3, #24
 8005c0a:	2002      	movs	r0, #2
 8005c0c:	4fc5      	ldr	r7, [pc, #788]	; (8005f24 <_malloc_r+0x338>)
 8005c0e:	443b      	add	r3, r7
 8005c10:	f1a3 0208 	sub.w	r2, r3, #8
 8005c14:	685c      	ldr	r4, [r3, #4]
 8005c16:	4294      	cmp	r4, r2
 8005c18:	f000 8166 	beq.w	8005ee8 <_malloc_r+0x2fc>
 8005c1c:	6863      	ldr	r3, [r4, #4]
 8005c1e:	f023 0303 	bic.w	r3, r3, #3
 8005c22:	4423      	add	r3, r4
 8005c24:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005c28:	685a      	ldr	r2, [r3, #4]
 8005c2a:	60e9      	str	r1, [r5, #12]
 8005c2c:	f042 0201 	orr.w	r2, r2, #1
 8005c30:	608d      	str	r5, [r1, #8]
 8005c32:	4630      	mov	r0, r6
 8005c34:	605a      	str	r2, [r3, #4]
 8005c36:	f000 fae7 	bl	8006208 <__malloc_unlock>
 8005c3a:	3408      	adds	r4, #8
 8005c3c:	4620      	mov	r0, r4
 8005c3e:	b003      	add	sp, #12
 8005c40:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005c44:	f035 0507 	bics.w	r5, r5, #7
 8005c48:	f100 8094 	bmi.w	8005d74 <_malloc_r+0x188>
 8005c4c:	42a9      	cmp	r1, r5
 8005c4e:	f200 8091 	bhi.w	8005d74 <_malloc_r+0x188>
 8005c52:	f000 fad3 	bl	80061fc <__malloc_lock>
 8005c56:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005c5a:	f0c0 8183 	bcc.w	8005f64 <_malloc_r+0x378>
 8005c5e:	0a6b      	lsrs	r3, r5, #9
 8005c60:	f000 808f 	beq.w	8005d82 <_malloc_r+0x196>
 8005c64:	2b04      	cmp	r3, #4
 8005c66:	f200 8146 	bhi.w	8005ef6 <_malloc_r+0x30a>
 8005c6a:	09ab      	lsrs	r3, r5, #6
 8005c6c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005c70:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005c74:	00c3      	lsls	r3, r0, #3
 8005c76:	4fab      	ldr	r7, [pc, #684]	; (8005f24 <_malloc_r+0x338>)
 8005c78:	443b      	add	r3, r7
 8005c7a:	f1a3 0108 	sub.w	r1, r3, #8
 8005c7e:	685c      	ldr	r4, [r3, #4]
 8005c80:	42a1      	cmp	r1, r4
 8005c82:	d106      	bne.n	8005c92 <_malloc_r+0xa6>
 8005c84:	e00c      	b.n	8005ca0 <_malloc_r+0xb4>
 8005c86:	2a00      	cmp	r2, #0
 8005c88:	f280 811d 	bge.w	8005ec6 <_malloc_r+0x2da>
 8005c8c:	68e4      	ldr	r4, [r4, #12]
 8005c8e:	42a1      	cmp	r1, r4
 8005c90:	d006      	beq.n	8005ca0 <_malloc_r+0xb4>
 8005c92:	6863      	ldr	r3, [r4, #4]
 8005c94:	f023 0303 	bic.w	r3, r3, #3
 8005c98:	1b5a      	subs	r2, r3, r5
 8005c9a:	2a0f      	cmp	r2, #15
 8005c9c:	ddf3      	ble.n	8005c86 <_malloc_r+0x9a>
 8005c9e:	4660      	mov	r0, ip
 8005ca0:	693c      	ldr	r4, [r7, #16]
 8005ca2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005f38 <_malloc_r+0x34c>
 8005ca6:	4564      	cmp	r4, ip
 8005ca8:	d071      	beq.n	8005d8e <_malloc_r+0x1a2>
 8005caa:	6863      	ldr	r3, [r4, #4]
 8005cac:	f023 0303 	bic.w	r3, r3, #3
 8005cb0:	1b5a      	subs	r2, r3, r5
 8005cb2:	2a0f      	cmp	r2, #15
 8005cb4:	f300 8144 	bgt.w	8005f40 <_malloc_r+0x354>
 8005cb8:	2a00      	cmp	r2, #0
 8005cba:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005cbe:	f280 8126 	bge.w	8005f0e <_malloc_r+0x322>
 8005cc2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005cc6:	f080 8169 	bcs.w	8005f9c <_malloc_r+0x3b0>
 8005cca:	08db      	lsrs	r3, r3, #3
 8005ccc:	1c59      	adds	r1, r3, #1
 8005cce:	687a      	ldr	r2, [r7, #4]
 8005cd0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005cd4:	f8c4 8008 	str.w	r8, [r4, #8]
 8005cd8:	f04f 0e01 	mov.w	lr, #1
 8005cdc:	109b      	asrs	r3, r3, #2
 8005cde:	fa0e f303 	lsl.w	r3, lr, r3
 8005ce2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005ce6:	4313      	orrs	r3, r2
 8005ce8:	f1ae 0208 	sub.w	r2, lr, #8
 8005cec:	60e2      	str	r2, [r4, #12]
 8005cee:	607b      	str	r3, [r7, #4]
 8005cf0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005cf4:	f8c8 400c 	str.w	r4, [r8, #12]
 8005cf8:	1082      	asrs	r2, r0, #2
 8005cfa:	2401      	movs	r4, #1
 8005cfc:	4094      	lsls	r4, r2
 8005cfe:	429c      	cmp	r4, r3
 8005d00:	d84b      	bhi.n	8005d9a <_malloc_r+0x1ae>
 8005d02:	421c      	tst	r4, r3
 8005d04:	d106      	bne.n	8005d14 <_malloc_r+0x128>
 8005d06:	f020 0003 	bic.w	r0, r0, #3
 8005d0a:	0064      	lsls	r4, r4, #1
 8005d0c:	421c      	tst	r4, r3
 8005d0e:	f100 0004 	add.w	r0, r0, #4
 8005d12:	d0fa      	beq.n	8005d0a <_malloc_r+0x11e>
 8005d14:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005d18:	46ce      	mov	lr, r9
 8005d1a:	4680      	mov	r8, r0
 8005d1c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005d20:	459e      	cmp	lr, r3
 8005d22:	d107      	bne.n	8005d34 <_malloc_r+0x148>
 8005d24:	e122      	b.n	8005f6c <_malloc_r+0x380>
 8005d26:	2a00      	cmp	r2, #0
 8005d28:	f280 8129 	bge.w	8005f7e <_malloc_r+0x392>
 8005d2c:	68db      	ldr	r3, [r3, #12]
 8005d2e:	459e      	cmp	lr, r3
 8005d30:	f000 811c 	beq.w	8005f6c <_malloc_r+0x380>
 8005d34:	6859      	ldr	r1, [r3, #4]
 8005d36:	f021 0103 	bic.w	r1, r1, #3
 8005d3a:	1b4a      	subs	r2, r1, r5
 8005d3c:	2a0f      	cmp	r2, #15
 8005d3e:	ddf2      	ble.n	8005d26 <_malloc_r+0x13a>
 8005d40:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005d44:	195c      	adds	r4, r3, r5
 8005d46:	f045 0501 	orr.w	r5, r5, #1
 8005d4a:	605d      	str	r5, [r3, #4]
 8005d4c:	f042 0501 	orr.w	r5, r2, #1
 8005d50:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005d54:	4630      	mov	r0, r6
 8005d56:	f8ce 8008 	str.w	r8, [lr, #8]
 8005d5a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005d5e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005d62:	6065      	str	r5, [r4, #4]
 8005d64:	505a      	str	r2, [r3, r1]
 8005d66:	9301      	str	r3, [sp, #4]
 8005d68:	f000 fa4e 	bl	8006208 <__malloc_unlock>
 8005d6c:	9b01      	ldr	r3, [sp, #4]
 8005d6e:	f103 0408 	add.w	r4, r3, #8
 8005d72:	e763      	b.n	8005c3c <_malloc_r+0x50>
 8005d74:	2400      	movs	r4, #0
 8005d76:	230c      	movs	r3, #12
 8005d78:	4620      	mov	r0, r4
 8005d7a:	6033      	str	r3, [r6, #0]
 8005d7c:	b003      	add	sp, #12
 8005d7e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d82:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005d86:	2040      	movs	r0, #64	; 0x40
 8005d88:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005d8c:	e773      	b.n	8005c76 <_malloc_r+0x8a>
 8005d8e:	687b      	ldr	r3, [r7, #4]
 8005d90:	1082      	asrs	r2, r0, #2
 8005d92:	2401      	movs	r4, #1
 8005d94:	4094      	lsls	r4, r2
 8005d96:	429c      	cmp	r4, r3
 8005d98:	d9b3      	bls.n	8005d02 <_malloc_r+0x116>
 8005d9a:	68bc      	ldr	r4, [r7, #8]
 8005d9c:	6863      	ldr	r3, [r4, #4]
 8005d9e:	f023 0903 	bic.w	r9, r3, #3
 8005da2:	45a9      	cmp	r9, r5
 8005da4:	d303      	bcc.n	8005dae <_malloc_r+0x1c2>
 8005da6:	eba9 0305 	sub.w	r3, r9, r5
 8005daa:	2b0f      	cmp	r3, #15
 8005dac:	dc7b      	bgt.n	8005ea6 <_malloc_r+0x2ba>
 8005dae:	4b5e      	ldr	r3, [pc, #376]	; (8005f28 <_malloc_r+0x33c>)
 8005db0:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005f3c <_malloc_r+0x350>
 8005db4:	681a      	ldr	r2, [r3, #0]
 8005db6:	f8da 3000 	ldr.w	r3, [sl]
 8005dba:	3301      	adds	r3, #1
 8005dbc:	eb05 0802 	add.w	r8, r5, r2
 8005dc0:	f000 8148 	beq.w	8006054 <_malloc_r+0x468>
 8005dc4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005dc8:	f108 080f 	add.w	r8, r8, #15
 8005dcc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005dd0:	f028 080f 	bic.w	r8, r8, #15
 8005dd4:	4641      	mov	r1, r8
 8005dd6:	4630      	mov	r0, r6
 8005dd8:	f000 ff08 	bl	8006bec <_sbrk_r>
 8005ddc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005de0:	4683      	mov	fp, r0
 8005de2:	f000 8104 	beq.w	8005fee <_malloc_r+0x402>
 8005de6:	eb04 0009 	add.w	r0, r4, r9
 8005dea:	4558      	cmp	r0, fp
 8005dec:	f200 80fd 	bhi.w	8005fea <_malloc_r+0x3fe>
 8005df0:	4a4e      	ldr	r2, [pc, #312]	; (8005f2c <_malloc_r+0x340>)
 8005df2:	6813      	ldr	r3, [r2, #0]
 8005df4:	4443      	add	r3, r8
 8005df6:	6013      	str	r3, [r2, #0]
 8005df8:	f000 814d 	beq.w	8006096 <_malloc_r+0x4aa>
 8005dfc:	f8da 1000 	ldr.w	r1, [sl]
 8005e00:	3101      	adds	r1, #1
 8005e02:	bf1b      	ittet	ne
 8005e04:	ebab 0000 	subne.w	r0, fp, r0
 8005e08:	181b      	addne	r3, r3, r0
 8005e0a:	f8ca b000 	streq.w	fp, [sl]
 8005e0e:	6013      	strne	r3, [r2, #0]
 8005e10:	f01b 0307 	ands.w	r3, fp, #7
 8005e14:	f000 8134 	beq.w	8006080 <_malloc_r+0x494>
 8005e18:	f1c3 0108 	rsb	r1, r3, #8
 8005e1c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005e20:	448b      	add	fp, r1
 8005e22:	3308      	adds	r3, #8
 8005e24:	44d8      	add	r8, fp
 8005e26:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005e2a:	eba3 0808 	sub.w	r8, r3, r8
 8005e2e:	4641      	mov	r1, r8
 8005e30:	4630      	mov	r0, r6
 8005e32:	9201      	str	r2, [sp, #4]
 8005e34:	f000 feda 	bl	8006bec <_sbrk_r>
 8005e38:	1c43      	adds	r3, r0, #1
 8005e3a:	9a01      	ldr	r2, [sp, #4]
 8005e3c:	f000 8146 	beq.w	80060cc <_malloc_r+0x4e0>
 8005e40:	eba0 010b 	sub.w	r1, r0, fp
 8005e44:	4441      	add	r1, r8
 8005e46:	f041 0101 	orr.w	r1, r1, #1
 8005e4a:	6813      	ldr	r3, [r2, #0]
 8005e4c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005e50:	4443      	add	r3, r8
 8005e52:	42bc      	cmp	r4, r7
 8005e54:	f8cb 1004 	str.w	r1, [fp, #4]
 8005e58:	6013      	str	r3, [r2, #0]
 8005e5a:	d015      	beq.n	8005e88 <_malloc_r+0x29c>
 8005e5c:	f1b9 0f0f 	cmp.w	r9, #15
 8005e60:	f240 8130 	bls.w	80060c4 <_malloc_r+0x4d8>
 8005e64:	6860      	ldr	r0, [r4, #4]
 8005e66:	f1a9 010c 	sub.w	r1, r9, #12
 8005e6a:	f021 0107 	bic.w	r1, r1, #7
 8005e6e:	f000 0001 	and.w	r0, r0, #1
 8005e72:	eb04 0c01 	add.w	ip, r4, r1
 8005e76:	4308      	orrs	r0, r1
 8005e78:	f04f 0e05 	mov.w	lr, #5
 8005e7c:	290f      	cmp	r1, #15
 8005e7e:	6060      	str	r0, [r4, #4]
 8005e80:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005e84:	f200 813a 	bhi.w	80060fc <_malloc_r+0x510>
 8005e88:	4a29      	ldr	r2, [pc, #164]	; (8005f30 <_malloc_r+0x344>)
 8005e8a:	482a      	ldr	r0, [pc, #168]	; (8005f34 <_malloc_r+0x348>)
 8005e8c:	6811      	ldr	r1, [r2, #0]
 8005e8e:	68bc      	ldr	r4, [r7, #8]
 8005e90:	428b      	cmp	r3, r1
 8005e92:	6801      	ldr	r1, [r0, #0]
 8005e94:	bf88      	it	hi
 8005e96:	6013      	strhi	r3, [r2, #0]
 8005e98:	6862      	ldr	r2, [r4, #4]
 8005e9a:	428b      	cmp	r3, r1
 8005e9c:	f022 0203 	bic.w	r2, r2, #3
 8005ea0:	bf88      	it	hi
 8005ea2:	6003      	strhi	r3, [r0, #0]
 8005ea4:	e0a7      	b.n	8005ff6 <_malloc_r+0x40a>
 8005ea6:	1962      	adds	r2, r4, r5
 8005ea8:	f043 0301 	orr.w	r3, r3, #1
 8005eac:	f045 0501 	orr.w	r5, r5, #1
 8005eb0:	6065      	str	r5, [r4, #4]
 8005eb2:	4630      	mov	r0, r6
 8005eb4:	60ba      	str	r2, [r7, #8]
 8005eb6:	6053      	str	r3, [r2, #4]
 8005eb8:	f000 f9a6 	bl	8006208 <__malloc_unlock>
 8005ebc:	3408      	adds	r4, #8
 8005ebe:	4620      	mov	r0, r4
 8005ec0:	b003      	add	sp, #12
 8005ec2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ec6:	4423      	add	r3, r4
 8005ec8:	68e1      	ldr	r1, [r4, #12]
 8005eca:	685a      	ldr	r2, [r3, #4]
 8005ecc:	68a5      	ldr	r5, [r4, #8]
 8005ece:	f042 0201 	orr.w	r2, r2, #1
 8005ed2:	60e9      	str	r1, [r5, #12]
 8005ed4:	4630      	mov	r0, r6
 8005ed6:	608d      	str	r5, [r1, #8]
 8005ed8:	605a      	str	r2, [r3, #4]
 8005eda:	f000 f995 	bl	8006208 <__malloc_unlock>
 8005ede:	3408      	adds	r4, #8
 8005ee0:	4620      	mov	r0, r4
 8005ee2:	b003      	add	sp, #12
 8005ee4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ee8:	68dc      	ldr	r4, [r3, #12]
 8005eea:	42a3      	cmp	r3, r4
 8005eec:	bf08      	it	eq
 8005eee:	3002      	addeq	r0, #2
 8005ef0:	f43f aed6 	beq.w	8005ca0 <_malloc_r+0xb4>
 8005ef4:	e692      	b.n	8005c1c <_malloc_r+0x30>
 8005ef6:	2b14      	cmp	r3, #20
 8005ef8:	d971      	bls.n	8005fde <_malloc_r+0x3f2>
 8005efa:	2b54      	cmp	r3, #84	; 0x54
 8005efc:	f200 80ad 	bhi.w	800605a <_malloc_r+0x46e>
 8005f00:	0b2b      	lsrs	r3, r5, #12
 8005f02:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005f06:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005f0a:	00c3      	lsls	r3, r0, #3
 8005f0c:	e6b3      	b.n	8005c76 <_malloc_r+0x8a>
 8005f0e:	4423      	add	r3, r4
 8005f10:	4630      	mov	r0, r6
 8005f12:	685a      	ldr	r2, [r3, #4]
 8005f14:	f042 0201 	orr.w	r2, r2, #1
 8005f18:	605a      	str	r2, [r3, #4]
 8005f1a:	3408      	adds	r4, #8
 8005f1c:	f000 f974 	bl	8006208 <__malloc_unlock>
 8005f20:	e68c      	b.n	8005c3c <_malloc_r+0x50>
 8005f22:	bf00      	nop
 8005f24:	200004b4 	.word	0x200004b4
 8005f28:	20001d1c 	.word	0x20001d1c
 8005f2c:	20001cec 	.word	0x20001cec
 8005f30:	20001d14 	.word	0x20001d14
 8005f34:	20001d18 	.word	0x20001d18
 8005f38:	200004bc 	.word	0x200004bc
 8005f3c:	200008bc 	.word	0x200008bc
 8005f40:	1961      	adds	r1, r4, r5
 8005f42:	f045 0e01 	orr.w	lr, r5, #1
 8005f46:	f042 0501 	orr.w	r5, r2, #1
 8005f4a:	f8c4 e004 	str.w	lr, [r4, #4]
 8005f4e:	4630      	mov	r0, r6
 8005f50:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005f54:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005f58:	604d      	str	r5, [r1, #4]
 8005f5a:	50e2      	str	r2, [r4, r3]
 8005f5c:	f000 f954 	bl	8006208 <__malloc_unlock>
 8005f60:	3408      	adds	r4, #8
 8005f62:	e66b      	b.n	8005c3c <_malloc_r+0x50>
 8005f64:	08e8      	lsrs	r0, r5, #3
 8005f66:	f105 0308 	add.w	r3, r5, #8
 8005f6a:	e64f      	b.n	8005c0c <_malloc_r+0x20>
 8005f6c:	f108 0801 	add.w	r8, r8, #1
 8005f70:	f018 0f03 	tst.w	r8, #3
 8005f74:	f10e 0e08 	add.w	lr, lr, #8
 8005f78:	f47f aed0 	bne.w	8005d1c <_malloc_r+0x130>
 8005f7c:	e052      	b.n	8006024 <_malloc_r+0x438>
 8005f7e:	4419      	add	r1, r3
 8005f80:	461c      	mov	r4, r3
 8005f82:	684a      	ldr	r2, [r1, #4]
 8005f84:	68db      	ldr	r3, [r3, #12]
 8005f86:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005f8a:	f042 0201 	orr.w	r2, r2, #1
 8005f8e:	604a      	str	r2, [r1, #4]
 8005f90:	4630      	mov	r0, r6
 8005f92:	60eb      	str	r3, [r5, #12]
 8005f94:	609d      	str	r5, [r3, #8]
 8005f96:	f000 f937 	bl	8006208 <__malloc_unlock>
 8005f9a:	e64f      	b.n	8005c3c <_malloc_r+0x50>
 8005f9c:	0a5a      	lsrs	r2, r3, #9
 8005f9e:	2a04      	cmp	r2, #4
 8005fa0:	d935      	bls.n	800600e <_malloc_r+0x422>
 8005fa2:	2a14      	cmp	r2, #20
 8005fa4:	d86f      	bhi.n	8006086 <_malloc_r+0x49a>
 8005fa6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005faa:	00c9      	lsls	r1, r1, #3
 8005fac:	325b      	adds	r2, #91	; 0x5b
 8005fae:	eb07 0e01 	add.w	lr, r7, r1
 8005fb2:	5879      	ldr	r1, [r7, r1]
 8005fb4:	f1ae 0e08 	sub.w	lr, lr, #8
 8005fb8:	458e      	cmp	lr, r1
 8005fba:	d058      	beq.n	800606e <_malloc_r+0x482>
 8005fbc:	684a      	ldr	r2, [r1, #4]
 8005fbe:	f022 0203 	bic.w	r2, r2, #3
 8005fc2:	429a      	cmp	r2, r3
 8005fc4:	d902      	bls.n	8005fcc <_malloc_r+0x3e0>
 8005fc6:	6889      	ldr	r1, [r1, #8]
 8005fc8:	458e      	cmp	lr, r1
 8005fca:	d1f7      	bne.n	8005fbc <_malloc_r+0x3d0>
 8005fcc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005fd0:	687b      	ldr	r3, [r7, #4]
 8005fd2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005fd6:	f8ce 4008 	str.w	r4, [lr, #8]
 8005fda:	60cc      	str	r4, [r1, #12]
 8005fdc:	e68c      	b.n	8005cf8 <_malloc_r+0x10c>
 8005fde:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005fe2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005fe6:	00c3      	lsls	r3, r0, #3
 8005fe8:	e645      	b.n	8005c76 <_malloc_r+0x8a>
 8005fea:	42bc      	cmp	r4, r7
 8005fec:	d072      	beq.n	80060d4 <_malloc_r+0x4e8>
 8005fee:	68bc      	ldr	r4, [r7, #8]
 8005ff0:	6862      	ldr	r2, [r4, #4]
 8005ff2:	f022 0203 	bic.w	r2, r2, #3
 8005ff6:	4295      	cmp	r5, r2
 8005ff8:	eba2 0305 	sub.w	r3, r2, r5
 8005ffc:	d802      	bhi.n	8006004 <_malloc_r+0x418>
 8005ffe:	2b0f      	cmp	r3, #15
 8006000:	f73f af51 	bgt.w	8005ea6 <_malloc_r+0x2ba>
 8006004:	4630      	mov	r0, r6
 8006006:	f000 f8ff 	bl	8006208 <__malloc_unlock>
 800600a:	2400      	movs	r4, #0
 800600c:	e616      	b.n	8005c3c <_malloc_r+0x50>
 800600e:	099a      	lsrs	r2, r3, #6
 8006010:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006014:	00c9      	lsls	r1, r1, #3
 8006016:	3238      	adds	r2, #56	; 0x38
 8006018:	e7c9      	b.n	8005fae <_malloc_r+0x3c2>
 800601a:	f8d9 9000 	ldr.w	r9, [r9]
 800601e:	4599      	cmp	r9, r3
 8006020:	f040 8083 	bne.w	800612a <_malloc_r+0x53e>
 8006024:	f010 0f03 	tst.w	r0, #3
 8006028:	f1a9 0308 	sub.w	r3, r9, #8
 800602c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006030:	d1f3      	bne.n	800601a <_malloc_r+0x42e>
 8006032:	687b      	ldr	r3, [r7, #4]
 8006034:	ea23 0304 	bic.w	r3, r3, r4
 8006038:	607b      	str	r3, [r7, #4]
 800603a:	0064      	lsls	r4, r4, #1
 800603c:	429c      	cmp	r4, r3
 800603e:	f63f aeac 	bhi.w	8005d9a <_malloc_r+0x1ae>
 8006042:	b91c      	cbnz	r4, 800604c <_malloc_r+0x460>
 8006044:	e6a9      	b.n	8005d9a <_malloc_r+0x1ae>
 8006046:	0064      	lsls	r4, r4, #1
 8006048:	f108 0804 	add.w	r8, r8, #4
 800604c:	421c      	tst	r4, r3
 800604e:	d0fa      	beq.n	8006046 <_malloc_r+0x45a>
 8006050:	4640      	mov	r0, r8
 8006052:	e65f      	b.n	8005d14 <_malloc_r+0x128>
 8006054:	f108 0810 	add.w	r8, r8, #16
 8006058:	e6bc      	b.n	8005dd4 <_malloc_r+0x1e8>
 800605a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800605e:	d826      	bhi.n	80060ae <_malloc_r+0x4c2>
 8006060:	0beb      	lsrs	r3, r5, #15
 8006062:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006066:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800606a:	00c3      	lsls	r3, r0, #3
 800606c:	e603      	b.n	8005c76 <_malloc_r+0x8a>
 800606e:	687b      	ldr	r3, [r7, #4]
 8006070:	1092      	asrs	r2, r2, #2
 8006072:	f04f 0801 	mov.w	r8, #1
 8006076:	fa08 f202 	lsl.w	r2, r8, r2
 800607a:	4313      	orrs	r3, r2
 800607c:	607b      	str	r3, [r7, #4]
 800607e:	e7a8      	b.n	8005fd2 <_malloc_r+0x3e6>
 8006080:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006084:	e6ce      	b.n	8005e24 <_malloc_r+0x238>
 8006086:	2a54      	cmp	r2, #84	; 0x54
 8006088:	d829      	bhi.n	80060de <_malloc_r+0x4f2>
 800608a:	0b1a      	lsrs	r2, r3, #12
 800608c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8006090:	00c9      	lsls	r1, r1, #3
 8006092:	326e      	adds	r2, #110	; 0x6e
 8006094:	e78b      	b.n	8005fae <_malloc_r+0x3c2>
 8006096:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800609a:	2900      	cmp	r1, #0
 800609c:	f47f aeae 	bne.w	8005dfc <_malloc_r+0x210>
 80060a0:	eb09 0208 	add.w	r2, r9, r8
 80060a4:	68b9      	ldr	r1, [r7, #8]
 80060a6:	f042 0201 	orr.w	r2, r2, #1
 80060aa:	604a      	str	r2, [r1, #4]
 80060ac:	e6ec      	b.n	8005e88 <_malloc_r+0x29c>
 80060ae:	f240 5254 	movw	r2, #1364	; 0x554
 80060b2:	4293      	cmp	r3, r2
 80060b4:	d81c      	bhi.n	80060f0 <_malloc_r+0x504>
 80060b6:	0cab      	lsrs	r3, r5, #18
 80060b8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80060bc:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80060c0:	00c3      	lsls	r3, r0, #3
 80060c2:	e5d8      	b.n	8005c76 <_malloc_r+0x8a>
 80060c4:	2301      	movs	r3, #1
 80060c6:	f8cb 3004 	str.w	r3, [fp, #4]
 80060ca:	e79b      	b.n	8006004 <_malloc_r+0x418>
 80060cc:	2101      	movs	r1, #1
 80060ce:	f04f 0800 	mov.w	r8, #0
 80060d2:	e6ba      	b.n	8005e4a <_malloc_r+0x25e>
 80060d4:	4a16      	ldr	r2, [pc, #88]	; (8006130 <_malloc_r+0x544>)
 80060d6:	6813      	ldr	r3, [r2, #0]
 80060d8:	4443      	add	r3, r8
 80060da:	6013      	str	r3, [r2, #0]
 80060dc:	e68e      	b.n	8005dfc <_malloc_r+0x210>
 80060de:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80060e2:	d814      	bhi.n	800610e <_malloc_r+0x522>
 80060e4:	0bda      	lsrs	r2, r3, #15
 80060e6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80060ea:	00c9      	lsls	r1, r1, #3
 80060ec:	3277      	adds	r2, #119	; 0x77
 80060ee:	e75e      	b.n	8005fae <_malloc_r+0x3c2>
 80060f0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 80060f4:	207f      	movs	r0, #127	; 0x7f
 80060f6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 80060fa:	e5bc      	b.n	8005c76 <_malloc_r+0x8a>
 80060fc:	f104 0108 	add.w	r1, r4, #8
 8006100:	4630      	mov	r0, r6
 8006102:	9201      	str	r2, [sp, #4]
 8006104:	f7ff fa48 	bl	8005598 <_free_r>
 8006108:	9a01      	ldr	r2, [sp, #4]
 800610a:	6813      	ldr	r3, [r2, #0]
 800610c:	e6bc      	b.n	8005e88 <_malloc_r+0x29c>
 800610e:	f240 5154 	movw	r1, #1364	; 0x554
 8006112:	428a      	cmp	r2, r1
 8006114:	d805      	bhi.n	8006122 <_malloc_r+0x536>
 8006116:	0c9a      	lsrs	r2, r3, #18
 8006118:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800611c:	00c9      	lsls	r1, r1, #3
 800611e:	327c      	adds	r2, #124	; 0x7c
 8006120:	e745      	b.n	8005fae <_malloc_r+0x3c2>
 8006122:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006126:	227e      	movs	r2, #126	; 0x7e
 8006128:	e741      	b.n	8005fae <_malloc_r+0x3c2>
 800612a:	687b      	ldr	r3, [r7, #4]
 800612c:	e785      	b.n	800603a <_malloc_r+0x44e>
 800612e:	bf00      	nop
 8006130:	20001cec 	.word	0x20001cec

08006134 <memmove>:
 8006134:	4288      	cmp	r0, r1
 8006136:	b4f0      	push	{r4, r5, r6, r7}
 8006138:	d90d      	bls.n	8006156 <memmove+0x22>
 800613a:	188b      	adds	r3, r1, r2
 800613c:	4283      	cmp	r3, r0
 800613e:	d90a      	bls.n	8006156 <memmove+0x22>
 8006140:	1884      	adds	r4, r0, r2
 8006142:	b132      	cbz	r2, 8006152 <memmove+0x1e>
 8006144:	4622      	mov	r2, r4
 8006146:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800614a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800614e:	4299      	cmp	r1, r3
 8006150:	d1f9      	bne.n	8006146 <memmove+0x12>
 8006152:	bcf0      	pop	{r4, r5, r6, r7}
 8006154:	4770      	bx	lr
 8006156:	2a0f      	cmp	r2, #15
 8006158:	d949      	bls.n	80061ee <memmove+0xba>
 800615a:	ea40 0301 	orr.w	r3, r0, r1
 800615e:	079b      	lsls	r3, r3, #30
 8006160:	d147      	bne.n	80061f2 <memmove+0xbe>
 8006162:	f1a2 0310 	sub.w	r3, r2, #16
 8006166:	091b      	lsrs	r3, r3, #4
 8006168:	f101 0720 	add.w	r7, r1, #32
 800616c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006170:	f101 0410 	add.w	r4, r1, #16
 8006174:	f100 0510 	add.w	r5, r0, #16
 8006178:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800617c:	f845 6c10 	str.w	r6, [r5, #-16]
 8006180:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006184:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006188:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800618c:	f845 6c08 	str.w	r6, [r5, #-8]
 8006190:	f854 6c04 	ldr.w	r6, [r4, #-4]
 8006194:	f845 6c04 	str.w	r6, [r5, #-4]
 8006198:	3410      	adds	r4, #16
 800619a:	42bc      	cmp	r4, r7
 800619c:	f105 0510 	add.w	r5, r5, #16
 80061a0:	d1ea      	bne.n	8006178 <memmove+0x44>
 80061a2:	3301      	adds	r3, #1
 80061a4:	f002 050f 	and.w	r5, r2, #15
 80061a8:	011b      	lsls	r3, r3, #4
 80061aa:	2d03      	cmp	r5, #3
 80061ac:	4419      	add	r1, r3
 80061ae:	4403      	add	r3, r0
 80061b0:	d921      	bls.n	80061f6 <memmove+0xc2>
 80061b2:	1f1f      	subs	r7, r3, #4
 80061b4:	460e      	mov	r6, r1
 80061b6:	462c      	mov	r4, r5
 80061b8:	3c04      	subs	r4, #4
 80061ba:	f856 cb04 	ldr.w	ip, [r6], #4
 80061be:	f847 cf04 	str.w	ip, [r7, #4]!
 80061c2:	2c03      	cmp	r4, #3
 80061c4:	d8f8      	bhi.n	80061b8 <memmove+0x84>
 80061c6:	1f2c      	subs	r4, r5, #4
 80061c8:	f024 0403 	bic.w	r4, r4, #3
 80061cc:	3404      	adds	r4, #4
 80061ce:	4423      	add	r3, r4
 80061d0:	4421      	add	r1, r4
 80061d2:	f002 0203 	and.w	r2, r2, #3
 80061d6:	2a00      	cmp	r2, #0
 80061d8:	d0bb      	beq.n	8006152 <memmove+0x1e>
 80061da:	3b01      	subs	r3, #1
 80061dc:	440a      	add	r2, r1
 80061de:	f811 4b01 	ldrb.w	r4, [r1], #1
 80061e2:	f803 4f01 	strb.w	r4, [r3, #1]!
 80061e6:	4291      	cmp	r1, r2
 80061e8:	d1f9      	bne.n	80061de <memmove+0xaa>
 80061ea:	bcf0      	pop	{r4, r5, r6, r7}
 80061ec:	4770      	bx	lr
 80061ee:	4603      	mov	r3, r0
 80061f0:	e7f1      	b.n	80061d6 <memmove+0xa2>
 80061f2:	4603      	mov	r3, r0
 80061f4:	e7f1      	b.n	80061da <memmove+0xa6>
 80061f6:	462a      	mov	r2, r5
 80061f8:	e7ed      	b.n	80061d6 <memmove+0xa2>
 80061fa:	bf00      	nop

080061fc <__malloc_lock>:
 80061fc:	4801      	ldr	r0, [pc, #4]	; (8006204 <__malloc_lock+0x8>)
 80061fe:	f7ff bc79 	b.w	8005af4 <__retarget_lock_acquire_recursive>
 8006202:	bf00      	nop
 8006204:	20001d78 	.word	0x20001d78

08006208 <__malloc_unlock>:
 8006208:	4801      	ldr	r0, [pc, #4]	; (8006210 <__malloc_unlock+0x8>)
 800620a:	f7ff bc75 	b.w	8005af8 <__retarget_lock_release_recursive>
 800620e:	bf00      	nop
 8006210:	20001d78 	.word	0x20001d78

08006214 <_Balloc>:
 8006214:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006216:	b570      	push	{r4, r5, r6, lr}
 8006218:	4605      	mov	r5, r0
 800621a:	460c      	mov	r4, r1
 800621c:	b14b      	cbz	r3, 8006232 <_Balloc+0x1e>
 800621e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006222:	b180      	cbz	r0, 8006246 <_Balloc+0x32>
 8006224:	6802      	ldr	r2, [r0, #0]
 8006226:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800622a:	2300      	movs	r3, #0
 800622c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006230:	bd70      	pop	{r4, r5, r6, pc}
 8006232:	2221      	movs	r2, #33	; 0x21
 8006234:	2104      	movs	r1, #4
 8006236:	f000 fe1d 	bl	8006e74 <_calloc_r>
 800623a:	4603      	mov	r3, r0
 800623c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800623e:	2800      	cmp	r0, #0
 8006240:	d1ed      	bne.n	800621e <_Balloc+0xa>
 8006242:	2000      	movs	r0, #0
 8006244:	bd70      	pop	{r4, r5, r6, pc}
 8006246:	2101      	movs	r1, #1
 8006248:	fa01 f604 	lsl.w	r6, r1, r4
 800624c:	1d72      	adds	r2, r6, #5
 800624e:	4628      	mov	r0, r5
 8006250:	0092      	lsls	r2, r2, #2
 8006252:	f000 fe0f 	bl	8006e74 <_calloc_r>
 8006256:	2800      	cmp	r0, #0
 8006258:	d0f3      	beq.n	8006242 <_Balloc+0x2e>
 800625a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800625e:	e7e4      	b.n	800622a <_Balloc+0x16>

08006260 <_Bfree>:
 8006260:	b131      	cbz	r1, 8006270 <_Bfree+0x10>
 8006262:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006264:	684a      	ldr	r2, [r1, #4]
 8006266:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800626a:	6008      	str	r0, [r1, #0]
 800626c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006270:	4770      	bx	lr
 8006272:	bf00      	nop

08006274 <__multadd>:
 8006274:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006276:	690c      	ldr	r4, [r1, #16]
 8006278:	b083      	sub	sp, #12
 800627a:	460d      	mov	r5, r1
 800627c:	4606      	mov	r6, r0
 800627e:	f101 0c14 	add.w	ip, r1, #20
 8006282:	2700      	movs	r7, #0
 8006284:	f8dc 0000 	ldr.w	r0, [ip]
 8006288:	b281      	uxth	r1, r0
 800628a:	fb02 3301 	mla	r3, r2, r1, r3
 800628e:	0c01      	lsrs	r1, r0, #16
 8006290:	0c18      	lsrs	r0, r3, #16
 8006292:	fb02 0101 	mla	r1, r2, r1, r0
 8006296:	b29b      	uxth	r3, r3
 8006298:	3701      	adds	r7, #1
 800629a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800629e:	42bc      	cmp	r4, r7
 80062a0:	f84c 3b04 	str.w	r3, [ip], #4
 80062a4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80062a8:	dcec      	bgt.n	8006284 <__multadd+0x10>
 80062aa:	b13b      	cbz	r3, 80062bc <__multadd+0x48>
 80062ac:	68aa      	ldr	r2, [r5, #8]
 80062ae:	42a2      	cmp	r2, r4
 80062b0:	dd07      	ble.n	80062c2 <__multadd+0x4e>
 80062b2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80062b6:	3401      	adds	r4, #1
 80062b8:	6153      	str	r3, [r2, #20]
 80062ba:	612c      	str	r4, [r5, #16]
 80062bc:	4628      	mov	r0, r5
 80062be:	b003      	add	sp, #12
 80062c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80062c2:	6869      	ldr	r1, [r5, #4]
 80062c4:	9301      	str	r3, [sp, #4]
 80062c6:	3101      	adds	r1, #1
 80062c8:	4630      	mov	r0, r6
 80062ca:	f7ff ffa3 	bl	8006214 <_Balloc>
 80062ce:	692a      	ldr	r2, [r5, #16]
 80062d0:	3202      	adds	r2, #2
 80062d2:	f105 010c 	add.w	r1, r5, #12
 80062d6:	4607      	mov	r7, r0
 80062d8:	0092      	lsls	r2, r2, #2
 80062da:	300c      	adds	r0, #12
 80062dc:	f7fa f910 	bl	8000500 <memcpy>
 80062e0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80062e2:	6869      	ldr	r1, [r5, #4]
 80062e4:	9b01      	ldr	r3, [sp, #4]
 80062e6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80062ea:	6028      	str	r0, [r5, #0]
 80062ec:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 80062f0:	463d      	mov	r5, r7
 80062f2:	e7de      	b.n	80062b2 <__multadd+0x3e>

080062f4 <__hi0bits>:
 80062f4:	0c02      	lsrs	r2, r0, #16
 80062f6:	0412      	lsls	r2, r2, #16
 80062f8:	4603      	mov	r3, r0
 80062fa:	b9c2      	cbnz	r2, 800632e <__hi0bits+0x3a>
 80062fc:	0403      	lsls	r3, r0, #16
 80062fe:	2010      	movs	r0, #16
 8006300:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006304:	bf04      	itt	eq
 8006306:	021b      	lsleq	r3, r3, #8
 8006308:	3008      	addeq	r0, #8
 800630a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800630e:	bf04      	itt	eq
 8006310:	011b      	lsleq	r3, r3, #4
 8006312:	3004      	addeq	r0, #4
 8006314:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006318:	bf04      	itt	eq
 800631a:	009b      	lsleq	r3, r3, #2
 800631c:	3002      	addeq	r0, #2
 800631e:	2b00      	cmp	r3, #0
 8006320:	db04      	blt.n	800632c <__hi0bits+0x38>
 8006322:	005b      	lsls	r3, r3, #1
 8006324:	d501      	bpl.n	800632a <__hi0bits+0x36>
 8006326:	3001      	adds	r0, #1
 8006328:	4770      	bx	lr
 800632a:	2020      	movs	r0, #32
 800632c:	4770      	bx	lr
 800632e:	2000      	movs	r0, #0
 8006330:	e7e6      	b.n	8006300 <__hi0bits+0xc>
 8006332:	bf00      	nop

08006334 <__lo0bits>:
 8006334:	6803      	ldr	r3, [r0, #0]
 8006336:	f013 0207 	ands.w	r2, r3, #7
 800633a:	4601      	mov	r1, r0
 800633c:	d007      	beq.n	800634e <__lo0bits+0x1a>
 800633e:	07da      	lsls	r2, r3, #31
 8006340:	d41f      	bmi.n	8006382 <__lo0bits+0x4e>
 8006342:	0798      	lsls	r0, r3, #30
 8006344:	d51f      	bpl.n	8006386 <__lo0bits+0x52>
 8006346:	085b      	lsrs	r3, r3, #1
 8006348:	600b      	str	r3, [r1, #0]
 800634a:	2001      	movs	r0, #1
 800634c:	4770      	bx	lr
 800634e:	b298      	uxth	r0, r3
 8006350:	b1a0      	cbz	r0, 800637c <__lo0bits+0x48>
 8006352:	4610      	mov	r0, r2
 8006354:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006358:	bf04      	itt	eq
 800635a:	0a1b      	lsreq	r3, r3, #8
 800635c:	3008      	addeq	r0, #8
 800635e:	071a      	lsls	r2, r3, #28
 8006360:	bf04      	itt	eq
 8006362:	091b      	lsreq	r3, r3, #4
 8006364:	3004      	addeq	r0, #4
 8006366:	079a      	lsls	r2, r3, #30
 8006368:	bf04      	itt	eq
 800636a:	089b      	lsreq	r3, r3, #2
 800636c:	3002      	addeq	r0, #2
 800636e:	07da      	lsls	r2, r3, #31
 8006370:	d402      	bmi.n	8006378 <__lo0bits+0x44>
 8006372:	085b      	lsrs	r3, r3, #1
 8006374:	d00b      	beq.n	800638e <__lo0bits+0x5a>
 8006376:	3001      	adds	r0, #1
 8006378:	600b      	str	r3, [r1, #0]
 800637a:	4770      	bx	lr
 800637c:	0c1b      	lsrs	r3, r3, #16
 800637e:	2010      	movs	r0, #16
 8006380:	e7e8      	b.n	8006354 <__lo0bits+0x20>
 8006382:	2000      	movs	r0, #0
 8006384:	4770      	bx	lr
 8006386:	089b      	lsrs	r3, r3, #2
 8006388:	600b      	str	r3, [r1, #0]
 800638a:	2002      	movs	r0, #2
 800638c:	4770      	bx	lr
 800638e:	2020      	movs	r0, #32
 8006390:	4770      	bx	lr
 8006392:	bf00      	nop

08006394 <__i2b>:
 8006394:	b510      	push	{r4, lr}
 8006396:	460c      	mov	r4, r1
 8006398:	2101      	movs	r1, #1
 800639a:	f7ff ff3b 	bl	8006214 <_Balloc>
 800639e:	2201      	movs	r2, #1
 80063a0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80063a4:	bd10      	pop	{r4, pc}
 80063a6:	bf00      	nop

080063a8 <__multiply>:
 80063a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80063ac:	690e      	ldr	r6, [r1, #16]
 80063ae:	6914      	ldr	r4, [r2, #16]
 80063b0:	42a6      	cmp	r6, r4
 80063b2:	b083      	sub	sp, #12
 80063b4:	460f      	mov	r7, r1
 80063b6:	4615      	mov	r5, r2
 80063b8:	da04      	bge.n	80063c4 <__multiply+0x1c>
 80063ba:	4632      	mov	r2, r6
 80063bc:	462f      	mov	r7, r5
 80063be:	4626      	mov	r6, r4
 80063c0:	460d      	mov	r5, r1
 80063c2:	4614      	mov	r4, r2
 80063c4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80063c8:	eb06 0804 	add.w	r8, r6, r4
 80063cc:	4543      	cmp	r3, r8
 80063ce:	bfb8      	it	lt
 80063d0:	3101      	addlt	r1, #1
 80063d2:	f7ff ff1f 	bl	8006214 <_Balloc>
 80063d6:	f100 0914 	add.w	r9, r0, #20
 80063da:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80063de:	45f1      	cmp	r9, lr
 80063e0:	9000      	str	r0, [sp, #0]
 80063e2:	d205      	bcs.n	80063f0 <__multiply+0x48>
 80063e4:	464b      	mov	r3, r9
 80063e6:	2200      	movs	r2, #0
 80063e8:	f843 2b04 	str.w	r2, [r3], #4
 80063ec:	459e      	cmp	lr, r3
 80063ee:	d8fb      	bhi.n	80063e8 <__multiply+0x40>
 80063f0:	f105 0a14 	add.w	sl, r5, #20
 80063f4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 80063f8:	f107 0314 	add.w	r3, r7, #20
 80063fc:	45a2      	cmp	sl, r4
 80063fe:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006402:	d261      	bcs.n	80064c8 <__multiply+0x120>
 8006404:	1b64      	subs	r4, r4, r5
 8006406:	3c15      	subs	r4, #21
 8006408:	f024 0403 	bic.w	r4, r4, #3
 800640c:	f8cd e004 	str.w	lr, [sp, #4]
 8006410:	44a2      	add	sl, r4
 8006412:	f105 0210 	add.w	r2, r5, #16
 8006416:	469e      	mov	lr, r3
 8006418:	e005      	b.n	8006426 <__multiply+0x7e>
 800641a:	0c2d      	lsrs	r5, r5, #16
 800641c:	d12b      	bne.n	8006476 <__multiply+0xce>
 800641e:	4592      	cmp	sl, r2
 8006420:	f109 0904 	add.w	r9, r9, #4
 8006424:	d04e      	beq.n	80064c4 <__multiply+0x11c>
 8006426:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800642a:	fa1f fb85 	uxth.w	fp, r5
 800642e:	f1bb 0f00 	cmp.w	fp, #0
 8006432:	d0f2      	beq.n	800641a <__multiply+0x72>
 8006434:	4677      	mov	r7, lr
 8006436:	464e      	mov	r6, r9
 8006438:	2000      	movs	r0, #0
 800643a:	e000      	b.n	800643e <__multiply+0x96>
 800643c:	4626      	mov	r6, r4
 800643e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006442:	6834      	ldr	r4, [r6, #0]
 8006444:	b28b      	uxth	r3, r1
 8006446:	b2a5      	uxth	r5, r4
 8006448:	0c09      	lsrs	r1, r1, #16
 800644a:	0c24      	lsrs	r4, r4, #16
 800644c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006450:	4403      	add	r3, r0
 8006452:	fb0b 4001 	mla	r0, fp, r1, r4
 8006456:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800645a:	4634      	mov	r4, r6
 800645c:	b29b      	uxth	r3, r3
 800645e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006462:	45bc      	cmp	ip, r7
 8006464:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006468:	f844 3b04 	str.w	r3, [r4], #4
 800646c:	d8e6      	bhi.n	800643c <__multiply+0x94>
 800646e:	6070      	str	r0, [r6, #4]
 8006470:	6815      	ldr	r5, [r2, #0]
 8006472:	0c2d      	lsrs	r5, r5, #16
 8006474:	d0d3      	beq.n	800641e <__multiply+0x76>
 8006476:	f8d9 3000 	ldr.w	r3, [r9]
 800647a:	4676      	mov	r6, lr
 800647c:	4618      	mov	r0, r3
 800647e:	46cb      	mov	fp, r9
 8006480:	2100      	movs	r1, #0
 8006482:	e000      	b.n	8006486 <__multiply+0xde>
 8006484:	46a3      	mov	fp, r4
 8006486:	8834      	ldrh	r4, [r6, #0]
 8006488:	0c00      	lsrs	r0, r0, #16
 800648a:	fb05 0004 	mla	r0, r5, r4, r0
 800648e:	4401      	add	r1, r0
 8006490:	b29b      	uxth	r3, r3
 8006492:	465c      	mov	r4, fp
 8006494:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8006498:	f844 3b04 	str.w	r3, [r4], #4
 800649c:	f856 3b04 	ldr.w	r3, [r6], #4
 80064a0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80064a4:	0c1b      	lsrs	r3, r3, #16
 80064a6:	b287      	uxth	r7, r0
 80064a8:	fb05 7303 	mla	r3, r5, r3, r7
 80064ac:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80064b0:	45b4      	cmp	ip, r6
 80064b2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80064b6:	d8e5      	bhi.n	8006484 <__multiply+0xdc>
 80064b8:	4592      	cmp	sl, r2
 80064ba:	f8cb 3004 	str.w	r3, [fp, #4]
 80064be:	f109 0904 	add.w	r9, r9, #4
 80064c2:	d1b0      	bne.n	8006426 <__multiply+0x7e>
 80064c4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80064c8:	f1b8 0f00 	cmp.w	r8, #0
 80064cc:	dd0b      	ble.n	80064e6 <__multiply+0x13e>
 80064ce:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80064d2:	f1ae 0e04 	sub.w	lr, lr, #4
 80064d6:	b11b      	cbz	r3, 80064e0 <__multiply+0x138>
 80064d8:	e005      	b.n	80064e6 <__multiply+0x13e>
 80064da:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80064de:	b913      	cbnz	r3, 80064e6 <__multiply+0x13e>
 80064e0:	f1b8 0801 	subs.w	r8, r8, #1
 80064e4:	d1f9      	bne.n	80064da <__multiply+0x132>
 80064e6:	9800      	ldr	r0, [sp, #0]
 80064e8:	f8c0 8010 	str.w	r8, [r0, #16]
 80064ec:	b003      	add	sp, #12
 80064ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80064f2:	bf00      	nop

080064f4 <__pow5mult>:
 80064f4:	f012 0303 	ands.w	r3, r2, #3
 80064f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80064fc:	4614      	mov	r4, r2
 80064fe:	4607      	mov	r7, r0
 8006500:	d12e      	bne.n	8006560 <__pow5mult+0x6c>
 8006502:	460d      	mov	r5, r1
 8006504:	10a4      	asrs	r4, r4, #2
 8006506:	d01c      	beq.n	8006542 <__pow5mult+0x4e>
 8006508:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800650a:	b396      	cbz	r6, 8006572 <__pow5mult+0x7e>
 800650c:	07e3      	lsls	r3, r4, #31
 800650e:	f04f 0800 	mov.w	r8, #0
 8006512:	d406      	bmi.n	8006522 <__pow5mult+0x2e>
 8006514:	1064      	asrs	r4, r4, #1
 8006516:	d014      	beq.n	8006542 <__pow5mult+0x4e>
 8006518:	6830      	ldr	r0, [r6, #0]
 800651a:	b1a8      	cbz	r0, 8006548 <__pow5mult+0x54>
 800651c:	4606      	mov	r6, r0
 800651e:	07e3      	lsls	r3, r4, #31
 8006520:	d5f8      	bpl.n	8006514 <__pow5mult+0x20>
 8006522:	4632      	mov	r2, r6
 8006524:	4629      	mov	r1, r5
 8006526:	4638      	mov	r0, r7
 8006528:	f7ff ff3e 	bl	80063a8 <__multiply>
 800652c:	b1b5      	cbz	r5, 800655c <__pow5mult+0x68>
 800652e:	686a      	ldr	r2, [r5, #4]
 8006530:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006532:	1064      	asrs	r4, r4, #1
 8006534:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006538:	6029      	str	r1, [r5, #0]
 800653a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800653e:	4605      	mov	r5, r0
 8006540:	d1ea      	bne.n	8006518 <__pow5mult+0x24>
 8006542:	4628      	mov	r0, r5
 8006544:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006548:	4632      	mov	r2, r6
 800654a:	4631      	mov	r1, r6
 800654c:	4638      	mov	r0, r7
 800654e:	f7ff ff2b 	bl	80063a8 <__multiply>
 8006552:	6030      	str	r0, [r6, #0]
 8006554:	f8c0 8000 	str.w	r8, [r0]
 8006558:	4606      	mov	r6, r0
 800655a:	e7e0      	b.n	800651e <__pow5mult+0x2a>
 800655c:	4605      	mov	r5, r0
 800655e:	e7d9      	b.n	8006514 <__pow5mult+0x20>
 8006560:	3b01      	subs	r3, #1
 8006562:	4a0b      	ldr	r2, [pc, #44]	; (8006590 <__pow5mult+0x9c>)
 8006564:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006568:	2300      	movs	r3, #0
 800656a:	f7ff fe83 	bl	8006274 <__multadd>
 800656e:	4605      	mov	r5, r0
 8006570:	e7c8      	b.n	8006504 <__pow5mult+0x10>
 8006572:	2101      	movs	r1, #1
 8006574:	4638      	mov	r0, r7
 8006576:	f7ff fe4d 	bl	8006214 <_Balloc>
 800657a:	f240 2371 	movw	r3, #625	; 0x271
 800657e:	6143      	str	r3, [r0, #20]
 8006580:	2201      	movs	r2, #1
 8006582:	2300      	movs	r3, #0
 8006584:	6102      	str	r2, [r0, #16]
 8006586:	4606      	mov	r6, r0
 8006588:	64b8      	str	r0, [r7, #72]	; 0x48
 800658a:	6003      	str	r3, [r0, #0]
 800658c:	e7be      	b.n	800650c <__pow5mult+0x18>
 800658e:	bf00      	nop
 8006590:	08007580 	.word	0x08007580

08006594 <__lshift>:
 8006594:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006598:	4691      	mov	r9, r2
 800659a:	690a      	ldr	r2, [r1, #16]
 800659c:	460e      	mov	r6, r1
 800659e:	ea4f 1469 	mov.w	r4, r9, asr #5
 80065a2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80065a6:	eb04 0802 	add.w	r8, r4, r2
 80065aa:	f108 0501 	add.w	r5, r8, #1
 80065ae:	429d      	cmp	r5, r3
 80065b0:	4607      	mov	r7, r0
 80065b2:	dd04      	ble.n	80065be <__lshift+0x2a>
 80065b4:	005b      	lsls	r3, r3, #1
 80065b6:	429d      	cmp	r5, r3
 80065b8:	f101 0101 	add.w	r1, r1, #1
 80065bc:	dcfa      	bgt.n	80065b4 <__lshift+0x20>
 80065be:	4638      	mov	r0, r7
 80065c0:	f7ff fe28 	bl	8006214 <_Balloc>
 80065c4:	2c00      	cmp	r4, #0
 80065c6:	f100 0314 	add.w	r3, r0, #20
 80065ca:	dd37      	ble.n	800663c <__lshift+0xa8>
 80065cc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80065d0:	2200      	movs	r2, #0
 80065d2:	f843 2b04 	str.w	r2, [r3], #4
 80065d6:	428b      	cmp	r3, r1
 80065d8:	d1fb      	bne.n	80065d2 <__lshift+0x3e>
 80065da:	6934      	ldr	r4, [r6, #16]
 80065dc:	f106 0314 	add.w	r3, r6, #20
 80065e0:	f019 091f 	ands.w	r9, r9, #31
 80065e4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80065e8:	d020      	beq.n	800662c <__lshift+0x98>
 80065ea:	f1c9 0e20 	rsb	lr, r9, #32
 80065ee:	2200      	movs	r2, #0
 80065f0:	e000      	b.n	80065f4 <__lshift+0x60>
 80065f2:	4651      	mov	r1, sl
 80065f4:	681c      	ldr	r4, [r3, #0]
 80065f6:	468a      	mov	sl, r1
 80065f8:	fa04 f409 	lsl.w	r4, r4, r9
 80065fc:	4314      	orrs	r4, r2
 80065fe:	f84a 4b04 	str.w	r4, [sl], #4
 8006602:	f853 2b04 	ldr.w	r2, [r3], #4
 8006606:	4563      	cmp	r3, ip
 8006608:	fa22 f20e 	lsr.w	r2, r2, lr
 800660c:	d3f1      	bcc.n	80065f2 <__lshift+0x5e>
 800660e:	604a      	str	r2, [r1, #4]
 8006610:	b10a      	cbz	r2, 8006616 <__lshift+0x82>
 8006612:	f108 0502 	add.w	r5, r8, #2
 8006616:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006618:	6872      	ldr	r2, [r6, #4]
 800661a:	3d01      	subs	r5, #1
 800661c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006620:	6105      	str	r5, [r0, #16]
 8006622:	6031      	str	r1, [r6, #0]
 8006624:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006628:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800662c:	3904      	subs	r1, #4
 800662e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006632:	f841 2f04 	str.w	r2, [r1, #4]!
 8006636:	459c      	cmp	ip, r3
 8006638:	d8f9      	bhi.n	800662e <__lshift+0x9a>
 800663a:	e7ec      	b.n	8006616 <__lshift+0x82>
 800663c:	4619      	mov	r1, r3
 800663e:	e7cc      	b.n	80065da <__lshift+0x46>

08006640 <__mcmp>:
 8006640:	b430      	push	{r4, r5}
 8006642:	690b      	ldr	r3, [r1, #16]
 8006644:	4605      	mov	r5, r0
 8006646:	6900      	ldr	r0, [r0, #16]
 8006648:	1ac0      	subs	r0, r0, r3
 800664a:	d10f      	bne.n	800666c <__mcmp+0x2c>
 800664c:	009b      	lsls	r3, r3, #2
 800664e:	3514      	adds	r5, #20
 8006650:	3114      	adds	r1, #20
 8006652:	4419      	add	r1, r3
 8006654:	442b      	add	r3, r5
 8006656:	e001      	b.n	800665c <__mcmp+0x1c>
 8006658:	429d      	cmp	r5, r3
 800665a:	d207      	bcs.n	800666c <__mcmp+0x2c>
 800665c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006660:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006664:	4294      	cmp	r4, r2
 8006666:	d0f7      	beq.n	8006658 <__mcmp+0x18>
 8006668:	d302      	bcc.n	8006670 <__mcmp+0x30>
 800666a:	2001      	movs	r0, #1
 800666c:	bc30      	pop	{r4, r5}
 800666e:	4770      	bx	lr
 8006670:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006674:	e7fa      	b.n	800666c <__mcmp+0x2c>
 8006676:	bf00      	nop

08006678 <__mdiff>:
 8006678:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800667c:	6913      	ldr	r3, [r2, #16]
 800667e:	690d      	ldr	r5, [r1, #16]
 8006680:	1aed      	subs	r5, r5, r3
 8006682:	2d00      	cmp	r5, #0
 8006684:	460e      	mov	r6, r1
 8006686:	4690      	mov	r8, r2
 8006688:	f101 0414 	add.w	r4, r1, #20
 800668c:	f102 0714 	add.w	r7, r2, #20
 8006690:	d114      	bne.n	80066bc <__mdiff+0x44>
 8006692:	009b      	lsls	r3, r3, #2
 8006694:	18e2      	adds	r2, r4, r3
 8006696:	443b      	add	r3, r7
 8006698:	e001      	b.n	800669e <__mdiff+0x26>
 800669a:	42a2      	cmp	r2, r4
 800669c:	d959      	bls.n	8006752 <__mdiff+0xda>
 800669e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80066a2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80066a6:	458c      	cmp	ip, r1
 80066a8:	d0f7      	beq.n	800669a <__mdiff+0x22>
 80066aa:	d209      	bcs.n	80066c0 <__mdiff+0x48>
 80066ac:	4622      	mov	r2, r4
 80066ae:	4633      	mov	r3, r6
 80066b0:	463c      	mov	r4, r7
 80066b2:	4646      	mov	r6, r8
 80066b4:	4617      	mov	r7, r2
 80066b6:	4698      	mov	r8, r3
 80066b8:	2501      	movs	r5, #1
 80066ba:	e001      	b.n	80066c0 <__mdiff+0x48>
 80066bc:	dbf6      	blt.n	80066ac <__mdiff+0x34>
 80066be:	2500      	movs	r5, #0
 80066c0:	6871      	ldr	r1, [r6, #4]
 80066c2:	f7ff fda7 	bl	8006214 <_Balloc>
 80066c6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80066ca:	6936      	ldr	r6, [r6, #16]
 80066cc:	60c5      	str	r5, [r0, #12]
 80066ce:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80066d2:	46bc      	mov	ip, r7
 80066d4:	f100 0514 	add.w	r5, r0, #20
 80066d8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80066dc:	2300      	movs	r3, #0
 80066de:	f85c 1b04 	ldr.w	r1, [ip], #4
 80066e2:	f854 8b04 	ldr.w	r8, [r4], #4
 80066e6:	b28a      	uxth	r2, r1
 80066e8:	fa13 f388 	uxtah	r3, r3, r8
 80066ec:	0c09      	lsrs	r1, r1, #16
 80066ee:	1a9a      	subs	r2, r3, r2
 80066f0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 80066f4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80066f8:	b292      	uxth	r2, r2
 80066fa:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80066fe:	45e6      	cmp	lr, ip
 8006700:	f845 2b04 	str.w	r2, [r5], #4
 8006704:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006708:	d8e9      	bhi.n	80066de <__mdiff+0x66>
 800670a:	42a7      	cmp	r7, r4
 800670c:	d917      	bls.n	800673e <__mdiff+0xc6>
 800670e:	46ae      	mov	lr, r5
 8006710:	46a4      	mov	ip, r4
 8006712:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006716:	fa13 f382 	uxtah	r3, r3, r2
 800671a:	1419      	asrs	r1, r3, #16
 800671c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006720:	b29b      	uxth	r3, r3
 8006722:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006726:	4567      	cmp	r7, ip
 8006728:	f84e 2b04 	str.w	r2, [lr], #4
 800672c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006730:	d8ef      	bhi.n	8006712 <__mdiff+0x9a>
 8006732:	43e4      	mvns	r4, r4
 8006734:	4427      	add	r7, r4
 8006736:	f027 0703 	bic.w	r7, r7, #3
 800673a:	3704      	adds	r7, #4
 800673c:	443d      	add	r5, r7
 800673e:	3d04      	subs	r5, #4
 8006740:	b922      	cbnz	r2, 800674c <__mdiff+0xd4>
 8006742:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006746:	3e01      	subs	r6, #1
 8006748:	2b00      	cmp	r3, #0
 800674a:	d0fa      	beq.n	8006742 <__mdiff+0xca>
 800674c:	6106      	str	r6, [r0, #16]
 800674e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006752:	2100      	movs	r1, #0
 8006754:	f7ff fd5e 	bl	8006214 <_Balloc>
 8006758:	2201      	movs	r2, #1
 800675a:	2300      	movs	r3, #0
 800675c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006760:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006764 <__d2b>:
 8006764:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006768:	460f      	mov	r7, r1
 800676a:	b083      	sub	sp, #12
 800676c:	2101      	movs	r1, #1
 800676e:	ec55 4b10 	vmov	r4, r5, d0
 8006772:	4616      	mov	r6, r2
 8006774:	f7ff fd4e 	bl	8006214 <_Balloc>
 8006778:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800677c:	4681      	mov	r9, r0
 800677e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006782:	f1b8 0f00 	cmp.w	r8, #0
 8006786:	d001      	beq.n	800678c <__d2b+0x28>
 8006788:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800678c:	2c00      	cmp	r4, #0
 800678e:	9301      	str	r3, [sp, #4]
 8006790:	d024      	beq.n	80067dc <__d2b+0x78>
 8006792:	a802      	add	r0, sp, #8
 8006794:	f840 4d08 	str.w	r4, [r0, #-8]!
 8006798:	f7ff fdcc 	bl	8006334 <__lo0bits>
 800679c:	2800      	cmp	r0, #0
 800679e:	d136      	bne.n	800680e <__d2b+0xaa>
 80067a0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80067a4:	f8c9 2014 	str.w	r2, [r9, #20]
 80067a8:	2b00      	cmp	r3, #0
 80067aa:	bf0c      	ite	eq
 80067ac:	2101      	moveq	r1, #1
 80067ae:	2102      	movne	r1, #2
 80067b0:	f8c9 3018 	str.w	r3, [r9, #24]
 80067b4:	f8c9 1010 	str.w	r1, [r9, #16]
 80067b8:	f1b8 0f00 	cmp.w	r8, #0
 80067bc:	d11b      	bne.n	80067f6 <__d2b+0x92>
 80067be:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80067c2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80067c6:	6038      	str	r0, [r7, #0]
 80067c8:	6918      	ldr	r0, [r3, #16]
 80067ca:	f7ff fd93 	bl	80062f4 <__hi0bits>
 80067ce:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80067d2:	6030      	str	r0, [r6, #0]
 80067d4:	4648      	mov	r0, r9
 80067d6:	b003      	add	sp, #12
 80067d8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80067dc:	a801      	add	r0, sp, #4
 80067de:	f7ff fda9 	bl	8006334 <__lo0bits>
 80067e2:	9b01      	ldr	r3, [sp, #4]
 80067e4:	f8c9 3014 	str.w	r3, [r9, #20]
 80067e8:	2101      	movs	r1, #1
 80067ea:	3020      	adds	r0, #32
 80067ec:	f8c9 1010 	str.w	r1, [r9, #16]
 80067f0:	f1b8 0f00 	cmp.w	r8, #0
 80067f4:	d0e3      	beq.n	80067be <__d2b+0x5a>
 80067f6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 80067fa:	eb08 0300 	add.w	r3, r8, r0
 80067fe:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006802:	603b      	str	r3, [r7, #0]
 8006804:	6030      	str	r0, [r6, #0]
 8006806:	4648      	mov	r0, r9
 8006808:	b003      	add	sp, #12
 800680a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800680e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006812:	f1c0 0220 	rsb	r2, r0, #32
 8006816:	fa03 f202 	lsl.w	r2, r3, r2
 800681a:	430a      	orrs	r2, r1
 800681c:	40c3      	lsrs	r3, r0
 800681e:	9301      	str	r3, [sp, #4]
 8006820:	f8c9 2014 	str.w	r2, [r9, #20]
 8006824:	e7c0      	b.n	80067a8 <__d2b+0x44>
 8006826:	bf00      	nop

08006828 <_realloc_r>:
 8006828:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800682c:	4692      	mov	sl, r2
 800682e:	b083      	sub	sp, #12
 8006830:	2900      	cmp	r1, #0
 8006832:	f000 80a1 	beq.w	8006978 <_realloc_r+0x150>
 8006836:	460d      	mov	r5, r1
 8006838:	4680      	mov	r8, r0
 800683a:	f10a 040b 	add.w	r4, sl, #11
 800683e:	f7ff fcdd 	bl	80061fc <__malloc_lock>
 8006842:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006846:	2c16      	cmp	r4, #22
 8006848:	f022 0603 	bic.w	r6, r2, #3
 800684c:	f1a5 0708 	sub.w	r7, r5, #8
 8006850:	d83e      	bhi.n	80068d0 <_realloc_r+0xa8>
 8006852:	2410      	movs	r4, #16
 8006854:	4621      	mov	r1, r4
 8006856:	45a2      	cmp	sl, r4
 8006858:	d83f      	bhi.n	80068da <_realloc_r+0xb2>
 800685a:	428e      	cmp	r6, r1
 800685c:	eb07 0906 	add.w	r9, r7, r6
 8006860:	da74      	bge.n	800694c <_realloc_r+0x124>
 8006862:	4bc7      	ldr	r3, [pc, #796]	; (8006b80 <_realloc_r+0x358>)
 8006864:	6898      	ldr	r0, [r3, #8]
 8006866:	4548      	cmp	r0, r9
 8006868:	f000 80aa 	beq.w	80069c0 <_realloc_r+0x198>
 800686c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006870:	f020 0301 	bic.w	r3, r0, #1
 8006874:	444b      	add	r3, r9
 8006876:	685b      	ldr	r3, [r3, #4]
 8006878:	07db      	lsls	r3, r3, #31
 800687a:	f140 8083 	bpl.w	8006984 <_realloc_r+0x15c>
 800687e:	07d2      	lsls	r2, r2, #31
 8006880:	d534      	bpl.n	80068ec <_realloc_r+0xc4>
 8006882:	4651      	mov	r1, sl
 8006884:	4640      	mov	r0, r8
 8006886:	f7ff f9b1 	bl	8005bec <_malloc_r>
 800688a:	4682      	mov	sl, r0
 800688c:	b1e0      	cbz	r0, 80068c8 <_realloc_r+0xa0>
 800688e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006892:	f023 0301 	bic.w	r3, r3, #1
 8006896:	443b      	add	r3, r7
 8006898:	f1a0 0208 	sub.w	r2, r0, #8
 800689c:	4293      	cmp	r3, r2
 800689e:	f000 80f9 	beq.w	8006a94 <_realloc_r+0x26c>
 80068a2:	1f32      	subs	r2, r6, #4
 80068a4:	2a24      	cmp	r2, #36	; 0x24
 80068a6:	f200 8107 	bhi.w	8006ab8 <_realloc_r+0x290>
 80068aa:	2a13      	cmp	r2, #19
 80068ac:	6829      	ldr	r1, [r5, #0]
 80068ae:	f200 80e6 	bhi.w	8006a7e <_realloc_r+0x256>
 80068b2:	4603      	mov	r3, r0
 80068b4:	462a      	mov	r2, r5
 80068b6:	6019      	str	r1, [r3, #0]
 80068b8:	6851      	ldr	r1, [r2, #4]
 80068ba:	6059      	str	r1, [r3, #4]
 80068bc:	6892      	ldr	r2, [r2, #8]
 80068be:	609a      	str	r2, [r3, #8]
 80068c0:	4629      	mov	r1, r5
 80068c2:	4640      	mov	r0, r8
 80068c4:	f7fe fe68 	bl	8005598 <_free_r>
 80068c8:	4640      	mov	r0, r8
 80068ca:	f7ff fc9d 	bl	8006208 <__malloc_unlock>
 80068ce:	e04f      	b.n	8006970 <_realloc_r+0x148>
 80068d0:	f024 0407 	bic.w	r4, r4, #7
 80068d4:	2c00      	cmp	r4, #0
 80068d6:	4621      	mov	r1, r4
 80068d8:	dabd      	bge.n	8006856 <_realloc_r+0x2e>
 80068da:	f04f 0a00 	mov.w	sl, #0
 80068de:	230c      	movs	r3, #12
 80068e0:	4650      	mov	r0, sl
 80068e2:	f8c8 3000 	str.w	r3, [r8]
 80068e6:	b003      	add	sp, #12
 80068e8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80068ec:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80068f0:	eba7 0b03 	sub.w	fp, r7, r3
 80068f4:	f8db 2004 	ldr.w	r2, [fp, #4]
 80068f8:	f022 0203 	bic.w	r2, r2, #3
 80068fc:	18b3      	adds	r3, r6, r2
 80068fe:	428b      	cmp	r3, r1
 8006900:	dbbf      	blt.n	8006882 <_realloc_r+0x5a>
 8006902:	46da      	mov	sl, fp
 8006904:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006908:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800690c:	1f32      	subs	r2, r6, #4
 800690e:	2a24      	cmp	r2, #36	; 0x24
 8006910:	60c1      	str	r1, [r0, #12]
 8006912:	eb0b 0903 	add.w	r9, fp, r3
 8006916:	6088      	str	r0, [r1, #8]
 8006918:	f200 80c6 	bhi.w	8006aa8 <_realloc_r+0x280>
 800691c:	2a13      	cmp	r2, #19
 800691e:	6829      	ldr	r1, [r5, #0]
 8006920:	f240 80c0 	bls.w	8006aa4 <_realloc_r+0x27c>
 8006924:	f8cb 1008 	str.w	r1, [fp, #8]
 8006928:	6869      	ldr	r1, [r5, #4]
 800692a:	f8cb 100c 	str.w	r1, [fp, #12]
 800692e:	2a1b      	cmp	r2, #27
 8006930:	68a9      	ldr	r1, [r5, #8]
 8006932:	f200 80d8 	bhi.w	8006ae6 <_realloc_r+0x2be>
 8006936:	f10b 0210 	add.w	r2, fp, #16
 800693a:	3508      	adds	r5, #8
 800693c:	6011      	str	r1, [r2, #0]
 800693e:	6869      	ldr	r1, [r5, #4]
 8006940:	6051      	str	r1, [r2, #4]
 8006942:	68a9      	ldr	r1, [r5, #8]
 8006944:	6091      	str	r1, [r2, #8]
 8006946:	461e      	mov	r6, r3
 8006948:	465f      	mov	r7, fp
 800694a:	4655      	mov	r5, sl
 800694c:	687b      	ldr	r3, [r7, #4]
 800694e:	1b32      	subs	r2, r6, r4
 8006950:	2a0f      	cmp	r2, #15
 8006952:	f003 0301 	and.w	r3, r3, #1
 8006956:	d822      	bhi.n	800699e <_realloc_r+0x176>
 8006958:	4333      	orrs	r3, r6
 800695a:	607b      	str	r3, [r7, #4]
 800695c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006960:	f043 0301 	orr.w	r3, r3, #1
 8006964:	f8c9 3004 	str.w	r3, [r9, #4]
 8006968:	4640      	mov	r0, r8
 800696a:	f7ff fc4d 	bl	8006208 <__malloc_unlock>
 800696e:	46aa      	mov	sl, r5
 8006970:	4650      	mov	r0, sl
 8006972:	b003      	add	sp, #12
 8006974:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006978:	4611      	mov	r1, r2
 800697a:	b003      	add	sp, #12
 800697c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006980:	f7ff b934 	b.w	8005bec <_malloc_r>
 8006984:	f020 0003 	bic.w	r0, r0, #3
 8006988:	1833      	adds	r3, r6, r0
 800698a:	428b      	cmp	r3, r1
 800698c:	db61      	blt.n	8006a52 <_realloc_r+0x22a>
 800698e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006992:	461e      	mov	r6, r3
 8006994:	60ca      	str	r2, [r1, #12]
 8006996:	eb07 0903 	add.w	r9, r7, r3
 800699a:	6091      	str	r1, [r2, #8]
 800699c:	e7d6      	b.n	800694c <_realloc_r+0x124>
 800699e:	1939      	adds	r1, r7, r4
 80069a0:	4323      	orrs	r3, r4
 80069a2:	f042 0201 	orr.w	r2, r2, #1
 80069a6:	607b      	str	r3, [r7, #4]
 80069a8:	604a      	str	r2, [r1, #4]
 80069aa:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80069ae:	f043 0301 	orr.w	r3, r3, #1
 80069b2:	3108      	adds	r1, #8
 80069b4:	f8c9 3004 	str.w	r3, [r9, #4]
 80069b8:	4640      	mov	r0, r8
 80069ba:	f7fe fded 	bl	8005598 <_free_r>
 80069be:	e7d3      	b.n	8006968 <_realloc_r+0x140>
 80069c0:	6840      	ldr	r0, [r0, #4]
 80069c2:	f020 0903 	bic.w	r9, r0, #3
 80069c6:	44b1      	add	r9, r6
 80069c8:	f104 0010 	add.w	r0, r4, #16
 80069cc:	4581      	cmp	r9, r0
 80069ce:	da77      	bge.n	8006ac0 <_realloc_r+0x298>
 80069d0:	07d2      	lsls	r2, r2, #31
 80069d2:	f53f af56 	bmi.w	8006882 <_realloc_r+0x5a>
 80069d6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 80069da:	eba7 0b02 	sub.w	fp, r7, r2
 80069de:	f8db 2004 	ldr.w	r2, [fp, #4]
 80069e2:	f022 0203 	bic.w	r2, r2, #3
 80069e6:	4491      	add	r9, r2
 80069e8:	4548      	cmp	r0, r9
 80069ea:	dc87      	bgt.n	80068fc <_realloc_r+0xd4>
 80069ec:	46da      	mov	sl, fp
 80069ee:	f8db 100c 	ldr.w	r1, [fp, #12]
 80069f2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 80069f6:	1f32      	subs	r2, r6, #4
 80069f8:	2a24      	cmp	r2, #36	; 0x24
 80069fa:	60c1      	str	r1, [r0, #12]
 80069fc:	6088      	str	r0, [r1, #8]
 80069fe:	f200 80a1 	bhi.w	8006b44 <_realloc_r+0x31c>
 8006a02:	2a13      	cmp	r2, #19
 8006a04:	6829      	ldr	r1, [r5, #0]
 8006a06:	f240 809b 	bls.w	8006b40 <_realloc_r+0x318>
 8006a0a:	f8cb 1008 	str.w	r1, [fp, #8]
 8006a0e:	6869      	ldr	r1, [r5, #4]
 8006a10:	f8cb 100c 	str.w	r1, [fp, #12]
 8006a14:	2a1b      	cmp	r2, #27
 8006a16:	68a9      	ldr	r1, [r5, #8]
 8006a18:	f200 809b 	bhi.w	8006b52 <_realloc_r+0x32a>
 8006a1c:	f10b 0210 	add.w	r2, fp, #16
 8006a20:	3508      	adds	r5, #8
 8006a22:	6011      	str	r1, [r2, #0]
 8006a24:	6869      	ldr	r1, [r5, #4]
 8006a26:	6051      	str	r1, [r2, #4]
 8006a28:	68a9      	ldr	r1, [r5, #8]
 8006a2a:	6091      	str	r1, [r2, #8]
 8006a2c:	eb0b 0104 	add.w	r1, fp, r4
 8006a30:	eba9 0204 	sub.w	r2, r9, r4
 8006a34:	f042 0201 	orr.w	r2, r2, #1
 8006a38:	6099      	str	r1, [r3, #8]
 8006a3a:	604a      	str	r2, [r1, #4]
 8006a3c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006a40:	f003 0301 	and.w	r3, r3, #1
 8006a44:	431c      	orrs	r4, r3
 8006a46:	4640      	mov	r0, r8
 8006a48:	f8cb 4004 	str.w	r4, [fp, #4]
 8006a4c:	f7ff fbdc 	bl	8006208 <__malloc_unlock>
 8006a50:	e78e      	b.n	8006970 <_realloc_r+0x148>
 8006a52:	07d3      	lsls	r3, r2, #31
 8006a54:	f53f af15 	bmi.w	8006882 <_realloc_r+0x5a>
 8006a58:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006a5c:	eba7 0b03 	sub.w	fp, r7, r3
 8006a60:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a64:	f022 0203 	bic.w	r2, r2, #3
 8006a68:	4410      	add	r0, r2
 8006a6a:	1983      	adds	r3, r0, r6
 8006a6c:	428b      	cmp	r3, r1
 8006a6e:	f6ff af45 	blt.w	80068fc <_realloc_r+0xd4>
 8006a72:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006a76:	46da      	mov	sl, fp
 8006a78:	60ca      	str	r2, [r1, #12]
 8006a7a:	6091      	str	r1, [r2, #8]
 8006a7c:	e742      	b.n	8006904 <_realloc_r+0xdc>
 8006a7e:	6001      	str	r1, [r0, #0]
 8006a80:	686b      	ldr	r3, [r5, #4]
 8006a82:	6043      	str	r3, [r0, #4]
 8006a84:	2a1b      	cmp	r2, #27
 8006a86:	d83a      	bhi.n	8006afe <_realloc_r+0x2d6>
 8006a88:	f105 0208 	add.w	r2, r5, #8
 8006a8c:	f100 0308 	add.w	r3, r0, #8
 8006a90:	68a9      	ldr	r1, [r5, #8]
 8006a92:	e710      	b.n	80068b6 <_realloc_r+0x8e>
 8006a94:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006a98:	f023 0303 	bic.w	r3, r3, #3
 8006a9c:	441e      	add	r6, r3
 8006a9e:	eb07 0906 	add.w	r9, r7, r6
 8006aa2:	e753      	b.n	800694c <_realloc_r+0x124>
 8006aa4:	4652      	mov	r2, sl
 8006aa6:	e749      	b.n	800693c <_realloc_r+0x114>
 8006aa8:	4629      	mov	r1, r5
 8006aaa:	4650      	mov	r0, sl
 8006aac:	461e      	mov	r6, r3
 8006aae:	465f      	mov	r7, fp
 8006ab0:	f7ff fb40 	bl	8006134 <memmove>
 8006ab4:	4655      	mov	r5, sl
 8006ab6:	e749      	b.n	800694c <_realloc_r+0x124>
 8006ab8:	4629      	mov	r1, r5
 8006aba:	f7ff fb3b 	bl	8006134 <memmove>
 8006abe:	e6ff      	b.n	80068c0 <_realloc_r+0x98>
 8006ac0:	4427      	add	r7, r4
 8006ac2:	eba9 0904 	sub.w	r9, r9, r4
 8006ac6:	f049 0201 	orr.w	r2, r9, #1
 8006aca:	609f      	str	r7, [r3, #8]
 8006acc:	607a      	str	r2, [r7, #4]
 8006ace:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006ad2:	f003 0301 	and.w	r3, r3, #1
 8006ad6:	431c      	orrs	r4, r3
 8006ad8:	4640      	mov	r0, r8
 8006ada:	f845 4c04 	str.w	r4, [r5, #-4]
 8006ade:	f7ff fb93 	bl	8006208 <__malloc_unlock>
 8006ae2:	46aa      	mov	sl, r5
 8006ae4:	e744      	b.n	8006970 <_realloc_r+0x148>
 8006ae6:	f8cb 1010 	str.w	r1, [fp, #16]
 8006aea:	68e9      	ldr	r1, [r5, #12]
 8006aec:	f8cb 1014 	str.w	r1, [fp, #20]
 8006af0:	2a24      	cmp	r2, #36	; 0x24
 8006af2:	d010      	beq.n	8006b16 <_realloc_r+0x2ee>
 8006af4:	6929      	ldr	r1, [r5, #16]
 8006af6:	f10b 0218 	add.w	r2, fp, #24
 8006afa:	3510      	adds	r5, #16
 8006afc:	e71e      	b.n	800693c <_realloc_r+0x114>
 8006afe:	68ab      	ldr	r3, [r5, #8]
 8006b00:	6083      	str	r3, [r0, #8]
 8006b02:	68eb      	ldr	r3, [r5, #12]
 8006b04:	60c3      	str	r3, [r0, #12]
 8006b06:	2a24      	cmp	r2, #36	; 0x24
 8006b08:	d010      	beq.n	8006b2c <_realloc_r+0x304>
 8006b0a:	f105 0210 	add.w	r2, r5, #16
 8006b0e:	f100 0310 	add.w	r3, r0, #16
 8006b12:	6929      	ldr	r1, [r5, #16]
 8006b14:	e6cf      	b.n	80068b6 <_realloc_r+0x8e>
 8006b16:	692a      	ldr	r2, [r5, #16]
 8006b18:	f8cb 2018 	str.w	r2, [fp, #24]
 8006b1c:	696a      	ldr	r2, [r5, #20]
 8006b1e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006b22:	69a9      	ldr	r1, [r5, #24]
 8006b24:	f10b 0220 	add.w	r2, fp, #32
 8006b28:	3518      	adds	r5, #24
 8006b2a:	e707      	b.n	800693c <_realloc_r+0x114>
 8006b2c:	692b      	ldr	r3, [r5, #16]
 8006b2e:	6103      	str	r3, [r0, #16]
 8006b30:	696b      	ldr	r3, [r5, #20]
 8006b32:	6143      	str	r3, [r0, #20]
 8006b34:	69a9      	ldr	r1, [r5, #24]
 8006b36:	f105 0218 	add.w	r2, r5, #24
 8006b3a:	f100 0318 	add.w	r3, r0, #24
 8006b3e:	e6ba      	b.n	80068b6 <_realloc_r+0x8e>
 8006b40:	4652      	mov	r2, sl
 8006b42:	e76e      	b.n	8006a22 <_realloc_r+0x1fa>
 8006b44:	4629      	mov	r1, r5
 8006b46:	4650      	mov	r0, sl
 8006b48:	9301      	str	r3, [sp, #4]
 8006b4a:	f7ff faf3 	bl	8006134 <memmove>
 8006b4e:	9b01      	ldr	r3, [sp, #4]
 8006b50:	e76c      	b.n	8006a2c <_realloc_r+0x204>
 8006b52:	f8cb 1010 	str.w	r1, [fp, #16]
 8006b56:	68e9      	ldr	r1, [r5, #12]
 8006b58:	f8cb 1014 	str.w	r1, [fp, #20]
 8006b5c:	2a24      	cmp	r2, #36	; 0x24
 8006b5e:	d004      	beq.n	8006b6a <_realloc_r+0x342>
 8006b60:	6929      	ldr	r1, [r5, #16]
 8006b62:	f10b 0218 	add.w	r2, fp, #24
 8006b66:	3510      	adds	r5, #16
 8006b68:	e75b      	b.n	8006a22 <_realloc_r+0x1fa>
 8006b6a:	692a      	ldr	r2, [r5, #16]
 8006b6c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006b70:	696a      	ldr	r2, [r5, #20]
 8006b72:	f8cb 201c 	str.w	r2, [fp, #28]
 8006b76:	69a9      	ldr	r1, [r5, #24]
 8006b78:	f10b 0220 	add.w	r2, fp, #32
 8006b7c:	3518      	adds	r5, #24
 8006b7e:	e750      	b.n	8006a22 <_realloc_r+0x1fa>
 8006b80:	200004b4 	.word	0x200004b4

08006b84 <frexp>:
 8006b84:	ec53 2b10 	vmov	r2, r3, d0
 8006b88:	b570      	push	{r4, r5, r6, lr}
 8006b8a:	4e16      	ldr	r6, [pc, #88]	; (8006be4 <frexp+0x60>)
 8006b8c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006b90:	2500      	movs	r5, #0
 8006b92:	42b1      	cmp	r1, r6
 8006b94:	4604      	mov	r4, r0
 8006b96:	6005      	str	r5, [r0, #0]
 8006b98:	dc21      	bgt.n	8006bde <frexp+0x5a>
 8006b9a:	ee10 6a10 	vmov	r6, s0
 8006b9e:	430e      	orrs	r6, r1
 8006ba0:	d01d      	beq.n	8006bde <frexp+0x5a>
 8006ba2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006ba6:	4618      	mov	r0, r3
 8006ba8:	da0c      	bge.n	8006bc4 <frexp+0x40>
 8006baa:	4619      	mov	r1, r3
 8006bac:	2200      	movs	r2, #0
 8006bae:	ee10 0a10 	vmov	r0, s0
 8006bb2:	4b0d      	ldr	r3, [pc, #52]	; (8006be8 <frexp+0x64>)
 8006bb4:	f7f9 ffc0 	bl	8000b38 <__aeabi_dmul>
 8006bb8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006bbc:	4602      	mov	r2, r0
 8006bbe:	4608      	mov	r0, r1
 8006bc0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006bc4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006bc8:	1509      	asrs	r1, r1, #20
 8006bca:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006bce:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006bd2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006bd6:	4429      	add	r1, r5
 8006bd8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006bdc:	6021      	str	r1, [r4, #0]
 8006bde:	ec43 2b10 	vmov	d0, r2, r3
 8006be2:	bd70      	pop	{r4, r5, r6, pc}
 8006be4:	7fefffff 	.word	0x7fefffff
 8006be8:	43500000 	.word	0x43500000

08006bec <_sbrk_r>:
 8006bec:	b538      	push	{r3, r4, r5, lr}
 8006bee:	4c07      	ldr	r4, [pc, #28]	; (8006c0c <_sbrk_r+0x20>)
 8006bf0:	2300      	movs	r3, #0
 8006bf2:	4605      	mov	r5, r0
 8006bf4:	4608      	mov	r0, r1
 8006bf6:	6023      	str	r3, [r4, #0]
 8006bf8:	f7fb fbe1 	bl	80023be <_sbrk>
 8006bfc:	1c43      	adds	r3, r0, #1
 8006bfe:	d000      	beq.n	8006c02 <_sbrk_r+0x16>
 8006c00:	bd38      	pop	{r3, r4, r5, pc}
 8006c02:	6823      	ldr	r3, [r4, #0]
 8006c04:	2b00      	cmp	r3, #0
 8006c06:	d0fb      	beq.n	8006c00 <_sbrk_r+0x14>
 8006c08:	602b      	str	r3, [r5, #0]
 8006c0a:	bd38      	pop	{r3, r4, r5, pc}
 8006c0c:	20001d8c 	.word	0x20001d8c

08006c10 <__sread>:
 8006c10:	b510      	push	{r4, lr}
 8006c12:	460c      	mov	r4, r1
 8006c14:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c18:	f000 fabc 	bl	8007194 <_read_r>
 8006c1c:	2800      	cmp	r0, #0
 8006c1e:	db03      	blt.n	8006c28 <__sread+0x18>
 8006c20:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006c22:	4403      	add	r3, r0
 8006c24:	6523      	str	r3, [r4, #80]	; 0x50
 8006c26:	bd10      	pop	{r4, pc}
 8006c28:	89a3      	ldrh	r3, [r4, #12]
 8006c2a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006c2e:	81a3      	strh	r3, [r4, #12]
 8006c30:	bd10      	pop	{r4, pc}
 8006c32:	bf00      	nop

08006c34 <__swrite>:
 8006c34:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006c38:	4616      	mov	r6, r2
 8006c3a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006c3e:	461f      	mov	r7, r3
 8006c40:	05d3      	lsls	r3, r2, #23
 8006c42:	460c      	mov	r4, r1
 8006c44:	4605      	mov	r5, r0
 8006c46:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c4a:	d507      	bpl.n	8006c5c <__swrite+0x28>
 8006c4c:	2200      	movs	r2, #0
 8006c4e:	2302      	movs	r3, #2
 8006c50:	f000 fa74 	bl	800713c <_lseek_r>
 8006c54:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006c58:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006c5c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006c60:	81a2      	strh	r2, [r4, #12]
 8006c62:	463b      	mov	r3, r7
 8006c64:	4632      	mov	r2, r6
 8006c66:	4628      	mov	r0, r5
 8006c68:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006c6c:	f000 b88c 	b.w	8006d88 <_write_r>

08006c70 <__sseek>:
 8006c70:	b510      	push	{r4, lr}
 8006c72:	460c      	mov	r4, r1
 8006c74:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c78:	f000 fa60 	bl	800713c <_lseek_r>
 8006c7c:	89a3      	ldrh	r3, [r4, #12]
 8006c7e:	1c42      	adds	r2, r0, #1
 8006c80:	bf0e      	itee	eq
 8006c82:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006c86:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006c8a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006c8c:	81a3      	strh	r3, [r4, #12]
 8006c8e:	bd10      	pop	{r4, pc}

08006c90 <__sclose>:
 8006c90:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006c94:	f000 b922 	b.w	8006edc <_close_r>

08006c98 <strncpy>:
 8006c98:	ea40 0301 	orr.w	r3, r0, r1
 8006c9c:	079b      	lsls	r3, r3, #30
 8006c9e:	b470      	push	{r4, r5, r6}
 8006ca0:	d12a      	bne.n	8006cf8 <strncpy+0x60>
 8006ca2:	2a03      	cmp	r2, #3
 8006ca4:	d928      	bls.n	8006cf8 <strncpy+0x60>
 8006ca6:	460c      	mov	r4, r1
 8006ca8:	4603      	mov	r3, r0
 8006caa:	4621      	mov	r1, r4
 8006cac:	f854 6b04 	ldr.w	r6, [r4], #4
 8006cb0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006cb4:	ea25 0506 	bic.w	r5, r5, r6
 8006cb8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006cbc:	d106      	bne.n	8006ccc <strncpy+0x34>
 8006cbe:	3a04      	subs	r2, #4
 8006cc0:	2a03      	cmp	r2, #3
 8006cc2:	f843 6b04 	str.w	r6, [r3], #4
 8006cc6:	4621      	mov	r1, r4
 8006cc8:	d8ef      	bhi.n	8006caa <strncpy+0x12>
 8006cca:	b19a      	cbz	r2, 8006cf4 <strncpy+0x5c>
 8006ccc:	780c      	ldrb	r4, [r1, #0]
 8006cce:	701c      	strb	r4, [r3, #0]
 8006cd0:	3a01      	subs	r2, #1
 8006cd2:	3301      	adds	r3, #1
 8006cd4:	b13c      	cbz	r4, 8006ce6 <strncpy+0x4e>
 8006cd6:	b16a      	cbz	r2, 8006cf4 <strncpy+0x5c>
 8006cd8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006cdc:	f803 4b01 	strb.w	r4, [r3], #1
 8006ce0:	3a01      	subs	r2, #1
 8006ce2:	2c00      	cmp	r4, #0
 8006ce4:	d1f7      	bne.n	8006cd6 <strncpy+0x3e>
 8006ce6:	b12a      	cbz	r2, 8006cf4 <strncpy+0x5c>
 8006ce8:	441a      	add	r2, r3
 8006cea:	2100      	movs	r1, #0
 8006cec:	f803 1b01 	strb.w	r1, [r3], #1
 8006cf0:	4293      	cmp	r3, r2
 8006cf2:	d1fb      	bne.n	8006cec <strncpy+0x54>
 8006cf4:	bc70      	pop	{r4, r5, r6}
 8006cf6:	4770      	bx	lr
 8006cf8:	4603      	mov	r3, r0
 8006cfa:	e7e6      	b.n	8006cca <strncpy+0x32>

08006cfc <__sprint_r.part.0>:
 8006cfc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006d00:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006d02:	049c      	lsls	r4, r3, #18
 8006d04:	4692      	mov	sl, r2
 8006d06:	d52d      	bpl.n	8006d64 <__sprint_r.part.0+0x68>
 8006d08:	6893      	ldr	r3, [r2, #8]
 8006d0a:	6812      	ldr	r2, [r2, #0]
 8006d0c:	b343      	cbz	r3, 8006d60 <__sprint_r.part.0+0x64>
 8006d0e:	460e      	mov	r6, r1
 8006d10:	4607      	mov	r7, r0
 8006d12:	f102 0908 	add.w	r9, r2, #8
 8006d16:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006d1a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006d1e:	d015      	beq.n	8006d4c <__sprint_r.part.0+0x50>
 8006d20:	3d04      	subs	r5, #4
 8006d22:	2400      	movs	r4, #0
 8006d24:	e001      	b.n	8006d2a <__sprint_r.part.0+0x2e>
 8006d26:	45a0      	cmp	r8, r4
 8006d28:	d00e      	beq.n	8006d48 <__sprint_r.part.0+0x4c>
 8006d2a:	4632      	mov	r2, r6
 8006d2c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006d30:	4638      	mov	r0, r7
 8006d32:	f000 f99d 	bl	8007070 <_fputwc_r>
 8006d36:	1c43      	adds	r3, r0, #1
 8006d38:	f104 0401 	add.w	r4, r4, #1
 8006d3c:	d1f3      	bne.n	8006d26 <__sprint_r.part.0+0x2a>
 8006d3e:	2300      	movs	r3, #0
 8006d40:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006d44:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d48:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006d4c:	f02b 0b03 	bic.w	fp, fp, #3
 8006d50:	eba3 030b 	sub.w	r3, r3, fp
 8006d54:	f8ca 3008 	str.w	r3, [sl, #8]
 8006d58:	f109 0908 	add.w	r9, r9, #8
 8006d5c:	2b00      	cmp	r3, #0
 8006d5e:	d1da      	bne.n	8006d16 <__sprint_r.part.0+0x1a>
 8006d60:	2000      	movs	r0, #0
 8006d62:	e7ec      	b.n	8006d3e <__sprint_r.part.0+0x42>
 8006d64:	f7fe fd0c 	bl	8005780 <__sfvwrite_r>
 8006d68:	2300      	movs	r3, #0
 8006d6a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006d6e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d72:	bf00      	nop

08006d74 <__sprint_r>:
 8006d74:	6893      	ldr	r3, [r2, #8]
 8006d76:	b10b      	cbz	r3, 8006d7c <__sprint_r+0x8>
 8006d78:	f7ff bfc0 	b.w	8006cfc <__sprint_r.part.0>
 8006d7c:	b410      	push	{r4}
 8006d7e:	4618      	mov	r0, r3
 8006d80:	6053      	str	r3, [r2, #4]
 8006d82:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006d86:	4770      	bx	lr

08006d88 <_write_r>:
 8006d88:	b570      	push	{r4, r5, r6, lr}
 8006d8a:	460d      	mov	r5, r1
 8006d8c:	4c08      	ldr	r4, [pc, #32]	; (8006db0 <_write_r+0x28>)
 8006d8e:	4611      	mov	r1, r2
 8006d90:	4606      	mov	r6, r0
 8006d92:	461a      	mov	r2, r3
 8006d94:	4628      	mov	r0, r5
 8006d96:	2300      	movs	r3, #0
 8006d98:	6023      	str	r3, [r4, #0]
 8006d9a:	f7fb fafd 	bl	8002398 <_write>
 8006d9e:	1c43      	adds	r3, r0, #1
 8006da0:	d000      	beq.n	8006da4 <_write_r+0x1c>
 8006da2:	bd70      	pop	{r4, r5, r6, pc}
 8006da4:	6823      	ldr	r3, [r4, #0]
 8006da6:	2b00      	cmp	r3, #0
 8006da8:	d0fb      	beq.n	8006da2 <_write_r+0x1a>
 8006daa:	6033      	str	r3, [r6, #0]
 8006dac:	bd70      	pop	{r4, r5, r6, pc}
 8006dae:	bf00      	nop
 8006db0:	20001d8c 	.word	0x20001d8c

08006db4 <__register_exitproc>:
 8006db4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006db8:	4d2b      	ldr	r5, [pc, #172]	; (8006e68 <__register_exitproc+0xb4>)
 8006dba:	4606      	mov	r6, r0
 8006dbc:	6828      	ldr	r0, [r5, #0]
 8006dbe:	4698      	mov	r8, r3
 8006dc0:	460f      	mov	r7, r1
 8006dc2:	4691      	mov	r9, r2
 8006dc4:	f7fe fe96 	bl	8005af4 <__retarget_lock_acquire_recursive>
 8006dc8:	4b28      	ldr	r3, [pc, #160]	; (8006e6c <__register_exitproc+0xb8>)
 8006dca:	681c      	ldr	r4, [r3, #0]
 8006dcc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006dd0:	2b00      	cmp	r3, #0
 8006dd2:	d03d      	beq.n	8006e50 <__register_exitproc+0x9c>
 8006dd4:	685a      	ldr	r2, [r3, #4]
 8006dd6:	2a1f      	cmp	r2, #31
 8006dd8:	dc0d      	bgt.n	8006df6 <__register_exitproc+0x42>
 8006dda:	f102 0c01 	add.w	ip, r2, #1
 8006dde:	bb16      	cbnz	r6, 8006e26 <__register_exitproc+0x72>
 8006de0:	3202      	adds	r2, #2
 8006de2:	f8c3 c004 	str.w	ip, [r3, #4]
 8006de6:	6828      	ldr	r0, [r5, #0]
 8006de8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006dec:	f7fe fe84 	bl	8005af8 <__retarget_lock_release_recursive>
 8006df0:	2000      	movs	r0, #0
 8006df2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006df6:	4b1e      	ldr	r3, [pc, #120]	; (8006e70 <__register_exitproc+0xbc>)
 8006df8:	b37b      	cbz	r3, 8006e5a <__register_exitproc+0xa6>
 8006dfa:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006dfe:	f3af 8000 	nop.w
 8006e02:	4603      	mov	r3, r0
 8006e04:	b348      	cbz	r0, 8006e5a <__register_exitproc+0xa6>
 8006e06:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006e0a:	2100      	movs	r1, #0
 8006e0c:	e9c0 2100 	strd	r2, r1, [r0]
 8006e10:	f04f 0c01 	mov.w	ip, #1
 8006e14:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006e18:	460a      	mov	r2, r1
 8006e1a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006e1e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006e22:	2e00      	cmp	r6, #0
 8006e24:	d0dc      	beq.n	8006de0 <__register_exitproc+0x2c>
 8006e26:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006e2a:	2401      	movs	r4, #1
 8006e2c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006e30:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006e34:	4094      	lsls	r4, r2
 8006e36:	4320      	orrs	r0, r4
 8006e38:	2e02      	cmp	r6, #2
 8006e3a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006e3e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006e42:	d1cd      	bne.n	8006de0 <__register_exitproc+0x2c>
 8006e44:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006e48:	430c      	orrs	r4, r1
 8006e4a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006e4e:	e7c7      	b.n	8006de0 <__register_exitproc+0x2c>
 8006e50:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006e54:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006e58:	e7bc      	b.n	8006dd4 <__register_exitproc+0x20>
 8006e5a:	6828      	ldr	r0, [r5, #0]
 8006e5c:	f7fe fe4c 	bl	8005af8 <__retarget_lock_release_recursive>
 8006e60:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006e64:	e7c5      	b.n	8006df2 <__register_exitproc+0x3e>
 8006e66:	bf00      	nop
 8006e68:	200004b0 	.word	0x200004b0
 8006e6c:	08007414 	.word	0x08007414
 8006e70:	00000000 	.word	0x00000000

08006e74 <_calloc_r>:
 8006e74:	b510      	push	{r4, lr}
 8006e76:	fb02 f101 	mul.w	r1, r2, r1
 8006e7a:	f7fe feb7 	bl	8005bec <_malloc_r>
 8006e7e:	4604      	mov	r4, r0
 8006e80:	b1d8      	cbz	r0, 8006eba <_calloc_r+0x46>
 8006e82:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006e86:	f022 0203 	bic.w	r2, r2, #3
 8006e8a:	3a04      	subs	r2, #4
 8006e8c:	2a24      	cmp	r2, #36	; 0x24
 8006e8e:	d81d      	bhi.n	8006ecc <_calloc_r+0x58>
 8006e90:	2a13      	cmp	r2, #19
 8006e92:	d914      	bls.n	8006ebe <_calloc_r+0x4a>
 8006e94:	2300      	movs	r3, #0
 8006e96:	2a1b      	cmp	r2, #27
 8006e98:	e9c0 3300 	strd	r3, r3, [r0]
 8006e9c:	d91b      	bls.n	8006ed6 <_calloc_r+0x62>
 8006e9e:	2a24      	cmp	r2, #36	; 0x24
 8006ea0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006ea4:	bf0a      	itet	eq
 8006ea6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006eaa:	f100 0210 	addne.w	r2, r0, #16
 8006eae:	f100 0218 	addeq.w	r2, r0, #24
 8006eb2:	2300      	movs	r3, #0
 8006eb4:	e9c2 3300 	strd	r3, r3, [r2]
 8006eb8:	6093      	str	r3, [r2, #8]
 8006eba:	4620      	mov	r0, r4
 8006ebc:	bd10      	pop	{r4, pc}
 8006ebe:	4602      	mov	r2, r0
 8006ec0:	2300      	movs	r3, #0
 8006ec2:	e9c2 3300 	strd	r3, r3, [r2]
 8006ec6:	6093      	str	r3, [r2, #8]
 8006ec8:	4620      	mov	r0, r4
 8006eca:	bd10      	pop	{r4, pc}
 8006ecc:	2100      	movs	r1, #0
 8006ece:	f7fb fb25 	bl	800251c <memset>
 8006ed2:	4620      	mov	r0, r4
 8006ed4:	bd10      	pop	{r4, pc}
 8006ed6:	f100 0208 	add.w	r2, r0, #8
 8006eda:	e7f1      	b.n	8006ec0 <_calloc_r+0x4c>

08006edc <_close_r>:
 8006edc:	b538      	push	{r3, r4, r5, lr}
 8006ede:	4c07      	ldr	r4, [pc, #28]	; (8006efc <_close_r+0x20>)
 8006ee0:	2300      	movs	r3, #0
 8006ee2:	4605      	mov	r5, r0
 8006ee4:	4608      	mov	r0, r1
 8006ee6:	6023      	str	r3, [r4, #0]
 8006ee8:	f7fb fa85 	bl	80023f6 <_close>
 8006eec:	1c43      	adds	r3, r0, #1
 8006eee:	d000      	beq.n	8006ef2 <_close_r+0x16>
 8006ef0:	bd38      	pop	{r3, r4, r5, pc}
 8006ef2:	6823      	ldr	r3, [r4, #0]
 8006ef4:	2b00      	cmp	r3, #0
 8006ef6:	d0fb      	beq.n	8006ef0 <_close_r+0x14>
 8006ef8:	602b      	str	r3, [r5, #0]
 8006efa:	bd38      	pop	{r3, r4, r5, pc}
 8006efc:	20001d8c 	.word	0x20001d8c

08006f00 <_fclose_r>:
 8006f00:	b570      	push	{r4, r5, r6, lr}
 8006f02:	2900      	cmp	r1, #0
 8006f04:	d048      	beq.n	8006f98 <_fclose_r+0x98>
 8006f06:	4605      	mov	r5, r0
 8006f08:	460c      	mov	r4, r1
 8006f0a:	b110      	cbz	r0, 8006f12 <_fclose_r+0x12>
 8006f0c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006f0e:	2b00      	cmp	r3, #0
 8006f10:	d048      	beq.n	8006fa4 <_fclose_r+0xa4>
 8006f12:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006f14:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f18:	07d0      	lsls	r0, r2, #31
 8006f1a:	d440      	bmi.n	8006f9e <_fclose_r+0x9e>
 8006f1c:	0599      	lsls	r1, r3, #22
 8006f1e:	d530      	bpl.n	8006f82 <_fclose_r+0x82>
 8006f20:	4621      	mov	r1, r4
 8006f22:	4628      	mov	r0, r5
 8006f24:	f7fe f990 	bl	8005248 <__sflush_r>
 8006f28:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006f2a:	4606      	mov	r6, r0
 8006f2c:	b133      	cbz	r3, 8006f3c <_fclose_r+0x3c>
 8006f2e:	69e1      	ldr	r1, [r4, #28]
 8006f30:	4628      	mov	r0, r5
 8006f32:	4798      	blx	r3
 8006f34:	2800      	cmp	r0, #0
 8006f36:	bfb8      	it	lt
 8006f38:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006f3c:	89a3      	ldrh	r3, [r4, #12]
 8006f3e:	061a      	lsls	r2, r3, #24
 8006f40:	d43c      	bmi.n	8006fbc <_fclose_r+0xbc>
 8006f42:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006f44:	b141      	cbz	r1, 8006f58 <_fclose_r+0x58>
 8006f46:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006f4a:	4299      	cmp	r1, r3
 8006f4c:	d002      	beq.n	8006f54 <_fclose_r+0x54>
 8006f4e:	4628      	mov	r0, r5
 8006f50:	f7fe fb22 	bl	8005598 <_free_r>
 8006f54:	2300      	movs	r3, #0
 8006f56:	6323      	str	r3, [r4, #48]	; 0x30
 8006f58:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006f5a:	b121      	cbz	r1, 8006f66 <_fclose_r+0x66>
 8006f5c:	4628      	mov	r0, r5
 8006f5e:	f7fe fb1b 	bl	8005598 <_free_r>
 8006f62:	2300      	movs	r3, #0
 8006f64:	6463      	str	r3, [r4, #68]	; 0x44
 8006f66:	f7fe faa1 	bl	80054ac <__sfp_lock_acquire>
 8006f6a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006f6c:	2200      	movs	r2, #0
 8006f6e:	07db      	lsls	r3, r3, #31
 8006f70:	81a2      	strh	r2, [r4, #12]
 8006f72:	d51f      	bpl.n	8006fb4 <_fclose_r+0xb4>
 8006f74:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f76:	f7fe fdbb 	bl	8005af0 <__retarget_lock_close_recursive>
 8006f7a:	f7fe fa9d 	bl	80054b8 <__sfp_lock_release>
 8006f7e:	4630      	mov	r0, r6
 8006f80:	bd70      	pop	{r4, r5, r6, pc}
 8006f82:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f84:	f7fe fdb6 	bl	8005af4 <__retarget_lock_acquire_recursive>
 8006f88:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006f8c:	2b00      	cmp	r3, #0
 8006f8e:	d1c7      	bne.n	8006f20 <_fclose_r+0x20>
 8006f90:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006f92:	f016 0601 	ands.w	r6, r6, #1
 8006f96:	d016      	beq.n	8006fc6 <_fclose_r+0xc6>
 8006f98:	2600      	movs	r6, #0
 8006f9a:	4630      	mov	r0, r6
 8006f9c:	bd70      	pop	{r4, r5, r6, pc}
 8006f9e:	2b00      	cmp	r3, #0
 8006fa0:	d0fa      	beq.n	8006f98 <_fclose_r+0x98>
 8006fa2:	e7bd      	b.n	8006f20 <_fclose_r+0x20>
 8006fa4:	f7fe fa56 	bl	8005454 <__sinit>
 8006fa8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006faa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006fae:	07d0      	lsls	r0, r2, #31
 8006fb0:	d4f5      	bmi.n	8006f9e <_fclose_r+0x9e>
 8006fb2:	e7b3      	b.n	8006f1c <_fclose_r+0x1c>
 8006fb4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fb6:	f7fe fd9f 	bl	8005af8 <__retarget_lock_release_recursive>
 8006fba:	e7db      	b.n	8006f74 <_fclose_r+0x74>
 8006fbc:	6921      	ldr	r1, [r4, #16]
 8006fbe:	4628      	mov	r0, r5
 8006fc0:	f7fe faea 	bl	8005598 <_free_r>
 8006fc4:	e7bd      	b.n	8006f42 <_fclose_r+0x42>
 8006fc6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006fc8:	f7fe fd96 	bl	8005af8 <__retarget_lock_release_recursive>
 8006fcc:	4630      	mov	r0, r6
 8006fce:	bd70      	pop	{r4, r5, r6, pc}

08006fd0 <__fputwc>:
 8006fd0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006fd4:	b082      	sub	sp, #8
 8006fd6:	4681      	mov	r9, r0
 8006fd8:	4688      	mov	r8, r1
 8006fda:	4614      	mov	r4, r2
 8006fdc:	f000 f8a0 	bl	8007120 <__locale_mb_cur_max>
 8006fe0:	2801      	cmp	r0, #1
 8006fe2:	d103      	bne.n	8006fec <__fputwc+0x1c>
 8006fe4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006fe8:	2bfe      	cmp	r3, #254	; 0xfe
 8006fea:	d933      	bls.n	8007054 <__fputwc+0x84>
 8006fec:	4642      	mov	r2, r8
 8006fee:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006ff2:	a901      	add	r1, sp, #4
 8006ff4:	4648      	mov	r0, r9
 8006ff6:	f000 f93b 	bl	8007270 <_wcrtomb_r>
 8006ffa:	1c42      	adds	r2, r0, #1
 8006ffc:	4606      	mov	r6, r0
 8006ffe:	d02f      	beq.n	8007060 <__fputwc+0x90>
 8007000:	b320      	cbz	r0, 800704c <__fputwc+0x7c>
 8007002:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007006:	2500      	movs	r5, #0
 8007008:	f10d 0a04 	add.w	sl, sp, #4
 800700c:	e009      	b.n	8007022 <__fputwc+0x52>
 800700e:	6823      	ldr	r3, [r4, #0]
 8007010:	1c5a      	adds	r2, r3, #1
 8007012:	6022      	str	r2, [r4, #0]
 8007014:	f883 c000 	strb.w	ip, [r3]
 8007018:	3501      	adds	r5, #1
 800701a:	42b5      	cmp	r5, r6
 800701c:	d216      	bcs.n	800704c <__fputwc+0x7c>
 800701e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007022:	68a3      	ldr	r3, [r4, #8]
 8007024:	3b01      	subs	r3, #1
 8007026:	2b00      	cmp	r3, #0
 8007028:	60a3      	str	r3, [r4, #8]
 800702a:	daf0      	bge.n	800700e <__fputwc+0x3e>
 800702c:	69a7      	ldr	r7, [r4, #24]
 800702e:	42bb      	cmp	r3, r7
 8007030:	4661      	mov	r1, ip
 8007032:	4622      	mov	r2, r4
 8007034:	4648      	mov	r0, r9
 8007036:	db02      	blt.n	800703e <__fputwc+0x6e>
 8007038:	f1bc 0f0a 	cmp.w	ip, #10
 800703c:	d1e7      	bne.n	800700e <__fputwc+0x3e>
 800703e:	f000 f8bf 	bl	80071c0 <__swbuf_r>
 8007042:	1c43      	adds	r3, r0, #1
 8007044:	d1e8      	bne.n	8007018 <__fputwc+0x48>
 8007046:	b002      	add	sp, #8
 8007048:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800704c:	4640      	mov	r0, r8
 800704e:	b002      	add	sp, #8
 8007050:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007054:	fa5f fc88 	uxtb.w	ip, r8
 8007058:	4606      	mov	r6, r0
 800705a:	f88d c004 	strb.w	ip, [sp, #4]
 800705e:	e7d2      	b.n	8007006 <__fputwc+0x36>
 8007060:	89a3      	ldrh	r3, [r4, #12]
 8007062:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007066:	81a3      	strh	r3, [r4, #12]
 8007068:	b002      	add	sp, #8
 800706a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800706e:	bf00      	nop

08007070 <_fputwc_r>:
 8007070:	b530      	push	{r4, r5, lr}
 8007072:	4605      	mov	r5, r0
 8007074:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007076:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800707a:	07c0      	lsls	r0, r0, #31
 800707c:	4614      	mov	r4, r2
 800707e:	b083      	sub	sp, #12
 8007080:	b29a      	uxth	r2, r3
 8007082:	d401      	bmi.n	8007088 <_fputwc_r+0x18>
 8007084:	0590      	lsls	r0, r2, #22
 8007086:	d51c      	bpl.n	80070c2 <_fputwc_r+0x52>
 8007088:	0490      	lsls	r0, r2, #18
 800708a:	d406      	bmi.n	800709a <_fputwc_r+0x2a>
 800708c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800708e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8007092:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007096:	81a3      	strh	r3, [r4, #12]
 8007098:	6662      	str	r2, [r4, #100]	; 0x64
 800709a:	4628      	mov	r0, r5
 800709c:	4622      	mov	r2, r4
 800709e:	f7ff ff97 	bl	8006fd0 <__fputwc>
 80070a2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80070a4:	07da      	lsls	r2, r3, #31
 80070a6:	4605      	mov	r5, r0
 80070a8:	d402      	bmi.n	80070b0 <_fputwc_r+0x40>
 80070aa:	89a3      	ldrh	r3, [r4, #12]
 80070ac:	059b      	lsls	r3, r3, #22
 80070ae:	d502      	bpl.n	80070b6 <_fputwc_r+0x46>
 80070b0:	4628      	mov	r0, r5
 80070b2:	b003      	add	sp, #12
 80070b4:	bd30      	pop	{r4, r5, pc}
 80070b6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070b8:	f7fe fd1e 	bl	8005af8 <__retarget_lock_release_recursive>
 80070bc:	4628      	mov	r0, r5
 80070be:	b003      	add	sp, #12
 80070c0:	bd30      	pop	{r4, r5, pc}
 80070c2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070c4:	9101      	str	r1, [sp, #4]
 80070c6:	f7fe fd15 	bl	8005af4 <__retarget_lock_acquire_recursive>
 80070ca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80070ce:	9901      	ldr	r1, [sp, #4]
 80070d0:	b29a      	uxth	r2, r3
 80070d2:	e7d9      	b.n	8007088 <_fputwc_r+0x18>

080070d4 <_fstat_r>:
 80070d4:	b538      	push	{r3, r4, r5, lr}
 80070d6:	460b      	mov	r3, r1
 80070d8:	4c07      	ldr	r4, [pc, #28]	; (80070f8 <_fstat_r+0x24>)
 80070da:	4605      	mov	r5, r0
 80070dc:	4611      	mov	r1, r2
 80070de:	4618      	mov	r0, r3
 80070e0:	2300      	movs	r3, #0
 80070e2:	6023      	str	r3, [r4, #0]
 80070e4:	f7fb f98a 	bl	80023fc <_fstat>
 80070e8:	1c43      	adds	r3, r0, #1
 80070ea:	d000      	beq.n	80070ee <_fstat_r+0x1a>
 80070ec:	bd38      	pop	{r3, r4, r5, pc}
 80070ee:	6823      	ldr	r3, [r4, #0]
 80070f0:	2b00      	cmp	r3, #0
 80070f2:	d0fb      	beq.n	80070ec <_fstat_r+0x18>
 80070f4:	602b      	str	r3, [r5, #0]
 80070f6:	bd38      	pop	{r3, r4, r5, pc}
 80070f8:	20001d8c 	.word	0x20001d8c

080070fc <_isatty_r>:
 80070fc:	b538      	push	{r3, r4, r5, lr}
 80070fe:	4c07      	ldr	r4, [pc, #28]	; (800711c <_isatty_r+0x20>)
 8007100:	2300      	movs	r3, #0
 8007102:	4605      	mov	r5, r0
 8007104:	4608      	mov	r0, r1
 8007106:	6023      	str	r3, [r4, #0]
 8007108:	f7fb f97d 	bl	8002406 <_isatty>
 800710c:	1c43      	adds	r3, r0, #1
 800710e:	d000      	beq.n	8007112 <_isatty_r+0x16>
 8007110:	bd38      	pop	{r3, r4, r5, pc}
 8007112:	6823      	ldr	r3, [r4, #0]
 8007114:	2b00      	cmp	r3, #0
 8007116:	d0fb      	beq.n	8007110 <_isatty_r+0x14>
 8007118:	602b      	str	r3, [r5, #0]
 800711a:	bd38      	pop	{r3, r4, r5, pc}
 800711c:	20001d8c 	.word	0x20001d8c

08007120 <__locale_mb_cur_max>:
 8007120:	4b04      	ldr	r3, [pc, #16]	; (8007134 <__locale_mb_cur_max+0x14>)
 8007122:	4a05      	ldr	r2, [pc, #20]	; (8007138 <__locale_mb_cur_max+0x18>)
 8007124:	681b      	ldr	r3, [r3, #0]
 8007126:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007128:	2b00      	cmp	r3, #0
 800712a:	bf08      	it	eq
 800712c:	4613      	moveq	r3, r2
 800712e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007132:	4770      	bx	lr
 8007134:	20000080 	.word	0x20000080
 8007138:	200008c4 	.word	0x200008c4

0800713c <_lseek_r>:
 800713c:	b570      	push	{r4, r5, r6, lr}
 800713e:	460d      	mov	r5, r1
 8007140:	4c08      	ldr	r4, [pc, #32]	; (8007164 <_lseek_r+0x28>)
 8007142:	4611      	mov	r1, r2
 8007144:	4606      	mov	r6, r0
 8007146:	461a      	mov	r2, r3
 8007148:	4628      	mov	r0, r5
 800714a:	2300      	movs	r3, #0
 800714c:	6023      	str	r3, [r4, #0]
 800714e:	f7fb f95c 	bl	800240a <_lseek>
 8007152:	1c43      	adds	r3, r0, #1
 8007154:	d000      	beq.n	8007158 <_lseek_r+0x1c>
 8007156:	bd70      	pop	{r4, r5, r6, pc}
 8007158:	6823      	ldr	r3, [r4, #0]
 800715a:	2b00      	cmp	r3, #0
 800715c:	d0fb      	beq.n	8007156 <_lseek_r+0x1a>
 800715e:	6033      	str	r3, [r6, #0]
 8007160:	bd70      	pop	{r4, r5, r6, pc}
 8007162:	bf00      	nop
 8007164:	20001d8c 	.word	0x20001d8c

08007168 <__ascii_mbtowc>:
 8007168:	b082      	sub	sp, #8
 800716a:	b149      	cbz	r1, 8007180 <__ascii_mbtowc+0x18>
 800716c:	b15a      	cbz	r2, 8007186 <__ascii_mbtowc+0x1e>
 800716e:	b16b      	cbz	r3, 800718c <__ascii_mbtowc+0x24>
 8007170:	7813      	ldrb	r3, [r2, #0]
 8007172:	600b      	str	r3, [r1, #0]
 8007174:	7812      	ldrb	r2, [r2, #0]
 8007176:	1c10      	adds	r0, r2, #0
 8007178:	bf18      	it	ne
 800717a:	2001      	movne	r0, #1
 800717c:	b002      	add	sp, #8
 800717e:	4770      	bx	lr
 8007180:	a901      	add	r1, sp, #4
 8007182:	2a00      	cmp	r2, #0
 8007184:	d1f3      	bne.n	800716e <__ascii_mbtowc+0x6>
 8007186:	4610      	mov	r0, r2
 8007188:	b002      	add	sp, #8
 800718a:	4770      	bx	lr
 800718c:	f06f 0001 	mvn.w	r0, #1
 8007190:	e7f4      	b.n	800717c <__ascii_mbtowc+0x14>
 8007192:	bf00      	nop

08007194 <_read_r>:
 8007194:	b570      	push	{r4, r5, r6, lr}
 8007196:	460d      	mov	r5, r1
 8007198:	4c08      	ldr	r4, [pc, #32]	; (80071bc <_read_r+0x28>)
 800719a:	4611      	mov	r1, r2
 800719c:	4606      	mov	r6, r0
 800719e:	461a      	mov	r2, r3
 80071a0:	4628      	mov	r0, r5
 80071a2:	2300      	movs	r3, #0
 80071a4:	6023      	str	r3, [r4, #0]
 80071a6:	f7fb f8e4 	bl	8002372 <_read>
 80071aa:	1c43      	adds	r3, r0, #1
 80071ac:	d000      	beq.n	80071b0 <_read_r+0x1c>
 80071ae:	bd70      	pop	{r4, r5, r6, pc}
 80071b0:	6823      	ldr	r3, [r4, #0]
 80071b2:	2b00      	cmp	r3, #0
 80071b4:	d0fb      	beq.n	80071ae <_read_r+0x1a>
 80071b6:	6033      	str	r3, [r6, #0]
 80071b8:	bd70      	pop	{r4, r5, r6, pc}
 80071ba:	bf00      	nop
 80071bc:	20001d8c 	.word	0x20001d8c

080071c0 <__swbuf_r>:
 80071c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80071c2:	460d      	mov	r5, r1
 80071c4:	4614      	mov	r4, r2
 80071c6:	4606      	mov	r6, r0
 80071c8:	b110      	cbz	r0, 80071d0 <__swbuf_r+0x10>
 80071ca:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80071cc:	2b00      	cmp	r3, #0
 80071ce:	d043      	beq.n	8007258 <__swbuf_r+0x98>
 80071d0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80071d4:	69a3      	ldr	r3, [r4, #24]
 80071d6:	60a3      	str	r3, [r4, #8]
 80071d8:	b291      	uxth	r1, r2
 80071da:	0708      	lsls	r0, r1, #28
 80071dc:	d51b      	bpl.n	8007216 <__swbuf_r+0x56>
 80071de:	6923      	ldr	r3, [r4, #16]
 80071e0:	b1cb      	cbz	r3, 8007216 <__swbuf_r+0x56>
 80071e2:	b2ed      	uxtb	r5, r5
 80071e4:	0489      	lsls	r1, r1, #18
 80071e6:	462f      	mov	r7, r5
 80071e8:	d522      	bpl.n	8007230 <__swbuf_r+0x70>
 80071ea:	6822      	ldr	r2, [r4, #0]
 80071ec:	6961      	ldr	r1, [r4, #20]
 80071ee:	1ad3      	subs	r3, r2, r3
 80071f0:	4299      	cmp	r1, r3
 80071f2:	dd29      	ble.n	8007248 <__swbuf_r+0x88>
 80071f4:	3301      	adds	r3, #1
 80071f6:	68a1      	ldr	r1, [r4, #8]
 80071f8:	1c50      	adds	r0, r2, #1
 80071fa:	3901      	subs	r1, #1
 80071fc:	60a1      	str	r1, [r4, #8]
 80071fe:	6020      	str	r0, [r4, #0]
 8007200:	7015      	strb	r5, [r2, #0]
 8007202:	6962      	ldr	r2, [r4, #20]
 8007204:	429a      	cmp	r2, r3
 8007206:	d02a      	beq.n	800725e <__swbuf_r+0x9e>
 8007208:	89a3      	ldrh	r3, [r4, #12]
 800720a:	07db      	lsls	r3, r3, #31
 800720c:	d501      	bpl.n	8007212 <__swbuf_r+0x52>
 800720e:	2d0a      	cmp	r5, #10
 8007210:	d025      	beq.n	800725e <__swbuf_r+0x9e>
 8007212:	4638      	mov	r0, r7
 8007214:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007216:	4621      	mov	r1, r4
 8007218:	4630      	mov	r0, r6
 800721a:	f7fc fffd 	bl	8004218 <__swsetup_r>
 800721e:	bb20      	cbnz	r0, 800726a <__swbuf_r+0xaa>
 8007220:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007224:	6923      	ldr	r3, [r4, #16]
 8007226:	b291      	uxth	r1, r2
 8007228:	b2ed      	uxtb	r5, r5
 800722a:	0489      	lsls	r1, r1, #18
 800722c:	462f      	mov	r7, r5
 800722e:	d4dc      	bmi.n	80071ea <__swbuf_r+0x2a>
 8007230:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007232:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007236:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800723a:	81a2      	strh	r2, [r4, #12]
 800723c:	6822      	ldr	r2, [r4, #0]
 800723e:	6661      	str	r1, [r4, #100]	; 0x64
 8007240:	6961      	ldr	r1, [r4, #20]
 8007242:	1ad3      	subs	r3, r2, r3
 8007244:	4299      	cmp	r1, r3
 8007246:	dcd5      	bgt.n	80071f4 <__swbuf_r+0x34>
 8007248:	4621      	mov	r1, r4
 800724a:	4630      	mov	r0, r6
 800724c:	f7fe f8a6 	bl	800539c <_fflush_r>
 8007250:	b958      	cbnz	r0, 800726a <__swbuf_r+0xaa>
 8007252:	6822      	ldr	r2, [r4, #0]
 8007254:	2301      	movs	r3, #1
 8007256:	e7ce      	b.n	80071f6 <__swbuf_r+0x36>
 8007258:	f7fe f8fc 	bl	8005454 <__sinit>
 800725c:	e7b8      	b.n	80071d0 <__swbuf_r+0x10>
 800725e:	4621      	mov	r1, r4
 8007260:	4630      	mov	r0, r6
 8007262:	f7fe f89b 	bl	800539c <_fflush_r>
 8007266:	2800      	cmp	r0, #0
 8007268:	d0d3      	beq.n	8007212 <__swbuf_r+0x52>
 800726a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800726e:	e7d0      	b.n	8007212 <__swbuf_r+0x52>

08007270 <_wcrtomb_r>:
 8007270:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007272:	4c11      	ldr	r4, [pc, #68]	; (80072b8 <_wcrtomb_r+0x48>)
 8007274:	6824      	ldr	r4, [r4, #0]
 8007276:	b085      	sub	sp, #20
 8007278:	4606      	mov	r6, r0
 800727a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800727c:	461f      	mov	r7, r3
 800727e:	b151      	cbz	r1, 8007296 <_wcrtomb_r+0x26>
 8007280:	4d0e      	ldr	r5, [pc, #56]	; (80072bc <_wcrtomb_r+0x4c>)
 8007282:	2c00      	cmp	r4, #0
 8007284:	bf08      	it	eq
 8007286:	462c      	moveq	r4, r5
 8007288:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800728c:	47a0      	blx	r4
 800728e:	1c43      	adds	r3, r0, #1
 8007290:	d00c      	beq.n	80072ac <_wcrtomb_r+0x3c>
 8007292:	b005      	add	sp, #20
 8007294:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007296:	4a09      	ldr	r2, [pc, #36]	; (80072bc <_wcrtomb_r+0x4c>)
 8007298:	2c00      	cmp	r4, #0
 800729a:	bf08      	it	eq
 800729c:	4614      	moveq	r4, r2
 800729e:	460a      	mov	r2, r1
 80072a0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80072a4:	a901      	add	r1, sp, #4
 80072a6:	47a0      	blx	r4
 80072a8:	1c43      	adds	r3, r0, #1
 80072aa:	d1f2      	bne.n	8007292 <_wcrtomb_r+0x22>
 80072ac:	2200      	movs	r2, #0
 80072ae:	238a      	movs	r3, #138	; 0x8a
 80072b0:	603a      	str	r2, [r7, #0]
 80072b2:	6033      	str	r3, [r6, #0]
 80072b4:	b005      	add	sp, #20
 80072b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80072b8:	20000080 	.word	0x20000080
 80072bc:	200008c4 	.word	0x200008c4

080072c0 <__ascii_wctomb>:
 80072c0:	b121      	cbz	r1, 80072cc <__ascii_wctomb+0xc>
 80072c2:	2aff      	cmp	r2, #255	; 0xff
 80072c4:	d804      	bhi.n	80072d0 <__ascii_wctomb+0x10>
 80072c6:	700a      	strb	r2, [r1, #0]
 80072c8:	2001      	movs	r0, #1
 80072ca:	4770      	bx	lr
 80072cc:	4608      	mov	r0, r1
 80072ce:	4770      	bx	lr
 80072d0:	238a      	movs	r3, #138	; 0x8a
 80072d2:	6003      	str	r3, [r0, #0]
 80072d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80072d8:	4770      	bx	lr
 80072da:	bf00      	nop

080072dc <_init>:
 80072dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80072de:	bf00      	nop
 80072e0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80072e2:	bc08      	pop	{r3}
 80072e4:	469e      	mov	lr, r3
 80072e6:	4770      	bx	lr

080072e8 <_fini>:
 80072e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80072ea:	bf00      	nop
 80072ec:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80072ee:	bc08      	pop	{r3}
 80072f0:	469e      	mov	lr, r3
 80072f2:	4770      	bx	lr
 80072f4:	0000      	movs	r0, r0
	...
