
newlib-sqrt.elf:     file format elf32-littlearm


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
 80001e0:	080073ec 	.word	0x080073ec

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
 80001fc:	080073ec 	.word	0x080073ec

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
 8001108:	f640 20b8 	movw	r0, #2744	; 0xab8
 800110c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001110:	6801      	ldr	r1, [r0, #0]
 8001112:	3101      	adds	r1, #1
 8001114:	6001      	str	r1, [r0, #0]
 8001116:	4770      	bx	lr

08001118 <HAL_GetTick>:
 8001118:	f640 20b8 	movw	r0, #2744	; 0xab8
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
 80013e8:	f247 4220 	movw	r2, #29728	; 0x7420
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
 8001462:	f247 4218 	movw	r2, #29720	; 0x7418
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
 800148c:	f247 4218 	movw	r2, #29720	; 0x7418
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
 8001842:	f640 21bc 	movw	r1, #2748	; 0xabc
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
 800188c:	f640 20bc 	movw	r0, #2748	; 0xabc
 8001890:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001894:	f7ff fecd 	bl	8001632 <HAL_TIM_Base_Start_IT>
 8001898:	b006      	add	sp, #24
 800189a:	bdb0      	pop	{r4, r5, r7, pc}

0800189c <HAL_TIM_PeriodElapsedCallback>:
 800189c:	f7ff bc34 	b.w	8001108 <HAL_IncTick>

080018a0 <TIM6_DAC_IRQHandler>:
 80018a0:	f640 20bc 	movw	r0, #2748	; 0xabc
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
 80019d4:	f247 4350 	movw	r3, #29776	; 0x7450
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
 80019fc:	f247 4360 	movw	r3, #29792	; 0x7460
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

08001eb8 <benchmark>:
 8001eb8:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001eba:	af03      	add	r7, sp, #12
 8001ebc:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001ec0:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001ec4:	ed9f 0ae5 	vldr	s0, [pc, #916]	; 800225c <benchmark+0x3a4>
 8001ec8:	eeb0 2a00 	vmov.f32	s4, #0	; 0x40000000  2.0
 8001ecc:	f64f 7cff 	movw	ip, #65535	; 0xffff
 8001ed0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ed4:	f2c0 0c7f 	movt	ip, #127	; 0x7f
 8001ed8:	7800      	ldrb	r0, [r0, #0]
 8001eda:	eeb0 1a40 	vmov.f32	s2, s0
 8001ede:	2800      	cmp	r0, #0
 8001ee0:	bf18      	it	ne
 8001ee2:	eeb0 1a42 	vmovne.f32	s2, s4
 8001ee6:	ee11 4a10 	vmov	r4, s2
 8001eea:	f024 4000 	bic.w	r0, r4, #2147483648	; 0x80000000
 8001eee:	f1b0 4fff 	cmp.w	r0, #2139095040	; 0x7f800000
 8001ef2:	d217      	bcs.n	8001f24 <benchmark+0x6c>
 8001ef4:	2800      	cmp	r0, #0
 8001ef6:	d04a      	beq.n	8001f8e <benchmark+0xd6>
 8001ef8:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8001efc:	dd15      	ble.n	8001f2a <benchmark+0x72>
 8001efe:	2100      	movs	r1, #0
 8001f00:	0de3      	lsrs	r3, r4, #23
 8001f02:	ebb1 5fd0 	cmp.w	r1, r0, lsr #23
 8001f06:	d118      	bne.n	8001f3a <benchmark+0x82>
 8001f08:	0220      	lsls	r0, r4, #8
 8001f0a:	d413      	bmi.n	8001f34 <benchmark+0x7c>
 8001f0c:	2000      	movs	r0, #0
 8001f0e:	f44f 0500 	mov.w	r5, #8388608	; 0x800000
 8001f12:	4622      	mov	r2, r4
 8001f14:	0054      	lsls	r4, r2, #1
 8001f16:	ea15 0f42 	tst.w	r5, r2, lsl #1
 8001f1a:	f100 0001 	add.w	r0, r0, #1
 8001f1e:	4622      	mov	r2, r4
 8001f20:	d0f8      	beq.n	8001f14 <benchmark+0x5c>
 8001f22:	e008      	b.n	8001f36 <benchmark+0x7e>
 8001f24:	ee01 1a01 	vmla.f32	s2, s2, s2
 8001f28:	e031      	b.n	8001f8e <benchmark+0xd6>
 8001f2a:	ee31 1a41 	vsub.f32	s2, s2, s2
 8001f2e:	ee81 1a01 	vdiv.f32	s2, s2, s2
 8001f32:	e02c      	b.n	8001f8e <benchmark+0xd6>
 8001f34:	2000      	movs	r0, #0
 8001f36:	1c5a      	adds	r2, r3, #1
 8001f38:	1a13      	subs	r3, r2, r0
 8001f3a:	ea04 000c 	and.w	r0, r4, ip
 8001f3e:	f1a3 0e7f 	sub.w	lr, r3, #127	; 0x7f
 8001f42:	2300      	movs	r3, #0
 8001f44:	2400      	movs	r4, #0
 8001f46:	f440 0000 	orr.w	r0, r0, #8388608	; 0x800000
 8001f4a:	f00e 0201 	and.w	r2, lr, #1
 8001f4e:	4090      	lsls	r0, r2
 8001f50:	f04f 7280 	mov.w	r2, #16777216	; 0x1000000
 8001f54:	18a5      	adds	r5, r4, r2
 8001f56:	0040      	lsls	r0, r0, #1
 8001f58:	42a8      	cmp	r0, r5
 8001f5a:	bfa2      	ittt	ge
 8001f5c:	4413      	addge	r3, r2
 8001f5e:	1b40      	subge	r0, r0, r5
 8001f60:	18ac      	addge	r4, r5, r2
 8001f62:	0855      	lsrs	r5, r2, #1
 8001f64:	ebb1 0f52 	cmp.w	r1, r2, lsr #1
 8001f68:	462a      	mov	r2, r5
 8001f6a:	d1f3      	bne.n	8001f54 <benchmark+0x9c>
 8001f6c:	2800      	cmp	r0, #0
 8001f6e:	f240 0000 	movw	r0, #0
 8001f72:	f003 0101 	and.w	r1, r3, #1
 8001f76:	f6cf 7080 	movt	r0, #65408	; 0xff80
 8001f7a:	bf18      	it	ne
 8001f7c:	440b      	addne	r3, r1
 8001f7e:	ea00 508e 	and.w	r0, r0, lr, lsl #22
 8001f82:	eb00 0063 	add.w	r0, r0, r3, asr #1
 8001f86:	f100 507c 	add.w	r0, r0, #1056964608	; 0x3f000000
 8001f8a:	ee01 0a10 	vmov	s2, r0
 8001f8e:	f640 3e00 	movw	lr, #2816	; 0xb00
 8001f92:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8001f96:	eeb0 2a08 	vmov.f32	s4, #8	; 0x40400000  3.0
 8001f9a:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8001f9e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fa2:	ed8e 1a00 	vstr	s2, [lr]
 8001fa6:	eeb0 1a40 	vmov.f32	s2, s0
 8001faa:	7800      	ldrb	r0, [r0, #0]
 8001fac:	2800      	cmp	r0, #0
 8001fae:	bf18      	it	ne
 8001fb0:	eeb0 1a42 	vmovne.f32	s2, s4
 8001fb4:	ee11 3a10 	vmov	r3, s2
 8001fb8:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8001fbc:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
 8001fc0:	d217      	bcs.n	8001ff2 <benchmark+0x13a>
 8001fc2:	2900      	cmp	r1, #0
 8001fc4:	d04b      	beq.n	800205e <benchmark+0x1a6>
 8001fc6:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8001fca:	dd15      	ble.n	8001ff8 <benchmark+0x140>
 8001fcc:	2200      	movs	r2, #0
 8001fce:	0dd8      	lsrs	r0, r3, #23
 8001fd0:	ebb2 5fd1 	cmp.w	r2, r1, lsr #23
 8001fd4:	d118      	bne.n	8002008 <benchmark+0x150>
 8001fd6:	0219      	lsls	r1, r3, #8
 8001fd8:	d413      	bmi.n	8002002 <benchmark+0x14a>
 8001fda:	2100      	movs	r1, #0
 8001fdc:	f44f 0400 	mov.w	r4, #8388608	; 0x800000
 8001fe0:	461d      	mov	r5, r3
 8001fe2:	006b      	lsls	r3, r5, #1
 8001fe4:	ea14 0f45 	tst.w	r4, r5, lsl #1
 8001fe8:	f101 0101 	add.w	r1, r1, #1
 8001fec:	461d      	mov	r5, r3
 8001fee:	d0f8      	beq.n	8001fe2 <benchmark+0x12a>
 8001ff0:	e008      	b.n	8002004 <benchmark+0x14c>
 8001ff2:	ee01 1a01 	vmla.f32	s2, s2, s2
 8001ff6:	e032      	b.n	800205e <benchmark+0x1a6>
 8001ff8:	ee31 1a41 	vsub.f32	s2, s2, s2
 8001ffc:	ee81 1a01 	vdiv.f32	s2, s2, s2
 8002000:	e02d      	b.n	800205e <benchmark+0x1a6>
 8002002:	2100      	movs	r1, #0
 8002004:	3001      	adds	r0, #1
 8002006:	1a40      	subs	r0, r0, r1
 8002008:	ea03 010c 	and.w	r1, r3, ip
 800200c:	f1a0 037f 	sub.w	r3, r0, #127	; 0x7f
 8002010:	f04f 7480 	mov.w	r4, #16777216	; 0x1000000
 8002014:	2500      	movs	r5, #0
 8002016:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
 800201a:	f003 0001 	and.w	r0, r3, #1
 800201e:	fa01 f000 	lsl.w	r0, r1, r0
 8002022:	2100      	movs	r1, #0
 8002024:	192e      	adds	r6, r5, r4
 8002026:	0040      	lsls	r0, r0, #1
 8002028:	42b0      	cmp	r0, r6
 800202a:	bfa2      	ittt	ge
 800202c:	4421      	addge	r1, r4
 800202e:	1b80      	subge	r0, r0, r6
 8002030:	1935      	addge	r5, r6, r4
 8002032:	0866      	lsrs	r6, r4, #1
 8002034:	ebb2 0f54 	cmp.w	r2, r4, lsr #1
 8002038:	4634      	mov	r4, r6
 800203a:	d1f3      	bne.n	8002024 <benchmark+0x16c>
 800203c:	2800      	cmp	r0, #0
 800203e:	f240 0000 	movw	r0, #0
 8002042:	f001 0201 	and.w	r2, r1, #1
 8002046:	f6cf 7080 	movt	r0, #65408	; 0xff80
 800204a:	bf18      	it	ne
 800204c:	4411      	addne	r1, r2
 800204e:	ea00 5083 	and.w	r0, r0, r3, lsl #22
 8002052:	eb00 0061 	add.w	r0, r0, r1, asr #1
 8002056:	f100 507c 	add.w	r0, r0, #1056964608	; 0x3f000000
 800205a:	ee01 0a10 	vmov	s2, r0
 800205e:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8002062:	ed8e 1a01 	vstr	s2, [lr, #4]
 8002066:	eeb1 2a04 	vmov.f32	s4, #20	; 0x40a00000  5.0
 800206a:	eeb0 1a40 	vmov.f32	s2, s0
 800206e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002072:	7800      	ldrb	r0, [r0, #0]
 8002074:	2800      	cmp	r0, #0
 8002076:	bf18      	it	ne
 8002078:	eeb0 1a42 	vmovne.f32	s2, s4
 800207c:	ee11 3a10 	vmov	r3, s2
 8002080:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8002084:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
 8002088:	d217      	bcs.n	80020ba <benchmark+0x202>
 800208a:	2900      	cmp	r1, #0
 800208c:	d04b      	beq.n	8002126 <benchmark+0x26e>
 800208e:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8002092:	dd15      	ble.n	80020c0 <benchmark+0x208>
 8002094:	2200      	movs	r2, #0
 8002096:	0dd8      	lsrs	r0, r3, #23
 8002098:	ebb2 5fd1 	cmp.w	r2, r1, lsr #23
 800209c:	d118      	bne.n	80020d0 <benchmark+0x218>
 800209e:	0219      	lsls	r1, r3, #8
 80020a0:	d413      	bmi.n	80020ca <benchmark+0x212>
 80020a2:	2100      	movs	r1, #0
 80020a4:	f44f 0400 	mov.w	r4, #8388608	; 0x800000
 80020a8:	461d      	mov	r5, r3
 80020aa:	006b      	lsls	r3, r5, #1
 80020ac:	ea14 0f45 	tst.w	r4, r5, lsl #1
 80020b0:	f101 0101 	add.w	r1, r1, #1
 80020b4:	461d      	mov	r5, r3
 80020b6:	d0f8      	beq.n	80020aa <benchmark+0x1f2>
 80020b8:	e008      	b.n	80020cc <benchmark+0x214>
 80020ba:	ee01 1a01 	vmla.f32	s2, s2, s2
 80020be:	e032      	b.n	8002126 <benchmark+0x26e>
 80020c0:	ee31 1a41 	vsub.f32	s2, s2, s2
 80020c4:	ee81 1a01 	vdiv.f32	s2, s2, s2
 80020c8:	e02d      	b.n	8002126 <benchmark+0x26e>
 80020ca:	2100      	movs	r1, #0
 80020cc:	3001      	adds	r0, #1
 80020ce:	1a40      	subs	r0, r0, r1
 80020d0:	ea03 010c 	and.w	r1, r3, ip
 80020d4:	f1a0 037f 	sub.w	r3, r0, #127	; 0x7f
 80020d8:	f04f 7480 	mov.w	r4, #16777216	; 0x1000000
 80020dc:	2500      	movs	r5, #0
 80020de:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
 80020e2:	f003 0001 	and.w	r0, r3, #1
 80020e6:	fa01 f000 	lsl.w	r0, r1, r0
 80020ea:	2100      	movs	r1, #0
 80020ec:	192e      	adds	r6, r5, r4
 80020ee:	0040      	lsls	r0, r0, #1
 80020f0:	42b0      	cmp	r0, r6
 80020f2:	bfa2      	ittt	ge
 80020f4:	4421      	addge	r1, r4
 80020f6:	1b80      	subge	r0, r0, r6
 80020f8:	1935      	addge	r5, r6, r4
 80020fa:	0866      	lsrs	r6, r4, #1
 80020fc:	ebb2 0f54 	cmp.w	r2, r4, lsr #1
 8002100:	4634      	mov	r4, r6
 8002102:	d1f3      	bne.n	80020ec <benchmark+0x234>
 8002104:	2800      	cmp	r0, #0
 8002106:	f240 0000 	movw	r0, #0
 800210a:	f001 0201 	and.w	r2, r1, #1
 800210e:	f6cf 7080 	movt	r0, #65408	; 0xff80
 8002112:	bf18      	it	ne
 8002114:	4411      	addne	r1, r2
 8002116:	ea00 5083 	and.w	r0, r0, r3, lsl #22
 800211a:	eb00 0061 	add.w	r0, r0, r1, asr #1
 800211e:	f100 507c 	add.w	r0, r0, #1056964608	; 0x3f000000
 8002122:	ee01 0a10 	vmov	s2, r0
 8002126:	f640 10f0 	movw	r0, #2544	; 0x9f0
 800212a:	ed8e 1a02 	vstr	s2, [lr, #8]
 800212e:	eeb1 2a08 	vmov.f32	s4, #24	; 0x40c00000  6.0
 8002132:	eeb0 1a40 	vmov.f32	s2, s0
 8002136:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800213a:	7800      	ldrb	r0, [r0, #0]
 800213c:	2800      	cmp	r0, #0
 800213e:	bf18      	it	ne
 8002140:	eeb0 1a42 	vmovne.f32	s2, s4
 8002144:	ee11 3a10 	vmov	r3, s2
 8002148:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 800214c:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
 8002150:	d217      	bcs.n	8002182 <benchmark+0x2ca>
 8002152:	2900      	cmp	r1, #0
 8002154:	d04b      	beq.n	80021ee <benchmark+0x336>
 8002156:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 800215a:	dd15      	ble.n	8002188 <benchmark+0x2d0>
 800215c:	2200      	movs	r2, #0
 800215e:	0dd8      	lsrs	r0, r3, #23
 8002160:	ebb2 5fd1 	cmp.w	r2, r1, lsr #23
 8002164:	d118      	bne.n	8002198 <benchmark+0x2e0>
 8002166:	0219      	lsls	r1, r3, #8
 8002168:	d413      	bmi.n	8002192 <benchmark+0x2da>
 800216a:	2100      	movs	r1, #0
 800216c:	f44f 0400 	mov.w	r4, #8388608	; 0x800000
 8002170:	461d      	mov	r5, r3
 8002172:	006b      	lsls	r3, r5, #1
 8002174:	ea14 0f45 	tst.w	r4, r5, lsl #1
 8002178:	f101 0101 	add.w	r1, r1, #1
 800217c:	461d      	mov	r5, r3
 800217e:	d0f8      	beq.n	8002172 <benchmark+0x2ba>
 8002180:	e008      	b.n	8002194 <benchmark+0x2dc>
 8002182:	ee01 1a01 	vmla.f32	s2, s2, s2
 8002186:	e032      	b.n	80021ee <benchmark+0x336>
 8002188:	ee31 1a41 	vsub.f32	s2, s2, s2
 800218c:	ee81 1a01 	vdiv.f32	s2, s2, s2
 8002190:	e02d      	b.n	80021ee <benchmark+0x336>
 8002192:	2100      	movs	r1, #0
 8002194:	3001      	adds	r0, #1
 8002196:	1a40      	subs	r0, r0, r1
 8002198:	ea03 010c 	and.w	r1, r3, ip
 800219c:	f1a0 037f 	sub.w	r3, r0, #127	; 0x7f
 80021a0:	f04f 7480 	mov.w	r4, #16777216	; 0x1000000
 80021a4:	2500      	movs	r5, #0
 80021a6:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
 80021aa:	f003 0001 	and.w	r0, r3, #1
 80021ae:	fa01 f000 	lsl.w	r0, r1, r0
 80021b2:	2100      	movs	r1, #0
 80021b4:	192e      	adds	r6, r5, r4
 80021b6:	0040      	lsls	r0, r0, #1
 80021b8:	42b0      	cmp	r0, r6
 80021ba:	bfa2      	ittt	ge
 80021bc:	4421      	addge	r1, r4
 80021be:	1b80      	subge	r0, r0, r6
 80021c0:	1935      	addge	r5, r6, r4
 80021c2:	0866      	lsrs	r6, r4, #1
 80021c4:	ebb2 0f54 	cmp.w	r2, r4, lsr #1
 80021c8:	4634      	mov	r4, r6
 80021ca:	d1f3      	bne.n	80021b4 <benchmark+0x2fc>
 80021cc:	2800      	cmp	r0, #0
 80021ce:	f240 0000 	movw	r0, #0
 80021d2:	f001 0201 	and.w	r2, r1, #1
 80021d6:	f6cf 7080 	movt	r0, #65408	; 0xff80
 80021da:	bf18      	it	ne
 80021dc:	4411      	addne	r1, r2
 80021de:	ea00 5083 	and.w	r0, r0, r3, lsl #22
 80021e2:	eb00 0061 	add.w	r0, r0, r1, asr #1
 80021e6:	f100 507c 	add.w	r0, r0, #1056964608	; 0x3f000000
 80021ea:	ee01 0a10 	vmov	s2, r0
 80021ee:	f640 10f4 	movw	r0, #2548	; 0x9f4
 80021f2:	ed8e 1a03 	vstr	s2, [lr, #12]
 80021f6:	eeb1 2a0c 	vmov.f32	s4, #28	; 0x40e00000  7.0
 80021fa:	eeb0 1a40 	vmov.f32	s2, s0
 80021fe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002202:	7800      	ldrb	r0, [r0, #0]
 8002204:	2800      	cmp	r0, #0
 8002206:	bf18      	it	ne
 8002208:	eeb0 1a42 	vmovne.f32	s2, s4
 800220c:	ee11 3a10 	vmov	r3, s2
 8002210:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8002214:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
 8002218:	d217      	bcs.n	800224a <benchmark+0x392>
 800221a:	2900      	cmp	r1, #0
 800221c:	d04e      	beq.n	80022bc <benchmark+0x404>
 800221e:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 8002222:	dd15      	ble.n	8002250 <benchmark+0x398>
 8002224:	2200      	movs	r2, #0
 8002226:	0dd8      	lsrs	r0, r3, #23
 8002228:	ebb2 5fd1 	cmp.w	r2, r1, lsr #23
 800222c:	d11b      	bne.n	8002266 <benchmark+0x3ae>
 800222e:	0219      	lsls	r1, r3, #8
 8002230:	d416      	bmi.n	8002260 <benchmark+0x3a8>
 8002232:	2100      	movs	r1, #0
 8002234:	f44f 0400 	mov.w	r4, #8388608	; 0x800000
 8002238:	461d      	mov	r5, r3
 800223a:	006b      	lsls	r3, r5, #1
 800223c:	ea14 0f45 	tst.w	r4, r5, lsl #1
 8002240:	f101 0101 	add.w	r1, r1, #1
 8002244:	461d      	mov	r5, r3
 8002246:	d0f8      	beq.n	800223a <benchmark+0x382>
 8002248:	e00b      	b.n	8002262 <benchmark+0x3aa>
 800224a:	ee01 1a01 	vmla.f32	s2, s2, s2
 800224e:	e035      	b.n	80022bc <benchmark+0x404>
 8002250:	ee31 1a41 	vsub.f32	s2, s2, s2
 8002254:	ee81 1a01 	vdiv.f32	s2, s2, s2
 8002258:	e030      	b.n	80022bc <benchmark+0x404>
 800225a:	bf00      	nop
 800225c:	00000000 	.word	0x00000000
 8002260:	2100      	movs	r1, #0
 8002262:	3001      	adds	r0, #1
 8002264:	1a40      	subs	r0, r0, r1
 8002266:	ea03 010c 	and.w	r1, r3, ip
 800226a:	f1a0 037f 	sub.w	r3, r0, #127	; 0x7f
 800226e:	f04f 7480 	mov.w	r4, #16777216	; 0x1000000
 8002272:	2500      	movs	r5, #0
 8002274:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
 8002278:	f003 0001 	and.w	r0, r3, #1
 800227c:	fa01 f000 	lsl.w	r0, r1, r0
 8002280:	2100      	movs	r1, #0
 8002282:	192e      	adds	r6, r5, r4
 8002284:	0040      	lsls	r0, r0, #1
 8002286:	42b0      	cmp	r0, r6
 8002288:	bfa2      	ittt	ge
 800228a:	4421      	addge	r1, r4
 800228c:	1b80      	subge	r0, r0, r6
 800228e:	1935      	addge	r5, r6, r4
 8002290:	0866      	lsrs	r6, r4, #1
 8002292:	ebb2 0f54 	cmp.w	r2, r4, lsr #1
 8002296:	4634      	mov	r4, r6
 8002298:	d1f3      	bne.n	8002282 <benchmark+0x3ca>
 800229a:	2800      	cmp	r0, #0
 800229c:	f240 0000 	movw	r0, #0
 80022a0:	f001 0201 	and.w	r2, r1, #1
 80022a4:	f6cf 7080 	movt	r0, #65408	; 0xff80
 80022a8:	bf18      	it	ne
 80022aa:	4411      	addne	r1, r2
 80022ac:	ea00 5083 	and.w	r0, r0, r3, lsl #22
 80022b0:	eb00 0061 	add.w	r0, r0, r1, asr #1
 80022b4:	f100 507c 	add.w	r0, r0, #1056964608	; 0x3f000000
 80022b8:	ee01 0a10 	vmov	s2, r0
 80022bc:	f640 10f8 	movw	r0, #2552	; 0x9f8
 80022c0:	ed8e 1a04 	vstr	s2, [lr, #16]
 80022c4:	eeb2 1a00 	vmov.f32	s2, #32	; 0x41000000  8.0
 80022c8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022cc:	7800      	ldrb	r0, [r0, #0]
 80022ce:	2800      	cmp	r0, #0
 80022d0:	bf18      	it	ne
 80022d2:	eeb0 0a41 	vmovne.f32	s0, s2
 80022d6:	ee10 3a10 	vmov	r3, s0
 80022da:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 80022de:	f1b1 4fff 	cmp.w	r1, #2139095040	; 0x7f800000
 80022e2:	d217      	bcs.n	8002314 <benchmark+0x45c>
 80022e4:	2900      	cmp	r1, #0
 80022e6:	d049      	beq.n	800237c <benchmark+0x4c4>
 80022e8:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
 80022ec:	dd15      	ble.n	800231a <benchmark+0x462>
 80022ee:	2200      	movs	r2, #0
 80022f0:	0dd8      	lsrs	r0, r3, #23
 80022f2:	ebb2 5fd1 	cmp.w	r2, r1, lsr #23
 80022f6:	d118      	bne.n	800232a <benchmark+0x472>
 80022f8:	0219      	lsls	r1, r3, #8
 80022fa:	d413      	bmi.n	8002324 <benchmark+0x46c>
 80022fc:	2100      	movs	r1, #0
 80022fe:	f44f 0400 	mov.w	r4, #8388608	; 0x800000
 8002302:	461d      	mov	r5, r3
 8002304:	006b      	lsls	r3, r5, #1
 8002306:	ea14 0f45 	tst.w	r4, r5, lsl #1
 800230a:	f101 0101 	add.w	r1, r1, #1
 800230e:	461d      	mov	r5, r3
 8002310:	d0f8      	beq.n	8002304 <benchmark+0x44c>
 8002312:	e008      	b.n	8002326 <benchmark+0x46e>
 8002314:	ee00 0a00 	vmla.f32	s0, s0, s0
 8002318:	e030      	b.n	800237c <benchmark+0x4c4>
 800231a:	ee30 0a40 	vsub.f32	s0, s0, s0
 800231e:	ee80 0a00 	vdiv.f32	s0, s0, s0
 8002322:	e02b      	b.n	800237c <benchmark+0x4c4>
 8002324:	2100      	movs	r1, #0
 8002326:	3001      	adds	r0, #1
 8002328:	1a40      	subs	r0, r0, r1
 800232a:	ea03 010c 	and.w	r1, r3, ip
 800232e:	387f      	subs	r0, #127	; 0x7f
 8002330:	f04f 7480 	mov.w	r4, #16777216	; 0x1000000
 8002334:	2500      	movs	r5, #0
 8002336:	f441 0100 	orr.w	r1, r1, #8388608	; 0x800000
 800233a:	f000 0301 	and.w	r3, r0, #1
 800233e:	fa01 f303 	lsl.w	r3, r1, r3
 8002342:	2100      	movs	r1, #0
 8002344:	192e      	adds	r6, r5, r4
 8002346:	005b      	lsls	r3, r3, #1
 8002348:	42b3      	cmp	r3, r6
 800234a:	bfa2      	ittt	ge
 800234c:	4421      	addge	r1, r4
 800234e:	1b9b      	subge	r3, r3, r6
 8002350:	1935      	addge	r5, r6, r4
 8002352:	0866      	lsrs	r6, r4, #1
 8002354:	ebb2 0f54 	cmp.w	r2, r4, lsr #1
 8002358:	4634      	mov	r4, r6
 800235a:	d1f3      	bne.n	8002344 <benchmark+0x48c>
 800235c:	f001 0201 	and.w	r2, r1, #1
 8002360:	2b00      	cmp	r3, #0
 8002362:	bf18      	it	ne
 8002364:	4411      	addne	r1, r2
 8002366:	2200      	movs	r2, #0
 8002368:	f6cf 7280 	movt	r2, #65408	; 0xff80
 800236c:	ea02 5080 	and.w	r0, r2, r0, lsl #22
 8002370:	eb00 0061 	add.w	r0, r0, r1, asr #1
 8002374:	f100 507c 	add.w	r0, r0, #1056964608	; 0x3f000000
 8002378:	ee00 0a10 	vmov	s0, r0
 800237c:	ed8e 0a05 	vstr	s0, [lr, #20]
 8002380:	2000      	movs	r0, #0
 8002382:	f85d bb04 	ldr.w	fp, [sp], #4
 8002386:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002388 <initialise_benchmark>:
 8002388:	f640 10e4 	movw	r0, #2532	; 0x9e4
 800238c:	2101      	movs	r1, #1
 800238e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002392:	7001      	strb	r1, [r0, #0]
 8002394:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8002398:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800239c:	7001      	strb	r1, [r0, #0]
 800239e:	f640 10ec 	movw	r0, #2540	; 0x9ec
 80023a2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023a6:	7001      	strb	r1, [r0, #0]
 80023a8:	f640 10f0 	movw	r0, #2544	; 0x9f0
 80023ac:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023b0:	7001      	strb	r1, [r0, #0]
 80023b2:	f640 10f4 	movw	r0, #2548	; 0x9f4
 80023b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023ba:	7001      	strb	r1, [r0, #0]
 80023bc:	f640 10f8 	movw	r0, #2552	; 0x9f8
 80023c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023c4:	7001      	strb	r1, [r0, #0]
 80023c6:	4770      	bx	lr

080023c8 <verify_benchmark>:
 80023c8:	f640 3000 	movw	r0, #2816	; 0xb00
 80023cc:	ed9f 0a1d 	vldr	s0, [pc, #116]	; 8002444 <verify_benchmark+0x7c>
 80023d0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023d4:	ed90 1a00 	vldr	s2, [r0]
 80023d8:	eeb4 1ac0 	vcmpe.f32	s2, s0
 80023dc:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80023e0:	d12e      	bne.n	8002440 <verify_benchmark+0x78>
 80023e2:	ed9f 0a19 	vldr	s0, [pc, #100]	; 8002448 <verify_benchmark+0x80>
 80023e6:	ed90 1a01 	vldr	s2, [r0, #4]
 80023ea:	eeb4 1ac0 	vcmpe.f32	s2, s0
 80023ee:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 80023f2:	d125      	bne.n	8002440 <verify_benchmark+0x78>
 80023f4:	ed9f 0a15 	vldr	s0, [pc, #84]	; 800244c <verify_benchmark+0x84>
 80023f8:	ed90 1a02 	vldr	s2, [r0, #8]
 80023fc:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8002400:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002404:	d11c      	bne.n	8002440 <verify_benchmark+0x78>
 8002406:	ed9f 0a12 	vldr	s0, [pc, #72]	; 8002450 <verify_benchmark+0x88>
 800240a:	ed90 1a03 	vldr	s2, [r0, #12]
 800240e:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8002412:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002416:	d113      	bne.n	8002440 <verify_benchmark+0x78>
 8002418:	ed9f 0a0e 	vldr	s0, [pc, #56]	; 8002454 <verify_benchmark+0x8c>
 800241c:	ed90 1a04 	vldr	s2, [r0, #16]
 8002420:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8002424:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 8002428:	d10a      	bne.n	8002440 <verify_benchmark+0x78>
 800242a:	ed9f 0a0b 	vldr	s0, [pc, #44]	; 8002458 <verify_benchmark+0x90>
 800242e:	ed90 1a05 	vldr	s2, [r0, #20]
 8002432:	eeb4 1ac0 	vcmpe.f32	s2, s0
 8002436:	eef1 fa10 	vmrs	APSR_nzcv, fpscr
 800243a:	bf04      	itt	eq
 800243c:	2001      	moveq	r0, #1
 800243e:	4770      	bxeq	lr
 8002440:	2000      	movs	r0, #0
 8002442:	4770      	bx	lr
 8002444:	3fb504f3 	.word	0x3fb504f3
 8002448:	3fddb3d7 	.word	0x3fddb3d7
 800244c:	400f1bbd 	.word	0x400f1bbd
 8002450:	401cc471 	.word	0x401cc471
 8002454:	402953fd 	.word	0x402953fd
 8002458:	403504f3 	.word	0x403504f3

0800245c <__io_putchar>:
 800245c:	b580      	push	{r7, lr}
 800245e:	466f      	mov	r7, sp
 8002460:	b082      	sub	sp, #8
 8002462:	9001      	str	r0, [sp, #4]
 8002464:	f640 10fc 	movw	r0, #2556	; 0x9fc
 8002468:	a901      	add	r1, sp, #4
 800246a:	2201      	movs	r2, #1
 800246c:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8002470:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002474:	f7ff fc31 	bl	8001cda <HAL_UART_Transmit>
 8002478:	9801      	ldr	r0, [sp, #4]
 800247a:	b002      	add	sp, #8
 800247c:	bd80      	pop	{r7, pc}

0800247e <main>:
 800247e:	b5b0      	push	{r4, r5, r7, lr}
 8002480:	af02      	add	r7, sp, #8
 8002482:	f640 11fc 	movw	r1, #2556	; 0x9fc
 8002486:	f643 0000 	movw	r0, #14336	; 0x3800
 800248a:	220c      	movs	r2, #12
 800248c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002490:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8002494:	6008      	str	r0, [r1, #0]
 8002496:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 800249a:	6048      	str	r0, [r1, #4]
 800249c:	2000      	movs	r0, #0
 800249e:	e9c1 0002 	strd	r0, r0, [r1, #8]
 80024a2:	6108      	str	r0, [r1, #16]
 80024a4:	6248      	str	r0, [r1, #36]	; 0x24
 80024a6:	e9c1 0007 	strd	r0, r0, [r1, #28]
 80024aa:	e9c1 2005 	strd	r2, r0, [r1, #20]
 80024ae:	2000      	movs	r0, #0
 80024b0:	f7ff fca8 	bl	8001e04 <BSP_COM_Init>
 80024b4:	f7ff ff68 	bl	8002388 <initialise_benchmark>
 80024b8:	f247 4070 	movw	r0, #29808	; 0x7470
 80024bc:	f6c0 0000 	movt	r0, #2048	; 0x800
 80024c0:	f000 f948 	bl	8002754 <printf>
 80024c4:	f247 501e 	movw	r0, #29982	; 0x751e
 80024c8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80024cc:	f000 f9a4 	bl	8002818 <puts>
 80024d0:	f7fe fe0a 	bl	80010e8 <HAL_Init>
 80024d4:	f7fe fe20 	bl	8001118 <HAL_GetTick>
 80024d8:	4604      	mov	r4, r0
 80024da:	f7ff fced 	bl	8001eb8 <benchmark>
 80024de:	4605      	mov	r5, r0
 80024e0:	f7fe fe1a 	bl	8001118 <HAL_GetTick>
 80024e4:	1b04      	subs	r4, r0, r4
 80024e6:	4628      	mov	r0, r5
 80024e8:	f7ff ff6e 	bl	80023c8 <verify_benchmark>
 80024ec:	1c41      	adds	r1, r0, #1
 80024ee:	d006      	beq.n	80024fe <main+0x80>
 80024f0:	2801      	cmp	r0, #1
 80024f2:	d109      	bne.n	8002508 <main+0x8a>
 80024f4:	f247 408a 	movw	r0, #29834	; 0x748a
 80024f8:	f6c0 0000 	movt	r0, #2048	; 0x800
 80024fc:	e008      	b.n	8002510 <main+0x92>
 80024fe:	f247 40ae 	movw	r0, #29870	; 0x74ae
 8002502:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002506:	e003      	b.n	8002510 <main+0x92>
 8002508:	f247 40e3 	movw	r0, #29923	; 0x74e3
 800250c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002510:	4621      	mov	r1, r4
 8002512:	f000 f91f 	bl	8002754 <printf>
 8002516:	2000      	movs	r0, #0
 8002518:	bdb0      	pop	{r4, r5, r7, pc}

0800251a <SysTick_Handler>:
 800251a:	b580      	push	{r7, lr}
 800251c:	466f      	mov	r7, sp
 800251e:	f7fe fdf3 	bl	8001108 <HAL_IncTick>
 8002522:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8002526:	f7fe be4d 	b.w	80011c4 <HAL_SYSTICK_IRQHandler>

0800252a <_read>:
 800252a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800252c:	af03      	add	r7, sp, #12
 800252e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002532:	4614      	mov	r4, r2
 8002534:	460d      	mov	r5, r1
 8002536:	2c01      	cmp	r4, #1
 8002538:	db06      	blt.n	8002548 <_read+0x1e>
 800253a:	4626      	mov	r6, r4
 800253c:	f3af 8000 	nop.w
 8002540:	f805 0b01 	strb.w	r0, [r5], #1
 8002544:	3e01      	subs	r6, #1
 8002546:	d1f9      	bne.n	800253c <_read+0x12>
 8002548:	4620      	mov	r0, r4
 800254a:	f85d bb04 	ldr.w	fp, [sp], #4
 800254e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002550 <_write>:
 8002550:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002552:	af03      	add	r7, sp, #12
 8002554:	f84d bd04 	str.w	fp, [sp, #-4]!
 8002558:	4614      	mov	r4, r2
 800255a:	460d      	mov	r5, r1
 800255c:	2c01      	cmp	r4, #1
 800255e:	db06      	blt.n	800256e <_write+0x1e>
 8002560:	4626      	mov	r6, r4
 8002562:	f815 0b01 	ldrb.w	r0, [r5], #1
 8002566:	f7ff ff79 	bl	800245c <__io_putchar>
 800256a:	3e01      	subs	r6, #1
 800256c:	d1f9      	bne.n	8002562 <_write+0x12>
 800256e:	4620      	mov	r0, r4
 8002570:	f85d bb04 	ldr.w	fp, [sp], #4
 8002574:	bdf0      	pop	{r4, r5, r6, r7, pc}

08002576 <_sbrk>:
 8002576:	f640 2280 	movw	r2, #2688	; 0xa80
 800257a:	4601      	mov	r1, r0
 800257c:	466b      	mov	r3, sp
 800257e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002582:	6810      	ldr	r0, [r2, #0]
 8002584:	2800      	cmp	r0, #0
 8002586:	bf02      	ittt	eq
 8002588:	f640 3040 	movweq	r0, #2880	; 0xb40
 800258c:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8002590:	6010      	streq	r0, [r2, #0]
 8002592:	4401      	add	r1, r0
 8002594:	4299      	cmp	r1, r3
 8002596:	bf9c      	itt	ls
 8002598:	6011      	strls	r1, [r2, #0]
 800259a:	4770      	bxls	lr
 800259c:	b580      	push	{r7, lr}
 800259e:	466f      	mov	r7, sp
 80025a0:	f000 f864 	bl	800266c <__errno>
 80025a4:	210c      	movs	r1, #12
 80025a6:	6001      	str	r1, [r0, #0]
 80025a8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80025ac:	bd80      	pop	{r7, pc}

080025ae <_close>:
 80025ae:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80025b2:	4770      	bx	lr

080025b4 <_fstat>:
 80025b4:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 80025b8:	6048      	str	r0, [r1, #4]
 80025ba:	2000      	movs	r0, #0
 80025bc:	4770      	bx	lr

080025be <_isatty>:
 80025be:	2001      	movs	r0, #1
 80025c0:	4770      	bx	lr

080025c2 <_lseek>:
 80025c2:	2000      	movs	r0, #0
 80025c4:	4770      	bx	lr

080025c6 <SystemInit>:
 80025c6:	f64e 5088 	movw	r0, #60808	; 0xed88
 80025ca:	f04f 0c00 	mov.w	ip, #0
 80025ce:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80025d2:	6801      	ldr	r1, [r0, #0]
 80025d4:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80025d8:	6001      	str	r1, [r0, #0]
 80025da:	f241 0100 	movw	r1, #4096	; 0x1000
 80025de:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80025e2:	680a      	ldr	r2, [r1, #0]
 80025e4:	f042 0201 	orr.w	r2, r2, #1
 80025e8:	600a      	str	r2, [r1, #0]
 80025ea:	f8c1 c008 	str.w	ip, [r1, #8]
 80025ee:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80025f2:	680b      	ldr	r3, [r1, #0]
 80025f4:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80025f8:	401a      	ands	r2, r3
 80025fa:	600a      	str	r2, [r1, #0]
 80025fc:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002600:	60ca      	str	r2, [r1, #12]
 8002602:	680a      	ldr	r2, [r1, #0]
 8002604:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 8002608:	600a      	str	r2, [r1, #0]
 800260a:	f8c1 c018 	str.w	ip, [r1, #24]
 800260e:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 8002612:	f840 1c80 	str.w	r1, [r0, #-128]
 8002616:	4770      	bx	lr

08002618 <Reset_Handler>:
 8002618:	f8df d034 	ldr.w	sp, [pc, #52]	; 8002650 <LoopForever+0x2>
 800261c:	2100      	movs	r1, #0
 800261e:	e003      	b.n	8002628 <LoopCopyDataInit>

08002620 <CopyDataInit>:
 8002620:	4b0c      	ldr	r3, [pc, #48]	; (8002654 <LoopForever+0x6>)
 8002622:	585b      	ldr	r3, [r3, r1]
 8002624:	5043      	str	r3, [r0, r1]
 8002626:	3104      	adds	r1, #4

08002628 <LoopCopyDataInit>:
 8002628:	480b      	ldr	r0, [pc, #44]	; (8002658 <LoopForever+0xa>)
 800262a:	4b0c      	ldr	r3, [pc, #48]	; (800265c <LoopForever+0xe>)
 800262c:	1842      	adds	r2, r0, r1
 800262e:	429a      	cmp	r2, r3
 8002630:	d3f6      	bcc.n	8002620 <CopyDataInit>
 8002632:	4a0b      	ldr	r2, [pc, #44]	; (8002660 <LoopForever+0x12>)
 8002634:	e002      	b.n	800263c <LoopFillZerobss>

08002636 <FillZerobss>:
 8002636:	2300      	movs	r3, #0
 8002638:	f842 3b04 	str.w	r3, [r2], #4

0800263c <LoopFillZerobss>:
 800263c:	4b09      	ldr	r3, [pc, #36]	; (8002664 <LoopForever+0x16>)
 800263e:	429a      	cmp	r2, r3
 8002640:	d3f9      	bcc.n	8002636 <FillZerobss>
 8002642:	f7ff ffc0 	bl	80025c6 <SystemInit>
 8002646:	f000 f817 	bl	8002678 <__libc_init_array>
 800264a:	f7ff ff18 	bl	800247e <main>

0800264e <LoopForever>:
 800264e:	e7fe      	b.n	800264e <LoopForever>
 8002650:	20018000 	.word	0x20018000
 8002654:	080077c8 	.word	0x080077c8
 8002658:	20000000 	.word	0x20000000
 800265c:	200009c8 	.word	0x200009c8
 8002660:	200009c8 	.word	0x200009c8
 8002664:	20000b40 	.word	0x20000b40

08002668 <ADC1_2_IRQHandler>:
 8002668:	e7fe      	b.n	8002668 <ADC1_2_IRQHandler>
	...

0800266c <__errno>:
 800266c:	4b01      	ldr	r3, [pc, #4]	; (8002674 <__errno+0x8>)
 800266e:	6818      	ldr	r0, [r3, #0]
 8002670:	4770      	bx	lr
 8002672:	bf00      	nop
 8002674:	20000018 	.word	0x20000018

08002678 <__libc_init_array>:
 8002678:	b570      	push	{r4, r5, r6, lr}
 800267a:	4e0d      	ldr	r6, [pc, #52]	; (80026b0 <__libc_init_array+0x38>)
 800267c:	4d0d      	ldr	r5, [pc, #52]	; (80026b4 <__libc_init_array+0x3c>)
 800267e:	1b76      	subs	r6, r6, r5
 8002680:	10b6      	asrs	r6, r6, #2
 8002682:	d006      	beq.n	8002692 <__libc_init_array+0x1a>
 8002684:	2400      	movs	r4, #0
 8002686:	3401      	adds	r4, #1
 8002688:	f855 3b04 	ldr.w	r3, [r5], #4
 800268c:	4798      	blx	r3
 800268e:	42a6      	cmp	r6, r4
 8002690:	d1f9      	bne.n	8002686 <__libc_init_array+0xe>
 8002692:	4e09      	ldr	r6, [pc, #36]	; (80026b8 <__libc_init_array+0x40>)
 8002694:	4d09      	ldr	r5, [pc, #36]	; (80026bc <__libc_init_array+0x44>)
 8002696:	1b76      	subs	r6, r6, r5
 8002698:	f004 fea8 	bl	80073ec <_init>
 800269c:	10b6      	asrs	r6, r6, #2
 800269e:	d006      	beq.n	80026ae <__libc_init_array+0x36>
 80026a0:	2400      	movs	r4, #0
 80026a2:	3401      	adds	r4, #1
 80026a4:	f855 3b04 	ldr.w	r3, [r5], #4
 80026a8:	4798      	blx	r3
 80026aa:	42a6      	cmp	r6, r4
 80026ac:	d1f9      	bne.n	80026a2 <__libc_init_array+0x2a>
 80026ae:	bd70      	pop	{r4, r5, r6, pc}
 80026b0:	080077b8 	.word	0x080077b8
 80026b4:	080077b8 	.word	0x080077b8
 80026b8:	080077c0 	.word	0x080077c0
 80026bc:	080077b8 	.word	0x080077b8

080026c0 <memset>:
 80026c0:	b4f0      	push	{r4, r5, r6, r7}
 80026c2:	0786      	lsls	r6, r0, #30
 80026c4:	d043      	beq.n	800274e <memset+0x8e>
 80026c6:	1e54      	subs	r4, r2, #1
 80026c8:	2a00      	cmp	r2, #0
 80026ca:	d03e      	beq.n	800274a <memset+0x8a>
 80026cc:	b2ca      	uxtb	r2, r1
 80026ce:	4603      	mov	r3, r0
 80026d0:	e002      	b.n	80026d8 <memset+0x18>
 80026d2:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80026d6:	d338      	bcc.n	800274a <memset+0x8a>
 80026d8:	f803 2b01 	strb.w	r2, [r3], #1
 80026dc:	079d      	lsls	r5, r3, #30
 80026de:	d1f8      	bne.n	80026d2 <memset+0x12>
 80026e0:	2c03      	cmp	r4, #3
 80026e2:	d92b      	bls.n	800273c <memset+0x7c>
 80026e4:	b2cd      	uxtb	r5, r1
 80026e6:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80026ea:	2c0f      	cmp	r4, #15
 80026ec:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80026f0:	d916      	bls.n	8002720 <memset+0x60>
 80026f2:	f1a4 0710 	sub.w	r7, r4, #16
 80026f6:	093f      	lsrs	r7, r7, #4
 80026f8:	f103 0620 	add.w	r6, r3, #32
 80026fc:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8002700:	f103 0210 	add.w	r2, r3, #16
 8002704:	e942 5504 	strd	r5, r5, [r2, #-16]
 8002708:	e942 5502 	strd	r5, r5, [r2, #-8]
 800270c:	3210      	adds	r2, #16
 800270e:	42b2      	cmp	r2, r6
 8002710:	d1f8      	bne.n	8002704 <memset+0x44>
 8002712:	f004 040f 	and.w	r4, r4, #15
 8002716:	3701      	adds	r7, #1
 8002718:	2c03      	cmp	r4, #3
 800271a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 800271e:	d90d      	bls.n	800273c <memset+0x7c>
 8002720:	461e      	mov	r6, r3
 8002722:	4622      	mov	r2, r4
 8002724:	3a04      	subs	r2, #4
 8002726:	2a03      	cmp	r2, #3
 8002728:	f846 5b04 	str.w	r5, [r6], #4
 800272c:	d8fa      	bhi.n	8002724 <memset+0x64>
 800272e:	1f22      	subs	r2, r4, #4
 8002730:	f022 0203 	bic.w	r2, r2, #3
 8002734:	3204      	adds	r2, #4
 8002736:	4413      	add	r3, r2
 8002738:	f004 0403 	and.w	r4, r4, #3
 800273c:	b12c      	cbz	r4, 800274a <memset+0x8a>
 800273e:	b2c9      	uxtb	r1, r1
 8002740:	441c      	add	r4, r3
 8002742:	f803 1b01 	strb.w	r1, [r3], #1
 8002746:	429c      	cmp	r4, r3
 8002748:	d1fb      	bne.n	8002742 <memset+0x82>
 800274a:	bcf0      	pop	{r4, r5, r6, r7}
 800274c:	4770      	bx	lr
 800274e:	4614      	mov	r4, r2
 8002750:	4603      	mov	r3, r0
 8002752:	e7c5      	b.n	80026e0 <memset+0x20>

08002754 <printf>:
 8002754:	b40f      	push	{r0, r1, r2, r3}
 8002756:	b500      	push	{lr}
 8002758:	4907      	ldr	r1, [pc, #28]	; (8002778 <printf+0x24>)
 800275a:	b083      	sub	sp, #12
 800275c:	ab04      	add	r3, sp, #16
 800275e:	6808      	ldr	r0, [r1, #0]
 8002760:	f853 2b04 	ldr.w	r2, [r3], #4
 8002764:	6881      	ldr	r1, [r0, #8]
 8002766:	9301      	str	r3, [sp, #4]
 8002768:	f000 f85e 	bl	8002828 <_vfprintf_r>
 800276c:	b003      	add	sp, #12
 800276e:	f85d eb04 	ldr.w	lr, [sp], #4
 8002772:	b004      	add	sp, #16
 8002774:	4770      	bx	lr
 8002776:	bf00      	nop
 8002778:	20000018 	.word	0x20000018

0800277c <_puts_r>:
 800277c:	b570      	push	{r4, r5, r6, lr}
 800277e:	4605      	mov	r5, r0
 8002780:	b088      	sub	sp, #32
 8002782:	4608      	mov	r0, r1
 8002784:	460c      	mov	r4, r1
 8002786:	f7fd ff5b 	bl	8000640 <strlen>
 800278a:	4a22      	ldr	r2, [pc, #136]	; (8002814 <_puts_r+0x98>)
 800278c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800278e:	9404      	str	r4, [sp, #16]
 8002790:	2601      	movs	r6, #1
 8002792:	1c44      	adds	r4, r0, #1
 8002794:	a904      	add	r1, sp, #16
 8002796:	9206      	str	r2, [sp, #24]
 8002798:	2202      	movs	r2, #2
 800279a:	9403      	str	r4, [sp, #12]
 800279c:	9005      	str	r0, [sp, #20]
 800279e:	68ac      	ldr	r4, [r5, #8]
 80027a0:	9607      	str	r6, [sp, #28]
 80027a2:	e9cd 1201 	strd	r1, r2, [sp, #4]
 80027a6:	b31b      	cbz	r3, 80027f0 <_puts_r+0x74>
 80027a8:	6e61      	ldr	r1, [r4, #100]	; 0x64
 80027aa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80027ae:	07ce      	lsls	r6, r1, #31
 80027b0:	b29a      	uxth	r2, r3
 80027b2:	d401      	bmi.n	80027b8 <_puts_r+0x3c>
 80027b4:	0590      	lsls	r0, r2, #22
 80027b6:	d525      	bpl.n	8002804 <_puts_r+0x88>
 80027b8:	0491      	lsls	r1, r2, #18
 80027ba:	d406      	bmi.n	80027ca <_puts_r+0x4e>
 80027bc:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80027be:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80027c2:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 80027c6:	81a3      	strh	r3, [r4, #12]
 80027c8:	6662      	str	r2, [r4, #100]	; 0x64
 80027ca:	4628      	mov	r0, r5
 80027cc:	aa01      	add	r2, sp, #4
 80027ce:	4621      	mov	r1, r4
 80027d0:	f003 f85e 	bl	8005890 <__sfvwrite_r>
 80027d4:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80027d6:	2800      	cmp	r0, #0
 80027d8:	bf0c      	ite	eq
 80027da:	250a      	moveq	r5, #10
 80027dc:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80027e0:	07da      	lsls	r2, r3, #31
 80027e2:	d402      	bmi.n	80027ea <_puts_r+0x6e>
 80027e4:	89a3      	ldrh	r3, [r4, #12]
 80027e6:	059b      	lsls	r3, r3, #22
 80027e8:	d506      	bpl.n	80027f8 <_puts_r+0x7c>
 80027ea:	4628      	mov	r0, r5
 80027ec:	b008      	add	sp, #32
 80027ee:	bd70      	pop	{r4, r5, r6, pc}
 80027f0:	4628      	mov	r0, r5
 80027f2:	f002 feb7 	bl	8005564 <__sinit>
 80027f6:	e7d7      	b.n	80027a8 <_puts_r+0x2c>
 80027f8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80027fa:	f003 fa05 	bl	8005c08 <__retarget_lock_release_recursive>
 80027fe:	4628      	mov	r0, r5
 8002800:	b008      	add	sp, #32
 8002802:	bd70      	pop	{r4, r5, r6, pc}
 8002804:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8002806:	f003 f9fd 	bl	8005c04 <__retarget_lock_acquire_recursive>
 800280a:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800280e:	b29a      	uxth	r2, r3
 8002810:	e7d2      	b.n	80027b8 <_puts_r+0x3c>
 8002812:	bf00      	nop
 8002814:	08007524 	.word	0x08007524

08002818 <puts>:
 8002818:	4b02      	ldr	r3, [pc, #8]	; (8002824 <puts+0xc>)
 800281a:	4601      	mov	r1, r0
 800281c:	6818      	ldr	r0, [r3, #0]
 800281e:	f7ff bfad 	b.w	800277c <_puts_r>
 8002822:	bf00      	nop
 8002824:	20000018 	.word	0x20000018

08002828 <_vfprintf_r>:
 8002828:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800282c:	b0d7      	sub	sp, #348	; 0x15c
 800282e:	461c      	mov	r4, r3
 8002830:	4689      	mov	r9, r1
 8002832:	4617      	mov	r7, r2
 8002834:	4605      	mov	r5, r0
 8002836:	9003      	str	r0, [sp, #12]
 8002838:	f003 f9d2 	bl	8005be0 <_localeconv_r>
 800283c:	6803      	ldr	r3, [r0, #0]
 800283e:	9316      	str	r3, [sp, #88]	; 0x58
 8002840:	4618      	mov	r0, r3
 8002842:	f7fd fefd 	bl	8000640 <strlen>
 8002846:	9408      	str	r4, [sp, #32]
 8002848:	9015      	str	r0, [sp, #84]	; 0x54
 800284a:	b11d      	cbz	r5, 8002854 <_vfprintf_r+0x2c>
 800284c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 800284e:	2b00      	cmp	r3, #0
 8002850:	f000 8107 	beq.w	8002a62 <_vfprintf_r+0x23a>
 8002854:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002858:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 800285c:	07c8      	lsls	r0, r1, #31
 800285e:	b293      	uxth	r3, r2
 8002860:	d402      	bmi.n	8002868 <_vfprintf_r+0x40>
 8002862:	0599      	lsls	r1, r3, #22
 8002864:	f140 811f 	bpl.w	8002aa6 <_vfprintf_r+0x27e>
 8002868:	049e      	lsls	r6, r3, #18
 800286a:	d40a      	bmi.n	8002882 <_vfprintf_r+0x5a>
 800286c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8002870:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8002874:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8002878:	f8a9 300c 	strh.w	r3, [r9, #12]
 800287c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8002880:	b29b      	uxth	r3, r3
 8002882:	071d      	lsls	r5, r3, #28
 8002884:	f140 80b2 	bpl.w	80029ec <_vfprintf_r+0x1c4>
 8002888:	f8d9 2010 	ldr.w	r2, [r9, #16]
 800288c:	2a00      	cmp	r2, #0
 800288e:	f000 80ad 	beq.w	80029ec <_vfprintf_r+0x1c4>
 8002892:	f003 021a 	and.w	r2, r3, #26
 8002896:	2a0a      	cmp	r2, #10
 8002898:	f000 80c9 	beq.w	8002a2e <_vfprintf_r+0x206>
 800289c:	2300      	movs	r3, #0
 800289e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8002ab8 <_vfprintf_r+0x290>
 80028a2:	9310      	str	r3, [sp, #64]	; 0x40
 80028a4:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 80028a8:	9317      	str	r3, [sp, #92]	; 0x5c
 80028aa:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 80028ae:	931b      	str	r3, [sp, #108]	; 0x6c
 80028b0:	9318      	str	r3, [sp, #96]	; 0x60
 80028b2:	9305      	str	r3, [sp, #20]
 80028b4:	ab2d      	add	r3, sp, #180	; 0xb4
 80028b6:	932a      	str	r3, [sp, #168]	; 0xa8
 80028b8:	469b      	mov	fp, r3
 80028ba:	783b      	ldrb	r3, [r7, #0]
 80028bc:	f8cd 901c 	str.w	r9, [sp, #28]
 80028c0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80028c4:	2b00      	cmp	r3, #0
 80028c6:	f000 8259 	beq.w	8002d7c <_vfprintf_r+0x554>
 80028ca:	2b25      	cmp	r3, #37	; 0x25
 80028cc:	463c      	mov	r4, r7
 80028ce:	d102      	bne.n	80028d6 <_vfprintf_r+0xae>
 80028d0:	e01d      	b.n	800290e <_vfprintf_r+0xe6>
 80028d2:	2b25      	cmp	r3, #37	; 0x25
 80028d4:	d003      	beq.n	80028de <_vfprintf_r+0xb6>
 80028d6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 80028da:	2b00      	cmp	r3, #0
 80028dc:	d1f9      	bne.n	80028d2 <_vfprintf_r+0xaa>
 80028de:	1be5      	subs	r5, r4, r7
 80028e0:	b18d      	cbz	r5, 8002906 <_vfprintf_r+0xde>
 80028e2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 80028e6:	3301      	adds	r3, #1
 80028e8:	442a      	add	r2, r5
 80028ea:	2b07      	cmp	r3, #7
 80028ec:	f8cb 7000 	str.w	r7, [fp]
 80028f0:	f8cb 5004 	str.w	r5, [fp, #4]
 80028f4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 80028f8:	f300 80ca 	bgt.w	8002a90 <_vfprintf_r+0x268>
 80028fc:	f10b 0b08 	add.w	fp, fp, #8
 8002900:	9b05      	ldr	r3, [sp, #20]
 8002902:	442b      	add	r3, r5
 8002904:	9305      	str	r3, [sp, #20]
 8002906:	7823      	ldrb	r3, [r4, #0]
 8002908:	2b00      	cmp	r3, #0
 800290a:	f000 8237 	beq.w	8002d7c <_vfprintf_r+0x554>
 800290e:	2300      	movs	r3, #0
 8002910:	7866      	ldrb	r6, [r4, #1]
 8002912:	9306      	str	r3, [sp, #24]
 8002914:	4698      	mov	r8, r3
 8002916:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800291a:	f104 0a01 	add.w	sl, r4, #1
 800291e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8002922:	252b      	movs	r5, #43	; 0x2b
 8002924:	f10a 0a01 	add.w	sl, sl, #1
 8002928:	f1a6 0320 	sub.w	r3, r6, #32
 800292c:	2b5a      	cmp	r3, #90	; 0x5a
 800292e:	f200 842a 	bhi.w	8003186 <_vfprintf_r+0x95e>
 8002932:	e8df f013 	tbh	[pc, r3, lsl #1]
 8002936:	03aa      	.short	0x03aa
 8002938:	04280428 	.word	0x04280428
 800293c:	0428029c 	.word	0x0428029c
 8002940:	04280428 	.word	0x04280428
 8002944:	042802a7 	.word	0x042802a7
 8002948:	02c60428 	.word	0x02c60428
 800294c:	042802d2 	.word	0x042802d2
 8002950:	02dc02d7 	.word	0x02dc02d7
 8002954:	02f60428 	.word	0x02f60428
 8002958:	026d026d 	.word	0x026d026d
 800295c:	026d026d 	.word	0x026d026d
 8002960:	026d026d 	.word	0x026d026d
 8002964:	026d026d 	.word	0x026d026d
 8002968:	0428026d 	.word	0x0428026d
 800296c:	04280428 	.word	0x04280428
 8002970:	04280428 	.word	0x04280428
 8002974:	04280428 	.word	0x04280428
 8002978:	042802fb 	.word	0x042802fb
 800297c:	03f3033c 	.word	0x03f3033c
 8002980:	02fb02fb 	.word	0x02fb02fb
 8002984:	042802fb 	.word	0x042802fb
 8002988:	04280428 	.word	0x04280428
 800298c:	03ee0428 	.word	0x03ee0428
 8002990:	04280428 	.word	0x04280428
 8002994:	0428009a 	.word	0x0428009a
 8002998:	04280428 	.word	0x04280428
 800299c:	04280350 	.word	0x04280350
 80029a0:	04280379 	.word	0x04280379
 80029a4:	03900428 	.word	0x03900428
 80029a8:	04280428 	.word	0x04280428
 80029ac:	04280428 	.word	0x04280428
 80029b0:	04280428 	.word	0x04280428
 80029b4:	04280428 	.word	0x04280428
 80029b8:	042802fb 	.word	0x042802fb
 80029bc:	00c5033c 	.word	0x00c5033c
 80029c0:	02fb02fb 	.word	0x02fb02fb
 80029c4:	03d102fb 	.word	0x03d102fb
 80029c8:	007000c5 	.word	0x007000c5
 80029cc:	03b50428 	.word	0x03b50428
 80029d0:	03c20428 	.word	0x03c20428
 80029d4:	03de009c 	.word	0x03de009c
 80029d8:	04280070 	.word	0x04280070
 80029dc:	00720350 	.word	0x00720350
 80029e0:	0428022c 	.word	0x0428022c
 80029e4:	027c0428 	.word	0x027c0428
 80029e8:	00720428 	.word	0x00720428
 80029ec:	4649      	mov	r1, r9
 80029ee:	9803      	ldr	r0, [sp, #12]
 80029f0:	f001 fc9a 	bl	8004328 <__swsetup_r>
 80029f4:	b1a0      	cbz	r0, 8002a20 <_vfprintf_r+0x1f8>
 80029f6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 80029fa:	07d8      	lsls	r0, r3, #31
 80029fc:	d404      	bmi.n	8002a08 <_vfprintf_r+0x1e0>
 80029fe:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002a02:	0599      	lsls	r1, r3, #22
 8002a04:	f140 83b7 	bpl.w	8003176 <_vfprintf_r+0x94e>
 8002a08:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8002a0c:	9305      	str	r3, [sp, #20]
 8002a0e:	9805      	ldr	r0, [sp, #20]
 8002a10:	b057      	add	sp, #348	; 0x15c
 8002a12:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002a16:	f048 0820 	orr.w	r8, r8, #32
 8002a1a:	f89a 6000 	ldrb.w	r6, [sl]
 8002a1e:	e781      	b.n	8002924 <_vfprintf_r+0xfc>
 8002a20:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8002a24:	f003 021a 	and.w	r2, r3, #26
 8002a28:	2a0a      	cmp	r2, #10
 8002a2a:	f47f af37 	bne.w	800289c <_vfprintf_r+0x74>
 8002a2e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8002a32:	2a00      	cmp	r2, #0
 8002a34:	f6ff af32 	blt.w	800289c <_vfprintf_r+0x74>
 8002a38:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8002a3c:	07d2      	lsls	r2, r2, #31
 8002a3e:	d405      	bmi.n	8002a4c <_vfprintf_r+0x224>
 8002a40:	059b      	lsls	r3, r3, #22
 8002a42:	d403      	bmi.n	8002a4c <_vfprintf_r+0x224>
 8002a44:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002a48:	f003 f8de 	bl	8005c08 <__retarget_lock_release_recursive>
 8002a4c:	4623      	mov	r3, r4
 8002a4e:	463a      	mov	r2, r7
 8002a50:	4649      	mov	r1, r9
 8002a52:	9803      	ldr	r0, [sp, #12]
 8002a54:	f001 fc26 	bl	80042a4 <__sbprintf>
 8002a58:	9005      	str	r0, [sp, #20]
 8002a5a:	9805      	ldr	r0, [sp, #20]
 8002a5c:	b057      	add	sp, #348	; 0x15c
 8002a5e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8002a62:	9803      	ldr	r0, [sp, #12]
 8002a64:	f002 fd7e 	bl	8005564 <__sinit>
 8002a68:	e6f4      	b.n	8002854 <_vfprintf_r+0x2c>
 8002a6a:	f048 0810 	orr.w	r8, r8, #16
 8002a6e:	f018 0f20 	tst.w	r8, #32
 8002a72:	f000 836c 	beq.w	800314e <_vfprintf_r+0x926>
 8002a76:	9c08      	ldr	r4, [sp, #32]
 8002a78:	3407      	adds	r4, #7
 8002a7a:	f024 0307 	bic.w	r3, r4, #7
 8002a7e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002a82:	f103 0208 	add.w	r2, r3, #8
 8002a86:	9208      	str	r2, [sp, #32]
 8002a88:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002a8c:	2200      	movs	r2, #0
 8002a8e:	e18c      	b.n	8002daa <_vfprintf_r+0x582>
 8002a90:	aa2a      	add	r2, sp, #168	; 0xa8
 8002a92:	9907      	ldr	r1, [sp, #28]
 8002a94:	9803      	ldr	r0, [sp, #12]
 8002a96:	f004 f9f5 	bl	8006e84 <__sprint_r>
 8002a9a:	2800      	cmp	r0, #0
 8002a9c:	f041 8376 	bne.w	800418c <_vfprintf_r+0x1964>
 8002aa0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002aa4:	e72c      	b.n	8002900 <_vfprintf_r+0xd8>
 8002aa6:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8002aaa:	f003 f8ab 	bl	8005c04 <__retarget_lock_acquire_recursive>
 8002aae:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8002ab2:	b293      	uxth	r3, r2
 8002ab4:	e6d8      	b.n	8002868 <_vfprintf_r+0x40>
 8002ab6:	bf00      	nop
	...
 8002ac0:	4643      	mov	r3, r8
 8002ac2:	069f      	lsls	r7, r3, #26
 8002ac4:	f140 832f 	bpl.w	8003126 <_vfprintf_r+0x8fe>
 8002ac8:	9c08      	ldr	r4, [sp, #32]
 8002aca:	3407      	adds	r4, #7
 8002acc:	f024 0407 	bic.w	r4, r4, #7
 8002ad0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8002ad4:	f104 0208 	add.w	r2, r4, #8
 8002ad8:	9208      	str	r2, [sp, #32]
 8002ada:	4604      	mov	r4, r0
 8002adc:	460d      	mov	r5, r1
 8002ade:	2800      	cmp	r0, #0
 8002ae0:	f171 0200 	sbcs.w	r2, r1, #0
 8002ae4:	da05      	bge.n	8002af2 <_vfprintf_r+0x2ca>
 8002ae6:	222d      	movs	r2, #45	; 0x2d
 8002ae8:	4264      	negs	r4, r4
 8002aea:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8002aee:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8002af2:	aa56      	add	r2, sp, #344	; 0x158
 8002af4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002af8:	9204      	str	r2, [sp, #16]
 8002afa:	f000 84b2 	beq.w	8003462 <_vfprintf_r+0xc3a>
 8002afe:	2201      	movs	r2, #1
 8002b00:	ea54 0105 	orrs.w	r1, r4, r5
 8002b04:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8002b08:	f040 8159 	bne.w	8002dbe <_vfprintf_r+0x596>
 8002b0c:	f1b9 0f00 	cmp.w	r9, #0
 8002b10:	f040 8619 	bne.w	8003746 <_vfprintf_r+0xf1e>
 8002b14:	2a00      	cmp	r2, #0
 8002b16:	f040 8508 	bne.w	800352a <_vfprintf_r+0xd02>
 8002b1a:	f013 0301 	ands.w	r3, r3, #1
 8002b1e:	af56      	add	r7, sp, #344	; 0x158
 8002b20:	9309      	str	r3, [sp, #36]	; 0x24
 8002b22:	d002      	beq.n	8002b2a <_vfprintf_r+0x302>
 8002b24:	2330      	movs	r3, #48	; 0x30
 8002b26:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8002b2a:	2300      	movs	r3, #0
 8002b2c:	930a      	str	r3, [sp, #40]	; 0x28
 8002b2e:	930f      	str	r3, [sp, #60]	; 0x3c
 8002b30:	9314      	str	r3, [sp, #80]	; 0x50
 8002b32:	9311      	str	r3, [sp, #68]	; 0x44
 8002b34:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002b36:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002b3a:	454b      	cmp	r3, r9
 8002b3c:	bfb8      	it	lt
 8002b3e:	464b      	movlt	r3, r9
 8002b40:	9304      	str	r3, [sp, #16]
 8002b42:	b112      	cbz	r2, 8002b4a <_vfprintf_r+0x322>
 8002b44:	9b04      	ldr	r3, [sp, #16]
 8002b46:	3301      	adds	r3, #1
 8002b48:	9304      	str	r3, [sp, #16]
 8002b4a:	f018 0302 	ands.w	r3, r8, #2
 8002b4e:	930b      	str	r3, [sp, #44]	; 0x2c
 8002b50:	d002      	beq.n	8002b58 <_vfprintf_r+0x330>
 8002b52:	9b04      	ldr	r3, [sp, #16]
 8002b54:	3302      	adds	r3, #2
 8002b56:	9304      	str	r3, [sp, #16]
 8002b58:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8002b5c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002b5e:	930e      	str	r3, [sp, #56]	; 0x38
 8002b60:	d13f      	bne.n	8002be2 <_vfprintf_r+0x3ba>
 8002b62:	9b06      	ldr	r3, [sp, #24]
 8002b64:	9904      	ldr	r1, [sp, #16]
 8002b66:	1a5d      	subs	r5, r3, r1
 8002b68:	2d00      	cmp	r5, #0
 8002b6a:	dd3a      	ble.n	8002be2 <_vfprintf_r+0x3ba>
 8002b6c:	2d10      	cmp	r5, #16
 8002b6e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002b70:	dd29      	ble.n	8002bc6 <_vfprintf_r+0x39e>
 8002b72:	4659      	mov	r1, fp
 8002b74:	4620      	mov	r0, r4
 8002b76:	9620      	str	r6, [sp, #128]	; 0x80
 8002b78:	2310      	movs	r3, #16
 8002b7a:	9c03      	ldr	r4, [sp, #12]
 8002b7c:	9e07      	ldr	r6, [sp, #28]
 8002b7e:	46bb      	mov	fp, r7
 8002b80:	e004      	b.n	8002b8c <_vfprintf_r+0x364>
 8002b82:	3d10      	subs	r5, #16
 8002b84:	2d10      	cmp	r5, #16
 8002b86:	f101 0108 	add.w	r1, r1, #8
 8002b8a:	dd18      	ble.n	8002bbe <_vfprintf_r+0x396>
 8002b8c:	3201      	adds	r2, #1
 8002b8e:	4fba      	ldr	r7, [pc, #744]	; (8002e78 <_vfprintf_r+0x650>)
 8002b90:	3010      	adds	r0, #16
 8002b92:	2a07      	cmp	r2, #7
 8002b94:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002b98:	e9c1 7300 	strd	r7, r3, [r1]
 8002b9c:	ddf1      	ble.n	8002b82 <_vfprintf_r+0x35a>
 8002b9e:	aa2a      	add	r2, sp, #168	; 0xa8
 8002ba0:	4631      	mov	r1, r6
 8002ba2:	4620      	mov	r0, r4
 8002ba4:	930c      	str	r3, [sp, #48]	; 0x30
 8002ba6:	f004 f96d 	bl	8006e84 <__sprint_r>
 8002baa:	2800      	cmp	r0, #0
 8002bac:	f040 843d 	bne.w	800342a <_vfprintf_r+0xc02>
 8002bb0:	3d10      	subs	r5, #16
 8002bb2:	2d10      	cmp	r5, #16
 8002bb4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002bb8:	a92d      	add	r1, sp, #180	; 0xb4
 8002bba:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8002bbc:	dce6      	bgt.n	8002b8c <_vfprintf_r+0x364>
 8002bbe:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8002bc0:	465f      	mov	r7, fp
 8002bc2:	4604      	mov	r4, r0
 8002bc4:	468b      	mov	fp, r1
 8002bc6:	3201      	adds	r2, #1
 8002bc8:	4bab      	ldr	r3, [pc, #684]	; (8002e78 <_vfprintf_r+0x650>)
 8002bca:	442c      	add	r4, r5
 8002bcc:	2a07      	cmp	r2, #7
 8002bce:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002bd2:	e9cb 3500 	strd	r3, r5, [fp]
 8002bd6:	f300 84ff 	bgt.w	80035d8 <_vfprintf_r+0xdb0>
 8002bda:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002bde:	f10b 0b08 	add.w	fp, fp, #8
 8002be2:	b172      	cbz	r2, 8002c02 <_vfprintf_r+0x3da>
 8002be4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002be6:	3201      	adds	r2, #1
 8002be8:	3401      	adds	r4, #1
 8002bea:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8002bee:	2101      	movs	r1, #1
 8002bf0:	2a07      	cmp	r2, #7
 8002bf2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002bf6:	e9cb 0100 	strd	r0, r1, [fp]
 8002bfa:	f300 8418 	bgt.w	800342e <_vfprintf_r+0xc06>
 8002bfe:	f10b 0b08 	add.w	fp, fp, #8
 8002c02:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8002c04:	b16b      	cbz	r3, 8002c22 <_vfprintf_r+0x3fa>
 8002c06:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002c08:	3301      	adds	r3, #1
 8002c0a:	3402      	adds	r4, #2
 8002c0c:	a923      	add	r1, sp, #140	; 0x8c
 8002c0e:	2202      	movs	r2, #2
 8002c10:	2b07      	cmp	r3, #7
 8002c12:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002c16:	e9cb 1200 	strd	r1, r2, [fp]
 8002c1a:	f300 8415 	bgt.w	8003448 <_vfprintf_r+0xc20>
 8002c1e:	f10b 0b08 	add.w	fp, fp, #8
 8002c22:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8002c24:	2b80      	cmp	r3, #128	; 0x80
 8002c26:	f000 8331 	beq.w	800328c <_vfprintf_r+0xa64>
 8002c2a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8002c2c:	eba9 0503 	sub.w	r5, r9, r3
 8002c30:	2d00      	cmp	r5, #0
 8002c32:	dd37      	ble.n	8002ca4 <_vfprintf_r+0x47c>
 8002c34:	2d10      	cmp	r5, #16
 8002c36:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8002c38:	4b90      	ldr	r3, [pc, #576]	; (8002e7c <_vfprintf_r+0x654>)
 8002c3a:	dd28      	ble.n	8002c8e <_vfprintf_r+0x466>
 8002c3c:	4659      	mov	r1, fp
 8002c3e:	4620      	mov	r0, r4
 8002c40:	46bb      	mov	fp, r7
 8002c42:	f04f 0910 	mov.w	r9, #16
 8002c46:	4637      	mov	r7, r6
 8002c48:	461c      	mov	r4, r3
 8002c4a:	9e07      	ldr	r6, [sp, #28]
 8002c4c:	e004      	b.n	8002c58 <_vfprintf_r+0x430>
 8002c4e:	3d10      	subs	r5, #16
 8002c50:	2d10      	cmp	r5, #16
 8002c52:	f101 0108 	add.w	r1, r1, #8
 8002c56:	dd15      	ble.n	8002c84 <_vfprintf_r+0x45c>
 8002c58:	3201      	adds	r2, #1
 8002c5a:	3010      	adds	r0, #16
 8002c5c:	2a07      	cmp	r2, #7
 8002c5e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8002c62:	e9c1 4900 	strd	r4, r9, [r1]
 8002c66:	ddf2      	ble.n	8002c4e <_vfprintf_r+0x426>
 8002c68:	aa2a      	add	r2, sp, #168	; 0xa8
 8002c6a:	4631      	mov	r1, r6
 8002c6c:	9803      	ldr	r0, [sp, #12]
 8002c6e:	f004 f909 	bl	8006e84 <__sprint_r>
 8002c72:	2800      	cmp	r0, #0
 8002c74:	f040 83d9 	bne.w	800342a <_vfprintf_r+0xc02>
 8002c78:	3d10      	subs	r5, #16
 8002c7a:	2d10      	cmp	r5, #16
 8002c7c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8002c80:	a92d      	add	r1, sp, #180	; 0xb4
 8002c82:	dce9      	bgt.n	8002c58 <_vfprintf_r+0x430>
 8002c84:	463e      	mov	r6, r7
 8002c86:	4623      	mov	r3, r4
 8002c88:	465f      	mov	r7, fp
 8002c8a:	4604      	mov	r4, r0
 8002c8c:	468b      	mov	fp, r1
 8002c8e:	3201      	adds	r2, #1
 8002c90:	442c      	add	r4, r5
 8002c92:	2a07      	cmp	r2, #7
 8002c94:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8002c98:	e9cb 3500 	strd	r3, r5, [fp]
 8002c9c:	f300 83ef 	bgt.w	800347e <_vfprintf_r+0xc56>
 8002ca0:	f10b 0b08 	add.w	fp, fp, #8
 8002ca4:	f418 7f80 	tst.w	r8, #256	; 0x100
 8002ca8:	f040 8280 	bne.w	80031ac <_vfprintf_r+0x984>
 8002cac:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002cae:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8002cb0:	f8cb 7000 	str.w	r7, [fp]
 8002cb4:	3301      	adds	r3, #1
 8002cb6:	4414      	add	r4, r2
 8002cb8:	2b07      	cmp	r3, #7
 8002cba:	942c      	str	r4, [sp, #176]	; 0xb0
 8002cbc:	f8cb 2004 	str.w	r2, [fp, #4]
 8002cc0:	932b      	str	r3, [sp, #172]	; 0xac
 8002cc2:	f300 8392 	bgt.w	80033ea <_vfprintf_r+0xbc2>
 8002cc6:	f10b 0b08 	add.w	fp, fp, #8
 8002cca:	f018 0f04 	tst.w	r8, #4
 8002cce:	d03b      	beq.n	8002d48 <_vfprintf_r+0x520>
 8002cd0:	9b06      	ldr	r3, [sp, #24]
 8002cd2:	9a04      	ldr	r2, [sp, #16]
 8002cd4:	1a9d      	subs	r5, r3, r2
 8002cd6:	2d00      	cmp	r5, #0
 8002cd8:	dd36      	ble.n	8002d48 <_vfprintf_r+0x520>
 8002cda:	2d10      	cmp	r5, #16
 8002cdc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8002cde:	dd21      	ble.n	8002d24 <_vfprintf_r+0x4fc>
 8002ce0:	2610      	movs	r6, #16
 8002ce2:	9f03      	ldr	r7, [sp, #12]
 8002ce4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8002ce8:	e004      	b.n	8002cf4 <_vfprintf_r+0x4cc>
 8002cea:	3d10      	subs	r5, #16
 8002cec:	2d10      	cmp	r5, #16
 8002cee:	f10b 0b08 	add.w	fp, fp, #8
 8002cf2:	dd17      	ble.n	8002d24 <_vfprintf_r+0x4fc>
 8002cf4:	3301      	adds	r3, #1
 8002cf6:	4a60      	ldr	r2, [pc, #384]	; (8002e78 <_vfprintf_r+0x650>)
 8002cf8:	3410      	adds	r4, #16
 8002cfa:	2b07      	cmp	r3, #7
 8002cfc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d00:	e9cb 2600 	strd	r2, r6, [fp]
 8002d04:	ddf1      	ble.n	8002cea <_vfprintf_r+0x4c2>
 8002d06:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d08:	4641      	mov	r1, r8
 8002d0a:	4638      	mov	r0, r7
 8002d0c:	f004 f8ba 	bl	8006e84 <__sprint_r>
 8002d10:	2800      	cmp	r0, #0
 8002d12:	f040 856c 	bne.w	80037ee <_vfprintf_r+0xfc6>
 8002d16:	3d10      	subs	r5, #16
 8002d18:	2d10      	cmp	r5, #16
 8002d1a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8002d1e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002d22:	dce7      	bgt.n	8002cf4 <_vfprintf_r+0x4cc>
 8002d24:	3301      	adds	r3, #1
 8002d26:	4a54      	ldr	r2, [pc, #336]	; (8002e78 <_vfprintf_r+0x650>)
 8002d28:	442c      	add	r4, r5
 8002d2a:	2b07      	cmp	r3, #7
 8002d2c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8002d30:	e9cb 2500 	strd	r2, r5, [fp]
 8002d34:	dd08      	ble.n	8002d48 <_vfprintf_r+0x520>
 8002d36:	aa2a      	add	r2, sp, #168	; 0xa8
 8002d38:	9907      	ldr	r1, [sp, #28]
 8002d3a:	9803      	ldr	r0, [sp, #12]
 8002d3c:	f004 f8a2 	bl	8006e84 <__sprint_r>
 8002d40:	2800      	cmp	r0, #0
 8002d42:	f040 82e9 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8002d46:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8002d48:	9904      	ldr	r1, [sp, #16]
 8002d4a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 8002d4e:	428a      	cmp	r2, r1
 8002d50:	bfac      	ite	ge
 8002d52:	189b      	addge	r3, r3, r2
 8002d54:	185b      	addlt	r3, r3, r1
 8002d56:	9305      	str	r3, [sp, #20]
 8002d58:	2c00      	cmp	r4, #0
 8002d5a:	f040 82d5 	bne.w	8003308 <_vfprintf_r+0xae0>
 8002d5e:	2300      	movs	r3, #0
 8002d60:	932b      	str	r3, [sp, #172]	; 0xac
 8002d62:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8002d64:	b11b      	cbz	r3, 8002d6e <_vfprintf_r+0x546>
 8002d66:	990a      	ldr	r1, [sp, #40]	; 0x28
 8002d68:	9803      	ldr	r0, [sp, #12]
 8002d6a:	f002 fc9d 	bl	80056a8 <_free_r>
 8002d6e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8002d72:	4657      	mov	r7, sl
 8002d74:	783b      	ldrb	r3, [r7, #0]
 8002d76:	2b00      	cmp	r3, #0
 8002d78:	f47f ada7 	bne.w	80028ca <_vfprintf_r+0xa2>
 8002d7c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 8002d7e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8002d82:	2b00      	cmp	r3, #0
 8002d84:	f041 80e7 	bne.w	8003f56 <_vfprintf_r+0x172e>
 8002d88:	2300      	movs	r3, #0
 8002d8a:	932b      	str	r3, [sp, #172]	; 0xac
 8002d8c:	e2cb      	b.n	8003326 <_vfprintf_r+0xafe>
 8002d8e:	4643      	mov	r3, r8
 8002d90:	069a      	lsls	r2, r3, #26
 8002d92:	f140 814e 	bpl.w	8003032 <_vfprintf_r+0x80a>
 8002d96:	9c08      	ldr	r4, [sp, #32]
 8002d98:	3407      	adds	r4, #7
 8002d9a:	f024 0207 	bic.w	r2, r4, #7
 8002d9e:	f102 0108 	add.w	r1, r2, #8
 8002da2:	e9d2 4500 	ldrd	r4, r5, [r2]
 8002da6:	9108      	str	r1, [sp, #32]
 8002da8:	2201      	movs	r2, #1
 8002daa:	2100      	movs	r1, #0
 8002dac:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8002db0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002db4:	a956      	add	r1, sp, #344	; 0x158
 8002db6:	9104      	str	r1, [sp, #16]
 8002db8:	f47f aea2 	bne.w	8002b00 <_vfprintf_r+0x2d8>
 8002dbc:	4698      	mov	r8, r3
 8002dbe:	2a01      	cmp	r2, #1
 8002dc0:	f000 8350 	beq.w	8003464 <_vfprintf_r+0xc3c>
 8002dc4:	2a02      	cmp	r2, #2
 8002dc6:	f000 831b 	beq.w	8003400 <_vfprintf_r+0xbd8>
 8002dca:	a956      	add	r1, sp, #344	; 0x158
 8002dcc:	e000      	b.n	8002dd0 <_vfprintf_r+0x5a8>
 8002dce:	4639      	mov	r1, r7
 8002dd0:	08e2      	lsrs	r2, r4, #3
 8002dd2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 8002dd6:	08e8      	lsrs	r0, r5, #3
 8002dd8:	f004 0307 	and.w	r3, r4, #7
 8002ddc:	4605      	mov	r5, r0
 8002dde:	4614      	mov	r4, r2
 8002de0:	3330      	adds	r3, #48	; 0x30
 8002de2:	ea54 0205 	orrs.w	r2, r4, r5
 8002de6:	f801 3c01 	strb.w	r3, [r1, #-1]
 8002dea:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 8002dee:	d1ee      	bne.n	8002dce <_vfprintf_r+0x5a6>
 8002df0:	f018 0f01 	tst.w	r8, #1
 8002df4:	f000 8314 	beq.w	8003420 <_vfprintf_r+0xbf8>
 8002df8:	2b30      	cmp	r3, #48	; 0x30
 8002dfa:	f000 8311 	beq.w	8003420 <_vfprintf_r+0xbf8>
 8002dfe:	9a04      	ldr	r2, [sp, #16]
 8002e00:	3902      	subs	r1, #2
 8002e02:	2330      	movs	r3, #48	; 0x30
 8002e04:	1a52      	subs	r2, r2, r1
 8002e06:	f807 3c01 	strb.w	r3, [r7, #-1]
 8002e0a:	9209      	str	r2, [sp, #36]	; 0x24
 8002e0c:	460f      	mov	r7, r1
 8002e0e:	e68c      	b.n	8002b2a <_vfprintf_r+0x302>
 8002e10:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e14:	2200      	movs	r2, #0
 8002e16:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002e1a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 8002e1e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8002e22:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002e26:	2b09      	cmp	r3, #9
 8002e28:	d9f5      	bls.n	8002e16 <_vfprintf_r+0x5ee>
 8002e2a:	9206      	str	r2, [sp, #24]
 8002e2c:	e57c      	b.n	8002928 <_vfprintf_r+0x100>
 8002e2e:	4b14      	ldr	r3, [pc, #80]	; (8002e80 <_vfprintf_r+0x658>)
 8002e30:	9317      	str	r3, [sp, #92]	; 0x5c
 8002e32:	f018 0f20 	tst.w	r8, #32
 8002e36:	f000 8114 	beq.w	8003062 <_vfprintf_r+0x83a>
 8002e3a:	9c08      	ldr	r4, [sp, #32]
 8002e3c:	3407      	adds	r4, #7
 8002e3e:	f024 0307 	bic.w	r3, r4, #7
 8002e42:	e9d3 4500 	ldrd	r4, r5, [r3]
 8002e46:	f103 0208 	add.w	r2, r3, #8
 8002e4a:	9208      	str	r2, [sp, #32]
 8002e4c:	f018 0f01 	tst.w	r8, #1
 8002e50:	d009      	beq.n	8002e66 <_vfprintf_r+0x63e>
 8002e52:	ea54 0305 	orrs.w	r3, r4, r5
 8002e56:	d006      	beq.n	8002e66 <_vfprintf_r+0x63e>
 8002e58:	2330      	movs	r3, #48	; 0x30
 8002e5a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 8002e5e:	f048 0802 	orr.w	r8, r8, #2
 8002e62:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8002e66:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8002e6a:	2202      	movs	r2, #2
 8002e6c:	e79d      	b.n	8002daa <_vfprintf_r+0x582>
 8002e6e:	f048 0801 	orr.w	r8, r8, #1
 8002e72:	f89a 6000 	ldrb.w	r6, [sl]
 8002e76:	e555      	b.n	8002924 <_vfprintf_r+0xfc>
 8002e78:	0800756c 	.word	0x0800756c
 8002e7c:	0800757c 	.word	0x0800757c
 8002e80:	08007538 	.word	0x08007538
 8002e84:	9e03      	ldr	r6, [sp, #12]
 8002e86:	4630      	mov	r0, r6
 8002e88:	f002 feaa 	bl	8005be0 <_localeconv_r>
 8002e8c:	6843      	ldr	r3, [r0, #4]
 8002e8e:	9318      	str	r3, [sp, #96]	; 0x60
 8002e90:	4618      	mov	r0, r3
 8002e92:	f7fd fbd5 	bl	8000640 <strlen>
 8002e96:	901b      	str	r0, [sp, #108]	; 0x6c
 8002e98:	4604      	mov	r4, r0
 8002e9a:	4630      	mov	r0, r6
 8002e9c:	f002 fea0 	bl	8005be0 <_localeconv_r>
 8002ea0:	6883      	ldr	r3, [r0, #8]
 8002ea2:	931a      	str	r3, [sp, #104]	; 0x68
 8002ea4:	2c00      	cmp	r4, #0
 8002ea6:	f43f adb8 	beq.w	8002a1a <_vfprintf_r+0x1f2>
 8002eaa:	f89a 6000 	ldrb.w	r6, [sl]
 8002eae:	2b00      	cmp	r3, #0
 8002eb0:	f43f ad38 	beq.w	8002924 <_vfprintf_r+0xfc>
 8002eb4:	781b      	ldrb	r3, [r3, #0]
 8002eb6:	2b00      	cmp	r3, #0
 8002eb8:	f43f ad34 	beq.w	8002924 <_vfprintf_r+0xfc>
 8002ebc:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 8002ec0:	e530      	b.n	8002924 <_vfprintf_r+0xfc>
 8002ec2:	9b08      	ldr	r3, [sp, #32]
 8002ec4:	f89a 6000 	ldrb.w	r6, [sl]
 8002ec8:	681a      	ldr	r2, [r3, #0]
 8002eca:	9206      	str	r2, [sp, #24]
 8002ecc:	2a00      	cmp	r2, #0
 8002ece:	f103 0304 	add.w	r3, r3, #4
 8002ed2:	f2c0 8697 	blt.w	8003c04 <_vfprintf_r+0x13dc>
 8002ed6:	9308      	str	r3, [sp, #32]
 8002ed8:	e524      	b.n	8002924 <_vfprintf_r+0xfc>
 8002eda:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002ede:	f89a 6000 	ldrb.w	r6, [sl]
 8002ee2:	e51f      	b.n	8002924 <_vfprintf_r+0xfc>
 8002ee4:	f89a 6000 	ldrb.w	r6, [sl]
 8002ee8:	f048 0804 	orr.w	r8, r8, #4
 8002eec:	e51a      	b.n	8002924 <_vfprintf_r+0xfc>
 8002eee:	f89a 6000 	ldrb.w	r6, [sl]
 8002ef2:	2e2a      	cmp	r6, #42	; 0x2a
 8002ef4:	f10a 0201 	add.w	r2, sl, #1
 8002ef8:	f001 81b0 	beq.w	800425c <_vfprintf_r+0x1a34>
 8002efc:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002f00:	2b09      	cmp	r3, #9
 8002f02:	4692      	mov	sl, r2
 8002f04:	f04f 0900 	mov.w	r9, #0
 8002f08:	f63f ad0e 	bhi.w	8002928 <_vfprintf_r+0x100>
 8002f0c:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8002f10:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8002f14:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8002f18:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8002f1c:	2b09      	cmp	r3, #9
 8002f1e:	d9f5      	bls.n	8002f0c <_vfprintf_r+0x6e4>
 8002f20:	e502      	b.n	8002928 <_vfprintf_r+0x100>
 8002f22:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8002f26:	f89a 6000 	ldrb.w	r6, [sl]
 8002f2a:	e4fb      	b.n	8002924 <_vfprintf_r+0xfc>
 8002f2c:	9c08      	ldr	r4, [sp, #32]
 8002f2e:	3407      	adds	r4, #7
 8002f30:	f024 0407 	bic.w	r4, r4, #7
 8002f34:	ed94 7b00 	vldr	d7, [r4]
 8002f38:	ec52 1b17 	vmov	r1, r2, d7
 8002f3c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8002f40:	931d      	str	r3, [sp, #116]	; 0x74
 8002f42:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8002f46:	3408      	adds	r4, #8
 8002f48:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002f4c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002f50:	4bba      	ldr	r3, [pc, #744]	; (800323c <_vfprintf_r+0xa14>)
 8002f52:	9408      	str	r4, [sp, #32]
 8002f54:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8002f58:	f7fe f888 	bl	800106c <__aeabi_dcmpun>
 8002f5c:	2800      	cmp	r0, #0
 8002f5e:	f040 846f 	bne.w	8003840 <_vfprintf_r+0x1018>
 8002f62:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002f66:	4bb5      	ldr	r3, [pc, #724]	; (800323c <_vfprintf_r+0xa14>)
 8002f68:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 8002f6c:	f7fe f860 	bl	8001030 <__aeabi_dcmple>
 8002f70:	2800      	cmp	r0, #0
 8002f72:	f040 8465 	bne.w	8003840 <_vfprintf_r+0x1018>
 8002f76:	2200      	movs	r2, #0
 8002f78:	2300      	movs	r3, #0
 8002f7a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8002f7e:	f7fe f84d 	bl	800101c <__aeabi_dcmplt>
 8002f82:	2800      	cmp	r0, #0
 8002f84:	f040 855b 	bne.w	8003a3e <_vfprintf_r+0x1216>
 8002f88:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8002f8c:	4fac      	ldr	r7, [pc, #688]	; (8003240 <_vfprintf_r+0xa18>)
 8002f8e:	4bad      	ldr	r3, [pc, #692]	; (8003244 <_vfprintf_r+0xa1c>)
 8002f90:	2000      	movs	r0, #0
 8002f92:	2103      	movs	r1, #3
 8002f94:	9104      	str	r1, [sp, #16]
 8002f96:	900a      	str	r0, [sp, #40]	; 0x28
 8002f98:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 8002f9c:	2e47      	cmp	r6, #71	; 0x47
 8002f9e:	bfd8      	it	le
 8002fa0:	461f      	movle	r7, r3
 8002fa2:	9109      	str	r1, [sp, #36]	; 0x24
 8002fa4:	4681      	mov	r9, r0
 8002fa6:	900f      	str	r0, [sp, #60]	; 0x3c
 8002fa8:	9014      	str	r0, [sp, #80]	; 0x50
 8002faa:	9011      	str	r0, [sp, #68]	; 0x44
 8002fac:	e5c9      	b.n	8002b42 <_vfprintf_r+0x31a>
 8002fae:	9808      	ldr	r0, [sp, #32]
 8002fb0:	2300      	movs	r3, #0
 8002fb2:	6801      	ldr	r1, [r0, #0]
 8002fb4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8002fb8:	461a      	mov	r2, r3
 8002fba:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 8002fbe:	2301      	movs	r3, #1
 8002fc0:	1d01      	adds	r1, r0, #4
 8002fc2:	9304      	str	r3, [sp, #16]
 8002fc4:	920a      	str	r2, [sp, #40]	; 0x28
 8002fc6:	4691      	mov	r9, r2
 8002fc8:	920f      	str	r2, [sp, #60]	; 0x3c
 8002fca:	9214      	str	r2, [sp, #80]	; 0x50
 8002fcc:	9211      	str	r2, [sp, #68]	; 0x44
 8002fce:	e9cd 1308 	strd	r1, r3, [sp, #32]
 8002fd2:	af3d      	add	r7, sp, #244	; 0xf4
 8002fd4:	e5b9      	b.n	8002b4a <_vfprintf_r+0x322>
 8002fd6:	9b08      	ldr	r3, [sp, #32]
 8002fd8:	681f      	ldr	r7, [r3, #0]
 8002fda:	2500      	movs	r5, #0
 8002fdc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 8002fe0:	1d1c      	adds	r4, r3, #4
 8002fe2:	2f00      	cmp	r7, #0
 8002fe4:	f000 8639 	beq.w	8003c5a <_vfprintf_r+0x1432>
 8002fe8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8002fec:	f000 8711 	beq.w	8003e12 <_vfprintf_r+0x15ea>
 8002ff0:	464a      	mov	r2, r9
 8002ff2:	4629      	mov	r1, r5
 8002ff4:	4638      	mov	r0, r7
 8002ff6:	f7fd fb93 	bl	8000720 <memchr>
 8002ffa:	900a      	str	r0, [sp, #40]	; 0x28
 8002ffc:	2800      	cmp	r0, #0
 8002ffe:	f000 85e7 	beq.w	8003bd0 <_vfprintf_r+0x13a8>
 8003002:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8003004:	1bdb      	subs	r3, r3, r7
 8003006:	9309      	str	r3, [sp, #36]	; 0x24
 8003008:	46a9      	mov	r9, r5
 800300a:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800300e:	9408      	str	r4, [sp, #32]
 8003010:	9304      	str	r3, [sp, #16]
 8003012:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8003016:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800301a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800301e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8003022:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003026:	e58c      	b.n	8002b42 <_vfprintf_r+0x31a>
 8003028:	f048 0310 	orr.w	r3, r8, #16
 800302c:	069a      	lsls	r2, r3, #26
 800302e:	f53f aeb2 	bmi.w	8002d96 <_vfprintf_r+0x56e>
 8003032:	9a08      	ldr	r2, [sp, #32]
 8003034:	06df      	lsls	r7, r3, #27
 8003036:	f102 0104 	add.w	r1, r2, #4
 800303a:	f100 837e 	bmi.w	800373a <_vfprintf_r+0xf12>
 800303e:	065d      	lsls	r5, r3, #25
 8003040:	9a08      	ldr	r2, [sp, #32]
 8003042:	f100 84e4 	bmi.w	8003a0e <_vfprintf_r+0x11e6>
 8003046:	059c      	lsls	r4, r3, #22
 8003048:	f140 8377 	bpl.w	800373a <_vfprintf_r+0xf12>
 800304c:	7814      	ldrb	r4, [r2, #0]
 800304e:	9108      	str	r1, [sp, #32]
 8003050:	2500      	movs	r5, #0
 8003052:	2201      	movs	r2, #1
 8003054:	e6a9      	b.n	8002daa <_vfprintf_r+0x582>
 8003056:	4b7c      	ldr	r3, [pc, #496]	; (8003248 <_vfprintf_r+0xa20>)
 8003058:	9317      	str	r3, [sp, #92]	; 0x5c
 800305a:	f018 0f20 	tst.w	r8, #32
 800305e:	f47f aeec 	bne.w	8002e3a <_vfprintf_r+0x612>
 8003062:	9a08      	ldr	r2, [sp, #32]
 8003064:	f018 0f10 	tst.w	r8, #16
 8003068:	f102 0304 	add.w	r3, r2, #4
 800306c:	f040 8354 	bne.w	8003718 <_vfprintf_r+0xef0>
 8003070:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003074:	9a08      	ldr	r2, [sp, #32]
 8003076:	f040 84d0 	bne.w	8003a1a <_vfprintf_r+0x11f2>
 800307a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800307e:	f000 834b 	beq.w	8003718 <_vfprintf_r+0xef0>
 8003082:	7814      	ldrb	r4, [r2, #0]
 8003084:	9308      	str	r3, [sp, #32]
 8003086:	2500      	movs	r5, #0
 8003088:	e6e0      	b.n	8002e4c <_vfprintf_r+0x624>
 800308a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800308e:	f89a 6000 	ldrb.w	r6, [sl]
 8003092:	2b00      	cmp	r3, #0
 8003094:	f47f ac46 	bne.w	8002924 <_vfprintf_r+0xfc>
 8003098:	2320      	movs	r3, #32
 800309a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800309e:	e441      	b.n	8002924 <_vfprintf_r+0xfc>
 80030a0:	f89a 6000 	ldrb.w	r6, [sl]
 80030a4:	2e6c      	cmp	r6, #108	; 0x6c
 80030a6:	bf03      	ittte	eq
 80030a8:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80030ac:	f048 0820 	orreq.w	r8, r8, #32
 80030b0:	f10a 0a01 	addeq.w	sl, sl, #1
 80030b4:	f048 0810 	orrne.w	r8, r8, #16
 80030b8:	e434      	b.n	8002924 <_vfprintf_r+0xfc>
 80030ba:	9a08      	ldr	r2, [sp, #32]
 80030bc:	f018 0f20 	tst.w	r8, #32
 80030c0:	f852 3b04 	ldr.w	r3, [r2], #4
 80030c4:	9208      	str	r2, [sp, #32]
 80030c6:	f000 83a1 	beq.w	800380c <_vfprintf_r+0xfe4>
 80030ca:	9a05      	ldr	r2, [sp, #20]
 80030cc:	4610      	mov	r0, r2
 80030ce:	17d1      	asrs	r1, r2, #31
 80030d0:	e9c3 0100 	strd	r0, r1, [r3]
 80030d4:	4657      	mov	r7, sl
 80030d6:	e64d      	b.n	8002d74 <_vfprintf_r+0x54c>
 80030d8:	f89a 6000 	ldrb.w	r6, [sl]
 80030dc:	2e68      	cmp	r6, #104	; 0x68
 80030de:	bf03      	ittte	eq
 80030e0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80030e4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80030e8:	f10a 0a01 	addeq.w	sl, sl, #1
 80030ec:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80030f0:	e418      	b.n	8002924 <_vfprintf_r+0xfc>
 80030f2:	9908      	ldr	r1, [sp, #32]
 80030f4:	4b55      	ldr	r3, [pc, #340]	; (800324c <_vfprintf_r+0xa24>)
 80030f6:	680c      	ldr	r4, [r1, #0]
 80030f8:	9317      	str	r3, [sp, #92]	; 0x5c
 80030fa:	f647 0230 	movw	r2, #30768	; 0x7830
 80030fe:	3104      	adds	r1, #4
 8003100:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 8003104:	f048 0302 	orr.w	r3, r8, #2
 8003108:	9108      	str	r1, [sp, #32]
 800310a:	2500      	movs	r5, #0
 800310c:	2202      	movs	r2, #2
 800310e:	2678      	movs	r6, #120	; 0x78
 8003110:	e64b      	b.n	8002daa <_vfprintf_r+0x582>
 8003112:	f048 0808 	orr.w	r8, r8, #8
 8003116:	f89a 6000 	ldrb.w	r6, [sl]
 800311a:	e403      	b.n	8002924 <_vfprintf_r+0xfc>
 800311c:	f048 0310 	orr.w	r3, r8, #16
 8003120:	069f      	lsls	r7, r3, #26
 8003122:	f53f acd1 	bmi.w	8002ac8 <_vfprintf_r+0x2a0>
 8003126:	9908      	ldr	r1, [sp, #32]
 8003128:	06dd      	lsls	r5, r3, #27
 800312a:	f101 0204 	add.w	r2, r1, #4
 800312e:	f100 82fd 	bmi.w	800372c <_vfprintf_r+0xf04>
 8003132:	065c      	lsls	r4, r3, #25
 8003134:	9908      	ldr	r1, [sp, #32]
 8003136:	f100 8475 	bmi.w	8003a24 <_vfprintf_r+0x11fc>
 800313a:	0598      	lsls	r0, r3, #22
 800313c:	f140 82f6 	bpl.w	800372c <_vfprintf_r+0xf04>
 8003140:	f991 4000 	ldrsb.w	r4, [r1]
 8003144:	9208      	str	r2, [sp, #32]
 8003146:	17e5      	asrs	r5, r4, #31
 8003148:	4620      	mov	r0, r4
 800314a:	4629      	mov	r1, r5
 800314c:	e4c7      	b.n	8002ade <_vfprintf_r+0x2b6>
 800314e:	9a08      	ldr	r2, [sp, #32]
 8003150:	f018 0f10 	tst.w	r8, #16
 8003154:	f102 0304 	add.w	r3, r2, #4
 8003158:	f040 82e3 	bne.w	8003722 <_vfprintf_r+0xefa>
 800315c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003160:	9a08      	ldr	r2, [sp, #32]
 8003162:	f040 8467 	bne.w	8003a34 <_vfprintf_r+0x120c>
 8003166:	f418 7f00 	tst.w	r8, #512	; 0x200
 800316a:	f000 82da 	beq.w	8003722 <_vfprintf_r+0xefa>
 800316e:	7814      	ldrb	r4, [r2, #0]
 8003170:	9308      	str	r3, [sp, #32]
 8003172:	2500      	movs	r5, #0
 8003174:	e488      	b.n	8002a88 <_vfprintf_r+0x260>
 8003176:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800317a:	f002 fd45 	bl	8005c08 <__retarget_lock_release_recursive>
 800317e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8003182:	9305      	str	r3, [sp, #20]
 8003184:	e443      	b.n	8002a0e <_vfprintf_r+0x1e6>
 8003186:	2e00      	cmp	r6, #0
 8003188:	f43f adf8 	beq.w	8002d7c <_vfprintf_r+0x554>
 800318c:	2300      	movs	r3, #0
 800318e:	2101      	movs	r1, #1
 8003190:	461a      	mov	r2, r3
 8003192:	9104      	str	r1, [sp, #16]
 8003194:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8003198:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800319c:	930a      	str	r3, [sp, #40]	; 0x28
 800319e:	4699      	mov	r9, r3
 80031a0:	930f      	str	r3, [sp, #60]	; 0x3c
 80031a2:	9314      	str	r3, [sp, #80]	; 0x50
 80031a4:	9311      	str	r3, [sp, #68]	; 0x44
 80031a6:	9109      	str	r1, [sp, #36]	; 0x24
 80031a8:	af3d      	add	r7, sp, #244	; 0xf4
 80031aa:	e4ce      	b.n	8002b4a <_vfprintf_r+0x322>
 80031ac:	2e65      	cmp	r6, #101	; 0x65
 80031ae:	f340 80ca 	ble.w	8003346 <_vfprintf_r+0xb1e>
 80031b2:	2200      	movs	r2, #0
 80031b4:	2300      	movs	r3, #0
 80031b6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80031ba:	f7fd ff25 	bl	8001008 <__aeabi_dcmpeq>
 80031be:	2800      	cmp	r0, #0
 80031c0:	f000 8169 	beq.w	8003496 <_vfprintf_r+0xc6e>
 80031c4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80031c6:	4a22      	ldr	r2, [pc, #136]	; (8003250 <_vfprintf_r+0xa28>)
 80031c8:	f8cb 2000 	str.w	r2, [fp]
 80031cc:	3301      	adds	r3, #1
 80031ce:	3401      	adds	r4, #1
 80031d0:	2201      	movs	r2, #1
 80031d2:	2b07      	cmp	r3, #7
 80031d4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80031d8:	f8cb 2004 	str.w	r2, [fp, #4]
 80031dc:	f300 8406 	bgt.w	80039ec <_vfprintf_r+0x11c4>
 80031e0:	f10b 0b08 	add.w	fp, fp, #8
 80031e4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80031e6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80031e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80031ea:	4293      	cmp	r3, r2
 80031ec:	db03      	blt.n	80031f6 <_vfprintf_r+0x9ce>
 80031ee:	f018 0f01 	tst.w	r8, #1
 80031f2:	f43f ad6a 	beq.w	8002cca <_vfprintf_r+0x4a2>
 80031f6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80031f8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80031fa:	f8cb 2000 	str.w	r2, [fp]
 80031fe:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003200:	f8cb 2004 	str.w	r2, [fp, #4]
 8003204:	3301      	adds	r3, #1
 8003206:	4414      	add	r4, r2
 8003208:	2b07      	cmp	r3, #7
 800320a:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 800320e:	f300 8517 	bgt.w	8003c40 <_vfprintf_r+0x1418>
 8003212:	f10b 0b08 	add.w	fp, fp, #8
 8003216:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003218:	1e5d      	subs	r5, r3, #1
 800321a:	2d00      	cmp	r5, #0
 800321c:	f77f ad55 	ble.w	8002cca <_vfprintf_r+0x4a2>
 8003220:	2d10      	cmp	r5, #16
 8003222:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003224:	4b0b      	ldr	r3, [pc, #44]	; (8003254 <_vfprintf_r+0xa2c>)
 8003226:	f340 82e7 	ble.w	80037f8 <_vfprintf_r+0xfd0>
 800322a:	4619      	mov	r1, r3
 800322c:	2610      	movs	r6, #16
 800322e:	4623      	mov	r3, r4
 8003230:	9f03      	ldr	r7, [sp, #12]
 8003232:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8003236:	460c      	mov	r4, r1
 8003238:	e014      	b.n	8003264 <_vfprintf_r+0xa3c>
 800323a:	bf00      	nop
 800323c:	7fefffff 	.word	0x7fefffff
 8003240:	0800752c 	.word	0x0800752c
 8003244:	08007528 	.word	0x08007528
 8003248:	0800754c 	.word	0x0800754c
 800324c:	08007538 	.word	0x08007538
 8003250:	08007568 	.word	0x08007568
 8003254:	0800757c 	.word	0x0800757c
 8003258:	f10b 0b08 	add.w	fp, fp, #8
 800325c:	3d10      	subs	r5, #16
 800325e:	2d10      	cmp	r5, #16
 8003260:	f340 82c7 	ble.w	80037f2 <_vfprintf_r+0xfca>
 8003264:	3201      	adds	r2, #1
 8003266:	3310      	adds	r3, #16
 8003268:	2a07      	cmp	r2, #7
 800326a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800326e:	e9cb 4600 	strd	r4, r6, [fp]
 8003272:	ddf1      	ble.n	8003258 <_vfprintf_r+0xa30>
 8003274:	aa2a      	add	r2, sp, #168	; 0xa8
 8003276:	4649      	mov	r1, r9
 8003278:	4638      	mov	r0, r7
 800327a:	f003 fe03 	bl	8006e84 <__sprint_r>
 800327e:	2800      	cmp	r0, #0
 8003280:	d14c      	bne.n	800331c <_vfprintf_r+0xaf4>
 8003282:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003286:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800328a:	e7e7      	b.n	800325c <_vfprintf_r+0xa34>
 800328c:	9b06      	ldr	r3, [sp, #24]
 800328e:	9a04      	ldr	r2, [sp, #16]
 8003290:	1a9d      	subs	r5, r3, r2
 8003292:	2d00      	cmp	r5, #0
 8003294:	f77f acc9 	ble.w	8002c2a <_vfprintf_r+0x402>
 8003298:	2d10      	cmp	r5, #16
 800329a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800329c:	4bbc      	ldr	r3, [pc, #752]	; (8003590 <_vfprintf_r+0xd68>)
 800329e:	dd27      	ble.n	80032f0 <_vfprintf_r+0xac8>
 80032a0:	4659      	mov	r1, fp
 80032a2:	4620      	mov	r0, r4
 80032a4:	46bb      	mov	fp, r7
 80032a6:	461c      	mov	r4, r3
 80032a8:	4637      	mov	r7, r6
 80032aa:	9e07      	ldr	r6, [sp, #28]
 80032ac:	e004      	b.n	80032b8 <_vfprintf_r+0xa90>
 80032ae:	3d10      	subs	r5, #16
 80032b0:	2d10      	cmp	r5, #16
 80032b2:	f101 0108 	add.w	r1, r1, #8
 80032b6:	dd16      	ble.n	80032e6 <_vfprintf_r+0xabe>
 80032b8:	3201      	adds	r2, #1
 80032ba:	3010      	adds	r0, #16
 80032bc:	2310      	movs	r3, #16
 80032be:	2a07      	cmp	r2, #7
 80032c0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80032c4:	600c      	str	r4, [r1, #0]
 80032c6:	604b      	str	r3, [r1, #4]
 80032c8:	ddf1      	ble.n	80032ae <_vfprintf_r+0xa86>
 80032ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80032cc:	4631      	mov	r1, r6
 80032ce:	9803      	ldr	r0, [sp, #12]
 80032d0:	f003 fdd8 	bl	8006e84 <__sprint_r>
 80032d4:	2800      	cmp	r0, #0
 80032d6:	f040 80a8 	bne.w	800342a <_vfprintf_r+0xc02>
 80032da:	3d10      	subs	r5, #16
 80032dc:	2d10      	cmp	r5, #16
 80032de:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80032e2:	a92d      	add	r1, sp, #180	; 0xb4
 80032e4:	dce8      	bgt.n	80032b8 <_vfprintf_r+0xa90>
 80032e6:	463e      	mov	r6, r7
 80032e8:	4623      	mov	r3, r4
 80032ea:	465f      	mov	r7, fp
 80032ec:	4604      	mov	r4, r0
 80032ee:	468b      	mov	fp, r1
 80032f0:	3201      	adds	r2, #1
 80032f2:	442c      	add	r4, r5
 80032f4:	2a07      	cmp	r2, #7
 80032f6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80032fa:	e9cb 3500 	strd	r3, r5, [fp]
 80032fe:	f300 8292 	bgt.w	8003826 <_vfprintf_r+0xffe>
 8003302:	f10b 0b08 	add.w	fp, fp, #8
 8003306:	e490      	b.n	8002c2a <_vfprintf_r+0x402>
 8003308:	aa2a      	add	r2, sp, #168	; 0xa8
 800330a:	9907      	ldr	r1, [sp, #28]
 800330c:	9803      	ldr	r0, [sp, #12]
 800330e:	f003 fdb9 	bl	8006e84 <__sprint_r>
 8003312:	2800      	cmp	r0, #0
 8003314:	f43f ad23 	beq.w	8002d5e <_vfprintf_r+0x536>
 8003318:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800331c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800331e:	b111      	cbz	r1, 8003326 <_vfprintf_r+0xafe>
 8003320:	9803      	ldr	r0, [sp, #12]
 8003322:	f002 f9c1 	bl	80056a8 <_free_r>
 8003326:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800332a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800332e:	07d0      	lsls	r0, r2, #31
 8003330:	d402      	bmi.n	8003338 <_vfprintf_r+0xb10>
 8003332:	0599      	lsls	r1, r3, #22
 8003334:	f140 81d0 	bpl.w	80036d8 <_vfprintf_r+0xeb0>
 8003338:	065a      	lsls	r2, r3, #25
 800333a:	f53f ab65 	bmi.w	8002a08 <_vfprintf_r+0x1e0>
 800333e:	9805      	ldr	r0, [sp, #20]
 8003340:	b057      	add	sp, #348	; 0x15c
 8003342:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8003346:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003348:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800334a:	2a01      	cmp	r2, #1
 800334c:	f104 0401 	add.w	r4, r4, #1
 8003350:	f103 0501 	add.w	r5, r3, #1
 8003354:	f10b 0608 	add.w	r6, fp, #8
 8003358:	f340 811c 	ble.w	8003594 <_vfprintf_r+0xd6c>
 800335c:	2301      	movs	r3, #1
 800335e:	2d07      	cmp	r5, #7
 8003360:	f8cb 7000 	str.w	r7, [fp]
 8003364:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8003368:	f8cb 3004 	str.w	r3, [fp, #4]
 800336c:	f300 81bb 	bgt.w	80036e6 <_vfprintf_r+0xebe>
 8003370:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8003372:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8003374:	1c69      	adds	r1, r5, #1
 8003376:	441c      	add	r4, r3
 8003378:	2907      	cmp	r1, #7
 800337a:	910b      	str	r1, [sp, #44]	; 0x2c
 800337c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8003380:	e9c6 2300 	strd	r2, r3, [r6]
 8003384:	f300 81bb 	bgt.w	80036fe <_vfprintf_r+0xed6>
 8003388:	3608      	adds	r6, #8
 800338a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800338c:	1c53      	adds	r3, r2, #1
 800338e:	461d      	mov	r5, r3
 8003390:	9509      	str	r5, [sp, #36]	; 0x24
 8003392:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8003394:	930e      	str	r3, [sp, #56]	; 0x38
 8003396:	2200      	movs	r2, #0
 8003398:	2300      	movs	r3, #0
 800339a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800339e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 80033a2:	f106 0b08 	add.w	fp, r6, #8
 80033a6:	f7fd fe2f 	bl	8001008 <__aeabi_dcmpeq>
 80033aa:	2800      	cmp	r0, #0
 80033ac:	f040 80c2 	bne.w	8003534 <_vfprintf_r+0xd0c>
 80033b0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80033b2:	f8c6 9004 	str.w	r9, [r6, #4]
 80033b6:	3701      	adds	r7, #1
 80033b8:	444c      	add	r4, r9
 80033ba:	2d07      	cmp	r5, #7
 80033bc:	6037      	str	r7, [r6, #0]
 80033be:	942c      	str	r4, [sp, #176]	; 0xb0
 80033c0:	952b      	str	r5, [sp, #172]	; 0xac
 80033c2:	f300 80f9 	bgt.w	80035b8 <_vfprintf_r+0xd90>
 80033c6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80033c8:	f106 0310 	add.w	r3, r6, #16
 80033cc:	3202      	adds	r2, #2
 80033ce:	465e      	mov	r6, fp
 80033d0:	9209      	str	r2, [sp, #36]	; 0x24
 80033d2:	469b      	mov	fp, r3
 80033d4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80033d6:	6072      	str	r2, [r6, #4]
 80033d8:	4414      	add	r4, r2
 80033da:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80033dc:	942c      	str	r4, [sp, #176]	; 0xb0
 80033de:	ab26      	add	r3, sp, #152	; 0x98
 80033e0:	2a07      	cmp	r2, #7
 80033e2:	922b      	str	r2, [sp, #172]	; 0xac
 80033e4:	6033      	str	r3, [r6, #0]
 80033e6:	f77f ac70 	ble.w	8002cca <_vfprintf_r+0x4a2>
 80033ea:	aa2a      	add	r2, sp, #168	; 0xa8
 80033ec:	9907      	ldr	r1, [sp, #28]
 80033ee:	9803      	ldr	r0, [sp, #12]
 80033f0:	f003 fd48 	bl	8006e84 <__sprint_r>
 80033f4:	2800      	cmp	r0, #0
 80033f6:	d18f      	bne.n	8003318 <_vfprintf_r+0xaf0>
 80033f8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80033fa:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80033fe:	e464      	b.n	8002cca <_vfprintf_r+0x4a2>
 8003400:	9817      	ldr	r0, [sp, #92]	; 0x5c
 8003402:	af56      	add	r7, sp, #344	; 0x158
 8003404:	0923      	lsrs	r3, r4, #4
 8003406:	f004 010f 	and.w	r1, r4, #15
 800340a:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 800340e:	092a      	lsrs	r2, r5, #4
 8003410:	461c      	mov	r4, r3
 8003412:	4615      	mov	r5, r2
 8003414:	5c43      	ldrb	r3, [r0, r1]
 8003416:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800341a:	ea54 0305 	orrs.w	r3, r4, r5
 800341e:	d1f1      	bne.n	8003404 <_vfprintf_r+0xbdc>
 8003420:	9b04      	ldr	r3, [sp, #16]
 8003422:	1bdb      	subs	r3, r3, r7
 8003424:	9309      	str	r3, [sp, #36]	; 0x24
 8003426:	f7ff bb80 	b.w	8002b2a <_vfprintf_r+0x302>
 800342a:	46b1      	mov	r9, r6
 800342c:	e776      	b.n	800331c <_vfprintf_r+0xaf4>
 800342e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003430:	9907      	ldr	r1, [sp, #28]
 8003432:	9803      	ldr	r0, [sp, #12]
 8003434:	f003 fd26 	bl	8006e84 <__sprint_r>
 8003438:	2800      	cmp	r0, #0
 800343a:	f47f af6d 	bne.w	8003318 <_vfprintf_r+0xaf0>
 800343e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003440:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003444:	f7ff bbdd 	b.w	8002c02 <_vfprintf_r+0x3da>
 8003448:	aa2a      	add	r2, sp, #168	; 0xa8
 800344a:	9907      	ldr	r1, [sp, #28]
 800344c:	9803      	ldr	r0, [sp, #12]
 800344e:	f003 fd19 	bl	8006e84 <__sprint_r>
 8003452:	2800      	cmp	r0, #0
 8003454:	f47f af60 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8003458:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800345a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800345e:	f7ff bbe0 	b.w	8002c22 <_vfprintf_r+0x3fa>
 8003462:	4698      	mov	r8, r3
 8003464:	2d00      	cmp	r5, #0
 8003466:	bf08      	it	eq
 8003468:	2c0a      	cmpeq	r4, #10
 800346a:	f080 8170 	bcs.w	800374e <_vfprintf_r+0xf26>
 800346e:	af56      	add	r7, sp, #344	; 0x158
 8003470:	3430      	adds	r4, #48	; 0x30
 8003472:	2301      	movs	r3, #1
 8003474:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8003478:	9309      	str	r3, [sp, #36]	; 0x24
 800347a:	f7ff bb56 	b.w	8002b2a <_vfprintf_r+0x302>
 800347e:	aa2a      	add	r2, sp, #168	; 0xa8
 8003480:	9907      	ldr	r1, [sp, #28]
 8003482:	9803      	ldr	r0, [sp, #12]
 8003484:	f003 fcfe 	bl	8006e84 <__sprint_r>
 8003488:	2800      	cmp	r0, #0
 800348a:	f47f af45 	bne.w	8003318 <_vfprintf_r+0xaf0>
 800348e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003490:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003494:	e406      	b.n	8002ca4 <_vfprintf_r+0x47c>
 8003496:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003498:	2b00      	cmp	r3, #0
 800349a:	f340 8273 	ble.w	8003984 <_vfprintf_r+0x115c>
 800349e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 80034a2:	4293      	cmp	r3, r2
 80034a4:	bfa8      	it	ge
 80034a6:	4613      	movge	r3, r2
 80034a8:	2b00      	cmp	r3, #0
 80034aa:	461d      	mov	r5, r3
 80034ac:	dd0d      	ble.n	80034ca <_vfprintf_r+0xca2>
 80034ae:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80034b0:	f8cb 7000 	str.w	r7, [fp]
 80034b4:	3301      	adds	r3, #1
 80034b6:	442c      	add	r4, r5
 80034b8:	2b07      	cmp	r3, #7
 80034ba:	942c      	str	r4, [sp, #176]	; 0xb0
 80034bc:	f8cb 5004 	str.w	r5, [fp, #4]
 80034c0:	932b      	str	r3, [sp, #172]	; 0xac
 80034c2:	f300 82c1 	bgt.w	8003a48 <_vfprintf_r+0x1220>
 80034c6:	f10b 0b08 	add.w	fp, fp, #8
 80034ca:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80034cc:	2d00      	cmp	r5, #0
 80034ce:	bfa8      	it	ge
 80034d0:	1b5b      	subge	r3, r3, r5
 80034d2:	2b00      	cmp	r3, #0
 80034d4:	461d      	mov	r5, r3
 80034d6:	f340 8099 	ble.w	800360c <_vfprintf_r+0xde4>
 80034da:	2d10      	cmp	r5, #16
 80034dc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80034de:	4b2c      	ldr	r3, [pc, #176]	; (8003590 <_vfprintf_r+0xd68>)
 80034e0:	f340 83db 	ble.w	8003c9a <_vfprintf_r+0x1472>
 80034e4:	4618      	mov	r0, r3
 80034e6:	4621      	mov	r1, r4
 80034e8:	465b      	mov	r3, fp
 80034ea:	2610      	movs	r6, #16
 80034ec:	46bb      	mov	fp, r7
 80034ee:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80034f2:	9c07      	ldr	r4, [sp, #28]
 80034f4:	4607      	mov	r7, r0
 80034f6:	e004      	b.n	8003502 <_vfprintf_r+0xcda>
 80034f8:	3308      	adds	r3, #8
 80034fa:	3d10      	subs	r5, #16
 80034fc:	2d10      	cmp	r5, #16
 80034fe:	f340 83c7 	ble.w	8003c90 <_vfprintf_r+0x1468>
 8003502:	3201      	adds	r2, #1
 8003504:	3110      	adds	r1, #16
 8003506:	2a07      	cmp	r2, #7
 8003508:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 800350c:	e9c3 7600 	strd	r7, r6, [r3]
 8003510:	ddf2      	ble.n	80034f8 <_vfprintf_r+0xcd0>
 8003512:	aa2a      	add	r2, sp, #168	; 0xa8
 8003514:	4621      	mov	r1, r4
 8003516:	4648      	mov	r0, r9
 8003518:	f003 fcb4 	bl	8006e84 <__sprint_r>
 800351c:	2800      	cmp	r0, #0
 800351e:	f040 84a5 	bne.w	8003e6c <_vfprintf_r+0x1644>
 8003522:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8003526:	ab2d      	add	r3, sp, #180	; 0xb4
 8003528:	e7e7      	b.n	80034fa <_vfprintf_r+0xcd2>
 800352a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800352e:	af56      	add	r7, sp, #344	; 0x158
 8003530:	f7ff bafb 	b.w	8002b2a <_vfprintf_r+0x302>
 8003534:	f1b9 0f00 	cmp.w	r9, #0
 8003538:	f77f af4c 	ble.w	80033d4 <_vfprintf_r+0xbac>
 800353c:	f1b9 0f10 	cmp.w	r9, #16
 8003540:	4b13      	ldr	r3, [pc, #76]	; (8003590 <_vfprintf_r+0xd68>)
 8003542:	f340 8659 	ble.w	80041f8 <_vfprintf_r+0x19d0>
 8003546:	4619      	mov	r1, r3
 8003548:	4622      	mov	r2, r4
 800354a:	4633      	mov	r3, r6
 800354c:	2710      	movs	r7, #16
 800354e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8003552:	9c07      	ldr	r4, [sp, #28]
 8003554:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8003556:	460e      	mov	r6, r1
 8003558:	e007      	b.n	800356a <_vfprintf_r+0xd42>
 800355a:	3308      	adds	r3, #8
 800355c:	f1a9 0910 	sub.w	r9, r9, #16
 8003560:	f1b9 0f10 	cmp.w	r9, #16
 8003564:	f340 8353 	ble.w	8003c0e <_vfprintf_r+0x13e6>
 8003568:	3501      	adds	r5, #1
 800356a:	3210      	adds	r2, #16
 800356c:	2d07      	cmp	r5, #7
 800356e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8003572:	e9c3 6700 	strd	r6, r7, [r3]
 8003576:	ddf0      	ble.n	800355a <_vfprintf_r+0xd32>
 8003578:	aa2a      	add	r2, sp, #168	; 0xa8
 800357a:	4621      	mov	r1, r4
 800357c:	4658      	mov	r0, fp
 800357e:	f003 fc81 	bl	8006e84 <__sprint_r>
 8003582:	2800      	cmp	r0, #0
 8003584:	f040 8472 	bne.w	8003e6c <_vfprintf_r+0x1644>
 8003588:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800358c:	ab2d      	add	r3, sp, #180	; 0xb4
 800358e:	e7e5      	b.n	800355c <_vfprintf_r+0xd34>
 8003590:	0800757c 	.word	0x0800757c
 8003594:	f018 0f01 	tst.w	r8, #1
 8003598:	f47f aee0 	bne.w	800335c <_vfprintf_r+0xb34>
 800359c:	2201      	movs	r2, #1
 800359e:	2d07      	cmp	r5, #7
 80035a0:	f8cb 7000 	str.w	r7, [fp]
 80035a4:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 80035a8:	f8cb 2004 	str.w	r2, [fp, #4]
 80035ac:	dc04      	bgt.n	80035b8 <_vfprintf_r+0xd90>
 80035ae:	3302      	adds	r3, #2
 80035b0:	9309      	str	r3, [sp, #36]	; 0x24
 80035b2:	f10b 0b10 	add.w	fp, fp, #16
 80035b6:	e70d      	b.n	80033d4 <_vfprintf_r+0xbac>
 80035b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80035ba:	9907      	ldr	r1, [sp, #28]
 80035bc:	9803      	ldr	r0, [sp, #12]
 80035be:	f003 fc61 	bl	8006e84 <__sprint_r>
 80035c2:	2800      	cmp	r0, #0
 80035c4:	f47f aea8 	bne.w	8003318 <_vfprintf_r+0xaf0>
 80035c8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80035cc:	3301      	adds	r3, #1
 80035ce:	9309      	str	r3, [sp, #36]	; 0x24
 80035d0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80035d4:	ae2d      	add	r6, sp, #180	; 0xb4
 80035d6:	e6fd      	b.n	80033d4 <_vfprintf_r+0xbac>
 80035d8:	aa2a      	add	r2, sp, #168	; 0xa8
 80035da:	9907      	ldr	r1, [sp, #28]
 80035dc:	9803      	ldr	r0, [sp, #12]
 80035de:	f003 fc51 	bl	8006e84 <__sprint_r>
 80035e2:	2800      	cmp	r0, #0
 80035e4:	f47f ae98 	bne.w	8003318 <_vfprintf_r+0xaf0>
 80035e8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80035ec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80035ee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80035f2:	f7ff baf6 	b.w	8002be2 <_vfprintf_r+0x3ba>
 80035f6:	aa2a      	add	r2, sp, #168	; 0xa8
 80035f8:	9907      	ldr	r1, [sp, #28]
 80035fa:	9803      	ldr	r0, [sp, #12]
 80035fc:	f003 fc42 	bl	8006e84 <__sprint_r>
 8003600:	2800      	cmp	r0, #0
 8003602:	f47f ae89 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8003606:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003608:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800360c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800360e:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8003612:	443b      	add	r3, r7
 8003614:	4699      	mov	r9, r3
 8003616:	f040 8357 	bne.w	8003cc8 <_vfprintf_r+0x14a0>
 800361a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800361c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800361e:	4293      	cmp	r3, r2
 8003620:	db49      	blt.n	80036b6 <_vfprintf_r+0xe8e>
 8003622:	f018 0f01 	tst.w	r8, #1
 8003626:	d146      	bne.n	80036b6 <_vfprintf_r+0xe8e>
 8003628:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800362a:	18bd      	adds	r5, r7, r2
 800362c:	eba5 0509 	sub.w	r5, r5, r9
 8003630:	1ad3      	subs	r3, r2, r3
 8003632:	429d      	cmp	r5, r3
 8003634:	bfa8      	it	ge
 8003636:	461d      	movge	r5, r3
 8003638:	2d00      	cmp	r5, #0
 800363a:	dd0d      	ble.n	8003658 <_vfprintf_r+0xe30>
 800363c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800363e:	f8cb 9000 	str.w	r9, [fp]
 8003642:	3201      	adds	r2, #1
 8003644:	442c      	add	r4, r5
 8003646:	2a07      	cmp	r2, #7
 8003648:	942c      	str	r4, [sp, #176]	; 0xb0
 800364a:	f8cb 5004 	str.w	r5, [fp, #4]
 800364e:	922b      	str	r2, [sp, #172]	; 0xac
 8003650:	f300 8462 	bgt.w	8003f18 <_vfprintf_r+0x16f0>
 8003654:	f10b 0b08 	add.w	fp, fp, #8
 8003658:	2d00      	cmp	r5, #0
 800365a:	bfac      	ite	ge
 800365c:	1b5d      	subge	r5, r3, r5
 800365e:	461d      	movlt	r5, r3
 8003660:	2d00      	cmp	r5, #0
 8003662:	f77f ab32 	ble.w	8002cca <_vfprintf_r+0x4a2>
 8003666:	2d10      	cmp	r5, #16
 8003668:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800366a:	4bc5      	ldr	r3, [pc, #788]	; (8003980 <_vfprintf_r+0x1158>)
 800366c:	f340 80c4 	ble.w	80037f8 <_vfprintf_r+0xfd0>
 8003670:	4619      	mov	r1, r3
 8003672:	2610      	movs	r6, #16
 8003674:	4623      	mov	r3, r4
 8003676:	9f03      	ldr	r7, [sp, #12]
 8003678:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800367c:	460c      	mov	r4, r1
 800367e:	e005      	b.n	800368c <_vfprintf_r+0xe64>
 8003680:	f10b 0b08 	add.w	fp, fp, #8
 8003684:	3d10      	subs	r5, #16
 8003686:	2d10      	cmp	r5, #16
 8003688:	f340 80b3 	ble.w	80037f2 <_vfprintf_r+0xfca>
 800368c:	3201      	adds	r2, #1
 800368e:	3310      	adds	r3, #16
 8003690:	2a07      	cmp	r2, #7
 8003692:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003696:	e9cb 4600 	strd	r4, r6, [fp]
 800369a:	ddf1      	ble.n	8003680 <_vfprintf_r+0xe58>
 800369c:	aa2a      	add	r2, sp, #168	; 0xa8
 800369e:	4649      	mov	r1, r9
 80036a0:	4638      	mov	r0, r7
 80036a2:	f003 fbef 	bl	8006e84 <__sprint_r>
 80036a6:	2800      	cmp	r0, #0
 80036a8:	f47f ae38 	bne.w	800331c <_vfprintf_r+0xaf4>
 80036ac:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80036b0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80036b4:	e7e6      	b.n	8003684 <_vfprintf_r+0xe5c>
 80036b6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80036b8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80036ba:	f8cb 1000 	str.w	r1, [fp]
 80036be:	9915      	ldr	r1, [sp, #84]	; 0x54
 80036c0:	f8cb 1004 	str.w	r1, [fp, #4]
 80036c4:	3201      	adds	r2, #1
 80036c6:	440c      	add	r4, r1
 80036c8:	2a07      	cmp	r2, #7
 80036ca:	942c      	str	r4, [sp, #176]	; 0xb0
 80036cc:	922b      	str	r2, [sp, #172]	; 0xac
 80036ce:	f300 828c 	bgt.w	8003bea <_vfprintf_r+0x13c2>
 80036d2:	f10b 0b08 	add.w	fp, fp, #8
 80036d6:	e7a7      	b.n	8003628 <_vfprintf_r+0xe00>
 80036d8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80036dc:	f002 fa94 	bl	8005c08 <__retarget_lock_release_recursive>
 80036e0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80036e4:	e628      	b.n	8003338 <_vfprintf_r+0xb10>
 80036e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80036e8:	9907      	ldr	r1, [sp, #28]
 80036ea:	9803      	ldr	r0, [sp, #12]
 80036ec:	f003 fbca 	bl	8006e84 <__sprint_r>
 80036f0:	2800      	cmp	r0, #0
 80036f2:	f47f ae11 	bne.w	8003318 <_vfprintf_r+0xaf0>
 80036f6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80036fa:	ae2d      	add	r6, sp, #180	; 0xb4
 80036fc:	e638      	b.n	8003370 <_vfprintf_r+0xb48>
 80036fe:	aa2a      	add	r2, sp, #168	; 0xa8
 8003700:	9907      	ldr	r1, [sp, #28]
 8003702:	9803      	ldr	r0, [sp, #12]
 8003704:	f003 fbbe 	bl	8006e84 <__sprint_r>
 8003708:	2800      	cmp	r0, #0
 800370a:	f47f ae05 	bne.w	8003318 <_vfprintf_r+0xaf0>
 800370e:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8003712:	ae2d      	add	r6, sp, #180	; 0xb4
 8003714:	930b      	str	r3, [sp, #44]	; 0x2c
 8003716:	e638      	b.n	800338a <_vfprintf_r+0xb62>
 8003718:	6814      	ldr	r4, [r2, #0]
 800371a:	9308      	str	r3, [sp, #32]
 800371c:	2500      	movs	r5, #0
 800371e:	f7ff bb95 	b.w	8002e4c <_vfprintf_r+0x624>
 8003722:	6814      	ldr	r4, [r2, #0]
 8003724:	9308      	str	r3, [sp, #32]
 8003726:	2500      	movs	r5, #0
 8003728:	f7ff b9ae 	b.w	8002a88 <_vfprintf_r+0x260>
 800372c:	680c      	ldr	r4, [r1, #0]
 800372e:	9208      	str	r2, [sp, #32]
 8003730:	17e5      	asrs	r5, r4, #31
 8003732:	4620      	mov	r0, r4
 8003734:	4629      	mov	r1, r5
 8003736:	f7ff b9d2 	b.w	8002ade <_vfprintf_r+0x2b6>
 800373a:	6814      	ldr	r4, [r2, #0]
 800373c:	9108      	str	r1, [sp, #32]
 800373e:	2201      	movs	r2, #1
 8003740:	2500      	movs	r5, #0
 8003742:	f7ff bb32 	b.w	8002daa <_vfprintf_r+0x582>
 8003746:	2a01      	cmp	r2, #1
 8003748:	f47f ab3c 	bne.w	8002dc4 <_vfprintf_r+0x59c>
 800374c:	e68f      	b.n	800346e <_vfprintf_r+0xc46>
 800374e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8003752:	2200      	movs	r2, #0
 8003754:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8003758:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 800375c:	af56      	add	r7, sp, #344	; 0x158
 800375e:	4692      	mov	sl, r2
 8003760:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8003764:	461e      	mov	r6, r3
 8003766:	e00a      	b.n	800377e <_vfprintf_r+0xf56>
 8003768:	2300      	movs	r3, #0
 800376a:	4620      	mov	r0, r4
 800376c:	4629      	mov	r1, r5
 800376e:	220a      	movs	r2, #10
 8003770:	f7fc fd46 	bl	8000200 <__aeabi_uldivmod>
 8003774:	4604      	mov	r4, r0
 8003776:	460d      	mov	r5, r1
 8003778:	ea54 0305 	orrs.w	r3, r4, r5
 800377c:	d029      	beq.n	80037d2 <_vfprintf_r+0xfaa>
 800377e:	220a      	movs	r2, #10
 8003780:	2300      	movs	r3, #0
 8003782:	4620      	mov	r0, r4
 8003784:	4629      	mov	r1, r5
 8003786:	f7fc fd3b 	bl	8000200 <__aeabi_uldivmod>
 800378a:	3230      	adds	r2, #48	; 0x30
 800378c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8003790:	f10a 0a01 	add.w	sl, sl, #1
 8003794:	3f01      	subs	r7, #1
 8003796:	2e00      	cmp	r6, #0
 8003798:	d0e6      	beq.n	8003768 <_vfprintf_r+0xf40>
 800379a:	f898 3000 	ldrb.w	r3, [r8]
 800379e:	459a      	cmp	sl, r3
 80037a0:	d1e2      	bne.n	8003768 <_vfprintf_r+0xf40>
 80037a2:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 80037a6:	d0df      	beq.n	8003768 <_vfprintf_r+0xf40>
 80037a8:	2d00      	cmp	r5, #0
 80037aa:	bf08      	it	eq
 80037ac:	2c0a      	cmpeq	r4, #10
 80037ae:	d3db      	bcc.n	8003768 <_vfprintf_r+0xf40>
 80037b0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 80037b2:	9918      	ldr	r1, [sp, #96]	; 0x60
 80037b4:	1aff      	subs	r7, r7, r3
 80037b6:	461a      	mov	r2, r3
 80037b8:	4638      	mov	r0, r7
 80037ba:	f003 faf5 	bl	8006da8 <strncpy>
 80037be:	f898 3001 	ldrb.w	r3, [r8, #1]
 80037c2:	2b00      	cmp	r3, #0
 80037c4:	f000 8496 	beq.w	80040f4 <_vfprintf_r+0x18cc>
 80037c8:	f108 0801 	add.w	r8, r8, #1
 80037cc:	f04f 0a00 	mov.w	sl, #0
 80037d0:	e7ca      	b.n	8003768 <_vfprintf_r+0xf40>
 80037d2:	9b04      	ldr	r3, [sp, #16]
 80037d4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80037d8:	1bdb      	subs	r3, r3, r7
 80037da:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 80037de:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80037e0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 80037e4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 80037e8:	9309      	str	r3, [sp, #36]	; 0x24
 80037ea:	f7ff b99e 	b.w	8002b2a <_vfprintf_r+0x302>
 80037ee:	46c1      	mov	r9, r8
 80037f0:	e594      	b.n	800331c <_vfprintf_r+0xaf4>
 80037f2:	4621      	mov	r1, r4
 80037f4:	461c      	mov	r4, r3
 80037f6:	460b      	mov	r3, r1
 80037f8:	3201      	adds	r2, #1
 80037fa:	442c      	add	r4, r5
 80037fc:	2a07      	cmp	r2, #7
 80037fe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003802:	e9cb 3500 	strd	r3, r5, [fp]
 8003806:	f77f aa5e 	ble.w	8002cc6 <_vfprintf_r+0x49e>
 800380a:	e5ee      	b.n	80033ea <_vfprintf_r+0xbc2>
 800380c:	f018 0f10 	tst.w	r8, #16
 8003810:	f040 80f8 	bne.w	8003a04 <_vfprintf_r+0x11dc>
 8003814:	f018 0f40 	tst.w	r8, #64	; 0x40
 8003818:	f000 8351 	beq.w	8003ebe <_vfprintf_r+0x1696>
 800381c:	9a05      	ldr	r2, [sp, #20]
 800381e:	801a      	strh	r2, [r3, #0]
 8003820:	4657      	mov	r7, sl
 8003822:	f7ff baa7 	b.w	8002d74 <_vfprintf_r+0x54c>
 8003826:	aa2a      	add	r2, sp, #168	; 0xa8
 8003828:	9907      	ldr	r1, [sp, #28]
 800382a:	9803      	ldr	r0, [sp, #12]
 800382c:	f003 fb2a 	bl	8006e84 <__sprint_r>
 8003830:	2800      	cmp	r0, #0
 8003832:	f47f ad71 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8003836:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003838:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800383c:	f7ff b9f5 	b.w	8002c2a <_vfprintf_r+0x402>
 8003840:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8003844:	4602      	mov	r2, r0
 8003846:	460b      	mov	r3, r1
 8003848:	f7fd fc10 	bl	800106c <__aeabi_dcmpun>
 800384c:	2800      	cmp	r0, #0
 800384e:	f040 8491 	bne.w	8004174 <_vfprintf_r+0x194c>
 8003852:	2e61      	cmp	r6, #97	; 0x61
 8003854:	f000 8111 	beq.w	8003a7a <_vfprintf_r+0x1252>
 8003858:	2e41      	cmp	r6, #65	; 0x41
 800385a:	f000 8377 	beq.w	8003f4c <_vfprintf_r+0x1724>
 800385e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8003862:	f026 0220 	bic.w	r2, r6, #32
 8003866:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 800386a:	930e      	str	r3, [sp, #56]	; 0x38
 800386c:	9204      	str	r2, [sp, #16]
 800386e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003870:	f000 842d 	beq.w	80040ce <_vfprintf_r+0x18a6>
 8003874:	2a47      	cmp	r2, #71	; 0x47
 8003876:	f000 8424 	beq.w	80040c2 <_vfprintf_r+0x189a>
 800387a:	2b00      	cmp	r3, #0
 800387c:	f2c0 82f9 	blt.w	8003e72 <_vfprintf_r+0x164a>
 8003880:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003884:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8003888:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 800388c:	2e66      	cmp	r6, #102	; 0x66
 800388e:	f000 83eb 	beq.w	8004068 <_vfprintf_r+0x1840>
 8003892:	2e46      	cmp	r6, #70	; 0x46
 8003894:	f000 847e 	beq.w	8004194 <_vfprintf_r+0x196c>
 8003898:	9b04      	ldr	r3, [sp, #16]
 800389a:	9803      	ldr	r0, [sp, #12]
 800389c:	2b45      	cmp	r3, #69	; 0x45
 800389e:	bf0c      	ite	eq
 80038a0:	f109 0501 	addeq.w	r5, r9, #1
 80038a4:	464d      	movne	r5, r9
 80038a6:	aa28      	add	r2, sp, #160	; 0xa0
 80038a8:	ab25      	add	r3, sp, #148	; 0x94
 80038aa:	e9cd 3200 	strd	r3, r2, [sp]
 80038ae:	2102      	movs	r1, #2
 80038b0:	ab24      	add	r3, sp, #144	; 0x90
 80038b2:	462a      	mov	r2, r5
 80038b4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80038b8:	f000 fe3e 	bl	8004538 <_dtoa_r>
 80038bc:	2e67      	cmp	r6, #103	; 0x67
 80038be:	4607      	mov	r7, r0
 80038c0:	f040 849c 	bne.w	80041fc <_vfprintf_r+0x19d4>
 80038c4:	f018 0f01 	tst.w	r8, #1
 80038c8:	f040 83f9 	bne.w	80040be <_vfprintf_r+0x1896>
 80038cc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80038ce:	4640      	mov	r0, r8
 80038d0:	1bdb      	subs	r3, r3, r7
 80038d2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80038d6:	9310      	str	r3, [sp, #64]	; 0x40
 80038d8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80038da:	9311      	str	r3, [sp, #68]	; 0x44
 80038dc:	9b04      	ldr	r3, [sp, #16]
 80038de:	2b47      	cmp	r3, #71	; 0x47
 80038e0:	f000 81e7 	beq.w	8003cb2 <_vfprintf_r+0x148a>
 80038e4:	9b04      	ldr	r3, [sp, #16]
 80038e6:	2b46      	cmp	r3, #70	; 0x46
 80038e8:	f000 8300 	beq.w	8003eec <_vfprintf_r+0x16c4>
 80038ec:	9904      	ldr	r1, [sp, #16]
 80038ee:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80038f0:	b2f2      	uxtb	r2, r6
 80038f2:	2941      	cmp	r1, #65	; 0x41
 80038f4:	bf08      	it	eq
 80038f6:	320f      	addeq	r2, #15
 80038f8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 80038fc:	bf06      	itte	eq
 80038fe:	b2d2      	uxtbeq	r2, r2
 8003900:	2101      	moveq	r1, #1
 8003902:	2100      	movne	r1, #0
 8003904:	2b00      	cmp	r3, #0
 8003906:	9324      	str	r3, [sp, #144]	; 0x90
 8003908:	bfb8      	it	lt
 800390a:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 800390c:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8003910:	bfba      	itte	lt
 8003912:	f1c3 0301 	rsblt	r3, r3, #1
 8003916:	222d      	movlt	r2, #45	; 0x2d
 8003918:	222b      	movge	r2, #43	; 0x2b
 800391a:	2b09      	cmp	r3, #9
 800391c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8003920:	f300 83f9 	bgt.w	8004116 <_vfprintf_r+0x18ee>
 8003924:	2900      	cmp	r1, #0
 8003926:	f040 8487 	bne.w	8004238 <_vfprintf_r+0x1a10>
 800392a:	2230      	movs	r2, #48	; 0x30
 800392c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8003930:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8003934:	3330      	adds	r3, #48	; 0x30
 8003936:	7013      	strb	r3, [r2, #0]
 8003938:	1c53      	adds	r3, r2, #1
 800393a:	aa26      	add	r2, sp, #152	; 0x98
 800393c:	1a9b      	subs	r3, r3, r2
 800393e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003940:	9319      	str	r3, [sp, #100]	; 0x64
 8003942:	2a01      	cmp	r2, #1
 8003944:	4413      	add	r3, r2
 8003946:	9309      	str	r3, [sp, #36]	; 0x24
 8003948:	f340 8442 	ble.w	80041d0 <_vfprintf_r+0x19a8>
 800394c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800394e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003950:	4413      	add	r3, r2
 8003952:	9309      	str	r3, [sp, #36]	; 0x24
 8003954:	2300      	movs	r3, #0
 8003956:	930f      	str	r3, [sp, #60]	; 0x3c
 8003958:	9314      	str	r3, [sp, #80]	; 0x50
 800395a:	9311      	str	r3, [sp, #68]	; 0x44
 800395c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800395e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8003962:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003966:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 800396a:	9304      	str	r3, [sp, #16]
 800396c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 800396e:	2b00      	cmp	r3, #0
 8003970:	f040 8275 	bne.w	8003e5e <_vfprintf_r+0x1636>
 8003974:	4699      	mov	r9, r3
 8003976:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800397a:	f7ff b8e2 	b.w	8002b42 <_vfprintf_r+0x31a>
 800397e:	bf00      	nop
 8003980:	0800757c 	.word	0x0800757c
 8003984:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8003986:	49bd      	ldr	r1, [pc, #756]	; (8003c7c <_vfprintf_r+0x1454>)
 8003988:	f8cb 1000 	str.w	r1, [fp]
 800398c:	3201      	adds	r2, #1
 800398e:	3401      	adds	r4, #1
 8003990:	2101      	movs	r1, #1
 8003992:	2a07      	cmp	r2, #7
 8003994:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003998:	f8cb 1004 	str.w	r1, [fp, #4]
 800399c:	dc60      	bgt.n	8003a60 <_vfprintf_r+0x1238>
 800399e:	f10b 0b08 	add.w	fp, fp, #8
 80039a2:	b92b      	cbnz	r3, 80039b0 <_vfprintf_r+0x1188>
 80039a4:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80039a6:	b91a      	cbnz	r2, 80039b0 <_vfprintf_r+0x1188>
 80039a8:	f018 0f01 	tst.w	r8, #1
 80039ac:	f43f a98d 	beq.w	8002cca <_vfprintf_r+0x4a2>
 80039b0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80039b2:	9916      	ldr	r1, [sp, #88]	; 0x58
 80039b4:	f8cb 1000 	str.w	r1, [fp]
 80039b8:	9915      	ldr	r1, [sp, #84]	; 0x54
 80039ba:	f8cb 1004 	str.w	r1, [fp, #4]
 80039be:	3201      	adds	r2, #1
 80039c0:	440c      	add	r4, r1
 80039c2:	2a07      	cmp	r2, #7
 80039c4:	942c      	str	r4, [sp, #176]	; 0xb0
 80039c6:	922b      	str	r2, [sp, #172]	; 0xac
 80039c8:	f300 8282 	bgt.w	8003ed0 <_vfprintf_r+0x16a8>
 80039cc:	f10b 0b08 	add.w	fp, fp, #8
 80039d0:	2b00      	cmp	r3, #0
 80039d2:	f2c0 82e7 	blt.w	8003fa4 <_vfprintf_r+0x177c>
 80039d6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80039d8:	3201      	adds	r2, #1
 80039da:	441c      	add	r4, r3
 80039dc:	2a07      	cmp	r2, #7
 80039de:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80039e2:	e9cb 7300 	strd	r7, r3, [fp]
 80039e6:	f77f a96e 	ble.w	8002cc6 <_vfprintf_r+0x49e>
 80039ea:	e4fe      	b.n	80033ea <_vfprintf_r+0xbc2>
 80039ec:	aa2a      	add	r2, sp, #168	; 0xa8
 80039ee:	9907      	ldr	r1, [sp, #28]
 80039f0:	9803      	ldr	r0, [sp, #12]
 80039f2:	f003 fa47 	bl	8006e84 <__sprint_r>
 80039f6:	2800      	cmp	r0, #0
 80039f8:	f47f ac8e 	bne.w	8003318 <_vfprintf_r+0xaf0>
 80039fc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a00:	f7ff bbf0 	b.w	80031e4 <_vfprintf_r+0x9bc>
 8003a04:	9a05      	ldr	r2, [sp, #20]
 8003a06:	601a      	str	r2, [r3, #0]
 8003a08:	4657      	mov	r7, sl
 8003a0a:	f7ff b9b3 	b.w	8002d74 <_vfprintf_r+0x54c>
 8003a0e:	8814      	ldrh	r4, [r2, #0]
 8003a10:	9108      	str	r1, [sp, #32]
 8003a12:	2500      	movs	r5, #0
 8003a14:	2201      	movs	r2, #1
 8003a16:	f7ff b9c8 	b.w	8002daa <_vfprintf_r+0x582>
 8003a1a:	8814      	ldrh	r4, [r2, #0]
 8003a1c:	9308      	str	r3, [sp, #32]
 8003a1e:	2500      	movs	r5, #0
 8003a20:	f7ff ba14 	b.w	8002e4c <_vfprintf_r+0x624>
 8003a24:	f9b1 4000 	ldrsh.w	r4, [r1]
 8003a28:	9208      	str	r2, [sp, #32]
 8003a2a:	17e5      	asrs	r5, r4, #31
 8003a2c:	4620      	mov	r0, r4
 8003a2e:	4629      	mov	r1, r5
 8003a30:	f7ff b855 	b.w	8002ade <_vfprintf_r+0x2b6>
 8003a34:	8814      	ldrh	r4, [r2, #0]
 8003a36:	9308      	str	r3, [sp, #32]
 8003a38:	2500      	movs	r5, #0
 8003a3a:	f7ff b825 	b.w	8002a88 <_vfprintf_r+0x260>
 8003a3e:	222d      	movs	r2, #45	; 0x2d
 8003a40:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003a44:	f7ff baa2 	b.w	8002f8c <_vfprintf_r+0x764>
 8003a48:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a4a:	9907      	ldr	r1, [sp, #28]
 8003a4c:	9803      	ldr	r0, [sp, #12]
 8003a4e:	f003 fa19 	bl	8006e84 <__sprint_r>
 8003a52:	2800      	cmp	r0, #0
 8003a54:	f47f ac60 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8003a58:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a5a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a5e:	e534      	b.n	80034ca <_vfprintf_r+0xca2>
 8003a60:	aa2a      	add	r2, sp, #168	; 0xa8
 8003a62:	9907      	ldr	r1, [sp, #28]
 8003a64:	9803      	ldr	r0, [sp, #12]
 8003a66:	f003 fa0d 	bl	8006e84 <__sprint_r>
 8003a6a:	2800      	cmp	r0, #0
 8003a6c:	f47f ac54 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8003a70:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003a72:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003a74:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003a78:	e793      	b.n	80039a2 <_vfprintf_r+0x117a>
 8003a7a:	2330      	movs	r3, #48	; 0x30
 8003a7c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003a80:	2378      	movs	r3, #120	; 0x78
 8003a82:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8003a86:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8003a8a:	f048 0402 	orr.w	r4, r8, #2
 8003a8e:	f300 82b0 	bgt.w	8003ff2 <_vfprintf_r+0x17ca>
 8003a92:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8003a96:	930e      	str	r3, [sp, #56]	; 0x38
 8003a98:	f026 0320 	bic.w	r3, r6, #32
 8003a9c:	9304      	str	r3, [sp, #16]
 8003a9e:	2200      	movs	r2, #0
 8003aa0:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8003aa2:	920a      	str	r2, [sp, #40]	; 0x28
 8003aa4:	46a0      	mov	r8, r4
 8003aa6:	af3d      	add	r7, sp, #244	; 0xf4
 8003aa8:	2b00      	cmp	r3, #0
 8003aaa:	f2c0 81e3 	blt.w	8003e74 <_vfprintf_r+0x164c>
 8003aae:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8003ab2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8003ab6:	2300      	movs	r3, #0
 8003ab8:	930b      	str	r3, [sp, #44]	; 0x2c
 8003aba:	2e61      	cmp	r6, #97	; 0x61
 8003abc:	f000 8255 	beq.w	8003f6a <_vfprintf_r+0x1742>
 8003ac0:	2e41      	cmp	r6, #65	; 0x41
 8003ac2:	f47f aee3 	bne.w	800388c <_vfprintf_r+0x1064>
 8003ac6:	a824      	add	r0, sp, #144	; 0x90
 8003ac8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003acc:	f003 f8e2 	bl	8006c94 <frexp>
 8003ad0:	2200      	movs	r2, #0
 8003ad2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003ad6:	ec51 0b10 	vmov	r0, r1, d0
 8003ada:	f7fd f82d 	bl	8000b38 <__aeabi_dmul>
 8003ade:	2200      	movs	r2, #0
 8003ae0:	2300      	movs	r3, #0
 8003ae2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003ae6:	f7fd fa8f 	bl	8001008 <__aeabi_dcmpeq>
 8003aea:	2800      	cmp	r0, #0
 8003aec:	f040 8305 	bne.w	80040fa <_vfprintf_r+0x18d2>
 8003af0:	4b63      	ldr	r3, [pc, #396]	; (8003c80 <_vfprintf_r+0x1458>)
 8003af2:	9309      	str	r3, [sp, #36]	; 0x24
 8003af4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8003af8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8003afc:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8003b00:	9721      	str	r7, [sp, #132]	; 0x84
 8003b02:	46b9      	mov	r9, r7
 8003b04:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8003b08:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8003b0c:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8003b10:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8003b14:	e003      	b.n	8003b1e <_vfprintf_r+0x12f6>
 8003b16:	f7fd fa77 	bl	8001008 <__aeabi_dcmpeq>
 8003b1a:	bb20      	cbnz	r0, 8003b66 <_vfprintf_r+0x133e>
 8003b1c:	46a9      	mov	r9, r5
 8003b1e:	2200      	movs	r2, #0
 8003b20:	4b58      	ldr	r3, [pc, #352]	; (8003c84 <_vfprintf_r+0x145c>)
 8003b22:	4630      	mov	r0, r6
 8003b24:	4639      	mov	r1, r7
 8003b26:	f7fd f807 	bl	8000b38 <__aeabi_dmul>
 8003b2a:	460f      	mov	r7, r1
 8003b2c:	4606      	mov	r6, r0
 8003b2e:	f7fd fab3 	bl	8001098 <__aeabi_d2iz>
 8003b32:	4680      	mov	r8, r0
 8003b34:	f7fc ff96 	bl	8000a64 <__aeabi_i2d>
 8003b38:	4602      	mov	r2, r0
 8003b3a:	460b      	mov	r3, r1
 8003b3c:	4630      	mov	r0, r6
 8003b3e:	4639      	mov	r1, r7
 8003b40:	f7fc fe42 	bl	80007c8 <__aeabi_dsub>
 8003b44:	464d      	mov	r5, r9
 8003b46:	f81a c008 	ldrb.w	ip, [sl, r8]
 8003b4a:	f805 cb01 	strb.w	ip, [r5], #1
 8003b4e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8003b52:	46a3      	mov	fp, r4
 8003b54:	4606      	mov	r6, r0
 8003b56:	460f      	mov	r7, r1
 8003b58:	f04f 0200 	mov.w	r2, #0
 8003b5c:	f04f 0300 	mov.w	r3, #0
 8003b60:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8003b64:	d1d7      	bne.n	8003b16 <_vfprintf_r+0x12ee>
 8003b66:	4630      	mov	r0, r6
 8003b68:	4639      	mov	r1, r7
 8003b6a:	2200      	movs	r2, #0
 8003b6c:	4b46      	ldr	r3, [pc, #280]	; (8003c88 <_vfprintf_r+0x1460>)
 8003b6e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8003b72:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8003b74:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8003b78:	4644      	mov	r4, r8
 8003b7a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8003b7e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8003b82:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8003b86:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8003b8a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8003b8c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003b90:	f7fd fa62 	bl	8001058 <__aeabi_dcmpgt>
 8003b94:	2800      	cmp	r0, #0
 8003b96:	f040 8176 	bne.w	8003e86 <_vfprintf_r+0x165e>
 8003b9a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8003b9e:	2200      	movs	r2, #0
 8003ba0:	4b39      	ldr	r3, [pc, #228]	; (8003c88 <_vfprintf_r+0x1460>)
 8003ba2:	f7fd fa31 	bl	8001008 <__aeabi_dcmpeq>
 8003ba6:	b110      	cbz	r0, 8003bae <_vfprintf_r+0x1386>
 8003ba8:	07e2      	lsls	r2, r4, #31
 8003baa:	f100 816c 	bmi.w	8003e86 <_vfprintf_r+0x165e>
 8003bae:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003bb0:	2b00      	cmp	r3, #0
 8003bb2:	db07      	blt.n	8003bc4 <_vfprintf_r+0x139c>
 8003bb4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003bb6:	3301      	adds	r3, #1
 8003bb8:	442b      	add	r3, r5
 8003bba:	2230      	movs	r2, #48	; 0x30
 8003bbc:	f805 2b01 	strb.w	r2, [r5], #1
 8003bc0:	42ab      	cmp	r3, r5
 8003bc2:	d1fb      	bne.n	8003bbc <_vfprintf_r+0x1394>
 8003bc4:	1beb      	subs	r3, r5, r7
 8003bc6:	4640      	mov	r0, r8
 8003bc8:	9310      	str	r3, [sp, #64]	; 0x40
 8003bca:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003bce:	e683      	b.n	80038d8 <_vfprintf_r+0x10b0>
 8003bd0:	f8cd 9010 	str.w	r9, [sp, #16]
 8003bd4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8003bd8:	9408      	str	r4, [sp, #32]
 8003bda:	4681      	mov	r9, r0
 8003bdc:	900f      	str	r0, [sp, #60]	; 0x3c
 8003bde:	9014      	str	r0, [sp, #80]	; 0x50
 8003be0:	9011      	str	r0, [sp, #68]	; 0x44
 8003be2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8003be6:	f7fe bfac 	b.w	8002b42 <_vfprintf_r+0x31a>
 8003bea:	aa2a      	add	r2, sp, #168	; 0xa8
 8003bec:	9907      	ldr	r1, [sp, #28]
 8003bee:	9803      	ldr	r0, [sp, #12]
 8003bf0:	f003 f948 	bl	8006e84 <__sprint_r>
 8003bf4:	2800      	cmp	r0, #0
 8003bf6:	f47f ab8f 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8003bfa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003bfc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003bfe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c02:	e511      	b.n	8003628 <_vfprintf_r+0xe00>
 8003c04:	4252      	negs	r2, r2
 8003c06:	9206      	str	r2, [sp, #24]
 8003c08:	9308      	str	r3, [sp, #32]
 8003c0a:	f7ff b96d 	b.w	8002ee8 <_vfprintf_r+0x6c0>
 8003c0e:	4614      	mov	r4, r2
 8003c10:	4632      	mov	r2, r6
 8003c12:	461e      	mov	r6, r3
 8003c14:	4613      	mov	r3, r2
 8003c16:	462a      	mov	r2, r5
 8003c18:	3201      	adds	r2, #1
 8003c1a:	9209      	str	r2, [sp, #36]	; 0x24
 8003c1c:	f106 0208 	add.w	r2, r6, #8
 8003c20:	e9c6 3900 	strd	r3, r9, [r6]
 8003c24:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003c26:	932b      	str	r3, [sp, #172]	; 0xac
 8003c28:	444c      	add	r4, r9
 8003c2a:	2b07      	cmp	r3, #7
 8003c2c:	942c      	str	r4, [sp, #176]	; 0xb0
 8003c2e:	f73f acc3 	bgt.w	80035b8 <_vfprintf_r+0xd90>
 8003c32:	3301      	adds	r3, #1
 8003c34:	9309      	str	r3, [sp, #36]	; 0x24
 8003c36:	f102 0b08 	add.w	fp, r2, #8
 8003c3a:	4616      	mov	r6, r2
 8003c3c:	f7ff bbca 	b.w	80033d4 <_vfprintf_r+0xbac>
 8003c40:	aa2a      	add	r2, sp, #168	; 0xa8
 8003c42:	9907      	ldr	r1, [sp, #28]
 8003c44:	9803      	ldr	r0, [sp, #12]
 8003c46:	f003 f91d 	bl	8006e84 <__sprint_r>
 8003c4a:	2800      	cmp	r0, #0
 8003c4c:	f47f ab64 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8003c50:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003c52:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003c56:	f7ff bade 	b.w	8003216 <_vfprintf_r+0x9ee>
 8003c5a:	464b      	mov	r3, r9
 8003c5c:	2b06      	cmp	r3, #6
 8003c5e:	bf28      	it	cs
 8003c60:	2306      	movcs	r3, #6
 8003c62:	46b9      	mov	r9, r7
 8003c64:	970f      	str	r7, [sp, #60]	; 0x3c
 8003c66:	9714      	str	r7, [sp, #80]	; 0x50
 8003c68:	9711      	str	r7, [sp, #68]	; 0x44
 8003c6a:	970a      	str	r7, [sp, #40]	; 0x28
 8003c6c:	463a      	mov	r2, r7
 8003c6e:	9304      	str	r3, [sp, #16]
 8003c70:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8003c74:	4f05      	ldr	r7, [pc, #20]	; (8003c8c <_vfprintf_r+0x1464>)
 8003c76:	f7fe bf64 	b.w	8002b42 <_vfprintf_r+0x31a>
 8003c7a:	bf00      	nop
 8003c7c:	08007568 	.word	0x08007568
 8003c80:	0800754c 	.word	0x0800754c
 8003c84:	40300000 	.word	0x40300000
 8003c88:	3fe00000 	.word	0x3fe00000
 8003c8c:	08007560 	.word	0x08007560
 8003c90:	460c      	mov	r4, r1
 8003c92:	4639      	mov	r1, r7
 8003c94:	465f      	mov	r7, fp
 8003c96:	469b      	mov	fp, r3
 8003c98:	460b      	mov	r3, r1
 8003c9a:	3201      	adds	r2, #1
 8003c9c:	442c      	add	r4, r5
 8003c9e:	2a07      	cmp	r2, #7
 8003ca0:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8003ca4:	e9cb 3500 	strd	r3, r5, [fp]
 8003ca8:	f73f aca5 	bgt.w	80035f6 <_vfprintf_r+0xdce>
 8003cac:	f10b 0b08 	add.w	fp, fp, #8
 8003cb0:	e4ac      	b.n	800360c <_vfprintf_r+0xde4>
 8003cb2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003cb4:	1cda      	adds	r2, r3, #3
 8003cb6:	db02      	blt.n	8003cbe <_vfprintf_r+0x1496>
 8003cb8:	4599      	cmp	r9, r3
 8003cba:	f280 80b5 	bge.w	8003e28 <_vfprintf_r+0x1600>
 8003cbe:	3e02      	subs	r6, #2
 8003cc0:	f026 0320 	bic.w	r3, r6, #32
 8003cc4:	9304      	str	r3, [sp, #16]
 8003cc6:	e611      	b.n	80038ec <_vfprintf_r+0x10c4>
 8003cc8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003cca:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8003cce:	465a      	mov	r2, fp
 8003cd0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8003cd4:	18fb      	adds	r3, r7, r3
 8003cd6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8003cda:	970c      	str	r7, [sp, #48]	; 0x30
 8003cdc:	4eaf      	ldr	r6, [pc, #700]	; (8003f9c <_vfprintf_r+0x1774>)
 8003cde:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8003ce2:	9309      	str	r3, [sp, #36]	; 0x24
 8003ce4:	464f      	mov	r7, r9
 8003ce6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003cea:	4621      	mov	r1, r4
 8003cec:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003cee:	2b00      	cmp	r3, #0
 8003cf0:	d05b      	beq.n	8003daa <_vfprintf_r+0x1582>
 8003cf2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003cf4:	2b00      	cmp	r3, #0
 8003cf6:	d154      	bne.n	8003da2 <_vfprintf_r+0x157a>
 8003cf8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8003cfa:	3b01      	subs	r3, #1
 8003cfc:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8003d00:	9314      	str	r3, [sp, #80]	; 0x50
 8003d02:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003d04:	9818      	ldr	r0, [sp, #96]	; 0x60
 8003d06:	6010      	str	r0, [r2, #0]
 8003d08:	3301      	adds	r3, #1
 8003d0a:	4459      	add	r1, fp
 8003d0c:	2b07      	cmp	r3, #7
 8003d0e:	912c      	str	r1, [sp, #176]	; 0xb0
 8003d10:	f8c2 b004 	str.w	fp, [r2, #4]
 8003d14:	932b      	str	r3, [sp, #172]	; 0xac
 8003d16:	dc68      	bgt.n	8003dea <_vfprintf_r+0x15c2>
 8003d18:	3208      	adds	r2, #8
 8003d1a:	9809      	ldr	r0, [sp, #36]	; 0x24
 8003d1c:	f898 3000 	ldrb.w	r3, [r8]
 8003d20:	1bc5      	subs	r5, r0, r7
 8003d22:	429d      	cmp	r5, r3
 8003d24:	bfa8      	it	ge
 8003d26:	461d      	movge	r5, r3
 8003d28:	2d00      	cmp	r5, #0
 8003d2a:	dd0b      	ble.n	8003d44 <_vfprintf_r+0x151c>
 8003d2c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8003d2e:	6017      	str	r7, [r2, #0]
 8003d30:	3301      	adds	r3, #1
 8003d32:	4429      	add	r1, r5
 8003d34:	2b07      	cmp	r3, #7
 8003d36:	912c      	str	r1, [sp, #176]	; 0xb0
 8003d38:	6055      	str	r5, [r2, #4]
 8003d3a:	932b      	str	r3, [sp, #172]	; 0xac
 8003d3c:	dc5e      	bgt.n	8003dfc <_vfprintf_r+0x15d4>
 8003d3e:	f898 3000 	ldrb.w	r3, [r8]
 8003d42:	3208      	adds	r2, #8
 8003d44:	2d00      	cmp	r5, #0
 8003d46:	bfac      	ite	ge
 8003d48:	1b5d      	subge	r5, r3, r5
 8003d4a:	461d      	movlt	r5, r3
 8003d4c:	2d00      	cmp	r5, #0
 8003d4e:	dd26      	ble.n	8003d9e <_vfprintf_r+0x1576>
 8003d50:	2d10      	cmp	r5, #16
 8003d52:	982b      	ldr	r0, [sp, #172]	; 0xac
 8003d54:	dd3c      	ble.n	8003dd0 <_vfprintf_r+0x15a8>
 8003d56:	2410      	movs	r4, #16
 8003d58:	e003      	b.n	8003d62 <_vfprintf_r+0x153a>
 8003d5a:	3208      	adds	r2, #8
 8003d5c:	3d10      	subs	r5, #16
 8003d5e:	2d10      	cmp	r5, #16
 8003d60:	dd36      	ble.n	8003dd0 <_vfprintf_r+0x15a8>
 8003d62:	3001      	adds	r0, #1
 8003d64:	3110      	adds	r1, #16
 8003d66:	2807      	cmp	r0, #7
 8003d68:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003d6c:	e9c2 6400 	strd	r6, r4, [r2]
 8003d70:	ddf3      	ble.n	8003d5a <_vfprintf_r+0x1532>
 8003d72:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d74:	4651      	mov	r1, sl
 8003d76:	4648      	mov	r0, r9
 8003d78:	f003 f884 	bl	8006e84 <__sprint_r>
 8003d7c:	2800      	cmp	r0, #0
 8003d7e:	d150      	bne.n	8003e22 <_vfprintf_r+0x15fa>
 8003d80:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8003d84:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d86:	e7e9      	b.n	8003d5c <_vfprintf_r+0x1534>
 8003d88:	aa2a      	add	r2, sp, #168	; 0xa8
 8003d8a:	4651      	mov	r1, sl
 8003d8c:	4648      	mov	r0, r9
 8003d8e:	f003 f879 	bl	8006e84 <__sprint_r>
 8003d92:	2800      	cmp	r0, #0
 8003d94:	d145      	bne.n	8003e22 <_vfprintf_r+0x15fa>
 8003d96:	f898 3000 	ldrb.w	r3, [r8]
 8003d9a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003d9c:	aa2d      	add	r2, sp, #180	; 0xb4
 8003d9e:	441f      	add	r7, r3
 8003da0:	e7a4      	b.n	8003cec <_vfprintf_r+0x14c4>
 8003da2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003da4:	3b01      	subs	r3, #1
 8003da6:	930f      	str	r3, [sp, #60]	; 0x3c
 8003da8:	e7ab      	b.n	8003d02 <_vfprintf_r+0x14da>
 8003daa:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8003dac:	2b00      	cmp	r3, #0
 8003dae:	d1f8      	bne.n	8003da2 <_vfprintf_r+0x157a>
 8003db0:	46b9      	mov	r9, r7
 8003db2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003db4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8003db6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8003dba:	18fb      	adds	r3, r7, r3
 8003dbc:	4599      	cmp	r9, r3
 8003dbe:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 8003dc2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8003dc6:	4693      	mov	fp, r2
 8003dc8:	460c      	mov	r4, r1
 8003dca:	bf28      	it	cs
 8003dcc:	4699      	movcs	r9, r3
 8003dce:	e424      	b.n	800361a <_vfprintf_r+0xdf2>
 8003dd0:	3001      	adds	r0, #1
 8003dd2:	4429      	add	r1, r5
 8003dd4:	2807      	cmp	r0, #7
 8003dd6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 8003dda:	e9c2 6500 	strd	r6, r5, [r2]
 8003dde:	dcd3      	bgt.n	8003d88 <_vfprintf_r+0x1560>
 8003de0:	f898 3000 	ldrb.w	r3, [r8]
 8003de4:	3208      	adds	r2, #8
 8003de6:	441f      	add	r7, r3
 8003de8:	e780      	b.n	8003cec <_vfprintf_r+0x14c4>
 8003dea:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dec:	4651      	mov	r1, sl
 8003dee:	4648      	mov	r0, r9
 8003df0:	f003 f848 	bl	8006e84 <__sprint_r>
 8003df4:	b9a8      	cbnz	r0, 8003e22 <_vfprintf_r+0x15fa>
 8003df6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003df8:	aa2d      	add	r2, sp, #180	; 0xb4
 8003dfa:	e78e      	b.n	8003d1a <_vfprintf_r+0x14f2>
 8003dfc:	aa2a      	add	r2, sp, #168	; 0xa8
 8003dfe:	4651      	mov	r1, sl
 8003e00:	4648      	mov	r0, r9
 8003e02:	f003 f83f 	bl	8006e84 <__sprint_r>
 8003e06:	b960      	cbnz	r0, 8003e22 <_vfprintf_r+0x15fa>
 8003e08:	f898 3000 	ldrb.w	r3, [r8]
 8003e0c:	992c      	ldr	r1, [sp, #176]	; 0xb0
 8003e0e:	aa2d      	add	r2, sp, #180	; 0xb4
 8003e10:	e798      	b.n	8003d44 <_vfprintf_r+0x151c>
 8003e12:	4638      	mov	r0, r7
 8003e14:	f7fc fc14 	bl	8000640 <strlen>
 8003e18:	46a9      	mov	r9, r5
 8003e1a:	4603      	mov	r3, r0
 8003e1c:	9009      	str	r0, [sp, #36]	; 0x24
 8003e1e:	f7ff b8f4 	b.w	800300a <_vfprintf_r+0x7e2>
 8003e22:	46d1      	mov	r9, sl
 8003e24:	f7ff ba7a 	b.w	800331c <_vfprintf_r+0xaf4>
 8003e28:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e2a:	4619      	mov	r1, r3
 8003e2c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e2e:	4299      	cmp	r1, r3
 8003e30:	f300 8082 	bgt.w	8003f38 <_vfprintf_r+0x1710>
 8003e34:	07c4      	lsls	r4, r0, #31
 8003e36:	f140 816b 	bpl.w	8004110 <_vfprintf_r+0x18e8>
 8003e3a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003e3c:	4413      	add	r3, r2
 8003e3e:	9309      	str	r3, [sp, #36]	; 0x24
 8003e40:	0541      	lsls	r1, r0, #21
 8003e42:	d503      	bpl.n	8003e4c <_vfprintf_r+0x1624>
 8003e44:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003e46:	2b00      	cmp	r3, #0
 8003e48:	f300 80e6 	bgt.w	8004018 <_vfprintf_r+0x17f0>
 8003e4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e4e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003e52:	9304      	str	r3, [sp, #16]
 8003e54:	2667      	movs	r6, #103	; 0x67
 8003e56:	2300      	movs	r3, #0
 8003e58:	930f      	str	r3, [sp, #60]	; 0x3c
 8003e5a:	9314      	str	r3, [sp, #80]	; 0x50
 8003e5c:	e586      	b.n	800396c <_vfprintf_r+0x1144>
 8003e5e:	222d      	movs	r2, #45	; 0x2d
 8003e60:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8003e64:	f04f 0900 	mov.w	r9, #0
 8003e68:	f7fe be6c 	b.w	8002b44 <_vfprintf_r+0x31c>
 8003e6c:	46a1      	mov	r9, r4
 8003e6e:	f7ff ba55 	b.w	800331c <_vfprintf_r+0xaf4>
 8003e72:	900a      	str	r0, [sp, #40]	; 0x28
 8003e74:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8003e78:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 8003e7c:	931f      	str	r3, [sp, #124]	; 0x7c
 8003e7e:	232d      	movs	r3, #45	; 0x2d
 8003e80:	911e      	str	r1, [sp, #120]	; 0x78
 8003e82:	930b      	str	r3, [sp, #44]	; 0x2c
 8003e84:	e619      	b.n	8003aba <_vfprintf_r+0x1292>
 8003e86:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003e88:	9328      	str	r3, [sp, #160]	; 0xa0
 8003e8a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003e8c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8003e90:	7bd9      	ldrb	r1, [r3, #15]
 8003e92:	4291      	cmp	r1, r2
 8003e94:	462b      	mov	r3, r5
 8003e96:	d109      	bne.n	8003eac <_vfprintf_r+0x1684>
 8003e98:	2030      	movs	r0, #48	; 0x30
 8003e9a:	f803 0c01 	strb.w	r0, [r3, #-1]
 8003e9e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8003ea0:	1e5a      	subs	r2, r3, #1
 8003ea2:	9228      	str	r2, [sp, #160]	; 0xa0
 8003ea4:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8003ea8:	4291      	cmp	r1, r2
 8003eaa:	d0f6      	beq.n	8003e9a <_vfprintf_r+0x1672>
 8003eac:	2a39      	cmp	r2, #57	; 0x39
 8003eae:	bf0b      	itete	eq
 8003eb0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8003eb2:	3201      	addne	r2, #1
 8003eb4:	7a92      	ldrbeq	r2, [r2, #10]
 8003eb6:	b2d2      	uxtbne	r2, r2
 8003eb8:	f803 2c01 	strb.w	r2, [r3, #-1]
 8003ebc:	e682      	b.n	8003bc4 <_vfprintf_r+0x139c>
 8003ebe:	f418 7f00 	tst.w	r8, #512	; 0x200
 8003ec2:	f43f ad9f 	beq.w	8003a04 <_vfprintf_r+0x11dc>
 8003ec6:	9a05      	ldr	r2, [sp, #20]
 8003ec8:	701a      	strb	r2, [r3, #0]
 8003eca:	4657      	mov	r7, sl
 8003ecc:	f7fe bf52 	b.w	8002d74 <_vfprintf_r+0x54c>
 8003ed0:	aa2a      	add	r2, sp, #168	; 0xa8
 8003ed2:	9907      	ldr	r1, [sp, #28]
 8003ed4:	9803      	ldr	r0, [sp, #12]
 8003ed6:	f002 ffd5 	bl	8006e84 <__sprint_r>
 8003eda:	2800      	cmp	r0, #0
 8003edc:	f47f aa1c 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8003ee0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003ee2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8003ee6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003eea:	e571      	b.n	80039d0 <_vfprintf_r+0x11a8>
 8003eec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003eee:	2b00      	cmp	r3, #0
 8003ef0:	f340 8164 	ble.w	80041bc <_vfprintf_r+0x1994>
 8003ef4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003ef6:	f1b9 0f00 	cmp.w	r9, #0
 8003efa:	f040 8103 	bne.w	8004104 <_vfprintf_r+0x18dc>
 8003efe:	07c6      	lsls	r6, r0, #31
 8003f00:	f100 8100 	bmi.w	8004104 <_vfprintf_r+0x18dc>
 8003f04:	9309      	str	r3, [sp, #36]	; 0x24
 8003f06:	2666      	movs	r6, #102	; 0x66
 8003f08:	0543      	lsls	r3, r0, #21
 8003f0a:	f100 8086 	bmi.w	800401a <_vfprintf_r+0x17f2>
 8003f0e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8003f10:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8003f14:	9304      	str	r3, [sp, #16]
 8003f16:	e79e      	b.n	8003e56 <_vfprintf_r+0x162e>
 8003f18:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f1a:	9907      	ldr	r1, [sp, #28]
 8003f1c:	9803      	ldr	r0, [sp, #12]
 8003f1e:	f002 ffb1 	bl	8006e84 <__sprint_r>
 8003f22:	2800      	cmp	r0, #0
 8003f24:	f47f a9f8 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8003f28:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8003f2a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8003f2c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8003f2e:	1ad3      	subs	r3, r2, r3
 8003f30:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003f34:	f7ff bb90 	b.w	8003658 <_vfprintf_r+0xe30>
 8003f38:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8003f3a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8003f3c:	4413      	add	r3, r2
 8003f3e:	9309      	str	r3, [sp, #36]	; 0x24
 8003f40:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8003f42:	2b00      	cmp	r3, #0
 8003f44:	f340 8149 	ble.w	80041da <_vfprintf_r+0x19b2>
 8003f48:	2667      	movs	r6, #103	; 0x67
 8003f4a:	e7dd      	b.n	8003f08 <_vfprintf_r+0x16e0>
 8003f4c:	2330      	movs	r3, #48	; 0x30
 8003f4e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8003f52:	2358      	movs	r3, #88	; 0x58
 8003f54:	e595      	b.n	8003a82 <_vfprintf_r+0x125a>
 8003f56:	9803      	ldr	r0, [sp, #12]
 8003f58:	aa2a      	add	r2, sp, #168	; 0xa8
 8003f5a:	4649      	mov	r1, r9
 8003f5c:	f002 ff92 	bl	8006e84 <__sprint_r>
 8003f60:	2800      	cmp	r0, #0
 8003f62:	f47f a9e0 	bne.w	8003326 <_vfprintf_r+0xafe>
 8003f66:	f7fe bf0f 	b.w	8002d88 <_vfprintf_r+0x560>
 8003f6a:	a824      	add	r0, sp, #144	; 0x90
 8003f6c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8003f70:	f002 fe90 	bl	8006c94 <frexp>
 8003f74:	2200      	movs	r2, #0
 8003f76:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8003f7a:	ec51 0b10 	vmov	r0, r1, d0
 8003f7e:	f7fc fddb 	bl	8000b38 <__aeabi_dmul>
 8003f82:	2200      	movs	r2, #0
 8003f84:	2300      	movs	r3, #0
 8003f86:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8003f8a:	f7fd f83d 	bl	8001008 <__aeabi_dcmpeq>
 8003f8e:	b108      	cbz	r0, 8003f94 <_vfprintf_r+0x176c>
 8003f90:	2301      	movs	r3, #1
 8003f92:	9324      	str	r3, [sp, #144]	; 0x90
 8003f94:	4b02      	ldr	r3, [pc, #8]	; (8003fa0 <_vfprintf_r+0x1778>)
 8003f96:	9309      	str	r3, [sp, #36]	; 0x24
 8003f98:	e5ac      	b.n	8003af4 <_vfprintf_r+0x12cc>
 8003f9a:	bf00      	nop
 8003f9c:	0800757c 	.word	0x0800757c
 8003fa0:	08007538 	.word	0x08007538
 8003fa4:	425d      	negs	r5, r3
 8003fa6:	3310      	adds	r3, #16
 8003fa8:	4bb9      	ldr	r3, [pc, #740]	; (8004290 <_vfprintf_r+0x1a68>)
 8003faa:	f280 8097 	bge.w	80040dc <_vfprintf_r+0x18b4>
 8003fae:	4619      	mov	r1, r3
 8003fb0:	2610      	movs	r6, #16
 8003fb2:	4623      	mov	r3, r4
 8003fb4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8003fb8:	460c      	mov	r4, r1
 8003fba:	e005      	b.n	8003fc8 <_vfprintf_r+0x17a0>
 8003fbc:	f10b 0b08 	add.w	fp, fp, #8
 8003fc0:	3d10      	subs	r5, #16
 8003fc2:	2d10      	cmp	r5, #16
 8003fc4:	f340 8087 	ble.w	80040d6 <_vfprintf_r+0x18ae>
 8003fc8:	3201      	adds	r2, #1
 8003fca:	3310      	adds	r3, #16
 8003fcc:	2a07      	cmp	r2, #7
 8003fce:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8003fd2:	e9cb 4600 	strd	r4, r6, [fp]
 8003fd6:	ddf1      	ble.n	8003fbc <_vfprintf_r+0x1794>
 8003fd8:	aa2a      	add	r2, sp, #168	; 0xa8
 8003fda:	9907      	ldr	r1, [sp, #28]
 8003fdc:	4648      	mov	r0, r9
 8003fde:	f002 ff51 	bl	8006e84 <__sprint_r>
 8003fe2:	2800      	cmp	r0, #0
 8003fe4:	f47f a998 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8003fe8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8003fec:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8003ff0:	e7e6      	b.n	8003fc0 <_vfprintf_r+0x1798>
 8003ff2:	f109 0101 	add.w	r1, r9, #1
 8003ff6:	9803      	ldr	r0, [sp, #12]
 8003ff8:	f001 fe80 	bl	8005cfc <_malloc_r>
 8003ffc:	4607      	mov	r7, r0
 8003ffe:	2800      	cmp	r0, #0
 8004000:	f000 813b 	beq.w	800427a <_vfprintf_r+0x1a52>
 8004004:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8004008:	930e      	str	r3, [sp, #56]	; 0x38
 800400a:	f026 0320 	bic.w	r3, r6, #32
 800400e:	9304      	str	r3, [sp, #16]
 8004010:	46a0      	mov	r8, r4
 8004012:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004014:	900a      	str	r0, [sp, #40]	; 0x28
 8004016:	e547      	b.n	8003aa8 <_vfprintf_r+0x1280>
 8004018:	2667      	movs	r6, #103	; 0x67
 800401a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800401c:	2200      	movs	r2, #0
 800401e:	920f      	str	r2, [sp, #60]	; 0x3c
 8004020:	9214      	str	r2, [sp, #80]	; 0x50
 8004022:	7803      	ldrb	r3, [r0, #0]
 8004024:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8004026:	2bff      	cmp	r3, #255	; 0xff
 8004028:	d00c      	beq.n	8004044 <_vfprintf_r+0x181c>
 800402a:	4293      	cmp	r3, r2
 800402c:	da0a      	bge.n	8004044 <_vfprintf_r+0x181c>
 800402e:	7841      	ldrb	r1, [r0, #1]
 8004030:	1ad2      	subs	r2, r2, r3
 8004032:	b1a9      	cbz	r1, 8004060 <_vfprintf_r+0x1838>
 8004034:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004036:	3301      	adds	r3, #1
 8004038:	9314      	str	r3, [sp, #80]	; 0x50
 800403a:	460b      	mov	r3, r1
 800403c:	2bff      	cmp	r3, #255	; 0xff
 800403e:	f100 0001 	add.w	r0, r0, #1
 8004042:	d1f2      	bne.n	800402a <_vfprintf_r+0x1802>
 8004044:	9211      	str	r2, [sp, #68]	; 0x44
 8004046:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8004048:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800404a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800404c:	901a      	str	r0, [sp, #104]	; 0x68
 800404e:	4413      	add	r3, r2
 8004050:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8004052:	fb02 1303 	mla	r3, r2, r3, r1
 8004056:	9309      	str	r3, [sp, #36]	; 0x24
 8004058:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800405c:	9304      	str	r3, [sp, #16]
 800405e:	e485      	b.n	800396c <_vfprintf_r+0x1144>
 8004060:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8004062:	3101      	adds	r1, #1
 8004064:	910f      	str	r1, [sp, #60]	; 0x3c
 8004066:	e7de      	b.n	8004026 <_vfprintf_r+0x17fe>
 8004068:	aa28      	add	r2, sp, #160	; 0xa0
 800406a:	ab25      	add	r3, sp, #148	; 0x94
 800406c:	e9cd 3200 	strd	r3, r2, [sp]
 8004070:	2103      	movs	r1, #3
 8004072:	ab24      	add	r3, sp, #144	; 0x90
 8004074:	464a      	mov	r2, r9
 8004076:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800407a:	9803      	ldr	r0, [sp, #12]
 800407c:	f000 fa5c 	bl	8004538 <_dtoa_r>
 8004080:	464d      	mov	r5, r9
 8004082:	4607      	mov	r7, r0
 8004084:	eb00 0409 	add.w	r4, r0, r9
 8004088:	783b      	ldrb	r3, [r7, #0]
 800408a:	2b30      	cmp	r3, #48	; 0x30
 800408c:	f000 80be 	beq.w	800420c <_vfprintf_r+0x19e4>
 8004090:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8004092:	442c      	add	r4, r5
 8004094:	2200      	movs	r2, #0
 8004096:	2300      	movs	r3, #0
 8004098:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800409c:	f7fc ffb4 	bl	8001008 <__aeabi_dcmpeq>
 80040a0:	b108      	cbz	r0, 80040a6 <_vfprintf_r+0x187e>
 80040a2:	4623      	mov	r3, r4
 80040a4:	e413      	b.n	80038ce <_vfprintf_r+0x10a6>
 80040a6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80040a8:	42a3      	cmp	r3, r4
 80040aa:	f4bf ac10 	bcs.w	80038ce <_vfprintf_r+0x10a6>
 80040ae:	2130      	movs	r1, #48	; 0x30
 80040b0:	1c5a      	adds	r2, r3, #1
 80040b2:	9228      	str	r2, [sp, #160]	; 0xa0
 80040b4:	7019      	strb	r1, [r3, #0]
 80040b6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80040b8:	429c      	cmp	r4, r3
 80040ba:	d8f9      	bhi.n	80040b0 <_vfprintf_r+0x1888>
 80040bc:	e407      	b.n	80038ce <_vfprintf_r+0x10a6>
 80040be:	197c      	adds	r4, r7, r5
 80040c0:	e7e8      	b.n	8004094 <_vfprintf_r+0x186c>
 80040c2:	f1b9 0f00 	cmp.w	r9, #0
 80040c6:	f000 8092 	beq.w	80041ee <_vfprintf_r+0x19c6>
 80040ca:	900a      	str	r0, [sp, #40]	; 0x28
 80040cc:	e4ec      	b.n	8003aa8 <_vfprintf_r+0x1280>
 80040ce:	900a      	str	r0, [sp, #40]	; 0x28
 80040d0:	f04f 0906 	mov.w	r9, #6
 80040d4:	e4e8      	b.n	8003aa8 <_vfprintf_r+0x1280>
 80040d6:	4621      	mov	r1, r4
 80040d8:	461c      	mov	r4, r3
 80040da:	460b      	mov	r3, r1
 80040dc:	3201      	adds	r2, #1
 80040de:	442c      	add	r4, r5
 80040e0:	2a07      	cmp	r2, #7
 80040e2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80040e6:	e9cb 3500 	strd	r3, r5, [fp]
 80040ea:	f300 80a9 	bgt.w	8004240 <_vfprintf_r+0x1a18>
 80040ee:	f10b 0b08 	add.w	fp, fp, #8
 80040f2:	e470      	b.n	80039d6 <_vfprintf_r+0x11ae>
 80040f4:	469a      	mov	sl, r3
 80040f6:	f7ff bb37 	b.w	8003768 <_vfprintf_r+0xf40>
 80040fa:	2301      	movs	r3, #1
 80040fc:	9324      	str	r3, [sp, #144]	; 0x90
 80040fe:	4b65      	ldr	r3, [pc, #404]	; (8004294 <_vfprintf_r+0x1a6c>)
 8004100:	9309      	str	r3, [sp, #36]	; 0x24
 8004102:	e4f7      	b.n	8003af4 <_vfprintf_r+0x12cc>
 8004104:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8004106:	4413      	add	r3, r2
 8004108:	444b      	add	r3, r9
 800410a:	9309      	str	r3, [sp, #36]	; 0x24
 800410c:	2666      	movs	r6, #102	; 0x66
 800410e:	e6fb      	b.n	8003f08 <_vfprintf_r+0x16e0>
 8004110:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8004112:	9309      	str	r3, [sp, #36]	; 0x24
 8004114:	e694      	b.n	8003e40 <_vfprintf_r+0x1618>
 8004116:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800411a:	4664      	mov	r4, ip
 800411c:	4d5e      	ldr	r5, [pc, #376]	; (8004298 <_vfprintf_r+0x1a70>)
 800411e:	e000      	b.n	8004122 <_vfprintf_r+0x18fa>
 8004120:	4614      	mov	r4, r2
 8004122:	fba5 1203 	umull	r1, r2, r5, r3
 8004126:	08d2      	lsrs	r2, r2, #3
 8004128:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800412c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8004130:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8004134:	4613      	mov	r3, r2
 8004136:	2b09      	cmp	r3, #9
 8004138:	f804 1c01 	strb.w	r1, [r4, #-1]
 800413c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8004140:	dcee      	bgt.n	8004120 <_vfprintf_r+0x18f8>
 8004142:	3330      	adds	r3, #48	; 0x30
 8004144:	3c02      	subs	r4, #2
 8004146:	b2db      	uxtb	r3, r3
 8004148:	45a4      	cmp	ip, r4
 800414a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800414e:	f240 8090 	bls.w	8004272 <_vfprintf_r+0x1a4a>
 8004152:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8004156:	4611      	mov	r1, r2
 8004158:	e001      	b.n	800415e <_vfprintf_r+0x1936>
 800415a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800415e:	f804 3b01 	strb.w	r3, [r4], #1
 8004162:	458c      	cmp	ip, r1
 8004164:	d1f9      	bne.n	800415a <_vfprintf_r+0x1932>
 8004166:	ab2a      	add	r3, sp, #168	; 0xa8
 8004168:	1a9b      	subs	r3, r3, r2
 800416a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800416e:	4413      	add	r3, r2
 8004170:	f7ff bbe3 	b.w	800393a <_vfprintf_r+0x1112>
 8004174:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8004176:	4f49      	ldr	r7, [pc, #292]	; (800429c <_vfprintf_r+0x1a74>)
 8004178:	2b00      	cmp	r3, #0
 800417a:	bfb6      	itet	lt
 800417c:	222d      	movlt	r2, #45	; 0x2d
 800417e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8004182:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8004186:	4b46      	ldr	r3, [pc, #280]	; (80042a0 <_vfprintf_r+0x1a78>)
 8004188:	f7fe bf02 	b.w	8002f90 <_vfprintf_r+0x768>
 800418c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004190:	f7ff b8c9 	b.w	8003326 <_vfprintf_r+0xafe>
 8004194:	aa28      	add	r2, sp, #160	; 0xa0
 8004196:	ab25      	add	r3, sp, #148	; 0x94
 8004198:	e9cd 3200 	strd	r3, r2, [sp]
 800419c:	2103      	movs	r1, #3
 800419e:	ab24      	add	r3, sp, #144	; 0x90
 80041a0:	464a      	mov	r2, r9
 80041a2:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 80041a6:	9803      	ldr	r0, [sp, #12]
 80041a8:	f000 f9c6 	bl	8004538 <_dtoa_r>
 80041ac:	464d      	mov	r5, r9
 80041ae:	4607      	mov	r7, r0
 80041b0:	2e46      	cmp	r6, #70	; 0x46
 80041b2:	eb07 0405 	add.w	r4, r7, r5
 80041b6:	f43f af67 	beq.w	8004088 <_vfprintf_r+0x1860>
 80041ba:	e76b      	b.n	8004094 <_vfprintf_r+0x186c>
 80041bc:	f1b9 0f00 	cmp.w	r9, #0
 80041c0:	d131      	bne.n	8004226 <_vfprintf_r+0x19fe>
 80041c2:	07c5      	lsls	r5, r0, #31
 80041c4:	d42f      	bmi.n	8004226 <_vfprintf_r+0x19fe>
 80041c6:	2301      	movs	r3, #1
 80041c8:	9304      	str	r3, [sp, #16]
 80041ca:	9309      	str	r3, [sp, #36]	; 0x24
 80041cc:	2666      	movs	r6, #102	; 0x66
 80041ce:	e642      	b.n	8003e56 <_vfprintf_r+0x162e>
 80041d0:	07c3      	lsls	r3, r0, #31
 80041d2:	f57f abbf 	bpl.w	8003954 <_vfprintf_r+0x112c>
 80041d6:	f7ff bbb9 	b.w	800394c <_vfprintf_r+0x1124>
 80041da:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80041dc:	f1c3 0301 	rsb	r3, r3, #1
 80041e0:	441a      	add	r2, r3
 80041e2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80041e6:	9209      	str	r2, [sp, #36]	; 0x24
 80041e8:	9304      	str	r3, [sp, #16]
 80041ea:	2667      	movs	r6, #103	; 0x67
 80041ec:	e633      	b.n	8003e56 <_vfprintf_r+0x162e>
 80041ee:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80041f2:	f04f 0901 	mov.w	r9, #1
 80041f6:	e457      	b.n	8003aa8 <_vfprintf_r+0x1280>
 80041f8:	465a      	mov	r2, fp
 80041fa:	e511      	b.n	8003c20 <_vfprintf_r+0x13f8>
 80041fc:	2e47      	cmp	r6, #71	; 0x47
 80041fe:	f47f af5e 	bne.w	80040be <_vfprintf_r+0x1896>
 8004202:	f018 0f01 	tst.w	r8, #1
 8004206:	f43f ab61 	beq.w	80038cc <_vfprintf_r+0x10a4>
 800420a:	e7d1      	b.n	80041b0 <_vfprintf_r+0x1988>
 800420c:	2200      	movs	r2, #0
 800420e:	2300      	movs	r3, #0
 8004210:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8004214:	f7fc fef8 	bl	8001008 <__aeabi_dcmpeq>
 8004218:	2800      	cmp	r0, #0
 800421a:	f47f af39 	bne.w	8004090 <_vfprintf_r+0x1868>
 800421e:	f1c5 0501 	rsb	r5, r5, #1
 8004222:	9524      	str	r5, [sp, #144]	; 0x90
 8004224:	e735      	b.n	8004092 <_vfprintf_r+0x186a>
 8004226:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8004228:	3301      	adds	r3, #1
 800422a:	444b      	add	r3, r9
 800422c:	9309      	str	r3, [sp, #36]	; 0x24
 800422e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8004232:	9304      	str	r3, [sp, #16]
 8004234:	2666      	movs	r6, #102	; 0x66
 8004236:	e60e      	b.n	8003e56 <_vfprintf_r+0x162e>
 8004238:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800423c:	f7ff bb7a 	b.w	8003934 <_vfprintf_r+0x110c>
 8004240:	aa2a      	add	r2, sp, #168	; 0xa8
 8004242:	9907      	ldr	r1, [sp, #28]
 8004244:	9803      	ldr	r0, [sp, #12]
 8004246:	f002 fe1d 	bl	8006e84 <__sprint_r>
 800424a:	2800      	cmp	r0, #0
 800424c:	f47f a864 	bne.w	8003318 <_vfprintf_r+0xaf0>
 8004250:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8004254:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004258:	f7ff bbbd 	b.w	80039d6 <_vfprintf_r+0x11ae>
 800425c:	9908      	ldr	r1, [sp, #32]
 800425e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8004262:	680b      	ldr	r3, [r1, #0]
 8004264:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8004268:	1d0b      	adds	r3, r1, #4
 800426a:	4692      	mov	sl, r2
 800426c:	9308      	str	r3, [sp, #32]
 800426e:	f7fe bb59 	b.w	8002924 <_vfprintf_r+0xfc>
 8004272:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8004276:	f7ff bb60 	b.w	800393a <_vfprintf_r+0x1112>
 800427a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800427e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004282:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004286:	f8a9 300c 	strh.w	r3, [r9, #12]
 800428a:	f7ff b84c 	b.w	8003326 <_vfprintf_r+0xafe>
 800428e:	bf00      	nop
 8004290:	0800757c 	.word	0x0800757c
 8004294:	0800754c 	.word	0x0800754c
 8004298:	cccccccd 	.word	0xcccccccd
 800429c:	08007534 	.word	0x08007534
 80042a0:	08007530 	.word	0x08007530

080042a4 <__sbprintf>:
 80042a4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 80042a8:	460c      	mov	r4, r1
 80042aa:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 80042ae:	8989      	ldrh	r1, [r1, #12]
 80042b0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80042b2:	89e5      	ldrh	r5, [r4, #14]
 80042b4:	9619      	str	r6, [sp, #100]	; 0x64
 80042b6:	f021 0102 	bic.w	r1, r1, #2
 80042ba:	4606      	mov	r6, r0
 80042bc:	69e0      	ldr	r0, [r4, #28]
 80042be:	f8ad 100c 	strh.w	r1, [sp, #12]
 80042c2:	4617      	mov	r7, r2
 80042c4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80042c8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80042ca:	f8ad 500e 	strh.w	r5, [sp, #14]
 80042ce:	4698      	mov	r8, r3
 80042d0:	ad1a      	add	r5, sp, #104	; 0x68
 80042d2:	2300      	movs	r3, #0
 80042d4:	9007      	str	r0, [sp, #28]
 80042d6:	a816      	add	r0, sp, #88	; 0x58
 80042d8:	9209      	str	r2, [sp, #36]	; 0x24
 80042da:	9306      	str	r3, [sp, #24]
 80042dc:	9500      	str	r5, [sp, #0]
 80042de:	9504      	str	r5, [sp, #16]
 80042e0:	9102      	str	r1, [sp, #8]
 80042e2:	9105      	str	r1, [sp, #20]
 80042e4:	f001 fc8a 	bl	8005bfc <__retarget_lock_init_recursive>
 80042e8:	4643      	mov	r3, r8
 80042ea:	463a      	mov	r2, r7
 80042ec:	4669      	mov	r1, sp
 80042ee:	4630      	mov	r0, r6
 80042f0:	f7fe fa9a 	bl	8002828 <_vfprintf_r>
 80042f4:	1e05      	subs	r5, r0, #0
 80042f6:	db07      	blt.n	8004308 <__sbprintf+0x64>
 80042f8:	4630      	mov	r0, r6
 80042fa:	4669      	mov	r1, sp
 80042fc:	f001 f8d6 	bl	80054ac <_fflush_r>
 8004300:	2800      	cmp	r0, #0
 8004302:	bf18      	it	ne
 8004304:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004308:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 800430c:	065b      	lsls	r3, r3, #25
 800430e:	d503      	bpl.n	8004318 <__sbprintf+0x74>
 8004310:	89a3      	ldrh	r3, [r4, #12]
 8004312:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8004316:	81a3      	strh	r3, [r4, #12]
 8004318:	9816      	ldr	r0, [sp, #88]	; 0x58
 800431a:	f001 fc71 	bl	8005c00 <__retarget_lock_close_recursive>
 800431e:	4628      	mov	r0, r5
 8004320:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8004324:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08004328 <__swsetup_r>:
 8004328:	b538      	push	{r3, r4, r5, lr}
 800432a:	4b31      	ldr	r3, [pc, #196]	; (80043f0 <__swsetup_r+0xc8>)
 800432c:	681b      	ldr	r3, [r3, #0]
 800432e:	4605      	mov	r5, r0
 8004330:	460c      	mov	r4, r1
 8004332:	b113      	cbz	r3, 800433a <__swsetup_r+0x12>
 8004334:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8004336:	2a00      	cmp	r2, #0
 8004338:	d03a      	beq.n	80043b0 <__swsetup_r+0x88>
 800433a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800433e:	b293      	uxth	r3, r2
 8004340:	0718      	lsls	r0, r3, #28
 8004342:	d50c      	bpl.n	800435e <__swsetup_r+0x36>
 8004344:	6920      	ldr	r0, [r4, #16]
 8004346:	b1a8      	cbz	r0, 8004374 <__swsetup_r+0x4c>
 8004348:	f013 0201 	ands.w	r2, r3, #1
 800434c:	d020      	beq.n	8004390 <__swsetup_r+0x68>
 800434e:	6963      	ldr	r3, [r4, #20]
 8004350:	2200      	movs	r2, #0
 8004352:	425b      	negs	r3, r3
 8004354:	61a3      	str	r3, [r4, #24]
 8004356:	60a2      	str	r2, [r4, #8]
 8004358:	b300      	cbz	r0, 800439c <__swsetup_r+0x74>
 800435a:	2000      	movs	r0, #0
 800435c:	bd38      	pop	{r3, r4, r5, pc}
 800435e:	06d9      	lsls	r1, r3, #27
 8004360:	d53e      	bpl.n	80043e0 <__swsetup_r+0xb8>
 8004362:	0758      	lsls	r0, r3, #29
 8004364:	d428      	bmi.n	80043b8 <__swsetup_r+0x90>
 8004366:	6920      	ldr	r0, [r4, #16]
 8004368:	f042 0308 	orr.w	r3, r2, #8
 800436c:	81a3      	strh	r3, [r4, #12]
 800436e:	b29b      	uxth	r3, r3
 8004370:	2800      	cmp	r0, #0
 8004372:	d1e9      	bne.n	8004348 <__swsetup_r+0x20>
 8004374:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8004378:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800437c:	d0e4      	beq.n	8004348 <__swsetup_r+0x20>
 800437e:	4628      	mov	r0, r5
 8004380:	4621      	mov	r1, r4
 8004382:	f001 fc71 	bl	8005c68 <__smakebuf_r>
 8004386:	89a3      	ldrh	r3, [r4, #12]
 8004388:	6920      	ldr	r0, [r4, #16]
 800438a:	f013 0201 	ands.w	r2, r3, #1
 800438e:	d1de      	bne.n	800434e <__swsetup_r+0x26>
 8004390:	0799      	lsls	r1, r3, #30
 8004392:	bf58      	it	pl
 8004394:	6962      	ldrpl	r2, [r4, #20]
 8004396:	60a2      	str	r2, [r4, #8]
 8004398:	2800      	cmp	r0, #0
 800439a:	d1de      	bne.n	800435a <__swsetup_r+0x32>
 800439c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80043a0:	061a      	lsls	r2, r3, #24
 80043a2:	d5db      	bpl.n	800435c <__swsetup_r+0x34>
 80043a4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80043a8:	81a3      	strh	r3, [r4, #12]
 80043aa:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80043ae:	bd38      	pop	{r3, r4, r5, pc}
 80043b0:	4618      	mov	r0, r3
 80043b2:	f001 f8d7 	bl	8005564 <__sinit>
 80043b6:	e7c0      	b.n	800433a <__swsetup_r+0x12>
 80043b8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80043ba:	b151      	cbz	r1, 80043d2 <__swsetup_r+0xaa>
 80043bc:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80043c0:	4299      	cmp	r1, r3
 80043c2:	d004      	beq.n	80043ce <__swsetup_r+0xa6>
 80043c4:	4628      	mov	r0, r5
 80043c6:	f001 f96f 	bl	80056a8 <_free_r>
 80043ca:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80043ce:	2300      	movs	r3, #0
 80043d0:	6323      	str	r3, [r4, #48]	; 0x30
 80043d2:	2300      	movs	r3, #0
 80043d4:	6920      	ldr	r0, [r4, #16]
 80043d6:	6063      	str	r3, [r4, #4]
 80043d8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80043dc:	6020      	str	r0, [r4, #0]
 80043de:	e7c3      	b.n	8004368 <__swsetup_r+0x40>
 80043e0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80043e4:	2309      	movs	r3, #9
 80043e6:	602b      	str	r3, [r5, #0]
 80043e8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80043ec:	81a2      	strh	r2, [r4, #12]
 80043ee:	bd38      	pop	{r3, r4, r5, pc}
 80043f0:	20000018 	.word	0x20000018

080043f4 <register_fini>:
 80043f4:	4b02      	ldr	r3, [pc, #8]	; (8004400 <register_fini+0xc>)
 80043f6:	b113      	cbz	r3, 80043fe <register_fini+0xa>
 80043f8:	4802      	ldr	r0, [pc, #8]	; (8004404 <register_fini+0x10>)
 80043fa:	f000 b805 	b.w	8004408 <atexit>
 80043fe:	4770      	bx	lr
 8004400:	00000000 	.word	0x00000000
 8004404:	080055d5 	.word	0x080055d5

08004408 <atexit>:
 8004408:	2300      	movs	r3, #0
 800440a:	4601      	mov	r1, r0
 800440c:	461a      	mov	r2, r3
 800440e:	4618      	mov	r0, r3
 8004410:	f002 bd58 	b.w	8006ec4 <__register_exitproc>

08004414 <quorem>:
 8004414:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004418:	6903      	ldr	r3, [r0, #16]
 800441a:	690f      	ldr	r7, [r1, #16]
 800441c:	42bb      	cmp	r3, r7
 800441e:	b083      	sub	sp, #12
 8004420:	f2c0 8086 	blt.w	8004530 <quorem+0x11c>
 8004424:	3f01      	subs	r7, #1
 8004426:	f101 0914 	add.w	r9, r1, #20
 800442a:	f100 0a14 	add.w	sl, r0, #20
 800442e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8004432:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8004436:	00bc      	lsls	r4, r7, #2
 8004438:	3201      	adds	r2, #1
 800443a:	fbb3 f8f2 	udiv	r8, r3, r2
 800443e:	eb0a 0304 	add.w	r3, sl, r4
 8004442:	9400      	str	r4, [sp, #0]
 8004444:	eb09 0b04 	add.w	fp, r9, r4
 8004448:	9301      	str	r3, [sp, #4]
 800444a:	f1b8 0f00 	cmp.w	r8, #0
 800444e:	d038      	beq.n	80044c2 <quorem+0xae>
 8004450:	2500      	movs	r5, #0
 8004452:	462e      	mov	r6, r5
 8004454:	46ce      	mov	lr, r9
 8004456:	46d4      	mov	ip, sl
 8004458:	f85e 4b04 	ldr.w	r4, [lr], #4
 800445c:	f8dc 3000 	ldr.w	r3, [ip]
 8004460:	b2a2      	uxth	r2, r4
 8004462:	fb08 5502 	mla	r5, r8, r2, r5
 8004466:	0c22      	lsrs	r2, r4, #16
 8004468:	0c2c      	lsrs	r4, r5, #16
 800446a:	fb08 4202 	mla	r2, r8, r2, r4
 800446e:	b2ad      	uxth	r5, r5
 8004470:	1b75      	subs	r5, r6, r5
 8004472:	b296      	uxth	r6, r2
 8004474:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8004478:	fa15 f383 	uxtah	r3, r5, r3
 800447c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8004480:	b29b      	uxth	r3, r3
 8004482:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8004486:	45f3      	cmp	fp, lr
 8004488:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800448c:	f84c 3b04 	str.w	r3, [ip], #4
 8004490:	ea4f 4626 	mov.w	r6, r6, asr #16
 8004494:	d2e0      	bcs.n	8004458 <quorem+0x44>
 8004496:	9b00      	ldr	r3, [sp, #0]
 8004498:	f85a 3003 	ldr.w	r3, [sl, r3]
 800449c:	b98b      	cbnz	r3, 80044c2 <quorem+0xae>
 800449e:	9a01      	ldr	r2, [sp, #4]
 80044a0:	1f13      	subs	r3, r2, #4
 80044a2:	459a      	cmp	sl, r3
 80044a4:	d20c      	bcs.n	80044c0 <quorem+0xac>
 80044a6:	f852 3c04 	ldr.w	r3, [r2, #-4]
 80044aa:	b94b      	cbnz	r3, 80044c0 <quorem+0xac>
 80044ac:	f1a2 0308 	sub.w	r3, r2, #8
 80044b0:	e002      	b.n	80044b8 <quorem+0xa4>
 80044b2:	681a      	ldr	r2, [r3, #0]
 80044b4:	3b04      	subs	r3, #4
 80044b6:	b91a      	cbnz	r2, 80044c0 <quorem+0xac>
 80044b8:	459a      	cmp	sl, r3
 80044ba:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80044be:	d3f8      	bcc.n	80044b2 <quorem+0x9e>
 80044c0:	6107      	str	r7, [r0, #16]
 80044c2:	4604      	mov	r4, r0
 80044c4:	f002 f944 	bl	8006750 <__mcmp>
 80044c8:	2800      	cmp	r0, #0
 80044ca:	db2d      	blt.n	8004528 <quorem+0x114>
 80044cc:	f108 0801 	add.w	r8, r8, #1
 80044d0:	4655      	mov	r5, sl
 80044d2:	2300      	movs	r3, #0
 80044d4:	f859 1b04 	ldr.w	r1, [r9], #4
 80044d8:	6828      	ldr	r0, [r5, #0]
 80044da:	b28a      	uxth	r2, r1
 80044dc:	1a9a      	subs	r2, r3, r2
 80044de:	0c0b      	lsrs	r3, r1, #16
 80044e0:	fa12 f280 	uxtah	r2, r2, r0
 80044e4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80044e8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80044ec:	b292      	uxth	r2, r2
 80044ee:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80044f2:	45cb      	cmp	fp, r9
 80044f4:	f845 2b04 	str.w	r2, [r5], #4
 80044f8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80044fc:	d2ea      	bcs.n	80044d4 <quorem+0xc0>
 80044fe:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 8004502:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 8004506:	b97a      	cbnz	r2, 8004528 <quorem+0x114>
 8004508:	1f1a      	subs	r2, r3, #4
 800450a:	4592      	cmp	sl, r2
 800450c:	d20b      	bcs.n	8004526 <quorem+0x112>
 800450e:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8004512:	b942      	cbnz	r2, 8004526 <quorem+0x112>
 8004514:	3b08      	subs	r3, #8
 8004516:	e002      	b.n	800451e <quorem+0x10a>
 8004518:	681a      	ldr	r2, [r3, #0]
 800451a:	3b04      	subs	r3, #4
 800451c:	b91a      	cbnz	r2, 8004526 <quorem+0x112>
 800451e:	459a      	cmp	sl, r3
 8004520:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8004524:	d3f8      	bcc.n	8004518 <quorem+0x104>
 8004526:	6127      	str	r7, [r4, #16]
 8004528:	4640      	mov	r0, r8
 800452a:	b003      	add	sp, #12
 800452c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004530:	2000      	movs	r0, #0
 8004532:	b003      	add	sp, #12
 8004534:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08004538 <_dtoa_r>:
 8004538:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800453c:	ec55 4b10 	vmov	r4, r5, d0
 8004540:	b09b      	sub	sp, #108	; 0x6c
 8004542:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8004544:	9102      	str	r1, [sp, #8]
 8004546:	4681      	mov	r9, r0
 8004548:	9207      	str	r2, [sp, #28]
 800454a:	9305      	str	r3, [sp, #20]
 800454c:	e9cd 4500 	strd	r4, r5, [sp]
 8004550:	b156      	cbz	r6, 8004568 <_dtoa_r+0x30>
 8004552:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8004554:	6072      	str	r2, [r6, #4]
 8004556:	2301      	movs	r3, #1
 8004558:	4093      	lsls	r3, r2
 800455a:	60b3      	str	r3, [r6, #8]
 800455c:	4631      	mov	r1, r6
 800455e:	f001 ff07 	bl	8006370 <_Bfree>
 8004562:	2300      	movs	r3, #0
 8004564:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8004568:	f1b5 0800 	subs.w	r8, r5, #0
 800456c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800456e:	bfb4      	ite	lt
 8004570:	2301      	movlt	r3, #1
 8004572:	2300      	movge	r3, #0
 8004574:	6013      	str	r3, [r2, #0]
 8004576:	4b76      	ldr	r3, [pc, #472]	; (8004750 <_dtoa_r+0x218>)
 8004578:	bfbc      	itt	lt
 800457a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800457e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8004582:	ea33 0308 	bics.w	r3, r3, r8
 8004586:	f000 80a6 	beq.w	80046d6 <_dtoa_r+0x19e>
 800458a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800458e:	2200      	movs	r2, #0
 8004590:	2300      	movs	r3, #0
 8004592:	4630      	mov	r0, r6
 8004594:	4639      	mov	r1, r7
 8004596:	f7fc fd37 	bl	8001008 <__aeabi_dcmpeq>
 800459a:	4605      	mov	r5, r0
 800459c:	b178      	cbz	r0, 80045be <_dtoa_r+0x86>
 800459e:	9a05      	ldr	r2, [sp, #20]
 80045a0:	2301      	movs	r3, #1
 80045a2:	6013      	str	r3, [r2, #0]
 80045a4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80045a6:	2b00      	cmp	r3, #0
 80045a8:	f000 80c0 	beq.w	800472c <_dtoa_r+0x1f4>
 80045ac:	4b69      	ldr	r3, [pc, #420]	; (8004754 <_dtoa_r+0x21c>)
 80045ae:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80045b0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80045b4:	6013      	str	r3, [r2, #0]
 80045b6:	4658      	mov	r0, fp
 80045b8:	b01b      	add	sp, #108	; 0x6c
 80045ba:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80045be:	aa18      	add	r2, sp, #96	; 0x60
 80045c0:	a919      	add	r1, sp, #100	; 0x64
 80045c2:	ec47 6b10 	vmov	d0, r6, r7
 80045c6:	4648      	mov	r0, r9
 80045c8:	f002 f954 	bl	8006874 <__d2b>
 80045cc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80045d0:	4682      	mov	sl, r0
 80045d2:	f040 80a0 	bne.w	8004716 <_dtoa_r+0x1de>
 80045d6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80045da:	442c      	add	r4, r5
 80045dc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80045e0:	2b20      	cmp	r3, #32
 80045e2:	f340 842c 	ble.w	8004e3e <_dtoa_r+0x906>
 80045e6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80045ea:	fa08 f803 	lsl.w	r8, r8, r3
 80045ee:	9b00      	ldr	r3, [sp, #0]
 80045f0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80045f4:	fa23 f000 	lsr.w	r0, r3, r0
 80045f8:	ea48 0000 	orr.w	r0, r8, r0
 80045fc:	f7fc fa22 	bl	8000a44 <__aeabi_ui2d>
 8004600:	2301      	movs	r3, #1
 8004602:	4606      	mov	r6, r0
 8004604:	3c01      	subs	r4, #1
 8004606:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 800460a:	930f      	str	r3, [sp, #60]	; 0x3c
 800460c:	4630      	mov	r0, r6
 800460e:	4639      	mov	r1, r7
 8004610:	2200      	movs	r2, #0
 8004612:	4b51      	ldr	r3, [pc, #324]	; (8004758 <_dtoa_r+0x220>)
 8004614:	f7fc f8d8 	bl	80007c8 <__aeabi_dsub>
 8004618:	a347      	add	r3, pc, #284	; (adr r3, 8004738 <_dtoa_r+0x200>)
 800461a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800461e:	f7fc fa8b 	bl	8000b38 <__aeabi_dmul>
 8004622:	a347      	add	r3, pc, #284	; (adr r3, 8004740 <_dtoa_r+0x208>)
 8004624:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004628:	f7fc f8d0 	bl	80007cc <__adddf3>
 800462c:	4606      	mov	r6, r0
 800462e:	4620      	mov	r0, r4
 8004630:	460f      	mov	r7, r1
 8004632:	f7fc fa17 	bl	8000a64 <__aeabi_i2d>
 8004636:	a344      	add	r3, pc, #272	; (adr r3, 8004748 <_dtoa_r+0x210>)
 8004638:	e9d3 2300 	ldrd	r2, r3, [r3]
 800463c:	f7fc fa7c 	bl	8000b38 <__aeabi_dmul>
 8004640:	4602      	mov	r2, r0
 8004642:	460b      	mov	r3, r1
 8004644:	4630      	mov	r0, r6
 8004646:	4639      	mov	r1, r7
 8004648:	f7fc f8c0 	bl	80007cc <__adddf3>
 800464c:	4606      	mov	r6, r0
 800464e:	460f      	mov	r7, r1
 8004650:	f7fc fd22 	bl	8001098 <__aeabi_d2iz>
 8004654:	2200      	movs	r2, #0
 8004656:	9006      	str	r0, [sp, #24]
 8004658:	2300      	movs	r3, #0
 800465a:	4630      	mov	r0, r6
 800465c:	4639      	mov	r1, r7
 800465e:	f7fc fcdd 	bl	800101c <__aeabi_dcmplt>
 8004662:	2800      	cmp	r0, #0
 8004664:	f040 8273 	bne.w	8004b4e <_dtoa_r+0x616>
 8004668:	9e06      	ldr	r6, [sp, #24]
 800466a:	2e16      	cmp	r6, #22
 800466c:	f200 825d 	bhi.w	8004b2a <_dtoa_r+0x5f2>
 8004670:	4b3a      	ldr	r3, [pc, #232]	; (800475c <_dtoa_r+0x224>)
 8004672:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8004676:	e9d3 0100 	ldrd	r0, r1, [r3]
 800467a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800467e:	f7fc fceb 	bl	8001058 <__aeabi_dcmpgt>
 8004682:	2800      	cmp	r0, #0
 8004684:	f000 83d7 	beq.w	8004e36 <_dtoa_r+0x8fe>
 8004688:	1e73      	subs	r3, r6, #1
 800468a:	9306      	str	r3, [sp, #24]
 800468c:	2300      	movs	r3, #0
 800468e:	930d      	str	r3, [sp, #52]	; 0x34
 8004690:	1b2c      	subs	r4, r5, r4
 8004692:	f1b4 0801 	subs.w	r8, r4, #1
 8004696:	f100 8254 	bmi.w	8004b42 <_dtoa_r+0x60a>
 800469a:	2300      	movs	r3, #0
 800469c:	9308      	str	r3, [sp, #32]
 800469e:	9b06      	ldr	r3, [sp, #24]
 80046a0:	2b00      	cmp	r3, #0
 80046a2:	f2c0 8245 	blt.w	8004b30 <_dtoa_r+0x5f8>
 80046a6:	4498      	add	r8, r3
 80046a8:	930c      	str	r3, [sp, #48]	; 0x30
 80046aa:	2300      	movs	r3, #0
 80046ac:	930b      	str	r3, [sp, #44]	; 0x2c
 80046ae:	9b02      	ldr	r3, [sp, #8]
 80046b0:	2b09      	cmp	r3, #9
 80046b2:	d85b      	bhi.n	800476c <_dtoa_r+0x234>
 80046b4:	2b05      	cmp	r3, #5
 80046b6:	f340 83c0 	ble.w	8004e3a <_dtoa_r+0x902>
 80046ba:	3b04      	subs	r3, #4
 80046bc:	9302      	str	r3, [sp, #8]
 80046be:	2500      	movs	r5, #0
 80046c0:	9b02      	ldr	r3, [sp, #8]
 80046c2:	3b02      	subs	r3, #2
 80046c4:	2b03      	cmp	r3, #3
 80046c6:	f200 8498 	bhi.w	8004ffa <_dtoa_r+0xac2>
 80046ca:	e8df f013 	tbh	[pc, r3, lsl #1]
 80046ce:	03df      	.short	0x03df
 80046d0:	03e803bf 	.word	0x03e803bf
 80046d4:	04f5      	.short	0x04f5
 80046d6:	9a05      	ldr	r2, [sp, #20]
 80046d8:	f242 730f 	movw	r3, #9999	; 0x270f
 80046dc:	6013      	str	r3, [r2, #0]
 80046de:	9b00      	ldr	r3, [sp, #0]
 80046e0:	b983      	cbnz	r3, 8004704 <_dtoa_r+0x1cc>
 80046e2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80046e6:	b96b      	cbnz	r3, 8004704 <_dtoa_r+0x1cc>
 80046e8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80046ea:	f8df b074 	ldr.w	fp, [pc, #116]	; 8004760 <_dtoa_r+0x228>
 80046ee:	2b00      	cmp	r3, #0
 80046f0:	f43f af61 	beq.w	80045b6 <_dtoa_r+0x7e>
 80046f4:	f10b 0308 	add.w	r3, fp, #8
 80046f8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80046fa:	4658      	mov	r0, fp
 80046fc:	6013      	str	r3, [r2, #0]
 80046fe:	b01b      	add	sp, #108	; 0x6c
 8004700:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004704:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004706:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8004764 <_dtoa_r+0x22c>
 800470a:	2b00      	cmp	r3, #0
 800470c:	f43f af53 	beq.w	80045b6 <_dtoa_r+0x7e>
 8004710:	f10b 0303 	add.w	r3, fp, #3
 8004714:	e7f0      	b.n	80046f8 <_dtoa_r+0x1c0>
 8004716:	f3c7 0313 	ubfx	r3, r7, #0, #20
 800471a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 800471e:	950f      	str	r5, [sp, #60]	; 0x3c
 8004720:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8004724:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8004728:	9d18      	ldr	r5, [sp, #96]	; 0x60
 800472a:	e76f      	b.n	800460c <_dtoa_r+0xd4>
 800472c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8004768 <_dtoa_r+0x230>
 8004730:	4658      	mov	r0, fp
 8004732:	b01b      	add	sp, #108	; 0x6c
 8004734:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004738:	636f4361 	.word	0x636f4361
 800473c:	3fd287a7 	.word	0x3fd287a7
 8004740:	8b60c8b3 	.word	0x8b60c8b3
 8004744:	3fc68a28 	.word	0x3fc68a28
 8004748:	509f79fb 	.word	0x509f79fb
 800474c:	3fd34413 	.word	0x3fd34413
 8004750:	7ff00000 	.word	0x7ff00000
 8004754:	08007569 	.word	0x08007569
 8004758:	3ff80000 	.word	0x3ff80000
 800475c:	080075c8 	.word	0x080075c8
 8004760:	0800758c 	.word	0x0800758c
 8004764:	08007598 	.word	0x08007598
 8004768:	08007568 	.word	0x08007568
 800476c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8004770:	2501      	movs	r5, #1
 8004772:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8004776:	2300      	movs	r3, #0
 8004778:	9302      	str	r3, [sp, #8]
 800477a:	9307      	str	r3, [sp, #28]
 800477c:	2100      	movs	r1, #0
 800477e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004782:	940e      	str	r4, [sp, #56]	; 0x38
 8004784:	4648      	mov	r0, r9
 8004786:	f001 fdcd 	bl	8006324 <_Balloc>
 800478a:	2c0e      	cmp	r4, #14
 800478c:	4683      	mov	fp, r0
 800478e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8004792:	f200 80fb 	bhi.w	800498c <_dtoa_r+0x454>
 8004796:	2d00      	cmp	r5, #0
 8004798:	f000 80f8 	beq.w	800498c <_dtoa_r+0x454>
 800479c:	ed9d 7b00 	vldr	d7, [sp]
 80047a0:	9906      	ldr	r1, [sp, #24]
 80047a2:	2900      	cmp	r1, #0
 80047a4:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 80047a8:	f340 83e5 	ble.w	8004f76 <_dtoa_r+0xa3e>
 80047ac:	4b9d      	ldr	r3, [pc, #628]	; (8004a24 <_dtoa_r+0x4ec>)
 80047ae:	f001 020f 	and.w	r2, r1, #15
 80047b2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80047b6:	ed93 7b00 	vldr	d7, [r3]
 80047ba:	110c      	asrs	r4, r1, #4
 80047bc:	06e2      	lsls	r2, r4, #27
 80047be:	ed8d 7b00 	vstr	d7, [sp]
 80047c2:	f140 849e 	bpl.w	8005102 <_dtoa_r+0xbca>
 80047c6:	4b98      	ldr	r3, [pc, #608]	; (8004a28 <_dtoa_r+0x4f0>)
 80047c8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 80047cc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 80047d0:	f7fc fadc 	bl	8000d8c <__aeabi_ddiv>
 80047d4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 80047d8:	f004 040f 	and.w	r4, r4, #15
 80047dc:	2603      	movs	r6, #3
 80047de:	b17c      	cbz	r4, 8004800 <_dtoa_r+0x2c8>
 80047e0:	e9dd 0100 	ldrd	r0, r1, [sp]
 80047e4:	4d90      	ldr	r5, [pc, #576]	; (8004a28 <_dtoa_r+0x4f0>)
 80047e6:	07e3      	lsls	r3, r4, #31
 80047e8:	d504      	bpl.n	80047f4 <_dtoa_r+0x2bc>
 80047ea:	e9d5 2300 	ldrd	r2, r3, [r5]
 80047ee:	f7fc f9a3 	bl	8000b38 <__aeabi_dmul>
 80047f2:	3601      	adds	r6, #1
 80047f4:	1064      	asrs	r4, r4, #1
 80047f6:	f105 0508 	add.w	r5, r5, #8
 80047fa:	d1f4      	bne.n	80047e6 <_dtoa_r+0x2ae>
 80047fc:	e9cd 0100 	strd	r0, r1, [sp]
 8004800:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004804:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8004808:	f7fc fac0 	bl	8000d8c <__aeabi_ddiv>
 800480c:	e9cd 0100 	strd	r0, r1, [sp]
 8004810:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004812:	b143      	cbz	r3, 8004826 <_dtoa_r+0x2ee>
 8004814:	2200      	movs	r2, #0
 8004816:	4b85      	ldr	r3, [pc, #532]	; (8004a2c <_dtoa_r+0x4f4>)
 8004818:	e9dd 0100 	ldrd	r0, r1, [sp]
 800481c:	f7fc fbfe 	bl	800101c <__aeabi_dcmplt>
 8004820:	2800      	cmp	r0, #0
 8004822:	f040 84ff 	bne.w	8005224 <_dtoa_r+0xcec>
 8004826:	4630      	mov	r0, r6
 8004828:	f7fc f91c 	bl	8000a64 <__aeabi_i2d>
 800482c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004830:	f7fc f982 	bl	8000b38 <__aeabi_dmul>
 8004834:	4b7e      	ldr	r3, [pc, #504]	; (8004a30 <_dtoa_r+0x4f8>)
 8004836:	2200      	movs	r2, #0
 8004838:	f7fb ffc8 	bl	80007cc <__adddf3>
 800483c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800483e:	4606      	mov	r6, r0
 8004840:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8004844:	2b00      	cmp	r3, #0
 8004846:	f000 841c 	beq.w	8005082 <_dtoa_r+0xb4a>
 800484a:	9b06      	ldr	r3, [sp, #24]
 800484c:	9316      	str	r3, [sp, #88]	; 0x58
 800484e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004850:	9312      	str	r3, [sp, #72]	; 0x48
 8004852:	e9dd 0100 	ldrd	r0, r1, [sp]
 8004856:	f7fc fc1f 	bl	8001098 <__aeabi_d2iz>
 800485a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 800485c:	4b71      	ldr	r3, [pc, #452]	; (8004a24 <_dtoa_r+0x4ec>)
 800485e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004862:	ed13 7b02 	vldr	d7, [r3, #-8]
 8004866:	f100 0530 	add.w	r5, r0, #48	; 0x30
 800486a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 800486e:	f7fc f8f9 	bl	8000a64 <__aeabi_i2d>
 8004872:	460b      	mov	r3, r1
 8004874:	4602      	mov	r2, r0
 8004876:	e9dd 0100 	ldrd	r0, r1, [sp]
 800487a:	e9cd 6700 	strd	r6, r7, [sp]
 800487e:	f7fb ffa3 	bl	80007c8 <__aeabi_dsub>
 8004882:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004884:	b2ed      	uxtb	r5, r5
 8004886:	4606      	mov	r6, r0
 8004888:	460f      	mov	r7, r1
 800488a:	f10b 0401 	add.w	r4, fp, #1
 800488e:	2b00      	cmp	r3, #0
 8004890:	f000 8458 	beq.w	8005144 <_dtoa_r+0xc0c>
 8004894:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8004898:	2000      	movs	r0, #0
 800489a:	4966      	ldr	r1, [pc, #408]	; (8004a34 <_dtoa_r+0x4fc>)
 800489c:	f7fc fa76 	bl	8000d8c <__aeabi_ddiv>
 80048a0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80048a4:	f7fb ff90 	bl	80007c8 <__aeabi_dsub>
 80048a8:	f88b 5000 	strb.w	r5, [fp]
 80048ac:	4632      	mov	r2, r6
 80048ae:	463b      	mov	r3, r7
 80048b0:	e9cd 0100 	strd	r0, r1, [sp]
 80048b4:	f7fc fbd0 	bl	8001058 <__aeabi_dcmpgt>
 80048b8:	2800      	cmp	r0, #0
 80048ba:	f040 8502 	bne.w	80052c2 <_dtoa_r+0xd8a>
 80048be:	4632      	mov	r2, r6
 80048c0:	463b      	mov	r3, r7
 80048c2:	2000      	movs	r0, #0
 80048c4:	4959      	ldr	r1, [pc, #356]	; (8004a2c <_dtoa_r+0x4f4>)
 80048c6:	f7fb ff7f 	bl	80007c8 <__aeabi_dsub>
 80048ca:	4602      	mov	r2, r0
 80048cc:	460b      	mov	r3, r1
 80048ce:	e9dd 0100 	ldrd	r0, r1, [sp]
 80048d2:	f7fc fbc1 	bl	8001058 <__aeabi_dcmpgt>
 80048d6:	2800      	cmp	r0, #0
 80048d8:	f040 84fb 	bne.w	80052d2 <_dtoa_r+0xd9a>
 80048dc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 80048de:	2a01      	cmp	r2, #1
 80048e0:	d050      	beq.n	8004984 <_dtoa_r+0x44c>
 80048e2:	445a      	add	r2, fp
 80048e4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 80048e8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 80048ec:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 80048f0:	4692      	mov	sl, r2
 80048f2:	46cb      	mov	fp, r9
 80048f4:	e9dd 8900 	ldrd	r8, r9, [sp]
 80048f8:	e00c      	b.n	8004914 <_dtoa_r+0x3dc>
 80048fa:	2000      	movs	r0, #0
 80048fc:	494b      	ldr	r1, [pc, #300]	; (8004a2c <_dtoa_r+0x4f4>)
 80048fe:	f7fb ff63 	bl	80007c8 <__aeabi_dsub>
 8004902:	4642      	mov	r2, r8
 8004904:	464b      	mov	r3, r9
 8004906:	f7fc fb89 	bl	800101c <__aeabi_dcmplt>
 800490a:	2800      	cmp	r0, #0
 800490c:	f040 84dc 	bne.w	80052c8 <_dtoa_r+0xd90>
 8004910:	4554      	cmp	r4, sl
 8004912:	d030      	beq.n	8004976 <_dtoa_r+0x43e>
 8004914:	4640      	mov	r0, r8
 8004916:	4649      	mov	r1, r9
 8004918:	2200      	movs	r2, #0
 800491a:	4b47      	ldr	r3, [pc, #284]	; (8004a38 <_dtoa_r+0x500>)
 800491c:	f7fc f90c 	bl	8000b38 <__aeabi_dmul>
 8004920:	2200      	movs	r2, #0
 8004922:	4b45      	ldr	r3, [pc, #276]	; (8004a38 <_dtoa_r+0x500>)
 8004924:	4680      	mov	r8, r0
 8004926:	4689      	mov	r9, r1
 8004928:	4630      	mov	r0, r6
 800492a:	4639      	mov	r1, r7
 800492c:	f7fc f904 	bl	8000b38 <__aeabi_dmul>
 8004930:	460f      	mov	r7, r1
 8004932:	4606      	mov	r6, r0
 8004934:	f7fc fbb0 	bl	8001098 <__aeabi_d2iz>
 8004938:	4605      	mov	r5, r0
 800493a:	f7fc f893 	bl	8000a64 <__aeabi_i2d>
 800493e:	4602      	mov	r2, r0
 8004940:	460b      	mov	r3, r1
 8004942:	4630      	mov	r0, r6
 8004944:	4639      	mov	r1, r7
 8004946:	f7fb ff3f 	bl	80007c8 <__aeabi_dsub>
 800494a:	3530      	adds	r5, #48	; 0x30
 800494c:	b2ed      	uxtb	r5, r5
 800494e:	4642      	mov	r2, r8
 8004950:	464b      	mov	r3, r9
 8004952:	f804 5b01 	strb.w	r5, [r4], #1
 8004956:	4606      	mov	r6, r0
 8004958:	460f      	mov	r7, r1
 800495a:	f7fc fb5f 	bl	800101c <__aeabi_dcmplt>
 800495e:	4632      	mov	r2, r6
 8004960:	463b      	mov	r3, r7
 8004962:	2800      	cmp	r0, #0
 8004964:	d0c9      	beq.n	80048fa <_dtoa_r+0x3c2>
 8004966:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8004968:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 800496c:	9306      	str	r3, [sp, #24]
 800496e:	46d9      	mov	r9, fp
 8004970:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004974:	e236      	b.n	8004de4 <_dtoa_r+0x8ac>
 8004976:	46d9      	mov	r9, fp
 8004978:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 800497c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8004980:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8004984:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8004988:	e9cd 3400 	strd	r3, r4, [sp]
 800498c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 800498e:	2b00      	cmp	r3, #0
 8004990:	f2c0 80ae 	blt.w	8004af0 <_dtoa_r+0x5b8>
 8004994:	9a06      	ldr	r2, [sp, #24]
 8004996:	2a0e      	cmp	r2, #14
 8004998:	f300 80aa 	bgt.w	8004af0 <_dtoa_r+0x5b8>
 800499c:	4b21      	ldr	r3, [pc, #132]	; (8004a24 <_dtoa_r+0x4ec>)
 800499e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 80049a2:	ed93 7b00 	vldr	d7, [r3]
 80049a6:	9b07      	ldr	r3, [sp, #28]
 80049a8:	2b00      	cmp	r3, #0
 80049aa:	ed8d 7b02 	vstr	d7, [sp, #8]
 80049ae:	f2c0 82be 	blt.w	8004f2e <_dtoa_r+0x9f6>
 80049b2:	e9dd 6700 	ldrd	r6, r7, [sp]
 80049b6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80049ba:	4630      	mov	r0, r6
 80049bc:	4639      	mov	r1, r7
 80049be:	f7fc f9e5 	bl	8000d8c <__aeabi_ddiv>
 80049c2:	f7fc fb69 	bl	8001098 <__aeabi_d2iz>
 80049c6:	4605      	mov	r5, r0
 80049c8:	f7fc f84c 	bl	8000a64 <__aeabi_i2d>
 80049cc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 80049d0:	f7fc f8b2 	bl	8000b38 <__aeabi_dmul>
 80049d4:	460b      	mov	r3, r1
 80049d6:	4602      	mov	r2, r0
 80049d8:	4639      	mov	r1, r7
 80049da:	4630      	mov	r0, r6
 80049dc:	f7fb fef4 	bl	80007c8 <__aeabi_dsub>
 80049e0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 80049e4:	f88b 3000 	strb.w	r3, [fp]
 80049e8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80049ea:	2b01      	cmp	r3, #1
 80049ec:	4606      	mov	r6, r0
 80049ee:	460f      	mov	r7, r1
 80049f0:	f10b 0401 	add.w	r4, fp, #1
 80049f4:	d053      	beq.n	8004a9e <_dtoa_r+0x566>
 80049f6:	2200      	movs	r2, #0
 80049f8:	4b0f      	ldr	r3, [pc, #60]	; (8004a38 <_dtoa_r+0x500>)
 80049fa:	f7fc f89d 	bl	8000b38 <__aeabi_dmul>
 80049fe:	2200      	movs	r2, #0
 8004a00:	2300      	movs	r3, #0
 8004a02:	4606      	mov	r6, r0
 8004a04:	460f      	mov	r7, r1
 8004a06:	f7fc faff 	bl	8001008 <__aeabi_dcmpeq>
 8004a0a:	2800      	cmp	r0, #0
 8004a0c:	f040 81ea 	bne.w	8004de4 <_dtoa_r+0x8ac>
 8004a10:	f8cd a000 	str.w	sl, [sp]
 8004a14:	f8cd 901c 	str.w	r9, [sp, #28]
 8004a18:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004a1c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8004a20:	e017      	b.n	8004a52 <_dtoa_r+0x51a>
 8004a22:	bf00      	nop
 8004a24:	080075c8 	.word	0x080075c8
 8004a28:	080075a0 	.word	0x080075a0
 8004a2c:	3ff00000 	.word	0x3ff00000
 8004a30:	401c0000 	.word	0x401c0000
 8004a34:	3fe00000 	.word	0x3fe00000
 8004a38:	40240000 	.word	0x40240000
 8004a3c:	f7fc f87c 	bl	8000b38 <__aeabi_dmul>
 8004a40:	2200      	movs	r2, #0
 8004a42:	2300      	movs	r3, #0
 8004a44:	4606      	mov	r6, r0
 8004a46:	460f      	mov	r7, r1
 8004a48:	f7fc fade 	bl	8001008 <__aeabi_dcmpeq>
 8004a4c:	2800      	cmp	r0, #0
 8004a4e:	f040 833d 	bne.w	80050cc <_dtoa_r+0xb94>
 8004a52:	464a      	mov	r2, r9
 8004a54:	4653      	mov	r3, sl
 8004a56:	4630      	mov	r0, r6
 8004a58:	4639      	mov	r1, r7
 8004a5a:	f7fc f997 	bl	8000d8c <__aeabi_ddiv>
 8004a5e:	f7fc fb1b 	bl	8001098 <__aeabi_d2iz>
 8004a62:	4605      	mov	r5, r0
 8004a64:	f7fb fffe 	bl	8000a64 <__aeabi_i2d>
 8004a68:	464a      	mov	r2, r9
 8004a6a:	4653      	mov	r3, sl
 8004a6c:	f7fc f864 	bl	8000b38 <__aeabi_dmul>
 8004a70:	4602      	mov	r2, r0
 8004a72:	460b      	mov	r3, r1
 8004a74:	4630      	mov	r0, r6
 8004a76:	4639      	mov	r1, r7
 8004a78:	f7fb fea6 	bl	80007c8 <__aeabi_dsub>
 8004a7c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8004a80:	f804 cb01 	strb.w	ip, [r4], #1
 8004a84:	eba4 0c0b 	sub.w	ip, r4, fp
 8004a88:	45e0      	cmp	r8, ip
 8004a8a:	4606      	mov	r6, r0
 8004a8c:	460f      	mov	r7, r1
 8004a8e:	f04f 0200 	mov.w	r2, #0
 8004a92:	4bc1      	ldr	r3, [pc, #772]	; (8004d98 <_dtoa_r+0x860>)
 8004a94:	d1d2      	bne.n	8004a3c <_dtoa_r+0x504>
 8004a96:	f8dd a000 	ldr.w	sl, [sp]
 8004a9a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8004a9e:	4632      	mov	r2, r6
 8004aa0:	463b      	mov	r3, r7
 8004aa2:	4630      	mov	r0, r6
 8004aa4:	4639      	mov	r1, r7
 8004aa6:	f7fb fe91 	bl	80007cc <__adddf3>
 8004aaa:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004aae:	4606      	mov	r6, r0
 8004ab0:	460f      	mov	r7, r1
 8004ab2:	f7fc fad1 	bl	8001058 <__aeabi_dcmpgt>
 8004ab6:	b958      	cbnz	r0, 8004ad0 <_dtoa_r+0x598>
 8004ab8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8004abc:	4630      	mov	r0, r6
 8004abe:	4639      	mov	r1, r7
 8004ac0:	f7fc faa2 	bl	8001008 <__aeabi_dcmpeq>
 8004ac4:	2800      	cmp	r0, #0
 8004ac6:	f000 818d 	beq.w	8004de4 <_dtoa_r+0x8ac>
 8004aca:	07e9      	lsls	r1, r5, #31
 8004acc:	f140 818a 	bpl.w	8004de4 <_dtoa_r+0x8ac>
 8004ad0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8004ad4:	e005      	b.n	8004ae2 <_dtoa_r+0x5aa>
 8004ad6:	459b      	cmp	fp, r3
 8004ad8:	f000 8373 	beq.w	80051c2 <_dtoa_r+0xc8a>
 8004adc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8004ae0:	461c      	mov	r4, r3
 8004ae2:	2d39      	cmp	r5, #57	; 0x39
 8004ae4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004ae8:	d0f5      	beq.n	8004ad6 <_dtoa_r+0x59e>
 8004aea:	3501      	adds	r5, #1
 8004aec:	701d      	strb	r5, [r3, #0]
 8004aee:	e179      	b.n	8004de4 <_dtoa_r+0x8ac>
 8004af0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004af2:	2a00      	cmp	r2, #0
 8004af4:	d03b      	beq.n	8004b6e <_dtoa_r+0x636>
 8004af6:	9a02      	ldr	r2, [sp, #8]
 8004af8:	2a01      	cmp	r2, #1
 8004afa:	f340 820b 	ble.w	8004f14 <_dtoa_r+0x9dc>
 8004afe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b00:	1e5f      	subs	r7, r3, #1
 8004b02:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b04:	42bb      	cmp	r3, r7
 8004b06:	f2c0 82e6 	blt.w	80050d6 <_dtoa_r+0xb9e>
 8004b0a:	1bdf      	subs	r7, r3, r7
 8004b0c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004b0e:	2b00      	cmp	r3, #0
 8004b10:	f2c0 830b 	blt.w	800512a <_dtoa_r+0xbf2>
 8004b14:	9a08      	ldr	r2, [sp, #32]
 8004b16:	4614      	mov	r4, r2
 8004b18:	441a      	add	r2, r3
 8004b1a:	4498      	add	r8, r3
 8004b1c:	9208      	str	r2, [sp, #32]
 8004b1e:	2101      	movs	r1, #1
 8004b20:	4648      	mov	r0, r9
 8004b22:	f001 fcbf 	bl	80064a4 <__i2b>
 8004b26:	4605      	mov	r5, r0
 8004b28:	e024      	b.n	8004b74 <_dtoa_r+0x63c>
 8004b2a:	2301      	movs	r3, #1
 8004b2c:	930d      	str	r3, [sp, #52]	; 0x34
 8004b2e:	e5af      	b.n	8004690 <_dtoa_r+0x158>
 8004b30:	9a08      	ldr	r2, [sp, #32]
 8004b32:	9b06      	ldr	r3, [sp, #24]
 8004b34:	1ad2      	subs	r2, r2, r3
 8004b36:	425b      	negs	r3, r3
 8004b38:	930b      	str	r3, [sp, #44]	; 0x2c
 8004b3a:	2300      	movs	r3, #0
 8004b3c:	9208      	str	r2, [sp, #32]
 8004b3e:	930c      	str	r3, [sp, #48]	; 0x30
 8004b40:	e5b5      	b.n	80046ae <_dtoa_r+0x176>
 8004b42:	f1c4 0301 	rsb	r3, r4, #1
 8004b46:	9308      	str	r3, [sp, #32]
 8004b48:	f04f 0800 	mov.w	r8, #0
 8004b4c:	e5a7      	b.n	800469e <_dtoa_r+0x166>
 8004b4e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8004b52:	4640      	mov	r0, r8
 8004b54:	f7fb ff86 	bl	8000a64 <__aeabi_i2d>
 8004b58:	4632      	mov	r2, r6
 8004b5a:	463b      	mov	r3, r7
 8004b5c:	f7fc fa54 	bl	8001008 <__aeabi_dcmpeq>
 8004b60:	2800      	cmp	r0, #0
 8004b62:	f47f ad81 	bne.w	8004668 <_dtoa_r+0x130>
 8004b66:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8004b6a:	9306      	str	r3, [sp, #24]
 8004b6c:	e57c      	b.n	8004668 <_dtoa_r+0x130>
 8004b6e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004b70:	9c08      	ldr	r4, [sp, #32]
 8004b72:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8004b74:	2c00      	cmp	r4, #0
 8004b76:	dd0c      	ble.n	8004b92 <_dtoa_r+0x65a>
 8004b78:	f1b8 0f00 	cmp.w	r8, #0
 8004b7c:	dd09      	ble.n	8004b92 <_dtoa_r+0x65a>
 8004b7e:	4544      	cmp	r4, r8
 8004b80:	9a08      	ldr	r2, [sp, #32]
 8004b82:	4623      	mov	r3, r4
 8004b84:	bfa8      	it	ge
 8004b86:	4643      	movge	r3, r8
 8004b88:	1ad2      	subs	r2, r2, r3
 8004b8a:	9208      	str	r2, [sp, #32]
 8004b8c:	1ae4      	subs	r4, r4, r3
 8004b8e:	eba8 0803 	sub.w	r8, r8, r3
 8004b92:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004b94:	b16b      	cbz	r3, 8004bb2 <_dtoa_r+0x67a>
 8004b96:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004b98:	2a00      	cmp	r2, #0
 8004b9a:	f000 8290 	beq.w	80050be <_dtoa_r+0xb86>
 8004b9e:	1bde      	subs	r6, r3, r7
 8004ba0:	2f00      	cmp	r7, #0
 8004ba2:	f040 819b 	bne.w	8004edc <_dtoa_r+0x9a4>
 8004ba6:	4651      	mov	r1, sl
 8004ba8:	4632      	mov	r2, r6
 8004baa:	4648      	mov	r0, r9
 8004bac:	f001 fd2a 	bl	8006604 <__pow5mult>
 8004bb0:	4682      	mov	sl, r0
 8004bb2:	2101      	movs	r1, #1
 8004bb4:	4648      	mov	r0, r9
 8004bb6:	f001 fc75 	bl	80064a4 <__i2b>
 8004bba:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004bbc:	4606      	mov	r6, r0
 8004bbe:	2a00      	cmp	r2, #0
 8004bc0:	f040 8125 	bne.w	8004e0e <_dtoa_r+0x8d6>
 8004bc4:	9b02      	ldr	r3, [sp, #8]
 8004bc6:	2b01      	cmp	r3, #1
 8004bc8:	f340 816c 	ble.w	8004ea4 <_dtoa_r+0x96c>
 8004bcc:	2001      	movs	r0, #1
 8004bce:	4440      	add	r0, r8
 8004bd0:	f010 001f 	ands.w	r0, r0, #31
 8004bd4:	f000 8119 	beq.w	8004e0a <_dtoa_r+0x8d2>
 8004bd8:	f1c0 0320 	rsb	r3, r0, #32
 8004bdc:	2b04      	cmp	r3, #4
 8004bde:	f340 83ac 	ble.w	800533a <_dtoa_r+0xe02>
 8004be2:	f1c0 001c 	rsb	r0, r0, #28
 8004be6:	9b08      	ldr	r3, [sp, #32]
 8004be8:	4403      	add	r3, r0
 8004bea:	9308      	str	r3, [sp, #32]
 8004bec:	4404      	add	r4, r0
 8004bee:	4480      	add	r8, r0
 8004bf0:	9b08      	ldr	r3, [sp, #32]
 8004bf2:	2b00      	cmp	r3, #0
 8004bf4:	dd05      	ble.n	8004c02 <_dtoa_r+0x6ca>
 8004bf6:	4651      	mov	r1, sl
 8004bf8:	461a      	mov	r2, r3
 8004bfa:	4648      	mov	r0, r9
 8004bfc:	f001 fd52 	bl	80066a4 <__lshift>
 8004c00:	4682      	mov	sl, r0
 8004c02:	f1b8 0f00 	cmp.w	r8, #0
 8004c06:	dd05      	ble.n	8004c14 <_dtoa_r+0x6dc>
 8004c08:	4631      	mov	r1, r6
 8004c0a:	4642      	mov	r2, r8
 8004c0c:	4648      	mov	r0, r9
 8004c0e:	f001 fd49 	bl	80066a4 <__lshift>
 8004c12:	4606      	mov	r6, r0
 8004c14:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8004c16:	2b00      	cmp	r3, #0
 8004c18:	d177      	bne.n	8004d0a <_dtoa_r+0x7d2>
 8004c1a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004c1c:	2b00      	cmp	r3, #0
 8004c1e:	f340 8209 	ble.w	8005034 <_dtoa_r+0xafc>
 8004c22:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004c24:	2b00      	cmp	r3, #0
 8004c26:	f000 8089 	beq.w	8004d3c <_dtoa_r+0x804>
 8004c2a:	2c00      	cmp	r4, #0
 8004c2c:	f300 816b 	bgt.w	8004f06 <_dtoa_r+0x9ce>
 8004c30:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004c32:	2b00      	cmp	r3, #0
 8004c34:	f040 81cd 	bne.w	8004fd2 <_dtoa_r+0xa9a>
 8004c38:	46a8      	mov	r8, r5
 8004c3a:	9a00      	ldr	r2, [sp, #0]
 8004c3c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8004c40:	f002 0201 	and.w	r2, r2, #1
 8004c44:	920a      	str	r2, [sp, #40]	; 0x28
 8004c46:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8004c48:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8004c4c:	441a      	add	r2, r3
 8004c4e:	465f      	mov	r7, fp
 8004c50:	9209      	str	r2, [sp, #36]	; 0x24
 8004c52:	46b3      	mov	fp, r6
 8004c54:	4659      	mov	r1, fp
 8004c56:	4650      	mov	r0, sl
 8004c58:	f7ff fbdc 	bl	8004414 <quorem>
 8004c5c:	4629      	mov	r1, r5
 8004c5e:	4604      	mov	r4, r0
 8004c60:	4650      	mov	r0, sl
 8004c62:	f001 fd75 	bl	8006750 <__mcmp>
 8004c66:	4659      	mov	r1, fp
 8004c68:	4606      	mov	r6, r0
 8004c6a:	4642      	mov	r2, r8
 8004c6c:	4648      	mov	r0, r9
 8004c6e:	f001 fd8b 	bl	8006788 <__mdiff>
 8004c72:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8004c76:	9300      	str	r3, [sp, #0]
 8004c78:	68c3      	ldr	r3, [r0, #12]
 8004c7a:	4601      	mov	r1, r0
 8004c7c:	2b00      	cmp	r3, #0
 8004c7e:	f040 81d4 	bne.w	800502a <_dtoa_r+0xaf2>
 8004c82:	9008      	str	r0, [sp, #32]
 8004c84:	4650      	mov	r0, sl
 8004c86:	f001 fd63 	bl	8006750 <__mcmp>
 8004c8a:	9a08      	ldr	r2, [sp, #32]
 8004c8c:	9007      	str	r0, [sp, #28]
 8004c8e:	4611      	mov	r1, r2
 8004c90:	4648      	mov	r0, r9
 8004c92:	f001 fb6d 	bl	8006370 <_Bfree>
 8004c96:	9b07      	ldr	r3, [sp, #28]
 8004c98:	b933      	cbnz	r3, 8004ca8 <_dtoa_r+0x770>
 8004c9a:	9a02      	ldr	r2, [sp, #8]
 8004c9c:	b922      	cbnz	r2, 8004ca8 <_dtoa_r+0x770>
 8004c9e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004ca0:	2b00      	cmp	r3, #0
 8004ca2:	f000 8319 	beq.w	80052d8 <_dtoa_r+0xda0>
 8004ca6:	9b02      	ldr	r3, [sp, #8]
 8004ca8:	2e00      	cmp	r6, #0
 8004caa:	f2c0 821c 	blt.w	80050e6 <_dtoa_r+0xbae>
 8004cae:	d105      	bne.n	8004cbc <_dtoa_r+0x784>
 8004cb0:	9a02      	ldr	r2, [sp, #8]
 8004cb2:	b91a      	cbnz	r2, 8004cbc <_dtoa_r+0x784>
 8004cb4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8004cb6:	2a00      	cmp	r2, #0
 8004cb8:	f000 8215 	beq.w	80050e6 <_dtoa_r+0xbae>
 8004cbc:	2b00      	cmp	r3, #0
 8004cbe:	f107 0401 	add.w	r4, r7, #1
 8004cc2:	f300 8225 	bgt.w	8005110 <_dtoa_r+0xbd8>
 8004cc6:	9b00      	ldr	r3, [sp, #0]
 8004cc8:	703b      	strb	r3, [r7, #0]
 8004cca:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004ccc:	42bb      	cmp	r3, r7
 8004cce:	f000 8230 	beq.w	8005132 <_dtoa_r+0xbfa>
 8004cd2:	4651      	mov	r1, sl
 8004cd4:	2300      	movs	r3, #0
 8004cd6:	220a      	movs	r2, #10
 8004cd8:	4648      	mov	r0, r9
 8004cda:	f001 fb53 	bl	8006384 <__multadd>
 8004cde:	4545      	cmp	r5, r8
 8004ce0:	4682      	mov	sl, r0
 8004ce2:	4629      	mov	r1, r5
 8004ce4:	f04f 0300 	mov.w	r3, #0
 8004ce8:	f04f 020a 	mov.w	r2, #10
 8004cec:	4648      	mov	r0, r9
 8004cee:	f000 8196 	beq.w	800501e <_dtoa_r+0xae6>
 8004cf2:	f001 fb47 	bl	8006384 <__multadd>
 8004cf6:	4641      	mov	r1, r8
 8004cf8:	4605      	mov	r5, r0
 8004cfa:	2300      	movs	r3, #0
 8004cfc:	220a      	movs	r2, #10
 8004cfe:	4648      	mov	r0, r9
 8004d00:	f001 fb40 	bl	8006384 <__multadd>
 8004d04:	4627      	mov	r7, r4
 8004d06:	4680      	mov	r8, r0
 8004d08:	e7a4      	b.n	8004c54 <_dtoa_r+0x71c>
 8004d0a:	4631      	mov	r1, r6
 8004d0c:	4650      	mov	r0, sl
 8004d0e:	f001 fd1f 	bl	8006750 <__mcmp>
 8004d12:	2800      	cmp	r0, #0
 8004d14:	da81      	bge.n	8004c1a <_dtoa_r+0x6e2>
 8004d16:	9f06      	ldr	r7, [sp, #24]
 8004d18:	4651      	mov	r1, sl
 8004d1a:	2300      	movs	r3, #0
 8004d1c:	220a      	movs	r2, #10
 8004d1e:	4648      	mov	r0, r9
 8004d20:	3f01      	subs	r7, #1
 8004d22:	9706      	str	r7, [sp, #24]
 8004d24:	f001 fb2e 	bl	8006384 <__multadd>
 8004d28:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8004d2a:	4682      	mov	sl, r0
 8004d2c:	2b00      	cmp	r3, #0
 8004d2e:	f040 82eb 	bne.w	8005308 <_dtoa_r+0xdd0>
 8004d32:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8004d34:	2b00      	cmp	r3, #0
 8004d36:	f340 82f3 	ble.w	8005320 <_dtoa_r+0xde8>
 8004d3a:	9309      	str	r3, [sp, #36]	; 0x24
 8004d3c:	465c      	mov	r4, fp
 8004d3e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8004d42:	e002      	b.n	8004d4a <_dtoa_r+0x812>
 8004d44:	f001 fb1e 	bl	8006384 <__multadd>
 8004d48:	4682      	mov	sl, r0
 8004d4a:	4631      	mov	r1, r6
 8004d4c:	4650      	mov	r0, sl
 8004d4e:	f7ff fb61 	bl	8004414 <quorem>
 8004d52:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8004d56:	f804 7b01 	strb.w	r7, [r4], #1
 8004d5a:	eba4 030b 	sub.w	r3, r4, fp
 8004d5e:	4598      	cmp	r8, r3
 8004d60:	f04f 020a 	mov.w	r2, #10
 8004d64:	f04f 0300 	mov.w	r3, #0
 8004d68:	4651      	mov	r1, sl
 8004d6a:	4648      	mov	r0, r9
 8004d6c:	dcea      	bgt.n	8004d44 <_dtoa_r+0x80c>
 8004d6e:	2300      	movs	r3, #0
 8004d70:	9700      	str	r7, [sp, #0]
 8004d72:	9302      	str	r3, [sp, #8]
 8004d74:	4651      	mov	r1, sl
 8004d76:	2201      	movs	r2, #1
 8004d78:	4648      	mov	r0, r9
 8004d7a:	f001 fc93 	bl	80066a4 <__lshift>
 8004d7e:	4631      	mov	r1, r6
 8004d80:	4682      	mov	sl, r0
 8004d82:	f001 fce5 	bl	8006750 <__mcmp>
 8004d86:	2800      	cmp	r0, #0
 8004d88:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 8004d8c:	dc14      	bgt.n	8004db8 <_dtoa_r+0x880>
 8004d8e:	d108      	bne.n	8004da2 <_dtoa_r+0x86a>
 8004d90:	9b00      	ldr	r3, [sp, #0]
 8004d92:	07db      	lsls	r3, r3, #31
 8004d94:	d410      	bmi.n	8004db8 <_dtoa_r+0x880>
 8004d96:	e004      	b.n	8004da2 <_dtoa_r+0x86a>
 8004d98:	40240000 	.word	0x40240000
 8004d9c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8004da0:	461c      	mov	r4, r3
 8004da2:	2a30      	cmp	r2, #48	; 0x30
 8004da4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004da8:	d0f8      	beq.n	8004d9c <_dtoa_r+0x864>
 8004daa:	e00b      	b.n	8004dc4 <_dtoa_r+0x88c>
 8004dac:	459b      	cmp	fp, r3
 8004dae:	f000 814e 	beq.w	800504e <_dtoa_r+0xb16>
 8004db2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8004db6:	461c      	mov	r4, r3
 8004db8:	2a39      	cmp	r2, #57	; 0x39
 8004dba:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8004dbe:	d0f5      	beq.n	8004dac <_dtoa_r+0x874>
 8004dc0:	3201      	adds	r2, #1
 8004dc2:	701a      	strb	r2, [r3, #0]
 8004dc4:	4631      	mov	r1, r6
 8004dc6:	4648      	mov	r0, r9
 8004dc8:	f001 fad2 	bl	8006370 <_Bfree>
 8004dcc:	b155      	cbz	r5, 8004de4 <_dtoa_r+0x8ac>
 8004dce:	9902      	ldr	r1, [sp, #8]
 8004dd0:	b121      	cbz	r1, 8004ddc <_dtoa_r+0x8a4>
 8004dd2:	42a9      	cmp	r1, r5
 8004dd4:	d002      	beq.n	8004ddc <_dtoa_r+0x8a4>
 8004dd6:	4648      	mov	r0, r9
 8004dd8:	f001 faca 	bl	8006370 <_Bfree>
 8004ddc:	4629      	mov	r1, r5
 8004dde:	4648      	mov	r0, r9
 8004de0:	f001 fac6 	bl	8006370 <_Bfree>
 8004de4:	4651      	mov	r1, sl
 8004de6:	4648      	mov	r0, r9
 8004de8:	f001 fac2 	bl	8006370 <_Bfree>
 8004dec:	2200      	movs	r2, #0
 8004dee:	9b06      	ldr	r3, [sp, #24]
 8004df0:	7022      	strb	r2, [r4, #0]
 8004df2:	9a05      	ldr	r2, [sp, #20]
 8004df4:	3301      	adds	r3, #1
 8004df6:	6013      	str	r3, [r2, #0]
 8004df8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8004dfa:	2b00      	cmp	r3, #0
 8004dfc:	f43f abdb 	beq.w	80045b6 <_dtoa_r+0x7e>
 8004e00:	4658      	mov	r0, fp
 8004e02:	601c      	str	r4, [r3, #0]
 8004e04:	b01b      	add	sp, #108	; 0x6c
 8004e06:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004e0a:	201c      	movs	r0, #28
 8004e0c:	e6eb      	b.n	8004be6 <_dtoa_r+0x6ae>
 8004e0e:	4601      	mov	r1, r0
 8004e10:	4648      	mov	r0, r9
 8004e12:	f001 fbf7 	bl	8006604 <__pow5mult>
 8004e16:	9b02      	ldr	r3, [sp, #8]
 8004e18:	2b01      	cmp	r3, #1
 8004e1a:	4606      	mov	r6, r0
 8004e1c:	f340 80d4 	ble.w	8004fc8 <_dtoa_r+0xa90>
 8004e20:	2300      	movs	r3, #0
 8004e22:	930c      	str	r3, [sp, #48]	; 0x30
 8004e24:	6933      	ldr	r3, [r6, #16]
 8004e26:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 8004e2a:	6918      	ldr	r0, [r3, #16]
 8004e2c:	f001 faea 	bl	8006404 <__hi0bits>
 8004e30:	f1c0 0020 	rsb	r0, r0, #32
 8004e34:	e6cb      	b.n	8004bce <_dtoa_r+0x696>
 8004e36:	900d      	str	r0, [sp, #52]	; 0x34
 8004e38:	e42a      	b.n	8004690 <_dtoa_r+0x158>
 8004e3a:	2501      	movs	r5, #1
 8004e3c:	e440      	b.n	80046c0 <_dtoa_r+0x188>
 8004e3e:	f1c3 0820 	rsb	r8, r3, #32
 8004e42:	9b00      	ldr	r3, [sp, #0]
 8004e44:	fa03 f008 	lsl.w	r0, r3, r8
 8004e48:	f7ff bbd8 	b.w	80045fc <_dtoa_r+0xc4>
 8004e4c:	2300      	movs	r3, #0
 8004e4e:	930a      	str	r3, [sp, #40]	; 0x28
 8004e50:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8004e54:	4413      	add	r3, r2
 8004e56:	930e      	str	r3, [sp, #56]	; 0x38
 8004e58:	3301      	adds	r3, #1
 8004e5a:	2b01      	cmp	r3, #1
 8004e5c:	461e      	mov	r6, r3
 8004e5e:	9309      	str	r3, [sp, #36]	; 0x24
 8004e60:	bfb8      	it	lt
 8004e62:	2601      	movlt	r6, #1
 8004e64:	2100      	movs	r1, #0
 8004e66:	2e17      	cmp	r6, #23
 8004e68:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004e6c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 8004e6e:	f77f ac89 	ble.w	8004784 <_dtoa_r+0x24c>
 8004e72:	2201      	movs	r2, #1
 8004e74:	2304      	movs	r3, #4
 8004e76:	005b      	lsls	r3, r3, #1
 8004e78:	f103 0014 	add.w	r0, r3, #20
 8004e7c:	42b0      	cmp	r0, r6
 8004e7e:	4611      	mov	r1, r2
 8004e80:	f102 0201 	add.w	r2, r2, #1
 8004e84:	d9f7      	bls.n	8004e76 <_dtoa_r+0x93e>
 8004e86:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8004e8a:	e47b      	b.n	8004784 <_dtoa_r+0x24c>
 8004e8c:	2300      	movs	r3, #0
 8004e8e:	930a      	str	r3, [sp, #40]	; 0x28
 8004e90:	9e07      	ldr	r6, [sp, #28]
 8004e92:	2e00      	cmp	r6, #0
 8004e94:	f340 80e2 	ble.w	800505c <_dtoa_r+0xb24>
 8004e98:	960e      	str	r6, [sp, #56]	; 0x38
 8004e9a:	9609      	str	r6, [sp, #36]	; 0x24
 8004e9c:	e7e2      	b.n	8004e64 <_dtoa_r+0x92c>
 8004e9e:	2301      	movs	r3, #1
 8004ea0:	930a      	str	r3, [sp, #40]	; 0x28
 8004ea2:	e7f5      	b.n	8004e90 <_dtoa_r+0x958>
 8004ea4:	9b00      	ldr	r3, [sp, #0]
 8004ea6:	2b00      	cmp	r3, #0
 8004ea8:	f47f ae90 	bne.w	8004bcc <_dtoa_r+0x694>
 8004eac:	e9dd 1200 	ldrd	r1, r2, [sp]
 8004eb0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8004eb4:	2b00      	cmp	r3, #0
 8004eb6:	f040 8192 	bne.w	80051de <_dtoa_r+0xca6>
 8004eba:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8004ebe:	0d1b      	lsrs	r3, r3, #20
 8004ec0:	051b      	lsls	r3, r3, #20
 8004ec2:	b12b      	cbz	r3, 8004ed0 <_dtoa_r+0x998>
 8004ec4:	9b08      	ldr	r3, [sp, #32]
 8004ec6:	3301      	adds	r3, #1
 8004ec8:	9308      	str	r3, [sp, #32]
 8004eca:	f108 0801 	add.w	r8, r8, #1
 8004ece:	2301      	movs	r3, #1
 8004ed0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8004ed2:	930c      	str	r3, [sp, #48]	; 0x30
 8004ed4:	2a00      	cmp	r2, #0
 8004ed6:	f43f ae79 	beq.w	8004bcc <_dtoa_r+0x694>
 8004eda:	e7a3      	b.n	8004e24 <_dtoa_r+0x8ec>
 8004edc:	463a      	mov	r2, r7
 8004ede:	4629      	mov	r1, r5
 8004ee0:	4648      	mov	r0, r9
 8004ee2:	f001 fb8f 	bl	8006604 <__pow5mult>
 8004ee6:	4652      	mov	r2, sl
 8004ee8:	4601      	mov	r1, r0
 8004eea:	4605      	mov	r5, r0
 8004eec:	4648      	mov	r0, r9
 8004eee:	f001 fae3 	bl	80064b8 <__multiply>
 8004ef2:	4651      	mov	r1, sl
 8004ef4:	4607      	mov	r7, r0
 8004ef6:	4648      	mov	r0, r9
 8004ef8:	f001 fa3a 	bl	8006370 <_Bfree>
 8004efc:	46ba      	mov	sl, r7
 8004efe:	2e00      	cmp	r6, #0
 8004f00:	f43f ae57 	beq.w	8004bb2 <_dtoa_r+0x67a>
 8004f04:	e64f      	b.n	8004ba6 <_dtoa_r+0x66e>
 8004f06:	4629      	mov	r1, r5
 8004f08:	4622      	mov	r2, r4
 8004f0a:	4648      	mov	r0, r9
 8004f0c:	f001 fbca 	bl	80066a4 <__lshift>
 8004f10:	4605      	mov	r5, r0
 8004f12:	e68d      	b.n	8004c30 <_dtoa_r+0x6f8>
 8004f14:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8004f16:	2a00      	cmp	r2, #0
 8004f18:	f000 815d 	beq.w	80051d6 <_dtoa_r+0xc9e>
 8004f1c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8004f20:	9a08      	ldr	r2, [sp, #32]
 8004f22:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8004f24:	4614      	mov	r4, r2
 8004f26:	441a      	add	r2, r3
 8004f28:	4498      	add	r8, r3
 8004f2a:	9208      	str	r2, [sp, #32]
 8004f2c:	e5f7      	b.n	8004b1e <_dtoa_r+0x5e6>
 8004f2e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f30:	2b00      	cmp	r3, #0
 8004f32:	f73f ad3e 	bgt.w	80049b2 <_dtoa_r+0x47a>
 8004f36:	f040 80bc 	bne.w	80050b2 <_dtoa_r+0xb7a>
 8004f3a:	ec51 0b17 	vmov	r0, r1, d7
 8004f3e:	2200      	movs	r2, #0
 8004f40:	4bb2      	ldr	r3, [pc, #712]	; (800520c <_dtoa_r+0xcd4>)
 8004f42:	f7fb fdf9 	bl	8000b38 <__aeabi_dmul>
 8004f46:	e9dd 2300 	ldrd	r2, r3, [sp]
 8004f4a:	f7fc f87b 	bl	8001044 <__aeabi_dcmpge>
 8004f4e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8004f50:	4635      	mov	r5, r6
 8004f52:	2800      	cmp	r0, #0
 8004f54:	d176      	bne.n	8005044 <_dtoa_r+0xb0c>
 8004f56:	9a06      	ldr	r2, [sp, #24]
 8004f58:	2331      	movs	r3, #49	; 0x31
 8004f5a:	3201      	adds	r2, #1
 8004f5c:	9206      	str	r2, [sp, #24]
 8004f5e:	f88b 3000 	strb.w	r3, [fp]
 8004f62:	f10b 0401 	add.w	r4, fp, #1
 8004f66:	4631      	mov	r1, r6
 8004f68:	4648      	mov	r0, r9
 8004f6a:	f001 fa01 	bl	8006370 <_Bfree>
 8004f6e:	2d00      	cmp	r5, #0
 8004f70:	f47f af34 	bne.w	8004ddc <_dtoa_r+0x8a4>
 8004f74:	e736      	b.n	8004de4 <_dtoa_r+0x8ac>
 8004f76:	f000 8142 	beq.w	80051fe <_dtoa_r+0xcc6>
 8004f7a:	9b06      	ldr	r3, [sp, #24]
 8004f7c:	425c      	negs	r4, r3
 8004f7e:	4ba4      	ldr	r3, [pc, #656]	; (8005210 <_dtoa_r+0xcd8>)
 8004f80:	f004 020f 	and.w	r2, r4, #15
 8004f84:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8004f88:	e9d3 2300 	ldrd	r2, r3, [r3]
 8004f8c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8004f90:	f7fb fdd2 	bl	8000b38 <__aeabi_dmul>
 8004f94:	1124      	asrs	r4, r4, #4
 8004f96:	e9cd 0100 	strd	r0, r1, [sp]
 8004f9a:	f000 81c6 	beq.w	800532a <_dtoa_r+0xdf2>
 8004f9e:	4d9d      	ldr	r5, [pc, #628]	; (8005214 <_dtoa_r+0xcdc>)
 8004fa0:	2300      	movs	r3, #0
 8004fa2:	2602      	movs	r6, #2
 8004fa4:	07e7      	lsls	r7, r4, #31
 8004fa6:	d505      	bpl.n	8004fb4 <_dtoa_r+0xa7c>
 8004fa8:	e9d5 2300 	ldrd	r2, r3, [r5]
 8004fac:	f7fb fdc4 	bl	8000b38 <__aeabi_dmul>
 8004fb0:	3601      	adds	r6, #1
 8004fb2:	2301      	movs	r3, #1
 8004fb4:	1064      	asrs	r4, r4, #1
 8004fb6:	f105 0508 	add.w	r5, r5, #8
 8004fba:	d1f3      	bne.n	8004fa4 <_dtoa_r+0xa6c>
 8004fbc:	2b00      	cmp	r3, #0
 8004fbe:	f43f ac27 	beq.w	8004810 <_dtoa_r+0x2d8>
 8004fc2:	e9cd 0100 	strd	r0, r1, [sp]
 8004fc6:	e423      	b.n	8004810 <_dtoa_r+0x2d8>
 8004fc8:	9b00      	ldr	r3, [sp, #0]
 8004fca:	2b00      	cmp	r3, #0
 8004fcc:	f43f af6e 	beq.w	8004eac <_dtoa_r+0x974>
 8004fd0:	e726      	b.n	8004e20 <_dtoa_r+0x8e8>
 8004fd2:	6869      	ldr	r1, [r5, #4]
 8004fd4:	4648      	mov	r0, r9
 8004fd6:	f001 f9a5 	bl	8006324 <_Balloc>
 8004fda:	692b      	ldr	r3, [r5, #16]
 8004fdc:	3302      	adds	r3, #2
 8004fde:	009a      	lsls	r2, r3, #2
 8004fe0:	4604      	mov	r4, r0
 8004fe2:	f105 010c 	add.w	r1, r5, #12
 8004fe6:	300c      	adds	r0, #12
 8004fe8:	f7fb fa8a 	bl	8000500 <memcpy>
 8004fec:	4621      	mov	r1, r4
 8004fee:	2201      	movs	r2, #1
 8004ff0:	4648      	mov	r0, r9
 8004ff2:	f001 fb57 	bl	80066a4 <__lshift>
 8004ff6:	4680      	mov	r8, r0
 8004ff8:	e61f      	b.n	8004c3a <_dtoa_r+0x702>
 8004ffa:	2400      	movs	r4, #0
 8004ffc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 8005000:	4621      	mov	r1, r4
 8005002:	4648      	mov	r0, r9
 8005004:	f001 f98e 	bl	8006324 <_Balloc>
 8005008:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 800500c:	930e      	str	r3, [sp, #56]	; 0x38
 800500e:	9309      	str	r3, [sp, #36]	; 0x24
 8005010:	2301      	movs	r3, #1
 8005012:	4683      	mov	fp, r0
 8005014:	9407      	str	r4, [sp, #28]
 8005016:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800501a:	930a      	str	r3, [sp, #40]	; 0x28
 800501c:	e4b6      	b.n	800498c <_dtoa_r+0x454>
 800501e:	f001 f9b1 	bl	8006384 <__multadd>
 8005022:	4627      	mov	r7, r4
 8005024:	4605      	mov	r5, r0
 8005026:	4680      	mov	r8, r0
 8005028:	e614      	b.n	8004c54 <_dtoa_r+0x71c>
 800502a:	4648      	mov	r0, r9
 800502c:	f001 f9a0 	bl	8006370 <_Bfree>
 8005030:	2301      	movs	r3, #1
 8005032:	e639      	b.n	8004ca8 <_dtoa_r+0x770>
 8005034:	9b02      	ldr	r3, [sp, #8]
 8005036:	2b02      	cmp	r3, #2
 8005038:	f77f adf3 	ble.w	8004c22 <_dtoa_r+0x6ea>
 800503c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800503e:	2b00      	cmp	r3, #0
 8005040:	f000 80cf 	beq.w	80051e2 <_dtoa_r+0xcaa>
 8005044:	9b07      	ldr	r3, [sp, #28]
 8005046:	43db      	mvns	r3, r3
 8005048:	9306      	str	r3, [sp, #24]
 800504a:	465c      	mov	r4, fp
 800504c:	e78b      	b.n	8004f66 <_dtoa_r+0xa2e>
 800504e:	9a06      	ldr	r2, [sp, #24]
 8005050:	2331      	movs	r3, #49	; 0x31
 8005052:	3201      	adds	r2, #1
 8005054:	9206      	str	r2, [sp, #24]
 8005056:	f88b 3000 	strb.w	r3, [fp]
 800505a:	e6b3      	b.n	8004dc4 <_dtoa_r+0x88c>
 800505c:	2401      	movs	r4, #1
 800505e:	9409      	str	r4, [sp, #36]	; 0x24
 8005060:	9407      	str	r4, [sp, #28]
 8005062:	f7ff bb8b 	b.w	800477c <_dtoa_r+0x244>
 8005066:	4630      	mov	r0, r6
 8005068:	f7fb fcfc 	bl	8000a64 <__aeabi_i2d>
 800506c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8005070:	f7fb fd62 	bl	8000b38 <__aeabi_dmul>
 8005074:	2200      	movs	r2, #0
 8005076:	4b68      	ldr	r3, [pc, #416]	; (8005218 <_dtoa_r+0xce0>)
 8005078:	f7fb fba8 	bl	80007cc <__adddf3>
 800507c:	4606      	mov	r6, r0
 800507e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005082:	2200      	movs	r2, #0
 8005084:	4b61      	ldr	r3, [pc, #388]	; (800520c <_dtoa_r+0xcd4>)
 8005086:	e9dd 0100 	ldrd	r0, r1, [sp]
 800508a:	f7fb fb9d 	bl	80007c8 <__aeabi_dsub>
 800508e:	4632      	mov	r2, r6
 8005090:	463b      	mov	r3, r7
 8005092:	4604      	mov	r4, r0
 8005094:	460d      	mov	r5, r1
 8005096:	f7fb ffdf 	bl	8001058 <__aeabi_dcmpgt>
 800509a:	2800      	cmp	r0, #0
 800509c:	d14f      	bne.n	800513e <_dtoa_r+0xc06>
 800509e:	4632      	mov	r2, r6
 80050a0:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 80050a4:	4620      	mov	r0, r4
 80050a6:	4629      	mov	r1, r5
 80050a8:	f7fb ffb8 	bl	800101c <__aeabi_dcmplt>
 80050ac:	2800      	cmp	r0, #0
 80050ae:	f43f ac69 	beq.w	8004984 <_dtoa_r+0x44c>
 80050b2:	2600      	movs	r6, #0
 80050b4:	4635      	mov	r5, r6
 80050b6:	e7c5      	b.n	8005044 <_dtoa_r+0xb0c>
 80050b8:	2301      	movs	r3, #1
 80050ba:	930a      	str	r3, [sp, #40]	; 0x28
 80050bc:	e6c8      	b.n	8004e50 <_dtoa_r+0x918>
 80050be:	4651      	mov	r1, sl
 80050c0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80050c2:	4648      	mov	r0, r9
 80050c4:	f001 fa9e 	bl	8006604 <__pow5mult>
 80050c8:	4682      	mov	sl, r0
 80050ca:	e572      	b.n	8004bb2 <_dtoa_r+0x67a>
 80050cc:	f8dd a000 	ldr.w	sl, [sp]
 80050d0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80050d4:	e686      	b.n	8004de4 <_dtoa_r+0x8ac>
 80050d6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80050d8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80050da:	1afb      	subs	r3, r7, r3
 80050dc:	441a      	add	r2, r3
 80050de:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80050e2:	2700      	movs	r7, #0
 80050e4:	e512      	b.n	8004b0c <_dtoa_r+0x5d4>
 80050e6:	2b00      	cmp	r3, #0
 80050e8:	9402      	str	r4, [sp, #8]
 80050ea:	465e      	mov	r6, fp
 80050ec:	f107 0401 	add.w	r4, r7, #1
 80050f0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80050f4:	f300 80ba 	bgt.w	800526c <_dtoa_r+0xd34>
 80050f8:	9b00      	ldr	r3, [sp, #0]
 80050fa:	9502      	str	r5, [sp, #8]
 80050fc:	703b      	strb	r3, [r7, #0]
 80050fe:	4645      	mov	r5, r8
 8005100:	e660      	b.n	8004dc4 <_dtoa_r+0x88c>
 8005102:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005106:	2602      	movs	r6, #2
 8005108:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 800510c:	f7ff bb67 	b.w	80047de <_dtoa_r+0x2a6>
 8005110:	9b00      	ldr	r3, [sp, #0]
 8005112:	2b39      	cmp	r3, #57	; 0x39
 8005114:	465e      	mov	r6, fp
 8005116:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800511a:	f000 80b9 	beq.w	8005290 <_dtoa_r+0xd58>
 800511e:	9b00      	ldr	r3, [sp, #0]
 8005120:	9502      	str	r5, [sp, #8]
 8005122:	3301      	adds	r3, #1
 8005124:	703b      	strb	r3, [r7, #0]
 8005126:	4645      	mov	r5, r8
 8005128:	e64c      	b.n	8004dc4 <_dtoa_r+0x88c>
 800512a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800512e:	1a9c      	subs	r4, r3, r2
 8005130:	e4f5      	b.n	8004b1e <_dtoa_r+0x5e6>
 8005132:	465e      	mov	r6, fp
 8005134:	9502      	str	r5, [sp, #8]
 8005136:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800513a:	4645      	mov	r5, r8
 800513c:	e61a      	b.n	8004d74 <_dtoa_r+0x83c>
 800513e:	2600      	movs	r6, #0
 8005140:	4635      	mov	r5, r6
 8005142:	e708      	b.n	8004f56 <_dtoa_r+0xa1e>
 8005144:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8005148:	e9dd 0100 	ldrd	r0, r1, [sp]
 800514c:	f7fb fcf4 	bl	8000b38 <__aeabi_dmul>
 8005150:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005152:	f88b 5000 	strb.w	r5, [fp]
 8005156:	2b01      	cmp	r3, #1
 8005158:	e9cd 0100 	strd	r0, r1, [sp]
 800515c:	d020      	beq.n	80051a0 <_dtoa_r+0xc68>
 800515e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8005160:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8005164:	445b      	add	r3, fp
 8005166:	4698      	mov	r8, r3
 8005168:	2200      	movs	r2, #0
 800516a:	4b2c      	ldr	r3, [pc, #176]	; (800521c <_dtoa_r+0xce4>)
 800516c:	4630      	mov	r0, r6
 800516e:	4639      	mov	r1, r7
 8005170:	f7fb fce2 	bl	8000b38 <__aeabi_dmul>
 8005174:	460f      	mov	r7, r1
 8005176:	4606      	mov	r6, r0
 8005178:	f7fb ff8e 	bl	8001098 <__aeabi_d2iz>
 800517c:	4605      	mov	r5, r0
 800517e:	f7fb fc71 	bl	8000a64 <__aeabi_i2d>
 8005182:	3530      	adds	r5, #48	; 0x30
 8005184:	4602      	mov	r2, r0
 8005186:	460b      	mov	r3, r1
 8005188:	4630      	mov	r0, r6
 800518a:	4639      	mov	r1, r7
 800518c:	f7fb fb1c 	bl	80007c8 <__aeabi_dsub>
 8005190:	f804 5b01 	strb.w	r5, [r4], #1
 8005194:	4544      	cmp	r4, r8
 8005196:	4606      	mov	r6, r0
 8005198:	460f      	mov	r7, r1
 800519a:	d1e5      	bne.n	8005168 <_dtoa_r+0xc30>
 800519c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 80051a0:	4b1f      	ldr	r3, [pc, #124]	; (8005220 <_dtoa_r+0xce8>)
 80051a2:	2200      	movs	r2, #0
 80051a4:	e9dd 0100 	ldrd	r0, r1, [sp]
 80051a8:	f7fb fb10 	bl	80007cc <__adddf3>
 80051ac:	4632      	mov	r2, r6
 80051ae:	463b      	mov	r3, r7
 80051b0:	f7fb ff34 	bl	800101c <__aeabi_dcmplt>
 80051b4:	2800      	cmp	r0, #0
 80051b6:	d070      	beq.n	800529a <_dtoa_r+0xd62>
 80051b8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80051ba:	9306      	str	r3, [sp, #24]
 80051bc:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80051c0:	e48f      	b.n	8004ae2 <_dtoa_r+0x5aa>
 80051c2:	2330      	movs	r3, #48	; 0x30
 80051c4:	f88b 3000 	strb.w	r3, [fp]
 80051c8:	9b06      	ldr	r3, [sp, #24]
 80051ca:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80051ce:	3301      	adds	r3, #1
 80051d0:	9306      	str	r3, [sp, #24]
 80051d2:	465b      	mov	r3, fp
 80051d4:	e489      	b.n	8004aea <_dtoa_r+0x5b2>
 80051d6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80051d8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80051dc:	e6a0      	b.n	8004f20 <_dtoa_r+0x9e8>
 80051de:	2300      	movs	r3, #0
 80051e0:	e676      	b.n	8004ed0 <_dtoa_r+0x998>
 80051e2:	4631      	mov	r1, r6
 80051e4:	2205      	movs	r2, #5
 80051e6:	4648      	mov	r0, r9
 80051e8:	f001 f8cc 	bl	8006384 <__multadd>
 80051ec:	4601      	mov	r1, r0
 80051ee:	4606      	mov	r6, r0
 80051f0:	4650      	mov	r0, sl
 80051f2:	f001 faad 	bl	8006750 <__mcmp>
 80051f6:	2800      	cmp	r0, #0
 80051f8:	f73f aead 	bgt.w	8004f56 <_dtoa_r+0xa1e>
 80051fc:	e722      	b.n	8005044 <_dtoa_r+0xb0c>
 80051fe:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 8005202:	2602      	movs	r6, #2
 8005204:	ed8d 7b00 	vstr	d7, [sp]
 8005208:	f7ff bb02 	b.w	8004810 <_dtoa_r+0x2d8>
 800520c:	40140000 	.word	0x40140000
 8005210:	080075c8 	.word	0x080075c8
 8005214:	080075a0 	.word	0x080075a0
 8005218:	401c0000 	.word	0x401c0000
 800521c:	40240000 	.word	0x40240000
 8005220:	3fe00000 	.word	0x3fe00000
 8005224:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005226:	2b00      	cmp	r3, #0
 8005228:	f43f af1d 	beq.w	8005066 <_dtoa_r+0xb2e>
 800522c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800522e:	2c00      	cmp	r4, #0
 8005230:	f77f aba8 	ble.w	8004984 <_dtoa_r+0x44c>
 8005234:	2200      	movs	r2, #0
 8005236:	4b45      	ldr	r3, [pc, #276]	; (800534c <_dtoa_r+0xe14>)
 8005238:	e9dd 0100 	ldrd	r0, r1, [sp]
 800523c:	f7fb fc7c 	bl	8000b38 <__aeabi_dmul>
 8005240:	e9cd 0100 	strd	r0, r1, [sp]
 8005244:	1c70      	adds	r0, r6, #1
 8005246:	f7fb fc0d 	bl	8000a64 <__aeabi_i2d>
 800524a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800524e:	f7fb fc73 	bl	8000b38 <__aeabi_dmul>
 8005252:	4b3f      	ldr	r3, [pc, #252]	; (8005350 <_dtoa_r+0xe18>)
 8005254:	2200      	movs	r2, #0
 8005256:	f7fb fab9 	bl	80007cc <__adddf3>
 800525a:	9b06      	ldr	r3, [sp, #24]
 800525c:	9412      	str	r4, [sp, #72]	; 0x48
 800525e:	3b01      	subs	r3, #1
 8005260:	4606      	mov	r6, r0
 8005262:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8005266:	9316      	str	r3, [sp, #88]	; 0x58
 8005268:	f7ff baf3 	b.w	8004852 <_dtoa_r+0x31a>
 800526c:	4651      	mov	r1, sl
 800526e:	2201      	movs	r2, #1
 8005270:	4648      	mov	r0, r9
 8005272:	f001 fa17 	bl	80066a4 <__lshift>
 8005276:	4631      	mov	r1, r6
 8005278:	4682      	mov	sl, r0
 800527a:	f001 fa69 	bl	8006750 <__mcmp>
 800527e:	2800      	cmp	r0, #0
 8005280:	dd3b      	ble.n	80052fa <_dtoa_r+0xdc2>
 8005282:	9b00      	ldr	r3, [sp, #0]
 8005284:	2b39      	cmp	r3, #57	; 0x39
 8005286:	d003      	beq.n	8005290 <_dtoa_r+0xd58>
 8005288:	9b02      	ldr	r3, [sp, #8]
 800528a:	3331      	adds	r3, #49	; 0x31
 800528c:	9300      	str	r3, [sp, #0]
 800528e:	e733      	b.n	80050f8 <_dtoa_r+0xbc0>
 8005290:	2239      	movs	r2, #57	; 0x39
 8005292:	9502      	str	r5, [sp, #8]
 8005294:	703a      	strb	r2, [r7, #0]
 8005296:	4645      	mov	r5, r8
 8005298:	e58e      	b.n	8004db8 <_dtoa_r+0x880>
 800529a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800529e:	2000      	movs	r0, #0
 80052a0:	492c      	ldr	r1, [pc, #176]	; (8005354 <_dtoa_r+0xe1c>)
 80052a2:	f7fb fa91 	bl	80007c8 <__aeabi_dsub>
 80052a6:	4632      	mov	r2, r6
 80052a8:	463b      	mov	r3, r7
 80052aa:	f7fb fed5 	bl	8001058 <__aeabi_dcmpgt>
 80052ae:	b910      	cbnz	r0, 80052b6 <_dtoa_r+0xd7e>
 80052b0:	f7ff bb68 	b.w	8004984 <_dtoa_r+0x44c>
 80052b4:	4614      	mov	r4, r2
 80052b6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80052ba:	2b30      	cmp	r3, #48	; 0x30
 80052bc:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80052c0:	d0f8      	beq.n	80052b4 <_dtoa_r+0xd7c>
 80052c2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80052c4:	9306      	str	r3, [sp, #24]
 80052c6:	e58d      	b.n	8004de4 <_dtoa_r+0x8ac>
 80052c8:	46d9      	mov	r9, fp
 80052ca:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80052ce:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80052d2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80052d4:	9306      	str	r3, [sp, #24]
 80052d6:	e404      	b.n	8004ae2 <_dtoa_r+0x5aa>
 80052d8:	9b00      	ldr	r3, [sp, #0]
 80052da:	2b39      	cmp	r3, #57	; 0x39
 80052dc:	4621      	mov	r1, r4
 80052de:	4632      	mov	r2, r6
 80052e0:	f107 0401 	add.w	r4, r7, #1
 80052e4:	465e      	mov	r6, fp
 80052e6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80052ea:	d0d1      	beq.n	8005290 <_dtoa_r+0xd58>
 80052ec:	2a00      	cmp	r2, #0
 80052ee:	f77f af03 	ble.w	80050f8 <_dtoa_r+0xbc0>
 80052f2:	460b      	mov	r3, r1
 80052f4:	3331      	adds	r3, #49	; 0x31
 80052f6:	9300      	str	r3, [sp, #0]
 80052f8:	e6fe      	b.n	80050f8 <_dtoa_r+0xbc0>
 80052fa:	f47f aefd 	bne.w	80050f8 <_dtoa_r+0xbc0>
 80052fe:	9b00      	ldr	r3, [sp, #0]
 8005300:	07da      	lsls	r2, r3, #31
 8005302:	f57f aef9 	bpl.w	80050f8 <_dtoa_r+0xbc0>
 8005306:	e7bc      	b.n	8005282 <_dtoa_r+0xd4a>
 8005308:	4629      	mov	r1, r5
 800530a:	2300      	movs	r3, #0
 800530c:	220a      	movs	r2, #10
 800530e:	4648      	mov	r0, r9
 8005310:	f001 f838 	bl	8006384 <__multadd>
 8005314:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005316:	2b00      	cmp	r3, #0
 8005318:	4605      	mov	r5, r0
 800531a:	dd09      	ble.n	8005330 <_dtoa_r+0xdf8>
 800531c:	9309      	str	r3, [sp, #36]	; 0x24
 800531e:	e484      	b.n	8004c2a <_dtoa_r+0x6f2>
 8005320:	9b02      	ldr	r3, [sp, #8]
 8005322:	2b02      	cmp	r3, #2
 8005324:	dc0e      	bgt.n	8005344 <_dtoa_r+0xe0c>
 8005326:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005328:	e507      	b.n	8004d3a <_dtoa_r+0x802>
 800532a:	2602      	movs	r6, #2
 800532c:	f7ff ba70 	b.w	8004810 <_dtoa_r+0x2d8>
 8005330:	9b02      	ldr	r3, [sp, #8]
 8005332:	2b02      	cmp	r3, #2
 8005334:	dc06      	bgt.n	8005344 <_dtoa_r+0xe0c>
 8005336:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005338:	e7f0      	b.n	800531c <_dtoa_r+0xde4>
 800533a:	f43f ac59 	beq.w	8004bf0 <_dtoa_r+0x6b8>
 800533e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8005342:	e450      	b.n	8004be6 <_dtoa_r+0x6ae>
 8005344:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005346:	9309      	str	r3, [sp, #36]	; 0x24
 8005348:	e678      	b.n	800503c <_dtoa_r+0xb04>
 800534a:	bf00      	nop
 800534c:	40240000 	.word	0x40240000
 8005350:	401c0000 	.word	0x401c0000
 8005354:	3fe00000 	.word	0x3fe00000

08005358 <__sflush_r>:
 8005358:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800535c:	b29a      	uxth	r2, r3
 800535e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8005362:	460c      	mov	r4, r1
 8005364:	0711      	lsls	r1, r2, #28
 8005366:	4680      	mov	r8, r0
 8005368:	d444      	bmi.n	80053f4 <__sflush_r+0x9c>
 800536a:	6862      	ldr	r2, [r4, #4]
 800536c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8005370:	2a00      	cmp	r2, #0
 8005372:	81a3      	strh	r3, [r4, #12]
 8005374:	dd59      	ble.n	800542a <__sflush_r+0xd2>
 8005376:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8005378:	2d00      	cmp	r5, #0
 800537a:	d053      	beq.n	8005424 <__sflush_r+0xcc>
 800537c:	2200      	movs	r2, #0
 800537e:	b29b      	uxth	r3, r3
 8005380:	f8d8 6000 	ldr.w	r6, [r8]
 8005384:	69e1      	ldr	r1, [r4, #28]
 8005386:	f8c8 2000 	str.w	r2, [r8]
 800538a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800538e:	f040 8083 	bne.w	8005498 <__sflush_r+0x140>
 8005392:	2301      	movs	r3, #1
 8005394:	4640      	mov	r0, r8
 8005396:	47a8      	blx	r5
 8005398:	1c42      	adds	r2, r0, #1
 800539a:	d04a      	beq.n	8005432 <__sflush_r+0xda>
 800539c:	89a3      	ldrh	r3, [r4, #12]
 800539e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 80053a0:	69e1      	ldr	r1, [r4, #28]
 80053a2:	075b      	lsls	r3, r3, #29
 80053a4:	d505      	bpl.n	80053b2 <__sflush_r+0x5a>
 80053a6:	6862      	ldr	r2, [r4, #4]
 80053a8:	6b23      	ldr	r3, [r4, #48]	; 0x30
 80053aa:	1a80      	subs	r0, r0, r2
 80053ac:	b10b      	cbz	r3, 80053b2 <__sflush_r+0x5a>
 80053ae:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80053b0:	1ac0      	subs	r0, r0, r3
 80053b2:	4602      	mov	r2, r0
 80053b4:	2300      	movs	r3, #0
 80053b6:	4640      	mov	r0, r8
 80053b8:	47a8      	blx	r5
 80053ba:	1c47      	adds	r7, r0, #1
 80053bc:	d045      	beq.n	800544a <__sflush_r+0xf2>
 80053be:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80053c2:	6922      	ldr	r2, [r4, #16]
 80053c4:	6022      	str	r2, [r4, #0]
 80053c6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80053ca:	2200      	movs	r2, #0
 80053cc:	81a3      	strh	r3, [r4, #12]
 80053ce:	04db      	lsls	r3, r3, #19
 80053d0:	6062      	str	r2, [r4, #4]
 80053d2:	d500      	bpl.n	80053d6 <__sflush_r+0x7e>
 80053d4:	6520      	str	r0, [r4, #80]	; 0x50
 80053d6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80053d8:	f8c8 6000 	str.w	r6, [r8]
 80053dc:	b311      	cbz	r1, 8005424 <__sflush_r+0xcc>
 80053de:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80053e2:	4299      	cmp	r1, r3
 80053e4:	d002      	beq.n	80053ec <__sflush_r+0x94>
 80053e6:	4640      	mov	r0, r8
 80053e8:	f000 f95e 	bl	80056a8 <_free_r>
 80053ec:	2000      	movs	r0, #0
 80053ee:	6320      	str	r0, [r4, #48]	; 0x30
 80053f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80053f4:	6926      	ldr	r6, [r4, #16]
 80053f6:	b1ae      	cbz	r6, 8005424 <__sflush_r+0xcc>
 80053f8:	6825      	ldr	r5, [r4, #0]
 80053fa:	6026      	str	r6, [r4, #0]
 80053fc:	0792      	lsls	r2, r2, #30
 80053fe:	bf0c      	ite	eq
 8005400:	6963      	ldreq	r3, [r4, #20]
 8005402:	2300      	movne	r3, #0
 8005404:	1bad      	subs	r5, r5, r6
 8005406:	60a3      	str	r3, [r4, #8]
 8005408:	e00a      	b.n	8005420 <__sflush_r+0xc8>
 800540a:	462b      	mov	r3, r5
 800540c:	4632      	mov	r2, r6
 800540e:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005410:	69e1      	ldr	r1, [r4, #28]
 8005412:	4640      	mov	r0, r8
 8005414:	47b8      	blx	r7
 8005416:	2800      	cmp	r0, #0
 8005418:	eba5 0500 	sub.w	r5, r5, r0
 800541c:	4406      	add	r6, r0
 800541e:	dd2b      	ble.n	8005478 <__sflush_r+0x120>
 8005420:	2d00      	cmp	r5, #0
 8005422:	dcf2      	bgt.n	800540a <__sflush_r+0xb2>
 8005424:	2000      	movs	r0, #0
 8005426:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800542a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800542c:	2a00      	cmp	r2, #0
 800542e:	dca2      	bgt.n	8005376 <__sflush_r+0x1e>
 8005430:	e7f8      	b.n	8005424 <__sflush_r+0xcc>
 8005432:	f8d8 3000 	ldr.w	r3, [r8]
 8005436:	2b00      	cmp	r3, #0
 8005438:	d0b0      	beq.n	800539c <__sflush_r+0x44>
 800543a:	2b1d      	cmp	r3, #29
 800543c:	d001      	beq.n	8005442 <__sflush_r+0xea>
 800543e:	2b16      	cmp	r3, #22
 8005440:	d12c      	bne.n	800549c <__sflush_r+0x144>
 8005442:	f8c8 6000 	str.w	r6, [r8]
 8005446:	2000      	movs	r0, #0
 8005448:	e7ed      	b.n	8005426 <__sflush_r+0xce>
 800544a:	f8d8 1000 	ldr.w	r1, [r8]
 800544e:	291d      	cmp	r1, #29
 8005450:	d81a      	bhi.n	8005488 <__sflush_r+0x130>
 8005452:	4b15      	ldr	r3, [pc, #84]	; (80054a8 <__sflush_r+0x150>)
 8005454:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8005458:	40cb      	lsrs	r3, r1
 800545a:	43db      	mvns	r3, r3
 800545c:	f013 0301 	ands.w	r3, r3, #1
 8005460:	d114      	bne.n	800548c <__sflush_r+0x134>
 8005462:	6925      	ldr	r5, [r4, #16]
 8005464:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8005468:	e9c4 5300 	strd	r5, r3, [r4]
 800546c:	04d5      	lsls	r5, r2, #19
 800546e:	81a2      	strh	r2, [r4, #12]
 8005470:	d5b1      	bpl.n	80053d6 <__sflush_r+0x7e>
 8005472:	2900      	cmp	r1, #0
 8005474:	d1af      	bne.n	80053d6 <__sflush_r+0x7e>
 8005476:	e7ad      	b.n	80053d4 <__sflush_r+0x7c>
 8005478:	89a3      	ldrh	r3, [r4, #12]
 800547a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800547e:	81a3      	strh	r3, [r4, #12]
 8005480:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005484:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8005488:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800548c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8005490:	81a2      	strh	r2, [r4, #12]
 8005492:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005496:	e7c6      	b.n	8005426 <__sflush_r+0xce>
 8005498:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800549a:	e782      	b.n	80053a2 <__sflush_r+0x4a>
 800549c:	89a3      	ldrh	r3, [r4, #12]
 800549e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80054a2:	81a3      	strh	r3, [r4, #12]
 80054a4:	e7bf      	b.n	8005426 <__sflush_r+0xce>
 80054a6:	bf00      	nop
 80054a8:	20400001 	.word	0x20400001

080054ac <_fflush_r>:
 80054ac:	b538      	push	{r3, r4, r5, lr}
 80054ae:	460d      	mov	r5, r1
 80054b0:	4604      	mov	r4, r0
 80054b2:	b108      	cbz	r0, 80054b8 <_fflush_r+0xc>
 80054b4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80054b6:	b1a3      	cbz	r3, 80054e2 <_fflush_r+0x36>
 80054b8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80054bc:	b1b8      	cbz	r0, 80054ee <_fflush_r+0x42>
 80054be:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80054c0:	07db      	lsls	r3, r3, #31
 80054c2:	d401      	bmi.n	80054c8 <_fflush_r+0x1c>
 80054c4:	0581      	lsls	r1, r0, #22
 80054c6:	d51a      	bpl.n	80054fe <_fflush_r+0x52>
 80054c8:	4620      	mov	r0, r4
 80054ca:	4629      	mov	r1, r5
 80054cc:	f7ff ff44 	bl	8005358 <__sflush_r>
 80054d0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80054d2:	07da      	lsls	r2, r3, #31
 80054d4:	4604      	mov	r4, r0
 80054d6:	d402      	bmi.n	80054de <_fflush_r+0x32>
 80054d8:	89ab      	ldrh	r3, [r5, #12]
 80054da:	059b      	lsls	r3, r3, #22
 80054dc:	d50a      	bpl.n	80054f4 <_fflush_r+0x48>
 80054de:	4620      	mov	r0, r4
 80054e0:	bd38      	pop	{r3, r4, r5, pc}
 80054e2:	f000 f83f 	bl	8005564 <__sinit>
 80054e6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80054ea:	2800      	cmp	r0, #0
 80054ec:	d1e7      	bne.n	80054be <_fflush_r+0x12>
 80054ee:	4604      	mov	r4, r0
 80054f0:	4620      	mov	r0, r4
 80054f2:	bd38      	pop	{r3, r4, r5, pc}
 80054f4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80054f6:	f000 fb87 	bl	8005c08 <__retarget_lock_release_recursive>
 80054fa:	4620      	mov	r0, r4
 80054fc:	bd38      	pop	{r3, r4, r5, pc}
 80054fe:	6da8      	ldr	r0, [r5, #88]	; 0x58
 8005500:	f000 fb80 	bl	8005c04 <__retarget_lock_acquire_recursive>
 8005504:	e7e0      	b.n	80054c8 <_fflush_r+0x1c>
 8005506:	bf00      	nop

08005508 <std>:
 8005508:	b510      	push	{r4, lr}
 800550a:	2300      	movs	r3, #0
 800550c:	4604      	mov	r4, r0
 800550e:	8181      	strh	r1, [r0, #12]
 8005510:	81c2      	strh	r2, [r0, #14]
 8005512:	e9c0 3300 	strd	r3, r3, [r0]
 8005516:	6083      	str	r3, [r0, #8]
 8005518:	6643      	str	r3, [r0, #100]	; 0x64
 800551a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800551e:	6183      	str	r3, [r0, #24]
 8005520:	4619      	mov	r1, r3
 8005522:	2208      	movs	r2, #8
 8005524:	305c      	adds	r0, #92	; 0x5c
 8005526:	f7fd f8cb 	bl	80026c0 <memset>
 800552a:	4807      	ldr	r0, [pc, #28]	; (8005548 <std+0x40>)
 800552c:	4907      	ldr	r1, [pc, #28]	; (800554c <std+0x44>)
 800552e:	4a08      	ldr	r2, [pc, #32]	; (8005550 <std+0x48>)
 8005530:	4b08      	ldr	r3, [pc, #32]	; (8005554 <std+0x4c>)
 8005532:	62e3      	str	r3, [r4, #44]	; 0x2c
 8005534:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8005538:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800553c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8005540:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8005544:	f000 bb5a 	b.w	8005bfc <__retarget_lock_init_recursive>
 8005548:	08006d21 	.word	0x08006d21
 800554c:	08006d45 	.word	0x08006d45
 8005550:	08006d81 	.word	0x08006d81
 8005554:	08006da1 	.word	0x08006da1

08005558 <_cleanup_r>:
 8005558:	4901      	ldr	r1, [pc, #4]	; (8005560 <_cleanup_r+0x8>)
 800555a:	f000 bb17 	b.w	8005b8c <_fwalk_reent>
 800555e:	bf00      	nop
 8005560:	08007011 	.word	0x08007011

08005564 <__sinit>:
 8005564:	b510      	push	{r4, lr}
 8005566:	4604      	mov	r4, r0
 8005568:	4812      	ldr	r0, [pc, #72]	; (80055b4 <__sinit+0x50>)
 800556a:	f000 fb4b 	bl	8005c04 <__retarget_lock_acquire_recursive>
 800556e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8005570:	b9d2      	cbnz	r2, 80055a8 <__sinit+0x44>
 8005572:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8005576:	4810      	ldr	r0, [pc, #64]	; (80055b8 <__sinit+0x54>)
 8005578:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800557c:	2103      	movs	r1, #3
 800557e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8005582:	63e0      	str	r0, [r4, #60]	; 0x3c
 8005584:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8005588:	6860      	ldr	r0, [r4, #4]
 800558a:	2104      	movs	r1, #4
 800558c:	f7ff ffbc 	bl	8005508 <std>
 8005590:	2201      	movs	r2, #1
 8005592:	2109      	movs	r1, #9
 8005594:	68a0      	ldr	r0, [r4, #8]
 8005596:	f7ff ffb7 	bl	8005508 <std>
 800559a:	2202      	movs	r2, #2
 800559c:	2112      	movs	r1, #18
 800559e:	68e0      	ldr	r0, [r4, #12]
 80055a0:	f7ff ffb2 	bl	8005508 <std>
 80055a4:	2301      	movs	r3, #1
 80055a6:	63a3      	str	r3, [r4, #56]	; 0x38
 80055a8:	4802      	ldr	r0, [pc, #8]	; (80055b4 <__sinit+0x50>)
 80055aa:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 80055ae:	f000 bb2b 	b.w	8005c08 <__retarget_lock_release_recursive>
 80055b2:	bf00      	nop
 80055b4:	20000b24 	.word	0x20000b24
 80055b8:	08005559 	.word	0x08005559

080055bc <__sfp_lock_acquire>:
 80055bc:	4801      	ldr	r0, [pc, #4]	; (80055c4 <__sfp_lock_acquire+0x8>)
 80055be:	f000 bb21 	b.w	8005c04 <__retarget_lock_acquire_recursive>
 80055c2:	bf00      	nop
 80055c4:	20000b38 	.word	0x20000b38

080055c8 <__sfp_lock_release>:
 80055c8:	4801      	ldr	r0, [pc, #4]	; (80055d0 <__sfp_lock_release+0x8>)
 80055ca:	f000 bb1d 	b.w	8005c08 <__retarget_lock_release_recursive>
 80055ce:	bf00      	nop
 80055d0:	20000b38 	.word	0x20000b38

080055d4 <__libc_fini_array>:
 80055d4:	b538      	push	{r3, r4, r5, lr}
 80055d6:	4c0a      	ldr	r4, [pc, #40]	; (8005600 <__libc_fini_array+0x2c>)
 80055d8:	4d0a      	ldr	r5, [pc, #40]	; (8005604 <__libc_fini_array+0x30>)
 80055da:	1b64      	subs	r4, r4, r5
 80055dc:	10a4      	asrs	r4, r4, #2
 80055de:	d00a      	beq.n	80055f6 <__libc_fini_array+0x22>
 80055e0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80055e4:	3b01      	subs	r3, #1
 80055e6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80055ea:	3c01      	subs	r4, #1
 80055ec:	f855 3904 	ldr.w	r3, [r5], #-4
 80055f0:	4798      	blx	r3
 80055f2:	2c00      	cmp	r4, #0
 80055f4:	d1f9      	bne.n	80055ea <__libc_fini_array+0x16>
 80055f6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80055fa:	f001 befd 	b.w	80073f8 <_fini>
 80055fe:	bf00      	nop
 8005600:	080077c4 	.word	0x080077c4
 8005604:	080077c0 	.word	0x080077c0

08005608 <_malloc_trim_r>:
 8005608:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800560a:	4f24      	ldr	r7, [pc, #144]	; (800569c <_malloc_trim_r+0x94>)
 800560c:	460c      	mov	r4, r1
 800560e:	4606      	mov	r6, r0
 8005610:	f000 fe7c 	bl	800630c <__malloc_lock>
 8005614:	68bb      	ldr	r3, [r7, #8]
 8005616:	685d      	ldr	r5, [r3, #4]
 8005618:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800561c:	310f      	adds	r1, #15
 800561e:	f025 0503 	bic.w	r5, r5, #3
 8005622:	4429      	add	r1, r5
 8005624:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8005628:	f021 010f 	bic.w	r1, r1, #15
 800562c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8005630:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8005634:	db07      	blt.n	8005646 <_malloc_trim_r+0x3e>
 8005636:	2100      	movs	r1, #0
 8005638:	4630      	mov	r0, r6
 800563a:	f001 fb5f 	bl	8006cfc <_sbrk_r>
 800563e:	68bb      	ldr	r3, [r7, #8]
 8005640:	442b      	add	r3, r5
 8005642:	4298      	cmp	r0, r3
 8005644:	d004      	beq.n	8005650 <_malloc_trim_r+0x48>
 8005646:	4630      	mov	r0, r6
 8005648:	f000 fe66 	bl	8006318 <__malloc_unlock>
 800564c:	2000      	movs	r0, #0
 800564e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005650:	4261      	negs	r1, r4
 8005652:	4630      	mov	r0, r6
 8005654:	f001 fb52 	bl	8006cfc <_sbrk_r>
 8005658:	3001      	adds	r0, #1
 800565a:	d00d      	beq.n	8005678 <_malloc_trim_r+0x70>
 800565c:	4b10      	ldr	r3, [pc, #64]	; (80056a0 <_malloc_trim_r+0x98>)
 800565e:	68ba      	ldr	r2, [r7, #8]
 8005660:	6819      	ldr	r1, [r3, #0]
 8005662:	1b2d      	subs	r5, r5, r4
 8005664:	f045 0501 	orr.w	r5, r5, #1
 8005668:	4630      	mov	r0, r6
 800566a:	1b09      	subs	r1, r1, r4
 800566c:	6055      	str	r5, [r2, #4]
 800566e:	6019      	str	r1, [r3, #0]
 8005670:	f000 fe52 	bl	8006318 <__malloc_unlock>
 8005674:	2001      	movs	r0, #1
 8005676:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8005678:	2100      	movs	r1, #0
 800567a:	4630      	mov	r0, r6
 800567c:	f001 fb3e 	bl	8006cfc <_sbrk_r>
 8005680:	68ba      	ldr	r2, [r7, #8]
 8005682:	1a83      	subs	r3, r0, r2
 8005684:	2b0f      	cmp	r3, #15
 8005686:	ddde      	ble.n	8005646 <_malloc_trim_r+0x3e>
 8005688:	4c06      	ldr	r4, [pc, #24]	; (80056a4 <_malloc_trim_r+0x9c>)
 800568a:	4905      	ldr	r1, [pc, #20]	; (80056a0 <_malloc_trim_r+0x98>)
 800568c:	6824      	ldr	r4, [r4, #0]
 800568e:	f043 0301 	orr.w	r3, r3, #1
 8005692:	1b00      	subs	r0, r0, r4
 8005694:	6053      	str	r3, [r2, #4]
 8005696:	6008      	str	r0, [r1, #0]
 8005698:	e7d5      	b.n	8005646 <_malloc_trim_r+0x3e>
 800569a:	bf00      	nop
 800569c:	2000044c 	.word	0x2000044c
 80056a0:	20000a84 	.word	0x20000a84
 80056a4:	20000854 	.word	0x20000854

080056a8 <_free_r>:
 80056a8:	2900      	cmp	r1, #0
 80056aa:	d053      	beq.n	8005754 <_free_r+0xac>
 80056ac:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80056ae:	460c      	mov	r4, r1
 80056b0:	4606      	mov	r6, r0
 80056b2:	f000 fe2b 	bl	800630c <__malloc_lock>
 80056b6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80056ba:	4f71      	ldr	r7, [pc, #452]	; (8005880 <_free_r+0x1d8>)
 80056bc:	f02c 0101 	bic.w	r1, ip, #1
 80056c0:	f1a4 0508 	sub.w	r5, r4, #8
 80056c4:	186b      	adds	r3, r5, r1
 80056c6:	68b8      	ldr	r0, [r7, #8]
 80056c8:	685a      	ldr	r2, [r3, #4]
 80056ca:	4298      	cmp	r0, r3
 80056cc:	f022 0203 	bic.w	r2, r2, #3
 80056d0:	d053      	beq.n	800577a <_free_r+0xd2>
 80056d2:	f01c 0f01 	tst.w	ip, #1
 80056d6:	605a      	str	r2, [r3, #4]
 80056d8:	eb03 0002 	add.w	r0, r3, r2
 80056dc:	d13b      	bne.n	8005756 <_free_r+0xae>
 80056de:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80056e2:	6840      	ldr	r0, [r0, #4]
 80056e4:	eba5 050c 	sub.w	r5, r5, ip
 80056e8:	f107 0e08 	add.w	lr, r7, #8
 80056ec:	68ac      	ldr	r4, [r5, #8]
 80056ee:	4574      	cmp	r4, lr
 80056f0:	4461      	add	r1, ip
 80056f2:	f000 0001 	and.w	r0, r0, #1
 80056f6:	d075      	beq.n	80057e4 <_free_r+0x13c>
 80056f8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80056fc:	f8c4 c00c 	str.w	ip, [r4, #12]
 8005700:	f8cc 4008 	str.w	r4, [ip, #8]
 8005704:	b360      	cbz	r0, 8005760 <_free_r+0xb8>
 8005706:	f041 0301 	orr.w	r3, r1, #1
 800570a:	606b      	str	r3, [r5, #4]
 800570c:	5069      	str	r1, [r5, r1]
 800570e:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8005712:	d350      	bcc.n	80057b6 <_free_r+0x10e>
 8005714:	0a4b      	lsrs	r3, r1, #9
 8005716:	2b04      	cmp	r3, #4
 8005718:	d870      	bhi.n	80057fc <_free_r+0x154>
 800571a:	098b      	lsrs	r3, r1, #6
 800571c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8005720:	00e4      	lsls	r4, r4, #3
 8005722:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8005726:	1938      	adds	r0, r7, r4
 8005728:	593b      	ldr	r3, [r7, r4]
 800572a:	3808      	subs	r0, #8
 800572c:	4298      	cmp	r0, r3
 800572e:	d078      	beq.n	8005822 <_free_r+0x17a>
 8005730:	685a      	ldr	r2, [r3, #4]
 8005732:	f022 0203 	bic.w	r2, r2, #3
 8005736:	428a      	cmp	r2, r1
 8005738:	d971      	bls.n	800581e <_free_r+0x176>
 800573a:	689b      	ldr	r3, [r3, #8]
 800573c:	4298      	cmp	r0, r3
 800573e:	d1f7      	bne.n	8005730 <_free_r+0x88>
 8005740:	68c3      	ldr	r3, [r0, #12]
 8005742:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8005746:	609d      	str	r5, [r3, #8]
 8005748:	60c5      	str	r5, [r0, #12]
 800574a:	4630      	mov	r0, r6
 800574c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8005750:	f000 bde2 	b.w	8006318 <__malloc_unlock>
 8005754:	4770      	bx	lr
 8005756:	6840      	ldr	r0, [r0, #4]
 8005758:	f000 0001 	and.w	r0, r0, #1
 800575c:	2800      	cmp	r0, #0
 800575e:	d1d2      	bne.n	8005706 <_free_r+0x5e>
 8005760:	6898      	ldr	r0, [r3, #8]
 8005762:	4c48      	ldr	r4, [pc, #288]	; (8005884 <_free_r+0x1dc>)
 8005764:	4411      	add	r1, r2
 8005766:	42a0      	cmp	r0, r4
 8005768:	f041 0201 	orr.w	r2, r1, #1
 800576c:	d062      	beq.n	8005834 <_free_r+0x18c>
 800576e:	68db      	ldr	r3, [r3, #12]
 8005770:	60c3      	str	r3, [r0, #12]
 8005772:	6098      	str	r0, [r3, #8]
 8005774:	606a      	str	r2, [r5, #4]
 8005776:	5069      	str	r1, [r5, r1]
 8005778:	e7c9      	b.n	800570e <_free_r+0x66>
 800577a:	f01c 0f01 	tst.w	ip, #1
 800577e:	440a      	add	r2, r1
 8005780:	d107      	bne.n	8005792 <_free_r+0xea>
 8005782:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8005786:	1aed      	subs	r5, r5, r3
 8005788:	441a      	add	r2, r3
 800578a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 800578e:	60cb      	str	r3, [r1, #12]
 8005790:	6099      	str	r1, [r3, #8]
 8005792:	4b3d      	ldr	r3, [pc, #244]	; (8005888 <_free_r+0x1e0>)
 8005794:	681b      	ldr	r3, [r3, #0]
 8005796:	f042 0101 	orr.w	r1, r2, #1
 800579a:	4293      	cmp	r3, r2
 800579c:	6069      	str	r1, [r5, #4]
 800579e:	60bd      	str	r5, [r7, #8]
 80057a0:	d804      	bhi.n	80057ac <_free_r+0x104>
 80057a2:	4b3a      	ldr	r3, [pc, #232]	; (800588c <_free_r+0x1e4>)
 80057a4:	4630      	mov	r0, r6
 80057a6:	6819      	ldr	r1, [r3, #0]
 80057a8:	f7ff ff2e 	bl	8005608 <_malloc_trim_r>
 80057ac:	4630      	mov	r0, r6
 80057ae:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80057b2:	f000 bdb1 	b.w	8006318 <__malloc_unlock>
 80057b6:	08c9      	lsrs	r1, r1, #3
 80057b8:	6878      	ldr	r0, [r7, #4]
 80057ba:	1c4a      	adds	r2, r1, #1
 80057bc:	2301      	movs	r3, #1
 80057be:	1089      	asrs	r1, r1, #2
 80057c0:	408b      	lsls	r3, r1
 80057c2:	4303      	orrs	r3, r0
 80057c4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 80057c8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 80057cc:	607b      	str	r3, [r7, #4]
 80057ce:	3908      	subs	r1, #8
 80057d0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 80057d4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 80057d8:	60c5      	str	r5, [r0, #12]
 80057da:	4630      	mov	r0, r6
 80057dc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 80057e0:	f000 bd9a 	b.w	8006318 <__malloc_unlock>
 80057e4:	2800      	cmp	r0, #0
 80057e6:	d145      	bne.n	8005874 <_free_r+0x1cc>
 80057e8:	440a      	add	r2, r1
 80057ea:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 80057ee:	f042 0001 	orr.w	r0, r2, #1
 80057f2:	60cb      	str	r3, [r1, #12]
 80057f4:	6099      	str	r1, [r3, #8]
 80057f6:	6068      	str	r0, [r5, #4]
 80057f8:	50aa      	str	r2, [r5, r2]
 80057fa:	e7d7      	b.n	80057ac <_free_r+0x104>
 80057fc:	2b14      	cmp	r3, #20
 80057fe:	d908      	bls.n	8005812 <_free_r+0x16a>
 8005800:	2b54      	cmp	r3, #84	; 0x54
 8005802:	d81e      	bhi.n	8005842 <_free_r+0x19a>
 8005804:	0b0b      	lsrs	r3, r1, #12
 8005806:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 800580a:	00e4      	lsls	r4, r4, #3
 800580c:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8005810:	e789      	b.n	8005726 <_free_r+0x7e>
 8005812:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8005816:	00e4      	lsls	r4, r4, #3
 8005818:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 800581c:	e783      	b.n	8005726 <_free_r+0x7e>
 800581e:	4618      	mov	r0, r3
 8005820:	e78e      	b.n	8005740 <_free_r+0x98>
 8005822:	1093      	asrs	r3, r2, #2
 8005824:	6879      	ldr	r1, [r7, #4]
 8005826:	2201      	movs	r2, #1
 8005828:	fa02 f303 	lsl.w	r3, r2, r3
 800582c:	430b      	orrs	r3, r1
 800582e:	607b      	str	r3, [r7, #4]
 8005830:	4603      	mov	r3, r0
 8005832:	e786      	b.n	8005742 <_free_r+0x9a>
 8005834:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8005838:	e9c5 0002 	strd	r0, r0, [r5, #8]
 800583c:	606a      	str	r2, [r5, #4]
 800583e:	5069      	str	r1, [r5, r1]
 8005840:	e7b4      	b.n	80057ac <_free_r+0x104>
 8005842:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8005846:	d806      	bhi.n	8005856 <_free_r+0x1ae>
 8005848:	0bcb      	lsrs	r3, r1, #15
 800584a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 800584e:	00e4      	lsls	r4, r4, #3
 8005850:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8005854:	e767      	b.n	8005726 <_free_r+0x7e>
 8005856:	f240 5254 	movw	r2, #1364	; 0x554
 800585a:	4293      	cmp	r3, r2
 800585c:	d806      	bhi.n	800586c <_free_r+0x1c4>
 800585e:	0c8b      	lsrs	r3, r1, #18
 8005860:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8005864:	00e4      	lsls	r4, r4, #3
 8005866:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 800586a:	e75c      	b.n	8005726 <_free_r+0x7e>
 800586c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8005870:	227e      	movs	r2, #126	; 0x7e
 8005872:	e758      	b.n	8005726 <_free_r+0x7e>
 8005874:	f041 0201 	orr.w	r2, r1, #1
 8005878:	606a      	str	r2, [r5, #4]
 800587a:	6019      	str	r1, [r3, #0]
 800587c:	e796      	b.n	80057ac <_free_r+0x104>
 800587e:	bf00      	nop
 8005880:	2000044c 	.word	0x2000044c
 8005884:	20000454 	.word	0x20000454
 8005888:	20000858 	.word	0x20000858
 800588c:	20000ab4 	.word	0x20000ab4

08005890 <__sfvwrite_r>:
 8005890:	6893      	ldr	r3, [r2, #8]
 8005892:	2b00      	cmp	r3, #0
 8005894:	f000 80e4 	beq.w	8005a60 <__sfvwrite_r+0x1d0>
 8005898:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800589c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 80058a0:	b29b      	uxth	r3, r3
 80058a2:	460c      	mov	r4, r1
 80058a4:	0719      	lsls	r1, r3, #28
 80058a6:	b083      	sub	sp, #12
 80058a8:	4682      	mov	sl, r0
 80058aa:	4690      	mov	r8, r2
 80058ac:	d535      	bpl.n	800591a <__sfvwrite_r+0x8a>
 80058ae:	6922      	ldr	r2, [r4, #16]
 80058b0:	b39a      	cbz	r2, 800591a <__sfvwrite_r+0x8a>
 80058b2:	f013 0202 	ands.w	r2, r3, #2
 80058b6:	f8d8 6000 	ldr.w	r6, [r8]
 80058ba:	d03d      	beq.n	8005938 <__sfvwrite_r+0xa8>
 80058bc:	2700      	movs	r7, #0
 80058be:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 80058c2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80058c6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8005b88 <__sfvwrite_r+0x2f8>
 80058ca:	463d      	mov	r5, r7
 80058cc:	454d      	cmp	r5, r9
 80058ce:	462b      	mov	r3, r5
 80058d0:	463a      	mov	r2, r7
 80058d2:	bf28      	it	cs
 80058d4:	464b      	movcs	r3, r9
 80058d6:	4661      	mov	r1, ip
 80058d8:	4650      	mov	r0, sl
 80058da:	b1d5      	cbz	r5, 8005912 <__sfvwrite_r+0x82>
 80058dc:	47d8      	blx	fp
 80058de:	2800      	cmp	r0, #0
 80058e0:	f340 80c6 	ble.w	8005a70 <__sfvwrite_r+0x1e0>
 80058e4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80058e8:	1a1b      	subs	r3, r3, r0
 80058ea:	4407      	add	r7, r0
 80058ec:	1a2d      	subs	r5, r5, r0
 80058ee:	f8c8 3008 	str.w	r3, [r8, #8]
 80058f2:	2b00      	cmp	r3, #0
 80058f4:	f000 80b0 	beq.w	8005a58 <__sfvwrite_r+0x1c8>
 80058f8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 80058fc:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8005900:	454d      	cmp	r5, r9
 8005902:	462b      	mov	r3, r5
 8005904:	463a      	mov	r2, r7
 8005906:	bf28      	it	cs
 8005908:	464b      	movcs	r3, r9
 800590a:	4661      	mov	r1, ip
 800590c:	4650      	mov	r0, sl
 800590e:	2d00      	cmp	r5, #0
 8005910:	d1e4      	bne.n	80058dc <__sfvwrite_r+0x4c>
 8005912:	e9d6 7500 	ldrd	r7, r5, [r6]
 8005916:	3608      	adds	r6, #8
 8005918:	e7d8      	b.n	80058cc <__sfvwrite_r+0x3c>
 800591a:	4621      	mov	r1, r4
 800591c:	4650      	mov	r0, sl
 800591e:	f7fe fd03 	bl	8004328 <__swsetup_r>
 8005922:	2800      	cmp	r0, #0
 8005924:	f040 812a 	bne.w	8005b7c <__sfvwrite_r+0x2ec>
 8005928:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800592c:	f8d8 6000 	ldr.w	r6, [r8]
 8005930:	b29b      	uxth	r3, r3
 8005932:	f013 0202 	ands.w	r2, r3, #2
 8005936:	d1c1      	bne.n	80058bc <__sfvwrite_r+0x2c>
 8005938:	f013 0901 	ands.w	r9, r3, #1
 800593c:	d15d      	bne.n	80059fa <__sfvwrite_r+0x16a>
 800593e:	68a7      	ldr	r7, [r4, #8]
 8005940:	6820      	ldr	r0, [r4, #0]
 8005942:	464d      	mov	r5, r9
 8005944:	2d00      	cmp	r5, #0
 8005946:	d054      	beq.n	80059f2 <__sfvwrite_r+0x162>
 8005948:	059a      	lsls	r2, r3, #22
 800594a:	f140 809b 	bpl.w	8005a84 <__sfvwrite_r+0x1f4>
 800594e:	42af      	cmp	r7, r5
 8005950:	46bb      	mov	fp, r7
 8005952:	f200 80d8 	bhi.w	8005b06 <__sfvwrite_r+0x276>
 8005956:	f413 6f90 	tst.w	r3, #1152	; 0x480
 800595a:	d02f      	beq.n	80059bc <__sfvwrite_r+0x12c>
 800595c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8005960:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8005964:	eba0 0b01 	sub.w	fp, r0, r1
 8005968:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 800596c:	1c68      	adds	r0, r5, #1
 800596e:	107f      	asrs	r7, r7, #1
 8005970:	4458      	add	r0, fp
 8005972:	42b8      	cmp	r0, r7
 8005974:	463a      	mov	r2, r7
 8005976:	bf84      	itt	hi
 8005978:	4607      	movhi	r7, r0
 800597a:	463a      	movhi	r2, r7
 800597c:	055b      	lsls	r3, r3, #21
 800597e:	f140 80d3 	bpl.w	8005b28 <__sfvwrite_r+0x298>
 8005982:	4611      	mov	r1, r2
 8005984:	4650      	mov	r0, sl
 8005986:	f000 f9b9 	bl	8005cfc <_malloc_r>
 800598a:	2800      	cmp	r0, #0
 800598c:	f000 80f0 	beq.w	8005b70 <__sfvwrite_r+0x2e0>
 8005990:	465a      	mov	r2, fp
 8005992:	6921      	ldr	r1, [r4, #16]
 8005994:	9001      	str	r0, [sp, #4]
 8005996:	f7fa fdb3 	bl	8000500 <memcpy>
 800599a:	89a2      	ldrh	r2, [r4, #12]
 800599c:	9b01      	ldr	r3, [sp, #4]
 800599e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 80059a2:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 80059a6:	81a2      	strh	r2, [r4, #12]
 80059a8:	eba7 020b 	sub.w	r2, r7, fp
 80059ac:	eb03 000b 	add.w	r0, r3, fp
 80059b0:	6167      	str	r7, [r4, #20]
 80059b2:	6123      	str	r3, [r4, #16]
 80059b4:	6020      	str	r0, [r4, #0]
 80059b6:	60a2      	str	r2, [r4, #8]
 80059b8:	462f      	mov	r7, r5
 80059ba:	46ab      	mov	fp, r5
 80059bc:	465a      	mov	r2, fp
 80059be:	4649      	mov	r1, r9
 80059c0:	f000 fc40 	bl	8006244 <memmove>
 80059c4:	68a2      	ldr	r2, [r4, #8]
 80059c6:	6823      	ldr	r3, [r4, #0]
 80059c8:	1bd2      	subs	r2, r2, r7
 80059ca:	445b      	add	r3, fp
 80059cc:	462f      	mov	r7, r5
 80059ce:	60a2      	str	r2, [r4, #8]
 80059d0:	6023      	str	r3, [r4, #0]
 80059d2:	2500      	movs	r5, #0
 80059d4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 80059d8:	1bdb      	subs	r3, r3, r7
 80059da:	44b9      	add	r9, r7
 80059dc:	f8c8 3008 	str.w	r3, [r8, #8]
 80059e0:	2b00      	cmp	r3, #0
 80059e2:	d039      	beq.n	8005a58 <__sfvwrite_r+0x1c8>
 80059e4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80059e8:	68a7      	ldr	r7, [r4, #8]
 80059ea:	6820      	ldr	r0, [r4, #0]
 80059ec:	b29b      	uxth	r3, r3
 80059ee:	2d00      	cmp	r5, #0
 80059f0:	d1aa      	bne.n	8005948 <__sfvwrite_r+0xb8>
 80059f2:	e9d6 9500 	ldrd	r9, r5, [r6]
 80059f6:	3608      	adds	r6, #8
 80059f8:	e7a4      	b.n	8005944 <__sfvwrite_r+0xb4>
 80059fa:	4633      	mov	r3, r6
 80059fc:	4691      	mov	r9, r2
 80059fe:	4610      	mov	r0, r2
 8005a00:	4617      	mov	r7, r2
 8005a02:	464e      	mov	r6, r9
 8005a04:	469b      	mov	fp, r3
 8005a06:	2f00      	cmp	r7, #0
 8005a08:	d06b      	beq.n	8005ae2 <__sfvwrite_r+0x252>
 8005a0a:	2800      	cmp	r0, #0
 8005a0c:	d071      	beq.n	8005af2 <__sfvwrite_r+0x262>
 8005a0e:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8005a12:	6820      	ldr	r0, [r4, #0]
 8005a14:	45b9      	cmp	r9, r7
 8005a16:	464b      	mov	r3, r9
 8005a18:	bf28      	it	cs
 8005a1a:	463b      	movcs	r3, r7
 8005a1c:	4288      	cmp	r0, r1
 8005a1e:	d903      	bls.n	8005a28 <__sfvwrite_r+0x198>
 8005a20:	68a5      	ldr	r5, [r4, #8]
 8005a22:	4415      	add	r5, r2
 8005a24:	42ab      	cmp	r3, r5
 8005a26:	dc71      	bgt.n	8005b0c <__sfvwrite_r+0x27c>
 8005a28:	429a      	cmp	r2, r3
 8005a2a:	f300 8093 	bgt.w	8005b54 <__sfvwrite_r+0x2c4>
 8005a2e:	4613      	mov	r3, r2
 8005a30:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8005a32:	69e1      	ldr	r1, [r4, #28]
 8005a34:	4632      	mov	r2, r6
 8005a36:	4650      	mov	r0, sl
 8005a38:	47a8      	blx	r5
 8005a3a:	1e05      	subs	r5, r0, #0
 8005a3c:	dd18      	ble.n	8005a70 <__sfvwrite_r+0x1e0>
 8005a3e:	ebb9 0905 	subs.w	r9, r9, r5
 8005a42:	d00f      	beq.n	8005a64 <__sfvwrite_r+0x1d4>
 8005a44:	2001      	movs	r0, #1
 8005a46:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8005a4a:	1b5b      	subs	r3, r3, r5
 8005a4c:	442e      	add	r6, r5
 8005a4e:	1b7f      	subs	r7, r7, r5
 8005a50:	f8c8 3008 	str.w	r3, [r8, #8]
 8005a54:	2b00      	cmp	r3, #0
 8005a56:	d1d6      	bne.n	8005a06 <__sfvwrite_r+0x176>
 8005a58:	2000      	movs	r0, #0
 8005a5a:	b003      	add	sp, #12
 8005a5c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a60:	2000      	movs	r0, #0
 8005a62:	4770      	bx	lr
 8005a64:	4621      	mov	r1, r4
 8005a66:	4650      	mov	r0, sl
 8005a68:	f7ff fd20 	bl	80054ac <_fflush_r>
 8005a6c:	2800      	cmp	r0, #0
 8005a6e:	d0ea      	beq.n	8005a46 <__sfvwrite_r+0x1b6>
 8005a70:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005a74:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8005a78:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005a7c:	81a3      	strh	r3, [r4, #12]
 8005a7e:	b003      	add	sp, #12
 8005a80:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005a84:	6923      	ldr	r3, [r4, #16]
 8005a86:	4283      	cmp	r3, r0
 8005a88:	d315      	bcc.n	8005ab6 <__sfvwrite_r+0x226>
 8005a8a:	6961      	ldr	r1, [r4, #20]
 8005a8c:	42a9      	cmp	r1, r5
 8005a8e:	d812      	bhi.n	8005ab6 <__sfvwrite_r+0x226>
 8005a90:	4b3c      	ldr	r3, [pc, #240]	; (8005b84 <__sfvwrite_r+0x2f4>)
 8005a92:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8005a94:	429d      	cmp	r5, r3
 8005a96:	bf94      	ite	ls
 8005a98:	462b      	movls	r3, r5
 8005a9a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8005a9e:	464a      	mov	r2, r9
 8005aa0:	fb93 f3f1 	sdiv	r3, r3, r1
 8005aa4:	4650      	mov	r0, sl
 8005aa6:	fb01 f303 	mul.w	r3, r1, r3
 8005aaa:	69e1      	ldr	r1, [r4, #28]
 8005aac:	47b8      	blx	r7
 8005aae:	1e07      	subs	r7, r0, #0
 8005ab0:	ddde      	ble.n	8005a70 <__sfvwrite_r+0x1e0>
 8005ab2:	1bed      	subs	r5, r5, r7
 8005ab4:	e78e      	b.n	80059d4 <__sfvwrite_r+0x144>
 8005ab6:	42af      	cmp	r7, r5
 8005ab8:	bf28      	it	cs
 8005aba:	462f      	movcs	r7, r5
 8005abc:	463a      	mov	r2, r7
 8005abe:	4649      	mov	r1, r9
 8005ac0:	f000 fbc0 	bl	8006244 <memmove>
 8005ac4:	68a3      	ldr	r3, [r4, #8]
 8005ac6:	6822      	ldr	r2, [r4, #0]
 8005ac8:	1bdb      	subs	r3, r3, r7
 8005aca:	443a      	add	r2, r7
 8005acc:	60a3      	str	r3, [r4, #8]
 8005ace:	6022      	str	r2, [r4, #0]
 8005ad0:	2b00      	cmp	r3, #0
 8005ad2:	d1ee      	bne.n	8005ab2 <__sfvwrite_r+0x222>
 8005ad4:	4621      	mov	r1, r4
 8005ad6:	4650      	mov	r0, sl
 8005ad8:	f7ff fce8 	bl	80054ac <_fflush_r>
 8005adc:	2800      	cmp	r0, #0
 8005ade:	d0e8      	beq.n	8005ab2 <__sfvwrite_r+0x222>
 8005ae0:	e7c6      	b.n	8005a70 <__sfvwrite_r+0x1e0>
 8005ae2:	f10b 0308 	add.w	r3, fp, #8
 8005ae6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8005aea:	469b      	mov	fp, r3
 8005aec:	3308      	adds	r3, #8
 8005aee:	2f00      	cmp	r7, #0
 8005af0:	d0f9      	beq.n	8005ae6 <__sfvwrite_r+0x256>
 8005af2:	463a      	mov	r2, r7
 8005af4:	210a      	movs	r1, #10
 8005af6:	4630      	mov	r0, r6
 8005af8:	f7fa fe12 	bl	8000720 <memchr>
 8005afc:	b338      	cbz	r0, 8005b4e <__sfvwrite_r+0x2be>
 8005afe:	3001      	adds	r0, #1
 8005b00:	eba0 0906 	sub.w	r9, r0, r6
 8005b04:	e783      	b.n	8005a0e <__sfvwrite_r+0x17e>
 8005b06:	462f      	mov	r7, r5
 8005b08:	46ab      	mov	fp, r5
 8005b0a:	e757      	b.n	80059bc <__sfvwrite_r+0x12c>
 8005b0c:	4631      	mov	r1, r6
 8005b0e:	462a      	mov	r2, r5
 8005b10:	f000 fb98 	bl	8006244 <memmove>
 8005b14:	6823      	ldr	r3, [r4, #0]
 8005b16:	442b      	add	r3, r5
 8005b18:	6023      	str	r3, [r4, #0]
 8005b1a:	4621      	mov	r1, r4
 8005b1c:	4650      	mov	r0, sl
 8005b1e:	f7ff fcc5 	bl	80054ac <_fflush_r>
 8005b22:	2800      	cmp	r0, #0
 8005b24:	d08b      	beq.n	8005a3e <__sfvwrite_r+0x1ae>
 8005b26:	e7a3      	b.n	8005a70 <__sfvwrite_r+0x1e0>
 8005b28:	4650      	mov	r0, sl
 8005b2a:	f000 ff05 	bl	8006938 <_realloc_r>
 8005b2e:	4603      	mov	r3, r0
 8005b30:	2800      	cmp	r0, #0
 8005b32:	f47f af39 	bne.w	80059a8 <__sfvwrite_r+0x118>
 8005b36:	6921      	ldr	r1, [r4, #16]
 8005b38:	4650      	mov	r0, sl
 8005b3a:	f7ff fdb5 	bl	80056a8 <_free_r>
 8005b3e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b42:	220c      	movs	r2, #12
 8005b44:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8005b48:	f8ca 2000 	str.w	r2, [sl]
 8005b4c:	e792      	b.n	8005a74 <__sfvwrite_r+0x1e4>
 8005b4e:	f107 0901 	add.w	r9, r7, #1
 8005b52:	e75c      	b.n	8005a0e <__sfvwrite_r+0x17e>
 8005b54:	461a      	mov	r2, r3
 8005b56:	4631      	mov	r1, r6
 8005b58:	9301      	str	r3, [sp, #4]
 8005b5a:	f000 fb73 	bl	8006244 <memmove>
 8005b5e:	9b01      	ldr	r3, [sp, #4]
 8005b60:	68a1      	ldr	r1, [r4, #8]
 8005b62:	6822      	ldr	r2, [r4, #0]
 8005b64:	1ac9      	subs	r1, r1, r3
 8005b66:	441a      	add	r2, r3
 8005b68:	60a1      	str	r1, [r4, #8]
 8005b6a:	6022      	str	r2, [r4, #0]
 8005b6c:	461d      	mov	r5, r3
 8005b6e:	e766      	b.n	8005a3e <__sfvwrite_r+0x1ae>
 8005b70:	230c      	movs	r3, #12
 8005b72:	f8ca 3000 	str.w	r3, [sl]
 8005b76:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005b7a:	e77b      	b.n	8005a74 <__sfvwrite_r+0x1e4>
 8005b7c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8005b80:	e76b      	b.n	8005a5a <__sfvwrite_r+0x1ca>
 8005b82:	bf00      	nop
 8005b84:	7ffffffe 	.word	0x7ffffffe
 8005b88:	7ffffc00 	.word	0x7ffffc00

08005b8c <_fwalk_reent>:
 8005b8c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8005b90:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8005b94:	d01f      	beq.n	8005bd6 <_fwalk_reent+0x4a>
 8005b96:	4688      	mov	r8, r1
 8005b98:	4606      	mov	r6, r0
 8005b9a:	f04f 0900 	mov.w	r9, #0
 8005b9e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8005ba2:	3d01      	subs	r5, #1
 8005ba4:	d411      	bmi.n	8005bca <_fwalk_reent+0x3e>
 8005ba6:	89a3      	ldrh	r3, [r4, #12]
 8005ba8:	2b01      	cmp	r3, #1
 8005baa:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8005bae:	4621      	mov	r1, r4
 8005bb0:	4630      	mov	r0, r6
 8005bb2:	d906      	bls.n	8005bc2 <_fwalk_reent+0x36>
 8005bb4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8005bb8:	3301      	adds	r3, #1
 8005bba:	d002      	beq.n	8005bc2 <_fwalk_reent+0x36>
 8005bbc:	47c0      	blx	r8
 8005bbe:	ea49 0900 	orr.w	r9, r9, r0
 8005bc2:	1c6b      	adds	r3, r5, #1
 8005bc4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8005bc8:	d1ed      	bne.n	8005ba6 <_fwalk_reent+0x1a>
 8005bca:	683f      	ldr	r7, [r7, #0]
 8005bcc:	2f00      	cmp	r7, #0
 8005bce:	d1e6      	bne.n	8005b9e <_fwalk_reent+0x12>
 8005bd0:	4648      	mov	r0, r9
 8005bd2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005bd6:	46b9      	mov	r9, r7
 8005bd8:	4648      	mov	r0, r9
 8005bda:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8005bde:	bf00      	nop

08005be0 <_localeconv_r>:
 8005be0:	4a04      	ldr	r2, [pc, #16]	; (8005bf4 <_localeconv_r+0x14>)
 8005be2:	4b05      	ldr	r3, [pc, #20]	; (8005bf8 <_localeconv_r+0x18>)
 8005be4:	6812      	ldr	r2, [r2, #0]
 8005be6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8005be8:	2800      	cmp	r0, #0
 8005bea:	bf08      	it	eq
 8005bec:	4618      	moveq	r0, r3
 8005bee:	30f0      	adds	r0, #240	; 0xf0
 8005bf0:	4770      	bx	lr
 8005bf2:	bf00      	nop
 8005bf4:	20000018 	.word	0x20000018
 8005bf8:	2000085c 	.word	0x2000085c

08005bfc <__retarget_lock_init_recursive>:
 8005bfc:	4770      	bx	lr
 8005bfe:	bf00      	nop

08005c00 <__retarget_lock_close_recursive>:
 8005c00:	4770      	bx	lr
 8005c02:	bf00      	nop

08005c04 <__retarget_lock_acquire_recursive>:
 8005c04:	4770      	bx	lr
 8005c06:	bf00      	nop

08005c08 <__retarget_lock_release_recursive>:
 8005c08:	4770      	bx	lr
 8005c0a:	bf00      	nop

08005c0c <__swhatbuf_r>:
 8005c0c:	b570      	push	{r4, r5, r6, lr}
 8005c0e:	460c      	mov	r4, r1
 8005c10:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8005c14:	2900      	cmp	r1, #0
 8005c16:	b096      	sub	sp, #88	; 0x58
 8005c18:	4615      	mov	r5, r2
 8005c1a:	461e      	mov	r6, r3
 8005c1c:	da0f      	bge.n	8005c3e <__swhatbuf_r+0x32>
 8005c1e:	89a2      	ldrh	r2, [r4, #12]
 8005c20:	2300      	movs	r3, #0
 8005c22:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8005c26:	6033      	str	r3, [r6, #0]
 8005c28:	d104      	bne.n	8005c34 <__swhatbuf_r+0x28>
 8005c2a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8005c2e:	602b      	str	r3, [r5, #0]
 8005c30:	b016      	add	sp, #88	; 0x58
 8005c32:	bd70      	pop	{r4, r5, r6, pc}
 8005c34:	2240      	movs	r2, #64	; 0x40
 8005c36:	4618      	mov	r0, r3
 8005c38:	602a      	str	r2, [r5, #0]
 8005c3a:	b016      	add	sp, #88	; 0x58
 8005c3c:	bd70      	pop	{r4, r5, r6, pc}
 8005c3e:	466a      	mov	r2, sp
 8005c40:	f001 fad0 	bl	80071e4 <_fstat_r>
 8005c44:	2800      	cmp	r0, #0
 8005c46:	dbea      	blt.n	8005c1e <__swhatbuf_r+0x12>
 8005c48:	9b01      	ldr	r3, [sp, #4]
 8005c4a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8005c4e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8005c52:	fab3 f383 	clz	r3, r3
 8005c56:	095b      	lsrs	r3, r3, #5
 8005c58:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8005c5c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8005c60:	6033      	str	r3, [r6, #0]
 8005c62:	602a      	str	r2, [r5, #0]
 8005c64:	b016      	add	sp, #88	; 0x58
 8005c66:	bd70      	pop	{r4, r5, r6, pc}

08005c68 <__smakebuf_r>:
 8005c68:	898a      	ldrh	r2, [r1, #12]
 8005c6a:	0792      	lsls	r2, r2, #30
 8005c6c:	460b      	mov	r3, r1
 8005c6e:	d506      	bpl.n	8005c7e <__smakebuf_r+0x16>
 8005c70:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8005c74:	2101      	movs	r1, #1
 8005c76:	601a      	str	r2, [r3, #0]
 8005c78:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8005c7c:	4770      	bx	lr
 8005c7e:	b570      	push	{r4, r5, r6, lr}
 8005c80:	b082      	sub	sp, #8
 8005c82:	ab01      	add	r3, sp, #4
 8005c84:	466a      	mov	r2, sp
 8005c86:	460c      	mov	r4, r1
 8005c88:	4605      	mov	r5, r0
 8005c8a:	f7ff ffbf 	bl	8005c0c <__swhatbuf_r>
 8005c8e:	9900      	ldr	r1, [sp, #0]
 8005c90:	4606      	mov	r6, r0
 8005c92:	4628      	mov	r0, r5
 8005c94:	f000 f832 	bl	8005cfc <_malloc_r>
 8005c98:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005c9c:	b1d8      	cbz	r0, 8005cd6 <__smakebuf_r+0x6e>
 8005c9e:	4916      	ldr	r1, [pc, #88]	; (8005cf8 <__smakebuf_r+0x90>)
 8005ca0:	63e9      	str	r1, [r5, #60]	; 0x3c
 8005ca2:	9a01      	ldr	r2, [sp, #4]
 8005ca4:	9900      	ldr	r1, [sp, #0]
 8005ca6:	6020      	str	r0, [r4, #0]
 8005ca8:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8005cac:	81a3      	strh	r3, [r4, #12]
 8005cae:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8005cb2:	b91a      	cbnz	r2, 8005cbc <__smakebuf_r+0x54>
 8005cb4:	4333      	orrs	r3, r6
 8005cb6:	81a3      	strh	r3, [r4, #12]
 8005cb8:	b002      	add	sp, #8
 8005cba:	bd70      	pop	{r4, r5, r6, pc}
 8005cbc:	4628      	mov	r0, r5
 8005cbe:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8005cc2:	f001 faa3 	bl	800720c <_isatty_r>
 8005cc6:	b1a0      	cbz	r0, 8005cf2 <__smakebuf_r+0x8a>
 8005cc8:	89a3      	ldrh	r3, [r4, #12]
 8005cca:	f023 0303 	bic.w	r3, r3, #3
 8005cce:	f043 0301 	orr.w	r3, r3, #1
 8005cd2:	b21b      	sxth	r3, r3
 8005cd4:	e7ee      	b.n	8005cb4 <__smakebuf_r+0x4c>
 8005cd6:	059a      	lsls	r2, r3, #22
 8005cd8:	d4ee      	bmi.n	8005cb8 <__smakebuf_r+0x50>
 8005cda:	f023 0303 	bic.w	r3, r3, #3
 8005cde:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8005ce2:	f043 0302 	orr.w	r3, r3, #2
 8005ce6:	2101      	movs	r1, #1
 8005ce8:	81a3      	strh	r3, [r4, #12]
 8005cea:	6022      	str	r2, [r4, #0]
 8005cec:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8005cf0:	e7e2      	b.n	8005cb8 <__smakebuf_r+0x50>
 8005cf2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8005cf6:	e7dd      	b.n	8005cb4 <__smakebuf_r+0x4c>
 8005cf8:	08005559 	.word	0x08005559

08005cfc <_malloc_r>:
 8005cfc:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8005d00:	f101 050b 	add.w	r5, r1, #11
 8005d04:	2d16      	cmp	r5, #22
 8005d06:	b083      	sub	sp, #12
 8005d08:	4606      	mov	r6, r0
 8005d0a:	d823      	bhi.n	8005d54 <_malloc_r+0x58>
 8005d0c:	2910      	cmp	r1, #16
 8005d0e:	f200 80b9 	bhi.w	8005e84 <_malloc_r+0x188>
 8005d12:	f000 fafb 	bl	800630c <__malloc_lock>
 8005d16:	2510      	movs	r5, #16
 8005d18:	2318      	movs	r3, #24
 8005d1a:	2002      	movs	r0, #2
 8005d1c:	4fc5      	ldr	r7, [pc, #788]	; (8006034 <_malloc_r+0x338>)
 8005d1e:	443b      	add	r3, r7
 8005d20:	f1a3 0208 	sub.w	r2, r3, #8
 8005d24:	685c      	ldr	r4, [r3, #4]
 8005d26:	4294      	cmp	r4, r2
 8005d28:	f000 8166 	beq.w	8005ff8 <_malloc_r+0x2fc>
 8005d2c:	6863      	ldr	r3, [r4, #4]
 8005d2e:	f023 0303 	bic.w	r3, r3, #3
 8005d32:	4423      	add	r3, r4
 8005d34:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8005d38:	685a      	ldr	r2, [r3, #4]
 8005d3a:	60e9      	str	r1, [r5, #12]
 8005d3c:	f042 0201 	orr.w	r2, r2, #1
 8005d40:	608d      	str	r5, [r1, #8]
 8005d42:	4630      	mov	r0, r6
 8005d44:	605a      	str	r2, [r3, #4]
 8005d46:	f000 fae7 	bl	8006318 <__malloc_unlock>
 8005d4a:	3408      	adds	r4, #8
 8005d4c:	4620      	mov	r0, r4
 8005d4e:	b003      	add	sp, #12
 8005d50:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005d54:	f035 0507 	bics.w	r5, r5, #7
 8005d58:	f100 8094 	bmi.w	8005e84 <_malloc_r+0x188>
 8005d5c:	42a9      	cmp	r1, r5
 8005d5e:	f200 8091 	bhi.w	8005e84 <_malloc_r+0x188>
 8005d62:	f000 fad3 	bl	800630c <__malloc_lock>
 8005d66:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 8005d6a:	f0c0 8183 	bcc.w	8006074 <_malloc_r+0x378>
 8005d6e:	0a6b      	lsrs	r3, r5, #9
 8005d70:	f000 808f 	beq.w	8005e92 <_malloc_r+0x196>
 8005d74:	2b04      	cmp	r3, #4
 8005d76:	f200 8146 	bhi.w	8006006 <_malloc_r+0x30a>
 8005d7a:	09ab      	lsrs	r3, r5, #6
 8005d7c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 8005d80:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 8005d84:	00c3      	lsls	r3, r0, #3
 8005d86:	4fab      	ldr	r7, [pc, #684]	; (8006034 <_malloc_r+0x338>)
 8005d88:	443b      	add	r3, r7
 8005d8a:	f1a3 0108 	sub.w	r1, r3, #8
 8005d8e:	685c      	ldr	r4, [r3, #4]
 8005d90:	42a1      	cmp	r1, r4
 8005d92:	d106      	bne.n	8005da2 <_malloc_r+0xa6>
 8005d94:	e00c      	b.n	8005db0 <_malloc_r+0xb4>
 8005d96:	2a00      	cmp	r2, #0
 8005d98:	f280 811d 	bge.w	8005fd6 <_malloc_r+0x2da>
 8005d9c:	68e4      	ldr	r4, [r4, #12]
 8005d9e:	42a1      	cmp	r1, r4
 8005da0:	d006      	beq.n	8005db0 <_malloc_r+0xb4>
 8005da2:	6863      	ldr	r3, [r4, #4]
 8005da4:	f023 0303 	bic.w	r3, r3, #3
 8005da8:	1b5a      	subs	r2, r3, r5
 8005daa:	2a0f      	cmp	r2, #15
 8005dac:	ddf3      	ble.n	8005d96 <_malloc_r+0x9a>
 8005dae:	4660      	mov	r0, ip
 8005db0:	693c      	ldr	r4, [r7, #16]
 8005db2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8006048 <_malloc_r+0x34c>
 8005db6:	4564      	cmp	r4, ip
 8005db8:	d071      	beq.n	8005e9e <_malloc_r+0x1a2>
 8005dba:	6863      	ldr	r3, [r4, #4]
 8005dbc:	f023 0303 	bic.w	r3, r3, #3
 8005dc0:	1b5a      	subs	r2, r3, r5
 8005dc2:	2a0f      	cmp	r2, #15
 8005dc4:	f300 8144 	bgt.w	8006050 <_malloc_r+0x354>
 8005dc8:	2a00      	cmp	r2, #0
 8005dca:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 8005dce:	f280 8126 	bge.w	800601e <_malloc_r+0x322>
 8005dd2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 8005dd6:	f080 8169 	bcs.w	80060ac <_malloc_r+0x3b0>
 8005dda:	08db      	lsrs	r3, r3, #3
 8005ddc:	1c59      	adds	r1, r3, #1
 8005dde:	687a      	ldr	r2, [r7, #4]
 8005de0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8005de4:	f8c4 8008 	str.w	r8, [r4, #8]
 8005de8:	f04f 0e01 	mov.w	lr, #1
 8005dec:	109b      	asrs	r3, r3, #2
 8005dee:	fa0e f303 	lsl.w	r3, lr, r3
 8005df2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8005df6:	4313      	orrs	r3, r2
 8005df8:	f1ae 0208 	sub.w	r2, lr, #8
 8005dfc:	60e2      	str	r2, [r4, #12]
 8005dfe:	607b      	str	r3, [r7, #4]
 8005e00:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8005e04:	f8c8 400c 	str.w	r4, [r8, #12]
 8005e08:	1082      	asrs	r2, r0, #2
 8005e0a:	2401      	movs	r4, #1
 8005e0c:	4094      	lsls	r4, r2
 8005e0e:	429c      	cmp	r4, r3
 8005e10:	d84b      	bhi.n	8005eaa <_malloc_r+0x1ae>
 8005e12:	421c      	tst	r4, r3
 8005e14:	d106      	bne.n	8005e24 <_malloc_r+0x128>
 8005e16:	f020 0003 	bic.w	r0, r0, #3
 8005e1a:	0064      	lsls	r4, r4, #1
 8005e1c:	421c      	tst	r4, r3
 8005e1e:	f100 0004 	add.w	r0, r0, #4
 8005e22:	d0fa      	beq.n	8005e1a <_malloc_r+0x11e>
 8005e24:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8005e28:	46ce      	mov	lr, r9
 8005e2a:	4680      	mov	r8, r0
 8005e2c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8005e30:	459e      	cmp	lr, r3
 8005e32:	d107      	bne.n	8005e44 <_malloc_r+0x148>
 8005e34:	e122      	b.n	800607c <_malloc_r+0x380>
 8005e36:	2a00      	cmp	r2, #0
 8005e38:	f280 8129 	bge.w	800608e <_malloc_r+0x392>
 8005e3c:	68db      	ldr	r3, [r3, #12]
 8005e3e:	459e      	cmp	lr, r3
 8005e40:	f000 811c 	beq.w	800607c <_malloc_r+0x380>
 8005e44:	6859      	ldr	r1, [r3, #4]
 8005e46:	f021 0103 	bic.w	r1, r1, #3
 8005e4a:	1b4a      	subs	r2, r1, r5
 8005e4c:	2a0f      	cmp	r2, #15
 8005e4e:	ddf2      	ble.n	8005e36 <_malloc_r+0x13a>
 8005e50:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8005e54:	195c      	adds	r4, r3, r5
 8005e56:	f045 0501 	orr.w	r5, r5, #1
 8005e5a:	605d      	str	r5, [r3, #4]
 8005e5c:	f042 0501 	orr.w	r5, r2, #1
 8005e60:	f8c8 e00c 	str.w	lr, [r8, #12]
 8005e64:	4630      	mov	r0, r6
 8005e66:	f8ce 8008 	str.w	r8, [lr, #8]
 8005e6a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 8005e6e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8005e72:	6065      	str	r5, [r4, #4]
 8005e74:	505a      	str	r2, [r3, r1]
 8005e76:	9301      	str	r3, [sp, #4]
 8005e78:	f000 fa4e 	bl	8006318 <__malloc_unlock>
 8005e7c:	9b01      	ldr	r3, [sp, #4]
 8005e7e:	f103 0408 	add.w	r4, r3, #8
 8005e82:	e763      	b.n	8005d4c <_malloc_r+0x50>
 8005e84:	2400      	movs	r4, #0
 8005e86:	230c      	movs	r3, #12
 8005e88:	4620      	mov	r0, r4
 8005e8a:	6033      	str	r3, [r6, #0]
 8005e8c:	b003      	add	sp, #12
 8005e8e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005e92:	f44f 7300 	mov.w	r3, #512	; 0x200
 8005e96:	2040      	movs	r0, #64	; 0x40
 8005e98:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 8005e9c:	e773      	b.n	8005d86 <_malloc_r+0x8a>
 8005e9e:	687b      	ldr	r3, [r7, #4]
 8005ea0:	1082      	asrs	r2, r0, #2
 8005ea2:	2401      	movs	r4, #1
 8005ea4:	4094      	lsls	r4, r2
 8005ea6:	429c      	cmp	r4, r3
 8005ea8:	d9b3      	bls.n	8005e12 <_malloc_r+0x116>
 8005eaa:	68bc      	ldr	r4, [r7, #8]
 8005eac:	6863      	ldr	r3, [r4, #4]
 8005eae:	f023 0903 	bic.w	r9, r3, #3
 8005eb2:	45a9      	cmp	r9, r5
 8005eb4:	d303      	bcc.n	8005ebe <_malloc_r+0x1c2>
 8005eb6:	eba9 0305 	sub.w	r3, r9, r5
 8005eba:	2b0f      	cmp	r3, #15
 8005ebc:	dc7b      	bgt.n	8005fb6 <_malloc_r+0x2ba>
 8005ebe:	4b5e      	ldr	r3, [pc, #376]	; (8006038 <_malloc_r+0x33c>)
 8005ec0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800604c <_malloc_r+0x350>
 8005ec4:	681a      	ldr	r2, [r3, #0]
 8005ec6:	f8da 3000 	ldr.w	r3, [sl]
 8005eca:	3301      	adds	r3, #1
 8005ecc:	eb05 0802 	add.w	r8, r5, r2
 8005ed0:	f000 8148 	beq.w	8006164 <_malloc_r+0x468>
 8005ed4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 8005ed8:	f108 080f 	add.w	r8, r8, #15
 8005edc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8005ee0:	f028 080f 	bic.w	r8, r8, #15
 8005ee4:	4641      	mov	r1, r8
 8005ee6:	4630      	mov	r0, r6
 8005ee8:	f000 ff08 	bl	8006cfc <_sbrk_r>
 8005eec:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8005ef0:	4683      	mov	fp, r0
 8005ef2:	f000 8104 	beq.w	80060fe <_malloc_r+0x402>
 8005ef6:	eb04 0009 	add.w	r0, r4, r9
 8005efa:	4558      	cmp	r0, fp
 8005efc:	f200 80fd 	bhi.w	80060fa <_malloc_r+0x3fe>
 8005f00:	4a4e      	ldr	r2, [pc, #312]	; (800603c <_malloc_r+0x340>)
 8005f02:	6813      	ldr	r3, [r2, #0]
 8005f04:	4443      	add	r3, r8
 8005f06:	6013      	str	r3, [r2, #0]
 8005f08:	f000 814d 	beq.w	80061a6 <_malloc_r+0x4aa>
 8005f0c:	f8da 1000 	ldr.w	r1, [sl]
 8005f10:	3101      	adds	r1, #1
 8005f12:	bf1b      	ittet	ne
 8005f14:	ebab 0000 	subne.w	r0, fp, r0
 8005f18:	181b      	addne	r3, r3, r0
 8005f1a:	f8ca b000 	streq.w	fp, [sl]
 8005f1e:	6013      	strne	r3, [r2, #0]
 8005f20:	f01b 0307 	ands.w	r3, fp, #7
 8005f24:	f000 8134 	beq.w	8006190 <_malloc_r+0x494>
 8005f28:	f1c3 0108 	rsb	r1, r3, #8
 8005f2c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8005f30:	448b      	add	fp, r1
 8005f32:	3308      	adds	r3, #8
 8005f34:	44d8      	add	r8, fp
 8005f36:	f3c8 080b 	ubfx	r8, r8, #0, #12
 8005f3a:	eba3 0808 	sub.w	r8, r3, r8
 8005f3e:	4641      	mov	r1, r8
 8005f40:	4630      	mov	r0, r6
 8005f42:	9201      	str	r2, [sp, #4]
 8005f44:	f000 feda 	bl	8006cfc <_sbrk_r>
 8005f48:	1c43      	adds	r3, r0, #1
 8005f4a:	9a01      	ldr	r2, [sp, #4]
 8005f4c:	f000 8146 	beq.w	80061dc <_malloc_r+0x4e0>
 8005f50:	eba0 010b 	sub.w	r1, r0, fp
 8005f54:	4441      	add	r1, r8
 8005f56:	f041 0101 	orr.w	r1, r1, #1
 8005f5a:	6813      	ldr	r3, [r2, #0]
 8005f5c:	f8c7 b008 	str.w	fp, [r7, #8]
 8005f60:	4443      	add	r3, r8
 8005f62:	42bc      	cmp	r4, r7
 8005f64:	f8cb 1004 	str.w	r1, [fp, #4]
 8005f68:	6013      	str	r3, [r2, #0]
 8005f6a:	d015      	beq.n	8005f98 <_malloc_r+0x29c>
 8005f6c:	f1b9 0f0f 	cmp.w	r9, #15
 8005f70:	f240 8130 	bls.w	80061d4 <_malloc_r+0x4d8>
 8005f74:	6860      	ldr	r0, [r4, #4]
 8005f76:	f1a9 010c 	sub.w	r1, r9, #12
 8005f7a:	f021 0107 	bic.w	r1, r1, #7
 8005f7e:	f000 0001 	and.w	r0, r0, #1
 8005f82:	eb04 0c01 	add.w	ip, r4, r1
 8005f86:	4308      	orrs	r0, r1
 8005f88:	f04f 0e05 	mov.w	lr, #5
 8005f8c:	290f      	cmp	r1, #15
 8005f8e:	6060      	str	r0, [r4, #4]
 8005f90:	e9cc ee01 	strd	lr, lr, [ip, #4]
 8005f94:	f200 813a 	bhi.w	800620c <_malloc_r+0x510>
 8005f98:	4a29      	ldr	r2, [pc, #164]	; (8006040 <_malloc_r+0x344>)
 8005f9a:	482a      	ldr	r0, [pc, #168]	; (8006044 <_malloc_r+0x348>)
 8005f9c:	6811      	ldr	r1, [r2, #0]
 8005f9e:	68bc      	ldr	r4, [r7, #8]
 8005fa0:	428b      	cmp	r3, r1
 8005fa2:	6801      	ldr	r1, [r0, #0]
 8005fa4:	bf88      	it	hi
 8005fa6:	6013      	strhi	r3, [r2, #0]
 8005fa8:	6862      	ldr	r2, [r4, #4]
 8005faa:	428b      	cmp	r3, r1
 8005fac:	f022 0203 	bic.w	r2, r2, #3
 8005fb0:	bf88      	it	hi
 8005fb2:	6003      	strhi	r3, [r0, #0]
 8005fb4:	e0a7      	b.n	8006106 <_malloc_r+0x40a>
 8005fb6:	1962      	adds	r2, r4, r5
 8005fb8:	f043 0301 	orr.w	r3, r3, #1
 8005fbc:	f045 0501 	orr.w	r5, r5, #1
 8005fc0:	6065      	str	r5, [r4, #4]
 8005fc2:	4630      	mov	r0, r6
 8005fc4:	60ba      	str	r2, [r7, #8]
 8005fc6:	6053      	str	r3, [r2, #4]
 8005fc8:	f000 f9a6 	bl	8006318 <__malloc_unlock>
 8005fcc:	3408      	adds	r4, #8
 8005fce:	4620      	mov	r0, r4
 8005fd0:	b003      	add	sp, #12
 8005fd2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005fd6:	4423      	add	r3, r4
 8005fd8:	68e1      	ldr	r1, [r4, #12]
 8005fda:	685a      	ldr	r2, [r3, #4]
 8005fdc:	68a5      	ldr	r5, [r4, #8]
 8005fde:	f042 0201 	orr.w	r2, r2, #1
 8005fe2:	60e9      	str	r1, [r5, #12]
 8005fe4:	4630      	mov	r0, r6
 8005fe6:	608d      	str	r5, [r1, #8]
 8005fe8:	605a      	str	r2, [r3, #4]
 8005fea:	f000 f995 	bl	8006318 <__malloc_unlock>
 8005fee:	3408      	adds	r4, #8
 8005ff0:	4620      	mov	r0, r4
 8005ff2:	b003      	add	sp, #12
 8005ff4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005ff8:	68dc      	ldr	r4, [r3, #12]
 8005ffa:	42a3      	cmp	r3, r4
 8005ffc:	bf08      	it	eq
 8005ffe:	3002      	addeq	r0, #2
 8006000:	f43f aed6 	beq.w	8005db0 <_malloc_r+0xb4>
 8006004:	e692      	b.n	8005d2c <_malloc_r+0x30>
 8006006:	2b14      	cmp	r3, #20
 8006008:	d971      	bls.n	80060ee <_malloc_r+0x3f2>
 800600a:	2b54      	cmp	r3, #84	; 0x54
 800600c:	f200 80ad 	bhi.w	800616a <_malloc_r+0x46e>
 8006010:	0b2b      	lsrs	r3, r5, #12
 8006012:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8006016:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800601a:	00c3      	lsls	r3, r0, #3
 800601c:	e6b3      	b.n	8005d86 <_malloc_r+0x8a>
 800601e:	4423      	add	r3, r4
 8006020:	4630      	mov	r0, r6
 8006022:	685a      	ldr	r2, [r3, #4]
 8006024:	f042 0201 	orr.w	r2, r2, #1
 8006028:	605a      	str	r2, [r3, #4]
 800602a:	3408      	adds	r4, #8
 800602c:	f000 f974 	bl	8006318 <__malloc_unlock>
 8006030:	e68c      	b.n	8005d4c <_malloc_r+0x50>
 8006032:	bf00      	nop
 8006034:	2000044c 	.word	0x2000044c
 8006038:	20000ab4 	.word	0x20000ab4
 800603c:	20000a84 	.word	0x20000a84
 8006040:	20000aac 	.word	0x20000aac
 8006044:	20000ab0 	.word	0x20000ab0
 8006048:	20000454 	.word	0x20000454
 800604c:	20000854 	.word	0x20000854
 8006050:	1961      	adds	r1, r4, r5
 8006052:	f045 0e01 	orr.w	lr, r5, #1
 8006056:	f042 0501 	orr.w	r5, r2, #1
 800605a:	f8c4 e004 	str.w	lr, [r4, #4]
 800605e:	4630      	mov	r0, r6
 8006060:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8006064:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8006068:	604d      	str	r5, [r1, #4]
 800606a:	50e2      	str	r2, [r4, r3]
 800606c:	f000 f954 	bl	8006318 <__malloc_unlock>
 8006070:	3408      	adds	r4, #8
 8006072:	e66b      	b.n	8005d4c <_malloc_r+0x50>
 8006074:	08e8      	lsrs	r0, r5, #3
 8006076:	f105 0308 	add.w	r3, r5, #8
 800607a:	e64f      	b.n	8005d1c <_malloc_r+0x20>
 800607c:	f108 0801 	add.w	r8, r8, #1
 8006080:	f018 0f03 	tst.w	r8, #3
 8006084:	f10e 0e08 	add.w	lr, lr, #8
 8006088:	f47f aed0 	bne.w	8005e2c <_malloc_r+0x130>
 800608c:	e052      	b.n	8006134 <_malloc_r+0x438>
 800608e:	4419      	add	r1, r3
 8006090:	461c      	mov	r4, r3
 8006092:	684a      	ldr	r2, [r1, #4]
 8006094:	68db      	ldr	r3, [r3, #12]
 8006096:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800609a:	f042 0201 	orr.w	r2, r2, #1
 800609e:	604a      	str	r2, [r1, #4]
 80060a0:	4630      	mov	r0, r6
 80060a2:	60eb      	str	r3, [r5, #12]
 80060a4:	609d      	str	r5, [r3, #8]
 80060a6:	f000 f937 	bl	8006318 <__malloc_unlock>
 80060aa:	e64f      	b.n	8005d4c <_malloc_r+0x50>
 80060ac:	0a5a      	lsrs	r2, r3, #9
 80060ae:	2a04      	cmp	r2, #4
 80060b0:	d935      	bls.n	800611e <_malloc_r+0x422>
 80060b2:	2a14      	cmp	r2, #20
 80060b4:	d86f      	bhi.n	8006196 <_malloc_r+0x49a>
 80060b6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 80060ba:	00c9      	lsls	r1, r1, #3
 80060bc:	325b      	adds	r2, #91	; 0x5b
 80060be:	eb07 0e01 	add.w	lr, r7, r1
 80060c2:	5879      	ldr	r1, [r7, r1]
 80060c4:	f1ae 0e08 	sub.w	lr, lr, #8
 80060c8:	458e      	cmp	lr, r1
 80060ca:	d058      	beq.n	800617e <_malloc_r+0x482>
 80060cc:	684a      	ldr	r2, [r1, #4]
 80060ce:	f022 0203 	bic.w	r2, r2, #3
 80060d2:	429a      	cmp	r2, r3
 80060d4:	d902      	bls.n	80060dc <_malloc_r+0x3e0>
 80060d6:	6889      	ldr	r1, [r1, #8]
 80060d8:	458e      	cmp	lr, r1
 80060da:	d1f7      	bne.n	80060cc <_malloc_r+0x3d0>
 80060dc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 80060e0:	687b      	ldr	r3, [r7, #4]
 80060e2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 80060e6:	f8ce 4008 	str.w	r4, [lr, #8]
 80060ea:	60cc      	str	r4, [r1, #12]
 80060ec:	e68c      	b.n	8005e08 <_malloc_r+0x10c>
 80060ee:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 80060f2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 80060f6:	00c3      	lsls	r3, r0, #3
 80060f8:	e645      	b.n	8005d86 <_malloc_r+0x8a>
 80060fa:	42bc      	cmp	r4, r7
 80060fc:	d072      	beq.n	80061e4 <_malloc_r+0x4e8>
 80060fe:	68bc      	ldr	r4, [r7, #8]
 8006100:	6862      	ldr	r2, [r4, #4]
 8006102:	f022 0203 	bic.w	r2, r2, #3
 8006106:	4295      	cmp	r5, r2
 8006108:	eba2 0305 	sub.w	r3, r2, r5
 800610c:	d802      	bhi.n	8006114 <_malloc_r+0x418>
 800610e:	2b0f      	cmp	r3, #15
 8006110:	f73f af51 	bgt.w	8005fb6 <_malloc_r+0x2ba>
 8006114:	4630      	mov	r0, r6
 8006116:	f000 f8ff 	bl	8006318 <__malloc_unlock>
 800611a:	2400      	movs	r4, #0
 800611c:	e616      	b.n	8005d4c <_malloc_r+0x50>
 800611e:	099a      	lsrs	r2, r3, #6
 8006120:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8006124:	00c9      	lsls	r1, r1, #3
 8006126:	3238      	adds	r2, #56	; 0x38
 8006128:	e7c9      	b.n	80060be <_malloc_r+0x3c2>
 800612a:	f8d9 9000 	ldr.w	r9, [r9]
 800612e:	4599      	cmp	r9, r3
 8006130:	f040 8083 	bne.w	800623a <_malloc_r+0x53e>
 8006134:	f010 0f03 	tst.w	r0, #3
 8006138:	f1a9 0308 	sub.w	r3, r9, #8
 800613c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8006140:	d1f3      	bne.n	800612a <_malloc_r+0x42e>
 8006142:	687b      	ldr	r3, [r7, #4]
 8006144:	ea23 0304 	bic.w	r3, r3, r4
 8006148:	607b      	str	r3, [r7, #4]
 800614a:	0064      	lsls	r4, r4, #1
 800614c:	429c      	cmp	r4, r3
 800614e:	f63f aeac 	bhi.w	8005eaa <_malloc_r+0x1ae>
 8006152:	b91c      	cbnz	r4, 800615c <_malloc_r+0x460>
 8006154:	e6a9      	b.n	8005eaa <_malloc_r+0x1ae>
 8006156:	0064      	lsls	r4, r4, #1
 8006158:	f108 0804 	add.w	r8, r8, #4
 800615c:	421c      	tst	r4, r3
 800615e:	d0fa      	beq.n	8006156 <_malloc_r+0x45a>
 8006160:	4640      	mov	r0, r8
 8006162:	e65f      	b.n	8005e24 <_malloc_r+0x128>
 8006164:	f108 0810 	add.w	r8, r8, #16
 8006168:	e6bc      	b.n	8005ee4 <_malloc_r+0x1e8>
 800616a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800616e:	d826      	bhi.n	80061be <_malloc_r+0x4c2>
 8006170:	0beb      	lsrs	r3, r5, #15
 8006172:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8006176:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800617a:	00c3      	lsls	r3, r0, #3
 800617c:	e603      	b.n	8005d86 <_malloc_r+0x8a>
 800617e:	687b      	ldr	r3, [r7, #4]
 8006180:	1092      	asrs	r2, r2, #2
 8006182:	f04f 0801 	mov.w	r8, #1
 8006186:	fa08 f202 	lsl.w	r2, r8, r2
 800618a:	4313      	orrs	r3, r2
 800618c:	607b      	str	r3, [r7, #4]
 800618e:	e7a8      	b.n	80060e2 <_malloc_r+0x3e6>
 8006190:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 8006194:	e6ce      	b.n	8005f34 <_malloc_r+0x238>
 8006196:	2a54      	cmp	r2, #84	; 0x54
 8006198:	d829      	bhi.n	80061ee <_malloc_r+0x4f2>
 800619a:	0b1a      	lsrs	r2, r3, #12
 800619c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80061a0:	00c9      	lsls	r1, r1, #3
 80061a2:	326e      	adds	r2, #110	; 0x6e
 80061a4:	e78b      	b.n	80060be <_malloc_r+0x3c2>
 80061a6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80061aa:	2900      	cmp	r1, #0
 80061ac:	f47f aeae 	bne.w	8005f0c <_malloc_r+0x210>
 80061b0:	eb09 0208 	add.w	r2, r9, r8
 80061b4:	68b9      	ldr	r1, [r7, #8]
 80061b6:	f042 0201 	orr.w	r2, r2, #1
 80061ba:	604a      	str	r2, [r1, #4]
 80061bc:	e6ec      	b.n	8005f98 <_malloc_r+0x29c>
 80061be:	f240 5254 	movw	r2, #1364	; 0x554
 80061c2:	4293      	cmp	r3, r2
 80061c4:	d81c      	bhi.n	8006200 <_malloc_r+0x504>
 80061c6:	0cab      	lsrs	r3, r5, #18
 80061c8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80061cc:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80061d0:	00c3      	lsls	r3, r0, #3
 80061d2:	e5d8      	b.n	8005d86 <_malloc_r+0x8a>
 80061d4:	2301      	movs	r3, #1
 80061d6:	f8cb 3004 	str.w	r3, [fp, #4]
 80061da:	e79b      	b.n	8006114 <_malloc_r+0x418>
 80061dc:	2101      	movs	r1, #1
 80061de:	f04f 0800 	mov.w	r8, #0
 80061e2:	e6ba      	b.n	8005f5a <_malloc_r+0x25e>
 80061e4:	4a16      	ldr	r2, [pc, #88]	; (8006240 <_malloc_r+0x544>)
 80061e6:	6813      	ldr	r3, [r2, #0]
 80061e8:	4443      	add	r3, r8
 80061ea:	6013      	str	r3, [r2, #0]
 80061ec:	e68e      	b.n	8005f0c <_malloc_r+0x210>
 80061ee:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 80061f2:	d814      	bhi.n	800621e <_malloc_r+0x522>
 80061f4:	0bda      	lsrs	r2, r3, #15
 80061f6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 80061fa:	00c9      	lsls	r1, r1, #3
 80061fc:	3277      	adds	r2, #119	; 0x77
 80061fe:	e75e      	b.n	80060be <_malloc_r+0x3c2>
 8006200:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8006204:	207f      	movs	r0, #127	; 0x7f
 8006206:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800620a:	e5bc      	b.n	8005d86 <_malloc_r+0x8a>
 800620c:	f104 0108 	add.w	r1, r4, #8
 8006210:	4630      	mov	r0, r6
 8006212:	9201      	str	r2, [sp, #4]
 8006214:	f7ff fa48 	bl	80056a8 <_free_r>
 8006218:	9a01      	ldr	r2, [sp, #4]
 800621a:	6813      	ldr	r3, [r2, #0]
 800621c:	e6bc      	b.n	8005f98 <_malloc_r+0x29c>
 800621e:	f240 5154 	movw	r1, #1364	; 0x554
 8006222:	428a      	cmp	r2, r1
 8006224:	d805      	bhi.n	8006232 <_malloc_r+0x536>
 8006226:	0c9a      	lsrs	r2, r3, #18
 8006228:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800622c:	00c9      	lsls	r1, r1, #3
 800622e:	327c      	adds	r2, #124	; 0x7c
 8006230:	e745      	b.n	80060be <_malloc_r+0x3c2>
 8006232:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8006236:	227e      	movs	r2, #126	; 0x7e
 8006238:	e741      	b.n	80060be <_malloc_r+0x3c2>
 800623a:	687b      	ldr	r3, [r7, #4]
 800623c:	e785      	b.n	800614a <_malloc_r+0x44e>
 800623e:	bf00      	nop
 8006240:	20000a84 	.word	0x20000a84

08006244 <memmove>:
 8006244:	4288      	cmp	r0, r1
 8006246:	b4f0      	push	{r4, r5, r6, r7}
 8006248:	d90d      	bls.n	8006266 <memmove+0x22>
 800624a:	188b      	adds	r3, r1, r2
 800624c:	4283      	cmp	r3, r0
 800624e:	d90a      	bls.n	8006266 <memmove+0x22>
 8006250:	1884      	adds	r4, r0, r2
 8006252:	b132      	cbz	r2, 8006262 <memmove+0x1e>
 8006254:	4622      	mov	r2, r4
 8006256:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800625a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800625e:	4299      	cmp	r1, r3
 8006260:	d1f9      	bne.n	8006256 <memmove+0x12>
 8006262:	bcf0      	pop	{r4, r5, r6, r7}
 8006264:	4770      	bx	lr
 8006266:	2a0f      	cmp	r2, #15
 8006268:	d949      	bls.n	80062fe <memmove+0xba>
 800626a:	ea40 0301 	orr.w	r3, r0, r1
 800626e:	079b      	lsls	r3, r3, #30
 8006270:	d147      	bne.n	8006302 <memmove+0xbe>
 8006272:	f1a2 0310 	sub.w	r3, r2, #16
 8006276:	091b      	lsrs	r3, r3, #4
 8006278:	f101 0720 	add.w	r7, r1, #32
 800627c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8006280:	f101 0410 	add.w	r4, r1, #16
 8006284:	f100 0510 	add.w	r5, r0, #16
 8006288:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800628c:	f845 6c10 	str.w	r6, [r5, #-16]
 8006290:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 8006294:	f845 6c0c 	str.w	r6, [r5, #-12]
 8006298:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800629c:	f845 6c08 	str.w	r6, [r5, #-8]
 80062a0:	f854 6c04 	ldr.w	r6, [r4, #-4]
 80062a4:	f845 6c04 	str.w	r6, [r5, #-4]
 80062a8:	3410      	adds	r4, #16
 80062aa:	42bc      	cmp	r4, r7
 80062ac:	f105 0510 	add.w	r5, r5, #16
 80062b0:	d1ea      	bne.n	8006288 <memmove+0x44>
 80062b2:	3301      	adds	r3, #1
 80062b4:	f002 050f 	and.w	r5, r2, #15
 80062b8:	011b      	lsls	r3, r3, #4
 80062ba:	2d03      	cmp	r5, #3
 80062bc:	4419      	add	r1, r3
 80062be:	4403      	add	r3, r0
 80062c0:	d921      	bls.n	8006306 <memmove+0xc2>
 80062c2:	1f1f      	subs	r7, r3, #4
 80062c4:	460e      	mov	r6, r1
 80062c6:	462c      	mov	r4, r5
 80062c8:	3c04      	subs	r4, #4
 80062ca:	f856 cb04 	ldr.w	ip, [r6], #4
 80062ce:	f847 cf04 	str.w	ip, [r7, #4]!
 80062d2:	2c03      	cmp	r4, #3
 80062d4:	d8f8      	bhi.n	80062c8 <memmove+0x84>
 80062d6:	1f2c      	subs	r4, r5, #4
 80062d8:	f024 0403 	bic.w	r4, r4, #3
 80062dc:	3404      	adds	r4, #4
 80062de:	4423      	add	r3, r4
 80062e0:	4421      	add	r1, r4
 80062e2:	f002 0203 	and.w	r2, r2, #3
 80062e6:	2a00      	cmp	r2, #0
 80062e8:	d0bb      	beq.n	8006262 <memmove+0x1e>
 80062ea:	3b01      	subs	r3, #1
 80062ec:	440a      	add	r2, r1
 80062ee:	f811 4b01 	ldrb.w	r4, [r1], #1
 80062f2:	f803 4f01 	strb.w	r4, [r3, #1]!
 80062f6:	4291      	cmp	r1, r2
 80062f8:	d1f9      	bne.n	80062ee <memmove+0xaa>
 80062fa:	bcf0      	pop	{r4, r5, r6, r7}
 80062fc:	4770      	bx	lr
 80062fe:	4603      	mov	r3, r0
 8006300:	e7f1      	b.n	80062e6 <memmove+0xa2>
 8006302:	4603      	mov	r3, r0
 8006304:	e7f1      	b.n	80062ea <memmove+0xa6>
 8006306:	462a      	mov	r2, r5
 8006308:	e7ed      	b.n	80062e6 <memmove+0xa2>
 800630a:	bf00      	nop

0800630c <__malloc_lock>:
 800630c:	4801      	ldr	r0, [pc, #4]	; (8006314 <__malloc_lock+0x8>)
 800630e:	f7ff bc79 	b.w	8005c04 <__retarget_lock_acquire_recursive>
 8006312:	bf00      	nop
 8006314:	20000b28 	.word	0x20000b28

08006318 <__malloc_unlock>:
 8006318:	4801      	ldr	r0, [pc, #4]	; (8006320 <__malloc_unlock+0x8>)
 800631a:	f7ff bc75 	b.w	8005c08 <__retarget_lock_release_recursive>
 800631e:	bf00      	nop
 8006320:	20000b28 	.word	0x20000b28

08006324 <_Balloc>:
 8006324:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006326:	b570      	push	{r4, r5, r6, lr}
 8006328:	4605      	mov	r5, r0
 800632a:	460c      	mov	r4, r1
 800632c:	b14b      	cbz	r3, 8006342 <_Balloc+0x1e>
 800632e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 8006332:	b180      	cbz	r0, 8006356 <_Balloc+0x32>
 8006334:	6802      	ldr	r2, [r0, #0]
 8006336:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800633a:	2300      	movs	r3, #0
 800633c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 8006340:	bd70      	pop	{r4, r5, r6, pc}
 8006342:	2221      	movs	r2, #33	; 0x21
 8006344:	2104      	movs	r1, #4
 8006346:	f000 fe1d 	bl	8006f84 <_calloc_r>
 800634a:	4603      	mov	r3, r0
 800634c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800634e:	2800      	cmp	r0, #0
 8006350:	d1ed      	bne.n	800632e <_Balloc+0xa>
 8006352:	2000      	movs	r0, #0
 8006354:	bd70      	pop	{r4, r5, r6, pc}
 8006356:	2101      	movs	r1, #1
 8006358:	fa01 f604 	lsl.w	r6, r1, r4
 800635c:	1d72      	adds	r2, r6, #5
 800635e:	4628      	mov	r0, r5
 8006360:	0092      	lsls	r2, r2, #2
 8006362:	f000 fe0f 	bl	8006f84 <_calloc_r>
 8006366:	2800      	cmp	r0, #0
 8006368:	d0f3      	beq.n	8006352 <_Balloc+0x2e>
 800636a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800636e:	e7e4      	b.n	800633a <_Balloc+0x16>

08006370 <_Bfree>:
 8006370:	b131      	cbz	r1, 8006380 <_Bfree+0x10>
 8006372:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 8006374:	684a      	ldr	r2, [r1, #4]
 8006376:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800637a:	6008      	str	r0, [r1, #0]
 800637c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8006380:	4770      	bx	lr
 8006382:	bf00      	nop

08006384 <__multadd>:
 8006384:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006386:	690c      	ldr	r4, [r1, #16]
 8006388:	b083      	sub	sp, #12
 800638a:	460d      	mov	r5, r1
 800638c:	4606      	mov	r6, r0
 800638e:	f101 0c14 	add.w	ip, r1, #20
 8006392:	2700      	movs	r7, #0
 8006394:	f8dc 0000 	ldr.w	r0, [ip]
 8006398:	b281      	uxth	r1, r0
 800639a:	fb02 3301 	mla	r3, r2, r1, r3
 800639e:	0c01      	lsrs	r1, r0, #16
 80063a0:	0c18      	lsrs	r0, r3, #16
 80063a2:	fb02 0101 	mla	r1, r2, r1, r0
 80063a6:	b29b      	uxth	r3, r3
 80063a8:	3701      	adds	r7, #1
 80063aa:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 80063ae:	42bc      	cmp	r4, r7
 80063b0:	f84c 3b04 	str.w	r3, [ip], #4
 80063b4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 80063b8:	dcec      	bgt.n	8006394 <__multadd+0x10>
 80063ba:	b13b      	cbz	r3, 80063cc <__multadd+0x48>
 80063bc:	68aa      	ldr	r2, [r5, #8]
 80063be:	42a2      	cmp	r2, r4
 80063c0:	dd07      	ble.n	80063d2 <__multadd+0x4e>
 80063c2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 80063c6:	3401      	adds	r4, #1
 80063c8:	6153      	str	r3, [r2, #20]
 80063ca:	612c      	str	r4, [r5, #16]
 80063cc:	4628      	mov	r0, r5
 80063ce:	b003      	add	sp, #12
 80063d0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80063d2:	6869      	ldr	r1, [r5, #4]
 80063d4:	9301      	str	r3, [sp, #4]
 80063d6:	3101      	adds	r1, #1
 80063d8:	4630      	mov	r0, r6
 80063da:	f7ff ffa3 	bl	8006324 <_Balloc>
 80063de:	692a      	ldr	r2, [r5, #16]
 80063e0:	3202      	adds	r2, #2
 80063e2:	f105 010c 	add.w	r1, r5, #12
 80063e6:	4607      	mov	r7, r0
 80063e8:	0092      	lsls	r2, r2, #2
 80063ea:	300c      	adds	r0, #12
 80063ec:	f7fa f888 	bl	8000500 <memcpy>
 80063f0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 80063f2:	6869      	ldr	r1, [r5, #4]
 80063f4:	9b01      	ldr	r3, [sp, #4]
 80063f6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 80063fa:	6028      	str	r0, [r5, #0]
 80063fc:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8006400:	463d      	mov	r5, r7
 8006402:	e7de      	b.n	80063c2 <__multadd+0x3e>

08006404 <__hi0bits>:
 8006404:	0c02      	lsrs	r2, r0, #16
 8006406:	0412      	lsls	r2, r2, #16
 8006408:	4603      	mov	r3, r0
 800640a:	b9c2      	cbnz	r2, 800643e <__hi0bits+0x3a>
 800640c:	0403      	lsls	r3, r0, #16
 800640e:	2010      	movs	r0, #16
 8006410:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8006414:	bf04      	itt	eq
 8006416:	021b      	lsleq	r3, r3, #8
 8006418:	3008      	addeq	r0, #8
 800641a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800641e:	bf04      	itt	eq
 8006420:	011b      	lsleq	r3, r3, #4
 8006422:	3004      	addeq	r0, #4
 8006424:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 8006428:	bf04      	itt	eq
 800642a:	009b      	lsleq	r3, r3, #2
 800642c:	3002      	addeq	r0, #2
 800642e:	2b00      	cmp	r3, #0
 8006430:	db04      	blt.n	800643c <__hi0bits+0x38>
 8006432:	005b      	lsls	r3, r3, #1
 8006434:	d501      	bpl.n	800643a <__hi0bits+0x36>
 8006436:	3001      	adds	r0, #1
 8006438:	4770      	bx	lr
 800643a:	2020      	movs	r0, #32
 800643c:	4770      	bx	lr
 800643e:	2000      	movs	r0, #0
 8006440:	e7e6      	b.n	8006410 <__hi0bits+0xc>
 8006442:	bf00      	nop

08006444 <__lo0bits>:
 8006444:	6803      	ldr	r3, [r0, #0]
 8006446:	f013 0207 	ands.w	r2, r3, #7
 800644a:	4601      	mov	r1, r0
 800644c:	d007      	beq.n	800645e <__lo0bits+0x1a>
 800644e:	07da      	lsls	r2, r3, #31
 8006450:	d41f      	bmi.n	8006492 <__lo0bits+0x4e>
 8006452:	0798      	lsls	r0, r3, #30
 8006454:	d51f      	bpl.n	8006496 <__lo0bits+0x52>
 8006456:	085b      	lsrs	r3, r3, #1
 8006458:	600b      	str	r3, [r1, #0]
 800645a:	2001      	movs	r0, #1
 800645c:	4770      	bx	lr
 800645e:	b298      	uxth	r0, r3
 8006460:	b1a0      	cbz	r0, 800648c <__lo0bits+0x48>
 8006462:	4610      	mov	r0, r2
 8006464:	f013 0fff 	tst.w	r3, #255	; 0xff
 8006468:	bf04      	itt	eq
 800646a:	0a1b      	lsreq	r3, r3, #8
 800646c:	3008      	addeq	r0, #8
 800646e:	071a      	lsls	r2, r3, #28
 8006470:	bf04      	itt	eq
 8006472:	091b      	lsreq	r3, r3, #4
 8006474:	3004      	addeq	r0, #4
 8006476:	079a      	lsls	r2, r3, #30
 8006478:	bf04      	itt	eq
 800647a:	089b      	lsreq	r3, r3, #2
 800647c:	3002      	addeq	r0, #2
 800647e:	07da      	lsls	r2, r3, #31
 8006480:	d402      	bmi.n	8006488 <__lo0bits+0x44>
 8006482:	085b      	lsrs	r3, r3, #1
 8006484:	d00b      	beq.n	800649e <__lo0bits+0x5a>
 8006486:	3001      	adds	r0, #1
 8006488:	600b      	str	r3, [r1, #0]
 800648a:	4770      	bx	lr
 800648c:	0c1b      	lsrs	r3, r3, #16
 800648e:	2010      	movs	r0, #16
 8006490:	e7e8      	b.n	8006464 <__lo0bits+0x20>
 8006492:	2000      	movs	r0, #0
 8006494:	4770      	bx	lr
 8006496:	089b      	lsrs	r3, r3, #2
 8006498:	600b      	str	r3, [r1, #0]
 800649a:	2002      	movs	r0, #2
 800649c:	4770      	bx	lr
 800649e:	2020      	movs	r0, #32
 80064a0:	4770      	bx	lr
 80064a2:	bf00      	nop

080064a4 <__i2b>:
 80064a4:	b510      	push	{r4, lr}
 80064a6:	460c      	mov	r4, r1
 80064a8:	2101      	movs	r1, #1
 80064aa:	f7ff ff3b 	bl	8006324 <_Balloc>
 80064ae:	2201      	movs	r2, #1
 80064b0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 80064b4:	bd10      	pop	{r4, pc}
 80064b6:	bf00      	nop

080064b8 <__multiply>:
 80064b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80064bc:	690e      	ldr	r6, [r1, #16]
 80064be:	6914      	ldr	r4, [r2, #16]
 80064c0:	42a6      	cmp	r6, r4
 80064c2:	b083      	sub	sp, #12
 80064c4:	460f      	mov	r7, r1
 80064c6:	4615      	mov	r5, r2
 80064c8:	da04      	bge.n	80064d4 <__multiply+0x1c>
 80064ca:	4632      	mov	r2, r6
 80064cc:	462f      	mov	r7, r5
 80064ce:	4626      	mov	r6, r4
 80064d0:	460d      	mov	r5, r1
 80064d2:	4614      	mov	r4, r2
 80064d4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 80064d8:	eb06 0804 	add.w	r8, r6, r4
 80064dc:	4543      	cmp	r3, r8
 80064de:	bfb8      	it	lt
 80064e0:	3101      	addlt	r1, #1
 80064e2:	f7ff ff1f 	bl	8006324 <_Balloc>
 80064e6:	f100 0914 	add.w	r9, r0, #20
 80064ea:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 80064ee:	45f1      	cmp	r9, lr
 80064f0:	9000      	str	r0, [sp, #0]
 80064f2:	d205      	bcs.n	8006500 <__multiply+0x48>
 80064f4:	464b      	mov	r3, r9
 80064f6:	2200      	movs	r2, #0
 80064f8:	f843 2b04 	str.w	r2, [r3], #4
 80064fc:	459e      	cmp	lr, r3
 80064fe:	d8fb      	bhi.n	80064f8 <__multiply+0x40>
 8006500:	f105 0a14 	add.w	sl, r5, #20
 8006504:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8006508:	f107 0314 	add.w	r3, r7, #20
 800650c:	45a2      	cmp	sl, r4
 800650e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8006512:	d261      	bcs.n	80065d8 <__multiply+0x120>
 8006514:	1b64      	subs	r4, r4, r5
 8006516:	3c15      	subs	r4, #21
 8006518:	f024 0403 	bic.w	r4, r4, #3
 800651c:	f8cd e004 	str.w	lr, [sp, #4]
 8006520:	44a2      	add	sl, r4
 8006522:	f105 0210 	add.w	r2, r5, #16
 8006526:	469e      	mov	lr, r3
 8006528:	e005      	b.n	8006536 <__multiply+0x7e>
 800652a:	0c2d      	lsrs	r5, r5, #16
 800652c:	d12b      	bne.n	8006586 <__multiply+0xce>
 800652e:	4592      	cmp	sl, r2
 8006530:	f109 0904 	add.w	r9, r9, #4
 8006534:	d04e      	beq.n	80065d4 <__multiply+0x11c>
 8006536:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800653a:	fa1f fb85 	uxth.w	fp, r5
 800653e:	f1bb 0f00 	cmp.w	fp, #0
 8006542:	d0f2      	beq.n	800652a <__multiply+0x72>
 8006544:	4677      	mov	r7, lr
 8006546:	464e      	mov	r6, r9
 8006548:	2000      	movs	r0, #0
 800654a:	e000      	b.n	800654e <__multiply+0x96>
 800654c:	4626      	mov	r6, r4
 800654e:	f857 1b04 	ldr.w	r1, [r7], #4
 8006552:	6834      	ldr	r4, [r6, #0]
 8006554:	b28b      	uxth	r3, r1
 8006556:	b2a5      	uxth	r5, r4
 8006558:	0c09      	lsrs	r1, r1, #16
 800655a:	0c24      	lsrs	r4, r4, #16
 800655c:	fb0b 5303 	mla	r3, fp, r3, r5
 8006560:	4403      	add	r3, r0
 8006562:	fb0b 4001 	mla	r0, fp, r1, r4
 8006566:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800656a:	4634      	mov	r4, r6
 800656c:	b29b      	uxth	r3, r3
 800656e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 8006572:	45bc      	cmp	ip, r7
 8006574:	ea4f 4010 	mov.w	r0, r0, lsr #16
 8006578:	f844 3b04 	str.w	r3, [r4], #4
 800657c:	d8e6      	bhi.n	800654c <__multiply+0x94>
 800657e:	6070      	str	r0, [r6, #4]
 8006580:	6815      	ldr	r5, [r2, #0]
 8006582:	0c2d      	lsrs	r5, r5, #16
 8006584:	d0d3      	beq.n	800652e <__multiply+0x76>
 8006586:	f8d9 3000 	ldr.w	r3, [r9]
 800658a:	4676      	mov	r6, lr
 800658c:	4618      	mov	r0, r3
 800658e:	46cb      	mov	fp, r9
 8006590:	2100      	movs	r1, #0
 8006592:	e000      	b.n	8006596 <__multiply+0xde>
 8006594:	46a3      	mov	fp, r4
 8006596:	8834      	ldrh	r4, [r6, #0]
 8006598:	0c00      	lsrs	r0, r0, #16
 800659a:	fb05 0004 	mla	r0, r5, r4, r0
 800659e:	4401      	add	r1, r0
 80065a0:	b29b      	uxth	r3, r3
 80065a2:	465c      	mov	r4, fp
 80065a4:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 80065a8:	f844 3b04 	str.w	r3, [r4], #4
 80065ac:	f856 3b04 	ldr.w	r3, [r6], #4
 80065b0:	f8db 0004 	ldr.w	r0, [fp, #4]
 80065b4:	0c1b      	lsrs	r3, r3, #16
 80065b6:	b287      	uxth	r7, r0
 80065b8:	fb05 7303 	mla	r3, r5, r3, r7
 80065bc:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 80065c0:	45b4      	cmp	ip, r6
 80065c2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 80065c6:	d8e5      	bhi.n	8006594 <__multiply+0xdc>
 80065c8:	4592      	cmp	sl, r2
 80065ca:	f8cb 3004 	str.w	r3, [fp, #4]
 80065ce:	f109 0904 	add.w	r9, r9, #4
 80065d2:	d1b0      	bne.n	8006536 <__multiply+0x7e>
 80065d4:	f8dd e004 	ldr.w	lr, [sp, #4]
 80065d8:	f1b8 0f00 	cmp.w	r8, #0
 80065dc:	dd0b      	ble.n	80065f6 <__multiply+0x13e>
 80065de:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 80065e2:	f1ae 0e04 	sub.w	lr, lr, #4
 80065e6:	b11b      	cbz	r3, 80065f0 <__multiply+0x138>
 80065e8:	e005      	b.n	80065f6 <__multiply+0x13e>
 80065ea:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 80065ee:	b913      	cbnz	r3, 80065f6 <__multiply+0x13e>
 80065f0:	f1b8 0801 	subs.w	r8, r8, #1
 80065f4:	d1f9      	bne.n	80065ea <__multiply+0x132>
 80065f6:	9800      	ldr	r0, [sp, #0]
 80065f8:	f8c0 8010 	str.w	r8, [r0, #16]
 80065fc:	b003      	add	sp, #12
 80065fe:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006602:	bf00      	nop

08006604 <__pow5mult>:
 8006604:	f012 0303 	ands.w	r3, r2, #3
 8006608:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800660c:	4614      	mov	r4, r2
 800660e:	4607      	mov	r7, r0
 8006610:	d12e      	bne.n	8006670 <__pow5mult+0x6c>
 8006612:	460d      	mov	r5, r1
 8006614:	10a4      	asrs	r4, r4, #2
 8006616:	d01c      	beq.n	8006652 <__pow5mult+0x4e>
 8006618:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800661a:	b396      	cbz	r6, 8006682 <__pow5mult+0x7e>
 800661c:	07e3      	lsls	r3, r4, #31
 800661e:	f04f 0800 	mov.w	r8, #0
 8006622:	d406      	bmi.n	8006632 <__pow5mult+0x2e>
 8006624:	1064      	asrs	r4, r4, #1
 8006626:	d014      	beq.n	8006652 <__pow5mult+0x4e>
 8006628:	6830      	ldr	r0, [r6, #0]
 800662a:	b1a8      	cbz	r0, 8006658 <__pow5mult+0x54>
 800662c:	4606      	mov	r6, r0
 800662e:	07e3      	lsls	r3, r4, #31
 8006630:	d5f8      	bpl.n	8006624 <__pow5mult+0x20>
 8006632:	4632      	mov	r2, r6
 8006634:	4629      	mov	r1, r5
 8006636:	4638      	mov	r0, r7
 8006638:	f7ff ff3e 	bl	80064b8 <__multiply>
 800663c:	b1b5      	cbz	r5, 800666c <__pow5mult+0x68>
 800663e:	686a      	ldr	r2, [r5, #4]
 8006640:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006642:	1064      	asrs	r4, r4, #1
 8006644:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006648:	6029      	str	r1, [r5, #0]
 800664a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800664e:	4605      	mov	r5, r0
 8006650:	d1ea      	bne.n	8006628 <__pow5mult+0x24>
 8006652:	4628      	mov	r0, r5
 8006654:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006658:	4632      	mov	r2, r6
 800665a:	4631      	mov	r1, r6
 800665c:	4638      	mov	r0, r7
 800665e:	f7ff ff2b 	bl	80064b8 <__multiply>
 8006662:	6030      	str	r0, [r6, #0]
 8006664:	f8c0 8000 	str.w	r8, [r0]
 8006668:	4606      	mov	r6, r0
 800666a:	e7e0      	b.n	800662e <__pow5mult+0x2a>
 800666c:	4605      	mov	r5, r0
 800666e:	e7d9      	b.n	8006624 <__pow5mult+0x20>
 8006670:	3b01      	subs	r3, #1
 8006672:	4a0b      	ldr	r2, [pc, #44]	; (80066a0 <__pow5mult+0x9c>)
 8006674:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 8006678:	2300      	movs	r3, #0
 800667a:	f7ff fe83 	bl	8006384 <__multadd>
 800667e:	4605      	mov	r5, r0
 8006680:	e7c8      	b.n	8006614 <__pow5mult+0x10>
 8006682:	2101      	movs	r1, #1
 8006684:	4638      	mov	r0, r7
 8006686:	f7ff fe4d 	bl	8006324 <_Balloc>
 800668a:	f240 2371 	movw	r3, #625	; 0x271
 800668e:	6143      	str	r3, [r0, #20]
 8006690:	2201      	movs	r2, #1
 8006692:	2300      	movs	r3, #0
 8006694:	6102      	str	r2, [r0, #16]
 8006696:	4606      	mov	r6, r0
 8006698:	64b8      	str	r0, [r7, #72]	; 0x48
 800669a:	6003      	str	r3, [r0, #0]
 800669c:	e7be      	b.n	800661c <__pow5mult+0x18>
 800669e:	bf00      	nop
 80066a0:	08007690 	.word	0x08007690

080066a4 <__lshift>:
 80066a4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80066a8:	4691      	mov	r9, r2
 80066aa:	690a      	ldr	r2, [r1, #16]
 80066ac:	460e      	mov	r6, r1
 80066ae:	ea4f 1469 	mov.w	r4, r9, asr #5
 80066b2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 80066b6:	eb04 0802 	add.w	r8, r4, r2
 80066ba:	f108 0501 	add.w	r5, r8, #1
 80066be:	429d      	cmp	r5, r3
 80066c0:	4607      	mov	r7, r0
 80066c2:	dd04      	ble.n	80066ce <__lshift+0x2a>
 80066c4:	005b      	lsls	r3, r3, #1
 80066c6:	429d      	cmp	r5, r3
 80066c8:	f101 0101 	add.w	r1, r1, #1
 80066cc:	dcfa      	bgt.n	80066c4 <__lshift+0x20>
 80066ce:	4638      	mov	r0, r7
 80066d0:	f7ff fe28 	bl	8006324 <_Balloc>
 80066d4:	2c00      	cmp	r4, #0
 80066d6:	f100 0314 	add.w	r3, r0, #20
 80066da:	dd37      	ble.n	800674c <__lshift+0xa8>
 80066dc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 80066e0:	2200      	movs	r2, #0
 80066e2:	f843 2b04 	str.w	r2, [r3], #4
 80066e6:	428b      	cmp	r3, r1
 80066e8:	d1fb      	bne.n	80066e2 <__lshift+0x3e>
 80066ea:	6934      	ldr	r4, [r6, #16]
 80066ec:	f106 0314 	add.w	r3, r6, #20
 80066f0:	f019 091f 	ands.w	r9, r9, #31
 80066f4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 80066f8:	d020      	beq.n	800673c <__lshift+0x98>
 80066fa:	f1c9 0e20 	rsb	lr, r9, #32
 80066fe:	2200      	movs	r2, #0
 8006700:	e000      	b.n	8006704 <__lshift+0x60>
 8006702:	4651      	mov	r1, sl
 8006704:	681c      	ldr	r4, [r3, #0]
 8006706:	468a      	mov	sl, r1
 8006708:	fa04 f409 	lsl.w	r4, r4, r9
 800670c:	4314      	orrs	r4, r2
 800670e:	f84a 4b04 	str.w	r4, [sl], #4
 8006712:	f853 2b04 	ldr.w	r2, [r3], #4
 8006716:	4563      	cmp	r3, ip
 8006718:	fa22 f20e 	lsr.w	r2, r2, lr
 800671c:	d3f1      	bcc.n	8006702 <__lshift+0x5e>
 800671e:	604a      	str	r2, [r1, #4]
 8006720:	b10a      	cbz	r2, 8006726 <__lshift+0x82>
 8006722:	f108 0502 	add.w	r5, r8, #2
 8006726:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 8006728:	6872      	ldr	r2, [r6, #4]
 800672a:	3d01      	subs	r5, #1
 800672c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 8006730:	6105      	str	r5, [r0, #16]
 8006732:	6031      	str	r1, [r6, #0]
 8006734:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 8006738:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800673c:	3904      	subs	r1, #4
 800673e:	f853 2b04 	ldr.w	r2, [r3], #4
 8006742:	f841 2f04 	str.w	r2, [r1, #4]!
 8006746:	459c      	cmp	ip, r3
 8006748:	d8f9      	bhi.n	800673e <__lshift+0x9a>
 800674a:	e7ec      	b.n	8006726 <__lshift+0x82>
 800674c:	4619      	mov	r1, r3
 800674e:	e7cc      	b.n	80066ea <__lshift+0x46>

08006750 <__mcmp>:
 8006750:	b430      	push	{r4, r5}
 8006752:	690b      	ldr	r3, [r1, #16]
 8006754:	4605      	mov	r5, r0
 8006756:	6900      	ldr	r0, [r0, #16]
 8006758:	1ac0      	subs	r0, r0, r3
 800675a:	d10f      	bne.n	800677c <__mcmp+0x2c>
 800675c:	009b      	lsls	r3, r3, #2
 800675e:	3514      	adds	r5, #20
 8006760:	3114      	adds	r1, #20
 8006762:	4419      	add	r1, r3
 8006764:	442b      	add	r3, r5
 8006766:	e001      	b.n	800676c <__mcmp+0x1c>
 8006768:	429d      	cmp	r5, r3
 800676a:	d207      	bcs.n	800677c <__mcmp+0x2c>
 800676c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 8006770:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 8006774:	4294      	cmp	r4, r2
 8006776:	d0f7      	beq.n	8006768 <__mcmp+0x18>
 8006778:	d302      	bcc.n	8006780 <__mcmp+0x30>
 800677a:	2001      	movs	r0, #1
 800677c:	bc30      	pop	{r4, r5}
 800677e:	4770      	bx	lr
 8006780:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006784:	e7fa      	b.n	800677c <__mcmp+0x2c>
 8006786:	bf00      	nop

08006788 <__mdiff>:
 8006788:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800678c:	6913      	ldr	r3, [r2, #16]
 800678e:	690d      	ldr	r5, [r1, #16]
 8006790:	1aed      	subs	r5, r5, r3
 8006792:	2d00      	cmp	r5, #0
 8006794:	460e      	mov	r6, r1
 8006796:	4690      	mov	r8, r2
 8006798:	f101 0414 	add.w	r4, r1, #20
 800679c:	f102 0714 	add.w	r7, r2, #20
 80067a0:	d114      	bne.n	80067cc <__mdiff+0x44>
 80067a2:	009b      	lsls	r3, r3, #2
 80067a4:	18e2      	adds	r2, r4, r3
 80067a6:	443b      	add	r3, r7
 80067a8:	e001      	b.n	80067ae <__mdiff+0x26>
 80067aa:	42a2      	cmp	r2, r4
 80067ac:	d959      	bls.n	8006862 <__mdiff+0xda>
 80067ae:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 80067b2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 80067b6:	458c      	cmp	ip, r1
 80067b8:	d0f7      	beq.n	80067aa <__mdiff+0x22>
 80067ba:	d209      	bcs.n	80067d0 <__mdiff+0x48>
 80067bc:	4622      	mov	r2, r4
 80067be:	4633      	mov	r3, r6
 80067c0:	463c      	mov	r4, r7
 80067c2:	4646      	mov	r6, r8
 80067c4:	4617      	mov	r7, r2
 80067c6:	4698      	mov	r8, r3
 80067c8:	2501      	movs	r5, #1
 80067ca:	e001      	b.n	80067d0 <__mdiff+0x48>
 80067cc:	dbf6      	blt.n	80067bc <__mdiff+0x34>
 80067ce:	2500      	movs	r5, #0
 80067d0:	6871      	ldr	r1, [r6, #4]
 80067d2:	f7ff fda7 	bl	8006324 <_Balloc>
 80067d6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 80067da:	6936      	ldr	r6, [r6, #16]
 80067dc:	60c5      	str	r5, [r0, #12]
 80067de:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 80067e2:	46bc      	mov	ip, r7
 80067e4:	f100 0514 	add.w	r5, r0, #20
 80067e8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 80067ec:	2300      	movs	r3, #0
 80067ee:	f85c 1b04 	ldr.w	r1, [ip], #4
 80067f2:	f854 8b04 	ldr.w	r8, [r4], #4
 80067f6:	b28a      	uxth	r2, r1
 80067f8:	fa13 f388 	uxtah	r3, r3, r8
 80067fc:	0c09      	lsrs	r1, r1, #16
 80067fe:	1a9a      	subs	r2, r3, r2
 8006800:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8006804:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8006808:	b292      	uxth	r2, r2
 800680a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800680e:	45e6      	cmp	lr, ip
 8006810:	f845 2b04 	str.w	r2, [r5], #4
 8006814:	ea4f 4323 	mov.w	r3, r3, asr #16
 8006818:	d8e9      	bhi.n	80067ee <__mdiff+0x66>
 800681a:	42a7      	cmp	r7, r4
 800681c:	d917      	bls.n	800684e <__mdiff+0xc6>
 800681e:	46ae      	mov	lr, r5
 8006820:	46a4      	mov	ip, r4
 8006822:	f85c 2b04 	ldr.w	r2, [ip], #4
 8006826:	fa13 f382 	uxtah	r3, r3, r2
 800682a:	1419      	asrs	r1, r3, #16
 800682c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 8006830:	b29b      	uxth	r3, r3
 8006832:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 8006836:	4567      	cmp	r7, ip
 8006838:	f84e 2b04 	str.w	r2, [lr], #4
 800683c:	ea4f 4321 	mov.w	r3, r1, asr #16
 8006840:	d8ef      	bhi.n	8006822 <__mdiff+0x9a>
 8006842:	43e4      	mvns	r4, r4
 8006844:	4427      	add	r7, r4
 8006846:	f027 0703 	bic.w	r7, r7, #3
 800684a:	3704      	adds	r7, #4
 800684c:	443d      	add	r5, r7
 800684e:	3d04      	subs	r5, #4
 8006850:	b922      	cbnz	r2, 800685c <__mdiff+0xd4>
 8006852:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 8006856:	3e01      	subs	r6, #1
 8006858:	2b00      	cmp	r3, #0
 800685a:	d0fa      	beq.n	8006852 <__mdiff+0xca>
 800685c:	6106      	str	r6, [r0, #16]
 800685e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8006862:	2100      	movs	r1, #0
 8006864:	f7ff fd5e 	bl	8006324 <_Balloc>
 8006868:	2201      	movs	r2, #1
 800686a:	2300      	movs	r3, #0
 800686c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 8006870:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006874 <__d2b>:
 8006874:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 8006878:	460f      	mov	r7, r1
 800687a:	b083      	sub	sp, #12
 800687c:	2101      	movs	r1, #1
 800687e:	ec55 4b10 	vmov	r4, r5, d0
 8006882:	4616      	mov	r6, r2
 8006884:	f7ff fd4e 	bl	8006324 <_Balloc>
 8006888:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800688c:	4681      	mov	r9, r0
 800688e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8006892:	f1b8 0f00 	cmp.w	r8, #0
 8006896:	d001      	beq.n	800689c <__d2b+0x28>
 8006898:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800689c:	2c00      	cmp	r4, #0
 800689e:	9301      	str	r3, [sp, #4]
 80068a0:	d024      	beq.n	80068ec <__d2b+0x78>
 80068a2:	a802      	add	r0, sp, #8
 80068a4:	f840 4d08 	str.w	r4, [r0, #-8]!
 80068a8:	f7ff fdcc 	bl	8006444 <__lo0bits>
 80068ac:	2800      	cmp	r0, #0
 80068ae:	d136      	bne.n	800691e <__d2b+0xaa>
 80068b0:	e9dd 2300 	ldrd	r2, r3, [sp]
 80068b4:	f8c9 2014 	str.w	r2, [r9, #20]
 80068b8:	2b00      	cmp	r3, #0
 80068ba:	bf0c      	ite	eq
 80068bc:	2101      	moveq	r1, #1
 80068be:	2102      	movne	r1, #2
 80068c0:	f8c9 3018 	str.w	r3, [r9, #24]
 80068c4:	f8c9 1010 	str.w	r1, [r9, #16]
 80068c8:	f1b8 0f00 	cmp.w	r8, #0
 80068cc:	d11b      	bne.n	8006906 <__d2b+0x92>
 80068ce:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 80068d2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 80068d6:	6038      	str	r0, [r7, #0]
 80068d8:	6918      	ldr	r0, [r3, #16]
 80068da:	f7ff fd93 	bl	8006404 <__hi0bits>
 80068de:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 80068e2:	6030      	str	r0, [r6, #0]
 80068e4:	4648      	mov	r0, r9
 80068e6:	b003      	add	sp, #12
 80068e8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 80068ec:	a801      	add	r0, sp, #4
 80068ee:	f7ff fda9 	bl	8006444 <__lo0bits>
 80068f2:	9b01      	ldr	r3, [sp, #4]
 80068f4:	f8c9 3014 	str.w	r3, [r9, #20]
 80068f8:	2101      	movs	r1, #1
 80068fa:	3020      	adds	r0, #32
 80068fc:	f8c9 1010 	str.w	r1, [r9, #16]
 8006900:	f1b8 0f00 	cmp.w	r8, #0
 8006904:	d0e3      	beq.n	80068ce <__d2b+0x5a>
 8006906:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800690a:	eb08 0300 	add.w	r3, r8, r0
 800690e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8006912:	603b      	str	r3, [r7, #0]
 8006914:	6030      	str	r0, [r6, #0]
 8006916:	4648      	mov	r0, r9
 8006918:	b003      	add	sp, #12
 800691a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800691e:	e9dd 1300 	ldrd	r1, r3, [sp]
 8006922:	f1c0 0220 	rsb	r2, r0, #32
 8006926:	fa03 f202 	lsl.w	r2, r3, r2
 800692a:	430a      	orrs	r2, r1
 800692c:	40c3      	lsrs	r3, r0
 800692e:	9301      	str	r3, [sp, #4]
 8006930:	f8c9 2014 	str.w	r2, [r9, #20]
 8006934:	e7c0      	b.n	80068b8 <__d2b+0x44>
 8006936:	bf00      	nop

08006938 <_realloc_r>:
 8006938:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800693c:	4692      	mov	sl, r2
 800693e:	b083      	sub	sp, #12
 8006940:	2900      	cmp	r1, #0
 8006942:	f000 80a1 	beq.w	8006a88 <_realloc_r+0x150>
 8006946:	460d      	mov	r5, r1
 8006948:	4680      	mov	r8, r0
 800694a:	f10a 040b 	add.w	r4, sl, #11
 800694e:	f7ff fcdd 	bl	800630c <__malloc_lock>
 8006952:	f855 2c04 	ldr.w	r2, [r5, #-4]
 8006956:	2c16      	cmp	r4, #22
 8006958:	f022 0603 	bic.w	r6, r2, #3
 800695c:	f1a5 0708 	sub.w	r7, r5, #8
 8006960:	d83e      	bhi.n	80069e0 <_realloc_r+0xa8>
 8006962:	2410      	movs	r4, #16
 8006964:	4621      	mov	r1, r4
 8006966:	45a2      	cmp	sl, r4
 8006968:	d83f      	bhi.n	80069ea <_realloc_r+0xb2>
 800696a:	428e      	cmp	r6, r1
 800696c:	eb07 0906 	add.w	r9, r7, r6
 8006970:	da74      	bge.n	8006a5c <_realloc_r+0x124>
 8006972:	4bc7      	ldr	r3, [pc, #796]	; (8006c90 <_realloc_r+0x358>)
 8006974:	6898      	ldr	r0, [r3, #8]
 8006976:	4548      	cmp	r0, r9
 8006978:	f000 80aa 	beq.w	8006ad0 <_realloc_r+0x198>
 800697c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8006980:	f020 0301 	bic.w	r3, r0, #1
 8006984:	444b      	add	r3, r9
 8006986:	685b      	ldr	r3, [r3, #4]
 8006988:	07db      	lsls	r3, r3, #31
 800698a:	f140 8083 	bpl.w	8006a94 <_realloc_r+0x15c>
 800698e:	07d2      	lsls	r2, r2, #31
 8006990:	d534      	bpl.n	80069fc <_realloc_r+0xc4>
 8006992:	4651      	mov	r1, sl
 8006994:	4640      	mov	r0, r8
 8006996:	f7ff f9b1 	bl	8005cfc <_malloc_r>
 800699a:	4682      	mov	sl, r0
 800699c:	b1e0      	cbz	r0, 80069d8 <_realloc_r+0xa0>
 800699e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 80069a2:	f023 0301 	bic.w	r3, r3, #1
 80069a6:	443b      	add	r3, r7
 80069a8:	f1a0 0208 	sub.w	r2, r0, #8
 80069ac:	4293      	cmp	r3, r2
 80069ae:	f000 80f9 	beq.w	8006ba4 <_realloc_r+0x26c>
 80069b2:	1f32      	subs	r2, r6, #4
 80069b4:	2a24      	cmp	r2, #36	; 0x24
 80069b6:	f200 8107 	bhi.w	8006bc8 <_realloc_r+0x290>
 80069ba:	2a13      	cmp	r2, #19
 80069bc:	6829      	ldr	r1, [r5, #0]
 80069be:	f200 80e6 	bhi.w	8006b8e <_realloc_r+0x256>
 80069c2:	4603      	mov	r3, r0
 80069c4:	462a      	mov	r2, r5
 80069c6:	6019      	str	r1, [r3, #0]
 80069c8:	6851      	ldr	r1, [r2, #4]
 80069ca:	6059      	str	r1, [r3, #4]
 80069cc:	6892      	ldr	r2, [r2, #8]
 80069ce:	609a      	str	r2, [r3, #8]
 80069d0:	4629      	mov	r1, r5
 80069d2:	4640      	mov	r0, r8
 80069d4:	f7fe fe68 	bl	80056a8 <_free_r>
 80069d8:	4640      	mov	r0, r8
 80069da:	f7ff fc9d 	bl	8006318 <__malloc_unlock>
 80069de:	e04f      	b.n	8006a80 <_realloc_r+0x148>
 80069e0:	f024 0407 	bic.w	r4, r4, #7
 80069e4:	2c00      	cmp	r4, #0
 80069e6:	4621      	mov	r1, r4
 80069e8:	dabd      	bge.n	8006966 <_realloc_r+0x2e>
 80069ea:	f04f 0a00 	mov.w	sl, #0
 80069ee:	230c      	movs	r3, #12
 80069f0:	4650      	mov	r0, sl
 80069f2:	f8c8 3000 	str.w	r3, [r8]
 80069f6:	b003      	add	sp, #12
 80069f8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80069fc:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006a00:	eba7 0b03 	sub.w	fp, r7, r3
 8006a04:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006a08:	f022 0203 	bic.w	r2, r2, #3
 8006a0c:	18b3      	adds	r3, r6, r2
 8006a0e:	428b      	cmp	r3, r1
 8006a10:	dbbf      	blt.n	8006992 <_realloc_r+0x5a>
 8006a12:	46da      	mov	sl, fp
 8006a14:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006a18:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006a1c:	1f32      	subs	r2, r6, #4
 8006a1e:	2a24      	cmp	r2, #36	; 0x24
 8006a20:	60c1      	str	r1, [r0, #12]
 8006a22:	eb0b 0903 	add.w	r9, fp, r3
 8006a26:	6088      	str	r0, [r1, #8]
 8006a28:	f200 80c6 	bhi.w	8006bb8 <_realloc_r+0x280>
 8006a2c:	2a13      	cmp	r2, #19
 8006a2e:	6829      	ldr	r1, [r5, #0]
 8006a30:	f240 80c0 	bls.w	8006bb4 <_realloc_r+0x27c>
 8006a34:	f8cb 1008 	str.w	r1, [fp, #8]
 8006a38:	6869      	ldr	r1, [r5, #4]
 8006a3a:	f8cb 100c 	str.w	r1, [fp, #12]
 8006a3e:	2a1b      	cmp	r2, #27
 8006a40:	68a9      	ldr	r1, [r5, #8]
 8006a42:	f200 80d8 	bhi.w	8006bf6 <_realloc_r+0x2be>
 8006a46:	f10b 0210 	add.w	r2, fp, #16
 8006a4a:	3508      	adds	r5, #8
 8006a4c:	6011      	str	r1, [r2, #0]
 8006a4e:	6869      	ldr	r1, [r5, #4]
 8006a50:	6051      	str	r1, [r2, #4]
 8006a52:	68a9      	ldr	r1, [r5, #8]
 8006a54:	6091      	str	r1, [r2, #8]
 8006a56:	461e      	mov	r6, r3
 8006a58:	465f      	mov	r7, fp
 8006a5a:	4655      	mov	r5, sl
 8006a5c:	687b      	ldr	r3, [r7, #4]
 8006a5e:	1b32      	subs	r2, r6, r4
 8006a60:	2a0f      	cmp	r2, #15
 8006a62:	f003 0301 	and.w	r3, r3, #1
 8006a66:	d822      	bhi.n	8006aae <_realloc_r+0x176>
 8006a68:	4333      	orrs	r3, r6
 8006a6a:	607b      	str	r3, [r7, #4]
 8006a6c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006a70:	f043 0301 	orr.w	r3, r3, #1
 8006a74:	f8c9 3004 	str.w	r3, [r9, #4]
 8006a78:	4640      	mov	r0, r8
 8006a7a:	f7ff fc4d 	bl	8006318 <__malloc_unlock>
 8006a7e:	46aa      	mov	sl, r5
 8006a80:	4650      	mov	r0, sl
 8006a82:	b003      	add	sp, #12
 8006a84:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006a88:	4611      	mov	r1, r2
 8006a8a:	b003      	add	sp, #12
 8006a8c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006a90:	f7ff b934 	b.w	8005cfc <_malloc_r>
 8006a94:	f020 0003 	bic.w	r0, r0, #3
 8006a98:	1833      	adds	r3, r6, r0
 8006a9a:	428b      	cmp	r3, r1
 8006a9c:	db61      	blt.n	8006b62 <_realloc_r+0x22a>
 8006a9e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006aa2:	461e      	mov	r6, r3
 8006aa4:	60ca      	str	r2, [r1, #12]
 8006aa6:	eb07 0903 	add.w	r9, r7, r3
 8006aaa:	6091      	str	r1, [r2, #8]
 8006aac:	e7d6      	b.n	8006a5c <_realloc_r+0x124>
 8006aae:	1939      	adds	r1, r7, r4
 8006ab0:	4323      	orrs	r3, r4
 8006ab2:	f042 0201 	orr.w	r2, r2, #1
 8006ab6:	607b      	str	r3, [r7, #4]
 8006ab8:	604a      	str	r2, [r1, #4]
 8006aba:	f8d9 3004 	ldr.w	r3, [r9, #4]
 8006abe:	f043 0301 	orr.w	r3, r3, #1
 8006ac2:	3108      	adds	r1, #8
 8006ac4:	f8c9 3004 	str.w	r3, [r9, #4]
 8006ac8:	4640      	mov	r0, r8
 8006aca:	f7fe fded 	bl	80056a8 <_free_r>
 8006ace:	e7d3      	b.n	8006a78 <_realloc_r+0x140>
 8006ad0:	6840      	ldr	r0, [r0, #4]
 8006ad2:	f020 0903 	bic.w	r9, r0, #3
 8006ad6:	44b1      	add	r9, r6
 8006ad8:	f104 0010 	add.w	r0, r4, #16
 8006adc:	4581      	cmp	r9, r0
 8006ade:	da77      	bge.n	8006bd0 <_realloc_r+0x298>
 8006ae0:	07d2      	lsls	r2, r2, #31
 8006ae2:	f53f af56 	bmi.w	8006992 <_realloc_r+0x5a>
 8006ae6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 8006aea:	eba7 0b02 	sub.w	fp, r7, r2
 8006aee:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006af2:	f022 0203 	bic.w	r2, r2, #3
 8006af6:	4491      	add	r9, r2
 8006af8:	4548      	cmp	r0, r9
 8006afa:	dc87      	bgt.n	8006a0c <_realloc_r+0xd4>
 8006afc:	46da      	mov	sl, fp
 8006afe:	f8db 100c 	ldr.w	r1, [fp, #12]
 8006b02:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8006b06:	1f32      	subs	r2, r6, #4
 8006b08:	2a24      	cmp	r2, #36	; 0x24
 8006b0a:	60c1      	str	r1, [r0, #12]
 8006b0c:	6088      	str	r0, [r1, #8]
 8006b0e:	f200 80a1 	bhi.w	8006c54 <_realloc_r+0x31c>
 8006b12:	2a13      	cmp	r2, #19
 8006b14:	6829      	ldr	r1, [r5, #0]
 8006b16:	f240 809b 	bls.w	8006c50 <_realloc_r+0x318>
 8006b1a:	f8cb 1008 	str.w	r1, [fp, #8]
 8006b1e:	6869      	ldr	r1, [r5, #4]
 8006b20:	f8cb 100c 	str.w	r1, [fp, #12]
 8006b24:	2a1b      	cmp	r2, #27
 8006b26:	68a9      	ldr	r1, [r5, #8]
 8006b28:	f200 809b 	bhi.w	8006c62 <_realloc_r+0x32a>
 8006b2c:	f10b 0210 	add.w	r2, fp, #16
 8006b30:	3508      	adds	r5, #8
 8006b32:	6011      	str	r1, [r2, #0]
 8006b34:	6869      	ldr	r1, [r5, #4]
 8006b36:	6051      	str	r1, [r2, #4]
 8006b38:	68a9      	ldr	r1, [r5, #8]
 8006b3a:	6091      	str	r1, [r2, #8]
 8006b3c:	eb0b 0104 	add.w	r1, fp, r4
 8006b40:	eba9 0204 	sub.w	r2, r9, r4
 8006b44:	f042 0201 	orr.w	r2, r2, #1
 8006b48:	6099      	str	r1, [r3, #8]
 8006b4a:	604a      	str	r2, [r1, #4]
 8006b4c:	f8db 3004 	ldr.w	r3, [fp, #4]
 8006b50:	f003 0301 	and.w	r3, r3, #1
 8006b54:	431c      	orrs	r4, r3
 8006b56:	4640      	mov	r0, r8
 8006b58:	f8cb 4004 	str.w	r4, [fp, #4]
 8006b5c:	f7ff fbdc 	bl	8006318 <__malloc_unlock>
 8006b60:	e78e      	b.n	8006a80 <_realloc_r+0x148>
 8006b62:	07d3      	lsls	r3, r2, #31
 8006b64:	f53f af15 	bmi.w	8006992 <_realloc_r+0x5a>
 8006b68:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8006b6c:	eba7 0b03 	sub.w	fp, r7, r3
 8006b70:	f8db 2004 	ldr.w	r2, [fp, #4]
 8006b74:	f022 0203 	bic.w	r2, r2, #3
 8006b78:	4410      	add	r0, r2
 8006b7a:	1983      	adds	r3, r0, r6
 8006b7c:	428b      	cmp	r3, r1
 8006b7e:	f6ff af45 	blt.w	8006a0c <_realloc_r+0xd4>
 8006b82:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8006b86:	46da      	mov	sl, fp
 8006b88:	60ca      	str	r2, [r1, #12]
 8006b8a:	6091      	str	r1, [r2, #8]
 8006b8c:	e742      	b.n	8006a14 <_realloc_r+0xdc>
 8006b8e:	6001      	str	r1, [r0, #0]
 8006b90:	686b      	ldr	r3, [r5, #4]
 8006b92:	6043      	str	r3, [r0, #4]
 8006b94:	2a1b      	cmp	r2, #27
 8006b96:	d83a      	bhi.n	8006c0e <_realloc_r+0x2d6>
 8006b98:	f105 0208 	add.w	r2, r5, #8
 8006b9c:	f100 0308 	add.w	r3, r0, #8
 8006ba0:	68a9      	ldr	r1, [r5, #8]
 8006ba2:	e710      	b.n	80069c6 <_realloc_r+0x8e>
 8006ba4:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8006ba8:	f023 0303 	bic.w	r3, r3, #3
 8006bac:	441e      	add	r6, r3
 8006bae:	eb07 0906 	add.w	r9, r7, r6
 8006bb2:	e753      	b.n	8006a5c <_realloc_r+0x124>
 8006bb4:	4652      	mov	r2, sl
 8006bb6:	e749      	b.n	8006a4c <_realloc_r+0x114>
 8006bb8:	4629      	mov	r1, r5
 8006bba:	4650      	mov	r0, sl
 8006bbc:	461e      	mov	r6, r3
 8006bbe:	465f      	mov	r7, fp
 8006bc0:	f7ff fb40 	bl	8006244 <memmove>
 8006bc4:	4655      	mov	r5, sl
 8006bc6:	e749      	b.n	8006a5c <_realloc_r+0x124>
 8006bc8:	4629      	mov	r1, r5
 8006bca:	f7ff fb3b 	bl	8006244 <memmove>
 8006bce:	e6ff      	b.n	80069d0 <_realloc_r+0x98>
 8006bd0:	4427      	add	r7, r4
 8006bd2:	eba9 0904 	sub.w	r9, r9, r4
 8006bd6:	f049 0201 	orr.w	r2, r9, #1
 8006bda:	609f      	str	r7, [r3, #8]
 8006bdc:	607a      	str	r2, [r7, #4]
 8006bde:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8006be2:	f003 0301 	and.w	r3, r3, #1
 8006be6:	431c      	orrs	r4, r3
 8006be8:	4640      	mov	r0, r8
 8006bea:	f845 4c04 	str.w	r4, [r5, #-4]
 8006bee:	f7ff fb93 	bl	8006318 <__malloc_unlock>
 8006bf2:	46aa      	mov	sl, r5
 8006bf4:	e744      	b.n	8006a80 <_realloc_r+0x148>
 8006bf6:	f8cb 1010 	str.w	r1, [fp, #16]
 8006bfa:	68e9      	ldr	r1, [r5, #12]
 8006bfc:	f8cb 1014 	str.w	r1, [fp, #20]
 8006c00:	2a24      	cmp	r2, #36	; 0x24
 8006c02:	d010      	beq.n	8006c26 <_realloc_r+0x2ee>
 8006c04:	6929      	ldr	r1, [r5, #16]
 8006c06:	f10b 0218 	add.w	r2, fp, #24
 8006c0a:	3510      	adds	r5, #16
 8006c0c:	e71e      	b.n	8006a4c <_realloc_r+0x114>
 8006c0e:	68ab      	ldr	r3, [r5, #8]
 8006c10:	6083      	str	r3, [r0, #8]
 8006c12:	68eb      	ldr	r3, [r5, #12]
 8006c14:	60c3      	str	r3, [r0, #12]
 8006c16:	2a24      	cmp	r2, #36	; 0x24
 8006c18:	d010      	beq.n	8006c3c <_realloc_r+0x304>
 8006c1a:	f105 0210 	add.w	r2, r5, #16
 8006c1e:	f100 0310 	add.w	r3, r0, #16
 8006c22:	6929      	ldr	r1, [r5, #16]
 8006c24:	e6cf      	b.n	80069c6 <_realloc_r+0x8e>
 8006c26:	692a      	ldr	r2, [r5, #16]
 8006c28:	f8cb 2018 	str.w	r2, [fp, #24]
 8006c2c:	696a      	ldr	r2, [r5, #20]
 8006c2e:	f8cb 201c 	str.w	r2, [fp, #28]
 8006c32:	69a9      	ldr	r1, [r5, #24]
 8006c34:	f10b 0220 	add.w	r2, fp, #32
 8006c38:	3518      	adds	r5, #24
 8006c3a:	e707      	b.n	8006a4c <_realloc_r+0x114>
 8006c3c:	692b      	ldr	r3, [r5, #16]
 8006c3e:	6103      	str	r3, [r0, #16]
 8006c40:	696b      	ldr	r3, [r5, #20]
 8006c42:	6143      	str	r3, [r0, #20]
 8006c44:	69a9      	ldr	r1, [r5, #24]
 8006c46:	f105 0218 	add.w	r2, r5, #24
 8006c4a:	f100 0318 	add.w	r3, r0, #24
 8006c4e:	e6ba      	b.n	80069c6 <_realloc_r+0x8e>
 8006c50:	4652      	mov	r2, sl
 8006c52:	e76e      	b.n	8006b32 <_realloc_r+0x1fa>
 8006c54:	4629      	mov	r1, r5
 8006c56:	4650      	mov	r0, sl
 8006c58:	9301      	str	r3, [sp, #4]
 8006c5a:	f7ff faf3 	bl	8006244 <memmove>
 8006c5e:	9b01      	ldr	r3, [sp, #4]
 8006c60:	e76c      	b.n	8006b3c <_realloc_r+0x204>
 8006c62:	f8cb 1010 	str.w	r1, [fp, #16]
 8006c66:	68e9      	ldr	r1, [r5, #12]
 8006c68:	f8cb 1014 	str.w	r1, [fp, #20]
 8006c6c:	2a24      	cmp	r2, #36	; 0x24
 8006c6e:	d004      	beq.n	8006c7a <_realloc_r+0x342>
 8006c70:	6929      	ldr	r1, [r5, #16]
 8006c72:	f10b 0218 	add.w	r2, fp, #24
 8006c76:	3510      	adds	r5, #16
 8006c78:	e75b      	b.n	8006b32 <_realloc_r+0x1fa>
 8006c7a:	692a      	ldr	r2, [r5, #16]
 8006c7c:	f8cb 2018 	str.w	r2, [fp, #24]
 8006c80:	696a      	ldr	r2, [r5, #20]
 8006c82:	f8cb 201c 	str.w	r2, [fp, #28]
 8006c86:	69a9      	ldr	r1, [r5, #24]
 8006c88:	f10b 0220 	add.w	r2, fp, #32
 8006c8c:	3518      	adds	r5, #24
 8006c8e:	e750      	b.n	8006b32 <_realloc_r+0x1fa>
 8006c90:	2000044c 	.word	0x2000044c

08006c94 <frexp>:
 8006c94:	ec53 2b10 	vmov	r2, r3, d0
 8006c98:	b570      	push	{r4, r5, r6, lr}
 8006c9a:	4e16      	ldr	r6, [pc, #88]	; (8006cf4 <frexp+0x60>)
 8006c9c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8006ca0:	2500      	movs	r5, #0
 8006ca2:	42b1      	cmp	r1, r6
 8006ca4:	4604      	mov	r4, r0
 8006ca6:	6005      	str	r5, [r0, #0]
 8006ca8:	dc21      	bgt.n	8006cee <frexp+0x5a>
 8006caa:	ee10 6a10 	vmov	r6, s0
 8006cae:	430e      	orrs	r6, r1
 8006cb0:	d01d      	beq.n	8006cee <frexp+0x5a>
 8006cb2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8006cb6:	4618      	mov	r0, r3
 8006cb8:	da0c      	bge.n	8006cd4 <frexp+0x40>
 8006cba:	4619      	mov	r1, r3
 8006cbc:	2200      	movs	r2, #0
 8006cbe:	ee10 0a10 	vmov	r0, s0
 8006cc2:	4b0d      	ldr	r3, [pc, #52]	; (8006cf8 <frexp+0x64>)
 8006cc4:	f7f9 ff38 	bl	8000b38 <__aeabi_dmul>
 8006cc8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8006ccc:	4602      	mov	r2, r0
 8006cce:	4608      	mov	r0, r1
 8006cd0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8006cd4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8006cd8:	1509      	asrs	r1, r1, #20
 8006cda:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8006cde:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8006ce2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8006ce6:	4429      	add	r1, r5
 8006ce8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8006cec:	6021      	str	r1, [r4, #0]
 8006cee:	ec43 2b10 	vmov	d0, r2, r3
 8006cf2:	bd70      	pop	{r4, r5, r6, pc}
 8006cf4:	7fefffff 	.word	0x7fefffff
 8006cf8:	43500000 	.word	0x43500000

08006cfc <_sbrk_r>:
 8006cfc:	b538      	push	{r3, r4, r5, lr}
 8006cfe:	4c07      	ldr	r4, [pc, #28]	; (8006d1c <_sbrk_r+0x20>)
 8006d00:	2300      	movs	r3, #0
 8006d02:	4605      	mov	r5, r0
 8006d04:	4608      	mov	r0, r1
 8006d06:	6023      	str	r3, [r4, #0]
 8006d08:	f7fb fc35 	bl	8002576 <_sbrk>
 8006d0c:	1c43      	adds	r3, r0, #1
 8006d0e:	d000      	beq.n	8006d12 <_sbrk_r+0x16>
 8006d10:	bd38      	pop	{r3, r4, r5, pc}
 8006d12:	6823      	ldr	r3, [r4, #0]
 8006d14:	2b00      	cmp	r3, #0
 8006d16:	d0fb      	beq.n	8006d10 <_sbrk_r+0x14>
 8006d18:	602b      	str	r3, [r5, #0]
 8006d1a:	bd38      	pop	{r3, r4, r5, pc}
 8006d1c:	20000b3c 	.word	0x20000b3c

08006d20 <__sread>:
 8006d20:	b510      	push	{r4, lr}
 8006d22:	460c      	mov	r4, r1
 8006d24:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d28:	f000 fabc 	bl	80072a4 <_read_r>
 8006d2c:	2800      	cmp	r0, #0
 8006d2e:	db03      	blt.n	8006d38 <__sread+0x18>
 8006d30:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8006d32:	4403      	add	r3, r0
 8006d34:	6523      	str	r3, [r4, #80]	; 0x50
 8006d36:	bd10      	pop	{r4, pc}
 8006d38:	89a3      	ldrh	r3, [r4, #12]
 8006d3a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8006d3e:	81a3      	strh	r3, [r4, #12]
 8006d40:	bd10      	pop	{r4, pc}
 8006d42:	bf00      	nop

08006d44 <__swrite>:
 8006d44:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006d48:	4616      	mov	r6, r2
 8006d4a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8006d4e:	461f      	mov	r7, r3
 8006d50:	05d3      	lsls	r3, r2, #23
 8006d52:	460c      	mov	r4, r1
 8006d54:	4605      	mov	r5, r0
 8006d56:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d5a:	d507      	bpl.n	8006d6c <__swrite+0x28>
 8006d5c:	2200      	movs	r2, #0
 8006d5e:	2302      	movs	r3, #2
 8006d60:	f000 fa74 	bl	800724c <_lseek_r>
 8006d64:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8006d68:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8006d6c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8006d70:	81a2      	strh	r2, [r4, #12]
 8006d72:	463b      	mov	r3, r7
 8006d74:	4632      	mov	r2, r6
 8006d76:	4628      	mov	r0, r5
 8006d78:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8006d7c:	f000 b88c 	b.w	8006e98 <_write_r>

08006d80 <__sseek>:
 8006d80:	b510      	push	{r4, lr}
 8006d82:	460c      	mov	r4, r1
 8006d84:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006d88:	f000 fa60 	bl	800724c <_lseek_r>
 8006d8c:	89a3      	ldrh	r3, [r4, #12]
 8006d8e:	1c42      	adds	r2, r0, #1
 8006d90:	bf0e      	itee	eq
 8006d92:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8006d96:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8006d9a:	6520      	strne	r0, [r4, #80]	; 0x50
 8006d9c:	81a3      	strh	r3, [r4, #12]
 8006d9e:	bd10      	pop	{r4, pc}

08006da0 <__sclose>:
 8006da0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8006da4:	f000 b922 	b.w	8006fec <_close_r>

08006da8 <strncpy>:
 8006da8:	ea40 0301 	orr.w	r3, r0, r1
 8006dac:	079b      	lsls	r3, r3, #30
 8006dae:	b470      	push	{r4, r5, r6}
 8006db0:	d12a      	bne.n	8006e08 <strncpy+0x60>
 8006db2:	2a03      	cmp	r2, #3
 8006db4:	d928      	bls.n	8006e08 <strncpy+0x60>
 8006db6:	460c      	mov	r4, r1
 8006db8:	4603      	mov	r3, r0
 8006dba:	4621      	mov	r1, r4
 8006dbc:	f854 6b04 	ldr.w	r6, [r4], #4
 8006dc0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8006dc4:	ea25 0506 	bic.w	r5, r5, r6
 8006dc8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8006dcc:	d106      	bne.n	8006ddc <strncpy+0x34>
 8006dce:	3a04      	subs	r2, #4
 8006dd0:	2a03      	cmp	r2, #3
 8006dd2:	f843 6b04 	str.w	r6, [r3], #4
 8006dd6:	4621      	mov	r1, r4
 8006dd8:	d8ef      	bhi.n	8006dba <strncpy+0x12>
 8006dda:	b19a      	cbz	r2, 8006e04 <strncpy+0x5c>
 8006ddc:	780c      	ldrb	r4, [r1, #0]
 8006dde:	701c      	strb	r4, [r3, #0]
 8006de0:	3a01      	subs	r2, #1
 8006de2:	3301      	adds	r3, #1
 8006de4:	b13c      	cbz	r4, 8006df6 <strncpy+0x4e>
 8006de6:	b16a      	cbz	r2, 8006e04 <strncpy+0x5c>
 8006de8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8006dec:	f803 4b01 	strb.w	r4, [r3], #1
 8006df0:	3a01      	subs	r2, #1
 8006df2:	2c00      	cmp	r4, #0
 8006df4:	d1f7      	bne.n	8006de6 <strncpy+0x3e>
 8006df6:	b12a      	cbz	r2, 8006e04 <strncpy+0x5c>
 8006df8:	441a      	add	r2, r3
 8006dfa:	2100      	movs	r1, #0
 8006dfc:	f803 1b01 	strb.w	r1, [r3], #1
 8006e00:	4293      	cmp	r3, r2
 8006e02:	d1fb      	bne.n	8006dfc <strncpy+0x54>
 8006e04:	bc70      	pop	{r4, r5, r6}
 8006e06:	4770      	bx	lr
 8006e08:	4603      	mov	r3, r0
 8006e0a:	e7e6      	b.n	8006dda <strncpy+0x32>

08006e0c <__sprint_r.part.0>:
 8006e0c:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006e10:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8006e12:	049c      	lsls	r4, r3, #18
 8006e14:	4692      	mov	sl, r2
 8006e16:	d52d      	bpl.n	8006e74 <__sprint_r.part.0+0x68>
 8006e18:	6893      	ldr	r3, [r2, #8]
 8006e1a:	6812      	ldr	r2, [r2, #0]
 8006e1c:	b343      	cbz	r3, 8006e70 <__sprint_r.part.0+0x64>
 8006e1e:	460e      	mov	r6, r1
 8006e20:	4607      	mov	r7, r0
 8006e22:	f102 0908 	add.w	r9, r2, #8
 8006e26:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8006e2a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8006e2e:	d015      	beq.n	8006e5c <__sprint_r.part.0+0x50>
 8006e30:	3d04      	subs	r5, #4
 8006e32:	2400      	movs	r4, #0
 8006e34:	e001      	b.n	8006e3a <__sprint_r.part.0+0x2e>
 8006e36:	45a0      	cmp	r8, r4
 8006e38:	d00e      	beq.n	8006e58 <__sprint_r.part.0+0x4c>
 8006e3a:	4632      	mov	r2, r6
 8006e3c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8006e40:	4638      	mov	r0, r7
 8006e42:	f000 f99d 	bl	8007180 <_fputwc_r>
 8006e46:	1c43      	adds	r3, r0, #1
 8006e48:	f104 0401 	add.w	r4, r4, #1
 8006e4c:	d1f3      	bne.n	8006e36 <__sprint_r.part.0+0x2a>
 8006e4e:	2300      	movs	r3, #0
 8006e50:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006e54:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e58:	f8da 3008 	ldr.w	r3, [sl, #8]
 8006e5c:	f02b 0b03 	bic.w	fp, fp, #3
 8006e60:	eba3 030b 	sub.w	r3, r3, fp
 8006e64:	f8ca 3008 	str.w	r3, [sl, #8]
 8006e68:	f109 0908 	add.w	r9, r9, #8
 8006e6c:	2b00      	cmp	r3, #0
 8006e6e:	d1da      	bne.n	8006e26 <__sprint_r.part.0+0x1a>
 8006e70:	2000      	movs	r0, #0
 8006e72:	e7ec      	b.n	8006e4e <__sprint_r.part.0+0x42>
 8006e74:	f7fe fd0c 	bl	8005890 <__sfvwrite_r>
 8006e78:	2300      	movs	r3, #0
 8006e7a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8006e7e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006e82:	bf00      	nop

08006e84 <__sprint_r>:
 8006e84:	6893      	ldr	r3, [r2, #8]
 8006e86:	b10b      	cbz	r3, 8006e8c <__sprint_r+0x8>
 8006e88:	f7ff bfc0 	b.w	8006e0c <__sprint_r.part.0>
 8006e8c:	b410      	push	{r4}
 8006e8e:	4618      	mov	r0, r3
 8006e90:	6053      	str	r3, [r2, #4]
 8006e92:	f85d 4b04 	ldr.w	r4, [sp], #4
 8006e96:	4770      	bx	lr

08006e98 <_write_r>:
 8006e98:	b570      	push	{r4, r5, r6, lr}
 8006e9a:	460d      	mov	r5, r1
 8006e9c:	4c08      	ldr	r4, [pc, #32]	; (8006ec0 <_write_r+0x28>)
 8006e9e:	4611      	mov	r1, r2
 8006ea0:	4606      	mov	r6, r0
 8006ea2:	461a      	mov	r2, r3
 8006ea4:	4628      	mov	r0, r5
 8006ea6:	2300      	movs	r3, #0
 8006ea8:	6023      	str	r3, [r4, #0]
 8006eaa:	f7fb fb51 	bl	8002550 <_write>
 8006eae:	1c43      	adds	r3, r0, #1
 8006eb0:	d000      	beq.n	8006eb4 <_write_r+0x1c>
 8006eb2:	bd70      	pop	{r4, r5, r6, pc}
 8006eb4:	6823      	ldr	r3, [r4, #0]
 8006eb6:	2b00      	cmp	r3, #0
 8006eb8:	d0fb      	beq.n	8006eb2 <_write_r+0x1a>
 8006eba:	6033      	str	r3, [r6, #0]
 8006ebc:	bd70      	pop	{r4, r5, r6, pc}
 8006ebe:	bf00      	nop
 8006ec0:	20000b3c 	.word	0x20000b3c

08006ec4 <__register_exitproc>:
 8006ec4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8006ec8:	4d2b      	ldr	r5, [pc, #172]	; (8006f78 <__register_exitproc+0xb4>)
 8006eca:	4606      	mov	r6, r0
 8006ecc:	6828      	ldr	r0, [r5, #0]
 8006ece:	4698      	mov	r8, r3
 8006ed0:	460f      	mov	r7, r1
 8006ed2:	4691      	mov	r9, r2
 8006ed4:	f7fe fe96 	bl	8005c04 <__retarget_lock_acquire_recursive>
 8006ed8:	4b28      	ldr	r3, [pc, #160]	; (8006f7c <__register_exitproc+0xb8>)
 8006eda:	681c      	ldr	r4, [r3, #0]
 8006edc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8006ee0:	2b00      	cmp	r3, #0
 8006ee2:	d03d      	beq.n	8006f60 <__register_exitproc+0x9c>
 8006ee4:	685a      	ldr	r2, [r3, #4]
 8006ee6:	2a1f      	cmp	r2, #31
 8006ee8:	dc0d      	bgt.n	8006f06 <__register_exitproc+0x42>
 8006eea:	f102 0c01 	add.w	ip, r2, #1
 8006eee:	bb16      	cbnz	r6, 8006f36 <__register_exitproc+0x72>
 8006ef0:	3202      	adds	r2, #2
 8006ef2:	f8c3 c004 	str.w	ip, [r3, #4]
 8006ef6:	6828      	ldr	r0, [r5, #0]
 8006ef8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8006efc:	f7fe fe84 	bl	8005c08 <__retarget_lock_release_recursive>
 8006f00:	2000      	movs	r0, #0
 8006f02:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8006f06:	4b1e      	ldr	r3, [pc, #120]	; (8006f80 <__register_exitproc+0xbc>)
 8006f08:	b37b      	cbz	r3, 8006f6a <__register_exitproc+0xa6>
 8006f0a:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8006f0e:	f3af 8000 	nop.w
 8006f12:	4603      	mov	r3, r0
 8006f14:	b348      	cbz	r0, 8006f6a <__register_exitproc+0xa6>
 8006f16:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8006f1a:	2100      	movs	r1, #0
 8006f1c:	e9c0 2100 	strd	r2, r1, [r0]
 8006f20:	f04f 0c01 	mov.w	ip, #1
 8006f24:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8006f28:	460a      	mov	r2, r1
 8006f2a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8006f2e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8006f32:	2e00      	cmp	r6, #0
 8006f34:	d0dc      	beq.n	8006ef0 <__register_exitproc+0x2c>
 8006f36:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8006f3a:	2401      	movs	r4, #1
 8006f3c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8006f40:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8006f44:	4094      	lsls	r4, r2
 8006f46:	4320      	orrs	r0, r4
 8006f48:	2e02      	cmp	r6, #2
 8006f4a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8006f4e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8006f52:	d1cd      	bne.n	8006ef0 <__register_exitproc+0x2c>
 8006f54:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8006f58:	430c      	orrs	r4, r1
 8006f5a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8006f5e:	e7c7      	b.n	8006ef0 <__register_exitproc+0x2c>
 8006f60:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8006f64:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8006f68:	e7bc      	b.n	8006ee4 <__register_exitproc+0x20>
 8006f6a:	6828      	ldr	r0, [r5, #0]
 8006f6c:	f7fe fe4c 	bl	8005c08 <__retarget_lock_release_recursive>
 8006f70:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006f74:	e7c5      	b.n	8006f02 <__register_exitproc+0x3e>
 8006f76:	bf00      	nop
 8006f78:	20000448 	.word	0x20000448
 8006f7c:	08007520 	.word	0x08007520
 8006f80:	00000000 	.word	0x00000000

08006f84 <_calloc_r>:
 8006f84:	b510      	push	{r4, lr}
 8006f86:	fb02 f101 	mul.w	r1, r2, r1
 8006f8a:	f7fe feb7 	bl	8005cfc <_malloc_r>
 8006f8e:	4604      	mov	r4, r0
 8006f90:	b1d8      	cbz	r0, 8006fca <_calloc_r+0x46>
 8006f92:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8006f96:	f022 0203 	bic.w	r2, r2, #3
 8006f9a:	3a04      	subs	r2, #4
 8006f9c:	2a24      	cmp	r2, #36	; 0x24
 8006f9e:	d81d      	bhi.n	8006fdc <_calloc_r+0x58>
 8006fa0:	2a13      	cmp	r2, #19
 8006fa2:	d914      	bls.n	8006fce <_calloc_r+0x4a>
 8006fa4:	2300      	movs	r3, #0
 8006fa6:	2a1b      	cmp	r2, #27
 8006fa8:	e9c0 3300 	strd	r3, r3, [r0]
 8006fac:	d91b      	bls.n	8006fe6 <_calloc_r+0x62>
 8006fae:	2a24      	cmp	r2, #36	; 0x24
 8006fb0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8006fb4:	bf0a      	itet	eq
 8006fb6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8006fba:	f100 0210 	addne.w	r2, r0, #16
 8006fbe:	f100 0218 	addeq.w	r2, r0, #24
 8006fc2:	2300      	movs	r3, #0
 8006fc4:	e9c2 3300 	strd	r3, r3, [r2]
 8006fc8:	6093      	str	r3, [r2, #8]
 8006fca:	4620      	mov	r0, r4
 8006fcc:	bd10      	pop	{r4, pc}
 8006fce:	4602      	mov	r2, r0
 8006fd0:	2300      	movs	r3, #0
 8006fd2:	e9c2 3300 	strd	r3, r3, [r2]
 8006fd6:	6093      	str	r3, [r2, #8]
 8006fd8:	4620      	mov	r0, r4
 8006fda:	bd10      	pop	{r4, pc}
 8006fdc:	2100      	movs	r1, #0
 8006fde:	f7fb fb6f 	bl	80026c0 <memset>
 8006fe2:	4620      	mov	r0, r4
 8006fe4:	bd10      	pop	{r4, pc}
 8006fe6:	f100 0208 	add.w	r2, r0, #8
 8006fea:	e7f1      	b.n	8006fd0 <_calloc_r+0x4c>

08006fec <_close_r>:
 8006fec:	b538      	push	{r3, r4, r5, lr}
 8006fee:	4c07      	ldr	r4, [pc, #28]	; (800700c <_close_r+0x20>)
 8006ff0:	2300      	movs	r3, #0
 8006ff2:	4605      	mov	r5, r0
 8006ff4:	4608      	mov	r0, r1
 8006ff6:	6023      	str	r3, [r4, #0]
 8006ff8:	f7fb fad9 	bl	80025ae <_close>
 8006ffc:	1c43      	adds	r3, r0, #1
 8006ffe:	d000      	beq.n	8007002 <_close_r+0x16>
 8007000:	bd38      	pop	{r3, r4, r5, pc}
 8007002:	6823      	ldr	r3, [r4, #0]
 8007004:	2b00      	cmp	r3, #0
 8007006:	d0fb      	beq.n	8007000 <_close_r+0x14>
 8007008:	602b      	str	r3, [r5, #0]
 800700a:	bd38      	pop	{r3, r4, r5, pc}
 800700c:	20000b3c 	.word	0x20000b3c

08007010 <_fclose_r>:
 8007010:	b570      	push	{r4, r5, r6, lr}
 8007012:	2900      	cmp	r1, #0
 8007014:	d048      	beq.n	80070a8 <_fclose_r+0x98>
 8007016:	4605      	mov	r5, r0
 8007018:	460c      	mov	r4, r1
 800701a:	b110      	cbz	r0, 8007022 <_fclose_r+0x12>
 800701c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800701e:	2b00      	cmp	r3, #0
 8007020:	d048      	beq.n	80070b4 <_fclose_r+0xa4>
 8007022:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8007024:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007028:	07d0      	lsls	r0, r2, #31
 800702a:	d440      	bmi.n	80070ae <_fclose_r+0x9e>
 800702c:	0599      	lsls	r1, r3, #22
 800702e:	d530      	bpl.n	8007092 <_fclose_r+0x82>
 8007030:	4621      	mov	r1, r4
 8007032:	4628      	mov	r0, r5
 8007034:	f7fe f990 	bl	8005358 <__sflush_r>
 8007038:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800703a:	4606      	mov	r6, r0
 800703c:	b133      	cbz	r3, 800704c <_fclose_r+0x3c>
 800703e:	69e1      	ldr	r1, [r4, #28]
 8007040:	4628      	mov	r0, r5
 8007042:	4798      	blx	r3
 8007044:	2800      	cmp	r0, #0
 8007046:	bfb8      	it	lt
 8007048:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800704c:	89a3      	ldrh	r3, [r4, #12]
 800704e:	061a      	lsls	r2, r3, #24
 8007050:	d43c      	bmi.n	80070cc <_fclose_r+0xbc>
 8007052:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8007054:	b141      	cbz	r1, 8007068 <_fclose_r+0x58>
 8007056:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800705a:	4299      	cmp	r1, r3
 800705c:	d002      	beq.n	8007064 <_fclose_r+0x54>
 800705e:	4628      	mov	r0, r5
 8007060:	f7fe fb22 	bl	80056a8 <_free_r>
 8007064:	2300      	movs	r3, #0
 8007066:	6323      	str	r3, [r4, #48]	; 0x30
 8007068:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800706a:	b121      	cbz	r1, 8007076 <_fclose_r+0x66>
 800706c:	4628      	mov	r0, r5
 800706e:	f7fe fb1b 	bl	80056a8 <_free_r>
 8007072:	2300      	movs	r3, #0
 8007074:	6463      	str	r3, [r4, #68]	; 0x44
 8007076:	f7fe faa1 	bl	80055bc <__sfp_lock_acquire>
 800707a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800707c:	2200      	movs	r2, #0
 800707e:	07db      	lsls	r3, r3, #31
 8007080:	81a2      	strh	r2, [r4, #12]
 8007082:	d51f      	bpl.n	80070c4 <_fclose_r+0xb4>
 8007084:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007086:	f7fe fdbb 	bl	8005c00 <__retarget_lock_close_recursive>
 800708a:	f7fe fa9d 	bl	80055c8 <__sfp_lock_release>
 800708e:	4630      	mov	r0, r6
 8007090:	bd70      	pop	{r4, r5, r6, pc}
 8007092:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8007094:	f7fe fdb6 	bl	8005c04 <__retarget_lock_acquire_recursive>
 8007098:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800709c:	2b00      	cmp	r3, #0
 800709e:	d1c7      	bne.n	8007030 <_fclose_r+0x20>
 80070a0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80070a2:	f016 0601 	ands.w	r6, r6, #1
 80070a6:	d016      	beq.n	80070d6 <_fclose_r+0xc6>
 80070a8:	2600      	movs	r6, #0
 80070aa:	4630      	mov	r0, r6
 80070ac:	bd70      	pop	{r4, r5, r6, pc}
 80070ae:	2b00      	cmp	r3, #0
 80070b0:	d0fa      	beq.n	80070a8 <_fclose_r+0x98>
 80070b2:	e7bd      	b.n	8007030 <_fclose_r+0x20>
 80070b4:	f7fe fa56 	bl	8005564 <__sinit>
 80070b8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 80070ba:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80070be:	07d0      	lsls	r0, r2, #31
 80070c0:	d4f5      	bmi.n	80070ae <_fclose_r+0x9e>
 80070c2:	e7b3      	b.n	800702c <_fclose_r+0x1c>
 80070c4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070c6:	f7fe fd9f 	bl	8005c08 <__retarget_lock_release_recursive>
 80070ca:	e7db      	b.n	8007084 <_fclose_r+0x74>
 80070cc:	6921      	ldr	r1, [r4, #16]
 80070ce:	4628      	mov	r0, r5
 80070d0:	f7fe faea 	bl	80056a8 <_free_r>
 80070d4:	e7bd      	b.n	8007052 <_fclose_r+0x42>
 80070d6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80070d8:	f7fe fd96 	bl	8005c08 <__retarget_lock_release_recursive>
 80070dc:	4630      	mov	r0, r6
 80070de:	bd70      	pop	{r4, r5, r6, pc}

080070e0 <__fputwc>:
 80070e0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 80070e4:	b082      	sub	sp, #8
 80070e6:	4681      	mov	r9, r0
 80070e8:	4688      	mov	r8, r1
 80070ea:	4614      	mov	r4, r2
 80070ec:	f000 f8a0 	bl	8007230 <__locale_mb_cur_max>
 80070f0:	2801      	cmp	r0, #1
 80070f2:	d103      	bne.n	80070fc <__fputwc+0x1c>
 80070f4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 80070f8:	2bfe      	cmp	r3, #254	; 0xfe
 80070fa:	d933      	bls.n	8007164 <__fputwc+0x84>
 80070fc:	4642      	mov	r2, r8
 80070fe:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8007102:	a901      	add	r1, sp, #4
 8007104:	4648      	mov	r0, r9
 8007106:	f000 f93b 	bl	8007380 <_wcrtomb_r>
 800710a:	1c42      	adds	r2, r0, #1
 800710c:	4606      	mov	r6, r0
 800710e:	d02f      	beq.n	8007170 <__fputwc+0x90>
 8007110:	b320      	cbz	r0, 800715c <__fputwc+0x7c>
 8007112:	f89d c004 	ldrb.w	ip, [sp, #4]
 8007116:	2500      	movs	r5, #0
 8007118:	f10d 0a04 	add.w	sl, sp, #4
 800711c:	e009      	b.n	8007132 <__fputwc+0x52>
 800711e:	6823      	ldr	r3, [r4, #0]
 8007120:	1c5a      	adds	r2, r3, #1
 8007122:	6022      	str	r2, [r4, #0]
 8007124:	f883 c000 	strb.w	ip, [r3]
 8007128:	3501      	adds	r5, #1
 800712a:	42b5      	cmp	r5, r6
 800712c:	d216      	bcs.n	800715c <__fputwc+0x7c>
 800712e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8007132:	68a3      	ldr	r3, [r4, #8]
 8007134:	3b01      	subs	r3, #1
 8007136:	2b00      	cmp	r3, #0
 8007138:	60a3      	str	r3, [r4, #8]
 800713a:	daf0      	bge.n	800711e <__fputwc+0x3e>
 800713c:	69a7      	ldr	r7, [r4, #24]
 800713e:	42bb      	cmp	r3, r7
 8007140:	4661      	mov	r1, ip
 8007142:	4622      	mov	r2, r4
 8007144:	4648      	mov	r0, r9
 8007146:	db02      	blt.n	800714e <__fputwc+0x6e>
 8007148:	f1bc 0f0a 	cmp.w	ip, #10
 800714c:	d1e7      	bne.n	800711e <__fputwc+0x3e>
 800714e:	f000 f8bf 	bl	80072d0 <__swbuf_r>
 8007152:	1c43      	adds	r3, r0, #1
 8007154:	d1e8      	bne.n	8007128 <__fputwc+0x48>
 8007156:	b002      	add	sp, #8
 8007158:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800715c:	4640      	mov	r0, r8
 800715e:	b002      	add	sp, #8
 8007160:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8007164:	fa5f fc88 	uxtb.w	ip, r8
 8007168:	4606      	mov	r6, r0
 800716a:	f88d c004 	strb.w	ip, [sp, #4]
 800716e:	e7d2      	b.n	8007116 <__fputwc+0x36>
 8007170:	89a3      	ldrh	r3, [r4, #12]
 8007172:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007176:	81a3      	strh	r3, [r4, #12]
 8007178:	b002      	add	sp, #8
 800717a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800717e:	bf00      	nop

08007180 <_fputwc_r>:
 8007180:	b530      	push	{r4, r5, lr}
 8007182:	4605      	mov	r5, r0
 8007184:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8007186:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800718a:	07c0      	lsls	r0, r0, #31
 800718c:	4614      	mov	r4, r2
 800718e:	b083      	sub	sp, #12
 8007190:	b29a      	uxth	r2, r3
 8007192:	d401      	bmi.n	8007198 <_fputwc_r+0x18>
 8007194:	0590      	lsls	r0, r2, #22
 8007196:	d51c      	bpl.n	80071d2 <_fputwc_r+0x52>
 8007198:	0490      	lsls	r0, r2, #18
 800719a:	d406      	bmi.n	80071aa <_fputwc_r+0x2a>
 800719c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800719e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 80071a2:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 80071a6:	81a3      	strh	r3, [r4, #12]
 80071a8:	6662      	str	r2, [r4, #100]	; 0x64
 80071aa:	4628      	mov	r0, r5
 80071ac:	4622      	mov	r2, r4
 80071ae:	f7ff ff97 	bl	80070e0 <__fputwc>
 80071b2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 80071b4:	07da      	lsls	r2, r3, #31
 80071b6:	4605      	mov	r5, r0
 80071b8:	d402      	bmi.n	80071c0 <_fputwc_r+0x40>
 80071ba:	89a3      	ldrh	r3, [r4, #12]
 80071bc:	059b      	lsls	r3, r3, #22
 80071be:	d502      	bpl.n	80071c6 <_fputwc_r+0x46>
 80071c0:	4628      	mov	r0, r5
 80071c2:	b003      	add	sp, #12
 80071c4:	bd30      	pop	{r4, r5, pc}
 80071c6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071c8:	f7fe fd1e 	bl	8005c08 <__retarget_lock_release_recursive>
 80071cc:	4628      	mov	r0, r5
 80071ce:	b003      	add	sp, #12
 80071d0:	bd30      	pop	{r4, r5, pc}
 80071d2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 80071d4:	9101      	str	r1, [sp, #4]
 80071d6:	f7fe fd15 	bl	8005c04 <__retarget_lock_acquire_recursive>
 80071da:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80071de:	9901      	ldr	r1, [sp, #4]
 80071e0:	b29a      	uxth	r2, r3
 80071e2:	e7d9      	b.n	8007198 <_fputwc_r+0x18>

080071e4 <_fstat_r>:
 80071e4:	b538      	push	{r3, r4, r5, lr}
 80071e6:	460b      	mov	r3, r1
 80071e8:	4c07      	ldr	r4, [pc, #28]	; (8007208 <_fstat_r+0x24>)
 80071ea:	4605      	mov	r5, r0
 80071ec:	4611      	mov	r1, r2
 80071ee:	4618      	mov	r0, r3
 80071f0:	2300      	movs	r3, #0
 80071f2:	6023      	str	r3, [r4, #0]
 80071f4:	f7fb f9de 	bl	80025b4 <_fstat>
 80071f8:	1c43      	adds	r3, r0, #1
 80071fa:	d000      	beq.n	80071fe <_fstat_r+0x1a>
 80071fc:	bd38      	pop	{r3, r4, r5, pc}
 80071fe:	6823      	ldr	r3, [r4, #0]
 8007200:	2b00      	cmp	r3, #0
 8007202:	d0fb      	beq.n	80071fc <_fstat_r+0x18>
 8007204:	602b      	str	r3, [r5, #0]
 8007206:	bd38      	pop	{r3, r4, r5, pc}
 8007208:	20000b3c 	.word	0x20000b3c

0800720c <_isatty_r>:
 800720c:	b538      	push	{r3, r4, r5, lr}
 800720e:	4c07      	ldr	r4, [pc, #28]	; (800722c <_isatty_r+0x20>)
 8007210:	2300      	movs	r3, #0
 8007212:	4605      	mov	r5, r0
 8007214:	4608      	mov	r0, r1
 8007216:	6023      	str	r3, [r4, #0]
 8007218:	f7fb f9d1 	bl	80025be <_isatty>
 800721c:	1c43      	adds	r3, r0, #1
 800721e:	d000      	beq.n	8007222 <_isatty_r+0x16>
 8007220:	bd38      	pop	{r3, r4, r5, pc}
 8007222:	6823      	ldr	r3, [r4, #0]
 8007224:	2b00      	cmp	r3, #0
 8007226:	d0fb      	beq.n	8007220 <_isatty_r+0x14>
 8007228:	602b      	str	r3, [r5, #0]
 800722a:	bd38      	pop	{r3, r4, r5, pc}
 800722c:	20000b3c 	.word	0x20000b3c

08007230 <__locale_mb_cur_max>:
 8007230:	4b04      	ldr	r3, [pc, #16]	; (8007244 <__locale_mb_cur_max+0x14>)
 8007232:	4a05      	ldr	r2, [pc, #20]	; (8007248 <__locale_mb_cur_max+0x18>)
 8007234:	681b      	ldr	r3, [r3, #0]
 8007236:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 8007238:	2b00      	cmp	r3, #0
 800723a:	bf08      	it	eq
 800723c:	4613      	moveq	r3, r2
 800723e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8007242:	4770      	bx	lr
 8007244:	20000018 	.word	0x20000018
 8007248:	2000085c 	.word	0x2000085c

0800724c <_lseek_r>:
 800724c:	b570      	push	{r4, r5, r6, lr}
 800724e:	460d      	mov	r5, r1
 8007250:	4c08      	ldr	r4, [pc, #32]	; (8007274 <_lseek_r+0x28>)
 8007252:	4611      	mov	r1, r2
 8007254:	4606      	mov	r6, r0
 8007256:	461a      	mov	r2, r3
 8007258:	4628      	mov	r0, r5
 800725a:	2300      	movs	r3, #0
 800725c:	6023      	str	r3, [r4, #0]
 800725e:	f7fb f9b0 	bl	80025c2 <_lseek>
 8007262:	1c43      	adds	r3, r0, #1
 8007264:	d000      	beq.n	8007268 <_lseek_r+0x1c>
 8007266:	bd70      	pop	{r4, r5, r6, pc}
 8007268:	6823      	ldr	r3, [r4, #0]
 800726a:	2b00      	cmp	r3, #0
 800726c:	d0fb      	beq.n	8007266 <_lseek_r+0x1a>
 800726e:	6033      	str	r3, [r6, #0]
 8007270:	bd70      	pop	{r4, r5, r6, pc}
 8007272:	bf00      	nop
 8007274:	20000b3c 	.word	0x20000b3c

08007278 <__ascii_mbtowc>:
 8007278:	b082      	sub	sp, #8
 800727a:	b149      	cbz	r1, 8007290 <__ascii_mbtowc+0x18>
 800727c:	b15a      	cbz	r2, 8007296 <__ascii_mbtowc+0x1e>
 800727e:	b16b      	cbz	r3, 800729c <__ascii_mbtowc+0x24>
 8007280:	7813      	ldrb	r3, [r2, #0]
 8007282:	600b      	str	r3, [r1, #0]
 8007284:	7812      	ldrb	r2, [r2, #0]
 8007286:	1c10      	adds	r0, r2, #0
 8007288:	bf18      	it	ne
 800728a:	2001      	movne	r0, #1
 800728c:	b002      	add	sp, #8
 800728e:	4770      	bx	lr
 8007290:	a901      	add	r1, sp, #4
 8007292:	2a00      	cmp	r2, #0
 8007294:	d1f3      	bne.n	800727e <__ascii_mbtowc+0x6>
 8007296:	4610      	mov	r0, r2
 8007298:	b002      	add	sp, #8
 800729a:	4770      	bx	lr
 800729c:	f06f 0001 	mvn.w	r0, #1
 80072a0:	e7f4      	b.n	800728c <__ascii_mbtowc+0x14>
 80072a2:	bf00      	nop

080072a4 <_read_r>:
 80072a4:	b570      	push	{r4, r5, r6, lr}
 80072a6:	460d      	mov	r5, r1
 80072a8:	4c08      	ldr	r4, [pc, #32]	; (80072cc <_read_r+0x28>)
 80072aa:	4611      	mov	r1, r2
 80072ac:	4606      	mov	r6, r0
 80072ae:	461a      	mov	r2, r3
 80072b0:	4628      	mov	r0, r5
 80072b2:	2300      	movs	r3, #0
 80072b4:	6023      	str	r3, [r4, #0]
 80072b6:	f7fb f938 	bl	800252a <_read>
 80072ba:	1c43      	adds	r3, r0, #1
 80072bc:	d000      	beq.n	80072c0 <_read_r+0x1c>
 80072be:	bd70      	pop	{r4, r5, r6, pc}
 80072c0:	6823      	ldr	r3, [r4, #0]
 80072c2:	2b00      	cmp	r3, #0
 80072c4:	d0fb      	beq.n	80072be <_read_r+0x1a>
 80072c6:	6033      	str	r3, [r6, #0]
 80072c8:	bd70      	pop	{r4, r5, r6, pc}
 80072ca:	bf00      	nop
 80072cc:	20000b3c 	.word	0x20000b3c

080072d0 <__swbuf_r>:
 80072d0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80072d2:	460d      	mov	r5, r1
 80072d4:	4614      	mov	r4, r2
 80072d6:	4606      	mov	r6, r0
 80072d8:	b110      	cbz	r0, 80072e0 <__swbuf_r+0x10>
 80072da:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80072dc:	2b00      	cmp	r3, #0
 80072de:	d043      	beq.n	8007368 <__swbuf_r+0x98>
 80072e0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80072e4:	69a3      	ldr	r3, [r4, #24]
 80072e6:	60a3      	str	r3, [r4, #8]
 80072e8:	b291      	uxth	r1, r2
 80072ea:	0708      	lsls	r0, r1, #28
 80072ec:	d51b      	bpl.n	8007326 <__swbuf_r+0x56>
 80072ee:	6923      	ldr	r3, [r4, #16]
 80072f0:	b1cb      	cbz	r3, 8007326 <__swbuf_r+0x56>
 80072f2:	b2ed      	uxtb	r5, r5
 80072f4:	0489      	lsls	r1, r1, #18
 80072f6:	462f      	mov	r7, r5
 80072f8:	d522      	bpl.n	8007340 <__swbuf_r+0x70>
 80072fa:	6822      	ldr	r2, [r4, #0]
 80072fc:	6961      	ldr	r1, [r4, #20]
 80072fe:	1ad3      	subs	r3, r2, r3
 8007300:	4299      	cmp	r1, r3
 8007302:	dd29      	ble.n	8007358 <__swbuf_r+0x88>
 8007304:	3301      	adds	r3, #1
 8007306:	68a1      	ldr	r1, [r4, #8]
 8007308:	1c50      	adds	r0, r2, #1
 800730a:	3901      	subs	r1, #1
 800730c:	60a1      	str	r1, [r4, #8]
 800730e:	6020      	str	r0, [r4, #0]
 8007310:	7015      	strb	r5, [r2, #0]
 8007312:	6962      	ldr	r2, [r4, #20]
 8007314:	429a      	cmp	r2, r3
 8007316:	d02a      	beq.n	800736e <__swbuf_r+0x9e>
 8007318:	89a3      	ldrh	r3, [r4, #12]
 800731a:	07db      	lsls	r3, r3, #31
 800731c:	d501      	bpl.n	8007322 <__swbuf_r+0x52>
 800731e:	2d0a      	cmp	r5, #10
 8007320:	d025      	beq.n	800736e <__swbuf_r+0x9e>
 8007322:	4638      	mov	r0, r7
 8007324:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007326:	4621      	mov	r1, r4
 8007328:	4630      	mov	r0, r6
 800732a:	f7fc fffd 	bl	8004328 <__swsetup_r>
 800732e:	bb20      	cbnz	r0, 800737a <__swbuf_r+0xaa>
 8007330:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007334:	6923      	ldr	r3, [r4, #16]
 8007336:	b291      	uxth	r1, r2
 8007338:	b2ed      	uxtb	r5, r5
 800733a:	0489      	lsls	r1, r1, #18
 800733c:	462f      	mov	r7, r5
 800733e:	d4dc      	bmi.n	80072fa <__swbuf_r+0x2a>
 8007340:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8007342:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8007346:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800734a:	81a2      	strh	r2, [r4, #12]
 800734c:	6822      	ldr	r2, [r4, #0]
 800734e:	6661      	str	r1, [r4, #100]	; 0x64
 8007350:	6961      	ldr	r1, [r4, #20]
 8007352:	1ad3      	subs	r3, r2, r3
 8007354:	4299      	cmp	r1, r3
 8007356:	dcd5      	bgt.n	8007304 <__swbuf_r+0x34>
 8007358:	4621      	mov	r1, r4
 800735a:	4630      	mov	r0, r6
 800735c:	f7fe f8a6 	bl	80054ac <_fflush_r>
 8007360:	b958      	cbnz	r0, 800737a <__swbuf_r+0xaa>
 8007362:	6822      	ldr	r2, [r4, #0]
 8007364:	2301      	movs	r3, #1
 8007366:	e7ce      	b.n	8007306 <__swbuf_r+0x36>
 8007368:	f7fe f8fc 	bl	8005564 <__sinit>
 800736c:	e7b8      	b.n	80072e0 <__swbuf_r+0x10>
 800736e:	4621      	mov	r1, r4
 8007370:	4630      	mov	r0, r6
 8007372:	f7fe f89b 	bl	80054ac <_fflush_r>
 8007376:	2800      	cmp	r0, #0
 8007378:	d0d3      	beq.n	8007322 <__swbuf_r+0x52>
 800737a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800737e:	e7d0      	b.n	8007322 <__swbuf_r+0x52>

08007380 <_wcrtomb_r>:
 8007380:	b5f0      	push	{r4, r5, r6, r7, lr}
 8007382:	4c11      	ldr	r4, [pc, #68]	; (80073c8 <_wcrtomb_r+0x48>)
 8007384:	6824      	ldr	r4, [r4, #0]
 8007386:	b085      	sub	sp, #20
 8007388:	4606      	mov	r6, r0
 800738a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800738c:	461f      	mov	r7, r3
 800738e:	b151      	cbz	r1, 80073a6 <_wcrtomb_r+0x26>
 8007390:	4d0e      	ldr	r5, [pc, #56]	; (80073cc <_wcrtomb_r+0x4c>)
 8007392:	2c00      	cmp	r4, #0
 8007394:	bf08      	it	eq
 8007396:	462c      	moveq	r4, r5
 8007398:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800739c:	47a0      	blx	r4
 800739e:	1c43      	adds	r3, r0, #1
 80073a0:	d00c      	beq.n	80073bc <_wcrtomb_r+0x3c>
 80073a2:	b005      	add	sp, #20
 80073a4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80073a6:	4a09      	ldr	r2, [pc, #36]	; (80073cc <_wcrtomb_r+0x4c>)
 80073a8:	2c00      	cmp	r4, #0
 80073aa:	bf08      	it	eq
 80073ac:	4614      	moveq	r4, r2
 80073ae:	460a      	mov	r2, r1
 80073b0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80073b4:	a901      	add	r1, sp, #4
 80073b6:	47a0      	blx	r4
 80073b8:	1c43      	adds	r3, r0, #1
 80073ba:	d1f2      	bne.n	80073a2 <_wcrtomb_r+0x22>
 80073bc:	2200      	movs	r2, #0
 80073be:	238a      	movs	r3, #138	; 0x8a
 80073c0:	603a      	str	r2, [r7, #0]
 80073c2:	6033      	str	r3, [r6, #0]
 80073c4:	b005      	add	sp, #20
 80073c6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80073c8:	20000018 	.word	0x20000018
 80073cc:	2000085c 	.word	0x2000085c

080073d0 <__ascii_wctomb>:
 80073d0:	b121      	cbz	r1, 80073dc <__ascii_wctomb+0xc>
 80073d2:	2aff      	cmp	r2, #255	; 0xff
 80073d4:	d804      	bhi.n	80073e0 <__ascii_wctomb+0x10>
 80073d6:	700a      	strb	r2, [r1, #0]
 80073d8:	2001      	movs	r0, #1
 80073da:	4770      	bx	lr
 80073dc:	4608      	mov	r0, r1
 80073de:	4770      	bx	lr
 80073e0:	238a      	movs	r3, #138	; 0x8a
 80073e2:	6003      	str	r3, [r0, #0]
 80073e4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80073e8:	4770      	bx	lr
 80073ea:	bf00      	nop

080073ec <_init>:
 80073ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80073ee:	bf00      	nop
 80073f0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80073f2:	bc08      	pop	{r3}
 80073f4:	469e      	mov	lr, r3
 80073f6:	4770      	bx	lr

080073f8 <_fini>:
 80073f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80073fa:	bf00      	nop
 80073fc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80073fe:	bc08      	pop	{r3}
 8007400:	469e      	mov	lr, r3
 8007402:	4770      	bx	lr
 8007404:	0000      	movs	r0, r0
	...
