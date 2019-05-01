
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
 80001e0:	08007224 	.word	0x08007224

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
 80001fc:	08007224 	.word	0x08007224

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
 80010ee:	f000 f81a 	bl	8001126 <HAL_NVIC_SetPriorityGrouping>
 80010f2:	200f      	movs	r0, #15
 80010f4:	f000 fbc1 	bl	800187a <HAL_InitTick>
 80010f8:	2800      	cmp	r0, #0
 80010fa:	bf1c      	itt	ne
 80010fc:	2001      	movne	r0, #1
 80010fe:	bd80      	popne	{r7, pc}
 8001100:	f000 f96b 	bl	80013da <HAL_MspInit>
 8001104:	2000      	movs	r0, #0
 8001106:	bd80      	pop	{r7, pc}

08001108 <HAL_IncTick>:
 8001108:	f640 50a4 	movw	r0, #3492	; 0xda4
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	f840 1e00 	strt	r1, [r0]
 8001118:	4770      	bx	lr

0800111a <HAL_GetTick>:
 800111a:	f640 50a4 	movw	r0, #3492	; 0xda4
 800111e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001122:	6800      	ldr	r0, [r0, #0]
 8001124:	4770      	bx	lr

08001126 <HAL_NVIC_SetPriorityGrouping>:
 8001126:	f64e 510c 	movw	r1, #60684	; 0xed0c
 800112a:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 800112e:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001132:	680a      	ldr	r2, [r1, #0]
 8001134:	401a      	ands	r2, r3
 8001136:	f360 220a 	bfi	r2, r0, #8, #3
 800113a:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 800113e:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001142:	6008      	str	r0, [r1, #0]
 8001144:	4770      	bx	lr

08001146 <HAL_NVIC_SetPriority>:
 8001146:	b580      	push	{r7, lr}
 8001148:	466f      	mov	r7, sp
 800114a:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 800114e:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001152:	2800      	cmp	r0, #0
 8001154:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001158:	f000 030f 	and.w	r3, r0, #15
 800115c:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 8001160:	f1a3 0304 	sub.w	r3, r3, #4
 8001164:	4473      	add	r3, lr
 8001166:	bfb8      	it	lt
 8001168:	f103 0c0c 	addlt.w	ip, r3, #12
 800116c:	f8de 0000 	ldr.w	r0, [lr]
 8001170:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001174:	f100 0e04 	add.w	lr, r0, #4
 8001178:	1ec3      	subs	r3, r0, #3
 800117a:	f080 0007 	eor.w	r0, r0, #7
 800117e:	f1be 0f07 	cmp.w	lr, #7
 8001182:	f04f 0e01 	mov.w	lr, #1
 8001186:	bf38      	it	cc
 8001188:	2300      	movcc	r3, #0
 800118a:	2804      	cmp	r0, #4
 800118c:	bf28      	it	cs
 800118e:	2004      	movcs	r0, #4
 8001190:	fa0e f000 	lsl.w	r0, lr, r0
 8001194:	3801      	subs	r0, #1
 8001196:	4008      	ands	r0, r1
 8001198:	fa0e f103 	lsl.w	r1, lr, r3
 800119c:	310f      	adds	r1, #15
 800119e:	4098      	lsls	r0, r3
 80011a0:	4011      	ands	r1, r2
 80011a2:	4308      	orrs	r0, r1
 80011a4:	0100      	lsls	r0, r0, #4
 80011a6:	f88c 0000 	strb.w	r0, [ip]
 80011aa:	bd80      	pop	{r7, pc}

080011ac <HAL_NVIC_EnableIRQ>:
 80011ac:	f000 011f 	and.w	r1, r0, #31
 80011b0:	2201      	movs	r2, #1
 80011b2:	0940      	lsrs	r0, r0, #5
 80011b4:	fa02 f101 	lsl.w	r1, r2, r1
 80011b8:	f24e 1200 	movw	r2, #57600	; 0xe100
 80011bc:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80011c0:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80011c4:	4770      	bx	lr

080011c6 <HAL_SYSTICK_IRQHandler>:
 80011c6:	f000 b800 	b.w	80011ca <HAL_SYSTICK_Callback>

080011ca <HAL_SYSTICK_Callback>:
 80011ca:	4770      	bx	lr

080011cc <HAL_GPIO_Init>:
 80011cc:	b085      	sub	sp, #20
 80011ce:	f84d 4e00 	strt	r4, [sp]
 80011d2:	f84d 5e04 	strt	r5, [sp, #4]
 80011d6:	f84d 6e08 	strt	r6, [sp, #8]
 80011da:	f84d 7e0c 	strt	r7, [sp, #12]
 80011de:	f84d ee10 	strt	lr, [sp, #16]
 80011e2:	af03      	add	r7, sp, #12
 80011e4:	b084      	sub	sp, #16
 80011e6:	f84d 8e00 	strt	r8, [sp]
 80011ea:	f84d 9e04 	strt	r9, [sp, #4]
 80011ee:	f84d ae08 	strt	sl, [sp, #8]
 80011f2:	f84d be0c 	strt	fp, [sp, #12]
 80011f6:	b082      	sub	sp, #8
 80011f8:	680e      	ldr	r6, [r1, #0]
 80011fa:	2e00      	cmp	r6, #0
 80011fc:	f000 80e9 	beq.w	80013d2 <HAL_GPIO_Init+0x206>
 8001200:	f641 0200 	movw	r2, #6144	; 0x1800
 8001204:	2507      	movs	r5, #7
 8001206:	f04f 0801 	mov.w	r8, #1
 800120a:	f6c4 0200 	movt	r2, #18432	; 0x4800
 800120e:	4290      	cmp	r0, r2
 8001210:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 8001214:	ea4f 23b2 	mov.w	r3, r2, ror #10
 8001218:	bf08      	it	eq
 800121a:	2506      	moveq	r5, #6
 800121c:	2b06      	cmp	r3, #6
 800121e:	bf38      	it	cc
 8001220:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001224:	2200      	movs	r2, #0
 8001226:	f84d 5e00 	strt	r5, [sp]
 800122a:	2500      	movs	r5, #0
 800122c:	f1a8 0a01 	sub.w	sl, r8, #1
 8001230:	2301      	movs	r3, #1
 8001232:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001236:	ea16 090b 	ands.w	r9, r6, fp
 800123a:	f000 80c1 	beq.w	80013c0 <HAL_GPIO_Init+0x1f4>
 800123e:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001242:	f04e 0610 	orr.w	r6, lr, #16
 8001246:	2e12      	cmp	r6, #18
 8001248:	d116      	bne.n	8001278 <HAL_GPIO_Init+0xac>
 800124a:	f005 061c 	and.w	r6, r5, #28
 800124e:	230f      	movs	r3, #15
 8001250:	fa03 fc06 	lsl.w	ip, r3, r6
 8001254:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 8001258:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 800125c:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 8001260:	4404      	add	r4, r0
 8001262:	6a23      	ldr	r3, [r4, #32]
 8001264:	ea23 0c0c 	bic.w	ip, r3, ip
 8001268:	690b      	ldr	r3, [r1, #16]
 800126a:	40b3      	lsls	r3, r6
 800126c:	ea43 030c 	orr.w	r3, r3, ip
 8001270:	f844 3e20 	strt	r3, [r4, #32]
 8001274:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001278:	6806      	ldr	r6, [r0, #0]
 800127a:	2403      	movs	r4, #3
 800127c:	f00e 0c03 	and.w	ip, lr, #3
 8001280:	f1be 0f12 	cmp.w	lr, #18
 8001284:	fa04 f402 	lsl.w	r4, r4, r2
 8001288:	fa0c f302 	lsl.w	r3, ip, r2
 800128c:	ea26 0604 	bic.w	r6, r6, r4
 8001290:	ea43 0306 	orr.w	r3, r3, r6
 8001294:	ea6f 0604 	mvn.w	r6, r4
 8001298:	f840 3e00 	strt	r3, [r0]
 800129c:	d818      	bhi.n	80012d0 <HAL_GPIO_Init+0x104>
 800129e:	2301      	movs	r3, #1
 80012a0:	fa03 f30e 	lsl.w	r3, r3, lr
 80012a4:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 80012a8:	bf1f      	itttt	ne
 80012aa:	6883      	ldrne	r3, [r0, #8]
 80012ac:	4033      	andne	r3, r6
 80012ae:	68cc      	ldrne	r4, [r1, #12]
 80012b0:	4094      	lslne	r4, r2
 80012b2:	bf1f      	itttt	ne
 80012b4:	4323      	orrne	r3, r4
 80012b6:	f840 3e08 	strtne	r3, [r0, #8]
 80012ba:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 80012be:	fa03 f30a 	lslne.w	r3, r3, sl
 80012c2:	bf1f      	itttt	ne
 80012c4:	6844      	ldrne	r4, [r0, #4]
 80012c6:	ea24 040b 	bicne.w	r4, r4, fp
 80012ca:	4323      	orrne	r3, r4
 80012cc:	f840 3e04 	strtne	r3, [r0, #4]
 80012d0:	f1bc 0f03 	cmp.w	ip, #3
 80012d4:	d109      	bne.n	80012ea <HAL_GPIO_Init+0x11e>
 80012d6:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80012da:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80012dc:	fa03 f30a 	lsl.w	r3, r3, sl
 80012e0:	ea24 040b 	bic.w	r4, r4, fp
 80012e4:	4323      	orrs	r3, r4
 80012e6:	f840 3e2c 	strt	r3, [r0, #44]
 80012ea:	68c3      	ldr	r3, [r0, #12]
 80012ec:	4033      	ands	r3, r6
 80012ee:	688e      	ldr	r6, [r1, #8]
 80012f0:	4096      	lsls	r6, r2
 80012f2:	4333      	orrs	r3, r6
 80012f4:	f840 3e0c 	strt	r3, [r0, #12]
 80012f8:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80012fc:	d560      	bpl.n	80013c0 <HAL_GPIO_Init+0x1f4>
 80012fe:	f241 0360 	movw	r3, #4192	; 0x1060
 8001302:	f005 040c 	and.w	r4, r5, #12
 8001306:	f2c4 0302 	movt	r3, #16386	; 0x4002
 800130a:	461e      	mov	r6, r3
 800130c:	6833      	ldr	r3, [r6, #0]
 800130e:	f043 0301 	orr.w	r3, r3, #1
 8001312:	f846 3e00 	strt	r3, [r6]
 8001316:	6833      	ldr	r3, [r6, #0]
 8001318:	f240 4600 	movw	r6, #1024	; 0x400
 800131c:	f2c4 0601 	movt	r6, #16385	; 0x4001
 8001320:	46b6      	mov	lr, r6
 8001322:	f003 0301 	and.w	r3, r3, #1
 8001326:	f84d 3e04 	strt	r3, [sp, #4]
 800132a:	f02a 0303 	bic.w	r3, sl, #3
 800132e:	9e01      	ldr	r6, [sp, #4]
 8001330:	4473      	add	r3, lr
 8001332:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001336:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 800133a:	46b2      	mov	sl, r6
 800133c:	260f      	movs	r6, #15
 800133e:	f853 c00a 	ldr.w	ip, [r3, sl]
 8001342:	40a6      	lsls	r6, r4
 8001344:	ea2c 0c06 	bic.w	ip, ip, r6
 8001348:	9e00      	ldr	r6, [sp, #0]
 800134a:	fa06 f404 	lsl.w	r4, r6, r4
 800134e:	ea4c 0604 	orr.w	r6, ip, r4
 8001352:	eb03 030a 	add.w	r3, r3, sl
 8001356:	f843 6e00 	strt	r6, [r3]
 800135a:	eba3 030a 	sub.w	r3, r3, sl
 800135e:	f8de 3000 	ldr.w	r3, [lr]
 8001362:	684e      	ldr	r6, [r1, #4]
 8001364:	ea23 0309 	bic.w	r3, r3, r9
 8001368:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 800136c:	bf18      	it	ne
 800136e:	ea43 0309 	orrne.w	r3, r3, r9
 8001372:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001376:	f84e 3e00 	strt	r3, [lr]
 800137a:	f8de 3004 	ldr.w	r3, [lr, #4]
 800137e:	ea23 0309 	bic.w	r3, r3, r9
 8001382:	bf18      	it	ne
 8001384:	ea43 0309 	orrne.w	r3, r3, r9
 8001388:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800138c:	f84e 3e04 	strt	r3, [lr, #4]
 8001390:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001394:	ea23 0309 	bic.w	r3, r3, r9
 8001398:	bf18      	it	ne
 800139a:	ea43 0309 	orrne.w	r3, r3, r9
 800139e:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 80013a2:	f84e 3e08 	strt	r3, [lr, #8]
 80013a6:	f240 430c 	movw	r3, #1036	; 0x40c
 80013aa:	f2c4 0301 	movt	r3, #16385	; 0x4001
 80013ae:	461c      	mov	r4, r3
 80013b0:	6823      	ldr	r3, [r4, #0]
 80013b2:	ea23 0309 	bic.w	r3, r3, r9
 80013b6:	bf18      	it	ne
 80013b8:	ea43 0309 	orrne.w	r3, r3, r9
 80013bc:	f844 3e00 	strt	r3, [r4]
 80013c0:	680e      	ldr	r6, [r1, #0]
 80013c2:	3202      	adds	r2, #2
 80013c4:	3504      	adds	r5, #4
 80013c6:	fa36 f308 	lsrs.w	r3, r6, r8
 80013ca:	f108 0801 	add.w	r8, r8, #1
 80013ce:	f47f af2d 	bne.w	800122c <HAL_GPIO_Init+0x60>
 80013d2:	b002      	add	sp, #8
 80013d4:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80013d8:	bdf0      	pop	{r4, r5, r6, r7, pc}

080013da <HAL_MspInit>:
 80013da:	4770      	bx	lr

080013dc <HAL_RCC_GetSysClockFreq>:
 80013dc:	b082      	sub	sp, #8
 80013de:	f84d 7e00 	strt	r7, [sp]
 80013e2:	f84d ee04 	strt	lr, [sp, #4]
 80013e6:	466f      	mov	r7, sp
 80013e8:	f241 010c 	movw	r1, #4108	; 0x100c
 80013ec:	f241 2e00 	movw	lr, #4608	; 0x1200
 80013f0:	f242 4c00 	movw	ip, #9216	; 0x2400
 80013f4:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80013f8:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80013fc:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 8001400:	f851 2c04 	ldr.w	r2, [r1, #-4]
 8001404:	6808      	ldr	r0, [r1, #0]
 8001406:	f012 030c 	ands.w	r3, r2, #12
 800140a:	d005      	beq.n	8001418 <HAL_RCC_GetSysClockFreq+0x3c>
 800140c:	2b0c      	cmp	r3, #12
 800140e:	bf04      	itt	eq
 8001410:	f000 0003 	andeq.w	r0, r0, #3
 8001414:	2801      	cmpeq	r0, #1
 8001416:	d118      	bne.n	800144a <HAL_RCC_GetSysClockFreq+0x6e>
 8001418:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800141c:	f010 0f08 	tst.w	r0, #8
 8001420:	d103      	bne.n	800142a <HAL_RCC_GetSysClockFreq+0x4e>
 8001422:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 8001426:	0a00      	lsrs	r0, r0, #8
 8001428:	e002      	b.n	8001430 <HAL_RCC_GetSysClockFreq+0x54>
 800142a:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 800142e:	0900      	lsrs	r0, r0, #4
 8001430:	f247 3258 	movw	r2, #29528	; 0x7358
 8001434:	f000 000f 	and.w	r0, r0, #15
 8001438:	2b00      	cmp	r3, #0
 800143a:	f6c0 0200 	movt	r2, #2048	; 0x800
 800143e:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 8001442:	4610      	mov	r0, r2
 8001444:	bf18      	it	ne
 8001446:	2000      	movne	r0, #0
 8001448:	e00b      	b.n	8001462 <HAL_RCC_GetSysClockFreq+0x86>
 800144a:	f003 000f 	and.w	r0, r3, #15
 800144e:	2804      	cmp	r0, #4
 8001450:	bf04      	itt	eq
 8001452:	4660      	moveq	r0, ip
 8001454:	bd80      	popeq	{r7, pc}
 8001456:	2808      	cmp	r0, #8
 8001458:	bf04      	itt	eq
 800145a:	4670      	moveq	r0, lr
 800145c:	bd80      	popeq	{r7, pc}
 800145e:	2000      	movs	r0, #0
 8001460:	2200      	movs	r2, #0
 8001462:	2b0c      	cmp	r3, #12
 8001464:	bf18      	it	ne
 8001466:	bd80      	popne	{r7, pc}
 8001468:	6808      	ldr	r0, [r1, #0]
 800146a:	f000 0303 	and.w	r3, r0, #3
 800146e:	6808      	ldr	r0, [r1, #0]
 8001470:	2b03      	cmp	r3, #3
 8001472:	f3c0 1002 	ubfx	r0, r0, #4, #3
 8001476:	f100 0001 	add.w	r0, r0, #1
 800147a:	d003      	beq.n	8001484 <HAL_RCC_GetSysClockFreq+0xa8>
 800147c:	2b02      	cmp	r3, #2
 800147e:	46e6      	mov	lr, ip
 8001480:	bf18      	it	ne
 8001482:	4696      	movne	lr, r2
 8001484:	680a      	ldr	r2, [r1, #0]
 8001486:	fbbe f0f0 	udiv	r0, lr, r0
 800148a:	f3c2 2206 	ubfx	r2, r2, #8, #7
 800148e:	6809      	ldr	r1, [r1, #0]
 8001490:	4350      	muls	r0, r2
 8001492:	2202      	movs	r2, #2
 8001494:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001498:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 800149c:	fbb0 f0f1 	udiv	r0, r0, r1
 80014a0:	bd80      	pop	{r7, pc}

080014a2 <HAL_RCC_GetPCLK1Freq>:
 80014a2:	f240 0014 	movw	r0, #20
 80014a6:	f241 0108 	movw	r1, #4104	; 0x1008
 80014aa:	f247 3250 	movw	r2, #29520	; 0x7350
 80014ae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014b2:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014b6:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014ba:	6800      	ldr	r0, [r0, #0]
 80014bc:	6809      	ldr	r1, [r1, #0]
 80014be:	f3c1 2102 	ubfx	r1, r1, #8, #3
 80014c2:	5c51      	ldrb	r1, [r2, r1]
 80014c4:	f001 011f 	and.w	r1, r1, #31
 80014c8:	40c8      	lsrs	r0, r1
 80014ca:	4770      	bx	lr

080014cc <HAL_RCC_GetPCLK2Freq>:
 80014cc:	f240 0014 	movw	r0, #20
 80014d0:	f241 0108 	movw	r1, #4104	; 0x1008
 80014d4:	f247 3250 	movw	r2, #29520	; 0x7350
 80014d8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80014dc:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014e0:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014e4:	6800      	ldr	r0, [r0, #0]
 80014e6:	6809      	ldr	r1, [r1, #0]
 80014e8:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80014ec:	5c51      	ldrb	r1, [r2, r1]
 80014ee:	f001 011f 	and.w	r1, r1, #31
 80014f2:	40c8      	lsrs	r0, r1
 80014f4:	4770      	bx	lr

080014f6 <HAL_RCC_GetClockConfig>:
 80014f6:	220f      	movs	r2, #15
 80014f8:	6002      	str	r2, [r0, #0]
 80014fa:	f241 0208 	movw	r2, #4104	; 0x1008
 80014fe:	f2c4 0202 	movt	r2, #16386	; 0x4002
 8001502:	6813      	ldr	r3, [r2, #0]
 8001504:	f003 0303 	and.w	r3, r3, #3
 8001508:	6043      	str	r3, [r0, #4]
 800150a:	6813      	ldr	r3, [r2, #0]
 800150c:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001510:	6083      	str	r3, [r0, #8]
 8001512:	6813      	ldr	r3, [r2, #0]
 8001514:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8001518:	60c3      	str	r3, [r0, #12]
 800151a:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 800151e:	6812      	ldr	r2, [r2, #0]
 8001520:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 8001524:	6102      	str	r2, [r0, #16]
 8001526:	f242 0000 	movw	r0, #8192	; 0x2000
 800152a:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800152e:	6800      	ldr	r0, [r0, #0]
 8001530:	f000 0007 	and.w	r0, r0, #7
 8001534:	6008      	str	r0, [r1, #0]
 8001536:	4770      	bx	lr

08001538 <HAL_TIM_Base_Init>:
 8001538:	b5d0      	push	{r4, r6, r7, lr}
 800153a:	af02      	add	r7, sp, #8
 800153c:	4604      	mov	r4, r0
 800153e:	2c00      	cmp	r4, #0
 8001540:	bf04      	itt	eq
 8001542:	2001      	moveq	r0, #1
 8001544:	bdd0      	popeq	{r4, r6, r7, pc}
 8001546:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001548:	b920      	cbnz	r0, 8001554 <HAL_TIM_Base_Init+0x1c>
 800154a:	2000      	movs	r0, #0
 800154c:	63e0      	str	r0, [r4, #60]	; 0x3c
 800154e:	4620      	mov	r0, r4
 8001550:	f000 f892 	bl	8001678 <HAL_TIM_Base_MspInit>
 8001554:	2002      	movs	r0, #2
 8001556:	f640 32ff 	movw	r2, #3071	; 0xbff
 800155a:	6420      	str	r0, [r4, #64]	; 0x40
 800155c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001560:	6820      	ldr	r0, [r4, #0]
 8001562:	6801      	ldr	r1, [r0, #0]
 8001564:	4290      	cmp	r0, r2
 8001566:	dc0f      	bgt.n	8001588 <HAL_TIM_Base_Init+0x50>
 8001568:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 800156c:	bf1e      	ittt	ne
 800156e:	f240 4200 	movwne	r2, #1024	; 0x400
 8001572:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 8001576:	4290      	cmpne	r0, r2
 8001578:	d018      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 800157a:	f640 0200 	movw	r2, #2048	; 0x800
 800157e:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001582:	4290      	cmp	r0, r2
 8001584:	d012      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 8001586:	e015      	b.n	80015b4 <HAL_TIM_Base_Init+0x7c>
 8001588:	f640 4200 	movw	r2, #3072	; 0xc00
 800158c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001590:	4290      	cmp	r0, r2
 8001592:	bf1e      	ittt	ne
 8001594:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001598:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 800159c:	4290      	cmpne	r0, r2
 800159e:	d005      	beq.n	80015ac <HAL_TIM_Base_Init+0x74>
 80015a0:	f642 4200 	movw	r2, #11264	; 0x2c00
 80015a4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015a8:	4290      	cmp	r0, r2
 80015aa:	d103      	bne.n	80015b4 <HAL_TIM_Base_Init+0x7c>
 80015ac:	68a2      	ldr	r2, [r4, #8]
 80015ae:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 80015b2:	4311      	orrs	r1, r2
 80015b4:	f642 32ff 	movw	r2, #11263	; 0x2bff
 80015b8:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015bc:	4290      	cmp	r0, r2
 80015be:	dd14      	ble.n	80015ea <HAL_TIM_Base_Init+0xb2>
 80015c0:	f643 72ff 	movw	r2, #16383	; 0x3fff
 80015c4:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015c8:	4290      	cmp	r0, r2
 80015ca:	dd1a      	ble.n	8001602 <HAL_TIM_Base_Init+0xca>
 80015cc:	f244 0200 	movw	r2, #16384	; 0x4000
 80015d0:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80015d4:	4290      	cmp	r0, r2
 80015d6:	bf1e      	ittt	ne
 80015d8:	f644 0200 	movwne	r2, #18432	; 0x4800
 80015dc:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 80015e0:	4290      	cmpne	r0, r2
 80015e2:	d027      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 80015e4:	f244 4200 	movw	r2, #17408	; 0x4400
 80015e8:	e013      	b.n	8001612 <HAL_TIM_Base_Init+0xda>
 80015ea:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80015ee:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015f2:	4290      	cmp	r0, r2
 80015f4:	dc12      	bgt.n	800161c <HAL_TIM_Base_Init+0xe4>
 80015f6:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015fa:	d01b      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 80015fc:	f240 4200 	movw	r2, #1024	; 0x400
 8001600:	e014      	b.n	800162c <HAL_TIM_Base_Init+0xf4>
 8001602:	f642 4200 	movw	r2, #11264	; 0x2c00
 8001606:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800160a:	4290      	cmp	r0, r2
 800160c:	d012      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 800160e:	f243 4200 	movw	r2, #13312	; 0x3400
 8001612:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001616:	4290      	cmp	r0, r2
 8001618:	d00c      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 800161a:	e00f      	b.n	800163c <HAL_TIM_Base_Init+0x104>
 800161c:	f640 0200 	movw	r2, #2048	; 0x800
 8001620:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001624:	4290      	cmp	r0, r2
 8001626:	d005      	beq.n	8001634 <HAL_TIM_Base_Init+0xfc>
 8001628:	f640 4200 	movw	r2, #3072	; 0xc00
 800162c:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001630:	4290      	cmp	r0, r2
 8001632:	d103      	bne.n	800163c <HAL_TIM_Base_Init+0x104>
 8001634:	6922      	ldr	r2, [r4, #16]
 8001636:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 800163a:	4311      	orrs	r1, r2
 800163c:	69a2      	ldr	r2, [r4, #24]
 800163e:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 8001642:	4311      	orrs	r1, r2
 8001644:	6001      	str	r1, [r0, #0]
 8001646:	68e1      	ldr	r1, [r4, #12]
 8001648:	62c1      	str	r1, [r0, #44]	; 0x2c
 800164a:	6861      	ldr	r1, [r4, #4]
 800164c:	6281      	str	r1, [r0, #40]	; 0x28
 800164e:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 8001652:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 8001656:	ea4f 21b1 	mov.w	r1, r1, ror #10
 800165a:	2907      	cmp	r1, #7
 800165c:	d807      	bhi.n	800166e <HAL_TIM_Base_Init+0x136>
 800165e:	2201      	movs	r2, #1
 8001660:	fa02 f101 	lsl.w	r1, r2, r1
 8001664:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001668:	bf1c      	itt	ne
 800166a:	6961      	ldrne	r1, [r4, #20]
 800166c:	6301      	strne	r1, [r0, #48]	; 0x30
 800166e:	2101      	movs	r1, #1
 8001670:	6141      	str	r1, [r0, #20]
 8001672:	2000      	movs	r0, #0
 8001674:	6421      	str	r1, [r4, #64]	; 0x40
 8001676:	bdd0      	pop	{r4, r6, r7, pc}

08001678 <HAL_TIM_Base_MspInit>:
 8001678:	4770      	bx	lr

0800167a <HAL_TIM_Base_Start_IT>:
 800167a:	6800      	ldr	r0, [r0, #0]
 800167c:	68c1      	ldr	r1, [r0, #12]
 800167e:	f041 0101 	orr.w	r1, r1, #1
 8001682:	60c1      	str	r1, [r0, #12]
 8001684:	2107      	movs	r1, #7
 8001686:	6882      	ldr	r2, [r0, #8]
 8001688:	f2c0 0101 	movt	r1, #1
 800168c:	400a      	ands	r2, r1
 800168e:	2a06      	cmp	r2, #6
 8001690:	d008      	beq.n	80016a4 <HAL_TIM_Base_Start_IT+0x2a>
 8001692:	6882      	ldr	r2, [r0, #8]
 8001694:	4011      	ands	r1, r2
 8001696:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 800169a:	bf1e      	ittt	ne
 800169c:	6801      	ldrne	r1, [r0, #0]
 800169e:	f041 0101 	orrne.w	r1, r1, #1
 80016a2:	6001      	strne	r1, [r0, #0]
 80016a4:	2000      	movs	r0, #0
 80016a6:	4770      	bx	lr

080016a8 <HAL_TIM_IRQHandler>:
 80016a8:	b084      	sub	sp, #16
 80016aa:	f84d 4e00 	strt	r4, [sp]
 80016ae:	f84d 6e04 	strt	r6, [sp, #4]
 80016b2:	f84d 7e08 	strt	r7, [sp, #8]
 80016b6:	f84d ee0c 	strt	lr, [sp, #12]
 80016ba:	af02      	add	r7, sp, #8
 80016bc:	4604      	mov	r4, r0
 80016be:	6820      	ldr	r0, [r4, #0]
 80016c0:	6901      	ldr	r1, [r0, #16]
 80016c2:	f011 0f02 	tst.w	r1, #2
 80016c6:	bf1c      	itt	ne
 80016c8:	68c1      	ldrne	r1, [r0, #12]
 80016ca:	f011 0f02 	tstne.w	r1, #2
 80016ce:	d018      	beq.n	8001702 <HAL_TIM_IRQHandler+0x5a>
 80016d0:	f06f 0102 	mvn.w	r1, #2
 80016d4:	f840 1e10 	strt	r1, [r0, #16]
 80016d8:	2101      	movs	r1, #1
 80016da:	f844 1e1c 	strt	r1, [r4, #28]
 80016de:	6980      	ldr	r0, [r0, #24]
 80016e0:	f010 0f03 	tst.w	r0, #3
 80016e4:	d003      	beq.n	80016ee <HAL_TIM_IRQHandler+0x46>
 80016e6:	4620      	mov	r0, r4
 80016e8:	f000 f8c0 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 80016ec:	e005      	b.n	80016fa <HAL_TIM_IRQHandler+0x52>
 80016ee:	4620      	mov	r0, r4
 80016f0:	f000 f8bd 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 80016f4:	4620      	mov	r0, r4
 80016f6:	f000 f8bb 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 80016fa:	2000      	movs	r0, #0
 80016fc:	f844 0e1c 	strt	r0, [r4, #28]
 8001700:	6820      	ldr	r0, [r4, #0]
 8001702:	6901      	ldr	r1, [r0, #16]
 8001704:	f011 0f04 	tst.w	r1, #4
 8001708:	bf1c      	itt	ne
 800170a:	68c1      	ldrne	r1, [r0, #12]
 800170c:	f011 0f04 	tstne.w	r1, #4
 8001710:	d018      	beq.n	8001744 <HAL_TIM_IRQHandler+0x9c>
 8001712:	f06f 0104 	mvn.w	r1, #4
 8001716:	f840 1e10 	strt	r1, [r0, #16]
 800171a:	2102      	movs	r1, #2
 800171c:	f844 1e1c 	strt	r1, [r4, #28]
 8001720:	6980      	ldr	r0, [r0, #24]
 8001722:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001726:	d003      	beq.n	8001730 <HAL_TIM_IRQHandler+0x88>
 8001728:	4620      	mov	r0, r4
 800172a:	f000 f89f 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 800172e:	e005      	b.n	800173c <HAL_TIM_IRQHandler+0x94>
 8001730:	4620      	mov	r0, r4
 8001732:	f000 f89c 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 8001736:	4620      	mov	r0, r4
 8001738:	f000 f89a 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 800173c:	2000      	movs	r0, #0
 800173e:	f844 0e1c 	strt	r0, [r4, #28]
 8001742:	6820      	ldr	r0, [r4, #0]
 8001744:	6901      	ldr	r1, [r0, #16]
 8001746:	f011 0f08 	tst.w	r1, #8
 800174a:	bf1c      	itt	ne
 800174c:	68c1      	ldrne	r1, [r0, #12]
 800174e:	f011 0f08 	tstne.w	r1, #8
 8001752:	d018      	beq.n	8001786 <HAL_TIM_IRQHandler+0xde>
 8001754:	f06f 0108 	mvn.w	r1, #8
 8001758:	f840 1e10 	strt	r1, [r0, #16]
 800175c:	2104      	movs	r1, #4
 800175e:	f844 1e1c 	strt	r1, [r4, #28]
 8001762:	69c0      	ldr	r0, [r0, #28]
 8001764:	f010 0f03 	tst.w	r0, #3
 8001768:	d003      	beq.n	8001772 <HAL_TIM_IRQHandler+0xca>
 800176a:	4620      	mov	r0, r4
 800176c:	f000 f87e 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 8001770:	e005      	b.n	800177e <HAL_TIM_IRQHandler+0xd6>
 8001772:	4620      	mov	r0, r4
 8001774:	f000 f87b 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 8001778:	4620      	mov	r0, r4
 800177a:	f000 f879 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 800177e:	2000      	movs	r0, #0
 8001780:	f844 0e1c 	strt	r0, [r4, #28]
 8001784:	6820      	ldr	r0, [r4, #0]
 8001786:	6901      	ldr	r1, [r0, #16]
 8001788:	f011 0f10 	tst.w	r1, #16
 800178c:	bf1c      	itt	ne
 800178e:	68c1      	ldrne	r1, [r0, #12]
 8001790:	f011 0f10 	tstne.w	r1, #16
 8001794:	d018      	beq.n	80017c8 <HAL_TIM_IRQHandler+0x120>
 8001796:	f06f 0110 	mvn.w	r1, #16
 800179a:	f840 1e10 	strt	r1, [r0, #16]
 800179e:	2108      	movs	r1, #8
 80017a0:	f844 1e1c 	strt	r1, [r4, #28]
 80017a4:	69c0      	ldr	r0, [r0, #28]
 80017a6:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017aa:	d003      	beq.n	80017b4 <HAL_TIM_IRQHandler+0x10c>
 80017ac:	4620      	mov	r0, r4
 80017ae:	f000 f85d 	bl	800186c <HAL_TIM_IC_CaptureCallback>
 80017b2:	e005      	b.n	80017c0 <HAL_TIM_IRQHandler+0x118>
 80017b4:	4620      	mov	r0, r4
 80017b6:	f000 f85a 	bl	800186e <HAL_TIM_OC_DelayElapsedCallback>
 80017ba:	4620      	mov	r0, r4
 80017bc:	f000 f858 	bl	8001870 <HAL_TIM_PWM_PulseFinishedCallback>
 80017c0:	2000      	movs	r0, #0
 80017c2:	f844 0e1c 	strt	r0, [r4, #28]
 80017c6:	6820      	ldr	r0, [r4, #0]
 80017c8:	6901      	ldr	r1, [r0, #16]
 80017ca:	f011 0f01 	tst.w	r1, #1
 80017ce:	bf1c      	itt	ne
 80017d0:	68c1      	ldrne	r1, [r0, #12]
 80017d2:	f011 0f01 	tstne.w	r1, #1
 80017d6:	d007      	beq.n	80017e8 <HAL_TIM_IRQHandler+0x140>
 80017d8:	f06f 0101 	mvn.w	r1, #1
 80017dc:	f840 1e10 	strt	r1, [r0, #16]
 80017e0:	4620      	mov	r0, r4
 80017e2:	f000 f898 	bl	8001916 <HAL_TIM_PeriodElapsedCallback>
 80017e6:	6820      	ldr	r0, [r4, #0]
 80017e8:	6901      	ldr	r1, [r0, #16]
 80017ea:	f011 0f80 	tst.w	r1, #128	; 0x80
 80017ee:	bf1c      	itt	ne
 80017f0:	68c1      	ldrne	r1, [r0, #12]
 80017f2:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80017f6:	d007      	beq.n	8001808 <HAL_TIM_IRQHandler+0x160>
 80017f8:	f06f 0180 	mvn.w	r1, #128	; 0x80
 80017fc:	f840 1e10 	strt	r1, [r0, #16]
 8001800:	4620      	mov	r0, r4
 8001802:	f000 f838 	bl	8001876 <HAL_TIMEx_BreakCallback>
 8001806:	6820      	ldr	r0, [r4, #0]
 8001808:	6901      	ldr	r1, [r0, #16]
 800180a:	f411 7f80 	tst.w	r1, #256	; 0x100
 800180e:	bf1c      	itt	ne
 8001810:	68c1      	ldrne	r1, [r0, #12]
 8001812:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001816:	d007      	beq.n	8001828 <HAL_TIM_IRQHandler+0x180>
 8001818:	f46f 7180 	mvn.w	r1, #256	; 0x100
 800181c:	f840 1e10 	strt	r1, [r0, #16]
 8001820:	4620      	mov	r0, r4
 8001822:	f000 f829 	bl	8001878 <HAL_TIMEx_Break2Callback>
 8001826:	6820      	ldr	r0, [r4, #0]
 8001828:	6901      	ldr	r1, [r0, #16]
 800182a:	f011 0f40 	tst.w	r1, #64	; 0x40
 800182e:	bf1c      	itt	ne
 8001830:	68c1      	ldrne	r1, [r0, #12]
 8001832:	f011 0f40 	tstne.w	r1, #64	; 0x40
 8001836:	d007      	beq.n	8001848 <HAL_TIM_IRQHandler+0x1a0>
 8001838:	f06f 0140 	mvn.w	r1, #64	; 0x40
 800183c:	f840 1e10 	strt	r1, [r0, #16]
 8001840:	4620      	mov	r0, r4
 8001842:	f000 f816 	bl	8001872 <HAL_TIM_TriggerCallback>
 8001846:	6820      	ldr	r0, [r4, #0]
 8001848:	6901      	ldr	r1, [r0, #16]
 800184a:	f011 0f20 	tst.w	r1, #32
 800184e:	bf1c      	itt	ne
 8001850:	68c1      	ldrne	r1, [r0, #12]
 8001852:	f011 0f20 	tstne.w	r1, #32
 8001856:	d100      	bne.n	800185a <HAL_TIM_IRQHandler+0x1b2>
 8001858:	bdd0      	pop	{r4, r6, r7, pc}
 800185a:	f06f 0120 	mvn.w	r1, #32
 800185e:	f840 1e10 	strt	r1, [r0, #16]
 8001862:	4620      	mov	r0, r4
 8001864:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001868:	f000 b804 	b.w	8001874 <HAL_TIMEx_CommutationCallback>

0800186c <HAL_TIM_IC_CaptureCallback>:
 800186c:	4770      	bx	lr

0800186e <HAL_TIM_OC_DelayElapsedCallback>:
 800186e:	4770      	bx	lr

08001870 <HAL_TIM_PWM_PulseFinishedCallback>:
 8001870:	4770      	bx	lr

08001872 <HAL_TIM_TriggerCallback>:
 8001872:	4770      	bx	lr

08001874 <HAL_TIMEx_CommutationCallback>:
 8001874:	4770      	bx	lr

08001876 <HAL_TIMEx_BreakCallback>:
 8001876:	4770      	bx	lr

08001878 <HAL_TIMEx_Break2Callback>:
 8001878:	4770      	bx	lr

0800187a <HAL_InitTick>:
 800187a:	b5b0      	push	{r4, r5, r7, lr}
 800187c:	af02      	add	r7, sp, #8
 800187e:	b086      	sub	sp, #24
 8001880:	4601      	mov	r1, r0
 8001882:	2036      	movs	r0, #54	; 0x36
 8001884:	2200      	movs	r2, #0
 8001886:	2400      	movs	r4, #0
 8001888:	f7ff fc5d 	bl	8001146 <HAL_NVIC_SetPriority>
 800188c:	2036      	movs	r0, #54	; 0x36
 800188e:	f7ff fc8d 	bl	80011ac <HAL_NVIC_EnableIRQ>
 8001892:	f241 0058 	movw	r0, #4184	; 0x1058
 8001896:	f2c4 0002 	movt	r0, #16386	; 0x4002
 800189a:	6801      	ldr	r1, [r0, #0]
 800189c:	f041 0110 	orr.w	r1, r1, #16
 80018a0:	6001      	str	r1, [r0, #0]
 80018a2:	4669      	mov	r1, sp
 80018a4:	6800      	ldr	r0, [r0, #0]
 80018a6:	f000 0010 	and.w	r0, r0, #16
 80018aa:	9001      	str	r0, [sp, #4]
 80018ac:	9801      	ldr	r0, [sp, #4]
 80018ae:	a801      	add	r0, sp, #4
 80018b0:	f7ff fe21 	bl	80014f6 <HAL_RCC_GetClockConfig>
 80018b4:	9d04      	ldr	r5, [sp, #16]
 80018b6:	f7ff fdf4 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 80018ba:	2d00      	cmp	r5, #0
 80018bc:	f640 51a8 	movw	r1, #3496	; 0xda8
 80018c0:	f241 0200 	movw	r2, #4096	; 0x1000
 80018c4:	f240 33e7 	movw	r3, #999	; 0x3e7
 80018c8:	bf18      	it	ne
 80018ca:	2501      	movne	r5, #1
 80018cc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80018d0:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80018d4:	40a8      	lsls	r0, r5
 80018d6:	f64d 6583 	movw	r5, #56963	; 0xde83
 80018da:	618c      	str	r4, [r1, #24]
 80018dc:	f2c4 351b 	movt	r5, #17179	; 0x431b
 80018e0:	fba0 0505 	umull	r0, r5, r0, r5
 80018e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80018e8:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 80018ec:	e9c1 2000 	strd	r2, r0, [r1]
 80018f0:	4608      	mov	r0, r1
 80018f2:	e9c1 4302 	strd	r4, r3, [r1, #8]
 80018f6:	610c      	str	r4, [r1, #16]
 80018f8:	f7ff fe1e 	bl	8001538 <HAL_TIM_Base_Init>
 80018fc:	2800      	cmp	r0, #0
 80018fe:	bf1e      	ittt	ne
 8001900:	2001      	movne	r0, #1
 8001902:	b006      	addne	sp, #24
 8001904:	bdb0      	popne	{r4, r5, r7, pc}
 8001906:	f640 50a8 	movw	r0, #3496	; 0xda8
 800190a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800190e:	f7ff feb4 	bl	800167a <HAL_TIM_Base_Start_IT>
 8001912:	b006      	add	sp, #24
 8001914:	bdb0      	pop	{r4, r5, r7, pc}

08001916 <HAL_TIM_PeriodElapsedCallback>:
 8001916:	f7ff bbf7 	b.w	8001108 <HAL_IncTick>

0800191a <TIM6_DAC_IRQHandler>:
 800191a:	f640 50a8 	movw	r0, #3496	; 0xda8
 800191e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001922:	f7ff bec1 	b.w	80016a8 <HAL_TIM_IRQHandler>

08001926 <HAL_UART_Init>:
 8001926:	b084      	sub	sp, #16
 8001928:	f84d 4e00 	strt	r4, [sp]
 800192c:	f84d 6e04 	strt	r6, [sp, #4]
 8001930:	f84d 7e08 	strt	r7, [sp, #8]
 8001934:	f84d ee0c 	strt	lr, [sp, #12]
 8001938:	af02      	add	r7, sp, #8
 800193a:	4604      	mov	r4, r0
 800193c:	b1ac      	cbz	r4, 800196a <HAL_UART_Init+0x44>
 800193e:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001940:	b928      	cbnz	r0, 800194e <HAL_UART_Init+0x28>
 8001942:	2000      	movs	r0, #0
 8001944:	f844 0e70 	strt	r0, [r4, #112]
 8001948:	4620      	mov	r0, r4
 800194a:	f000 f82b 	bl	80019a4 <HAL_UART_MspInit>
 800194e:	2024      	movs	r0, #36	; 0x24
 8001950:	f844 0e74 	strt	r0, [r4, #116]
 8001954:	6820      	ldr	r0, [r4, #0]
 8001956:	6801      	ldr	r1, [r0, #0]
 8001958:	f021 0101 	bic.w	r1, r1, #1
 800195c:	f840 1e00 	strt	r1, [r0]
 8001960:	4620      	mov	r0, r4
 8001962:	f000 f821 	bl	80019a8 <UART_SetConfig>
 8001966:	2801      	cmp	r0, #1
 8001968:	d101      	bne.n	800196e <HAL_UART_Init+0x48>
 800196a:	2001      	movs	r0, #1
 800196c:	bdd0      	pop	{r4, r6, r7, pc}
 800196e:	6a60      	ldr	r0, [r4, #36]	; 0x24
 8001970:	2800      	cmp	r0, #0
 8001972:	bf1c      	itt	ne
 8001974:	4620      	movne	r0, r4
 8001976:	f000 f956 	blne	8001c26 <UART_AdvFeatureConfig>
 800197a:	6820      	ldr	r0, [r4, #0]
 800197c:	6841      	ldr	r1, [r0, #4]
 800197e:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 8001982:	f840 1e04 	strt	r1, [r0, #4]
 8001986:	6881      	ldr	r1, [r0, #8]
 8001988:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 800198c:	f840 1e08 	strt	r1, [r0, #8]
 8001990:	6801      	ldr	r1, [r0, #0]
 8001992:	f041 0101 	orr.w	r1, r1, #1
 8001996:	f840 1e00 	strt	r1, [r0]
 800199a:	4620      	mov	r0, r4
 800199c:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80019a0:	f000 b9b7 	b.w	8001d12 <UART_CheckIdleState>

080019a4 <HAL_UART_MspInit>:
 80019a4:	4770      	bx	lr
	...

080019a8 <UART_SetConfig>:
 80019a8:	b084      	sub	sp, #16
 80019aa:	f84d 4e00 	strt	r4, [sp]
 80019ae:	f84d 5e04 	strt	r5, [sp, #4]
 80019b2:	f84d 7e08 	strt	r7, [sp, #8]
 80019b6:	f84d ee0c 	strt	lr, [sp, #12]
 80019ba:	af02      	add	r7, sp, #8
 80019bc:	4604      	mov	r4, r0
 80019be:	f646 15f3 	movw	r5, #27123	; 0x69f3
 80019c2:	f248 0e00 	movw	lr, #32768	; 0x8000
 80019c6:	f241 0c88 	movw	ip, #4232	; 0x1088
 80019ca:	6821      	ldr	r1, [r4, #0]
 80019cc:	68a0      	ldr	r0, [r4, #8]
 80019ce:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 80019d2:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 80019d6:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 80019da:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 80019de:	4310      	orrs	r0, r2
 80019e0:	69e2      	ldr	r2, [r4, #28]
 80019e2:	4571      	cmp	r1, lr
 80019e4:	ea40 0003 	orr.w	r0, r0, r3
 80019e8:	680b      	ldr	r3, [r1, #0]
 80019ea:	ea40 0002 	orr.w	r0, r0, r2
 80019ee:	ea03 0305 	and.w	r3, r3, r5
 80019f2:	f04f 0510 	mov.w	r5, #16
 80019f6:	ea40 0003 	orr.w	r0, r0, r3
 80019fa:	f841 0e00 	strt	r0, [r1]
 80019fe:	6848      	ldr	r0, [r1, #4]
 8001a00:	68e3      	ldr	r3, [r4, #12]
 8001a02:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a06:	ea40 0003 	orr.w	r0, r0, r3
 8001a0a:	f841 0e04 	strt	r0, [r1, #4]
 8001a0e:	69a0      	ldr	r0, [r4, #24]
 8001a10:	bf1c      	itt	ne
 8001a12:	6a23      	ldrne	r3, [r4, #32]
 8001a14:	4318      	orrne	r0, r3
 8001a16:	688b      	ldr	r3, [r1, #8]
 8001a18:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a1c:	4318      	orrs	r0, r3
 8001a1e:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a22:	f841 0e08 	strt	r0, [r1, #8]
 8001a26:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a2a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a2e:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a32:	4299      	cmp	r1, r3
 8001a34:	dc15      	bgt.n	8001a62 <UART_SetConfig+0xba>
 8001a36:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a3a:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a3e:	4299      	cmp	r1, r3
 8001a40:	d024      	beq.n	8001a8c <UART_SetConfig+0xe4>
 8001a42:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a46:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a4a:	4299      	cmp	r1, r3
 8001a4c:	d022      	beq.n	8001a94 <UART_SetConfig+0xec>
 8001a4e:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a52:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a56:	4299      	cmp	r1, r3
 8001a58:	d131      	bne.n	8001abe <UART_SetConfig+0x116>
 8001a5a:	f8dc 3000 	ldr.w	r3, [ip]
 8001a5e:	099d      	lsrs	r5, r3, #6
 8001a60:	e023      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a62:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a66:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a6a:	4299      	cmp	r1, r3
 8001a6c:	d016      	beq.n	8001a9c <UART_SetConfig+0xf4>
 8001a6e:	4571      	cmp	r1, lr
 8001a70:	d018      	beq.n	8001aa4 <UART_SetConfig+0xfc>
 8001a72:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a76:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a7a:	4299      	cmp	r1, r3
 8001a7c:	d11f      	bne.n	8001abe <UART_SetConfig+0x116>
 8001a7e:	f8dc 5000 	ldr.w	r5, [ip]
 8001a82:	f247 3388 	movw	r3, #29576	; 0x7388
 8001a86:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a8a:	e012      	b.n	8001ab2 <UART_SetConfig+0x10a>
 8001a8c:	f8dc 3000 	ldr.w	r3, [ip]
 8001a90:	089d      	lsrs	r5, r3, #2
 8001a92:	e00a      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a94:	f8dc 3000 	ldr.w	r3, [ip]
 8001a98:	091d      	lsrs	r5, r3, #4
 8001a9a:	e006      	b.n	8001aaa <UART_SetConfig+0x102>
 8001a9c:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa0:	0a1d      	lsrs	r5, r3, #8
 8001aa2:	e002      	b.n	8001aaa <UART_SetConfig+0x102>
 8001aa4:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa8:	0a9d      	lsrs	r5, r3, #10
 8001aaa:	f247 3398 	movw	r3, #29592	; 0x7398
 8001aae:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001ab2:	f005 0503 	and.w	r5, r5, #3
 8001ab6:	f085 0502 	eor.w	r5, r5, #2
 8001aba:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001abe:	4571      	cmp	r1, lr
 8001ac0:	d012      	beq.n	8001ae8 <UART_SetConfig+0x140>
 8001ac2:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001ac6:	d11d      	bne.n	8001b04 <UART_SetConfig+0x15c>
 8001ac8:	f005 001f 	and.w	r0, r5, #31
 8001acc:	2101      	movs	r1, #1
 8001ace:	2808      	cmp	r0, #8
 8001ad0:	f200 80a0 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001ad4:	e8df f000 	tbb	[pc, r0]
 8001ad8:	9e434005 	.word	0x9e434005
 8001adc:	9e9e9e49 	.word	0x9e9e9e49
 8001ae0:	004f      	.short	0x004f
 8001ae2:	f7ff fcde 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001ae6:	e042      	b.n	8001b6e <UART_SetConfig+0x1c6>
 8001ae8:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001aec:	2101      	movs	r1, #1
 8001aee:	2d04      	cmp	r5, #4
 8001af0:	f200 8090 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001af4:	e8df f005 	tbb	[pc, r5]
 8001af8:	8e161c03 	.word	0x8e161c03
 8001afc:	001a      	.short	0x001a
 8001afe:	f7ff fcd0 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b02:	e011      	b.n	8001b28 <UART_SetConfig+0x180>
 8001b04:	f005 021f 	and.w	r2, r5, #31
 8001b08:	2101      	movs	r1, #1
 8001b0a:	2a08      	cmp	r2, #8
 8001b0c:	f200 8082 	bhi.w	8001c14 <UART_SetConfig+0x26c>
 8001b10:	e8df f002 	tbb	[pc, r2]
 8001b14:	80464305 	.word	0x80464305
 8001b18:	80808048 	.word	0x80808048
 8001b1c:	004e      	.short	0x004e
 8001b1e:	f7ff fcc0 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b22:	e041      	b.n	8001ba8 <UART_SetConfig+0x200>
 8001b24:	f7ff fc5a 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001b28:	b910      	cbnz	r0, 8001b30 <UART_SetConfig+0x188>
 8001b2a:	e072      	b.n	8001c12 <UART_SetConfig+0x26a>
 8001b2c:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b30:	6862      	ldr	r2, [r4, #4]
 8001b32:	2101      	movs	r1, #1
 8001b34:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b38:	4298      	cmp	r0, r3
 8001b3a:	d36b      	bcc.n	8001c14 <UART_SetConfig+0x26c>
 8001b3c:	0313      	lsls	r3, r2, #12
 8001b3e:	4298      	cmp	r0, r3
 8001b40:	bf9c      	itt	ls
 8001b42:	2101      	movls	r1, #1
 8001b44:	2d04      	cmpls	r5, #4
 8001b46:	d865      	bhi.n	8001c14 <UART_SetConfig+0x26c>
 8001b48:	e8df f005 	tbb	[pc, r5]
 8001b4c:	64453e03 	.word	0x64453e03
 8001b50:	0052      	.short	0x0052
 8001b52:	f7ff fca6 	bl	80014a2 <HAL_RCC_GetPCLK1Freq>
 8001b56:	e040      	b.n	8001bda <UART_SetConfig+0x232>
 8001b58:	f7ff fcb8 	bl	80014cc <HAL_RCC_GetPCLK2Freq>
 8001b5c:	e007      	b.n	8001b6e <UART_SetConfig+0x1c6>
 8001b5e:	6861      	ldr	r1, [r4, #4]
 8001b60:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b64:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b68:	e008      	b.n	8001b7c <UART_SetConfig+0x1d4>
 8001b6a:	f7ff fc37 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001b6e:	6861      	ldr	r1, [r4, #4]
 8001b70:	0040      	lsls	r0, r0, #1
 8001b72:	084a      	lsrs	r2, r1, #1
 8001b74:	e003      	b.n	8001b7e <UART_SetConfig+0x1d6>
 8001b76:	6861      	ldr	r1, [r4, #4]
 8001b78:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b7c:	0848      	lsrs	r0, r1, #1
 8001b7e:	4410      	add	r0, r2
 8001b80:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b84:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b88:	4001      	ands	r1, r0
 8001b8a:	2910      	cmp	r1, #16
 8001b8c:	d303      	bcc.n	8001b96 <UART_SetConfig+0x1ee>
 8001b8e:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001b92:	4308      	orrs	r0, r1
 8001b94:	e03a      	b.n	8001c0c <UART_SetConfig+0x264>
 8001b96:	2101      	movs	r1, #1
 8001b98:	e03c      	b.n	8001c14 <UART_SetConfig+0x26c>
 8001b9a:	f7ff fc97 	bl	80014cc <HAL_RCC_GetPCLK2Freq>
 8001b9e:	e003      	b.n	8001ba8 <UART_SetConfig+0x200>
 8001ba0:	6862      	ldr	r2, [r4, #4]
 8001ba2:	e008      	b.n	8001bb6 <UART_SetConfig+0x20e>
 8001ba4:	f7ff fc1a 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001ba8:	6862      	ldr	r2, [r4, #4]
 8001baa:	4601      	mov	r1, r0
 8001bac:	0850      	lsrs	r0, r2, #1
 8001bae:	e003      	b.n	8001bb8 <UART_SetConfig+0x210>
 8001bb0:	6862      	ldr	r2, [r4, #4]
 8001bb2:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bb6:	0851      	lsrs	r1, r2, #1
 8001bb8:	4408      	add	r0, r1
 8001bba:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bbe:	b280      	uxth	r0, r0
 8001bc0:	2810      	cmp	r0, #16
 8001bc2:	d223      	bcs.n	8001c0c <UART_SetConfig+0x264>
 8001bc4:	2101      	movs	r1, #1
 8001bc6:	e025      	b.n	8001c14 <UART_SetConfig+0x26c>
 8001bc8:	2000      	movs	r0, #0
 8001bca:	2100      	movs	r1, #0
 8001bcc:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001bd0:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001bd4:	e006      	b.n	8001be4 <UART_SetConfig+0x23c>
 8001bd6:	f7ff fc01 	bl	80013dc <HAL_RCC_GetSysClockFreq>
 8001bda:	6862      	ldr	r2, [r4, #4]
 8001bdc:	0e01      	lsrs	r1, r0, #24
 8001bde:	0853      	lsrs	r3, r2, #1
 8001be0:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001be4:	f141 0100 	adc.w	r1, r1, #0
 8001be8:	2300      	movs	r3, #0
 8001bea:	f7fe fb09 	bl	8000200 <__aeabi_uldivmod>
 8001bee:	e005      	b.n	8001bfc <UART_SetConfig+0x254>
 8001bf0:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001bf4:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001bf8:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bfc:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001c00:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001c04:	f2c0 020f 	movt	r2, #15
 8001c08:	4291      	cmp	r1, r2
 8001c0a:	d80a      	bhi.n	8001c22 <UART_SetConfig+0x27a>
 8001c0c:	6821      	ldr	r1, [r4, #0]
 8001c0e:	f841 0e0c 	strt	r0, [r1, #12]
 8001c12:	2100      	movs	r1, #0
 8001c14:	2000      	movs	r0, #0
 8001c16:	f844 0e60 	strt	r0, [r4, #96]
 8001c1a:	f844 0e64 	strt	r0, [r4, #100]
 8001c1e:	4608      	mov	r0, r1
 8001c20:	bdb0      	pop	{r4, r5, r7, pc}
 8001c22:	2101      	movs	r1, #1
 8001c24:	e7f6      	b.n	8001c14 <UART_SetConfig+0x26c>

08001c26 <UART_AdvFeatureConfig>:
 8001c26:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c28:	f011 0f01 	tst.w	r1, #1
 8001c2c:	d009      	beq.n	8001c42 <UART_AdvFeatureConfig+0x1c>
 8001c2e:	6802      	ldr	r2, [r0, #0]
 8001c30:	6853      	ldr	r3, [r2, #4]
 8001c32:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c36:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c3a:	ea43 030c 	orr.w	r3, r3, ip
 8001c3e:	f842 3e04 	strt	r3, [r2, #4]
 8001c42:	078a      	lsls	r2, r1, #30
 8001c44:	d509      	bpl.n	8001c5a <UART_AdvFeatureConfig+0x34>
 8001c46:	6802      	ldr	r2, [r0, #0]
 8001c48:	6853      	ldr	r3, [r2, #4]
 8001c4a:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c4e:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c52:	ea43 030c 	orr.w	r3, r3, ip
 8001c56:	f842 3e04 	strt	r3, [r2, #4]
 8001c5a:	074a      	lsls	r2, r1, #29
 8001c5c:	d509      	bpl.n	8001c72 <UART_AdvFeatureConfig+0x4c>
 8001c5e:	6802      	ldr	r2, [r0, #0]
 8001c60:	6853      	ldr	r3, [r2, #4]
 8001c62:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c66:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c6a:	ea43 030c 	orr.w	r3, r3, ip
 8001c6e:	f842 3e04 	strt	r3, [r2, #4]
 8001c72:	070a      	lsls	r2, r1, #28
 8001c74:	d509      	bpl.n	8001c8a <UART_AdvFeatureConfig+0x64>
 8001c76:	6802      	ldr	r2, [r0, #0]
 8001c78:	6853      	ldr	r3, [r2, #4]
 8001c7a:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c7e:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c82:	ea43 030c 	orr.w	r3, r3, ip
 8001c86:	f842 3e04 	strt	r3, [r2, #4]
 8001c8a:	06ca      	lsls	r2, r1, #27
 8001c8c:	d509      	bpl.n	8001ca2 <UART_AdvFeatureConfig+0x7c>
 8001c8e:	6802      	ldr	r2, [r0, #0]
 8001c90:	6893      	ldr	r3, [r2, #8]
 8001c92:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c96:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c9a:	ea43 030c 	orr.w	r3, r3, ip
 8001c9e:	f842 3e08 	strt	r3, [r2, #8]
 8001ca2:	068a      	lsls	r2, r1, #26
 8001ca4:	d509      	bpl.n	8001cba <UART_AdvFeatureConfig+0x94>
 8001ca6:	6802      	ldr	r2, [r0, #0]
 8001ca8:	6893      	ldr	r3, [r2, #8]
 8001caa:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001cae:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001cb2:	ea43 030c 	orr.w	r3, r3, ip
 8001cb6:	f842 3e08 	strt	r3, [r2, #8]
 8001cba:	b082      	sub	sp, #8
 8001cbc:	f84d 7e00 	strt	r7, [sp]
 8001cc0:	f84d ee04 	strt	lr, [sp, #4]
 8001cc4:	466f      	mov	r7, sp
 8001cc6:	064a      	lsls	r2, r1, #25
 8001cc8:	d515      	bpl.n	8001cf6 <UART_AdvFeatureConfig+0xd0>
 8001cca:	f8d0 e000 	ldr.w	lr, [r0]
 8001cce:	f8de c004 	ldr.w	ip, [lr, #4]
 8001cd2:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001cd4:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001cd8:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001cdc:	ea42 0203 	orr.w	r2, r2, r3
 8001ce0:	f84e 2e04 	strt	r2, [lr, #4]
 8001ce4:	d107      	bne.n	8001cf6 <UART_AdvFeatureConfig+0xd0>
 8001ce6:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001cea:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001cec:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001cf0:	431a      	orrs	r2, r3
 8001cf2:	f84e 2e04 	strt	r2, [lr, #4]
 8001cf6:	0609      	lsls	r1, r1, #24
 8001cf8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001cfc:	bf58      	it	pl
 8001cfe:	4770      	bxpl	lr
 8001d00:	6801      	ldr	r1, [r0, #0]
 8001d02:	684a      	ldr	r2, [r1, #4]
 8001d04:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001d06:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001d0a:	4310      	orrs	r0, r2
 8001d0c:	f841 0e04 	strt	r0, [r1, #4]
 8001d10:	4770      	bx	lr

08001d12 <UART_CheckIdleState>:
 8001d12:	b085      	sub	sp, #20
 8001d14:	f84d 4e00 	strt	r4, [sp]
 8001d18:	f84d 5e04 	strt	r5, [sp, #4]
 8001d1c:	f84d 6e08 	strt	r6, [sp, #8]
 8001d20:	f84d 7e0c 	strt	r7, [sp, #12]
 8001d24:	f84d ee10 	strt	lr, [sp, #16]
 8001d28:	af03      	add	r7, sp, #12
 8001d2a:	b081      	sub	sp, #4
 8001d2c:	f84d be00 	strt	fp, [sp]
 8001d30:	4604      	mov	r4, r0
 8001d32:	2000      	movs	r0, #0
 8001d34:	f844 0e7c 	strt	r0, [r4, #124]
 8001d38:	f7ff f9ef 	bl	800111a <HAL_GetTick>
 8001d3c:	4605      	mov	r5, r0
 8001d3e:	6820      	ldr	r0, [r4, #0]
 8001d40:	6801      	ldr	r1, [r0, #0]
 8001d42:	f011 0f08 	tst.w	r1, #8
 8001d46:	d00f      	beq.n	8001d68 <UART_CheckIdleState+0x56>
 8001d48:	69c1      	ldr	r1, [r0, #28]
 8001d4a:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d4e:	d10b      	bne.n	8001d68 <UART_CheckIdleState+0x56>
 8001d50:	2600      	movs	r6, #0
 8001d52:	f7ff f9e2 	bl	800111a <HAL_GetTick>
 8001d56:	1b41      	subs	r1, r0, r5
 8001d58:	6820      	ldr	r0, [r4, #0]
 8001d5a:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d5e:	d11b      	bne.n	8001d98 <UART_CheckIdleState+0x86>
 8001d60:	69c1      	ldr	r1, [r0, #28]
 8001d62:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d66:	d0f4      	beq.n	8001d52 <UART_CheckIdleState+0x40>
 8001d68:	6801      	ldr	r1, [r0, #0]
 8001d6a:	f011 0f04 	tst.w	r1, #4
 8001d6e:	d101      	bne.n	8001d74 <UART_CheckIdleState+0x62>
 8001d70:	2600      	movs	r6, #0
 8001d72:	e01c      	b.n	8001dae <UART_CheckIdleState+0x9c>
 8001d74:	69c0      	ldr	r0, [r0, #28]
 8001d76:	2600      	movs	r6, #0
 8001d78:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d7c:	d117      	bne.n	8001dae <UART_CheckIdleState+0x9c>
 8001d7e:	f7ff f9cc 	bl	800111a <HAL_GetTick>
 8001d82:	1b41      	subs	r1, r0, r5
 8001d84:	6820      	ldr	r0, [r4, #0]
 8001d86:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d8a:	d105      	bne.n	8001d98 <UART_CheckIdleState+0x86>
 8001d8c:	69c0      	ldr	r0, [r0, #28]
 8001d8e:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d92:	d0f4      	beq.n	8001d7e <UART_CheckIdleState+0x6c>
 8001d94:	2600      	movs	r6, #0
 8001d96:	e00a      	b.n	8001dae <UART_CheckIdleState+0x9c>
 8001d98:	6801      	ldr	r1, [r0, #0]
 8001d9a:	2603      	movs	r6, #3
 8001d9c:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001da0:	f840 1e00 	strt	r1, [r0]
 8001da4:	6881      	ldr	r1, [r0, #8]
 8001da6:	f021 0101 	bic.w	r1, r1, #1
 8001daa:	f840 1e08 	strt	r1, [r0, #8]
 8001dae:	2020      	movs	r0, #32
 8001db0:	f844 0e74 	strt	r0, [r4, #116]
 8001db4:	f844 0e78 	strt	r0, [r4, #120]
 8001db8:	2000      	movs	r0, #0
 8001dba:	f844 0e70 	strt	r0, [r4, #112]
 8001dbe:	4630      	mov	r0, r6
 8001dc0:	f85d bb04 	ldr.w	fp, [sp], #4
 8001dc4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001dc6 <HAL_UART_Transmit>:
 8001dc6:	b085      	sub	sp, #20
 8001dc8:	f84d 4e00 	strt	r4, [sp]
 8001dcc:	f84d 5e04 	strt	r5, [sp, #4]
 8001dd0:	f84d 6e08 	strt	r6, [sp, #8]
 8001dd4:	f84d 7e0c 	strt	r7, [sp, #12]
 8001dd8:	f84d ee10 	strt	lr, [sp, #16]
 8001ddc:	af03      	add	r7, sp, #12
 8001dde:	b084      	sub	sp, #16
 8001de0:	f84d 8e00 	strt	r8, [sp]
 8001de4:	f84d 9e04 	strt	r9, [sp, #4]
 8001de8:	f84d ae08 	strt	sl, [sp, #8]
 8001dec:	f84d be0c 	strt	fp, [sp, #12]
 8001df0:	b081      	sub	sp, #4
 8001df2:	4604      	mov	r4, r0
 8001df4:	461d      	mov	r5, r3
 8001df6:	4616      	mov	r6, r2
 8001df8:	4689      	mov	r9, r1
 8001dfa:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001dfc:	2820      	cmp	r0, #32
 8001dfe:	d109      	bne.n	8001e14 <HAL_UART_Transmit+0x4e>
 8001e00:	f1b9 0f00 	cmp.w	r9, #0
 8001e04:	f04f 0001 	mov.w	r0, #1
 8001e08:	bf18      	it	ne
 8001e0a:	2e00      	cmpne	r6, #0
 8001e0c:	d003      	beq.n	8001e16 <HAL_UART_Transmit+0x50>
 8001e0e:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001e10:	2801      	cmp	r0, #1
 8001e12:	d104      	bne.n	8001e1e <HAL_UART_Transmit+0x58>
 8001e14:	2002      	movs	r0, #2
 8001e16:	b001      	add	sp, #4
 8001e18:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001e1c:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001e1e:	2001      	movs	r0, #1
 8001e20:	f844 0e70 	strt	r0, [r4, #112]
 8001e24:	2000      	movs	r0, #0
 8001e26:	f844 0e7c 	strt	r0, [r4, #124]
 8001e2a:	2021      	movs	r0, #33	; 0x21
 8001e2c:	f844 0e74 	strt	r0, [r4, #116]
 8001e30:	f7ff f973 	bl	800111a <HAL_GetTick>
 8001e34:	f824 6e50 	strht	r6, [r4, #80]
 8001e38:	f824 6e52 	strht	r6, [r4, #82]
 8001e3c:	4680      	mov	r8, r0
 8001e3e:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e42:	f8d4 b000 	ldr.w	fp, [r4]
 8001e46:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001e4a:	2900      	cmp	r1, #0
 8001e4c:	d046      	beq.n	8001edc <HAL_UART_Transmit+0x116>
 8001e4e:	f105 0a01 	add.w	sl, r5, #1
 8001e52:	0600      	lsls	r0, r0, #24
 8001e54:	d410      	bmi.n	8001e78 <HAL_UART_Transmit+0xb2>
 8001e56:	465e      	mov	r6, fp
 8001e58:	f1ba 0f00 	cmp.w	sl, #0
 8001e5c:	d007      	beq.n	8001e6e <HAL_UART_Transmit+0xa8>
 8001e5e:	b345      	cbz	r5, 8001eb2 <HAL_UART_Transmit+0xec>
 8001e60:	f7ff f95b 	bl	800111a <HAL_GetTick>
 8001e64:	6826      	ldr	r6, [r4, #0]
 8001e66:	eba0 0008 	sub.w	r0, r0, r8
 8001e6a:	42a8      	cmp	r0, r5
 8001e6c:	d822      	bhi.n	8001eb4 <HAL_UART_Transmit+0xee>
 8001e6e:	69f0      	ldr	r0, [r6, #28]
 8001e70:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001e74:	d0f0      	beq.n	8001e58 <HAL_UART_Transmit+0x92>
 8001e76:	e000      	b.n	8001e7a <HAL_UART_Transmit+0xb4>
 8001e78:	465e      	mov	r6, fp
 8001e7a:	68a0      	ldr	r0, [r4, #8]
 8001e7c:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e80:	bf04      	itt	eq
 8001e82:	6920      	ldreq	r0, [r4, #16]
 8001e84:	2800      	cmpeq	r0, #0
 8001e86:	d002      	beq.n	8001e8e <HAL_UART_Transmit+0xc8>
 8001e88:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e8c:	e003      	b.n	8001e96 <HAL_UART_Transmit+0xd0>
 8001e8e:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e92:	f36f 205f 	bfc	r0, #9, #23
 8001e96:	f826 0e28 	strht	r0, [r6, #40]
 8001e9a:	46b3      	mov	fp, r6
 8001e9c:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001ea0:	3801      	subs	r0, #1
 8001ea2:	f824 0e52 	strht	r0, [r4, #82]
 8001ea6:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001eaa:	69f0      	ldr	r0, [r6, #28]
 8001eac:	2900      	cmp	r1, #0
 8001eae:	d1d0      	bne.n	8001e52 <HAL_UART_Transmit+0x8c>
 8001eb0:	e015      	b.n	8001ede <HAL_UART_Transmit+0x118>
 8001eb2:	465e      	mov	r6, fp
 8001eb4:	6830      	ldr	r0, [r6, #0]
 8001eb6:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001eba:	f846 0e00 	strt	r0, [r6]
 8001ebe:	68b0      	ldr	r0, [r6, #8]
 8001ec0:	f020 0001 	bic.w	r0, r0, #1
 8001ec4:	f846 0e08 	strt	r0, [r6, #8]
 8001ec8:	2020      	movs	r0, #32
 8001eca:	f844 0e74 	strt	r0, [r4, #116]
 8001ece:	f844 0e78 	strt	r0, [r4, #120]
 8001ed2:	2000      	movs	r0, #0
 8001ed4:	f844 0e70 	strt	r0, [r4, #112]
 8001ed8:	2003      	movs	r0, #3
 8001eda:	e79c      	b.n	8001e16 <HAL_UART_Transmit+0x50>
 8001edc:	465e      	mov	r6, fp
 8001ede:	0640      	lsls	r0, r0, #25
 8001ee0:	d411      	bmi.n	8001f06 <HAL_UART_Transmit+0x140>
 8001ee2:	f105 0901 	add.w	r9, r5, #1
 8001ee6:	4630      	mov	r0, r6
 8001ee8:	f1b9 0f00 	cmp.w	r9, #0
 8001eec:	d007      	beq.n	8001efe <HAL_UART_Transmit+0x138>
 8001eee:	b18d      	cbz	r5, 8001f14 <HAL_UART_Transmit+0x14e>
 8001ef0:	f7ff f913 	bl	800111a <HAL_GetTick>
 8001ef4:	eba0 0108 	sub.w	r1, r0, r8
 8001ef8:	6820      	ldr	r0, [r4, #0]
 8001efa:	42a9      	cmp	r1, r5
 8001efc:	d80b      	bhi.n	8001f16 <HAL_UART_Transmit+0x150>
 8001efe:	69c1      	ldr	r1, [r0, #28]
 8001f00:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001f04:	d0f0      	beq.n	8001ee8 <HAL_UART_Transmit+0x122>
 8001f06:	2020      	movs	r0, #32
 8001f08:	f844 0e74 	strt	r0, [r4, #116]
 8001f0c:	2000      	movs	r0, #0
 8001f0e:	f844 0e70 	strt	r0, [r4, #112]
 8001f12:	e780      	b.n	8001e16 <HAL_UART_Transmit+0x50>
 8001f14:	4630      	mov	r0, r6
 8001f16:	6801      	ldr	r1, [r0, #0]
 8001f18:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001f1c:	f840 1e00 	strt	r1, [r0]
 8001f20:	6881      	ldr	r1, [r0, #8]
 8001f22:	f021 0101 	bic.w	r1, r1, #1
 8001f26:	f840 1e08 	strt	r1, [r0, #8]
 8001f2a:	e7cd      	b.n	8001ec8 <HAL_UART_Transmit+0x102>

08001f2c <BSP_COM_Init>:
 8001f2c:	b085      	sub	sp, #20
 8001f2e:	f84d 4e00 	strt	r4, [sp]
 8001f32:	f84d 5e04 	strt	r5, [sp, #4]
 8001f36:	f84d 6e08 	strt	r6, [sp, #8]
 8001f3a:	f84d 7e0c 	strt	r7, [sp, #12]
 8001f3e:	f84d ee10 	strt	lr, [sp, #16]
 8001f42:	af03      	add	r7, sp, #12
 8001f44:	b083      	sub	sp, #12
 8001f46:	f84d 8e00 	strt	r8, [sp]
 8001f4a:	f84d 9e04 	strt	r9, [sp, #4]
 8001f4e:	f84d be08 	strt	fp, [sp, #8]
 8001f52:	b086      	sub	sp, #24
 8001f54:	4605      	mov	r5, r0
 8001f56:	4688      	mov	r8, r1
 8001f58:	bb25      	cbnz	r5, 8001fa4 <BSP_COM_Init+0x78>
 8001f5a:	f241 004c 	movw	r0, #4172	; 0x104c
 8001f5e:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001f62:	6801      	ldr	r1, [r0, #0]
 8001f64:	f041 0102 	orr.w	r1, r1, #2
 8001f68:	f840 1e00 	strt	r1, [r0]
 8001f6c:	6801      	ldr	r1, [r0, #0]
 8001f6e:	f001 0102 	and.w	r1, r1, #2
 8001f72:	f84d 1e04 	strt	r1, [sp, #4]
 8001f76:	9901      	ldr	r1, [sp, #4]
 8001f78:	6801      	ldr	r1, [r0, #0]
 8001f7a:	f041 0102 	orr.w	r1, r1, #2
 8001f7e:	f840 1e00 	strt	r1, [r0]
 8001f82:	6801      	ldr	r1, [r0, #0]
 8001f84:	f001 0102 	and.w	r1, r1, #2
 8001f88:	f84d 1e04 	strt	r1, [sp, #4]
 8001f8c:	9901      	ldr	r1, [sp, #4]
 8001f8e:	6941      	ldr	r1, [r0, #20]
 8001f90:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001f94:	f840 1e14 	strt	r1, [r0, #20]
 8001f98:	6940      	ldr	r0, [r0, #20]
 8001f9a:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001f9e:	f84d 0e04 	strt	r0, [sp, #4]
 8001fa2:	9801      	ldr	r0, [sp, #4]
 8001fa4:	2040      	movs	r0, #64	; 0x40
 8001fa6:	2402      	movs	r4, #2
 8001fa8:	ae01      	add	r6, sp, #4
 8001faa:	f04f 0907 	mov.w	r9, #7
 8001fae:	f84d 0e04 	strt	r0, [sp, #4]
 8001fb2:	2000      	movs	r0, #0
 8001fb4:	f84d 4e08 	strt	r4, [sp, #8]
 8001fb8:	f84d 4e10 	strt	r4, [sp, #16]
 8001fbc:	4631      	mov	r1, r6
 8001fbe:	f84d 0e0c 	strt	r0, [sp, #12]
 8001fc2:	f240 000c 	movw	r0, #12
 8001fc6:	f84d 9e14 	strt	r9, [sp, #20]
 8001fca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fce:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001fd2:	f7ff f8fb 	bl	80011cc <HAL_GPIO_Init>
 8001fd6:	2080      	movs	r0, #128	; 0x80
 8001fd8:	4631      	mov	r1, r6
 8001fda:	f84d 0e04 	strt	r0, [sp, #4]
 8001fde:	f84d 4e08 	strt	r4, [sp, #8]
 8001fe2:	f240 0010 	movw	r0, #16
 8001fe6:	f84d 9e14 	strt	r9, [sp, #20]
 8001fea:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fee:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001ff2:	f7ff f8eb 	bl	80011cc <HAL_GPIO_Init>
 8001ff6:	f240 0008 	movw	r0, #8
 8001ffa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ffe:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8002002:	f848 0e00 	strt	r0, [r8]
 8002006:	4640      	mov	r0, r8
 8002008:	f7ff fc8d 	bl	8001926 <HAL_UART_Init>
 800200c:	b006      	add	sp, #24
 800200e:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8002012:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002014 <icrc>:
 8002014:	b085      	sub	sp, #20
 8002016:	f84d 4e00 	strt	r4, [sp]
 800201a:	f84d 5e04 	strt	r5, [sp, #4]
 800201e:	f84d 6e08 	strt	r6, [sp, #8]
 8002022:	f84d 7e0c 	strt	r7, [sp, #12]
 8002026:	f84d ee10 	strt	lr, [sp, #16]
 800202a:	af03      	add	r7, sp, #12
 800202c:	b084      	sub	sp, #16
 800202e:	f84d 8e00 	strt	r8, [sp]
 8002032:	f84d 9e04 	strt	r9, [sp, #4]
 8002036:	f84d ae08 	strt	sl, [sp, #8]
 800203a:	f84d be0c 	strt	fp, [sp, #12]
 800203e:	b081      	sub	sp, #4
 8002040:	4604      	mov	r4, r0
 8002042:	f640 30e4 	movw	r0, #3044	; 0xbe4
 8002046:	4689      	mov	r9, r1
 8002048:	4698      	mov	r8, r3
 800204a:	f84d 2e00 	strt	r2, [sp]
 800204e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002052:	7801      	ldrb	r1, [r0, #0]
 8002054:	2900      	cmp	r1, #0
 8002056:	d178      	bne.n	800214a <icrc+0x136>
 8002058:	2101      	movs	r1, #1
 800205a:	f24e 32de 	movw	r2, #58334	; 0xe3de
 800205e:	f247 3ca8 	movw	ip, #29608	; 0x73a8
 8002062:	f04f 0e00 	mov.w	lr, #0
 8002066:	f04f 0b00 	mov.w	fp, #0
 800206a:	f800 1e00 	strbt	r1, [r0]
 800206e:	f64f 00c6 	movw	r0, #63686	; 0xf8c6
 8002072:	f2c0 0201 	movt	r2, #1
 8002076:	f241 0121 	movw	r1, #4129	; 0x1021
 800207a:	f6c0 0c00 	movt	ip, #2048	; 0x800
 800207e:	f2c0 0001 	movt	r0, #1
 8002082:	f502 655f 	add.w	r5, r2, #3568	; 0xdf0
 8002086:	f502 6684 	add.w	r6, r2, #1056	; 0x420
 800208a:	f502 6342 	add.w	r3, r2, #3104	; 0xc20
 800208e:	f500 7a5f 	add.w	sl, r0, #892	; 0x37c
 8002092:	4670      	mov	r0, lr
 8002094:	f01b 0f80 	tst.w	fp, #128	; 0x80
 8002098:	f50e 7e00 	add.w	lr, lr, #512	; 0x200
 800209c:	bf18      	it	ne
 800209e:	4048      	eorne	r0, r1
 80020a0:	ea0a 0240 	and.w	r2, sl, r0, lsl #1
 80020a4:	f410 4f00 	tst.w	r0, #32768	; 0x8000
 80020a8:	f64f 00c6 	movw	r0, #63686	; 0xf8c6
 80020ac:	bf18      	it	ne
 80020ae:	404a      	eorne	r2, r1
 80020b0:	f2c0 0001 	movt	r0, #1
 80020b4:	ea00 0042 	and.w	r0, r0, r2, lsl #1
 80020b8:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 80020bc:	bf18      	it	ne
 80020be:	4048      	eorne	r0, r1
 80020c0:	ea05 0240 	and.w	r2, r5, r0, lsl #1
 80020c4:	f410 4f00 	tst.w	r0, #32768	; 0x8000
 80020c8:	f24e 30de 	movw	r0, #58334	; 0xe3de
 80020cc:	bf18      	it	ne
 80020ce:	404a      	eorne	r2, r1
 80020d0:	f2c0 0001 	movt	r0, #1
 80020d4:	ea00 0042 	and.w	r0, r0, r2, lsl #1
 80020d8:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 80020dc:	bf18      	it	ne
 80020de:	4308      	orrne	r0, r1
 80020e0:	ea06 0240 	and.w	r2, r6, r0, lsl #1
 80020e4:	f410 4f00 	tst.w	r0, #32768	; 0x8000
 80020e8:	bf18      	it	ne
 80020ea:	404a      	eorne	r2, r1
 80020ec:	ea03 0042 	and.w	r0, r3, r2, lsl #1
 80020f0:	f412 4f00 	tst.w	r2, #32768	; 0x8000
 80020f4:	bf18      	it	ne
 80020f6:	4048      	eorne	r0, r1
 80020f8:	ea81 0240 	eor.w	r2, r1, r0, lsl #1
 80020fc:	f410 4f00 	tst.w	r0, #32768	; 0x8000
 8002100:	bf08      	it	eq
 8002102:	0042      	lsleq	r2, r0, #1
 8002104:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8002108:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800210c:	eb00 004b 	add.w	r0, r0, fp, lsl #1
 8002110:	f820 2e00 	strht	r2, [r0]
 8002114:	eba0 004b 	sub.w	r0, r0, fp, lsl #1
 8002118:	f00b 000f 	and.w	r0, fp, #15
 800211c:	ea4f 121b 	mov.w	r2, fp, lsr #4
 8002120:	f81c 0000 	ldrb.w	r0, [ip, r0]
 8002124:	f81c 2002 	ldrb.w	r2, [ip, r2]
 8002128:	ea42 1000 	orr.w	r0, r2, r0, lsl #4
 800212c:	f640 32e5 	movw	r2, #3045	; 0xbe5
 8002130:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002134:	eb02 020b 	add.w	r2, r2, fp
 8002138:	f802 0e00 	strbt	r0, [r2]
 800213c:	eba2 020b 	sub.w	r2, r2, fp
 8002140:	f10b 0b01 	add.w	fp, fp, #1
 8002144:	f5bb 7f80 	cmp.w	fp, #256	; 0x100
 8002148:	d1a3      	bne.n	8002092 <icrc+0x7e>
 800214a:	9900      	ldr	r1, [sp, #0]
 800214c:	2900      	cmp	r1, #0
 800214e:	db03      	blt.n	8002158 <icrc+0x144>
 8002150:	b2c8      	uxtb	r0, r1
 8002152:	ea40 2401 	orr.w	r4, r0, r1, lsl #8
 8002156:	e00c      	b.n	8002172 <icrc+0x15e>
 8002158:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
 800215c:	dc09      	bgt.n	8002172 <icrc+0x15e>
 800215e:	f640 31e5 	movw	r1, #3045	; 0xbe5
 8002162:	b2e0      	uxtb	r0, r4
 8002164:	0a22      	lsrs	r2, r4, #8
 8002166:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800216a:	5c08      	ldrb	r0, [r1, r0]
 800216c:	5c89      	ldrb	r1, [r1, r2]
 800216e:	ea41 2400 	orr.w	r4, r1, r0, lsl #8
 8002172:	f247 30b8 	movw	r0, #29624	; 0x73b8
 8002176:	4649      	mov	r1, r9
 8002178:	f6c0 0000 	movt	r0, #2048	; 0x800
 800217c:	f000 fa04 	bl	8002588 <printf>
 8002180:	f1b9 0f00 	cmp.w	r9, #0
 8002184:	d01f      	beq.n	80021c6 <icrc+0x1b2>
 8002186:	f247 2040 	movw	r0, #29248	; 0x7240
 800218a:	f640 31e5 	movw	r1, #3045	; 0xbe5
 800218e:	f640 12e4 	movw	r2, #2532	; 0x9e4
 8002192:	2601      	movs	r6, #1
 8002194:	2301      	movs	r3, #1
 8002196:	f6c0 0000 	movt	r0, #2048	; 0x800
 800219a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800219e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80021a2:	5d86      	ldrb	r6, [r0, r6]
 80021a4:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
 80021a8:	f404 457f 	and.w	r5, r4, #65280	; 0xff00
 80021ac:	f103 0301 	add.w	r3, r3, #1
 80021b0:	bfd8      	it	le
 80021b2:	5d8e      	ldrble	r6, [r1, r6]
 80021b4:	ea86 2615 	eor.w	r6, r6, r5, lsr #8
 80021b8:	f832 6016 	ldrh.w	r6, [r2, r6, lsl #1]
 80021bc:	ea86 2404 	eor.w	r4, r6, r4, lsl #8
 80021c0:	b29e      	uxth	r6, r3
 80021c2:	454e      	cmp	r6, r9
 80021c4:	d9ed      	bls.n	80021a2 <icrc+0x18e>
 80021c6:	f1b8 3fff 	cmp.w	r8, #4294967295	; 0xffffffff
 80021ca:	dc0a      	bgt.n	80021e2 <icrc+0x1ce>
 80021cc:	f640 31e5 	movw	r1, #3045	; 0xbe5
 80021d0:	b2e0      	uxtb	r0, r4
 80021d2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80021d6:	5c08      	ldrb	r0, [r1, r0]
 80021d8:	f3c4 2207 	ubfx	r2, r4, #8, #8
 80021dc:	5c89      	ldrb	r1, [r1, r2]
 80021de:	ea41 2400 	orr.w	r4, r1, r0, lsl #8
 80021e2:	b2a0      	uxth	r0, r4
 80021e4:	b001      	add	sp, #4
 80021e6:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80021ea:	bdf0      	pop	{r4, r5, r6, r7, pc}

080021ec <verify_benchmark>:
 80021ec:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80021f0:	4770      	bx	lr

080021f2 <initialise_benchmark>:
 80021f2:	4770      	bx	lr

080021f4 <benchmark>:
 80021f4:	b082      	sub	sp, #8
 80021f6:	f84d 7e00 	strt	r7, [sp]
 80021fa:	f84d ee04 	strt	lr, [sp, #4]
 80021fe:	466f      	mov	r7, sp
 8002200:	2000      	movs	r0, #0
 8002202:	2128      	movs	r1, #40	; 0x28
 8002204:	2200      	movs	r2, #0
 8002206:	2301      	movs	r3, #1
 8002208:	f7ff ff04 	bl	8002014 <icrc>
 800220c:	212a      	movs	r1, #42	; 0x2a
 800220e:	2200      	movs	r2, #0
 8002210:	2301      	movs	r3, #1
 8002212:	f7ff feff 	bl	8002014 <icrc>
 8002216:	2000      	movs	r0, #0
 8002218:	bd80      	pop	{r7, pc}

0800221a <__io_putchar>:
 800221a:	b082      	sub	sp, #8
 800221c:	f84d 7e00 	strt	r7, [sp]
 8002220:	f84d ee04 	strt	lr, [sp, #4]
 8002224:	466f      	mov	r7, sp
 8002226:	b082      	sub	sp, #8
 8002228:	f84d 0e04 	strt	r0, [sp, #4]
 800222c:	f640 40e8 	movw	r0, #3304	; 0xce8
 8002230:	a901      	add	r1, sp, #4
 8002232:	2201      	movs	r2, #1
 8002234:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002238:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800223c:	f7ff fdc3 	bl	8001dc6 <HAL_UART_Transmit>
 8002240:	9801      	ldr	r0, [sp, #4]
 8002242:	b002      	add	sp, #8
 8002244:	bd80      	pop	{r7, pc}

08002246 <main>:
 8002246:	b084      	sub	sp, #16
 8002248:	f84d 4e00 	strt	r4, [sp]
 800224c:	f84d 5e04 	strt	r5, [sp, #4]
 8002250:	f84d 7e08 	strt	r7, [sp, #8]
 8002254:	f84d ee0c 	strt	lr, [sp, #12]
 8002258:	af02      	add	r7, sp, #8
 800225a:	f640 41e8 	movw	r1, #3304	; 0xce8
 800225e:	f643 0000 	movw	r0, #14336	; 0x3800
 8002262:	220c      	movs	r2, #12
 8002264:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002268:	f2c4 0001 	movt	r0, #16385	; 0x4001
 800226c:	f841 0e00 	strt	r0, [r1]
 8002270:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8002274:	f841 0e04 	strt	r0, [r1, #4]
 8002278:	2000      	movs	r0, #0
 800227a:	f841 0e08 	strt	r0, [r1, #8]
 800227e:	f841 0e0c 	strt	r0, [r1, #12]
 8002282:	f841 0e10 	strt	r0, [r1, #16]
 8002286:	f841 0e24 	strt	r0, [r1, #36]
 800228a:	f841 0e1c 	strt	r0, [r1, #28]
 800228e:	f841 0e20 	strt	r0, [r1, #32]
 8002292:	f841 2e14 	strt	r2, [r1, #20]
 8002296:	f841 0e18 	strt	r0, [r1, #24]
 800229a:	2000      	movs	r0, #0
 800229c:	f7ff fe46 	bl	8001f2c <BSP_COM_Init>
 80022a0:	f7ff ffa7 	bl	80021f2 <initialise_benchmark>
 80022a4:	f247 30c2 	movw	r0, #29634	; 0x73c2
 80022a8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80022ac:	f000 f96c 	bl	8002588 <printf>
 80022b0:	f247 4068 	movw	r0, #29800	; 0x7468
 80022b4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80022b8:	f000 f9c8 	bl	800264c <puts>
 80022bc:	f7fe ff14 	bl	80010e8 <HAL_Init>
 80022c0:	f7fe ff2b 	bl	800111a <HAL_GetTick>
 80022c4:	4604      	mov	r4, r0
 80022c6:	f7ff ff95 	bl	80021f4 <benchmark>
 80022ca:	4605      	mov	r5, r0
 80022cc:	f7fe ff25 	bl	800111a <HAL_GetTick>
 80022d0:	1b04      	subs	r4, r0, r4
 80022d2:	4628      	mov	r0, r5
 80022d4:	f7ff ff8a 	bl	80021ec <verify_benchmark>
 80022d8:	1c41      	adds	r1, r0, #1
 80022da:	d006      	beq.n	80022ea <main+0xa4>
 80022dc:	2801      	cmp	r0, #1
 80022de:	d109      	bne.n	80022f4 <main+0xae>
 80022e0:	f247 30d4 	movw	r0, #29652	; 0x73d4
 80022e4:	f6c0 0000 	movt	r0, #2048	; 0x800
 80022e8:	e008      	b.n	80022fc <main+0xb6>
 80022ea:	f247 30f8 	movw	r0, #29688	; 0x73f8
 80022ee:	f6c0 0000 	movt	r0, #2048	; 0x800
 80022f2:	e003      	b.n	80022fc <main+0xb6>
 80022f4:	f247 402d 	movw	r0, #29741	; 0x742d
 80022f8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80022fc:	4621      	mov	r1, r4
 80022fe:	f000 f943 	bl	8002588 <printf>
 8002302:	2000      	movs	r0, #0
 8002304:	bdb0      	pop	{r4, r5, r7, pc}

08002306 <SysTick_Handler>:
 8002306:	b082      	sub	sp, #8
 8002308:	f84d 7e00 	strt	r7, [sp]
 800230c:	f84d ee04 	strt	lr, [sp, #4]
 8002310:	466f      	mov	r7, sp
 8002312:	f7fe fef9 	bl	8001108 <HAL_IncTick>
 8002316:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 800231a:	f7fe bf54 	b.w	80011c6 <HAL_SYSTICK_IRQHandler>

0800231e <_read>:
 800231e:	b085      	sub	sp, #20
 8002320:	f84d 4e00 	strt	r4, [sp]
 8002324:	f84d 5e04 	strt	r5, [sp, #4]
 8002328:	f84d 6e08 	strt	r6, [sp, #8]
 800232c:	f84d 7e0c 	strt	r7, [sp, #12]
 8002330:	f84d ee10 	strt	lr, [sp, #16]
 8002334:	af03      	add	r7, sp, #12
 8002336:	b081      	sub	sp, #4
 8002338:	f84d be00 	strt	fp, [sp]
 800233c:	4614      	mov	r4, r2
 800233e:	460d      	mov	r5, r1
 8002340:	2c01      	cmp	r4, #1
 8002342:	db08      	blt.n	8002356 <_read+0x38>
 8002344:	4626      	mov	r6, r4
 8002346:	f3af 8000 	nop.w
 800234a:	f805 0e00 	strbt	r0, [r5]
 800234e:	bfe8      	it	al
 8002350:	3501      	addal	r5, #1
 8002352:	3e01      	subs	r6, #1
 8002354:	d1f7      	bne.n	8002346 <_read+0x28>
 8002356:	4620      	mov	r0, r4
 8002358:	f85d bb04 	ldr.w	fp, [sp], #4
 800235c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800235e <_write>:
 800235e:	b085      	sub	sp, #20
 8002360:	f84d 4e00 	strt	r4, [sp]
 8002364:	f84d 5e04 	strt	r5, [sp, #4]
 8002368:	f84d 6e08 	strt	r6, [sp, #8]
 800236c:	f84d 7e0c 	strt	r7, [sp, #12]
 8002370:	f84d ee10 	strt	lr, [sp, #16]
 8002374:	af03      	add	r7, sp, #12
 8002376:	b081      	sub	sp, #4
 8002378:	f84d be00 	strt	fp, [sp]
 800237c:	4614      	mov	r4, r2
 800237e:	460d      	mov	r5, r1
 8002380:	2c01      	cmp	r4, #1
 8002382:	db06      	blt.n	8002392 <_write+0x34>
 8002384:	4626      	mov	r6, r4
 8002386:	f815 0b01 	ldrb.w	r0, [r5], #1
 800238a:	f7ff ff46 	bl	800221a <__io_putchar>
 800238e:	3e01      	subs	r6, #1
 8002390:	d1f9      	bne.n	8002386 <_write+0x28>
 8002392:	4620      	mov	r0, r4
 8002394:	f85d bb04 	ldr.w	fp, [sp], #4
 8002398:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800239a <_sbrk>:
 800239a:	f640 526c 	movw	r2, #3436	; 0xd6c
 800239e:	4601      	mov	r1, r0
 80023a0:	466b      	mov	r3, sp
 80023a2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80023a6:	6810      	ldr	r0, [r2, #0]
 80023a8:	2800      	cmp	r0, #0
 80023aa:	bf02      	ittt	eq
 80023ac:	f640 6018 	movweq	r0, #3608	; 0xe18
 80023b0:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80023b4:	f842 0e00 	strteq	r0, [r2]
 80023b8:	4401      	add	r1, r0
 80023ba:	4299      	cmp	r1, r3
 80023bc:	bf9c      	itt	ls
 80023be:	f842 1e00 	strtls	r1, [r2]
 80023c2:	4770      	bxls	lr
 80023c4:	b082      	sub	sp, #8
 80023c6:	f84d 7e00 	strt	r7, [sp]
 80023ca:	f84d ee04 	strt	lr, [sp, #4]
 80023ce:	466f      	mov	r7, sp
 80023d0:	f000 f866 	bl	80024a0 <__errno>
 80023d4:	210c      	movs	r1, #12
 80023d6:	f840 1e00 	strt	r1, [r0]
 80023da:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80023de:	bd80      	pop	{r7, pc}

080023e0 <_close>:
 80023e0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80023e4:	4770      	bx	lr

080023e6 <_fstat>:
 80023e6:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80023ea:	f841 0e04 	strt	r0, [r1, #4]
 80023ee:	2000      	movs	r0, #0
 80023f0:	4770      	bx	lr

080023f2 <_isatty>:
 80023f2:	2001      	movs	r0, #1
 80023f4:	4770      	bx	lr

080023f6 <_lseek>:
 80023f6:	2000      	movs	r0, #0
 80023f8:	4770      	bx	lr

080023fa <SystemInit>:
 80023fa:	f64e 5088 	movw	r0, #60808	; 0xed88
 80023fe:	f04f 0c00 	mov.w	ip, #0
 8002402:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8002406:	6801      	ldr	r1, [r0, #0]
 8002408:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800240c:	6001      	str	r1, [r0, #0]
 800240e:	f241 0100 	movw	r1, #4096	; 0x1000
 8002412:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8002416:	680a      	ldr	r2, [r1, #0]
 8002418:	f042 0201 	orr.w	r2, r2, #1
 800241c:	600a      	str	r2, [r1, #0]
 800241e:	f8c1 c008 	str.w	ip, [r1, #8]
 8002422:	f64f 72ff 	movw	r2, #65535	; 0xffff
 8002426:	680b      	ldr	r3, [r1, #0]
 8002428:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 800242c:	401a      	ands	r2, r3
 800242e:	600a      	str	r2, [r1, #0]
 8002430:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002434:	60ca      	str	r2, [r1, #12]
 8002436:	680a      	ldr	r2, [r1, #0]
 8002438:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 800243c:	600a      	str	r2, [r1, #0]
 800243e:	f8c1 c018 	str.w	ip, [r1, #24]
 8002442:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002446:	f840 1c80 	str.w	r1, [r0, #-128]
 800244a:	4770      	bx	lr

0800244c <Reset_Handler>:
 800244c:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002484 <LoopForever+0x2>
 8002450:	2100      	movs	r1, #0
 8002452:	e003      	b.n	800245c <LoopCopyDataInit>

08002454 <CopyDataInit>:
 8002454:	4b0c      	ldr	r3, [pc, #48]	; (8002488 <LoopForever+0x6>)
 8002456:	585b      	ldr	r3, [r3, r1]
 8002458:	5043      	str	r3, [r0, r1]
 800245a:	3104      	adds	r1, #4

0800245c <LoopCopyDataInit>:
 800245c:	480b      	ldr	r0, [pc, #44]	; (800248c <LoopForever+0xa>)
 800245e:	4b0c      	ldr	r3, [pc, #48]	; (8002490 <LoopForever+0xe>)
 8002460:	1842      	adds	r2, r0, r1
 8002462:	429a      	cmp	r2, r3
 8002464:	d3f6      	bcc.n	8002454 <CopyDataInit>
 8002466:	4a0b      	ldr	r2, [pc, #44]	; (8002494 <LoopForever+0x12>)
 8002468:	e002      	b.n	8002470 <LoopFillZerobss>

0800246a <FillZerobss>:
 800246a:	2300      	movs	r3, #0
 800246c:	f842 3b04 	str.w	r3, [r2], #4

08002470 <LoopFillZerobss>:
 8002470:	4b09      	ldr	r3, [pc, #36]	; (8002498 <LoopForever+0x16>)
 8002472:	429a      	cmp	r2, r3
 8002474:	d3f9      	bcc.n	800246a <FillZerobss>
 8002476:	f7ff ffc0 	bl	80023fa <SystemInit>
 800247a:	f000 f817 	bl	80024ac <__libc_init_array>
 800247e:	f7ff fee2 	bl	8002246 <main>

08002482 <LoopForever>:
 8002482:	e7fe      	b.n	8002482 <LoopForever>
 8002484:	20018000 	.word	0x20018000
 8002488:	08007710 	.word	0x08007710
 800248c:	20000000 	.word	0x20000000
 8002490:	200009c8 	.word	0x200009c8
 8002494:	200009c8 	.word	0x200009c8
 8002498:	20000e14 	.word	0x20000e14

0800249c <ADC1_2_IRQHandler>:
 800249c:	e7fe      	b.n	800249c <ADC1_2_IRQHandler>
	...

080024a0 <__errno>:
 80024a0:	4b01      	ldr	r3, [pc, #4]	; (80024a8 <__errno+0x8>)
 80024a2:	6818      	ldr	r0, [r3, #0]
 80024a4:	4770      	bx	lr
 80024a6:	bf00      	nop
 80024a8:	20000018 	.word	0x20000018

080024ac <__libc_init_array>:
 80024ac:	b570      	push	{r4, r5, r6, lr}
 80024ae:	4e0d      	ldr	r6, [pc, #52]	; (80024e4 <__libc_init_array+0x38>)
 80024b0:	4d0d      	ldr	r5, [pc, #52]	; (80024e8 <__libc_init_array+0x3c>)
 80024b2:	1b76      	subs	r6, r6, r5
 80024b4:	10b6      	asrs	r6, r6, #2
 80024b6:	d006      	beq.n	80024c6 <__libc_init_array+0x1a>
 80024b8:	2400      	movs	r4, #0
 80024ba:	3401      	adds	r4, #1
 80024bc:	f855 3b04 	ldr.w	r3, [r5], #4
 80024c0:	4798      	blx	r3
 80024c2:	42a6      	cmp	r6, r4
 80024c4:	d1f9      	bne.n	80024ba <__libc_init_array+0xe>
 80024c6:	4e09      	ldr	r6, [pc, #36]	; (80024ec <__libc_init_array+0x40>)
 80024c8:	4d09      	ldr	r5, [pc, #36]	; (80024f0 <__libc_init_array+0x44>)
 80024ca:	1b76      	subs	r6, r6, r5
 80024cc:	f004 feaa 	bl	8007224 <_init>
 80024d0:	10b6      	asrs	r6, r6, #2
 80024d2:	d006      	beq.n	80024e2 <__libc_init_array+0x36>
 80024d4:	2400      	movs	r4, #0
 80024d6:	3401      	adds	r4, #1
 80024d8:	f855 3b04 	ldr.w	r3, [r5], #4
 80024dc:	4798      	blx	r3
 80024de:	42a6      	cmp	r6, r4
 80024e0:	d1f9      	bne.n	80024d6 <__libc_init_array+0x2a>
 80024e2:	bd70      	pop	{r4, r5, r6, pc}
 80024e4:	08007700 	.word	0x08007700
 80024e8:	08007700 	.word	0x08007700
 80024ec:	08007708 	.word	0x08007708
 80024f0:	08007700 	.word	0x08007700

080024f4 <memset>:
 80024f4:	b4f0      	push	{r4, r5, r6, r7}
 80024f6:	0786      	lsls	r6, r0, #30
 80024f8:	d043      	beq.n	8002582 <memset+0x8e>
 80024fa:	1e54      	subs	r4, r2, #1
 80024fc:	2a00      	cmp	r2, #0
 80024fe:	d03e      	beq.n	800257e <memset+0x8a>
 8002500:	b2ca      	uxtb	r2, r1
 8002502:	4603      	mov	r3, r0
 8002504:	e002      	b.n	800250c <memset+0x18>
 8002506:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 800250a:	d338      	bcc.n	800257e <memset+0x8a>
 800250c:	f803 2b01 	strb.w	r2, [r3], #1
 8002510:	079d      	lsls	r5, r3, #30
 8002512:	d1f8      	bne.n	8002506 <memset+0x12>
 8002514:	2c03      	cmp	r4, #3
 8002516:	d92b      	bls.n	8002570 <memset+0x7c>
 8002518:	b2cd      	uxtb	r5, r1
 800251a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800251e:	2c0f      	cmp	r4, #15
 8002520:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8002524:	d916      	bls.n	8002554 <memset+0x60>
 8002526:	f1a4 0710 	sub.w	r7, r4, #16
 800252a:	093f      	lsrs	r7, r7, #4
 800252c:	f103 0620 	add.w	r6, r3, #32
 8002530:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002534:	f103 0210 	add.w	r2, r3, #16
 8002538:	e942 5504 	strd	r5, r5, [r2, #-16]
 800253c:	e942 5502 	strd	r5, r5, [r2, #-8]
 8002540:	3210      	adds	r2, #16
 8002542:	42b2      	cmp	r2, r6
 8002544:	d1f8      	bne.n	8002538 <memset+0x44>
 8002546:	f004 040f 	and.w	r4, r4, #15
 800254a:	3701      	adds	r7, #1
 800254c:	2c03      	cmp	r4, #3
 800254e:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8002552:	d90d      	bls.n	8002570 <memset+0x7c>
 8002554:	461e      	mov	r6, r3
 8002556:	4622      	mov	r2, r4
 8002558:	3a04      	subs	r2, #4
 800255a:	2a03      	cmp	r2, #3
 800255c:	f846 5b04 	str.w	r5, [r6], #4
 8002560:	d8fa      	bhi.n	8002558 <memset+0x64>
 8002562:	1f22      	subs	r2, r4, #4
 8002564:	f022 0203 	bic.w	r2, r2, #3
 8002568:	3204      	adds	r2, #4
 800256a:	4413      	add	r3, r2
 800256c:	f004 0403 	and.w	r4, r4, #3
 8002570:	b12c      	cbz	r4, 800257e <memset+0x8a>
 8002572:	b2c9      	uxtb	r1, r1
 8002574:	441c      	add	r4, r3
 8002576:	f803 1b01 	strb.w	r1, [r3], #1
 800257a:	429c      	cmp	r4, r3
 800257c:	d1fb      	bne.n	8002576 <memset+0x82>
 800257e:	bcf0      	pop	{r4, r5, r6, r7}
 8002580:	4770      	bx	lr
 8002582:	4614      	mov	r4, r2
 8002584:	4603      	mov	r3, r0
 8002586:	e7c5      	b.n	8002514 <memset+0x20>

08002588 <printf>:
 8002588:	b40f      	push	{r0, r1, r2, r3}
 800258a:	b500      	push	{lr}
 800258c:	4907      	ldr	r1, [pc, #28]	; (80025ac <printf+0x24>)
 800258e:	b083      	sub	sp, #12
 8002590:	ab04      	add	r3, sp, #16
 8002592:	6808      	ldr	r0, [r1, #0]
 8002594:	f853 2b04 	ldr.w	r2, [r3], #4
 8002598:	6881      	ldr	r1, [r0, #8]
 800259a:	9301      	str	r3, [sp, #4]
 800259c:	f000 f860 	bl	8002660 <_vfprintf_r>
 80025a0:	b003      	add	sp, #12
 80025a2:	f85d eb04 	ldr.w	lr, [sp], #4
 80025a6:	b004      	add	sp, #16
 80025a8:	4770      	bx	lr
 80025aa:	bf00      	nop
 80025ac:	20000018 	.word	0x20000018

080025b0 <_puts_r>:
 80025b0:	b570      	push	{r4, r5, r6, lr}
 80025b2:	4605      	mov	r5, r0
 80025b4:	b088      	sub	sp, #32
 80025b6:	4608      	mov	r0, r1
 80025b8:	460c      	mov	r4, r1
 80025ba:	f7fe f841 	bl	8000640 <strlen>
 80025be:	4a22      	ldr	r2, [pc, #136]	; (8002648 <_puts_r+0x98>)
 80025c0:	6bab      	ldr	r3, [r5, #56]	; 0x38
 80025c2:	9404      	str	r4, [sp, #16]
 80025c4:	2601      	movs	r6, #1
 80025c6:	1c44      	adds	r4, r0, #1
 80025c8:	a904      	add	r1, sp, #16
 80025ca:	9206      	str	r2, [sp, #24]
 80025cc:	2202      	movs	r2, #2
 80025ce:	9403      	str	r4, [sp, #12]
 80025d0:	9005      	str	r0, [sp, #20]
 80025d2:	68ac      	ldr	r4, [r5, #8]
 80025d4:	9607      	str	r6, [sp, #28]
 80025d6:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80025da:	b31b      	cbz	r3, 8002624 <_puts_r+0x74>
 80025dc:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80025de:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80025e2:	07ce      	lsls	r6, r1, #31
 80025e4:	b29a      	uxth	r2, r3
 80025e6:	d401      	bmi.n	80025ec <_puts_r+0x3c>
 80025e8:	0590      	lsls	r0, r2, #22
 80025ea:	d525      	bpl.n	8002638 <_puts_r+0x88>
 80025ec:	0491      	lsls	r1, r2, #18
 80025ee:	d406      	bmi.n	80025fe <_puts_r+0x4e>
 80025f0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80025f2:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80025f6:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80025fa:	81a3      	strh	r3, [r4, #12]
 80025fc:	6662      	str	r2, [r4, #100]	; 0x64
 80025fe:	4628      	mov	r0, r5
 8002600:	aa01      	add	r2, sp, #4
 8002602:	4621      	mov	r1, r4
 8002604:	f003 f860 	bl	80056c8 <__sfvwrite_r>
 8002608:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800260a:	2800      	cmp	r0, #0
 800260c:	bf0c      	ite	eq
 800260e:	250a      	moveq	r5, #10
 8002610:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8002614:	07da      	lsls	r2, r3, #31
 8002616:	d402      	bmi.n	800261e <_puts_r+0x6e>
 8002618:	89a3      	ldrh	r3, [r4, #12]
 800261a:	059b      	lsls	r3, r3, #22
 800261c:	d506      	bpl.n	800262c <_puts_r+0x7c>
 800261e:	4628      	mov	r0, r5
 8002620:	b008      	add	sp, #32
 8002622:	bd70      	pop	{r4, r5, r6, pc}
 8002624:	4628      	mov	r0, r5
 8002626:	f002 feb9 	bl	800539c <__sinit>
 800262a:	e7d7      	b.n	80025dc <_puts_r+0x2c>
 800262c:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800262e:	f003 fa07 	bl	8005a40 <__retarget_lock_release_recursive>
 8002632:	4628      	mov	r0, r5
 8002634:	b008      	add	sp, #32
 8002636:	bd70      	pop	{r4, r5, r6, pc}
 8002638:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800263a:	f003 f9ff 	bl	8005a3c <__retarget_lock_acquire_recursive>
 800263e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8002642:	b29a      	uxth	r2, r3
 8002644:	e7d2      	b.n	80025ec <_puts_r+0x3c>
 8002646:	bf00      	nop
 8002648:	08007470 	.word	0x08007470

0800264c <puts>:
 800264c:	4b02      	ldr	r3, [pc, #8]	; (8002658 <puts+0xc>)
 800264e:	4601      	mov	r1, r0
 8002650:	6818      	ldr	r0, [r3, #0]
 8002652:	f7ff bfad 	b.w	80025b0 <_puts_r>
 8002656:	bf00      	nop
 8002658:	20000018 	.word	0x20000018
 800265c:	00000000 	.word	0x00000000

08002660 <_vfprintf_r>:
 8002660:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8002664:	b0d7      	sub	sp, #348	; 0x15c
 8002666:	461c      	mov	r4, r3
 8002668:	4689      	mov	r9, r1
 800266a:	4617      	mov	r7, r2
 800266c:	4605      	mov	r5, r0
 800266e:	9003      	str	r0, [sp, #12]
 8002670:	f003 f9d2 	bl	8005a18 <_localeconv_r>
 8002674:	6803      	ldr	r3, [r0, #0]
 8002676:	9316      	str	r3, [sp, #88]	; 0x58
 8002678:	4618      	mov	r0, r3
 800267a:	f7fd ffe1 	bl	8000640 <strlen>
 800267e:	9408      	str	r4, [sp, #32]
 8002680:	9015      	str	r0, [sp, #84]	; 0x54
 8002682:	b11d      	cbz	r5, 800268c <_vfprintf_r+0x2c>
 8002684:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8002686:	2b00      	cmp	r3, #0
 8002688:	f000 8107 	beq.w	800289a <_vfprintf_r+0x23a>
 800268c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002690:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002694:	07c8      	lsls	r0, r1, #31
 8002696:	b293      	uxth	r3, r2
 8002698:	d402      	bmi.n	80026a0 <_vfprintf_r+0x40>
 800269a:	0599      	lsls	r1, r3, #22
 800269c:	f140 811f 	bpl.w	80028de <_vfprintf_r+0x27e>
 80026a0:	049e      	lsls	r6, r3, #18
 80026a2:	d40a      	bmi.n	80026ba <_vfprintf_r+0x5a>
 80026a4:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 80026a8:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 80026ac:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 80026b0:	f8a9 300c 	strh.w	r3, [r9, #12]
 80026b4:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 80026b8:	b29b      	uxth	r3, r3
 80026ba:	071d      	lsls	r5, r3, #28
 80026bc:	f140 80b2 	bpl.w	8002824 <_vfprintf_r+0x1c4>
 80026c0:	f8d9 2010 	ldr.w	r2, [r9, #16]
 80026c4:	2a00      	cmp	r2, #0
 80026c6:	f000 80ad 	beq.w	8002824 <_vfprintf_r+0x1c4>
 80026ca:	f003 021a 	and.w	r2, r3, #26
 80026ce:	2a0a      	cmp	r2, #10
 80026d0:	f000 80c9 	beq.w	8002866 <_vfprintf_r+0x206>
 80026d4:	2300      	movs	r3, #0
 80026d6:	ed9f 7b86 	vldr	d7, [pc, #536]	; 80028f0 <_vfprintf_r+0x290>
 80026da:	9310      	str	r3, [sp, #64]	; 0x40
 80026dc:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80026e0:	9317      	str	r3, [sp, #92]	; 0x5c
 80026e2:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80026e6:	931b      	str	r3, [sp, #108]	; 0x6c
 80026e8:	9318      	str	r3, [sp, #96]	; 0x60
 80026ea:	9305      	str	r3, [sp, #20]
 80026ec:	ab2d      	add	r3, sp, #180	; 0xb4
 80026ee:	932a      	str	r3, [sp, #168]	; 0xa8
 80026f0:	469b      	mov	fp, r3
 80026f2:	783b      	ldrb	r3, [r7, #0]
 80026f4:	f8cd 901c 	str.w	r9, [sp, #28]
 80026f8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80026fc:	2b00      	cmp	r3, #0
 80026fe:	f000 8259 	beq.w	8002bb4 <_vfprintf_r+0x554>
 8002702:	2b25      	cmp	r3, #37	; 0x25
 8002704:	463c      	mov	r4, r7
 8002706:	d102      	bne.n	800270e <_vfprintf_r+0xae>
 8002708:	e01d      	b.n	8002746 <_vfprintf_r+0xe6>
 800270a:	2b25      	cmp	r3, #37	; 0x25
 800270c:	d003      	beq.n	8002716 <_vfprintf_r+0xb6>
 800270e:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8002712:	2b00      	cmp	r3, #0
 8002714:	d1f9      	bne.n	800270a <_vfprintf_r+0xaa>
 8002716:	1be5      	subs	r5, r4, r7
 8002718:	b18d      	cbz	r5, 800273e <_vfprintf_r+0xde>
 800271a:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 800271e:	3301      	adds	r3, #1
 8002720:	442a      	add	r2, r5
 8002722:	2b07      	cmp	r3, #7
 8002724:	f8cb 7000 	str.w	r7, [fp]
 8002728:	f8cb 5004 	str.w	r5, [fp, #4]
 800272c:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8002730:	f300 80ca 	bgt.w	80028c8 <_vfprintf_r+0x268>
 8002734:	f10b 0b08 	add.w	fp, fp, #8
 8002738:	9b05      	ldr	r3, [sp, #20]
 800273a:	442b      	add	r3, r5
 800273c:	9305      	str	r3, [sp, #20]
 800273e:	7823      	ldrb	r3, [r4, #0]
 8002740:	2b00      	cmp	r3, #0
 8002742:	f000 8237 	beq.w	8002bb4 <_vfprintf_r+0x554>
 8002746:	2300      	movs	r3, #0
 8002748:	7866      	ldrb	r6, [r4, #1]
 800274a:	9306      	str	r3, [sp, #24]
 800274c:	4698      	mov	r8, r3
 800274e:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002752:	f104 0a01 	add.w	sl, r4, #1
 8002756:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 800275a:	252b      	movs	r5, #43	; 0x2b
 800275c:	f10a 0a01 	add.w	sl, sl, #1
 8002760:	f1a6 0320 	sub.w	r3, r6, #32
 8002764:	2b5a      	cmp	r3, #90	; 0x5a
 8002766:	f200 842a 	bhi.w	8002fbe <_vfprintf_r+0x95e>
 800276a:	e8df f013 	tbh	[pc, r3, lsl #1]
 800276e:	03aa      	.short	0x03aa
 8002770:	04280428 	.word	0x04280428
 8002774:	0428029c 	.word	0x0428029c
 8002778:	04280428 	.word	0x04280428
 800277c:	042802a7 	.word	0x042802a7
 8002780:	02c60428 	.word	0x02c60428
 8002784:	042802d2 	.word	0x042802d2
 8002788:	02dc02d7 	.word	0x02dc02d7
 800278c:	02f60428 	.word	0x02f60428
 8002790:	026d026d 	.word	0x026d026d
 8002794:	026d026d 	.word	0x026d026d
 8002798:	026d026d 	.word	0x026d026d
 800279c:	026d026d 	.word	0x026d026d
 80027a0:	0428026d 	.word	0x0428026d
 80027a4:	04280428 	.word	0x04280428
 80027a8:	04280428 	.word	0x04280428
 80027ac:	04280428 	.word	0x04280428
 80027b0:	042802fb 	.word	0x042802fb
 80027b4:	03f3033c 	.word	0x03f3033c
 80027b8:	02fb02fb 	.word	0x02fb02fb
 80027bc:	042802fb 	.word	0x042802fb
 80027c0:	04280428 	.word	0x04280428
 80027c4:	03ee0428 	.word	0x03ee0428
 80027c8:	04280428 	.word	0x04280428
 80027cc:	0428009a 	.word	0x0428009a
 80027d0:	04280428 	.word	0x04280428
 80027d4:	04280350 	.word	0x04280350
 80027d8:	04280379 	.word	0x04280379
 80027dc:	03900428 	.word	0x03900428
 80027e0:	04280428 	.word	0x04280428
 80027e4:	04280428 	.word	0x04280428
 80027e8:	04280428 	.word	0x04280428
 80027ec:	04280428 	.word	0x04280428
 80027f0:	042802fb 	.word	0x042802fb
 80027f4:	00c5033c 	.word	0x00c5033c
 80027f8:	02fb02fb 	.word	0x02fb02fb
 80027fc:	03d102fb 	.word	0x03d102fb
 8002800:	007000c5 	.word	0x007000c5
 8002804:	03b50428 	.word	0x03b50428
 8002808:	03c20428 	.word	0x03c20428
 800280c:	03de009c 	.word	0x03de009c
 8002810:	04280070 	.word	0x04280070
 8002814:	00720350 	.word	0x00720350
 8002818:	0428022c 	.word	0x0428022c
 800281c:	027c0428 	.word	0x027c0428
 8002820:	00720428 	.word	0x00720428
 8002824:	4649      	mov	r1, r9
 8002826:	9803      	ldr	r0, [sp, #12]
 8002828:	f001 fc9a 	bl	8004160 <__swsetup_r>
 800282c:	b1a0      	cbz	r0, 8002858 <_vfprintf_r+0x1f8>
 800282e:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8002832:	07d8      	lsls	r0, r3, #31
 8002834:	d404      	bmi.n	8002840 <_vfprintf_r+0x1e0>
 8002836:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800283a:	0599      	lsls	r1, r3, #22
 800283c:	f140 83b7 	bpl.w	8002fae <_vfprintf_r+0x94e>
 8002840:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002844:	9305      	str	r3, [sp, #20]
 8002846:	9805      	ldr	r0, [sp, #20]
 8002848:	b057      	add	sp, #348	; 0x15c
 800284a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800284e:	f048 0820 	orr.w	r8, r8, #32
 8002852:	f89a 6000 	ldrb.w	r6, [sl]
 8002856:	e781      	b.n	800275c <_vfprintf_r+0xfc>
 8002858:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800285c:	f003 021a 	and.w	r2, r3, #26
 8002860:	2a0a      	cmp	r2, #10
 8002862:	f47f af37 	bne.w	80026d4 <_vfprintf_r+0x74>
 8002866:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 800286a:	2a00      	cmp	r2, #0
 800286c:	f6ff af32 	blt.w	80026d4 <_vfprintf_r+0x74>
 8002870:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002874:	07d2      	lsls	r2, r2, #31
 8002876:	d405      	bmi.n	8002884 <_vfprintf_r+0x224>
 8002878:	059b      	lsls	r3, r3, #22
 800287a:	d403      	bmi.n	8002884 <_vfprintf_r+0x224>
 800287c:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002880:	f003 f8de 	bl	8005a40 <__retarget_lock_release_recursive>
 8002884:	4623      	mov	r3, r4
 8002886:	463a      	mov	r2, r7
 8002888:	4649      	mov	r1, r9
 800288a:	9803      	ldr	r0, [sp, #12]
 800288c:	f001 fc26 	bl	80040dc <__sbprintf>
 8002890:	9005      	str	r0, [sp, #20]
 8002892:	9805      	ldr	r0, [sp, #20]
 8002894:	b057      	add	sp, #348	; 0x15c
 8002896:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800289a:	9803      	ldr	r0, [sp, #12]
 800289c:	f002 fd7e 	bl	800539c <__sinit>
 80028a0:	e6f4      	b.n	800268c <_vfprintf_r+0x2c>
 80028a2:	f048 0810 	orr.w	r8, r8, #16
 80028a6:	f018 0f20 	tst.w	r8, #32
 80028aa:	f000 836c 	beq.w	8002f86 <_vfprintf_r+0x926>
 80028ae:	9c08      	ldr	r4, [sp, #32]
 80028b0:	3407      	adds	r4, #7
 80028b2:	f024 0307 	bic.w	r3, r4, #7
 80028b6:	e9d3 4500 	ldrd	r4, r5, [r3]
 80028ba:	f103 0208 	add.w	r2, r3, #8
 80028be:	9208      	str	r2, [sp, #32]
 80028c0:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 80028c4:	2200      	movs	r2, #0
 80028c6:	e18c      	b.n	8002be2 <_vfprintf_r+0x582>
 80028c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80028ca:	9907      	ldr	r1, [sp, #28]
 80028cc:	9803      	ldr	r0, [sp, #12]
 80028ce:	f004 f9f5 	bl	8006cbc <__sprint_r>
 80028d2:	2800      	cmp	r0, #0
 80028d4:	f041 8376 	bne.w	8003fc4 <_vfprintf_r+0x1964>
 80028d8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80028dc:	e72c      	b.n	8002738 <_vfprintf_r+0xd8>
 80028de:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80028e2:	f003 f8ab 	bl	8005a3c <__retarget_lock_acquire_recursive>
 80028e6:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 80028ea:	b293      	uxth	r3, r2
 80028ec:	e6d8      	b.n	80026a0 <_vfprintf_r+0x40>
 80028ee:	bf00      	nop
	...
 80028f8:	4643      	mov	r3, r8
 80028fa:	069f      	lsls	r7, r3, #26
 80028fc:	f140 832f 	bpl.w	8002f5e <_vfprintf_r+0x8fe>
 8002900:	9c08      	ldr	r4, [sp, #32]
 8002902:	3407      	adds	r4, #7
 8002904:	f024 0407 	bic.w	r4, r4, #7
 8002908:	e9d4 0100 	ldrd	r0, r1, [r4]
 800290c:	f104 0208 	add.w	r2, r4, #8
 8002910:	9208      	str	r2, [sp, #32]
 8002912:	4604      	mov	r4, r0
 8002914:	460d      	mov	r5, r1
 8002916:	2800      	cmp	r0, #0
 8002918:	f171 0200 	sbcs.w	r2, r1, #0
 800291c:	da05      	bge.n	800292a <_vfprintf_r+0x2ca>
 800291e:	222d      	movs	r2, #45	; 0x2d
 8002920:	4264      	negs	r4, r4
 8002922:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002926:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800292a:	aa56      	add	r2, sp, #344	; 0x158
 800292c:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002930:	9204      	str	r2, [sp, #16]
 8002932:	f000 84b2 	beq.w	800329a <_vfprintf_r+0xc3a>
 8002936:	2201      	movs	r2, #1
 8002938:	ea54 0105 	orrs.w	r1, r4, r5
 800293c:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002940:	f040 8159 	bne.w	8002bf6 <_vfprintf_r+0x596>
 8002944:	f1b9 0f00 	cmp.w	r9, #0
 8002948:	f040 8619 	bne.w	800357e <_vfprintf_r+0xf1e>
 800294c:	2a00      	cmp	r2, #0
 800294e:	f040 8508 	bne.w	8003362 <_vfprintf_r+0xd02>
 8002952:	f013 0301 	ands.w	r3, r3, #1
 8002956:	af56      	add	r7, sp, #344	; 0x158
 8002958:	9309      	str	r3, [sp, #36]	; 0x24
 800295a:	d002      	beq.n	8002962 <_vfprintf_r+0x302>
 800295c:	2330      	movs	r3, #48	; 0x30
 800295e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002962:	2300      	movs	r3, #0
 8002964:	930a      	str	r3, [sp, #40]	; 0x28
 8002966:	930f      	str	r3, [sp, #60]	; 0x3c
 8002968:	9314      	str	r3, [sp, #80]	; 0x50
 800296a:	9311      	str	r3, [sp, #68]	; 0x44
 800296c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800296e:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002972:	454b      	cmp	r3, r9
 8002974:	bfb8      	it	lt
 8002976:	464b      	movlt	r3, r9
 8002978:	9304      	str	r3, [sp, #16]
 800297a:	b112      	cbz	r2, 8002982 <_vfprintf_r+0x322>
 800297c:	9b04      	ldr	r3, [sp, #16]
 800297e:	3301      	adds	r3, #1
 8002980:	9304      	str	r3, [sp, #16]
 8002982:	f018 0302 	ands.w	r3, r8, #2
 8002986:	930b      	str	r3, [sp, #44]	; 0x2c
 8002988:	d002      	beq.n	8002990 <_vfprintf_r+0x330>
 800298a:	9b04      	ldr	r3, [sp, #16]
 800298c:	3302      	adds	r3, #2
 800298e:	9304      	str	r3, [sp, #16]
 8002990:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002994:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002996:	930e      	str	r3, [sp, #56]	; 0x38
 8002998:	d13f      	bne.n	8002a1a <_vfprintf_r+0x3ba>
 800299a:	9b06      	ldr	r3, [sp, #24]
 800299c:	9904      	ldr	r1, [sp, #16]
 800299e:	1a5d      	subs	r5, r3, r1
 80029a0:	2d00      	cmp	r5, #0
 80029a2:	dd3a      	ble.n	8002a1a <_vfprintf_r+0x3ba>
 80029a4:	2d10      	cmp	r5, #16
 80029a6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80029a8:	dd29      	ble.n	80029fe <_vfprintf_r+0x39e>
 80029aa:	4659      	mov	r1, fp
 80029ac:	4620      	mov	r0, r4
 80029ae:	9620      	str	r6, [sp, #128]	; 0x80
 80029b0:	2310      	movs	r3, #16
 80029b2:	9c03      	ldr	r4, [sp, #12]
 80029b4:	9e07      	ldr	r6, [sp, #28]
 80029b6:	46bb      	mov	fp, r7
 80029b8:	e004      	b.n	80029c4 <_vfprintf_r+0x364>
 80029ba:	3d10      	subs	r5, #16
 80029bc:	2d10      	cmp	r5, #16
 80029be:	f101 0108 	add.w	r1, r1, #8
 80029c2:	dd18      	ble.n	80029f6 <_vfprintf_r+0x396>
 80029c4:	3201      	adds	r2, #1
 80029c6:	4fba      	ldr	r7, [pc, #744]	; (8002cb0 <_vfprintf_r+0x650>)
 80029c8:	3010      	adds	r0, #16
 80029ca:	2a07      	cmp	r2, #7
 80029cc:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80029d0:	e9c1 7300 	strd	r7, r3, [r1]
 80029d4:	ddf1      	ble.n	80029ba <_vfprintf_r+0x35a>
 80029d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80029d8:	4631      	mov	r1, r6
 80029da:	4620      	mov	r0, r4
 80029dc:	930c      	str	r3, [sp, #48]	; 0x30
 80029de:	f004 f96d 	bl	8006cbc <__sprint_r>
 80029e2:	2800      	cmp	r0, #0
 80029e4:	f040 843d 	bne.w	8003262 <_vfprintf_r+0xc02>
 80029e8:	3d10      	subs	r5, #16
 80029ea:	2d10      	cmp	r5, #16
 80029ec:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80029f0:	a92d      	add	r1, sp, #180	; 0xb4
 80029f2:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 80029f4:	dce6      	bgt.n	80029c4 <_vfprintf_r+0x364>
 80029f6:	9e20      	ldr	r6, [sp, #128]	; 0x80
 80029f8:	465f      	mov	r7, fp
 80029fa:	4604      	mov	r4, r0
 80029fc:	468b      	mov	fp, r1
 80029fe:	3201      	adds	r2, #1
 8002a00:	4bab      	ldr	r3, [pc, #684]	; (8002cb0 <_vfprintf_r+0x650>)
 8002a02:	442c      	add	r4, r5
 8002a04:	2a07      	cmp	r2, #7
 8002a06:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002a0a:	e9cb 3500 	strd	r3, r5, [fp]
 8002a0e:	f300 84ff 	bgt.w	8003410 <_vfprintf_r+0xdb0>
 8002a12:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002a16:	f10b 0b08 	add.w	fp, fp, #8
 8002a1a:	b172      	cbz	r2, 8002a3a <_vfprintf_r+0x3da>
 8002a1c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002a1e:	3201      	adds	r2, #1
 8002a20:	3401      	adds	r4, #1
 8002a22:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002a26:	2101      	movs	r1, #1
 8002a28:	2a07      	cmp	r2, #7
 8002a2a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002a2e:	e9cb 0100 	strd	r0, r1, [fp]
 8002a32:	f300 8418 	bgt.w	8003266 <_vfprintf_r+0xc06>
 8002a36:	f10b 0b08 	add.w	fp, fp, #8
 8002a3a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002a3c:	b16b      	cbz	r3, 8002a5a <_vfprintf_r+0x3fa>
 8002a3e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002a40:	3301      	adds	r3, #1
 8002a42:	3402      	adds	r4, #2
 8002a44:	a923      	add	r1, sp, #140	; 0x8c
 8002a46:	2202      	movs	r2, #2
 8002a48:	2b07      	cmp	r3, #7
 8002a4a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002a4e:	e9cb 1200 	strd	r1, r2, [fp]
 8002a52:	f300 8415 	bgt.w	8003280 <_vfprintf_r+0xc20>
 8002a56:	f10b 0b08 	add.w	fp, fp, #8
 8002a5a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002a5c:	2b80      	cmp	r3, #128	; 0x80
 8002a5e:	f000 8331 	beq.w	80030c4 <_vfprintf_r+0xa64>
 8002a62:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002a64:	eba9 0503 	sub.w	r5, r9, r3
 8002a68:	2d00      	cmp	r5, #0
 8002a6a:	dd37      	ble.n	8002adc <_vfprintf_r+0x47c>
 8002a6c:	2d10      	cmp	r5, #16
 8002a6e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002a70:	4b90      	ldr	r3, [pc, #576]	; (8002cb4 <_vfprintf_r+0x654>)
 8002a72:	dd28      	ble.n	8002ac6 <_vfprintf_r+0x466>
 8002a74:	4659      	mov	r1, fp
 8002a76:	4620      	mov	r0, r4
 8002a78:	46bb      	mov	fp, r7
 8002a7a:	f04f 0910 	mov.w	r9, #16
 8002a7e:	4637      	mov	r7, r6
 8002a80:	461c      	mov	r4, r3
 8002a82:	9e07      	ldr	r6, [sp, #28]
 8002a84:	e004      	b.n	8002a90 <_vfprintf_r+0x430>
 8002a86:	3d10      	subs	r5, #16
 8002a88:	2d10      	cmp	r5, #16
 8002a8a:	f101 0108 	add.w	r1, r1, #8
 8002a8e:	dd15      	ble.n	8002abc <_vfprintf_r+0x45c>
 8002a90:	3201      	adds	r2, #1
 8002a92:	3010      	adds	r0, #16
 8002a94:	2a07      	cmp	r2, #7
 8002a96:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002a9a:	e9c1 4900 	strd	r4, r9, [r1]
 8002a9e:	ddf2      	ble.n	8002a86 <_vfprintf_r+0x426>
 8002aa0:	aa2a      	add	r2, sp, #168	; 0xa8
 8002aa2:	4631      	mov	r1, r6
 8002aa4:	9803      	ldr	r0, [sp, #12]
 8002aa6:	f004 f909 	bl	8006cbc <__sprint_r>
 8002aaa:	2800      	cmp	r0, #0
 8002aac:	f040 83d9 	bne.w	8003262 <_vfprintf_r+0xc02>
 8002ab0:	3d10      	subs	r5, #16
 8002ab2:	2d10      	cmp	r5, #16
 8002ab4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002ab8:	a92d      	add	r1, sp, #180	; 0xb4
 8002aba:	dce9      	bgt.n	8002a90 <_vfprintf_r+0x430>
 8002abc:	463e      	mov	r6, r7
 8002abe:	4623      	mov	r3, r4
 8002ac0:	465f      	mov	r7, fp
 8002ac2:	4604      	mov	r4, r0
 8002ac4:	468b      	mov	fp, r1
 8002ac6:	3201      	adds	r2, #1
 8002ac8:	442c      	add	r4, r5
 8002aca:	2a07      	cmp	r2, #7
 8002acc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002ad0:	e9cb 3500 	strd	r3, r5, [fp]
 8002ad4:	f300 83ef 	bgt.w	80032b6 <_vfprintf_r+0xc56>
 8002ad8:	f10b 0b08 	add.w	fp, fp, #8
 8002adc:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002ae0:	f040 8280 	bne.w	8002fe4 <_vfprintf_r+0x984>
 8002ae4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ae6:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002ae8:	f8cb 7000 	str.w	r7, [fp]
 8002aec:	3301      	adds	r3, #1
 8002aee:	4414      	add	r4, r2
 8002af0:	2b07      	cmp	r3, #7
 8002af2:	942c      	str	r4, [sp, #176]	; 0xb0
 8002af4:	f8cb 2004 	str.w	r2, [fp, #4]
 8002af8:	932b      	str	r3, [sp, #172]	; 0xac
 8002afa:	f300 8392 	bgt.w	8003222 <_vfprintf_r+0xbc2>
 8002afe:	f10b 0b08 	add.w	fp, fp, #8
 8002b02:	f018 0f04 	tst.w	r8, #4
 8002b06:	d03b      	beq.n	8002b80 <_vfprintf_r+0x520>
 8002b08:	9b06      	ldr	r3, [sp, #24]
 8002b0a:	9a04      	ldr	r2, [sp, #16]
 8002b0c:	1a9d      	subs	r5, r3, r2
 8002b0e:	2d00      	cmp	r5, #0
 8002b10:	dd36      	ble.n	8002b80 <_vfprintf_r+0x520>
 8002b12:	2d10      	cmp	r5, #16
 8002b14:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002b16:	dd21      	ble.n	8002b5c <_vfprintf_r+0x4fc>
 8002b18:	2610      	movs	r6, #16
 8002b1a:	9f03      	ldr	r7, [sp, #12]
 8002b1c:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002b20:	e004      	b.n	8002b2c <_vfprintf_r+0x4cc>
 8002b22:	3d10      	subs	r5, #16
 8002b24:	2d10      	cmp	r5, #16
 8002b26:	f10b 0b08 	add.w	fp, fp, #8
 8002b2a:	dd17      	ble.n	8002b5c <_vfprintf_r+0x4fc>
 8002b2c:	3301      	adds	r3, #1
 8002b2e:	4a60      	ldr	r2, [pc, #384]	; (8002cb0 <_vfprintf_r+0x650>)
 8002b30:	3410      	adds	r4, #16
 8002b32:	2b07      	cmp	r3, #7
 8002b34:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002b38:	e9cb 2600 	strd	r2, r6, [fp]
 8002b3c:	ddf1      	ble.n	8002b22 <_vfprintf_r+0x4c2>
 8002b3e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b40:	4641      	mov	r1, r8
 8002b42:	4638      	mov	r0, r7
 8002b44:	f004 f8ba 	bl	8006cbc <__sprint_r>
 8002b48:	2800      	cmp	r0, #0
 8002b4a:	f040 856c 	bne.w	8003626 <_vfprintf_r+0xfc6>
 8002b4e:	3d10      	subs	r5, #16
 8002b50:	2d10      	cmp	r5, #16
 8002b52:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002b56:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002b5a:	dce7      	bgt.n	8002b2c <_vfprintf_r+0x4cc>
 8002b5c:	3301      	adds	r3, #1
 8002b5e:	4a54      	ldr	r2, [pc, #336]	; (8002cb0 <_vfprintf_r+0x650>)
 8002b60:	442c      	add	r4, r5
 8002b62:	2b07      	cmp	r3, #7
 8002b64:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002b68:	e9cb 2500 	strd	r2, r5, [fp]
 8002b6c:	dd08      	ble.n	8002b80 <_vfprintf_r+0x520>
 8002b6e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002b70:	9907      	ldr	r1, [sp, #28]
 8002b72:	9803      	ldr	r0, [sp, #12]
 8002b74:	f004 f8a2 	bl	8006cbc <__sprint_r>
 8002b78:	2800      	cmp	r0, #0
 8002b7a:	f040 82e9 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8002b7e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002b80:	9904      	ldr	r1, [sp, #16]
 8002b82:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002b86:	428a      	cmp	r2, r1
 8002b88:	bfac      	ite	ge
 8002b8a:	189b      	addge	r3, r3, r2
 8002b8c:	185b      	addlt	r3, r3, r1
 8002b8e:	9305      	str	r3, [sp, #20]
 8002b90:	2c00      	cmp	r4, #0
 8002b92:	f040 82d5 	bne.w	8003140 <_vfprintf_r+0xae0>
 8002b96:	2300      	movs	r3, #0
 8002b98:	932b      	str	r3, [sp, #172]	; 0xac
 8002b9a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002b9c:	b11b      	cbz	r3, 8002ba6 <_vfprintf_r+0x546>
 8002b9e:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002ba0:	9803      	ldr	r0, [sp, #12]
 8002ba2:	f002 fc9d 	bl	80054e0 <_free_r>
 8002ba6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002baa:	4657      	mov	r7, sl
 8002bac:	783b      	ldrb	r3, [r7, #0]
 8002bae:	2b00      	cmp	r3, #0
 8002bb0:	f47f ada7 	bne.w	8002702 <_vfprintf_r+0xa2>
 8002bb4:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002bb6:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002bba:	2b00      	cmp	r3, #0
 8002bbc:	f041 80e7 	bne.w	8003d8e <_vfprintf_r+0x172e>
 8002bc0:	2300      	movs	r3, #0
 8002bc2:	932b      	str	r3, [sp, #172]	; 0xac
 8002bc4:	e2cb      	b.n	800315e <_vfprintf_r+0xafe>
 8002bc6:	4643      	mov	r3, r8
 8002bc8:	069a      	lsls	r2, r3, #26
 8002bca:	f140 814e 	bpl.w	8002e6a <_vfprintf_r+0x80a>
 8002bce:	9c08      	ldr	r4, [sp, #32]
 8002bd0:	3407      	adds	r4, #7
 8002bd2:	f024 0207 	bic.w	r2, r4, #7
 8002bd6:	f102 0108 	add.w	r1, r2, #8
 8002bda:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002bde:	9108      	str	r1, [sp, #32]
 8002be0:	2201      	movs	r2, #1
 8002be2:	2100      	movs	r1, #0
 8002be4:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002be8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002bec:	a956      	add	r1, sp, #344	; 0x158
 8002bee:	9104      	str	r1, [sp, #16]
 8002bf0:	f47f aea2 	bne.w	8002938 <_vfprintf_r+0x2d8>
 8002bf4:	4698      	mov	r8, r3
 8002bf6:	2a01      	cmp	r2, #1
 8002bf8:	f000 8350 	beq.w	800329c <_vfprintf_r+0xc3c>
 8002bfc:	2a02      	cmp	r2, #2
 8002bfe:	f000 831b 	beq.w	8003238 <_vfprintf_r+0xbd8>
 8002c02:	a956      	add	r1, sp, #344	; 0x158
 8002c04:	e000      	b.n	8002c08 <_vfprintf_r+0x5a8>
 8002c06:	4639      	mov	r1, r7
 8002c08:	08e2      	lsrs	r2, r4, #3
 8002c0a:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002c0e:	08e8      	lsrs	r0, r5, #3
 8002c10:	f004 0307 	and.w	r3, r4, #7
 8002c14:	4605      	mov	r5, r0
 8002c16:	4614      	mov	r4, r2
 8002c18:	3330      	adds	r3, #48	; 0x30
 8002c1a:	ea54 0205 	orrs.w	r2, r4, r5
 8002c1e:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002c22:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002c26:	d1ee      	bne.n	8002c06 <_vfprintf_r+0x5a6>
 8002c28:	f018 0f01 	tst.w	r8, #1
 8002c2c:	f000 8314 	beq.w	8003258 <_vfprintf_r+0xbf8>
 8002c30:	2b30      	cmp	r3, #48	; 0x30
 8002c32:	f000 8311 	beq.w	8003258 <_vfprintf_r+0xbf8>
 8002c36:	9a04      	ldr	r2, [sp, #16]
 8002c38:	3902      	subs	r1, #2
 8002c3a:	2330      	movs	r3, #48	; 0x30
 8002c3c:	1a52      	subs	r2, r2, r1
 8002c3e:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002c42:	9209      	str	r2, [sp, #36]	; 0x24
 8002c44:	460f      	mov	r7, r1
 8002c46:	e68c      	b.n	8002962 <_vfprintf_r+0x302>
 8002c48:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002c4c:	2200      	movs	r2, #0
 8002c4e:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002c52:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002c56:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002c5a:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002c5e:	2b09      	cmp	r3, #9
 8002c60:	d9f5      	bls.n	8002c4e <_vfprintf_r+0x5ee>
 8002c62:	9206      	str	r2, [sp, #24]
 8002c64:	e57c      	b.n	8002760 <_vfprintf_r+0x100>
 8002c66:	4b14      	ldr	r3, [pc, #80]	; (8002cb8 <_vfprintf_r+0x658>)
 8002c68:	9317      	str	r3, [sp, #92]	; 0x5c
 8002c6a:	f018 0f20 	tst.w	r8, #32
 8002c6e:	f000 8114 	beq.w	8002e9a <_vfprintf_r+0x83a>
 8002c72:	9c08      	ldr	r4, [sp, #32]
 8002c74:	3407      	adds	r4, #7
 8002c76:	f024 0307 	bic.w	r3, r4, #7
 8002c7a:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002c7e:	f103 0208 	add.w	r2, r3, #8
 8002c82:	9208      	str	r2, [sp, #32]
 8002c84:	f018 0f01 	tst.w	r8, #1
 8002c88:	d009      	beq.n	8002c9e <_vfprintf_r+0x63e>
 8002c8a:	ea54 0305 	orrs.w	r3, r4, r5
 8002c8e:	d006      	beq.n	8002c9e <_vfprintf_r+0x63e>
 8002c90:	2330      	movs	r3, #48	; 0x30
 8002c92:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002c96:	f048 0802 	orr.w	r8, r8, #2
 8002c9a:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002c9e:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002ca2:	2202      	movs	r2, #2
 8002ca4:	e79d      	b.n	8002be2 <_vfprintf_r+0x582>
 8002ca6:	f048 0801 	orr.w	r8, r8, #1
 8002caa:	f89a 6000 	ldrb.w	r6, [sl]
 8002cae:	e555      	b.n	800275c <_vfprintf_r+0xfc>
 8002cb0:	080074b8 	.word	0x080074b8
 8002cb4:	080074c8 	.word	0x080074c8
 8002cb8:	08007484 	.word	0x08007484
 8002cbc:	9e03      	ldr	r6, [sp, #12]
 8002cbe:	4630      	mov	r0, r6
 8002cc0:	f002 feaa 	bl	8005a18 <_localeconv_r>
 8002cc4:	6843      	ldr	r3, [r0, #4]
 8002cc6:	9318      	str	r3, [sp, #96]	; 0x60
 8002cc8:	4618      	mov	r0, r3
 8002cca:	f7fd fcb9 	bl	8000640 <strlen>
 8002cce:	901b      	str	r0, [sp, #108]	; 0x6c
 8002cd0:	4604      	mov	r4, r0
 8002cd2:	4630      	mov	r0, r6
 8002cd4:	f002 fea0 	bl	8005a18 <_localeconv_r>
 8002cd8:	6883      	ldr	r3, [r0, #8]
 8002cda:	931a      	str	r3, [sp, #104]	; 0x68
 8002cdc:	2c00      	cmp	r4, #0
 8002cde:	f43f adb8 	beq.w	8002852 <_vfprintf_r+0x1f2>
 8002ce2:	f89a 6000 	ldrb.w	r6, [sl]
 8002ce6:	2b00      	cmp	r3, #0
 8002ce8:	f43f ad38 	beq.w	800275c <_vfprintf_r+0xfc>
 8002cec:	781b      	ldrb	r3, [r3, #0]
 8002cee:	2b00      	cmp	r3, #0
 8002cf0:	f43f ad34 	beq.w	800275c <_vfprintf_r+0xfc>
 8002cf4:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002cf8:	e530      	b.n	800275c <_vfprintf_r+0xfc>
 8002cfa:	9b08      	ldr	r3, [sp, #32]
 8002cfc:	f89a 6000 	ldrb.w	r6, [sl]
 8002d00:	681a      	ldr	r2, [r3, #0]
 8002d02:	9206      	str	r2, [sp, #24]
 8002d04:	2a00      	cmp	r2, #0
 8002d06:	f103 0304 	add.w	r3, r3, #4
 8002d0a:	f2c0 8697 	blt.w	8003a3c <_vfprintf_r+0x13dc>
 8002d0e:	9308      	str	r3, [sp, #32]
 8002d10:	e524      	b.n	800275c <_vfprintf_r+0xfc>
 8002d12:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002d16:	f89a 6000 	ldrb.w	r6, [sl]
 8002d1a:	e51f      	b.n	800275c <_vfprintf_r+0xfc>
 8002d1c:	f89a 6000 	ldrb.w	r6, [sl]
 8002d20:	f048 0804 	orr.w	r8, r8, #4
 8002d24:	e51a      	b.n	800275c <_vfprintf_r+0xfc>
 8002d26:	f89a 6000 	ldrb.w	r6, [sl]
 8002d2a:	2e2a      	cmp	r6, #42	; 0x2a
 8002d2c:	f10a 0201 	add.w	r2, sl, #1
 8002d30:	f001 81b0 	beq.w	8004094 <_vfprintf_r+0x1a34>
 8002d34:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d38:	2b09      	cmp	r3, #9
 8002d3a:	4692      	mov	sl, r2
 8002d3c:	f04f 0900 	mov.w	r9, #0
 8002d40:	f63f ad0e 	bhi.w	8002760 <_vfprintf_r+0x100>
 8002d44:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002d48:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002d4c:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002d50:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002d54:	2b09      	cmp	r3, #9
 8002d56:	d9f5      	bls.n	8002d44 <_vfprintf_r+0x6e4>
 8002d58:	e502      	b.n	8002760 <_vfprintf_r+0x100>
 8002d5a:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002d5e:	f89a 6000 	ldrb.w	r6, [sl]
 8002d62:	e4fb      	b.n	800275c <_vfprintf_r+0xfc>
 8002d64:	9c08      	ldr	r4, [sp, #32]
 8002d66:	3407      	adds	r4, #7
 8002d68:	f024 0407 	bic.w	r4, r4, #7
 8002d6c:	ed94 7b00 	vldr	d7, [r4]
 8002d70:	ec52 1b17 	vmov	r1, r2, d7
 8002d74:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002d78:	931d      	str	r3, [sp, #116]	; 0x74
 8002d7a:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002d7e:	3408      	adds	r4, #8
 8002d80:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002d84:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002d88:	4bba      	ldr	r3, [pc, #744]	; (8003074 <_vfprintf_r+0xa14>)
 8002d8a:	9408      	str	r4, [sp, #32]
 8002d8c:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002d90:	f7fe f96c 	bl	800106c <__aeabi_dcmpun>
 8002d94:	2800      	cmp	r0, #0
 8002d96:	f040 846f 	bne.w	8003678 <_vfprintf_r+0x1018>
 8002d9a:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002d9e:	4bb5      	ldr	r3, [pc, #724]	; (8003074 <_vfprintf_r+0xa14>)
 8002da0:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002da4:	f7fe f944 	bl	8001030 <__aeabi_dcmple>
 8002da8:	2800      	cmp	r0, #0
 8002daa:	f040 8465 	bne.w	8003678 <_vfprintf_r+0x1018>
 8002dae:	2200      	movs	r2, #0
 8002db0:	2300      	movs	r3, #0
 8002db2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002db6:	f7fe f931 	bl	800101c <__aeabi_dcmplt>
 8002dba:	2800      	cmp	r0, #0
 8002dbc:	f040 855b 	bne.w	8003876 <_vfprintf_r+0x1216>
 8002dc0:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002dc4:	4fac      	ldr	r7, [pc, #688]	; (8003078 <_vfprintf_r+0xa18>)
 8002dc6:	4bad      	ldr	r3, [pc, #692]	; (800307c <_vfprintf_r+0xa1c>)
 8002dc8:	2000      	movs	r0, #0
 8002dca:	2103      	movs	r1, #3
 8002dcc:	9104      	str	r1, [sp, #16]
 8002dce:	900a      	str	r0, [sp, #40]	; 0x28
 8002dd0:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002dd4:	2e47      	cmp	r6, #71	; 0x47
 8002dd6:	bfd8      	it	le
 8002dd8:	461f      	movle	r7, r3
 8002dda:	9109      	str	r1, [sp, #36]	; 0x24
 8002ddc:	4681      	mov	r9, r0
 8002dde:	900f      	str	r0, [sp, #60]	; 0x3c
 8002de0:	9014      	str	r0, [sp, #80]	; 0x50
 8002de2:	9011      	str	r0, [sp, #68]	; 0x44
 8002de4:	e5c9      	b.n	800297a <_vfprintf_r+0x31a>
 8002de6:	9808      	ldr	r0, [sp, #32]
 8002de8:	2300      	movs	r3, #0
 8002dea:	6801      	ldr	r1, [r0, #0]
 8002dec:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002df0:	461a      	mov	r2, r3
 8002df2:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002df6:	2301      	movs	r3, #1
 8002df8:	1d01      	adds	r1, r0, #4
 8002dfa:	9304      	str	r3, [sp, #16]
 8002dfc:	920a      	str	r2, [sp, #40]	; 0x28
 8002dfe:	4691      	mov	r9, r2
 8002e00:	920f      	str	r2, [sp, #60]	; 0x3c
 8002e02:	9214      	str	r2, [sp, #80]	; 0x50
 8002e04:	9211      	str	r2, [sp, #68]	; 0x44
 8002e06:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002e0a:	af3d      	add	r7, sp, #244	; 0xf4
 8002e0c:	e5b9      	b.n	8002982 <_vfprintf_r+0x322>
 8002e0e:	9b08      	ldr	r3, [sp, #32]
 8002e10:	681f      	ldr	r7, [r3, #0]
 8002e12:	2500      	movs	r5, #0
 8002e14:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002e18:	1d1c      	adds	r4, r3, #4
 8002e1a:	2f00      	cmp	r7, #0
 8002e1c:	f000 8639 	beq.w	8003a92 <_vfprintf_r+0x1432>
 8002e20:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002e24:	f000 8711 	beq.w	8003c4a <_vfprintf_r+0x15ea>
 8002e28:	464a      	mov	r2, r9
 8002e2a:	4629      	mov	r1, r5
 8002e2c:	4638      	mov	r0, r7
 8002e2e:	f7fd fc77 	bl	8000720 <memchr>
 8002e32:	900a      	str	r0, [sp, #40]	; 0x28
 8002e34:	2800      	cmp	r0, #0
 8002e36:	f000 85e7 	beq.w	8003a08 <_vfprintf_r+0x13a8>
 8002e3a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002e3c:	1bdb      	subs	r3, r3, r7
 8002e3e:	9309      	str	r3, [sp, #36]	; 0x24
 8002e40:	46a9      	mov	r9, r5
 8002e42:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8002e46:	9408      	str	r4, [sp, #32]
 8002e48:	9304      	str	r3, [sp, #16]
 8002e4a:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8002e4e:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 8002e52:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8002e56:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8002e5a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002e5e:	e58c      	b.n	800297a <_vfprintf_r+0x31a>
 8002e60:	f048 0310 	orr.w	r3, r8, #16
 8002e64:	069a      	lsls	r2, r3, #26
 8002e66:	f53f aeb2 	bmi.w	8002bce <_vfprintf_r+0x56e>
 8002e6a:	9a08      	ldr	r2, [sp, #32]
 8002e6c:	06df      	lsls	r7, r3, #27
 8002e6e:	f102 0104 	add.w	r1, r2, #4
 8002e72:	f100 837e 	bmi.w	8003572 <_vfprintf_r+0xf12>
 8002e76:	065d      	lsls	r5, r3, #25
 8002e78:	9a08      	ldr	r2, [sp, #32]
 8002e7a:	f100 84e4 	bmi.w	8003846 <_vfprintf_r+0x11e6>
 8002e7e:	059c      	lsls	r4, r3, #22
 8002e80:	f140 8377 	bpl.w	8003572 <_vfprintf_r+0xf12>
 8002e84:	7814      	ldrb	r4, [r2, #0]
 8002e86:	9108      	str	r1, [sp, #32]
 8002e88:	2500      	movs	r5, #0
 8002e8a:	2201      	movs	r2, #1
 8002e8c:	e6a9      	b.n	8002be2 <_vfprintf_r+0x582>
 8002e8e:	4b7c      	ldr	r3, [pc, #496]	; (8003080 <_vfprintf_r+0xa20>)
 8002e90:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e92:	f018 0f20 	tst.w	r8, #32
 8002e96:	f47f aeec 	bne.w	8002c72 <_vfprintf_r+0x612>
 8002e9a:	9a08      	ldr	r2, [sp, #32]
 8002e9c:	f018 0f10 	tst.w	r8, #16
 8002ea0:	f102 0304 	add.w	r3, r2, #4
 8002ea4:	f040 8354 	bne.w	8003550 <_vfprintf_r+0xef0>
 8002ea8:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002eac:	9a08      	ldr	r2, [sp, #32]
 8002eae:	f040 84d0 	bne.w	8003852 <_vfprintf_r+0x11f2>
 8002eb2:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002eb6:	f000 834b 	beq.w	8003550 <_vfprintf_r+0xef0>
 8002eba:	7814      	ldrb	r4, [r2, #0]
 8002ebc:	9308      	str	r3, [sp, #32]
 8002ebe:	2500      	movs	r5, #0
 8002ec0:	e6e0      	b.n	8002c84 <_vfprintf_r+0x624>
 8002ec2:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 8002ec6:	f89a 6000 	ldrb.w	r6, [sl]
 8002eca:	2b00      	cmp	r3, #0
 8002ecc:	f47f ac46 	bne.w	800275c <_vfprintf_r+0xfc>
 8002ed0:	2320      	movs	r3, #32
 8002ed2:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002ed6:	e441      	b.n	800275c <_vfprintf_r+0xfc>
 8002ed8:	f89a 6000 	ldrb.w	r6, [sl]
 8002edc:	2e6c      	cmp	r6, #108	; 0x6c
 8002ede:	bf03      	ittte	eq
 8002ee0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002ee4:	f048 0820 	orreq.w	r8, r8, #32
 8002ee8:	f10a 0a01 	addeq.w	sl, sl, #1
 8002eec:	f048 0810 	orrne.w	r8, r8, #16
 8002ef0:	e434      	b.n	800275c <_vfprintf_r+0xfc>
 8002ef2:	9a08      	ldr	r2, [sp, #32]
 8002ef4:	f018 0f20 	tst.w	r8, #32
 8002ef8:	f852 3b04 	ldr.w	r3, [r2], #4
 8002efc:	9208      	str	r2, [sp, #32]
 8002efe:	f000 83a1 	beq.w	8003644 <_vfprintf_r+0xfe4>
 8002f02:	9a05      	ldr	r2, [sp, #20]
 8002f04:	4610      	mov	r0, r2
 8002f06:	17d1      	asrs	r1, r2, #31
 8002f08:	e9c3 0100 	strd	r0, r1, [r3]
 8002f0c:	4657      	mov	r7, sl
 8002f0e:	e64d      	b.n	8002bac <_vfprintf_r+0x54c>
 8002f10:	f89a 6000 	ldrb.w	r6, [sl]
 8002f14:	2e68      	cmp	r6, #104	; 0x68
 8002f16:	bf03      	ittte	eq
 8002f18:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 8002f1c:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 8002f20:	f10a 0a01 	addeq.w	sl, sl, #1
 8002f24:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 8002f28:	e418      	b.n	800275c <_vfprintf_r+0xfc>
 8002f2a:	9908      	ldr	r1, [sp, #32]
 8002f2c:	4b55      	ldr	r3, [pc, #340]	; (8003084 <_vfprintf_r+0xa24>)
 8002f2e:	680c      	ldr	r4, [r1, #0]
 8002f30:	9317      	str	r3, [sp, #92]	; 0x5c
 8002f32:	f647 0230 	movw	r2, #30768	; 0x7830
 8002f36:	3104      	adds	r1, #4
 8002f38:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8002f3c:	f048 0302 	orr.w	r3, r8, #2
 8002f40:	9108      	str	r1, [sp, #32]
 8002f42:	2500      	movs	r5, #0
 8002f44:	2202      	movs	r2, #2
 8002f46:	2678      	movs	r6, #120	; 0x78
 8002f48:	e64b      	b.n	8002be2 <_vfprintf_r+0x582>
 8002f4a:	f048 0808 	orr.w	r8, r8, #8
 8002f4e:	f89a 6000 	ldrb.w	r6, [sl]
 8002f52:	e403      	b.n	800275c <_vfprintf_r+0xfc>
 8002f54:	f048 0310 	orr.w	r3, r8, #16
 8002f58:	069f      	lsls	r7, r3, #26
 8002f5a:	f53f acd1 	bmi.w	8002900 <_vfprintf_r+0x2a0>
 8002f5e:	9908      	ldr	r1, [sp, #32]
 8002f60:	06dd      	lsls	r5, r3, #27
 8002f62:	f101 0204 	add.w	r2, r1, #4
 8002f66:	f100 82fd 	bmi.w	8003564 <_vfprintf_r+0xf04>
 8002f6a:	065c      	lsls	r4, r3, #25
 8002f6c:	9908      	ldr	r1, [sp, #32]
 8002f6e:	f100 8475 	bmi.w	800385c <_vfprintf_r+0x11fc>
 8002f72:	0598      	lsls	r0, r3, #22
 8002f74:	f140 82f6 	bpl.w	8003564 <_vfprintf_r+0xf04>
 8002f78:	f991 4000 	ldrsb.w	r4, [r1]
 8002f7c:	9208      	str	r2, [sp, #32]
 8002f7e:	17e5      	asrs	r5, r4, #31
 8002f80:	4620      	mov	r0, r4
 8002f82:	4629      	mov	r1, r5
 8002f84:	e4c7      	b.n	8002916 <_vfprintf_r+0x2b6>
 8002f86:	9a08      	ldr	r2, [sp, #32]
 8002f88:	f018 0f10 	tst.w	r8, #16
 8002f8c:	f102 0304 	add.w	r3, r2, #4
 8002f90:	f040 82e3 	bne.w	800355a <_vfprintf_r+0xefa>
 8002f94:	f018 0f40 	tst.w	r8, #64	; 0x40
 8002f98:	9a08      	ldr	r2, [sp, #32]
 8002f9a:	f040 8467 	bne.w	800386c <_vfprintf_r+0x120c>
 8002f9e:	f418 7f00 	tst.w	r8, #512	; 0x200
 8002fa2:	f000 82da 	beq.w	800355a <_vfprintf_r+0xefa>
 8002fa6:	7814      	ldrb	r4, [r2, #0]
 8002fa8:	9308      	str	r3, [sp, #32]
 8002faa:	2500      	movs	r5, #0
 8002fac:	e488      	b.n	80028c0 <_vfprintf_r+0x260>
 8002fae:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002fb2:	f002 fd45 	bl	8005a40 <__retarget_lock_release_recursive>
 8002fb6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002fba:	9305      	str	r3, [sp, #20]
 8002fbc:	e443      	b.n	8002846 <_vfprintf_r+0x1e6>
 8002fbe:	2e00      	cmp	r6, #0
 8002fc0:	f43f adf8 	beq.w	8002bb4 <_vfprintf_r+0x554>
 8002fc4:	2300      	movs	r3, #0
 8002fc6:	2101      	movs	r1, #1
 8002fc8:	461a      	mov	r2, r3
 8002fca:	9104      	str	r1, [sp, #16]
 8002fcc:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8002fd0:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002fd4:	930a      	str	r3, [sp, #40]	; 0x28
 8002fd6:	4699      	mov	r9, r3
 8002fd8:	930f      	str	r3, [sp, #60]	; 0x3c
 8002fda:	9314      	str	r3, [sp, #80]	; 0x50
 8002fdc:	9311      	str	r3, [sp, #68]	; 0x44
 8002fde:	9109      	str	r1, [sp, #36]	; 0x24
 8002fe0:	af3d      	add	r7, sp, #244	; 0xf4
 8002fe2:	e4ce      	b.n	8002982 <_vfprintf_r+0x322>
 8002fe4:	2e65      	cmp	r6, #101	; 0x65
 8002fe6:	f340 80ca 	ble.w	800317e <_vfprintf_r+0xb1e>
 8002fea:	2200      	movs	r2, #0
 8002fec:	2300      	movs	r3, #0
 8002fee:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002ff2:	f7fe f809 	bl	8001008 <__aeabi_dcmpeq>
 8002ff6:	2800      	cmp	r0, #0
 8002ff8:	f000 8169 	beq.w	80032ce <_vfprintf_r+0xc6e>
 8002ffc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002ffe:	4a22      	ldr	r2, [pc, #136]	; (8003088 <_vfprintf_r+0xa28>)
 8003000:	f8cb 2000 	str.w	r2, [fp]
 8003004:	3301      	adds	r3, #1
 8003006:	3401      	adds	r4, #1
 8003008:	2201      	movs	r2, #1
 800300a:	2b07      	cmp	r3, #7
 800300c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003010:	f8cb 2004 	str.w	r2, [fp, #4]
 8003014:	f300 8406 	bgt.w	8003824 <_vfprintf_r+0x11c4>
 8003018:	f10b 0b08 	add.w	fp, fp, #8
 800301c:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800301e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003020:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003022:	4293      	cmp	r3, r2
 8003024:	db03      	blt.n	800302e <_vfprintf_r+0x9ce>
 8003026:	f018 0f01 	tst.w	r8, #1
 800302a:	f43f ad6a 	beq.w	8002b02 <_vfprintf_r+0x4a2>
 800302e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003030:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003032:	f8cb 2000 	str.w	r2, [fp]
 8003036:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003038:	f8cb 2004 	str.w	r2, [fp, #4]
 800303c:	3301      	adds	r3, #1
 800303e:	4414      	add	r4, r2
 8003040:	2b07      	cmp	r3, #7
 8003042:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8003046:	f300 8517 	bgt.w	8003a78 <_vfprintf_r+0x1418>
 800304a:	f10b 0b08 	add.w	fp, fp, #8
 800304e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003050:	1e5d      	subs	r5, r3, #1
 8003052:	2d00      	cmp	r5, #0
 8003054:	f77f ad55 	ble.w	8002b02 <_vfprintf_r+0x4a2>
 8003058:	2d10      	cmp	r5, #16
 800305a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800305c:	4b0b      	ldr	r3, [pc, #44]	; (800308c <_vfprintf_r+0xa2c>)
 800305e:	f340 82e7 	ble.w	8003630 <_vfprintf_r+0xfd0>
 8003062:	4619      	mov	r1, r3
 8003064:	2610      	movs	r6, #16
 8003066:	4623      	mov	r3, r4
 8003068:	9f03      	ldr	r7, [sp, #12]
 800306a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800306e:	460c      	mov	r4, r1
 8003070:	e014      	b.n	800309c <_vfprintf_r+0xa3c>
 8003072:	bf00      	nop
 8003074:	7fefffff 	.word	0x7fefffff
 8003078:	08007478 	.word	0x08007478
 800307c:	08007474 	.word	0x08007474
 8003080:	08007498 	.word	0x08007498
 8003084:	08007484 	.word	0x08007484
 8003088:	080074b4 	.word	0x080074b4
 800308c:	080074c8 	.word	0x080074c8
 8003090:	f10b 0b08 	add.w	fp, fp, #8
 8003094:	3d10      	subs	r5, #16
 8003096:	2d10      	cmp	r5, #16
 8003098:	f340 82c7 	ble.w	800362a <_vfprintf_r+0xfca>
 800309c:	3201      	adds	r2, #1
 800309e:	3310      	adds	r3, #16
 80030a0:	2a07      	cmp	r2, #7
 80030a2:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80030a6:	e9cb 4600 	strd	r4, r6, [fp]
 80030aa:	ddf1      	ble.n	8003090 <_vfprintf_r+0xa30>
 80030ac:	aa2a      	add	r2, sp, #168	; 0xa8
 80030ae:	4649      	mov	r1, r9
 80030b0:	4638      	mov	r0, r7
 80030b2:	f003 fe03 	bl	8006cbc <__sprint_r>
 80030b6:	2800      	cmp	r0, #0
 80030b8:	d14c      	bne.n	8003154 <_vfprintf_r+0xaf4>
 80030ba:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80030be:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80030c2:	e7e7      	b.n	8003094 <_vfprintf_r+0xa34>
 80030c4:	9b06      	ldr	r3, [sp, #24]
 80030c6:	9a04      	ldr	r2, [sp, #16]
 80030c8:	1a9d      	subs	r5, r3, r2
 80030ca:	2d00      	cmp	r5, #0
 80030cc:	f77f acc9 	ble.w	8002a62 <_vfprintf_r+0x402>
 80030d0:	2d10      	cmp	r5, #16
 80030d2:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80030d4:	4bbc      	ldr	r3, [pc, #752]	; (80033c8 <_vfprintf_r+0xd68>)
 80030d6:	dd27      	ble.n	8003128 <_vfprintf_r+0xac8>
 80030d8:	4659      	mov	r1, fp
 80030da:	4620      	mov	r0, r4
 80030dc:	46bb      	mov	fp, r7
 80030de:	461c      	mov	r4, r3
 80030e0:	4637      	mov	r7, r6
 80030e2:	9e07      	ldr	r6, [sp, #28]
 80030e4:	e004      	b.n	80030f0 <_vfprintf_r+0xa90>
 80030e6:	3d10      	subs	r5, #16
 80030e8:	2d10      	cmp	r5, #16
 80030ea:	f101 0108 	add.w	r1, r1, #8
 80030ee:	dd16      	ble.n	800311e <_vfprintf_r+0xabe>
 80030f0:	3201      	adds	r2, #1
 80030f2:	3010      	adds	r0, #16
 80030f4:	2310      	movs	r3, #16
 80030f6:	2a07      	cmp	r2, #7
 80030f8:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80030fc:	600c      	str	r4, [r1, #0]
 80030fe:	604b      	str	r3, [r1, #4]
 8003100:	ddf1      	ble.n	80030e6 <_vfprintf_r+0xa86>
 8003102:	aa2a      	add	r2, sp, #168	; 0xa8
 8003104:	4631      	mov	r1, r6
 8003106:	9803      	ldr	r0, [sp, #12]
 8003108:	f003 fdd8 	bl	8006cbc <__sprint_r>
 800310c:	2800      	cmp	r0, #0
 800310e:	f040 80a8 	bne.w	8003262 <_vfprintf_r+0xc02>
 8003112:	3d10      	subs	r5, #16
 8003114:	2d10      	cmp	r5, #16
 8003116:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 800311a:	a92d      	add	r1, sp, #180	; 0xb4
 800311c:	dce8      	bgt.n	80030f0 <_vfprintf_r+0xa90>
 800311e:	463e      	mov	r6, r7
 8003120:	4623      	mov	r3, r4
 8003122:	465f      	mov	r7, fp
 8003124:	4604      	mov	r4, r0
 8003126:	468b      	mov	fp, r1
 8003128:	3201      	adds	r2, #1
 800312a:	442c      	add	r4, r5
 800312c:	2a07      	cmp	r2, #7
 800312e:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003132:	e9cb 3500 	strd	r3, r5, [fp]
 8003136:	f300 8292 	bgt.w	800365e <_vfprintf_r+0xffe>
 800313a:	f10b 0b08 	add.w	fp, fp, #8
 800313e:	e490      	b.n	8002a62 <_vfprintf_r+0x402>
 8003140:	aa2a      	add	r2, sp, #168	; 0xa8
 8003142:	9907      	ldr	r1, [sp, #28]
 8003144:	9803      	ldr	r0, [sp, #12]
 8003146:	f003 fdb9 	bl	8006cbc <__sprint_r>
 800314a:	2800      	cmp	r0, #0
 800314c:	f43f ad23 	beq.w	8002b96 <_vfprintf_r+0x536>
 8003150:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003154:	990a      	ldr	r1, [sp, #40]	; 0x28
 8003156:	b111      	cbz	r1, 800315e <_vfprintf_r+0xafe>
 8003158:	9803      	ldr	r0, [sp, #12]
 800315a:	f002 f9c1 	bl	80054e0 <_free_r>
 800315e:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8003162:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8003166:	07d0      	lsls	r0, r2, #31
 8003168:	d402      	bmi.n	8003170 <_vfprintf_r+0xb10>
 800316a:	0599      	lsls	r1, r3, #22
 800316c:	f140 81d0 	bpl.w	8003510 <_vfprintf_r+0xeb0>
 8003170:	065a      	lsls	r2, r3, #25
 8003172:	f53f ab65 	bmi.w	8002840 <_vfprintf_r+0x1e0>
 8003176:	9805      	ldr	r0, [sp, #20]
 8003178:	b057      	add	sp, #348	; 0x15c
 800317a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800317e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003180:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003182:	2a01      	cmp	r2, #1
 8003184:	f104 0401 	add.w	r4, r4, #1
 8003188:	f103 0501 	add.w	r5, r3, #1
 800318c:	f10b 0608 	add.w	r6, fp, #8
 8003190:	f340 811c 	ble.w	80033cc <_vfprintf_r+0xd6c>
 8003194:	2301      	movs	r3, #1
 8003196:	2d07      	cmp	r5, #7
 8003198:	f8cb 7000 	str.w	r7, [fp]
 800319c:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80031a0:	f8cb 3004 	str.w	r3, [fp, #4]
 80031a4:	f300 81bb 	bgt.w	800351e <_vfprintf_r+0xebe>
 80031a8:	9b15      	ldr	r3, [sp, #84]	; 0x54
 80031aa:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80031ac:	1c69      	adds	r1, r5, #1
 80031ae:	441c      	add	r4, r3
 80031b0:	2907      	cmp	r1, #7
 80031b2:	910b      	str	r1, [sp, #44]	; 0x2c
 80031b4:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 80031b8:	e9c6 2300 	strd	r2, r3, [r6]
 80031bc:	f300 81bb 	bgt.w	8003536 <_vfprintf_r+0xed6>
 80031c0:	3608      	adds	r6, #8
 80031c2:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80031c4:	1c53      	adds	r3, r2, #1
 80031c6:	461d      	mov	r5, r3
 80031c8:	9509      	str	r5, [sp, #36]	; 0x24
 80031ca:	9d10      	ldr	r5, [sp, #64]	; 0x40
 80031cc:	930e      	str	r3, [sp, #56]	; 0x38
 80031ce:	2200      	movs	r2, #0
 80031d0:	2300      	movs	r3, #0
 80031d2:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80031d6:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80031da:	f106 0b08 	add.w	fp, r6, #8
 80031de:	f7fd ff13 	bl	8001008 <__aeabi_dcmpeq>
 80031e2:	2800      	cmp	r0, #0
 80031e4:	f040 80c2 	bne.w	800336c <_vfprintf_r+0xd0c>
 80031e8:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80031ea:	f8c6 9004 	str.w	r9, [r6, #4]
 80031ee:	3701      	adds	r7, #1
 80031f0:	444c      	add	r4, r9
 80031f2:	2d07      	cmp	r5, #7
 80031f4:	6037      	str	r7, [r6, #0]
 80031f6:	942c      	str	r4, [sp, #176]	; 0xb0
 80031f8:	952b      	str	r5, [sp, #172]	; 0xac
 80031fa:	f300 80f9 	bgt.w	80033f0 <_vfprintf_r+0xd90>
 80031fe:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8003200:	f106 0310 	add.w	r3, r6, #16
 8003204:	3202      	adds	r2, #2
 8003206:	465e      	mov	r6, fp
 8003208:	9209      	str	r2, [sp, #36]	; 0x24
 800320a:	469b      	mov	fp, r3
 800320c:	9a19      	ldr	r2, [sp, #100]	; 0x64
 800320e:	6072      	str	r2, [r6, #4]
 8003210:	4414      	add	r4, r2
 8003212:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003214:	942c      	str	r4, [sp, #176]	; 0xb0
 8003216:	ab26      	add	r3, sp, #152	; 0x98
 8003218:	2a07      	cmp	r2, #7
 800321a:	922b      	str	r2, [sp, #172]	; 0xac
 800321c:	6033      	str	r3, [r6, #0]
 800321e:	f77f ac70 	ble.w	8002b02 <_vfprintf_r+0x4a2>
 8003222:	aa2a      	add	r2, sp, #168	; 0xa8
 8003224:	9907      	ldr	r1, [sp, #28]
 8003226:	9803      	ldr	r0, [sp, #12]
 8003228:	f003 fd48 	bl	8006cbc <__sprint_r>
 800322c:	2800      	cmp	r0, #0
 800322e:	d18f      	bne.n	8003150 <_vfprintf_r+0xaf0>
 8003230:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003232:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003236:	e464      	b.n	8002b02 <_vfprintf_r+0x4a2>
 8003238:	9817      	ldr	r0, [sp, #92]	; 0x5c
 800323a:	af56      	add	r7, sp, #344	; 0x158
 800323c:	0923      	lsrs	r3, r4, #4
 800323e:	f004 010f 	and.w	r1, r4, #15
 8003242:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 8003246:	092a      	lsrs	r2, r5, #4
 8003248:	461c      	mov	r4, r3
 800324a:	4615      	mov	r5, r2
 800324c:	5c43      	ldrb	r3, [r0, r1]
 800324e:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8003252:	ea54 0305 	orrs.w	r3, r4, r5
 8003256:	d1f1      	bne.n	800323c <_vfprintf_r+0xbdc>
 8003258:	9b04      	ldr	r3, [sp, #16]
 800325a:	1bdb      	subs	r3, r3, r7
 800325c:	9309      	str	r3, [sp, #36]	; 0x24
 800325e:	f7ff bb80 	b.w	8002962 <_vfprintf_r+0x302>
 8003262:	46b1      	mov	r9, r6
 8003264:	e776      	b.n	8003154 <_vfprintf_r+0xaf4>
 8003266:	aa2a      	add	r2, sp, #168	; 0xa8
 8003268:	9907      	ldr	r1, [sp, #28]
 800326a:	9803      	ldr	r0, [sp, #12]
 800326c:	f003 fd26 	bl	8006cbc <__sprint_r>
 8003270:	2800      	cmp	r0, #0
 8003272:	f47f af6d 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003276:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003278:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800327c:	f7ff bbdd 	b.w	8002a3a <_vfprintf_r+0x3da>
 8003280:	aa2a      	add	r2, sp, #168	; 0xa8
 8003282:	9907      	ldr	r1, [sp, #28]
 8003284:	9803      	ldr	r0, [sp, #12]
 8003286:	f003 fd19 	bl	8006cbc <__sprint_r>
 800328a:	2800      	cmp	r0, #0
 800328c:	f47f af60 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003290:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003292:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003296:	f7ff bbe0 	b.w	8002a5a <_vfprintf_r+0x3fa>
 800329a:	4698      	mov	r8, r3
 800329c:	2d00      	cmp	r5, #0
 800329e:	bf08      	it	eq
 80032a0:	2c0a      	cmpeq	r4, #10
 80032a2:	f080 8170 	bcs.w	8003586 <_vfprintf_r+0xf26>
 80032a6:	af56      	add	r7, sp, #344	; 0x158
 80032a8:	3430      	adds	r4, #48	; 0x30
 80032aa:	2301      	movs	r3, #1
 80032ac:	f807 4d01 	strb.w	r4, [r7, #-1]!
 80032b0:	9309      	str	r3, [sp, #36]	; 0x24
 80032b2:	f7ff bb56 	b.w	8002962 <_vfprintf_r+0x302>
 80032b6:	aa2a      	add	r2, sp, #168	; 0xa8
 80032b8:	9907      	ldr	r1, [sp, #28]
 80032ba:	9803      	ldr	r0, [sp, #12]
 80032bc:	f003 fcfe 	bl	8006cbc <__sprint_r>
 80032c0:	2800      	cmp	r0, #0
 80032c2:	f47f af45 	bne.w	8003150 <_vfprintf_r+0xaf0>
 80032c6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80032c8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80032cc:	e406      	b.n	8002adc <_vfprintf_r+0x47c>
 80032ce:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80032d0:	2b00      	cmp	r3, #0
 80032d2:	f340 8273 	ble.w	80037bc <_vfprintf_r+0x115c>
 80032d6:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80032da:	4293      	cmp	r3, r2
 80032dc:	bfa8      	it	ge
 80032de:	4613      	movge	r3, r2
 80032e0:	2b00      	cmp	r3, #0
 80032e2:	461d      	mov	r5, r3
 80032e4:	dd0d      	ble.n	8003302 <_vfprintf_r+0xca2>
 80032e6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80032e8:	f8cb 7000 	str.w	r7, [fp]
 80032ec:	3301      	adds	r3, #1
 80032ee:	442c      	add	r4, r5
 80032f0:	2b07      	cmp	r3, #7
 80032f2:	942c      	str	r4, [sp, #176]	; 0xb0
 80032f4:	f8cb 5004 	str.w	r5, [fp, #4]
 80032f8:	932b      	str	r3, [sp, #172]	; 0xac
 80032fa:	f300 82c1 	bgt.w	8003880 <_vfprintf_r+0x1220>
 80032fe:	f10b 0b08 	add.w	fp, fp, #8
 8003302:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003304:	2d00      	cmp	r5, #0
 8003306:	bfa8      	it	ge
 8003308:	1b5b      	subge	r3, r3, r5
 800330a:	2b00      	cmp	r3, #0
 800330c:	461d      	mov	r5, r3
 800330e:	f340 8099 	ble.w	8003444 <_vfprintf_r+0xde4>
 8003312:	2d10      	cmp	r5, #16
 8003314:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003316:	4b2c      	ldr	r3, [pc, #176]	; (80033c8 <_vfprintf_r+0xd68>)
 8003318:	f340 83db 	ble.w	8003ad2 <_vfprintf_r+0x1472>
 800331c:	4618      	mov	r0, r3
 800331e:	4621      	mov	r1, r4
 8003320:	465b      	mov	r3, fp
 8003322:	2610      	movs	r6, #16
 8003324:	46bb      	mov	fp, r7
 8003326:	f8dd 900c 	ldr.w	r9, [sp, #12]
 800332a:	9c07      	ldr	r4, [sp, #28]
 800332c:	4607      	mov	r7, r0
 800332e:	e004      	b.n	800333a <_vfprintf_r+0xcda>
 8003330:	3308      	adds	r3, #8
 8003332:	3d10      	subs	r5, #16
 8003334:	2d10      	cmp	r5, #16
 8003336:	f340 83c7 	ble.w	8003ac8 <_vfprintf_r+0x1468>
 800333a:	3201      	adds	r2, #1
 800333c:	3110      	adds	r1, #16
 800333e:	2a07      	cmp	r2, #7
 8003340:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 8003344:	e9c3 7600 	strd	r7, r6, [r3]
 8003348:	ddf2      	ble.n	8003330 <_vfprintf_r+0xcd0>
 800334a:	aa2a      	add	r2, sp, #168	; 0xa8
 800334c:	4621      	mov	r1, r4
 800334e:	4648      	mov	r0, r9
 8003350:	f003 fcb4 	bl	8006cbc <__sprint_r>
 8003354:	2800      	cmp	r0, #0
 8003356:	f040 84a5 	bne.w	8003ca4 <_vfprintf_r+0x1644>
 800335a:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 800335e:	ab2d      	add	r3, sp, #180	; 0xb4
 8003360:	e7e7      	b.n	8003332 <_vfprintf_r+0xcd2>
 8003362:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003366:	af56      	add	r7, sp, #344	; 0x158
 8003368:	f7ff bafb 	b.w	8002962 <_vfprintf_r+0x302>
 800336c:	f1b9 0f00 	cmp.w	r9, #0
 8003370:	f77f af4c 	ble.w	800320c <_vfprintf_r+0xbac>
 8003374:	f1b9 0f10 	cmp.w	r9, #16
 8003378:	4b13      	ldr	r3, [pc, #76]	; (80033c8 <_vfprintf_r+0xd68>)
 800337a:	f340 8659 	ble.w	8004030 <_vfprintf_r+0x19d0>
 800337e:	4619      	mov	r1, r3
 8003380:	4622      	mov	r2, r4
 8003382:	4633      	mov	r3, r6
 8003384:	2710      	movs	r7, #16
 8003386:	f8dd b00c 	ldr.w	fp, [sp, #12]
 800338a:	9c07      	ldr	r4, [sp, #28]
 800338c:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 800338e:	460e      	mov	r6, r1
 8003390:	e007      	b.n	80033a2 <_vfprintf_r+0xd42>
 8003392:	3308      	adds	r3, #8
 8003394:	f1a9 0910 	sub.w	r9, r9, #16
 8003398:	f1b9 0f10 	cmp.w	r9, #16
 800339c:	f340 8353 	ble.w	8003a46 <_vfprintf_r+0x13e6>
 80033a0:	3501      	adds	r5, #1
 80033a2:	3210      	adds	r2, #16
 80033a4:	2d07      	cmp	r5, #7
 80033a6:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 80033aa:	e9c3 6700 	strd	r6, r7, [r3]
 80033ae:	ddf0      	ble.n	8003392 <_vfprintf_r+0xd32>
 80033b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80033b2:	4621      	mov	r1, r4
 80033b4:	4658      	mov	r0, fp
 80033b6:	f003 fc81 	bl	8006cbc <__sprint_r>
 80033ba:	2800      	cmp	r0, #0
 80033bc:	f040 8472 	bne.w	8003ca4 <_vfprintf_r+0x1644>
 80033c0:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 80033c4:	ab2d      	add	r3, sp, #180	; 0xb4
 80033c6:	e7e5      	b.n	8003394 <_vfprintf_r+0xd34>
 80033c8:	080074c8 	.word	0x080074c8
 80033cc:	f018 0f01 	tst.w	r8, #1
 80033d0:	f47f aee0 	bne.w	8003194 <_vfprintf_r+0xb34>
 80033d4:	2201      	movs	r2, #1
 80033d6:	2d07      	cmp	r5, #7
 80033d8:	f8cb 7000 	str.w	r7, [fp]
 80033dc:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80033e0:	f8cb 2004 	str.w	r2, [fp, #4]
 80033e4:	dc04      	bgt.n	80033f0 <_vfprintf_r+0xd90>
 80033e6:	3302      	adds	r3, #2
 80033e8:	9309      	str	r3, [sp, #36]	; 0x24
 80033ea:	f10b 0b10 	add.w	fp, fp, #16
 80033ee:	e70d      	b.n	800320c <_vfprintf_r+0xbac>
 80033f0:	aa2a      	add	r2, sp, #168	; 0xa8
 80033f2:	9907      	ldr	r1, [sp, #28]
 80033f4:	9803      	ldr	r0, [sp, #12]
 80033f6:	f003 fc61 	bl	8006cbc <__sprint_r>
 80033fa:	2800      	cmp	r0, #0
 80033fc:	f47f aea8 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003400:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003404:	3301      	adds	r3, #1
 8003406:	9309      	str	r3, [sp, #36]	; 0x24
 8003408:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 800340c:	ae2d      	add	r6, sp, #180	; 0xb4
 800340e:	e6fd      	b.n	800320c <_vfprintf_r+0xbac>
 8003410:	aa2a      	add	r2, sp, #168	; 0xa8
 8003412:	9907      	ldr	r1, [sp, #28]
 8003414:	9803      	ldr	r0, [sp, #12]
 8003416:	f003 fc51 	bl	8006cbc <__sprint_r>
 800341a:	2800      	cmp	r0, #0
 800341c:	f47f ae98 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003420:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003424:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003426:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800342a:	f7ff baf6 	b.w	8002a1a <_vfprintf_r+0x3ba>
 800342e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003430:	9907      	ldr	r1, [sp, #28]
 8003432:	9803      	ldr	r0, [sp, #12]
 8003434:	f003 fc42 	bl	8006cbc <__sprint_r>
 8003438:	2800      	cmp	r0, #0
 800343a:	f47f ae89 	bne.w	8003150 <_vfprintf_r+0xaf0>
 800343e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003440:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003444:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003446:	f418 6f80 	tst.w	r8, #1024	; 0x400
 800344a:	443b      	add	r3, r7
 800344c:	4699      	mov	r9, r3
 800344e:	f040 8357 	bne.w	8003b00 <_vfprintf_r+0x14a0>
 8003452:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003454:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003456:	4293      	cmp	r3, r2
 8003458:	db49      	blt.n	80034ee <_vfprintf_r+0xe8e>
 800345a:	f018 0f01 	tst.w	r8, #1
 800345e:	d146      	bne.n	80034ee <_vfprintf_r+0xe8e>
 8003460:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003462:	18bd      	adds	r5, r7, r2
 8003464:	eba5 0509 	sub.w	r5, r5, r9
 8003468:	1ad3      	subs	r3, r2, r3
 800346a:	429d      	cmp	r5, r3
 800346c:	bfa8      	it	ge
 800346e:	461d      	movge	r5, r3
 8003470:	2d00      	cmp	r5, #0
 8003472:	dd0d      	ble.n	8003490 <_vfprintf_r+0xe30>
 8003474:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003476:	f8cb 9000 	str.w	r9, [fp]
 800347a:	3201      	adds	r2, #1
 800347c:	442c      	add	r4, r5
 800347e:	2a07      	cmp	r2, #7
 8003480:	942c      	str	r4, [sp, #176]	; 0xb0
 8003482:	f8cb 5004 	str.w	r5, [fp, #4]
 8003486:	922b      	str	r2, [sp, #172]	; 0xac
 8003488:	f300 8462 	bgt.w	8003d50 <_vfprintf_r+0x16f0>
 800348c:	f10b 0b08 	add.w	fp, fp, #8
 8003490:	2d00      	cmp	r5, #0
 8003492:	bfac      	ite	ge
 8003494:	1b5d      	subge	r5, r3, r5
 8003496:	461d      	movlt	r5, r3
 8003498:	2d00      	cmp	r5, #0
 800349a:	f77f ab32 	ble.w	8002b02 <_vfprintf_r+0x4a2>
 800349e:	2d10      	cmp	r5, #16
 80034a0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034a2:	4bc5      	ldr	r3, [pc, #788]	; (80037b8 <_vfprintf_r+0x1158>)
 80034a4:	f340 80c4 	ble.w	8003630 <_vfprintf_r+0xfd0>
 80034a8:	4619      	mov	r1, r3
 80034aa:	2610      	movs	r6, #16
 80034ac:	4623      	mov	r3, r4
 80034ae:	9f03      	ldr	r7, [sp, #12]
 80034b0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80034b4:	460c      	mov	r4, r1
 80034b6:	e005      	b.n	80034c4 <_vfprintf_r+0xe64>
 80034b8:	f10b 0b08 	add.w	fp, fp, #8
 80034bc:	3d10      	subs	r5, #16
 80034be:	2d10      	cmp	r5, #16
 80034c0:	f340 80b3 	ble.w	800362a <_vfprintf_r+0xfca>
 80034c4:	3201      	adds	r2, #1
 80034c6:	3310      	adds	r3, #16
 80034c8:	2a07      	cmp	r2, #7
 80034ca:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80034ce:	e9cb 4600 	strd	r4, r6, [fp]
 80034d2:	ddf1      	ble.n	80034b8 <_vfprintf_r+0xe58>
 80034d4:	aa2a      	add	r2, sp, #168	; 0xa8
 80034d6:	4649      	mov	r1, r9
 80034d8:	4638      	mov	r0, r7
 80034da:	f003 fbef 	bl	8006cbc <__sprint_r>
 80034de:	2800      	cmp	r0, #0
 80034e0:	f47f ae38 	bne.w	8003154 <_vfprintf_r+0xaf4>
 80034e4:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80034e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80034ec:	e7e6      	b.n	80034bc <_vfprintf_r+0xe5c>
 80034ee:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034f0:	9916      	ldr	r1, [sp, #88]	; 0x58
 80034f2:	f8cb 1000 	str.w	r1, [fp]
 80034f6:	9915      	ldr	r1, [sp, #84]	; 0x54
 80034f8:	f8cb 1004 	str.w	r1, [fp, #4]
 80034fc:	3201      	adds	r2, #1
 80034fe:	440c      	add	r4, r1
 8003500:	2a07      	cmp	r2, #7
 8003502:	942c      	str	r4, [sp, #176]	; 0xb0
 8003504:	922b      	str	r2, [sp, #172]	; 0xac
 8003506:	f300 828c 	bgt.w	8003a22 <_vfprintf_r+0x13c2>
 800350a:	f10b 0b08 	add.w	fp, fp, #8
 800350e:	e7a7      	b.n	8003460 <_vfprintf_r+0xe00>
 8003510:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8003514:	f002 fa94 	bl	8005a40 <__retarget_lock_release_recursive>
 8003518:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800351c:	e628      	b.n	8003170 <_vfprintf_r+0xb10>
 800351e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003520:	9907      	ldr	r1, [sp, #28]
 8003522:	9803      	ldr	r0, [sp, #12]
 8003524:	f003 fbca 	bl	8006cbc <__sprint_r>
 8003528:	2800      	cmp	r0, #0
 800352a:	f47f ae11 	bne.w	8003150 <_vfprintf_r+0xaf0>
 800352e:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8003532:	ae2d      	add	r6, sp, #180	; 0xb4
 8003534:	e638      	b.n	80031a8 <_vfprintf_r+0xb48>
 8003536:	aa2a      	add	r2, sp, #168	; 0xa8
 8003538:	9907      	ldr	r1, [sp, #28]
 800353a:	9803      	ldr	r0, [sp, #12]
 800353c:	f003 fbbe 	bl	8006cbc <__sprint_r>
 8003540:	2800      	cmp	r0, #0
 8003542:	f47f ae05 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003546:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800354a:	ae2d      	add	r6, sp, #180	; 0xb4
 800354c:	930b      	str	r3, [sp, #44]	; 0x2c
 800354e:	e638      	b.n	80031c2 <_vfprintf_r+0xb62>
 8003550:	6814      	ldr	r4, [r2, #0]
 8003552:	9308      	str	r3, [sp, #32]
 8003554:	2500      	movs	r5, #0
 8003556:	f7ff bb95 	b.w	8002c84 <_vfprintf_r+0x624>
 800355a:	6814      	ldr	r4, [r2, #0]
 800355c:	9308      	str	r3, [sp, #32]
 800355e:	2500      	movs	r5, #0
 8003560:	f7ff b9ae 	b.w	80028c0 <_vfprintf_r+0x260>
 8003564:	680c      	ldr	r4, [r1, #0]
 8003566:	9208      	str	r2, [sp, #32]
 8003568:	17e5      	asrs	r5, r4, #31
 800356a:	4620      	mov	r0, r4
 800356c:	4629      	mov	r1, r5
 800356e:	f7ff b9d2 	b.w	8002916 <_vfprintf_r+0x2b6>
 8003572:	6814      	ldr	r4, [r2, #0]
 8003574:	9108      	str	r1, [sp, #32]
 8003576:	2201      	movs	r2, #1
 8003578:	2500      	movs	r5, #0
 800357a:	f7ff bb32 	b.w	8002be2 <_vfprintf_r+0x582>
 800357e:	2a01      	cmp	r2, #1
 8003580:	f47f ab3c 	bne.w	8002bfc <_vfprintf_r+0x59c>
 8003584:	e68f      	b.n	80032a6 <_vfprintf_r+0xc46>
 8003586:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 800358a:	2200      	movs	r2, #0
 800358c:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003590:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8003594:	af56      	add	r7, sp, #344	; 0x158
 8003596:	4692      	mov	sl, r2
 8003598:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 800359c:	461e      	mov	r6, r3
 800359e:	e00a      	b.n	80035b6 <_vfprintf_r+0xf56>
 80035a0:	2300      	movs	r3, #0
 80035a2:	4620      	mov	r0, r4
 80035a4:	4629      	mov	r1, r5
 80035a6:	220a      	movs	r2, #10
 80035a8:	f7fc fe2a 	bl	8000200 <__aeabi_uldivmod>
 80035ac:	4604      	mov	r4, r0
 80035ae:	460d      	mov	r5, r1
 80035b0:	ea54 0305 	orrs.w	r3, r4, r5
 80035b4:	d029      	beq.n	800360a <_vfprintf_r+0xfaa>
 80035b6:	220a      	movs	r2, #10
 80035b8:	2300      	movs	r3, #0
 80035ba:	4620      	mov	r0, r4
 80035bc:	4629      	mov	r1, r5
 80035be:	f7fc fe1f 	bl	8000200 <__aeabi_uldivmod>
 80035c2:	3230      	adds	r2, #48	; 0x30
 80035c4:	f807 2c01 	strb.w	r2, [r7, #-1]
 80035c8:	f10a 0a01 	add.w	sl, sl, #1
 80035cc:	3f01      	subs	r7, #1
 80035ce:	2e00      	cmp	r6, #0
 80035d0:	d0e6      	beq.n	80035a0 <_vfprintf_r+0xf40>
 80035d2:	f898 3000 	ldrb.w	r3, [r8]
 80035d6:	459a      	cmp	sl, r3
 80035d8:	d1e2      	bne.n	80035a0 <_vfprintf_r+0xf40>
 80035da:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80035de:	d0df      	beq.n	80035a0 <_vfprintf_r+0xf40>
 80035e0:	2d00      	cmp	r5, #0
 80035e2:	bf08      	it	eq
 80035e4:	2c0a      	cmpeq	r4, #10
 80035e6:	d3db      	bcc.n	80035a0 <_vfprintf_r+0xf40>
 80035e8:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80035ea:	9918      	ldr	r1, [sp, #96]	; 0x60
 80035ec:	1aff      	subs	r7, r7, r3
 80035ee:	461a      	mov	r2, r3
 80035f0:	4638      	mov	r0, r7
 80035f2:	f003 faf5 	bl	8006be0 <strncpy>
 80035f6:	f898 3001 	ldrb.w	r3, [r8, #1]
 80035fa:	2b00      	cmp	r3, #0
 80035fc:	f000 8496 	beq.w	8003f2c <_vfprintf_r+0x18cc>
 8003600:	f108 0801 	add.w	r8, r8, #1
 8003604:	f04f 0a00 	mov.w	sl, #0
 8003608:	e7ca      	b.n	80035a0 <_vfprintf_r+0xf40>
 800360a:	9b04      	ldr	r3, [sp, #16]
 800360c:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003610:	1bdb      	subs	r3, r3, r7
 8003612:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8003616:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8003618:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 800361c:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8003620:	9309      	str	r3, [sp, #36]	; 0x24
 8003622:	f7ff b99e 	b.w	8002962 <_vfprintf_r+0x302>
 8003626:	46c1      	mov	r9, r8
 8003628:	e594      	b.n	8003154 <_vfprintf_r+0xaf4>
 800362a:	4621      	mov	r1, r4
 800362c:	461c      	mov	r4, r3
 800362e:	460b      	mov	r3, r1
 8003630:	3201      	adds	r2, #1
 8003632:	442c      	add	r4, r5
 8003634:	2a07      	cmp	r2, #7
 8003636:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800363a:	e9cb 3500 	strd	r3, r5, [fp]
 800363e:	f77f aa5e 	ble.w	8002afe <_vfprintf_r+0x49e>
 8003642:	e5ee      	b.n	8003222 <_vfprintf_r+0xbc2>
 8003644:	f018 0f10 	tst.w	r8, #16
 8003648:	f040 80f8 	bne.w	800383c <_vfprintf_r+0x11dc>
 800364c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003650:	f000 8351 	beq.w	8003cf6 <_vfprintf_r+0x1696>
 8003654:	9a05      	ldr	r2, [sp, #20]
 8003656:	801a      	strh	r2, [r3, #0]
 8003658:	4657      	mov	r7, sl
 800365a:	f7ff baa7 	b.w	8002bac <_vfprintf_r+0x54c>
 800365e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003660:	9907      	ldr	r1, [sp, #28]
 8003662:	9803      	ldr	r0, [sp, #12]
 8003664:	f003 fb2a 	bl	8006cbc <__sprint_r>
 8003668:	2800      	cmp	r0, #0
 800366a:	f47f ad71 	bne.w	8003150 <_vfprintf_r+0xaf0>
 800366e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003670:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003674:	f7ff b9f5 	b.w	8002a62 <_vfprintf_r+0x402>
 8003678:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800367c:	4602      	mov	r2, r0
 800367e:	460b      	mov	r3, r1
 8003680:	f7fd fcf4 	bl	800106c <__aeabi_dcmpun>
 8003684:	2800      	cmp	r0, #0
 8003686:	f040 8491 	bne.w	8003fac <_vfprintf_r+0x194c>
 800368a:	2e61      	cmp	r6, #97	; 0x61
 800368c:	f000 8111 	beq.w	80038b2 <_vfprintf_r+0x1252>
 8003690:	2e41      	cmp	r6, #65	; 0x41
 8003692:	f000 8377 	beq.w	8003d84 <_vfprintf_r+0x1724>
 8003696:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 800369a:	f026 0220 	bic.w	r2, r6, #32
 800369e:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80036a2:	930e      	str	r3, [sp, #56]	; 0x38
 80036a4:	9204      	str	r2, [sp, #16]
 80036a6:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80036a8:	f000 842d 	beq.w	8003f06 <_vfprintf_r+0x18a6>
 80036ac:	2a47      	cmp	r2, #71	; 0x47
 80036ae:	f000 8424 	beq.w	8003efa <_vfprintf_r+0x189a>
 80036b2:	2b00      	cmp	r3, #0
 80036b4:	f2c0 82f9 	blt.w	8003caa <_vfprintf_r+0x164a>
 80036b8:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80036bc:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 80036c0:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80036c4:	2e66      	cmp	r6, #102	; 0x66
 80036c6:	f000 83eb 	beq.w	8003ea0 <_vfprintf_r+0x1840>
 80036ca:	2e46      	cmp	r6, #70	; 0x46
 80036cc:	f000 847e 	beq.w	8003fcc <_vfprintf_r+0x196c>
 80036d0:	9b04      	ldr	r3, [sp, #16]
 80036d2:	9803      	ldr	r0, [sp, #12]
 80036d4:	2b45      	cmp	r3, #69	; 0x45
 80036d6:	bf0c      	ite	eq
 80036d8:	f109 0501 	addeq.w	r5, r9, #1
 80036dc:	464d      	movne	r5, r9
 80036de:	aa28      	add	r2, sp, #160	; 0xa0
 80036e0:	ab25      	add	r3, sp, #148	; 0x94
 80036e2:	e9cd 3200 	strd	r3, r2, [sp]
 80036e6:	2102      	movs	r1, #2
 80036e8:	ab24      	add	r3, sp, #144	; 0x90
 80036ea:	462a      	mov	r2, r5
 80036ec:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80036f0:	f000 fe3e 	bl	8004370 <_dtoa_r>
 80036f4:	2e67      	cmp	r6, #103	; 0x67
 80036f6:	4607      	mov	r7, r0
 80036f8:	f040 849c 	bne.w	8004034 <_vfprintf_r+0x19d4>
 80036fc:	f018 0f01 	tst.w	r8, #1
 8003700:	f040 83f9 	bne.w	8003ef6 <_vfprintf_r+0x1896>
 8003704:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003706:	4640      	mov	r0, r8
 8003708:	1bdb      	subs	r3, r3, r7
 800370a:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 800370e:	9310      	str	r3, [sp, #64]	; 0x40
 8003710:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003712:	9311      	str	r3, [sp, #68]	; 0x44
 8003714:	9b04      	ldr	r3, [sp, #16]
 8003716:	2b47      	cmp	r3, #71	; 0x47
 8003718:	f000 81e7 	beq.w	8003aea <_vfprintf_r+0x148a>
 800371c:	9b04      	ldr	r3, [sp, #16]
 800371e:	2b46      	cmp	r3, #70	; 0x46
 8003720:	f000 8300 	beq.w	8003d24 <_vfprintf_r+0x16c4>
 8003724:	9904      	ldr	r1, [sp, #16]
 8003726:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003728:	b2f2      	uxtb	r2, r6
 800372a:	2941      	cmp	r1, #65	; 0x41
 800372c:	bf08      	it	eq
 800372e:	320f      	addeq	r2, #15
 8003730:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8003734:	bf06      	itte	eq
 8003736:	b2d2      	uxtbeq	r2, r2
 8003738:	2101      	moveq	r1, #1
 800373a:	2100      	movne	r1, #0
 800373c:	2b00      	cmp	r3, #0
 800373e:	9324      	str	r3, [sp, #144]	; 0x90
 8003740:	bfb8      	it	lt
 8003742:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8003744:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003748:	bfba      	itte	lt
 800374a:	f1c3 0301 	rsblt	r3, r3, #1
 800374e:	222d      	movlt	r2, #45	; 0x2d
 8003750:	222b      	movge	r2, #43	; 0x2b
 8003752:	2b09      	cmp	r3, #9
 8003754:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003758:	f300 83f9 	bgt.w	8003f4e <_vfprintf_r+0x18ee>
 800375c:	2900      	cmp	r1, #0
 800375e:	f040 8487 	bne.w	8004070 <_vfprintf_r+0x1a10>
 8003762:	2230      	movs	r2, #48	; 0x30
 8003764:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003768:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 800376c:	3330      	adds	r3, #48	; 0x30
 800376e:	7013      	strb	r3, [r2, #0]
 8003770:	1c53      	adds	r3, r2, #1
 8003772:	aa26      	add	r2, sp, #152	; 0x98
 8003774:	1a9b      	subs	r3, r3, r2
 8003776:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003778:	9319      	str	r3, [sp, #100]	; 0x64
 800377a:	2a01      	cmp	r2, #1
 800377c:	4413      	add	r3, r2
 800377e:	9309      	str	r3, [sp, #36]	; 0x24
 8003780:	f340 8442 	ble.w	8004008 <_vfprintf_r+0x19a8>
 8003784:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003786:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003788:	4413      	add	r3, r2
 800378a:	9309      	str	r3, [sp, #36]	; 0x24
 800378c:	2300      	movs	r3, #0
 800378e:	930f      	str	r3, [sp, #60]	; 0x3c
 8003790:	9314      	str	r3, [sp, #80]	; 0x50
 8003792:	9311      	str	r3, [sp, #68]	; 0x44
 8003794:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003796:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 800379a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800379e:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 80037a2:	9304      	str	r3, [sp, #16]
 80037a4:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80037a6:	2b00      	cmp	r3, #0
 80037a8:	f040 8275 	bne.w	8003c96 <_vfprintf_r+0x1636>
 80037ac:	4699      	mov	r9, r3
 80037ae:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80037b2:	f7ff b8e2 	b.w	800297a <_vfprintf_r+0x31a>
 80037b6:	bf00      	nop
 80037b8:	080074c8 	.word	0x080074c8
 80037bc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80037be:	49bd      	ldr	r1, [pc, #756]	; (8003ab4 <_vfprintf_r+0x1454>)
 80037c0:	f8cb 1000 	str.w	r1, [fp]
 80037c4:	3201      	adds	r2, #1
 80037c6:	3401      	adds	r4, #1
 80037c8:	2101      	movs	r1, #1
 80037ca:	2a07      	cmp	r2, #7
 80037cc:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80037d0:	f8cb 1004 	str.w	r1, [fp, #4]
 80037d4:	dc60      	bgt.n	8003898 <_vfprintf_r+0x1238>
 80037d6:	f10b 0b08 	add.w	fp, fp, #8
 80037da:	b92b      	cbnz	r3, 80037e8 <_vfprintf_r+0x1188>
 80037dc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80037de:	b91a      	cbnz	r2, 80037e8 <_vfprintf_r+0x1188>
 80037e0:	f018 0f01 	tst.w	r8, #1
 80037e4:	f43f a98d 	beq.w	8002b02 <_vfprintf_r+0x4a2>
 80037e8:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80037ea:	9916      	ldr	r1, [sp, #88]	; 0x58
 80037ec:	f8cb 1000 	str.w	r1, [fp]
 80037f0:	9915      	ldr	r1, [sp, #84]	; 0x54
 80037f2:	f8cb 1004 	str.w	r1, [fp, #4]
 80037f6:	3201      	adds	r2, #1
 80037f8:	440c      	add	r4, r1
 80037fa:	2a07      	cmp	r2, #7
 80037fc:	942c      	str	r4, [sp, #176]	; 0xb0
 80037fe:	922b      	str	r2, [sp, #172]	; 0xac
 8003800:	f300 8282 	bgt.w	8003d08 <_vfprintf_r+0x16a8>
 8003804:	f10b 0b08 	add.w	fp, fp, #8
 8003808:	2b00      	cmp	r3, #0
 800380a:	f2c0 82e7 	blt.w	8003ddc <_vfprintf_r+0x177c>
 800380e:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003810:	3201      	adds	r2, #1
 8003812:	441c      	add	r4, r3
 8003814:	2a07      	cmp	r2, #7
 8003816:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 800381a:	e9cb 7300 	strd	r7, r3, [fp]
 800381e:	f77f a96e 	ble.w	8002afe <_vfprintf_r+0x49e>
 8003822:	e4fe      	b.n	8003222 <_vfprintf_r+0xbc2>
 8003824:	aa2a      	add	r2, sp, #168	; 0xa8
 8003826:	9907      	ldr	r1, [sp, #28]
 8003828:	9803      	ldr	r0, [sp, #12]
 800382a:	f003 fa47 	bl	8006cbc <__sprint_r>
 800382e:	2800      	cmp	r0, #0
 8003830:	f47f ac8e 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003834:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003838:	f7ff bbf0 	b.w	800301c <_vfprintf_r+0x9bc>
 800383c:	9a05      	ldr	r2, [sp, #20]
 800383e:	601a      	str	r2, [r3, #0]
 8003840:	4657      	mov	r7, sl
 8003842:	f7ff b9b3 	b.w	8002bac <_vfprintf_r+0x54c>
 8003846:	8814      	ldrh	r4, [r2, #0]
 8003848:	9108      	str	r1, [sp, #32]
 800384a:	2500      	movs	r5, #0
 800384c:	2201      	movs	r2, #1
 800384e:	f7ff b9c8 	b.w	8002be2 <_vfprintf_r+0x582>
 8003852:	8814      	ldrh	r4, [r2, #0]
 8003854:	9308      	str	r3, [sp, #32]
 8003856:	2500      	movs	r5, #0
 8003858:	f7ff ba14 	b.w	8002c84 <_vfprintf_r+0x624>
 800385c:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003860:	9208      	str	r2, [sp, #32]
 8003862:	17e5      	asrs	r5, r4, #31
 8003864:	4620      	mov	r0, r4
 8003866:	4629      	mov	r1, r5
 8003868:	f7ff b855 	b.w	8002916 <_vfprintf_r+0x2b6>
 800386c:	8814      	ldrh	r4, [r2, #0]
 800386e:	9308      	str	r3, [sp, #32]
 8003870:	2500      	movs	r5, #0
 8003872:	f7ff b825 	b.w	80028c0 <_vfprintf_r+0x260>
 8003876:	222d      	movs	r2, #45	; 0x2d
 8003878:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 800387c:	f7ff baa2 	b.w	8002dc4 <_vfprintf_r+0x764>
 8003880:	aa2a      	add	r2, sp, #168	; 0xa8
 8003882:	9907      	ldr	r1, [sp, #28]
 8003884:	9803      	ldr	r0, [sp, #12]
 8003886:	f003 fa19 	bl	8006cbc <__sprint_r>
 800388a:	2800      	cmp	r0, #0
 800388c:	f47f ac60 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003890:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003892:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003896:	e534      	b.n	8003302 <_vfprintf_r+0xca2>
 8003898:	aa2a      	add	r2, sp, #168	; 0xa8
 800389a:	9907      	ldr	r1, [sp, #28]
 800389c:	9803      	ldr	r0, [sp, #12]
 800389e:	f003 fa0d 	bl	8006cbc <__sprint_r>
 80038a2:	2800      	cmp	r0, #0
 80038a4:	f47f ac54 	bne.w	8003150 <_vfprintf_r+0xaf0>
 80038a8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80038aa:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80038ac:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80038b0:	e793      	b.n	80037da <_vfprintf_r+0x117a>
 80038b2:	2330      	movs	r3, #48	; 0x30
 80038b4:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 80038b8:	2378      	movs	r3, #120	; 0x78
 80038ba:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 80038be:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 80038c2:	f048 0402 	orr.w	r4, r8, #2
 80038c6:	f300 82b0 	bgt.w	8003e2a <_vfprintf_r+0x17ca>
 80038ca:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80038ce:	930e      	str	r3, [sp, #56]	; 0x38
 80038d0:	f026 0320 	bic.w	r3, r6, #32
 80038d4:	9304      	str	r3, [sp, #16]
 80038d6:	2200      	movs	r2, #0
 80038d8:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80038da:	920a      	str	r2, [sp, #40]	; 0x28
 80038dc:	46a0      	mov	r8, r4
 80038de:	af3d      	add	r7, sp, #244	; 0xf4
 80038e0:	2b00      	cmp	r3, #0
 80038e2:	f2c0 81e3 	blt.w	8003cac <_vfprintf_r+0x164c>
 80038e6:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 80038ea:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 80038ee:	2300      	movs	r3, #0
 80038f0:	930b      	str	r3, [sp, #44]	; 0x2c
 80038f2:	2e61      	cmp	r6, #97	; 0x61
 80038f4:	f000 8255 	beq.w	8003da2 <_vfprintf_r+0x1742>
 80038f8:	2e41      	cmp	r6, #65	; 0x41
 80038fa:	f47f aee3 	bne.w	80036c4 <_vfprintf_r+0x1064>
 80038fe:	a824      	add	r0, sp, #144	; 0x90
 8003900:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003904:	f003 f8e2 	bl	8006acc <frexp>
 8003908:	2200      	movs	r2, #0
 800390a:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800390e:	ec51 0b10 	vmov	r0, r1, d0
 8003912:	f7fd f911 	bl	8000b38 <__aeabi_dmul>
 8003916:	2200      	movs	r2, #0
 8003918:	2300      	movs	r3, #0
 800391a:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800391e:	f7fd fb73 	bl	8001008 <__aeabi_dcmpeq>
 8003922:	2800      	cmp	r0, #0
 8003924:	f040 8305 	bne.w	8003f32 <_vfprintf_r+0x18d2>
 8003928:	4b63      	ldr	r3, [pc, #396]	; (8003ab8 <_vfprintf_r+0x1458>)
 800392a:	9309      	str	r3, [sp, #36]	; 0x24
 800392c:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003930:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003934:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003938:	9721      	str	r7, [sp, #132]	; 0x84
 800393a:	46b9      	mov	r9, r7
 800393c:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003940:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003944:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003948:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 800394c:	e003      	b.n	8003956 <_vfprintf_r+0x12f6>
 800394e:	f7fd fb5b 	bl	8001008 <__aeabi_dcmpeq>
 8003952:	bb20      	cbnz	r0, 800399e <_vfprintf_r+0x133e>
 8003954:	46a9      	mov	r9, r5
 8003956:	2200      	movs	r2, #0
 8003958:	4b58      	ldr	r3, [pc, #352]	; (8003abc <_vfprintf_r+0x145c>)
 800395a:	4630      	mov	r0, r6
 800395c:	4639      	mov	r1, r7
 800395e:	f7fd f8eb 	bl	8000b38 <__aeabi_dmul>
 8003962:	460f      	mov	r7, r1
 8003964:	4606      	mov	r6, r0
 8003966:	f7fd fb97 	bl	8001098 <__aeabi_d2iz>
 800396a:	4680      	mov	r8, r0
 800396c:	f7fd f87a 	bl	8000a64 <__aeabi_i2d>
 8003970:	4602      	mov	r2, r0
 8003972:	460b      	mov	r3, r1
 8003974:	4630      	mov	r0, r6
 8003976:	4639      	mov	r1, r7
 8003978:	f7fc ff26 	bl	80007c8 <__aeabi_dsub>
 800397c:	464d      	mov	r5, r9
 800397e:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003982:	f805 cb01 	strb.w	ip, [r5], #1
 8003986:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 800398a:	46a3      	mov	fp, r4
 800398c:	4606      	mov	r6, r0
 800398e:	460f      	mov	r7, r1
 8003990:	f04f 0200 	mov.w	r2, #0
 8003994:	f04f 0300 	mov.w	r3, #0
 8003998:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 800399c:	d1d7      	bne.n	800394e <_vfprintf_r+0x12ee>
 800399e:	4630      	mov	r0, r6
 80039a0:	4639      	mov	r1, r7
 80039a2:	2200      	movs	r2, #0
 80039a4:	4b46      	ldr	r3, [pc, #280]	; (8003ac0 <_vfprintf_r+0x1460>)
 80039a6:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 80039aa:	9e10      	ldr	r6, [sp, #64]	; 0x40
 80039ac:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 80039b0:	4644      	mov	r4, r8
 80039b2:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 80039b6:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 80039ba:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 80039be:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 80039c2:	9f21      	ldr	r7, [sp, #132]	; 0x84
 80039c4:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 80039c8:	f7fd fb46 	bl	8001058 <__aeabi_dcmpgt>
 80039cc:	2800      	cmp	r0, #0
 80039ce:	f040 8176 	bne.w	8003cbe <_vfprintf_r+0x165e>
 80039d2:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 80039d6:	2200      	movs	r2, #0
 80039d8:	4b39      	ldr	r3, [pc, #228]	; (8003ac0 <_vfprintf_r+0x1460>)
 80039da:	f7fd fb15 	bl	8001008 <__aeabi_dcmpeq>
 80039de:	b110      	cbz	r0, 80039e6 <_vfprintf_r+0x1386>
 80039e0:	07e2      	lsls	r2, r4, #31
 80039e2:	f100 816c 	bmi.w	8003cbe <_vfprintf_r+0x165e>
 80039e6:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039e8:	2b00      	cmp	r3, #0
 80039ea:	db07      	blt.n	80039fc <_vfprintf_r+0x139c>
 80039ec:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80039ee:	3301      	adds	r3, #1
 80039f0:	442b      	add	r3, r5
 80039f2:	2230      	movs	r2, #48	; 0x30
 80039f4:	f805 2b01 	strb.w	r2, [r5], #1
 80039f8:	42ab      	cmp	r3, r5
 80039fa:	d1fb      	bne.n	80039f4 <_vfprintf_r+0x1394>
 80039fc:	1beb      	subs	r3, r5, r7
 80039fe:	4640      	mov	r0, r8
 8003a00:	9310      	str	r3, [sp, #64]	; 0x40
 8003a02:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003a06:	e683      	b.n	8003710 <_vfprintf_r+0x10b0>
 8003a08:	f8cd 9010 	str.w	r9, [sp, #16]
 8003a0c:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003a10:	9408      	str	r4, [sp, #32]
 8003a12:	4681      	mov	r9, r0
 8003a14:	900f      	str	r0, [sp, #60]	; 0x3c
 8003a16:	9014      	str	r0, [sp, #80]	; 0x50
 8003a18:	9011      	str	r0, [sp, #68]	; 0x44
 8003a1a:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003a1e:	f7fe bfac 	b.w	800297a <_vfprintf_r+0x31a>
 8003a22:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a24:	9907      	ldr	r1, [sp, #28]
 8003a26:	9803      	ldr	r0, [sp, #12]
 8003a28:	f003 f948 	bl	8006cbc <__sprint_r>
 8003a2c:	2800      	cmp	r0, #0
 8003a2e:	f47f ab8f 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003a32:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a34:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a36:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a3a:	e511      	b.n	8003460 <_vfprintf_r+0xe00>
 8003a3c:	4252      	negs	r2, r2
 8003a3e:	9206      	str	r2, [sp, #24]
 8003a40:	9308      	str	r3, [sp, #32]
 8003a42:	f7ff b96d 	b.w	8002d20 <_vfprintf_r+0x6c0>
 8003a46:	4614      	mov	r4, r2
 8003a48:	4632      	mov	r2, r6
 8003a4a:	461e      	mov	r6, r3
 8003a4c:	4613      	mov	r3, r2
 8003a4e:	462a      	mov	r2, r5
 8003a50:	3201      	adds	r2, #1
 8003a52:	9209      	str	r2, [sp, #36]	; 0x24
 8003a54:	f106 0208 	add.w	r2, r6, #8
 8003a58:	e9c6 3900 	strd	r3, r9, [r6]
 8003a5c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003a5e:	932b      	str	r3, [sp, #172]	; 0xac
 8003a60:	444c      	add	r4, r9
 8003a62:	2b07      	cmp	r3, #7
 8003a64:	942c      	str	r4, [sp, #176]	; 0xb0
 8003a66:	f73f acc3 	bgt.w	80033f0 <_vfprintf_r+0xd90>
 8003a6a:	3301      	adds	r3, #1
 8003a6c:	9309      	str	r3, [sp, #36]	; 0x24
 8003a6e:	f102 0b08 	add.w	fp, r2, #8
 8003a72:	4616      	mov	r6, r2
 8003a74:	f7ff bbca 	b.w	800320c <_vfprintf_r+0xbac>
 8003a78:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a7a:	9907      	ldr	r1, [sp, #28]
 8003a7c:	9803      	ldr	r0, [sp, #12]
 8003a7e:	f003 f91d 	bl	8006cbc <__sprint_r>
 8003a82:	2800      	cmp	r0, #0
 8003a84:	f47f ab64 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003a88:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a8a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a8e:	f7ff bade 	b.w	800304e <_vfprintf_r+0x9ee>
 8003a92:	464b      	mov	r3, r9
 8003a94:	2b06      	cmp	r3, #6
 8003a96:	bf28      	it	cs
 8003a98:	2306      	movcs	r3, #6
 8003a9a:	46b9      	mov	r9, r7
 8003a9c:	970f      	str	r7, [sp, #60]	; 0x3c
 8003a9e:	9714      	str	r7, [sp, #80]	; 0x50
 8003aa0:	9711      	str	r7, [sp, #68]	; 0x44
 8003aa2:	970a      	str	r7, [sp, #40]	; 0x28
 8003aa4:	463a      	mov	r2, r7
 8003aa6:	9304      	str	r3, [sp, #16]
 8003aa8:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003aac:	4f05      	ldr	r7, [pc, #20]	; (8003ac4 <_vfprintf_r+0x1464>)
 8003aae:	f7fe bf64 	b.w	800297a <_vfprintf_r+0x31a>
 8003ab2:	bf00      	nop
 8003ab4:	080074b4 	.word	0x080074b4
 8003ab8:	08007498 	.word	0x08007498
 8003abc:	40300000 	.word	0x40300000
 8003ac0:	3fe00000 	.word	0x3fe00000
 8003ac4:	080074ac 	.word	0x080074ac
 8003ac8:	460c      	mov	r4, r1
 8003aca:	4639      	mov	r1, r7
 8003acc:	465f      	mov	r7, fp
 8003ace:	469b      	mov	fp, r3
 8003ad0:	460b      	mov	r3, r1
 8003ad2:	3201      	adds	r2, #1
 8003ad4:	442c      	add	r4, r5
 8003ad6:	2a07      	cmp	r2, #7
 8003ad8:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003adc:	e9cb 3500 	strd	r3, r5, [fp]
 8003ae0:	f73f aca5 	bgt.w	800342e <_vfprintf_r+0xdce>
 8003ae4:	f10b 0b08 	add.w	fp, fp, #8
 8003ae8:	e4ac      	b.n	8003444 <_vfprintf_r+0xde4>
 8003aea:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003aec:	1cda      	adds	r2, r3, #3
 8003aee:	db02      	blt.n	8003af6 <_vfprintf_r+0x1496>
 8003af0:	4599      	cmp	r9, r3
 8003af2:	f280 80b5 	bge.w	8003c60 <_vfprintf_r+0x1600>
 8003af6:	3e02      	subs	r6, #2
 8003af8:	f026 0320 	bic.w	r3, r6, #32
 8003afc:	9304      	str	r3, [sp, #16]
 8003afe:	e611      	b.n	8003724 <_vfprintf_r+0x10c4>
 8003b00:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003b02:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003b06:	465a      	mov	r2, fp
 8003b08:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003b0c:	18fb      	adds	r3, r7, r3
 8003b0e:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003b12:	970c      	str	r7, [sp, #48]	; 0x30
 8003b14:	4eaf      	ldr	r6, [pc, #700]	; (8003dd4 <_vfprintf_r+0x1774>)
 8003b16:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003b1a:	9309      	str	r3, [sp, #36]	; 0x24
 8003b1c:	464f      	mov	r7, r9
 8003b1e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003b22:	4621      	mov	r1, r4
 8003b24:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b26:	2b00      	cmp	r3, #0
 8003b28:	d05b      	beq.n	8003be2 <_vfprintf_r+0x1582>
 8003b2a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003b2c:	2b00      	cmp	r3, #0
 8003b2e:	d154      	bne.n	8003bda <_vfprintf_r+0x157a>
 8003b30:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003b32:	3b01      	subs	r3, #1
 8003b34:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003b38:	9314      	str	r3, [sp, #80]	; 0x50
 8003b3a:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003b3c:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003b3e:	6010      	str	r0, [r2, #0]
 8003b40:	3301      	adds	r3, #1
 8003b42:	4459      	add	r1, fp
 8003b44:	2b07      	cmp	r3, #7
 8003b46:	912c      	str	r1, [sp, #176]	; 0xb0
 8003b48:	f8c2 b004 	str.w	fp, [r2, #4]
 8003b4c:	932b      	str	r3, [sp, #172]	; 0xac
 8003b4e:	dc68      	bgt.n	8003c22 <_vfprintf_r+0x15c2>
 8003b50:	3208      	adds	r2, #8
 8003b52:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003b54:	f898 3000 	ldrb.w	r3, [r8]
 8003b58:	1bc5      	subs	r5, r0, r7
 8003b5a:	429d      	cmp	r5, r3
 8003b5c:	bfa8      	it	ge
 8003b5e:	461d      	movge	r5, r3
 8003b60:	2d00      	cmp	r5, #0
 8003b62:	dd0b      	ble.n	8003b7c <_vfprintf_r+0x151c>
 8003b64:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003b66:	6017      	str	r7, [r2, #0]
 8003b68:	3301      	adds	r3, #1
 8003b6a:	4429      	add	r1, r5
 8003b6c:	2b07      	cmp	r3, #7
 8003b6e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003b70:	6055      	str	r5, [r2, #4]
 8003b72:	932b      	str	r3, [sp, #172]	; 0xac
 8003b74:	dc5e      	bgt.n	8003c34 <_vfprintf_r+0x15d4>
 8003b76:	f898 3000 	ldrb.w	r3, [r8]
 8003b7a:	3208      	adds	r2, #8
 8003b7c:	2d00      	cmp	r5, #0
 8003b7e:	bfac      	ite	ge
 8003b80:	1b5d      	subge	r5, r3, r5
 8003b82:	461d      	movlt	r5, r3
 8003b84:	2d00      	cmp	r5, #0
 8003b86:	dd26      	ble.n	8003bd6 <_vfprintf_r+0x1576>
 8003b88:	2d10      	cmp	r5, #16
 8003b8a:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003b8c:	dd3c      	ble.n	8003c08 <_vfprintf_r+0x15a8>
 8003b8e:	2410      	movs	r4, #16
 8003b90:	e003      	b.n	8003b9a <_vfprintf_r+0x153a>
 8003b92:	3208      	adds	r2, #8
 8003b94:	3d10      	subs	r5, #16
 8003b96:	2d10      	cmp	r5, #16
 8003b98:	dd36      	ble.n	8003c08 <_vfprintf_r+0x15a8>
 8003b9a:	3001      	adds	r0, #1
 8003b9c:	3110      	adds	r1, #16
 8003b9e:	2807      	cmp	r0, #7
 8003ba0:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003ba4:	e9c2 6400 	strd	r6, r4, [r2]
 8003ba8:	ddf3      	ble.n	8003b92 <_vfprintf_r+0x1532>
 8003baa:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bac:	4651      	mov	r1, sl
 8003bae:	4648      	mov	r0, r9
 8003bb0:	f003 f884 	bl	8006cbc <__sprint_r>
 8003bb4:	2800      	cmp	r0, #0
 8003bb6:	d150      	bne.n	8003c5a <_vfprintf_r+0x15fa>
 8003bb8:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003bbc:	aa2d      	add	r2, sp, #180	; 0xb4
 8003bbe:	e7e9      	b.n	8003b94 <_vfprintf_r+0x1534>
 8003bc0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bc2:	4651      	mov	r1, sl
 8003bc4:	4648      	mov	r0, r9
 8003bc6:	f003 f879 	bl	8006cbc <__sprint_r>
 8003bca:	2800      	cmp	r0, #0
 8003bcc:	d145      	bne.n	8003c5a <_vfprintf_r+0x15fa>
 8003bce:	f898 3000 	ldrb.w	r3, [r8]
 8003bd2:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003bd4:	aa2d      	add	r2, sp, #180	; 0xb4
 8003bd6:	441f      	add	r7, r3
 8003bd8:	e7a4      	b.n	8003b24 <_vfprintf_r+0x14c4>
 8003bda:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003bdc:	3b01      	subs	r3, #1
 8003bde:	930f      	str	r3, [sp, #60]	; 0x3c
 8003be0:	e7ab      	b.n	8003b3a <_vfprintf_r+0x14da>
 8003be2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003be4:	2b00      	cmp	r3, #0
 8003be6:	d1f8      	bne.n	8003bda <_vfprintf_r+0x157a>
 8003be8:	46b9      	mov	r9, r7
 8003bea:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003bec:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003bee:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003bf2:	18fb      	adds	r3, r7, r3
 8003bf4:	4599      	cmp	r9, r3
 8003bf6:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003bfa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003bfe:	4693      	mov	fp, r2
 8003c00:	460c      	mov	r4, r1
 8003c02:	bf28      	it	cs
 8003c04:	4699      	movcs	r9, r3
 8003c06:	e424      	b.n	8003452 <_vfprintf_r+0xdf2>
 8003c08:	3001      	adds	r0, #1
 8003c0a:	4429      	add	r1, r5
 8003c0c:	2807      	cmp	r0, #7
 8003c0e:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003c12:	e9c2 6500 	strd	r6, r5, [r2]
 8003c16:	dcd3      	bgt.n	8003bc0 <_vfprintf_r+0x1560>
 8003c18:	f898 3000 	ldrb.w	r3, [r8]
 8003c1c:	3208      	adds	r2, #8
 8003c1e:	441f      	add	r7, r3
 8003c20:	e780      	b.n	8003b24 <_vfprintf_r+0x14c4>
 8003c22:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c24:	4651      	mov	r1, sl
 8003c26:	4648      	mov	r0, r9
 8003c28:	f003 f848 	bl	8006cbc <__sprint_r>
 8003c2c:	b9a8      	cbnz	r0, 8003c5a <_vfprintf_r+0x15fa>
 8003c2e:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003c30:	aa2d      	add	r2, sp, #180	; 0xb4
 8003c32:	e78e      	b.n	8003b52 <_vfprintf_r+0x14f2>
 8003c34:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c36:	4651      	mov	r1, sl
 8003c38:	4648      	mov	r0, r9
 8003c3a:	f003 f83f 	bl	8006cbc <__sprint_r>
 8003c3e:	b960      	cbnz	r0, 8003c5a <_vfprintf_r+0x15fa>
 8003c40:	f898 3000 	ldrb.w	r3, [r8]
 8003c44:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003c46:	aa2d      	add	r2, sp, #180	; 0xb4
 8003c48:	e798      	b.n	8003b7c <_vfprintf_r+0x151c>
 8003c4a:	4638      	mov	r0, r7
 8003c4c:	f7fc fcf8 	bl	8000640 <strlen>
 8003c50:	46a9      	mov	r9, r5
 8003c52:	4603      	mov	r3, r0
 8003c54:	9009      	str	r0, [sp, #36]	; 0x24
 8003c56:	f7ff b8f4 	b.w	8002e42 <_vfprintf_r+0x7e2>
 8003c5a:	46d1      	mov	r9, sl
 8003c5c:	f7ff ba7a 	b.w	8003154 <_vfprintf_r+0xaf4>
 8003c60:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003c62:	4619      	mov	r1, r3
 8003c64:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c66:	4299      	cmp	r1, r3
 8003c68:	f300 8082 	bgt.w	8003d70 <_vfprintf_r+0x1710>
 8003c6c:	07c4      	lsls	r4, r0, #31
 8003c6e:	f140 816b 	bpl.w	8003f48 <_vfprintf_r+0x18e8>
 8003c72:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003c74:	4413      	add	r3, r2
 8003c76:	9309      	str	r3, [sp, #36]	; 0x24
 8003c78:	0541      	lsls	r1, r0, #21
 8003c7a:	d503      	bpl.n	8003c84 <_vfprintf_r+0x1624>
 8003c7c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003c7e:	2b00      	cmp	r3, #0
 8003c80:	f300 80e6 	bgt.w	8003e50 <_vfprintf_r+0x17f0>
 8003c84:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c86:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003c8a:	9304      	str	r3, [sp, #16]
 8003c8c:	2667      	movs	r6, #103	; 0x67
 8003c8e:	2300      	movs	r3, #0
 8003c90:	930f      	str	r3, [sp, #60]	; 0x3c
 8003c92:	9314      	str	r3, [sp, #80]	; 0x50
 8003c94:	e586      	b.n	80037a4 <_vfprintf_r+0x1144>
 8003c96:	222d      	movs	r2, #45	; 0x2d
 8003c98:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003c9c:	f04f 0900 	mov.w	r9, #0
 8003ca0:	f7fe be6c 	b.w	800297c <_vfprintf_r+0x31c>
 8003ca4:	46a1      	mov	r9, r4
 8003ca6:	f7ff ba55 	b.w	8003154 <_vfprintf_r+0xaf4>
 8003caa:	900a      	str	r0, [sp, #40]	; 0x28
 8003cac:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003cb0:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003cb4:	931f      	str	r3, [sp, #124]	; 0x7c
 8003cb6:	232d      	movs	r3, #45	; 0x2d
 8003cb8:	911e      	str	r1, [sp, #120]	; 0x78
 8003cba:	930b      	str	r3, [sp, #44]	; 0x2c
 8003cbc:	e619      	b.n	80038f2 <_vfprintf_r+0x1292>
 8003cbe:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003cc0:	9328      	str	r3, [sp, #160]	; 0xa0
 8003cc2:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003cc4:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003cc8:	7bd9      	ldrb	r1, [r3, #15]
 8003cca:	4291      	cmp	r1, r2
 8003ccc:	462b      	mov	r3, r5
 8003cce:	d109      	bne.n	8003ce4 <_vfprintf_r+0x1684>
 8003cd0:	2030      	movs	r0, #48	; 0x30
 8003cd2:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003cd6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003cd8:	1e5a      	subs	r2, r3, #1
 8003cda:	9228      	str	r2, [sp, #160]	; 0xa0
 8003cdc:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003ce0:	4291      	cmp	r1, r2
 8003ce2:	d0f6      	beq.n	8003cd2 <_vfprintf_r+0x1672>
 8003ce4:	2a39      	cmp	r2, #57	; 0x39
 8003ce6:	bf0b      	itete	eq
 8003ce8:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003cea:	3201      	addne	r2, #1
 8003cec:	7a92      	ldrbeq	r2, [r2, #10]
 8003cee:	b2d2      	uxtbne	r2, r2
 8003cf0:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003cf4:	e682      	b.n	80039fc <_vfprintf_r+0x139c>
 8003cf6:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003cfa:	f43f ad9f 	beq.w	800383c <_vfprintf_r+0x11dc>
 8003cfe:	9a05      	ldr	r2, [sp, #20]
 8003d00:	701a      	strb	r2, [r3, #0]
 8003d02:	4657      	mov	r7, sl
 8003d04:	f7fe bf52 	b.w	8002bac <_vfprintf_r+0x54c>
 8003d08:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d0a:	9907      	ldr	r1, [sp, #28]
 8003d0c:	9803      	ldr	r0, [sp, #12]
 8003d0e:	f002 ffd5 	bl	8006cbc <__sprint_r>
 8003d12:	2800      	cmp	r0, #0
 8003d14:	f47f aa1c 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003d18:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003d1a:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003d1e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d22:	e571      	b.n	8003808 <_vfprintf_r+0x11a8>
 8003d24:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d26:	2b00      	cmp	r3, #0
 8003d28:	f340 8164 	ble.w	8003ff4 <_vfprintf_r+0x1994>
 8003d2c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d2e:	f1b9 0f00 	cmp.w	r9, #0
 8003d32:	f040 8103 	bne.w	8003f3c <_vfprintf_r+0x18dc>
 8003d36:	07c6      	lsls	r6, r0, #31
 8003d38:	f100 8100 	bmi.w	8003f3c <_vfprintf_r+0x18dc>
 8003d3c:	9309      	str	r3, [sp, #36]	; 0x24
 8003d3e:	2666      	movs	r6, #102	; 0x66
 8003d40:	0543      	lsls	r3, r0, #21
 8003d42:	f100 8086 	bmi.w	8003e52 <_vfprintf_r+0x17f2>
 8003d46:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003d48:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003d4c:	9304      	str	r3, [sp, #16]
 8003d4e:	e79e      	b.n	8003c8e <_vfprintf_r+0x162e>
 8003d50:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d52:	9907      	ldr	r1, [sp, #28]
 8003d54:	9803      	ldr	r0, [sp, #12]
 8003d56:	f002 ffb1 	bl	8006cbc <__sprint_r>
 8003d5a:	2800      	cmp	r0, #0
 8003d5c:	f47f a9f8 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003d60:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003d62:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003d64:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003d66:	1ad3      	subs	r3, r2, r3
 8003d68:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003d6c:	f7ff bb90 	b.w	8003490 <_vfprintf_r+0xe30>
 8003d70:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003d72:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003d74:	4413      	add	r3, r2
 8003d76:	9309      	str	r3, [sp, #36]	; 0x24
 8003d78:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003d7a:	2b00      	cmp	r3, #0
 8003d7c:	f340 8149 	ble.w	8004012 <_vfprintf_r+0x19b2>
 8003d80:	2667      	movs	r6, #103	; 0x67
 8003d82:	e7dd      	b.n	8003d40 <_vfprintf_r+0x16e0>
 8003d84:	2330      	movs	r3, #48	; 0x30
 8003d86:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003d8a:	2358      	movs	r3, #88	; 0x58
 8003d8c:	e595      	b.n	80038ba <_vfprintf_r+0x125a>
 8003d8e:	9803      	ldr	r0, [sp, #12]
 8003d90:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d92:	4649      	mov	r1, r9
 8003d94:	f002 ff92 	bl	8006cbc <__sprint_r>
 8003d98:	2800      	cmp	r0, #0
 8003d9a:	f47f a9e0 	bne.w	800315e <_vfprintf_r+0xafe>
 8003d9e:	f7fe bf0f 	b.w	8002bc0 <_vfprintf_r+0x560>
 8003da2:	a824      	add	r0, sp, #144	; 0x90
 8003da4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003da8:	f002 fe90 	bl	8006acc <frexp>
 8003dac:	2200      	movs	r2, #0
 8003dae:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003db2:	ec51 0b10 	vmov	r0, r1, d0
 8003db6:	f7fc febf 	bl	8000b38 <__aeabi_dmul>
 8003dba:	2200      	movs	r2, #0
 8003dbc:	2300      	movs	r3, #0
 8003dbe:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003dc2:	f7fd f921 	bl	8001008 <__aeabi_dcmpeq>
 8003dc6:	b108      	cbz	r0, 8003dcc <_vfprintf_r+0x176c>
 8003dc8:	2301      	movs	r3, #1
 8003dca:	9324      	str	r3, [sp, #144]	; 0x90
 8003dcc:	4b02      	ldr	r3, [pc, #8]	; (8003dd8 <_vfprintf_r+0x1778>)
 8003dce:	9309      	str	r3, [sp, #36]	; 0x24
 8003dd0:	e5ac      	b.n	800392c <_vfprintf_r+0x12cc>
 8003dd2:	bf00      	nop
 8003dd4:	080074c8 	.word	0x080074c8
 8003dd8:	08007484 	.word	0x08007484
 8003ddc:	425d      	negs	r5, r3
 8003dde:	3310      	adds	r3, #16
 8003de0:	4bb9      	ldr	r3, [pc, #740]	; (80040c8 <_vfprintf_r+0x1a68>)
 8003de2:	f280 8097 	bge.w	8003f14 <_vfprintf_r+0x18b4>
 8003de6:	4619      	mov	r1, r3
 8003de8:	2610      	movs	r6, #16
 8003dea:	4623      	mov	r3, r4
 8003dec:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003df0:	460c      	mov	r4, r1
 8003df2:	e005      	b.n	8003e00 <_vfprintf_r+0x17a0>
 8003df4:	f10b 0b08 	add.w	fp, fp, #8
 8003df8:	3d10      	subs	r5, #16
 8003dfa:	2d10      	cmp	r5, #16
 8003dfc:	f340 8087 	ble.w	8003f0e <_vfprintf_r+0x18ae>
 8003e00:	3201      	adds	r2, #1
 8003e02:	3310      	adds	r3, #16
 8003e04:	2a07      	cmp	r2, #7
 8003e06:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003e0a:	e9cb 4600 	strd	r4, r6, [fp]
 8003e0e:	ddf1      	ble.n	8003df4 <_vfprintf_r+0x1794>
 8003e10:	aa2a      	add	r2, sp, #168	; 0xa8
 8003e12:	9907      	ldr	r1, [sp, #28]
 8003e14:	4648      	mov	r0, r9
 8003e16:	f002 ff51 	bl	8006cbc <__sprint_r>
 8003e1a:	2800      	cmp	r0, #0
 8003e1c:	f47f a998 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8003e20:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003e24:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003e28:	e7e6      	b.n	8003df8 <_vfprintf_r+0x1798>
 8003e2a:	f109 0101 	add.w	r1, r9, #1
 8003e2e:	9803      	ldr	r0, [sp, #12]
 8003e30:	f001 fe80 	bl	8005b34 <_malloc_r>
 8003e34:	4607      	mov	r7, r0
 8003e36:	2800      	cmp	r0, #0
 8003e38:	f000 813b 	beq.w	80040b2 <_vfprintf_r+0x1a52>
 8003e3c:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003e40:	930e      	str	r3, [sp, #56]	; 0x38
 8003e42:	f026 0320 	bic.w	r3, r6, #32
 8003e46:	9304      	str	r3, [sp, #16]
 8003e48:	46a0      	mov	r8, r4
 8003e4a:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003e4c:	900a      	str	r0, [sp, #40]	; 0x28
 8003e4e:	e547      	b.n	80038e0 <_vfprintf_r+0x1280>
 8003e50:	2667      	movs	r6, #103	; 0x67
 8003e52:	981a      	ldr	r0, [sp, #104]	; 0x68
 8003e54:	2200      	movs	r2, #0
 8003e56:	920f      	str	r2, [sp, #60]	; 0x3c
 8003e58:	9214      	str	r2, [sp, #80]	; 0x50
 8003e5a:	7803      	ldrb	r3, [r0, #0]
 8003e5c:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8003e5e:	2bff      	cmp	r3, #255	; 0xff
 8003e60:	d00c      	beq.n	8003e7c <_vfprintf_r+0x181c>
 8003e62:	4293      	cmp	r3, r2
 8003e64:	da0a      	bge.n	8003e7c <_vfprintf_r+0x181c>
 8003e66:	7841      	ldrb	r1, [r0, #1]
 8003e68:	1ad2      	subs	r2, r2, r3
 8003e6a:	b1a9      	cbz	r1, 8003e98 <_vfprintf_r+0x1838>
 8003e6c:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003e6e:	3301      	adds	r3, #1
 8003e70:	9314      	str	r3, [sp, #80]	; 0x50
 8003e72:	460b      	mov	r3, r1
 8003e74:	2bff      	cmp	r3, #255	; 0xff
 8003e76:	f100 0001 	add.w	r0, r0, #1
 8003e7a:	d1f2      	bne.n	8003e62 <_vfprintf_r+0x1802>
 8003e7c:	9211      	str	r2, [sp, #68]	; 0x44
 8003e7e:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003e80:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8003e82:	9909      	ldr	r1, [sp, #36]	; 0x24
 8003e84:	901a      	str	r0, [sp, #104]	; 0x68
 8003e86:	4413      	add	r3, r2
 8003e88:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8003e8a:	fb02 1303 	mla	r3, r2, r3, r1
 8003e8e:	9309      	str	r3, [sp, #36]	; 0x24
 8003e90:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e94:	9304      	str	r3, [sp, #16]
 8003e96:	e485      	b.n	80037a4 <_vfprintf_r+0x1144>
 8003e98:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8003e9a:	3101      	adds	r1, #1
 8003e9c:	910f      	str	r1, [sp, #60]	; 0x3c
 8003e9e:	e7de      	b.n	8003e5e <_vfprintf_r+0x17fe>
 8003ea0:	aa28      	add	r2, sp, #160	; 0xa0
 8003ea2:	ab25      	add	r3, sp, #148	; 0x94
 8003ea4:	e9cd 3200 	strd	r3, r2, [sp]
 8003ea8:	2103      	movs	r1, #3
 8003eaa:	ab24      	add	r3, sp, #144	; 0x90
 8003eac:	464a      	mov	r2, r9
 8003eae:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003eb2:	9803      	ldr	r0, [sp, #12]
 8003eb4:	f000 fa5c 	bl	8004370 <_dtoa_r>
 8003eb8:	464d      	mov	r5, r9
 8003eba:	4607      	mov	r7, r0
 8003ebc:	eb00 0409 	add.w	r4, r0, r9
 8003ec0:	783b      	ldrb	r3, [r7, #0]
 8003ec2:	2b30      	cmp	r3, #48	; 0x30
 8003ec4:	f000 80be 	beq.w	8004044 <_vfprintf_r+0x19e4>
 8003ec8:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8003eca:	442c      	add	r4, r5
 8003ecc:	2200      	movs	r2, #0
 8003ece:	2300      	movs	r3, #0
 8003ed0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8003ed4:	f7fd f898 	bl	8001008 <__aeabi_dcmpeq>
 8003ed8:	b108      	cbz	r0, 8003ede <_vfprintf_r+0x187e>
 8003eda:	4623      	mov	r3, r4
 8003edc:	e413      	b.n	8003706 <_vfprintf_r+0x10a6>
 8003ede:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ee0:	42a3      	cmp	r3, r4
 8003ee2:	f4bf ac10 	bcs.w	8003706 <_vfprintf_r+0x10a6>
 8003ee6:	2130      	movs	r1, #48	; 0x30
 8003ee8:	1c5a      	adds	r2, r3, #1
 8003eea:	9228      	str	r2, [sp, #160]	; 0xa0
 8003eec:	7019      	strb	r1, [r3, #0]
 8003eee:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ef0:	429c      	cmp	r4, r3
 8003ef2:	d8f9      	bhi.n	8003ee8 <_vfprintf_r+0x1888>
 8003ef4:	e407      	b.n	8003706 <_vfprintf_r+0x10a6>
 8003ef6:	197c      	adds	r4, r7, r5
 8003ef8:	e7e8      	b.n	8003ecc <_vfprintf_r+0x186c>
 8003efa:	f1b9 0f00 	cmp.w	r9, #0
 8003efe:	f000 8092 	beq.w	8004026 <_vfprintf_r+0x19c6>
 8003f02:	900a      	str	r0, [sp, #40]	; 0x28
 8003f04:	e4ec      	b.n	80038e0 <_vfprintf_r+0x1280>
 8003f06:	900a      	str	r0, [sp, #40]	; 0x28
 8003f08:	f04f 0906 	mov.w	r9, #6
 8003f0c:	e4e8      	b.n	80038e0 <_vfprintf_r+0x1280>
 8003f0e:	4621      	mov	r1, r4
 8003f10:	461c      	mov	r4, r3
 8003f12:	460b      	mov	r3, r1
 8003f14:	3201      	adds	r2, #1
 8003f16:	442c      	add	r4, r5
 8003f18:	2a07      	cmp	r2, #7
 8003f1a:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003f1e:	e9cb 3500 	strd	r3, r5, [fp]
 8003f22:	f300 80a9 	bgt.w	8004078 <_vfprintf_r+0x1a18>
 8003f26:	f10b 0b08 	add.w	fp, fp, #8
 8003f2a:	e470      	b.n	800380e <_vfprintf_r+0x11ae>
 8003f2c:	469a      	mov	sl, r3
 8003f2e:	f7ff bb37 	b.w	80035a0 <_vfprintf_r+0xf40>
 8003f32:	2301      	movs	r3, #1
 8003f34:	9324      	str	r3, [sp, #144]	; 0x90
 8003f36:	4b65      	ldr	r3, [pc, #404]	; (80040cc <_vfprintf_r+0x1a6c>)
 8003f38:	9309      	str	r3, [sp, #36]	; 0x24
 8003f3a:	e4f7      	b.n	800392c <_vfprintf_r+0x12cc>
 8003f3c:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003f3e:	4413      	add	r3, r2
 8003f40:	444b      	add	r3, r9
 8003f42:	9309      	str	r3, [sp, #36]	; 0x24
 8003f44:	2666      	movs	r6, #102	; 0x66
 8003f46:	e6fb      	b.n	8003d40 <_vfprintf_r+0x16e0>
 8003f48:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f4a:	9309      	str	r3, [sp, #36]	; 0x24
 8003f4c:	e694      	b.n	8003c78 <_vfprintf_r+0x1618>
 8003f4e:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 8003f52:	4664      	mov	r4, ip
 8003f54:	4d5e      	ldr	r5, [pc, #376]	; (80040d0 <_vfprintf_r+0x1a70>)
 8003f56:	e000      	b.n	8003f5a <_vfprintf_r+0x18fa>
 8003f58:	4614      	mov	r4, r2
 8003f5a:	fba5 1203 	umull	r1, r2, r5, r3
 8003f5e:	08d2      	lsrs	r2, r2, #3
 8003f60:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 8003f64:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8003f68:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8003f6c:	4613      	mov	r3, r2
 8003f6e:	2b09      	cmp	r3, #9
 8003f70:	f804 1c01 	strb.w	r1, [r4, #-1]
 8003f74:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8003f78:	dcee      	bgt.n	8003f58 <_vfprintf_r+0x18f8>
 8003f7a:	3330      	adds	r3, #48	; 0x30
 8003f7c:	3c02      	subs	r4, #2
 8003f7e:	b2db      	uxtb	r3, r3
 8003f80:	45a4      	cmp	ip, r4
 8003f82:	f802 3c01 	strb.w	r3, [r2, #-1]
 8003f86:	f240 8090 	bls.w	80040aa <_vfprintf_r+0x1a4a>
 8003f8a:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8003f8e:	4611      	mov	r1, r2
 8003f90:	e001      	b.n	8003f96 <_vfprintf_r+0x1936>
 8003f92:	f811 3b01 	ldrb.w	r3, [r1], #1
 8003f96:	f804 3b01 	strb.w	r3, [r4], #1
 8003f9a:	458c      	cmp	ip, r1
 8003f9c:	d1f9      	bne.n	8003f92 <_vfprintf_r+0x1932>
 8003f9e:	ab2a      	add	r3, sp, #168	; 0xa8
 8003fa0:	1a9b      	subs	r3, r3, r2
 8003fa2:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8003fa6:	4413      	add	r3, r2
 8003fa8:	f7ff bbe3 	b.w	8003772 <_vfprintf_r+0x1112>
 8003fac:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003fae:	4f49      	ldr	r7, [pc, #292]	; (80040d4 <_vfprintf_r+0x1a74>)
 8003fb0:	2b00      	cmp	r3, #0
 8003fb2:	bfb6      	itet	lt
 8003fb4:	222d      	movlt	r2, #45	; 0x2d
 8003fb6:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8003fba:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8003fbe:	4b46      	ldr	r3, [pc, #280]	; (80040d8 <_vfprintf_r+0x1a78>)
 8003fc0:	f7fe bf02 	b.w	8002dc8 <_vfprintf_r+0x768>
 8003fc4:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003fc8:	f7ff b8c9 	b.w	800315e <_vfprintf_r+0xafe>
 8003fcc:	aa28      	add	r2, sp, #160	; 0xa0
 8003fce:	ab25      	add	r3, sp, #148	; 0x94
 8003fd0:	e9cd 3200 	strd	r3, r2, [sp]
 8003fd4:	2103      	movs	r1, #3
 8003fd6:	ab24      	add	r3, sp, #144	; 0x90
 8003fd8:	464a      	mov	r2, r9
 8003fda:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003fde:	9803      	ldr	r0, [sp, #12]
 8003fe0:	f000 f9c6 	bl	8004370 <_dtoa_r>
 8003fe4:	464d      	mov	r5, r9
 8003fe6:	4607      	mov	r7, r0
 8003fe8:	2e46      	cmp	r6, #70	; 0x46
 8003fea:	eb07 0405 	add.w	r4, r7, r5
 8003fee:	f43f af67 	beq.w	8003ec0 <_vfprintf_r+0x1860>
 8003ff2:	e76b      	b.n	8003ecc <_vfprintf_r+0x186c>
 8003ff4:	f1b9 0f00 	cmp.w	r9, #0
 8003ff8:	d131      	bne.n	800405e <_vfprintf_r+0x19fe>
 8003ffa:	07c5      	lsls	r5, r0, #31
 8003ffc:	d42f      	bmi.n	800405e <_vfprintf_r+0x19fe>
 8003ffe:	2301      	movs	r3, #1
 8004000:	9304      	str	r3, [sp, #16]
 8004002:	9309      	str	r3, [sp, #36]	; 0x24
 8004004:	2666      	movs	r6, #102	; 0x66
 8004006:	e642      	b.n	8003c8e <_vfprintf_r+0x162e>
 8004008:	07c3      	lsls	r3, r0, #31
 800400a:	f57f abbf 	bpl.w	800378c <_vfprintf_r+0x112c>
 800400e:	f7ff bbb9 	b.w	8003784 <_vfprintf_r+0x1124>
 8004012:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004014:	f1c3 0301 	rsb	r3, r3, #1
 8004018:	441a      	add	r2, r3
 800401a:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 800401e:	9209      	str	r2, [sp, #36]	; 0x24
 8004020:	9304      	str	r3, [sp, #16]
 8004022:	2667      	movs	r6, #103	; 0x67
 8004024:	e633      	b.n	8003c8e <_vfprintf_r+0x162e>
 8004026:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 800402a:	f04f 0901 	mov.w	r9, #1
 800402e:	e457      	b.n	80038e0 <_vfprintf_r+0x1280>
 8004030:	465a      	mov	r2, fp
 8004032:	e511      	b.n	8003a58 <_vfprintf_r+0x13f8>
 8004034:	2e47      	cmp	r6, #71	; 0x47
 8004036:	f47f af5e 	bne.w	8003ef6 <_vfprintf_r+0x1896>
 800403a:	f018 0f01 	tst.w	r8, #1
 800403e:	f43f ab61 	beq.w	8003704 <_vfprintf_r+0x10a4>
 8004042:	e7d1      	b.n	8003fe8 <_vfprintf_r+0x1988>
 8004044:	2200      	movs	r2, #0
 8004046:	2300      	movs	r3, #0
 8004048:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800404c:	f7fc ffdc 	bl	8001008 <__aeabi_dcmpeq>
 8004050:	2800      	cmp	r0, #0
 8004052:	f47f af39 	bne.w	8003ec8 <_vfprintf_r+0x1868>
 8004056:	f1c5 0501 	rsb	r5, r5, #1
 800405a:	9524      	str	r5, [sp, #144]	; 0x90
 800405c:	e735      	b.n	8003eca <_vfprintf_r+0x186a>
 800405e:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004060:	3301      	adds	r3, #1
 8004062:	444b      	add	r3, r9
 8004064:	9309      	str	r3, [sp, #36]	; 0x24
 8004066:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800406a:	9304      	str	r3, [sp, #16]
 800406c:	2666      	movs	r6, #102	; 0x66
 800406e:	e60e      	b.n	8003c8e <_vfprintf_r+0x162e>
 8004070:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 8004074:	f7ff bb7a 	b.w	800376c <_vfprintf_r+0x110c>
 8004078:	aa2a      	add	r2, sp, #168	; 0xa8
 800407a:	9907      	ldr	r1, [sp, #28]
 800407c:	9803      	ldr	r0, [sp, #12]
 800407e:	f002 fe1d 	bl	8006cbc <__sprint_r>
 8004082:	2800      	cmp	r0, #0
 8004084:	f47f a864 	bne.w	8003150 <_vfprintf_r+0xaf0>
 8004088:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 800408c:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004090:	f7ff bbbd 	b.w	800380e <_vfprintf_r+0x11ae>
 8004094:	9908      	ldr	r1, [sp, #32]
 8004096:	f89a 6001 	ldrb.w	r6, [sl, #1]
 800409a:	680b      	ldr	r3, [r1, #0]
 800409c:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 80040a0:	1d0b      	adds	r3, r1, #4
 80040a2:	4692      	mov	sl, r2
 80040a4:	9308      	str	r3, [sp, #32]
 80040a6:	f7fe bb59 	b.w	800275c <_vfprintf_r+0xfc>
 80040aa:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 80040ae:	f7ff bb60 	b.w	8003772 <_vfprintf_r+0x1112>
 80040b2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80040b6:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80040ba:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80040be:	f8a9 300c 	strh.w	r3, [r9, #12]
 80040c2:	f7ff b84c 	b.w	800315e <_vfprintf_r+0xafe>
 80040c6:	bf00      	nop
 80040c8:	080074c8 	.word	0x080074c8
 80040cc:	08007498 	.word	0x08007498
 80040d0:	cccccccd 	.word	0xcccccccd
 80040d4:	08007480 	.word	0x08007480
 80040d8:	0800747c 	.word	0x0800747c

080040dc <__sbprintf>:
 80040dc:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80040e0:	460c      	mov	r4, r1
 80040e2:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80040e6:	8989      	ldrh	r1, [r1, #12]
 80040e8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80040ea:	89e5      	ldrh	r5, [r4, #14]
 80040ec:	9619      	str	r6, [sp, #100]	; 0x64
 80040ee:	f021 0102 	bic.w	r1, r1, #2
 80040f2:	4606      	mov	r6, r0
 80040f4:	69e0      	ldr	r0, [r4, #28]
 80040f6:	f8ad 100c 	strh.w	r1, [sp, #12]
 80040fa:	4617      	mov	r7, r2
 80040fc:	f44f 6180 	mov.w	r1, #1024	; 0x400
 8004100:	6a62      	ldr	r2, [r4, #36]	; 0x24
 8004102:	f8ad 500e 	strh.w	r5, [sp, #14]
 8004106:	4698      	mov	r8, r3
 8004108:	ad1a      	add	r5, sp, #104	; 0x68
 800410a:	2300      	movs	r3, #0
 800410c:	9007      	str	r0, [sp, #28]
 800410e:	a816      	add	r0, sp, #88	; 0x58
 8004110:	9209      	str	r2, [sp, #36]	; 0x24
 8004112:	9306      	str	r3, [sp, #24]
 8004114:	9500      	str	r5, [sp, #0]
 8004116:	9504      	str	r5, [sp, #16]
 8004118:	9102      	str	r1, [sp, #8]
 800411a:	9105      	str	r1, [sp, #20]
 800411c:	f001 fc8a 	bl	8005a34 <__retarget_lock_init_recursive>
 8004120:	4643      	mov	r3, r8
 8004122:	463a      	mov	r2, r7
 8004124:	4669      	mov	r1, sp
 8004126:	4630      	mov	r0, r6
 8004128:	f7fe fa9a 	bl	8002660 <_vfprintf_r>
 800412c:	1e05      	subs	r5, r0, #0
 800412e:	db07      	blt.n	8004140 <__sbprintf+0x64>
 8004130:	4630      	mov	r0, r6
 8004132:	4669      	mov	r1, sp
 8004134:	f001 f8d6 	bl	80052e4 <_fflush_r>
 8004138:	2800      	cmp	r0, #0
 800413a:	bf18      	it	ne
 800413c:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004140:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 8004144:	065b      	lsls	r3, r3, #25
 8004146:	d503      	bpl.n	8004150 <__sbprintf+0x74>
 8004148:	89a3      	ldrh	r3, [r4, #12]
 800414a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800414e:	81a3      	strh	r3, [r4, #12]
 8004150:	9816      	ldr	r0, [sp, #88]	; 0x58
 8004152:	f001 fc71 	bl	8005a38 <__retarget_lock_close_recursive>
 8004156:	4628      	mov	r0, r5
 8004158:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 800415c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004160 <__swsetup_r>:
 8004160:	b538      	push	{r3, r4, r5, lr}
 8004162:	4b31      	ldr	r3, [pc, #196]	; (8004228 <__swsetup_r+0xc8>)
 8004164:	681b      	ldr	r3, [r3, #0]
 8004166:	4605      	mov	r5, r0
 8004168:	460c      	mov	r4, r1
 800416a:	b113      	cbz	r3, 8004172 <__swsetup_r+0x12>
 800416c:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 800416e:	2a00      	cmp	r2, #0
 8004170:	d03a      	beq.n	80041e8 <__swsetup_r+0x88>
 8004172:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004176:	b293      	uxth	r3, r2
 8004178:	0718      	lsls	r0, r3, #28
 800417a:	d50c      	bpl.n	8004196 <__swsetup_r+0x36>
 800417c:	6920      	ldr	r0, [r4, #16]
 800417e:	b1a8      	cbz	r0, 80041ac <__swsetup_r+0x4c>
 8004180:	f013 0201 	ands.w	r2, r3, #1
 8004184:	d020      	beq.n	80041c8 <__swsetup_r+0x68>
 8004186:	6963      	ldr	r3, [r4, #20]
 8004188:	2200      	movs	r2, #0
 800418a:	425b      	negs	r3, r3
 800418c:	61a3      	str	r3, [r4, #24]
 800418e:	60a2      	str	r2, [r4, #8]
 8004190:	b300      	cbz	r0, 80041d4 <__swsetup_r+0x74>
 8004192:	2000      	movs	r0, #0
 8004194:	bd38      	pop	{r3, r4, r5, pc}
 8004196:	06d9      	lsls	r1, r3, #27
 8004198:	d53e      	bpl.n	8004218 <__swsetup_r+0xb8>
 800419a:	0758      	lsls	r0, r3, #29
 800419c:	d428      	bmi.n	80041f0 <__swsetup_r+0x90>
 800419e:	6920      	ldr	r0, [r4, #16]
 80041a0:	f042 0308 	orr.w	r3, r2, #8
 80041a4:	81a3      	strh	r3, [r4, #12]
 80041a6:	b29b      	uxth	r3, r3
 80041a8:	2800      	cmp	r0, #0
 80041aa:	d1e9      	bne.n	8004180 <__swsetup_r+0x20>
 80041ac:	f403 7220 	and.w	r2, r3, #640	; 0x280
 80041b0:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 80041b4:	d0e4      	beq.n	8004180 <__swsetup_r+0x20>
 80041b6:	4628      	mov	r0, r5
 80041b8:	4621      	mov	r1, r4
 80041ba:	f001 fc71 	bl	8005aa0 <__smakebuf_r>
 80041be:	89a3      	ldrh	r3, [r4, #12]
 80041c0:	6920      	ldr	r0, [r4, #16]
 80041c2:	f013 0201 	ands.w	r2, r3, #1
 80041c6:	d1de      	bne.n	8004186 <__swsetup_r+0x26>
 80041c8:	0799      	lsls	r1, r3, #30
 80041ca:	bf58      	it	pl
 80041cc:	6962      	ldrpl	r2, [r4, #20]
 80041ce:	60a2      	str	r2, [r4, #8]
 80041d0:	2800      	cmp	r0, #0
 80041d2:	d1de      	bne.n	8004192 <__swsetup_r+0x32>
 80041d4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80041d8:	061a      	lsls	r2, r3, #24
 80041da:	d5db      	bpl.n	8004194 <__swsetup_r+0x34>
 80041dc:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80041e0:	81a3      	strh	r3, [r4, #12]
 80041e2:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80041e6:	bd38      	pop	{r3, r4, r5, pc}
 80041e8:	4618      	mov	r0, r3
 80041ea:	f001 f8d7 	bl	800539c <__sinit>
 80041ee:	e7c0      	b.n	8004172 <__swsetup_r+0x12>
 80041f0:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80041f2:	b151      	cbz	r1, 800420a <__swsetup_r+0xaa>
 80041f4:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80041f8:	4299      	cmp	r1, r3
 80041fa:	d004      	beq.n	8004206 <__swsetup_r+0xa6>
 80041fc:	4628      	mov	r0, r5
 80041fe:	f001 f96f 	bl	80054e0 <_free_r>
 8004202:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8004206:	2300      	movs	r3, #0
 8004208:	6323      	str	r3, [r4, #48]	; 0x30
 800420a:	2300      	movs	r3, #0
 800420c:	6920      	ldr	r0, [r4, #16]
 800420e:	6063      	str	r3, [r4, #4]
 8004210:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 8004214:	6020      	str	r0, [r4, #0]
 8004216:	e7c3      	b.n	80041a0 <__swsetup_r+0x40>
 8004218:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800421c:	2309      	movs	r3, #9
 800421e:	602b      	str	r3, [r5, #0]
 8004220:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004224:	81a2      	strh	r2, [r4, #12]
 8004226:	bd38      	pop	{r3, r4, r5, pc}
 8004228:	20000018 	.word	0x20000018

0800422c <register_fini>:
 800422c:	4b02      	ldr	r3, [pc, #8]	; (8004238 <register_fini+0xc>)
 800422e:	b113      	cbz	r3, 8004236 <register_fini+0xa>
 8004230:	4802      	ldr	r0, [pc, #8]	; (800423c <register_fini+0x10>)
 8004232:	f000 b805 	b.w	8004240 <atexit>
 8004236:	4770      	bx	lr
 8004238:	00000000 	.word	0x00000000
 800423c:	0800540d 	.word	0x0800540d

08004240 <atexit>:
 8004240:	2300      	movs	r3, #0
 8004242:	4601      	mov	r1, r0
 8004244:	461a      	mov	r2, r3
 8004246:	4618      	mov	r0, r3
 8004248:	f002 bd58 	b.w	8006cfc <__register_exitproc>

0800424c <quorem>:
 800424c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004250:	6903      	ldr	r3, [r0, #16]
 8004252:	690f      	ldr	r7, [r1, #16]
 8004254:	42bb      	cmp	r3, r7
 8004256:	b083      	sub	sp, #12
 8004258:	f2c0 8086 	blt.w	8004368 <quorem+0x11c>
 800425c:	3f01      	subs	r7, #1
 800425e:	f101 0914 	add.w	r9, r1, #20
 8004262:	f100 0a14 	add.w	sl, r0, #20
 8004266:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 800426a:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 800426e:	00bc      	lsls	r4, r7, #2
 8004270:	3201      	adds	r2, #1
 8004272:	fbb3 f8f2 	udiv	r8, r3, r2
 8004276:	eb0a 0304 	add.w	r3, sl, r4
 800427a:	9400      	str	r4, [sp, #0]
 800427c:	eb09 0b04 	add.w	fp, r9, r4
 8004280:	9301      	str	r3, [sp, #4]
 8004282:	f1b8 0f00 	cmp.w	r8, #0
 8004286:	d038      	beq.n	80042fa <quorem+0xae>
 8004288:	2500      	movs	r5, #0
 800428a:	462e      	mov	r6, r5
 800428c:	46ce      	mov	lr, r9
 800428e:	46d4      	mov	ip, sl
 8004290:	f85e 4b04 	ldr.w	r4, [lr], #4
 8004294:	f8dc 3000 	ldr.w	r3, [ip]
 8004298:	b2a2      	uxth	r2, r4
 800429a:	fb08 5502 	mla	r5, r8, r2, r5
 800429e:	0c22      	lsrs	r2, r4, #16
 80042a0:	0c2c      	lsrs	r4, r5, #16
 80042a2:	fb08 4202 	mla	r2, r8, r2, r4
 80042a6:	b2ad      	uxth	r5, r5
 80042a8:	1b75      	subs	r5, r6, r5
 80042aa:	b296      	uxth	r6, r2
 80042ac:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 80042b0:	fa15 f383 	uxtah	r3, r5, r3
 80042b4:	eb06 4623 	add.w	r6, r6, r3, asr #16
 80042b8:	b29b      	uxth	r3, r3
 80042ba:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 80042be:	45f3      	cmp	fp, lr
 80042c0:	ea4f 4512 	mov.w	r5, r2, lsr #16
 80042c4:	f84c 3b04 	str.w	r3, [ip], #4
 80042c8:	ea4f 4626 	mov.w	r6, r6, asr #16
 80042cc:	d2e0      	bcs.n	8004290 <quorem+0x44>
 80042ce:	9b00      	ldr	r3, [sp, #0]
 80042d0:	f85a 3003 	ldr.w	r3, [sl, r3]
 80042d4:	b98b      	cbnz	r3, 80042fa <quorem+0xae>
 80042d6:	9a01      	ldr	r2, [sp, #4]
 80042d8:	1f13      	subs	r3, r2, #4
 80042da:	459a      	cmp	sl, r3
 80042dc:	d20c      	bcs.n	80042f8 <quorem+0xac>
 80042de:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80042e2:	b94b      	cbnz	r3, 80042f8 <quorem+0xac>
 80042e4:	f1a2 0308 	sub.w	r3, r2, #8
 80042e8:	e002      	b.n	80042f0 <quorem+0xa4>
 80042ea:	681a      	ldr	r2, [r3, #0]
 80042ec:	3b04      	subs	r3, #4
 80042ee:	b91a      	cbnz	r2, 80042f8 <quorem+0xac>
 80042f0:	459a      	cmp	sl, r3
 80042f2:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80042f6:	d3f8      	bcc.n	80042ea <quorem+0x9e>
 80042f8:	6107      	str	r7, [r0, #16]
 80042fa:	4604      	mov	r4, r0
 80042fc:	f002 f944 	bl	8006588 <__mcmp>
 8004300:	2800      	cmp	r0, #0
 8004302:	db2d      	blt.n	8004360 <quorem+0x114>
 8004304:	f108 0801 	add.w	r8, r8, #1
 8004308:	4655      	mov	r5, sl
 800430a:	2300      	movs	r3, #0
 800430c:	f859 1b04 	ldr.w	r1, [r9], #4
 8004310:	6828      	ldr	r0, [r5, #0]
 8004312:	b28a      	uxth	r2, r1
 8004314:	1a9a      	subs	r2, r3, r2
 8004316:	0c0b      	lsrs	r3, r1, #16
 8004318:	fa12 f280 	uxtah	r2, r2, r0
 800431c:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 8004320:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8004324:	b292      	uxth	r2, r2
 8004326:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800432a:	45cb      	cmp	fp, r9
 800432c:	f845 2b04 	str.w	r2, [r5], #4
 8004330:	ea4f 4323 	mov.w	r3, r3, asr #16
 8004334:	d2ea      	bcs.n	800430c <quorem+0xc0>
 8004336:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 800433a:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 800433e:	b97a      	cbnz	r2, 8004360 <quorem+0x114>
 8004340:	1f1a      	subs	r2, r3, #4
 8004342:	4592      	cmp	sl, r2
 8004344:	d20b      	bcs.n	800435e <quorem+0x112>
 8004346:	f853 2c04 	ldr.w	r2, [r3, #-4]
 800434a:	b942      	cbnz	r2, 800435e <quorem+0x112>
 800434c:	3b08      	subs	r3, #8
 800434e:	e002      	b.n	8004356 <quorem+0x10a>
 8004350:	681a      	ldr	r2, [r3, #0]
 8004352:	3b04      	subs	r3, #4
 8004354:	b91a      	cbnz	r2, 800435e <quorem+0x112>
 8004356:	459a      	cmp	sl, r3
 8004358:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800435c:	d3f8      	bcc.n	8004350 <quorem+0x104>
 800435e:	6127      	str	r7, [r4, #16]
 8004360:	4640      	mov	r0, r8
 8004362:	b003      	add	sp, #12
 8004364:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004368:	2000      	movs	r0, #0
 800436a:	b003      	add	sp, #12
 800436c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004370 <_dtoa_r>:
 8004370:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004374:	ec55 4b10 	vmov	r4, r5, d0
 8004378:	b09b      	sub	sp, #108	; 0x6c
 800437a:	6c06      	ldr	r6, [r0, #64]	; 0x40
 800437c:	9102      	str	r1, [sp, #8]
 800437e:	4681      	mov	r9, r0
 8004380:	9207      	str	r2, [sp, #28]
 8004382:	9305      	str	r3, [sp, #20]
 8004384:	e9cd 4500 	strd	r4, r5, [sp]
 8004388:	b156      	cbz	r6, 80043a0 <_dtoa_r+0x30>
 800438a:	6c42      	ldr	r2, [r0, #68]	; 0x44
 800438c:	6072      	str	r2, [r6, #4]
 800438e:	2301      	movs	r3, #1
 8004390:	4093      	lsls	r3, r2
 8004392:	60b3      	str	r3, [r6, #8]
 8004394:	4631      	mov	r1, r6
 8004396:	f001 ff07 	bl	80061a8 <_Bfree>
 800439a:	2300      	movs	r3, #0
 800439c:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 80043a0:	f1b5 0800 	subs.w	r8, r5, #0
 80043a4:	9a24      	ldr	r2, [sp, #144]	; 0x90
 80043a6:	bfb4      	ite	lt
 80043a8:	2301      	movlt	r3, #1
 80043aa:	2300      	movge	r3, #0
 80043ac:	6013      	str	r3, [r2, #0]
 80043ae:	4b76      	ldr	r3, [pc, #472]	; (8004588 <_dtoa_r+0x218>)
 80043b0:	bfbc      	itt	lt
 80043b2:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 80043b6:	f8cd 8004 	strlt.w	r8, [sp, #4]
 80043ba:	ea33 0308 	bics.w	r3, r3, r8
 80043be:	f000 80a6 	beq.w	800450e <_dtoa_r+0x19e>
 80043c2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80043c6:	2200      	movs	r2, #0
 80043c8:	2300      	movs	r3, #0
 80043ca:	4630      	mov	r0, r6
 80043cc:	4639      	mov	r1, r7
 80043ce:	f7fc fe1b 	bl	8001008 <__aeabi_dcmpeq>
 80043d2:	4605      	mov	r5, r0
 80043d4:	b178      	cbz	r0, 80043f6 <_dtoa_r+0x86>
 80043d6:	9a05      	ldr	r2, [sp, #20]
 80043d8:	2301      	movs	r3, #1
 80043da:	6013      	str	r3, [r2, #0]
 80043dc:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80043de:	2b00      	cmp	r3, #0
 80043e0:	f000 80c0 	beq.w	8004564 <_dtoa_r+0x1f4>
 80043e4:	4b69      	ldr	r3, [pc, #420]	; (800458c <_dtoa_r+0x21c>)
 80043e6:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80043e8:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80043ec:	6013      	str	r3, [r2, #0]
 80043ee:	4658      	mov	r0, fp
 80043f0:	b01b      	add	sp, #108	; 0x6c
 80043f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80043f6:	aa18      	add	r2, sp, #96	; 0x60
 80043f8:	a919      	add	r1, sp, #100	; 0x64
 80043fa:	ec47 6b10 	vmov	d0, r6, r7
 80043fe:	4648      	mov	r0, r9
 8004400:	f002 f954 	bl	80066ac <__d2b>
 8004404:	ea5f 5418 	movs.w	r4, r8, lsr #20
 8004408:	4682      	mov	sl, r0
 800440a:	f040 80a0 	bne.w	800454e <_dtoa_r+0x1de>
 800440e:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 8004412:	442c      	add	r4, r5
 8004414:	f204 4332 	addw	r3, r4, #1074	; 0x432
 8004418:	2b20      	cmp	r3, #32
 800441a:	f340 842c 	ble.w	8004c76 <_dtoa_r+0x906>
 800441e:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 8004422:	fa08 f803 	lsl.w	r8, r8, r3
 8004426:	9b00      	ldr	r3, [sp, #0]
 8004428:	f204 4012 	addw	r0, r4, #1042	; 0x412
 800442c:	fa23 f000 	lsr.w	r0, r3, r0
 8004430:	ea48 0000 	orr.w	r0, r8, r0
 8004434:	f7fc fb06 	bl	8000a44 <__aeabi_ui2d>
 8004438:	2301      	movs	r3, #1
 800443a:	4606      	mov	r6, r0
 800443c:	3c01      	subs	r4, #1
 800443e:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 8004442:	930f      	str	r3, [sp, #60]	; 0x3c
 8004444:	4630      	mov	r0, r6
 8004446:	4639      	mov	r1, r7
 8004448:	2200      	movs	r2, #0
 800444a:	4b51      	ldr	r3, [pc, #324]	; (8004590 <_dtoa_r+0x220>)
 800444c:	f7fc f9bc 	bl	80007c8 <__aeabi_dsub>
 8004450:	a347      	add	r3, pc, #284	; (adr r3, 8004570 <_dtoa_r+0x200>)
 8004452:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004456:	f7fc fb6f 	bl	8000b38 <__aeabi_dmul>
 800445a:	a347      	add	r3, pc, #284	; (adr r3, 8004578 <_dtoa_r+0x208>)
 800445c:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004460:	f7fc f9b4 	bl	80007cc <__adddf3>
 8004464:	4606      	mov	r6, r0
 8004466:	4620      	mov	r0, r4
 8004468:	460f      	mov	r7, r1
 800446a:	f7fc fafb 	bl	8000a64 <__aeabi_i2d>
 800446e:	a344      	add	r3, pc, #272	; (adr r3, 8004580 <_dtoa_r+0x210>)
 8004470:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004474:	f7fc fb60 	bl	8000b38 <__aeabi_dmul>
 8004478:	4602      	mov	r2, r0
 800447a:	460b      	mov	r3, r1
 800447c:	4630      	mov	r0, r6
 800447e:	4639      	mov	r1, r7
 8004480:	f7fc f9a4 	bl	80007cc <__adddf3>
 8004484:	4606      	mov	r6, r0
 8004486:	460f      	mov	r7, r1
 8004488:	f7fc fe06 	bl	8001098 <__aeabi_d2iz>
 800448c:	2200      	movs	r2, #0
 800448e:	9006      	str	r0, [sp, #24]
 8004490:	2300      	movs	r3, #0
 8004492:	4630      	mov	r0, r6
 8004494:	4639      	mov	r1, r7
 8004496:	f7fc fdc1 	bl	800101c <__aeabi_dcmplt>
 800449a:	2800      	cmp	r0, #0
 800449c:	f040 8273 	bne.w	8004986 <_dtoa_r+0x616>
 80044a0:	9e06      	ldr	r6, [sp, #24]
 80044a2:	2e16      	cmp	r6, #22
 80044a4:	f200 825d 	bhi.w	8004962 <_dtoa_r+0x5f2>
 80044a8:	4b3a      	ldr	r3, [pc, #232]	; (8004594 <_dtoa_r+0x224>)
 80044aa:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 80044ae:	e9d3 0100 	ldrd	r0, r1, [r3]
 80044b2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80044b6:	f7fc fdcf 	bl	8001058 <__aeabi_dcmpgt>
 80044ba:	2800      	cmp	r0, #0
 80044bc:	f000 83d7 	beq.w	8004c6e <_dtoa_r+0x8fe>
 80044c0:	1e73      	subs	r3, r6, #1
 80044c2:	9306      	str	r3, [sp, #24]
 80044c4:	2300      	movs	r3, #0
 80044c6:	930d      	str	r3, [sp, #52]	; 0x34
 80044c8:	1b2c      	subs	r4, r5, r4
 80044ca:	f1b4 0801 	subs.w	r8, r4, #1
 80044ce:	f100 8254 	bmi.w	800497a <_dtoa_r+0x60a>
 80044d2:	2300      	movs	r3, #0
 80044d4:	9308      	str	r3, [sp, #32]
 80044d6:	9b06      	ldr	r3, [sp, #24]
 80044d8:	2b00      	cmp	r3, #0
 80044da:	f2c0 8245 	blt.w	8004968 <_dtoa_r+0x5f8>
 80044de:	4498      	add	r8, r3
 80044e0:	930c      	str	r3, [sp, #48]	; 0x30
 80044e2:	2300      	movs	r3, #0
 80044e4:	930b      	str	r3, [sp, #44]	; 0x2c
 80044e6:	9b02      	ldr	r3, [sp, #8]
 80044e8:	2b09      	cmp	r3, #9
 80044ea:	d85b      	bhi.n	80045a4 <_dtoa_r+0x234>
 80044ec:	2b05      	cmp	r3, #5
 80044ee:	f340 83c0 	ble.w	8004c72 <_dtoa_r+0x902>
 80044f2:	3b04      	subs	r3, #4
 80044f4:	9302      	str	r3, [sp, #8]
 80044f6:	2500      	movs	r5, #0
 80044f8:	9b02      	ldr	r3, [sp, #8]
 80044fa:	3b02      	subs	r3, #2
 80044fc:	2b03      	cmp	r3, #3
 80044fe:	f200 8498 	bhi.w	8004e32 <_dtoa_r+0xac2>
 8004502:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004506:	03df      	.short	0x03df
 8004508:	03e803bf 	.word	0x03e803bf
 800450c:	04f5      	.short	0x04f5
 800450e:	9a05      	ldr	r2, [sp, #20]
 8004510:	f242 730f 	movw	r3, #9999	; 0x270f
 8004514:	6013      	str	r3, [r2, #0]
 8004516:	9b00      	ldr	r3, [sp, #0]
 8004518:	b983      	cbnz	r3, 800453c <_dtoa_r+0x1cc>
 800451a:	f3c8 0313 	ubfx	r3, r8, #0, #20
 800451e:	b96b      	cbnz	r3, 800453c <_dtoa_r+0x1cc>
 8004520:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004522:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004598 <_dtoa_r+0x228>
 8004526:	2b00      	cmp	r3, #0
 8004528:	f43f af61 	beq.w	80043ee <_dtoa_r+0x7e>
 800452c:	f10b 0308 	add.w	r3, fp, #8
 8004530:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8004532:	4658      	mov	r0, fp
 8004534:	6013      	str	r3, [r2, #0]
 8004536:	b01b      	add	sp, #108	; 0x6c
 8004538:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800453c:	9b25      	ldr	r3, [sp, #148]	; 0x94
 800453e:	f8df b05c 	ldr.w	fp, [pc, #92]	; 800459c <_dtoa_r+0x22c>
 8004542:	2b00      	cmp	r3, #0
 8004544:	f43f af53 	beq.w	80043ee <_dtoa_r+0x7e>
 8004548:	f10b 0303 	add.w	r3, fp, #3
 800454c:	e7f0      	b.n	8004530 <_dtoa_r+0x1c0>
 800454e:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8004552:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8004556:	950f      	str	r5, [sp, #60]	; 0x3c
 8004558:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 800455c:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004560:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8004562:	e76f      	b.n	8004444 <_dtoa_r+0xd4>
 8004564:	f8df b038 	ldr.w	fp, [pc, #56]	; 80045a0 <_dtoa_r+0x230>
 8004568:	4658      	mov	r0, fp
 800456a:	b01b      	add	sp, #108	; 0x6c
 800456c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004570:	636f4361 	.word	0x636f4361
 8004574:	3fd287a7 	.word	0x3fd287a7
 8004578:	8b60c8b3 	.word	0x8b60c8b3
 800457c:	3fc68a28 	.word	0x3fc68a28
 8004580:	509f79fb 	.word	0x509f79fb
 8004584:	3fd34413 	.word	0x3fd34413
 8004588:	7ff00000 	.word	0x7ff00000
 800458c:	080074b5 	.word	0x080074b5
 8004590:	3ff80000 	.word	0x3ff80000
 8004594:	08007510 	.word	0x08007510
 8004598:	080074d8 	.word	0x080074d8
 800459c:	080074e4 	.word	0x080074e4
 80045a0:	080074b4 	.word	0x080074b4
 80045a4:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 80045a8:	2501      	movs	r5, #1
 80045aa:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 80045ae:	2300      	movs	r3, #0
 80045b0:	9302      	str	r3, [sp, #8]
 80045b2:	9307      	str	r3, [sp, #28]
 80045b4:	2100      	movs	r1, #0
 80045b6:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 80045ba:	940e      	str	r4, [sp, #56]	; 0x38
 80045bc:	4648      	mov	r0, r9
 80045be:	f001 fdcd 	bl	800615c <_Balloc>
 80045c2:	2c0e      	cmp	r4, #14
 80045c4:	4683      	mov	fp, r0
 80045c6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80045ca:	f200 80fb 	bhi.w	80047c4 <_dtoa_r+0x454>
 80045ce:	2d00      	cmp	r5, #0
 80045d0:	f000 80f8 	beq.w	80047c4 <_dtoa_r+0x454>
 80045d4:	ed9d 7b00 	vldr	d7, [sp]
 80045d8:	9906      	ldr	r1, [sp, #24]
 80045da:	2900      	cmp	r1, #0
 80045dc:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80045e0:	f340 83e5 	ble.w	8004dae <_dtoa_r+0xa3e>
 80045e4:	4b9d      	ldr	r3, [pc, #628]	; (800485c <_dtoa_r+0x4ec>)
 80045e6:	f001 020f 	and.w	r2, r1, #15
 80045ea:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80045ee:	ed93 7b00 	vldr	d7, [r3]
 80045f2:	110c      	asrs	r4, r1, #4
 80045f4:	06e2      	lsls	r2, r4, #27
 80045f6:	ed8d 7b00 	vstr	d7, [sp]
 80045fa:	f140 849e 	bpl.w	8004f3a <_dtoa_r+0xbca>
 80045fe:	4b98      	ldr	r3, [pc, #608]	; (8004860 <_dtoa_r+0x4f0>)
 8004600:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004604:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8004608:	f7fc fbc0 	bl	8000d8c <__aeabi_ddiv>
 800460c:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8004610:	f004 040f 	and.w	r4, r4, #15
 8004614:	2603      	movs	r6, #3
 8004616:	b17c      	cbz	r4, 8004638 <_dtoa_r+0x2c8>
 8004618:	e9dd 0100 	ldrd	r0, r1, [sp]
 800461c:	4d90      	ldr	r5, [pc, #576]	; (8004860 <_dtoa_r+0x4f0>)
 800461e:	07e3      	lsls	r3, r4, #31
 8004620:	d504      	bpl.n	800462c <_dtoa_r+0x2bc>
 8004622:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004626:	f7fc fa87 	bl	8000b38 <__aeabi_dmul>
 800462a:	3601      	adds	r6, #1
 800462c:	1064      	asrs	r4, r4, #1
 800462e:	f105 0508 	add.w	r5, r5, #8
 8004632:	d1f4      	bne.n	800461e <_dtoa_r+0x2ae>
 8004634:	e9cd 0100 	strd	r0, r1, [sp]
 8004638:	e9dd 2300 	ldrd	r2, r3, [sp]
 800463c:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004640:	f7fc fba4 	bl	8000d8c <__aeabi_ddiv>
 8004644:	e9cd 0100 	strd	r0, r1, [sp]
 8004648:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 800464a:	b143      	cbz	r3, 800465e <_dtoa_r+0x2ee>
 800464c:	2200      	movs	r2, #0
 800464e:	4b85      	ldr	r3, [pc, #532]	; (8004864 <_dtoa_r+0x4f4>)
 8004650:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004654:	f7fc fce2 	bl	800101c <__aeabi_dcmplt>
 8004658:	2800      	cmp	r0, #0
 800465a:	f040 84ff 	bne.w	800505c <_dtoa_r+0xcec>
 800465e:	4630      	mov	r0, r6
 8004660:	f7fc fa00 	bl	8000a64 <__aeabi_i2d>
 8004664:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004668:	f7fc fa66 	bl	8000b38 <__aeabi_dmul>
 800466c:	4b7e      	ldr	r3, [pc, #504]	; (8004868 <_dtoa_r+0x4f8>)
 800466e:	2200      	movs	r2, #0
 8004670:	f7fc f8ac 	bl	80007cc <__adddf3>
 8004674:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004676:	4606      	mov	r6, r0
 8004678:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800467c:	2b00      	cmp	r3, #0
 800467e:	f000 841c 	beq.w	8004eba <_dtoa_r+0xb4a>
 8004682:	9b06      	ldr	r3, [sp, #24]
 8004684:	9316      	str	r3, [sp, #88]	; 0x58
 8004686:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004688:	9312      	str	r3, [sp, #72]	; 0x48
 800468a:	e9dd 0100 	ldrd	r0, r1, [sp]
 800468e:	f7fc fd03 	bl	8001098 <__aeabi_d2iz>
 8004692:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004694:	4b71      	ldr	r3, [pc, #452]	; (800485c <_dtoa_r+0x4ec>)
 8004696:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 800469a:	ed13 7b02 	vldr	d7, [r3, #-8]
 800469e:	f100 0530 	add.w	r5, r0, #48	; 0x30
 80046a2:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 80046a6:	f7fc f9dd 	bl	8000a64 <__aeabi_i2d>
 80046aa:	460b      	mov	r3, r1
 80046ac:	4602      	mov	r2, r0
 80046ae:	e9dd 0100 	ldrd	r0, r1, [sp]
 80046b2:	e9cd 6700 	strd	r6, r7, [sp]
 80046b6:	f7fc f887 	bl	80007c8 <__aeabi_dsub>
 80046ba:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80046bc:	b2ed      	uxtb	r5, r5
 80046be:	4606      	mov	r6, r0
 80046c0:	460f      	mov	r7, r1
 80046c2:	f10b 0401 	add.w	r4, fp, #1
 80046c6:	2b00      	cmp	r3, #0
 80046c8:	f000 8458 	beq.w	8004f7c <_dtoa_r+0xc0c>
 80046cc:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 80046d0:	2000      	movs	r0, #0
 80046d2:	4966      	ldr	r1, [pc, #408]	; (800486c <_dtoa_r+0x4fc>)
 80046d4:	f7fc fb5a 	bl	8000d8c <__aeabi_ddiv>
 80046d8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80046dc:	f7fc f874 	bl	80007c8 <__aeabi_dsub>
 80046e0:	f88b 5000 	strb.w	r5, [fp]
 80046e4:	4632      	mov	r2, r6
 80046e6:	463b      	mov	r3, r7
 80046e8:	e9cd 0100 	strd	r0, r1, [sp]
 80046ec:	f7fc fcb4 	bl	8001058 <__aeabi_dcmpgt>
 80046f0:	2800      	cmp	r0, #0
 80046f2:	f040 8502 	bne.w	80050fa <_dtoa_r+0xd8a>
 80046f6:	4632      	mov	r2, r6
 80046f8:	463b      	mov	r3, r7
 80046fa:	2000      	movs	r0, #0
 80046fc:	4959      	ldr	r1, [pc, #356]	; (8004864 <_dtoa_r+0x4f4>)
 80046fe:	f7fc f863 	bl	80007c8 <__aeabi_dsub>
 8004702:	4602      	mov	r2, r0
 8004704:	460b      	mov	r3, r1
 8004706:	e9dd 0100 	ldrd	r0, r1, [sp]
 800470a:	f7fc fca5 	bl	8001058 <__aeabi_dcmpgt>
 800470e:	2800      	cmp	r0, #0
 8004710:	f040 84fb 	bne.w	800510a <_dtoa_r+0xd9a>
 8004714:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8004716:	2a01      	cmp	r2, #1
 8004718:	d050      	beq.n	80047bc <_dtoa_r+0x44c>
 800471a:	445a      	add	r2, fp
 800471c:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8004720:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8004724:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8004728:	4692      	mov	sl, r2
 800472a:	46cb      	mov	fp, r9
 800472c:	e9dd 8900 	ldrd	r8, r9, [sp]
 8004730:	e00c      	b.n	800474c <_dtoa_r+0x3dc>
 8004732:	2000      	movs	r0, #0
 8004734:	494b      	ldr	r1, [pc, #300]	; (8004864 <_dtoa_r+0x4f4>)
 8004736:	f7fc f847 	bl	80007c8 <__aeabi_dsub>
 800473a:	4642      	mov	r2, r8
 800473c:	464b      	mov	r3, r9
 800473e:	f7fc fc6d 	bl	800101c <__aeabi_dcmplt>
 8004742:	2800      	cmp	r0, #0
 8004744:	f040 84dc 	bne.w	8005100 <_dtoa_r+0xd90>
 8004748:	4554      	cmp	r4, sl
 800474a:	d030      	beq.n	80047ae <_dtoa_r+0x43e>
 800474c:	4640      	mov	r0, r8
 800474e:	4649      	mov	r1, r9
 8004750:	2200      	movs	r2, #0
 8004752:	4b47      	ldr	r3, [pc, #284]	; (8004870 <_dtoa_r+0x500>)
 8004754:	f7fc f9f0 	bl	8000b38 <__aeabi_dmul>
 8004758:	2200      	movs	r2, #0
 800475a:	4b45      	ldr	r3, [pc, #276]	; (8004870 <_dtoa_r+0x500>)
 800475c:	4680      	mov	r8, r0
 800475e:	4689      	mov	r9, r1
 8004760:	4630      	mov	r0, r6
 8004762:	4639      	mov	r1, r7
 8004764:	f7fc f9e8 	bl	8000b38 <__aeabi_dmul>
 8004768:	460f      	mov	r7, r1
 800476a:	4606      	mov	r6, r0
 800476c:	f7fc fc94 	bl	8001098 <__aeabi_d2iz>
 8004770:	4605      	mov	r5, r0
 8004772:	f7fc f977 	bl	8000a64 <__aeabi_i2d>
 8004776:	4602      	mov	r2, r0
 8004778:	460b      	mov	r3, r1
 800477a:	4630      	mov	r0, r6
 800477c:	4639      	mov	r1, r7
 800477e:	f7fc f823 	bl	80007c8 <__aeabi_dsub>
 8004782:	3530      	adds	r5, #48	; 0x30
 8004784:	b2ed      	uxtb	r5, r5
 8004786:	4642      	mov	r2, r8
 8004788:	464b      	mov	r3, r9
 800478a:	f804 5b01 	strb.w	r5, [r4], #1
 800478e:	4606      	mov	r6, r0
 8004790:	460f      	mov	r7, r1
 8004792:	f7fc fc43 	bl	800101c <__aeabi_dcmplt>
 8004796:	4632      	mov	r2, r6
 8004798:	463b      	mov	r3, r7
 800479a:	2800      	cmp	r0, #0
 800479c:	d0c9      	beq.n	8004732 <_dtoa_r+0x3c2>
 800479e:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80047a0:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80047a4:	9306      	str	r3, [sp, #24]
 80047a6:	46d9      	mov	r9, fp
 80047a8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80047ac:	e236      	b.n	8004c1c <_dtoa_r+0x8ac>
 80047ae:	46d9      	mov	r9, fp
 80047b0:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 80047b4:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80047b8:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80047bc:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 80047c0:	e9cd 3400 	strd	r3, r4, [sp]
 80047c4:	9b19      	ldr	r3, [sp, #100]	; 0x64
 80047c6:	2b00      	cmp	r3, #0
 80047c8:	f2c0 80ae 	blt.w	8004928 <_dtoa_r+0x5b8>
 80047cc:	9a06      	ldr	r2, [sp, #24]
 80047ce:	2a0e      	cmp	r2, #14
 80047d0:	f300 80aa 	bgt.w	8004928 <_dtoa_r+0x5b8>
 80047d4:	4b21      	ldr	r3, [pc, #132]	; (800485c <_dtoa_r+0x4ec>)
 80047d6:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80047da:	ed93 7b00 	vldr	d7, [r3]
 80047de:	9b07      	ldr	r3, [sp, #28]
 80047e0:	2b00      	cmp	r3, #0
 80047e2:	ed8d 7b02 	vstr	d7, [sp, #8]
 80047e6:	f2c0 82be 	blt.w	8004d66 <_dtoa_r+0x9f6>
 80047ea:	e9dd 6700 	ldrd	r6, r7, [sp]
 80047ee:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80047f2:	4630      	mov	r0, r6
 80047f4:	4639      	mov	r1, r7
 80047f6:	f7fc fac9 	bl	8000d8c <__aeabi_ddiv>
 80047fa:	f7fc fc4d 	bl	8001098 <__aeabi_d2iz>
 80047fe:	4605      	mov	r5, r0
 8004800:	f7fc f930 	bl	8000a64 <__aeabi_i2d>
 8004804:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004808:	f7fc f996 	bl	8000b38 <__aeabi_dmul>
 800480c:	460b      	mov	r3, r1
 800480e:	4602      	mov	r2, r0
 8004810:	4639      	mov	r1, r7
 8004812:	4630      	mov	r0, r6
 8004814:	f7fb ffd8 	bl	80007c8 <__aeabi_dsub>
 8004818:	f105 0330 	add.w	r3, r5, #48	; 0x30
 800481c:	f88b 3000 	strb.w	r3, [fp]
 8004820:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004822:	2b01      	cmp	r3, #1
 8004824:	4606      	mov	r6, r0
 8004826:	460f      	mov	r7, r1
 8004828:	f10b 0401 	add.w	r4, fp, #1
 800482c:	d053      	beq.n	80048d6 <_dtoa_r+0x566>
 800482e:	2200      	movs	r2, #0
 8004830:	4b0f      	ldr	r3, [pc, #60]	; (8004870 <_dtoa_r+0x500>)
 8004832:	f7fc f981 	bl	8000b38 <__aeabi_dmul>
 8004836:	2200      	movs	r2, #0
 8004838:	2300      	movs	r3, #0
 800483a:	4606      	mov	r6, r0
 800483c:	460f      	mov	r7, r1
 800483e:	f7fc fbe3 	bl	8001008 <__aeabi_dcmpeq>
 8004842:	2800      	cmp	r0, #0
 8004844:	f040 81ea 	bne.w	8004c1c <_dtoa_r+0x8ac>
 8004848:	f8cd a000 	str.w	sl, [sp]
 800484c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004850:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004854:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004858:	e017      	b.n	800488a <_dtoa_r+0x51a>
 800485a:	bf00      	nop
 800485c:	08007510 	.word	0x08007510
 8004860:	080074e8 	.word	0x080074e8
 8004864:	3ff00000 	.word	0x3ff00000
 8004868:	401c0000 	.word	0x401c0000
 800486c:	3fe00000 	.word	0x3fe00000
 8004870:	40240000 	.word	0x40240000
 8004874:	f7fc f960 	bl	8000b38 <__aeabi_dmul>
 8004878:	2200      	movs	r2, #0
 800487a:	2300      	movs	r3, #0
 800487c:	4606      	mov	r6, r0
 800487e:	460f      	mov	r7, r1
 8004880:	f7fc fbc2 	bl	8001008 <__aeabi_dcmpeq>
 8004884:	2800      	cmp	r0, #0
 8004886:	f040 833d 	bne.w	8004f04 <_dtoa_r+0xb94>
 800488a:	464a      	mov	r2, r9
 800488c:	4653      	mov	r3, sl
 800488e:	4630      	mov	r0, r6
 8004890:	4639      	mov	r1, r7
 8004892:	f7fc fa7b 	bl	8000d8c <__aeabi_ddiv>
 8004896:	f7fc fbff 	bl	8001098 <__aeabi_d2iz>
 800489a:	4605      	mov	r5, r0
 800489c:	f7fc f8e2 	bl	8000a64 <__aeabi_i2d>
 80048a0:	464a      	mov	r2, r9
 80048a2:	4653      	mov	r3, sl
 80048a4:	f7fc f948 	bl	8000b38 <__aeabi_dmul>
 80048a8:	4602      	mov	r2, r0
 80048aa:	460b      	mov	r3, r1
 80048ac:	4630      	mov	r0, r6
 80048ae:	4639      	mov	r1, r7
 80048b0:	f7fb ff8a 	bl	80007c8 <__aeabi_dsub>
 80048b4:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 80048b8:	f804 cb01 	strb.w	ip, [r4], #1
 80048bc:	eba4 0c0b 	sub.w	ip, r4, fp
 80048c0:	45e0      	cmp	r8, ip
 80048c2:	4606      	mov	r6, r0
 80048c4:	460f      	mov	r7, r1
 80048c6:	f04f 0200 	mov.w	r2, #0
 80048ca:	4bc1      	ldr	r3, [pc, #772]	; (8004bd0 <_dtoa_r+0x860>)
 80048cc:	d1d2      	bne.n	8004874 <_dtoa_r+0x504>
 80048ce:	f8dd a000 	ldr.w	sl, [sp]
 80048d2:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80048d6:	4632      	mov	r2, r6
 80048d8:	463b      	mov	r3, r7
 80048da:	4630      	mov	r0, r6
 80048dc:	4639      	mov	r1, r7
 80048de:	f7fb ff75 	bl	80007cc <__adddf3>
 80048e2:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048e6:	4606      	mov	r6, r0
 80048e8:	460f      	mov	r7, r1
 80048ea:	f7fc fbb5 	bl	8001058 <__aeabi_dcmpgt>
 80048ee:	b958      	cbnz	r0, 8004908 <_dtoa_r+0x598>
 80048f0:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80048f4:	4630      	mov	r0, r6
 80048f6:	4639      	mov	r1, r7
 80048f8:	f7fc fb86 	bl	8001008 <__aeabi_dcmpeq>
 80048fc:	2800      	cmp	r0, #0
 80048fe:	f000 818d 	beq.w	8004c1c <_dtoa_r+0x8ac>
 8004902:	07e9      	lsls	r1, r5, #31
 8004904:	f140 818a 	bpl.w	8004c1c <_dtoa_r+0x8ac>
 8004908:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 800490c:	e005      	b.n	800491a <_dtoa_r+0x5aa>
 800490e:	459b      	cmp	fp, r3
 8004910:	f000 8373 	beq.w	8004ffa <_dtoa_r+0xc8a>
 8004914:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004918:	461c      	mov	r4, r3
 800491a:	2d39      	cmp	r5, #57	; 0x39
 800491c:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004920:	d0f5      	beq.n	800490e <_dtoa_r+0x59e>
 8004922:	3501      	adds	r5, #1
 8004924:	701d      	strb	r5, [r3, #0]
 8004926:	e179      	b.n	8004c1c <_dtoa_r+0x8ac>
 8004928:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800492a:	2a00      	cmp	r2, #0
 800492c:	d03b      	beq.n	80049a6 <_dtoa_r+0x636>
 800492e:	9a02      	ldr	r2, [sp, #8]
 8004930:	2a01      	cmp	r2, #1
 8004932:	f340 820b 	ble.w	8004d4c <_dtoa_r+0x9dc>
 8004936:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004938:	1e5f      	subs	r7, r3, #1
 800493a:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800493c:	42bb      	cmp	r3, r7
 800493e:	f2c0 82e6 	blt.w	8004f0e <_dtoa_r+0xb9e>
 8004942:	1bdf      	subs	r7, r3, r7
 8004944:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004946:	2b00      	cmp	r3, #0
 8004948:	f2c0 830b 	blt.w	8004f62 <_dtoa_r+0xbf2>
 800494c:	9a08      	ldr	r2, [sp, #32]
 800494e:	4614      	mov	r4, r2
 8004950:	441a      	add	r2, r3
 8004952:	4498      	add	r8, r3
 8004954:	9208      	str	r2, [sp, #32]
 8004956:	2101      	movs	r1, #1
 8004958:	4648      	mov	r0, r9
 800495a:	f001 fcbf 	bl	80062dc <__i2b>
 800495e:	4605      	mov	r5, r0
 8004960:	e024      	b.n	80049ac <_dtoa_r+0x63c>
 8004962:	2301      	movs	r3, #1
 8004964:	930d      	str	r3, [sp, #52]	; 0x34
 8004966:	e5af      	b.n	80044c8 <_dtoa_r+0x158>
 8004968:	9a08      	ldr	r2, [sp, #32]
 800496a:	9b06      	ldr	r3, [sp, #24]
 800496c:	1ad2      	subs	r2, r2, r3
 800496e:	425b      	negs	r3, r3
 8004970:	930b      	str	r3, [sp, #44]	; 0x2c
 8004972:	2300      	movs	r3, #0
 8004974:	9208      	str	r2, [sp, #32]
 8004976:	930c      	str	r3, [sp, #48]	; 0x30
 8004978:	e5b5      	b.n	80044e6 <_dtoa_r+0x176>
 800497a:	f1c4 0301 	rsb	r3, r4, #1
 800497e:	9308      	str	r3, [sp, #32]
 8004980:	f04f 0800 	mov.w	r8, #0
 8004984:	e5a7      	b.n	80044d6 <_dtoa_r+0x166>
 8004986:	f8dd 8018 	ldr.w	r8, [sp, #24]
 800498a:	4640      	mov	r0, r8
 800498c:	f7fc f86a 	bl	8000a64 <__aeabi_i2d>
 8004990:	4632      	mov	r2, r6
 8004992:	463b      	mov	r3, r7
 8004994:	f7fc fb38 	bl	8001008 <__aeabi_dcmpeq>
 8004998:	2800      	cmp	r0, #0
 800499a:	f47f ad81 	bne.w	80044a0 <_dtoa_r+0x130>
 800499e:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80049a2:	9306      	str	r3, [sp, #24]
 80049a4:	e57c      	b.n	80044a0 <_dtoa_r+0x130>
 80049a6:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 80049a8:	9c08      	ldr	r4, [sp, #32]
 80049aa:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 80049ac:	2c00      	cmp	r4, #0
 80049ae:	dd0c      	ble.n	80049ca <_dtoa_r+0x65a>
 80049b0:	f1b8 0f00 	cmp.w	r8, #0
 80049b4:	dd09      	ble.n	80049ca <_dtoa_r+0x65a>
 80049b6:	4544      	cmp	r4, r8
 80049b8:	9a08      	ldr	r2, [sp, #32]
 80049ba:	4623      	mov	r3, r4
 80049bc:	bfa8      	it	ge
 80049be:	4643      	movge	r3, r8
 80049c0:	1ad2      	subs	r2, r2, r3
 80049c2:	9208      	str	r2, [sp, #32]
 80049c4:	1ae4      	subs	r4, r4, r3
 80049c6:	eba8 0803 	sub.w	r8, r8, r3
 80049ca:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80049cc:	b16b      	cbz	r3, 80049ea <_dtoa_r+0x67a>
 80049ce:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80049d0:	2a00      	cmp	r2, #0
 80049d2:	f000 8290 	beq.w	8004ef6 <_dtoa_r+0xb86>
 80049d6:	1bde      	subs	r6, r3, r7
 80049d8:	2f00      	cmp	r7, #0
 80049da:	f040 819b 	bne.w	8004d14 <_dtoa_r+0x9a4>
 80049de:	4651      	mov	r1, sl
 80049e0:	4632      	mov	r2, r6
 80049e2:	4648      	mov	r0, r9
 80049e4:	f001 fd2a 	bl	800643c <__pow5mult>
 80049e8:	4682      	mov	sl, r0
 80049ea:	2101      	movs	r1, #1
 80049ec:	4648      	mov	r0, r9
 80049ee:	f001 fc75 	bl	80062dc <__i2b>
 80049f2:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80049f4:	4606      	mov	r6, r0
 80049f6:	2a00      	cmp	r2, #0
 80049f8:	f040 8125 	bne.w	8004c46 <_dtoa_r+0x8d6>
 80049fc:	9b02      	ldr	r3, [sp, #8]
 80049fe:	2b01      	cmp	r3, #1
 8004a00:	f340 816c 	ble.w	8004cdc <_dtoa_r+0x96c>
 8004a04:	2001      	movs	r0, #1
 8004a06:	4440      	add	r0, r8
 8004a08:	f010 001f 	ands.w	r0, r0, #31
 8004a0c:	f000 8119 	beq.w	8004c42 <_dtoa_r+0x8d2>
 8004a10:	f1c0 0320 	rsb	r3, r0, #32
 8004a14:	2b04      	cmp	r3, #4
 8004a16:	f340 83ac 	ble.w	8005172 <_dtoa_r+0xe02>
 8004a1a:	f1c0 001c 	rsb	r0, r0, #28
 8004a1e:	9b08      	ldr	r3, [sp, #32]
 8004a20:	4403      	add	r3, r0
 8004a22:	9308      	str	r3, [sp, #32]
 8004a24:	4404      	add	r4, r0
 8004a26:	4480      	add	r8, r0
 8004a28:	9b08      	ldr	r3, [sp, #32]
 8004a2a:	2b00      	cmp	r3, #0
 8004a2c:	dd05      	ble.n	8004a3a <_dtoa_r+0x6ca>
 8004a2e:	4651      	mov	r1, sl
 8004a30:	461a      	mov	r2, r3
 8004a32:	4648      	mov	r0, r9
 8004a34:	f001 fd52 	bl	80064dc <__lshift>
 8004a38:	4682      	mov	sl, r0
 8004a3a:	f1b8 0f00 	cmp.w	r8, #0
 8004a3e:	dd05      	ble.n	8004a4c <_dtoa_r+0x6dc>
 8004a40:	4631      	mov	r1, r6
 8004a42:	4642      	mov	r2, r8
 8004a44:	4648      	mov	r0, r9
 8004a46:	f001 fd49 	bl	80064dc <__lshift>
 8004a4a:	4606      	mov	r6, r0
 8004a4c:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004a4e:	2b00      	cmp	r3, #0
 8004a50:	d177      	bne.n	8004b42 <_dtoa_r+0x7d2>
 8004a52:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004a54:	2b00      	cmp	r3, #0
 8004a56:	f340 8209 	ble.w	8004e6c <_dtoa_r+0xafc>
 8004a5a:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004a5c:	2b00      	cmp	r3, #0
 8004a5e:	f000 8089 	beq.w	8004b74 <_dtoa_r+0x804>
 8004a62:	2c00      	cmp	r4, #0
 8004a64:	f300 816b 	bgt.w	8004d3e <_dtoa_r+0x9ce>
 8004a68:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004a6a:	2b00      	cmp	r3, #0
 8004a6c:	f040 81cd 	bne.w	8004e0a <_dtoa_r+0xa9a>
 8004a70:	46a8      	mov	r8, r5
 8004a72:	9a00      	ldr	r2, [sp, #0]
 8004a74:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004a78:	f002 0201 	and.w	r2, r2, #1
 8004a7c:	920a      	str	r2, [sp, #40]	; 0x28
 8004a7e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004a80:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004a84:	441a      	add	r2, r3
 8004a86:	465f      	mov	r7, fp
 8004a88:	9209      	str	r2, [sp, #36]	; 0x24
 8004a8a:	46b3      	mov	fp, r6
 8004a8c:	4659      	mov	r1, fp
 8004a8e:	4650      	mov	r0, sl
 8004a90:	f7ff fbdc 	bl	800424c <quorem>
 8004a94:	4629      	mov	r1, r5
 8004a96:	4604      	mov	r4, r0
 8004a98:	4650      	mov	r0, sl
 8004a9a:	f001 fd75 	bl	8006588 <__mcmp>
 8004a9e:	4659      	mov	r1, fp
 8004aa0:	4606      	mov	r6, r0
 8004aa2:	4642      	mov	r2, r8
 8004aa4:	4648      	mov	r0, r9
 8004aa6:	f001 fd8b 	bl	80065c0 <__mdiff>
 8004aaa:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004aae:	9300      	str	r3, [sp, #0]
 8004ab0:	68c3      	ldr	r3, [r0, #12]
 8004ab2:	4601      	mov	r1, r0
 8004ab4:	2b00      	cmp	r3, #0
 8004ab6:	f040 81d4 	bne.w	8004e62 <_dtoa_r+0xaf2>
 8004aba:	9008      	str	r0, [sp, #32]
 8004abc:	4650      	mov	r0, sl
 8004abe:	f001 fd63 	bl	8006588 <__mcmp>
 8004ac2:	9a08      	ldr	r2, [sp, #32]
 8004ac4:	9007      	str	r0, [sp, #28]
 8004ac6:	4611      	mov	r1, r2
 8004ac8:	4648      	mov	r0, r9
 8004aca:	f001 fb6d 	bl	80061a8 <_Bfree>
 8004ace:	9b07      	ldr	r3, [sp, #28]
 8004ad0:	b933      	cbnz	r3, 8004ae0 <_dtoa_r+0x770>
 8004ad2:	9a02      	ldr	r2, [sp, #8]
 8004ad4:	b922      	cbnz	r2, 8004ae0 <_dtoa_r+0x770>
 8004ad6:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004ad8:	2b00      	cmp	r3, #0
 8004ada:	f000 8319 	beq.w	8005110 <_dtoa_r+0xda0>
 8004ade:	9b02      	ldr	r3, [sp, #8]
 8004ae0:	2e00      	cmp	r6, #0
 8004ae2:	f2c0 821c 	blt.w	8004f1e <_dtoa_r+0xbae>
 8004ae6:	d105      	bne.n	8004af4 <_dtoa_r+0x784>
 8004ae8:	9a02      	ldr	r2, [sp, #8]
 8004aea:	b91a      	cbnz	r2, 8004af4 <_dtoa_r+0x784>
 8004aec:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004aee:	2a00      	cmp	r2, #0
 8004af0:	f000 8215 	beq.w	8004f1e <_dtoa_r+0xbae>
 8004af4:	2b00      	cmp	r3, #0
 8004af6:	f107 0401 	add.w	r4, r7, #1
 8004afa:	f300 8225 	bgt.w	8004f48 <_dtoa_r+0xbd8>
 8004afe:	9b00      	ldr	r3, [sp, #0]
 8004b00:	703b      	strb	r3, [r7, #0]
 8004b02:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b04:	42bb      	cmp	r3, r7
 8004b06:	f000 8230 	beq.w	8004f6a <_dtoa_r+0xbfa>
 8004b0a:	4651      	mov	r1, sl
 8004b0c:	2300      	movs	r3, #0
 8004b0e:	220a      	movs	r2, #10
 8004b10:	4648      	mov	r0, r9
 8004b12:	f001 fb53 	bl	80061bc <__multadd>
 8004b16:	4545      	cmp	r5, r8
 8004b18:	4682      	mov	sl, r0
 8004b1a:	4629      	mov	r1, r5
 8004b1c:	f04f 0300 	mov.w	r3, #0
 8004b20:	f04f 020a 	mov.w	r2, #10
 8004b24:	4648      	mov	r0, r9
 8004b26:	f000 8196 	beq.w	8004e56 <_dtoa_r+0xae6>
 8004b2a:	f001 fb47 	bl	80061bc <__multadd>
 8004b2e:	4641      	mov	r1, r8
 8004b30:	4605      	mov	r5, r0
 8004b32:	2300      	movs	r3, #0
 8004b34:	220a      	movs	r2, #10
 8004b36:	4648      	mov	r0, r9
 8004b38:	f001 fb40 	bl	80061bc <__multadd>
 8004b3c:	4627      	mov	r7, r4
 8004b3e:	4680      	mov	r8, r0
 8004b40:	e7a4      	b.n	8004a8c <_dtoa_r+0x71c>
 8004b42:	4631      	mov	r1, r6
 8004b44:	4650      	mov	r0, sl
 8004b46:	f001 fd1f 	bl	8006588 <__mcmp>
 8004b4a:	2800      	cmp	r0, #0
 8004b4c:	da81      	bge.n	8004a52 <_dtoa_r+0x6e2>
 8004b4e:	9f06      	ldr	r7, [sp, #24]
 8004b50:	4651      	mov	r1, sl
 8004b52:	2300      	movs	r3, #0
 8004b54:	220a      	movs	r2, #10
 8004b56:	4648      	mov	r0, r9
 8004b58:	3f01      	subs	r7, #1
 8004b5a:	9706      	str	r7, [sp, #24]
 8004b5c:	f001 fb2e 	bl	80061bc <__multadd>
 8004b60:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004b62:	4682      	mov	sl, r0
 8004b64:	2b00      	cmp	r3, #0
 8004b66:	f040 82eb 	bne.w	8005140 <_dtoa_r+0xdd0>
 8004b6a:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004b6c:	2b00      	cmp	r3, #0
 8004b6e:	f340 82f3 	ble.w	8005158 <_dtoa_r+0xde8>
 8004b72:	9309      	str	r3, [sp, #36]	; 0x24
 8004b74:	465c      	mov	r4, fp
 8004b76:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004b7a:	e002      	b.n	8004b82 <_dtoa_r+0x812>
 8004b7c:	f001 fb1e 	bl	80061bc <__multadd>
 8004b80:	4682      	mov	sl, r0
 8004b82:	4631      	mov	r1, r6
 8004b84:	4650      	mov	r0, sl
 8004b86:	f7ff fb61 	bl	800424c <quorem>
 8004b8a:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004b8e:	f804 7b01 	strb.w	r7, [r4], #1
 8004b92:	eba4 030b 	sub.w	r3, r4, fp
 8004b96:	4598      	cmp	r8, r3
 8004b98:	f04f 020a 	mov.w	r2, #10
 8004b9c:	f04f 0300 	mov.w	r3, #0
 8004ba0:	4651      	mov	r1, sl
 8004ba2:	4648      	mov	r0, r9
 8004ba4:	dcea      	bgt.n	8004b7c <_dtoa_r+0x80c>
 8004ba6:	2300      	movs	r3, #0
 8004ba8:	9700      	str	r7, [sp, #0]
 8004baa:	9302      	str	r3, [sp, #8]
 8004bac:	4651      	mov	r1, sl
 8004bae:	2201      	movs	r2, #1
 8004bb0:	4648      	mov	r0, r9
 8004bb2:	f001 fc93 	bl	80064dc <__lshift>
 8004bb6:	4631      	mov	r1, r6
 8004bb8:	4682      	mov	sl, r0
 8004bba:	f001 fce5 	bl	8006588 <__mcmp>
 8004bbe:	2800      	cmp	r0, #0
 8004bc0:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004bc4:	dc14      	bgt.n	8004bf0 <_dtoa_r+0x880>
 8004bc6:	d108      	bne.n	8004bda <_dtoa_r+0x86a>
 8004bc8:	9b00      	ldr	r3, [sp, #0]
 8004bca:	07db      	lsls	r3, r3, #31
 8004bcc:	d410      	bmi.n	8004bf0 <_dtoa_r+0x880>
 8004bce:	e004      	b.n	8004bda <_dtoa_r+0x86a>
 8004bd0:	40240000 	.word	0x40240000
 8004bd4:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004bd8:	461c      	mov	r4, r3
 8004bda:	2a30      	cmp	r2, #48	; 0x30
 8004bdc:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004be0:	d0f8      	beq.n	8004bd4 <_dtoa_r+0x864>
 8004be2:	e00b      	b.n	8004bfc <_dtoa_r+0x88c>
 8004be4:	459b      	cmp	fp, r3
 8004be6:	f000 814e 	beq.w	8004e86 <_dtoa_r+0xb16>
 8004bea:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004bee:	461c      	mov	r4, r3
 8004bf0:	2a39      	cmp	r2, #57	; 0x39
 8004bf2:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004bf6:	d0f5      	beq.n	8004be4 <_dtoa_r+0x874>
 8004bf8:	3201      	adds	r2, #1
 8004bfa:	701a      	strb	r2, [r3, #0]
 8004bfc:	4631      	mov	r1, r6
 8004bfe:	4648      	mov	r0, r9
 8004c00:	f001 fad2 	bl	80061a8 <_Bfree>
 8004c04:	b155      	cbz	r5, 8004c1c <_dtoa_r+0x8ac>
 8004c06:	9902      	ldr	r1, [sp, #8]
 8004c08:	b121      	cbz	r1, 8004c14 <_dtoa_r+0x8a4>
 8004c0a:	42a9      	cmp	r1, r5
 8004c0c:	d002      	beq.n	8004c14 <_dtoa_r+0x8a4>
 8004c0e:	4648      	mov	r0, r9
 8004c10:	f001 faca 	bl	80061a8 <_Bfree>
 8004c14:	4629      	mov	r1, r5
 8004c16:	4648      	mov	r0, r9
 8004c18:	f001 fac6 	bl	80061a8 <_Bfree>
 8004c1c:	4651      	mov	r1, sl
 8004c1e:	4648      	mov	r0, r9
 8004c20:	f001 fac2 	bl	80061a8 <_Bfree>
 8004c24:	2200      	movs	r2, #0
 8004c26:	9b06      	ldr	r3, [sp, #24]
 8004c28:	7022      	strb	r2, [r4, #0]
 8004c2a:	9a05      	ldr	r2, [sp, #20]
 8004c2c:	3301      	adds	r3, #1
 8004c2e:	6013      	str	r3, [r2, #0]
 8004c30:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004c32:	2b00      	cmp	r3, #0
 8004c34:	f43f abdb 	beq.w	80043ee <_dtoa_r+0x7e>
 8004c38:	4658      	mov	r0, fp
 8004c3a:	601c      	str	r4, [r3, #0]
 8004c3c:	b01b      	add	sp, #108	; 0x6c
 8004c3e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004c42:	201c      	movs	r0, #28
 8004c44:	e6eb      	b.n	8004a1e <_dtoa_r+0x6ae>
 8004c46:	4601      	mov	r1, r0
 8004c48:	4648      	mov	r0, r9
 8004c4a:	f001 fbf7 	bl	800643c <__pow5mult>
 8004c4e:	9b02      	ldr	r3, [sp, #8]
 8004c50:	2b01      	cmp	r3, #1
 8004c52:	4606      	mov	r6, r0
 8004c54:	f340 80d4 	ble.w	8004e00 <_dtoa_r+0xa90>
 8004c58:	2300      	movs	r3, #0
 8004c5a:	930c      	str	r3, [sp, #48]	; 0x30
 8004c5c:	6933      	ldr	r3, [r6, #16]
 8004c5e:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004c62:	6918      	ldr	r0, [r3, #16]
 8004c64:	f001 faea 	bl	800623c <__hi0bits>
 8004c68:	f1c0 0020 	rsb	r0, r0, #32
 8004c6c:	e6cb      	b.n	8004a06 <_dtoa_r+0x696>
 8004c6e:	900d      	str	r0, [sp, #52]	; 0x34
 8004c70:	e42a      	b.n	80044c8 <_dtoa_r+0x158>
 8004c72:	2501      	movs	r5, #1
 8004c74:	e440      	b.n	80044f8 <_dtoa_r+0x188>
 8004c76:	f1c3 0820 	rsb	r8, r3, #32
 8004c7a:	9b00      	ldr	r3, [sp, #0]
 8004c7c:	fa03 f008 	lsl.w	r0, r3, r8
 8004c80:	f7ff bbd8 	b.w	8004434 <_dtoa_r+0xc4>
 8004c84:	2300      	movs	r3, #0
 8004c86:	930a      	str	r3, [sp, #40]	; 0x28
 8004c88:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004c8c:	4413      	add	r3, r2
 8004c8e:	930e      	str	r3, [sp, #56]	; 0x38
 8004c90:	3301      	adds	r3, #1
 8004c92:	2b01      	cmp	r3, #1
 8004c94:	461e      	mov	r6, r3
 8004c96:	9309      	str	r3, [sp, #36]	; 0x24
 8004c98:	bfb8      	it	lt
 8004c9a:	2601      	movlt	r6, #1
 8004c9c:	2100      	movs	r1, #0
 8004c9e:	2e17      	cmp	r6, #23
 8004ca0:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004ca4:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004ca6:	f77f ac89 	ble.w	80045bc <_dtoa_r+0x24c>
 8004caa:	2201      	movs	r2, #1
 8004cac:	2304      	movs	r3, #4
 8004cae:	005b      	lsls	r3, r3, #1
 8004cb0:	f103 0014 	add.w	r0, r3, #20
 8004cb4:	42b0      	cmp	r0, r6
 8004cb6:	4611      	mov	r1, r2
 8004cb8:	f102 0201 	add.w	r2, r2, #1
 8004cbc:	d9f7      	bls.n	8004cae <_dtoa_r+0x93e>
 8004cbe:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004cc2:	e47b      	b.n	80045bc <_dtoa_r+0x24c>
 8004cc4:	2300      	movs	r3, #0
 8004cc6:	930a      	str	r3, [sp, #40]	; 0x28
 8004cc8:	9e07      	ldr	r6, [sp, #28]
 8004cca:	2e00      	cmp	r6, #0
 8004ccc:	f340 80e2 	ble.w	8004e94 <_dtoa_r+0xb24>
 8004cd0:	960e      	str	r6, [sp, #56]	; 0x38
 8004cd2:	9609      	str	r6, [sp, #36]	; 0x24
 8004cd4:	e7e2      	b.n	8004c9c <_dtoa_r+0x92c>
 8004cd6:	2301      	movs	r3, #1
 8004cd8:	930a      	str	r3, [sp, #40]	; 0x28
 8004cda:	e7f5      	b.n	8004cc8 <_dtoa_r+0x958>
 8004cdc:	9b00      	ldr	r3, [sp, #0]
 8004cde:	2b00      	cmp	r3, #0
 8004ce0:	f47f ae90 	bne.w	8004a04 <_dtoa_r+0x694>
 8004ce4:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004ce8:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004cec:	2b00      	cmp	r3, #0
 8004cee:	f040 8192 	bne.w	8005016 <_dtoa_r+0xca6>
 8004cf2:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004cf6:	0d1b      	lsrs	r3, r3, #20
 8004cf8:	051b      	lsls	r3, r3, #20
 8004cfa:	b12b      	cbz	r3, 8004d08 <_dtoa_r+0x998>
 8004cfc:	9b08      	ldr	r3, [sp, #32]
 8004cfe:	3301      	adds	r3, #1
 8004d00:	9308      	str	r3, [sp, #32]
 8004d02:	f108 0801 	add.w	r8, r8, #1
 8004d06:	2301      	movs	r3, #1
 8004d08:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004d0a:	930c      	str	r3, [sp, #48]	; 0x30
 8004d0c:	2a00      	cmp	r2, #0
 8004d0e:	f43f ae79 	beq.w	8004a04 <_dtoa_r+0x694>
 8004d12:	e7a3      	b.n	8004c5c <_dtoa_r+0x8ec>
 8004d14:	463a      	mov	r2, r7
 8004d16:	4629      	mov	r1, r5
 8004d18:	4648      	mov	r0, r9
 8004d1a:	f001 fb8f 	bl	800643c <__pow5mult>
 8004d1e:	4652      	mov	r2, sl
 8004d20:	4601      	mov	r1, r0
 8004d22:	4605      	mov	r5, r0
 8004d24:	4648      	mov	r0, r9
 8004d26:	f001 fae3 	bl	80062f0 <__multiply>
 8004d2a:	4651      	mov	r1, sl
 8004d2c:	4607      	mov	r7, r0
 8004d2e:	4648      	mov	r0, r9
 8004d30:	f001 fa3a 	bl	80061a8 <_Bfree>
 8004d34:	46ba      	mov	sl, r7
 8004d36:	2e00      	cmp	r6, #0
 8004d38:	f43f ae57 	beq.w	80049ea <_dtoa_r+0x67a>
 8004d3c:	e64f      	b.n	80049de <_dtoa_r+0x66e>
 8004d3e:	4629      	mov	r1, r5
 8004d40:	4622      	mov	r2, r4
 8004d42:	4648      	mov	r0, r9
 8004d44:	f001 fbca 	bl	80064dc <__lshift>
 8004d48:	4605      	mov	r5, r0
 8004d4a:	e68d      	b.n	8004a68 <_dtoa_r+0x6f8>
 8004d4c:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004d4e:	2a00      	cmp	r2, #0
 8004d50:	f000 815d 	beq.w	800500e <_dtoa_r+0xc9e>
 8004d54:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004d58:	9a08      	ldr	r2, [sp, #32]
 8004d5a:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004d5c:	4614      	mov	r4, r2
 8004d5e:	441a      	add	r2, r3
 8004d60:	4498      	add	r8, r3
 8004d62:	9208      	str	r2, [sp, #32]
 8004d64:	e5f7      	b.n	8004956 <_dtoa_r+0x5e6>
 8004d66:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004d68:	2b00      	cmp	r3, #0
 8004d6a:	f73f ad3e 	bgt.w	80047ea <_dtoa_r+0x47a>
 8004d6e:	f040 80bc 	bne.w	8004eea <_dtoa_r+0xb7a>
 8004d72:	ec51 0b17 	vmov	r0, r1, d7
 8004d76:	2200      	movs	r2, #0
 8004d78:	4bb2      	ldr	r3, [pc, #712]	; (8005044 <_dtoa_r+0xcd4>)
 8004d7a:	f7fb fedd 	bl	8000b38 <__aeabi_dmul>
 8004d7e:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004d82:	f7fc f95f 	bl	8001044 <__aeabi_dcmpge>
 8004d86:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004d88:	4635      	mov	r5, r6
 8004d8a:	2800      	cmp	r0, #0
 8004d8c:	d176      	bne.n	8004e7c <_dtoa_r+0xb0c>
 8004d8e:	9a06      	ldr	r2, [sp, #24]
 8004d90:	2331      	movs	r3, #49	; 0x31
 8004d92:	3201      	adds	r2, #1
 8004d94:	9206      	str	r2, [sp, #24]
 8004d96:	f88b 3000 	strb.w	r3, [fp]
 8004d9a:	f10b 0401 	add.w	r4, fp, #1
 8004d9e:	4631      	mov	r1, r6
 8004da0:	4648      	mov	r0, r9
 8004da2:	f001 fa01 	bl	80061a8 <_Bfree>
 8004da6:	2d00      	cmp	r5, #0
 8004da8:	f47f af34 	bne.w	8004c14 <_dtoa_r+0x8a4>
 8004dac:	e736      	b.n	8004c1c <_dtoa_r+0x8ac>
 8004dae:	f000 8142 	beq.w	8005036 <_dtoa_r+0xcc6>
 8004db2:	9b06      	ldr	r3, [sp, #24]
 8004db4:	425c      	negs	r4, r3
 8004db6:	4ba4      	ldr	r3, [pc, #656]	; (8005048 <_dtoa_r+0xcd8>)
 8004db8:	f004 020f 	and.w	r2, r4, #15
 8004dbc:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004dc0:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004dc4:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004dc8:	f7fb feb6 	bl	8000b38 <__aeabi_dmul>
 8004dcc:	1124      	asrs	r4, r4, #4
 8004dce:	e9cd 0100 	strd	r0, r1, [sp]
 8004dd2:	f000 81c6 	beq.w	8005162 <_dtoa_r+0xdf2>
 8004dd6:	4d9d      	ldr	r5, [pc, #628]	; (800504c <_dtoa_r+0xcdc>)
 8004dd8:	2300      	movs	r3, #0
 8004dda:	2602      	movs	r6, #2
 8004ddc:	07e7      	lsls	r7, r4, #31
 8004dde:	d505      	bpl.n	8004dec <_dtoa_r+0xa7c>
 8004de0:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004de4:	f7fb fea8 	bl	8000b38 <__aeabi_dmul>
 8004de8:	3601      	adds	r6, #1
 8004dea:	2301      	movs	r3, #1
 8004dec:	1064      	asrs	r4, r4, #1
 8004dee:	f105 0508 	add.w	r5, r5, #8
 8004df2:	d1f3      	bne.n	8004ddc <_dtoa_r+0xa6c>
 8004df4:	2b00      	cmp	r3, #0
 8004df6:	f43f ac27 	beq.w	8004648 <_dtoa_r+0x2d8>
 8004dfa:	e9cd 0100 	strd	r0, r1, [sp]
 8004dfe:	e423      	b.n	8004648 <_dtoa_r+0x2d8>
 8004e00:	9b00      	ldr	r3, [sp, #0]
 8004e02:	2b00      	cmp	r3, #0
 8004e04:	f43f af6e 	beq.w	8004ce4 <_dtoa_r+0x974>
 8004e08:	e726      	b.n	8004c58 <_dtoa_r+0x8e8>
 8004e0a:	6869      	ldr	r1, [r5, #4]
 8004e0c:	4648      	mov	r0, r9
 8004e0e:	f001 f9a5 	bl	800615c <_Balloc>
 8004e12:	692b      	ldr	r3, [r5, #16]
 8004e14:	3302      	adds	r3, #2
 8004e16:	009a      	lsls	r2, r3, #2
 8004e18:	4604      	mov	r4, r0
 8004e1a:	f105 010c 	add.w	r1, r5, #12
 8004e1e:	300c      	adds	r0, #12
 8004e20:	f7fb fb6e 	bl	8000500 <memcpy>
 8004e24:	4621      	mov	r1, r4
 8004e26:	2201      	movs	r2, #1
 8004e28:	4648      	mov	r0, r9
 8004e2a:	f001 fb57 	bl	80064dc <__lshift>
 8004e2e:	4680      	mov	r8, r0
 8004e30:	e61f      	b.n	8004a72 <_dtoa_r+0x702>
 8004e32:	2400      	movs	r4, #0
 8004e34:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8004e38:	4621      	mov	r1, r4
 8004e3a:	4648      	mov	r0, r9
 8004e3c:	f001 f98e 	bl	800615c <_Balloc>
 8004e40:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004e44:	930e      	str	r3, [sp, #56]	; 0x38
 8004e46:	9309      	str	r3, [sp, #36]	; 0x24
 8004e48:	2301      	movs	r3, #1
 8004e4a:	4683      	mov	fp, r0
 8004e4c:	9407      	str	r4, [sp, #28]
 8004e4e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004e52:	930a      	str	r3, [sp, #40]	; 0x28
 8004e54:	e4b6      	b.n	80047c4 <_dtoa_r+0x454>
 8004e56:	f001 f9b1 	bl	80061bc <__multadd>
 8004e5a:	4627      	mov	r7, r4
 8004e5c:	4605      	mov	r5, r0
 8004e5e:	4680      	mov	r8, r0
 8004e60:	e614      	b.n	8004a8c <_dtoa_r+0x71c>
 8004e62:	4648      	mov	r0, r9
 8004e64:	f001 f9a0 	bl	80061a8 <_Bfree>
 8004e68:	2301      	movs	r3, #1
 8004e6a:	e639      	b.n	8004ae0 <_dtoa_r+0x770>
 8004e6c:	9b02      	ldr	r3, [sp, #8]
 8004e6e:	2b02      	cmp	r3, #2
 8004e70:	f77f adf3 	ble.w	8004a5a <_dtoa_r+0x6ea>
 8004e74:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004e76:	2b00      	cmp	r3, #0
 8004e78:	f000 80cf 	beq.w	800501a <_dtoa_r+0xcaa>
 8004e7c:	9b07      	ldr	r3, [sp, #28]
 8004e7e:	43db      	mvns	r3, r3
 8004e80:	9306      	str	r3, [sp, #24]
 8004e82:	465c      	mov	r4, fp
 8004e84:	e78b      	b.n	8004d9e <_dtoa_r+0xa2e>
 8004e86:	9a06      	ldr	r2, [sp, #24]
 8004e88:	2331      	movs	r3, #49	; 0x31
 8004e8a:	3201      	adds	r2, #1
 8004e8c:	9206      	str	r2, [sp, #24]
 8004e8e:	f88b 3000 	strb.w	r3, [fp]
 8004e92:	e6b3      	b.n	8004bfc <_dtoa_r+0x88c>
 8004e94:	2401      	movs	r4, #1
 8004e96:	9409      	str	r4, [sp, #36]	; 0x24
 8004e98:	9407      	str	r4, [sp, #28]
 8004e9a:	f7ff bb8b 	b.w	80045b4 <_dtoa_r+0x244>
 8004e9e:	4630      	mov	r0, r6
 8004ea0:	f7fb fde0 	bl	8000a64 <__aeabi_i2d>
 8004ea4:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004ea8:	f7fb fe46 	bl	8000b38 <__aeabi_dmul>
 8004eac:	2200      	movs	r2, #0
 8004eae:	4b68      	ldr	r3, [pc, #416]	; (8005050 <_dtoa_r+0xce0>)
 8004eb0:	f7fb fc8c 	bl	80007cc <__adddf3>
 8004eb4:	4606      	mov	r6, r0
 8004eb6:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004eba:	2200      	movs	r2, #0
 8004ebc:	4b61      	ldr	r3, [pc, #388]	; (8005044 <_dtoa_r+0xcd4>)
 8004ebe:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004ec2:	f7fb fc81 	bl	80007c8 <__aeabi_dsub>
 8004ec6:	4632      	mov	r2, r6
 8004ec8:	463b      	mov	r3, r7
 8004eca:	4604      	mov	r4, r0
 8004ecc:	460d      	mov	r5, r1
 8004ece:	f7fc f8c3 	bl	8001058 <__aeabi_dcmpgt>
 8004ed2:	2800      	cmp	r0, #0
 8004ed4:	d14f      	bne.n	8004f76 <_dtoa_r+0xc06>
 8004ed6:	4632      	mov	r2, r6
 8004ed8:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8004edc:	4620      	mov	r0, r4
 8004ede:	4629      	mov	r1, r5
 8004ee0:	f7fc f89c 	bl	800101c <__aeabi_dcmplt>
 8004ee4:	2800      	cmp	r0, #0
 8004ee6:	f43f ac69 	beq.w	80047bc <_dtoa_r+0x44c>
 8004eea:	2600      	movs	r6, #0
 8004eec:	4635      	mov	r5, r6
 8004eee:	e7c5      	b.n	8004e7c <_dtoa_r+0xb0c>
 8004ef0:	2301      	movs	r3, #1
 8004ef2:	930a      	str	r3, [sp, #40]	; 0x28
 8004ef4:	e6c8      	b.n	8004c88 <_dtoa_r+0x918>
 8004ef6:	4651      	mov	r1, sl
 8004ef8:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 8004efa:	4648      	mov	r0, r9
 8004efc:	f001 fa9e 	bl	800643c <__pow5mult>
 8004f00:	4682      	mov	sl, r0
 8004f02:	e572      	b.n	80049ea <_dtoa_r+0x67a>
 8004f04:	f8dd a000 	ldr.w	sl, [sp]
 8004f08:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004f0c:	e686      	b.n	8004c1c <_dtoa_r+0x8ac>
 8004f0e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004f10:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004f12:	1afb      	subs	r3, r7, r3
 8004f14:	441a      	add	r2, r3
 8004f16:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 8004f1a:	2700      	movs	r7, #0
 8004f1c:	e512      	b.n	8004944 <_dtoa_r+0x5d4>
 8004f1e:	2b00      	cmp	r3, #0
 8004f20:	9402      	str	r4, [sp, #8]
 8004f22:	465e      	mov	r6, fp
 8004f24:	f107 0401 	add.w	r4, r7, #1
 8004f28:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f2c:	f300 80ba 	bgt.w	80050a4 <_dtoa_r+0xd34>
 8004f30:	9b00      	ldr	r3, [sp, #0]
 8004f32:	9502      	str	r5, [sp, #8]
 8004f34:	703b      	strb	r3, [r7, #0]
 8004f36:	4645      	mov	r5, r8
 8004f38:	e660      	b.n	8004bfc <_dtoa_r+0x88c>
 8004f3a:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8004f3e:	2602      	movs	r6, #2
 8004f40:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004f44:	f7ff bb67 	b.w	8004616 <_dtoa_r+0x2a6>
 8004f48:	9b00      	ldr	r3, [sp, #0]
 8004f4a:	2b39      	cmp	r3, #57	; 0x39
 8004f4c:	465e      	mov	r6, fp
 8004f4e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f52:	f000 80b9 	beq.w	80050c8 <_dtoa_r+0xd58>
 8004f56:	9b00      	ldr	r3, [sp, #0]
 8004f58:	9502      	str	r5, [sp, #8]
 8004f5a:	3301      	adds	r3, #1
 8004f5c:	703b      	strb	r3, [r7, #0]
 8004f5e:	4645      	mov	r5, r8
 8004f60:	e64c      	b.n	8004bfc <_dtoa_r+0x88c>
 8004f62:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 8004f66:	1a9c      	subs	r4, r3, r2
 8004f68:	e4f5      	b.n	8004956 <_dtoa_r+0x5e6>
 8004f6a:	465e      	mov	r6, fp
 8004f6c:	9502      	str	r5, [sp, #8]
 8004f6e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8004f72:	4645      	mov	r5, r8
 8004f74:	e61a      	b.n	8004bac <_dtoa_r+0x83c>
 8004f76:	2600      	movs	r6, #0
 8004f78:	4635      	mov	r5, r6
 8004f7a:	e708      	b.n	8004d8e <_dtoa_r+0xa1e>
 8004f7c:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004f80:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004f84:	f7fb fdd8 	bl	8000b38 <__aeabi_dmul>
 8004f88:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004f8a:	f88b 5000 	strb.w	r5, [fp]
 8004f8e:	2b01      	cmp	r3, #1
 8004f90:	e9cd 0100 	strd	r0, r1, [sp]
 8004f94:	d020      	beq.n	8004fd8 <_dtoa_r+0xc68>
 8004f96:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8004f98:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8004f9c:	445b      	add	r3, fp
 8004f9e:	4698      	mov	r8, r3
 8004fa0:	2200      	movs	r2, #0
 8004fa2:	4b2c      	ldr	r3, [pc, #176]	; (8005054 <_dtoa_r+0xce4>)
 8004fa4:	4630      	mov	r0, r6
 8004fa6:	4639      	mov	r1, r7
 8004fa8:	f7fb fdc6 	bl	8000b38 <__aeabi_dmul>
 8004fac:	460f      	mov	r7, r1
 8004fae:	4606      	mov	r6, r0
 8004fb0:	f7fc f872 	bl	8001098 <__aeabi_d2iz>
 8004fb4:	4605      	mov	r5, r0
 8004fb6:	f7fb fd55 	bl	8000a64 <__aeabi_i2d>
 8004fba:	3530      	adds	r5, #48	; 0x30
 8004fbc:	4602      	mov	r2, r0
 8004fbe:	460b      	mov	r3, r1
 8004fc0:	4630      	mov	r0, r6
 8004fc2:	4639      	mov	r1, r7
 8004fc4:	f7fb fc00 	bl	80007c8 <__aeabi_dsub>
 8004fc8:	f804 5b01 	strb.w	r5, [r4], #1
 8004fcc:	4544      	cmp	r4, r8
 8004fce:	4606      	mov	r6, r0
 8004fd0:	460f      	mov	r7, r1
 8004fd2:	d1e5      	bne.n	8004fa0 <_dtoa_r+0xc30>
 8004fd4:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8004fd8:	4b1f      	ldr	r3, [pc, #124]	; (8005058 <_dtoa_r+0xce8>)
 8004fda:	2200      	movs	r2, #0
 8004fdc:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004fe0:	f7fb fbf4 	bl	80007cc <__adddf3>
 8004fe4:	4632      	mov	r2, r6
 8004fe6:	463b      	mov	r3, r7
 8004fe8:	f7fc f818 	bl	800101c <__aeabi_dcmplt>
 8004fec:	2800      	cmp	r0, #0
 8004fee:	d070      	beq.n	80050d2 <_dtoa_r+0xd62>
 8004ff0:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004ff2:	9306      	str	r3, [sp, #24]
 8004ff4:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004ff8:	e48f      	b.n	800491a <_dtoa_r+0x5aa>
 8004ffa:	2330      	movs	r3, #48	; 0x30
 8004ffc:	f88b 3000 	strb.w	r3, [fp]
 8005000:	9b06      	ldr	r3, [sp, #24]
 8005002:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8005006:	3301      	adds	r3, #1
 8005008:	9306      	str	r3, [sp, #24]
 800500a:	465b      	mov	r3, fp
 800500c:	e489      	b.n	8004922 <_dtoa_r+0x5b2>
 800500e:	9b18      	ldr	r3, [sp, #96]	; 0x60
 8005010:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 8005014:	e6a0      	b.n	8004d58 <_dtoa_r+0x9e8>
 8005016:	2300      	movs	r3, #0
 8005018:	e676      	b.n	8004d08 <_dtoa_r+0x998>
 800501a:	4631      	mov	r1, r6
 800501c:	2205      	movs	r2, #5
 800501e:	4648      	mov	r0, r9
 8005020:	f001 f8cc 	bl	80061bc <__multadd>
 8005024:	4601      	mov	r1, r0
 8005026:	4606      	mov	r6, r0
 8005028:	4650      	mov	r0, sl
 800502a:	f001 faad 	bl	8006588 <__mcmp>
 800502e:	2800      	cmp	r0, #0
 8005030:	f73f aead 	bgt.w	8004d8e <_dtoa_r+0xa1e>
 8005034:	e722      	b.n	8004e7c <_dtoa_r+0xb0c>
 8005036:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 800503a:	2602      	movs	r6, #2
 800503c:	ed8d 7b00 	vstr	d7, [sp]
 8005040:	f7ff bb02 	b.w	8004648 <_dtoa_r+0x2d8>
 8005044:	40140000 	.word	0x40140000
 8005048:	08007510 	.word	0x08007510
 800504c:	080074e8 	.word	0x080074e8
 8005050:	401c0000 	.word	0x401c0000
 8005054:	40240000 	.word	0x40240000
 8005058:	3fe00000 	.word	0x3fe00000
 800505c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800505e:	2b00      	cmp	r3, #0
 8005060:	f43f af1d 	beq.w	8004e9e <_dtoa_r+0xb2e>
 8005064:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 8005066:	2c00      	cmp	r4, #0
 8005068:	f77f aba8 	ble.w	80047bc <_dtoa_r+0x44c>
 800506c:	2200      	movs	r2, #0
 800506e:	4b45      	ldr	r3, [pc, #276]	; (8005184 <_dtoa_r+0xe14>)
 8005070:	e9dd 0100 	ldrd	r0, r1, [sp]
 8005074:	f7fb fd60 	bl	8000b38 <__aeabi_dmul>
 8005078:	e9cd 0100 	strd	r0, r1, [sp]
 800507c:	1c70      	adds	r0, r6, #1
 800507e:	f7fb fcf1 	bl	8000a64 <__aeabi_i2d>
 8005082:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005086:	f7fb fd57 	bl	8000b38 <__aeabi_dmul>
 800508a:	4b3f      	ldr	r3, [pc, #252]	; (8005188 <_dtoa_r+0xe18>)
 800508c:	2200      	movs	r2, #0
 800508e:	f7fb fb9d 	bl	80007cc <__adddf3>
 8005092:	9b06      	ldr	r3, [sp, #24]
 8005094:	9412      	str	r4, [sp, #72]	; 0x48
 8005096:	3b01      	subs	r3, #1
 8005098:	4606      	mov	r6, r0
 800509a:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 800509e:	9316      	str	r3, [sp, #88]	; 0x58
 80050a0:	f7ff baf3 	b.w	800468a <_dtoa_r+0x31a>
 80050a4:	4651      	mov	r1, sl
 80050a6:	2201      	movs	r2, #1
 80050a8:	4648      	mov	r0, r9
 80050aa:	f001 fa17 	bl	80064dc <__lshift>
 80050ae:	4631      	mov	r1, r6
 80050b0:	4682      	mov	sl, r0
 80050b2:	f001 fa69 	bl	8006588 <__mcmp>
 80050b6:	2800      	cmp	r0, #0
 80050b8:	dd3b      	ble.n	8005132 <_dtoa_r+0xdc2>
 80050ba:	9b00      	ldr	r3, [sp, #0]
 80050bc:	2b39      	cmp	r3, #57	; 0x39
 80050be:	d003      	beq.n	80050c8 <_dtoa_r+0xd58>
 80050c0:	9b02      	ldr	r3, [sp, #8]
 80050c2:	3331      	adds	r3, #49	; 0x31
 80050c4:	9300      	str	r3, [sp, #0]
 80050c6:	e733      	b.n	8004f30 <_dtoa_r+0xbc0>
 80050c8:	2239      	movs	r2, #57	; 0x39
 80050ca:	9502      	str	r5, [sp, #8]
 80050cc:	703a      	strb	r2, [r7, #0]
 80050ce:	4645      	mov	r5, r8
 80050d0:	e58e      	b.n	8004bf0 <_dtoa_r+0x880>
 80050d2:	e9dd 2300 	ldrd	r2, r3, [sp]
 80050d6:	2000      	movs	r0, #0
 80050d8:	492c      	ldr	r1, [pc, #176]	; (800518c <_dtoa_r+0xe1c>)
 80050da:	f7fb fb75 	bl	80007c8 <__aeabi_dsub>
 80050de:	4632      	mov	r2, r6
 80050e0:	463b      	mov	r3, r7
 80050e2:	f7fb ffb9 	bl	8001058 <__aeabi_dcmpgt>
 80050e6:	b910      	cbnz	r0, 80050ee <_dtoa_r+0xd7e>
 80050e8:	f7ff bb68 	b.w	80047bc <_dtoa_r+0x44c>
 80050ec:	4614      	mov	r4, r2
 80050ee:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80050f2:	2b30      	cmp	r3, #48	; 0x30
 80050f4:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80050f8:	d0f8      	beq.n	80050ec <_dtoa_r+0xd7c>
 80050fa:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80050fc:	9306      	str	r3, [sp, #24]
 80050fe:	e58d      	b.n	8004c1c <_dtoa_r+0x8ac>
 8005100:	46d9      	mov	r9, fp
 8005102:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8005106:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 800510a:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800510c:	9306      	str	r3, [sp, #24]
 800510e:	e404      	b.n	800491a <_dtoa_r+0x5aa>
 8005110:	9b00      	ldr	r3, [sp, #0]
 8005112:	2b39      	cmp	r3, #57	; 0x39
 8005114:	4621      	mov	r1, r4
 8005116:	4632      	mov	r2, r6
 8005118:	f107 0401 	add.w	r4, r7, #1
 800511c:	465e      	mov	r6, fp
 800511e:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 8005122:	d0d1      	beq.n	80050c8 <_dtoa_r+0xd58>
 8005124:	2a00      	cmp	r2, #0
 8005126:	f77f af03 	ble.w	8004f30 <_dtoa_r+0xbc0>
 800512a:	460b      	mov	r3, r1
 800512c:	3331      	adds	r3, #49	; 0x31
 800512e:	9300      	str	r3, [sp, #0]
 8005130:	e6fe      	b.n	8004f30 <_dtoa_r+0xbc0>
 8005132:	f47f aefd 	bne.w	8004f30 <_dtoa_r+0xbc0>
 8005136:	9b00      	ldr	r3, [sp, #0]
 8005138:	07da      	lsls	r2, r3, #31
 800513a:	f57f aef9 	bpl.w	8004f30 <_dtoa_r+0xbc0>
 800513e:	e7bc      	b.n	80050ba <_dtoa_r+0xd4a>
 8005140:	4629      	mov	r1, r5
 8005142:	2300      	movs	r3, #0
 8005144:	220a      	movs	r2, #10
 8005146:	4648      	mov	r0, r9
 8005148:	f001 f838 	bl	80061bc <__multadd>
 800514c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800514e:	2b00      	cmp	r3, #0
 8005150:	4605      	mov	r5, r0
 8005152:	dd09      	ble.n	8005168 <_dtoa_r+0xdf8>
 8005154:	9309      	str	r3, [sp, #36]	; 0x24
 8005156:	e484      	b.n	8004a62 <_dtoa_r+0x6f2>
 8005158:	9b02      	ldr	r3, [sp, #8]
 800515a:	2b02      	cmp	r3, #2
 800515c:	dc0e      	bgt.n	800517c <_dtoa_r+0xe0c>
 800515e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005160:	e507      	b.n	8004b72 <_dtoa_r+0x802>
 8005162:	2602      	movs	r6, #2
 8005164:	f7ff ba70 	b.w	8004648 <_dtoa_r+0x2d8>
 8005168:	9b02      	ldr	r3, [sp, #8]
 800516a:	2b02      	cmp	r3, #2
 800516c:	dc06      	bgt.n	800517c <_dtoa_r+0xe0c>
 800516e:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005170:	e7f0      	b.n	8005154 <_dtoa_r+0xde4>
 8005172:	f43f ac59 	beq.w	8004a28 <_dtoa_r+0x6b8>
 8005176:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 800517a:	e450      	b.n	8004a1e <_dtoa_r+0x6ae>
 800517c:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 800517e:	9309      	str	r3, [sp, #36]	; 0x24
 8005180:	e678      	b.n	8004e74 <_dtoa_r+0xb04>
 8005182:	bf00      	nop
 8005184:	40240000 	.word	0x40240000
 8005188:	401c0000 	.word	0x401c0000
 800518c:	3fe00000 	.word	0x3fe00000

08005190 <__sflush_r>:
 8005190:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8005194:	b29a      	uxth	r2, r3
 8005196:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800519a:	460c      	mov	r4, r1
 800519c:	0711      	lsls	r1, r2, #28
 800519e:	4680      	mov	r8, r0
 80051a0:	d444      	bmi.n	800522c <__sflush_r+0x9c>
 80051a2:	6862      	ldr	r2, [r4, #4]
 80051a4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 80051a8:	2a00      	cmp	r2, #0
 80051aa:	81a3      	strh	r3, [r4, #12]
 80051ac:	dd59      	ble.n	8005262 <__sflush_r+0xd2>
 80051ae:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80051b0:	2d00      	cmp	r5, #0
 80051b2:	d053      	beq.n	800525c <__sflush_r+0xcc>
 80051b4:	2200      	movs	r2, #0
 80051b6:	b29b      	uxth	r3, r3
 80051b8:	f8d8 6000 	ldr.w	r6, [r8]
 80051bc:	69e1      	ldr	r1, [r4, #28]
 80051be:	f8c8 2000 	str.w	r2, [r8]
 80051c2:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 80051c6:	f040 8083 	bne.w	80052d0 <__sflush_r+0x140>
 80051ca:	2301      	movs	r3, #1
 80051cc:	4640      	mov	r0, r8
 80051ce:	47a8      	blx	r5
 80051d0:	1c42      	adds	r2, r0, #1
 80051d2:	d04a      	beq.n	800526a <__sflush_r+0xda>
 80051d4:	89a3      	ldrh	r3, [r4, #12]
 80051d6:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80051d8:	69e1      	ldr	r1, [r4, #28]
 80051da:	075b      	lsls	r3, r3, #29
 80051dc:	d505      	bpl.n	80051ea <__sflush_r+0x5a>
 80051de:	6862      	ldr	r2, [r4, #4]
 80051e0:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80051e2:	1a80      	subs	r0, r0, r2
 80051e4:	b10b      	cbz	r3, 80051ea <__sflush_r+0x5a>
 80051e6:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80051e8:	1ac0      	subs	r0, r0, r3
 80051ea:	4602      	mov	r2, r0
 80051ec:	2300      	movs	r3, #0
 80051ee:	4640      	mov	r0, r8
 80051f0:	47a8      	blx	r5
 80051f2:	1c47      	adds	r7, r0, #1
 80051f4:	d045      	beq.n	8005282 <__sflush_r+0xf2>
 80051f6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80051fa:	6922      	ldr	r2, [r4, #16]
 80051fc:	6022      	str	r2, [r4, #0]
 80051fe:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 8005202:	2200      	movs	r2, #0
 8005204:	81a3      	strh	r3, [r4, #12]
 8005206:	04db      	lsls	r3, r3, #19
 8005208:	6062      	str	r2, [r4, #4]
 800520a:	d500      	bpl.n	800520e <__sflush_r+0x7e>
 800520c:	6520      	str	r0, [r4, #80]	; 0x50
 800520e:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8005210:	f8c8 6000 	str.w	r6, [r8]
 8005214:	b311      	cbz	r1, 800525c <__sflush_r+0xcc>
 8005216:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800521a:	4299      	cmp	r1, r3
 800521c:	d002      	beq.n	8005224 <__sflush_r+0x94>
 800521e:	4640      	mov	r0, r8
 8005220:	f000 f95e 	bl	80054e0 <_free_r>
 8005224:	2000      	movs	r0, #0
 8005226:	6320      	str	r0, [r4, #48]	; 0x30
 8005228:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800522c:	6926      	ldr	r6, [r4, #16]
 800522e:	b1ae      	cbz	r6, 800525c <__sflush_r+0xcc>
 8005230:	6825      	ldr	r5, [r4, #0]
 8005232:	6026      	str	r6, [r4, #0]
 8005234:	0792      	lsls	r2, r2, #30
 8005236:	bf0c      	ite	eq
 8005238:	6963      	ldreq	r3, [r4, #20]
 800523a:	2300      	movne	r3, #0
 800523c:	1bad      	subs	r5, r5, r6
 800523e:	60a3      	str	r3, [r4, #8]
 8005240:	e00a      	b.n	8005258 <__sflush_r+0xc8>
 8005242:	462b      	mov	r3, r5
 8005244:	4632      	mov	r2, r6
 8005246:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005248:	69e1      	ldr	r1, [r4, #28]
 800524a:	4640      	mov	r0, r8
 800524c:	47b8      	blx	r7
 800524e:	2800      	cmp	r0, #0
 8005250:	eba5 0500 	sub.w	r5, r5, r0
 8005254:	4406      	add	r6, r0
 8005256:	dd2b      	ble.n	80052b0 <__sflush_r+0x120>
 8005258:	2d00      	cmp	r5, #0
 800525a:	dcf2      	bgt.n	8005242 <__sflush_r+0xb2>
 800525c:	2000      	movs	r0, #0
 800525e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005262:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 8005264:	2a00      	cmp	r2, #0
 8005266:	dca2      	bgt.n	80051ae <__sflush_r+0x1e>
 8005268:	e7f8      	b.n	800525c <__sflush_r+0xcc>
 800526a:	f8d8 3000 	ldr.w	r3, [r8]
 800526e:	2b00      	cmp	r3, #0
 8005270:	d0b0      	beq.n	80051d4 <__sflush_r+0x44>
 8005272:	2b1d      	cmp	r3, #29
 8005274:	d001      	beq.n	800527a <__sflush_r+0xea>
 8005276:	2b16      	cmp	r3, #22
 8005278:	d12c      	bne.n	80052d4 <__sflush_r+0x144>
 800527a:	f8c8 6000 	str.w	r6, [r8]
 800527e:	2000      	movs	r0, #0
 8005280:	e7ed      	b.n	800525e <__sflush_r+0xce>
 8005282:	f8d8 1000 	ldr.w	r1, [r8]
 8005286:	291d      	cmp	r1, #29
 8005288:	d81a      	bhi.n	80052c0 <__sflush_r+0x130>
 800528a:	4b15      	ldr	r3, [pc, #84]	; (80052e0 <__sflush_r+0x150>)
 800528c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005290:	40cb      	lsrs	r3, r1
 8005292:	43db      	mvns	r3, r3
 8005294:	f013 0301 	ands.w	r3, r3, #1
 8005298:	d114      	bne.n	80052c4 <__sflush_r+0x134>
 800529a:	6925      	ldr	r5, [r4, #16]
 800529c:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 80052a0:	e9c4 5300 	strd	r5, r3, [r4]
 80052a4:	04d5      	lsls	r5, r2, #19
 80052a6:	81a2      	strh	r2, [r4, #12]
 80052a8:	d5b1      	bpl.n	800520e <__sflush_r+0x7e>
 80052aa:	2900      	cmp	r1, #0
 80052ac:	d1af      	bne.n	800520e <__sflush_r+0x7e>
 80052ae:	e7ad      	b.n	800520c <__sflush_r+0x7c>
 80052b0:	89a3      	ldrh	r3, [r4, #12]
 80052b2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80052b6:	81a3      	strh	r3, [r4, #12]
 80052b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80052bc:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80052c0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80052c4:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80052c8:	81a2      	strh	r2, [r4, #12]
 80052ca:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80052ce:	e7c6      	b.n	800525e <__sflush_r+0xce>
 80052d0:	6d20      	ldr	r0, [r4, #80]	; 0x50
 80052d2:	e782      	b.n	80051da <__sflush_r+0x4a>
 80052d4:	89a3      	ldrh	r3, [r4, #12]
 80052d6:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80052da:	81a3      	strh	r3, [r4, #12]
 80052dc:	e7bf      	b.n	800525e <__sflush_r+0xce>
 80052de:	bf00      	nop
 80052e0:	20400001 	.word	0x20400001

080052e4 <_fflush_r>:
 80052e4:	b538      	push	{r3, r4, r5, lr}
 80052e6:	460d      	mov	r5, r1
 80052e8:	4604      	mov	r4, r0
 80052ea:	b108      	cbz	r0, 80052f0 <_fflush_r+0xc>
 80052ec:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80052ee:	b1a3      	cbz	r3, 800531a <_fflush_r+0x36>
 80052f0:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80052f4:	b1b8      	cbz	r0, 8005326 <_fflush_r+0x42>
 80052f6:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80052f8:	07db      	lsls	r3, r3, #31
 80052fa:	d401      	bmi.n	8005300 <_fflush_r+0x1c>
 80052fc:	0581      	lsls	r1, r0, #22
 80052fe:	d51a      	bpl.n	8005336 <_fflush_r+0x52>
 8005300:	4620      	mov	r0, r4
 8005302:	4629      	mov	r1, r5
 8005304:	f7ff ff44 	bl	8005190 <__sflush_r>
 8005308:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 800530a:	07da      	lsls	r2, r3, #31
 800530c:	4604      	mov	r4, r0
 800530e:	d402      	bmi.n	8005316 <_fflush_r+0x32>
 8005310:	89ab      	ldrh	r3, [r5, #12]
 8005312:	059b      	lsls	r3, r3, #22
 8005314:	d50a      	bpl.n	800532c <_fflush_r+0x48>
 8005316:	4620      	mov	r0, r4
 8005318:	bd38      	pop	{r3, r4, r5, pc}
 800531a:	f000 f83f 	bl	800539c <__sinit>
 800531e:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 8005322:	2800      	cmp	r0, #0
 8005324:	d1e7      	bne.n	80052f6 <_fflush_r+0x12>
 8005326:	4604      	mov	r4, r0
 8005328:	4620      	mov	r0, r4
 800532a:	bd38      	pop	{r3, r4, r5, pc}
 800532c:	6da8      	ldr	r0, [r5, #88]	; 0x58
 800532e:	f000 fb87 	bl	8005a40 <__retarget_lock_release_recursive>
 8005332:	4620      	mov	r0, r4
 8005334:	bd38      	pop	{r3, r4, r5, pc}
 8005336:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005338:	f000 fb80 	bl	8005a3c <__retarget_lock_acquire_recursive>
 800533c:	e7e0      	b.n	8005300 <_fflush_r+0x1c>
 800533e:	bf00      	nop

08005340 <std>:
 8005340:	b510      	push	{r4, lr}
 8005342:	2300      	movs	r3, #0
 8005344:	4604      	mov	r4, r0
 8005346:	8181      	strh	r1, [r0, #12]
 8005348:	81c2      	strh	r2, [r0, #14]
 800534a:	e9c0 3300 	strd	r3, r3, [r0]
 800534e:	6083      	str	r3, [r0, #8]
 8005350:	6643      	str	r3, [r0, #100]	; 0x64
 8005352:	e9c0 3304 	strd	r3, r3, [r0, #16]
 8005356:	6183      	str	r3, [r0, #24]
 8005358:	4619      	mov	r1, r3
 800535a:	2208      	movs	r2, #8
 800535c:	305c      	adds	r0, #92	; 0x5c
 800535e:	f7fd f8c9 	bl	80024f4 <memset>
 8005362:	4807      	ldr	r0, [pc, #28]	; (8005380 <std+0x40>)
 8005364:	4907      	ldr	r1, [pc, #28]	; (8005384 <std+0x44>)
 8005366:	4a08      	ldr	r2, [pc, #32]	; (8005388 <std+0x48>)
 8005368:	4b08      	ldr	r3, [pc, #32]	; (800538c <std+0x4c>)
 800536a:	62e3      	str	r3, [r4, #44]	; 0x2c
 800536c:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005370:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 8005374:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005378:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800537c:	f000 bb5a 	b.w	8005a34 <__retarget_lock_init_recursive>
 8005380:	08006b59 	.word	0x08006b59
 8005384:	08006b7d 	.word	0x08006b7d
 8005388:	08006bb9 	.word	0x08006bb9
 800538c:	08006bd9 	.word	0x08006bd9

08005390 <_cleanup_r>:
 8005390:	4901      	ldr	r1, [pc, #4]	; (8005398 <_cleanup_r+0x8>)
 8005392:	f000 bb17 	b.w	80059c4 <_fwalk_reent>
 8005396:	bf00      	nop
 8005398:	08006e49 	.word	0x08006e49

0800539c <__sinit>:
 800539c:	b510      	push	{r4, lr}
 800539e:	4604      	mov	r4, r0
 80053a0:	4812      	ldr	r0, [pc, #72]	; (80053ec <__sinit+0x50>)
 80053a2:	f000 fb4b 	bl	8005a3c <__retarget_lock_acquire_recursive>
 80053a6:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 80053a8:	b9d2      	cbnz	r2, 80053e0 <__sinit+0x44>
 80053aa:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 80053ae:	4810      	ldr	r0, [pc, #64]	; (80053f0 <__sinit+0x54>)
 80053b0:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 80053b4:	2103      	movs	r1, #3
 80053b6:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 80053ba:	63e0      	str	r0, [r4, #60]	; 0x3c
 80053bc:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 80053c0:	6860      	ldr	r0, [r4, #4]
 80053c2:	2104      	movs	r1, #4
 80053c4:	f7ff ffbc 	bl	8005340 <std>
 80053c8:	2201      	movs	r2, #1
 80053ca:	2109      	movs	r1, #9
 80053cc:	68a0      	ldr	r0, [r4, #8]
 80053ce:	f7ff ffb7 	bl	8005340 <std>
 80053d2:	2202      	movs	r2, #2
 80053d4:	2112      	movs	r1, #18
 80053d6:	68e0      	ldr	r0, [r4, #12]
 80053d8:	f7ff ffb2 	bl	8005340 <std>
 80053dc:	2301      	movs	r3, #1
 80053de:	63a3      	str	r3, [r4, #56]	; 0x38
 80053e0:	4802      	ldr	r0, [pc, #8]	; (80053ec <__sinit+0x50>)
 80053e2:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80053e6:	f000 bb2b 	b.w	8005a40 <__retarget_lock_release_recursive>
 80053ea:	bf00      	nop
 80053ec:	20000df8 	.word	0x20000df8
 80053f0:	08005391 	.word	0x08005391

080053f4 <__sfp_lock_acquire>:
 80053f4:	4801      	ldr	r0, [pc, #4]	; (80053fc <__sfp_lock_acquire+0x8>)
 80053f6:	f000 bb21 	b.w	8005a3c <__retarget_lock_acquire_recursive>
 80053fa:	bf00      	nop
 80053fc:	20000e0c 	.word	0x20000e0c

08005400 <__sfp_lock_release>:
 8005400:	4801      	ldr	r0, [pc, #4]	; (8005408 <__sfp_lock_release+0x8>)
 8005402:	f000 bb1d 	b.w	8005a40 <__retarget_lock_release_recursive>
 8005406:	bf00      	nop
 8005408:	20000e0c 	.word	0x20000e0c

0800540c <__libc_fini_array>:
 800540c:	b538      	push	{r3, r4, r5, lr}
 800540e:	4c0a      	ldr	r4, [pc, #40]	; (8005438 <__libc_fini_array+0x2c>)
 8005410:	4d0a      	ldr	r5, [pc, #40]	; (800543c <__libc_fini_array+0x30>)
 8005412:	1b64      	subs	r4, r4, r5
 8005414:	10a4      	asrs	r4, r4, #2
 8005416:	d00a      	beq.n	800542e <__libc_fini_array+0x22>
 8005418:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 800541c:	3b01      	subs	r3, #1
 800541e:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 8005422:	3c01      	subs	r4, #1
 8005424:	f855 3904 	ldr.w	r3, [r5], #-4
 8005428:	4798      	blx	r3
 800542a:	2c00      	cmp	r4, #0
 800542c:	d1f9      	bne.n	8005422 <__libc_fini_array+0x16>
 800542e:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 8005432:	f001 befd 	b.w	8007230 <_fini>
 8005436:	bf00      	nop
 8005438:	0800770c 	.word	0x0800770c
 800543c:	08007708 	.word	0x08007708

08005440 <_malloc_trim_r>:
 8005440:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8005442:	4f24      	ldr	r7, [pc, #144]	; (80054d4 <_malloc_trim_r+0x94>)
 8005444:	460c      	mov	r4, r1
 8005446:	4606      	mov	r6, r0
 8005448:	f000 fe7c 	bl	8006144 <__malloc_lock>
 800544c:	68bb      	ldr	r3, [r7, #8]
 800544e:	685d      	ldr	r5, [r3, #4]
 8005450:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 8005454:	310f      	adds	r1, #15
 8005456:	f025 0503 	bic.w	r5, r5, #3
 800545a:	4429      	add	r1, r5
 800545c:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005460:	f021 010f 	bic.w	r1, r1, #15
 8005464:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005468:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 800546c:	db07      	blt.n	800547e <_malloc_trim_r+0x3e>
 800546e:	2100      	movs	r1, #0
 8005470:	4630      	mov	r0, r6
 8005472:	f001 fb5f 	bl	8006b34 <_sbrk_r>
 8005476:	68bb      	ldr	r3, [r7, #8]
 8005478:	442b      	add	r3, r5
 800547a:	4298      	cmp	r0, r3
 800547c:	d004      	beq.n	8005488 <_malloc_trim_r+0x48>
 800547e:	4630      	mov	r0, r6
 8005480:	f000 fe66 	bl	8006150 <__malloc_unlock>
 8005484:	2000      	movs	r0, #0
 8005486:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005488:	4261      	negs	r1, r4
 800548a:	4630      	mov	r0, r6
 800548c:	f001 fb52 	bl	8006b34 <_sbrk_r>
 8005490:	3001      	adds	r0, #1
 8005492:	d00d      	beq.n	80054b0 <_malloc_trim_r+0x70>
 8005494:	4b10      	ldr	r3, [pc, #64]	; (80054d8 <_malloc_trim_r+0x98>)
 8005496:	68ba      	ldr	r2, [r7, #8]
 8005498:	6819      	ldr	r1, [r3, #0]
 800549a:	1b2d      	subs	r5, r5, r4
 800549c:	f045 0501 	orr.w	r5, r5, #1
 80054a0:	4630      	mov	r0, r6
 80054a2:	1b09      	subs	r1, r1, r4
 80054a4:	6055      	str	r5, [r2, #4]
 80054a6:	6019      	str	r1, [r3, #0]
 80054a8:	f000 fe52 	bl	8006150 <__malloc_unlock>
 80054ac:	2001      	movs	r0, #1
 80054ae:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 80054b0:	2100      	movs	r1, #0
 80054b2:	4630      	mov	r0, r6
 80054b4:	f001 fb3e 	bl	8006b34 <_sbrk_r>
 80054b8:	68ba      	ldr	r2, [r7, #8]
 80054ba:	1a83      	subs	r3, r0, r2
 80054bc:	2b0f      	cmp	r3, #15
 80054be:	ddde      	ble.n	800547e <_malloc_trim_r+0x3e>
 80054c0:	4c06      	ldr	r4, [pc, #24]	; (80054dc <_malloc_trim_r+0x9c>)
 80054c2:	4905      	ldr	r1, [pc, #20]	; (80054d8 <_malloc_trim_r+0x98>)
 80054c4:	6824      	ldr	r4, [r4, #0]
 80054c6:	f043 0301 	orr.w	r3, r3, #1
 80054ca:	1b00      	subs	r0, r0, r4
 80054cc:	6053      	str	r3, [r2, #4]
 80054ce:	6008      	str	r0, [r1, #0]
 80054d0:	e7d5      	b.n	800547e <_malloc_trim_r+0x3e>
 80054d2:	bf00      	nop
 80054d4:	2000044c 	.word	0x2000044c
 80054d8:	20000d70 	.word	0x20000d70
 80054dc:	20000854 	.word	0x20000854

080054e0 <_free_r>:
 80054e0:	2900      	cmp	r1, #0
 80054e2:	d053      	beq.n	800558c <_free_r+0xac>
 80054e4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80054e6:	460c      	mov	r4, r1
 80054e8:	4606      	mov	r6, r0
 80054ea:	f000 fe2b 	bl	8006144 <__malloc_lock>
 80054ee:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80054f2:	4f71      	ldr	r7, [pc, #452]	; (80056b8 <_free_r+0x1d8>)
 80054f4:	f02c 0101 	bic.w	r1, ip, #1
 80054f8:	f1a4 0508 	sub.w	r5, r4, #8
 80054fc:	186b      	adds	r3, r5, r1
 80054fe:	68b8      	ldr	r0, [r7, #8]
 8005500:	685a      	ldr	r2, [r3, #4]
 8005502:	4298      	cmp	r0, r3
 8005504:	f022 0203 	bic.w	r2, r2, #3
 8005508:	d053      	beq.n	80055b2 <_free_r+0xd2>
 800550a:	f01c 0f01 	tst.w	ip, #1
 800550e:	605a      	str	r2, [r3, #4]
 8005510:	eb03 0002 	add.w	r0, r3, r2
 8005514:	d13b      	bne.n	800558e <_free_r+0xae>
 8005516:	f854 cc08 	ldr.w	ip, [r4, #-8]
 800551a:	6840      	ldr	r0, [r0, #4]
 800551c:	eba5 050c 	sub.w	r5, r5, ip
 8005520:	f107 0e08 	add.w	lr, r7, #8
 8005524:	68ac      	ldr	r4, [r5, #8]
 8005526:	4574      	cmp	r4, lr
 8005528:	4461      	add	r1, ip
 800552a:	f000 0001 	and.w	r0, r0, #1
 800552e:	d075      	beq.n	800561c <_free_r+0x13c>
 8005530:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8005534:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005538:	f8cc 4008 	str.w	r4, [ip, #8]
 800553c:	b360      	cbz	r0, 8005598 <_free_r+0xb8>
 800553e:	f041 0301 	orr.w	r3, r1, #1
 8005542:	606b      	str	r3, [r5, #4]
 8005544:	5069      	str	r1, [r5, r1]
 8005546:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 800554a:	d350      	bcc.n	80055ee <_free_r+0x10e>
 800554c:	0a4b      	lsrs	r3, r1, #9
 800554e:	2b04      	cmp	r3, #4
 8005550:	d870      	bhi.n	8005634 <_free_r+0x154>
 8005552:	098b      	lsrs	r3, r1, #6
 8005554:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005558:	00e4      	lsls	r4, r4, #3
 800555a:	f103 0238 	add.w	r2, r3, #56	; 0x38
 800555e:	1938      	adds	r0, r7, r4
 8005560:	593b      	ldr	r3, [r7, r4]
 8005562:	3808      	subs	r0, #8
 8005564:	4298      	cmp	r0, r3
 8005566:	d078      	beq.n	800565a <_free_r+0x17a>
 8005568:	685a      	ldr	r2, [r3, #4]
 800556a:	f022 0203 	bic.w	r2, r2, #3
 800556e:	428a      	cmp	r2, r1
 8005570:	d971      	bls.n	8005656 <_free_r+0x176>
 8005572:	689b      	ldr	r3, [r3, #8]
 8005574:	4298      	cmp	r0, r3
 8005576:	d1f7      	bne.n	8005568 <_free_r+0x88>
 8005578:	68c3      	ldr	r3, [r0, #12]
 800557a:	e9c5 0302 	strd	r0, r3, [r5, #8]
 800557e:	609d      	str	r5, [r3, #8]
 8005580:	60c5      	str	r5, [r0, #12]
 8005582:	4630      	mov	r0, r6
 8005584:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005588:	f000 bde2 	b.w	8006150 <__malloc_unlock>
 800558c:	4770      	bx	lr
 800558e:	6840      	ldr	r0, [r0, #4]
 8005590:	f000 0001 	and.w	r0, r0, #1
 8005594:	2800      	cmp	r0, #0
 8005596:	d1d2      	bne.n	800553e <_free_r+0x5e>
 8005598:	6898      	ldr	r0, [r3, #8]
 800559a:	4c48      	ldr	r4, [pc, #288]	; (80056bc <_free_r+0x1dc>)
 800559c:	4411      	add	r1, r2
 800559e:	42a0      	cmp	r0, r4
 80055a0:	f041 0201 	orr.w	r2, r1, #1
 80055a4:	d062      	beq.n	800566c <_free_r+0x18c>
 80055a6:	68db      	ldr	r3, [r3, #12]
 80055a8:	60c3      	str	r3, [r0, #12]
 80055aa:	6098      	str	r0, [r3, #8]
 80055ac:	606a      	str	r2, [r5, #4]
 80055ae:	5069      	str	r1, [r5, r1]
 80055b0:	e7c9      	b.n	8005546 <_free_r+0x66>
 80055b2:	f01c 0f01 	tst.w	ip, #1
 80055b6:	440a      	add	r2, r1
 80055b8:	d107      	bne.n	80055ca <_free_r+0xea>
 80055ba:	f854 3c08 	ldr.w	r3, [r4, #-8]
 80055be:	1aed      	subs	r5, r5, r3
 80055c0:	441a      	add	r2, r3
 80055c2:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 80055c6:	60cb      	str	r3, [r1, #12]
 80055c8:	6099      	str	r1, [r3, #8]
 80055ca:	4b3d      	ldr	r3, [pc, #244]	; (80056c0 <_free_r+0x1e0>)
 80055cc:	681b      	ldr	r3, [r3, #0]
 80055ce:	f042 0101 	orr.w	r1, r2, #1
 80055d2:	4293      	cmp	r3, r2
 80055d4:	6069      	str	r1, [r5, #4]
 80055d6:	60bd      	str	r5, [r7, #8]
 80055d8:	d804      	bhi.n	80055e4 <_free_r+0x104>
 80055da:	4b3a      	ldr	r3, [pc, #232]	; (80056c4 <_free_r+0x1e4>)
 80055dc:	4630      	mov	r0, r6
 80055de:	6819      	ldr	r1, [r3, #0]
 80055e0:	f7ff ff2e 	bl	8005440 <_malloc_trim_r>
 80055e4:	4630      	mov	r0, r6
 80055e6:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80055ea:	f000 bdb1 	b.w	8006150 <__malloc_unlock>
 80055ee:	08c9      	lsrs	r1, r1, #3
 80055f0:	6878      	ldr	r0, [r7, #4]
 80055f2:	1c4a      	adds	r2, r1, #1
 80055f4:	2301      	movs	r3, #1
 80055f6:	1089      	asrs	r1, r1, #2
 80055f8:	408b      	lsls	r3, r1
 80055fa:	4303      	orrs	r3, r0
 80055fc:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8005600:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8005604:	607b      	str	r3, [r7, #4]
 8005606:	3908      	subs	r1, #8
 8005608:	e9c5 0102 	strd	r0, r1, [r5, #8]
 800560c:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8005610:	60c5      	str	r5, [r0, #12]
 8005612:	4630      	mov	r0, r6
 8005614:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005618:	f000 bd9a 	b.w	8006150 <__malloc_unlock>
 800561c:	2800      	cmp	r0, #0
 800561e:	d145      	bne.n	80056ac <_free_r+0x1cc>
 8005620:	440a      	add	r2, r1
 8005622:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8005626:	f042 0001 	orr.w	r0, r2, #1
 800562a:	60cb      	str	r3, [r1, #12]
 800562c:	6099      	str	r1, [r3, #8]
 800562e:	6068      	str	r0, [r5, #4]
 8005630:	50aa      	str	r2, [r5, r2]
 8005632:	e7d7      	b.n	80055e4 <_free_r+0x104>
 8005634:	2b14      	cmp	r3, #20
 8005636:	d908      	bls.n	800564a <_free_r+0x16a>
 8005638:	2b54      	cmp	r3, #84	; 0x54
 800563a:	d81e      	bhi.n	800567a <_free_r+0x19a>
 800563c:	0b0b      	lsrs	r3, r1, #12
 800563e:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8005642:	00e4      	lsls	r4, r4, #3
 8005644:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005648:	e789      	b.n	800555e <_free_r+0x7e>
 800564a:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 800564e:	00e4      	lsls	r4, r4, #3
 8005650:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8005654:	e783      	b.n	800555e <_free_r+0x7e>
 8005656:	4618      	mov	r0, r3
 8005658:	e78e      	b.n	8005578 <_free_r+0x98>
 800565a:	1093      	asrs	r3, r2, #2
 800565c:	6879      	ldr	r1, [r7, #4]
 800565e:	2201      	movs	r2, #1
 8005660:	fa02 f303 	lsl.w	r3, r2, r3
 8005664:	430b      	orrs	r3, r1
 8005666:	607b      	str	r3, [r7, #4]
 8005668:	4603      	mov	r3, r0
 800566a:	e786      	b.n	800557a <_free_r+0x9a>
 800566c:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005670:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8005674:	606a      	str	r2, [r5, #4]
 8005676:	5069      	str	r1, [r5, r1]
 8005678:	e7b4      	b.n	80055e4 <_free_r+0x104>
 800567a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800567e:	d806      	bhi.n	800568e <_free_r+0x1ae>
 8005680:	0bcb      	lsrs	r3, r1, #15
 8005682:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8005686:	00e4      	lsls	r4, r4, #3
 8005688:	f103 0277 	add.w	r2, r3, #119	; 0x77
 800568c:	e767      	b.n	800555e <_free_r+0x7e>
 800568e:	f240 5254 	movw	r2, #1364	; 0x554
 8005692:	4293      	cmp	r3, r2
 8005694:	d806      	bhi.n	80056a4 <_free_r+0x1c4>
 8005696:	0c8b      	lsrs	r3, r1, #18
 8005698:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 800569c:	00e4      	lsls	r4, r4, #3
 800569e:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 80056a2:	e75c      	b.n	800555e <_free_r+0x7e>
 80056a4:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 80056a8:	227e      	movs	r2, #126	; 0x7e
 80056aa:	e758      	b.n	800555e <_free_r+0x7e>
 80056ac:	f041 0201 	orr.w	r2, r1, #1
 80056b0:	606a      	str	r2, [r5, #4]
 80056b2:	6019      	str	r1, [r3, #0]
 80056b4:	e796      	b.n	80055e4 <_free_r+0x104>
 80056b6:	bf00      	nop
 80056b8:	2000044c 	.word	0x2000044c
 80056bc:	20000454 	.word	0x20000454
 80056c0:	20000858 	.word	0x20000858
 80056c4:	20000da0 	.word	0x20000da0

080056c8 <__sfvwrite_r>:
 80056c8:	6893      	ldr	r3, [r2, #8]
 80056ca:	2b00      	cmp	r3, #0
 80056cc:	f000 80e4 	beq.w	8005898 <__sfvwrite_r+0x1d0>
 80056d0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80056d4:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80056d8:	b29b      	uxth	r3, r3
 80056da:	460c      	mov	r4, r1
 80056dc:	0719      	lsls	r1, r3, #28
 80056de:	b083      	sub	sp, #12
 80056e0:	4682      	mov	sl, r0
 80056e2:	4690      	mov	r8, r2
 80056e4:	d535      	bpl.n	8005752 <__sfvwrite_r+0x8a>
 80056e6:	6922      	ldr	r2, [r4, #16]
 80056e8:	b39a      	cbz	r2, 8005752 <__sfvwrite_r+0x8a>
 80056ea:	f013 0202 	ands.w	r2, r3, #2
 80056ee:	f8d8 6000 	ldr.w	r6, [r8]
 80056f2:	d03d      	beq.n	8005770 <__sfvwrite_r+0xa8>
 80056f4:	2700      	movs	r7, #0
 80056f6:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80056fa:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80056fe:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 80059c0 <__sfvwrite_r+0x2f8>
 8005702:	463d      	mov	r5, r7
 8005704:	454d      	cmp	r5, r9
 8005706:	462b      	mov	r3, r5
 8005708:	463a      	mov	r2, r7
 800570a:	bf28      	it	cs
 800570c:	464b      	movcs	r3, r9
 800570e:	4661      	mov	r1, ip
 8005710:	4650      	mov	r0, sl
 8005712:	b1d5      	cbz	r5, 800574a <__sfvwrite_r+0x82>
 8005714:	47d8      	blx	fp
 8005716:	2800      	cmp	r0, #0
 8005718:	f340 80c6 	ble.w	80058a8 <__sfvwrite_r+0x1e0>
 800571c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005720:	1a1b      	subs	r3, r3, r0
 8005722:	4407      	add	r7, r0
 8005724:	1a2d      	subs	r5, r5, r0
 8005726:	f8c8 3008 	str.w	r3, [r8, #8]
 800572a:	2b00      	cmp	r3, #0
 800572c:	f000 80b0 	beq.w	8005890 <__sfvwrite_r+0x1c8>
 8005730:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8005734:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005738:	454d      	cmp	r5, r9
 800573a:	462b      	mov	r3, r5
 800573c:	463a      	mov	r2, r7
 800573e:	bf28      	it	cs
 8005740:	464b      	movcs	r3, r9
 8005742:	4661      	mov	r1, ip
 8005744:	4650      	mov	r0, sl
 8005746:	2d00      	cmp	r5, #0
 8005748:	d1e4      	bne.n	8005714 <__sfvwrite_r+0x4c>
 800574a:	e9d6 7500 	ldrd	r7, r5, [r6]
 800574e:	3608      	adds	r6, #8
 8005750:	e7d8      	b.n	8005704 <__sfvwrite_r+0x3c>
 8005752:	4621      	mov	r1, r4
 8005754:	4650      	mov	r0, sl
 8005756:	f7fe fd03 	bl	8004160 <__swsetup_r>
 800575a:	2800      	cmp	r0, #0
 800575c:	f040 812a 	bne.w	80059b4 <__sfvwrite_r+0x2ec>
 8005760:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005764:	f8d8 6000 	ldr.w	r6, [r8]
 8005768:	b29b      	uxth	r3, r3
 800576a:	f013 0202 	ands.w	r2, r3, #2
 800576e:	d1c1      	bne.n	80056f4 <__sfvwrite_r+0x2c>
 8005770:	f013 0901 	ands.w	r9, r3, #1
 8005774:	d15d      	bne.n	8005832 <__sfvwrite_r+0x16a>
 8005776:	68a7      	ldr	r7, [r4, #8]
 8005778:	6820      	ldr	r0, [r4, #0]
 800577a:	464d      	mov	r5, r9
 800577c:	2d00      	cmp	r5, #0
 800577e:	d054      	beq.n	800582a <__sfvwrite_r+0x162>
 8005780:	059a      	lsls	r2, r3, #22
 8005782:	f140 809b 	bpl.w	80058bc <__sfvwrite_r+0x1f4>
 8005786:	42af      	cmp	r7, r5
 8005788:	46bb      	mov	fp, r7
 800578a:	f200 80d8 	bhi.w	800593e <__sfvwrite_r+0x276>
 800578e:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8005792:	d02f      	beq.n	80057f4 <__sfvwrite_r+0x12c>
 8005794:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005798:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 800579c:	eba0 0b01 	sub.w	fp, r0, r1
 80057a0:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 80057a4:	1c68      	adds	r0, r5, #1
 80057a6:	107f      	asrs	r7, r7, #1
 80057a8:	4458      	add	r0, fp
 80057aa:	42b8      	cmp	r0, r7
 80057ac:	463a      	mov	r2, r7
 80057ae:	bf84      	itt	hi
 80057b0:	4607      	movhi	r7, r0
 80057b2:	463a      	movhi	r2, r7
 80057b4:	055b      	lsls	r3, r3, #21
 80057b6:	f140 80d3 	bpl.w	8005960 <__sfvwrite_r+0x298>
 80057ba:	4611      	mov	r1, r2
 80057bc:	4650      	mov	r0, sl
 80057be:	f000 f9b9 	bl	8005b34 <_malloc_r>
 80057c2:	2800      	cmp	r0, #0
 80057c4:	f000 80f0 	beq.w	80059a8 <__sfvwrite_r+0x2e0>
 80057c8:	465a      	mov	r2, fp
 80057ca:	6921      	ldr	r1, [r4, #16]
 80057cc:	9001      	str	r0, [sp, #4]
 80057ce:	f7fa fe97 	bl	8000500 <memcpy>
 80057d2:	89a2      	ldrh	r2, [r4, #12]
 80057d4:	9b01      	ldr	r3, [sp, #4]
 80057d6:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80057da:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80057de:	81a2      	strh	r2, [r4, #12]
 80057e0:	eba7 020b 	sub.w	r2, r7, fp
 80057e4:	eb03 000b 	add.w	r0, r3, fp
 80057e8:	6167      	str	r7, [r4, #20]
 80057ea:	6123      	str	r3, [r4, #16]
 80057ec:	6020      	str	r0, [r4, #0]
 80057ee:	60a2      	str	r2, [r4, #8]
 80057f0:	462f      	mov	r7, r5
 80057f2:	46ab      	mov	fp, r5
 80057f4:	465a      	mov	r2, fp
 80057f6:	4649      	mov	r1, r9
 80057f8:	f000 fc40 	bl	800607c <memmove>
 80057fc:	68a2      	ldr	r2, [r4, #8]
 80057fe:	6823      	ldr	r3, [r4, #0]
 8005800:	1bd2      	subs	r2, r2, r7
 8005802:	445b      	add	r3, fp
 8005804:	462f      	mov	r7, r5
 8005806:	60a2      	str	r2, [r4, #8]
 8005808:	6023      	str	r3, [r4, #0]
 800580a:	2500      	movs	r5, #0
 800580c:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005810:	1bdb      	subs	r3, r3, r7
 8005812:	44b9      	add	r9, r7
 8005814:	f8c8 3008 	str.w	r3, [r8, #8]
 8005818:	2b00      	cmp	r3, #0
 800581a:	d039      	beq.n	8005890 <__sfvwrite_r+0x1c8>
 800581c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005820:	68a7      	ldr	r7, [r4, #8]
 8005822:	6820      	ldr	r0, [r4, #0]
 8005824:	b29b      	uxth	r3, r3
 8005826:	2d00      	cmp	r5, #0
 8005828:	d1aa      	bne.n	8005780 <__sfvwrite_r+0xb8>
 800582a:	e9d6 9500 	ldrd	r9, r5, [r6]
 800582e:	3608      	adds	r6, #8
 8005830:	e7a4      	b.n	800577c <__sfvwrite_r+0xb4>
 8005832:	4633      	mov	r3, r6
 8005834:	4691      	mov	r9, r2
 8005836:	4610      	mov	r0, r2
 8005838:	4617      	mov	r7, r2
 800583a:	464e      	mov	r6, r9
 800583c:	469b      	mov	fp, r3
 800583e:	2f00      	cmp	r7, #0
 8005840:	d06b      	beq.n	800591a <__sfvwrite_r+0x252>
 8005842:	2800      	cmp	r0, #0
 8005844:	d071      	beq.n	800592a <__sfvwrite_r+0x262>
 8005846:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 800584a:	6820      	ldr	r0, [r4, #0]
 800584c:	45b9      	cmp	r9, r7
 800584e:	464b      	mov	r3, r9
 8005850:	bf28      	it	cs
 8005852:	463b      	movcs	r3, r7
 8005854:	4288      	cmp	r0, r1
 8005856:	d903      	bls.n	8005860 <__sfvwrite_r+0x198>
 8005858:	68a5      	ldr	r5, [r4, #8]
 800585a:	4415      	add	r5, r2
 800585c:	42ab      	cmp	r3, r5
 800585e:	dc71      	bgt.n	8005944 <__sfvwrite_r+0x27c>
 8005860:	429a      	cmp	r2, r3
 8005862:	f300 8093 	bgt.w	800598c <__sfvwrite_r+0x2c4>
 8005866:	4613      	mov	r3, r2
 8005868:	6a65      	ldr	r5, [r4, #36]	; 0x24
 800586a:	69e1      	ldr	r1, [r4, #28]
 800586c:	4632      	mov	r2, r6
 800586e:	4650      	mov	r0, sl
 8005870:	47a8      	blx	r5
 8005872:	1e05      	subs	r5, r0, #0
 8005874:	dd18      	ble.n	80058a8 <__sfvwrite_r+0x1e0>
 8005876:	ebb9 0905 	subs.w	r9, r9, r5
 800587a:	d00f      	beq.n	800589c <__sfvwrite_r+0x1d4>
 800587c:	2001      	movs	r0, #1
 800587e:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005882:	1b5b      	subs	r3, r3, r5
 8005884:	442e      	add	r6, r5
 8005886:	1b7f      	subs	r7, r7, r5
 8005888:	f8c8 3008 	str.w	r3, [r8, #8]
 800588c:	2b00      	cmp	r3, #0
 800588e:	d1d6      	bne.n	800583e <__sfvwrite_r+0x176>
 8005890:	2000      	movs	r0, #0
 8005892:	b003      	add	sp, #12
 8005894:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005898:	2000      	movs	r0, #0
 800589a:	4770      	bx	lr
 800589c:	4621      	mov	r1, r4
 800589e:	4650      	mov	r0, sl
 80058a0:	f7ff fd20 	bl	80052e4 <_fflush_r>
 80058a4:	2800      	cmp	r0, #0
 80058a6:	d0ea      	beq.n	800587e <__sfvwrite_r+0x1b6>
 80058a8:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80058ac:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80058b0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80058b4:	81a3      	strh	r3, [r4, #12]
 80058b6:	b003      	add	sp, #12
 80058b8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80058bc:	6923      	ldr	r3, [r4, #16]
 80058be:	4283      	cmp	r3, r0
 80058c0:	d315      	bcc.n	80058ee <__sfvwrite_r+0x226>
 80058c2:	6961      	ldr	r1, [r4, #20]
 80058c4:	42a9      	cmp	r1, r5
 80058c6:	d812      	bhi.n	80058ee <__sfvwrite_r+0x226>
 80058c8:	4b3c      	ldr	r3, [pc, #240]	; (80059bc <__sfvwrite_r+0x2f4>)
 80058ca:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80058cc:	429d      	cmp	r5, r3
 80058ce:	bf94      	ite	ls
 80058d0:	462b      	movls	r3, r5
 80058d2:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 80058d6:	464a      	mov	r2, r9
 80058d8:	fb93 f3f1 	sdiv	r3, r3, r1
 80058dc:	4650      	mov	r0, sl
 80058de:	fb01 f303 	mul.w	r3, r1, r3
 80058e2:	69e1      	ldr	r1, [r4, #28]
 80058e4:	47b8      	blx	r7
 80058e6:	1e07      	subs	r7, r0, #0
 80058e8:	ddde      	ble.n	80058a8 <__sfvwrite_r+0x1e0>
 80058ea:	1bed      	subs	r5, r5, r7
 80058ec:	e78e      	b.n	800580c <__sfvwrite_r+0x144>
 80058ee:	42af      	cmp	r7, r5
 80058f0:	bf28      	it	cs
 80058f2:	462f      	movcs	r7, r5
 80058f4:	463a      	mov	r2, r7
 80058f6:	4649      	mov	r1, r9
 80058f8:	f000 fbc0 	bl	800607c <memmove>
 80058fc:	68a3      	ldr	r3, [r4, #8]
 80058fe:	6822      	ldr	r2, [r4, #0]
 8005900:	1bdb      	subs	r3, r3, r7
 8005902:	443a      	add	r2, r7
 8005904:	60a3      	str	r3, [r4, #8]
 8005906:	6022      	str	r2, [r4, #0]
 8005908:	2b00      	cmp	r3, #0
 800590a:	d1ee      	bne.n	80058ea <__sfvwrite_r+0x222>
 800590c:	4621      	mov	r1, r4
 800590e:	4650      	mov	r0, sl
 8005910:	f7ff fce8 	bl	80052e4 <_fflush_r>
 8005914:	2800      	cmp	r0, #0
 8005916:	d0e8      	beq.n	80058ea <__sfvwrite_r+0x222>
 8005918:	e7c6      	b.n	80058a8 <__sfvwrite_r+0x1e0>
 800591a:	f10b 0308 	add.w	r3, fp, #8
 800591e:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005922:	469b      	mov	fp, r3
 8005924:	3308      	adds	r3, #8
 8005926:	2f00      	cmp	r7, #0
 8005928:	d0f9      	beq.n	800591e <__sfvwrite_r+0x256>
 800592a:	463a      	mov	r2, r7
 800592c:	210a      	movs	r1, #10
 800592e:	4630      	mov	r0, r6
 8005930:	f7fa fef6 	bl	8000720 <memchr>
 8005934:	b338      	cbz	r0, 8005986 <__sfvwrite_r+0x2be>
 8005936:	3001      	adds	r0, #1
 8005938:	eba0 0906 	sub.w	r9, r0, r6
 800593c:	e783      	b.n	8005846 <__sfvwrite_r+0x17e>
 800593e:	462f      	mov	r7, r5
 8005940:	46ab      	mov	fp, r5
 8005942:	e757      	b.n	80057f4 <__sfvwrite_r+0x12c>
 8005944:	4631      	mov	r1, r6
 8005946:	462a      	mov	r2, r5
 8005948:	f000 fb98 	bl	800607c <memmove>
 800594c:	6823      	ldr	r3, [r4, #0]
 800594e:	442b      	add	r3, r5
 8005950:	6023      	str	r3, [r4, #0]
 8005952:	4621      	mov	r1, r4
 8005954:	4650      	mov	r0, sl
 8005956:	f7ff fcc5 	bl	80052e4 <_fflush_r>
 800595a:	2800      	cmp	r0, #0
 800595c:	d08b      	beq.n	8005876 <__sfvwrite_r+0x1ae>
 800595e:	e7a3      	b.n	80058a8 <__sfvwrite_r+0x1e0>
 8005960:	4650      	mov	r0, sl
 8005962:	f000 ff05 	bl	8006770 <_realloc_r>
 8005966:	4603      	mov	r3, r0
 8005968:	2800      	cmp	r0, #0
 800596a:	f47f af39 	bne.w	80057e0 <__sfvwrite_r+0x118>
 800596e:	6921      	ldr	r1, [r4, #16]
 8005970:	4650      	mov	r0, sl
 8005972:	f7ff fdb5 	bl	80054e0 <_free_r>
 8005976:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800597a:	220c      	movs	r2, #12
 800597c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005980:	f8ca 2000 	str.w	r2, [sl]
 8005984:	e792      	b.n	80058ac <__sfvwrite_r+0x1e4>
 8005986:	f107 0901 	add.w	r9, r7, #1
 800598a:	e75c      	b.n	8005846 <__sfvwrite_r+0x17e>
 800598c:	461a      	mov	r2, r3
 800598e:	4631      	mov	r1, r6
 8005990:	9301      	str	r3, [sp, #4]
 8005992:	f000 fb73 	bl	800607c <memmove>
 8005996:	9b01      	ldr	r3, [sp, #4]
 8005998:	68a1      	ldr	r1, [r4, #8]
 800599a:	6822      	ldr	r2, [r4, #0]
 800599c:	1ac9      	subs	r1, r1, r3
 800599e:	441a      	add	r2, r3
 80059a0:	60a1      	str	r1, [r4, #8]
 80059a2:	6022      	str	r2, [r4, #0]
 80059a4:	461d      	mov	r5, r3
 80059a6:	e766      	b.n	8005876 <__sfvwrite_r+0x1ae>
 80059a8:	230c      	movs	r3, #12
 80059aa:	f8ca 3000 	str.w	r3, [sl]
 80059ae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059b2:	e77b      	b.n	80058ac <__sfvwrite_r+0x1e4>
 80059b4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80059b8:	e76b      	b.n	8005892 <__sfvwrite_r+0x1ca>
 80059ba:	bf00      	nop
 80059bc:	7ffffffe 	.word	0x7ffffffe
 80059c0:	7ffffc00 	.word	0x7ffffc00

080059c4 <_fwalk_reent>:
 80059c4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 80059c8:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 80059cc:	d01f      	beq.n	8005a0e <_fwalk_reent+0x4a>
 80059ce:	4688      	mov	r8, r1
 80059d0:	4606      	mov	r6, r0
 80059d2:	f04f 0900 	mov.w	r9, #0
 80059d6:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 80059da:	3d01      	subs	r5, #1
 80059dc:	d411      	bmi.n	8005a02 <_fwalk_reent+0x3e>
 80059de:	89a3      	ldrh	r3, [r4, #12]
 80059e0:	2b01      	cmp	r3, #1
 80059e2:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 80059e6:	4621      	mov	r1, r4
 80059e8:	4630      	mov	r0, r6
 80059ea:	d906      	bls.n	80059fa <_fwalk_reent+0x36>
 80059ec:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 80059f0:	3301      	adds	r3, #1
 80059f2:	d002      	beq.n	80059fa <_fwalk_reent+0x36>
 80059f4:	47c0      	blx	r8
 80059f6:	ea49 0900 	orr.w	r9, r9, r0
 80059fa:	1c6b      	adds	r3, r5, #1
 80059fc:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005a00:	d1ed      	bne.n	80059de <_fwalk_reent+0x1a>
 8005a02:	683f      	ldr	r7, [r7, #0]
 8005a04:	2f00      	cmp	r7, #0
 8005a06:	d1e6      	bne.n	80059d6 <_fwalk_reent+0x12>
 8005a08:	4648      	mov	r0, r9
 8005a0a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005a0e:	46b9      	mov	r9, r7
 8005a10:	4648      	mov	r0, r9
 8005a12:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005a16:	bf00      	nop

08005a18 <_localeconv_r>:
 8005a18:	4a04      	ldr	r2, [pc, #16]	; (8005a2c <_localeconv_r+0x14>)
 8005a1a:	4b05      	ldr	r3, [pc, #20]	; (8005a30 <_localeconv_r+0x18>)
 8005a1c:	6812      	ldr	r2, [r2, #0]
 8005a1e:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005a20:	2800      	cmp	r0, #0
 8005a22:	bf08      	it	eq
 8005a24:	4618      	moveq	r0, r3
 8005a26:	30f0      	adds	r0, #240	; 0xf0
 8005a28:	4770      	bx	lr
 8005a2a:	bf00      	nop
 8005a2c:	20000018 	.word	0x20000018
 8005a30:	2000085c 	.word	0x2000085c

08005a34 <__retarget_lock_init_recursive>:
 8005a34:	4770      	bx	lr
 8005a36:	bf00      	nop

08005a38 <__retarget_lock_close_recursive>:
 8005a38:	4770      	bx	lr
 8005a3a:	bf00      	nop

08005a3c <__retarget_lock_acquire_recursive>:
 8005a3c:	4770      	bx	lr
 8005a3e:	bf00      	nop

08005a40 <__retarget_lock_release_recursive>:
 8005a40:	4770      	bx	lr
 8005a42:	bf00      	nop

08005a44 <__swhatbuf_r>:
 8005a44:	b570      	push	{r4, r5, r6, lr}
 8005a46:	460c      	mov	r4, r1
 8005a48:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005a4c:	2900      	cmp	r1, #0
 8005a4e:	b096      	sub	sp, #88	; 0x58
 8005a50:	4615      	mov	r5, r2
 8005a52:	461e      	mov	r6, r3
 8005a54:	da0f      	bge.n	8005a76 <__swhatbuf_r+0x32>
 8005a56:	89a2      	ldrh	r2, [r4, #12]
 8005a58:	2300      	movs	r3, #0
 8005a5a:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005a5e:	6033      	str	r3, [r6, #0]
 8005a60:	d104      	bne.n	8005a6c <__swhatbuf_r+0x28>
 8005a62:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005a66:	602b      	str	r3, [r5, #0]
 8005a68:	b016      	add	sp, #88	; 0x58
 8005a6a:	bd70      	pop	{r4, r5, r6, pc}
 8005a6c:	2240      	movs	r2, #64	; 0x40
 8005a6e:	4618      	mov	r0, r3
 8005a70:	602a      	str	r2, [r5, #0]
 8005a72:	b016      	add	sp, #88	; 0x58
 8005a74:	bd70      	pop	{r4, r5, r6, pc}
 8005a76:	466a      	mov	r2, sp
 8005a78:	f001 fad0 	bl	800701c <_fstat_r>
 8005a7c:	2800      	cmp	r0, #0
 8005a7e:	dbea      	blt.n	8005a56 <__swhatbuf_r+0x12>
 8005a80:	9b01      	ldr	r3, [sp, #4]
 8005a82:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005a86:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005a8a:	fab3 f383 	clz	r3, r3
 8005a8e:	095b      	lsrs	r3, r3, #5
 8005a90:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005a94:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005a98:	6033      	str	r3, [r6, #0]
 8005a9a:	602a      	str	r2, [r5, #0]
 8005a9c:	b016      	add	sp, #88	; 0x58
 8005a9e:	bd70      	pop	{r4, r5, r6, pc}

08005aa0 <__smakebuf_r>:
 8005aa0:	898a      	ldrh	r2, [r1, #12]
 8005aa2:	0792      	lsls	r2, r2, #30
 8005aa4:	460b      	mov	r3, r1
 8005aa6:	d506      	bpl.n	8005ab6 <__smakebuf_r+0x16>
 8005aa8:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005aac:	2101      	movs	r1, #1
 8005aae:	601a      	str	r2, [r3, #0]
 8005ab0:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005ab4:	4770      	bx	lr
 8005ab6:	b570      	push	{r4, r5, r6, lr}
 8005ab8:	b082      	sub	sp, #8
 8005aba:	ab01      	add	r3, sp, #4
 8005abc:	466a      	mov	r2, sp
 8005abe:	460c      	mov	r4, r1
 8005ac0:	4605      	mov	r5, r0
 8005ac2:	f7ff ffbf 	bl	8005a44 <__swhatbuf_r>
 8005ac6:	9900      	ldr	r1, [sp, #0]
 8005ac8:	4606      	mov	r6, r0
 8005aca:	4628      	mov	r0, r5
 8005acc:	f000 f832 	bl	8005b34 <_malloc_r>
 8005ad0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005ad4:	b1d8      	cbz	r0, 8005b0e <__smakebuf_r+0x6e>
 8005ad6:	4916      	ldr	r1, [pc, #88]	; (8005b30 <__smakebuf_r+0x90>)
 8005ad8:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005ada:	9a01      	ldr	r2, [sp, #4]
 8005adc:	9900      	ldr	r1, [sp, #0]
 8005ade:	6020      	str	r0, [r4, #0]
 8005ae0:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005ae4:	81a3      	strh	r3, [r4, #12]
 8005ae6:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005aea:	b91a      	cbnz	r2, 8005af4 <__smakebuf_r+0x54>
 8005aec:	4333      	orrs	r3, r6
 8005aee:	81a3      	strh	r3, [r4, #12]
 8005af0:	b002      	add	sp, #8
 8005af2:	bd70      	pop	{r4, r5, r6, pc}
 8005af4:	4628      	mov	r0, r5
 8005af6:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005afa:	f001 faa3 	bl	8007044 <_isatty_r>
 8005afe:	b1a0      	cbz	r0, 8005b2a <__smakebuf_r+0x8a>
 8005b00:	89a3      	ldrh	r3, [r4, #12]
 8005b02:	f023 0303 	bic.w	r3, r3, #3
 8005b06:	f043 0301 	orr.w	r3, r3, #1
 8005b0a:	b21b      	sxth	r3, r3
 8005b0c:	e7ee      	b.n	8005aec <__smakebuf_r+0x4c>
 8005b0e:	059a      	lsls	r2, r3, #22
 8005b10:	d4ee      	bmi.n	8005af0 <__smakebuf_r+0x50>
 8005b12:	f023 0303 	bic.w	r3, r3, #3
 8005b16:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005b1a:	f043 0302 	orr.w	r3, r3, #2
 8005b1e:	2101      	movs	r1, #1
 8005b20:	81a3      	strh	r3, [r4, #12]
 8005b22:	6022      	str	r2, [r4, #0]
 8005b24:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005b28:	e7e2      	b.n	8005af0 <__smakebuf_r+0x50>
 8005b2a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b2e:	e7dd      	b.n	8005aec <__smakebuf_r+0x4c>
 8005b30:	08005391 	.word	0x08005391

08005b34 <_malloc_r>:
 8005b34:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005b38:	f101 050b 	add.w	r5, r1, #11
 8005b3c:	2d16      	cmp	r5, #22
 8005b3e:	b083      	sub	sp, #12
 8005b40:	4606      	mov	r6, r0
 8005b42:	d823      	bhi.n	8005b8c <_malloc_r+0x58>
 8005b44:	2910      	cmp	r1, #16
 8005b46:	f200 80b9 	bhi.w	8005cbc <_malloc_r+0x188>
 8005b4a:	f000 fafb 	bl	8006144 <__malloc_lock>
 8005b4e:	2510      	movs	r5, #16
 8005b50:	2318      	movs	r3, #24
 8005b52:	2002      	movs	r0, #2
 8005b54:	4fc5      	ldr	r7, [pc, #788]	; (8005e6c <_malloc_r+0x338>)
 8005b56:	443b      	add	r3, r7
 8005b58:	f1a3 0208 	sub.w	r2, r3, #8
 8005b5c:	685c      	ldr	r4, [r3, #4]
 8005b5e:	4294      	cmp	r4, r2
 8005b60:	f000 8166 	beq.w	8005e30 <_malloc_r+0x2fc>
 8005b64:	6863      	ldr	r3, [r4, #4]
 8005b66:	f023 0303 	bic.w	r3, r3, #3
 8005b6a:	4423      	add	r3, r4
 8005b6c:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005b70:	685a      	ldr	r2, [r3, #4]
 8005b72:	60e9      	str	r1, [r5, #12]
 8005b74:	f042 0201 	orr.w	r2, r2, #1
 8005b78:	608d      	str	r5, [r1, #8]
 8005b7a:	4630      	mov	r0, r6
 8005b7c:	605a      	str	r2, [r3, #4]
 8005b7e:	f000 fae7 	bl	8006150 <__malloc_unlock>
 8005b82:	3408      	adds	r4, #8
 8005b84:	4620      	mov	r0, r4
 8005b86:	b003      	add	sp, #12
 8005b88:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005b8c:	f035 0507 	bics.w	r5, r5, #7
 8005b90:	f100 8094 	bmi.w	8005cbc <_malloc_r+0x188>
 8005b94:	42a9      	cmp	r1, r5
 8005b96:	f200 8091 	bhi.w	8005cbc <_malloc_r+0x188>
 8005b9a:	f000 fad3 	bl	8006144 <__malloc_lock>
 8005b9e:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005ba2:	f0c0 8183 	bcc.w	8005eac <_malloc_r+0x378>
 8005ba6:	0a6b      	lsrs	r3, r5, #9
 8005ba8:	f000 808f 	beq.w	8005cca <_malloc_r+0x196>
 8005bac:	2b04      	cmp	r3, #4
 8005bae:	f200 8146 	bhi.w	8005e3e <_malloc_r+0x30a>
 8005bb2:	09ab      	lsrs	r3, r5, #6
 8005bb4:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005bb8:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005bbc:	00c3      	lsls	r3, r0, #3
 8005bbe:	4fab      	ldr	r7, [pc, #684]	; (8005e6c <_malloc_r+0x338>)
 8005bc0:	443b      	add	r3, r7
 8005bc2:	f1a3 0108 	sub.w	r1, r3, #8
 8005bc6:	685c      	ldr	r4, [r3, #4]
 8005bc8:	42a1      	cmp	r1, r4
 8005bca:	d106      	bne.n	8005bda <_malloc_r+0xa6>
 8005bcc:	e00c      	b.n	8005be8 <_malloc_r+0xb4>
 8005bce:	2a00      	cmp	r2, #0
 8005bd0:	f280 811d 	bge.w	8005e0e <_malloc_r+0x2da>
 8005bd4:	68e4      	ldr	r4, [r4, #12]
 8005bd6:	42a1      	cmp	r1, r4
 8005bd8:	d006      	beq.n	8005be8 <_malloc_r+0xb4>
 8005bda:	6863      	ldr	r3, [r4, #4]
 8005bdc:	f023 0303 	bic.w	r3, r3, #3
 8005be0:	1b5a      	subs	r2, r3, r5
 8005be2:	2a0f      	cmp	r2, #15
 8005be4:	ddf3      	ble.n	8005bce <_malloc_r+0x9a>
 8005be6:	4660      	mov	r0, ip
 8005be8:	693c      	ldr	r4, [r7, #16]
 8005bea:	f8df c294 	ldr.w	ip, [pc, #660]	; 8005e80 <_malloc_r+0x34c>
 8005bee:	4564      	cmp	r4, ip
 8005bf0:	d071      	beq.n	8005cd6 <_malloc_r+0x1a2>
 8005bf2:	6863      	ldr	r3, [r4, #4]
 8005bf4:	f023 0303 	bic.w	r3, r3, #3
 8005bf8:	1b5a      	subs	r2, r3, r5
 8005bfa:	2a0f      	cmp	r2, #15
 8005bfc:	f300 8144 	bgt.w	8005e88 <_malloc_r+0x354>
 8005c00:	2a00      	cmp	r2, #0
 8005c02:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005c06:	f280 8126 	bge.w	8005e56 <_malloc_r+0x322>
 8005c0a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005c0e:	f080 8169 	bcs.w	8005ee4 <_malloc_r+0x3b0>
 8005c12:	08db      	lsrs	r3, r3, #3
 8005c14:	1c59      	adds	r1, r3, #1
 8005c16:	687a      	ldr	r2, [r7, #4]
 8005c18:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005c1c:	f8c4 8008 	str.w	r8, [r4, #8]
 8005c20:	f04f 0e01 	mov.w	lr, #1
 8005c24:	109b      	asrs	r3, r3, #2
 8005c26:	fa0e f303 	lsl.w	r3, lr, r3
 8005c2a:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005c2e:	4313      	orrs	r3, r2
 8005c30:	f1ae 0208 	sub.w	r2, lr, #8
 8005c34:	60e2      	str	r2, [r4, #12]
 8005c36:	607b      	str	r3, [r7, #4]
 8005c38:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005c3c:	f8c8 400c 	str.w	r4, [r8, #12]
 8005c40:	1082      	asrs	r2, r0, #2
 8005c42:	2401      	movs	r4, #1
 8005c44:	4094      	lsls	r4, r2
 8005c46:	429c      	cmp	r4, r3
 8005c48:	d84b      	bhi.n	8005ce2 <_malloc_r+0x1ae>
 8005c4a:	421c      	tst	r4, r3
 8005c4c:	d106      	bne.n	8005c5c <_malloc_r+0x128>
 8005c4e:	f020 0003 	bic.w	r0, r0, #3
 8005c52:	0064      	lsls	r4, r4, #1
 8005c54:	421c      	tst	r4, r3
 8005c56:	f100 0004 	add.w	r0, r0, #4
 8005c5a:	d0fa      	beq.n	8005c52 <_malloc_r+0x11e>
 8005c5c:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005c60:	46ce      	mov	lr, r9
 8005c62:	4680      	mov	r8, r0
 8005c64:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005c68:	459e      	cmp	lr, r3
 8005c6a:	d107      	bne.n	8005c7c <_malloc_r+0x148>
 8005c6c:	e122      	b.n	8005eb4 <_malloc_r+0x380>
 8005c6e:	2a00      	cmp	r2, #0
 8005c70:	f280 8129 	bge.w	8005ec6 <_malloc_r+0x392>
 8005c74:	68db      	ldr	r3, [r3, #12]
 8005c76:	459e      	cmp	lr, r3
 8005c78:	f000 811c 	beq.w	8005eb4 <_malloc_r+0x380>
 8005c7c:	6859      	ldr	r1, [r3, #4]
 8005c7e:	f021 0103 	bic.w	r1, r1, #3
 8005c82:	1b4a      	subs	r2, r1, r5
 8005c84:	2a0f      	cmp	r2, #15
 8005c86:	ddf2      	ble.n	8005c6e <_malloc_r+0x13a>
 8005c88:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005c8c:	195c      	adds	r4, r3, r5
 8005c8e:	f045 0501 	orr.w	r5, r5, #1
 8005c92:	605d      	str	r5, [r3, #4]
 8005c94:	f042 0501 	orr.w	r5, r2, #1
 8005c98:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005c9c:	4630      	mov	r0, r6
 8005c9e:	f8ce 8008 	str.w	r8, [lr, #8]
 8005ca2:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005ca6:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005caa:	6065      	str	r5, [r4, #4]
 8005cac:	505a      	str	r2, [r3, r1]
 8005cae:	9301      	str	r3, [sp, #4]
 8005cb0:	f000 fa4e 	bl	8006150 <__malloc_unlock>
 8005cb4:	9b01      	ldr	r3, [sp, #4]
 8005cb6:	f103 0408 	add.w	r4, r3, #8
 8005cba:	e763      	b.n	8005b84 <_malloc_r+0x50>
 8005cbc:	2400      	movs	r4, #0
 8005cbe:	230c      	movs	r3, #12
 8005cc0:	4620      	mov	r0, r4
 8005cc2:	6033      	str	r3, [r6, #0]
 8005cc4:	b003      	add	sp, #12
 8005cc6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005cca:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005cce:	2040      	movs	r0, #64	; 0x40
 8005cd0:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005cd4:	e773      	b.n	8005bbe <_malloc_r+0x8a>
 8005cd6:	687b      	ldr	r3, [r7, #4]
 8005cd8:	1082      	asrs	r2, r0, #2
 8005cda:	2401      	movs	r4, #1
 8005cdc:	4094      	lsls	r4, r2
 8005cde:	429c      	cmp	r4, r3
 8005ce0:	d9b3      	bls.n	8005c4a <_malloc_r+0x116>
 8005ce2:	68bc      	ldr	r4, [r7, #8]
 8005ce4:	6863      	ldr	r3, [r4, #4]
 8005ce6:	f023 0903 	bic.w	r9, r3, #3
 8005cea:	45a9      	cmp	r9, r5
 8005cec:	d303      	bcc.n	8005cf6 <_malloc_r+0x1c2>
 8005cee:	eba9 0305 	sub.w	r3, r9, r5
 8005cf2:	2b0f      	cmp	r3, #15
 8005cf4:	dc7b      	bgt.n	8005dee <_malloc_r+0x2ba>
 8005cf6:	4b5e      	ldr	r3, [pc, #376]	; (8005e70 <_malloc_r+0x33c>)
 8005cf8:	f8df a188 	ldr.w	sl, [pc, #392]	; 8005e84 <_malloc_r+0x350>
 8005cfc:	681a      	ldr	r2, [r3, #0]
 8005cfe:	f8da 3000 	ldr.w	r3, [sl]
 8005d02:	3301      	adds	r3, #1
 8005d04:	eb05 0802 	add.w	r8, r5, r2
 8005d08:	f000 8148 	beq.w	8005f9c <_malloc_r+0x468>
 8005d0c:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005d10:	f108 080f 	add.w	r8, r8, #15
 8005d14:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005d18:	f028 080f 	bic.w	r8, r8, #15
 8005d1c:	4641      	mov	r1, r8
 8005d1e:	4630      	mov	r0, r6
 8005d20:	f000 ff08 	bl	8006b34 <_sbrk_r>
 8005d24:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005d28:	4683      	mov	fp, r0
 8005d2a:	f000 8104 	beq.w	8005f36 <_malloc_r+0x402>
 8005d2e:	eb04 0009 	add.w	r0, r4, r9
 8005d32:	4558      	cmp	r0, fp
 8005d34:	f200 80fd 	bhi.w	8005f32 <_malloc_r+0x3fe>
 8005d38:	4a4e      	ldr	r2, [pc, #312]	; (8005e74 <_malloc_r+0x340>)
 8005d3a:	6813      	ldr	r3, [r2, #0]
 8005d3c:	4443      	add	r3, r8
 8005d3e:	6013      	str	r3, [r2, #0]
 8005d40:	f000 814d 	beq.w	8005fde <_malloc_r+0x4aa>
 8005d44:	f8da 1000 	ldr.w	r1, [sl]
 8005d48:	3101      	adds	r1, #1
 8005d4a:	bf1b      	ittet	ne
 8005d4c:	ebab 0000 	subne.w	r0, fp, r0
 8005d50:	181b      	addne	r3, r3, r0
 8005d52:	f8ca b000 	streq.w	fp, [sl]
 8005d56:	6013      	strne	r3, [r2, #0]
 8005d58:	f01b 0307 	ands.w	r3, fp, #7
 8005d5c:	f000 8134 	beq.w	8005fc8 <_malloc_r+0x494>
 8005d60:	f1c3 0108 	rsb	r1, r3, #8
 8005d64:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005d68:	448b      	add	fp, r1
 8005d6a:	3308      	adds	r3, #8
 8005d6c:	44d8      	add	r8, fp
 8005d6e:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005d72:	eba3 0808 	sub.w	r8, r3, r8
 8005d76:	4641      	mov	r1, r8
 8005d78:	4630      	mov	r0, r6
 8005d7a:	9201      	str	r2, [sp, #4]
 8005d7c:	f000 feda 	bl	8006b34 <_sbrk_r>
 8005d80:	1c43      	adds	r3, r0, #1
 8005d82:	9a01      	ldr	r2, [sp, #4]
 8005d84:	f000 8146 	beq.w	8006014 <_malloc_r+0x4e0>
 8005d88:	eba0 010b 	sub.w	r1, r0, fp
 8005d8c:	4441      	add	r1, r8
 8005d8e:	f041 0101 	orr.w	r1, r1, #1
 8005d92:	6813      	ldr	r3, [r2, #0]
 8005d94:	f8c7 b008 	str.w	fp, [r7, #8]
 8005d98:	4443      	add	r3, r8
 8005d9a:	42bc      	cmp	r4, r7
 8005d9c:	f8cb 1004 	str.w	r1, [fp, #4]
 8005da0:	6013      	str	r3, [r2, #0]
 8005da2:	d015      	beq.n	8005dd0 <_malloc_r+0x29c>
 8005da4:	f1b9 0f0f 	cmp.w	r9, #15
 8005da8:	f240 8130 	bls.w	800600c <_malloc_r+0x4d8>
 8005dac:	6860      	ldr	r0, [r4, #4]
 8005dae:	f1a9 010c 	sub.w	r1, r9, #12
 8005db2:	f021 0107 	bic.w	r1, r1, #7
 8005db6:	f000 0001 	and.w	r0, r0, #1
 8005dba:	eb04 0c01 	add.w	ip, r4, r1
 8005dbe:	4308      	orrs	r0, r1
 8005dc0:	f04f 0e05 	mov.w	lr, #5
 8005dc4:	290f      	cmp	r1, #15
 8005dc6:	6060      	str	r0, [r4, #4]
 8005dc8:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005dcc:	f200 813a 	bhi.w	8006044 <_malloc_r+0x510>
 8005dd0:	4a29      	ldr	r2, [pc, #164]	; (8005e78 <_malloc_r+0x344>)
 8005dd2:	482a      	ldr	r0, [pc, #168]	; (8005e7c <_malloc_r+0x348>)
 8005dd4:	6811      	ldr	r1, [r2, #0]
 8005dd6:	68bc      	ldr	r4, [r7, #8]
 8005dd8:	428b      	cmp	r3, r1
 8005dda:	6801      	ldr	r1, [r0, #0]
 8005ddc:	bf88      	it	hi
 8005dde:	6013      	strhi	r3, [r2, #0]
 8005de0:	6862      	ldr	r2, [r4, #4]
 8005de2:	428b      	cmp	r3, r1
 8005de4:	f022 0203 	bic.w	r2, r2, #3
 8005de8:	bf88      	it	hi
 8005dea:	6003      	strhi	r3, [r0, #0]
 8005dec:	e0a7      	b.n	8005f3e <_malloc_r+0x40a>
 8005dee:	1962      	adds	r2, r4, r5
 8005df0:	f043 0301 	orr.w	r3, r3, #1
 8005df4:	f045 0501 	orr.w	r5, r5, #1
 8005df8:	6065      	str	r5, [r4, #4]
 8005dfa:	4630      	mov	r0, r6
 8005dfc:	60ba      	str	r2, [r7, #8]
 8005dfe:	6053      	str	r3, [r2, #4]
 8005e00:	f000 f9a6 	bl	8006150 <__malloc_unlock>
 8005e04:	3408      	adds	r4, #8
 8005e06:	4620      	mov	r0, r4
 8005e08:	b003      	add	sp, #12
 8005e0a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e0e:	4423      	add	r3, r4
 8005e10:	68e1      	ldr	r1, [r4, #12]
 8005e12:	685a      	ldr	r2, [r3, #4]
 8005e14:	68a5      	ldr	r5, [r4, #8]
 8005e16:	f042 0201 	orr.w	r2, r2, #1
 8005e1a:	60e9      	str	r1, [r5, #12]
 8005e1c:	4630      	mov	r0, r6
 8005e1e:	608d      	str	r5, [r1, #8]
 8005e20:	605a      	str	r2, [r3, #4]
 8005e22:	f000 f995 	bl	8006150 <__malloc_unlock>
 8005e26:	3408      	adds	r4, #8
 8005e28:	4620      	mov	r0, r4
 8005e2a:	b003      	add	sp, #12
 8005e2c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e30:	68dc      	ldr	r4, [r3, #12]
 8005e32:	42a3      	cmp	r3, r4
 8005e34:	bf08      	it	eq
 8005e36:	3002      	addeq	r0, #2
 8005e38:	f43f aed6 	beq.w	8005be8 <_malloc_r+0xb4>
 8005e3c:	e692      	b.n	8005b64 <_malloc_r+0x30>
 8005e3e:	2b14      	cmp	r3, #20
 8005e40:	d971      	bls.n	8005f26 <_malloc_r+0x3f2>
 8005e42:	2b54      	cmp	r3, #84	; 0x54
 8005e44:	f200 80ad 	bhi.w	8005fa2 <_malloc_r+0x46e>
 8005e48:	0b2b      	lsrs	r3, r5, #12
 8005e4a:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8005e4e:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 8005e52:	00c3      	lsls	r3, r0, #3
 8005e54:	e6b3      	b.n	8005bbe <_malloc_r+0x8a>
 8005e56:	4423      	add	r3, r4
 8005e58:	4630      	mov	r0, r6
 8005e5a:	685a      	ldr	r2, [r3, #4]
 8005e5c:	f042 0201 	orr.w	r2, r2, #1
 8005e60:	605a      	str	r2, [r3, #4]
 8005e62:	3408      	adds	r4, #8
 8005e64:	f000 f974 	bl	8006150 <__malloc_unlock>
 8005e68:	e68c      	b.n	8005b84 <_malloc_r+0x50>
 8005e6a:	bf00      	nop
 8005e6c:	2000044c 	.word	0x2000044c
 8005e70:	20000da0 	.word	0x20000da0
 8005e74:	20000d70 	.word	0x20000d70
 8005e78:	20000d98 	.word	0x20000d98
 8005e7c:	20000d9c 	.word	0x20000d9c
 8005e80:	20000454 	.word	0x20000454
 8005e84:	20000854 	.word	0x20000854
 8005e88:	1961      	adds	r1, r4, r5
 8005e8a:	f045 0e01 	orr.w	lr, r5, #1
 8005e8e:	f042 0501 	orr.w	r5, r2, #1
 8005e92:	f8c4 e004 	str.w	lr, [r4, #4]
 8005e96:	4630      	mov	r0, r6
 8005e98:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8005e9c:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8005ea0:	604d      	str	r5, [r1, #4]
 8005ea2:	50e2      	str	r2, [r4, r3]
 8005ea4:	f000 f954 	bl	8006150 <__malloc_unlock>
 8005ea8:	3408      	adds	r4, #8
 8005eaa:	e66b      	b.n	8005b84 <_malloc_r+0x50>
 8005eac:	08e8      	lsrs	r0, r5, #3
 8005eae:	f105 0308 	add.w	r3, r5, #8
 8005eb2:	e64f      	b.n	8005b54 <_malloc_r+0x20>
 8005eb4:	f108 0801 	add.w	r8, r8, #1
 8005eb8:	f018 0f03 	tst.w	r8, #3
 8005ebc:	f10e 0e08 	add.w	lr, lr, #8
 8005ec0:	f47f aed0 	bne.w	8005c64 <_malloc_r+0x130>
 8005ec4:	e052      	b.n	8005f6c <_malloc_r+0x438>
 8005ec6:	4419      	add	r1, r3
 8005ec8:	461c      	mov	r4, r3
 8005eca:	684a      	ldr	r2, [r1, #4]
 8005ecc:	68db      	ldr	r3, [r3, #12]
 8005ece:	f854 5f08 	ldr.w	r5, [r4, #8]!
 8005ed2:	f042 0201 	orr.w	r2, r2, #1
 8005ed6:	604a      	str	r2, [r1, #4]
 8005ed8:	4630      	mov	r0, r6
 8005eda:	60eb      	str	r3, [r5, #12]
 8005edc:	609d      	str	r5, [r3, #8]
 8005ede:	f000 f937 	bl	8006150 <__malloc_unlock>
 8005ee2:	e64f      	b.n	8005b84 <_malloc_r+0x50>
 8005ee4:	0a5a      	lsrs	r2, r3, #9
 8005ee6:	2a04      	cmp	r2, #4
 8005ee8:	d935      	bls.n	8005f56 <_malloc_r+0x422>
 8005eea:	2a14      	cmp	r2, #20
 8005eec:	d86f      	bhi.n	8005fce <_malloc_r+0x49a>
 8005eee:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 8005ef2:	00c9      	lsls	r1, r1, #3
 8005ef4:	325b      	adds	r2, #91	; 0x5b
 8005ef6:	eb07 0e01 	add.w	lr, r7, r1
 8005efa:	5879      	ldr	r1, [r7, r1]
 8005efc:	f1ae 0e08 	sub.w	lr, lr, #8
 8005f00:	458e      	cmp	lr, r1
 8005f02:	d058      	beq.n	8005fb6 <_malloc_r+0x482>
 8005f04:	684a      	ldr	r2, [r1, #4]
 8005f06:	f022 0203 	bic.w	r2, r2, #3
 8005f0a:	429a      	cmp	r2, r3
 8005f0c:	d902      	bls.n	8005f14 <_malloc_r+0x3e0>
 8005f0e:	6889      	ldr	r1, [r1, #8]
 8005f10:	458e      	cmp	lr, r1
 8005f12:	d1f7      	bne.n	8005f04 <_malloc_r+0x3d0>
 8005f14:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8005f18:	687b      	ldr	r3, [r7, #4]
 8005f1a:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8005f1e:	f8ce 4008 	str.w	r4, [lr, #8]
 8005f22:	60cc      	str	r4, [r1, #12]
 8005f24:	e68c      	b.n	8005c40 <_malloc_r+0x10c>
 8005f26:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8005f2a:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8005f2e:	00c3      	lsls	r3, r0, #3
 8005f30:	e645      	b.n	8005bbe <_malloc_r+0x8a>
 8005f32:	42bc      	cmp	r4, r7
 8005f34:	d072      	beq.n	800601c <_malloc_r+0x4e8>
 8005f36:	68bc      	ldr	r4, [r7, #8]
 8005f38:	6862      	ldr	r2, [r4, #4]
 8005f3a:	f022 0203 	bic.w	r2, r2, #3
 8005f3e:	4295      	cmp	r5, r2
 8005f40:	eba2 0305 	sub.w	r3, r2, r5
 8005f44:	d802      	bhi.n	8005f4c <_malloc_r+0x418>
 8005f46:	2b0f      	cmp	r3, #15
 8005f48:	f73f af51 	bgt.w	8005dee <_malloc_r+0x2ba>
 8005f4c:	4630      	mov	r0, r6
 8005f4e:	f000 f8ff 	bl	8006150 <__malloc_unlock>
 8005f52:	2400      	movs	r4, #0
 8005f54:	e616      	b.n	8005b84 <_malloc_r+0x50>
 8005f56:	099a      	lsrs	r2, r3, #6
 8005f58:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8005f5c:	00c9      	lsls	r1, r1, #3
 8005f5e:	3238      	adds	r2, #56	; 0x38
 8005f60:	e7c9      	b.n	8005ef6 <_malloc_r+0x3c2>
 8005f62:	f8d9 9000 	ldr.w	r9, [r9]
 8005f66:	4599      	cmp	r9, r3
 8005f68:	f040 8083 	bne.w	8006072 <_malloc_r+0x53e>
 8005f6c:	f010 0f03 	tst.w	r0, #3
 8005f70:	f1a9 0308 	sub.w	r3, r9, #8
 8005f74:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8005f78:	d1f3      	bne.n	8005f62 <_malloc_r+0x42e>
 8005f7a:	687b      	ldr	r3, [r7, #4]
 8005f7c:	ea23 0304 	bic.w	r3, r3, r4
 8005f80:	607b      	str	r3, [r7, #4]
 8005f82:	0064      	lsls	r4, r4, #1
 8005f84:	429c      	cmp	r4, r3
 8005f86:	f63f aeac 	bhi.w	8005ce2 <_malloc_r+0x1ae>
 8005f8a:	b91c      	cbnz	r4, 8005f94 <_malloc_r+0x460>
 8005f8c:	e6a9      	b.n	8005ce2 <_malloc_r+0x1ae>
 8005f8e:	0064      	lsls	r4, r4, #1
 8005f90:	f108 0804 	add.w	r8, r8, #4
 8005f94:	421c      	tst	r4, r3
 8005f96:	d0fa      	beq.n	8005f8e <_malloc_r+0x45a>
 8005f98:	4640      	mov	r0, r8
 8005f9a:	e65f      	b.n	8005c5c <_malloc_r+0x128>
 8005f9c:	f108 0810 	add.w	r8, r8, #16
 8005fa0:	e6bc      	b.n	8005d1c <_malloc_r+0x1e8>
 8005fa2:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005fa6:	d826      	bhi.n	8005ff6 <_malloc_r+0x4c2>
 8005fa8:	0beb      	lsrs	r3, r5, #15
 8005faa:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8005fae:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 8005fb2:	00c3      	lsls	r3, r0, #3
 8005fb4:	e603      	b.n	8005bbe <_malloc_r+0x8a>
 8005fb6:	687b      	ldr	r3, [r7, #4]
 8005fb8:	1092      	asrs	r2, r2, #2
 8005fba:	f04f 0801 	mov.w	r8, #1
 8005fbe:	fa08 f202 	lsl.w	r2, r8, r2
 8005fc2:	4313      	orrs	r3, r2
 8005fc4:	607b      	str	r3, [r7, #4]
 8005fc6:	e7a8      	b.n	8005f1a <_malloc_r+0x3e6>
 8005fc8:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8005fcc:	e6ce      	b.n	8005d6c <_malloc_r+0x238>
 8005fce:	2a54      	cmp	r2, #84	; 0x54
 8005fd0:	d829      	bhi.n	8006026 <_malloc_r+0x4f2>
 8005fd2:	0b1a      	lsrs	r2, r3, #12
 8005fd4:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 8005fd8:	00c9      	lsls	r1, r1, #3
 8005fda:	326e      	adds	r2, #110	; 0x6e
 8005fdc:	e78b      	b.n	8005ef6 <_malloc_r+0x3c2>
 8005fde:	f3c0 010b 	ubfx	r1, r0, #0, #12
 8005fe2:	2900      	cmp	r1, #0
 8005fe4:	f47f aeae 	bne.w	8005d44 <_malloc_r+0x210>
 8005fe8:	eb09 0208 	add.w	r2, r9, r8
 8005fec:	68b9      	ldr	r1, [r7, #8]
 8005fee:	f042 0201 	orr.w	r2, r2, #1
 8005ff2:	604a      	str	r2, [r1, #4]
 8005ff4:	e6ec      	b.n	8005dd0 <_malloc_r+0x29c>
 8005ff6:	f240 5254 	movw	r2, #1364	; 0x554
 8005ffa:	4293      	cmp	r3, r2
 8005ffc:	d81c      	bhi.n	8006038 <_malloc_r+0x504>
 8005ffe:	0cab      	lsrs	r3, r5, #18
 8006000:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 8006004:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 8006008:	00c3      	lsls	r3, r0, #3
 800600a:	e5d8      	b.n	8005bbe <_malloc_r+0x8a>
 800600c:	2301      	movs	r3, #1
 800600e:	f8cb 3004 	str.w	r3, [fp, #4]
 8006012:	e79b      	b.n	8005f4c <_malloc_r+0x418>
 8006014:	2101      	movs	r1, #1
 8006016:	f04f 0800 	mov.w	r8, #0
 800601a:	e6ba      	b.n	8005d92 <_malloc_r+0x25e>
 800601c:	4a16      	ldr	r2, [pc, #88]	; (8006078 <_malloc_r+0x544>)
 800601e:	6813      	ldr	r3, [r2, #0]
 8006020:	4443      	add	r3, r8
 8006022:	6013      	str	r3, [r2, #0]
 8006024:	e68e      	b.n	8005d44 <_malloc_r+0x210>
 8006026:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 800602a:	d814      	bhi.n	8006056 <_malloc_r+0x522>
 800602c:	0bda      	lsrs	r2, r3, #15
 800602e:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8006032:	00c9      	lsls	r1, r1, #3
 8006034:	3277      	adds	r2, #119	; 0x77
 8006036:	e75e      	b.n	8005ef6 <_malloc_r+0x3c2>
 8006038:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 800603c:	207f      	movs	r0, #127	; 0x7f
 800603e:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8006042:	e5bc      	b.n	8005bbe <_malloc_r+0x8a>
 8006044:	f104 0108 	add.w	r1, r4, #8
 8006048:	4630      	mov	r0, r6
 800604a:	9201      	str	r2, [sp, #4]
 800604c:	f7ff fa48 	bl	80054e0 <_free_r>
 8006050:	9a01      	ldr	r2, [sp, #4]
 8006052:	6813      	ldr	r3, [r2, #0]
 8006054:	e6bc      	b.n	8005dd0 <_malloc_r+0x29c>
 8006056:	f240 5154 	movw	r1, #1364	; 0x554
 800605a:	428a      	cmp	r2, r1
 800605c:	d805      	bhi.n	800606a <_malloc_r+0x536>
 800605e:	0c9a      	lsrs	r2, r3, #18
 8006060:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8006064:	00c9      	lsls	r1, r1, #3
 8006066:	327c      	adds	r2, #124	; 0x7c
 8006068:	e745      	b.n	8005ef6 <_malloc_r+0x3c2>
 800606a:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 800606e:	227e      	movs	r2, #126	; 0x7e
 8006070:	e741      	b.n	8005ef6 <_malloc_r+0x3c2>
 8006072:	687b      	ldr	r3, [r7, #4]
 8006074:	e785      	b.n	8005f82 <_malloc_r+0x44e>
 8006076:	bf00      	nop
 8006078:	20000d70 	.word	0x20000d70

0800607c <memmove>:
 800607c:	4288      	cmp	r0, r1
 800607e:	b4f0      	push	{r4, r5, r6, r7}
 8006080:	d90d      	bls.n	800609e <memmove+0x22>
 8006082:	188b      	adds	r3, r1, r2
 8006084:	4283      	cmp	r3, r0
 8006086:	d90a      	bls.n	800609e <memmove+0x22>
 8006088:	1884      	adds	r4, r0, r2
 800608a:	b132      	cbz	r2, 800609a <memmove+0x1e>
 800608c:	4622      	mov	r2, r4
 800608e:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8006092:	f802 4d01 	strb.w	r4, [r2, #-1]!
 8006096:	4299      	cmp	r1, r3
 8006098:	d1f9      	bne.n	800608e <memmove+0x12>
 800609a:	bcf0      	pop	{r4, r5, r6, r7}
 800609c:	4770      	bx	lr
 800609e:	2a0f      	cmp	r2, #15
 80060a0:	d949      	bls.n	8006136 <memmove+0xba>
 80060a2:	ea40 0301 	orr.w	r3, r0, r1
 80060a6:	079b      	lsls	r3, r3, #30
 80060a8:	d147      	bne.n	800613a <memmove+0xbe>
 80060aa:	f1a2 0310 	sub.w	r3, r2, #16
 80060ae:	091b      	lsrs	r3, r3, #4
 80060b0:	f101 0720 	add.w	r7, r1, #32
 80060b4:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 80060b8:	f101 0410 	add.w	r4, r1, #16
 80060bc:	f100 0510 	add.w	r5, r0, #16
 80060c0:	f854 6c10 	ldr.w	r6, [r4, #-16]
 80060c4:	f845 6c10 	str.w	r6, [r5, #-16]
 80060c8:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 80060cc:	f845 6c0c 	str.w	r6, [r5, #-12]
 80060d0:	f854 6c08 	ldr.w	r6, [r4, #-8]
 80060d4:	f845 6c08 	str.w	r6, [r5, #-8]
 80060d8:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80060dc:	f845 6c04 	str.w	r6, [r5, #-4]
 80060e0:	3410      	adds	r4, #16
 80060e2:	42bc      	cmp	r4, r7
 80060e4:	f105 0510 	add.w	r5, r5, #16
 80060e8:	d1ea      	bne.n	80060c0 <memmove+0x44>
 80060ea:	3301      	adds	r3, #1
 80060ec:	f002 050f 	and.w	r5, r2, #15
 80060f0:	011b      	lsls	r3, r3, #4
 80060f2:	2d03      	cmp	r5, #3
 80060f4:	4419      	add	r1, r3
 80060f6:	4403      	add	r3, r0
 80060f8:	d921      	bls.n	800613e <memmove+0xc2>
 80060fa:	1f1f      	subs	r7, r3, #4
 80060fc:	460e      	mov	r6, r1
 80060fe:	462c      	mov	r4, r5
 8006100:	3c04      	subs	r4, #4
 8006102:	f856 cb04 	ldr.w	ip, [r6], #4
 8006106:	f847 cf04 	str.w	ip, [r7, #4]!
 800610a:	2c03      	cmp	r4, #3
 800610c:	d8f8      	bhi.n	8006100 <memmove+0x84>
 800610e:	1f2c      	subs	r4, r5, #4
 8006110:	f024 0403 	bic.w	r4, r4, #3
 8006114:	3404      	adds	r4, #4
 8006116:	4423      	add	r3, r4
 8006118:	4421      	add	r1, r4
 800611a:	f002 0203 	and.w	r2, r2, #3
 800611e:	2a00      	cmp	r2, #0
 8006120:	d0bb      	beq.n	800609a <memmove+0x1e>
 8006122:	3b01      	subs	r3, #1
 8006124:	440a      	add	r2, r1
 8006126:	f811 4b01 	ldrb.w	r4, [r1], #1
 800612a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800612e:	4291      	cmp	r1, r2
 8006130:	d1f9      	bne.n	8006126 <memmove+0xaa>
 8006132:	bcf0      	pop	{r4, r5, r6, r7}
 8006134:	4770      	bx	lr
 8006136:	4603      	mov	r3, r0
 8006138:	e7f1      	b.n	800611e <memmove+0xa2>
 800613a:	4603      	mov	r3, r0
 800613c:	e7f1      	b.n	8006122 <memmove+0xa6>
 800613e:	462a      	mov	r2, r5
 8006140:	e7ed      	b.n	800611e <memmove+0xa2>
 8006142:	bf00      	nop

08006144 <__malloc_lock>:
 8006144:	4801      	ldr	r0, [pc, #4]	; (800614c <__malloc_lock+0x8>)
 8006146:	f7ff bc79 	b.w	8005a3c <__retarget_lock_acquire_recursive>
 800614a:	bf00      	nop
 800614c:	20000dfc 	.word	0x20000dfc

08006150 <__malloc_unlock>:
 8006150:	4801      	ldr	r0, [pc, #4]	; (8006158 <__malloc_unlock+0x8>)
 8006152:	f7ff bc75 	b.w	8005a40 <__retarget_lock_release_recursive>
 8006156:	bf00      	nop
 8006158:	20000dfc 	.word	0x20000dfc

0800615c <_Balloc>:
 800615c:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800615e:	b570      	push	{r4, r5, r6, lr}
 8006160:	4605      	mov	r5, r0
 8006162:	460c      	mov	r4, r1
 8006164:	b14b      	cbz	r3, 800617a <_Balloc+0x1e>
 8006166:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800616a:	b180      	cbz	r0, 800618e <_Balloc+0x32>
 800616c:	6802      	ldr	r2, [r0, #0]
 800616e:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 8006172:	2300      	movs	r3, #0
 8006174:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006178:	bd70      	pop	{r4, r5, r6, pc}
 800617a:	2221      	movs	r2, #33	; 0x21
 800617c:	2104      	movs	r1, #4
 800617e:	f000 fe1d 	bl	8006dbc <_calloc_r>
 8006182:	4603      	mov	r3, r0
 8006184:	64e8      	str	r0, [r5, #76]	; 0x4c
 8006186:	2800      	cmp	r0, #0
 8006188:	d1ed      	bne.n	8006166 <_Balloc+0xa>
 800618a:	2000      	movs	r0, #0
 800618c:	bd70      	pop	{r4, r5, r6, pc}
 800618e:	2101      	movs	r1, #1
 8006190:	fa01 f604 	lsl.w	r6, r1, r4
 8006194:	1d72      	adds	r2, r6, #5
 8006196:	4628      	mov	r0, r5
 8006198:	0092      	lsls	r2, r2, #2
 800619a:	f000 fe0f 	bl	8006dbc <_calloc_r>
 800619e:	2800      	cmp	r0, #0
 80061a0:	d0f3      	beq.n	800618a <_Balloc+0x2e>
 80061a2:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80061a6:	e7e4      	b.n	8006172 <_Balloc+0x16>

080061a8 <_Bfree>:
 80061a8:	b131      	cbz	r1, 80061b8 <_Bfree+0x10>
 80061aa:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80061ac:	684a      	ldr	r2, [r1, #4]
 80061ae:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80061b2:	6008      	str	r0, [r1, #0]
 80061b4:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 80061b8:	4770      	bx	lr
 80061ba:	bf00      	nop

080061bc <__multadd>:
 80061bc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80061be:	690c      	ldr	r4, [r1, #16]
 80061c0:	b083      	sub	sp, #12
 80061c2:	460d      	mov	r5, r1
 80061c4:	4606      	mov	r6, r0
 80061c6:	f101 0c14 	add.w	ip, r1, #20
 80061ca:	2700      	movs	r7, #0
 80061cc:	f8dc 0000 	ldr.w	r0, [ip]
 80061d0:	b281      	uxth	r1, r0
 80061d2:	fb02 3301 	mla	r3, r2, r1, r3
 80061d6:	0c01      	lsrs	r1, r0, #16
 80061d8:	0c18      	lsrs	r0, r3, #16
 80061da:	fb02 0101 	mla	r1, r2, r1, r0
 80061de:	b29b      	uxth	r3, r3
 80061e0:	3701      	adds	r7, #1
 80061e2:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80061e6:	42bc      	cmp	r4, r7
 80061e8:	f84c 3b04 	str.w	r3, [ip], #4
 80061ec:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80061f0:	dcec      	bgt.n	80061cc <__multadd+0x10>
 80061f2:	b13b      	cbz	r3, 8006204 <__multadd+0x48>
 80061f4:	68aa      	ldr	r2, [r5, #8]
 80061f6:	42a2      	cmp	r2, r4
 80061f8:	dd07      	ble.n	800620a <__multadd+0x4e>
 80061fa:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80061fe:	3401      	adds	r4, #1
 8006200:	6153      	str	r3, [r2, #20]
 8006202:	612c      	str	r4, [r5, #16]
 8006204:	4628      	mov	r0, r5
 8006206:	b003      	add	sp, #12
 8006208:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800620a:	6869      	ldr	r1, [r5, #4]
 800620c:	9301      	str	r3, [sp, #4]
 800620e:	3101      	adds	r1, #1
 8006210:	4630      	mov	r0, r6
 8006212:	f7ff ffa3 	bl	800615c <_Balloc>
 8006216:	692a      	ldr	r2, [r5, #16]
 8006218:	3202      	adds	r2, #2
 800621a:	f105 010c 	add.w	r1, r5, #12
 800621e:	4607      	mov	r7, r0
 8006220:	0092      	lsls	r2, r2, #2
 8006222:	300c      	adds	r0, #12
 8006224:	f7fa f96c 	bl	8000500 <memcpy>
 8006228:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800622a:	6869      	ldr	r1, [r5, #4]
 800622c:	9b01      	ldr	r3, [sp, #4]
 800622e:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 8006232:	6028      	str	r0, [r5, #0]
 8006234:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006238:	463d      	mov	r5, r7
 800623a:	e7de      	b.n	80061fa <__multadd+0x3e>

0800623c <__hi0bits>:
 800623c:	0c02      	lsrs	r2, r0, #16
 800623e:	0412      	lsls	r2, r2, #16
 8006240:	4603      	mov	r3, r0
 8006242:	b9c2      	cbnz	r2, 8006276 <__hi0bits+0x3a>
 8006244:	0403      	lsls	r3, r0, #16
 8006246:	2010      	movs	r0, #16
 8006248:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800624c:	bf04      	itt	eq
 800624e:	021b      	lsleq	r3, r3, #8
 8006250:	3008      	addeq	r0, #8
 8006252:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 8006256:	bf04      	itt	eq
 8006258:	011b      	lsleq	r3, r3, #4
 800625a:	3004      	addeq	r0, #4
 800625c:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006260:	bf04      	itt	eq
 8006262:	009b      	lsleq	r3, r3, #2
 8006264:	3002      	addeq	r0, #2
 8006266:	2b00      	cmp	r3, #0
 8006268:	db04      	blt.n	8006274 <__hi0bits+0x38>
 800626a:	005b      	lsls	r3, r3, #1
 800626c:	d501      	bpl.n	8006272 <__hi0bits+0x36>
 800626e:	3001      	adds	r0, #1
 8006270:	4770      	bx	lr
 8006272:	2020      	movs	r0, #32
 8006274:	4770      	bx	lr
 8006276:	2000      	movs	r0, #0
 8006278:	e7e6      	b.n	8006248 <__hi0bits+0xc>
 800627a:	bf00      	nop

0800627c <__lo0bits>:
 800627c:	6803      	ldr	r3, [r0, #0]
 800627e:	f013 0207 	ands.w	r2, r3, #7
 8006282:	4601      	mov	r1, r0
 8006284:	d007      	beq.n	8006296 <__lo0bits+0x1a>
 8006286:	07da      	lsls	r2, r3, #31
 8006288:	d41f      	bmi.n	80062ca <__lo0bits+0x4e>
 800628a:	0798      	lsls	r0, r3, #30
 800628c:	d51f      	bpl.n	80062ce <__lo0bits+0x52>
 800628e:	085b      	lsrs	r3, r3, #1
 8006290:	600b      	str	r3, [r1, #0]
 8006292:	2001      	movs	r0, #1
 8006294:	4770      	bx	lr
 8006296:	b298      	uxth	r0, r3
 8006298:	b1a0      	cbz	r0, 80062c4 <__lo0bits+0x48>
 800629a:	4610      	mov	r0, r2
 800629c:	f013 0fff 	tst.w	r3, #255	; 0xff
 80062a0:	bf04      	itt	eq
 80062a2:	0a1b      	lsreq	r3, r3, #8
 80062a4:	3008      	addeq	r0, #8
 80062a6:	071a      	lsls	r2, r3, #28
 80062a8:	bf04      	itt	eq
 80062aa:	091b      	lsreq	r3, r3, #4
 80062ac:	3004      	addeq	r0, #4
 80062ae:	079a      	lsls	r2, r3, #30
 80062b0:	bf04      	itt	eq
 80062b2:	089b      	lsreq	r3, r3, #2
 80062b4:	3002      	addeq	r0, #2
 80062b6:	07da      	lsls	r2, r3, #31
 80062b8:	d402      	bmi.n	80062c0 <__lo0bits+0x44>
 80062ba:	085b      	lsrs	r3, r3, #1
 80062bc:	d00b      	beq.n	80062d6 <__lo0bits+0x5a>
 80062be:	3001      	adds	r0, #1
 80062c0:	600b      	str	r3, [r1, #0]
 80062c2:	4770      	bx	lr
 80062c4:	0c1b      	lsrs	r3, r3, #16
 80062c6:	2010      	movs	r0, #16
 80062c8:	e7e8      	b.n	800629c <__lo0bits+0x20>
 80062ca:	2000      	movs	r0, #0
 80062cc:	4770      	bx	lr
 80062ce:	089b      	lsrs	r3, r3, #2
 80062d0:	600b      	str	r3, [r1, #0]
 80062d2:	2002      	movs	r0, #2
 80062d4:	4770      	bx	lr
 80062d6:	2020      	movs	r0, #32
 80062d8:	4770      	bx	lr
 80062da:	bf00      	nop

080062dc <__i2b>:
 80062dc:	b510      	push	{r4, lr}
 80062de:	460c      	mov	r4, r1
 80062e0:	2101      	movs	r1, #1
 80062e2:	f7ff ff3b 	bl	800615c <_Balloc>
 80062e6:	2201      	movs	r2, #1
 80062e8:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80062ec:	bd10      	pop	{r4, pc}
 80062ee:	bf00      	nop

080062f0 <__multiply>:
 80062f0:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80062f4:	690e      	ldr	r6, [r1, #16]
 80062f6:	6914      	ldr	r4, [r2, #16]
 80062f8:	42a6      	cmp	r6, r4
 80062fa:	b083      	sub	sp, #12
 80062fc:	460f      	mov	r7, r1
 80062fe:	4615      	mov	r5, r2
 8006300:	da04      	bge.n	800630c <__multiply+0x1c>
 8006302:	4632      	mov	r2, r6
 8006304:	462f      	mov	r7, r5
 8006306:	4626      	mov	r6, r4
 8006308:	460d      	mov	r5, r1
 800630a:	4614      	mov	r4, r2
 800630c:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8006310:	eb06 0804 	add.w	r8, r6, r4
 8006314:	4543      	cmp	r3, r8
 8006316:	bfb8      	it	lt
 8006318:	3101      	addlt	r1, #1
 800631a:	f7ff ff1f 	bl	800615c <_Balloc>
 800631e:	f100 0914 	add.w	r9, r0, #20
 8006322:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 8006326:	45f1      	cmp	r9, lr
 8006328:	9000      	str	r0, [sp, #0]
 800632a:	d205      	bcs.n	8006338 <__multiply+0x48>
 800632c:	464b      	mov	r3, r9
 800632e:	2200      	movs	r2, #0
 8006330:	f843 2b04 	str.w	r2, [r3], #4
 8006334:	459e      	cmp	lr, r3
 8006336:	d8fb      	bhi.n	8006330 <__multiply+0x40>
 8006338:	f105 0a14 	add.w	sl, r5, #20
 800633c:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006340:	f107 0314 	add.w	r3, r7, #20
 8006344:	45a2      	cmp	sl, r4
 8006346:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800634a:	d261      	bcs.n	8006410 <__multiply+0x120>
 800634c:	1b64      	subs	r4, r4, r5
 800634e:	3c15      	subs	r4, #21
 8006350:	f024 0403 	bic.w	r4, r4, #3
 8006354:	f8cd e004 	str.w	lr, [sp, #4]
 8006358:	44a2      	add	sl, r4
 800635a:	f105 0210 	add.w	r2, r5, #16
 800635e:	469e      	mov	lr, r3
 8006360:	e005      	b.n	800636e <__multiply+0x7e>
 8006362:	0c2d      	lsrs	r5, r5, #16
 8006364:	d12b      	bne.n	80063be <__multiply+0xce>
 8006366:	4592      	cmp	sl, r2
 8006368:	f109 0904 	add.w	r9, r9, #4
 800636c:	d04e      	beq.n	800640c <__multiply+0x11c>
 800636e:	f852 5f04 	ldr.w	r5, [r2, #4]!
 8006372:	fa1f fb85 	uxth.w	fp, r5
 8006376:	f1bb 0f00 	cmp.w	fp, #0
 800637a:	d0f2      	beq.n	8006362 <__multiply+0x72>
 800637c:	4677      	mov	r7, lr
 800637e:	464e      	mov	r6, r9
 8006380:	2000      	movs	r0, #0
 8006382:	e000      	b.n	8006386 <__multiply+0x96>
 8006384:	4626      	mov	r6, r4
 8006386:	f857 1b04 	ldr.w	r1, [r7], #4
 800638a:	6834      	ldr	r4, [r6, #0]
 800638c:	b28b      	uxth	r3, r1
 800638e:	b2a5      	uxth	r5, r4
 8006390:	0c09      	lsrs	r1, r1, #16
 8006392:	0c24      	lsrs	r4, r4, #16
 8006394:	fb0b 5303 	mla	r3, fp, r3, r5
 8006398:	4403      	add	r3, r0
 800639a:	fb0b 4001 	mla	r0, fp, r1, r4
 800639e:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80063a2:	4634      	mov	r4, r6
 80063a4:	b29b      	uxth	r3, r3
 80063a6:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80063aa:	45bc      	cmp	ip, r7
 80063ac:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80063b0:	f844 3b04 	str.w	r3, [r4], #4
 80063b4:	d8e6      	bhi.n	8006384 <__multiply+0x94>
 80063b6:	6070      	str	r0, [r6, #4]
 80063b8:	6815      	ldr	r5, [r2, #0]
 80063ba:	0c2d      	lsrs	r5, r5, #16
 80063bc:	d0d3      	beq.n	8006366 <__multiply+0x76>
 80063be:	f8d9 3000 	ldr.w	r3, [r9]
 80063c2:	4676      	mov	r6, lr
 80063c4:	4618      	mov	r0, r3
 80063c6:	46cb      	mov	fp, r9
 80063c8:	2100      	movs	r1, #0
 80063ca:	e000      	b.n	80063ce <__multiply+0xde>
 80063cc:	46a3      	mov	fp, r4
 80063ce:	8834      	ldrh	r4, [r6, #0]
 80063d0:	0c00      	lsrs	r0, r0, #16
 80063d2:	fb05 0004 	mla	r0, r5, r4, r0
 80063d6:	4401      	add	r1, r0
 80063d8:	b29b      	uxth	r3, r3
 80063da:	465c      	mov	r4, fp
 80063dc:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80063e0:	f844 3b04 	str.w	r3, [r4], #4
 80063e4:	f856 3b04 	ldr.w	r3, [r6], #4
 80063e8:	f8db 0004 	ldr.w	r0, [fp, #4]
 80063ec:	0c1b      	lsrs	r3, r3, #16
 80063ee:	b287      	uxth	r7, r0
 80063f0:	fb05 7303 	mla	r3, r5, r3, r7
 80063f4:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80063f8:	45b4      	cmp	ip, r6
 80063fa:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80063fe:	d8e5      	bhi.n	80063cc <__multiply+0xdc>
 8006400:	4592      	cmp	sl, r2
 8006402:	f8cb 3004 	str.w	r3, [fp, #4]
 8006406:	f109 0904 	add.w	r9, r9, #4
 800640a:	d1b0      	bne.n	800636e <__multiply+0x7e>
 800640c:	f8dd e004 	ldr.w	lr, [sp, #4]
 8006410:	f1b8 0f00 	cmp.w	r8, #0
 8006414:	dd0b      	ble.n	800642e <__multiply+0x13e>
 8006416:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800641a:	f1ae 0e04 	sub.w	lr, lr, #4
 800641e:	b11b      	cbz	r3, 8006428 <__multiply+0x138>
 8006420:	e005      	b.n	800642e <__multiply+0x13e>
 8006422:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 8006426:	b913      	cbnz	r3, 800642e <__multiply+0x13e>
 8006428:	f1b8 0801 	subs.w	r8, r8, #1
 800642c:	d1f9      	bne.n	8006422 <__multiply+0x132>
 800642e:	9800      	ldr	r0, [sp, #0]
 8006430:	f8c0 8010 	str.w	r8, [r0, #16]
 8006434:	b003      	add	sp, #12
 8006436:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800643a:	bf00      	nop

0800643c <__pow5mult>:
 800643c:	f012 0303 	ands.w	r3, r2, #3
 8006440:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006444:	4614      	mov	r4, r2
 8006446:	4607      	mov	r7, r0
 8006448:	d12e      	bne.n	80064a8 <__pow5mult+0x6c>
 800644a:	460d      	mov	r5, r1
 800644c:	10a4      	asrs	r4, r4, #2
 800644e:	d01c      	beq.n	800648a <__pow5mult+0x4e>
 8006450:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 8006452:	b396      	cbz	r6, 80064ba <__pow5mult+0x7e>
 8006454:	07e3      	lsls	r3, r4, #31
 8006456:	f04f 0800 	mov.w	r8, #0
 800645a:	d406      	bmi.n	800646a <__pow5mult+0x2e>
 800645c:	1064      	asrs	r4, r4, #1
 800645e:	d014      	beq.n	800648a <__pow5mult+0x4e>
 8006460:	6830      	ldr	r0, [r6, #0]
 8006462:	b1a8      	cbz	r0, 8006490 <__pow5mult+0x54>
 8006464:	4606      	mov	r6, r0
 8006466:	07e3      	lsls	r3, r4, #31
 8006468:	d5f8      	bpl.n	800645c <__pow5mult+0x20>
 800646a:	4632      	mov	r2, r6
 800646c:	4629      	mov	r1, r5
 800646e:	4638      	mov	r0, r7
 8006470:	f7ff ff3e 	bl	80062f0 <__multiply>
 8006474:	b1b5      	cbz	r5, 80064a4 <__pow5mult+0x68>
 8006476:	686a      	ldr	r2, [r5, #4]
 8006478:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800647a:	1064      	asrs	r4, r4, #1
 800647c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006480:	6029      	str	r1, [r5, #0]
 8006482:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 8006486:	4605      	mov	r5, r0
 8006488:	d1ea      	bne.n	8006460 <__pow5mult+0x24>
 800648a:	4628      	mov	r0, r5
 800648c:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006490:	4632      	mov	r2, r6
 8006492:	4631      	mov	r1, r6
 8006494:	4638      	mov	r0, r7
 8006496:	f7ff ff2b 	bl	80062f0 <__multiply>
 800649a:	6030      	str	r0, [r6, #0]
 800649c:	f8c0 8000 	str.w	r8, [r0]
 80064a0:	4606      	mov	r6, r0
 80064a2:	e7e0      	b.n	8006466 <__pow5mult+0x2a>
 80064a4:	4605      	mov	r5, r0
 80064a6:	e7d9      	b.n	800645c <__pow5mult+0x20>
 80064a8:	3b01      	subs	r3, #1
 80064aa:	4a0b      	ldr	r2, [pc, #44]	; (80064d8 <__pow5mult+0x9c>)
 80064ac:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80064b0:	2300      	movs	r3, #0
 80064b2:	f7ff fe83 	bl	80061bc <__multadd>
 80064b6:	4605      	mov	r5, r0
 80064b8:	e7c8      	b.n	800644c <__pow5mult+0x10>
 80064ba:	2101      	movs	r1, #1
 80064bc:	4638      	mov	r0, r7
 80064be:	f7ff fe4d 	bl	800615c <_Balloc>
 80064c2:	f240 2371 	movw	r3, #625	; 0x271
 80064c6:	6143      	str	r3, [r0, #20]
 80064c8:	2201      	movs	r2, #1
 80064ca:	2300      	movs	r3, #0
 80064cc:	6102      	str	r2, [r0, #16]
 80064ce:	4606      	mov	r6, r0
 80064d0:	64b8      	str	r0, [r7, #72]	; 0x48
 80064d2:	6003      	str	r3, [r0, #0]
 80064d4:	e7be      	b.n	8006454 <__pow5mult+0x18>
 80064d6:	bf00      	nop
 80064d8:	080075d8 	.word	0x080075d8

080064dc <__lshift>:
 80064dc:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80064e0:	4691      	mov	r9, r2
 80064e2:	690a      	ldr	r2, [r1, #16]
 80064e4:	460e      	mov	r6, r1
 80064e6:	ea4f 1469 	mov.w	r4, r9, asr #5
 80064ea:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80064ee:	eb04 0802 	add.w	r8, r4, r2
 80064f2:	f108 0501 	add.w	r5, r8, #1
 80064f6:	429d      	cmp	r5, r3
 80064f8:	4607      	mov	r7, r0
 80064fa:	dd04      	ble.n	8006506 <__lshift+0x2a>
 80064fc:	005b      	lsls	r3, r3, #1
 80064fe:	429d      	cmp	r5, r3
 8006500:	f101 0101 	add.w	r1, r1, #1
 8006504:	dcfa      	bgt.n	80064fc <__lshift+0x20>
 8006506:	4638      	mov	r0, r7
 8006508:	f7ff fe28 	bl	800615c <_Balloc>
 800650c:	2c00      	cmp	r4, #0
 800650e:	f100 0314 	add.w	r3, r0, #20
 8006512:	dd37      	ble.n	8006584 <__lshift+0xa8>
 8006514:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8006518:	2200      	movs	r2, #0
 800651a:	f843 2b04 	str.w	r2, [r3], #4
 800651e:	428b      	cmp	r3, r1
 8006520:	d1fb      	bne.n	800651a <__lshift+0x3e>
 8006522:	6934      	ldr	r4, [r6, #16]
 8006524:	f106 0314 	add.w	r3, r6, #20
 8006528:	f019 091f 	ands.w	r9, r9, #31
 800652c:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8006530:	d020      	beq.n	8006574 <__lshift+0x98>
 8006532:	f1c9 0e20 	rsb	lr, r9, #32
 8006536:	2200      	movs	r2, #0
 8006538:	e000      	b.n	800653c <__lshift+0x60>
 800653a:	4651      	mov	r1, sl
 800653c:	681c      	ldr	r4, [r3, #0]
 800653e:	468a      	mov	sl, r1
 8006540:	fa04 f409 	lsl.w	r4, r4, r9
 8006544:	4314      	orrs	r4, r2
 8006546:	f84a 4b04 	str.w	r4, [sl], #4
 800654a:	f853 2b04 	ldr.w	r2, [r3], #4
 800654e:	4563      	cmp	r3, ip
 8006550:	fa22 f20e 	lsr.w	r2, r2, lr
 8006554:	d3f1      	bcc.n	800653a <__lshift+0x5e>
 8006556:	604a      	str	r2, [r1, #4]
 8006558:	b10a      	cbz	r2, 800655e <__lshift+0x82>
 800655a:	f108 0502 	add.w	r5, r8, #2
 800655e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006560:	6872      	ldr	r2, [r6, #4]
 8006562:	3d01      	subs	r5, #1
 8006564:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006568:	6105      	str	r5, [r0, #16]
 800656a:	6031      	str	r1, [r6, #0]
 800656c:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006570:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006574:	3904      	subs	r1, #4
 8006576:	f853 2b04 	ldr.w	r2, [r3], #4
 800657a:	f841 2f04 	str.w	r2, [r1, #4]!
 800657e:	459c      	cmp	ip, r3
 8006580:	d8f9      	bhi.n	8006576 <__lshift+0x9a>
 8006582:	e7ec      	b.n	800655e <__lshift+0x82>
 8006584:	4619      	mov	r1, r3
 8006586:	e7cc      	b.n	8006522 <__lshift+0x46>

08006588 <__mcmp>:
 8006588:	b430      	push	{r4, r5}
 800658a:	690b      	ldr	r3, [r1, #16]
 800658c:	4605      	mov	r5, r0
 800658e:	6900      	ldr	r0, [r0, #16]
 8006590:	1ac0      	subs	r0, r0, r3
 8006592:	d10f      	bne.n	80065b4 <__mcmp+0x2c>
 8006594:	009b      	lsls	r3, r3, #2
 8006596:	3514      	adds	r5, #20
 8006598:	3114      	adds	r1, #20
 800659a:	4419      	add	r1, r3
 800659c:	442b      	add	r3, r5
 800659e:	e001      	b.n	80065a4 <__mcmp+0x1c>
 80065a0:	429d      	cmp	r5, r3
 80065a2:	d207      	bcs.n	80065b4 <__mcmp+0x2c>
 80065a4:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80065a8:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80065ac:	4294      	cmp	r4, r2
 80065ae:	d0f7      	beq.n	80065a0 <__mcmp+0x18>
 80065b0:	d302      	bcc.n	80065b8 <__mcmp+0x30>
 80065b2:	2001      	movs	r0, #1
 80065b4:	bc30      	pop	{r4, r5}
 80065b6:	4770      	bx	lr
 80065b8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80065bc:	e7fa      	b.n	80065b4 <__mcmp+0x2c>
 80065be:	bf00      	nop

080065c0 <__mdiff>:
 80065c0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80065c4:	6913      	ldr	r3, [r2, #16]
 80065c6:	690d      	ldr	r5, [r1, #16]
 80065c8:	1aed      	subs	r5, r5, r3
 80065ca:	2d00      	cmp	r5, #0
 80065cc:	460e      	mov	r6, r1
 80065ce:	4690      	mov	r8, r2
 80065d0:	f101 0414 	add.w	r4, r1, #20
 80065d4:	f102 0714 	add.w	r7, r2, #20
 80065d8:	d114      	bne.n	8006604 <__mdiff+0x44>
 80065da:	009b      	lsls	r3, r3, #2
 80065dc:	18e2      	adds	r2, r4, r3
 80065de:	443b      	add	r3, r7
 80065e0:	e001      	b.n	80065e6 <__mdiff+0x26>
 80065e2:	42a2      	cmp	r2, r4
 80065e4:	d959      	bls.n	800669a <__mdiff+0xda>
 80065e6:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80065ea:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80065ee:	458c      	cmp	ip, r1
 80065f0:	d0f7      	beq.n	80065e2 <__mdiff+0x22>
 80065f2:	d209      	bcs.n	8006608 <__mdiff+0x48>
 80065f4:	4622      	mov	r2, r4
 80065f6:	4633      	mov	r3, r6
 80065f8:	463c      	mov	r4, r7
 80065fa:	4646      	mov	r6, r8
 80065fc:	4617      	mov	r7, r2
 80065fe:	4698      	mov	r8, r3
 8006600:	2501      	movs	r5, #1
 8006602:	e001      	b.n	8006608 <__mdiff+0x48>
 8006604:	dbf6      	blt.n	80065f4 <__mdiff+0x34>
 8006606:	2500      	movs	r5, #0
 8006608:	6871      	ldr	r1, [r6, #4]
 800660a:	f7ff fda7 	bl	800615c <_Balloc>
 800660e:	f8d8 3010 	ldr.w	r3, [r8, #16]
 8006612:	6936      	ldr	r6, [r6, #16]
 8006614:	60c5      	str	r5, [r0, #12]
 8006616:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800661a:	46bc      	mov	ip, r7
 800661c:	f100 0514 	add.w	r5, r0, #20
 8006620:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 8006624:	2300      	movs	r3, #0
 8006626:	f85c 1b04 	ldr.w	r1, [ip], #4
 800662a:	f854 8b04 	ldr.w	r8, [r4], #4
 800662e:	b28a      	uxth	r2, r1
 8006630:	fa13 f388 	uxtah	r3, r3, r8
 8006634:	0c09      	lsrs	r1, r1, #16
 8006636:	1a9a      	subs	r2, r3, r2
 8006638:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800663c:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006640:	b292      	uxth	r2, r2
 8006642:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 8006646:	45e6      	cmp	lr, ip
 8006648:	f845 2b04 	str.w	r2, [r5], #4
 800664c:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006650:	d8e9      	bhi.n	8006626 <__mdiff+0x66>
 8006652:	42a7      	cmp	r7, r4
 8006654:	d917      	bls.n	8006686 <__mdiff+0xc6>
 8006656:	46ae      	mov	lr, r5
 8006658:	46a4      	mov	ip, r4
 800665a:	f85c 2b04 	ldr.w	r2, [ip], #4
 800665e:	fa13 f382 	uxtah	r3, r3, r2
 8006662:	1419      	asrs	r1, r3, #16
 8006664:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006668:	b29b      	uxth	r3, r3
 800666a:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800666e:	4567      	cmp	r7, ip
 8006670:	f84e 2b04 	str.w	r2, [lr], #4
 8006674:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006678:	d8ef      	bhi.n	800665a <__mdiff+0x9a>
 800667a:	43e4      	mvns	r4, r4
 800667c:	4427      	add	r7, r4
 800667e:	f027 0703 	bic.w	r7, r7, #3
 8006682:	3704      	adds	r7, #4
 8006684:	443d      	add	r5, r7
 8006686:	3d04      	subs	r5, #4
 8006688:	b922      	cbnz	r2, 8006694 <__mdiff+0xd4>
 800668a:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800668e:	3e01      	subs	r6, #1
 8006690:	2b00      	cmp	r3, #0
 8006692:	d0fa      	beq.n	800668a <__mdiff+0xca>
 8006694:	6106      	str	r6, [r0, #16]
 8006696:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800669a:	2100      	movs	r1, #0
 800669c:	f7ff fd5e 	bl	800615c <_Balloc>
 80066a0:	2201      	movs	r2, #1
 80066a2:	2300      	movs	r3, #0
 80066a4:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80066a8:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080066ac <__d2b>:
 80066ac:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80066b0:	460f      	mov	r7, r1
 80066b2:	b083      	sub	sp, #12
 80066b4:	2101      	movs	r1, #1
 80066b6:	ec55 4b10 	vmov	r4, r5, d0
 80066ba:	4616      	mov	r6, r2
 80066bc:	f7ff fd4e 	bl	800615c <_Balloc>
 80066c0:	f3c5 580a 	ubfx	r8, r5, #20, #11
 80066c4:	4681      	mov	r9, r0
 80066c6:	f3c5 0313 	ubfx	r3, r5, #0, #20
 80066ca:	f1b8 0f00 	cmp.w	r8, #0
 80066ce:	d001      	beq.n	80066d4 <__d2b+0x28>
 80066d0:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 80066d4:	2c00      	cmp	r4, #0
 80066d6:	9301      	str	r3, [sp, #4]
 80066d8:	d024      	beq.n	8006724 <__d2b+0x78>
 80066da:	a802      	add	r0, sp, #8
 80066dc:	f840 4d08 	str.w	r4, [r0, #-8]!
 80066e0:	f7ff fdcc 	bl	800627c <__lo0bits>
 80066e4:	2800      	cmp	r0, #0
 80066e6:	d136      	bne.n	8006756 <__d2b+0xaa>
 80066e8:	e9dd 2300 	ldrd	r2, r3, [sp]
 80066ec:	f8c9 2014 	str.w	r2, [r9, #20]
 80066f0:	2b00      	cmp	r3, #0
 80066f2:	bf0c      	ite	eq
 80066f4:	2101      	moveq	r1, #1
 80066f6:	2102      	movne	r1, #2
 80066f8:	f8c9 3018 	str.w	r3, [r9, #24]
 80066fc:	f8c9 1010 	str.w	r1, [r9, #16]
 8006700:	f1b8 0f00 	cmp.w	r8, #0
 8006704:	d11b      	bne.n	800673e <__d2b+0x92>
 8006706:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800670a:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800670e:	6038      	str	r0, [r7, #0]
 8006710:	6918      	ldr	r0, [r3, #16]
 8006712:	f7ff fd93 	bl	800623c <__hi0bits>
 8006716:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800671a:	6030      	str	r0, [r6, #0]
 800671c:	4648      	mov	r0, r9
 800671e:	b003      	add	sp, #12
 8006720:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006724:	a801      	add	r0, sp, #4
 8006726:	f7ff fda9 	bl	800627c <__lo0bits>
 800672a:	9b01      	ldr	r3, [sp, #4]
 800672c:	f8c9 3014 	str.w	r3, [r9, #20]
 8006730:	2101      	movs	r1, #1
 8006732:	3020      	adds	r0, #32
 8006734:	f8c9 1010 	str.w	r1, [r9, #16]
 8006738:	f1b8 0f00 	cmp.w	r8, #0
 800673c:	d0e3      	beq.n	8006706 <__d2b+0x5a>
 800673e:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 8006742:	eb08 0300 	add.w	r3, r8, r0
 8006746:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800674a:	603b      	str	r3, [r7, #0]
 800674c:	6030      	str	r0, [r6, #0]
 800674e:	4648      	mov	r0, r9
 8006750:	b003      	add	sp, #12
 8006752:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 8006756:	e9dd 1300 	ldrd	r1, r3, [sp]
 800675a:	f1c0 0220 	rsb	r2, r0, #32
 800675e:	fa03 f202 	lsl.w	r2, r3, r2
 8006762:	430a      	orrs	r2, r1
 8006764:	40c3      	lsrs	r3, r0
 8006766:	9301      	str	r3, [sp, #4]
 8006768:	f8c9 2014 	str.w	r2, [r9, #20]
 800676c:	e7c0      	b.n	80066f0 <__d2b+0x44>
 800676e:	bf00      	nop

08006770 <_realloc_r>:
 8006770:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006774:	4692      	mov	sl, r2
 8006776:	b083      	sub	sp, #12
 8006778:	2900      	cmp	r1, #0
 800677a:	f000 80a1 	beq.w	80068c0 <_realloc_r+0x150>
 800677e:	460d      	mov	r5, r1
 8006780:	4680      	mov	r8, r0
 8006782:	f10a 040b 	add.w	r4, sl, #11
 8006786:	f7ff fcdd 	bl	8006144 <__malloc_lock>
 800678a:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800678e:	2c16      	cmp	r4, #22
 8006790:	f022 0603 	bic.w	r6, r2, #3
 8006794:	f1a5 0708 	sub.w	r7, r5, #8
 8006798:	d83e      	bhi.n	8006818 <_realloc_r+0xa8>
 800679a:	2410      	movs	r4, #16
 800679c:	4621      	mov	r1, r4
 800679e:	45a2      	cmp	sl, r4
 80067a0:	d83f      	bhi.n	8006822 <_realloc_r+0xb2>
 80067a2:	428e      	cmp	r6, r1
 80067a4:	eb07 0906 	add.w	r9, r7, r6
 80067a8:	da74      	bge.n	8006894 <_realloc_r+0x124>
 80067aa:	4bc7      	ldr	r3, [pc, #796]	; (8006ac8 <_realloc_r+0x358>)
 80067ac:	6898      	ldr	r0, [r3, #8]
 80067ae:	4548      	cmp	r0, r9
 80067b0:	f000 80aa 	beq.w	8006908 <_realloc_r+0x198>
 80067b4:	f8d9 0004 	ldr.w	r0, [r9, #4]
 80067b8:	f020 0301 	bic.w	r3, r0, #1
 80067bc:	444b      	add	r3, r9
 80067be:	685b      	ldr	r3, [r3, #4]
 80067c0:	07db      	lsls	r3, r3, #31
 80067c2:	f140 8083 	bpl.w	80068cc <_realloc_r+0x15c>
 80067c6:	07d2      	lsls	r2, r2, #31
 80067c8:	d534      	bpl.n	8006834 <_realloc_r+0xc4>
 80067ca:	4651      	mov	r1, sl
 80067cc:	4640      	mov	r0, r8
 80067ce:	f7ff f9b1 	bl	8005b34 <_malloc_r>
 80067d2:	4682      	mov	sl, r0
 80067d4:	b1e0      	cbz	r0, 8006810 <_realloc_r+0xa0>
 80067d6:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80067da:	f023 0301 	bic.w	r3, r3, #1
 80067de:	443b      	add	r3, r7
 80067e0:	f1a0 0208 	sub.w	r2, r0, #8
 80067e4:	4293      	cmp	r3, r2
 80067e6:	f000 80f9 	beq.w	80069dc <_realloc_r+0x26c>
 80067ea:	1f32      	subs	r2, r6, #4
 80067ec:	2a24      	cmp	r2, #36	; 0x24
 80067ee:	f200 8107 	bhi.w	8006a00 <_realloc_r+0x290>
 80067f2:	2a13      	cmp	r2, #19
 80067f4:	6829      	ldr	r1, [r5, #0]
 80067f6:	f200 80e6 	bhi.w	80069c6 <_realloc_r+0x256>
 80067fa:	4603      	mov	r3, r0
 80067fc:	462a      	mov	r2, r5
 80067fe:	6019      	str	r1, [r3, #0]
 8006800:	6851      	ldr	r1, [r2, #4]
 8006802:	6059      	str	r1, [r3, #4]
 8006804:	6892      	ldr	r2, [r2, #8]
 8006806:	609a      	str	r2, [r3, #8]
 8006808:	4629      	mov	r1, r5
 800680a:	4640      	mov	r0, r8
 800680c:	f7fe fe68 	bl	80054e0 <_free_r>
 8006810:	4640      	mov	r0, r8
 8006812:	f7ff fc9d 	bl	8006150 <__malloc_unlock>
 8006816:	e04f      	b.n	80068b8 <_realloc_r+0x148>
 8006818:	f024 0407 	bic.w	r4, r4, #7
 800681c:	2c00      	cmp	r4, #0
 800681e:	4621      	mov	r1, r4
 8006820:	dabd      	bge.n	800679e <_realloc_r+0x2e>
 8006822:	f04f 0a00 	mov.w	sl, #0
 8006826:	230c      	movs	r3, #12
 8006828:	4650      	mov	r0, sl
 800682a:	f8c8 3000 	str.w	r3, [r8]
 800682e:	b003      	add	sp, #12
 8006830:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006834:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006838:	eba7 0b03 	sub.w	fp, r7, r3
 800683c:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006840:	f022 0203 	bic.w	r2, r2, #3
 8006844:	18b3      	adds	r3, r6, r2
 8006846:	428b      	cmp	r3, r1
 8006848:	dbbf      	blt.n	80067ca <_realloc_r+0x5a>
 800684a:	46da      	mov	sl, fp
 800684c:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006850:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006854:	1f32      	subs	r2, r6, #4
 8006856:	2a24      	cmp	r2, #36	; 0x24
 8006858:	60c1      	str	r1, [r0, #12]
 800685a:	eb0b 0903 	add.w	r9, fp, r3
 800685e:	6088      	str	r0, [r1, #8]
 8006860:	f200 80c6 	bhi.w	80069f0 <_realloc_r+0x280>
 8006864:	2a13      	cmp	r2, #19
 8006866:	6829      	ldr	r1, [r5, #0]
 8006868:	f240 80c0 	bls.w	80069ec <_realloc_r+0x27c>
 800686c:	f8cb 1008 	str.w	r1, [fp, #8]
 8006870:	6869      	ldr	r1, [r5, #4]
 8006872:	f8cb 100c 	str.w	r1, [fp, #12]
 8006876:	2a1b      	cmp	r2, #27
 8006878:	68a9      	ldr	r1, [r5, #8]
 800687a:	f200 80d8 	bhi.w	8006a2e <_realloc_r+0x2be>
 800687e:	f10b 0210 	add.w	r2, fp, #16
 8006882:	3508      	adds	r5, #8
 8006884:	6011      	str	r1, [r2, #0]
 8006886:	6869      	ldr	r1, [r5, #4]
 8006888:	6051      	str	r1, [r2, #4]
 800688a:	68a9      	ldr	r1, [r5, #8]
 800688c:	6091      	str	r1, [r2, #8]
 800688e:	461e      	mov	r6, r3
 8006890:	465f      	mov	r7, fp
 8006892:	4655      	mov	r5, sl
 8006894:	687b      	ldr	r3, [r7, #4]
 8006896:	1b32      	subs	r2, r6, r4
 8006898:	2a0f      	cmp	r2, #15
 800689a:	f003 0301 	and.w	r3, r3, #1
 800689e:	d822      	bhi.n	80068e6 <_realloc_r+0x176>
 80068a0:	4333      	orrs	r3, r6
 80068a2:	607b      	str	r3, [r7, #4]
 80068a4:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80068a8:	f043 0301 	orr.w	r3, r3, #1
 80068ac:	f8c9 3004 	str.w	r3, [r9, #4]
 80068b0:	4640      	mov	r0, r8
 80068b2:	f7ff fc4d 	bl	8006150 <__malloc_unlock>
 80068b6:	46aa      	mov	sl, r5
 80068b8:	4650      	mov	r0, sl
 80068ba:	b003      	add	sp, #12
 80068bc:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80068c0:	4611      	mov	r1, r2
 80068c2:	b003      	add	sp, #12
 80068c4:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80068c8:	f7ff b934 	b.w	8005b34 <_malloc_r>
 80068cc:	f020 0003 	bic.w	r0, r0, #3
 80068d0:	1833      	adds	r3, r6, r0
 80068d2:	428b      	cmp	r3, r1
 80068d4:	db61      	blt.n	800699a <_realloc_r+0x22a>
 80068d6:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80068da:	461e      	mov	r6, r3
 80068dc:	60ca      	str	r2, [r1, #12]
 80068de:	eb07 0903 	add.w	r9, r7, r3
 80068e2:	6091      	str	r1, [r2, #8]
 80068e4:	e7d6      	b.n	8006894 <_realloc_r+0x124>
 80068e6:	1939      	adds	r1, r7, r4
 80068e8:	4323      	orrs	r3, r4
 80068ea:	f042 0201 	orr.w	r2, r2, #1
 80068ee:	607b      	str	r3, [r7, #4]
 80068f0:	604a      	str	r2, [r1, #4]
 80068f2:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80068f6:	f043 0301 	orr.w	r3, r3, #1
 80068fa:	3108      	adds	r1, #8
 80068fc:	f8c9 3004 	str.w	r3, [r9, #4]
 8006900:	4640      	mov	r0, r8
 8006902:	f7fe fded 	bl	80054e0 <_free_r>
 8006906:	e7d3      	b.n	80068b0 <_realloc_r+0x140>
 8006908:	6840      	ldr	r0, [r0, #4]
 800690a:	f020 0903 	bic.w	r9, r0, #3
 800690e:	44b1      	add	r9, r6
 8006910:	f104 0010 	add.w	r0, r4, #16
 8006914:	4581      	cmp	r9, r0
 8006916:	da77      	bge.n	8006a08 <_realloc_r+0x298>
 8006918:	07d2      	lsls	r2, r2, #31
 800691a:	f53f af56 	bmi.w	80067ca <_realloc_r+0x5a>
 800691e:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006922:	eba7 0b02 	sub.w	fp, r7, r2
 8006926:	f8db 2004 	ldr.w	r2, [fp, #4]
 800692a:	f022 0203 	bic.w	r2, r2, #3
 800692e:	4491      	add	r9, r2
 8006930:	4548      	cmp	r0, r9
 8006932:	dc87      	bgt.n	8006844 <_realloc_r+0xd4>
 8006934:	46da      	mov	sl, fp
 8006936:	f8db 100c 	ldr.w	r1, [fp, #12]
 800693a:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800693e:	1f32      	subs	r2, r6, #4
 8006940:	2a24      	cmp	r2, #36	; 0x24
 8006942:	60c1      	str	r1, [r0, #12]
 8006944:	6088      	str	r0, [r1, #8]
 8006946:	f200 80a1 	bhi.w	8006a8c <_realloc_r+0x31c>
 800694a:	2a13      	cmp	r2, #19
 800694c:	6829      	ldr	r1, [r5, #0]
 800694e:	f240 809b 	bls.w	8006a88 <_realloc_r+0x318>
 8006952:	f8cb 1008 	str.w	r1, [fp, #8]
 8006956:	6869      	ldr	r1, [r5, #4]
 8006958:	f8cb 100c 	str.w	r1, [fp, #12]
 800695c:	2a1b      	cmp	r2, #27
 800695e:	68a9      	ldr	r1, [r5, #8]
 8006960:	f200 809b 	bhi.w	8006a9a <_realloc_r+0x32a>
 8006964:	f10b 0210 	add.w	r2, fp, #16
 8006968:	3508      	adds	r5, #8
 800696a:	6011      	str	r1, [r2, #0]
 800696c:	6869      	ldr	r1, [r5, #4]
 800696e:	6051      	str	r1, [r2, #4]
 8006970:	68a9      	ldr	r1, [r5, #8]
 8006972:	6091      	str	r1, [r2, #8]
 8006974:	eb0b 0104 	add.w	r1, fp, r4
 8006978:	eba9 0204 	sub.w	r2, r9, r4
 800697c:	f042 0201 	orr.w	r2, r2, #1
 8006980:	6099      	str	r1, [r3, #8]
 8006982:	604a      	str	r2, [r1, #4]
 8006984:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006988:	f003 0301 	and.w	r3, r3, #1
 800698c:	431c      	orrs	r4, r3
 800698e:	4640      	mov	r0, r8
 8006990:	f8cb 4004 	str.w	r4, [fp, #4]
 8006994:	f7ff fbdc 	bl	8006150 <__malloc_unlock>
 8006998:	e78e      	b.n	80068b8 <_realloc_r+0x148>
 800699a:	07d3      	lsls	r3, r2, #31
 800699c:	f53f af15 	bmi.w	80067ca <_realloc_r+0x5a>
 80069a0:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80069a4:	eba7 0b03 	sub.w	fp, r7, r3
 80069a8:	f8db 2004 	ldr.w	r2, [fp, #4]
 80069ac:	f022 0203 	bic.w	r2, r2, #3
 80069b0:	4410      	add	r0, r2
 80069b2:	1983      	adds	r3, r0, r6
 80069b4:	428b      	cmp	r3, r1
 80069b6:	f6ff af45 	blt.w	8006844 <_realloc_r+0xd4>
 80069ba:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 80069be:	46da      	mov	sl, fp
 80069c0:	60ca      	str	r2, [r1, #12]
 80069c2:	6091      	str	r1, [r2, #8]
 80069c4:	e742      	b.n	800684c <_realloc_r+0xdc>
 80069c6:	6001      	str	r1, [r0, #0]
 80069c8:	686b      	ldr	r3, [r5, #4]
 80069ca:	6043      	str	r3, [r0, #4]
 80069cc:	2a1b      	cmp	r2, #27
 80069ce:	d83a      	bhi.n	8006a46 <_realloc_r+0x2d6>
 80069d0:	f105 0208 	add.w	r2, r5, #8
 80069d4:	f100 0308 	add.w	r3, r0, #8
 80069d8:	68a9      	ldr	r1, [r5, #8]
 80069da:	e710      	b.n	80067fe <_realloc_r+0x8e>
 80069dc:	f850 3c04 	ldr.w	r3, [r0, #-4]
 80069e0:	f023 0303 	bic.w	r3, r3, #3
 80069e4:	441e      	add	r6, r3
 80069e6:	eb07 0906 	add.w	r9, r7, r6
 80069ea:	e753      	b.n	8006894 <_realloc_r+0x124>
 80069ec:	4652      	mov	r2, sl
 80069ee:	e749      	b.n	8006884 <_realloc_r+0x114>
 80069f0:	4629      	mov	r1, r5
 80069f2:	4650      	mov	r0, sl
 80069f4:	461e      	mov	r6, r3
 80069f6:	465f      	mov	r7, fp
 80069f8:	f7ff fb40 	bl	800607c <memmove>
 80069fc:	4655      	mov	r5, sl
 80069fe:	e749      	b.n	8006894 <_realloc_r+0x124>
 8006a00:	4629      	mov	r1, r5
 8006a02:	f7ff fb3b 	bl	800607c <memmove>
 8006a06:	e6ff      	b.n	8006808 <_realloc_r+0x98>
 8006a08:	4427      	add	r7, r4
 8006a0a:	eba9 0904 	sub.w	r9, r9, r4
 8006a0e:	f049 0201 	orr.w	r2, r9, #1
 8006a12:	609f      	str	r7, [r3, #8]
 8006a14:	607a      	str	r2, [r7, #4]
 8006a16:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006a1a:	f003 0301 	and.w	r3, r3, #1
 8006a1e:	431c      	orrs	r4, r3
 8006a20:	4640      	mov	r0, r8
 8006a22:	f845 4c04 	str.w	r4, [r5, #-4]
 8006a26:	f7ff fb93 	bl	8006150 <__malloc_unlock>
 8006a2a:	46aa      	mov	sl, r5
 8006a2c:	e744      	b.n	80068b8 <_realloc_r+0x148>
 8006a2e:	f8cb 1010 	str.w	r1, [fp, #16]
 8006a32:	68e9      	ldr	r1, [r5, #12]
 8006a34:	f8cb 1014 	str.w	r1, [fp, #20]
 8006a38:	2a24      	cmp	r2, #36	; 0x24
 8006a3a:	d010      	beq.n	8006a5e <_realloc_r+0x2ee>
 8006a3c:	6929      	ldr	r1, [r5, #16]
 8006a3e:	f10b 0218 	add.w	r2, fp, #24
 8006a42:	3510      	adds	r5, #16
 8006a44:	e71e      	b.n	8006884 <_realloc_r+0x114>
 8006a46:	68ab      	ldr	r3, [r5, #8]
 8006a48:	6083      	str	r3, [r0, #8]
 8006a4a:	68eb      	ldr	r3, [r5, #12]
 8006a4c:	60c3      	str	r3, [r0, #12]
 8006a4e:	2a24      	cmp	r2, #36	; 0x24
 8006a50:	d010      	beq.n	8006a74 <_realloc_r+0x304>
 8006a52:	f105 0210 	add.w	r2, r5, #16
 8006a56:	f100 0310 	add.w	r3, r0, #16
 8006a5a:	6929      	ldr	r1, [r5, #16]
 8006a5c:	e6cf      	b.n	80067fe <_realloc_r+0x8e>
 8006a5e:	692a      	ldr	r2, [r5, #16]
 8006a60:	f8cb 2018 	str.w	r2, [fp, #24]
 8006a64:	696a      	ldr	r2, [r5, #20]
 8006a66:	f8cb 201c 	str.w	r2, [fp, #28]
 8006a6a:	69a9      	ldr	r1, [r5, #24]
 8006a6c:	f10b 0220 	add.w	r2, fp, #32
 8006a70:	3518      	adds	r5, #24
 8006a72:	e707      	b.n	8006884 <_realloc_r+0x114>
 8006a74:	692b      	ldr	r3, [r5, #16]
 8006a76:	6103      	str	r3, [r0, #16]
 8006a78:	696b      	ldr	r3, [r5, #20]
 8006a7a:	6143      	str	r3, [r0, #20]
 8006a7c:	69a9      	ldr	r1, [r5, #24]
 8006a7e:	f105 0218 	add.w	r2, r5, #24
 8006a82:	f100 0318 	add.w	r3, r0, #24
 8006a86:	e6ba      	b.n	80067fe <_realloc_r+0x8e>
 8006a88:	4652      	mov	r2, sl
 8006a8a:	e76e      	b.n	800696a <_realloc_r+0x1fa>
 8006a8c:	4629      	mov	r1, r5
 8006a8e:	4650      	mov	r0, sl
 8006a90:	9301      	str	r3, [sp, #4]
 8006a92:	f7ff faf3 	bl	800607c <memmove>
 8006a96:	9b01      	ldr	r3, [sp, #4]
 8006a98:	e76c      	b.n	8006974 <_realloc_r+0x204>
 8006a9a:	f8cb 1010 	str.w	r1, [fp, #16]
 8006a9e:	68e9      	ldr	r1, [r5, #12]
 8006aa0:	f8cb 1014 	str.w	r1, [fp, #20]
 8006aa4:	2a24      	cmp	r2, #36	; 0x24
 8006aa6:	d004      	beq.n	8006ab2 <_realloc_r+0x342>
 8006aa8:	6929      	ldr	r1, [r5, #16]
 8006aaa:	f10b 0218 	add.w	r2, fp, #24
 8006aae:	3510      	adds	r5, #16
 8006ab0:	e75b      	b.n	800696a <_realloc_r+0x1fa>
 8006ab2:	692a      	ldr	r2, [r5, #16]
 8006ab4:	f8cb 2018 	str.w	r2, [fp, #24]
 8006ab8:	696a      	ldr	r2, [r5, #20]
 8006aba:	f8cb 201c 	str.w	r2, [fp, #28]
 8006abe:	69a9      	ldr	r1, [r5, #24]
 8006ac0:	f10b 0220 	add.w	r2, fp, #32
 8006ac4:	3518      	adds	r5, #24
 8006ac6:	e750      	b.n	800696a <_realloc_r+0x1fa>
 8006ac8:	2000044c 	.word	0x2000044c

08006acc <frexp>:
 8006acc:	ec53 2b10 	vmov	r2, r3, d0
 8006ad0:	b570      	push	{r4, r5, r6, lr}
 8006ad2:	4e16      	ldr	r6, [pc, #88]	; (8006b2c <frexp+0x60>)
 8006ad4:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006ad8:	2500      	movs	r5, #0
 8006ada:	42b1      	cmp	r1, r6
 8006adc:	4604      	mov	r4, r0
 8006ade:	6005      	str	r5, [r0, #0]
 8006ae0:	dc21      	bgt.n	8006b26 <frexp+0x5a>
 8006ae2:	ee10 6a10 	vmov	r6, s0
 8006ae6:	430e      	orrs	r6, r1
 8006ae8:	d01d      	beq.n	8006b26 <frexp+0x5a>
 8006aea:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006aee:	4618      	mov	r0, r3
 8006af0:	da0c      	bge.n	8006b0c <frexp+0x40>
 8006af2:	4619      	mov	r1, r3
 8006af4:	2200      	movs	r2, #0
 8006af6:	ee10 0a10 	vmov	r0, s0
 8006afa:	4b0d      	ldr	r3, [pc, #52]	; (8006b30 <frexp+0x64>)
 8006afc:	f7fa f81c 	bl	8000b38 <__aeabi_dmul>
 8006b00:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006b04:	4602      	mov	r2, r0
 8006b06:	4608      	mov	r0, r1
 8006b08:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006b0c:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006b10:	1509      	asrs	r1, r1, #20
 8006b12:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006b16:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006b1a:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006b1e:	4429      	add	r1, r5
 8006b20:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006b24:	6021      	str	r1, [r4, #0]
 8006b26:	ec43 2b10 	vmov	d0, r2, r3
 8006b2a:	bd70      	pop	{r4, r5, r6, pc}
 8006b2c:	7fefffff 	.word	0x7fefffff
 8006b30:	43500000 	.word	0x43500000

08006b34 <_sbrk_r>:
 8006b34:	b538      	push	{r3, r4, r5, lr}
 8006b36:	4c07      	ldr	r4, [pc, #28]	; (8006b54 <_sbrk_r+0x20>)
 8006b38:	2300      	movs	r3, #0
 8006b3a:	4605      	mov	r5, r0
 8006b3c:	4608      	mov	r0, r1
 8006b3e:	6023      	str	r3, [r4, #0]
 8006b40:	f7fb fc2b 	bl	800239a <_sbrk>
 8006b44:	1c43      	adds	r3, r0, #1
 8006b46:	d000      	beq.n	8006b4a <_sbrk_r+0x16>
 8006b48:	bd38      	pop	{r3, r4, r5, pc}
 8006b4a:	6823      	ldr	r3, [r4, #0]
 8006b4c:	2b00      	cmp	r3, #0
 8006b4e:	d0fb      	beq.n	8006b48 <_sbrk_r+0x14>
 8006b50:	602b      	str	r3, [r5, #0]
 8006b52:	bd38      	pop	{r3, r4, r5, pc}
 8006b54:	20000e10 	.word	0x20000e10

08006b58 <__sread>:
 8006b58:	b510      	push	{r4, lr}
 8006b5a:	460c      	mov	r4, r1
 8006b5c:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b60:	f000 fabc 	bl	80070dc <_read_r>
 8006b64:	2800      	cmp	r0, #0
 8006b66:	db03      	blt.n	8006b70 <__sread+0x18>
 8006b68:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006b6a:	4403      	add	r3, r0
 8006b6c:	6523      	str	r3, [r4, #80]	; 0x50
 8006b6e:	bd10      	pop	{r4, pc}
 8006b70:	89a3      	ldrh	r3, [r4, #12]
 8006b72:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006b76:	81a3      	strh	r3, [r4, #12]
 8006b78:	bd10      	pop	{r4, pc}
 8006b7a:	bf00      	nop

08006b7c <__swrite>:
 8006b7c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006b80:	4616      	mov	r6, r2
 8006b82:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006b86:	461f      	mov	r7, r3
 8006b88:	05d3      	lsls	r3, r2, #23
 8006b8a:	460c      	mov	r4, r1
 8006b8c:	4605      	mov	r5, r0
 8006b8e:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006b92:	d507      	bpl.n	8006ba4 <__swrite+0x28>
 8006b94:	2200      	movs	r2, #0
 8006b96:	2302      	movs	r3, #2
 8006b98:	f000 fa74 	bl	8007084 <_lseek_r>
 8006b9c:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006ba0:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006ba4:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006ba8:	81a2      	strh	r2, [r4, #12]
 8006baa:	463b      	mov	r3, r7
 8006bac:	4632      	mov	r2, r6
 8006bae:	4628      	mov	r0, r5
 8006bb0:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006bb4:	f000 b88c 	b.w	8006cd0 <_write_r>

08006bb8 <__sseek>:
 8006bb8:	b510      	push	{r4, lr}
 8006bba:	460c      	mov	r4, r1
 8006bbc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006bc0:	f000 fa60 	bl	8007084 <_lseek_r>
 8006bc4:	89a3      	ldrh	r3, [r4, #12]
 8006bc6:	1c42      	adds	r2, r0, #1
 8006bc8:	bf0e      	itee	eq
 8006bca:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006bce:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006bd2:	6520      	strne	r0, [r4, #80]	; 0x50
 8006bd4:	81a3      	strh	r3, [r4, #12]
 8006bd6:	bd10      	pop	{r4, pc}

08006bd8 <__sclose>:
 8006bd8:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006bdc:	f000 b922 	b.w	8006e24 <_close_r>

08006be0 <strncpy>:
 8006be0:	ea40 0301 	orr.w	r3, r0, r1
 8006be4:	079b      	lsls	r3, r3, #30
 8006be6:	b470      	push	{r4, r5, r6}
 8006be8:	d12a      	bne.n	8006c40 <strncpy+0x60>
 8006bea:	2a03      	cmp	r2, #3
 8006bec:	d928      	bls.n	8006c40 <strncpy+0x60>
 8006bee:	460c      	mov	r4, r1
 8006bf0:	4603      	mov	r3, r0
 8006bf2:	4621      	mov	r1, r4
 8006bf4:	f854 6b04 	ldr.w	r6, [r4], #4
 8006bf8:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006bfc:	ea25 0506 	bic.w	r5, r5, r6
 8006c00:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006c04:	d106      	bne.n	8006c14 <strncpy+0x34>
 8006c06:	3a04      	subs	r2, #4
 8006c08:	2a03      	cmp	r2, #3
 8006c0a:	f843 6b04 	str.w	r6, [r3], #4
 8006c0e:	4621      	mov	r1, r4
 8006c10:	d8ef      	bhi.n	8006bf2 <strncpy+0x12>
 8006c12:	b19a      	cbz	r2, 8006c3c <strncpy+0x5c>
 8006c14:	780c      	ldrb	r4, [r1, #0]
 8006c16:	701c      	strb	r4, [r3, #0]
 8006c18:	3a01      	subs	r2, #1
 8006c1a:	3301      	adds	r3, #1
 8006c1c:	b13c      	cbz	r4, 8006c2e <strncpy+0x4e>
 8006c1e:	b16a      	cbz	r2, 8006c3c <strncpy+0x5c>
 8006c20:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006c24:	f803 4b01 	strb.w	r4, [r3], #1
 8006c28:	3a01      	subs	r2, #1
 8006c2a:	2c00      	cmp	r4, #0
 8006c2c:	d1f7      	bne.n	8006c1e <strncpy+0x3e>
 8006c2e:	b12a      	cbz	r2, 8006c3c <strncpy+0x5c>
 8006c30:	441a      	add	r2, r3
 8006c32:	2100      	movs	r1, #0
 8006c34:	f803 1b01 	strb.w	r1, [r3], #1
 8006c38:	4293      	cmp	r3, r2
 8006c3a:	d1fb      	bne.n	8006c34 <strncpy+0x54>
 8006c3c:	bc70      	pop	{r4, r5, r6}
 8006c3e:	4770      	bx	lr
 8006c40:	4603      	mov	r3, r0
 8006c42:	e7e6      	b.n	8006c12 <strncpy+0x32>

08006c44 <__sprint_r.part.0>:
 8006c44:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006c48:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006c4a:	049c      	lsls	r4, r3, #18
 8006c4c:	4692      	mov	sl, r2
 8006c4e:	d52d      	bpl.n	8006cac <__sprint_r.part.0+0x68>
 8006c50:	6893      	ldr	r3, [r2, #8]
 8006c52:	6812      	ldr	r2, [r2, #0]
 8006c54:	b343      	cbz	r3, 8006ca8 <__sprint_r.part.0+0x64>
 8006c56:	460e      	mov	r6, r1
 8006c58:	4607      	mov	r7, r0
 8006c5a:	f102 0908 	add.w	r9, r2, #8
 8006c5e:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006c62:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006c66:	d015      	beq.n	8006c94 <__sprint_r.part.0+0x50>
 8006c68:	3d04      	subs	r5, #4
 8006c6a:	2400      	movs	r4, #0
 8006c6c:	e001      	b.n	8006c72 <__sprint_r.part.0+0x2e>
 8006c6e:	45a0      	cmp	r8, r4
 8006c70:	d00e      	beq.n	8006c90 <__sprint_r.part.0+0x4c>
 8006c72:	4632      	mov	r2, r6
 8006c74:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006c78:	4638      	mov	r0, r7
 8006c7a:	f000 f99d 	bl	8006fb8 <_fputwc_r>
 8006c7e:	1c43      	adds	r3, r0, #1
 8006c80:	f104 0401 	add.w	r4, r4, #1
 8006c84:	d1f3      	bne.n	8006c6e <__sprint_r.part.0+0x2a>
 8006c86:	2300      	movs	r3, #0
 8006c88:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006c8c:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006c90:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006c94:	f02b 0b03 	bic.w	fp, fp, #3
 8006c98:	eba3 030b 	sub.w	r3, r3, fp
 8006c9c:	f8ca 3008 	str.w	r3, [sl, #8]
 8006ca0:	f109 0908 	add.w	r9, r9, #8
 8006ca4:	2b00      	cmp	r3, #0
 8006ca6:	d1da      	bne.n	8006c5e <__sprint_r.part.0+0x1a>
 8006ca8:	2000      	movs	r0, #0
 8006caa:	e7ec      	b.n	8006c86 <__sprint_r.part.0+0x42>
 8006cac:	f7fe fd0c 	bl	80056c8 <__sfvwrite_r>
 8006cb0:	2300      	movs	r3, #0
 8006cb2:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006cb6:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006cba:	bf00      	nop

08006cbc <__sprint_r>:
 8006cbc:	6893      	ldr	r3, [r2, #8]
 8006cbe:	b10b      	cbz	r3, 8006cc4 <__sprint_r+0x8>
 8006cc0:	f7ff bfc0 	b.w	8006c44 <__sprint_r.part.0>
 8006cc4:	b410      	push	{r4}
 8006cc6:	4618      	mov	r0, r3
 8006cc8:	6053      	str	r3, [r2, #4]
 8006cca:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006cce:	4770      	bx	lr

08006cd0 <_write_r>:
 8006cd0:	b570      	push	{r4, r5, r6, lr}
 8006cd2:	460d      	mov	r5, r1
 8006cd4:	4c08      	ldr	r4, [pc, #32]	; (8006cf8 <_write_r+0x28>)
 8006cd6:	4611      	mov	r1, r2
 8006cd8:	4606      	mov	r6, r0
 8006cda:	461a      	mov	r2, r3
 8006cdc:	4628      	mov	r0, r5
 8006cde:	2300      	movs	r3, #0
 8006ce0:	6023      	str	r3, [r4, #0]
 8006ce2:	f7fb fb3c 	bl	800235e <_write>
 8006ce6:	1c43      	adds	r3, r0, #1
 8006ce8:	d000      	beq.n	8006cec <_write_r+0x1c>
 8006cea:	bd70      	pop	{r4, r5, r6, pc}
 8006cec:	6823      	ldr	r3, [r4, #0]
 8006cee:	2b00      	cmp	r3, #0
 8006cf0:	d0fb      	beq.n	8006cea <_write_r+0x1a>
 8006cf2:	6033      	str	r3, [r6, #0]
 8006cf4:	bd70      	pop	{r4, r5, r6, pc}
 8006cf6:	bf00      	nop
 8006cf8:	20000e10 	.word	0x20000e10

08006cfc <__register_exitproc>:
 8006cfc:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006d00:	4d2b      	ldr	r5, [pc, #172]	; (8006db0 <__register_exitproc+0xb4>)
 8006d02:	4606      	mov	r6, r0
 8006d04:	6828      	ldr	r0, [r5, #0]
 8006d06:	4698      	mov	r8, r3
 8006d08:	460f      	mov	r7, r1
 8006d0a:	4691      	mov	r9, r2
 8006d0c:	f7fe fe96 	bl	8005a3c <__retarget_lock_acquire_recursive>
 8006d10:	4b28      	ldr	r3, [pc, #160]	; (8006db4 <__register_exitproc+0xb8>)
 8006d12:	681c      	ldr	r4, [r3, #0]
 8006d14:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006d18:	2b00      	cmp	r3, #0
 8006d1a:	d03d      	beq.n	8006d98 <__register_exitproc+0x9c>
 8006d1c:	685a      	ldr	r2, [r3, #4]
 8006d1e:	2a1f      	cmp	r2, #31
 8006d20:	dc0d      	bgt.n	8006d3e <__register_exitproc+0x42>
 8006d22:	f102 0c01 	add.w	ip, r2, #1
 8006d26:	bb16      	cbnz	r6, 8006d6e <__register_exitproc+0x72>
 8006d28:	3202      	adds	r2, #2
 8006d2a:	f8c3 c004 	str.w	ip, [r3, #4]
 8006d2e:	6828      	ldr	r0, [r5, #0]
 8006d30:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006d34:	f7fe fe84 	bl	8005a40 <__retarget_lock_release_recursive>
 8006d38:	2000      	movs	r0, #0
 8006d3a:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006d3e:	4b1e      	ldr	r3, [pc, #120]	; (8006db8 <__register_exitproc+0xbc>)
 8006d40:	b37b      	cbz	r3, 8006da2 <__register_exitproc+0xa6>
 8006d42:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006d46:	f3af 8000 	nop.w
 8006d4a:	4603      	mov	r3, r0
 8006d4c:	b348      	cbz	r0, 8006da2 <__register_exitproc+0xa6>
 8006d4e:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006d52:	2100      	movs	r1, #0
 8006d54:	e9c0 2100 	strd	r2, r1, [r0]
 8006d58:	f04f 0c01 	mov.w	ip, #1
 8006d5c:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006d60:	460a      	mov	r2, r1
 8006d62:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006d66:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006d6a:	2e00      	cmp	r6, #0
 8006d6c:	d0dc      	beq.n	8006d28 <__register_exitproc+0x2c>
 8006d6e:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006d72:	2401      	movs	r4, #1
 8006d74:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006d78:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006d7c:	4094      	lsls	r4, r2
 8006d7e:	4320      	orrs	r0, r4
 8006d80:	2e02      	cmp	r6, #2
 8006d82:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006d86:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006d8a:	d1cd      	bne.n	8006d28 <__register_exitproc+0x2c>
 8006d8c:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006d90:	430c      	orrs	r4, r1
 8006d92:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006d96:	e7c7      	b.n	8006d28 <__register_exitproc+0x2c>
 8006d98:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006d9c:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006da0:	e7bc      	b.n	8006d1c <__register_exitproc+0x20>
 8006da2:	6828      	ldr	r0, [r5, #0]
 8006da4:	f7fe fe4c 	bl	8005a40 <__retarget_lock_release_recursive>
 8006da8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006dac:	e7c5      	b.n	8006d3a <__register_exitproc+0x3e>
 8006dae:	bf00      	nop
 8006db0:	20000448 	.word	0x20000448
 8006db4:	0800746c 	.word	0x0800746c
 8006db8:	00000000 	.word	0x00000000

08006dbc <_calloc_r>:
 8006dbc:	b510      	push	{r4, lr}
 8006dbe:	fb02 f101 	mul.w	r1, r2, r1
 8006dc2:	f7fe feb7 	bl	8005b34 <_malloc_r>
 8006dc6:	4604      	mov	r4, r0
 8006dc8:	b1d8      	cbz	r0, 8006e02 <_calloc_r+0x46>
 8006dca:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006dce:	f022 0203 	bic.w	r2, r2, #3
 8006dd2:	3a04      	subs	r2, #4
 8006dd4:	2a24      	cmp	r2, #36	; 0x24
 8006dd6:	d81d      	bhi.n	8006e14 <_calloc_r+0x58>
 8006dd8:	2a13      	cmp	r2, #19
 8006dda:	d914      	bls.n	8006e06 <_calloc_r+0x4a>
 8006ddc:	2300      	movs	r3, #0
 8006dde:	2a1b      	cmp	r2, #27
 8006de0:	e9c0 3300 	strd	r3, r3, [r0]
 8006de4:	d91b      	bls.n	8006e1e <_calloc_r+0x62>
 8006de6:	2a24      	cmp	r2, #36	; 0x24
 8006de8:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006dec:	bf0a      	itet	eq
 8006dee:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006df2:	f100 0210 	addne.w	r2, r0, #16
 8006df6:	f100 0218 	addeq.w	r2, r0, #24
 8006dfa:	2300      	movs	r3, #0
 8006dfc:	e9c2 3300 	strd	r3, r3, [r2]
 8006e00:	6093      	str	r3, [r2, #8]
 8006e02:	4620      	mov	r0, r4
 8006e04:	bd10      	pop	{r4, pc}
 8006e06:	4602      	mov	r2, r0
 8006e08:	2300      	movs	r3, #0
 8006e0a:	e9c2 3300 	strd	r3, r3, [r2]
 8006e0e:	6093      	str	r3, [r2, #8]
 8006e10:	4620      	mov	r0, r4
 8006e12:	bd10      	pop	{r4, pc}
 8006e14:	2100      	movs	r1, #0
 8006e16:	f7fb fb6d 	bl	80024f4 <memset>
 8006e1a:	4620      	mov	r0, r4
 8006e1c:	bd10      	pop	{r4, pc}
 8006e1e:	f100 0208 	add.w	r2, r0, #8
 8006e22:	e7f1      	b.n	8006e08 <_calloc_r+0x4c>

08006e24 <_close_r>:
 8006e24:	b538      	push	{r3, r4, r5, lr}
 8006e26:	4c07      	ldr	r4, [pc, #28]	; (8006e44 <_close_r+0x20>)
 8006e28:	2300      	movs	r3, #0
 8006e2a:	4605      	mov	r5, r0
 8006e2c:	4608      	mov	r0, r1
 8006e2e:	6023      	str	r3, [r4, #0]
 8006e30:	f7fb fad6 	bl	80023e0 <_close>
 8006e34:	1c43      	adds	r3, r0, #1
 8006e36:	d000      	beq.n	8006e3a <_close_r+0x16>
 8006e38:	bd38      	pop	{r3, r4, r5, pc}
 8006e3a:	6823      	ldr	r3, [r4, #0]
 8006e3c:	2b00      	cmp	r3, #0
 8006e3e:	d0fb      	beq.n	8006e38 <_close_r+0x14>
 8006e40:	602b      	str	r3, [r5, #0]
 8006e42:	bd38      	pop	{r3, r4, r5, pc}
 8006e44:	20000e10 	.word	0x20000e10

08006e48 <_fclose_r>:
 8006e48:	b570      	push	{r4, r5, r6, lr}
 8006e4a:	2900      	cmp	r1, #0
 8006e4c:	d048      	beq.n	8006ee0 <_fclose_r+0x98>
 8006e4e:	4605      	mov	r5, r0
 8006e50:	460c      	mov	r4, r1
 8006e52:	b110      	cbz	r0, 8006e5a <_fclose_r+0x12>
 8006e54:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8006e56:	2b00      	cmp	r3, #0
 8006e58:	d048      	beq.n	8006eec <_fclose_r+0xa4>
 8006e5a:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006e5c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006e60:	07d0      	lsls	r0, r2, #31
 8006e62:	d440      	bmi.n	8006ee6 <_fclose_r+0x9e>
 8006e64:	0599      	lsls	r1, r3, #22
 8006e66:	d530      	bpl.n	8006eca <_fclose_r+0x82>
 8006e68:	4621      	mov	r1, r4
 8006e6a:	4628      	mov	r0, r5
 8006e6c:	f7fe f990 	bl	8005190 <__sflush_r>
 8006e70:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8006e72:	4606      	mov	r6, r0
 8006e74:	b133      	cbz	r3, 8006e84 <_fclose_r+0x3c>
 8006e76:	69e1      	ldr	r1, [r4, #28]
 8006e78:	4628      	mov	r0, r5
 8006e7a:	4798      	blx	r3
 8006e7c:	2800      	cmp	r0, #0
 8006e7e:	bfb8      	it	lt
 8006e80:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8006e84:	89a3      	ldrh	r3, [r4, #12]
 8006e86:	061a      	lsls	r2, r3, #24
 8006e88:	d43c      	bmi.n	8006f04 <_fclose_r+0xbc>
 8006e8a:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8006e8c:	b141      	cbz	r1, 8006ea0 <_fclose_r+0x58>
 8006e8e:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8006e92:	4299      	cmp	r1, r3
 8006e94:	d002      	beq.n	8006e9c <_fclose_r+0x54>
 8006e96:	4628      	mov	r0, r5
 8006e98:	f7fe fb22 	bl	80054e0 <_free_r>
 8006e9c:	2300      	movs	r3, #0
 8006e9e:	6323      	str	r3, [r4, #48]	; 0x30
 8006ea0:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8006ea2:	b121      	cbz	r1, 8006eae <_fclose_r+0x66>
 8006ea4:	4628      	mov	r0, r5
 8006ea6:	f7fe fb1b 	bl	80054e0 <_free_r>
 8006eaa:	2300      	movs	r3, #0
 8006eac:	6463      	str	r3, [r4, #68]	; 0x44
 8006eae:	f7fe faa1 	bl	80053f4 <__sfp_lock_acquire>
 8006eb2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006eb4:	2200      	movs	r2, #0
 8006eb6:	07db      	lsls	r3, r3, #31
 8006eb8:	81a2      	strh	r2, [r4, #12]
 8006eba:	d51f      	bpl.n	8006efc <_fclose_r+0xb4>
 8006ebc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ebe:	f7fe fdbb 	bl	8005a38 <__retarget_lock_close_recursive>
 8006ec2:	f7fe fa9d 	bl	8005400 <__sfp_lock_release>
 8006ec6:	4630      	mov	r0, r6
 8006ec8:	bd70      	pop	{r4, r5, r6, pc}
 8006eca:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ecc:	f7fe fdb6 	bl	8005a3c <__retarget_lock_acquire_recursive>
 8006ed0:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ed4:	2b00      	cmp	r3, #0
 8006ed6:	d1c7      	bne.n	8006e68 <_fclose_r+0x20>
 8006ed8:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006eda:	f016 0601 	ands.w	r6, r6, #1
 8006ede:	d016      	beq.n	8006f0e <_fclose_r+0xc6>
 8006ee0:	2600      	movs	r6, #0
 8006ee2:	4630      	mov	r0, r6
 8006ee4:	bd70      	pop	{r4, r5, r6, pc}
 8006ee6:	2b00      	cmp	r3, #0
 8006ee8:	d0fa      	beq.n	8006ee0 <_fclose_r+0x98>
 8006eea:	e7bd      	b.n	8006e68 <_fclose_r+0x20>
 8006eec:	f7fe fa56 	bl	800539c <__sinit>
 8006ef0:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006ef2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006ef6:	07d0      	lsls	r0, r2, #31
 8006ef8:	d4f5      	bmi.n	8006ee6 <_fclose_r+0x9e>
 8006efa:	e7b3      	b.n	8006e64 <_fclose_r+0x1c>
 8006efc:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006efe:	f7fe fd9f 	bl	8005a40 <__retarget_lock_release_recursive>
 8006f02:	e7db      	b.n	8006ebc <_fclose_r+0x74>
 8006f04:	6921      	ldr	r1, [r4, #16]
 8006f06:	4628      	mov	r0, r5
 8006f08:	f7fe faea 	bl	80054e0 <_free_r>
 8006f0c:	e7bd      	b.n	8006e8a <_fclose_r+0x42>
 8006f0e:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006f10:	f7fe fd96 	bl	8005a40 <__retarget_lock_release_recursive>
 8006f14:	4630      	mov	r0, r6
 8006f16:	bd70      	pop	{r4, r5, r6, pc}

08006f18 <__fputwc>:
 8006f18:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8006f1c:	b082      	sub	sp, #8
 8006f1e:	4681      	mov	r9, r0
 8006f20:	4688      	mov	r8, r1
 8006f22:	4614      	mov	r4, r2
 8006f24:	f000 f8a0 	bl	8007068 <__locale_mb_cur_max>
 8006f28:	2801      	cmp	r0, #1
 8006f2a:	d103      	bne.n	8006f34 <__fputwc+0x1c>
 8006f2c:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006f30:	2bfe      	cmp	r3, #254	; 0xfe
 8006f32:	d933      	bls.n	8006f9c <__fputwc+0x84>
 8006f34:	4642      	mov	r2, r8
 8006f36:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8006f3a:	a901      	add	r1, sp, #4
 8006f3c:	4648      	mov	r0, r9
 8006f3e:	f000 f93b 	bl	80071b8 <_wcrtomb_r>
 8006f42:	1c42      	adds	r2, r0, #1
 8006f44:	4606      	mov	r6, r0
 8006f46:	d02f      	beq.n	8006fa8 <__fputwc+0x90>
 8006f48:	b320      	cbz	r0, 8006f94 <__fputwc+0x7c>
 8006f4a:	f89d c004 	ldrb.w	ip, [sp, #4]
 8006f4e:	2500      	movs	r5, #0
 8006f50:	f10d 0a04 	add.w	sl, sp, #4
 8006f54:	e009      	b.n	8006f6a <__fputwc+0x52>
 8006f56:	6823      	ldr	r3, [r4, #0]
 8006f58:	1c5a      	adds	r2, r3, #1
 8006f5a:	6022      	str	r2, [r4, #0]
 8006f5c:	f883 c000 	strb.w	ip, [r3]
 8006f60:	3501      	adds	r5, #1
 8006f62:	42b5      	cmp	r5, r6
 8006f64:	d216      	bcs.n	8006f94 <__fputwc+0x7c>
 8006f66:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8006f6a:	68a3      	ldr	r3, [r4, #8]
 8006f6c:	3b01      	subs	r3, #1
 8006f6e:	2b00      	cmp	r3, #0
 8006f70:	60a3      	str	r3, [r4, #8]
 8006f72:	daf0      	bge.n	8006f56 <__fputwc+0x3e>
 8006f74:	69a7      	ldr	r7, [r4, #24]
 8006f76:	42bb      	cmp	r3, r7
 8006f78:	4661      	mov	r1, ip
 8006f7a:	4622      	mov	r2, r4
 8006f7c:	4648      	mov	r0, r9
 8006f7e:	db02      	blt.n	8006f86 <__fputwc+0x6e>
 8006f80:	f1bc 0f0a 	cmp.w	ip, #10
 8006f84:	d1e7      	bne.n	8006f56 <__fputwc+0x3e>
 8006f86:	f000 f8bf 	bl	8007108 <__swbuf_r>
 8006f8a:	1c43      	adds	r3, r0, #1
 8006f8c:	d1e8      	bne.n	8006f60 <__fputwc+0x48>
 8006f8e:	b002      	add	sp, #8
 8006f90:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006f94:	4640      	mov	r0, r8
 8006f96:	b002      	add	sp, #8
 8006f98:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006f9c:	fa5f fc88 	uxtb.w	ip, r8
 8006fa0:	4606      	mov	r6, r0
 8006fa2:	f88d c004 	strb.w	ip, [sp, #4]
 8006fa6:	e7d2      	b.n	8006f4e <__fputwc+0x36>
 8006fa8:	89a3      	ldrh	r3, [r4, #12]
 8006faa:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006fae:	81a3      	strh	r3, [r4, #12]
 8006fb0:	b002      	add	sp, #8
 8006fb2:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8006fb6:	bf00      	nop

08006fb8 <_fputwc_r>:
 8006fb8:	b530      	push	{r4, r5, lr}
 8006fba:	4605      	mov	r5, r0
 8006fbc:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8006fbe:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8006fc2:	07c0      	lsls	r0, r0, #31
 8006fc4:	4614      	mov	r4, r2
 8006fc6:	b083      	sub	sp, #12
 8006fc8:	b29a      	uxth	r2, r3
 8006fca:	d401      	bmi.n	8006fd0 <_fputwc_r+0x18>
 8006fcc:	0590      	lsls	r0, r2, #22
 8006fce:	d51c      	bpl.n	800700a <_fputwc_r+0x52>
 8006fd0:	0490      	lsls	r0, r2, #18
 8006fd2:	d406      	bmi.n	8006fe2 <_fputwc_r+0x2a>
 8006fd4:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006fd6:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006fda:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8006fde:	81a3      	strh	r3, [r4, #12]
 8006fe0:	6662      	str	r2, [r4, #100]	; 0x64
 8006fe2:	4628      	mov	r0, r5
 8006fe4:	4622      	mov	r2, r4
 8006fe6:	f7ff ff97 	bl	8006f18 <__fputwc>
 8006fea:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006fec:	07da      	lsls	r2, r3, #31
 8006fee:	4605      	mov	r5, r0
 8006ff0:	d402      	bmi.n	8006ff8 <_fputwc_r+0x40>
 8006ff2:	89a3      	ldrh	r3, [r4, #12]
 8006ff4:	059b      	lsls	r3, r3, #22
 8006ff6:	d502      	bpl.n	8006ffe <_fputwc_r+0x46>
 8006ff8:	4628      	mov	r0, r5
 8006ffa:	b003      	add	sp, #12
 8006ffc:	bd30      	pop	{r4, r5, pc}
 8006ffe:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007000:	f7fe fd1e 	bl	8005a40 <__retarget_lock_release_recursive>
 8007004:	4628      	mov	r0, r5
 8007006:	b003      	add	sp, #12
 8007008:	bd30      	pop	{r4, r5, pc}
 800700a:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800700c:	9101      	str	r1, [sp, #4]
 800700e:	f7fe fd15 	bl	8005a3c <__retarget_lock_acquire_recursive>
 8007012:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007016:	9901      	ldr	r1, [sp, #4]
 8007018:	b29a      	uxth	r2, r3
 800701a:	e7d9      	b.n	8006fd0 <_fputwc_r+0x18>

0800701c <_fstat_r>:
 800701c:	b538      	push	{r3, r4, r5, lr}
 800701e:	460b      	mov	r3, r1
 8007020:	4c07      	ldr	r4, [pc, #28]	; (8007040 <_fstat_r+0x24>)
 8007022:	4605      	mov	r5, r0
 8007024:	4611      	mov	r1, r2
 8007026:	4618      	mov	r0, r3
 8007028:	2300      	movs	r3, #0
 800702a:	6023      	str	r3, [r4, #0]
 800702c:	f7fb f9db 	bl	80023e6 <_fstat>
 8007030:	1c43      	adds	r3, r0, #1
 8007032:	d000      	beq.n	8007036 <_fstat_r+0x1a>
 8007034:	bd38      	pop	{r3, r4, r5, pc}
 8007036:	6823      	ldr	r3, [r4, #0]
 8007038:	2b00      	cmp	r3, #0
 800703a:	d0fb      	beq.n	8007034 <_fstat_r+0x18>
 800703c:	602b      	str	r3, [r5, #0]
 800703e:	bd38      	pop	{r3, r4, r5, pc}
 8007040:	20000e10 	.word	0x20000e10

08007044 <_isatty_r>:
 8007044:	b538      	push	{r3, r4, r5, lr}
 8007046:	4c07      	ldr	r4, [pc, #28]	; (8007064 <_isatty_r+0x20>)
 8007048:	2300      	movs	r3, #0
 800704a:	4605      	mov	r5, r0
 800704c:	4608      	mov	r0, r1
 800704e:	6023      	str	r3, [r4, #0]
 8007050:	f7fb f9cf 	bl	80023f2 <_isatty>
 8007054:	1c43      	adds	r3, r0, #1
 8007056:	d000      	beq.n	800705a <_isatty_r+0x16>
 8007058:	bd38      	pop	{r3, r4, r5, pc}
 800705a:	6823      	ldr	r3, [r4, #0]
 800705c:	2b00      	cmp	r3, #0
 800705e:	d0fb      	beq.n	8007058 <_isatty_r+0x14>
 8007060:	602b      	str	r3, [r5, #0]
 8007062:	bd38      	pop	{r3, r4, r5, pc}
 8007064:	20000e10 	.word	0x20000e10

08007068 <__locale_mb_cur_max>:
 8007068:	4b04      	ldr	r3, [pc, #16]	; (800707c <__locale_mb_cur_max+0x14>)
 800706a:	4a05      	ldr	r2, [pc, #20]	; (8007080 <__locale_mb_cur_max+0x18>)
 800706c:	681b      	ldr	r3, [r3, #0]
 800706e:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007070:	2b00      	cmp	r3, #0
 8007072:	bf08      	it	eq
 8007074:	4613      	moveq	r3, r2
 8007076:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800707a:	4770      	bx	lr
 800707c:	20000018 	.word	0x20000018
 8007080:	2000085c 	.word	0x2000085c

08007084 <_lseek_r>:
 8007084:	b570      	push	{r4, r5, r6, lr}
 8007086:	460d      	mov	r5, r1
 8007088:	4c08      	ldr	r4, [pc, #32]	; (80070ac <_lseek_r+0x28>)
 800708a:	4611      	mov	r1, r2
 800708c:	4606      	mov	r6, r0
 800708e:	461a      	mov	r2, r3
 8007090:	4628      	mov	r0, r5
 8007092:	2300      	movs	r3, #0
 8007094:	6023      	str	r3, [r4, #0]
 8007096:	f7fb f9ae 	bl	80023f6 <_lseek>
 800709a:	1c43      	adds	r3, r0, #1
 800709c:	d000      	beq.n	80070a0 <_lseek_r+0x1c>
 800709e:	bd70      	pop	{r4, r5, r6, pc}
 80070a0:	6823      	ldr	r3, [r4, #0]
 80070a2:	2b00      	cmp	r3, #0
 80070a4:	d0fb      	beq.n	800709e <_lseek_r+0x1a>
 80070a6:	6033      	str	r3, [r6, #0]
 80070a8:	bd70      	pop	{r4, r5, r6, pc}
 80070aa:	bf00      	nop
 80070ac:	20000e10 	.word	0x20000e10

080070b0 <__ascii_mbtowc>:
 80070b0:	b082      	sub	sp, #8
 80070b2:	b149      	cbz	r1, 80070c8 <__ascii_mbtowc+0x18>
 80070b4:	b15a      	cbz	r2, 80070ce <__ascii_mbtowc+0x1e>
 80070b6:	b16b      	cbz	r3, 80070d4 <__ascii_mbtowc+0x24>
 80070b8:	7813      	ldrb	r3, [r2, #0]
 80070ba:	600b      	str	r3, [r1, #0]
 80070bc:	7812      	ldrb	r2, [r2, #0]
 80070be:	1c10      	adds	r0, r2, #0
 80070c0:	bf18      	it	ne
 80070c2:	2001      	movne	r0, #1
 80070c4:	b002      	add	sp, #8
 80070c6:	4770      	bx	lr
 80070c8:	a901      	add	r1, sp, #4
 80070ca:	2a00      	cmp	r2, #0
 80070cc:	d1f3      	bne.n	80070b6 <__ascii_mbtowc+0x6>
 80070ce:	4610      	mov	r0, r2
 80070d0:	b002      	add	sp, #8
 80070d2:	4770      	bx	lr
 80070d4:	f06f 0001 	mvn.w	r0, #1
 80070d8:	e7f4      	b.n	80070c4 <__ascii_mbtowc+0x14>
 80070da:	bf00      	nop

080070dc <_read_r>:
 80070dc:	b570      	push	{r4, r5, r6, lr}
 80070de:	460d      	mov	r5, r1
 80070e0:	4c08      	ldr	r4, [pc, #32]	; (8007104 <_read_r+0x28>)
 80070e2:	4611      	mov	r1, r2
 80070e4:	4606      	mov	r6, r0
 80070e6:	461a      	mov	r2, r3
 80070e8:	4628      	mov	r0, r5
 80070ea:	2300      	movs	r3, #0
 80070ec:	6023      	str	r3, [r4, #0]
 80070ee:	f7fb f916 	bl	800231e <_read>
 80070f2:	1c43      	adds	r3, r0, #1
 80070f4:	d000      	beq.n	80070f8 <_read_r+0x1c>
 80070f6:	bd70      	pop	{r4, r5, r6, pc}
 80070f8:	6823      	ldr	r3, [r4, #0]
 80070fa:	2b00      	cmp	r3, #0
 80070fc:	d0fb      	beq.n	80070f6 <_read_r+0x1a>
 80070fe:	6033      	str	r3, [r6, #0]
 8007100:	bd70      	pop	{r4, r5, r6, pc}
 8007102:	bf00      	nop
 8007104:	20000e10 	.word	0x20000e10

08007108 <__swbuf_r>:
 8007108:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800710a:	460d      	mov	r5, r1
 800710c:	4614      	mov	r4, r2
 800710e:	4606      	mov	r6, r0
 8007110:	b110      	cbz	r0, 8007118 <__swbuf_r+0x10>
 8007112:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007114:	2b00      	cmp	r3, #0
 8007116:	d043      	beq.n	80071a0 <__swbuf_r+0x98>
 8007118:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800711c:	69a3      	ldr	r3, [r4, #24]
 800711e:	60a3      	str	r3, [r4, #8]
 8007120:	b291      	uxth	r1, r2
 8007122:	0708      	lsls	r0, r1, #28
 8007124:	d51b      	bpl.n	800715e <__swbuf_r+0x56>
 8007126:	6923      	ldr	r3, [r4, #16]
 8007128:	b1cb      	cbz	r3, 800715e <__swbuf_r+0x56>
 800712a:	b2ed      	uxtb	r5, r5
 800712c:	0489      	lsls	r1, r1, #18
 800712e:	462f      	mov	r7, r5
 8007130:	d522      	bpl.n	8007178 <__swbuf_r+0x70>
 8007132:	6822      	ldr	r2, [r4, #0]
 8007134:	6961      	ldr	r1, [r4, #20]
 8007136:	1ad3      	subs	r3, r2, r3
 8007138:	4299      	cmp	r1, r3
 800713a:	dd29      	ble.n	8007190 <__swbuf_r+0x88>
 800713c:	3301      	adds	r3, #1
 800713e:	68a1      	ldr	r1, [r4, #8]
 8007140:	1c50      	adds	r0, r2, #1
 8007142:	3901      	subs	r1, #1
 8007144:	60a1      	str	r1, [r4, #8]
 8007146:	6020      	str	r0, [r4, #0]
 8007148:	7015      	strb	r5, [r2, #0]
 800714a:	6962      	ldr	r2, [r4, #20]
 800714c:	429a      	cmp	r2, r3
 800714e:	d02a      	beq.n	80071a6 <__swbuf_r+0x9e>
 8007150:	89a3      	ldrh	r3, [r4, #12]
 8007152:	07db      	lsls	r3, r3, #31
 8007154:	d501      	bpl.n	800715a <__swbuf_r+0x52>
 8007156:	2d0a      	cmp	r5, #10
 8007158:	d025      	beq.n	80071a6 <__swbuf_r+0x9e>
 800715a:	4638      	mov	r0, r7
 800715c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800715e:	4621      	mov	r1, r4
 8007160:	4630      	mov	r0, r6
 8007162:	f7fc fffd 	bl	8004160 <__swsetup_r>
 8007166:	bb20      	cbnz	r0, 80071b2 <__swbuf_r+0xaa>
 8007168:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800716c:	6923      	ldr	r3, [r4, #16]
 800716e:	b291      	uxth	r1, r2
 8007170:	b2ed      	uxtb	r5, r5
 8007172:	0489      	lsls	r1, r1, #18
 8007174:	462f      	mov	r7, r5
 8007176:	d4dc      	bmi.n	8007132 <__swbuf_r+0x2a>
 8007178:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800717a:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800717e:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8007182:	81a2      	strh	r2, [r4, #12]
 8007184:	6822      	ldr	r2, [r4, #0]
 8007186:	6661      	str	r1, [r4, #100]	; 0x64
 8007188:	6961      	ldr	r1, [r4, #20]
 800718a:	1ad3      	subs	r3, r2, r3
 800718c:	4299      	cmp	r1, r3
 800718e:	dcd5      	bgt.n	800713c <__swbuf_r+0x34>
 8007190:	4621      	mov	r1, r4
 8007192:	4630      	mov	r0, r6
 8007194:	f7fe f8a6 	bl	80052e4 <_fflush_r>
 8007198:	b958      	cbnz	r0, 80071b2 <__swbuf_r+0xaa>
 800719a:	6822      	ldr	r2, [r4, #0]
 800719c:	2301      	movs	r3, #1
 800719e:	e7ce      	b.n	800713e <__swbuf_r+0x36>
 80071a0:	f7fe f8fc 	bl	800539c <__sinit>
 80071a4:	e7b8      	b.n	8007118 <__swbuf_r+0x10>
 80071a6:	4621      	mov	r1, r4
 80071a8:	4630      	mov	r0, r6
 80071aa:	f7fe f89b 	bl	80052e4 <_fflush_r>
 80071ae:	2800      	cmp	r0, #0
 80071b0:	d0d3      	beq.n	800715a <__swbuf_r+0x52>
 80071b2:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 80071b6:	e7d0      	b.n	800715a <__swbuf_r+0x52>

080071b8 <_wcrtomb_r>:
 80071b8:	b5f0      	push	{r4, r5, r6, r7, lr}
 80071ba:	4c11      	ldr	r4, [pc, #68]	; (8007200 <_wcrtomb_r+0x48>)
 80071bc:	6824      	ldr	r4, [r4, #0]
 80071be:	b085      	sub	sp, #20
 80071c0:	4606      	mov	r6, r0
 80071c2:	6b64      	ldr	r4, [r4, #52]	; 0x34
 80071c4:	461f      	mov	r7, r3
 80071c6:	b151      	cbz	r1, 80071de <_wcrtomb_r+0x26>
 80071c8:	4d0e      	ldr	r5, [pc, #56]	; (8007204 <_wcrtomb_r+0x4c>)
 80071ca:	2c00      	cmp	r4, #0
 80071cc:	bf08      	it	eq
 80071ce:	462c      	moveq	r4, r5
 80071d0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80071d4:	47a0      	blx	r4
 80071d6:	1c43      	adds	r3, r0, #1
 80071d8:	d00c      	beq.n	80071f4 <_wcrtomb_r+0x3c>
 80071da:	b005      	add	sp, #20
 80071dc:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80071de:	4a09      	ldr	r2, [pc, #36]	; (8007204 <_wcrtomb_r+0x4c>)
 80071e0:	2c00      	cmp	r4, #0
 80071e2:	bf08      	it	eq
 80071e4:	4614      	moveq	r4, r2
 80071e6:	460a      	mov	r2, r1
 80071e8:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80071ec:	a901      	add	r1, sp, #4
 80071ee:	47a0      	blx	r4
 80071f0:	1c43      	adds	r3, r0, #1
 80071f2:	d1f2      	bne.n	80071da <_wcrtomb_r+0x22>
 80071f4:	2200      	movs	r2, #0
 80071f6:	238a      	movs	r3, #138	; 0x8a
 80071f8:	603a      	str	r2, [r7, #0]
 80071fa:	6033      	str	r3, [r6, #0]
 80071fc:	b005      	add	sp, #20
 80071fe:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8007200:	20000018 	.word	0x20000018
 8007204:	2000085c 	.word	0x2000085c

08007208 <__ascii_wctomb>:
 8007208:	b121      	cbz	r1, 8007214 <__ascii_wctomb+0xc>
 800720a:	2aff      	cmp	r2, #255	; 0xff
 800720c:	d804      	bhi.n	8007218 <__ascii_wctomb+0x10>
 800720e:	700a      	strb	r2, [r1, #0]
 8007210:	2001      	movs	r0, #1
 8007212:	4770      	bx	lr
 8007214:	4608      	mov	r0, r1
 8007216:	4770      	bx	lr
 8007218:	238a      	movs	r3, #138	; 0x8a
 800721a:	6003      	str	r3, [r0, #0]
 800721c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007220:	4770      	bx	lr
 8007222:	bf00      	nop

08007224 <_init>:
 8007224:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007226:	bf00      	nop
 8007228:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800722a:	bc08      	pop	{r3}
 800722c:	469e      	mov	lr, r3
 800722e:	4770      	bx	lr

08007230 <_fini>:
 8007230:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007232:	bf00      	nop
 8007234:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8007236:	bc08      	pop	{r3}
 8007238:	469e      	mov	lr, r3
 800723a:	4770      	bx	lr
 800723c:	0000      	movs	r0, r0
	...
