
picojpeg.elf:     file format elf32-littlearm


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
 80001e0:	0800b6dc 	.word	0x0800b6dc

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
 80001fc:	0800b6dc 	.word	0x0800b6dc

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

08000500 <__aeabi_memset>:
 8000500:	b470      	push	{r4, r5, r6}
 8000502:	0784      	lsls	r4, r0, #30
 8000504:	d046      	beq.n	8000594 <__aeabi_memset+0x94>
 8000506:	1e4c      	subs	r4, r1, #1
 8000508:	2900      	cmp	r1, #0
 800050a:	d041      	beq.n	8000590 <__aeabi_memset+0x90>
 800050c:	b2d5      	uxtb	r5, r2
 800050e:	4603      	mov	r3, r0
 8000510:	e002      	b.n	8000518 <__aeabi_memset+0x18>
 8000512:	1e61      	subs	r1, r4, #1
 8000514:	b3e4      	cbz	r4, 8000590 <__aeabi_memset+0x90>
 8000516:	460c      	mov	r4, r1
 8000518:	f803 5b01 	strb.w	r5, [r3], #1
 800051c:	0799      	lsls	r1, r3, #30
 800051e:	d1f8      	bne.n	8000512 <__aeabi_memset+0x12>
 8000520:	2c03      	cmp	r4, #3
 8000522:	d92e      	bls.n	8000582 <__aeabi_memset+0x82>
 8000524:	b2d5      	uxtb	r5, r2
 8000526:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 800052a:	2c0f      	cmp	r4, #15
 800052c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8000530:	d919      	bls.n	8000566 <__aeabi_memset+0x66>
 8000532:	4626      	mov	r6, r4
 8000534:	f103 0110 	add.w	r1, r3, #16
 8000538:	3e10      	subs	r6, #16
 800053a:	2e0f      	cmp	r6, #15
 800053c:	f841 5c10 	str.w	r5, [r1, #-16]
 8000540:	f841 5c0c 	str.w	r5, [r1, #-12]
 8000544:	f841 5c08 	str.w	r5, [r1, #-8]
 8000548:	f841 5c04 	str.w	r5, [r1, #-4]
 800054c:	f101 0110 	add.w	r1, r1, #16
 8000550:	d8f2      	bhi.n	8000538 <__aeabi_memset+0x38>
 8000552:	f1a4 0110 	sub.w	r1, r4, #16
 8000556:	f021 010f 	bic.w	r1, r1, #15
 800055a:	f004 040f 	and.w	r4, r4, #15
 800055e:	3110      	adds	r1, #16
 8000560:	2c03      	cmp	r4, #3
 8000562:	440b      	add	r3, r1
 8000564:	d90d      	bls.n	8000582 <__aeabi_memset+0x82>
 8000566:	461e      	mov	r6, r3
 8000568:	4621      	mov	r1, r4
 800056a:	3904      	subs	r1, #4
 800056c:	2903      	cmp	r1, #3
 800056e:	f846 5b04 	str.w	r5, [r6], #4
 8000572:	d8fa      	bhi.n	800056a <__aeabi_memset+0x6a>
 8000574:	1f21      	subs	r1, r4, #4
 8000576:	f021 0103 	bic.w	r1, r1, #3
 800057a:	3104      	adds	r1, #4
 800057c:	440b      	add	r3, r1
 800057e:	f004 0403 	and.w	r4, r4, #3
 8000582:	b12c      	cbz	r4, 8000590 <__aeabi_memset+0x90>
 8000584:	b2d2      	uxtb	r2, r2
 8000586:	441c      	add	r4, r3
 8000588:	f803 2b01 	strb.w	r2, [r3], #1
 800058c:	42a3      	cmp	r3, r4
 800058e:	d1fb      	bne.n	8000588 <__aeabi_memset+0x88>
 8000590:	bc70      	pop	{r4, r5, r6}
 8000592:	4770      	bx	lr
 8000594:	460c      	mov	r4, r1
 8000596:	4603      	mov	r3, r0
 8000598:	e7c2      	b.n	8000520 <__aeabi_memset+0x20>
	...

0800059c <memcpy>:
 800059c:	4684      	mov	ip, r0
 800059e:	ea41 0300 	orr.w	r3, r1, r0
 80005a2:	f013 0303 	ands.w	r3, r3, #3
 80005a6:	d16d      	bne.n	8000684 <memcpy+0xe8>
 80005a8:	3a40      	subs	r2, #64	; 0x40
 80005aa:	d341      	bcc.n	8000630 <memcpy+0x94>
 80005ac:	f851 3b04 	ldr.w	r3, [r1], #4
 80005b0:	f840 3b04 	str.w	r3, [r0], #4
 80005b4:	f851 3b04 	ldr.w	r3, [r1], #4
 80005b8:	f840 3b04 	str.w	r3, [r0], #4
 80005bc:	f851 3b04 	ldr.w	r3, [r1], #4
 80005c0:	f840 3b04 	str.w	r3, [r0], #4
 80005c4:	f851 3b04 	ldr.w	r3, [r1], #4
 80005c8:	f840 3b04 	str.w	r3, [r0], #4
 80005cc:	f851 3b04 	ldr.w	r3, [r1], #4
 80005d0:	f840 3b04 	str.w	r3, [r0], #4
 80005d4:	f851 3b04 	ldr.w	r3, [r1], #4
 80005d8:	f840 3b04 	str.w	r3, [r0], #4
 80005dc:	f851 3b04 	ldr.w	r3, [r1], #4
 80005e0:	f840 3b04 	str.w	r3, [r0], #4
 80005e4:	f851 3b04 	ldr.w	r3, [r1], #4
 80005e8:	f840 3b04 	str.w	r3, [r0], #4
 80005ec:	f851 3b04 	ldr.w	r3, [r1], #4
 80005f0:	f840 3b04 	str.w	r3, [r0], #4
 80005f4:	f851 3b04 	ldr.w	r3, [r1], #4
 80005f8:	f840 3b04 	str.w	r3, [r0], #4
 80005fc:	f851 3b04 	ldr.w	r3, [r1], #4
 8000600:	f840 3b04 	str.w	r3, [r0], #4
 8000604:	f851 3b04 	ldr.w	r3, [r1], #4
 8000608:	f840 3b04 	str.w	r3, [r0], #4
 800060c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000610:	f840 3b04 	str.w	r3, [r0], #4
 8000614:	f851 3b04 	ldr.w	r3, [r1], #4
 8000618:	f840 3b04 	str.w	r3, [r0], #4
 800061c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000620:	f840 3b04 	str.w	r3, [r0], #4
 8000624:	f851 3b04 	ldr.w	r3, [r1], #4
 8000628:	f840 3b04 	str.w	r3, [r0], #4
 800062c:	3a40      	subs	r2, #64	; 0x40
 800062e:	d2bd      	bcs.n	80005ac <memcpy+0x10>
 8000630:	3230      	adds	r2, #48	; 0x30
 8000632:	d311      	bcc.n	8000658 <memcpy+0xbc>
 8000634:	f851 3b04 	ldr.w	r3, [r1], #4
 8000638:	f840 3b04 	str.w	r3, [r0], #4
 800063c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000640:	f840 3b04 	str.w	r3, [r0], #4
 8000644:	f851 3b04 	ldr.w	r3, [r1], #4
 8000648:	f840 3b04 	str.w	r3, [r0], #4
 800064c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000650:	f840 3b04 	str.w	r3, [r0], #4
 8000654:	3a10      	subs	r2, #16
 8000656:	d2ed      	bcs.n	8000634 <memcpy+0x98>
 8000658:	320c      	adds	r2, #12
 800065a:	d305      	bcc.n	8000668 <memcpy+0xcc>
 800065c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000660:	f840 3b04 	str.w	r3, [r0], #4
 8000664:	3a04      	subs	r2, #4
 8000666:	d2f9      	bcs.n	800065c <memcpy+0xc0>
 8000668:	3204      	adds	r2, #4
 800066a:	d008      	beq.n	800067e <memcpy+0xe2>
 800066c:	07d2      	lsls	r2, r2, #31
 800066e:	bf1c      	itt	ne
 8000670:	f811 3b01 	ldrbne.w	r3, [r1], #1
 8000674:	f800 3b01 	strbne.w	r3, [r0], #1
 8000678:	d301      	bcc.n	800067e <memcpy+0xe2>
 800067a:	880b      	ldrh	r3, [r1, #0]
 800067c:	8003      	strh	r3, [r0, #0]
 800067e:	4660      	mov	r0, ip
 8000680:	4770      	bx	lr
 8000682:	bf00      	nop
 8000684:	2a08      	cmp	r2, #8
 8000686:	d313      	bcc.n	80006b0 <memcpy+0x114>
 8000688:	078b      	lsls	r3, r1, #30
 800068a:	d08d      	beq.n	80005a8 <memcpy+0xc>
 800068c:	f010 0303 	ands.w	r3, r0, #3
 8000690:	d08a      	beq.n	80005a8 <memcpy+0xc>
 8000692:	f1c3 0304 	rsb	r3, r3, #4
 8000696:	1ad2      	subs	r2, r2, r3
 8000698:	07db      	lsls	r3, r3, #31
 800069a:	bf1c      	itt	ne
 800069c:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80006a0:	f800 3b01 	strbne.w	r3, [r0], #1
 80006a4:	d380      	bcc.n	80005a8 <memcpy+0xc>
 80006a6:	f831 3b02 	ldrh.w	r3, [r1], #2
 80006aa:	f820 3b02 	strh.w	r3, [r0], #2
 80006ae:	e77b      	b.n	80005a8 <memcpy+0xc>
 80006b0:	3a04      	subs	r2, #4
 80006b2:	d3d9      	bcc.n	8000668 <memcpy+0xcc>
 80006b4:	3a01      	subs	r2, #1
 80006b6:	f811 3b01 	ldrb.w	r3, [r1], #1
 80006ba:	f800 3b01 	strb.w	r3, [r0], #1
 80006be:	d2f9      	bcs.n	80006b4 <memcpy+0x118>
 80006c0:	780b      	ldrb	r3, [r1, #0]
 80006c2:	7003      	strb	r3, [r0, #0]
 80006c4:	784b      	ldrb	r3, [r1, #1]
 80006c6:	7043      	strb	r3, [r0, #1]
 80006c8:	788b      	ldrb	r3, [r1, #2]
 80006ca:	7083      	strb	r3, [r0, #2]
 80006cc:	4660      	mov	r0, ip
 80006ce:	4770      	bx	lr
	...

08000700 <strlen>:
 8000700:	f890 f000 	pld	[r0]
 8000704:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8000708:	f020 0107 	bic.w	r1, r0, #7
 800070c:	f06f 0c00 	mvn.w	ip, #0
 8000710:	f010 0407 	ands.w	r4, r0, #7
 8000714:	f891 f020 	pld	[r1, #32]
 8000718:	f040 8049 	bne.w	80007ae <strlen+0xae>
 800071c:	f04f 0400 	mov.w	r4, #0
 8000720:	f06f 0007 	mvn.w	r0, #7
 8000724:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000728:	f891 f040 	pld	[r1, #64]	; 0x40
 800072c:	f100 0008 	add.w	r0, r0, #8
 8000730:	fa82 f24c 	uadd8	r2, r2, ip
 8000734:	faa4 f28c 	sel	r2, r4, ip
 8000738:	fa83 f34c 	uadd8	r3, r3, ip
 800073c:	faa2 f38c 	sel	r3, r2, ip
 8000740:	bb4b      	cbnz	r3, 8000796 <strlen+0x96>
 8000742:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8000746:	fa82 f24c 	uadd8	r2, r2, ip
 800074a:	f100 0008 	add.w	r0, r0, #8
 800074e:	faa4 f28c 	sel	r2, r4, ip
 8000752:	fa83 f34c 	uadd8	r3, r3, ip
 8000756:	faa2 f38c 	sel	r3, r2, ip
 800075a:	b9e3      	cbnz	r3, 8000796 <strlen+0x96>
 800075c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 8000760:	fa82 f24c 	uadd8	r2, r2, ip
 8000764:	f100 0008 	add.w	r0, r0, #8
 8000768:	faa4 f28c 	sel	r2, r4, ip
 800076c:	fa83 f34c 	uadd8	r3, r3, ip
 8000770:	faa2 f38c 	sel	r3, r2, ip
 8000774:	b97b      	cbnz	r3, 8000796 <strlen+0x96>
 8000776:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 800077a:	f101 0120 	add.w	r1, r1, #32
 800077e:	fa82 f24c 	uadd8	r2, r2, ip
 8000782:	f100 0008 	add.w	r0, r0, #8
 8000786:	faa4 f28c 	sel	r2, r4, ip
 800078a:	fa83 f34c 	uadd8	r3, r3, ip
 800078e:	faa2 f38c 	sel	r3, r2, ip
 8000792:	2b00      	cmp	r3, #0
 8000794:	d0c6      	beq.n	8000724 <strlen+0x24>
 8000796:	2a00      	cmp	r2, #0
 8000798:	bf04      	itt	eq
 800079a:	3004      	addeq	r0, #4
 800079c:	461a      	moveq	r2, r3
 800079e:	ba12      	rev	r2, r2
 80007a0:	fab2 f282 	clz	r2, r2
 80007a4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 80007a8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 80007ac:	4770      	bx	lr
 80007ae:	e9d1 2300 	ldrd	r2, r3, [r1]
 80007b2:	f004 0503 	and.w	r5, r4, #3
 80007b6:	f1c4 0000 	rsb	r0, r4, #0
 80007ba:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 80007be:	f014 0f04 	tst.w	r4, #4
 80007c2:	f891 f040 	pld	[r1, #64]	; 0x40
 80007c6:	fa0c f505 	lsl.w	r5, ip, r5
 80007ca:	ea62 0205 	orn	r2, r2, r5
 80007ce:	bf1c      	itt	ne
 80007d0:	ea63 0305 	ornne	r3, r3, r5
 80007d4:	4662      	movne	r2, ip
 80007d6:	f04f 0400 	mov.w	r4, #0
 80007da:	e7a9      	b.n	8000730 <strlen+0x30>
 80007dc:	0000      	movs	r0, r0
	...

080007e0 <memchr>:
 80007e0:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 80007e4:	2a10      	cmp	r2, #16
 80007e6:	db2b      	blt.n	8000840 <memchr+0x60>
 80007e8:	f010 0f07 	tst.w	r0, #7
 80007ec:	d008      	beq.n	8000800 <memchr+0x20>
 80007ee:	f810 3b01 	ldrb.w	r3, [r0], #1
 80007f2:	3a01      	subs	r2, #1
 80007f4:	428b      	cmp	r3, r1
 80007f6:	d02d      	beq.n	8000854 <memchr+0x74>
 80007f8:	f010 0f07 	tst.w	r0, #7
 80007fc:	b342      	cbz	r2, 8000850 <memchr+0x70>
 80007fe:	d1f6      	bne.n	80007ee <memchr+0xe>
 8000800:	b4f0      	push	{r4, r5, r6, r7}
 8000802:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000806:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800080a:	f022 0407 	bic.w	r4, r2, #7
 800080e:	f07f 0700 	mvns.w	r7, #0
 8000812:	2300      	movs	r3, #0
 8000814:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000818:	3c08      	subs	r4, #8
 800081a:	ea85 0501 	eor.w	r5, r5, r1
 800081e:	ea86 0601 	eor.w	r6, r6, r1
 8000822:	fa85 f547 	uadd8	r5, r5, r7
 8000826:	faa3 f587 	sel	r5, r3, r7
 800082a:	fa86 f647 	uadd8	r6, r6, r7
 800082e:	faa5 f687 	sel	r6, r5, r7
 8000832:	b98e      	cbnz	r6, 8000858 <memchr+0x78>
 8000834:	d1ee      	bne.n	8000814 <memchr+0x34>
 8000836:	bcf0      	pop	{r4, r5, r6, r7}
 8000838:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 800083c:	f002 0207 	and.w	r2, r2, #7
 8000840:	b132      	cbz	r2, 8000850 <memchr+0x70>
 8000842:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000846:	3a01      	subs	r2, #1
 8000848:	ea83 0301 	eor.w	r3, r3, r1
 800084c:	b113      	cbz	r3, 8000854 <memchr+0x74>
 800084e:	d1f8      	bne.n	8000842 <memchr+0x62>
 8000850:	2000      	movs	r0, #0
 8000852:	4770      	bx	lr
 8000854:	3801      	subs	r0, #1
 8000856:	4770      	bx	lr
 8000858:	2d00      	cmp	r5, #0
 800085a:	bf06      	itte	eq
 800085c:	4635      	moveq	r5, r6
 800085e:	3803      	subeq	r0, #3
 8000860:	3807      	subne	r0, #7
 8000862:	f015 0f01 	tst.w	r5, #1
 8000866:	d107      	bne.n	8000878 <memchr+0x98>
 8000868:	3001      	adds	r0, #1
 800086a:	f415 7f80 	tst.w	r5, #256	; 0x100
 800086e:	bf02      	ittt	eq
 8000870:	3001      	addeq	r0, #1
 8000872:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 8000876:	3001      	addeq	r0, #1
 8000878:	bcf0      	pop	{r4, r5, r6, r7}
 800087a:	3801      	subs	r0, #1
 800087c:	4770      	bx	lr
 800087e:	bf00      	nop

08000880 <__aeabi_drsub>:
 8000880:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 8000884:	e002      	b.n	800088c <__adddf3>
 8000886:	bf00      	nop

08000888 <__aeabi_dsub>:
 8000888:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

0800088c <__adddf3>:
 800088c:	b530      	push	{r4, r5, lr}
 800088e:	ea4f 0441 	mov.w	r4, r1, lsl #1
 8000892:	ea4f 0543 	mov.w	r5, r3, lsl #1
 8000896:	ea94 0f05 	teq	r4, r5
 800089a:	bf08      	it	eq
 800089c:	ea90 0f02 	teqeq	r0, r2
 80008a0:	bf1f      	itttt	ne
 80008a2:	ea54 0c00 	orrsne.w	ip, r4, r0
 80008a6:	ea55 0c02 	orrsne.w	ip, r5, r2
 80008aa:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 80008ae:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80008b2:	f000 80e2 	beq.w	8000a7a <__adddf3+0x1ee>
 80008b6:	ea4f 5454 	mov.w	r4, r4, lsr #21
 80008ba:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 80008be:	bfb8      	it	lt
 80008c0:	426d      	neglt	r5, r5
 80008c2:	dd0c      	ble.n	80008de <__adddf3+0x52>
 80008c4:	442c      	add	r4, r5
 80008c6:	ea80 0202 	eor.w	r2, r0, r2
 80008ca:	ea81 0303 	eor.w	r3, r1, r3
 80008ce:	ea82 0000 	eor.w	r0, r2, r0
 80008d2:	ea83 0101 	eor.w	r1, r3, r1
 80008d6:	ea80 0202 	eor.w	r2, r0, r2
 80008da:	ea81 0303 	eor.w	r3, r1, r3
 80008de:	2d36      	cmp	r5, #54	; 0x36
 80008e0:	bf88      	it	hi
 80008e2:	bd30      	pophi	{r4, r5, pc}
 80008e4:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80008e8:	ea4f 3101 	mov.w	r1, r1, lsl #12
 80008ec:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 80008f0:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 80008f4:	d002      	beq.n	80008fc <__adddf3+0x70>
 80008f6:	4240      	negs	r0, r0
 80008f8:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 80008fc:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8000900:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000904:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8000908:	d002      	beq.n	8000910 <__adddf3+0x84>
 800090a:	4252      	negs	r2, r2
 800090c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8000910:	ea94 0f05 	teq	r4, r5
 8000914:	f000 80a7 	beq.w	8000a66 <__adddf3+0x1da>
 8000918:	f1a4 0401 	sub.w	r4, r4, #1
 800091c:	f1d5 0e20 	rsbs	lr, r5, #32
 8000920:	db0d      	blt.n	800093e <__adddf3+0xb2>
 8000922:	fa02 fc0e 	lsl.w	ip, r2, lr
 8000926:	fa22 f205 	lsr.w	r2, r2, r5
 800092a:	1880      	adds	r0, r0, r2
 800092c:	f141 0100 	adc.w	r1, r1, #0
 8000930:	fa03 f20e 	lsl.w	r2, r3, lr
 8000934:	1880      	adds	r0, r0, r2
 8000936:	fa43 f305 	asr.w	r3, r3, r5
 800093a:	4159      	adcs	r1, r3
 800093c:	e00e      	b.n	800095c <__adddf3+0xd0>
 800093e:	f1a5 0520 	sub.w	r5, r5, #32
 8000942:	f10e 0e20 	add.w	lr, lr, #32
 8000946:	2a01      	cmp	r2, #1
 8000948:	fa03 fc0e 	lsl.w	ip, r3, lr
 800094c:	bf28      	it	cs
 800094e:	f04c 0c02 	orrcs.w	ip, ip, #2
 8000952:	fa43 f305 	asr.w	r3, r3, r5
 8000956:	18c0      	adds	r0, r0, r3
 8000958:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 800095c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000960:	d507      	bpl.n	8000972 <__adddf3+0xe6>
 8000962:	f04f 0e00 	mov.w	lr, #0
 8000966:	f1dc 0c00 	rsbs	ip, ip, #0
 800096a:	eb7e 0000 	sbcs.w	r0, lr, r0
 800096e:	eb6e 0101 	sbc.w	r1, lr, r1
 8000972:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8000976:	d31b      	bcc.n	80009b0 <__adddf3+0x124>
 8000978:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 800097c:	d30c      	bcc.n	8000998 <__adddf3+0x10c>
 800097e:	0849      	lsrs	r1, r1, #1
 8000980:	ea5f 0030 	movs.w	r0, r0, rrx
 8000984:	ea4f 0c3c 	mov.w	ip, ip, rrx
 8000988:	f104 0401 	add.w	r4, r4, #1
 800098c:	ea4f 5244 	mov.w	r2, r4, lsl #21
 8000990:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 8000994:	f080 809a 	bcs.w	8000acc <__adddf3+0x240>
 8000998:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 800099c:	bf08      	it	eq
 800099e:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 80009a2:	f150 0000 	adcs.w	r0, r0, #0
 80009a6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 80009aa:	ea41 0105 	orr.w	r1, r1, r5
 80009ae:	bd30      	pop	{r4, r5, pc}
 80009b0:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 80009b4:	4140      	adcs	r0, r0
 80009b6:	eb41 0101 	adc.w	r1, r1, r1
 80009ba:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80009be:	f1a4 0401 	sub.w	r4, r4, #1
 80009c2:	d1e9      	bne.n	8000998 <__adddf3+0x10c>
 80009c4:	f091 0f00 	teq	r1, #0
 80009c8:	bf04      	itt	eq
 80009ca:	4601      	moveq	r1, r0
 80009cc:	2000      	moveq	r0, #0
 80009ce:	fab1 f381 	clz	r3, r1
 80009d2:	bf08      	it	eq
 80009d4:	3320      	addeq	r3, #32
 80009d6:	f1a3 030b 	sub.w	r3, r3, #11
 80009da:	f1b3 0220 	subs.w	r2, r3, #32
 80009de:	da0c      	bge.n	80009fa <__adddf3+0x16e>
 80009e0:	320c      	adds	r2, #12
 80009e2:	dd08      	ble.n	80009f6 <__adddf3+0x16a>
 80009e4:	f102 0c14 	add.w	ip, r2, #20
 80009e8:	f1c2 020c 	rsb	r2, r2, #12
 80009ec:	fa01 f00c 	lsl.w	r0, r1, ip
 80009f0:	fa21 f102 	lsr.w	r1, r1, r2
 80009f4:	e00c      	b.n	8000a10 <__adddf3+0x184>
 80009f6:	f102 0214 	add.w	r2, r2, #20
 80009fa:	bfd8      	it	le
 80009fc:	f1c2 0c20 	rsble	ip, r2, #32
 8000a00:	fa01 f102 	lsl.w	r1, r1, r2
 8000a04:	fa20 fc0c 	lsr.w	ip, r0, ip
 8000a08:	bfdc      	itt	le
 8000a0a:	ea41 010c 	orrle.w	r1, r1, ip
 8000a0e:	4090      	lslle	r0, r2
 8000a10:	1ae4      	subs	r4, r4, r3
 8000a12:	bfa2      	ittt	ge
 8000a14:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8000a18:	4329      	orrge	r1, r5
 8000a1a:	bd30      	popge	{r4, r5, pc}
 8000a1c:	ea6f 0404 	mvn.w	r4, r4
 8000a20:	3c1f      	subs	r4, #31
 8000a22:	da1c      	bge.n	8000a5e <__adddf3+0x1d2>
 8000a24:	340c      	adds	r4, #12
 8000a26:	dc0e      	bgt.n	8000a46 <__adddf3+0x1ba>
 8000a28:	f104 0414 	add.w	r4, r4, #20
 8000a2c:	f1c4 0220 	rsb	r2, r4, #32
 8000a30:	fa20 f004 	lsr.w	r0, r0, r4
 8000a34:	fa01 f302 	lsl.w	r3, r1, r2
 8000a38:	ea40 0003 	orr.w	r0, r0, r3
 8000a3c:	fa21 f304 	lsr.w	r3, r1, r4
 8000a40:	ea45 0103 	orr.w	r1, r5, r3
 8000a44:	bd30      	pop	{r4, r5, pc}
 8000a46:	f1c4 040c 	rsb	r4, r4, #12
 8000a4a:	f1c4 0220 	rsb	r2, r4, #32
 8000a4e:	fa20 f002 	lsr.w	r0, r0, r2
 8000a52:	fa01 f304 	lsl.w	r3, r1, r4
 8000a56:	ea40 0003 	orr.w	r0, r0, r3
 8000a5a:	4629      	mov	r1, r5
 8000a5c:	bd30      	pop	{r4, r5, pc}
 8000a5e:	fa21 f004 	lsr.w	r0, r1, r4
 8000a62:	4629      	mov	r1, r5
 8000a64:	bd30      	pop	{r4, r5, pc}
 8000a66:	f094 0f00 	teq	r4, #0
 8000a6a:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 8000a6e:	bf06      	itte	eq
 8000a70:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8000a74:	3401      	addeq	r4, #1
 8000a76:	3d01      	subne	r5, #1
 8000a78:	e74e      	b.n	8000918 <__adddf3+0x8c>
 8000a7a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000a7e:	bf18      	it	ne
 8000a80:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8000a84:	d029      	beq.n	8000ada <__adddf3+0x24e>
 8000a86:	ea94 0f05 	teq	r4, r5
 8000a8a:	bf08      	it	eq
 8000a8c:	ea90 0f02 	teqeq	r0, r2
 8000a90:	d005      	beq.n	8000a9e <__adddf3+0x212>
 8000a92:	ea54 0c00 	orrs.w	ip, r4, r0
 8000a96:	bf04      	itt	eq
 8000a98:	4619      	moveq	r1, r3
 8000a9a:	4610      	moveq	r0, r2
 8000a9c:	bd30      	pop	{r4, r5, pc}
 8000a9e:	ea91 0f03 	teq	r1, r3
 8000aa2:	bf1e      	ittt	ne
 8000aa4:	2100      	movne	r1, #0
 8000aa6:	2000      	movne	r0, #0
 8000aa8:	bd30      	popne	{r4, r5, pc}
 8000aaa:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8000aae:	d105      	bne.n	8000abc <__adddf3+0x230>
 8000ab0:	0040      	lsls	r0, r0, #1
 8000ab2:	4149      	adcs	r1, r1
 8000ab4:	bf28      	it	cs
 8000ab6:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8000aba:	bd30      	pop	{r4, r5, pc}
 8000abc:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8000ac0:	bf3c      	itt	cc
 8000ac2:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8000ac6:	bd30      	popcc	{r4, r5, pc}
 8000ac8:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000acc:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8000ad0:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000ad4:	f04f 0000 	mov.w	r0, #0
 8000ad8:	bd30      	pop	{r4, r5, pc}
 8000ada:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000ade:	bf1a      	itte	ne
 8000ae0:	4619      	movne	r1, r3
 8000ae2:	4610      	movne	r0, r2
 8000ae4:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8000ae8:	bf1c      	itt	ne
 8000aea:	460b      	movne	r3, r1
 8000aec:	4602      	movne	r2, r0
 8000aee:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000af2:	bf06      	itte	eq
 8000af4:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8000af8:	ea91 0f03 	teqeq	r1, r3
 8000afc:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8000b00:	bd30      	pop	{r4, r5, pc}
 8000b02:	bf00      	nop

08000b04 <__aeabi_ui2d>:
 8000b04:	f090 0f00 	teq	r0, #0
 8000b08:	bf04      	itt	eq
 8000b0a:	2100      	moveq	r1, #0
 8000b0c:	4770      	bxeq	lr
 8000b0e:	b530      	push	{r4, r5, lr}
 8000b10:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000b14:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000b18:	f04f 0500 	mov.w	r5, #0
 8000b1c:	f04f 0100 	mov.w	r1, #0
 8000b20:	e750      	b.n	80009c4 <__adddf3+0x138>
 8000b22:	bf00      	nop

08000b24 <__aeabi_i2d>:
 8000b24:	f090 0f00 	teq	r0, #0
 8000b28:	bf04      	itt	eq
 8000b2a:	2100      	moveq	r1, #0
 8000b2c:	4770      	bxeq	lr
 8000b2e:	b530      	push	{r4, r5, lr}
 8000b30:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000b34:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000b38:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8000b3c:	bf48      	it	mi
 8000b3e:	4240      	negmi	r0, r0
 8000b40:	f04f 0100 	mov.w	r1, #0
 8000b44:	e73e      	b.n	80009c4 <__adddf3+0x138>
 8000b46:	bf00      	nop

08000b48 <__aeabi_f2d>:
 8000b48:	0042      	lsls	r2, r0, #1
 8000b4a:	ea4f 01e2 	mov.w	r1, r2, asr #3
 8000b4e:	ea4f 0131 	mov.w	r1, r1, rrx
 8000b52:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8000b56:	bf1f      	itttt	ne
 8000b58:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8000b5c:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8000b60:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8000b64:	4770      	bxne	lr
 8000b66:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8000b6a:	bf08      	it	eq
 8000b6c:	4770      	bxeq	lr
 8000b6e:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 8000b72:	bf04      	itt	eq
 8000b74:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8000b78:	4770      	bxeq	lr
 8000b7a:	b530      	push	{r4, r5, lr}
 8000b7c:	f44f 7460 	mov.w	r4, #896	; 0x380
 8000b80:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000b84:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000b88:	e71c      	b.n	80009c4 <__adddf3+0x138>
 8000b8a:	bf00      	nop

08000b8c <__aeabi_ul2d>:
 8000b8c:	ea50 0201 	orrs.w	r2, r0, r1
 8000b90:	bf08      	it	eq
 8000b92:	4770      	bxeq	lr
 8000b94:	b530      	push	{r4, r5, lr}
 8000b96:	f04f 0500 	mov.w	r5, #0
 8000b9a:	e00a      	b.n	8000bb2 <__aeabi_l2d+0x16>

08000b9c <__aeabi_l2d>:
 8000b9c:	ea50 0201 	orrs.w	r2, r0, r1
 8000ba0:	bf08      	it	eq
 8000ba2:	4770      	bxeq	lr
 8000ba4:	b530      	push	{r4, r5, lr}
 8000ba6:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8000baa:	d502      	bpl.n	8000bb2 <__aeabi_l2d+0x16>
 8000bac:	4240      	negs	r0, r0
 8000bae:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8000bb2:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000bb6:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000bba:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8000bbe:	f43f aed8 	beq.w	8000972 <__adddf3+0xe6>
 8000bc2:	f04f 0203 	mov.w	r2, #3
 8000bc6:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000bca:	bf18      	it	ne
 8000bcc:	3203      	addne	r2, #3
 8000bce:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000bd2:	bf18      	it	ne
 8000bd4:	3203      	addne	r2, #3
 8000bd6:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8000bda:	f1c2 0320 	rsb	r3, r2, #32
 8000bde:	fa00 fc03 	lsl.w	ip, r0, r3
 8000be2:	fa20 f002 	lsr.w	r0, r0, r2
 8000be6:	fa01 fe03 	lsl.w	lr, r1, r3
 8000bea:	ea40 000e 	orr.w	r0, r0, lr
 8000bee:	fa21 f102 	lsr.w	r1, r1, r2
 8000bf2:	4414      	add	r4, r2
 8000bf4:	e6bd      	b.n	8000972 <__adddf3+0xe6>
 8000bf6:	bf00      	nop

08000bf8 <__aeabi_dmul>:
 8000bf8:	b570      	push	{r4, r5, r6, lr}
 8000bfa:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000bfe:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000c02:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000c06:	bf1d      	ittte	ne
 8000c08:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000c0c:	ea94 0f0c 	teqne	r4, ip
 8000c10:	ea95 0f0c 	teqne	r5, ip
 8000c14:	f000 f8de 	bleq	8000dd4 <__aeabi_dmul+0x1dc>
 8000c18:	442c      	add	r4, r5
 8000c1a:	ea81 0603 	eor.w	r6, r1, r3
 8000c1e:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 8000c22:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8000c26:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8000c2a:	bf18      	it	ne
 8000c2c:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 8000c30:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000c34:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8000c38:	d038      	beq.n	8000cac <__aeabi_dmul+0xb4>
 8000c3a:	fba0 ce02 	umull	ip, lr, r0, r2
 8000c3e:	f04f 0500 	mov.w	r5, #0
 8000c42:	fbe1 e502 	umlal	lr, r5, r1, r2
 8000c46:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8000c4a:	fbe0 e503 	umlal	lr, r5, r0, r3
 8000c4e:	f04f 0600 	mov.w	r6, #0
 8000c52:	fbe1 5603 	umlal	r5, r6, r1, r3
 8000c56:	f09c 0f00 	teq	ip, #0
 8000c5a:	bf18      	it	ne
 8000c5c:	f04e 0e01 	orrne.w	lr, lr, #1
 8000c60:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8000c64:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8000c68:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8000c6c:	d204      	bcs.n	8000c78 <__aeabi_dmul+0x80>
 8000c6e:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 8000c72:	416d      	adcs	r5, r5
 8000c74:	eb46 0606 	adc.w	r6, r6, r6
 8000c78:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8000c7c:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8000c80:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8000c84:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8000c88:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8000c8c:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000c90:	bf88      	it	hi
 8000c92:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000c96:	d81e      	bhi.n	8000cd6 <__aeabi_dmul+0xde>
 8000c98:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8000c9c:	bf08      	it	eq
 8000c9e:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8000ca2:	f150 0000 	adcs.w	r0, r0, #0
 8000ca6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000caa:	bd70      	pop	{r4, r5, r6, pc}
 8000cac:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8000cb0:	ea46 0101 	orr.w	r1, r6, r1
 8000cb4:	ea40 0002 	orr.w	r0, r0, r2
 8000cb8:	ea81 0103 	eor.w	r1, r1, r3
 8000cbc:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8000cc0:	bfc2      	ittt	gt
 8000cc2:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000cc6:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000cca:	bd70      	popgt	{r4, r5, r6, pc}
 8000ccc:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000cd0:	f04f 0e00 	mov.w	lr, #0
 8000cd4:	3c01      	subs	r4, #1
 8000cd6:	f300 80ab 	bgt.w	8000e30 <__aeabi_dmul+0x238>
 8000cda:	f114 0f36 	cmn.w	r4, #54	; 0x36
 8000cde:	bfde      	ittt	le
 8000ce0:	2000      	movle	r0, #0
 8000ce2:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8000ce6:	bd70      	pople	{r4, r5, r6, pc}
 8000ce8:	f1c4 0400 	rsb	r4, r4, #0
 8000cec:	3c20      	subs	r4, #32
 8000cee:	da35      	bge.n	8000d5c <__aeabi_dmul+0x164>
 8000cf0:	340c      	adds	r4, #12
 8000cf2:	dc1b      	bgt.n	8000d2c <__aeabi_dmul+0x134>
 8000cf4:	f104 0414 	add.w	r4, r4, #20
 8000cf8:	f1c4 0520 	rsb	r5, r4, #32
 8000cfc:	fa00 f305 	lsl.w	r3, r0, r5
 8000d00:	fa20 f004 	lsr.w	r0, r0, r4
 8000d04:	fa01 f205 	lsl.w	r2, r1, r5
 8000d08:	ea40 0002 	orr.w	r0, r0, r2
 8000d0c:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8000d10:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000d14:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000d18:	fa21 f604 	lsr.w	r6, r1, r4
 8000d1c:	eb42 0106 	adc.w	r1, r2, r6
 8000d20:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000d24:	bf08      	it	eq
 8000d26:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000d2a:	bd70      	pop	{r4, r5, r6, pc}
 8000d2c:	f1c4 040c 	rsb	r4, r4, #12
 8000d30:	f1c4 0520 	rsb	r5, r4, #32
 8000d34:	fa00 f304 	lsl.w	r3, r0, r4
 8000d38:	fa20 f005 	lsr.w	r0, r0, r5
 8000d3c:	fa01 f204 	lsl.w	r2, r1, r4
 8000d40:	ea40 0002 	orr.w	r0, r0, r2
 8000d44:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000d48:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000d4c:	f141 0100 	adc.w	r1, r1, #0
 8000d50:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000d54:	bf08      	it	eq
 8000d56:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000d5a:	bd70      	pop	{r4, r5, r6, pc}
 8000d5c:	f1c4 0520 	rsb	r5, r4, #32
 8000d60:	fa00 f205 	lsl.w	r2, r0, r5
 8000d64:	ea4e 0e02 	orr.w	lr, lr, r2
 8000d68:	fa20 f304 	lsr.w	r3, r0, r4
 8000d6c:	fa01 f205 	lsl.w	r2, r1, r5
 8000d70:	ea43 0302 	orr.w	r3, r3, r2
 8000d74:	fa21 f004 	lsr.w	r0, r1, r4
 8000d78:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000d7c:	fa21 f204 	lsr.w	r2, r1, r4
 8000d80:	ea20 0002 	bic.w	r0, r0, r2
 8000d84:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8000d88:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000d8c:	bf08      	it	eq
 8000d8e:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000d92:	bd70      	pop	{r4, r5, r6, pc}
 8000d94:	f094 0f00 	teq	r4, #0
 8000d98:	d10f      	bne.n	8000dba <__aeabi_dmul+0x1c2>
 8000d9a:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 8000d9e:	0040      	lsls	r0, r0, #1
 8000da0:	eb41 0101 	adc.w	r1, r1, r1
 8000da4:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000da8:	bf08      	it	eq
 8000daa:	3c01      	subeq	r4, #1
 8000dac:	d0f7      	beq.n	8000d9e <__aeabi_dmul+0x1a6>
 8000dae:	ea41 0106 	orr.w	r1, r1, r6
 8000db2:	f095 0f00 	teq	r5, #0
 8000db6:	bf18      	it	ne
 8000db8:	4770      	bxne	lr
 8000dba:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 8000dbe:	0052      	lsls	r2, r2, #1
 8000dc0:	eb43 0303 	adc.w	r3, r3, r3
 8000dc4:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000dc8:	bf08      	it	eq
 8000dca:	3d01      	subeq	r5, #1
 8000dcc:	d0f7      	beq.n	8000dbe <__aeabi_dmul+0x1c6>
 8000dce:	ea43 0306 	orr.w	r3, r3, r6
 8000dd2:	4770      	bx	lr
 8000dd4:	ea94 0f0c 	teq	r4, ip
 8000dd8:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000ddc:	bf18      	it	ne
 8000dde:	ea95 0f0c 	teqne	r5, ip
 8000de2:	d00c      	beq.n	8000dfe <__aeabi_dmul+0x206>
 8000de4:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000de8:	bf18      	it	ne
 8000dea:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000dee:	d1d1      	bne.n	8000d94 <__aeabi_dmul+0x19c>
 8000df0:	ea81 0103 	eor.w	r1, r1, r3
 8000df4:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000df8:	f04f 0000 	mov.w	r0, #0
 8000dfc:	bd70      	pop	{r4, r5, r6, pc}
 8000dfe:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000e02:	bf06      	itte	eq
 8000e04:	4610      	moveq	r0, r2
 8000e06:	4619      	moveq	r1, r3
 8000e08:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000e0c:	d019      	beq.n	8000e42 <__aeabi_dmul+0x24a>
 8000e0e:	ea94 0f0c 	teq	r4, ip
 8000e12:	d102      	bne.n	8000e1a <__aeabi_dmul+0x222>
 8000e14:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8000e18:	d113      	bne.n	8000e42 <__aeabi_dmul+0x24a>
 8000e1a:	ea95 0f0c 	teq	r5, ip
 8000e1e:	d105      	bne.n	8000e2c <__aeabi_dmul+0x234>
 8000e20:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8000e24:	bf1c      	itt	ne
 8000e26:	4610      	movne	r0, r2
 8000e28:	4619      	movne	r1, r3
 8000e2a:	d10a      	bne.n	8000e42 <__aeabi_dmul+0x24a>
 8000e2c:	ea81 0103 	eor.w	r1, r1, r3
 8000e30:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000e34:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000e38:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000e3c:	f04f 0000 	mov.w	r0, #0
 8000e40:	bd70      	pop	{r4, r5, r6, pc}
 8000e42:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000e46:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8000e4a:	bd70      	pop	{r4, r5, r6, pc}

08000e4c <__aeabi_ddiv>:
 8000e4c:	b570      	push	{r4, r5, r6, lr}
 8000e4e:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000e52:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000e56:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000e5a:	bf1d      	ittte	ne
 8000e5c:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000e60:	ea94 0f0c 	teqne	r4, ip
 8000e64:	ea95 0f0c 	teqne	r5, ip
 8000e68:	f000 f8a7 	bleq	8000fba <__aeabi_ddiv+0x16e>
 8000e6c:	eba4 0405 	sub.w	r4, r4, r5
 8000e70:	ea81 0e03 	eor.w	lr, r1, r3
 8000e74:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000e78:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8000e7c:	f000 8088 	beq.w	8000f90 <__aeabi_ddiv+0x144>
 8000e80:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000e84:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8000e88:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8000e8c:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8000e90:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8000e94:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8000e98:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8000e9c:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8000ea0:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8000ea4:	429d      	cmp	r5, r3
 8000ea6:	bf08      	it	eq
 8000ea8:	4296      	cmpeq	r6, r2
 8000eaa:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 8000eae:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8000eb2:	d202      	bcs.n	8000eba <__aeabi_ddiv+0x6e>
 8000eb4:	085b      	lsrs	r3, r3, #1
 8000eb6:	ea4f 0232 	mov.w	r2, r2, rrx
 8000eba:	1ab6      	subs	r6, r6, r2
 8000ebc:	eb65 0503 	sbc.w	r5, r5, r3
 8000ec0:	085b      	lsrs	r3, r3, #1
 8000ec2:	ea4f 0232 	mov.w	r2, r2, rrx
 8000ec6:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8000eca:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 8000ece:	ebb6 0e02 	subs.w	lr, r6, r2
 8000ed2:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000ed6:	bf22      	ittt	cs
 8000ed8:	1ab6      	subcs	r6, r6, r2
 8000eda:	4675      	movcs	r5, lr
 8000edc:	ea40 000c 	orrcs.w	r0, r0, ip
 8000ee0:	085b      	lsrs	r3, r3, #1
 8000ee2:	ea4f 0232 	mov.w	r2, r2, rrx
 8000ee6:	ebb6 0e02 	subs.w	lr, r6, r2
 8000eea:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000eee:	bf22      	ittt	cs
 8000ef0:	1ab6      	subcs	r6, r6, r2
 8000ef2:	4675      	movcs	r5, lr
 8000ef4:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8000ef8:	085b      	lsrs	r3, r3, #1
 8000efa:	ea4f 0232 	mov.w	r2, r2, rrx
 8000efe:	ebb6 0e02 	subs.w	lr, r6, r2
 8000f02:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000f06:	bf22      	ittt	cs
 8000f08:	1ab6      	subcs	r6, r6, r2
 8000f0a:	4675      	movcs	r5, lr
 8000f0c:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8000f10:	085b      	lsrs	r3, r3, #1
 8000f12:	ea4f 0232 	mov.w	r2, r2, rrx
 8000f16:	ebb6 0e02 	subs.w	lr, r6, r2
 8000f1a:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000f1e:	bf22      	ittt	cs
 8000f20:	1ab6      	subcs	r6, r6, r2
 8000f22:	4675      	movcs	r5, lr
 8000f24:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8000f28:	ea55 0e06 	orrs.w	lr, r5, r6
 8000f2c:	d018      	beq.n	8000f60 <__aeabi_ddiv+0x114>
 8000f2e:	ea4f 1505 	mov.w	r5, r5, lsl #4
 8000f32:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8000f36:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8000f3a:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8000f3e:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 8000f42:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8000f46:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8000f4a:	d1c0      	bne.n	8000ece <__aeabi_ddiv+0x82>
 8000f4c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000f50:	d10b      	bne.n	8000f6a <__aeabi_ddiv+0x11e>
 8000f52:	ea41 0100 	orr.w	r1, r1, r0
 8000f56:	f04f 0000 	mov.w	r0, #0
 8000f5a:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8000f5e:	e7b6      	b.n	8000ece <__aeabi_ddiv+0x82>
 8000f60:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000f64:	bf04      	itt	eq
 8000f66:	4301      	orreq	r1, r0
 8000f68:	2000      	moveq	r0, #0
 8000f6a:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000f6e:	bf88      	it	hi
 8000f70:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000f74:	f63f aeaf 	bhi.w	8000cd6 <__aeabi_dmul+0xde>
 8000f78:	ebb5 0c03 	subs.w	ip, r5, r3
 8000f7c:	bf04      	itt	eq
 8000f7e:	ebb6 0c02 	subseq.w	ip, r6, r2
 8000f82:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000f86:	f150 0000 	adcs.w	r0, r0, #0
 8000f8a:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000f8e:	bd70      	pop	{r4, r5, r6, pc}
 8000f90:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8000f94:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8000f98:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8000f9c:	bfc2      	ittt	gt
 8000f9e:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000fa2:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000fa6:	bd70      	popgt	{r4, r5, r6, pc}
 8000fa8:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000fac:	f04f 0e00 	mov.w	lr, #0
 8000fb0:	3c01      	subs	r4, #1
 8000fb2:	e690      	b.n	8000cd6 <__aeabi_dmul+0xde>
 8000fb4:	ea45 0e06 	orr.w	lr, r5, r6
 8000fb8:	e68d      	b.n	8000cd6 <__aeabi_dmul+0xde>
 8000fba:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000fbe:	ea94 0f0c 	teq	r4, ip
 8000fc2:	bf08      	it	eq
 8000fc4:	ea95 0f0c 	teqeq	r5, ip
 8000fc8:	f43f af3b 	beq.w	8000e42 <__aeabi_dmul+0x24a>
 8000fcc:	ea94 0f0c 	teq	r4, ip
 8000fd0:	d10a      	bne.n	8000fe8 <__aeabi_ddiv+0x19c>
 8000fd2:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000fd6:	f47f af34 	bne.w	8000e42 <__aeabi_dmul+0x24a>
 8000fda:	ea95 0f0c 	teq	r5, ip
 8000fde:	f47f af25 	bne.w	8000e2c <__aeabi_dmul+0x234>
 8000fe2:	4610      	mov	r0, r2
 8000fe4:	4619      	mov	r1, r3
 8000fe6:	e72c      	b.n	8000e42 <__aeabi_dmul+0x24a>
 8000fe8:	ea95 0f0c 	teq	r5, ip
 8000fec:	d106      	bne.n	8000ffc <__aeabi_ddiv+0x1b0>
 8000fee:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000ff2:	f43f aefd 	beq.w	8000df0 <__aeabi_dmul+0x1f8>
 8000ff6:	4610      	mov	r0, r2
 8000ff8:	4619      	mov	r1, r3
 8000ffa:	e722      	b.n	8000e42 <__aeabi_dmul+0x24a>
 8000ffc:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8001000:	bf18      	it	ne
 8001002:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8001006:	f47f aec5 	bne.w	8000d94 <__aeabi_dmul+0x19c>
 800100a:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 800100e:	f47f af0d 	bne.w	8000e2c <__aeabi_dmul+0x234>
 8001012:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8001016:	f47f aeeb 	bne.w	8000df0 <__aeabi_dmul+0x1f8>
 800101a:	e712      	b.n	8000e42 <__aeabi_dmul+0x24a>

0800101c <__gedf2>:
 800101c:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8001020:	e006      	b.n	8001030 <__cmpdf2+0x4>
 8001022:	bf00      	nop

08001024 <__ledf2>:
 8001024:	f04f 0c01 	mov.w	ip, #1
 8001028:	e002      	b.n	8001030 <__cmpdf2+0x4>
 800102a:	bf00      	nop

0800102c <__cmpdf2>:
 800102c:	f04f 0c01 	mov.w	ip, #1
 8001030:	f84d cd04 	str.w	ip, [sp, #-4]!
 8001034:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001038:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800103c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001040:	bf18      	it	ne
 8001042:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8001046:	d01b      	beq.n	8001080 <__cmpdf2+0x54>
 8001048:	b001      	add	sp, #4
 800104a:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 800104e:	bf0c      	ite	eq
 8001050:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8001054:	ea91 0f03 	teqne	r1, r3
 8001058:	bf02      	ittt	eq
 800105a:	ea90 0f02 	teqeq	r0, r2
 800105e:	2000      	moveq	r0, #0
 8001060:	4770      	bxeq	lr
 8001062:	f110 0f00 	cmn.w	r0, #0
 8001066:	ea91 0f03 	teq	r1, r3
 800106a:	bf58      	it	pl
 800106c:	4299      	cmppl	r1, r3
 800106e:	bf08      	it	eq
 8001070:	4290      	cmpeq	r0, r2
 8001072:	bf2c      	ite	cs
 8001074:	17d8      	asrcs	r0, r3, #31
 8001076:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 800107a:	f040 0001 	orr.w	r0, r0, #1
 800107e:	4770      	bx	lr
 8001080:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001084:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001088:	d102      	bne.n	8001090 <__cmpdf2+0x64>
 800108a:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800108e:	d107      	bne.n	80010a0 <__cmpdf2+0x74>
 8001090:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001094:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001098:	d1d6      	bne.n	8001048 <__cmpdf2+0x1c>
 800109a:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800109e:	d0d3      	beq.n	8001048 <__cmpdf2+0x1c>
 80010a0:	f85d 0b04 	ldr.w	r0, [sp], #4
 80010a4:	4770      	bx	lr
 80010a6:	bf00      	nop

080010a8 <__aeabi_cdrcmple>:
 80010a8:	4684      	mov	ip, r0
 80010aa:	4610      	mov	r0, r2
 80010ac:	4662      	mov	r2, ip
 80010ae:	468c      	mov	ip, r1
 80010b0:	4619      	mov	r1, r3
 80010b2:	4663      	mov	r3, ip
 80010b4:	e000      	b.n	80010b8 <__aeabi_cdcmpeq>
 80010b6:	bf00      	nop

080010b8 <__aeabi_cdcmpeq>:
 80010b8:	b501      	push	{r0, lr}
 80010ba:	f7ff ffb7 	bl	800102c <__cmpdf2>
 80010be:	2800      	cmp	r0, #0
 80010c0:	bf48      	it	mi
 80010c2:	f110 0f00 	cmnmi.w	r0, #0
 80010c6:	bd01      	pop	{r0, pc}

080010c8 <__aeabi_dcmpeq>:
 80010c8:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010cc:	f7ff fff4 	bl	80010b8 <__aeabi_cdcmpeq>
 80010d0:	bf0c      	ite	eq
 80010d2:	2001      	moveq	r0, #1
 80010d4:	2000      	movne	r0, #0
 80010d6:	f85d fb08 	ldr.w	pc, [sp], #8
 80010da:	bf00      	nop

080010dc <__aeabi_dcmplt>:
 80010dc:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010e0:	f7ff ffea 	bl	80010b8 <__aeabi_cdcmpeq>
 80010e4:	bf34      	ite	cc
 80010e6:	2001      	movcc	r0, #1
 80010e8:	2000      	movcs	r0, #0
 80010ea:	f85d fb08 	ldr.w	pc, [sp], #8
 80010ee:	bf00      	nop

080010f0 <__aeabi_dcmple>:
 80010f0:	f84d ed08 	str.w	lr, [sp, #-8]!
 80010f4:	f7ff ffe0 	bl	80010b8 <__aeabi_cdcmpeq>
 80010f8:	bf94      	ite	ls
 80010fa:	2001      	movls	r0, #1
 80010fc:	2000      	movhi	r0, #0
 80010fe:	f85d fb08 	ldr.w	pc, [sp], #8
 8001102:	bf00      	nop

08001104 <__aeabi_dcmpge>:
 8001104:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001108:	f7ff ffce 	bl	80010a8 <__aeabi_cdrcmple>
 800110c:	bf94      	ite	ls
 800110e:	2001      	movls	r0, #1
 8001110:	2000      	movhi	r0, #0
 8001112:	f85d fb08 	ldr.w	pc, [sp], #8
 8001116:	bf00      	nop

08001118 <__aeabi_dcmpgt>:
 8001118:	f84d ed08 	str.w	lr, [sp, #-8]!
 800111c:	f7ff ffc4 	bl	80010a8 <__aeabi_cdrcmple>
 8001120:	bf34      	ite	cc
 8001122:	2001      	movcc	r0, #1
 8001124:	2000      	movcs	r0, #0
 8001126:	f85d fb08 	ldr.w	pc, [sp], #8
 800112a:	bf00      	nop

0800112c <__aeabi_dcmpun>:
 800112c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001130:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001134:	d102      	bne.n	800113c <__aeabi_dcmpun+0x10>
 8001136:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800113a:	d10a      	bne.n	8001152 <__aeabi_dcmpun+0x26>
 800113c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001140:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001144:	d102      	bne.n	800114c <__aeabi_dcmpun+0x20>
 8001146:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800114a:	d102      	bne.n	8001152 <__aeabi_dcmpun+0x26>
 800114c:	f04f 0000 	mov.w	r0, #0
 8001150:	4770      	bx	lr
 8001152:	f04f 0001 	mov.w	r0, #1
 8001156:	4770      	bx	lr

08001158 <__aeabi_d2iz>:
 8001158:	ea4f 0241 	mov.w	r2, r1, lsl #1
 800115c:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 8001160:	d215      	bcs.n	800118e <__aeabi_d2iz+0x36>
 8001162:	d511      	bpl.n	8001188 <__aeabi_d2iz+0x30>
 8001164:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 8001168:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 800116c:	d912      	bls.n	8001194 <__aeabi_d2iz+0x3c>
 800116e:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 8001172:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 8001176:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 800117a:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 800117e:	fa23 f002 	lsr.w	r0, r3, r2
 8001182:	bf18      	it	ne
 8001184:	4240      	negne	r0, r0
 8001186:	4770      	bx	lr
 8001188:	f04f 0000 	mov.w	r0, #0
 800118c:	4770      	bx	lr
 800118e:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 8001192:	d105      	bne.n	80011a0 <__aeabi_d2iz+0x48>
 8001194:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 8001198:	bf08      	it	eq
 800119a:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 800119e:	4770      	bx	lr
 80011a0:	f04f 0000 	mov.w	r0, #0
 80011a4:	4770      	bx	lr
 80011a6:	bf00      	nop

080011a8 <HAL_Init>:
 80011a8:	b580      	push	{r7, lr}
 80011aa:	466f      	mov	r7, sp
 80011ac:	2003      	movs	r0, #3
 80011ae:	f000 f819 	bl	80011e4 <HAL_NVIC_SetPriorityGrouping>
 80011b2:	200f      	movs	r0, #15
 80011b4:	f000 fb84 	bl	80018c0 <HAL_InitTick>
 80011b8:	2800      	cmp	r0, #0
 80011ba:	bf1c      	itt	ne
 80011bc:	2001      	movne	r0, #1
 80011be:	bd80      	popne	{r7, pc}
 80011c0:	f000 f94b 	bl	800145a <HAL_MspInit>
 80011c4:	2000      	movs	r0, #0
 80011c6:	bd80      	pop	{r7, pc}

080011c8 <HAL_IncTick>:
 80011c8:	f241 30d8 	movw	r0, #5080	; 0x13d8
 80011cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011d0:	6801      	ldr	r1, [r0, #0]
 80011d2:	3101      	adds	r1, #1
 80011d4:	6001      	str	r1, [r0, #0]
 80011d6:	4770      	bx	lr

080011d8 <HAL_GetTick>:
 80011d8:	f241 30d8 	movw	r0, #5080	; 0x13d8
 80011dc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80011e0:	6800      	ldr	r0, [r0, #0]
 80011e2:	4770      	bx	lr

080011e4 <HAL_NVIC_SetPriorityGrouping>:
 80011e4:	f64e 510c 	movw	r1, #60684	; 0xed0c
 80011e8:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 80011ec:	f2ce 0100 	movt	r1, #57344	; 0xe000
 80011f0:	680a      	ldr	r2, [r1, #0]
 80011f2:	401a      	ands	r2, r3
 80011f4:	f360 220a 	bfi	r2, r0, #8, #3
 80011f8:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 80011fc:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001200:	6008      	str	r0, [r1, #0]
 8001202:	4770      	bx	lr

08001204 <HAL_NVIC_SetPriority>:
 8001204:	b580      	push	{r7, lr}
 8001206:	466f      	mov	r7, sp
 8001208:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 800120c:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001210:	2800      	cmp	r0, #0
 8001212:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001216:	f000 030f 	and.w	r3, r0, #15
 800121a:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 800121e:	f1a3 0304 	sub.w	r3, r3, #4
 8001222:	4473      	add	r3, lr
 8001224:	bfb8      	it	lt
 8001226:	f103 0c0c 	addlt.w	ip, r3, #12
 800122a:	f8de 0000 	ldr.w	r0, [lr]
 800122e:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001232:	f100 0e04 	add.w	lr, r0, #4
 8001236:	1ec3      	subs	r3, r0, #3
 8001238:	f080 0007 	eor.w	r0, r0, #7
 800123c:	f1be 0f07 	cmp.w	lr, #7
 8001240:	f04f 0e01 	mov.w	lr, #1
 8001244:	bf38      	it	cc
 8001246:	2300      	movcc	r3, #0
 8001248:	2804      	cmp	r0, #4
 800124a:	bf28      	it	cs
 800124c:	2004      	movcs	r0, #4
 800124e:	fa0e f000 	lsl.w	r0, lr, r0
 8001252:	3801      	subs	r0, #1
 8001254:	4008      	ands	r0, r1
 8001256:	fa0e f103 	lsl.w	r1, lr, r3
 800125a:	310f      	adds	r1, #15
 800125c:	4098      	lsls	r0, r3
 800125e:	4011      	ands	r1, r2
 8001260:	4308      	orrs	r0, r1
 8001262:	0100      	lsls	r0, r0, #4
 8001264:	f88c 0000 	strb.w	r0, [ip]
 8001268:	bd80      	pop	{r7, pc}

0800126a <HAL_NVIC_EnableIRQ>:
 800126a:	f000 011f 	and.w	r1, r0, #31
 800126e:	2201      	movs	r2, #1
 8001270:	0940      	lsrs	r0, r0, #5
 8001272:	fa02 f101 	lsl.w	r1, r2, r1
 8001276:	f24e 1200 	movw	r2, #57600	; 0xe100
 800127a:	f2ce 0200 	movt	r2, #57344	; 0xe000
 800127e:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 8001282:	4770      	bx	lr

08001284 <HAL_SYSTICK_IRQHandler>:
 8001284:	f000 b800 	b.w	8001288 <HAL_SYSTICK_Callback>

08001288 <HAL_SYSTICK_Callback>:
 8001288:	4770      	bx	lr

0800128a <HAL_GPIO_Init>:
 800128a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800128c:	af03      	add	r7, sp, #12
 800128e:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001292:	b082      	sub	sp, #8
 8001294:	680e      	ldr	r6, [r1, #0]
 8001296:	2e00      	cmp	r6, #0
 8001298:	f000 80db 	beq.w	8001452 <HAL_GPIO_Init+0x1c8>
 800129c:	f641 0200 	movw	r2, #6144	; 0x1800
 80012a0:	2507      	movs	r5, #7
 80012a2:	f04f 0801 	mov.w	r8, #1
 80012a6:	f6c4 0200 	movt	r2, #18432	; 0x4800
 80012aa:	4290      	cmp	r0, r2
 80012ac:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 80012b0:	ea4f 23b2 	mov.w	r3, r2, ror #10
 80012b4:	bf08      	it	eq
 80012b6:	2506      	moveq	r5, #6
 80012b8:	2b06      	cmp	r3, #6
 80012ba:	bf38      	it	cc
 80012bc:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 80012c0:	2200      	movs	r2, #0
 80012c2:	9500      	str	r5, [sp, #0]
 80012c4:	2500      	movs	r5, #0
 80012c6:	f1a8 0a01 	sub.w	sl, r8, #1
 80012ca:	2301      	movs	r3, #1
 80012cc:	fa03 fb0a 	lsl.w	fp, r3, sl
 80012d0:	ea16 090b 	ands.w	r9, r6, fp
 80012d4:	f000 80b4 	beq.w	8001440 <HAL_GPIO_Init+0x1b6>
 80012d8:	f8d1 e004 	ldr.w	lr, [r1, #4]
 80012dc:	f04e 0610 	orr.w	r6, lr, #16
 80012e0:	2e12      	cmp	r6, #18
 80012e2:	d115      	bne.n	8001310 <HAL_GPIO_Init+0x86>
 80012e4:	f005 061c 	and.w	r6, r5, #28
 80012e8:	230f      	movs	r3, #15
 80012ea:	fa03 fc06 	lsl.w	ip, r3, r6
 80012ee:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 80012f2:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 80012f6:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 80012fa:	4404      	add	r4, r0
 80012fc:	6a23      	ldr	r3, [r4, #32]
 80012fe:	ea23 0c0c 	bic.w	ip, r3, ip
 8001302:	690b      	ldr	r3, [r1, #16]
 8001304:	40b3      	lsls	r3, r6
 8001306:	ea43 030c 	orr.w	r3, r3, ip
 800130a:	6223      	str	r3, [r4, #32]
 800130c:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001310:	6806      	ldr	r6, [r0, #0]
 8001312:	2403      	movs	r4, #3
 8001314:	f00e 0c03 	and.w	ip, lr, #3
 8001318:	f1be 0f12 	cmp.w	lr, #18
 800131c:	fa04 f402 	lsl.w	r4, r4, r2
 8001320:	fa0c f302 	lsl.w	r3, ip, r2
 8001324:	ea26 0604 	bic.w	r6, r6, r4
 8001328:	ea43 0306 	orr.w	r3, r3, r6
 800132c:	ea6f 0604 	mvn.w	r6, r4
 8001330:	6003      	str	r3, [r0, #0]
 8001332:	d816      	bhi.n	8001362 <HAL_GPIO_Init+0xd8>
 8001334:	2301      	movs	r3, #1
 8001336:	fa03 f30e 	lsl.w	r3, r3, lr
 800133a:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 800133e:	bf1f      	itttt	ne
 8001340:	6883      	ldrne	r3, [r0, #8]
 8001342:	4033      	andne	r3, r6
 8001344:	68cc      	ldrne	r4, [r1, #12]
 8001346:	4094      	lslne	r4, r2
 8001348:	bf1f      	itttt	ne
 800134a:	4323      	orrne	r3, r4
 800134c:	6083      	strne	r3, [r0, #8]
 800134e:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001352:	fa03 f30a 	lslne.w	r3, r3, sl
 8001356:	bf1f      	itttt	ne
 8001358:	6844      	ldrne	r4, [r0, #4]
 800135a:	ea24 040b 	bicne.w	r4, r4, fp
 800135e:	4323      	orrne	r3, r4
 8001360:	6043      	strne	r3, [r0, #4]
 8001362:	f1bc 0f03 	cmp.w	ip, #3
 8001366:	d108      	bne.n	800137a <HAL_GPIO_Init+0xf0>
 8001368:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 800136c:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 800136e:	fa03 f30a 	lsl.w	r3, r3, sl
 8001372:	ea24 040b 	bic.w	r4, r4, fp
 8001376:	4323      	orrs	r3, r4
 8001378:	62c3      	str	r3, [r0, #44]	; 0x2c
 800137a:	68c3      	ldr	r3, [r0, #12]
 800137c:	4033      	ands	r3, r6
 800137e:	688e      	ldr	r6, [r1, #8]
 8001380:	4096      	lsls	r6, r2
 8001382:	4333      	orrs	r3, r6
 8001384:	60c3      	str	r3, [r0, #12]
 8001386:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 800138a:	d559      	bpl.n	8001440 <HAL_GPIO_Init+0x1b6>
 800138c:	f241 0360 	movw	r3, #4192	; 0x1060
 8001390:	f005 040c 	and.w	r4, r5, #12
 8001394:	f2c4 0302 	movt	r3, #16386	; 0x4002
 8001398:	461e      	mov	r6, r3
 800139a:	6833      	ldr	r3, [r6, #0]
 800139c:	f043 0301 	orr.w	r3, r3, #1
 80013a0:	6033      	str	r3, [r6, #0]
 80013a2:	6833      	ldr	r3, [r6, #0]
 80013a4:	f240 4600 	movw	r6, #1024	; 0x400
 80013a8:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80013ac:	46b6      	mov	lr, r6
 80013ae:	f003 0301 	and.w	r3, r3, #1
 80013b2:	9301      	str	r3, [sp, #4]
 80013b4:	f02a 0303 	bic.w	r3, sl, #3
 80013b8:	9e01      	ldr	r6, [sp, #4]
 80013ba:	4473      	add	r3, lr
 80013bc:	f64f 4608 	movw	r6, #64520	; 0xfc08
 80013c0:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 80013c4:	46b2      	mov	sl, r6
 80013c6:	260f      	movs	r6, #15
 80013c8:	f853 c00a 	ldr.w	ip, [r3, sl]
 80013cc:	40a6      	lsls	r6, r4
 80013ce:	ea2c 0c06 	bic.w	ip, ip, r6
 80013d2:	9e00      	ldr	r6, [sp, #0]
 80013d4:	fa06 f404 	lsl.w	r4, r6, r4
 80013d8:	ea4c 0604 	orr.w	r6, ip, r4
 80013dc:	f843 600a 	str.w	r6, [r3, sl]
 80013e0:	f8de 3000 	ldr.w	r3, [lr]
 80013e4:	684e      	ldr	r6, [r1, #4]
 80013e6:	ea23 0309 	bic.w	r3, r3, r9
 80013ea:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 80013ee:	bf18      	it	ne
 80013f0:	ea43 0309 	orrne.w	r3, r3, r9
 80013f4:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 80013f8:	f8ce 3000 	str.w	r3, [lr]
 80013fc:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001400:	ea23 0309 	bic.w	r3, r3, r9
 8001404:	bf18      	it	ne
 8001406:	ea43 0309 	orrne.w	r3, r3, r9
 800140a:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800140e:	f8ce 3004 	str.w	r3, [lr, #4]
 8001412:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001416:	ea23 0309 	bic.w	r3, r3, r9
 800141a:	bf18      	it	ne
 800141c:	ea43 0309 	orrne.w	r3, r3, r9
 8001420:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001424:	f8ce 3008 	str.w	r3, [lr, #8]
 8001428:	f240 430c 	movw	r3, #1036	; 0x40c
 800142c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001430:	461c      	mov	r4, r3
 8001432:	6823      	ldr	r3, [r4, #0]
 8001434:	ea23 0309 	bic.w	r3, r3, r9
 8001438:	bf18      	it	ne
 800143a:	ea43 0309 	orrne.w	r3, r3, r9
 800143e:	6023      	str	r3, [r4, #0]
 8001440:	680e      	ldr	r6, [r1, #0]
 8001442:	3202      	adds	r2, #2
 8001444:	3504      	adds	r5, #4
 8001446:	fa36 f308 	lsrs.w	r3, r6, r8
 800144a:	f108 0801 	add.w	r8, r8, #1
 800144e:	f47f af3a 	bne.w	80012c6 <HAL_GPIO_Init+0x3c>
 8001452:	b002      	add	sp, #8
 8001454:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001458:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800145a <HAL_MspInit>:
 800145a:	4770      	bx	lr

0800145c <HAL_RCC_GetSysClockFreq>:
 800145c:	b580      	push	{r7, lr}
 800145e:	466f      	mov	r7, sp
 8001460:	f241 010c 	movw	r1, #4108	; 0x100c
 8001464:	f241 2e00 	movw	lr, #4608	; 0x1200
 8001468:	f242 4c00 	movw	ip, #9216	; 0x2400
 800146c:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001470:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 8001474:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 8001478:	f851 2c04 	ldr.w	r2, [r1, #-4]
 800147c:	6808      	ldr	r0, [r1, #0]
 800147e:	f012 030c 	ands.w	r3, r2, #12
 8001482:	d005      	beq.n	8001490 <HAL_RCC_GetSysClockFreq+0x34>
 8001484:	2b0c      	cmp	r3, #12
 8001486:	bf04      	itt	eq
 8001488:	f000 0003 	andeq.w	r0, r0, #3
 800148c:	2801      	cmpeq	r0, #1
 800148e:	d118      	bne.n	80014c2 <HAL_RCC_GetSysClockFreq+0x66>
 8001490:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 8001494:	f010 0f08 	tst.w	r0, #8
 8001498:	d103      	bne.n	80014a2 <HAL_RCC_GetSysClockFreq+0x46>
 800149a:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 800149e:	0a00      	lsrs	r0, r0, #8
 80014a0:	e002      	b.n	80014a8 <HAL_RCC_GetSysClockFreq+0x4c>
 80014a2:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80014a6:	0900      	lsrs	r0, r0, #4
 80014a8:	f64b 2230 	movw	r2, #47664	; 0xba30
 80014ac:	f000 000f 	and.w	r0, r0, #15
 80014b0:	2b00      	cmp	r3, #0
 80014b2:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014b6:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 80014ba:	4610      	mov	r0, r2
 80014bc:	bf18      	it	ne
 80014be:	2000      	movne	r0, #0
 80014c0:	e00b      	b.n	80014da <HAL_RCC_GetSysClockFreq+0x7e>
 80014c2:	f003 000f 	and.w	r0, r3, #15
 80014c6:	2804      	cmp	r0, #4
 80014c8:	bf04      	itt	eq
 80014ca:	4660      	moveq	r0, ip
 80014cc:	bd80      	popeq	{r7, pc}
 80014ce:	2808      	cmp	r0, #8
 80014d0:	bf04      	itt	eq
 80014d2:	4670      	moveq	r0, lr
 80014d4:	bd80      	popeq	{r7, pc}
 80014d6:	2000      	movs	r0, #0
 80014d8:	2200      	movs	r2, #0
 80014da:	2b0c      	cmp	r3, #12
 80014dc:	bf18      	it	ne
 80014de:	bd80      	popne	{r7, pc}
 80014e0:	6808      	ldr	r0, [r1, #0]
 80014e2:	f000 0303 	and.w	r3, r0, #3
 80014e6:	6808      	ldr	r0, [r1, #0]
 80014e8:	2b03      	cmp	r3, #3
 80014ea:	f3c0 1002 	ubfx	r0, r0, #4, #3
 80014ee:	f100 0001 	add.w	r0, r0, #1
 80014f2:	d003      	beq.n	80014fc <HAL_RCC_GetSysClockFreq+0xa0>
 80014f4:	2b02      	cmp	r3, #2
 80014f6:	46e6      	mov	lr, ip
 80014f8:	bf18      	it	ne
 80014fa:	4696      	movne	lr, r2
 80014fc:	680a      	ldr	r2, [r1, #0]
 80014fe:	fbbe f0f0 	udiv	r0, lr, r0
 8001502:	f3c2 2206 	ubfx	r2, r2, #8, #7
 8001506:	6809      	ldr	r1, [r1, #0]
 8001508:	4350      	muls	r0, r2
 800150a:	2202      	movs	r2, #2
 800150c:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001510:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001514:	fbb0 f0f1 	udiv	r0, r0, r1
 8001518:	bd80      	pop	{r7, pc}

0800151a <HAL_RCC_GetPCLK1Freq>:
 800151a:	f240 0014 	movw	r0, #20
 800151e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001522:	f64b 2228 	movw	r2, #47656	; 0xba28
 8001526:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800152a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800152e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001532:	6800      	ldr	r0, [r0, #0]
 8001534:	6809      	ldr	r1, [r1, #0]
 8001536:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800153a:	5c51      	ldrb	r1, [r2, r1]
 800153c:	f001 011f 	and.w	r1, r1, #31
 8001540:	40c8      	lsrs	r0, r1
 8001542:	4770      	bx	lr

08001544 <HAL_RCC_GetPCLK2Freq>:
 8001544:	f240 0014 	movw	r0, #20
 8001548:	f241 0108 	movw	r1, #4104	; 0x1008
 800154c:	f64b 2228 	movw	r2, #47656	; 0xba28
 8001550:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001554:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001558:	f6c0 0200 	movt	r2, #2048	; 0x800
 800155c:	6800      	ldr	r0, [r0, #0]
 800155e:	6809      	ldr	r1, [r1, #0]
 8001560:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 8001564:	5c51      	ldrb	r1, [r2, r1]
 8001566:	f001 011f 	and.w	r1, r1, #31
 800156a:	40c8      	lsrs	r0, r1
 800156c:	4770      	bx	lr

0800156e <HAL_RCC_GetClockConfig>:
 800156e:	220f      	movs	r2, #15
 8001570:	6002      	str	r2, [r0, #0]
 8001572:	f241 0208 	movw	r2, #4104	; 0x1008
 8001576:	f2c4 0202 	movt	r2, #16386	; 0x4002
 800157a:	6813      	ldr	r3, [r2, #0]
 800157c:	f003 0303 	and.w	r3, r3, #3
 8001580:	6043      	str	r3, [r0, #4]
 8001582:	6813      	ldr	r3, [r2, #0]
 8001584:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 8001588:	6083      	str	r3, [r0, #8]
 800158a:	6813      	ldr	r3, [r2, #0]
 800158c:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 8001590:	60c3      	str	r3, [r0, #12]
 8001592:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 8001596:	6812      	ldr	r2, [r2, #0]
 8001598:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 800159c:	6102      	str	r2, [r0, #16]
 800159e:	f242 0000 	movw	r0, #8192	; 0x2000
 80015a2:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80015a6:	6800      	ldr	r0, [r0, #0]
 80015a8:	f000 0007 	and.w	r0, r0, #7
 80015ac:	6008      	str	r0, [r1, #0]
 80015ae:	4770      	bx	lr

080015b0 <HAL_TIM_Base_Init>:
 80015b0:	b5d0      	push	{r4, r6, r7, lr}
 80015b2:	af02      	add	r7, sp, #8
 80015b4:	4604      	mov	r4, r0
 80015b6:	2c00      	cmp	r4, #0
 80015b8:	bf04      	itt	eq
 80015ba:	2001      	moveq	r0, #1
 80015bc:	bdd0      	popeq	{r4, r6, r7, pc}
 80015be:	6c20      	ldr	r0, [r4, #64]	; 0x40
 80015c0:	b920      	cbnz	r0, 80015cc <HAL_TIM_Base_Init+0x1c>
 80015c2:	2000      	movs	r0, #0
 80015c4:	63e0      	str	r0, [r4, #60]	; 0x3c
 80015c6:	4620      	mov	r0, r4
 80015c8:	f000 f892 	bl	80016f0 <HAL_TIM_Base_MspInit>
 80015cc:	2002      	movs	r0, #2
 80015ce:	f640 32ff 	movw	r2, #3071	; 0xbff
 80015d2:	6420      	str	r0, [r4, #64]	; 0x40
 80015d4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015d8:	6820      	ldr	r0, [r4, #0]
 80015da:	6801      	ldr	r1, [r0, #0]
 80015dc:	4290      	cmp	r0, r2
 80015de:	dc0f      	bgt.n	8001600 <HAL_TIM_Base_Init+0x50>
 80015e0:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80015e4:	bf1e      	ittt	ne
 80015e6:	f240 4200 	movwne	r2, #1024	; 0x400
 80015ea:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 80015ee:	4290      	cmpne	r0, r2
 80015f0:	d018      	beq.n	8001624 <HAL_TIM_Base_Init+0x74>
 80015f2:	f640 0200 	movw	r2, #2048	; 0x800
 80015f6:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80015fa:	4290      	cmp	r0, r2
 80015fc:	d012      	beq.n	8001624 <HAL_TIM_Base_Init+0x74>
 80015fe:	e015      	b.n	800162c <HAL_TIM_Base_Init+0x7c>
 8001600:	f640 4200 	movw	r2, #3072	; 0xc00
 8001604:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001608:	4290      	cmp	r0, r2
 800160a:	bf1e      	ittt	ne
 800160c:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001610:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001614:	4290      	cmpne	r0, r2
 8001616:	d005      	beq.n	8001624 <HAL_TIM_Base_Init+0x74>
 8001618:	f642 4200 	movw	r2, #11264	; 0x2c00
 800161c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001620:	4290      	cmp	r0, r2
 8001622:	d103      	bne.n	800162c <HAL_TIM_Base_Init+0x7c>
 8001624:	68a2      	ldr	r2, [r4, #8]
 8001626:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 800162a:	4311      	orrs	r1, r2
 800162c:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001630:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001634:	4290      	cmp	r0, r2
 8001636:	dd14      	ble.n	8001662 <HAL_TIM_Base_Init+0xb2>
 8001638:	f643 72ff 	movw	r2, #16383	; 0x3fff
 800163c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001640:	4290      	cmp	r0, r2
 8001642:	dd1a      	ble.n	800167a <HAL_TIM_Base_Init+0xca>
 8001644:	f244 0200 	movw	r2, #16384	; 0x4000
 8001648:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800164c:	4290      	cmp	r0, r2
 800164e:	bf1e      	ittt	ne
 8001650:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001654:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001658:	4290      	cmpne	r0, r2
 800165a:	d027      	beq.n	80016ac <HAL_TIM_Base_Init+0xfc>
 800165c:	f244 4200 	movw	r2, #17408	; 0x4400
 8001660:	e013      	b.n	800168a <HAL_TIM_Base_Init+0xda>
 8001662:	f240 72ff 	movw	r2, #2047	; 0x7ff
 8001666:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800166a:	4290      	cmp	r0, r2
 800166c:	dc12      	bgt.n	8001694 <HAL_TIM_Base_Init+0xe4>
 800166e:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001672:	d01b      	beq.n	80016ac <HAL_TIM_Base_Init+0xfc>
 8001674:	f240 4200 	movw	r2, #1024	; 0x400
 8001678:	e014      	b.n	80016a4 <HAL_TIM_Base_Init+0xf4>
 800167a:	f642 4200 	movw	r2, #11264	; 0x2c00
 800167e:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001682:	4290      	cmp	r0, r2
 8001684:	d012      	beq.n	80016ac <HAL_TIM_Base_Init+0xfc>
 8001686:	f243 4200 	movw	r2, #13312	; 0x3400
 800168a:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800168e:	4290      	cmp	r0, r2
 8001690:	d00c      	beq.n	80016ac <HAL_TIM_Base_Init+0xfc>
 8001692:	e00f      	b.n	80016b4 <HAL_TIM_Base_Init+0x104>
 8001694:	f640 0200 	movw	r2, #2048	; 0x800
 8001698:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800169c:	4290      	cmp	r0, r2
 800169e:	d005      	beq.n	80016ac <HAL_TIM_Base_Init+0xfc>
 80016a0:	f640 4200 	movw	r2, #3072	; 0xc00
 80016a4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016a8:	4290      	cmp	r0, r2
 80016aa:	d103      	bne.n	80016b4 <HAL_TIM_Base_Init+0x104>
 80016ac:	6922      	ldr	r2, [r4, #16]
 80016ae:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 80016b2:	4311      	orrs	r1, r2
 80016b4:	69a2      	ldr	r2, [r4, #24]
 80016b6:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 80016ba:	4311      	orrs	r1, r2
 80016bc:	6001      	str	r1, [r0, #0]
 80016be:	68e1      	ldr	r1, [r4, #12]
 80016c0:	62c1      	str	r1, [r0, #44]	; 0x2c
 80016c2:	6861      	ldr	r1, [r4, #4]
 80016c4:	6281      	str	r1, [r0, #40]	; 0x28
 80016c6:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 80016ca:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 80016ce:	ea4f 21b1 	mov.w	r1, r1, ror #10
 80016d2:	2907      	cmp	r1, #7
 80016d4:	d807      	bhi.n	80016e6 <HAL_TIM_Base_Init+0x136>
 80016d6:	2201      	movs	r2, #1
 80016d8:	fa02 f101 	lsl.w	r1, r2, r1
 80016dc:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 80016e0:	bf1c      	itt	ne
 80016e2:	6961      	ldrne	r1, [r4, #20]
 80016e4:	6301      	strne	r1, [r0, #48]	; 0x30
 80016e6:	2101      	movs	r1, #1
 80016e8:	6141      	str	r1, [r0, #20]
 80016ea:	2000      	movs	r0, #0
 80016ec:	6421      	str	r1, [r4, #64]	; 0x40
 80016ee:	bdd0      	pop	{r4, r6, r7, pc}

080016f0 <HAL_TIM_Base_MspInit>:
 80016f0:	4770      	bx	lr

080016f2 <HAL_TIM_Base_Start_IT>:
 80016f2:	6800      	ldr	r0, [r0, #0]
 80016f4:	68c1      	ldr	r1, [r0, #12]
 80016f6:	f041 0101 	orr.w	r1, r1, #1
 80016fa:	60c1      	str	r1, [r0, #12]
 80016fc:	2107      	movs	r1, #7
 80016fe:	6882      	ldr	r2, [r0, #8]
 8001700:	f2c0 0101 	movt	r1, #1
 8001704:	400a      	ands	r2, r1
 8001706:	2a06      	cmp	r2, #6
 8001708:	d008      	beq.n	800171c <HAL_TIM_Base_Start_IT+0x2a>
 800170a:	6882      	ldr	r2, [r0, #8]
 800170c:	4011      	ands	r1, r2
 800170e:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001712:	bf1e      	ittt	ne
 8001714:	6801      	ldrne	r1, [r0, #0]
 8001716:	f041 0101 	orrne.w	r1, r1, #1
 800171a:	6001      	strne	r1, [r0, #0]
 800171c:	2000      	movs	r0, #0
 800171e:	4770      	bx	lr

08001720 <HAL_TIM_IRQHandler>:
 8001720:	b5d0      	push	{r4, r6, r7, lr}
 8001722:	af02      	add	r7, sp, #8
 8001724:	4604      	mov	r4, r0
 8001726:	6820      	ldr	r0, [r4, #0]
 8001728:	6901      	ldr	r1, [r0, #16]
 800172a:	f011 0f02 	tst.w	r1, #2
 800172e:	bf1c      	itt	ne
 8001730:	68c1      	ldrne	r1, [r0, #12]
 8001732:	f011 0f02 	tstne.w	r1, #2
 8001736:	d015      	beq.n	8001764 <HAL_TIM_IRQHandler+0x44>
 8001738:	f06f 0102 	mvn.w	r1, #2
 800173c:	6101      	str	r1, [r0, #16]
 800173e:	2101      	movs	r1, #1
 8001740:	61e1      	str	r1, [r4, #28]
 8001742:	6980      	ldr	r0, [r0, #24]
 8001744:	f010 0f03 	tst.w	r0, #3
 8001748:	d003      	beq.n	8001752 <HAL_TIM_IRQHandler+0x32>
 800174a:	4620      	mov	r0, r4
 800174c:	f000 f8b1 	bl	80018b2 <HAL_TIM_IC_CaptureCallback>
 8001750:	e005      	b.n	800175e <HAL_TIM_IRQHandler+0x3e>
 8001752:	4620      	mov	r0, r4
 8001754:	f000 f8ae 	bl	80018b4 <HAL_TIM_OC_DelayElapsedCallback>
 8001758:	4620      	mov	r0, r4
 800175a:	f000 f8ac 	bl	80018b6 <HAL_TIM_PWM_PulseFinishedCallback>
 800175e:	2000      	movs	r0, #0
 8001760:	61e0      	str	r0, [r4, #28]
 8001762:	6820      	ldr	r0, [r4, #0]
 8001764:	6901      	ldr	r1, [r0, #16]
 8001766:	f011 0f04 	tst.w	r1, #4
 800176a:	bf1c      	itt	ne
 800176c:	68c1      	ldrne	r1, [r0, #12]
 800176e:	f011 0f04 	tstne.w	r1, #4
 8001772:	d015      	beq.n	80017a0 <HAL_TIM_IRQHandler+0x80>
 8001774:	f06f 0104 	mvn.w	r1, #4
 8001778:	6101      	str	r1, [r0, #16]
 800177a:	2102      	movs	r1, #2
 800177c:	61e1      	str	r1, [r4, #28]
 800177e:	6980      	ldr	r0, [r0, #24]
 8001780:	f410 7f40 	tst.w	r0, #768	; 0x300
 8001784:	d003      	beq.n	800178e <HAL_TIM_IRQHandler+0x6e>
 8001786:	4620      	mov	r0, r4
 8001788:	f000 f893 	bl	80018b2 <HAL_TIM_IC_CaptureCallback>
 800178c:	e005      	b.n	800179a <HAL_TIM_IRQHandler+0x7a>
 800178e:	4620      	mov	r0, r4
 8001790:	f000 f890 	bl	80018b4 <HAL_TIM_OC_DelayElapsedCallback>
 8001794:	4620      	mov	r0, r4
 8001796:	f000 f88e 	bl	80018b6 <HAL_TIM_PWM_PulseFinishedCallback>
 800179a:	2000      	movs	r0, #0
 800179c:	61e0      	str	r0, [r4, #28]
 800179e:	6820      	ldr	r0, [r4, #0]
 80017a0:	6901      	ldr	r1, [r0, #16]
 80017a2:	f011 0f08 	tst.w	r1, #8
 80017a6:	bf1c      	itt	ne
 80017a8:	68c1      	ldrne	r1, [r0, #12]
 80017aa:	f011 0f08 	tstne.w	r1, #8
 80017ae:	d015      	beq.n	80017dc <HAL_TIM_IRQHandler+0xbc>
 80017b0:	f06f 0108 	mvn.w	r1, #8
 80017b4:	6101      	str	r1, [r0, #16]
 80017b6:	2104      	movs	r1, #4
 80017b8:	61e1      	str	r1, [r4, #28]
 80017ba:	69c0      	ldr	r0, [r0, #28]
 80017bc:	f010 0f03 	tst.w	r0, #3
 80017c0:	d003      	beq.n	80017ca <HAL_TIM_IRQHandler+0xaa>
 80017c2:	4620      	mov	r0, r4
 80017c4:	f000 f875 	bl	80018b2 <HAL_TIM_IC_CaptureCallback>
 80017c8:	e005      	b.n	80017d6 <HAL_TIM_IRQHandler+0xb6>
 80017ca:	4620      	mov	r0, r4
 80017cc:	f000 f872 	bl	80018b4 <HAL_TIM_OC_DelayElapsedCallback>
 80017d0:	4620      	mov	r0, r4
 80017d2:	f000 f870 	bl	80018b6 <HAL_TIM_PWM_PulseFinishedCallback>
 80017d6:	2000      	movs	r0, #0
 80017d8:	61e0      	str	r0, [r4, #28]
 80017da:	6820      	ldr	r0, [r4, #0]
 80017dc:	6901      	ldr	r1, [r0, #16]
 80017de:	f011 0f10 	tst.w	r1, #16
 80017e2:	bf1c      	itt	ne
 80017e4:	68c1      	ldrne	r1, [r0, #12]
 80017e6:	f011 0f10 	tstne.w	r1, #16
 80017ea:	d015      	beq.n	8001818 <HAL_TIM_IRQHandler+0xf8>
 80017ec:	f06f 0110 	mvn.w	r1, #16
 80017f0:	6101      	str	r1, [r0, #16]
 80017f2:	2108      	movs	r1, #8
 80017f4:	61e1      	str	r1, [r4, #28]
 80017f6:	69c0      	ldr	r0, [r0, #28]
 80017f8:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017fc:	d003      	beq.n	8001806 <HAL_TIM_IRQHandler+0xe6>
 80017fe:	4620      	mov	r0, r4
 8001800:	f000 f857 	bl	80018b2 <HAL_TIM_IC_CaptureCallback>
 8001804:	e005      	b.n	8001812 <HAL_TIM_IRQHandler+0xf2>
 8001806:	4620      	mov	r0, r4
 8001808:	f000 f854 	bl	80018b4 <HAL_TIM_OC_DelayElapsedCallback>
 800180c:	4620      	mov	r0, r4
 800180e:	f000 f852 	bl	80018b6 <HAL_TIM_PWM_PulseFinishedCallback>
 8001812:	2000      	movs	r0, #0
 8001814:	61e0      	str	r0, [r4, #28]
 8001816:	6820      	ldr	r0, [r4, #0]
 8001818:	6901      	ldr	r1, [r0, #16]
 800181a:	f011 0f01 	tst.w	r1, #1
 800181e:	bf1c      	itt	ne
 8001820:	68c1      	ldrne	r1, [r0, #12]
 8001822:	f011 0f01 	tstne.w	r1, #1
 8001826:	d006      	beq.n	8001836 <HAL_TIM_IRQHandler+0x116>
 8001828:	f06f 0101 	mvn.w	r1, #1
 800182c:	6101      	str	r1, [r0, #16]
 800182e:	4620      	mov	r0, r4
 8001830:	f000 f894 	bl	800195c <HAL_TIM_PeriodElapsedCallback>
 8001834:	6820      	ldr	r0, [r4, #0]
 8001836:	6901      	ldr	r1, [r0, #16]
 8001838:	f011 0f80 	tst.w	r1, #128	; 0x80
 800183c:	bf1c      	itt	ne
 800183e:	68c1      	ldrne	r1, [r0, #12]
 8001840:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001844:	d006      	beq.n	8001854 <HAL_TIM_IRQHandler+0x134>
 8001846:	f06f 0180 	mvn.w	r1, #128	; 0x80
 800184a:	6101      	str	r1, [r0, #16]
 800184c:	4620      	mov	r0, r4
 800184e:	f000 f835 	bl	80018bc <HAL_TIMEx_BreakCallback>
 8001852:	6820      	ldr	r0, [r4, #0]
 8001854:	6901      	ldr	r1, [r0, #16]
 8001856:	f411 7f80 	tst.w	r1, #256	; 0x100
 800185a:	bf1c      	itt	ne
 800185c:	68c1      	ldrne	r1, [r0, #12]
 800185e:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001862:	d006      	beq.n	8001872 <HAL_TIM_IRQHandler+0x152>
 8001864:	f46f 7180 	mvn.w	r1, #256	; 0x100
 8001868:	6101      	str	r1, [r0, #16]
 800186a:	4620      	mov	r0, r4
 800186c:	f000 f827 	bl	80018be <HAL_TIMEx_Break2Callback>
 8001870:	6820      	ldr	r0, [r4, #0]
 8001872:	6901      	ldr	r1, [r0, #16]
 8001874:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001878:	bf1c      	itt	ne
 800187a:	68c1      	ldrne	r1, [r0, #12]
 800187c:	f011 0f40 	tstne.w	r1, #64	; 0x40
 8001880:	d006      	beq.n	8001890 <HAL_TIM_IRQHandler+0x170>
 8001882:	f06f 0140 	mvn.w	r1, #64	; 0x40
 8001886:	6101      	str	r1, [r0, #16]
 8001888:	4620      	mov	r0, r4
 800188a:	f000 f815 	bl	80018b8 <HAL_TIM_TriggerCallback>
 800188e:	6820      	ldr	r0, [r4, #0]
 8001890:	6901      	ldr	r1, [r0, #16]
 8001892:	f011 0f20 	tst.w	r1, #32
 8001896:	bf1c      	itt	ne
 8001898:	68c1      	ldrne	r1, [r0, #12]
 800189a:	f011 0f20 	tstne.w	r1, #32
 800189e:	d100      	bne.n	80018a2 <HAL_TIM_IRQHandler+0x182>
 80018a0:	bdd0      	pop	{r4, r6, r7, pc}
 80018a2:	f06f 0120 	mvn.w	r1, #32
 80018a6:	6101      	str	r1, [r0, #16]
 80018a8:	4620      	mov	r0, r4
 80018aa:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80018ae:	f000 b804 	b.w	80018ba <HAL_TIMEx_CommutationCallback>

080018b2 <HAL_TIM_IC_CaptureCallback>:
 80018b2:	4770      	bx	lr

080018b4 <HAL_TIM_OC_DelayElapsedCallback>:
 80018b4:	4770      	bx	lr

080018b6 <HAL_TIM_PWM_PulseFinishedCallback>:
 80018b6:	4770      	bx	lr

080018b8 <HAL_TIM_TriggerCallback>:
 80018b8:	4770      	bx	lr

080018ba <HAL_TIMEx_CommutationCallback>:
 80018ba:	4770      	bx	lr

080018bc <HAL_TIMEx_BreakCallback>:
 80018bc:	4770      	bx	lr

080018be <HAL_TIMEx_Break2Callback>:
 80018be:	4770      	bx	lr

080018c0 <HAL_InitTick>:
 80018c0:	b5b0      	push	{r4, r5, r7, lr}
 80018c2:	af02      	add	r7, sp, #8
 80018c4:	b086      	sub	sp, #24
 80018c6:	4601      	mov	r1, r0
 80018c8:	2036      	movs	r0, #54	; 0x36
 80018ca:	2200      	movs	r2, #0
 80018cc:	2400      	movs	r4, #0
 80018ce:	f7ff fc99 	bl	8001204 <HAL_NVIC_SetPriority>
 80018d2:	2036      	movs	r0, #54	; 0x36
 80018d4:	f7ff fcc9 	bl	800126a <HAL_NVIC_EnableIRQ>
 80018d8:	f241 0058 	movw	r0, #4184	; 0x1058
 80018dc:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80018e0:	6801      	ldr	r1, [r0, #0]
 80018e2:	f041 0110 	orr.w	r1, r1, #16
 80018e6:	6001      	str	r1, [r0, #0]
 80018e8:	4669      	mov	r1, sp
 80018ea:	6800      	ldr	r0, [r0, #0]
 80018ec:	f000 0010 	and.w	r0, r0, #16
 80018f0:	9001      	str	r0, [sp, #4]
 80018f2:	9801      	ldr	r0, [sp, #4]
 80018f4:	a801      	add	r0, sp, #4
 80018f6:	f7ff fe3a 	bl	800156e <HAL_RCC_GetClockConfig>
 80018fa:	9d04      	ldr	r5, [sp, #16]
 80018fc:	f7ff fe0d 	bl	800151a <HAL_RCC_GetPCLK1Freq>
 8001900:	2d00      	cmp	r5, #0
 8001902:	f241 31dc 	movw	r1, #5084	; 0x13dc
 8001906:	f241 0200 	movw	r2, #4096	; 0x1000
 800190a:	f240 33e7 	movw	r3, #999	; 0x3e7
 800190e:	bf18      	it	ne
 8001910:	2501      	movne	r5, #1
 8001912:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001916:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800191a:	40a8      	lsls	r0, r5
 800191c:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001920:	618c      	str	r4, [r1, #24]
 8001922:	f2c4 351b 	movt	r5, #17179	; 0x431b
 8001926:	fba0 0505 	umull	r0, r5, r0, r5
 800192a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800192e:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001932:	e9c1 2000 	strd	r2, r0, [r1]
 8001936:	4608      	mov	r0, r1
 8001938:	e9c1 4302 	strd	r4, r3, [r1, #8]
 800193c:	610c      	str	r4, [r1, #16]
 800193e:	f7ff fe37 	bl	80015b0 <HAL_TIM_Base_Init>
 8001942:	2800      	cmp	r0, #0
 8001944:	bf1e      	ittt	ne
 8001946:	2001      	movne	r0, #1
 8001948:	b006      	addne	sp, #24
 800194a:	bdb0      	popne	{r4, r5, r7, pc}
 800194c:	f241 30dc 	movw	r0, #5084	; 0x13dc
 8001950:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001954:	f7ff fecd 	bl	80016f2 <HAL_TIM_Base_Start_IT>
 8001958:	b006      	add	sp, #24
 800195a:	bdb0      	pop	{r4, r5, r7, pc}

0800195c <HAL_TIM_PeriodElapsedCallback>:
 800195c:	f7ff bc34 	b.w	80011c8 <HAL_IncTick>

08001960 <TIM6_DAC_IRQHandler>:
 8001960:	f241 30dc 	movw	r0, #5084	; 0x13dc
 8001964:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001968:	f7ff beda 	b.w	8001720 <HAL_TIM_IRQHandler>

0800196c <HAL_UART_Init>:
 800196c:	b5d0      	push	{r4, r6, r7, lr}
 800196e:	af02      	add	r7, sp, #8
 8001970:	4604      	mov	r4, r0
 8001972:	b194      	cbz	r4, 800199a <HAL_UART_Init+0x2e>
 8001974:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001976:	b920      	cbnz	r0, 8001982 <HAL_UART_Init+0x16>
 8001978:	2000      	movs	r0, #0
 800197a:	6720      	str	r0, [r4, #112]	; 0x70
 800197c:	4620      	mov	r0, r4
 800197e:	f000 f826 	bl	80019ce <HAL_UART_MspInit>
 8001982:	2024      	movs	r0, #36	; 0x24
 8001984:	6760      	str	r0, [r4, #116]	; 0x74
 8001986:	6820      	ldr	r0, [r4, #0]
 8001988:	6801      	ldr	r1, [r0, #0]
 800198a:	f021 0101 	bic.w	r1, r1, #1
 800198e:	6001      	str	r1, [r0, #0]
 8001990:	4620      	mov	r0, r4
 8001992:	f000 f81d 	bl	80019d0 <UART_SetConfig>
 8001996:	2801      	cmp	r0, #1
 8001998:	d101      	bne.n	800199e <HAL_UART_Init+0x32>
 800199a:	2001      	movs	r0, #1
 800199c:	bdd0      	pop	{r4, r6, r7, pc}
 800199e:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80019a0:	2800      	cmp	r0, #0
 80019a2:	bf1c      	itt	ne
 80019a4:	4620      	movne	r0, r4
 80019a6:	f000 f944 	blne	8001c32 <UART_AdvFeatureConfig>
 80019aa:	6820      	ldr	r0, [r4, #0]
 80019ac:	6841      	ldr	r1, [r0, #4]
 80019ae:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 80019b2:	6041      	str	r1, [r0, #4]
 80019b4:	6881      	ldr	r1, [r0, #8]
 80019b6:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 80019ba:	6081      	str	r1, [r0, #8]
 80019bc:	6801      	ldr	r1, [r0, #0]
 80019be:	f041 0101 	orr.w	r1, r1, #1
 80019c2:	6001      	str	r1, [r0, #0]
 80019c4:	4620      	mov	r0, r4
 80019c6:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80019ca:	f000 b99d 	b.w	8001d08 <UART_CheckIdleState>

080019ce <HAL_UART_MspInit>:
 80019ce:	4770      	bx	lr

080019d0 <UART_SetConfig>:
 80019d0:	b5b0      	push	{r4, r5, r7, lr}
 80019d2:	af02      	add	r7, sp, #8
 80019d4:	4604      	mov	r4, r0
 80019d6:	f646 15f3 	movw	r5, #27123	; 0x69f3
 80019da:	f248 0e00 	movw	lr, #32768	; 0x8000
 80019de:	f241 0c88 	movw	ip, #4232	; 0x1088
 80019e2:	6821      	ldr	r1, [r4, #0]
 80019e4:	68a0      	ldr	r0, [r4, #8]
 80019e6:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 80019ea:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 80019ee:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 80019f2:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 80019f6:	4310      	orrs	r0, r2
 80019f8:	69e2      	ldr	r2, [r4, #28]
 80019fa:	4571      	cmp	r1, lr
 80019fc:	ea40 0003 	orr.w	r0, r0, r3
 8001a00:	680b      	ldr	r3, [r1, #0]
 8001a02:	ea40 0002 	orr.w	r0, r0, r2
 8001a06:	ea03 0305 	and.w	r3, r3, r5
 8001a0a:	f04f 0510 	mov.w	r5, #16
 8001a0e:	ea40 0003 	orr.w	r0, r0, r3
 8001a12:	6008      	str	r0, [r1, #0]
 8001a14:	6848      	ldr	r0, [r1, #4]
 8001a16:	68e3      	ldr	r3, [r4, #12]
 8001a18:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a1c:	ea40 0003 	orr.w	r0, r0, r3
 8001a20:	6048      	str	r0, [r1, #4]
 8001a22:	69a0      	ldr	r0, [r4, #24]
 8001a24:	bf1c      	itt	ne
 8001a26:	6a23      	ldrne	r3, [r4, #32]
 8001a28:	4318      	orrne	r0, r3
 8001a2a:	688b      	ldr	r3, [r1, #8]
 8001a2c:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a30:	4318      	orrs	r0, r3
 8001a32:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a36:	6088      	str	r0, [r1, #8]
 8001a38:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a3c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a40:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a44:	4299      	cmp	r1, r3
 8001a46:	dc15      	bgt.n	8001a74 <UART_SetConfig+0xa4>
 8001a48:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a4c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a50:	4299      	cmp	r1, r3
 8001a52:	d024      	beq.n	8001a9e <UART_SetConfig+0xce>
 8001a54:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a58:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a5c:	4299      	cmp	r1, r3
 8001a5e:	d022      	beq.n	8001aa6 <UART_SetConfig+0xd6>
 8001a60:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001a64:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a68:	4299      	cmp	r1, r3
 8001a6a:	d131      	bne.n	8001ad0 <UART_SetConfig+0x100>
 8001a6c:	f8dc 3000 	ldr.w	r3, [ip]
 8001a70:	099d      	lsrs	r5, r3, #6
 8001a72:	e023      	b.n	8001abc <UART_SetConfig+0xec>
 8001a74:	f245 0300 	movw	r3, #20480	; 0x5000
 8001a78:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a7c:	4299      	cmp	r1, r3
 8001a7e:	d016      	beq.n	8001aae <UART_SetConfig+0xde>
 8001a80:	4571      	cmp	r1, lr
 8001a82:	d018      	beq.n	8001ab6 <UART_SetConfig+0xe6>
 8001a84:	f643 0300 	movw	r3, #14336	; 0x3800
 8001a88:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001a8c:	4299      	cmp	r1, r3
 8001a8e:	d11f      	bne.n	8001ad0 <UART_SetConfig+0x100>
 8001a90:	f8dc 5000 	ldr.w	r5, [ip]
 8001a94:	f64b 2360 	movw	r3, #47712	; 0xba60
 8001a98:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001a9c:	e012      	b.n	8001ac4 <UART_SetConfig+0xf4>
 8001a9e:	f8dc 3000 	ldr.w	r3, [ip]
 8001aa2:	089d      	lsrs	r5, r3, #2
 8001aa4:	e00a      	b.n	8001abc <UART_SetConfig+0xec>
 8001aa6:	f8dc 3000 	ldr.w	r3, [ip]
 8001aaa:	091d      	lsrs	r5, r3, #4
 8001aac:	e006      	b.n	8001abc <UART_SetConfig+0xec>
 8001aae:	f8dc 3000 	ldr.w	r3, [ip]
 8001ab2:	0a1d      	lsrs	r5, r3, #8
 8001ab4:	e002      	b.n	8001abc <UART_SetConfig+0xec>
 8001ab6:	f8dc 3000 	ldr.w	r3, [ip]
 8001aba:	0a9d      	lsrs	r5, r3, #10
 8001abc:	f64b 2370 	movw	r3, #47728	; 0xba70
 8001ac0:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001ac4:	f005 0503 	and.w	r5, r5, #3
 8001ac8:	f085 0502 	eor.w	r5, r5, #2
 8001acc:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001ad0:	4571      	cmp	r1, lr
 8001ad2:	d012      	beq.n	8001afa <UART_SetConfig+0x12a>
 8001ad4:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001ad8:	d11d      	bne.n	8001b16 <UART_SetConfig+0x146>
 8001ada:	f005 001f 	and.w	r0, r5, #31
 8001ade:	2101      	movs	r1, #1
 8001ae0:	2808      	cmp	r0, #8
 8001ae2:	f200 809f 	bhi.w	8001c24 <UART_SetConfig+0x254>
 8001ae6:	e8df f000 	tbb	[pc, r0]
 8001aea:	4005      	.short	0x4005
 8001aec:	9d499d43 	.word	0x9d499d43
 8001af0:	004f9d9d 	.word	0x004f9d9d
 8001af4:	f7ff fd11 	bl	800151a <HAL_RCC_GetPCLK1Freq>
 8001af8:	e042      	b.n	8001b80 <UART_SetConfig+0x1b0>
 8001afa:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001afe:	2101      	movs	r1, #1
 8001b00:	2d04      	cmp	r5, #4
 8001b02:	f200 808f 	bhi.w	8001c24 <UART_SetConfig+0x254>
 8001b06:	e8df f005 	tbb	[pc, r5]
 8001b0a:	1c03      	.short	0x1c03
 8001b0c:	001a8d16 	.word	0x001a8d16
 8001b10:	f7ff fd03 	bl	800151a <HAL_RCC_GetPCLK1Freq>
 8001b14:	e011      	b.n	8001b3a <UART_SetConfig+0x16a>
 8001b16:	f005 021f 	and.w	r2, r5, #31
 8001b1a:	2101      	movs	r1, #1
 8001b1c:	2a08      	cmp	r2, #8
 8001b1e:	f200 8081 	bhi.w	8001c24 <UART_SetConfig+0x254>
 8001b22:	e8df f002 	tbb	[pc, r2]
 8001b26:	4305      	.short	0x4305
 8001b28:	7f487f46 	.word	0x7f487f46
 8001b2c:	004e7f7f 	.word	0x004e7f7f
 8001b30:	f7ff fcf3 	bl	800151a <HAL_RCC_GetPCLK1Freq>
 8001b34:	e041      	b.n	8001bba <UART_SetConfig+0x1ea>
 8001b36:	f7ff fc91 	bl	800145c <HAL_RCC_GetSysClockFreq>
 8001b3a:	b910      	cbnz	r0, 8001b42 <UART_SetConfig+0x172>
 8001b3c:	e071      	b.n	8001c22 <UART_SetConfig+0x252>
 8001b3e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b42:	6862      	ldr	r2, [r4, #4]
 8001b44:	2101      	movs	r1, #1
 8001b46:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b4a:	4298      	cmp	r0, r3
 8001b4c:	d36a      	bcc.n	8001c24 <UART_SetConfig+0x254>
 8001b4e:	0313      	lsls	r3, r2, #12
 8001b50:	4298      	cmp	r0, r3
 8001b52:	bf9c      	itt	ls
 8001b54:	2101      	movls	r1, #1
 8001b56:	2d04      	cmpls	r5, #4
 8001b58:	d864      	bhi.n	8001c24 <UART_SetConfig+0x254>
 8001b5a:	e8df f005 	tbb	[pc, r5]
 8001b5e:	3e03      	.short	0x3e03
 8001b60:	00526345 	.word	0x00526345
 8001b64:	f7ff fcd9 	bl	800151a <HAL_RCC_GetPCLK1Freq>
 8001b68:	e040      	b.n	8001bec <UART_SetConfig+0x21c>
 8001b6a:	f7ff fceb 	bl	8001544 <HAL_RCC_GetPCLK2Freq>
 8001b6e:	e007      	b.n	8001b80 <UART_SetConfig+0x1b0>
 8001b70:	6861      	ldr	r1, [r4, #4]
 8001b72:	f644 0200 	movw	r2, #18432	; 0x4800
 8001b76:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001b7a:	e008      	b.n	8001b8e <UART_SetConfig+0x1be>
 8001b7c:	f7ff fc6e 	bl	800145c <HAL_RCC_GetSysClockFreq>
 8001b80:	6861      	ldr	r1, [r4, #4]
 8001b82:	0040      	lsls	r0, r0, #1
 8001b84:	084a      	lsrs	r2, r1, #1
 8001b86:	e003      	b.n	8001b90 <UART_SetConfig+0x1c0>
 8001b88:	6861      	ldr	r1, [r4, #4]
 8001b8a:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001b8e:	0848      	lsrs	r0, r1, #1
 8001b90:	4410      	add	r0, r2
 8001b92:	fbb0 f0f1 	udiv	r0, r0, r1
 8001b96:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001b9a:	4001      	ands	r1, r0
 8001b9c:	2910      	cmp	r1, #16
 8001b9e:	d303      	bcc.n	8001ba8 <UART_SetConfig+0x1d8>
 8001ba0:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001ba4:	4308      	orrs	r0, r1
 8001ba6:	e03a      	b.n	8001c1e <UART_SetConfig+0x24e>
 8001ba8:	2101      	movs	r1, #1
 8001baa:	e03b      	b.n	8001c24 <UART_SetConfig+0x254>
 8001bac:	f7ff fcca 	bl	8001544 <HAL_RCC_GetPCLK2Freq>
 8001bb0:	e003      	b.n	8001bba <UART_SetConfig+0x1ea>
 8001bb2:	6862      	ldr	r2, [r4, #4]
 8001bb4:	e008      	b.n	8001bc8 <UART_SetConfig+0x1f8>
 8001bb6:	f7ff fc51 	bl	800145c <HAL_RCC_GetSysClockFreq>
 8001bba:	6862      	ldr	r2, [r4, #4]
 8001bbc:	4601      	mov	r1, r0
 8001bbe:	0850      	lsrs	r0, r2, #1
 8001bc0:	e003      	b.n	8001bca <UART_SetConfig+0x1fa>
 8001bc2:	6862      	ldr	r2, [r4, #4]
 8001bc4:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001bc8:	0851      	lsrs	r1, r2, #1
 8001bca:	4408      	add	r0, r1
 8001bcc:	fbb0 f0f2 	udiv	r0, r0, r2
 8001bd0:	b280      	uxth	r0, r0
 8001bd2:	2810      	cmp	r0, #16
 8001bd4:	d223      	bcs.n	8001c1e <UART_SetConfig+0x24e>
 8001bd6:	2101      	movs	r1, #1
 8001bd8:	e024      	b.n	8001c24 <UART_SetConfig+0x254>
 8001bda:	2000      	movs	r0, #0
 8001bdc:	2100      	movs	r1, #0
 8001bde:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001be2:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001be6:	e006      	b.n	8001bf6 <UART_SetConfig+0x226>
 8001be8:	f7ff fc38 	bl	800145c <HAL_RCC_GetSysClockFreq>
 8001bec:	6862      	ldr	r2, [r4, #4]
 8001bee:	0e01      	lsrs	r1, r0, #24
 8001bf0:	0853      	lsrs	r3, r2, #1
 8001bf2:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001bf6:	f141 0100 	adc.w	r1, r1, #0
 8001bfa:	2300      	movs	r3, #0
 8001bfc:	f7fe fb00 	bl	8000200 <__aeabi_uldivmod>
 8001c00:	e005      	b.n	8001c0e <UART_SetConfig+0x23e>
 8001c02:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001c06:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001c0a:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c0e:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001c12:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001c16:	f2c0 020f 	movt	r2, #15
 8001c1a:	4291      	cmp	r1, r2
 8001c1c:	d807      	bhi.n	8001c2e <UART_SetConfig+0x25e>
 8001c1e:	6821      	ldr	r1, [r4, #0]
 8001c20:	60c8      	str	r0, [r1, #12]
 8001c22:	2100      	movs	r1, #0
 8001c24:	2000      	movs	r0, #0
 8001c26:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001c2a:	4608      	mov	r0, r1
 8001c2c:	bdb0      	pop	{r4, r5, r7, pc}
 8001c2e:	2101      	movs	r1, #1
 8001c30:	e7f8      	b.n	8001c24 <UART_SetConfig+0x254>

08001c32 <UART_AdvFeatureConfig>:
 8001c32:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c34:	f011 0f01 	tst.w	r1, #1
 8001c38:	d008      	beq.n	8001c4c <UART_AdvFeatureConfig+0x1a>
 8001c3a:	6802      	ldr	r2, [r0, #0]
 8001c3c:	6853      	ldr	r3, [r2, #4]
 8001c3e:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c42:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c46:	ea43 030c 	orr.w	r3, r3, ip
 8001c4a:	6053      	str	r3, [r2, #4]
 8001c4c:	078a      	lsls	r2, r1, #30
 8001c4e:	d508      	bpl.n	8001c62 <UART_AdvFeatureConfig+0x30>
 8001c50:	6802      	ldr	r2, [r0, #0]
 8001c52:	6853      	ldr	r3, [r2, #4]
 8001c54:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c58:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c5c:	ea43 030c 	orr.w	r3, r3, ip
 8001c60:	6053      	str	r3, [r2, #4]
 8001c62:	074a      	lsls	r2, r1, #29
 8001c64:	d508      	bpl.n	8001c78 <UART_AdvFeatureConfig+0x46>
 8001c66:	6802      	ldr	r2, [r0, #0]
 8001c68:	6853      	ldr	r3, [r2, #4]
 8001c6a:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001c6e:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001c72:	ea43 030c 	orr.w	r3, r3, ip
 8001c76:	6053      	str	r3, [r2, #4]
 8001c78:	070a      	lsls	r2, r1, #28
 8001c7a:	d508      	bpl.n	8001c8e <UART_AdvFeatureConfig+0x5c>
 8001c7c:	6802      	ldr	r2, [r0, #0]
 8001c7e:	6853      	ldr	r3, [r2, #4]
 8001c80:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001c84:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001c88:	ea43 030c 	orr.w	r3, r3, ip
 8001c8c:	6053      	str	r3, [r2, #4]
 8001c8e:	06ca      	lsls	r2, r1, #27
 8001c90:	d508      	bpl.n	8001ca4 <UART_AdvFeatureConfig+0x72>
 8001c92:	6802      	ldr	r2, [r0, #0]
 8001c94:	6893      	ldr	r3, [r2, #8]
 8001c96:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001c9a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001c9e:	ea43 030c 	orr.w	r3, r3, ip
 8001ca2:	6093      	str	r3, [r2, #8]
 8001ca4:	068a      	lsls	r2, r1, #26
 8001ca6:	d508      	bpl.n	8001cba <UART_AdvFeatureConfig+0x88>
 8001ca8:	6802      	ldr	r2, [r0, #0]
 8001caa:	6893      	ldr	r3, [r2, #8]
 8001cac:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001cb0:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001cb4:	ea43 030c 	orr.w	r3, r3, ip
 8001cb8:	6093      	str	r3, [r2, #8]
 8001cba:	b580      	push	{r7, lr}
 8001cbc:	466f      	mov	r7, sp
 8001cbe:	064a      	lsls	r2, r1, #25
 8001cc0:	d515      	bpl.n	8001cee <UART_AdvFeatureConfig+0xbc>
 8001cc2:	f8d0 e000 	ldr.w	lr, [r0]
 8001cc6:	f8de c004 	ldr.w	ip, [lr, #4]
 8001cca:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001ccc:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001cd0:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001cd4:	ea42 0203 	orr.w	r2, r2, r3
 8001cd8:	f8ce 2004 	str.w	r2, [lr, #4]
 8001cdc:	d107      	bne.n	8001cee <UART_AdvFeatureConfig+0xbc>
 8001cde:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001ce2:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001ce4:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001ce8:	431a      	orrs	r2, r3
 8001cea:	f8ce 2004 	str.w	r2, [lr, #4]
 8001cee:	0609      	lsls	r1, r1, #24
 8001cf0:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001cf4:	bf58      	it	pl
 8001cf6:	4770      	bxpl	lr
 8001cf8:	6801      	ldr	r1, [r0, #0]
 8001cfa:	684a      	ldr	r2, [r1, #4]
 8001cfc:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001cfe:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001d02:	4310      	orrs	r0, r2
 8001d04:	6048      	str	r0, [r1, #4]
 8001d06:	4770      	bx	lr

08001d08 <UART_CheckIdleState>:
 8001d08:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d0a:	af03      	add	r7, sp, #12
 8001d0c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001d10:	4604      	mov	r4, r0
 8001d12:	2000      	movs	r0, #0
 8001d14:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d16:	f7ff fa5f 	bl	80011d8 <HAL_GetTick>
 8001d1a:	4605      	mov	r5, r0
 8001d1c:	6820      	ldr	r0, [r4, #0]
 8001d1e:	6801      	ldr	r1, [r0, #0]
 8001d20:	f011 0f08 	tst.w	r1, #8
 8001d24:	d00f      	beq.n	8001d46 <UART_CheckIdleState+0x3e>
 8001d26:	69c1      	ldr	r1, [r0, #28]
 8001d28:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d2c:	d10b      	bne.n	8001d46 <UART_CheckIdleState+0x3e>
 8001d2e:	2600      	movs	r6, #0
 8001d30:	f7ff fa52 	bl	80011d8 <HAL_GetTick>
 8001d34:	1b41      	subs	r1, r0, r5
 8001d36:	6820      	ldr	r0, [r4, #0]
 8001d38:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d3c:	d11b      	bne.n	8001d76 <UART_CheckIdleState+0x6e>
 8001d3e:	69c1      	ldr	r1, [r0, #28]
 8001d40:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d44:	d0f4      	beq.n	8001d30 <UART_CheckIdleState+0x28>
 8001d46:	6801      	ldr	r1, [r0, #0]
 8001d48:	f011 0f04 	tst.w	r1, #4
 8001d4c:	d101      	bne.n	8001d52 <UART_CheckIdleState+0x4a>
 8001d4e:	2600      	movs	r6, #0
 8001d50:	e01a      	b.n	8001d88 <UART_CheckIdleState+0x80>
 8001d52:	69c0      	ldr	r0, [r0, #28]
 8001d54:	2600      	movs	r6, #0
 8001d56:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d5a:	d115      	bne.n	8001d88 <UART_CheckIdleState+0x80>
 8001d5c:	f7ff fa3c 	bl	80011d8 <HAL_GetTick>
 8001d60:	1b41      	subs	r1, r0, r5
 8001d62:	6820      	ldr	r0, [r4, #0]
 8001d64:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d68:	d105      	bne.n	8001d76 <UART_CheckIdleState+0x6e>
 8001d6a:	69c0      	ldr	r0, [r0, #28]
 8001d6c:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d70:	d0f4      	beq.n	8001d5c <UART_CheckIdleState+0x54>
 8001d72:	2600      	movs	r6, #0
 8001d74:	e008      	b.n	8001d88 <UART_CheckIdleState+0x80>
 8001d76:	6801      	ldr	r1, [r0, #0]
 8001d78:	2603      	movs	r6, #3
 8001d7a:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001d7e:	6001      	str	r1, [r0, #0]
 8001d80:	6881      	ldr	r1, [r0, #8]
 8001d82:	f021 0101 	bic.w	r1, r1, #1
 8001d86:	6081      	str	r1, [r0, #8]
 8001d88:	2020      	movs	r0, #32
 8001d8a:	6760      	str	r0, [r4, #116]	; 0x74
 8001d8c:	67a0      	str	r0, [r4, #120]	; 0x78
 8001d8e:	2000      	movs	r0, #0
 8001d90:	6720      	str	r0, [r4, #112]	; 0x70
 8001d92:	4630      	mov	r0, r6
 8001d94:	f85d bb04 	ldr.w	fp, [sp], #4
 8001d98:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001d9a <HAL_UART_Transmit>:
 8001d9a:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d9c:	af03      	add	r7, sp, #12
 8001d9e:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001da2:	b081      	sub	sp, #4
 8001da4:	4604      	mov	r4, r0
 8001da6:	461d      	mov	r5, r3
 8001da8:	4616      	mov	r6, r2
 8001daa:	4689      	mov	r9, r1
 8001dac:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001dae:	2820      	cmp	r0, #32
 8001db0:	d109      	bne.n	8001dc6 <HAL_UART_Transmit+0x2c>
 8001db2:	f1b9 0f00 	cmp.w	r9, #0
 8001db6:	f04f 0001 	mov.w	r0, #1
 8001dba:	bf18      	it	ne
 8001dbc:	2e00      	cmpne	r6, #0
 8001dbe:	d003      	beq.n	8001dc8 <HAL_UART_Transmit+0x2e>
 8001dc0:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001dc2:	2801      	cmp	r0, #1
 8001dc4:	d104      	bne.n	8001dd0 <HAL_UART_Transmit+0x36>
 8001dc6:	2002      	movs	r0, #2
 8001dc8:	b001      	add	sp, #4
 8001dca:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001dce:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001dd0:	2001      	movs	r0, #1
 8001dd2:	6720      	str	r0, [r4, #112]	; 0x70
 8001dd4:	2000      	movs	r0, #0
 8001dd6:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001dd8:	2021      	movs	r0, #33	; 0x21
 8001dda:	6760      	str	r0, [r4, #116]	; 0x74
 8001ddc:	f7ff f9fc 	bl	80011d8 <HAL_GetTick>
 8001de0:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001de4:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001de8:	4680      	mov	r8, r0
 8001dea:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001dee:	f8d4 b000 	ldr.w	fp, [r4]
 8001df2:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001df6:	2900      	cmp	r1, #0
 8001df8:	d040      	beq.n	8001e7c <HAL_UART_Transmit+0xe2>
 8001dfa:	f105 0a01 	add.w	sl, r5, #1
 8001dfe:	0600      	lsls	r0, r0, #24
 8001e00:	d410      	bmi.n	8001e24 <HAL_UART_Transmit+0x8a>
 8001e02:	465e      	mov	r6, fp
 8001e04:	f1ba 0f00 	cmp.w	sl, #0
 8001e08:	d007      	beq.n	8001e1a <HAL_UART_Transmit+0x80>
 8001e0a:	b33d      	cbz	r5, 8001e5c <HAL_UART_Transmit+0xc2>
 8001e0c:	f7ff f9e4 	bl	80011d8 <HAL_GetTick>
 8001e10:	6826      	ldr	r6, [r4, #0]
 8001e12:	eba0 0008 	sub.w	r0, r0, r8
 8001e16:	42a8      	cmp	r0, r5
 8001e18:	d821      	bhi.n	8001e5e <HAL_UART_Transmit+0xc4>
 8001e1a:	69f0      	ldr	r0, [r6, #28]
 8001e1c:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001e20:	d0f0      	beq.n	8001e04 <HAL_UART_Transmit+0x6a>
 8001e22:	e000      	b.n	8001e26 <HAL_UART_Transmit+0x8c>
 8001e24:	465e      	mov	r6, fp
 8001e26:	68a0      	ldr	r0, [r4, #8]
 8001e28:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e2c:	bf04      	itt	eq
 8001e2e:	6920      	ldreq	r0, [r4, #16]
 8001e30:	2800      	cmpeq	r0, #0
 8001e32:	d002      	beq.n	8001e3a <HAL_UART_Transmit+0xa0>
 8001e34:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e38:	e003      	b.n	8001e42 <HAL_UART_Transmit+0xa8>
 8001e3a:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e3e:	f36f 205f 	bfc	r0, #9, #23
 8001e42:	8530      	strh	r0, [r6, #40]	; 0x28
 8001e44:	46b3      	mov	fp, r6
 8001e46:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001e4a:	3801      	subs	r0, #1
 8001e4c:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001e50:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e54:	69f0      	ldr	r0, [r6, #28]
 8001e56:	2900      	cmp	r1, #0
 8001e58:	d1d1      	bne.n	8001dfe <HAL_UART_Transmit+0x64>
 8001e5a:	e010      	b.n	8001e7e <HAL_UART_Transmit+0xe4>
 8001e5c:	465e      	mov	r6, fp
 8001e5e:	6830      	ldr	r0, [r6, #0]
 8001e60:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001e64:	6030      	str	r0, [r6, #0]
 8001e66:	68b0      	ldr	r0, [r6, #8]
 8001e68:	f020 0001 	bic.w	r0, r0, #1
 8001e6c:	60b0      	str	r0, [r6, #8]
 8001e6e:	2020      	movs	r0, #32
 8001e70:	6760      	str	r0, [r4, #116]	; 0x74
 8001e72:	67a0      	str	r0, [r4, #120]	; 0x78
 8001e74:	2000      	movs	r0, #0
 8001e76:	6720      	str	r0, [r4, #112]	; 0x70
 8001e78:	2003      	movs	r0, #3
 8001e7a:	e7a5      	b.n	8001dc8 <HAL_UART_Transmit+0x2e>
 8001e7c:	465e      	mov	r6, fp
 8001e7e:	0640      	lsls	r0, r0, #25
 8001e80:	d411      	bmi.n	8001ea6 <HAL_UART_Transmit+0x10c>
 8001e82:	f105 0901 	add.w	r9, r5, #1
 8001e86:	4630      	mov	r0, r6
 8001e88:	f1b9 0f00 	cmp.w	r9, #0
 8001e8c:	d007      	beq.n	8001e9e <HAL_UART_Transmit+0x104>
 8001e8e:	b17d      	cbz	r5, 8001eb0 <HAL_UART_Transmit+0x116>
 8001e90:	f7ff f9a2 	bl	80011d8 <HAL_GetTick>
 8001e94:	eba0 0108 	sub.w	r1, r0, r8
 8001e98:	6820      	ldr	r0, [r4, #0]
 8001e9a:	42a9      	cmp	r1, r5
 8001e9c:	d809      	bhi.n	8001eb2 <HAL_UART_Transmit+0x118>
 8001e9e:	69c1      	ldr	r1, [r0, #28]
 8001ea0:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001ea4:	d0f0      	beq.n	8001e88 <HAL_UART_Transmit+0xee>
 8001ea6:	2020      	movs	r0, #32
 8001ea8:	6760      	str	r0, [r4, #116]	; 0x74
 8001eaa:	2000      	movs	r0, #0
 8001eac:	6720      	str	r0, [r4, #112]	; 0x70
 8001eae:	e78b      	b.n	8001dc8 <HAL_UART_Transmit+0x2e>
 8001eb0:	4630      	mov	r0, r6
 8001eb2:	6801      	ldr	r1, [r0, #0]
 8001eb4:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001eb8:	6001      	str	r1, [r0, #0]
 8001eba:	6881      	ldr	r1, [r0, #8]
 8001ebc:	f021 0101 	bic.w	r1, r1, #1
 8001ec0:	6081      	str	r1, [r0, #8]
 8001ec2:	e7d4      	b.n	8001e6e <HAL_UART_Transmit+0xd4>

08001ec4 <BSP_COM_Init>:
 8001ec4:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ec6:	af03      	add	r7, sp, #12
 8001ec8:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001ecc:	b086      	sub	sp, #24
 8001ece:	4605      	mov	r5, r0
 8001ed0:	4688      	mov	r8, r1
 8001ed2:	b9f5      	cbnz	r5, 8001f12 <BSP_COM_Init+0x4e>
 8001ed4:	f241 004c 	movw	r0, #4172	; 0x104c
 8001ed8:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001edc:	6801      	ldr	r1, [r0, #0]
 8001ede:	f041 0102 	orr.w	r1, r1, #2
 8001ee2:	6001      	str	r1, [r0, #0]
 8001ee4:	6801      	ldr	r1, [r0, #0]
 8001ee6:	f001 0102 	and.w	r1, r1, #2
 8001eea:	9101      	str	r1, [sp, #4]
 8001eec:	9901      	ldr	r1, [sp, #4]
 8001eee:	6801      	ldr	r1, [r0, #0]
 8001ef0:	f041 0102 	orr.w	r1, r1, #2
 8001ef4:	6001      	str	r1, [r0, #0]
 8001ef6:	6801      	ldr	r1, [r0, #0]
 8001ef8:	f001 0102 	and.w	r1, r1, #2
 8001efc:	9101      	str	r1, [sp, #4]
 8001efe:	9901      	ldr	r1, [sp, #4]
 8001f00:	6941      	ldr	r1, [r0, #20]
 8001f02:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001f06:	6141      	str	r1, [r0, #20]
 8001f08:	6940      	ldr	r0, [r0, #20]
 8001f0a:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001f0e:	9001      	str	r0, [sp, #4]
 8001f10:	9801      	ldr	r0, [sp, #4]
 8001f12:	2040      	movs	r0, #64	; 0x40
 8001f14:	2402      	movs	r4, #2
 8001f16:	ae01      	add	r6, sp, #4
 8001f18:	f04f 0907 	mov.w	r9, #7
 8001f1c:	9001      	str	r0, [sp, #4]
 8001f1e:	2000      	movs	r0, #0
 8001f20:	9402      	str	r4, [sp, #8]
 8001f22:	9404      	str	r4, [sp, #16]
 8001f24:	4631      	mov	r1, r6
 8001f26:	9003      	str	r0, [sp, #12]
 8001f28:	f240 000c 	movw	r0, #12
 8001f2c:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f30:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f34:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f38:	f7ff f9a7 	bl	800128a <HAL_GPIO_Init>
 8001f3c:	2080      	movs	r0, #128	; 0x80
 8001f3e:	4631      	mov	r1, r6
 8001f40:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001f44:	f240 0010 	movw	r0, #16
 8001f48:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f4c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f50:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f54:	f7ff f999 	bl	800128a <HAL_GPIO_Init>
 8001f58:	f240 0008 	movw	r0, #8
 8001f5c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f60:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f64:	f8c8 0000 	str.w	r0, [r8]
 8001f68:	4640      	mov	r0, r8
 8001f6a:	f7ff fcff 	bl	800196c <HAL_UART_Init>
 8001f6e:	b006      	add	sp, #24
 8001f70:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001f74:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

08001f78 <pjpeg_decode_mcu>:
 8001f78:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f7a:	af03      	add	r7, sp, #12
 8001f7c:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001f80:	b08b      	sub	sp, #44	; 0x2c
 8001f82:	f640 13e4 	movw	r3, #2532	; 0x9e4
 8001f86:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8001f8a:	7818      	ldrb	r0, [r3, #0]
 8001f8c:	2800      	cmp	r0, #0
 8001f8e:	f041 8504 	bne.w	800399a <pjpeg_decode_mcu+0x1a22>
 8001f92:	f640 10e6 	movw	r0, #2534	; 0x9e6
 8001f96:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f9a:	8800      	ldrh	r0, [r0, #0]
 8001f9c:	2800      	cmp	r0, #0
 8001f9e:	f001 8459 	beq.w	8003854 <pjpeg_decode_mcu+0x18dc>
 8001fa2:	f640 5002 	movw	r0, #3330	; 0xd02
 8001fa6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001faa:	8800      	ldrh	r0, [r0, #0]
 8001fac:	b148      	cbz	r0, 8001fc2 <pjpeg_decode_mcu+0x4a>
 8001fae:	f640 5104 	movw	r1, #3332	; 0xd04
 8001fb2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001fb6:	8808      	ldrh	r0, [r1, #0]
 8001fb8:	2800      	cmp	r0, #0
 8001fba:	f001 844d 	beq.w	8003858 <pjpeg_decode_mcu+0x18e0>
 8001fbe:	3801      	subs	r0, #1
 8001fc0:	8008      	strh	r0, [r1, #0]
 8001fc2:	f640 5006 	movw	r0, #3334	; 0xd06
 8001fc6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fca:	7800      	ldrb	r0, [r0, #0]
 8001fcc:	2800      	cmp	r0, #0
 8001fce:	f001 8437 	beq.w	8003840 <pjpeg_decode_mcu+0x18c8>
 8001fd2:	f241 2c00 	movw	ip, #4608	; 0x1200
 8001fd6:	f241 3e04 	movw	lr, #4868	; 0x1304
 8001fda:	f04f 0a00 	mov.w	sl, #0
 8001fde:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8001fe2:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8001fe6:	f640 5008 	movw	r0, #3336	; 0xd08
 8001fea:	fa5f f18a 	uxtb.w	r1, sl
 8001fee:	f640 69c4 	movw	r9, #3780	; 0xec4
 8001ff2:	f640 6864 	movw	r8, #3684	; 0xe64
 8001ff6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001ffa:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8001ffe:	9101      	str	r1, [sp, #4]
 8002000:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8002004:	f810 b001 	ldrb.w	fp, [r0, r1]
 8002008:	f640 5011 	movw	r0, #3345	; 0xd11
 800200c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002010:	f810 000b 	ldrb.w	r0, [r0, fp]
 8002014:	2800      	cmp	r0, #0
 8002016:	f640 60b4 	movw	r0, #3764	; 0xeb4
 800201a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800201e:	bf18      	it	ne
 8002020:	4681      	movne	r9, r0
 8002022:	f640 6014 	movw	r0, #3604	; 0xe14
 8002026:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800202a:	bf18      	it	ne
 800202c:	4680      	movne	r8, r0
 800202e:	f640 500e 	movw	r0, #3342	; 0xd0e
 8002032:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002036:	f810 000b 	ldrb.w	r0, [r0, fp]
 800203a:	2800      	cmp	r0, #0
 800203c:	f640 5094 	movw	r0, #3476	; 0xd94
 8002040:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002044:	4601      	mov	r1, r0
 8002046:	f640 5014 	movw	r0, #3348	; 0xd14
 800204a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800204e:	bf18      	it	ne
 8002050:	4601      	movne	r1, r0
 8002052:	f8be 0000 	ldrh.w	r0, [lr]
 8002056:	910a      	str	r1, [sp, #40]	; 0x28
 8002058:	f89c 1000 	ldrb.w	r1, [ip]
 800205c:	0bc4      	lsrs	r4, r0, #15
 800205e:	b9a1      	cbnz	r1, 800208a <pjpeg_decode_mcu+0x112>
 8002060:	2001      	movs	r0, #1
 8002062:	f002 ffbc 	bl	8004fde <getOctet>
 8002066:	f241 3e04 	movw	lr, #4868	; 0x1304
 800206a:	f241 2c00 	movw	ip, #4608	; 0x1200
 800206e:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002072:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002076:	f8be 1000 	ldrh.w	r1, [lr]
 800207a:	4308      	orrs	r0, r1
 800207c:	f89c 1000 	ldrb.w	r1, [ip]
 8002080:	f8ae 0000 	strh.w	r0, [lr]
 8002084:	3108      	adds	r1, #8
 8002086:	f88c 1000 	strb.w	r1, [ip]
 800208a:	3901      	subs	r1, #1
 800208c:	0040      	lsls	r0, r0, #1
 800208e:	2600      	movs	r6, #0
 8002090:	f8cd a000 	str.w	sl, [sp]
 8002094:	f88c 1000 	strb.w	r1, [ip]
 8002098:	f8ae 0000 	strh.w	r0, [lr]
 800209c:	eb08 0246 	add.w	r2, r8, r6, lsl #1
 80020a0:	8c13      	ldrh	r3, [r2, #32]
 80020a2:	b2a2      	uxth	r2, r4
 80020a4:	429a      	cmp	r2, r3
 80020a6:	d803      	bhi.n	80020b0 <pjpeg_decode_mcu+0x138>
 80020a8:	f64f 75ff 	movw	r5, #65535	; 0xffff
 80020ac:	42ab      	cmp	r3, r5
 80020ae:	d12c      	bne.n	800210a <pjpeg_decode_mcu+0x192>
 80020b0:	0055      	lsls	r5, r2, #1
 80020b2:	f3c0 34c0 	ubfx	r4, r0, #15, #1
 80020b6:	3601      	adds	r6, #1
 80020b8:	060a      	lsls	r2, r1, #24
 80020ba:	d114      	bne.n	80020e6 <pjpeg_decode_mcu+0x16e>
 80020bc:	2001      	movs	r0, #1
 80020be:	f002 ff8e 	bl	8004fde <getOctet>
 80020c2:	f241 3e04 	movw	lr, #4868	; 0x1304
 80020c6:	f241 2c00 	movw	ip, #4608	; 0x1200
 80020ca:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80020ce:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80020d2:	f8be 1000 	ldrh.w	r1, [lr]
 80020d6:	4308      	orrs	r0, r1
 80020d8:	f89c 1000 	ldrb.w	r1, [ip]
 80020dc:	f8ae 0000 	strh.w	r0, [lr]
 80020e0:	3108      	adds	r1, #8
 80020e2:	f88c 1000 	strb.w	r1, [ip]
 80020e6:	f64f 72fe 	movw	r2, #65534	; 0xfffe
 80020ea:	3901      	subs	r1, #1
 80020ec:	432c      	orrs	r4, r5
 80020ee:	2e10      	cmp	r6, #16
 80020f0:	f2c0 0201 	movt	r2, #1
 80020f4:	f88c 1000 	strb.w	r1, [ip]
 80020f8:	ea02 0040 	and.w	r0, r2, r0, lsl #1
 80020fc:	f8ae 0000 	strh.w	r0, [lr]
 8002100:	d1cc      	bne.n	800209c <pjpeg_decode_mcu+0x124>
 8002102:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8002104:	2000      	movs	r0, #0
 8002106:	b203      	sxth	r3, r0
 8002108:	e05d      	b.n	80021c6 <pjpeg_decode_mcu+0x24e>
 800210a:	eb08 0106 	add.w	r1, r8, r6
 800210e:	f838 0016 	ldrh.w	r0, [r8, r6, lsl #1]
 8002112:	f891 1040 	ldrb.w	r1, [r1, #64]	; 0x40
 8002116:	4421      	add	r1, r4
 8002118:	1a08      	subs	r0, r1, r0
 800211a:	b2c0      	uxtb	r0, r0
 800211c:	f819 4000 	ldrb.w	r4, [r9, r0]
 8002120:	f014 000f 	ands.w	r0, r4, #15
 8002124:	d00c      	beq.n	8002140 <pjpeg_decode_mcu+0x1c8>
 8002126:	b2c0      	uxtb	r0, r0
 8002128:	2101      	movs	r1, #1
 800212a:	f003 f808 	bl	800513e <getBits>
 800212e:	f241 3e04 	movw	lr, #4868	; 0x1304
 8002132:	f241 2c00 	movw	ip, #4608	; 0x1200
 8002136:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 800213a:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800213e:	e000      	b.n	8002142 <pjpeg_decode_mcu+0x1ca>
 8002140:	2000      	movs	r0, #0
 8002142:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8002144:	1e61      	subs	r1, r4, #1
 8002146:	290e      	cmp	r1, #14
 8002148:	d8dd      	bhi.n	8002106 <pjpeg_decode_mcu+0x18e>
 800214a:	2201      	movs	r2, #1
 800214c:	e8df f001 	tbb	[pc, r1]
 8002150:	0c0a082a 	.word	0x0c0a082a
 8002154:	1412100e 	.word	0x1412100e
 8002158:	1f1c1916 	.word	0x1f1c1916
 800215c:	00282522 	.word	0x00282522
 8002160:	2202      	movs	r2, #2
 8002162:	e01f      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 8002164:	2204      	movs	r2, #4
 8002166:	e01d      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 8002168:	2208      	movs	r2, #8
 800216a:	e01b      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 800216c:	2210      	movs	r2, #16
 800216e:	e019      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 8002170:	2220      	movs	r2, #32
 8002172:	e017      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 8002174:	2240      	movs	r2, #64	; 0x40
 8002176:	e015      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 8002178:	2280      	movs	r2, #128	; 0x80
 800217a:	e013      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 800217c:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002180:	e010      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 8002182:	f44f 7200 	mov.w	r2, #512	; 0x200
 8002186:	e00d      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 8002188:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800218c:	e00a      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 800218e:	f44f 6200 	mov.w	r2, #2048	; 0x800
 8002192:	e007      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 8002194:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002198:	e004      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 800219a:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 800219e:	e001      	b.n	80021a4 <pjpeg_decode_mcu+0x22c>
 80021a0:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 80021a4:	b292      	uxth	r2, r2
 80021a6:	b203      	sxth	r3, r0
 80021a8:	4282      	cmp	r2, r0
 80021aa:	d90c      	bls.n	80021c6 <pjpeg_decode_mcu+0x24e>
 80021ac:	b2c8      	uxtb	r0, r1
 80021ae:	280e      	cmp	r0, #14
 80021b0:	d807      	bhi.n	80021c2 <pjpeg_decode_mcu+0x24a>
 80021b2:	b248      	sxtb	r0, r1
 80021b4:	f24b 71a0 	movw	r1, #47008	; 0xb7a0
 80021b8:	f6c0 0100 	movt	r1, #2048	; 0x800
 80021bc:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 80021c0:	e000      	b.n	80021c4 <pjpeg_decode_mcu+0x24c>
 80021c2:	2000      	movs	r0, #0
 80021c4:	4403      	add	r3, r0
 80021c6:	f640 60d4 	movw	r0, #3796	; 0xed4
 80021ca:	f640 7aae 	movw	sl, #4014	; 0xfae
 80021ce:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021d2:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 80021d6:	4601      	mov	r1, r0
 80021d8:	f831 001b 	ldrh.w	r0, [r1, fp, lsl #1]
 80021dc:	4418      	add	r0, r3
 80021de:	f821 001b 	strh.w	r0, [r1, fp, lsl #1]
 80021e2:	f9b5 1000 	ldrsh.w	r1, [r5]
 80021e6:	4348      	muls	r0, r1
 80021e8:	f640 61da 	movw	r1, #3802	; 0xeda
 80021ec:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80021f0:	8008      	strh	r0, [r1, #0]
 80021f2:	f640 705a 	movw	r0, #3930	; 0xf5a
 80021f6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021fa:	f810 000b 	ldrb.w	r0, [r0, fp]
 80021fe:	2800      	cmp	r0, #0
 8002200:	f241 00fe 	movw	r0, #4350	; 0x10fe
 8002204:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002208:	4606      	mov	r6, r0
 800220a:	f640 70fe 	movw	r0, #4094	; 0xffe
 800220e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002212:	bf18      	it	ne
 8002214:	4606      	movne	r6, r0
 8002216:	f640 705e 	movw	r0, #3934	; 0xf5e
 800221a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800221e:	bf18      	it	ne
 8002220:	4682      	movne	sl, r0
 8002222:	f640 10f0 	movw	r0, #2544	; 0x9f0
 8002226:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800222a:	7800      	ldrb	r0, [r0, #0]
 800222c:	2800      	cmp	r0, #0
 800222e:	f000 80bc 	beq.w	80023aa <pjpeg_decode_mcu+0x432>
 8002232:	f04f 0801 	mov.w	r8, #1
 8002236:	f04f 0b01 	mov.w	fp, #1
 800223a:	f89c 1000 	ldrb.w	r1, [ip]
 800223e:	f8be 0000 	ldrh.w	r0, [lr]
 8002242:	0bc5      	lsrs	r5, r0, #15
 8002244:	b9a1      	cbnz	r1, 8002270 <pjpeg_decode_mcu+0x2f8>
 8002246:	2001      	movs	r0, #1
 8002248:	f002 fec9 	bl	8004fde <getOctet>
 800224c:	f241 3e04 	movw	lr, #4868	; 0x1304
 8002250:	f241 2c00 	movw	ip, #4608	; 0x1200
 8002254:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002258:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800225c:	f8be 1000 	ldrh.w	r1, [lr]
 8002260:	4308      	orrs	r0, r1
 8002262:	f89c 1000 	ldrb.w	r1, [ip]
 8002266:	f8ae 0000 	strh.w	r0, [lr]
 800226a:	3108      	adds	r1, #8
 800226c:	f88c 1000 	strb.w	r1, [ip]
 8002270:	3901      	subs	r1, #1
 8002272:	0040      	lsls	r0, r0, #1
 8002274:	f04f 0900 	mov.w	r9, #0
 8002278:	f88c 1000 	strb.w	r1, [ip]
 800227c:	f8ae 0000 	strh.w	r0, [lr]
 8002280:	eb0a 0249 	add.w	r2, sl, r9, lsl #1
 8002284:	8c13      	ldrh	r3, [r2, #32]
 8002286:	b2aa      	uxth	r2, r5
 8002288:	429a      	cmp	r2, r3
 800228a:	d803      	bhi.n	8002294 <pjpeg_decode_mcu+0x31c>
 800228c:	f64f 74ff 	movw	r4, #65535	; 0xffff
 8002290:	42a3      	cmp	r3, r4
 8002292:	d12b      	bne.n	80022ec <pjpeg_decode_mcu+0x374>
 8002294:	0054      	lsls	r4, r2, #1
 8002296:	f3c0 35c0 	ubfx	r5, r0, #15, #1
 800229a:	f109 0901 	add.w	r9, r9, #1
 800229e:	060a      	lsls	r2, r1, #24
 80022a0:	d114      	bne.n	80022cc <pjpeg_decode_mcu+0x354>
 80022a2:	2001      	movs	r0, #1
 80022a4:	f002 fe9b 	bl	8004fde <getOctet>
 80022a8:	f241 3e04 	movw	lr, #4868	; 0x1304
 80022ac:	f241 2c00 	movw	ip, #4608	; 0x1200
 80022b0:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80022b4:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80022b8:	f8be 1000 	ldrh.w	r1, [lr]
 80022bc:	4308      	orrs	r0, r1
 80022be:	f89c 1000 	ldrb.w	r1, [ip]
 80022c2:	f8ae 0000 	strh.w	r0, [lr]
 80022c6:	3108      	adds	r1, #8
 80022c8:	f88c 1000 	strb.w	r1, [ip]
 80022cc:	f64f 72fe 	movw	r2, #65534	; 0xfffe
 80022d0:	3901      	subs	r1, #1
 80022d2:	4325      	orrs	r5, r4
 80022d4:	f1b9 0f10 	cmp.w	r9, #16
 80022d8:	f2c0 0201 	movt	r2, #1
 80022dc:	f88c 1000 	strb.w	r1, [ip]
 80022e0:	ea02 0040 	and.w	r0, r2, r0, lsl #1
 80022e4:	f8ae 0000 	strh.w	r0, [lr]
 80022e8:	d1ca      	bne.n	8002280 <pjpeg_decode_mcu+0x308>
 80022ea:	e035      	b.n	8002358 <pjpeg_decode_mcu+0x3e0>
 80022ec:	eb0a 0109 	add.w	r1, sl, r9
 80022f0:	f83a 0019 	ldrh.w	r0, [sl, r9, lsl #1]
 80022f4:	f891 1040 	ldrb.w	r1, [r1, #64]	; 0x40
 80022f8:	4429      	add	r1, r5
 80022fa:	1a08      	subs	r0, r1, r0
 80022fc:	b2c0      	uxtb	r0, r0
 80022fe:	5c34      	ldrb	r4, [r6, r0]
 8002300:	f014 000f 	ands.w	r0, r4, #15
 8002304:	d017      	beq.n	8002336 <pjpeg_decode_mcu+0x3be>
 8002306:	b2c0      	uxtb	r0, r0
 8002308:	2101      	movs	r1, #1
 800230a:	f002 ff18 	bl	800513e <getBits>
 800230e:	f241 3e04 	movw	lr, #4868	; 0x1304
 8002312:	f241 2c00 	movw	ip, #4608	; 0x1200
 8002316:	2000      	movs	r0, #0
 8002318:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 800231c:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002320:	ebb0 1f14 	cmp.w	r0, r4, lsr #4
 8002324:	d010      	beq.n	8002348 <pjpeg_decode_mcu+0x3d0>
 8002326:	0920      	lsrs	r0, r4, #4
 8002328:	fa58 fb80 	uxtab	fp, r8, r0
 800232c:	f1bb 0f3f 	cmp.w	fp, #63	; 0x3f
 8002330:	d90a      	bls.n	8002348 <pjpeg_decode_mcu+0x3d0>
 8002332:	f001 bb29 	b.w	8003988 <pjpeg_decode_mcu+0x1a10>
 8002336:	2cf0      	cmp	r4, #240	; 0xf0
 8002338:	d30e      	bcc.n	8002358 <pjpeg_decode_mcu+0x3e0>
 800233a:	f108 0010 	add.w	r0, r8, #16
 800233e:	2840      	cmp	r0, #64	; 0x40
 8002340:	f201 8322 	bhi.w	8003988 <pjpeg_decode_mcu+0x1a10>
 8002344:	f108 0b0f 	add.w	fp, r8, #15
 8002348:	f10b 0b01 	add.w	fp, fp, #1
 800234c:	fa5f f88b 	uxtb.w	r8, fp
 8002350:	f1b8 0f40 	cmp.w	r8, #64	; 0x40
 8002354:	f4ff af71 	bcc.w	800223a <pjpeg_decode_mcu+0x2c2>
 8002358:	f640 60da 	movw	r0, #3802	; 0xeda
 800235c:	2180      	movs	r1, #128	; 0x80
 800235e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002362:	f9b0 0000 	ldrsh.w	r0, [r0]
 8002366:	3040      	adds	r0, #64	; 0x40
 8002368:	eb01 11d0 	add.w	r1, r1, r0, lsr #7
 800236c:	b288      	uxth	r0, r1
 800236e:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8002372:	bf24      	itt	cs
 8002374:	b208      	sxthcs	r0, r1
 8002376:	ea6f 31e0 	mvncs.w	r1, r0, asr #15
 800237a:	f8dd a000 	ldr.w	sl, [sp]
 800237e:	f640 10f8 	movw	r0, #2552	; 0x9f8
 8002382:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002386:	6800      	ldr	r0, [r0, #0]
 8002388:	2804      	cmp	r0, #4
 800238a:	f201 824d 	bhi.w	8003828 <pjpeg_decode_mcu+0x18b0>
 800238e:	e8df f010 	tbh	[pc, r0, lsl #1]
 8002392:	0005      	.short	0x0005
 8002394:	03a00395 	.word	0x03a00395
 8002398:	03f203c9 	.word	0x03f203c9
 800239c:	f640 2002 	movw	r0, #2562	; 0xa02
 80023a0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80023a4:	7001      	strb	r1, [r0, #0]
 80023a6:	f001 ba3f 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 80023aa:	f04f 0b01 	mov.w	fp, #1
 80023ae:	f04f 0901 	mov.w	r9, #1
 80023b2:	9609      	str	r6, [sp, #36]	; 0x24
 80023b4:	f89c 1000 	ldrb.w	r1, [ip]
 80023b8:	f8be 0000 	ldrh.w	r0, [lr]
 80023bc:	0bc5      	lsrs	r5, r0, #15
 80023be:	b9a1      	cbnz	r1, 80023ea <pjpeg_decode_mcu+0x472>
 80023c0:	2001      	movs	r0, #1
 80023c2:	f002 fe0c 	bl	8004fde <getOctet>
 80023c6:	f241 3e04 	movw	lr, #4868	; 0x1304
 80023ca:	f241 2c00 	movw	ip, #4608	; 0x1200
 80023ce:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80023d2:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80023d6:	f8be 1000 	ldrh.w	r1, [lr]
 80023da:	4308      	orrs	r0, r1
 80023dc:	f89c 1000 	ldrb.w	r1, [ip]
 80023e0:	f8ae 0000 	strh.w	r0, [lr]
 80023e4:	3108      	adds	r1, #8
 80023e6:	f88c 1000 	strb.w	r1, [ip]
 80023ea:	3901      	subs	r1, #1
 80023ec:	0040      	lsls	r0, r0, #1
 80023ee:	2400      	movs	r4, #0
 80023f0:	f88c 1000 	strb.w	r1, [ip]
 80023f4:	f8ae 0000 	strh.w	r0, [lr]
 80023f8:	eb0a 0244 	add.w	r2, sl, r4, lsl #1
 80023fc:	8c13      	ldrh	r3, [r2, #32]
 80023fe:	b2aa      	uxth	r2, r5
 8002400:	429a      	cmp	r2, r3
 8002402:	d803      	bhi.n	800240c <pjpeg_decode_mcu+0x494>
 8002404:	f64f 76ff 	movw	r6, #65535	; 0xffff
 8002408:	42b3      	cmp	r3, r6
 800240a:	d129      	bne.n	8002460 <pjpeg_decode_mcu+0x4e8>
 800240c:	0056      	lsls	r6, r2, #1
 800240e:	f3c0 35c0 	ubfx	r5, r0, #15, #1
 8002412:	3401      	adds	r4, #1
 8002414:	060a      	lsls	r2, r1, #24
 8002416:	d114      	bne.n	8002442 <pjpeg_decode_mcu+0x4ca>
 8002418:	2001      	movs	r0, #1
 800241a:	f002 fde0 	bl	8004fde <getOctet>
 800241e:	f241 3e04 	movw	lr, #4868	; 0x1304
 8002422:	f241 2c00 	movw	ip, #4608	; 0x1200
 8002426:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 800242a:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800242e:	f8be 1000 	ldrh.w	r1, [lr]
 8002432:	4308      	orrs	r0, r1
 8002434:	f89c 1000 	ldrb.w	r1, [ip]
 8002438:	f8ae 0000 	strh.w	r0, [lr]
 800243c:	3108      	adds	r1, #8
 800243e:	f88c 1000 	strb.w	r1, [ip]
 8002442:	f64f 72fe 	movw	r2, #65534	; 0xfffe
 8002446:	3901      	subs	r1, #1
 8002448:	4335      	orrs	r5, r6
 800244a:	2c10      	cmp	r4, #16
 800244c:	f2c0 0201 	movt	r2, #1
 8002450:	f88c 1000 	strb.w	r1, [ip]
 8002454:	ea02 0040 	and.w	r0, r2, r0, lsl #1
 8002458:	f8ae 0000 	strh.w	r0, [lr]
 800245c:	d1cc      	bne.n	80023f8 <pjpeg_decode_mcu+0x480>
 800245e:	e10e      	b.n	800267e <pjpeg_decode_mcu+0x706>
 8002460:	eb0a 0104 	add.w	r1, sl, r4
 8002464:	f83a 0014 	ldrh.w	r0, [sl, r4, lsl #1]
 8002468:	f891 1040 	ldrb.w	r1, [r1, #64]	; 0x40
 800246c:	4429      	add	r1, r5
 800246e:	1a08      	subs	r0, r1, r0
 8002470:	9909      	ldr	r1, [sp, #36]	; 0x24
 8002472:	b2c0      	uxtb	r0, r0
 8002474:	5c0d      	ldrb	r5, [r1, r0]
 8002476:	f015 080f 	ands.w	r8, r5, #15
 800247a:	d041      	beq.n	8002500 <pjpeg_decode_mcu+0x588>
 800247c:	fa5f f088 	uxtb.w	r0, r8
 8002480:	2101      	movs	r1, #1
 8002482:	f002 fe5c 	bl	800513e <getBits>
 8002486:	2100      	movs	r1, #0
 8002488:	ebb1 1f15 	cmp.w	r1, r5, lsr #4
 800248c:	d01e      	beq.n	80024cc <pjpeg_decode_mcu+0x554>
 800248e:	ea4f 1c15 	mov.w	ip, r5, lsr #4
 8002492:	fa5b f28c 	uxtab	r2, fp, ip
 8002496:	2a3f      	cmp	r2, #63	; 0x3f
 8002498:	f201 8276 	bhi.w	8003988 <pjpeg_decode_mcu+0x1a10>
 800249c:	f640 61da 	movw	r1, #3802	; 0xeda
 80024a0:	f24b 7540 	movw	r5, #46912	; 0xb740
 80024a4:	fa5f f28c 	uxtb.w	r2, ip
 80024a8:	f04f 0e00 	mov.w	lr, #0
 80024ac:	464b      	mov	r3, r9
 80024ae:	f64f 74ff 	movw	r4, #65535	; 0xffff
 80024b2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80024b6:	f6c0 0500 	movt	r5, #2048	; 0x800
 80024ba:	b2de      	uxtb	r6, r3
 80024bc:	3a01      	subs	r2, #1
 80024be:	3301      	adds	r3, #1
 80024c0:	57ae      	ldrsb	r6, [r5, r6]
 80024c2:	4222      	tst	r2, r4
 80024c4:	f821 e016 	strh.w	lr, [r1, r6, lsl #1]
 80024c8:	d1f7      	bne.n	80024ba <pjpeg_decode_mcu+0x542>
 80024ca:	44e1      	add	r9, ip
 80024cc:	f241 2c00 	movw	ip, #4608	; 0x1200
 80024d0:	f241 3e04 	movw	lr, #4868	; 0x1304
 80024d4:	f1a8 0101 	sub.w	r1, r8, #1
 80024d8:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80024dc:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80024e0:	290e      	cmp	r1, #14
 80024e2:	f200 807c 	bhi.w	80025de <pjpeg_decode_mcu+0x666>
 80024e6:	2201      	movs	r2, #1
 80024e8:	e8df f001 	tbb	[pc, r1]
 80024ec:	7e7c089c 	.word	0x7e7c089c
 80024f0:	86848280 	.word	0x86848280
 80024f4:	918e8b88 	.word	0x918e8b88
 80024f8:	009a9794 	.word	0x009a9794
 80024fc:	2202      	movs	r2, #2
 80024fe:	e091      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 8002500:	2df0      	cmp	r5, #240	; 0xf0
 8002502:	f0c0 80bc 	bcc.w	800267e <pjpeg_decode_mcu+0x706>
 8002506:	f10b 0010 	add.w	r0, fp, #16
 800250a:	2840      	cmp	r0, #64	; 0x40
 800250c:	f201 823c 	bhi.w	8003988 <pjpeg_decode_mcu+0x1a10>
 8002510:	f24b 7240 	movw	r2, #46912	; 0xb740
 8002514:	fa5f f089 	uxtb.w	r0, r9
 8002518:	f640 63da 	movw	r3, #3802	; 0xeda
 800251c:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002520:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002524:	5611      	ldrsb	r1, [r2, r0]
 8002526:	2000      	movs	r0, #0
 8002528:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 800252c:	f109 0101 	add.w	r1, r9, #1
 8002530:	b2c9      	uxtb	r1, r1
 8002532:	5651      	ldrsb	r1, [r2, r1]
 8002534:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 8002538:	f109 0102 	add.w	r1, r9, #2
 800253c:	b2c9      	uxtb	r1, r1
 800253e:	5651      	ldrsb	r1, [r2, r1]
 8002540:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 8002544:	f109 0103 	add.w	r1, r9, #3
 8002548:	b2c9      	uxtb	r1, r1
 800254a:	5651      	ldrsb	r1, [r2, r1]
 800254c:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 8002550:	f109 0104 	add.w	r1, r9, #4
 8002554:	b2c9      	uxtb	r1, r1
 8002556:	5651      	ldrsb	r1, [r2, r1]
 8002558:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 800255c:	f109 0105 	add.w	r1, r9, #5
 8002560:	b2c9      	uxtb	r1, r1
 8002562:	5651      	ldrsb	r1, [r2, r1]
 8002564:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 8002568:	f109 0106 	add.w	r1, r9, #6
 800256c:	b2c9      	uxtb	r1, r1
 800256e:	5651      	ldrsb	r1, [r2, r1]
 8002570:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 8002574:	f109 0107 	add.w	r1, r9, #7
 8002578:	b2c9      	uxtb	r1, r1
 800257a:	5651      	ldrsb	r1, [r2, r1]
 800257c:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 8002580:	f109 0108 	add.w	r1, r9, #8
 8002584:	b2c9      	uxtb	r1, r1
 8002586:	5651      	ldrsb	r1, [r2, r1]
 8002588:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 800258c:	f109 0109 	add.w	r1, r9, #9
 8002590:	b2c9      	uxtb	r1, r1
 8002592:	5651      	ldrsb	r1, [r2, r1]
 8002594:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 8002598:	f109 010a 	add.w	r1, r9, #10
 800259c:	b2c9      	uxtb	r1, r1
 800259e:	5651      	ldrsb	r1, [r2, r1]
 80025a0:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 80025a4:	f109 010b 	add.w	r1, r9, #11
 80025a8:	b2c9      	uxtb	r1, r1
 80025aa:	5651      	ldrsb	r1, [r2, r1]
 80025ac:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 80025b0:	f109 010c 	add.w	r1, r9, #12
 80025b4:	b2c9      	uxtb	r1, r1
 80025b6:	5651      	ldrsb	r1, [r2, r1]
 80025b8:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 80025bc:	f109 010d 	add.w	r1, r9, #13
 80025c0:	b2c9      	uxtb	r1, r1
 80025c2:	5651      	ldrsb	r1, [r2, r1]
 80025c4:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 80025c8:	f109 010e 	add.w	r1, r9, #14
 80025cc:	f109 090f 	add.w	r9, r9, #15
 80025d0:	b2c9      	uxtb	r1, r1
 80025d2:	5651      	ldrsb	r1, [r2, r1]
 80025d4:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 80025d8:	fa5f f189 	uxtb.w	r1, r9
 80025dc:	e043      	b.n	8002666 <pjpeg_decode_mcu+0x6ee>
 80025de:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 80025e0:	b203      	sxth	r3, r0
 80025e2:	e031      	b.n	8002648 <pjpeg_decode_mcu+0x6d0>
 80025e4:	2204      	movs	r2, #4
 80025e6:	e01d      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 80025e8:	2208      	movs	r2, #8
 80025ea:	e01b      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 80025ec:	2210      	movs	r2, #16
 80025ee:	e019      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 80025f0:	2220      	movs	r2, #32
 80025f2:	e017      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 80025f4:	2240      	movs	r2, #64	; 0x40
 80025f6:	e015      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 80025f8:	2280      	movs	r2, #128	; 0x80
 80025fa:	e013      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 80025fc:	f44f 7280 	mov.w	r2, #256	; 0x100
 8002600:	e010      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 8002602:	f44f 7200 	mov.w	r2, #512	; 0x200
 8002606:	e00d      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 8002608:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800260c:	e00a      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 800260e:	f44f 6200 	mov.w	r2, #2048	; 0x800
 8002612:	e007      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 8002614:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 8002618:	e004      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 800261a:	f44f 5200 	mov.w	r2, #8192	; 0x2000
 800261e:	e001      	b.n	8002624 <pjpeg_decode_mcu+0x6ac>
 8002620:	f44f 4280 	mov.w	r2, #16384	; 0x4000
 8002624:	b292      	uxth	r2, r2
 8002626:	b203      	sxth	r3, r0
 8002628:	4282      	cmp	r2, r0
 800262a:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800262c:	d90c      	bls.n	8002648 <pjpeg_decode_mcu+0x6d0>
 800262e:	b2c8      	uxtb	r0, r1
 8002630:	280e      	cmp	r0, #14
 8002632:	d807      	bhi.n	8002644 <pjpeg_decode_mcu+0x6cc>
 8002634:	b248      	sxtb	r0, r1
 8002636:	f24b 71a0 	movw	r1, #47008	; 0xb7a0
 800263a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800263e:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8002642:	e000      	b.n	8002646 <pjpeg_decode_mcu+0x6ce>
 8002644:	2000      	movs	r0, #0
 8002646:	4403      	add	r3, r0
 8002648:	fa5f f189 	uxtb.w	r1, r9
 800264c:	f932 0011 	ldrsh.w	r0, [r2, r1, lsl #1]
 8002650:	b21a      	sxth	r2, r3
 8002652:	f640 63da 	movw	r3, #3802	; 0xeda
 8002656:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800265a:	fb12 f000 	smulbb	r0, r2, r0
 800265e:	f24b 7240 	movw	r2, #46912	; 0xb740
 8002662:	f6c0 0200 	movt	r2, #2048	; 0x800
 8002666:	5651      	ldrsb	r1, [r2, r1]
 8002668:	f109 0901 	add.w	r9, r9, #1
 800266c:	fa5f fb89 	uxtb.w	fp, r9
 8002670:	f1bb 0f40 	cmp.w	fp, #64	; 0x40
 8002674:	f823 0011 	strh.w	r0, [r3, r1, lsl #1]
 8002678:	f4ff ae9c 	bcc.w	80023b4 <pjpeg_decode_mcu+0x43c>
 800267c:	e012      	b.n	80026a4 <pjpeg_decode_mcu+0x72c>
 800267e:	f640 63da 	movw	r3, #3802	; 0xeda
 8002682:	f24b 7640 	movw	r6, #46912	; 0xb740
 8002686:	fa5f f089 	uxtb.w	r0, r9
 800268a:	2200      	movs	r2, #0
 800268c:	283f      	cmp	r0, #63	; 0x3f
 800268e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002692:	f6c0 0600 	movt	r6, #2048	; 0x800
 8002696:	d805      	bhi.n	80026a4 <pjpeg_decode_mcu+0x72c>
 8002698:	5631      	ldrsb	r1, [r6, r0]
 800269a:	3001      	adds	r0, #1
 800269c:	2840      	cmp	r0, #64	; 0x40
 800269e:	f823 2011 	strh.w	r2, [r3, r1, lsl #1]
 80026a2:	d1f9      	bne.n	8002698 <pjpeg_decode_mcu+0x720>
 80026a4:	f04f 0c00 	mov.w	ip, #0
 80026a8:	4619      	mov	r1, r3
 80026aa:	f9b1 9002 	ldrsh.w	r9, [r1, #2]
 80026ae:	f9b1 2004 	ldrsh.w	r2, [r1, #4]
 80026b2:	f9b1 a006 	ldrsh.w	sl, [r1, #6]
 80026b6:	f9b1 5008 	ldrsh.w	r5, [r1, #8]
 80026ba:	f9b1 b00a 	ldrsh.w	fp, [r1, #10]
 80026be:	f9b1 800c 	ldrsh.w	r8, [r1, #12]
 80026c2:	ea42 0309 	orr.w	r3, r2, r9
 80026c6:	ea43 030a 	orr.w	r3, r3, sl
 80026ca:	432b      	orrs	r3, r5
 80026cc:	ea43 040b 	orr.w	r4, r3, fp
 80026d0:	ea44 0008 	orr.w	r0, r4, r8
 80026d4:	f9b1 400e 	ldrsh.w	r4, [r1, #14]
 80026d8:	4320      	orrs	r0, r4
 80026da:	0400      	lsls	r0, r0, #16
 80026dc:	d07b      	beq.n	80027d6 <pjpeg_decode_mcu+0x85e>
 80026de:	eb08 0302 	add.w	r3, r8, r2
 80026e2:	e9cd 3203 	strd	r3, r2, [sp, #12]
 80026e6:	9502      	str	r5, [sp, #8]
 80026e8:	f9b1 0000 	ldrsh.w	r0, [r1]
 80026ec:	9006      	str	r0, [sp, #24]
 80026ee:	4428      	add	r0, r5
 80026f0:	2580      	movs	r5, #128	; 0x80
 80026f2:	b200      	sxth	r0, r0
 80026f4:	9008      	str	r0, [sp, #32]
 80026f6:	fa00 f083 	sxtah	r0, r0, r3
 80026fa:	eb0b 030a 	add.w	r3, fp, sl
 80026fe:	ebab 0a0a 	sub.w	sl, fp, sl
 8002702:	f44f 7bb5 	mov.w	fp, #362	; 0x16a
 8002706:	b202      	sxth	r2, r0
 8002708:	eb04 0009 	add.w	r0, r4, r9
 800270c:	9305      	str	r3, [sp, #20]
 800270e:	b200      	sxth	r0, r0
 8002710:	920a      	str	r2, [sp, #40]	; 0x28
 8002712:	9007      	str	r0, [sp, #28]
 8002714:	fa00 f083 	sxtah	r0, r0, r3
 8002718:	fa02 fe80 	sxtah	lr, r2, r0
 800271c:	b202      	sxth	r2, r0
 800271e:	eba9 0004 	sub.w	r0, r9, r4
 8002722:	f240 1415 	movw	r4, #277	; 0x115
 8002726:	f04f 0980 	mov.w	r9, #128	; 0x80
 800272a:	b206      	sxth	r6, r0
 800272c:	ebaa 0000 	sub.w	r0, sl, r0
 8002730:	9209      	str	r2, [sp, #36]	; 0x24
 8002732:	f8a1 e000 	strh.w	lr, [r1]
 8002736:	fb16 5604 	smlabb	r6, r6, r4, r5
 800273a:	b200      	sxth	r0, r0
 800273c:	ebc2 2616 	rsb	r6, r2, r6, lsr #8
 8002740:	f44f 4244 	mov.w	r2, #50176	; 0xc400
 8002744:	4350      	muls	r0, r2
 8002746:	9a04      	ldr	r2, [sp, #16]
 8002748:	f500 4000 	add.w	r0, r0, #32768	; 0x8000
 800274c:	eba6 4620 	sub.w	r6, r6, r0, asr #16
 8002750:	1400      	asrs	r0, r0, #16
 8002752:	fa0f fe86 	sxth.w	lr, r6
 8002756:	eba2 0308 	sub.w	r3, r2, r8
 800275a:	9a03      	ldr	r2, [sp, #12]
 800275c:	b21b      	sxth	r3, r3
 800275e:	fb13 530b 	smlabb	r3, r3, fp, r5
 8002762:	b215      	sxth	r5, r2
 8002764:	9a06      	ldr	r2, [sp, #24]
 8002766:	ebc5 2413 	rsb	r4, r5, r3, lsr #8
 800276a:	9b02      	ldr	r3, [sp, #8]
 800276c:	1ad3      	subs	r3, r2, r3
 800276e:	b21a      	sxth	r2, r3
 8002770:	fa02 f384 	sxtah	r3, r2, r4
 8002774:	b224      	sxth	r4, r4
 8002776:	fa0f f883 	sxth.w	r8, r3
 800277a:	1b12      	subs	r2, r2, r4
 800277c:	fa08 f386 	sxtah	r3, r8, r6
 8002780:	b212      	sxth	r2, r2
 8002782:	804b      	strh	r3, [r1, #2]
 8002784:	9b05      	ldr	r3, [sp, #20]
 8002786:	b21e      	sxth	r6, r3
 8002788:	9b07      	ldr	r3, [sp, #28]
 800278a:	1b9e      	subs	r6, r3, r6
 800278c:	f240 239d 	movw	r3, #669	; 0x29d
 8002790:	b236      	sxth	r6, r6
 8002792:	fb16 960b 	smlabb	r6, r6, fp, r9
 8002796:	ebce 2616 	rsb	r6, lr, r6, lsr #8
 800279a:	fa02 f486 	sxtah	r4, r2, r6
 800279e:	808c      	strh	r4, [r1, #4]
 80027a0:	fa0f f48a 	sxth.w	r4, sl
 80027a4:	fb14 9403 	smlabb	r4, r4, r3, r9
 80027a8:	9b08      	ldr	r3, [sp, #32]
 80027aa:	eba0 2014 	sub.w	r0, r0, r4, lsr #8
 80027ae:	fa00 f086 	sxtah	r0, r0, r6
 80027b2:	b204      	sxth	r4, r0
 80027b4:	1b5d      	subs	r5, r3, r5
 80027b6:	b22d      	sxth	r5, r5
 80027b8:	1b2c      	subs	r4, r5, r4
 80027ba:	fa05 f080 	sxtah	r0, r5, r0
 80027be:	80cc      	strh	r4, [r1, #6]
 80027c0:	8108      	strh	r0, [r1, #8]
 80027c2:	b230      	sxth	r0, r6
 80027c4:	1a10      	subs	r0, r2, r0
 80027c6:	8148      	strh	r0, [r1, #10]
 80027c8:	eba8 000e 	sub.w	r0, r8, lr
 80027cc:	8188      	strh	r0, [r1, #12]
 80027ce:	e9dd 2009 	ldrd	r2, r0, [sp, #36]	; 0x24
 80027d2:	1a82      	subs	r2, r0, r2
 80027d4:	e006      	b.n	80027e4 <pjpeg_decode_mcu+0x86c>
 80027d6:	880a      	ldrh	r2, [r1, #0]
 80027d8:	804a      	strh	r2, [r1, #2]
 80027da:	808a      	strh	r2, [r1, #4]
 80027dc:	80ca      	strh	r2, [r1, #6]
 80027de:	810a      	strh	r2, [r1, #8]
 80027e0:	814a      	strh	r2, [r1, #10]
 80027e2:	818a      	strh	r2, [r1, #12]
 80027e4:	f10c 0c01 	add.w	ip, ip, #1
 80027e8:	81ca      	strh	r2, [r1, #14]
 80027ea:	3110      	adds	r1, #16
 80027ec:	fa5f f08c 	uxtb.w	r0, ip
 80027f0:	2808      	cmp	r0, #8
 80027f2:	f4ff af5a 	bcc.w	80026aa <pjpeg_decode_mcu+0x732>
 80027f6:	f640 61da 	movw	r1, #3802	; 0xeda
 80027fa:	f241 2c00 	movw	ip, #4608	; 0x1200
 80027fe:	f04f 0800 	mov.w	r8, #0
 8002802:	f04f 0980 	mov.w	r9, #128	; 0x80
 8002806:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800280a:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800280e:	f9b1 3010 	ldrsh.w	r3, [r1, #16]
 8002812:	f9b1 b020 	ldrsh.w	fp, [r1, #32]
 8002816:	f9b1 2030 	ldrsh.w	r2, [r1, #48]	; 0x30
 800281a:	f9b1 e040 	ldrsh.w	lr, [r1, #64]	; 0x40
 800281e:	ea4b 0003 	orr.w	r0, fp, r3
 8002822:	4310      	orrs	r0, r2
 8002824:	ea40 060e 	orr.w	r6, r0, lr
 8002828:	f9b1 0050 	ldrsh.w	r0, [r1, #80]	; 0x50
 800282c:	ea46 0400 	orr.w	r4, r6, r0
 8002830:	f9b1 6060 	ldrsh.w	r6, [r1, #96]	; 0x60
 8002834:	ea44 0506 	orr.w	r5, r4, r6
 8002838:	f9b1 4070 	ldrsh.w	r4, [r1, #112]	; 0x70
 800283c:	4325      	orrs	r5, r4
 800283e:	042d      	lsls	r5, r5, #16
 8002840:	f000 80e7 	beq.w	8002a12 <pjpeg_decode_mcu+0xa9a>
 8002844:	18e5      	adds	r5, r4, r3
 8002846:	1b1b      	subs	r3, r3, r4
 8002848:	f8cd 8024 	str.w	r8, [sp, #36]	; 0x24
 800284c:	eb00 0c02 	add.w	ip, r0, r2
 8002850:	1a80      	subs	r0, r0, r2
 8002852:	fa0f f885 	sxth.w	r8, r5
 8002856:	1ac2      	subs	r2, r0, r3
 8002858:	b21c      	sxth	r4, r3
 800285a:	f44f 4344 	mov.w	r3, #50176	; 0xc400
 800285e:	b200      	sxth	r0, r0
 8002860:	fa08 f58c 	sxtah	r5, r8, ip
 8002864:	b212      	sxth	r2, r2
 8002866:	fa0f fa85 	sxth.w	sl, r5
 800286a:	f240 1515 	movw	r5, #277	; 0x115
 800286e:	435a      	muls	r2, r3
 8002870:	fb14 9405 	smlabb	r4, r4, r5, r9
 8002874:	f502 4300 	add.w	r3, r2, #32768	; 0x8000
 8002878:	f44f 75b5 	mov.w	r5, #362	; 0x16a
 800287c:	ebca 2414 	rsb	r4, sl, r4, lsr #8
 8002880:	eba4 4223 	sub.w	r2, r4, r3, asr #16
 8002884:	b214      	sxth	r4, r2
 8002886:	fa0f f28c 	sxth.w	r2, ip
 800288a:	eba8 0202 	sub.w	r2, r8, r2
 800288e:	f04f 0880 	mov.w	r8, #128	; 0x80
 8002892:	9406      	str	r4, [sp, #24]
 8002894:	b212      	sxth	r2, r2
 8002896:	fb12 9205 	smlabb	r2, r2, r5, r9
 800289a:	ea4f 4923 	mov.w	r9, r3, asr #16
 800289e:	f240 239d 	movw	r3, #669	; 0x29d
 80028a2:	ebc4 2212 	rsb	r2, r4, r2, lsr #8
 80028a6:	eb06 040b 	add.w	r4, r6, fp
 80028aa:	920a      	str	r2, [sp, #40]	; 0x28
 80028ac:	fb10 8203 	smlabb	r2, r0, r3, r8
 80028b0:	f9b1 0000 	ldrsh.w	r0, [r1]
 80028b4:	eb00 030e 	add.w	r3, r0, lr
 80028b8:	eba0 000e 	sub.w	r0, r0, lr
 80028bc:	b21b      	sxth	r3, r3
 80028be:	fa03 f584 	sxtah	r5, r3, r4
 80028c2:	e9cd 5a07 	strd	r5, sl, [sp, #28]
 80028c6:	fa0a f585 	sxtah	r5, sl, r5
 80028ca:	3540      	adds	r5, #64	; 0x40
 80028cc:	eb08 1cd5 	add.w	ip, r8, r5, lsr #7
 80028d0:	ebab 0506 	sub.w	r5, fp, r6
 80028d4:	f44f 76b5 	mov.w	r6, #362	; 0x16a
 80028d8:	b22d      	sxth	r5, r5
 80028da:	fb15 8606 	smlabb	r6, r5, r6, r8
 80028de:	b225      	sxth	r5, r4
 80028e0:	ebc5 2416 	rsb	r4, r5, r6, lsr #8
 80028e4:	b206      	sxth	r6, r0
 80028e6:	fa1f f08c 	uxth.w	r0, ip
 80028ea:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 80028ee:	fa06 fb84 	sxtah	fp, r6, r4
 80028f2:	fa0f fe84 	sxth.w	lr, r4
 80028f6:	eba9 2412 	sub.w	r4, r9, r2, lsr #8
 80028fa:	f04f 0980 	mov.w	r9, #128	; 0x80
 80028fe:	bf24      	itt	cs
 8002900:	fa0f f08c 	sxthcs.w	r0, ip
 8002904:	ea6f 3ce0 	mvncs.w	ip, r0, asr #15
 8002908:	f8dd a018 	ldr.w	sl, [sp, #24]
 800290c:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 800290e:	eba6 0e0e 	sub.w	lr, r6, lr
 8002912:	fa5f f08c 	uxtb.w	r0, ip
 8002916:	f241 2c00 	movw	ip, #4608	; 0x1200
 800291a:	8008      	strh	r0, [r1, #0]
 800291c:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8002920:	fa0a f08b 	sxtah	r0, sl, fp
 8002924:	fa0f f882 	sxth.w	r8, r2
 8002928:	fa04 f482 	sxtah	r4, r4, r2
 800292c:	1b5a      	subs	r2, r3, r5
 800292e:	3040      	adds	r0, #64	; 0x40
 8002930:	b225      	sxth	r5, r4
 8002932:	eb09 10d0 	add.w	r0, r9, r0, lsr #7
 8002936:	b286      	uxth	r6, r0
 8002938:	f5b6 7f80 	cmp.w	r6, #256	; 0x100
 800293c:	bf24      	itt	cs
 800293e:	b200      	sxthcs	r0, r0
 8002940:	ea6f 30e0 	mvncs.w	r0, r0, asr #15
 8002944:	b2c0      	uxtb	r0, r0
 8002946:	8208      	strh	r0, [r1, #16]
 8002948:	fa08 f08e 	sxtah	r0, r8, lr
 800294c:	3040      	adds	r0, #64	; 0x40
 800294e:	eb09 10d0 	add.w	r0, r9, r0, lsr #7
 8002952:	b283      	uxth	r3, r0
 8002954:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8002958:	bf24      	itt	cs
 800295a:	b200      	sxthcs	r0, r0
 800295c:	ea6f 30e0 	mvncs.w	r0, r0, asr #15
 8002960:	b2c0      	uxtb	r0, r0
 8002962:	8408      	strh	r0, [r1, #32]
 8002964:	f1c5 0040 	rsb	r0, r5, #64	; 0x40
 8002968:	fa00 f082 	sxtah	r0, r0, r2
 800296c:	b212      	sxth	r2, r2
 800296e:	eb09 10d0 	add.w	r0, r9, r0, lsr #7
 8002972:	b283      	uxth	r3, r0
 8002974:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8002978:	fa0f f38e 	sxth.w	r3, lr
 800297c:	f241 3e04 	movw	lr, #4868	; 0x1304
 8002980:	bf24      	itt	cs
 8002982:	b200      	sxthcs	r0, r0
 8002984:	ea6f 30e0 	mvncs.w	r0, r0, asr #15
 8002988:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 800298c:	b2c0      	uxtb	r0, r0
 800298e:	8608      	strh	r0, [r1, #48]	; 0x30
 8002990:	18a8      	adds	r0, r5, r2
 8002992:	3040      	adds	r0, #64	; 0x40
 8002994:	eb09 10d0 	add.w	r0, r9, r0, lsr #7
 8002998:	b282      	uxth	r2, r0
 800299a:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 800299e:	fa0f f28b 	sxth.w	r2, fp
 80029a2:	bf24      	itt	cs
 80029a4:	b200      	sxthcs	r0, r0
 80029a6:	ea6f 30e0 	mvncs.w	r0, r0, asr #15
 80029aa:	b2c0      	uxtb	r0, r0
 80029ac:	f8a1 0040 	strh.w	r0, [r1, #64]	; 0x40
 80029b0:	f1c8 0040 	rsb	r0, r8, #64	; 0x40
 80029b4:	4418      	add	r0, r3
 80029b6:	eb09 10d0 	add.w	r0, r9, r0, lsr #7
 80029ba:	b283      	uxth	r3, r0
 80029bc:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 80029c0:	bf24      	itt	cs
 80029c2:	b200      	sxthcs	r0, r0
 80029c4:	ea6f 30e0 	mvncs.w	r0, r0, asr #15
 80029c8:	9b07      	ldr	r3, [sp, #28]
 80029ca:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 80029ce:	b2c0      	uxtb	r0, r0
 80029d0:	f8a1 0050 	strh.w	r0, [r1, #80]	; 0x50
 80029d4:	f1ca 0040 	rsb	r0, sl, #64	; 0x40
 80029d8:	4410      	add	r0, r2
 80029da:	eb09 10d0 	add.w	r0, r9, r0, lsr #7
 80029de:	b21b      	sxth	r3, r3
 80029e0:	b282      	uxth	r2, r0
 80029e2:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80029e6:	bf24      	itt	cs
 80029e8:	b200      	sxthcs	r0, r0
 80029ea:	ea6f 30e0 	mvncs.w	r0, r0, asr #15
 80029ee:	9a08      	ldr	r2, [sp, #32]
 80029f0:	b2c0      	uxtb	r0, r0
 80029f2:	f8a1 0060 	strh.w	r0, [r1, #96]	; 0x60
 80029f6:	f1c2 0040 	rsb	r0, r2, #64	; 0x40
 80029fa:	4418      	add	r0, r3
 80029fc:	eb09 10d0 	add.w	r0, r9, r0, lsr #7
 8002a00:	b282      	uxth	r2, r0
 8002a02:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8002a06:	bf24      	itt	cs
 8002a08:	b200      	sxthcs	r0, r0
 8002a0a:	ea6f 30e0 	mvncs.w	r0, r0, asr #15
 8002a0e:	b2c0      	uxtb	r0, r0
 8002a10:	e01a      	b.n	8002a48 <pjpeg_decode_mcu+0xad0>
 8002a12:	f9b1 0000 	ldrsh.w	r0, [r1]
 8002a16:	f241 3e04 	movw	lr, #4868	; 0x1304
 8002a1a:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002a1e:	3040      	adds	r0, #64	; 0x40
 8002a20:	eb09 10d0 	add.w	r0, r9, r0, lsr #7
 8002a24:	b282      	uxth	r2, r0
 8002a26:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8002a2a:	bf24      	itt	cs
 8002a2c:	b200      	sxthcs	r0, r0
 8002a2e:	ea6f 30e0 	mvncs.w	r0, r0, asr #15
 8002a32:	b2c0      	uxtb	r0, r0
 8002a34:	8008      	strh	r0, [r1, #0]
 8002a36:	8208      	strh	r0, [r1, #16]
 8002a38:	8408      	strh	r0, [r1, #32]
 8002a3a:	8608      	strh	r0, [r1, #48]	; 0x30
 8002a3c:	f8a1 0040 	strh.w	r0, [r1, #64]	; 0x40
 8002a40:	f8a1 0050 	strh.w	r0, [r1, #80]	; 0x50
 8002a44:	f8a1 0060 	strh.w	r0, [r1, #96]	; 0x60
 8002a48:	f108 0801 	add.w	r8, r8, #1
 8002a4c:	f8a1 0070 	strh.w	r0, [r1, #112]	; 0x70
 8002a50:	3102      	adds	r1, #2
 8002a52:	fa5f f088 	uxtb.w	r0, r8
 8002a56:	2808      	cmp	r0, #8
 8002a58:	f4ff aed9 	bcc.w	800280e <pjpeg_decode_mcu+0x896>
 8002a5c:	f640 10f8 	movw	r0, #2552	; 0x9f8
 8002a60:	f8dd a000 	ldr.w	sl, [sp]
 8002a64:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002a68:	6800      	ldr	r0, [r0, #0]
 8002a6a:	2804      	cmp	r0, #4
 8002a6c:	f200 86dc 	bhi.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002a70:	e8df f010 	tbh	[pc, r0, lsl #1]
 8002a74:	009f0005 	.word	0x009f0005
 8002a78:	011d00f3 	.word	0x011d00f3
 8002a7c:	0147      	.short	0x0147
 8002a7e:	f640 61da 	movw	r1, #3802	; 0xeda
 8002a82:	f640 4202 	movw	r2, #3074	; 0xc02
 8002a86:	f640 3302 	movw	r3, #2818	; 0xb02
 8002a8a:	f640 2602 	movw	r6, #2562	; 0xa02
 8002a8e:	2040      	movs	r0, #64	; 0x40
 8002a90:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002a94:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a98:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002a9c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002aa0:	f811 5b02 	ldrb.w	r5, [r1], #2
 8002aa4:	3801      	subs	r0, #1
 8002aa6:	f010 0fff 	tst.w	r0, #255	; 0xff
 8002aaa:	f806 5b01 	strb.w	r5, [r6], #1
 8002aae:	f803 5b01 	strb.w	r5, [r3], #1
 8002ab2:	f802 5b01 	strb.w	r5, [r2], #1
 8002ab6:	d1f3      	bne.n	8002aa0 <pjpeg_decode_mcu+0xb28>
 8002ab8:	f000 beb6 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002abc:	9801      	ldr	r0, [sp, #4]
 8002abe:	2802      	cmp	r0, #2
 8002ac0:	f000 8173 	beq.w	8002daa <pjpeg_decode_mcu+0xe32>
 8002ac4:	2801      	cmp	r0, #1
 8002ac6:	f000 8190 	beq.w	8002dea <pjpeg_decode_mcu+0xe72>
 8002aca:	2800      	cmp	r0, #0
 8002acc:	f040 86ac 	bne.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002ad0:	e05e      	b.n	8002b90 <pjpeg_decode_mcu+0xc18>
 8002ad2:	9801      	ldr	r0, [sp, #4]
 8002ad4:	2803      	cmp	r0, #3
 8002ad6:	f200 86a7 	bhi.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002ada:	9a01      	ldr	r2, [sp, #4]
 8002adc:	e8df f012 	tbh	[pc, r2, lsl #1]
 8002ae0:	013d0058 	.word	0x013d0058
 8002ae4:	01a30004 	.word	0x01a30004
 8002ae8:	b2c8      	uxtb	r0, r1
 8002aea:	2158      	movs	r1, #88	; 0x58
 8002aec:	f64f 72d4 	movw	r2, #65492	; 0xffd4
 8002af0:	fb10 f101 	smulbb	r1, r0, r1
 8002af4:	eb02 2111 	add.w	r1, r2, r1, lsr #8
 8002af8:	f640 3202 	movw	r2, #2818	; 0xb02
 8002afc:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002b00:	b289      	uxth	r1, r1
 8002b02:	7812      	ldrb	r2, [r2, #0]
 8002b04:	1a52      	subs	r2, r2, r1
 8002b06:	f402 437f 	and.w	r3, r2, #65280	; 0xff00
 8002b0a:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8002b0e:	f0c0 83cd 	bcc.w	80032ac <pjpeg_decode_mcu+0x1334>
 8002b12:	0413      	lsls	r3, r2, #16
 8002b14:	2b00      	cmp	r3, #0
 8002b16:	f2c0 83c8 	blt.w	80032aa <pjpeg_decode_mcu+0x1332>
 8002b1a:	f5b3 0f7f 	cmp.w	r3, #16711680	; 0xff0000
 8002b1e:	bfc8      	it	gt
 8002b20:	22ff      	movgt	r2, #255	; 0xff
 8002b22:	e3c3      	b.n	80032ac <pjpeg_decode_mcu+0x1334>
 8002b24:	9801      	ldr	r0, [sp, #4]
 8002b26:	2803      	cmp	r0, #3
 8002b28:	f200 867e 	bhi.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002b2c:	9a01      	ldr	r2, [sp, #4]
 8002b2e:	e8df f012 	tbh	[pc, r2, lsl #1]
 8002b32:	002f      	.short	0x002f
 8002b34:	00040128 	.word	0x00040128
 8002b38:	019b      	.short	0x019b
 8002b3a:	b2c8      	uxtb	r0, r1
 8002b3c:	2158      	movs	r1, #88	; 0x58
 8002b3e:	f64f 72d4 	movw	r2, #65492	; 0xffd4
 8002b42:	fb10 f101 	smulbb	r1, r0, r1
 8002b46:	eb02 2111 	add.w	r1, r2, r1, lsr #8
 8002b4a:	f640 3202 	movw	r2, #2818	; 0xb02
 8002b4e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002b52:	b289      	uxth	r1, r1
 8002b54:	7812      	ldrb	r2, [r2, #0]
 8002b56:	1a52      	subs	r2, r2, r1
 8002b58:	f402 437f 	and.w	r3, r2, #65280	; 0xff00
 8002b5c:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8002b60:	f0c0 83ba 	bcc.w	80032d8 <pjpeg_decode_mcu+0x1360>
 8002b64:	0413      	lsls	r3, r2, #16
 8002b66:	2b00      	cmp	r3, #0
 8002b68:	f2c0 83b5 	blt.w	80032d6 <pjpeg_decode_mcu+0x135e>
 8002b6c:	f5b3 0f7f 	cmp.w	r3, #16711680	; 0xff0000
 8002b70:	bfc8      	it	gt
 8002b72:	22ff      	movgt	r2, #255	; 0xff
 8002b74:	e3b0      	b.n	80032d8 <pjpeg_decode_mcu+0x1360>
 8002b76:	9801      	ldr	r0, [sp, #4]
 8002b78:	2805      	cmp	r0, #5
 8002b7a:	f200 8655 	bhi.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002b7e:	9a01      	ldr	r2, [sp, #4]
 8002b80:	e8df f012 	tbh	[pc, r2, lsl #1]
 8002b84:	00eb0006 	.word	0x00eb0006
 8002b88:	01fc00ff 	.word	0x01fc00ff
 8002b8c:	022e0210 	.word	0x022e0210
 8002b90:	f640 2002 	movw	r0, #2562	; 0xa02
 8002b94:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002b98:	7001      	strb	r1, [r0, #0]
 8002b9a:	f640 3002 	movw	r0, #2818	; 0xb02
 8002b9e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002ba2:	7001      	strb	r1, [r0, #0]
 8002ba4:	f640 4002 	movw	r0, #3074	; 0xc02
 8002ba8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002bac:	7001      	strb	r1, [r0, #0]
 8002bae:	f000 be3b 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002bb2:	9801      	ldr	r0, [sp, #4]
 8002bb4:	2800      	cmp	r0, #0
 8002bb6:	f000 8178 	beq.w	8002eaa <pjpeg_decode_mcu+0xf32>
 8002bba:	2801      	cmp	r0, #1
 8002bbc:	f000 8194 	beq.w	8002ee8 <pjpeg_decode_mcu+0xf70>
 8002bc0:	2802      	cmp	r0, #2
 8002bc2:	f040 8631 	bne.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002bc6:	f640 2102 	movw	r1, #2562	; 0xa02
 8002bca:	f640 3202 	movw	r2, #2818	; 0xb02
 8002bce:	f640 63da 	movw	r3, #3802	; 0xeda
 8002bd2:	2040      	movs	r0, #64	; 0x40
 8002bd4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002bd8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002bdc:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002be0:	f813 6b02 	ldrb.w	r6, [r3], #2
 8002be4:	2467      	movs	r4, #103	; 0x67
 8002be6:	fb16 f504 	smulbb	r5, r6, r4
 8002bea:	f64f 744d 	movw	r4, #65357	; 0xff4d
 8002bee:	eb06 2515 	add.w	r5, r6, r5, lsr #8
 8002bf2:	4425      	add	r5, r4
 8002bf4:	780c      	ldrb	r4, [r1, #0]
 8002bf6:	fa14 f585 	uxtah	r5, r4, r5
 8002bfa:	f405 447f 	and.w	r4, r5, #65280	; 0xff00
 8002bfe:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
 8002c02:	d308      	bcc.n	8002c16 <pjpeg_decode_mcu+0xc9e>
 8002c04:	042c      	lsls	r4, r5, #16
 8002c06:	2c00      	cmp	r4, #0
 8002c08:	db04      	blt.n	8002c14 <pjpeg_decode_mcu+0xc9c>
 8002c0a:	f5b4 0f7f 	cmp.w	r4, #16711680	; 0xff0000
 8002c0e:	bfc8      	it	gt
 8002c10:	25ff      	movgt	r5, #255	; 0xff
 8002c12:	e000      	b.n	8002c16 <pjpeg_decode_mcu+0xc9e>
 8002c14:	2500      	movs	r5, #0
 8002c16:	f801 5b01 	strb.w	r5, [r1], #1
 8002c1a:	24b7      	movs	r4, #183	; 0xb7
 8002c1c:	7815      	ldrb	r5, [r2, #0]
 8002c1e:	fb16 f604 	smulbb	r6, r6, r4
 8002c22:	f64f 74a5 	movw	r4, #65445	; 0xffa5
 8002c26:	eb04 2616 	add.w	r6, r4, r6, lsr #8
 8002c2a:	b2b6      	uxth	r6, r6
 8002c2c:	1bae      	subs	r6, r5, r6
 8002c2e:	f406 457f 	and.w	r5, r6, #65280	; 0xff00
 8002c32:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
 8002c36:	d308      	bcc.n	8002c4a <pjpeg_decode_mcu+0xcd2>
 8002c38:	0435      	lsls	r5, r6, #16
 8002c3a:	2d00      	cmp	r5, #0
 8002c3c:	db04      	blt.n	8002c48 <pjpeg_decode_mcu+0xcd0>
 8002c3e:	f5b5 0f7f 	cmp.w	r5, #16711680	; 0xff0000
 8002c42:	bfc8      	it	gt
 8002c44:	26ff      	movgt	r6, #255	; 0xff
 8002c46:	e000      	b.n	8002c4a <pjpeg_decode_mcu+0xcd2>
 8002c48:	2600      	movs	r6, #0
 8002c4a:	3801      	subs	r0, #1
 8002c4c:	f802 6b01 	strb.w	r6, [r2], #1
 8002c50:	f010 0fff 	tst.w	r0, #255	; 0xff
 8002c54:	d1c4      	bne.n	8002be0 <pjpeg_decode_mcu+0xc68>
 8002c56:	f000 bde7 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002c5a:	9801      	ldr	r0, [sp, #4]
 8002c5c:	2803      	cmp	r0, #3
 8002c5e:	f200 85e3 	bhi.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002c62:	9901      	ldr	r1, [sp, #4]
 8002c64:	e8df f011 	tbh	[pc, r1, lsl #1]
 8002c68:	01dd0004 	.word	0x01dd0004
 8002c6c:	020701fe 	.word	0x020701fe
 8002c70:	f640 61da 	movw	r1, #3802	; 0xeda
 8002c74:	f640 4202 	movw	r2, #3074	; 0xc02
 8002c78:	f640 3302 	movw	r3, #2818	; 0xb02
 8002c7c:	f640 2602 	movw	r6, #2562	; 0xa02
 8002c80:	2040      	movs	r0, #64	; 0x40
 8002c82:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002c86:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002c8a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002c8e:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002c92:	f811 5b02 	ldrb.w	r5, [r1], #2
 8002c96:	3801      	subs	r0, #1
 8002c98:	f010 0fff 	tst.w	r0, #255	; 0xff
 8002c9c:	f806 5b01 	strb.w	r5, [r6], #1
 8002ca0:	f803 5b01 	strb.w	r5, [r3], #1
 8002ca4:	f802 5b01 	strb.w	r5, [r2], #1
 8002ca8:	d1f3      	bne.n	8002c92 <pjpeg_decode_mcu+0xd1a>
 8002caa:	f000 bdbd 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002cae:	9801      	ldr	r0, [sp, #4]
 8002cb0:	2803      	cmp	r0, #3
 8002cb2:	f200 85b9 	bhi.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002cb6:	9901      	ldr	r1, [sp, #4]
 8002cb8:	e8df f011 	tbh	[pc, r1, lsl #1]
 8002cbc:	01e60004 	.word	0x01e60004
 8002cc0:	02100207 	.word	0x02100207
 8002cc4:	f640 61da 	movw	r1, #3802	; 0xeda
 8002cc8:	f640 4202 	movw	r2, #3074	; 0xc02
 8002ccc:	f640 3302 	movw	r3, #2818	; 0xb02
 8002cd0:	f640 2602 	movw	r6, #2562	; 0xa02
 8002cd4:	2040      	movs	r0, #64	; 0x40
 8002cd6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002cda:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002cde:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002ce2:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002ce6:	f811 5b02 	ldrb.w	r5, [r1], #2
 8002cea:	3801      	subs	r0, #1
 8002cec:	f010 0fff 	tst.w	r0, #255	; 0xff
 8002cf0:	f806 5b01 	strb.w	r5, [r6], #1
 8002cf4:	f803 5b01 	strb.w	r5, [r3], #1
 8002cf8:	f802 5b01 	strb.w	r5, [r2], #1
 8002cfc:	d1f3      	bne.n	8002ce6 <pjpeg_decode_mcu+0xd6e>
 8002cfe:	f000 bd93 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002d02:	9801      	ldr	r0, [sp, #4]
 8002d04:	2805      	cmp	r0, #5
 8002d06:	f200 858f 	bhi.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002d0a:	9901      	ldr	r1, [sp, #4]
 8002d0c:	e8df f011 	tbh	[pc, r1, lsl #1]
 8002d10:	01ef0006 	.word	0x01ef0006
 8002d14:	02310210 	.word	0x02310210
 8002d18:	02630252 	.word	0x02630252
 8002d1c:	f640 61da 	movw	r1, #3802	; 0xeda
 8002d20:	f640 4202 	movw	r2, #3074	; 0xc02
 8002d24:	f640 3302 	movw	r3, #2818	; 0xb02
 8002d28:	f640 2602 	movw	r6, #2562	; 0xa02
 8002d2c:	2040      	movs	r0, #64	; 0x40
 8002d2e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002d32:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002d36:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002d3a:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002d3e:	f811 5b02 	ldrb.w	r5, [r1], #2
 8002d42:	3801      	subs	r0, #1
 8002d44:	f010 0fff 	tst.w	r0, #255	; 0xff
 8002d48:	f806 5b01 	strb.w	r5, [r6], #1
 8002d4c:	f803 5b01 	strb.w	r5, [r3], #1
 8002d50:	f802 5b01 	strb.w	r5, [r2], #1
 8002d54:	d1f3      	bne.n	8002d3e <pjpeg_decode_mcu+0xdc6>
 8002d56:	f000 bd67 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002d5a:	f640 2002 	movw	r0, #2562	; 0xa02
 8002d5e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d62:	f880 1040 	strb.w	r1, [r0, #64]	; 0x40
 8002d66:	f640 3002 	movw	r0, #2818	; 0xb02
 8002d6a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d6e:	f880 1040 	strb.w	r1, [r0, #64]	; 0x40
 8002d72:	f640 4002 	movw	r0, #3074	; 0xc02
 8002d76:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d7a:	f880 1040 	strb.w	r1, [r0, #64]	; 0x40
 8002d7e:	f000 bd53 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002d82:	f640 2002 	movw	r0, #2562	; 0xa02
 8002d86:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d8a:	f880 1080 	strb.w	r1, [r0, #128]	; 0x80
 8002d8e:	f640 3002 	movw	r0, #2818	; 0xb02
 8002d92:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d96:	f880 1080 	strb.w	r1, [r0, #128]	; 0x80
 8002d9a:	f640 4002 	movw	r0, #3074	; 0xc02
 8002d9e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002da2:	f880 1080 	strb.w	r1, [r0, #128]	; 0x80
 8002da6:	f000 bd3f 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002daa:	b2c8      	uxtb	r0, r1
 8002dac:	2267      	movs	r2, #103	; 0x67
 8002dae:	fb10 f202 	smulbb	r2, r0, r2
 8002db2:	0a12      	lsrs	r2, r2, #8
 8002db4:	fa52 f181 	uxtab	r1, r2, r1
 8002db8:	f64f 724d 	movw	r2, #65357	; 0xff4d
 8002dbc:	4411      	add	r1, r2
 8002dbe:	f640 2202 	movw	r2, #2562	; 0xa02
 8002dc2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002dc6:	7812      	ldrb	r2, [r2, #0]
 8002dc8:	fa12 f181 	uxtah	r1, r2, r1
 8002dcc:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 8002dd0:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8002dd4:	f0c0 8219 	bcc.w	800320a <pjpeg_decode_mcu+0x1292>
 8002dd8:	040a      	lsls	r2, r1, #16
 8002dda:	2a00      	cmp	r2, #0
 8002ddc:	f2c0 8214 	blt.w	8003208 <pjpeg_decode_mcu+0x1290>
 8002de0:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 8002de4:	bfc8      	it	gt
 8002de6:	21ff      	movgt	r1, #255	; 0xff
 8002de8:	e20f      	b.n	800320a <pjpeg_decode_mcu+0x1292>
 8002dea:	b2c8      	uxtb	r0, r1
 8002dec:	2158      	movs	r1, #88	; 0x58
 8002dee:	f64f 72d4 	movw	r2, #65492	; 0xffd4
 8002df2:	fb10 f101 	smulbb	r1, r0, r1
 8002df6:	eb02 2111 	add.w	r1, r2, r1, lsr #8
 8002dfa:	f640 3202 	movw	r2, #2818	; 0xb02
 8002dfe:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002e02:	b289      	uxth	r1, r1
 8002e04:	7812      	ldrb	r2, [r2, #0]
 8002e06:	1a51      	subs	r1, r2, r1
 8002e08:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 8002e0c:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8002e10:	f0c0 821c 	bcc.w	800324c <pjpeg_decode_mcu+0x12d4>
 8002e14:	040a      	lsls	r2, r1, #16
 8002e16:	2a00      	cmp	r2, #0
 8002e18:	f2c0 8217 	blt.w	800324a <pjpeg_decode_mcu+0x12d2>
 8002e1c:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 8002e20:	bfc8      	it	gt
 8002e22:	21ff      	movgt	r1, #255	; 0xff
 8002e24:	e212      	b.n	800324c <pjpeg_decode_mcu+0x12d4>
 8002e26:	f640 2302 	movw	r3, #2562	; 0xa02
 8002e2a:	b2c8      	uxtb	r0, r1
 8002e2c:	2267      	movs	r2, #103	; 0x67
 8002e2e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002e32:	fb10 f202 	smulbb	r2, r0, r2
 8002e36:	781b      	ldrb	r3, [r3, #0]
 8002e38:	0a12      	lsrs	r2, r2, #8
 8002e3a:	fa52 f181 	uxtab	r1, r2, r1
 8002e3e:	f64f 724d 	movw	r2, #65357	; 0xff4d
 8002e42:	440a      	add	r2, r1
 8002e44:	b291      	uxth	r1, r2
 8002e46:	fa13 f282 	uxtah	r2, r3, r2
 8002e4a:	f402 437f 	and.w	r3, r2, #65280	; 0xff00
 8002e4e:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8002e52:	f0c0 8257 	bcc.w	8003304 <pjpeg_decode_mcu+0x138c>
 8002e56:	0413      	lsls	r3, r2, #16
 8002e58:	2b00      	cmp	r3, #0
 8002e5a:	f2c0 8252 	blt.w	8003302 <pjpeg_decode_mcu+0x138a>
 8002e5e:	f5b3 0f7f 	cmp.w	r3, #16711680	; 0xff0000
 8002e62:	bfc8      	it	gt
 8002e64:	22ff      	movgt	r2, #255	; 0xff
 8002e66:	e24d      	b.n	8003304 <pjpeg_decode_mcu+0x138c>
 8002e68:	f640 2302 	movw	r3, #2562	; 0xa02
 8002e6c:	b2c8      	uxtb	r0, r1
 8002e6e:	2267      	movs	r2, #103	; 0x67
 8002e70:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002e74:	fb10 f202 	smulbb	r2, r0, r2
 8002e78:	781b      	ldrb	r3, [r3, #0]
 8002e7a:	0a12      	lsrs	r2, r2, #8
 8002e7c:	fa52 f181 	uxtab	r1, r2, r1
 8002e80:	f64f 724d 	movw	r2, #65357	; 0xff4d
 8002e84:	440a      	add	r2, r1
 8002e86:	b291      	uxth	r1, r2
 8002e88:	fa13 f282 	uxtah	r2, r3, r2
 8002e8c:	f402 437f 	and.w	r3, r2, #65280	; 0xff00
 8002e90:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8002e94:	f0c0 824c 	bcc.w	8003330 <pjpeg_decode_mcu+0x13b8>
 8002e98:	0413      	lsls	r3, r2, #16
 8002e9a:	2b00      	cmp	r3, #0
 8002e9c:	f2c0 8247 	blt.w	800332e <pjpeg_decode_mcu+0x13b6>
 8002ea0:	f5b3 0f7f 	cmp.w	r3, #16711680	; 0xff0000
 8002ea4:	bfc8      	it	gt
 8002ea6:	22ff      	movgt	r2, #255	; 0xff
 8002ea8:	e242      	b.n	8003330 <pjpeg_decode_mcu+0x13b8>
 8002eaa:	f640 61da 	movw	r1, #3802	; 0xeda
 8002eae:	f640 4202 	movw	r2, #3074	; 0xc02
 8002eb2:	f640 3302 	movw	r3, #2818	; 0xb02
 8002eb6:	f640 2602 	movw	r6, #2562	; 0xa02
 8002eba:	2040      	movs	r0, #64	; 0x40
 8002ebc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002ec0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002ec4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002ec8:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002ecc:	f811 5b02 	ldrb.w	r5, [r1], #2
 8002ed0:	3801      	subs	r0, #1
 8002ed2:	f010 0fff 	tst.w	r0, #255	; 0xff
 8002ed6:	f806 5b01 	strb.w	r5, [r6], #1
 8002eda:	f803 5b01 	strb.w	r5, [r3], #1
 8002ede:	f802 5b01 	strb.w	r5, [r2], #1
 8002ee2:	d1f3      	bne.n	8002ecc <pjpeg_decode_mcu+0xf54>
 8002ee4:	f000 bca0 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002ee8:	f640 3102 	movw	r1, #2818	; 0xb02
 8002eec:	f640 4202 	movw	r2, #3074	; 0xc02
 8002ef0:	f640 63da 	movw	r3, #3802	; 0xeda
 8002ef4:	2040      	movs	r0, #64	; 0x40
 8002ef6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002efa:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002efe:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002f02:	f813 6b02 	ldrb.w	r6, [r3], #2
 8002f06:	2458      	movs	r4, #88	; 0x58
 8002f08:	fb16 f504 	smulbb	r5, r6, r4
 8002f0c:	f64f 74d4 	movw	r4, #65492	; 0xffd4
 8002f10:	eb04 2515 	add.w	r5, r4, r5, lsr #8
 8002f14:	780c      	ldrb	r4, [r1, #0]
 8002f16:	b2ad      	uxth	r5, r5
 8002f18:	1b65      	subs	r5, r4, r5
 8002f1a:	f405 447f 	and.w	r4, r5, #65280	; 0xff00
 8002f1e:	f5b4 7f80 	cmp.w	r4, #256	; 0x100
 8002f22:	d308      	bcc.n	8002f36 <pjpeg_decode_mcu+0xfbe>
 8002f24:	042c      	lsls	r4, r5, #16
 8002f26:	2c00      	cmp	r4, #0
 8002f28:	db04      	blt.n	8002f34 <pjpeg_decode_mcu+0xfbc>
 8002f2a:	f5b4 0f7f 	cmp.w	r4, #16711680	; 0xff0000
 8002f2e:	bfc8      	it	gt
 8002f30:	25ff      	movgt	r5, #255	; 0xff
 8002f32:	e000      	b.n	8002f36 <pjpeg_decode_mcu+0xfbe>
 8002f34:	2500      	movs	r5, #0
 8002f36:	24c6      	movs	r4, #198	; 0xc6
 8002f38:	f801 5b01 	strb.w	r5, [r1], #1
 8002f3c:	fb16 f504 	smulbb	r5, r6, r4
 8002f40:	f64f 741d 	movw	r4, #65309	; 0xff1d
 8002f44:	eb06 2615 	add.w	r6, r6, r5, lsr #8
 8002f48:	7815      	ldrb	r5, [r2, #0]
 8002f4a:	4426      	add	r6, r4
 8002f4c:	fa15 f686 	uxtah	r6, r5, r6
 8002f50:	f406 457f 	and.w	r5, r6, #65280	; 0xff00
 8002f54:	f5b5 7f80 	cmp.w	r5, #256	; 0x100
 8002f58:	d308      	bcc.n	8002f6c <pjpeg_decode_mcu+0xff4>
 8002f5a:	0435      	lsls	r5, r6, #16
 8002f5c:	2d00      	cmp	r5, #0
 8002f5e:	db04      	blt.n	8002f6a <pjpeg_decode_mcu+0xff2>
 8002f60:	f5b5 0f7f 	cmp.w	r5, #16711680	; 0xff0000
 8002f64:	bfc8      	it	gt
 8002f66:	26ff      	movgt	r6, #255	; 0xff
 8002f68:	e000      	b.n	8002f6c <pjpeg_decode_mcu+0xff4>
 8002f6a:	2600      	movs	r6, #0
 8002f6c:	3801      	subs	r0, #1
 8002f6e:	f802 6b01 	strb.w	r6, [r2], #1
 8002f72:	f010 0fff 	tst.w	r0, #255	; 0xff
 8002f76:	d1c4      	bne.n	8002f02 <pjpeg_decode_mcu+0xf8a>
 8002f78:	f000 bc56 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002f7c:	f640 2002 	movw	r0, #2562	; 0xa02
 8002f80:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f84:	f880 10c0 	strb.w	r1, [r0, #192]	; 0xc0
 8002f88:	f640 3002 	movw	r0, #2818	; 0xb02
 8002f8c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f90:	f880 10c0 	strb.w	r1, [r0, #192]	; 0xc0
 8002f94:	f640 4002 	movw	r0, #3074	; 0xc02
 8002f98:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f9c:	f880 10c0 	strb.w	r1, [r0, #192]	; 0xc0
 8002fa0:	f000 bc42 	b.w	8003828 <pjpeg_decode_mcu+0x18b0>
 8002fa4:	b2c8      	uxtb	r0, r1
 8002fa6:	2158      	movs	r1, #88	; 0x58
 8002fa8:	f64f 72d4 	movw	r2, #65492	; 0xffd4
 8002fac:	fb10 f101 	smulbb	r1, r0, r1
 8002fb0:	eb02 2111 	add.w	r1, r2, r1, lsr #8
 8002fb4:	f640 3202 	movw	r2, #2818	; 0xb02
 8002fb8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002fbc:	b289      	uxth	r1, r1
 8002fbe:	7812      	ldrb	r2, [r2, #0]
 8002fc0:	1a52      	subs	r2, r2, r1
 8002fc2:	f402 437f 	and.w	r3, r2, #65280	; 0xff00
 8002fc6:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8002fca:	f0c0 82cb 	bcc.w	8003564 <pjpeg_decode_mcu+0x15ec>
 8002fce:	0413      	lsls	r3, r2, #16
 8002fd0:	2b00      	cmp	r3, #0
 8002fd2:	f2c0 82c6 	blt.w	8003562 <pjpeg_decode_mcu+0x15ea>
 8002fd6:	f5b3 0f7f 	cmp.w	r3, #16711680	; 0xff0000
 8002fda:	bfc8      	it	gt
 8002fdc:	22ff      	movgt	r2, #255	; 0xff
 8002fde:	e2c1      	b.n	8003564 <pjpeg_decode_mcu+0x15ec>
 8002fe0:	f640 2302 	movw	r3, #2562	; 0xa02
 8002fe4:	b2c8      	uxtb	r0, r1
 8002fe6:	2267      	movs	r2, #103	; 0x67
 8002fe8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002fec:	fb10 f202 	smulbb	r2, r0, r2
 8002ff0:	781b      	ldrb	r3, [r3, #0]
 8002ff2:	0a12      	lsrs	r2, r2, #8
 8002ff4:	fa52 f181 	uxtab	r1, r2, r1
 8002ff8:	f64f 724d 	movw	r2, #65357	; 0xff4d
 8002ffc:	440a      	add	r2, r1
 8002ffe:	b291      	uxth	r1, r2
 8003000:	fa13 f282 	uxtah	r2, r3, r2
 8003004:	f402 437f 	and.w	r3, r2, #65280	; 0xff00
 8003008:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 800300c:	f0c0 82c0 	bcc.w	8003590 <pjpeg_decode_mcu+0x1618>
 8003010:	0413      	lsls	r3, r2, #16
 8003012:	2b00      	cmp	r3, #0
 8003014:	f2c0 82bb 	blt.w	800358e <pjpeg_decode_mcu+0x1616>
 8003018:	f5b3 0f7f 	cmp.w	r3, #16711680	; 0xff0000
 800301c:	bfc8      	it	gt
 800301e:	22ff      	movgt	r2, #255	; 0xff
 8003020:	e2b6      	b.n	8003590 <pjpeg_decode_mcu+0x1618>
 8003022:	f640 2002 	movw	r0, #2562	; 0xa02
 8003026:	f640 3102 	movw	r1, #2818	; 0xb02
 800302a:	f640 4202 	movw	r2, #3074	; 0xc02
 800302e:	f640 66da 	movw	r6, #3802	; 0xeda
 8003032:	2340      	movs	r3, #64	; 0x40
 8003034:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003038:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800303c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003040:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003044:	3040      	adds	r0, #64	; 0x40
 8003046:	3140      	adds	r1, #64	; 0x40
 8003048:	3240      	adds	r2, #64	; 0x40
 800304a:	f816 5b02 	ldrb.w	r5, [r6], #2
 800304e:	3b01      	subs	r3, #1
 8003050:	f013 0fff 	tst.w	r3, #255	; 0xff
 8003054:	f800 5b01 	strb.w	r5, [r0], #1
 8003058:	f801 5b01 	strb.w	r5, [r1], #1
 800305c:	f802 5b01 	strb.w	r5, [r2], #1
 8003060:	d1f3      	bne.n	800304a <pjpeg_decode_mcu+0x10d2>
 8003062:	e3e1      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 8003064:	2000      	movs	r0, #0
 8003066:	2100      	movs	r1, #0
 8003068:	f002 f9f2 	bl	8005450 <upsampleCbH>
 800306c:	2004      	movs	r0, #4
 800306e:	2140      	movs	r1, #64	; 0x40
 8003070:	f002 f9ee 	bl	8005450 <upsampleCbH>
 8003074:	e0bf      	b.n	80031f6 <pjpeg_decode_mcu+0x127e>
 8003076:	2000      	movs	r0, #0
 8003078:	2100      	movs	r1, #0
 800307a:	f002 fa7f 	bl	800557c <upsampleCrH>
 800307e:	2004      	movs	r0, #4
 8003080:	2140      	movs	r1, #64	; 0x40
 8003082:	f002 fa7b 	bl	800557c <upsampleCrH>
 8003086:	e0b6      	b.n	80031f6 <pjpeg_decode_mcu+0x127e>
 8003088:	f640 2002 	movw	r0, #2562	; 0xa02
 800308c:	f640 3102 	movw	r1, #2818	; 0xb02
 8003090:	f640 4202 	movw	r2, #3074	; 0xc02
 8003094:	f640 66da 	movw	r6, #3802	; 0xeda
 8003098:	2340      	movs	r3, #64	; 0x40
 800309a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800309e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80030a2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80030a6:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80030aa:	3080      	adds	r0, #128	; 0x80
 80030ac:	3180      	adds	r1, #128	; 0x80
 80030ae:	3280      	adds	r2, #128	; 0x80
 80030b0:	f816 5b02 	ldrb.w	r5, [r6], #2
 80030b4:	3b01      	subs	r3, #1
 80030b6:	f013 0fff 	tst.w	r3, #255	; 0xff
 80030ba:	f800 5b01 	strb.w	r5, [r0], #1
 80030be:	f801 5b01 	strb.w	r5, [r1], #1
 80030c2:	f802 5b01 	strb.w	r5, [r2], #1
 80030c6:	d1f3      	bne.n	80030b0 <pjpeg_decode_mcu+0x1138>
 80030c8:	e3ae      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 80030ca:	2000      	movs	r0, #0
 80030cc:	2100      	movs	r1, #0
 80030ce:	f002 f899 	bl	8005204 <upsampleCbV>
 80030d2:	2020      	movs	r0, #32
 80030d4:	2180      	movs	r1, #128	; 0x80
 80030d6:	f002 f895 	bl	8005204 <upsampleCbV>
 80030da:	e08c      	b.n	80031f6 <pjpeg_decode_mcu+0x127e>
 80030dc:	2000      	movs	r0, #0
 80030de:	2100      	movs	r1, #0
 80030e0:	f002 f924 	bl	800532c <upsampleCrV>
 80030e4:	2020      	movs	r0, #32
 80030e6:	2180      	movs	r1, #128	; 0x80
 80030e8:	f002 f920 	bl	800532c <upsampleCrV>
 80030ec:	e083      	b.n	80031f6 <pjpeg_decode_mcu+0x127e>
 80030ee:	f640 2002 	movw	r0, #2562	; 0xa02
 80030f2:	f640 3102 	movw	r1, #2818	; 0xb02
 80030f6:	f640 4202 	movw	r2, #3074	; 0xc02
 80030fa:	f640 66da 	movw	r6, #3802	; 0xeda
 80030fe:	2340      	movs	r3, #64	; 0x40
 8003100:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003104:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003108:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800310c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003110:	3040      	adds	r0, #64	; 0x40
 8003112:	3140      	adds	r1, #64	; 0x40
 8003114:	3240      	adds	r2, #64	; 0x40
 8003116:	f816 5b02 	ldrb.w	r5, [r6], #2
 800311a:	3b01      	subs	r3, #1
 800311c:	f013 0fff 	tst.w	r3, #255	; 0xff
 8003120:	f800 5b01 	strb.w	r5, [r0], #1
 8003124:	f801 5b01 	strb.w	r5, [r1], #1
 8003128:	f802 5b01 	strb.w	r5, [r2], #1
 800312c:	d1f3      	bne.n	8003116 <pjpeg_decode_mcu+0x119e>
 800312e:	e37b      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 8003130:	f640 2002 	movw	r0, #2562	; 0xa02
 8003134:	f640 3102 	movw	r1, #2818	; 0xb02
 8003138:	f640 4202 	movw	r2, #3074	; 0xc02
 800313c:	f640 66da 	movw	r6, #3802	; 0xeda
 8003140:	2340      	movs	r3, #64	; 0x40
 8003142:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003146:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800314a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800314e:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003152:	3080      	adds	r0, #128	; 0x80
 8003154:	3180      	adds	r1, #128	; 0x80
 8003156:	3280      	adds	r2, #128	; 0x80
 8003158:	f816 5b02 	ldrb.w	r5, [r6], #2
 800315c:	3b01      	subs	r3, #1
 800315e:	f013 0fff 	tst.w	r3, #255	; 0xff
 8003162:	f800 5b01 	strb.w	r5, [r0], #1
 8003166:	f801 5b01 	strb.w	r5, [r1], #1
 800316a:	f802 5b01 	strb.w	r5, [r2], #1
 800316e:	d1f3      	bne.n	8003158 <pjpeg_decode_mcu+0x11e0>
 8003170:	e35a      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 8003172:	f640 2002 	movw	r0, #2562	; 0xa02
 8003176:	f640 3102 	movw	r1, #2818	; 0xb02
 800317a:	f640 4202 	movw	r2, #3074	; 0xc02
 800317e:	f640 66da 	movw	r6, #3802	; 0xeda
 8003182:	2340      	movs	r3, #64	; 0x40
 8003184:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003188:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800318c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003190:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8003194:	30c0      	adds	r0, #192	; 0xc0
 8003196:	31c0      	adds	r1, #192	; 0xc0
 8003198:	32c0      	adds	r2, #192	; 0xc0
 800319a:	f816 5b02 	ldrb.w	r5, [r6], #2
 800319e:	3b01      	subs	r3, #1
 80031a0:	f013 0fff 	tst.w	r3, #255	; 0xff
 80031a4:	f800 5b01 	strb.w	r5, [r0], #1
 80031a8:	f801 5b01 	strb.w	r5, [r1], #1
 80031ac:	f802 5b01 	strb.w	r5, [r2], #1
 80031b0:	d1f3      	bne.n	800319a <pjpeg_decode_mcu+0x1222>
 80031b2:	e339      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 80031b4:	2000      	movs	r0, #0
 80031b6:	2100      	movs	r1, #0
 80031b8:	f002 fa75 	bl	80056a6 <upsampleCb>
 80031bc:	2004      	movs	r0, #4
 80031be:	2140      	movs	r1, #64	; 0x40
 80031c0:	f002 fa71 	bl	80056a6 <upsampleCb>
 80031c4:	2020      	movs	r0, #32
 80031c6:	2180      	movs	r1, #128	; 0x80
 80031c8:	f002 fa6d 	bl	80056a6 <upsampleCb>
 80031cc:	2024      	movs	r0, #36	; 0x24
 80031ce:	21c0      	movs	r1, #192	; 0xc0
 80031d0:	f002 fa69 	bl	80056a6 <upsampleCb>
 80031d4:	e00f      	b.n	80031f6 <pjpeg_decode_mcu+0x127e>
 80031d6:	2000      	movs	r0, #0
 80031d8:	2100      	movs	r1, #0
 80031da:	f002 fb3f 	bl	800585c <upsampleCr>
 80031de:	2004      	movs	r0, #4
 80031e0:	2140      	movs	r1, #64	; 0x40
 80031e2:	f002 fb3b 	bl	800585c <upsampleCr>
 80031e6:	2020      	movs	r0, #32
 80031e8:	2180      	movs	r1, #128	; 0x80
 80031ea:	f002 fb37 	bl	800585c <upsampleCr>
 80031ee:	2024      	movs	r0, #36	; 0x24
 80031f0:	21c0      	movs	r1, #192	; 0xc0
 80031f2:	f002 fb33 	bl	800585c <upsampleCr>
 80031f6:	f241 3e04 	movw	lr, #4868	; 0x1304
 80031fa:	f241 2c00 	movw	ip, #4608	; 0x1200
 80031fe:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8003202:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8003206:	e30f      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 8003208:	2100      	movs	r1, #0
 800320a:	f640 2202 	movw	r2, #2562	; 0xa02
 800320e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003212:	7011      	strb	r1, [r2, #0]
 8003214:	21b7      	movs	r1, #183	; 0xb7
 8003216:	fb10 f001 	smulbb	r0, r0, r1
 800321a:	f64f 71a5 	movw	r1, #65445	; 0xffa5
 800321e:	eb01 2010 	add.w	r0, r1, r0, lsr #8
 8003222:	f640 3102 	movw	r1, #2818	; 0xb02
 8003226:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800322a:	b280      	uxth	r0, r0
 800322c:	7809      	ldrb	r1, [r1, #0]
 800322e:	1a08      	subs	r0, r1, r0
 8003230:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 8003234:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 8003238:	d32a      	bcc.n	8003290 <pjpeg_decode_mcu+0x1318>
 800323a:	0401      	lsls	r1, r0, #16
 800323c:	2900      	cmp	r1, #0
 800323e:	db26      	blt.n	800328e <pjpeg_decode_mcu+0x1316>
 8003240:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 8003244:	bfc8      	it	gt
 8003246:	20ff      	movgt	r0, #255	; 0xff
 8003248:	e022      	b.n	8003290 <pjpeg_decode_mcu+0x1318>
 800324a:	2100      	movs	r1, #0
 800324c:	f640 3202 	movw	r2, #2818	; 0xb02
 8003250:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003254:	7011      	strb	r1, [r2, #0]
 8003256:	21c6      	movs	r1, #198	; 0xc6
 8003258:	fb10 f101 	smulbb	r1, r0, r1
 800325c:	eb00 2011 	add.w	r0, r0, r1, lsr #8
 8003260:	f64f 711d 	movw	r1, #65309	; 0xff1d
 8003264:	4408      	add	r0, r1
 8003266:	f640 4102 	movw	r1, #3074	; 0xc02
 800326a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800326e:	7809      	ldrb	r1, [r1, #0]
 8003270:	fa11 f080 	uxtah	r0, r1, r0
 8003274:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 8003278:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 800327c:	d30f      	bcc.n	800329e <pjpeg_decode_mcu+0x1326>
 800327e:	0401      	lsls	r1, r0, #16
 8003280:	2900      	cmp	r1, #0
 8003282:	db0b      	blt.n	800329c <pjpeg_decode_mcu+0x1324>
 8003284:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 8003288:	bfc8      	it	gt
 800328a:	20ff      	movgt	r0, #255	; 0xff
 800328c:	e007      	b.n	800329e <pjpeg_decode_mcu+0x1326>
 800328e:	2000      	movs	r0, #0
 8003290:	f640 3102 	movw	r1, #2818	; 0xb02
 8003294:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003298:	7008      	strb	r0, [r1, #0]
 800329a:	e2c5      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 800329c:	2000      	movs	r0, #0
 800329e:	f640 4102 	movw	r1, #3074	; 0xc02
 80032a2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80032a6:	7008      	strb	r0, [r1, #0]
 80032a8:	e2be      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 80032aa:	2200      	movs	r2, #0
 80032ac:	f640 3302 	movw	r3, #2818	; 0xb02
 80032b0:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80032b4:	701a      	strb	r2, [r3, #0]
 80032b6:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
 80032ba:	1a51      	subs	r1, r2, r1
 80032bc:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 80032c0:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80032c4:	d34a      	bcc.n	800335c <pjpeg_decode_mcu+0x13e4>
 80032c6:	040a      	lsls	r2, r1, #16
 80032c8:	2a00      	cmp	r2, #0
 80032ca:	db46      	blt.n	800335a <pjpeg_decode_mcu+0x13e2>
 80032cc:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 80032d0:	bfc8      	it	gt
 80032d2:	21ff      	movgt	r1, #255	; 0xff
 80032d4:	e042      	b.n	800335c <pjpeg_decode_mcu+0x13e4>
 80032d6:	2200      	movs	r2, #0
 80032d8:	f640 3302 	movw	r3, #2818	; 0xb02
 80032dc:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80032e0:	701a      	strb	r2, [r3, #0]
 80032e2:	f893 2080 	ldrb.w	r2, [r3, #128]	; 0x80
 80032e6:	1a51      	subs	r1, r2, r1
 80032e8:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 80032ec:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80032f0:	d358      	bcc.n	80033a4 <pjpeg_decode_mcu+0x142c>
 80032f2:	040a      	lsls	r2, r1, #16
 80032f4:	2a00      	cmp	r2, #0
 80032f6:	db54      	blt.n	80033a2 <pjpeg_decode_mcu+0x142a>
 80032f8:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 80032fc:	bfc8      	it	gt
 80032fe:	21ff      	movgt	r1, #255	; 0xff
 8003300:	e050      	b.n	80033a4 <pjpeg_decode_mcu+0x142c>
 8003302:	2200      	movs	r2, #0
 8003304:	f640 2302 	movw	r3, #2562	; 0xa02
 8003308:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800330c:	701a      	strb	r2, [r3, #0]
 800330e:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
 8003312:	4411      	add	r1, r2
 8003314:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 8003318:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 800331c:	d366      	bcc.n	80033ec <pjpeg_decode_mcu+0x1474>
 800331e:	040a      	lsls	r2, r1, #16
 8003320:	2a00      	cmp	r2, #0
 8003322:	db62      	blt.n	80033ea <pjpeg_decode_mcu+0x1472>
 8003324:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 8003328:	bfc8      	it	gt
 800332a:	21ff      	movgt	r1, #255	; 0xff
 800332c:	e05e      	b.n	80033ec <pjpeg_decode_mcu+0x1474>
 800332e:	2200      	movs	r2, #0
 8003330:	f640 2302 	movw	r3, #2562	; 0xa02
 8003334:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003338:	701a      	strb	r2, [r3, #0]
 800333a:	f893 2080 	ldrb.w	r2, [r3, #128]	; 0x80
 800333e:	4411      	add	r1, r2
 8003340:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 8003344:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8003348:	d372      	bcc.n	8003430 <pjpeg_decode_mcu+0x14b8>
 800334a:	040a      	lsls	r2, r1, #16
 800334c:	2a00      	cmp	r2, #0
 800334e:	db6e      	blt.n	800342e <pjpeg_decode_mcu+0x14b6>
 8003350:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 8003354:	bfc8      	it	gt
 8003356:	21ff      	movgt	r1, #255	; 0xff
 8003358:	e06a      	b.n	8003430 <pjpeg_decode_mcu+0x14b8>
 800335a:	2100      	movs	r1, #0
 800335c:	f640 3202 	movw	r2, #2818	; 0xb02
 8003360:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003364:	f882 1040 	strb.w	r1, [r2, #64]	; 0x40
 8003368:	f640 4202 	movw	r2, #3074	; 0xc02
 800336c:	21c6      	movs	r1, #198	; 0xc6
 800336e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003372:	fb10 f101 	smulbb	r1, r0, r1
 8003376:	7812      	ldrb	r2, [r2, #0]
 8003378:	eb00 2011 	add.w	r0, r0, r1, lsr #8
 800337c:	f64f 711d 	movw	r1, #65309	; 0xff1d
 8003380:	4401      	add	r1, r0
 8003382:	b288      	uxth	r0, r1
 8003384:	fa12 f181 	uxtah	r1, r2, r1
 8003388:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 800338c:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8003390:	d370      	bcc.n	8003474 <pjpeg_decode_mcu+0x14fc>
 8003392:	040a      	lsls	r2, r1, #16
 8003394:	2a00      	cmp	r2, #0
 8003396:	db6c      	blt.n	8003472 <pjpeg_decode_mcu+0x14fa>
 8003398:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 800339c:	bfc8      	it	gt
 800339e:	21ff      	movgt	r1, #255	; 0xff
 80033a0:	e068      	b.n	8003474 <pjpeg_decode_mcu+0x14fc>
 80033a2:	2100      	movs	r1, #0
 80033a4:	f640 3202 	movw	r2, #2818	; 0xb02
 80033a8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80033ac:	f882 1080 	strb.w	r1, [r2, #128]	; 0x80
 80033b0:	f640 4202 	movw	r2, #3074	; 0xc02
 80033b4:	21c6      	movs	r1, #198	; 0xc6
 80033b6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80033ba:	fb10 f101 	smulbb	r1, r0, r1
 80033be:	7812      	ldrb	r2, [r2, #0]
 80033c0:	eb00 2011 	add.w	r0, r0, r1, lsr #8
 80033c4:	f64f 711d 	movw	r1, #65309	; 0xff1d
 80033c8:	4401      	add	r1, r0
 80033ca:	b288      	uxth	r0, r1
 80033cc:	fa12 f181 	uxtah	r1, r2, r1
 80033d0:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 80033d4:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80033d8:	d362      	bcc.n	80034a0 <pjpeg_decode_mcu+0x1528>
 80033da:	040a      	lsls	r2, r1, #16
 80033dc:	2a00      	cmp	r2, #0
 80033de:	db5e      	blt.n	800349e <pjpeg_decode_mcu+0x1526>
 80033e0:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 80033e4:	bfc8      	it	gt
 80033e6:	21ff      	movgt	r1, #255	; 0xff
 80033e8:	e05a      	b.n	80034a0 <pjpeg_decode_mcu+0x1528>
 80033ea:	2100      	movs	r1, #0
 80033ec:	f640 2202 	movw	r2, #2562	; 0xa02
 80033f0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80033f4:	f882 1040 	strb.w	r1, [r2, #64]	; 0x40
 80033f8:	21b7      	movs	r1, #183	; 0xb7
 80033fa:	fb10 f001 	smulbb	r0, r0, r1
 80033fe:	f64f 71a5 	movw	r1, #65445	; 0xffa5
 8003402:	eb01 2010 	add.w	r0, r1, r0, lsr #8
 8003406:	f640 3102 	movw	r1, #2818	; 0xb02
 800340a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800340e:	b280      	uxth	r0, r0
 8003410:	7809      	ldrb	r1, [r1, #0]
 8003412:	1a09      	subs	r1, r1, r0
 8003414:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 8003418:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 800341c:	d356      	bcc.n	80034cc <pjpeg_decode_mcu+0x1554>
 800341e:	040a      	lsls	r2, r1, #16
 8003420:	2a00      	cmp	r2, #0
 8003422:	db52      	blt.n	80034ca <pjpeg_decode_mcu+0x1552>
 8003424:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 8003428:	bfc8      	it	gt
 800342a:	21ff      	movgt	r1, #255	; 0xff
 800342c:	e04e      	b.n	80034cc <pjpeg_decode_mcu+0x1554>
 800342e:	2100      	movs	r1, #0
 8003430:	f640 2202 	movw	r2, #2562	; 0xa02
 8003434:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003438:	f882 1080 	strb.w	r1, [r2, #128]	; 0x80
 800343c:	21b7      	movs	r1, #183	; 0xb7
 800343e:	fb10 f001 	smulbb	r0, r0, r1
 8003442:	f64f 71a5 	movw	r1, #65445	; 0xffa5
 8003446:	eb01 2010 	add.w	r0, r1, r0, lsr #8
 800344a:	f640 3102 	movw	r1, #2818	; 0xb02
 800344e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003452:	b280      	uxth	r0, r0
 8003454:	7809      	ldrb	r1, [r1, #0]
 8003456:	1a09      	subs	r1, r1, r0
 8003458:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 800345c:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8003460:	d34a      	bcc.n	80034f8 <pjpeg_decode_mcu+0x1580>
 8003462:	040a      	lsls	r2, r1, #16
 8003464:	2a00      	cmp	r2, #0
 8003466:	db46      	blt.n	80034f6 <pjpeg_decode_mcu+0x157e>
 8003468:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 800346c:	bfc8      	it	gt
 800346e:	21ff      	movgt	r1, #255	; 0xff
 8003470:	e042      	b.n	80034f8 <pjpeg_decode_mcu+0x1580>
 8003472:	2100      	movs	r1, #0
 8003474:	f640 4202 	movw	r2, #3074	; 0xc02
 8003478:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800347c:	7011      	strb	r1, [r2, #0]
 800347e:	f892 1040 	ldrb.w	r1, [r2, #64]	; 0x40
 8003482:	4408      	add	r0, r1
 8003484:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 8003488:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 800348c:	d34a      	bcc.n	8003524 <pjpeg_decode_mcu+0x15ac>
 800348e:	0401      	lsls	r1, r0, #16
 8003490:	2900      	cmp	r1, #0
 8003492:	db46      	blt.n	8003522 <pjpeg_decode_mcu+0x15aa>
 8003494:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 8003498:	bfc8      	it	gt
 800349a:	20ff      	movgt	r0, #255	; 0xff
 800349c:	e042      	b.n	8003524 <pjpeg_decode_mcu+0x15ac>
 800349e:	2100      	movs	r1, #0
 80034a0:	f640 4202 	movw	r2, #3074	; 0xc02
 80034a4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80034a8:	7011      	strb	r1, [r2, #0]
 80034aa:	f892 1080 	ldrb.w	r1, [r2, #128]	; 0x80
 80034ae:	4408      	add	r0, r1
 80034b0:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80034b4:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80034b8:	d33c      	bcc.n	8003534 <pjpeg_decode_mcu+0x15bc>
 80034ba:	0401      	lsls	r1, r0, #16
 80034bc:	2900      	cmp	r1, #0
 80034be:	db38      	blt.n	8003532 <pjpeg_decode_mcu+0x15ba>
 80034c0:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80034c4:	bfc8      	it	gt
 80034c6:	20ff      	movgt	r0, #255	; 0xff
 80034c8:	e034      	b.n	8003534 <pjpeg_decode_mcu+0x15bc>
 80034ca:	2100      	movs	r1, #0
 80034cc:	f640 3202 	movw	r2, #2818	; 0xb02
 80034d0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80034d4:	7011      	strb	r1, [r2, #0]
 80034d6:	f892 1040 	ldrb.w	r1, [r2, #64]	; 0x40
 80034da:	1a08      	subs	r0, r1, r0
 80034dc:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80034e0:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80034e4:	d32e      	bcc.n	8003544 <pjpeg_decode_mcu+0x15cc>
 80034e6:	0401      	lsls	r1, r0, #16
 80034e8:	2900      	cmp	r1, #0
 80034ea:	db2a      	blt.n	8003542 <pjpeg_decode_mcu+0x15ca>
 80034ec:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80034f0:	bfc8      	it	gt
 80034f2:	20ff      	movgt	r0, #255	; 0xff
 80034f4:	e026      	b.n	8003544 <pjpeg_decode_mcu+0x15cc>
 80034f6:	2100      	movs	r1, #0
 80034f8:	f640 3202 	movw	r2, #2818	; 0xb02
 80034fc:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003500:	7011      	strb	r1, [r2, #0]
 8003502:	f892 1080 	ldrb.w	r1, [r2, #128]	; 0x80
 8003506:	1a08      	subs	r0, r1, r0
 8003508:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 800350c:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 8003510:	d320      	bcc.n	8003554 <pjpeg_decode_mcu+0x15dc>
 8003512:	0401      	lsls	r1, r0, #16
 8003514:	2900      	cmp	r1, #0
 8003516:	db1c      	blt.n	8003552 <pjpeg_decode_mcu+0x15da>
 8003518:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 800351c:	bfc8      	it	gt
 800351e:	20ff      	movgt	r0, #255	; 0xff
 8003520:	e018      	b.n	8003554 <pjpeg_decode_mcu+0x15dc>
 8003522:	2000      	movs	r0, #0
 8003524:	f640 4102 	movw	r1, #3074	; 0xc02
 8003528:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800352c:	f881 0040 	strb.w	r0, [r1, #64]	; 0x40
 8003530:	e17a      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 8003532:	2000      	movs	r0, #0
 8003534:	f640 4102 	movw	r1, #3074	; 0xc02
 8003538:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800353c:	f881 0080 	strb.w	r0, [r1, #128]	; 0x80
 8003540:	e172      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 8003542:	2000      	movs	r0, #0
 8003544:	f640 3102 	movw	r1, #2818	; 0xb02
 8003548:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800354c:	f881 0040 	strb.w	r0, [r1, #64]	; 0x40
 8003550:	e16a      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 8003552:	2000      	movs	r0, #0
 8003554:	f640 3102 	movw	r1, #2818	; 0xb02
 8003558:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800355c:	f881 0080 	strb.w	r0, [r1, #128]	; 0x80
 8003560:	e162      	b.n	8003828 <pjpeg_decode_mcu+0x18b0>
 8003562:	2200      	movs	r2, #0
 8003564:	f640 3302 	movw	r3, #2818	; 0xb02
 8003568:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800356c:	701a      	strb	r2, [r3, #0]
 800356e:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
 8003572:	1a52      	subs	r2, r2, r1
 8003574:	f402 437f 	and.w	r3, r2, #65280	; 0xff00
 8003578:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 800357c:	d31e      	bcc.n	80035bc <pjpeg_decode_mcu+0x1644>
 800357e:	0413      	lsls	r3, r2, #16
 8003580:	2b00      	cmp	r3, #0
 8003582:	db1a      	blt.n	80035ba <pjpeg_decode_mcu+0x1642>
 8003584:	f5b3 0f7f 	cmp.w	r3, #16711680	; 0xff0000
 8003588:	bfc8      	it	gt
 800358a:	22ff      	movgt	r2, #255	; 0xff
 800358c:	e016      	b.n	80035bc <pjpeg_decode_mcu+0x1644>
 800358e:	2200      	movs	r2, #0
 8003590:	f640 2302 	movw	r3, #2562	; 0xa02
 8003594:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003598:	701a      	strb	r2, [r3, #0]
 800359a:	f893 2040 	ldrb.w	r2, [r3, #64]	; 0x40
 800359e:	440a      	add	r2, r1
 80035a0:	f402 437f 	and.w	r3, r2, #65280	; 0xff00
 80035a4:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 80035a8:	d31f      	bcc.n	80035ea <pjpeg_decode_mcu+0x1672>
 80035aa:	0413      	lsls	r3, r2, #16
 80035ac:	2b00      	cmp	r3, #0
 80035ae:	db1b      	blt.n	80035e8 <pjpeg_decode_mcu+0x1670>
 80035b0:	f5b3 0f7f 	cmp.w	r3, #16711680	; 0xff0000
 80035b4:	bfc8      	it	gt
 80035b6:	22ff      	movgt	r2, #255	; 0xff
 80035b8:	e017      	b.n	80035ea <pjpeg_decode_mcu+0x1672>
 80035ba:	2200      	movs	r2, #0
 80035bc:	f640 3302 	movw	r3, #2818	; 0xb02
 80035c0:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80035c4:	f883 2040 	strb.w	r2, [r3, #64]	; 0x40
 80035c8:	f893 2080 	ldrb.w	r2, [r3, #128]	; 0x80
 80035cc:	1a52      	subs	r2, r2, r1
 80035ce:	f402 437f 	and.w	r3, r2, #65280	; 0xff00
 80035d2:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 80035d6:	d31f      	bcc.n	8003618 <pjpeg_decode_mcu+0x16a0>
 80035d8:	0413      	lsls	r3, r2, #16
 80035da:	2b00      	cmp	r3, #0
 80035dc:	db1b      	blt.n	8003616 <pjpeg_decode_mcu+0x169e>
 80035de:	f5b3 0f7f 	cmp.w	r3, #16711680	; 0xff0000
 80035e2:	bfc8      	it	gt
 80035e4:	22ff      	movgt	r2, #255	; 0xff
 80035e6:	e017      	b.n	8003618 <pjpeg_decode_mcu+0x16a0>
 80035e8:	2200      	movs	r2, #0
 80035ea:	f640 2302 	movw	r3, #2562	; 0xa02
 80035ee:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80035f2:	f883 2040 	strb.w	r2, [r3, #64]	; 0x40
 80035f6:	f893 2080 	ldrb.w	r2, [r3, #128]	; 0x80
 80035fa:	440a      	add	r2, r1
 80035fc:	f402 437f 	and.w	r3, r2, #65280	; 0xff00
 8003600:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
 8003604:	d31f      	bcc.n	8003646 <pjpeg_decode_mcu+0x16ce>
 8003606:	0413      	lsls	r3, r2, #16
 8003608:	2b00      	cmp	r3, #0
 800360a:	db1b      	blt.n	8003644 <pjpeg_decode_mcu+0x16cc>
 800360c:	f5b3 0f7f 	cmp.w	r3, #16711680	; 0xff0000
 8003610:	bfc8      	it	gt
 8003612:	22ff      	movgt	r2, #255	; 0xff
 8003614:	e017      	b.n	8003646 <pjpeg_decode_mcu+0x16ce>
 8003616:	2200      	movs	r2, #0
 8003618:	f640 3302 	movw	r3, #2818	; 0xb02
 800361c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003620:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 8003624:	f893 20c0 	ldrb.w	r2, [r3, #192]	; 0xc0
 8003628:	1a51      	subs	r1, r2, r1
 800362a:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 800362e:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8003632:	d31f      	bcc.n	8003674 <pjpeg_decode_mcu+0x16fc>
 8003634:	040a      	lsls	r2, r1, #16
 8003636:	2a00      	cmp	r2, #0
 8003638:	db1b      	blt.n	8003672 <pjpeg_decode_mcu+0x16fa>
 800363a:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 800363e:	bfc8      	it	gt
 8003640:	21ff      	movgt	r1, #255	; 0xff
 8003642:	e017      	b.n	8003674 <pjpeg_decode_mcu+0x16fc>
 8003644:	2200      	movs	r2, #0
 8003646:	f640 2302 	movw	r3, #2562	; 0xa02
 800364a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800364e:	f883 2080 	strb.w	r2, [r3, #128]	; 0x80
 8003652:	f893 20c0 	ldrb.w	r2, [r3, #192]	; 0xc0
 8003656:	4411      	add	r1, r2
 8003658:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 800365c:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8003660:	d32c      	bcc.n	80036bc <pjpeg_decode_mcu+0x1744>
 8003662:	040a      	lsls	r2, r1, #16
 8003664:	2a00      	cmp	r2, #0
 8003666:	db28      	blt.n	80036ba <pjpeg_decode_mcu+0x1742>
 8003668:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 800366c:	bfc8      	it	gt
 800366e:	21ff      	movgt	r1, #255	; 0xff
 8003670:	e024      	b.n	80036bc <pjpeg_decode_mcu+0x1744>
 8003672:	2100      	movs	r1, #0
 8003674:	f640 3202 	movw	r2, #2818	; 0xb02
 8003678:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800367c:	f882 10c0 	strb.w	r1, [r2, #192]	; 0xc0
 8003680:	f640 4202 	movw	r2, #3074	; 0xc02
 8003684:	21c6      	movs	r1, #198	; 0xc6
 8003686:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800368a:	fb10 f101 	smulbb	r1, r0, r1
 800368e:	7812      	ldrb	r2, [r2, #0]
 8003690:	eb00 2011 	add.w	r0, r0, r1, lsr #8
 8003694:	f64f 711d 	movw	r1, #65309	; 0xff1d
 8003698:	4401      	add	r1, r0
 800369a:	b288      	uxth	r0, r1
 800369c:	fa12 f181 	uxtah	r1, r2, r1
 80036a0:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 80036a4:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80036a8:	d32a      	bcc.n	8003700 <pjpeg_decode_mcu+0x1788>
 80036aa:	040a      	lsls	r2, r1, #16
 80036ac:	2a00      	cmp	r2, #0
 80036ae:	db26      	blt.n	80036fe <pjpeg_decode_mcu+0x1786>
 80036b0:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 80036b4:	bfc8      	it	gt
 80036b6:	21ff      	movgt	r1, #255	; 0xff
 80036b8:	e022      	b.n	8003700 <pjpeg_decode_mcu+0x1788>
 80036ba:	2100      	movs	r1, #0
 80036bc:	f640 2202 	movw	r2, #2562	; 0xa02
 80036c0:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80036c4:	f882 10c0 	strb.w	r1, [r2, #192]	; 0xc0
 80036c8:	21b7      	movs	r1, #183	; 0xb7
 80036ca:	fb10 f001 	smulbb	r0, r0, r1
 80036ce:	f64f 71a5 	movw	r1, #65445	; 0xffa5
 80036d2:	eb01 2010 	add.w	r0, r1, r0, lsr #8
 80036d6:	f640 3102 	movw	r1, #2818	; 0xb02
 80036da:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80036de:	b280      	uxth	r0, r0
 80036e0:	7809      	ldrb	r1, [r1, #0]
 80036e2:	1a09      	subs	r1, r1, r0
 80036e4:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 80036e8:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80036ec:	d31e      	bcc.n	800372c <pjpeg_decode_mcu+0x17b4>
 80036ee:	040a      	lsls	r2, r1, #16
 80036f0:	2a00      	cmp	r2, #0
 80036f2:	db1a      	blt.n	800372a <pjpeg_decode_mcu+0x17b2>
 80036f4:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 80036f8:	bfc8      	it	gt
 80036fa:	21ff      	movgt	r1, #255	; 0xff
 80036fc:	e016      	b.n	800372c <pjpeg_decode_mcu+0x17b4>
 80036fe:	2100      	movs	r1, #0
 8003700:	f640 4202 	movw	r2, #3074	; 0xc02
 8003704:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003708:	7011      	strb	r1, [r2, #0]
 800370a:	f892 1040 	ldrb.w	r1, [r2, #64]	; 0x40
 800370e:	4401      	add	r1, r0
 8003710:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 8003714:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8003718:	d31e      	bcc.n	8003758 <pjpeg_decode_mcu+0x17e0>
 800371a:	040a      	lsls	r2, r1, #16
 800371c:	2a00      	cmp	r2, #0
 800371e:	db1a      	blt.n	8003756 <pjpeg_decode_mcu+0x17de>
 8003720:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 8003724:	bfc8      	it	gt
 8003726:	21ff      	movgt	r1, #255	; 0xff
 8003728:	e016      	b.n	8003758 <pjpeg_decode_mcu+0x17e0>
 800372a:	2100      	movs	r1, #0
 800372c:	f640 3202 	movw	r2, #2818	; 0xb02
 8003730:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003734:	7011      	strb	r1, [r2, #0]
 8003736:	f892 1040 	ldrb.w	r1, [r2, #64]	; 0x40
 800373a:	1a09      	subs	r1, r1, r0
 800373c:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 8003740:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8003744:	d31f      	bcc.n	8003786 <pjpeg_decode_mcu+0x180e>
 8003746:	040a      	lsls	r2, r1, #16
 8003748:	2a00      	cmp	r2, #0
 800374a:	db1b      	blt.n	8003784 <pjpeg_decode_mcu+0x180c>
 800374c:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 8003750:	bfc8      	it	gt
 8003752:	21ff      	movgt	r1, #255	; 0xff
 8003754:	e017      	b.n	8003786 <pjpeg_decode_mcu+0x180e>
 8003756:	2100      	movs	r1, #0
 8003758:	f640 4202 	movw	r2, #3074	; 0xc02
 800375c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003760:	f882 1040 	strb.w	r1, [r2, #64]	; 0x40
 8003764:	f892 1080 	ldrb.w	r1, [r2, #128]	; 0x80
 8003768:	4401      	add	r1, r0
 800376a:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 800376e:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 8003772:	d31f      	bcc.n	80037b4 <pjpeg_decode_mcu+0x183c>
 8003774:	040a      	lsls	r2, r1, #16
 8003776:	2a00      	cmp	r2, #0
 8003778:	db1b      	blt.n	80037b2 <pjpeg_decode_mcu+0x183a>
 800377a:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 800377e:	bfc8      	it	gt
 8003780:	21ff      	movgt	r1, #255	; 0xff
 8003782:	e017      	b.n	80037b4 <pjpeg_decode_mcu+0x183c>
 8003784:	2100      	movs	r1, #0
 8003786:	f640 3202 	movw	r2, #2818	; 0xb02
 800378a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800378e:	f882 1040 	strb.w	r1, [r2, #64]	; 0x40
 8003792:	f892 1080 	ldrb.w	r1, [r2, #128]	; 0x80
 8003796:	1a09      	subs	r1, r1, r0
 8003798:	f401 427f 	and.w	r2, r1, #65280	; 0xff00
 800379c:	f5b2 7f80 	cmp.w	r2, #256	; 0x100
 80037a0:	d31f      	bcc.n	80037e2 <pjpeg_decode_mcu+0x186a>
 80037a2:	040a      	lsls	r2, r1, #16
 80037a4:	2a00      	cmp	r2, #0
 80037a6:	db1b      	blt.n	80037e0 <pjpeg_decode_mcu+0x1868>
 80037a8:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 80037ac:	bfc8      	it	gt
 80037ae:	21ff      	movgt	r1, #255	; 0xff
 80037b0:	e017      	b.n	80037e2 <pjpeg_decode_mcu+0x186a>
 80037b2:	2100      	movs	r1, #0
 80037b4:	f640 4202 	movw	r2, #3074	; 0xc02
 80037b8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80037bc:	f882 1080 	strb.w	r1, [r2, #128]	; 0x80
 80037c0:	f892 10c0 	ldrb.w	r1, [r2, #192]	; 0xc0
 80037c4:	4408      	add	r0, r1
 80037c6:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80037ca:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80037ce:	d31f      	bcc.n	8003810 <pjpeg_decode_mcu+0x1898>
 80037d0:	0401      	lsls	r1, r0, #16
 80037d2:	2900      	cmp	r1, #0
 80037d4:	db1b      	blt.n	800380e <pjpeg_decode_mcu+0x1896>
 80037d6:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80037da:	bfc8      	it	gt
 80037dc:	20ff      	movgt	r0, #255	; 0xff
 80037de:	e017      	b.n	8003810 <pjpeg_decode_mcu+0x1898>
 80037e0:	2100      	movs	r1, #0
 80037e2:	f640 3202 	movw	r2, #2818	; 0xb02
 80037e6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80037ea:	f882 1080 	strb.w	r1, [r2, #128]	; 0x80
 80037ee:	f892 10c0 	ldrb.w	r1, [r2, #192]	; 0xc0
 80037f2:	1a08      	subs	r0, r1, r0
 80037f4:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80037f8:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80037fc:	d30e      	bcc.n	800381c <pjpeg_decode_mcu+0x18a4>
 80037fe:	0401      	lsls	r1, r0, #16
 8003800:	2900      	cmp	r1, #0
 8003802:	db0a      	blt.n	800381a <pjpeg_decode_mcu+0x18a2>
 8003804:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 8003808:	bfc8      	it	gt
 800380a:	20ff      	movgt	r0, #255	; 0xff
 800380c:	e006      	b.n	800381c <pjpeg_decode_mcu+0x18a4>
 800380e:	2000      	movs	r0, #0
 8003810:	f640 4102 	movw	r1, #3074	; 0xc02
 8003814:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003818:	e004      	b.n	8003824 <pjpeg_decode_mcu+0x18ac>
 800381a:	2000      	movs	r0, #0
 800381c:	f640 3102 	movw	r1, #2818	; 0xb02
 8003820:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003824:	f881 00c0 	strb.w	r0, [r1, #192]	; 0xc0
 8003828:	f640 5006 	movw	r0, #3334	; 0xd06
 800382c:	f10a 0a01 	add.w	sl, sl, #1
 8003830:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003834:	fa5f f18a 	uxtb.w	r1, sl
 8003838:	7800      	ldrb	r0, [r0, #0]
 800383a:	4281      	cmp	r1, r0
 800383c:	f4fe abd3 	bcc.w	8001fe6 <pjpeg_decode_mcu+0x6e>
 8003840:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8003844:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003848:	7801      	ldrb	r1, [r0, #0]
 800384a:	2900      	cmp	r1, #0
 800384c:	f000 8092 	beq.w	8003974 <pjpeg_decode_mcu+0x19fc>
 8003850:	2000      	movs	r0, #0
 8003852:	e09f      	b.n	8003994 <pjpeg_decode_mcu+0x1a1c>
 8003854:	2001      	movs	r0, #1
 8003856:	e0a0      	b.n	800399a <pjpeg_decode_mcu+0x1a22>
 8003858:	f241 2801 	movw	r8, #4609	; 0x1201
 800385c:	f241 2903 	movw	r9, #4611	; 0x1203
 8003860:	f241 3503 	movw	r5, #4867	; 0x1303
 8003864:	f44f 66c0 	mov.w	r6, #1536	; 0x600
 8003868:	f64f 7bff 	movw	fp, #65535	; 0xffff
 800386c:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8003870:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8003874:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8003878:	f898 0000 	ldrb.w	r0, [r8]
 800387c:	f109 0a04 	add.w	sl, r9, #4
 8003880:	0601      	lsls	r1, r0, #24
 8003882:	d11c      	bne.n	80038be <pjpeg_decode_mcu+0x1946>
 8003884:	2004      	movs	r0, #4
 8003886:	21fc      	movs	r1, #252	; 0xfc
 8003888:	4642      	mov	r2, r8
 800388a:	7028      	strb	r0, [r5, #0]
 800388c:	2000      	movs	r0, #0
 800388e:	f888 0000 	strb.w	r0, [r8]
 8003892:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8003896:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800389a:	6803      	ldr	r3, [r0, #0]
 800389c:	f640 10e8 	movw	r0, #2536	; 0x9e8
 80038a0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80038a4:	6804      	ldr	r4, [r0, #0]
 80038a6:	4650      	mov	r0, sl
 80038a8:	47a0      	blx	r4
 80038aa:	f640 13e4 	movw	r3, #2532	; 0x9e4
 80038ae:	2800      	cmp	r0, #0
 80038b0:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80038b4:	bf18      	it	ne
 80038b6:	7018      	strbne	r0, [r3, #0]
 80038b8:	f898 0000 	ldrb.w	r0, [r8]
 80038bc:	b170      	cbz	r0, 80038dc <pjpeg_decode_mcu+0x1964>
 80038be:	7829      	ldrb	r1, [r5, #0]
 80038c0:	3801      	subs	r0, #1
 80038c2:	f888 0000 	strb.w	r0, [r8]
 80038c6:	1c4a      	adds	r2, r1, #1
 80038c8:	f819 1001 	ldrb.w	r1, [r9, r1]
 80038cc:	702a      	strb	r2, [r5, #0]
 80038ce:	29ff      	cmp	r1, #255	; 0xff
 80038d0:	d010      	beq.n	80038f4 <pjpeg_decode_mcu+0x197c>
 80038d2:	3e01      	subs	r6, #1
 80038d4:	ea16 0f0b 	tst.w	r6, fp
 80038d8:	d1d2      	bne.n	8003880 <pjpeg_decode_mcu+0x1908>
 80038da:	e048      	b.n	800396e <pjpeg_decode_mcu+0x19f6>
 80038dc:	f241 2002 	movw	r0, #4610	; 0x1202
 80038e0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80038e4:	4602      	mov	r2, r0
 80038e6:	7811      	ldrb	r1, [r2, #0]
 80038e8:	43c8      	mvns	r0, r1
 80038ea:	29ff      	cmp	r1, #255	; 0xff
 80038ec:	7010      	strb	r0, [r2, #0]
 80038ee:	f04f 0000 	mov.w	r0, #0
 80038f2:	d0ee      	beq.n	80038d2 <pjpeg_decode_mcu+0x195a>
 80038f4:	f64f 7bff 	movw	fp, #65535	; 0xffff
 80038f8:	e00b      	b.n	8003912 <pjpeg_decode_mcu+0x199a>
 80038fa:	f241 2002 	movw	r0, #4610	; 0x1202
 80038fe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003902:	4602      	mov	r2, r0
 8003904:	7810      	ldrb	r0, [r2, #0]
 8003906:	43c1      	mvns	r1, r0
 8003908:	28ff      	cmp	r0, #255	; 0xff
 800390a:	7011      	strb	r1, [r2, #0]
 800390c:	d04a      	beq.n	80039a4 <pjpeg_decode_mcu+0x1a2c>
 800390e:	2000      	movs	r0, #0
 8003910:	e029      	b.n	8003966 <pjpeg_decode_mcu+0x19ee>
 8003912:	0601      	lsls	r1, r0, #24
 8003914:	d11d      	bne.n	8003952 <pjpeg_decode_mcu+0x19da>
 8003916:	2004      	movs	r0, #4
 8003918:	21fc      	movs	r1, #252	; 0xfc
 800391a:	4642      	mov	r2, r8
 800391c:	7028      	strb	r0, [r5, #0]
 800391e:	2000      	movs	r0, #0
 8003920:	f888 0000 	strb.w	r0, [r8]
 8003924:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8003928:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800392c:	6803      	ldr	r3, [r0, #0]
 800392e:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8003932:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003936:	6804      	ldr	r4, [r0, #0]
 8003938:	4650      	mov	r0, sl
 800393a:	47a0      	blx	r4
 800393c:	f640 13e4 	movw	r3, #2532	; 0x9e4
 8003940:	2800      	cmp	r0, #0
 8003942:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003946:	bf18      	it	ne
 8003948:	7018      	strbne	r0, [r3, #0]
 800394a:	f898 0000 	ldrb.w	r0, [r8]
 800394e:	2800      	cmp	r0, #0
 8003950:	d0d3      	beq.n	80038fa <pjpeg_decode_mcu+0x1982>
 8003952:	7829      	ldrb	r1, [r5, #0]
 8003954:	3801      	subs	r0, #1
 8003956:	f888 0000 	strb.w	r0, [r8]
 800395a:	1c4a      	adds	r2, r1, #1
 800395c:	f819 1001 	ldrb.w	r1, [r9, r1]
 8003960:	702a      	strb	r2, [r5, #0]
 8003962:	29ff      	cmp	r1, #255	; 0xff
 8003964:	d11f      	bne.n	80039a6 <pjpeg_decode_mcu+0x1a2e>
 8003966:	3e01      	subs	r6, #1
 8003968:	ea16 0f0b 	tst.w	r6, fp
 800396c:	d1d1      	bne.n	8003912 <pjpeg_decode_mcu+0x199a>
 800396e:	7819      	ldrb	r1, [r3, #0]
 8003970:	201d      	movs	r0, #29
 8003972:	e00f      	b.n	8003994 <pjpeg_decode_mcu+0x1a1c>
 8003974:	f640 10e6 	movw	r0, #2534	; 0x9e6
 8003978:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800397c:	4601      	mov	r1, r0
 800397e:	8808      	ldrh	r0, [r1, #0]
 8003980:	3801      	subs	r0, #1
 8003982:	8008      	strh	r0, [r1, #0]
 8003984:	2000      	movs	r0, #0
 8003986:	e008      	b.n	800399a <pjpeg_decode_mcu+0x1a22>
 8003988:	201c      	movs	r0, #28
 800398a:	f640 13e4 	movw	r3, #2532	; 0x9e4
 800398e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003992:	7819      	ldrb	r1, [r3, #0]
 8003994:	2900      	cmp	r1, #0
 8003996:	bf18      	it	ne
 8003998:	4608      	movne	r0, r1
 800399a:	b2c0      	uxtb	r0, r0
 800399c:	b00b      	add	sp, #44	; 0x2c
 800399e:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80039a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80039a4:	21d9      	movs	r1, #217	; 0xd9
 80039a6:	f241 10fe 	movw	r0, #4606	; 0x11fe
 80039aa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80039ae:	8802      	ldrh	r2, [r0, #0]
 80039b0:	f102 03d0 	add.w	r3, r2, #208	; 0xd0
 80039b4:	4299      	cmp	r1, r3
 80039b6:	d12f      	bne.n	8003a18 <pjpeg_decode_mcu+0x1aa0>
 80039b8:	f640 61d4 	movw	r1, #3796	; 0xed4
 80039bc:	2300      	movs	r3, #0
 80039be:	f640 5604 	movw	r6, #3332	; 0xd04
 80039c2:	f241 3404 	movw	r4, #4868	; 0x1304
 80039c6:	f241 2500 	movw	r5, #4608	; 0x1200
 80039ca:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80039ce:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80039d2:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80039d6:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80039da:	800b      	strh	r3, [r1, #0]
 80039dc:	804b      	strh	r3, [r1, #2]
 80039de:	808b      	strh	r3, [r1, #4]
 80039e0:	f640 5102 	movw	r1, #3330	; 0xd02
 80039e4:	702b      	strb	r3, [r5, #0]
 80039e6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80039ea:	8809      	ldrh	r1, [r1, #0]
 80039ec:	8031      	strh	r1, [r6, #0]
 80039ee:	1c51      	adds	r1, r2, #1
 80039f0:	f001 0107 	and.w	r1, r1, #7
 80039f4:	8001      	strh	r1, [r0, #0]
 80039f6:	8820      	ldrh	r0, [r4, #0]
 80039f8:	0200      	lsls	r0, r0, #8
 80039fa:	8020      	strh	r0, [r4, #0]
 80039fc:	2001      	movs	r0, #1
 80039fe:	f001 faee 	bl	8004fde <getOctet>
 8003a02:	8821      	ldrh	r1, [r4, #0]
 8003a04:	4308      	orrs	r0, r1
 8003a06:	7829      	ldrb	r1, [r5, #0]
 8003a08:	f1c1 0108 	rsb	r1, r1, #8
 8003a0c:	4088      	lsls	r0, r1
 8003a0e:	4631      	mov	r1, r6
 8003a10:	8020      	strh	r0, [r4, #0]
 8003a12:	8808      	ldrh	r0, [r1, #0]
 8003a14:	f7fe bad3 	b.w	8001fbe <pjpeg_decode_mcu+0x46>
 8003a18:	201d      	movs	r0, #29
 8003a1a:	e7b6      	b.n	800398a <pjpeg_decode_mcu+0x1a12>

08003a1c <pjpeg_decode_init>:
 8003a1c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003a1e:	af03      	add	r7, sp, #12
 8003a20:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8003a24:	b087      	sub	sp, #28
 8003a26:	460c      	mov	r4, r1
 8003a28:	212c      	movs	r1, #44	; 0x2c
 8003a2a:	461d      	mov	r5, r3
 8003a2c:	4616      	mov	r6, r2
 8003a2e:	4680      	mov	r8, r0
 8003a30:	f002 ff8c 	bl	800694c <__aeabi_memclr>
 8003a34:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8003a38:	f640 11f0 	movw	r1, #2544	; 0x9f0
 8003a3c:	f241 3203 	movw	r2, #4867	; 0x1303
 8003a40:	f640 1ae4 	movw	sl, #2532	; 0x9e4
 8003a44:	f241 3904 	movw	r9, #4868	; 0x1304
 8003a48:	4633      	mov	r3, r6
 8003a4a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003a4e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003a52:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003a56:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8003a5a:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8003a5e:	6004      	str	r4, [r0, #0]
 8003a60:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8003a64:	700d      	strb	r5, [r1, #0]
 8003a66:	f640 11f2 	movw	r1, #2546	; 0x9f2
 8003a6a:	f241 2502 	movw	r5, #4610	; 0x1202
 8003a6e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003a72:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003a76:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8003a7a:	6006      	str	r6, [r0, #0]
 8003a7c:	2000      	movs	r0, #0
 8003a7e:	8008      	strh	r0, [r1, #0]
 8003a80:	f640 11f4 	movw	r1, #2548	; 0x9f4
 8003a84:	f88a 0000 	strb.w	r0, [sl]
 8003a88:	7028      	strb	r0, [r5, #0]
 8003a8a:	f8a9 0000 	strh.w	r0, [r9]
 8003a8e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003a92:	8008      	strh	r0, [r1, #0]
 8003a94:	f640 11f6 	movw	r1, #2550	; 0x9f6
 8003a98:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003a9c:	7008      	strb	r0, [r1, #0]
 8003a9e:	f640 5102 	movw	r1, #3330	; 0xd02
 8003aa2:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003aa6:	8008      	strh	r0, [r1, #0]
 8003aa8:	f241 3106 	movw	r1, #4870	; 0x1306
 8003aac:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003ab0:	7008      	strb	r0, [r1, #0]
 8003ab2:	f241 3107 	movw	r1, #4871	; 0x1307
 8003ab6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003aba:	7008      	strb	r0, [r1, #0]
 8003abc:	f241 3108 	movw	r1, #4872	; 0x1308
 8003ac0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003ac4:	7008      	strb	r0, [r1, #0]
 8003ac6:	f241 2100 	movw	r1, #4608	; 0x1200
 8003aca:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003ace:	7008      	strb	r0, [r1, #0]
 8003ad0:	2104      	movs	r1, #4
 8003ad2:	7011      	strb	r1, [r2, #0]
 8003ad4:	f241 2201 	movw	r2, #4609	; 0x1201
 8003ad8:	21fc      	movs	r1, #252	; 0xfc
 8003ada:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003ade:	7010      	strb	r0, [r2, #0]
 8003ae0:	f241 2003 	movw	r0, #4611	; 0x1203
 8003ae4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003ae8:	3004      	adds	r0, #4
 8003aea:	9005      	str	r0, [sp, #20]
 8003aec:	47a0      	blx	r4
 8003aee:	f241 2e01 	movw	lr, #4609	; 0x1201
 8003af2:	2800      	cmp	r0, #0
 8003af4:	bf18      	it	ne
 8003af6:	f88a 0000 	strbne.w	r0, [sl]
 8003afa:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8003afe:	f89e 0000 	ldrb.w	r0, [lr]
 8003b02:	b180      	cbz	r0, 8003b26 <pjpeg_decode_init+0x10a>
 8003b04:	f241 3103 	movw	r1, #4867	; 0x1303
 8003b08:	3801      	subs	r0, #1
 8003b0a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003b0e:	f88e 0000 	strb.w	r0, [lr]
 8003b12:	460b      	mov	r3, r1
 8003b14:	7819      	ldrb	r1, [r3, #0]
 8003b16:	1c4a      	adds	r2, r1, #1
 8003b18:	701a      	strb	r2, [r3, #0]
 8003b1a:	f241 2203 	movw	r2, #4611	; 0x1203
 8003b1e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003b22:	5c51      	ldrb	r1, [r2, r1]
 8003b24:	e00a      	b.n	8003b3c <pjpeg_decode_init+0x120>
 8003b26:	7828      	ldrb	r0, [r5, #0]
 8003b28:	43c1      	mvns	r1, r0
 8003b2a:	28ff      	cmp	r0, #255	; 0xff
 8003b2c:	f04f 0000 	mov.w	r0, #0
 8003b30:	7029      	strb	r1, [r5, #0]
 8003b32:	f06f 0126 	mvn.w	r1, #38	; 0x26
 8003b36:	bf18      	it	ne
 8003b38:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8003b3c:	f8b9 2000 	ldrh.w	r2, [r9]
 8003b40:	f241 2c00 	movw	ip, #4608	; 0x1200
 8003b44:	b2c9      	uxtb	r1, r1
 8003b46:	f89a 4000 	ldrb.w	r4, [sl]
 8003b4a:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8003b4e:	430a      	orrs	r2, r1
 8003b50:	f89c 1000 	ldrb.w	r1, [ip]
 8003b54:	2c00      	cmp	r4, #0
 8003b56:	f1c1 0308 	rsb	r3, r1, #8
 8003b5a:	fa02 f603 	lsl.w	r6, r2, r3
 8003b5e:	f8a9 6000 	strh.w	r6, [r9]
 8003b62:	f040 81ab 	bne.w	8003ebc <pjpeg_decode_init+0x4a0>
 8003b66:	f64f 7400 	movw	r4, #65280	; 0xff00
 8003b6a:	2907      	cmp	r1, #7
 8003b6c:	f2c0 04ff 	movt	r4, #255	; 0xff
 8003b70:	d84d      	bhi.n	8003c0e <pjpeg_decode_init+0x1f2>
 8003b72:	b2b2      	uxth	r2, r6
 8003b74:	fa02 f101 	lsl.w	r1, r2, r1
 8003b78:	f8a9 1000 	strh.w	r1, [r9]
 8003b7c:	0601      	lsls	r1, r0, #24
 8003b7e:	d12b      	bne.n	8003bd8 <pjpeg_decode_init+0x1bc>
 8003b80:	f241 3103 	movw	r1, #4867	; 0x1303
 8003b84:	2004      	movs	r0, #4
 8003b86:	4672      	mov	r2, lr
 8003b88:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003b8c:	7008      	strb	r0, [r1, #0]
 8003b8e:	2000      	movs	r0, #0
 8003b90:	21fc      	movs	r1, #252	; 0xfc
 8003b92:	f88e 0000 	strb.w	r0, [lr]
 8003b96:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8003b9a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003b9e:	6803      	ldr	r3, [r0, #0]
 8003ba0:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8003ba4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003ba8:	6805      	ldr	r5, [r0, #0]
 8003baa:	9805      	ldr	r0, [sp, #20]
 8003bac:	47a8      	blx	r5
 8003bae:	f241 2e01 	movw	lr, #4609	; 0x1201
 8003bb2:	2800      	cmp	r0, #0
 8003bb4:	f241 2c00 	movw	ip, #4608	; 0x1200
 8003bb8:	f241 2202 	movw	r2, #4610	; 0x1202
 8003bbc:	bf18      	it	ne
 8003bbe:	f88a 0000 	strbne.w	r0, [sl]
 8003bc2:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8003bc6:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8003bca:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003bce:	f89e 0000 	ldrb.w	r0, [lr]
 8003bd2:	2800      	cmp	r0, #0
 8003bd4:	f000 8177 	beq.w	8003ec6 <pjpeg_decode_init+0x4aa>
 8003bd8:	f241 3103 	movw	r1, #4867	; 0x1303
 8003bdc:	3801      	subs	r0, #1
 8003bde:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003be2:	f88e 0000 	strb.w	r0, [lr]
 8003be6:	460b      	mov	r3, r1
 8003be8:	7819      	ldrb	r1, [r3, #0]
 8003bea:	1c4a      	adds	r2, r1, #1
 8003bec:	701a      	strb	r2, [r3, #0]
 8003bee:	f241 2203 	movw	r2, #4611	; 0x1203
 8003bf2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003bf6:	5c51      	ldrb	r1, [r2, r1]
 8003bf8:	f8b9 2000 	ldrh.w	r2, [r9]
 8003bfc:	b2c9      	uxtb	r1, r1
 8003bfe:	430a      	orrs	r2, r1
 8003c00:	f89c 1000 	ldrb.w	r1, [ip]
 8003c04:	f1c1 0308 	rsb	r3, r1, #8
 8003c08:	fa02 f503 	lsl.w	r5, r2, r3
 8003c0c:	e004      	b.n	8003c18 <pjpeg_decode_init+0x1fc>
 8003c0e:	31f8      	adds	r1, #248	; 0xf8
 8003c10:	ea04 2506 	and.w	r5, r4, r6, lsl #8
 8003c14:	f88c 1000 	strb.w	r1, [ip]
 8003c18:	b2c9      	uxtb	r1, r1
 8003c1a:	f8a9 5000 	strh.w	r5, [r9]
 8003c1e:	2907      	cmp	r1, #7
 8003c20:	d849      	bhi.n	8003cb6 <pjpeg_decode_init+0x29a>
 8003c22:	b2aa      	uxth	r2, r5
 8003c24:	fa02 f101 	lsl.w	r1, r2, r1
 8003c28:	f8a9 1000 	strh.w	r1, [r9]
 8003c2c:	0601      	lsls	r1, r0, #24
 8003c2e:	d127      	bne.n	8003c80 <pjpeg_decode_init+0x264>
 8003c30:	f241 3103 	movw	r1, #4867	; 0x1303
 8003c34:	2004      	movs	r0, #4
 8003c36:	4672      	mov	r2, lr
 8003c38:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003c3c:	7008      	strb	r0, [r1, #0]
 8003c3e:	2000      	movs	r0, #0
 8003c40:	21fc      	movs	r1, #252	; 0xfc
 8003c42:	f88e 0000 	strb.w	r0, [lr]
 8003c46:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8003c4a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003c4e:	6803      	ldr	r3, [r0, #0]
 8003c50:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8003c54:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003c58:	6804      	ldr	r4, [r0, #0]
 8003c5a:	9805      	ldr	r0, [sp, #20]
 8003c5c:	47a0      	blx	r4
 8003c5e:	f241 2e01 	movw	lr, #4609	; 0x1201
 8003c62:	2800      	cmp	r0, #0
 8003c64:	f241 2c00 	movw	ip, #4608	; 0x1200
 8003c68:	bf18      	it	ne
 8003c6a:	f88a 0000 	strbne.w	r0, [sl]
 8003c6e:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8003c72:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8003c76:	f89e 0000 	ldrb.w	r0, [lr]
 8003c7a:	2800      	cmp	r0, #0
 8003c7c:	f000 812f 	beq.w	8003ede <pjpeg_decode_init+0x4c2>
 8003c80:	f241 3103 	movw	r1, #4867	; 0x1303
 8003c84:	3801      	subs	r0, #1
 8003c86:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003c8a:	f88e 0000 	strb.w	r0, [lr]
 8003c8e:	460b      	mov	r3, r1
 8003c90:	7819      	ldrb	r1, [r3, #0]
 8003c92:	1c4a      	adds	r2, r1, #1
 8003c94:	701a      	strb	r2, [r3, #0]
 8003c96:	f241 2203 	movw	r2, #4611	; 0x1203
 8003c9a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003c9e:	5c51      	ldrb	r1, [r2, r1]
 8003ca0:	f8b9 2000 	ldrh.w	r2, [r9]
 8003ca4:	b2c9      	uxtb	r1, r1
 8003ca6:	430a      	orrs	r2, r1
 8003ca8:	f89c 1000 	ldrb.w	r1, [ip]
 8003cac:	f1c1 0308 	rsb	r3, r1, #8
 8003cb0:	fa02 f403 	lsl.w	r4, r2, r3
 8003cb4:	e004      	b.n	8003cc0 <pjpeg_decode_init+0x2a4>
 8003cb6:	31f8      	adds	r1, #248	; 0xf8
 8003cb8:	ea04 2405 	and.w	r4, r4, r5, lsl #8
 8003cbc:	f88c 1000 	strb.w	r1, [ip]
 8003cc0:	b2b2      	uxth	r2, r6
 8003cc2:	f8a9 4000 	strh.w	r4, [r9]
 8003cc6:	f3c5 2507 	ubfx	r5, r5, #8, #8
 8003cca:	f5b2 4f7f 	cmp.w	r2, #65280	; 0xff00
 8003cce:	d36b      	bcc.n	8003da8 <pjpeg_decode_init+0x38c>
 8003cd0:	2dd8      	cmp	r5, #216	; 0xd8
 8003cd2:	d169      	bne.n	8003da8 <pjpeg_decode_init+0x38c>
 8003cd4:	f1a7 001e 	sub.w	r0, r7, #30
 8003cd8:	f001 fe98 	bl	8005a0c <processMarkers>
 8003cdc:	4604      	mov	r4, r0
 8003cde:	2c00      	cmp	r4, #0
 8003ce0:	f040 80e7 	bne.w	8003eb2 <pjpeg_decode_init+0x496>
 8003ce4:	f817 0c1e 	ldrb.w	r0, [r7, #-30]
 8003ce8:	28c9      	cmp	r0, #201	; 0xc9
 8003cea:	f000 8116 	beq.w	8003f1a <pjpeg_decode_init+0x4fe>
 8003cee:	28c2      	cmp	r0, #194	; 0xc2
 8003cf0:	f000 8115 	beq.w	8003f1e <pjpeg_decode_init+0x502>
 8003cf4:	28c0      	cmp	r0, #192	; 0xc0
 8003cf6:	f040 8114 	bne.w	8003f22 <pjpeg_decode_init+0x506>
 8003cfa:	2010      	movs	r0, #16
 8003cfc:	2100      	movs	r1, #0
 8003cfe:	f001 fa1e 	bl	800513e <getBits>
 8003d02:	f241 2200 	movw	r2, #4608	; 0x1200
 8003d06:	4683      	mov	fp, r0
 8003d08:	f8b9 5000 	ldrh.w	r5, [r9]
 8003d0c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003d10:	7810      	ldrb	r0, [r2, #0]
 8003d12:	2807      	cmp	r0, #7
 8003d14:	f200 8107 	bhi.w	8003f26 <pjpeg_decode_init+0x50a>
 8003d18:	f241 2401 	movw	r4, #4609	; 0x1201
 8003d1c:	fa05 f000 	lsl.w	r0, r5, r0
 8003d20:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003d24:	f8a9 0000 	strh.w	r0, [r9]
 8003d28:	7820      	ldrb	r0, [r4, #0]
 8003d2a:	bb28      	cbnz	r0, 8003d78 <pjpeg_decode_init+0x35c>
 8003d2c:	f241 3103 	movw	r1, #4867	; 0x1303
 8003d30:	2004      	movs	r0, #4
 8003d32:	4622      	mov	r2, r4
 8003d34:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003d38:	7008      	strb	r0, [r1, #0]
 8003d3a:	2000      	movs	r0, #0
 8003d3c:	21fc      	movs	r1, #252	; 0xfc
 8003d3e:	7020      	strb	r0, [r4, #0]
 8003d40:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8003d44:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003d48:	6803      	ldr	r3, [r0, #0]
 8003d4a:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8003d4e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003d52:	6806      	ldr	r6, [r0, #0]
 8003d54:	9805      	ldr	r0, [sp, #20]
 8003d56:	47b0      	blx	r6
 8003d58:	f241 2401 	movw	r4, #4609	; 0x1201
 8003d5c:	2800      	cmp	r0, #0
 8003d5e:	f241 2200 	movw	r2, #4608	; 0x1200
 8003d62:	bf18      	it	ne
 8003d64:	f88a 0000 	strbne.w	r0, [sl]
 8003d68:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8003d6c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003d70:	7820      	ldrb	r0, [r4, #0]
 8003d72:	2800      	cmp	r0, #0
 8003d74:	f000 815c 	beq.w	8004030 <pjpeg_decode_init+0x614>
 8003d78:	3801      	subs	r0, #1
 8003d7a:	7020      	strb	r0, [r4, #0]
 8003d7c:	f241 3003 	movw	r0, #4867	; 0x1303
 8003d80:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003d84:	4603      	mov	r3, r0
 8003d86:	7818      	ldrb	r0, [r3, #0]
 8003d88:	1c41      	adds	r1, r0, #1
 8003d8a:	7019      	strb	r1, [r3, #0]
 8003d8c:	f241 2103 	movw	r1, #4611	; 0x1203
 8003d90:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003d94:	5c08      	ldrb	r0, [r1, r0]
 8003d96:	f8b9 1000 	ldrh.w	r1, [r9]
 8003d9a:	b2c0      	uxtb	r0, r0
 8003d9c:	4308      	orrs	r0, r1
 8003d9e:	7811      	ldrb	r1, [r2, #0]
 8003da0:	f1c1 0108 	rsb	r1, r1, #8
 8003da4:	4088      	lsls	r0, r1
 8003da6:	e0c1      	b.n	8003f2c <pjpeg_decode_init+0x510>
 8003da8:	f8cd 8010 	str.w	r8, [sp, #16]
 8003dac:	f640 76ff 	movw	r6, #4095	; 0xfff
 8003db0:	f04f 0a04 	mov.w	sl, #4
 8003db4:	f04f 0800 	mov.w	r8, #0
 8003db8:	f64f 7bff 	movw	fp, #65535	; 0xffff
 8003dbc:	e010      	b.n	8003de0 <pjpeg_decode_init+0x3c4>
 8003dbe:	f241 2002 	movw	r0, #4610	; 0x1202
 8003dc2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003dc6:	4602      	mov	r2, r0
 8003dc8:	7810      	ldrb	r0, [r2, #0]
 8003dca:	43c1      	mvns	r1, r0
 8003dcc:	28ff      	cmp	r0, #255	; 0xff
 8003dce:	f04f 0000 	mov.w	r0, #0
 8003dd2:	7011      	strb	r1, [r2, #0]
 8003dd4:	f06f 0126 	mvn.w	r1, #38	; 0x26
 8003dd8:	bf18      	it	ne
 8003dda:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8003dde:	e043      	b.n	8003e68 <pjpeg_decode_init+0x44c>
 8003de0:	b2c9      	uxtb	r1, r1
 8003de2:	2907      	cmp	r1, #7
 8003de4:	d84a      	bhi.n	8003e7c <pjpeg_decode_init+0x460>
 8003de6:	b2a2      	uxth	r2, r4
 8003de8:	fa02 f101 	lsl.w	r1, r2, r1
 8003dec:	f8a9 1000 	strh.w	r1, [r9]
 8003df0:	0601      	lsls	r1, r0, #24
 8003df2:	d129      	bne.n	8003e48 <pjpeg_decode_init+0x42c>
 8003df4:	f241 3003 	movw	r0, #4867	; 0x1303
 8003df8:	21fc      	movs	r1, #252	; 0xfc
 8003dfa:	4672      	mov	r2, lr
 8003dfc:	f88e 8000 	strb.w	r8, [lr]
 8003e00:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003e04:	f880 a000 	strb.w	sl, [r0]
 8003e08:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8003e0c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003e10:	6803      	ldr	r3, [r0, #0]
 8003e12:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8003e16:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003e1a:	f8d0 c000 	ldr.w	ip, [r0]
 8003e1e:	9805      	ldr	r0, [sp, #20]
 8003e20:	47e0      	blx	ip
 8003e22:	f241 2e01 	movw	lr, #4609	; 0x1201
 8003e26:	2800      	cmp	r0, #0
 8003e28:	f241 2c00 	movw	ip, #4608	; 0x1200
 8003e2c:	bf1e      	ittt	ne
 8003e2e:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 8003e32:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 8003e36:	7008      	strbne	r0, [r1, #0]
 8003e38:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8003e3c:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8003e40:	f89e 0000 	ldrb.w	r0, [lr]
 8003e44:	2800      	cmp	r0, #0
 8003e46:	d0ba      	beq.n	8003dbe <pjpeg_decode_init+0x3a2>
 8003e48:	f241 3103 	movw	r1, #4867	; 0x1303
 8003e4c:	3801      	subs	r0, #1
 8003e4e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003e52:	f88e 0000 	strb.w	r0, [lr]
 8003e56:	460b      	mov	r3, r1
 8003e58:	7819      	ldrb	r1, [r3, #0]
 8003e5a:	1c4a      	adds	r2, r1, #1
 8003e5c:	701a      	strb	r2, [r3, #0]
 8003e5e:	f241 2203 	movw	r2, #4611	; 0x1203
 8003e62:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003e66:	5c51      	ldrb	r1, [r2, r1]
 8003e68:	f8b9 2000 	ldrh.w	r2, [r9]
 8003e6c:	b2c9      	uxtb	r1, r1
 8003e6e:	430a      	orrs	r2, r1
 8003e70:	f89c 1000 	ldrb.w	r1, [ip]
 8003e74:	f1c1 0308 	rsb	r3, r1, #8
 8003e78:	409a      	lsls	r2, r3
 8003e7a:	e004      	b.n	8003e86 <pjpeg_decode_init+0x46a>
 8003e7c:	b2a2      	uxth	r2, r4
 8003e7e:	31f8      	adds	r1, #248	; 0xf8
 8003e80:	0212      	lsls	r2, r2, #8
 8003e82:	f88c 1000 	strb.w	r1, [ip]
 8003e86:	b2ed      	uxtb	r5, r5
 8003e88:	f8a9 2000 	strh.w	r2, [r9]
 8003e8c:	f3c4 2307 	ubfx	r3, r4, #8, #8
 8003e90:	2dff      	cmp	r5, #255	; 0xff
 8003e92:	d103      	bne.n	8003e9c <pjpeg_decode_init+0x480>
 8003e94:	2bd9      	cmp	r3, #217	; 0xd9
 8003e96:	d007      	beq.n	8003ea8 <pjpeg_decode_init+0x48c>
 8003e98:	2bd8      	cmp	r3, #216	; 0xd8
 8003e9a:	d031      	beq.n	8003f00 <pjpeg_decode_init+0x4e4>
 8003e9c:	3e01      	subs	r6, #1
 8003e9e:	4614      	mov	r4, r2
 8003ea0:	461d      	mov	r5, r3
 8003ea2:	ea16 0f0b 	tst.w	r6, fp
 8003ea6:	d19b      	bne.n	8003de0 <pjpeg_decode_init+0x3c4>
 8003ea8:	f640 1ae4 	movw	sl, #2532	; 0x9e4
 8003eac:	2413      	movs	r4, #19
 8003eae:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8003eb2:	f89a 0000 	ldrb.w	r0, [sl]
 8003eb6:	2800      	cmp	r0, #0
 8003eb8:	bf18      	it	ne
 8003eba:	4604      	movne	r4, r0
 8003ebc:	4620      	mov	r0, r4
 8003ebe:	b007      	add	sp, #28
 8003ec0:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8003ec4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8003ec6:	7810      	ldrb	r0, [r2, #0]
 8003ec8:	43c1      	mvns	r1, r0
 8003eca:	28ff      	cmp	r0, #255	; 0xff
 8003ecc:	f04f 0000 	mov.w	r0, #0
 8003ed0:	7011      	strb	r1, [r2, #0]
 8003ed2:	f06f 0126 	mvn.w	r1, #38	; 0x26
 8003ed6:	bf18      	it	ne
 8003ed8:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8003edc:	e68c      	b.n	8003bf8 <pjpeg_decode_init+0x1dc>
 8003ede:	f241 2002 	movw	r0, #4610	; 0x1202
 8003ee2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003ee6:	4602      	mov	r2, r0
 8003ee8:	7810      	ldrb	r0, [r2, #0]
 8003eea:	43c1      	mvns	r1, r0
 8003eec:	28ff      	cmp	r0, #255	; 0xff
 8003eee:	f04f 0000 	mov.w	r0, #0
 8003ef2:	7011      	strb	r1, [r2, #0]
 8003ef4:	f06f 0126 	mvn.w	r1, #38	; 0x26
 8003ef8:	bf18      	it	ne
 8003efa:	f04f 31ff 	movne.w	r1, #4294967295	; 0xffffffff
 8003efe:	e6cf      	b.n	8003ca0 <pjpeg_decode_init+0x284>
 8003f00:	f8dd 8010 	ldr.w	r8, [sp, #16]
 8003f04:	f640 1ae4 	movw	sl, #2532	; 0x9e4
 8003f08:	b290      	uxth	r0, r2
 8003f0a:	f5b0 4f7f 	cmp.w	r0, #65280	; 0xff00
 8003f0e:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8003f12:	f4bf aedf 	bcs.w	8003cd4 <pjpeg_decode_init+0x2b8>
 8003f16:	2413      	movs	r4, #19
 8003f18:	e7cb      	b.n	8003eb2 <pjpeg_decode_init+0x496>
 8003f1a:	2411      	movs	r4, #17
 8003f1c:	e7c9      	b.n	8003eb2 <pjpeg_decode_init+0x496>
 8003f1e:	2425      	movs	r4, #37	; 0x25
 8003f20:	e7c7      	b.n	8003eb2 <pjpeg_decode_init+0x496>
 8003f22:	2414      	movs	r4, #20
 8003f24:	e7c5      	b.n	8003eb2 <pjpeg_decode_init+0x496>
 8003f26:	30f8      	adds	r0, #248	; 0xf8
 8003f28:	7010      	strb	r0, [r2, #0]
 8003f2a:	0228      	lsls	r0, r5, #8
 8003f2c:	f8a9 0000 	strh.w	r0, [r9]
 8003f30:	f025 00ff 	bic.w	r0, r5, #255	; 0xff
 8003f34:	f5b0 6f00 	cmp.w	r0, #2048	; 0x800
 8003f38:	d111      	bne.n	8003f5e <pjpeg_decode_init+0x542>
 8003f3a:	2010      	movs	r0, #16
 8003f3c:	2100      	movs	r1, #0
 8003f3e:	2500      	movs	r5, #0
 8003f40:	f001 f8fd 	bl	800513e <getBits>
 8003f44:	f640 11f4 	movw	r1, #2548	; 0x9f4
 8003f48:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f4c:	8008      	strh	r0, [r1, #0]
 8003f4e:	3801      	subs	r0, #1
 8003f50:	f400 4040 	and.w	r0, r0, #49152	; 0xc000
 8003f54:	ebb5 3f90 	cmp.w	r5, r0, lsr #14
 8003f58:	d003      	beq.n	8003f62 <pjpeg_decode_init+0x546>
 8003f5a:	2408      	movs	r4, #8
 8003f5c:	e7a9      	b.n	8003eb2 <pjpeg_decode_init+0x496>
 8003f5e:	2407      	movs	r4, #7
 8003f60:	e7a7      	b.n	8003eb2 <pjpeg_decode_init+0x496>
 8003f62:	2010      	movs	r0, #16
 8003f64:	2100      	movs	r1, #0
 8003f66:	f001 f8ea 	bl	800513e <getBits>
 8003f6a:	f640 11f2 	movw	r1, #2546	; 0x9f2
 8003f6e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f72:	8008      	strh	r0, [r1, #0]
 8003f74:	3801      	subs	r0, #1
 8003f76:	f400 4040 	and.w	r0, r0, #49152	; 0xc000
 8003f7a:	ebb5 3f90 	cmp.w	r5, r0, lsr #14
 8003f7e:	d001      	beq.n	8003f84 <pjpeg_decode_init+0x568>
 8003f80:	2409      	movs	r4, #9
 8003f82:	e796      	b.n	8003eb2 <pjpeg_decode_init+0x496>
 8003f84:	f241 2300 	movw	r3, #4608	; 0x1200
 8003f88:	f8b9 5000 	ldrh.w	r5, [r9]
 8003f8c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003f90:	7818      	ldrb	r0, [r3, #0]
 8003f92:	2807      	cmp	r0, #7
 8003f94:	d85b      	bhi.n	800404e <pjpeg_decode_init+0x632>
 8003f96:	f241 2c01 	movw	ip, #4609	; 0x1201
 8003f9a:	fa05 f000 	lsl.w	r0, r5, r0
 8003f9e:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8003fa2:	f8a9 0000 	strh.w	r0, [r9]
 8003fa6:	f89c 0000 	ldrb.w	r0, [ip]
 8003faa:	bb38      	cbnz	r0, 8003ffc <pjpeg_decode_init+0x5e0>
 8003fac:	f241 3103 	movw	r1, #4867	; 0x1303
 8003fb0:	2004      	movs	r0, #4
 8003fb2:	4662      	mov	r2, ip
 8003fb4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003fb8:	7008      	strb	r0, [r1, #0]
 8003fba:	2000      	movs	r0, #0
 8003fbc:	21fc      	movs	r1, #252	; 0xfc
 8003fbe:	f88c 0000 	strb.w	r0, [ip]
 8003fc2:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8003fc6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003fca:	6803      	ldr	r3, [r0, #0]
 8003fcc:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8003fd0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003fd4:	6806      	ldr	r6, [r0, #0]
 8003fd6:	9805      	ldr	r0, [sp, #20]
 8003fd8:	47b0      	blx	r6
 8003fda:	f241 2c01 	movw	ip, #4609	; 0x1201
 8003fde:	2800      	cmp	r0, #0
 8003fe0:	f241 2300 	movw	r3, #4608	; 0x1200
 8003fe4:	bf18      	it	ne
 8003fe6:	f88a 0000 	strbne.w	r0, [sl]
 8003fea:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8003fee:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003ff2:	f89c 0000 	ldrb.w	r0, [ip]
 8003ff6:	2800      	cmp	r0, #0
 8003ff8:	f000 8228 	beq.w	800444c <pjpeg_decode_init+0xa30>
 8003ffc:	3801      	subs	r0, #1
 8003ffe:	f88c 0000 	strb.w	r0, [ip]
 8004002:	f241 3003 	movw	r0, #4867	; 0x1303
 8004006:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800400a:	4602      	mov	r2, r0
 800400c:	7810      	ldrb	r0, [r2, #0]
 800400e:	1c41      	adds	r1, r0, #1
 8004010:	7011      	strb	r1, [r2, #0]
 8004012:	f241 2103 	movw	r1, #4611	; 0x1203
 8004016:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800401a:	5c08      	ldrb	r0, [r1, r0]
 800401c:	f8b9 1000 	ldrh.w	r1, [r9]
 8004020:	b2c0      	uxtb	r0, r0
 8004022:	4301      	orrs	r1, r0
 8004024:	7818      	ldrb	r0, [r3, #0]
 8004026:	f1c0 0208 	rsb	r2, r0, #8
 800402a:	fa01 f602 	lsl.w	r6, r1, r2
 800402e:	e015      	b.n	800405c <pjpeg_decode_init+0x640>
 8004030:	f241 2002 	movw	r0, #4610	; 0x1202
 8004034:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004038:	4603      	mov	r3, r0
 800403a:	7819      	ldrb	r1, [r3, #0]
 800403c:	43c8      	mvns	r0, r1
 800403e:	29ff      	cmp	r1, #255	; 0xff
 8004040:	7018      	strb	r0, [r3, #0]
 8004042:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8004046:	bf18      	it	ne
 8004048:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 800404c:	e6a3      	b.n	8003d96 <pjpeg_decode_init+0x37a>
 800404e:	f241 2c01 	movw	ip, #4609	; 0x1201
 8004052:	30f8      	adds	r0, #248	; 0xf8
 8004054:	022e      	lsls	r6, r5, #8
 8004056:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800405a:	7018      	strb	r0, [r3, #0]
 800405c:	f640 12f6 	movw	r2, #2550	; 0x9f6
 8004060:	0a29      	lsrs	r1, r5, #8
 8004062:	f8a9 6000 	strh.w	r6, [r9]
 8004066:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800406a:	7011      	strb	r1, [r2, #0]
 800406c:	2200      	movs	r2, #0
 800406e:	ebb2 2f95 	cmp.w	r2, r5, lsr #10
 8004072:	d001      	beq.n	8004078 <pjpeg_decode_init+0x65c>
 8004074:	240a      	movs	r4, #10
 8004076:	e71c      	b.n	8003eb2 <pjpeg_decode_init+0x496>
 8004078:	eb01 0241 	add.w	r2, r1, r1, lsl #1
 800407c:	3208      	adds	r2, #8
 800407e:	4593      	cmp	fp, r2
 8004080:	f040 81da 	bne.w	8004438 <pjpeg_decode_init+0xa1c>
 8004084:	f04f 0e00 	mov.w	lr, #0
 8004088:	2900      	cmp	r1, #0
 800408a:	f000 81da 	beq.w	8004442 <pjpeg_decode_init+0xa26>
 800408e:	f241 2502 	movw	r5, #4610	; 0x1202
 8004092:	f8cd 8010 	str.w	r8, [sp, #16]
 8004096:	f04f 0800 	mov.w	r8, #0
 800409a:	f04f 0b00 	mov.w	fp, #0
 800409e:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80040a2:	e03d      	b.n	8004120 <pjpeg_decode_init+0x704>
 80040a4:	7829      	ldrb	r1, [r5, #0]
 80040a6:	f10b 0b01 	add.w	fp, fp, #1
 80040aa:	f241 2502 	movw	r5, #4610	; 0x1202
 80040ae:	fa5f f88b 	uxtb.w	r8, fp
 80040b2:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80040b6:	4588      	cmp	r8, r1
 80040b8:	d332      	bcc.n	8004120 <pjpeg_decode_init+0x704>
 80040ba:	e1bf      	b.n	800443c <pjpeg_decode_init+0xa20>
 80040bc:	7828      	ldrb	r0, [r5, #0]
 80040be:	43c1      	mvns	r1, r0
 80040c0:	28ff      	cmp	r0, #255	; 0xff
 80040c2:	f06f 0026 	mvn.w	r0, #38	; 0x26
 80040c6:	7029      	strb	r1, [r5, #0]
 80040c8:	bf18      	it	ne
 80040ca:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 80040ce:	e06e      	b.n	80041ae <pjpeg_decode_init+0x792>
 80040d0:	7828      	ldrb	r0, [r5, #0]
 80040d2:	43c1      	mvns	r1, r0
 80040d4:	28ff      	cmp	r0, #255	; 0xff
 80040d6:	f06f 0026 	mvn.w	r0, #38	; 0x26
 80040da:	7029      	strb	r1, [r5, #0]
 80040dc:	bf18      	it	ne
 80040de:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 80040e2:	e0bf      	b.n	8004264 <pjpeg_decode_init+0x848>
 80040e4:	f241 2002 	movw	r0, #4610	; 0x1202
 80040e8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80040ec:	4602      	mov	r2, r0
 80040ee:	7810      	ldrb	r0, [r2, #0]
 80040f0:	43c1      	mvns	r1, r0
 80040f2:	28ff      	cmp	r0, #255	; 0xff
 80040f4:	f06f 0026 	mvn.w	r0, #38	; 0x26
 80040f8:	7011      	strb	r1, [r2, #0]
 80040fa:	bf18      	it	ne
 80040fc:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8004100:	e10f      	b.n	8004322 <pjpeg_decode_init+0x906>
 8004102:	f241 2002 	movw	r0, #4610	; 0x1202
 8004106:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800410a:	4602      	mov	r2, r0
 800410c:	7810      	ldrb	r0, [r2, #0]
 800410e:	43c1      	mvns	r1, r0
 8004110:	28ff      	cmp	r0, #255	; 0xff
 8004112:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8004116:	7011      	strb	r1, [r2, #0]
 8004118:	bf18      	it	ne
 800411a:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 800411e:	e168      	b.n	80043f2 <pjpeg_decode_init+0x9d6>
 8004120:	b2c0      	uxtb	r0, r0
 8004122:	2807      	cmp	r0, #7
 8004124:	d84d      	bhi.n	80041c2 <pjpeg_decode_init+0x7a6>
 8004126:	b2b1      	uxth	r1, r6
 8004128:	fa01 f000 	lsl.w	r0, r1, r0
 800412c:	f8a9 0000 	strh.w	r0, [r9]
 8004130:	f89c 0000 	ldrb.w	r0, [ip]
 8004134:	bb58      	cbnz	r0, 800418e <pjpeg_decode_init+0x772>
 8004136:	f241 3003 	movw	r0, #4867	; 0x1303
 800413a:	2104      	movs	r1, #4
 800413c:	4662      	mov	r2, ip
 800413e:	f88c e000 	strb.w	lr, [ip]
 8004142:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004146:	7001      	strb	r1, [r0, #0]
 8004148:	f640 10ec 	movw	r0, #2540	; 0x9ec
 800414c:	21fc      	movs	r1, #252	; 0xfc
 800414e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004152:	6803      	ldr	r3, [r0, #0]
 8004154:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8004158:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800415c:	6805      	ldr	r5, [r0, #0]
 800415e:	9805      	ldr	r0, [sp, #20]
 8004160:	47a8      	blx	r5
 8004162:	f241 2c01 	movw	ip, #4609	; 0x1201
 8004166:	2800      	cmp	r0, #0
 8004168:	f241 2300 	movw	r3, #4608	; 0x1200
 800416c:	f241 2502 	movw	r5, #4610	; 0x1202
 8004170:	f04f 0e00 	mov.w	lr, #0
 8004174:	bf18      	it	ne
 8004176:	f88a 0000 	strbne.w	r0, [sl]
 800417a:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800417e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004182:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8004186:	f89c 0000 	ldrb.w	r0, [ip]
 800418a:	2800      	cmp	r0, #0
 800418c:	d096      	beq.n	80040bc <pjpeg_decode_init+0x6a0>
 800418e:	3801      	subs	r0, #1
 8004190:	f88c 0000 	strb.w	r0, [ip]
 8004194:	f241 3003 	movw	r0, #4867	; 0x1303
 8004198:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800419c:	4602      	mov	r2, r0
 800419e:	7810      	ldrb	r0, [r2, #0]
 80041a0:	1c41      	adds	r1, r0, #1
 80041a2:	7011      	strb	r1, [r2, #0]
 80041a4:	f241 2103 	movw	r1, #4611	; 0x1203
 80041a8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80041ac:	5c08      	ldrb	r0, [r1, r0]
 80041ae:	f8b9 1000 	ldrh.w	r1, [r9]
 80041b2:	b2c0      	uxtb	r0, r0
 80041b4:	4301      	orrs	r1, r0
 80041b6:	7818      	ldrb	r0, [r3, #0]
 80041b8:	f1c0 0208 	rsb	r2, r0, #8
 80041bc:	fa01 f402 	lsl.w	r4, r1, r2
 80041c0:	e003      	b.n	80041ca <pjpeg_decode_init+0x7ae>
 80041c2:	b2b1      	uxth	r1, r6
 80041c4:	30f8      	adds	r0, #248	; 0xf8
 80041c6:	020c      	lsls	r4, r1, #8
 80041c8:	7018      	strb	r0, [r3, #0]
 80041ca:	f241 3209 	movw	r2, #4873	; 0x1309
 80041ce:	b2c0      	uxtb	r0, r0
 80041d0:	0a31      	lsrs	r1, r6, #8
 80041d2:	f8a9 4000 	strh.w	r4, [r9]
 80041d6:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80041da:	2803      	cmp	r0, #3
 80041dc:	f802 1008 	strb.w	r1, [r2, r8]
 80041e0:	d84e      	bhi.n	8004280 <pjpeg_decode_init+0x864>
 80041e2:	b2a1      	uxth	r1, r4
 80041e4:	fa01 f000 	lsl.w	r0, r1, r0
 80041e8:	f8a9 0000 	strh.w	r0, [r9]
 80041ec:	f89c 0000 	ldrb.w	r0, [ip]
 80041f0:	bb40      	cbnz	r0, 8004244 <pjpeg_decode_init+0x828>
 80041f2:	f241 3003 	movw	r0, #4867	; 0x1303
 80041f6:	2104      	movs	r1, #4
 80041f8:	4662      	mov	r2, ip
 80041fa:	f88c e000 	strb.w	lr, [ip]
 80041fe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004202:	7001      	strb	r1, [r0, #0]
 8004204:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8004208:	21fc      	movs	r1, #252	; 0xfc
 800420a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800420e:	6803      	ldr	r3, [r0, #0]
 8004210:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8004214:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004218:	6806      	ldr	r6, [r0, #0]
 800421a:	9805      	ldr	r0, [sp, #20]
 800421c:	47b0      	blx	r6
 800421e:	f241 2c01 	movw	ip, #4609	; 0x1201
 8004222:	2800      	cmp	r0, #0
 8004224:	f241 2300 	movw	r3, #4608	; 0x1200
 8004228:	f04f 0e00 	mov.w	lr, #0
 800422c:	bf18      	it	ne
 800422e:	f88a 0000 	strbne.w	r0, [sl]
 8004232:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8004236:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800423a:	f89c 0000 	ldrb.w	r0, [ip]
 800423e:	2800      	cmp	r0, #0
 8004240:	f43f af46 	beq.w	80040d0 <pjpeg_decode_init+0x6b4>
 8004244:	3801      	subs	r0, #1
 8004246:	f88c 0000 	strb.w	r0, [ip]
 800424a:	f241 3003 	movw	r0, #4867	; 0x1303
 800424e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004252:	4602      	mov	r2, r0
 8004254:	7810      	ldrb	r0, [r2, #0]
 8004256:	1c41      	adds	r1, r0, #1
 8004258:	7011      	strb	r1, [r2, #0]
 800425a:	f241 2103 	movw	r1, #4611	; 0x1203
 800425e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004262:	5c08      	ldrb	r0, [r1, r0]
 8004264:	f8b9 1000 	ldrh.w	r1, [r9]
 8004268:	b2c0      	uxtb	r0, r0
 800426a:	4308      	orrs	r0, r1
 800426c:	7819      	ldrb	r1, [r3, #0]
 800426e:	f1c1 0204 	rsb	r2, r1, #4
 8004272:	fa00 f502 	lsl.w	r5, r0, r2
 8004276:	1d08      	adds	r0, r1, #4
 8004278:	f8a9 5000 	strh.w	r5, [r9]
 800427c:	7018      	strb	r0, [r3, #0]
 800427e:	e004      	b.n	800428a <pjpeg_decode_init+0x86e>
 8004280:	30fc      	adds	r0, #252	; 0xfc
 8004282:	0125      	lsls	r5, r4, #4
 8004284:	7018      	strb	r0, [r3, #0]
 8004286:	f8a9 5000 	strh.w	r5, [r9]
 800428a:	f241 320c 	movw	r2, #4876	; 0x130c
 800428e:	b2c0      	uxtb	r0, r0
 8004290:	f3c4 3103 	ubfx	r1, r4, #12, #4
 8004294:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004298:	2803      	cmp	r0, #3
 800429a:	f802 1008 	strb.w	r1, [r2, r8]
 800429e:	d84e      	bhi.n	800433e <pjpeg_decode_init+0x922>
 80042a0:	b2a9      	uxth	r1, r5
 80042a2:	fa01 f000 	lsl.w	r0, r1, r0
 80042a6:	f8a9 0000 	strh.w	r0, [r9]
 80042aa:	f89c 0000 	ldrb.w	r0, [ip]
 80042ae:	bb40      	cbnz	r0, 8004302 <pjpeg_decode_init+0x8e6>
 80042b0:	f241 3003 	movw	r0, #4867	; 0x1303
 80042b4:	2104      	movs	r1, #4
 80042b6:	4662      	mov	r2, ip
 80042b8:	f88c e000 	strb.w	lr, [ip]
 80042bc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80042c0:	7001      	strb	r1, [r0, #0]
 80042c2:	f640 10ec 	movw	r0, #2540	; 0x9ec
 80042c6:	21fc      	movs	r1, #252	; 0xfc
 80042c8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80042cc:	6803      	ldr	r3, [r0, #0]
 80042ce:	f640 10e8 	movw	r0, #2536	; 0x9e8
 80042d2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80042d6:	6806      	ldr	r6, [r0, #0]
 80042d8:	9805      	ldr	r0, [sp, #20]
 80042da:	47b0      	blx	r6
 80042dc:	f241 2c01 	movw	ip, #4609	; 0x1201
 80042e0:	2800      	cmp	r0, #0
 80042e2:	f241 2300 	movw	r3, #4608	; 0x1200
 80042e6:	f04f 0e00 	mov.w	lr, #0
 80042ea:	bf18      	it	ne
 80042ec:	f88a 0000 	strbne.w	r0, [sl]
 80042f0:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80042f4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80042f8:	f89c 0000 	ldrb.w	r0, [ip]
 80042fc:	2800      	cmp	r0, #0
 80042fe:	f43f aef1 	beq.w	80040e4 <pjpeg_decode_init+0x6c8>
 8004302:	3801      	subs	r0, #1
 8004304:	f88c 0000 	strb.w	r0, [ip]
 8004308:	f241 3003 	movw	r0, #4867	; 0x1303
 800430c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004310:	4602      	mov	r2, r0
 8004312:	7810      	ldrb	r0, [r2, #0]
 8004314:	1c41      	adds	r1, r0, #1
 8004316:	7011      	strb	r1, [r2, #0]
 8004318:	f241 2103 	movw	r1, #4611	; 0x1203
 800431c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004320:	5c08      	ldrb	r0, [r1, r0]
 8004322:	f8b9 1000 	ldrh.w	r1, [r9]
 8004326:	b2c0      	uxtb	r0, r0
 8004328:	4308      	orrs	r0, r1
 800432a:	7819      	ldrb	r1, [r3, #0]
 800432c:	f1c1 0204 	rsb	r2, r1, #4
 8004330:	fa00 f402 	lsl.w	r4, r0, r2
 8004334:	1d08      	adds	r0, r1, #4
 8004336:	f8a9 4000 	strh.w	r4, [r9]
 800433a:	7018      	strb	r0, [r3, #0]
 800433c:	e009      	b.n	8004352 <pjpeg_decode_init+0x936>
 800433e:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8004342:	30fc      	adds	r0, #252	; 0xfc
 8004344:	f2c0 010f 	movt	r1, #15
 8004348:	7018      	strb	r0, [r3, #0]
 800434a:	ea01 1405 	and.w	r4, r1, r5, lsl #4
 800434e:	f8a9 4000 	strh.w	r4, [r9]
 8004352:	f241 320f 	movw	r2, #4879	; 0x130f
 8004356:	b2c0      	uxtb	r0, r0
 8004358:	f3c5 3103 	ubfx	r1, r5, #12, #4
 800435c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004360:	2807      	cmp	r0, #7
 8004362:	f802 1008 	strb.w	r1, [r2, r8]
 8004366:	d84e      	bhi.n	8004406 <pjpeg_decode_init+0x9ea>
 8004368:	b2a1      	uxth	r1, r4
 800436a:	f640 15f6 	movw	r5, #2550	; 0x9f6
 800436e:	fa01 f000 	lsl.w	r0, r1, r0
 8004372:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8004376:	f8a9 0000 	strh.w	r0, [r9]
 800437a:	f89c 0000 	ldrb.w	r0, [ip]
 800437e:	bb40      	cbnz	r0, 80043d2 <pjpeg_decode_init+0x9b6>
 8004380:	f241 3003 	movw	r0, #4867	; 0x1303
 8004384:	2104      	movs	r1, #4
 8004386:	4662      	mov	r2, ip
 8004388:	f88c e000 	strb.w	lr, [ip]
 800438c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004390:	7001      	strb	r1, [r0, #0]
 8004392:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8004396:	21fc      	movs	r1, #252	; 0xfc
 8004398:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800439c:	6803      	ldr	r3, [r0, #0]
 800439e:	f640 10e8 	movw	r0, #2536	; 0x9e8
 80043a2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80043a6:	6806      	ldr	r6, [r0, #0]
 80043a8:	9805      	ldr	r0, [sp, #20]
 80043aa:	47b0      	blx	r6
 80043ac:	f241 2c01 	movw	ip, #4609	; 0x1201
 80043b0:	2800      	cmp	r0, #0
 80043b2:	f241 2300 	movw	r3, #4608	; 0x1200
 80043b6:	f04f 0e00 	mov.w	lr, #0
 80043ba:	bf18      	it	ne
 80043bc:	f88a 0000 	strbne.w	r0, [sl]
 80043c0:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80043c4:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80043c8:	f89c 0000 	ldrb.w	r0, [ip]
 80043cc:	2800      	cmp	r0, #0
 80043ce:	f43f ae98 	beq.w	8004102 <pjpeg_decode_init+0x6e6>
 80043d2:	3801      	subs	r0, #1
 80043d4:	f88c 0000 	strb.w	r0, [ip]
 80043d8:	f241 3003 	movw	r0, #4867	; 0x1303
 80043dc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80043e0:	4602      	mov	r2, r0
 80043e2:	7810      	ldrb	r0, [r2, #0]
 80043e4:	1c41      	adds	r1, r0, #1
 80043e6:	7011      	strb	r1, [r2, #0]
 80043e8:	f241 2103 	movw	r1, #4611	; 0x1203
 80043ec:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80043f0:	5c08      	ldrb	r0, [r1, r0]
 80043f2:	f8b9 1000 	ldrh.w	r1, [r9]
 80043f6:	b2c0      	uxtb	r0, r0
 80043f8:	4301      	orrs	r1, r0
 80043fa:	7818      	ldrb	r0, [r3, #0]
 80043fc:	f1c0 0208 	rsb	r2, r0, #8
 8004400:	fa01 f602 	lsl.w	r6, r1, r2
 8004404:	e007      	b.n	8004416 <pjpeg_decode_init+0x9fa>
 8004406:	f640 15f6 	movw	r5, #2550	; 0x9f6
 800440a:	b2a1      	uxth	r1, r4
 800440c:	30f8      	adds	r0, #248	; 0xf8
 800440e:	020e      	lsls	r6, r1, #8
 8004410:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8004414:	7018      	strb	r0, [r3, #0]
 8004416:	b2a1      	uxth	r1, r4
 8004418:	f640 540e 	movw	r4, #3342	; 0xd0e
 800441c:	f8a9 6000 	strh.w	r6, [r9]
 8004420:	ebbe 2f51 	cmp.w	lr, r1, lsr #9
 8004424:	ea4f 2211 	mov.w	r2, r1, lsr #8
 8004428:	f2c2 0400 	movt	r4, #8192	; 0x2000
 800442c:	f804 2008 	strb.w	r2, [r4, r8]
 8004430:	f43f ae38 	beq.w	80040a4 <pjpeg_decode_init+0x688>
 8004434:	2424      	movs	r4, #36	; 0x24
 8004436:	e53c      	b.n	8003eb2 <pjpeg_decode_init+0x496>
 8004438:	240b      	movs	r4, #11
 800443a:	e53a      	b.n	8003eb2 <pjpeg_decode_init+0x496>
 800443c:	f8dd 8010 	ldr.w	r8, [sp, #16]
 8004440:	468e      	mov	lr, r1
 8004442:	f89a 0000 	ldrb.w	r0, [sl]
 8004446:	b180      	cbz	r0, 800446a <pjpeg_decode_init+0xa4e>
 8004448:	2400      	movs	r4, #0
 800444a:	e534      	b.n	8003eb6 <pjpeg_decode_init+0x49a>
 800444c:	f241 2002 	movw	r0, #4610	; 0x1202
 8004450:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004454:	4602      	mov	r2, r0
 8004456:	7811      	ldrb	r1, [r2, #0]
 8004458:	43c8      	mvns	r0, r1
 800445a:	29ff      	cmp	r1, #255	; 0xff
 800445c:	7010      	strb	r0, [r2, #0]
 800445e:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8004462:	bf18      	it	ne
 8004464:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8004468:	e5d8      	b.n	800401c <pjpeg_decode_init+0x600>
 800446a:	f1be 0f03 	cmp.w	lr, #3
 800446e:	46d3      	mov	fp, sl
 8004470:	f8cd 8010 	str.w	r8, [sp, #16]
 8004474:	d025      	beq.n	80044c2 <pjpeg_decode_init+0xaa6>
 8004476:	f1be 0f01 	cmp.w	lr, #1
 800447a:	f040 80fa 	bne.w	8004672 <pjpeg_decode_init+0xc56>
 800447e:	f241 300c 	movw	r0, #4876	; 0x130c
 8004482:	241b      	movs	r4, #27
 8004484:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004488:	7800      	ldrb	r0, [r0, #0]
 800448a:	2801      	cmp	r0, #1
 800448c:	bf01      	itttt	eq
 800448e:	f241 300f 	movweq	r0, #4879	; 0x130f
 8004492:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8004496:	7800      	ldrbeq	r0, [r0, #0]
 8004498:	2801      	cmpeq	r0, #1
 800449a:	f47f ad0f 	bne.w	8003ebc <pjpeg_decode_init+0x4a0>
 800449e:	f640 10f8 	movw	r0, #2552	; 0x9f8
 80044a2:	2100      	movs	r1, #0
 80044a4:	2201      	movs	r2, #1
 80044a6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80044aa:	6001      	str	r1, [r0, #0]
 80044ac:	f640 5006 	movw	r0, #3334	; 0xd06
 80044b0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80044b4:	7002      	strb	r2, [r0, #0]
 80044b6:	f640 5008 	movw	r0, #3336	; 0xd08
 80044ba:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80044be:	7001      	strb	r1, [r0, #0]
 80044c0:	e032      	b.n	8004528 <pjpeg_decode_init+0xb0c>
 80044c2:	f241 310c 	movw	r1, #4876	; 0x130c
 80044c6:	241b      	movs	r4, #27
 80044c8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80044cc:	7848      	ldrb	r0, [r1, #1]
 80044ce:	2801      	cmp	r0, #1
 80044d0:	bf01      	itttt	eq
 80044d2:	f241 300f 	movweq	r0, #4879	; 0x130f
 80044d6:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 80044da:	7842      	ldrbeq	r2, [r0, #1]
 80044dc:	2a01      	cmpeq	r2, #1
 80044de:	f47f aced 	bne.w	8003ebc <pjpeg_decode_init+0x4a0>
 80044e2:	788a      	ldrb	r2, [r1, #2]
 80044e4:	2a01      	cmp	r2, #1
 80044e6:	bf04      	itt	eq
 80044e8:	7882      	ldrbeq	r2, [r0, #2]
 80044ea:	2a01      	cmpeq	r2, #1
 80044ec:	f47f ace6 	bne.w	8003ebc <pjpeg_decode_init+0x4a0>
 80044f0:	7809      	ldrb	r1, [r1, #0]
 80044f2:	7800      	ldrb	r0, [r0, #0]
 80044f4:	2901      	cmp	r1, #1
 80044f6:	bf08      	it	eq
 80044f8:	2801      	cmpeq	r0, #1
 80044fa:	f040 80c2 	bne.w	8004682 <pjpeg_decode_init+0xc66>
 80044fe:	f640 10f8 	movw	r0, #2552	; 0x9f8
 8004502:	2101      	movs	r1, #1
 8004504:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004508:	6001      	str	r1, [r0, #0]
 800450a:	f640 5006 	movw	r0, #3334	; 0xd06
 800450e:	2103      	movs	r1, #3
 8004510:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004514:	7001      	strb	r1, [r0, #0]
 8004516:	f640 5008 	movw	r0, #3336	; 0xd08
 800451a:	f44f 7180 	mov.w	r1, #256	; 0x100
 800451e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004522:	8001      	strh	r1, [r0, #0]
 8004524:	2102      	movs	r1, #2
 8004526:	7081      	strb	r1, [r0, #2]
 8004528:	2108      	movs	r1, #8
 800452a:	2008      	movs	r0, #8
 800452c:	f640 2200 	movw	r2, #2560	; 0xa00
 8004530:	f640 16f2 	movw	r6, #2546	; 0x9f2
 8004534:	2908      	cmp	r1, #8
 8004536:	f04f 0304 	mov.w	r3, #4
 800453a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800453e:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8004542:	7011      	strb	r1, [r2, #0]
 8004544:	f640 2201 	movw	r2, #2561	; 0xa01
 8004548:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800454c:	7010      	strb	r0, [r2, #0]
 800454e:	bf08      	it	eq
 8004550:	2303      	moveq	r3, #3
 8004552:	8836      	ldrh	r6, [r6, #0]
 8004554:	2204      	movs	r2, #4
 8004556:	2808      	cmp	r0, #8
 8004558:	fa56 f181 	uxtab	r1, r6, r1
 800455c:	f1a1 0101 	sub.w	r1, r1, #1
 8004560:	fa41 f103 	asr.w	r1, r1, r3
 8004564:	f640 13fc 	movw	r3, #2556	; 0x9fc
 8004568:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800456c:	8019      	strh	r1, [r3, #0]
 800456e:	f640 13f4 	movw	r3, #2548	; 0x9f4
 8004572:	bf08      	it	eq
 8004574:	2203      	moveq	r2, #3
 8004576:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800457a:	881b      	ldrh	r3, [r3, #0]
 800457c:	fa53 f080 	uxtab	r0, r3, r0
 8004580:	3801      	subs	r0, #1
 8004582:	4110      	asrs	r0, r2
 8004584:	f640 12fe 	movw	r2, #2558	; 0x9fe
 8004588:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800458c:	8010      	strh	r0, [r2, #0]
 800458e:	4348      	muls	r0, r1
 8004590:	f640 11e6 	movw	r1, #2534	; 0x9e6
 8004594:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004598:	8008      	strh	r0, [r1, #0]
 800459a:	f1a7 001d 	sub.w	r0, r7, #29
 800459e:	f001 fa35 	bl	8005a0c <processMarkers>
 80045a2:	4604      	mov	r4, r0
 80045a4:	2c00      	cmp	r4, #0
 80045a6:	d168      	bne.n	800467a <pjpeg_decode_init+0xc5e>
 80045a8:	f817 0c1d 	ldrb.w	r0, [r7, #-29]
 80045ac:	28d9      	cmp	r0, #217	; 0xd9
 80045ae:	d063      	beq.n	8004678 <pjpeg_decode_init+0xc5c>
 80045b0:	28da      	cmp	r0, #218	; 0xda
 80045b2:	d161      	bne.n	8004678 <pjpeg_decode_init+0xc5c>
 80045b4:	2010      	movs	r0, #16
 80045b6:	2100      	movs	r1, #0
 80045b8:	f000 fdc1 	bl	800513e <getBits>
 80045bc:	4680      	mov	r8, r0
 80045be:	f241 2000 	movw	r0, #4608	; 0x1200
 80045c2:	f8b9 5000 	ldrh.w	r5, [r9]
 80045c6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80045ca:	7800      	ldrb	r0, [r0, #0]
 80045cc:	2807      	cmp	r0, #7
 80045ce:	d874      	bhi.n	80046ba <pjpeg_decode_init+0xc9e>
 80045d0:	fa05 f000 	lsl.w	r0, r5, r0
 80045d4:	f8a9 0000 	strh.w	r0, [r9]
 80045d8:	f241 2001 	movw	r0, #4609	; 0x1201
 80045dc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80045e0:	7800      	ldrb	r0, [r0, #0]
 80045e2:	bb20      	cbnz	r0, 800462e <pjpeg_decode_init+0xc12>
 80045e4:	f241 3103 	movw	r1, #4867	; 0x1303
 80045e8:	f241 2201 	movw	r2, #4609	; 0x1201
 80045ec:	2004      	movs	r0, #4
 80045ee:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80045f2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80045f6:	7008      	strb	r0, [r1, #0]
 80045f8:	2000      	movs	r0, #0
 80045fa:	21fc      	movs	r1, #252	; 0xfc
 80045fc:	7010      	strb	r0, [r2, #0]
 80045fe:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8004602:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004606:	6803      	ldr	r3, [r0, #0]
 8004608:	f640 10e8 	movw	r0, #2536	; 0x9e8
 800460c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004610:	6806      	ldr	r6, [r0, #0]
 8004612:	9805      	ldr	r0, [sp, #20]
 8004614:	47b0      	blx	r6
 8004616:	2800      	cmp	r0, #0
 8004618:	bf18      	it	ne
 800461a:	f88b 0000 	strbne.w	r0, [fp]
 800461e:	f241 2001 	movw	r0, #4609	; 0x1201
 8004622:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004626:	7800      	ldrb	r0, [r0, #0]
 8004628:	2800      	cmp	r0, #0
 800462a:	f000 841c 	beq.w	8004e66 <pjpeg_decode_init+0x144a>
 800462e:	f241 2101 	movw	r1, #4609	; 0x1201
 8004632:	3801      	subs	r0, #1
 8004634:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004638:	7008      	strb	r0, [r1, #0]
 800463a:	f241 3003 	movw	r0, #4867	; 0x1303
 800463e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004642:	4602      	mov	r2, r0
 8004644:	7810      	ldrb	r0, [r2, #0]
 8004646:	1c41      	adds	r1, r0, #1
 8004648:	7011      	strb	r1, [r2, #0]
 800464a:	f241 2103 	movw	r1, #4611	; 0x1203
 800464e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004652:	5c08      	ldrb	r0, [r1, r0]
 8004654:	f8b9 1000 	ldrh.w	r1, [r9]
 8004658:	b2c0      	uxtb	r0, r0
 800465a:	4301      	orrs	r1, r0
 800465c:	f241 2000 	movw	r0, #4608	; 0x1200
 8004660:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004664:	f890 c000 	ldrb.w	ip, [r0]
 8004668:	f1cc 0208 	rsb	r2, ip, #8
 800466c:	fa01 f002 	lsl.w	r0, r1, r2
 8004670:	e02c      	b.n	80046cc <pjpeg_decode_init+0xcb0>
 8004672:	241a      	movs	r4, #26
 8004674:	f7ff bc22 	b.w	8003ebc <pjpeg_decode_init+0x4a0>
 8004678:	2412      	movs	r4, #18
 800467a:	f89b 0000 	ldrb.w	r0, [fp]
 800467e:	f7ff bc1a 	b.w	8003eb6 <pjpeg_decode_init+0x49a>
 8004682:	2901      	cmp	r1, #1
 8004684:	bf08      	it	eq
 8004686:	2802      	cmpeq	r0, #2
 8004688:	f040 8173 	bne.w	8004972 <pjpeg_decode_init+0xf56>
 800468c:	f640 10f8 	movw	r0, #2552	; 0x9f8
 8004690:	2103      	movs	r1, #3
 8004692:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004696:	6001      	str	r1, [r0, #0]
 8004698:	f640 5006 	movw	r0, #3334	; 0xd06
 800469c:	2104      	movs	r1, #4
 800469e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80046a2:	7001      	strb	r1, [r0, #0]
 80046a4:	f640 5008 	movw	r0, #3336	; 0xd08
 80046a8:	2100      	movs	r1, #0
 80046aa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80046ae:	f2c0 2101 	movt	r1, #513	; 0x201
 80046b2:	6001      	str	r1, [r0, #0]
 80046b4:	2010      	movs	r0, #16
 80046b6:	2108      	movs	r1, #8
 80046b8:	e738      	b.n	800452c <pjpeg_decode_init+0xb10>
 80046ba:	f241 2100 	movw	r1, #4608	; 0x1200
 80046be:	f100 0cf8 	add.w	ip, r0, #248	; 0xf8
 80046c2:	0228      	lsls	r0, r5, #8
 80046c4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80046c8:	f881 c000 	strb.w	ip, [r1]
 80046cc:	9003      	str	r0, [sp, #12]
 80046ce:	f241 3106 	movw	r1, #4870	; 0x1306
 80046d2:	0a2e      	lsrs	r6, r5, #8
 80046d4:	240e      	movs	r4, #14
 80046d6:	9803      	ldr	r0, [sp, #12]
 80046d8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80046dc:	700e      	strb	r6, [r1, #0]
 80046de:	2100      	movs	r1, #0
 80046e0:	ebb1 2f95 	cmp.w	r1, r5, lsr #10
 80046e4:	f8a9 0000 	strh.w	r0, [r9]
 80046e8:	d1c7      	bne.n	800467a <pjpeg_decode_init+0xc5e>
 80046ea:	2e00      	cmp	r6, #0
 80046ec:	d0c5      	beq.n	800467a <pjpeg_decode_init+0xc5e>
 80046ee:	f64f 71fd 	movw	r1, #65533	; 0xfffd
 80046f2:	eb08 0a01 	add.w	sl, r8, r1
 80046f6:	2103      	movs	r1, #3
 80046f8:	eb01 0146 	add.w	r1, r1, r6, lsl #1
 80046fc:	fa1f f28a 	uxth.w	r2, sl
 8004700:	b289      	uxth	r1, r1
 8004702:	4291      	cmp	r1, r2
 8004704:	d1b9      	bne.n	800467a <pjpeg_decode_init+0xc5e>
 8004706:	2000      	movs	r0, #0
 8004708:	9002      	str	r0, [sp, #8]
 800470a:	e045      	b.n	8004798 <pjpeg_decode_init+0xd7c>
 800470c:	2600      	movs	r6, #0
 800470e:	2200      	movs	r2, #0
 8004710:	e000      	b.n	8004714 <pjpeg_decode_init+0xcf8>
 8004712:	4616      	mov	r6, r2
 8004714:	b2f5      	uxtb	r5, r6
 8004716:	429d      	cmp	r5, r3
 8004718:	d31e      	bcc.n	8004758 <pjpeg_decode_init+0xd3c>
 800471a:	e19f      	b.n	8004a5c <pjpeg_decode_init+0x1040>
 800471c:	f241 2002 	movw	r0, #4610	; 0x1202
 8004720:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004724:	4602      	mov	r2, r0
 8004726:	7810      	ldrb	r0, [r2, #0]
 8004728:	43c1      	mvns	r1, r0
 800472a:	28ff      	cmp	r0, #255	; 0xff
 800472c:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8004730:	7011      	strb	r1, [r2, #0]
 8004732:	bf18      	it	ne
 8004734:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8004738:	e078      	b.n	800482c <pjpeg_decode_init+0xe10>
 800473a:	f241 2002 	movw	r0, #4610	; 0x1202
 800473e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004742:	4602      	mov	r2, r0
 8004744:	7810      	ldrb	r0, [r2, #0]
 8004746:	43c1      	mvns	r1, r0
 8004748:	28ff      	cmp	r0, #255	; 0xff
 800474a:	f06f 0026 	mvn.w	r0, #38	; 0x26
 800474e:	7011      	strb	r1, [r2, #0]
 8004750:	bf18      	it	ne
 8004752:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8004756:	e0d2      	b.n	80048fe <pjpeg_decode_init+0xee2>
 8004758:	9801      	ldr	r0, [sp, #4]
 800475a:	f06f 0301 	mvn.w	r3, #1
 800475e:	f001 010f 	and.w	r1, r1, #15
 8004762:	fa13 fa8a 	uxtah	sl, r3, sl
 8004766:	f241 3312 	movw	r3, #4882	; 0x1312
 800476a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800476e:	541e      	strb	r6, [r3, r0]
 8004770:	f640 5611 	movw	r6, #3345	; 0xd11
 8004774:	f3c8 3303 	ubfx	r3, r8, #12, #4
 8004778:	9802      	ldr	r0, [sp, #8]
 800477a:	f2c2 0600 	movt	r6, #8192	; 0x2000
 800477e:	54b3      	strb	r3, [r6, r2]
 8004780:	f640 735a 	movw	r3, #3930	; 0xf5a
 8004784:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004788:	5499      	strb	r1, [r3, r2]
 800478a:	f241 3106 	movw	r1, #4870	; 0x1306
 800478e:	3001      	adds	r0, #1
 8004790:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004794:	9002      	str	r0, [sp, #8]
 8004796:	780e      	ldrb	r6, [r1, #0]
 8004798:	9902      	ldr	r1, [sp, #8]
 800479a:	fa5f f08c 	uxtb.w	r0, ip
 800479e:	2807      	cmp	r0, #7
 80047a0:	b2c9      	uxtb	r1, r1
 80047a2:	9101      	str	r1, [sp, #4]
 80047a4:	d850      	bhi.n	8004848 <pjpeg_decode_init+0xe2c>
 80047a6:	9903      	ldr	r1, [sp, #12]
 80047a8:	b289      	uxth	r1, r1
 80047aa:	fa01 f000 	lsl.w	r0, r1, r0
 80047ae:	f8a9 0000 	strh.w	r0, [r9]
 80047b2:	f241 2001 	movw	r0, #4609	; 0x1201
 80047b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80047ba:	7800      	ldrb	r0, [r0, #0]
 80047bc:	bb18      	cbnz	r0, 8004806 <pjpeg_decode_init+0xdea>
 80047be:	f241 3003 	movw	r0, #4867	; 0x1303
 80047c2:	f241 2201 	movw	r2, #4609	; 0x1201
 80047c6:	2104      	movs	r1, #4
 80047c8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80047cc:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80047d0:	7001      	strb	r1, [r0, #0]
 80047d2:	2000      	movs	r0, #0
 80047d4:	21fc      	movs	r1, #252	; 0xfc
 80047d6:	7010      	strb	r0, [r2, #0]
 80047d8:	f640 10ec 	movw	r0, #2540	; 0x9ec
 80047dc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80047e0:	6803      	ldr	r3, [r0, #0]
 80047e2:	f640 10e8 	movw	r0, #2536	; 0x9e8
 80047e6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80047ea:	6805      	ldr	r5, [r0, #0]
 80047ec:	9805      	ldr	r0, [sp, #20]
 80047ee:	47a8      	blx	r5
 80047f0:	2800      	cmp	r0, #0
 80047f2:	bf18      	it	ne
 80047f4:	f88b 0000 	strbne.w	r0, [fp]
 80047f8:	f241 2001 	movw	r0, #4609	; 0x1201
 80047fc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004800:	7800      	ldrb	r0, [r0, #0]
 8004802:	2800      	cmp	r0, #0
 8004804:	d08a      	beq.n	800471c <pjpeg_decode_init+0xd00>
 8004806:	f241 2101 	movw	r1, #4609	; 0x1201
 800480a:	3801      	subs	r0, #1
 800480c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004810:	7008      	strb	r0, [r1, #0]
 8004812:	f241 3003 	movw	r0, #4867	; 0x1303
 8004816:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800481a:	4602      	mov	r2, r0
 800481c:	7810      	ldrb	r0, [r2, #0]
 800481e:	1c41      	adds	r1, r0, #1
 8004820:	7011      	strb	r1, [r2, #0]
 8004822:	f241 2103 	movw	r1, #4611	; 0x1203
 8004826:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800482a:	5c08      	ldrb	r0, [r1, r0]
 800482c:	f8b9 1000 	ldrh.w	r1, [r9]
 8004830:	b2c0      	uxtb	r0, r0
 8004832:	4301      	orrs	r1, r0
 8004834:	f241 2000 	movw	r0, #4608	; 0x1200
 8004838:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800483c:	7800      	ldrb	r0, [r0, #0]
 800483e:	f1c0 0208 	rsb	r2, r0, #8
 8004842:	fa01 f802 	lsl.w	r8, r1, r2
 8004846:	e009      	b.n	800485c <pjpeg_decode_init+0xe40>
 8004848:	f241 2100 	movw	r1, #4608	; 0x1200
 800484c:	30f8      	adds	r0, #248	; 0xf8
 800484e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004852:	7008      	strb	r0, [r1, #0]
 8004854:	9903      	ldr	r1, [sp, #12]
 8004856:	b289      	uxth	r1, r1
 8004858:	ea4f 2801 	mov.w	r8, r1, lsl #8
 800485c:	9903      	ldr	r1, [sp, #12]
 800485e:	f8a9 8000 	strh.w	r8, [r9]
 8004862:	f3c1 2507 	ubfx	r5, r1, #8, #8
 8004866:	9a01      	ldr	r2, [sp, #4]
 8004868:	b2f1      	uxtb	r1, r6
 800486a:	428a      	cmp	r2, r1
 800486c:	f080 809c 	bcs.w	80049a8 <pjpeg_decode_init+0xf8c>
 8004870:	b2c0      	uxtb	r0, r0
 8004872:	2807      	cmp	r0, #7
 8004874:	d852      	bhi.n	800491c <pjpeg_decode_init+0xf00>
 8004876:	fa1f f188 	uxth.w	r1, r8
 800487a:	fa01 f000 	lsl.w	r0, r1, r0
 800487e:	f8a9 0000 	strh.w	r0, [r9]
 8004882:	f241 2001 	movw	r0, #4609	; 0x1201
 8004886:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800488a:	7800      	ldrb	r0, [r0, #0]
 800488c:	bb20      	cbnz	r0, 80048d8 <pjpeg_decode_init+0xebc>
 800488e:	f241 3003 	movw	r0, #4867	; 0x1303
 8004892:	f241 2201 	movw	r2, #4609	; 0x1201
 8004896:	2104      	movs	r1, #4
 8004898:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800489c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80048a0:	7001      	strb	r1, [r0, #0]
 80048a2:	2000      	movs	r0, #0
 80048a4:	21fc      	movs	r1, #252	; 0xfc
 80048a6:	7010      	strb	r0, [r2, #0]
 80048a8:	f640 10ec 	movw	r0, #2540	; 0x9ec
 80048ac:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80048b0:	6803      	ldr	r3, [r0, #0]
 80048b2:	f640 10e8 	movw	r0, #2536	; 0x9e8
 80048b6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80048ba:	6806      	ldr	r6, [r0, #0]
 80048bc:	9805      	ldr	r0, [sp, #20]
 80048be:	47b0      	blx	r6
 80048c0:	2800      	cmp	r0, #0
 80048c2:	bf18      	it	ne
 80048c4:	f88b 0000 	strbne.w	r0, [fp]
 80048c8:	f241 2001 	movw	r0, #4609	; 0x1201
 80048cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80048d0:	7800      	ldrb	r0, [r0, #0]
 80048d2:	2800      	cmp	r0, #0
 80048d4:	f43f af31 	beq.w	800473a <pjpeg_decode_init+0xd1e>
 80048d8:	f241 2101 	movw	r1, #4609	; 0x1201
 80048dc:	3801      	subs	r0, #1
 80048de:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80048e2:	7008      	strb	r0, [r1, #0]
 80048e4:	f241 3003 	movw	r0, #4867	; 0x1303
 80048e8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80048ec:	4602      	mov	r2, r0
 80048ee:	7810      	ldrb	r0, [r2, #0]
 80048f0:	1c41      	adds	r1, r0, #1
 80048f2:	7011      	strb	r1, [r2, #0]
 80048f4:	f241 2103 	movw	r1, #4611	; 0x1203
 80048f8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80048fc:	5c08      	ldrb	r0, [r1, r0]
 80048fe:	f8b9 1000 	ldrh.w	r1, [r9]
 8004902:	b2c0      	uxtb	r0, r0
 8004904:	4301      	orrs	r1, r0
 8004906:	f241 2000 	movw	r0, #4608	; 0x1200
 800490a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800490e:	f890 c000 	ldrb.w	ip, [r0]
 8004912:	f1cc 0208 	rsb	r2, ip, #8
 8004916:	fa01 f002 	lsl.w	r0, r1, r2
 800491a:	e00d      	b.n	8004938 <pjpeg_decode_init+0xf1c>
 800491c:	f241 2100 	movw	r1, #4608	; 0x1200
 8004920:	f100 0cf8 	add.w	ip, r0, #248	; 0xf8
 8004924:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004928:	f881 c000 	strb.w	ip, [r1]
 800492c:	f64f 7100 	movw	r1, #65280	; 0xff00
 8004930:	f2c0 01ff 	movt	r1, #255	; 0xff
 8004934:	ea01 2008 	and.w	r0, r1, r8, lsl #8
 8004938:	9003      	str	r0, [sp, #12]
 800493a:	f640 12f6 	movw	r2, #2550	; 0x9f6
 800493e:	9803      	ldr	r0, [sp, #12]
 8004940:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004944:	f8a9 0000 	strh.w	r0, [r9]
 8004948:	f3c8 2107 	ubfx	r1, r8, #8, #8
 800494c:	7813      	ldrb	r3, [r2, #0]
 800494e:	2b00      	cmp	r3, #0
 8004950:	f43f aedc 	beq.w	800470c <pjpeg_decode_init+0xcf0>
 8004954:	f241 3009 	movw	r0, #4873	; 0x1309
 8004958:	2200      	movs	r2, #0
 800495a:	2600      	movs	r6, #0
 800495c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004960:	5c84      	ldrb	r4, [r0, r2]
 8004962:	42a5      	cmp	r5, r4
 8004964:	f43f aed5 	beq.w	8004712 <pjpeg_decode_init+0xcf6>
 8004968:	3201      	adds	r2, #1
 800496a:	3601      	adds	r6, #1
 800496c:	429a      	cmp	r2, r3
 800496e:	d3f7      	bcc.n	8004960 <pjpeg_decode_init+0xf44>
 8004970:	e6d0      	b.n	8004714 <pjpeg_decode_init+0xcf8>
 8004972:	2902      	cmp	r1, #2
 8004974:	bf08      	it	eq
 8004976:	2801      	cmpeq	r0, #1
 8004978:	d175      	bne.n	8004a66 <pjpeg_decode_init+0x104a>
 800497a:	f640 10f8 	movw	r0, #2552	; 0x9f8
 800497e:	2102      	movs	r1, #2
 8004980:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004984:	6001      	str	r1, [r0, #0]
 8004986:	f640 5006 	movw	r0, #3334	; 0xd06
 800498a:	2104      	movs	r1, #4
 800498c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004990:	7001      	strb	r1, [r0, #0]
 8004992:	f640 5008 	movw	r0, #3336	; 0xd08
 8004996:	2100      	movs	r1, #0
 8004998:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800499c:	f2c0 2101 	movt	r1, #513	; 0x201
 80049a0:	6001      	str	r1, [r0, #0]
 80049a2:	2008      	movs	r0, #8
 80049a4:	2110      	movs	r1, #16
 80049a6:	e5c1      	b.n	800452c <pjpeg_decode_init+0xb10>
 80049a8:	f241 4120 	movw	r1, #5152	; 0x1420
 80049ac:	b2c0      	uxtb	r0, r0
 80049ae:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80049b2:	2807      	cmp	r0, #7
 80049b4:	700d      	strb	r5, [r1, #0]
 80049b6:	d875      	bhi.n	8004aa4 <pjpeg_decode_init+0x1088>
 80049b8:	fa1f f188 	uxth.w	r1, r8
 80049bc:	fa01 f000 	lsl.w	r0, r1, r0
 80049c0:	f8a9 0000 	strh.w	r0, [r9]
 80049c4:	f241 2001 	movw	r0, #4609	; 0x1201
 80049c8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80049cc:	7800      	ldrb	r0, [r0, #0]
 80049ce:	bb20      	cbnz	r0, 8004a1a <pjpeg_decode_init+0xffe>
 80049d0:	f241 3103 	movw	r1, #4867	; 0x1303
 80049d4:	f241 2201 	movw	r2, #4609	; 0x1201
 80049d8:	2004      	movs	r0, #4
 80049da:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80049de:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80049e2:	7008      	strb	r0, [r1, #0]
 80049e4:	2000      	movs	r0, #0
 80049e6:	21fc      	movs	r1, #252	; 0xfc
 80049e8:	7010      	strb	r0, [r2, #0]
 80049ea:	f640 10ec 	movw	r0, #2540	; 0x9ec
 80049ee:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80049f2:	6803      	ldr	r3, [r0, #0]
 80049f4:	f640 10e8 	movw	r0, #2536	; 0x9e8
 80049f8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80049fc:	6806      	ldr	r6, [r0, #0]
 80049fe:	9805      	ldr	r0, [sp, #20]
 8004a00:	47b0      	blx	r6
 8004a02:	2800      	cmp	r0, #0
 8004a04:	bf18      	it	ne
 8004a06:	f88b 0000 	strbne.w	r0, [fp]
 8004a0a:	f241 2001 	movw	r0, #4609	; 0x1201
 8004a0e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004a12:	7800      	ldrb	r0, [r0, #0]
 8004a14:	2800      	cmp	r0, #0
 8004a16:	f000 82b5 	beq.w	8004f84 <pjpeg_decode_init+0x1568>
 8004a1a:	f241 2101 	movw	r1, #4609	; 0x1201
 8004a1e:	3801      	subs	r0, #1
 8004a20:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004a24:	7008      	strb	r0, [r1, #0]
 8004a26:	f241 3003 	movw	r0, #4867	; 0x1303
 8004a2a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004a2e:	4602      	mov	r2, r0
 8004a30:	7810      	ldrb	r0, [r2, #0]
 8004a32:	1c41      	adds	r1, r0, #1
 8004a34:	7011      	strb	r1, [r2, #0]
 8004a36:	f241 2103 	movw	r1, #4611	; 0x1203
 8004a3a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004a3e:	5c08      	ldrb	r0, [r1, r0]
 8004a40:	f8b9 1000 	ldrh.w	r1, [r9]
 8004a44:	b2c0      	uxtb	r0, r0
 8004a46:	4301      	orrs	r1, r0
 8004a48:	f241 2000 	movw	r0, #4608	; 0x1200
 8004a4c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004a50:	7800      	ldrb	r0, [r0, #0]
 8004a52:	f1c0 0208 	rsb	r2, r0, #8
 8004a56:	fa01 f502 	lsl.w	r5, r1, r2
 8004a5a:	e02f      	b.n	8004abc <pjpeg_decode_init+0x10a0>
 8004a5c:	f89b 0000 	ldrb.w	r0, [fp]
 8004a60:	240f      	movs	r4, #15
 8004a62:	f7ff ba28 	b.w	8003eb6 <pjpeg_decode_init+0x49a>
 8004a66:	2902      	cmp	r1, #2
 8004a68:	f04f 041b 	mov.w	r4, #27
 8004a6c:	bf08      	it	eq
 8004a6e:	2802      	cmpeq	r0, #2
 8004a70:	f47f aa24 	bne.w	8003ebc <pjpeg_decode_init+0x4a0>
 8004a74:	f640 10f8 	movw	r0, #2552	; 0x9f8
 8004a78:	2104      	movs	r1, #4
 8004a7a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004a7e:	6001      	str	r1, [r0, #0]
 8004a80:	f640 5006 	movw	r0, #3334	; 0xd06
 8004a84:	2106      	movs	r1, #6
 8004a86:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004a8a:	7001      	strb	r1, [r0, #0]
 8004a8c:	f640 5008 	movw	r0, #3336	; 0xd08
 8004a90:	2100      	movs	r1, #0
 8004a92:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004a96:	6001      	str	r1, [r0, #0]
 8004a98:	f240 2101 	movw	r1, #513	; 0x201
 8004a9c:	8081      	strh	r1, [r0, #4]
 8004a9e:	2110      	movs	r1, #16
 8004aa0:	2010      	movs	r0, #16
 8004aa2:	e543      	b.n	800452c <pjpeg_decode_init+0xb10>
 8004aa4:	f241 2100 	movw	r1, #4608	; 0x1200
 8004aa8:	30f8      	adds	r0, #248	; 0xf8
 8004aaa:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004aae:	7008      	strb	r0, [r1, #0]
 8004ab0:	f64f 7100 	movw	r1, #65280	; 0xff00
 8004ab4:	f2c0 01ff 	movt	r1, #255	; 0xff
 8004ab8:	ea01 2508 	and.w	r5, r1, r8, lsl #8
 8004abc:	f241 4223 	movw	r2, #5155	; 0x1423
 8004ac0:	b2c0      	uxtb	r0, r0
 8004ac2:	ea4f 2118 	mov.w	r1, r8, lsr #8
 8004ac6:	f8a9 5000 	strh.w	r5, [r9]
 8004aca:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004ace:	2803      	cmp	r0, #3
 8004ad0:	7011      	strb	r1, [r2, #0]
 8004ad2:	d855      	bhi.n	8004b80 <pjpeg_decode_init+0x1164>
 8004ad4:	b2a9      	uxth	r1, r5
 8004ad6:	fa01 f000 	lsl.w	r0, r1, r0
 8004ada:	f8a9 0000 	strh.w	r0, [r9]
 8004ade:	f241 2001 	movw	r0, #4609	; 0x1201
 8004ae2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004ae6:	7800      	ldrb	r0, [r0, #0]
 8004ae8:	bb20      	cbnz	r0, 8004b34 <pjpeg_decode_init+0x1118>
 8004aea:	f241 3103 	movw	r1, #4867	; 0x1303
 8004aee:	f241 2201 	movw	r2, #4609	; 0x1201
 8004af2:	2004      	movs	r0, #4
 8004af4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004af8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004afc:	7008      	strb	r0, [r1, #0]
 8004afe:	2000      	movs	r0, #0
 8004b00:	21fc      	movs	r1, #252	; 0xfc
 8004b02:	7010      	strb	r0, [r2, #0]
 8004b04:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8004b08:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004b0c:	6803      	ldr	r3, [r0, #0]
 8004b0e:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8004b12:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004b16:	6806      	ldr	r6, [r0, #0]
 8004b18:	9805      	ldr	r0, [sp, #20]
 8004b1a:	47b0      	blx	r6
 8004b1c:	2800      	cmp	r0, #0
 8004b1e:	bf18      	it	ne
 8004b20:	f88b 0000 	strbne.w	r0, [fp]
 8004b24:	f241 2001 	movw	r0, #4609	; 0x1201
 8004b28:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004b2c:	7800      	ldrb	r0, [r0, #0]
 8004b2e:	2800      	cmp	r0, #0
 8004b30:	f000 8237 	beq.w	8004fa2 <pjpeg_decode_init+0x1586>
 8004b34:	f241 2101 	movw	r1, #4609	; 0x1201
 8004b38:	3801      	subs	r0, #1
 8004b3a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004b3e:	7008      	strb	r0, [r1, #0]
 8004b40:	f241 3003 	movw	r0, #4867	; 0x1303
 8004b44:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004b48:	4602      	mov	r2, r0
 8004b4a:	7810      	ldrb	r0, [r2, #0]
 8004b4c:	1c41      	adds	r1, r0, #1
 8004b4e:	7011      	strb	r1, [r2, #0]
 8004b50:	f241 2103 	movw	r1, #4611	; 0x1203
 8004b54:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004b58:	5c08      	ldrb	r0, [r1, r0]
 8004b5a:	f8b9 1000 	ldrh.w	r1, [r9]
 8004b5e:	b2c0      	uxtb	r0, r0
 8004b60:	4308      	orrs	r0, r1
 8004b62:	f241 2100 	movw	r1, #4608	; 0x1200
 8004b66:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004b6a:	460b      	mov	r3, r1
 8004b6c:	7819      	ldrb	r1, [r3, #0]
 8004b6e:	f1c1 0204 	rsb	r2, r1, #4
 8004b72:	fa00 f402 	lsl.w	r4, r0, r2
 8004b76:	1d08      	adds	r0, r1, #4
 8004b78:	f8a9 4000 	strh.w	r4, [r9]
 8004b7c:	7018      	strb	r0, [r3, #0]
 8004b7e:	e008      	b.n	8004b92 <pjpeg_decode_init+0x1176>
 8004b80:	f241 2100 	movw	r1, #4608	; 0x1200
 8004b84:	012c      	lsls	r4, r5, #4
 8004b86:	30fc      	adds	r0, #252	; 0xfc
 8004b88:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004b8c:	f8a9 4000 	strh.w	r4, [r9]
 8004b90:	7008      	strb	r0, [r1, #0]
 8004b92:	f241 4222 	movw	r2, #5154	; 0x1422
 8004b96:	b2c0      	uxtb	r0, r0
 8004b98:	f3c5 3103 	ubfx	r1, r5, #12, #4
 8004b9c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004ba0:	2803      	cmp	r0, #3
 8004ba2:	7011      	strb	r1, [r2, #0]
 8004ba4:	d852      	bhi.n	8004c4c <pjpeg_decode_init+0x1230>
 8004ba6:	b2a1      	uxth	r1, r4
 8004ba8:	fa01 f000 	lsl.w	r0, r1, r0
 8004bac:	f8a9 0000 	strh.w	r0, [r9]
 8004bb0:	f241 2001 	movw	r0, #4609	; 0x1201
 8004bb4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004bb8:	7800      	ldrb	r0, [r0, #0]
 8004bba:	bb20      	cbnz	r0, 8004c06 <pjpeg_decode_init+0x11ea>
 8004bbc:	f241 3103 	movw	r1, #4867	; 0x1303
 8004bc0:	f241 2201 	movw	r2, #4609	; 0x1201
 8004bc4:	2004      	movs	r0, #4
 8004bc6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004bca:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004bce:	7008      	strb	r0, [r1, #0]
 8004bd0:	2000      	movs	r0, #0
 8004bd2:	21fc      	movs	r1, #252	; 0xfc
 8004bd4:	7010      	strb	r0, [r2, #0]
 8004bd6:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8004bda:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004bde:	6803      	ldr	r3, [r0, #0]
 8004be0:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8004be4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004be8:	6806      	ldr	r6, [r0, #0]
 8004bea:	9805      	ldr	r0, [sp, #20]
 8004bec:	47b0      	blx	r6
 8004bee:	2800      	cmp	r0, #0
 8004bf0:	bf18      	it	ne
 8004bf2:	f88b 0000 	strbne.w	r0, [fp]
 8004bf6:	f241 2001 	movw	r0, #4609	; 0x1201
 8004bfa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004bfe:	7800      	ldrb	r0, [r0, #0]
 8004c00:	2800      	cmp	r0, #0
 8004c02:	f000 81dd 	beq.w	8004fc0 <pjpeg_decode_init+0x15a4>
 8004c06:	f241 2101 	movw	r1, #4609	; 0x1201
 8004c0a:	3801      	subs	r0, #1
 8004c0c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004c10:	7008      	strb	r0, [r1, #0]
 8004c12:	f241 3003 	movw	r0, #4867	; 0x1303
 8004c16:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004c1a:	4602      	mov	r2, r0
 8004c1c:	7810      	ldrb	r0, [r2, #0]
 8004c1e:	1c41      	adds	r1, r0, #1
 8004c20:	7011      	strb	r1, [r2, #0]
 8004c22:	f241 2103 	movw	r1, #4611	; 0x1203
 8004c26:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004c2a:	5c08      	ldrb	r0, [r1, r0]
 8004c2c:	f8b9 1000 	ldrh.w	r1, [r9]
 8004c30:	b2c0      	uxtb	r0, r0
 8004c32:	4308      	orrs	r0, r1
 8004c34:	f241 2100 	movw	r1, #4608	; 0x1200
 8004c38:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004c3c:	460b      	mov	r3, r1
 8004c3e:	7819      	ldrb	r1, [r3, #0]
 8004c40:	f1c1 0204 	rsb	r2, r1, #4
 8004c44:	3104      	adds	r1, #4
 8004c46:	4090      	lsls	r0, r2
 8004c48:	7019      	strb	r1, [r3, #0]
 8004c4a:	e00c      	b.n	8004c66 <pjpeg_decode_init+0x124a>
 8004c4c:	f100 01fc 	add.w	r1, r0, #252	; 0xfc
 8004c50:	f241 2000 	movw	r0, #4608	; 0x1200
 8004c54:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004c58:	7001      	strb	r1, [r0, #0]
 8004c5a:	f64f 70f0 	movw	r0, #65520	; 0xfff0
 8004c5e:	f2c0 000f 	movt	r0, #15
 8004c62:	ea00 1004 	and.w	r0, r0, r4, lsl #4
 8004c66:	f8a9 0000 	strh.w	r0, [r9]
 8004c6a:	f241 4321 	movw	r3, #5153	; 0x1421
 8004c6e:	f3c4 3203 	ubfx	r2, r4, #12, #4
 8004c72:	f64f 75ff 	movw	r5, #65535	; 0xffff
 8004c76:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004c7a:	701a      	strb	r2, [r3, #0]
 8004c7c:	f64f 72fd 	movw	r2, #65533	; 0xfffd
 8004c80:	eb0a 0402 	add.w	r4, sl, r2
 8004c84:	422c      	tst	r4, r5
 8004c86:	d071      	beq.n	8004d6c <pjpeg_decode_init+0x1350>
 8004c88:	f04f 0804 	mov.w	r8, #4
 8004c8c:	f04f 0a00 	mov.w	sl, #0
 8004c90:	e00e      	b.n	8004cb0 <pjpeg_decode_init+0x1294>
 8004c92:	f241 2002 	movw	r0, #4610	; 0x1202
 8004c96:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004c9a:	4602      	mov	r2, r0
 8004c9c:	7810      	ldrb	r0, [r2, #0]
 8004c9e:	43c1      	mvns	r1, r0
 8004ca0:	28ff      	cmp	r0, #255	; 0xff
 8004ca2:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8004ca6:	7011      	strb	r1, [r2, #0]
 8004ca8:	bf18      	it	ne
 8004caa:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8004cae:	e043      	b.n	8004d38 <pjpeg_decode_init+0x131c>
 8004cb0:	b2c9      	uxtb	r1, r1
 8004cb2:	2907      	cmp	r1, #7
 8004cb4:	d84d      	bhi.n	8004d52 <pjpeg_decode_init+0x1336>
 8004cb6:	b280      	uxth	r0, r0
 8004cb8:	4088      	lsls	r0, r1
 8004cba:	f8a9 0000 	strh.w	r0, [r9]
 8004cbe:	f241 2001 	movw	r0, #4609	; 0x1201
 8004cc2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004cc6:	7800      	ldrb	r0, [r0, #0]
 8004cc8:	bb18      	cbnz	r0, 8004d12 <pjpeg_decode_init+0x12f6>
 8004cca:	f241 3003 	movw	r0, #4867	; 0x1303
 8004cce:	f241 2201 	movw	r2, #4609	; 0x1201
 8004cd2:	21fc      	movs	r1, #252	; 0xfc
 8004cd4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004cd8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004cdc:	f880 8000 	strb.w	r8, [r0]
 8004ce0:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8004ce4:	f882 a000 	strb.w	sl, [r2]
 8004ce8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004cec:	6803      	ldr	r3, [r0, #0]
 8004cee:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8004cf2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004cf6:	6806      	ldr	r6, [r0, #0]
 8004cf8:	9805      	ldr	r0, [sp, #20]
 8004cfa:	47b0      	blx	r6
 8004cfc:	2800      	cmp	r0, #0
 8004cfe:	bf18      	it	ne
 8004d00:	f88b 0000 	strbne.w	r0, [fp]
 8004d04:	f241 2001 	movw	r0, #4609	; 0x1201
 8004d08:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004d0c:	7800      	ldrb	r0, [r0, #0]
 8004d0e:	2800      	cmp	r0, #0
 8004d10:	d0bf      	beq.n	8004c92 <pjpeg_decode_init+0x1276>
 8004d12:	f241 2101 	movw	r1, #4609	; 0x1201
 8004d16:	3801      	subs	r0, #1
 8004d18:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004d1c:	7008      	strb	r0, [r1, #0]
 8004d1e:	f241 3003 	movw	r0, #4867	; 0x1303
 8004d22:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004d26:	4602      	mov	r2, r0
 8004d28:	7810      	ldrb	r0, [r2, #0]
 8004d2a:	1c41      	adds	r1, r0, #1
 8004d2c:	7011      	strb	r1, [r2, #0]
 8004d2e:	f241 2103 	movw	r1, #4611	; 0x1203
 8004d32:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004d36:	5c08      	ldrb	r0, [r1, r0]
 8004d38:	f8b9 1000 	ldrh.w	r1, [r9]
 8004d3c:	b2c0      	uxtb	r0, r0
 8004d3e:	4308      	orrs	r0, r1
 8004d40:	f241 2100 	movw	r1, #4608	; 0x1200
 8004d44:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004d48:	7809      	ldrb	r1, [r1, #0]
 8004d4a:	f1c1 0208 	rsb	r2, r1, #8
 8004d4e:	4090      	lsls	r0, r2
 8004d50:	e007      	b.n	8004d62 <pjpeg_decode_init+0x1346>
 8004d52:	f241 2200 	movw	r2, #4608	; 0x1200
 8004d56:	b280      	uxth	r0, r0
 8004d58:	31f8      	adds	r1, #248	; 0xf8
 8004d5a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004d5e:	0200      	lsls	r0, r0, #8
 8004d60:	7011      	strb	r1, [r2, #0]
 8004d62:	3c01      	subs	r4, #1
 8004d64:	f8a9 0000 	strh.w	r0, [r9]
 8004d68:	422c      	tst	r4, r5
 8004d6a:	d1a1      	bne.n	8004cb0 <pjpeg_decode_init+0x1294>
 8004d6c:	f241 3206 	movw	r2, #4870	; 0x1306
 8004d70:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004d74:	f892 c000 	ldrb.w	ip, [r2]
 8004d78:	f1bc 0f00 	cmp.w	ip, #0
 8004d7c:	d03d      	beq.n	8004dfa <pjpeg_decode_init+0x13de>
 8004d7e:	f241 3207 	movw	r2, #4871	; 0x1307
 8004d82:	2600      	movs	r6, #0
 8004d84:	2501      	movs	r5, #1
 8004d86:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004d8a:	7813      	ldrb	r3, [r2, #0]
 8004d8c:	f241 3212 	movw	r2, #4882	; 0x1312
 8004d90:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004d94:	5d94      	ldrb	r4, [r2, r6]
 8004d96:	f640 5211 	movw	r2, #3345	; 0xd11
 8004d9a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004d9e:	5d12      	ldrb	r2, [r2, r4]
 8004da0:	fa05 f202 	lsl.w	r2, r5, r2
 8004da4:	421a      	tst	r2, r3
 8004da6:	d059      	beq.n	8004e5c <pjpeg_decode_init+0x1440>
 8004da8:	f640 725a 	movw	r2, #3930	; 0xf5a
 8004dac:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004db0:	5d12      	ldrb	r2, [r2, r4]
 8004db2:	3202      	adds	r2, #2
 8004db4:	b2d2      	uxtb	r2, r2
 8004db6:	fa05 f202 	lsl.w	r2, r5, r2
 8004dba:	421a      	tst	r2, r3
 8004dbc:	d04e      	beq.n	8004e5c <pjpeg_decode_init+0x1440>
 8004dbe:	3601      	adds	r6, #1
 8004dc0:	4566      	cmp	r6, ip
 8004dc2:	d3e3      	bcc.n	8004d8c <pjpeg_decode_init+0x1370>
 8004dc4:	f241 3208 	movw	r2, #4872	; 0x1308
 8004dc8:	f640 550e 	movw	r5, #3342	; 0xd0e
 8004dcc:	2600      	movs	r6, #0
 8004dce:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004dd2:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8004dd6:	7813      	ldrb	r3, [r2, #0]
 8004dd8:	f241 3212 	movw	r2, #4882	; 0x1312
 8004ddc:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004de0:	5d92      	ldrb	r2, [r2, r6]
 8004de2:	5caa      	ldrb	r2, [r5, r2]
 8004de4:	2a00      	cmp	r2, #0
 8004de6:	f04f 0201 	mov.w	r2, #1
 8004dea:	bf18      	it	ne
 8004dec:	2202      	movne	r2, #2
 8004dee:	421a      	tst	r2, r3
 8004df0:	f000 80c3 	beq.w	8004f7a <pjpeg_decode_init+0x155e>
 8004df4:	3601      	adds	r6, #1
 8004df6:	4566      	cmp	r6, ip
 8004df8:	d3ee      	bcc.n	8004dd8 <pjpeg_decode_init+0x13bc>
 8004dfa:	f640 63d4 	movw	r3, #3796	; 0xed4
 8004dfe:	2200      	movs	r2, #0
 8004e00:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004e04:	801a      	strh	r2, [r3, #0]
 8004e06:	805a      	strh	r2, [r3, #2]
 8004e08:	809a      	strh	r2, [r3, #4]
 8004e0a:	f640 5302 	movw	r3, #3330	; 0xd02
 8004e0e:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004e12:	881b      	ldrh	r3, [r3, #0]
 8004e14:	b14b      	cbz	r3, 8004e2a <pjpeg_decode_init+0x140e>
 8004e16:	f640 5604 	movw	r6, #3332	; 0xd04
 8004e1a:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8004e1e:	8033      	strh	r3, [r6, #0]
 8004e20:	f241 13fe 	movw	r3, #4606	; 0x11fe
 8004e24:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004e28:	801a      	strh	r2, [r3, #0]
 8004e2a:	0609      	lsls	r1, r1, #24
 8004e2c:	d02b      	beq.n	8004e86 <pjpeg_decode_init+0x146a>
 8004e2e:	f241 3103 	movw	r1, #4867	; 0x1303
 8004e32:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004e36:	460b      	mov	r3, r1
 8004e38:	7819      	ldrb	r1, [r3, #0]
 8004e3a:	1e4a      	subs	r2, r1, #1
 8004e3c:	701a      	strb	r2, [r3, #0]
 8004e3e:	f241 2303 	movw	r3, #4611	; 0x1203
 8004e42:	b2d1      	uxtb	r1, r2
 8004e44:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004e48:	5458      	strb	r0, [r3, r1]
 8004e4a:	f241 2101 	movw	r1, #4609	; 0x1201
 8004e4e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004e52:	460b      	mov	r3, r1
 8004e54:	7819      	ldrb	r1, [r3, #0]
 8004e56:	3101      	adds	r1, #1
 8004e58:	7019      	strb	r1, [r3, #0]
 8004e5a:	e01e      	b.n	8004e9a <pjpeg_decode_init+0x147e>
 8004e5c:	f89b 0000 	ldrb.w	r0, [fp]
 8004e60:	2418      	movs	r4, #24
 8004e62:	f7ff b828 	b.w	8003eb6 <pjpeg_decode_init+0x49a>
 8004e66:	f241 2002 	movw	r0, #4610	; 0x1202
 8004e6a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004e6e:	4602      	mov	r2, r0
 8004e70:	7811      	ldrb	r1, [r2, #0]
 8004e72:	43c8      	mvns	r0, r1
 8004e74:	29ff      	cmp	r1, #255	; 0xff
 8004e76:	7010      	strb	r0, [r2, #0]
 8004e78:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8004e7c:	bf18      	it	ne
 8004e7e:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8004e82:	f7ff bbe7 	b.w	8004654 <pjpeg_decode_init+0xc38>
 8004e86:	f241 2101 	movw	r1, #4609	; 0x1201
 8004e8a:	f241 3203 	movw	r2, #4867	; 0x1303
 8004e8e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004e92:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004e96:	7809      	ldrb	r1, [r1, #0]
 8004e98:	7812      	ldrb	r2, [r2, #0]
 8004e9a:	f241 3303 	movw	r3, #4867	; 0x1303
 8004e9e:	f241 2603 	movw	r6, #4611	; 0x1203
 8004ea2:	3a01      	subs	r2, #1
 8004ea4:	3101      	adds	r1, #1
 8004ea6:	2400      	movs	r4, #0
 8004ea8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8004eac:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8004eb0:	701a      	strb	r2, [r3, #0]
 8004eb2:	0a03      	lsrs	r3, r0, #8
 8004eb4:	b2d2      	uxtb	r2, r2
 8004eb6:	0200      	lsls	r0, r0, #8
 8004eb8:	54b3      	strb	r3, [r6, r2]
 8004eba:	f241 2201 	movw	r2, #4609	; 0x1201
 8004ebe:	f8a9 0000 	strh.w	r0, [r9]
 8004ec2:	2001      	movs	r0, #1
 8004ec4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004ec8:	7011      	strb	r1, [r2, #0]
 8004eca:	f241 2100 	movw	r1, #4608	; 0x1200
 8004ece:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004ed2:	460d      	mov	r5, r1
 8004ed4:	702c      	strb	r4, [r5, #0]
 8004ed6:	f000 f882 	bl	8004fde <getOctet>
 8004eda:	f8b9 1000 	ldrh.w	r1, [r9]
 8004ede:	4308      	orrs	r0, r1
 8004ee0:	7829      	ldrb	r1, [r5, #0]
 8004ee2:	f1c1 0108 	rsb	r1, r1, #8
 8004ee6:	4088      	lsls	r0, r1
 8004ee8:	f8a9 0000 	strh.w	r0, [r9]
 8004eec:	f89b 0000 	ldrb.w	r0, [fp]
 8004ef0:	2800      	cmp	r0, #0
 8004ef2:	f47e afe0 	bne.w	8003eb6 <pjpeg_decode_init+0x49a>
 8004ef6:	f640 10f2 	movw	r0, #2546	; 0x9f2
 8004efa:	9b04      	ldr	r3, [sp, #16]
 8004efc:	f640 3102 	movw	r1, #2818	; 0xb02
 8004f00:	f640 4202 	movw	r2, #3074	; 0xc02
 8004f04:	2400      	movs	r4, #0
 8004f06:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004f0a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8004f0e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004f12:	8800      	ldrh	r0, [r0, #0]
 8004f14:	6018      	str	r0, [r3, #0]
 8004f16:	f640 10f4 	movw	r0, #2548	; 0x9f4
 8004f1a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004f1e:	8800      	ldrh	r0, [r0, #0]
 8004f20:	6058      	str	r0, [r3, #4]
 8004f22:	f640 10f6 	movw	r0, #2550	; 0x9f6
 8004f26:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004f2a:	7800      	ldrb	r0, [r0, #0]
 8004f2c:	6098      	str	r0, [r3, #8]
 8004f2e:	f640 10f8 	movw	r0, #2552	; 0x9f8
 8004f32:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004f36:	6800      	ldr	r0, [r0, #0]
 8004f38:	6158      	str	r0, [r3, #20]
 8004f3a:	f640 10fc 	movw	r0, #2556	; 0x9fc
 8004f3e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004f42:	8800      	ldrh	r0, [r0, #0]
 8004f44:	60d8      	str	r0, [r3, #12]
 8004f46:	f640 10fe 	movw	r0, #2558	; 0x9fe
 8004f4a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004f4e:	8800      	ldrh	r0, [r0, #0]
 8004f50:	6118      	str	r0, [r3, #16]
 8004f52:	f640 2000 	movw	r0, #2560	; 0xa00
 8004f56:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004f5a:	7800      	ldrb	r0, [r0, #0]
 8004f5c:	6198      	str	r0, [r3, #24]
 8004f5e:	f640 2001 	movw	r0, #2561	; 0xa01
 8004f62:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004f66:	7800      	ldrb	r0, [r0, #0]
 8004f68:	61d8      	str	r0, [r3, #28]
 8004f6a:	f640 2002 	movw	r0, #2562	; 0xa02
 8004f6e:	3320      	adds	r3, #32
 8004f70:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004f74:	c307      	stmia	r3!, {r0, r1, r2}
 8004f76:	f7fe bfa1 	b.w	8003ebc <pjpeg_decode_init+0x4a0>
 8004f7a:	f89b 0000 	ldrb.w	r0, [fp]
 8004f7e:	2417      	movs	r4, #23
 8004f80:	f7fe bf99 	b.w	8003eb6 <pjpeg_decode_init+0x49a>
 8004f84:	f241 2002 	movw	r0, #4610	; 0x1202
 8004f88:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004f8c:	4602      	mov	r2, r0
 8004f8e:	7811      	ldrb	r1, [r2, #0]
 8004f90:	43c8      	mvns	r0, r1
 8004f92:	29ff      	cmp	r1, #255	; 0xff
 8004f94:	7010      	strb	r0, [r2, #0]
 8004f96:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8004f9a:	bf18      	it	ne
 8004f9c:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8004fa0:	e54e      	b.n	8004a40 <pjpeg_decode_init+0x1024>
 8004fa2:	f241 2002 	movw	r0, #4610	; 0x1202
 8004fa6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004faa:	4602      	mov	r2, r0
 8004fac:	7811      	ldrb	r1, [r2, #0]
 8004fae:	43c8      	mvns	r0, r1
 8004fb0:	29ff      	cmp	r1, #255	; 0xff
 8004fb2:	7010      	strb	r0, [r2, #0]
 8004fb4:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8004fb8:	bf18      	it	ne
 8004fba:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8004fbe:	e5cc      	b.n	8004b5a <pjpeg_decode_init+0x113e>
 8004fc0:	f241 2002 	movw	r0, #4610	; 0x1202
 8004fc4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004fc8:	4602      	mov	r2, r0
 8004fca:	7811      	ldrb	r1, [r2, #0]
 8004fcc:	43c8      	mvns	r0, r1
 8004fce:	29ff      	cmp	r1, #255	; 0xff
 8004fd0:	7010      	strb	r0, [r2, #0]
 8004fd2:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8004fd6:	bf18      	it	ne
 8004fd8:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8004fdc:	e626      	b.n	8004c2c <pjpeg_decode_init+0x1210>

08004fde <getOctet>:
 8004fde:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004fe0:	af03      	add	r7, sp, #12
 8004fe2:	f84d 8d04 	str.w	r8, [sp, #-4]!
 8004fe6:	f241 2401 	movw	r4, #4609	; 0x1201
 8004fea:	4605      	mov	r5, r0
 8004fec:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8004ff0:	7820      	ldrb	r0, [r4, #0]
 8004ff2:	bb18      	cbnz	r0, 800503c <getOctet+0x5e>
 8004ff4:	f241 3003 	movw	r0, #4867	; 0x1303
 8004ff8:	2104      	movs	r1, #4
 8004ffa:	4622      	mov	r2, r4
 8004ffc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005000:	7001      	strb	r1, [r0, #0]
 8005002:	2000      	movs	r0, #0
 8005004:	21fc      	movs	r1, #252	; 0xfc
 8005006:	7020      	strb	r0, [r4, #0]
 8005008:	f640 10ec 	movw	r0, #2540	; 0x9ec
 800500c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005010:	6803      	ldr	r3, [r0, #0]
 8005012:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8005016:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800501a:	6806      	ldr	r6, [r0, #0]
 800501c:	f241 2003 	movw	r0, #4611	; 0x1203
 8005020:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005024:	3004      	adds	r0, #4
 8005026:	47b0      	blx	r6
 8005028:	2800      	cmp	r0, #0
 800502a:	bf1e      	ittt	ne
 800502c:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 8005030:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 8005034:	7008      	strbne	r0, [r1, #0]
 8005036:	7820      	ldrb	r0, [r4, #0]
 8005038:	2800      	cmp	r0, #0
 800503a:	d048      	beq.n	80050ce <getOctet+0xf0>
 800503c:	f241 3103 	movw	r1, #4867	; 0x1303
 8005040:	3801      	subs	r0, #1
 8005042:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005046:	7020      	strb	r0, [r4, #0]
 8005048:	780a      	ldrb	r2, [r1, #0]
 800504a:	1c53      	adds	r3, r2, #1
 800504c:	700b      	strb	r3, [r1, #0]
 800504e:	f241 2103 	movw	r1, #4611	; 0x1203
 8005052:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005056:	5c8e      	ldrb	r6, [r1, r2]
 8005058:	2d00      	cmp	r5, #0
 800505a:	d06c      	beq.n	8005136 <getOctet+0x158>
 800505c:	b2f1      	uxtb	r1, r6
 800505e:	29ff      	cmp	r1, #255	; 0xff
 8005060:	d169      	bne.n	8005136 <getOctet+0x158>
 8005062:	0601      	lsls	r1, r0, #24
 8005064:	d123      	bne.n	80050ae <getOctet+0xd0>
 8005066:	f241 3803 	movw	r8, #4867	; 0x1303
 800506a:	2004      	movs	r0, #4
 800506c:	21fc      	movs	r1, #252	; 0xfc
 800506e:	4622      	mov	r2, r4
 8005070:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8005074:	f888 0000 	strb.w	r0, [r8]
 8005078:	2000      	movs	r0, #0
 800507a:	7020      	strb	r0, [r4, #0]
 800507c:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8005080:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005084:	6803      	ldr	r3, [r0, #0]
 8005086:	f640 10e8 	movw	r0, #2536	; 0x9e8
 800508a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800508e:	6805      	ldr	r5, [r0, #0]
 8005090:	f241 2003 	movw	r0, #4611	; 0x1203
 8005094:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005098:	3004      	adds	r0, #4
 800509a:	47a8      	blx	r5
 800509c:	2800      	cmp	r0, #0
 800509e:	bf1e      	ittt	ne
 80050a0:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 80050a4:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 80050a8:	7008      	strbne	r0, [r1, #0]
 80050aa:	7820      	ldrb	r0, [r4, #0]
 80050ac:	b300      	cbz	r0, 80050f0 <getOctet+0x112>
 80050ae:	f241 3203 	movw	r2, #4867	; 0x1303
 80050b2:	3801      	subs	r0, #1
 80050b4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80050b8:	7020      	strb	r0, [r4, #0]
 80050ba:	7813      	ldrb	r3, [r2, #0]
 80050bc:	1c59      	adds	r1, r3, #1
 80050be:	7011      	strb	r1, [r2, #0]
 80050c0:	f241 2203 	movw	r2, #4611	; 0x1203
 80050c4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80050c8:	5cd2      	ldrb	r2, [r2, r3]
 80050ca:	bb12      	cbnz	r2, 8005112 <getOctet+0x134>
 80050cc:	e033      	b.n	8005136 <getOctet+0x158>
 80050ce:	f241 2002 	movw	r0, #4610	; 0x1202
 80050d2:	f06f 0626 	mvn.w	r6, #38	; 0x26
 80050d6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80050da:	7801      	ldrb	r1, [r0, #0]
 80050dc:	43ca      	mvns	r2, r1
 80050de:	29ff      	cmp	r1, #255	; 0xff
 80050e0:	7002      	strb	r2, [r0, #0]
 80050e2:	bf18      	it	ne
 80050e4:	f04f 36ff 	movne.w	r6, #4294967295	; 0xffffffff
 80050e8:	2000      	movs	r0, #0
 80050ea:	2d00      	cmp	r5, #0
 80050ec:	d1b6      	bne.n	800505c <getOctet+0x7e>
 80050ee:	e022      	b.n	8005136 <getOctet+0x158>
 80050f0:	f241 2002 	movw	r0, #4610	; 0x1202
 80050f4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80050f8:	7801      	ldrb	r1, [r0, #0]
 80050fa:	43ca      	mvns	r2, r1
 80050fc:	29ff      	cmp	r1, #255	; 0xff
 80050fe:	7002      	strb	r2, [r0, #0]
 8005100:	f06f 0226 	mvn.w	r2, #38	; 0x26
 8005104:	f04f 0000 	mov.w	r0, #0
 8005108:	bf18      	it	ne
 800510a:	f04f 32ff 	movne.w	r2, #4294967295	; 0xffffffff
 800510e:	f898 1000 	ldrb.w	r1, [r8]
 8005112:	1e4b      	subs	r3, r1, #1
 8005114:	f241 2503 	movw	r5, #4611	; 0x1203
 8005118:	3902      	subs	r1, #2
 800511a:	3002      	adds	r0, #2
 800511c:	b2db      	uxtb	r3, r3
 800511e:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8005122:	7020      	strb	r0, [r4, #0]
 8005124:	54ea      	strb	r2, [r5, r3]
 8005126:	f241 3203 	movw	r2, #4867	; 0x1303
 800512a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800512e:	7011      	strb	r1, [r2, #0]
 8005130:	b2c9      	uxtb	r1, r1
 8005132:	22ff      	movs	r2, #255	; 0xff
 8005134:	546a      	strb	r2, [r5, r1]
 8005136:	b2f0      	uxtb	r0, r6
 8005138:	f85d 8b04 	ldr.w	r8, [sp], #4
 800513c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800513e <getBits>:
 800513e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005140:	af03      	add	r7, sp, #12
 8005142:	e92d 0700 	stmdb	sp!, {r8, r9, sl}
 8005146:	f241 3a04 	movw	sl, #4868	; 0x1304
 800514a:	4604      	mov	r4, r0
 800514c:	4688      	mov	r8, r1
 800514e:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8005152:	2c08      	cmp	r4, #8
 8005154:	f8ba 5000 	ldrh.w	r5, [sl]
 8005158:	d91f      	bls.n	800519a <getBits+0x5c>
 800515a:	f241 2600 	movw	r6, #4608	; 0x1200
 800515e:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8005162:	7830      	ldrb	r0, [r6, #0]
 8005164:	fa05 f000 	lsl.w	r0, r5, r0
 8005168:	f8aa 0000 	strh.w	r0, [sl]
 800516c:	4640      	mov	r0, r8
 800516e:	f7ff ff36 	bl	8004fde <getOctet>
 8005172:	f8ba 1000 	ldrh.w	r1, [sl]
 8005176:	f025 03ff 	bic.w	r3, r5, #255	; 0xff
 800517a:	4301      	orrs	r1, r0
 800517c:	7830      	ldrb	r0, [r6, #0]
 800517e:	f1c0 0208 	rsb	r2, r0, #8
 8005182:	fa01 f202 	lsl.w	r2, r1, r2
 8005186:	f8aa 2000 	strh.w	r2, [sl]
 800518a:	f3c2 2107 	ubfx	r1, r2, #8, #8
 800518e:	4615      	mov	r5, r2
 8005190:	ea41 0903 	orr.w	r9, r1, r3
 8005194:	f104 01f8 	add.w	r1, r4, #248	; 0xf8
 8005198:	e006      	b.n	80051a8 <getBits+0x6a>
 800519a:	f241 2000 	movw	r0, #4608	; 0x1200
 800519e:	4621      	mov	r1, r4
 80051a0:	46a9      	mov	r9, r5
 80051a2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80051a6:	7800      	ldrb	r0, [r0, #0]
 80051a8:	b2ce      	uxtb	r6, r1
 80051aa:	42b0      	cmp	r0, r6
 80051ac:	d218      	bcs.n	80051e0 <getBits+0xa2>
 80051ae:	b2a9      	uxth	r1, r5
 80051b0:	fa01 f000 	lsl.w	r0, r1, r0
 80051b4:	f8aa 0000 	strh.w	r0, [sl]
 80051b8:	4640      	mov	r0, r8
 80051ba:	f7ff ff10 	bl	8004fde <getOctet>
 80051be:	f241 2100 	movw	r1, #4608	; 0x1200
 80051c2:	f8ba 5000 	ldrh.w	r5, [sl]
 80051c6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80051ca:	780a      	ldrb	r2, [r1, #0]
 80051cc:	4328      	orrs	r0, r5
 80051ce:	1ab3      	subs	r3, r6, r2
 80051d0:	4098      	lsls	r0, r3
 80051d2:	f8aa 0000 	strh.w	r0, [sl]
 80051d6:	f1c6 0008 	rsb	r0, r6, #8
 80051da:	4410      	add	r0, r2
 80051dc:	7008      	strb	r0, [r1, #0]
 80051de:	e009      	b.n	80051f4 <getBits+0xb6>
 80051e0:	f241 2100 	movw	r1, #4608	; 0x1200
 80051e4:	1b80      	subs	r0, r0, r6
 80051e6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80051ea:	7008      	strb	r0, [r1, #0]
 80051ec:	b2a8      	uxth	r0, r5
 80051ee:	40b0      	lsls	r0, r6
 80051f0:	f8aa 0000 	strh.w	r0, [sl]
 80051f4:	f1c4 0010 	rsb	r0, r4, #16
 80051f8:	fa29 f000 	lsr.w	r0, r9, r0
 80051fc:	b280      	uxth	r0, r0
 80051fe:	e8bd 0700 	ldmia.w	sp!, {r8, r9, sl}
 8005202:	bdf0      	pop	{r4, r5, r6, r7, pc}

08005204 <upsampleCbV>:
 8005204:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005206:	af03      	add	r7, sp, #12
 8005208:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 800520c:	b081      	sub	sp, #4
 800520e:	f640 4202 	movw	r2, #3074	; 0xc02
 8005212:	f64f 7a1d 	movw	sl, #65309	; 0xff1d
 8005216:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800521a:	eb02 0b01 	add.w	fp, r2, r1
 800521e:	f640 3202 	movw	r2, #2818	; 0xb02
 8005222:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005226:	eb02 0901 	add.w	r9, r2, r1
 800522a:	f640 61da 	movw	r1, #3802	; 0xeda
 800522e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005232:	eb01 0840 	add.w	r8, r1, r0, lsl #1
 8005236:	2100      	movs	r1, #0
 8005238:	2600      	movs	r6, #0
 800523a:	2300      	movs	r3, #0
 800523c:	9100      	str	r1, [sp, #0]
 800523e:	f818 5016 	ldrb.w	r5, [r8, r6, lsl #1]
 8005242:	2158      	movs	r1, #88	; 0x58
 8005244:	f819 0006 	ldrb.w	r0, [r9, r6]
 8005248:	f64f 72d4 	movw	r2, #65492	; 0xffd4
 800524c:	eb0b 0406 	add.w	r4, fp, r6
 8005250:	fb15 f101 	smulbb	r1, r5, r1
 8005254:	eb02 2111 	add.w	r1, r2, r1, lsr #8
 8005258:	eb09 0206 	add.w	r2, r9, r6
 800525c:	fa1f fc81 	uxth.w	ip, r1
 8005260:	eba0 0e0c 	sub.w	lr, r0, ip
 8005264:	f40e 407f 	and.w	r0, lr, #65280	; 0xff00
 8005268:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 800526c:	d30b      	bcc.n	8005286 <upsampleCbV+0x82>
 800526e:	ea4f 400e 	mov.w	r0, lr, lsl #16
 8005272:	2800      	cmp	r0, #0
 8005274:	db05      	blt.n	8005282 <upsampleCbV+0x7e>
 8005276:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 800527a:	bfc8      	it	gt
 800527c:	f04f 0eff 	movgt.w	lr, #255	; 0xff
 8005280:	e001      	b.n	8005286 <upsampleCbV+0x82>
 8005282:	f04f 0e00 	mov.w	lr, #0
 8005286:	f882 e000 	strb.w	lr, [r2]
 800528a:	7a10      	ldrb	r0, [r2, #8]
 800528c:	eba0 000c 	sub.w	r0, r0, ip
 8005290:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 8005294:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 8005298:	d308      	bcc.n	80052ac <upsampleCbV+0xa8>
 800529a:	0401      	lsls	r1, r0, #16
 800529c:	2900      	cmp	r1, #0
 800529e:	db04      	blt.n	80052aa <upsampleCbV+0xa6>
 80052a0:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80052a4:	bfc8      	it	gt
 80052a6:	20ff      	movgt	r0, #255	; 0xff
 80052a8:	e000      	b.n	80052ac <upsampleCbV+0xa8>
 80052aa:	2000      	movs	r0, #0
 80052ac:	7210      	strb	r0, [r2, #8]
 80052ae:	20c6      	movs	r0, #198	; 0xc6
 80052b0:	7821      	ldrb	r1, [r4, #0]
 80052b2:	fb15 f000 	smulbb	r0, r5, r0
 80052b6:	eb05 2010 	add.w	r0, r5, r0, lsr #8
 80052ba:	4450      	add	r0, sl
 80052bc:	b282      	uxth	r2, r0
 80052be:	fa11 f080 	uxtah	r0, r1, r0
 80052c2:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80052c6:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80052ca:	d308      	bcc.n	80052de <upsampleCbV+0xda>
 80052cc:	0401      	lsls	r1, r0, #16
 80052ce:	2900      	cmp	r1, #0
 80052d0:	db04      	blt.n	80052dc <upsampleCbV+0xd8>
 80052d2:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80052d6:	bfc8      	it	gt
 80052d8:	20ff      	movgt	r0, #255	; 0xff
 80052da:	e000      	b.n	80052de <upsampleCbV+0xda>
 80052dc:	2000      	movs	r0, #0
 80052de:	7020      	strb	r0, [r4, #0]
 80052e0:	7a20      	ldrb	r0, [r4, #8]
 80052e2:	4410      	add	r0, r2
 80052e4:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80052e8:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80052ec:	d308      	bcc.n	8005300 <upsampleCbV+0xfc>
 80052ee:	0401      	lsls	r1, r0, #16
 80052f0:	2900      	cmp	r1, #0
 80052f2:	db04      	blt.n	80052fe <upsampleCbV+0xfa>
 80052f4:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80052f8:	bfc8      	it	gt
 80052fa:	20ff      	movgt	r0, #255	; 0xff
 80052fc:	e000      	b.n	8005300 <upsampleCbV+0xfc>
 80052fe:	2000      	movs	r0, #0
 8005300:	3301      	adds	r3, #1
 8005302:	7220      	strb	r0, [r4, #8]
 8005304:	3601      	adds	r6, #1
 8005306:	b2d8      	uxtb	r0, r3
 8005308:	2808      	cmp	r0, #8
 800530a:	d398      	bcc.n	800523e <upsampleCbV+0x3a>
 800530c:	9900      	ldr	r1, [sp, #0]
 800530e:	f10b 0b10 	add.w	fp, fp, #16
 8005312:	f109 0910 	add.w	r9, r9, #16
 8005316:	f108 0810 	add.w	r8, r8, #16
 800531a:	3101      	adds	r1, #1
 800531c:	b2c8      	uxtb	r0, r1
 800531e:	2804      	cmp	r0, #4
 8005320:	f4ff af8a 	bcc.w	8005238 <upsampleCbV+0x34>
 8005324:	b001      	add	sp, #4
 8005326:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800532a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800532c <upsampleCrV>:
 800532c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800532e:	af03      	add	r7, sp, #12
 8005330:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8005334:	b081      	sub	sp, #4
 8005336:	f640 3202 	movw	r2, #2818	; 0xb02
 800533a:	f64f 7aa5 	movw	sl, #65445	; 0xffa5
 800533e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005342:	eb02 0b01 	add.w	fp, r2, r1
 8005346:	f640 2202 	movw	r2, #2562	; 0xa02
 800534a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800534e:	eb02 0901 	add.w	r9, r2, r1
 8005352:	f640 61da 	movw	r1, #3802	; 0xeda
 8005356:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800535a:	eb01 0840 	add.w	r8, r1, r0, lsl #1
 800535e:	2100      	movs	r1, #0
 8005360:	2600      	movs	r6, #0
 8005362:	2300      	movs	r3, #0
 8005364:	9100      	str	r1, [sp, #0]
 8005366:	f818 5016 	ldrb.w	r5, [r8, r6, lsl #1]
 800536a:	2067      	movs	r0, #103	; 0x67
 800536c:	f64f 714d 	movw	r1, #65357	; 0xff4d
 8005370:	eb09 0206 	add.w	r2, r9, r6
 8005374:	eb0b 0406 	add.w	r4, fp, r6
 8005378:	fb15 f000 	smulbb	r0, r5, r0
 800537c:	eb05 2010 	add.w	r0, r5, r0, lsr #8
 8005380:	4408      	add	r0, r1
 8005382:	f819 1006 	ldrb.w	r1, [r9, r6]
 8005386:	fa1f fc80 	uxth.w	ip, r0
 800538a:	fa11 fe80 	uxtah	lr, r1, r0
 800538e:	f40e 407f 	and.w	r0, lr, #65280	; 0xff00
 8005392:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8005396:	d30b      	bcc.n	80053b0 <upsampleCrV+0x84>
 8005398:	ea4f 400e 	mov.w	r0, lr, lsl #16
 800539c:	2800      	cmp	r0, #0
 800539e:	db05      	blt.n	80053ac <upsampleCrV+0x80>
 80053a0:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 80053a4:	bfc8      	it	gt
 80053a6:	f04f 0eff 	movgt.w	lr, #255	; 0xff
 80053aa:	e001      	b.n	80053b0 <upsampleCrV+0x84>
 80053ac:	f04f 0e00 	mov.w	lr, #0
 80053b0:	f882 e000 	strb.w	lr, [r2]
 80053b4:	7a10      	ldrb	r0, [r2, #8]
 80053b6:	4460      	add	r0, ip
 80053b8:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80053bc:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80053c0:	d308      	bcc.n	80053d4 <upsampleCrV+0xa8>
 80053c2:	0401      	lsls	r1, r0, #16
 80053c4:	2900      	cmp	r1, #0
 80053c6:	db04      	blt.n	80053d2 <upsampleCrV+0xa6>
 80053c8:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80053cc:	bfc8      	it	gt
 80053ce:	20ff      	movgt	r0, #255	; 0xff
 80053d0:	e000      	b.n	80053d4 <upsampleCrV+0xa8>
 80053d2:	2000      	movs	r0, #0
 80053d4:	7210      	strb	r0, [r2, #8]
 80053d6:	20b7      	movs	r0, #183	; 0xb7
 80053d8:	fb15 f000 	smulbb	r0, r5, r0
 80053dc:	eb0a 2010 	add.w	r0, sl, r0, lsr #8
 80053e0:	b282      	uxth	r2, r0
 80053e2:	7820      	ldrb	r0, [r4, #0]
 80053e4:	1a80      	subs	r0, r0, r2
 80053e6:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80053ea:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80053ee:	d308      	bcc.n	8005402 <upsampleCrV+0xd6>
 80053f0:	0401      	lsls	r1, r0, #16
 80053f2:	2900      	cmp	r1, #0
 80053f4:	db04      	blt.n	8005400 <upsampleCrV+0xd4>
 80053f6:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80053fa:	bfc8      	it	gt
 80053fc:	20ff      	movgt	r0, #255	; 0xff
 80053fe:	e000      	b.n	8005402 <upsampleCrV+0xd6>
 8005400:	2000      	movs	r0, #0
 8005402:	7020      	strb	r0, [r4, #0]
 8005404:	7a20      	ldrb	r0, [r4, #8]
 8005406:	1a80      	subs	r0, r0, r2
 8005408:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 800540c:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 8005410:	d308      	bcc.n	8005424 <upsampleCrV+0xf8>
 8005412:	0401      	lsls	r1, r0, #16
 8005414:	2900      	cmp	r1, #0
 8005416:	db04      	blt.n	8005422 <upsampleCrV+0xf6>
 8005418:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 800541c:	bfc8      	it	gt
 800541e:	20ff      	movgt	r0, #255	; 0xff
 8005420:	e000      	b.n	8005424 <upsampleCrV+0xf8>
 8005422:	2000      	movs	r0, #0
 8005424:	3301      	adds	r3, #1
 8005426:	7220      	strb	r0, [r4, #8]
 8005428:	3601      	adds	r6, #1
 800542a:	b2d8      	uxtb	r0, r3
 800542c:	2808      	cmp	r0, #8
 800542e:	d39a      	bcc.n	8005366 <upsampleCrV+0x3a>
 8005430:	9900      	ldr	r1, [sp, #0]
 8005432:	f10b 0b10 	add.w	fp, fp, #16
 8005436:	f109 0910 	add.w	r9, r9, #16
 800543a:	f108 0810 	add.w	r8, r8, #16
 800543e:	3101      	adds	r1, #1
 8005440:	b2c8      	uxtb	r0, r1
 8005442:	2804      	cmp	r0, #4
 8005444:	f4ff af8c 	bcc.w	8005360 <upsampleCrV+0x34>
 8005448:	b001      	add	sp, #4
 800544a:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800544e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08005450 <upsampleCbH>:
 8005450:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005452:	af03      	add	r7, sp, #12
 8005454:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8005458:	b082      	sub	sp, #8
 800545a:	f640 4202 	movw	r2, #3074	; 0xc02
 800545e:	f64f 7b1d 	movw	fp, #65309	; 0xff1d
 8005462:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005466:	eb02 0901 	add.w	r9, r2, r1
 800546a:	f640 3202 	movw	r2, #2818	; 0xb02
 800546e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005472:	1855      	adds	r5, r2, r1
 8005474:	f640 61da 	movw	r1, #3802	; 0xeda
 8005478:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800547c:	eb01 0a40 	add.w	sl, r1, r0, lsl #1
 8005480:	2100      	movs	r1, #0
 8005482:	9101      	str	r1, [sp, #4]
 8005484:	f105 0008 	add.w	r0, r5, #8
 8005488:	2600      	movs	r6, #0
 800548a:	2100      	movs	r1, #0
 800548c:	9000      	str	r0, [sp, #0]
 800548e:	f81a 4006 	ldrb.w	r4, [sl, r6]
 8005492:	2258      	movs	r2, #88	; 0x58
 8005494:	5da8      	ldrb	r0, [r5, r6]
 8005496:	f64f 73d4 	movw	r3, #65492	; 0xffd4
 800549a:	eb05 0806 	add.w	r8, r5, r6
 800549e:	fb14 f202 	smulbb	r2, r4, r2
 80054a2:	eb03 2212 	add.w	r2, r3, r2, lsr #8
 80054a6:	eb09 0306 	add.w	r3, r9, r6
 80054aa:	fa1f fc82 	uxth.w	ip, r2
 80054ae:	eba0 0e0c 	sub.w	lr, r0, ip
 80054b2:	f40e 407f 	and.w	r0, lr, #65280	; 0xff00
 80054b6:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 80054ba:	d30b      	bcc.n	80054d4 <upsampleCbH+0x84>
 80054bc:	ea4f 420e 	mov.w	r2, lr, lsl #16
 80054c0:	2a00      	cmp	r2, #0
 80054c2:	db05      	blt.n	80054d0 <upsampleCbH+0x80>
 80054c4:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 80054c8:	bfc8      	it	gt
 80054ca:	f04f 0eff 	movgt.w	lr, #255	; 0xff
 80054ce:	e001      	b.n	80054d4 <upsampleCbH+0x84>
 80054d0:	f04f 0e00 	mov.w	lr, #0
 80054d4:	f888 e000 	strb.w	lr, [r8]
 80054d8:	f898 0001 	ldrb.w	r0, [r8, #1]
 80054dc:	eba0 020c 	sub.w	r2, r0, ip
 80054e0:	f402 407f 	and.w	r0, r2, #65280	; 0xff00
 80054e4:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 80054e8:	d308      	bcc.n	80054fc <upsampleCbH+0xac>
 80054ea:	0410      	lsls	r0, r2, #16
 80054ec:	2800      	cmp	r0, #0
 80054ee:	db04      	blt.n	80054fa <upsampleCbH+0xaa>
 80054f0:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 80054f4:	bfc8      	it	gt
 80054f6:	22ff      	movgt	r2, #255	; 0xff
 80054f8:	e000      	b.n	80054fc <upsampleCbH+0xac>
 80054fa:	2200      	movs	r2, #0
 80054fc:	20c6      	movs	r0, #198	; 0xc6
 80054fe:	f888 2001 	strb.w	r2, [r8, #1]
 8005502:	781a      	ldrb	r2, [r3, #0]
 8005504:	fb14 f000 	smulbb	r0, r4, r0
 8005508:	eb04 2010 	add.w	r0, r4, r0, lsr #8
 800550c:	4458      	add	r0, fp
 800550e:	fa12 f280 	uxtah	r2, r2, r0
 8005512:	b284      	uxth	r4, r0
 8005514:	f402 407f 	and.w	r0, r2, #65280	; 0xff00
 8005518:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 800551c:	d308      	bcc.n	8005530 <upsampleCbH+0xe0>
 800551e:	0410      	lsls	r0, r2, #16
 8005520:	2800      	cmp	r0, #0
 8005522:	db04      	blt.n	800552e <upsampleCbH+0xde>
 8005524:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 8005528:	bfc8      	it	gt
 800552a:	22ff      	movgt	r2, #255	; 0xff
 800552c:	e000      	b.n	8005530 <upsampleCbH+0xe0>
 800552e:	2200      	movs	r2, #0
 8005530:	701a      	strb	r2, [r3, #0]
 8005532:	7858      	ldrb	r0, [r3, #1]
 8005534:	1902      	adds	r2, r0, r4
 8005536:	f402 407f 	and.w	r0, r2, #65280	; 0xff00
 800553a:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 800553e:	d308      	bcc.n	8005552 <upsampleCbH+0x102>
 8005540:	0410      	lsls	r0, r2, #16
 8005542:	2800      	cmp	r0, #0
 8005544:	db04      	blt.n	8005550 <upsampleCbH+0x100>
 8005546:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 800554a:	bfc8      	it	gt
 800554c:	22ff      	movgt	r2, #255	; 0xff
 800554e:	e000      	b.n	8005552 <upsampleCbH+0x102>
 8005550:	2200      	movs	r2, #0
 8005552:	3101      	adds	r1, #1
 8005554:	3602      	adds	r6, #2
 8005556:	705a      	strb	r2, [r3, #1]
 8005558:	b2c8      	uxtb	r0, r1
 800555a:	2804      	cmp	r0, #4
 800555c:	d397      	bcc.n	800548e <upsampleCbH+0x3e>
 800555e:	9901      	ldr	r1, [sp, #4]
 8005560:	9d00      	ldr	r5, [sp, #0]
 8005562:	f10a 0a10 	add.w	sl, sl, #16
 8005566:	f109 0908 	add.w	r9, r9, #8
 800556a:	3101      	adds	r1, #1
 800556c:	b2c8      	uxtb	r0, r1
 800556e:	2808      	cmp	r0, #8
 8005570:	f4ff af87 	bcc.w	8005482 <upsampleCbH+0x32>
 8005574:	b002      	add	sp, #8
 8005576:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800557a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800557c <upsampleCrH>:
 800557c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800557e:	af03      	add	r7, sp, #12
 8005580:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8005584:	b082      	sub	sp, #8
 8005586:	f640 3202 	movw	r2, #2818	; 0xb02
 800558a:	f64f 7ba5 	movw	fp, #65445	; 0xffa5
 800558e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005592:	eb02 0901 	add.w	r9, r2, r1
 8005596:	f640 2202 	movw	r2, #2562	; 0xa02
 800559a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800559e:	1855      	adds	r5, r2, r1
 80055a0:	f640 61da 	movw	r1, #3802	; 0xeda
 80055a4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80055a8:	eb01 0a40 	add.w	sl, r1, r0, lsl #1
 80055ac:	2100      	movs	r1, #0
 80055ae:	9101      	str	r1, [sp, #4]
 80055b0:	f105 0008 	add.w	r0, r5, #8
 80055b4:	2600      	movs	r6, #0
 80055b6:	2100      	movs	r1, #0
 80055b8:	9000      	str	r0, [sp, #0]
 80055ba:	f81a 4006 	ldrb.w	r4, [sl, r6]
 80055be:	2067      	movs	r0, #103	; 0x67
 80055c0:	f64f 724d 	movw	r2, #65357	; 0xff4d
 80055c4:	eb05 0806 	add.w	r8, r5, r6
 80055c8:	eb09 0306 	add.w	r3, r9, r6
 80055cc:	fb14 f000 	smulbb	r0, r4, r0
 80055d0:	eb04 2010 	add.w	r0, r4, r0, lsr #8
 80055d4:	4410      	add	r0, r2
 80055d6:	5daa      	ldrb	r2, [r5, r6]
 80055d8:	fa1f fc80 	uxth.w	ip, r0
 80055dc:	fa12 fe80 	uxtah	lr, r2, r0
 80055e0:	f40e 407f 	and.w	r0, lr, #65280	; 0xff00
 80055e4:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 80055e8:	d30b      	bcc.n	8005602 <upsampleCrH+0x86>
 80055ea:	ea4f 420e 	mov.w	r2, lr, lsl #16
 80055ee:	2a00      	cmp	r2, #0
 80055f0:	db05      	blt.n	80055fe <upsampleCrH+0x82>
 80055f2:	f5b2 0f7f 	cmp.w	r2, #16711680	; 0xff0000
 80055f6:	bfc8      	it	gt
 80055f8:	f04f 0eff 	movgt.w	lr, #255	; 0xff
 80055fc:	e001      	b.n	8005602 <upsampleCrH+0x86>
 80055fe:	f04f 0e00 	mov.w	lr, #0
 8005602:	f888 e000 	strb.w	lr, [r8]
 8005606:	f898 0001 	ldrb.w	r0, [r8, #1]
 800560a:	eb00 020c 	add.w	r2, r0, ip
 800560e:	f402 407f 	and.w	r0, r2, #65280	; 0xff00
 8005612:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8005616:	d308      	bcc.n	800562a <upsampleCrH+0xae>
 8005618:	0410      	lsls	r0, r2, #16
 800561a:	2800      	cmp	r0, #0
 800561c:	db04      	blt.n	8005628 <upsampleCrH+0xac>
 800561e:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 8005622:	bfc8      	it	gt
 8005624:	22ff      	movgt	r2, #255	; 0xff
 8005626:	e000      	b.n	800562a <upsampleCrH+0xae>
 8005628:	2200      	movs	r2, #0
 800562a:	20b7      	movs	r0, #183	; 0xb7
 800562c:	f888 2001 	strb.w	r2, [r8, #1]
 8005630:	fb14 f000 	smulbb	r0, r4, r0
 8005634:	eb0b 2010 	add.w	r0, fp, r0, lsr #8
 8005638:	b284      	uxth	r4, r0
 800563a:	7818      	ldrb	r0, [r3, #0]
 800563c:	1b02      	subs	r2, r0, r4
 800563e:	f402 407f 	and.w	r0, r2, #65280	; 0xff00
 8005642:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8005646:	d308      	bcc.n	800565a <upsampleCrH+0xde>
 8005648:	0410      	lsls	r0, r2, #16
 800564a:	2800      	cmp	r0, #0
 800564c:	db04      	blt.n	8005658 <upsampleCrH+0xdc>
 800564e:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 8005652:	bfc8      	it	gt
 8005654:	22ff      	movgt	r2, #255	; 0xff
 8005656:	e000      	b.n	800565a <upsampleCrH+0xde>
 8005658:	2200      	movs	r2, #0
 800565a:	701a      	strb	r2, [r3, #0]
 800565c:	7858      	ldrb	r0, [r3, #1]
 800565e:	1b02      	subs	r2, r0, r4
 8005660:	f402 407f 	and.w	r0, r2, #65280	; 0xff00
 8005664:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 8005668:	d308      	bcc.n	800567c <upsampleCrH+0x100>
 800566a:	0410      	lsls	r0, r2, #16
 800566c:	2800      	cmp	r0, #0
 800566e:	db04      	blt.n	800567a <upsampleCrH+0xfe>
 8005670:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 8005674:	bfc8      	it	gt
 8005676:	22ff      	movgt	r2, #255	; 0xff
 8005678:	e000      	b.n	800567c <upsampleCrH+0x100>
 800567a:	2200      	movs	r2, #0
 800567c:	3101      	adds	r1, #1
 800567e:	3602      	adds	r6, #2
 8005680:	705a      	strb	r2, [r3, #1]
 8005682:	b2c8      	uxtb	r0, r1
 8005684:	2804      	cmp	r0, #4
 8005686:	d398      	bcc.n	80055ba <upsampleCrH+0x3e>
 8005688:	9901      	ldr	r1, [sp, #4]
 800568a:	9d00      	ldr	r5, [sp, #0]
 800568c:	f10a 0a10 	add.w	sl, sl, #16
 8005690:	f109 0908 	add.w	r9, r9, #8
 8005694:	3101      	adds	r1, #1
 8005696:	b2c8      	uxtb	r0, r1
 8005698:	2808      	cmp	r0, #8
 800569a:	f4ff af88 	bcc.w	80055ae <upsampleCrH+0x32>
 800569e:	b002      	add	sp, #8
 80056a0:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80056a4:	bdf0      	pop	{r4, r5, r6, r7, pc}

080056a6 <upsampleCb>:
 80056a6:	b5f0      	push	{r4, r5, r6, r7, lr}
 80056a8:	af03      	add	r7, sp, #12
 80056aa:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80056ae:	b081      	sub	sp, #4
 80056b0:	f640 4202 	movw	r2, #3074	; 0xc02
 80056b4:	f64f 7a1d 	movw	sl, #65309	; 0xff1d
 80056b8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80056bc:	eb02 0b01 	add.w	fp, r2, r1
 80056c0:	f640 3202 	movw	r2, #2818	; 0xb02
 80056c4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80056c8:	eb02 0901 	add.w	r9, r2, r1
 80056cc:	f640 61da 	movw	r1, #3802	; 0xeda
 80056d0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80056d4:	eb01 0840 	add.w	r8, r1, r0, lsl #1
 80056d8:	2100      	movs	r1, #0
 80056da:	2600      	movs	r6, #0
 80056dc:	2300      	movs	r3, #0
 80056de:	9100      	str	r1, [sp, #0]
 80056e0:	f818 5006 	ldrb.w	r5, [r8, r6]
 80056e4:	2158      	movs	r1, #88	; 0x58
 80056e6:	f819 0006 	ldrb.w	r0, [r9, r6]
 80056ea:	f64f 72d4 	movw	r2, #65492	; 0xffd4
 80056ee:	fb15 f101 	smulbb	r1, r5, r1
 80056f2:	eb02 2111 	add.w	r1, r2, r1, lsr #8
 80056f6:	eb09 0206 	add.w	r2, r9, r6
 80056fa:	fa1f fc81 	uxth.w	ip, r1
 80056fe:	eba0 040c 	sub.w	r4, r0, ip
 8005702:	f404 407f 	and.w	r0, r4, #65280	; 0xff00
 8005706:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 800570a:	d308      	bcc.n	800571e <upsampleCb+0x78>
 800570c:	0420      	lsls	r0, r4, #16
 800570e:	2800      	cmp	r0, #0
 8005710:	db04      	blt.n	800571c <upsampleCb+0x76>
 8005712:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 8005716:	bfc8      	it	gt
 8005718:	24ff      	movgt	r4, #255	; 0xff
 800571a:	e000      	b.n	800571e <upsampleCb+0x78>
 800571c:	2400      	movs	r4, #0
 800571e:	7014      	strb	r4, [r2, #0]
 8005720:	7850      	ldrb	r0, [r2, #1]
 8005722:	eba0 0e0c 	sub.w	lr, r0, ip
 8005726:	f40e 407f 	and.w	r0, lr, #65280	; 0xff00
 800572a:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 800572e:	d30b      	bcc.n	8005748 <upsampleCb+0xa2>
 8005730:	ea4f 400e 	mov.w	r0, lr, lsl #16
 8005734:	2800      	cmp	r0, #0
 8005736:	db05      	blt.n	8005744 <upsampleCb+0x9e>
 8005738:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 800573c:	bfc8      	it	gt
 800573e:	f04f 0eff 	movgt.w	lr, #255	; 0xff
 8005742:	e001      	b.n	8005748 <upsampleCb+0xa2>
 8005744:	f04f 0e00 	mov.w	lr, #0
 8005748:	f882 e001 	strb.w	lr, [r2, #1]
 800574c:	eb0b 0406 	add.w	r4, fp, r6
 8005750:	7a10      	ldrb	r0, [r2, #8]
 8005752:	eba0 000c 	sub.w	r0, r0, ip
 8005756:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 800575a:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 800575e:	d308      	bcc.n	8005772 <upsampleCb+0xcc>
 8005760:	0401      	lsls	r1, r0, #16
 8005762:	2900      	cmp	r1, #0
 8005764:	db04      	blt.n	8005770 <upsampleCb+0xca>
 8005766:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 800576a:	bfc8      	it	gt
 800576c:	20ff      	movgt	r0, #255	; 0xff
 800576e:	e000      	b.n	8005772 <upsampleCb+0xcc>
 8005770:	2000      	movs	r0, #0
 8005772:	7210      	strb	r0, [r2, #8]
 8005774:	7a50      	ldrb	r0, [r2, #9]
 8005776:	eba0 000c 	sub.w	r0, r0, ip
 800577a:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 800577e:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 8005782:	d308      	bcc.n	8005796 <upsampleCb+0xf0>
 8005784:	0401      	lsls	r1, r0, #16
 8005786:	2900      	cmp	r1, #0
 8005788:	db04      	blt.n	8005794 <upsampleCb+0xee>
 800578a:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 800578e:	bfc8      	it	gt
 8005790:	20ff      	movgt	r0, #255	; 0xff
 8005792:	e000      	b.n	8005796 <upsampleCb+0xf0>
 8005794:	2000      	movs	r0, #0
 8005796:	7250      	strb	r0, [r2, #9]
 8005798:	20c6      	movs	r0, #198	; 0xc6
 800579a:	7821      	ldrb	r1, [r4, #0]
 800579c:	fb15 f000 	smulbb	r0, r5, r0
 80057a0:	eb05 2010 	add.w	r0, r5, r0, lsr #8
 80057a4:	4450      	add	r0, sl
 80057a6:	b282      	uxth	r2, r0
 80057a8:	fa11 f080 	uxtah	r0, r1, r0
 80057ac:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80057b0:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80057b4:	d308      	bcc.n	80057c8 <upsampleCb+0x122>
 80057b6:	0401      	lsls	r1, r0, #16
 80057b8:	2900      	cmp	r1, #0
 80057ba:	db04      	blt.n	80057c6 <upsampleCb+0x120>
 80057bc:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80057c0:	bfc8      	it	gt
 80057c2:	20ff      	movgt	r0, #255	; 0xff
 80057c4:	e000      	b.n	80057c8 <upsampleCb+0x122>
 80057c6:	2000      	movs	r0, #0
 80057c8:	7020      	strb	r0, [r4, #0]
 80057ca:	7860      	ldrb	r0, [r4, #1]
 80057cc:	4410      	add	r0, r2
 80057ce:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80057d2:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80057d6:	d308      	bcc.n	80057ea <upsampleCb+0x144>
 80057d8:	0401      	lsls	r1, r0, #16
 80057da:	2900      	cmp	r1, #0
 80057dc:	db04      	blt.n	80057e8 <upsampleCb+0x142>
 80057de:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80057e2:	bfc8      	it	gt
 80057e4:	20ff      	movgt	r0, #255	; 0xff
 80057e6:	e000      	b.n	80057ea <upsampleCb+0x144>
 80057e8:	2000      	movs	r0, #0
 80057ea:	7060      	strb	r0, [r4, #1]
 80057ec:	7a20      	ldrb	r0, [r4, #8]
 80057ee:	4410      	add	r0, r2
 80057f0:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80057f4:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80057f8:	d308      	bcc.n	800580c <upsampleCb+0x166>
 80057fa:	0401      	lsls	r1, r0, #16
 80057fc:	2900      	cmp	r1, #0
 80057fe:	db04      	blt.n	800580a <upsampleCb+0x164>
 8005800:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 8005804:	bfc8      	it	gt
 8005806:	20ff      	movgt	r0, #255	; 0xff
 8005808:	e000      	b.n	800580c <upsampleCb+0x166>
 800580a:	2000      	movs	r0, #0
 800580c:	7220      	strb	r0, [r4, #8]
 800580e:	7a60      	ldrb	r0, [r4, #9]
 8005810:	4410      	add	r0, r2
 8005812:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 8005816:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 800581a:	d308      	bcc.n	800582e <upsampleCb+0x188>
 800581c:	0401      	lsls	r1, r0, #16
 800581e:	2900      	cmp	r1, #0
 8005820:	db04      	blt.n	800582c <upsampleCb+0x186>
 8005822:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 8005826:	bfc8      	it	gt
 8005828:	20ff      	movgt	r0, #255	; 0xff
 800582a:	e000      	b.n	800582e <upsampleCb+0x188>
 800582c:	2000      	movs	r0, #0
 800582e:	3301      	adds	r3, #1
 8005830:	7260      	strb	r0, [r4, #9]
 8005832:	3602      	adds	r6, #2
 8005834:	b2d8      	uxtb	r0, r3
 8005836:	2804      	cmp	r0, #4
 8005838:	f4ff af52 	bcc.w	80056e0 <upsampleCb+0x3a>
 800583c:	9900      	ldr	r1, [sp, #0]
 800583e:	f10b 0b10 	add.w	fp, fp, #16
 8005842:	f109 0910 	add.w	r9, r9, #16
 8005846:	f108 0810 	add.w	r8, r8, #16
 800584a:	3101      	adds	r1, #1
 800584c:	b2c8      	uxtb	r0, r1
 800584e:	2804      	cmp	r0, #4
 8005850:	f4ff af43 	bcc.w	80056da <upsampleCb+0x34>
 8005854:	b001      	add	sp, #4
 8005856:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 800585a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800585c <upsampleCr>:
 800585c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800585e:	af03      	add	r7, sp, #12
 8005860:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8005864:	b081      	sub	sp, #4
 8005866:	f640 3202 	movw	r2, #2818	; 0xb02
 800586a:	f64f 7aa5 	movw	sl, #65445	; 0xffa5
 800586e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005872:	eb02 0b01 	add.w	fp, r2, r1
 8005876:	f640 2202 	movw	r2, #2562	; 0xa02
 800587a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800587e:	eb02 0901 	add.w	r9, r2, r1
 8005882:	f640 61da 	movw	r1, #3802	; 0xeda
 8005886:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800588a:	eb01 0840 	add.w	r8, r1, r0, lsl #1
 800588e:	2100      	movs	r1, #0
 8005890:	2600      	movs	r6, #0
 8005892:	2300      	movs	r3, #0
 8005894:	9100      	str	r1, [sp, #0]
 8005896:	f818 5006 	ldrb.w	r5, [r8, r6]
 800589a:	2067      	movs	r0, #103	; 0x67
 800589c:	f64f 714d 	movw	r1, #65357	; 0xff4d
 80058a0:	eb09 0206 	add.w	r2, r9, r6
 80058a4:	fb15 f000 	smulbb	r0, r5, r0
 80058a8:	eb05 2010 	add.w	r0, r5, r0, lsr #8
 80058ac:	4408      	add	r0, r1
 80058ae:	f819 1006 	ldrb.w	r1, [r9, r6]
 80058b2:	fa1f fc80 	uxth.w	ip, r0
 80058b6:	fa11 f480 	uxtah	r4, r1, r0
 80058ba:	f404 407f 	and.w	r0, r4, #65280	; 0xff00
 80058be:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 80058c2:	d308      	bcc.n	80058d6 <upsampleCr+0x7a>
 80058c4:	0420      	lsls	r0, r4, #16
 80058c6:	2800      	cmp	r0, #0
 80058c8:	db04      	blt.n	80058d4 <upsampleCr+0x78>
 80058ca:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 80058ce:	bfc8      	it	gt
 80058d0:	24ff      	movgt	r4, #255	; 0xff
 80058d2:	e000      	b.n	80058d6 <upsampleCr+0x7a>
 80058d4:	2400      	movs	r4, #0
 80058d6:	7014      	strb	r4, [r2, #0]
 80058d8:	7850      	ldrb	r0, [r2, #1]
 80058da:	eb00 0e0c 	add.w	lr, r0, ip
 80058de:	f40e 407f 	and.w	r0, lr, #65280	; 0xff00
 80058e2:	f5b0 7f80 	cmp.w	r0, #256	; 0x100
 80058e6:	d30b      	bcc.n	8005900 <upsampleCr+0xa4>
 80058e8:	ea4f 400e 	mov.w	r0, lr, lsl #16
 80058ec:	2800      	cmp	r0, #0
 80058ee:	db05      	blt.n	80058fc <upsampleCr+0xa0>
 80058f0:	f5b0 0f7f 	cmp.w	r0, #16711680	; 0xff0000
 80058f4:	bfc8      	it	gt
 80058f6:	f04f 0eff 	movgt.w	lr, #255	; 0xff
 80058fa:	e001      	b.n	8005900 <upsampleCr+0xa4>
 80058fc:	f04f 0e00 	mov.w	lr, #0
 8005900:	f882 e001 	strb.w	lr, [r2, #1]
 8005904:	eb0b 0406 	add.w	r4, fp, r6
 8005908:	7a10      	ldrb	r0, [r2, #8]
 800590a:	4460      	add	r0, ip
 800590c:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 8005910:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 8005914:	d308      	bcc.n	8005928 <upsampleCr+0xcc>
 8005916:	0401      	lsls	r1, r0, #16
 8005918:	2900      	cmp	r1, #0
 800591a:	db04      	blt.n	8005926 <upsampleCr+0xca>
 800591c:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 8005920:	bfc8      	it	gt
 8005922:	20ff      	movgt	r0, #255	; 0xff
 8005924:	e000      	b.n	8005928 <upsampleCr+0xcc>
 8005926:	2000      	movs	r0, #0
 8005928:	7210      	strb	r0, [r2, #8]
 800592a:	7a50      	ldrb	r0, [r2, #9]
 800592c:	4460      	add	r0, ip
 800592e:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 8005932:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 8005936:	d308      	bcc.n	800594a <upsampleCr+0xee>
 8005938:	0401      	lsls	r1, r0, #16
 800593a:	2900      	cmp	r1, #0
 800593c:	db04      	blt.n	8005948 <upsampleCr+0xec>
 800593e:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 8005942:	bfc8      	it	gt
 8005944:	20ff      	movgt	r0, #255	; 0xff
 8005946:	e000      	b.n	800594a <upsampleCr+0xee>
 8005948:	2000      	movs	r0, #0
 800594a:	7250      	strb	r0, [r2, #9]
 800594c:	20b7      	movs	r0, #183	; 0xb7
 800594e:	fb15 f000 	smulbb	r0, r5, r0
 8005952:	eb0a 2010 	add.w	r0, sl, r0, lsr #8
 8005956:	b282      	uxth	r2, r0
 8005958:	7820      	ldrb	r0, [r4, #0]
 800595a:	1a80      	subs	r0, r0, r2
 800595c:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 8005960:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 8005964:	d308      	bcc.n	8005978 <upsampleCr+0x11c>
 8005966:	0401      	lsls	r1, r0, #16
 8005968:	2900      	cmp	r1, #0
 800596a:	db04      	blt.n	8005976 <upsampleCr+0x11a>
 800596c:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 8005970:	bfc8      	it	gt
 8005972:	20ff      	movgt	r0, #255	; 0xff
 8005974:	e000      	b.n	8005978 <upsampleCr+0x11c>
 8005976:	2000      	movs	r0, #0
 8005978:	7020      	strb	r0, [r4, #0]
 800597a:	7860      	ldrb	r0, [r4, #1]
 800597c:	1a80      	subs	r0, r0, r2
 800597e:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 8005982:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 8005986:	d308      	bcc.n	800599a <upsampleCr+0x13e>
 8005988:	0401      	lsls	r1, r0, #16
 800598a:	2900      	cmp	r1, #0
 800598c:	db04      	blt.n	8005998 <upsampleCr+0x13c>
 800598e:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 8005992:	bfc8      	it	gt
 8005994:	20ff      	movgt	r0, #255	; 0xff
 8005996:	e000      	b.n	800599a <upsampleCr+0x13e>
 8005998:	2000      	movs	r0, #0
 800599a:	7060      	strb	r0, [r4, #1]
 800599c:	7a20      	ldrb	r0, [r4, #8]
 800599e:	1a80      	subs	r0, r0, r2
 80059a0:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80059a4:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80059a8:	d308      	bcc.n	80059bc <upsampleCr+0x160>
 80059aa:	0401      	lsls	r1, r0, #16
 80059ac:	2900      	cmp	r1, #0
 80059ae:	db04      	blt.n	80059ba <upsampleCr+0x15e>
 80059b0:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80059b4:	bfc8      	it	gt
 80059b6:	20ff      	movgt	r0, #255	; 0xff
 80059b8:	e000      	b.n	80059bc <upsampleCr+0x160>
 80059ba:	2000      	movs	r0, #0
 80059bc:	7220      	strb	r0, [r4, #8]
 80059be:	7a60      	ldrb	r0, [r4, #9]
 80059c0:	1a80      	subs	r0, r0, r2
 80059c2:	f400 417f 	and.w	r1, r0, #65280	; 0xff00
 80059c6:	f5b1 7f80 	cmp.w	r1, #256	; 0x100
 80059ca:	d308      	bcc.n	80059de <upsampleCr+0x182>
 80059cc:	0401      	lsls	r1, r0, #16
 80059ce:	2900      	cmp	r1, #0
 80059d0:	db04      	blt.n	80059dc <upsampleCr+0x180>
 80059d2:	f5b1 0f7f 	cmp.w	r1, #16711680	; 0xff0000
 80059d6:	bfc8      	it	gt
 80059d8:	20ff      	movgt	r0, #255	; 0xff
 80059da:	e000      	b.n	80059de <upsampleCr+0x182>
 80059dc:	2000      	movs	r0, #0
 80059de:	3301      	adds	r3, #1
 80059e0:	7260      	strb	r0, [r4, #9]
 80059e2:	3602      	adds	r6, #2
 80059e4:	b2d8      	uxtb	r0, r3
 80059e6:	2804      	cmp	r0, #4
 80059e8:	f4ff af55 	bcc.w	8005896 <upsampleCr+0x3a>
 80059ec:	9900      	ldr	r1, [sp, #0]
 80059ee:	f10b 0b10 	add.w	fp, fp, #16
 80059f2:	f109 0910 	add.w	r9, r9, #16
 80059f6:	f108 0810 	add.w	r8, r8, #16
 80059fa:	3101      	adds	r1, #1
 80059fc:	b2c8      	uxtb	r0, r1
 80059fe:	2804      	cmp	r0, #4
 8005a00:	f4ff af46 	bcc.w	8005890 <upsampleCr+0x34>
 8005a04:	b001      	add	sp, #4
 8005a06:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8005a0a:	bdf0      	pop	{r4, r5, r6, r7, pc}

08005a0c <processMarkers>:
 8005a0c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8005a0e:	af03      	add	r7, sp, #12
 8005a10:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8005a14:	b08b      	sub	sp, #44	; 0x2c
 8005a16:	f241 2e03 	movw	lr, #4611	; 0x1203
 8005a1a:	f241 3b04 	movw	fp, #4868	; 0x1304
 8005a1e:	f241 3c03 	movw	ip, #4867	; 0x1303
 8005a22:	4681      	mov	r9, r0
 8005a24:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8005a28:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8005a2c:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8005a30:	f10e 0004 	add.w	r0, lr, #4
 8005a34:	9006      	str	r0, [sp, #24]
 8005a36:	e385      	b.n	8006144 <processMarkers+0x738>
 8005a38:	f241 2002 	movw	r0, #4610	; 0x1202
 8005a3c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005a40:	4602      	mov	r2, r0
 8005a42:	7810      	ldrb	r0, [r2, #0]
 8005a44:	43c1      	mvns	r1, r0
 8005a46:	28ff      	cmp	r0, #255	; 0xff
 8005a48:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8005a4c:	7011      	strb	r1, [r2, #0]
 8005a4e:	bf18      	it	ne
 8005a50:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8005a54:	e040      	b.n	8005ad8 <processMarkers+0xcc>
 8005a56:	b2c0      	uxtb	r0, r0
 8005a58:	2807      	cmp	r0, #7
 8005a5a:	d848      	bhi.n	8005aee <processMarkers+0xe2>
 8005a5c:	f241 2601 	movw	r6, #4609	; 0x1201
 8005a60:	b2a1      	uxth	r1, r4
 8005a62:	46a0      	mov	r8, r4
 8005a64:	f241 2400 	movw	r4, #4608	; 0x1200
 8005a68:	fa01 f000 	lsl.w	r0, r1, r0
 8005a6c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8005a70:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8005a74:	f8ab 0000 	strh.w	r0, [fp]
 8005a78:	7830      	ldrb	r0, [r6, #0]
 8005a7a:	bb20      	cbnz	r0, 8005ac6 <processMarkers+0xba>
 8005a7c:	2004      	movs	r0, #4
 8005a7e:	21fc      	movs	r1, #252	; 0xfc
 8005a80:	4632      	mov	r2, r6
 8005a82:	f88c 0000 	strb.w	r0, [ip]
 8005a86:	2000      	movs	r0, #0
 8005a88:	7030      	strb	r0, [r6, #0]
 8005a8a:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8005a8e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005a92:	6803      	ldr	r3, [r0, #0]
 8005a94:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8005a98:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005a9c:	6805      	ldr	r5, [r0, #0]
 8005a9e:	9806      	ldr	r0, [sp, #24]
 8005aa0:	47a8      	blx	r5
 8005aa2:	2800      	cmp	r0, #0
 8005aa4:	f241 3c03 	movw	ip, #4867	; 0x1303
 8005aa8:	f241 2e03 	movw	lr, #4611	; 0x1203
 8005aac:	bf1e      	ittt	ne
 8005aae:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 8005ab2:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 8005ab6:	7008      	strbne	r0, [r1, #0]
 8005ab8:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8005abc:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8005ac0:	7830      	ldrb	r0, [r6, #0]
 8005ac2:	2800      	cmp	r0, #0
 8005ac4:	d0b8      	beq.n	8005a38 <processMarkers+0x2c>
 8005ac6:	3801      	subs	r0, #1
 8005ac8:	7030      	strb	r0, [r6, #0]
 8005aca:	f89c 0000 	ldrb.w	r0, [ip]
 8005ace:	1c41      	adds	r1, r0, #1
 8005ad0:	f81e 0000 	ldrb.w	r0, [lr, r0]
 8005ad4:	f88c 1000 	strb.w	r1, [ip]
 8005ad8:	f8bb 1000 	ldrh.w	r1, [fp]
 8005adc:	b2c0      	uxtb	r0, r0
 8005ade:	4301      	orrs	r1, r0
 8005ae0:	7820      	ldrb	r0, [r4, #0]
 8005ae2:	4644      	mov	r4, r8
 8005ae4:	f1c0 0208 	rsb	r2, r0, #8
 8005ae8:	fa01 fa02 	lsl.w	sl, r1, r2
 8005aec:	e008      	b.n	8005b00 <processMarkers+0xf4>
 8005aee:	f241 2100 	movw	r1, #4608	; 0x1200
 8005af2:	30f8      	adds	r0, #248	; 0xf8
 8005af4:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005af8:	7008      	strb	r0, [r1, #0]
 8005afa:	b2a1      	uxth	r1, r4
 8005afc:	ea4f 2a01 	mov.w	sl, r1, lsl #8
 8005b00:	f8ab a000 	strh.w	sl, [fp]
 8005b04:	f3c4 2103 	ubfx	r1, r4, #8, #4
 8005b08:	2901      	cmp	r1, #1
 8005b0a:	f200 831b 	bhi.w	8006144 <processMarkers+0x738>
 8005b0e:	f241 3208 	movw	r2, #4872	; 0x1308
 8005b12:	9102      	str	r1, [sp, #8]
 8005b14:	2900      	cmp	r1, #0
 8005b16:	f04f 0101 	mov.w	r1, #1
 8005b1a:	f04f 0900 	mov.w	r9, #0
 8005b1e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005b22:	bf18      	it	ne
 8005b24:	2102      	movne	r1, #2
 8005b26:	4613      	mov	r3, r2
 8005b28:	781a      	ldrb	r2, [r3, #0]
 8005b2a:	ea41 0102 	orr.w	r1, r1, r2
 8005b2e:	7019      	strb	r1, [r3, #0]
 8005b30:	f640 5194 	movw	r1, #3476	; 0xd94
 8005b34:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005b38:	460e      	mov	r6, r1
 8005b3a:	f640 5114 	movw	r1, #3348	; 0xd14
 8005b3e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005b42:	bf18      	it	ne
 8005b44:	460e      	movne	r6, r1
 8005b46:	9405      	str	r4, [sp, #20]
 8005b48:	e01d      	b.n	8005b86 <processMarkers+0x17a>
 8005b4a:	f241 2002 	movw	r0, #4610	; 0x1202
 8005b4e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005b52:	4602      	mov	r2, r0
 8005b54:	7810      	ldrb	r0, [r2, #0]
 8005b56:	43c1      	mvns	r1, r0
 8005b58:	28ff      	cmp	r0, #255	; 0xff
 8005b5a:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8005b5e:	7011      	strb	r1, [r2, #0]
 8005b60:	bf18      	it	ne
 8005b62:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8005b66:	e04e      	b.n	8005c06 <processMarkers+0x1fa>
 8005b68:	f241 2002 	movw	r0, #4610	; 0x1202
 8005b6c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005b70:	4602      	mov	r2, r0
 8005b72:	7810      	ldrb	r0, [r2, #0]
 8005b74:	43c1      	mvns	r1, r0
 8005b76:	28ff      	cmp	r0, #255	; 0xff
 8005b78:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8005b7c:	7011      	strb	r1, [r2, #0]
 8005b7e:	bf18      	it	ne
 8005b80:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8005b84:	e0b0      	b.n	8005ce8 <processMarkers+0x2dc>
 8005b86:	b2c0      	uxtb	r0, r0
 8005b88:	2807      	cmp	r0, #7
 8005b8a:	d84a      	bhi.n	8005c22 <processMarkers+0x216>
 8005b8c:	f241 2201 	movw	r2, #4609	; 0x1201
 8005b90:	fa1f f18a 	uxth.w	r1, sl
 8005b94:	fa01 f000 	lsl.w	r0, r1, r0
 8005b98:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005b9c:	f8ab 0000 	strh.w	r0, [fp]
 8005ba0:	7810      	ldrb	r0, [r2, #0]
 8005ba2:	bb38      	cbnz	r0, 8005bf4 <processMarkers+0x1e8>
 8005ba4:	2004      	movs	r0, #4
 8005ba6:	21fc      	movs	r1, #252	; 0xfc
 8005ba8:	f88c 0000 	strb.w	r0, [ip]
 8005bac:	2000      	movs	r0, #0
 8005bae:	7010      	strb	r0, [r2, #0]
 8005bb0:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8005bb4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005bb8:	6803      	ldr	r3, [r0, #0]
 8005bba:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8005bbe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005bc2:	6805      	ldr	r5, [r0, #0]
 8005bc4:	9806      	ldr	r0, [sp, #24]
 8005bc6:	47a8      	blx	r5
 8005bc8:	f241 2201 	movw	r2, #4609	; 0x1201
 8005bcc:	2800      	cmp	r0, #0
 8005bce:	f241 3c03 	movw	ip, #4867	; 0x1303
 8005bd2:	f241 2e03 	movw	lr, #4611	; 0x1203
 8005bd6:	bf1e      	ittt	ne
 8005bd8:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 8005bdc:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 8005be0:	7008      	strbne	r0, [r1, #0]
 8005be2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005be6:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8005bea:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8005bee:	7810      	ldrb	r0, [r2, #0]
 8005bf0:	2800      	cmp	r0, #0
 8005bf2:	d0aa      	beq.n	8005b4a <processMarkers+0x13e>
 8005bf4:	3801      	subs	r0, #1
 8005bf6:	7010      	strb	r0, [r2, #0]
 8005bf8:	f89c 0000 	ldrb.w	r0, [ip]
 8005bfc:	1c41      	adds	r1, r0, #1
 8005bfe:	f81e 0000 	ldrb.w	r0, [lr, r0]
 8005c02:	f88c 1000 	strb.w	r1, [ip]
 8005c06:	f8bb 1000 	ldrh.w	r1, [fp]
 8005c0a:	b2c0      	uxtb	r0, r0
 8005c0c:	4301      	orrs	r1, r0
 8005c0e:	f241 2000 	movw	r0, #4608	; 0x1200
 8005c12:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005c16:	7800      	ldrb	r0, [r0, #0]
 8005c18:	f1c0 0208 	rsb	r2, r0, #8
 8005c1c:	fa01 f802 	lsl.w	r8, r1, r2
 8005c20:	e009      	b.n	8005c36 <processMarkers+0x22a>
 8005c22:	f241 2100 	movw	r1, #4608	; 0x1200
 8005c26:	30f8      	adds	r0, #248	; 0xf8
 8005c28:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005c2c:	7008      	strb	r0, [r1, #0]
 8005c2e:	fa1f f18a 	uxth.w	r1, sl
 8005c32:	ea4f 2801 	mov.w	r8, r1, lsl #8
 8005c36:	b2a3      	uxth	r3, r4
 8005c38:	f8ab 8000 	strh.w	r8, [fp]
 8005c3c:	f3ca 2107 	ubfx	r1, sl, #8, #8
 8005c40:	f5b3 5f80 	cmp.w	r3, #4096	; 0x1000
 8005c44:	d201      	bcs.n	8005c4a <processMarkers+0x23e>
 8005c46:	46c2      	mov	sl, r8
 8005c48:	e06c      	b.n	8005d24 <processMarkers+0x318>
 8005c4a:	b2c0      	uxtb	r0, r0
 8005c4c:	020d      	lsls	r5, r1, #8
 8005c4e:	2807      	cmp	r0, #7
 8005c50:	d856      	bhi.n	8005d00 <processMarkers+0x2f4>
 8005c52:	f241 2a01 	movw	sl, #4609	; 0x1201
 8005c56:	fa1f f188 	uxth.w	r1, r8
 8005c5a:	4634      	mov	r4, r6
 8005c5c:	f241 2600 	movw	r6, #4608	; 0x1200
 8005c60:	fa01 f000 	lsl.w	r0, r1, r0
 8005c64:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8005c68:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8005c6c:	f8ab 0000 	strh.w	r0, [fp]
 8005c70:	f89a 0000 	ldrb.w	r0, [sl]
 8005c74:	bb70      	cbnz	r0, 8005cd4 <processMarkers+0x2c8>
 8005c76:	2004      	movs	r0, #4
 8005c78:	461e      	mov	r6, r3
 8005c7a:	21fc      	movs	r1, #252	; 0xfc
 8005c7c:	4652      	mov	r2, sl
 8005c7e:	f88c 0000 	strb.w	r0, [ip]
 8005c82:	2000      	movs	r0, #0
 8005c84:	f88a 0000 	strb.w	r0, [sl]
 8005c88:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8005c8c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005c90:	6803      	ldr	r3, [r0, #0]
 8005c92:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8005c96:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005c9a:	f8d0 c000 	ldr.w	ip, [r0]
 8005c9e:	9806      	ldr	r0, [sp, #24]
 8005ca0:	47e0      	blx	ip
 8005ca2:	2800      	cmp	r0, #0
 8005ca4:	f241 3c03 	movw	ip, #4867	; 0x1303
 8005ca8:	f241 2e03 	movw	lr, #4611	; 0x1203
 8005cac:	4633      	mov	r3, r6
 8005cae:	f241 2600 	movw	r6, #4608	; 0x1200
 8005cb2:	bf1e      	ittt	ne
 8005cb4:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 8005cb8:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 8005cbc:	7008      	strbne	r0, [r1, #0]
 8005cbe:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8005cc2:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8005cc6:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8005cca:	f89a 0000 	ldrb.w	r0, [sl]
 8005cce:	2800      	cmp	r0, #0
 8005cd0:	f43f af4a 	beq.w	8005b68 <processMarkers+0x15c>
 8005cd4:	3801      	subs	r0, #1
 8005cd6:	f88a 0000 	strb.w	r0, [sl]
 8005cda:	f89c 0000 	ldrb.w	r0, [ip]
 8005cde:	1c41      	adds	r1, r0, #1
 8005ce0:	f81e 0000 	ldrb.w	r0, [lr, r0]
 8005ce4:	f88c 1000 	strb.w	r1, [ip]
 8005ce8:	f8bb 1000 	ldrh.w	r1, [fp]
 8005cec:	b2c0      	uxtb	r0, r0
 8005cee:	4301      	orrs	r1, r0
 8005cf0:	7830      	ldrb	r0, [r6, #0]
 8005cf2:	4626      	mov	r6, r4
 8005cf4:	9c05      	ldr	r4, [sp, #20]
 8005cf6:	f1c0 0208 	rsb	r2, r0, #8
 8005cfa:	fa01 fa02 	lsl.w	sl, r1, r2
 8005cfe:	e00b      	b.n	8005d18 <processMarkers+0x30c>
 8005d00:	f241 2100 	movw	r1, #4608	; 0x1200
 8005d04:	30f8      	adds	r0, #248	; 0xf8
 8005d06:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005d0a:	7008      	strb	r0, [r1, #0]
 8005d0c:	f64f 7100 	movw	r1, #65280	; 0xff00
 8005d10:	f2c0 01ff 	movt	r1, #255	; 0xff
 8005d14:	ea01 2a08 	and.w	sl, r1, r8, lsl #8
 8005d18:	f408 417f 	and.w	r1, r8, #65280	; 0xff00
 8005d1c:	f8ab a000 	strh.w	sl, [fp]
 8005d20:	ea45 2111 	orr.w	r1, r5, r1, lsr #8
 8005d24:	f826 1019 	strh.w	r1, [r6, r9, lsl #1]
 8005d28:	f109 0901 	add.w	r9, r9, #1
 8005d2c:	f1b9 0f40 	cmp.w	r9, #64	; 0x40
 8005d30:	f47f af29 	bne.w	8005b86 <processMarkers+0x17a>
 8005d34:	9902      	ldr	r1, [sp, #8]
 8005d36:	f640 5214 	movw	r2, #3348	; 0xd14
 8005d3a:	f24b 7400 	movw	r4, #46848	; 0xb700
 8005d3e:	4698      	mov	r8, r3
 8005d40:	2604      	movs	r6, #4
 8005d42:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005d46:	f6c0 0400 	movt	r4, #2048	; 0x800
 8005d4a:	2900      	cmp	r1, #0
 8005d4c:	f640 5194 	movw	r1, #3476	; 0xd94
 8005d50:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005d54:	bf18      	it	ne
 8005d56:	4611      	movne	r1, r2
 8005d58:	2200      	movs	r2, #0
 8005d5a:	f931 3012 	ldrsh.w	r3, [r1, r2, lsl #1]
 8005d5e:	5ca5      	ldrb	r5, [r4, r2]
 8005d60:	fb15 6303 	smlabb	r3, r5, r3, r6
 8005d64:	08db      	lsrs	r3, r3, #3
 8005d66:	f821 3012 	strh.w	r3, [r1, r2, lsl #1]
 8005d6a:	3201      	adds	r2, #1
 8005d6c:	2a40      	cmp	r2, #64	; 0x40
 8005d6e:	d1f4      	bne.n	8005d5a <processMarkers+0x34e>
 8005d70:	f5b8 5f80 	cmp.w	r8, #4096	; 0x1000
 8005d74:	f04f 0181 	mov.w	r1, #129	; 0x81
 8005d78:	bf38      	it	cc
 8005d7a:	2141      	movcc	r1, #65	; 0x41
 8005d7c:	9a04      	ldr	r2, [sp, #16]
 8005d7e:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005d82:	b292      	uxth	r2, r2
 8005d84:	428a      	cmp	r2, r1
 8005d86:	f0c0 81dd 	bcc.w	8006144 <processMarkers+0x738>
 8005d8a:	1a51      	subs	r1, r2, r1
 8005d8c:	4654      	mov	r4, sl
 8005d8e:	9104      	str	r1, [sp, #16]
 8005d90:	0409      	lsls	r1, r1, #16
 8005d92:	f47f ae60 	bne.w	8005a56 <processMarkers+0x4a>
 8005d96:	e1d5      	b.n	8006144 <processMarkers+0x738>
 8005d98:	f241 2002 	movw	r0, #4610	; 0x1202
 8005d9c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005da0:	4602      	mov	r2, r0
 8005da2:	7810      	ldrb	r0, [r2, #0]
 8005da4:	43c1      	mvns	r1, r0
 8005da6:	28ff      	cmp	r0, #255	; 0xff
 8005da8:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8005dac:	7011      	strb	r1, [r2, #0]
 8005dae:	bf18      	it	ne
 8005db0:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8005db4:	e039      	b.n	8005e2a <processMarkers+0x41e>
 8005db6:	fa5f f08e 	uxtb.w	r0, lr
 8005dba:	2807      	cmp	r0, #7
 8005dbc:	d840      	bhi.n	8005e40 <processMarkers+0x434>
 8005dbe:	fa1f f188 	uxth.w	r1, r8
 8005dc2:	f241 3203 	movw	r2, #4867	; 0x1303
 8005dc6:	fa01 f000 	lsl.w	r0, r1, r0
 8005dca:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005dce:	f8ab 0000 	strh.w	r0, [fp]
 8005dd2:	7830      	ldrb	r0, [r6, #0]
 8005dd4:	b9f8      	cbnz	r0, 8005e16 <processMarkers+0x40a>
 8005dd6:	2004      	movs	r0, #4
 8005dd8:	21fc      	movs	r1, #252	; 0xfc
 8005dda:	7010      	strb	r0, [r2, #0]
 8005ddc:	2000      	movs	r0, #0
 8005dde:	4632      	mov	r2, r6
 8005de0:	7030      	strb	r0, [r6, #0]
 8005de2:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8005de6:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005dea:	6803      	ldr	r3, [r0, #0]
 8005dec:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8005df0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005df4:	6805      	ldr	r5, [r0, #0]
 8005df6:	9806      	ldr	r0, [sp, #24]
 8005df8:	47a8      	blx	r5
 8005dfa:	2800      	cmp	r0, #0
 8005dfc:	f241 3203 	movw	r2, #4867	; 0x1303
 8005e00:	bf1e      	ittt	ne
 8005e02:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 8005e06:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 8005e0a:	7008      	strbne	r0, [r1, #0]
 8005e0c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005e10:	7830      	ldrb	r0, [r6, #0]
 8005e12:	2800      	cmp	r0, #0
 8005e14:	d0c0      	beq.n	8005d98 <processMarkers+0x38c>
 8005e16:	3801      	subs	r0, #1
 8005e18:	7030      	strb	r0, [r6, #0]
 8005e1a:	7810      	ldrb	r0, [r2, #0]
 8005e1c:	1c41      	adds	r1, r0, #1
 8005e1e:	7011      	strb	r1, [r2, #0]
 8005e20:	f241 2103 	movw	r1, #4611	; 0x1203
 8005e24:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005e28:	5c08      	ldrb	r0, [r1, r0]
 8005e2a:	f89a e000 	ldrb.w	lr, [sl]
 8005e2e:	f8bb 1000 	ldrh.w	r1, [fp]
 8005e32:	b2c0      	uxtb	r0, r0
 8005e34:	4301      	orrs	r1, r0
 8005e36:	f1ce 0208 	rsb	r2, lr, #8
 8005e3a:	fa01 f402 	lsl.w	r4, r1, r2
 8005e3e:	e006      	b.n	8005e4e <processMarkers+0x442>
 8005e40:	fa1f f188 	uxth.w	r1, r8
 8005e44:	f100 0ef8 	add.w	lr, r0, #248	; 0xf8
 8005e48:	020c      	lsls	r4, r1, #8
 8005e4a:	f88a e000 	strb.w	lr, [sl]
 8005e4e:	200e      	movs	r0, #14
 8005e50:	f8ab 4000 	strh.w	r4, [fp]
 8005e54:	f3c8 2107 	ubfx	r1, r8, #8, #8
 8005e58:	ea00 2218 	and.w	r2, r0, r8, lsr #8
 8005e5c:	2a01      	cmp	r2, #1
 8005e5e:	bf9e      	ittt	ls
 8005e60:	20f0      	movls	r0, #240	; 0xf0
 8005e62:	ea00 2218 	andls.w	r2, r0, r8, lsr #8
 8005e66:	2a10      	cmpls	r2, #16
 8005e68:	f200 8164 	bhi.w	8006134 <processMarkers+0x728>
 8005e6c:	2002      	movs	r0, #2
 8005e6e:	f04f 0900 	mov.w	r9, #0
 8005e72:	ea00 00d1 	and.w	r0, r0, r1, lsr #3
 8005e76:	f001 0101 	and.w	r1, r1, #1
 8005e7a:	9004      	str	r0, [sp, #16]
 8005e7c:	4301      	orrs	r1, r0
 8005e7e:	2001      	movs	r0, #1
 8005e80:	fa00 f201 	lsl.w	r2, r0, r1
 8005e84:	f241 3007 	movw	r0, #4871	; 0x1307
 8005e88:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005e8c:	7803      	ldrb	r3, [r0, #0]
 8005e8e:	431a      	orrs	r2, r3
 8005e90:	f241 3303 	movw	r3, #4867	; 0x1303
 8005e94:	7002      	strb	r2, [r0, #0]
 8005e96:	f24b 7090 	movw	r0, #46992	; 0xb790
 8005e9a:	2200      	movs	r2, #0
 8005e9c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005ea0:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005ea4:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
 8005ea8:	9000      	str	r0, [sp, #0]
 8005eaa:	f24b 7080 	movw	r0, #46976	; 0xb780
 8005eae:	f6c0 0000 	movt	r0, #2048	; 0x800
 8005eb2:	f850 0021 	ldr.w	r0, [r0, r1, lsl #2]
 8005eb6:	9005      	str	r0, [sp, #20]
 8005eb8:	e00e      	b.n	8005ed8 <processMarkers+0x4cc>
 8005eba:	f241 2002 	movw	r0, #4610	; 0x1202
 8005ebe:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005ec2:	4602      	mov	r2, r0
 8005ec4:	7810      	ldrb	r0, [r2, #0]
 8005ec6:	43c1      	mvns	r1, r0
 8005ec8:	28ff      	cmp	r0, #255	; 0xff
 8005eca:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8005ece:	7011      	strb	r1, [r2, #0]
 8005ed0:	bf18      	it	ne
 8005ed2:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8005ed6:	e036      	b.n	8005f46 <processMarkers+0x53a>
 8005ed8:	fa5f f08e 	uxtb.w	r0, lr
 8005edc:	4615      	mov	r5, r2
 8005ede:	2807      	cmp	r0, #7
 8005ee0:	d83c      	bhi.n	8005f5c <processMarkers+0x550>
 8005ee2:	b2a1      	uxth	r1, r4
 8005ee4:	fa01 f000 	lsl.w	r0, r1, r0
 8005ee8:	f8ab 0000 	strh.w	r0, [fp]
 8005eec:	7830      	ldrb	r0, [r6, #0]
 8005eee:	bb00      	cbnz	r0, 8005f32 <processMarkers+0x526>
 8005ef0:	2004      	movs	r0, #4
 8005ef2:	21fc      	movs	r1, #252	; 0xfc
 8005ef4:	4632      	mov	r2, r6
 8005ef6:	7018      	strb	r0, [r3, #0]
 8005ef8:	2000      	movs	r0, #0
 8005efa:	7030      	strb	r0, [r6, #0]
 8005efc:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8005f00:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005f04:	6803      	ldr	r3, [r0, #0]
 8005f06:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8005f0a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005f0e:	f8d0 c000 	ldr.w	ip, [r0]
 8005f12:	9806      	ldr	r0, [sp, #24]
 8005f14:	47e0      	blx	ip
 8005f16:	2800      	cmp	r0, #0
 8005f18:	f241 3303 	movw	r3, #4867	; 0x1303
 8005f1c:	bf1e      	ittt	ne
 8005f1e:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 8005f22:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 8005f26:	7008      	strbne	r0, [r1, #0]
 8005f28:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005f2c:	7830      	ldrb	r0, [r6, #0]
 8005f2e:	2800      	cmp	r0, #0
 8005f30:	d0c3      	beq.n	8005eba <processMarkers+0x4ae>
 8005f32:	3801      	subs	r0, #1
 8005f34:	7030      	strb	r0, [r6, #0]
 8005f36:	7818      	ldrb	r0, [r3, #0]
 8005f38:	1c41      	adds	r1, r0, #1
 8005f3a:	7019      	strb	r1, [r3, #0]
 8005f3c:	f241 2103 	movw	r1, #4611	; 0x1203
 8005f40:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8005f44:	5c08      	ldrb	r0, [r1, r0]
 8005f46:	f89a e000 	ldrb.w	lr, [sl]
 8005f4a:	f8bb 1000 	ldrh.w	r1, [fp]
 8005f4e:	b2c0      	uxtb	r0, r0
 8005f50:	4301      	orrs	r1, r0
 8005f52:	f1ce 0208 	rsb	r2, lr, #8
 8005f56:	fa01 f802 	lsl.w	r8, r1, r2
 8005f5a:	e006      	b.n	8005f6a <processMarkers+0x55e>
 8005f5c:	b2a1      	uxth	r1, r4
 8005f5e:	f100 0ef8 	add.w	lr, r0, #248	; 0xf8
 8005f62:	ea4f 2801 	mov.w	r8, r1, lsl #8
 8005f66:	f88a e000 	strb.w	lr, [sl]
 8005f6a:	f8ab 8000 	strh.w	r8, [fp]
 8005f6e:	f3c4 2107 	ubfx	r1, r4, #8, #8
 8005f72:	a807      	add	r0, sp, #28
 8005f74:	b2aa      	uxth	r2, r5
 8005f76:	f800 1009 	strb.w	r1, [r0, r9]
 8005f7a:	f109 0901 	add.w	r9, r9, #1
 8005f7e:	fa52 f294 	uxtab	r2, r2, r4, ror #8
 8005f82:	4644      	mov	r4, r8
 8005f84:	f1b9 0f10 	cmp.w	r9, #16
 8005f88:	d1a6      	bne.n	8005ed8 <processMarkers+0x4cc>
 8005f8a:	9804      	ldr	r0, [sp, #16]
 8005f8c:	23ff      	movs	r3, #255	; 0xff
 8005f8e:	b292      	uxth	r2, r2
 8005f90:	2800      	cmp	r0, #0
 8005f92:	bf08      	it	eq
 8005f94:	230c      	moveq	r3, #12
 8005f96:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8005f9a:	429a      	cmp	r2, r3
 8005f9c:	f200 80ca 	bhi.w	8006134 <processMarkers+0x728>
 8005fa0:	1868      	adds	r0, r5, r1
 8005fa2:	b285      	uxth	r5, r0
 8005fa4:	9001      	str	r0, [sp, #4]
 8005fa6:	2d00      	cmp	r5, #0
 8005fa8:	9504      	str	r5, [sp, #16]
 8005faa:	d07d      	beq.n	80060a8 <processMarkers+0x69c>
 8005fac:	9e00      	ldr	r6, [sp, #0]
 8005fae:	f241 3303 	movw	r3, #4867	; 0x1303
 8005fb2:	2400      	movs	r4, #0
 8005fb4:	46c2      	mov	sl, r8
 8005fb6:	f04f 0900 	mov.w	r9, #0
 8005fba:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8005fbe:	e00e      	b.n	8005fde <processMarkers+0x5d2>
 8005fc0:	f241 2002 	movw	r0, #4610	; 0x1202
 8005fc4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8005fc8:	4602      	mov	r2, r0
 8005fca:	7810      	ldrb	r0, [r2, #0]
 8005fcc:	43c1      	mvns	r1, r0
 8005fce:	28ff      	cmp	r0, #255	; 0xff
 8005fd0:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8005fd4:	7011      	strb	r1, [r2, #0]
 8005fd6:	bf18      	it	ne
 8005fd8:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8005fdc:	e03d      	b.n	800605a <processMarkers+0x64e>
 8005fde:	fa5f f08e 	uxtb.w	r0, lr
 8005fe2:	2807      	cmp	r0, #7
 8005fe4:	d848      	bhi.n	8006078 <processMarkers+0x66c>
 8005fe6:	f241 2201 	movw	r2, #4609	; 0x1201
 8005fea:	fa1f f18a 	uxth.w	r1, sl
 8005fee:	fa01 f000 	lsl.w	r0, r1, r0
 8005ff2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8005ff6:	f8ab 0000 	strh.w	r0, [fp]
 8005ffa:	7810      	ldrb	r0, [r2, #0]
 8005ffc:	bb18      	cbnz	r0, 8006046 <processMarkers+0x63a>
 8005ffe:	2004      	movs	r0, #4
 8006000:	21fc      	movs	r1, #252	; 0xfc
 8006002:	7018      	strb	r0, [r3, #0]
 8006004:	2000      	movs	r0, #0
 8006006:	7010      	strb	r0, [r2, #0]
 8006008:	f640 10ec 	movw	r0, #2540	; 0x9ec
 800600c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8006010:	6803      	ldr	r3, [r0, #0]
 8006012:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8006016:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800601a:	6805      	ldr	r5, [r0, #0]
 800601c:	9806      	ldr	r0, [sp, #24]
 800601e:	47a8      	blx	r5
 8006020:	f241 2201 	movw	r2, #4609	; 0x1201
 8006024:	2800      	cmp	r0, #0
 8006026:	f241 3303 	movw	r3, #4867	; 0x1303
 800602a:	bf1e      	ittt	ne
 800602c:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 8006030:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 8006034:	7008      	strbne	r0, [r1, #0]
 8006036:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800603a:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800603e:	7810      	ldrb	r0, [r2, #0]
 8006040:	9d04      	ldr	r5, [sp, #16]
 8006042:	2800      	cmp	r0, #0
 8006044:	d0bc      	beq.n	8005fc0 <processMarkers+0x5b4>
 8006046:	3801      	subs	r0, #1
 8006048:	7010      	strb	r0, [r2, #0]
 800604a:	7818      	ldrb	r0, [r3, #0]
 800604c:	1c41      	adds	r1, r0, #1
 800604e:	7019      	strb	r1, [r3, #0]
 8006050:	f241 2103 	movw	r1, #4611	; 0x1203
 8006054:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8006058:	5c08      	ldrb	r0, [r1, r0]
 800605a:	f8bb 1000 	ldrh.w	r1, [fp]
 800605e:	b2c0      	uxtb	r0, r0
 8006060:	4301      	orrs	r1, r0
 8006062:	f241 2000 	movw	r0, #4608	; 0x1200
 8006066:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800606a:	f890 e000 	ldrb.w	lr, [r0]
 800606e:	f1ce 0208 	rsb	r2, lr, #8
 8006072:	fa01 f802 	lsl.w	r8, r1, r2
 8006076:	e00b      	b.n	8006090 <processMarkers+0x684>
 8006078:	f100 0ef8 	add.w	lr, r0, #248	; 0xf8
 800607c:	f241 2000 	movw	r0, #4608	; 0x1200
 8006080:	fa1f f18a 	uxth.w	r1, sl
 8006084:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8006088:	ea4f 2801 	mov.w	r8, r1, lsl #8
 800608c:	f880 e000 	strb.w	lr, [r0]
 8006090:	ea4f 211a 	mov.w	r1, sl, lsr #8
 8006094:	f109 0901 	add.w	r9, r9, #1
 8006098:	f8ab 8000 	strh.w	r8, [fp]
 800609c:	46c2      	mov	sl, r8
 800609e:	5531      	strb	r1, [r6, r4]
 80060a0:	fa5f f489 	uxtb.w	r4, r9
 80060a4:	42ac      	cmp	r4, r5
 80060a6:	d39a      	bcc.n	8005fde <processMarkers+0x5d2>
 80060a8:	9802      	ldr	r0, [sp, #8]
 80060aa:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80060ae:	f241 2a00 	movw	sl, #4608	; 0x1200
 80060b2:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 80060b6:	fa1f fc80 	uxth.w	ip, r0
 80060ba:	9801      	ldr	r0, [sp, #4]
 80060bc:	f100 0111 	add.w	r1, r0, #17
 80060c0:	b289      	uxth	r1, r1
 80060c2:	458c      	cmp	ip, r1
 80060c4:	d336      	bcc.n	8006134 <processMarkers+0x728>
 80060c6:	9d05      	ldr	r5, [sp, #20]
 80060c8:	2200      	movs	r2, #0
 80060ca:	2000      	movs	r0, #0
 80060cc:	2400      	movs	r4, #0
 80060ce:	f64f 66ff 	movw	r6, #65279	; 0xfeff
 80060d2:	a907      	add	r1, sp, #28
 80060d4:	5c89      	ldrb	r1, [r1, r2]
 80060d6:	b159      	cbz	r1, 80060f0 <processMarkers+0x6e4>
 80060d8:	f825 4012 	strh.w	r4, [r5, r2, lsl #1]
 80060dc:	fa51 f580 	uxtab	r5, r1, r0
 80060e0:	fa11 f484 	uxtah	r4, r1, r4
 80060e4:	f64f 71ff 	movw	r1, #65535	; 0xffff
 80060e8:	4603      	mov	r3, r0
 80060ea:	4421      	add	r1, r4
 80060ec:	4628      	mov	r0, r5
 80060ee:	e004      	b.n	80060fa <processMarkers+0x6ee>
 80060f0:	2300      	movs	r3, #0
 80060f2:	f506 7180 	add.w	r1, r6, #256	; 0x100
 80060f6:	f825 3012 	strh.w	r3, [r5, r2, lsl #1]
 80060fa:	9d05      	ldr	r5, [sp, #20]
 80060fc:	eb05 0542 	add.w	r5, r5, r2, lsl #1
 8006100:	8429      	strh	r1, [r5, #32]
 8006102:	9d05      	ldr	r5, [sp, #20]
 8006104:	18a9      	adds	r1, r5, r2
 8006106:	3201      	adds	r2, #1
 8006108:	f881 3040 	strb.w	r3, [r1, #64]	; 0x40
 800610c:	b2a1      	uxth	r1, r4
 800610e:	2a10      	cmp	r2, #16
 8006110:	ea4f 0441 	mov.w	r4, r1, lsl #1
 8006114:	d1dd      	bne.n	80060d2 <processMarkers+0x6c6>
 8006116:	9804      	ldr	r0, [sp, #16]
 8006118:	f1ac 0111 	sub.w	r1, ip, #17
 800611c:	f241 2601 	movw	r6, #4609	; 0x1201
 8006120:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8006124:	1a0a      	subs	r2, r1, r0
 8006126:	f64f 70ff 	movw	r0, #65535	; 0xffff
 800612a:	4611      	mov	r1, r2
 800612c:	4202      	tst	r2, r0
 800612e:	9102      	str	r1, [sp, #8]
 8006130:	f47f ae41 	bne.w	8005db6 <processMarkers+0x3aa>
 8006134:	f241 3c03 	movw	ip, #4867	; 0x1303
 8006138:	f241 2e03 	movw	lr, #4611	; 0x1203
 800613c:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8006140:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8006144:	f241 2a00 	movw	sl, #4608	; 0x1200
 8006148:	f8bb 4000 	ldrh.w	r4, [fp]
 800614c:	f241 2601 	movw	r6, #4609	; 0x1201
 8006150:	f64f 68ff 	movw	r8, #65279	; 0xfeff
 8006154:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8006158:	f2c2 0600 	movt	r6, #8192	; 0x2000
 800615c:	f89a 0000 	ldrb.w	r0, [sl]
 8006160:	b2c0      	uxtb	r0, r0
 8006162:	2807      	cmp	r0, #7
 8006164:	d83d      	bhi.n	80061e2 <processMarkers+0x7d6>
 8006166:	b2a1      	uxth	r1, r4
 8006168:	fa01 f000 	lsl.w	r0, r1, r0
 800616c:	f8ab 0000 	strh.w	r0, [fp]
 8006170:	7830      	ldrb	r0, [r6, #0]
 8006172:	bb18      	cbnz	r0, 80061bc <processMarkers+0x7b0>
 8006174:	2004      	movs	r0, #4
 8006176:	21fc      	movs	r1, #252	; 0xfc
 8006178:	4632      	mov	r2, r6
 800617a:	f88c 0000 	strb.w	r0, [ip]
 800617e:	2000      	movs	r0, #0
 8006180:	7030      	strb	r0, [r6, #0]
 8006182:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8006186:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800618a:	6803      	ldr	r3, [r0, #0]
 800618c:	f640 10e8 	movw	r0, #2536	; 0x9e8
 8006190:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8006194:	6805      	ldr	r5, [r0, #0]
 8006196:	9806      	ldr	r0, [sp, #24]
 8006198:	47a8      	blx	r5
 800619a:	2800      	cmp	r0, #0
 800619c:	f241 3c03 	movw	ip, #4867	; 0x1303
 80061a0:	f241 2e03 	movw	lr, #4611	; 0x1203
 80061a4:	bf1e      	ittt	ne
 80061a6:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 80061aa:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 80061ae:	7008      	strbne	r0, [r1, #0]
 80061b0:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80061b4:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80061b8:	7830      	ldrb	r0, [r6, #0]
 80061ba:	b1f8      	cbz	r0, 80061fc <processMarkers+0x7f0>
 80061bc:	3801      	subs	r0, #1
 80061be:	7030      	strb	r0, [r6, #0]
 80061c0:	f89c 0000 	ldrb.w	r0, [ip]
 80061c4:	1c41      	adds	r1, r0, #1
 80061c6:	f81e 0000 	ldrb.w	r0, [lr, r0]
 80061ca:	f88c 1000 	strb.w	r1, [ip]
 80061ce:	f8bb 1000 	ldrh.w	r1, [fp]
 80061d2:	b2c0      	uxtb	r0, r0
 80061d4:	4301      	orrs	r1, r0
 80061d6:	f89a 0000 	ldrb.w	r0, [sl]
 80061da:	f1c0 0208 	rsb	r2, r0, #8
 80061de:	4091      	lsls	r1, r2
 80061e0:	e004      	b.n	80061ec <processMarkers+0x7e0>
 80061e2:	b2a1      	uxth	r1, r4
 80061e4:	30f8      	adds	r0, #248	; 0xf8
 80061e6:	0209      	lsls	r1, r1, #8
 80061e8:	f88a 0000 	strb.w	r0, [sl]
 80061ec:	b2a2      	uxth	r2, r4
 80061ee:	460c      	mov	r4, r1
 80061f0:	f8ab 1000 	strh.w	r1, [fp]
 80061f4:	4542      	cmp	r2, r8
 80061f6:	d9b3      	bls.n	8006160 <processMarkers+0x754>
 80061f8:	460c      	mov	r4, r1
 80061fa:	e01d      	b.n	8006238 <processMarkers+0x82c>
 80061fc:	f241 2002 	movw	r0, #4610	; 0x1202
 8006200:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8006204:	4602      	mov	r2, r0
 8006206:	7810      	ldrb	r0, [r2, #0]
 8006208:	43c1      	mvns	r1, r0
 800620a:	28ff      	cmp	r0, #255	; 0xff
 800620c:	f06f 0026 	mvn.w	r0, #38	; 0x26
 8006210:	7011      	strb	r1, [r2, #0]
 8006212:	bf18      	it	ne
 8006214:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8006218:	e7d9      	b.n	80061ce <processMarkers+0x7c2>
 800621a:	f241 2002 	movw	r0, #4610	; 0x1202
 800621e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8006222:	4602      	mov	r2, r0
 8006224:	7810      	ldrb	r0, [r2, #0]
 8006226:	43c1      	mvns	r1, r0
 8006228:	28ff      	cmp	r0, #255	; 0xff
 800622a:	f06f 0026 	mvn.w	r0, #38	; 0x26
 800622e:	7011      	strb	r1, [r2, #0]
 8006230:	bf18      	it	ne
 8006232:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 8006236:	e038      	b.n	80062aa <processMarkers+0x89e>
 8006238:	b2c0      	uxtb	r0, r0
 800623a:	4625      	mov	r5, r4
 800623c:	2807      	cmp	r0, #7
 800623e:	d83f      	bhi.n	80062c0 <processMarkers+0x8b4>
 8006240:	b2a9      	uxth	r1, r5
 8006242:	fa01 f000 	lsl.w	r0, r1, r0
 8006246:	f8ab 0000 	strh.w	r0, [fp]
 800624a:	7830      	ldrb	r0, [r6, #0]
 800624c:	bb20      	cbnz	r0, 8006298 <processMarkers+0x88c>
 800624e:	2004      	movs	r0, #4
 8006250:	21fc      	movs	r1, #252	; 0xfc
 8006252:	4632      	mov	r2, r6
 8006254:	f88c 0000 	strb.w	r0, [ip]
 8006258:	2000      	movs	r0, #0
 800625a:	7030      	strb	r0, [r6, #0]
 800625c:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8006260:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8006264:	6803      	ldr	r3, [r0, #0]
 8006266:	f640 10e8 	movw	r0, #2536	; 0x9e8
 800626a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800626e:	6804      	ldr	r4, [r0, #0]
 8006270:	9806      	ldr	r0, [sp, #24]
 8006272:	47a0      	blx	r4
 8006274:	2800      	cmp	r0, #0
 8006276:	f241 3c03 	movw	ip, #4867	; 0x1303
 800627a:	f241 2e03 	movw	lr, #4611	; 0x1203
 800627e:	bf1e      	ittt	ne
 8006280:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 8006284:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 8006288:	7008      	strbne	r0, [r1, #0]
 800628a:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800628e:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8006292:	7830      	ldrb	r0, [r6, #0]
 8006294:	2800      	cmp	r0, #0
 8006296:	d0c0      	beq.n	800621a <processMarkers+0x80e>
 8006298:	3801      	subs	r0, #1
 800629a:	7030      	strb	r0, [r6, #0]
 800629c:	f89c 0000 	ldrb.w	r0, [ip]
 80062a0:	1c41      	adds	r1, r0, #1
 80062a2:	f81e 0000 	ldrb.w	r0, [lr, r0]
 80062a6:	f88c 1000 	strb.w	r1, [ip]
 80062aa:	f8bb 1000 	ldrh.w	r1, [fp]
 80062ae:	b2c0      	uxtb	r0, r0
 80062b0:	4301      	orrs	r1, r0
 80062b2:	f89a 0000 	ldrb.w	r0, [sl]
 80062b6:	f1c0 0208 	rsb	r2, r0, #8
 80062ba:	fa01 f402 	lsl.w	r4, r1, r2
 80062be:	e004      	b.n	80062ca <processMarkers+0x8be>
 80062c0:	b2a9      	uxth	r1, r5
 80062c2:	30f8      	adds	r0, #248	; 0xf8
 80062c4:	020c      	lsls	r4, r1, #8
 80062c6:	f88a 0000 	strb.w	r0, [sl]
 80062ca:	f8ab 4000 	strh.w	r4, [fp]
 80062ce:	f3c5 2107 	ubfx	r1, r5, #8, #8
 80062d2:	29ff      	cmp	r1, #255	; 0xff
 80062d4:	f200 811d 	bhi.w	8006512 <processMarkers+0xb06>
 80062d8:	e8df f011 	tbh	[pc, r1, lsl #1]
 80062dc:	01ea0101 	.word	0x01ea0101
 80062e0:	011b011b 	.word	0x011b011b
 80062e4:	011b011b 	.word	0x011b011b
 80062e8:	011b011b 	.word	0x011b011b
 80062ec:	011b011b 	.word	0x011b011b
 80062f0:	011b011b 	.word	0x011b011b
 80062f4:	011b011b 	.word	0x011b011b
 80062f8:	011b011b 	.word	0x011b011b
 80062fc:	011b011b 	.word	0x011b011b
 8006300:	011b011b 	.word	0x011b011b
 8006304:	011b011b 	.word	0x011b011b
 8006308:	011b011b 	.word	0x011b011b
 800630c:	011b011b 	.word	0x011b011b
 8006310:	011b011b 	.word	0x011b011b
 8006314:	011b011b 	.word	0x011b011b
 8006318:	011b011b 	.word	0x011b011b
 800631c:	011b011b 	.word	0x011b011b
 8006320:	011b011b 	.word	0x011b011b
 8006324:	011b011b 	.word	0x011b011b
 8006328:	011b011b 	.word	0x011b011b
 800632c:	011b011b 	.word	0x011b011b
 8006330:	011b011b 	.word	0x011b011b
 8006334:	011b011b 	.word	0x011b011b
 8006338:	011b011b 	.word	0x011b011b
 800633c:	011b011b 	.word	0x011b011b
 8006340:	011b011b 	.word	0x011b011b
 8006344:	011b011b 	.word	0x011b011b
 8006348:	011b011b 	.word	0x011b011b
 800634c:	011b011b 	.word	0x011b011b
 8006350:	011b011b 	.word	0x011b011b
 8006354:	011b011b 	.word	0x011b011b
 8006358:	011b011b 	.word	0x011b011b
 800635c:	011b011b 	.word	0x011b011b
 8006360:	011b011b 	.word	0x011b011b
 8006364:	011b011b 	.word	0x011b011b
 8006368:	011b011b 	.word	0x011b011b
 800636c:	011b011b 	.word	0x011b011b
 8006370:	011b011b 	.word	0x011b011b
 8006374:	011b011b 	.word	0x011b011b
 8006378:	011b011b 	.word	0x011b011b
 800637c:	011b011b 	.word	0x011b011b
 8006380:	011b011b 	.word	0x011b011b
 8006384:	011b011b 	.word	0x011b011b
 8006388:	011b011b 	.word	0x011b011b
 800638c:	011b011b 	.word	0x011b011b
 8006390:	011b011b 	.word	0x011b011b
 8006394:	011b011b 	.word	0x011b011b
 8006398:	011b011b 	.word	0x011b011b
 800639c:	011b011b 	.word	0x011b011b
 80063a0:	011b011b 	.word	0x011b011b
 80063a4:	011b011b 	.word	0x011b011b
 80063a8:	011b011b 	.word	0x011b011b
 80063ac:	011b011b 	.word	0x011b011b
 80063b0:	011b011b 	.word	0x011b011b
 80063b4:	011b011b 	.word	0x011b011b
 80063b8:	011b011b 	.word	0x011b011b
 80063bc:	011b011b 	.word	0x011b011b
 80063c0:	011b011b 	.word	0x011b011b
 80063c4:	011b011b 	.word	0x011b011b
 80063c8:	011b011b 	.word	0x011b011b
 80063cc:	011b011b 	.word	0x011b011b
 80063d0:	011b011b 	.word	0x011b011b
 80063d4:	011b011b 	.word	0x011b011b
 80063d8:	011b011b 	.word	0x011b011b
 80063dc:	011b011b 	.word	0x011b011b
 80063e0:	011b011b 	.word	0x011b011b
 80063e4:	011b011b 	.word	0x011b011b
 80063e8:	011b011b 	.word	0x011b011b
 80063ec:	011b011b 	.word	0x011b011b
 80063f0:	011b011b 	.word	0x011b011b
 80063f4:	011b011b 	.word	0x011b011b
 80063f8:	011b011b 	.word	0x011b011b
 80063fc:	011b011b 	.word	0x011b011b
 8006400:	011b011b 	.word	0x011b011b
 8006404:	011b011b 	.word	0x011b011b
 8006408:	011b011b 	.word	0x011b011b
 800640c:	011b011b 	.word	0x011b011b
 8006410:	011b011b 	.word	0x011b011b
 8006414:	011b011b 	.word	0x011b011b
 8006418:	011b011b 	.word	0x011b011b
 800641c:	011b011b 	.word	0x011b011b
 8006420:	011b011b 	.word	0x011b011b
 8006424:	011b011b 	.word	0x011b011b
 8006428:	011b011b 	.word	0x011b011b
 800642c:	011b011b 	.word	0x011b011b
 8006430:	011b011b 	.word	0x011b011b
 8006434:	011b011b 	.word	0x011b011b
 8006438:	011b011b 	.word	0x011b011b
 800643c:	011b011b 	.word	0x011b011b
 8006440:	011b011b 	.word	0x011b011b
 8006444:	011b011b 	.word	0x011b011b
 8006448:	011b011b 	.word	0x011b011b
 800644c:	011b011b 	.word	0x011b011b
 8006450:	011b011b 	.word	0x011b011b
 8006454:	011b011b 	.word	0x011b011b
 8006458:	011b011b 	.word	0x011b011b
 800645c:	01e601e6 	.word	0x01e601e6
 8006460:	01e601e6 	.word	0x01e601e6
 8006464:	01e60102 	.word	0x01e60102
 8006468:	01e601e6 	.word	0x01e601e6
 800646c:	01e601ea 	.word	0x01e601ea
 8006470:	01e601e6 	.word	0x01e601e6
 8006474:	01e601f0 	.word	0x01e601f0
 8006478:	01e601e6 	.word	0x01e601e6
 800647c:	01ea01ea 	.word	0x01ea01ea
 8006480:	01ea01ea 	.word	0x01ea01ea
 8006484:	01ea01ea 	.word	0x01ea01ea
 8006488:	01ea01ea 	.word	0x01ea01ea
 800648c:	01e601e6 	.word	0x01e601e6
 8006490:	013a01e6 	.word	0x013a01e6
 8006494:	015e011b 	.word	0x015e011b
 8006498:	011b011b 	.word	0x011b011b
 800649c:	011b011b 	.word	0x011b011b
 80064a0:	011b011b 	.word	0x011b011b
 80064a4:	011b011b 	.word	0x011b011b
 80064a8:	011b011b 	.word	0x011b011b
 80064ac:	011b011b 	.word	0x011b011b
 80064b0:	011b011b 	.word	0x011b011b
 80064b4:	011b011b 	.word	0x011b011b
 80064b8:	011b011b 	.word	0x011b011b
 80064bc:	011b011b 	.word	0x011b011b
 80064c0:	011b011b 	.word	0x011b011b
 80064c4:	011b011b 	.word	0x011b011b
 80064c8:	011b011b 	.word	0x011b011b
 80064cc:	011b011b 	.word	0x011b011b
 80064d0:	011b011b 	.word	0x011b011b
 80064d4:	011b011b 	.word	0x011b011b
 80064d8:	0100011b 	.word	0x0100011b
 80064dc:	e6ac      	b.n	8006238 <processMarkers+0x82c>
 80064de:	e63f      	b.n	8006160 <processMarkers+0x754>
 80064e0:	2010      	movs	r0, #16
 80064e2:	2100      	movs	r1, #0
 80064e4:	f7fe fe2b 	bl	800513e <getBits>
 80064e8:	2802      	cmp	r0, #2
 80064ea:	f4ff ae23 	bcc.w	8006134 <processMarkers+0x728>
 80064ee:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 80064f2:	1842      	adds	r2, r0, r1
 80064f4:	f64f 70ff 	movw	r0, #65535	; 0xffff
 80064f8:	4611      	mov	r1, r2
 80064fa:	4202      	tst	r2, r0
 80064fc:	9102      	str	r1, [sp, #8]
 80064fe:	f43f ae19 	beq.w	8006134 <processMarkers+0x728>
 8006502:	f89a e000 	ldrb.w	lr, [sl]
 8006506:	f8bb 8000 	ldrh.w	r8, [fp]
 800650a:	f8cd 900c 	str.w	r9, [sp, #12]
 800650e:	f7ff bc52 	b.w	8005db6 <processMarkers+0x3aa>
 8006512:	2010      	movs	r0, #16
 8006514:	2100      	movs	r1, #0
 8006516:	f7fe fe12 	bl	800513e <getBits>
 800651a:	f241 2e03 	movw	lr, #4611	; 0x1203
 800651e:	f241 3c03 	movw	ip, #4867	; 0x1303
 8006522:	2802      	cmp	r0, #2
 8006524:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8006528:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800652c:	f4ff ae0a 	bcc.w	8006144 <processMarkers+0x738>
 8006530:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 8006534:	1844      	adds	r4, r0, r1
 8006536:	f64f 70ff 	movw	r0, #65535	; 0xffff
 800653a:	4204      	tst	r4, r0
 800653c:	f43f ae02 	beq.w	8006144 <processMarkers+0x738>
 8006540:	f241 2000 	movw	r0, #4608	; 0x1200
 8006544:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8006548:	7801      	ldrb	r1, [r0, #0]
 800654a:	f8bb 0000 	ldrh.w	r0, [fp]
 800654e:	e053      	b.n	80065f8 <processMarkers+0xbec>
 8006550:	2010      	movs	r0, #16
 8006552:	2100      	movs	r1, #0
 8006554:	f7fe fdf3 	bl	800513e <getBits>
 8006558:	f241 2e03 	movw	lr, #4611	; 0x1203
 800655c:	f241 3c03 	movw	ip, #4867	; 0x1303
 8006560:	2802      	cmp	r0, #2
 8006562:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8006566:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 800656a:	f4ff adeb 	bcc.w	8006144 <processMarkers+0x738>
 800656e:	f64f 71fe 	movw	r1, #65534	; 0xfffe
 8006572:	1842      	adds	r2, r0, r1
 8006574:	f64f 70ff 	movw	r0, #65535	; 0xffff
 8006578:	4611      	mov	r1, r2
 800657a:	4202      	tst	r2, r0
 800657c:	9104      	str	r1, [sp, #16]
 800657e:	f43f ade1 	beq.w	8006144 <processMarkers+0x738>
 8006582:	f241 2000 	movw	r0, #4608	; 0x1200
 8006586:	f8bb 4000 	ldrh.w	r4, [fp]
 800658a:	f8cd 900c 	str.w	r9, [sp, #12]
 800658e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8006592:	7800      	ldrb	r0, [r0, #0]
 8006594:	f7ff ba5f 	b.w	8005a56 <processMarkers+0x4a>
 8006598:	2010      	movs	r0, #16
 800659a:	2100      	movs	r1, #0
 800659c:	f7fe fdcf 	bl	800513e <getBits>
 80065a0:	f241 2e03 	movw	lr, #4611	; 0x1203
 80065a4:	f241 3c03 	movw	ip, #4867	; 0x1303
 80065a8:	2804      	cmp	r0, #4
 80065aa:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80065ae:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80065b2:	f47f adc7 	bne.w	8006144 <processMarkers+0x738>
 80065b6:	2010      	movs	r0, #16
 80065b8:	2100      	movs	r1, #0
 80065ba:	f7fe fdc0 	bl	800513e <getBits>
 80065be:	f640 5102 	movw	r1, #3330	; 0xd02
 80065c2:	f241 2e03 	movw	lr, #4611	; 0x1203
 80065c6:	f241 3c03 	movw	ip, #4867	; 0x1303
 80065ca:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80065ce:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80065d2:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80065d6:	8008      	strh	r0, [r1, #0]
 80065d8:	e5b4      	b.n	8006144 <processMarkers+0x738>
 80065da:	f241 2002 	movw	r0, #4610	; 0x1202
 80065de:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80065e2:	4602      	mov	r2, r0
 80065e4:	7810      	ldrb	r0, [r2, #0]
 80065e6:	43c1      	mvns	r1, r0
 80065e8:	28ff      	cmp	r0, #255	; 0xff
 80065ea:	f06f 0026 	mvn.w	r0, #38	; 0x26
 80065ee:	7011      	strb	r1, [r2, #0]
 80065f0:	bf18      	it	ne
 80065f2:	f04f 30ff 	movne.w	r0, #4294967295	; 0xffffffff
 80065f6:	e03a      	b.n	800666e <processMarkers+0xc62>
 80065f8:	b2c9      	uxtb	r1, r1
 80065fa:	2907      	cmp	r1, #7
 80065fc:	d844      	bhi.n	8006688 <processMarkers+0xc7c>
 80065fe:	b280      	uxth	r0, r0
 8006600:	f241 2601 	movw	r6, #4609	; 0x1201
 8006604:	4088      	lsls	r0, r1
 8006606:	f2c2 0600 	movt	r6, #8192	; 0x2000
 800660a:	f8ab 0000 	strh.w	r0, [fp]
 800660e:	7830      	ldrb	r0, [r6, #0]
 8006610:	bb20      	cbnz	r0, 800665c <processMarkers+0xc50>
 8006612:	2004      	movs	r0, #4
 8006614:	21fc      	movs	r1, #252	; 0xfc
 8006616:	4632      	mov	r2, r6
 8006618:	f88c 0000 	strb.w	r0, [ip]
 800661c:	2000      	movs	r0, #0
 800661e:	7030      	strb	r0, [r6, #0]
 8006620:	f640 10ec 	movw	r0, #2540	; 0x9ec
 8006624:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8006628:	6803      	ldr	r3, [r0, #0]
 800662a:	f640 10e8 	movw	r0, #2536	; 0x9e8
 800662e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8006632:	6805      	ldr	r5, [r0, #0]
 8006634:	9806      	ldr	r0, [sp, #24]
 8006636:	47a8      	blx	r5
 8006638:	2800      	cmp	r0, #0
 800663a:	f241 3c03 	movw	ip, #4867	; 0x1303
 800663e:	f241 2e03 	movw	lr, #4611	; 0x1203
 8006642:	bf1e      	ittt	ne
 8006644:	f640 11e4 	movwne	r1, #2532	; 0x9e4
 8006648:	f2c2 0100 	movtne	r1, #8192	; 0x2000
 800664c:	7008      	strbne	r0, [r1, #0]
 800664e:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 8006652:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8006656:	7830      	ldrb	r0, [r6, #0]
 8006658:	2800      	cmp	r0, #0
 800665a:	d0be      	beq.n	80065da <processMarkers+0xbce>
 800665c:	3801      	subs	r0, #1
 800665e:	7030      	strb	r0, [r6, #0]
 8006660:	f89c 0000 	ldrb.w	r0, [ip]
 8006664:	1c41      	adds	r1, r0, #1
 8006666:	f81e 0000 	ldrb.w	r0, [lr, r0]
 800666a:	f88c 1000 	strb.w	r1, [ip]
 800666e:	f8bb 1000 	ldrh.w	r1, [fp]
 8006672:	f241 2200 	movw	r2, #4608	; 0x1200
 8006676:	b2c0      	uxtb	r0, r0
 8006678:	f2c2 0200 	movt	r2, #8192	; 0x2000
 800667c:	4308      	orrs	r0, r1
 800667e:	7811      	ldrb	r1, [r2, #0]
 8006680:	f1c1 0208 	rsb	r2, r1, #8
 8006684:	4090      	lsls	r0, r2
 8006686:	e007      	b.n	8006698 <processMarkers+0xc8c>
 8006688:	f241 2200 	movw	r2, #4608	; 0x1200
 800668c:	b280      	uxth	r0, r0
 800668e:	31f8      	adds	r1, #248	; 0xf8
 8006690:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8006694:	0200      	lsls	r0, r0, #8
 8006696:	7011      	strb	r1, [r2, #0]
 8006698:	3c01      	subs	r4, #1
 800669a:	f64f 72ff 	movw	r2, #65535	; 0xffff
 800669e:	f8ab 0000 	strh.w	r0, [fp]
 80066a2:	4214      	tst	r4, r2
 80066a4:	d1a8      	bne.n	80065f8 <processMarkers+0xbec>
 80066a6:	e54d      	b.n	8006144 <processMarkers+0x738>
 80066a8:	f889 1000 	strb.w	r1, [r9]
 80066ac:	2000      	movs	r0, #0
 80066ae:	e000      	b.n	80066b2 <processMarkers+0xca6>
 80066b0:	2012      	movs	r0, #18
 80066b2:	b2c0      	uxtb	r0, r0
 80066b4:	b00b      	add	sp, #44	; 0x2c
 80066b6:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80066ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80066bc:	2011      	movs	r0, #17
 80066be:	e7f8      	b.n	80066b2 <processMarkers+0xca6>

080066c0 <__io_putchar>:
 80066c0:	b580      	push	{r7, lr}
 80066c2:	466f      	mov	r7, sp
 80066c4:	b082      	sub	sp, #8
 80066c6:	9001      	str	r0, [sp, #4]
 80066c8:	f241 3018 	movw	r0, #4888	; 0x1318
 80066cc:	a901      	add	r1, sp, #4
 80066ce:	2201      	movs	r2, #1
 80066d0:	f64f 73ff 	movw	r3, #65535	; 0xffff
 80066d4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80066d8:	f7fb fb5f 	bl	8001d9a <HAL_UART_Transmit>
 80066dc:	9801      	ldr	r0, [sp, #4]
 80066de:	b002      	add	sp, #8
 80066e0:	bd80      	pop	{r7, pc}

080066e2 <main>:
 80066e2:	b5b0      	push	{r4, r5, r7, lr}
 80066e4:	af02      	add	r7, sp, #8
 80066e6:	f241 3118 	movw	r1, #4888	; 0x1318
 80066ea:	f643 0000 	movw	r0, #14336	; 0x3800
 80066ee:	220c      	movs	r2, #12
 80066f0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80066f4:	f2c4 0001 	movt	r0, #16385	; 0x4001
 80066f8:	6008      	str	r0, [r1, #0]
 80066fa:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 80066fe:	6048      	str	r0, [r1, #4]
 8006700:	2000      	movs	r0, #0
 8006702:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8006706:	6108      	str	r0, [r1, #16]
 8006708:	6248      	str	r0, [r1, #36]	; 0x24
 800670a:	e9c1 0007 	strd	r0, r0, [r1, #28]
 800670e:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8006712:	2000      	movs	r0, #0
 8006714:	f7fb fbd6 	bl	8001ec4 <BSP_COM_Init>
 8006718:	f000 f855 	bl	80067c6 <initialise_benchmark>
 800671c:	f64b 2080 	movw	r0, #47744	; 0xba80
 8006720:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006724:	f000 f98c 	bl	8006a40 <printf>
 8006728:	f64b 302b 	movw	r0, #47915	; 0xbb2b
 800672c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006730:	f000 f9e8 	bl	8006b04 <puts>
 8006734:	f7fa fd38 	bl	80011a8 <HAL_Init>
 8006738:	f7fa fd4e 	bl	80011d8 <HAL_GetTick>
 800673c:	4604      	mov	r4, r0
 800673e:	f000 f843 	bl	80067c8 <benchmark>
 8006742:	4605      	mov	r5, r0
 8006744:	f7fa fd48 	bl	80011d8 <HAL_GetTick>
 8006748:	1b04      	subs	r4, r0, r4
 800674a:	4628      	mov	r0, r5
 800674c:	f000 f838 	bl	80067c0 <verify_benchmark>
 8006750:	1c41      	adds	r1, r0, #1
 8006752:	d006      	beq.n	8006762 <main+0x80>
 8006754:	2801      	cmp	r0, #1
 8006756:	d109      	bne.n	800676c <main+0x8a>
 8006758:	f64b 2097 	movw	r0, #47767	; 0xba97
 800675c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006760:	e008      	b.n	8006774 <main+0x92>
 8006762:	f64b 20bb 	movw	r0, #47803	; 0xbabb
 8006766:	f6c0 0000 	movt	r0, #2048	; 0x800
 800676a:	e003      	b.n	8006774 <main+0x92>
 800676c:	f64b 20f0 	movw	r0, #47856	; 0xbaf0
 8006770:	f6c0 0000 	movt	r0, #2048	; 0x800
 8006774:	4621      	mov	r1, r4
 8006776:	f000 f963 	bl	8006a40 <printf>
 800677a:	2000      	movs	r0, #0
 800677c:	bdb0      	pop	{r4, r5, r7, pc}

0800677e <pjpeg_need_bytes_callback>:
 800677e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006780:	af03      	add	r7, sp, #12
 8006782:	f84d bd04 	str.w	fp, [sp, #-4]!
 8006786:	f241 3698 	movw	r6, #5016	; 0x1398
 800678a:	4614      	mov	r4, r2
 800678c:	460d      	mov	r5, r1
 800678e:	f24b 71dc 	movw	r1, #47068	; 0xb7dc
 8006792:	f240 233a 	movw	r3, #570	; 0x23a
 8006796:	f2c2 0600 	movt	r6, #8192	; 0x2000
 800679a:	f6c0 0100 	movt	r1, #2048	; 0x800
 800679e:	6832      	ldr	r2, [r6, #0]
 80067a0:	4411      	add	r1, r2
 80067a2:	1a9a      	subs	r2, r3, r2
 80067a4:	42aa      	cmp	r2, r5
 80067a6:	bf38      	it	cc
 80067a8:	4615      	movcc	r5, r2
 80067aa:	462a      	mov	r2, r5
 80067ac:	f000 f8d2 	bl	8006954 <__aeabi_memcpy>
 80067b0:	7025      	strb	r5, [r4, #0]
 80067b2:	6830      	ldr	r0, [r6, #0]
 80067b4:	4428      	add	r0, r5
 80067b6:	6030      	str	r0, [r6, #0]
 80067b8:	2000      	movs	r0, #0
 80067ba:	f85d bb04 	ldr.w	fp, [sp], #4
 80067be:	bdf0      	pop	{r4, r5, r6, r7, pc}

080067c0 <verify_benchmark>:
 80067c0:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80067c4:	4770      	bx	lr

080067c6 <initialise_benchmark>:
 80067c6:	4770      	bx	lr

080067c8 <benchmark>:
 80067c8:	b580      	push	{r7, lr}
 80067ca:	466f      	mov	r7, sp
 80067cc:	b08c      	sub	sp, #48	; 0x30
 80067ce:	f241 3098 	movw	r0, #5016	; 0x1398
 80067d2:	2100      	movs	r1, #0
 80067d4:	2200      	movs	r2, #0
 80067d6:	2300      	movs	r3, #0
 80067d8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80067dc:	6001      	str	r1, [r0, #0]
 80067de:	f246 717f 	movw	r1, #26495	; 0x677f
 80067e2:	a801      	add	r0, sp, #4
 80067e4:	f6c0 0100 	movt	r1, #2048	; 0x800
 80067e8:	f7fd f918 	bl	8003a1c <pjpeg_decode_init>
 80067ec:	f7fb fbc4 	bl	8001f78 <pjpeg_decode_mcu>
 80067f0:	2801      	cmp	r0, #1
 80067f2:	d1fb      	bne.n	80067ec <benchmark+0x24>
 80067f4:	2000      	movs	r0, #0
 80067f6:	b00c      	add	sp, #48	; 0x30
 80067f8:	bd80      	pop	{r7, pc}

080067fa <SysTick_Handler>:
 80067fa:	b580      	push	{r7, lr}
 80067fc:	466f      	mov	r7, sp
 80067fe:	f7fa fce3 	bl	80011c8 <HAL_IncTick>
 8006802:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8006806:	f7fa bd3d 	b.w	8001284 <HAL_SYSTICK_IRQHandler>

0800680a <_read>:
 800680a:	b5f0      	push	{r4, r5, r6, r7, lr}
 800680c:	af03      	add	r7, sp, #12
 800680e:	f84d bd04 	str.w	fp, [sp, #-4]!
 8006812:	4614      	mov	r4, r2
 8006814:	460d      	mov	r5, r1
 8006816:	2c01      	cmp	r4, #1
 8006818:	db06      	blt.n	8006828 <_read+0x1e>
 800681a:	4626      	mov	r6, r4
 800681c:	f3af 8000 	nop.w
 8006820:	f805 0b01 	strb.w	r0, [r5], #1
 8006824:	3e01      	subs	r6, #1
 8006826:	d1f9      	bne.n	800681c <_read+0x12>
 8006828:	4620      	mov	r0, r4
 800682a:	f85d bb04 	ldr.w	fp, [sp], #4
 800682e:	bdf0      	pop	{r4, r5, r6, r7, pc}

08006830 <_write>:
 8006830:	b5f0      	push	{r4, r5, r6, r7, lr}
 8006832:	af03      	add	r7, sp, #12
 8006834:	f84d bd04 	str.w	fp, [sp, #-4]!
 8006838:	4614      	mov	r4, r2
 800683a:	460d      	mov	r5, r1
 800683c:	2c01      	cmp	r4, #1
 800683e:	db06      	blt.n	800684e <_write+0x1e>
 8006840:	4626      	mov	r6, r4
 8006842:	f815 0b01 	ldrb.w	r0, [r5], #1
 8006846:	f7ff ff3b 	bl	80066c0 <__io_putchar>
 800684a:	3e01      	subs	r6, #1
 800684c:	d1f9      	bne.n	8006842 <_write+0x12>
 800684e:	4620      	mov	r0, r4
 8006850:	f85d bb04 	ldr.w	fp, [sp], #4
 8006854:	bdf0      	pop	{r4, r5, r6, r7, pc}

08006856 <_sbrk>:
 8006856:	f241 32a0 	movw	r2, #5024	; 0x13a0
 800685a:	4601      	mov	r1, r0
 800685c:	466b      	mov	r3, sp
 800685e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8006862:	6810      	ldr	r0, [r2, #0]
 8006864:	2800      	cmp	r0, #0
 8006866:	bf02      	ittt	eq
 8006868:	f241 4050 	movweq	r0, #5200	; 0x1450
 800686c:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8006870:	6010      	streq	r0, [r2, #0]
 8006872:	4401      	add	r1, r0
 8006874:	4299      	cmp	r1, r3
 8006876:	bf9c      	itt	ls
 8006878:	6011      	strls	r1, [r2, #0]
 800687a:	4770      	bxls	lr
 800687c:	b580      	push	{r7, lr}
 800687e:	466f      	mov	r7, sp
 8006880:	f000 f86a 	bl	8006958 <__errno>
 8006884:	210c      	movs	r1, #12
 8006886:	6001      	str	r1, [r0, #0]
 8006888:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800688c:	bd80      	pop	{r7, pc}

0800688e <_close>:
 800688e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8006892:	4770      	bx	lr

08006894 <_fstat>:
 8006894:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 8006898:	6048      	str	r0, [r1, #4]
 800689a:	2000      	movs	r0, #0
 800689c:	4770      	bx	lr

0800689e <_isatty>:
 800689e:	2001      	movs	r0, #1
 80068a0:	4770      	bx	lr

080068a2 <_lseek>:
 80068a2:	2000      	movs	r0, #0
 80068a4:	4770      	bx	lr

080068a6 <SystemInit>:
 80068a6:	f64e 5088 	movw	r0, #60808	; 0xed88
 80068aa:	f04f 0c00 	mov.w	ip, #0
 80068ae:	f2ce 0000 	movt	r0, #57344	; 0xe000
 80068b2:	6801      	ldr	r1, [r0, #0]
 80068b4:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 80068b8:	6001      	str	r1, [r0, #0]
 80068ba:	f241 0100 	movw	r1, #4096	; 0x1000
 80068be:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80068c2:	680a      	ldr	r2, [r1, #0]
 80068c4:	f042 0201 	orr.w	r2, r2, #1
 80068c8:	600a      	str	r2, [r1, #0]
 80068ca:	f8c1 c008 	str.w	ip, [r1, #8]
 80068ce:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80068d2:	680b      	ldr	r3, [r1, #0]
 80068d4:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80068d8:	401a      	ands	r2, r3
 80068da:	600a      	str	r2, [r1, #0]
 80068dc:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80068e0:	60ca      	str	r2, [r1, #12]
 80068e2:	680a      	ldr	r2, [r1, #0]
 80068e4:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80068e8:	600a      	str	r2, [r1, #0]
 80068ea:	f8c1 c018 	str.w	ip, [r1, #24]
 80068ee:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80068f2:	f840 1c80 	str.w	r1, [r0, #-128]
 80068f6:	4770      	bx	lr

080068f8 <Reset_Handler>:
 80068f8:	f8df d034 	ldr.w	sp, [pc, #52]	; 8006930 <LoopForever+0x2>
 80068fc:	2100      	movs	r1, #0
 80068fe:	e003      	b.n	8006908 <LoopCopyDataInit>

08006900 <CopyDataInit>:
 8006900:	4b0c      	ldr	r3, [pc, #48]	; (8006934 <LoopForever+0x6>)
 8006902:	585b      	ldr	r3, [r3, r1]
 8006904:	5043      	str	r3, [r0, r1]
 8006906:	3104      	adds	r1, #4

08006908 <LoopCopyDataInit>:
 8006908:	480b      	ldr	r0, [pc, #44]	; (8006938 <LoopForever+0xa>)
 800690a:	4b0c      	ldr	r3, [pc, #48]	; (800693c <LoopForever+0xe>)
 800690c:	1842      	adds	r2, r0, r1
 800690e:	429a      	cmp	r2, r3
 8006910:	d3f6      	bcc.n	8006900 <CopyDataInit>
 8006912:	4a0b      	ldr	r2, [pc, #44]	; (8006940 <LoopForever+0x12>)
 8006914:	e002      	b.n	800691c <LoopFillZerobss>

08006916 <FillZerobss>:
 8006916:	2300      	movs	r3, #0
 8006918:	f842 3b04 	str.w	r3, [r2], #4

0800691c <LoopFillZerobss>:
 800691c:	4b09      	ldr	r3, [pc, #36]	; (8006944 <LoopForever+0x16>)
 800691e:	429a      	cmp	r2, r3
 8006920:	d3f9      	bcc.n	8006916 <FillZerobss>
 8006922:	f7ff ffc0 	bl	80068a6 <SystemInit>
 8006926:	f000 f81d 	bl	8006964 <__libc_init_array>
 800692a:	f7ff feda 	bl	80066e2 <main>

0800692e <LoopForever>:
 800692e:	e7fe      	b.n	800692e <LoopForever>
 8006930:	20018000 	.word	0x20018000
 8006934:	0800bdd8 	.word	0x0800bdd8
 8006938:	20000000 	.word	0x20000000
 800693c:	200009c8 	.word	0x200009c8
 8006940:	200009c8 	.word	0x200009c8
 8006944:	2000144c 	.word	0x2000144c

08006948 <ADC1_2_IRQHandler>:
 8006948:	e7fe      	b.n	8006948 <ADC1_2_IRQHandler>
	...

0800694c <__aeabi_memclr>:
 800694c:	2200      	movs	r2, #0
 800694e:	f7f9 bdd7 	b.w	8000500 <__aeabi_memset>
 8006952:	bf00      	nop

08006954 <__aeabi_memcpy>:
 8006954:	f7f9 be22 	b.w	800059c <memcpy>

08006958 <__errno>:
 8006958:	4b01      	ldr	r3, [pc, #4]	; (8006960 <__errno+0x8>)
 800695a:	6818      	ldr	r0, [r3, #0]
 800695c:	4770      	bx	lr
 800695e:	bf00      	nop
 8006960:	20000018 	.word	0x20000018

08006964 <__libc_init_array>:
 8006964:	b570      	push	{r4, r5, r6, lr}
 8006966:	4e0d      	ldr	r6, [pc, #52]	; (800699c <__libc_init_array+0x38>)
 8006968:	4d0d      	ldr	r5, [pc, #52]	; (80069a0 <__libc_init_array+0x3c>)
 800696a:	1b76      	subs	r6, r6, r5
 800696c:	10b6      	asrs	r6, r6, #2
 800696e:	d006      	beq.n	800697e <__libc_init_array+0x1a>
 8006970:	2400      	movs	r4, #0
 8006972:	3401      	adds	r4, #1
 8006974:	f855 3b04 	ldr.w	r3, [r5], #4
 8006978:	4798      	blx	r3
 800697a:	42a6      	cmp	r6, r4
 800697c:	d1f9      	bne.n	8006972 <__libc_init_array+0xe>
 800697e:	4e09      	ldr	r6, [pc, #36]	; (80069a4 <__libc_init_array+0x40>)
 8006980:	4d09      	ldr	r5, [pc, #36]	; (80069a8 <__libc_init_array+0x44>)
 8006982:	1b76      	subs	r6, r6, r5
 8006984:	f004 feaa 	bl	800b6dc <_init>
 8006988:	10b6      	asrs	r6, r6, #2
 800698a:	d006      	beq.n	800699a <__libc_init_array+0x36>
 800698c:	2400      	movs	r4, #0
 800698e:	3401      	adds	r4, #1
 8006990:	f855 3b04 	ldr.w	r3, [r5], #4
 8006994:	4798      	blx	r3
 8006996:	42a6      	cmp	r6, r4
 8006998:	d1f9      	bne.n	800698e <__libc_init_array+0x2a>
 800699a:	bd70      	pop	{r4, r5, r6, pc}
 800699c:	0800bdc8 	.word	0x0800bdc8
 80069a0:	0800bdc8 	.word	0x0800bdc8
 80069a4:	0800bdd0 	.word	0x0800bdd0
 80069a8:	0800bdc8 	.word	0x0800bdc8

080069ac <memset>:
 80069ac:	b4f0      	push	{r4, r5, r6, r7}
 80069ae:	0786      	lsls	r6, r0, #30
 80069b0:	d043      	beq.n	8006a3a <memset+0x8e>
 80069b2:	1e54      	subs	r4, r2, #1
 80069b4:	2a00      	cmp	r2, #0
 80069b6:	d03e      	beq.n	8006a36 <memset+0x8a>
 80069b8:	b2ca      	uxtb	r2, r1
 80069ba:	4603      	mov	r3, r0
 80069bc:	e002      	b.n	80069c4 <memset+0x18>
 80069be:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 80069c2:	d338      	bcc.n	8006a36 <memset+0x8a>
 80069c4:	f803 2b01 	strb.w	r2, [r3], #1
 80069c8:	079d      	lsls	r5, r3, #30
 80069ca:	d1f8      	bne.n	80069be <memset+0x12>
 80069cc:	2c03      	cmp	r4, #3
 80069ce:	d92b      	bls.n	8006a28 <memset+0x7c>
 80069d0:	b2cd      	uxtb	r5, r1
 80069d2:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 80069d6:	2c0f      	cmp	r4, #15
 80069d8:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 80069dc:	d916      	bls.n	8006a0c <memset+0x60>
 80069de:	f1a4 0710 	sub.w	r7, r4, #16
 80069e2:	093f      	lsrs	r7, r7, #4
 80069e4:	f103 0620 	add.w	r6, r3, #32
 80069e8:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 80069ec:	f103 0210 	add.w	r2, r3, #16
 80069f0:	e942 5504 	strd	r5, r5, [r2, #-16]
 80069f4:	e942 5502 	strd	r5, r5, [r2, #-8]
 80069f8:	3210      	adds	r2, #16
 80069fa:	42b2      	cmp	r2, r6
 80069fc:	d1f8      	bne.n	80069f0 <memset+0x44>
 80069fe:	f004 040f 	and.w	r4, r4, #15
 8006a02:	3701      	adds	r7, #1
 8006a04:	2c03      	cmp	r4, #3
 8006a06:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8006a0a:	d90d      	bls.n	8006a28 <memset+0x7c>
 8006a0c:	461e      	mov	r6, r3
 8006a0e:	4622      	mov	r2, r4
 8006a10:	3a04      	subs	r2, #4
 8006a12:	2a03      	cmp	r2, #3
 8006a14:	f846 5b04 	str.w	r5, [r6], #4
 8006a18:	d8fa      	bhi.n	8006a10 <memset+0x64>
 8006a1a:	1f22      	subs	r2, r4, #4
 8006a1c:	f022 0203 	bic.w	r2, r2, #3
 8006a20:	3204      	adds	r2, #4
 8006a22:	4413      	add	r3, r2
 8006a24:	f004 0403 	and.w	r4, r4, #3
 8006a28:	b12c      	cbz	r4, 8006a36 <memset+0x8a>
 8006a2a:	b2c9      	uxtb	r1, r1
 8006a2c:	441c      	add	r4, r3
 8006a2e:	f803 1b01 	strb.w	r1, [r3], #1
 8006a32:	429c      	cmp	r4, r3
 8006a34:	d1fb      	bne.n	8006a2e <memset+0x82>
 8006a36:	bcf0      	pop	{r4, r5, r6, r7}
 8006a38:	4770      	bx	lr
 8006a3a:	4614      	mov	r4, r2
 8006a3c:	4603      	mov	r3, r0
 8006a3e:	e7c5      	b.n	80069cc <memset+0x20>

08006a40 <printf>:
 8006a40:	b40f      	push	{r0, r1, r2, r3}
 8006a42:	b500      	push	{lr}
 8006a44:	4907      	ldr	r1, [pc, #28]	; (8006a64 <printf+0x24>)
 8006a46:	b083      	sub	sp, #12
 8006a48:	ab04      	add	r3, sp, #16
 8006a4a:	6808      	ldr	r0, [r1, #0]
 8006a4c:	f853 2b04 	ldr.w	r2, [r3], #4
 8006a50:	6881      	ldr	r1, [r0, #8]
 8006a52:	9301      	str	r3, [sp, #4]
 8006a54:	f000 f860 	bl	8006b18 <_vfprintf_r>
 8006a58:	b003      	add	sp, #12
 8006a5a:	f85d eb04 	ldr.w	lr, [sp], #4
 8006a5e:	b004      	add	sp, #16
 8006a60:	4770      	bx	lr
 8006a62:	bf00      	nop
 8006a64:	20000018 	.word	0x20000018

08006a68 <_puts_r>:
 8006a68:	b570      	push	{r4, r5, r6, lr}
 8006a6a:	4605      	mov	r5, r0
 8006a6c:	b088      	sub	sp, #32
 8006a6e:	4608      	mov	r0, r1
 8006a70:	460c      	mov	r4, r1
 8006a72:	f7f9 fe45 	bl	8000700 <strlen>
 8006a76:	4a22      	ldr	r2, [pc, #136]	; (8006b00 <_puts_r+0x98>)
 8006a78:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8006a7a:	9404      	str	r4, [sp, #16]
 8006a7c:	2601      	movs	r6, #1
 8006a7e:	1c44      	adds	r4, r0, #1
 8006a80:	a904      	add	r1, sp, #16
 8006a82:	9206      	str	r2, [sp, #24]
 8006a84:	2202      	movs	r2, #2
 8006a86:	9403      	str	r4, [sp, #12]
 8006a88:	9005      	str	r0, [sp, #20]
 8006a8a:	68ac      	ldr	r4, [r5, #8]
 8006a8c:	9607      	str	r6, [sp, #28]
 8006a8e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8006a92:	b31b      	cbz	r3, 8006adc <_puts_r+0x74>
 8006a94:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8006a96:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006a9a:	07ce      	lsls	r6, r1, #31
 8006a9c:	b29a      	uxth	r2, r3
 8006a9e:	d401      	bmi.n	8006aa4 <_puts_r+0x3c>
 8006aa0:	0590      	lsls	r0, r2, #22
 8006aa2:	d525      	bpl.n	8006af0 <_puts_r+0x88>
 8006aa4:	0491      	lsls	r1, r2, #18
 8006aa6:	d406      	bmi.n	8006ab6 <_puts_r+0x4e>
 8006aa8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8006aaa:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8006aae:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8006ab2:	81a3      	strh	r3, [r4, #12]
 8006ab4:	6662      	str	r2, [r4, #100]	; 0x64
 8006ab6:	4628      	mov	r0, r5
 8006ab8:	aa01      	add	r2, sp, #4
 8006aba:	4621      	mov	r1, r4
 8006abc:	f003 f860 	bl	8009b80 <__sfvwrite_r>
 8006ac0:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8006ac2:	2800      	cmp	r0, #0
 8006ac4:	bf0c      	ite	eq
 8006ac6:	250a      	moveq	r5, #10
 8006ac8:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8006acc:	07da      	lsls	r2, r3, #31
 8006ace:	d402      	bmi.n	8006ad6 <_puts_r+0x6e>
 8006ad0:	89a3      	ldrh	r3, [r4, #12]
 8006ad2:	059b      	lsls	r3, r3, #22
 8006ad4:	d506      	bpl.n	8006ae4 <_puts_r+0x7c>
 8006ad6:	4628      	mov	r0, r5
 8006ad8:	b008      	add	sp, #32
 8006ada:	bd70      	pop	{r4, r5, r6, pc}
 8006adc:	4628      	mov	r0, r5
 8006ade:	f002 feb9 	bl	8009854 <__sinit>
 8006ae2:	e7d7      	b.n	8006a94 <_puts_r+0x2c>
 8006ae4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006ae6:	f003 fa07 	bl	8009ef8 <__retarget_lock_release_recursive>
 8006aea:	4628      	mov	r0, r5
 8006aec:	b008      	add	sp, #32
 8006aee:	bd70      	pop	{r4, r5, r6, pc}
 8006af0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8006af2:	f003 f9ff 	bl	8009ef4 <__retarget_lock_acquire_recursive>
 8006af6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006afa:	b29a      	uxth	r2, r3
 8006afc:	e7d2      	b.n	8006aa4 <_puts_r+0x3c>
 8006afe:	bf00      	nop
 8006b00:	0800bb34 	.word	0x0800bb34

08006b04 <puts>:
 8006b04:	4b02      	ldr	r3, [pc, #8]	; (8006b10 <puts+0xc>)
 8006b06:	4601      	mov	r1, r0
 8006b08:	6818      	ldr	r0, [r3, #0]
 8006b0a:	f7ff bfad 	b.w	8006a68 <_puts_r>
 8006b0e:	bf00      	nop
 8006b10:	20000018 	.word	0x20000018
 8006b14:	00000000 	.word	0x00000000

08006b18 <_vfprintf_r>:
 8006b18:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8006b1c:	b0d7      	sub	sp, #348	; 0x15c
 8006b1e:	461c      	mov	r4, r3
 8006b20:	4689      	mov	r9, r1
 8006b22:	4617      	mov	r7, r2
 8006b24:	4605      	mov	r5, r0
 8006b26:	9003      	str	r0, [sp, #12]
 8006b28:	f003 f9d2 	bl	8009ed0 <_localeconv_r>
 8006b2c:	6803      	ldr	r3, [r0, #0]
 8006b2e:	9316      	str	r3, [sp, #88]	; 0x58
 8006b30:	4618      	mov	r0, r3
 8006b32:	f7f9 fde5 	bl	8000700 <strlen>
 8006b36:	9408      	str	r4, [sp, #32]
 8006b38:	9015      	str	r0, [sp, #84]	; 0x54
 8006b3a:	b11d      	cbz	r5, 8006b44 <_vfprintf_r+0x2c>
 8006b3c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8006b3e:	2b00      	cmp	r3, #0
 8006b40:	f000 8107 	beq.w	8006d52 <_vfprintf_r+0x23a>
 8006b44:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8006b48:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8006b4c:	07c8      	lsls	r0, r1, #31
 8006b4e:	b293      	uxth	r3, r2
 8006b50:	d402      	bmi.n	8006b58 <_vfprintf_r+0x40>
 8006b52:	0599      	lsls	r1, r3, #22
 8006b54:	f140 811f 	bpl.w	8006d96 <_vfprintf_r+0x27e>
 8006b58:	049e      	lsls	r6, r3, #18
 8006b5a:	d40a      	bmi.n	8006b72 <_vfprintf_r+0x5a>
 8006b5c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8006b60:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8006b64:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8006b68:	f8a9 300c 	strh.w	r3, [r9, #12]
 8006b6c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8006b70:	b29b      	uxth	r3, r3
 8006b72:	071d      	lsls	r5, r3, #28
 8006b74:	f140 80b2 	bpl.w	8006cdc <_vfprintf_r+0x1c4>
 8006b78:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8006b7c:	2a00      	cmp	r2, #0
 8006b7e:	f000 80ad 	beq.w	8006cdc <_vfprintf_r+0x1c4>
 8006b82:	f003 021a 	and.w	r2, r3, #26
 8006b86:	2a0a      	cmp	r2, #10
 8006b88:	f000 80c9 	beq.w	8006d1e <_vfprintf_r+0x206>
 8006b8c:	2300      	movs	r3, #0
 8006b8e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8006da8 <_vfprintf_r+0x290>
 8006b92:	9310      	str	r3, [sp, #64]	; 0x40
 8006b94:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8006b98:	9317      	str	r3, [sp, #92]	; 0x5c
 8006b9a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8006b9e:	931b      	str	r3, [sp, #108]	; 0x6c
 8006ba0:	9318      	str	r3, [sp, #96]	; 0x60
 8006ba2:	9305      	str	r3, [sp, #20]
 8006ba4:	ab2d      	add	r3, sp, #180	; 0xb4
 8006ba6:	932a      	str	r3, [sp, #168]	; 0xa8
 8006ba8:	469b      	mov	fp, r3
 8006baa:	783b      	ldrb	r3, [r7, #0]
 8006bac:	f8cd 901c 	str.w	r9, [sp, #28]
 8006bb0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8006bb4:	2b00      	cmp	r3, #0
 8006bb6:	f000 8259 	beq.w	800706c <_vfprintf_r+0x554>
 8006bba:	2b25      	cmp	r3, #37	; 0x25
 8006bbc:	463c      	mov	r4, r7
 8006bbe:	d102      	bne.n	8006bc6 <_vfprintf_r+0xae>
 8006bc0:	e01d      	b.n	8006bfe <_vfprintf_r+0xe6>
 8006bc2:	2b25      	cmp	r3, #37	; 0x25
 8006bc4:	d003      	beq.n	8006bce <_vfprintf_r+0xb6>
 8006bc6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8006bca:	2b00      	cmp	r3, #0
 8006bcc:	d1f9      	bne.n	8006bc2 <_vfprintf_r+0xaa>
 8006bce:	1be5      	subs	r5, r4, r7
 8006bd0:	b18d      	cbz	r5, 8006bf6 <_vfprintf_r+0xde>
 8006bd2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8006bd6:	3301      	adds	r3, #1
 8006bd8:	442a      	add	r2, r5
 8006bda:	2b07      	cmp	r3, #7
 8006bdc:	f8cb 7000 	str.w	r7, [fp]
 8006be0:	f8cb 5004 	str.w	r5, [fp, #4]
 8006be4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8006be8:	f300 80ca 	bgt.w	8006d80 <_vfprintf_r+0x268>
 8006bec:	f10b 0b08 	add.w	fp, fp, #8
 8006bf0:	9b05      	ldr	r3, [sp, #20]
 8006bf2:	442b      	add	r3, r5
 8006bf4:	9305      	str	r3, [sp, #20]
 8006bf6:	7823      	ldrb	r3, [r4, #0]
 8006bf8:	2b00      	cmp	r3, #0
 8006bfa:	f000 8237 	beq.w	800706c <_vfprintf_r+0x554>
 8006bfe:	2300      	movs	r3, #0
 8006c00:	7866      	ldrb	r6, [r4, #1]
 8006c02:	9306      	str	r3, [sp, #24]
 8006c04:	4698      	mov	r8, r3
 8006c06:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8006c0a:	f104 0a01 	add.w	sl, r4, #1
 8006c0e:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8006c12:	252b      	movs	r5, #43	; 0x2b
 8006c14:	f10a 0a01 	add.w	sl, sl, #1
 8006c18:	f1a6 0320 	sub.w	r3, r6, #32
 8006c1c:	2b5a      	cmp	r3, #90	; 0x5a
 8006c1e:	f200 842a 	bhi.w	8007476 <_vfprintf_r+0x95e>
 8006c22:	e8df f013 	tbh	[pc, r3, lsl #1]
 8006c26:	03aa      	.short	0x03aa
 8006c28:	04280428 	.word	0x04280428
 8006c2c:	0428029c 	.word	0x0428029c
 8006c30:	04280428 	.word	0x04280428
 8006c34:	042802a7 	.word	0x042802a7
 8006c38:	02c60428 	.word	0x02c60428
 8006c3c:	042802d2 	.word	0x042802d2
 8006c40:	02dc02d7 	.word	0x02dc02d7
 8006c44:	02f60428 	.word	0x02f60428
 8006c48:	026d026d 	.word	0x026d026d
 8006c4c:	026d026d 	.word	0x026d026d
 8006c50:	026d026d 	.word	0x026d026d
 8006c54:	026d026d 	.word	0x026d026d
 8006c58:	0428026d 	.word	0x0428026d
 8006c5c:	04280428 	.word	0x04280428
 8006c60:	04280428 	.word	0x04280428
 8006c64:	04280428 	.word	0x04280428
 8006c68:	042802fb 	.word	0x042802fb
 8006c6c:	03f3033c 	.word	0x03f3033c
 8006c70:	02fb02fb 	.word	0x02fb02fb
 8006c74:	042802fb 	.word	0x042802fb
 8006c78:	04280428 	.word	0x04280428
 8006c7c:	03ee0428 	.word	0x03ee0428
 8006c80:	04280428 	.word	0x04280428
 8006c84:	0428009a 	.word	0x0428009a
 8006c88:	04280428 	.word	0x04280428
 8006c8c:	04280350 	.word	0x04280350
 8006c90:	04280379 	.word	0x04280379
 8006c94:	03900428 	.word	0x03900428
 8006c98:	04280428 	.word	0x04280428
 8006c9c:	04280428 	.word	0x04280428
 8006ca0:	04280428 	.word	0x04280428
 8006ca4:	04280428 	.word	0x04280428
 8006ca8:	042802fb 	.word	0x042802fb
 8006cac:	00c5033c 	.word	0x00c5033c
 8006cb0:	02fb02fb 	.word	0x02fb02fb
 8006cb4:	03d102fb 	.word	0x03d102fb
 8006cb8:	007000c5 	.word	0x007000c5
 8006cbc:	03b50428 	.word	0x03b50428
 8006cc0:	03c20428 	.word	0x03c20428
 8006cc4:	03de009c 	.word	0x03de009c
 8006cc8:	04280070 	.word	0x04280070
 8006ccc:	00720350 	.word	0x00720350
 8006cd0:	0428022c 	.word	0x0428022c
 8006cd4:	027c0428 	.word	0x027c0428
 8006cd8:	00720428 	.word	0x00720428
 8006cdc:	4649      	mov	r1, r9
 8006cde:	9803      	ldr	r0, [sp, #12]
 8006ce0:	f001 fc9a 	bl	8008618 <__swsetup_r>
 8006ce4:	b1a0      	cbz	r0, 8006d10 <_vfprintf_r+0x1f8>
 8006ce6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8006cea:	07d8      	lsls	r0, r3, #31
 8006cec:	d404      	bmi.n	8006cf8 <_vfprintf_r+0x1e0>
 8006cee:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8006cf2:	0599      	lsls	r1, r3, #22
 8006cf4:	f140 83b7 	bpl.w	8007466 <_vfprintf_r+0x94e>
 8006cf8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8006cfc:	9305      	str	r3, [sp, #20]
 8006cfe:	9805      	ldr	r0, [sp, #20]
 8006d00:	b057      	add	sp, #348	; 0x15c
 8006d02:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d06:	f048 0820 	orr.w	r8, r8, #32
 8006d0a:	f89a 6000 	ldrb.w	r6, [sl]
 8006d0e:	e781      	b.n	8006c14 <_vfprintf_r+0xfc>
 8006d10:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8006d14:	f003 021a 	and.w	r2, r3, #26
 8006d18:	2a0a      	cmp	r2, #10
 8006d1a:	f47f af37 	bne.w	8006b8c <_vfprintf_r+0x74>
 8006d1e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8006d22:	2a00      	cmp	r2, #0
 8006d24:	f6ff af32 	blt.w	8006b8c <_vfprintf_r+0x74>
 8006d28:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8006d2c:	07d2      	lsls	r2, r2, #31
 8006d2e:	d405      	bmi.n	8006d3c <_vfprintf_r+0x224>
 8006d30:	059b      	lsls	r3, r3, #22
 8006d32:	d403      	bmi.n	8006d3c <_vfprintf_r+0x224>
 8006d34:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8006d38:	f003 f8de 	bl	8009ef8 <__retarget_lock_release_recursive>
 8006d3c:	4623      	mov	r3, r4
 8006d3e:	463a      	mov	r2, r7
 8006d40:	4649      	mov	r1, r9
 8006d42:	9803      	ldr	r0, [sp, #12]
 8006d44:	f001 fc26 	bl	8008594 <__sbprintf>
 8006d48:	9005      	str	r0, [sp, #20]
 8006d4a:	9805      	ldr	r0, [sp, #20]
 8006d4c:	b057      	add	sp, #348	; 0x15c
 8006d4e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006d52:	9803      	ldr	r0, [sp, #12]
 8006d54:	f002 fd7e 	bl	8009854 <__sinit>
 8006d58:	e6f4      	b.n	8006b44 <_vfprintf_r+0x2c>
 8006d5a:	f048 0810 	orr.w	r8, r8, #16
 8006d5e:	f018 0f20 	tst.w	r8, #32
 8006d62:	f000 836c 	beq.w	800743e <_vfprintf_r+0x926>
 8006d66:	9c08      	ldr	r4, [sp, #32]
 8006d68:	3407      	adds	r4, #7
 8006d6a:	f024 0307 	bic.w	r3, r4, #7
 8006d6e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8006d72:	f103 0208 	add.w	r2, r3, #8
 8006d76:	9208      	str	r2, [sp, #32]
 8006d78:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8006d7c:	2200      	movs	r2, #0
 8006d7e:	e18c      	b.n	800709a <_vfprintf_r+0x582>
 8006d80:	aa2a      	add	r2, sp, #168	; 0xa8
 8006d82:	9907      	ldr	r1, [sp, #28]
 8006d84:	9803      	ldr	r0, [sp, #12]
 8006d86:	f004 f9f5 	bl	800b174 <__sprint_r>
 8006d8a:	2800      	cmp	r0, #0
 8006d8c:	f041 8376 	bne.w	800847c <_vfprintf_r+0x1964>
 8006d90:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006d94:	e72c      	b.n	8006bf0 <_vfprintf_r+0xd8>
 8006d96:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8006d9a:	f003 f8ab 	bl	8009ef4 <__retarget_lock_acquire_recursive>
 8006d9e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8006da2:	b293      	uxth	r3, r2
 8006da4:	e6d8      	b.n	8006b58 <_vfprintf_r+0x40>
 8006da6:	bf00      	nop
	...
 8006db0:	4643      	mov	r3, r8
 8006db2:	069f      	lsls	r7, r3, #26
 8006db4:	f140 832f 	bpl.w	8007416 <_vfprintf_r+0x8fe>
 8006db8:	9c08      	ldr	r4, [sp, #32]
 8006dba:	3407      	adds	r4, #7
 8006dbc:	f024 0407 	bic.w	r4, r4, #7
 8006dc0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8006dc4:	f104 0208 	add.w	r2, r4, #8
 8006dc8:	9208      	str	r2, [sp, #32]
 8006dca:	4604      	mov	r4, r0
 8006dcc:	460d      	mov	r5, r1
 8006dce:	2800      	cmp	r0, #0
 8006dd0:	f171 0200 	sbcs.w	r2, r1, #0
 8006dd4:	da05      	bge.n	8006de2 <_vfprintf_r+0x2ca>
 8006dd6:	222d      	movs	r2, #45	; 0x2d
 8006dd8:	4264      	negs	r4, r4
 8006dda:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8006dde:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8006de2:	aa56      	add	r2, sp, #344	; 0x158
 8006de4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8006de8:	9204      	str	r2, [sp, #16]
 8006dea:	f000 84b2 	beq.w	8007752 <_vfprintf_r+0xc3a>
 8006dee:	2201      	movs	r2, #1
 8006df0:	ea54 0105 	orrs.w	r1, r4, r5
 8006df4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8006df8:	f040 8159 	bne.w	80070ae <_vfprintf_r+0x596>
 8006dfc:	f1b9 0f00 	cmp.w	r9, #0
 8006e00:	f040 8619 	bne.w	8007a36 <_vfprintf_r+0xf1e>
 8006e04:	2a00      	cmp	r2, #0
 8006e06:	f040 8508 	bne.w	800781a <_vfprintf_r+0xd02>
 8006e0a:	f013 0301 	ands.w	r3, r3, #1
 8006e0e:	af56      	add	r7, sp, #344	; 0x158
 8006e10:	9309      	str	r3, [sp, #36]	; 0x24
 8006e12:	d002      	beq.n	8006e1a <_vfprintf_r+0x302>
 8006e14:	2330      	movs	r3, #48	; 0x30
 8006e16:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8006e1a:	2300      	movs	r3, #0
 8006e1c:	930a      	str	r3, [sp, #40]	; 0x28
 8006e1e:	930f      	str	r3, [sp, #60]	; 0x3c
 8006e20:	9314      	str	r3, [sp, #80]	; 0x50
 8006e22:	9311      	str	r3, [sp, #68]	; 0x44
 8006e24:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006e26:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006e2a:	454b      	cmp	r3, r9
 8006e2c:	bfb8      	it	lt
 8006e2e:	464b      	movlt	r3, r9
 8006e30:	9304      	str	r3, [sp, #16]
 8006e32:	b112      	cbz	r2, 8006e3a <_vfprintf_r+0x322>
 8006e34:	9b04      	ldr	r3, [sp, #16]
 8006e36:	3301      	adds	r3, #1
 8006e38:	9304      	str	r3, [sp, #16]
 8006e3a:	f018 0302 	ands.w	r3, r8, #2
 8006e3e:	930b      	str	r3, [sp, #44]	; 0x2c
 8006e40:	d002      	beq.n	8006e48 <_vfprintf_r+0x330>
 8006e42:	9b04      	ldr	r3, [sp, #16]
 8006e44:	3302      	adds	r3, #2
 8006e46:	9304      	str	r3, [sp, #16]
 8006e48:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8006e4c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006e4e:	930e      	str	r3, [sp, #56]	; 0x38
 8006e50:	d13f      	bne.n	8006ed2 <_vfprintf_r+0x3ba>
 8006e52:	9b06      	ldr	r3, [sp, #24]
 8006e54:	9904      	ldr	r1, [sp, #16]
 8006e56:	1a5d      	subs	r5, r3, r1
 8006e58:	2d00      	cmp	r5, #0
 8006e5a:	dd3a      	ble.n	8006ed2 <_vfprintf_r+0x3ba>
 8006e5c:	2d10      	cmp	r5, #16
 8006e5e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006e60:	dd29      	ble.n	8006eb6 <_vfprintf_r+0x39e>
 8006e62:	4659      	mov	r1, fp
 8006e64:	4620      	mov	r0, r4
 8006e66:	9620      	str	r6, [sp, #128]	; 0x80
 8006e68:	2310      	movs	r3, #16
 8006e6a:	9c03      	ldr	r4, [sp, #12]
 8006e6c:	9e07      	ldr	r6, [sp, #28]
 8006e6e:	46bb      	mov	fp, r7
 8006e70:	e004      	b.n	8006e7c <_vfprintf_r+0x364>
 8006e72:	3d10      	subs	r5, #16
 8006e74:	2d10      	cmp	r5, #16
 8006e76:	f101 0108 	add.w	r1, r1, #8
 8006e7a:	dd18      	ble.n	8006eae <_vfprintf_r+0x396>
 8006e7c:	3201      	adds	r2, #1
 8006e7e:	4fba      	ldr	r7, [pc, #744]	; (8007168 <_vfprintf_r+0x650>)
 8006e80:	3010      	adds	r0, #16
 8006e82:	2a07      	cmp	r2, #7
 8006e84:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8006e88:	e9c1 7300 	strd	r7, r3, [r1]
 8006e8c:	ddf1      	ble.n	8006e72 <_vfprintf_r+0x35a>
 8006e8e:	aa2a      	add	r2, sp, #168	; 0xa8
 8006e90:	4631      	mov	r1, r6
 8006e92:	4620      	mov	r0, r4
 8006e94:	930c      	str	r3, [sp, #48]	; 0x30
 8006e96:	f004 f96d 	bl	800b174 <__sprint_r>
 8006e9a:	2800      	cmp	r0, #0
 8006e9c:	f040 843d 	bne.w	800771a <_vfprintf_r+0xc02>
 8006ea0:	3d10      	subs	r5, #16
 8006ea2:	2d10      	cmp	r5, #16
 8006ea4:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8006ea8:	a92d      	add	r1, sp, #180	; 0xb4
 8006eaa:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8006eac:	dce6      	bgt.n	8006e7c <_vfprintf_r+0x364>
 8006eae:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8006eb0:	465f      	mov	r7, fp
 8006eb2:	4604      	mov	r4, r0
 8006eb4:	468b      	mov	fp, r1
 8006eb6:	3201      	adds	r2, #1
 8006eb8:	4bab      	ldr	r3, [pc, #684]	; (8007168 <_vfprintf_r+0x650>)
 8006eba:	442c      	add	r4, r5
 8006ebc:	2a07      	cmp	r2, #7
 8006ebe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006ec2:	e9cb 3500 	strd	r3, r5, [fp]
 8006ec6:	f300 84ff 	bgt.w	80078c8 <_vfprintf_r+0xdb0>
 8006eca:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8006ece:	f10b 0b08 	add.w	fp, fp, #8
 8006ed2:	b172      	cbz	r2, 8006ef2 <_vfprintf_r+0x3da>
 8006ed4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006ed6:	3201      	adds	r2, #1
 8006ed8:	3401      	adds	r4, #1
 8006eda:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8006ede:	2101      	movs	r1, #1
 8006ee0:	2a07      	cmp	r2, #7
 8006ee2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006ee6:	e9cb 0100 	strd	r0, r1, [fp]
 8006eea:	f300 8418 	bgt.w	800771e <_vfprintf_r+0xc06>
 8006eee:	f10b 0b08 	add.w	fp, fp, #8
 8006ef2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006ef4:	b16b      	cbz	r3, 8006f12 <_vfprintf_r+0x3fa>
 8006ef6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006ef8:	3301      	adds	r3, #1
 8006efa:	3402      	adds	r4, #2
 8006efc:	a923      	add	r1, sp, #140	; 0x8c
 8006efe:	2202      	movs	r2, #2
 8006f00:	2b07      	cmp	r3, #7
 8006f02:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8006f06:	e9cb 1200 	strd	r1, r2, [fp]
 8006f0a:	f300 8415 	bgt.w	8007738 <_vfprintf_r+0xc20>
 8006f0e:	f10b 0b08 	add.w	fp, fp, #8
 8006f12:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8006f14:	2b80      	cmp	r3, #128	; 0x80
 8006f16:	f000 8331 	beq.w	800757c <_vfprintf_r+0xa64>
 8006f1a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006f1c:	eba9 0503 	sub.w	r5, r9, r3
 8006f20:	2d00      	cmp	r5, #0
 8006f22:	dd37      	ble.n	8006f94 <_vfprintf_r+0x47c>
 8006f24:	2d10      	cmp	r5, #16
 8006f26:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8006f28:	4b90      	ldr	r3, [pc, #576]	; (800716c <_vfprintf_r+0x654>)
 8006f2a:	dd28      	ble.n	8006f7e <_vfprintf_r+0x466>
 8006f2c:	4659      	mov	r1, fp
 8006f2e:	4620      	mov	r0, r4
 8006f30:	46bb      	mov	fp, r7
 8006f32:	f04f 0910 	mov.w	r9, #16
 8006f36:	4637      	mov	r7, r6
 8006f38:	461c      	mov	r4, r3
 8006f3a:	9e07      	ldr	r6, [sp, #28]
 8006f3c:	e004      	b.n	8006f48 <_vfprintf_r+0x430>
 8006f3e:	3d10      	subs	r5, #16
 8006f40:	2d10      	cmp	r5, #16
 8006f42:	f101 0108 	add.w	r1, r1, #8
 8006f46:	dd15      	ble.n	8006f74 <_vfprintf_r+0x45c>
 8006f48:	3201      	adds	r2, #1
 8006f4a:	3010      	adds	r0, #16
 8006f4c:	2a07      	cmp	r2, #7
 8006f4e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8006f52:	e9c1 4900 	strd	r4, r9, [r1]
 8006f56:	ddf2      	ble.n	8006f3e <_vfprintf_r+0x426>
 8006f58:	aa2a      	add	r2, sp, #168	; 0xa8
 8006f5a:	4631      	mov	r1, r6
 8006f5c:	9803      	ldr	r0, [sp, #12]
 8006f5e:	f004 f909 	bl	800b174 <__sprint_r>
 8006f62:	2800      	cmp	r0, #0
 8006f64:	f040 83d9 	bne.w	800771a <_vfprintf_r+0xc02>
 8006f68:	3d10      	subs	r5, #16
 8006f6a:	2d10      	cmp	r5, #16
 8006f6c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8006f70:	a92d      	add	r1, sp, #180	; 0xb4
 8006f72:	dce9      	bgt.n	8006f48 <_vfprintf_r+0x430>
 8006f74:	463e      	mov	r6, r7
 8006f76:	4623      	mov	r3, r4
 8006f78:	465f      	mov	r7, fp
 8006f7a:	4604      	mov	r4, r0
 8006f7c:	468b      	mov	fp, r1
 8006f7e:	3201      	adds	r2, #1
 8006f80:	442c      	add	r4, r5
 8006f82:	2a07      	cmp	r2, #7
 8006f84:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006f88:	e9cb 3500 	strd	r3, r5, [fp]
 8006f8c:	f300 83ef 	bgt.w	800776e <_vfprintf_r+0xc56>
 8006f90:	f10b 0b08 	add.w	fp, fp, #8
 8006f94:	f418 7f80 	tst.w	r8, #256	; 0x100
 8006f98:	f040 8280 	bne.w	800749c <_vfprintf_r+0x984>
 8006f9c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006f9e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8006fa0:	f8cb 7000 	str.w	r7, [fp]
 8006fa4:	3301      	adds	r3, #1
 8006fa6:	4414      	add	r4, r2
 8006fa8:	2b07      	cmp	r3, #7
 8006faa:	942c      	str	r4, [sp, #176]	; 0xb0
 8006fac:	f8cb 2004 	str.w	r2, [fp, #4]
 8006fb0:	932b      	str	r3, [sp, #172]	; 0xac
 8006fb2:	f300 8392 	bgt.w	80076da <_vfprintf_r+0xbc2>
 8006fb6:	f10b 0b08 	add.w	fp, fp, #8
 8006fba:	f018 0f04 	tst.w	r8, #4
 8006fbe:	d03b      	beq.n	8007038 <_vfprintf_r+0x520>
 8006fc0:	9b06      	ldr	r3, [sp, #24]
 8006fc2:	9a04      	ldr	r2, [sp, #16]
 8006fc4:	1a9d      	subs	r5, r3, r2
 8006fc6:	2d00      	cmp	r5, #0
 8006fc8:	dd36      	ble.n	8007038 <_vfprintf_r+0x520>
 8006fca:	2d10      	cmp	r5, #16
 8006fcc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8006fce:	dd21      	ble.n	8007014 <_vfprintf_r+0x4fc>
 8006fd0:	2610      	movs	r6, #16
 8006fd2:	9f03      	ldr	r7, [sp, #12]
 8006fd4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 8006fd8:	e004      	b.n	8006fe4 <_vfprintf_r+0x4cc>
 8006fda:	3d10      	subs	r5, #16
 8006fdc:	2d10      	cmp	r5, #16
 8006fde:	f10b 0b08 	add.w	fp, fp, #8
 8006fe2:	dd17      	ble.n	8007014 <_vfprintf_r+0x4fc>
 8006fe4:	3301      	adds	r3, #1
 8006fe6:	4a60      	ldr	r2, [pc, #384]	; (8007168 <_vfprintf_r+0x650>)
 8006fe8:	3410      	adds	r4, #16
 8006fea:	2b07      	cmp	r3, #7
 8006fec:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8006ff0:	e9cb 2600 	strd	r2, r6, [fp]
 8006ff4:	ddf1      	ble.n	8006fda <_vfprintf_r+0x4c2>
 8006ff6:	aa2a      	add	r2, sp, #168	; 0xa8
 8006ff8:	4641      	mov	r1, r8
 8006ffa:	4638      	mov	r0, r7
 8006ffc:	f004 f8ba 	bl	800b174 <__sprint_r>
 8007000:	2800      	cmp	r0, #0
 8007002:	f040 856c 	bne.w	8007ade <_vfprintf_r+0xfc6>
 8007006:	3d10      	subs	r5, #16
 8007008:	2d10      	cmp	r5, #16
 800700a:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 800700e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007012:	dce7      	bgt.n	8006fe4 <_vfprintf_r+0x4cc>
 8007014:	3301      	adds	r3, #1
 8007016:	4a54      	ldr	r2, [pc, #336]	; (8007168 <_vfprintf_r+0x650>)
 8007018:	442c      	add	r4, r5
 800701a:	2b07      	cmp	r3, #7
 800701c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8007020:	e9cb 2500 	strd	r2, r5, [fp]
 8007024:	dd08      	ble.n	8007038 <_vfprintf_r+0x520>
 8007026:	aa2a      	add	r2, sp, #168	; 0xa8
 8007028:	9907      	ldr	r1, [sp, #28]
 800702a:	9803      	ldr	r0, [sp, #12]
 800702c:	f004 f8a2 	bl	800b174 <__sprint_r>
 8007030:	2800      	cmp	r0, #0
 8007032:	f040 82e9 	bne.w	8007608 <_vfprintf_r+0xaf0>
 8007036:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8007038:	9904      	ldr	r1, [sp, #16]
 800703a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800703e:	428a      	cmp	r2, r1
 8007040:	bfac      	ite	ge
 8007042:	189b      	addge	r3, r3, r2
 8007044:	185b      	addlt	r3, r3, r1
 8007046:	9305      	str	r3, [sp, #20]
 8007048:	2c00      	cmp	r4, #0
 800704a:	f040 82d5 	bne.w	80075f8 <_vfprintf_r+0xae0>
 800704e:	2300      	movs	r3, #0
 8007050:	932b      	str	r3, [sp, #172]	; 0xac
 8007052:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007054:	b11b      	cbz	r3, 800705e <_vfprintf_r+0x546>
 8007056:	990a      	ldr	r1, [sp, #40]	; 0x28
 8007058:	9803      	ldr	r0, [sp, #12]
 800705a:	f002 fc9d 	bl	8009998 <_free_r>
 800705e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007062:	4657      	mov	r7, sl
 8007064:	783b      	ldrb	r3, [r7, #0]
 8007066:	2b00      	cmp	r3, #0
 8007068:	f47f ada7 	bne.w	8006bba <_vfprintf_r+0xa2>
 800706c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800706e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007072:	2b00      	cmp	r3, #0
 8007074:	f041 80e7 	bne.w	8008246 <_vfprintf_r+0x172e>
 8007078:	2300      	movs	r3, #0
 800707a:	932b      	str	r3, [sp, #172]	; 0xac
 800707c:	e2cb      	b.n	8007616 <_vfprintf_r+0xafe>
 800707e:	4643      	mov	r3, r8
 8007080:	069a      	lsls	r2, r3, #26
 8007082:	f140 814e 	bpl.w	8007322 <_vfprintf_r+0x80a>
 8007086:	9c08      	ldr	r4, [sp, #32]
 8007088:	3407      	adds	r4, #7
 800708a:	f024 0207 	bic.w	r2, r4, #7
 800708e:	f102 0108 	add.w	r1, r2, #8
 8007092:	e9d2 4500 	ldrd	r4, r5, [r2]
 8007096:	9108      	str	r1, [sp, #32]
 8007098:	2201      	movs	r2, #1
 800709a:	2100      	movs	r1, #0
 800709c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 80070a0:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80070a4:	a956      	add	r1, sp, #344	; 0x158
 80070a6:	9104      	str	r1, [sp, #16]
 80070a8:	f47f aea2 	bne.w	8006df0 <_vfprintf_r+0x2d8>
 80070ac:	4698      	mov	r8, r3
 80070ae:	2a01      	cmp	r2, #1
 80070b0:	f000 8350 	beq.w	8007754 <_vfprintf_r+0xc3c>
 80070b4:	2a02      	cmp	r2, #2
 80070b6:	f000 831b 	beq.w	80076f0 <_vfprintf_r+0xbd8>
 80070ba:	a956      	add	r1, sp, #344	; 0x158
 80070bc:	e000      	b.n	80070c0 <_vfprintf_r+0x5a8>
 80070be:	4639      	mov	r1, r7
 80070c0:	08e2      	lsrs	r2, r4, #3
 80070c2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80070c6:	08e8      	lsrs	r0, r5, #3
 80070c8:	f004 0307 	and.w	r3, r4, #7
 80070cc:	4605      	mov	r5, r0
 80070ce:	4614      	mov	r4, r2
 80070d0:	3330      	adds	r3, #48	; 0x30
 80070d2:	ea54 0205 	orrs.w	r2, r4, r5
 80070d6:	f801 3c01 	strb.w	r3, [r1, #-1]
 80070da:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80070de:	d1ee      	bne.n	80070be <_vfprintf_r+0x5a6>
 80070e0:	f018 0f01 	tst.w	r8, #1
 80070e4:	f000 8314 	beq.w	8007710 <_vfprintf_r+0xbf8>
 80070e8:	2b30      	cmp	r3, #48	; 0x30
 80070ea:	f000 8311 	beq.w	8007710 <_vfprintf_r+0xbf8>
 80070ee:	9a04      	ldr	r2, [sp, #16]
 80070f0:	3902      	subs	r1, #2
 80070f2:	2330      	movs	r3, #48	; 0x30
 80070f4:	1a52      	subs	r2, r2, r1
 80070f6:	f807 3c01 	strb.w	r3, [r7, #-1]
 80070fa:	9209      	str	r2, [sp, #36]	; 0x24
 80070fc:	460f      	mov	r7, r1
 80070fe:	e68c      	b.n	8006e1a <_vfprintf_r+0x302>
 8007100:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8007104:	2200      	movs	r2, #0
 8007106:	f81a 6b01 	ldrb.w	r6, [sl], #1
 800710a:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 800710e:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8007112:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8007116:	2b09      	cmp	r3, #9
 8007118:	d9f5      	bls.n	8007106 <_vfprintf_r+0x5ee>
 800711a:	9206      	str	r2, [sp, #24]
 800711c:	e57c      	b.n	8006c18 <_vfprintf_r+0x100>
 800711e:	4b14      	ldr	r3, [pc, #80]	; (8007170 <_vfprintf_r+0x658>)
 8007120:	9317      	str	r3, [sp, #92]	; 0x5c
 8007122:	f018 0f20 	tst.w	r8, #32
 8007126:	f000 8114 	beq.w	8007352 <_vfprintf_r+0x83a>
 800712a:	9c08      	ldr	r4, [sp, #32]
 800712c:	3407      	adds	r4, #7
 800712e:	f024 0307 	bic.w	r3, r4, #7
 8007132:	e9d3 4500 	ldrd	r4, r5, [r3]
 8007136:	f103 0208 	add.w	r2, r3, #8
 800713a:	9208      	str	r2, [sp, #32]
 800713c:	f018 0f01 	tst.w	r8, #1
 8007140:	d009      	beq.n	8007156 <_vfprintf_r+0x63e>
 8007142:	ea54 0305 	orrs.w	r3, r4, r5
 8007146:	d006      	beq.n	8007156 <_vfprintf_r+0x63e>
 8007148:	2330      	movs	r3, #48	; 0x30
 800714a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800714e:	f048 0802 	orr.w	r8, r8, #2
 8007152:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8007156:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800715a:	2202      	movs	r2, #2
 800715c:	e79d      	b.n	800709a <_vfprintf_r+0x582>
 800715e:	f048 0801 	orr.w	r8, r8, #1
 8007162:	f89a 6000 	ldrb.w	r6, [sl]
 8007166:	e555      	b.n	8006c14 <_vfprintf_r+0xfc>
 8007168:	0800bb7c 	.word	0x0800bb7c
 800716c:	0800bb8c 	.word	0x0800bb8c
 8007170:	0800bb48 	.word	0x0800bb48
 8007174:	9e03      	ldr	r6, [sp, #12]
 8007176:	4630      	mov	r0, r6
 8007178:	f002 feaa 	bl	8009ed0 <_localeconv_r>
 800717c:	6843      	ldr	r3, [r0, #4]
 800717e:	9318      	str	r3, [sp, #96]	; 0x60
 8007180:	4618      	mov	r0, r3
 8007182:	f7f9 fabd 	bl	8000700 <strlen>
 8007186:	901b      	str	r0, [sp, #108]	; 0x6c
 8007188:	4604      	mov	r4, r0
 800718a:	4630      	mov	r0, r6
 800718c:	f002 fea0 	bl	8009ed0 <_localeconv_r>
 8007190:	6883      	ldr	r3, [r0, #8]
 8007192:	931a      	str	r3, [sp, #104]	; 0x68
 8007194:	2c00      	cmp	r4, #0
 8007196:	f43f adb8 	beq.w	8006d0a <_vfprintf_r+0x1f2>
 800719a:	f89a 6000 	ldrb.w	r6, [sl]
 800719e:	2b00      	cmp	r3, #0
 80071a0:	f43f ad38 	beq.w	8006c14 <_vfprintf_r+0xfc>
 80071a4:	781b      	ldrb	r3, [r3, #0]
 80071a6:	2b00      	cmp	r3, #0
 80071a8:	f43f ad34 	beq.w	8006c14 <_vfprintf_r+0xfc>
 80071ac:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80071b0:	e530      	b.n	8006c14 <_vfprintf_r+0xfc>
 80071b2:	9b08      	ldr	r3, [sp, #32]
 80071b4:	f89a 6000 	ldrb.w	r6, [sl]
 80071b8:	681a      	ldr	r2, [r3, #0]
 80071ba:	9206      	str	r2, [sp, #24]
 80071bc:	2a00      	cmp	r2, #0
 80071be:	f103 0304 	add.w	r3, r3, #4
 80071c2:	f2c0 8697 	blt.w	8007ef4 <_vfprintf_r+0x13dc>
 80071c6:	9308      	str	r3, [sp, #32]
 80071c8:	e524      	b.n	8006c14 <_vfprintf_r+0xfc>
 80071ca:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80071ce:	f89a 6000 	ldrb.w	r6, [sl]
 80071d2:	e51f      	b.n	8006c14 <_vfprintf_r+0xfc>
 80071d4:	f89a 6000 	ldrb.w	r6, [sl]
 80071d8:	f048 0804 	orr.w	r8, r8, #4
 80071dc:	e51a      	b.n	8006c14 <_vfprintf_r+0xfc>
 80071de:	f89a 6000 	ldrb.w	r6, [sl]
 80071e2:	2e2a      	cmp	r6, #42	; 0x2a
 80071e4:	f10a 0201 	add.w	r2, sl, #1
 80071e8:	f001 81b0 	beq.w	800854c <_vfprintf_r+0x1a34>
 80071ec:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80071f0:	2b09      	cmp	r3, #9
 80071f2:	4692      	mov	sl, r2
 80071f4:	f04f 0900 	mov.w	r9, #0
 80071f8:	f63f ad0e 	bhi.w	8006c18 <_vfprintf_r+0x100>
 80071fc:	f81a 6b01 	ldrb.w	r6, [sl], #1
 8007200:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 8007204:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 8007208:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 800720c:	2b09      	cmp	r3, #9
 800720e:	d9f5      	bls.n	80071fc <_vfprintf_r+0x6e4>
 8007210:	e502      	b.n	8006c18 <_vfprintf_r+0x100>
 8007212:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8007216:	f89a 6000 	ldrb.w	r6, [sl]
 800721a:	e4fb      	b.n	8006c14 <_vfprintf_r+0xfc>
 800721c:	9c08      	ldr	r4, [sp, #32]
 800721e:	3407      	adds	r4, #7
 8007220:	f024 0407 	bic.w	r4, r4, #7
 8007224:	ed94 7b00 	vldr	d7, [r4]
 8007228:	ec52 1b17 	vmov	r1, r2, d7
 800722c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8007230:	931d      	str	r3, [sp, #116]	; 0x74
 8007232:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8007236:	3408      	adds	r4, #8
 8007238:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800723c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8007240:	4bba      	ldr	r3, [pc, #744]	; (800752c <_vfprintf_r+0xa14>)
 8007242:	9408      	str	r4, [sp, #32]
 8007244:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8007248:	f7f9 ff70 	bl	800112c <__aeabi_dcmpun>
 800724c:	2800      	cmp	r0, #0
 800724e:	f040 846f 	bne.w	8007b30 <_vfprintf_r+0x1018>
 8007252:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8007256:	4bb5      	ldr	r3, [pc, #724]	; (800752c <_vfprintf_r+0xa14>)
 8007258:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800725c:	f7f9 ff48 	bl	80010f0 <__aeabi_dcmple>
 8007260:	2800      	cmp	r0, #0
 8007262:	f040 8465 	bne.w	8007b30 <_vfprintf_r+0x1018>
 8007266:	2200      	movs	r2, #0
 8007268:	2300      	movs	r3, #0
 800726a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800726e:	f7f9 ff35 	bl	80010dc <__aeabi_dcmplt>
 8007272:	2800      	cmp	r0, #0
 8007274:	f040 855b 	bne.w	8007d2e <_vfprintf_r+0x1216>
 8007278:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800727c:	4fac      	ldr	r7, [pc, #688]	; (8007530 <_vfprintf_r+0xa18>)
 800727e:	4bad      	ldr	r3, [pc, #692]	; (8007534 <_vfprintf_r+0xa1c>)
 8007280:	2000      	movs	r0, #0
 8007282:	2103      	movs	r1, #3
 8007284:	9104      	str	r1, [sp, #16]
 8007286:	900a      	str	r0, [sp, #40]	; 0x28
 8007288:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800728c:	2e47      	cmp	r6, #71	; 0x47
 800728e:	bfd8      	it	le
 8007290:	461f      	movle	r7, r3
 8007292:	9109      	str	r1, [sp, #36]	; 0x24
 8007294:	4681      	mov	r9, r0
 8007296:	900f      	str	r0, [sp, #60]	; 0x3c
 8007298:	9014      	str	r0, [sp, #80]	; 0x50
 800729a:	9011      	str	r0, [sp, #68]	; 0x44
 800729c:	e5c9      	b.n	8006e32 <_vfprintf_r+0x31a>
 800729e:	9808      	ldr	r0, [sp, #32]
 80072a0:	2300      	movs	r3, #0
 80072a2:	6801      	ldr	r1, [r0, #0]
 80072a4:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 80072a8:	461a      	mov	r2, r3
 80072aa:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 80072ae:	2301      	movs	r3, #1
 80072b0:	1d01      	adds	r1, r0, #4
 80072b2:	9304      	str	r3, [sp, #16]
 80072b4:	920a      	str	r2, [sp, #40]	; 0x28
 80072b6:	4691      	mov	r9, r2
 80072b8:	920f      	str	r2, [sp, #60]	; 0x3c
 80072ba:	9214      	str	r2, [sp, #80]	; 0x50
 80072bc:	9211      	str	r2, [sp, #68]	; 0x44
 80072be:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80072c2:	af3d      	add	r7, sp, #244	; 0xf4
 80072c4:	e5b9      	b.n	8006e3a <_vfprintf_r+0x322>
 80072c6:	9b08      	ldr	r3, [sp, #32]
 80072c8:	681f      	ldr	r7, [r3, #0]
 80072ca:	2500      	movs	r5, #0
 80072cc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80072d0:	1d1c      	adds	r4, r3, #4
 80072d2:	2f00      	cmp	r7, #0
 80072d4:	f000 8639 	beq.w	8007f4a <_vfprintf_r+0x1432>
 80072d8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80072dc:	f000 8711 	beq.w	8008102 <_vfprintf_r+0x15ea>
 80072e0:	464a      	mov	r2, r9
 80072e2:	4629      	mov	r1, r5
 80072e4:	4638      	mov	r0, r7
 80072e6:	f7f9 fa7b 	bl	80007e0 <memchr>
 80072ea:	900a      	str	r0, [sp, #40]	; 0x28
 80072ec:	2800      	cmp	r0, #0
 80072ee:	f000 85e7 	beq.w	8007ec0 <_vfprintf_r+0x13a8>
 80072f2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80072f4:	1bdb      	subs	r3, r3, r7
 80072f6:	9309      	str	r3, [sp, #36]	; 0x24
 80072f8:	46a9      	mov	r9, r5
 80072fa:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80072fe:	9408      	str	r4, [sp, #32]
 8007300:	9304      	str	r3, [sp, #16]
 8007302:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 8007306:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 800730a:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 800730e:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8007312:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8007316:	e58c      	b.n	8006e32 <_vfprintf_r+0x31a>
 8007318:	f048 0310 	orr.w	r3, r8, #16
 800731c:	069a      	lsls	r2, r3, #26
 800731e:	f53f aeb2 	bmi.w	8007086 <_vfprintf_r+0x56e>
 8007322:	9a08      	ldr	r2, [sp, #32]
 8007324:	06df      	lsls	r7, r3, #27
 8007326:	f102 0104 	add.w	r1, r2, #4
 800732a:	f100 837e 	bmi.w	8007a2a <_vfprintf_r+0xf12>
 800732e:	065d      	lsls	r5, r3, #25
 8007330:	9a08      	ldr	r2, [sp, #32]
 8007332:	f100 84e4 	bmi.w	8007cfe <_vfprintf_r+0x11e6>
 8007336:	059c      	lsls	r4, r3, #22
 8007338:	f140 8377 	bpl.w	8007a2a <_vfprintf_r+0xf12>
 800733c:	7814      	ldrb	r4, [r2, #0]
 800733e:	9108      	str	r1, [sp, #32]
 8007340:	2500      	movs	r5, #0
 8007342:	2201      	movs	r2, #1
 8007344:	e6a9      	b.n	800709a <_vfprintf_r+0x582>
 8007346:	4b7c      	ldr	r3, [pc, #496]	; (8007538 <_vfprintf_r+0xa20>)
 8007348:	9317      	str	r3, [sp, #92]	; 0x5c
 800734a:	f018 0f20 	tst.w	r8, #32
 800734e:	f47f aeec 	bne.w	800712a <_vfprintf_r+0x612>
 8007352:	9a08      	ldr	r2, [sp, #32]
 8007354:	f018 0f10 	tst.w	r8, #16
 8007358:	f102 0304 	add.w	r3, r2, #4
 800735c:	f040 8354 	bne.w	8007a08 <_vfprintf_r+0xef0>
 8007360:	f018 0f40 	tst.w	r8, #64	; 0x40
 8007364:	9a08      	ldr	r2, [sp, #32]
 8007366:	f040 84d0 	bne.w	8007d0a <_vfprintf_r+0x11f2>
 800736a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800736e:	f000 834b 	beq.w	8007a08 <_vfprintf_r+0xef0>
 8007372:	7814      	ldrb	r4, [r2, #0]
 8007374:	9308      	str	r3, [sp, #32]
 8007376:	2500      	movs	r5, #0
 8007378:	e6e0      	b.n	800713c <_vfprintf_r+0x624>
 800737a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800737e:	f89a 6000 	ldrb.w	r6, [sl]
 8007382:	2b00      	cmp	r3, #0
 8007384:	f47f ac46 	bne.w	8006c14 <_vfprintf_r+0xfc>
 8007388:	2320      	movs	r3, #32
 800738a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800738e:	e441      	b.n	8006c14 <_vfprintf_r+0xfc>
 8007390:	f89a 6000 	ldrb.w	r6, [sl]
 8007394:	2e6c      	cmp	r6, #108	; 0x6c
 8007396:	bf03      	ittte	eq
 8007398:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800739c:	f048 0820 	orreq.w	r8, r8, #32
 80073a0:	f10a 0a01 	addeq.w	sl, sl, #1
 80073a4:	f048 0810 	orrne.w	r8, r8, #16
 80073a8:	e434      	b.n	8006c14 <_vfprintf_r+0xfc>
 80073aa:	9a08      	ldr	r2, [sp, #32]
 80073ac:	f018 0f20 	tst.w	r8, #32
 80073b0:	f852 3b04 	ldr.w	r3, [r2], #4
 80073b4:	9208      	str	r2, [sp, #32]
 80073b6:	f000 83a1 	beq.w	8007afc <_vfprintf_r+0xfe4>
 80073ba:	9a05      	ldr	r2, [sp, #20]
 80073bc:	4610      	mov	r0, r2
 80073be:	17d1      	asrs	r1, r2, #31
 80073c0:	e9c3 0100 	strd	r0, r1, [r3]
 80073c4:	4657      	mov	r7, sl
 80073c6:	e64d      	b.n	8007064 <_vfprintf_r+0x54c>
 80073c8:	f89a 6000 	ldrb.w	r6, [sl]
 80073cc:	2e68      	cmp	r6, #104	; 0x68
 80073ce:	bf03      	ittte	eq
 80073d0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80073d4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80073d8:	f10a 0a01 	addeq.w	sl, sl, #1
 80073dc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80073e0:	e418      	b.n	8006c14 <_vfprintf_r+0xfc>
 80073e2:	9908      	ldr	r1, [sp, #32]
 80073e4:	4b55      	ldr	r3, [pc, #340]	; (800753c <_vfprintf_r+0xa24>)
 80073e6:	680c      	ldr	r4, [r1, #0]
 80073e8:	9317      	str	r3, [sp, #92]	; 0x5c
 80073ea:	f647 0230 	movw	r2, #30768	; 0x7830
 80073ee:	3104      	adds	r1, #4
 80073f0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80073f4:	f048 0302 	orr.w	r3, r8, #2
 80073f8:	9108      	str	r1, [sp, #32]
 80073fa:	2500      	movs	r5, #0
 80073fc:	2202      	movs	r2, #2
 80073fe:	2678      	movs	r6, #120	; 0x78
 8007400:	e64b      	b.n	800709a <_vfprintf_r+0x582>
 8007402:	f048 0808 	orr.w	r8, r8, #8
 8007406:	f89a 6000 	ldrb.w	r6, [sl]
 800740a:	e403      	b.n	8006c14 <_vfprintf_r+0xfc>
 800740c:	f048 0310 	orr.w	r3, r8, #16
 8007410:	069f      	lsls	r7, r3, #26
 8007412:	f53f acd1 	bmi.w	8006db8 <_vfprintf_r+0x2a0>
 8007416:	9908      	ldr	r1, [sp, #32]
 8007418:	06dd      	lsls	r5, r3, #27
 800741a:	f101 0204 	add.w	r2, r1, #4
 800741e:	f100 82fd 	bmi.w	8007a1c <_vfprintf_r+0xf04>
 8007422:	065c      	lsls	r4, r3, #25
 8007424:	9908      	ldr	r1, [sp, #32]
 8007426:	f100 8475 	bmi.w	8007d14 <_vfprintf_r+0x11fc>
 800742a:	0598      	lsls	r0, r3, #22
 800742c:	f140 82f6 	bpl.w	8007a1c <_vfprintf_r+0xf04>
 8007430:	f991 4000 	ldrsb.w	r4, [r1]
 8007434:	9208      	str	r2, [sp, #32]
 8007436:	17e5      	asrs	r5, r4, #31
 8007438:	4620      	mov	r0, r4
 800743a:	4629      	mov	r1, r5
 800743c:	e4c7      	b.n	8006dce <_vfprintf_r+0x2b6>
 800743e:	9a08      	ldr	r2, [sp, #32]
 8007440:	f018 0f10 	tst.w	r8, #16
 8007444:	f102 0304 	add.w	r3, r2, #4
 8007448:	f040 82e3 	bne.w	8007a12 <_vfprintf_r+0xefa>
 800744c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8007450:	9a08      	ldr	r2, [sp, #32]
 8007452:	f040 8467 	bne.w	8007d24 <_vfprintf_r+0x120c>
 8007456:	f418 7f00 	tst.w	r8, #512	; 0x200
 800745a:	f000 82da 	beq.w	8007a12 <_vfprintf_r+0xefa>
 800745e:	7814      	ldrb	r4, [r2, #0]
 8007460:	9308      	str	r3, [sp, #32]
 8007462:	2500      	movs	r5, #0
 8007464:	e488      	b.n	8006d78 <_vfprintf_r+0x260>
 8007466:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800746a:	f002 fd45 	bl	8009ef8 <__retarget_lock_release_recursive>
 800746e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8007472:	9305      	str	r3, [sp, #20]
 8007474:	e443      	b.n	8006cfe <_vfprintf_r+0x1e6>
 8007476:	2e00      	cmp	r6, #0
 8007478:	f43f adf8 	beq.w	800706c <_vfprintf_r+0x554>
 800747c:	2300      	movs	r3, #0
 800747e:	2101      	movs	r1, #1
 8007480:	461a      	mov	r2, r3
 8007482:	9104      	str	r1, [sp, #16]
 8007484:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8007488:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800748c:	930a      	str	r3, [sp, #40]	; 0x28
 800748e:	4699      	mov	r9, r3
 8007490:	930f      	str	r3, [sp, #60]	; 0x3c
 8007492:	9314      	str	r3, [sp, #80]	; 0x50
 8007494:	9311      	str	r3, [sp, #68]	; 0x44
 8007496:	9109      	str	r1, [sp, #36]	; 0x24
 8007498:	af3d      	add	r7, sp, #244	; 0xf4
 800749a:	e4ce      	b.n	8006e3a <_vfprintf_r+0x322>
 800749c:	2e65      	cmp	r6, #101	; 0x65
 800749e:	f340 80ca 	ble.w	8007636 <_vfprintf_r+0xb1e>
 80074a2:	2200      	movs	r2, #0
 80074a4:	2300      	movs	r3, #0
 80074a6:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 80074aa:	f7f9 fe0d 	bl	80010c8 <__aeabi_dcmpeq>
 80074ae:	2800      	cmp	r0, #0
 80074b0:	f000 8169 	beq.w	8007786 <_vfprintf_r+0xc6e>
 80074b4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80074b6:	4a22      	ldr	r2, [pc, #136]	; (8007540 <_vfprintf_r+0xa28>)
 80074b8:	f8cb 2000 	str.w	r2, [fp]
 80074bc:	3301      	adds	r3, #1
 80074be:	3401      	adds	r4, #1
 80074c0:	2201      	movs	r2, #1
 80074c2:	2b07      	cmp	r3, #7
 80074c4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80074c8:	f8cb 2004 	str.w	r2, [fp, #4]
 80074cc:	f300 8406 	bgt.w	8007cdc <_vfprintf_r+0x11c4>
 80074d0:	f10b 0b08 	add.w	fp, fp, #8
 80074d4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80074d6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80074d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80074da:	4293      	cmp	r3, r2
 80074dc:	db03      	blt.n	80074e6 <_vfprintf_r+0x9ce>
 80074de:	f018 0f01 	tst.w	r8, #1
 80074e2:	f43f ad6a 	beq.w	8006fba <_vfprintf_r+0x4a2>
 80074e6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80074e8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80074ea:	f8cb 2000 	str.w	r2, [fp]
 80074ee:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80074f0:	f8cb 2004 	str.w	r2, [fp, #4]
 80074f4:	3301      	adds	r3, #1
 80074f6:	4414      	add	r4, r2
 80074f8:	2b07      	cmp	r3, #7
 80074fa:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80074fe:	f300 8517 	bgt.w	8007f30 <_vfprintf_r+0x1418>
 8007502:	f10b 0b08 	add.w	fp, fp, #8
 8007506:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8007508:	1e5d      	subs	r5, r3, #1
 800750a:	2d00      	cmp	r5, #0
 800750c:	f77f ad55 	ble.w	8006fba <_vfprintf_r+0x4a2>
 8007510:	2d10      	cmp	r5, #16
 8007512:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8007514:	4b0b      	ldr	r3, [pc, #44]	; (8007544 <_vfprintf_r+0xa2c>)
 8007516:	f340 82e7 	ble.w	8007ae8 <_vfprintf_r+0xfd0>
 800751a:	4619      	mov	r1, r3
 800751c:	2610      	movs	r6, #16
 800751e:	4623      	mov	r3, r4
 8007520:	9f03      	ldr	r7, [sp, #12]
 8007522:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8007526:	460c      	mov	r4, r1
 8007528:	e014      	b.n	8007554 <_vfprintf_r+0xa3c>
 800752a:	bf00      	nop
 800752c:	7fefffff 	.word	0x7fefffff
 8007530:	0800bb3c 	.word	0x0800bb3c
 8007534:	0800bb38 	.word	0x0800bb38
 8007538:	0800bb5c 	.word	0x0800bb5c
 800753c:	0800bb48 	.word	0x0800bb48
 8007540:	0800bb78 	.word	0x0800bb78
 8007544:	0800bb8c 	.word	0x0800bb8c
 8007548:	f10b 0b08 	add.w	fp, fp, #8
 800754c:	3d10      	subs	r5, #16
 800754e:	2d10      	cmp	r5, #16
 8007550:	f340 82c7 	ble.w	8007ae2 <_vfprintf_r+0xfca>
 8007554:	3201      	adds	r2, #1
 8007556:	3310      	adds	r3, #16
 8007558:	2a07      	cmp	r2, #7
 800755a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800755e:	e9cb 4600 	strd	r4, r6, [fp]
 8007562:	ddf1      	ble.n	8007548 <_vfprintf_r+0xa30>
 8007564:	aa2a      	add	r2, sp, #168	; 0xa8
 8007566:	4649      	mov	r1, r9
 8007568:	4638      	mov	r0, r7
 800756a:	f003 fe03 	bl	800b174 <__sprint_r>
 800756e:	2800      	cmp	r0, #0
 8007570:	d14c      	bne.n	800760c <_vfprintf_r+0xaf4>
 8007572:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8007576:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800757a:	e7e7      	b.n	800754c <_vfprintf_r+0xa34>
 800757c:	9b06      	ldr	r3, [sp, #24]
 800757e:	9a04      	ldr	r2, [sp, #16]
 8007580:	1a9d      	subs	r5, r3, r2
 8007582:	2d00      	cmp	r5, #0
 8007584:	f77f acc9 	ble.w	8006f1a <_vfprintf_r+0x402>
 8007588:	2d10      	cmp	r5, #16
 800758a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800758c:	4bbc      	ldr	r3, [pc, #752]	; (8007880 <_vfprintf_r+0xd68>)
 800758e:	dd27      	ble.n	80075e0 <_vfprintf_r+0xac8>
 8007590:	4659      	mov	r1, fp
 8007592:	4620      	mov	r0, r4
 8007594:	46bb      	mov	fp, r7
 8007596:	461c      	mov	r4, r3
 8007598:	4637      	mov	r7, r6
 800759a:	9e07      	ldr	r6, [sp, #28]
 800759c:	e004      	b.n	80075a8 <_vfprintf_r+0xa90>
 800759e:	3d10      	subs	r5, #16
 80075a0:	2d10      	cmp	r5, #16
 80075a2:	f101 0108 	add.w	r1, r1, #8
 80075a6:	dd16      	ble.n	80075d6 <_vfprintf_r+0xabe>
 80075a8:	3201      	adds	r2, #1
 80075aa:	3010      	adds	r0, #16
 80075ac:	2310      	movs	r3, #16
 80075ae:	2a07      	cmp	r2, #7
 80075b0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80075b4:	600c      	str	r4, [r1, #0]
 80075b6:	604b      	str	r3, [r1, #4]
 80075b8:	ddf1      	ble.n	800759e <_vfprintf_r+0xa86>
 80075ba:	aa2a      	add	r2, sp, #168	; 0xa8
 80075bc:	4631      	mov	r1, r6
 80075be:	9803      	ldr	r0, [sp, #12]
 80075c0:	f003 fdd8 	bl	800b174 <__sprint_r>
 80075c4:	2800      	cmp	r0, #0
 80075c6:	f040 80a8 	bne.w	800771a <_vfprintf_r+0xc02>
 80075ca:	3d10      	subs	r5, #16
 80075cc:	2d10      	cmp	r5, #16
 80075ce:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80075d2:	a92d      	add	r1, sp, #180	; 0xb4
 80075d4:	dce8      	bgt.n	80075a8 <_vfprintf_r+0xa90>
 80075d6:	463e      	mov	r6, r7
 80075d8:	4623      	mov	r3, r4
 80075da:	465f      	mov	r7, fp
 80075dc:	4604      	mov	r4, r0
 80075de:	468b      	mov	fp, r1
 80075e0:	3201      	adds	r2, #1
 80075e2:	442c      	add	r4, r5
 80075e4:	2a07      	cmp	r2, #7
 80075e6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80075ea:	e9cb 3500 	strd	r3, r5, [fp]
 80075ee:	f300 8292 	bgt.w	8007b16 <_vfprintf_r+0xffe>
 80075f2:	f10b 0b08 	add.w	fp, fp, #8
 80075f6:	e490      	b.n	8006f1a <_vfprintf_r+0x402>
 80075f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80075fa:	9907      	ldr	r1, [sp, #28]
 80075fc:	9803      	ldr	r0, [sp, #12]
 80075fe:	f003 fdb9 	bl	800b174 <__sprint_r>
 8007602:	2800      	cmp	r0, #0
 8007604:	f43f ad23 	beq.w	800704e <_vfprintf_r+0x536>
 8007608:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800760c:	990a      	ldr	r1, [sp, #40]	; 0x28
 800760e:	b111      	cbz	r1, 8007616 <_vfprintf_r+0xafe>
 8007610:	9803      	ldr	r0, [sp, #12]
 8007612:	f002 f9c1 	bl	8009998 <_free_r>
 8007616:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800761a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800761e:	07d0      	lsls	r0, r2, #31
 8007620:	d402      	bmi.n	8007628 <_vfprintf_r+0xb10>
 8007622:	0599      	lsls	r1, r3, #22
 8007624:	f140 81d0 	bpl.w	80079c8 <_vfprintf_r+0xeb0>
 8007628:	065a      	lsls	r2, r3, #25
 800762a:	f53f ab65 	bmi.w	8006cf8 <_vfprintf_r+0x1e0>
 800762e:	9805      	ldr	r0, [sp, #20]
 8007630:	b057      	add	sp, #348	; 0x15c
 8007632:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007636:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8007638:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800763a:	2a01      	cmp	r2, #1
 800763c:	f104 0401 	add.w	r4, r4, #1
 8007640:	f103 0501 	add.w	r5, r3, #1
 8007644:	f10b 0608 	add.w	r6, fp, #8
 8007648:	f340 811c 	ble.w	8007884 <_vfprintf_r+0xd6c>
 800764c:	2301      	movs	r3, #1
 800764e:	2d07      	cmp	r5, #7
 8007650:	f8cb 7000 	str.w	r7, [fp]
 8007654:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8007658:	f8cb 3004 	str.w	r3, [fp, #4]
 800765c:	f300 81bb 	bgt.w	80079d6 <_vfprintf_r+0xebe>
 8007660:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8007662:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8007664:	1c69      	adds	r1, r5, #1
 8007666:	441c      	add	r4, r3
 8007668:	2907      	cmp	r1, #7
 800766a:	910b      	str	r1, [sp, #44]	; 0x2c
 800766c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8007670:	e9c6 2300 	strd	r2, r3, [r6]
 8007674:	f300 81bb 	bgt.w	80079ee <_vfprintf_r+0xed6>
 8007678:	3608      	adds	r6, #8
 800767a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800767c:	1c53      	adds	r3, r2, #1
 800767e:	461d      	mov	r5, r3
 8007680:	9509      	str	r5, [sp, #36]	; 0x24
 8007682:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8007684:	930e      	str	r3, [sp, #56]	; 0x38
 8007686:	2200      	movs	r2, #0
 8007688:	2300      	movs	r3, #0
 800768a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800768e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8007692:	f106 0b08 	add.w	fp, r6, #8
 8007696:	f7f9 fd17 	bl	80010c8 <__aeabi_dcmpeq>
 800769a:	2800      	cmp	r0, #0
 800769c:	f040 80c2 	bne.w	8007824 <_vfprintf_r+0xd0c>
 80076a0:	9d09      	ldr	r5, [sp, #36]	; 0x24
 80076a2:	f8c6 9004 	str.w	r9, [r6, #4]
 80076a6:	3701      	adds	r7, #1
 80076a8:	444c      	add	r4, r9
 80076aa:	2d07      	cmp	r5, #7
 80076ac:	6037      	str	r7, [r6, #0]
 80076ae:	942c      	str	r4, [sp, #176]	; 0xb0
 80076b0:	952b      	str	r5, [sp, #172]	; 0xac
 80076b2:	f300 80f9 	bgt.w	80078a8 <_vfprintf_r+0xd90>
 80076b6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80076b8:	f106 0310 	add.w	r3, r6, #16
 80076bc:	3202      	adds	r2, #2
 80076be:	465e      	mov	r6, fp
 80076c0:	9209      	str	r2, [sp, #36]	; 0x24
 80076c2:	469b      	mov	fp, r3
 80076c4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80076c6:	6072      	str	r2, [r6, #4]
 80076c8:	4414      	add	r4, r2
 80076ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80076cc:	942c      	str	r4, [sp, #176]	; 0xb0
 80076ce:	ab26      	add	r3, sp, #152	; 0x98
 80076d0:	2a07      	cmp	r2, #7
 80076d2:	922b      	str	r2, [sp, #172]	; 0xac
 80076d4:	6033      	str	r3, [r6, #0]
 80076d6:	f77f ac70 	ble.w	8006fba <_vfprintf_r+0x4a2>
 80076da:	aa2a      	add	r2, sp, #168	; 0xa8
 80076dc:	9907      	ldr	r1, [sp, #28]
 80076de:	9803      	ldr	r0, [sp, #12]
 80076e0:	f003 fd48 	bl	800b174 <__sprint_r>
 80076e4:	2800      	cmp	r0, #0
 80076e6:	d18f      	bne.n	8007608 <_vfprintf_r+0xaf0>
 80076e8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80076ea:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80076ee:	e464      	b.n	8006fba <_vfprintf_r+0x4a2>
 80076f0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80076f2:	af56      	add	r7, sp, #344	; 0x158
 80076f4:	0923      	lsrs	r3, r4, #4
 80076f6:	f004 010f 	and.w	r1, r4, #15
 80076fa:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80076fe:	092a      	lsrs	r2, r5, #4
 8007700:	461c      	mov	r4, r3
 8007702:	4615      	mov	r5, r2
 8007704:	5c43      	ldrb	r3, [r0, r1]
 8007706:	f807 3d01 	strb.w	r3, [r7, #-1]!
 800770a:	ea54 0305 	orrs.w	r3, r4, r5
 800770e:	d1f1      	bne.n	80076f4 <_vfprintf_r+0xbdc>
 8007710:	9b04      	ldr	r3, [sp, #16]
 8007712:	1bdb      	subs	r3, r3, r7
 8007714:	9309      	str	r3, [sp, #36]	; 0x24
 8007716:	f7ff bb80 	b.w	8006e1a <_vfprintf_r+0x302>
 800771a:	46b1      	mov	r9, r6
 800771c:	e776      	b.n	800760c <_vfprintf_r+0xaf4>
 800771e:	aa2a      	add	r2, sp, #168	; 0xa8
 8007720:	9907      	ldr	r1, [sp, #28]
 8007722:	9803      	ldr	r0, [sp, #12]
 8007724:	f003 fd26 	bl	800b174 <__sprint_r>
 8007728:	2800      	cmp	r0, #0
 800772a:	f47f af6d 	bne.w	8007608 <_vfprintf_r+0xaf0>
 800772e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8007730:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007734:	f7ff bbdd 	b.w	8006ef2 <_vfprintf_r+0x3da>
 8007738:	aa2a      	add	r2, sp, #168	; 0xa8
 800773a:	9907      	ldr	r1, [sp, #28]
 800773c:	9803      	ldr	r0, [sp, #12]
 800773e:	f003 fd19 	bl	800b174 <__sprint_r>
 8007742:	2800      	cmp	r0, #0
 8007744:	f47f af60 	bne.w	8007608 <_vfprintf_r+0xaf0>
 8007748:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800774a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800774e:	f7ff bbe0 	b.w	8006f12 <_vfprintf_r+0x3fa>
 8007752:	4698      	mov	r8, r3
 8007754:	2d00      	cmp	r5, #0
 8007756:	bf08      	it	eq
 8007758:	2c0a      	cmpeq	r4, #10
 800775a:	f080 8170 	bcs.w	8007a3e <_vfprintf_r+0xf26>
 800775e:	af56      	add	r7, sp, #344	; 0x158
 8007760:	3430      	adds	r4, #48	; 0x30
 8007762:	2301      	movs	r3, #1
 8007764:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8007768:	9309      	str	r3, [sp, #36]	; 0x24
 800776a:	f7ff bb56 	b.w	8006e1a <_vfprintf_r+0x302>
 800776e:	aa2a      	add	r2, sp, #168	; 0xa8
 8007770:	9907      	ldr	r1, [sp, #28]
 8007772:	9803      	ldr	r0, [sp, #12]
 8007774:	f003 fcfe 	bl	800b174 <__sprint_r>
 8007778:	2800      	cmp	r0, #0
 800777a:	f47f af45 	bne.w	8007608 <_vfprintf_r+0xaf0>
 800777e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8007780:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007784:	e406      	b.n	8006f94 <_vfprintf_r+0x47c>
 8007786:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8007788:	2b00      	cmp	r3, #0
 800778a:	f340 8273 	ble.w	8007c74 <_vfprintf_r+0x115c>
 800778e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8007792:	4293      	cmp	r3, r2
 8007794:	bfa8      	it	ge
 8007796:	4613      	movge	r3, r2
 8007798:	2b00      	cmp	r3, #0
 800779a:	461d      	mov	r5, r3
 800779c:	dd0d      	ble.n	80077ba <_vfprintf_r+0xca2>
 800779e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80077a0:	f8cb 7000 	str.w	r7, [fp]
 80077a4:	3301      	adds	r3, #1
 80077a6:	442c      	add	r4, r5
 80077a8:	2b07      	cmp	r3, #7
 80077aa:	942c      	str	r4, [sp, #176]	; 0xb0
 80077ac:	f8cb 5004 	str.w	r5, [fp, #4]
 80077b0:	932b      	str	r3, [sp, #172]	; 0xac
 80077b2:	f300 82c1 	bgt.w	8007d38 <_vfprintf_r+0x1220>
 80077b6:	f10b 0b08 	add.w	fp, fp, #8
 80077ba:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80077bc:	2d00      	cmp	r5, #0
 80077be:	bfa8      	it	ge
 80077c0:	1b5b      	subge	r3, r3, r5
 80077c2:	2b00      	cmp	r3, #0
 80077c4:	461d      	mov	r5, r3
 80077c6:	f340 8099 	ble.w	80078fc <_vfprintf_r+0xde4>
 80077ca:	2d10      	cmp	r5, #16
 80077cc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80077ce:	4b2c      	ldr	r3, [pc, #176]	; (8007880 <_vfprintf_r+0xd68>)
 80077d0:	f340 83db 	ble.w	8007f8a <_vfprintf_r+0x1472>
 80077d4:	4618      	mov	r0, r3
 80077d6:	4621      	mov	r1, r4
 80077d8:	465b      	mov	r3, fp
 80077da:	2610      	movs	r6, #16
 80077dc:	46bb      	mov	fp, r7
 80077de:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80077e2:	9c07      	ldr	r4, [sp, #28]
 80077e4:	4607      	mov	r7, r0
 80077e6:	e004      	b.n	80077f2 <_vfprintf_r+0xcda>
 80077e8:	3308      	adds	r3, #8
 80077ea:	3d10      	subs	r5, #16
 80077ec:	2d10      	cmp	r5, #16
 80077ee:	f340 83c7 	ble.w	8007f80 <_vfprintf_r+0x1468>
 80077f2:	3201      	adds	r2, #1
 80077f4:	3110      	adds	r1, #16
 80077f6:	2a07      	cmp	r2, #7
 80077f8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80077fc:	e9c3 7600 	strd	r7, r6, [r3]
 8007800:	ddf2      	ble.n	80077e8 <_vfprintf_r+0xcd0>
 8007802:	aa2a      	add	r2, sp, #168	; 0xa8
 8007804:	4621      	mov	r1, r4
 8007806:	4648      	mov	r0, r9
 8007808:	f003 fcb4 	bl	800b174 <__sprint_r>
 800780c:	2800      	cmp	r0, #0
 800780e:	f040 84a5 	bne.w	800815c <_vfprintf_r+0x1644>
 8007812:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8007816:	ab2d      	add	r3, sp, #180	; 0xb4
 8007818:	e7e7      	b.n	80077ea <_vfprintf_r+0xcd2>
 800781a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800781e:	af56      	add	r7, sp, #344	; 0x158
 8007820:	f7ff bafb 	b.w	8006e1a <_vfprintf_r+0x302>
 8007824:	f1b9 0f00 	cmp.w	r9, #0
 8007828:	f77f af4c 	ble.w	80076c4 <_vfprintf_r+0xbac>
 800782c:	f1b9 0f10 	cmp.w	r9, #16
 8007830:	4b13      	ldr	r3, [pc, #76]	; (8007880 <_vfprintf_r+0xd68>)
 8007832:	f340 8659 	ble.w	80084e8 <_vfprintf_r+0x19d0>
 8007836:	4619      	mov	r1, r3
 8007838:	4622      	mov	r2, r4
 800783a:	4633      	mov	r3, r6
 800783c:	2710      	movs	r7, #16
 800783e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8007842:	9c07      	ldr	r4, [sp, #28]
 8007844:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8007846:	460e      	mov	r6, r1
 8007848:	e007      	b.n	800785a <_vfprintf_r+0xd42>
 800784a:	3308      	adds	r3, #8
 800784c:	f1a9 0910 	sub.w	r9, r9, #16
 8007850:	f1b9 0f10 	cmp.w	r9, #16
 8007854:	f340 8353 	ble.w	8007efe <_vfprintf_r+0x13e6>
 8007858:	3501      	adds	r5, #1
 800785a:	3210      	adds	r2, #16
 800785c:	2d07      	cmp	r5, #7
 800785e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8007862:	e9c3 6700 	strd	r6, r7, [r3]
 8007866:	ddf0      	ble.n	800784a <_vfprintf_r+0xd32>
 8007868:	aa2a      	add	r2, sp, #168	; 0xa8
 800786a:	4621      	mov	r1, r4
 800786c:	4658      	mov	r0, fp
 800786e:	f003 fc81 	bl	800b174 <__sprint_r>
 8007872:	2800      	cmp	r0, #0
 8007874:	f040 8472 	bne.w	800815c <_vfprintf_r+0x1644>
 8007878:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800787c:	ab2d      	add	r3, sp, #180	; 0xb4
 800787e:	e7e5      	b.n	800784c <_vfprintf_r+0xd34>
 8007880:	0800bb8c 	.word	0x0800bb8c
 8007884:	f018 0f01 	tst.w	r8, #1
 8007888:	f47f aee0 	bne.w	800764c <_vfprintf_r+0xb34>
 800788c:	2201      	movs	r2, #1
 800788e:	2d07      	cmp	r5, #7
 8007890:	f8cb 7000 	str.w	r7, [fp]
 8007894:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8007898:	f8cb 2004 	str.w	r2, [fp, #4]
 800789c:	dc04      	bgt.n	80078a8 <_vfprintf_r+0xd90>
 800789e:	3302      	adds	r3, #2
 80078a0:	9309      	str	r3, [sp, #36]	; 0x24
 80078a2:	f10b 0b10 	add.w	fp, fp, #16
 80078a6:	e70d      	b.n	80076c4 <_vfprintf_r+0xbac>
 80078a8:	aa2a      	add	r2, sp, #168	; 0xa8
 80078aa:	9907      	ldr	r1, [sp, #28]
 80078ac:	9803      	ldr	r0, [sp, #12]
 80078ae:	f003 fc61 	bl	800b174 <__sprint_r>
 80078b2:	2800      	cmp	r0, #0
 80078b4:	f47f aea8 	bne.w	8007608 <_vfprintf_r+0xaf0>
 80078b8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80078bc:	3301      	adds	r3, #1
 80078be:	9309      	str	r3, [sp, #36]	; 0x24
 80078c0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80078c4:	ae2d      	add	r6, sp, #180	; 0xb4
 80078c6:	e6fd      	b.n	80076c4 <_vfprintf_r+0xbac>
 80078c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80078ca:	9907      	ldr	r1, [sp, #28]
 80078cc:	9803      	ldr	r0, [sp, #12]
 80078ce:	f003 fc51 	bl	800b174 <__sprint_r>
 80078d2:	2800      	cmp	r0, #0
 80078d4:	f47f ae98 	bne.w	8007608 <_vfprintf_r+0xaf0>
 80078d8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80078dc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80078de:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80078e2:	f7ff baf6 	b.w	8006ed2 <_vfprintf_r+0x3ba>
 80078e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80078e8:	9907      	ldr	r1, [sp, #28]
 80078ea:	9803      	ldr	r0, [sp, #12]
 80078ec:	f003 fc42 	bl	800b174 <__sprint_r>
 80078f0:	2800      	cmp	r0, #0
 80078f2:	f47f ae89 	bne.w	8007608 <_vfprintf_r+0xaf0>
 80078f6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80078f8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80078fc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80078fe:	f418 6f80 	tst.w	r8, #1024	; 0x400
 8007902:	443b      	add	r3, r7
 8007904:	4699      	mov	r9, r3
 8007906:	f040 8357 	bne.w	8007fb8 <_vfprintf_r+0x14a0>
 800790a:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800790c:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800790e:	4293      	cmp	r3, r2
 8007910:	db49      	blt.n	80079a6 <_vfprintf_r+0xe8e>
 8007912:	f018 0f01 	tst.w	r8, #1
 8007916:	d146      	bne.n	80079a6 <_vfprintf_r+0xe8e>
 8007918:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800791a:	18bd      	adds	r5, r7, r2
 800791c:	eba5 0509 	sub.w	r5, r5, r9
 8007920:	1ad3      	subs	r3, r2, r3
 8007922:	429d      	cmp	r5, r3
 8007924:	bfa8      	it	ge
 8007926:	461d      	movge	r5, r3
 8007928:	2d00      	cmp	r5, #0
 800792a:	dd0d      	ble.n	8007948 <_vfprintf_r+0xe30>
 800792c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800792e:	f8cb 9000 	str.w	r9, [fp]
 8007932:	3201      	adds	r2, #1
 8007934:	442c      	add	r4, r5
 8007936:	2a07      	cmp	r2, #7
 8007938:	942c      	str	r4, [sp, #176]	; 0xb0
 800793a:	f8cb 5004 	str.w	r5, [fp, #4]
 800793e:	922b      	str	r2, [sp, #172]	; 0xac
 8007940:	f300 8462 	bgt.w	8008208 <_vfprintf_r+0x16f0>
 8007944:	f10b 0b08 	add.w	fp, fp, #8
 8007948:	2d00      	cmp	r5, #0
 800794a:	bfac      	ite	ge
 800794c:	1b5d      	subge	r5, r3, r5
 800794e:	461d      	movlt	r5, r3
 8007950:	2d00      	cmp	r5, #0
 8007952:	f77f ab32 	ble.w	8006fba <_vfprintf_r+0x4a2>
 8007956:	2d10      	cmp	r5, #16
 8007958:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800795a:	4bc5      	ldr	r3, [pc, #788]	; (8007c70 <_vfprintf_r+0x1158>)
 800795c:	f340 80c4 	ble.w	8007ae8 <_vfprintf_r+0xfd0>
 8007960:	4619      	mov	r1, r3
 8007962:	2610      	movs	r6, #16
 8007964:	4623      	mov	r3, r4
 8007966:	9f03      	ldr	r7, [sp, #12]
 8007968:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800796c:	460c      	mov	r4, r1
 800796e:	e005      	b.n	800797c <_vfprintf_r+0xe64>
 8007970:	f10b 0b08 	add.w	fp, fp, #8
 8007974:	3d10      	subs	r5, #16
 8007976:	2d10      	cmp	r5, #16
 8007978:	f340 80b3 	ble.w	8007ae2 <_vfprintf_r+0xfca>
 800797c:	3201      	adds	r2, #1
 800797e:	3310      	adds	r3, #16
 8007980:	2a07      	cmp	r2, #7
 8007982:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8007986:	e9cb 4600 	strd	r4, r6, [fp]
 800798a:	ddf1      	ble.n	8007970 <_vfprintf_r+0xe58>
 800798c:	aa2a      	add	r2, sp, #168	; 0xa8
 800798e:	4649      	mov	r1, r9
 8007990:	4638      	mov	r0, r7
 8007992:	f003 fbef 	bl	800b174 <__sprint_r>
 8007996:	2800      	cmp	r0, #0
 8007998:	f47f ae38 	bne.w	800760c <_vfprintf_r+0xaf4>
 800799c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80079a0:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80079a4:	e7e6      	b.n	8007974 <_vfprintf_r+0xe5c>
 80079a6:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80079a8:	9916      	ldr	r1, [sp, #88]	; 0x58
 80079aa:	f8cb 1000 	str.w	r1, [fp]
 80079ae:	9915      	ldr	r1, [sp, #84]	; 0x54
 80079b0:	f8cb 1004 	str.w	r1, [fp, #4]
 80079b4:	3201      	adds	r2, #1
 80079b6:	440c      	add	r4, r1
 80079b8:	2a07      	cmp	r2, #7
 80079ba:	942c      	str	r4, [sp, #176]	; 0xb0
 80079bc:	922b      	str	r2, [sp, #172]	; 0xac
 80079be:	f300 828c 	bgt.w	8007eda <_vfprintf_r+0x13c2>
 80079c2:	f10b 0b08 	add.w	fp, fp, #8
 80079c6:	e7a7      	b.n	8007918 <_vfprintf_r+0xe00>
 80079c8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 80079cc:	f002 fa94 	bl	8009ef8 <__retarget_lock_release_recursive>
 80079d0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 80079d4:	e628      	b.n	8007628 <_vfprintf_r+0xb10>
 80079d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80079d8:	9907      	ldr	r1, [sp, #28]
 80079da:	9803      	ldr	r0, [sp, #12]
 80079dc:	f003 fbca 	bl	800b174 <__sprint_r>
 80079e0:	2800      	cmp	r0, #0
 80079e2:	f47f ae11 	bne.w	8007608 <_vfprintf_r+0xaf0>
 80079e6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 80079ea:	ae2d      	add	r6, sp, #180	; 0xb4
 80079ec:	e638      	b.n	8007660 <_vfprintf_r+0xb48>
 80079ee:	aa2a      	add	r2, sp, #168	; 0xa8
 80079f0:	9907      	ldr	r1, [sp, #28]
 80079f2:	9803      	ldr	r0, [sp, #12]
 80079f4:	f003 fbbe 	bl	800b174 <__sprint_r>
 80079f8:	2800      	cmp	r0, #0
 80079fa:	f47f ae05 	bne.w	8007608 <_vfprintf_r+0xaf0>
 80079fe:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8007a02:	ae2d      	add	r6, sp, #180	; 0xb4
 8007a04:	930b      	str	r3, [sp, #44]	; 0x2c
 8007a06:	e638      	b.n	800767a <_vfprintf_r+0xb62>
 8007a08:	6814      	ldr	r4, [r2, #0]
 8007a0a:	9308      	str	r3, [sp, #32]
 8007a0c:	2500      	movs	r5, #0
 8007a0e:	f7ff bb95 	b.w	800713c <_vfprintf_r+0x624>
 8007a12:	6814      	ldr	r4, [r2, #0]
 8007a14:	9308      	str	r3, [sp, #32]
 8007a16:	2500      	movs	r5, #0
 8007a18:	f7ff b9ae 	b.w	8006d78 <_vfprintf_r+0x260>
 8007a1c:	680c      	ldr	r4, [r1, #0]
 8007a1e:	9208      	str	r2, [sp, #32]
 8007a20:	17e5      	asrs	r5, r4, #31
 8007a22:	4620      	mov	r0, r4
 8007a24:	4629      	mov	r1, r5
 8007a26:	f7ff b9d2 	b.w	8006dce <_vfprintf_r+0x2b6>
 8007a2a:	6814      	ldr	r4, [r2, #0]
 8007a2c:	9108      	str	r1, [sp, #32]
 8007a2e:	2201      	movs	r2, #1
 8007a30:	2500      	movs	r5, #0
 8007a32:	f7ff bb32 	b.w	800709a <_vfprintf_r+0x582>
 8007a36:	2a01      	cmp	r2, #1
 8007a38:	f47f ab3c 	bne.w	80070b4 <_vfprintf_r+0x59c>
 8007a3c:	e68f      	b.n	800775e <_vfprintf_r+0xc46>
 8007a3e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8007a42:	2200      	movs	r2, #0
 8007a44:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8007a48:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8007a4c:	af56      	add	r7, sp, #344	; 0x158
 8007a4e:	4692      	mov	sl, r2
 8007a50:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8007a54:	461e      	mov	r6, r3
 8007a56:	e00a      	b.n	8007a6e <_vfprintf_r+0xf56>
 8007a58:	2300      	movs	r3, #0
 8007a5a:	4620      	mov	r0, r4
 8007a5c:	4629      	mov	r1, r5
 8007a5e:	220a      	movs	r2, #10
 8007a60:	f7f8 fbce 	bl	8000200 <__aeabi_uldivmod>
 8007a64:	4604      	mov	r4, r0
 8007a66:	460d      	mov	r5, r1
 8007a68:	ea54 0305 	orrs.w	r3, r4, r5
 8007a6c:	d029      	beq.n	8007ac2 <_vfprintf_r+0xfaa>
 8007a6e:	220a      	movs	r2, #10
 8007a70:	2300      	movs	r3, #0
 8007a72:	4620      	mov	r0, r4
 8007a74:	4629      	mov	r1, r5
 8007a76:	f7f8 fbc3 	bl	8000200 <__aeabi_uldivmod>
 8007a7a:	3230      	adds	r2, #48	; 0x30
 8007a7c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8007a80:	f10a 0a01 	add.w	sl, sl, #1
 8007a84:	3f01      	subs	r7, #1
 8007a86:	2e00      	cmp	r6, #0
 8007a88:	d0e6      	beq.n	8007a58 <_vfprintf_r+0xf40>
 8007a8a:	f898 3000 	ldrb.w	r3, [r8]
 8007a8e:	459a      	cmp	sl, r3
 8007a90:	d1e2      	bne.n	8007a58 <_vfprintf_r+0xf40>
 8007a92:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8007a96:	d0df      	beq.n	8007a58 <_vfprintf_r+0xf40>
 8007a98:	2d00      	cmp	r5, #0
 8007a9a:	bf08      	it	eq
 8007a9c:	2c0a      	cmpeq	r4, #10
 8007a9e:	d3db      	bcc.n	8007a58 <_vfprintf_r+0xf40>
 8007aa0:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8007aa2:	9918      	ldr	r1, [sp, #96]	; 0x60
 8007aa4:	1aff      	subs	r7, r7, r3
 8007aa6:	461a      	mov	r2, r3
 8007aa8:	4638      	mov	r0, r7
 8007aaa:	f003 faf5 	bl	800b098 <strncpy>
 8007aae:	f898 3001 	ldrb.w	r3, [r8, #1]
 8007ab2:	2b00      	cmp	r3, #0
 8007ab4:	f000 8496 	beq.w	80083e4 <_vfprintf_r+0x18cc>
 8007ab8:	f108 0801 	add.w	r8, r8, #1
 8007abc:	f04f 0a00 	mov.w	sl, #0
 8007ac0:	e7ca      	b.n	8007a58 <_vfprintf_r+0xf40>
 8007ac2:	9b04      	ldr	r3, [sp, #16]
 8007ac4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8007ac8:	1bdb      	subs	r3, r3, r7
 8007aca:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8007ace:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8007ad0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8007ad4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8007ad8:	9309      	str	r3, [sp, #36]	; 0x24
 8007ada:	f7ff b99e 	b.w	8006e1a <_vfprintf_r+0x302>
 8007ade:	46c1      	mov	r9, r8
 8007ae0:	e594      	b.n	800760c <_vfprintf_r+0xaf4>
 8007ae2:	4621      	mov	r1, r4
 8007ae4:	461c      	mov	r4, r3
 8007ae6:	460b      	mov	r3, r1
 8007ae8:	3201      	adds	r2, #1
 8007aea:	442c      	add	r4, r5
 8007aec:	2a07      	cmp	r2, #7
 8007aee:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8007af2:	e9cb 3500 	strd	r3, r5, [fp]
 8007af6:	f77f aa5e 	ble.w	8006fb6 <_vfprintf_r+0x49e>
 8007afa:	e5ee      	b.n	80076da <_vfprintf_r+0xbc2>
 8007afc:	f018 0f10 	tst.w	r8, #16
 8007b00:	f040 80f8 	bne.w	8007cf4 <_vfprintf_r+0x11dc>
 8007b04:	f018 0f40 	tst.w	r8, #64	; 0x40
 8007b08:	f000 8351 	beq.w	80081ae <_vfprintf_r+0x1696>
 8007b0c:	9a05      	ldr	r2, [sp, #20]
 8007b0e:	801a      	strh	r2, [r3, #0]
 8007b10:	4657      	mov	r7, sl
 8007b12:	f7ff baa7 	b.w	8007064 <_vfprintf_r+0x54c>
 8007b16:	aa2a      	add	r2, sp, #168	; 0xa8
 8007b18:	9907      	ldr	r1, [sp, #28]
 8007b1a:	9803      	ldr	r0, [sp, #12]
 8007b1c:	f003 fb2a 	bl	800b174 <__sprint_r>
 8007b20:	2800      	cmp	r0, #0
 8007b22:	f47f ad71 	bne.w	8007608 <_vfprintf_r+0xaf0>
 8007b26:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8007b28:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007b2c:	f7ff b9f5 	b.w	8006f1a <_vfprintf_r+0x402>
 8007b30:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8007b34:	4602      	mov	r2, r0
 8007b36:	460b      	mov	r3, r1
 8007b38:	f7f9 faf8 	bl	800112c <__aeabi_dcmpun>
 8007b3c:	2800      	cmp	r0, #0
 8007b3e:	f040 8491 	bne.w	8008464 <_vfprintf_r+0x194c>
 8007b42:	2e61      	cmp	r6, #97	; 0x61
 8007b44:	f000 8111 	beq.w	8007d6a <_vfprintf_r+0x1252>
 8007b48:	2e41      	cmp	r6, #65	; 0x41
 8007b4a:	f000 8377 	beq.w	800823c <_vfprintf_r+0x1724>
 8007b4e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8007b52:	f026 0220 	bic.w	r2, r6, #32
 8007b56:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8007b5a:	930e      	str	r3, [sp, #56]	; 0x38
 8007b5c:	9204      	str	r2, [sp, #16]
 8007b5e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8007b60:	f000 842d 	beq.w	80083be <_vfprintf_r+0x18a6>
 8007b64:	2a47      	cmp	r2, #71	; 0x47
 8007b66:	f000 8424 	beq.w	80083b2 <_vfprintf_r+0x189a>
 8007b6a:	2b00      	cmp	r3, #0
 8007b6c:	f2c0 82f9 	blt.w	8008162 <_vfprintf_r+0x164a>
 8007b70:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8007b74:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8007b78:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8007b7c:	2e66      	cmp	r6, #102	; 0x66
 8007b7e:	f000 83eb 	beq.w	8008358 <_vfprintf_r+0x1840>
 8007b82:	2e46      	cmp	r6, #70	; 0x46
 8007b84:	f000 847e 	beq.w	8008484 <_vfprintf_r+0x196c>
 8007b88:	9b04      	ldr	r3, [sp, #16]
 8007b8a:	9803      	ldr	r0, [sp, #12]
 8007b8c:	2b45      	cmp	r3, #69	; 0x45
 8007b8e:	bf0c      	ite	eq
 8007b90:	f109 0501 	addeq.w	r5, r9, #1
 8007b94:	464d      	movne	r5, r9
 8007b96:	aa28      	add	r2, sp, #160	; 0xa0
 8007b98:	ab25      	add	r3, sp, #148	; 0x94
 8007b9a:	e9cd 3200 	strd	r3, r2, [sp]
 8007b9e:	2102      	movs	r1, #2
 8007ba0:	ab24      	add	r3, sp, #144	; 0x90
 8007ba2:	462a      	mov	r2, r5
 8007ba4:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8007ba8:	f000 fe3e 	bl	8008828 <_dtoa_r>
 8007bac:	2e67      	cmp	r6, #103	; 0x67
 8007bae:	4607      	mov	r7, r0
 8007bb0:	f040 849c 	bne.w	80084ec <_vfprintf_r+0x19d4>
 8007bb4:	f018 0f01 	tst.w	r8, #1
 8007bb8:	f040 83f9 	bne.w	80083ae <_vfprintf_r+0x1896>
 8007bbc:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8007bbe:	4640      	mov	r0, r8
 8007bc0:	1bdb      	subs	r3, r3, r7
 8007bc2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8007bc6:	9310      	str	r3, [sp, #64]	; 0x40
 8007bc8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8007bca:	9311      	str	r3, [sp, #68]	; 0x44
 8007bcc:	9b04      	ldr	r3, [sp, #16]
 8007bce:	2b47      	cmp	r3, #71	; 0x47
 8007bd0:	f000 81e7 	beq.w	8007fa2 <_vfprintf_r+0x148a>
 8007bd4:	9b04      	ldr	r3, [sp, #16]
 8007bd6:	2b46      	cmp	r3, #70	; 0x46
 8007bd8:	f000 8300 	beq.w	80081dc <_vfprintf_r+0x16c4>
 8007bdc:	9904      	ldr	r1, [sp, #16]
 8007bde:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8007be0:	b2f2      	uxtb	r2, r6
 8007be2:	2941      	cmp	r1, #65	; 0x41
 8007be4:	bf08      	it	eq
 8007be6:	320f      	addeq	r2, #15
 8007be8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8007bec:	bf06      	itte	eq
 8007bee:	b2d2      	uxtbeq	r2, r2
 8007bf0:	2101      	moveq	r1, #1
 8007bf2:	2100      	movne	r1, #0
 8007bf4:	2b00      	cmp	r3, #0
 8007bf6:	9324      	str	r3, [sp, #144]	; 0x90
 8007bf8:	bfb8      	it	lt
 8007bfa:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8007bfc:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8007c00:	bfba      	itte	lt
 8007c02:	f1c3 0301 	rsblt	r3, r3, #1
 8007c06:	222d      	movlt	r2, #45	; 0x2d
 8007c08:	222b      	movge	r2, #43	; 0x2b
 8007c0a:	2b09      	cmp	r3, #9
 8007c0c:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8007c10:	f300 83f9 	bgt.w	8008406 <_vfprintf_r+0x18ee>
 8007c14:	2900      	cmp	r1, #0
 8007c16:	f040 8487 	bne.w	8008528 <_vfprintf_r+0x1a10>
 8007c1a:	2230      	movs	r2, #48	; 0x30
 8007c1c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8007c20:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8007c24:	3330      	adds	r3, #48	; 0x30
 8007c26:	7013      	strb	r3, [r2, #0]
 8007c28:	1c53      	adds	r3, r2, #1
 8007c2a:	aa26      	add	r2, sp, #152	; 0x98
 8007c2c:	1a9b      	subs	r3, r3, r2
 8007c2e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8007c30:	9319      	str	r3, [sp, #100]	; 0x64
 8007c32:	2a01      	cmp	r2, #1
 8007c34:	4413      	add	r3, r2
 8007c36:	9309      	str	r3, [sp, #36]	; 0x24
 8007c38:	f340 8442 	ble.w	80084c0 <_vfprintf_r+0x19a8>
 8007c3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007c3e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8007c40:	4413      	add	r3, r2
 8007c42:	9309      	str	r3, [sp, #36]	; 0x24
 8007c44:	2300      	movs	r3, #0
 8007c46:	930f      	str	r3, [sp, #60]	; 0x3c
 8007c48:	9314      	str	r3, [sp, #80]	; 0x50
 8007c4a:	9311      	str	r3, [sp, #68]	; 0x44
 8007c4c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007c4e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8007c52:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8007c56:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8007c5a:	9304      	str	r3, [sp, #16]
 8007c5c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8007c5e:	2b00      	cmp	r3, #0
 8007c60:	f040 8275 	bne.w	800814e <_vfprintf_r+0x1636>
 8007c64:	4699      	mov	r9, r3
 8007c66:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8007c6a:	f7ff b8e2 	b.w	8006e32 <_vfprintf_r+0x31a>
 8007c6e:	bf00      	nop
 8007c70:	0800bb8c 	.word	0x0800bb8c
 8007c74:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8007c76:	49bd      	ldr	r1, [pc, #756]	; (8007f6c <_vfprintf_r+0x1454>)
 8007c78:	f8cb 1000 	str.w	r1, [fp]
 8007c7c:	3201      	adds	r2, #1
 8007c7e:	3401      	adds	r4, #1
 8007c80:	2101      	movs	r1, #1
 8007c82:	2a07      	cmp	r2, #7
 8007c84:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8007c88:	f8cb 1004 	str.w	r1, [fp, #4]
 8007c8c:	dc60      	bgt.n	8007d50 <_vfprintf_r+0x1238>
 8007c8e:	f10b 0b08 	add.w	fp, fp, #8
 8007c92:	b92b      	cbnz	r3, 8007ca0 <_vfprintf_r+0x1188>
 8007c94:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8007c96:	b91a      	cbnz	r2, 8007ca0 <_vfprintf_r+0x1188>
 8007c98:	f018 0f01 	tst.w	r8, #1
 8007c9c:	f43f a98d 	beq.w	8006fba <_vfprintf_r+0x4a2>
 8007ca0:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8007ca2:	9916      	ldr	r1, [sp, #88]	; 0x58
 8007ca4:	f8cb 1000 	str.w	r1, [fp]
 8007ca8:	9915      	ldr	r1, [sp, #84]	; 0x54
 8007caa:	f8cb 1004 	str.w	r1, [fp, #4]
 8007cae:	3201      	adds	r2, #1
 8007cb0:	440c      	add	r4, r1
 8007cb2:	2a07      	cmp	r2, #7
 8007cb4:	942c      	str	r4, [sp, #176]	; 0xb0
 8007cb6:	922b      	str	r2, [sp, #172]	; 0xac
 8007cb8:	f300 8282 	bgt.w	80081c0 <_vfprintf_r+0x16a8>
 8007cbc:	f10b 0b08 	add.w	fp, fp, #8
 8007cc0:	2b00      	cmp	r3, #0
 8007cc2:	f2c0 82e7 	blt.w	8008294 <_vfprintf_r+0x177c>
 8007cc6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8007cc8:	3201      	adds	r2, #1
 8007cca:	441c      	add	r4, r3
 8007ccc:	2a07      	cmp	r2, #7
 8007cce:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8007cd2:	e9cb 7300 	strd	r7, r3, [fp]
 8007cd6:	f77f a96e 	ble.w	8006fb6 <_vfprintf_r+0x49e>
 8007cda:	e4fe      	b.n	80076da <_vfprintf_r+0xbc2>
 8007cdc:	aa2a      	add	r2, sp, #168	; 0xa8
 8007cde:	9907      	ldr	r1, [sp, #28]
 8007ce0:	9803      	ldr	r0, [sp, #12]
 8007ce2:	f003 fa47 	bl	800b174 <__sprint_r>
 8007ce6:	2800      	cmp	r0, #0
 8007ce8:	f47f ac8e 	bne.w	8007608 <_vfprintf_r+0xaf0>
 8007cec:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007cf0:	f7ff bbf0 	b.w	80074d4 <_vfprintf_r+0x9bc>
 8007cf4:	9a05      	ldr	r2, [sp, #20]
 8007cf6:	601a      	str	r2, [r3, #0]
 8007cf8:	4657      	mov	r7, sl
 8007cfa:	f7ff b9b3 	b.w	8007064 <_vfprintf_r+0x54c>
 8007cfe:	8814      	ldrh	r4, [r2, #0]
 8007d00:	9108      	str	r1, [sp, #32]
 8007d02:	2500      	movs	r5, #0
 8007d04:	2201      	movs	r2, #1
 8007d06:	f7ff b9c8 	b.w	800709a <_vfprintf_r+0x582>
 8007d0a:	8814      	ldrh	r4, [r2, #0]
 8007d0c:	9308      	str	r3, [sp, #32]
 8007d0e:	2500      	movs	r5, #0
 8007d10:	f7ff ba14 	b.w	800713c <_vfprintf_r+0x624>
 8007d14:	f9b1 4000 	ldrsh.w	r4, [r1]
 8007d18:	9208      	str	r2, [sp, #32]
 8007d1a:	17e5      	asrs	r5, r4, #31
 8007d1c:	4620      	mov	r0, r4
 8007d1e:	4629      	mov	r1, r5
 8007d20:	f7ff b855 	b.w	8006dce <_vfprintf_r+0x2b6>
 8007d24:	8814      	ldrh	r4, [r2, #0]
 8007d26:	9308      	str	r3, [sp, #32]
 8007d28:	2500      	movs	r5, #0
 8007d2a:	f7ff b825 	b.w	8006d78 <_vfprintf_r+0x260>
 8007d2e:	222d      	movs	r2, #45	; 0x2d
 8007d30:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8007d34:	f7ff baa2 	b.w	800727c <_vfprintf_r+0x764>
 8007d38:	aa2a      	add	r2, sp, #168	; 0xa8
 8007d3a:	9907      	ldr	r1, [sp, #28]
 8007d3c:	9803      	ldr	r0, [sp, #12]
 8007d3e:	f003 fa19 	bl	800b174 <__sprint_r>
 8007d42:	2800      	cmp	r0, #0
 8007d44:	f47f ac60 	bne.w	8007608 <_vfprintf_r+0xaf0>
 8007d48:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8007d4a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007d4e:	e534      	b.n	80077ba <_vfprintf_r+0xca2>
 8007d50:	aa2a      	add	r2, sp, #168	; 0xa8
 8007d52:	9907      	ldr	r1, [sp, #28]
 8007d54:	9803      	ldr	r0, [sp, #12]
 8007d56:	f003 fa0d 	bl	800b174 <__sprint_r>
 8007d5a:	2800      	cmp	r0, #0
 8007d5c:	f47f ac54 	bne.w	8007608 <_vfprintf_r+0xaf0>
 8007d60:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8007d62:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8007d64:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007d68:	e793      	b.n	8007c92 <_vfprintf_r+0x117a>
 8007d6a:	2330      	movs	r3, #48	; 0x30
 8007d6c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8007d70:	2378      	movs	r3, #120	; 0x78
 8007d72:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8007d76:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8007d7a:	f048 0402 	orr.w	r4, r8, #2
 8007d7e:	f300 82b0 	bgt.w	80082e2 <_vfprintf_r+0x17ca>
 8007d82:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8007d86:	930e      	str	r3, [sp, #56]	; 0x38
 8007d88:	f026 0320 	bic.w	r3, r6, #32
 8007d8c:	9304      	str	r3, [sp, #16]
 8007d8e:	2200      	movs	r2, #0
 8007d90:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8007d92:	920a      	str	r2, [sp, #40]	; 0x28
 8007d94:	46a0      	mov	r8, r4
 8007d96:	af3d      	add	r7, sp, #244	; 0xf4
 8007d98:	2b00      	cmp	r3, #0
 8007d9a:	f2c0 81e3 	blt.w	8008164 <_vfprintf_r+0x164c>
 8007d9e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8007da2:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8007da6:	2300      	movs	r3, #0
 8007da8:	930b      	str	r3, [sp, #44]	; 0x2c
 8007daa:	2e61      	cmp	r6, #97	; 0x61
 8007dac:	f000 8255 	beq.w	800825a <_vfprintf_r+0x1742>
 8007db0:	2e41      	cmp	r6, #65	; 0x41
 8007db2:	f47f aee3 	bne.w	8007b7c <_vfprintf_r+0x1064>
 8007db6:	a824      	add	r0, sp, #144	; 0x90
 8007db8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8007dbc:	f003 f8e2 	bl	800af84 <frexp>
 8007dc0:	2200      	movs	r2, #0
 8007dc2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8007dc6:	ec51 0b10 	vmov	r0, r1, d0
 8007dca:	f7f8 ff15 	bl	8000bf8 <__aeabi_dmul>
 8007dce:	2200      	movs	r2, #0
 8007dd0:	2300      	movs	r3, #0
 8007dd2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8007dd6:	f7f9 f977 	bl	80010c8 <__aeabi_dcmpeq>
 8007dda:	2800      	cmp	r0, #0
 8007ddc:	f040 8305 	bne.w	80083ea <_vfprintf_r+0x18d2>
 8007de0:	4b63      	ldr	r3, [pc, #396]	; (8007f70 <_vfprintf_r+0x1458>)
 8007de2:	9309      	str	r3, [sp, #36]	; 0x24
 8007de4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8007de8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8007dec:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8007df0:	9721      	str	r7, [sp, #132]	; 0x84
 8007df2:	46b9      	mov	r9, r7
 8007df4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8007df8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8007dfc:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8007e00:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8007e04:	e003      	b.n	8007e0e <_vfprintf_r+0x12f6>
 8007e06:	f7f9 f95f 	bl	80010c8 <__aeabi_dcmpeq>
 8007e0a:	bb20      	cbnz	r0, 8007e56 <_vfprintf_r+0x133e>
 8007e0c:	46a9      	mov	r9, r5
 8007e0e:	2200      	movs	r2, #0
 8007e10:	4b58      	ldr	r3, [pc, #352]	; (8007f74 <_vfprintf_r+0x145c>)
 8007e12:	4630      	mov	r0, r6
 8007e14:	4639      	mov	r1, r7
 8007e16:	f7f8 feef 	bl	8000bf8 <__aeabi_dmul>
 8007e1a:	460f      	mov	r7, r1
 8007e1c:	4606      	mov	r6, r0
 8007e1e:	f7f9 f99b 	bl	8001158 <__aeabi_d2iz>
 8007e22:	4680      	mov	r8, r0
 8007e24:	f7f8 fe7e 	bl	8000b24 <__aeabi_i2d>
 8007e28:	4602      	mov	r2, r0
 8007e2a:	460b      	mov	r3, r1
 8007e2c:	4630      	mov	r0, r6
 8007e2e:	4639      	mov	r1, r7
 8007e30:	f7f8 fd2a 	bl	8000888 <__aeabi_dsub>
 8007e34:	464d      	mov	r5, r9
 8007e36:	f81a c008 	ldrb.w	ip, [sl, r8]
 8007e3a:	f805 cb01 	strb.w	ip, [r5], #1
 8007e3e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8007e42:	46a3      	mov	fp, r4
 8007e44:	4606      	mov	r6, r0
 8007e46:	460f      	mov	r7, r1
 8007e48:	f04f 0200 	mov.w	r2, #0
 8007e4c:	f04f 0300 	mov.w	r3, #0
 8007e50:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8007e54:	d1d7      	bne.n	8007e06 <_vfprintf_r+0x12ee>
 8007e56:	4630      	mov	r0, r6
 8007e58:	4639      	mov	r1, r7
 8007e5a:	2200      	movs	r2, #0
 8007e5c:	4b46      	ldr	r3, [pc, #280]	; (8007f78 <_vfprintf_r+0x1460>)
 8007e5e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8007e62:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8007e64:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8007e68:	4644      	mov	r4, r8
 8007e6a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8007e6e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8007e72:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8007e76:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8007e7a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8007e7c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8007e80:	f7f9 f94a 	bl	8001118 <__aeabi_dcmpgt>
 8007e84:	2800      	cmp	r0, #0
 8007e86:	f040 8176 	bne.w	8008176 <_vfprintf_r+0x165e>
 8007e8a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8007e8e:	2200      	movs	r2, #0
 8007e90:	4b39      	ldr	r3, [pc, #228]	; (8007f78 <_vfprintf_r+0x1460>)
 8007e92:	f7f9 f919 	bl	80010c8 <__aeabi_dcmpeq>
 8007e96:	b110      	cbz	r0, 8007e9e <_vfprintf_r+0x1386>
 8007e98:	07e2      	lsls	r2, r4, #31
 8007e9a:	f100 816c 	bmi.w	8008176 <_vfprintf_r+0x165e>
 8007e9e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8007ea0:	2b00      	cmp	r3, #0
 8007ea2:	db07      	blt.n	8007eb4 <_vfprintf_r+0x139c>
 8007ea4:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8007ea6:	3301      	adds	r3, #1
 8007ea8:	442b      	add	r3, r5
 8007eaa:	2230      	movs	r2, #48	; 0x30
 8007eac:	f805 2b01 	strb.w	r2, [r5], #1
 8007eb0:	42ab      	cmp	r3, r5
 8007eb2:	d1fb      	bne.n	8007eac <_vfprintf_r+0x1394>
 8007eb4:	1beb      	subs	r3, r5, r7
 8007eb6:	4640      	mov	r0, r8
 8007eb8:	9310      	str	r3, [sp, #64]	; 0x40
 8007eba:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8007ebe:	e683      	b.n	8007bc8 <_vfprintf_r+0x10b0>
 8007ec0:	f8cd 9010 	str.w	r9, [sp, #16]
 8007ec4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8007ec8:	9408      	str	r4, [sp, #32]
 8007eca:	4681      	mov	r9, r0
 8007ecc:	900f      	str	r0, [sp, #60]	; 0x3c
 8007ece:	9014      	str	r0, [sp, #80]	; 0x50
 8007ed0:	9011      	str	r0, [sp, #68]	; 0x44
 8007ed2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8007ed6:	f7fe bfac 	b.w	8006e32 <_vfprintf_r+0x31a>
 8007eda:	aa2a      	add	r2, sp, #168	; 0xa8
 8007edc:	9907      	ldr	r1, [sp, #28]
 8007ede:	9803      	ldr	r0, [sp, #12]
 8007ee0:	f003 f948 	bl	800b174 <__sprint_r>
 8007ee4:	2800      	cmp	r0, #0
 8007ee6:	f47f ab8f 	bne.w	8007608 <_vfprintf_r+0xaf0>
 8007eea:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8007eec:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8007eee:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007ef2:	e511      	b.n	8007918 <_vfprintf_r+0xe00>
 8007ef4:	4252      	negs	r2, r2
 8007ef6:	9206      	str	r2, [sp, #24]
 8007ef8:	9308      	str	r3, [sp, #32]
 8007efa:	f7ff b96d 	b.w	80071d8 <_vfprintf_r+0x6c0>
 8007efe:	4614      	mov	r4, r2
 8007f00:	4632      	mov	r2, r6
 8007f02:	461e      	mov	r6, r3
 8007f04:	4613      	mov	r3, r2
 8007f06:	462a      	mov	r2, r5
 8007f08:	3201      	adds	r2, #1
 8007f0a:	9209      	str	r2, [sp, #36]	; 0x24
 8007f0c:	f106 0208 	add.w	r2, r6, #8
 8007f10:	e9c6 3900 	strd	r3, r9, [r6]
 8007f14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007f16:	932b      	str	r3, [sp, #172]	; 0xac
 8007f18:	444c      	add	r4, r9
 8007f1a:	2b07      	cmp	r3, #7
 8007f1c:	942c      	str	r4, [sp, #176]	; 0xb0
 8007f1e:	f73f acc3 	bgt.w	80078a8 <_vfprintf_r+0xd90>
 8007f22:	3301      	adds	r3, #1
 8007f24:	9309      	str	r3, [sp, #36]	; 0x24
 8007f26:	f102 0b08 	add.w	fp, r2, #8
 8007f2a:	4616      	mov	r6, r2
 8007f2c:	f7ff bbca 	b.w	80076c4 <_vfprintf_r+0xbac>
 8007f30:	aa2a      	add	r2, sp, #168	; 0xa8
 8007f32:	9907      	ldr	r1, [sp, #28]
 8007f34:	9803      	ldr	r0, [sp, #12]
 8007f36:	f003 f91d 	bl	800b174 <__sprint_r>
 8007f3a:	2800      	cmp	r0, #0
 8007f3c:	f47f ab64 	bne.w	8007608 <_vfprintf_r+0xaf0>
 8007f40:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8007f42:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8007f46:	f7ff bade 	b.w	8007506 <_vfprintf_r+0x9ee>
 8007f4a:	464b      	mov	r3, r9
 8007f4c:	2b06      	cmp	r3, #6
 8007f4e:	bf28      	it	cs
 8007f50:	2306      	movcs	r3, #6
 8007f52:	46b9      	mov	r9, r7
 8007f54:	970f      	str	r7, [sp, #60]	; 0x3c
 8007f56:	9714      	str	r7, [sp, #80]	; 0x50
 8007f58:	9711      	str	r7, [sp, #68]	; 0x44
 8007f5a:	970a      	str	r7, [sp, #40]	; 0x28
 8007f5c:	463a      	mov	r2, r7
 8007f5e:	9304      	str	r3, [sp, #16]
 8007f60:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8007f64:	4f05      	ldr	r7, [pc, #20]	; (8007f7c <_vfprintf_r+0x1464>)
 8007f66:	f7fe bf64 	b.w	8006e32 <_vfprintf_r+0x31a>
 8007f6a:	bf00      	nop
 8007f6c:	0800bb78 	.word	0x0800bb78
 8007f70:	0800bb5c 	.word	0x0800bb5c
 8007f74:	40300000 	.word	0x40300000
 8007f78:	3fe00000 	.word	0x3fe00000
 8007f7c:	0800bb70 	.word	0x0800bb70
 8007f80:	460c      	mov	r4, r1
 8007f82:	4639      	mov	r1, r7
 8007f84:	465f      	mov	r7, fp
 8007f86:	469b      	mov	fp, r3
 8007f88:	460b      	mov	r3, r1
 8007f8a:	3201      	adds	r2, #1
 8007f8c:	442c      	add	r4, r5
 8007f8e:	2a07      	cmp	r2, #7
 8007f90:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8007f94:	e9cb 3500 	strd	r3, r5, [fp]
 8007f98:	f73f aca5 	bgt.w	80078e6 <_vfprintf_r+0xdce>
 8007f9c:	f10b 0b08 	add.w	fp, fp, #8
 8007fa0:	e4ac      	b.n	80078fc <_vfprintf_r+0xde4>
 8007fa2:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8007fa4:	1cda      	adds	r2, r3, #3
 8007fa6:	db02      	blt.n	8007fae <_vfprintf_r+0x1496>
 8007fa8:	4599      	cmp	r9, r3
 8007faa:	f280 80b5 	bge.w	8008118 <_vfprintf_r+0x1600>
 8007fae:	3e02      	subs	r6, #2
 8007fb0:	f026 0320 	bic.w	r3, r6, #32
 8007fb4:	9304      	str	r3, [sp, #16]
 8007fb6:	e611      	b.n	8007bdc <_vfprintf_r+0x10c4>
 8007fb8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8007fba:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 8007fbe:	465a      	mov	r2, fp
 8007fc0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 8007fc4:	18fb      	adds	r3, r7, r3
 8007fc6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 8007fca:	970c      	str	r7, [sp, #48]	; 0x30
 8007fcc:	4eaf      	ldr	r6, [pc, #700]	; (800828c <_vfprintf_r+0x1774>)
 8007fce:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8007fd2:	9309      	str	r3, [sp, #36]	; 0x24
 8007fd4:	464f      	mov	r7, r9
 8007fd6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8007fda:	4621      	mov	r1, r4
 8007fdc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8007fde:	2b00      	cmp	r3, #0
 8007fe0:	d05b      	beq.n	800809a <_vfprintf_r+0x1582>
 8007fe2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8007fe4:	2b00      	cmp	r3, #0
 8007fe6:	d154      	bne.n	8008092 <_vfprintf_r+0x157a>
 8007fe8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8007fea:	3b01      	subs	r3, #1
 8007fec:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 8007ff0:	9314      	str	r3, [sp, #80]	; 0x50
 8007ff2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8007ff4:	9818      	ldr	r0, [sp, #96]	; 0x60
 8007ff6:	6010      	str	r0, [r2, #0]
 8007ff8:	3301      	adds	r3, #1
 8007ffa:	4459      	add	r1, fp
 8007ffc:	2b07      	cmp	r3, #7
 8007ffe:	912c      	str	r1, [sp, #176]	; 0xb0
 8008000:	f8c2 b004 	str.w	fp, [r2, #4]
 8008004:	932b      	str	r3, [sp, #172]	; 0xac
 8008006:	dc68      	bgt.n	80080da <_vfprintf_r+0x15c2>
 8008008:	3208      	adds	r2, #8
 800800a:	9809      	ldr	r0, [sp, #36]	; 0x24
 800800c:	f898 3000 	ldrb.w	r3, [r8]
 8008010:	1bc5      	subs	r5, r0, r7
 8008012:	429d      	cmp	r5, r3
 8008014:	bfa8      	it	ge
 8008016:	461d      	movge	r5, r3
 8008018:	2d00      	cmp	r5, #0
 800801a:	dd0b      	ble.n	8008034 <_vfprintf_r+0x151c>
 800801c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800801e:	6017      	str	r7, [r2, #0]
 8008020:	3301      	adds	r3, #1
 8008022:	4429      	add	r1, r5
 8008024:	2b07      	cmp	r3, #7
 8008026:	912c      	str	r1, [sp, #176]	; 0xb0
 8008028:	6055      	str	r5, [r2, #4]
 800802a:	932b      	str	r3, [sp, #172]	; 0xac
 800802c:	dc5e      	bgt.n	80080ec <_vfprintf_r+0x15d4>
 800802e:	f898 3000 	ldrb.w	r3, [r8]
 8008032:	3208      	adds	r2, #8
 8008034:	2d00      	cmp	r5, #0
 8008036:	bfac      	ite	ge
 8008038:	1b5d      	subge	r5, r3, r5
 800803a:	461d      	movlt	r5, r3
 800803c:	2d00      	cmp	r5, #0
 800803e:	dd26      	ble.n	800808e <_vfprintf_r+0x1576>
 8008040:	2d10      	cmp	r5, #16
 8008042:	982b      	ldr	r0, [sp, #172]	; 0xac
 8008044:	dd3c      	ble.n	80080c0 <_vfprintf_r+0x15a8>
 8008046:	2410      	movs	r4, #16
 8008048:	e003      	b.n	8008052 <_vfprintf_r+0x153a>
 800804a:	3208      	adds	r2, #8
 800804c:	3d10      	subs	r5, #16
 800804e:	2d10      	cmp	r5, #16
 8008050:	dd36      	ble.n	80080c0 <_vfprintf_r+0x15a8>
 8008052:	3001      	adds	r0, #1
 8008054:	3110      	adds	r1, #16
 8008056:	2807      	cmp	r0, #7
 8008058:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800805c:	e9c2 6400 	strd	r6, r4, [r2]
 8008060:	ddf3      	ble.n	800804a <_vfprintf_r+0x1532>
 8008062:	aa2a      	add	r2, sp, #168	; 0xa8
 8008064:	4651      	mov	r1, sl
 8008066:	4648      	mov	r0, r9
 8008068:	f003 f884 	bl	800b174 <__sprint_r>
 800806c:	2800      	cmp	r0, #0
 800806e:	d150      	bne.n	8008112 <_vfprintf_r+0x15fa>
 8008070:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8008074:	aa2d      	add	r2, sp, #180	; 0xb4
 8008076:	e7e9      	b.n	800804c <_vfprintf_r+0x1534>
 8008078:	aa2a      	add	r2, sp, #168	; 0xa8
 800807a:	4651      	mov	r1, sl
 800807c:	4648      	mov	r0, r9
 800807e:	f003 f879 	bl	800b174 <__sprint_r>
 8008082:	2800      	cmp	r0, #0
 8008084:	d145      	bne.n	8008112 <_vfprintf_r+0x15fa>
 8008086:	f898 3000 	ldrb.w	r3, [r8]
 800808a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800808c:	aa2d      	add	r2, sp, #180	; 0xb4
 800808e:	441f      	add	r7, r3
 8008090:	e7a4      	b.n	8007fdc <_vfprintf_r+0x14c4>
 8008092:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8008094:	3b01      	subs	r3, #1
 8008096:	930f      	str	r3, [sp, #60]	; 0x3c
 8008098:	e7ab      	b.n	8007ff2 <_vfprintf_r+0x14da>
 800809a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800809c:	2b00      	cmp	r3, #0
 800809e:	d1f8      	bne.n	8008092 <_vfprintf_r+0x157a>
 80080a0:	46b9      	mov	r9, r7
 80080a2:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80080a4:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 80080a6:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 80080aa:	18fb      	adds	r3, r7, r3
 80080ac:	4599      	cmp	r9, r3
 80080ae:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80080b2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80080b6:	4693      	mov	fp, r2
 80080b8:	460c      	mov	r4, r1
 80080ba:	bf28      	it	cs
 80080bc:	4699      	movcs	r9, r3
 80080be:	e424      	b.n	800790a <_vfprintf_r+0xdf2>
 80080c0:	3001      	adds	r0, #1
 80080c2:	4429      	add	r1, r5
 80080c4:	2807      	cmp	r0, #7
 80080c6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80080ca:	e9c2 6500 	strd	r6, r5, [r2]
 80080ce:	dcd3      	bgt.n	8008078 <_vfprintf_r+0x1560>
 80080d0:	f898 3000 	ldrb.w	r3, [r8]
 80080d4:	3208      	adds	r2, #8
 80080d6:	441f      	add	r7, r3
 80080d8:	e780      	b.n	8007fdc <_vfprintf_r+0x14c4>
 80080da:	aa2a      	add	r2, sp, #168	; 0xa8
 80080dc:	4651      	mov	r1, sl
 80080de:	4648      	mov	r0, r9
 80080e0:	f003 f848 	bl	800b174 <__sprint_r>
 80080e4:	b9a8      	cbnz	r0, 8008112 <_vfprintf_r+0x15fa>
 80080e6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80080e8:	aa2d      	add	r2, sp, #180	; 0xb4
 80080ea:	e78e      	b.n	800800a <_vfprintf_r+0x14f2>
 80080ec:	aa2a      	add	r2, sp, #168	; 0xa8
 80080ee:	4651      	mov	r1, sl
 80080f0:	4648      	mov	r0, r9
 80080f2:	f003 f83f 	bl	800b174 <__sprint_r>
 80080f6:	b960      	cbnz	r0, 8008112 <_vfprintf_r+0x15fa>
 80080f8:	f898 3000 	ldrb.w	r3, [r8]
 80080fc:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80080fe:	aa2d      	add	r2, sp, #180	; 0xb4
 8008100:	e798      	b.n	8008034 <_vfprintf_r+0x151c>
 8008102:	4638      	mov	r0, r7
 8008104:	f7f8 fafc 	bl	8000700 <strlen>
 8008108:	46a9      	mov	r9, r5
 800810a:	4603      	mov	r3, r0
 800810c:	9009      	str	r0, [sp, #36]	; 0x24
 800810e:	f7ff b8f4 	b.w	80072fa <_vfprintf_r+0x7e2>
 8008112:	46d1      	mov	r9, sl
 8008114:	f7ff ba7a 	b.w	800760c <_vfprintf_r+0xaf4>
 8008118:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800811a:	4619      	mov	r1, r3
 800811c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800811e:	4299      	cmp	r1, r3
 8008120:	f300 8082 	bgt.w	8008228 <_vfprintf_r+0x1710>
 8008124:	07c4      	lsls	r4, r0, #31
 8008126:	f140 816b 	bpl.w	8008400 <_vfprintf_r+0x18e8>
 800812a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800812c:	4413      	add	r3, r2
 800812e:	9309      	str	r3, [sp, #36]	; 0x24
 8008130:	0541      	lsls	r1, r0, #21
 8008132:	d503      	bpl.n	800813c <_vfprintf_r+0x1624>
 8008134:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8008136:	2b00      	cmp	r3, #0
 8008138:	f300 80e6 	bgt.w	8008308 <_vfprintf_r+0x17f0>
 800813c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800813e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8008142:	9304      	str	r3, [sp, #16]
 8008144:	2667      	movs	r6, #103	; 0x67
 8008146:	2300      	movs	r3, #0
 8008148:	930f      	str	r3, [sp, #60]	; 0x3c
 800814a:	9314      	str	r3, [sp, #80]	; 0x50
 800814c:	e586      	b.n	8007c5c <_vfprintf_r+0x1144>
 800814e:	222d      	movs	r2, #45	; 0x2d
 8008150:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8008154:	f04f 0900 	mov.w	r9, #0
 8008158:	f7fe be6c 	b.w	8006e34 <_vfprintf_r+0x31c>
 800815c:	46a1      	mov	r9, r4
 800815e:	f7ff ba55 	b.w	800760c <_vfprintf_r+0xaf4>
 8008162:	900a      	str	r0, [sp, #40]	; 0x28
 8008164:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8008168:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800816c:	931f      	str	r3, [sp, #124]	; 0x7c
 800816e:	232d      	movs	r3, #45	; 0x2d
 8008170:	911e      	str	r1, [sp, #120]	; 0x78
 8008172:	930b      	str	r3, [sp, #44]	; 0x2c
 8008174:	e619      	b.n	8007daa <_vfprintf_r+0x1292>
 8008176:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8008178:	9328      	str	r3, [sp, #160]	; 0xa0
 800817a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800817c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8008180:	7bd9      	ldrb	r1, [r3, #15]
 8008182:	4291      	cmp	r1, r2
 8008184:	462b      	mov	r3, r5
 8008186:	d109      	bne.n	800819c <_vfprintf_r+0x1684>
 8008188:	2030      	movs	r0, #48	; 0x30
 800818a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800818e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8008190:	1e5a      	subs	r2, r3, #1
 8008192:	9228      	str	r2, [sp, #160]	; 0xa0
 8008194:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8008198:	4291      	cmp	r1, r2
 800819a:	d0f6      	beq.n	800818a <_vfprintf_r+0x1672>
 800819c:	2a39      	cmp	r2, #57	; 0x39
 800819e:	bf0b      	itete	eq
 80081a0:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 80081a2:	3201      	addne	r2, #1
 80081a4:	7a92      	ldrbeq	r2, [r2, #10]
 80081a6:	b2d2      	uxtbne	r2, r2
 80081a8:	f803 2c01 	strb.w	r2, [r3, #-1]
 80081ac:	e682      	b.n	8007eb4 <_vfprintf_r+0x139c>
 80081ae:	f418 7f00 	tst.w	r8, #512	; 0x200
 80081b2:	f43f ad9f 	beq.w	8007cf4 <_vfprintf_r+0x11dc>
 80081b6:	9a05      	ldr	r2, [sp, #20]
 80081b8:	701a      	strb	r2, [r3, #0]
 80081ba:	4657      	mov	r7, sl
 80081bc:	f7fe bf52 	b.w	8007064 <_vfprintf_r+0x54c>
 80081c0:	aa2a      	add	r2, sp, #168	; 0xa8
 80081c2:	9907      	ldr	r1, [sp, #28]
 80081c4:	9803      	ldr	r0, [sp, #12]
 80081c6:	f002 ffd5 	bl	800b174 <__sprint_r>
 80081ca:	2800      	cmp	r0, #0
 80081cc:	f47f aa1c 	bne.w	8007608 <_vfprintf_r+0xaf0>
 80081d0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80081d2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80081d6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80081da:	e571      	b.n	8007cc0 <_vfprintf_r+0x11a8>
 80081dc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80081de:	2b00      	cmp	r3, #0
 80081e0:	f340 8164 	ble.w	80084ac <_vfprintf_r+0x1994>
 80081e4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80081e6:	f1b9 0f00 	cmp.w	r9, #0
 80081ea:	f040 8103 	bne.w	80083f4 <_vfprintf_r+0x18dc>
 80081ee:	07c6      	lsls	r6, r0, #31
 80081f0:	f100 8100 	bmi.w	80083f4 <_vfprintf_r+0x18dc>
 80081f4:	9309      	str	r3, [sp, #36]	; 0x24
 80081f6:	2666      	movs	r6, #102	; 0x66
 80081f8:	0543      	lsls	r3, r0, #21
 80081fa:	f100 8086 	bmi.w	800830a <_vfprintf_r+0x17f2>
 80081fe:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008200:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8008204:	9304      	str	r3, [sp, #16]
 8008206:	e79e      	b.n	8008146 <_vfprintf_r+0x162e>
 8008208:	aa2a      	add	r2, sp, #168	; 0xa8
 800820a:	9907      	ldr	r1, [sp, #28]
 800820c:	9803      	ldr	r0, [sp, #12]
 800820e:	f002 ffb1 	bl	800b174 <__sprint_r>
 8008212:	2800      	cmp	r0, #0
 8008214:	f47f a9f8 	bne.w	8007608 <_vfprintf_r+0xaf0>
 8008218:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800821a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800821c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800821e:	1ad3      	subs	r3, r2, r3
 8008220:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8008224:	f7ff bb90 	b.w	8007948 <_vfprintf_r+0xe30>
 8008228:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800822a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800822c:	4413      	add	r3, r2
 800822e:	9309      	str	r3, [sp, #36]	; 0x24
 8008230:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8008232:	2b00      	cmp	r3, #0
 8008234:	f340 8149 	ble.w	80084ca <_vfprintf_r+0x19b2>
 8008238:	2667      	movs	r6, #103	; 0x67
 800823a:	e7dd      	b.n	80081f8 <_vfprintf_r+0x16e0>
 800823c:	2330      	movs	r3, #48	; 0x30
 800823e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8008242:	2358      	movs	r3, #88	; 0x58
 8008244:	e595      	b.n	8007d72 <_vfprintf_r+0x125a>
 8008246:	9803      	ldr	r0, [sp, #12]
 8008248:	aa2a      	add	r2, sp, #168	; 0xa8
 800824a:	4649      	mov	r1, r9
 800824c:	f002 ff92 	bl	800b174 <__sprint_r>
 8008250:	2800      	cmp	r0, #0
 8008252:	f47f a9e0 	bne.w	8007616 <_vfprintf_r+0xafe>
 8008256:	f7fe bf0f 	b.w	8007078 <_vfprintf_r+0x560>
 800825a:	a824      	add	r0, sp, #144	; 0x90
 800825c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8008260:	f002 fe90 	bl	800af84 <frexp>
 8008264:	2200      	movs	r2, #0
 8008266:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800826a:	ec51 0b10 	vmov	r0, r1, d0
 800826e:	f7f8 fcc3 	bl	8000bf8 <__aeabi_dmul>
 8008272:	2200      	movs	r2, #0
 8008274:	2300      	movs	r3, #0
 8008276:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800827a:	f7f8 ff25 	bl	80010c8 <__aeabi_dcmpeq>
 800827e:	b108      	cbz	r0, 8008284 <_vfprintf_r+0x176c>
 8008280:	2301      	movs	r3, #1
 8008282:	9324      	str	r3, [sp, #144]	; 0x90
 8008284:	4b02      	ldr	r3, [pc, #8]	; (8008290 <_vfprintf_r+0x1778>)
 8008286:	9309      	str	r3, [sp, #36]	; 0x24
 8008288:	e5ac      	b.n	8007de4 <_vfprintf_r+0x12cc>
 800828a:	bf00      	nop
 800828c:	0800bb8c 	.word	0x0800bb8c
 8008290:	0800bb48 	.word	0x0800bb48
 8008294:	425d      	negs	r5, r3
 8008296:	3310      	adds	r3, #16
 8008298:	4bb9      	ldr	r3, [pc, #740]	; (8008580 <_vfprintf_r+0x1a68>)
 800829a:	f280 8097 	bge.w	80083cc <_vfprintf_r+0x18b4>
 800829e:	4619      	mov	r1, r3
 80082a0:	2610      	movs	r6, #16
 80082a2:	4623      	mov	r3, r4
 80082a4:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80082a8:	460c      	mov	r4, r1
 80082aa:	e005      	b.n	80082b8 <_vfprintf_r+0x17a0>
 80082ac:	f10b 0b08 	add.w	fp, fp, #8
 80082b0:	3d10      	subs	r5, #16
 80082b2:	2d10      	cmp	r5, #16
 80082b4:	f340 8087 	ble.w	80083c6 <_vfprintf_r+0x18ae>
 80082b8:	3201      	adds	r2, #1
 80082ba:	3310      	adds	r3, #16
 80082bc:	2a07      	cmp	r2, #7
 80082be:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80082c2:	e9cb 4600 	strd	r4, r6, [fp]
 80082c6:	ddf1      	ble.n	80082ac <_vfprintf_r+0x1794>
 80082c8:	aa2a      	add	r2, sp, #168	; 0xa8
 80082ca:	9907      	ldr	r1, [sp, #28]
 80082cc:	4648      	mov	r0, r9
 80082ce:	f002 ff51 	bl	800b174 <__sprint_r>
 80082d2:	2800      	cmp	r0, #0
 80082d4:	f47f a998 	bne.w	8007608 <_vfprintf_r+0xaf0>
 80082d8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80082dc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80082e0:	e7e6      	b.n	80082b0 <_vfprintf_r+0x1798>
 80082e2:	f109 0101 	add.w	r1, r9, #1
 80082e6:	9803      	ldr	r0, [sp, #12]
 80082e8:	f001 fe80 	bl	8009fec <_malloc_r>
 80082ec:	4607      	mov	r7, r0
 80082ee:	2800      	cmp	r0, #0
 80082f0:	f000 813b 	beq.w	800856a <_vfprintf_r+0x1a52>
 80082f4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80082f8:	930e      	str	r3, [sp, #56]	; 0x38
 80082fa:	f026 0320 	bic.w	r3, r6, #32
 80082fe:	9304      	str	r3, [sp, #16]
 8008300:	46a0      	mov	r8, r4
 8008302:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8008304:	900a      	str	r0, [sp, #40]	; 0x28
 8008306:	e547      	b.n	8007d98 <_vfprintf_r+0x1280>
 8008308:	2667      	movs	r6, #103	; 0x67
 800830a:	981a      	ldr	r0, [sp, #104]	; 0x68
 800830c:	2200      	movs	r2, #0
 800830e:	920f      	str	r2, [sp, #60]	; 0x3c
 8008310:	9214      	str	r2, [sp, #80]	; 0x50
 8008312:	7803      	ldrb	r3, [r0, #0]
 8008314:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8008316:	2bff      	cmp	r3, #255	; 0xff
 8008318:	d00c      	beq.n	8008334 <_vfprintf_r+0x181c>
 800831a:	4293      	cmp	r3, r2
 800831c:	da0a      	bge.n	8008334 <_vfprintf_r+0x181c>
 800831e:	7841      	ldrb	r1, [r0, #1]
 8008320:	1ad2      	subs	r2, r2, r3
 8008322:	b1a9      	cbz	r1, 8008350 <_vfprintf_r+0x1838>
 8008324:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8008326:	3301      	adds	r3, #1
 8008328:	9314      	str	r3, [sp, #80]	; 0x50
 800832a:	460b      	mov	r3, r1
 800832c:	2bff      	cmp	r3, #255	; 0xff
 800832e:	f100 0001 	add.w	r0, r0, #1
 8008332:	d1f2      	bne.n	800831a <_vfprintf_r+0x1802>
 8008334:	9211      	str	r2, [sp, #68]	; 0x44
 8008336:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8008338:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800833a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800833c:	901a      	str	r0, [sp, #104]	; 0x68
 800833e:	4413      	add	r3, r2
 8008340:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8008342:	fb02 1303 	mla	r3, r2, r3, r1
 8008346:	9309      	str	r3, [sp, #36]	; 0x24
 8008348:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800834c:	9304      	str	r3, [sp, #16]
 800834e:	e485      	b.n	8007c5c <_vfprintf_r+0x1144>
 8008350:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8008352:	3101      	adds	r1, #1
 8008354:	910f      	str	r1, [sp, #60]	; 0x3c
 8008356:	e7de      	b.n	8008316 <_vfprintf_r+0x17fe>
 8008358:	aa28      	add	r2, sp, #160	; 0xa0
 800835a:	ab25      	add	r3, sp, #148	; 0x94
 800835c:	e9cd 3200 	strd	r3, r2, [sp]
 8008360:	2103      	movs	r1, #3
 8008362:	ab24      	add	r3, sp, #144	; 0x90
 8008364:	464a      	mov	r2, r9
 8008366:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800836a:	9803      	ldr	r0, [sp, #12]
 800836c:	f000 fa5c 	bl	8008828 <_dtoa_r>
 8008370:	464d      	mov	r5, r9
 8008372:	4607      	mov	r7, r0
 8008374:	eb00 0409 	add.w	r4, r0, r9
 8008378:	783b      	ldrb	r3, [r7, #0]
 800837a:	2b30      	cmp	r3, #48	; 0x30
 800837c:	f000 80be 	beq.w	80084fc <_vfprintf_r+0x19e4>
 8008380:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8008382:	442c      	add	r4, r5
 8008384:	2200      	movs	r2, #0
 8008386:	2300      	movs	r3, #0
 8008388:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800838c:	f7f8 fe9c 	bl	80010c8 <__aeabi_dcmpeq>
 8008390:	b108      	cbz	r0, 8008396 <_vfprintf_r+0x187e>
 8008392:	4623      	mov	r3, r4
 8008394:	e413      	b.n	8007bbe <_vfprintf_r+0x10a6>
 8008396:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8008398:	42a3      	cmp	r3, r4
 800839a:	f4bf ac10 	bcs.w	8007bbe <_vfprintf_r+0x10a6>
 800839e:	2130      	movs	r1, #48	; 0x30
 80083a0:	1c5a      	adds	r2, r3, #1
 80083a2:	9228      	str	r2, [sp, #160]	; 0xa0
 80083a4:	7019      	strb	r1, [r3, #0]
 80083a6:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 80083a8:	429c      	cmp	r4, r3
 80083aa:	d8f9      	bhi.n	80083a0 <_vfprintf_r+0x1888>
 80083ac:	e407      	b.n	8007bbe <_vfprintf_r+0x10a6>
 80083ae:	197c      	adds	r4, r7, r5
 80083b0:	e7e8      	b.n	8008384 <_vfprintf_r+0x186c>
 80083b2:	f1b9 0f00 	cmp.w	r9, #0
 80083b6:	f000 8092 	beq.w	80084de <_vfprintf_r+0x19c6>
 80083ba:	900a      	str	r0, [sp, #40]	; 0x28
 80083bc:	e4ec      	b.n	8007d98 <_vfprintf_r+0x1280>
 80083be:	900a      	str	r0, [sp, #40]	; 0x28
 80083c0:	f04f 0906 	mov.w	r9, #6
 80083c4:	e4e8      	b.n	8007d98 <_vfprintf_r+0x1280>
 80083c6:	4621      	mov	r1, r4
 80083c8:	461c      	mov	r4, r3
 80083ca:	460b      	mov	r3, r1
 80083cc:	3201      	adds	r2, #1
 80083ce:	442c      	add	r4, r5
 80083d0:	2a07      	cmp	r2, #7
 80083d2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80083d6:	e9cb 3500 	strd	r3, r5, [fp]
 80083da:	f300 80a9 	bgt.w	8008530 <_vfprintf_r+0x1a18>
 80083de:	f10b 0b08 	add.w	fp, fp, #8
 80083e2:	e470      	b.n	8007cc6 <_vfprintf_r+0x11ae>
 80083e4:	469a      	mov	sl, r3
 80083e6:	f7ff bb37 	b.w	8007a58 <_vfprintf_r+0xf40>
 80083ea:	2301      	movs	r3, #1
 80083ec:	9324      	str	r3, [sp, #144]	; 0x90
 80083ee:	4b65      	ldr	r3, [pc, #404]	; (8008584 <_vfprintf_r+0x1a6c>)
 80083f0:	9309      	str	r3, [sp, #36]	; 0x24
 80083f2:	e4f7      	b.n	8007de4 <_vfprintf_r+0x12cc>
 80083f4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80083f6:	4413      	add	r3, r2
 80083f8:	444b      	add	r3, r9
 80083fa:	9309      	str	r3, [sp, #36]	; 0x24
 80083fc:	2666      	movs	r6, #102	; 0x66
 80083fe:	e6fb      	b.n	80081f8 <_vfprintf_r+0x16e0>
 8008400:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8008402:	9309      	str	r3, [sp, #36]	; 0x24
 8008404:	e694      	b.n	8008130 <_vfprintf_r+0x1618>
 8008406:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 800840a:	4664      	mov	r4, ip
 800840c:	4d5e      	ldr	r5, [pc, #376]	; (8008588 <_vfprintf_r+0x1a70>)
 800840e:	e000      	b.n	8008412 <_vfprintf_r+0x18fa>
 8008410:	4614      	mov	r4, r2
 8008412:	fba5 1203 	umull	r1, r2, r5, r3
 8008416:	08d2      	lsrs	r2, r2, #3
 8008418:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800841c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8008420:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8008424:	4613      	mov	r3, r2
 8008426:	2b09      	cmp	r3, #9
 8008428:	f804 1c01 	strb.w	r1, [r4, #-1]
 800842c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8008430:	dcee      	bgt.n	8008410 <_vfprintf_r+0x18f8>
 8008432:	3330      	adds	r3, #48	; 0x30
 8008434:	3c02      	subs	r4, #2
 8008436:	b2db      	uxtb	r3, r3
 8008438:	45a4      	cmp	ip, r4
 800843a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800843e:	f240 8090 	bls.w	8008562 <_vfprintf_r+0x1a4a>
 8008442:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8008446:	4611      	mov	r1, r2
 8008448:	e001      	b.n	800844e <_vfprintf_r+0x1936>
 800844a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800844e:	f804 3b01 	strb.w	r3, [r4], #1
 8008452:	458c      	cmp	ip, r1
 8008454:	d1f9      	bne.n	800844a <_vfprintf_r+0x1932>
 8008456:	ab2a      	add	r3, sp, #168	; 0xa8
 8008458:	1a9b      	subs	r3, r3, r2
 800845a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800845e:	4413      	add	r3, r2
 8008460:	f7ff bbe3 	b.w	8007c2a <_vfprintf_r+0x1112>
 8008464:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8008466:	4f49      	ldr	r7, [pc, #292]	; (800858c <_vfprintf_r+0x1a74>)
 8008468:	2b00      	cmp	r3, #0
 800846a:	bfb6      	itet	lt
 800846c:	222d      	movlt	r2, #45	; 0x2d
 800846e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8008472:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8008476:	4b46      	ldr	r3, [pc, #280]	; (8008590 <_vfprintf_r+0x1a78>)
 8008478:	f7fe bf02 	b.w	8007280 <_vfprintf_r+0x768>
 800847c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8008480:	f7ff b8c9 	b.w	8007616 <_vfprintf_r+0xafe>
 8008484:	aa28      	add	r2, sp, #160	; 0xa0
 8008486:	ab25      	add	r3, sp, #148	; 0x94
 8008488:	e9cd 3200 	strd	r3, r2, [sp]
 800848c:	2103      	movs	r1, #3
 800848e:	ab24      	add	r3, sp, #144	; 0x90
 8008490:	464a      	mov	r2, r9
 8008492:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8008496:	9803      	ldr	r0, [sp, #12]
 8008498:	f000 f9c6 	bl	8008828 <_dtoa_r>
 800849c:	464d      	mov	r5, r9
 800849e:	4607      	mov	r7, r0
 80084a0:	2e46      	cmp	r6, #70	; 0x46
 80084a2:	eb07 0405 	add.w	r4, r7, r5
 80084a6:	f43f af67 	beq.w	8008378 <_vfprintf_r+0x1860>
 80084aa:	e76b      	b.n	8008384 <_vfprintf_r+0x186c>
 80084ac:	f1b9 0f00 	cmp.w	r9, #0
 80084b0:	d131      	bne.n	8008516 <_vfprintf_r+0x19fe>
 80084b2:	07c5      	lsls	r5, r0, #31
 80084b4:	d42f      	bmi.n	8008516 <_vfprintf_r+0x19fe>
 80084b6:	2301      	movs	r3, #1
 80084b8:	9304      	str	r3, [sp, #16]
 80084ba:	9309      	str	r3, [sp, #36]	; 0x24
 80084bc:	2666      	movs	r6, #102	; 0x66
 80084be:	e642      	b.n	8008146 <_vfprintf_r+0x162e>
 80084c0:	07c3      	lsls	r3, r0, #31
 80084c2:	f57f abbf 	bpl.w	8007c44 <_vfprintf_r+0x112c>
 80084c6:	f7ff bbb9 	b.w	8007c3c <_vfprintf_r+0x1124>
 80084ca:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80084cc:	f1c3 0301 	rsb	r3, r3, #1
 80084d0:	441a      	add	r2, r3
 80084d2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80084d6:	9209      	str	r2, [sp, #36]	; 0x24
 80084d8:	9304      	str	r3, [sp, #16]
 80084da:	2667      	movs	r6, #103	; 0x67
 80084dc:	e633      	b.n	8008146 <_vfprintf_r+0x162e>
 80084de:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80084e2:	f04f 0901 	mov.w	r9, #1
 80084e6:	e457      	b.n	8007d98 <_vfprintf_r+0x1280>
 80084e8:	465a      	mov	r2, fp
 80084ea:	e511      	b.n	8007f10 <_vfprintf_r+0x13f8>
 80084ec:	2e47      	cmp	r6, #71	; 0x47
 80084ee:	f47f af5e 	bne.w	80083ae <_vfprintf_r+0x1896>
 80084f2:	f018 0f01 	tst.w	r8, #1
 80084f6:	f43f ab61 	beq.w	8007bbc <_vfprintf_r+0x10a4>
 80084fa:	e7d1      	b.n	80084a0 <_vfprintf_r+0x1988>
 80084fc:	2200      	movs	r2, #0
 80084fe:	2300      	movs	r3, #0
 8008500:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 8008504:	f7f8 fde0 	bl	80010c8 <__aeabi_dcmpeq>
 8008508:	2800      	cmp	r0, #0
 800850a:	f47f af39 	bne.w	8008380 <_vfprintf_r+0x1868>
 800850e:	f1c5 0501 	rsb	r5, r5, #1
 8008512:	9524      	str	r5, [sp, #144]	; 0x90
 8008514:	e735      	b.n	8008382 <_vfprintf_r+0x186a>
 8008516:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8008518:	3301      	adds	r3, #1
 800851a:	444b      	add	r3, r9
 800851c:	9309      	str	r3, [sp, #36]	; 0x24
 800851e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8008522:	9304      	str	r3, [sp, #16]
 8008524:	2666      	movs	r6, #102	; 0x66
 8008526:	e60e      	b.n	8008146 <_vfprintf_r+0x162e>
 8008528:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800852c:	f7ff bb7a 	b.w	8007c24 <_vfprintf_r+0x110c>
 8008530:	aa2a      	add	r2, sp, #168	; 0xa8
 8008532:	9907      	ldr	r1, [sp, #28]
 8008534:	9803      	ldr	r0, [sp, #12]
 8008536:	f002 fe1d 	bl	800b174 <__sprint_r>
 800853a:	2800      	cmp	r0, #0
 800853c:	f47f a864 	bne.w	8007608 <_vfprintf_r+0xaf0>
 8008540:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8008544:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8008548:	f7ff bbbd 	b.w	8007cc6 <_vfprintf_r+0x11ae>
 800854c:	9908      	ldr	r1, [sp, #32]
 800854e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8008552:	680b      	ldr	r3, [r1, #0]
 8008554:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8008558:	1d0b      	adds	r3, r1, #4
 800855a:	4692      	mov	sl, r2
 800855c:	9308      	str	r3, [sp, #32]
 800855e:	f7fe bb59 	b.w	8006c14 <_vfprintf_r+0xfc>
 8008562:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8008566:	f7ff bb60 	b.w	8007c2a <_vfprintf_r+0x1112>
 800856a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800856e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8008572:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008576:	f8a9 300c 	strh.w	r3, [r9, #12]
 800857a:	f7ff b84c 	b.w	8007616 <_vfprintf_r+0xafe>
 800857e:	bf00      	nop
 8008580:	0800bb8c 	.word	0x0800bb8c
 8008584:	0800bb5c 	.word	0x0800bb5c
 8008588:	cccccccd 	.word	0xcccccccd
 800858c:	0800bb44 	.word	0x0800bb44
 8008590:	0800bb40 	.word	0x0800bb40

08008594 <__sbprintf>:
 8008594:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008598:	460c      	mov	r4, r1
 800859a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800859e:	8989      	ldrh	r1, [r1, #12]
 80085a0:	6e66      	ldr	r6, [r4, #100]	; 0x64
 80085a2:	89e5      	ldrh	r5, [r4, #14]
 80085a4:	9619      	str	r6, [sp, #100]	; 0x64
 80085a6:	f021 0102 	bic.w	r1, r1, #2
 80085aa:	4606      	mov	r6, r0
 80085ac:	69e0      	ldr	r0, [r4, #28]
 80085ae:	f8ad 100c 	strh.w	r1, [sp, #12]
 80085b2:	4617      	mov	r7, r2
 80085b4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80085b8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80085ba:	f8ad 500e 	strh.w	r5, [sp, #14]
 80085be:	4698      	mov	r8, r3
 80085c0:	ad1a      	add	r5, sp, #104	; 0x68
 80085c2:	2300      	movs	r3, #0
 80085c4:	9007      	str	r0, [sp, #28]
 80085c6:	a816      	add	r0, sp, #88	; 0x58
 80085c8:	9209      	str	r2, [sp, #36]	; 0x24
 80085ca:	9306      	str	r3, [sp, #24]
 80085cc:	9500      	str	r5, [sp, #0]
 80085ce:	9504      	str	r5, [sp, #16]
 80085d0:	9102      	str	r1, [sp, #8]
 80085d2:	9105      	str	r1, [sp, #20]
 80085d4:	f001 fc8a 	bl	8009eec <__retarget_lock_init_recursive>
 80085d8:	4643      	mov	r3, r8
 80085da:	463a      	mov	r2, r7
 80085dc:	4669      	mov	r1, sp
 80085de:	4630      	mov	r0, r6
 80085e0:	f7fe fa9a 	bl	8006b18 <_vfprintf_r>
 80085e4:	1e05      	subs	r5, r0, #0
 80085e6:	db07      	blt.n	80085f8 <__sbprintf+0x64>
 80085e8:	4630      	mov	r0, r6
 80085ea:	4669      	mov	r1, sp
 80085ec:	f001 f8d6 	bl	800979c <_fflush_r>
 80085f0:	2800      	cmp	r0, #0
 80085f2:	bf18      	it	ne
 80085f4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80085f8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80085fc:	065b      	lsls	r3, r3, #25
 80085fe:	d503      	bpl.n	8008608 <__sbprintf+0x74>
 8008600:	89a3      	ldrh	r3, [r4, #12]
 8008602:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008606:	81a3      	strh	r3, [r4, #12]
 8008608:	9816      	ldr	r0, [sp, #88]	; 0x58
 800860a:	f001 fc71 	bl	8009ef0 <__retarget_lock_close_recursive>
 800860e:	4628      	mov	r0, r5
 8008610:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8008614:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08008618 <__swsetup_r>:
 8008618:	b538      	push	{r3, r4, r5, lr}
 800861a:	4b31      	ldr	r3, [pc, #196]	; (80086e0 <__swsetup_r+0xc8>)
 800861c:	681b      	ldr	r3, [r3, #0]
 800861e:	4605      	mov	r5, r0
 8008620:	460c      	mov	r4, r1
 8008622:	b113      	cbz	r3, 800862a <__swsetup_r+0x12>
 8008624:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8008626:	2a00      	cmp	r2, #0
 8008628:	d03a      	beq.n	80086a0 <__swsetup_r+0x88>
 800862a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800862e:	b293      	uxth	r3, r2
 8008630:	0718      	lsls	r0, r3, #28
 8008632:	d50c      	bpl.n	800864e <__swsetup_r+0x36>
 8008634:	6920      	ldr	r0, [r4, #16]
 8008636:	b1a8      	cbz	r0, 8008664 <__swsetup_r+0x4c>
 8008638:	f013 0201 	ands.w	r2, r3, #1
 800863c:	d020      	beq.n	8008680 <__swsetup_r+0x68>
 800863e:	6963      	ldr	r3, [r4, #20]
 8008640:	2200      	movs	r2, #0
 8008642:	425b      	negs	r3, r3
 8008644:	61a3      	str	r3, [r4, #24]
 8008646:	60a2      	str	r2, [r4, #8]
 8008648:	b300      	cbz	r0, 800868c <__swsetup_r+0x74>
 800864a:	2000      	movs	r0, #0
 800864c:	bd38      	pop	{r3, r4, r5, pc}
 800864e:	06d9      	lsls	r1, r3, #27
 8008650:	d53e      	bpl.n	80086d0 <__swsetup_r+0xb8>
 8008652:	0758      	lsls	r0, r3, #29
 8008654:	d428      	bmi.n	80086a8 <__swsetup_r+0x90>
 8008656:	6920      	ldr	r0, [r4, #16]
 8008658:	f042 0308 	orr.w	r3, r2, #8
 800865c:	81a3      	strh	r3, [r4, #12]
 800865e:	b29b      	uxth	r3, r3
 8008660:	2800      	cmp	r0, #0
 8008662:	d1e9      	bne.n	8008638 <__swsetup_r+0x20>
 8008664:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8008668:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800866c:	d0e4      	beq.n	8008638 <__swsetup_r+0x20>
 800866e:	4628      	mov	r0, r5
 8008670:	4621      	mov	r1, r4
 8008672:	f001 fc71 	bl	8009f58 <__smakebuf_r>
 8008676:	89a3      	ldrh	r3, [r4, #12]
 8008678:	6920      	ldr	r0, [r4, #16]
 800867a:	f013 0201 	ands.w	r2, r3, #1
 800867e:	d1de      	bne.n	800863e <__swsetup_r+0x26>
 8008680:	0799      	lsls	r1, r3, #30
 8008682:	bf58      	it	pl
 8008684:	6962      	ldrpl	r2, [r4, #20]
 8008686:	60a2      	str	r2, [r4, #8]
 8008688:	2800      	cmp	r0, #0
 800868a:	d1de      	bne.n	800864a <__swsetup_r+0x32>
 800868c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008690:	061a      	lsls	r2, r3, #24
 8008692:	d5db      	bpl.n	800864c <__swsetup_r+0x34>
 8008694:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008698:	81a3      	strh	r3, [r4, #12]
 800869a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800869e:	bd38      	pop	{r3, r4, r5, pc}
 80086a0:	4618      	mov	r0, r3
 80086a2:	f001 f8d7 	bl	8009854 <__sinit>
 80086a6:	e7c0      	b.n	800862a <__swsetup_r+0x12>
 80086a8:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80086aa:	b151      	cbz	r1, 80086c2 <__swsetup_r+0xaa>
 80086ac:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80086b0:	4299      	cmp	r1, r3
 80086b2:	d004      	beq.n	80086be <__swsetup_r+0xa6>
 80086b4:	4628      	mov	r0, r5
 80086b6:	f001 f96f 	bl	8009998 <_free_r>
 80086ba:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80086be:	2300      	movs	r3, #0
 80086c0:	6323      	str	r3, [r4, #48]	; 0x30
 80086c2:	2300      	movs	r3, #0
 80086c4:	6920      	ldr	r0, [r4, #16]
 80086c6:	6063      	str	r3, [r4, #4]
 80086c8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80086cc:	6020      	str	r0, [r4, #0]
 80086ce:	e7c3      	b.n	8008658 <__swsetup_r+0x40>
 80086d0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80086d4:	2309      	movs	r3, #9
 80086d6:	602b      	str	r3, [r5, #0]
 80086d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80086dc:	81a2      	strh	r2, [r4, #12]
 80086de:	bd38      	pop	{r3, r4, r5, pc}
 80086e0:	20000018 	.word	0x20000018

080086e4 <register_fini>:
 80086e4:	4b02      	ldr	r3, [pc, #8]	; (80086f0 <register_fini+0xc>)
 80086e6:	b113      	cbz	r3, 80086ee <register_fini+0xa>
 80086e8:	4802      	ldr	r0, [pc, #8]	; (80086f4 <register_fini+0x10>)
 80086ea:	f000 b805 	b.w	80086f8 <atexit>
 80086ee:	4770      	bx	lr
 80086f0:	00000000 	.word	0x00000000
 80086f4:	080098c5 	.word	0x080098c5

080086f8 <atexit>:
 80086f8:	2300      	movs	r3, #0
 80086fa:	4601      	mov	r1, r0
 80086fc:	461a      	mov	r2, r3
 80086fe:	4618      	mov	r0, r3
 8008700:	f002 bd58 	b.w	800b1b4 <__register_exitproc>

08008704 <quorem>:
 8008704:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008708:	6903      	ldr	r3, [r0, #16]
 800870a:	690f      	ldr	r7, [r1, #16]
 800870c:	42bb      	cmp	r3, r7
 800870e:	b083      	sub	sp, #12
 8008710:	f2c0 8086 	blt.w	8008820 <quorem+0x11c>
 8008714:	3f01      	subs	r7, #1
 8008716:	f101 0914 	add.w	r9, r1, #20
 800871a:	f100 0a14 	add.w	sl, r0, #20
 800871e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8008722:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8008726:	00bc      	lsls	r4, r7, #2
 8008728:	3201      	adds	r2, #1
 800872a:	fbb3 f8f2 	udiv	r8, r3, r2
 800872e:	eb0a 0304 	add.w	r3, sl, r4
 8008732:	9400      	str	r4, [sp, #0]
 8008734:	eb09 0b04 	add.w	fp, r9, r4
 8008738:	9301      	str	r3, [sp, #4]
 800873a:	f1b8 0f00 	cmp.w	r8, #0
 800873e:	d038      	beq.n	80087b2 <quorem+0xae>
 8008740:	2500      	movs	r5, #0
 8008742:	462e      	mov	r6, r5
 8008744:	46ce      	mov	lr, r9
 8008746:	46d4      	mov	ip, sl
 8008748:	f85e 4b04 	ldr.w	r4, [lr], #4
 800874c:	f8dc 3000 	ldr.w	r3, [ip]
 8008750:	b2a2      	uxth	r2, r4
 8008752:	fb08 5502 	mla	r5, r8, r2, r5
 8008756:	0c22      	lsrs	r2, r4, #16
 8008758:	0c2c      	lsrs	r4, r5, #16
 800875a:	fb08 4202 	mla	r2, r8, r2, r4
 800875e:	b2ad      	uxth	r5, r5
 8008760:	1b75      	subs	r5, r6, r5
 8008762:	b296      	uxth	r6, r2
 8008764:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8008768:	fa15 f383 	uxtah	r3, r5, r3
 800876c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8008770:	b29b      	uxth	r3, r3
 8008772:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8008776:	45f3      	cmp	fp, lr
 8008778:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800877c:	f84c 3b04 	str.w	r3, [ip], #4
 8008780:	ea4f 4626 	mov.w	r6, r6, asr #16
 8008784:	d2e0      	bcs.n	8008748 <quorem+0x44>
 8008786:	9b00      	ldr	r3, [sp, #0]
 8008788:	f85a 3003 	ldr.w	r3, [sl, r3]
 800878c:	b98b      	cbnz	r3, 80087b2 <quorem+0xae>
 800878e:	9a01      	ldr	r2, [sp, #4]
 8008790:	1f13      	subs	r3, r2, #4
 8008792:	459a      	cmp	sl, r3
 8008794:	d20c      	bcs.n	80087b0 <quorem+0xac>
 8008796:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800879a:	b94b      	cbnz	r3, 80087b0 <quorem+0xac>
 800879c:	f1a2 0308 	sub.w	r3, r2, #8
 80087a0:	e002      	b.n	80087a8 <quorem+0xa4>
 80087a2:	681a      	ldr	r2, [r3, #0]
 80087a4:	3b04      	subs	r3, #4
 80087a6:	b91a      	cbnz	r2, 80087b0 <quorem+0xac>
 80087a8:	459a      	cmp	sl, r3
 80087aa:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 80087ae:	d3f8      	bcc.n	80087a2 <quorem+0x9e>
 80087b0:	6107      	str	r7, [r0, #16]
 80087b2:	4604      	mov	r4, r0
 80087b4:	f002 f944 	bl	800aa40 <__mcmp>
 80087b8:	2800      	cmp	r0, #0
 80087ba:	db2d      	blt.n	8008818 <quorem+0x114>
 80087bc:	f108 0801 	add.w	r8, r8, #1
 80087c0:	4655      	mov	r5, sl
 80087c2:	2300      	movs	r3, #0
 80087c4:	f859 1b04 	ldr.w	r1, [r9], #4
 80087c8:	6828      	ldr	r0, [r5, #0]
 80087ca:	b28a      	uxth	r2, r1
 80087cc:	1a9a      	subs	r2, r3, r2
 80087ce:	0c0b      	lsrs	r3, r1, #16
 80087d0:	fa12 f280 	uxtah	r2, r2, r0
 80087d4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80087d8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80087dc:	b292      	uxth	r2, r2
 80087de:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80087e2:	45cb      	cmp	fp, r9
 80087e4:	f845 2b04 	str.w	r2, [r5], #4
 80087e8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80087ec:	d2ea      	bcs.n	80087c4 <quorem+0xc0>
 80087ee:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80087f2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80087f6:	b97a      	cbnz	r2, 8008818 <quorem+0x114>
 80087f8:	1f1a      	subs	r2, r3, #4
 80087fa:	4592      	cmp	sl, r2
 80087fc:	d20b      	bcs.n	8008816 <quorem+0x112>
 80087fe:	f853 2c04 	ldr.w	r2, [r3, #-4]
 8008802:	b942      	cbnz	r2, 8008816 <quorem+0x112>
 8008804:	3b08      	subs	r3, #8
 8008806:	e002      	b.n	800880e <quorem+0x10a>
 8008808:	681a      	ldr	r2, [r3, #0]
 800880a:	3b04      	subs	r3, #4
 800880c:	b91a      	cbnz	r2, 8008816 <quorem+0x112>
 800880e:	459a      	cmp	sl, r3
 8008810:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8008814:	d3f8      	bcc.n	8008808 <quorem+0x104>
 8008816:	6127      	str	r7, [r4, #16]
 8008818:	4640      	mov	r0, r8
 800881a:	b003      	add	sp, #12
 800881c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008820:	2000      	movs	r0, #0
 8008822:	b003      	add	sp, #12
 8008824:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08008828 <_dtoa_r>:
 8008828:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800882c:	ec55 4b10 	vmov	r4, r5, d0
 8008830:	b09b      	sub	sp, #108	; 0x6c
 8008832:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8008834:	9102      	str	r1, [sp, #8]
 8008836:	4681      	mov	r9, r0
 8008838:	9207      	str	r2, [sp, #28]
 800883a:	9305      	str	r3, [sp, #20]
 800883c:	e9cd 4500 	strd	r4, r5, [sp]
 8008840:	b156      	cbz	r6, 8008858 <_dtoa_r+0x30>
 8008842:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8008844:	6072      	str	r2, [r6, #4]
 8008846:	2301      	movs	r3, #1
 8008848:	4093      	lsls	r3, r2
 800884a:	60b3      	str	r3, [r6, #8]
 800884c:	4631      	mov	r1, r6
 800884e:	f001 ff07 	bl	800a660 <_Bfree>
 8008852:	2300      	movs	r3, #0
 8008854:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8008858:	f1b5 0800 	subs.w	r8, r5, #0
 800885c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800885e:	bfb4      	ite	lt
 8008860:	2301      	movlt	r3, #1
 8008862:	2300      	movge	r3, #0
 8008864:	6013      	str	r3, [r2, #0]
 8008866:	4b76      	ldr	r3, [pc, #472]	; (8008a40 <_dtoa_r+0x218>)
 8008868:	bfbc      	itt	lt
 800886a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800886e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8008872:	ea33 0308 	bics.w	r3, r3, r8
 8008876:	f000 80a6 	beq.w	80089c6 <_dtoa_r+0x19e>
 800887a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800887e:	2200      	movs	r2, #0
 8008880:	2300      	movs	r3, #0
 8008882:	4630      	mov	r0, r6
 8008884:	4639      	mov	r1, r7
 8008886:	f7f8 fc1f 	bl	80010c8 <__aeabi_dcmpeq>
 800888a:	4605      	mov	r5, r0
 800888c:	b178      	cbz	r0, 80088ae <_dtoa_r+0x86>
 800888e:	9a05      	ldr	r2, [sp, #20]
 8008890:	2301      	movs	r3, #1
 8008892:	6013      	str	r3, [r2, #0]
 8008894:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8008896:	2b00      	cmp	r3, #0
 8008898:	f000 80c0 	beq.w	8008a1c <_dtoa_r+0x1f4>
 800889c:	4b69      	ldr	r3, [pc, #420]	; (8008a44 <_dtoa_r+0x21c>)
 800889e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80088a0:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 80088a4:	6013      	str	r3, [r2, #0]
 80088a6:	4658      	mov	r0, fp
 80088a8:	b01b      	add	sp, #108	; 0x6c
 80088aa:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80088ae:	aa18      	add	r2, sp, #96	; 0x60
 80088b0:	a919      	add	r1, sp, #100	; 0x64
 80088b2:	ec47 6b10 	vmov	d0, r6, r7
 80088b6:	4648      	mov	r0, r9
 80088b8:	f002 f954 	bl	800ab64 <__d2b>
 80088bc:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80088c0:	4682      	mov	sl, r0
 80088c2:	f040 80a0 	bne.w	8008a06 <_dtoa_r+0x1de>
 80088c6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80088ca:	442c      	add	r4, r5
 80088cc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80088d0:	2b20      	cmp	r3, #32
 80088d2:	f340 842c 	ble.w	800912e <_dtoa_r+0x906>
 80088d6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80088da:	fa08 f803 	lsl.w	r8, r8, r3
 80088de:	9b00      	ldr	r3, [sp, #0]
 80088e0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80088e4:	fa23 f000 	lsr.w	r0, r3, r0
 80088e8:	ea48 0000 	orr.w	r0, r8, r0
 80088ec:	f7f8 f90a 	bl	8000b04 <__aeabi_ui2d>
 80088f0:	2301      	movs	r3, #1
 80088f2:	4606      	mov	r6, r0
 80088f4:	3c01      	subs	r4, #1
 80088f6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80088fa:	930f      	str	r3, [sp, #60]	; 0x3c
 80088fc:	4630      	mov	r0, r6
 80088fe:	4639      	mov	r1, r7
 8008900:	2200      	movs	r2, #0
 8008902:	4b51      	ldr	r3, [pc, #324]	; (8008a48 <_dtoa_r+0x220>)
 8008904:	f7f7 ffc0 	bl	8000888 <__aeabi_dsub>
 8008908:	a347      	add	r3, pc, #284	; (adr r3, 8008a28 <_dtoa_r+0x200>)
 800890a:	e9d3 2300 	ldrd	r2, r3, [r3]
 800890e:	f7f8 f973 	bl	8000bf8 <__aeabi_dmul>
 8008912:	a347      	add	r3, pc, #284	; (adr r3, 8008a30 <_dtoa_r+0x208>)
 8008914:	e9d3 2300 	ldrd	r2, r3, [r3]
 8008918:	f7f7 ffb8 	bl	800088c <__adddf3>
 800891c:	4606      	mov	r6, r0
 800891e:	4620      	mov	r0, r4
 8008920:	460f      	mov	r7, r1
 8008922:	f7f8 f8ff 	bl	8000b24 <__aeabi_i2d>
 8008926:	a344      	add	r3, pc, #272	; (adr r3, 8008a38 <_dtoa_r+0x210>)
 8008928:	e9d3 2300 	ldrd	r2, r3, [r3]
 800892c:	f7f8 f964 	bl	8000bf8 <__aeabi_dmul>
 8008930:	4602      	mov	r2, r0
 8008932:	460b      	mov	r3, r1
 8008934:	4630      	mov	r0, r6
 8008936:	4639      	mov	r1, r7
 8008938:	f7f7 ffa8 	bl	800088c <__adddf3>
 800893c:	4606      	mov	r6, r0
 800893e:	460f      	mov	r7, r1
 8008940:	f7f8 fc0a 	bl	8001158 <__aeabi_d2iz>
 8008944:	2200      	movs	r2, #0
 8008946:	9006      	str	r0, [sp, #24]
 8008948:	2300      	movs	r3, #0
 800894a:	4630      	mov	r0, r6
 800894c:	4639      	mov	r1, r7
 800894e:	f7f8 fbc5 	bl	80010dc <__aeabi_dcmplt>
 8008952:	2800      	cmp	r0, #0
 8008954:	f040 8273 	bne.w	8008e3e <_dtoa_r+0x616>
 8008958:	9e06      	ldr	r6, [sp, #24]
 800895a:	2e16      	cmp	r6, #22
 800895c:	f200 825d 	bhi.w	8008e1a <_dtoa_r+0x5f2>
 8008960:	4b3a      	ldr	r3, [pc, #232]	; (8008a4c <_dtoa_r+0x224>)
 8008962:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8008966:	e9d3 0100 	ldrd	r0, r1, [r3]
 800896a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800896e:	f7f8 fbd3 	bl	8001118 <__aeabi_dcmpgt>
 8008972:	2800      	cmp	r0, #0
 8008974:	f000 83d7 	beq.w	8009126 <_dtoa_r+0x8fe>
 8008978:	1e73      	subs	r3, r6, #1
 800897a:	9306      	str	r3, [sp, #24]
 800897c:	2300      	movs	r3, #0
 800897e:	930d      	str	r3, [sp, #52]	; 0x34
 8008980:	1b2c      	subs	r4, r5, r4
 8008982:	f1b4 0801 	subs.w	r8, r4, #1
 8008986:	f100 8254 	bmi.w	8008e32 <_dtoa_r+0x60a>
 800898a:	2300      	movs	r3, #0
 800898c:	9308      	str	r3, [sp, #32]
 800898e:	9b06      	ldr	r3, [sp, #24]
 8008990:	2b00      	cmp	r3, #0
 8008992:	f2c0 8245 	blt.w	8008e20 <_dtoa_r+0x5f8>
 8008996:	4498      	add	r8, r3
 8008998:	930c      	str	r3, [sp, #48]	; 0x30
 800899a:	2300      	movs	r3, #0
 800899c:	930b      	str	r3, [sp, #44]	; 0x2c
 800899e:	9b02      	ldr	r3, [sp, #8]
 80089a0:	2b09      	cmp	r3, #9
 80089a2:	d85b      	bhi.n	8008a5c <_dtoa_r+0x234>
 80089a4:	2b05      	cmp	r3, #5
 80089a6:	f340 83c0 	ble.w	800912a <_dtoa_r+0x902>
 80089aa:	3b04      	subs	r3, #4
 80089ac:	9302      	str	r3, [sp, #8]
 80089ae:	2500      	movs	r5, #0
 80089b0:	9b02      	ldr	r3, [sp, #8]
 80089b2:	3b02      	subs	r3, #2
 80089b4:	2b03      	cmp	r3, #3
 80089b6:	f200 8498 	bhi.w	80092ea <_dtoa_r+0xac2>
 80089ba:	e8df f013 	tbh	[pc, r3, lsl #1]
 80089be:	03df      	.short	0x03df
 80089c0:	03e803bf 	.word	0x03e803bf
 80089c4:	04f5      	.short	0x04f5
 80089c6:	9a05      	ldr	r2, [sp, #20]
 80089c8:	f242 730f 	movw	r3, #9999	; 0x270f
 80089cc:	6013      	str	r3, [r2, #0]
 80089ce:	9b00      	ldr	r3, [sp, #0]
 80089d0:	b983      	cbnz	r3, 80089f4 <_dtoa_r+0x1cc>
 80089d2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 80089d6:	b96b      	cbnz	r3, 80089f4 <_dtoa_r+0x1cc>
 80089d8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80089da:	f8df b074 	ldr.w	fp, [pc, #116]	; 8008a50 <_dtoa_r+0x228>
 80089de:	2b00      	cmp	r3, #0
 80089e0:	f43f af61 	beq.w	80088a6 <_dtoa_r+0x7e>
 80089e4:	f10b 0308 	add.w	r3, fp, #8
 80089e8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 80089ea:	4658      	mov	r0, fp
 80089ec:	6013      	str	r3, [r2, #0]
 80089ee:	b01b      	add	sp, #108	; 0x6c
 80089f0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80089f4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80089f6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8008a54 <_dtoa_r+0x22c>
 80089fa:	2b00      	cmp	r3, #0
 80089fc:	f43f af53 	beq.w	80088a6 <_dtoa_r+0x7e>
 8008a00:	f10b 0303 	add.w	r3, fp, #3
 8008a04:	e7f0      	b.n	80089e8 <_dtoa_r+0x1c0>
 8008a06:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8008a0a:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8008a0e:	950f      	str	r5, [sp, #60]	; 0x3c
 8008a10:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8008a14:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8008a18:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8008a1a:	e76f      	b.n	80088fc <_dtoa_r+0xd4>
 8008a1c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8008a58 <_dtoa_r+0x230>
 8008a20:	4658      	mov	r0, fp
 8008a22:	b01b      	add	sp, #108	; 0x6c
 8008a24:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008a28:	636f4361 	.word	0x636f4361
 8008a2c:	3fd287a7 	.word	0x3fd287a7
 8008a30:	8b60c8b3 	.word	0x8b60c8b3
 8008a34:	3fc68a28 	.word	0x3fc68a28
 8008a38:	509f79fb 	.word	0x509f79fb
 8008a3c:	3fd34413 	.word	0x3fd34413
 8008a40:	7ff00000 	.word	0x7ff00000
 8008a44:	0800bb79 	.word	0x0800bb79
 8008a48:	3ff80000 	.word	0x3ff80000
 8008a4c:	0800bbd8 	.word	0x0800bbd8
 8008a50:	0800bb9c 	.word	0x0800bb9c
 8008a54:	0800bba8 	.word	0x0800bba8
 8008a58:	0800bb78 	.word	0x0800bb78
 8008a5c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8008a60:	2501      	movs	r5, #1
 8008a62:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8008a66:	2300      	movs	r3, #0
 8008a68:	9302      	str	r3, [sp, #8]
 8008a6a:	9307      	str	r3, [sp, #28]
 8008a6c:	2100      	movs	r1, #0
 8008a6e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8008a72:	940e      	str	r4, [sp, #56]	; 0x38
 8008a74:	4648      	mov	r0, r9
 8008a76:	f001 fdcd 	bl	800a614 <_Balloc>
 8008a7a:	2c0e      	cmp	r4, #14
 8008a7c:	4683      	mov	fp, r0
 8008a7e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8008a82:	f200 80fb 	bhi.w	8008c7c <_dtoa_r+0x454>
 8008a86:	2d00      	cmp	r5, #0
 8008a88:	f000 80f8 	beq.w	8008c7c <_dtoa_r+0x454>
 8008a8c:	ed9d 7b00 	vldr	d7, [sp]
 8008a90:	9906      	ldr	r1, [sp, #24]
 8008a92:	2900      	cmp	r1, #0
 8008a94:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8008a98:	f340 83e5 	ble.w	8009266 <_dtoa_r+0xa3e>
 8008a9c:	4b9d      	ldr	r3, [pc, #628]	; (8008d14 <_dtoa_r+0x4ec>)
 8008a9e:	f001 020f 	and.w	r2, r1, #15
 8008aa2:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8008aa6:	ed93 7b00 	vldr	d7, [r3]
 8008aaa:	110c      	asrs	r4, r1, #4
 8008aac:	06e2      	lsls	r2, r4, #27
 8008aae:	ed8d 7b00 	vstr	d7, [sp]
 8008ab2:	f140 849e 	bpl.w	80093f2 <_dtoa_r+0xbca>
 8008ab6:	4b98      	ldr	r3, [pc, #608]	; (8008d18 <_dtoa_r+0x4f0>)
 8008ab8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8008abc:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8008ac0:	f7f8 f9c4 	bl	8000e4c <__aeabi_ddiv>
 8008ac4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8008ac8:	f004 040f 	and.w	r4, r4, #15
 8008acc:	2603      	movs	r6, #3
 8008ace:	b17c      	cbz	r4, 8008af0 <_dtoa_r+0x2c8>
 8008ad0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8008ad4:	4d90      	ldr	r5, [pc, #576]	; (8008d18 <_dtoa_r+0x4f0>)
 8008ad6:	07e3      	lsls	r3, r4, #31
 8008ad8:	d504      	bpl.n	8008ae4 <_dtoa_r+0x2bc>
 8008ada:	e9d5 2300 	ldrd	r2, r3, [r5]
 8008ade:	f7f8 f88b 	bl	8000bf8 <__aeabi_dmul>
 8008ae2:	3601      	adds	r6, #1
 8008ae4:	1064      	asrs	r4, r4, #1
 8008ae6:	f105 0508 	add.w	r5, r5, #8
 8008aea:	d1f4      	bne.n	8008ad6 <_dtoa_r+0x2ae>
 8008aec:	e9cd 0100 	strd	r0, r1, [sp]
 8008af0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8008af4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8008af8:	f7f8 f9a8 	bl	8000e4c <__aeabi_ddiv>
 8008afc:	e9cd 0100 	strd	r0, r1, [sp]
 8008b00:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8008b02:	b143      	cbz	r3, 8008b16 <_dtoa_r+0x2ee>
 8008b04:	2200      	movs	r2, #0
 8008b06:	4b85      	ldr	r3, [pc, #532]	; (8008d1c <_dtoa_r+0x4f4>)
 8008b08:	e9dd 0100 	ldrd	r0, r1, [sp]
 8008b0c:	f7f8 fae6 	bl	80010dc <__aeabi_dcmplt>
 8008b10:	2800      	cmp	r0, #0
 8008b12:	f040 84ff 	bne.w	8009514 <_dtoa_r+0xcec>
 8008b16:	4630      	mov	r0, r6
 8008b18:	f7f8 f804 	bl	8000b24 <__aeabi_i2d>
 8008b1c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8008b20:	f7f8 f86a 	bl	8000bf8 <__aeabi_dmul>
 8008b24:	4b7e      	ldr	r3, [pc, #504]	; (8008d20 <_dtoa_r+0x4f8>)
 8008b26:	2200      	movs	r2, #0
 8008b28:	f7f7 feb0 	bl	800088c <__adddf3>
 8008b2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008b2e:	4606      	mov	r6, r0
 8008b30:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8008b34:	2b00      	cmp	r3, #0
 8008b36:	f000 841c 	beq.w	8009372 <_dtoa_r+0xb4a>
 8008b3a:	9b06      	ldr	r3, [sp, #24]
 8008b3c:	9316      	str	r3, [sp, #88]	; 0x58
 8008b3e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008b40:	9312      	str	r3, [sp, #72]	; 0x48
 8008b42:	e9dd 0100 	ldrd	r0, r1, [sp]
 8008b46:	f7f8 fb07 	bl	8001158 <__aeabi_d2iz>
 8008b4a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8008b4c:	4b71      	ldr	r3, [pc, #452]	; (8008d14 <_dtoa_r+0x4ec>)
 8008b4e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8008b52:	ed13 7b02 	vldr	d7, [r3, #-8]
 8008b56:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8008b5a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8008b5e:	f7f7 ffe1 	bl	8000b24 <__aeabi_i2d>
 8008b62:	460b      	mov	r3, r1
 8008b64:	4602      	mov	r2, r0
 8008b66:	e9dd 0100 	ldrd	r0, r1, [sp]
 8008b6a:	e9cd 6700 	strd	r6, r7, [sp]
 8008b6e:	f7f7 fe8b 	bl	8000888 <__aeabi_dsub>
 8008b72:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8008b74:	b2ed      	uxtb	r5, r5
 8008b76:	4606      	mov	r6, r0
 8008b78:	460f      	mov	r7, r1
 8008b7a:	f10b 0401 	add.w	r4, fp, #1
 8008b7e:	2b00      	cmp	r3, #0
 8008b80:	f000 8458 	beq.w	8009434 <_dtoa_r+0xc0c>
 8008b84:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8008b88:	2000      	movs	r0, #0
 8008b8a:	4966      	ldr	r1, [pc, #408]	; (8008d24 <_dtoa_r+0x4fc>)
 8008b8c:	f7f8 f95e 	bl	8000e4c <__aeabi_ddiv>
 8008b90:	e9dd 2300 	ldrd	r2, r3, [sp]
 8008b94:	f7f7 fe78 	bl	8000888 <__aeabi_dsub>
 8008b98:	f88b 5000 	strb.w	r5, [fp]
 8008b9c:	4632      	mov	r2, r6
 8008b9e:	463b      	mov	r3, r7
 8008ba0:	e9cd 0100 	strd	r0, r1, [sp]
 8008ba4:	f7f8 fab8 	bl	8001118 <__aeabi_dcmpgt>
 8008ba8:	2800      	cmp	r0, #0
 8008baa:	f040 8502 	bne.w	80095b2 <_dtoa_r+0xd8a>
 8008bae:	4632      	mov	r2, r6
 8008bb0:	463b      	mov	r3, r7
 8008bb2:	2000      	movs	r0, #0
 8008bb4:	4959      	ldr	r1, [pc, #356]	; (8008d1c <_dtoa_r+0x4f4>)
 8008bb6:	f7f7 fe67 	bl	8000888 <__aeabi_dsub>
 8008bba:	4602      	mov	r2, r0
 8008bbc:	460b      	mov	r3, r1
 8008bbe:	e9dd 0100 	ldrd	r0, r1, [sp]
 8008bc2:	f7f8 faa9 	bl	8001118 <__aeabi_dcmpgt>
 8008bc6:	2800      	cmp	r0, #0
 8008bc8:	f040 84fb 	bne.w	80095c2 <_dtoa_r+0xd9a>
 8008bcc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8008bce:	2a01      	cmp	r2, #1
 8008bd0:	d050      	beq.n	8008c74 <_dtoa_r+0x44c>
 8008bd2:	445a      	add	r2, fp
 8008bd4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8008bd8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8008bdc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8008be0:	4692      	mov	sl, r2
 8008be2:	46cb      	mov	fp, r9
 8008be4:	e9dd 8900 	ldrd	r8, r9, [sp]
 8008be8:	e00c      	b.n	8008c04 <_dtoa_r+0x3dc>
 8008bea:	2000      	movs	r0, #0
 8008bec:	494b      	ldr	r1, [pc, #300]	; (8008d1c <_dtoa_r+0x4f4>)
 8008bee:	f7f7 fe4b 	bl	8000888 <__aeabi_dsub>
 8008bf2:	4642      	mov	r2, r8
 8008bf4:	464b      	mov	r3, r9
 8008bf6:	f7f8 fa71 	bl	80010dc <__aeabi_dcmplt>
 8008bfa:	2800      	cmp	r0, #0
 8008bfc:	f040 84dc 	bne.w	80095b8 <_dtoa_r+0xd90>
 8008c00:	4554      	cmp	r4, sl
 8008c02:	d030      	beq.n	8008c66 <_dtoa_r+0x43e>
 8008c04:	4640      	mov	r0, r8
 8008c06:	4649      	mov	r1, r9
 8008c08:	2200      	movs	r2, #0
 8008c0a:	4b47      	ldr	r3, [pc, #284]	; (8008d28 <_dtoa_r+0x500>)
 8008c0c:	f7f7 fff4 	bl	8000bf8 <__aeabi_dmul>
 8008c10:	2200      	movs	r2, #0
 8008c12:	4b45      	ldr	r3, [pc, #276]	; (8008d28 <_dtoa_r+0x500>)
 8008c14:	4680      	mov	r8, r0
 8008c16:	4689      	mov	r9, r1
 8008c18:	4630      	mov	r0, r6
 8008c1a:	4639      	mov	r1, r7
 8008c1c:	f7f7 ffec 	bl	8000bf8 <__aeabi_dmul>
 8008c20:	460f      	mov	r7, r1
 8008c22:	4606      	mov	r6, r0
 8008c24:	f7f8 fa98 	bl	8001158 <__aeabi_d2iz>
 8008c28:	4605      	mov	r5, r0
 8008c2a:	f7f7 ff7b 	bl	8000b24 <__aeabi_i2d>
 8008c2e:	4602      	mov	r2, r0
 8008c30:	460b      	mov	r3, r1
 8008c32:	4630      	mov	r0, r6
 8008c34:	4639      	mov	r1, r7
 8008c36:	f7f7 fe27 	bl	8000888 <__aeabi_dsub>
 8008c3a:	3530      	adds	r5, #48	; 0x30
 8008c3c:	b2ed      	uxtb	r5, r5
 8008c3e:	4642      	mov	r2, r8
 8008c40:	464b      	mov	r3, r9
 8008c42:	f804 5b01 	strb.w	r5, [r4], #1
 8008c46:	4606      	mov	r6, r0
 8008c48:	460f      	mov	r7, r1
 8008c4a:	f7f8 fa47 	bl	80010dc <__aeabi_dcmplt>
 8008c4e:	4632      	mov	r2, r6
 8008c50:	463b      	mov	r3, r7
 8008c52:	2800      	cmp	r0, #0
 8008c54:	d0c9      	beq.n	8008bea <_dtoa_r+0x3c2>
 8008c56:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8008c58:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8008c5c:	9306      	str	r3, [sp, #24]
 8008c5e:	46d9      	mov	r9, fp
 8008c60:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8008c64:	e236      	b.n	80090d4 <_dtoa_r+0x8ac>
 8008c66:	46d9      	mov	r9, fp
 8008c68:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8008c6c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8008c70:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8008c74:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8008c78:	e9cd 3400 	strd	r3, r4, [sp]
 8008c7c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8008c7e:	2b00      	cmp	r3, #0
 8008c80:	f2c0 80ae 	blt.w	8008de0 <_dtoa_r+0x5b8>
 8008c84:	9a06      	ldr	r2, [sp, #24]
 8008c86:	2a0e      	cmp	r2, #14
 8008c88:	f300 80aa 	bgt.w	8008de0 <_dtoa_r+0x5b8>
 8008c8c:	4b21      	ldr	r3, [pc, #132]	; (8008d14 <_dtoa_r+0x4ec>)
 8008c8e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8008c92:	ed93 7b00 	vldr	d7, [r3]
 8008c96:	9b07      	ldr	r3, [sp, #28]
 8008c98:	2b00      	cmp	r3, #0
 8008c9a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8008c9e:	f2c0 82be 	blt.w	800921e <_dtoa_r+0x9f6>
 8008ca2:	e9dd 6700 	ldrd	r6, r7, [sp]
 8008ca6:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8008caa:	4630      	mov	r0, r6
 8008cac:	4639      	mov	r1, r7
 8008cae:	f7f8 f8cd 	bl	8000e4c <__aeabi_ddiv>
 8008cb2:	f7f8 fa51 	bl	8001158 <__aeabi_d2iz>
 8008cb6:	4605      	mov	r5, r0
 8008cb8:	f7f7 ff34 	bl	8000b24 <__aeabi_i2d>
 8008cbc:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8008cc0:	f7f7 ff9a 	bl	8000bf8 <__aeabi_dmul>
 8008cc4:	460b      	mov	r3, r1
 8008cc6:	4602      	mov	r2, r0
 8008cc8:	4639      	mov	r1, r7
 8008cca:	4630      	mov	r0, r6
 8008ccc:	f7f7 fddc 	bl	8000888 <__aeabi_dsub>
 8008cd0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8008cd4:	f88b 3000 	strb.w	r3, [fp]
 8008cd8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008cda:	2b01      	cmp	r3, #1
 8008cdc:	4606      	mov	r6, r0
 8008cde:	460f      	mov	r7, r1
 8008ce0:	f10b 0401 	add.w	r4, fp, #1
 8008ce4:	d053      	beq.n	8008d8e <_dtoa_r+0x566>
 8008ce6:	2200      	movs	r2, #0
 8008ce8:	4b0f      	ldr	r3, [pc, #60]	; (8008d28 <_dtoa_r+0x500>)
 8008cea:	f7f7 ff85 	bl	8000bf8 <__aeabi_dmul>
 8008cee:	2200      	movs	r2, #0
 8008cf0:	2300      	movs	r3, #0
 8008cf2:	4606      	mov	r6, r0
 8008cf4:	460f      	mov	r7, r1
 8008cf6:	f7f8 f9e7 	bl	80010c8 <__aeabi_dcmpeq>
 8008cfa:	2800      	cmp	r0, #0
 8008cfc:	f040 81ea 	bne.w	80090d4 <_dtoa_r+0x8ac>
 8008d00:	f8cd a000 	str.w	sl, [sp]
 8008d04:	f8cd 901c 	str.w	r9, [sp, #28]
 8008d08:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8008d0c:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8008d10:	e017      	b.n	8008d42 <_dtoa_r+0x51a>
 8008d12:	bf00      	nop
 8008d14:	0800bbd8 	.word	0x0800bbd8
 8008d18:	0800bbb0 	.word	0x0800bbb0
 8008d1c:	3ff00000 	.word	0x3ff00000
 8008d20:	401c0000 	.word	0x401c0000
 8008d24:	3fe00000 	.word	0x3fe00000
 8008d28:	40240000 	.word	0x40240000
 8008d2c:	f7f7 ff64 	bl	8000bf8 <__aeabi_dmul>
 8008d30:	2200      	movs	r2, #0
 8008d32:	2300      	movs	r3, #0
 8008d34:	4606      	mov	r6, r0
 8008d36:	460f      	mov	r7, r1
 8008d38:	f7f8 f9c6 	bl	80010c8 <__aeabi_dcmpeq>
 8008d3c:	2800      	cmp	r0, #0
 8008d3e:	f040 833d 	bne.w	80093bc <_dtoa_r+0xb94>
 8008d42:	464a      	mov	r2, r9
 8008d44:	4653      	mov	r3, sl
 8008d46:	4630      	mov	r0, r6
 8008d48:	4639      	mov	r1, r7
 8008d4a:	f7f8 f87f 	bl	8000e4c <__aeabi_ddiv>
 8008d4e:	f7f8 fa03 	bl	8001158 <__aeabi_d2iz>
 8008d52:	4605      	mov	r5, r0
 8008d54:	f7f7 fee6 	bl	8000b24 <__aeabi_i2d>
 8008d58:	464a      	mov	r2, r9
 8008d5a:	4653      	mov	r3, sl
 8008d5c:	f7f7 ff4c 	bl	8000bf8 <__aeabi_dmul>
 8008d60:	4602      	mov	r2, r0
 8008d62:	460b      	mov	r3, r1
 8008d64:	4630      	mov	r0, r6
 8008d66:	4639      	mov	r1, r7
 8008d68:	f7f7 fd8e 	bl	8000888 <__aeabi_dsub>
 8008d6c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8008d70:	f804 cb01 	strb.w	ip, [r4], #1
 8008d74:	eba4 0c0b 	sub.w	ip, r4, fp
 8008d78:	45e0      	cmp	r8, ip
 8008d7a:	4606      	mov	r6, r0
 8008d7c:	460f      	mov	r7, r1
 8008d7e:	f04f 0200 	mov.w	r2, #0
 8008d82:	4bc1      	ldr	r3, [pc, #772]	; (8009088 <_dtoa_r+0x860>)
 8008d84:	d1d2      	bne.n	8008d2c <_dtoa_r+0x504>
 8008d86:	f8dd a000 	ldr.w	sl, [sp]
 8008d8a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8008d8e:	4632      	mov	r2, r6
 8008d90:	463b      	mov	r3, r7
 8008d92:	4630      	mov	r0, r6
 8008d94:	4639      	mov	r1, r7
 8008d96:	f7f7 fd79 	bl	800088c <__adddf3>
 8008d9a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8008d9e:	4606      	mov	r6, r0
 8008da0:	460f      	mov	r7, r1
 8008da2:	f7f8 f9b9 	bl	8001118 <__aeabi_dcmpgt>
 8008da6:	b958      	cbnz	r0, 8008dc0 <_dtoa_r+0x598>
 8008da8:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8008dac:	4630      	mov	r0, r6
 8008dae:	4639      	mov	r1, r7
 8008db0:	f7f8 f98a 	bl	80010c8 <__aeabi_dcmpeq>
 8008db4:	2800      	cmp	r0, #0
 8008db6:	f000 818d 	beq.w	80090d4 <_dtoa_r+0x8ac>
 8008dba:	07e9      	lsls	r1, r5, #31
 8008dbc:	f140 818a 	bpl.w	80090d4 <_dtoa_r+0x8ac>
 8008dc0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8008dc4:	e005      	b.n	8008dd2 <_dtoa_r+0x5aa>
 8008dc6:	459b      	cmp	fp, r3
 8008dc8:	f000 8373 	beq.w	80094b2 <_dtoa_r+0xc8a>
 8008dcc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8008dd0:	461c      	mov	r4, r3
 8008dd2:	2d39      	cmp	r5, #57	; 0x39
 8008dd4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8008dd8:	d0f5      	beq.n	8008dc6 <_dtoa_r+0x59e>
 8008dda:	3501      	adds	r5, #1
 8008ddc:	701d      	strb	r5, [r3, #0]
 8008dde:	e179      	b.n	80090d4 <_dtoa_r+0x8ac>
 8008de0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8008de2:	2a00      	cmp	r2, #0
 8008de4:	d03b      	beq.n	8008e5e <_dtoa_r+0x636>
 8008de6:	9a02      	ldr	r2, [sp, #8]
 8008de8:	2a01      	cmp	r2, #1
 8008dea:	f340 820b 	ble.w	8009204 <_dtoa_r+0x9dc>
 8008dee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008df0:	1e5f      	subs	r7, r3, #1
 8008df2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8008df4:	42bb      	cmp	r3, r7
 8008df6:	f2c0 82e6 	blt.w	80093c6 <_dtoa_r+0xb9e>
 8008dfa:	1bdf      	subs	r7, r3, r7
 8008dfc:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008dfe:	2b00      	cmp	r3, #0
 8008e00:	f2c0 830b 	blt.w	800941a <_dtoa_r+0xbf2>
 8008e04:	9a08      	ldr	r2, [sp, #32]
 8008e06:	4614      	mov	r4, r2
 8008e08:	441a      	add	r2, r3
 8008e0a:	4498      	add	r8, r3
 8008e0c:	9208      	str	r2, [sp, #32]
 8008e0e:	2101      	movs	r1, #1
 8008e10:	4648      	mov	r0, r9
 8008e12:	f001 fcbf 	bl	800a794 <__i2b>
 8008e16:	4605      	mov	r5, r0
 8008e18:	e024      	b.n	8008e64 <_dtoa_r+0x63c>
 8008e1a:	2301      	movs	r3, #1
 8008e1c:	930d      	str	r3, [sp, #52]	; 0x34
 8008e1e:	e5af      	b.n	8008980 <_dtoa_r+0x158>
 8008e20:	9a08      	ldr	r2, [sp, #32]
 8008e22:	9b06      	ldr	r3, [sp, #24]
 8008e24:	1ad2      	subs	r2, r2, r3
 8008e26:	425b      	negs	r3, r3
 8008e28:	930b      	str	r3, [sp, #44]	; 0x2c
 8008e2a:	2300      	movs	r3, #0
 8008e2c:	9208      	str	r2, [sp, #32]
 8008e2e:	930c      	str	r3, [sp, #48]	; 0x30
 8008e30:	e5b5      	b.n	800899e <_dtoa_r+0x176>
 8008e32:	f1c4 0301 	rsb	r3, r4, #1
 8008e36:	9308      	str	r3, [sp, #32]
 8008e38:	f04f 0800 	mov.w	r8, #0
 8008e3c:	e5a7      	b.n	800898e <_dtoa_r+0x166>
 8008e3e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8008e42:	4640      	mov	r0, r8
 8008e44:	f7f7 fe6e 	bl	8000b24 <__aeabi_i2d>
 8008e48:	4632      	mov	r2, r6
 8008e4a:	463b      	mov	r3, r7
 8008e4c:	f7f8 f93c 	bl	80010c8 <__aeabi_dcmpeq>
 8008e50:	2800      	cmp	r0, #0
 8008e52:	f47f ad81 	bne.w	8008958 <_dtoa_r+0x130>
 8008e56:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8008e5a:	9306      	str	r3, [sp, #24]
 8008e5c:	e57c      	b.n	8008958 <_dtoa_r+0x130>
 8008e5e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8008e60:	9c08      	ldr	r4, [sp, #32]
 8008e62:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8008e64:	2c00      	cmp	r4, #0
 8008e66:	dd0c      	ble.n	8008e82 <_dtoa_r+0x65a>
 8008e68:	f1b8 0f00 	cmp.w	r8, #0
 8008e6c:	dd09      	ble.n	8008e82 <_dtoa_r+0x65a>
 8008e6e:	4544      	cmp	r4, r8
 8008e70:	9a08      	ldr	r2, [sp, #32]
 8008e72:	4623      	mov	r3, r4
 8008e74:	bfa8      	it	ge
 8008e76:	4643      	movge	r3, r8
 8008e78:	1ad2      	subs	r2, r2, r3
 8008e7a:	9208      	str	r2, [sp, #32]
 8008e7c:	1ae4      	subs	r4, r4, r3
 8008e7e:	eba8 0803 	sub.w	r8, r8, r3
 8008e82:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8008e84:	b16b      	cbz	r3, 8008ea2 <_dtoa_r+0x67a>
 8008e86:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8008e88:	2a00      	cmp	r2, #0
 8008e8a:	f000 8290 	beq.w	80093ae <_dtoa_r+0xb86>
 8008e8e:	1bde      	subs	r6, r3, r7
 8008e90:	2f00      	cmp	r7, #0
 8008e92:	f040 819b 	bne.w	80091cc <_dtoa_r+0x9a4>
 8008e96:	4651      	mov	r1, sl
 8008e98:	4632      	mov	r2, r6
 8008e9a:	4648      	mov	r0, r9
 8008e9c:	f001 fd2a 	bl	800a8f4 <__pow5mult>
 8008ea0:	4682      	mov	sl, r0
 8008ea2:	2101      	movs	r1, #1
 8008ea4:	4648      	mov	r0, r9
 8008ea6:	f001 fc75 	bl	800a794 <__i2b>
 8008eaa:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8008eac:	4606      	mov	r6, r0
 8008eae:	2a00      	cmp	r2, #0
 8008eb0:	f040 8125 	bne.w	80090fe <_dtoa_r+0x8d6>
 8008eb4:	9b02      	ldr	r3, [sp, #8]
 8008eb6:	2b01      	cmp	r3, #1
 8008eb8:	f340 816c 	ble.w	8009194 <_dtoa_r+0x96c>
 8008ebc:	2001      	movs	r0, #1
 8008ebe:	4440      	add	r0, r8
 8008ec0:	f010 001f 	ands.w	r0, r0, #31
 8008ec4:	f000 8119 	beq.w	80090fa <_dtoa_r+0x8d2>
 8008ec8:	f1c0 0320 	rsb	r3, r0, #32
 8008ecc:	2b04      	cmp	r3, #4
 8008ece:	f340 83ac 	ble.w	800962a <_dtoa_r+0xe02>
 8008ed2:	f1c0 001c 	rsb	r0, r0, #28
 8008ed6:	9b08      	ldr	r3, [sp, #32]
 8008ed8:	4403      	add	r3, r0
 8008eda:	9308      	str	r3, [sp, #32]
 8008edc:	4404      	add	r4, r0
 8008ede:	4480      	add	r8, r0
 8008ee0:	9b08      	ldr	r3, [sp, #32]
 8008ee2:	2b00      	cmp	r3, #0
 8008ee4:	dd05      	ble.n	8008ef2 <_dtoa_r+0x6ca>
 8008ee6:	4651      	mov	r1, sl
 8008ee8:	461a      	mov	r2, r3
 8008eea:	4648      	mov	r0, r9
 8008eec:	f001 fd52 	bl	800a994 <__lshift>
 8008ef0:	4682      	mov	sl, r0
 8008ef2:	f1b8 0f00 	cmp.w	r8, #0
 8008ef6:	dd05      	ble.n	8008f04 <_dtoa_r+0x6dc>
 8008ef8:	4631      	mov	r1, r6
 8008efa:	4642      	mov	r2, r8
 8008efc:	4648      	mov	r0, r9
 8008efe:	f001 fd49 	bl	800a994 <__lshift>
 8008f02:	4606      	mov	r6, r0
 8008f04:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8008f06:	2b00      	cmp	r3, #0
 8008f08:	d177      	bne.n	8008ffa <_dtoa_r+0x7d2>
 8008f0a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008f0c:	2b00      	cmp	r3, #0
 8008f0e:	f340 8209 	ble.w	8009324 <_dtoa_r+0xafc>
 8008f12:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8008f14:	2b00      	cmp	r3, #0
 8008f16:	f000 8089 	beq.w	800902c <_dtoa_r+0x804>
 8008f1a:	2c00      	cmp	r4, #0
 8008f1c:	f300 816b 	bgt.w	80091f6 <_dtoa_r+0x9ce>
 8008f20:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8008f22:	2b00      	cmp	r3, #0
 8008f24:	f040 81cd 	bne.w	80092c2 <_dtoa_r+0xa9a>
 8008f28:	46a8      	mov	r8, r5
 8008f2a:	9a00      	ldr	r2, [sp, #0]
 8008f2c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8008f30:	f002 0201 	and.w	r2, r2, #1
 8008f34:	920a      	str	r2, [sp, #40]	; 0x28
 8008f36:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8008f38:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 8008f3c:	441a      	add	r2, r3
 8008f3e:	465f      	mov	r7, fp
 8008f40:	9209      	str	r2, [sp, #36]	; 0x24
 8008f42:	46b3      	mov	fp, r6
 8008f44:	4659      	mov	r1, fp
 8008f46:	4650      	mov	r0, sl
 8008f48:	f7ff fbdc 	bl	8008704 <quorem>
 8008f4c:	4629      	mov	r1, r5
 8008f4e:	4604      	mov	r4, r0
 8008f50:	4650      	mov	r0, sl
 8008f52:	f001 fd75 	bl	800aa40 <__mcmp>
 8008f56:	4659      	mov	r1, fp
 8008f58:	4606      	mov	r6, r0
 8008f5a:	4642      	mov	r2, r8
 8008f5c:	4648      	mov	r0, r9
 8008f5e:	f001 fd8b 	bl	800aa78 <__mdiff>
 8008f62:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8008f66:	9300      	str	r3, [sp, #0]
 8008f68:	68c3      	ldr	r3, [r0, #12]
 8008f6a:	4601      	mov	r1, r0
 8008f6c:	2b00      	cmp	r3, #0
 8008f6e:	f040 81d4 	bne.w	800931a <_dtoa_r+0xaf2>
 8008f72:	9008      	str	r0, [sp, #32]
 8008f74:	4650      	mov	r0, sl
 8008f76:	f001 fd63 	bl	800aa40 <__mcmp>
 8008f7a:	9a08      	ldr	r2, [sp, #32]
 8008f7c:	9007      	str	r0, [sp, #28]
 8008f7e:	4611      	mov	r1, r2
 8008f80:	4648      	mov	r0, r9
 8008f82:	f001 fb6d 	bl	800a660 <_Bfree>
 8008f86:	9b07      	ldr	r3, [sp, #28]
 8008f88:	b933      	cbnz	r3, 8008f98 <_dtoa_r+0x770>
 8008f8a:	9a02      	ldr	r2, [sp, #8]
 8008f8c:	b922      	cbnz	r2, 8008f98 <_dtoa_r+0x770>
 8008f8e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8008f90:	2b00      	cmp	r3, #0
 8008f92:	f000 8319 	beq.w	80095c8 <_dtoa_r+0xda0>
 8008f96:	9b02      	ldr	r3, [sp, #8]
 8008f98:	2e00      	cmp	r6, #0
 8008f9a:	f2c0 821c 	blt.w	80093d6 <_dtoa_r+0xbae>
 8008f9e:	d105      	bne.n	8008fac <_dtoa_r+0x784>
 8008fa0:	9a02      	ldr	r2, [sp, #8]
 8008fa2:	b91a      	cbnz	r2, 8008fac <_dtoa_r+0x784>
 8008fa4:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8008fa6:	2a00      	cmp	r2, #0
 8008fa8:	f000 8215 	beq.w	80093d6 <_dtoa_r+0xbae>
 8008fac:	2b00      	cmp	r3, #0
 8008fae:	f107 0401 	add.w	r4, r7, #1
 8008fb2:	f300 8225 	bgt.w	8009400 <_dtoa_r+0xbd8>
 8008fb6:	9b00      	ldr	r3, [sp, #0]
 8008fb8:	703b      	strb	r3, [r7, #0]
 8008fba:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8008fbc:	42bb      	cmp	r3, r7
 8008fbe:	f000 8230 	beq.w	8009422 <_dtoa_r+0xbfa>
 8008fc2:	4651      	mov	r1, sl
 8008fc4:	2300      	movs	r3, #0
 8008fc6:	220a      	movs	r2, #10
 8008fc8:	4648      	mov	r0, r9
 8008fca:	f001 fb53 	bl	800a674 <__multadd>
 8008fce:	4545      	cmp	r5, r8
 8008fd0:	4682      	mov	sl, r0
 8008fd2:	4629      	mov	r1, r5
 8008fd4:	f04f 0300 	mov.w	r3, #0
 8008fd8:	f04f 020a 	mov.w	r2, #10
 8008fdc:	4648      	mov	r0, r9
 8008fde:	f000 8196 	beq.w	800930e <_dtoa_r+0xae6>
 8008fe2:	f001 fb47 	bl	800a674 <__multadd>
 8008fe6:	4641      	mov	r1, r8
 8008fe8:	4605      	mov	r5, r0
 8008fea:	2300      	movs	r3, #0
 8008fec:	220a      	movs	r2, #10
 8008fee:	4648      	mov	r0, r9
 8008ff0:	f001 fb40 	bl	800a674 <__multadd>
 8008ff4:	4627      	mov	r7, r4
 8008ff6:	4680      	mov	r8, r0
 8008ff8:	e7a4      	b.n	8008f44 <_dtoa_r+0x71c>
 8008ffa:	4631      	mov	r1, r6
 8008ffc:	4650      	mov	r0, sl
 8008ffe:	f001 fd1f 	bl	800aa40 <__mcmp>
 8009002:	2800      	cmp	r0, #0
 8009004:	da81      	bge.n	8008f0a <_dtoa_r+0x6e2>
 8009006:	9f06      	ldr	r7, [sp, #24]
 8009008:	4651      	mov	r1, sl
 800900a:	2300      	movs	r3, #0
 800900c:	220a      	movs	r2, #10
 800900e:	4648      	mov	r0, r9
 8009010:	3f01      	subs	r7, #1
 8009012:	9706      	str	r7, [sp, #24]
 8009014:	f001 fb2e 	bl	800a674 <__multadd>
 8009018:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800901a:	4682      	mov	sl, r0
 800901c:	2b00      	cmp	r3, #0
 800901e:	f040 82eb 	bne.w	80095f8 <_dtoa_r+0xdd0>
 8009022:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8009024:	2b00      	cmp	r3, #0
 8009026:	f340 82f3 	ble.w	8009610 <_dtoa_r+0xde8>
 800902a:	9309      	str	r3, [sp, #36]	; 0x24
 800902c:	465c      	mov	r4, fp
 800902e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8009032:	e002      	b.n	800903a <_dtoa_r+0x812>
 8009034:	f001 fb1e 	bl	800a674 <__multadd>
 8009038:	4682      	mov	sl, r0
 800903a:	4631      	mov	r1, r6
 800903c:	4650      	mov	r0, sl
 800903e:	f7ff fb61 	bl	8008704 <quorem>
 8009042:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8009046:	f804 7b01 	strb.w	r7, [r4], #1
 800904a:	eba4 030b 	sub.w	r3, r4, fp
 800904e:	4598      	cmp	r8, r3
 8009050:	f04f 020a 	mov.w	r2, #10
 8009054:	f04f 0300 	mov.w	r3, #0
 8009058:	4651      	mov	r1, sl
 800905a:	4648      	mov	r0, r9
 800905c:	dcea      	bgt.n	8009034 <_dtoa_r+0x80c>
 800905e:	2300      	movs	r3, #0
 8009060:	9700      	str	r7, [sp, #0]
 8009062:	9302      	str	r3, [sp, #8]
 8009064:	4651      	mov	r1, sl
 8009066:	2201      	movs	r2, #1
 8009068:	4648      	mov	r0, r9
 800906a:	f001 fc93 	bl	800a994 <__lshift>
 800906e:	4631      	mov	r1, r6
 8009070:	4682      	mov	sl, r0
 8009072:	f001 fce5 	bl	800aa40 <__mcmp>
 8009076:	2800      	cmp	r0, #0
 8009078:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800907c:	dc14      	bgt.n	80090a8 <_dtoa_r+0x880>
 800907e:	d108      	bne.n	8009092 <_dtoa_r+0x86a>
 8009080:	9b00      	ldr	r3, [sp, #0]
 8009082:	07db      	lsls	r3, r3, #31
 8009084:	d410      	bmi.n	80090a8 <_dtoa_r+0x880>
 8009086:	e004      	b.n	8009092 <_dtoa_r+0x86a>
 8009088:	40240000 	.word	0x40240000
 800908c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8009090:	461c      	mov	r4, r3
 8009092:	2a30      	cmp	r2, #48	; 0x30
 8009094:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8009098:	d0f8      	beq.n	800908c <_dtoa_r+0x864>
 800909a:	e00b      	b.n	80090b4 <_dtoa_r+0x88c>
 800909c:	459b      	cmp	fp, r3
 800909e:	f000 814e 	beq.w	800933e <_dtoa_r+0xb16>
 80090a2:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 80090a6:	461c      	mov	r4, r3
 80090a8:	2a39      	cmp	r2, #57	; 0x39
 80090aa:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 80090ae:	d0f5      	beq.n	800909c <_dtoa_r+0x874>
 80090b0:	3201      	adds	r2, #1
 80090b2:	701a      	strb	r2, [r3, #0]
 80090b4:	4631      	mov	r1, r6
 80090b6:	4648      	mov	r0, r9
 80090b8:	f001 fad2 	bl	800a660 <_Bfree>
 80090bc:	b155      	cbz	r5, 80090d4 <_dtoa_r+0x8ac>
 80090be:	9902      	ldr	r1, [sp, #8]
 80090c0:	b121      	cbz	r1, 80090cc <_dtoa_r+0x8a4>
 80090c2:	42a9      	cmp	r1, r5
 80090c4:	d002      	beq.n	80090cc <_dtoa_r+0x8a4>
 80090c6:	4648      	mov	r0, r9
 80090c8:	f001 faca 	bl	800a660 <_Bfree>
 80090cc:	4629      	mov	r1, r5
 80090ce:	4648      	mov	r0, r9
 80090d0:	f001 fac6 	bl	800a660 <_Bfree>
 80090d4:	4651      	mov	r1, sl
 80090d6:	4648      	mov	r0, r9
 80090d8:	f001 fac2 	bl	800a660 <_Bfree>
 80090dc:	2200      	movs	r2, #0
 80090de:	9b06      	ldr	r3, [sp, #24]
 80090e0:	7022      	strb	r2, [r4, #0]
 80090e2:	9a05      	ldr	r2, [sp, #20]
 80090e4:	3301      	adds	r3, #1
 80090e6:	6013      	str	r3, [r2, #0]
 80090e8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80090ea:	2b00      	cmp	r3, #0
 80090ec:	f43f abdb 	beq.w	80088a6 <_dtoa_r+0x7e>
 80090f0:	4658      	mov	r0, fp
 80090f2:	601c      	str	r4, [r3, #0]
 80090f4:	b01b      	add	sp, #108	; 0x6c
 80090f6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80090fa:	201c      	movs	r0, #28
 80090fc:	e6eb      	b.n	8008ed6 <_dtoa_r+0x6ae>
 80090fe:	4601      	mov	r1, r0
 8009100:	4648      	mov	r0, r9
 8009102:	f001 fbf7 	bl	800a8f4 <__pow5mult>
 8009106:	9b02      	ldr	r3, [sp, #8]
 8009108:	2b01      	cmp	r3, #1
 800910a:	4606      	mov	r6, r0
 800910c:	f340 80d4 	ble.w	80092b8 <_dtoa_r+0xa90>
 8009110:	2300      	movs	r3, #0
 8009112:	930c      	str	r3, [sp, #48]	; 0x30
 8009114:	6933      	ldr	r3, [r6, #16]
 8009116:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800911a:	6918      	ldr	r0, [r3, #16]
 800911c:	f001 faea 	bl	800a6f4 <__hi0bits>
 8009120:	f1c0 0020 	rsb	r0, r0, #32
 8009124:	e6cb      	b.n	8008ebe <_dtoa_r+0x696>
 8009126:	900d      	str	r0, [sp, #52]	; 0x34
 8009128:	e42a      	b.n	8008980 <_dtoa_r+0x158>
 800912a:	2501      	movs	r5, #1
 800912c:	e440      	b.n	80089b0 <_dtoa_r+0x188>
 800912e:	f1c3 0820 	rsb	r8, r3, #32
 8009132:	9b00      	ldr	r3, [sp, #0]
 8009134:	fa03 f008 	lsl.w	r0, r3, r8
 8009138:	f7ff bbd8 	b.w	80088ec <_dtoa_r+0xc4>
 800913c:	2300      	movs	r3, #0
 800913e:	930a      	str	r3, [sp, #40]	; 0x28
 8009140:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8009144:	4413      	add	r3, r2
 8009146:	930e      	str	r3, [sp, #56]	; 0x38
 8009148:	3301      	adds	r3, #1
 800914a:	2b01      	cmp	r3, #1
 800914c:	461e      	mov	r6, r3
 800914e:	9309      	str	r3, [sp, #36]	; 0x24
 8009150:	bfb8      	it	lt
 8009152:	2601      	movlt	r6, #1
 8009154:	2100      	movs	r1, #0
 8009156:	2e17      	cmp	r6, #23
 8009158:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800915c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800915e:	f77f ac89 	ble.w	8008a74 <_dtoa_r+0x24c>
 8009162:	2201      	movs	r2, #1
 8009164:	2304      	movs	r3, #4
 8009166:	005b      	lsls	r3, r3, #1
 8009168:	f103 0014 	add.w	r0, r3, #20
 800916c:	42b0      	cmp	r0, r6
 800916e:	4611      	mov	r1, r2
 8009170:	f102 0201 	add.w	r2, r2, #1
 8009174:	d9f7      	bls.n	8009166 <_dtoa_r+0x93e>
 8009176:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800917a:	e47b      	b.n	8008a74 <_dtoa_r+0x24c>
 800917c:	2300      	movs	r3, #0
 800917e:	930a      	str	r3, [sp, #40]	; 0x28
 8009180:	9e07      	ldr	r6, [sp, #28]
 8009182:	2e00      	cmp	r6, #0
 8009184:	f340 80e2 	ble.w	800934c <_dtoa_r+0xb24>
 8009188:	960e      	str	r6, [sp, #56]	; 0x38
 800918a:	9609      	str	r6, [sp, #36]	; 0x24
 800918c:	e7e2      	b.n	8009154 <_dtoa_r+0x92c>
 800918e:	2301      	movs	r3, #1
 8009190:	930a      	str	r3, [sp, #40]	; 0x28
 8009192:	e7f5      	b.n	8009180 <_dtoa_r+0x958>
 8009194:	9b00      	ldr	r3, [sp, #0]
 8009196:	2b00      	cmp	r3, #0
 8009198:	f47f ae90 	bne.w	8008ebc <_dtoa_r+0x694>
 800919c:	e9dd 1200 	ldrd	r1, r2, [sp]
 80091a0:	f3c2 0313 	ubfx	r3, r2, #0, #20
 80091a4:	2b00      	cmp	r3, #0
 80091a6:	f040 8192 	bne.w	80094ce <_dtoa_r+0xca6>
 80091aa:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 80091ae:	0d1b      	lsrs	r3, r3, #20
 80091b0:	051b      	lsls	r3, r3, #20
 80091b2:	b12b      	cbz	r3, 80091c0 <_dtoa_r+0x998>
 80091b4:	9b08      	ldr	r3, [sp, #32]
 80091b6:	3301      	adds	r3, #1
 80091b8:	9308      	str	r3, [sp, #32]
 80091ba:	f108 0801 	add.w	r8, r8, #1
 80091be:	2301      	movs	r3, #1
 80091c0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80091c2:	930c      	str	r3, [sp, #48]	; 0x30
 80091c4:	2a00      	cmp	r2, #0
 80091c6:	f43f ae79 	beq.w	8008ebc <_dtoa_r+0x694>
 80091ca:	e7a3      	b.n	8009114 <_dtoa_r+0x8ec>
 80091cc:	463a      	mov	r2, r7
 80091ce:	4629      	mov	r1, r5
 80091d0:	4648      	mov	r0, r9
 80091d2:	f001 fb8f 	bl	800a8f4 <__pow5mult>
 80091d6:	4652      	mov	r2, sl
 80091d8:	4601      	mov	r1, r0
 80091da:	4605      	mov	r5, r0
 80091dc:	4648      	mov	r0, r9
 80091de:	f001 fae3 	bl	800a7a8 <__multiply>
 80091e2:	4651      	mov	r1, sl
 80091e4:	4607      	mov	r7, r0
 80091e6:	4648      	mov	r0, r9
 80091e8:	f001 fa3a 	bl	800a660 <_Bfree>
 80091ec:	46ba      	mov	sl, r7
 80091ee:	2e00      	cmp	r6, #0
 80091f0:	f43f ae57 	beq.w	8008ea2 <_dtoa_r+0x67a>
 80091f4:	e64f      	b.n	8008e96 <_dtoa_r+0x66e>
 80091f6:	4629      	mov	r1, r5
 80091f8:	4622      	mov	r2, r4
 80091fa:	4648      	mov	r0, r9
 80091fc:	f001 fbca 	bl	800a994 <__lshift>
 8009200:	4605      	mov	r5, r0
 8009202:	e68d      	b.n	8008f20 <_dtoa_r+0x6f8>
 8009204:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 8009206:	2a00      	cmp	r2, #0
 8009208:	f000 815d 	beq.w	80094c6 <_dtoa_r+0xc9e>
 800920c:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8009210:	9a08      	ldr	r2, [sp, #32]
 8009212:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8009214:	4614      	mov	r4, r2
 8009216:	441a      	add	r2, r3
 8009218:	4498      	add	r8, r3
 800921a:	9208      	str	r2, [sp, #32]
 800921c:	e5f7      	b.n	8008e0e <_dtoa_r+0x5e6>
 800921e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8009220:	2b00      	cmp	r3, #0
 8009222:	f73f ad3e 	bgt.w	8008ca2 <_dtoa_r+0x47a>
 8009226:	f040 80bc 	bne.w	80093a2 <_dtoa_r+0xb7a>
 800922a:	ec51 0b17 	vmov	r0, r1, d7
 800922e:	2200      	movs	r2, #0
 8009230:	4bb2      	ldr	r3, [pc, #712]	; (80094fc <_dtoa_r+0xcd4>)
 8009232:	f7f7 fce1 	bl	8000bf8 <__aeabi_dmul>
 8009236:	e9dd 2300 	ldrd	r2, r3, [sp]
 800923a:	f7f7 ff63 	bl	8001104 <__aeabi_dcmpge>
 800923e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8009240:	4635      	mov	r5, r6
 8009242:	2800      	cmp	r0, #0
 8009244:	d176      	bne.n	8009334 <_dtoa_r+0xb0c>
 8009246:	9a06      	ldr	r2, [sp, #24]
 8009248:	2331      	movs	r3, #49	; 0x31
 800924a:	3201      	adds	r2, #1
 800924c:	9206      	str	r2, [sp, #24]
 800924e:	f88b 3000 	strb.w	r3, [fp]
 8009252:	f10b 0401 	add.w	r4, fp, #1
 8009256:	4631      	mov	r1, r6
 8009258:	4648      	mov	r0, r9
 800925a:	f001 fa01 	bl	800a660 <_Bfree>
 800925e:	2d00      	cmp	r5, #0
 8009260:	f47f af34 	bne.w	80090cc <_dtoa_r+0x8a4>
 8009264:	e736      	b.n	80090d4 <_dtoa_r+0x8ac>
 8009266:	f000 8142 	beq.w	80094ee <_dtoa_r+0xcc6>
 800926a:	9b06      	ldr	r3, [sp, #24]
 800926c:	425c      	negs	r4, r3
 800926e:	4ba4      	ldr	r3, [pc, #656]	; (8009500 <_dtoa_r+0xcd8>)
 8009270:	f004 020f 	and.w	r2, r4, #15
 8009274:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8009278:	e9d3 2300 	ldrd	r2, r3, [r3]
 800927c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8009280:	f7f7 fcba 	bl	8000bf8 <__aeabi_dmul>
 8009284:	1124      	asrs	r4, r4, #4
 8009286:	e9cd 0100 	strd	r0, r1, [sp]
 800928a:	f000 81c6 	beq.w	800961a <_dtoa_r+0xdf2>
 800928e:	4d9d      	ldr	r5, [pc, #628]	; (8009504 <_dtoa_r+0xcdc>)
 8009290:	2300      	movs	r3, #0
 8009292:	2602      	movs	r6, #2
 8009294:	07e7      	lsls	r7, r4, #31
 8009296:	d505      	bpl.n	80092a4 <_dtoa_r+0xa7c>
 8009298:	e9d5 2300 	ldrd	r2, r3, [r5]
 800929c:	f7f7 fcac 	bl	8000bf8 <__aeabi_dmul>
 80092a0:	3601      	adds	r6, #1
 80092a2:	2301      	movs	r3, #1
 80092a4:	1064      	asrs	r4, r4, #1
 80092a6:	f105 0508 	add.w	r5, r5, #8
 80092aa:	d1f3      	bne.n	8009294 <_dtoa_r+0xa6c>
 80092ac:	2b00      	cmp	r3, #0
 80092ae:	f43f ac27 	beq.w	8008b00 <_dtoa_r+0x2d8>
 80092b2:	e9cd 0100 	strd	r0, r1, [sp]
 80092b6:	e423      	b.n	8008b00 <_dtoa_r+0x2d8>
 80092b8:	9b00      	ldr	r3, [sp, #0]
 80092ba:	2b00      	cmp	r3, #0
 80092bc:	f43f af6e 	beq.w	800919c <_dtoa_r+0x974>
 80092c0:	e726      	b.n	8009110 <_dtoa_r+0x8e8>
 80092c2:	6869      	ldr	r1, [r5, #4]
 80092c4:	4648      	mov	r0, r9
 80092c6:	f001 f9a5 	bl	800a614 <_Balloc>
 80092ca:	692b      	ldr	r3, [r5, #16]
 80092cc:	3302      	adds	r3, #2
 80092ce:	009a      	lsls	r2, r3, #2
 80092d0:	4604      	mov	r4, r0
 80092d2:	f105 010c 	add.w	r1, r5, #12
 80092d6:	300c      	adds	r0, #12
 80092d8:	f7f7 f960 	bl	800059c <memcpy>
 80092dc:	4621      	mov	r1, r4
 80092de:	2201      	movs	r2, #1
 80092e0:	4648      	mov	r0, r9
 80092e2:	f001 fb57 	bl	800a994 <__lshift>
 80092e6:	4680      	mov	r8, r0
 80092e8:	e61f      	b.n	8008f2a <_dtoa_r+0x702>
 80092ea:	2400      	movs	r4, #0
 80092ec:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80092f0:	4621      	mov	r1, r4
 80092f2:	4648      	mov	r0, r9
 80092f4:	f001 f98e 	bl	800a614 <_Balloc>
 80092f8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80092fc:	930e      	str	r3, [sp, #56]	; 0x38
 80092fe:	9309      	str	r3, [sp, #36]	; 0x24
 8009300:	2301      	movs	r3, #1
 8009302:	4683      	mov	fp, r0
 8009304:	9407      	str	r4, [sp, #28]
 8009306:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 800930a:	930a      	str	r3, [sp, #40]	; 0x28
 800930c:	e4b6      	b.n	8008c7c <_dtoa_r+0x454>
 800930e:	f001 f9b1 	bl	800a674 <__multadd>
 8009312:	4627      	mov	r7, r4
 8009314:	4605      	mov	r5, r0
 8009316:	4680      	mov	r8, r0
 8009318:	e614      	b.n	8008f44 <_dtoa_r+0x71c>
 800931a:	4648      	mov	r0, r9
 800931c:	f001 f9a0 	bl	800a660 <_Bfree>
 8009320:	2301      	movs	r3, #1
 8009322:	e639      	b.n	8008f98 <_dtoa_r+0x770>
 8009324:	9b02      	ldr	r3, [sp, #8]
 8009326:	2b02      	cmp	r3, #2
 8009328:	f77f adf3 	ble.w	8008f12 <_dtoa_r+0x6ea>
 800932c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800932e:	2b00      	cmp	r3, #0
 8009330:	f000 80cf 	beq.w	80094d2 <_dtoa_r+0xcaa>
 8009334:	9b07      	ldr	r3, [sp, #28]
 8009336:	43db      	mvns	r3, r3
 8009338:	9306      	str	r3, [sp, #24]
 800933a:	465c      	mov	r4, fp
 800933c:	e78b      	b.n	8009256 <_dtoa_r+0xa2e>
 800933e:	9a06      	ldr	r2, [sp, #24]
 8009340:	2331      	movs	r3, #49	; 0x31
 8009342:	3201      	adds	r2, #1
 8009344:	9206      	str	r2, [sp, #24]
 8009346:	f88b 3000 	strb.w	r3, [fp]
 800934a:	e6b3      	b.n	80090b4 <_dtoa_r+0x88c>
 800934c:	2401      	movs	r4, #1
 800934e:	9409      	str	r4, [sp, #36]	; 0x24
 8009350:	9407      	str	r4, [sp, #28]
 8009352:	f7ff bb8b 	b.w	8008a6c <_dtoa_r+0x244>
 8009356:	4630      	mov	r0, r6
 8009358:	f7f7 fbe4 	bl	8000b24 <__aeabi_i2d>
 800935c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8009360:	f7f7 fc4a 	bl	8000bf8 <__aeabi_dmul>
 8009364:	2200      	movs	r2, #0
 8009366:	4b68      	ldr	r3, [pc, #416]	; (8009508 <_dtoa_r+0xce0>)
 8009368:	f7f7 fa90 	bl	800088c <__adddf3>
 800936c:	4606      	mov	r6, r0
 800936e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8009372:	2200      	movs	r2, #0
 8009374:	4b61      	ldr	r3, [pc, #388]	; (80094fc <_dtoa_r+0xcd4>)
 8009376:	e9dd 0100 	ldrd	r0, r1, [sp]
 800937a:	f7f7 fa85 	bl	8000888 <__aeabi_dsub>
 800937e:	4632      	mov	r2, r6
 8009380:	463b      	mov	r3, r7
 8009382:	4604      	mov	r4, r0
 8009384:	460d      	mov	r5, r1
 8009386:	f7f7 fec7 	bl	8001118 <__aeabi_dcmpgt>
 800938a:	2800      	cmp	r0, #0
 800938c:	d14f      	bne.n	800942e <_dtoa_r+0xc06>
 800938e:	4632      	mov	r2, r6
 8009390:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8009394:	4620      	mov	r0, r4
 8009396:	4629      	mov	r1, r5
 8009398:	f7f7 fea0 	bl	80010dc <__aeabi_dcmplt>
 800939c:	2800      	cmp	r0, #0
 800939e:	f43f ac69 	beq.w	8008c74 <_dtoa_r+0x44c>
 80093a2:	2600      	movs	r6, #0
 80093a4:	4635      	mov	r5, r6
 80093a6:	e7c5      	b.n	8009334 <_dtoa_r+0xb0c>
 80093a8:	2301      	movs	r3, #1
 80093aa:	930a      	str	r3, [sp, #40]	; 0x28
 80093ac:	e6c8      	b.n	8009140 <_dtoa_r+0x918>
 80093ae:	4651      	mov	r1, sl
 80093b0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80093b2:	4648      	mov	r0, r9
 80093b4:	f001 fa9e 	bl	800a8f4 <__pow5mult>
 80093b8:	4682      	mov	sl, r0
 80093ba:	e572      	b.n	8008ea2 <_dtoa_r+0x67a>
 80093bc:	f8dd a000 	ldr.w	sl, [sp]
 80093c0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80093c4:	e686      	b.n	80090d4 <_dtoa_r+0x8ac>
 80093c6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80093c8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80093ca:	1afb      	subs	r3, r7, r3
 80093cc:	441a      	add	r2, r3
 80093ce:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80093d2:	2700      	movs	r7, #0
 80093d4:	e512      	b.n	8008dfc <_dtoa_r+0x5d4>
 80093d6:	2b00      	cmp	r3, #0
 80093d8:	9402      	str	r4, [sp, #8]
 80093da:	465e      	mov	r6, fp
 80093dc:	f107 0401 	add.w	r4, r7, #1
 80093e0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80093e4:	f300 80ba 	bgt.w	800955c <_dtoa_r+0xd34>
 80093e8:	9b00      	ldr	r3, [sp, #0]
 80093ea:	9502      	str	r5, [sp, #8]
 80093ec:	703b      	strb	r3, [r7, #0]
 80093ee:	4645      	mov	r5, r8
 80093f0:	e660      	b.n	80090b4 <_dtoa_r+0x88c>
 80093f2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80093f6:	2602      	movs	r6, #2
 80093f8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80093fc:	f7ff bb67 	b.w	8008ace <_dtoa_r+0x2a6>
 8009400:	9b00      	ldr	r3, [sp, #0]
 8009402:	2b39      	cmp	r3, #57	; 0x39
 8009404:	465e      	mov	r6, fp
 8009406:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800940a:	f000 80b9 	beq.w	8009580 <_dtoa_r+0xd58>
 800940e:	9b00      	ldr	r3, [sp, #0]
 8009410:	9502      	str	r5, [sp, #8]
 8009412:	3301      	adds	r3, #1
 8009414:	703b      	strb	r3, [r7, #0]
 8009416:	4645      	mov	r5, r8
 8009418:	e64c      	b.n	80090b4 <_dtoa_r+0x88c>
 800941a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800941e:	1a9c      	subs	r4, r3, r2
 8009420:	e4f5      	b.n	8008e0e <_dtoa_r+0x5e6>
 8009422:	465e      	mov	r6, fp
 8009424:	9502      	str	r5, [sp, #8]
 8009426:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800942a:	4645      	mov	r5, r8
 800942c:	e61a      	b.n	8009064 <_dtoa_r+0x83c>
 800942e:	2600      	movs	r6, #0
 8009430:	4635      	mov	r5, r6
 8009432:	e708      	b.n	8009246 <_dtoa_r+0xa1e>
 8009434:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8009438:	e9dd 0100 	ldrd	r0, r1, [sp]
 800943c:	f7f7 fbdc 	bl	8000bf8 <__aeabi_dmul>
 8009440:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8009442:	f88b 5000 	strb.w	r5, [fp]
 8009446:	2b01      	cmp	r3, #1
 8009448:	e9cd 0100 	strd	r0, r1, [sp]
 800944c:	d020      	beq.n	8009490 <_dtoa_r+0xc68>
 800944e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8009450:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8009454:	445b      	add	r3, fp
 8009456:	4698      	mov	r8, r3
 8009458:	2200      	movs	r2, #0
 800945a:	4b2c      	ldr	r3, [pc, #176]	; (800950c <_dtoa_r+0xce4>)
 800945c:	4630      	mov	r0, r6
 800945e:	4639      	mov	r1, r7
 8009460:	f7f7 fbca 	bl	8000bf8 <__aeabi_dmul>
 8009464:	460f      	mov	r7, r1
 8009466:	4606      	mov	r6, r0
 8009468:	f7f7 fe76 	bl	8001158 <__aeabi_d2iz>
 800946c:	4605      	mov	r5, r0
 800946e:	f7f7 fb59 	bl	8000b24 <__aeabi_i2d>
 8009472:	3530      	adds	r5, #48	; 0x30
 8009474:	4602      	mov	r2, r0
 8009476:	460b      	mov	r3, r1
 8009478:	4630      	mov	r0, r6
 800947a:	4639      	mov	r1, r7
 800947c:	f7f7 fa04 	bl	8000888 <__aeabi_dsub>
 8009480:	f804 5b01 	strb.w	r5, [r4], #1
 8009484:	4544      	cmp	r4, r8
 8009486:	4606      	mov	r6, r0
 8009488:	460f      	mov	r7, r1
 800948a:	d1e5      	bne.n	8009458 <_dtoa_r+0xc30>
 800948c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8009490:	4b1f      	ldr	r3, [pc, #124]	; (8009510 <_dtoa_r+0xce8>)
 8009492:	2200      	movs	r2, #0
 8009494:	e9dd 0100 	ldrd	r0, r1, [sp]
 8009498:	f7f7 f9f8 	bl	800088c <__adddf3>
 800949c:	4632      	mov	r2, r6
 800949e:	463b      	mov	r3, r7
 80094a0:	f7f7 fe1c 	bl	80010dc <__aeabi_dcmplt>
 80094a4:	2800      	cmp	r0, #0
 80094a6:	d070      	beq.n	800958a <_dtoa_r+0xd62>
 80094a8:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80094aa:	9306      	str	r3, [sp, #24]
 80094ac:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80094b0:	e48f      	b.n	8008dd2 <_dtoa_r+0x5aa>
 80094b2:	2330      	movs	r3, #48	; 0x30
 80094b4:	f88b 3000 	strb.w	r3, [fp]
 80094b8:	9b06      	ldr	r3, [sp, #24]
 80094ba:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80094be:	3301      	adds	r3, #1
 80094c0:	9306      	str	r3, [sp, #24]
 80094c2:	465b      	mov	r3, fp
 80094c4:	e489      	b.n	8008dda <_dtoa_r+0x5b2>
 80094c6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80094c8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80094cc:	e6a0      	b.n	8009210 <_dtoa_r+0x9e8>
 80094ce:	2300      	movs	r3, #0
 80094d0:	e676      	b.n	80091c0 <_dtoa_r+0x998>
 80094d2:	4631      	mov	r1, r6
 80094d4:	2205      	movs	r2, #5
 80094d6:	4648      	mov	r0, r9
 80094d8:	f001 f8cc 	bl	800a674 <__multadd>
 80094dc:	4601      	mov	r1, r0
 80094de:	4606      	mov	r6, r0
 80094e0:	4650      	mov	r0, sl
 80094e2:	f001 faad 	bl	800aa40 <__mcmp>
 80094e6:	2800      	cmp	r0, #0
 80094e8:	f73f aead 	bgt.w	8009246 <_dtoa_r+0xa1e>
 80094ec:	e722      	b.n	8009334 <_dtoa_r+0xb0c>
 80094ee:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80094f2:	2602      	movs	r6, #2
 80094f4:	ed8d 7b00 	vstr	d7, [sp]
 80094f8:	f7ff bb02 	b.w	8008b00 <_dtoa_r+0x2d8>
 80094fc:	40140000 	.word	0x40140000
 8009500:	0800bbd8 	.word	0x0800bbd8
 8009504:	0800bbb0 	.word	0x0800bbb0
 8009508:	401c0000 	.word	0x401c0000
 800950c:	40240000 	.word	0x40240000
 8009510:	3fe00000 	.word	0x3fe00000
 8009514:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8009516:	2b00      	cmp	r3, #0
 8009518:	f43f af1d 	beq.w	8009356 <_dtoa_r+0xb2e>
 800951c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800951e:	2c00      	cmp	r4, #0
 8009520:	f77f aba8 	ble.w	8008c74 <_dtoa_r+0x44c>
 8009524:	2200      	movs	r2, #0
 8009526:	4b45      	ldr	r3, [pc, #276]	; (800963c <_dtoa_r+0xe14>)
 8009528:	e9dd 0100 	ldrd	r0, r1, [sp]
 800952c:	f7f7 fb64 	bl	8000bf8 <__aeabi_dmul>
 8009530:	e9cd 0100 	strd	r0, r1, [sp]
 8009534:	1c70      	adds	r0, r6, #1
 8009536:	f7f7 faf5 	bl	8000b24 <__aeabi_i2d>
 800953a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800953e:	f7f7 fb5b 	bl	8000bf8 <__aeabi_dmul>
 8009542:	4b3f      	ldr	r3, [pc, #252]	; (8009640 <_dtoa_r+0xe18>)
 8009544:	2200      	movs	r2, #0
 8009546:	f7f7 f9a1 	bl	800088c <__adddf3>
 800954a:	9b06      	ldr	r3, [sp, #24]
 800954c:	9412      	str	r4, [sp, #72]	; 0x48
 800954e:	3b01      	subs	r3, #1
 8009550:	4606      	mov	r6, r0
 8009552:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8009556:	9316      	str	r3, [sp, #88]	; 0x58
 8009558:	f7ff baf3 	b.w	8008b42 <_dtoa_r+0x31a>
 800955c:	4651      	mov	r1, sl
 800955e:	2201      	movs	r2, #1
 8009560:	4648      	mov	r0, r9
 8009562:	f001 fa17 	bl	800a994 <__lshift>
 8009566:	4631      	mov	r1, r6
 8009568:	4682      	mov	sl, r0
 800956a:	f001 fa69 	bl	800aa40 <__mcmp>
 800956e:	2800      	cmp	r0, #0
 8009570:	dd3b      	ble.n	80095ea <_dtoa_r+0xdc2>
 8009572:	9b00      	ldr	r3, [sp, #0]
 8009574:	2b39      	cmp	r3, #57	; 0x39
 8009576:	d003      	beq.n	8009580 <_dtoa_r+0xd58>
 8009578:	9b02      	ldr	r3, [sp, #8]
 800957a:	3331      	adds	r3, #49	; 0x31
 800957c:	9300      	str	r3, [sp, #0]
 800957e:	e733      	b.n	80093e8 <_dtoa_r+0xbc0>
 8009580:	2239      	movs	r2, #57	; 0x39
 8009582:	9502      	str	r5, [sp, #8]
 8009584:	703a      	strb	r2, [r7, #0]
 8009586:	4645      	mov	r5, r8
 8009588:	e58e      	b.n	80090a8 <_dtoa_r+0x880>
 800958a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800958e:	2000      	movs	r0, #0
 8009590:	492c      	ldr	r1, [pc, #176]	; (8009644 <_dtoa_r+0xe1c>)
 8009592:	f7f7 f979 	bl	8000888 <__aeabi_dsub>
 8009596:	4632      	mov	r2, r6
 8009598:	463b      	mov	r3, r7
 800959a:	f7f7 fdbd 	bl	8001118 <__aeabi_dcmpgt>
 800959e:	b910      	cbnz	r0, 80095a6 <_dtoa_r+0xd7e>
 80095a0:	f7ff bb68 	b.w	8008c74 <_dtoa_r+0x44c>
 80095a4:	4614      	mov	r4, r2
 80095a6:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 80095aa:	2b30      	cmp	r3, #48	; 0x30
 80095ac:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80095b0:	d0f8      	beq.n	80095a4 <_dtoa_r+0xd7c>
 80095b2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80095b4:	9306      	str	r3, [sp, #24]
 80095b6:	e58d      	b.n	80090d4 <_dtoa_r+0x8ac>
 80095b8:	46d9      	mov	r9, fp
 80095ba:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80095be:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80095c2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80095c4:	9306      	str	r3, [sp, #24]
 80095c6:	e404      	b.n	8008dd2 <_dtoa_r+0x5aa>
 80095c8:	9b00      	ldr	r3, [sp, #0]
 80095ca:	2b39      	cmp	r3, #57	; 0x39
 80095cc:	4621      	mov	r1, r4
 80095ce:	4632      	mov	r2, r6
 80095d0:	f107 0401 	add.w	r4, r7, #1
 80095d4:	465e      	mov	r6, fp
 80095d6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80095da:	d0d1      	beq.n	8009580 <_dtoa_r+0xd58>
 80095dc:	2a00      	cmp	r2, #0
 80095de:	f77f af03 	ble.w	80093e8 <_dtoa_r+0xbc0>
 80095e2:	460b      	mov	r3, r1
 80095e4:	3331      	adds	r3, #49	; 0x31
 80095e6:	9300      	str	r3, [sp, #0]
 80095e8:	e6fe      	b.n	80093e8 <_dtoa_r+0xbc0>
 80095ea:	f47f aefd 	bne.w	80093e8 <_dtoa_r+0xbc0>
 80095ee:	9b00      	ldr	r3, [sp, #0]
 80095f0:	07da      	lsls	r2, r3, #31
 80095f2:	f57f aef9 	bpl.w	80093e8 <_dtoa_r+0xbc0>
 80095f6:	e7bc      	b.n	8009572 <_dtoa_r+0xd4a>
 80095f8:	4629      	mov	r1, r5
 80095fa:	2300      	movs	r3, #0
 80095fc:	220a      	movs	r2, #10
 80095fe:	4648      	mov	r0, r9
 8009600:	f001 f838 	bl	800a674 <__multadd>
 8009604:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8009606:	2b00      	cmp	r3, #0
 8009608:	4605      	mov	r5, r0
 800960a:	dd09      	ble.n	8009620 <_dtoa_r+0xdf8>
 800960c:	9309      	str	r3, [sp, #36]	; 0x24
 800960e:	e484      	b.n	8008f1a <_dtoa_r+0x6f2>
 8009610:	9b02      	ldr	r3, [sp, #8]
 8009612:	2b02      	cmp	r3, #2
 8009614:	dc0e      	bgt.n	8009634 <_dtoa_r+0xe0c>
 8009616:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8009618:	e507      	b.n	800902a <_dtoa_r+0x802>
 800961a:	2602      	movs	r6, #2
 800961c:	f7ff ba70 	b.w	8008b00 <_dtoa_r+0x2d8>
 8009620:	9b02      	ldr	r3, [sp, #8]
 8009622:	2b02      	cmp	r3, #2
 8009624:	dc06      	bgt.n	8009634 <_dtoa_r+0xe0c>
 8009626:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8009628:	e7f0      	b.n	800960c <_dtoa_r+0xde4>
 800962a:	f43f ac59 	beq.w	8008ee0 <_dtoa_r+0x6b8>
 800962e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8009632:	e450      	b.n	8008ed6 <_dtoa_r+0x6ae>
 8009634:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8009636:	9309      	str	r3, [sp, #36]	; 0x24
 8009638:	e678      	b.n	800932c <_dtoa_r+0xb04>
 800963a:	bf00      	nop
 800963c:	40240000 	.word	0x40240000
 8009640:	401c0000 	.word	0x401c0000
 8009644:	3fe00000 	.word	0x3fe00000

08009648 <__sflush_r>:
 8009648:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800964c:	b29a      	uxth	r2, r3
 800964e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8009652:	460c      	mov	r4, r1
 8009654:	0711      	lsls	r1, r2, #28
 8009656:	4680      	mov	r8, r0
 8009658:	d444      	bmi.n	80096e4 <__sflush_r+0x9c>
 800965a:	6862      	ldr	r2, [r4, #4]
 800965c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8009660:	2a00      	cmp	r2, #0
 8009662:	81a3      	strh	r3, [r4, #12]
 8009664:	dd59      	ble.n	800971a <__sflush_r+0xd2>
 8009666:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8009668:	2d00      	cmp	r5, #0
 800966a:	d053      	beq.n	8009714 <__sflush_r+0xcc>
 800966c:	2200      	movs	r2, #0
 800966e:	b29b      	uxth	r3, r3
 8009670:	f8d8 6000 	ldr.w	r6, [r8]
 8009674:	69e1      	ldr	r1, [r4, #28]
 8009676:	f8c8 2000 	str.w	r2, [r8]
 800967a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800967e:	f040 8083 	bne.w	8009788 <__sflush_r+0x140>
 8009682:	2301      	movs	r3, #1
 8009684:	4640      	mov	r0, r8
 8009686:	47a8      	blx	r5
 8009688:	1c42      	adds	r2, r0, #1
 800968a:	d04a      	beq.n	8009722 <__sflush_r+0xda>
 800968c:	89a3      	ldrh	r3, [r4, #12]
 800968e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8009690:	69e1      	ldr	r1, [r4, #28]
 8009692:	075b      	lsls	r3, r3, #29
 8009694:	d505      	bpl.n	80096a2 <__sflush_r+0x5a>
 8009696:	6862      	ldr	r2, [r4, #4]
 8009698:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800969a:	1a80      	subs	r0, r0, r2
 800969c:	b10b      	cbz	r3, 80096a2 <__sflush_r+0x5a>
 800969e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 80096a0:	1ac0      	subs	r0, r0, r3
 80096a2:	4602      	mov	r2, r0
 80096a4:	2300      	movs	r3, #0
 80096a6:	4640      	mov	r0, r8
 80096a8:	47a8      	blx	r5
 80096aa:	1c47      	adds	r7, r0, #1
 80096ac:	d045      	beq.n	800973a <__sflush_r+0xf2>
 80096ae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80096b2:	6922      	ldr	r2, [r4, #16]
 80096b4:	6022      	str	r2, [r4, #0]
 80096b6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80096ba:	2200      	movs	r2, #0
 80096bc:	81a3      	strh	r3, [r4, #12]
 80096be:	04db      	lsls	r3, r3, #19
 80096c0:	6062      	str	r2, [r4, #4]
 80096c2:	d500      	bpl.n	80096c6 <__sflush_r+0x7e>
 80096c4:	6520      	str	r0, [r4, #80]	; 0x50
 80096c6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80096c8:	f8c8 6000 	str.w	r6, [r8]
 80096cc:	b311      	cbz	r1, 8009714 <__sflush_r+0xcc>
 80096ce:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80096d2:	4299      	cmp	r1, r3
 80096d4:	d002      	beq.n	80096dc <__sflush_r+0x94>
 80096d6:	4640      	mov	r0, r8
 80096d8:	f000 f95e 	bl	8009998 <_free_r>
 80096dc:	2000      	movs	r0, #0
 80096de:	6320      	str	r0, [r4, #48]	; 0x30
 80096e0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80096e4:	6926      	ldr	r6, [r4, #16]
 80096e6:	b1ae      	cbz	r6, 8009714 <__sflush_r+0xcc>
 80096e8:	6825      	ldr	r5, [r4, #0]
 80096ea:	6026      	str	r6, [r4, #0]
 80096ec:	0792      	lsls	r2, r2, #30
 80096ee:	bf0c      	ite	eq
 80096f0:	6963      	ldreq	r3, [r4, #20]
 80096f2:	2300      	movne	r3, #0
 80096f4:	1bad      	subs	r5, r5, r6
 80096f6:	60a3      	str	r3, [r4, #8]
 80096f8:	e00a      	b.n	8009710 <__sflush_r+0xc8>
 80096fa:	462b      	mov	r3, r5
 80096fc:	4632      	mov	r2, r6
 80096fe:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8009700:	69e1      	ldr	r1, [r4, #28]
 8009702:	4640      	mov	r0, r8
 8009704:	47b8      	blx	r7
 8009706:	2800      	cmp	r0, #0
 8009708:	eba5 0500 	sub.w	r5, r5, r0
 800970c:	4406      	add	r6, r0
 800970e:	dd2b      	ble.n	8009768 <__sflush_r+0x120>
 8009710:	2d00      	cmp	r5, #0
 8009712:	dcf2      	bgt.n	80096fa <__sflush_r+0xb2>
 8009714:	2000      	movs	r0, #0
 8009716:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800971a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800971c:	2a00      	cmp	r2, #0
 800971e:	dca2      	bgt.n	8009666 <__sflush_r+0x1e>
 8009720:	e7f8      	b.n	8009714 <__sflush_r+0xcc>
 8009722:	f8d8 3000 	ldr.w	r3, [r8]
 8009726:	2b00      	cmp	r3, #0
 8009728:	d0b0      	beq.n	800968c <__sflush_r+0x44>
 800972a:	2b1d      	cmp	r3, #29
 800972c:	d001      	beq.n	8009732 <__sflush_r+0xea>
 800972e:	2b16      	cmp	r3, #22
 8009730:	d12c      	bne.n	800978c <__sflush_r+0x144>
 8009732:	f8c8 6000 	str.w	r6, [r8]
 8009736:	2000      	movs	r0, #0
 8009738:	e7ed      	b.n	8009716 <__sflush_r+0xce>
 800973a:	f8d8 1000 	ldr.w	r1, [r8]
 800973e:	291d      	cmp	r1, #29
 8009740:	d81a      	bhi.n	8009778 <__sflush_r+0x130>
 8009742:	4b15      	ldr	r3, [pc, #84]	; (8009798 <__sflush_r+0x150>)
 8009744:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009748:	40cb      	lsrs	r3, r1
 800974a:	43db      	mvns	r3, r3
 800974c:	f013 0301 	ands.w	r3, r3, #1
 8009750:	d114      	bne.n	800977c <__sflush_r+0x134>
 8009752:	6925      	ldr	r5, [r4, #16]
 8009754:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8009758:	e9c4 5300 	strd	r5, r3, [r4]
 800975c:	04d5      	lsls	r5, r2, #19
 800975e:	81a2      	strh	r2, [r4, #12]
 8009760:	d5b1      	bpl.n	80096c6 <__sflush_r+0x7e>
 8009762:	2900      	cmp	r1, #0
 8009764:	d1af      	bne.n	80096c6 <__sflush_r+0x7e>
 8009766:	e7ad      	b.n	80096c4 <__sflush_r+0x7c>
 8009768:	89a3      	ldrh	r3, [r4, #12]
 800976a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800976e:	81a3      	strh	r3, [r4, #12]
 8009770:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009774:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8009778:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800977c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8009780:	81a2      	strh	r2, [r4, #12]
 8009782:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009786:	e7c6      	b.n	8009716 <__sflush_r+0xce>
 8009788:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800978a:	e782      	b.n	8009692 <__sflush_r+0x4a>
 800978c:	89a3      	ldrh	r3, [r4, #12]
 800978e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8009792:	81a3      	strh	r3, [r4, #12]
 8009794:	e7bf      	b.n	8009716 <__sflush_r+0xce>
 8009796:	bf00      	nop
 8009798:	20400001 	.word	0x20400001

0800979c <_fflush_r>:
 800979c:	b538      	push	{r3, r4, r5, lr}
 800979e:	460d      	mov	r5, r1
 80097a0:	4604      	mov	r4, r0
 80097a2:	b108      	cbz	r0, 80097a8 <_fflush_r+0xc>
 80097a4:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80097a6:	b1a3      	cbz	r3, 80097d2 <_fflush_r+0x36>
 80097a8:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80097ac:	b1b8      	cbz	r0, 80097de <_fflush_r+0x42>
 80097ae:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80097b0:	07db      	lsls	r3, r3, #31
 80097b2:	d401      	bmi.n	80097b8 <_fflush_r+0x1c>
 80097b4:	0581      	lsls	r1, r0, #22
 80097b6:	d51a      	bpl.n	80097ee <_fflush_r+0x52>
 80097b8:	4620      	mov	r0, r4
 80097ba:	4629      	mov	r1, r5
 80097bc:	f7ff ff44 	bl	8009648 <__sflush_r>
 80097c0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80097c2:	07da      	lsls	r2, r3, #31
 80097c4:	4604      	mov	r4, r0
 80097c6:	d402      	bmi.n	80097ce <_fflush_r+0x32>
 80097c8:	89ab      	ldrh	r3, [r5, #12]
 80097ca:	059b      	lsls	r3, r3, #22
 80097cc:	d50a      	bpl.n	80097e4 <_fflush_r+0x48>
 80097ce:	4620      	mov	r0, r4
 80097d0:	bd38      	pop	{r3, r4, r5, pc}
 80097d2:	f000 f83f 	bl	8009854 <__sinit>
 80097d6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80097da:	2800      	cmp	r0, #0
 80097dc:	d1e7      	bne.n	80097ae <_fflush_r+0x12>
 80097de:	4604      	mov	r4, r0
 80097e0:	4620      	mov	r0, r4
 80097e2:	bd38      	pop	{r3, r4, r5, pc}
 80097e4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80097e6:	f000 fb87 	bl	8009ef8 <__retarget_lock_release_recursive>
 80097ea:	4620      	mov	r0, r4
 80097ec:	bd38      	pop	{r3, r4, r5, pc}
 80097ee:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80097f0:	f000 fb80 	bl	8009ef4 <__retarget_lock_acquire_recursive>
 80097f4:	e7e0      	b.n	80097b8 <_fflush_r+0x1c>
 80097f6:	bf00      	nop

080097f8 <std>:
 80097f8:	b510      	push	{r4, lr}
 80097fa:	2300      	movs	r3, #0
 80097fc:	4604      	mov	r4, r0
 80097fe:	8181      	strh	r1, [r0, #12]
 8009800:	81c2      	strh	r2, [r0, #14]
 8009802:	e9c0 3300 	strd	r3, r3, [r0]
 8009806:	6083      	str	r3, [r0, #8]
 8009808:	6643      	str	r3, [r0, #100]	; 0x64
 800980a:	e9c0 3304 	strd	r3, r3, [r0, #16]
 800980e:	6183      	str	r3, [r0, #24]
 8009810:	4619      	mov	r1, r3
 8009812:	2208      	movs	r2, #8
 8009814:	305c      	adds	r0, #92	; 0x5c
 8009816:	f7fd f8c9 	bl	80069ac <memset>
 800981a:	4807      	ldr	r0, [pc, #28]	; (8009838 <std+0x40>)
 800981c:	4907      	ldr	r1, [pc, #28]	; (800983c <std+0x44>)
 800981e:	4a08      	ldr	r2, [pc, #32]	; (8009840 <std+0x48>)
 8009820:	4b08      	ldr	r3, [pc, #32]	; (8009844 <std+0x4c>)
 8009822:	62e3      	str	r3, [r4, #44]	; 0x2c
 8009824:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8009828:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800982c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8009830:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8009834:	f000 bb5a 	b.w	8009eec <__retarget_lock_init_recursive>
 8009838:	0800b011 	.word	0x0800b011
 800983c:	0800b035 	.word	0x0800b035
 8009840:	0800b071 	.word	0x0800b071
 8009844:	0800b091 	.word	0x0800b091

08009848 <_cleanup_r>:
 8009848:	4901      	ldr	r1, [pc, #4]	; (8009850 <_cleanup_r+0x8>)
 800984a:	f000 bb17 	b.w	8009e7c <_fwalk_reent>
 800984e:	bf00      	nop
 8009850:	0800b301 	.word	0x0800b301

08009854 <__sinit>:
 8009854:	b510      	push	{r4, lr}
 8009856:	4604      	mov	r4, r0
 8009858:	4812      	ldr	r0, [pc, #72]	; (80098a4 <__sinit+0x50>)
 800985a:	f000 fb4b 	bl	8009ef4 <__retarget_lock_acquire_recursive>
 800985e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8009860:	b9d2      	cbnz	r2, 8009898 <__sinit+0x44>
 8009862:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8009866:	4810      	ldr	r0, [pc, #64]	; (80098a8 <__sinit+0x54>)
 8009868:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800986c:	2103      	movs	r1, #3
 800986e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8009872:	63e0      	str	r0, [r4, #60]	; 0x3c
 8009874:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8009878:	6860      	ldr	r0, [r4, #4]
 800987a:	2104      	movs	r1, #4
 800987c:	f7ff ffbc 	bl	80097f8 <std>
 8009880:	2201      	movs	r2, #1
 8009882:	2109      	movs	r1, #9
 8009884:	68a0      	ldr	r0, [r4, #8]
 8009886:	f7ff ffb7 	bl	80097f8 <std>
 800988a:	2202      	movs	r2, #2
 800988c:	2112      	movs	r1, #18
 800988e:	68e0      	ldr	r0, [r4, #12]
 8009890:	f7ff ffb2 	bl	80097f8 <std>
 8009894:	2301      	movs	r3, #1
 8009896:	63a3      	str	r3, [r4, #56]	; 0x38
 8009898:	4802      	ldr	r0, [pc, #8]	; (80098a4 <__sinit+0x50>)
 800989a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800989e:	f000 bb2b 	b.w	8009ef8 <__retarget_lock_release_recursive>
 80098a2:	bf00      	nop
 80098a4:	20001430 	.word	0x20001430
 80098a8:	08009849 	.word	0x08009849

080098ac <__sfp_lock_acquire>:
 80098ac:	4801      	ldr	r0, [pc, #4]	; (80098b4 <__sfp_lock_acquire+0x8>)
 80098ae:	f000 bb21 	b.w	8009ef4 <__retarget_lock_acquire_recursive>
 80098b2:	bf00      	nop
 80098b4:	20001444 	.word	0x20001444

080098b8 <__sfp_lock_release>:
 80098b8:	4801      	ldr	r0, [pc, #4]	; (80098c0 <__sfp_lock_release+0x8>)
 80098ba:	f000 bb1d 	b.w	8009ef8 <__retarget_lock_release_recursive>
 80098be:	bf00      	nop
 80098c0:	20001444 	.word	0x20001444

080098c4 <__libc_fini_array>:
 80098c4:	b538      	push	{r3, r4, r5, lr}
 80098c6:	4c0a      	ldr	r4, [pc, #40]	; (80098f0 <__libc_fini_array+0x2c>)
 80098c8:	4d0a      	ldr	r5, [pc, #40]	; (80098f4 <__libc_fini_array+0x30>)
 80098ca:	1b64      	subs	r4, r4, r5
 80098cc:	10a4      	asrs	r4, r4, #2
 80098ce:	d00a      	beq.n	80098e6 <__libc_fini_array+0x22>
 80098d0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80098d4:	3b01      	subs	r3, #1
 80098d6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80098da:	3c01      	subs	r4, #1
 80098dc:	f855 3904 	ldr.w	r3, [r5], #-4
 80098e0:	4798      	blx	r3
 80098e2:	2c00      	cmp	r4, #0
 80098e4:	d1f9      	bne.n	80098da <__libc_fini_array+0x16>
 80098e6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80098ea:	f001 befd 	b.w	800b6e8 <_fini>
 80098ee:	bf00      	nop
 80098f0:	0800bdd4 	.word	0x0800bdd4
 80098f4:	0800bdd0 	.word	0x0800bdd0

080098f8 <_malloc_trim_r>:
 80098f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80098fa:	4f24      	ldr	r7, [pc, #144]	; (800998c <_malloc_trim_r+0x94>)
 80098fc:	460c      	mov	r4, r1
 80098fe:	4606      	mov	r6, r0
 8009900:	f000 fe7c 	bl	800a5fc <__malloc_lock>
 8009904:	68bb      	ldr	r3, [r7, #8]
 8009906:	685d      	ldr	r5, [r3, #4]
 8009908:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 800990c:	310f      	adds	r1, #15
 800990e:	f025 0503 	bic.w	r5, r5, #3
 8009912:	4429      	add	r1, r5
 8009914:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8009918:	f021 010f 	bic.w	r1, r1, #15
 800991c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8009920:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8009924:	db07      	blt.n	8009936 <_malloc_trim_r+0x3e>
 8009926:	2100      	movs	r1, #0
 8009928:	4630      	mov	r0, r6
 800992a:	f001 fb5f 	bl	800afec <_sbrk_r>
 800992e:	68bb      	ldr	r3, [r7, #8]
 8009930:	442b      	add	r3, r5
 8009932:	4298      	cmp	r0, r3
 8009934:	d004      	beq.n	8009940 <_malloc_trim_r+0x48>
 8009936:	4630      	mov	r0, r6
 8009938:	f000 fe66 	bl	800a608 <__malloc_unlock>
 800993c:	2000      	movs	r0, #0
 800993e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8009940:	4261      	negs	r1, r4
 8009942:	4630      	mov	r0, r6
 8009944:	f001 fb52 	bl	800afec <_sbrk_r>
 8009948:	3001      	adds	r0, #1
 800994a:	d00d      	beq.n	8009968 <_malloc_trim_r+0x70>
 800994c:	4b10      	ldr	r3, [pc, #64]	; (8009990 <_malloc_trim_r+0x98>)
 800994e:	68ba      	ldr	r2, [r7, #8]
 8009950:	6819      	ldr	r1, [r3, #0]
 8009952:	1b2d      	subs	r5, r5, r4
 8009954:	f045 0501 	orr.w	r5, r5, #1
 8009958:	4630      	mov	r0, r6
 800995a:	1b09      	subs	r1, r1, r4
 800995c:	6055      	str	r5, [r2, #4]
 800995e:	6019      	str	r1, [r3, #0]
 8009960:	f000 fe52 	bl	800a608 <__malloc_unlock>
 8009964:	2001      	movs	r0, #1
 8009966:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8009968:	2100      	movs	r1, #0
 800996a:	4630      	mov	r0, r6
 800996c:	f001 fb3e 	bl	800afec <_sbrk_r>
 8009970:	68ba      	ldr	r2, [r7, #8]
 8009972:	1a83      	subs	r3, r0, r2
 8009974:	2b0f      	cmp	r3, #15
 8009976:	ddde      	ble.n	8009936 <_malloc_trim_r+0x3e>
 8009978:	4c06      	ldr	r4, [pc, #24]	; (8009994 <_malloc_trim_r+0x9c>)
 800997a:	4905      	ldr	r1, [pc, #20]	; (8009990 <_malloc_trim_r+0x98>)
 800997c:	6824      	ldr	r4, [r4, #0]
 800997e:	f043 0301 	orr.w	r3, r3, #1
 8009982:	1b00      	subs	r0, r0, r4
 8009984:	6053      	str	r3, [r2, #4]
 8009986:	6008      	str	r0, [r1, #0]
 8009988:	e7d5      	b.n	8009936 <_malloc_trim_r+0x3e>
 800998a:	bf00      	nop
 800998c:	2000044c 	.word	0x2000044c
 8009990:	200013a4 	.word	0x200013a4
 8009994:	20000854 	.word	0x20000854

08009998 <_free_r>:
 8009998:	2900      	cmp	r1, #0
 800999a:	d053      	beq.n	8009a44 <_free_r+0xac>
 800999c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800999e:	460c      	mov	r4, r1
 80099a0:	4606      	mov	r6, r0
 80099a2:	f000 fe2b 	bl	800a5fc <__malloc_lock>
 80099a6:	f854 cc04 	ldr.w	ip, [r4, #-4]
 80099aa:	4f71      	ldr	r7, [pc, #452]	; (8009b70 <_free_r+0x1d8>)
 80099ac:	f02c 0101 	bic.w	r1, ip, #1
 80099b0:	f1a4 0508 	sub.w	r5, r4, #8
 80099b4:	186b      	adds	r3, r5, r1
 80099b6:	68b8      	ldr	r0, [r7, #8]
 80099b8:	685a      	ldr	r2, [r3, #4]
 80099ba:	4298      	cmp	r0, r3
 80099bc:	f022 0203 	bic.w	r2, r2, #3
 80099c0:	d053      	beq.n	8009a6a <_free_r+0xd2>
 80099c2:	f01c 0f01 	tst.w	ip, #1
 80099c6:	605a      	str	r2, [r3, #4]
 80099c8:	eb03 0002 	add.w	r0, r3, r2
 80099cc:	d13b      	bne.n	8009a46 <_free_r+0xae>
 80099ce:	f854 cc08 	ldr.w	ip, [r4, #-8]
 80099d2:	6840      	ldr	r0, [r0, #4]
 80099d4:	eba5 050c 	sub.w	r5, r5, ip
 80099d8:	f107 0e08 	add.w	lr, r7, #8
 80099dc:	68ac      	ldr	r4, [r5, #8]
 80099de:	4574      	cmp	r4, lr
 80099e0:	4461      	add	r1, ip
 80099e2:	f000 0001 	and.w	r0, r0, #1
 80099e6:	d075      	beq.n	8009ad4 <_free_r+0x13c>
 80099e8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 80099ec:	f8c4 c00c 	str.w	ip, [r4, #12]
 80099f0:	f8cc 4008 	str.w	r4, [ip, #8]
 80099f4:	b360      	cbz	r0, 8009a50 <_free_r+0xb8>
 80099f6:	f041 0301 	orr.w	r3, r1, #1
 80099fa:	606b      	str	r3, [r5, #4]
 80099fc:	5069      	str	r1, [r5, r1]
 80099fe:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8009a02:	d350      	bcc.n	8009aa6 <_free_r+0x10e>
 8009a04:	0a4b      	lsrs	r3, r1, #9
 8009a06:	2b04      	cmp	r3, #4
 8009a08:	d870      	bhi.n	8009aec <_free_r+0x154>
 8009a0a:	098b      	lsrs	r3, r1, #6
 8009a0c:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8009a10:	00e4      	lsls	r4, r4, #3
 8009a12:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8009a16:	1938      	adds	r0, r7, r4
 8009a18:	593b      	ldr	r3, [r7, r4]
 8009a1a:	3808      	subs	r0, #8
 8009a1c:	4298      	cmp	r0, r3
 8009a1e:	d078      	beq.n	8009b12 <_free_r+0x17a>
 8009a20:	685a      	ldr	r2, [r3, #4]
 8009a22:	f022 0203 	bic.w	r2, r2, #3
 8009a26:	428a      	cmp	r2, r1
 8009a28:	d971      	bls.n	8009b0e <_free_r+0x176>
 8009a2a:	689b      	ldr	r3, [r3, #8]
 8009a2c:	4298      	cmp	r0, r3
 8009a2e:	d1f7      	bne.n	8009a20 <_free_r+0x88>
 8009a30:	68c3      	ldr	r3, [r0, #12]
 8009a32:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8009a36:	609d      	str	r5, [r3, #8]
 8009a38:	60c5      	str	r5, [r0, #12]
 8009a3a:	4630      	mov	r0, r6
 8009a3c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8009a40:	f000 bde2 	b.w	800a608 <__malloc_unlock>
 8009a44:	4770      	bx	lr
 8009a46:	6840      	ldr	r0, [r0, #4]
 8009a48:	f000 0001 	and.w	r0, r0, #1
 8009a4c:	2800      	cmp	r0, #0
 8009a4e:	d1d2      	bne.n	80099f6 <_free_r+0x5e>
 8009a50:	6898      	ldr	r0, [r3, #8]
 8009a52:	4c48      	ldr	r4, [pc, #288]	; (8009b74 <_free_r+0x1dc>)
 8009a54:	4411      	add	r1, r2
 8009a56:	42a0      	cmp	r0, r4
 8009a58:	f041 0201 	orr.w	r2, r1, #1
 8009a5c:	d062      	beq.n	8009b24 <_free_r+0x18c>
 8009a5e:	68db      	ldr	r3, [r3, #12]
 8009a60:	60c3      	str	r3, [r0, #12]
 8009a62:	6098      	str	r0, [r3, #8]
 8009a64:	606a      	str	r2, [r5, #4]
 8009a66:	5069      	str	r1, [r5, r1]
 8009a68:	e7c9      	b.n	80099fe <_free_r+0x66>
 8009a6a:	f01c 0f01 	tst.w	ip, #1
 8009a6e:	440a      	add	r2, r1
 8009a70:	d107      	bne.n	8009a82 <_free_r+0xea>
 8009a72:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8009a76:	1aed      	subs	r5, r5, r3
 8009a78:	441a      	add	r2, r3
 8009a7a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8009a7e:	60cb      	str	r3, [r1, #12]
 8009a80:	6099      	str	r1, [r3, #8]
 8009a82:	4b3d      	ldr	r3, [pc, #244]	; (8009b78 <_free_r+0x1e0>)
 8009a84:	681b      	ldr	r3, [r3, #0]
 8009a86:	f042 0101 	orr.w	r1, r2, #1
 8009a8a:	4293      	cmp	r3, r2
 8009a8c:	6069      	str	r1, [r5, #4]
 8009a8e:	60bd      	str	r5, [r7, #8]
 8009a90:	d804      	bhi.n	8009a9c <_free_r+0x104>
 8009a92:	4b3a      	ldr	r3, [pc, #232]	; (8009b7c <_free_r+0x1e4>)
 8009a94:	4630      	mov	r0, r6
 8009a96:	6819      	ldr	r1, [r3, #0]
 8009a98:	f7ff ff2e 	bl	80098f8 <_malloc_trim_r>
 8009a9c:	4630      	mov	r0, r6
 8009a9e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8009aa2:	f000 bdb1 	b.w	800a608 <__malloc_unlock>
 8009aa6:	08c9      	lsrs	r1, r1, #3
 8009aa8:	6878      	ldr	r0, [r7, #4]
 8009aaa:	1c4a      	adds	r2, r1, #1
 8009aac:	2301      	movs	r3, #1
 8009aae:	1089      	asrs	r1, r1, #2
 8009ab0:	408b      	lsls	r3, r1
 8009ab2:	4303      	orrs	r3, r0
 8009ab4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8009ab8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8009abc:	607b      	str	r3, [r7, #4]
 8009abe:	3908      	subs	r1, #8
 8009ac0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8009ac4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8009ac8:	60c5      	str	r5, [r0, #12]
 8009aca:	4630      	mov	r0, r6
 8009acc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8009ad0:	f000 bd9a 	b.w	800a608 <__malloc_unlock>
 8009ad4:	2800      	cmp	r0, #0
 8009ad6:	d145      	bne.n	8009b64 <_free_r+0x1cc>
 8009ad8:	440a      	add	r2, r1
 8009ada:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8009ade:	f042 0001 	orr.w	r0, r2, #1
 8009ae2:	60cb      	str	r3, [r1, #12]
 8009ae4:	6099      	str	r1, [r3, #8]
 8009ae6:	6068      	str	r0, [r5, #4]
 8009ae8:	50aa      	str	r2, [r5, r2]
 8009aea:	e7d7      	b.n	8009a9c <_free_r+0x104>
 8009aec:	2b14      	cmp	r3, #20
 8009aee:	d908      	bls.n	8009b02 <_free_r+0x16a>
 8009af0:	2b54      	cmp	r3, #84	; 0x54
 8009af2:	d81e      	bhi.n	8009b32 <_free_r+0x19a>
 8009af4:	0b0b      	lsrs	r3, r1, #12
 8009af6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8009afa:	00e4      	lsls	r4, r4, #3
 8009afc:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8009b00:	e789      	b.n	8009a16 <_free_r+0x7e>
 8009b02:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8009b06:	00e4      	lsls	r4, r4, #3
 8009b08:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8009b0c:	e783      	b.n	8009a16 <_free_r+0x7e>
 8009b0e:	4618      	mov	r0, r3
 8009b10:	e78e      	b.n	8009a30 <_free_r+0x98>
 8009b12:	1093      	asrs	r3, r2, #2
 8009b14:	6879      	ldr	r1, [r7, #4]
 8009b16:	2201      	movs	r2, #1
 8009b18:	fa02 f303 	lsl.w	r3, r2, r3
 8009b1c:	430b      	orrs	r3, r1
 8009b1e:	607b      	str	r3, [r7, #4]
 8009b20:	4603      	mov	r3, r0
 8009b22:	e786      	b.n	8009a32 <_free_r+0x9a>
 8009b24:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8009b28:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8009b2c:	606a      	str	r2, [r5, #4]
 8009b2e:	5069      	str	r1, [r5, r1]
 8009b30:	e7b4      	b.n	8009a9c <_free_r+0x104>
 8009b32:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8009b36:	d806      	bhi.n	8009b46 <_free_r+0x1ae>
 8009b38:	0bcb      	lsrs	r3, r1, #15
 8009b3a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8009b3e:	00e4      	lsls	r4, r4, #3
 8009b40:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8009b44:	e767      	b.n	8009a16 <_free_r+0x7e>
 8009b46:	f240 5254 	movw	r2, #1364	; 0x554
 8009b4a:	4293      	cmp	r3, r2
 8009b4c:	d806      	bhi.n	8009b5c <_free_r+0x1c4>
 8009b4e:	0c8b      	lsrs	r3, r1, #18
 8009b50:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8009b54:	00e4      	lsls	r4, r4, #3
 8009b56:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8009b5a:	e75c      	b.n	8009a16 <_free_r+0x7e>
 8009b5c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8009b60:	227e      	movs	r2, #126	; 0x7e
 8009b62:	e758      	b.n	8009a16 <_free_r+0x7e>
 8009b64:	f041 0201 	orr.w	r2, r1, #1
 8009b68:	606a      	str	r2, [r5, #4]
 8009b6a:	6019      	str	r1, [r3, #0]
 8009b6c:	e796      	b.n	8009a9c <_free_r+0x104>
 8009b6e:	bf00      	nop
 8009b70:	2000044c 	.word	0x2000044c
 8009b74:	20000454 	.word	0x20000454
 8009b78:	20000858 	.word	0x20000858
 8009b7c:	200013d4 	.word	0x200013d4

08009b80 <__sfvwrite_r>:
 8009b80:	6893      	ldr	r3, [r2, #8]
 8009b82:	2b00      	cmp	r3, #0
 8009b84:	f000 80e4 	beq.w	8009d50 <__sfvwrite_r+0x1d0>
 8009b88:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009b8c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8009b90:	b29b      	uxth	r3, r3
 8009b92:	460c      	mov	r4, r1
 8009b94:	0719      	lsls	r1, r3, #28
 8009b96:	b083      	sub	sp, #12
 8009b98:	4682      	mov	sl, r0
 8009b9a:	4690      	mov	r8, r2
 8009b9c:	d535      	bpl.n	8009c0a <__sfvwrite_r+0x8a>
 8009b9e:	6922      	ldr	r2, [r4, #16]
 8009ba0:	b39a      	cbz	r2, 8009c0a <__sfvwrite_r+0x8a>
 8009ba2:	f013 0202 	ands.w	r2, r3, #2
 8009ba6:	f8d8 6000 	ldr.w	r6, [r8]
 8009baa:	d03d      	beq.n	8009c28 <__sfvwrite_r+0xa8>
 8009bac:	2700      	movs	r7, #0
 8009bae:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8009bb2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8009bb6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8009e78 <__sfvwrite_r+0x2f8>
 8009bba:	463d      	mov	r5, r7
 8009bbc:	454d      	cmp	r5, r9
 8009bbe:	462b      	mov	r3, r5
 8009bc0:	463a      	mov	r2, r7
 8009bc2:	bf28      	it	cs
 8009bc4:	464b      	movcs	r3, r9
 8009bc6:	4661      	mov	r1, ip
 8009bc8:	4650      	mov	r0, sl
 8009bca:	b1d5      	cbz	r5, 8009c02 <__sfvwrite_r+0x82>
 8009bcc:	47d8      	blx	fp
 8009bce:	2800      	cmp	r0, #0
 8009bd0:	f340 80c6 	ble.w	8009d60 <__sfvwrite_r+0x1e0>
 8009bd4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8009bd8:	1a1b      	subs	r3, r3, r0
 8009bda:	4407      	add	r7, r0
 8009bdc:	1a2d      	subs	r5, r5, r0
 8009bde:	f8c8 3008 	str.w	r3, [r8, #8]
 8009be2:	2b00      	cmp	r3, #0
 8009be4:	f000 80b0 	beq.w	8009d48 <__sfvwrite_r+0x1c8>
 8009be8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8009bec:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8009bf0:	454d      	cmp	r5, r9
 8009bf2:	462b      	mov	r3, r5
 8009bf4:	463a      	mov	r2, r7
 8009bf6:	bf28      	it	cs
 8009bf8:	464b      	movcs	r3, r9
 8009bfa:	4661      	mov	r1, ip
 8009bfc:	4650      	mov	r0, sl
 8009bfe:	2d00      	cmp	r5, #0
 8009c00:	d1e4      	bne.n	8009bcc <__sfvwrite_r+0x4c>
 8009c02:	e9d6 7500 	ldrd	r7, r5, [r6]
 8009c06:	3608      	adds	r6, #8
 8009c08:	e7d8      	b.n	8009bbc <__sfvwrite_r+0x3c>
 8009c0a:	4621      	mov	r1, r4
 8009c0c:	4650      	mov	r0, sl
 8009c0e:	f7fe fd03 	bl	8008618 <__swsetup_r>
 8009c12:	2800      	cmp	r0, #0
 8009c14:	f040 812a 	bne.w	8009e6c <__sfvwrite_r+0x2ec>
 8009c18:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009c1c:	f8d8 6000 	ldr.w	r6, [r8]
 8009c20:	b29b      	uxth	r3, r3
 8009c22:	f013 0202 	ands.w	r2, r3, #2
 8009c26:	d1c1      	bne.n	8009bac <__sfvwrite_r+0x2c>
 8009c28:	f013 0901 	ands.w	r9, r3, #1
 8009c2c:	d15d      	bne.n	8009cea <__sfvwrite_r+0x16a>
 8009c2e:	68a7      	ldr	r7, [r4, #8]
 8009c30:	6820      	ldr	r0, [r4, #0]
 8009c32:	464d      	mov	r5, r9
 8009c34:	2d00      	cmp	r5, #0
 8009c36:	d054      	beq.n	8009ce2 <__sfvwrite_r+0x162>
 8009c38:	059a      	lsls	r2, r3, #22
 8009c3a:	f140 809b 	bpl.w	8009d74 <__sfvwrite_r+0x1f4>
 8009c3e:	42af      	cmp	r7, r5
 8009c40:	46bb      	mov	fp, r7
 8009c42:	f200 80d8 	bhi.w	8009df6 <__sfvwrite_r+0x276>
 8009c46:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8009c4a:	d02f      	beq.n	8009cac <__sfvwrite_r+0x12c>
 8009c4c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8009c50:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8009c54:	eba0 0b01 	sub.w	fp, r0, r1
 8009c58:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8009c5c:	1c68      	adds	r0, r5, #1
 8009c5e:	107f      	asrs	r7, r7, #1
 8009c60:	4458      	add	r0, fp
 8009c62:	42b8      	cmp	r0, r7
 8009c64:	463a      	mov	r2, r7
 8009c66:	bf84      	itt	hi
 8009c68:	4607      	movhi	r7, r0
 8009c6a:	463a      	movhi	r2, r7
 8009c6c:	055b      	lsls	r3, r3, #21
 8009c6e:	f140 80d3 	bpl.w	8009e18 <__sfvwrite_r+0x298>
 8009c72:	4611      	mov	r1, r2
 8009c74:	4650      	mov	r0, sl
 8009c76:	f000 f9b9 	bl	8009fec <_malloc_r>
 8009c7a:	2800      	cmp	r0, #0
 8009c7c:	f000 80f0 	beq.w	8009e60 <__sfvwrite_r+0x2e0>
 8009c80:	465a      	mov	r2, fp
 8009c82:	6921      	ldr	r1, [r4, #16]
 8009c84:	9001      	str	r0, [sp, #4]
 8009c86:	f7f6 fc89 	bl	800059c <memcpy>
 8009c8a:	89a2      	ldrh	r2, [r4, #12]
 8009c8c:	9b01      	ldr	r3, [sp, #4]
 8009c8e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8009c92:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8009c96:	81a2      	strh	r2, [r4, #12]
 8009c98:	eba7 020b 	sub.w	r2, r7, fp
 8009c9c:	eb03 000b 	add.w	r0, r3, fp
 8009ca0:	6167      	str	r7, [r4, #20]
 8009ca2:	6123      	str	r3, [r4, #16]
 8009ca4:	6020      	str	r0, [r4, #0]
 8009ca6:	60a2      	str	r2, [r4, #8]
 8009ca8:	462f      	mov	r7, r5
 8009caa:	46ab      	mov	fp, r5
 8009cac:	465a      	mov	r2, fp
 8009cae:	4649      	mov	r1, r9
 8009cb0:	f000 fc40 	bl	800a534 <memmove>
 8009cb4:	68a2      	ldr	r2, [r4, #8]
 8009cb6:	6823      	ldr	r3, [r4, #0]
 8009cb8:	1bd2      	subs	r2, r2, r7
 8009cba:	445b      	add	r3, fp
 8009cbc:	462f      	mov	r7, r5
 8009cbe:	60a2      	str	r2, [r4, #8]
 8009cc0:	6023      	str	r3, [r4, #0]
 8009cc2:	2500      	movs	r5, #0
 8009cc4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8009cc8:	1bdb      	subs	r3, r3, r7
 8009cca:	44b9      	add	r9, r7
 8009ccc:	f8c8 3008 	str.w	r3, [r8, #8]
 8009cd0:	2b00      	cmp	r3, #0
 8009cd2:	d039      	beq.n	8009d48 <__sfvwrite_r+0x1c8>
 8009cd4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009cd8:	68a7      	ldr	r7, [r4, #8]
 8009cda:	6820      	ldr	r0, [r4, #0]
 8009cdc:	b29b      	uxth	r3, r3
 8009cde:	2d00      	cmp	r5, #0
 8009ce0:	d1aa      	bne.n	8009c38 <__sfvwrite_r+0xb8>
 8009ce2:	e9d6 9500 	ldrd	r9, r5, [r6]
 8009ce6:	3608      	adds	r6, #8
 8009ce8:	e7a4      	b.n	8009c34 <__sfvwrite_r+0xb4>
 8009cea:	4633      	mov	r3, r6
 8009cec:	4691      	mov	r9, r2
 8009cee:	4610      	mov	r0, r2
 8009cf0:	4617      	mov	r7, r2
 8009cf2:	464e      	mov	r6, r9
 8009cf4:	469b      	mov	fp, r3
 8009cf6:	2f00      	cmp	r7, #0
 8009cf8:	d06b      	beq.n	8009dd2 <__sfvwrite_r+0x252>
 8009cfa:	2800      	cmp	r0, #0
 8009cfc:	d071      	beq.n	8009de2 <__sfvwrite_r+0x262>
 8009cfe:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8009d02:	6820      	ldr	r0, [r4, #0]
 8009d04:	45b9      	cmp	r9, r7
 8009d06:	464b      	mov	r3, r9
 8009d08:	bf28      	it	cs
 8009d0a:	463b      	movcs	r3, r7
 8009d0c:	4288      	cmp	r0, r1
 8009d0e:	d903      	bls.n	8009d18 <__sfvwrite_r+0x198>
 8009d10:	68a5      	ldr	r5, [r4, #8]
 8009d12:	4415      	add	r5, r2
 8009d14:	42ab      	cmp	r3, r5
 8009d16:	dc71      	bgt.n	8009dfc <__sfvwrite_r+0x27c>
 8009d18:	429a      	cmp	r2, r3
 8009d1a:	f300 8093 	bgt.w	8009e44 <__sfvwrite_r+0x2c4>
 8009d1e:	4613      	mov	r3, r2
 8009d20:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8009d22:	69e1      	ldr	r1, [r4, #28]
 8009d24:	4632      	mov	r2, r6
 8009d26:	4650      	mov	r0, sl
 8009d28:	47a8      	blx	r5
 8009d2a:	1e05      	subs	r5, r0, #0
 8009d2c:	dd18      	ble.n	8009d60 <__sfvwrite_r+0x1e0>
 8009d2e:	ebb9 0905 	subs.w	r9, r9, r5
 8009d32:	d00f      	beq.n	8009d54 <__sfvwrite_r+0x1d4>
 8009d34:	2001      	movs	r0, #1
 8009d36:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8009d3a:	1b5b      	subs	r3, r3, r5
 8009d3c:	442e      	add	r6, r5
 8009d3e:	1b7f      	subs	r7, r7, r5
 8009d40:	f8c8 3008 	str.w	r3, [r8, #8]
 8009d44:	2b00      	cmp	r3, #0
 8009d46:	d1d6      	bne.n	8009cf6 <__sfvwrite_r+0x176>
 8009d48:	2000      	movs	r0, #0
 8009d4a:	b003      	add	sp, #12
 8009d4c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009d50:	2000      	movs	r0, #0
 8009d52:	4770      	bx	lr
 8009d54:	4621      	mov	r1, r4
 8009d56:	4650      	mov	r0, sl
 8009d58:	f7ff fd20 	bl	800979c <_fflush_r>
 8009d5c:	2800      	cmp	r0, #0
 8009d5e:	d0ea      	beq.n	8009d36 <__sfvwrite_r+0x1b6>
 8009d60:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009d64:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8009d68:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009d6c:	81a3      	strh	r3, [r4, #12]
 8009d6e:	b003      	add	sp, #12
 8009d70:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8009d74:	6923      	ldr	r3, [r4, #16]
 8009d76:	4283      	cmp	r3, r0
 8009d78:	d315      	bcc.n	8009da6 <__sfvwrite_r+0x226>
 8009d7a:	6961      	ldr	r1, [r4, #20]
 8009d7c:	42a9      	cmp	r1, r5
 8009d7e:	d812      	bhi.n	8009da6 <__sfvwrite_r+0x226>
 8009d80:	4b3c      	ldr	r3, [pc, #240]	; (8009e74 <__sfvwrite_r+0x2f4>)
 8009d82:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8009d84:	429d      	cmp	r5, r3
 8009d86:	bf94      	ite	ls
 8009d88:	462b      	movls	r3, r5
 8009d8a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8009d8e:	464a      	mov	r2, r9
 8009d90:	fb93 f3f1 	sdiv	r3, r3, r1
 8009d94:	4650      	mov	r0, sl
 8009d96:	fb01 f303 	mul.w	r3, r1, r3
 8009d9a:	69e1      	ldr	r1, [r4, #28]
 8009d9c:	47b8      	blx	r7
 8009d9e:	1e07      	subs	r7, r0, #0
 8009da0:	ddde      	ble.n	8009d60 <__sfvwrite_r+0x1e0>
 8009da2:	1bed      	subs	r5, r5, r7
 8009da4:	e78e      	b.n	8009cc4 <__sfvwrite_r+0x144>
 8009da6:	42af      	cmp	r7, r5
 8009da8:	bf28      	it	cs
 8009daa:	462f      	movcs	r7, r5
 8009dac:	463a      	mov	r2, r7
 8009dae:	4649      	mov	r1, r9
 8009db0:	f000 fbc0 	bl	800a534 <memmove>
 8009db4:	68a3      	ldr	r3, [r4, #8]
 8009db6:	6822      	ldr	r2, [r4, #0]
 8009db8:	1bdb      	subs	r3, r3, r7
 8009dba:	443a      	add	r2, r7
 8009dbc:	60a3      	str	r3, [r4, #8]
 8009dbe:	6022      	str	r2, [r4, #0]
 8009dc0:	2b00      	cmp	r3, #0
 8009dc2:	d1ee      	bne.n	8009da2 <__sfvwrite_r+0x222>
 8009dc4:	4621      	mov	r1, r4
 8009dc6:	4650      	mov	r0, sl
 8009dc8:	f7ff fce8 	bl	800979c <_fflush_r>
 8009dcc:	2800      	cmp	r0, #0
 8009dce:	d0e8      	beq.n	8009da2 <__sfvwrite_r+0x222>
 8009dd0:	e7c6      	b.n	8009d60 <__sfvwrite_r+0x1e0>
 8009dd2:	f10b 0308 	add.w	r3, fp, #8
 8009dd6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8009dda:	469b      	mov	fp, r3
 8009ddc:	3308      	adds	r3, #8
 8009dde:	2f00      	cmp	r7, #0
 8009de0:	d0f9      	beq.n	8009dd6 <__sfvwrite_r+0x256>
 8009de2:	463a      	mov	r2, r7
 8009de4:	210a      	movs	r1, #10
 8009de6:	4630      	mov	r0, r6
 8009de8:	f7f6 fcfa 	bl	80007e0 <memchr>
 8009dec:	b338      	cbz	r0, 8009e3e <__sfvwrite_r+0x2be>
 8009dee:	3001      	adds	r0, #1
 8009df0:	eba0 0906 	sub.w	r9, r0, r6
 8009df4:	e783      	b.n	8009cfe <__sfvwrite_r+0x17e>
 8009df6:	462f      	mov	r7, r5
 8009df8:	46ab      	mov	fp, r5
 8009dfa:	e757      	b.n	8009cac <__sfvwrite_r+0x12c>
 8009dfc:	4631      	mov	r1, r6
 8009dfe:	462a      	mov	r2, r5
 8009e00:	f000 fb98 	bl	800a534 <memmove>
 8009e04:	6823      	ldr	r3, [r4, #0]
 8009e06:	442b      	add	r3, r5
 8009e08:	6023      	str	r3, [r4, #0]
 8009e0a:	4621      	mov	r1, r4
 8009e0c:	4650      	mov	r0, sl
 8009e0e:	f7ff fcc5 	bl	800979c <_fflush_r>
 8009e12:	2800      	cmp	r0, #0
 8009e14:	d08b      	beq.n	8009d2e <__sfvwrite_r+0x1ae>
 8009e16:	e7a3      	b.n	8009d60 <__sfvwrite_r+0x1e0>
 8009e18:	4650      	mov	r0, sl
 8009e1a:	f000 ff05 	bl	800ac28 <_realloc_r>
 8009e1e:	4603      	mov	r3, r0
 8009e20:	2800      	cmp	r0, #0
 8009e22:	f47f af39 	bne.w	8009c98 <__sfvwrite_r+0x118>
 8009e26:	6921      	ldr	r1, [r4, #16]
 8009e28:	4650      	mov	r0, sl
 8009e2a:	f7ff fdb5 	bl	8009998 <_free_r>
 8009e2e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009e32:	220c      	movs	r2, #12
 8009e34:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8009e38:	f8ca 2000 	str.w	r2, [sl]
 8009e3c:	e792      	b.n	8009d64 <__sfvwrite_r+0x1e4>
 8009e3e:	f107 0901 	add.w	r9, r7, #1
 8009e42:	e75c      	b.n	8009cfe <__sfvwrite_r+0x17e>
 8009e44:	461a      	mov	r2, r3
 8009e46:	4631      	mov	r1, r6
 8009e48:	9301      	str	r3, [sp, #4]
 8009e4a:	f000 fb73 	bl	800a534 <memmove>
 8009e4e:	9b01      	ldr	r3, [sp, #4]
 8009e50:	68a1      	ldr	r1, [r4, #8]
 8009e52:	6822      	ldr	r2, [r4, #0]
 8009e54:	1ac9      	subs	r1, r1, r3
 8009e56:	441a      	add	r2, r3
 8009e58:	60a1      	str	r1, [r4, #8]
 8009e5a:	6022      	str	r2, [r4, #0]
 8009e5c:	461d      	mov	r5, r3
 8009e5e:	e766      	b.n	8009d2e <__sfvwrite_r+0x1ae>
 8009e60:	230c      	movs	r3, #12
 8009e62:	f8ca 3000 	str.w	r3, [sl]
 8009e66:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009e6a:	e77b      	b.n	8009d64 <__sfvwrite_r+0x1e4>
 8009e6c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8009e70:	e76b      	b.n	8009d4a <__sfvwrite_r+0x1ca>
 8009e72:	bf00      	nop
 8009e74:	7ffffffe 	.word	0x7ffffffe
 8009e78:	7ffffc00 	.word	0x7ffffc00

08009e7c <_fwalk_reent>:
 8009e7c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8009e80:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8009e84:	d01f      	beq.n	8009ec6 <_fwalk_reent+0x4a>
 8009e86:	4688      	mov	r8, r1
 8009e88:	4606      	mov	r6, r0
 8009e8a:	f04f 0900 	mov.w	r9, #0
 8009e8e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8009e92:	3d01      	subs	r5, #1
 8009e94:	d411      	bmi.n	8009eba <_fwalk_reent+0x3e>
 8009e96:	89a3      	ldrh	r3, [r4, #12]
 8009e98:	2b01      	cmp	r3, #1
 8009e9a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8009e9e:	4621      	mov	r1, r4
 8009ea0:	4630      	mov	r0, r6
 8009ea2:	d906      	bls.n	8009eb2 <_fwalk_reent+0x36>
 8009ea4:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8009ea8:	3301      	adds	r3, #1
 8009eaa:	d002      	beq.n	8009eb2 <_fwalk_reent+0x36>
 8009eac:	47c0      	blx	r8
 8009eae:	ea49 0900 	orr.w	r9, r9, r0
 8009eb2:	1c6b      	adds	r3, r5, #1
 8009eb4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8009eb8:	d1ed      	bne.n	8009e96 <_fwalk_reent+0x1a>
 8009eba:	683f      	ldr	r7, [r7, #0]
 8009ebc:	2f00      	cmp	r7, #0
 8009ebe:	d1e6      	bne.n	8009e8e <_fwalk_reent+0x12>
 8009ec0:	4648      	mov	r0, r9
 8009ec2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8009ec6:	46b9      	mov	r9, r7
 8009ec8:	4648      	mov	r0, r9
 8009eca:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8009ece:	bf00      	nop

08009ed0 <_localeconv_r>:
 8009ed0:	4a04      	ldr	r2, [pc, #16]	; (8009ee4 <_localeconv_r+0x14>)
 8009ed2:	4b05      	ldr	r3, [pc, #20]	; (8009ee8 <_localeconv_r+0x18>)
 8009ed4:	6812      	ldr	r2, [r2, #0]
 8009ed6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8009ed8:	2800      	cmp	r0, #0
 8009eda:	bf08      	it	eq
 8009edc:	4618      	moveq	r0, r3
 8009ede:	30f0      	adds	r0, #240	; 0xf0
 8009ee0:	4770      	bx	lr
 8009ee2:	bf00      	nop
 8009ee4:	20000018 	.word	0x20000018
 8009ee8:	2000085c 	.word	0x2000085c

08009eec <__retarget_lock_init_recursive>:
 8009eec:	4770      	bx	lr
 8009eee:	bf00      	nop

08009ef0 <__retarget_lock_close_recursive>:
 8009ef0:	4770      	bx	lr
 8009ef2:	bf00      	nop

08009ef4 <__retarget_lock_acquire_recursive>:
 8009ef4:	4770      	bx	lr
 8009ef6:	bf00      	nop

08009ef8 <__retarget_lock_release_recursive>:
 8009ef8:	4770      	bx	lr
 8009efa:	bf00      	nop

08009efc <__swhatbuf_r>:
 8009efc:	b570      	push	{r4, r5, r6, lr}
 8009efe:	460c      	mov	r4, r1
 8009f00:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8009f04:	2900      	cmp	r1, #0
 8009f06:	b096      	sub	sp, #88	; 0x58
 8009f08:	4615      	mov	r5, r2
 8009f0a:	461e      	mov	r6, r3
 8009f0c:	da0f      	bge.n	8009f2e <__swhatbuf_r+0x32>
 8009f0e:	89a2      	ldrh	r2, [r4, #12]
 8009f10:	2300      	movs	r3, #0
 8009f12:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8009f16:	6033      	str	r3, [r6, #0]
 8009f18:	d104      	bne.n	8009f24 <__swhatbuf_r+0x28>
 8009f1a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 8009f1e:	602b      	str	r3, [r5, #0]
 8009f20:	b016      	add	sp, #88	; 0x58
 8009f22:	bd70      	pop	{r4, r5, r6, pc}
 8009f24:	2240      	movs	r2, #64	; 0x40
 8009f26:	4618      	mov	r0, r3
 8009f28:	602a      	str	r2, [r5, #0]
 8009f2a:	b016      	add	sp, #88	; 0x58
 8009f2c:	bd70      	pop	{r4, r5, r6, pc}
 8009f2e:	466a      	mov	r2, sp
 8009f30:	f001 fad0 	bl	800b4d4 <_fstat_r>
 8009f34:	2800      	cmp	r0, #0
 8009f36:	dbea      	blt.n	8009f0e <__swhatbuf_r+0x12>
 8009f38:	9b01      	ldr	r3, [sp, #4]
 8009f3a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 8009f3e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8009f42:	fab3 f383 	clz	r3, r3
 8009f46:	095b      	lsrs	r3, r3, #5
 8009f48:	f44f 6280 	mov.w	r2, #1024	; 0x400
 8009f4c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8009f50:	6033      	str	r3, [r6, #0]
 8009f52:	602a      	str	r2, [r5, #0]
 8009f54:	b016      	add	sp, #88	; 0x58
 8009f56:	bd70      	pop	{r4, r5, r6, pc}

08009f58 <__smakebuf_r>:
 8009f58:	898a      	ldrh	r2, [r1, #12]
 8009f5a:	0792      	lsls	r2, r2, #30
 8009f5c:	460b      	mov	r3, r1
 8009f5e:	d506      	bpl.n	8009f6e <__smakebuf_r+0x16>
 8009f60:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8009f64:	2101      	movs	r1, #1
 8009f66:	601a      	str	r2, [r3, #0]
 8009f68:	e9c3 2104 	strd	r2, r1, [r3, #16]
 8009f6c:	4770      	bx	lr
 8009f6e:	b570      	push	{r4, r5, r6, lr}
 8009f70:	b082      	sub	sp, #8
 8009f72:	ab01      	add	r3, sp, #4
 8009f74:	466a      	mov	r2, sp
 8009f76:	460c      	mov	r4, r1
 8009f78:	4605      	mov	r5, r0
 8009f7a:	f7ff ffbf 	bl	8009efc <__swhatbuf_r>
 8009f7e:	9900      	ldr	r1, [sp, #0]
 8009f80:	4606      	mov	r6, r0
 8009f82:	4628      	mov	r0, r5
 8009f84:	f000 f832 	bl	8009fec <_malloc_r>
 8009f88:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009f8c:	b1d8      	cbz	r0, 8009fc6 <__smakebuf_r+0x6e>
 8009f8e:	4916      	ldr	r1, [pc, #88]	; (8009fe8 <__smakebuf_r+0x90>)
 8009f90:	63e9      	str	r1, [r5, #60]	; 0x3c
 8009f92:	9a01      	ldr	r2, [sp, #4]
 8009f94:	9900      	ldr	r1, [sp, #0]
 8009f96:	6020      	str	r0, [r4, #0]
 8009f98:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 8009f9c:	81a3      	strh	r3, [r4, #12]
 8009f9e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8009fa2:	b91a      	cbnz	r2, 8009fac <__smakebuf_r+0x54>
 8009fa4:	4333      	orrs	r3, r6
 8009fa6:	81a3      	strh	r3, [r4, #12]
 8009fa8:	b002      	add	sp, #8
 8009faa:	bd70      	pop	{r4, r5, r6, pc}
 8009fac:	4628      	mov	r0, r5
 8009fae:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8009fb2:	f001 faa3 	bl	800b4fc <_isatty_r>
 8009fb6:	b1a0      	cbz	r0, 8009fe2 <__smakebuf_r+0x8a>
 8009fb8:	89a3      	ldrh	r3, [r4, #12]
 8009fba:	f023 0303 	bic.w	r3, r3, #3
 8009fbe:	f043 0301 	orr.w	r3, r3, #1
 8009fc2:	b21b      	sxth	r3, r3
 8009fc4:	e7ee      	b.n	8009fa4 <__smakebuf_r+0x4c>
 8009fc6:	059a      	lsls	r2, r3, #22
 8009fc8:	d4ee      	bmi.n	8009fa8 <__smakebuf_r+0x50>
 8009fca:	f023 0303 	bic.w	r3, r3, #3
 8009fce:	f104 0243 	add.w	r2, r4, #67	; 0x43
 8009fd2:	f043 0302 	orr.w	r3, r3, #2
 8009fd6:	2101      	movs	r1, #1
 8009fd8:	81a3      	strh	r3, [r4, #12]
 8009fda:	6022      	str	r2, [r4, #0]
 8009fdc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 8009fe0:	e7e2      	b.n	8009fa8 <__smakebuf_r+0x50>
 8009fe2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8009fe6:	e7dd      	b.n	8009fa4 <__smakebuf_r+0x4c>
 8009fe8:	08009849 	.word	0x08009849

08009fec <_malloc_r>:
 8009fec:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8009ff0:	f101 050b 	add.w	r5, r1, #11
 8009ff4:	2d16      	cmp	r5, #22
 8009ff6:	b083      	sub	sp, #12
 8009ff8:	4606      	mov	r6, r0
 8009ffa:	d823      	bhi.n	800a044 <_malloc_r+0x58>
 8009ffc:	2910      	cmp	r1, #16
 8009ffe:	f200 80b9 	bhi.w	800a174 <_malloc_r+0x188>
 800a002:	f000 fafb 	bl	800a5fc <__malloc_lock>
 800a006:	2510      	movs	r5, #16
 800a008:	2318      	movs	r3, #24
 800a00a:	2002      	movs	r0, #2
 800a00c:	4fc5      	ldr	r7, [pc, #788]	; (800a324 <_malloc_r+0x338>)
 800a00e:	443b      	add	r3, r7
 800a010:	f1a3 0208 	sub.w	r2, r3, #8
 800a014:	685c      	ldr	r4, [r3, #4]
 800a016:	4294      	cmp	r4, r2
 800a018:	f000 8166 	beq.w	800a2e8 <_malloc_r+0x2fc>
 800a01c:	6863      	ldr	r3, [r4, #4]
 800a01e:	f023 0303 	bic.w	r3, r3, #3
 800a022:	4423      	add	r3, r4
 800a024:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 800a028:	685a      	ldr	r2, [r3, #4]
 800a02a:	60e9      	str	r1, [r5, #12]
 800a02c:	f042 0201 	orr.w	r2, r2, #1
 800a030:	608d      	str	r5, [r1, #8]
 800a032:	4630      	mov	r0, r6
 800a034:	605a      	str	r2, [r3, #4]
 800a036:	f000 fae7 	bl	800a608 <__malloc_unlock>
 800a03a:	3408      	adds	r4, #8
 800a03c:	4620      	mov	r0, r4
 800a03e:	b003      	add	sp, #12
 800a040:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a044:	f035 0507 	bics.w	r5, r5, #7
 800a048:	f100 8094 	bmi.w	800a174 <_malloc_r+0x188>
 800a04c:	42a9      	cmp	r1, r5
 800a04e:	f200 8091 	bhi.w	800a174 <_malloc_r+0x188>
 800a052:	f000 fad3 	bl	800a5fc <__malloc_lock>
 800a056:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800a05a:	f0c0 8183 	bcc.w	800a364 <_malloc_r+0x378>
 800a05e:	0a6b      	lsrs	r3, r5, #9
 800a060:	f000 808f 	beq.w	800a182 <_malloc_r+0x196>
 800a064:	2b04      	cmp	r3, #4
 800a066:	f200 8146 	bhi.w	800a2f6 <_malloc_r+0x30a>
 800a06a:	09ab      	lsrs	r3, r5, #6
 800a06c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 800a070:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 800a074:	00c3      	lsls	r3, r0, #3
 800a076:	4fab      	ldr	r7, [pc, #684]	; (800a324 <_malloc_r+0x338>)
 800a078:	443b      	add	r3, r7
 800a07a:	f1a3 0108 	sub.w	r1, r3, #8
 800a07e:	685c      	ldr	r4, [r3, #4]
 800a080:	42a1      	cmp	r1, r4
 800a082:	d106      	bne.n	800a092 <_malloc_r+0xa6>
 800a084:	e00c      	b.n	800a0a0 <_malloc_r+0xb4>
 800a086:	2a00      	cmp	r2, #0
 800a088:	f280 811d 	bge.w	800a2c6 <_malloc_r+0x2da>
 800a08c:	68e4      	ldr	r4, [r4, #12]
 800a08e:	42a1      	cmp	r1, r4
 800a090:	d006      	beq.n	800a0a0 <_malloc_r+0xb4>
 800a092:	6863      	ldr	r3, [r4, #4]
 800a094:	f023 0303 	bic.w	r3, r3, #3
 800a098:	1b5a      	subs	r2, r3, r5
 800a09a:	2a0f      	cmp	r2, #15
 800a09c:	ddf3      	ble.n	800a086 <_malloc_r+0x9a>
 800a09e:	4660      	mov	r0, ip
 800a0a0:	693c      	ldr	r4, [r7, #16]
 800a0a2:	f8df c294 	ldr.w	ip, [pc, #660]	; 800a338 <_malloc_r+0x34c>
 800a0a6:	4564      	cmp	r4, ip
 800a0a8:	d071      	beq.n	800a18e <_malloc_r+0x1a2>
 800a0aa:	6863      	ldr	r3, [r4, #4]
 800a0ac:	f023 0303 	bic.w	r3, r3, #3
 800a0b0:	1b5a      	subs	r2, r3, r5
 800a0b2:	2a0f      	cmp	r2, #15
 800a0b4:	f300 8144 	bgt.w	800a340 <_malloc_r+0x354>
 800a0b8:	2a00      	cmp	r2, #0
 800a0ba:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 800a0be:	f280 8126 	bge.w	800a30e <_malloc_r+0x322>
 800a0c2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 800a0c6:	f080 8169 	bcs.w	800a39c <_malloc_r+0x3b0>
 800a0ca:	08db      	lsrs	r3, r3, #3
 800a0cc:	1c59      	adds	r1, r3, #1
 800a0ce:	687a      	ldr	r2, [r7, #4]
 800a0d0:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 800a0d4:	f8c4 8008 	str.w	r8, [r4, #8]
 800a0d8:	f04f 0e01 	mov.w	lr, #1
 800a0dc:	109b      	asrs	r3, r3, #2
 800a0de:	fa0e f303 	lsl.w	r3, lr, r3
 800a0e2:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 800a0e6:	4313      	orrs	r3, r2
 800a0e8:	f1ae 0208 	sub.w	r2, lr, #8
 800a0ec:	60e2      	str	r2, [r4, #12]
 800a0ee:	607b      	str	r3, [r7, #4]
 800a0f0:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 800a0f4:	f8c8 400c 	str.w	r4, [r8, #12]
 800a0f8:	1082      	asrs	r2, r0, #2
 800a0fa:	2401      	movs	r4, #1
 800a0fc:	4094      	lsls	r4, r2
 800a0fe:	429c      	cmp	r4, r3
 800a100:	d84b      	bhi.n	800a19a <_malloc_r+0x1ae>
 800a102:	421c      	tst	r4, r3
 800a104:	d106      	bne.n	800a114 <_malloc_r+0x128>
 800a106:	f020 0003 	bic.w	r0, r0, #3
 800a10a:	0064      	lsls	r4, r4, #1
 800a10c:	421c      	tst	r4, r3
 800a10e:	f100 0004 	add.w	r0, r0, #4
 800a112:	d0fa      	beq.n	800a10a <_malloc_r+0x11e>
 800a114:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 800a118:	46ce      	mov	lr, r9
 800a11a:	4680      	mov	r8, r0
 800a11c:	f8de 300c 	ldr.w	r3, [lr, #12]
 800a120:	459e      	cmp	lr, r3
 800a122:	d107      	bne.n	800a134 <_malloc_r+0x148>
 800a124:	e122      	b.n	800a36c <_malloc_r+0x380>
 800a126:	2a00      	cmp	r2, #0
 800a128:	f280 8129 	bge.w	800a37e <_malloc_r+0x392>
 800a12c:	68db      	ldr	r3, [r3, #12]
 800a12e:	459e      	cmp	lr, r3
 800a130:	f000 811c 	beq.w	800a36c <_malloc_r+0x380>
 800a134:	6859      	ldr	r1, [r3, #4]
 800a136:	f021 0103 	bic.w	r1, r1, #3
 800a13a:	1b4a      	subs	r2, r1, r5
 800a13c:	2a0f      	cmp	r2, #15
 800a13e:	ddf2      	ble.n	800a126 <_malloc_r+0x13a>
 800a140:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 800a144:	195c      	adds	r4, r3, r5
 800a146:	f045 0501 	orr.w	r5, r5, #1
 800a14a:	605d      	str	r5, [r3, #4]
 800a14c:	f042 0501 	orr.w	r5, r2, #1
 800a150:	f8c8 e00c 	str.w	lr, [r8, #12]
 800a154:	4630      	mov	r0, r6
 800a156:	f8ce 8008 	str.w	r8, [lr, #8]
 800a15a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800a15e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 800a162:	6065      	str	r5, [r4, #4]
 800a164:	505a      	str	r2, [r3, r1]
 800a166:	9301      	str	r3, [sp, #4]
 800a168:	f000 fa4e 	bl	800a608 <__malloc_unlock>
 800a16c:	9b01      	ldr	r3, [sp, #4]
 800a16e:	f103 0408 	add.w	r4, r3, #8
 800a172:	e763      	b.n	800a03c <_malloc_r+0x50>
 800a174:	2400      	movs	r4, #0
 800a176:	230c      	movs	r3, #12
 800a178:	4620      	mov	r0, r4
 800a17a:	6033      	str	r3, [r6, #0]
 800a17c:	b003      	add	sp, #12
 800a17e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a182:	f44f 7300 	mov.w	r3, #512	; 0x200
 800a186:	2040      	movs	r0, #64	; 0x40
 800a188:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 800a18c:	e773      	b.n	800a076 <_malloc_r+0x8a>
 800a18e:	687b      	ldr	r3, [r7, #4]
 800a190:	1082      	asrs	r2, r0, #2
 800a192:	2401      	movs	r4, #1
 800a194:	4094      	lsls	r4, r2
 800a196:	429c      	cmp	r4, r3
 800a198:	d9b3      	bls.n	800a102 <_malloc_r+0x116>
 800a19a:	68bc      	ldr	r4, [r7, #8]
 800a19c:	6863      	ldr	r3, [r4, #4]
 800a19e:	f023 0903 	bic.w	r9, r3, #3
 800a1a2:	45a9      	cmp	r9, r5
 800a1a4:	d303      	bcc.n	800a1ae <_malloc_r+0x1c2>
 800a1a6:	eba9 0305 	sub.w	r3, r9, r5
 800a1aa:	2b0f      	cmp	r3, #15
 800a1ac:	dc7b      	bgt.n	800a2a6 <_malloc_r+0x2ba>
 800a1ae:	4b5e      	ldr	r3, [pc, #376]	; (800a328 <_malloc_r+0x33c>)
 800a1b0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800a33c <_malloc_r+0x350>
 800a1b4:	681a      	ldr	r2, [r3, #0]
 800a1b6:	f8da 3000 	ldr.w	r3, [sl]
 800a1ba:	3301      	adds	r3, #1
 800a1bc:	eb05 0802 	add.w	r8, r5, r2
 800a1c0:	f000 8148 	beq.w	800a454 <_malloc_r+0x468>
 800a1c4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 800a1c8:	f108 080f 	add.w	r8, r8, #15
 800a1cc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 800a1d0:	f028 080f 	bic.w	r8, r8, #15
 800a1d4:	4641      	mov	r1, r8
 800a1d6:	4630      	mov	r0, r6
 800a1d8:	f000 ff08 	bl	800afec <_sbrk_r>
 800a1dc:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 800a1e0:	4683      	mov	fp, r0
 800a1e2:	f000 8104 	beq.w	800a3ee <_malloc_r+0x402>
 800a1e6:	eb04 0009 	add.w	r0, r4, r9
 800a1ea:	4558      	cmp	r0, fp
 800a1ec:	f200 80fd 	bhi.w	800a3ea <_malloc_r+0x3fe>
 800a1f0:	4a4e      	ldr	r2, [pc, #312]	; (800a32c <_malloc_r+0x340>)
 800a1f2:	6813      	ldr	r3, [r2, #0]
 800a1f4:	4443      	add	r3, r8
 800a1f6:	6013      	str	r3, [r2, #0]
 800a1f8:	f000 814d 	beq.w	800a496 <_malloc_r+0x4aa>
 800a1fc:	f8da 1000 	ldr.w	r1, [sl]
 800a200:	3101      	adds	r1, #1
 800a202:	bf1b      	ittet	ne
 800a204:	ebab 0000 	subne.w	r0, fp, r0
 800a208:	181b      	addne	r3, r3, r0
 800a20a:	f8ca b000 	streq.w	fp, [sl]
 800a20e:	6013      	strne	r3, [r2, #0]
 800a210:	f01b 0307 	ands.w	r3, fp, #7
 800a214:	f000 8134 	beq.w	800a480 <_malloc_r+0x494>
 800a218:	f1c3 0108 	rsb	r1, r3, #8
 800a21c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 800a220:	448b      	add	fp, r1
 800a222:	3308      	adds	r3, #8
 800a224:	44d8      	add	r8, fp
 800a226:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800a22a:	eba3 0808 	sub.w	r8, r3, r8
 800a22e:	4641      	mov	r1, r8
 800a230:	4630      	mov	r0, r6
 800a232:	9201      	str	r2, [sp, #4]
 800a234:	f000 feda 	bl	800afec <_sbrk_r>
 800a238:	1c43      	adds	r3, r0, #1
 800a23a:	9a01      	ldr	r2, [sp, #4]
 800a23c:	f000 8146 	beq.w	800a4cc <_malloc_r+0x4e0>
 800a240:	eba0 010b 	sub.w	r1, r0, fp
 800a244:	4441      	add	r1, r8
 800a246:	f041 0101 	orr.w	r1, r1, #1
 800a24a:	6813      	ldr	r3, [r2, #0]
 800a24c:	f8c7 b008 	str.w	fp, [r7, #8]
 800a250:	4443      	add	r3, r8
 800a252:	42bc      	cmp	r4, r7
 800a254:	f8cb 1004 	str.w	r1, [fp, #4]
 800a258:	6013      	str	r3, [r2, #0]
 800a25a:	d015      	beq.n	800a288 <_malloc_r+0x29c>
 800a25c:	f1b9 0f0f 	cmp.w	r9, #15
 800a260:	f240 8130 	bls.w	800a4c4 <_malloc_r+0x4d8>
 800a264:	6860      	ldr	r0, [r4, #4]
 800a266:	f1a9 010c 	sub.w	r1, r9, #12
 800a26a:	f021 0107 	bic.w	r1, r1, #7
 800a26e:	f000 0001 	and.w	r0, r0, #1
 800a272:	eb04 0c01 	add.w	ip, r4, r1
 800a276:	4308      	orrs	r0, r1
 800a278:	f04f 0e05 	mov.w	lr, #5
 800a27c:	290f      	cmp	r1, #15
 800a27e:	6060      	str	r0, [r4, #4]
 800a280:	e9cc ee01 	strd	lr, lr, [ip, #4]
 800a284:	f200 813a 	bhi.w	800a4fc <_malloc_r+0x510>
 800a288:	4a29      	ldr	r2, [pc, #164]	; (800a330 <_malloc_r+0x344>)
 800a28a:	482a      	ldr	r0, [pc, #168]	; (800a334 <_malloc_r+0x348>)
 800a28c:	6811      	ldr	r1, [r2, #0]
 800a28e:	68bc      	ldr	r4, [r7, #8]
 800a290:	428b      	cmp	r3, r1
 800a292:	6801      	ldr	r1, [r0, #0]
 800a294:	bf88      	it	hi
 800a296:	6013      	strhi	r3, [r2, #0]
 800a298:	6862      	ldr	r2, [r4, #4]
 800a29a:	428b      	cmp	r3, r1
 800a29c:	f022 0203 	bic.w	r2, r2, #3
 800a2a0:	bf88      	it	hi
 800a2a2:	6003      	strhi	r3, [r0, #0]
 800a2a4:	e0a7      	b.n	800a3f6 <_malloc_r+0x40a>
 800a2a6:	1962      	adds	r2, r4, r5
 800a2a8:	f043 0301 	orr.w	r3, r3, #1
 800a2ac:	f045 0501 	orr.w	r5, r5, #1
 800a2b0:	6065      	str	r5, [r4, #4]
 800a2b2:	4630      	mov	r0, r6
 800a2b4:	60ba      	str	r2, [r7, #8]
 800a2b6:	6053      	str	r3, [r2, #4]
 800a2b8:	f000 f9a6 	bl	800a608 <__malloc_unlock>
 800a2bc:	3408      	adds	r4, #8
 800a2be:	4620      	mov	r0, r4
 800a2c0:	b003      	add	sp, #12
 800a2c2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a2c6:	4423      	add	r3, r4
 800a2c8:	68e1      	ldr	r1, [r4, #12]
 800a2ca:	685a      	ldr	r2, [r3, #4]
 800a2cc:	68a5      	ldr	r5, [r4, #8]
 800a2ce:	f042 0201 	orr.w	r2, r2, #1
 800a2d2:	60e9      	str	r1, [r5, #12]
 800a2d4:	4630      	mov	r0, r6
 800a2d6:	608d      	str	r5, [r1, #8]
 800a2d8:	605a      	str	r2, [r3, #4]
 800a2da:	f000 f995 	bl	800a608 <__malloc_unlock>
 800a2de:	3408      	adds	r4, #8
 800a2e0:	4620      	mov	r0, r4
 800a2e2:	b003      	add	sp, #12
 800a2e4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a2e8:	68dc      	ldr	r4, [r3, #12]
 800a2ea:	42a3      	cmp	r3, r4
 800a2ec:	bf08      	it	eq
 800a2ee:	3002      	addeq	r0, #2
 800a2f0:	f43f aed6 	beq.w	800a0a0 <_malloc_r+0xb4>
 800a2f4:	e692      	b.n	800a01c <_malloc_r+0x30>
 800a2f6:	2b14      	cmp	r3, #20
 800a2f8:	d971      	bls.n	800a3de <_malloc_r+0x3f2>
 800a2fa:	2b54      	cmp	r3, #84	; 0x54
 800a2fc:	f200 80ad 	bhi.w	800a45a <_malloc_r+0x46e>
 800a300:	0b2b      	lsrs	r3, r5, #12
 800a302:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 800a306:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800a30a:	00c3      	lsls	r3, r0, #3
 800a30c:	e6b3      	b.n	800a076 <_malloc_r+0x8a>
 800a30e:	4423      	add	r3, r4
 800a310:	4630      	mov	r0, r6
 800a312:	685a      	ldr	r2, [r3, #4]
 800a314:	f042 0201 	orr.w	r2, r2, #1
 800a318:	605a      	str	r2, [r3, #4]
 800a31a:	3408      	adds	r4, #8
 800a31c:	f000 f974 	bl	800a608 <__malloc_unlock>
 800a320:	e68c      	b.n	800a03c <_malloc_r+0x50>
 800a322:	bf00      	nop
 800a324:	2000044c 	.word	0x2000044c
 800a328:	200013d4 	.word	0x200013d4
 800a32c:	200013a4 	.word	0x200013a4
 800a330:	200013cc 	.word	0x200013cc
 800a334:	200013d0 	.word	0x200013d0
 800a338:	20000454 	.word	0x20000454
 800a33c:	20000854 	.word	0x20000854
 800a340:	1961      	adds	r1, r4, r5
 800a342:	f045 0e01 	orr.w	lr, r5, #1
 800a346:	f042 0501 	orr.w	r5, r2, #1
 800a34a:	f8c4 e004 	str.w	lr, [r4, #4]
 800a34e:	4630      	mov	r0, r6
 800a350:	e9c7 1104 	strd	r1, r1, [r7, #16]
 800a354:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 800a358:	604d      	str	r5, [r1, #4]
 800a35a:	50e2      	str	r2, [r4, r3]
 800a35c:	f000 f954 	bl	800a608 <__malloc_unlock>
 800a360:	3408      	adds	r4, #8
 800a362:	e66b      	b.n	800a03c <_malloc_r+0x50>
 800a364:	08e8      	lsrs	r0, r5, #3
 800a366:	f105 0308 	add.w	r3, r5, #8
 800a36a:	e64f      	b.n	800a00c <_malloc_r+0x20>
 800a36c:	f108 0801 	add.w	r8, r8, #1
 800a370:	f018 0f03 	tst.w	r8, #3
 800a374:	f10e 0e08 	add.w	lr, lr, #8
 800a378:	f47f aed0 	bne.w	800a11c <_malloc_r+0x130>
 800a37c:	e052      	b.n	800a424 <_malloc_r+0x438>
 800a37e:	4419      	add	r1, r3
 800a380:	461c      	mov	r4, r3
 800a382:	684a      	ldr	r2, [r1, #4]
 800a384:	68db      	ldr	r3, [r3, #12]
 800a386:	f854 5f08 	ldr.w	r5, [r4, #8]!
 800a38a:	f042 0201 	orr.w	r2, r2, #1
 800a38e:	604a      	str	r2, [r1, #4]
 800a390:	4630      	mov	r0, r6
 800a392:	60eb      	str	r3, [r5, #12]
 800a394:	609d      	str	r5, [r3, #8]
 800a396:	f000 f937 	bl	800a608 <__malloc_unlock>
 800a39a:	e64f      	b.n	800a03c <_malloc_r+0x50>
 800a39c:	0a5a      	lsrs	r2, r3, #9
 800a39e:	2a04      	cmp	r2, #4
 800a3a0:	d935      	bls.n	800a40e <_malloc_r+0x422>
 800a3a2:	2a14      	cmp	r2, #20
 800a3a4:	d86f      	bhi.n	800a486 <_malloc_r+0x49a>
 800a3a6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 800a3aa:	00c9      	lsls	r1, r1, #3
 800a3ac:	325b      	adds	r2, #91	; 0x5b
 800a3ae:	eb07 0e01 	add.w	lr, r7, r1
 800a3b2:	5879      	ldr	r1, [r7, r1]
 800a3b4:	f1ae 0e08 	sub.w	lr, lr, #8
 800a3b8:	458e      	cmp	lr, r1
 800a3ba:	d058      	beq.n	800a46e <_malloc_r+0x482>
 800a3bc:	684a      	ldr	r2, [r1, #4]
 800a3be:	f022 0203 	bic.w	r2, r2, #3
 800a3c2:	429a      	cmp	r2, r3
 800a3c4:	d902      	bls.n	800a3cc <_malloc_r+0x3e0>
 800a3c6:	6889      	ldr	r1, [r1, #8]
 800a3c8:	458e      	cmp	lr, r1
 800a3ca:	d1f7      	bne.n	800a3bc <_malloc_r+0x3d0>
 800a3cc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 800a3d0:	687b      	ldr	r3, [r7, #4]
 800a3d2:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 800a3d6:	f8ce 4008 	str.w	r4, [lr, #8]
 800a3da:	60cc      	str	r4, [r1, #12]
 800a3dc:	e68c      	b.n	800a0f8 <_malloc_r+0x10c>
 800a3de:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 800a3e2:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 800a3e6:	00c3      	lsls	r3, r0, #3
 800a3e8:	e645      	b.n	800a076 <_malloc_r+0x8a>
 800a3ea:	42bc      	cmp	r4, r7
 800a3ec:	d072      	beq.n	800a4d4 <_malloc_r+0x4e8>
 800a3ee:	68bc      	ldr	r4, [r7, #8]
 800a3f0:	6862      	ldr	r2, [r4, #4]
 800a3f2:	f022 0203 	bic.w	r2, r2, #3
 800a3f6:	4295      	cmp	r5, r2
 800a3f8:	eba2 0305 	sub.w	r3, r2, r5
 800a3fc:	d802      	bhi.n	800a404 <_malloc_r+0x418>
 800a3fe:	2b0f      	cmp	r3, #15
 800a400:	f73f af51 	bgt.w	800a2a6 <_malloc_r+0x2ba>
 800a404:	4630      	mov	r0, r6
 800a406:	f000 f8ff 	bl	800a608 <__malloc_unlock>
 800a40a:	2400      	movs	r4, #0
 800a40c:	e616      	b.n	800a03c <_malloc_r+0x50>
 800a40e:	099a      	lsrs	r2, r3, #6
 800a410:	f102 0139 	add.w	r1, r2, #57	; 0x39
 800a414:	00c9      	lsls	r1, r1, #3
 800a416:	3238      	adds	r2, #56	; 0x38
 800a418:	e7c9      	b.n	800a3ae <_malloc_r+0x3c2>
 800a41a:	f8d9 9000 	ldr.w	r9, [r9]
 800a41e:	4599      	cmp	r9, r3
 800a420:	f040 8083 	bne.w	800a52a <_malloc_r+0x53e>
 800a424:	f010 0f03 	tst.w	r0, #3
 800a428:	f1a9 0308 	sub.w	r3, r9, #8
 800a42c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 800a430:	d1f3      	bne.n	800a41a <_malloc_r+0x42e>
 800a432:	687b      	ldr	r3, [r7, #4]
 800a434:	ea23 0304 	bic.w	r3, r3, r4
 800a438:	607b      	str	r3, [r7, #4]
 800a43a:	0064      	lsls	r4, r4, #1
 800a43c:	429c      	cmp	r4, r3
 800a43e:	f63f aeac 	bhi.w	800a19a <_malloc_r+0x1ae>
 800a442:	b91c      	cbnz	r4, 800a44c <_malloc_r+0x460>
 800a444:	e6a9      	b.n	800a19a <_malloc_r+0x1ae>
 800a446:	0064      	lsls	r4, r4, #1
 800a448:	f108 0804 	add.w	r8, r8, #4
 800a44c:	421c      	tst	r4, r3
 800a44e:	d0fa      	beq.n	800a446 <_malloc_r+0x45a>
 800a450:	4640      	mov	r0, r8
 800a452:	e65f      	b.n	800a114 <_malloc_r+0x128>
 800a454:	f108 0810 	add.w	r8, r8, #16
 800a458:	e6bc      	b.n	800a1d4 <_malloc_r+0x1e8>
 800a45a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800a45e:	d826      	bhi.n	800a4ae <_malloc_r+0x4c2>
 800a460:	0beb      	lsrs	r3, r5, #15
 800a462:	f103 0078 	add.w	r0, r3, #120	; 0x78
 800a466:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800a46a:	00c3      	lsls	r3, r0, #3
 800a46c:	e603      	b.n	800a076 <_malloc_r+0x8a>
 800a46e:	687b      	ldr	r3, [r7, #4]
 800a470:	1092      	asrs	r2, r2, #2
 800a472:	f04f 0801 	mov.w	r8, #1
 800a476:	fa08 f202 	lsl.w	r2, r8, r2
 800a47a:	4313      	orrs	r3, r2
 800a47c:	607b      	str	r3, [r7, #4]
 800a47e:	e7a8      	b.n	800a3d2 <_malloc_r+0x3e6>
 800a480:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 800a484:	e6ce      	b.n	800a224 <_malloc_r+0x238>
 800a486:	2a54      	cmp	r2, #84	; 0x54
 800a488:	d829      	bhi.n	800a4de <_malloc_r+0x4f2>
 800a48a:	0b1a      	lsrs	r2, r3, #12
 800a48c:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 800a490:	00c9      	lsls	r1, r1, #3
 800a492:	326e      	adds	r2, #110	; 0x6e
 800a494:	e78b      	b.n	800a3ae <_malloc_r+0x3c2>
 800a496:	f3c0 010b 	ubfx	r1, r0, #0, #12
 800a49a:	2900      	cmp	r1, #0
 800a49c:	f47f aeae 	bne.w	800a1fc <_malloc_r+0x210>
 800a4a0:	eb09 0208 	add.w	r2, r9, r8
 800a4a4:	68b9      	ldr	r1, [r7, #8]
 800a4a6:	f042 0201 	orr.w	r2, r2, #1
 800a4aa:	604a      	str	r2, [r1, #4]
 800a4ac:	e6ec      	b.n	800a288 <_malloc_r+0x29c>
 800a4ae:	f240 5254 	movw	r2, #1364	; 0x554
 800a4b2:	4293      	cmp	r3, r2
 800a4b4:	d81c      	bhi.n	800a4f0 <_malloc_r+0x504>
 800a4b6:	0cab      	lsrs	r3, r5, #18
 800a4b8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 800a4bc:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 800a4c0:	00c3      	lsls	r3, r0, #3
 800a4c2:	e5d8      	b.n	800a076 <_malloc_r+0x8a>
 800a4c4:	2301      	movs	r3, #1
 800a4c6:	f8cb 3004 	str.w	r3, [fp, #4]
 800a4ca:	e79b      	b.n	800a404 <_malloc_r+0x418>
 800a4cc:	2101      	movs	r1, #1
 800a4ce:	f04f 0800 	mov.w	r8, #0
 800a4d2:	e6ba      	b.n	800a24a <_malloc_r+0x25e>
 800a4d4:	4a16      	ldr	r2, [pc, #88]	; (800a530 <_malloc_r+0x544>)
 800a4d6:	6813      	ldr	r3, [r2, #0]
 800a4d8:	4443      	add	r3, r8
 800a4da:	6013      	str	r3, [r2, #0]
 800a4dc:	e68e      	b.n	800a1fc <_malloc_r+0x210>
 800a4de:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 800a4e2:	d814      	bhi.n	800a50e <_malloc_r+0x522>
 800a4e4:	0bda      	lsrs	r2, r3, #15
 800a4e6:	f102 0178 	add.w	r1, r2, #120	; 0x78
 800a4ea:	00c9      	lsls	r1, r1, #3
 800a4ec:	3277      	adds	r2, #119	; 0x77
 800a4ee:	e75e      	b.n	800a3ae <_malloc_r+0x3c2>
 800a4f0:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 800a4f4:	207f      	movs	r0, #127	; 0x7f
 800a4f6:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 800a4fa:	e5bc      	b.n	800a076 <_malloc_r+0x8a>
 800a4fc:	f104 0108 	add.w	r1, r4, #8
 800a500:	4630      	mov	r0, r6
 800a502:	9201      	str	r2, [sp, #4]
 800a504:	f7ff fa48 	bl	8009998 <_free_r>
 800a508:	9a01      	ldr	r2, [sp, #4]
 800a50a:	6813      	ldr	r3, [r2, #0]
 800a50c:	e6bc      	b.n	800a288 <_malloc_r+0x29c>
 800a50e:	f240 5154 	movw	r1, #1364	; 0x554
 800a512:	428a      	cmp	r2, r1
 800a514:	d805      	bhi.n	800a522 <_malloc_r+0x536>
 800a516:	0c9a      	lsrs	r2, r3, #18
 800a518:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 800a51c:	00c9      	lsls	r1, r1, #3
 800a51e:	327c      	adds	r2, #124	; 0x7c
 800a520:	e745      	b.n	800a3ae <_malloc_r+0x3c2>
 800a522:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 800a526:	227e      	movs	r2, #126	; 0x7e
 800a528:	e741      	b.n	800a3ae <_malloc_r+0x3c2>
 800a52a:	687b      	ldr	r3, [r7, #4]
 800a52c:	e785      	b.n	800a43a <_malloc_r+0x44e>
 800a52e:	bf00      	nop
 800a530:	200013a4 	.word	0x200013a4

0800a534 <memmove>:
 800a534:	4288      	cmp	r0, r1
 800a536:	b4f0      	push	{r4, r5, r6, r7}
 800a538:	d90d      	bls.n	800a556 <memmove+0x22>
 800a53a:	188b      	adds	r3, r1, r2
 800a53c:	4283      	cmp	r3, r0
 800a53e:	d90a      	bls.n	800a556 <memmove+0x22>
 800a540:	1884      	adds	r4, r0, r2
 800a542:	b132      	cbz	r2, 800a552 <memmove+0x1e>
 800a544:	4622      	mov	r2, r4
 800a546:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 800a54a:	f802 4d01 	strb.w	r4, [r2, #-1]!
 800a54e:	4299      	cmp	r1, r3
 800a550:	d1f9      	bne.n	800a546 <memmove+0x12>
 800a552:	bcf0      	pop	{r4, r5, r6, r7}
 800a554:	4770      	bx	lr
 800a556:	2a0f      	cmp	r2, #15
 800a558:	d949      	bls.n	800a5ee <memmove+0xba>
 800a55a:	ea40 0301 	orr.w	r3, r0, r1
 800a55e:	079b      	lsls	r3, r3, #30
 800a560:	d147      	bne.n	800a5f2 <memmove+0xbe>
 800a562:	f1a2 0310 	sub.w	r3, r2, #16
 800a566:	091b      	lsrs	r3, r3, #4
 800a568:	f101 0720 	add.w	r7, r1, #32
 800a56c:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 800a570:	f101 0410 	add.w	r4, r1, #16
 800a574:	f100 0510 	add.w	r5, r0, #16
 800a578:	f854 6c10 	ldr.w	r6, [r4, #-16]
 800a57c:	f845 6c10 	str.w	r6, [r5, #-16]
 800a580:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 800a584:	f845 6c0c 	str.w	r6, [r5, #-12]
 800a588:	f854 6c08 	ldr.w	r6, [r4, #-8]
 800a58c:	f845 6c08 	str.w	r6, [r5, #-8]
 800a590:	f854 6c04 	ldr.w	r6, [r4, #-4]
 800a594:	f845 6c04 	str.w	r6, [r5, #-4]
 800a598:	3410      	adds	r4, #16
 800a59a:	42bc      	cmp	r4, r7
 800a59c:	f105 0510 	add.w	r5, r5, #16
 800a5a0:	d1ea      	bne.n	800a578 <memmove+0x44>
 800a5a2:	3301      	adds	r3, #1
 800a5a4:	f002 050f 	and.w	r5, r2, #15
 800a5a8:	011b      	lsls	r3, r3, #4
 800a5aa:	2d03      	cmp	r5, #3
 800a5ac:	4419      	add	r1, r3
 800a5ae:	4403      	add	r3, r0
 800a5b0:	d921      	bls.n	800a5f6 <memmove+0xc2>
 800a5b2:	1f1f      	subs	r7, r3, #4
 800a5b4:	460e      	mov	r6, r1
 800a5b6:	462c      	mov	r4, r5
 800a5b8:	3c04      	subs	r4, #4
 800a5ba:	f856 cb04 	ldr.w	ip, [r6], #4
 800a5be:	f847 cf04 	str.w	ip, [r7, #4]!
 800a5c2:	2c03      	cmp	r4, #3
 800a5c4:	d8f8      	bhi.n	800a5b8 <memmove+0x84>
 800a5c6:	1f2c      	subs	r4, r5, #4
 800a5c8:	f024 0403 	bic.w	r4, r4, #3
 800a5cc:	3404      	adds	r4, #4
 800a5ce:	4423      	add	r3, r4
 800a5d0:	4421      	add	r1, r4
 800a5d2:	f002 0203 	and.w	r2, r2, #3
 800a5d6:	2a00      	cmp	r2, #0
 800a5d8:	d0bb      	beq.n	800a552 <memmove+0x1e>
 800a5da:	3b01      	subs	r3, #1
 800a5dc:	440a      	add	r2, r1
 800a5de:	f811 4b01 	ldrb.w	r4, [r1], #1
 800a5e2:	f803 4f01 	strb.w	r4, [r3, #1]!
 800a5e6:	4291      	cmp	r1, r2
 800a5e8:	d1f9      	bne.n	800a5de <memmove+0xaa>
 800a5ea:	bcf0      	pop	{r4, r5, r6, r7}
 800a5ec:	4770      	bx	lr
 800a5ee:	4603      	mov	r3, r0
 800a5f0:	e7f1      	b.n	800a5d6 <memmove+0xa2>
 800a5f2:	4603      	mov	r3, r0
 800a5f4:	e7f1      	b.n	800a5da <memmove+0xa6>
 800a5f6:	462a      	mov	r2, r5
 800a5f8:	e7ed      	b.n	800a5d6 <memmove+0xa2>
 800a5fa:	bf00      	nop

0800a5fc <__malloc_lock>:
 800a5fc:	4801      	ldr	r0, [pc, #4]	; (800a604 <__malloc_lock+0x8>)
 800a5fe:	f7ff bc79 	b.w	8009ef4 <__retarget_lock_acquire_recursive>
 800a602:	bf00      	nop
 800a604:	20001434 	.word	0x20001434

0800a608 <__malloc_unlock>:
 800a608:	4801      	ldr	r0, [pc, #4]	; (800a610 <__malloc_unlock+0x8>)
 800a60a:	f7ff bc75 	b.w	8009ef8 <__retarget_lock_release_recursive>
 800a60e:	bf00      	nop
 800a610:	20001434 	.word	0x20001434

0800a614 <_Balloc>:
 800a614:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800a616:	b570      	push	{r4, r5, r6, lr}
 800a618:	4605      	mov	r5, r0
 800a61a:	460c      	mov	r4, r1
 800a61c:	b14b      	cbz	r3, 800a632 <_Balloc+0x1e>
 800a61e:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 800a622:	b180      	cbz	r0, 800a646 <_Balloc+0x32>
 800a624:	6802      	ldr	r2, [r0, #0]
 800a626:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 800a62a:	2300      	movs	r3, #0
 800a62c:	e9c0 3303 	strd	r3, r3, [r0, #12]
 800a630:	bd70      	pop	{r4, r5, r6, pc}
 800a632:	2221      	movs	r2, #33	; 0x21
 800a634:	2104      	movs	r1, #4
 800a636:	f000 fe1d 	bl	800b274 <_calloc_r>
 800a63a:	4603      	mov	r3, r0
 800a63c:	64e8      	str	r0, [r5, #76]	; 0x4c
 800a63e:	2800      	cmp	r0, #0
 800a640:	d1ed      	bne.n	800a61e <_Balloc+0xa>
 800a642:	2000      	movs	r0, #0
 800a644:	bd70      	pop	{r4, r5, r6, pc}
 800a646:	2101      	movs	r1, #1
 800a648:	fa01 f604 	lsl.w	r6, r1, r4
 800a64c:	1d72      	adds	r2, r6, #5
 800a64e:	4628      	mov	r0, r5
 800a650:	0092      	lsls	r2, r2, #2
 800a652:	f000 fe0f 	bl	800b274 <_calloc_r>
 800a656:	2800      	cmp	r0, #0
 800a658:	d0f3      	beq.n	800a642 <_Balloc+0x2e>
 800a65a:	e9c0 4601 	strd	r4, r6, [r0, #4]
 800a65e:	e7e4      	b.n	800a62a <_Balloc+0x16>

0800a660 <_Bfree>:
 800a660:	b131      	cbz	r1, 800a670 <_Bfree+0x10>
 800a662:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 800a664:	684a      	ldr	r2, [r1, #4]
 800a666:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 800a66a:	6008      	str	r0, [r1, #0]
 800a66c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 800a670:	4770      	bx	lr
 800a672:	bf00      	nop

0800a674 <__multadd>:
 800a674:	b5f0      	push	{r4, r5, r6, r7, lr}
 800a676:	690c      	ldr	r4, [r1, #16]
 800a678:	b083      	sub	sp, #12
 800a67a:	460d      	mov	r5, r1
 800a67c:	4606      	mov	r6, r0
 800a67e:	f101 0c14 	add.w	ip, r1, #20
 800a682:	2700      	movs	r7, #0
 800a684:	f8dc 0000 	ldr.w	r0, [ip]
 800a688:	b281      	uxth	r1, r0
 800a68a:	fb02 3301 	mla	r3, r2, r1, r3
 800a68e:	0c01      	lsrs	r1, r0, #16
 800a690:	0c18      	lsrs	r0, r3, #16
 800a692:	fb02 0101 	mla	r1, r2, r1, r0
 800a696:	b29b      	uxth	r3, r3
 800a698:	3701      	adds	r7, #1
 800a69a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800a69e:	42bc      	cmp	r4, r7
 800a6a0:	f84c 3b04 	str.w	r3, [ip], #4
 800a6a4:	ea4f 4311 	mov.w	r3, r1, lsr #16
 800a6a8:	dcec      	bgt.n	800a684 <__multadd+0x10>
 800a6aa:	b13b      	cbz	r3, 800a6bc <__multadd+0x48>
 800a6ac:	68aa      	ldr	r2, [r5, #8]
 800a6ae:	42a2      	cmp	r2, r4
 800a6b0:	dd07      	ble.n	800a6c2 <__multadd+0x4e>
 800a6b2:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 800a6b6:	3401      	adds	r4, #1
 800a6b8:	6153      	str	r3, [r2, #20]
 800a6ba:	612c      	str	r4, [r5, #16]
 800a6bc:	4628      	mov	r0, r5
 800a6be:	b003      	add	sp, #12
 800a6c0:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800a6c2:	6869      	ldr	r1, [r5, #4]
 800a6c4:	9301      	str	r3, [sp, #4]
 800a6c6:	3101      	adds	r1, #1
 800a6c8:	4630      	mov	r0, r6
 800a6ca:	f7ff ffa3 	bl	800a614 <_Balloc>
 800a6ce:	692a      	ldr	r2, [r5, #16]
 800a6d0:	3202      	adds	r2, #2
 800a6d2:	f105 010c 	add.w	r1, r5, #12
 800a6d6:	4607      	mov	r7, r0
 800a6d8:	0092      	lsls	r2, r2, #2
 800a6da:	300c      	adds	r0, #12
 800a6dc:	f7f5 ff5e 	bl	800059c <memcpy>
 800a6e0:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 800a6e2:	6869      	ldr	r1, [r5, #4]
 800a6e4:	9b01      	ldr	r3, [sp, #4]
 800a6e6:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800a6ea:	6028      	str	r0, [r5, #0]
 800a6ec:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 800a6f0:	463d      	mov	r5, r7
 800a6f2:	e7de      	b.n	800a6b2 <__multadd+0x3e>

0800a6f4 <__hi0bits>:
 800a6f4:	0c02      	lsrs	r2, r0, #16
 800a6f6:	0412      	lsls	r2, r2, #16
 800a6f8:	4603      	mov	r3, r0
 800a6fa:	b9c2      	cbnz	r2, 800a72e <__hi0bits+0x3a>
 800a6fc:	0403      	lsls	r3, r0, #16
 800a6fe:	2010      	movs	r0, #16
 800a700:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 800a704:	bf04      	itt	eq
 800a706:	021b      	lsleq	r3, r3, #8
 800a708:	3008      	addeq	r0, #8
 800a70a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800a70e:	bf04      	itt	eq
 800a710:	011b      	lsleq	r3, r3, #4
 800a712:	3004      	addeq	r0, #4
 800a714:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 800a718:	bf04      	itt	eq
 800a71a:	009b      	lsleq	r3, r3, #2
 800a71c:	3002      	addeq	r0, #2
 800a71e:	2b00      	cmp	r3, #0
 800a720:	db04      	blt.n	800a72c <__hi0bits+0x38>
 800a722:	005b      	lsls	r3, r3, #1
 800a724:	d501      	bpl.n	800a72a <__hi0bits+0x36>
 800a726:	3001      	adds	r0, #1
 800a728:	4770      	bx	lr
 800a72a:	2020      	movs	r0, #32
 800a72c:	4770      	bx	lr
 800a72e:	2000      	movs	r0, #0
 800a730:	e7e6      	b.n	800a700 <__hi0bits+0xc>
 800a732:	bf00      	nop

0800a734 <__lo0bits>:
 800a734:	6803      	ldr	r3, [r0, #0]
 800a736:	f013 0207 	ands.w	r2, r3, #7
 800a73a:	4601      	mov	r1, r0
 800a73c:	d007      	beq.n	800a74e <__lo0bits+0x1a>
 800a73e:	07da      	lsls	r2, r3, #31
 800a740:	d41f      	bmi.n	800a782 <__lo0bits+0x4e>
 800a742:	0798      	lsls	r0, r3, #30
 800a744:	d51f      	bpl.n	800a786 <__lo0bits+0x52>
 800a746:	085b      	lsrs	r3, r3, #1
 800a748:	600b      	str	r3, [r1, #0]
 800a74a:	2001      	movs	r0, #1
 800a74c:	4770      	bx	lr
 800a74e:	b298      	uxth	r0, r3
 800a750:	b1a0      	cbz	r0, 800a77c <__lo0bits+0x48>
 800a752:	4610      	mov	r0, r2
 800a754:	f013 0fff 	tst.w	r3, #255	; 0xff
 800a758:	bf04      	itt	eq
 800a75a:	0a1b      	lsreq	r3, r3, #8
 800a75c:	3008      	addeq	r0, #8
 800a75e:	071a      	lsls	r2, r3, #28
 800a760:	bf04      	itt	eq
 800a762:	091b      	lsreq	r3, r3, #4
 800a764:	3004      	addeq	r0, #4
 800a766:	079a      	lsls	r2, r3, #30
 800a768:	bf04      	itt	eq
 800a76a:	089b      	lsreq	r3, r3, #2
 800a76c:	3002      	addeq	r0, #2
 800a76e:	07da      	lsls	r2, r3, #31
 800a770:	d402      	bmi.n	800a778 <__lo0bits+0x44>
 800a772:	085b      	lsrs	r3, r3, #1
 800a774:	d00b      	beq.n	800a78e <__lo0bits+0x5a>
 800a776:	3001      	adds	r0, #1
 800a778:	600b      	str	r3, [r1, #0]
 800a77a:	4770      	bx	lr
 800a77c:	0c1b      	lsrs	r3, r3, #16
 800a77e:	2010      	movs	r0, #16
 800a780:	e7e8      	b.n	800a754 <__lo0bits+0x20>
 800a782:	2000      	movs	r0, #0
 800a784:	4770      	bx	lr
 800a786:	089b      	lsrs	r3, r3, #2
 800a788:	600b      	str	r3, [r1, #0]
 800a78a:	2002      	movs	r0, #2
 800a78c:	4770      	bx	lr
 800a78e:	2020      	movs	r0, #32
 800a790:	4770      	bx	lr
 800a792:	bf00      	nop

0800a794 <__i2b>:
 800a794:	b510      	push	{r4, lr}
 800a796:	460c      	mov	r4, r1
 800a798:	2101      	movs	r1, #1
 800a79a:	f7ff ff3b 	bl	800a614 <_Balloc>
 800a79e:	2201      	movs	r2, #1
 800a7a0:	e9c0 2404 	strd	r2, r4, [r0, #16]
 800a7a4:	bd10      	pop	{r4, pc}
 800a7a6:	bf00      	nop

0800a7a8 <__multiply>:
 800a7a8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800a7ac:	690e      	ldr	r6, [r1, #16]
 800a7ae:	6914      	ldr	r4, [r2, #16]
 800a7b0:	42a6      	cmp	r6, r4
 800a7b2:	b083      	sub	sp, #12
 800a7b4:	460f      	mov	r7, r1
 800a7b6:	4615      	mov	r5, r2
 800a7b8:	da04      	bge.n	800a7c4 <__multiply+0x1c>
 800a7ba:	4632      	mov	r2, r6
 800a7bc:	462f      	mov	r7, r5
 800a7be:	4626      	mov	r6, r4
 800a7c0:	460d      	mov	r5, r1
 800a7c2:	4614      	mov	r4, r2
 800a7c4:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 800a7c8:	eb06 0804 	add.w	r8, r6, r4
 800a7cc:	4543      	cmp	r3, r8
 800a7ce:	bfb8      	it	lt
 800a7d0:	3101      	addlt	r1, #1
 800a7d2:	f7ff ff1f 	bl	800a614 <_Balloc>
 800a7d6:	f100 0914 	add.w	r9, r0, #20
 800a7da:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800a7de:	45f1      	cmp	r9, lr
 800a7e0:	9000      	str	r0, [sp, #0]
 800a7e2:	d205      	bcs.n	800a7f0 <__multiply+0x48>
 800a7e4:	464b      	mov	r3, r9
 800a7e6:	2200      	movs	r2, #0
 800a7e8:	f843 2b04 	str.w	r2, [r3], #4
 800a7ec:	459e      	cmp	lr, r3
 800a7ee:	d8fb      	bhi.n	800a7e8 <__multiply+0x40>
 800a7f0:	f105 0a14 	add.w	sl, r5, #20
 800a7f4:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 800a7f8:	f107 0314 	add.w	r3, r7, #20
 800a7fc:	45a2      	cmp	sl, r4
 800a7fe:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 800a802:	d261      	bcs.n	800a8c8 <__multiply+0x120>
 800a804:	1b64      	subs	r4, r4, r5
 800a806:	3c15      	subs	r4, #21
 800a808:	f024 0403 	bic.w	r4, r4, #3
 800a80c:	f8cd e004 	str.w	lr, [sp, #4]
 800a810:	44a2      	add	sl, r4
 800a812:	f105 0210 	add.w	r2, r5, #16
 800a816:	469e      	mov	lr, r3
 800a818:	e005      	b.n	800a826 <__multiply+0x7e>
 800a81a:	0c2d      	lsrs	r5, r5, #16
 800a81c:	d12b      	bne.n	800a876 <__multiply+0xce>
 800a81e:	4592      	cmp	sl, r2
 800a820:	f109 0904 	add.w	r9, r9, #4
 800a824:	d04e      	beq.n	800a8c4 <__multiply+0x11c>
 800a826:	f852 5f04 	ldr.w	r5, [r2, #4]!
 800a82a:	fa1f fb85 	uxth.w	fp, r5
 800a82e:	f1bb 0f00 	cmp.w	fp, #0
 800a832:	d0f2      	beq.n	800a81a <__multiply+0x72>
 800a834:	4677      	mov	r7, lr
 800a836:	464e      	mov	r6, r9
 800a838:	2000      	movs	r0, #0
 800a83a:	e000      	b.n	800a83e <__multiply+0x96>
 800a83c:	4626      	mov	r6, r4
 800a83e:	f857 1b04 	ldr.w	r1, [r7], #4
 800a842:	6834      	ldr	r4, [r6, #0]
 800a844:	b28b      	uxth	r3, r1
 800a846:	b2a5      	uxth	r5, r4
 800a848:	0c09      	lsrs	r1, r1, #16
 800a84a:	0c24      	lsrs	r4, r4, #16
 800a84c:	fb0b 5303 	mla	r3, fp, r3, r5
 800a850:	4403      	add	r3, r0
 800a852:	fb0b 4001 	mla	r0, fp, r1, r4
 800a856:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 800a85a:	4634      	mov	r4, r6
 800a85c:	b29b      	uxth	r3, r3
 800a85e:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 800a862:	45bc      	cmp	ip, r7
 800a864:	ea4f 4010 	mov.w	r0, r0, lsr #16
 800a868:	f844 3b04 	str.w	r3, [r4], #4
 800a86c:	d8e6      	bhi.n	800a83c <__multiply+0x94>
 800a86e:	6070      	str	r0, [r6, #4]
 800a870:	6815      	ldr	r5, [r2, #0]
 800a872:	0c2d      	lsrs	r5, r5, #16
 800a874:	d0d3      	beq.n	800a81e <__multiply+0x76>
 800a876:	f8d9 3000 	ldr.w	r3, [r9]
 800a87a:	4676      	mov	r6, lr
 800a87c:	4618      	mov	r0, r3
 800a87e:	46cb      	mov	fp, r9
 800a880:	2100      	movs	r1, #0
 800a882:	e000      	b.n	800a886 <__multiply+0xde>
 800a884:	46a3      	mov	fp, r4
 800a886:	8834      	ldrh	r4, [r6, #0]
 800a888:	0c00      	lsrs	r0, r0, #16
 800a88a:	fb05 0004 	mla	r0, r5, r4, r0
 800a88e:	4401      	add	r1, r0
 800a890:	b29b      	uxth	r3, r3
 800a892:	465c      	mov	r4, fp
 800a894:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 800a898:	f844 3b04 	str.w	r3, [r4], #4
 800a89c:	f856 3b04 	ldr.w	r3, [r6], #4
 800a8a0:	f8db 0004 	ldr.w	r0, [fp, #4]
 800a8a4:	0c1b      	lsrs	r3, r3, #16
 800a8a6:	b287      	uxth	r7, r0
 800a8a8:	fb05 7303 	mla	r3, r5, r3, r7
 800a8ac:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 800a8b0:	45b4      	cmp	ip, r6
 800a8b2:	ea4f 4113 	mov.w	r1, r3, lsr #16
 800a8b6:	d8e5      	bhi.n	800a884 <__multiply+0xdc>
 800a8b8:	4592      	cmp	sl, r2
 800a8ba:	f8cb 3004 	str.w	r3, [fp, #4]
 800a8be:	f109 0904 	add.w	r9, r9, #4
 800a8c2:	d1b0      	bne.n	800a826 <__multiply+0x7e>
 800a8c4:	f8dd e004 	ldr.w	lr, [sp, #4]
 800a8c8:	f1b8 0f00 	cmp.w	r8, #0
 800a8cc:	dd0b      	ble.n	800a8e6 <__multiply+0x13e>
 800a8ce:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 800a8d2:	f1ae 0e04 	sub.w	lr, lr, #4
 800a8d6:	b11b      	cbz	r3, 800a8e0 <__multiply+0x138>
 800a8d8:	e005      	b.n	800a8e6 <__multiply+0x13e>
 800a8da:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800a8de:	b913      	cbnz	r3, 800a8e6 <__multiply+0x13e>
 800a8e0:	f1b8 0801 	subs.w	r8, r8, #1
 800a8e4:	d1f9      	bne.n	800a8da <__multiply+0x132>
 800a8e6:	9800      	ldr	r0, [sp, #0]
 800a8e8:	f8c0 8010 	str.w	r8, [r0, #16]
 800a8ec:	b003      	add	sp, #12
 800a8ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800a8f2:	bf00      	nop

0800a8f4 <__pow5mult>:
 800a8f4:	f012 0303 	ands.w	r3, r2, #3
 800a8f8:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800a8fc:	4614      	mov	r4, r2
 800a8fe:	4607      	mov	r7, r0
 800a900:	d12e      	bne.n	800a960 <__pow5mult+0x6c>
 800a902:	460d      	mov	r5, r1
 800a904:	10a4      	asrs	r4, r4, #2
 800a906:	d01c      	beq.n	800a942 <__pow5mult+0x4e>
 800a908:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800a90a:	b396      	cbz	r6, 800a972 <__pow5mult+0x7e>
 800a90c:	07e3      	lsls	r3, r4, #31
 800a90e:	f04f 0800 	mov.w	r8, #0
 800a912:	d406      	bmi.n	800a922 <__pow5mult+0x2e>
 800a914:	1064      	asrs	r4, r4, #1
 800a916:	d014      	beq.n	800a942 <__pow5mult+0x4e>
 800a918:	6830      	ldr	r0, [r6, #0]
 800a91a:	b1a8      	cbz	r0, 800a948 <__pow5mult+0x54>
 800a91c:	4606      	mov	r6, r0
 800a91e:	07e3      	lsls	r3, r4, #31
 800a920:	d5f8      	bpl.n	800a914 <__pow5mult+0x20>
 800a922:	4632      	mov	r2, r6
 800a924:	4629      	mov	r1, r5
 800a926:	4638      	mov	r0, r7
 800a928:	f7ff ff3e 	bl	800a7a8 <__multiply>
 800a92c:	b1b5      	cbz	r5, 800a95c <__pow5mult+0x68>
 800a92e:	686a      	ldr	r2, [r5, #4]
 800a930:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800a932:	1064      	asrs	r4, r4, #1
 800a934:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 800a938:	6029      	str	r1, [r5, #0]
 800a93a:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 800a93e:	4605      	mov	r5, r0
 800a940:	d1ea      	bne.n	800a918 <__pow5mult+0x24>
 800a942:	4628      	mov	r0, r5
 800a944:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800a948:	4632      	mov	r2, r6
 800a94a:	4631      	mov	r1, r6
 800a94c:	4638      	mov	r0, r7
 800a94e:	f7ff ff2b 	bl	800a7a8 <__multiply>
 800a952:	6030      	str	r0, [r6, #0]
 800a954:	f8c0 8000 	str.w	r8, [r0]
 800a958:	4606      	mov	r6, r0
 800a95a:	e7e0      	b.n	800a91e <__pow5mult+0x2a>
 800a95c:	4605      	mov	r5, r0
 800a95e:	e7d9      	b.n	800a914 <__pow5mult+0x20>
 800a960:	3b01      	subs	r3, #1
 800a962:	4a0b      	ldr	r2, [pc, #44]	; (800a990 <__pow5mult+0x9c>)
 800a964:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 800a968:	2300      	movs	r3, #0
 800a96a:	f7ff fe83 	bl	800a674 <__multadd>
 800a96e:	4605      	mov	r5, r0
 800a970:	e7c8      	b.n	800a904 <__pow5mult+0x10>
 800a972:	2101      	movs	r1, #1
 800a974:	4638      	mov	r0, r7
 800a976:	f7ff fe4d 	bl	800a614 <_Balloc>
 800a97a:	f240 2371 	movw	r3, #625	; 0x271
 800a97e:	6143      	str	r3, [r0, #20]
 800a980:	2201      	movs	r2, #1
 800a982:	2300      	movs	r3, #0
 800a984:	6102      	str	r2, [r0, #16]
 800a986:	4606      	mov	r6, r0
 800a988:	64b8      	str	r0, [r7, #72]	; 0x48
 800a98a:	6003      	str	r3, [r0, #0]
 800a98c:	e7be      	b.n	800a90c <__pow5mult+0x18>
 800a98e:	bf00      	nop
 800a990:	0800bca0 	.word	0x0800bca0

0800a994 <__lshift>:
 800a994:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800a998:	4691      	mov	r9, r2
 800a99a:	690a      	ldr	r2, [r1, #16]
 800a99c:	460e      	mov	r6, r1
 800a99e:	ea4f 1469 	mov.w	r4, r9, asr #5
 800a9a2:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 800a9a6:	eb04 0802 	add.w	r8, r4, r2
 800a9aa:	f108 0501 	add.w	r5, r8, #1
 800a9ae:	429d      	cmp	r5, r3
 800a9b0:	4607      	mov	r7, r0
 800a9b2:	dd04      	ble.n	800a9be <__lshift+0x2a>
 800a9b4:	005b      	lsls	r3, r3, #1
 800a9b6:	429d      	cmp	r5, r3
 800a9b8:	f101 0101 	add.w	r1, r1, #1
 800a9bc:	dcfa      	bgt.n	800a9b4 <__lshift+0x20>
 800a9be:	4638      	mov	r0, r7
 800a9c0:	f7ff fe28 	bl	800a614 <_Balloc>
 800a9c4:	2c00      	cmp	r4, #0
 800a9c6:	f100 0314 	add.w	r3, r0, #20
 800a9ca:	dd37      	ble.n	800aa3c <__lshift+0xa8>
 800a9cc:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 800a9d0:	2200      	movs	r2, #0
 800a9d2:	f843 2b04 	str.w	r2, [r3], #4
 800a9d6:	428b      	cmp	r3, r1
 800a9d8:	d1fb      	bne.n	800a9d2 <__lshift+0x3e>
 800a9da:	6934      	ldr	r4, [r6, #16]
 800a9dc:	f106 0314 	add.w	r3, r6, #20
 800a9e0:	f019 091f 	ands.w	r9, r9, #31
 800a9e4:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 800a9e8:	d020      	beq.n	800aa2c <__lshift+0x98>
 800a9ea:	f1c9 0e20 	rsb	lr, r9, #32
 800a9ee:	2200      	movs	r2, #0
 800a9f0:	e000      	b.n	800a9f4 <__lshift+0x60>
 800a9f2:	4651      	mov	r1, sl
 800a9f4:	681c      	ldr	r4, [r3, #0]
 800a9f6:	468a      	mov	sl, r1
 800a9f8:	fa04 f409 	lsl.w	r4, r4, r9
 800a9fc:	4314      	orrs	r4, r2
 800a9fe:	f84a 4b04 	str.w	r4, [sl], #4
 800aa02:	f853 2b04 	ldr.w	r2, [r3], #4
 800aa06:	4563      	cmp	r3, ip
 800aa08:	fa22 f20e 	lsr.w	r2, r2, lr
 800aa0c:	d3f1      	bcc.n	800a9f2 <__lshift+0x5e>
 800aa0e:	604a      	str	r2, [r1, #4]
 800aa10:	b10a      	cbz	r2, 800aa16 <__lshift+0x82>
 800aa12:	f108 0502 	add.w	r5, r8, #2
 800aa16:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 800aa18:	6872      	ldr	r2, [r6, #4]
 800aa1a:	3d01      	subs	r5, #1
 800aa1c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 800aa20:	6105      	str	r5, [r0, #16]
 800aa22:	6031      	str	r1, [r6, #0]
 800aa24:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 800aa28:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800aa2c:	3904      	subs	r1, #4
 800aa2e:	f853 2b04 	ldr.w	r2, [r3], #4
 800aa32:	f841 2f04 	str.w	r2, [r1, #4]!
 800aa36:	459c      	cmp	ip, r3
 800aa38:	d8f9      	bhi.n	800aa2e <__lshift+0x9a>
 800aa3a:	e7ec      	b.n	800aa16 <__lshift+0x82>
 800aa3c:	4619      	mov	r1, r3
 800aa3e:	e7cc      	b.n	800a9da <__lshift+0x46>

0800aa40 <__mcmp>:
 800aa40:	b430      	push	{r4, r5}
 800aa42:	690b      	ldr	r3, [r1, #16]
 800aa44:	4605      	mov	r5, r0
 800aa46:	6900      	ldr	r0, [r0, #16]
 800aa48:	1ac0      	subs	r0, r0, r3
 800aa4a:	d10f      	bne.n	800aa6c <__mcmp+0x2c>
 800aa4c:	009b      	lsls	r3, r3, #2
 800aa4e:	3514      	adds	r5, #20
 800aa50:	3114      	adds	r1, #20
 800aa52:	4419      	add	r1, r3
 800aa54:	442b      	add	r3, r5
 800aa56:	e001      	b.n	800aa5c <__mcmp+0x1c>
 800aa58:	429d      	cmp	r5, r3
 800aa5a:	d207      	bcs.n	800aa6c <__mcmp+0x2c>
 800aa5c:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 800aa60:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 800aa64:	4294      	cmp	r4, r2
 800aa66:	d0f7      	beq.n	800aa58 <__mcmp+0x18>
 800aa68:	d302      	bcc.n	800aa70 <__mcmp+0x30>
 800aa6a:	2001      	movs	r0, #1
 800aa6c:	bc30      	pop	{r4, r5}
 800aa6e:	4770      	bx	lr
 800aa70:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800aa74:	e7fa      	b.n	800aa6c <__mcmp+0x2c>
 800aa76:	bf00      	nop

0800aa78 <__mdiff>:
 800aa78:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800aa7c:	6913      	ldr	r3, [r2, #16]
 800aa7e:	690d      	ldr	r5, [r1, #16]
 800aa80:	1aed      	subs	r5, r5, r3
 800aa82:	2d00      	cmp	r5, #0
 800aa84:	460e      	mov	r6, r1
 800aa86:	4690      	mov	r8, r2
 800aa88:	f101 0414 	add.w	r4, r1, #20
 800aa8c:	f102 0714 	add.w	r7, r2, #20
 800aa90:	d114      	bne.n	800aabc <__mdiff+0x44>
 800aa92:	009b      	lsls	r3, r3, #2
 800aa94:	18e2      	adds	r2, r4, r3
 800aa96:	443b      	add	r3, r7
 800aa98:	e001      	b.n	800aa9e <__mdiff+0x26>
 800aa9a:	42a2      	cmp	r2, r4
 800aa9c:	d959      	bls.n	800ab52 <__mdiff+0xda>
 800aa9e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 800aaa2:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 800aaa6:	458c      	cmp	ip, r1
 800aaa8:	d0f7      	beq.n	800aa9a <__mdiff+0x22>
 800aaaa:	d209      	bcs.n	800aac0 <__mdiff+0x48>
 800aaac:	4622      	mov	r2, r4
 800aaae:	4633      	mov	r3, r6
 800aab0:	463c      	mov	r4, r7
 800aab2:	4646      	mov	r6, r8
 800aab4:	4617      	mov	r7, r2
 800aab6:	4698      	mov	r8, r3
 800aab8:	2501      	movs	r5, #1
 800aaba:	e001      	b.n	800aac0 <__mdiff+0x48>
 800aabc:	dbf6      	blt.n	800aaac <__mdiff+0x34>
 800aabe:	2500      	movs	r5, #0
 800aac0:	6871      	ldr	r1, [r6, #4]
 800aac2:	f7ff fda7 	bl	800a614 <_Balloc>
 800aac6:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800aaca:	6936      	ldr	r6, [r6, #16]
 800aacc:	60c5      	str	r5, [r0, #12]
 800aace:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 800aad2:	46bc      	mov	ip, r7
 800aad4:	f100 0514 	add.w	r5, r0, #20
 800aad8:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800aadc:	2300      	movs	r3, #0
 800aade:	f85c 1b04 	ldr.w	r1, [ip], #4
 800aae2:	f854 8b04 	ldr.w	r8, [r4], #4
 800aae6:	b28a      	uxth	r2, r1
 800aae8:	fa13 f388 	uxtah	r3, r3, r8
 800aaec:	0c09      	lsrs	r1, r1, #16
 800aaee:	1a9a      	subs	r2, r3, r2
 800aaf0:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 800aaf4:	eb03 4322 	add.w	r3, r3, r2, asr #16
 800aaf8:	b292      	uxth	r2, r2
 800aafa:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800aafe:	45e6      	cmp	lr, ip
 800ab00:	f845 2b04 	str.w	r2, [r5], #4
 800ab04:	ea4f 4323 	mov.w	r3, r3, asr #16
 800ab08:	d8e9      	bhi.n	800aade <__mdiff+0x66>
 800ab0a:	42a7      	cmp	r7, r4
 800ab0c:	d917      	bls.n	800ab3e <__mdiff+0xc6>
 800ab0e:	46ae      	mov	lr, r5
 800ab10:	46a4      	mov	ip, r4
 800ab12:	f85c 2b04 	ldr.w	r2, [ip], #4
 800ab16:	fa13 f382 	uxtah	r3, r3, r2
 800ab1a:	1419      	asrs	r1, r3, #16
 800ab1c:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 800ab20:	b29b      	uxth	r3, r3
 800ab22:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 800ab26:	4567      	cmp	r7, ip
 800ab28:	f84e 2b04 	str.w	r2, [lr], #4
 800ab2c:	ea4f 4321 	mov.w	r3, r1, asr #16
 800ab30:	d8ef      	bhi.n	800ab12 <__mdiff+0x9a>
 800ab32:	43e4      	mvns	r4, r4
 800ab34:	4427      	add	r7, r4
 800ab36:	f027 0703 	bic.w	r7, r7, #3
 800ab3a:	3704      	adds	r7, #4
 800ab3c:	443d      	add	r5, r7
 800ab3e:	3d04      	subs	r5, #4
 800ab40:	b922      	cbnz	r2, 800ab4c <__mdiff+0xd4>
 800ab42:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 800ab46:	3e01      	subs	r6, #1
 800ab48:	2b00      	cmp	r3, #0
 800ab4a:	d0fa      	beq.n	800ab42 <__mdiff+0xca>
 800ab4c:	6106      	str	r6, [r0, #16]
 800ab4e:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800ab52:	2100      	movs	r1, #0
 800ab54:	f7ff fd5e 	bl	800a614 <_Balloc>
 800ab58:	2201      	movs	r2, #1
 800ab5a:	2300      	movs	r3, #0
 800ab5c:	e9c0 2304 	strd	r2, r3, [r0, #16]
 800ab60:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

0800ab64 <__d2b>:
 800ab64:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 800ab68:	460f      	mov	r7, r1
 800ab6a:	b083      	sub	sp, #12
 800ab6c:	2101      	movs	r1, #1
 800ab6e:	ec55 4b10 	vmov	r4, r5, d0
 800ab72:	4616      	mov	r6, r2
 800ab74:	f7ff fd4e 	bl	800a614 <_Balloc>
 800ab78:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800ab7c:	4681      	mov	r9, r0
 800ab7e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 800ab82:	f1b8 0f00 	cmp.w	r8, #0
 800ab86:	d001      	beq.n	800ab8c <__d2b+0x28>
 800ab88:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800ab8c:	2c00      	cmp	r4, #0
 800ab8e:	9301      	str	r3, [sp, #4]
 800ab90:	d024      	beq.n	800abdc <__d2b+0x78>
 800ab92:	a802      	add	r0, sp, #8
 800ab94:	f840 4d08 	str.w	r4, [r0, #-8]!
 800ab98:	f7ff fdcc 	bl	800a734 <__lo0bits>
 800ab9c:	2800      	cmp	r0, #0
 800ab9e:	d136      	bne.n	800ac0e <__d2b+0xaa>
 800aba0:	e9dd 2300 	ldrd	r2, r3, [sp]
 800aba4:	f8c9 2014 	str.w	r2, [r9, #20]
 800aba8:	2b00      	cmp	r3, #0
 800abaa:	bf0c      	ite	eq
 800abac:	2101      	moveq	r1, #1
 800abae:	2102      	movne	r1, #2
 800abb0:	f8c9 3018 	str.w	r3, [r9, #24]
 800abb4:	f8c9 1010 	str.w	r1, [r9, #16]
 800abb8:	f1b8 0f00 	cmp.w	r8, #0
 800abbc:	d11b      	bne.n	800abf6 <__d2b+0x92>
 800abbe:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 800abc2:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 800abc6:	6038      	str	r0, [r7, #0]
 800abc8:	6918      	ldr	r0, [r3, #16]
 800abca:	f7ff fd93 	bl	800a6f4 <__hi0bits>
 800abce:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 800abd2:	6030      	str	r0, [r6, #0]
 800abd4:	4648      	mov	r0, r9
 800abd6:	b003      	add	sp, #12
 800abd8:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800abdc:	a801      	add	r0, sp, #4
 800abde:	f7ff fda9 	bl	800a734 <__lo0bits>
 800abe2:	9b01      	ldr	r3, [sp, #4]
 800abe4:	f8c9 3014 	str.w	r3, [r9, #20]
 800abe8:	2101      	movs	r1, #1
 800abea:	3020      	adds	r0, #32
 800abec:	f8c9 1010 	str.w	r1, [r9, #16]
 800abf0:	f1b8 0f00 	cmp.w	r8, #0
 800abf4:	d0e3      	beq.n	800abbe <__d2b+0x5a>
 800abf6:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800abfa:	eb08 0300 	add.w	r3, r8, r0
 800abfe:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 800ac02:	603b      	str	r3, [r7, #0]
 800ac04:	6030      	str	r0, [r6, #0]
 800ac06:	4648      	mov	r0, r9
 800ac08:	b003      	add	sp, #12
 800ac0a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800ac0e:	e9dd 1300 	ldrd	r1, r3, [sp]
 800ac12:	f1c0 0220 	rsb	r2, r0, #32
 800ac16:	fa03 f202 	lsl.w	r2, r3, r2
 800ac1a:	430a      	orrs	r2, r1
 800ac1c:	40c3      	lsrs	r3, r0
 800ac1e:	9301      	str	r3, [sp, #4]
 800ac20:	f8c9 2014 	str.w	r2, [r9, #20]
 800ac24:	e7c0      	b.n	800aba8 <__d2b+0x44>
 800ac26:	bf00      	nop

0800ac28 <_realloc_r>:
 800ac28:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800ac2c:	4692      	mov	sl, r2
 800ac2e:	b083      	sub	sp, #12
 800ac30:	2900      	cmp	r1, #0
 800ac32:	f000 80a1 	beq.w	800ad78 <_realloc_r+0x150>
 800ac36:	460d      	mov	r5, r1
 800ac38:	4680      	mov	r8, r0
 800ac3a:	f10a 040b 	add.w	r4, sl, #11
 800ac3e:	f7ff fcdd 	bl	800a5fc <__malloc_lock>
 800ac42:	f855 2c04 	ldr.w	r2, [r5, #-4]
 800ac46:	2c16      	cmp	r4, #22
 800ac48:	f022 0603 	bic.w	r6, r2, #3
 800ac4c:	f1a5 0708 	sub.w	r7, r5, #8
 800ac50:	d83e      	bhi.n	800acd0 <_realloc_r+0xa8>
 800ac52:	2410      	movs	r4, #16
 800ac54:	4621      	mov	r1, r4
 800ac56:	45a2      	cmp	sl, r4
 800ac58:	d83f      	bhi.n	800acda <_realloc_r+0xb2>
 800ac5a:	428e      	cmp	r6, r1
 800ac5c:	eb07 0906 	add.w	r9, r7, r6
 800ac60:	da74      	bge.n	800ad4c <_realloc_r+0x124>
 800ac62:	4bc7      	ldr	r3, [pc, #796]	; (800af80 <_realloc_r+0x358>)
 800ac64:	6898      	ldr	r0, [r3, #8]
 800ac66:	4548      	cmp	r0, r9
 800ac68:	f000 80aa 	beq.w	800adc0 <_realloc_r+0x198>
 800ac6c:	f8d9 0004 	ldr.w	r0, [r9, #4]
 800ac70:	f020 0301 	bic.w	r3, r0, #1
 800ac74:	444b      	add	r3, r9
 800ac76:	685b      	ldr	r3, [r3, #4]
 800ac78:	07db      	lsls	r3, r3, #31
 800ac7a:	f140 8083 	bpl.w	800ad84 <_realloc_r+0x15c>
 800ac7e:	07d2      	lsls	r2, r2, #31
 800ac80:	d534      	bpl.n	800acec <_realloc_r+0xc4>
 800ac82:	4651      	mov	r1, sl
 800ac84:	4640      	mov	r0, r8
 800ac86:	f7ff f9b1 	bl	8009fec <_malloc_r>
 800ac8a:	4682      	mov	sl, r0
 800ac8c:	b1e0      	cbz	r0, 800acc8 <_realloc_r+0xa0>
 800ac8e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800ac92:	f023 0301 	bic.w	r3, r3, #1
 800ac96:	443b      	add	r3, r7
 800ac98:	f1a0 0208 	sub.w	r2, r0, #8
 800ac9c:	4293      	cmp	r3, r2
 800ac9e:	f000 80f9 	beq.w	800ae94 <_realloc_r+0x26c>
 800aca2:	1f32      	subs	r2, r6, #4
 800aca4:	2a24      	cmp	r2, #36	; 0x24
 800aca6:	f200 8107 	bhi.w	800aeb8 <_realloc_r+0x290>
 800acaa:	2a13      	cmp	r2, #19
 800acac:	6829      	ldr	r1, [r5, #0]
 800acae:	f200 80e6 	bhi.w	800ae7e <_realloc_r+0x256>
 800acb2:	4603      	mov	r3, r0
 800acb4:	462a      	mov	r2, r5
 800acb6:	6019      	str	r1, [r3, #0]
 800acb8:	6851      	ldr	r1, [r2, #4]
 800acba:	6059      	str	r1, [r3, #4]
 800acbc:	6892      	ldr	r2, [r2, #8]
 800acbe:	609a      	str	r2, [r3, #8]
 800acc0:	4629      	mov	r1, r5
 800acc2:	4640      	mov	r0, r8
 800acc4:	f7fe fe68 	bl	8009998 <_free_r>
 800acc8:	4640      	mov	r0, r8
 800acca:	f7ff fc9d 	bl	800a608 <__malloc_unlock>
 800acce:	e04f      	b.n	800ad70 <_realloc_r+0x148>
 800acd0:	f024 0407 	bic.w	r4, r4, #7
 800acd4:	2c00      	cmp	r4, #0
 800acd6:	4621      	mov	r1, r4
 800acd8:	dabd      	bge.n	800ac56 <_realloc_r+0x2e>
 800acda:	f04f 0a00 	mov.w	sl, #0
 800acde:	230c      	movs	r3, #12
 800ace0:	4650      	mov	r0, sl
 800ace2:	f8c8 3000 	str.w	r3, [r8]
 800ace6:	b003      	add	sp, #12
 800ace8:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800acec:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800acf0:	eba7 0b03 	sub.w	fp, r7, r3
 800acf4:	f8db 2004 	ldr.w	r2, [fp, #4]
 800acf8:	f022 0203 	bic.w	r2, r2, #3
 800acfc:	18b3      	adds	r3, r6, r2
 800acfe:	428b      	cmp	r3, r1
 800ad00:	dbbf      	blt.n	800ac82 <_realloc_r+0x5a>
 800ad02:	46da      	mov	sl, fp
 800ad04:	f8db 100c 	ldr.w	r1, [fp, #12]
 800ad08:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800ad0c:	1f32      	subs	r2, r6, #4
 800ad0e:	2a24      	cmp	r2, #36	; 0x24
 800ad10:	60c1      	str	r1, [r0, #12]
 800ad12:	eb0b 0903 	add.w	r9, fp, r3
 800ad16:	6088      	str	r0, [r1, #8]
 800ad18:	f200 80c6 	bhi.w	800aea8 <_realloc_r+0x280>
 800ad1c:	2a13      	cmp	r2, #19
 800ad1e:	6829      	ldr	r1, [r5, #0]
 800ad20:	f240 80c0 	bls.w	800aea4 <_realloc_r+0x27c>
 800ad24:	f8cb 1008 	str.w	r1, [fp, #8]
 800ad28:	6869      	ldr	r1, [r5, #4]
 800ad2a:	f8cb 100c 	str.w	r1, [fp, #12]
 800ad2e:	2a1b      	cmp	r2, #27
 800ad30:	68a9      	ldr	r1, [r5, #8]
 800ad32:	f200 80d8 	bhi.w	800aee6 <_realloc_r+0x2be>
 800ad36:	f10b 0210 	add.w	r2, fp, #16
 800ad3a:	3508      	adds	r5, #8
 800ad3c:	6011      	str	r1, [r2, #0]
 800ad3e:	6869      	ldr	r1, [r5, #4]
 800ad40:	6051      	str	r1, [r2, #4]
 800ad42:	68a9      	ldr	r1, [r5, #8]
 800ad44:	6091      	str	r1, [r2, #8]
 800ad46:	461e      	mov	r6, r3
 800ad48:	465f      	mov	r7, fp
 800ad4a:	4655      	mov	r5, sl
 800ad4c:	687b      	ldr	r3, [r7, #4]
 800ad4e:	1b32      	subs	r2, r6, r4
 800ad50:	2a0f      	cmp	r2, #15
 800ad52:	f003 0301 	and.w	r3, r3, #1
 800ad56:	d822      	bhi.n	800ad9e <_realloc_r+0x176>
 800ad58:	4333      	orrs	r3, r6
 800ad5a:	607b      	str	r3, [r7, #4]
 800ad5c:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800ad60:	f043 0301 	orr.w	r3, r3, #1
 800ad64:	f8c9 3004 	str.w	r3, [r9, #4]
 800ad68:	4640      	mov	r0, r8
 800ad6a:	f7ff fc4d 	bl	800a608 <__malloc_unlock>
 800ad6e:	46aa      	mov	sl, r5
 800ad70:	4650      	mov	r0, sl
 800ad72:	b003      	add	sp, #12
 800ad74:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800ad78:	4611      	mov	r1, r2
 800ad7a:	b003      	add	sp, #12
 800ad7c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800ad80:	f7ff b934 	b.w	8009fec <_malloc_r>
 800ad84:	f020 0003 	bic.w	r0, r0, #3
 800ad88:	1833      	adds	r3, r6, r0
 800ad8a:	428b      	cmp	r3, r1
 800ad8c:	db61      	blt.n	800ae52 <_realloc_r+0x22a>
 800ad8e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800ad92:	461e      	mov	r6, r3
 800ad94:	60ca      	str	r2, [r1, #12]
 800ad96:	eb07 0903 	add.w	r9, r7, r3
 800ad9a:	6091      	str	r1, [r2, #8]
 800ad9c:	e7d6      	b.n	800ad4c <_realloc_r+0x124>
 800ad9e:	1939      	adds	r1, r7, r4
 800ada0:	4323      	orrs	r3, r4
 800ada2:	f042 0201 	orr.w	r2, r2, #1
 800ada6:	607b      	str	r3, [r7, #4]
 800ada8:	604a      	str	r2, [r1, #4]
 800adaa:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800adae:	f043 0301 	orr.w	r3, r3, #1
 800adb2:	3108      	adds	r1, #8
 800adb4:	f8c9 3004 	str.w	r3, [r9, #4]
 800adb8:	4640      	mov	r0, r8
 800adba:	f7fe fded 	bl	8009998 <_free_r>
 800adbe:	e7d3      	b.n	800ad68 <_realloc_r+0x140>
 800adc0:	6840      	ldr	r0, [r0, #4]
 800adc2:	f020 0903 	bic.w	r9, r0, #3
 800adc6:	44b1      	add	r9, r6
 800adc8:	f104 0010 	add.w	r0, r4, #16
 800adcc:	4581      	cmp	r9, r0
 800adce:	da77      	bge.n	800aec0 <_realloc_r+0x298>
 800add0:	07d2      	lsls	r2, r2, #31
 800add2:	f53f af56 	bmi.w	800ac82 <_realloc_r+0x5a>
 800add6:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800adda:	eba7 0b02 	sub.w	fp, r7, r2
 800adde:	f8db 2004 	ldr.w	r2, [fp, #4]
 800ade2:	f022 0203 	bic.w	r2, r2, #3
 800ade6:	4491      	add	r9, r2
 800ade8:	4548      	cmp	r0, r9
 800adea:	dc87      	bgt.n	800acfc <_realloc_r+0xd4>
 800adec:	46da      	mov	sl, fp
 800adee:	f8db 100c 	ldr.w	r1, [fp, #12]
 800adf2:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800adf6:	1f32      	subs	r2, r6, #4
 800adf8:	2a24      	cmp	r2, #36	; 0x24
 800adfa:	60c1      	str	r1, [r0, #12]
 800adfc:	6088      	str	r0, [r1, #8]
 800adfe:	f200 80a1 	bhi.w	800af44 <_realloc_r+0x31c>
 800ae02:	2a13      	cmp	r2, #19
 800ae04:	6829      	ldr	r1, [r5, #0]
 800ae06:	f240 809b 	bls.w	800af40 <_realloc_r+0x318>
 800ae0a:	f8cb 1008 	str.w	r1, [fp, #8]
 800ae0e:	6869      	ldr	r1, [r5, #4]
 800ae10:	f8cb 100c 	str.w	r1, [fp, #12]
 800ae14:	2a1b      	cmp	r2, #27
 800ae16:	68a9      	ldr	r1, [r5, #8]
 800ae18:	f200 809b 	bhi.w	800af52 <_realloc_r+0x32a>
 800ae1c:	f10b 0210 	add.w	r2, fp, #16
 800ae20:	3508      	adds	r5, #8
 800ae22:	6011      	str	r1, [r2, #0]
 800ae24:	6869      	ldr	r1, [r5, #4]
 800ae26:	6051      	str	r1, [r2, #4]
 800ae28:	68a9      	ldr	r1, [r5, #8]
 800ae2a:	6091      	str	r1, [r2, #8]
 800ae2c:	eb0b 0104 	add.w	r1, fp, r4
 800ae30:	eba9 0204 	sub.w	r2, r9, r4
 800ae34:	f042 0201 	orr.w	r2, r2, #1
 800ae38:	6099      	str	r1, [r3, #8]
 800ae3a:	604a      	str	r2, [r1, #4]
 800ae3c:	f8db 3004 	ldr.w	r3, [fp, #4]
 800ae40:	f003 0301 	and.w	r3, r3, #1
 800ae44:	431c      	orrs	r4, r3
 800ae46:	4640      	mov	r0, r8
 800ae48:	f8cb 4004 	str.w	r4, [fp, #4]
 800ae4c:	f7ff fbdc 	bl	800a608 <__malloc_unlock>
 800ae50:	e78e      	b.n	800ad70 <_realloc_r+0x148>
 800ae52:	07d3      	lsls	r3, r2, #31
 800ae54:	f53f af15 	bmi.w	800ac82 <_realloc_r+0x5a>
 800ae58:	f855 3c08 	ldr.w	r3, [r5, #-8]
 800ae5c:	eba7 0b03 	sub.w	fp, r7, r3
 800ae60:	f8db 2004 	ldr.w	r2, [fp, #4]
 800ae64:	f022 0203 	bic.w	r2, r2, #3
 800ae68:	4410      	add	r0, r2
 800ae6a:	1983      	adds	r3, r0, r6
 800ae6c:	428b      	cmp	r3, r1
 800ae6e:	f6ff af45 	blt.w	800acfc <_realloc_r+0xd4>
 800ae72:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 800ae76:	46da      	mov	sl, fp
 800ae78:	60ca      	str	r2, [r1, #12]
 800ae7a:	6091      	str	r1, [r2, #8]
 800ae7c:	e742      	b.n	800ad04 <_realloc_r+0xdc>
 800ae7e:	6001      	str	r1, [r0, #0]
 800ae80:	686b      	ldr	r3, [r5, #4]
 800ae82:	6043      	str	r3, [r0, #4]
 800ae84:	2a1b      	cmp	r2, #27
 800ae86:	d83a      	bhi.n	800aefe <_realloc_r+0x2d6>
 800ae88:	f105 0208 	add.w	r2, r5, #8
 800ae8c:	f100 0308 	add.w	r3, r0, #8
 800ae90:	68a9      	ldr	r1, [r5, #8]
 800ae92:	e710      	b.n	800acb6 <_realloc_r+0x8e>
 800ae94:	f850 3c04 	ldr.w	r3, [r0, #-4]
 800ae98:	f023 0303 	bic.w	r3, r3, #3
 800ae9c:	441e      	add	r6, r3
 800ae9e:	eb07 0906 	add.w	r9, r7, r6
 800aea2:	e753      	b.n	800ad4c <_realloc_r+0x124>
 800aea4:	4652      	mov	r2, sl
 800aea6:	e749      	b.n	800ad3c <_realloc_r+0x114>
 800aea8:	4629      	mov	r1, r5
 800aeaa:	4650      	mov	r0, sl
 800aeac:	461e      	mov	r6, r3
 800aeae:	465f      	mov	r7, fp
 800aeb0:	f7ff fb40 	bl	800a534 <memmove>
 800aeb4:	4655      	mov	r5, sl
 800aeb6:	e749      	b.n	800ad4c <_realloc_r+0x124>
 800aeb8:	4629      	mov	r1, r5
 800aeba:	f7ff fb3b 	bl	800a534 <memmove>
 800aebe:	e6ff      	b.n	800acc0 <_realloc_r+0x98>
 800aec0:	4427      	add	r7, r4
 800aec2:	eba9 0904 	sub.w	r9, r9, r4
 800aec6:	f049 0201 	orr.w	r2, r9, #1
 800aeca:	609f      	str	r7, [r3, #8]
 800aecc:	607a      	str	r2, [r7, #4]
 800aece:	f855 3c04 	ldr.w	r3, [r5, #-4]
 800aed2:	f003 0301 	and.w	r3, r3, #1
 800aed6:	431c      	orrs	r4, r3
 800aed8:	4640      	mov	r0, r8
 800aeda:	f845 4c04 	str.w	r4, [r5, #-4]
 800aede:	f7ff fb93 	bl	800a608 <__malloc_unlock>
 800aee2:	46aa      	mov	sl, r5
 800aee4:	e744      	b.n	800ad70 <_realloc_r+0x148>
 800aee6:	f8cb 1010 	str.w	r1, [fp, #16]
 800aeea:	68e9      	ldr	r1, [r5, #12]
 800aeec:	f8cb 1014 	str.w	r1, [fp, #20]
 800aef0:	2a24      	cmp	r2, #36	; 0x24
 800aef2:	d010      	beq.n	800af16 <_realloc_r+0x2ee>
 800aef4:	6929      	ldr	r1, [r5, #16]
 800aef6:	f10b 0218 	add.w	r2, fp, #24
 800aefa:	3510      	adds	r5, #16
 800aefc:	e71e      	b.n	800ad3c <_realloc_r+0x114>
 800aefe:	68ab      	ldr	r3, [r5, #8]
 800af00:	6083      	str	r3, [r0, #8]
 800af02:	68eb      	ldr	r3, [r5, #12]
 800af04:	60c3      	str	r3, [r0, #12]
 800af06:	2a24      	cmp	r2, #36	; 0x24
 800af08:	d010      	beq.n	800af2c <_realloc_r+0x304>
 800af0a:	f105 0210 	add.w	r2, r5, #16
 800af0e:	f100 0310 	add.w	r3, r0, #16
 800af12:	6929      	ldr	r1, [r5, #16]
 800af14:	e6cf      	b.n	800acb6 <_realloc_r+0x8e>
 800af16:	692a      	ldr	r2, [r5, #16]
 800af18:	f8cb 2018 	str.w	r2, [fp, #24]
 800af1c:	696a      	ldr	r2, [r5, #20]
 800af1e:	f8cb 201c 	str.w	r2, [fp, #28]
 800af22:	69a9      	ldr	r1, [r5, #24]
 800af24:	f10b 0220 	add.w	r2, fp, #32
 800af28:	3518      	adds	r5, #24
 800af2a:	e707      	b.n	800ad3c <_realloc_r+0x114>
 800af2c:	692b      	ldr	r3, [r5, #16]
 800af2e:	6103      	str	r3, [r0, #16]
 800af30:	696b      	ldr	r3, [r5, #20]
 800af32:	6143      	str	r3, [r0, #20]
 800af34:	69a9      	ldr	r1, [r5, #24]
 800af36:	f105 0218 	add.w	r2, r5, #24
 800af3a:	f100 0318 	add.w	r3, r0, #24
 800af3e:	e6ba      	b.n	800acb6 <_realloc_r+0x8e>
 800af40:	4652      	mov	r2, sl
 800af42:	e76e      	b.n	800ae22 <_realloc_r+0x1fa>
 800af44:	4629      	mov	r1, r5
 800af46:	4650      	mov	r0, sl
 800af48:	9301      	str	r3, [sp, #4]
 800af4a:	f7ff faf3 	bl	800a534 <memmove>
 800af4e:	9b01      	ldr	r3, [sp, #4]
 800af50:	e76c      	b.n	800ae2c <_realloc_r+0x204>
 800af52:	f8cb 1010 	str.w	r1, [fp, #16]
 800af56:	68e9      	ldr	r1, [r5, #12]
 800af58:	f8cb 1014 	str.w	r1, [fp, #20]
 800af5c:	2a24      	cmp	r2, #36	; 0x24
 800af5e:	d004      	beq.n	800af6a <_realloc_r+0x342>
 800af60:	6929      	ldr	r1, [r5, #16]
 800af62:	f10b 0218 	add.w	r2, fp, #24
 800af66:	3510      	adds	r5, #16
 800af68:	e75b      	b.n	800ae22 <_realloc_r+0x1fa>
 800af6a:	692a      	ldr	r2, [r5, #16]
 800af6c:	f8cb 2018 	str.w	r2, [fp, #24]
 800af70:	696a      	ldr	r2, [r5, #20]
 800af72:	f8cb 201c 	str.w	r2, [fp, #28]
 800af76:	69a9      	ldr	r1, [r5, #24]
 800af78:	f10b 0220 	add.w	r2, fp, #32
 800af7c:	3518      	adds	r5, #24
 800af7e:	e750      	b.n	800ae22 <_realloc_r+0x1fa>
 800af80:	2000044c 	.word	0x2000044c

0800af84 <frexp>:
 800af84:	ec53 2b10 	vmov	r2, r3, d0
 800af88:	b570      	push	{r4, r5, r6, lr}
 800af8a:	4e16      	ldr	r6, [pc, #88]	; (800afe4 <frexp+0x60>)
 800af8c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 800af90:	2500      	movs	r5, #0
 800af92:	42b1      	cmp	r1, r6
 800af94:	4604      	mov	r4, r0
 800af96:	6005      	str	r5, [r0, #0]
 800af98:	dc21      	bgt.n	800afde <frexp+0x5a>
 800af9a:	ee10 6a10 	vmov	r6, s0
 800af9e:	430e      	orrs	r6, r1
 800afa0:	d01d      	beq.n	800afde <frexp+0x5a>
 800afa2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 800afa6:	4618      	mov	r0, r3
 800afa8:	da0c      	bge.n	800afc4 <frexp+0x40>
 800afaa:	4619      	mov	r1, r3
 800afac:	2200      	movs	r2, #0
 800afae:	ee10 0a10 	vmov	r0, s0
 800afb2:	4b0d      	ldr	r3, [pc, #52]	; (800afe8 <frexp+0x64>)
 800afb4:	f7f5 fe20 	bl	8000bf8 <__aeabi_dmul>
 800afb8:	f06f 0535 	mvn.w	r5, #53	; 0x35
 800afbc:	4602      	mov	r2, r0
 800afbe:	4608      	mov	r0, r1
 800afc0:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 800afc4:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 800afc8:	1509      	asrs	r1, r1, #20
 800afca:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 800afce:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 800afd2:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 800afd6:	4429      	add	r1, r5
 800afd8:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 800afdc:	6021      	str	r1, [r4, #0]
 800afde:	ec43 2b10 	vmov	d0, r2, r3
 800afe2:	bd70      	pop	{r4, r5, r6, pc}
 800afe4:	7fefffff 	.word	0x7fefffff
 800afe8:	43500000 	.word	0x43500000

0800afec <_sbrk_r>:
 800afec:	b538      	push	{r3, r4, r5, lr}
 800afee:	4c07      	ldr	r4, [pc, #28]	; (800b00c <_sbrk_r+0x20>)
 800aff0:	2300      	movs	r3, #0
 800aff2:	4605      	mov	r5, r0
 800aff4:	4608      	mov	r0, r1
 800aff6:	6023      	str	r3, [r4, #0]
 800aff8:	f7fb fc2d 	bl	8006856 <_sbrk>
 800affc:	1c43      	adds	r3, r0, #1
 800affe:	d000      	beq.n	800b002 <_sbrk_r+0x16>
 800b000:	bd38      	pop	{r3, r4, r5, pc}
 800b002:	6823      	ldr	r3, [r4, #0]
 800b004:	2b00      	cmp	r3, #0
 800b006:	d0fb      	beq.n	800b000 <_sbrk_r+0x14>
 800b008:	602b      	str	r3, [r5, #0]
 800b00a:	bd38      	pop	{r3, r4, r5, pc}
 800b00c:	20001448 	.word	0x20001448

0800b010 <__sread>:
 800b010:	b510      	push	{r4, lr}
 800b012:	460c      	mov	r4, r1
 800b014:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b018:	f000 fabc 	bl	800b594 <_read_r>
 800b01c:	2800      	cmp	r0, #0
 800b01e:	db03      	blt.n	800b028 <__sread+0x18>
 800b020:	6d23      	ldr	r3, [r4, #80]	; 0x50
 800b022:	4403      	add	r3, r0
 800b024:	6523      	str	r3, [r4, #80]	; 0x50
 800b026:	bd10      	pop	{r4, pc}
 800b028:	89a3      	ldrh	r3, [r4, #12]
 800b02a:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 800b02e:	81a3      	strh	r3, [r4, #12]
 800b030:	bd10      	pop	{r4, pc}
 800b032:	bf00      	nop

0800b034 <__swrite>:
 800b034:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800b038:	4616      	mov	r6, r2
 800b03a:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 800b03e:	461f      	mov	r7, r3
 800b040:	05d3      	lsls	r3, r2, #23
 800b042:	460c      	mov	r4, r1
 800b044:	4605      	mov	r5, r0
 800b046:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b04a:	d507      	bpl.n	800b05c <__swrite+0x28>
 800b04c:	2200      	movs	r2, #0
 800b04e:	2302      	movs	r3, #2
 800b050:	f000 fa74 	bl	800b53c <_lseek_r>
 800b054:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800b058:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 800b05c:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 800b060:	81a2      	strh	r2, [r4, #12]
 800b062:	463b      	mov	r3, r7
 800b064:	4632      	mov	r2, r6
 800b066:	4628      	mov	r0, r5
 800b068:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 800b06c:	f000 b88c 	b.w	800b188 <_write_r>

0800b070 <__sseek>:
 800b070:	b510      	push	{r4, lr}
 800b072:	460c      	mov	r4, r1
 800b074:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b078:	f000 fa60 	bl	800b53c <_lseek_r>
 800b07c:	89a3      	ldrh	r3, [r4, #12]
 800b07e:	1c42      	adds	r2, r0, #1
 800b080:	bf0e      	itee	eq
 800b082:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 800b086:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 800b08a:	6520      	strne	r0, [r4, #80]	; 0x50
 800b08c:	81a3      	strh	r3, [r4, #12]
 800b08e:	bd10      	pop	{r4, pc}

0800b090 <__sclose>:
 800b090:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 800b094:	f000 b922 	b.w	800b2dc <_close_r>

0800b098 <strncpy>:
 800b098:	ea40 0301 	orr.w	r3, r0, r1
 800b09c:	079b      	lsls	r3, r3, #30
 800b09e:	b470      	push	{r4, r5, r6}
 800b0a0:	d12a      	bne.n	800b0f8 <strncpy+0x60>
 800b0a2:	2a03      	cmp	r2, #3
 800b0a4:	d928      	bls.n	800b0f8 <strncpy+0x60>
 800b0a6:	460c      	mov	r4, r1
 800b0a8:	4603      	mov	r3, r0
 800b0aa:	4621      	mov	r1, r4
 800b0ac:	f854 6b04 	ldr.w	r6, [r4], #4
 800b0b0:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 800b0b4:	ea25 0506 	bic.w	r5, r5, r6
 800b0b8:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 800b0bc:	d106      	bne.n	800b0cc <strncpy+0x34>
 800b0be:	3a04      	subs	r2, #4
 800b0c0:	2a03      	cmp	r2, #3
 800b0c2:	f843 6b04 	str.w	r6, [r3], #4
 800b0c6:	4621      	mov	r1, r4
 800b0c8:	d8ef      	bhi.n	800b0aa <strncpy+0x12>
 800b0ca:	b19a      	cbz	r2, 800b0f4 <strncpy+0x5c>
 800b0cc:	780c      	ldrb	r4, [r1, #0]
 800b0ce:	701c      	strb	r4, [r3, #0]
 800b0d0:	3a01      	subs	r2, #1
 800b0d2:	3301      	adds	r3, #1
 800b0d4:	b13c      	cbz	r4, 800b0e6 <strncpy+0x4e>
 800b0d6:	b16a      	cbz	r2, 800b0f4 <strncpy+0x5c>
 800b0d8:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 800b0dc:	f803 4b01 	strb.w	r4, [r3], #1
 800b0e0:	3a01      	subs	r2, #1
 800b0e2:	2c00      	cmp	r4, #0
 800b0e4:	d1f7      	bne.n	800b0d6 <strncpy+0x3e>
 800b0e6:	b12a      	cbz	r2, 800b0f4 <strncpy+0x5c>
 800b0e8:	441a      	add	r2, r3
 800b0ea:	2100      	movs	r1, #0
 800b0ec:	f803 1b01 	strb.w	r1, [r3], #1
 800b0f0:	4293      	cmp	r3, r2
 800b0f2:	d1fb      	bne.n	800b0ec <strncpy+0x54>
 800b0f4:	bc70      	pop	{r4, r5, r6}
 800b0f6:	4770      	bx	lr
 800b0f8:	4603      	mov	r3, r0
 800b0fa:	e7e6      	b.n	800b0ca <strncpy+0x32>

0800b0fc <__sprint_r.part.0>:
 800b0fc:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800b100:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 800b102:	049c      	lsls	r4, r3, #18
 800b104:	4692      	mov	sl, r2
 800b106:	d52d      	bpl.n	800b164 <__sprint_r.part.0+0x68>
 800b108:	6893      	ldr	r3, [r2, #8]
 800b10a:	6812      	ldr	r2, [r2, #0]
 800b10c:	b343      	cbz	r3, 800b160 <__sprint_r.part.0+0x64>
 800b10e:	460e      	mov	r6, r1
 800b110:	4607      	mov	r7, r0
 800b112:	f102 0908 	add.w	r9, r2, #8
 800b116:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 800b11a:	ea5f 089b 	movs.w	r8, fp, lsr #2
 800b11e:	d015      	beq.n	800b14c <__sprint_r.part.0+0x50>
 800b120:	3d04      	subs	r5, #4
 800b122:	2400      	movs	r4, #0
 800b124:	e001      	b.n	800b12a <__sprint_r.part.0+0x2e>
 800b126:	45a0      	cmp	r8, r4
 800b128:	d00e      	beq.n	800b148 <__sprint_r.part.0+0x4c>
 800b12a:	4632      	mov	r2, r6
 800b12c:	f855 1f04 	ldr.w	r1, [r5, #4]!
 800b130:	4638      	mov	r0, r7
 800b132:	f000 f99d 	bl	800b470 <_fputwc_r>
 800b136:	1c43      	adds	r3, r0, #1
 800b138:	f104 0401 	add.w	r4, r4, #1
 800b13c:	d1f3      	bne.n	800b126 <__sprint_r.part.0+0x2a>
 800b13e:	2300      	movs	r3, #0
 800b140:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800b144:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800b148:	f8da 3008 	ldr.w	r3, [sl, #8]
 800b14c:	f02b 0b03 	bic.w	fp, fp, #3
 800b150:	eba3 030b 	sub.w	r3, r3, fp
 800b154:	f8ca 3008 	str.w	r3, [sl, #8]
 800b158:	f109 0908 	add.w	r9, r9, #8
 800b15c:	2b00      	cmp	r3, #0
 800b15e:	d1da      	bne.n	800b116 <__sprint_r.part.0+0x1a>
 800b160:	2000      	movs	r0, #0
 800b162:	e7ec      	b.n	800b13e <__sprint_r.part.0+0x42>
 800b164:	f7fe fd0c 	bl	8009b80 <__sfvwrite_r>
 800b168:	2300      	movs	r3, #0
 800b16a:	e9ca 3301 	strd	r3, r3, [sl, #4]
 800b16e:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800b172:	bf00      	nop

0800b174 <__sprint_r>:
 800b174:	6893      	ldr	r3, [r2, #8]
 800b176:	b10b      	cbz	r3, 800b17c <__sprint_r+0x8>
 800b178:	f7ff bfc0 	b.w	800b0fc <__sprint_r.part.0>
 800b17c:	b410      	push	{r4}
 800b17e:	4618      	mov	r0, r3
 800b180:	6053      	str	r3, [r2, #4]
 800b182:	f85d 4b04 	ldr.w	r4, [sp], #4
 800b186:	4770      	bx	lr

0800b188 <_write_r>:
 800b188:	b570      	push	{r4, r5, r6, lr}
 800b18a:	460d      	mov	r5, r1
 800b18c:	4c08      	ldr	r4, [pc, #32]	; (800b1b0 <_write_r+0x28>)
 800b18e:	4611      	mov	r1, r2
 800b190:	4606      	mov	r6, r0
 800b192:	461a      	mov	r2, r3
 800b194:	4628      	mov	r0, r5
 800b196:	2300      	movs	r3, #0
 800b198:	6023      	str	r3, [r4, #0]
 800b19a:	f7fb fb49 	bl	8006830 <_write>
 800b19e:	1c43      	adds	r3, r0, #1
 800b1a0:	d000      	beq.n	800b1a4 <_write_r+0x1c>
 800b1a2:	bd70      	pop	{r4, r5, r6, pc}
 800b1a4:	6823      	ldr	r3, [r4, #0]
 800b1a6:	2b00      	cmp	r3, #0
 800b1a8:	d0fb      	beq.n	800b1a2 <_write_r+0x1a>
 800b1aa:	6033      	str	r3, [r6, #0]
 800b1ac:	bd70      	pop	{r4, r5, r6, pc}
 800b1ae:	bf00      	nop
 800b1b0:	20001448 	.word	0x20001448

0800b1b4 <__register_exitproc>:
 800b1b4:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 800b1b8:	4d2b      	ldr	r5, [pc, #172]	; (800b268 <__register_exitproc+0xb4>)
 800b1ba:	4606      	mov	r6, r0
 800b1bc:	6828      	ldr	r0, [r5, #0]
 800b1be:	4698      	mov	r8, r3
 800b1c0:	460f      	mov	r7, r1
 800b1c2:	4691      	mov	r9, r2
 800b1c4:	f7fe fe96 	bl	8009ef4 <__retarget_lock_acquire_recursive>
 800b1c8:	4b28      	ldr	r3, [pc, #160]	; (800b26c <__register_exitproc+0xb8>)
 800b1ca:	681c      	ldr	r4, [r3, #0]
 800b1cc:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 800b1d0:	2b00      	cmp	r3, #0
 800b1d2:	d03d      	beq.n	800b250 <__register_exitproc+0x9c>
 800b1d4:	685a      	ldr	r2, [r3, #4]
 800b1d6:	2a1f      	cmp	r2, #31
 800b1d8:	dc0d      	bgt.n	800b1f6 <__register_exitproc+0x42>
 800b1da:	f102 0c01 	add.w	ip, r2, #1
 800b1de:	bb16      	cbnz	r6, 800b226 <__register_exitproc+0x72>
 800b1e0:	3202      	adds	r2, #2
 800b1e2:	f8c3 c004 	str.w	ip, [r3, #4]
 800b1e6:	6828      	ldr	r0, [r5, #0]
 800b1e8:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 800b1ec:	f7fe fe84 	bl	8009ef8 <__retarget_lock_release_recursive>
 800b1f0:	2000      	movs	r0, #0
 800b1f2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 800b1f6:	4b1e      	ldr	r3, [pc, #120]	; (800b270 <__register_exitproc+0xbc>)
 800b1f8:	b37b      	cbz	r3, 800b25a <__register_exitproc+0xa6>
 800b1fa:	f44f 70c8 	mov.w	r0, #400	; 0x190
 800b1fe:	f3af 8000 	nop.w
 800b202:	4603      	mov	r3, r0
 800b204:	b348      	cbz	r0, 800b25a <__register_exitproc+0xa6>
 800b206:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 800b20a:	2100      	movs	r1, #0
 800b20c:	e9c0 2100 	strd	r2, r1, [r0]
 800b210:	f04f 0c01 	mov.w	ip, #1
 800b214:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 800b218:	460a      	mov	r2, r1
 800b21a:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 800b21e:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 800b222:	2e00      	cmp	r6, #0
 800b224:	d0dc      	beq.n	800b1e0 <__register_exitproc+0x2c>
 800b226:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 800b22a:	2401      	movs	r4, #1
 800b22c:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 800b230:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 800b234:	4094      	lsls	r4, r2
 800b236:	4320      	orrs	r0, r4
 800b238:	2e02      	cmp	r6, #2
 800b23a:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 800b23e:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 800b242:	d1cd      	bne.n	800b1e0 <__register_exitproc+0x2c>
 800b244:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 800b248:	430c      	orrs	r4, r1
 800b24a:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 800b24e:	e7c7      	b.n	800b1e0 <__register_exitproc+0x2c>
 800b250:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 800b254:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 800b258:	e7bc      	b.n	800b1d4 <__register_exitproc+0x20>
 800b25a:	6828      	ldr	r0, [r5, #0]
 800b25c:	f7fe fe4c 	bl	8009ef8 <__retarget_lock_release_recursive>
 800b260:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800b264:	e7c5      	b.n	800b1f2 <__register_exitproc+0x3e>
 800b266:	bf00      	nop
 800b268:	20000448 	.word	0x20000448
 800b26c:	0800bb30 	.word	0x0800bb30
 800b270:	00000000 	.word	0x00000000

0800b274 <_calloc_r>:
 800b274:	b510      	push	{r4, lr}
 800b276:	fb02 f101 	mul.w	r1, r2, r1
 800b27a:	f7fe feb7 	bl	8009fec <_malloc_r>
 800b27e:	4604      	mov	r4, r0
 800b280:	b1d8      	cbz	r0, 800b2ba <_calloc_r+0x46>
 800b282:	f850 2c04 	ldr.w	r2, [r0, #-4]
 800b286:	f022 0203 	bic.w	r2, r2, #3
 800b28a:	3a04      	subs	r2, #4
 800b28c:	2a24      	cmp	r2, #36	; 0x24
 800b28e:	d81d      	bhi.n	800b2cc <_calloc_r+0x58>
 800b290:	2a13      	cmp	r2, #19
 800b292:	d914      	bls.n	800b2be <_calloc_r+0x4a>
 800b294:	2300      	movs	r3, #0
 800b296:	2a1b      	cmp	r2, #27
 800b298:	e9c0 3300 	strd	r3, r3, [r0]
 800b29c:	d91b      	bls.n	800b2d6 <_calloc_r+0x62>
 800b29e:	2a24      	cmp	r2, #36	; 0x24
 800b2a0:	e9c0 3302 	strd	r3, r3, [r0, #8]
 800b2a4:	bf0a      	itet	eq
 800b2a6:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 800b2aa:	f100 0210 	addne.w	r2, r0, #16
 800b2ae:	f100 0218 	addeq.w	r2, r0, #24
 800b2b2:	2300      	movs	r3, #0
 800b2b4:	e9c2 3300 	strd	r3, r3, [r2]
 800b2b8:	6093      	str	r3, [r2, #8]
 800b2ba:	4620      	mov	r0, r4
 800b2bc:	bd10      	pop	{r4, pc}
 800b2be:	4602      	mov	r2, r0
 800b2c0:	2300      	movs	r3, #0
 800b2c2:	e9c2 3300 	strd	r3, r3, [r2]
 800b2c6:	6093      	str	r3, [r2, #8]
 800b2c8:	4620      	mov	r0, r4
 800b2ca:	bd10      	pop	{r4, pc}
 800b2cc:	2100      	movs	r1, #0
 800b2ce:	f7fb fb6d 	bl	80069ac <memset>
 800b2d2:	4620      	mov	r0, r4
 800b2d4:	bd10      	pop	{r4, pc}
 800b2d6:	f100 0208 	add.w	r2, r0, #8
 800b2da:	e7f1      	b.n	800b2c0 <_calloc_r+0x4c>

0800b2dc <_close_r>:
 800b2dc:	b538      	push	{r3, r4, r5, lr}
 800b2de:	4c07      	ldr	r4, [pc, #28]	; (800b2fc <_close_r+0x20>)
 800b2e0:	2300      	movs	r3, #0
 800b2e2:	4605      	mov	r5, r0
 800b2e4:	4608      	mov	r0, r1
 800b2e6:	6023      	str	r3, [r4, #0]
 800b2e8:	f7fb fad1 	bl	800688e <_close>
 800b2ec:	1c43      	adds	r3, r0, #1
 800b2ee:	d000      	beq.n	800b2f2 <_close_r+0x16>
 800b2f0:	bd38      	pop	{r3, r4, r5, pc}
 800b2f2:	6823      	ldr	r3, [r4, #0]
 800b2f4:	2b00      	cmp	r3, #0
 800b2f6:	d0fb      	beq.n	800b2f0 <_close_r+0x14>
 800b2f8:	602b      	str	r3, [r5, #0]
 800b2fa:	bd38      	pop	{r3, r4, r5, pc}
 800b2fc:	20001448 	.word	0x20001448

0800b300 <_fclose_r>:
 800b300:	b570      	push	{r4, r5, r6, lr}
 800b302:	2900      	cmp	r1, #0
 800b304:	d048      	beq.n	800b398 <_fclose_r+0x98>
 800b306:	4605      	mov	r5, r0
 800b308:	460c      	mov	r4, r1
 800b30a:	b110      	cbz	r0, 800b312 <_fclose_r+0x12>
 800b30c:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800b30e:	2b00      	cmp	r3, #0
 800b310:	d048      	beq.n	800b3a4 <_fclose_r+0xa4>
 800b312:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800b314:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800b318:	07d0      	lsls	r0, r2, #31
 800b31a:	d440      	bmi.n	800b39e <_fclose_r+0x9e>
 800b31c:	0599      	lsls	r1, r3, #22
 800b31e:	d530      	bpl.n	800b382 <_fclose_r+0x82>
 800b320:	4621      	mov	r1, r4
 800b322:	4628      	mov	r0, r5
 800b324:	f7fe f990 	bl	8009648 <__sflush_r>
 800b328:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 800b32a:	4606      	mov	r6, r0
 800b32c:	b133      	cbz	r3, 800b33c <_fclose_r+0x3c>
 800b32e:	69e1      	ldr	r1, [r4, #28]
 800b330:	4628      	mov	r0, r5
 800b332:	4798      	blx	r3
 800b334:	2800      	cmp	r0, #0
 800b336:	bfb8      	it	lt
 800b338:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 800b33c:	89a3      	ldrh	r3, [r4, #12]
 800b33e:	061a      	lsls	r2, r3, #24
 800b340:	d43c      	bmi.n	800b3bc <_fclose_r+0xbc>
 800b342:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800b344:	b141      	cbz	r1, 800b358 <_fclose_r+0x58>
 800b346:	f104 0340 	add.w	r3, r4, #64	; 0x40
 800b34a:	4299      	cmp	r1, r3
 800b34c:	d002      	beq.n	800b354 <_fclose_r+0x54>
 800b34e:	4628      	mov	r0, r5
 800b350:	f7fe fb22 	bl	8009998 <_free_r>
 800b354:	2300      	movs	r3, #0
 800b356:	6323      	str	r3, [r4, #48]	; 0x30
 800b358:	6c61      	ldr	r1, [r4, #68]	; 0x44
 800b35a:	b121      	cbz	r1, 800b366 <_fclose_r+0x66>
 800b35c:	4628      	mov	r0, r5
 800b35e:	f7fe fb1b 	bl	8009998 <_free_r>
 800b362:	2300      	movs	r3, #0
 800b364:	6463      	str	r3, [r4, #68]	; 0x44
 800b366:	f7fe faa1 	bl	80098ac <__sfp_lock_acquire>
 800b36a:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800b36c:	2200      	movs	r2, #0
 800b36e:	07db      	lsls	r3, r3, #31
 800b370:	81a2      	strh	r2, [r4, #12]
 800b372:	d51f      	bpl.n	800b3b4 <_fclose_r+0xb4>
 800b374:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800b376:	f7fe fdbb 	bl	8009ef0 <__retarget_lock_close_recursive>
 800b37a:	f7fe fa9d 	bl	80098b8 <__sfp_lock_release>
 800b37e:	4630      	mov	r0, r6
 800b380:	bd70      	pop	{r4, r5, r6, pc}
 800b382:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800b384:	f7fe fdb6 	bl	8009ef4 <__retarget_lock_acquire_recursive>
 800b388:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800b38c:	2b00      	cmp	r3, #0
 800b38e:	d1c7      	bne.n	800b320 <_fclose_r+0x20>
 800b390:	6e66      	ldr	r6, [r4, #100]	; 0x64
 800b392:	f016 0601 	ands.w	r6, r6, #1
 800b396:	d016      	beq.n	800b3c6 <_fclose_r+0xc6>
 800b398:	2600      	movs	r6, #0
 800b39a:	4630      	mov	r0, r6
 800b39c:	bd70      	pop	{r4, r5, r6, pc}
 800b39e:	2b00      	cmp	r3, #0
 800b3a0:	d0fa      	beq.n	800b398 <_fclose_r+0x98>
 800b3a2:	e7bd      	b.n	800b320 <_fclose_r+0x20>
 800b3a4:	f7fe fa56 	bl	8009854 <__sinit>
 800b3a8:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800b3aa:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800b3ae:	07d0      	lsls	r0, r2, #31
 800b3b0:	d4f5      	bmi.n	800b39e <_fclose_r+0x9e>
 800b3b2:	e7b3      	b.n	800b31c <_fclose_r+0x1c>
 800b3b4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800b3b6:	f7fe fd9f 	bl	8009ef8 <__retarget_lock_release_recursive>
 800b3ba:	e7db      	b.n	800b374 <_fclose_r+0x74>
 800b3bc:	6921      	ldr	r1, [r4, #16]
 800b3be:	4628      	mov	r0, r5
 800b3c0:	f7fe faea 	bl	8009998 <_free_r>
 800b3c4:	e7bd      	b.n	800b342 <_fclose_r+0x42>
 800b3c6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800b3c8:	f7fe fd96 	bl	8009ef8 <__retarget_lock_release_recursive>
 800b3cc:	4630      	mov	r0, r6
 800b3ce:	bd70      	pop	{r4, r5, r6, pc}

0800b3d0 <__fputwc>:
 800b3d0:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 800b3d4:	b082      	sub	sp, #8
 800b3d6:	4681      	mov	r9, r0
 800b3d8:	4688      	mov	r8, r1
 800b3da:	4614      	mov	r4, r2
 800b3dc:	f000 f8a0 	bl	800b520 <__locale_mb_cur_max>
 800b3e0:	2801      	cmp	r0, #1
 800b3e2:	d103      	bne.n	800b3ec <__fputwc+0x1c>
 800b3e4:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 800b3e8:	2bfe      	cmp	r3, #254	; 0xfe
 800b3ea:	d933      	bls.n	800b454 <__fputwc+0x84>
 800b3ec:	4642      	mov	r2, r8
 800b3ee:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 800b3f2:	a901      	add	r1, sp, #4
 800b3f4:	4648      	mov	r0, r9
 800b3f6:	f000 f93b 	bl	800b670 <_wcrtomb_r>
 800b3fa:	1c42      	adds	r2, r0, #1
 800b3fc:	4606      	mov	r6, r0
 800b3fe:	d02f      	beq.n	800b460 <__fputwc+0x90>
 800b400:	b320      	cbz	r0, 800b44c <__fputwc+0x7c>
 800b402:	f89d c004 	ldrb.w	ip, [sp, #4]
 800b406:	2500      	movs	r5, #0
 800b408:	f10d 0a04 	add.w	sl, sp, #4
 800b40c:	e009      	b.n	800b422 <__fputwc+0x52>
 800b40e:	6823      	ldr	r3, [r4, #0]
 800b410:	1c5a      	adds	r2, r3, #1
 800b412:	6022      	str	r2, [r4, #0]
 800b414:	f883 c000 	strb.w	ip, [r3]
 800b418:	3501      	adds	r5, #1
 800b41a:	42b5      	cmp	r5, r6
 800b41c:	d216      	bcs.n	800b44c <__fputwc+0x7c>
 800b41e:	f815 c00a 	ldrb.w	ip, [r5, sl]
 800b422:	68a3      	ldr	r3, [r4, #8]
 800b424:	3b01      	subs	r3, #1
 800b426:	2b00      	cmp	r3, #0
 800b428:	60a3      	str	r3, [r4, #8]
 800b42a:	daf0      	bge.n	800b40e <__fputwc+0x3e>
 800b42c:	69a7      	ldr	r7, [r4, #24]
 800b42e:	42bb      	cmp	r3, r7
 800b430:	4661      	mov	r1, ip
 800b432:	4622      	mov	r2, r4
 800b434:	4648      	mov	r0, r9
 800b436:	db02      	blt.n	800b43e <__fputwc+0x6e>
 800b438:	f1bc 0f0a 	cmp.w	ip, #10
 800b43c:	d1e7      	bne.n	800b40e <__fputwc+0x3e>
 800b43e:	f000 f8bf 	bl	800b5c0 <__swbuf_r>
 800b442:	1c43      	adds	r3, r0, #1
 800b444:	d1e8      	bne.n	800b418 <__fputwc+0x48>
 800b446:	b002      	add	sp, #8
 800b448:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800b44c:	4640      	mov	r0, r8
 800b44e:	b002      	add	sp, #8
 800b450:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800b454:	fa5f fc88 	uxtb.w	ip, r8
 800b458:	4606      	mov	r6, r0
 800b45a:	f88d c004 	strb.w	ip, [sp, #4]
 800b45e:	e7d2      	b.n	800b406 <__fputwc+0x36>
 800b460:	89a3      	ldrh	r3, [r4, #12]
 800b462:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800b466:	81a3      	strh	r3, [r4, #12]
 800b468:	b002      	add	sp, #8
 800b46a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 800b46e:	bf00      	nop

0800b470 <_fputwc_r>:
 800b470:	b530      	push	{r4, r5, lr}
 800b472:	4605      	mov	r5, r0
 800b474:	6e50      	ldr	r0, [r2, #100]	; 0x64
 800b476:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 800b47a:	07c0      	lsls	r0, r0, #31
 800b47c:	4614      	mov	r4, r2
 800b47e:	b083      	sub	sp, #12
 800b480:	b29a      	uxth	r2, r3
 800b482:	d401      	bmi.n	800b488 <_fputwc_r+0x18>
 800b484:	0590      	lsls	r0, r2, #22
 800b486:	d51c      	bpl.n	800b4c2 <_fputwc_r+0x52>
 800b488:	0490      	lsls	r0, r2, #18
 800b48a:	d406      	bmi.n	800b49a <_fputwc_r+0x2a>
 800b48c:	6e62      	ldr	r2, [r4, #100]	; 0x64
 800b48e:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 800b492:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800b496:	81a3      	strh	r3, [r4, #12]
 800b498:	6662      	str	r2, [r4, #100]	; 0x64
 800b49a:	4628      	mov	r0, r5
 800b49c:	4622      	mov	r2, r4
 800b49e:	f7ff ff97 	bl	800b3d0 <__fputwc>
 800b4a2:	6e63      	ldr	r3, [r4, #100]	; 0x64
 800b4a4:	07da      	lsls	r2, r3, #31
 800b4a6:	4605      	mov	r5, r0
 800b4a8:	d402      	bmi.n	800b4b0 <_fputwc_r+0x40>
 800b4aa:	89a3      	ldrh	r3, [r4, #12]
 800b4ac:	059b      	lsls	r3, r3, #22
 800b4ae:	d502      	bpl.n	800b4b6 <_fputwc_r+0x46>
 800b4b0:	4628      	mov	r0, r5
 800b4b2:	b003      	add	sp, #12
 800b4b4:	bd30      	pop	{r4, r5, pc}
 800b4b6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800b4b8:	f7fe fd1e 	bl	8009ef8 <__retarget_lock_release_recursive>
 800b4bc:	4628      	mov	r0, r5
 800b4be:	b003      	add	sp, #12
 800b4c0:	bd30      	pop	{r4, r5, pc}
 800b4c2:	6da0      	ldr	r0, [r4, #88]	; 0x58
 800b4c4:	9101      	str	r1, [sp, #4]
 800b4c6:	f7fe fd15 	bl	8009ef4 <__retarget_lock_acquire_recursive>
 800b4ca:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800b4ce:	9901      	ldr	r1, [sp, #4]
 800b4d0:	b29a      	uxth	r2, r3
 800b4d2:	e7d9      	b.n	800b488 <_fputwc_r+0x18>

0800b4d4 <_fstat_r>:
 800b4d4:	b538      	push	{r3, r4, r5, lr}
 800b4d6:	460b      	mov	r3, r1
 800b4d8:	4c07      	ldr	r4, [pc, #28]	; (800b4f8 <_fstat_r+0x24>)
 800b4da:	4605      	mov	r5, r0
 800b4dc:	4611      	mov	r1, r2
 800b4de:	4618      	mov	r0, r3
 800b4e0:	2300      	movs	r3, #0
 800b4e2:	6023      	str	r3, [r4, #0]
 800b4e4:	f7fb f9d6 	bl	8006894 <_fstat>
 800b4e8:	1c43      	adds	r3, r0, #1
 800b4ea:	d000      	beq.n	800b4ee <_fstat_r+0x1a>
 800b4ec:	bd38      	pop	{r3, r4, r5, pc}
 800b4ee:	6823      	ldr	r3, [r4, #0]
 800b4f0:	2b00      	cmp	r3, #0
 800b4f2:	d0fb      	beq.n	800b4ec <_fstat_r+0x18>
 800b4f4:	602b      	str	r3, [r5, #0]
 800b4f6:	bd38      	pop	{r3, r4, r5, pc}
 800b4f8:	20001448 	.word	0x20001448

0800b4fc <_isatty_r>:
 800b4fc:	b538      	push	{r3, r4, r5, lr}
 800b4fe:	4c07      	ldr	r4, [pc, #28]	; (800b51c <_isatty_r+0x20>)
 800b500:	2300      	movs	r3, #0
 800b502:	4605      	mov	r5, r0
 800b504:	4608      	mov	r0, r1
 800b506:	6023      	str	r3, [r4, #0]
 800b508:	f7fb f9c9 	bl	800689e <_isatty>
 800b50c:	1c43      	adds	r3, r0, #1
 800b50e:	d000      	beq.n	800b512 <_isatty_r+0x16>
 800b510:	bd38      	pop	{r3, r4, r5, pc}
 800b512:	6823      	ldr	r3, [r4, #0]
 800b514:	2b00      	cmp	r3, #0
 800b516:	d0fb      	beq.n	800b510 <_isatty_r+0x14>
 800b518:	602b      	str	r3, [r5, #0]
 800b51a:	bd38      	pop	{r3, r4, r5, pc}
 800b51c:	20001448 	.word	0x20001448

0800b520 <__locale_mb_cur_max>:
 800b520:	4b04      	ldr	r3, [pc, #16]	; (800b534 <__locale_mb_cur_max+0x14>)
 800b522:	4a05      	ldr	r2, [pc, #20]	; (800b538 <__locale_mb_cur_max+0x18>)
 800b524:	681b      	ldr	r3, [r3, #0]
 800b526:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800b528:	2b00      	cmp	r3, #0
 800b52a:	bf08      	it	eq
 800b52c:	4613      	moveq	r3, r2
 800b52e:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 800b532:	4770      	bx	lr
 800b534:	20000018 	.word	0x20000018
 800b538:	2000085c 	.word	0x2000085c

0800b53c <_lseek_r>:
 800b53c:	b570      	push	{r4, r5, r6, lr}
 800b53e:	460d      	mov	r5, r1
 800b540:	4c08      	ldr	r4, [pc, #32]	; (800b564 <_lseek_r+0x28>)
 800b542:	4611      	mov	r1, r2
 800b544:	4606      	mov	r6, r0
 800b546:	461a      	mov	r2, r3
 800b548:	4628      	mov	r0, r5
 800b54a:	2300      	movs	r3, #0
 800b54c:	6023      	str	r3, [r4, #0]
 800b54e:	f7fb f9a8 	bl	80068a2 <_lseek>
 800b552:	1c43      	adds	r3, r0, #1
 800b554:	d000      	beq.n	800b558 <_lseek_r+0x1c>
 800b556:	bd70      	pop	{r4, r5, r6, pc}
 800b558:	6823      	ldr	r3, [r4, #0]
 800b55a:	2b00      	cmp	r3, #0
 800b55c:	d0fb      	beq.n	800b556 <_lseek_r+0x1a>
 800b55e:	6033      	str	r3, [r6, #0]
 800b560:	bd70      	pop	{r4, r5, r6, pc}
 800b562:	bf00      	nop
 800b564:	20001448 	.word	0x20001448

0800b568 <__ascii_mbtowc>:
 800b568:	b082      	sub	sp, #8
 800b56a:	b149      	cbz	r1, 800b580 <__ascii_mbtowc+0x18>
 800b56c:	b15a      	cbz	r2, 800b586 <__ascii_mbtowc+0x1e>
 800b56e:	b16b      	cbz	r3, 800b58c <__ascii_mbtowc+0x24>
 800b570:	7813      	ldrb	r3, [r2, #0]
 800b572:	600b      	str	r3, [r1, #0]
 800b574:	7812      	ldrb	r2, [r2, #0]
 800b576:	1c10      	adds	r0, r2, #0
 800b578:	bf18      	it	ne
 800b57a:	2001      	movne	r0, #1
 800b57c:	b002      	add	sp, #8
 800b57e:	4770      	bx	lr
 800b580:	a901      	add	r1, sp, #4
 800b582:	2a00      	cmp	r2, #0
 800b584:	d1f3      	bne.n	800b56e <__ascii_mbtowc+0x6>
 800b586:	4610      	mov	r0, r2
 800b588:	b002      	add	sp, #8
 800b58a:	4770      	bx	lr
 800b58c:	f06f 0001 	mvn.w	r0, #1
 800b590:	e7f4      	b.n	800b57c <__ascii_mbtowc+0x14>
 800b592:	bf00      	nop

0800b594 <_read_r>:
 800b594:	b570      	push	{r4, r5, r6, lr}
 800b596:	460d      	mov	r5, r1
 800b598:	4c08      	ldr	r4, [pc, #32]	; (800b5bc <_read_r+0x28>)
 800b59a:	4611      	mov	r1, r2
 800b59c:	4606      	mov	r6, r0
 800b59e:	461a      	mov	r2, r3
 800b5a0:	4628      	mov	r0, r5
 800b5a2:	2300      	movs	r3, #0
 800b5a4:	6023      	str	r3, [r4, #0]
 800b5a6:	f7fb f930 	bl	800680a <_read>
 800b5aa:	1c43      	adds	r3, r0, #1
 800b5ac:	d000      	beq.n	800b5b0 <_read_r+0x1c>
 800b5ae:	bd70      	pop	{r4, r5, r6, pc}
 800b5b0:	6823      	ldr	r3, [r4, #0]
 800b5b2:	2b00      	cmp	r3, #0
 800b5b4:	d0fb      	beq.n	800b5ae <_read_r+0x1a>
 800b5b6:	6033      	str	r3, [r6, #0]
 800b5b8:	bd70      	pop	{r4, r5, r6, pc}
 800b5ba:	bf00      	nop
 800b5bc:	20001448 	.word	0x20001448

0800b5c0 <__swbuf_r>:
 800b5c0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800b5c2:	460d      	mov	r5, r1
 800b5c4:	4614      	mov	r4, r2
 800b5c6:	4606      	mov	r6, r0
 800b5c8:	b110      	cbz	r0, 800b5d0 <__swbuf_r+0x10>
 800b5ca:	6b83      	ldr	r3, [r0, #56]	; 0x38
 800b5cc:	2b00      	cmp	r3, #0
 800b5ce:	d043      	beq.n	800b658 <__swbuf_r+0x98>
 800b5d0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800b5d4:	69a3      	ldr	r3, [r4, #24]
 800b5d6:	60a3      	str	r3, [r4, #8]
 800b5d8:	b291      	uxth	r1, r2
 800b5da:	0708      	lsls	r0, r1, #28
 800b5dc:	d51b      	bpl.n	800b616 <__swbuf_r+0x56>
 800b5de:	6923      	ldr	r3, [r4, #16]
 800b5e0:	b1cb      	cbz	r3, 800b616 <__swbuf_r+0x56>
 800b5e2:	b2ed      	uxtb	r5, r5
 800b5e4:	0489      	lsls	r1, r1, #18
 800b5e6:	462f      	mov	r7, r5
 800b5e8:	d522      	bpl.n	800b630 <__swbuf_r+0x70>
 800b5ea:	6822      	ldr	r2, [r4, #0]
 800b5ec:	6961      	ldr	r1, [r4, #20]
 800b5ee:	1ad3      	subs	r3, r2, r3
 800b5f0:	4299      	cmp	r1, r3
 800b5f2:	dd29      	ble.n	800b648 <__swbuf_r+0x88>
 800b5f4:	3301      	adds	r3, #1
 800b5f6:	68a1      	ldr	r1, [r4, #8]
 800b5f8:	1c50      	adds	r0, r2, #1
 800b5fa:	3901      	subs	r1, #1
 800b5fc:	60a1      	str	r1, [r4, #8]
 800b5fe:	6020      	str	r0, [r4, #0]
 800b600:	7015      	strb	r5, [r2, #0]
 800b602:	6962      	ldr	r2, [r4, #20]
 800b604:	429a      	cmp	r2, r3
 800b606:	d02a      	beq.n	800b65e <__swbuf_r+0x9e>
 800b608:	89a3      	ldrh	r3, [r4, #12]
 800b60a:	07db      	lsls	r3, r3, #31
 800b60c:	d501      	bpl.n	800b612 <__swbuf_r+0x52>
 800b60e:	2d0a      	cmp	r5, #10
 800b610:	d025      	beq.n	800b65e <__swbuf_r+0x9e>
 800b612:	4638      	mov	r0, r7
 800b614:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800b616:	4621      	mov	r1, r4
 800b618:	4630      	mov	r0, r6
 800b61a:	f7fc fffd 	bl	8008618 <__swsetup_r>
 800b61e:	bb20      	cbnz	r0, 800b66a <__swbuf_r+0xaa>
 800b620:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800b624:	6923      	ldr	r3, [r4, #16]
 800b626:	b291      	uxth	r1, r2
 800b628:	b2ed      	uxtb	r5, r5
 800b62a:	0489      	lsls	r1, r1, #18
 800b62c:	462f      	mov	r7, r5
 800b62e:	d4dc      	bmi.n	800b5ea <__swbuf_r+0x2a>
 800b630:	6e61      	ldr	r1, [r4, #100]	; 0x64
 800b632:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800b636:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800b63a:	81a2      	strh	r2, [r4, #12]
 800b63c:	6822      	ldr	r2, [r4, #0]
 800b63e:	6661      	str	r1, [r4, #100]	; 0x64
 800b640:	6961      	ldr	r1, [r4, #20]
 800b642:	1ad3      	subs	r3, r2, r3
 800b644:	4299      	cmp	r1, r3
 800b646:	dcd5      	bgt.n	800b5f4 <__swbuf_r+0x34>
 800b648:	4621      	mov	r1, r4
 800b64a:	4630      	mov	r0, r6
 800b64c:	f7fe f8a6 	bl	800979c <_fflush_r>
 800b650:	b958      	cbnz	r0, 800b66a <__swbuf_r+0xaa>
 800b652:	6822      	ldr	r2, [r4, #0]
 800b654:	2301      	movs	r3, #1
 800b656:	e7ce      	b.n	800b5f6 <__swbuf_r+0x36>
 800b658:	f7fe f8fc 	bl	8009854 <__sinit>
 800b65c:	e7b8      	b.n	800b5d0 <__swbuf_r+0x10>
 800b65e:	4621      	mov	r1, r4
 800b660:	4630      	mov	r0, r6
 800b662:	f7fe f89b 	bl	800979c <_fflush_r>
 800b666:	2800      	cmp	r0, #0
 800b668:	d0d3      	beq.n	800b612 <__swbuf_r+0x52>
 800b66a:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 800b66e:	e7d0      	b.n	800b612 <__swbuf_r+0x52>

0800b670 <_wcrtomb_r>:
 800b670:	b5f0      	push	{r4, r5, r6, r7, lr}
 800b672:	4c11      	ldr	r4, [pc, #68]	; (800b6b8 <_wcrtomb_r+0x48>)
 800b674:	6824      	ldr	r4, [r4, #0]
 800b676:	b085      	sub	sp, #20
 800b678:	4606      	mov	r6, r0
 800b67a:	6b64      	ldr	r4, [r4, #52]	; 0x34
 800b67c:	461f      	mov	r7, r3
 800b67e:	b151      	cbz	r1, 800b696 <_wcrtomb_r+0x26>
 800b680:	4d0e      	ldr	r5, [pc, #56]	; (800b6bc <_wcrtomb_r+0x4c>)
 800b682:	2c00      	cmp	r4, #0
 800b684:	bf08      	it	eq
 800b686:	462c      	moveq	r4, r5
 800b688:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800b68c:	47a0      	blx	r4
 800b68e:	1c43      	adds	r3, r0, #1
 800b690:	d00c      	beq.n	800b6ac <_wcrtomb_r+0x3c>
 800b692:	b005      	add	sp, #20
 800b694:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800b696:	4a09      	ldr	r2, [pc, #36]	; (800b6bc <_wcrtomb_r+0x4c>)
 800b698:	2c00      	cmp	r4, #0
 800b69a:	bf08      	it	eq
 800b69c:	4614      	moveq	r4, r2
 800b69e:	460a      	mov	r2, r1
 800b6a0:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 800b6a4:	a901      	add	r1, sp, #4
 800b6a6:	47a0      	blx	r4
 800b6a8:	1c43      	adds	r3, r0, #1
 800b6aa:	d1f2      	bne.n	800b692 <_wcrtomb_r+0x22>
 800b6ac:	2200      	movs	r2, #0
 800b6ae:	238a      	movs	r3, #138	; 0x8a
 800b6b0:	603a      	str	r2, [r7, #0]
 800b6b2:	6033      	str	r3, [r6, #0]
 800b6b4:	b005      	add	sp, #20
 800b6b6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800b6b8:	20000018 	.word	0x20000018
 800b6bc:	2000085c 	.word	0x2000085c

0800b6c0 <__ascii_wctomb>:
 800b6c0:	b121      	cbz	r1, 800b6cc <__ascii_wctomb+0xc>
 800b6c2:	2aff      	cmp	r2, #255	; 0xff
 800b6c4:	d804      	bhi.n	800b6d0 <__ascii_wctomb+0x10>
 800b6c6:	700a      	strb	r2, [r1, #0]
 800b6c8:	2001      	movs	r0, #1
 800b6ca:	4770      	bx	lr
 800b6cc:	4608      	mov	r0, r1
 800b6ce:	4770      	bx	lr
 800b6d0:	238a      	movs	r3, #138	; 0x8a
 800b6d2:	6003      	str	r3, [r0, #0]
 800b6d4:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800b6d8:	4770      	bx	lr
 800b6da:	bf00      	nop

0800b6dc <_init>:
 800b6dc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800b6de:	bf00      	nop
 800b6e0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800b6e2:	bc08      	pop	{r3}
 800b6e4:	469e      	mov	lr, r3
 800b6e6:	4770      	bx	lr

0800b6e8 <_fini>:
 800b6e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800b6ea:	bf00      	nop
 800b6ec:	bcf8      	pop	{r3, r4, r5, r6, r7}
 800b6ee:	bc08      	pop	{r3}
 800b6f0:	469e      	mov	lr, r3
 800b6f2:	4770      	bx	lr
 800b6f4:	0000      	movs	r0, r0
	...
