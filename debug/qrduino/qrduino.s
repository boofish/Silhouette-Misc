
qrduino.elf:     file format elf32-littlearm


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
 80001e0:	080091e0 	.word	0x080091e0

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
 80001fc:	080091e0 	.word	0x080091e0

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

08000500 <__aeabi_memmove>:
 8000500:	4288      	cmp	r0, r1
 8000502:	b410      	push	{r4}
 8000504:	d90d      	bls.n	8000522 <__aeabi_memmove+0x22>
 8000506:	188b      	adds	r3, r1, r2
 8000508:	4298      	cmp	r0, r3
 800050a:	d20a      	bcs.n	8000522 <__aeabi_memmove+0x22>
 800050c:	1881      	adds	r1, r0, r2
 800050e:	b132      	cbz	r2, 800051e <__aeabi_memmove+0x1e>
 8000510:	1a9a      	subs	r2, r3, r2
 8000512:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 8000516:	429a      	cmp	r2, r3
 8000518:	f801 4d01 	strb.w	r4, [r1, #-1]!
 800051c:	d1f9      	bne.n	8000512 <__aeabi_memmove+0x12>
 800051e:	bc10      	pop	{r4}
 8000520:	4770      	bx	lr
 8000522:	2a00      	cmp	r2, #0
 8000524:	d0fb      	beq.n	800051e <__aeabi_memmove+0x1e>
 8000526:	440a      	add	r2, r1
 8000528:	1e43      	subs	r3, r0, #1
 800052a:	f811 4b01 	ldrb.w	r4, [r1], #1
 800052e:	428a      	cmp	r2, r1
 8000530:	f803 4f01 	strb.w	r4, [r3, #1]!
 8000534:	d1f9      	bne.n	800052a <__aeabi_memmove+0x2a>
 8000536:	bc10      	pop	{r4}
 8000538:	4770      	bx	lr

0800053a <__aeabi_memset>:
 800053a:	b470      	push	{r4, r5, r6}
 800053c:	0784      	lsls	r4, r0, #30
 800053e:	d046      	beq.n	80005ce <__aeabi_memset+0x94>
 8000540:	1e4c      	subs	r4, r1, #1
 8000542:	2900      	cmp	r1, #0
 8000544:	d041      	beq.n	80005ca <__aeabi_memset+0x90>
 8000546:	b2d5      	uxtb	r5, r2
 8000548:	4603      	mov	r3, r0
 800054a:	e002      	b.n	8000552 <__aeabi_memset+0x18>
 800054c:	1e61      	subs	r1, r4, #1
 800054e:	b3e4      	cbz	r4, 80005ca <__aeabi_memset+0x90>
 8000550:	460c      	mov	r4, r1
 8000552:	f803 5b01 	strb.w	r5, [r3], #1
 8000556:	0799      	lsls	r1, r3, #30
 8000558:	d1f8      	bne.n	800054c <__aeabi_memset+0x12>
 800055a:	2c03      	cmp	r4, #3
 800055c:	d92e      	bls.n	80005bc <__aeabi_memset+0x82>
 800055e:	b2d5      	uxtb	r5, r2
 8000560:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8000564:	2c0f      	cmp	r4, #15
 8000566:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 800056a:	d919      	bls.n	80005a0 <__aeabi_memset+0x66>
 800056c:	4626      	mov	r6, r4
 800056e:	f103 0110 	add.w	r1, r3, #16
 8000572:	3e10      	subs	r6, #16
 8000574:	2e0f      	cmp	r6, #15
 8000576:	f841 5c10 	str.w	r5, [r1, #-16]
 800057a:	f841 5c0c 	str.w	r5, [r1, #-12]
 800057e:	f841 5c08 	str.w	r5, [r1, #-8]
 8000582:	f841 5c04 	str.w	r5, [r1, #-4]
 8000586:	f101 0110 	add.w	r1, r1, #16
 800058a:	d8f2      	bhi.n	8000572 <__aeabi_memset+0x38>
 800058c:	f1a4 0110 	sub.w	r1, r4, #16
 8000590:	f021 010f 	bic.w	r1, r1, #15
 8000594:	f004 040f 	and.w	r4, r4, #15
 8000598:	3110      	adds	r1, #16
 800059a:	2c03      	cmp	r4, #3
 800059c:	440b      	add	r3, r1
 800059e:	d90d      	bls.n	80005bc <__aeabi_memset+0x82>
 80005a0:	461e      	mov	r6, r3
 80005a2:	4621      	mov	r1, r4
 80005a4:	3904      	subs	r1, #4
 80005a6:	2903      	cmp	r1, #3
 80005a8:	f846 5b04 	str.w	r5, [r6], #4
 80005ac:	d8fa      	bhi.n	80005a4 <__aeabi_memset+0x6a>
 80005ae:	1f21      	subs	r1, r4, #4
 80005b0:	f021 0103 	bic.w	r1, r1, #3
 80005b4:	3104      	adds	r1, #4
 80005b6:	440b      	add	r3, r1
 80005b8:	f004 0403 	and.w	r4, r4, #3
 80005bc:	b12c      	cbz	r4, 80005ca <__aeabi_memset+0x90>
 80005be:	b2d2      	uxtb	r2, r2
 80005c0:	441c      	add	r4, r3
 80005c2:	f803 2b01 	strb.w	r2, [r3], #1
 80005c6:	42a3      	cmp	r3, r4
 80005c8:	d1fb      	bne.n	80005c2 <__aeabi_memset+0x88>
 80005ca:	bc70      	pop	{r4, r5, r6}
 80005cc:	4770      	bx	lr
 80005ce:	460c      	mov	r4, r1
 80005d0:	4603      	mov	r3, r0
 80005d2:	e7c2      	b.n	800055a <__aeabi_memset+0x20>

080005d4 <memcpy>:
 80005d4:	4684      	mov	ip, r0
 80005d6:	ea41 0300 	orr.w	r3, r1, r0
 80005da:	f013 0303 	ands.w	r3, r3, #3
 80005de:	d16d      	bne.n	80006bc <memcpy+0xe8>
 80005e0:	3a40      	subs	r2, #64	; 0x40
 80005e2:	d341      	bcc.n	8000668 <memcpy+0x94>
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
 800062c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000630:	f840 3b04 	str.w	r3, [r0], #4
 8000634:	f851 3b04 	ldr.w	r3, [r1], #4
 8000638:	f840 3b04 	str.w	r3, [r0], #4
 800063c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000640:	f840 3b04 	str.w	r3, [r0], #4
 8000644:	f851 3b04 	ldr.w	r3, [r1], #4
 8000648:	f840 3b04 	str.w	r3, [r0], #4
 800064c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000650:	f840 3b04 	str.w	r3, [r0], #4
 8000654:	f851 3b04 	ldr.w	r3, [r1], #4
 8000658:	f840 3b04 	str.w	r3, [r0], #4
 800065c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000660:	f840 3b04 	str.w	r3, [r0], #4
 8000664:	3a40      	subs	r2, #64	; 0x40
 8000666:	d2bd      	bcs.n	80005e4 <memcpy+0x10>
 8000668:	3230      	adds	r2, #48	; 0x30
 800066a:	d311      	bcc.n	8000690 <memcpy+0xbc>
 800066c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000670:	f840 3b04 	str.w	r3, [r0], #4
 8000674:	f851 3b04 	ldr.w	r3, [r1], #4
 8000678:	f840 3b04 	str.w	r3, [r0], #4
 800067c:	f851 3b04 	ldr.w	r3, [r1], #4
 8000680:	f840 3b04 	str.w	r3, [r0], #4
 8000684:	f851 3b04 	ldr.w	r3, [r1], #4
 8000688:	f840 3b04 	str.w	r3, [r0], #4
 800068c:	3a10      	subs	r2, #16
 800068e:	d2ed      	bcs.n	800066c <memcpy+0x98>
 8000690:	320c      	adds	r2, #12
 8000692:	d305      	bcc.n	80006a0 <memcpy+0xcc>
 8000694:	f851 3b04 	ldr.w	r3, [r1], #4
 8000698:	f840 3b04 	str.w	r3, [r0], #4
 800069c:	3a04      	subs	r2, #4
 800069e:	d2f9      	bcs.n	8000694 <memcpy+0xc0>
 80006a0:	3204      	adds	r2, #4
 80006a2:	d008      	beq.n	80006b6 <memcpy+0xe2>
 80006a4:	07d2      	lsls	r2, r2, #31
 80006a6:	bf1c      	itt	ne
 80006a8:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80006ac:	f800 3b01 	strbne.w	r3, [r0], #1
 80006b0:	d301      	bcc.n	80006b6 <memcpy+0xe2>
 80006b2:	880b      	ldrh	r3, [r1, #0]
 80006b4:	8003      	strh	r3, [r0, #0]
 80006b6:	4660      	mov	r0, ip
 80006b8:	4770      	bx	lr
 80006ba:	bf00      	nop
 80006bc:	2a08      	cmp	r2, #8
 80006be:	d313      	bcc.n	80006e8 <memcpy+0x114>
 80006c0:	078b      	lsls	r3, r1, #30
 80006c2:	d08d      	beq.n	80005e0 <memcpy+0xc>
 80006c4:	f010 0303 	ands.w	r3, r0, #3
 80006c8:	d08a      	beq.n	80005e0 <memcpy+0xc>
 80006ca:	f1c3 0304 	rsb	r3, r3, #4
 80006ce:	1ad2      	subs	r2, r2, r3
 80006d0:	07db      	lsls	r3, r3, #31
 80006d2:	bf1c      	itt	ne
 80006d4:	f811 3b01 	ldrbne.w	r3, [r1], #1
 80006d8:	f800 3b01 	strbne.w	r3, [r0], #1
 80006dc:	d380      	bcc.n	80005e0 <memcpy+0xc>
 80006de:	f831 3b02 	ldrh.w	r3, [r1], #2
 80006e2:	f820 3b02 	strh.w	r3, [r0], #2
 80006e6:	e77b      	b.n	80005e0 <memcpy+0xc>
 80006e8:	3a04      	subs	r2, #4
 80006ea:	d3d9      	bcc.n	80006a0 <memcpy+0xcc>
 80006ec:	3a01      	subs	r2, #1
 80006ee:	f811 3b01 	ldrb.w	r3, [r1], #1
 80006f2:	f800 3b01 	strb.w	r3, [r0], #1
 80006f6:	d2f9      	bcs.n	80006ec <memcpy+0x118>
 80006f8:	780b      	ldrb	r3, [r1, #0]
 80006fa:	7003      	strb	r3, [r0, #0]
 80006fc:	784b      	ldrb	r3, [r1, #1]
 80006fe:	7043      	strb	r3, [r0, #1]
 8000700:	788b      	ldrb	r3, [r1, #2]
 8000702:	7083      	strb	r3, [r0, #2]
 8000704:	4660      	mov	r0, ip
 8000706:	4770      	bx	lr
	...

08000740 <strlen>:
 8000740:	f890 f000 	pld	[r0]
 8000744:	e96d 4502 	strd	r4, r5, [sp, #-8]!
 8000748:	f020 0107 	bic.w	r1, r0, #7
 800074c:	f06f 0c00 	mvn.w	ip, #0
 8000750:	f010 0407 	ands.w	r4, r0, #7
 8000754:	f891 f020 	pld	[r1, #32]
 8000758:	f040 8049 	bne.w	80007ee <strlen+0xae>
 800075c:	f04f 0400 	mov.w	r4, #0
 8000760:	f06f 0007 	mvn.w	r0, #7
 8000764:	e9d1 2300 	ldrd	r2, r3, [r1]
 8000768:	f891 f040 	pld	[r1, #64]	; 0x40
 800076c:	f100 0008 	add.w	r0, r0, #8
 8000770:	fa82 f24c 	uadd8	r2, r2, ip
 8000774:	faa4 f28c 	sel	r2, r4, ip
 8000778:	fa83 f34c 	uadd8	r3, r3, ip
 800077c:	faa2 f38c 	sel	r3, r2, ip
 8000780:	bb4b      	cbnz	r3, 80007d6 <strlen+0x96>
 8000782:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
 8000786:	fa82 f24c 	uadd8	r2, r2, ip
 800078a:	f100 0008 	add.w	r0, r0, #8
 800078e:	faa4 f28c 	sel	r2, r4, ip
 8000792:	fa83 f34c 	uadd8	r3, r3, ip
 8000796:	faa2 f38c 	sel	r3, r2, ip
 800079a:	b9e3      	cbnz	r3, 80007d6 <strlen+0x96>
 800079c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
 80007a0:	fa82 f24c 	uadd8	r2, r2, ip
 80007a4:	f100 0008 	add.w	r0, r0, #8
 80007a8:	faa4 f28c 	sel	r2, r4, ip
 80007ac:	fa83 f34c 	uadd8	r3, r3, ip
 80007b0:	faa2 f38c 	sel	r3, r2, ip
 80007b4:	b97b      	cbnz	r3, 80007d6 <strlen+0x96>
 80007b6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
 80007ba:	f101 0120 	add.w	r1, r1, #32
 80007be:	fa82 f24c 	uadd8	r2, r2, ip
 80007c2:	f100 0008 	add.w	r0, r0, #8
 80007c6:	faa4 f28c 	sel	r2, r4, ip
 80007ca:	fa83 f34c 	uadd8	r3, r3, ip
 80007ce:	faa2 f38c 	sel	r3, r2, ip
 80007d2:	2b00      	cmp	r3, #0
 80007d4:	d0c6      	beq.n	8000764 <strlen+0x24>
 80007d6:	2a00      	cmp	r2, #0
 80007d8:	bf04      	itt	eq
 80007da:	3004      	addeq	r0, #4
 80007dc:	461a      	moveq	r2, r3
 80007de:	ba12      	rev	r2, r2
 80007e0:	fab2 f282 	clz	r2, r2
 80007e4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
 80007e8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 80007ec:	4770      	bx	lr
 80007ee:	e9d1 2300 	ldrd	r2, r3, [r1]
 80007f2:	f004 0503 	and.w	r5, r4, #3
 80007f6:	f1c4 0000 	rsb	r0, r4, #0
 80007fa:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 80007fe:	f014 0f04 	tst.w	r4, #4
 8000802:	f891 f040 	pld	[r1, #64]	; 0x40
 8000806:	fa0c f505 	lsl.w	r5, ip, r5
 800080a:	ea62 0205 	orn	r2, r2, r5
 800080e:	bf1c      	itt	ne
 8000810:	ea63 0305 	ornne	r3, r3, r5
 8000814:	4662      	movne	r2, ip
 8000816:	f04f 0400 	mov.w	r4, #0
 800081a:	e7a9      	b.n	8000770 <strlen+0x30>
 800081c:	0000      	movs	r0, r0
	...

08000820 <memchr>:
 8000820:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 8000824:	2a10      	cmp	r2, #16
 8000826:	db2b      	blt.n	8000880 <memchr+0x60>
 8000828:	f010 0f07 	tst.w	r0, #7
 800082c:	d008      	beq.n	8000840 <memchr+0x20>
 800082e:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000832:	3a01      	subs	r2, #1
 8000834:	428b      	cmp	r3, r1
 8000836:	d02d      	beq.n	8000894 <memchr+0x74>
 8000838:	f010 0f07 	tst.w	r0, #7
 800083c:	b342      	cbz	r2, 8000890 <memchr+0x70>
 800083e:	d1f6      	bne.n	800082e <memchr+0xe>
 8000840:	b4f0      	push	{r4, r5, r6, r7}
 8000842:	ea41 2101 	orr.w	r1, r1, r1, lsl #8
 8000846:	ea41 4101 	orr.w	r1, r1, r1, lsl #16
 800084a:	f022 0407 	bic.w	r4, r2, #7
 800084e:	f07f 0700 	mvns.w	r7, #0
 8000852:	2300      	movs	r3, #0
 8000854:	e8f0 5602 	ldrd	r5, r6, [r0], #8
 8000858:	3c08      	subs	r4, #8
 800085a:	ea85 0501 	eor.w	r5, r5, r1
 800085e:	ea86 0601 	eor.w	r6, r6, r1
 8000862:	fa85 f547 	uadd8	r5, r5, r7
 8000866:	faa3 f587 	sel	r5, r3, r7
 800086a:	fa86 f647 	uadd8	r6, r6, r7
 800086e:	faa5 f687 	sel	r6, r5, r7
 8000872:	b98e      	cbnz	r6, 8000898 <memchr+0x78>
 8000874:	d1ee      	bne.n	8000854 <memchr+0x34>
 8000876:	bcf0      	pop	{r4, r5, r6, r7}
 8000878:	f001 01ff 	and.w	r1, r1, #255	; 0xff
 800087c:	f002 0207 	and.w	r2, r2, #7
 8000880:	b132      	cbz	r2, 8000890 <memchr+0x70>
 8000882:	f810 3b01 	ldrb.w	r3, [r0], #1
 8000886:	3a01      	subs	r2, #1
 8000888:	ea83 0301 	eor.w	r3, r3, r1
 800088c:	b113      	cbz	r3, 8000894 <memchr+0x74>
 800088e:	d1f8      	bne.n	8000882 <memchr+0x62>
 8000890:	2000      	movs	r0, #0
 8000892:	4770      	bx	lr
 8000894:	3801      	subs	r0, #1
 8000896:	4770      	bx	lr
 8000898:	2d00      	cmp	r5, #0
 800089a:	bf06      	itte	eq
 800089c:	4635      	moveq	r5, r6
 800089e:	3803      	subeq	r0, #3
 80008a0:	3807      	subne	r0, #7
 80008a2:	f015 0f01 	tst.w	r5, #1
 80008a6:	d107      	bne.n	80008b8 <memchr+0x98>
 80008a8:	3001      	adds	r0, #1
 80008aa:	f415 7f80 	tst.w	r5, #256	; 0x100
 80008ae:	bf02      	ittt	eq
 80008b0:	3001      	addeq	r0, #1
 80008b2:	f415 3fc0 	tsteq.w	r5, #98304	; 0x18000
 80008b6:	3001      	addeq	r0, #1
 80008b8:	bcf0      	pop	{r4, r5, r6, r7}
 80008ba:	3801      	subs	r0, #1
 80008bc:	4770      	bx	lr
 80008be:	bf00      	nop

080008c0 <__aeabi_drsub>:
 80008c0:	f081 4100 	eor.w	r1, r1, #2147483648	; 0x80000000
 80008c4:	e002      	b.n	80008cc <__adddf3>
 80008c6:	bf00      	nop

080008c8 <__aeabi_dsub>:
 80008c8:	f083 4300 	eor.w	r3, r3, #2147483648	; 0x80000000

080008cc <__adddf3>:
 80008cc:	b530      	push	{r4, r5, lr}
 80008ce:	ea4f 0441 	mov.w	r4, r1, lsl #1
 80008d2:	ea4f 0543 	mov.w	r5, r3, lsl #1
 80008d6:	ea94 0f05 	teq	r4, r5
 80008da:	bf08      	it	eq
 80008dc:	ea90 0f02 	teqeq	r0, r2
 80008e0:	bf1f      	itttt	ne
 80008e2:	ea54 0c00 	orrsne.w	ip, r4, r0
 80008e6:	ea55 0c02 	orrsne.w	ip, r5, r2
 80008ea:	ea7f 5c64 	mvnsne.w	ip, r4, asr #21
 80008ee:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 80008f2:	f000 80e2 	beq.w	8000aba <__adddf3+0x1ee>
 80008f6:	ea4f 5454 	mov.w	r4, r4, lsr #21
 80008fa:	ebd4 5555 	rsbs	r5, r4, r5, lsr #21
 80008fe:	bfb8      	it	lt
 8000900:	426d      	neglt	r5, r5
 8000902:	dd0c      	ble.n	800091e <__adddf3+0x52>
 8000904:	442c      	add	r4, r5
 8000906:	ea80 0202 	eor.w	r2, r0, r2
 800090a:	ea81 0303 	eor.w	r3, r1, r3
 800090e:	ea82 0000 	eor.w	r0, r2, r0
 8000912:	ea83 0101 	eor.w	r1, r3, r1
 8000916:	ea80 0202 	eor.w	r2, r0, r2
 800091a:	ea81 0303 	eor.w	r3, r1, r3
 800091e:	2d36      	cmp	r5, #54	; 0x36
 8000920:	bf88      	it	hi
 8000922:	bd30      	pophi	{r4, r5, pc}
 8000924:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 8000928:	ea4f 3101 	mov.w	r1, r1, lsl #12
 800092c:	f44f 1c80 	mov.w	ip, #1048576	; 0x100000
 8000930:	ea4c 3111 	orr.w	r1, ip, r1, lsr #12
 8000934:	d002      	beq.n	800093c <__adddf3+0x70>
 8000936:	4240      	negs	r0, r0
 8000938:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 800093c:	f013 4f00 	tst.w	r3, #2147483648	; 0x80000000
 8000940:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000944:	ea4c 3313 	orr.w	r3, ip, r3, lsr #12
 8000948:	d002      	beq.n	8000950 <__adddf3+0x84>
 800094a:	4252      	negs	r2, r2
 800094c:	eb63 0343 	sbc.w	r3, r3, r3, lsl #1
 8000950:	ea94 0f05 	teq	r4, r5
 8000954:	f000 80a7 	beq.w	8000aa6 <__adddf3+0x1da>
 8000958:	f1a4 0401 	sub.w	r4, r4, #1
 800095c:	f1d5 0e20 	rsbs	lr, r5, #32
 8000960:	db0d      	blt.n	800097e <__adddf3+0xb2>
 8000962:	fa02 fc0e 	lsl.w	ip, r2, lr
 8000966:	fa22 f205 	lsr.w	r2, r2, r5
 800096a:	1880      	adds	r0, r0, r2
 800096c:	f141 0100 	adc.w	r1, r1, #0
 8000970:	fa03 f20e 	lsl.w	r2, r3, lr
 8000974:	1880      	adds	r0, r0, r2
 8000976:	fa43 f305 	asr.w	r3, r3, r5
 800097a:	4159      	adcs	r1, r3
 800097c:	e00e      	b.n	800099c <__adddf3+0xd0>
 800097e:	f1a5 0520 	sub.w	r5, r5, #32
 8000982:	f10e 0e20 	add.w	lr, lr, #32
 8000986:	2a01      	cmp	r2, #1
 8000988:	fa03 fc0e 	lsl.w	ip, r3, lr
 800098c:	bf28      	it	cs
 800098e:	f04c 0c02 	orrcs.w	ip, ip, #2
 8000992:	fa43 f305 	asr.w	r3, r3, r5
 8000996:	18c0      	adds	r0, r0, r3
 8000998:	eb51 71e3 	adcs.w	r1, r1, r3, asr #31
 800099c:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 80009a0:	d507      	bpl.n	80009b2 <__adddf3+0xe6>
 80009a2:	f04f 0e00 	mov.w	lr, #0
 80009a6:	f1dc 0c00 	rsbs	ip, ip, #0
 80009aa:	eb7e 0000 	sbcs.w	r0, lr, r0
 80009ae:	eb6e 0101 	sbc.w	r1, lr, r1
 80009b2:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 80009b6:	d31b      	bcc.n	80009f0 <__adddf3+0x124>
 80009b8:	f5b1 1f00 	cmp.w	r1, #2097152	; 0x200000
 80009bc:	d30c      	bcc.n	80009d8 <__adddf3+0x10c>
 80009be:	0849      	lsrs	r1, r1, #1
 80009c0:	ea5f 0030 	movs.w	r0, r0, rrx
 80009c4:	ea4f 0c3c 	mov.w	ip, ip, rrx
 80009c8:	f104 0401 	add.w	r4, r4, #1
 80009cc:	ea4f 5244 	mov.w	r2, r4, lsl #21
 80009d0:	f512 0f80 	cmn.w	r2, #4194304	; 0x400000
 80009d4:	f080 809a 	bcs.w	8000b0c <__adddf3+0x240>
 80009d8:	f1bc 4f00 	cmp.w	ip, #2147483648	; 0x80000000
 80009dc:	bf08      	it	eq
 80009de:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 80009e2:	f150 0000 	adcs.w	r0, r0, #0
 80009e6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 80009ea:	ea41 0105 	orr.w	r1, r1, r5
 80009ee:	bd30      	pop	{r4, r5, pc}
 80009f0:	ea5f 0c4c 	movs.w	ip, ip, lsl #1
 80009f4:	4140      	adcs	r0, r0
 80009f6:	eb41 0101 	adc.w	r1, r1, r1
 80009fa:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 80009fe:	f1a4 0401 	sub.w	r4, r4, #1
 8000a02:	d1e9      	bne.n	80009d8 <__adddf3+0x10c>
 8000a04:	f091 0f00 	teq	r1, #0
 8000a08:	bf04      	itt	eq
 8000a0a:	4601      	moveq	r1, r0
 8000a0c:	2000      	moveq	r0, #0
 8000a0e:	fab1 f381 	clz	r3, r1
 8000a12:	bf08      	it	eq
 8000a14:	3320      	addeq	r3, #32
 8000a16:	f1a3 030b 	sub.w	r3, r3, #11
 8000a1a:	f1b3 0220 	subs.w	r2, r3, #32
 8000a1e:	da0c      	bge.n	8000a3a <__adddf3+0x16e>
 8000a20:	320c      	adds	r2, #12
 8000a22:	dd08      	ble.n	8000a36 <__adddf3+0x16a>
 8000a24:	f102 0c14 	add.w	ip, r2, #20
 8000a28:	f1c2 020c 	rsb	r2, r2, #12
 8000a2c:	fa01 f00c 	lsl.w	r0, r1, ip
 8000a30:	fa21 f102 	lsr.w	r1, r1, r2
 8000a34:	e00c      	b.n	8000a50 <__adddf3+0x184>
 8000a36:	f102 0214 	add.w	r2, r2, #20
 8000a3a:	bfd8      	it	le
 8000a3c:	f1c2 0c20 	rsble	ip, r2, #32
 8000a40:	fa01 f102 	lsl.w	r1, r1, r2
 8000a44:	fa20 fc0c 	lsr.w	ip, r0, ip
 8000a48:	bfdc      	itt	le
 8000a4a:	ea41 010c 	orrle.w	r1, r1, ip
 8000a4e:	4090      	lslle	r0, r2
 8000a50:	1ae4      	subs	r4, r4, r3
 8000a52:	bfa2      	ittt	ge
 8000a54:	eb01 5104 	addge.w	r1, r1, r4, lsl #20
 8000a58:	4329      	orrge	r1, r5
 8000a5a:	bd30      	popge	{r4, r5, pc}
 8000a5c:	ea6f 0404 	mvn.w	r4, r4
 8000a60:	3c1f      	subs	r4, #31
 8000a62:	da1c      	bge.n	8000a9e <__adddf3+0x1d2>
 8000a64:	340c      	adds	r4, #12
 8000a66:	dc0e      	bgt.n	8000a86 <__adddf3+0x1ba>
 8000a68:	f104 0414 	add.w	r4, r4, #20
 8000a6c:	f1c4 0220 	rsb	r2, r4, #32
 8000a70:	fa20 f004 	lsr.w	r0, r0, r4
 8000a74:	fa01 f302 	lsl.w	r3, r1, r2
 8000a78:	ea40 0003 	orr.w	r0, r0, r3
 8000a7c:	fa21 f304 	lsr.w	r3, r1, r4
 8000a80:	ea45 0103 	orr.w	r1, r5, r3
 8000a84:	bd30      	pop	{r4, r5, pc}
 8000a86:	f1c4 040c 	rsb	r4, r4, #12
 8000a8a:	f1c4 0220 	rsb	r2, r4, #32
 8000a8e:	fa20 f002 	lsr.w	r0, r0, r2
 8000a92:	fa01 f304 	lsl.w	r3, r1, r4
 8000a96:	ea40 0003 	orr.w	r0, r0, r3
 8000a9a:	4629      	mov	r1, r5
 8000a9c:	bd30      	pop	{r4, r5, pc}
 8000a9e:	fa21 f004 	lsr.w	r0, r1, r4
 8000aa2:	4629      	mov	r1, r5
 8000aa4:	bd30      	pop	{r4, r5, pc}
 8000aa6:	f094 0f00 	teq	r4, #0
 8000aaa:	f483 1380 	eor.w	r3, r3, #1048576	; 0x100000
 8000aae:	bf06      	itte	eq
 8000ab0:	f481 1180 	eoreq.w	r1, r1, #1048576	; 0x100000
 8000ab4:	3401      	addeq	r4, #1
 8000ab6:	3d01      	subne	r5, #1
 8000ab8:	e74e      	b.n	8000958 <__adddf3+0x8c>
 8000aba:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000abe:	bf18      	it	ne
 8000ac0:	ea7f 5c65 	mvnsne.w	ip, r5, asr #21
 8000ac4:	d029      	beq.n	8000b1a <__adddf3+0x24e>
 8000ac6:	ea94 0f05 	teq	r4, r5
 8000aca:	bf08      	it	eq
 8000acc:	ea90 0f02 	teqeq	r0, r2
 8000ad0:	d005      	beq.n	8000ade <__adddf3+0x212>
 8000ad2:	ea54 0c00 	orrs.w	ip, r4, r0
 8000ad6:	bf04      	itt	eq
 8000ad8:	4619      	moveq	r1, r3
 8000ada:	4610      	moveq	r0, r2
 8000adc:	bd30      	pop	{r4, r5, pc}
 8000ade:	ea91 0f03 	teq	r1, r3
 8000ae2:	bf1e      	ittt	ne
 8000ae4:	2100      	movne	r1, #0
 8000ae6:	2000      	movne	r0, #0
 8000ae8:	bd30      	popne	{r4, r5, pc}
 8000aea:	ea5f 5c54 	movs.w	ip, r4, lsr #21
 8000aee:	d105      	bne.n	8000afc <__adddf3+0x230>
 8000af0:	0040      	lsls	r0, r0, #1
 8000af2:	4149      	adcs	r1, r1
 8000af4:	bf28      	it	cs
 8000af6:	f041 4100 	orrcs.w	r1, r1, #2147483648	; 0x80000000
 8000afa:	bd30      	pop	{r4, r5, pc}
 8000afc:	f514 0480 	adds.w	r4, r4, #4194304	; 0x400000
 8000b00:	bf3c      	itt	cc
 8000b02:	f501 1180 	addcc.w	r1, r1, #1048576	; 0x100000
 8000b06:	bd30      	popcc	{r4, r5, pc}
 8000b08:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000b0c:	f045 41fe 	orr.w	r1, r5, #2130706432	; 0x7f000000
 8000b10:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000b14:	f04f 0000 	mov.w	r0, #0
 8000b18:	bd30      	pop	{r4, r5, pc}
 8000b1a:	ea7f 5c64 	mvns.w	ip, r4, asr #21
 8000b1e:	bf1a      	itte	ne
 8000b20:	4619      	movne	r1, r3
 8000b22:	4610      	movne	r0, r2
 8000b24:	ea7f 5c65 	mvnseq.w	ip, r5, asr #21
 8000b28:	bf1c      	itt	ne
 8000b2a:	460b      	movne	r3, r1
 8000b2c:	4602      	movne	r2, r0
 8000b2e:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8000b32:	bf06      	itte	eq
 8000b34:	ea52 3503 	orrseq.w	r5, r2, r3, lsl #12
 8000b38:	ea91 0f03 	teqeq	r1, r3
 8000b3c:	f441 2100 	orrne.w	r1, r1, #524288	; 0x80000
 8000b40:	bd30      	pop	{r4, r5, pc}
 8000b42:	bf00      	nop

08000b44 <__aeabi_ui2d>:
 8000b44:	f090 0f00 	teq	r0, #0
 8000b48:	bf04      	itt	eq
 8000b4a:	2100      	moveq	r1, #0
 8000b4c:	4770      	bxeq	lr
 8000b4e:	b530      	push	{r4, r5, lr}
 8000b50:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000b54:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000b58:	f04f 0500 	mov.w	r5, #0
 8000b5c:	f04f 0100 	mov.w	r1, #0
 8000b60:	e750      	b.n	8000a04 <__adddf3+0x138>
 8000b62:	bf00      	nop

08000b64 <__aeabi_i2d>:
 8000b64:	f090 0f00 	teq	r0, #0
 8000b68:	bf04      	itt	eq
 8000b6a:	2100      	moveq	r1, #0
 8000b6c:	4770      	bxeq	lr
 8000b6e:	b530      	push	{r4, r5, lr}
 8000b70:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000b74:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000b78:	f010 4500 	ands.w	r5, r0, #2147483648	; 0x80000000
 8000b7c:	bf48      	it	mi
 8000b7e:	4240      	negmi	r0, r0
 8000b80:	f04f 0100 	mov.w	r1, #0
 8000b84:	e73e      	b.n	8000a04 <__adddf3+0x138>
 8000b86:	bf00      	nop

08000b88 <__aeabi_f2d>:
 8000b88:	0042      	lsls	r2, r0, #1
 8000b8a:	ea4f 01e2 	mov.w	r1, r2, asr #3
 8000b8e:	ea4f 0131 	mov.w	r1, r1, rrx
 8000b92:	ea4f 7002 	mov.w	r0, r2, lsl #28
 8000b96:	bf1f      	itttt	ne
 8000b98:	f012 437f 	andsne.w	r3, r2, #4278190080	; 0xff000000
 8000b9c:	f093 4f7f 	teqne	r3, #4278190080	; 0xff000000
 8000ba0:	f081 5160 	eorne.w	r1, r1, #939524096	; 0x38000000
 8000ba4:	4770      	bxne	lr
 8000ba6:	f032 427f 	bics.w	r2, r2, #4278190080	; 0xff000000
 8000baa:	bf08      	it	eq
 8000bac:	4770      	bxeq	lr
 8000bae:	f093 4f7f 	teq	r3, #4278190080	; 0xff000000
 8000bb2:	bf04      	itt	eq
 8000bb4:	f441 2100 	orreq.w	r1, r1, #524288	; 0x80000
 8000bb8:	4770      	bxeq	lr
 8000bba:	b530      	push	{r4, r5, lr}
 8000bbc:	f44f 7460 	mov.w	r4, #896	; 0x380
 8000bc0:	f001 4500 	and.w	r5, r1, #2147483648	; 0x80000000
 8000bc4:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000bc8:	e71c      	b.n	8000a04 <__adddf3+0x138>
 8000bca:	bf00      	nop

08000bcc <__aeabi_ul2d>:
 8000bcc:	ea50 0201 	orrs.w	r2, r0, r1
 8000bd0:	bf08      	it	eq
 8000bd2:	4770      	bxeq	lr
 8000bd4:	b530      	push	{r4, r5, lr}
 8000bd6:	f04f 0500 	mov.w	r5, #0
 8000bda:	e00a      	b.n	8000bf2 <__aeabi_l2d+0x16>

08000bdc <__aeabi_l2d>:
 8000bdc:	ea50 0201 	orrs.w	r2, r0, r1
 8000be0:	bf08      	it	eq
 8000be2:	4770      	bxeq	lr
 8000be4:	b530      	push	{r4, r5, lr}
 8000be6:	f011 4500 	ands.w	r5, r1, #2147483648	; 0x80000000
 8000bea:	d502      	bpl.n	8000bf2 <__aeabi_l2d+0x16>
 8000bec:	4240      	negs	r0, r0
 8000bee:	eb61 0141 	sbc.w	r1, r1, r1, lsl #1
 8000bf2:	f44f 6480 	mov.w	r4, #1024	; 0x400
 8000bf6:	f104 0432 	add.w	r4, r4, #50	; 0x32
 8000bfa:	ea5f 5c91 	movs.w	ip, r1, lsr #22
 8000bfe:	f43f aed8 	beq.w	80009b2 <__adddf3+0xe6>
 8000c02:	f04f 0203 	mov.w	r2, #3
 8000c06:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000c0a:	bf18      	it	ne
 8000c0c:	3203      	addne	r2, #3
 8000c0e:	ea5f 0cdc 	movs.w	ip, ip, lsr #3
 8000c12:	bf18      	it	ne
 8000c14:	3203      	addne	r2, #3
 8000c16:	eb02 02dc 	add.w	r2, r2, ip, lsr #3
 8000c1a:	f1c2 0320 	rsb	r3, r2, #32
 8000c1e:	fa00 fc03 	lsl.w	ip, r0, r3
 8000c22:	fa20 f002 	lsr.w	r0, r0, r2
 8000c26:	fa01 fe03 	lsl.w	lr, r1, r3
 8000c2a:	ea40 000e 	orr.w	r0, r0, lr
 8000c2e:	fa21 f102 	lsr.w	r1, r1, r2
 8000c32:	4414      	add	r4, r2
 8000c34:	e6bd      	b.n	80009b2 <__adddf3+0xe6>
 8000c36:	bf00      	nop

08000c38 <__aeabi_dmul>:
 8000c38:	b570      	push	{r4, r5, r6, lr}
 8000c3a:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000c3e:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000c42:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000c46:	bf1d      	ittte	ne
 8000c48:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000c4c:	ea94 0f0c 	teqne	r4, ip
 8000c50:	ea95 0f0c 	teqne	r5, ip
 8000c54:	f000 f8de 	bleq	8000e14 <__aeabi_dmul+0x1dc>
 8000c58:	442c      	add	r4, r5
 8000c5a:	ea81 0603 	eor.w	r6, r1, r3
 8000c5e:	ea21 514c 	bic.w	r1, r1, ip, lsl #21
 8000c62:	ea23 534c 	bic.w	r3, r3, ip, lsl #21
 8000c66:	ea50 3501 	orrs.w	r5, r0, r1, lsl #12
 8000c6a:	bf18      	it	ne
 8000c6c:	ea52 3503 	orrsne.w	r5, r2, r3, lsl #12
 8000c70:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000c74:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 8000c78:	d038      	beq.n	8000cec <__aeabi_dmul+0xb4>
 8000c7a:	fba0 ce02 	umull	ip, lr, r0, r2
 8000c7e:	f04f 0500 	mov.w	r5, #0
 8000c82:	fbe1 e502 	umlal	lr, r5, r1, r2
 8000c86:	f006 4200 	and.w	r2, r6, #2147483648	; 0x80000000
 8000c8a:	fbe0 e503 	umlal	lr, r5, r0, r3
 8000c8e:	f04f 0600 	mov.w	r6, #0
 8000c92:	fbe1 5603 	umlal	r5, r6, r1, r3
 8000c96:	f09c 0f00 	teq	ip, #0
 8000c9a:	bf18      	it	ne
 8000c9c:	f04e 0e01 	orrne.w	lr, lr, #1
 8000ca0:	f1a4 04ff 	sub.w	r4, r4, #255	; 0xff
 8000ca4:	f5b6 7f00 	cmp.w	r6, #512	; 0x200
 8000ca8:	f564 7440 	sbc.w	r4, r4, #768	; 0x300
 8000cac:	d204      	bcs.n	8000cb8 <__aeabi_dmul+0x80>
 8000cae:	ea5f 0e4e 	movs.w	lr, lr, lsl #1
 8000cb2:	416d      	adcs	r5, r5
 8000cb4:	eb46 0606 	adc.w	r6, r6, r6
 8000cb8:	ea42 21c6 	orr.w	r1, r2, r6, lsl #11
 8000cbc:	ea41 5155 	orr.w	r1, r1, r5, lsr #21
 8000cc0:	ea4f 20c5 	mov.w	r0, r5, lsl #11
 8000cc4:	ea40 505e 	orr.w	r0, r0, lr, lsr #21
 8000cc8:	ea4f 2ece 	mov.w	lr, lr, lsl #11
 8000ccc:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000cd0:	bf88      	it	hi
 8000cd2:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000cd6:	d81e      	bhi.n	8000d16 <__aeabi_dmul+0xde>
 8000cd8:	f1be 4f00 	cmp.w	lr, #2147483648	; 0x80000000
 8000cdc:	bf08      	it	eq
 8000cde:	ea5f 0e50 	movseq.w	lr, r0, lsr #1
 8000ce2:	f150 0000 	adcs.w	r0, r0, #0
 8000ce6:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000cea:	bd70      	pop	{r4, r5, r6, pc}
 8000cec:	f006 4600 	and.w	r6, r6, #2147483648	; 0x80000000
 8000cf0:	ea46 0101 	orr.w	r1, r6, r1
 8000cf4:	ea40 0002 	orr.w	r0, r0, r2
 8000cf8:	ea81 0103 	eor.w	r1, r1, r3
 8000cfc:	ebb4 045c 	subs.w	r4, r4, ip, lsr #1
 8000d00:	bfc2      	ittt	gt
 8000d02:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000d06:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000d0a:	bd70      	popgt	{r4, r5, r6, pc}
 8000d0c:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000d10:	f04f 0e00 	mov.w	lr, #0
 8000d14:	3c01      	subs	r4, #1
 8000d16:	f300 80ab 	bgt.w	8000e70 <__aeabi_dmul+0x238>
 8000d1a:	f114 0f36 	cmn.w	r4, #54	; 0x36
 8000d1e:	bfde      	ittt	le
 8000d20:	2000      	movle	r0, #0
 8000d22:	f001 4100 	andle.w	r1, r1, #2147483648	; 0x80000000
 8000d26:	bd70      	pople	{r4, r5, r6, pc}
 8000d28:	f1c4 0400 	rsb	r4, r4, #0
 8000d2c:	3c20      	subs	r4, #32
 8000d2e:	da35      	bge.n	8000d9c <__aeabi_dmul+0x164>
 8000d30:	340c      	adds	r4, #12
 8000d32:	dc1b      	bgt.n	8000d6c <__aeabi_dmul+0x134>
 8000d34:	f104 0414 	add.w	r4, r4, #20
 8000d38:	f1c4 0520 	rsb	r5, r4, #32
 8000d3c:	fa00 f305 	lsl.w	r3, r0, r5
 8000d40:	fa20 f004 	lsr.w	r0, r0, r4
 8000d44:	fa01 f205 	lsl.w	r2, r1, r5
 8000d48:	ea40 0002 	orr.w	r0, r0, r2
 8000d4c:	f001 4200 	and.w	r2, r1, #2147483648	; 0x80000000
 8000d50:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8000d54:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000d58:	fa21 f604 	lsr.w	r6, r1, r4
 8000d5c:	eb42 0106 	adc.w	r1, r2, r6
 8000d60:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000d64:	bf08      	it	eq
 8000d66:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000d6a:	bd70      	pop	{r4, r5, r6, pc}
 8000d6c:	f1c4 040c 	rsb	r4, r4, #12
 8000d70:	f1c4 0520 	rsb	r5, r4, #32
 8000d74:	fa00 f304 	lsl.w	r3, r0, r4
 8000d78:	fa20 f005 	lsr.w	r0, r0, r5
 8000d7c:	fa01 f204 	lsl.w	r2, r1, r4
 8000d80:	ea40 0002 	orr.w	r0, r0, r2
 8000d84:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000d88:	eb10 70d3 	adds.w	r0, r0, r3, lsr #31
 8000d8c:	f141 0100 	adc.w	r1, r1, #0
 8000d90:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000d94:	bf08      	it	eq
 8000d96:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000d9a:	bd70      	pop	{r4, r5, r6, pc}
 8000d9c:	f1c4 0520 	rsb	r5, r4, #32
 8000da0:	fa00 f205 	lsl.w	r2, r0, r5
 8000da4:	ea4e 0e02 	orr.w	lr, lr, r2
 8000da8:	fa20 f304 	lsr.w	r3, r0, r4
 8000dac:	fa01 f205 	lsl.w	r2, r1, r5
 8000db0:	ea43 0302 	orr.w	r3, r3, r2
 8000db4:	fa21 f004 	lsr.w	r0, r1, r4
 8000db8:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000dbc:	fa21 f204 	lsr.w	r2, r1, r4
 8000dc0:	ea20 0002 	bic.w	r0, r0, r2
 8000dc4:	eb00 70d3 	add.w	r0, r0, r3, lsr #31
 8000dc8:	ea5e 0e43 	orrs.w	lr, lr, r3, lsl #1
 8000dcc:	bf08      	it	eq
 8000dce:	ea20 70d3 	biceq.w	r0, r0, r3, lsr #31
 8000dd2:	bd70      	pop	{r4, r5, r6, pc}
 8000dd4:	f094 0f00 	teq	r4, #0
 8000dd8:	d10f      	bne.n	8000dfa <__aeabi_dmul+0x1c2>
 8000dda:	f001 4600 	and.w	r6, r1, #2147483648	; 0x80000000
 8000dde:	0040      	lsls	r0, r0, #1
 8000de0:	eb41 0101 	adc.w	r1, r1, r1
 8000de4:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000de8:	bf08      	it	eq
 8000dea:	3c01      	subeq	r4, #1
 8000dec:	d0f7      	beq.n	8000dde <__aeabi_dmul+0x1a6>
 8000dee:	ea41 0106 	orr.w	r1, r1, r6
 8000df2:	f095 0f00 	teq	r5, #0
 8000df6:	bf18      	it	ne
 8000df8:	4770      	bxne	lr
 8000dfa:	f003 4600 	and.w	r6, r3, #2147483648	; 0x80000000
 8000dfe:	0052      	lsls	r2, r2, #1
 8000e00:	eb43 0303 	adc.w	r3, r3, r3
 8000e04:	f413 1f80 	tst.w	r3, #1048576	; 0x100000
 8000e08:	bf08      	it	eq
 8000e0a:	3d01      	subeq	r5, #1
 8000e0c:	d0f7      	beq.n	8000dfe <__aeabi_dmul+0x1c6>
 8000e0e:	ea43 0306 	orr.w	r3, r3, r6
 8000e12:	4770      	bx	lr
 8000e14:	ea94 0f0c 	teq	r4, ip
 8000e18:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000e1c:	bf18      	it	ne
 8000e1e:	ea95 0f0c 	teqne	r5, ip
 8000e22:	d00c      	beq.n	8000e3e <__aeabi_dmul+0x206>
 8000e24:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000e28:	bf18      	it	ne
 8000e2a:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000e2e:	d1d1      	bne.n	8000dd4 <__aeabi_dmul+0x19c>
 8000e30:	ea81 0103 	eor.w	r1, r1, r3
 8000e34:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000e38:	f04f 0000 	mov.w	r0, #0
 8000e3c:	bd70      	pop	{r4, r5, r6, pc}
 8000e3e:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8000e42:	bf06      	itte	eq
 8000e44:	4610      	moveq	r0, r2
 8000e46:	4619      	moveq	r1, r3
 8000e48:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8000e4c:	d019      	beq.n	8000e82 <__aeabi_dmul+0x24a>
 8000e4e:	ea94 0f0c 	teq	r4, ip
 8000e52:	d102      	bne.n	8000e5a <__aeabi_dmul+0x222>
 8000e54:	ea50 3601 	orrs.w	r6, r0, r1, lsl #12
 8000e58:	d113      	bne.n	8000e82 <__aeabi_dmul+0x24a>
 8000e5a:	ea95 0f0c 	teq	r5, ip
 8000e5e:	d105      	bne.n	8000e6c <__aeabi_dmul+0x234>
 8000e60:	ea52 3603 	orrs.w	r6, r2, r3, lsl #12
 8000e64:	bf1c      	itt	ne
 8000e66:	4610      	movne	r0, r2
 8000e68:	4619      	movne	r1, r3
 8000e6a:	d10a      	bne.n	8000e82 <__aeabi_dmul+0x24a>
 8000e6c:	ea81 0103 	eor.w	r1, r1, r3
 8000e70:	f001 4100 	and.w	r1, r1, #2147483648	; 0x80000000
 8000e74:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000e78:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 8000e7c:	f04f 0000 	mov.w	r0, #0
 8000e80:	bd70      	pop	{r4, r5, r6, pc}
 8000e82:	f041 41fe 	orr.w	r1, r1, #2130706432	; 0x7f000000
 8000e86:	f441 0178 	orr.w	r1, r1, #16252928	; 0xf80000
 8000e8a:	bd70      	pop	{r4, r5, r6, pc}

08000e8c <__aeabi_ddiv>:
 8000e8c:	b570      	push	{r4, r5, r6, lr}
 8000e8e:	f04f 0cff 	mov.w	ip, #255	; 0xff
 8000e92:	f44c 6ce0 	orr.w	ip, ip, #1792	; 0x700
 8000e96:	ea1c 5411 	ands.w	r4, ip, r1, lsr #20
 8000e9a:	bf1d      	ittte	ne
 8000e9c:	ea1c 5513 	andsne.w	r5, ip, r3, lsr #20
 8000ea0:	ea94 0f0c 	teqne	r4, ip
 8000ea4:	ea95 0f0c 	teqne	r5, ip
 8000ea8:	f000 f8a7 	bleq	8000ffa <__aeabi_ddiv+0x16e>
 8000eac:	eba4 0405 	sub.w	r4, r4, r5
 8000eb0:	ea81 0e03 	eor.w	lr, r1, r3
 8000eb4:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8000eb8:	ea4f 3101 	mov.w	r1, r1, lsl #12
 8000ebc:	f000 8088 	beq.w	8000fd0 <__aeabi_ddiv+0x144>
 8000ec0:	ea4f 3303 	mov.w	r3, r3, lsl #12
 8000ec4:	f04f 5580 	mov.w	r5, #268435456	; 0x10000000
 8000ec8:	ea45 1313 	orr.w	r3, r5, r3, lsr #4
 8000ecc:	ea43 6312 	orr.w	r3, r3, r2, lsr #24
 8000ed0:	ea4f 2202 	mov.w	r2, r2, lsl #8
 8000ed4:	ea45 1511 	orr.w	r5, r5, r1, lsr #4
 8000ed8:	ea45 6510 	orr.w	r5, r5, r0, lsr #24
 8000edc:	ea4f 2600 	mov.w	r6, r0, lsl #8
 8000ee0:	f00e 4100 	and.w	r1, lr, #2147483648	; 0x80000000
 8000ee4:	429d      	cmp	r5, r3
 8000ee6:	bf08      	it	eq
 8000ee8:	4296      	cmpeq	r6, r2
 8000eea:	f144 04fd 	adc.w	r4, r4, #253	; 0xfd
 8000eee:	f504 7440 	add.w	r4, r4, #768	; 0x300
 8000ef2:	d202      	bcs.n	8000efa <__aeabi_ddiv+0x6e>
 8000ef4:	085b      	lsrs	r3, r3, #1
 8000ef6:	ea4f 0232 	mov.w	r2, r2, rrx
 8000efa:	1ab6      	subs	r6, r6, r2
 8000efc:	eb65 0503 	sbc.w	r5, r5, r3
 8000f00:	085b      	lsrs	r3, r3, #1
 8000f02:	ea4f 0232 	mov.w	r2, r2, rrx
 8000f06:	f44f 1080 	mov.w	r0, #1048576	; 0x100000
 8000f0a:	f44f 2c00 	mov.w	ip, #524288	; 0x80000
 8000f0e:	ebb6 0e02 	subs.w	lr, r6, r2
 8000f12:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000f16:	bf22      	ittt	cs
 8000f18:	1ab6      	subcs	r6, r6, r2
 8000f1a:	4675      	movcs	r5, lr
 8000f1c:	ea40 000c 	orrcs.w	r0, r0, ip
 8000f20:	085b      	lsrs	r3, r3, #1
 8000f22:	ea4f 0232 	mov.w	r2, r2, rrx
 8000f26:	ebb6 0e02 	subs.w	lr, r6, r2
 8000f2a:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000f2e:	bf22      	ittt	cs
 8000f30:	1ab6      	subcs	r6, r6, r2
 8000f32:	4675      	movcs	r5, lr
 8000f34:	ea40 005c 	orrcs.w	r0, r0, ip, lsr #1
 8000f38:	085b      	lsrs	r3, r3, #1
 8000f3a:	ea4f 0232 	mov.w	r2, r2, rrx
 8000f3e:	ebb6 0e02 	subs.w	lr, r6, r2
 8000f42:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000f46:	bf22      	ittt	cs
 8000f48:	1ab6      	subcs	r6, r6, r2
 8000f4a:	4675      	movcs	r5, lr
 8000f4c:	ea40 009c 	orrcs.w	r0, r0, ip, lsr #2
 8000f50:	085b      	lsrs	r3, r3, #1
 8000f52:	ea4f 0232 	mov.w	r2, r2, rrx
 8000f56:	ebb6 0e02 	subs.w	lr, r6, r2
 8000f5a:	eb75 0e03 	sbcs.w	lr, r5, r3
 8000f5e:	bf22      	ittt	cs
 8000f60:	1ab6      	subcs	r6, r6, r2
 8000f62:	4675      	movcs	r5, lr
 8000f64:	ea40 00dc 	orrcs.w	r0, r0, ip, lsr #3
 8000f68:	ea55 0e06 	orrs.w	lr, r5, r6
 8000f6c:	d018      	beq.n	8000fa0 <__aeabi_ddiv+0x114>
 8000f6e:	ea4f 1505 	mov.w	r5, r5, lsl #4
 8000f72:	ea45 7516 	orr.w	r5, r5, r6, lsr #28
 8000f76:	ea4f 1606 	mov.w	r6, r6, lsl #4
 8000f7a:	ea4f 03c3 	mov.w	r3, r3, lsl #3
 8000f7e:	ea43 7352 	orr.w	r3, r3, r2, lsr #29
 8000f82:	ea4f 02c2 	mov.w	r2, r2, lsl #3
 8000f86:	ea5f 1c1c 	movs.w	ip, ip, lsr #4
 8000f8a:	d1c0      	bne.n	8000f0e <__aeabi_ddiv+0x82>
 8000f8c:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000f90:	d10b      	bne.n	8000faa <__aeabi_ddiv+0x11e>
 8000f92:	ea41 0100 	orr.w	r1, r1, r0
 8000f96:	f04f 0000 	mov.w	r0, #0
 8000f9a:	f04f 4c00 	mov.w	ip, #2147483648	; 0x80000000
 8000f9e:	e7b6      	b.n	8000f0e <__aeabi_ddiv+0x82>
 8000fa0:	f411 1f80 	tst.w	r1, #1048576	; 0x100000
 8000fa4:	bf04      	itt	eq
 8000fa6:	4301      	orreq	r1, r0
 8000fa8:	2000      	moveq	r0, #0
 8000faa:	f1b4 0cfd 	subs.w	ip, r4, #253	; 0xfd
 8000fae:	bf88      	it	hi
 8000fb0:	f5bc 6fe0 	cmphi.w	ip, #1792	; 0x700
 8000fb4:	f63f aeaf 	bhi.w	8000d16 <__aeabi_dmul+0xde>
 8000fb8:	ebb5 0c03 	subs.w	ip, r5, r3
 8000fbc:	bf04      	itt	eq
 8000fbe:	ebb6 0c02 	subseq.w	ip, r6, r2
 8000fc2:	ea5f 0c50 	movseq.w	ip, r0, lsr #1
 8000fc6:	f150 0000 	adcs.w	r0, r0, #0
 8000fca:	eb41 5104 	adc.w	r1, r1, r4, lsl #20
 8000fce:	bd70      	pop	{r4, r5, r6, pc}
 8000fd0:	f00e 4e00 	and.w	lr, lr, #2147483648	; 0x80000000
 8000fd4:	ea4e 3111 	orr.w	r1, lr, r1, lsr #12
 8000fd8:	eb14 045c 	adds.w	r4, r4, ip, lsr #1
 8000fdc:	bfc2      	ittt	gt
 8000fde:	ebd4 050c 	rsbsgt	r5, r4, ip
 8000fe2:	ea41 5104 	orrgt.w	r1, r1, r4, lsl #20
 8000fe6:	bd70      	popgt	{r4, r5, r6, pc}
 8000fe8:	f441 1180 	orr.w	r1, r1, #1048576	; 0x100000
 8000fec:	f04f 0e00 	mov.w	lr, #0
 8000ff0:	3c01      	subs	r4, #1
 8000ff2:	e690      	b.n	8000d16 <__aeabi_dmul+0xde>
 8000ff4:	ea45 0e06 	orr.w	lr, r5, r6
 8000ff8:	e68d      	b.n	8000d16 <__aeabi_dmul+0xde>
 8000ffa:	ea0c 5513 	and.w	r5, ip, r3, lsr #20
 8000ffe:	ea94 0f0c 	teq	r4, ip
 8001002:	bf08      	it	eq
 8001004:	ea95 0f0c 	teqeq	r5, ip
 8001008:	f43f af3b 	beq.w	8000e82 <__aeabi_dmul+0x24a>
 800100c:	ea94 0f0c 	teq	r4, ip
 8001010:	d10a      	bne.n	8001028 <__aeabi_ddiv+0x19c>
 8001012:	ea50 3401 	orrs.w	r4, r0, r1, lsl #12
 8001016:	f47f af34 	bne.w	8000e82 <__aeabi_dmul+0x24a>
 800101a:	ea95 0f0c 	teq	r5, ip
 800101e:	f47f af25 	bne.w	8000e6c <__aeabi_dmul+0x234>
 8001022:	4610      	mov	r0, r2
 8001024:	4619      	mov	r1, r3
 8001026:	e72c      	b.n	8000e82 <__aeabi_dmul+0x24a>
 8001028:	ea95 0f0c 	teq	r5, ip
 800102c:	d106      	bne.n	800103c <__aeabi_ddiv+0x1b0>
 800102e:	ea52 3503 	orrs.w	r5, r2, r3, lsl #12
 8001032:	f43f aefd 	beq.w	8000e30 <__aeabi_dmul+0x1f8>
 8001036:	4610      	mov	r0, r2
 8001038:	4619      	mov	r1, r3
 800103a:	e722      	b.n	8000e82 <__aeabi_dmul+0x24a>
 800103c:	ea50 0641 	orrs.w	r6, r0, r1, lsl #1
 8001040:	bf18      	it	ne
 8001042:	ea52 0643 	orrsne.w	r6, r2, r3, lsl #1
 8001046:	f47f aec5 	bne.w	8000dd4 <__aeabi_dmul+0x19c>
 800104a:	ea50 0441 	orrs.w	r4, r0, r1, lsl #1
 800104e:	f47f af0d 	bne.w	8000e6c <__aeabi_dmul+0x234>
 8001052:	ea52 0543 	orrs.w	r5, r2, r3, lsl #1
 8001056:	f47f aeeb 	bne.w	8000e30 <__aeabi_dmul+0x1f8>
 800105a:	e712      	b.n	8000e82 <__aeabi_dmul+0x24a>

0800105c <__gedf2>:
 800105c:	f04f 3cff 	mov.w	ip, #4294967295	; 0xffffffff
 8001060:	e006      	b.n	8001070 <__cmpdf2+0x4>
 8001062:	bf00      	nop

08001064 <__ledf2>:
 8001064:	f04f 0c01 	mov.w	ip, #1
 8001068:	e002      	b.n	8001070 <__cmpdf2+0x4>
 800106a:	bf00      	nop

0800106c <__cmpdf2>:
 800106c:	f04f 0c01 	mov.w	ip, #1
 8001070:	f84d cd04 	str.w	ip, [sp, #-4]!
 8001074:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001078:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 800107c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001080:	bf18      	it	ne
 8001082:	ea7f 5c6c 	mvnsne.w	ip, ip, asr #21
 8001086:	d01b      	beq.n	80010c0 <__cmpdf2+0x54>
 8001088:	b001      	add	sp, #4
 800108a:	ea50 0c41 	orrs.w	ip, r0, r1, lsl #1
 800108e:	bf0c      	ite	eq
 8001090:	ea52 0c43 	orrseq.w	ip, r2, r3, lsl #1
 8001094:	ea91 0f03 	teqne	r1, r3
 8001098:	bf02      	ittt	eq
 800109a:	ea90 0f02 	teqeq	r0, r2
 800109e:	2000      	moveq	r0, #0
 80010a0:	4770      	bxeq	lr
 80010a2:	f110 0f00 	cmn.w	r0, #0
 80010a6:	ea91 0f03 	teq	r1, r3
 80010aa:	bf58      	it	pl
 80010ac:	4299      	cmppl	r1, r3
 80010ae:	bf08      	it	eq
 80010b0:	4290      	cmpeq	r0, r2
 80010b2:	bf2c      	ite	cs
 80010b4:	17d8      	asrcs	r0, r3, #31
 80010b6:	ea6f 70e3 	mvncc.w	r0, r3, asr #31
 80010ba:	f040 0001 	orr.w	r0, r0, #1
 80010be:	4770      	bx	lr
 80010c0:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 80010c4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80010c8:	d102      	bne.n	80010d0 <__cmpdf2+0x64>
 80010ca:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 80010ce:	d107      	bne.n	80010e0 <__cmpdf2+0x74>
 80010d0:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 80010d4:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 80010d8:	d1d6      	bne.n	8001088 <__cmpdf2+0x1c>
 80010da:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 80010de:	d0d3      	beq.n	8001088 <__cmpdf2+0x1c>
 80010e0:	f85d 0b04 	ldr.w	r0, [sp], #4
 80010e4:	4770      	bx	lr
 80010e6:	bf00      	nop

080010e8 <__aeabi_cdrcmple>:
 80010e8:	4684      	mov	ip, r0
 80010ea:	4610      	mov	r0, r2
 80010ec:	4662      	mov	r2, ip
 80010ee:	468c      	mov	ip, r1
 80010f0:	4619      	mov	r1, r3
 80010f2:	4663      	mov	r3, ip
 80010f4:	e000      	b.n	80010f8 <__aeabi_cdcmpeq>
 80010f6:	bf00      	nop

080010f8 <__aeabi_cdcmpeq>:
 80010f8:	b501      	push	{r0, lr}
 80010fa:	f7ff ffb7 	bl	800106c <__cmpdf2>
 80010fe:	2800      	cmp	r0, #0
 8001100:	bf48      	it	mi
 8001102:	f110 0f00 	cmnmi.w	r0, #0
 8001106:	bd01      	pop	{r0, pc}

08001108 <__aeabi_dcmpeq>:
 8001108:	f84d ed08 	str.w	lr, [sp, #-8]!
 800110c:	f7ff fff4 	bl	80010f8 <__aeabi_cdcmpeq>
 8001110:	bf0c      	ite	eq
 8001112:	2001      	moveq	r0, #1
 8001114:	2000      	movne	r0, #0
 8001116:	f85d fb08 	ldr.w	pc, [sp], #8
 800111a:	bf00      	nop

0800111c <__aeabi_dcmplt>:
 800111c:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001120:	f7ff ffea 	bl	80010f8 <__aeabi_cdcmpeq>
 8001124:	bf34      	ite	cc
 8001126:	2001      	movcc	r0, #1
 8001128:	2000      	movcs	r0, #0
 800112a:	f85d fb08 	ldr.w	pc, [sp], #8
 800112e:	bf00      	nop

08001130 <__aeabi_dcmple>:
 8001130:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001134:	f7ff ffe0 	bl	80010f8 <__aeabi_cdcmpeq>
 8001138:	bf94      	ite	ls
 800113a:	2001      	movls	r0, #1
 800113c:	2000      	movhi	r0, #0
 800113e:	f85d fb08 	ldr.w	pc, [sp], #8
 8001142:	bf00      	nop

08001144 <__aeabi_dcmpge>:
 8001144:	f84d ed08 	str.w	lr, [sp, #-8]!
 8001148:	f7ff ffce 	bl	80010e8 <__aeabi_cdrcmple>
 800114c:	bf94      	ite	ls
 800114e:	2001      	movls	r0, #1
 8001150:	2000      	movhi	r0, #0
 8001152:	f85d fb08 	ldr.w	pc, [sp], #8
 8001156:	bf00      	nop

08001158 <__aeabi_dcmpgt>:
 8001158:	f84d ed08 	str.w	lr, [sp, #-8]!
 800115c:	f7ff ffc4 	bl	80010e8 <__aeabi_cdrcmple>
 8001160:	bf34      	ite	cc
 8001162:	2001      	movcc	r0, #1
 8001164:	2000      	movcs	r0, #0
 8001166:	f85d fb08 	ldr.w	pc, [sp], #8
 800116a:	bf00      	nop

0800116c <__aeabi_dcmpun>:
 800116c:	ea4f 0c41 	mov.w	ip, r1, lsl #1
 8001170:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001174:	d102      	bne.n	800117c <__aeabi_dcmpun+0x10>
 8001176:	ea50 3c01 	orrs.w	ip, r0, r1, lsl #12
 800117a:	d10a      	bne.n	8001192 <__aeabi_dcmpun+0x26>
 800117c:	ea4f 0c43 	mov.w	ip, r3, lsl #1
 8001180:	ea7f 5c6c 	mvns.w	ip, ip, asr #21
 8001184:	d102      	bne.n	800118c <__aeabi_dcmpun+0x20>
 8001186:	ea52 3c03 	orrs.w	ip, r2, r3, lsl #12
 800118a:	d102      	bne.n	8001192 <__aeabi_dcmpun+0x26>
 800118c:	f04f 0000 	mov.w	r0, #0
 8001190:	4770      	bx	lr
 8001192:	f04f 0001 	mov.w	r0, #1
 8001196:	4770      	bx	lr

08001198 <__aeabi_d2iz>:
 8001198:	ea4f 0241 	mov.w	r2, r1, lsl #1
 800119c:	f512 1200 	adds.w	r2, r2, #2097152	; 0x200000
 80011a0:	d215      	bcs.n	80011ce <__aeabi_d2iz+0x36>
 80011a2:	d511      	bpl.n	80011c8 <__aeabi_d2iz+0x30>
 80011a4:	f46f 7378 	mvn.w	r3, #992	; 0x3e0
 80011a8:	ebb3 5262 	subs.w	r2, r3, r2, asr #21
 80011ac:	d912      	bls.n	80011d4 <__aeabi_d2iz+0x3c>
 80011ae:	ea4f 23c1 	mov.w	r3, r1, lsl #11
 80011b2:	f043 4300 	orr.w	r3, r3, #2147483648	; 0x80000000
 80011b6:	ea43 5350 	orr.w	r3, r3, r0, lsr #21
 80011ba:	f011 4f00 	tst.w	r1, #2147483648	; 0x80000000
 80011be:	fa23 f002 	lsr.w	r0, r3, r2
 80011c2:	bf18      	it	ne
 80011c4:	4240      	negne	r0, r0
 80011c6:	4770      	bx	lr
 80011c8:	f04f 0000 	mov.w	r0, #0
 80011cc:	4770      	bx	lr
 80011ce:	ea50 3001 	orrs.w	r0, r0, r1, lsl #12
 80011d2:	d105      	bne.n	80011e0 <__aeabi_d2iz+0x48>
 80011d4:	f011 4000 	ands.w	r0, r1, #2147483648	; 0x80000000
 80011d8:	bf08      	it	eq
 80011da:	f06f 4000 	mvneq.w	r0, #2147483648	; 0x80000000
 80011de:	4770      	bx	lr
 80011e0:	f04f 0000 	mov.w	r0, #0
 80011e4:	4770      	bx	lr
 80011e6:	bf00      	nop

080011e8 <HAL_Init>:
 80011e8:	b580      	push	{r7, lr}
 80011ea:	466f      	mov	r7, sp
 80011ec:	2003      	movs	r0, #3
 80011ee:	f000 f819 	bl	8001224 <HAL_NVIC_SetPriorityGrouping>
 80011f2:	200f      	movs	r0, #15
 80011f4:	f000 fb84 	bl	8001900 <HAL_InitTick>
 80011f8:	2800      	cmp	r0, #0
 80011fa:	bf1c      	itt	ne
 80011fc:	2001      	movne	r0, #1
 80011fe:	bd80      	popne	{r7, pc}
 8001200:	f000 f94b 	bl	800149a <HAL_MspInit>
 8001204:	2000      	movs	r0, #0
 8001206:	bd80      	pop	{r7, pc}

08001208 <HAL_IncTick>:
 8001208:	f640 20a8 	movw	r0, #2728	; 0xaa8
 800120c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001210:	6801      	ldr	r1, [r0, #0]
 8001212:	3101      	adds	r1, #1
 8001214:	6001      	str	r1, [r0, #0]
 8001216:	4770      	bx	lr

08001218 <HAL_GetTick>:
 8001218:	f640 20a8 	movw	r0, #2728	; 0xaa8
 800121c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001220:	6800      	ldr	r0, [r0, #0]
 8001222:	4770      	bx	lr

08001224 <HAL_NVIC_SetPriorityGrouping>:
 8001224:	f64e 510c 	movw	r1, #60684	; 0xed0c
 8001228:	f64f 03ff 	movw	r3, #63743	; 0xf8ff
 800122c:	f2ce 0100 	movt	r1, #57344	; 0xe000
 8001230:	680a      	ldr	r2, [r1, #0]
 8001232:	401a      	ands	r2, r3
 8001234:	f360 220a 	bfi	r2, r0, #8, #3
 8001238:	f042 6080 	orr.w	r0, r2, #67108864	; 0x4000000
 800123c:	f040 70fd 	orr.w	r0, r0, #33161216	; 0x1fa0000
 8001240:	6008      	str	r0, [r1, #0]
 8001242:	4770      	bx	lr

08001244 <HAL_NVIC_SetPriority>:
 8001244:	b580      	push	{r7, lr}
 8001246:	466f      	mov	r7, sp
 8001248:	f100 4360 	add.w	r3, r0, #3758096384	; 0xe0000000
 800124c:	f64e 5e0c 	movw	lr, #60684	; 0xed0c
 8001250:	2800      	cmp	r0, #0
 8001252:	f503 4c64 	add.w	ip, r3, #58368	; 0xe400
 8001256:	f000 030f 	and.w	r3, r0, #15
 800125a:	f2ce 0e00 	movt	lr, #57344	; 0xe000
 800125e:	f1a3 0304 	sub.w	r3, r3, #4
 8001262:	4473      	add	r3, lr
 8001264:	bfb8      	it	lt
 8001266:	f103 0c0c 	addlt.w	ip, r3, #12
 800126a:	f8de 0000 	ldr.w	r0, [lr]
 800126e:	f3c0 2002 	ubfx	r0, r0, #8, #3
 8001272:	f100 0e04 	add.w	lr, r0, #4
 8001276:	1ec3      	subs	r3, r0, #3
 8001278:	f080 0007 	eor.w	r0, r0, #7
 800127c:	f1be 0f07 	cmp.w	lr, #7
 8001280:	f04f 0e01 	mov.w	lr, #1
 8001284:	bf38      	it	cc
 8001286:	2300      	movcc	r3, #0
 8001288:	2804      	cmp	r0, #4
 800128a:	bf28      	it	cs
 800128c:	2004      	movcs	r0, #4
 800128e:	fa0e f000 	lsl.w	r0, lr, r0
 8001292:	3801      	subs	r0, #1
 8001294:	4008      	ands	r0, r1
 8001296:	fa0e f103 	lsl.w	r1, lr, r3
 800129a:	310f      	adds	r1, #15
 800129c:	4098      	lsls	r0, r3
 800129e:	4011      	ands	r1, r2
 80012a0:	4308      	orrs	r0, r1
 80012a2:	0100      	lsls	r0, r0, #4
 80012a4:	f88c 0000 	strb.w	r0, [ip]
 80012a8:	bd80      	pop	{r7, pc}

080012aa <HAL_NVIC_EnableIRQ>:
 80012aa:	f000 011f 	and.w	r1, r0, #31
 80012ae:	2201      	movs	r2, #1
 80012b0:	0940      	lsrs	r0, r0, #5
 80012b2:	fa02 f101 	lsl.w	r1, r2, r1
 80012b6:	f24e 1200 	movw	r2, #57600	; 0xe100
 80012ba:	f2ce 0200 	movt	r2, #57344	; 0xe000
 80012be:	f842 1020 	str.w	r1, [r2, r0, lsl #2]
 80012c2:	4770      	bx	lr

080012c4 <HAL_SYSTICK_IRQHandler>:
 80012c4:	f000 b800 	b.w	80012c8 <HAL_SYSTICK_Callback>

080012c8 <HAL_SYSTICK_Callback>:
 80012c8:	4770      	bx	lr

080012ca <HAL_GPIO_Init>:
 80012ca:	b5f0      	push	{r4, r5, r6, r7, lr}
 80012cc:	af03      	add	r7, sp, #12
 80012ce:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80012d2:	b082      	sub	sp, #8
 80012d4:	680e      	ldr	r6, [r1, #0]
 80012d6:	2e00      	cmp	r6, #0
 80012d8:	f000 80db 	beq.w	8001492 <HAL_GPIO_Init+0x1c8>
 80012dc:	f641 0200 	movw	r2, #6144	; 0x1800
 80012e0:	2507      	movs	r5, #7
 80012e2:	f04f 0801 	mov.w	r8, #1
 80012e6:	f6c4 0200 	movt	r2, #18432	; 0x4800
 80012ea:	4290      	cmp	r0, r2
 80012ec:	f100 4238 	add.w	r2, r0, #3087007744	; 0xb8000000
 80012f0:	ea4f 23b2 	mov.w	r3, r2, ror #10
 80012f4:	bf08      	it	eq
 80012f6:	2506      	moveq	r5, #6
 80012f8:	2b06      	cmp	r3, #6
 80012fa:	bf38      	it	cc
 80012fc:	ea4f 25b2 	movcc.w	r5, r2, ror #10
 8001300:	2200      	movs	r2, #0
 8001302:	9500      	str	r5, [sp, #0]
 8001304:	2500      	movs	r5, #0
 8001306:	f1a8 0a01 	sub.w	sl, r8, #1
 800130a:	2301      	movs	r3, #1
 800130c:	fa03 fb0a 	lsl.w	fp, r3, sl
 8001310:	ea16 090b 	ands.w	r9, r6, fp
 8001314:	f000 80b4 	beq.w	8001480 <HAL_GPIO_Init+0x1b6>
 8001318:	f8d1 e004 	ldr.w	lr, [r1, #4]
 800131c:	f04e 0610 	orr.w	r6, lr, #16
 8001320:	2e12      	cmp	r6, #18
 8001322:	d115      	bne.n	8001350 <HAL_GPIO_Init+0x86>
 8001324:	f005 061c 	and.w	r6, r5, #28
 8001328:	230f      	movs	r3, #15
 800132a:	fa03 fc06 	lsl.w	ip, r3, r6
 800132e:	f64f 73fc 	movw	r3, #65532	; 0xfffc
 8001332:	f6c7 73ff 	movt	r3, #32767	; 0x7fff
 8001336:	ea03 045a 	and.w	r4, r3, sl, lsr #1
 800133a:	4404      	add	r4, r0
 800133c:	6a23      	ldr	r3, [r4, #32]
 800133e:	ea23 0c0c 	bic.w	ip, r3, ip
 8001342:	690b      	ldr	r3, [r1, #16]
 8001344:	40b3      	lsls	r3, r6
 8001346:	ea43 030c 	orr.w	r3, r3, ip
 800134a:	6223      	str	r3, [r4, #32]
 800134c:	f8d1 e004 	ldr.w	lr, [r1, #4]
 8001350:	6806      	ldr	r6, [r0, #0]
 8001352:	2403      	movs	r4, #3
 8001354:	f00e 0c03 	and.w	ip, lr, #3
 8001358:	f1be 0f12 	cmp.w	lr, #18
 800135c:	fa04 f402 	lsl.w	r4, r4, r2
 8001360:	fa0c f302 	lsl.w	r3, ip, r2
 8001364:	ea26 0604 	bic.w	r6, r6, r4
 8001368:	ea43 0306 	orr.w	r3, r3, r6
 800136c:	ea6f 0604 	mvn.w	r6, r4
 8001370:	6003      	str	r3, [r0, #0]
 8001372:	d816      	bhi.n	80013a2 <HAL_GPIO_Init+0xd8>
 8001374:	2301      	movs	r3, #1
 8001376:	fa03 f30e 	lsl.w	r3, r3, lr
 800137a:	f013 1f06 	tst.w	r3, #393222	; 0x60006
 800137e:	bf1f      	itttt	ne
 8001380:	6883      	ldrne	r3, [r0, #8]
 8001382:	4033      	andne	r3, r6
 8001384:	68cc      	ldrne	r4, [r1, #12]
 8001386:	4094      	lslne	r4, r2
 8001388:	bf1f      	itttt	ne
 800138a:	4323      	orrne	r3, r4
 800138c:	6083      	strne	r3, [r0, #8]
 800138e:	f3ce 1300 	ubfxne	r3, lr, #4, #1
 8001392:	fa03 f30a 	lslne.w	r3, r3, sl
 8001396:	bf1f      	itttt	ne
 8001398:	6844      	ldrne	r4, [r0, #4]
 800139a:	ea24 040b 	bicne.w	r4, r4, fp
 800139e:	4323      	orrne	r3, r4
 80013a0:	6043      	strne	r3, [r0, #4]
 80013a2:	f1bc 0f03 	cmp.w	ip, #3
 80013a6:	d108      	bne.n	80013ba <HAL_GPIO_Init+0xf0>
 80013a8:	f3ce 03c0 	ubfx	r3, lr, #3, #1
 80013ac:	6ac4      	ldr	r4, [r0, #44]	; 0x2c
 80013ae:	fa03 f30a 	lsl.w	r3, r3, sl
 80013b2:	ea24 040b 	bic.w	r4, r4, fp
 80013b6:	4323      	orrs	r3, r4
 80013b8:	62c3      	str	r3, [r0, #44]	; 0x2c
 80013ba:	68c3      	ldr	r3, [r0, #12]
 80013bc:	4033      	ands	r3, r6
 80013be:	688e      	ldr	r6, [r1, #8]
 80013c0:	4096      	lsls	r6, r2
 80013c2:	4333      	orrs	r3, r6
 80013c4:	60c3      	str	r3, [r0, #12]
 80013c6:	ea5f 03ce 	movs.w	r3, lr, lsl #3
 80013ca:	d559      	bpl.n	8001480 <HAL_GPIO_Init+0x1b6>
 80013cc:	f241 0360 	movw	r3, #4192	; 0x1060
 80013d0:	f005 040c 	and.w	r4, r5, #12
 80013d4:	f2c4 0302 	movt	r3, #16386	; 0x4002
 80013d8:	461e      	mov	r6, r3
 80013da:	6833      	ldr	r3, [r6, #0]
 80013dc:	f043 0301 	orr.w	r3, r3, #1
 80013e0:	6033      	str	r3, [r6, #0]
 80013e2:	6833      	ldr	r3, [r6, #0]
 80013e4:	f240 4600 	movw	r6, #1024	; 0x400
 80013e8:	f2c4 0601 	movt	r6, #16385	; 0x4001
 80013ec:	46b6      	mov	lr, r6
 80013ee:	f003 0301 	and.w	r3, r3, #1
 80013f2:	9301      	str	r3, [sp, #4]
 80013f4:	f02a 0303 	bic.w	r3, sl, #3
 80013f8:	9e01      	ldr	r6, [sp, #4]
 80013fa:	4473      	add	r3, lr
 80013fc:	f64f 4608 	movw	r6, #64520	; 0xfc08
 8001400:	f6cf 76ff 	movt	r6, #65535	; 0xffff
 8001404:	46b2      	mov	sl, r6
 8001406:	260f      	movs	r6, #15
 8001408:	f853 c00a 	ldr.w	ip, [r3, sl]
 800140c:	40a6      	lsls	r6, r4
 800140e:	ea2c 0c06 	bic.w	ip, ip, r6
 8001412:	9e00      	ldr	r6, [sp, #0]
 8001414:	fa06 f404 	lsl.w	r4, r6, r4
 8001418:	ea4c 0604 	orr.w	r6, ip, r4
 800141c:	f843 600a 	str.w	r6, [r3, sl]
 8001420:	f8de 3000 	ldr.w	r3, [lr]
 8001424:	684e      	ldr	r6, [r1, #4]
 8001426:	ea23 0309 	bic.w	r3, r3, r9
 800142a:	f416 3f80 	tst.w	r6, #65536	; 0x10000
 800142e:	bf18      	it	ne
 8001430:	ea43 0309 	orrne.w	r3, r3, r9
 8001434:	f416 3f00 	tst.w	r6, #131072	; 0x20000
 8001438:	f8ce 3000 	str.w	r3, [lr]
 800143c:	f8de 3004 	ldr.w	r3, [lr, #4]
 8001440:	ea23 0309 	bic.w	r3, r3, r9
 8001444:	bf18      	it	ne
 8001446:	ea43 0309 	orrne.w	r3, r3, r9
 800144a:	f416 1f80 	tst.w	r6, #1048576	; 0x100000
 800144e:	f8ce 3004 	str.w	r3, [lr, #4]
 8001452:	f8de 3008 	ldr.w	r3, [lr, #8]
 8001456:	ea23 0309 	bic.w	r3, r3, r9
 800145a:	bf18      	it	ne
 800145c:	ea43 0309 	orrne.w	r3, r3, r9
 8001460:	f416 1f00 	tst.w	r6, #2097152	; 0x200000
 8001464:	f8ce 3008 	str.w	r3, [lr, #8]
 8001468:	f240 430c 	movw	r3, #1036	; 0x40c
 800146c:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001470:	461c      	mov	r4, r3
 8001472:	6823      	ldr	r3, [r4, #0]
 8001474:	ea23 0309 	bic.w	r3, r3, r9
 8001478:	bf18      	it	ne
 800147a:	ea43 0309 	orrne.w	r3, r3, r9
 800147e:	6023      	str	r3, [r4, #0]
 8001480:	680e      	ldr	r6, [r1, #0]
 8001482:	3202      	adds	r2, #2
 8001484:	3504      	adds	r5, #4
 8001486:	fa36 f308 	lsrs.w	r3, r6, r8
 800148a:	f108 0801 	add.w	r8, r8, #1
 800148e:	f47f af3a 	bne.w	8001306 <HAL_GPIO_Init+0x3c>
 8001492:	b002      	add	sp, #8
 8001494:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001498:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800149a <HAL_MspInit>:
 800149a:	4770      	bx	lr

0800149c <HAL_RCC_GetSysClockFreq>:
 800149c:	b580      	push	{r7, lr}
 800149e:	466f      	mov	r7, sp
 80014a0:	f241 010c 	movw	r1, #4108	; 0x100c
 80014a4:	f241 2e00 	movw	lr, #4608	; 0x1200
 80014a8:	f242 4c00 	movw	ip, #9216	; 0x2400
 80014ac:	f2c4 0102 	movt	r1, #16386	; 0x4002
 80014b0:	f2c0 0e7a 	movt	lr, #122	; 0x7a
 80014b4:	f2c0 0cf4 	movt	ip, #244	; 0xf4
 80014b8:	f851 2c04 	ldr.w	r2, [r1, #-4]
 80014bc:	6808      	ldr	r0, [r1, #0]
 80014be:	f012 030c 	ands.w	r3, r2, #12
 80014c2:	d005      	beq.n	80014d0 <HAL_RCC_GetSysClockFreq+0x34>
 80014c4:	2b0c      	cmp	r3, #12
 80014c6:	bf04      	itt	eq
 80014c8:	f000 0003 	andeq.w	r0, r0, #3
 80014cc:	2801      	cmpeq	r0, #1
 80014ce:	d118      	bne.n	8001502 <HAL_RCC_GetSysClockFreq+0x66>
 80014d0:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80014d4:	f010 0f08 	tst.w	r0, #8
 80014d8:	d103      	bne.n	80014e2 <HAL_RCC_GetSysClockFreq+0x46>
 80014da:	f8d1 0088 	ldr.w	r0, [r1, #136]	; 0x88
 80014de:	0a00      	lsrs	r0, r0, #8
 80014e0:	e002      	b.n	80014e8 <HAL_RCC_GetSysClockFreq+0x4c>
 80014e2:	f851 0c0c 	ldr.w	r0, [r1, #-12]
 80014e6:	0900      	lsrs	r0, r0, #4
 80014e8:	f249 721c 	movw	r2, #38684	; 0x971c
 80014ec:	f000 000f 	and.w	r0, r0, #15
 80014f0:	2b00      	cmp	r3, #0
 80014f2:	f6c0 0200 	movt	r2, #2048	; 0x800
 80014f6:	f852 2020 	ldr.w	r2, [r2, r0, lsl #2]
 80014fa:	4610      	mov	r0, r2
 80014fc:	bf18      	it	ne
 80014fe:	2000      	movne	r0, #0
 8001500:	e00b      	b.n	800151a <HAL_RCC_GetSysClockFreq+0x7e>
 8001502:	f003 000f 	and.w	r0, r3, #15
 8001506:	2804      	cmp	r0, #4
 8001508:	bf04      	itt	eq
 800150a:	4660      	moveq	r0, ip
 800150c:	bd80      	popeq	{r7, pc}
 800150e:	2808      	cmp	r0, #8
 8001510:	bf04      	itt	eq
 8001512:	4670      	moveq	r0, lr
 8001514:	bd80      	popeq	{r7, pc}
 8001516:	2000      	movs	r0, #0
 8001518:	2200      	movs	r2, #0
 800151a:	2b0c      	cmp	r3, #12
 800151c:	bf18      	it	ne
 800151e:	bd80      	popne	{r7, pc}
 8001520:	6808      	ldr	r0, [r1, #0]
 8001522:	f000 0303 	and.w	r3, r0, #3
 8001526:	6808      	ldr	r0, [r1, #0]
 8001528:	2b03      	cmp	r3, #3
 800152a:	f3c0 1002 	ubfx	r0, r0, #4, #3
 800152e:	f100 0001 	add.w	r0, r0, #1
 8001532:	d003      	beq.n	800153c <HAL_RCC_GetSysClockFreq+0xa0>
 8001534:	2b02      	cmp	r3, #2
 8001536:	46e6      	mov	lr, ip
 8001538:	bf18      	it	ne
 800153a:	4696      	movne	lr, r2
 800153c:	680a      	ldr	r2, [r1, #0]
 800153e:	fbbe f0f0 	udiv	r0, lr, r0
 8001542:	f3c2 2206 	ubfx	r2, r2, #8, #7
 8001546:	6809      	ldr	r1, [r1, #0]
 8001548:	4350      	muls	r0, r2
 800154a:	2202      	movs	r2, #2
 800154c:	f3c1 6141 	ubfx	r1, r1, #25, #2
 8001550:	eb02 0141 	add.w	r1, r2, r1, lsl #1
 8001554:	fbb0 f0f1 	udiv	r0, r0, r1
 8001558:	bd80      	pop	{r7, pc}

0800155a <HAL_RCC_GetPCLK1Freq>:
 800155a:	f240 0014 	movw	r0, #20
 800155e:	f241 0108 	movw	r1, #4104	; 0x1008
 8001562:	f249 7214 	movw	r2, #38676	; 0x9714
 8001566:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800156a:	f2c4 0102 	movt	r1, #16386	; 0x4002
 800156e:	f6c0 0200 	movt	r2, #2048	; 0x800
 8001572:	6800      	ldr	r0, [r0, #0]
 8001574:	6809      	ldr	r1, [r1, #0]
 8001576:	f3c1 2102 	ubfx	r1, r1, #8, #3
 800157a:	5c51      	ldrb	r1, [r2, r1]
 800157c:	f001 011f 	and.w	r1, r1, #31
 8001580:	40c8      	lsrs	r0, r1
 8001582:	4770      	bx	lr

08001584 <HAL_RCC_GetPCLK2Freq>:
 8001584:	f240 0014 	movw	r0, #20
 8001588:	f241 0108 	movw	r1, #4104	; 0x1008
 800158c:	f249 7214 	movw	r2, #38676	; 0x9714
 8001590:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001594:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8001598:	f6c0 0200 	movt	r2, #2048	; 0x800
 800159c:	6800      	ldr	r0, [r0, #0]
 800159e:	6809      	ldr	r1, [r1, #0]
 80015a0:	f3c1 21c2 	ubfx	r1, r1, #11, #3
 80015a4:	5c51      	ldrb	r1, [r2, r1]
 80015a6:	f001 011f 	and.w	r1, r1, #31
 80015aa:	40c8      	lsrs	r0, r1
 80015ac:	4770      	bx	lr

080015ae <HAL_RCC_GetClockConfig>:
 80015ae:	220f      	movs	r2, #15
 80015b0:	6002      	str	r2, [r0, #0]
 80015b2:	f241 0208 	movw	r2, #4104	; 0x1008
 80015b6:	f2c4 0202 	movt	r2, #16386	; 0x4002
 80015ba:	6813      	ldr	r3, [r2, #0]
 80015bc:	f003 0303 	and.w	r3, r3, #3
 80015c0:	6043      	str	r3, [r0, #4]
 80015c2:	6813      	ldr	r3, [r2, #0]
 80015c4:	f003 03f0 	and.w	r3, r3, #240	; 0xf0
 80015c8:	6083      	str	r3, [r0, #8]
 80015ca:	6813      	ldr	r3, [r2, #0]
 80015cc:	f403 63e0 	and.w	r3, r3, #1792	; 0x700
 80015d0:	60c3      	str	r3, [r0, #12]
 80015d2:	f44f 63e0 	mov.w	r3, #1792	; 0x700
 80015d6:	6812      	ldr	r2, [r2, #0]
 80015d8:	ea03 02d2 	and.w	r2, r3, r2, lsr #3
 80015dc:	6102      	str	r2, [r0, #16]
 80015de:	f242 0000 	movw	r0, #8192	; 0x2000
 80015e2:	f2c4 0002 	movt	r0, #16386	; 0x4002
 80015e6:	6800      	ldr	r0, [r0, #0]
 80015e8:	f000 0007 	and.w	r0, r0, #7
 80015ec:	6008      	str	r0, [r1, #0]
 80015ee:	4770      	bx	lr

080015f0 <HAL_TIM_Base_Init>:
 80015f0:	b5d0      	push	{r4, r6, r7, lr}
 80015f2:	af02      	add	r7, sp, #8
 80015f4:	4604      	mov	r4, r0
 80015f6:	2c00      	cmp	r4, #0
 80015f8:	bf04      	itt	eq
 80015fa:	2001      	moveq	r0, #1
 80015fc:	bdd0      	popeq	{r4, r6, r7, pc}
 80015fe:	6c20      	ldr	r0, [r4, #64]	; 0x40
 8001600:	b920      	cbnz	r0, 800160c <HAL_TIM_Base_Init+0x1c>
 8001602:	2000      	movs	r0, #0
 8001604:	63e0      	str	r0, [r4, #60]	; 0x3c
 8001606:	4620      	mov	r0, r4
 8001608:	f000 f892 	bl	8001730 <HAL_TIM_Base_MspInit>
 800160c:	2002      	movs	r0, #2
 800160e:	f640 32ff 	movw	r2, #3071	; 0xbff
 8001612:	6420      	str	r0, [r4, #64]	; 0x40
 8001614:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001618:	6820      	ldr	r0, [r4, #0]
 800161a:	6801      	ldr	r1, [r0, #0]
 800161c:	4290      	cmp	r0, r2
 800161e:	dc0f      	bgt.n	8001640 <HAL_TIM_Base_Init+0x50>
 8001620:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 8001624:	bf1e      	ittt	ne
 8001626:	f240 4200 	movwne	r2, #1024	; 0x400
 800162a:	f2c4 0200 	movtne	r2, #16384	; 0x4000
 800162e:	4290      	cmpne	r0, r2
 8001630:	d018      	beq.n	8001664 <HAL_TIM_Base_Init+0x74>
 8001632:	f640 0200 	movw	r2, #2048	; 0x800
 8001636:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800163a:	4290      	cmp	r0, r2
 800163c:	d012      	beq.n	8001664 <HAL_TIM_Base_Init+0x74>
 800163e:	e015      	b.n	800166c <HAL_TIM_Base_Init+0x7c>
 8001640:	f640 4200 	movw	r2, #3072	; 0xc00
 8001644:	f2c4 0200 	movt	r2, #16384	; 0x4000
 8001648:	4290      	cmp	r0, r2
 800164a:	bf1e      	ittt	ne
 800164c:	f243 4200 	movwne	r2, #13312	; 0x3400
 8001650:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001654:	4290      	cmpne	r0, r2
 8001656:	d005      	beq.n	8001664 <HAL_TIM_Base_Init+0x74>
 8001658:	f642 4200 	movw	r2, #11264	; 0x2c00
 800165c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001660:	4290      	cmp	r0, r2
 8001662:	d103      	bne.n	800166c <HAL_TIM_Base_Init+0x7c>
 8001664:	68a2      	ldr	r2, [r4, #8]
 8001666:	f021 0170 	bic.w	r1, r1, #112	; 0x70
 800166a:	4311      	orrs	r1, r2
 800166c:	f642 32ff 	movw	r2, #11263	; 0x2bff
 8001670:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001674:	4290      	cmp	r0, r2
 8001676:	dd14      	ble.n	80016a2 <HAL_TIM_Base_Init+0xb2>
 8001678:	f643 72ff 	movw	r2, #16383	; 0x3fff
 800167c:	f2c4 0201 	movt	r2, #16385	; 0x4001
 8001680:	4290      	cmp	r0, r2
 8001682:	dd1a      	ble.n	80016ba <HAL_TIM_Base_Init+0xca>
 8001684:	f244 0200 	movw	r2, #16384	; 0x4000
 8001688:	f2c4 0201 	movt	r2, #16385	; 0x4001
 800168c:	4290      	cmp	r0, r2
 800168e:	bf1e      	ittt	ne
 8001690:	f644 0200 	movwne	r2, #18432	; 0x4800
 8001694:	f2c4 0201 	movtne	r2, #16385	; 0x4001
 8001698:	4290      	cmpne	r0, r2
 800169a:	d027      	beq.n	80016ec <HAL_TIM_Base_Init+0xfc>
 800169c:	f244 4200 	movw	r2, #17408	; 0x4400
 80016a0:	e013      	b.n	80016ca <HAL_TIM_Base_Init+0xda>
 80016a2:	f240 72ff 	movw	r2, #2047	; 0x7ff
 80016a6:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016aa:	4290      	cmp	r0, r2
 80016ac:	dc12      	bgt.n	80016d4 <HAL_TIM_Base_Init+0xe4>
 80016ae:	f1b0 4f80 	cmp.w	r0, #1073741824	; 0x40000000
 80016b2:	d01b      	beq.n	80016ec <HAL_TIM_Base_Init+0xfc>
 80016b4:	f240 4200 	movw	r2, #1024	; 0x400
 80016b8:	e014      	b.n	80016e4 <HAL_TIM_Base_Init+0xf4>
 80016ba:	f642 4200 	movw	r2, #11264	; 0x2c00
 80016be:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80016c2:	4290      	cmp	r0, r2
 80016c4:	d012      	beq.n	80016ec <HAL_TIM_Base_Init+0xfc>
 80016c6:	f243 4200 	movw	r2, #13312	; 0x3400
 80016ca:	f2c4 0201 	movt	r2, #16385	; 0x4001
 80016ce:	4290      	cmp	r0, r2
 80016d0:	d00c      	beq.n	80016ec <HAL_TIM_Base_Init+0xfc>
 80016d2:	e00f      	b.n	80016f4 <HAL_TIM_Base_Init+0x104>
 80016d4:	f640 0200 	movw	r2, #2048	; 0x800
 80016d8:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016dc:	4290      	cmp	r0, r2
 80016de:	d005      	beq.n	80016ec <HAL_TIM_Base_Init+0xfc>
 80016e0:	f640 4200 	movw	r2, #3072	; 0xc00
 80016e4:	f2c4 0200 	movt	r2, #16384	; 0x4000
 80016e8:	4290      	cmp	r0, r2
 80016ea:	d103      	bne.n	80016f4 <HAL_TIM_Base_Init+0x104>
 80016ec:	6922      	ldr	r2, [r4, #16]
 80016ee:	f421 7140 	bic.w	r1, r1, #768	; 0x300
 80016f2:	4311      	orrs	r1, r2
 80016f4:	69a2      	ldr	r2, [r4, #24]
 80016f6:	f021 0180 	bic.w	r1, r1, #128	; 0x80
 80016fa:	4311      	orrs	r1, r2
 80016fc:	6001      	str	r1, [r0, #0]
 80016fe:	68e1      	ldr	r1, [r4, #12]
 8001700:	62c1      	str	r1, [r0, #44]	; 0x2c
 8001702:	6861      	ldr	r1, [r4, #4]
 8001704:	6281      	str	r1, [r0, #40]	; 0x28
 8001706:	f1a0 4180 	sub.w	r1, r0, #1073741824	; 0x40000000
 800170a:	f5a1 3196 	sub.w	r1, r1, #76800	; 0x12c00
 800170e:	ea4f 21b1 	mov.w	r1, r1, ror #10
 8001712:	2907      	cmp	r1, #7
 8001714:	d807      	bhi.n	8001726 <HAL_TIM_Base_Init+0x136>
 8001716:	2201      	movs	r2, #1
 8001718:	fa02 f101 	lsl.w	r1, r2, r1
 800171c:	f011 0fe5 	tst.w	r1, #229	; 0xe5
 8001720:	bf1c      	itt	ne
 8001722:	6961      	ldrne	r1, [r4, #20]
 8001724:	6301      	strne	r1, [r0, #48]	; 0x30
 8001726:	2101      	movs	r1, #1
 8001728:	6141      	str	r1, [r0, #20]
 800172a:	2000      	movs	r0, #0
 800172c:	6421      	str	r1, [r4, #64]	; 0x40
 800172e:	bdd0      	pop	{r4, r6, r7, pc}

08001730 <HAL_TIM_Base_MspInit>:
 8001730:	4770      	bx	lr

08001732 <HAL_TIM_Base_Start_IT>:
 8001732:	6800      	ldr	r0, [r0, #0]
 8001734:	68c1      	ldr	r1, [r0, #12]
 8001736:	f041 0101 	orr.w	r1, r1, #1
 800173a:	60c1      	str	r1, [r0, #12]
 800173c:	2107      	movs	r1, #7
 800173e:	6882      	ldr	r2, [r0, #8]
 8001740:	f2c0 0101 	movt	r1, #1
 8001744:	400a      	ands	r2, r1
 8001746:	2a06      	cmp	r2, #6
 8001748:	d008      	beq.n	800175c <HAL_TIM_Base_Start_IT+0x2a>
 800174a:	6882      	ldr	r2, [r0, #8]
 800174c:	4011      	ands	r1, r2
 800174e:	f5b1 3f80 	cmp.w	r1, #65536	; 0x10000
 8001752:	bf1e      	ittt	ne
 8001754:	6801      	ldrne	r1, [r0, #0]
 8001756:	f041 0101 	orrne.w	r1, r1, #1
 800175a:	6001      	strne	r1, [r0, #0]
 800175c:	2000      	movs	r0, #0
 800175e:	4770      	bx	lr

08001760 <HAL_TIM_IRQHandler>:
 8001760:	b5d0      	push	{r4, r6, r7, lr}
 8001762:	af02      	add	r7, sp, #8
 8001764:	4604      	mov	r4, r0
 8001766:	6820      	ldr	r0, [r4, #0]
 8001768:	6901      	ldr	r1, [r0, #16]
 800176a:	f011 0f02 	tst.w	r1, #2
 800176e:	bf1c      	itt	ne
 8001770:	68c1      	ldrne	r1, [r0, #12]
 8001772:	f011 0f02 	tstne.w	r1, #2
 8001776:	d015      	beq.n	80017a4 <HAL_TIM_IRQHandler+0x44>
 8001778:	f06f 0102 	mvn.w	r1, #2
 800177c:	6101      	str	r1, [r0, #16]
 800177e:	2101      	movs	r1, #1
 8001780:	61e1      	str	r1, [r4, #28]
 8001782:	6980      	ldr	r0, [r0, #24]
 8001784:	f010 0f03 	tst.w	r0, #3
 8001788:	d003      	beq.n	8001792 <HAL_TIM_IRQHandler+0x32>
 800178a:	4620      	mov	r0, r4
 800178c:	f000 f8b1 	bl	80018f2 <HAL_TIM_IC_CaptureCallback>
 8001790:	e005      	b.n	800179e <HAL_TIM_IRQHandler+0x3e>
 8001792:	4620      	mov	r0, r4
 8001794:	f000 f8ae 	bl	80018f4 <HAL_TIM_OC_DelayElapsedCallback>
 8001798:	4620      	mov	r0, r4
 800179a:	f000 f8ac 	bl	80018f6 <HAL_TIM_PWM_PulseFinishedCallback>
 800179e:	2000      	movs	r0, #0
 80017a0:	61e0      	str	r0, [r4, #28]
 80017a2:	6820      	ldr	r0, [r4, #0]
 80017a4:	6901      	ldr	r1, [r0, #16]
 80017a6:	f011 0f04 	tst.w	r1, #4
 80017aa:	bf1c      	itt	ne
 80017ac:	68c1      	ldrne	r1, [r0, #12]
 80017ae:	f011 0f04 	tstne.w	r1, #4
 80017b2:	d015      	beq.n	80017e0 <HAL_TIM_IRQHandler+0x80>
 80017b4:	f06f 0104 	mvn.w	r1, #4
 80017b8:	6101      	str	r1, [r0, #16]
 80017ba:	2102      	movs	r1, #2
 80017bc:	61e1      	str	r1, [r4, #28]
 80017be:	6980      	ldr	r0, [r0, #24]
 80017c0:	f410 7f40 	tst.w	r0, #768	; 0x300
 80017c4:	d003      	beq.n	80017ce <HAL_TIM_IRQHandler+0x6e>
 80017c6:	4620      	mov	r0, r4
 80017c8:	f000 f893 	bl	80018f2 <HAL_TIM_IC_CaptureCallback>
 80017cc:	e005      	b.n	80017da <HAL_TIM_IRQHandler+0x7a>
 80017ce:	4620      	mov	r0, r4
 80017d0:	f000 f890 	bl	80018f4 <HAL_TIM_OC_DelayElapsedCallback>
 80017d4:	4620      	mov	r0, r4
 80017d6:	f000 f88e 	bl	80018f6 <HAL_TIM_PWM_PulseFinishedCallback>
 80017da:	2000      	movs	r0, #0
 80017dc:	61e0      	str	r0, [r4, #28]
 80017de:	6820      	ldr	r0, [r4, #0]
 80017e0:	6901      	ldr	r1, [r0, #16]
 80017e2:	f011 0f08 	tst.w	r1, #8
 80017e6:	bf1c      	itt	ne
 80017e8:	68c1      	ldrne	r1, [r0, #12]
 80017ea:	f011 0f08 	tstne.w	r1, #8
 80017ee:	d015      	beq.n	800181c <HAL_TIM_IRQHandler+0xbc>
 80017f0:	f06f 0108 	mvn.w	r1, #8
 80017f4:	6101      	str	r1, [r0, #16]
 80017f6:	2104      	movs	r1, #4
 80017f8:	61e1      	str	r1, [r4, #28]
 80017fa:	69c0      	ldr	r0, [r0, #28]
 80017fc:	f010 0f03 	tst.w	r0, #3
 8001800:	d003      	beq.n	800180a <HAL_TIM_IRQHandler+0xaa>
 8001802:	4620      	mov	r0, r4
 8001804:	f000 f875 	bl	80018f2 <HAL_TIM_IC_CaptureCallback>
 8001808:	e005      	b.n	8001816 <HAL_TIM_IRQHandler+0xb6>
 800180a:	4620      	mov	r0, r4
 800180c:	f000 f872 	bl	80018f4 <HAL_TIM_OC_DelayElapsedCallback>
 8001810:	4620      	mov	r0, r4
 8001812:	f000 f870 	bl	80018f6 <HAL_TIM_PWM_PulseFinishedCallback>
 8001816:	2000      	movs	r0, #0
 8001818:	61e0      	str	r0, [r4, #28]
 800181a:	6820      	ldr	r0, [r4, #0]
 800181c:	6901      	ldr	r1, [r0, #16]
 800181e:	f011 0f10 	tst.w	r1, #16
 8001822:	bf1c      	itt	ne
 8001824:	68c1      	ldrne	r1, [r0, #12]
 8001826:	f011 0f10 	tstne.w	r1, #16
 800182a:	d015      	beq.n	8001858 <HAL_TIM_IRQHandler+0xf8>
 800182c:	f06f 0110 	mvn.w	r1, #16
 8001830:	6101      	str	r1, [r0, #16]
 8001832:	2108      	movs	r1, #8
 8001834:	61e1      	str	r1, [r4, #28]
 8001836:	69c0      	ldr	r0, [r0, #28]
 8001838:	f410 7f40 	tst.w	r0, #768	; 0x300
 800183c:	d003      	beq.n	8001846 <HAL_TIM_IRQHandler+0xe6>
 800183e:	4620      	mov	r0, r4
 8001840:	f000 f857 	bl	80018f2 <HAL_TIM_IC_CaptureCallback>
 8001844:	e005      	b.n	8001852 <HAL_TIM_IRQHandler+0xf2>
 8001846:	4620      	mov	r0, r4
 8001848:	f000 f854 	bl	80018f4 <HAL_TIM_OC_DelayElapsedCallback>
 800184c:	4620      	mov	r0, r4
 800184e:	f000 f852 	bl	80018f6 <HAL_TIM_PWM_PulseFinishedCallback>
 8001852:	2000      	movs	r0, #0
 8001854:	61e0      	str	r0, [r4, #28]
 8001856:	6820      	ldr	r0, [r4, #0]
 8001858:	6901      	ldr	r1, [r0, #16]
 800185a:	f011 0f01 	tst.w	r1, #1
 800185e:	bf1c      	itt	ne
 8001860:	68c1      	ldrne	r1, [r0, #12]
 8001862:	f011 0f01 	tstne.w	r1, #1
 8001866:	d006      	beq.n	8001876 <HAL_TIM_IRQHandler+0x116>
 8001868:	f06f 0101 	mvn.w	r1, #1
 800186c:	6101      	str	r1, [r0, #16]
 800186e:	4620      	mov	r0, r4
 8001870:	f000 f894 	bl	800199c <HAL_TIM_PeriodElapsedCallback>
 8001874:	6820      	ldr	r0, [r4, #0]
 8001876:	6901      	ldr	r1, [r0, #16]
 8001878:	f011 0f80 	tst.w	r1, #128	; 0x80
 800187c:	bf1c      	itt	ne
 800187e:	68c1      	ldrne	r1, [r0, #12]
 8001880:	f011 0f80 	tstne.w	r1, #128	; 0x80
 8001884:	d006      	beq.n	8001894 <HAL_TIM_IRQHandler+0x134>
 8001886:	f06f 0180 	mvn.w	r1, #128	; 0x80
 800188a:	6101      	str	r1, [r0, #16]
 800188c:	4620      	mov	r0, r4
 800188e:	f000 f835 	bl	80018fc <HAL_TIMEx_BreakCallback>
 8001892:	6820      	ldr	r0, [r4, #0]
 8001894:	6901      	ldr	r1, [r0, #16]
 8001896:	f411 7f80 	tst.w	r1, #256	; 0x100
 800189a:	bf1c      	itt	ne
 800189c:	68c1      	ldrne	r1, [r0, #12]
 800189e:	f011 0f80 	tstne.w	r1, #128	; 0x80
 80018a2:	d006      	beq.n	80018b2 <HAL_TIM_IRQHandler+0x152>
 80018a4:	f46f 7180 	mvn.w	r1, #256	; 0x100
 80018a8:	6101      	str	r1, [r0, #16]
 80018aa:	4620      	mov	r0, r4
 80018ac:	f000 f827 	bl	80018fe <HAL_TIMEx_Break2Callback>
 80018b0:	6820      	ldr	r0, [r4, #0]
 80018b2:	6901      	ldr	r1, [r0, #16]
 80018b4:	f011 0f40 	tst.w	r1, #64	; 0x40
 80018b8:	bf1c      	itt	ne
 80018ba:	68c1      	ldrne	r1, [r0, #12]
 80018bc:	f011 0f40 	tstne.w	r1, #64	; 0x40
 80018c0:	d006      	beq.n	80018d0 <HAL_TIM_IRQHandler+0x170>
 80018c2:	f06f 0140 	mvn.w	r1, #64	; 0x40
 80018c6:	6101      	str	r1, [r0, #16]
 80018c8:	4620      	mov	r0, r4
 80018ca:	f000 f815 	bl	80018f8 <HAL_TIM_TriggerCallback>
 80018ce:	6820      	ldr	r0, [r4, #0]
 80018d0:	6901      	ldr	r1, [r0, #16]
 80018d2:	f011 0f20 	tst.w	r1, #32
 80018d6:	bf1c      	itt	ne
 80018d8:	68c1      	ldrne	r1, [r0, #12]
 80018da:	f011 0f20 	tstne.w	r1, #32
 80018de:	d100      	bne.n	80018e2 <HAL_TIM_IRQHandler+0x182>
 80018e0:	bdd0      	pop	{r4, r6, r7, pc}
 80018e2:	f06f 0120 	mvn.w	r1, #32
 80018e6:	6101      	str	r1, [r0, #16]
 80018e8:	4620      	mov	r0, r4
 80018ea:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 80018ee:	f000 b804 	b.w	80018fa <HAL_TIMEx_CommutationCallback>

080018f2 <HAL_TIM_IC_CaptureCallback>:
 80018f2:	4770      	bx	lr

080018f4 <HAL_TIM_OC_DelayElapsedCallback>:
 80018f4:	4770      	bx	lr

080018f6 <HAL_TIM_PWM_PulseFinishedCallback>:
 80018f6:	4770      	bx	lr

080018f8 <HAL_TIM_TriggerCallback>:
 80018f8:	4770      	bx	lr

080018fa <HAL_TIMEx_CommutationCallback>:
 80018fa:	4770      	bx	lr

080018fc <HAL_TIMEx_BreakCallback>:
 80018fc:	4770      	bx	lr

080018fe <HAL_TIMEx_Break2Callback>:
 80018fe:	4770      	bx	lr

08001900 <HAL_InitTick>:
 8001900:	b5b0      	push	{r4, r5, r7, lr}
 8001902:	af02      	add	r7, sp, #8
 8001904:	b086      	sub	sp, #24
 8001906:	4601      	mov	r1, r0
 8001908:	2036      	movs	r0, #54	; 0x36
 800190a:	2200      	movs	r2, #0
 800190c:	2400      	movs	r4, #0
 800190e:	f7ff fc99 	bl	8001244 <HAL_NVIC_SetPriority>
 8001912:	2036      	movs	r0, #54	; 0x36
 8001914:	f7ff fcc9 	bl	80012aa <HAL_NVIC_EnableIRQ>
 8001918:	f241 0058 	movw	r0, #4184	; 0x1058
 800191c:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001920:	6801      	ldr	r1, [r0, #0]
 8001922:	f041 0110 	orr.w	r1, r1, #16
 8001926:	6001      	str	r1, [r0, #0]
 8001928:	4669      	mov	r1, sp
 800192a:	6800      	ldr	r0, [r0, #0]
 800192c:	f000 0010 	and.w	r0, r0, #16
 8001930:	9001      	str	r0, [sp, #4]
 8001932:	9801      	ldr	r0, [sp, #4]
 8001934:	a801      	add	r0, sp, #4
 8001936:	f7ff fe3a 	bl	80015ae <HAL_RCC_GetClockConfig>
 800193a:	9d04      	ldr	r5, [sp, #16]
 800193c:	f7ff fe0d 	bl	800155a <HAL_RCC_GetPCLK1Freq>
 8001940:	2d00      	cmp	r5, #0
 8001942:	f640 21ac 	movw	r1, #2732	; 0xaac
 8001946:	f241 0200 	movw	r2, #4096	; 0x1000
 800194a:	f240 33e7 	movw	r3, #999	; 0x3e7
 800194e:	bf18      	it	ne
 8001950:	2501      	movne	r5, #1
 8001952:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001956:	f2c4 0200 	movt	r2, #16384	; 0x4000
 800195a:	40a8      	lsls	r0, r5
 800195c:	f64d 6583 	movw	r5, #56963	; 0xde83
 8001960:	618c      	str	r4, [r1, #24]
 8001962:	f2c4 351b 	movt	r5, #17179	; 0x431b
 8001966:	fba0 0505 	umull	r0, r5, r0, r5
 800196a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800196e:	eb00 4095 	add.w	r0, r0, r5, lsr #18
 8001972:	e9c1 2000 	strd	r2, r0, [r1]
 8001976:	4608      	mov	r0, r1
 8001978:	e9c1 4302 	strd	r4, r3, [r1, #8]
 800197c:	610c      	str	r4, [r1, #16]
 800197e:	f7ff fe37 	bl	80015f0 <HAL_TIM_Base_Init>
 8001982:	2800      	cmp	r0, #0
 8001984:	bf1e      	ittt	ne
 8001986:	2001      	movne	r0, #1
 8001988:	b006      	addne	sp, #24
 800198a:	bdb0      	popne	{r4, r5, r7, pc}
 800198c:	f640 20ac 	movw	r0, #2732	; 0xaac
 8001990:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001994:	f7ff fecd 	bl	8001732 <HAL_TIM_Base_Start_IT>
 8001998:	b006      	add	sp, #24
 800199a:	bdb0      	pop	{r4, r5, r7, pc}

0800199c <HAL_TIM_PeriodElapsedCallback>:
 800199c:	f7ff bc34 	b.w	8001208 <HAL_IncTick>

080019a0 <TIM6_DAC_IRQHandler>:
 80019a0:	f640 20ac 	movw	r0, #2732	; 0xaac
 80019a4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80019a8:	f7ff beda 	b.w	8001760 <HAL_TIM_IRQHandler>

080019ac <HAL_UART_Init>:
 80019ac:	b5d0      	push	{r4, r6, r7, lr}
 80019ae:	af02      	add	r7, sp, #8
 80019b0:	4604      	mov	r4, r0
 80019b2:	b194      	cbz	r4, 80019da <HAL_UART_Init+0x2e>
 80019b4:	6f60      	ldr	r0, [r4, #116]	; 0x74
 80019b6:	b920      	cbnz	r0, 80019c2 <HAL_UART_Init+0x16>
 80019b8:	2000      	movs	r0, #0
 80019ba:	6720      	str	r0, [r4, #112]	; 0x70
 80019bc:	4620      	mov	r0, r4
 80019be:	f000 f826 	bl	8001a0e <HAL_UART_MspInit>
 80019c2:	2024      	movs	r0, #36	; 0x24
 80019c4:	6760      	str	r0, [r4, #116]	; 0x74
 80019c6:	6820      	ldr	r0, [r4, #0]
 80019c8:	6801      	ldr	r1, [r0, #0]
 80019ca:	f021 0101 	bic.w	r1, r1, #1
 80019ce:	6001      	str	r1, [r0, #0]
 80019d0:	4620      	mov	r0, r4
 80019d2:	f000 f81d 	bl	8001a10 <UART_SetConfig>
 80019d6:	2801      	cmp	r0, #1
 80019d8:	d101      	bne.n	80019de <HAL_UART_Init+0x32>
 80019da:	2001      	movs	r0, #1
 80019dc:	bdd0      	pop	{r4, r6, r7, pc}
 80019de:	6a60      	ldr	r0, [r4, #36]	; 0x24
 80019e0:	2800      	cmp	r0, #0
 80019e2:	bf1c      	itt	ne
 80019e4:	4620      	movne	r0, r4
 80019e6:	f000 f944 	blne	8001c72 <UART_AdvFeatureConfig>
 80019ea:	6820      	ldr	r0, [r4, #0]
 80019ec:	6841      	ldr	r1, [r0, #4]
 80019ee:	f421 4190 	bic.w	r1, r1, #18432	; 0x4800
 80019f2:	6041      	str	r1, [r0, #4]
 80019f4:	6881      	ldr	r1, [r0, #8]
 80019f6:	f021 012a 	bic.w	r1, r1, #42	; 0x2a
 80019fa:	6081      	str	r1, [r0, #8]
 80019fc:	6801      	ldr	r1, [r0, #0]
 80019fe:	f041 0101 	orr.w	r1, r1, #1
 8001a02:	6001      	str	r1, [r0, #0]
 8001a04:	4620      	mov	r0, r4
 8001a06:	e8bd 40d0 	ldmia.w	sp!, {r4, r6, r7, lr}
 8001a0a:	f000 b99d 	b.w	8001d48 <UART_CheckIdleState>

08001a0e <HAL_UART_MspInit>:
 8001a0e:	4770      	bx	lr

08001a10 <UART_SetConfig>:
 8001a10:	b5b0      	push	{r4, r5, r7, lr}
 8001a12:	af02      	add	r7, sp, #8
 8001a14:	4604      	mov	r4, r0
 8001a16:	f646 15f3 	movw	r5, #27123	; 0x69f3
 8001a1a:	f248 0e00 	movw	lr, #32768	; 0x8000
 8001a1e:	f241 0c88 	movw	ip, #4232	; 0x1088
 8001a22:	6821      	ldr	r1, [r4, #0]
 8001a24:	68a0      	ldr	r0, [r4, #8]
 8001a26:	e9d4 2304 	ldrd	r2, r3, [r4, #16]
 8001a2a:	f6ce 75ff 	movt	r5, #61439	; 0xefff
 8001a2e:	f2c4 0e00 	movt	lr, #16384	; 0x4000
 8001a32:	f2c4 0c02 	movt	ip, #16386	; 0x4002
 8001a36:	4310      	orrs	r0, r2
 8001a38:	69e2      	ldr	r2, [r4, #28]
 8001a3a:	4571      	cmp	r1, lr
 8001a3c:	ea40 0003 	orr.w	r0, r0, r3
 8001a40:	680b      	ldr	r3, [r1, #0]
 8001a42:	ea40 0002 	orr.w	r0, r0, r2
 8001a46:	ea03 0305 	and.w	r3, r3, r5
 8001a4a:	f04f 0510 	mov.w	r5, #16
 8001a4e:	ea40 0003 	orr.w	r0, r0, r3
 8001a52:	6008      	str	r0, [r1, #0]
 8001a54:	6848      	ldr	r0, [r1, #4]
 8001a56:	68e3      	ldr	r3, [r4, #12]
 8001a58:	f420 5040 	bic.w	r0, r0, #12288	; 0x3000
 8001a5c:	ea40 0003 	orr.w	r0, r0, r3
 8001a60:	6048      	str	r0, [r1, #4]
 8001a62:	69a0      	ldr	r0, [r4, #24]
 8001a64:	bf1c      	itt	ne
 8001a66:	6a23      	ldrne	r3, [r4, #32]
 8001a68:	4318      	orrne	r0, r3
 8001a6a:	688b      	ldr	r3, [r1, #8]
 8001a6c:	f423 6330 	bic.w	r3, r3, #2816	; 0xb00
 8001a70:	4318      	orrs	r0, r3
 8001a72:	f644 73ff 	movw	r3, #20479	; 0x4fff
 8001a76:	6088      	str	r0, [r1, #8]
 8001a78:	f242 4000 	movw	r0, #9216	; 0x2400
 8001a7c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a80:	f2c0 00f4 	movt	r0, #244	; 0xf4
 8001a84:	4299      	cmp	r1, r3
 8001a86:	dc15      	bgt.n	8001ab4 <UART_SetConfig+0xa4>
 8001a88:	f244 4300 	movw	r3, #17408	; 0x4400
 8001a8c:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a90:	4299      	cmp	r1, r3
 8001a92:	d024      	beq.n	8001ade <UART_SetConfig+0xce>
 8001a94:	f644 0300 	movw	r3, #18432	; 0x4800
 8001a98:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001a9c:	4299      	cmp	r1, r3
 8001a9e:	d022      	beq.n	8001ae6 <UART_SetConfig+0xd6>
 8001aa0:	f644 4300 	movw	r3, #19456	; 0x4c00
 8001aa4:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001aa8:	4299      	cmp	r1, r3
 8001aaa:	d131      	bne.n	8001b10 <UART_SetConfig+0x100>
 8001aac:	f8dc 3000 	ldr.w	r3, [ip]
 8001ab0:	099d      	lsrs	r5, r3, #6
 8001ab2:	e023      	b.n	8001afc <UART_SetConfig+0xec>
 8001ab4:	f245 0300 	movw	r3, #20480	; 0x5000
 8001ab8:	f2c4 0300 	movt	r3, #16384	; 0x4000
 8001abc:	4299      	cmp	r1, r3
 8001abe:	d016      	beq.n	8001aee <UART_SetConfig+0xde>
 8001ac0:	4571      	cmp	r1, lr
 8001ac2:	d018      	beq.n	8001af6 <UART_SetConfig+0xe6>
 8001ac4:	f643 0300 	movw	r3, #14336	; 0x3800
 8001ac8:	f2c4 0301 	movt	r3, #16385	; 0x4001
 8001acc:	4299      	cmp	r1, r3
 8001ace:	d11f      	bne.n	8001b10 <UART_SetConfig+0x100>
 8001ad0:	f8dc 5000 	ldr.w	r5, [ip]
 8001ad4:	f249 734c 	movw	r3, #38732	; 0x974c
 8001ad8:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001adc:	e012      	b.n	8001b04 <UART_SetConfig+0xf4>
 8001ade:	f8dc 3000 	ldr.w	r3, [ip]
 8001ae2:	089d      	lsrs	r5, r3, #2
 8001ae4:	e00a      	b.n	8001afc <UART_SetConfig+0xec>
 8001ae6:	f8dc 3000 	ldr.w	r3, [ip]
 8001aea:	091d      	lsrs	r5, r3, #4
 8001aec:	e006      	b.n	8001afc <UART_SetConfig+0xec>
 8001aee:	f8dc 3000 	ldr.w	r3, [ip]
 8001af2:	0a1d      	lsrs	r5, r3, #8
 8001af4:	e002      	b.n	8001afc <UART_SetConfig+0xec>
 8001af6:	f8dc 3000 	ldr.w	r3, [ip]
 8001afa:	0a9d      	lsrs	r5, r3, #10
 8001afc:	f249 735c 	movw	r3, #38748	; 0x975c
 8001b00:	f6c0 0300 	movt	r3, #2048	; 0x800
 8001b04:	f005 0503 	and.w	r5, r5, #3
 8001b08:	f085 0502 	eor.w	r5, r5, #2
 8001b0c:	f853 5025 	ldr.w	r5, [r3, r5, lsl #2]
 8001b10:	4571      	cmp	r1, lr
 8001b12:	d012      	beq.n	8001b3a <UART_SetConfig+0x12a>
 8001b14:	f5b2 4f00 	cmp.w	r2, #32768	; 0x8000
 8001b18:	d11d      	bne.n	8001b56 <UART_SetConfig+0x146>
 8001b1a:	f005 001f 	and.w	r0, r5, #31
 8001b1e:	2101      	movs	r1, #1
 8001b20:	2808      	cmp	r0, #8
 8001b22:	f200 809f 	bhi.w	8001c64 <UART_SetConfig+0x254>
 8001b26:	e8df f000 	tbb	[pc, r0]
 8001b2a:	4005      	.short	0x4005
 8001b2c:	9d499d43 	.word	0x9d499d43
 8001b30:	004f9d9d 	.word	0x004f9d9d
 8001b34:	f7ff fd11 	bl	800155a <HAL_RCC_GetPCLK1Freq>
 8001b38:	e042      	b.n	8001bc0 <UART_SetConfig+0x1b0>
 8001b3a:	ea4f 0575 	mov.w	r5, r5, ror #1
 8001b3e:	2101      	movs	r1, #1
 8001b40:	2d04      	cmp	r5, #4
 8001b42:	f200 808f 	bhi.w	8001c64 <UART_SetConfig+0x254>
 8001b46:	e8df f005 	tbb	[pc, r5]
 8001b4a:	1c03      	.short	0x1c03
 8001b4c:	001a8d16 	.word	0x001a8d16
 8001b50:	f7ff fd03 	bl	800155a <HAL_RCC_GetPCLK1Freq>
 8001b54:	e011      	b.n	8001b7a <UART_SetConfig+0x16a>
 8001b56:	f005 021f 	and.w	r2, r5, #31
 8001b5a:	2101      	movs	r1, #1
 8001b5c:	2a08      	cmp	r2, #8
 8001b5e:	f200 8081 	bhi.w	8001c64 <UART_SetConfig+0x254>
 8001b62:	e8df f002 	tbb	[pc, r2]
 8001b66:	4305      	.short	0x4305
 8001b68:	7f487f46 	.word	0x7f487f46
 8001b6c:	004e7f7f 	.word	0x004e7f7f
 8001b70:	f7ff fcf3 	bl	800155a <HAL_RCC_GetPCLK1Freq>
 8001b74:	e041      	b.n	8001bfa <UART_SetConfig+0x1ea>
 8001b76:	f7ff fc91 	bl	800149c <HAL_RCC_GetSysClockFreq>
 8001b7a:	b910      	cbnz	r0, 8001b82 <UART_SetConfig+0x172>
 8001b7c:	e071      	b.n	8001c62 <UART_SetConfig+0x252>
 8001b7e:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001b82:	6862      	ldr	r2, [r4, #4]
 8001b84:	2101      	movs	r1, #1
 8001b86:	eb02 0342 	add.w	r3, r2, r2, lsl #1
 8001b8a:	4298      	cmp	r0, r3
 8001b8c:	d36a      	bcc.n	8001c64 <UART_SetConfig+0x254>
 8001b8e:	0313      	lsls	r3, r2, #12
 8001b90:	4298      	cmp	r0, r3
 8001b92:	bf9c      	itt	ls
 8001b94:	2101      	movls	r1, #1
 8001b96:	2d04      	cmpls	r5, #4
 8001b98:	d864      	bhi.n	8001c64 <UART_SetConfig+0x254>
 8001b9a:	e8df f005 	tbb	[pc, r5]
 8001b9e:	3e03      	.short	0x3e03
 8001ba0:	00526345 	.word	0x00526345
 8001ba4:	f7ff fcd9 	bl	800155a <HAL_RCC_GetPCLK1Freq>
 8001ba8:	e040      	b.n	8001c2c <UART_SetConfig+0x21c>
 8001baa:	f7ff fceb 	bl	8001584 <HAL_RCC_GetPCLK2Freq>
 8001bae:	e007      	b.n	8001bc0 <UART_SetConfig+0x1b0>
 8001bb0:	6861      	ldr	r1, [r4, #4]
 8001bb2:	f644 0200 	movw	r2, #18432	; 0x4800
 8001bb6:	f2c0 12e8 	movt	r2, #488	; 0x1e8
 8001bba:	e008      	b.n	8001bce <UART_SetConfig+0x1be>
 8001bbc:	f7ff fc6e 	bl	800149c <HAL_RCC_GetSysClockFreq>
 8001bc0:	6861      	ldr	r1, [r4, #4]
 8001bc2:	0040      	lsls	r0, r0, #1
 8001bc4:	084a      	lsrs	r2, r1, #1
 8001bc6:	e003      	b.n	8001bd0 <UART_SetConfig+0x1c0>
 8001bc8:	6861      	ldr	r1, [r4, #4]
 8001bca:	f44f 3280 	mov.w	r2, #65536	; 0x10000
 8001bce:	0848      	lsrs	r0, r1, #1
 8001bd0:	4410      	add	r0, r2
 8001bd2:	fbb0 f0f1 	udiv	r0, r0, r1
 8001bd6:	f64f 71f0 	movw	r1, #65520	; 0xfff0
 8001bda:	4001      	ands	r1, r0
 8001bdc:	2910      	cmp	r1, #16
 8001bde:	d303      	bcc.n	8001be8 <UART_SetConfig+0x1d8>
 8001be0:	f3c0 0042 	ubfx	r0, r0, #1, #3
 8001be4:	4308      	orrs	r0, r1
 8001be6:	e03a      	b.n	8001c5e <UART_SetConfig+0x24e>
 8001be8:	2101      	movs	r1, #1
 8001bea:	e03b      	b.n	8001c64 <UART_SetConfig+0x254>
 8001bec:	f7ff fcca 	bl	8001584 <HAL_RCC_GetPCLK2Freq>
 8001bf0:	e003      	b.n	8001bfa <UART_SetConfig+0x1ea>
 8001bf2:	6862      	ldr	r2, [r4, #4]
 8001bf4:	e008      	b.n	8001c08 <UART_SetConfig+0x1f8>
 8001bf6:	f7ff fc51 	bl	800149c <HAL_RCC_GetSysClockFreq>
 8001bfa:	6862      	ldr	r2, [r4, #4]
 8001bfc:	4601      	mov	r1, r0
 8001bfe:	0850      	lsrs	r0, r2, #1
 8001c00:	e003      	b.n	8001c0a <UART_SetConfig+0x1fa>
 8001c02:	6862      	ldr	r2, [r4, #4]
 8001c04:	f44f 4000 	mov.w	r0, #32768	; 0x8000
 8001c08:	0851      	lsrs	r1, r2, #1
 8001c0a:	4408      	add	r0, r1
 8001c0c:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c10:	b280      	uxth	r0, r0
 8001c12:	2810      	cmp	r0, #16
 8001c14:	d223      	bcs.n	8001c5e <UART_SetConfig+0x24e>
 8001c16:	2101      	movs	r1, #1
 8001c18:	e024      	b.n	8001c64 <UART_SetConfig+0x254>
 8001c1a:	2000      	movs	r0, #0
 8001c1c:	2100      	movs	r1, #0
 8001c1e:	f2cf 4024 	movt	r0, #62500	; 0xf424
 8001c22:	eb10 0052 	adds.w	r0, r0, r2, lsr #1
 8001c26:	e006      	b.n	8001c36 <UART_SetConfig+0x226>
 8001c28:	f7ff fc38 	bl	800149c <HAL_RCC_GetSysClockFreq>
 8001c2c:	6862      	ldr	r2, [r4, #4]
 8001c2e:	0e01      	lsrs	r1, r0, #24
 8001c30:	0853      	lsrs	r3, r2, #1
 8001c32:	eb13 2000 	adds.w	r0, r3, r0, lsl #8
 8001c36:	f141 0100 	adc.w	r1, r1, #0
 8001c3a:	2300      	movs	r3, #0
 8001c3c:	f7fe fae0 	bl	8000200 <__aeabi_uldivmod>
 8001c40:	e005      	b.n	8001c4e <UART_SetConfig+0x23e>
 8001c42:	f44f 0000 	mov.w	r0, #8388608	; 0x800000
 8001c46:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8001c4a:	fbb0 f0f2 	udiv	r0, r0, r2
 8001c4e:	f64f 42ff 	movw	r2, #64767	; 0xfcff
 8001c52:	f5a0 7140 	sub.w	r1, r0, #768	; 0x300
 8001c56:	f2c0 020f 	movt	r2, #15
 8001c5a:	4291      	cmp	r1, r2
 8001c5c:	d807      	bhi.n	8001c6e <UART_SetConfig+0x25e>
 8001c5e:	6821      	ldr	r1, [r4, #0]
 8001c60:	60c8      	str	r0, [r1, #12]
 8001c62:	2100      	movs	r1, #0
 8001c64:	2000      	movs	r0, #0
 8001c66:	e9c4 0018 	strd	r0, r0, [r4, #96]	; 0x60
 8001c6a:	4608      	mov	r0, r1
 8001c6c:	bdb0      	pop	{r4, r5, r7, pc}
 8001c6e:	2101      	movs	r1, #1
 8001c70:	e7f8      	b.n	8001c64 <UART_SetConfig+0x254>

08001c72 <UART_AdvFeatureConfig>:
 8001c72:	6a41      	ldr	r1, [r0, #36]	; 0x24
 8001c74:	f011 0f01 	tst.w	r1, #1
 8001c78:	d008      	beq.n	8001c8c <UART_AdvFeatureConfig+0x1a>
 8001c7a:	6802      	ldr	r2, [r0, #0]
 8001c7c:	6853      	ldr	r3, [r2, #4]
 8001c7e:	f8d0 c028 	ldr.w	ip, [r0, #40]	; 0x28
 8001c82:	f423 3300 	bic.w	r3, r3, #131072	; 0x20000
 8001c86:	ea43 030c 	orr.w	r3, r3, ip
 8001c8a:	6053      	str	r3, [r2, #4]
 8001c8c:	078a      	lsls	r2, r1, #30
 8001c8e:	d508      	bpl.n	8001ca2 <UART_AdvFeatureConfig+0x30>
 8001c90:	6802      	ldr	r2, [r0, #0]
 8001c92:	6853      	ldr	r3, [r2, #4]
 8001c94:	f8d0 c02c 	ldr.w	ip, [r0, #44]	; 0x2c
 8001c98:	f423 3380 	bic.w	r3, r3, #65536	; 0x10000
 8001c9c:	ea43 030c 	orr.w	r3, r3, ip
 8001ca0:	6053      	str	r3, [r2, #4]
 8001ca2:	074a      	lsls	r2, r1, #29
 8001ca4:	d508      	bpl.n	8001cb8 <UART_AdvFeatureConfig+0x46>
 8001ca6:	6802      	ldr	r2, [r0, #0]
 8001ca8:	6853      	ldr	r3, [r2, #4]
 8001caa:	f8d0 c030 	ldr.w	ip, [r0, #48]	; 0x30
 8001cae:	f423 2380 	bic.w	r3, r3, #262144	; 0x40000
 8001cb2:	ea43 030c 	orr.w	r3, r3, ip
 8001cb6:	6053      	str	r3, [r2, #4]
 8001cb8:	070a      	lsls	r2, r1, #28
 8001cba:	d508      	bpl.n	8001cce <UART_AdvFeatureConfig+0x5c>
 8001cbc:	6802      	ldr	r2, [r0, #0]
 8001cbe:	6853      	ldr	r3, [r2, #4]
 8001cc0:	f8d0 c034 	ldr.w	ip, [r0, #52]	; 0x34
 8001cc4:	f423 4300 	bic.w	r3, r3, #32768	; 0x8000
 8001cc8:	ea43 030c 	orr.w	r3, r3, ip
 8001ccc:	6053      	str	r3, [r2, #4]
 8001cce:	06ca      	lsls	r2, r1, #27
 8001cd0:	d508      	bpl.n	8001ce4 <UART_AdvFeatureConfig+0x72>
 8001cd2:	6802      	ldr	r2, [r0, #0]
 8001cd4:	6893      	ldr	r3, [r2, #8]
 8001cd6:	f8d0 c038 	ldr.w	ip, [r0, #56]	; 0x38
 8001cda:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8001cde:	ea43 030c 	orr.w	r3, r3, ip
 8001ce2:	6093      	str	r3, [r2, #8]
 8001ce4:	068a      	lsls	r2, r1, #26
 8001ce6:	d508      	bpl.n	8001cfa <UART_AdvFeatureConfig+0x88>
 8001ce8:	6802      	ldr	r2, [r0, #0]
 8001cea:	6893      	ldr	r3, [r2, #8]
 8001cec:	f8d0 c03c 	ldr.w	ip, [r0, #60]	; 0x3c
 8001cf0:	f423 5300 	bic.w	r3, r3, #8192	; 0x2000
 8001cf4:	ea43 030c 	orr.w	r3, r3, ip
 8001cf8:	6093      	str	r3, [r2, #8]
 8001cfa:	b580      	push	{r7, lr}
 8001cfc:	466f      	mov	r7, sp
 8001cfe:	064a      	lsls	r2, r1, #25
 8001d00:	d515      	bpl.n	8001d2e <UART_AdvFeatureConfig+0xbc>
 8001d02:	f8d0 e000 	ldr.w	lr, [r0]
 8001d06:	f8de c004 	ldr.w	ip, [lr, #4]
 8001d0a:	6c03      	ldr	r3, [r0, #64]	; 0x40
 8001d0c:	f42c 1280 	bic.w	r2, ip, #1048576	; 0x100000
 8001d10:	f5b3 1f80 	cmp.w	r3, #1048576	; 0x100000
 8001d14:	ea42 0203 	orr.w	r2, r2, r3
 8001d18:	f8ce 2004 	str.w	r2, [lr, #4]
 8001d1c:	d107      	bne.n	8001d2e <UART_AdvFeatureConfig+0xbc>
 8001d1e:	f8de 2004 	ldr.w	r2, [lr, #4]
 8001d22:	6c43      	ldr	r3, [r0, #68]	; 0x44
 8001d24:	f422 02c0 	bic.w	r2, r2, #6291456	; 0x600000
 8001d28:	431a      	orrs	r2, r3
 8001d2a:	f8ce 2004 	str.w	r2, [lr, #4]
 8001d2e:	0609      	lsls	r1, r1, #24
 8001d30:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8001d34:	bf58      	it	pl
 8001d36:	4770      	bxpl	lr
 8001d38:	6801      	ldr	r1, [r0, #0]
 8001d3a:	684a      	ldr	r2, [r1, #4]
 8001d3c:	6c80      	ldr	r0, [r0, #72]	; 0x48
 8001d3e:	f422 2200 	bic.w	r2, r2, #524288	; 0x80000
 8001d42:	4310      	orrs	r0, r2
 8001d44:	6048      	str	r0, [r1, #4]
 8001d46:	4770      	bx	lr

08001d48 <UART_CheckIdleState>:
 8001d48:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001d4a:	af03      	add	r7, sp, #12
 8001d4c:	f84d bd04 	str.w	fp, [sp, #-4]!
 8001d50:	4604      	mov	r4, r0
 8001d52:	2000      	movs	r0, #0
 8001d54:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001d56:	f7ff fa5f 	bl	8001218 <HAL_GetTick>
 8001d5a:	4605      	mov	r5, r0
 8001d5c:	6820      	ldr	r0, [r4, #0]
 8001d5e:	6801      	ldr	r1, [r0, #0]
 8001d60:	f011 0f08 	tst.w	r1, #8
 8001d64:	d00f      	beq.n	8001d86 <UART_CheckIdleState+0x3e>
 8001d66:	69c1      	ldr	r1, [r0, #28]
 8001d68:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d6c:	d10b      	bne.n	8001d86 <UART_CheckIdleState+0x3e>
 8001d6e:	2600      	movs	r6, #0
 8001d70:	f7ff fa52 	bl	8001218 <HAL_GetTick>
 8001d74:	1b41      	subs	r1, r0, r5
 8001d76:	6820      	ldr	r0, [r4, #0]
 8001d78:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001d7c:	d11b      	bne.n	8001db6 <UART_CheckIdleState+0x6e>
 8001d7e:	69c1      	ldr	r1, [r0, #28]
 8001d80:	f411 1f00 	tst.w	r1, #2097152	; 0x200000
 8001d84:	d0f4      	beq.n	8001d70 <UART_CheckIdleState+0x28>
 8001d86:	6801      	ldr	r1, [r0, #0]
 8001d88:	f011 0f04 	tst.w	r1, #4
 8001d8c:	d101      	bne.n	8001d92 <UART_CheckIdleState+0x4a>
 8001d8e:	2600      	movs	r6, #0
 8001d90:	e01a      	b.n	8001dc8 <UART_CheckIdleState+0x80>
 8001d92:	69c0      	ldr	r0, [r0, #28]
 8001d94:	2600      	movs	r6, #0
 8001d96:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001d9a:	d115      	bne.n	8001dc8 <UART_CheckIdleState+0x80>
 8001d9c:	f7ff fa3c 	bl	8001218 <HAL_GetTick>
 8001da0:	1b41      	subs	r1, r0, r5
 8001da2:	6820      	ldr	r0, [r4, #0]
 8001da4:	ebb6 6f51 	cmp.w	r6, r1, lsr #25
 8001da8:	d105      	bne.n	8001db6 <UART_CheckIdleState+0x6e>
 8001daa:	69c0      	ldr	r0, [r0, #28]
 8001dac:	f410 0f80 	tst.w	r0, #4194304	; 0x400000
 8001db0:	d0f4      	beq.n	8001d9c <UART_CheckIdleState+0x54>
 8001db2:	2600      	movs	r6, #0
 8001db4:	e008      	b.n	8001dc8 <UART_CheckIdleState+0x80>
 8001db6:	6801      	ldr	r1, [r0, #0]
 8001db8:	2603      	movs	r6, #3
 8001dba:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001dbe:	6001      	str	r1, [r0, #0]
 8001dc0:	6881      	ldr	r1, [r0, #8]
 8001dc2:	f021 0101 	bic.w	r1, r1, #1
 8001dc6:	6081      	str	r1, [r0, #8]
 8001dc8:	2020      	movs	r0, #32
 8001dca:	6760      	str	r0, [r4, #116]	; 0x74
 8001dcc:	67a0      	str	r0, [r4, #120]	; 0x78
 8001dce:	2000      	movs	r0, #0
 8001dd0:	6720      	str	r0, [r4, #112]	; 0x70
 8001dd2:	4630      	mov	r0, r6
 8001dd4:	f85d bb04 	ldr.w	fp, [sp], #4
 8001dd8:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001dda <HAL_UART_Transmit>:
 8001dda:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001ddc:	af03      	add	r7, sp, #12
 8001dde:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8001de2:	b081      	sub	sp, #4
 8001de4:	4604      	mov	r4, r0
 8001de6:	461d      	mov	r5, r3
 8001de8:	4616      	mov	r6, r2
 8001dea:	4689      	mov	r9, r1
 8001dec:	6f60      	ldr	r0, [r4, #116]	; 0x74
 8001dee:	2820      	cmp	r0, #32
 8001df0:	d109      	bne.n	8001e06 <HAL_UART_Transmit+0x2c>
 8001df2:	f1b9 0f00 	cmp.w	r9, #0
 8001df6:	f04f 0001 	mov.w	r0, #1
 8001dfa:	bf18      	it	ne
 8001dfc:	2e00      	cmpne	r6, #0
 8001dfe:	d003      	beq.n	8001e08 <HAL_UART_Transmit+0x2e>
 8001e00:	6f20      	ldr	r0, [r4, #112]	; 0x70
 8001e02:	2801      	cmp	r0, #1
 8001e04:	d104      	bne.n	8001e10 <HAL_UART_Transmit+0x36>
 8001e06:	2002      	movs	r0, #2
 8001e08:	b001      	add	sp, #4
 8001e0a:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8001e0e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8001e10:	2001      	movs	r0, #1
 8001e12:	6720      	str	r0, [r4, #112]	; 0x70
 8001e14:	2000      	movs	r0, #0
 8001e16:	67e0      	str	r0, [r4, #124]	; 0x7c
 8001e18:	2021      	movs	r0, #33	; 0x21
 8001e1a:	6760      	str	r0, [r4, #116]	; 0x74
 8001e1c:	f7ff f9fc 	bl	8001218 <HAL_GetTick>
 8001e20:	f8a4 6050 	strh.w	r6, [r4, #80]	; 0x50
 8001e24:	f8a4 6052 	strh.w	r6, [r4, #82]	; 0x52
 8001e28:	4680      	mov	r8, r0
 8001e2a:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e2e:	f8d4 b000 	ldr.w	fp, [r4]
 8001e32:	f8db 001c 	ldr.w	r0, [fp, #28]
 8001e36:	2900      	cmp	r1, #0
 8001e38:	d040      	beq.n	8001ebc <HAL_UART_Transmit+0xe2>
 8001e3a:	f105 0a01 	add.w	sl, r5, #1
 8001e3e:	0600      	lsls	r0, r0, #24
 8001e40:	d410      	bmi.n	8001e64 <HAL_UART_Transmit+0x8a>
 8001e42:	465e      	mov	r6, fp
 8001e44:	f1ba 0f00 	cmp.w	sl, #0
 8001e48:	d007      	beq.n	8001e5a <HAL_UART_Transmit+0x80>
 8001e4a:	b33d      	cbz	r5, 8001e9c <HAL_UART_Transmit+0xc2>
 8001e4c:	f7ff f9e4 	bl	8001218 <HAL_GetTick>
 8001e50:	6826      	ldr	r6, [r4, #0]
 8001e52:	eba0 0008 	sub.w	r0, r0, r8
 8001e56:	42a8      	cmp	r0, r5
 8001e58:	d821      	bhi.n	8001e9e <HAL_UART_Transmit+0xc4>
 8001e5a:	69f0      	ldr	r0, [r6, #28]
 8001e5c:	f010 0f80 	tst.w	r0, #128	; 0x80
 8001e60:	d0f0      	beq.n	8001e44 <HAL_UART_Transmit+0x6a>
 8001e62:	e000      	b.n	8001e66 <HAL_UART_Transmit+0x8c>
 8001e64:	465e      	mov	r6, fp
 8001e66:	68a0      	ldr	r0, [r4, #8]
 8001e68:	f5b0 5f80 	cmp.w	r0, #4096	; 0x1000
 8001e6c:	bf04      	itt	eq
 8001e6e:	6920      	ldreq	r0, [r4, #16]
 8001e70:	2800      	cmpeq	r0, #0
 8001e72:	d002      	beq.n	8001e7a <HAL_UART_Transmit+0xa0>
 8001e74:	f819 0b01 	ldrb.w	r0, [r9], #1
 8001e78:	e003      	b.n	8001e82 <HAL_UART_Transmit+0xa8>
 8001e7a:	f839 0b02 	ldrh.w	r0, [r9], #2
 8001e7e:	f36f 205f 	bfc	r0, #9, #23
 8001e82:	8530      	strh	r0, [r6, #40]	; 0x28
 8001e84:	46b3      	mov	fp, r6
 8001e86:	f8b4 0052 	ldrh.w	r0, [r4, #82]	; 0x52
 8001e8a:	3801      	subs	r0, #1
 8001e8c:	f8a4 0052 	strh.w	r0, [r4, #82]	; 0x52
 8001e90:	f8b4 1052 	ldrh.w	r1, [r4, #82]	; 0x52
 8001e94:	69f0      	ldr	r0, [r6, #28]
 8001e96:	2900      	cmp	r1, #0
 8001e98:	d1d1      	bne.n	8001e3e <HAL_UART_Transmit+0x64>
 8001e9a:	e010      	b.n	8001ebe <HAL_UART_Transmit+0xe4>
 8001e9c:	465e      	mov	r6, fp
 8001e9e:	6830      	ldr	r0, [r6, #0]
 8001ea0:	f420 70d0 	bic.w	r0, r0, #416	; 0x1a0
 8001ea4:	6030      	str	r0, [r6, #0]
 8001ea6:	68b0      	ldr	r0, [r6, #8]
 8001ea8:	f020 0001 	bic.w	r0, r0, #1
 8001eac:	60b0      	str	r0, [r6, #8]
 8001eae:	2020      	movs	r0, #32
 8001eb0:	6760      	str	r0, [r4, #116]	; 0x74
 8001eb2:	67a0      	str	r0, [r4, #120]	; 0x78
 8001eb4:	2000      	movs	r0, #0
 8001eb6:	6720      	str	r0, [r4, #112]	; 0x70
 8001eb8:	2003      	movs	r0, #3
 8001eba:	e7a5      	b.n	8001e08 <HAL_UART_Transmit+0x2e>
 8001ebc:	465e      	mov	r6, fp
 8001ebe:	0640      	lsls	r0, r0, #25
 8001ec0:	d411      	bmi.n	8001ee6 <HAL_UART_Transmit+0x10c>
 8001ec2:	f105 0901 	add.w	r9, r5, #1
 8001ec6:	4630      	mov	r0, r6
 8001ec8:	f1b9 0f00 	cmp.w	r9, #0
 8001ecc:	d007      	beq.n	8001ede <HAL_UART_Transmit+0x104>
 8001ece:	b17d      	cbz	r5, 8001ef0 <HAL_UART_Transmit+0x116>
 8001ed0:	f7ff f9a2 	bl	8001218 <HAL_GetTick>
 8001ed4:	eba0 0108 	sub.w	r1, r0, r8
 8001ed8:	6820      	ldr	r0, [r4, #0]
 8001eda:	42a9      	cmp	r1, r5
 8001edc:	d809      	bhi.n	8001ef2 <HAL_UART_Transmit+0x118>
 8001ede:	69c1      	ldr	r1, [r0, #28]
 8001ee0:	f011 0f40 	tst.w	r1, #64	; 0x40
 8001ee4:	d0f0      	beq.n	8001ec8 <HAL_UART_Transmit+0xee>
 8001ee6:	2020      	movs	r0, #32
 8001ee8:	6760      	str	r0, [r4, #116]	; 0x74
 8001eea:	2000      	movs	r0, #0
 8001eec:	6720      	str	r0, [r4, #112]	; 0x70
 8001eee:	e78b      	b.n	8001e08 <HAL_UART_Transmit+0x2e>
 8001ef0:	4630      	mov	r0, r6
 8001ef2:	6801      	ldr	r1, [r0, #0]
 8001ef4:	f421 71d0 	bic.w	r1, r1, #416	; 0x1a0
 8001ef8:	6001      	str	r1, [r0, #0]
 8001efa:	6881      	ldr	r1, [r0, #8]
 8001efc:	f021 0101 	bic.w	r1, r1, #1
 8001f00:	6081      	str	r1, [r0, #8]
 8001f02:	e7d4      	b.n	8001eae <HAL_UART_Transmit+0xd4>

08001f04 <BSP_COM_Init>:
 8001f04:	b5f0      	push	{r4, r5, r6, r7, lr}
 8001f06:	af03      	add	r7, sp, #12
 8001f08:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8001f0c:	b086      	sub	sp, #24
 8001f0e:	4605      	mov	r5, r0
 8001f10:	4688      	mov	r8, r1
 8001f12:	b9f5      	cbnz	r5, 8001f52 <BSP_COM_Init+0x4e>
 8001f14:	f241 004c 	movw	r0, #4172	; 0x104c
 8001f18:	f2c4 0002 	movt	r0, #16386	; 0x4002
 8001f1c:	6801      	ldr	r1, [r0, #0]
 8001f1e:	f041 0102 	orr.w	r1, r1, #2
 8001f22:	6001      	str	r1, [r0, #0]
 8001f24:	6801      	ldr	r1, [r0, #0]
 8001f26:	f001 0102 	and.w	r1, r1, #2
 8001f2a:	9101      	str	r1, [sp, #4]
 8001f2c:	9901      	ldr	r1, [sp, #4]
 8001f2e:	6801      	ldr	r1, [r0, #0]
 8001f30:	f041 0102 	orr.w	r1, r1, #2
 8001f34:	6001      	str	r1, [r0, #0]
 8001f36:	6801      	ldr	r1, [r0, #0]
 8001f38:	f001 0102 	and.w	r1, r1, #2
 8001f3c:	9101      	str	r1, [sp, #4]
 8001f3e:	9901      	ldr	r1, [sp, #4]
 8001f40:	6941      	ldr	r1, [r0, #20]
 8001f42:	f441 4180 	orr.w	r1, r1, #16384	; 0x4000
 8001f46:	6141      	str	r1, [r0, #20]
 8001f48:	6940      	ldr	r0, [r0, #20]
 8001f4a:	f400 4080 	and.w	r0, r0, #16384	; 0x4000
 8001f4e:	9001      	str	r0, [sp, #4]
 8001f50:	9801      	ldr	r0, [sp, #4]
 8001f52:	2040      	movs	r0, #64	; 0x40
 8001f54:	2402      	movs	r4, #2
 8001f56:	ae01      	add	r6, sp, #4
 8001f58:	f04f 0907 	mov.w	r9, #7
 8001f5c:	9001      	str	r0, [sp, #4]
 8001f5e:	2000      	movs	r0, #0
 8001f60:	9402      	str	r4, [sp, #8]
 8001f62:	9404      	str	r4, [sp, #16]
 8001f64:	4631      	mov	r1, r6
 8001f66:	9003      	str	r0, [sp, #12]
 8001f68:	f240 000c 	movw	r0, #12
 8001f6c:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f70:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f74:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f78:	f7ff f9a7 	bl	80012ca <HAL_GPIO_Init>
 8001f7c:	2080      	movs	r0, #128	; 0x80
 8001f7e:	4631      	mov	r1, r6
 8001f80:	e9cd 0401 	strd	r0, r4, [sp, #4]
 8001f84:	f240 0010 	movw	r0, #16
 8001f88:	f8cd 9014 	str.w	r9, [sp, #20]
 8001f8c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001f90:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001f94:	f7ff f999 	bl	80012ca <HAL_GPIO_Init>
 8001f98:	f240 0008 	movw	r0, #8
 8001f9c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fa0:	f850 0025 	ldr.w	r0, [r0, r5, lsl #2]
 8001fa4:	f8c8 0000 	str.w	r0, [r8]
 8001fa8:	4640      	mov	r0, r8
 8001faa:	f7ff fcff 	bl	80019ac <HAL_UART_Init>
 8001fae:	b006      	add	sp, #24
 8001fb0:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8001fb4:	bdf0      	pop	{r4, r5, r6, r7, pc}

08001fb6 <__io_putchar>:
 8001fb6:	b580      	push	{r7, lr}
 8001fb8:	466f      	mov	r7, sp
 8001fba:	b082      	sub	sp, #8
 8001fbc:	9001      	str	r0, [sp, #4]
 8001fbe:	f640 10e4 	movw	r0, #2532	; 0x9e4
 8001fc2:	a901      	add	r1, sp, #4
 8001fc4:	2201      	movs	r2, #1
 8001fc6:	f64f 73ff 	movw	r3, #65535	; 0xffff
 8001fca:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8001fce:	f7ff ff04 	bl	8001dda <HAL_UART_Transmit>
 8001fd2:	9801      	ldr	r0, [sp, #4]
 8001fd4:	b002      	add	sp, #8
 8001fd6:	bd80      	pop	{r7, pc}

08001fd8 <main>:
 8001fd8:	b5b0      	push	{r4, r5, r7, lr}
 8001fda:	af02      	add	r7, sp, #8
 8001fdc:	f640 11e4 	movw	r1, #2532	; 0x9e4
 8001fe0:	f643 0000 	movw	r0, #14336	; 0x3800
 8001fe4:	220c      	movs	r2, #12
 8001fe6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8001fea:	f2c4 0001 	movt	r0, #16385	; 0x4001
 8001fee:	6008      	str	r0, [r1, #0]
 8001ff0:	f44f 30e1 	mov.w	r0, #115200	; 0x1c200
 8001ff4:	6048      	str	r0, [r1, #4]
 8001ff6:	2000      	movs	r0, #0
 8001ff8:	e9c1 0002 	strd	r0, r0, [r1, #8]
 8001ffc:	6108      	str	r0, [r1, #16]
 8001ffe:	6248      	str	r0, [r1, #36]	; 0x24
 8002000:	e9c1 0007 	strd	r0, r0, [r1, #28]
 8002004:	e9c1 2005 	strd	r2, r0, [r1, #20]
 8002008:	2000      	movs	r0, #0
 800200a:	f7ff ff7b 	bl	8001f04 <BSP_COM_Init>
 800200e:	f002 f938 	bl	8004282 <initialise_benchmark>
 8002012:	f249 706c 	movw	r0, #38764	; 0x976c
 8002016:	f6c0 0000 	movt	r0, #2048	; 0x800
 800201a:	f002 fd79 	bl	8004b10 <printf>
 800201e:	f649 0016 	movw	r0, #38934	; 0x9816
 8002022:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002026:	f002 fdd5 	bl	8004bd4 <puts>
 800202a:	f7ff f8dd 	bl	80011e8 <HAL_Init>
 800202e:	f7ff f8f3 	bl	8001218 <HAL_GetTick>
 8002032:	4604      	mov	r4, r0
 8002034:	f002 f8fe 	bl	8004234 <benchmark>
 8002038:	4605      	mov	r5, r0
 800203a:	f7ff f8ed 	bl	8001218 <HAL_GetTick>
 800203e:	1b04      	subs	r4, r0, r4
 8002040:	4628      	mov	r0, r5
 8002042:	f002 f92e 	bl	80042a2 <verify_benchmark>
 8002046:	1c41      	adds	r1, r0, #1
 8002048:	d006      	beq.n	8002058 <main+0x80>
 800204a:	2801      	cmp	r0, #1
 800204c:	d109      	bne.n	8002062 <main+0x8a>
 800204e:	f249 7082 	movw	r0, #38786	; 0x9782
 8002052:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002056:	e008      	b.n	800206a <main+0x92>
 8002058:	f249 70a6 	movw	r0, #38822	; 0x97a6
 800205c:	f6c0 0000 	movt	r0, #2048	; 0x800
 8002060:	e003      	b.n	800206a <main+0x92>
 8002062:	f249 70db 	movw	r0, #38875	; 0x97db
 8002066:	f6c0 0000 	movt	r0, #2048	; 0x800
 800206a:	4621      	mov	r1, r4
 800206c:	f002 fd50 	bl	8004b10 <printf>
 8002070:	2000      	movs	r0, #0
 8002072:	bdb0      	pop	{r4, r5, r7, pc}

08002074 <qrencode>:
 8002074:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002076:	af03      	add	r7, sp, #12
 8002078:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 800207c:	b089      	sub	sp, #36	; 0x24
 800207e:	f640 24fc 	movw	r4, #2812	; 0xafc
 8002082:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8002086:	6825      	ldr	r5, [r4, #0]
 8002088:	4628      	mov	r0, r5
 800208a:	f7fe fb59 	bl	8000740 <strlen>
 800208e:	f640 3102 	movw	r1, #2818	; 0xb02
 8002092:	f640 3200 	movw	r2, #2816	; 0xb00
 8002096:	f640 3301 	movw	r3, #2817	; 0xb01
 800209a:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800209e:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80020a2:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80020a6:	7809      	ldrb	r1, [r1, #0]
 80020a8:	7812      	ldrb	r2, [r2, #0]
 80020aa:	781b      	ldrb	r3, [r3, #0]
 80020ac:	4411      	add	r1, r2
 80020ae:	fb11 2c03 	smlabb	ip, r1, r3, r2
 80020b2:	f640 3108 	movw	r1, #2824	; 0xb08
 80020b6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80020ba:	f1ac 0302 	sub.w	r3, ip, #2
 80020be:	780a      	ldrb	r2, [r1, #0]
 80020c0:	4298      	cmp	r0, r3
 80020c2:	d304      	bcc.n	80020ce <qrencode+0x5a>
 80020c4:	2a09      	cmp	r2, #9
 80020c6:	bf88      	it	hi
 80020c8:	f1ac 0303 	subhi.w	r3, ip, #3
 80020cc:	4618      	mov	r0, r3
 80020ce:	2a09      	cmp	r2, #9
 80020d0:	d922      	bls.n	8002118 <qrencode+0xa4>
 80020d2:	2800      	cmp	r0, #0
 80020d4:	eb05 0200 	add.w	r2, r5, r0
 80020d8:	f04f 0300 	mov.w	r3, #0
 80020dc:	7093      	strb	r3, [r2, #2]
 80020de:	d011      	beq.n	8002104 <qrencode+0x90>
 80020e0:	4602      	mov	r2, r0
 80020e2:	6823      	ldr	r3, [r4, #0]
 80020e4:	4413      	add	r3, r2
 80020e6:	f813 6c01 	ldrb.w	r6, [r3, #-1]
 80020ea:	789d      	ldrb	r5, [r3, #2]
 80020ec:	ea45 1606 	orr.w	r6, r5, r6, lsl #4
 80020f0:	709e      	strb	r6, [r3, #2]
 80020f2:	6823      	ldr	r3, [r4, #0]
 80020f4:	4413      	add	r3, r2
 80020f6:	3a01      	subs	r2, #1
 80020f8:	f813 6c01 	ldrb.w	r6, [r3, #-1]
 80020fc:	ea4f 1616 	mov.w	r6, r6, lsr #4
 8002100:	705e      	strb	r6, [r3, #1]
 8002102:	d1ee      	bne.n	80020e2 <qrencode+0x6e>
 8002104:	6822      	ldr	r2, [r4, #0]
 8002106:	7893      	ldrb	r3, [r2, #2]
 8002108:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
 800210c:	7093      	strb	r3, [r2, #2]
 800210e:	0903      	lsrs	r3, r0, #4
 8002110:	6822      	ldr	r2, [r4, #0]
 8002112:	7053      	strb	r3, [r2, #1]
 8002114:	220c      	movs	r2, #12
 8002116:	e01d      	b.n	8002154 <qrencode+0xe0>
 8002118:	2800      	cmp	r0, #0
 800211a:	eb05 0200 	add.w	r2, r5, r0
 800211e:	f04f 0300 	mov.w	r3, #0
 8002122:	7053      	strb	r3, [r2, #1]
 8002124:	d010      	beq.n	8002148 <qrencode+0xd4>
 8002126:	4602      	mov	r2, r0
 8002128:	6823      	ldr	r3, [r4, #0]
 800212a:	4413      	add	r3, r2
 800212c:	f813 6c01 	ldrb.w	r6, [r3, #-1]
 8002130:	785d      	ldrb	r5, [r3, #1]
 8002132:	ea45 1606 	orr.w	r6, r5, r6, lsl #4
 8002136:	705e      	strb	r6, [r3, #1]
 8002138:	6823      	ldr	r3, [r4, #0]
 800213a:	189e      	adds	r6, r3, r2
 800213c:	f816 6c01 	ldrb.w	r6, [r6, #-1]
 8002140:	0936      	lsrs	r6, r6, #4
 8002142:	549e      	strb	r6, [r3, r2]
 8002144:	3a01      	subs	r2, #1
 8002146:	d1ef      	bne.n	8002128 <qrencode+0xb4>
 8002148:	6822      	ldr	r2, [r4, #0]
 800214a:	7853      	ldrb	r3, [r2, #1]
 800214c:	ea43 1300 	orr.w	r3, r3, r0, lsl #4
 8002150:	7053      	strb	r3, [r2, #1]
 8002152:	2204      	movs	r2, #4
 8002154:	6823      	ldr	r3, [r4, #0]
 8002156:	fa20 f202 	lsr.w	r2, r0, r2
 800215a:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 800215e:	701a      	strb	r2, [r3, #0]
 8002160:	7809      	ldrb	r1, [r1, #0]
 8002162:	290a      	cmp	r1, #10
 8002164:	bf38      	it	cc
 8002166:	3801      	subcc	r0, #1
 8002168:	f8d4 9000 	ldr.w	r9, [r4]
 800216c:	3003      	adds	r0, #3
 800216e:	4560      	cmp	r0, ip
 8002170:	d20b      	bcs.n	800218a <qrencode+0x116>
 8002172:	21ec      	movs	r1, #236	; 0xec
 8002174:	2211      	movs	r2, #17
 8002176:	f809 1000 	strb.w	r1, [r9, r0]
 800217a:	6823      	ldr	r3, [r4, #0]
 800217c:	4403      	add	r3, r0
 800217e:	3002      	adds	r0, #2
 8002180:	705a      	strb	r2, [r3, #1]
 8002182:	4560      	cmp	r0, ip
 8002184:	f8d4 9000 	ldr.w	r9, [r4]
 8002188:	d3f5      	bcc.n	8002176 <qrencode+0x102>
 800218a:	f640 3810 	movw	r8, #2832	; 0xb10
 800218e:	f640 20f4 	movw	r0, #2804	; 0xaf4
 8002192:	2101      	movs	r1, #1
 8002194:	eb09 0b0c 	add.w	fp, r9, ip
 8002198:	f2c2 0800 	movt	r8, #8192	; 0x2000
 800219c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80021a0:	f898 e000 	ldrb.w	lr, [r8]
 80021a4:	6800      	ldr	r0, [r0, #0]
 80021a6:	f1be 0f00 	cmp.w	lr, #0
 80021aa:	7001      	strb	r1, [r0, #0]
 80021ac:	f8cd c020 	str.w	ip, [sp, #32]
 80021b0:	d04d      	beq.n	800224e <qrencode+0x1da>
 80021b2:	f249 1af8 	movw	sl, #37368	; 0x91f8
 80021b6:	f649 0618 	movw	r6, #38936	; 0x9818
 80021ba:	2400      	movs	r4, #0
 80021bc:	f6c0 0a00 	movt	sl, #2048	; 0x800
 80021c0:	f6c0 0600 	movt	r6, #2048	; 0x800
 80021c4:	f104 0801 	add.w	r8, r4, #1
 80021c8:	2101      	movs	r1, #1
 80021ca:	2c00      	cmp	r4, #0
 80021cc:	f800 1008 	strb.w	r1, [r0, r8]
 80021d0:	d01a      	beq.n	8002208 <qrencode+0x194>
 80021d2:	4623      	mov	r3, r4
 80021d4:	4621      	mov	r1, r4
 80021d6:	1842      	adds	r2, r0, r1
 80021d8:	5c45      	ldrb	r5, [r0, r1]
 80021da:	f812 2c01 	ldrb.w	r2, [r2, #-1]
 80021de:	b175      	cbz	r5, 80021fe <qrencode+0x18a>
 80021e0:	f81a 5005 	ldrb.w	r5, [sl, r5]
 80021e4:	4425      	add	r5, r4
 80021e6:	2dff      	cmp	r5, #255	; 0xff
 80021e8:	d306      	bcc.n	80021f8 <qrencode+0x184>
 80021ea:	3dff      	subs	r5, #255	; 0xff
 80021ec:	ea4f 2c15 	mov.w	ip, r5, lsr #8
 80021f0:	fa5c f585 	uxtab	r5, ip, r5
 80021f4:	2dfe      	cmp	r5, #254	; 0xfe
 80021f6:	d8f8      	bhi.n	80021ea <qrencode+0x176>
 80021f8:	5d75      	ldrb	r5, [r6, r5]
 80021fa:	406a      	eors	r2, r5
 80021fc:	b2d2      	uxtb	r2, r2
 80021fe:	3b01      	subs	r3, #1
 8002200:	5442      	strb	r2, [r0, r1]
 8002202:	b2d9      	uxtb	r1, r3
 8002204:	2900      	cmp	r1, #0
 8002206:	d1e6      	bne.n	80021d6 <qrencode+0x162>
 8002208:	7801      	ldrb	r1, [r0, #0]
 800220a:	f81a 1001 	ldrb.w	r1, [sl, r1]
 800220e:	4421      	add	r1, r4
 8002210:	29ff      	cmp	r1, #255	; 0xff
 8002212:	d305      	bcc.n	8002220 <qrencode+0x1ac>
 8002214:	39ff      	subs	r1, #255	; 0xff
 8002216:	0a0a      	lsrs	r2, r1, #8
 8002218:	fa52 f181 	uxtab	r1, r2, r1
 800221c:	29fe      	cmp	r1, #254	; 0xfe
 800221e:	d8f9      	bhi.n	8002214 <qrencode+0x1a0>
 8002220:	5c71      	ldrb	r1, [r6, r1]
 8002222:	45f0      	cmp	r8, lr
 8002224:	4644      	mov	r4, r8
 8002226:	7001      	strb	r1, [r0, #0]
 8002228:	d1cc      	bne.n	80021c4 <qrencode+0x150>
 800222a:	f81a 1001 	ldrb.w	r1, [sl, r1]
 800222e:	f640 3810 	movw	r8, #2832	; 0xb10
 8002232:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8002236:	7001      	strb	r1, [r0, #0]
 8002238:	2101      	movs	r1, #1
 800223a:	b2ca      	uxtb	r2, r1
 800223c:	3101      	adds	r1, #1
 800223e:	5c83      	ldrb	r3, [r0, r2]
 8002240:	f81a 3003 	ldrb.w	r3, [sl, r3]
 8002244:	5483      	strb	r3, [r0, r2]
 8002246:	b2ca      	uxtb	r2, r1
 8002248:	4572      	cmp	r2, lr
 800224a:	d9f6      	bls.n	800223a <qrencode+0x1c6>
 800224c:	e001      	b.n	8002252 <qrencode+0x1de>
 800224e:	2100      	movs	r1, #0
 8002250:	7001      	strb	r1, [r0, #0]
 8002252:	f640 3001 	movw	r0, #2817	; 0xb01
 8002256:	f640 3a02 	movw	sl, #2818	; 0xb02
 800225a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800225e:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8002262:	7801      	ldrb	r1, [r0, #0]
 8002264:	f89a 0000 	ldrb.w	r0, [sl]
 8002268:	b1e0      	cbz	r0, 80022a4 <qrencode+0x230>
 800226a:	f898 0000 	ldrb.w	r0, [r8]
 800226e:	f640 25f4 	movw	r5, #2804	; 0xaf4
 8002272:	f640 3601 	movw	r6, #2817	; 0xb01
 8002276:	2400      	movs	r4, #0
 8002278:	f2c2 0500 	movt	r5, #8192	; 0x2000
 800227c:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002280:	682a      	ldr	r2, [r5, #0]
 8002282:	b2c3      	uxtb	r3, r0
 8002284:	b2c9      	uxtb	r1, r1
 8002286:	4648      	mov	r0, r9
 8002288:	9200      	str	r2, [sp, #0]
 800228a:	465a      	mov	r2, fp
 800228c:	f001 f82f 	bl	80032ee <appendrs>
 8002290:	f898 0000 	ldrb.w	r0, [r8]
 8002294:	7831      	ldrb	r1, [r6, #0]
 8002296:	f89a 2000 	ldrb.w	r2, [sl]
 800229a:	3401      	adds	r4, #1
 800229c:	4483      	add	fp, r0
 800229e:	4489      	add	r9, r1
 80022a0:	4294      	cmp	r4, r2
 80022a2:	d3ed      	bcc.n	8002280 <qrencode+0x20c>
 80022a4:	f640 3000 	movw	r0, #2816	; 0xb00
 80022a8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80022ac:	7800      	ldrb	r0, [r0, #0]
 80022ae:	b320      	cbz	r0, 80022fa <qrencode+0x286>
 80022b0:	f898 0000 	ldrb.w	r0, [r8]
 80022b4:	f640 3600 	movw	r6, #2816	; 0xb00
 80022b8:	f640 3501 	movw	r5, #2817	; 0xb01
 80022bc:	2400      	movs	r4, #0
 80022be:	f2c2 0600 	movt	r6, #8192	; 0x2000
 80022c2:	f2c2 0500 	movt	r5, #8192	; 0x2000
 80022c6:	f640 22f4 	movw	r2, #2804	; 0xaf4
 80022ca:	b2c3      	uxtb	r3, r0
 80022cc:	1c48      	adds	r0, r1, #1
 80022ce:	f2c2 0200 	movt	r2, #8192	; 0x2000
 80022d2:	b2c1      	uxtb	r1, r0
 80022d4:	4648      	mov	r0, r9
 80022d6:	6812      	ldr	r2, [r2, #0]
 80022d8:	9200      	str	r2, [sp, #0]
 80022da:	465a      	mov	r2, fp
 80022dc:	f001 f807 	bl	80032ee <appendrs>
 80022e0:	7829      	ldrb	r1, [r5, #0]
 80022e2:	f898 0000 	ldrb.w	r0, [r8]
 80022e6:	3401      	adds	r4, #1
 80022e8:	eb09 0201 	add.w	r2, r9, r1
 80022ec:	4483      	add	fp, r0
 80022ee:	f102 0901 	add.w	r9, r2, #1
 80022f2:	7832      	ldrb	r2, [r6, #0]
 80022f4:	4294      	cmp	r4, r2
 80022f6:	d3e6      	bcc.n	80022c6 <qrencode+0x252>
 80022f8:	e000      	b.n	80022fc <qrencode+0x288>
 80022fa:	2200      	movs	r2, #0
 80022fc:	f640 28f4 	movw	r8, #2804	; 0xaf4
 8002300:	f640 2efc 	movw	lr, #2812	; 0xafc
 8002304:	f640 3900 	movw	r9, #2816	; 0xb00
 8002308:	f640 3b01 	movw	fp, #2817	; 0xb01
 800230c:	2900      	cmp	r1, #0
 800230e:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8002312:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 8002316:	f2c2 0900 	movt	r9, #8192	; 0x2000
 800231a:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 800231e:	f8d8 0000 	ldr.w	r0, [r8]
 8002322:	d056      	beq.n	80023d2 <qrencode+0x35e>
 8002324:	2100      	movs	r1, #0
 8002326:	f04f 0c01 	mov.w	ip, #1
 800232a:	4615      	mov	r5, r2
 800232c:	f89a 6000 	ldrb.w	r6, [sl]
 8002330:	b1be      	cbz	r6, 8002362 <qrencode+0x2ee>
 8002332:	f8de 2000 	ldr.w	r2, [lr]
 8002336:	5c56      	ldrb	r6, [r2, r1]
 8002338:	4602      	mov	r2, r0
 800233a:	f802 6b01 	strb.w	r6, [r2], #1
 800233e:	f89a 6000 	ldrb.w	r6, [sl]
 8002342:	2e02      	cmp	r6, #2
 8002344:	d311      	bcc.n	800236a <qrencode+0x2f6>
 8002346:	f89b 2000 	ldrb.w	r2, [fp]
 800234a:	2501      	movs	r5, #1
 800234c:	188c      	adds	r4, r1, r2
 800234e:	f8de 3000 	ldr.w	r3, [lr]
 8002352:	5d1b      	ldrb	r3, [r3, r4]
 8002354:	4414      	add	r4, r2
 8002356:	5543      	strb	r3, [r0, r5]
 8002358:	3501      	adds	r5, #1
 800235a:	42b5      	cmp	r5, r6
 800235c:	d3f7      	bcc.n	800234e <qrencode+0x2da>
 800235e:	4428      	add	r0, r5
 8002360:	e004      	b.n	800236c <qrencode+0x2f8>
 8002362:	2600      	movs	r6, #0
 8002364:	062d      	lsls	r5, r5, #24
 8002366:	d106      	bne.n	8002376 <qrencode+0x302>
 8002368:	e027      	b.n	80023ba <qrencode+0x346>
 800236a:	4610      	mov	r0, r2
 800236c:	f899 2000 	ldrb.w	r2, [r9]
 8002370:	4615      	mov	r5, r2
 8002372:	062d      	lsls	r5, r5, #24
 8002374:	d021      	beq.n	80023ba <qrencode+0x346>
 8002376:	f89b 2000 	ldrb.w	r2, [fp]
 800237a:	fb12 1206 	smlabb	r2, r2, r6, r1
 800237e:	f8de 6000 	ldr.w	r6, [lr]
 8002382:	5cb2      	ldrb	r2, [r6, r2]
 8002384:	4606      	mov	r6, r0
 8002386:	f806 2b01 	strb.w	r2, [r6], #1
 800238a:	f899 2000 	ldrb.w	r2, [r9]
 800238e:	2a02      	cmp	r2, #2
 8002390:	d315      	bcc.n	80023be <qrencode+0x34a>
 8002392:	f89a 6000 	ldrb.w	r6, [sl]
 8002396:	f89b 5000 	ldrb.w	r5, [fp]
 800239a:	3601      	adds	r6, #1
 800239c:	1c6c      	adds	r4, r5, #1
 800239e:	fb16 c605 	smlabb	r6, r6, r5, ip
 80023a2:	2501      	movs	r5, #1
 80023a4:	f8de 3000 	ldr.w	r3, [lr]
 80023a8:	5d9b      	ldrb	r3, [r3, r6]
 80023aa:	4426      	add	r6, r4
 80023ac:	5543      	strb	r3, [r0, r5]
 80023ae:	3501      	adds	r5, #1
 80023b0:	4295      	cmp	r5, r2
 80023b2:	d3f7      	bcc.n	80023a4 <qrencode+0x330>
 80023b4:	4428      	add	r0, r5
 80023b6:	4615      	mov	r5, r2
 80023b8:	e003      	b.n	80023c2 <qrencode+0x34e>
 80023ba:	2500      	movs	r5, #0
 80023bc:	e001      	b.n	80023c2 <qrencode+0x34e>
 80023be:	4615      	mov	r5, r2
 80023c0:	4630      	mov	r0, r6
 80023c2:	f89b 6000 	ldrb.w	r6, [fp]
 80023c6:	3101      	adds	r1, #1
 80023c8:	f10c 0c01 	add.w	ip, ip, #1
 80023cc:	42b1      	cmp	r1, r6
 80023ce:	d3ad      	bcc.n	800232c <qrencode+0x2b8>
 80023d0:	e001      	b.n	80023d6 <qrencode+0x362>
 80023d2:	2600      	movs	r6, #0
 80023d4:	2100      	movs	r1, #0
 80023d6:	0612      	lsls	r2, r2, #24
 80023d8:	d021      	beq.n	800241e <qrencode+0x3aa>
 80023da:	f89a 2000 	ldrb.w	r2, [sl]
 80023de:	f8de 3000 	ldr.w	r3, [lr]
 80023e2:	fb12 1206 	smlabb	r2, r2, r6, r1
 80023e6:	5c9a      	ldrb	r2, [r3, r2]
 80023e8:	4603      	mov	r3, r0
 80023ea:	f803 2b01 	strb.w	r2, [r3], #1
 80023ee:	f899 2000 	ldrb.w	r2, [r9]
 80023f2:	2a02      	cmp	r2, #2
 80023f4:	d315      	bcc.n	8002422 <qrencode+0x3ae>
 80023f6:	f89a 6000 	ldrb.w	r6, [sl]
 80023fa:	f89b 3000 	ldrb.w	r3, [fp]
 80023fe:	3601      	adds	r6, #1
 8002400:	fb16 1103 	smlabb	r1, r6, r3, r1
 8002404:	1c5e      	adds	r6, r3, #1
 8002406:	2301      	movs	r3, #1
 8002408:	3101      	adds	r1, #1
 800240a:	f8de 5000 	ldr.w	r5, [lr]
 800240e:	5c6d      	ldrb	r5, [r5, r1]
 8002410:	4431      	add	r1, r6
 8002412:	54c5      	strb	r5, [r0, r3]
 8002414:	3301      	adds	r3, #1
 8002416:	4293      	cmp	r3, r2
 8002418:	d3f7      	bcc.n	800240a <qrencode+0x396>
 800241a:	4418      	add	r0, r3
 800241c:	e002      	b.n	8002424 <qrencode+0x3b0>
 800241e:	2200      	movs	r2, #0
 8002420:	e000      	b.n	8002424 <qrencode+0x3b0>
 8002422:	4618      	mov	r0, r3
 8002424:	f640 3310 	movw	r3, #2832	; 0xb10
 8002428:	f89a 1000 	ldrb.w	r1, [sl]
 800242c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002430:	781e      	ldrb	r6, [r3, #0]
 8002432:	b32e      	cbz	r6, 8002480 <qrencode+0x40c>
 8002434:	f640 3810 	movw	r8, #2832	; 0xb10
 8002438:	f04f 0c00 	mov.w	ip, #0
 800243c:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8002440:	b2cd      	uxtb	r5, r1
 8002442:	b2d4      	uxtb	r4, r2
 8002444:	42ec      	cmn	r4, r5
 8002446:	d015      	beq.n	8002474 <qrencode+0x400>
 8002448:	9908      	ldr	r1, [sp, #32]
 800244a:	2500      	movs	r5, #0
 800244c:	eb0c 0401 	add.w	r4, ip, r1
 8002450:	f8de 2000 	ldr.w	r2, [lr]
 8002454:	b2f1      	uxtb	r1, r6
 8002456:	fb01 4105 	mla	r1, r1, r5, r4
 800245a:	5c51      	ldrb	r1, [r2, r1]
 800245c:	5541      	strb	r1, [r0, r5]
 800245e:	3501      	adds	r5, #1
 8002460:	f89a 1000 	ldrb.w	r1, [sl]
 8002464:	f899 2000 	ldrb.w	r2, [r9]
 8002468:	f898 6000 	ldrb.w	r6, [r8]
 800246c:	1853      	adds	r3, r2, r1
 800246e:	429d      	cmp	r5, r3
 8002470:	d3ee      	bcc.n	8002450 <qrencode+0x3dc>
 8002472:	4428      	add	r0, r5
 8002474:	b2f5      	uxtb	r5, r6
 8002476:	f10c 0c01 	add.w	ip, ip, #1
 800247a:	45ac      	cmp	ip, r5
 800247c:	d3e0      	bcc.n	8002440 <qrencode+0x3cc>
 800247e:	e000      	b.n	8002482 <qrencode+0x40e>
 8002480:	2500      	movs	r5, #0
 8002482:	b2c8      	uxtb	r0, r1
 8002484:	9908      	ldr	r1, [sp, #32]
 8002486:	fa50 f082 	uxtab	r0, r0, r2
 800248a:	fb10 1205 	smlabb	r2, r0, r5, r1
 800248e:	f640 20f4 	movw	r0, #2804	; 0xaf4
 8002492:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002496:	4605      	mov	r5, r0
 8002498:	f8de 0000 	ldr.w	r0, [lr]
 800249c:	6829      	ldr	r1, [r5, #0]
 800249e:	f001 ffc5 	bl	800442c <__aeabi_memcpy>
 80024a2:	f640 3011 	movw	r0, #2833	; 0xb11
 80024a6:	f640 24f8 	movw	r4, #2808	; 0xaf8
 80024aa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80024ae:	f2c2 0400 	movt	r4, #8192	; 0x2000
 80024b2:	7800      	ldrb	r0, [r0, #0]
 80024b4:	7821      	ldrb	r1, [r4, #0]
 80024b6:	fb11 f200 	smulbb	r2, r1, r0
 80024ba:	f640 3004 	movw	r0, #2820	; 0xb04
 80024be:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80024c2:	6801      	ldr	r1, [r0, #0]
 80024c4:	6828      	ldr	r0, [r5, #0]
 80024c6:	f001 ffb1 	bl	800442c <__aeabi_memcpy>
 80024ca:	f640 3110 	movw	r1, #2832	; 0xb10
 80024ce:	f89b 0000 	ldrb.w	r0, [fp]
 80024d2:	f899 2000 	ldrb.w	r2, [r9]
 80024d6:	7824      	ldrb	r4, [r4, #0]
 80024d8:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80024dc:	7809      	ldrb	r1, [r1, #0]
 80024de:	4408      	add	r0, r1
 80024e0:	f89a 1000 	ldrb.w	r1, [sl]
 80024e4:	4411      	add	r1, r2
 80024e6:	fb11 f100 	smulbb	r1, r1, r0
 80024ea:	42d1      	cmn	r1, r2
 80024ec:	f000 80c9 	beq.w	8002682 <qrencode+0x60e>
 80024f0:	f104 0bff 	add.w	fp, r4, #255	; 0xff
 80024f4:	2100      	movs	r1, #0
 80024f6:	2201      	movs	r2, #1
 80024f8:	f04f 0a07 	mov.w	sl, #7
 80024fc:	f04f 0901 	mov.w	r9, #1
 8002500:	f04f 0e01 	mov.w	lr, #1
 8002504:	46dc      	mov	ip, fp
 8002506:	f640 20fc 	movw	r0, #2812	; 0xafc
 800250a:	9105      	str	r1, [sp, #20]
 800250c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002510:	6803      	ldr	r3, [r0, #0]
 8002512:	5c5b      	ldrb	r3, [r3, r1]
 8002514:	2100      	movs	r1, #0
 8002516:	f013 0f80 	tst.w	r3, #128	; 0x80
 800251a:	9107      	str	r1, [sp, #28]
 800251c:	d01e      	beq.n	800255c <qrencode+0x4e8>
 800251e:	f640 3011 	movw	r0, #2833	; 0xb11
 8002522:	f640 21f4 	movw	r1, #2804	; 0xaf4
 8002526:	fa5f f48b 	uxtb.w	r4, fp
 800252a:	f00c 0607 	and.w	r6, ip, #7
 800252e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002532:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002536:	7800      	ldrb	r0, [r0, #0]
 8002538:	fb10 f004 	smulbb	r0, r0, r4
 800253c:	f00c 04f8 	and.w	r4, ip, #248	; 0xf8
 8002540:	eb00 00d4 	add.w	r0, r0, r4, lsr #3
 8002544:	680c      	ldr	r4, [r1, #0]
 8002546:	2180      	movs	r1, #128	; 0x80
 8002548:	fa21 f606 	lsr.w	r6, r1, r6
 800254c:	5c25      	ldrb	r5, [r4, r0]
 800254e:	4335      	orrs	r5, r6
 8002550:	5425      	strb	r5, [r4, r0]
 8002552:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002556:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800255a:	7804      	ldrb	r4, [r0, #0]
 800255c:	b2d8      	uxtb	r0, r3
 800255e:	9408      	str	r4, [sp, #32]
 8002560:	9006      	str	r0, [sp, #24]
 8002562:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8002566:	fa50 f884 	uxtab	r8, r0, r4
 800256a:	f640 3014 	movw	r0, #2836	; 0xb14
 800256e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002572:	6803      	ldr	r3, [r0, #0]
 8002574:	ea5f 6509 	movs.w	r5, r9, lsl #24
 8002578:	d002      	beq.n	8002580 <qrencode+0x50c>
 800257a:	f1ac 0c01 	sub.w	ip, ip, #1
 800257e:	e036      	b.n	80025ee <qrencode+0x57a>
 8002580:	f10c 0c01 	add.w	ip, ip, #1
 8002584:	ea5f 640e 	movs.w	r4, lr, lsl #24
 8002588:	d005      	beq.n	8002596 <qrencode+0x522>
 800258a:	ea5f 640b 	movs.w	r4, fp, lsl #24
 800258e:	d018      	beq.n	80025c2 <qrencode+0x54e>
 8002590:	f1ab 0b01 	sub.w	fp, fp, #1
 8002594:	e02b      	b.n	80025ee <qrencode+0x57a>
 8002596:	fa5f f48b 	uxtb.w	r4, fp
 800259a:	4544      	cmp	r4, r8
 800259c:	d123      	bne.n	80025e6 <qrencode+0x572>
 800259e:	20fe      	movs	r0, #254	; 0xfe
 80025a0:	21f7      	movs	r1, #247	; 0xf7
 80025a2:	f04f 0e01 	mov.w	lr, #1
 80025a6:	fa50 f48c 	uxtab	r4, r0, ip
 80025aa:	b2e0      	uxtb	r0, r4
 80025ac:	2806      	cmp	r0, #6
 80025ae:	f04f 00fd 	mov.w	r0, #253	; 0xfd
 80025b2:	bf08      	it	eq
 80025b4:	fa50 f48c 	uxtabeq	r4, r0, ip
 80025b8:	9808      	ldr	r0, [sp, #32]
 80025ba:	bf08      	it	eq
 80025bc:	fa51 fb80 	uxtabeq	fp, r1, r0
 80025c0:	e00f      	b.n	80025e2 <qrencode+0x56e>
 80025c2:	20fe      	movs	r0, #254	; 0xfe
 80025c4:	f04f 0b00 	mov.w	fp, #0
 80025c8:	f04f 0e00 	mov.w	lr, #0
 80025cc:	fa50 f48c 	uxtab	r4, r0, ip
 80025d0:	20fd      	movs	r0, #253	; 0xfd
 80025d2:	b2e1      	uxtb	r1, r4
 80025d4:	2906      	cmp	r1, #6
 80025d6:	bf08      	it	eq
 80025d8:	fa50 f48c 	uxtabeq	r4, r0, ip
 80025dc:	bf08      	it	eq
 80025de:	f04f 0b09 	moveq.w	fp, #9
 80025e2:	46a4      	mov	ip, r4
 80025e4:	e003      	b.n	80025ee <qrencode+0x57a>
 80025e6:	f10b 0b01 	add.w	fp, fp, #1
 80025ea:	f04f 0e00 	mov.w	lr, #0
 80025ee:	fa5f f08b 	uxtb.w	r0, fp
 80025f2:	fa5f f48c 	uxtb.w	r4, ip
 80025f6:	4659      	mov	r1, fp
 80025f8:	f04f 0900 	mov.w	r9, #0
 80025fc:	4284      	cmp	r4, r0
 80025fe:	bf88      	it	hi
 8002600:	4661      	movhi	r1, ip
 8002602:	4284      	cmp	r4, r0
 8002604:	4660      	mov	r0, ip
 8002606:	b2ce      	uxtb	r6, r1
 8002608:	bf88      	it	hi
 800260a:	4658      	movhi	r0, fp
 800260c:	2d00      	cmp	r5, #0
 800260e:	fb16 f606 	smulbb	r6, r6, r6
 8002612:	fa56 f181 	uxtab	r1, r6, r1
 8002616:	ea4f 0151 	mov.w	r1, r1, lsr #1
 800261a:	fa51 f080 	uxtab	r0, r1, r0
 800261e:	ea4f 01d0 	mov.w	r1, r0, lsr #3
 8002622:	ea2a 0000 	bic.w	r0, sl, r0
 8002626:	5c59      	ldrb	r1, [r3, r1]
 8002628:	fa02 f000 	lsl.w	r0, r2, r0
 800262c:	bf08      	it	eq
 800262e:	f04f 0901 	moveq.w	r9, #1
 8002632:	4208      	tst	r0, r1
 8002634:	d19e      	bne.n	8002574 <qrencode+0x500>
 8002636:	9907      	ldr	r1, [sp, #28]
 8002638:	9806      	ldr	r0, [sp, #24]
 800263a:	9c08      	ldr	r4, [sp, #32]
 800263c:	3101      	adds	r1, #1
 800263e:	0043      	lsls	r3, r0, #1
 8002640:	b2c8      	uxtb	r0, r1
 8002642:	2808      	cmp	r0, #8
 8002644:	f4ff af67 	bcc.w	8002516 <qrencode+0x4a2>
 8002648:	f640 3001 	movw	r0, #2817	; 0xb01
 800264c:	f640 3110 	movw	r1, #2832	; 0xb10
 8002650:	f640 3300 	movw	r3, #2816	; 0xb00
 8002654:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002658:	f2c2 0100 	movt	r1, #8192	; 0x2000
 800265c:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002660:	7800      	ldrb	r0, [r0, #0]
 8002662:	7809      	ldrb	r1, [r1, #0]
 8002664:	781b      	ldrb	r3, [r3, #0]
 8002666:	4408      	add	r0, r1
 8002668:	f640 3102 	movw	r1, #2818	; 0xb02
 800266c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002670:	7809      	ldrb	r1, [r1, #0]
 8002672:	4419      	add	r1, r3
 8002674:	fb11 3000 	smlabb	r0, r1, r0, r3
 8002678:	9905      	ldr	r1, [sp, #20]
 800267a:	3101      	adds	r1, #1
 800267c:	4281      	cmp	r1, r0
 800267e:	f4ff af42 	bcc.w	8002506 <qrencode+0x492>
 8002682:	f640 3011 	movw	r0, #2833	; 0xb11
 8002686:	b2e1      	uxtb	r1, r4
 8002688:	f640 2bf4 	movw	fp, #2804	; 0xaf4
 800268c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002690:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8002694:	7800      	ldrb	r0, [r0, #0]
 8002696:	fb10 f201 	smulbb	r2, r0, r1
 800269a:	f640 20fc 	movw	r0, #2812	; 0xafc
 800269e:	f8db 1000 	ldr.w	r1, [fp]
 80026a2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80026a6:	6800      	ldr	r0, [r0, #0]
 80026a8:	f001 fec0 	bl	800442c <__aeabi_memcpy>
 80026ac:	2000      	movs	r0, #0
 80026ae:	2100      	movs	r1, #0
 80026b0:	f247 5430 	movw	r4, #30000	; 0x7530
 80026b4:	9003      	str	r0, [sp, #12]
 80026b6:	b2c8      	uxtb	r0, r1
 80026b8:	9402      	str	r4, [sp, #8]
 80026ba:	9104      	str	r1, [sp, #16]
 80026bc:	f000 fa80 	bl	8002bc0 <applymask>
 80026c0:	f640 20f8 	movw	r0, #2808	; 0xaf8
 80026c4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80026c8:	7800      	ldrb	r0, [r0, #0]
 80026ca:	2802      	cmp	r0, #2
 80026cc:	9001      	str	r0, [sp, #4]
 80026ce:	d35d      	bcc.n	800278c <qrencode+0x718>
 80026d0:	3801      	subs	r0, #1
 80026d2:	f8db 3000 	ldr.w	r3, [fp]
 80026d6:	2100      	movs	r1, #0
 80026d8:	2200      	movs	r2, #0
 80026da:	9008      	str	r0, [sp, #32]
 80026dc:	f640 3011 	movw	r0, #2833	; 0xb11
 80026e0:	9107      	str	r1, [sp, #28]
 80026e2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80026e6:	7800      	ldrb	r0, [r0, #0]
 80026e8:	9005      	str	r0, [sp, #20]
 80026ea:	2000      	movs	r0, #0
 80026ec:	9905      	ldr	r1, [sp, #20]
 80026ee:	f04f 0c00 	mov.w	ip, #0
 80026f2:	9206      	str	r2, [sp, #24]
 80026f4:	fb00 f801 	mul.w	r8, r0, r1
 80026f8:	3001      	adds	r0, #1
 80026fa:	fb00 f901 	mul.w	r9, r0, r1
 80026fe:	2000      	movs	r0, #0
 8002700:	f10c 0601 	add.w	r6, ip, #1
 8002704:	2507      	movs	r5, #7
 8002706:	2401      	movs	r4, #1
 8002708:	eb08 01d6 	add.w	r1, r8, r6, lsr #3
 800270c:	ea25 0206 	bic.w	r2, r5, r6
 8002710:	08f6      	lsrs	r6, r6, #3
 8002712:	5c59      	ldrb	r1, [r3, r1]
 8002714:	fa04 f202 	lsl.w	r2, r4, r2
 8002718:	ea01 0a02 	and.w	sl, r1, r2
 800271c:	ea25 010c 	bic.w	r1, r5, ip
 8002720:	fa04 fe01 	lsl.w	lr, r4, r1
 8002724:	eb08 01dc 	add.w	r1, r8, ip, lsr #3
 8002728:	f813 b001 	ldrb.w	fp, [r3, r1]
 800272c:	ea4f 01dc 	mov.w	r1, ip, lsr #3
 8002730:	ea1b 0f0e 	tst.w	fp, lr
 8002734:	d010      	beq.n	8002758 <qrencode+0x6e4>
 8002736:	f1ba 0f00 	cmp.w	sl, #0
 800273a:	d01a      	beq.n	8002772 <qrencode+0x6fe>
 800273c:	4449      	add	r1, r9
 800273e:	5c59      	ldrb	r1, [r3, r1]
 8002740:	ea11 0f0e 	tst.w	r1, lr
 8002744:	d015      	beq.n	8002772 <qrencode+0x6fe>
 8002746:	eb06 0109 	add.w	r1, r6, r9
 800274a:	5c59      	ldrb	r1, [r3, r1]
 800274c:	4211      	tst	r1, r2
 800274e:	d010      	beq.n	8002772 <qrencode+0x6fe>
 8002750:	9907      	ldr	r1, [sp, #28]
 8002752:	3103      	adds	r1, #3
 8002754:	9107      	str	r1, [sp, #28]
 8002756:	e00c      	b.n	8002772 <qrencode+0x6fe>
 8002758:	f1ba 0f00 	cmp.w	sl, #0
 800275c:	d109      	bne.n	8002772 <qrencode+0x6fe>
 800275e:	4449      	add	r1, r9
 8002760:	5c59      	ldrb	r1, [r3, r1]
 8002762:	ea11 0f0e 	tst.w	r1, lr
 8002766:	d104      	bne.n	8002772 <qrencode+0x6fe>
 8002768:	eb06 0109 	add.w	r1, r6, r9
 800276c:	5c59      	ldrb	r1, [r3, r1]
 800276e:	4211      	tst	r1, r2
 8002770:	d0ee      	beq.n	8002750 <qrencode+0x6dc>
 8002772:	9908      	ldr	r1, [sp, #32]
 8002774:	3001      	adds	r0, #1
 8002776:	fa5f fc80 	uxtb.w	ip, r0
 800277a:	458c      	cmp	ip, r1
 800277c:	dbc0      	blt.n	8002700 <qrencode+0x68c>
 800277e:	9a06      	ldr	r2, [sp, #24]
 8002780:	9908      	ldr	r1, [sp, #32]
 8002782:	3201      	adds	r2, #1
 8002784:	b2d0      	uxtb	r0, r2
 8002786:	4288      	cmp	r0, r1
 8002788:	dbb0      	blt.n	80026ec <qrencode+0x678>
 800278a:	e001      	b.n	8002790 <qrencode+0x71c>
 800278c:	2000      	movs	r0, #0
 800278e:	9007      	str	r0, [sp, #28]
 8002790:	9801      	ldr	r0, [sp, #4]
 8002792:	2800      	cmp	r0, #0
 8002794:	d054      	beq.n	8002840 <qrencode+0x7cc>
 8002796:	f8dd a01c 	ldr.w	sl, [sp, #28]
 800279a:	f640 2bf4 	movw	fp, #2804	; 0xaf4
 800279e:	f640 390c 	movw	r9, #2828	; 0xb0c
 80027a2:	f04f 0c00 	mov.w	ip, #0
 80027a6:	2400      	movs	r4, #0
 80027a8:	f04f 0800 	mov.w	r8, #0
 80027ac:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 80027b0:	f2c2 0900 	movt	r9, #8192	; 0x2000
 80027b4:	f8d9 0000 	ldr.w	r0, [r9]
 80027b8:	2100      	movs	r1, #0
 80027ba:	7001      	strb	r1, [r0, #0]
 80027bc:	f640 20f8 	movw	r0, #2808	; 0xaf8
 80027c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80027c4:	7800      	ldrb	r0, [r0, #0]
 80027c6:	b370      	cbz	r0, 8002826 <qrencode+0x7b2>
 80027c8:	2500      	movs	r5, #0
 80027ca:	2300      	movs	r3, #0
 80027cc:	2100      	movs	r1, #0
 80027ce:	2200      	movs	r2, #0
 80027d0:	f640 3011 	movw	r0, #2833	; 0xb11
 80027d4:	f8db 6000 	ldr.w	r6, [fp]
 80027d8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80027dc:	7800      	ldrb	r0, [r0, #0]
 80027de:	fb00 f00c 	mul.w	r0, r0, ip
 80027e2:	eb00 00d5 	add.w	r0, r0, r5, lsr #3
 80027e6:	5c30      	ldrb	r0, [r6, r0]
 80027e8:	2607      	movs	r6, #7
 80027ea:	43ae      	bics	r6, r5
 80027ec:	40f0      	lsrs	r0, r6
 80027ee:	f8d9 6000 	ldr.w	r6, [r9]
 80027f2:	f000 0001 	and.w	r0, r0, #1
 80027f6:	4298      	cmp	r0, r3
 80027f8:	d103      	bne.n	8002802 <qrencode+0x78e>
 80027fa:	b2cb      	uxtb	r3, r1
 80027fc:	5cf5      	ldrb	r5, [r6, r3]
 80027fe:	3501      	adds	r5, #1
 8002800:	e002      	b.n	8002808 <qrencode+0x794>
 8002802:	3101      	adds	r1, #1
 8002804:	2501      	movs	r5, #1
 8002806:	b2cb      	uxtb	r3, r1
 8002808:	54f5      	strb	r5, [r6, r3]
 800280a:	eb04 0340 	add.w	r3, r4, r0, lsl #1
 800280e:	3201      	adds	r2, #1
 8002810:	1e5c      	subs	r4, r3, #1
 8002812:	f640 23f8 	movw	r3, #2808	; 0xaf8
 8002816:	b2d5      	uxtb	r5, r2
 8002818:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800281c:	781e      	ldrb	r6, [r3, #0]
 800281e:	4603      	mov	r3, r0
 8002820:	42b5      	cmp	r5, r6
 8002822:	d3d5      	bcc.n	80027d0 <qrencode+0x75c>
 8002824:	e001      	b.n	800282a <qrencode+0x7b6>
 8002826:	2600      	movs	r6, #0
 8002828:	2100      	movs	r1, #0
 800282a:	b2c8      	uxtb	r0, r1
 800282c:	f000 fdc6 	bl	80033bc <badruns>
 8002830:	f108 0801 	add.w	r8, r8, #1
 8002834:	4482      	add	sl, r0
 8002836:	fa5f fc88 	uxtb.w	ip, r8
 800283a:	45b4      	cmp	ip, r6
 800283c:	d3ba      	bcc.n	80027b4 <qrencode+0x740>
 800283e:	e00b      	b.n	8002858 <qrencode+0x7e4>
 8002840:	f8dd a01c 	ldr.w	sl, [sp, #28]
 8002844:	f640 2bf4 	movw	fp, #2804	; 0xaf4
 8002848:	f640 390c 	movw	r9, #2828	; 0xb0c
 800284c:	2600      	movs	r6, #0
 800284e:	2400      	movs	r4, #0
 8002850:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8002854:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8002858:	2c00      	cmp	r4, #0
 800285a:	fb16 f006 	smulbb	r0, r6, r6
 800285e:	bf48      	it	mi
 8002860:	4264      	negmi	r4, r4
 8002862:	eb04 0184 	add.w	r1, r4, r4, lsl #2
 8002866:	004a      	lsls	r2, r1, #1
 8002868:	2100      	movs	r1, #0
 800286a:	4282      	cmp	r2, r0
 800286c:	d903      	bls.n	8002876 <qrencode+0x802>
 800286e:	1a12      	subs	r2, r2, r0
 8002870:	310a      	adds	r1, #10
 8002872:	4282      	cmp	r2, r0
 8002874:	d8fb      	bhi.n	800286e <qrencode+0x7fa>
 8002876:	eb01 080a 	add.w	r8, r1, sl
 800287a:	2e00      	cmp	r6, #0
 800287c:	d046      	beq.n	800290c <qrencode+0x898>
 800287e:	2000      	movs	r0, #0
 8002880:	f04f 0a00 	mov.w	sl, #0
 8002884:	f8d9 1000 	ldr.w	r1, [r9]
 8002888:	2200      	movs	r2, #0
 800288a:	700a      	strb	r2, [r1, #0]
 800288c:	f640 21f8 	movw	r1, #2808	; 0xaf8
 8002890:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002894:	7809      	ldrb	r1, [r1, #0]
 8002896:	b369      	cbz	r1, 80028f4 <qrencode+0x880>
 8002898:	2107      	movs	r1, #7
 800289a:	08c2      	lsrs	r2, r0, #3
 800289c:	2400      	movs	r4, #0
 800289e:	2300      	movs	r3, #0
 80028a0:	ea21 0c00 	bic.w	ip, r1, r0
 80028a4:	2000      	movs	r0, #0
 80028a6:	f640 3111 	movw	r1, #2833	; 0xb11
 80028aa:	b2dd      	uxtb	r5, r3
 80028ac:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80028b0:	780e      	ldrb	r6, [r1, #0]
 80028b2:	fb16 2605 	smlabb	r6, r6, r5, r2
 80028b6:	f8db 5000 	ldr.w	r5, [fp]
 80028ba:	5dae      	ldrb	r6, [r5, r6]
 80028bc:	fa26 f60c 	lsr.w	r6, r6, ip
 80028c0:	f006 0501 	and.w	r5, r6, #1
 80028c4:	f8d9 6000 	ldr.w	r6, [r9]
 80028c8:	42a5      	cmp	r5, r4
 80028ca:	d104      	bne.n	80028d6 <qrencode+0x862>
 80028cc:	b2c4      	uxtb	r4, r0
 80028ce:	5d31      	ldrb	r1, [r6, r4]
 80028d0:	3101      	adds	r1, #1
 80028d2:	5531      	strb	r1, [r6, r4]
 80028d4:	e003      	b.n	80028de <qrencode+0x86a>
 80028d6:	3001      	adds	r0, #1
 80028d8:	2401      	movs	r4, #1
 80028da:	b2c1      	uxtb	r1, r0
 80028dc:	5474      	strb	r4, [r6, r1]
 80028de:	f640 21f8 	movw	r1, #2808	; 0xaf8
 80028e2:	3301      	adds	r3, #1
 80028e4:	462c      	mov	r4, r5
 80028e6:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80028ea:	780e      	ldrb	r6, [r1, #0]
 80028ec:	b2d9      	uxtb	r1, r3
 80028ee:	42b1      	cmp	r1, r6
 80028f0:	d3d9      	bcc.n	80028a6 <qrencode+0x832>
 80028f2:	e001      	b.n	80028f8 <qrencode+0x884>
 80028f4:	2600      	movs	r6, #0
 80028f6:	2000      	movs	r0, #0
 80028f8:	b2c0      	uxtb	r0, r0
 80028fa:	f000 fd5f 	bl	80033bc <badruns>
 80028fe:	f10a 0a01 	add.w	sl, sl, #1
 8002902:	4480      	add	r8, r0
 8002904:	fa5f f08a 	uxtb.w	r0, sl
 8002908:	42b0      	cmp	r0, r6
 800290a:	d3bb      	bcc.n	8002884 <qrencode+0x810>
 800290c:	9c02      	ldr	r4, [sp, #8]
 800290e:	e9dd 0103 	ldrd	r0, r1, [sp, #12]
 8002912:	45a0      	cmp	r8, r4
 8002914:	bf38      	it	cc
 8002916:	4608      	movcc	r0, r1
 8002918:	9003      	str	r0, [sp, #12]
 800291a:	b2c0      	uxtb	r0, r0
 800291c:	2807      	cmp	r0, #7
 800291e:	d019      	beq.n	8002954 <qrencode+0x8e0>
 8002920:	f640 3011 	movw	r0, #2833	; 0xb11
 8002924:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002928:	7800      	ldrb	r0, [r0, #0]
 800292a:	fb10 f206 	smulbb	r2, r0, r6
 800292e:	f640 20fc 	movw	r0, #2812	; 0xafc
 8002932:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002936:	6801      	ldr	r1, [r0, #0]
 8002938:	f8db 0000 	ldr.w	r0, [fp]
 800293c:	f001 fd76 	bl	800442c <__aeabi_memcpy>
 8002940:	9904      	ldr	r1, [sp, #16]
 8002942:	45a0      	cmp	r8, r4
 8002944:	bf38      	it	cc
 8002946:	4644      	movcc	r4, r8
 8002948:	3101      	adds	r1, #1
 800294a:	b2c8      	uxtb	r0, r1
 800294c:	2808      	cmp	r0, #8
 800294e:	f4ff aeb2 	bcc.w	80026b6 <qrencode+0x642>
 8002952:	e001      	b.n	8002958 <qrencode+0x8e4>
 8002954:	2007      	movs	r0, #7
 8002956:	9003      	str	r0, [sp, #12]
 8002958:	9c03      	ldr	r4, [sp, #12]
 800295a:	b2c9      	uxtb	r1, r1
 800295c:	b2e0      	uxtb	r0, r4
 800295e:	4288      	cmp	r0, r1
 8002960:	bf18      	it	ne
 8002962:	f000 f92d 	blne	8002bc0 <applymask>
 8002966:	f640 20f0 	movw	r0, #2800	; 0xaf0
 800296a:	f44f 61ff 	mov.w	r1, #2040	; 0x7f8
 800296e:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8002972:	f04f 0c80 	mov.w	ip, #128	; 0x80
 8002976:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800297a:	7800      	ldrb	r0, [r0, #0]
 800297c:	eb01 00c0 	add.w	r0, r1, r0, lsl #3
 8002980:	f249 21f8 	movw	r1, #37624	; 0x92f8
 8002984:	f400 60ff 	and.w	r0, r0, #2040	; 0x7f8
 8002988:	f6c0 0100 	movt	r1, #2048	; 0x800
 800298c:	fa50 f084 	uxtab	r0, r0, r4
 8002990:	f851 0020 	ldr.w	r0, [r1, r0, lsl #2]
 8002994:	2100      	movs	r1, #0
 8002996:	4686      	mov	lr, r0
 8002998:	ea5f 70ce 	movs.w	r0, lr, lsl #31
 800299c:	d026      	beq.n	80029ec <qrencode+0x978>
 800299e:	f640 3311 	movw	r3, #2833	; 0xb11
 80029a2:	f640 20f8 	movw	r0, #2808	; 0xaf8
 80029a6:	f8db 4000 	ldr.w	r4, [fp]
 80029aa:	2905      	cmp	r1, #5
 80029ac:	f2c2 0300 	movt	r3, #8192	; 0x2000
 80029b0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80029b4:	461e      	mov	r6, r3
 80029b6:	7800      	ldrb	r0, [r0, #0]
 80029b8:	7835      	ldrb	r5, [r6, #0]
 80029ba:	4410      	add	r0, r2
 80029bc:	ea4f 05c5 	mov.w	r5, r5, lsl #3
 80029c0:	eb05 05e0 	add.w	r5, r5, r0, asr #3
 80029c4:	f000 0007 	and.w	r0, r0, #7
 80029c8:	5d63      	ldrb	r3, [r4, r5]
 80029ca:	fa2c f000 	lsr.w	r0, ip, r0
 80029ce:	ea40 0003 	orr.w	r0, r0, r3
 80029d2:	5560      	strb	r0, [r4, r5]
 80029d4:	4608      	mov	r0, r1
 80029d6:	bf88      	it	hi
 80029d8:	3001      	addhi	r0, #1
 80029da:	f8db 3000 	ldr.w	r3, [fp]
 80029de:	7835      	ldrb	r5, [r6, #0]
 80029e0:	fb05 3000 	mla	r0, r5, r0, r3
 80029e4:	7843      	ldrb	r3, [r0, #1]
 80029e6:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 80029ea:	7043      	strb	r3, [r0, #1]
 80029ec:	3101      	adds	r1, #1
 80029ee:	3a01      	subs	r2, #1
 80029f0:	ea4f 005e 	mov.w	r0, lr, lsr #1
 80029f4:	2908      	cmp	r1, #8
 80029f6:	d1ce      	bne.n	8002996 <qrencode+0x922>
 80029f8:	07c0      	lsls	r0, r0, #31
 80029fa:	d01c      	beq.n	8002a36 <qrencode+0x9c2>
 80029fc:	f640 3111 	movw	r1, #2833	; 0xb11
 8002a00:	f640 22f8 	movw	r2, #2808	; 0xaf8
 8002a04:	f8db 0000 	ldr.w	r0, [fp]
 8002a08:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a0c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002a10:	460b      	mov	r3, r1
 8002a12:	7812      	ldrb	r2, [r2, #0]
 8002a14:	7819      	ldrb	r1, [r3, #0]
 8002a16:	3a07      	subs	r2, #7
 8002a18:	fb12 0001 	smlabb	r0, r2, r1, r0
 8002a1c:	7841      	ldrb	r1, [r0, #1]
 8002a1e:	f041 0180 	orr.w	r1, r1, #128	; 0x80
 8002a22:	7041      	strb	r1, [r0, #1]
 8002a24:	7818      	ldrb	r0, [r3, #0]
 8002a26:	f8db 1000 	ldr.w	r1, [fp]
 8002a2a:	f811 2030 	ldrb.w	r2, [r1, r0, lsl #3]
 8002a2e:	f042 0201 	orr.w	r2, r2, #1
 8002a32:	f801 2030 	strb.w	r2, [r1, r0, lsl #3]
 8002a36:	ea5f 704e 	movs.w	r0, lr, lsl #29
 8002a3a:	d51c      	bpl.n	8002a76 <qrencode+0xa02>
 8002a3c:	f640 3111 	movw	r1, #2833	; 0xb11
 8002a40:	f640 22f8 	movw	r2, #2808	; 0xaf8
 8002a44:	f8db 0000 	ldr.w	r0, [fp]
 8002a48:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a4c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002a50:	460b      	mov	r3, r1
 8002a52:	7812      	ldrb	r2, [r2, #0]
 8002a54:	7819      	ldrb	r1, [r3, #0]
 8002a56:	3a06      	subs	r2, #6
 8002a58:	fb12 0001 	smlabb	r0, r2, r1, r0
 8002a5c:	7841      	ldrb	r1, [r0, #1]
 8002a5e:	f041 0180 	orr.w	r1, r1, #128	; 0x80
 8002a62:	7041      	strb	r1, [r0, #1]
 8002a64:	7818      	ldrb	r0, [r3, #0]
 8002a66:	f8db 1000 	ldr.w	r1, [fp]
 8002a6a:	f811 2030 	ldrb.w	r2, [r1, r0, lsl #3]
 8002a6e:	f042 0204 	orr.w	r2, r2, #4
 8002a72:	f801 2030 	strb.w	r2, [r1, r0, lsl #3]
 8002a76:	ea5f 700e 	movs.w	r0, lr, lsl #28
 8002a7a:	d51c      	bpl.n	8002ab6 <qrencode+0xa42>
 8002a7c:	f640 3111 	movw	r1, #2833	; 0xb11
 8002a80:	f640 22f8 	movw	r2, #2808	; 0xaf8
 8002a84:	f8db 0000 	ldr.w	r0, [fp]
 8002a88:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002a8c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002a90:	460b      	mov	r3, r1
 8002a92:	7812      	ldrb	r2, [r2, #0]
 8002a94:	7819      	ldrb	r1, [r3, #0]
 8002a96:	3a05      	subs	r2, #5
 8002a98:	fb12 0001 	smlabb	r0, r2, r1, r0
 8002a9c:	7841      	ldrb	r1, [r0, #1]
 8002a9e:	f041 0180 	orr.w	r1, r1, #128	; 0x80
 8002aa2:	7041      	strb	r1, [r0, #1]
 8002aa4:	7818      	ldrb	r0, [r3, #0]
 8002aa6:	f8db 1000 	ldr.w	r1, [fp]
 8002aaa:	f811 2030 	ldrb.w	r2, [r1, r0, lsl #3]
 8002aae:	f042 0208 	orr.w	r2, r2, #8
 8002ab2:	f801 2030 	strb.w	r2, [r1, r0, lsl #3]
 8002ab6:	ea5f 60ce 	movs.w	r0, lr, lsl #27
 8002aba:	d51c      	bpl.n	8002af6 <qrencode+0xa82>
 8002abc:	f640 3111 	movw	r1, #2833	; 0xb11
 8002ac0:	f640 22f8 	movw	r2, #2808	; 0xaf8
 8002ac4:	f8db 0000 	ldr.w	r0, [fp]
 8002ac8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002acc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002ad0:	460b      	mov	r3, r1
 8002ad2:	7812      	ldrb	r2, [r2, #0]
 8002ad4:	7819      	ldrb	r1, [r3, #0]
 8002ad6:	3a04      	subs	r2, #4
 8002ad8:	fb12 0001 	smlabb	r0, r2, r1, r0
 8002adc:	7841      	ldrb	r1, [r0, #1]
 8002ade:	f041 0180 	orr.w	r1, r1, #128	; 0x80
 8002ae2:	7041      	strb	r1, [r0, #1]
 8002ae4:	7818      	ldrb	r0, [r3, #0]
 8002ae6:	f8db 1000 	ldr.w	r1, [fp]
 8002aea:	f811 2030 	ldrb.w	r2, [r1, r0, lsl #3]
 8002aee:	f042 0210 	orr.w	r2, r2, #16
 8002af2:	f801 2030 	strb.w	r2, [r1, r0, lsl #3]
 8002af6:	ea5f 608e 	movs.w	r0, lr, lsl #26
 8002afa:	d51c      	bpl.n	8002b36 <qrencode+0xac2>
 8002afc:	f640 3111 	movw	r1, #2833	; 0xb11
 8002b00:	f640 22f8 	movw	r2, #2808	; 0xaf8
 8002b04:	f8db 0000 	ldr.w	r0, [fp]
 8002b08:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002b0c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002b10:	460b      	mov	r3, r1
 8002b12:	7812      	ldrb	r2, [r2, #0]
 8002b14:	7819      	ldrb	r1, [r3, #0]
 8002b16:	3a03      	subs	r2, #3
 8002b18:	fb12 0001 	smlabb	r0, r2, r1, r0
 8002b1c:	7841      	ldrb	r1, [r0, #1]
 8002b1e:	f041 0180 	orr.w	r1, r1, #128	; 0x80
 8002b22:	7041      	strb	r1, [r0, #1]
 8002b24:	7818      	ldrb	r0, [r3, #0]
 8002b26:	f8db 1000 	ldr.w	r1, [fp]
 8002b2a:	f811 2030 	ldrb.w	r2, [r1, r0, lsl #3]
 8002b2e:	f042 0220 	orr.w	r2, r2, #32
 8002b32:	f801 2030 	strb.w	r2, [r1, r0, lsl #3]
 8002b36:	ea5f 604e 	movs.w	r0, lr, lsl #25
 8002b3a:	d51c      	bpl.n	8002b76 <qrencode+0xb02>
 8002b3c:	f640 3111 	movw	r1, #2833	; 0xb11
 8002b40:	f640 22f8 	movw	r2, #2808	; 0xaf8
 8002b44:	f8db 0000 	ldr.w	r0, [fp]
 8002b48:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002b4c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002b50:	460b      	mov	r3, r1
 8002b52:	7812      	ldrb	r2, [r2, #0]
 8002b54:	7819      	ldrb	r1, [r3, #0]
 8002b56:	3a02      	subs	r2, #2
 8002b58:	fb12 0001 	smlabb	r0, r2, r1, r0
 8002b5c:	7841      	ldrb	r1, [r0, #1]
 8002b5e:	f041 0180 	orr.w	r1, r1, #128	; 0x80
 8002b62:	7041      	strb	r1, [r0, #1]
 8002b64:	7818      	ldrb	r0, [r3, #0]
 8002b66:	f8db 1000 	ldr.w	r1, [fp]
 8002b6a:	f811 2030 	ldrb.w	r2, [r1, r0, lsl #3]
 8002b6e:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8002b72:	f801 2030 	strb.w	r2, [r1, r0, lsl #3]
 8002b76:	ea5f 600e 	movs.w	r0, lr, lsl #24
 8002b7a:	d51c      	bpl.n	8002bb6 <qrencode+0xb42>
 8002b7c:	f640 3111 	movw	r1, #2833	; 0xb11
 8002b80:	f640 22f8 	movw	r2, #2808	; 0xaf8
 8002b84:	f8db 0000 	ldr.w	r0, [fp]
 8002b88:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002b8c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002b90:	460b      	mov	r3, r1
 8002b92:	7812      	ldrb	r2, [r2, #0]
 8002b94:	7819      	ldrb	r1, [r3, #0]
 8002b96:	3a01      	subs	r2, #1
 8002b98:	fb12 0001 	smlabb	r0, r2, r1, r0
 8002b9c:	7841      	ldrb	r1, [r0, #1]
 8002b9e:	f041 0180 	orr.w	r1, r1, #128	; 0x80
 8002ba2:	7041      	strb	r1, [r0, #1]
 8002ba4:	7818      	ldrb	r0, [r3, #0]
 8002ba6:	f8db 1000 	ldr.w	r1, [fp]
 8002baa:	f811 2030 	ldrb.w	r2, [r1, r0, lsl #3]
 8002bae:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8002bb2:	f801 2030 	strb.w	r2, [r1, r0, lsl #3]
 8002bb6:	b009      	add	sp, #36	; 0x24
 8002bb8:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8002bbc:	bdf0      	pop	{r4, r5, r6, r7, pc}
	...

08002bc0 <applymask>:
 8002bc0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8002bc2:	af03      	add	r7, sp, #12
 8002bc4:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8002bc8:	b081      	sub	sp, #4
 8002bca:	2807      	cmp	r0, #7
 8002bcc:	f200 838b 	bhi.w	80032e6 <applymask+0x726>
 8002bd0:	e8df f010 	tbh	[pc, r0, lsl #1]
 8002bd4:	00650008 	.word	0x00650008
 8002bd8:	012b00c5 	.word	0x012b00c5
 8002bdc:	020d0199 	.word	0x020d0199
 8002be0:	030b028b 	.word	0x030b028b
 8002be4:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002be8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002bec:	7805      	ldrb	r5, [r0, #0]
 8002bee:	2d00      	cmp	r5, #0
 8002bf0:	f000 8379 	beq.w	80032e6 <applymask+0x726>
 8002bf4:	f640 3a14 	movw	sl, #2836	; 0xb14
 8002bf8:	2200      	movs	r2, #0
 8002bfa:	f04f 0b07 	mov.w	fp, #7
 8002bfe:	f04f 0901 	mov.w	r9, #1
 8002c02:	f04f 0e00 	mov.w	lr, #0
 8002c06:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8002c0a:	2100      	movs	r1, #0
 8002c0c:	2400      	movs	r4, #0
 8002c0e:	188b      	adds	r3, r1, r2
 8002c10:	07db      	lsls	r3, r3, #31
 8002c12:	d138      	bne.n	8002c86 <applymask+0xc6>
 8002c14:	fa5f f38e 	uxtb.w	r3, lr
 8002c18:	fa5f fc84 	uxtb.w	ip, r4
 8002c1c:	4670      	mov	r0, lr
 8002c1e:	459c      	cmp	ip, r3
 8002c20:	bf88      	it	hi
 8002c22:	4620      	movhi	r0, r4
 8002c24:	459c      	cmp	ip, r3
 8002c26:	4623      	mov	r3, r4
 8002c28:	fa5f f880 	uxtb.w	r8, r0
 8002c2c:	bf88      	it	hi
 8002c2e:	4673      	movhi	r3, lr
 8002c30:	fb18 f608 	smulbb	r6, r8, r8
 8002c34:	fa56 f080 	uxtab	r0, r6, r0
 8002c38:	f8da 6000 	ldr.w	r6, [sl]
 8002c3c:	0840      	lsrs	r0, r0, #1
 8002c3e:	fa50 f083 	uxtab	r0, r0, r3
 8002c42:	08c3      	lsrs	r3, r0, #3
 8002c44:	ea2b 0000 	bic.w	r0, fp, r0
 8002c48:	5cf3      	ldrb	r3, [r6, r3]
 8002c4a:	fa09 f000 	lsl.w	r0, r9, r0
 8002c4e:	4203      	tst	r3, r0
 8002c50:	d119      	bne.n	8002c86 <applymask+0xc6>
 8002c52:	f640 3011 	movw	r0, #2833	; 0xb11
 8002c56:	f640 23f4 	movw	r3, #2804	; 0xaf4
 8002c5a:	2580      	movs	r5, #128	; 0x80
 8002c5c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c60:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002c64:	7800      	ldrb	r0, [r0, #0]
 8002c66:	681b      	ldr	r3, [r3, #0]
 8002c68:	4350      	muls	r0, r2
 8002c6a:	eb00 00d1 	add.w	r0, r0, r1, lsr #3
 8002c6e:	f001 0107 	and.w	r1, r1, #7
 8002c72:	5c1e      	ldrb	r6, [r3, r0]
 8002c74:	fa25 f101 	lsr.w	r1, r5, r1
 8002c78:	4071      	eors	r1, r6
 8002c7a:	5419      	strb	r1, [r3, r0]
 8002c7c:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002c80:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002c84:	7805      	ldrb	r5, [r0, #0]
 8002c86:	3401      	adds	r4, #1
 8002c88:	b2eb      	uxtb	r3, r5
 8002c8a:	b2e1      	uxtb	r1, r4
 8002c8c:	4299      	cmp	r1, r3
 8002c8e:	d3be      	bcc.n	8002c0e <applymask+0x4e>
 8002c90:	f10e 0e01 	add.w	lr, lr, #1
 8002c94:	fa5f f28e 	uxtb.w	r2, lr
 8002c98:	429a      	cmp	r2, r3
 8002c9a:	d3b6      	bcc.n	8002c0a <applymask+0x4a>
 8002c9c:	e323      	b.n	80032e6 <applymask+0x726>
 8002c9e:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002ca2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002ca6:	f890 a000 	ldrb.w	sl, [r0]
 8002caa:	f1ba 0f00 	cmp.w	sl, #0
 8002cae:	f000 831a 	beq.w	80032e6 <applymask+0x726>
 8002cb2:	f04f 0800 	mov.w	r8, #0
 8002cb6:	f04f 0b07 	mov.w	fp, #7
 8002cba:	f04f 0e01 	mov.w	lr, #1
 8002cbe:	f04f 0900 	mov.w	r9, #0
 8002cc2:	f008 0401 	and.w	r4, r8, #1
 8002cc6:	2300      	movs	r3, #0
 8002cc8:	2100      	movs	r1, #0
 8002cca:	bbdc      	cbnz	r4, 8002d44 <applymask+0x184>
 8002ccc:	fa5f f689 	uxtb.w	r6, r9
 8002cd0:	b2ca      	uxtb	r2, r1
 8002cd2:	4648      	mov	r0, r9
 8002cd4:	42b2      	cmp	r2, r6
 8002cd6:	bf88      	it	hi
 8002cd8:	4608      	movhi	r0, r1
 8002cda:	42b2      	cmp	r2, r6
 8002cdc:	f640 3614 	movw	r6, #2836	; 0xb14
 8002ce0:	460a      	mov	r2, r1
 8002ce2:	b2c5      	uxtb	r5, r0
 8002ce4:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002ce8:	bf88      	it	hi
 8002cea:	464a      	movhi	r2, r9
 8002cec:	fb15 f505 	smulbb	r5, r5, r5
 8002cf0:	6836      	ldr	r6, [r6, #0]
 8002cf2:	fa55 f080 	uxtab	r0, r5, r0
 8002cf6:	0840      	lsrs	r0, r0, #1
 8002cf8:	fa50 f082 	uxtab	r0, r0, r2
 8002cfc:	08c2      	lsrs	r2, r0, #3
 8002cfe:	ea2b 0000 	bic.w	r0, fp, r0
 8002d02:	5cb2      	ldrb	r2, [r6, r2]
 8002d04:	fa0e f000 	lsl.w	r0, lr, r0
 8002d08:	4202      	tst	r2, r0
 8002d0a:	d11b      	bne.n	8002d44 <applymask+0x184>
 8002d0c:	f640 3011 	movw	r0, #2833	; 0xb11
 8002d10:	f640 22f4 	movw	r2, #2804	; 0xaf4
 8002d14:	2580      	movs	r5, #128	; 0x80
 8002d16:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d1a:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002d1e:	7800      	ldrb	r0, [r0, #0]
 8002d20:	6812      	ldr	r2, [r2, #0]
 8002d22:	fb00 f008 	mul.w	r0, r0, r8
 8002d26:	eb00 00d3 	add.w	r0, r0, r3, lsr #3
 8002d2a:	f003 0307 	and.w	r3, r3, #7
 8002d2e:	5c16      	ldrb	r6, [r2, r0]
 8002d30:	fa25 f303 	lsr.w	r3, r5, r3
 8002d34:	4073      	eors	r3, r6
 8002d36:	5413      	strb	r3, [r2, r0]
 8002d38:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002d3c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d40:	f890 a000 	ldrb.w	sl, [r0]
 8002d44:	3101      	adds	r1, #1
 8002d46:	fa5f fc8a 	uxtb.w	ip, sl
 8002d4a:	b2cb      	uxtb	r3, r1
 8002d4c:	4563      	cmp	r3, ip
 8002d4e:	d3bc      	bcc.n	8002cca <applymask+0x10a>
 8002d50:	f109 0901 	add.w	r9, r9, #1
 8002d54:	fa5f f889 	uxtb.w	r8, r9
 8002d58:	45e0      	cmp	r8, ip
 8002d5a:	d3b2      	bcc.n	8002cc2 <applymask+0x102>
 8002d5c:	e2c3      	b.n	80032e6 <applymask+0x726>
 8002d5e:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002d62:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002d66:	f890 a000 	ldrb.w	sl, [r0]
 8002d6a:	f1ba 0f00 	cmp.w	sl, #0
 8002d6e:	f000 82ba 	beq.w	80032e6 <applymask+0x726>
 8002d72:	f04f 0800 	mov.w	r8, #0
 8002d76:	f04f 0b07 	mov.w	fp, #7
 8002d7a:	f04f 0e01 	mov.w	lr, #1
 8002d7e:	f04f 0900 	mov.w	r9, #0
 8002d82:	2300      	movs	r3, #0
 8002d84:	2400      	movs	r4, #0
 8002d86:	2100      	movs	r1, #0
 8002d88:	b2e6      	uxtb	r6, r4
 8002d8a:	2e03      	cmp	r6, #3
 8002d8c:	bf08      	it	eq
 8002d8e:	2400      	moveq	r4, #0
 8002d90:	f014 0fff 	tst.w	r4, #255	; 0xff
 8002d94:	d13b      	bne.n	8002e0e <applymask+0x24e>
 8002d96:	fa5f f689 	uxtb.w	r6, r9
 8002d9a:	b2ca      	uxtb	r2, r1
 8002d9c:	4648      	mov	r0, r9
 8002d9e:	42b2      	cmp	r2, r6
 8002da0:	bf88      	it	hi
 8002da2:	4608      	movhi	r0, r1
 8002da4:	42b2      	cmp	r2, r6
 8002da6:	f640 3614 	movw	r6, #2836	; 0xb14
 8002daa:	460a      	mov	r2, r1
 8002dac:	b2c5      	uxtb	r5, r0
 8002dae:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002db2:	bf88      	it	hi
 8002db4:	464a      	movhi	r2, r9
 8002db6:	fb15 f505 	smulbb	r5, r5, r5
 8002dba:	6836      	ldr	r6, [r6, #0]
 8002dbc:	fa55 f080 	uxtab	r0, r5, r0
 8002dc0:	0840      	lsrs	r0, r0, #1
 8002dc2:	fa50 f082 	uxtab	r0, r0, r2
 8002dc6:	08c2      	lsrs	r2, r0, #3
 8002dc8:	ea2b 0000 	bic.w	r0, fp, r0
 8002dcc:	5cb2      	ldrb	r2, [r6, r2]
 8002dce:	fa0e f000 	lsl.w	r0, lr, r0
 8002dd2:	4202      	tst	r2, r0
 8002dd4:	d11b      	bne.n	8002e0e <applymask+0x24e>
 8002dd6:	f640 3011 	movw	r0, #2833	; 0xb11
 8002dda:	f640 22f4 	movw	r2, #2804	; 0xaf4
 8002dde:	2580      	movs	r5, #128	; 0x80
 8002de0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002de4:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002de8:	7800      	ldrb	r0, [r0, #0]
 8002dea:	6812      	ldr	r2, [r2, #0]
 8002dec:	fb00 f008 	mul.w	r0, r0, r8
 8002df0:	eb00 00d3 	add.w	r0, r0, r3, lsr #3
 8002df4:	f003 0307 	and.w	r3, r3, #7
 8002df8:	5c16      	ldrb	r6, [r2, r0]
 8002dfa:	fa25 f303 	lsr.w	r3, r5, r3
 8002dfe:	4073      	eors	r3, r6
 8002e00:	5413      	strb	r3, [r2, r0]
 8002e02:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002e06:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002e0a:	f890 a000 	ldrb.w	sl, [r0]
 8002e0e:	3101      	adds	r1, #1
 8002e10:	fa5f fc8a 	uxtb.w	ip, sl
 8002e14:	3401      	adds	r4, #1
 8002e16:	b2cb      	uxtb	r3, r1
 8002e18:	4563      	cmp	r3, ip
 8002e1a:	d3b5      	bcc.n	8002d88 <applymask+0x1c8>
 8002e1c:	f109 0901 	add.w	r9, r9, #1
 8002e20:	fa5f f889 	uxtb.w	r8, r9
 8002e24:	45e0      	cmp	r8, ip
 8002e26:	d3ac      	bcc.n	8002d82 <applymask+0x1c2>
 8002e28:	e25d      	b.n	80032e6 <applymask+0x726>
 8002e2a:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002e2e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002e32:	7805      	ldrb	r5, [r0, #0]
 8002e34:	2d00      	cmp	r5, #0
 8002e36:	f000 8256 	beq.w	80032e6 <applymask+0x726>
 8002e3a:	f04f 0900 	mov.w	r9, #0
 8002e3e:	f04f 0801 	mov.w	r8, #1
 8002e42:	f04f 0b00 	mov.w	fp, #0
 8002e46:	f04f 0a00 	mov.w	sl, #0
 8002e4a:	fa5f f08b 	uxtb.w	r0, fp
 8002e4e:	f04f 0c00 	mov.w	ip, #0
 8002e52:	2200      	movs	r2, #0
 8002e54:	2803      	cmp	r0, #3
 8002e56:	bf08      	it	eq
 8002e58:	f04f 0b00 	moveq.w	fp, #0
 8002e5c:	4658      	mov	r0, fp
 8002e5e:	b2c6      	uxtb	r6, r0
 8002e60:	2e03      	cmp	r6, #3
 8002e62:	bf08      	it	eq
 8002e64:	2000      	moveq	r0, #0
 8002e66:	f010 0fff 	tst.w	r0, #255	; 0xff
 8002e6a:	d13b      	bne.n	8002ee4 <applymask+0x324>
 8002e6c:	fa5f f68a 	uxtb.w	r6, sl
 8002e70:	b2d3      	uxtb	r3, r2
 8002e72:	4654      	mov	r4, sl
 8002e74:	42b3      	cmp	r3, r6
 8002e76:	bf88      	it	hi
 8002e78:	4614      	movhi	r4, r2
 8002e7a:	42b3      	cmp	r3, r6
 8002e7c:	f640 3614 	movw	r6, #2836	; 0xb14
 8002e80:	4613      	mov	r3, r2
 8002e82:	b2e1      	uxtb	r1, r4
 8002e84:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002e88:	bf88      	it	hi
 8002e8a:	4653      	movhi	r3, sl
 8002e8c:	fb11 f101 	smulbb	r1, r1, r1
 8002e90:	6836      	ldr	r6, [r6, #0]
 8002e92:	fa51 f184 	uxtab	r1, r1, r4
 8002e96:	0849      	lsrs	r1, r1, #1
 8002e98:	fa51 f183 	uxtab	r1, r1, r3
 8002e9c:	08cb      	lsrs	r3, r1, #3
 8002e9e:	5cf3      	ldrb	r3, [r6, r3]
 8002ea0:	2607      	movs	r6, #7
 8002ea2:	ea26 0101 	bic.w	r1, r6, r1
 8002ea6:	fa08 f101 	lsl.w	r1, r8, r1
 8002eaa:	420b      	tst	r3, r1
 8002eac:	d11a      	bne.n	8002ee4 <applymask+0x324>
 8002eae:	f640 3111 	movw	r1, #2833	; 0xb11
 8002eb2:	f640 23f4 	movw	r3, #2804	; 0xaf4
 8002eb6:	f00c 0507 	and.w	r5, ip, #7
 8002eba:	2480      	movs	r4, #128	; 0x80
 8002ebc:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002ec0:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8002ec4:	fa24 f505 	lsr.w	r5, r4, r5
 8002ec8:	7809      	ldrb	r1, [r1, #0]
 8002eca:	681b      	ldr	r3, [r3, #0]
 8002ecc:	fb01 f109 	mul.w	r1, r1, r9
 8002ed0:	eb01 01dc 	add.w	r1, r1, ip, lsr #3
 8002ed4:	5c5e      	ldrb	r6, [r3, r1]
 8002ed6:	406e      	eors	r6, r5
 8002ed8:	545e      	strb	r6, [r3, r1]
 8002eda:	f640 21f8 	movw	r1, #2808	; 0xaf8
 8002ede:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8002ee2:	780d      	ldrb	r5, [r1, #0]
 8002ee4:	3201      	adds	r2, #1
 8002ee6:	fa5f fe85 	uxtb.w	lr, r5
 8002eea:	3001      	adds	r0, #1
 8002eec:	fa5f fc82 	uxtb.w	ip, r2
 8002ef0:	45f4      	cmp	ip, lr
 8002ef2:	d3b4      	bcc.n	8002e5e <applymask+0x29e>
 8002ef4:	f10a 0a01 	add.w	sl, sl, #1
 8002ef8:	f10b 0b01 	add.w	fp, fp, #1
 8002efc:	fa5f f98a 	uxtb.w	r9, sl
 8002f00:	45f1      	cmp	r9, lr
 8002f02:	d3a2      	bcc.n	8002e4a <applymask+0x28a>
 8002f04:	e1ef      	b.n	80032e6 <applymask+0x726>
 8002f06:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002f0a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002f0e:	7805      	ldrb	r5, [r0, #0]
 8002f10:	2d00      	cmp	r5, #0
 8002f12:	f000 81e8 	beq.w	80032e6 <applymask+0x726>
 8002f16:	f04f 0800 	mov.w	r8, #0
 8002f1a:	f04f 0a00 	mov.w	sl, #0
 8002f1e:	f3c8 0440 	ubfx	r4, r8, #1, #1
 8002f22:	f04f 0c00 	mov.w	ip, #0
 8002f26:	2100      	movs	r1, #0
 8002f28:	2300      	movs	r3, #0
 8002f2a:	4626      	mov	r6, r4
 8002f2c:	2400      	movs	r4, #0
 8002f2e:	fa5f fe81 	uxtb.w	lr, r1
 8002f32:	f016 0fff 	tst.w	r6, #255	; 0xff
 8002f36:	bf08      	it	eq
 8002f38:	2401      	moveq	r4, #1
 8002f3a:	f1be 0f03 	cmp.w	lr, #3
 8002f3e:	bf18      	it	ne
 8002f40:	4634      	movne	r4, r6
 8002f42:	f014 0fff 	tst.w	r4, #255	; 0xff
 8002f46:	d140      	bne.n	8002fca <applymask+0x40a>
 8002f48:	fa5f f68a 	uxtb.w	r6, sl
 8002f4c:	fa5f f983 	uxtb.w	r9, r3
 8002f50:	4650      	mov	r0, sl
 8002f52:	45b1      	cmp	r9, r6
 8002f54:	bf88      	it	hi
 8002f56:	4618      	movhi	r0, r3
 8002f58:	45b1      	cmp	r9, r6
 8002f5a:	f640 3614 	movw	r6, #2836	; 0xb14
 8002f5e:	fa5f fb80 	uxtb.w	fp, r0
 8002f62:	f2c2 0600 	movt	r6, #8192	; 0x2000
 8002f66:	fb1b f20b 	smulbb	r2, fp, fp
 8002f6a:	fa52 f080 	uxtab	r0, r2, r0
 8002f6e:	461a      	mov	r2, r3
 8002f70:	bf88      	it	hi
 8002f72:	4652      	movhi	r2, sl
 8002f74:	6836      	ldr	r6, [r6, #0]
 8002f76:	0840      	lsrs	r0, r0, #1
 8002f78:	fa50 f082 	uxtab	r0, r0, r2
 8002f7c:	08c2      	lsrs	r2, r0, #3
 8002f7e:	5cb2      	ldrb	r2, [r6, r2]
 8002f80:	2607      	movs	r6, #7
 8002f82:	ea26 0000 	bic.w	r0, r6, r0
 8002f86:	2601      	movs	r6, #1
 8002f88:	fa06 f000 	lsl.w	r0, r6, r0
 8002f8c:	4202      	tst	r2, r0
 8002f8e:	d11c      	bne.n	8002fca <applymask+0x40a>
 8002f90:	f640 3011 	movw	r0, #2833	; 0xb11
 8002f94:	f640 22f4 	movw	r2, #2804	; 0xaf4
 8002f98:	f00c 0607 	and.w	r6, ip, #7
 8002f9c:	2580      	movs	r5, #128	; 0x80
 8002f9e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002fa2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8002fa6:	fa25 f606 	lsr.w	r6, r5, r6
 8002faa:	7800      	ldrb	r0, [r0, #0]
 8002fac:	6812      	ldr	r2, [r2, #0]
 8002fae:	fb00 f008 	mul.w	r0, r0, r8
 8002fb2:	eb00 00dc 	add.w	r0, r0, ip, lsr #3
 8002fb6:	f812 9000 	ldrb.w	r9, [r2, r0]
 8002fba:	ea86 0609 	eor.w	r6, r6, r9
 8002fbe:	5416      	strb	r6, [r2, r0]
 8002fc0:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002fc4:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002fc8:	7805      	ldrb	r5, [r0, #0]
 8002fca:	3301      	adds	r3, #1
 8002fcc:	3101      	adds	r1, #1
 8002fce:	f1be 0f03 	cmp.w	lr, #3
 8002fd2:	b2ee      	uxtb	r6, r5
 8002fd4:	fa5f fc83 	uxtb.w	ip, r3
 8002fd8:	bf08      	it	eq
 8002fda:	2101      	moveq	r1, #1
 8002fdc:	45b4      	cmp	ip, r6
 8002fde:	d3a4      	bcc.n	8002f2a <applymask+0x36a>
 8002fe0:	f10a 0a01 	add.w	sl, sl, #1
 8002fe4:	fa5f f88a 	uxtb.w	r8, sl
 8002fe8:	45b0      	cmp	r8, r6
 8002fea:	d398      	bcc.n	8002f1e <applymask+0x35e>
 8002fec:	e17b      	b.n	80032e6 <applymask+0x726>
 8002fee:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8002ff2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8002ff6:	f890 b000 	ldrb.w	fp, [r0]
 8002ffa:	f1bb 0f00 	cmp.w	fp, #0
 8002ffe:	f000 8172 	beq.w	80032e6 <applymask+0x726>
 8003002:	2000      	movs	r0, #0
 8003004:	f04f 0e00 	mov.w	lr, #0
 8003008:	2500      	movs	r5, #0
 800300a:	2480      	movs	r4, #128	; 0x80
 800300c:	9000      	str	r0, [sp, #0]
 800300e:	fa5f f28e 	uxtb.w	r2, lr
 8003012:	f005 0a01 	and.w	sl, r5, #1
 8003016:	f04f 0800 	mov.w	r8, #0
 800301a:	f04f 0c00 	mov.w	ip, #0
 800301e:	2a03      	cmp	r2, #3
 8003020:	f04f 0200 	mov.w	r2, #0
 8003024:	bf08      	it	eq
 8003026:	f04f 0e00 	moveq.w	lr, #0
 800302a:	b2d3      	uxtb	r3, r2
 800302c:	fa5f f18e 	uxtb.w	r1, lr
 8003030:	ea0a 000c 	and.w	r0, sl, ip
 8003034:	2b03      	cmp	r3, #3
 8003036:	bf08      	it	eq
 8003038:	2200      	moveq	r2, #0
 800303a:	b2d3      	uxtb	r3, r2
 800303c:	2b00      	cmp	r3, #0
 800303e:	bf18      	it	ne
 8003040:	2301      	movne	r3, #1
 8003042:	2900      	cmp	r1, #0
 8003044:	bf18      	it	ne
 8003046:	2101      	movne	r1, #1
 8003048:	4019      	ands	r1, r3
 800304a:	42c8      	cmn	r0, r1
 800304c:	d13c      	bne.n	80030c8 <applymask+0x508>
 800304e:	b2e8      	uxtb	r0, r5
 8003050:	fa5f f18c 	uxtb.w	r1, ip
 8003054:	462b      	mov	r3, r5
 8003056:	4281      	cmp	r1, r0
 8003058:	bf88      	it	hi
 800305a:	4663      	movhi	r3, ip
 800305c:	4281      	cmp	r1, r0
 800305e:	4660      	mov	r0, ip
 8003060:	b2de      	uxtb	r6, r3
 8003062:	bf88      	it	hi
 8003064:	4628      	movhi	r0, r5
 8003066:	fb16 f606 	smulbb	r6, r6, r6
 800306a:	fa56 f383 	uxtab	r3, r6, r3
 800306e:	085b      	lsrs	r3, r3, #1
 8003070:	fa53 f080 	uxtab	r0, r3, r0
 8003074:	f640 3314 	movw	r3, #2836	; 0xb14
 8003078:	f2c2 0300 	movt	r3, #8192	; 0x2000
 800307c:	08c1      	lsrs	r1, r0, #3
 800307e:	681b      	ldr	r3, [r3, #0]
 8003080:	5c59      	ldrb	r1, [r3, r1]
 8003082:	2307      	movs	r3, #7
 8003084:	ea23 0000 	bic.w	r0, r3, r0
 8003088:	2301      	movs	r3, #1
 800308a:	fa03 f000 	lsl.w	r0, r3, r0
 800308e:	4201      	tst	r1, r0
 8003090:	d11a      	bne.n	80030c8 <applymask+0x508>
 8003092:	f640 3011 	movw	r0, #2833	; 0xb11
 8003096:	9900      	ldr	r1, [sp, #0]
 8003098:	f008 0607 	and.w	r6, r8, #7
 800309c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80030a0:	fa24 f606 	lsr.w	r6, r4, r6
 80030a4:	7800      	ldrb	r0, [r0, #0]
 80030a6:	4348      	muls	r0, r1
 80030a8:	f640 21f4 	movw	r1, #2804	; 0xaf4
 80030ac:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80030b0:	eb00 00d8 	add.w	r0, r0, r8, lsr #3
 80030b4:	6809      	ldr	r1, [r1, #0]
 80030b6:	5c0b      	ldrb	r3, [r1, r0]
 80030b8:	4073      	eors	r3, r6
 80030ba:	540b      	strb	r3, [r1, r0]
 80030bc:	f640 20f8 	movw	r0, #2808	; 0xaf8
 80030c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80030c4:	f890 b000 	ldrb.w	fp, [r0]
 80030c8:	f10c 0c01 	add.w	ip, ip, #1
 80030cc:	fa5f f98b 	uxtb.w	r9, fp
 80030d0:	3201      	adds	r2, #1
 80030d2:	fa5f f88c 	uxtb.w	r8, ip
 80030d6:	45c8      	cmp	r8, r9
 80030d8:	d3a7      	bcc.n	800302a <applymask+0x46a>
 80030da:	3501      	adds	r5, #1
 80030dc:	f10e 0e01 	add.w	lr, lr, #1
 80030e0:	b2e8      	uxtb	r0, r5
 80030e2:	4548      	cmp	r0, r9
 80030e4:	9000      	str	r0, [sp, #0]
 80030e6:	d392      	bcc.n	800300e <applymask+0x44e>
 80030e8:	e0fd      	b.n	80032e6 <applymask+0x726>
 80030ea:	f640 20f8 	movw	r0, #2808	; 0xaf8
 80030ee:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80030f2:	f890 b000 	ldrb.w	fp, [r0]
 80030f6:	f1bb 0f00 	cmp.w	fp, #0
 80030fa:	f000 80f4 	beq.w	80032e6 <applymask+0x726>
 80030fe:	f04f 0a00 	mov.w	sl, #0
 8003102:	2401      	movs	r4, #1
 8003104:	f04f 0900 	mov.w	r9, #0
 8003108:	f04f 0e00 	mov.w	lr, #0
 800310c:	fa5f f289 	uxtb.w	r2, r9
 8003110:	f04f 0c00 	mov.w	ip, #0
 8003114:	2600      	movs	r6, #0
 8003116:	2a03      	cmp	r2, #3
 8003118:	f04f 0200 	mov.w	r2, #0
 800311c:	bf08      	it	eq
 800311e:	f04f 0900 	moveq.w	r9, #0
 8003122:	b2f0      	uxtb	r0, r6
 8003124:	fa5f f389 	uxtb.w	r3, r9
 8003128:	2803      	cmp	r0, #3
 800312a:	bf08      	it	eq
 800312c:	2600      	moveq	r6, #0
 800312e:	b2f0      	uxtb	r0, r6
 8003130:	4298      	cmp	r0, r3
 8003132:	f04f 0300 	mov.w	r3, #0
 8003136:	bf08      	it	eq
 8003138:	2301      	moveq	r3, #1
 800313a:	2800      	cmp	r0, #0
 800313c:	bf18      	it	ne
 800313e:	2001      	movne	r0, #1
 8003140:	4018      	ands	r0, r3
 8003142:	ea02 030e 	and.w	r3, r2, lr
 8003146:	4418      	add	r0, r3
 8003148:	07c0      	lsls	r0, r0, #31
 800314a:	d13d      	bne.n	80031c8 <applymask+0x608>
 800314c:	fa5f f08e 	uxtb.w	r0, lr
 8003150:	b2d3      	uxtb	r3, r2
 8003152:	4675      	mov	r5, lr
 8003154:	4283      	cmp	r3, r0
 8003156:	bf88      	it	hi
 8003158:	4615      	movhi	r5, r2
 800315a:	4283      	cmp	r3, r0
 800315c:	f640 3314 	movw	r3, #2836	; 0xb14
 8003160:	4610      	mov	r0, r2
 8003162:	b2e9      	uxtb	r1, r5
 8003164:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003168:	bf88      	it	hi
 800316a:	4670      	movhi	r0, lr
 800316c:	fb11 f101 	smulbb	r1, r1, r1
 8003170:	681b      	ldr	r3, [r3, #0]
 8003172:	fa51 f185 	uxtab	r1, r1, r5
 8003176:	0849      	lsrs	r1, r1, #1
 8003178:	fa51 f080 	uxtab	r0, r1, r0
 800317c:	08c1      	lsrs	r1, r0, #3
 800317e:	5c59      	ldrb	r1, [r3, r1]
 8003180:	2307      	movs	r3, #7
 8003182:	ea23 0000 	bic.w	r0, r3, r0
 8003186:	fa04 f000 	lsl.w	r0, r4, r0
 800318a:	4201      	tst	r1, r0
 800318c:	d11c      	bne.n	80031c8 <applymask+0x608>
 800318e:	f640 3011 	movw	r0, #2833	; 0xb11
 8003192:	f640 21f4 	movw	r1, #2804	; 0xaf4
 8003196:	f00c 0507 	and.w	r5, ip, #7
 800319a:	2480      	movs	r4, #128	; 0x80
 800319c:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80031a0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80031a4:	fa24 f505 	lsr.w	r5, r4, r5
 80031a8:	2401      	movs	r4, #1
 80031aa:	7800      	ldrb	r0, [r0, #0]
 80031ac:	6809      	ldr	r1, [r1, #0]
 80031ae:	fb00 f00a 	mul.w	r0, r0, sl
 80031b2:	eb00 00dc 	add.w	r0, r0, ip, lsr #3
 80031b6:	5c0b      	ldrb	r3, [r1, r0]
 80031b8:	406b      	eors	r3, r5
 80031ba:	540b      	strb	r3, [r1, r0]
 80031bc:	f640 20f8 	movw	r0, #2808	; 0xaf8
 80031c0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80031c4:	f890 b000 	ldrb.w	fp, [r0]
 80031c8:	3201      	adds	r2, #1
 80031ca:	fa5f f88b 	uxtb.w	r8, fp
 80031ce:	3601      	adds	r6, #1
 80031d0:	fa5f fc82 	uxtb.w	ip, r2
 80031d4:	45c4      	cmp	ip, r8
 80031d6:	d3a4      	bcc.n	8003122 <applymask+0x562>
 80031d8:	f10e 0e01 	add.w	lr, lr, #1
 80031dc:	f109 0901 	add.w	r9, r9, #1
 80031e0:	fa5f fa8e 	uxtb.w	sl, lr
 80031e4:	45c2      	cmp	sl, r8
 80031e6:	d391      	bcc.n	800310c <applymask+0x54c>
 80031e8:	e07d      	b.n	80032e6 <applymask+0x726>
 80031ea:	f640 20f8 	movw	r0, #2808	; 0xaf8
 80031ee:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80031f2:	f890 a000 	ldrb.w	sl, [r0]
 80031f6:	f1ba 0f00 	cmp.w	sl, #0
 80031fa:	d074      	beq.n	80032e6 <applymask+0x726>
 80031fc:	f04f 0b00 	mov.w	fp, #0
 8003200:	2401      	movs	r4, #1
 8003202:	f04f 0900 	mov.w	r9, #0
 8003206:	f04f 0e00 	mov.w	lr, #0
 800320a:	fa5f f289 	uxtb.w	r2, r9
 800320e:	f04f 0c00 	mov.w	ip, #0
 8003212:	2600      	movs	r6, #0
 8003214:	2a03      	cmp	r2, #3
 8003216:	f04f 0200 	mov.w	r2, #0
 800321a:	bf08      	it	eq
 800321c:	f04f 0900 	moveq.w	r9, #0
 8003220:	b2f0      	uxtb	r0, r6
 8003222:	fa5f f189 	uxtb.w	r1, r9
 8003226:	2803      	cmp	r0, #3
 8003228:	bf08      	it	eq
 800322a:	2600      	moveq	r6, #0
 800322c:	b2f0      	uxtb	r0, r6
 800322e:	4288      	cmp	r0, r1
 8003230:	f04f 0100 	mov.w	r1, #0
 8003234:	bf08      	it	eq
 8003236:	2101      	moveq	r1, #1
 8003238:	2800      	cmp	r0, #0
 800323a:	bf18      	it	ne
 800323c:	2001      	movne	r0, #1
 800323e:	4008      	ands	r0, r1
 8003240:	eb0c 010b 	add.w	r1, ip, fp
 8003244:	4408      	add	r0, r1
 8003246:	07c0      	lsls	r0, r0, #31
 8003248:	d13d      	bne.n	80032c6 <applymask+0x706>
 800324a:	fa5f f08e 	uxtb.w	r0, lr
 800324e:	b2d1      	uxtb	r1, r2
 8003250:	4675      	mov	r5, lr
 8003252:	4281      	cmp	r1, r0
 8003254:	bf88      	it	hi
 8003256:	4615      	movhi	r5, r2
 8003258:	4281      	cmp	r1, r0
 800325a:	4610      	mov	r0, r2
 800325c:	b2eb      	uxtb	r3, r5
 800325e:	bf88      	it	hi
 8003260:	4670      	movhi	r0, lr
 8003262:	fb13 f303 	smulbb	r3, r3, r3
 8003266:	fa53 f385 	uxtab	r3, r3, r5
 800326a:	085b      	lsrs	r3, r3, #1
 800326c:	fa53 f080 	uxtab	r0, r3, r0
 8003270:	f640 3314 	movw	r3, #2836	; 0xb14
 8003274:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003278:	08c1      	lsrs	r1, r0, #3
 800327a:	681b      	ldr	r3, [r3, #0]
 800327c:	5c59      	ldrb	r1, [r3, r1]
 800327e:	2307      	movs	r3, #7
 8003280:	ea23 0000 	bic.w	r0, r3, r0
 8003284:	fa04 f000 	lsl.w	r0, r4, r0
 8003288:	4201      	tst	r1, r0
 800328a:	d11c      	bne.n	80032c6 <applymask+0x706>
 800328c:	f640 3011 	movw	r0, #2833	; 0xb11
 8003290:	f640 21f4 	movw	r1, #2804	; 0xaf4
 8003294:	f00c 0507 	and.w	r5, ip, #7
 8003298:	2480      	movs	r4, #128	; 0x80
 800329a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800329e:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80032a2:	fa24 f505 	lsr.w	r5, r4, r5
 80032a6:	2401      	movs	r4, #1
 80032a8:	7800      	ldrb	r0, [r0, #0]
 80032aa:	6809      	ldr	r1, [r1, #0]
 80032ac:	fb00 f00b 	mul.w	r0, r0, fp
 80032b0:	eb00 00dc 	add.w	r0, r0, ip, lsr #3
 80032b4:	5c0b      	ldrb	r3, [r1, r0]
 80032b6:	406b      	eors	r3, r5
 80032b8:	540b      	strb	r3, [r1, r0]
 80032ba:	f640 20f8 	movw	r0, #2808	; 0xaf8
 80032be:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80032c2:	f890 a000 	ldrb.w	sl, [r0]
 80032c6:	3201      	adds	r2, #1
 80032c8:	fa5f f88a 	uxtb.w	r8, sl
 80032cc:	3601      	adds	r6, #1
 80032ce:	fa5f fc82 	uxtb.w	ip, r2
 80032d2:	45c4      	cmp	ip, r8
 80032d4:	d3a4      	bcc.n	8003220 <applymask+0x660>
 80032d6:	f10e 0e01 	add.w	lr, lr, #1
 80032da:	f109 0901 	add.w	r9, r9, #1
 80032de:	fa5f fb8e 	uxtb.w	fp, lr
 80032e2:	45c3      	cmp	fp, r8
 80032e4:	d391      	bcc.n	800320a <applymask+0x64a>
 80032e6:	b001      	add	sp, #4
 80032e8:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80032ec:	bdf0      	pop	{r4, r5, r6, r7, pc}

080032ee <appendrs>:
 80032ee:	b5f0      	push	{r4, r5, r6, r7, lr}
 80032f0:	af03      	add	r7, sp, #12
 80032f2:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 80032f6:	b083      	sub	sp, #12
 80032f8:	469b      	mov	fp, r3
 80032fa:	4615      	mov	r5, r2
 80032fc:	4688      	mov	r8, r1
 80032fe:	4606      	mov	r6, r0
 8003300:	4628      	mov	r0, r5
 8003302:	4659      	mov	r1, fp
 8003304:	f001 f88e 	bl	8004424 <__aeabi_memclr>
 8003308:	46c4      	mov	ip, r8
 800330a:	46b6      	mov	lr, r6
 800330c:	f1bc 0f00 	cmp.w	ip, #0
 8003310:	d050      	beq.n	80033b4 <appendrs+0xc6>
 8003312:	f8d7 9008 	ldr.w	r9, [r7, #8]
 8003316:	f649 0818 	movw	r8, #38936	; 0x9818
 800331a:	f1ab 0201 	sub.w	r2, fp, #1
 800331e:	1c68      	adds	r0, r5, #1
 8003320:	f04f 0a00 	mov.w	sl, #0
 8003324:	f6c0 0800 	movt	r8, #2048	; 0x800
 8003328:	9001      	str	r0, [sp, #4]
 800332a:	9202      	str	r2, [sp, #8]
 800332c:	f81e 000a 	ldrb.w	r0, [lr, sl]
 8003330:	7829      	ldrb	r1, [r5, #0]
 8003332:	4048      	eors	r0, r1
 8003334:	b2c0      	uxtb	r0, r0
 8003336:	b370      	cbz	r0, 8003396 <appendrs+0xa8>
 8003338:	f249 11f8 	movw	r1, #37368	; 0x91f8
 800333c:	f1bb 0f02 	cmp.w	fp, #2
 8003340:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003344:	5c08      	ldrb	r0, [r1, r0]
 8003346:	d318      	bcc.n	800337a <appendrs+0x8c>
 8003348:	2101      	movs	r1, #1
 800334a:	ebab 0301 	sub.w	r3, fp, r1
 800334e:	5c6c      	ldrb	r4, [r5, r1]
 8003350:	f819 3003 	ldrb.w	r3, [r9, r3]
 8003354:	4403      	add	r3, r0
 8003356:	2bff      	cmp	r3, #255	; 0xff
 8003358:	d305      	bcc.n	8003366 <appendrs+0x78>
 800335a:	3bff      	subs	r3, #255	; 0xff
 800335c:	0a1e      	lsrs	r6, r3, #8
 800335e:	fa56 f383 	uxtab	r3, r6, r3
 8003362:	2bfe      	cmp	r3, #254	; 0xfe
 8003364:	d8f9      	bhi.n	800335a <appendrs+0x6c>
 8003366:	f818 3003 	ldrb.w	r3, [r8, r3]
 800336a:	186e      	adds	r6, r5, r1
 800336c:	3101      	adds	r1, #1
 800336e:	4559      	cmp	r1, fp
 8003370:	ea83 0304 	eor.w	r3, r3, r4
 8003374:	f806 3c01 	strb.w	r3, [r6, #-1]
 8003378:	d1e7      	bne.n	800334a <appendrs+0x5c>
 800337a:	f899 1000 	ldrb.w	r1, [r9]
 800337e:	4408      	add	r0, r1
 8003380:	28ff      	cmp	r0, #255	; 0xff
 8003382:	d305      	bcc.n	8003390 <appendrs+0xa2>
 8003384:	38ff      	subs	r0, #255	; 0xff
 8003386:	0a01      	lsrs	r1, r0, #8
 8003388:	fa51 f080 	uxtab	r0, r1, r0
 800338c:	28fe      	cmp	r0, #254	; 0xfe
 800338e:	d8f9      	bhi.n	8003384 <appendrs+0x96>
 8003390:	f818 0000 	ldrb.w	r0, [r8, r0]
 8003394:	e009      	b.n	80033aa <appendrs+0xbc>
 8003396:	9901      	ldr	r1, [sp, #4]
 8003398:	4628      	mov	r0, r5
 800339a:	4666      	mov	r6, ip
 800339c:	4674      	mov	r4, lr
 800339e:	f7fd f8af 	bl	8000500 <__aeabi_memmove>
 80033a2:	9a02      	ldr	r2, [sp, #8]
 80033a4:	46a6      	mov	lr, r4
 80033a6:	46b4      	mov	ip, r6
 80033a8:	2000      	movs	r0, #0
 80033aa:	f10a 0a01 	add.w	sl, sl, #1
 80033ae:	54a8      	strb	r0, [r5, r2]
 80033b0:	45e2      	cmp	sl, ip
 80033b2:	d1bb      	bne.n	800332c <appendrs+0x3e>
 80033b4:	b003      	add	sp, #12
 80033b6:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 80033ba:	bdf0      	pop	{r4, r5, r6, r7, pc}

080033bc <badruns>:
 80033bc:	b5f0      	push	{r4, r5, r6, r7, lr}
 80033be:	af03      	add	r7, sp, #12
 80033c0:	f84d 8d04 	str.w	r8, [sp, #-4]!
 80033c4:	4686      	mov	lr, r0
 80033c6:	f640 300c 	movw	r0, #2828	; 0xb0c
 80033ca:	2100      	movs	r1, #0
 80033cc:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80033d0:	f8d0 8000 	ldr.w	r8, [r0]
 80033d4:	2000      	movs	r0, #0
 80033d6:	b2cb      	uxtb	r3, r1
 80033d8:	3101      	adds	r1, #1
 80033da:	f818 3003 	ldrb.w	r3, [r8, r3]
 80033de:	2b05      	cmp	r3, #5
 80033e0:	bf24      	itt	cs
 80033e2:	4418      	addcs	r0, r3
 80033e4:	3802      	subcs	r0, #2
 80033e6:	b2cb      	uxtb	r3, r1
 80033e8:	4573      	cmp	r3, lr
 80033ea:	d9f4      	bls.n	80033d6 <badruns+0x1a>
 80033ec:	f1ae 0c01 	sub.w	ip, lr, #1
 80033f0:	f1bc 0f04 	cmp.w	ip, #4
 80033f4:	db30      	blt.n	8003458 <badruns+0x9c>
 80033f6:	2303      	movs	r3, #3
 80033f8:	1c99      	adds	r1, r3, #2
 80033fa:	eb08 0403 	add.w	r4, r8, r3
 80033fe:	f818 6001 	ldrb.w	r6, [r8, r1]
 8003402:	f814 5c02 	ldrb.w	r5, [r4, #-2]
 8003406:	42b5      	cmp	r5, r6
 8003408:	d11e      	bne.n	8003448 <badruns+0x8c>
 800340a:	f814 6c01 	ldrb.w	r6, [r4, #-1]
 800340e:	42b5      	cmp	r5, r6
 8003410:	bf04      	itt	eq
 8003412:	7862      	ldrbeq	r2, [r4, #1]
 8003414:	4295      	cmpeq	r5, r2
 8003416:	d117      	bne.n	8003448 <badruns+0x8c>
 8003418:	f818 2003 	ldrb.w	r2, [r8, r3]
 800341c:	eb06 0546 	add.w	r5, r6, r6, lsl #1
 8003420:	4295      	cmp	r5, r2
 8003422:	d111      	bne.n	8003448 <badruns+0x8c>
 8003424:	f814 4c03 	ldrb.w	r4, [r4, #-3]
 8003428:	b194      	cbz	r4, 8003450 <badruns+0x94>
 800342a:	3303      	adds	r3, #3
 800342c:	4573      	cmp	r3, lr
 800342e:	d80f      	bhi.n	8003450 <badruns+0x94>
 8003430:	eb04 0244 	add.w	r2, r4, r4, lsl #1
 8003434:	ebb2 0f85 	cmp.w	r2, r5, lsl #2
 8003438:	bf3f      	itttt	cc
 800343a:	00aa      	lslcc	r2, r5, #2
 800343c:	f818 3003 	ldrbcc.w	r3, [r8, r3]
 8003440:	eb03 0343 	addcc.w	r3, r3, r3, lsl #1
 8003444:	4293      	cmpcc	r3, r2
 8003446:	d203      	bcs.n	8003450 <badruns+0x94>
 8003448:	b2cb      	uxtb	r3, r1
 800344a:	4563      	cmp	r3, ip
 800344c:	dbd4      	blt.n	80033f8 <badruns+0x3c>
 800344e:	e003      	b.n	8003458 <badruns+0x9c>
 8003450:	b2cb      	uxtb	r3, r1
 8003452:	3028      	adds	r0, #40	; 0x28
 8003454:	4563      	cmp	r3, ip
 8003456:	dbcf      	blt.n	80033f8 <badruns+0x3c>
 8003458:	f85d 8b04 	ldr.w	r8, [sp], #4
 800345c:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800345e <initframe>:
 800345e:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003460:	af03      	add	r7, sp, #12
 8003462:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 8003466:	b08b      	sub	sp, #44	; 0x2c
 8003468:	f640 3a11 	movw	sl, #2833	; 0xb11
 800346c:	f640 21f8 	movw	r1, #2808	; 0xaf8
 8003470:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8003474:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003478:	780c      	ldrb	r4, [r1, #0]
 800347a:	f89a 0000 	ldrb.w	r0, [sl]
 800347e:	2101      	movs	r1, #1
 8003480:	fb14 f000 	smulbb	r0, r4, r0
 8003484:	f000 ffd4 	bl	8004430 <calloc>
 8003488:	f640 3b04 	movw	fp, #2820	; 0xb04
 800348c:	1c65      	adds	r5, r4, #1
 800348e:	2107      	movs	r1, #7
 8003490:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8003494:	f8cb 0000 	str.w	r0, [fp]
 8003498:	fb15 f004 	smulbb	r0, r5, r4
 800349c:	eb01 0050 	add.w	r0, r1, r0, lsr #1
 80034a0:	2101      	movs	r1, #1
 80034a2:	08c0      	lsrs	r0, r0, #3
 80034a4:	f000 ffc4 	bl	8004430 <calloc>
 80034a8:	f640 3114 	movw	r1, #2836	; 0xb14
 80034ac:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80034b0:	6008      	str	r0, [r1, #0]
 80034b2:	4628      	mov	r0, r5
 80034b4:	f001 f822 	bl	80044fc <malloc>
 80034b8:	f640 310c 	movw	r1, #2828	; 0xb0c
 80034bc:	2680      	movs	r6, #128	; 0x80
 80034be:	f2c2 0100 	movt	r1, #8192	; 0x2000
 80034c2:	6008      	str	r0, [r1, #0]
 80034c4:	2100      	movs	r1, #0
 80034c6:	b2c8      	uxtb	r0, r1
 80034c8:	9104      	str	r1, [sp, #16]
 80034ca:	2802      	cmp	r0, #2
 80034cc:	d009      	beq.n	80034e2 <initframe+0x84>
 80034ce:	2801      	cmp	r0, #1
 80034d0:	d10f      	bne.n	80034f2 <initframe+0x94>
 80034d2:	f640 20f8 	movw	r0, #2808	; 0xaf8
 80034d6:	2400      	movs	r4, #0
 80034d8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80034dc:	7800      	ldrb	r0, [r0, #0]
 80034de:	1fc1      	subs	r1, r0, #7
 80034e0:	e009      	b.n	80034f6 <initframe+0x98>
 80034e2:	f640 20f8 	movw	r0, #2808	; 0xaf8
 80034e6:	2100      	movs	r1, #0
 80034e8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80034ec:	7800      	ldrb	r0, [r0, #0]
 80034ee:	1fc4      	subs	r4, r0, #7
 80034f0:	e001      	b.n	80034f6 <initframe+0x98>
 80034f2:	2100      	movs	r1, #0
 80034f4:	2400      	movs	r4, #0
 80034f6:	2003      	movs	r0, #3
 80034f8:	f04f 0880 	mov.w	r8, #128	; 0x80
 80034fc:	fa50 f281 	uxtab	r2, r0, r1
 8003500:	fa50 fc84 	uxtab	ip, r0, r4
 8003504:	f89a 0000 	ldrb.w	r0, [sl]
 8003508:	9205      	str	r2, [sp, #20]
 800350a:	fb10 f002 	smulbb	r0, r0, r2
 800350e:	1ce2      	adds	r2, r4, #3
 8003510:	f002 0207 	and.w	r2, r2, #7
 8003514:	eb00 00dc 	add.w	r0, r0, ip, lsr #3
 8003518:	fa26 f502 	lsr.w	r5, r6, r2
 800351c:	f8db 2000 	ldr.w	r2, [fp]
 8003520:	5c13      	ldrb	r3, [r2, r0]
 8003522:	9503      	str	r5, [sp, #12]
 8003524:	432b      	orrs	r3, r5
 8003526:	b2cd      	uxtb	r5, r1
 8003528:	5413      	strb	r3, [r2, r0]
 800352a:	f004 0007 	and.w	r0, r4, #7
 800352e:	fa26 f000 	lsr.w	r0, r6, r0
 8003532:	900a      	str	r0, [sp, #40]	; 0x28
 8003534:	1da0      	adds	r0, r4, #6
 8003536:	f000 0007 	and.w	r0, r0, #7
 800353a:	fa26 f000 	lsr.w	r0, r6, r0
 800353e:	9009      	str	r0, [sp, #36]	; 0x24
 8003540:	2006      	movs	r0, #6
 8003542:	fa50 f281 	uxtab	r2, r0, r1
 8003546:	9208      	str	r2, [sp, #32]
 8003548:	fa50 f284 	uxtab	r2, r0, r4
 800354c:	08d0      	lsrs	r0, r2, #3
 800354e:	b2e2      	uxtb	r2, r4
 8003550:	9007      	str	r0, [sp, #28]
 8003552:	ea4f 00dc 	mov.w	r0, ip, lsr #3
 8003556:	e9cd 1001 	strd	r1, r0, [sp, #4]
 800355a:	2100      	movs	r1, #0
 800355c:	08d0      	lsrs	r0, r2, #3
 800355e:	9006      	str	r0, [sp, #24]
 8003560:	f89a 0000 	ldrb.w	r0, [sl]
 8003564:	1863      	adds	r3, r4, r1
 8003566:	eb02 0901 	add.w	r9, r2, r1
 800356a:	46a4      	mov	ip, r4
 800356c:	4696      	mov	lr, r2
 800356e:	f003 0307 	and.w	r3, r3, #7
 8003572:	fa28 f303 	lsr.w	r3, r8, r3
 8003576:	f8db 8000 	ldr.w	r8, [fp]
 800357a:	fb10 f005 	smulbb	r0, r0, r5
 800357e:	eb00 00d9 	add.w	r0, r0, r9, lsr #3
 8003582:	f818 a000 	ldrb.w	sl, [r8, r0]
 8003586:	ea43 030a 	orr.w	r3, r3, sl
 800358a:	f640 3a11 	movw	sl, #2833	; 0xb11
 800358e:	f808 3000 	strb.w	r3, [r8, r0]
 8003592:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8003596:	1868      	adds	r0, r5, r1
 8003598:	f04f 0880 	mov.w	r8, #128	; 0x80
 800359c:	3101      	adds	r1, #1
 800359e:	f89a 4000 	ldrb.w	r4, [sl]
 80035a2:	9e06      	ldr	r6, [sp, #24]
 80035a4:	1c43      	adds	r3, r0, #1
 80035a6:	2906      	cmp	r1, #6
 80035a8:	fb04 6303 	mla	r3, r4, r3, r6
 80035ac:	f8db 4000 	ldr.w	r4, [fp]
 80035b0:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 80035b2:	5ce2      	ldrb	r2, [r4, r3]
 80035b4:	ea42 0206 	orr.w	r2, r2, r6
 80035b8:	54e2      	strb	r2, [r4, r3]
 80035ba:	f89a 2000 	ldrb.w	r2, [sl]
 80035be:	9b07      	ldr	r3, [sp, #28]
 80035c0:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80035c2:	fb02 3000 	mla	r0, r2, r0, r3
 80035c6:	f8db 2000 	ldr.w	r2, [fp]
 80035ca:	5c13      	ldrb	r3, [r2, r0]
 80035cc:	ea43 0304 	orr.w	r3, r3, r4
 80035d0:	5413      	strb	r3, [r2, r0]
 80035d2:	f89a 0000 	ldrb.w	r0, [sl]
 80035d6:	9a08      	ldr	r2, [sp, #32]
 80035d8:	f8db 3000 	ldr.w	r3, [fp]
 80035dc:	fb10 f002 	smulbb	r0, r0, r2
 80035e0:	f109 0201 	add.w	r2, r9, #1
 80035e4:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 80035e8:	f002 0207 	and.w	r2, r2, #7
 80035ec:	5c1c      	ldrb	r4, [r3, r0]
 80035ee:	fa28 f202 	lsr.w	r2, r8, r2
 80035f2:	ea42 0204 	orr.w	r2, r2, r4
 80035f6:	4664      	mov	r4, ip
 80035f8:	541a      	strb	r2, [r3, r0]
 80035fa:	4672      	mov	r2, lr
 80035fc:	d1b0      	bne.n	8003560 <initframe+0x102>
 80035fe:	9901      	ldr	r1, [sp, #4]
 8003600:	f104 0b01 	add.w	fp, r4, #1
 8003604:	f06f 0803 	mvn.w	r8, #3
 8003608:	950a      	str	r5, [sp, #40]	; 0x28
 800360a:	1d48      	adds	r0, r1, #5
 800360c:	1c4b      	adds	r3, r1, #1
 800360e:	9008      	str	r0, [sp, #32]
 8003610:	1d60      	adds	r0, r4, #5
 8003612:	9009      	str	r0, [sp, #36]	; 0x24
 8003614:	eb02 0608 	add.w	r6, r2, r8
 8003618:	b2da      	uxtb	r2, r3
 800361a:	f640 3914 	movw	r9, #2836	; 0xb14
 800361e:	f04f 0a80 	mov.w	sl, #128	; 0x80
 8003622:	1d70      	adds	r0, r6, #5
 8003624:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8003628:	b2c1      	uxtb	r1, r0
 800362a:	4291      	cmp	r1, r2
 800362c:	4619      	mov	r1, r3
 800362e:	bf88      	it	hi
 8003630:	4601      	movhi	r1, r0
 8003632:	bf88      	it	hi
 8003634:	4618      	movhi	r0, r3
 8003636:	b2ca      	uxtb	r2, r1
 8003638:	fb12 f202 	smulbb	r2, r2, r2
 800363c:	fa52 f181 	uxtab	r1, r2, r1
 8003640:	eb00 0251 	add.w	r2, r0, r1, lsr #1
 8003644:	0849      	lsrs	r1, r1, #1
 8003646:	fa51 f080 	uxtab	r0, r1, r0
 800364a:	f8d9 1000 	ldr.w	r1, [r9]
 800364e:	f002 0207 	and.w	r2, r2, #7
 8003652:	08c0      	lsrs	r0, r0, #3
 8003654:	fa2a f202 	lsr.w	r2, sl, r2
 8003658:	5c0c      	ldrb	r4, [r1, r0]
 800365a:	4322      	orrs	r2, r4
 800365c:	fa5f f48b 	uxtb.w	r4, fp
 8003660:	540a      	strb	r2, [r1, r0]
 8003662:	980a      	ldr	r0, [sp, #40]	; 0x28
 8003664:	4440      	add	r0, r8
 8003666:	1d81      	adds	r1, r0, #6
 8003668:	3005      	adds	r0, #5
 800366a:	b2ca      	uxtb	r2, r1
 800366c:	4294      	cmp	r4, r2
 800366e:	460a      	mov	r2, r1
 8003670:	bf88      	it	hi
 8003672:	465a      	movhi	r2, fp
 8003674:	bf98      	it	ls
 8003676:	4659      	movls	r1, fp
 8003678:	b2d4      	uxtb	r4, r2
 800367a:	fb14 f404 	smulbb	r4, r4, r4
 800367e:	fa54 f282 	uxtab	r2, r4, r2
 8003682:	eb01 0452 	add.w	r4, r1, r2, lsr #1
 8003686:	0852      	lsrs	r2, r2, #1
 8003688:	fa52 f181 	uxtab	r1, r2, r1
 800368c:	f8d9 2000 	ldr.w	r2, [r9]
 8003690:	f004 0407 	and.w	r4, r4, #7
 8003694:	08c9      	lsrs	r1, r1, #3
 8003696:	fa2a f404 	lsr.w	r4, sl, r4
 800369a:	5c55      	ldrb	r5, [r2, r1]
 800369c:	432c      	orrs	r4, r5
 800369e:	5454      	strb	r4, [r2, r1]
 80036a0:	b2c1      	uxtb	r1, r0
 80036a2:	9c09      	ldr	r4, [sp, #36]	; 0x24
 80036a4:	b2e2      	uxtb	r2, r4
 80036a6:	428a      	cmp	r2, r1
 80036a8:	4601      	mov	r1, r0
 80036aa:	bf88      	it	hi
 80036ac:	4621      	movhi	r1, r4
 80036ae:	bf98      	it	ls
 80036b0:	4620      	movls	r0, r4
 80036b2:	b2ca      	uxtb	r2, r1
 80036b4:	fb12 f202 	smulbb	r2, r2, r2
 80036b8:	fa52 f181 	uxtab	r1, r2, r1
 80036bc:	eb00 0251 	add.w	r2, r0, r1, lsr #1
 80036c0:	0849      	lsrs	r1, r1, #1
 80036c2:	fa51 f080 	uxtab	r0, r1, r0
 80036c6:	f8d9 1000 	ldr.w	r1, [r9]
 80036ca:	f002 0207 	and.w	r2, r2, #7
 80036ce:	08c0      	lsrs	r0, r0, #3
 80036d0:	fa2a f202 	lsr.w	r2, sl, r2
 80036d4:	5c0c      	ldrb	r4, [r1, r0]
 80036d6:	4322      	orrs	r2, r4
 80036d8:	540a      	strb	r2, [r1, r0]
 80036da:	1db0      	adds	r0, r6, #6
 80036dc:	9e08      	ldr	r6, [sp, #32]
 80036de:	b2c1      	uxtb	r1, r0
 80036e0:	b2f2      	uxtb	r2, r6
 80036e2:	4634      	mov	r4, r6
 80036e4:	4291      	cmp	r1, r2
 80036e6:	bf88      	it	hi
 80036e8:	4604      	movhi	r4, r0
 80036ea:	4291      	cmp	r1, r2
 80036ec:	b2e5      	uxtb	r5, r4
 80036ee:	bf88      	it	hi
 80036f0:	4630      	movhi	r0, r6
 80036f2:	f8d9 2000 	ldr.w	r2, [r9]
 80036f6:	f118 0801 	adds.w	r8, r8, #1
 80036fa:	fb15 f505 	smulbb	r5, r5, r5
 80036fe:	fa55 f484 	uxtab	r4, r5, r4
 8003702:	ea4f 0554 	mov.w	r5, r4, lsr #1
 8003706:	fa55 f180 	uxtab	r1, r5, r0
 800370a:	eb00 0054 	add.w	r0, r0, r4, lsr #1
 800370e:	ea4f 01d1 	mov.w	r1, r1, lsr #3
 8003712:	f000 0007 	and.w	r0, r0, #7
 8003716:	5c55      	ldrb	r5, [r2, r1]
 8003718:	fa2a f000 	lsr.w	r0, sl, r0
 800371c:	ea40 0005 	orr.w	r0, r0, r5
 8003720:	5450      	strb	r0, [r2, r1]
 8003722:	4672      	mov	r2, lr
 8003724:	f47f af76 	bne.w	8003614 <initframe+0x1b6>
 8003728:	f640 3a11 	movw	sl, #2833	; 0xb11
 800372c:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 800372e:	f640 3b04 	movw	fp, #2820	; 0xb04
 8003732:	f10c 0002 	add.w	r0, ip, #2
 8003736:	f04f 0e80 	mov.w	lr, #128	; 0x80
 800373a:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 800373e:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8003742:	f000 0007 	and.w	r0, r0, #7
 8003746:	f89a 1000 	ldrb.w	r1, [sl]
 800374a:	f8db 3000 	ldr.w	r3, [fp]
 800374e:	fa2e f900 	lsr.w	r9, lr, r0
 8003752:	4610      	mov	r0, r2
 8003754:	1c82      	adds	r2, r0, #2
 8003756:	1cae      	adds	r6, r5, #2
 8003758:	fb11 f106 	smulbb	r1, r1, r6
 800375c:	eb01 01d2 	add.w	r1, r1, r2, lsr #3
 8003760:	5c5c      	ldrb	r4, [r3, r1]
 8003762:	ea44 0409 	orr.w	r4, r4, r9
 8003766:	545c      	strb	r4, [r3, r1]
 8003768:	f89a 1000 	ldrb.w	r1, [sl]
 800376c:	9b05      	ldr	r3, [sp, #20]
 800376e:	fb11 f103 	smulbb	r1, r1, r3
 8003772:	f8db 3000 	ldr.w	r3, [fp]
 8003776:	eb01 01d2 	add.w	r1, r1, r2, lsr #3
 800377a:	5c5c      	ldrb	r4, [r3, r1]
 800377c:	ea44 0409 	orr.w	r4, r4, r9
 8003780:	545c      	strb	r4, [r3, r1]
 8003782:	f10c 0104 	add.w	r1, ip, #4
 8003786:	f105 0c04 	add.w	ip, r5, #4
 800378a:	f89a 3000 	ldrb.w	r3, [sl]
 800378e:	f001 0107 	and.w	r1, r1, #7
 8003792:	fa2e f801 	lsr.w	r8, lr, r1
 8003796:	f100 0e04 	add.w	lr, r0, #4
 800379a:	f8db 0000 	ldr.w	r0, [fp]
 800379e:	fb13 f406 	smulbb	r4, r3, r6
 80037a2:	eb04 04de 	add.w	r4, r4, lr, lsr #3
 80037a6:	5d01      	ldrb	r1, [r0, r4]
 80037a8:	ea41 0108 	orr.w	r1, r1, r8
 80037ac:	5501      	strb	r1, [r0, r4]
 80037ae:	f89a 1000 	ldrb.w	r1, [sl]
 80037b2:	9802      	ldr	r0, [sp, #8]
 80037b4:	f8db 4000 	ldr.w	r4, [fp]
 80037b8:	9b03      	ldr	r3, [sp, #12]
 80037ba:	fb11 010c 	smlabb	r1, r1, ip, r0
 80037be:	5c65      	ldrb	r5, [r4, r1]
 80037c0:	431d      	orrs	r5, r3
 80037c2:	5465      	strb	r5, [r4, r1]
 80037c4:	f89a 1000 	ldrb.w	r1, [sl]
 80037c8:	f8db 4000 	ldr.w	r4, [fp]
 80037cc:	fb11 0106 	smlabb	r1, r1, r6, r0
 80037d0:	5c65      	ldrb	r5, [r4, r1]
 80037d2:	431d      	orrs	r5, r3
 80037d4:	5465      	strb	r5, [r4, r1]
 80037d6:	f89a 1000 	ldrb.w	r1, [sl]
 80037da:	fb11 f10c 	smulbb	r1, r1, ip
 80037de:	eb01 01d2 	add.w	r1, r1, r2, lsr #3
 80037e2:	f8db 2000 	ldr.w	r2, [fp]
 80037e6:	5c54      	ldrb	r4, [r2, r1]
 80037e8:	ea44 0609 	orr.w	r6, r4, r9
 80037ec:	5456      	strb	r6, [r2, r1]
 80037ee:	f89a 1000 	ldrb.w	r1, [sl]
 80037f2:	9805      	ldr	r0, [sp, #20]
 80037f4:	f8db 2000 	ldr.w	r2, [fp]
 80037f8:	fb11 f100 	smulbb	r1, r1, r0
 80037fc:	eb01 01de 	add.w	r1, r1, lr, lsr #3
 8003800:	5c56      	ldrb	r6, [r2, r1]
 8003802:	ea46 0608 	orr.w	r6, r6, r8
 8003806:	5456      	strb	r6, [r2, r1]
 8003808:	2680      	movs	r6, #128	; 0x80
 800380a:	f89a 1000 	ldrb.w	r1, [sl]
 800380e:	fb11 f00c 	smulbb	r0, r1, ip
 8003812:	f8db 1000 	ldr.w	r1, [fp]
 8003816:	eb00 00de 	add.w	r0, r0, lr, lsr #3
 800381a:	5c0a      	ldrb	r2, [r1, r0]
 800381c:	ea42 0208 	orr.w	r2, r2, r8
 8003820:	540a      	strb	r2, [r1, r0]
 8003822:	9904      	ldr	r1, [sp, #16]
 8003824:	3101      	adds	r1, #1
 8003826:	b2c8      	uxtb	r0, r1
 8003828:	2803      	cmp	r0, #3
 800382a:	f4ff ae4c 	bcc.w	80034c6 <initframe+0x68>
 800382e:	f640 3008 	movw	r0, #2824	; 0xb08
 8003832:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003836:	7800      	ldrb	r0, [r0, #0]
 8003838:	2802      	cmp	r0, #2
 800383a:	d331      	bcc.n	80038a0 <initframe+0x442>
 800383c:	f249 51f8 	movw	r1, #38392	; 0x95f8
 8003840:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003844:	5c0e      	ldrb	r6, [r1, r0]
 8003846:	f640 20f8 	movw	r0, #2808	; 0xaf8
 800384a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800384e:	7800      	ldrb	r0, [r0, #0]
 8003850:	f106 0809 	add.w	r8, r6, #9
 8003854:	f1a6 0b03 	sub.w	fp, r6, #3
 8003858:	f100 04f9 	add.w	r4, r0, #249	; 0xf9
 800385c:	e010      	b.n	8003880 <initframe+0x422>
 800385e:	1ba0      	subs	r0, r4, r6
 8003860:	b2c5      	uxtb	r5, r0
 8003862:	2006      	movs	r0, #6
 8003864:	4629      	mov	r1, r5
 8003866:	f000 fbd6 	bl	8004016 <putalign>
 800386a:	4628      	mov	r0, r5
 800386c:	2106      	movs	r1, #6
 800386e:	f000 fbd2 	bl	8004016 <putalign>
 8003872:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8003876:	eba9 0406 	sub.w	r4, r9, r6
 800387a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800387e:	7800      	ldrb	r0, [r0, #0]
 8003880:	fa5f f984 	uxtb.w	r9, r4
 8003884:	30f9      	adds	r0, #249	; 0xf9
 8003886:	e000      	b.n	800388a <initframe+0x42c>
 8003888:	1ba8      	subs	r0, r5, r6
 800388a:	b2c5      	uxtb	r5, r0
 800388c:	455d      	cmp	r5, fp
 800388e:	d905      	bls.n	800389c <initframe+0x43e>
 8003890:	4628      	mov	r0, r5
 8003892:	4649      	mov	r1, r9
 8003894:	f000 fbbf 	bl	8004016 <putalign>
 8003898:	42b5      	cmp	r5, r6
 800389a:	d2f5      	bcs.n	8003888 <initframe+0x42a>
 800389c:	45c1      	cmp	r9, r8
 800389e:	d8de      	bhi.n	800385e <initframe+0x400>
 80038a0:	f640 2cf8 	movw	ip, #2808	; 0xaf8
 80038a4:	f640 3b04 	movw	fp, #2820	; 0xb04
 80038a8:	f89a 1000 	ldrb.w	r1, [sl]
 80038ac:	f640 3e14 	movw	lr, #2836	; 0xb14
 80038b0:	f2c2 0c00 	movt	ip, #8192	; 0x2000
 80038b4:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 80038b8:	f2c2 0e00 	movt	lr, #8192	; 0x2000
 80038bc:	f89c 2000 	ldrb.w	r2, [ip]
 80038c0:	f8db 0000 	ldr.w	r0, [fp]
 80038c4:	3a08      	subs	r2, #8
 80038c6:	fb12 0001 	smlabb	r0, r2, r1, r0
 80038ca:	7841      	ldrb	r1, [r0, #1]
 80038cc:	f041 0180 	orr.w	r1, r1, #128	; 0x80
 80038d0:	7041      	strb	r1, [r0, #1]
 80038d2:	2000      	movs	r0, #0
 80038d4:	2180      	movs	r1, #128	; 0x80
 80038d6:	b2c2      	uxtb	r2, r0
 80038d8:	fb00 0300 	mla	r3, r0, r0, r0
 80038dc:	261c      	movs	r6, #28
 80038de:	2a07      	cmp	r2, #7
 80038e0:	bf88      	it	hi
 80038e2:	085e      	lsrhi	r6, r3, #1
 80038e4:	f8de 5000 	ldr.w	r5, [lr]
 80038e8:	1833      	adds	r3, r6, r0
 80038ea:	f003 0607 	and.w	r6, r3, #7
 80038ee:	08db      	lsrs	r3, r3, #3
 80038f0:	fa21 f606 	lsr.w	r6, r1, r6
 80038f4:	5cec      	ldrb	r4, [r5, r3]
 80038f6:	4326      	orrs	r6, r4
 80038f8:	54ee      	strb	r6, [r5, r3]
 80038fa:	f89c 3000 	ldrb.w	r3, [ip]
 80038fe:	33f8      	adds	r3, #248	; 0xf8
 8003900:	b2de      	uxtb	r6, r3
 8003902:	4296      	cmp	r6, r2
 8003904:	4602      	mov	r2, r0
 8003906:	bf88      	it	hi
 8003908:	461a      	movhi	r2, r3
 800390a:	bf88      	it	hi
 800390c:	4603      	movhi	r3, r0
 800390e:	b2d6      	uxtb	r6, r2
 8003910:	fb16 f606 	smulbb	r6, r6, r6
 8003914:	fa56 f282 	uxtab	r2, r6, r2
 8003918:	eb03 0652 	add.w	r6, r3, r2, lsr #1
 800391c:	0852      	lsrs	r2, r2, #1
 800391e:	fa52 f283 	uxtab	r2, r2, r3
 8003922:	f8de 3000 	ldr.w	r3, [lr]
 8003926:	f006 0607 	and.w	r6, r6, #7
 800392a:	08d2      	lsrs	r2, r2, #3
 800392c:	fa21 f606 	lsr.w	r6, r1, r6
 8003930:	5c9d      	ldrb	r5, [r3, r2]
 8003932:	432e      	orrs	r6, r5
 8003934:	549e      	strb	r6, [r3, r2]
 8003936:	f89c 2000 	ldrb.w	r2, [ip]
 800393a:	4402      	add	r2, r0
 800393c:	3001      	adds	r0, #1
 800393e:	32f9      	adds	r2, #249	; 0xf9
 8003940:	b2d3      	uxtb	r3, r2
 8003942:	fb13 f603 	smulbb	r6, r3, r3
 8003946:	2b07      	cmp	r3, #7
 8003948:	fa56 f282 	uxtab	r2, r6, r2
 800394c:	f04f 061c 	mov.w	r6, #28
 8003950:	bf88      	it	hi
 8003952:	0856      	lsrhi	r6, r2, #1
 8003954:	bf28      	it	cs
 8003956:	2307      	movcs	r3, #7
 8003958:	2807      	cmp	r0, #7
 800395a:	eb06 0203 	add.w	r2, r6, r3
 800395e:	f8de 6000 	ldr.w	r6, [lr]
 8003962:	ea4f 03d2 	mov.w	r3, r2, lsr #3
 8003966:	f002 0207 	and.w	r2, r2, #7
 800396a:	fa21 f202 	lsr.w	r2, r1, r2
 800396e:	5cf5      	ldrb	r5, [r6, r3]
 8003970:	ea42 0205 	orr.w	r2, r2, r5
 8003974:	54f2      	strb	r2, [r6, r3]
 8003976:	d1ae      	bne.n	80038d6 <initframe+0x478>
 8003978:	2000      	movs	r0, #0
 800397a:	2180      	movs	r1, #128	; 0x80
 800397c:	b2c2      	uxtb	r2, r0
 800397e:	fb00 0300 	mla	r3, r0, r0, r0
 8003982:	261c      	movs	r6, #28
 8003984:	2a07      	cmp	r2, #7
 8003986:	bf88      	it	hi
 8003988:	085e      	lsrhi	r6, r3, #1
 800398a:	f8de 5000 	ldr.w	r5, [lr]
 800398e:	1833      	adds	r3, r6, r0
 8003990:	f003 0607 	and.w	r6, r3, #7
 8003994:	08db      	lsrs	r3, r3, #3
 8003996:	fa21 f606 	lsr.w	r6, r1, r6
 800399a:	5cec      	ldrb	r4, [r5, r3]
 800399c:	4326      	orrs	r6, r4
 800399e:	54ee      	strb	r6, [r5, r3]
 80039a0:	f89c 3000 	ldrb.w	r3, [ip]
 80039a4:	4403      	add	r3, r0
 80039a6:	33f8      	adds	r3, #248	; 0xf8
 80039a8:	b2de      	uxtb	r6, r3
 80039aa:	fb16 f506 	smulbb	r5, r6, r6
 80039ae:	2e07      	cmp	r6, #7
 80039b0:	fa55 f383 	uxtab	r3, r5, r3
 80039b4:	f04f 051c 	mov.w	r5, #28
 80039b8:	bf84      	itt	hi
 80039ba:	085d      	lsrhi	r5, r3, #1
 80039bc:	2607      	movhi	r6, #7
 80039be:	19ab      	adds	r3, r5, r6
 80039c0:	f8de 5000 	ldr.w	r5, [lr]
 80039c4:	f003 0607 	and.w	r6, r3, #7
 80039c8:	08db      	lsrs	r3, r3, #3
 80039ca:	fa21 f606 	lsr.w	r6, r1, r6
 80039ce:	5cec      	ldrb	r4, [r5, r3]
 80039d0:	4326      	orrs	r6, r4
 80039d2:	54ee      	strb	r6, [r5, r3]
 80039d4:	f89c 3000 	ldrb.w	r3, [ip]
 80039d8:	f103 05f8 	add.w	r5, r3, #248	; 0xf8
 80039dc:	b2ee      	uxtb	r6, r5
 80039de:	462b      	mov	r3, r5
 80039e0:	42b2      	cmp	r2, r6
 80039e2:	bf88      	it	hi
 80039e4:	4603      	movhi	r3, r0
 80039e6:	42b2      	cmp	r2, r6
 80039e8:	b2dc      	uxtb	r4, r3
 80039ea:	bf98      	it	ls
 80039ec:	4605      	movls	r5, r0
 80039ee:	f8de 6000 	ldr.w	r6, [lr]
 80039f2:	3001      	adds	r0, #1
 80039f4:	fb14 f404 	smulbb	r4, r4, r4
 80039f8:	2808      	cmp	r0, #8
 80039fa:	fa54 f383 	uxtab	r3, r4, r3
 80039fe:	ea4f 0453 	mov.w	r4, r3, lsr #1
 8003a02:	eb05 0353 	add.w	r3, r5, r3, lsr #1
 8003a06:	fa54 f285 	uxtab	r2, r4, r5
 8003a0a:	f003 0307 	and.w	r3, r3, #7
 8003a0e:	ea4f 02d2 	mov.w	r2, r2, lsr #3
 8003a12:	fa21 f303 	lsr.w	r3, r1, r3
 8003a16:	5cb4      	ldrb	r4, [r6, r2]
 8003a18:	ea43 0304 	orr.w	r3, r3, r4
 8003a1c:	54b3      	strb	r3, [r6, r2]
 8003a1e:	d1ad      	bne.n	800397c <initframe+0x51e>
 8003a20:	f8de 2000 	ldr.w	r2, [lr]
 8003a24:	2180      	movs	r1, #128	; 0x80
 8003a26:	7910      	ldrb	r0, [r2, #4]
 8003a28:	f040 000f 	orr.w	r0, r0, #15
 8003a2c:	7110      	strb	r0, [r2, #4]
 8003a2e:	7950      	ldrb	r0, [r2, #5]
 8003a30:	f040 00f8 	orr.w	r0, r0, #248	; 0xf8
 8003a34:	7150      	strb	r0, [r2, #5]
 8003a36:	2000      	movs	r0, #0
 8003a38:	e002      	b.n	8003a40 <initframe+0x5e2>
 8003a3a:	f8de 2000 	ldr.w	r2, [lr]
 8003a3e:	3001      	adds	r0, #1
 8003a40:	f89c 3000 	ldrb.w	r3, [ip]
 8003a44:	4403      	add	r3, r0
 8003a46:	33f8      	adds	r3, #248	; 0xf8
 8003a48:	b2de      	uxtb	r6, r3
 8003a4a:	fb16 f506 	smulbb	r5, r6, r6
 8003a4e:	2e08      	cmp	r6, #8
 8003a50:	fa55 f383 	uxtab	r3, r5, r3
 8003a54:	f04f 0524 	mov.w	r5, #36	; 0x24
 8003a58:	bf84      	itt	hi
 8003a5a:	085d      	lsrhi	r5, r3, #1
 8003a5c:	2608      	movhi	r6, #8
 8003a5e:	19ab      	adds	r3, r5, r6
 8003a60:	08de      	lsrs	r6, r3, #3
 8003a62:	f003 0307 	and.w	r3, r3, #7
 8003a66:	5d95      	ldrb	r5, [r2, r6]
 8003a68:	fa21 f303 	lsr.w	r3, r1, r3
 8003a6c:	432b      	orrs	r3, r5
 8003a6e:	5593      	strb	r3, [r2, r6]
 8003a70:	b2c2      	uxtb	r2, r0
 8003a72:	fb00 0300 	mla	r3, r0, r0, r0
 8003a76:	2a08      	cmp	r2, #8
 8003a78:	f04f 0224 	mov.w	r2, #36	; 0x24
 8003a7c:	bf88      	it	hi
 8003a7e:	085a      	lsrhi	r2, r3, #1
 8003a80:	f8de 6000 	ldr.w	r6, [lr]
 8003a84:	2807      	cmp	r0, #7
 8003a86:	4402      	add	r2, r0
 8003a88:	ea4f 03d2 	mov.w	r3, r2, lsr #3
 8003a8c:	f002 0207 	and.w	r2, r2, #7
 8003a90:	fa21 f202 	lsr.w	r2, r1, r2
 8003a94:	5cf5      	ldrb	r5, [r6, r3]
 8003a96:	ea42 0205 	orr.w	r2, r2, r5
 8003a9a:	54f2      	strb	r2, [r6, r3]
 8003a9c:	d1cd      	bne.n	8003a3a <initframe+0x5dc>
 8003a9e:	f89c 0000 	ldrb.w	r0, [ip]
 8003aa2:	2624      	movs	r6, #36	; 0x24
 8003aa4:	2208      	movs	r2, #8
 8003aa6:	30f9      	adds	r0, #249	; 0xf9
 8003aa8:	b2c3      	uxtb	r3, r0
 8003aaa:	fb13 f103 	smulbb	r1, r3, r3
 8003aae:	2b08      	cmp	r3, #8
 8003ab0:	fa51 f080 	uxtab	r0, r1, r0
 8003ab4:	f04f 0124 	mov.w	r1, #36	; 0x24
 8003ab8:	bf88      	it	hi
 8003aba:	0846      	lsrhi	r6, r0, #1
 8003abc:	bf28      	it	cs
 8003abe:	4613      	movcs	r3, r2
 8003ac0:	f8de 5000 	ldr.w	r5, [lr]
 8003ac4:	4660      	mov	r0, ip
 8003ac6:	f04f 0c80 	mov.w	ip, #128	; 0x80
 8003aca:	4433      	add	r3, r6
 8003acc:	f003 0607 	and.w	r6, r3, #7
 8003ad0:	08db      	lsrs	r3, r3, #3
 8003ad2:	fa2c f606 	lsr.w	r6, ip, r6
 8003ad6:	5cec      	ldrb	r4, [r5, r3]
 8003ad8:	4326      	orrs	r6, r4
 8003ada:	54ee      	strb	r6, [r5, r3]
 8003adc:	7803      	ldrb	r3, [r0, #0]
 8003ade:	33fa      	adds	r3, #250	; 0xfa
 8003ae0:	b2de      	uxtb	r6, r3
 8003ae2:	fb16 f506 	smulbb	r5, r6, r6
 8003ae6:	2e08      	cmp	r6, #8
 8003ae8:	fa55 f383 	uxtab	r3, r5, r3
 8003aec:	f04f 0524 	mov.w	r5, #36	; 0x24
 8003af0:	bf88      	it	hi
 8003af2:	085d      	lsrhi	r5, r3, #1
 8003af4:	bf28      	it	cs
 8003af6:	4616      	movcs	r6, r2
 8003af8:	19ab      	adds	r3, r5, r6
 8003afa:	f8de 5000 	ldr.w	r5, [lr]
 8003afe:	f003 0607 	and.w	r6, r3, #7
 8003b02:	08db      	lsrs	r3, r3, #3
 8003b04:	fa2c f606 	lsr.w	r6, ip, r6
 8003b08:	5cec      	ldrb	r4, [r5, r3]
 8003b0a:	4326      	orrs	r6, r4
 8003b0c:	54ee      	strb	r6, [r5, r3]
 8003b0e:	7803      	ldrb	r3, [r0, #0]
 8003b10:	33fb      	adds	r3, #251	; 0xfb
 8003b12:	b2de      	uxtb	r6, r3
 8003b14:	fb16 f506 	smulbb	r5, r6, r6
 8003b18:	2e08      	cmp	r6, #8
 8003b1a:	fa55 f383 	uxtab	r3, r5, r3
 8003b1e:	f04f 0524 	mov.w	r5, #36	; 0x24
 8003b22:	bf88      	it	hi
 8003b24:	085d      	lsrhi	r5, r3, #1
 8003b26:	bf28      	it	cs
 8003b28:	4616      	movcs	r6, r2
 8003b2a:	19ab      	adds	r3, r5, r6
 8003b2c:	f8de 5000 	ldr.w	r5, [lr]
 8003b30:	f003 0607 	and.w	r6, r3, #7
 8003b34:	08db      	lsrs	r3, r3, #3
 8003b36:	fa2c f606 	lsr.w	r6, ip, r6
 8003b3a:	5cec      	ldrb	r4, [r5, r3]
 8003b3c:	4326      	orrs	r6, r4
 8003b3e:	54ee      	strb	r6, [r5, r3]
 8003b40:	7803      	ldrb	r3, [r0, #0]
 8003b42:	33fc      	adds	r3, #252	; 0xfc
 8003b44:	b2de      	uxtb	r6, r3
 8003b46:	fb16 f506 	smulbb	r5, r6, r6
 8003b4a:	2e08      	cmp	r6, #8
 8003b4c:	fa55 f383 	uxtab	r3, r5, r3
 8003b50:	f04f 0524 	mov.w	r5, #36	; 0x24
 8003b54:	bf88      	it	hi
 8003b56:	085d      	lsrhi	r5, r3, #1
 8003b58:	bf28      	it	cs
 8003b5a:	4616      	movcs	r6, r2
 8003b5c:	19ab      	adds	r3, r5, r6
 8003b5e:	f8de 5000 	ldr.w	r5, [lr]
 8003b62:	f003 0607 	and.w	r6, r3, #7
 8003b66:	08db      	lsrs	r3, r3, #3
 8003b68:	fa2c f606 	lsr.w	r6, ip, r6
 8003b6c:	5cec      	ldrb	r4, [r5, r3]
 8003b6e:	4326      	orrs	r6, r4
 8003b70:	54ee      	strb	r6, [r5, r3]
 8003b72:	7803      	ldrb	r3, [r0, #0]
 8003b74:	33fd      	adds	r3, #253	; 0xfd
 8003b76:	b2de      	uxtb	r6, r3
 8003b78:	fb16 f506 	smulbb	r5, r6, r6
 8003b7c:	2e08      	cmp	r6, #8
 8003b7e:	fa55 f383 	uxtab	r3, r5, r3
 8003b82:	f04f 0524 	mov.w	r5, #36	; 0x24
 8003b86:	bf88      	it	hi
 8003b88:	085d      	lsrhi	r5, r3, #1
 8003b8a:	bf28      	it	cs
 8003b8c:	4616      	movcs	r6, r2
 8003b8e:	19ab      	adds	r3, r5, r6
 8003b90:	f8de 5000 	ldr.w	r5, [lr]
 8003b94:	f003 0607 	and.w	r6, r3, #7
 8003b98:	08db      	lsrs	r3, r3, #3
 8003b9a:	fa2c f606 	lsr.w	r6, ip, r6
 8003b9e:	5cec      	ldrb	r4, [r5, r3]
 8003ba0:	4326      	orrs	r6, r4
 8003ba2:	54ee      	strb	r6, [r5, r3]
 8003ba4:	7803      	ldrb	r3, [r0, #0]
 8003ba6:	33fe      	adds	r3, #254	; 0xfe
 8003ba8:	b2de      	uxtb	r6, r3
 8003baa:	fb16 f506 	smulbb	r5, r6, r6
 8003bae:	2e08      	cmp	r6, #8
 8003bb0:	fa55 f383 	uxtab	r3, r5, r3
 8003bb4:	f04f 0524 	mov.w	r5, #36	; 0x24
 8003bb8:	bf88      	it	hi
 8003bba:	085d      	lsrhi	r5, r3, #1
 8003bbc:	bf28      	it	cs
 8003bbe:	4616      	movcs	r6, r2
 8003bc0:	19ab      	adds	r3, r5, r6
 8003bc2:	f8de 5000 	ldr.w	r5, [lr]
 8003bc6:	f003 0607 	and.w	r6, r3, #7
 8003bca:	08db      	lsrs	r3, r3, #3
 8003bcc:	fa2c f606 	lsr.w	r6, ip, r6
 8003bd0:	5cec      	ldrb	r4, [r5, r3]
 8003bd2:	4326      	orrs	r6, r4
 8003bd4:	54ee      	strb	r6, [r5, r3]
 8003bd6:	7803      	ldrb	r3, [r0, #0]
 8003bd8:	33ff      	adds	r3, #255	; 0xff
 8003bda:	b2de      	uxtb	r6, r3
 8003bdc:	fb16 f506 	smulbb	r5, r6, r6
 8003be0:	2e08      	cmp	r6, #8
 8003be2:	fa55 f383 	uxtab	r3, r5, r3
 8003be6:	bf88      	it	hi
 8003be8:	0859      	lsrhi	r1, r3, #1
 8003bea:	bf38      	it	cc
 8003bec:	4632      	movcc	r2, r6
 8003bee:	f8de 3000 	ldr.w	r3, [lr]
 8003bf2:	4411      	add	r1, r2
 8003bf4:	08ca      	lsrs	r2, r1, #3
 8003bf6:	f001 0107 	and.w	r1, r1, #7
 8003bfa:	fa2c f101 	lsr.w	r1, ip, r1
 8003bfe:	5c9e      	ldrb	r6, [r3, r2]
 8003c00:	4331      	orrs	r1, r6
 8003c02:	5499      	strb	r1, [r3, r2]
 8003c04:	7801      	ldrb	r1, [r0, #0]
 8003c06:	290e      	cmp	r1, #14
 8003c08:	d101      	bne.n	8003c0e <initframe+0x7b0>
 8003c0a:	220e      	movs	r2, #14
 8003c0c:	e056      	b.n	8003cbc <initframe+0x85e>
 8003c0e:	2100      	movs	r1, #0
 8003c10:	f101 0208 	add.w	r2, r1, #8
 8003c14:	f011 0f01 	tst.w	r1, #1
 8003c18:	d119      	bne.n	8003c4e <initframe+0x7f0>
 8003c1a:	f89a 0000 	ldrb.w	r0, [sl]
 8003c1e:	f8db 3000 	ldr.w	r3, [fp]
 8003c22:	f002 0507 	and.w	r5, r2, #7
 8003c26:	fa2c f505 	lsr.w	r5, ip, r5
 8003c2a:	eb00 0040 	add.w	r0, r0, r0, lsl #1
 8003c2e:	0040      	lsls	r0, r0, #1
 8003c30:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
 8003c34:	5c1e      	ldrb	r6, [r3, r0]
 8003c36:	432e      	orrs	r6, r5
 8003c38:	541e      	strb	r6, [r3, r0]
 8003c3a:	f89a 0000 	ldrb.w	r0, [sl]
 8003c3e:	4350      	muls	r0, r2
 8003c40:	f8db 2000 	ldr.w	r2, [fp]
 8003c44:	5c13      	ldrb	r3, [r2, r0]
 8003c46:	f043 0302 	orr.w	r3, r3, #2
 8003c4a:	5413      	strb	r3, [r2, r0]
 8003c4c:	e02c      	b.n	8003ca8 <initframe+0x84a>
 8003c4e:	b2d3      	uxtb	r3, r2
 8003c50:	f640 3014 	movw	r0, #2836	; 0xb14
 8003c54:	fb13 f603 	smulbb	r6, r3, r3
 8003c58:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003c5c:	2b06      	cmp	r3, #6
 8003c5e:	fa56 f282 	uxtab	r2, r6, r2
 8003c62:	f04f 0615 	mov.w	r6, #21
 8003c66:	4686      	mov	lr, r0
 8003c68:	bf88      	it	hi
 8003c6a:	0856      	lsrhi	r6, r2, #1
 8003c6c:	461a      	mov	r2, r3
 8003c6e:	bf88      	it	hi
 8003c70:	2206      	movhi	r2, #6
 8003c72:	f8de 4000 	ldr.w	r4, [lr]
 8003c76:	2b06      	cmp	r3, #6
 8003c78:	4432      	add	r2, r6
 8003c7a:	f002 0507 	and.w	r5, r2, #7
 8003c7e:	ea4f 02d2 	mov.w	r2, r2, lsr #3
 8003c82:	fa2c f505 	lsr.w	r5, ip, r5
 8003c86:	5ca0      	ldrb	r0, [r4, r2]
 8003c88:	ea40 0005 	orr.w	r0, r0, r5
 8003c8c:	54a0      	strb	r0, [r4, r2]
 8003c8e:	bf28      	it	cs
 8003c90:	2306      	movcs	r3, #6
 8003c92:	18f0      	adds	r0, r6, r3
 8003c94:	f8de 3000 	ldr.w	r3, [lr]
 8003c98:	08c2      	lsrs	r2, r0, #3
 8003c9a:	f000 0007 	and.w	r0, r0, #7
 8003c9e:	fa2c f000 	lsr.w	r0, ip, r0
 8003ca2:	5c9e      	ldrb	r6, [r3, r2]
 8003ca4:	4330      	orrs	r0, r6
 8003ca6:	5498      	strb	r0, [r3, r2]
 8003ca8:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8003cac:	3101      	adds	r1, #1
 8003cae:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003cb2:	7802      	ldrb	r2, [r0, #0]
 8003cb4:	f1a2 000e 	sub.w	r0, r2, #14
 8003cb8:	4281      	cmp	r1, r0
 8003cba:	d3a9      	bcc.n	8003c10 <initframe+0x7b2>
 8003cbc:	f640 3008 	movw	r0, #2824	; 0xb08
 8003cc0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003cc4:	f890 a000 	ldrb.w	sl, [r0]
 8003cc8:	f1ba 0f07 	cmp.w	sl, #7
 8003ccc:	f0c0 80a8 	bcc.w	8003e20 <initframe+0x9c2>
 8003cd0:	f249 6124 	movw	r1, #38436	; 0x9624
 8003cd4:	f640 23f8 	movw	r3, #2808	; 0xaf8
 8003cd8:	f640 3814 	movw	r8, #2836	; 0xb14
 8003cdc:	2000      	movs	r0, #0
 8003cde:	f04f 0e11 	mov.w	lr, #17
 8003ce2:	2280      	movs	r2, #128	; 0x80
 8003ce4:	f6c0 0100 	movt	r1, #2048	; 0x800
 8003ce8:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003cec:	f2c2 0800 	movt	r8, #8192	; 0x2000
 8003cf0:	eb01 018a 	add.w	r1, r1, sl, lsl #2
 8003cf4:	469c      	mov	ip, r3
 8003cf6:	f851 bc1c 	ldr.w	fp, [r1, #-28]
 8003cfa:	f1c0 0905 	rsb	r9, r0, #5
 8003cfe:	9008      	str	r0, [sp, #32]
 8003d00:	f06f 0608 	mvn.w	r6, #8
 8003d04:	fa22 f009 	lsr.w	r0, r2, r9
 8003d08:	900a      	str	r0, [sp, #40]	; 0x28
 8003d0a:	ea4f 00e9 	mov.w	r0, r9, asr #3
 8003d0e:	9009      	str	r0, [sp, #36]	; 0x24
 8003d10:	eb0e 0406 	add.w	r4, lr, r6
 8003d14:	1ee5      	subs	r5, r4, #3
 8003d16:	3409      	adds	r4, #9
 8003d18:	fa2b f004 	lsr.w	r0, fp, r4
 8003d1c:	2c0b      	cmp	r4, #11
 8003d1e:	bf88      	it	hi
 8003d20:	fa2a f005 	lsrhi.w	r0, sl, r5
 8003d24:	07c0      	lsls	r0, r0, #31
 8003d26:	d143      	bne.n	8003db0 <initframe+0x952>
 8003d28:	f89c 0000 	ldrb.w	r0, [ip]
 8003d2c:	fa5f f589 	uxtb.w	r5, r9
 8003d30:	f640 23f8 	movw	r3, #2808	; 0xaf8
 8003d34:	f2c2 0300 	movt	r3, #8192	; 0x2000
 8003d38:	4430      	add	r0, r6
 8003d3a:	f500 7080 	add.w	r0, r0, #256	; 0x100
 8003d3e:	b2c4      	uxtb	r4, r0
 8003d40:	42a5      	cmp	r5, r4
 8003d42:	4604      	mov	r4, r0
 8003d44:	bf88      	it	hi
 8003d46:	464c      	movhi	r4, r9
 8003d48:	bf98      	it	ls
 8003d4a:	4648      	movls	r0, r9
 8003d4c:	b2e1      	uxtb	r1, r4
 8003d4e:	fb11 f101 	smulbb	r1, r1, r1
 8003d52:	fa51 f184 	uxtab	r1, r1, r4
 8003d56:	eb00 0451 	add.w	r4, r0, r1, lsr #1
 8003d5a:	0849      	lsrs	r1, r1, #1
 8003d5c:	fa51 f080 	uxtab	r0, r1, r0
 8003d60:	f8d8 1000 	ldr.w	r1, [r8]
 8003d64:	f004 0407 	and.w	r4, r4, #7
 8003d68:	08c0      	lsrs	r0, r0, #3
 8003d6a:	fa22 f404 	lsr.w	r4, r2, r4
 8003d6e:	f811 c000 	ldrb.w	ip, [r1, r0]
 8003d72:	ea44 040c 	orr.w	r4, r4, ip
 8003d76:	469c      	mov	ip, r3
 8003d78:	540c      	strb	r4, [r1, r0]
 8003d7a:	f89c 0000 	ldrb.w	r0, [ip]
 8003d7e:	4430      	add	r0, r6
 8003d80:	f500 7080 	add.w	r0, r0, #256	; 0x100
 8003d84:	b2c1      	uxtb	r1, r0
 8003d86:	42a9      	cmp	r1, r5
 8003d88:	4649      	mov	r1, r9
 8003d8a:	bf88      	it	hi
 8003d8c:	4601      	movhi	r1, r0
 8003d8e:	bf88      	it	hi
 8003d90:	4648      	movhi	r0, r9
 8003d92:	b2cd      	uxtb	r5, r1
 8003d94:	fb15 f505 	smulbb	r5, r5, r5
 8003d98:	fa55 f181 	uxtab	r1, r5, r1
 8003d9c:	eb00 0451 	add.w	r4, r0, r1, lsr #1
 8003da0:	0849      	lsrs	r1, r1, #1
 8003da2:	fa51 f080 	uxtab	r0, r1, r0
 8003da6:	f8d8 1000 	ldr.w	r1, [r8]
 8003daa:	eb01 05d0 	add.w	r5, r1, r0, lsr #3
 8003dae:	e01f      	b.n	8003df0 <initframe+0x992>
 8003db0:	f640 3111 	movw	r1, #2833	; 0xb11
 8003db4:	f89c 0000 	ldrb.w	r0, [ip]
 8003db8:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8003dba:	f640 3504 	movw	r5, #2820	; 0xb04
 8003dbe:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003dc2:	f2c2 0500 	movt	r5, #8192	; 0x2000
 8003dc6:	780c      	ldrb	r4, [r1, #0]
 8003dc8:	462b      	mov	r3, r5
 8003dca:	4430      	add	r0, r6
 8003dcc:	fb00 2004 	mla	r0, r0, r4, r2
 8003dd0:	681c      	ldr	r4, [r3, #0]
 8003dd2:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8003dd4:	5c25      	ldrb	r5, [r4, r0]
 8003dd6:	4315      	orrs	r5, r2
 8003dd8:	2280      	movs	r2, #128	; 0x80
 8003dda:	5425      	strb	r5, [r4, r0]
 8003ddc:	f89c 0000 	ldrb.w	r0, [ip]
 8003de0:	681d      	ldr	r5, [r3, #0]
 8003de2:	1834      	adds	r4, r6, r0
 8003de4:	7808      	ldrb	r0, [r1, #0]
 8003de6:	fb00 f009 	mul.w	r0, r0, r9
 8003dea:	eb00 00e4 	add.w	r0, r0, r4, asr #3
 8003dee:	4405      	add	r5, r0
 8003df0:	7829      	ldrb	r1, [r5, #0]
 8003df2:	f004 0007 	and.w	r0, r4, #7
 8003df6:	3e01      	subs	r6, #1
 8003df8:	fa22 f000 	lsr.w	r0, r2, r0
 8003dfc:	4308      	orrs	r0, r1
 8003dfe:	7028      	strb	r0, [r5, #0]
 8003e00:	f116 000c 	adds.w	r0, r6, #12
 8003e04:	d184      	bne.n	8003d10 <initframe+0x8b2>
 8003e06:	9808      	ldr	r0, [sp, #32]
 8003e08:	f1ae 0e03 	sub.w	lr, lr, #3
 8003e0c:	3001      	adds	r0, #1
 8003e0e:	2806      	cmp	r0, #6
 8003e10:	f47f af73 	bne.w	8003cfa <initframe+0x89c>
 8003e14:	f89c 2000 	ldrb.w	r2, [ip]
 8003e18:	f640 3b04 	movw	fp, #2820	; 0xb04
 8003e1c:	f2c2 0b00 	movt	fp, #8192	; 0x2000
 8003e20:	f640 3911 	movw	r9, #2833	; 0xb11
 8003e24:	f640 3a14 	movw	sl, #2836	; 0xb14
 8003e28:	2a00      	cmp	r2, #0
 8003e2a:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8003e2e:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8003e32:	d03e      	beq.n	8003eb2 <initframe+0xa54>
 8003e34:	2300      	movs	r3, #0
 8003e36:	f04f 0e07 	mov.w	lr, #7
 8003e3a:	f04f 0801 	mov.w	r8, #1
 8003e3e:	f04f 0c80 	mov.w	ip, #128	; 0x80
 8003e42:	2600      	movs	r6, #0
 8003e44:	f899 5000 	ldrb.w	r5, [r9]
 8003e48:	f8db 4000 	ldr.w	r4, [fp]
 8003e4c:	435d      	muls	r5, r3
 8003e4e:	eb05 05d6 	add.w	r5, r5, r6, lsr #3
 8003e52:	5d65      	ldrb	r5, [r4, r5]
 8003e54:	ea2e 0406 	bic.w	r4, lr, r6
 8003e58:	fa08 f404 	lsl.w	r4, r8, r4
 8003e5c:	4225      	tst	r5, r4
 8003e5e:	d01d      	beq.n	8003e9c <initframe+0xa3e>
 8003e60:	b2dd      	uxtb	r5, r3
 8003e62:	b2f4      	uxtb	r4, r6
 8003e64:	4618      	mov	r0, r3
 8003e66:	42ac      	cmp	r4, r5
 8003e68:	bf88      	it	hi
 8003e6a:	4630      	movhi	r0, r6
 8003e6c:	42ac      	cmp	r4, r5
 8003e6e:	4634      	mov	r4, r6
 8003e70:	b2c1      	uxtb	r1, r0
 8003e72:	bf88      	it	hi
 8003e74:	461c      	movhi	r4, r3
 8003e76:	f8da 5000 	ldr.w	r5, [sl]
 8003e7a:	fb11 f101 	smulbb	r1, r1, r1
 8003e7e:	fa51 f080 	uxtab	r0, r1, r0
 8003e82:	0841      	lsrs	r1, r0, #1
 8003e84:	eb04 0050 	add.w	r0, r4, r0, lsr #1
 8003e88:	fa51 f184 	uxtab	r1, r1, r4
 8003e8c:	f000 0007 	and.w	r0, r0, #7
 8003e90:	08c9      	lsrs	r1, r1, #3
 8003e92:	fa2c f000 	lsr.w	r0, ip, r0
 8003e96:	5c6a      	ldrb	r2, [r5, r1]
 8003e98:	4310      	orrs	r0, r2
 8003e9a:	5468      	strb	r0, [r5, r1]
 8003e9c:	3601      	adds	r6, #1
 8003e9e:	429e      	cmp	r6, r3
 8003ea0:	d9d0      	bls.n	8003e44 <initframe+0x9e6>
 8003ea2:	f640 20f8 	movw	r0, #2808	; 0xaf8
 8003ea6:	3301      	adds	r3, #1
 8003ea8:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003eac:	7800      	ldrb	r0, [r0, #0]
 8003eae:	4283      	cmp	r3, r0
 8003eb0:	d3c7      	bcc.n	8003e42 <initframe+0x9e4>
 8003eb2:	b00b      	add	sp, #44	; 0x2c
 8003eb4:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8003eb8:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003eba <freeframe>:
 8003eba:	b580      	push	{r7, lr}
 8003ebc:	466f      	mov	r7, sp
 8003ebe:	f640 3004 	movw	r0, #2820	; 0xb04
 8003ec2:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003ec6:	6800      	ldr	r0, [r0, #0]
 8003ec8:	f000 fb20 	bl	800450c <free>
 8003ecc:	f640 3014 	movw	r0, #2836	; 0xb14
 8003ed0:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003ed4:	6800      	ldr	r0, [r0, #0]
 8003ed6:	f000 fb19 	bl	800450c <free>
 8003eda:	f640 300c 	movw	r0, #2828	; 0xb0c
 8003ede:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003ee2:	6800      	ldr	r0, [r0, #0]
 8003ee4:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8003ee8:	f000 bb10 	b.w	800450c <free>

08003eec <initeccsize>:
 8003eec:	b5f0      	push	{r4, r5, r6, r7, lr}
 8003eee:	af03      	add	r7, sp, #12
 8003ef0:	e92d 0b00 	stmdb	sp!, {r8, r9, fp}
 8003ef4:	4680      	mov	r8, r0
 8003ef6:	f249 3478 	movw	r4, #37752	; 0x9378
 8003efa:	2001      	movs	r0, #1
 8003efc:	ea4f 0688 	mov.w	r6, r8, lsl #2
 8003f00:	f6c0 0400 	movt	r4, #2048	; 0x800
 8003f04:	b2c2      	uxtb	r2, r0
 8003f06:	eb06 1202 	add.w	r2, r6, r2, lsl #4
 8003f0a:	4422      	add	r2, r4
 8003f0c:	f812 3c14 	ldrb.w	r3, [r2, #-20]
 8003f10:	f812 5c13 	ldrb.w	r5, [r2, #-19]
 8003f14:	f812 2c12 	ldrb.w	r2, [r2, #-18]
 8003f18:	442b      	add	r3, r5
 8003f1a:	fb13 5202 	smlabb	r2, r3, r2, r5
 8003f1e:	3a03      	subs	r2, #3
 8003f20:	428a      	cmp	r2, r1
 8003f22:	bf9e      	ittt	ls
 8003f24:	3001      	addls	r0, #1
 8003f26:	b2c2      	uxtbls	r2, r0
 8003f28:	2a28      	cmpls	r2, #40	; 0x28
 8003f2a:	d3eb      	bcc.n	8003f04 <initeccsize+0x18>
 8003f2c:	f640 3108 	movw	r1, #2824	; 0xb08
 8003f30:	fa5f f980 	uxtb.w	r9, r0
 8003f34:	f640 3211 	movw	r2, #2833	; 0xb11
 8003f38:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f3c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003f40:	7008      	strb	r0, [r1, #0]
 8003f42:	2011      	movs	r0, #17
 8003f44:	f640 21f8 	movw	r1, #2808	; 0xaf8
 8003f48:	eb00 0089 	add.w	r0, r0, r9, lsl #2
 8003f4c:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f50:	7008      	strb	r0, [r1, #0]
 8003f52:	f000 00fd 	and.w	r0, r0, #253	; 0xfd
 8003f56:	1dc1      	adds	r1, r0, #7
 8003f58:	08c9      	lsrs	r1, r1, #3
 8003f5a:	fb11 f500 	smulbb	r5, r1, r0
 8003f5e:	7011      	strb	r1, [r2, #0]
 8003f60:	f5b5 7f40 	cmp.w	r5, #768	; 0x300
 8003f64:	bf98      	it	ls
 8003f66:	f44f 7540 	movls.w	r5, #768	; 0x300
 8003f6a:	4628      	mov	r0, r5
 8003f6c:	f000 fac6 	bl	80044fc <malloc>
 8003f70:	f640 21f4 	movw	r1, #2804	; 0xaf4
 8003f74:	f640 3202 	movw	r2, #2818	; 0xb02
 8003f78:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003f7c:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003f80:	6008      	str	r0, [r1, #0]
 8003f82:	f640 20f0 	movw	r0, #2800	; 0xaf0
 8003f86:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003f8a:	f880 8000 	strb.w	r8, [r0]
 8003f8e:	eb06 1009 	add.w	r0, r6, r9, lsl #4
 8003f92:	4420      	add	r0, r4
 8003f94:	f810 1c14 	ldrb.w	r1, [r0, #-20]
 8003f98:	f810 4c13 	ldrb.w	r4, [r0, #-19]
 8003f9c:	f810 6c12 	ldrb.w	r6, [r0, #-18]
 8003fa0:	f810 0c11 	ldrb.w	r0, [r0, #-17]
 8003fa4:	7011      	strb	r1, [r2, #0]
 8003fa6:	f640 3200 	movw	r2, #2816	; 0xb00
 8003faa:	eb04 0801 	add.w	r8, r4, r1
 8003fae:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003fb2:	7014      	strb	r4, [r2, #0]
 8003fb4:	f640 3201 	movw	r2, #2817	; 0xb01
 8003fb8:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003fbc:	7016      	strb	r6, [r2, #0]
 8003fbe:	f640 3210 	movw	r2, #2832	; 0xb10
 8003fc2:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8003fc6:	7010      	strb	r0, [r2, #0]
 8003fc8:	1932      	adds	r2, r6, r4
 8003fca:	4430      	add	r0, r6
 8003fcc:	fb10 2008 	smlabb	r0, r0, r8, r2
 8003fd0:	4285      	cmp	r5, r0
 8003fd2:	bf38      	it	cc
 8003fd4:	4605      	movcc	r5, r0
 8003fd6:	4628      	mov	r0, r5
 8003fd8:	f000 fa90 	bl	80044fc <malloc>
 8003fdc:	f640 21fc 	movw	r1, #2812	; 0xafc
 8003fe0:	f2c2 0100 	movt	r1, #8192	; 0x2000
 8003fe4:	6008      	str	r0, [r1, #0]
 8003fe6:	fb16 4008 	smlabb	r0, r6, r8, r4
 8003fea:	3803      	subs	r0, #3
 8003fec:	e8bd 0b00 	ldmia.w	sp!, {r8, r9, fp}
 8003ff0:	bdf0      	pop	{r4, r5, r6, r7, pc}

08003ff2 <freeecc>:
 8003ff2:	b580      	push	{r7, lr}
 8003ff4:	466f      	mov	r7, sp
 8003ff6:	f640 20f4 	movw	r0, #2804	; 0xaf4
 8003ffa:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8003ffe:	6800      	ldr	r0, [r0, #0]
 8004000:	f000 fa84 	bl	800450c <free>
 8004004:	f640 20fc 	movw	r0, #2812	; 0xafc
 8004008:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800400c:	6800      	ldr	r0, [r0, #0]
 800400e:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 8004012:	f000 ba7b 	b.w	800450c <free>

08004016 <putalign>:
 8004016:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004018:	af03      	add	r7, sp, #12
 800401a:	e92d 0f00 	stmdb	sp!, {r8, r9, sl, fp}
 800401e:	b087      	sub	sp, #28
 8004020:	f640 3911 	movw	r9, #2833	; 0xb11
 8004024:	f640 3a04 	movw	sl, #2820	; 0xb04
 8004028:	f000 0407 	and.w	r4, r0, #7
 800402c:	f04f 0b80 	mov.w	fp, #128	; 0x80
 8004030:	f2c2 0900 	movt	r9, #8192	; 0x2000
 8004034:	f2c2 0a00 	movt	sl, #8192	; 0x2000
 8004038:	f899 2000 	ldrb.w	r2, [r9]
 800403c:	f8da 5000 	ldr.w	r5, [sl]
 8004040:	434a      	muls	r2, r1
 8004042:	eb02 06e0 	add.w	r6, r2, r0, asr #3
 8004046:	2280      	movs	r2, #128	; 0x80
 8004048:	f815 c006 	ldrb.w	ip, [r5, r6]
 800404c:	fa22 f404 	lsr.w	r4, r2, r4
 8004050:	ea44 040c 	orr.w	r4, r4, ip
 8004054:	f1a1 0c02 	sub.w	ip, r1, #2
 8004058:	55ac      	strb	r4, [r5, r6]
 800405a:	1c86      	adds	r6, r0, #2
 800405c:	1e84      	subs	r4, r0, #2
 800405e:	9005      	str	r0, [sp, #20]
 8004060:	46e0      	mov	r8, ip
 8004062:	9106      	str	r1, [sp, #24]
 8004064:	f006 0507 	and.w	r5, r6, #7
 8004068:	fa22 f305 	lsr.w	r3, r2, r5
 800406c:	f004 0507 	and.w	r5, r4, #7
 8004070:	40ea      	lsrs	r2, r5
 8004072:	1e45      	subs	r5, r0, #1
 8004074:	1c88      	adds	r0, r1, #2
 8004076:	9304      	str	r3, [sp, #16]
 8004078:	9002      	str	r0, [sp, #8]
 800407a:	10f0      	asrs	r0, r6, #3
 800407c:	2604      	movs	r6, #4
 800407e:	9203      	str	r2, [sp, #12]
 8004080:	9001      	str	r0, [sp, #4]
 8004082:	10e0      	asrs	r0, r4, #3
 8004084:	9000      	str	r0, [sp, #0]
 8004086:	f899 e000 	ldrb.w	lr, [r9]
 800408a:	1e69      	subs	r1, r5, #1
 800408c:	3e01      	subs	r6, #1
 800408e:	f001 0007 	and.w	r0, r1, #7
 8004092:	fa2b f000 	lsr.w	r0, fp, r0
 8004096:	fb0e f408 	mul.w	r4, lr, r8
 800409a:	eb04 01e1 	add.w	r1, r4, r1, asr #3
 800409e:	f8da 4000 	ldr.w	r4, [sl]
 80040a2:	5c62      	ldrb	r2, [r4, r1]
 80040a4:	ea40 0002 	orr.w	r0, r0, r2
 80040a8:	5460      	strb	r0, [r4, r1]
 80040aa:	f10c 0101 	add.w	r1, ip, #1
 80040ae:	f899 0000 	ldrb.w	r0, [r9]
 80040b2:	9a00      	ldr	r2, [sp, #0]
 80040b4:	9b03      	ldr	r3, [sp, #12]
 80040b6:	fb00 2001 	mla	r0, r0, r1, r2
 80040ba:	f8da 2000 	ldr.w	r2, [sl]
 80040be:	5c14      	ldrb	r4, [r2, r0]
 80040c0:	ea44 0403 	orr.w	r4, r4, r3
 80040c4:	5414      	strb	r4, [r2, r0]
 80040c6:	f899 0000 	ldrb.w	r0, [r9]
 80040ca:	9a01      	ldr	r2, [sp, #4]
 80040cc:	9b04      	ldr	r3, [sp, #16]
 80040ce:	fb00 200c 	mla	r0, r0, ip, r2
 80040d2:	f8da 2000 	ldr.w	r2, [sl]
 80040d6:	468c      	mov	ip, r1
 80040d8:	5c14      	ldrb	r4, [r2, r0]
 80040da:	ea44 0403 	orr.w	r4, r4, r3
 80040de:	f005 0307 	and.w	r3, r5, #7
 80040e2:	5414      	strb	r4, [r2, r0]
 80040e4:	fa2b f303 	lsr.w	r3, fp, r3
 80040e8:	f899 0000 	ldrb.w	r0, [r9]
 80040ec:	9a02      	ldr	r2, [sp, #8]
 80040ee:	fb02 f000 	mul.w	r0, r2, r0
 80040f2:	f8da 2000 	ldr.w	r2, [sl]
 80040f6:	eb00 00e5 	add.w	r0, r0, r5, asr #3
 80040fa:	f105 0501 	add.w	r5, r5, #1
 80040fe:	5c14      	ldrb	r4, [r2, r0]
 8004100:	ea43 0304 	orr.w	r3, r3, r4
 8004104:	5413      	strb	r3, [r2, r0]
 8004106:	d1be      	bne.n	8004086 <putalign+0x70>
 8004108:	9a06      	ldr	r2, [sp, #24]
 800410a:	9805      	ldr	r0, [sp, #20]
 800410c:	f640 3814 	movw	r8, #2836	; 0xb14
 8004110:	2400      	movs	r4, #0
 8004112:	2500      	movs	r5, #0
 8004114:	f04f 0980 	mov.w	r9, #128	; 0x80
 8004118:	f2c2 0800 	movt	r8, #8192	; 0x2000
 800411c:	f102 0c01 	add.w	ip, r2, #1
 8004120:	f102 0aff 	add.w	sl, r2, #255	; 0xff
 8004124:	f100 0e01 	add.w	lr, r0, #1
 8004128:	f100 0bff 	add.w	fp, r0, #255	; 0xff
 800412c:	1950      	adds	r0, r2, r5
 800412e:	fa5f f68b 	uxtb.w	r6, fp
 8004132:	b2c1      	uxtb	r1, r0
 8004134:	428e      	cmp	r6, r1
 8004136:	4601      	mov	r1, r0
 8004138:	bf88      	it	hi
 800413a:	4659      	movhi	r1, fp
 800413c:	bf98      	it	ls
 800413e:	4658      	movls	r0, fp
 8004140:	b2ce      	uxtb	r6, r1
 8004142:	fb16 f606 	smulbb	r6, r6, r6
 8004146:	fa56 f181 	uxtab	r1, r6, r1
 800414a:	eb00 0651 	add.w	r6, r0, r1, lsr #1
 800414e:	0849      	lsrs	r1, r1, #1
 8004150:	fa51 f080 	uxtab	r0, r1, r0
 8004154:	f8d8 1000 	ldr.w	r1, [r8]
 8004158:	f006 0607 	and.w	r6, r6, #7
 800415c:	08c0      	lsrs	r0, r0, #3
 800415e:	fa29 f606 	lsr.w	r6, r9, r6
 8004162:	5c0b      	ldrb	r3, [r1, r0]
 8004164:	4333      	orrs	r3, r6
 8004166:	540b      	strb	r3, [r1, r0]
 8004168:	1910      	adds	r0, r2, r4
 800416a:	fa5f f38e 	uxtb.w	r3, lr
 800416e:	b2c1      	uxtb	r1, r0
 8004170:	428b      	cmp	r3, r1
 8004172:	4601      	mov	r1, r0
 8004174:	bf88      	it	hi
 8004176:	4671      	movhi	r1, lr
 8004178:	bf98      	it	ls
 800417a:	4670      	movls	r0, lr
 800417c:	b2cb      	uxtb	r3, r1
 800417e:	fb13 f303 	smulbb	r3, r3, r3
 8004182:	fa53 f181 	uxtab	r1, r3, r1
 8004186:	eb00 0351 	add.w	r3, r0, r1, lsr #1
 800418a:	0849      	lsrs	r1, r1, #1
 800418c:	fa51 f080 	uxtab	r0, r1, r0
 8004190:	f8d8 1000 	ldr.w	r1, [r8]
 8004194:	f003 0307 	and.w	r3, r3, #7
 8004198:	08c0      	lsrs	r0, r0, #3
 800419a:	fa29 f303 	lsr.w	r3, r9, r3
 800419e:	5c0e      	ldrb	r6, [r1, r0]
 80041a0:	4333      	orrs	r3, r6
 80041a2:	540b      	strb	r3, [r1, r0]
 80041a4:	fa5f f38a 	uxtb.w	r3, sl
 80041a8:	9a05      	ldr	r2, [sp, #20]
 80041aa:	1910      	adds	r0, r2, r4
 80041ac:	3c01      	subs	r4, #1
 80041ae:	b2c1      	uxtb	r1, r0
 80041b0:	4299      	cmp	r1, r3
 80041b2:	4651      	mov	r1, sl
 80041b4:	bf88      	it	hi
 80041b6:	4601      	movhi	r1, r0
 80041b8:	bf88      	it	hi
 80041ba:	4650      	movhi	r0, sl
 80041bc:	b2cb      	uxtb	r3, r1
 80041be:	fb13 f303 	smulbb	r3, r3, r3
 80041c2:	fa53 f181 	uxtab	r1, r3, r1
 80041c6:	eb00 0351 	add.w	r3, r0, r1, lsr #1
 80041ca:	0849      	lsrs	r1, r1, #1
 80041cc:	fa51 f080 	uxtab	r0, r1, r0
 80041d0:	f8d8 1000 	ldr.w	r1, [r8]
 80041d4:	f003 0307 	and.w	r3, r3, #7
 80041d8:	08c0      	lsrs	r0, r0, #3
 80041da:	fa29 f303 	lsr.w	r3, r9, r3
 80041de:	5c0e      	ldrb	r6, [r1, r0]
 80041e0:	4333      	orrs	r3, r6
 80041e2:	4666      	mov	r6, ip
 80041e4:	540b      	strb	r3, [r1, r0]
 80041e6:	1950      	adds	r0, r2, r5
 80041e8:	fa5f f38c 	uxtb.w	r3, ip
 80041ec:	3501      	adds	r5, #1
 80041ee:	b2c1      	uxtb	r1, r0
 80041f0:	4299      	cmp	r1, r3
 80041f2:	bf88      	it	hi
 80041f4:	4606      	movhi	r6, r0
 80041f6:	4299      	cmp	r1, r3
 80041f8:	b2f2      	uxtb	r2, r6
 80041fa:	bf88      	it	hi
 80041fc:	4660      	movhi	r0, ip
 80041fe:	f8d8 3000 	ldr.w	r3, [r8]
 8004202:	fb12 f202 	smulbb	r2, r2, r2
 8004206:	fa52 f286 	uxtab	r2, r2, r6
 800420a:	0856      	lsrs	r6, r2, #1
 800420c:	fa56 f180 	uxtab	r1, r6, r0
 8004210:	eb00 0052 	add.w	r0, r0, r2, lsr #1
 8004214:	9a06      	ldr	r2, [sp, #24]
 8004216:	08c9      	lsrs	r1, r1, #3
 8004218:	f000 0007 	and.w	r0, r0, #7
 800421c:	5c5e      	ldrb	r6, [r3, r1]
 800421e:	fa29 f000 	lsr.w	r0, r9, r0
 8004222:	4330      	orrs	r0, r6
 8004224:	5458      	strb	r0, [r3, r1]
 8004226:	1ca0      	adds	r0, r4, #2
 8004228:	f47f af80 	bne.w	800412c <putalign+0x116>
 800422c:	b007      	add	sp, #28
 800422e:	e8bd 0f00 	ldmia.w	sp!, {r8, r9, sl, fp}
 8004232:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004234 <benchmark>:
 8004234:	b5d0      	push	{r4, r6, r7, lr}
 8004236:	af02      	add	r7, sp, #8
 8004238:	f640 2464 	movw	r4, #2660	; 0xa64
 800423c:	2001      	movs	r0, #1
 800423e:	f2c2 0400 	movt	r4, #8192	; 0x2000
 8004242:	7821      	ldrb	r1, [r4, #0]
 8004244:	2900      	cmp	r1, #0
 8004246:	bf18      	it	ne
 8004248:	2116      	movne	r1, #22
 800424a:	f7ff fe4f 	bl	8003eec <initeccsize>
 800424e:	f640 2068 	movw	r0, #2664	; 0xa68
 8004252:	7822      	ldrb	r2, [r4, #0]
 8004254:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004258:	6801      	ldr	r1, [r0, #0]
 800425a:	f640 20fc 	movw	r0, #2812	; 0xafc
 800425e:	f2c2 0000 	movt	r0, #8192	; 0x2000
 8004262:	6800      	ldr	r0, [r0, #0]
 8004264:	2a00      	cmp	r2, #0
 8004266:	bf18      	it	ne
 8004268:	2216      	movne	r2, #22
 800426a:	f000 f8df 	bl	800442c <__aeabi_memcpy>
 800426e:	f7ff f8f6 	bl	800345e <initframe>
 8004272:	f7fd feff 	bl	8002074 <qrencode>
 8004276:	f7ff fe20 	bl	8003eba <freeframe>
 800427a:	f7ff feba 	bl	8003ff2 <freeecc>
 800427e:	2000      	movs	r0, #0
 8004280:	bdd0      	pop	{r4, r6, r7, pc}

08004282 <initialise_benchmark>:
 8004282:	f640 2068 	movw	r0, #2664	; 0xa68
 8004286:	f649 1118 	movw	r1, #39192	; 0x9918
 800428a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800428e:	f6c0 0100 	movt	r1, #2048	; 0x800
 8004292:	6001      	str	r1, [r0, #0]
 8004294:	f640 2064 	movw	r0, #2660	; 0xa64
 8004298:	2101      	movs	r1, #1
 800429a:	f2c2 0000 	movt	r0, #8192	; 0x2000
 800429e:	7001      	strb	r1, [r0, #0]
 80042a0:	4770      	bx	lr

080042a2 <verify_benchmark>:
 80042a2:	f640 20fc 	movw	r0, #2812	; 0xafc
 80042a6:	f249 6cac 	movw	ip, #38572	; 0x96ac
 80042aa:	2100      	movs	r1, #0
 80042ac:	f2c2 0000 	movt	r0, #8192	; 0x2000
 80042b0:	f6c0 0c00 	movt	ip, #2048	; 0x800
 80042b4:	6800      	ldr	r0, [r0, #0]
 80042b6:	f85c 3021 	ldr.w	r3, [ip, r1, lsl #2]
 80042ba:	5c42      	ldrb	r2, [r0, r1]
 80042bc:	429a      	cmp	r2, r3
 80042be:	bf1c      	itt	ne
 80042c0:	2000      	movne	r0, #0
 80042c2:	4770      	bxne	lr
 80042c4:	3101      	adds	r1, #1
 80042c6:	2915      	cmp	r1, #21
 80042c8:	bfc4      	itt	gt
 80042ca:	2001      	movgt	r0, #1
 80042cc:	4770      	bxgt	lr
 80042ce:	e7f2      	b.n	80042b6 <verify_benchmark+0x14>

080042d0 <SysTick_Handler>:
 80042d0:	b580      	push	{r7, lr}
 80042d2:	466f      	mov	r7, sp
 80042d4:	f7fc ff98 	bl	8001208 <HAL_IncTick>
 80042d8:	e8bd 4080 	ldmia.w	sp!, {r7, lr}
 80042dc:	f7fc bff2 	b.w	80012c4 <HAL_SYSTICK_IRQHandler>

080042e0 <_read>:
 80042e0:	b5f0      	push	{r4, r5, r6, r7, lr}
 80042e2:	af03      	add	r7, sp, #12
 80042e4:	f84d bd04 	str.w	fp, [sp, #-4]!
 80042e8:	4614      	mov	r4, r2
 80042ea:	460d      	mov	r5, r1
 80042ec:	2c01      	cmp	r4, #1
 80042ee:	db06      	blt.n	80042fe <_read+0x1e>
 80042f0:	4626      	mov	r6, r4
 80042f2:	f3af 8000 	nop.w
 80042f6:	f805 0b01 	strb.w	r0, [r5], #1
 80042fa:	3e01      	subs	r6, #1
 80042fc:	d1f9      	bne.n	80042f2 <_read+0x12>
 80042fe:	4620      	mov	r0, r4
 8004300:	f85d bb04 	ldr.w	fp, [sp], #4
 8004304:	bdf0      	pop	{r4, r5, r6, r7, pc}

08004306 <_write>:
 8004306:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004308:	af03      	add	r7, sp, #12
 800430a:	f84d bd04 	str.w	fp, [sp, #-4]!
 800430e:	4614      	mov	r4, r2
 8004310:	460d      	mov	r5, r1
 8004312:	2c01      	cmp	r4, #1
 8004314:	db06      	blt.n	8004324 <_write+0x1e>
 8004316:	4626      	mov	r6, r4
 8004318:	f815 0b01 	ldrb.w	r0, [r5], #1
 800431c:	f7fd fe4b 	bl	8001fb6 <__io_putchar>
 8004320:	3e01      	subs	r6, #1
 8004322:	d1f9      	bne.n	8004318 <_write+0x12>
 8004324:	4620      	mov	r0, r4
 8004326:	f85d bb04 	ldr.w	fp, [sp], #4
 800432a:	bdf0      	pop	{r4, r5, r6, r7, pc}

0800432c <_sbrk>:
 800432c:	f640 2270 	movw	r2, #2672	; 0xa70
 8004330:	4601      	mov	r1, r0
 8004332:	466b      	mov	r3, sp
 8004334:	f2c2 0200 	movt	r2, #8192	; 0x2000
 8004338:	6810      	ldr	r0, [r2, #0]
 800433a:	2800      	cmp	r0, #0
 800433c:	bf02      	ittt	eq
 800433e:	f640 3040 	movweq	r0, #2880	; 0xb40
 8004342:	f2c2 0000 	movteq	r0, #8192	; 0x2000
 8004346:	6010      	streq	r0, [r2, #0]
 8004348:	4401      	add	r1, r0
 800434a:	4299      	cmp	r1, r3
 800434c:	bf9c      	itt	ls
 800434e:	6011      	strls	r1, [r2, #0]
 8004350:	4770      	bxls	lr
 8004352:	b580      	push	{r7, lr}
 8004354:	466f      	mov	r7, sp
 8004356:	f000 f8a7 	bl	80044a8 <__errno>
 800435a:	210c      	movs	r1, #12
 800435c:	6001      	str	r1, [r0, #0]
 800435e:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004362:	bd80      	pop	{r7, pc}

08004364 <_close>:
 8004364:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8004368:	4770      	bx	lr

0800436a <_fstat>:
 800436a:	f44f 5000 	mov.w	r0, #8192	; 0x2000
 800436e:	6048      	str	r0, [r1, #4]
 8004370:	2000      	movs	r0, #0
 8004372:	4770      	bx	lr

08004374 <_isatty>:
 8004374:	2001      	movs	r0, #1
 8004376:	4770      	bx	lr

08004378 <_lseek>:
 8004378:	2000      	movs	r0, #0
 800437a:	4770      	bx	lr

0800437c <SystemInit>:
 800437c:	f64e 5088 	movw	r0, #60808	; 0xed88
 8004380:	f04f 0c00 	mov.w	ip, #0
 8004384:	f2ce 0000 	movt	r0, #57344	; 0xe000
 8004388:	6801      	ldr	r1, [r0, #0]
 800438a:	f441 0170 	orr.w	r1, r1, #15728640	; 0xf00000
 800438e:	6001      	str	r1, [r0, #0]
 8004390:	f241 0100 	movw	r1, #4096	; 0x1000
 8004394:	f2c4 0102 	movt	r1, #16386	; 0x4002
 8004398:	680a      	ldr	r2, [r1, #0]
 800439a:	f042 0201 	orr.w	r2, r2, #1
 800439e:	600a      	str	r2, [r1, #0]
 80043a0:	f8c1 c008 	str.w	ip, [r1, #8]
 80043a4:	f64f 72ff 	movw	r2, #65535	; 0xffff
 80043a8:	680b      	ldr	r3, [r1, #0]
 80043aa:	f6ce 22f6 	movt	r2, #60150	; 0xeaf6
 80043ae:	401a      	ands	r2, r3
 80043b0:	600a      	str	r2, [r1, #0]
 80043b2:	f44f 5280 	mov.w	r2, #4096	; 0x1000
 80043b6:	60ca      	str	r2, [r1, #12]
 80043b8:	680a      	ldr	r2, [r1, #0]
 80043ba:	f422 2280 	bic.w	r2, r2, #262144	; 0x40000
 80043be:	600a      	str	r2, [r1, #0]
 80043c0:	f8c1 c018 	str.w	ip, [r1, #24]
 80043c4:	f04f 6100 	mov.w	r1, #134217728	; 0x8000000
 80043c8:	f840 1c80 	str.w	r1, [r0, #-128]
 80043cc:	4770      	bx	lr
	...

080043d0 <Reset_Handler>:
 80043d0:	f8df d034 	ldr.w	sp, [pc, #52]	; 8004408 <LoopForever+0x2>
 80043d4:	2100      	movs	r1, #0
 80043d6:	e003      	b.n	80043e0 <LoopCopyDataInit>

080043d8 <CopyDataInit>:
 80043d8:	4b0c      	ldr	r3, [pc, #48]	; (800440c <LoopForever+0x6>)
 80043da:	585b      	ldr	r3, [r3, r1]
 80043dc:	5043      	str	r3, [r0, r1]
 80043de:	3104      	adds	r1, #4

080043e0 <LoopCopyDataInit>:
 80043e0:	480b      	ldr	r0, [pc, #44]	; (8004410 <LoopForever+0xa>)
 80043e2:	4b0c      	ldr	r3, [pc, #48]	; (8004414 <LoopForever+0xe>)
 80043e4:	1842      	adds	r2, r0, r1
 80043e6:	429a      	cmp	r2, r3
 80043e8:	d3f6      	bcc.n	80043d8 <CopyDataInit>
 80043ea:	4a0b      	ldr	r2, [pc, #44]	; (8004418 <LoopForever+0x12>)
 80043ec:	e002      	b.n	80043f4 <LoopFillZerobss>

080043ee <FillZerobss>:
 80043ee:	2300      	movs	r3, #0
 80043f0:	f842 3b04 	str.w	r3, [r2], #4

080043f4 <LoopFillZerobss>:
 80043f4:	4b09      	ldr	r3, [pc, #36]	; (800441c <LoopForever+0x16>)
 80043f6:	429a      	cmp	r2, r3
 80043f8:	d3f9      	bcc.n	80043ee <FillZerobss>
 80043fa:	f7ff ffbf 	bl	800437c <SystemInit>
 80043fe:	f000 f859 	bl	80044b4 <__libc_init_array>
 8004402:	f7fd fde9 	bl	8001fd8 <main>

08004406 <LoopForever>:
 8004406:	e7fe      	b.n	8004406 <LoopForever>
 8004408:	20018000 	.word	0x20018000
 800440c:	08009bd8 	.word	0x08009bd8
 8004410:	20000000 	.word	0x20000000
 8004414:	200009c8 	.word	0x200009c8
 8004418:	200009c8 	.word	0x200009c8
 800441c:	20000b40 	.word	0x20000b40

08004420 <ADC1_2_IRQHandler>:
 8004420:	e7fe      	b.n	8004420 <ADC1_2_IRQHandler>
	...

08004424 <__aeabi_memclr>:
 8004424:	2200      	movs	r2, #0
 8004426:	f7fc b888 	b.w	800053a <__aeabi_memset>
 800442a:	bf00      	nop

0800442c <__aeabi_memcpy>:
 800442c:	f7fc b8d2 	b.w	80005d4 <memcpy>

08004430 <calloc>:
 8004430:	4b02      	ldr	r3, [pc, #8]	; (800443c <calloc+0xc>)
 8004432:	460a      	mov	r2, r1
 8004434:	4601      	mov	r1, r0
 8004436:	6818      	ldr	r0, [r3, #0]
 8004438:	f000 b802 	b.w	8004440 <_calloc_r>
 800443c:	20000018 	.word	0x20000018

08004440 <_calloc_r>:
 8004440:	b510      	push	{r4, lr}
 8004442:	fb02 f101 	mul.w	r1, r2, r1
 8004446:	f000 f869 	bl	800451c <_malloc_r>
 800444a:	4604      	mov	r4, r0
 800444c:	b1d8      	cbz	r0, 8004486 <_calloc_r+0x46>
 800444e:	f850 2c04 	ldr.w	r2, [r0, #-4]
 8004452:	f022 0203 	bic.w	r2, r2, #3
 8004456:	3a04      	subs	r2, #4
 8004458:	2a24      	cmp	r2, #36	; 0x24
 800445a:	d81d      	bhi.n	8004498 <_calloc_r+0x58>
 800445c:	2a13      	cmp	r2, #19
 800445e:	d914      	bls.n	800448a <_calloc_r+0x4a>
 8004460:	2300      	movs	r3, #0
 8004462:	2a1b      	cmp	r2, #27
 8004464:	e9c0 3300 	strd	r3, r3, [r0]
 8004468:	d91b      	bls.n	80044a2 <_calloc_r+0x62>
 800446a:	2a24      	cmp	r2, #36	; 0x24
 800446c:	e9c0 3302 	strd	r3, r3, [r0, #8]
 8004470:	bf0a      	itet	eq
 8004472:	e9c0 3304 	strdeq	r3, r3, [r0, #16]
 8004476:	f100 0210 	addne.w	r2, r0, #16
 800447a:	f100 0218 	addeq.w	r2, r0, #24
 800447e:	2300      	movs	r3, #0
 8004480:	e9c2 3300 	strd	r3, r3, [r2]
 8004484:	6093      	str	r3, [r2, #8]
 8004486:	4620      	mov	r0, r4
 8004488:	bd10      	pop	{r4, pc}
 800448a:	4602      	mov	r2, r0
 800448c:	2300      	movs	r3, #0
 800448e:	e9c2 3300 	strd	r3, r3, [r2]
 8004492:	6093      	str	r3, [r2, #8]
 8004494:	4620      	mov	r0, r4
 8004496:	bd10      	pop	{r4, pc}
 8004498:	2100      	movs	r1, #0
 800449a:	f000 fae3 	bl	8004a64 <memset>
 800449e:	4620      	mov	r0, r4
 80044a0:	bd10      	pop	{r4, pc}
 80044a2:	f100 0208 	add.w	r2, r0, #8
 80044a6:	e7f1      	b.n	800448c <_calloc_r+0x4c>

080044a8 <__errno>:
 80044a8:	4b01      	ldr	r3, [pc, #4]	; (80044b0 <__errno+0x8>)
 80044aa:	6818      	ldr	r0, [r3, #0]
 80044ac:	4770      	bx	lr
 80044ae:	bf00      	nop
 80044b0:	20000018 	.word	0x20000018

080044b4 <__libc_init_array>:
 80044b4:	b570      	push	{r4, r5, r6, lr}
 80044b6:	4e0d      	ldr	r6, [pc, #52]	; (80044ec <__libc_init_array+0x38>)
 80044b8:	4d0d      	ldr	r5, [pc, #52]	; (80044f0 <__libc_init_array+0x3c>)
 80044ba:	1b76      	subs	r6, r6, r5
 80044bc:	10b6      	asrs	r6, r6, #2
 80044be:	d006      	beq.n	80044ce <__libc_init_array+0x1a>
 80044c0:	2400      	movs	r4, #0
 80044c2:	3401      	adds	r4, #1
 80044c4:	f855 3b04 	ldr.w	r3, [r5], #4
 80044c8:	4798      	blx	r3
 80044ca:	42a6      	cmp	r6, r4
 80044cc:	d1f9      	bne.n	80044c2 <__libc_init_array+0xe>
 80044ce:	4e09      	ldr	r6, [pc, #36]	; (80044f4 <__libc_init_array+0x40>)
 80044d0:	4d09      	ldr	r5, [pc, #36]	; (80044f8 <__libc_init_array+0x44>)
 80044d2:	1b76      	subs	r6, r6, r5
 80044d4:	f004 fe84 	bl	80091e0 <_init>
 80044d8:	10b6      	asrs	r6, r6, #2
 80044da:	d006      	beq.n	80044ea <__libc_init_array+0x36>
 80044dc:	2400      	movs	r4, #0
 80044de:	3401      	adds	r4, #1
 80044e0:	f855 3b04 	ldr.w	r3, [r5], #4
 80044e4:	4798      	blx	r3
 80044e6:	42a6      	cmp	r6, r4
 80044e8:	d1f9      	bne.n	80044de <__libc_init_array+0x2a>
 80044ea:	bd70      	pop	{r4, r5, r6, pc}
 80044ec:	08009bc8 	.word	0x08009bc8
 80044f0:	08009bc8 	.word	0x08009bc8
 80044f4:	08009bd0 	.word	0x08009bd0
 80044f8:	08009bc8 	.word	0x08009bc8

080044fc <malloc>:
 80044fc:	4b02      	ldr	r3, [pc, #8]	; (8004508 <malloc+0xc>)
 80044fe:	4601      	mov	r1, r0
 8004500:	6818      	ldr	r0, [r3, #0]
 8004502:	f000 b80b 	b.w	800451c <_malloc_r>
 8004506:	bf00      	nop
 8004508:	20000018 	.word	0x20000018

0800450c <free>:
 800450c:	4b02      	ldr	r3, [pc, #8]	; (8004518 <free+0xc>)
 800450e:	4601      	mov	r1, r0
 8004510:	6818      	ldr	r0, [r3, #0]
 8004512:	f003 bab9 	b.w	8007a88 <_free_r>
 8004516:	bf00      	nop
 8004518:	20000018 	.word	0x20000018

0800451c <_malloc_r>:
 800451c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004520:	f101 050b 	add.w	r5, r1, #11
 8004524:	2d16      	cmp	r5, #22
 8004526:	b083      	sub	sp, #12
 8004528:	4606      	mov	r6, r0
 800452a:	d823      	bhi.n	8004574 <_malloc_r+0x58>
 800452c:	2910      	cmp	r1, #16
 800452e:	f200 80b9 	bhi.w	80046a4 <_malloc_r+0x188>
 8004532:	f000 fae1 	bl	8004af8 <__malloc_lock>
 8004536:	2510      	movs	r5, #16
 8004538:	2318      	movs	r3, #24
 800453a:	2002      	movs	r0, #2
 800453c:	4fc5      	ldr	r7, [pc, #788]	; (8004854 <_malloc_r+0x338>)
 800453e:	443b      	add	r3, r7
 8004540:	f1a3 0208 	sub.w	r2, r3, #8
 8004544:	685c      	ldr	r4, [r3, #4]
 8004546:	4294      	cmp	r4, r2
 8004548:	f000 8166 	beq.w	8004818 <_malloc_r+0x2fc>
 800454c:	6863      	ldr	r3, [r4, #4]
 800454e:	f023 0303 	bic.w	r3, r3, #3
 8004552:	4423      	add	r3, r4
 8004554:	e9d4 5102 	ldrd	r5, r1, [r4, #8]
 8004558:	685a      	ldr	r2, [r3, #4]
 800455a:	60e9      	str	r1, [r5, #12]
 800455c:	f042 0201 	orr.w	r2, r2, #1
 8004560:	608d      	str	r5, [r1, #8]
 8004562:	4630      	mov	r0, r6
 8004564:	605a      	str	r2, [r3, #4]
 8004566:	f000 facd 	bl	8004b04 <__malloc_unlock>
 800456a:	3408      	adds	r4, #8
 800456c:	4620      	mov	r0, r4
 800456e:	b003      	add	sp, #12
 8004570:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004574:	f035 0507 	bics.w	r5, r5, #7
 8004578:	f100 8094 	bmi.w	80046a4 <_malloc_r+0x188>
 800457c:	42a9      	cmp	r1, r5
 800457e:	f200 8091 	bhi.w	80046a4 <_malloc_r+0x188>
 8004582:	f000 fab9 	bl	8004af8 <__malloc_lock>
 8004586:	f5b5 7ffc 	cmp.w	r5, #504	; 0x1f8
 800458a:	f0c0 8183 	bcc.w	8004894 <_malloc_r+0x378>
 800458e:	0a6b      	lsrs	r3, r5, #9
 8004590:	f000 808f 	beq.w	80046b2 <_malloc_r+0x196>
 8004594:	2b04      	cmp	r3, #4
 8004596:	f200 8146 	bhi.w	8004826 <_malloc_r+0x30a>
 800459a:	09ab      	lsrs	r3, r5, #6
 800459c:	f103 0039 	add.w	r0, r3, #57	; 0x39
 80045a0:	f103 0c38 	add.w	ip, r3, #56	; 0x38
 80045a4:	00c3      	lsls	r3, r0, #3
 80045a6:	4fab      	ldr	r7, [pc, #684]	; (8004854 <_malloc_r+0x338>)
 80045a8:	443b      	add	r3, r7
 80045aa:	f1a3 0108 	sub.w	r1, r3, #8
 80045ae:	685c      	ldr	r4, [r3, #4]
 80045b0:	42a1      	cmp	r1, r4
 80045b2:	d106      	bne.n	80045c2 <_malloc_r+0xa6>
 80045b4:	e00c      	b.n	80045d0 <_malloc_r+0xb4>
 80045b6:	2a00      	cmp	r2, #0
 80045b8:	f280 811d 	bge.w	80047f6 <_malloc_r+0x2da>
 80045bc:	68e4      	ldr	r4, [r4, #12]
 80045be:	42a1      	cmp	r1, r4
 80045c0:	d006      	beq.n	80045d0 <_malloc_r+0xb4>
 80045c2:	6863      	ldr	r3, [r4, #4]
 80045c4:	f023 0303 	bic.w	r3, r3, #3
 80045c8:	1b5a      	subs	r2, r3, r5
 80045ca:	2a0f      	cmp	r2, #15
 80045cc:	ddf3      	ble.n	80045b6 <_malloc_r+0x9a>
 80045ce:	4660      	mov	r0, ip
 80045d0:	693c      	ldr	r4, [r7, #16]
 80045d2:	f8df c294 	ldr.w	ip, [pc, #660]	; 8004868 <_malloc_r+0x34c>
 80045d6:	4564      	cmp	r4, ip
 80045d8:	d071      	beq.n	80046be <_malloc_r+0x1a2>
 80045da:	6863      	ldr	r3, [r4, #4]
 80045dc:	f023 0303 	bic.w	r3, r3, #3
 80045e0:	1b5a      	subs	r2, r3, r5
 80045e2:	2a0f      	cmp	r2, #15
 80045e4:	f300 8144 	bgt.w	8004870 <_malloc_r+0x354>
 80045e8:	2a00      	cmp	r2, #0
 80045ea:	e9c7 cc04 	strd	ip, ip, [r7, #16]
 80045ee:	f280 8126 	bge.w	800483e <_malloc_r+0x322>
 80045f2:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
 80045f6:	f080 8169 	bcs.w	80048cc <_malloc_r+0x3b0>
 80045fa:	08db      	lsrs	r3, r3, #3
 80045fc:	1c59      	adds	r1, r3, #1
 80045fe:	687a      	ldr	r2, [r7, #4]
 8004600:	f857 8031 	ldr.w	r8, [r7, r1, lsl #3]
 8004604:	f8c4 8008 	str.w	r8, [r4, #8]
 8004608:	f04f 0e01 	mov.w	lr, #1
 800460c:	109b      	asrs	r3, r3, #2
 800460e:	fa0e f303 	lsl.w	r3, lr, r3
 8004612:	eb07 0ec1 	add.w	lr, r7, r1, lsl #3
 8004616:	4313      	orrs	r3, r2
 8004618:	f1ae 0208 	sub.w	r2, lr, #8
 800461c:	60e2      	str	r2, [r4, #12]
 800461e:	607b      	str	r3, [r7, #4]
 8004620:	f847 4031 	str.w	r4, [r7, r1, lsl #3]
 8004624:	f8c8 400c 	str.w	r4, [r8, #12]
 8004628:	1082      	asrs	r2, r0, #2
 800462a:	2401      	movs	r4, #1
 800462c:	4094      	lsls	r4, r2
 800462e:	429c      	cmp	r4, r3
 8004630:	d84b      	bhi.n	80046ca <_malloc_r+0x1ae>
 8004632:	421c      	tst	r4, r3
 8004634:	d106      	bne.n	8004644 <_malloc_r+0x128>
 8004636:	f020 0003 	bic.w	r0, r0, #3
 800463a:	0064      	lsls	r4, r4, #1
 800463c:	421c      	tst	r4, r3
 800463e:	f100 0004 	add.w	r0, r0, #4
 8004642:	d0fa      	beq.n	800463a <_malloc_r+0x11e>
 8004644:	eb07 09c0 	add.w	r9, r7, r0, lsl #3
 8004648:	46ce      	mov	lr, r9
 800464a:	4680      	mov	r8, r0
 800464c:	f8de 300c 	ldr.w	r3, [lr, #12]
 8004650:	459e      	cmp	lr, r3
 8004652:	d107      	bne.n	8004664 <_malloc_r+0x148>
 8004654:	e122      	b.n	800489c <_malloc_r+0x380>
 8004656:	2a00      	cmp	r2, #0
 8004658:	f280 8129 	bge.w	80048ae <_malloc_r+0x392>
 800465c:	68db      	ldr	r3, [r3, #12]
 800465e:	459e      	cmp	lr, r3
 8004660:	f000 811c 	beq.w	800489c <_malloc_r+0x380>
 8004664:	6859      	ldr	r1, [r3, #4]
 8004666:	f021 0103 	bic.w	r1, r1, #3
 800466a:	1b4a      	subs	r2, r1, r5
 800466c:	2a0f      	cmp	r2, #15
 800466e:	ddf2      	ble.n	8004656 <_malloc_r+0x13a>
 8004670:	e9d3 8e02 	ldrd	r8, lr, [r3, #8]
 8004674:	195c      	adds	r4, r3, r5
 8004676:	f045 0501 	orr.w	r5, r5, #1
 800467a:	605d      	str	r5, [r3, #4]
 800467c:	f042 0501 	orr.w	r5, r2, #1
 8004680:	f8c8 e00c 	str.w	lr, [r8, #12]
 8004684:	4630      	mov	r0, r6
 8004686:	f8ce 8008 	str.w	r8, [lr, #8]
 800468a:	e9c7 4404 	strd	r4, r4, [r7, #16]
 800468e:	e9c4 cc02 	strd	ip, ip, [r4, #8]
 8004692:	6065      	str	r5, [r4, #4]
 8004694:	505a      	str	r2, [r3, r1]
 8004696:	9301      	str	r3, [sp, #4]
 8004698:	f000 fa34 	bl	8004b04 <__malloc_unlock>
 800469c:	9b01      	ldr	r3, [sp, #4]
 800469e:	f103 0408 	add.w	r4, r3, #8
 80046a2:	e763      	b.n	800456c <_malloc_r+0x50>
 80046a4:	2400      	movs	r4, #0
 80046a6:	230c      	movs	r3, #12
 80046a8:	4620      	mov	r0, r4
 80046aa:	6033      	str	r3, [r6, #0]
 80046ac:	b003      	add	sp, #12
 80046ae:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80046b2:	f44f 7300 	mov.w	r3, #512	; 0x200
 80046b6:	2040      	movs	r0, #64	; 0x40
 80046b8:	f04f 0c3f 	mov.w	ip, #63	; 0x3f
 80046bc:	e773      	b.n	80045a6 <_malloc_r+0x8a>
 80046be:	687b      	ldr	r3, [r7, #4]
 80046c0:	1082      	asrs	r2, r0, #2
 80046c2:	2401      	movs	r4, #1
 80046c4:	4094      	lsls	r4, r2
 80046c6:	429c      	cmp	r4, r3
 80046c8:	d9b3      	bls.n	8004632 <_malloc_r+0x116>
 80046ca:	68bc      	ldr	r4, [r7, #8]
 80046cc:	6863      	ldr	r3, [r4, #4]
 80046ce:	f023 0903 	bic.w	r9, r3, #3
 80046d2:	45a9      	cmp	r9, r5
 80046d4:	d303      	bcc.n	80046de <_malloc_r+0x1c2>
 80046d6:	eba9 0305 	sub.w	r3, r9, r5
 80046da:	2b0f      	cmp	r3, #15
 80046dc:	dc7b      	bgt.n	80047d6 <_malloc_r+0x2ba>
 80046de:	4b5e      	ldr	r3, [pc, #376]	; (8004858 <_malloc_r+0x33c>)
 80046e0:	f8df a188 	ldr.w	sl, [pc, #392]	; 800486c <_malloc_r+0x350>
 80046e4:	681a      	ldr	r2, [r3, #0]
 80046e6:	f8da 3000 	ldr.w	r3, [sl]
 80046ea:	3301      	adds	r3, #1
 80046ec:	eb05 0802 	add.w	r8, r5, r2
 80046f0:	f000 8148 	beq.w	8004984 <_malloc_r+0x468>
 80046f4:	f508 5880 	add.w	r8, r8, #4096	; 0x1000
 80046f8:	f108 080f 	add.w	r8, r8, #15
 80046fc:	f428 687f 	bic.w	r8, r8, #4080	; 0xff0
 8004700:	f028 080f 	bic.w	r8, r8, #15
 8004704:	4641      	mov	r1, r8
 8004706:	4630      	mov	r0, r6
 8004708:	f000 fa6c 	bl	8004be4 <_sbrk_r>
 800470c:	f1b0 3fff 	cmp.w	r0, #4294967295	; 0xffffffff
 8004710:	4683      	mov	fp, r0
 8004712:	f000 8104 	beq.w	800491e <_malloc_r+0x402>
 8004716:	eb04 0009 	add.w	r0, r4, r9
 800471a:	4558      	cmp	r0, fp
 800471c:	f200 80fd 	bhi.w	800491a <_malloc_r+0x3fe>
 8004720:	4a4e      	ldr	r2, [pc, #312]	; (800485c <_malloc_r+0x340>)
 8004722:	6813      	ldr	r3, [r2, #0]
 8004724:	4443      	add	r3, r8
 8004726:	6013      	str	r3, [r2, #0]
 8004728:	f000 814d 	beq.w	80049c6 <_malloc_r+0x4aa>
 800472c:	f8da 1000 	ldr.w	r1, [sl]
 8004730:	3101      	adds	r1, #1
 8004732:	bf1b      	ittet	ne
 8004734:	ebab 0000 	subne.w	r0, fp, r0
 8004738:	181b      	addne	r3, r3, r0
 800473a:	f8ca b000 	streq.w	fp, [sl]
 800473e:	6013      	strne	r3, [r2, #0]
 8004740:	f01b 0307 	ands.w	r3, fp, #7
 8004744:	f000 8134 	beq.w	80049b0 <_malloc_r+0x494>
 8004748:	f1c3 0108 	rsb	r1, r3, #8
 800474c:	f5c3 5380 	rsb	r3, r3, #4096	; 0x1000
 8004750:	448b      	add	fp, r1
 8004752:	3308      	adds	r3, #8
 8004754:	44d8      	add	r8, fp
 8004756:	f3c8 080b 	ubfx	r8, r8, #0, #12
 800475a:	eba3 0808 	sub.w	r8, r3, r8
 800475e:	4641      	mov	r1, r8
 8004760:	4630      	mov	r0, r6
 8004762:	9201      	str	r2, [sp, #4]
 8004764:	f000 fa3e 	bl	8004be4 <_sbrk_r>
 8004768:	1c43      	adds	r3, r0, #1
 800476a:	9a01      	ldr	r2, [sp, #4]
 800476c:	f000 8146 	beq.w	80049fc <_malloc_r+0x4e0>
 8004770:	eba0 010b 	sub.w	r1, r0, fp
 8004774:	4441      	add	r1, r8
 8004776:	f041 0101 	orr.w	r1, r1, #1
 800477a:	6813      	ldr	r3, [r2, #0]
 800477c:	f8c7 b008 	str.w	fp, [r7, #8]
 8004780:	4443      	add	r3, r8
 8004782:	42bc      	cmp	r4, r7
 8004784:	f8cb 1004 	str.w	r1, [fp, #4]
 8004788:	6013      	str	r3, [r2, #0]
 800478a:	d015      	beq.n	80047b8 <_malloc_r+0x29c>
 800478c:	f1b9 0f0f 	cmp.w	r9, #15
 8004790:	f240 8130 	bls.w	80049f4 <_malloc_r+0x4d8>
 8004794:	6860      	ldr	r0, [r4, #4]
 8004796:	f1a9 010c 	sub.w	r1, r9, #12
 800479a:	f021 0107 	bic.w	r1, r1, #7
 800479e:	f000 0001 	and.w	r0, r0, #1
 80047a2:	eb04 0c01 	add.w	ip, r4, r1
 80047a6:	4308      	orrs	r0, r1
 80047a8:	f04f 0e05 	mov.w	lr, #5
 80047ac:	290f      	cmp	r1, #15
 80047ae:	6060      	str	r0, [r4, #4]
 80047b0:	e9cc ee01 	strd	lr, lr, [ip, #4]
 80047b4:	f200 813a 	bhi.w	8004a2c <_malloc_r+0x510>
 80047b8:	4a29      	ldr	r2, [pc, #164]	; (8004860 <_malloc_r+0x344>)
 80047ba:	482a      	ldr	r0, [pc, #168]	; (8004864 <_malloc_r+0x348>)
 80047bc:	6811      	ldr	r1, [r2, #0]
 80047be:	68bc      	ldr	r4, [r7, #8]
 80047c0:	428b      	cmp	r3, r1
 80047c2:	6801      	ldr	r1, [r0, #0]
 80047c4:	bf88      	it	hi
 80047c6:	6013      	strhi	r3, [r2, #0]
 80047c8:	6862      	ldr	r2, [r4, #4]
 80047ca:	428b      	cmp	r3, r1
 80047cc:	f022 0203 	bic.w	r2, r2, #3
 80047d0:	bf88      	it	hi
 80047d2:	6003      	strhi	r3, [r0, #0]
 80047d4:	e0a7      	b.n	8004926 <_malloc_r+0x40a>
 80047d6:	1962      	adds	r2, r4, r5
 80047d8:	f043 0301 	orr.w	r3, r3, #1
 80047dc:	f045 0501 	orr.w	r5, r5, #1
 80047e0:	6065      	str	r5, [r4, #4]
 80047e2:	4630      	mov	r0, r6
 80047e4:	60ba      	str	r2, [r7, #8]
 80047e6:	6053      	str	r3, [r2, #4]
 80047e8:	f000 f98c 	bl	8004b04 <__malloc_unlock>
 80047ec:	3408      	adds	r4, #8
 80047ee:	4620      	mov	r0, r4
 80047f0:	b003      	add	sp, #12
 80047f2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80047f6:	4423      	add	r3, r4
 80047f8:	68e1      	ldr	r1, [r4, #12]
 80047fa:	685a      	ldr	r2, [r3, #4]
 80047fc:	68a5      	ldr	r5, [r4, #8]
 80047fe:	f042 0201 	orr.w	r2, r2, #1
 8004802:	60e9      	str	r1, [r5, #12]
 8004804:	4630      	mov	r0, r6
 8004806:	608d      	str	r5, [r1, #8]
 8004808:	605a      	str	r2, [r3, #4]
 800480a:	f000 f97b 	bl	8004b04 <__malloc_unlock>
 800480e:	3408      	adds	r4, #8
 8004810:	4620      	mov	r0, r4
 8004812:	b003      	add	sp, #12
 8004814:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004818:	68dc      	ldr	r4, [r3, #12]
 800481a:	42a3      	cmp	r3, r4
 800481c:	bf08      	it	eq
 800481e:	3002      	addeq	r0, #2
 8004820:	f43f aed6 	beq.w	80045d0 <_malloc_r+0xb4>
 8004824:	e692      	b.n	800454c <_malloc_r+0x30>
 8004826:	2b14      	cmp	r3, #20
 8004828:	d971      	bls.n	800490e <_malloc_r+0x3f2>
 800482a:	2b54      	cmp	r3, #84	; 0x54
 800482c:	f200 80ad 	bhi.w	800498a <_malloc_r+0x46e>
 8004830:	0b2b      	lsrs	r3, r5, #12
 8004832:	f103 006f 	add.w	r0, r3, #111	; 0x6f
 8004836:	f103 0c6e 	add.w	ip, r3, #110	; 0x6e
 800483a:	00c3      	lsls	r3, r0, #3
 800483c:	e6b3      	b.n	80045a6 <_malloc_r+0x8a>
 800483e:	4423      	add	r3, r4
 8004840:	4630      	mov	r0, r6
 8004842:	685a      	ldr	r2, [r3, #4]
 8004844:	f042 0201 	orr.w	r2, r2, #1
 8004848:	605a      	str	r2, [r3, #4]
 800484a:	3408      	adds	r4, #8
 800484c:	f000 f95a 	bl	8004b04 <__malloc_unlock>
 8004850:	e68c      	b.n	800456c <_malloc_r+0x50>
 8004852:	bf00      	nop
 8004854:	20000448 	.word	0x20000448
 8004858:	20000aa4 	.word	0x20000aa4
 800485c:	20000a74 	.word	0x20000a74
 8004860:	20000a9c 	.word	0x20000a9c
 8004864:	20000aa0 	.word	0x20000aa0
 8004868:	20000450 	.word	0x20000450
 800486c:	20000850 	.word	0x20000850
 8004870:	1961      	adds	r1, r4, r5
 8004872:	f045 0e01 	orr.w	lr, r5, #1
 8004876:	f042 0501 	orr.w	r5, r2, #1
 800487a:	f8c4 e004 	str.w	lr, [r4, #4]
 800487e:	4630      	mov	r0, r6
 8004880:	e9c7 1104 	strd	r1, r1, [r7, #16]
 8004884:	e9c1 cc02 	strd	ip, ip, [r1, #8]
 8004888:	604d      	str	r5, [r1, #4]
 800488a:	50e2      	str	r2, [r4, r3]
 800488c:	f000 f93a 	bl	8004b04 <__malloc_unlock>
 8004890:	3408      	adds	r4, #8
 8004892:	e66b      	b.n	800456c <_malloc_r+0x50>
 8004894:	08e8      	lsrs	r0, r5, #3
 8004896:	f105 0308 	add.w	r3, r5, #8
 800489a:	e64f      	b.n	800453c <_malloc_r+0x20>
 800489c:	f108 0801 	add.w	r8, r8, #1
 80048a0:	f018 0f03 	tst.w	r8, #3
 80048a4:	f10e 0e08 	add.w	lr, lr, #8
 80048a8:	f47f aed0 	bne.w	800464c <_malloc_r+0x130>
 80048ac:	e052      	b.n	8004954 <_malloc_r+0x438>
 80048ae:	4419      	add	r1, r3
 80048b0:	461c      	mov	r4, r3
 80048b2:	684a      	ldr	r2, [r1, #4]
 80048b4:	68db      	ldr	r3, [r3, #12]
 80048b6:	f854 5f08 	ldr.w	r5, [r4, #8]!
 80048ba:	f042 0201 	orr.w	r2, r2, #1
 80048be:	604a      	str	r2, [r1, #4]
 80048c0:	4630      	mov	r0, r6
 80048c2:	60eb      	str	r3, [r5, #12]
 80048c4:	609d      	str	r5, [r3, #8]
 80048c6:	f000 f91d 	bl	8004b04 <__malloc_unlock>
 80048ca:	e64f      	b.n	800456c <_malloc_r+0x50>
 80048cc:	0a5a      	lsrs	r2, r3, #9
 80048ce:	2a04      	cmp	r2, #4
 80048d0:	d935      	bls.n	800493e <_malloc_r+0x422>
 80048d2:	2a14      	cmp	r2, #20
 80048d4:	d86f      	bhi.n	80049b6 <_malloc_r+0x49a>
 80048d6:	f102 015c 	add.w	r1, r2, #92	; 0x5c
 80048da:	00c9      	lsls	r1, r1, #3
 80048dc:	325b      	adds	r2, #91	; 0x5b
 80048de:	eb07 0e01 	add.w	lr, r7, r1
 80048e2:	5879      	ldr	r1, [r7, r1]
 80048e4:	f1ae 0e08 	sub.w	lr, lr, #8
 80048e8:	458e      	cmp	lr, r1
 80048ea:	d058      	beq.n	800499e <_malloc_r+0x482>
 80048ec:	684a      	ldr	r2, [r1, #4]
 80048ee:	f022 0203 	bic.w	r2, r2, #3
 80048f2:	429a      	cmp	r2, r3
 80048f4:	d902      	bls.n	80048fc <_malloc_r+0x3e0>
 80048f6:	6889      	ldr	r1, [r1, #8]
 80048f8:	458e      	cmp	lr, r1
 80048fa:	d1f7      	bne.n	80048ec <_malloc_r+0x3d0>
 80048fc:	f8d1 e00c 	ldr.w	lr, [r1, #12]
 8004900:	687b      	ldr	r3, [r7, #4]
 8004902:	e9c4 1e02 	strd	r1, lr, [r4, #8]
 8004906:	f8ce 4008 	str.w	r4, [lr, #8]
 800490a:	60cc      	str	r4, [r1, #12]
 800490c:	e68c      	b.n	8004628 <_malloc_r+0x10c>
 800490e:	f103 005c 	add.w	r0, r3, #92	; 0x5c
 8004912:	f103 0c5b 	add.w	ip, r3, #91	; 0x5b
 8004916:	00c3      	lsls	r3, r0, #3
 8004918:	e645      	b.n	80045a6 <_malloc_r+0x8a>
 800491a:	42bc      	cmp	r4, r7
 800491c:	d072      	beq.n	8004a04 <_malloc_r+0x4e8>
 800491e:	68bc      	ldr	r4, [r7, #8]
 8004920:	6862      	ldr	r2, [r4, #4]
 8004922:	f022 0203 	bic.w	r2, r2, #3
 8004926:	4295      	cmp	r5, r2
 8004928:	eba2 0305 	sub.w	r3, r2, r5
 800492c:	d802      	bhi.n	8004934 <_malloc_r+0x418>
 800492e:	2b0f      	cmp	r3, #15
 8004930:	f73f af51 	bgt.w	80047d6 <_malloc_r+0x2ba>
 8004934:	4630      	mov	r0, r6
 8004936:	f000 f8e5 	bl	8004b04 <__malloc_unlock>
 800493a:	2400      	movs	r4, #0
 800493c:	e616      	b.n	800456c <_malloc_r+0x50>
 800493e:	099a      	lsrs	r2, r3, #6
 8004940:	f102 0139 	add.w	r1, r2, #57	; 0x39
 8004944:	00c9      	lsls	r1, r1, #3
 8004946:	3238      	adds	r2, #56	; 0x38
 8004948:	e7c9      	b.n	80048de <_malloc_r+0x3c2>
 800494a:	f8d9 9000 	ldr.w	r9, [r9]
 800494e:	4599      	cmp	r9, r3
 8004950:	f040 8083 	bne.w	8004a5a <_malloc_r+0x53e>
 8004954:	f010 0f03 	tst.w	r0, #3
 8004958:	f1a9 0308 	sub.w	r3, r9, #8
 800495c:	f100 30ff 	add.w	r0, r0, #4294967295	; 0xffffffff
 8004960:	d1f3      	bne.n	800494a <_malloc_r+0x42e>
 8004962:	687b      	ldr	r3, [r7, #4]
 8004964:	ea23 0304 	bic.w	r3, r3, r4
 8004968:	607b      	str	r3, [r7, #4]
 800496a:	0064      	lsls	r4, r4, #1
 800496c:	429c      	cmp	r4, r3
 800496e:	f63f aeac 	bhi.w	80046ca <_malloc_r+0x1ae>
 8004972:	b91c      	cbnz	r4, 800497c <_malloc_r+0x460>
 8004974:	e6a9      	b.n	80046ca <_malloc_r+0x1ae>
 8004976:	0064      	lsls	r4, r4, #1
 8004978:	f108 0804 	add.w	r8, r8, #4
 800497c:	421c      	tst	r4, r3
 800497e:	d0fa      	beq.n	8004976 <_malloc_r+0x45a>
 8004980:	4640      	mov	r0, r8
 8004982:	e65f      	b.n	8004644 <_malloc_r+0x128>
 8004984:	f108 0810 	add.w	r8, r8, #16
 8004988:	e6bc      	b.n	8004704 <_malloc_r+0x1e8>
 800498a:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 800498e:	d826      	bhi.n	80049de <_malloc_r+0x4c2>
 8004990:	0beb      	lsrs	r3, r5, #15
 8004992:	f103 0078 	add.w	r0, r3, #120	; 0x78
 8004996:	f103 0c77 	add.w	ip, r3, #119	; 0x77
 800499a:	00c3      	lsls	r3, r0, #3
 800499c:	e603      	b.n	80045a6 <_malloc_r+0x8a>
 800499e:	687b      	ldr	r3, [r7, #4]
 80049a0:	1092      	asrs	r2, r2, #2
 80049a2:	f04f 0801 	mov.w	r8, #1
 80049a6:	fa08 f202 	lsl.w	r2, r8, r2
 80049aa:	4313      	orrs	r3, r2
 80049ac:	607b      	str	r3, [r7, #4]
 80049ae:	e7a8      	b.n	8004902 <_malloc_r+0x3e6>
 80049b0:	f44f 5380 	mov.w	r3, #4096	; 0x1000
 80049b4:	e6ce      	b.n	8004754 <_malloc_r+0x238>
 80049b6:	2a54      	cmp	r2, #84	; 0x54
 80049b8:	d829      	bhi.n	8004a0e <_malloc_r+0x4f2>
 80049ba:	0b1a      	lsrs	r2, r3, #12
 80049bc:	f102 016f 	add.w	r1, r2, #111	; 0x6f
 80049c0:	00c9      	lsls	r1, r1, #3
 80049c2:	326e      	adds	r2, #110	; 0x6e
 80049c4:	e78b      	b.n	80048de <_malloc_r+0x3c2>
 80049c6:	f3c0 010b 	ubfx	r1, r0, #0, #12
 80049ca:	2900      	cmp	r1, #0
 80049cc:	f47f aeae 	bne.w	800472c <_malloc_r+0x210>
 80049d0:	eb09 0208 	add.w	r2, r9, r8
 80049d4:	68b9      	ldr	r1, [r7, #8]
 80049d6:	f042 0201 	orr.w	r2, r2, #1
 80049da:	604a      	str	r2, [r1, #4]
 80049dc:	e6ec      	b.n	80047b8 <_malloc_r+0x29c>
 80049de:	f240 5254 	movw	r2, #1364	; 0x554
 80049e2:	4293      	cmp	r3, r2
 80049e4:	d81c      	bhi.n	8004a20 <_malloc_r+0x504>
 80049e6:	0cab      	lsrs	r3, r5, #18
 80049e8:	f103 007d 	add.w	r0, r3, #125	; 0x7d
 80049ec:	f103 0c7c 	add.w	ip, r3, #124	; 0x7c
 80049f0:	00c3      	lsls	r3, r0, #3
 80049f2:	e5d8      	b.n	80045a6 <_malloc_r+0x8a>
 80049f4:	2301      	movs	r3, #1
 80049f6:	f8cb 3004 	str.w	r3, [fp, #4]
 80049fa:	e79b      	b.n	8004934 <_malloc_r+0x418>
 80049fc:	2101      	movs	r1, #1
 80049fe:	f04f 0800 	mov.w	r8, #0
 8004a02:	e6ba      	b.n	800477a <_malloc_r+0x25e>
 8004a04:	4a16      	ldr	r2, [pc, #88]	; (8004a60 <_malloc_r+0x544>)
 8004a06:	6813      	ldr	r3, [r2, #0]
 8004a08:	4443      	add	r3, r8
 8004a0a:	6013      	str	r3, [r2, #0]
 8004a0c:	e68e      	b.n	800472c <_malloc_r+0x210>
 8004a0e:	f5b2 7faa 	cmp.w	r2, #340	; 0x154
 8004a12:	d814      	bhi.n	8004a3e <_malloc_r+0x522>
 8004a14:	0bda      	lsrs	r2, r3, #15
 8004a16:	f102 0178 	add.w	r1, r2, #120	; 0x78
 8004a1a:	00c9      	lsls	r1, r1, #3
 8004a1c:	3277      	adds	r2, #119	; 0x77
 8004a1e:	e75e      	b.n	80048de <_malloc_r+0x3c2>
 8004a20:	f44f 737e 	mov.w	r3, #1016	; 0x3f8
 8004a24:	207f      	movs	r0, #127	; 0x7f
 8004a26:	f04f 0c7e 	mov.w	ip, #126	; 0x7e
 8004a2a:	e5bc      	b.n	80045a6 <_malloc_r+0x8a>
 8004a2c:	f104 0108 	add.w	r1, r4, #8
 8004a30:	4630      	mov	r0, r6
 8004a32:	9201      	str	r2, [sp, #4]
 8004a34:	f003 f828 	bl	8007a88 <_free_r>
 8004a38:	9a01      	ldr	r2, [sp, #4]
 8004a3a:	6813      	ldr	r3, [r2, #0]
 8004a3c:	e6bc      	b.n	80047b8 <_malloc_r+0x29c>
 8004a3e:	f240 5154 	movw	r1, #1364	; 0x554
 8004a42:	428a      	cmp	r2, r1
 8004a44:	d805      	bhi.n	8004a52 <_malloc_r+0x536>
 8004a46:	0c9a      	lsrs	r2, r3, #18
 8004a48:	f102 017d 	add.w	r1, r2, #125	; 0x7d
 8004a4c:	00c9      	lsls	r1, r1, #3
 8004a4e:	327c      	adds	r2, #124	; 0x7c
 8004a50:	e745      	b.n	80048de <_malloc_r+0x3c2>
 8004a52:	f44f 717e 	mov.w	r1, #1016	; 0x3f8
 8004a56:	227e      	movs	r2, #126	; 0x7e
 8004a58:	e741      	b.n	80048de <_malloc_r+0x3c2>
 8004a5a:	687b      	ldr	r3, [r7, #4]
 8004a5c:	e785      	b.n	800496a <_malloc_r+0x44e>
 8004a5e:	bf00      	nop
 8004a60:	20000a74 	.word	0x20000a74

08004a64 <memset>:
 8004a64:	b4f0      	push	{r4, r5, r6, r7}
 8004a66:	0786      	lsls	r6, r0, #30
 8004a68:	d043      	beq.n	8004af2 <memset+0x8e>
 8004a6a:	1e54      	subs	r4, r2, #1
 8004a6c:	2a00      	cmp	r2, #0
 8004a6e:	d03e      	beq.n	8004aee <memset+0x8a>
 8004a70:	b2ca      	uxtb	r2, r1
 8004a72:	4603      	mov	r3, r0
 8004a74:	e002      	b.n	8004a7c <memset+0x18>
 8004a76:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
 8004a7a:	d338      	bcc.n	8004aee <memset+0x8a>
 8004a7c:	f803 2b01 	strb.w	r2, [r3], #1
 8004a80:	079d      	lsls	r5, r3, #30
 8004a82:	d1f8      	bne.n	8004a76 <memset+0x12>
 8004a84:	2c03      	cmp	r4, #3
 8004a86:	d92b      	bls.n	8004ae0 <memset+0x7c>
 8004a88:	b2cd      	uxtb	r5, r1
 8004a8a:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
 8004a8e:	2c0f      	cmp	r4, #15
 8004a90:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
 8004a94:	d916      	bls.n	8004ac4 <memset+0x60>
 8004a96:	f1a4 0710 	sub.w	r7, r4, #16
 8004a9a:	093f      	lsrs	r7, r7, #4
 8004a9c:	f103 0620 	add.w	r6, r3, #32
 8004aa0:	eb06 1607 	add.w	r6, r6, r7, lsl #4
 8004aa4:	f103 0210 	add.w	r2, r3, #16
 8004aa8:	e942 5504 	strd	r5, r5, [r2, #-16]
 8004aac:	e942 5502 	strd	r5, r5, [r2, #-8]
 8004ab0:	3210      	adds	r2, #16
 8004ab2:	42b2      	cmp	r2, r6
 8004ab4:	d1f8      	bne.n	8004aa8 <memset+0x44>
 8004ab6:	f004 040f 	and.w	r4, r4, #15
 8004aba:	3701      	adds	r7, #1
 8004abc:	2c03      	cmp	r4, #3
 8004abe:	eb03 1307 	add.w	r3, r3, r7, lsl #4
 8004ac2:	d90d      	bls.n	8004ae0 <memset+0x7c>
 8004ac4:	461e      	mov	r6, r3
 8004ac6:	4622      	mov	r2, r4
 8004ac8:	3a04      	subs	r2, #4
 8004aca:	2a03      	cmp	r2, #3
 8004acc:	f846 5b04 	str.w	r5, [r6], #4
 8004ad0:	d8fa      	bhi.n	8004ac8 <memset+0x64>
 8004ad2:	1f22      	subs	r2, r4, #4
 8004ad4:	f022 0203 	bic.w	r2, r2, #3
 8004ad8:	3204      	adds	r2, #4
 8004ada:	4413      	add	r3, r2
 8004adc:	f004 0403 	and.w	r4, r4, #3
 8004ae0:	b12c      	cbz	r4, 8004aee <memset+0x8a>
 8004ae2:	b2c9      	uxtb	r1, r1
 8004ae4:	441c      	add	r4, r3
 8004ae6:	f803 1b01 	strb.w	r1, [r3], #1
 8004aea:	429c      	cmp	r4, r3
 8004aec:	d1fb      	bne.n	8004ae6 <memset+0x82>
 8004aee:	bcf0      	pop	{r4, r5, r6, r7}
 8004af0:	4770      	bx	lr
 8004af2:	4614      	mov	r4, r2
 8004af4:	4603      	mov	r3, r0
 8004af6:	e7c5      	b.n	8004a84 <memset+0x20>

08004af8 <__malloc_lock>:
 8004af8:	4801      	ldr	r0, [pc, #4]	; (8004b00 <__malloc_lock+0x8>)
 8004afa:	f003 ba73 	b.w	8007fe4 <__retarget_lock_acquire_recursive>
 8004afe:	bf00      	nop
 8004b00:	20000b28 	.word	0x20000b28

08004b04 <__malloc_unlock>:
 8004b04:	4801      	ldr	r0, [pc, #4]	; (8004b0c <__malloc_unlock+0x8>)
 8004b06:	f003 ba6f 	b.w	8007fe8 <__retarget_lock_release_recursive>
 8004b0a:	bf00      	nop
 8004b0c:	20000b28 	.word	0x20000b28

08004b10 <printf>:
 8004b10:	b40f      	push	{r0, r1, r2, r3}
 8004b12:	b500      	push	{lr}
 8004b14:	4907      	ldr	r1, [pc, #28]	; (8004b34 <printf+0x24>)
 8004b16:	b083      	sub	sp, #12
 8004b18:	ab04      	add	r3, sp, #16
 8004b1a:	6808      	ldr	r0, [r1, #0]
 8004b1c:	f853 2b04 	ldr.w	r2, [r3], #4
 8004b20:	6881      	ldr	r1, [r0, #8]
 8004b22:	9301      	str	r3, [sp, #4]
 8004b24:	f000 f870 	bl	8004c08 <_vfprintf_r>
 8004b28:	b003      	add	sp, #12
 8004b2a:	f85d eb04 	ldr.w	lr, [sp], #4
 8004b2e:	b004      	add	sp, #16
 8004b30:	4770      	bx	lr
 8004b32:	bf00      	nop
 8004b34:	20000018 	.word	0x20000018

08004b38 <_puts_r>:
 8004b38:	b570      	push	{r4, r5, r6, lr}
 8004b3a:	4605      	mov	r5, r0
 8004b3c:	b088      	sub	sp, #32
 8004b3e:	4608      	mov	r0, r1
 8004b40:	460c      	mov	r4, r1
 8004b42:	f7fb fdfd 	bl	8000740 <strlen>
 8004b46:	4a22      	ldr	r2, [pc, #136]	; (8004bd0 <_puts_r+0x98>)
 8004b48:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8004b4a:	9404      	str	r4, [sp, #16]
 8004b4c:	2601      	movs	r6, #1
 8004b4e:	1c44      	adds	r4, r0, #1
 8004b50:	a904      	add	r1, sp, #16
 8004b52:	9206      	str	r2, [sp, #24]
 8004b54:	2202      	movs	r2, #2
 8004b56:	9403      	str	r4, [sp, #12]
 8004b58:	9005      	str	r0, [sp, #20]
 8004b5a:	68ac      	ldr	r4, [r5, #8]
 8004b5c:	9607      	str	r6, [sp, #28]
 8004b5e:	e9cd 1201 	strd	r1, r2, [sp, #4]
 8004b62:	b31b      	cbz	r3, 8004bac <_puts_r+0x74>
 8004b64:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8004b66:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004b6a:	07ce      	lsls	r6, r1, #31
 8004b6c:	b29a      	uxth	r2, r3
 8004b6e:	d401      	bmi.n	8004b74 <_puts_r+0x3c>
 8004b70:	0590      	lsls	r0, r2, #22
 8004b72:	d525      	bpl.n	8004bc0 <_puts_r+0x88>
 8004b74:	0491      	lsls	r1, r2, #18
 8004b76:	d406      	bmi.n	8004b86 <_puts_r+0x4e>
 8004b78:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8004b7a:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8004b7e:	f422 5200 	bic.w	r2, r2, #8192	; 0x2000
 8004b82:	81a3      	strh	r3, [r4, #12]
 8004b84:	6662      	str	r2, [r4, #100]	; 0x64
 8004b86:	4628      	mov	r0, r5
 8004b88:	aa01      	add	r2, sp, #4
 8004b8a:	4621      	mov	r1, r4
 8004b8c:	f003 f870 	bl	8007c70 <__sfvwrite_r>
 8004b90:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8004b92:	2800      	cmp	r0, #0
 8004b94:	bf0c      	ite	eq
 8004b96:	250a      	moveq	r5, #10
 8004b98:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 8004b9c:	07da      	lsls	r2, r3, #31
 8004b9e:	d402      	bmi.n	8004ba6 <_puts_r+0x6e>
 8004ba0:	89a3      	ldrh	r3, [r4, #12]
 8004ba2:	059b      	lsls	r3, r3, #22
 8004ba4:	d506      	bpl.n	8004bb4 <_puts_r+0x7c>
 8004ba6:	4628      	mov	r0, r5
 8004ba8:	b008      	add	sp, #32
 8004baa:	bd70      	pop	{r4, r5, r6, pc}
 8004bac:	4628      	mov	r0, r5
 8004bae:	f002 fec9 	bl	8007944 <__sinit>
 8004bb2:	e7d7      	b.n	8004b64 <_puts_r+0x2c>
 8004bb4:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8004bb6:	f003 fa17 	bl	8007fe8 <__retarget_lock_release_recursive>
 8004bba:	4628      	mov	r0, r5
 8004bbc:	b008      	add	sp, #32
 8004bbe:	bd70      	pop	{r4, r5, r6, pc}
 8004bc0:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8004bc2:	f003 fa0f 	bl	8007fe4 <__retarget_lock_acquire_recursive>
 8004bc6:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8004bca:	b29a      	uxth	r2, r3
 8004bcc:	e7d2      	b.n	8004b74 <_puts_r+0x3c>
 8004bce:	bf00      	nop
 8004bd0:	08009934 	.word	0x08009934

08004bd4 <puts>:
 8004bd4:	4b02      	ldr	r3, [pc, #8]	; (8004be0 <puts+0xc>)
 8004bd6:	4601      	mov	r1, r0
 8004bd8:	6818      	ldr	r0, [r3, #0]
 8004bda:	f7ff bfad 	b.w	8004b38 <_puts_r>
 8004bde:	bf00      	nop
 8004be0:	20000018 	.word	0x20000018

08004be4 <_sbrk_r>:
 8004be4:	b538      	push	{r3, r4, r5, lr}
 8004be6:	4c07      	ldr	r4, [pc, #28]	; (8004c04 <_sbrk_r+0x20>)
 8004be8:	2300      	movs	r3, #0
 8004bea:	4605      	mov	r5, r0
 8004bec:	4608      	mov	r0, r1
 8004bee:	6023      	str	r3, [r4, #0]
 8004bf0:	f7ff fb9c 	bl	800432c <_sbrk>
 8004bf4:	1c43      	adds	r3, r0, #1
 8004bf6:	d000      	beq.n	8004bfa <_sbrk_r+0x16>
 8004bf8:	bd38      	pop	{r3, r4, r5, pc}
 8004bfa:	6823      	ldr	r3, [r4, #0]
 8004bfc:	2b00      	cmp	r3, #0
 8004bfe:	d0fb      	beq.n	8004bf8 <_sbrk_r+0x14>
 8004c00:	602b      	str	r3, [r5, #0]
 8004c02:	bd38      	pop	{r3, r4, r5, pc}
 8004c04:	20000b3c 	.word	0x20000b3c

08004c08 <_vfprintf_r>:
 8004c08:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8004c0c:	b0d7      	sub	sp, #348	; 0x15c
 8004c0e:	461c      	mov	r4, r3
 8004c10:	4689      	mov	r9, r1
 8004c12:	4617      	mov	r7, r2
 8004c14:	4605      	mov	r5, r0
 8004c16:	9003      	str	r0, [sp, #12]
 8004c18:	f003 f9d2 	bl	8007fc0 <_localeconv_r>
 8004c1c:	6803      	ldr	r3, [r0, #0]
 8004c1e:	9316      	str	r3, [sp, #88]	; 0x58
 8004c20:	4618      	mov	r0, r3
 8004c22:	f7fb fd8d 	bl	8000740 <strlen>
 8004c26:	9408      	str	r4, [sp, #32]
 8004c28:	9015      	str	r0, [sp, #84]	; 0x54
 8004c2a:	b11d      	cbz	r5, 8004c34 <_vfprintf_r+0x2c>
 8004c2c:	6bab      	ldr	r3, [r5, #56]	; 0x38
 8004c2e:	2b00      	cmp	r3, #0
 8004c30:	f000 8107 	beq.w	8004e42 <_vfprintf_r+0x23a>
 8004c34:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8004c38:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8004c3c:	07c8      	lsls	r0, r1, #31
 8004c3e:	b293      	uxth	r3, r2
 8004c40:	d402      	bmi.n	8004c48 <_vfprintf_r+0x40>
 8004c42:	0599      	lsls	r1, r3, #22
 8004c44:	f140 811f 	bpl.w	8004e86 <_vfprintf_r+0x27e>
 8004c48:	049e      	lsls	r6, r3, #18
 8004c4a:	d40a      	bmi.n	8004c62 <_vfprintf_r+0x5a>
 8004c4c:	f8d9 1064 	ldr.w	r1, [r9, #100]	; 0x64
 8004c50:	f442 5300 	orr.w	r3, r2, #8192	; 0x2000
 8004c54:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 8004c58:	f8a9 300c 	strh.w	r3, [r9, #12]
 8004c5c:	f8c9 1064 	str.w	r1, [r9, #100]	; 0x64
 8004c60:	b29b      	uxth	r3, r3
 8004c62:	071d      	lsls	r5, r3, #28
 8004c64:	f140 80b2 	bpl.w	8004dcc <_vfprintf_r+0x1c4>
 8004c68:	f8d9 2010 	ldr.w	r2, [r9, #16]
 8004c6c:	2a00      	cmp	r2, #0
 8004c6e:	f000 80ad 	beq.w	8004dcc <_vfprintf_r+0x1c4>
 8004c72:	f003 021a 	and.w	r2, r3, #26
 8004c76:	2a0a      	cmp	r2, #10
 8004c78:	f000 80c9 	beq.w	8004e0e <_vfprintf_r+0x206>
 8004c7c:	2300      	movs	r3, #0
 8004c7e:	ed9f 7b86 	vldr	d7, [pc, #536]	; 8004e98 <_vfprintf_r+0x290>
 8004c82:	9310      	str	r3, [sp, #64]	; 0x40
 8004c84:	e9cd 332b 	strd	r3, r3, [sp, #172]	; 0xac
 8004c88:	9317      	str	r3, [sp, #92]	; 0x5c
 8004c8a:	e9cd 3319 	strd	r3, r3, [sp, #100]	; 0x64
 8004c8e:	931b      	str	r3, [sp, #108]	; 0x6c
 8004c90:	9318      	str	r3, [sp, #96]	; 0x60
 8004c92:	9305      	str	r3, [sp, #20]
 8004c94:	ab2d      	add	r3, sp, #180	; 0xb4
 8004c96:	932a      	str	r3, [sp, #168]	; 0xa8
 8004c98:	469b      	mov	fp, r3
 8004c9a:	783b      	ldrb	r3, [r7, #0]
 8004c9c:	f8cd 901c 	str.w	r9, [sp, #28]
 8004ca0:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8004ca4:	2b00      	cmp	r3, #0
 8004ca6:	f000 8259 	beq.w	800515c <_vfprintf_r+0x554>
 8004caa:	2b25      	cmp	r3, #37	; 0x25
 8004cac:	463c      	mov	r4, r7
 8004cae:	d102      	bne.n	8004cb6 <_vfprintf_r+0xae>
 8004cb0:	e01d      	b.n	8004cee <_vfprintf_r+0xe6>
 8004cb2:	2b25      	cmp	r3, #37	; 0x25
 8004cb4:	d003      	beq.n	8004cbe <_vfprintf_r+0xb6>
 8004cb6:	f814 3f01 	ldrb.w	r3, [r4, #1]!
 8004cba:	2b00      	cmp	r3, #0
 8004cbc:	d1f9      	bne.n	8004cb2 <_vfprintf_r+0xaa>
 8004cbe:	1be5      	subs	r5, r4, r7
 8004cc0:	b18d      	cbz	r5, 8004ce6 <_vfprintf_r+0xde>
 8004cc2:	e9dd 322b 	ldrd	r3, r2, [sp, #172]	; 0xac
 8004cc6:	3301      	adds	r3, #1
 8004cc8:	442a      	add	r2, r5
 8004cca:	2b07      	cmp	r3, #7
 8004ccc:	f8cb 7000 	str.w	r7, [fp]
 8004cd0:	f8cb 5004 	str.w	r5, [fp, #4]
 8004cd4:	e9cd 322b 	strd	r3, r2, [sp, #172]	; 0xac
 8004cd8:	f300 80ca 	bgt.w	8004e70 <_vfprintf_r+0x268>
 8004cdc:	f10b 0b08 	add.w	fp, fp, #8
 8004ce0:	9b05      	ldr	r3, [sp, #20]
 8004ce2:	442b      	add	r3, r5
 8004ce4:	9305      	str	r3, [sp, #20]
 8004ce6:	7823      	ldrb	r3, [r4, #0]
 8004ce8:	2b00      	cmp	r3, #0
 8004cea:	f000 8237 	beq.w	800515c <_vfprintf_r+0x554>
 8004cee:	2300      	movs	r3, #0
 8004cf0:	7866      	ldrb	r6, [r4, #1]
 8004cf2:	9306      	str	r3, [sp, #24]
 8004cf4:	4698      	mov	r8, r3
 8004cf6:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8004cfa:	f104 0a01 	add.w	sl, r4, #1
 8004cfe:	f04f 39ff 	mov.w	r9, #4294967295	; 0xffffffff
 8004d02:	252b      	movs	r5, #43	; 0x2b
 8004d04:	f10a 0a01 	add.w	sl, sl, #1
 8004d08:	f1a6 0320 	sub.w	r3, r6, #32
 8004d0c:	2b5a      	cmp	r3, #90	; 0x5a
 8004d0e:	f200 842a 	bhi.w	8005566 <_vfprintf_r+0x95e>
 8004d12:	e8df f013 	tbh	[pc, r3, lsl #1]
 8004d16:	03aa      	.short	0x03aa
 8004d18:	04280428 	.word	0x04280428
 8004d1c:	0428029c 	.word	0x0428029c
 8004d20:	04280428 	.word	0x04280428
 8004d24:	042802a7 	.word	0x042802a7
 8004d28:	02c60428 	.word	0x02c60428
 8004d2c:	042802d2 	.word	0x042802d2
 8004d30:	02dc02d7 	.word	0x02dc02d7
 8004d34:	02f60428 	.word	0x02f60428
 8004d38:	026d026d 	.word	0x026d026d
 8004d3c:	026d026d 	.word	0x026d026d
 8004d40:	026d026d 	.word	0x026d026d
 8004d44:	026d026d 	.word	0x026d026d
 8004d48:	0428026d 	.word	0x0428026d
 8004d4c:	04280428 	.word	0x04280428
 8004d50:	04280428 	.word	0x04280428
 8004d54:	04280428 	.word	0x04280428
 8004d58:	042802fb 	.word	0x042802fb
 8004d5c:	03f3033c 	.word	0x03f3033c
 8004d60:	02fb02fb 	.word	0x02fb02fb
 8004d64:	042802fb 	.word	0x042802fb
 8004d68:	04280428 	.word	0x04280428
 8004d6c:	03ee0428 	.word	0x03ee0428
 8004d70:	04280428 	.word	0x04280428
 8004d74:	0428009a 	.word	0x0428009a
 8004d78:	04280428 	.word	0x04280428
 8004d7c:	04280350 	.word	0x04280350
 8004d80:	04280379 	.word	0x04280379
 8004d84:	03900428 	.word	0x03900428
 8004d88:	04280428 	.word	0x04280428
 8004d8c:	04280428 	.word	0x04280428
 8004d90:	04280428 	.word	0x04280428
 8004d94:	04280428 	.word	0x04280428
 8004d98:	042802fb 	.word	0x042802fb
 8004d9c:	00c5033c 	.word	0x00c5033c
 8004da0:	02fb02fb 	.word	0x02fb02fb
 8004da4:	03d102fb 	.word	0x03d102fb
 8004da8:	007000c5 	.word	0x007000c5
 8004dac:	03b50428 	.word	0x03b50428
 8004db0:	03c20428 	.word	0x03c20428
 8004db4:	03de009c 	.word	0x03de009c
 8004db8:	04280070 	.word	0x04280070
 8004dbc:	00720350 	.word	0x00720350
 8004dc0:	0428022c 	.word	0x0428022c
 8004dc4:	027c0428 	.word	0x027c0428
 8004dc8:	00720428 	.word	0x00720428
 8004dcc:	4649      	mov	r1, r9
 8004dce:	9803      	ldr	r0, [sp, #12]
 8004dd0:	f001 fc9a 	bl	8006708 <__swsetup_r>
 8004dd4:	b1a0      	cbz	r0, 8004e00 <_vfprintf_r+0x1f8>
 8004dd6:	f8d9 3064 	ldr.w	r3, [r9, #100]	; 0x64
 8004dda:	07d8      	lsls	r0, r3, #31
 8004ddc:	d404      	bmi.n	8004de8 <_vfprintf_r+0x1e0>
 8004dde:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004de2:	0599      	lsls	r1, r3, #22
 8004de4:	f140 83b7 	bpl.w	8005556 <_vfprintf_r+0x94e>
 8004de8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8004dec:	9305      	str	r3, [sp, #20]
 8004dee:	9805      	ldr	r0, [sp, #20]
 8004df0:	b057      	add	sp, #348	; 0x15c
 8004df2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004df6:	f048 0820 	orr.w	r8, r8, #32
 8004dfa:	f89a 6000 	ldrb.w	r6, [sl]
 8004dfe:	e781      	b.n	8004d04 <_vfprintf_r+0xfc>
 8004e00:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8004e04:	f003 021a 	and.w	r2, r3, #26
 8004e08:	2a0a      	cmp	r2, #10
 8004e0a:	f47f af37 	bne.w	8004c7c <_vfprintf_r+0x74>
 8004e0e:	f9b9 200e 	ldrsh.w	r2, [r9, #14]
 8004e12:	2a00      	cmp	r2, #0
 8004e14:	f6ff af32 	blt.w	8004c7c <_vfprintf_r+0x74>
 8004e18:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 8004e1c:	07d2      	lsls	r2, r2, #31
 8004e1e:	d405      	bmi.n	8004e2c <_vfprintf_r+0x224>
 8004e20:	059b      	lsls	r3, r3, #22
 8004e22:	d403      	bmi.n	8004e2c <_vfprintf_r+0x224>
 8004e24:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004e28:	f003 f8de 	bl	8007fe8 <__retarget_lock_release_recursive>
 8004e2c:	4623      	mov	r3, r4
 8004e2e:	463a      	mov	r2, r7
 8004e30:	4649      	mov	r1, r9
 8004e32:	9803      	ldr	r0, [sp, #12]
 8004e34:	f001 fc26 	bl	8006684 <__sbprintf>
 8004e38:	9005      	str	r0, [sp, #20]
 8004e3a:	9805      	ldr	r0, [sp, #20]
 8004e3c:	b057      	add	sp, #348	; 0x15c
 8004e3e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8004e42:	9803      	ldr	r0, [sp, #12]
 8004e44:	f002 fd7e 	bl	8007944 <__sinit>
 8004e48:	e6f4      	b.n	8004c34 <_vfprintf_r+0x2c>
 8004e4a:	f048 0810 	orr.w	r8, r8, #16
 8004e4e:	f018 0f20 	tst.w	r8, #32
 8004e52:	f000 836c 	beq.w	800552e <_vfprintf_r+0x926>
 8004e56:	9c08      	ldr	r4, [sp, #32]
 8004e58:	3407      	adds	r4, #7
 8004e5a:	f024 0307 	bic.w	r3, r4, #7
 8004e5e:	e9d3 4500 	ldrd	r4, r5, [r3]
 8004e62:	f103 0208 	add.w	r2, r3, #8
 8004e66:	9208      	str	r2, [sp, #32]
 8004e68:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 8004e6c:	2200      	movs	r2, #0
 8004e6e:	e18c      	b.n	800518a <_vfprintf_r+0x582>
 8004e70:	aa2a      	add	r2, sp, #168	; 0xa8
 8004e72:	9907      	ldr	r1, [sp, #28]
 8004e74:	9803      	ldr	r0, [sp, #12]
 8004e76:	f003 ff33 	bl	8008ce0 <__sprint_r>
 8004e7a:	2800      	cmp	r0, #0
 8004e7c:	f041 8376 	bne.w	800656c <_vfprintf_r+0x1964>
 8004e80:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8004e84:	e72c      	b.n	8004ce0 <_vfprintf_r+0xd8>
 8004e86:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8004e8a:	f003 f8ab 	bl	8007fe4 <__retarget_lock_acquire_recursive>
 8004e8e:	f9b9 200c 	ldrsh.w	r2, [r9, #12]
 8004e92:	b293      	uxth	r3, r2
 8004e94:	e6d8      	b.n	8004c48 <_vfprintf_r+0x40>
 8004e96:	bf00      	nop
	...
 8004ea0:	4643      	mov	r3, r8
 8004ea2:	069f      	lsls	r7, r3, #26
 8004ea4:	f140 832f 	bpl.w	8005506 <_vfprintf_r+0x8fe>
 8004ea8:	9c08      	ldr	r4, [sp, #32]
 8004eaa:	3407      	adds	r4, #7
 8004eac:	f024 0407 	bic.w	r4, r4, #7
 8004eb0:	e9d4 0100 	ldrd	r0, r1, [r4]
 8004eb4:	f104 0208 	add.w	r2, r4, #8
 8004eb8:	9208      	str	r2, [sp, #32]
 8004eba:	4604      	mov	r4, r0
 8004ebc:	460d      	mov	r5, r1
 8004ebe:	2800      	cmp	r0, #0
 8004ec0:	f171 0200 	sbcs.w	r2, r1, #0
 8004ec4:	da05      	bge.n	8004ed2 <_vfprintf_r+0x2ca>
 8004ec6:	222d      	movs	r2, #45	; 0x2d
 8004ec8:	4264      	negs	r4, r4
 8004eca:	eb65 0545 	sbc.w	r5, r5, r5, lsl #1
 8004ece:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8004ed2:	aa56      	add	r2, sp, #344	; 0x158
 8004ed4:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8004ed8:	9204      	str	r2, [sp, #16]
 8004eda:	f000 84b2 	beq.w	8005842 <_vfprintf_r+0xc3a>
 8004ede:	2201      	movs	r2, #1
 8004ee0:	ea54 0105 	orrs.w	r1, r4, r5
 8004ee4:	f023 0880 	bic.w	r8, r3, #128	; 0x80
 8004ee8:	f040 8159 	bne.w	800519e <_vfprintf_r+0x596>
 8004eec:	f1b9 0f00 	cmp.w	r9, #0
 8004ef0:	f040 8619 	bne.w	8005b26 <_vfprintf_r+0xf1e>
 8004ef4:	2a00      	cmp	r2, #0
 8004ef6:	f040 8508 	bne.w	800590a <_vfprintf_r+0xd02>
 8004efa:	f013 0301 	ands.w	r3, r3, #1
 8004efe:	af56      	add	r7, sp, #344	; 0x158
 8004f00:	9309      	str	r3, [sp, #36]	; 0x24
 8004f02:	d002      	beq.n	8004f0a <_vfprintf_r+0x302>
 8004f04:	2330      	movs	r3, #48	; 0x30
 8004f06:	f807 3d01 	strb.w	r3, [r7, #-1]!
 8004f0a:	2300      	movs	r3, #0
 8004f0c:	930a      	str	r3, [sp, #40]	; 0x28
 8004f0e:	930f      	str	r3, [sp, #60]	; 0x3c
 8004f10:	9314      	str	r3, [sp, #80]	; 0x50
 8004f12:	9311      	str	r3, [sp, #68]	; 0x44
 8004f14:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8004f16:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004f1a:	454b      	cmp	r3, r9
 8004f1c:	bfb8      	it	lt
 8004f1e:	464b      	movlt	r3, r9
 8004f20:	9304      	str	r3, [sp, #16]
 8004f22:	b112      	cbz	r2, 8004f2a <_vfprintf_r+0x322>
 8004f24:	9b04      	ldr	r3, [sp, #16]
 8004f26:	3301      	adds	r3, #1
 8004f28:	9304      	str	r3, [sp, #16]
 8004f2a:	f018 0302 	ands.w	r3, r8, #2
 8004f2e:	930b      	str	r3, [sp, #44]	; 0x2c
 8004f30:	d002      	beq.n	8004f38 <_vfprintf_r+0x330>
 8004f32:	9b04      	ldr	r3, [sp, #16]
 8004f34:	3302      	adds	r3, #2
 8004f36:	9304      	str	r3, [sp, #16]
 8004f38:	f018 0384 	ands.w	r3, r8, #132	; 0x84
 8004f3c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8004f3e:	930e      	str	r3, [sp, #56]	; 0x38
 8004f40:	d13f      	bne.n	8004fc2 <_vfprintf_r+0x3ba>
 8004f42:	9b06      	ldr	r3, [sp, #24]
 8004f44:	9904      	ldr	r1, [sp, #16]
 8004f46:	1a5d      	subs	r5, r3, r1
 8004f48:	2d00      	cmp	r5, #0
 8004f4a:	dd3a      	ble.n	8004fc2 <_vfprintf_r+0x3ba>
 8004f4c:	2d10      	cmp	r5, #16
 8004f4e:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004f50:	dd29      	ble.n	8004fa6 <_vfprintf_r+0x39e>
 8004f52:	4659      	mov	r1, fp
 8004f54:	4620      	mov	r0, r4
 8004f56:	9620      	str	r6, [sp, #128]	; 0x80
 8004f58:	2310      	movs	r3, #16
 8004f5a:	9c03      	ldr	r4, [sp, #12]
 8004f5c:	9e07      	ldr	r6, [sp, #28]
 8004f5e:	46bb      	mov	fp, r7
 8004f60:	e004      	b.n	8004f6c <_vfprintf_r+0x364>
 8004f62:	3d10      	subs	r5, #16
 8004f64:	2d10      	cmp	r5, #16
 8004f66:	f101 0108 	add.w	r1, r1, #8
 8004f6a:	dd18      	ble.n	8004f9e <_vfprintf_r+0x396>
 8004f6c:	3201      	adds	r2, #1
 8004f6e:	4fba      	ldr	r7, [pc, #744]	; (8005258 <_vfprintf_r+0x650>)
 8004f70:	3010      	adds	r0, #16
 8004f72:	2a07      	cmp	r2, #7
 8004f74:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8004f78:	e9c1 7300 	strd	r7, r3, [r1]
 8004f7c:	ddf1      	ble.n	8004f62 <_vfprintf_r+0x35a>
 8004f7e:	aa2a      	add	r2, sp, #168	; 0xa8
 8004f80:	4631      	mov	r1, r6
 8004f82:	4620      	mov	r0, r4
 8004f84:	930c      	str	r3, [sp, #48]	; 0x30
 8004f86:	f003 feab 	bl	8008ce0 <__sprint_r>
 8004f8a:	2800      	cmp	r0, #0
 8004f8c:	f040 843d 	bne.w	800580a <_vfprintf_r+0xc02>
 8004f90:	3d10      	subs	r5, #16
 8004f92:	2d10      	cmp	r5, #16
 8004f94:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8004f98:	a92d      	add	r1, sp, #180	; 0xb4
 8004f9a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8004f9c:	dce6      	bgt.n	8004f6c <_vfprintf_r+0x364>
 8004f9e:	9e20      	ldr	r6, [sp, #128]	; 0x80
 8004fa0:	465f      	mov	r7, fp
 8004fa2:	4604      	mov	r4, r0
 8004fa4:	468b      	mov	fp, r1
 8004fa6:	3201      	adds	r2, #1
 8004fa8:	4bab      	ldr	r3, [pc, #684]	; (8005258 <_vfprintf_r+0x650>)
 8004faa:	442c      	add	r4, r5
 8004fac:	2a07      	cmp	r2, #7
 8004fae:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004fb2:	e9cb 3500 	strd	r3, r5, [fp]
 8004fb6:	f300 84ff 	bgt.w	80059b8 <_vfprintf_r+0xdb0>
 8004fba:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8004fbe:	f10b 0b08 	add.w	fp, fp, #8
 8004fc2:	b172      	cbz	r2, 8004fe2 <_vfprintf_r+0x3da>
 8004fc4:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8004fc6:	3201      	adds	r2, #1
 8004fc8:	3401      	adds	r4, #1
 8004fca:	f10d 008b 	add.w	r0, sp, #139	; 0x8b
 8004fce:	2101      	movs	r1, #1
 8004fd0:	2a07      	cmp	r2, #7
 8004fd2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8004fd6:	e9cb 0100 	strd	r0, r1, [fp]
 8004fda:	f300 8418 	bgt.w	800580e <_vfprintf_r+0xc06>
 8004fde:	f10b 0b08 	add.w	fp, fp, #8
 8004fe2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8004fe4:	b16b      	cbz	r3, 8005002 <_vfprintf_r+0x3fa>
 8004fe6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8004fe8:	3301      	adds	r3, #1
 8004fea:	3402      	adds	r4, #2
 8004fec:	a923      	add	r1, sp, #140	; 0x8c
 8004fee:	2202      	movs	r2, #2
 8004ff0:	2b07      	cmp	r3, #7
 8004ff2:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8004ff6:	e9cb 1200 	strd	r1, r2, [fp]
 8004ffa:	f300 8415 	bgt.w	8005828 <_vfprintf_r+0xc20>
 8004ffe:	f10b 0b08 	add.w	fp, fp, #8
 8005002:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8005004:	2b80      	cmp	r3, #128	; 0x80
 8005006:	f000 8331 	beq.w	800566c <_vfprintf_r+0xa64>
 800500a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800500c:	eba9 0503 	sub.w	r5, r9, r3
 8005010:	2d00      	cmp	r5, #0
 8005012:	dd37      	ble.n	8005084 <_vfprintf_r+0x47c>
 8005014:	2d10      	cmp	r5, #16
 8005016:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005018:	4b90      	ldr	r3, [pc, #576]	; (800525c <_vfprintf_r+0x654>)
 800501a:	dd28      	ble.n	800506e <_vfprintf_r+0x466>
 800501c:	4659      	mov	r1, fp
 800501e:	4620      	mov	r0, r4
 8005020:	46bb      	mov	fp, r7
 8005022:	f04f 0910 	mov.w	r9, #16
 8005026:	4637      	mov	r7, r6
 8005028:	461c      	mov	r4, r3
 800502a:	9e07      	ldr	r6, [sp, #28]
 800502c:	e004      	b.n	8005038 <_vfprintf_r+0x430>
 800502e:	3d10      	subs	r5, #16
 8005030:	2d10      	cmp	r5, #16
 8005032:	f101 0108 	add.w	r1, r1, #8
 8005036:	dd15      	ble.n	8005064 <_vfprintf_r+0x45c>
 8005038:	3201      	adds	r2, #1
 800503a:	3010      	adds	r0, #16
 800503c:	2a07      	cmp	r2, #7
 800503e:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 8005042:	e9c1 4900 	strd	r4, r9, [r1]
 8005046:	ddf2      	ble.n	800502e <_vfprintf_r+0x426>
 8005048:	aa2a      	add	r2, sp, #168	; 0xa8
 800504a:	4631      	mov	r1, r6
 800504c:	9803      	ldr	r0, [sp, #12]
 800504e:	f003 fe47 	bl	8008ce0 <__sprint_r>
 8005052:	2800      	cmp	r0, #0
 8005054:	f040 83d9 	bne.w	800580a <_vfprintf_r+0xc02>
 8005058:	3d10      	subs	r5, #16
 800505a:	2d10      	cmp	r5, #16
 800505c:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 8005060:	a92d      	add	r1, sp, #180	; 0xb4
 8005062:	dce9      	bgt.n	8005038 <_vfprintf_r+0x430>
 8005064:	463e      	mov	r6, r7
 8005066:	4623      	mov	r3, r4
 8005068:	465f      	mov	r7, fp
 800506a:	4604      	mov	r4, r0
 800506c:	468b      	mov	fp, r1
 800506e:	3201      	adds	r2, #1
 8005070:	442c      	add	r4, r5
 8005072:	2a07      	cmp	r2, #7
 8005074:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005078:	e9cb 3500 	strd	r3, r5, [fp]
 800507c:	f300 83ef 	bgt.w	800585e <_vfprintf_r+0xc56>
 8005080:	f10b 0b08 	add.w	fp, fp, #8
 8005084:	f418 7f80 	tst.w	r8, #256	; 0x100
 8005088:	f040 8280 	bne.w	800558c <_vfprintf_r+0x984>
 800508c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800508e:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8005090:	f8cb 7000 	str.w	r7, [fp]
 8005094:	3301      	adds	r3, #1
 8005096:	4414      	add	r4, r2
 8005098:	2b07      	cmp	r3, #7
 800509a:	942c      	str	r4, [sp, #176]	; 0xb0
 800509c:	f8cb 2004 	str.w	r2, [fp, #4]
 80050a0:	932b      	str	r3, [sp, #172]	; 0xac
 80050a2:	f300 8392 	bgt.w	80057ca <_vfprintf_r+0xbc2>
 80050a6:	f10b 0b08 	add.w	fp, fp, #8
 80050aa:	f018 0f04 	tst.w	r8, #4
 80050ae:	d03b      	beq.n	8005128 <_vfprintf_r+0x520>
 80050b0:	9b06      	ldr	r3, [sp, #24]
 80050b2:	9a04      	ldr	r2, [sp, #16]
 80050b4:	1a9d      	subs	r5, r3, r2
 80050b6:	2d00      	cmp	r5, #0
 80050b8:	dd36      	ble.n	8005128 <_vfprintf_r+0x520>
 80050ba:	2d10      	cmp	r5, #16
 80050bc:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80050be:	dd21      	ble.n	8005104 <_vfprintf_r+0x4fc>
 80050c0:	2610      	movs	r6, #16
 80050c2:	9f03      	ldr	r7, [sp, #12]
 80050c4:	f8dd 801c 	ldr.w	r8, [sp, #28]
 80050c8:	e004      	b.n	80050d4 <_vfprintf_r+0x4cc>
 80050ca:	3d10      	subs	r5, #16
 80050cc:	2d10      	cmp	r5, #16
 80050ce:	f10b 0b08 	add.w	fp, fp, #8
 80050d2:	dd17      	ble.n	8005104 <_vfprintf_r+0x4fc>
 80050d4:	3301      	adds	r3, #1
 80050d6:	4a60      	ldr	r2, [pc, #384]	; (8005258 <_vfprintf_r+0x650>)
 80050d8:	3410      	adds	r4, #16
 80050da:	2b07      	cmp	r3, #7
 80050dc:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80050e0:	e9cb 2600 	strd	r2, r6, [fp]
 80050e4:	ddf1      	ble.n	80050ca <_vfprintf_r+0x4c2>
 80050e6:	aa2a      	add	r2, sp, #168	; 0xa8
 80050e8:	4641      	mov	r1, r8
 80050ea:	4638      	mov	r0, r7
 80050ec:	f003 fdf8 	bl	8008ce0 <__sprint_r>
 80050f0:	2800      	cmp	r0, #0
 80050f2:	f040 856c 	bne.w	8005bce <_vfprintf_r+0xfc6>
 80050f6:	3d10      	subs	r5, #16
 80050f8:	2d10      	cmp	r5, #16
 80050fa:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80050fe:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005102:	dce7      	bgt.n	80050d4 <_vfprintf_r+0x4cc>
 8005104:	3301      	adds	r3, #1
 8005106:	4a54      	ldr	r2, [pc, #336]	; (8005258 <_vfprintf_r+0x650>)
 8005108:	442c      	add	r4, r5
 800510a:	2b07      	cmp	r3, #7
 800510c:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 8005110:	e9cb 2500 	strd	r2, r5, [fp]
 8005114:	dd08      	ble.n	8005128 <_vfprintf_r+0x520>
 8005116:	aa2a      	add	r2, sp, #168	; 0xa8
 8005118:	9907      	ldr	r1, [sp, #28]
 800511a:	9803      	ldr	r0, [sp, #12]
 800511c:	f003 fde0 	bl	8008ce0 <__sprint_r>
 8005120:	2800      	cmp	r0, #0
 8005122:	f040 82e9 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8005126:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005128:	9904      	ldr	r1, [sp, #16]
 800512a:	e9dd 3205 	ldrd	r3, r2, [sp, #20]
 800512e:	428a      	cmp	r2, r1
 8005130:	bfac      	ite	ge
 8005132:	189b      	addge	r3, r3, r2
 8005134:	185b      	addlt	r3, r3, r1
 8005136:	9305      	str	r3, [sp, #20]
 8005138:	2c00      	cmp	r4, #0
 800513a:	f040 82d5 	bne.w	80056e8 <_vfprintf_r+0xae0>
 800513e:	2300      	movs	r3, #0
 8005140:	932b      	str	r3, [sp, #172]	; 0xac
 8005142:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8005144:	b11b      	cbz	r3, 800514e <_vfprintf_r+0x546>
 8005146:	990a      	ldr	r1, [sp, #40]	; 0x28
 8005148:	9803      	ldr	r0, [sp, #12]
 800514a:	f002 fc9d 	bl	8007a88 <_free_r>
 800514e:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005152:	4657      	mov	r7, sl
 8005154:	783b      	ldrb	r3, [r7, #0]
 8005156:	2b00      	cmp	r3, #0
 8005158:	f47f ada7 	bne.w	8004caa <_vfprintf_r+0xa2>
 800515c:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
 800515e:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005162:	2b00      	cmp	r3, #0
 8005164:	f041 80e7 	bne.w	8006336 <_vfprintf_r+0x172e>
 8005168:	2300      	movs	r3, #0
 800516a:	932b      	str	r3, [sp, #172]	; 0xac
 800516c:	e2cb      	b.n	8005706 <_vfprintf_r+0xafe>
 800516e:	4643      	mov	r3, r8
 8005170:	069a      	lsls	r2, r3, #26
 8005172:	f140 814e 	bpl.w	8005412 <_vfprintf_r+0x80a>
 8005176:	9c08      	ldr	r4, [sp, #32]
 8005178:	3407      	adds	r4, #7
 800517a:	f024 0207 	bic.w	r2, r4, #7
 800517e:	f102 0108 	add.w	r1, r2, #8
 8005182:	e9d2 4500 	ldrd	r4, r5, [r2]
 8005186:	9108      	str	r1, [sp, #32]
 8005188:	2201      	movs	r2, #1
 800518a:	2100      	movs	r1, #0
 800518c:	f88d 108b 	strb.w	r1, [sp, #139]	; 0x8b
 8005190:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8005194:	a956      	add	r1, sp, #344	; 0x158
 8005196:	9104      	str	r1, [sp, #16]
 8005198:	f47f aea2 	bne.w	8004ee0 <_vfprintf_r+0x2d8>
 800519c:	4698      	mov	r8, r3
 800519e:	2a01      	cmp	r2, #1
 80051a0:	f000 8350 	beq.w	8005844 <_vfprintf_r+0xc3c>
 80051a4:	2a02      	cmp	r2, #2
 80051a6:	f000 831b 	beq.w	80057e0 <_vfprintf_r+0xbd8>
 80051aa:	a956      	add	r1, sp, #344	; 0x158
 80051ac:	e000      	b.n	80051b0 <_vfprintf_r+0x5a8>
 80051ae:	4639      	mov	r1, r7
 80051b0:	08e2      	lsrs	r2, r4, #3
 80051b2:	ea42 7245 	orr.w	r2, r2, r5, lsl #29
 80051b6:	08e8      	lsrs	r0, r5, #3
 80051b8:	f004 0307 	and.w	r3, r4, #7
 80051bc:	4605      	mov	r5, r0
 80051be:	4614      	mov	r4, r2
 80051c0:	3330      	adds	r3, #48	; 0x30
 80051c2:	ea54 0205 	orrs.w	r2, r4, r5
 80051c6:	f801 3c01 	strb.w	r3, [r1, #-1]
 80051ca:	f101 37ff 	add.w	r7, r1, #4294967295	; 0xffffffff
 80051ce:	d1ee      	bne.n	80051ae <_vfprintf_r+0x5a6>
 80051d0:	f018 0f01 	tst.w	r8, #1
 80051d4:	f000 8314 	beq.w	8005800 <_vfprintf_r+0xbf8>
 80051d8:	2b30      	cmp	r3, #48	; 0x30
 80051da:	f000 8311 	beq.w	8005800 <_vfprintf_r+0xbf8>
 80051de:	9a04      	ldr	r2, [sp, #16]
 80051e0:	3902      	subs	r1, #2
 80051e2:	2330      	movs	r3, #48	; 0x30
 80051e4:	1a52      	subs	r2, r2, r1
 80051e6:	f807 3c01 	strb.w	r3, [r7, #-1]
 80051ea:	9209      	str	r2, [sp, #36]	; 0x24
 80051ec:	460f      	mov	r7, r1
 80051ee:	e68c      	b.n	8004f0a <_vfprintf_r+0x302>
 80051f0:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80051f4:	2200      	movs	r2, #0
 80051f6:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80051fa:	eb02 0282 	add.w	r2, r2, r2, lsl #2
 80051fe:	eb03 0242 	add.w	r2, r3, r2, lsl #1
 8005202:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 8005206:	2b09      	cmp	r3, #9
 8005208:	d9f5      	bls.n	80051f6 <_vfprintf_r+0x5ee>
 800520a:	9206      	str	r2, [sp, #24]
 800520c:	e57c      	b.n	8004d08 <_vfprintf_r+0x100>
 800520e:	4b14      	ldr	r3, [pc, #80]	; (8005260 <_vfprintf_r+0x658>)
 8005210:	9317      	str	r3, [sp, #92]	; 0x5c
 8005212:	f018 0f20 	tst.w	r8, #32
 8005216:	f000 8114 	beq.w	8005442 <_vfprintf_r+0x83a>
 800521a:	9c08      	ldr	r4, [sp, #32]
 800521c:	3407      	adds	r4, #7
 800521e:	f024 0307 	bic.w	r3, r4, #7
 8005222:	e9d3 4500 	ldrd	r4, r5, [r3]
 8005226:	f103 0208 	add.w	r2, r3, #8
 800522a:	9208      	str	r2, [sp, #32]
 800522c:	f018 0f01 	tst.w	r8, #1
 8005230:	d009      	beq.n	8005246 <_vfprintf_r+0x63e>
 8005232:	ea54 0305 	orrs.w	r3, r4, r5
 8005236:	d006      	beq.n	8005246 <_vfprintf_r+0x63e>
 8005238:	2330      	movs	r3, #48	; 0x30
 800523a:	f88d 608d 	strb.w	r6, [sp, #141]	; 0x8d
 800523e:	f048 0802 	orr.w	r8, r8, #2
 8005242:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8005246:	f428 6380 	bic.w	r3, r8, #1024	; 0x400
 800524a:	2202      	movs	r2, #2
 800524c:	e79d      	b.n	800518a <_vfprintf_r+0x582>
 800524e:	f048 0801 	orr.w	r8, r8, #1
 8005252:	f89a 6000 	ldrb.w	r6, [sl]
 8005256:	e555      	b.n	8004d04 <_vfprintf_r+0xfc>
 8005258:	0800997c 	.word	0x0800997c
 800525c:	0800998c 	.word	0x0800998c
 8005260:	08009948 	.word	0x08009948
 8005264:	9e03      	ldr	r6, [sp, #12]
 8005266:	4630      	mov	r0, r6
 8005268:	f002 feaa 	bl	8007fc0 <_localeconv_r>
 800526c:	6843      	ldr	r3, [r0, #4]
 800526e:	9318      	str	r3, [sp, #96]	; 0x60
 8005270:	4618      	mov	r0, r3
 8005272:	f7fb fa65 	bl	8000740 <strlen>
 8005276:	901b      	str	r0, [sp, #108]	; 0x6c
 8005278:	4604      	mov	r4, r0
 800527a:	4630      	mov	r0, r6
 800527c:	f002 fea0 	bl	8007fc0 <_localeconv_r>
 8005280:	6883      	ldr	r3, [r0, #8]
 8005282:	931a      	str	r3, [sp, #104]	; 0x68
 8005284:	2c00      	cmp	r4, #0
 8005286:	f43f adb8 	beq.w	8004dfa <_vfprintf_r+0x1f2>
 800528a:	f89a 6000 	ldrb.w	r6, [sl]
 800528e:	2b00      	cmp	r3, #0
 8005290:	f43f ad38 	beq.w	8004d04 <_vfprintf_r+0xfc>
 8005294:	781b      	ldrb	r3, [r3, #0]
 8005296:	2b00      	cmp	r3, #0
 8005298:	f43f ad34 	beq.w	8004d04 <_vfprintf_r+0xfc>
 800529c:	f448 6880 	orr.w	r8, r8, #1024	; 0x400
 80052a0:	e530      	b.n	8004d04 <_vfprintf_r+0xfc>
 80052a2:	9b08      	ldr	r3, [sp, #32]
 80052a4:	f89a 6000 	ldrb.w	r6, [sl]
 80052a8:	681a      	ldr	r2, [r3, #0]
 80052aa:	9206      	str	r2, [sp, #24]
 80052ac:	2a00      	cmp	r2, #0
 80052ae:	f103 0304 	add.w	r3, r3, #4
 80052b2:	f2c0 8697 	blt.w	8005fe4 <_vfprintf_r+0x13dc>
 80052b6:	9308      	str	r3, [sp, #32]
 80052b8:	e524      	b.n	8004d04 <_vfprintf_r+0xfc>
 80052ba:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80052be:	f89a 6000 	ldrb.w	r6, [sl]
 80052c2:	e51f      	b.n	8004d04 <_vfprintf_r+0xfc>
 80052c4:	f89a 6000 	ldrb.w	r6, [sl]
 80052c8:	f048 0804 	orr.w	r8, r8, #4
 80052cc:	e51a      	b.n	8004d04 <_vfprintf_r+0xfc>
 80052ce:	f89a 6000 	ldrb.w	r6, [sl]
 80052d2:	2e2a      	cmp	r6, #42	; 0x2a
 80052d4:	f10a 0201 	add.w	r2, sl, #1
 80052d8:	f001 81b0 	beq.w	800663c <_vfprintf_r+0x1a34>
 80052dc:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80052e0:	2b09      	cmp	r3, #9
 80052e2:	4692      	mov	sl, r2
 80052e4:	f04f 0900 	mov.w	r9, #0
 80052e8:	f63f ad0e 	bhi.w	8004d08 <_vfprintf_r+0x100>
 80052ec:	f81a 6b01 	ldrb.w	r6, [sl], #1
 80052f0:	eb09 0989 	add.w	r9, r9, r9, lsl #2
 80052f4:	eb03 0949 	add.w	r9, r3, r9, lsl #1
 80052f8:	f1a6 0330 	sub.w	r3, r6, #48	; 0x30
 80052fc:	2b09      	cmp	r3, #9
 80052fe:	d9f5      	bls.n	80052ec <_vfprintf_r+0x6e4>
 8005300:	e502      	b.n	8004d08 <_vfprintf_r+0x100>
 8005302:	f048 0880 	orr.w	r8, r8, #128	; 0x80
 8005306:	f89a 6000 	ldrb.w	r6, [sl]
 800530a:	e4fb      	b.n	8004d04 <_vfprintf_r+0xfc>
 800530c:	9c08      	ldr	r4, [sp, #32]
 800530e:	3407      	adds	r4, #7
 8005310:	f024 0407 	bic.w	r4, r4, #7
 8005314:	ed94 7b00 	vldr	d7, [r4]
 8005318:	ec52 1b17 	vmov	r1, r2, d7
 800531c:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 8005320:	931d      	str	r3, [sp, #116]	; 0x74
 8005322:	ed8d 7a1c 	vstr	s14, [sp, #112]	; 0x70
 8005326:	3408      	adds	r4, #8
 8005328:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800532c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005330:	4bba      	ldr	r3, [pc, #744]	; (800561c <_vfprintf_r+0xa14>)
 8005332:	9408      	str	r4, [sp, #32]
 8005334:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 8005338:	f7fb ff18 	bl	800116c <__aeabi_dcmpun>
 800533c:	2800      	cmp	r0, #0
 800533e:	f040 846f 	bne.w	8005c20 <_vfprintf_r+0x1018>
 8005342:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
 8005346:	4bb5      	ldr	r3, [pc, #724]	; (800561c <_vfprintf_r+0xa14>)
 8005348:	e9dd 011c 	ldrd	r0, r1, [sp, #112]	; 0x70
 800534c:	f7fb fef0 	bl	8001130 <__aeabi_dcmple>
 8005350:	2800      	cmp	r0, #0
 8005352:	f040 8465 	bne.w	8005c20 <_vfprintf_r+0x1018>
 8005356:	2200      	movs	r2, #0
 8005358:	2300      	movs	r3, #0
 800535a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800535e:	f7fb fedd 	bl	800111c <__aeabi_dcmplt>
 8005362:	2800      	cmp	r0, #0
 8005364:	f040 855b 	bne.w	8005e1e <_vfprintf_r+0x1216>
 8005368:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 800536c:	4fac      	ldr	r7, [pc, #688]	; (8005620 <_vfprintf_r+0xa18>)
 800536e:	4bad      	ldr	r3, [pc, #692]	; (8005624 <_vfprintf_r+0xa1c>)
 8005370:	2000      	movs	r0, #0
 8005372:	2103      	movs	r1, #3
 8005374:	9104      	str	r1, [sp, #16]
 8005376:	900a      	str	r0, [sp, #40]	; 0x28
 8005378:	f028 0880 	bic.w	r8, r8, #128	; 0x80
 800537c:	2e47      	cmp	r6, #71	; 0x47
 800537e:	bfd8      	it	le
 8005380:	461f      	movle	r7, r3
 8005382:	9109      	str	r1, [sp, #36]	; 0x24
 8005384:	4681      	mov	r9, r0
 8005386:	900f      	str	r0, [sp, #60]	; 0x3c
 8005388:	9014      	str	r0, [sp, #80]	; 0x50
 800538a:	9011      	str	r0, [sp, #68]	; 0x44
 800538c:	e5c9      	b.n	8004f22 <_vfprintf_r+0x31a>
 800538e:	9808      	ldr	r0, [sp, #32]
 8005390:	2300      	movs	r3, #0
 8005392:	6801      	ldr	r1, [r0, #0]
 8005394:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 8005398:	461a      	mov	r2, r3
 800539a:	f88d 10f4 	strb.w	r1, [sp, #244]	; 0xf4
 800539e:	2301      	movs	r3, #1
 80053a0:	1d01      	adds	r1, r0, #4
 80053a2:	9304      	str	r3, [sp, #16]
 80053a4:	920a      	str	r2, [sp, #40]	; 0x28
 80053a6:	4691      	mov	r9, r2
 80053a8:	920f      	str	r2, [sp, #60]	; 0x3c
 80053aa:	9214      	str	r2, [sp, #80]	; 0x50
 80053ac:	9211      	str	r2, [sp, #68]	; 0x44
 80053ae:	e9cd 1308 	strd	r1, r3, [sp, #32]
 80053b2:	af3d      	add	r7, sp, #244	; 0xf4
 80053b4:	e5b9      	b.n	8004f2a <_vfprintf_r+0x322>
 80053b6:	9b08      	ldr	r3, [sp, #32]
 80053b8:	681f      	ldr	r7, [r3, #0]
 80053ba:	2500      	movs	r5, #0
 80053bc:	f88d 508b 	strb.w	r5, [sp, #139]	; 0x8b
 80053c0:	1d1c      	adds	r4, r3, #4
 80053c2:	2f00      	cmp	r7, #0
 80053c4:	f000 8639 	beq.w	800603a <_vfprintf_r+0x1432>
 80053c8:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 80053cc:	f000 8711 	beq.w	80061f2 <_vfprintf_r+0x15ea>
 80053d0:	464a      	mov	r2, r9
 80053d2:	4629      	mov	r1, r5
 80053d4:	4638      	mov	r0, r7
 80053d6:	f7fb fa23 	bl	8000820 <memchr>
 80053da:	900a      	str	r0, [sp, #40]	; 0x28
 80053dc:	2800      	cmp	r0, #0
 80053de:	f000 85e7 	beq.w	8005fb0 <_vfprintf_r+0x13a8>
 80053e2:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 80053e4:	1bdb      	subs	r3, r3, r7
 80053e6:	9309      	str	r3, [sp, #36]	; 0x24
 80053e8:	46a9      	mov	r9, r5
 80053ea:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80053ee:	9408      	str	r4, [sp, #32]
 80053f0:	9304      	str	r3, [sp, #16]
 80053f2:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80053f6:	f8cd 903c 	str.w	r9, [sp, #60]	; 0x3c
 80053fa:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 80053fe:	f8cd 9044 	str.w	r9, [sp, #68]	; 0x44
 8005402:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005406:	e58c      	b.n	8004f22 <_vfprintf_r+0x31a>
 8005408:	f048 0310 	orr.w	r3, r8, #16
 800540c:	069a      	lsls	r2, r3, #26
 800540e:	f53f aeb2 	bmi.w	8005176 <_vfprintf_r+0x56e>
 8005412:	9a08      	ldr	r2, [sp, #32]
 8005414:	06df      	lsls	r7, r3, #27
 8005416:	f102 0104 	add.w	r1, r2, #4
 800541a:	f100 837e 	bmi.w	8005b1a <_vfprintf_r+0xf12>
 800541e:	065d      	lsls	r5, r3, #25
 8005420:	9a08      	ldr	r2, [sp, #32]
 8005422:	f100 84e4 	bmi.w	8005dee <_vfprintf_r+0x11e6>
 8005426:	059c      	lsls	r4, r3, #22
 8005428:	f140 8377 	bpl.w	8005b1a <_vfprintf_r+0xf12>
 800542c:	7814      	ldrb	r4, [r2, #0]
 800542e:	9108      	str	r1, [sp, #32]
 8005430:	2500      	movs	r5, #0
 8005432:	2201      	movs	r2, #1
 8005434:	e6a9      	b.n	800518a <_vfprintf_r+0x582>
 8005436:	4b7c      	ldr	r3, [pc, #496]	; (8005628 <_vfprintf_r+0xa20>)
 8005438:	9317      	str	r3, [sp, #92]	; 0x5c
 800543a:	f018 0f20 	tst.w	r8, #32
 800543e:	f47f aeec 	bne.w	800521a <_vfprintf_r+0x612>
 8005442:	9a08      	ldr	r2, [sp, #32]
 8005444:	f018 0f10 	tst.w	r8, #16
 8005448:	f102 0304 	add.w	r3, r2, #4
 800544c:	f040 8354 	bne.w	8005af8 <_vfprintf_r+0xef0>
 8005450:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005454:	9a08      	ldr	r2, [sp, #32]
 8005456:	f040 84d0 	bne.w	8005dfa <_vfprintf_r+0x11f2>
 800545a:	f418 7f00 	tst.w	r8, #512	; 0x200
 800545e:	f000 834b 	beq.w	8005af8 <_vfprintf_r+0xef0>
 8005462:	7814      	ldrb	r4, [r2, #0]
 8005464:	9308      	str	r3, [sp, #32]
 8005466:	2500      	movs	r5, #0
 8005468:	e6e0      	b.n	800522c <_vfprintf_r+0x624>
 800546a:	f89d 308b 	ldrb.w	r3, [sp, #139]	; 0x8b
 800546e:	f89a 6000 	ldrb.w	r6, [sl]
 8005472:	2b00      	cmp	r3, #0
 8005474:	f47f ac46 	bne.w	8004d04 <_vfprintf_r+0xfc>
 8005478:	2320      	movs	r3, #32
 800547a:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800547e:	e441      	b.n	8004d04 <_vfprintf_r+0xfc>
 8005480:	f89a 6000 	ldrb.w	r6, [sl]
 8005484:	2e6c      	cmp	r6, #108	; 0x6c
 8005486:	bf03      	ittte	eq
 8005488:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 800548c:	f048 0820 	orreq.w	r8, r8, #32
 8005490:	f10a 0a01 	addeq.w	sl, sl, #1
 8005494:	f048 0810 	orrne.w	r8, r8, #16
 8005498:	e434      	b.n	8004d04 <_vfprintf_r+0xfc>
 800549a:	9a08      	ldr	r2, [sp, #32]
 800549c:	f018 0f20 	tst.w	r8, #32
 80054a0:	f852 3b04 	ldr.w	r3, [r2], #4
 80054a4:	9208      	str	r2, [sp, #32]
 80054a6:	f000 83a1 	beq.w	8005bec <_vfprintf_r+0xfe4>
 80054aa:	9a05      	ldr	r2, [sp, #20]
 80054ac:	4610      	mov	r0, r2
 80054ae:	17d1      	asrs	r1, r2, #31
 80054b0:	e9c3 0100 	strd	r0, r1, [r3]
 80054b4:	4657      	mov	r7, sl
 80054b6:	e64d      	b.n	8005154 <_vfprintf_r+0x54c>
 80054b8:	f89a 6000 	ldrb.w	r6, [sl]
 80054bc:	2e68      	cmp	r6, #104	; 0x68
 80054be:	bf03      	ittte	eq
 80054c0:	f89a 6001 	ldrbeq.w	r6, [sl, #1]
 80054c4:	f448 7800 	orreq.w	r8, r8, #512	; 0x200
 80054c8:	f10a 0a01 	addeq.w	sl, sl, #1
 80054cc:	f048 0840 	orrne.w	r8, r8, #64	; 0x40
 80054d0:	e418      	b.n	8004d04 <_vfprintf_r+0xfc>
 80054d2:	9908      	ldr	r1, [sp, #32]
 80054d4:	4b55      	ldr	r3, [pc, #340]	; (800562c <_vfprintf_r+0xa24>)
 80054d6:	680c      	ldr	r4, [r1, #0]
 80054d8:	9317      	str	r3, [sp, #92]	; 0x5c
 80054da:	f647 0230 	movw	r2, #30768	; 0x7830
 80054de:	3104      	adds	r1, #4
 80054e0:	f8ad 208c 	strh.w	r2, [sp, #140]	; 0x8c
 80054e4:	f048 0302 	orr.w	r3, r8, #2
 80054e8:	9108      	str	r1, [sp, #32]
 80054ea:	2500      	movs	r5, #0
 80054ec:	2202      	movs	r2, #2
 80054ee:	2678      	movs	r6, #120	; 0x78
 80054f0:	e64b      	b.n	800518a <_vfprintf_r+0x582>
 80054f2:	f048 0808 	orr.w	r8, r8, #8
 80054f6:	f89a 6000 	ldrb.w	r6, [sl]
 80054fa:	e403      	b.n	8004d04 <_vfprintf_r+0xfc>
 80054fc:	f048 0310 	orr.w	r3, r8, #16
 8005500:	069f      	lsls	r7, r3, #26
 8005502:	f53f acd1 	bmi.w	8004ea8 <_vfprintf_r+0x2a0>
 8005506:	9908      	ldr	r1, [sp, #32]
 8005508:	06dd      	lsls	r5, r3, #27
 800550a:	f101 0204 	add.w	r2, r1, #4
 800550e:	f100 82fd 	bmi.w	8005b0c <_vfprintf_r+0xf04>
 8005512:	065c      	lsls	r4, r3, #25
 8005514:	9908      	ldr	r1, [sp, #32]
 8005516:	f100 8475 	bmi.w	8005e04 <_vfprintf_r+0x11fc>
 800551a:	0598      	lsls	r0, r3, #22
 800551c:	f140 82f6 	bpl.w	8005b0c <_vfprintf_r+0xf04>
 8005520:	f991 4000 	ldrsb.w	r4, [r1]
 8005524:	9208      	str	r2, [sp, #32]
 8005526:	17e5      	asrs	r5, r4, #31
 8005528:	4620      	mov	r0, r4
 800552a:	4629      	mov	r1, r5
 800552c:	e4c7      	b.n	8004ebe <_vfprintf_r+0x2b6>
 800552e:	9a08      	ldr	r2, [sp, #32]
 8005530:	f018 0f10 	tst.w	r8, #16
 8005534:	f102 0304 	add.w	r3, r2, #4
 8005538:	f040 82e3 	bne.w	8005b02 <_vfprintf_r+0xefa>
 800553c:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005540:	9a08      	ldr	r2, [sp, #32]
 8005542:	f040 8467 	bne.w	8005e14 <_vfprintf_r+0x120c>
 8005546:	f418 7f00 	tst.w	r8, #512	; 0x200
 800554a:	f000 82da 	beq.w	8005b02 <_vfprintf_r+0xefa>
 800554e:	7814      	ldrb	r4, [r2, #0]
 8005550:	9308      	str	r3, [sp, #32]
 8005552:	2500      	movs	r5, #0
 8005554:	e488      	b.n	8004e68 <_vfprintf_r+0x260>
 8005556:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 800555a:	f002 fd45 	bl	8007fe8 <__retarget_lock_release_recursive>
 800555e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 8005562:	9305      	str	r3, [sp, #20]
 8005564:	e443      	b.n	8004dee <_vfprintf_r+0x1e6>
 8005566:	2e00      	cmp	r6, #0
 8005568:	f43f adf8 	beq.w	800515c <_vfprintf_r+0x554>
 800556c:	2300      	movs	r3, #0
 800556e:	2101      	movs	r1, #1
 8005570:	461a      	mov	r2, r3
 8005572:	9104      	str	r1, [sp, #16]
 8005574:	f88d 60f4 	strb.w	r6, [sp, #244]	; 0xf4
 8005578:	f88d 308b 	strb.w	r3, [sp, #139]	; 0x8b
 800557c:	930a      	str	r3, [sp, #40]	; 0x28
 800557e:	4699      	mov	r9, r3
 8005580:	930f      	str	r3, [sp, #60]	; 0x3c
 8005582:	9314      	str	r3, [sp, #80]	; 0x50
 8005584:	9311      	str	r3, [sp, #68]	; 0x44
 8005586:	9109      	str	r1, [sp, #36]	; 0x24
 8005588:	af3d      	add	r7, sp, #244	; 0xf4
 800558a:	e4ce      	b.n	8004f2a <_vfprintf_r+0x322>
 800558c:	2e65      	cmp	r6, #101	; 0x65
 800558e:	f340 80ca 	ble.w	8005726 <_vfprintf_r+0xb1e>
 8005592:	2200      	movs	r2, #0
 8005594:	2300      	movs	r3, #0
 8005596:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800559a:	f7fb fdb5 	bl	8001108 <__aeabi_dcmpeq>
 800559e:	2800      	cmp	r0, #0
 80055a0:	f000 8169 	beq.w	8005876 <_vfprintf_r+0xc6e>
 80055a4:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80055a6:	4a22      	ldr	r2, [pc, #136]	; (8005630 <_vfprintf_r+0xa28>)
 80055a8:	f8cb 2000 	str.w	r2, [fp]
 80055ac:	3301      	adds	r3, #1
 80055ae:	3401      	adds	r4, #1
 80055b0:	2201      	movs	r2, #1
 80055b2:	2b07      	cmp	r3, #7
 80055b4:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80055b8:	f8cb 2004 	str.w	r2, [fp, #4]
 80055bc:	f300 8406 	bgt.w	8005dcc <_vfprintf_r+0x11c4>
 80055c0:	f10b 0b08 	add.w	fp, fp, #8
 80055c4:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80055c6:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80055c8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80055ca:	4293      	cmp	r3, r2
 80055cc:	db03      	blt.n	80055d6 <_vfprintf_r+0x9ce>
 80055ce:	f018 0f01 	tst.w	r8, #1
 80055d2:	f43f ad6a 	beq.w	80050aa <_vfprintf_r+0x4a2>
 80055d6:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80055d8:	9a16      	ldr	r2, [sp, #88]	; 0x58
 80055da:	f8cb 2000 	str.w	r2, [fp]
 80055de:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80055e0:	f8cb 2004 	str.w	r2, [fp, #4]
 80055e4:	3301      	adds	r3, #1
 80055e6:	4414      	add	r4, r2
 80055e8:	2b07      	cmp	r3, #7
 80055ea:	e9cd 342b 	strd	r3, r4, [sp, #172]	; 0xac
 80055ee:	f300 8517 	bgt.w	8006020 <_vfprintf_r+0x1418>
 80055f2:	f10b 0b08 	add.w	fp, fp, #8
 80055f6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80055f8:	1e5d      	subs	r5, r3, #1
 80055fa:	2d00      	cmp	r5, #0
 80055fc:	f77f ad55 	ble.w	80050aa <_vfprintf_r+0x4a2>
 8005600:	2d10      	cmp	r5, #16
 8005602:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005604:	4b0b      	ldr	r3, [pc, #44]	; (8005634 <_vfprintf_r+0xa2c>)
 8005606:	f340 82e7 	ble.w	8005bd8 <_vfprintf_r+0xfd0>
 800560a:	4619      	mov	r1, r3
 800560c:	2610      	movs	r6, #16
 800560e:	4623      	mov	r3, r4
 8005610:	9f03      	ldr	r7, [sp, #12]
 8005612:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005616:	460c      	mov	r4, r1
 8005618:	e014      	b.n	8005644 <_vfprintf_r+0xa3c>
 800561a:	bf00      	nop
 800561c:	7fefffff 	.word	0x7fefffff
 8005620:	0800993c 	.word	0x0800993c
 8005624:	08009938 	.word	0x08009938
 8005628:	0800995c 	.word	0x0800995c
 800562c:	08009948 	.word	0x08009948
 8005630:	08009978 	.word	0x08009978
 8005634:	0800998c 	.word	0x0800998c
 8005638:	f10b 0b08 	add.w	fp, fp, #8
 800563c:	3d10      	subs	r5, #16
 800563e:	2d10      	cmp	r5, #16
 8005640:	f340 82c7 	ble.w	8005bd2 <_vfprintf_r+0xfca>
 8005644:	3201      	adds	r2, #1
 8005646:	3310      	adds	r3, #16
 8005648:	2a07      	cmp	r2, #7
 800564a:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 800564e:	e9cb 4600 	strd	r4, r6, [fp]
 8005652:	ddf1      	ble.n	8005638 <_vfprintf_r+0xa30>
 8005654:	aa2a      	add	r2, sp, #168	; 0xa8
 8005656:	4649      	mov	r1, r9
 8005658:	4638      	mov	r0, r7
 800565a:	f003 fb41 	bl	8008ce0 <__sprint_r>
 800565e:	2800      	cmp	r0, #0
 8005660:	d14c      	bne.n	80056fc <_vfprintf_r+0xaf4>
 8005662:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005666:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800566a:	e7e7      	b.n	800563c <_vfprintf_r+0xa34>
 800566c:	9b06      	ldr	r3, [sp, #24]
 800566e:	9a04      	ldr	r2, [sp, #16]
 8005670:	1a9d      	subs	r5, r3, r2
 8005672:	2d00      	cmp	r5, #0
 8005674:	f77f acc9 	ble.w	800500a <_vfprintf_r+0x402>
 8005678:	2d10      	cmp	r5, #16
 800567a:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 800567c:	4bbc      	ldr	r3, [pc, #752]	; (8005970 <_vfprintf_r+0xd68>)
 800567e:	dd27      	ble.n	80056d0 <_vfprintf_r+0xac8>
 8005680:	4659      	mov	r1, fp
 8005682:	4620      	mov	r0, r4
 8005684:	46bb      	mov	fp, r7
 8005686:	461c      	mov	r4, r3
 8005688:	4637      	mov	r7, r6
 800568a:	9e07      	ldr	r6, [sp, #28]
 800568c:	e004      	b.n	8005698 <_vfprintf_r+0xa90>
 800568e:	3d10      	subs	r5, #16
 8005690:	2d10      	cmp	r5, #16
 8005692:	f101 0108 	add.w	r1, r1, #8
 8005696:	dd16      	ble.n	80056c6 <_vfprintf_r+0xabe>
 8005698:	3201      	adds	r2, #1
 800569a:	3010      	adds	r0, #16
 800569c:	2310      	movs	r3, #16
 800569e:	2a07      	cmp	r2, #7
 80056a0:	e9cd 202b 	strd	r2, r0, [sp, #172]	; 0xac
 80056a4:	600c      	str	r4, [r1, #0]
 80056a6:	604b      	str	r3, [r1, #4]
 80056a8:	ddf1      	ble.n	800568e <_vfprintf_r+0xa86>
 80056aa:	aa2a      	add	r2, sp, #168	; 0xa8
 80056ac:	4631      	mov	r1, r6
 80056ae:	9803      	ldr	r0, [sp, #12]
 80056b0:	f003 fb16 	bl	8008ce0 <__sprint_r>
 80056b4:	2800      	cmp	r0, #0
 80056b6:	f040 80a8 	bne.w	800580a <_vfprintf_r+0xc02>
 80056ba:	3d10      	subs	r5, #16
 80056bc:	2d10      	cmp	r5, #16
 80056be:	e9dd 202b 	ldrd	r2, r0, [sp, #172]	; 0xac
 80056c2:	a92d      	add	r1, sp, #180	; 0xb4
 80056c4:	dce8      	bgt.n	8005698 <_vfprintf_r+0xa90>
 80056c6:	463e      	mov	r6, r7
 80056c8:	4623      	mov	r3, r4
 80056ca:	465f      	mov	r7, fp
 80056cc:	4604      	mov	r4, r0
 80056ce:	468b      	mov	fp, r1
 80056d0:	3201      	adds	r2, #1
 80056d2:	442c      	add	r4, r5
 80056d4:	2a07      	cmp	r2, #7
 80056d6:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80056da:	e9cb 3500 	strd	r3, r5, [fp]
 80056de:	f300 8292 	bgt.w	8005c06 <_vfprintf_r+0xffe>
 80056e2:	f10b 0b08 	add.w	fp, fp, #8
 80056e6:	e490      	b.n	800500a <_vfprintf_r+0x402>
 80056e8:	aa2a      	add	r2, sp, #168	; 0xa8
 80056ea:	9907      	ldr	r1, [sp, #28]
 80056ec:	9803      	ldr	r0, [sp, #12]
 80056ee:	f003 faf7 	bl	8008ce0 <__sprint_r>
 80056f2:	2800      	cmp	r0, #0
 80056f4:	f43f ad23 	beq.w	800513e <_vfprintf_r+0x536>
 80056f8:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80056fc:	990a      	ldr	r1, [sp, #40]	; 0x28
 80056fe:	b111      	cbz	r1, 8005706 <_vfprintf_r+0xafe>
 8005700:	9803      	ldr	r0, [sp, #12]
 8005702:	f002 f9c1 	bl	8007a88 <_free_r>
 8005706:	f8d9 2064 	ldr.w	r2, [r9, #100]	; 0x64
 800570a:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 800570e:	07d0      	lsls	r0, r2, #31
 8005710:	d402      	bmi.n	8005718 <_vfprintf_r+0xb10>
 8005712:	0599      	lsls	r1, r3, #22
 8005714:	f140 81d0 	bpl.w	8005ab8 <_vfprintf_r+0xeb0>
 8005718:	065a      	lsls	r2, r3, #25
 800571a:	f53f ab65 	bmi.w	8004de8 <_vfprintf_r+0x1e0>
 800571e:	9805      	ldr	r0, [sp, #20]
 8005720:	b057      	add	sp, #348	; 0x15c
 8005722:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8005726:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005728:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800572a:	2a01      	cmp	r2, #1
 800572c:	f104 0401 	add.w	r4, r4, #1
 8005730:	f103 0501 	add.w	r5, r3, #1
 8005734:	f10b 0608 	add.w	r6, fp, #8
 8005738:	f340 811c 	ble.w	8005974 <_vfprintf_r+0xd6c>
 800573c:	2301      	movs	r3, #1
 800573e:	2d07      	cmp	r5, #7
 8005740:	f8cb 7000 	str.w	r7, [fp]
 8005744:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8005748:	f8cb 3004 	str.w	r3, [fp, #4]
 800574c:	f300 81bb 	bgt.w	8005ac6 <_vfprintf_r+0xebe>
 8005750:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8005752:	9a16      	ldr	r2, [sp, #88]	; 0x58
 8005754:	1c69      	adds	r1, r5, #1
 8005756:	441c      	add	r4, r3
 8005758:	2907      	cmp	r1, #7
 800575a:	910b      	str	r1, [sp, #44]	; 0x2c
 800575c:	e9cd 142b 	strd	r1, r4, [sp, #172]	; 0xac
 8005760:	e9c6 2300 	strd	r2, r3, [r6]
 8005764:	f300 81bb 	bgt.w	8005ade <_vfprintf_r+0xed6>
 8005768:	3608      	adds	r6, #8
 800576a:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 800576c:	1c53      	adds	r3, r2, #1
 800576e:	461d      	mov	r5, r3
 8005770:	9509      	str	r5, [sp, #36]	; 0x24
 8005772:	9d10      	ldr	r5, [sp, #64]	; 0x40
 8005774:	930e      	str	r3, [sp, #56]	; 0x38
 8005776:	2200      	movs	r2, #0
 8005778:	2300      	movs	r3, #0
 800577a:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 800577e:	f105 39ff 	add.w	r9, r5, #4294967295	; 0xffffffff
 8005782:	f106 0b08 	add.w	fp, r6, #8
 8005786:	f7fb fcbf 	bl	8001108 <__aeabi_dcmpeq>
 800578a:	2800      	cmp	r0, #0
 800578c:	f040 80c2 	bne.w	8005914 <_vfprintf_r+0xd0c>
 8005790:	9d09      	ldr	r5, [sp, #36]	; 0x24
 8005792:	f8c6 9004 	str.w	r9, [r6, #4]
 8005796:	3701      	adds	r7, #1
 8005798:	444c      	add	r4, r9
 800579a:	2d07      	cmp	r5, #7
 800579c:	6037      	str	r7, [r6, #0]
 800579e:	942c      	str	r4, [sp, #176]	; 0xb0
 80057a0:	952b      	str	r5, [sp, #172]	; 0xac
 80057a2:	f300 80f9 	bgt.w	8005998 <_vfprintf_r+0xd90>
 80057a6:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80057a8:	f106 0310 	add.w	r3, r6, #16
 80057ac:	3202      	adds	r2, #2
 80057ae:	465e      	mov	r6, fp
 80057b0:	9209      	str	r2, [sp, #36]	; 0x24
 80057b2:	469b      	mov	fp, r3
 80057b4:	9a19      	ldr	r2, [sp, #100]	; 0x64
 80057b6:	6072      	str	r2, [r6, #4]
 80057b8:	4414      	add	r4, r2
 80057ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80057bc:	942c      	str	r4, [sp, #176]	; 0xb0
 80057be:	ab26      	add	r3, sp, #152	; 0x98
 80057c0:	2a07      	cmp	r2, #7
 80057c2:	922b      	str	r2, [sp, #172]	; 0xac
 80057c4:	6033      	str	r3, [r6, #0]
 80057c6:	f77f ac70 	ble.w	80050aa <_vfprintf_r+0x4a2>
 80057ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80057cc:	9907      	ldr	r1, [sp, #28]
 80057ce:	9803      	ldr	r0, [sp, #12]
 80057d0:	f003 fa86 	bl	8008ce0 <__sprint_r>
 80057d4:	2800      	cmp	r0, #0
 80057d6:	d18f      	bne.n	80056f8 <_vfprintf_r+0xaf0>
 80057d8:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80057da:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80057de:	e464      	b.n	80050aa <_vfprintf_r+0x4a2>
 80057e0:	9817      	ldr	r0, [sp, #92]	; 0x5c
 80057e2:	af56      	add	r7, sp, #344	; 0x158
 80057e4:	0923      	lsrs	r3, r4, #4
 80057e6:	f004 010f 	and.w	r1, r4, #15
 80057ea:	ea43 7305 	orr.w	r3, r3, r5, lsl #28
 80057ee:	092a      	lsrs	r2, r5, #4
 80057f0:	461c      	mov	r4, r3
 80057f2:	4615      	mov	r5, r2
 80057f4:	5c43      	ldrb	r3, [r0, r1]
 80057f6:	f807 3d01 	strb.w	r3, [r7, #-1]!
 80057fa:	ea54 0305 	orrs.w	r3, r4, r5
 80057fe:	d1f1      	bne.n	80057e4 <_vfprintf_r+0xbdc>
 8005800:	9b04      	ldr	r3, [sp, #16]
 8005802:	1bdb      	subs	r3, r3, r7
 8005804:	9309      	str	r3, [sp, #36]	; 0x24
 8005806:	f7ff bb80 	b.w	8004f0a <_vfprintf_r+0x302>
 800580a:	46b1      	mov	r9, r6
 800580c:	e776      	b.n	80056fc <_vfprintf_r+0xaf4>
 800580e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005810:	9907      	ldr	r1, [sp, #28]
 8005812:	9803      	ldr	r0, [sp, #12]
 8005814:	f003 fa64 	bl	8008ce0 <__sprint_r>
 8005818:	2800      	cmp	r0, #0
 800581a:	f47f af6d 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 800581e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005820:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005824:	f7ff bbdd 	b.w	8004fe2 <_vfprintf_r+0x3da>
 8005828:	aa2a      	add	r2, sp, #168	; 0xa8
 800582a:	9907      	ldr	r1, [sp, #28]
 800582c:	9803      	ldr	r0, [sp, #12]
 800582e:	f003 fa57 	bl	8008ce0 <__sprint_r>
 8005832:	2800      	cmp	r0, #0
 8005834:	f47f af60 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8005838:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800583a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 800583e:	f7ff bbe0 	b.w	8005002 <_vfprintf_r+0x3fa>
 8005842:	4698      	mov	r8, r3
 8005844:	2d00      	cmp	r5, #0
 8005846:	bf08      	it	eq
 8005848:	2c0a      	cmpeq	r4, #10
 800584a:	f080 8170 	bcs.w	8005b2e <_vfprintf_r+0xf26>
 800584e:	af56      	add	r7, sp, #344	; 0x158
 8005850:	3430      	adds	r4, #48	; 0x30
 8005852:	2301      	movs	r3, #1
 8005854:	f807 4d01 	strb.w	r4, [r7, #-1]!
 8005858:	9309      	str	r3, [sp, #36]	; 0x24
 800585a:	f7ff bb56 	b.w	8004f0a <_vfprintf_r+0x302>
 800585e:	aa2a      	add	r2, sp, #168	; 0xa8
 8005860:	9907      	ldr	r1, [sp, #28]
 8005862:	9803      	ldr	r0, [sp, #12]
 8005864:	f003 fa3c 	bl	8008ce0 <__sprint_r>
 8005868:	2800      	cmp	r0, #0
 800586a:	f47f af45 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 800586e:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005870:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005874:	e406      	b.n	8005084 <_vfprintf_r+0x47c>
 8005876:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005878:	2b00      	cmp	r3, #0
 800587a:	f340 8273 	ble.w	8005d64 <_vfprintf_r+0x115c>
 800587e:	e9dd 2310 	ldrd	r2, r3, [sp, #64]	; 0x40
 8005882:	4293      	cmp	r3, r2
 8005884:	bfa8      	it	ge
 8005886:	4613      	movge	r3, r2
 8005888:	2b00      	cmp	r3, #0
 800588a:	461d      	mov	r5, r3
 800588c:	dd0d      	ble.n	80058aa <_vfprintf_r+0xca2>
 800588e:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 8005890:	f8cb 7000 	str.w	r7, [fp]
 8005894:	3301      	adds	r3, #1
 8005896:	442c      	add	r4, r5
 8005898:	2b07      	cmp	r3, #7
 800589a:	942c      	str	r4, [sp, #176]	; 0xb0
 800589c:	f8cb 5004 	str.w	r5, [fp, #4]
 80058a0:	932b      	str	r3, [sp, #172]	; 0xac
 80058a2:	f300 82c1 	bgt.w	8005e28 <_vfprintf_r+0x1220>
 80058a6:	f10b 0b08 	add.w	fp, fp, #8
 80058aa:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80058ac:	2d00      	cmp	r5, #0
 80058ae:	bfa8      	it	ge
 80058b0:	1b5b      	subge	r3, r3, r5
 80058b2:	2b00      	cmp	r3, #0
 80058b4:	461d      	mov	r5, r3
 80058b6:	f340 8099 	ble.w	80059ec <_vfprintf_r+0xde4>
 80058ba:	2d10      	cmp	r5, #16
 80058bc:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 80058be:	4b2c      	ldr	r3, [pc, #176]	; (8005970 <_vfprintf_r+0xd68>)
 80058c0:	f340 83db 	ble.w	800607a <_vfprintf_r+0x1472>
 80058c4:	4618      	mov	r0, r3
 80058c6:	4621      	mov	r1, r4
 80058c8:	465b      	mov	r3, fp
 80058ca:	2610      	movs	r6, #16
 80058cc:	46bb      	mov	fp, r7
 80058ce:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80058d2:	9c07      	ldr	r4, [sp, #28]
 80058d4:	4607      	mov	r7, r0
 80058d6:	e004      	b.n	80058e2 <_vfprintf_r+0xcda>
 80058d8:	3308      	adds	r3, #8
 80058da:	3d10      	subs	r5, #16
 80058dc:	2d10      	cmp	r5, #16
 80058de:	f340 83c7 	ble.w	8006070 <_vfprintf_r+0x1468>
 80058e2:	3201      	adds	r2, #1
 80058e4:	3110      	adds	r1, #16
 80058e6:	2a07      	cmp	r2, #7
 80058e8:	e9cd 212b 	strd	r2, r1, [sp, #172]	; 0xac
 80058ec:	e9c3 7600 	strd	r7, r6, [r3]
 80058f0:	ddf2      	ble.n	80058d8 <_vfprintf_r+0xcd0>
 80058f2:	aa2a      	add	r2, sp, #168	; 0xa8
 80058f4:	4621      	mov	r1, r4
 80058f6:	4648      	mov	r0, r9
 80058f8:	f003 f9f2 	bl	8008ce0 <__sprint_r>
 80058fc:	2800      	cmp	r0, #0
 80058fe:	f040 84a5 	bne.w	800624c <_vfprintf_r+0x1644>
 8005902:	e9dd 212b 	ldrd	r2, r1, [sp, #172]	; 0xac
 8005906:	ab2d      	add	r3, sp, #180	; 0xb4
 8005908:	e7e7      	b.n	80058da <_vfprintf_r+0xcd2>
 800590a:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 800590e:	af56      	add	r7, sp, #344	; 0x158
 8005910:	f7ff bafb 	b.w	8004f0a <_vfprintf_r+0x302>
 8005914:	f1b9 0f00 	cmp.w	r9, #0
 8005918:	f77f af4c 	ble.w	80057b4 <_vfprintf_r+0xbac>
 800591c:	f1b9 0f10 	cmp.w	r9, #16
 8005920:	4b13      	ldr	r3, [pc, #76]	; (8005970 <_vfprintf_r+0xd68>)
 8005922:	f340 8659 	ble.w	80065d8 <_vfprintf_r+0x19d0>
 8005926:	4619      	mov	r1, r3
 8005928:	4622      	mov	r2, r4
 800592a:	4633      	mov	r3, r6
 800592c:	2710      	movs	r7, #16
 800592e:	f8dd b00c 	ldr.w	fp, [sp, #12]
 8005932:	9c07      	ldr	r4, [sp, #28]
 8005934:	9d0e      	ldr	r5, [sp, #56]	; 0x38
 8005936:	460e      	mov	r6, r1
 8005938:	e007      	b.n	800594a <_vfprintf_r+0xd42>
 800593a:	3308      	adds	r3, #8
 800593c:	f1a9 0910 	sub.w	r9, r9, #16
 8005940:	f1b9 0f10 	cmp.w	r9, #16
 8005944:	f340 8353 	ble.w	8005fee <_vfprintf_r+0x13e6>
 8005948:	3501      	adds	r5, #1
 800594a:	3210      	adds	r2, #16
 800594c:	2d07      	cmp	r5, #7
 800594e:	e9cd 522b 	strd	r5, r2, [sp, #172]	; 0xac
 8005952:	e9c3 6700 	strd	r6, r7, [r3]
 8005956:	ddf0      	ble.n	800593a <_vfprintf_r+0xd32>
 8005958:	aa2a      	add	r2, sp, #168	; 0xa8
 800595a:	4621      	mov	r1, r4
 800595c:	4658      	mov	r0, fp
 800595e:	f003 f9bf 	bl	8008ce0 <__sprint_r>
 8005962:	2800      	cmp	r0, #0
 8005964:	f040 8472 	bne.w	800624c <_vfprintf_r+0x1644>
 8005968:	e9dd 522b 	ldrd	r5, r2, [sp, #172]	; 0xac
 800596c:	ab2d      	add	r3, sp, #180	; 0xb4
 800596e:	e7e5      	b.n	800593c <_vfprintf_r+0xd34>
 8005970:	0800998c 	.word	0x0800998c
 8005974:	f018 0f01 	tst.w	r8, #1
 8005978:	f47f aee0 	bne.w	800573c <_vfprintf_r+0xb34>
 800597c:	2201      	movs	r2, #1
 800597e:	2d07      	cmp	r5, #7
 8005980:	f8cb 7000 	str.w	r7, [fp]
 8005984:	e9cd 542b 	strd	r5, r4, [sp, #172]	; 0xac
 8005988:	f8cb 2004 	str.w	r2, [fp, #4]
 800598c:	dc04      	bgt.n	8005998 <_vfprintf_r+0xd90>
 800598e:	3302      	adds	r3, #2
 8005990:	9309      	str	r3, [sp, #36]	; 0x24
 8005992:	f10b 0b10 	add.w	fp, fp, #16
 8005996:	e70d      	b.n	80057b4 <_vfprintf_r+0xbac>
 8005998:	aa2a      	add	r2, sp, #168	; 0xa8
 800599a:	9907      	ldr	r1, [sp, #28]
 800599c:	9803      	ldr	r0, [sp, #12]
 800599e:	f003 f99f 	bl	8008ce0 <__sprint_r>
 80059a2:	2800      	cmp	r0, #0
 80059a4:	f47f aea8 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 80059a8:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 80059ac:	3301      	adds	r3, #1
 80059ae:	9309      	str	r3, [sp, #36]	; 0x24
 80059b0:	f10d 0bbc 	add.w	fp, sp, #188	; 0xbc
 80059b4:	ae2d      	add	r6, sp, #180	; 0xb4
 80059b6:	e6fd      	b.n	80057b4 <_vfprintf_r+0xbac>
 80059b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80059ba:	9907      	ldr	r1, [sp, #28]
 80059bc:	9803      	ldr	r0, [sp, #12]
 80059be:	f003 f98f 	bl	8008ce0 <__sprint_r>
 80059c2:	2800      	cmp	r0, #0
 80059c4:	f47f ae98 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 80059c8:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 80059cc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80059ce:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80059d2:	f7ff baf6 	b.w	8004fc2 <_vfprintf_r+0x3ba>
 80059d6:	aa2a      	add	r2, sp, #168	; 0xa8
 80059d8:	9907      	ldr	r1, [sp, #28]
 80059da:	9803      	ldr	r0, [sp, #12]
 80059dc:	f003 f980 	bl	8008ce0 <__sprint_r>
 80059e0:	2800      	cmp	r0, #0
 80059e2:	f47f ae89 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 80059e6:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 80059e8:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80059ec:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80059ee:	f418 6f80 	tst.w	r8, #1024	; 0x400
 80059f2:	443b      	add	r3, r7
 80059f4:	4699      	mov	r9, r3
 80059f6:	f040 8357 	bne.w	80060a8 <_vfprintf_r+0x14a0>
 80059fa:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80059fc:	9a10      	ldr	r2, [sp, #64]	; 0x40
 80059fe:	4293      	cmp	r3, r2
 8005a00:	db49      	blt.n	8005a96 <_vfprintf_r+0xe8e>
 8005a02:	f018 0f01 	tst.w	r8, #1
 8005a06:	d146      	bne.n	8005a96 <_vfprintf_r+0xe8e>
 8005a08:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005a0a:	18bd      	adds	r5, r7, r2
 8005a0c:	eba5 0509 	sub.w	r5, r5, r9
 8005a10:	1ad3      	subs	r3, r2, r3
 8005a12:	429d      	cmp	r5, r3
 8005a14:	bfa8      	it	ge
 8005a16:	461d      	movge	r5, r3
 8005a18:	2d00      	cmp	r5, #0
 8005a1a:	dd0d      	ble.n	8005a38 <_vfprintf_r+0xe30>
 8005a1c:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005a1e:	f8cb 9000 	str.w	r9, [fp]
 8005a22:	3201      	adds	r2, #1
 8005a24:	442c      	add	r4, r5
 8005a26:	2a07      	cmp	r2, #7
 8005a28:	942c      	str	r4, [sp, #176]	; 0xb0
 8005a2a:	f8cb 5004 	str.w	r5, [fp, #4]
 8005a2e:	922b      	str	r2, [sp, #172]	; 0xac
 8005a30:	f300 8462 	bgt.w	80062f8 <_vfprintf_r+0x16f0>
 8005a34:	f10b 0b08 	add.w	fp, fp, #8
 8005a38:	2d00      	cmp	r5, #0
 8005a3a:	bfac      	ite	ge
 8005a3c:	1b5d      	subge	r5, r3, r5
 8005a3e:	461d      	movlt	r5, r3
 8005a40:	2d00      	cmp	r5, #0
 8005a42:	f77f ab32 	ble.w	80050aa <_vfprintf_r+0x4a2>
 8005a46:	2d10      	cmp	r5, #16
 8005a48:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005a4a:	4bc5      	ldr	r3, [pc, #788]	; (8005d60 <_vfprintf_r+0x1158>)
 8005a4c:	f340 80c4 	ble.w	8005bd8 <_vfprintf_r+0xfd0>
 8005a50:	4619      	mov	r1, r3
 8005a52:	2610      	movs	r6, #16
 8005a54:	4623      	mov	r3, r4
 8005a56:	9f03      	ldr	r7, [sp, #12]
 8005a58:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8005a5c:	460c      	mov	r4, r1
 8005a5e:	e005      	b.n	8005a6c <_vfprintf_r+0xe64>
 8005a60:	f10b 0b08 	add.w	fp, fp, #8
 8005a64:	3d10      	subs	r5, #16
 8005a66:	2d10      	cmp	r5, #16
 8005a68:	f340 80b3 	ble.w	8005bd2 <_vfprintf_r+0xfca>
 8005a6c:	3201      	adds	r2, #1
 8005a6e:	3310      	adds	r3, #16
 8005a70:	2a07      	cmp	r2, #7
 8005a72:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 8005a76:	e9cb 4600 	strd	r4, r6, [fp]
 8005a7a:	ddf1      	ble.n	8005a60 <_vfprintf_r+0xe58>
 8005a7c:	aa2a      	add	r2, sp, #168	; 0xa8
 8005a7e:	4649      	mov	r1, r9
 8005a80:	4638      	mov	r0, r7
 8005a82:	f003 f92d 	bl	8008ce0 <__sprint_r>
 8005a86:	2800      	cmp	r0, #0
 8005a88:	f47f ae38 	bne.w	80056fc <_vfprintf_r+0xaf4>
 8005a8c:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 8005a90:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005a94:	e7e6      	b.n	8005a64 <_vfprintf_r+0xe5c>
 8005a96:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005a98:	9916      	ldr	r1, [sp, #88]	; 0x58
 8005a9a:	f8cb 1000 	str.w	r1, [fp]
 8005a9e:	9915      	ldr	r1, [sp, #84]	; 0x54
 8005aa0:	f8cb 1004 	str.w	r1, [fp, #4]
 8005aa4:	3201      	adds	r2, #1
 8005aa6:	440c      	add	r4, r1
 8005aa8:	2a07      	cmp	r2, #7
 8005aaa:	942c      	str	r4, [sp, #176]	; 0xb0
 8005aac:	922b      	str	r2, [sp, #172]	; 0xac
 8005aae:	f300 828c 	bgt.w	8005fca <_vfprintf_r+0x13c2>
 8005ab2:	f10b 0b08 	add.w	fp, fp, #8
 8005ab6:	e7a7      	b.n	8005a08 <_vfprintf_r+0xe00>
 8005ab8:	f8d9 0058 	ldr.w	r0, [r9, #88]	; 0x58
 8005abc:	f002 fa94 	bl	8007fe8 <__retarget_lock_release_recursive>
 8005ac0:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8005ac4:	e628      	b.n	8005718 <_vfprintf_r+0xb10>
 8005ac6:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ac8:	9907      	ldr	r1, [sp, #28]
 8005aca:	9803      	ldr	r0, [sp, #12]
 8005acc:	f003 f908 	bl	8008ce0 <__sprint_r>
 8005ad0:	2800      	cmp	r0, #0
 8005ad2:	f47f ae11 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8005ad6:	e9dd 542b 	ldrd	r5, r4, [sp, #172]	; 0xac
 8005ada:	ae2d      	add	r6, sp, #180	; 0xb4
 8005adc:	e638      	b.n	8005750 <_vfprintf_r+0xb48>
 8005ade:	aa2a      	add	r2, sp, #168	; 0xa8
 8005ae0:	9907      	ldr	r1, [sp, #28]
 8005ae2:	9803      	ldr	r0, [sp, #12]
 8005ae4:	f003 f8fc 	bl	8008ce0 <__sprint_r>
 8005ae8:	2800      	cmp	r0, #0
 8005aea:	f47f ae05 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8005aee:	e9dd 342b 	ldrd	r3, r4, [sp, #172]	; 0xac
 8005af2:	ae2d      	add	r6, sp, #180	; 0xb4
 8005af4:	930b      	str	r3, [sp, #44]	; 0x2c
 8005af6:	e638      	b.n	800576a <_vfprintf_r+0xb62>
 8005af8:	6814      	ldr	r4, [r2, #0]
 8005afa:	9308      	str	r3, [sp, #32]
 8005afc:	2500      	movs	r5, #0
 8005afe:	f7ff bb95 	b.w	800522c <_vfprintf_r+0x624>
 8005b02:	6814      	ldr	r4, [r2, #0]
 8005b04:	9308      	str	r3, [sp, #32]
 8005b06:	2500      	movs	r5, #0
 8005b08:	f7ff b9ae 	b.w	8004e68 <_vfprintf_r+0x260>
 8005b0c:	680c      	ldr	r4, [r1, #0]
 8005b0e:	9208      	str	r2, [sp, #32]
 8005b10:	17e5      	asrs	r5, r4, #31
 8005b12:	4620      	mov	r0, r4
 8005b14:	4629      	mov	r1, r5
 8005b16:	f7ff b9d2 	b.w	8004ebe <_vfprintf_r+0x2b6>
 8005b1a:	6814      	ldr	r4, [r2, #0]
 8005b1c:	9108      	str	r1, [sp, #32]
 8005b1e:	2201      	movs	r2, #1
 8005b20:	2500      	movs	r5, #0
 8005b22:	f7ff bb32 	b.w	800518a <_vfprintf_r+0x582>
 8005b26:	2a01      	cmp	r2, #1
 8005b28:	f47f ab3c 	bne.w	80051a4 <_vfprintf_r+0x59c>
 8005b2c:	e68f      	b.n	800584e <_vfprintf_r+0xc46>
 8005b2e:	f408 6380 	and.w	r3, r8, #1024	; 0x400
 8005b32:	2200      	movs	r2, #0
 8005b34:	e9cd a609 	strd	sl, r6, [sp, #36]	; 0x24
 8005b38:	f8cd 802c 	str.w	r8, [sp, #44]	; 0x2c
 8005b3c:	af56      	add	r7, sp, #344	; 0x158
 8005b3e:	4692      	mov	sl, r2
 8005b40:	f8dd 8068 	ldr.w	r8, [sp, #104]	; 0x68
 8005b44:	461e      	mov	r6, r3
 8005b46:	e00a      	b.n	8005b5e <_vfprintf_r+0xf56>
 8005b48:	2300      	movs	r3, #0
 8005b4a:	4620      	mov	r0, r4
 8005b4c:	4629      	mov	r1, r5
 8005b4e:	220a      	movs	r2, #10
 8005b50:	f7fa fb56 	bl	8000200 <__aeabi_uldivmod>
 8005b54:	4604      	mov	r4, r0
 8005b56:	460d      	mov	r5, r1
 8005b58:	ea54 0305 	orrs.w	r3, r4, r5
 8005b5c:	d029      	beq.n	8005bb2 <_vfprintf_r+0xfaa>
 8005b5e:	220a      	movs	r2, #10
 8005b60:	2300      	movs	r3, #0
 8005b62:	4620      	mov	r0, r4
 8005b64:	4629      	mov	r1, r5
 8005b66:	f7fa fb4b 	bl	8000200 <__aeabi_uldivmod>
 8005b6a:	3230      	adds	r2, #48	; 0x30
 8005b6c:	f807 2c01 	strb.w	r2, [r7, #-1]
 8005b70:	f10a 0a01 	add.w	sl, sl, #1
 8005b74:	3f01      	subs	r7, #1
 8005b76:	2e00      	cmp	r6, #0
 8005b78:	d0e6      	beq.n	8005b48 <_vfprintf_r+0xf40>
 8005b7a:	f898 3000 	ldrb.w	r3, [r8]
 8005b7e:	459a      	cmp	sl, r3
 8005b80:	d1e2      	bne.n	8005b48 <_vfprintf_r+0xf40>
 8005b82:	f1ba 0fff 	cmp.w	sl, #255	; 0xff
 8005b86:	d0df      	beq.n	8005b48 <_vfprintf_r+0xf40>
 8005b88:	2d00      	cmp	r5, #0
 8005b8a:	bf08      	it	eq
 8005b8c:	2c0a      	cmpeq	r4, #10
 8005b8e:	d3db      	bcc.n	8005b48 <_vfprintf_r+0xf40>
 8005b90:	9b1b      	ldr	r3, [sp, #108]	; 0x6c
 8005b92:	9918      	ldr	r1, [sp, #96]	; 0x60
 8005b94:	1aff      	subs	r7, r7, r3
 8005b96:	461a      	mov	r2, r3
 8005b98:	4638      	mov	r0, r7
 8005b9a:	f003 f833 	bl	8008c04 <strncpy>
 8005b9e:	f898 3001 	ldrb.w	r3, [r8, #1]
 8005ba2:	2b00      	cmp	r3, #0
 8005ba4:	f000 8496 	beq.w	80064d4 <_vfprintf_r+0x18cc>
 8005ba8:	f108 0801 	add.w	r8, r8, #1
 8005bac:	f04f 0a00 	mov.w	sl, #0
 8005bb0:	e7ca      	b.n	8005b48 <_vfprintf_r+0xf40>
 8005bb2:	9b04      	ldr	r3, [sp, #16]
 8005bb4:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 8005bb8:	1bdb      	subs	r3, r3, r7
 8005bba:	f8cd a040 	str.w	sl, [sp, #64]	; 0x40
 8005bbe:	9e0a      	ldr	r6, [sp, #40]	; 0x28
 8005bc0:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8005bc4:	f8dd 802c 	ldr.w	r8, [sp, #44]	; 0x2c
 8005bc8:	9309      	str	r3, [sp, #36]	; 0x24
 8005bca:	f7ff b99e 	b.w	8004f0a <_vfprintf_r+0x302>
 8005bce:	46c1      	mov	r9, r8
 8005bd0:	e594      	b.n	80056fc <_vfprintf_r+0xaf4>
 8005bd2:	4621      	mov	r1, r4
 8005bd4:	461c      	mov	r4, r3
 8005bd6:	460b      	mov	r3, r1
 8005bd8:	3201      	adds	r2, #1
 8005bda:	442c      	add	r4, r5
 8005bdc:	2a07      	cmp	r2, #7
 8005bde:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005be2:	e9cb 3500 	strd	r3, r5, [fp]
 8005be6:	f77f aa5e 	ble.w	80050a6 <_vfprintf_r+0x49e>
 8005bea:	e5ee      	b.n	80057ca <_vfprintf_r+0xbc2>
 8005bec:	f018 0f10 	tst.w	r8, #16
 8005bf0:	f040 80f8 	bne.w	8005de4 <_vfprintf_r+0x11dc>
 8005bf4:	f018 0f40 	tst.w	r8, #64	; 0x40
 8005bf8:	f000 8351 	beq.w	800629e <_vfprintf_r+0x1696>
 8005bfc:	9a05      	ldr	r2, [sp, #20]
 8005bfe:	801a      	strh	r2, [r3, #0]
 8005c00:	4657      	mov	r7, sl
 8005c02:	f7ff baa7 	b.w	8005154 <_vfprintf_r+0x54c>
 8005c06:	aa2a      	add	r2, sp, #168	; 0xa8
 8005c08:	9907      	ldr	r1, [sp, #28]
 8005c0a:	9803      	ldr	r0, [sp, #12]
 8005c0c:	f003 f868 	bl	8008ce0 <__sprint_r>
 8005c10:	2800      	cmp	r0, #0
 8005c12:	f47f ad71 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8005c16:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005c18:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005c1c:	f7ff b9f5 	b.w	800500a <_vfprintf_r+0x402>
 8005c20:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8005c24:	4602      	mov	r2, r0
 8005c26:	460b      	mov	r3, r1
 8005c28:	f7fb faa0 	bl	800116c <__aeabi_dcmpun>
 8005c2c:	2800      	cmp	r0, #0
 8005c2e:	f040 8491 	bne.w	8006554 <_vfprintf_r+0x194c>
 8005c32:	2e61      	cmp	r6, #97	; 0x61
 8005c34:	f000 8111 	beq.w	8005e5a <_vfprintf_r+0x1252>
 8005c38:	2e41      	cmp	r6, #65	; 0x41
 8005c3a:	f000 8377 	beq.w	800632c <_vfprintf_r+0x1724>
 8005c3e:	f448 7380 	orr.w	r3, r8, #256	; 0x100
 8005c42:	f026 0220 	bic.w	r2, r6, #32
 8005c46:	f1b9 3fff 	cmp.w	r9, #4294967295	; 0xffffffff
 8005c4a:	930e      	str	r3, [sp, #56]	; 0x38
 8005c4c:	9204      	str	r2, [sp, #16]
 8005c4e:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8005c50:	f000 842d 	beq.w	80064ae <_vfprintf_r+0x18a6>
 8005c54:	2a47      	cmp	r2, #71	; 0x47
 8005c56:	f000 8424 	beq.w	80064a2 <_vfprintf_r+0x189a>
 8005c5a:	2b00      	cmp	r3, #0
 8005c5c:	f2c0 82f9 	blt.w	8006252 <_vfprintf_r+0x164a>
 8005c60:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8005c64:	e9cd 000a 	strd	r0, r0, [sp, #40]	; 0x28
 8005c68:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8005c6c:	2e66      	cmp	r6, #102	; 0x66
 8005c6e:	f000 83eb 	beq.w	8006448 <_vfprintf_r+0x1840>
 8005c72:	2e46      	cmp	r6, #70	; 0x46
 8005c74:	f000 847e 	beq.w	8006574 <_vfprintf_r+0x196c>
 8005c78:	9b04      	ldr	r3, [sp, #16]
 8005c7a:	9803      	ldr	r0, [sp, #12]
 8005c7c:	2b45      	cmp	r3, #69	; 0x45
 8005c7e:	bf0c      	ite	eq
 8005c80:	f109 0501 	addeq.w	r5, r9, #1
 8005c84:	464d      	movne	r5, r9
 8005c86:	aa28      	add	r2, sp, #160	; 0xa0
 8005c88:	ab25      	add	r3, sp, #148	; 0x94
 8005c8a:	e9cd 3200 	strd	r3, r2, [sp]
 8005c8e:	2102      	movs	r1, #2
 8005c90:	ab24      	add	r3, sp, #144	; 0x90
 8005c92:	462a      	mov	r2, r5
 8005c94:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005c98:	f000 fe3e 	bl	8006918 <_dtoa_r>
 8005c9c:	2e67      	cmp	r6, #103	; 0x67
 8005c9e:	4607      	mov	r7, r0
 8005ca0:	f040 849c 	bne.w	80065dc <_vfprintf_r+0x19d4>
 8005ca4:	f018 0f01 	tst.w	r8, #1
 8005ca8:	f040 83f9 	bne.w	800649e <_vfprintf_r+0x1896>
 8005cac:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8005cae:	4640      	mov	r0, r8
 8005cb0:	1bdb      	subs	r3, r3, r7
 8005cb2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8005cb6:	9310      	str	r3, [sp, #64]	; 0x40
 8005cb8:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005cba:	9311      	str	r3, [sp, #68]	; 0x44
 8005cbc:	9b04      	ldr	r3, [sp, #16]
 8005cbe:	2b47      	cmp	r3, #71	; 0x47
 8005cc0:	f000 81e7 	beq.w	8006092 <_vfprintf_r+0x148a>
 8005cc4:	9b04      	ldr	r3, [sp, #16]
 8005cc6:	2b46      	cmp	r3, #70	; 0x46
 8005cc8:	f000 8300 	beq.w	80062cc <_vfprintf_r+0x16c4>
 8005ccc:	9904      	ldr	r1, [sp, #16]
 8005cce:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8005cd0:	b2f2      	uxtb	r2, r6
 8005cd2:	2941      	cmp	r1, #65	; 0x41
 8005cd4:	bf08      	it	eq
 8005cd6:	320f      	addeq	r2, #15
 8005cd8:	f103 33ff 	add.w	r3, r3, #4294967295	; 0xffffffff
 8005cdc:	bf06      	itte	eq
 8005cde:	b2d2      	uxtbeq	r2, r2
 8005ce0:	2101      	moveq	r1, #1
 8005ce2:	2100      	movne	r1, #0
 8005ce4:	2b00      	cmp	r3, #0
 8005ce6:	9324      	str	r3, [sp, #144]	; 0x90
 8005ce8:	bfb8      	it	lt
 8005cea:	9b11      	ldrlt	r3, [sp, #68]	; 0x44
 8005cec:	f88d 2098 	strb.w	r2, [sp, #152]	; 0x98
 8005cf0:	bfba      	itte	lt
 8005cf2:	f1c3 0301 	rsblt	r3, r3, #1
 8005cf6:	222d      	movlt	r2, #45	; 0x2d
 8005cf8:	222b      	movge	r2, #43	; 0x2b
 8005cfa:	2b09      	cmp	r3, #9
 8005cfc:	f88d 2099 	strb.w	r2, [sp, #153]	; 0x99
 8005d00:	f300 83f9 	bgt.w	80064f6 <_vfprintf_r+0x18ee>
 8005d04:	2900      	cmp	r1, #0
 8005d06:	f040 8487 	bne.w	8006618 <_vfprintf_r+0x1a10>
 8005d0a:	2230      	movs	r2, #48	; 0x30
 8005d0c:	f88d 209a 	strb.w	r2, [sp, #154]	; 0x9a
 8005d10:	f10d 029b 	add.w	r2, sp, #155	; 0x9b
 8005d14:	3330      	adds	r3, #48	; 0x30
 8005d16:	7013      	strb	r3, [r2, #0]
 8005d18:	1c53      	adds	r3, r2, #1
 8005d1a:	aa26      	add	r2, sp, #152	; 0x98
 8005d1c:	1a9b      	subs	r3, r3, r2
 8005d1e:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005d20:	9319      	str	r3, [sp, #100]	; 0x64
 8005d22:	2a01      	cmp	r2, #1
 8005d24:	4413      	add	r3, r2
 8005d26:	9309      	str	r3, [sp, #36]	; 0x24
 8005d28:	f340 8442 	ble.w	80065b0 <_vfprintf_r+0x19a8>
 8005d2c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005d2e:	9a15      	ldr	r2, [sp, #84]	; 0x54
 8005d30:	4413      	add	r3, r2
 8005d32:	9309      	str	r3, [sp, #36]	; 0x24
 8005d34:	2300      	movs	r3, #0
 8005d36:	930f      	str	r3, [sp, #60]	; 0x3c
 8005d38:	9314      	str	r3, [sp, #80]	; 0x50
 8005d3a:	9311      	str	r3, [sp, #68]	; 0x44
 8005d3c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8005d3e:	f420 6080 	bic.w	r0, r0, #1024	; 0x400
 8005d42:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8005d46:	f440 7880 	orr.w	r8, r0, #256	; 0x100
 8005d4a:	9304      	str	r3, [sp, #16]
 8005d4c:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8005d4e:	2b00      	cmp	r3, #0
 8005d50:	f040 8275 	bne.w	800623e <_vfprintf_r+0x1636>
 8005d54:	4699      	mov	r9, r3
 8005d56:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005d5a:	f7ff b8e2 	b.w	8004f22 <_vfprintf_r+0x31a>
 8005d5e:	bf00      	nop
 8005d60:	0800998c 	.word	0x0800998c
 8005d64:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005d66:	49bd      	ldr	r1, [pc, #756]	; (800605c <_vfprintf_r+0x1454>)
 8005d68:	f8cb 1000 	str.w	r1, [fp]
 8005d6c:	3201      	adds	r2, #1
 8005d6e:	3401      	adds	r4, #1
 8005d70:	2101      	movs	r1, #1
 8005d72:	2a07      	cmp	r2, #7
 8005d74:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005d78:	f8cb 1004 	str.w	r1, [fp, #4]
 8005d7c:	dc60      	bgt.n	8005e40 <_vfprintf_r+0x1238>
 8005d7e:	f10b 0b08 	add.w	fp, fp, #8
 8005d82:	b92b      	cbnz	r3, 8005d90 <_vfprintf_r+0x1188>
 8005d84:	9a10      	ldr	r2, [sp, #64]	; 0x40
 8005d86:	b91a      	cbnz	r2, 8005d90 <_vfprintf_r+0x1188>
 8005d88:	f018 0f01 	tst.w	r8, #1
 8005d8c:	f43f a98d 	beq.w	80050aa <_vfprintf_r+0x4a2>
 8005d90:	9a2b      	ldr	r2, [sp, #172]	; 0xac
 8005d92:	9916      	ldr	r1, [sp, #88]	; 0x58
 8005d94:	f8cb 1000 	str.w	r1, [fp]
 8005d98:	9915      	ldr	r1, [sp, #84]	; 0x54
 8005d9a:	f8cb 1004 	str.w	r1, [fp, #4]
 8005d9e:	3201      	adds	r2, #1
 8005da0:	440c      	add	r4, r1
 8005da2:	2a07      	cmp	r2, #7
 8005da4:	942c      	str	r4, [sp, #176]	; 0xb0
 8005da6:	922b      	str	r2, [sp, #172]	; 0xac
 8005da8:	f300 8282 	bgt.w	80062b0 <_vfprintf_r+0x16a8>
 8005dac:	f10b 0b08 	add.w	fp, fp, #8
 8005db0:	2b00      	cmp	r3, #0
 8005db2:	f2c0 82e7 	blt.w	8006384 <_vfprintf_r+0x177c>
 8005db6:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8005db8:	3201      	adds	r2, #1
 8005dba:	441c      	add	r4, r3
 8005dbc:	2a07      	cmp	r2, #7
 8005dbe:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8005dc2:	e9cb 7300 	strd	r7, r3, [fp]
 8005dc6:	f77f a96e 	ble.w	80050a6 <_vfprintf_r+0x49e>
 8005dca:	e4fe      	b.n	80057ca <_vfprintf_r+0xbc2>
 8005dcc:	aa2a      	add	r2, sp, #168	; 0xa8
 8005dce:	9907      	ldr	r1, [sp, #28]
 8005dd0:	9803      	ldr	r0, [sp, #12]
 8005dd2:	f002 ff85 	bl	8008ce0 <__sprint_r>
 8005dd6:	2800      	cmp	r0, #0
 8005dd8:	f47f ac8e 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8005ddc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005de0:	f7ff bbf0 	b.w	80055c4 <_vfprintf_r+0x9bc>
 8005de4:	9a05      	ldr	r2, [sp, #20]
 8005de6:	601a      	str	r2, [r3, #0]
 8005de8:	4657      	mov	r7, sl
 8005dea:	f7ff b9b3 	b.w	8005154 <_vfprintf_r+0x54c>
 8005dee:	8814      	ldrh	r4, [r2, #0]
 8005df0:	9108      	str	r1, [sp, #32]
 8005df2:	2500      	movs	r5, #0
 8005df4:	2201      	movs	r2, #1
 8005df6:	f7ff b9c8 	b.w	800518a <_vfprintf_r+0x582>
 8005dfa:	8814      	ldrh	r4, [r2, #0]
 8005dfc:	9308      	str	r3, [sp, #32]
 8005dfe:	2500      	movs	r5, #0
 8005e00:	f7ff ba14 	b.w	800522c <_vfprintf_r+0x624>
 8005e04:	f9b1 4000 	ldrsh.w	r4, [r1]
 8005e08:	9208      	str	r2, [sp, #32]
 8005e0a:	17e5      	asrs	r5, r4, #31
 8005e0c:	4620      	mov	r0, r4
 8005e0e:	4629      	mov	r1, r5
 8005e10:	f7ff b855 	b.w	8004ebe <_vfprintf_r+0x2b6>
 8005e14:	8814      	ldrh	r4, [r2, #0]
 8005e16:	9308      	str	r3, [sp, #32]
 8005e18:	2500      	movs	r5, #0
 8005e1a:	f7ff b825 	b.w	8004e68 <_vfprintf_r+0x260>
 8005e1e:	222d      	movs	r2, #45	; 0x2d
 8005e20:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8005e24:	f7ff baa2 	b.w	800536c <_vfprintf_r+0x764>
 8005e28:	aa2a      	add	r2, sp, #168	; 0xa8
 8005e2a:	9907      	ldr	r1, [sp, #28]
 8005e2c:	9803      	ldr	r0, [sp, #12]
 8005e2e:	f002 ff57 	bl	8008ce0 <__sprint_r>
 8005e32:	2800      	cmp	r0, #0
 8005e34:	f47f ac60 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8005e38:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005e3a:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005e3e:	e534      	b.n	80058aa <_vfprintf_r+0xca2>
 8005e40:	aa2a      	add	r2, sp, #168	; 0xa8
 8005e42:	9907      	ldr	r1, [sp, #28]
 8005e44:	9803      	ldr	r0, [sp, #12]
 8005e46:	f002 ff4b 	bl	8008ce0 <__sprint_r>
 8005e4a:	2800      	cmp	r0, #0
 8005e4c:	f47f ac54 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8005e50:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005e52:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005e54:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005e58:	e793      	b.n	8005d82 <_vfprintf_r+0x117a>
 8005e5a:	2330      	movs	r3, #48	; 0x30
 8005e5c:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8005e60:	2378      	movs	r3, #120	; 0x78
 8005e62:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
 8005e66:	f88d 308d 	strb.w	r3, [sp, #141]	; 0x8d
 8005e6a:	f048 0402 	orr.w	r4, r8, #2
 8005e6e:	f300 82b0 	bgt.w	80063d2 <_vfprintf_r+0x17ca>
 8005e72:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 8005e76:	930e      	str	r3, [sp, #56]	; 0x38
 8005e78:	f026 0320 	bic.w	r3, r6, #32
 8005e7c:	9304      	str	r3, [sp, #16]
 8005e7e:	2200      	movs	r2, #0
 8005e80:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8005e82:	920a      	str	r2, [sp, #40]	; 0x28
 8005e84:	46a0      	mov	r8, r4
 8005e86:	af3d      	add	r7, sp, #244	; 0xf4
 8005e88:	2b00      	cmp	r3, #0
 8005e8a:	f2c0 81e3 	blt.w	8006254 <_vfprintf_r+0x164c>
 8005e8e:	ed9d 7b12 	vldr	d7, [sp, #72]	; 0x48
 8005e92:	ed8d 7b1e 	vstr	d7, [sp, #120]	; 0x78
 8005e96:	2300      	movs	r3, #0
 8005e98:	930b      	str	r3, [sp, #44]	; 0x2c
 8005e9a:	2e61      	cmp	r6, #97	; 0x61
 8005e9c:	f000 8255 	beq.w	800634a <_vfprintf_r+0x1742>
 8005ea0:	2e41      	cmp	r6, #65	; 0x41
 8005ea2:	f47f aee3 	bne.w	8005c6c <_vfprintf_r+0x1064>
 8005ea6:	a824      	add	r0, sp, #144	; 0x90
 8005ea8:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8005eac:	f002 fe32 	bl	8008b14 <frexp>
 8005eb0:	2200      	movs	r2, #0
 8005eb2:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 8005eb6:	ec51 0b10 	vmov	r0, r1, d0
 8005eba:	f7fa febd 	bl	8000c38 <__aeabi_dmul>
 8005ebe:	2200      	movs	r2, #0
 8005ec0:	2300      	movs	r3, #0
 8005ec2:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8005ec6:	f7fb f91f 	bl	8001108 <__aeabi_dcmpeq>
 8005eca:	2800      	cmp	r0, #0
 8005ecc:	f040 8305 	bne.w	80064da <_vfprintf_r+0x18d2>
 8005ed0:	4b63      	ldr	r3, [pc, #396]	; (8006060 <_vfprintf_r+0x1458>)
 8005ed2:	9309      	str	r3, [sp, #36]	; 0x24
 8005ed4:	e9cd a60f 	strd	sl, r6, [sp, #60]	; 0x3c
 8005ed8:	f109 34ff 	add.w	r4, r9, #4294967295	; 0xffffffff
 8005edc:	f8cd 9050 	str.w	r9, [sp, #80]	; 0x50
 8005ee0:	9721      	str	r7, [sp, #132]	; 0x84
 8005ee2:	46b9      	mov	r9, r7
 8005ee4:	f8cd b044 	str.w	fp, [sp, #68]	; 0x44
 8005ee8:	f8cd 8080 	str.w	r8, [sp, #128]	; 0x80
 8005eec:	f8dd a024 	ldr.w	sl, [sp, #36]	; 0x24
 8005ef0:	e9dd 670c 	ldrd	r6, r7, [sp, #48]	; 0x30
 8005ef4:	e003      	b.n	8005efe <_vfprintf_r+0x12f6>
 8005ef6:	f7fb f907 	bl	8001108 <__aeabi_dcmpeq>
 8005efa:	bb20      	cbnz	r0, 8005f46 <_vfprintf_r+0x133e>
 8005efc:	46a9      	mov	r9, r5
 8005efe:	2200      	movs	r2, #0
 8005f00:	4b58      	ldr	r3, [pc, #352]	; (8006064 <_vfprintf_r+0x145c>)
 8005f02:	4630      	mov	r0, r6
 8005f04:	4639      	mov	r1, r7
 8005f06:	f7fa fe97 	bl	8000c38 <__aeabi_dmul>
 8005f0a:	460f      	mov	r7, r1
 8005f0c:	4606      	mov	r6, r0
 8005f0e:	f7fb f943 	bl	8001198 <__aeabi_d2iz>
 8005f12:	4680      	mov	r8, r0
 8005f14:	f7fa fe26 	bl	8000b64 <__aeabi_i2d>
 8005f18:	4602      	mov	r2, r0
 8005f1a:	460b      	mov	r3, r1
 8005f1c:	4630      	mov	r0, r6
 8005f1e:	4639      	mov	r1, r7
 8005f20:	f7fa fcd2 	bl	80008c8 <__aeabi_dsub>
 8005f24:	464d      	mov	r5, r9
 8005f26:	f81a c008 	ldrb.w	ip, [sl, r8]
 8005f2a:	f805 cb01 	strb.w	ip, [r5], #1
 8005f2e:	f1b4 3fff 	cmp.w	r4, #4294967295	; 0xffffffff
 8005f32:	46a3      	mov	fp, r4
 8005f34:	4606      	mov	r6, r0
 8005f36:	460f      	mov	r7, r1
 8005f38:	f04f 0200 	mov.w	r2, #0
 8005f3c:	f04f 0300 	mov.w	r3, #0
 8005f40:	f104 34ff 	add.w	r4, r4, #4294967295	; 0xffffffff
 8005f44:	d1d7      	bne.n	8005ef6 <_vfprintf_r+0x12ee>
 8005f46:	4630      	mov	r0, r6
 8005f48:	4639      	mov	r1, r7
 8005f4a:	2200      	movs	r2, #0
 8005f4c:	4b46      	ldr	r3, [pc, #280]	; (8006068 <_vfprintf_r+0x1460>)
 8005f4e:	f8dd a03c 	ldr.w	sl, [sp, #60]	; 0x3c
 8005f52:	9e10      	ldr	r6, [sp, #64]	; 0x40
 8005f54:	f8cd b03c 	str.w	fp, [sp, #60]	; 0x3c
 8005f58:	4644      	mov	r4, r8
 8005f5a:	f8cd 9040 	str.w	r9, [sp, #64]	; 0x40
 8005f5e:	f8dd 8080 	ldr.w	r8, [sp, #128]	; 0x80
 8005f62:	f8dd 9050 	ldr.w	r9, [sp, #80]	; 0x50
 8005f66:	f8dd b044 	ldr.w	fp, [sp, #68]	; 0x44
 8005f6a:	9f21      	ldr	r7, [sp, #132]	; 0x84
 8005f6c:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 8005f70:	f7fb f8f2 	bl	8001158 <__aeabi_dcmpgt>
 8005f74:	2800      	cmp	r0, #0
 8005f76:	f040 8176 	bne.w	8006266 <_vfprintf_r+0x165e>
 8005f7a:	e9dd 010c 	ldrd	r0, r1, [sp, #48]	; 0x30
 8005f7e:	2200      	movs	r2, #0
 8005f80:	4b39      	ldr	r3, [pc, #228]	; (8006068 <_vfprintf_r+0x1460>)
 8005f82:	f7fb f8c1 	bl	8001108 <__aeabi_dcmpeq>
 8005f86:	b110      	cbz	r0, 8005f8e <_vfprintf_r+0x1386>
 8005f88:	07e2      	lsls	r2, r4, #31
 8005f8a:	f100 816c 	bmi.w	8006266 <_vfprintf_r+0x165e>
 8005f8e:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005f90:	2b00      	cmp	r3, #0
 8005f92:	db07      	blt.n	8005fa4 <_vfprintf_r+0x139c>
 8005f94:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8005f96:	3301      	adds	r3, #1
 8005f98:	442b      	add	r3, r5
 8005f9a:	2230      	movs	r2, #48	; 0x30
 8005f9c:	f805 2b01 	strb.w	r2, [r5], #1
 8005fa0:	42ab      	cmp	r3, r5
 8005fa2:	d1fb      	bne.n	8005f9c <_vfprintf_r+0x1394>
 8005fa4:	1beb      	subs	r3, r5, r7
 8005fa6:	4640      	mov	r0, r8
 8005fa8:	9310      	str	r3, [sp, #64]	; 0x40
 8005faa:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 8005fae:	e683      	b.n	8005cb8 <_vfprintf_r+0x10b0>
 8005fb0:	f8cd 9010 	str.w	r9, [sp, #16]
 8005fb4:	f8cd 9024 	str.w	r9, [sp, #36]	; 0x24
 8005fb8:	9408      	str	r4, [sp, #32]
 8005fba:	4681      	mov	r9, r0
 8005fbc:	900f      	str	r0, [sp, #60]	; 0x3c
 8005fbe:	9014      	str	r0, [sp, #80]	; 0x50
 8005fc0:	9011      	str	r0, [sp, #68]	; 0x44
 8005fc2:	f89d 208b 	ldrb.w	r2, [sp, #139]	; 0x8b
 8005fc6:	f7fe bfac 	b.w	8004f22 <_vfprintf_r+0x31a>
 8005fca:	aa2a      	add	r2, sp, #168	; 0xa8
 8005fcc:	9907      	ldr	r1, [sp, #28]
 8005fce:	9803      	ldr	r0, [sp, #12]
 8005fd0:	f002 fe86 	bl	8008ce0 <__sprint_r>
 8005fd4:	2800      	cmp	r0, #0
 8005fd6:	f47f ab8f 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8005fda:	9b24      	ldr	r3, [sp, #144]	; 0x90
 8005fdc:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8005fde:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8005fe2:	e511      	b.n	8005a08 <_vfprintf_r+0xe00>
 8005fe4:	4252      	negs	r2, r2
 8005fe6:	9206      	str	r2, [sp, #24]
 8005fe8:	9308      	str	r3, [sp, #32]
 8005fea:	f7ff b96d 	b.w	80052c8 <_vfprintf_r+0x6c0>
 8005fee:	4614      	mov	r4, r2
 8005ff0:	4632      	mov	r2, r6
 8005ff2:	461e      	mov	r6, r3
 8005ff4:	4613      	mov	r3, r2
 8005ff6:	462a      	mov	r2, r5
 8005ff8:	3201      	adds	r2, #1
 8005ffa:	9209      	str	r2, [sp, #36]	; 0x24
 8005ffc:	f106 0208 	add.w	r2, r6, #8
 8006000:	e9c6 3900 	strd	r3, r9, [r6]
 8006004:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006006:	932b      	str	r3, [sp, #172]	; 0xac
 8006008:	444c      	add	r4, r9
 800600a:	2b07      	cmp	r3, #7
 800600c:	942c      	str	r4, [sp, #176]	; 0xb0
 800600e:	f73f acc3 	bgt.w	8005998 <_vfprintf_r+0xd90>
 8006012:	3301      	adds	r3, #1
 8006014:	9309      	str	r3, [sp, #36]	; 0x24
 8006016:	f102 0b08 	add.w	fp, r2, #8
 800601a:	4616      	mov	r6, r2
 800601c:	f7ff bbca 	b.w	80057b4 <_vfprintf_r+0xbac>
 8006020:	aa2a      	add	r2, sp, #168	; 0xa8
 8006022:	9907      	ldr	r1, [sp, #28]
 8006024:	9803      	ldr	r0, [sp, #12]
 8006026:	f002 fe5b 	bl	8008ce0 <__sprint_r>
 800602a:	2800      	cmp	r0, #0
 800602c:	f47f ab64 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8006030:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 8006032:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006036:	f7ff bade 	b.w	80055f6 <_vfprintf_r+0x9ee>
 800603a:	464b      	mov	r3, r9
 800603c:	2b06      	cmp	r3, #6
 800603e:	bf28      	it	cs
 8006040:	2306      	movcs	r3, #6
 8006042:	46b9      	mov	r9, r7
 8006044:	970f      	str	r7, [sp, #60]	; 0x3c
 8006046:	9714      	str	r7, [sp, #80]	; 0x50
 8006048:	9711      	str	r7, [sp, #68]	; 0x44
 800604a:	970a      	str	r7, [sp, #40]	; 0x28
 800604c:	463a      	mov	r2, r7
 800604e:	9304      	str	r3, [sp, #16]
 8006050:	e9cd 4308 	strd	r4, r3, [sp, #32]
 8006054:	4f05      	ldr	r7, [pc, #20]	; (800606c <_vfprintf_r+0x1464>)
 8006056:	f7fe bf64 	b.w	8004f22 <_vfprintf_r+0x31a>
 800605a:	bf00      	nop
 800605c:	08009978 	.word	0x08009978
 8006060:	0800995c 	.word	0x0800995c
 8006064:	40300000 	.word	0x40300000
 8006068:	3fe00000 	.word	0x3fe00000
 800606c:	08009970 	.word	0x08009970
 8006070:	460c      	mov	r4, r1
 8006072:	4639      	mov	r1, r7
 8006074:	465f      	mov	r7, fp
 8006076:	469b      	mov	fp, r3
 8006078:	460b      	mov	r3, r1
 800607a:	3201      	adds	r2, #1
 800607c:	442c      	add	r4, r5
 800607e:	2a07      	cmp	r2, #7
 8006080:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 8006084:	e9cb 3500 	strd	r3, r5, [fp]
 8006088:	f73f aca5 	bgt.w	80059d6 <_vfprintf_r+0xdce>
 800608c:	f10b 0b08 	add.w	fp, fp, #8
 8006090:	e4ac      	b.n	80059ec <_vfprintf_r+0xde4>
 8006092:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006094:	1cda      	adds	r2, r3, #3
 8006096:	db02      	blt.n	800609e <_vfprintf_r+0x1496>
 8006098:	4599      	cmp	r9, r3
 800609a:	f280 80b5 	bge.w	8006208 <_vfprintf_r+0x1600>
 800609e:	3e02      	subs	r6, #2
 80060a0:	f026 0320 	bic.w	r3, r6, #32
 80060a4:	9304      	str	r3, [sp, #16]
 80060a6:	e611      	b.n	8005ccc <_vfprintf_r+0x10c4>
 80060a8:	9b10      	ldr	r3, [sp, #64]	; 0x40
 80060aa:	f8cd 8038 	str.w	r8, [sp, #56]	; 0x38
 80060ae:	465a      	mov	r2, fp
 80060b0:	e9dd 8b1a 	ldrd	r8, fp, [sp, #104]	; 0x68
 80060b4:	18fb      	adds	r3, r7, r3
 80060b6:	f8cd a02c 	str.w	sl, [sp, #44]	; 0x2c
 80060ba:	970c      	str	r7, [sp, #48]	; 0x30
 80060bc:	4eaf      	ldr	r6, [pc, #700]	; (800637c <_vfprintf_r+0x1774>)
 80060be:	f8dd a01c 	ldr.w	sl, [sp, #28]
 80060c2:	9309      	str	r3, [sp, #36]	; 0x24
 80060c4:	464f      	mov	r7, r9
 80060c6:	f8dd 900c 	ldr.w	r9, [sp, #12]
 80060ca:	4621      	mov	r1, r4
 80060cc:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80060ce:	2b00      	cmp	r3, #0
 80060d0:	d05b      	beq.n	800618a <_vfprintf_r+0x1582>
 80060d2:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 80060d4:	2b00      	cmp	r3, #0
 80060d6:	d154      	bne.n	8006182 <_vfprintf_r+0x157a>
 80060d8:	9b14      	ldr	r3, [sp, #80]	; 0x50
 80060da:	3b01      	subs	r3, #1
 80060dc:	f108 38ff 	add.w	r8, r8, #4294967295	; 0xffffffff
 80060e0:	9314      	str	r3, [sp, #80]	; 0x50
 80060e2:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 80060e4:	9818      	ldr	r0, [sp, #96]	; 0x60
 80060e6:	6010      	str	r0, [r2, #0]
 80060e8:	3301      	adds	r3, #1
 80060ea:	4459      	add	r1, fp
 80060ec:	2b07      	cmp	r3, #7
 80060ee:	912c      	str	r1, [sp, #176]	; 0xb0
 80060f0:	f8c2 b004 	str.w	fp, [r2, #4]
 80060f4:	932b      	str	r3, [sp, #172]	; 0xac
 80060f6:	dc68      	bgt.n	80061ca <_vfprintf_r+0x15c2>
 80060f8:	3208      	adds	r2, #8
 80060fa:	9809      	ldr	r0, [sp, #36]	; 0x24
 80060fc:	f898 3000 	ldrb.w	r3, [r8]
 8006100:	1bc5      	subs	r5, r0, r7
 8006102:	429d      	cmp	r5, r3
 8006104:	bfa8      	it	ge
 8006106:	461d      	movge	r5, r3
 8006108:	2d00      	cmp	r5, #0
 800610a:	dd0b      	ble.n	8006124 <_vfprintf_r+0x151c>
 800610c:	9b2b      	ldr	r3, [sp, #172]	; 0xac
 800610e:	6017      	str	r7, [r2, #0]
 8006110:	3301      	adds	r3, #1
 8006112:	4429      	add	r1, r5
 8006114:	2b07      	cmp	r3, #7
 8006116:	912c      	str	r1, [sp, #176]	; 0xb0
 8006118:	6055      	str	r5, [r2, #4]
 800611a:	932b      	str	r3, [sp, #172]	; 0xac
 800611c:	dc5e      	bgt.n	80061dc <_vfprintf_r+0x15d4>
 800611e:	f898 3000 	ldrb.w	r3, [r8]
 8006122:	3208      	adds	r2, #8
 8006124:	2d00      	cmp	r5, #0
 8006126:	bfac      	ite	ge
 8006128:	1b5d      	subge	r5, r3, r5
 800612a:	461d      	movlt	r5, r3
 800612c:	2d00      	cmp	r5, #0
 800612e:	dd26      	ble.n	800617e <_vfprintf_r+0x1576>
 8006130:	2d10      	cmp	r5, #16
 8006132:	982b      	ldr	r0, [sp, #172]	; 0xac
 8006134:	dd3c      	ble.n	80061b0 <_vfprintf_r+0x15a8>
 8006136:	2410      	movs	r4, #16
 8006138:	e003      	b.n	8006142 <_vfprintf_r+0x153a>
 800613a:	3208      	adds	r2, #8
 800613c:	3d10      	subs	r5, #16
 800613e:	2d10      	cmp	r5, #16
 8006140:	dd36      	ble.n	80061b0 <_vfprintf_r+0x15a8>
 8006142:	3001      	adds	r0, #1
 8006144:	3110      	adds	r1, #16
 8006146:	2807      	cmp	r0, #7
 8006148:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 800614c:	e9c2 6400 	strd	r6, r4, [r2]
 8006150:	ddf3      	ble.n	800613a <_vfprintf_r+0x1532>
 8006152:	aa2a      	add	r2, sp, #168	; 0xa8
 8006154:	4651      	mov	r1, sl
 8006156:	4648      	mov	r0, r9
 8006158:	f002 fdc2 	bl	8008ce0 <__sprint_r>
 800615c:	2800      	cmp	r0, #0
 800615e:	d150      	bne.n	8006202 <_vfprintf_r+0x15fa>
 8006160:	e9dd 012b 	ldrd	r0, r1, [sp, #172]	; 0xac
 8006164:	aa2d      	add	r2, sp, #180	; 0xb4
 8006166:	e7e9      	b.n	800613c <_vfprintf_r+0x1534>
 8006168:	aa2a      	add	r2, sp, #168	; 0xa8
 800616a:	4651      	mov	r1, sl
 800616c:	4648      	mov	r0, r9
 800616e:	f002 fdb7 	bl	8008ce0 <__sprint_r>
 8006172:	2800      	cmp	r0, #0
 8006174:	d145      	bne.n	8006202 <_vfprintf_r+0x15fa>
 8006176:	f898 3000 	ldrb.w	r3, [r8]
 800617a:	992c      	ldr	r1, [sp, #176]	; 0xb0
 800617c:	aa2d      	add	r2, sp, #180	; 0xb4
 800617e:	441f      	add	r7, r3
 8006180:	e7a4      	b.n	80060cc <_vfprintf_r+0x14c4>
 8006182:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 8006184:	3b01      	subs	r3, #1
 8006186:	930f      	str	r3, [sp, #60]	; 0x3c
 8006188:	e7ab      	b.n	80060e2 <_vfprintf_r+0x14da>
 800618a:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
 800618c:	2b00      	cmp	r3, #0
 800618e:	d1f8      	bne.n	8006182 <_vfprintf_r+0x157a>
 8006190:	46b9      	mov	r9, r7
 8006192:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006194:	9f0c      	ldr	r7, [sp, #48]	; 0x30
 8006196:	f8cd 8068 	str.w	r8, [sp, #104]	; 0x68
 800619a:	18fb      	adds	r3, r7, r3
 800619c:	4599      	cmp	r9, r3
 800619e:	f8dd a02c 	ldr.w	sl, [sp, #44]	; 0x2c
 80061a2:	f8dd 8038 	ldr.w	r8, [sp, #56]	; 0x38
 80061a6:	4693      	mov	fp, r2
 80061a8:	460c      	mov	r4, r1
 80061aa:	bf28      	it	cs
 80061ac:	4699      	movcs	r9, r3
 80061ae:	e424      	b.n	80059fa <_vfprintf_r+0xdf2>
 80061b0:	3001      	adds	r0, #1
 80061b2:	4429      	add	r1, r5
 80061b4:	2807      	cmp	r0, #7
 80061b6:	e9cd 012b 	strd	r0, r1, [sp, #172]	; 0xac
 80061ba:	e9c2 6500 	strd	r6, r5, [r2]
 80061be:	dcd3      	bgt.n	8006168 <_vfprintf_r+0x1560>
 80061c0:	f898 3000 	ldrb.w	r3, [r8]
 80061c4:	3208      	adds	r2, #8
 80061c6:	441f      	add	r7, r3
 80061c8:	e780      	b.n	80060cc <_vfprintf_r+0x14c4>
 80061ca:	aa2a      	add	r2, sp, #168	; 0xa8
 80061cc:	4651      	mov	r1, sl
 80061ce:	4648      	mov	r0, r9
 80061d0:	f002 fd86 	bl	8008ce0 <__sprint_r>
 80061d4:	b9a8      	cbnz	r0, 8006202 <_vfprintf_r+0x15fa>
 80061d6:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80061d8:	aa2d      	add	r2, sp, #180	; 0xb4
 80061da:	e78e      	b.n	80060fa <_vfprintf_r+0x14f2>
 80061dc:	aa2a      	add	r2, sp, #168	; 0xa8
 80061de:	4651      	mov	r1, sl
 80061e0:	4648      	mov	r0, r9
 80061e2:	f002 fd7d 	bl	8008ce0 <__sprint_r>
 80061e6:	b960      	cbnz	r0, 8006202 <_vfprintf_r+0x15fa>
 80061e8:	f898 3000 	ldrb.w	r3, [r8]
 80061ec:	992c      	ldr	r1, [sp, #176]	; 0xb0
 80061ee:	aa2d      	add	r2, sp, #180	; 0xb4
 80061f0:	e798      	b.n	8006124 <_vfprintf_r+0x151c>
 80061f2:	4638      	mov	r0, r7
 80061f4:	f7fa faa4 	bl	8000740 <strlen>
 80061f8:	46a9      	mov	r9, r5
 80061fa:	4603      	mov	r3, r0
 80061fc:	9009      	str	r0, [sp, #36]	; 0x24
 80061fe:	f7ff b8f4 	b.w	80053ea <_vfprintf_r+0x7e2>
 8006202:	46d1      	mov	r9, sl
 8006204:	f7ff ba7a 	b.w	80056fc <_vfprintf_r+0xaf4>
 8006208:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800620a:	4619      	mov	r1, r3
 800620c:	9b11      	ldr	r3, [sp, #68]	; 0x44
 800620e:	4299      	cmp	r1, r3
 8006210:	f300 8082 	bgt.w	8006318 <_vfprintf_r+0x1710>
 8006214:	07c4      	lsls	r4, r0, #31
 8006216:	f140 816b 	bpl.w	80064f0 <_vfprintf_r+0x18e8>
 800621a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800621c:	4413      	add	r3, r2
 800621e:	9309      	str	r3, [sp, #36]	; 0x24
 8006220:	0541      	lsls	r1, r0, #21
 8006222:	d503      	bpl.n	800622c <_vfprintf_r+0x1624>
 8006224:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006226:	2b00      	cmp	r3, #0
 8006228:	f300 80e6 	bgt.w	80063f8 <_vfprintf_r+0x17f0>
 800622c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800622e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006232:	9304      	str	r3, [sp, #16]
 8006234:	2667      	movs	r6, #103	; 0x67
 8006236:	2300      	movs	r3, #0
 8006238:	930f      	str	r3, [sp, #60]	; 0x3c
 800623a:	9314      	str	r3, [sp, #80]	; 0x50
 800623c:	e586      	b.n	8005d4c <_vfprintf_r+0x1144>
 800623e:	222d      	movs	r2, #45	; 0x2d
 8006240:	f88d 208b 	strb.w	r2, [sp, #139]	; 0x8b
 8006244:	f04f 0900 	mov.w	r9, #0
 8006248:	f7fe be6c 	b.w	8004f24 <_vfprintf_r+0x31c>
 800624c:	46a1      	mov	r9, r4
 800624e:	f7ff ba55 	b.w	80056fc <_vfprintf_r+0xaf4>
 8006252:	900a      	str	r0, [sp, #40]	; 0x28
 8006254:	e9dd 1212 	ldrd	r1, r2, [sp, #72]	; 0x48
 8006258:	f102 4300 	add.w	r3, r2, #2147483648	; 0x80000000
 800625c:	931f      	str	r3, [sp, #124]	; 0x7c
 800625e:	232d      	movs	r3, #45	; 0x2d
 8006260:	911e      	str	r1, [sp, #120]	; 0x78
 8006262:	930b      	str	r3, [sp, #44]	; 0x2c
 8006264:	e619      	b.n	8005e9a <_vfprintf_r+0x1292>
 8006266:	9b10      	ldr	r3, [sp, #64]	; 0x40
 8006268:	9328      	str	r3, [sp, #160]	; 0xa0
 800626a:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800626c:	f815 2c01 	ldrb.w	r2, [r5, #-1]
 8006270:	7bd9      	ldrb	r1, [r3, #15]
 8006272:	4291      	cmp	r1, r2
 8006274:	462b      	mov	r3, r5
 8006276:	d109      	bne.n	800628c <_vfprintf_r+0x1684>
 8006278:	2030      	movs	r0, #48	; 0x30
 800627a:	f803 0c01 	strb.w	r0, [r3, #-1]
 800627e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006280:	1e5a      	subs	r2, r3, #1
 8006282:	9228      	str	r2, [sp, #160]	; 0xa0
 8006284:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8006288:	4291      	cmp	r1, r2
 800628a:	d0f6      	beq.n	800627a <_vfprintf_r+0x1672>
 800628c:	2a39      	cmp	r2, #57	; 0x39
 800628e:	bf0b      	itete	eq
 8006290:	9a09      	ldreq	r2, [sp, #36]	; 0x24
 8006292:	3201      	addne	r2, #1
 8006294:	7a92      	ldrbeq	r2, [r2, #10]
 8006296:	b2d2      	uxtbne	r2, r2
 8006298:	f803 2c01 	strb.w	r2, [r3, #-1]
 800629c:	e682      	b.n	8005fa4 <_vfprintf_r+0x139c>
 800629e:	f418 7f00 	tst.w	r8, #512	; 0x200
 80062a2:	f43f ad9f 	beq.w	8005de4 <_vfprintf_r+0x11dc>
 80062a6:	9a05      	ldr	r2, [sp, #20]
 80062a8:	701a      	strb	r2, [r3, #0]
 80062aa:	4657      	mov	r7, sl
 80062ac:	f7fe bf52 	b.w	8005154 <_vfprintf_r+0x54c>
 80062b0:	aa2a      	add	r2, sp, #168	; 0xa8
 80062b2:	9907      	ldr	r1, [sp, #28]
 80062b4:	9803      	ldr	r0, [sp, #12]
 80062b6:	f002 fd13 	bl	8008ce0 <__sprint_r>
 80062ba:	2800      	cmp	r0, #0
 80062bc:	f47f aa1c 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 80062c0:	9b24      	ldr	r3, [sp, #144]	; 0x90
 80062c2:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 80062c6:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80062ca:	e571      	b.n	8005db0 <_vfprintf_r+0x11a8>
 80062cc:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80062ce:	2b00      	cmp	r3, #0
 80062d0:	f340 8164 	ble.w	800659c <_vfprintf_r+0x1994>
 80062d4:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80062d6:	f1b9 0f00 	cmp.w	r9, #0
 80062da:	f040 8103 	bne.w	80064e4 <_vfprintf_r+0x18dc>
 80062de:	07c6      	lsls	r6, r0, #31
 80062e0:	f100 8100 	bmi.w	80064e4 <_vfprintf_r+0x18dc>
 80062e4:	9309      	str	r3, [sp, #36]	; 0x24
 80062e6:	2666      	movs	r6, #102	; 0x66
 80062e8:	0543      	lsls	r3, r0, #21
 80062ea:	f100 8086 	bmi.w	80063fa <_vfprintf_r+0x17f2>
 80062ee:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80062f0:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 80062f4:	9304      	str	r3, [sp, #16]
 80062f6:	e79e      	b.n	8006236 <_vfprintf_r+0x162e>
 80062f8:	aa2a      	add	r2, sp, #168	; 0xa8
 80062fa:	9907      	ldr	r1, [sp, #28]
 80062fc:	9803      	ldr	r0, [sp, #12]
 80062fe:	f002 fcef 	bl	8008ce0 <__sprint_r>
 8006302:	2800      	cmp	r0, #0
 8006304:	f47f a9f8 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8006308:	9b24      	ldr	r3, [sp, #144]	; 0x90
 800630a:	9a10      	ldr	r2, [sp, #64]	; 0x40
 800630c:	9c2c      	ldr	r4, [sp, #176]	; 0xb0
 800630e:	1ad3      	subs	r3, r2, r3
 8006310:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006314:	f7ff bb90 	b.w	8005a38 <_vfprintf_r+0xe30>
 8006318:	9b10      	ldr	r3, [sp, #64]	; 0x40
 800631a:	9a15      	ldr	r2, [sp, #84]	; 0x54
 800631c:	4413      	add	r3, r2
 800631e:	9309      	str	r3, [sp, #36]	; 0x24
 8006320:	9b11      	ldr	r3, [sp, #68]	; 0x44
 8006322:	2b00      	cmp	r3, #0
 8006324:	f340 8149 	ble.w	80065ba <_vfprintf_r+0x19b2>
 8006328:	2667      	movs	r6, #103	; 0x67
 800632a:	e7dd      	b.n	80062e8 <_vfprintf_r+0x16e0>
 800632c:	2330      	movs	r3, #48	; 0x30
 800632e:	f88d 308c 	strb.w	r3, [sp, #140]	; 0x8c
 8006332:	2358      	movs	r3, #88	; 0x58
 8006334:	e595      	b.n	8005e62 <_vfprintf_r+0x125a>
 8006336:	9803      	ldr	r0, [sp, #12]
 8006338:	aa2a      	add	r2, sp, #168	; 0xa8
 800633a:	4649      	mov	r1, r9
 800633c:	f002 fcd0 	bl	8008ce0 <__sprint_r>
 8006340:	2800      	cmp	r0, #0
 8006342:	f47f a9e0 	bne.w	8005706 <_vfprintf_r+0xafe>
 8006346:	f7fe bf0f 	b.w	8005168 <_vfprintf_r+0x560>
 800634a:	a824      	add	r0, sp, #144	; 0x90
 800634c:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006350:	f002 fbe0 	bl	8008b14 <frexp>
 8006354:	2200      	movs	r2, #0
 8006356:	f04f 537f 	mov.w	r3, #1069547520	; 0x3fc00000
 800635a:	ec51 0b10 	vmov	r0, r1, d0
 800635e:	f7fa fc6b 	bl	8000c38 <__aeabi_dmul>
 8006362:	2200      	movs	r2, #0
 8006364:	2300      	movs	r3, #0
 8006366:	e9cd 010c 	strd	r0, r1, [sp, #48]	; 0x30
 800636a:	f7fa fecd 	bl	8001108 <__aeabi_dcmpeq>
 800636e:	b108      	cbz	r0, 8006374 <_vfprintf_r+0x176c>
 8006370:	2301      	movs	r3, #1
 8006372:	9324      	str	r3, [sp, #144]	; 0x90
 8006374:	4b02      	ldr	r3, [pc, #8]	; (8006380 <_vfprintf_r+0x1778>)
 8006376:	9309      	str	r3, [sp, #36]	; 0x24
 8006378:	e5ac      	b.n	8005ed4 <_vfprintf_r+0x12cc>
 800637a:	bf00      	nop
 800637c:	0800998c 	.word	0x0800998c
 8006380:	08009948 	.word	0x08009948
 8006384:	425d      	negs	r5, r3
 8006386:	3310      	adds	r3, #16
 8006388:	4bb9      	ldr	r3, [pc, #740]	; (8006670 <_vfprintf_r+0x1a68>)
 800638a:	f280 8097 	bge.w	80064bc <_vfprintf_r+0x18b4>
 800638e:	4619      	mov	r1, r3
 8006390:	2610      	movs	r6, #16
 8006392:	4623      	mov	r3, r4
 8006394:	f8dd 900c 	ldr.w	r9, [sp, #12]
 8006398:	460c      	mov	r4, r1
 800639a:	e005      	b.n	80063a8 <_vfprintf_r+0x17a0>
 800639c:	f10b 0b08 	add.w	fp, fp, #8
 80063a0:	3d10      	subs	r5, #16
 80063a2:	2d10      	cmp	r5, #16
 80063a4:	f340 8087 	ble.w	80064b6 <_vfprintf_r+0x18ae>
 80063a8:	3201      	adds	r2, #1
 80063aa:	3310      	adds	r3, #16
 80063ac:	2a07      	cmp	r2, #7
 80063ae:	e9cd 232b 	strd	r2, r3, [sp, #172]	; 0xac
 80063b2:	e9cb 4600 	strd	r4, r6, [fp]
 80063b6:	ddf1      	ble.n	800639c <_vfprintf_r+0x1794>
 80063b8:	aa2a      	add	r2, sp, #168	; 0xa8
 80063ba:	9907      	ldr	r1, [sp, #28]
 80063bc:	4648      	mov	r0, r9
 80063be:	f002 fc8f 	bl	8008ce0 <__sprint_r>
 80063c2:	2800      	cmp	r0, #0
 80063c4:	f47f a998 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 80063c8:	e9dd 232b 	ldrd	r2, r3, [sp, #172]	; 0xac
 80063cc:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 80063d0:	e7e6      	b.n	80063a0 <_vfprintf_r+0x1798>
 80063d2:	f109 0101 	add.w	r1, r9, #1
 80063d6:	9803      	ldr	r0, [sp, #12]
 80063d8:	f7fe f8a0 	bl	800451c <_malloc_r>
 80063dc:	4607      	mov	r7, r0
 80063de:	2800      	cmp	r0, #0
 80063e0:	f000 813b 	beq.w	800665a <_vfprintf_r+0x1a52>
 80063e4:	f448 7381 	orr.w	r3, r8, #258	; 0x102
 80063e8:	930e      	str	r3, [sp, #56]	; 0x38
 80063ea:	f026 0320 	bic.w	r3, r6, #32
 80063ee:	9304      	str	r3, [sp, #16]
 80063f0:	46a0      	mov	r8, r4
 80063f2:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 80063f4:	900a      	str	r0, [sp, #40]	; 0x28
 80063f6:	e547      	b.n	8005e88 <_vfprintf_r+0x1280>
 80063f8:	2667      	movs	r6, #103	; 0x67
 80063fa:	981a      	ldr	r0, [sp, #104]	; 0x68
 80063fc:	2200      	movs	r2, #0
 80063fe:	920f      	str	r2, [sp, #60]	; 0x3c
 8006400:	9214      	str	r2, [sp, #80]	; 0x50
 8006402:	7803      	ldrb	r3, [r0, #0]
 8006404:	9a11      	ldr	r2, [sp, #68]	; 0x44
 8006406:	2bff      	cmp	r3, #255	; 0xff
 8006408:	d00c      	beq.n	8006424 <_vfprintf_r+0x181c>
 800640a:	4293      	cmp	r3, r2
 800640c:	da0a      	bge.n	8006424 <_vfprintf_r+0x181c>
 800640e:	7841      	ldrb	r1, [r0, #1]
 8006410:	1ad2      	subs	r2, r2, r3
 8006412:	b1a9      	cbz	r1, 8006440 <_vfprintf_r+0x1838>
 8006414:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8006416:	3301      	adds	r3, #1
 8006418:	9314      	str	r3, [sp, #80]	; 0x50
 800641a:	460b      	mov	r3, r1
 800641c:	2bff      	cmp	r3, #255	; 0xff
 800641e:	f100 0001 	add.w	r0, r0, #1
 8006422:	d1f2      	bne.n	800640a <_vfprintf_r+0x1802>
 8006424:	9211      	str	r2, [sp, #68]	; 0x44
 8006426:	9b14      	ldr	r3, [sp, #80]	; 0x50
 8006428:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 800642a:	9909      	ldr	r1, [sp, #36]	; 0x24
 800642c:	901a      	str	r0, [sp, #104]	; 0x68
 800642e:	4413      	add	r3, r2
 8006430:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
 8006432:	fb02 1303 	mla	r3, r2, r3, r1
 8006436:	9309      	str	r3, [sp, #36]	; 0x24
 8006438:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 800643c:	9304      	str	r3, [sp, #16]
 800643e:	e485      	b.n	8005d4c <_vfprintf_r+0x1144>
 8006440:	990f      	ldr	r1, [sp, #60]	; 0x3c
 8006442:	3101      	adds	r1, #1
 8006444:	910f      	str	r1, [sp, #60]	; 0x3c
 8006446:	e7de      	b.n	8006406 <_vfprintf_r+0x17fe>
 8006448:	aa28      	add	r2, sp, #160	; 0xa0
 800644a:	ab25      	add	r3, sp, #148	; 0x94
 800644c:	e9cd 3200 	strd	r3, r2, [sp]
 8006450:	2103      	movs	r1, #3
 8006452:	ab24      	add	r3, sp, #144	; 0x90
 8006454:	464a      	mov	r2, r9
 8006456:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 800645a:	9803      	ldr	r0, [sp, #12]
 800645c:	f000 fa5c 	bl	8006918 <_dtoa_r>
 8006460:	464d      	mov	r5, r9
 8006462:	4607      	mov	r7, r0
 8006464:	eb00 0409 	add.w	r4, r0, r9
 8006468:	783b      	ldrb	r3, [r7, #0]
 800646a:	2b30      	cmp	r3, #48	; 0x30
 800646c:	f000 80be 	beq.w	80065ec <_vfprintf_r+0x19e4>
 8006470:	9d24      	ldr	r5, [sp, #144]	; 0x90
 8006472:	442c      	add	r4, r5
 8006474:	2200      	movs	r2, #0
 8006476:	2300      	movs	r3, #0
 8006478:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 800647c:	f7fa fe44 	bl	8001108 <__aeabi_dcmpeq>
 8006480:	b108      	cbz	r0, 8006486 <_vfprintf_r+0x187e>
 8006482:	4623      	mov	r3, r4
 8006484:	e413      	b.n	8005cae <_vfprintf_r+0x10a6>
 8006486:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006488:	42a3      	cmp	r3, r4
 800648a:	f4bf ac10 	bcs.w	8005cae <_vfprintf_r+0x10a6>
 800648e:	2130      	movs	r1, #48	; 0x30
 8006490:	1c5a      	adds	r2, r3, #1
 8006492:	9228      	str	r2, [sp, #160]	; 0xa0
 8006494:	7019      	strb	r1, [r3, #0]
 8006496:	9b28      	ldr	r3, [sp, #160]	; 0xa0
 8006498:	429c      	cmp	r4, r3
 800649a:	d8f9      	bhi.n	8006490 <_vfprintf_r+0x1888>
 800649c:	e407      	b.n	8005cae <_vfprintf_r+0x10a6>
 800649e:	197c      	adds	r4, r7, r5
 80064a0:	e7e8      	b.n	8006474 <_vfprintf_r+0x186c>
 80064a2:	f1b9 0f00 	cmp.w	r9, #0
 80064a6:	f000 8092 	beq.w	80065ce <_vfprintf_r+0x19c6>
 80064aa:	900a      	str	r0, [sp, #40]	; 0x28
 80064ac:	e4ec      	b.n	8005e88 <_vfprintf_r+0x1280>
 80064ae:	900a      	str	r0, [sp, #40]	; 0x28
 80064b0:	f04f 0906 	mov.w	r9, #6
 80064b4:	e4e8      	b.n	8005e88 <_vfprintf_r+0x1280>
 80064b6:	4621      	mov	r1, r4
 80064b8:	461c      	mov	r4, r3
 80064ba:	460b      	mov	r3, r1
 80064bc:	3201      	adds	r2, #1
 80064be:	442c      	add	r4, r5
 80064c0:	2a07      	cmp	r2, #7
 80064c2:	e9cd 242b 	strd	r2, r4, [sp, #172]	; 0xac
 80064c6:	e9cb 3500 	strd	r3, r5, [fp]
 80064ca:	f300 80a9 	bgt.w	8006620 <_vfprintf_r+0x1a18>
 80064ce:	f10b 0b08 	add.w	fp, fp, #8
 80064d2:	e470      	b.n	8005db6 <_vfprintf_r+0x11ae>
 80064d4:	469a      	mov	sl, r3
 80064d6:	f7ff bb37 	b.w	8005b48 <_vfprintf_r+0xf40>
 80064da:	2301      	movs	r3, #1
 80064dc:	9324      	str	r3, [sp, #144]	; 0x90
 80064de:	4b65      	ldr	r3, [pc, #404]	; (8006674 <_vfprintf_r+0x1a6c>)
 80064e0:	9309      	str	r3, [sp, #36]	; 0x24
 80064e2:	e4f7      	b.n	8005ed4 <_vfprintf_r+0x12cc>
 80064e4:	9a15      	ldr	r2, [sp, #84]	; 0x54
 80064e6:	4413      	add	r3, r2
 80064e8:	444b      	add	r3, r9
 80064ea:	9309      	str	r3, [sp, #36]	; 0x24
 80064ec:	2666      	movs	r6, #102	; 0x66
 80064ee:	e6fb      	b.n	80062e8 <_vfprintf_r+0x16e0>
 80064f0:	9b11      	ldr	r3, [sp, #68]	; 0x44
 80064f2:	9309      	str	r3, [sp, #36]	; 0x24
 80064f4:	e694      	b.n	8006220 <_vfprintf_r+0x1618>
 80064f6:	f10d 0ca7 	add.w	ip, sp, #167	; 0xa7
 80064fa:	4664      	mov	r4, ip
 80064fc:	4d5e      	ldr	r5, [pc, #376]	; (8006678 <_vfprintf_r+0x1a70>)
 80064fe:	e000      	b.n	8006502 <_vfprintf_r+0x18fa>
 8006500:	4614      	mov	r4, r2
 8006502:	fba5 1203 	umull	r1, r2, r5, r3
 8006506:	08d2      	lsrs	r2, r2, #3
 8006508:	eb02 0182 	add.w	r1, r2, r2, lsl #2
 800650c:	eba3 0341 	sub.w	r3, r3, r1, lsl #1
 8006510:	f103 0130 	add.w	r1, r3, #48	; 0x30
 8006514:	4613      	mov	r3, r2
 8006516:	2b09      	cmp	r3, #9
 8006518:	f804 1c01 	strb.w	r1, [r4, #-1]
 800651c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 8006520:	dcee      	bgt.n	8006500 <_vfprintf_r+0x18f8>
 8006522:	3330      	adds	r3, #48	; 0x30
 8006524:	3c02      	subs	r4, #2
 8006526:	b2db      	uxtb	r3, r3
 8006528:	45a4      	cmp	ip, r4
 800652a:	f802 3c01 	strb.w	r3, [r2, #-1]
 800652e:	f240 8090 	bls.w	8006652 <_vfprintf_r+0x1a4a>
 8006532:	f10d 049a 	add.w	r4, sp, #154	; 0x9a
 8006536:	4611      	mov	r1, r2
 8006538:	e001      	b.n	800653e <_vfprintf_r+0x1936>
 800653a:	f811 3b01 	ldrb.w	r3, [r1], #1
 800653e:	f804 3b01 	strb.w	r3, [r4], #1
 8006542:	458c      	cmp	ip, r1
 8006544:	d1f9      	bne.n	800653a <_vfprintf_r+0x1932>
 8006546:	ab2a      	add	r3, sp, #168	; 0xa8
 8006548:	1a9b      	subs	r3, r3, r2
 800654a:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800654e:	4413      	add	r3, r2
 8006550:	f7ff bbe3 	b.w	8005d1a <_vfprintf_r+0x1112>
 8006554:	9b13      	ldr	r3, [sp, #76]	; 0x4c
 8006556:	4f49      	ldr	r7, [pc, #292]	; (800667c <_vfprintf_r+0x1a74>)
 8006558:	2b00      	cmp	r3, #0
 800655a:	bfb6      	itet	lt
 800655c:	222d      	movlt	r2, #45	; 0x2d
 800655e:	f89d 208b 	ldrbge.w	r2, [sp, #139]	; 0x8b
 8006562:	f88d 208b 	strblt.w	r2, [sp, #139]	; 0x8b
 8006566:	4b46      	ldr	r3, [pc, #280]	; (8006680 <_vfprintf_r+0x1a78>)
 8006568:	f7fe bf02 	b.w	8005370 <_vfprintf_r+0x768>
 800656c:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006570:	f7ff b8c9 	b.w	8005706 <_vfprintf_r+0xafe>
 8006574:	aa28      	add	r2, sp, #160	; 0xa0
 8006576:	ab25      	add	r3, sp, #148	; 0x94
 8006578:	e9cd 3200 	strd	r3, r2, [sp]
 800657c:	2103      	movs	r1, #3
 800657e:	ab24      	add	r3, sp, #144	; 0x90
 8006580:	464a      	mov	r2, r9
 8006582:	ed9d 0b1e 	vldr	d0, [sp, #120]	; 0x78
 8006586:	9803      	ldr	r0, [sp, #12]
 8006588:	f000 f9c6 	bl	8006918 <_dtoa_r>
 800658c:	464d      	mov	r5, r9
 800658e:	4607      	mov	r7, r0
 8006590:	2e46      	cmp	r6, #70	; 0x46
 8006592:	eb07 0405 	add.w	r4, r7, r5
 8006596:	f43f af67 	beq.w	8006468 <_vfprintf_r+0x1860>
 800659a:	e76b      	b.n	8006474 <_vfprintf_r+0x186c>
 800659c:	f1b9 0f00 	cmp.w	r9, #0
 80065a0:	d131      	bne.n	8006606 <_vfprintf_r+0x19fe>
 80065a2:	07c5      	lsls	r5, r0, #31
 80065a4:	d42f      	bmi.n	8006606 <_vfprintf_r+0x19fe>
 80065a6:	2301      	movs	r3, #1
 80065a8:	9304      	str	r3, [sp, #16]
 80065aa:	9309      	str	r3, [sp, #36]	; 0x24
 80065ac:	2666      	movs	r6, #102	; 0x66
 80065ae:	e642      	b.n	8006236 <_vfprintf_r+0x162e>
 80065b0:	07c3      	lsls	r3, r0, #31
 80065b2:	f57f abbf 	bpl.w	8005d34 <_vfprintf_r+0x112c>
 80065b6:	f7ff bbb9 	b.w	8005d2c <_vfprintf_r+0x1124>
 80065ba:	9a09      	ldr	r2, [sp, #36]	; 0x24
 80065bc:	f1c3 0301 	rsb	r3, r3, #1
 80065c0:	441a      	add	r2, r3
 80065c2:	ea22 73e2 	bic.w	r3, r2, r2, asr #31
 80065c6:	9209      	str	r2, [sp, #36]	; 0x24
 80065c8:	9304      	str	r3, [sp, #16]
 80065ca:	2667      	movs	r6, #103	; 0x67
 80065cc:	e633      	b.n	8006236 <_vfprintf_r+0x162e>
 80065ce:	f8cd 9028 	str.w	r9, [sp, #40]	; 0x28
 80065d2:	f04f 0901 	mov.w	r9, #1
 80065d6:	e457      	b.n	8005e88 <_vfprintf_r+0x1280>
 80065d8:	465a      	mov	r2, fp
 80065da:	e511      	b.n	8006000 <_vfprintf_r+0x13f8>
 80065dc:	2e47      	cmp	r6, #71	; 0x47
 80065de:	f47f af5e 	bne.w	800649e <_vfprintf_r+0x1896>
 80065e2:	f018 0f01 	tst.w	r8, #1
 80065e6:	f43f ab61 	beq.w	8005cac <_vfprintf_r+0x10a4>
 80065ea:	e7d1      	b.n	8006590 <_vfprintf_r+0x1988>
 80065ec:	2200      	movs	r2, #0
 80065ee:	2300      	movs	r3, #0
 80065f0:	e9dd 011e 	ldrd	r0, r1, [sp, #120]	; 0x78
 80065f4:	f7fa fd88 	bl	8001108 <__aeabi_dcmpeq>
 80065f8:	2800      	cmp	r0, #0
 80065fa:	f47f af39 	bne.w	8006470 <_vfprintf_r+0x1868>
 80065fe:	f1c5 0501 	rsb	r5, r5, #1
 8006602:	9524      	str	r5, [sp, #144]	; 0x90
 8006604:	e735      	b.n	8006472 <_vfprintf_r+0x186a>
 8006606:	9b15      	ldr	r3, [sp, #84]	; 0x54
 8006608:	3301      	adds	r3, #1
 800660a:	444b      	add	r3, r9
 800660c:	9309      	str	r3, [sp, #36]	; 0x24
 800660e:	ea23 73e3 	bic.w	r3, r3, r3, asr #31
 8006612:	9304      	str	r3, [sp, #16]
 8006614:	2666      	movs	r6, #102	; 0x66
 8006616:	e60e      	b.n	8006236 <_vfprintf_r+0x162e>
 8006618:	f10d 029a 	add.w	r2, sp, #154	; 0x9a
 800661c:	f7ff bb7a 	b.w	8005d14 <_vfprintf_r+0x110c>
 8006620:	aa2a      	add	r2, sp, #168	; 0xa8
 8006622:	9907      	ldr	r1, [sp, #28]
 8006624:	9803      	ldr	r0, [sp, #12]
 8006626:	f002 fb5b 	bl	8008ce0 <__sprint_r>
 800662a:	2800      	cmp	r0, #0
 800662c:	f47f a864 	bne.w	80056f8 <_vfprintf_r+0xaf0>
 8006630:	e9dd 242b 	ldrd	r2, r4, [sp, #172]	; 0xac
 8006634:	f10d 0bb4 	add.w	fp, sp, #180	; 0xb4
 8006638:	f7ff bbbd 	b.w	8005db6 <_vfprintf_r+0x11ae>
 800663c:	9908      	ldr	r1, [sp, #32]
 800663e:	f89a 6001 	ldrb.w	r6, [sl, #1]
 8006642:	680b      	ldr	r3, [r1, #0]
 8006644:	ea43 79e3 	orr.w	r9, r3, r3, asr #31
 8006648:	1d0b      	adds	r3, r1, #4
 800664a:	4692      	mov	sl, r2
 800664c:	9308      	str	r3, [sp, #32]
 800664e:	f7fe bb59 	b.w	8004d04 <_vfprintf_r+0xfc>
 8006652:	f10d 039a 	add.w	r3, sp, #154	; 0x9a
 8006656:	f7ff bb60 	b.w	8005d1a <_vfprintf_r+0x1112>
 800665a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 800665e:	f8b9 300c 	ldrh.w	r3, [r9, #12]
 8006662:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006666:	f8a9 300c 	strh.w	r3, [r9, #12]
 800666a:	f7ff b84c 	b.w	8005706 <_vfprintf_r+0xafe>
 800666e:	bf00      	nop
 8006670:	0800998c 	.word	0x0800998c
 8006674:	0800995c 	.word	0x0800995c
 8006678:	cccccccd 	.word	0xcccccccd
 800667c:	08009944 	.word	0x08009944
 8006680:	08009940 	.word	0x08009940

08006684 <__sbprintf>:
 8006684:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8006688:	460c      	mov	r4, r1
 800668a:	f5ad 6d8d 	sub.w	sp, sp, #1128	; 0x468
 800668e:	8989      	ldrh	r1, [r1, #12]
 8006690:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8006692:	89e5      	ldrh	r5, [r4, #14]
 8006694:	9619      	str	r6, [sp, #100]	; 0x64
 8006696:	f021 0102 	bic.w	r1, r1, #2
 800669a:	4606      	mov	r6, r0
 800669c:	69e0      	ldr	r0, [r4, #28]
 800669e:	f8ad 100c 	strh.w	r1, [sp, #12]
 80066a2:	4617      	mov	r7, r2
 80066a4:	f44f 6180 	mov.w	r1, #1024	; 0x400
 80066a8:	6a62      	ldr	r2, [r4, #36]	; 0x24
 80066aa:	f8ad 500e 	strh.w	r5, [sp, #14]
 80066ae:	4698      	mov	r8, r3
 80066b0:	ad1a      	add	r5, sp, #104	; 0x68
 80066b2:	2300      	movs	r3, #0
 80066b4:	9007      	str	r0, [sp, #28]
 80066b6:	a816      	add	r0, sp, #88	; 0x58
 80066b8:	9209      	str	r2, [sp, #36]	; 0x24
 80066ba:	9306      	str	r3, [sp, #24]
 80066bc:	9500      	str	r5, [sp, #0]
 80066be:	9504      	str	r5, [sp, #16]
 80066c0:	9102      	str	r1, [sp, #8]
 80066c2:	9105      	str	r1, [sp, #20]
 80066c4:	f001 fc8a 	bl	8007fdc <__retarget_lock_init_recursive>
 80066c8:	4643      	mov	r3, r8
 80066ca:	463a      	mov	r2, r7
 80066cc:	4669      	mov	r1, sp
 80066ce:	4630      	mov	r0, r6
 80066d0:	f7fe fa9a 	bl	8004c08 <_vfprintf_r>
 80066d4:	1e05      	subs	r5, r0, #0
 80066d6:	db07      	blt.n	80066e8 <__sbprintf+0x64>
 80066d8:	4630      	mov	r0, r6
 80066da:	4669      	mov	r1, sp
 80066dc:	f001 f8d6 	bl	800788c <_fflush_r>
 80066e0:	2800      	cmp	r0, #0
 80066e2:	bf18      	it	ne
 80066e4:	f04f 35ff 	movne.w	r5, #4294967295	; 0xffffffff
 80066e8:	f8bd 300c 	ldrh.w	r3, [sp, #12]
 80066ec:	065b      	lsls	r3, r3, #25
 80066ee:	d503      	bpl.n	80066f8 <__sbprintf+0x74>
 80066f0:	89a3      	ldrh	r3, [r4, #12]
 80066f2:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 80066f6:	81a3      	strh	r3, [r4, #12]
 80066f8:	9816      	ldr	r0, [sp, #88]	; 0x58
 80066fa:	f001 fc71 	bl	8007fe0 <__retarget_lock_close_recursive>
 80066fe:	4628      	mov	r0, r5
 8006700:	f50d 6d8d 	add.w	sp, sp, #1128	; 0x468
 8006704:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

08006708 <__swsetup_r>:
 8006708:	b538      	push	{r3, r4, r5, lr}
 800670a:	4b31      	ldr	r3, [pc, #196]	; (80067d0 <__swsetup_r+0xc8>)
 800670c:	681b      	ldr	r3, [r3, #0]
 800670e:	4605      	mov	r5, r0
 8006710:	460c      	mov	r4, r1
 8006712:	b113      	cbz	r3, 800671a <__swsetup_r+0x12>
 8006714:	6b9a      	ldr	r2, [r3, #56]	; 0x38
 8006716:	2a00      	cmp	r2, #0
 8006718:	d03a      	beq.n	8006790 <__swsetup_r+0x88>
 800671a:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800671e:	b293      	uxth	r3, r2
 8006720:	0718      	lsls	r0, r3, #28
 8006722:	d50c      	bpl.n	800673e <__swsetup_r+0x36>
 8006724:	6920      	ldr	r0, [r4, #16]
 8006726:	b1a8      	cbz	r0, 8006754 <__swsetup_r+0x4c>
 8006728:	f013 0201 	ands.w	r2, r3, #1
 800672c:	d020      	beq.n	8006770 <__swsetup_r+0x68>
 800672e:	6963      	ldr	r3, [r4, #20]
 8006730:	2200      	movs	r2, #0
 8006732:	425b      	negs	r3, r3
 8006734:	61a3      	str	r3, [r4, #24]
 8006736:	60a2      	str	r2, [r4, #8]
 8006738:	b300      	cbz	r0, 800677c <__swsetup_r+0x74>
 800673a:	2000      	movs	r0, #0
 800673c:	bd38      	pop	{r3, r4, r5, pc}
 800673e:	06d9      	lsls	r1, r3, #27
 8006740:	d53e      	bpl.n	80067c0 <__swsetup_r+0xb8>
 8006742:	0758      	lsls	r0, r3, #29
 8006744:	d428      	bmi.n	8006798 <__swsetup_r+0x90>
 8006746:	6920      	ldr	r0, [r4, #16]
 8006748:	f042 0308 	orr.w	r3, r2, #8
 800674c:	81a3      	strh	r3, [r4, #12]
 800674e:	b29b      	uxth	r3, r3
 8006750:	2800      	cmp	r0, #0
 8006752:	d1e9      	bne.n	8006728 <__swsetup_r+0x20>
 8006754:	f403 7220 	and.w	r2, r3, #640	; 0x280
 8006758:	f5b2 7f00 	cmp.w	r2, #512	; 0x200
 800675c:	d0e4      	beq.n	8006728 <__swsetup_r+0x20>
 800675e:	4628      	mov	r0, r5
 8006760:	4621      	mov	r1, r4
 8006762:	f001 fc71 	bl	8008048 <__smakebuf_r>
 8006766:	89a3      	ldrh	r3, [r4, #12]
 8006768:	6920      	ldr	r0, [r4, #16]
 800676a:	f013 0201 	ands.w	r2, r3, #1
 800676e:	d1de      	bne.n	800672e <__swsetup_r+0x26>
 8006770:	0799      	lsls	r1, r3, #30
 8006772:	bf58      	it	pl
 8006774:	6962      	ldrpl	r2, [r4, #20]
 8006776:	60a2      	str	r2, [r4, #8]
 8006778:	2800      	cmp	r0, #0
 800677a:	d1de      	bne.n	800673a <__swsetup_r+0x32>
 800677c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8006780:	061a      	lsls	r2, r3, #24
 8006782:	d5db      	bpl.n	800673c <__swsetup_r+0x34>
 8006784:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8006788:	81a3      	strh	r3, [r4, #12]
 800678a:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 800678e:	bd38      	pop	{r3, r4, r5, pc}
 8006790:	4618      	mov	r0, r3
 8006792:	f001 f8d7 	bl	8007944 <__sinit>
 8006796:	e7c0      	b.n	800671a <__swsetup_r+0x12>
 8006798:	6b21      	ldr	r1, [r4, #48]	; 0x30
 800679a:	b151      	cbz	r1, 80067b2 <__swsetup_r+0xaa>
 800679c:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80067a0:	4299      	cmp	r1, r3
 80067a2:	d004      	beq.n	80067ae <__swsetup_r+0xa6>
 80067a4:	4628      	mov	r0, r5
 80067a6:	f001 f96f 	bl	8007a88 <_free_r>
 80067aa:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80067ae:	2300      	movs	r3, #0
 80067b0:	6323      	str	r3, [r4, #48]	; 0x30
 80067b2:	2300      	movs	r3, #0
 80067b4:	6920      	ldr	r0, [r4, #16]
 80067b6:	6063      	str	r3, [r4, #4]
 80067b8:	f022 0224 	bic.w	r2, r2, #36	; 0x24
 80067bc:	6020      	str	r0, [r4, #0]
 80067be:	e7c3      	b.n	8006748 <__swsetup_r+0x40>
 80067c0:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 80067c4:	2309      	movs	r3, #9
 80067c6:	602b      	str	r3, [r5, #0]
 80067c8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80067cc:	81a2      	strh	r2, [r4, #12]
 80067ce:	bd38      	pop	{r3, r4, r5, pc}
 80067d0:	20000018 	.word	0x20000018

080067d4 <register_fini>:
 80067d4:	4b02      	ldr	r3, [pc, #8]	; (80067e0 <register_fini+0xc>)
 80067d6:	b113      	cbz	r3, 80067de <register_fini+0xa>
 80067d8:	4802      	ldr	r0, [pc, #8]	; (80067e4 <register_fini+0x10>)
 80067da:	f000 b805 	b.w	80067e8 <atexit>
 80067de:	4770      	bx	lr
 80067e0:	00000000 	.word	0x00000000
 80067e4:	080079b5 	.word	0x080079b5

080067e8 <atexit>:
 80067e8:	2300      	movs	r3, #0
 80067ea:	4601      	mov	r1, r0
 80067ec:	461a      	mov	r2, r3
 80067ee:	4618      	mov	r0, r3
 80067f0:	f002 ba96 	b.w	8008d20 <__register_exitproc>

080067f4 <quorem>:
 80067f4:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80067f8:	6903      	ldr	r3, [r0, #16]
 80067fa:	690f      	ldr	r7, [r1, #16]
 80067fc:	42bb      	cmp	r3, r7
 80067fe:	b083      	sub	sp, #12
 8006800:	f2c0 8086 	blt.w	8006910 <quorem+0x11c>
 8006804:	3f01      	subs	r7, #1
 8006806:	f101 0914 	add.w	r9, r1, #20
 800680a:	f100 0a14 	add.w	sl, r0, #20
 800680e:	f859 2027 	ldr.w	r2, [r9, r7, lsl #2]
 8006812:	f85a 3027 	ldr.w	r3, [sl, r7, lsl #2]
 8006816:	00bc      	lsls	r4, r7, #2
 8006818:	3201      	adds	r2, #1
 800681a:	fbb3 f8f2 	udiv	r8, r3, r2
 800681e:	eb0a 0304 	add.w	r3, sl, r4
 8006822:	9400      	str	r4, [sp, #0]
 8006824:	eb09 0b04 	add.w	fp, r9, r4
 8006828:	9301      	str	r3, [sp, #4]
 800682a:	f1b8 0f00 	cmp.w	r8, #0
 800682e:	d038      	beq.n	80068a2 <quorem+0xae>
 8006830:	2500      	movs	r5, #0
 8006832:	462e      	mov	r6, r5
 8006834:	46ce      	mov	lr, r9
 8006836:	46d4      	mov	ip, sl
 8006838:	f85e 4b04 	ldr.w	r4, [lr], #4
 800683c:	f8dc 3000 	ldr.w	r3, [ip]
 8006840:	b2a2      	uxth	r2, r4
 8006842:	fb08 5502 	mla	r5, r8, r2, r5
 8006846:	0c22      	lsrs	r2, r4, #16
 8006848:	0c2c      	lsrs	r4, r5, #16
 800684a:	fb08 4202 	mla	r2, r8, r2, r4
 800684e:	b2ad      	uxth	r5, r5
 8006850:	1b75      	subs	r5, r6, r5
 8006852:	b296      	uxth	r6, r2
 8006854:	ebc6 4613 	rsb	r6, r6, r3, lsr #16
 8006858:	fa15 f383 	uxtah	r3, r5, r3
 800685c:	eb06 4623 	add.w	r6, r6, r3, asr #16
 8006860:	b29b      	uxth	r3, r3
 8006862:	ea43 4306 	orr.w	r3, r3, r6, lsl #16
 8006866:	45f3      	cmp	fp, lr
 8006868:	ea4f 4512 	mov.w	r5, r2, lsr #16
 800686c:	f84c 3b04 	str.w	r3, [ip], #4
 8006870:	ea4f 4626 	mov.w	r6, r6, asr #16
 8006874:	d2e0      	bcs.n	8006838 <quorem+0x44>
 8006876:	9b00      	ldr	r3, [sp, #0]
 8006878:	f85a 3003 	ldr.w	r3, [sl, r3]
 800687c:	b98b      	cbnz	r3, 80068a2 <quorem+0xae>
 800687e:	9a01      	ldr	r2, [sp, #4]
 8006880:	1f13      	subs	r3, r2, #4
 8006882:	459a      	cmp	sl, r3
 8006884:	d20c      	bcs.n	80068a0 <quorem+0xac>
 8006886:	f852 3c04 	ldr.w	r3, [r2, #-4]
 800688a:	b94b      	cbnz	r3, 80068a0 <quorem+0xac>
 800688c:	f1a2 0308 	sub.w	r3, r2, #8
 8006890:	e002      	b.n	8006898 <quorem+0xa4>
 8006892:	681a      	ldr	r2, [r3, #0]
 8006894:	3b04      	subs	r3, #4
 8006896:	b91a      	cbnz	r2, 80068a0 <quorem+0xac>
 8006898:	459a      	cmp	sl, r3
 800689a:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 800689e:	d3f8      	bcc.n	8006892 <quorem+0x9e>
 80068a0:	6107      	str	r7, [r0, #16]
 80068a2:	4604      	mov	r4, r0
 80068a4:	f001 fe94 	bl	80085d0 <__mcmp>
 80068a8:	2800      	cmp	r0, #0
 80068aa:	db2d      	blt.n	8006908 <quorem+0x114>
 80068ac:	f108 0801 	add.w	r8, r8, #1
 80068b0:	4655      	mov	r5, sl
 80068b2:	2300      	movs	r3, #0
 80068b4:	f859 1b04 	ldr.w	r1, [r9], #4
 80068b8:	6828      	ldr	r0, [r5, #0]
 80068ba:	b28a      	uxth	r2, r1
 80068bc:	1a9a      	subs	r2, r3, r2
 80068be:	0c0b      	lsrs	r3, r1, #16
 80068c0:	fa12 f280 	uxtah	r2, r2, r0
 80068c4:	ebc3 4310 	rsb	r3, r3, r0, lsr #16
 80068c8:	eb03 4322 	add.w	r3, r3, r2, asr #16
 80068cc:	b292      	uxth	r2, r2
 80068ce:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 80068d2:	45cb      	cmp	fp, r9
 80068d4:	f845 2b04 	str.w	r2, [r5], #4
 80068d8:	ea4f 4323 	mov.w	r3, r3, asr #16
 80068dc:	d2ea      	bcs.n	80068b4 <quorem+0xc0>
 80068de:	f85a 2027 	ldr.w	r2, [sl, r7, lsl #2]
 80068e2:	eb0a 0387 	add.w	r3, sl, r7, lsl #2
 80068e6:	b97a      	cbnz	r2, 8006908 <quorem+0x114>
 80068e8:	1f1a      	subs	r2, r3, #4
 80068ea:	4592      	cmp	sl, r2
 80068ec:	d20b      	bcs.n	8006906 <quorem+0x112>
 80068ee:	f853 2c04 	ldr.w	r2, [r3, #-4]
 80068f2:	b942      	cbnz	r2, 8006906 <quorem+0x112>
 80068f4:	3b08      	subs	r3, #8
 80068f6:	e002      	b.n	80068fe <quorem+0x10a>
 80068f8:	681a      	ldr	r2, [r3, #0]
 80068fa:	3b04      	subs	r3, #4
 80068fc:	b91a      	cbnz	r2, 8006906 <quorem+0x112>
 80068fe:	459a      	cmp	sl, r3
 8006900:	f107 37ff 	add.w	r7, r7, #4294967295	; 0xffffffff
 8006904:	d3f8      	bcc.n	80068f8 <quorem+0x104>
 8006906:	6127      	str	r7, [r4, #16]
 8006908:	4640      	mov	r0, r8
 800690a:	b003      	add	sp, #12
 800690c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006910:	2000      	movs	r0, #0
 8006912:	b003      	add	sp, #12
 8006914:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

08006918 <_dtoa_r>:
 8006918:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800691c:	ec55 4b10 	vmov	r4, r5, d0
 8006920:	b09b      	sub	sp, #108	; 0x6c
 8006922:	6c06      	ldr	r6, [r0, #64]	; 0x40
 8006924:	9102      	str	r1, [sp, #8]
 8006926:	4681      	mov	r9, r0
 8006928:	9207      	str	r2, [sp, #28]
 800692a:	9305      	str	r3, [sp, #20]
 800692c:	e9cd 4500 	strd	r4, r5, [sp]
 8006930:	b156      	cbz	r6, 8006948 <_dtoa_r+0x30>
 8006932:	6c42      	ldr	r2, [r0, #68]	; 0x44
 8006934:	6072      	str	r2, [r6, #4]
 8006936:	2301      	movs	r3, #1
 8006938:	4093      	lsls	r3, r2
 800693a:	60b3      	str	r3, [r6, #8]
 800693c:	4631      	mov	r1, r6
 800693e:	f001 fc57 	bl	80081f0 <_Bfree>
 8006942:	2300      	movs	r3, #0
 8006944:	f8c9 3040 	str.w	r3, [r9, #64]	; 0x40
 8006948:	f1b5 0800 	subs.w	r8, r5, #0
 800694c:	9a24      	ldr	r2, [sp, #144]	; 0x90
 800694e:	bfb4      	ite	lt
 8006950:	2301      	movlt	r3, #1
 8006952:	2300      	movge	r3, #0
 8006954:	6013      	str	r3, [r2, #0]
 8006956:	4b76      	ldr	r3, [pc, #472]	; (8006b30 <_dtoa_r+0x218>)
 8006958:	bfbc      	itt	lt
 800695a:	f028 4800 	biclt.w	r8, r8, #2147483648	; 0x80000000
 800695e:	f8cd 8004 	strlt.w	r8, [sp, #4]
 8006962:	ea33 0308 	bics.w	r3, r3, r8
 8006966:	f000 80a6 	beq.w	8006ab6 <_dtoa_r+0x19e>
 800696a:	e9dd 6700 	ldrd	r6, r7, [sp]
 800696e:	2200      	movs	r2, #0
 8006970:	2300      	movs	r3, #0
 8006972:	4630      	mov	r0, r6
 8006974:	4639      	mov	r1, r7
 8006976:	f7fa fbc7 	bl	8001108 <__aeabi_dcmpeq>
 800697a:	4605      	mov	r5, r0
 800697c:	b178      	cbz	r0, 800699e <_dtoa_r+0x86>
 800697e:	9a05      	ldr	r2, [sp, #20]
 8006980:	2301      	movs	r3, #1
 8006982:	6013      	str	r3, [r2, #0]
 8006984:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006986:	2b00      	cmp	r3, #0
 8006988:	f000 80c0 	beq.w	8006b0c <_dtoa_r+0x1f4>
 800698c:	4b69      	ldr	r3, [pc, #420]	; (8006b34 <_dtoa_r+0x21c>)
 800698e:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8006990:	f103 3bff 	add.w	fp, r3, #4294967295	; 0xffffffff
 8006994:	6013      	str	r3, [r2, #0]
 8006996:	4658      	mov	r0, fp
 8006998:	b01b      	add	sp, #108	; 0x6c
 800699a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800699e:	aa18      	add	r2, sp, #96	; 0x60
 80069a0:	a919      	add	r1, sp, #100	; 0x64
 80069a2:	ec47 6b10 	vmov	d0, r6, r7
 80069a6:	4648      	mov	r0, r9
 80069a8:	f001 fea4 	bl	80086f4 <__d2b>
 80069ac:	ea5f 5418 	movs.w	r4, r8, lsr #20
 80069b0:	4682      	mov	sl, r0
 80069b2:	f040 80a0 	bne.w	8006af6 <_dtoa_r+0x1de>
 80069b6:	e9dd 5418 	ldrd	r5, r4, [sp, #96]	; 0x60
 80069ba:	442c      	add	r4, r5
 80069bc:	f204 4332 	addw	r3, r4, #1074	; 0x432
 80069c0:	2b20      	cmp	r3, #32
 80069c2:	f340 842c 	ble.w	800721e <_dtoa_r+0x906>
 80069c6:	f1c3 0340 	rsb	r3, r3, #64	; 0x40
 80069ca:	fa08 f803 	lsl.w	r8, r8, r3
 80069ce:	9b00      	ldr	r3, [sp, #0]
 80069d0:	f204 4012 	addw	r0, r4, #1042	; 0x412
 80069d4:	fa23 f000 	lsr.w	r0, r3, r0
 80069d8:	ea48 0000 	orr.w	r0, r8, r0
 80069dc:	f7fa f8b2 	bl	8000b44 <__aeabi_ui2d>
 80069e0:	2301      	movs	r3, #1
 80069e2:	4606      	mov	r6, r0
 80069e4:	3c01      	subs	r4, #1
 80069e6:	f1a1 77f8 	sub.w	r7, r1, #32505856	; 0x1f00000
 80069ea:	930f      	str	r3, [sp, #60]	; 0x3c
 80069ec:	4630      	mov	r0, r6
 80069ee:	4639      	mov	r1, r7
 80069f0:	2200      	movs	r2, #0
 80069f2:	4b51      	ldr	r3, [pc, #324]	; (8006b38 <_dtoa_r+0x220>)
 80069f4:	f7f9 ff68 	bl	80008c8 <__aeabi_dsub>
 80069f8:	a347      	add	r3, pc, #284	; (adr r3, 8006b18 <_dtoa_r+0x200>)
 80069fa:	e9d3 2300 	ldrd	r2, r3, [r3]
 80069fe:	f7fa f91b 	bl	8000c38 <__aeabi_dmul>
 8006a02:	a347      	add	r3, pc, #284	; (adr r3, 8006b20 <_dtoa_r+0x208>)
 8006a04:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006a08:	f7f9 ff60 	bl	80008cc <__adddf3>
 8006a0c:	4606      	mov	r6, r0
 8006a0e:	4620      	mov	r0, r4
 8006a10:	460f      	mov	r7, r1
 8006a12:	f7fa f8a7 	bl	8000b64 <__aeabi_i2d>
 8006a16:	a344      	add	r3, pc, #272	; (adr r3, 8006b28 <_dtoa_r+0x210>)
 8006a18:	e9d3 2300 	ldrd	r2, r3, [r3]
 8006a1c:	f7fa f90c 	bl	8000c38 <__aeabi_dmul>
 8006a20:	4602      	mov	r2, r0
 8006a22:	460b      	mov	r3, r1
 8006a24:	4630      	mov	r0, r6
 8006a26:	4639      	mov	r1, r7
 8006a28:	f7f9 ff50 	bl	80008cc <__adddf3>
 8006a2c:	4606      	mov	r6, r0
 8006a2e:	460f      	mov	r7, r1
 8006a30:	f7fa fbb2 	bl	8001198 <__aeabi_d2iz>
 8006a34:	2200      	movs	r2, #0
 8006a36:	9006      	str	r0, [sp, #24]
 8006a38:	2300      	movs	r3, #0
 8006a3a:	4630      	mov	r0, r6
 8006a3c:	4639      	mov	r1, r7
 8006a3e:	f7fa fb6d 	bl	800111c <__aeabi_dcmplt>
 8006a42:	2800      	cmp	r0, #0
 8006a44:	f040 8273 	bne.w	8006f2e <_dtoa_r+0x616>
 8006a48:	9e06      	ldr	r6, [sp, #24]
 8006a4a:	2e16      	cmp	r6, #22
 8006a4c:	f200 825d 	bhi.w	8006f0a <_dtoa_r+0x5f2>
 8006a50:	4b3a      	ldr	r3, [pc, #232]	; (8006b3c <_dtoa_r+0x224>)
 8006a52:	eb03 03c6 	add.w	r3, r3, r6, lsl #3
 8006a56:	e9d3 0100 	ldrd	r0, r1, [r3]
 8006a5a:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006a5e:	f7fa fb7b 	bl	8001158 <__aeabi_dcmpgt>
 8006a62:	2800      	cmp	r0, #0
 8006a64:	f000 83d7 	beq.w	8007216 <_dtoa_r+0x8fe>
 8006a68:	1e73      	subs	r3, r6, #1
 8006a6a:	9306      	str	r3, [sp, #24]
 8006a6c:	2300      	movs	r3, #0
 8006a6e:	930d      	str	r3, [sp, #52]	; 0x34
 8006a70:	1b2c      	subs	r4, r5, r4
 8006a72:	f1b4 0801 	subs.w	r8, r4, #1
 8006a76:	f100 8254 	bmi.w	8006f22 <_dtoa_r+0x60a>
 8006a7a:	2300      	movs	r3, #0
 8006a7c:	9308      	str	r3, [sp, #32]
 8006a7e:	9b06      	ldr	r3, [sp, #24]
 8006a80:	2b00      	cmp	r3, #0
 8006a82:	f2c0 8245 	blt.w	8006f10 <_dtoa_r+0x5f8>
 8006a86:	4498      	add	r8, r3
 8006a88:	930c      	str	r3, [sp, #48]	; 0x30
 8006a8a:	2300      	movs	r3, #0
 8006a8c:	930b      	str	r3, [sp, #44]	; 0x2c
 8006a8e:	9b02      	ldr	r3, [sp, #8]
 8006a90:	2b09      	cmp	r3, #9
 8006a92:	d85b      	bhi.n	8006b4c <_dtoa_r+0x234>
 8006a94:	2b05      	cmp	r3, #5
 8006a96:	f340 83c0 	ble.w	800721a <_dtoa_r+0x902>
 8006a9a:	3b04      	subs	r3, #4
 8006a9c:	9302      	str	r3, [sp, #8]
 8006a9e:	2500      	movs	r5, #0
 8006aa0:	9b02      	ldr	r3, [sp, #8]
 8006aa2:	3b02      	subs	r3, #2
 8006aa4:	2b03      	cmp	r3, #3
 8006aa6:	f200 8498 	bhi.w	80073da <_dtoa_r+0xac2>
 8006aaa:	e8df f013 	tbh	[pc, r3, lsl #1]
 8006aae:	03df      	.short	0x03df
 8006ab0:	03e803bf 	.word	0x03e803bf
 8006ab4:	04f5      	.short	0x04f5
 8006ab6:	9a05      	ldr	r2, [sp, #20]
 8006ab8:	f242 730f 	movw	r3, #9999	; 0x270f
 8006abc:	6013      	str	r3, [r2, #0]
 8006abe:	9b00      	ldr	r3, [sp, #0]
 8006ac0:	b983      	cbnz	r3, 8006ae4 <_dtoa_r+0x1cc>
 8006ac2:	f3c8 0313 	ubfx	r3, r8, #0, #20
 8006ac6:	b96b      	cbnz	r3, 8006ae4 <_dtoa_r+0x1cc>
 8006ac8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006aca:	f8df b074 	ldr.w	fp, [pc, #116]	; 8006b40 <_dtoa_r+0x228>
 8006ace:	2b00      	cmp	r3, #0
 8006ad0:	f43f af61 	beq.w	8006996 <_dtoa_r+0x7e>
 8006ad4:	f10b 0308 	add.w	r3, fp, #8
 8006ad8:	9a25      	ldr	r2, [sp, #148]	; 0x94
 8006ada:	4658      	mov	r0, fp
 8006adc:	6013      	str	r3, [r2, #0]
 8006ade:	b01b      	add	sp, #108	; 0x6c
 8006ae0:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006ae4:	9b25      	ldr	r3, [sp, #148]	; 0x94
 8006ae6:	f8df b05c 	ldr.w	fp, [pc, #92]	; 8006b44 <_dtoa_r+0x22c>
 8006aea:	2b00      	cmp	r3, #0
 8006aec:	f43f af53 	beq.w	8006996 <_dtoa_r+0x7e>
 8006af0:	f10b 0303 	add.w	r3, fp, #3
 8006af4:	e7f0      	b.n	8006ad8 <_dtoa_r+0x1c0>
 8006af6:	f3c7 0313 	ubfx	r3, r7, #0, #20
 8006afa:	f043 577f 	orr.w	r7, r3, #1069547520	; 0x3fc00000
 8006afe:	950f      	str	r5, [sp, #60]	; 0x3c
 8006b00:	f2a4 34ff 	subw	r4, r4, #1023	; 0x3ff
 8006b04:	f447 1740 	orr.w	r7, r7, #3145728	; 0x300000
 8006b08:	9d18      	ldr	r5, [sp, #96]	; 0x60
 8006b0a:	e76f      	b.n	80069ec <_dtoa_r+0xd4>
 8006b0c:	f8df b038 	ldr.w	fp, [pc, #56]	; 8006b48 <_dtoa_r+0x230>
 8006b10:	4658      	mov	r0, fp
 8006b12:	b01b      	add	sp, #108	; 0x6c
 8006b14:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8006b18:	636f4361 	.word	0x636f4361
 8006b1c:	3fd287a7 	.word	0x3fd287a7
 8006b20:	8b60c8b3 	.word	0x8b60c8b3
 8006b24:	3fc68a28 	.word	0x3fc68a28
 8006b28:	509f79fb 	.word	0x509f79fb
 8006b2c:	3fd34413 	.word	0x3fd34413
 8006b30:	7ff00000 	.word	0x7ff00000
 8006b34:	08009979 	.word	0x08009979
 8006b38:	3ff80000 	.word	0x3ff80000
 8006b3c:	080099d8 	.word	0x080099d8
 8006b40:	0800999c 	.word	0x0800999c
 8006b44:	080099a8 	.word	0x080099a8
 8006b48:	08009978 	.word	0x08009978
 8006b4c:	f04f 34ff 	mov.w	r4, #4294967295	; 0xffffffff
 8006b50:	2501      	movs	r5, #1
 8006b52:	e9cd 4509 	strd	r4, r5, [sp, #36]	; 0x24
 8006b56:	2300      	movs	r3, #0
 8006b58:	9302      	str	r3, [sp, #8]
 8006b5a:	9307      	str	r3, [sp, #28]
 8006b5c:	2100      	movs	r1, #0
 8006b5e:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 8006b62:	940e      	str	r4, [sp, #56]	; 0x38
 8006b64:	4648      	mov	r0, r9
 8006b66:	f001 fb1d 	bl	80081a4 <_Balloc>
 8006b6a:	2c0e      	cmp	r4, #14
 8006b6c:	4683      	mov	fp, r0
 8006b6e:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 8006b72:	f200 80fb 	bhi.w	8006d6c <_dtoa_r+0x454>
 8006b76:	2d00      	cmp	r5, #0
 8006b78:	f000 80f8 	beq.w	8006d6c <_dtoa_r+0x454>
 8006b7c:	ed9d 7b00 	vldr	d7, [sp]
 8006b80:	9906      	ldr	r1, [sp, #24]
 8006b82:	2900      	cmp	r1, #0
 8006b84:	ed8d 7b10 	vstr	d7, [sp, #64]	; 0x40
 8006b88:	f340 83e5 	ble.w	8007356 <_dtoa_r+0xa3e>
 8006b8c:	4b9d      	ldr	r3, [pc, #628]	; (8006e04 <_dtoa_r+0x4ec>)
 8006b8e:	f001 020f 	and.w	r2, r1, #15
 8006b92:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006b96:	ed93 7b00 	vldr	d7, [r3]
 8006b9a:	110c      	asrs	r4, r1, #4
 8006b9c:	06e2      	lsls	r2, r4, #27
 8006b9e:	ed8d 7b00 	vstr	d7, [sp]
 8006ba2:	f140 849e 	bpl.w	80074e2 <_dtoa_r+0xbca>
 8006ba6:	4b98      	ldr	r3, [pc, #608]	; (8006e08 <_dtoa_r+0x4f0>)
 8006ba8:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8006bac:	e9d3 2308 	ldrd	r2, r3, [r3, #32]
 8006bb0:	f7fa f96c 	bl	8000e8c <__aeabi_ddiv>
 8006bb4:	e9cd 0112 	strd	r0, r1, [sp, #72]	; 0x48
 8006bb8:	f004 040f 	and.w	r4, r4, #15
 8006bbc:	2603      	movs	r6, #3
 8006bbe:	b17c      	cbz	r4, 8006be0 <_dtoa_r+0x2c8>
 8006bc0:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006bc4:	4d90      	ldr	r5, [pc, #576]	; (8006e08 <_dtoa_r+0x4f0>)
 8006bc6:	07e3      	lsls	r3, r4, #31
 8006bc8:	d504      	bpl.n	8006bd4 <_dtoa_r+0x2bc>
 8006bca:	e9d5 2300 	ldrd	r2, r3, [r5]
 8006bce:	f7fa f833 	bl	8000c38 <__aeabi_dmul>
 8006bd2:	3601      	adds	r6, #1
 8006bd4:	1064      	asrs	r4, r4, #1
 8006bd6:	f105 0508 	add.w	r5, r5, #8
 8006bda:	d1f4      	bne.n	8006bc6 <_dtoa_r+0x2ae>
 8006bdc:	e9cd 0100 	strd	r0, r1, [sp]
 8006be0:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006be4:	e9dd 0112 	ldrd	r0, r1, [sp, #72]	; 0x48
 8006be8:	f7fa f950 	bl	8000e8c <__aeabi_ddiv>
 8006bec:	e9cd 0100 	strd	r0, r1, [sp]
 8006bf0:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8006bf2:	b143      	cbz	r3, 8006c06 <_dtoa_r+0x2ee>
 8006bf4:	2200      	movs	r2, #0
 8006bf6:	4b85      	ldr	r3, [pc, #532]	; (8006e0c <_dtoa_r+0x4f4>)
 8006bf8:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006bfc:	f7fa fa8e 	bl	800111c <__aeabi_dcmplt>
 8006c00:	2800      	cmp	r0, #0
 8006c02:	f040 84ff 	bne.w	8007604 <_dtoa_r+0xcec>
 8006c06:	4630      	mov	r0, r6
 8006c08:	f7f9 ffac 	bl	8000b64 <__aeabi_i2d>
 8006c0c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006c10:	f7fa f812 	bl	8000c38 <__aeabi_dmul>
 8006c14:	4b7e      	ldr	r3, [pc, #504]	; (8006e10 <_dtoa_r+0x4f8>)
 8006c16:	2200      	movs	r2, #0
 8006c18:	f7f9 fe58 	bl	80008cc <__adddf3>
 8006c1c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006c1e:	4606      	mov	r6, r0
 8006c20:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8006c24:	2b00      	cmp	r3, #0
 8006c26:	f000 841c 	beq.w	8007462 <_dtoa_r+0xb4a>
 8006c2a:	9b06      	ldr	r3, [sp, #24]
 8006c2c:	9316      	str	r3, [sp, #88]	; 0x58
 8006c2e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006c30:	9312      	str	r3, [sp, #72]	; 0x48
 8006c32:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006c36:	f7fa faaf 	bl	8001198 <__aeabi_d2iz>
 8006c3a:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8006c3c:	4b71      	ldr	r3, [pc, #452]	; (8006e04 <_dtoa_r+0x4ec>)
 8006c3e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006c42:	ed13 7b02 	vldr	d7, [r3, #-8]
 8006c46:	f100 0530 	add.w	r5, r0, #48	; 0x30
 8006c4a:	ed8d 7b14 	vstr	d7, [sp, #80]	; 0x50
 8006c4e:	f7f9 ff89 	bl	8000b64 <__aeabi_i2d>
 8006c52:	460b      	mov	r3, r1
 8006c54:	4602      	mov	r2, r0
 8006c56:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006c5a:	e9cd 6700 	strd	r6, r7, [sp]
 8006c5e:	f7f9 fe33 	bl	80008c8 <__aeabi_dsub>
 8006c62:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8006c64:	b2ed      	uxtb	r5, r5
 8006c66:	4606      	mov	r6, r0
 8006c68:	460f      	mov	r7, r1
 8006c6a:	f10b 0401 	add.w	r4, fp, #1
 8006c6e:	2b00      	cmp	r3, #0
 8006c70:	f000 8458 	beq.w	8007524 <_dtoa_r+0xc0c>
 8006c74:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8006c78:	2000      	movs	r0, #0
 8006c7a:	4966      	ldr	r1, [pc, #408]	; (8006e14 <_dtoa_r+0x4fc>)
 8006c7c:	f7fa f906 	bl	8000e8c <__aeabi_ddiv>
 8006c80:	e9dd 2300 	ldrd	r2, r3, [sp]
 8006c84:	f7f9 fe20 	bl	80008c8 <__aeabi_dsub>
 8006c88:	f88b 5000 	strb.w	r5, [fp]
 8006c8c:	4632      	mov	r2, r6
 8006c8e:	463b      	mov	r3, r7
 8006c90:	e9cd 0100 	strd	r0, r1, [sp]
 8006c94:	f7fa fa60 	bl	8001158 <__aeabi_dcmpgt>
 8006c98:	2800      	cmp	r0, #0
 8006c9a:	f040 8502 	bne.w	80076a2 <_dtoa_r+0xd8a>
 8006c9e:	4632      	mov	r2, r6
 8006ca0:	463b      	mov	r3, r7
 8006ca2:	2000      	movs	r0, #0
 8006ca4:	4959      	ldr	r1, [pc, #356]	; (8006e0c <_dtoa_r+0x4f4>)
 8006ca6:	f7f9 fe0f 	bl	80008c8 <__aeabi_dsub>
 8006caa:	4602      	mov	r2, r0
 8006cac:	460b      	mov	r3, r1
 8006cae:	e9dd 0100 	ldrd	r0, r1, [sp]
 8006cb2:	f7fa fa51 	bl	8001158 <__aeabi_dcmpgt>
 8006cb6:	2800      	cmp	r0, #0
 8006cb8:	f040 84fb 	bne.w	80076b2 <_dtoa_r+0xd9a>
 8006cbc:	9a12      	ldr	r2, [sp, #72]	; 0x48
 8006cbe:	2a01      	cmp	r2, #1
 8006cc0:	d050      	beq.n	8006d64 <_dtoa_r+0x44c>
 8006cc2:	445a      	add	r2, fp
 8006cc4:	f8cd 805c 	str.w	r8, [sp, #92]	; 0x5c
 8006cc8:	f8cd a048 	str.w	sl, [sp, #72]	; 0x48
 8006ccc:	f8cd b050 	str.w	fp, [sp, #80]	; 0x50
 8006cd0:	4692      	mov	sl, r2
 8006cd2:	46cb      	mov	fp, r9
 8006cd4:	e9dd 8900 	ldrd	r8, r9, [sp]
 8006cd8:	e00c      	b.n	8006cf4 <_dtoa_r+0x3dc>
 8006cda:	2000      	movs	r0, #0
 8006cdc:	494b      	ldr	r1, [pc, #300]	; (8006e0c <_dtoa_r+0x4f4>)
 8006cde:	f7f9 fdf3 	bl	80008c8 <__aeabi_dsub>
 8006ce2:	4642      	mov	r2, r8
 8006ce4:	464b      	mov	r3, r9
 8006ce6:	f7fa fa19 	bl	800111c <__aeabi_dcmplt>
 8006cea:	2800      	cmp	r0, #0
 8006cec:	f040 84dc 	bne.w	80076a8 <_dtoa_r+0xd90>
 8006cf0:	4554      	cmp	r4, sl
 8006cf2:	d030      	beq.n	8006d56 <_dtoa_r+0x43e>
 8006cf4:	4640      	mov	r0, r8
 8006cf6:	4649      	mov	r1, r9
 8006cf8:	2200      	movs	r2, #0
 8006cfa:	4b47      	ldr	r3, [pc, #284]	; (8006e18 <_dtoa_r+0x500>)
 8006cfc:	f7f9 ff9c 	bl	8000c38 <__aeabi_dmul>
 8006d00:	2200      	movs	r2, #0
 8006d02:	4b45      	ldr	r3, [pc, #276]	; (8006e18 <_dtoa_r+0x500>)
 8006d04:	4680      	mov	r8, r0
 8006d06:	4689      	mov	r9, r1
 8006d08:	4630      	mov	r0, r6
 8006d0a:	4639      	mov	r1, r7
 8006d0c:	f7f9 ff94 	bl	8000c38 <__aeabi_dmul>
 8006d10:	460f      	mov	r7, r1
 8006d12:	4606      	mov	r6, r0
 8006d14:	f7fa fa40 	bl	8001198 <__aeabi_d2iz>
 8006d18:	4605      	mov	r5, r0
 8006d1a:	f7f9 ff23 	bl	8000b64 <__aeabi_i2d>
 8006d1e:	4602      	mov	r2, r0
 8006d20:	460b      	mov	r3, r1
 8006d22:	4630      	mov	r0, r6
 8006d24:	4639      	mov	r1, r7
 8006d26:	f7f9 fdcf 	bl	80008c8 <__aeabi_dsub>
 8006d2a:	3530      	adds	r5, #48	; 0x30
 8006d2c:	b2ed      	uxtb	r5, r5
 8006d2e:	4642      	mov	r2, r8
 8006d30:	464b      	mov	r3, r9
 8006d32:	f804 5b01 	strb.w	r5, [r4], #1
 8006d36:	4606      	mov	r6, r0
 8006d38:	460f      	mov	r7, r1
 8006d3a:	f7fa f9ef 	bl	800111c <__aeabi_dcmplt>
 8006d3e:	4632      	mov	r2, r6
 8006d40:	463b      	mov	r3, r7
 8006d42:	2800      	cmp	r0, #0
 8006d44:	d0c9      	beq.n	8006cda <_dtoa_r+0x3c2>
 8006d46:	9b16      	ldr	r3, [sp, #88]	; 0x58
 8006d48:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8006d4c:	9306      	str	r3, [sp, #24]
 8006d4e:	46d9      	mov	r9, fp
 8006d50:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8006d54:	e236      	b.n	80071c4 <_dtoa_r+0x8ac>
 8006d56:	46d9      	mov	r9, fp
 8006d58:	f8dd 805c 	ldr.w	r8, [sp, #92]	; 0x5c
 8006d5c:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 8006d60:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 8006d64:	e9dd 3410 	ldrd	r3, r4, [sp, #64]	; 0x40
 8006d68:	e9cd 3400 	strd	r3, r4, [sp]
 8006d6c:	9b19      	ldr	r3, [sp, #100]	; 0x64
 8006d6e:	2b00      	cmp	r3, #0
 8006d70:	f2c0 80ae 	blt.w	8006ed0 <_dtoa_r+0x5b8>
 8006d74:	9a06      	ldr	r2, [sp, #24]
 8006d76:	2a0e      	cmp	r2, #14
 8006d78:	f300 80aa 	bgt.w	8006ed0 <_dtoa_r+0x5b8>
 8006d7c:	4b21      	ldr	r3, [pc, #132]	; (8006e04 <_dtoa_r+0x4ec>)
 8006d7e:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8006d82:	ed93 7b00 	vldr	d7, [r3]
 8006d86:	9b07      	ldr	r3, [sp, #28]
 8006d88:	2b00      	cmp	r3, #0
 8006d8a:	ed8d 7b02 	vstr	d7, [sp, #8]
 8006d8e:	f2c0 82be 	blt.w	800730e <_dtoa_r+0x9f6>
 8006d92:	e9dd 6700 	ldrd	r6, r7, [sp]
 8006d96:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006d9a:	4630      	mov	r0, r6
 8006d9c:	4639      	mov	r1, r7
 8006d9e:	f7fa f875 	bl	8000e8c <__aeabi_ddiv>
 8006da2:	f7fa f9f9 	bl	8001198 <__aeabi_d2iz>
 8006da6:	4605      	mov	r5, r0
 8006da8:	f7f9 fedc 	bl	8000b64 <__aeabi_i2d>
 8006dac:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006db0:	f7f9 ff42 	bl	8000c38 <__aeabi_dmul>
 8006db4:	460b      	mov	r3, r1
 8006db6:	4602      	mov	r2, r0
 8006db8:	4639      	mov	r1, r7
 8006dba:	4630      	mov	r0, r6
 8006dbc:	f7f9 fd84 	bl	80008c8 <__aeabi_dsub>
 8006dc0:	f105 0330 	add.w	r3, r5, #48	; 0x30
 8006dc4:	f88b 3000 	strb.w	r3, [fp]
 8006dc8:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006dca:	2b01      	cmp	r3, #1
 8006dcc:	4606      	mov	r6, r0
 8006dce:	460f      	mov	r7, r1
 8006dd0:	f10b 0401 	add.w	r4, fp, #1
 8006dd4:	d053      	beq.n	8006e7e <_dtoa_r+0x566>
 8006dd6:	2200      	movs	r2, #0
 8006dd8:	4b0f      	ldr	r3, [pc, #60]	; (8006e18 <_dtoa_r+0x500>)
 8006dda:	f7f9 ff2d 	bl	8000c38 <__aeabi_dmul>
 8006dde:	2200      	movs	r2, #0
 8006de0:	2300      	movs	r3, #0
 8006de2:	4606      	mov	r6, r0
 8006de4:	460f      	mov	r7, r1
 8006de6:	f7fa f98f 	bl	8001108 <__aeabi_dcmpeq>
 8006dea:	2800      	cmp	r0, #0
 8006dec:	f040 81ea 	bne.w	80071c4 <_dtoa_r+0x8ac>
 8006df0:	f8cd a000 	str.w	sl, [sp]
 8006df4:	f8cd 901c 	str.w	r9, [sp, #28]
 8006df8:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8006dfc:	e9dd 9a02 	ldrd	r9, sl, [sp, #8]
 8006e00:	e017      	b.n	8006e32 <_dtoa_r+0x51a>
 8006e02:	bf00      	nop
 8006e04:	080099d8 	.word	0x080099d8
 8006e08:	080099b0 	.word	0x080099b0
 8006e0c:	3ff00000 	.word	0x3ff00000
 8006e10:	401c0000 	.word	0x401c0000
 8006e14:	3fe00000 	.word	0x3fe00000
 8006e18:	40240000 	.word	0x40240000
 8006e1c:	f7f9 ff0c 	bl	8000c38 <__aeabi_dmul>
 8006e20:	2200      	movs	r2, #0
 8006e22:	2300      	movs	r3, #0
 8006e24:	4606      	mov	r6, r0
 8006e26:	460f      	mov	r7, r1
 8006e28:	f7fa f96e 	bl	8001108 <__aeabi_dcmpeq>
 8006e2c:	2800      	cmp	r0, #0
 8006e2e:	f040 833d 	bne.w	80074ac <_dtoa_r+0xb94>
 8006e32:	464a      	mov	r2, r9
 8006e34:	4653      	mov	r3, sl
 8006e36:	4630      	mov	r0, r6
 8006e38:	4639      	mov	r1, r7
 8006e3a:	f7fa f827 	bl	8000e8c <__aeabi_ddiv>
 8006e3e:	f7fa f9ab 	bl	8001198 <__aeabi_d2iz>
 8006e42:	4605      	mov	r5, r0
 8006e44:	f7f9 fe8e 	bl	8000b64 <__aeabi_i2d>
 8006e48:	464a      	mov	r2, r9
 8006e4a:	4653      	mov	r3, sl
 8006e4c:	f7f9 fef4 	bl	8000c38 <__aeabi_dmul>
 8006e50:	4602      	mov	r2, r0
 8006e52:	460b      	mov	r3, r1
 8006e54:	4630      	mov	r0, r6
 8006e56:	4639      	mov	r1, r7
 8006e58:	f7f9 fd36 	bl	80008c8 <__aeabi_dsub>
 8006e5c:	f105 0c30 	add.w	ip, r5, #48	; 0x30
 8006e60:	f804 cb01 	strb.w	ip, [r4], #1
 8006e64:	eba4 0c0b 	sub.w	ip, r4, fp
 8006e68:	45e0      	cmp	r8, ip
 8006e6a:	4606      	mov	r6, r0
 8006e6c:	460f      	mov	r7, r1
 8006e6e:	f04f 0200 	mov.w	r2, #0
 8006e72:	4bc1      	ldr	r3, [pc, #772]	; (8007178 <_dtoa_r+0x860>)
 8006e74:	d1d2      	bne.n	8006e1c <_dtoa_r+0x504>
 8006e76:	f8dd a000 	ldr.w	sl, [sp]
 8006e7a:	f8dd 901c 	ldr.w	r9, [sp, #28]
 8006e7e:	4632      	mov	r2, r6
 8006e80:	463b      	mov	r3, r7
 8006e82:	4630      	mov	r0, r6
 8006e84:	4639      	mov	r1, r7
 8006e86:	f7f9 fd21 	bl	80008cc <__adddf3>
 8006e8a:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006e8e:	4606      	mov	r6, r0
 8006e90:	460f      	mov	r7, r1
 8006e92:	f7fa f961 	bl	8001158 <__aeabi_dcmpgt>
 8006e96:	b958      	cbnz	r0, 8006eb0 <_dtoa_r+0x598>
 8006e98:	e9dd 2302 	ldrd	r2, r3, [sp, #8]
 8006e9c:	4630      	mov	r0, r6
 8006e9e:	4639      	mov	r1, r7
 8006ea0:	f7fa f932 	bl	8001108 <__aeabi_dcmpeq>
 8006ea4:	2800      	cmp	r0, #0
 8006ea6:	f000 818d 	beq.w	80071c4 <_dtoa_r+0x8ac>
 8006eaa:	07e9      	lsls	r1, r5, #31
 8006eac:	f140 818a 	bpl.w	80071c4 <_dtoa_r+0x8ac>
 8006eb0:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 8006eb4:	e005      	b.n	8006ec2 <_dtoa_r+0x5aa>
 8006eb6:	459b      	cmp	fp, r3
 8006eb8:	f000 8373 	beq.w	80075a2 <_dtoa_r+0xc8a>
 8006ebc:	f813 5c01 	ldrb.w	r5, [r3, #-1]
 8006ec0:	461c      	mov	r4, r3
 8006ec2:	2d39      	cmp	r5, #57	; 0x39
 8006ec4:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8006ec8:	d0f5      	beq.n	8006eb6 <_dtoa_r+0x59e>
 8006eca:	3501      	adds	r5, #1
 8006ecc:	701d      	strb	r5, [r3, #0]
 8006ece:	e179      	b.n	80071c4 <_dtoa_r+0x8ac>
 8006ed0:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8006ed2:	2a00      	cmp	r2, #0
 8006ed4:	d03b      	beq.n	8006f4e <_dtoa_r+0x636>
 8006ed6:	9a02      	ldr	r2, [sp, #8]
 8006ed8:	2a01      	cmp	r2, #1
 8006eda:	f340 820b 	ble.w	80072f4 <_dtoa_r+0x9dc>
 8006ede:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006ee0:	1e5f      	subs	r7, r3, #1
 8006ee2:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006ee4:	42bb      	cmp	r3, r7
 8006ee6:	f2c0 82e6 	blt.w	80074b6 <_dtoa_r+0xb9e>
 8006eea:	1bdf      	subs	r7, r3, r7
 8006eec:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006eee:	2b00      	cmp	r3, #0
 8006ef0:	f2c0 830b 	blt.w	800750a <_dtoa_r+0xbf2>
 8006ef4:	9a08      	ldr	r2, [sp, #32]
 8006ef6:	4614      	mov	r4, r2
 8006ef8:	441a      	add	r2, r3
 8006efa:	4498      	add	r8, r3
 8006efc:	9208      	str	r2, [sp, #32]
 8006efe:	2101      	movs	r1, #1
 8006f00:	4648      	mov	r0, r9
 8006f02:	f001 fa0f 	bl	8008324 <__i2b>
 8006f06:	4605      	mov	r5, r0
 8006f08:	e024      	b.n	8006f54 <_dtoa_r+0x63c>
 8006f0a:	2301      	movs	r3, #1
 8006f0c:	930d      	str	r3, [sp, #52]	; 0x34
 8006f0e:	e5af      	b.n	8006a70 <_dtoa_r+0x158>
 8006f10:	9a08      	ldr	r2, [sp, #32]
 8006f12:	9b06      	ldr	r3, [sp, #24]
 8006f14:	1ad2      	subs	r2, r2, r3
 8006f16:	425b      	negs	r3, r3
 8006f18:	930b      	str	r3, [sp, #44]	; 0x2c
 8006f1a:	2300      	movs	r3, #0
 8006f1c:	9208      	str	r2, [sp, #32]
 8006f1e:	930c      	str	r3, [sp, #48]	; 0x30
 8006f20:	e5b5      	b.n	8006a8e <_dtoa_r+0x176>
 8006f22:	f1c4 0301 	rsb	r3, r4, #1
 8006f26:	9308      	str	r3, [sp, #32]
 8006f28:	f04f 0800 	mov.w	r8, #0
 8006f2c:	e5a7      	b.n	8006a7e <_dtoa_r+0x166>
 8006f2e:	f8dd 8018 	ldr.w	r8, [sp, #24]
 8006f32:	4640      	mov	r0, r8
 8006f34:	f7f9 fe16 	bl	8000b64 <__aeabi_i2d>
 8006f38:	4632      	mov	r2, r6
 8006f3a:	463b      	mov	r3, r7
 8006f3c:	f7fa f8e4 	bl	8001108 <__aeabi_dcmpeq>
 8006f40:	2800      	cmp	r0, #0
 8006f42:	f47f ad81 	bne.w	8006a48 <_dtoa_r+0x130>
 8006f46:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8006f4a:	9306      	str	r3, [sp, #24]
 8006f4c:	e57c      	b.n	8006a48 <_dtoa_r+0x130>
 8006f4e:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8006f50:	9c08      	ldr	r4, [sp, #32]
 8006f52:	9d0a      	ldr	r5, [sp, #40]	; 0x28
 8006f54:	2c00      	cmp	r4, #0
 8006f56:	dd0c      	ble.n	8006f72 <_dtoa_r+0x65a>
 8006f58:	f1b8 0f00 	cmp.w	r8, #0
 8006f5c:	dd09      	ble.n	8006f72 <_dtoa_r+0x65a>
 8006f5e:	4544      	cmp	r4, r8
 8006f60:	9a08      	ldr	r2, [sp, #32]
 8006f62:	4623      	mov	r3, r4
 8006f64:	bfa8      	it	ge
 8006f66:	4643      	movge	r3, r8
 8006f68:	1ad2      	subs	r2, r2, r3
 8006f6a:	9208      	str	r2, [sp, #32]
 8006f6c:	1ae4      	subs	r4, r4, r3
 8006f6e:	eba8 0803 	sub.w	r8, r8, r3
 8006f72:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 8006f74:	b16b      	cbz	r3, 8006f92 <_dtoa_r+0x67a>
 8006f76:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8006f78:	2a00      	cmp	r2, #0
 8006f7a:	f000 8290 	beq.w	800749e <_dtoa_r+0xb86>
 8006f7e:	1bde      	subs	r6, r3, r7
 8006f80:	2f00      	cmp	r7, #0
 8006f82:	f040 819b 	bne.w	80072bc <_dtoa_r+0x9a4>
 8006f86:	4651      	mov	r1, sl
 8006f88:	4632      	mov	r2, r6
 8006f8a:	4648      	mov	r0, r9
 8006f8c:	f001 fa7a 	bl	8008484 <__pow5mult>
 8006f90:	4682      	mov	sl, r0
 8006f92:	2101      	movs	r1, #1
 8006f94:	4648      	mov	r0, r9
 8006f96:	f001 f9c5 	bl	8008324 <__i2b>
 8006f9a:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 8006f9c:	4606      	mov	r6, r0
 8006f9e:	2a00      	cmp	r2, #0
 8006fa0:	f040 8125 	bne.w	80071ee <_dtoa_r+0x8d6>
 8006fa4:	9b02      	ldr	r3, [sp, #8]
 8006fa6:	2b01      	cmp	r3, #1
 8006fa8:	f340 816c 	ble.w	8007284 <_dtoa_r+0x96c>
 8006fac:	2001      	movs	r0, #1
 8006fae:	4440      	add	r0, r8
 8006fb0:	f010 001f 	ands.w	r0, r0, #31
 8006fb4:	f000 8119 	beq.w	80071ea <_dtoa_r+0x8d2>
 8006fb8:	f1c0 0320 	rsb	r3, r0, #32
 8006fbc:	2b04      	cmp	r3, #4
 8006fbe:	f340 83ac 	ble.w	800771a <_dtoa_r+0xe02>
 8006fc2:	f1c0 001c 	rsb	r0, r0, #28
 8006fc6:	9b08      	ldr	r3, [sp, #32]
 8006fc8:	4403      	add	r3, r0
 8006fca:	9308      	str	r3, [sp, #32]
 8006fcc:	4404      	add	r4, r0
 8006fce:	4480      	add	r8, r0
 8006fd0:	9b08      	ldr	r3, [sp, #32]
 8006fd2:	2b00      	cmp	r3, #0
 8006fd4:	dd05      	ble.n	8006fe2 <_dtoa_r+0x6ca>
 8006fd6:	4651      	mov	r1, sl
 8006fd8:	461a      	mov	r2, r3
 8006fda:	4648      	mov	r0, r9
 8006fdc:	f001 faa2 	bl	8008524 <__lshift>
 8006fe0:	4682      	mov	sl, r0
 8006fe2:	f1b8 0f00 	cmp.w	r8, #0
 8006fe6:	dd05      	ble.n	8006ff4 <_dtoa_r+0x6dc>
 8006fe8:	4631      	mov	r1, r6
 8006fea:	4642      	mov	r2, r8
 8006fec:	4648      	mov	r0, r9
 8006fee:	f001 fa99 	bl	8008524 <__lshift>
 8006ff2:	4606      	mov	r6, r0
 8006ff4:	9b0d      	ldr	r3, [sp, #52]	; 0x34
 8006ff6:	2b00      	cmp	r3, #0
 8006ff8:	d177      	bne.n	80070ea <_dtoa_r+0x7d2>
 8006ffa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8006ffc:	2b00      	cmp	r3, #0
 8006ffe:	f340 8209 	ble.w	8007414 <_dtoa_r+0xafc>
 8007002:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007004:	2b00      	cmp	r3, #0
 8007006:	f000 8089 	beq.w	800711c <_dtoa_r+0x804>
 800700a:	2c00      	cmp	r4, #0
 800700c:	f300 816b 	bgt.w	80072e6 <_dtoa_r+0x9ce>
 8007010:	9b0c      	ldr	r3, [sp, #48]	; 0x30
 8007012:	2b00      	cmp	r3, #0
 8007014:	f040 81cd 	bne.w	80073b2 <_dtoa_r+0xa9a>
 8007018:	46a8      	mov	r8, r5
 800701a:	9a00      	ldr	r2, [sp, #0]
 800701c:	f8cd b02c 	str.w	fp, [sp, #44]	; 0x2c
 8007020:	f002 0201 	and.w	r2, r2, #1
 8007024:	920a      	str	r2, [sp, #40]	; 0x28
 8007026:	9a09      	ldr	r2, [sp, #36]	; 0x24
 8007028:	f10b 33ff 	add.w	r3, fp, #4294967295	; 0xffffffff
 800702c:	441a      	add	r2, r3
 800702e:	465f      	mov	r7, fp
 8007030:	9209      	str	r2, [sp, #36]	; 0x24
 8007032:	46b3      	mov	fp, r6
 8007034:	4659      	mov	r1, fp
 8007036:	4650      	mov	r0, sl
 8007038:	f7ff fbdc 	bl	80067f4 <quorem>
 800703c:	4629      	mov	r1, r5
 800703e:	4604      	mov	r4, r0
 8007040:	4650      	mov	r0, sl
 8007042:	f001 fac5 	bl	80085d0 <__mcmp>
 8007046:	4659      	mov	r1, fp
 8007048:	4606      	mov	r6, r0
 800704a:	4642      	mov	r2, r8
 800704c:	4648      	mov	r0, r9
 800704e:	f001 fadb 	bl	8008608 <__mdiff>
 8007052:	f104 0330 	add.w	r3, r4, #48	; 0x30
 8007056:	9300      	str	r3, [sp, #0]
 8007058:	68c3      	ldr	r3, [r0, #12]
 800705a:	4601      	mov	r1, r0
 800705c:	2b00      	cmp	r3, #0
 800705e:	f040 81d4 	bne.w	800740a <_dtoa_r+0xaf2>
 8007062:	9008      	str	r0, [sp, #32]
 8007064:	4650      	mov	r0, sl
 8007066:	f001 fab3 	bl	80085d0 <__mcmp>
 800706a:	9a08      	ldr	r2, [sp, #32]
 800706c:	9007      	str	r0, [sp, #28]
 800706e:	4611      	mov	r1, r2
 8007070:	4648      	mov	r0, r9
 8007072:	f001 f8bd 	bl	80081f0 <_Bfree>
 8007076:	9b07      	ldr	r3, [sp, #28]
 8007078:	b933      	cbnz	r3, 8007088 <_dtoa_r+0x770>
 800707a:	9a02      	ldr	r2, [sp, #8]
 800707c:	b922      	cbnz	r2, 8007088 <_dtoa_r+0x770>
 800707e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 8007080:	2b00      	cmp	r3, #0
 8007082:	f000 8319 	beq.w	80076b8 <_dtoa_r+0xda0>
 8007086:	9b02      	ldr	r3, [sp, #8]
 8007088:	2e00      	cmp	r6, #0
 800708a:	f2c0 821c 	blt.w	80074c6 <_dtoa_r+0xbae>
 800708e:	d105      	bne.n	800709c <_dtoa_r+0x784>
 8007090:	9a02      	ldr	r2, [sp, #8]
 8007092:	b91a      	cbnz	r2, 800709c <_dtoa_r+0x784>
 8007094:	9a0a      	ldr	r2, [sp, #40]	; 0x28
 8007096:	2a00      	cmp	r2, #0
 8007098:	f000 8215 	beq.w	80074c6 <_dtoa_r+0xbae>
 800709c:	2b00      	cmp	r3, #0
 800709e:	f107 0401 	add.w	r4, r7, #1
 80070a2:	f300 8225 	bgt.w	80074f0 <_dtoa_r+0xbd8>
 80070a6:	9b00      	ldr	r3, [sp, #0]
 80070a8:	703b      	strb	r3, [r7, #0]
 80070aa:	9b09      	ldr	r3, [sp, #36]	; 0x24
 80070ac:	42bb      	cmp	r3, r7
 80070ae:	f000 8230 	beq.w	8007512 <_dtoa_r+0xbfa>
 80070b2:	4651      	mov	r1, sl
 80070b4:	2300      	movs	r3, #0
 80070b6:	220a      	movs	r2, #10
 80070b8:	4648      	mov	r0, r9
 80070ba:	f001 f8a3 	bl	8008204 <__multadd>
 80070be:	4545      	cmp	r5, r8
 80070c0:	4682      	mov	sl, r0
 80070c2:	4629      	mov	r1, r5
 80070c4:	f04f 0300 	mov.w	r3, #0
 80070c8:	f04f 020a 	mov.w	r2, #10
 80070cc:	4648      	mov	r0, r9
 80070ce:	f000 8196 	beq.w	80073fe <_dtoa_r+0xae6>
 80070d2:	f001 f897 	bl	8008204 <__multadd>
 80070d6:	4641      	mov	r1, r8
 80070d8:	4605      	mov	r5, r0
 80070da:	2300      	movs	r3, #0
 80070dc:	220a      	movs	r2, #10
 80070de:	4648      	mov	r0, r9
 80070e0:	f001 f890 	bl	8008204 <__multadd>
 80070e4:	4627      	mov	r7, r4
 80070e6:	4680      	mov	r8, r0
 80070e8:	e7a4      	b.n	8007034 <_dtoa_r+0x71c>
 80070ea:	4631      	mov	r1, r6
 80070ec:	4650      	mov	r0, sl
 80070ee:	f001 fa6f 	bl	80085d0 <__mcmp>
 80070f2:	2800      	cmp	r0, #0
 80070f4:	da81      	bge.n	8006ffa <_dtoa_r+0x6e2>
 80070f6:	9f06      	ldr	r7, [sp, #24]
 80070f8:	4651      	mov	r1, sl
 80070fa:	2300      	movs	r3, #0
 80070fc:	220a      	movs	r2, #10
 80070fe:	4648      	mov	r0, r9
 8007100:	3f01      	subs	r7, #1
 8007102:	9706      	str	r7, [sp, #24]
 8007104:	f001 f87e 	bl	8008204 <__multadd>
 8007108:	9b0a      	ldr	r3, [sp, #40]	; 0x28
 800710a:	4682      	mov	sl, r0
 800710c:	2b00      	cmp	r3, #0
 800710e:	f040 82eb 	bne.w	80076e8 <_dtoa_r+0xdd0>
 8007112:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007114:	2b00      	cmp	r3, #0
 8007116:	f340 82f3 	ble.w	8007700 <_dtoa_r+0xde8>
 800711a:	9309      	str	r3, [sp, #36]	; 0x24
 800711c:	465c      	mov	r4, fp
 800711e:	f8dd 8024 	ldr.w	r8, [sp, #36]	; 0x24
 8007122:	e002      	b.n	800712a <_dtoa_r+0x812>
 8007124:	f001 f86e 	bl	8008204 <__multadd>
 8007128:	4682      	mov	sl, r0
 800712a:	4631      	mov	r1, r6
 800712c:	4650      	mov	r0, sl
 800712e:	f7ff fb61 	bl	80067f4 <quorem>
 8007132:	f100 0730 	add.w	r7, r0, #48	; 0x30
 8007136:	f804 7b01 	strb.w	r7, [r4], #1
 800713a:	eba4 030b 	sub.w	r3, r4, fp
 800713e:	4598      	cmp	r8, r3
 8007140:	f04f 020a 	mov.w	r2, #10
 8007144:	f04f 0300 	mov.w	r3, #0
 8007148:	4651      	mov	r1, sl
 800714a:	4648      	mov	r0, r9
 800714c:	dcea      	bgt.n	8007124 <_dtoa_r+0x80c>
 800714e:	2300      	movs	r3, #0
 8007150:	9700      	str	r7, [sp, #0]
 8007152:	9302      	str	r3, [sp, #8]
 8007154:	4651      	mov	r1, sl
 8007156:	2201      	movs	r2, #1
 8007158:	4648      	mov	r0, r9
 800715a:	f001 f9e3 	bl	8008524 <__lshift>
 800715e:	4631      	mov	r1, r6
 8007160:	4682      	mov	sl, r0
 8007162:	f001 fa35 	bl	80085d0 <__mcmp>
 8007166:	2800      	cmp	r0, #0
 8007168:	f814 2c01 	ldrb.w	r2, [r4, #-1]
 800716c:	dc14      	bgt.n	8007198 <_dtoa_r+0x880>
 800716e:	d108      	bne.n	8007182 <_dtoa_r+0x86a>
 8007170:	9b00      	ldr	r3, [sp, #0]
 8007172:	07db      	lsls	r3, r3, #31
 8007174:	d410      	bmi.n	8007198 <_dtoa_r+0x880>
 8007176:	e004      	b.n	8007182 <_dtoa_r+0x86a>
 8007178:	40240000 	.word	0x40240000
 800717c:	f814 2c02 	ldrb.w	r2, [r4, #-2]
 8007180:	461c      	mov	r4, r3
 8007182:	2a30      	cmp	r2, #48	; 0x30
 8007184:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 8007188:	d0f8      	beq.n	800717c <_dtoa_r+0x864>
 800718a:	e00b      	b.n	80071a4 <_dtoa_r+0x88c>
 800718c:	459b      	cmp	fp, r3
 800718e:	f000 814e 	beq.w	800742e <_dtoa_r+0xb16>
 8007192:	f813 2c01 	ldrb.w	r2, [r3, #-1]
 8007196:	461c      	mov	r4, r3
 8007198:	2a39      	cmp	r2, #57	; 0x39
 800719a:	f104 33ff 	add.w	r3, r4, #4294967295	; 0xffffffff
 800719e:	d0f5      	beq.n	800718c <_dtoa_r+0x874>
 80071a0:	3201      	adds	r2, #1
 80071a2:	701a      	strb	r2, [r3, #0]
 80071a4:	4631      	mov	r1, r6
 80071a6:	4648      	mov	r0, r9
 80071a8:	f001 f822 	bl	80081f0 <_Bfree>
 80071ac:	b155      	cbz	r5, 80071c4 <_dtoa_r+0x8ac>
 80071ae:	9902      	ldr	r1, [sp, #8]
 80071b0:	b121      	cbz	r1, 80071bc <_dtoa_r+0x8a4>
 80071b2:	42a9      	cmp	r1, r5
 80071b4:	d002      	beq.n	80071bc <_dtoa_r+0x8a4>
 80071b6:	4648      	mov	r0, r9
 80071b8:	f001 f81a 	bl	80081f0 <_Bfree>
 80071bc:	4629      	mov	r1, r5
 80071be:	4648      	mov	r0, r9
 80071c0:	f001 f816 	bl	80081f0 <_Bfree>
 80071c4:	4651      	mov	r1, sl
 80071c6:	4648      	mov	r0, r9
 80071c8:	f001 f812 	bl	80081f0 <_Bfree>
 80071cc:	2200      	movs	r2, #0
 80071ce:	9b06      	ldr	r3, [sp, #24]
 80071d0:	7022      	strb	r2, [r4, #0]
 80071d2:	9a05      	ldr	r2, [sp, #20]
 80071d4:	3301      	adds	r3, #1
 80071d6:	6013      	str	r3, [r2, #0]
 80071d8:	9b25      	ldr	r3, [sp, #148]	; 0x94
 80071da:	2b00      	cmp	r3, #0
 80071dc:	f43f abdb 	beq.w	8006996 <_dtoa_r+0x7e>
 80071e0:	4658      	mov	r0, fp
 80071e2:	601c      	str	r4, [r3, #0]
 80071e4:	b01b      	add	sp, #108	; 0x6c
 80071e6:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 80071ea:	201c      	movs	r0, #28
 80071ec:	e6eb      	b.n	8006fc6 <_dtoa_r+0x6ae>
 80071ee:	4601      	mov	r1, r0
 80071f0:	4648      	mov	r0, r9
 80071f2:	f001 f947 	bl	8008484 <__pow5mult>
 80071f6:	9b02      	ldr	r3, [sp, #8]
 80071f8:	2b01      	cmp	r3, #1
 80071fa:	4606      	mov	r6, r0
 80071fc:	f340 80d4 	ble.w	80073a8 <_dtoa_r+0xa90>
 8007200:	2300      	movs	r3, #0
 8007202:	930c      	str	r3, [sp, #48]	; 0x30
 8007204:	6933      	ldr	r3, [r6, #16]
 8007206:	eb06 0383 	add.w	r3, r6, r3, lsl #2
 800720a:	6918      	ldr	r0, [r3, #16]
 800720c:	f001 f83a 	bl	8008284 <__hi0bits>
 8007210:	f1c0 0020 	rsb	r0, r0, #32
 8007214:	e6cb      	b.n	8006fae <_dtoa_r+0x696>
 8007216:	900d      	str	r0, [sp, #52]	; 0x34
 8007218:	e42a      	b.n	8006a70 <_dtoa_r+0x158>
 800721a:	2501      	movs	r5, #1
 800721c:	e440      	b.n	8006aa0 <_dtoa_r+0x188>
 800721e:	f1c3 0820 	rsb	r8, r3, #32
 8007222:	9b00      	ldr	r3, [sp, #0]
 8007224:	fa03 f008 	lsl.w	r0, r3, r8
 8007228:	f7ff bbd8 	b.w	80069dc <_dtoa_r+0xc4>
 800722c:	2300      	movs	r3, #0
 800722e:	930a      	str	r3, [sp, #40]	; 0x28
 8007230:	e9dd 3206 	ldrd	r3, r2, [sp, #24]
 8007234:	4413      	add	r3, r2
 8007236:	930e      	str	r3, [sp, #56]	; 0x38
 8007238:	3301      	adds	r3, #1
 800723a:	2b01      	cmp	r3, #1
 800723c:	461e      	mov	r6, r3
 800723e:	9309      	str	r3, [sp, #36]	; 0x24
 8007240:	bfb8      	it	lt
 8007242:	2601      	movlt	r6, #1
 8007244:	2100      	movs	r1, #0
 8007246:	2e17      	cmp	r6, #23
 8007248:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800724c:	9c09      	ldr	r4, [sp, #36]	; 0x24
 800724e:	f77f ac89 	ble.w	8006b64 <_dtoa_r+0x24c>
 8007252:	2201      	movs	r2, #1
 8007254:	2304      	movs	r3, #4
 8007256:	005b      	lsls	r3, r3, #1
 8007258:	f103 0014 	add.w	r0, r3, #20
 800725c:	42b0      	cmp	r0, r6
 800725e:	4611      	mov	r1, r2
 8007260:	f102 0201 	add.w	r2, r2, #1
 8007264:	d9f7      	bls.n	8007256 <_dtoa_r+0x93e>
 8007266:	f8c9 1044 	str.w	r1, [r9, #68]	; 0x44
 800726a:	e47b      	b.n	8006b64 <_dtoa_r+0x24c>
 800726c:	2300      	movs	r3, #0
 800726e:	930a      	str	r3, [sp, #40]	; 0x28
 8007270:	9e07      	ldr	r6, [sp, #28]
 8007272:	2e00      	cmp	r6, #0
 8007274:	f340 80e2 	ble.w	800743c <_dtoa_r+0xb24>
 8007278:	960e      	str	r6, [sp, #56]	; 0x38
 800727a:	9609      	str	r6, [sp, #36]	; 0x24
 800727c:	e7e2      	b.n	8007244 <_dtoa_r+0x92c>
 800727e:	2301      	movs	r3, #1
 8007280:	930a      	str	r3, [sp, #40]	; 0x28
 8007282:	e7f5      	b.n	8007270 <_dtoa_r+0x958>
 8007284:	9b00      	ldr	r3, [sp, #0]
 8007286:	2b00      	cmp	r3, #0
 8007288:	f47f ae90 	bne.w	8006fac <_dtoa_r+0x694>
 800728c:	e9dd 1200 	ldrd	r1, r2, [sp]
 8007290:	f3c2 0313 	ubfx	r3, r2, #0, #20
 8007294:	2b00      	cmp	r3, #0
 8007296:	f040 8192 	bne.w	80075be <_dtoa_r+0xca6>
 800729a:	f022 4300 	bic.w	r3, r2, #2147483648	; 0x80000000
 800729e:	0d1b      	lsrs	r3, r3, #20
 80072a0:	051b      	lsls	r3, r3, #20
 80072a2:	b12b      	cbz	r3, 80072b0 <_dtoa_r+0x998>
 80072a4:	9b08      	ldr	r3, [sp, #32]
 80072a6:	3301      	adds	r3, #1
 80072a8:	9308      	str	r3, [sp, #32]
 80072aa:	f108 0801 	add.w	r8, r8, #1
 80072ae:	2301      	movs	r3, #1
 80072b0:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80072b2:	930c      	str	r3, [sp, #48]	; 0x30
 80072b4:	2a00      	cmp	r2, #0
 80072b6:	f43f ae79 	beq.w	8006fac <_dtoa_r+0x694>
 80072ba:	e7a3      	b.n	8007204 <_dtoa_r+0x8ec>
 80072bc:	463a      	mov	r2, r7
 80072be:	4629      	mov	r1, r5
 80072c0:	4648      	mov	r0, r9
 80072c2:	f001 f8df 	bl	8008484 <__pow5mult>
 80072c6:	4652      	mov	r2, sl
 80072c8:	4601      	mov	r1, r0
 80072ca:	4605      	mov	r5, r0
 80072cc:	4648      	mov	r0, r9
 80072ce:	f001 f833 	bl	8008338 <__multiply>
 80072d2:	4651      	mov	r1, sl
 80072d4:	4607      	mov	r7, r0
 80072d6:	4648      	mov	r0, r9
 80072d8:	f000 ff8a 	bl	80081f0 <_Bfree>
 80072dc:	46ba      	mov	sl, r7
 80072de:	2e00      	cmp	r6, #0
 80072e0:	f43f ae57 	beq.w	8006f92 <_dtoa_r+0x67a>
 80072e4:	e64f      	b.n	8006f86 <_dtoa_r+0x66e>
 80072e6:	4629      	mov	r1, r5
 80072e8:	4622      	mov	r2, r4
 80072ea:	4648      	mov	r0, r9
 80072ec:	f001 f91a 	bl	8008524 <__lshift>
 80072f0:	4605      	mov	r5, r0
 80072f2:	e68d      	b.n	8007010 <_dtoa_r+0x6f8>
 80072f4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
 80072f6:	2a00      	cmp	r2, #0
 80072f8:	f000 815d 	beq.w	80075b6 <_dtoa_r+0xc9e>
 80072fc:	f203 4333 	addw	r3, r3, #1075	; 0x433
 8007300:	9a08      	ldr	r2, [sp, #32]
 8007302:	9f0b      	ldr	r7, [sp, #44]	; 0x2c
 8007304:	4614      	mov	r4, r2
 8007306:	441a      	add	r2, r3
 8007308:	4498      	add	r8, r3
 800730a:	9208      	str	r2, [sp, #32]
 800730c:	e5f7      	b.n	8006efe <_dtoa_r+0x5e6>
 800730e:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007310:	2b00      	cmp	r3, #0
 8007312:	f73f ad3e 	bgt.w	8006d92 <_dtoa_r+0x47a>
 8007316:	f040 80bc 	bne.w	8007492 <_dtoa_r+0xb7a>
 800731a:	ec51 0b17 	vmov	r0, r1, d7
 800731e:	2200      	movs	r2, #0
 8007320:	4bb2      	ldr	r3, [pc, #712]	; (80075ec <_dtoa_r+0xcd4>)
 8007322:	f7f9 fc89 	bl	8000c38 <__aeabi_dmul>
 8007326:	e9dd 2300 	ldrd	r2, r3, [sp]
 800732a:	f7f9 ff0b 	bl	8001144 <__aeabi_dcmpge>
 800732e:	9e09      	ldr	r6, [sp, #36]	; 0x24
 8007330:	4635      	mov	r5, r6
 8007332:	2800      	cmp	r0, #0
 8007334:	d176      	bne.n	8007424 <_dtoa_r+0xb0c>
 8007336:	9a06      	ldr	r2, [sp, #24]
 8007338:	2331      	movs	r3, #49	; 0x31
 800733a:	3201      	adds	r2, #1
 800733c:	9206      	str	r2, [sp, #24]
 800733e:	f88b 3000 	strb.w	r3, [fp]
 8007342:	f10b 0401 	add.w	r4, fp, #1
 8007346:	4631      	mov	r1, r6
 8007348:	4648      	mov	r0, r9
 800734a:	f000 ff51 	bl	80081f0 <_Bfree>
 800734e:	2d00      	cmp	r5, #0
 8007350:	f47f af34 	bne.w	80071bc <_dtoa_r+0x8a4>
 8007354:	e736      	b.n	80071c4 <_dtoa_r+0x8ac>
 8007356:	f000 8142 	beq.w	80075de <_dtoa_r+0xcc6>
 800735a:	9b06      	ldr	r3, [sp, #24]
 800735c:	425c      	negs	r4, r3
 800735e:	4ba4      	ldr	r3, [pc, #656]	; (80075f0 <_dtoa_r+0xcd8>)
 8007360:	f004 020f 	and.w	r2, r4, #15
 8007364:	eb03 03c2 	add.w	r3, r3, r2, lsl #3
 8007368:	e9d3 2300 	ldrd	r2, r3, [r3]
 800736c:	e9dd 0110 	ldrd	r0, r1, [sp, #64]	; 0x40
 8007370:	f7f9 fc62 	bl	8000c38 <__aeabi_dmul>
 8007374:	1124      	asrs	r4, r4, #4
 8007376:	e9cd 0100 	strd	r0, r1, [sp]
 800737a:	f000 81c6 	beq.w	800770a <_dtoa_r+0xdf2>
 800737e:	4d9d      	ldr	r5, [pc, #628]	; (80075f4 <_dtoa_r+0xcdc>)
 8007380:	2300      	movs	r3, #0
 8007382:	2602      	movs	r6, #2
 8007384:	07e7      	lsls	r7, r4, #31
 8007386:	d505      	bpl.n	8007394 <_dtoa_r+0xa7c>
 8007388:	e9d5 2300 	ldrd	r2, r3, [r5]
 800738c:	f7f9 fc54 	bl	8000c38 <__aeabi_dmul>
 8007390:	3601      	adds	r6, #1
 8007392:	2301      	movs	r3, #1
 8007394:	1064      	asrs	r4, r4, #1
 8007396:	f105 0508 	add.w	r5, r5, #8
 800739a:	d1f3      	bne.n	8007384 <_dtoa_r+0xa6c>
 800739c:	2b00      	cmp	r3, #0
 800739e:	f43f ac27 	beq.w	8006bf0 <_dtoa_r+0x2d8>
 80073a2:	e9cd 0100 	strd	r0, r1, [sp]
 80073a6:	e423      	b.n	8006bf0 <_dtoa_r+0x2d8>
 80073a8:	9b00      	ldr	r3, [sp, #0]
 80073aa:	2b00      	cmp	r3, #0
 80073ac:	f43f af6e 	beq.w	800728c <_dtoa_r+0x974>
 80073b0:	e726      	b.n	8007200 <_dtoa_r+0x8e8>
 80073b2:	6869      	ldr	r1, [r5, #4]
 80073b4:	4648      	mov	r0, r9
 80073b6:	f000 fef5 	bl	80081a4 <_Balloc>
 80073ba:	692b      	ldr	r3, [r5, #16]
 80073bc:	3302      	adds	r3, #2
 80073be:	009a      	lsls	r2, r3, #2
 80073c0:	4604      	mov	r4, r0
 80073c2:	f105 010c 	add.w	r1, r5, #12
 80073c6:	300c      	adds	r0, #12
 80073c8:	f7f9 f904 	bl	80005d4 <memcpy>
 80073cc:	4621      	mov	r1, r4
 80073ce:	2201      	movs	r2, #1
 80073d0:	4648      	mov	r0, r9
 80073d2:	f001 f8a7 	bl	8008524 <__lshift>
 80073d6:	4680      	mov	r8, r0
 80073d8:	e61f      	b.n	800701a <_dtoa_r+0x702>
 80073da:	2400      	movs	r4, #0
 80073dc:	f8c9 4044 	str.w	r4, [r9, #68]	; 0x44
 80073e0:	4621      	mov	r1, r4
 80073e2:	4648      	mov	r0, r9
 80073e4:	f000 fede 	bl	80081a4 <_Balloc>
 80073e8:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
 80073ec:	930e      	str	r3, [sp, #56]	; 0x38
 80073ee:	9309      	str	r3, [sp, #36]	; 0x24
 80073f0:	2301      	movs	r3, #1
 80073f2:	4683      	mov	fp, r0
 80073f4:	9407      	str	r4, [sp, #28]
 80073f6:	f8c9 0040 	str.w	r0, [r9, #64]	; 0x40
 80073fa:	930a      	str	r3, [sp, #40]	; 0x28
 80073fc:	e4b6      	b.n	8006d6c <_dtoa_r+0x454>
 80073fe:	f000 ff01 	bl	8008204 <__multadd>
 8007402:	4627      	mov	r7, r4
 8007404:	4605      	mov	r5, r0
 8007406:	4680      	mov	r8, r0
 8007408:	e614      	b.n	8007034 <_dtoa_r+0x71c>
 800740a:	4648      	mov	r0, r9
 800740c:	f000 fef0 	bl	80081f0 <_Bfree>
 8007410:	2301      	movs	r3, #1
 8007412:	e639      	b.n	8007088 <_dtoa_r+0x770>
 8007414:	9b02      	ldr	r3, [sp, #8]
 8007416:	2b02      	cmp	r3, #2
 8007418:	f77f adf3 	ble.w	8007002 <_dtoa_r+0x6ea>
 800741c:	9b09      	ldr	r3, [sp, #36]	; 0x24
 800741e:	2b00      	cmp	r3, #0
 8007420:	f000 80cf 	beq.w	80075c2 <_dtoa_r+0xcaa>
 8007424:	9b07      	ldr	r3, [sp, #28]
 8007426:	43db      	mvns	r3, r3
 8007428:	9306      	str	r3, [sp, #24]
 800742a:	465c      	mov	r4, fp
 800742c:	e78b      	b.n	8007346 <_dtoa_r+0xa2e>
 800742e:	9a06      	ldr	r2, [sp, #24]
 8007430:	2331      	movs	r3, #49	; 0x31
 8007432:	3201      	adds	r2, #1
 8007434:	9206      	str	r2, [sp, #24]
 8007436:	f88b 3000 	strb.w	r3, [fp]
 800743a:	e6b3      	b.n	80071a4 <_dtoa_r+0x88c>
 800743c:	2401      	movs	r4, #1
 800743e:	9409      	str	r4, [sp, #36]	; 0x24
 8007440:	9407      	str	r4, [sp, #28]
 8007442:	f7ff bb8b 	b.w	8006b5c <_dtoa_r+0x244>
 8007446:	4630      	mov	r0, r6
 8007448:	f7f9 fb8c 	bl	8000b64 <__aeabi_i2d>
 800744c:	e9dd 2300 	ldrd	r2, r3, [sp]
 8007450:	f7f9 fbf2 	bl	8000c38 <__aeabi_dmul>
 8007454:	2200      	movs	r2, #0
 8007456:	4b68      	ldr	r3, [pc, #416]	; (80075f8 <_dtoa_r+0xce0>)
 8007458:	f7f9 fa38 	bl	80008cc <__adddf3>
 800745c:	4606      	mov	r6, r0
 800745e:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007462:	2200      	movs	r2, #0
 8007464:	4b61      	ldr	r3, [pc, #388]	; (80075ec <_dtoa_r+0xcd4>)
 8007466:	e9dd 0100 	ldrd	r0, r1, [sp]
 800746a:	f7f9 fa2d 	bl	80008c8 <__aeabi_dsub>
 800746e:	4632      	mov	r2, r6
 8007470:	463b      	mov	r3, r7
 8007472:	4604      	mov	r4, r0
 8007474:	460d      	mov	r5, r1
 8007476:	f7f9 fe6f 	bl	8001158 <__aeabi_dcmpgt>
 800747a:	2800      	cmp	r0, #0
 800747c:	d14f      	bne.n	800751e <_dtoa_r+0xc06>
 800747e:	4632      	mov	r2, r6
 8007480:	f107 4300 	add.w	r3, r7, #2147483648	; 0x80000000
 8007484:	4620      	mov	r0, r4
 8007486:	4629      	mov	r1, r5
 8007488:	f7f9 fe48 	bl	800111c <__aeabi_dcmplt>
 800748c:	2800      	cmp	r0, #0
 800748e:	f43f ac69 	beq.w	8006d64 <_dtoa_r+0x44c>
 8007492:	2600      	movs	r6, #0
 8007494:	4635      	mov	r5, r6
 8007496:	e7c5      	b.n	8007424 <_dtoa_r+0xb0c>
 8007498:	2301      	movs	r3, #1
 800749a:	930a      	str	r3, [sp, #40]	; 0x28
 800749c:	e6c8      	b.n	8007230 <_dtoa_r+0x918>
 800749e:	4651      	mov	r1, sl
 80074a0:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
 80074a2:	4648      	mov	r0, r9
 80074a4:	f000 ffee 	bl	8008484 <__pow5mult>
 80074a8:	4682      	mov	sl, r0
 80074aa:	e572      	b.n	8006f92 <_dtoa_r+0x67a>
 80074ac:	f8dd a000 	ldr.w	sl, [sp]
 80074b0:	f8dd 901c 	ldr.w	r9, [sp, #28]
 80074b4:	e686      	b.n	80071c4 <_dtoa_r+0x8ac>
 80074b6:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
 80074b8:	9a0c      	ldr	r2, [sp, #48]	; 0x30
 80074ba:	1afb      	subs	r3, r7, r3
 80074bc:	441a      	add	r2, r3
 80074be:	e9cd 720b 	strd	r7, r2, [sp, #44]	; 0x2c
 80074c2:	2700      	movs	r7, #0
 80074c4:	e512      	b.n	8006eec <_dtoa_r+0x5d4>
 80074c6:	2b00      	cmp	r3, #0
 80074c8:	9402      	str	r4, [sp, #8]
 80074ca:	465e      	mov	r6, fp
 80074cc:	f107 0401 	add.w	r4, r7, #1
 80074d0:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80074d4:	f300 80ba 	bgt.w	800764c <_dtoa_r+0xd34>
 80074d8:	9b00      	ldr	r3, [sp, #0]
 80074da:	9502      	str	r5, [sp, #8]
 80074dc:	703b      	strb	r3, [r7, #0]
 80074de:	4645      	mov	r5, r8
 80074e0:	e660      	b.n	80071a4 <_dtoa_r+0x88c>
 80074e2:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80074e6:	2602      	movs	r6, #2
 80074e8:	ed8d 7b12 	vstr	d7, [sp, #72]	; 0x48
 80074ec:	f7ff bb67 	b.w	8006bbe <_dtoa_r+0x2a6>
 80074f0:	9b00      	ldr	r3, [sp, #0]
 80074f2:	2b39      	cmp	r3, #57	; 0x39
 80074f4:	465e      	mov	r6, fp
 80074f6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80074fa:	f000 80b9 	beq.w	8007670 <_dtoa_r+0xd58>
 80074fe:	9b00      	ldr	r3, [sp, #0]
 8007500:	9502      	str	r5, [sp, #8]
 8007502:	3301      	adds	r3, #1
 8007504:	703b      	strb	r3, [r7, #0]
 8007506:	4645      	mov	r5, r8
 8007508:	e64c      	b.n	80071a4 <_dtoa_r+0x88c>
 800750a:	e9dd 3208 	ldrd	r3, r2, [sp, #32]
 800750e:	1a9c      	subs	r4, r3, r2
 8007510:	e4f5      	b.n	8006efe <_dtoa_r+0x5e6>
 8007512:	465e      	mov	r6, fp
 8007514:	9502      	str	r5, [sp, #8]
 8007516:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 800751a:	4645      	mov	r5, r8
 800751c:	e61a      	b.n	8007154 <_dtoa_r+0x83c>
 800751e:	2600      	movs	r6, #0
 8007520:	4635      	mov	r5, r6
 8007522:	e708      	b.n	8007336 <_dtoa_r+0xa1e>
 8007524:	e9dd 2314 	ldrd	r2, r3, [sp, #80]	; 0x50
 8007528:	e9dd 0100 	ldrd	r0, r1, [sp]
 800752c:	f7f9 fb84 	bl	8000c38 <__aeabi_dmul>
 8007530:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8007532:	f88b 5000 	strb.w	r5, [fp]
 8007536:	2b01      	cmp	r3, #1
 8007538:	e9cd 0100 	strd	r0, r1, [sp]
 800753c:	d020      	beq.n	8007580 <_dtoa_r+0xc68>
 800753e:	9b12      	ldr	r3, [sp, #72]	; 0x48
 8007540:	f8cd 8048 	str.w	r8, [sp, #72]	; 0x48
 8007544:	445b      	add	r3, fp
 8007546:	4698      	mov	r8, r3
 8007548:	2200      	movs	r2, #0
 800754a:	4b2c      	ldr	r3, [pc, #176]	; (80075fc <_dtoa_r+0xce4>)
 800754c:	4630      	mov	r0, r6
 800754e:	4639      	mov	r1, r7
 8007550:	f7f9 fb72 	bl	8000c38 <__aeabi_dmul>
 8007554:	460f      	mov	r7, r1
 8007556:	4606      	mov	r6, r0
 8007558:	f7f9 fe1e 	bl	8001198 <__aeabi_d2iz>
 800755c:	4605      	mov	r5, r0
 800755e:	f7f9 fb01 	bl	8000b64 <__aeabi_i2d>
 8007562:	3530      	adds	r5, #48	; 0x30
 8007564:	4602      	mov	r2, r0
 8007566:	460b      	mov	r3, r1
 8007568:	4630      	mov	r0, r6
 800756a:	4639      	mov	r1, r7
 800756c:	f7f9 f9ac 	bl	80008c8 <__aeabi_dsub>
 8007570:	f804 5b01 	strb.w	r5, [r4], #1
 8007574:	4544      	cmp	r4, r8
 8007576:	4606      	mov	r6, r0
 8007578:	460f      	mov	r7, r1
 800757a:	d1e5      	bne.n	8007548 <_dtoa_r+0xc30>
 800757c:	f8dd 8048 	ldr.w	r8, [sp, #72]	; 0x48
 8007580:	4b1f      	ldr	r3, [pc, #124]	; (8007600 <_dtoa_r+0xce8>)
 8007582:	2200      	movs	r2, #0
 8007584:	e9dd 0100 	ldrd	r0, r1, [sp]
 8007588:	f7f9 f9a0 	bl	80008cc <__adddf3>
 800758c:	4632      	mov	r2, r6
 800758e:	463b      	mov	r3, r7
 8007590:	f7f9 fdc4 	bl	800111c <__aeabi_dcmplt>
 8007594:	2800      	cmp	r0, #0
 8007596:	d070      	beq.n	800767a <_dtoa_r+0xd62>
 8007598:	9b16      	ldr	r3, [sp, #88]	; 0x58
 800759a:	9306      	str	r3, [sp, #24]
 800759c:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80075a0:	e48f      	b.n	8006ec2 <_dtoa_r+0x5aa>
 80075a2:	2330      	movs	r3, #48	; 0x30
 80075a4:	f88b 3000 	strb.w	r3, [fp]
 80075a8:	9b06      	ldr	r3, [sp, #24]
 80075aa:	f814 5c01 	ldrb.w	r5, [r4, #-1]
 80075ae:	3301      	adds	r3, #1
 80075b0:	9306      	str	r3, [sp, #24]
 80075b2:	465b      	mov	r3, fp
 80075b4:	e489      	b.n	8006eca <_dtoa_r+0x5b2>
 80075b6:	9b18      	ldr	r3, [sp, #96]	; 0x60
 80075b8:	f1c3 0336 	rsb	r3, r3, #54	; 0x36
 80075bc:	e6a0      	b.n	8007300 <_dtoa_r+0x9e8>
 80075be:	2300      	movs	r3, #0
 80075c0:	e676      	b.n	80072b0 <_dtoa_r+0x998>
 80075c2:	4631      	mov	r1, r6
 80075c4:	2205      	movs	r2, #5
 80075c6:	4648      	mov	r0, r9
 80075c8:	f000 fe1c 	bl	8008204 <__multadd>
 80075cc:	4601      	mov	r1, r0
 80075ce:	4606      	mov	r6, r0
 80075d0:	4650      	mov	r0, sl
 80075d2:	f000 fffd 	bl	80085d0 <__mcmp>
 80075d6:	2800      	cmp	r0, #0
 80075d8:	f73f aead 	bgt.w	8007336 <_dtoa_r+0xa1e>
 80075dc:	e722      	b.n	8007424 <_dtoa_r+0xb0c>
 80075de:	ed9d 7b10 	vldr	d7, [sp, #64]	; 0x40
 80075e2:	2602      	movs	r6, #2
 80075e4:	ed8d 7b00 	vstr	d7, [sp]
 80075e8:	f7ff bb02 	b.w	8006bf0 <_dtoa_r+0x2d8>
 80075ec:	40140000 	.word	0x40140000
 80075f0:	080099d8 	.word	0x080099d8
 80075f4:	080099b0 	.word	0x080099b0
 80075f8:	401c0000 	.word	0x401c0000
 80075fc:	40240000 	.word	0x40240000
 8007600:	3fe00000 	.word	0x3fe00000
 8007604:	9b09      	ldr	r3, [sp, #36]	; 0x24
 8007606:	2b00      	cmp	r3, #0
 8007608:	f43f af1d 	beq.w	8007446 <_dtoa_r+0xb2e>
 800760c:	9c0e      	ldr	r4, [sp, #56]	; 0x38
 800760e:	2c00      	cmp	r4, #0
 8007610:	f77f aba8 	ble.w	8006d64 <_dtoa_r+0x44c>
 8007614:	2200      	movs	r2, #0
 8007616:	4b45      	ldr	r3, [pc, #276]	; (800772c <_dtoa_r+0xe14>)
 8007618:	e9dd 0100 	ldrd	r0, r1, [sp]
 800761c:	f7f9 fb0c 	bl	8000c38 <__aeabi_dmul>
 8007620:	e9cd 0100 	strd	r0, r1, [sp]
 8007624:	1c70      	adds	r0, r6, #1
 8007626:	f7f9 fa9d 	bl	8000b64 <__aeabi_i2d>
 800762a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800762e:	f7f9 fb03 	bl	8000c38 <__aeabi_dmul>
 8007632:	4b3f      	ldr	r3, [pc, #252]	; (8007730 <_dtoa_r+0xe18>)
 8007634:	2200      	movs	r2, #0
 8007636:	f7f9 f949 	bl	80008cc <__adddf3>
 800763a:	9b06      	ldr	r3, [sp, #24]
 800763c:	9412      	str	r4, [sp, #72]	; 0x48
 800763e:	3b01      	subs	r3, #1
 8007640:	4606      	mov	r6, r0
 8007642:	f1a1 7750 	sub.w	r7, r1, #54525952	; 0x3400000
 8007646:	9316      	str	r3, [sp, #88]	; 0x58
 8007648:	f7ff baf3 	b.w	8006c32 <_dtoa_r+0x31a>
 800764c:	4651      	mov	r1, sl
 800764e:	2201      	movs	r2, #1
 8007650:	4648      	mov	r0, r9
 8007652:	f000 ff67 	bl	8008524 <__lshift>
 8007656:	4631      	mov	r1, r6
 8007658:	4682      	mov	sl, r0
 800765a:	f000 ffb9 	bl	80085d0 <__mcmp>
 800765e:	2800      	cmp	r0, #0
 8007660:	dd3b      	ble.n	80076da <_dtoa_r+0xdc2>
 8007662:	9b00      	ldr	r3, [sp, #0]
 8007664:	2b39      	cmp	r3, #57	; 0x39
 8007666:	d003      	beq.n	8007670 <_dtoa_r+0xd58>
 8007668:	9b02      	ldr	r3, [sp, #8]
 800766a:	3331      	adds	r3, #49	; 0x31
 800766c:	9300      	str	r3, [sp, #0]
 800766e:	e733      	b.n	80074d8 <_dtoa_r+0xbc0>
 8007670:	2239      	movs	r2, #57	; 0x39
 8007672:	9502      	str	r5, [sp, #8]
 8007674:	703a      	strb	r2, [r7, #0]
 8007676:	4645      	mov	r5, r8
 8007678:	e58e      	b.n	8007198 <_dtoa_r+0x880>
 800767a:	e9dd 2300 	ldrd	r2, r3, [sp]
 800767e:	2000      	movs	r0, #0
 8007680:	492c      	ldr	r1, [pc, #176]	; (8007734 <_dtoa_r+0xe1c>)
 8007682:	f7f9 f921 	bl	80008c8 <__aeabi_dsub>
 8007686:	4632      	mov	r2, r6
 8007688:	463b      	mov	r3, r7
 800768a:	f7f9 fd65 	bl	8001158 <__aeabi_dcmpgt>
 800768e:	b910      	cbnz	r0, 8007696 <_dtoa_r+0xd7e>
 8007690:	f7ff bb68 	b.w	8006d64 <_dtoa_r+0x44c>
 8007694:	4614      	mov	r4, r2
 8007696:	f814 3c01 	ldrb.w	r3, [r4, #-1]
 800769a:	2b30      	cmp	r3, #48	; 0x30
 800769c:	f104 32ff 	add.w	r2, r4, #4294967295	; 0xffffffff
 80076a0:	d0f8      	beq.n	8007694 <_dtoa_r+0xd7c>
 80076a2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80076a4:	9306      	str	r3, [sp, #24]
 80076a6:	e58d      	b.n	80071c4 <_dtoa_r+0x8ac>
 80076a8:	46d9      	mov	r9, fp
 80076aa:	f8dd a048 	ldr.w	sl, [sp, #72]	; 0x48
 80076ae:	f8dd b050 	ldr.w	fp, [sp, #80]	; 0x50
 80076b2:	9b16      	ldr	r3, [sp, #88]	; 0x58
 80076b4:	9306      	str	r3, [sp, #24]
 80076b6:	e404      	b.n	8006ec2 <_dtoa_r+0x5aa>
 80076b8:	9b00      	ldr	r3, [sp, #0]
 80076ba:	2b39      	cmp	r3, #57	; 0x39
 80076bc:	4621      	mov	r1, r4
 80076be:	4632      	mov	r2, r6
 80076c0:	f107 0401 	add.w	r4, r7, #1
 80076c4:	465e      	mov	r6, fp
 80076c6:	f8dd b02c 	ldr.w	fp, [sp, #44]	; 0x2c
 80076ca:	d0d1      	beq.n	8007670 <_dtoa_r+0xd58>
 80076cc:	2a00      	cmp	r2, #0
 80076ce:	f77f af03 	ble.w	80074d8 <_dtoa_r+0xbc0>
 80076d2:	460b      	mov	r3, r1
 80076d4:	3331      	adds	r3, #49	; 0x31
 80076d6:	9300      	str	r3, [sp, #0]
 80076d8:	e6fe      	b.n	80074d8 <_dtoa_r+0xbc0>
 80076da:	f47f aefd 	bne.w	80074d8 <_dtoa_r+0xbc0>
 80076de:	9b00      	ldr	r3, [sp, #0]
 80076e0:	07da      	lsls	r2, r3, #31
 80076e2:	f57f aef9 	bpl.w	80074d8 <_dtoa_r+0xbc0>
 80076e6:	e7bc      	b.n	8007662 <_dtoa_r+0xd4a>
 80076e8:	4629      	mov	r1, r5
 80076ea:	2300      	movs	r3, #0
 80076ec:	220a      	movs	r2, #10
 80076ee:	4648      	mov	r0, r9
 80076f0:	f000 fd88 	bl	8008204 <__multadd>
 80076f4:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 80076f6:	2b00      	cmp	r3, #0
 80076f8:	4605      	mov	r5, r0
 80076fa:	dd09      	ble.n	8007710 <_dtoa_r+0xdf8>
 80076fc:	9309      	str	r3, [sp, #36]	; 0x24
 80076fe:	e484      	b.n	800700a <_dtoa_r+0x6f2>
 8007700:	9b02      	ldr	r3, [sp, #8]
 8007702:	2b02      	cmp	r3, #2
 8007704:	dc0e      	bgt.n	8007724 <_dtoa_r+0xe0c>
 8007706:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007708:	e507      	b.n	800711a <_dtoa_r+0x802>
 800770a:	2602      	movs	r6, #2
 800770c:	f7ff ba70 	b.w	8006bf0 <_dtoa_r+0x2d8>
 8007710:	9b02      	ldr	r3, [sp, #8]
 8007712:	2b02      	cmp	r3, #2
 8007714:	dc06      	bgt.n	8007724 <_dtoa_r+0xe0c>
 8007716:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007718:	e7f0      	b.n	80076fc <_dtoa_r+0xde4>
 800771a:	f43f ac59 	beq.w	8006fd0 <_dtoa_r+0x6b8>
 800771e:	f1c0 003c 	rsb	r0, r0, #60	; 0x3c
 8007722:	e450      	b.n	8006fc6 <_dtoa_r+0x6ae>
 8007724:	9b0e      	ldr	r3, [sp, #56]	; 0x38
 8007726:	9309      	str	r3, [sp, #36]	; 0x24
 8007728:	e678      	b.n	800741c <_dtoa_r+0xb04>
 800772a:	bf00      	nop
 800772c:	40240000 	.word	0x40240000
 8007730:	401c0000 	.word	0x401c0000
 8007734:	3fe00000 	.word	0x3fe00000

08007738 <__sflush_r>:
 8007738:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 800773c:	b29a      	uxth	r2, r3
 800773e:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8007742:	460c      	mov	r4, r1
 8007744:	0711      	lsls	r1, r2, #28
 8007746:	4680      	mov	r8, r0
 8007748:	d444      	bmi.n	80077d4 <__sflush_r+0x9c>
 800774a:	6862      	ldr	r2, [r4, #4]
 800774c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
 8007750:	2a00      	cmp	r2, #0
 8007752:	81a3      	strh	r3, [r4, #12]
 8007754:	dd59      	ble.n	800780a <__sflush_r+0xd2>
 8007756:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007758:	2d00      	cmp	r5, #0
 800775a:	d053      	beq.n	8007804 <__sflush_r+0xcc>
 800775c:	2200      	movs	r2, #0
 800775e:	b29b      	uxth	r3, r3
 8007760:	f8d8 6000 	ldr.w	r6, [r8]
 8007764:	69e1      	ldr	r1, [r4, #28]
 8007766:	f8c8 2000 	str.w	r2, [r8]
 800776a:	f413 5280 	ands.w	r2, r3, #4096	; 0x1000
 800776e:	f040 8083 	bne.w	8007878 <__sflush_r+0x140>
 8007772:	2301      	movs	r3, #1
 8007774:	4640      	mov	r0, r8
 8007776:	47a8      	blx	r5
 8007778:	1c42      	adds	r2, r0, #1
 800777a:	d04a      	beq.n	8007812 <__sflush_r+0xda>
 800777c:	89a3      	ldrh	r3, [r4, #12]
 800777e:	6aa5      	ldr	r5, [r4, #40]	; 0x28
 8007780:	69e1      	ldr	r1, [r4, #28]
 8007782:	075b      	lsls	r3, r3, #29
 8007784:	d505      	bpl.n	8007792 <__sflush_r+0x5a>
 8007786:	6862      	ldr	r2, [r4, #4]
 8007788:	6b23      	ldr	r3, [r4, #48]	; 0x30
 800778a:	1a80      	subs	r0, r0, r2
 800778c:	b10b      	cbz	r3, 8007792 <__sflush_r+0x5a>
 800778e:	6be3      	ldr	r3, [r4, #60]	; 0x3c
 8007790:	1ac0      	subs	r0, r0, r3
 8007792:	4602      	mov	r2, r0
 8007794:	2300      	movs	r3, #0
 8007796:	4640      	mov	r0, r8
 8007798:	47a8      	blx	r5
 800779a:	1c47      	adds	r7, r0, #1
 800779c:	d045      	beq.n	800782a <__sflush_r+0xf2>
 800779e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80077a2:	6922      	ldr	r2, [r4, #16]
 80077a4:	6022      	str	r2, [r4, #0]
 80077a6:	f423 6300 	bic.w	r3, r3, #2048	; 0x800
 80077aa:	2200      	movs	r2, #0
 80077ac:	81a3      	strh	r3, [r4, #12]
 80077ae:	04db      	lsls	r3, r3, #19
 80077b0:	6062      	str	r2, [r4, #4]
 80077b2:	d500      	bpl.n	80077b6 <__sflush_r+0x7e>
 80077b4:	6520      	str	r0, [r4, #80]	; 0x50
 80077b6:	6b21      	ldr	r1, [r4, #48]	; 0x30
 80077b8:	f8c8 6000 	str.w	r6, [r8]
 80077bc:	b311      	cbz	r1, 8007804 <__sflush_r+0xcc>
 80077be:	f104 0340 	add.w	r3, r4, #64	; 0x40
 80077c2:	4299      	cmp	r1, r3
 80077c4:	d002      	beq.n	80077cc <__sflush_r+0x94>
 80077c6:	4640      	mov	r0, r8
 80077c8:	f000 f95e 	bl	8007a88 <_free_r>
 80077cc:	2000      	movs	r0, #0
 80077ce:	6320      	str	r0, [r4, #48]	; 0x30
 80077d0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80077d4:	6926      	ldr	r6, [r4, #16]
 80077d6:	b1ae      	cbz	r6, 8007804 <__sflush_r+0xcc>
 80077d8:	6825      	ldr	r5, [r4, #0]
 80077da:	6026      	str	r6, [r4, #0]
 80077dc:	0792      	lsls	r2, r2, #30
 80077de:	bf0c      	ite	eq
 80077e0:	6963      	ldreq	r3, [r4, #20]
 80077e2:	2300      	movne	r3, #0
 80077e4:	1bad      	subs	r5, r5, r6
 80077e6:	60a3      	str	r3, [r4, #8]
 80077e8:	e00a      	b.n	8007800 <__sflush_r+0xc8>
 80077ea:	462b      	mov	r3, r5
 80077ec:	4632      	mov	r2, r6
 80077ee:	6a67      	ldr	r7, [r4, #36]	; 0x24
 80077f0:	69e1      	ldr	r1, [r4, #28]
 80077f2:	4640      	mov	r0, r8
 80077f4:	47b8      	blx	r7
 80077f6:	2800      	cmp	r0, #0
 80077f8:	eba5 0500 	sub.w	r5, r5, r0
 80077fc:	4406      	add	r6, r0
 80077fe:	dd2b      	ble.n	8007858 <__sflush_r+0x120>
 8007800:	2d00      	cmp	r5, #0
 8007802:	dcf2      	bgt.n	80077ea <__sflush_r+0xb2>
 8007804:	2000      	movs	r0, #0
 8007806:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 800780a:	6be2      	ldr	r2, [r4, #60]	; 0x3c
 800780c:	2a00      	cmp	r2, #0
 800780e:	dca2      	bgt.n	8007756 <__sflush_r+0x1e>
 8007810:	e7f8      	b.n	8007804 <__sflush_r+0xcc>
 8007812:	f8d8 3000 	ldr.w	r3, [r8]
 8007816:	2b00      	cmp	r3, #0
 8007818:	d0b0      	beq.n	800777c <__sflush_r+0x44>
 800781a:	2b1d      	cmp	r3, #29
 800781c:	d001      	beq.n	8007822 <__sflush_r+0xea>
 800781e:	2b16      	cmp	r3, #22
 8007820:	d12c      	bne.n	800787c <__sflush_r+0x144>
 8007822:	f8c8 6000 	str.w	r6, [r8]
 8007826:	2000      	movs	r0, #0
 8007828:	e7ed      	b.n	8007806 <__sflush_r+0xce>
 800782a:	f8d8 1000 	ldr.w	r1, [r8]
 800782e:	291d      	cmp	r1, #29
 8007830:	d81a      	bhi.n	8007868 <__sflush_r+0x130>
 8007832:	4b15      	ldr	r3, [pc, #84]	; (8007888 <__sflush_r+0x150>)
 8007834:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8007838:	40cb      	lsrs	r3, r1
 800783a:	43db      	mvns	r3, r3
 800783c:	f013 0301 	ands.w	r3, r3, #1
 8007840:	d114      	bne.n	800786c <__sflush_r+0x134>
 8007842:	6925      	ldr	r5, [r4, #16]
 8007844:	f422 6200 	bic.w	r2, r2, #2048	; 0x800
 8007848:	e9c4 5300 	strd	r5, r3, [r4]
 800784c:	04d5      	lsls	r5, r2, #19
 800784e:	81a2      	strh	r2, [r4, #12]
 8007850:	d5b1      	bpl.n	80077b6 <__sflush_r+0x7e>
 8007852:	2900      	cmp	r1, #0
 8007854:	d1af      	bne.n	80077b6 <__sflush_r+0x7e>
 8007856:	e7ad      	b.n	80077b4 <__sflush_r+0x7c>
 8007858:	89a3      	ldrh	r3, [r4, #12]
 800785a:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 800785e:	81a3      	strh	r3, [r4, #12]
 8007860:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007864:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 8007868:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 800786c:	f042 0240 	orr.w	r2, r2, #64	; 0x40
 8007870:	81a2      	strh	r2, [r4, #12]
 8007872:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007876:	e7c6      	b.n	8007806 <__sflush_r+0xce>
 8007878:	6d20      	ldr	r0, [r4, #80]	; 0x50
 800787a:	e782      	b.n	8007782 <__sflush_r+0x4a>
 800787c:	89a3      	ldrh	r3, [r4, #12]
 800787e:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007882:	81a3      	strh	r3, [r4, #12]
 8007884:	e7bf      	b.n	8007806 <__sflush_r+0xce>
 8007886:	bf00      	nop
 8007888:	20400001 	.word	0x20400001

0800788c <_fflush_r>:
 800788c:	b538      	push	{r3, r4, r5, lr}
 800788e:	460d      	mov	r5, r1
 8007890:	4604      	mov	r4, r0
 8007892:	b108      	cbz	r0, 8007898 <_fflush_r+0xc>
 8007894:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8007896:	b1a3      	cbz	r3, 80078c2 <_fflush_r+0x36>
 8007898:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 800789c:	b1b8      	cbz	r0, 80078ce <_fflush_r+0x42>
 800789e:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80078a0:	07db      	lsls	r3, r3, #31
 80078a2:	d401      	bmi.n	80078a8 <_fflush_r+0x1c>
 80078a4:	0581      	lsls	r1, r0, #22
 80078a6:	d51a      	bpl.n	80078de <_fflush_r+0x52>
 80078a8:	4620      	mov	r0, r4
 80078aa:	4629      	mov	r1, r5
 80078ac:	f7ff ff44 	bl	8007738 <__sflush_r>
 80078b0:	6e6b      	ldr	r3, [r5, #100]	; 0x64
 80078b2:	07da      	lsls	r2, r3, #31
 80078b4:	4604      	mov	r4, r0
 80078b6:	d402      	bmi.n	80078be <_fflush_r+0x32>
 80078b8:	89ab      	ldrh	r3, [r5, #12]
 80078ba:	059b      	lsls	r3, r3, #22
 80078bc:	d50a      	bpl.n	80078d4 <_fflush_r+0x48>
 80078be:	4620      	mov	r0, r4
 80078c0:	bd38      	pop	{r3, r4, r5, pc}
 80078c2:	f000 f83f 	bl	8007944 <__sinit>
 80078c6:	f9b5 000c 	ldrsh.w	r0, [r5, #12]
 80078ca:	2800      	cmp	r0, #0
 80078cc:	d1e7      	bne.n	800789e <_fflush_r+0x12>
 80078ce:	4604      	mov	r4, r0
 80078d0:	4620      	mov	r0, r4
 80078d2:	bd38      	pop	{r3, r4, r5, pc}
 80078d4:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80078d6:	f000 fb87 	bl	8007fe8 <__retarget_lock_release_recursive>
 80078da:	4620      	mov	r0, r4
 80078dc:	bd38      	pop	{r3, r4, r5, pc}
 80078de:	6da8      	ldr	r0, [r5, #88]	; 0x58
 80078e0:	f000 fb80 	bl	8007fe4 <__retarget_lock_acquire_recursive>
 80078e4:	e7e0      	b.n	80078a8 <_fflush_r+0x1c>
 80078e6:	bf00      	nop

080078e8 <std>:
 80078e8:	b510      	push	{r4, lr}
 80078ea:	2300      	movs	r3, #0
 80078ec:	4604      	mov	r4, r0
 80078ee:	8181      	strh	r1, [r0, #12]
 80078f0:	81c2      	strh	r2, [r0, #14]
 80078f2:	e9c0 3300 	strd	r3, r3, [r0]
 80078f6:	6083      	str	r3, [r0, #8]
 80078f8:	6643      	str	r3, [r0, #100]	; 0x64
 80078fa:	e9c0 3304 	strd	r3, r3, [r0, #16]
 80078fe:	6183      	str	r3, [r0, #24]
 8007900:	4619      	mov	r1, r3
 8007902:	2208      	movs	r2, #8
 8007904:	305c      	adds	r0, #92	; 0x5c
 8007906:	f7fd f8ad 	bl	8004a64 <memset>
 800790a:	4807      	ldr	r0, [pc, #28]	; (8007928 <std+0x40>)
 800790c:	4907      	ldr	r1, [pc, #28]	; (800792c <std+0x44>)
 800790e:	4a08      	ldr	r2, [pc, #32]	; (8007930 <std+0x48>)
 8007910:	4b08      	ldr	r3, [pc, #32]	; (8007934 <std+0x4c>)
 8007912:	62e3      	str	r3, [r4, #44]	; 0x2c
 8007914:	e9c4 4007 	strd	r4, r0, [r4, #28]
 8007918:	e9c4 1209 	strd	r1, r2, [r4, #36]	; 0x24
 800791c:	f104 0058 	add.w	r0, r4, #88	; 0x58
 8007920:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 8007924:	f000 bb5a 	b.w	8007fdc <__retarget_lock_init_recursive>
 8007928:	08008b7d 	.word	0x08008b7d
 800792c:	08008ba1 	.word	0x08008ba1
 8007930:	08008bdd 	.word	0x08008bdd
 8007934:	08008bfd 	.word	0x08008bfd

08007938 <_cleanup_r>:
 8007938:	4901      	ldr	r1, [pc, #4]	; (8007940 <_cleanup_r+0x8>)
 800793a:	f000 bb17 	b.w	8007f6c <_fwalk_reent>
 800793e:	bf00      	nop
 8007940:	08008e05 	.word	0x08008e05

08007944 <__sinit>:
 8007944:	b510      	push	{r4, lr}
 8007946:	4604      	mov	r4, r0
 8007948:	4812      	ldr	r0, [pc, #72]	; (8007994 <__sinit+0x50>)
 800794a:	f000 fb4b 	bl	8007fe4 <__retarget_lock_acquire_recursive>
 800794e:	6ba2      	ldr	r2, [r4, #56]	; 0x38
 8007950:	b9d2      	cbnz	r2, 8007988 <__sinit+0x44>
 8007952:	f504 733b 	add.w	r3, r4, #748	; 0x2ec
 8007956:	4810      	ldr	r0, [pc, #64]	; (8007998 <__sinit+0x54>)
 8007958:	f8c4 32e8 	str.w	r3, [r4, #744]	; 0x2e8
 800795c:	2103      	movs	r1, #3
 800795e:	f8c4 22e0 	str.w	r2, [r4, #736]	; 0x2e0
 8007962:	63e0      	str	r0, [r4, #60]	; 0x3c
 8007964:	f8c4 12e4 	str.w	r1, [r4, #740]	; 0x2e4
 8007968:	6860      	ldr	r0, [r4, #4]
 800796a:	2104      	movs	r1, #4
 800796c:	f7ff ffbc 	bl	80078e8 <std>
 8007970:	2201      	movs	r2, #1
 8007972:	2109      	movs	r1, #9
 8007974:	68a0      	ldr	r0, [r4, #8]
 8007976:	f7ff ffb7 	bl	80078e8 <std>
 800797a:	2202      	movs	r2, #2
 800797c:	2112      	movs	r1, #18
 800797e:	68e0      	ldr	r0, [r4, #12]
 8007980:	f7ff ffb2 	bl	80078e8 <std>
 8007984:	2301      	movs	r3, #1
 8007986:	63a3      	str	r3, [r4, #56]	; 0x38
 8007988:	4802      	ldr	r0, [pc, #8]	; (8007994 <__sinit+0x50>)
 800798a:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
 800798e:	f000 bb2b 	b.w	8007fe8 <__retarget_lock_release_recursive>
 8007992:	bf00      	nop
 8007994:	20000b24 	.word	0x20000b24
 8007998:	08007939 	.word	0x08007939

0800799c <__sfp_lock_acquire>:
 800799c:	4801      	ldr	r0, [pc, #4]	; (80079a4 <__sfp_lock_acquire+0x8>)
 800799e:	f000 bb21 	b.w	8007fe4 <__retarget_lock_acquire_recursive>
 80079a2:	bf00      	nop
 80079a4:	20000b38 	.word	0x20000b38

080079a8 <__sfp_lock_release>:
 80079a8:	4801      	ldr	r0, [pc, #4]	; (80079b0 <__sfp_lock_release+0x8>)
 80079aa:	f000 bb1d 	b.w	8007fe8 <__retarget_lock_release_recursive>
 80079ae:	bf00      	nop
 80079b0:	20000b38 	.word	0x20000b38

080079b4 <__libc_fini_array>:
 80079b4:	b538      	push	{r3, r4, r5, lr}
 80079b6:	4c0a      	ldr	r4, [pc, #40]	; (80079e0 <__libc_fini_array+0x2c>)
 80079b8:	4d0a      	ldr	r5, [pc, #40]	; (80079e4 <__libc_fini_array+0x30>)
 80079ba:	1b64      	subs	r4, r4, r5
 80079bc:	10a4      	asrs	r4, r4, #2
 80079be:	d00a      	beq.n	80079d6 <__libc_fini_array+0x22>
 80079c0:	f104 4380 	add.w	r3, r4, #1073741824	; 0x40000000
 80079c4:	3b01      	subs	r3, #1
 80079c6:	eb05 0583 	add.w	r5, r5, r3, lsl #2
 80079ca:	3c01      	subs	r4, #1
 80079cc:	f855 3904 	ldr.w	r3, [r5], #-4
 80079d0:	4798      	blx	r3
 80079d2:	2c00      	cmp	r4, #0
 80079d4:	d1f9      	bne.n	80079ca <__libc_fini_array+0x16>
 80079d6:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
 80079da:	f001 bc07 	b.w	80091ec <_fini>
 80079de:	bf00      	nop
 80079e0:	08009bd4 	.word	0x08009bd4
 80079e4:	08009bd0 	.word	0x08009bd0

080079e8 <_malloc_trim_r>:
 80079e8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80079ea:	4f24      	ldr	r7, [pc, #144]	; (8007a7c <_malloc_trim_r+0x94>)
 80079ec:	460c      	mov	r4, r1
 80079ee:	4606      	mov	r6, r0
 80079f0:	f7fd f882 	bl	8004af8 <__malloc_lock>
 80079f4:	68bb      	ldr	r3, [r7, #8]
 80079f6:	685d      	ldr	r5, [r3, #4]
 80079f8:	f5c4 617e 	rsb	r1, r4, #4064	; 0xfe0
 80079fc:	310f      	adds	r1, #15
 80079fe:	f025 0503 	bic.w	r5, r5, #3
 8007a02:	4429      	add	r1, r5
 8007a04:	f421 617f 	bic.w	r1, r1, #4080	; 0xff0
 8007a08:	f021 010f 	bic.w	r1, r1, #15
 8007a0c:	f5a1 5480 	sub.w	r4, r1, #4096	; 0x1000
 8007a10:	f5b4 5f80 	cmp.w	r4, #4096	; 0x1000
 8007a14:	db07      	blt.n	8007a26 <_malloc_trim_r+0x3e>
 8007a16:	2100      	movs	r1, #0
 8007a18:	4630      	mov	r0, r6
 8007a1a:	f7fd f8e3 	bl	8004be4 <_sbrk_r>
 8007a1e:	68bb      	ldr	r3, [r7, #8]
 8007a20:	442b      	add	r3, r5
 8007a22:	4298      	cmp	r0, r3
 8007a24:	d004      	beq.n	8007a30 <_malloc_trim_r+0x48>
 8007a26:	4630      	mov	r0, r6
 8007a28:	f7fd f86c 	bl	8004b04 <__malloc_unlock>
 8007a2c:	2000      	movs	r0, #0
 8007a2e:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007a30:	4261      	negs	r1, r4
 8007a32:	4630      	mov	r0, r6
 8007a34:	f7fd f8d6 	bl	8004be4 <_sbrk_r>
 8007a38:	3001      	adds	r0, #1
 8007a3a:	d00d      	beq.n	8007a58 <_malloc_trim_r+0x70>
 8007a3c:	4b10      	ldr	r3, [pc, #64]	; (8007a80 <_malloc_trim_r+0x98>)
 8007a3e:	68ba      	ldr	r2, [r7, #8]
 8007a40:	6819      	ldr	r1, [r3, #0]
 8007a42:	1b2d      	subs	r5, r5, r4
 8007a44:	f045 0501 	orr.w	r5, r5, #1
 8007a48:	4630      	mov	r0, r6
 8007a4a:	1b09      	subs	r1, r1, r4
 8007a4c:	6055      	str	r5, [r2, #4]
 8007a4e:	6019      	str	r1, [r3, #0]
 8007a50:	f7fd f858 	bl	8004b04 <__malloc_unlock>
 8007a54:	2001      	movs	r0, #1
 8007a56:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 8007a58:	2100      	movs	r1, #0
 8007a5a:	4630      	mov	r0, r6
 8007a5c:	f7fd f8c2 	bl	8004be4 <_sbrk_r>
 8007a60:	68ba      	ldr	r2, [r7, #8]
 8007a62:	1a83      	subs	r3, r0, r2
 8007a64:	2b0f      	cmp	r3, #15
 8007a66:	ddde      	ble.n	8007a26 <_malloc_trim_r+0x3e>
 8007a68:	4c06      	ldr	r4, [pc, #24]	; (8007a84 <_malloc_trim_r+0x9c>)
 8007a6a:	4905      	ldr	r1, [pc, #20]	; (8007a80 <_malloc_trim_r+0x98>)
 8007a6c:	6824      	ldr	r4, [r4, #0]
 8007a6e:	f043 0301 	orr.w	r3, r3, #1
 8007a72:	1b00      	subs	r0, r0, r4
 8007a74:	6053      	str	r3, [r2, #4]
 8007a76:	6008      	str	r0, [r1, #0]
 8007a78:	e7d5      	b.n	8007a26 <_malloc_trim_r+0x3e>
 8007a7a:	bf00      	nop
 8007a7c:	20000448 	.word	0x20000448
 8007a80:	20000a74 	.word	0x20000a74
 8007a84:	20000850 	.word	0x20000850

08007a88 <_free_r>:
 8007a88:	2900      	cmp	r1, #0
 8007a8a:	d053      	beq.n	8007b34 <_free_r+0xac>
 8007a8c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8007a8e:	460c      	mov	r4, r1
 8007a90:	4606      	mov	r6, r0
 8007a92:	f7fd f831 	bl	8004af8 <__malloc_lock>
 8007a96:	f854 cc04 	ldr.w	ip, [r4, #-4]
 8007a9a:	4f71      	ldr	r7, [pc, #452]	; (8007c60 <_free_r+0x1d8>)
 8007a9c:	f02c 0101 	bic.w	r1, ip, #1
 8007aa0:	f1a4 0508 	sub.w	r5, r4, #8
 8007aa4:	186b      	adds	r3, r5, r1
 8007aa6:	68b8      	ldr	r0, [r7, #8]
 8007aa8:	685a      	ldr	r2, [r3, #4]
 8007aaa:	4298      	cmp	r0, r3
 8007aac:	f022 0203 	bic.w	r2, r2, #3
 8007ab0:	d053      	beq.n	8007b5a <_free_r+0xd2>
 8007ab2:	f01c 0f01 	tst.w	ip, #1
 8007ab6:	605a      	str	r2, [r3, #4]
 8007ab8:	eb03 0002 	add.w	r0, r3, r2
 8007abc:	d13b      	bne.n	8007b36 <_free_r+0xae>
 8007abe:	f854 cc08 	ldr.w	ip, [r4, #-8]
 8007ac2:	6840      	ldr	r0, [r0, #4]
 8007ac4:	eba5 050c 	sub.w	r5, r5, ip
 8007ac8:	f107 0e08 	add.w	lr, r7, #8
 8007acc:	68ac      	ldr	r4, [r5, #8]
 8007ace:	4574      	cmp	r4, lr
 8007ad0:	4461      	add	r1, ip
 8007ad2:	f000 0001 	and.w	r0, r0, #1
 8007ad6:	d075      	beq.n	8007bc4 <_free_r+0x13c>
 8007ad8:	f8d5 c00c 	ldr.w	ip, [r5, #12]
 8007adc:	f8c4 c00c 	str.w	ip, [r4, #12]
 8007ae0:	f8cc 4008 	str.w	r4, [ip, #8]
 8007ae4:	b360      	cbz	r0, 8007b40 <_free_r+0xb8>
 8007ae6:	f041 0301 	orr.w	r3, r1, #1
 8007aea:	606b      	str	r3, [r5, #4]
 8007aec:	5069      	str	r1, [r5, r1]
 8007aee:	f5b1 7f00 	cmp.w	r1, #512	; 0x200
 8007af2:	d350      	bcc.n	8007b96 <_free_r+0x10e>
 8007af4:	0a4b      	lsrs	r3, r1, #9
 8007af6:	2b04      	cmp	r3, #4
 8007af8:	d870      	bhi.n	8007bdc <_free_r+0x154>
 8007afa:	098b      	lsrs	r3, r1, #6
 8007afc:	f103 0439 	add.w	r4, r3, #57	; 0x39
 8007b00:	00e4      	lsls	r4, r4, #3
 8007b02:	f103 0238 	add.w	r2, r3, #56	; 0x38
 8007b06:	1938      	adds	r0, r7, r4
 8007b08:	593b      	ldr	r3, [r7, r4]
 8007b0a:	3808      	subs	r0, #8
 8007b0c:	4298      	cmp	r0, r3
 8007b0e:	d078      	beq.n	8007c02 <_free_r+0x17a>
 8007b10:	685a      	ldr	r2, [r3, #4]
 8007b12:	f022 0203 	bic.w	r2, r2, #3
 8007b16:	428a      	cmp	r2, r1
 8007b18:	d971      	bls.n	8007bfe <_free_r+0x176>
 8007b1a:	689b      	ldr	r3, [r3, #8]
 8007b1c:	4298      	cmp	r0, r3
 8007b1e:	d1f7      	bne.n	8007b10 <_free_r+0x88>
 8007b20:	68c3      	ldr	r3, [r0, #12]
 8007b22:	e9c5 0302 	strd	r0, r3, [r5, #8]
 8007b26:	609d      	str	r5, [r3, #8]
 8007b28:	60c5      	str	r5, [r0, #12]
 8007b2a:	4630      	mov	r0, r6
 8007b2c:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8007b30:	f7fc bfe8 	b.w	8004b04 <__malloc_unlock>
 8007b34:	4770      	bx	lr
 8007b36:	6840      	ldr	r0, [r0, #4]
 8007b38:	f000 0001 	and.w	r0, r0, #1
 8007b3c:	2800      	cmp	r0, #0
 8007b3e:	d1d2      	bne.n	8007ae6 <_free_r+0x5e>
 8007b40:	6898      	ldr	r0, [r3, #8]
 8007b42:	4c48      	ldr	r4, [pc, #288]	; (8007c64 <_free_r+0x1dc>)
 8007b44:	4411      	add	r1, r2
 8007b46:	42a0      	cmp	r0, r4
 8007b48:	f041 0201 	orr.w	r2, r1, #1
 8007b4c:	d062      	beq.n	8007c14 <_free_r+0x18c>
 8007b4e:	68db      	ldr	r3, [r3, #12]
 8007b50:	60c3      	str	r3, [r0, #12]
 8007b52:	6098      	str	r0, [r3, #8]
 8007b54:	606a      	str	r2, [r5, #4]
 8007b56:	5069      	str	r1, [r5, r1]
 8007b58:	e7c9      	b.n	8007aee <_free_r+0x66>
 8007b5a:	f01c 0f01 	tst.w	ip, #1
 8007b5e:	440a      	add	r2, r1
 8007b60:	d107      	bne.n	8007b72 <_free_r+0xea>
 8007b62:	f854 3c08 	ldr.w	r3, [r4, #-8]
 8007b66:	1aed      	subs	r5, r5, r3
 8007b68:	441a      	add	r2, r3
 8007b6a:	e9d5 1302 	ldrd	r1, r3, [r5, #8]
 8007b6e:	60cb      	str	r3, [r1, #12]
 8007b70:	6099      	str	r1, [r3, #8]
 8007b72:	4b3d      	ldr	r3, [pc, #244]	; (8007c68 <_free_r+0x1e0>)
 8007b74:	681b      	ldr	r3, [r3, #0]
 8007b76:	f042 0101 	orr.w	r1, r2, #1
 8007b7a:	4293      	cmp	r3, r2
 8007b7c:	6069      	str	r1, [r5, #4]
 8007b7e:	60bd      	str	r5, [r7, #8]
 8007b80:	d804      	bhi.n	8007b8c <_free_r+0x104>
 8007b82:	4b3a      	ldr	r3, [pc, #232]	; (8007c6c <_free_r+0x1e4>)
 8007b84:	4630      	mov	r0, r6
 8007b86:	6819      	ldr	r1, [r3, #0]
 8007b88:	f7ff ff2e 	bl	80079e8 <_malloc_trim_r>
 8007b8c:	4630      	mov	r0, r6
 8007b8e:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8007b92:	f7fc bfb7 	b.w	8004b04 <__malloc_unlock>
 8007b96:	08c9      	lsrs	r1, r1, #3
 8007b98:	6878      	ldr	r0, [r7, #4]
 8007b9a:	1c4a      	adds	r2, r1, #1
 8007b9c:	2301      	movs	r3, #1
 8007b9e:	1089      	asrs	r1, r1, #2
 8007ba0:	408b      	lsls	r3, r1
 8007ba2:	4303      	orrs	r3, r0
 8007ba4:	eb07 01c2 	add.w	r1, r7, r2, lsl #3
 8007ba8:	f857 0032 	ldr.w	r0, [r7, r2, lsl #3]
 8007bac:	607b      	str	r3, [r7, #4]
 8007bae:	3908      	subs	r1, #8
 8007bb0:	e9c5 0102 	strd	r0, r1, [r5, #8]
 8007bb4:	f847 5032 	str.w	r5, [r7, r2, lsl #3]
 8007bb8:	60c5      	str	r5, [r0, #12]
 8007bba:	4630      	mov	r0, r6
 8007bbc:	e8bd 40f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, lr}
 8007bc0:	f7fc bfa0 	b.w	8004b04 <__malloc_unlock>
 8007bc4:	2800      	cmp	r0, #0
 8007bc6:	d145      	bne.n	8007c54 <_free_r+0x1cc>
 8007bc8:	440a      	add	r2, r1
 8007bca:	e9d3 1302 	ldrd	r1, r3, [r3, #8]
 8007bce:	f042 0001 	orr.w	r0, r2, #1
 8007bd2:	60cb      	str	r3, [r1, #12]
 8007bd4:	6099      	str	r1, [r3, #8]
 8007bd6:	6068      	str	r0, [r5, #4]
 8007bd8:	50aa      	str	r2, [r5, r2]
 8007bda:	e7d7      	b.n	8007b8c <_free_r+0x104>
 8007bdc:	2b14      	cmp	r3, #20
 8007bde:	d908      	bls.n	8007bf2 <_free_r+0x16a>
 8007be0:	2b54      	cmp	r3, #84	; 0x54
 8007be2:	d81e      	bhi.n	8007c22 <_free_r+0x19a>
 8007be4:	0b0b      	lsrs	r3, r1, #12
 8007be6:	f103 046f 	add.w	r4, r3, #111	; 0x6f
 8007bea:	00e4      	lsls	r4, r4, #3
 8007bec:	f103 026e 	add.w	r2, r3, #110	; 0x6e
 8007bf0:	e789      	b.n	8007b06 <_free_r+0x7e>
 8007bf2:	f103 045c 	add.w	r4, r3, #92	; 0x5c
 8007bf6:	00e4      	lsls	r4, r4, #3
 8007bf8:	f103 025b 	add.w	r2, r3, #91	; 0x5b
 8007bfc:	e783      	b.n	8007b06 <_free_r+0x7e>
 8007bfe:	4618      	mov	r0, r3
 8007c00:	e78e      	b.n	8007b20 <_free_r+0x98>
 8007c02:	1093      	asrs	r3, r2, #2
 8007c04:	6879      	ldr	r1, [r7, #4]
 8007c06:	2201      	movs	r2, #1
 8007c08:	fa02 f303 	lsl.w	r3, r2, r3
 8007c0c:	430b      	orrs	r3, r1
 8007c0e:	607b      	str	r3, [r7, #4]
 8007c10:	4603      	mov	r3, r0
 8007c12:	e786      	b.n	8007b22 <_free_r+0x9a>
 8007c14:	e9c7 5504 	strd	r5, r5, [r7, #16]
 8007c18:	e9c5 0002 	strd	r0, r0, [r5, #8]
 8007c1c:	606a      	str	r2, [r5, #4]
 8007c1e:	5069      	str	r1, [r5, r1]
 8007c20:	e7b4      	b.n	8007b8c <_free_r+0x104>
 8007c22:	f5b3 7faa 	cmp.w	r3, #340	; 0x154
 8007c26:	d806      	bhi.n	8007c36 <_free_r+0x1ae>
 8007c28:	0bcb      	lsrs	r3, r1, #15
 8007c2a:	f103 0478 	add.w	r4, r3, #120	; 0x78
 8007c2e:	00e4      	lsls	r4, r4, #3
 8007c30:	f103 0277 	add.w	r2, r3, #119	; 0x77
 8007c34:	e767      	b.n	8007b06 <_free_r+0x7e>
 8007c36:	f240 5254 	movw	r2, #1364	; 0x554
 8007c3a:	4293      	cmp	r3, r2
 8007c3c:	d806      	bhi.n	8007c4c <_free_r+0x1c4>
 8007c3e:	0c8b      	lsrs	r3, r1, #18
 8007c40:	f103 047d 	add.w	r4, r3, #125	; 0x7d
 8007c44:	00e4      	lsls	r4, r4, #3
 8007c46:	f103 027c 	add.w	r2, r3, #124	; 0x7c
 8007c4a:	e75c      	b.n	8007b06 <_free_r+0x7e>
 8007c4c:	f44f 747e 	mov.w	r4, #1016	; 0x3f8
 8007c50:	227e      	movs	r2, #126	; 0x7e
 8007c52:	e758      	b.n	8007b06 <_free_r+0x7e>
 8007c54:	f041 0201 	orr.w	r2, r1, #1
 8007c58:	606a      	str	r2, [r5, #4]
 8007c5a:	6019      	str	r1, [r3, #0]
 8007c5c:	e796      	b.n	8007b8c <_free_r+0x104>
 8007c5e:	bf00      	nop
 8007c60:	20000448 	.word	0x20000448
 8007c64:	20000450 	.word	0x20000450
 8007c68:	20000854 	.word	0x20000854
 8007c6c:	20000aa4 	.word	0x20000aa4

08007c70 <__sfvwrite_r>:
 8007c70:	6893      	ldr	r3, [r2, #8]
 8007c72:	2b00      	cmp	r3, #0
 8007c74:	f000 80e4 	beq.w	8007e40 <__sfvwrite_r+0x1d0>
 8007c78:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8007c7c:	f9b1 300c 	ldrsh.w	r3, [r1, #12]
 8007c80:	b29b      	uxth	r3, r3
 8007c82:	460c      	mov	r4, r1
 8007c84:	0719      	lsls	r1, r3, #28
 8007c86:	b083      	sub	sp, #12
 8007c88:	4682      	mov	sl, r0
 8007c8a:	4690      	mov	r8, r2
 8007c8c:	d535      	bpl.n	8007cfa <__sfvwrite_r+0x8a>
 8007c8e:	6922      	ldr	r2, [r4, #16]
 8007c90:	b39a      	cbz	r2, 8007cfa <__sfvwrite_r+0x8a>
 8007c92:	f013 0202 	ands.w	r2, r3, #2
 8007c96:	f8d8 6000 	ldr.w	r6, [r8]
 8007c9a:	d03d      	beq.n	8007d18 <__sfvwrite_r+0xa8>
 8007c9c:	2700      	movs	r7, #0
 8007c9e:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8007ca2:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8007ca6:	f8df 92c0 	ldr.w	r9, [pc, #704]	; 8007f68 <__sfvwrite_r+0x2f8>
 8007caa:	463d      	mov	r5, r7
 8007cac:	454d      	cmp	r5, r9
 8007cae:	462b      	mov	r3, r5
 8007cb0:	463a      	mov	r2, r7
 8007cb2:	bf28      	it	cs
 8007cb4:	464b      	movcs	r3, r9
 8007cb6:	4661      	mov	r1, ip
 8007cb8:	4650      	mov	r0, sl
 8007cba:	b1d5      	cbz	r5, 8007cf2 <__sfvwrite_r+0x82>
 8007cbc:	47d8      	blx	fp
 8007cbe:	2800      	cmp	r0, #0
 8007cc0:	f340 80c6 	ble.w	8007e50 <__sfvwrite_r+0x1e0>
 8007cc4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007cc8:	1a1b      	subs	r3, r3, r0
 8007cca:	4407      	add	r7, r0
 8007ccc:	1a2d      	subs	r5, r5, r0
 8007cce:	f8c8 3008 	str.w	r3, [r8, #8]
 8007cd2:	2b00      	cmp	r3, #0
 8007cd4:	f000 80b0 	beq.w	8007e38 <__sfvwrite_r+0x1c8>
 8007cd8:	f8d4 c01c 	ldr.w	ip, [r4, #28]
 8007cdc:	f8d4 b024 	ldr.w	fp, [r4, #36]	; 0x24
 8007ce0:	454d      	cmp	r5, r9
 8007ce2:	462b      	mov	r3, r5
 8007ce4:	463a      	mov	r2, r7
 8007ce6:	bf28      	it	cs
 8007ce8:	464b      	movcs	r3, r9
 8007cea:	4661      	mov	r1, ip
 8007cec:	4650      	mov	r0, sl
 8007cee:	2d00      	cmp	r5, #0
 8007cf0:	d1e4      	bne.n	8007cbc <__sfvwrite_r+0x4c>
 8007cf2:	e9d6 7500 	ldrd	r7, r5, [r6]
 8007cf6:	3608      	adds	r6, #8
 8007cf8:	e7d8      	b.n	8007cac <__sfvwrite_r+0x3c>
 8007cfa:	4621      	mov	r1, r4
 8007cfc:	4650      	mov	r0, sl
 8007cfe:	f7fe fd03 	bl	8006708 <__swsetup_r>
 8007d02:	2800      	cmp	r0, #0
 8007d04:	f040 812a 	bne.w	8007f5c <__sfvwrite_r+0x2ec>
 8007d08:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007d0c:	f8d8 6000 	ldr.w	r6, [r8]
 8007d10:	b29b      	uxth	r3, r3
 8007d12:	f013 0202 	ands.w	r2, r3, #2
 8007d16:	d1c1      	bne.n	8007c9c <__sfvwrite_r+0x2c>
 8007d18:	f013 0901 	ands.w	r9, r3, #1
 8007d1c:	d15d      	bne.n	8007dda <__sfvwrite_r+0x16a>
 8007d1e:	68a7      	ldr	r7, [r4, #8]
 8007d20:	6820      	ldr	r0, [r4, #0]
 8007d22:	464d      	mov	r5, r9
 8007d24:	2d00      	cmp	r5, #0
 8007d26:	d054      	beq.n	8007dd2 <__sfvwrite_r+0x162>
 8007d28:	059a      	lsls	r2, r3, #22
 8007d2a:	f140 809b 	bpl.w	8007e64 <__sfvwrite_r+0x1f4>
 8007d2e:	42af      	cmp	r7, r5
 8007d30:	46bb      	mov	fp, r7
 8007d32:	f200 80d8 	bhi.w	8007ee6 <__sfvwrite_r+0x276>
 8007d36:	f413 6f90 	tst.w	r3, #1152	; 0x480
 8007d3a:	d02f      	beq.n	8007d9c <__sfvwrite_r+0x12c>
 8007d3c:	e9d4 1704 	ldrd	r1, r7, [r4, #16]
 8007d40:	eb07 0747 	add.w	r7, r7, r7, lsl #1
 8007d44:	eba0 0b01 	sub.w	fp, r0, r1
 8007d48:	eb07 77d7 	add.w	r7, r7, r7, lsr #31
 8007d4c:	1c68      	adds	r0, r5, #1
 8007d4e:	107f      	asrs	r7, r7, #1
 8007d50:	4458      	add	r0, fp
 8007d52:	42b8      	cmp	r0, r7
 8007d54:	463a      	mov	r2, r7
 8007d56:	bf84      	itt	hi
 8007d58:	4607      	movhi	r7, r0
 8007d5a:	463a      	movhi	r2, r7
 8007d5c:	055b      	lsls	r3, r3, #21
 8007d5e:	f140 80d3 	bpl.w	8007f08 <__sfvwrite_r+0x298>
 8007d62:	4611      	mov	r1, r2
 8007d64:	4650      	mov	r0, sl
 8007d66:	f7fc fbd9 	bl	800451c <_malloc_r>
 8007d6a:	2800      	cmp	r0, #0
 8007d6c:	f000 80f0 	beq.w	8007f50 <__sfvwrite_r+0x2e0>
 8007d70:	465a      	mov	r2, fp
 8007d72:	6921      	ldr	r1, [r4, #16]
 8007d74:	9001      	str	r0, [sp, #4]
 8007d76:	f7f8 fc2d 	bl	80005d4 <memcpy>
 8007d7a:	89a2      	ldrh	r2, [r4, #12]
 8007d7c:	9b01      	ldr	r3, [sp, #4]
 8007d7e:	f422 6290 	bic.w	r2, r2, #1152	; 0x480
 8007d82:	f042 0280 	orr.w	r2, r2, #128	; 0x80
 8007d86:	81a2      	strh	r2, [r4, #12]
 8007d88:	eba7 020b 	sub.w	r2, r7, fp
 8007d8c:	eb03 000b 	add.w	r0, r3, fp
 8007d90:	6167      	str	r7, [r4, #20]
 8007d92:	6123      	str	r3, [r4, #16]
 8007d94:	6020      	str	r0, [r4, #0]
 8007d96:	60a2      	str	r2, [r4, #8]
 8007d98:	462f      	mov	r7, r5
 8007d9a:	46ab      	mov	fp, r5
 8007d9c:	465a      	mov	r2, fp
 8007d9e:	4649      	mov	r1, r9
 8007da0:	f000 f99c 	bl	80080dc <memmove>
 8007da4:	68a2      	ldr	r2, [r4, #8]
 8007da6:	6823      	ldr	r3, [r4, #0]
 8007da8:	1bd2      	subs	r2, r2, r7
 8007daa:	445b      	add	r3, fp
 8007dac:	462f      	mov	r7, r5
 8007dae:	60a2      	str	r2, [r4, #8]
 8007db0:	6023      	str	r3, [r4, #0]
 8007db2:	2500      	movs	r5, #0
 8007db4:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007db8:	1bdb      	subs	r3, r3, r7
 8007dba:	44b9      	add	r9, r7
 8007dbc:	f8c8 3008 	str.w	r3, [r8, #8]
 8007dc0:	2b00      	cmp	r3, #0
 8007dc2:	d039      	beq.n	8007e38 <__sfvwrite_r+0x1c8>
 8007dc4:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007dc8:	68a7      	ldr	r7, [r4, #8]
 8007dca:	6820      	ldr	r0, [r4, #0]
 8007dcc:	b29b      	uxth	r3, r3
 8007dce:	2d00      	cmp	r5, #0
 8007dd0:	d1aa      	bne.n	8007d28 <__sfvwrite_r+0xb8>
 8007dd2:	e9d6 9500 	ldrd	r9, r5, [r6]
 8007dd6:	3608      	adds	r6, #8
 8007dd8:	e7a4      	b.n	8007d24 <__sfvwrite_r+0xb4>
 8007dda:	4633      	mov	r3, r6
 8007ddc:	4691      	mov	r9, r2
 8007dde:	4610      	mov	r0, r2
 8007de0:	4617      	mov	r7, r2
 8007de2:	464e      	mov	r6, r9
 8007de4:	469b      	mov	fp, r3
 8007de6:	2f00      	cmp	r7, #0
 8007de8:	d06b      	beq.n	8007ec2 <__sfvwrite_r+0x252>
 8007dea:	2800      	cmp	r0, #0
 8007dec:	d071      	beq.n	8007ed2 <__sfvwrite_r+0x262>
 8007dee:	e9d4 1204 	ldrd	r1, r2, [r4, #16]
 8007df2:	6820      	ldr	r0, [r4, #0]
 8007df4:	45b9      	cmp	r9, r7
 8007df6:	464b      	mov	r3, r9
 8007df8:	bf28      	it	cs
 8007dfa:	463b      	movcs	r3, r7
 8007dfc:	4288      	cmp	r0, r1
 8007dfe:	d903      	bls.n	8007e08 <__sfvwrite_r+0x198>
 8007e00:	68a5      	ldr	r5, [r4, #8]
 8007e02:	4415      	add	r5, r2
 8007e04:	42ab      	cmp	r3, r5
 8007e06:	dc71      	bgt.n	8007eec <__sfvwrite_r+0x27c>
 8007e08:	429a      	cmp	r2, r3
 8007e0a:	f300 8093 	bgt.w	8007f34 <__sfvwrite_r+0x2c4>
 8007e0e:	4613      	mov	r3, r2
 8007e10:	6a65      	ldr	r5, [r4, #36]	; 0x24
 8007e12:	69e1      	ldr	r1, [r4, #28]
 8007e14:	4632      	mov	r2, r6
 8007e16:	4650      	mov	r0, sl
 8007e18:	47a8      	blx	r5
 8007e1a:	1e05      	subs	r5, r0, #0
 8007e1c:	dd18      	ble.n	8007e50 <__sfvwrite_r+0x1e0>
 8007e1e:	ebb9 0905 	subs.w	r9, r9, r5
 8007e22:	d00f      	beq.n	8007e44 <__sfvwrite_r+0x1d4>
 8007e24:	2001      	movs	r0, #1
 8007e26:	f8d8 3008 	ldr.w	r3, [r8, #8]
 8007e2a:	1b5b      	subs	r3, r3, r5
 8007e2c:	442e      	add	r6, r5
 8007e2e:	1b7f      	subs	r7, r7, r5
 8007e30:	f8c8 3008 	str.w	r3, [r8, #8]
 8007e34:	2b00      	cmp	r3, #0
 8007e36:	d1d6      	bne.n	8007de6 <__sfvwrite_r+0x176>
 8007e38:	2000      	movs	r0, #0
 8007e3a:	b003      	add	sp, #12
 8007e3c:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007e40:	2000      	movs	r0, #0
 8007e42:	4770      	bx	lr
 8007e44:	4621      	mov	r1, r4
 8007e46:	4650      	mov	r0, sl
 8007e48:	f7ff fd20 	bl	800788c <_fflush_r>
 8007e4c:	2800      	cmp	r0, #0
 8007e4e:	d0ea      	beq.n	8007e26 <__sfvwrite_r+0x1b6>
 8007e50:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007e54:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8007e58:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007e5c:	81a3      	strh	r3, [r4, #12]
 8007e5e:	b003      	add	sp, #12
 8007e60:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8007e64:	6923      	ldr	r3, [r4, #16]
 8007e66:	4283      	cmp	r3, r0
 8007e68:	d315      	bcc.n	8007e96 <__sfvwrite_r+0x226>
 8007e6a:	6961      	ldr	r1, [r4, #20]
 8007e6c:	42a9      	cmp	r1, r5
 8007e6e:	d812      	bhi.n	8007e96 <__sfvwrite_r+0x226>
 8007e70:	4b3c      	ldr	r3, [pc, #240]	; (8007f64 <__sfvwrite_r+0x2f4>)
 8007e72:	6a67      	ldr	r7, [r4, #36]	; 0x24
 8007e74:	429d      	cmp	r5, r3
 8007e76:	bf94      	ite	ls
 8007e78:	462b      	movls	r3, r5
 8007e7a:	f06f 4300 	mvnhi.w	r3, #2147483648	; 0x80000000
 8007e7e:	464a      	mov	r2, r9
 8007e80:	fb93 f3f1 	sdiv	r3, r3, r1
 8007e84:	4650      	mov	r0, sl
 8007e86:	fb01 f303 	mul.w	r3, r1, r3
 8007e8a:	69e1      	ldr	r1, [r4, #28]
 8007e8c:	47b8      	blx	r7
 8007e8e:	1e07      	subs	r7, r0, #0
 8007e90:	ddde      	ble.n	8007e50 <__sfvwrite_r+0x1e0>
 8007e92:	1bed      	subs	r5, r5, r7
 8007e94:	e78e      	b.n	8007db4 <__sfvwrite_r+0x144>
 8007e96:	42af      	cmp	r7, r5
 8007e98:	bf28      	it	cs
 8007e9a:	462f      	movcs	r7, r5
 8007e9c:	463a      	mov	r2, r7
 8007e9e:	4649      	mov	r1, r9
 8007ea0:	f000 f91c 	bl	80080dc <memmove>
 8007ea4:	68a3      	ldr	r3, [r4, #8]
 8007ea6:	6822      	ldr	r2, [r4, #0]
 8007ea8:	1bdb      	subs	r3, r3, r7
 8007eaa:	443a      	add	r2, r7
 8007eac:	60a3      	str	r3, [r4, #8]
 8007eae:	6022      	str	r2, [r4, #0]
 8007eb0:	2b00      	cmp	r3, #0
 8007eb2:	d1ee      	bne.n	8007e92 <__sfvwrite_r+0x222>
 8007eb4:	4621      	mov	r1, r4
 8007eb6:	4650      	mov	r0, sl
 8007eb8:	f7ff fce8 	bl	800788c <_fflush_r>
 8007ebc:	2800      	cmp	r0, #0
 8007ebe:	d0e8      	beq.n	8007e92 <__sfvwrite_r+0x222>
 8007ec0:	e7c6      	b.n	8007e50 <__sfvwrite_r+0x1e0>
 8007ec2:	f10b 0308 	add.w	r3, fp, #8
 8007ec6:	e953 6702 	ldrd	r6, r7, [r3, #-8]
 8007eca:	469b      	mov	fp, r3
 8007ecc:	3308      	adds	r3, #8
 8007ece:	2f00      	cmp	r7, #0
 8007ed0:	d0f9      	beq.n	8007ec6 <__sfvwrite_r+0x256>
 8007ed2:	463a      	mov	r2, r7
 8007ed4:	210a      	movs	r1, #10
 8007ed6:	4630      	mov	r0, r6
 8007ed8:	f7f8 fca2 	bl	8000820 <memchr>
 8007edc:	b338      	cbz	r0, 8007f2e <__sfvwrite_r+0x2be>
 8007ede:	3001      	adds	r0, #1
 8007ee0:	eba0 0906 	sub.w	r9, r0, r6
 8007ee4:	e783      	b.n	8007dee <__sfvwrite_r+0x17e>
 8007ee6:	462f      	mov	r7, r5
 8007ee8:	46ab      	mov	fp, r5
 8007eea:	e757      	b.n	8007d9c <__sfvwrite_r+0x12c>
 8007eec:	4631      	mov	r1, r6
 8007eee:	462a      	mov	r2, r5
 8007ef0:	f000 f8f4 	bl	80080dc <memmove>
 8007ef4:	6823      	ldr	r3, [r4, #0]
 8007ef6:	442b      	add	r3, r5
 8007ef8:	6023      	str	r3, [r4, #0]
 8007efa:	4621      	mov	r1, r4
 8007efc:	4650      	mov	r0, sl
 8007efe:	f7ff fcc5 	bl	800788c <_fflush_r>
 8007f02:	2800      	cmp	r0, #0
 8007f04:	d08b      	beq.n	8007e1e <__sfvwrite_r+0x1ae>
 8007f06:	e7a3      	b.n	8007e50 <__sfvwrite_r+0x1e0>
 8007f08:	4650      	mov	r0, sl
 8007f0a:	f000 fc55 	bl	80087b8 <_realloc_r>
 8007f0e:	4603      	mov	r3, r0
 8007f10:	2800      	cmp	r0, #0
 8007f12:	f47f af39 	bne.w	8007d88 <__sfvwrite_r+0x118>
 8007f16:	6921      	ldr	r1, [r4, #16]
 8007f18:	4650      	mov	r0, sl
 8007f1a:	f7ff fdb5 	bl	8007a88 <_free_r>
 8007f1e:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007f22:	220c      	movs	r2, #12
 8007f24:	f023 0380 	bic.w	r3, r3, #128	; 0x80
 8007f28:	f8ca 2000 	str.w	r2, [sl]
 8007f2c:	e792      	b.n	8007e54 <__sfvwrite_r+0x1e4>
 8007f2e:	f107 0901 	add.w	r9, r7, #1
 8007f32:	e75c      	b.n	8007dee <__sfvwrite_r+0x17e>
 8007f34:	461a      	mov	r2, r3
 8007f36:	4631      	mov	r1, r6
 8007f38:	9301      	str	r3, [sp, #4]
 8007f3a:	f000 f8cf 	bl	80080dc <memmove>
 8007f3e:	9b01      	ldr	r3, [sp, #4]
 8007f40:	68a1      	ldr	r1, [r4, #8]
 8007f42:	6822      	ldr	r2, [r4, #0]
 8007f44:	1ac9      	subs	r1, r1, r3
 8007f46:	441a      	add	r2, r3
 8007f48:	60a1      	str	r1, [r4, #8]
 8007f4a:	6022      	str	r2, [r4, #0]
 8007f4c:	461d      	mov	r5, r3
 8007f4e:	e766      	b.n	8007e1e <__sfvwrite_r+0x1ae>
 8007f50:	230c      	movs	r3, #12
 8007f52:	f8ca 3000 	str.w	r3, [sl]
 8007f56:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8007f5a:	e77b      	b.n	8007e54 <__sfvwrite_r+0x1e4>
 8007f5c:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8007f60:	e76b      	b.n	8007e3a <__sfvwrite_r+0x1ca>
 8007f62:	bf00      	nop
 8007f64:	7ffffffe 	.word	0x7ffffffe
 8007f68:	7ffffc00 	.word	0x7ffffc00

08007f6c <_fwalk_reent>:
 8007f6c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8007f70:	f510 7738 	adds.w	r7, r0, #736	; 0x2e0
 8007f74:	d01f      	beq.n	8007fb6 <_fwalk_reent+0x4a>
 8007f76:	4688      	mov	r8, r1
 8007f78:	4606      	mov	r6, r0
 8007f7a:	f04f 0900 	mov.w	r9, #0
 8007f7e:	e9d7 5401 	ldrd	r5, r4, [r7, #4]
 8007f82:	3d01      	subs	r5, #1
 8007f84:	d411      	bmi.n	8007faa <_fwalk_reent+0x3e>
 8007f86:	89a3      	ldrh	r3, [r4, #12]
 8007f88:	2b01      	cmp	r3, #1
 8007f8a:	f105 35ff 	add.w	r5, r5, #4294967295	; 0xffffffff
 8007f8e:	4621      	mov	r1, r4
 8007f90:	4630      	mov	r0, r6
 8007f92:	d906      	bls.n	8007fa2 <_fwalk_reent+0x36>
 8007f94:	f9b4 300e 	ldrsh.w	r3, [r4, #14]
 8007f98:	3301      	adds	r3, #1
 8007f9a:	d002      	beq.n	8007fa2 <_fwalk_reent+0x36>
 8007f9c:	47c0      	blx	r8
 8007f9e:	ea49 0900 	orr.w	r9, r9, r0
 8007fa2:	1c6b      	adds	r3, r5, #1
 8007fa4:	f104 0468 	add.w	r4, r4, #104	; 0x68
 8007fa8:	d1ed      	bne.n	8007f86 <_fwalk_reent+0x1a>
 8007faa:	683f      	ldr	r7, [r7, #0]
 8007fac:	2f00      	cmp	r7, #0
 8007fae:	d1e6      	bne.n	8007f7e <_fwalk_reent+0x12>
 8007fb0:	4648      	mov	r0, r9
 8007fb2:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007fb6:	46b9      	mov	r9, r7
 8007fb8:	4648      	mov	r0, r9
 8007fba:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8007fbe:	bf00      	nop

08007fc0 <_localeconv_r>:
 8007fc0:	4a04      	ldr	r2, [pc, #16]	; (8007fd4 <_localeconv_r+0x14>)
 8007fc2:	4b05      	ldr	r3, [pc, #20]	; (8007fd8 <_localeconv_r+0x18>)
 8007fc4:	6812      	ldr	r2, [r2, #0]
 8007fc6:	6b50      	ldr	r0, [r2, #52]	; 0x34
 8007fc8:	2800      	cmp	r0, #0
 8007fca:	bf08      	it	eq
 8007fcc:	4618      	moveq	r0, r3
 8007fce:	30f0      	adds	r0, #240	; 0xf0
 8007fd0:	4770      	bx	lr
 8007fd2:	bf00      	nop
 8007fd4:	20000018 	.word	0x20000018
 8007fd8:	2000085c 	.word	0x2000085c

08007fdc <__retarget_lock_init_recursive>:
 8007fdc:	4770      	bx	lr
 8007fde:	bf00      	nop

08007fe0 <__retarget_lock_close_recursive>:
 8007fe0:	4770      	bx	lr
 8007fe2:	bf00      	nop

08007fe4 <__retarget_lock_acquire_recursive>:
 8007fe4:	4770      	bx	lr
 8007fe6:	bf00      	nop

08007fe8 <__retarget_lock_release_recursive>:
 8007fe8:	4770      	bx	lr
 8007fea:	bf00      	nop

08007fec <__swhatbuf_r>:
 8007fec:	b570      	push	{r4, r5, r6, lr}
 8007fee:	460c      	mov	r4, r1
 8007ff0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8007ff4:	2900      	cmp	r1, #0
 8007ff6:	b096      	sub	sp, #88	; 0x58
 8007ff8:	4615      	mov	r5, r2
 8007ffa:	461e      	mov	r6, r3
 8007ffc:	da0f      	bge.n	800801e <__swhatbuf_r+0x32>
 8007ffe:	89a2      	ldrh	r2, [r4, #12]
 8008000:	2300      	movs	r3, #0
 8008002:	f012 0080 	ands.w	r0, r2, #128	; 0x80
 8008006:	6033      	str	r3, [r6, #0]
 8008008:	d104      	bne.n	8008014 <__swhatbuf_r+0x28>
 800800a:	f44f 6380 	mov.w	r3, #1024	; 0x400
 800800e:	602b      	str	r3, [r5, #0]
 8008010:	b016      	add	sp, #88	; 0x58
 8008012:	bd70      	pop	{r4, r5, r6, pc}
 8008014:	2240      	movs	r2, #64	; 0x40
 8008016:	4618      	mov	r0, r3
 8008018:	602a      	str	r2, [r5, #0]
 800801a:	b016      	add	sp, #88	; 0x58
 800801c:	bd70      	pop	{r4, r5, r6, pc}
 800801e:	466a      	mov	r2, sp
 8008020:	f000 ffda 	bl	8008fd8 <_fstat_r>
 8008024:	2800      	cmp	r0, #0
 8008026:	dbea      	blt.n	8007ffe <__swhatbuf_r+0x12>
 8008028:	9b01      	ldr	r3, [sp, #4]
 800802a:	f403 4370 	and.w	r3, r3, #61440	; 0xf000
 800802e:	f5a3 5300 	sub.w	r3, r3, #8192	; 0x2000
 8008032:	fab3 f383 	clz	r3, r3
 8008036:	095b      	lsrs	r3, r3, #5
 8008038:	f44f 6280 	mov.w	r2, #1024	; 0x400
 800803c:	f44f 6000 	mov.w	r0, #2048	; 0x800
 8008040:	6033      	str	r3, [r6, #0]
 8008042:	602a      	str	r2, [r5, #0]
 8008044:	b016      	add	sp, #88	; 0x58
 8008046:	bd70      	pop	{r4, r5, r6, pc}

08008048 <__smakebuf_r>:
 8008048:	898a      	ldrh	r2, [r1, #12]
 800804a:	0792      	lsls	r2, r2, #30
 800804c:	460b      	mov	r3, r1
 800804e:	d506      	bpl.n	800805e <__smakebuf_r+0x16>
 8008050:	f101 0243 	add.w	r2, r1, #67	; 0x43
 8008054:	2101      	movs	r1, #1
 8008056:	601a      	str	r2, [r3, #0]
 8008058:	e9c3 2104 	strd	r2, r1, [r3, #16]
 800805c:	4770      	bx	lr
 800805e:	b570      	push	{r4, r5, r6, lr}
 8008060:	b082      	sub	sp, #8
 8008062:	ab01      	add	r3, sp, #4
 8008064:	466a      	mov	r2, sp
 8008066:	460c      	mov	r4, r1
 8008068:	4605      	mov	r5, r0
 800806a:	f7ff ffbf 	bl	8007fec <__swhatbuf_r>
 800806e:	9900      	ldr	r1, [sp, #0]
 8008070:	4606      	mov	r6, r0
 8008072:	4628      	mov	r0, r5
 8008074:	f7fc fa52 	bl	800451c <_malloc_r>
 8008078:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 800807c:	b1d8      	cbz	r0, 80080b6 <__smakebuf_r+0x6e>
 800807e:	4916      	ldr	r1, [pc, #88]	; (80080d8 <__smakebuf_r+0x90>)
 8008080:	63e9      	str	r1, [r5, #60]	; 0x3c
 8008082:	9a01      	ldr	r2, [sp, #4]
 8008084:	9900      	ldr	r1, [sp, #0]
 8008086:	6020      	str	r0, [r4, #0]
 8008088:	f043 0380 	orr.w	r3, r3, #128	; 0x80
 800808c:	81a3      	strh	r3, [r4, #12]
 800808e:	e9c4 0104 	strd	r0, r1, [r4, #16]
 8008092:	b91a      	cbnz	r2, 800809c <__smakebuf_r+0x54>
 8008094:	4333      	orrs	r3, r6
 8008096:	81a3      	strh	r3, [r4, #12]
 8008098:	b002      	add	sp, #8
 800809a:	bd70      	pop	{r4, r5, r6, pc}
 800809c:	4628      	mov	r0, r5
 800809e:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 80080a2:	f000 ffad 	bl	8009000 <_isatty_r>
 80080a6:	b1a0      	cbz	r0, 80080d2 <__smakebuf_r+0x8a>
 80080a8:	89a3      	ldrh	r3, [r4, #12]
 80080aa:	f023 0303 	bic.w	r3, r3, #3
 80080ae:	f043 0301 	orr.w	r3, r3, #1
 80080b2:	b21b      	sxth	r3, r3
 80080b4:	e7ee      	b.n	8008094 <__smakebuf_r+0x4c>
 80080b6:	059a      	lsls	r2, r3, #22
 80080b8:	d4ee      	bmi.n	8008098 <__smakebuf_r+0x50>
 80080ba:	f023 0303 	bic.w	r3, r3, #3
 80080be:	f104 0243 	add.w	r2, r4, #67	; 0x43
 80080c2:	f043 0302 	orr.w	r3, r3, #2
 80080c6:	2101      	movs	r1, #1
 80080c8:	81a3      	strh	r3, [r4, #12]
 80080ca:	6022      	str	r2, [r4, #0]
 80080cc:	e9c4 2104 	strd	r2, r1, [r4, #16]
 80080d0:	e7e2      	b.n	8008098 <__smakebuf_r+0x50>
 80080d2:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 80080d6:	e7dd      	b.n	8008094 <__smakebuf_r+0x4c>
 80080d8:	08007939 	.word	0x08007939

080080dc <memmove>:
 80080dc:	4288      	cmp	r0, r1
 80080de:	b4f0      	push	{r4, r5, r6, r7}
 80080e0:	d90d      	bls.n	80080fe <memmove+0x22>
 80080e2:	188b      	adds	r3, r1, r2
 80080e4:	4283      	cmp	r3, r0
 80080e6:	d90a      	bls.n	80080fe <memmove+0x22>
 80080e8:	1884      	adds	r4, r0, r2
 80080ea:	b132      	cbz	r2, 80080fa <memmove+0x1e>
 80080ec:	4622      	mov	r2, r4
 80080ee:	f813 4d01 	ldrb.w	r4, [r3, #-1]!
 80080f2:	f802 4d01 	strb.w	r4, [r2, #-1]!
 80080f6:	4299      	cmp	r1, r3
 80080f8:	d1f9      	bne.n	80080ee <memmove+0x12>
 80080fa:	bcf0      	pop	{r4, r5, r6, r7}
 80080fc:	4770      	bx	lr
 80080fe:	2a0f      	cmp	r2, #15
 8008100:	d949      	bls.n	8008196 <memmove+0xba>
 8008102:	ea40 0301 	orr.w	r3, r0, r1
 8008106:	079b      	lsls	r3, r3, #30
 8008108:	d147      	bne.n	800819a <memmove+0xbe>
 800810a:	f1a2 0310 	sub.w	r3, r2, #16
 800810e:	091b      	lsrs	r3, r3, #4
 8008110:	f101 0720 	add.w	r7, r1, #32
 8008114:	eb07 1703 	add.w	r7, r7, r3, lsl #4
 8008118:	f101 0410 	add.w	r4, r1, #16
 800811c:	f100 0510 	add.w	r5, r0, #16
 8008120:	f854 6c10 	ldr.w	r6, [r4, #-16]
 8008124:	f845 6c10 	str.w	r6, [r5, #-16]
 8008128:	f854 6c0c 	ldr.w	r6, [r4, #-12]
 800812c:	f845 6c0c 	str.w	r6, [r5, #-12]
 8008130:	f854 6c08 	ldr.w	r6, [r4, #-8]
 8008134:	f845 6c08 	str.w	r6, [r5, #-8]
 8008138:	f854 6c04 	ldr.w	r6, [r4, #-4]
 800813c:	f845 6c04 	str.w	r6, [r5, #-4]
 8008140:	3410      	adds	r4, #16
 8008142:	42bc      	cmp	r4, r7
 8008144:	f105 0510 	add.w	r5, r5, #16
 8008148:	d1ea      	bne.n	8008120 <memmove+0x44>
 800814a:	3301      	adds	r3, #1
 800814c:	f002 050f 	and.w	r5, r2, #15
 8008150:	011b      	lsls	r3, r3, #4
 8008152:	2d03      	cmp	r5, #3
 8008154:	4419      	add	r1, r3
 8008156:	4403      	add	r3, r0
 8008158:	d921      	bls.n	800819e <memmove+0xc2>
 800815a:	1f1f      	subs	r7, r3, #4
 800815c:	460e      	mov	r6, r1
 800815e:	462c      	mov	r4, r5
 8008160:	3c04      	subs	r4, #4
 8008162:	f856 cb04 	ldr.w	ip, [r6], #4
 8008166:	f847 cf04 	str.w	ip, [r7, #4]!
 800816a:	2c03      	cmp	r4, #3
 800816c:	d8f8      	bhi.n	8008160 <memmove+0x84>
 800816e:	1f2c      	subs	r4, r5, #4
 8008170:	f024 0403 	bic.w	r4, r4, #3
 8008174:	3404      	adds	r4, #4
 8008176:	4423      	add	r3, r4
 8008178:	4421      	add	r1, r4
 800817a:	f002 0203 	and.w	r2, r2, #3
 800817e:	2a00      	cmp	r2, #0
 8008180:	d0bb      	beq.n	80080fa <memmove+0x1e>
 8008182:	3b01      	subs	r3, #1
 8008184:	440a      	add	r2, r1
 8008186:	f811 4b01 	ldrb.w	r4, [r1], #1
 800818a:	f803 4f01 	strb.w	r4, [r3, #1]!
 800818e:	4291      	cmp	r1, r2
 8008190:	d1f9      	bne.n	8008186 <memmove+0xaa>
 8008192:	bcf0      	pop	{r4, r5, r6, r7}
 8008194:	4770      	bx	lr
 8008196:	4603      	mov	r3, r0
 8008198:	e7f1      	b.n	800817e <memmove+0xa2>
 800819a:	4603      	mov	r3, r0
 800819c:	e7f1      	b.n	8008182 <memmove+0xa6>
 800819e:	462a      	mov	r2, r5
 80081a0:	e7ed      	b.n	800817e <memmove+0xa2>
 80081a2:	bf00      	nop

080081a4 <_Balloc>:
 80081a4:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80081a6:	b570      	push	{r4, r5, r6, lr}
 80081a8:	4605      	mov	r5, r0
 80081aa:	460c      	mov	r4, r1
 80081ac:	b14b      	cbz	r3, 80081c2 <_Balloc+0x1e>
 80081ae:	f853 0024 	ldr.w	r0, [r3, r4, lsl #2]
 80081b2:	b180      	cbz	r0, 80081d6 <_Balloc+0x32>
 80081b4:	6802      	ldr	r2, [r0, #0]
 80081b6:	f843 2024 	str.w	r2, [r3, r4, lsl #2]
 80081ba:	2300      	movs	r3, #0
 80081bc:	e9c0 3303 	strd	r3, r3, [r0, #12]
 80081c0:	bd70      	pop	{r4, r5, r6, pc}
 80081c2:	2221      	movs	r2, #33	; 0x21
 80081c4:	2104      	movs	r1, #4
 80081c6:	f7fc f93b 	bl	8004440 <_calloc_r>
 80081ca:	4603      	mov	r3, r0
 80081cc:	64e8      	str	r0, [r5, #76]	; 0x4c
 80081ce:	2800      	cmp	r0, #0
 80081d0:	d1ed      	bne.n	80081ae <_Balloc+0xa>
 80081d2:	2000      	movs	r0, #0
 80081d4:	bd70      	pop	{r4, r5, r6, pc}
 80081d6:	2101      	movs	r1, #1
 80081d8:	fa01 f604 	lsl.w	r6, r1, r4
 80081dc:	1d72      	adds	r2, r6, #5
 80081de:	4628      	mov	r0, r5
 80081e0:	0092      	lsls	r2, r2, #2
 80081e2:	f7fc f92d 	bl	8004440 <_calloc_r>
 80081e6:	2800      	cmp	r0, #0
 80081e8:	d0f3      	beq.n	80081d2 <_Balloc+0x2e>
 80081ea:	e9c0 4601 	strd	r4, r6, [r0, #4]
 80081ee:	e7e4      	b.n	80081ba <_Balloc+0x16>

080081f0 <_Bfree>:
 80081f0:	b131      	cbz	r1, 8008200 <_Bfree+0x10>
 80081f2:	6cc3      	ldr	r3, [r0, #76]	; 0x4c
 80081f4:	684a      	ldr	r2, [r1, #4]
 80081f6:	f853 0022 	ldr.w	r0, [r3, r2, lsl #2]
 80081fa:	6008      	str	r0, [r1, #0]
 80081fc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
 8008200:	4770      	bx	lr
 8008202:	bf00      	nop

08008204 <__multadd>:
 8008204:	b5f0      	push	{r4, r5, r6, r7, lr}
 8008206:	690c      	ldr	r4, [r1, #16]
 8008208:	b083      	sub	sp, #12
 800820a:	460d      	mov	r5, r1
 800820c:	4606      	mov	r6, r0
 800820e:	f101 0c14 	add.w	ip, r1, #20
 8008212:	2700      	movs	r7, #0
 8008214:	f8dc 0000 	ldr.w	r0, [ip]
 8008218:	b281      	uxth	r1, r0
 800821a:	fb02 3301 	mla	r3, r2, r1, r3
 800821e:	0c01      	lsrs	r1, r0, #16
 8008220:	0c18      	lsrs	r0, r3, #16
 8008222:	fb02 0101 	mla	r1, r2, r1, r0
 8008226:	b29b      	uxth	r3, r3
 8008228:	3701      	adds	r7, #1
 800822a:	eb03 4301 	add.w	r3, r3, r1, lsl #16
 800822e:	42bc      	cmp	r4, r7
 8008230:	f84c 3b04 	str.w	r3, [ip], #4
 8008234:	ea4f 4311 	mov.w	r3, r1, lsr #16
 8008238:	dcec      	bgt.n	8008214 <__multadd+0x10>
 800823a:	b13b      	cbz	r3, 800824c <__multadd+0x48>
 800823c:	68aa      	ldr	r2, [r5, #8]
 800823e:	42a2      	cmp	r2, r4
 8008240:	dd07      	ble.n	8008252 <__multadd+0x4e>
 8008242:	eb05 0284 	add.w	r2, r5, r4, lsl #2
 8008246:	3401      	adds	r4, #1
 8008248:	6153      	str	r3, [r2, #20]
 800824a:	612c      	str	r4, [r5, #16]
 800824c:	4628      	mov	r0, r5
 800824e:	b003      	add	sp, #12
 8008250:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8008252:	6869      	ldr	r1, [r5, #4]
 8008254:	9301      	str	r3, [sp, #4]
 8008256:	3101      	adds	r1, #1
 8008258:	4630      	mov	r0, r6
 800825a:	f7ff ffa3 	bl	80081a4 <_Balloc>
 800825e:	692a      	ldr	r2, [r5, #16]
 8008260:	3202      	adds	r2, #2
 8008262:	f105 010c 	add.w	r1, r5, #12
 8008266:	4607      	mov	r7, r0
 8008268:	0092      	lsls	r2, r2, #2
 800826a:	300c      	adds	r0, #12
 800826c:	f7f8 f9b2 	bl	80005d4 <memcpy>
 8008270:	6cf2      	ldr	r2, [r6, #76]	; 0x4c
 8008272:	6869      	ldr	r1, [r5, #4]
 8008274:	9b01      	ldr	r3, [sp, #4]
 8008276:	f852 0021 	ldr.w	r0, [r2, r1, lsl #2]
 800827a:	6028      	str	r0, [r5, #0]
 800827c:	f842 5021 	str.w	r5, [r2, r1, lsl #2]
 8008280:	463d      	mov	r5, r7
 8008282:	e7de      	b.n	8008242 <__multadd+0x3e>

08008284 <__hi0bits>:
 8008284:	0c02      	lsrs	r2, r0, #16
 8008286:	0412      	lsls	r2, r2, #16
 8008288:	4603      	mov	r3, r0
 800828a:	b9c2      	cbnz	r2, 80082be <__hi0bits+0x3a>
 800828c:	0403      	lsls	r3, r0, #16
 800828e:	2010      	movs	r0, #16
 8008290:	f013 4f7f 	tst.w	r3, #4278190080	; 0xff000000
 8008294:	bf04      	itt	eq
 8008296:	021b      	lsleq	r3, r3, #8
 8008298:	3008      	addeq	r0, #8
 800829a:	f013 4f70 	tst.w	r3, #4026531840	; 0xf0000000
 800829e:	bf04      	itt	eq
 80082a0:	011b      	lsleq	r3, r3, #4
 80082a2:	3004      	addeq	r0, #4
 80082a4:	f013 4f40 	tst.w	r3, #3221225472	; 0xc0000000
 80082a8:	bf04      	itt	eq
 80082aa:	009b      	lsleq	r3, r3, #2
 80082ac:	3002      	addeq	r0, #2
 80082ae:	2b00      	cmp	r3, #0
 80082b0:	db04      	blt.n	80082bc <__hi0bits+0x38>
 80082b2:	005b      	lsls	r3, r3, #1
 80082b4:	d501      	bpl.n	80082ba <__hi0bits+0x36>
 80082b6:	3001      	adds	r0, #1
 80082b8:	4770      	bx	lr
 80082ba:	2020      	movs	r0, #32
 80082bc:	4770      	bx	lr
 80082be:	2000      	movs	r0, #0
 80082c0:	e7e6      	b.n	8008290 <__hi0bits+0xc>
 80082c2:	bf00      	nop

080082c4 <__lo0bits>:
 80082c4:	6803      	ldr	r3, [r0, #0]
 80082c6:	f013 0207 	ands.w	r2, r3, #7
 80082ca:	4601      	mov	r1, r0
 80082cc:	d007      	beq.n	80082de <__lo0bits+0x1a>
 80082ce:	07da      	lsls	r2, r3, #31
 80082d0:	d41f      	bmi.n	8008312 <__lo0bits+0x4e>
 80082d2:	0798      	lsls	r0, r3, #30
 80082d4:	d51f      	bpl.n	8008316 <__lo0bits+0x52>
 80082d6:	085b      	lsrs	r3, r3, #1
 80082d8:	600b      	str	r3, [r1, #0]
 80082da:	2001      	movs	r0, #1
 80082dc:	4770      	bx	lr
 80082de:	b298      	uxth	r0, r3
 80082e0:	b1a0      	cbz	r0, 800830c <__lo0bits+0x48>
 80082e2:	4610      	mov	r0, r2
 80082e4:	f013 0fff 	tst.w	r3, #255	; 0xff
 80082e8:	bf04      	itt	eq
 80082ea:	0a1b      	lsreq	r3, r3, #8
 80082ec:	3008      	addeq	r0, #8
 80082ee:	071a      	lsls	r2, r3, #28
 80082f0:	bf04      	itt	eq
 80082f2:	091b      	lsreq	r3, r3, #4
 80082f4:	3004      	addeq	r0, #4
 80082f6:	079a      	lsls	r2, r3, #30
 80082f8:	bf04      	itt	eq
 80082fa:	089b      	lsreq	r3, r3, #2
 80082fc:	3002      	addeq	r0, #2
 80082fe:	07da      	lsls	r2, r3, #31
 8008300:	d402      	bmi.n	8008308 <__lo0bits+0x44>
 8008302:	085b      	lsrs	r3, r3, #1
 8008304:	d00b      	beq.n	800831e <__lo0bits+0x5a>
 8008306:	3001      	adds	r0, #1
 8008308:	600b      	str	r3, [r1, #0]
 800830a:	4770      	bx	lr
 800830c:	0c1b      	lsrs	r3, r3, #16
 800830e:	2010      	movs	r0, #16
 8008310:	e7e8      	b.n	80082e4 <__lo0bits+0x20>
 8008312:	2000      	movs	r0, #0
 8008314:	4770      	bx	lr
 8008316:	089b      	lsrs	r3, r3, #2
 8008318:	600b      	str	r3, [r1, #0]
 800831a:	2002      	movs	r0, #2
 800831c:	4770      	bx	lr
 800831e:	2020      	movs	r0, #32
 8008320:	4770      	bx	lr
 8008322:	bf00      	nop

08008324 <__i2b>:
 8008324:	b510      	push	{r4, lr}
 8008326:	460c      	mov	r4, r1
 8008328:	2101      	movs	r1, #1
 800832a:	f7ff ff3b 	bl	80081a4 <_Balloc>
 800832e:	2201      	movs	r2, #1
 8008330:	e9c0 2404 	strd	r2, r4, [r0, #16]
 8008334:	bd10      	pop	{r4, pc}
 8008336:	bf00      	nop

08008338 <__multiply>:
 8008338:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 800833c:	690e      	ldr	r6, [r1, #16]
 800833e:	6914      	ldr	r4, [r2, #16]
 8008340:	42a6      	cmp	r6, r4
 8008342:	b083      	sub	sp, #12
 8008344:	460f      	mov	r7, r1
 8008346:	4615      	mov	r5, r2
 8008348:	da04      	bge.n	8008354 <__multiply+0x1c>
 800834a:	4632      	mov	r2, r6
 800834c:	462f      	mov	r7, r5
 800834e:	4626      	mov	r6, r4
 8008350:	460d      	mov	r5, r1
 8008352:	4614      	mov	r4, r2
 8008354:	e9d7 1301 	ldrd	r1, r3, [r7, #4]
 8008358:	eb06 0804 	add.w	r8, r6, r4
 800835c:	4543      	cmp	r3, r8
 800835e:	bfb8      	it	lt
 8008360:	3101      	addlt	r1, #1
 8008362:	f7ff ff1f 	bl	80081a4 <_Balloc>
 8008366:	f100 0914 	add.w	r9, r0, #20
 800836a:	eb09 0e88 	add.w	lr, r9, r8, lsl #2
 800836e:	45f1      	cmp	r9, lr
 8008370:	9000      	str	r0, [sp, #0]
 8008372:	d205      	bcs.n	8008380 <__multiply+0x48>
 8008374:	464b      	mov	r3, r9
 8008376:	2200      	movs	r2, #0
 8008378:	f843 2b04 	str.w	r2, [r3], #4
 800837c:	459e      	cmp	lr, r3
 800837e:	d8fb      	bhi.n	8008378 <__multiply+0x40>
 8008380:	f105 0a14 	add.w	sl, r5, #20
 8008384:	eb0a 0484 	add.w	r4, sl, r4, lsl #2
 8008388:	f107 0314 	add.w	r3, r7, #20
 800838c:	45a2      	cmp	sl, r4
 800838e:	eb03 0c86 	add.w	ip, r3, r6, lsl #2
 8008392:	d261      	bcs.n	8008458 <__multiply+0x120>
 8008394:	1b64      	subs	r4, r4, r5
 8008396:	3c15      	subs	r4, #21
 8008398:	f024 0403 	bic.w	r4, r4, #3
 800839c:	f8cd e004 	str.w	lr, [sp, #4]
 80083a0:	44a2      	add	sl, r4
 80083a2:	f105 0210 	add.w	r2, r5, #16
 80083a6:	469e      	mov	lr, r3
 80083a8:	e005      	b.n	80083b6 <__multiply+0x7e>
 80083aa:	0c2d      	lsrs	r5, r5, #16
 80083ac:	d12b      	bne.n	8008406 <__multiply+0xce>
 80083ae:	4592      	cmp	sl, r2
 80083b0:	f109 0904 	add.w	r9, r9, #4
 80083b4:	d04e      	beq.n	8008454 <__multiply+0x11c>
 80083b6:	f852 5f04 	ldr.w	r5, [r2, #4]!
 80083ba:	fa1f fb85 	uxth.w	fp, r5
 80083be:	f1bb 0f00 	cmp.w	fp, #0
 80083c2:	d0f2      	beq.n	80083aa <__multiply+0x72>
 80083c4:	4677      	mov	r7, lr
 80083c6:	464e      	mov	r6, r9
 80083c8:	2000      	movs	r0, #0
 80083ca:	e000      	b.n	80083ce <__multiply+0x96>
 80083cc:	4626      	mov	r6, r4
 80083ce:	f857 1b04 	ldr.w	r1, [r7], #4
 80083d2:	6834      	ldr	r4, [r6, #0]
 80083d4:	b28b      	uxth	r3, r1
 80083d6:	b2a5      	uxth	r5, r4
 80083d8:	0c09      	lsrs	r1, r1, #16
 80083da:	0c24      	lsrs	r4, r4, #16
 80083dc:	fb0b 5303 	mla	r3, fp, r3, r5
 80083e0:	4403      	add	r3, r0
 80083e2:	fb0b 4001 	mla	r0, fp, r1, r4
 80083e6:	eb00 4013 	add.w	r0, r0, r3, lsr #16
 80083ea:	4634      	mov	r4, r6
 80083ec:	b29b      	uxth	r3, r3
 80083ee:	ea43 4300 	orr.w	r3, r3, r0, lsl #16
 80083f2:	45bc      	cmp	ip, r7
 80083f4:	ea4f 4010 	mov.w	r0, r0, lsr #16
 80083f8:	f844 3b04 	str.w	r3, [r4], #4
 80083fc:	d8e6      	bhi.n	80083cc <__multiply+0x94>
 80083fe:	6070      	str	r0, [r6, #4]
 8008400:	6815      	ldr	r5, [r2, #0]
 8008402:	0c2d      	lsrs	r5, r5, #16
 8008404:	d0d3      	beq.n	80083ae <__multiply+0x76>
 8008406:	f8d9 3000 	ldr.w	r3, [r9]
 800840a:	4676      	mov	r6, lr
 800840c:	4618      	mov	r0, r3
 800840e:	46cb      	mov	fp, r9
 8008410:	2100      	movs	r1, #0
 8008412:	e000      	b.n	8008416 <__multiply+0xde>
 8008414:	46a3      	mov	fp, r4
 8008416:	8834      	ldrh	r4, [r6, #0]
 8008418:	0c00      	lsrs	r0, r0, #16
 800841a:	fb05 0004 	mla	r0, r5, r4, r0
 800841e:	4401      	add	r1, r0
 8008420:	b29b      	uxth	r3, r3
 8008422:	465c      	mov	r4, fp
 8008424:	ea43 4301 	orr.w	r3, r3, r1, lsl #16
 8008428:	f844 3b04 	str.w	r3, [r4], #4
 800842c:	f856 3b04 	ldr.w	r3, [r6], #4
 8008430:	f8db 0004 	ldr.w	r0, [fp, #4]
 8008434:	0c1b      	lsrs	r3, r3, #16
 8008436:	b287      	uxth	r7, r0
 8008438:	fb05 7303 	mla	r3, r5, r3, r7
 800843c:	eb03 4311 	add.w	r3, r3, r1, lsr #16
 8008440:	45b4      	cmp	ip, r6
 8008442:	ea4f 4113 	mov.w	r1, r3, lsr #16
 8008446:	d8e5      	bhi.n	8008414 <__multiply+0xdc>
 8008448:	4592      	cmp	sl, r2
 800844a:	f8cb 3004 	str.w	r3, [fp, #4]
 800844e:	f109 0904 	add.w	r9, r9, #4
 8008452:	d1b0      	bne.n	80083b6 <__multiply+0x7e>
 8008454:	f8dd e004 	ldr.w	lr, [sp, #4]
 8008458:	f1b8 0f00 	cmp.w	r8, #0
 800845c:	dd0b      	ble.n	8008476 <__multiply+0x13e>
 800845e:	f85e 3c04 	ldr.w	r3, [lr, #-4]
 8008462:	f1ae 0e04 	sub.w	lr, lr, #4
 8008466:	b11b      	cbz	r3, 8008470 <__multiply+0x138>
 8008468:	e005      	b.n	8008476 <__multiply+0x13e>
 800846a:	f85e 3d04 	ldr.w	r3, [lr, #-4]!
 800846e:	b913      	cbnz	r3, 8008476 <__multiply+0x13e>
 8008470:	f1b8 0801 	subs.w	r8, r8, #1
 8008474:	d1f9      	bne.n	800846a <__multiply+0x132>
 8008476:	9800      	ldr	r0, [sp, #0]
 8008478:	f8c0 8010 	str.w	r8, [r0, #16]
 800847c:	b003      	add	sp, #12
 800847e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008482:	bf00      	nop

08008484 <__pow5mult>:
 8008484:	f012 0303 	ands.w	r3, r2, #3
 8008488:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800848c:	4614      	mov	r4, r2
 800848e:	4607      	mov	r7, r0
 8008490:	d12e      	bne.n	80084f0 <__pow5mult+0x6c>
 8008492:	460d      	mov	r5, r1
 8008494:	10a4      	asrs	r4, r4, #2
 8008496:	d01c      	beq.n	80084d2 <__pow5mult+0x4e>
 8008498:	6cbe      	ldr	r6, [r7, #72]	; 0x48
 800849a:	b396      	cbz	r6, 8008502 <__pow5mult+0x7e>
 800849c:	07e3      	lsls	r3, r4, #31
 800849e:	f04f 0800 	mov.w	r8, #0
 80084a2:	d406      	bmi.n	80084b2 <__pow5mult+0x2e>
 80084a4:	1064      	asrs	r4, r4, #1
 80084a6:	d014      	beq.n	80084d2 <__pow5mult+0x4e>
 80084a8:	6830      	ldr	r0, [r6, #0]
 80084aa:	b1a8      	cbz	r0, 80084d8 <__pow5mult+0x54>
 80084ac:	4606      	mov	r6, r0
 80084ae:	07e3      	lsls	r3, r4, #31
 80084b0:	d5f8      	bpl.n	80084a4 <__pow5mult+0x20>
 80084b2:	4632      	mov	r2, r6
 80084b4:	4629      	mov	r1, r5
 80084b6:	4638      	mov	r0, r7
 80084b8:	f7ff ff3e 	bl	8008338 <__multiply>
 80084bc:	b1b5      	cbz	r5, 80084ec <__pow5mult+0x68>
 80084be:	686a      	ldr	r2, [r5, #4]
 80084c0:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80084c2:	1064      	asrs	r4, r4, #1
 80084c4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80084c8:	6029      	str	r1, [r5, #0]
 80084ca:	f843 5022 	str.w	r5, [r3, r2, lsl #2]
 80084ce:	4605      	mov	r5, r0
 80084d0:	d1ea      	bne.n	80084a8 <__pow5mult+0x24>
 80084d2:	4628      	mov	r0, r5
 80084d4:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80084d8:	4632      	mov	r2, r6
 80084da:	4631      	mov	r1, r6
 80084dc:	4638      	mov	r0, r7
 80084de:	f7ff ff2b 	bl	8008338 <__multiply>
 80084e2:	6030      	str	r0, [r6, #0]
 80084e4:	f8c0 8000 	str.w	r8, [r0]
 80084e8:	4606      	mov	r6, r0
 80084ea:	e7e0      	b.n	80084ae <__pow5mult+0x2a>
 80084ec:	4605      	mov	r5, r0
 80084ee:	e7d9      	b.n	80084a4 <__pow5mult+0x20>
 80084f0:	3b01      	subs	r3, #1
 80084f2:	4a0b      	ldr	r2, [pc, #44]	; (8008520 <__pow5mult+0x9c>)
 80084f4:	f852 2023 	ldr.w	r2, [r2, r3, lsl #2]
 80084f8:	2300      	movs	r3, #0
 80084fa:	f7ff fe83 	bl	8008204 <__multadd>
 80084fe:	4605      	mov	r5, r0
 8008500:	e7c8      	b.n	8008494 <__pow5mult+0x10>
 8008502:	2101      	movs	r1, #1
 8008504:	4638      	mov	r0, r7
 8008506:	f7ff fe4d 	bl	80081a4 <_Balloc>
 800850a:	f240 2371 	movw	r3, #625	; 0x271
 800850e:	6143      	str	r3, [r0, #20]
 8008510:	2201      	movs	r2, #1
 8008512:	2300      	movs	r3, #0
 8008514:	6102      	str	r2, [r0, #16]
 8008516:	4606      	mov	r6, r0
 8008518:	64b8      	str	r0, [r7, #72]	; 0x48
 800851a:	6003      	str	r3, [r0, #0]
 800851c:	e7be      	b.n	800849c <__pow5mult+0x18>
 800851e:	bf00      	nop
 8008520:	08009aa0 	.word	0x08009aa0

08008524 <__lshift>:
 8008524:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008528:	4691      	mov	r9, r2
 800852a:	690a      	ldr	r2, [r1, #16]
 800852c:	460e      	mov	r6, r1
 800852e:	ea4f 1469 	mov.w	r4, r9, asr #5
 8008532:	e9d1 1301 	ldrd	r1, r3, [r1, #4]
 8008536:	eb04 0802 	add.w	r8, r4, r2
 800853a:	f108 0501 	add.w	r5, r8, #1
 800853e:	429d      	cmp	r5, r3
 8008540:	4607      	mov	r7, r0
 8008542:	dd04      	ble.n	800854e <__lshift+0x2a>
 8008544:	005b      	lsls	r3, r3, #1
 8008546:	429d      	cmp	r5, r3
 8008548:	f101 0101 	add.w	r1, r1, #1
 800854c:	dcfa      	bgt.n	8008544 <__lshift+0x20>
 800854e:	4638      	mov	r0, r7
 8008550:	f7ff fe28 	bl	80081a4 <_Balloc>
 8008554:	2c00      	cmp	r4, #0
 8008556:	f100 0314 	add.w	r3, r0, #20
 800855a:	dd37      	ble.n	80085cc <__lshift+0xa8>
 800855c:	eb03 0184 	add.w	r1, r3, r4, lsl #2
 8008560:	2200      	movs	r2, #0
 8008562:	f843 2b04 	str.w	r2, [r3], #4
 8008566:	428b      	cmp	r3, r1
 8008568:	d1fb      	bne.n	8008562 <__lshift+0x3e>
 800856a:	6934      	ldr	r4, [r6, #16]
 800856c:	f106 0314 	add.w	r3, r6, #20
 8008570:	f019 091f 	ands.w	r9, r9, #31
 8008574:	eb03 0c84 	add.w	ip, r3, r4, lsl #2
 8008578:	d020      	beq.n	80085bc <__lshift+0x98>
 800857a:	f1c9 0e20 	rsb	lr, r9, #32
 800857e:	2200      	movs	r2, #0
 8008580:	e000      	b.n	8008584 <__lshift+0x60>
 8008582:	4651      	mov	r1, sl
 8008584:	681c      	ldr	r4, [r3, #0]
 8008586:	468a      	mov	sl, r1
 8008588:	fa04 f409 	lsl.w	r4, r4, r9
 800858c:	4314      	orrs	r4, r2
 800858e:	f84a 4b04 	str.w	r4, [sl], #4
 8008592:	f853 2b04 	ldr.w	r2, [r3], #4
 8008596:	4563      	cmp	r3, ip
 8008598:	fa22 f20e 	lsr.w	r2, r2, lr
 800859c:	d3f1      	bcc.n	8008582 <__lshift+0x5e>
 800859e:	604a      	str	r2, [r1, #4]
 80085a0:	b10a      	cbz	r2, 80085a6 <__lshift+0x82>
 80085a2:	f108 0502 	add.w	r5, r8, #2
 80085a6:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
 80085a8:	6872      	ldr	r2, [r6, #4]
 80085aa:	3d01      	subs	r5, #1
 80085ac:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
 80085b0:	6105      	str	r5, [r0, #16]
 80085b2:	6031      	str	r1, [r6, #0]
 80085b4:	f843 6022 	str.w	r6, [r3, r2, lsl #2]
 80085b8:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 80085bc:	3904      	subs	r1, #4
 80085be:	f853 2b04 	ldr.w	r2, [r3], #4
 80085c2:	f841 2f04 	str.w	r2, [r1, #4]!
 80085c6:	459c      	cmp	ip, r3
 80085c8:	d8f9      	bhi.n	80085be <__lshift+0x9a>
 80085ca:	e7ec      	b.n	80085a6 <__lshift+0x82>
 80085cc:	4619      	mov	r1, r3
 80085ce:	e7cc      	b.n	800856a <__lshift+0x46>

080085d0 <__mcmp>:
 80085d0:	b430      	push	{r4, r5}
 80085d2:	690b      	ldr	r3, [r1, #16]
 80085d4:	4605      	mov	r5, r0
 80085d6:	6900      	ldr	r0, [r0, #16]
 80085d8:	1ac0      	subs	r0, r0, r3
 80085da:	d10f      	bne.n	80085fc <__mcmp+0x2c>
 80085dc:	009b      	lsls	r3, r3, #2
 80085de:	3514      	adds	r5, #20
 80085e0:	3114      	adds	r1, #20
 80085e2:	4419      	add	r1, r3
 80085e4:	442b      	add	r3, r5
 80085e6:	e001      	b.n	80085ec <__mcmp+0x1c>
 80085e8:	429d      	cmp	r5, r3
 80085ea:	d207      	bcs.n	80085fc <__mcmp+0x2c>
 80085ec:	f853 4d04 	ldr.w	r4, [r3, #-4]!
 80085f0:	f851 2d04 	ldr.w	r2, [r1, #-4]!
 80085f4:	4294      	cmp	r4, r2
 80085f6:	d0f7      	beq.n	80085e8 <__mcmp+0x18>
 80085f8:	d302      	bcc.n	8008600 <__mcmp+0x30>
 80085fa:	2001      	movs	r0, #1
 80085fc:	bc30      	pop	{r4, r5}
 80085fe:	4770      	bx	lr
 8008600:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008604:	e7fa      	b.n	80085fc <__mcmp+0x2c>
 8008606:	bf00      	nop

08008608 <__mdiff>:
 8008608:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 800860c:	6913      	ldr	r3, [r2, #16]
 800860e:	690d      	ldr	r5, [r1, #16]
 8008610:	1aed      	subs	r5, r5, r3
 8008612:	2d00      	cmp	r5, #0
 8008614:	460e      	mov	r6, r1
 8008616:	4690      	mov	r8, r2
 8008618:	f101 0414 	add.w	r4, r1, #20
 800861c:	f102 0714 	add.w	r7, r2, #20
 8008620:	d114      	bne.n	800864c <__mdiff+0x44>
 8008622:	009b      	lsls	r3, r3, #2
 8008624:	18e2      	adds	r2, r4, r3
 8008626:	443b      	add	r3, r7
 8008628:	e001      	b.n	800862e <__mdiff+0x26>
 800862a:	42a2      	cmp	r2, r4
 800862c:	d959      	bls.n	80086e2 <__mdiff+0xda>
 800862e:	f852 cd04 	ldr.w	ip, [r2, #-4]!
 8008632:	f853 1d04 	ldr.w	r1, [r3, #-4]!
 8008636:	458c      	cmp	ip, r1
 8008638:	d0f7      	beq.n	800862a <__mdiff+0x22>
 800863a:	d209      	bcs.n	8008650 <__mdiff+0x48>
 800863c:	4622      	mov	r2, r4
 800863e:	4633      	mov	r3, r6
 8008640:	463c      	mov	r4, r7
 8008642:	4646      	mov	r6, r8
 8008644:	4617      	mov	r7, r2
 8008646:	4698      	mov	r8, r3
 8008648:	2501      	movs	r5, #1
 800864a:	e001      	b.n	8008650 <__mdiff+0x48>
 800864c:	dbf6      	blt.n	800863c <__mdiff+0x34>
 800864e:	2500      	movs	r5, #0
 8008650:	6871      	ldr	r1, [r6, #4]
 8008652:	f7ff fda7 	bl	80081a4 <_Balloc>
 8008656:	f8d8 3010 	ldr.w	r3, [r8, #16]
 800865a:	6936      	ldr	r6, [r6, #16]
 800865c:	60c5      	str	r5, [r0, #12]
 800865e:	eb07 0e83 	add.w	lr, r7, r3, lsl #2
 8008662:	46bc      	mov	ip, r7
 8008664:	f100 0514 	add.w	r5, r0, #20
 8008668:	eb04 0786 	add.w	r7, r4, r6, lsl #2
 800866c:	2300      	movs	r3, #0
 800866e:	f85c 1b04 	ldr.w	r1, [ip], #4
 8008672:	f854 8b04 	ldr.w	r8, [r4], #4
 8008676:	b28a      	uxth	r2, r1
 8008678:	fa13 f388 	uxtah	r3, r3, r8
 800867c:	0c09      	lsrs	r1, r1, #16
 800867e:	1a9a      	subs	r2, r3, r2
 8008680:	ebc1 4318 	rsb	r3, r1, r8, lsr #16
 8008684:	eb03 4322 	add.w	r3, r3, r2, asr #16
 8008688:	b292      	uxth	r2, r2
 800868a:	ea42 4203 	orr.w	r2, r2, r3, lsl #16
 800868e:	45e6      	cmp	lr, ip
 8008690:	f845 2b04 	str.w	r2, [r5], #4
 8008694:	ea4f 4323 	mov.w	r3, r3, asr #16
 8008698:	d8e9      	bhi.n	800866e <__mdiff+0x66>
 800869a:	42a7      	cmp	r7, r4
 800869c:	d917      	bls.n	80086ce <__mdiff+0xc6>
 800869e:	46ae      	mov	lr, r5
 80086a0:	46a4      	mov	ip, r4
 80086a2:	f85c 2b04 	ldr.w	r2, [ip], #4
 80086a6:	fa13 f382 	uxtah	r3, r3, r2
 80086aa:	1419      	asrs	r1, r3, #16
 80086ac:	eb01 4112 	add.w	r1, r1, r2, lsr #16
 80086b0:	b29b      	uxth	r3, r3
 80086b2:	ea43 4201 	orr.w	r2, r3, r1, lsl #16
 80086b6:	4567      	cmp	r7, ip
 80086b8:	f84e 2b04 	str.w	r2, [lr], #4
 80086bc:	ea4f 4321 	mov.w	r3, r1, asr #16
 80086c0:	d8ef      	bhi.n	80086a2 <__mdiff+0x9a>
 80086c2:	43e4      	mvns	r4, r4
 80086c4:	4427      	add	r7, r4
 80086c6:	f027 0703 	bic.w	r7, r7, #3
 80086ca:	3704      	adds	r7, #4
 80086cc:	443d      	add	r5, r7
 80086ce:	3d04      	subs	r5, #4
 80086d0:	b922      	cbnz	r2, 80086dc <__mdiff+0xd4>
 80086d2:	f855 3d04 	ldr.w	r3, [r5, #-4]!
 80086d6:	3e01      	subs	r6, #1
 80086d8:	2b00      	cmp	r3, #0
 80086da:	d0fa      	beq.n	80086d2 <__mdiff+0xca>
 80086dc:	6106      	str	r6, [r0, #16]
 80086de:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}
 80086e2:	2100      	movs	r1, #0
 80086e4:	f7ff fd5e 	bl	80081a4 <_Balloc>
 80086e8:	2201      	movs	r2, #1
 80086ea:	2300      	movs	r3, #0
 80086ec:	e9c0 2304 	strd	r2, r3, [r0, #16]
 80086f0:	e8bd 81f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, pc}

080086f4 <__d2b>:
 80086f4:	e92d 43f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, lr}
 80086f8:	460f      	mov	r7, r1
 80086fa:	b083      	sub	sp, #12
 80086fc:	2101      	movs	r1, #1
 80086fe:	ec55 4b10 	vmov	r4, r5, d0
 8008702:	4616      	mov	r6, r2
 8008704:	f7ff fd4e 	bl	80081a4 <_Balloc>
 8008708:	f3c5 580a 	ubfx	r8, r5, #20, #11
 800870c:	4681      	mov	r9, r0
 800870e:	f3c5 0313 	ubfx	r3, r5, #0, #20
 8008712:	f1b8 0f00 	cmp.w	r8, #0
 8008716:	d001      	beq.n	800871c <__d2b+0x28>
 8008718:	f443 1380 	orr.w	r3, r3, #1048576	; 0x100000
 800871c:	2c00      	cmp	r4, #0
 800871e:	9301      	str	r3, [sp, #4]
 8008720:	d024      	beq.n	800876c <__d2b+0x78>
 8008722:	a802      	add	r0, sp, #8
 8008724:	f840 4d08 	str.w	r4, [r0, #-8]!
 8008728:	f7ff fdcc 	bl	80082c4 <__lo0bits>
 800872c:	2800      	cmp	r0, #0
 800872e:	d136      	bne.n	800879e <__d2b+0xaa>
 8008730:	e9dd 2300 	ldrd	r2, r3, [sp]
 8008734:	f8c9 2014 	str.w	r2, [r9, #20]
 8008738:	2b00      	cmp	r3, #0
 800873a:	bf0c      	ite	eq
 800873c:	2101      	moveq	r1, #1
 800873e:	2102      	movne	r1, #2
 8008740:	f8c9 3018 	str.w	r3, [r9, #24]
 8008744:	f8c9 1010 	str.w	r1, [r9, #16]
 8008748:	f1b8 0f00 	cmp.w	r8, #0
 800874c:	d11b      	bne.n	8008786 <__d2b+0x92>
 800874e:	eb09 0381 	add.w	r3, r9, r1, lsl #2
 8008752:	f2a0 4032 	subw	r0, r0, #1074	; 0x432
 8008756:	6038      	str	r0, [r7, #0]
 8008758:	6918      	ldr	r0, [r3, #16]
 800875a:	f7ff fd93 	bl	8008284 <__hi0bits>
 800875e:	ebc0 1041 	rsb	r0, r0, r1, lsl #5
 8008762:	6030      	str	r0, [r6, #0]
 8008764:	4648      	mov	r0, r9
 8008766:	b003      	add	sp, #12
 8008768:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800876c:	a801      	add	r0, sp, #4
 800876e:	f7ff fda9 	bl	80082c4 <__lo0bits>
 8008772:	9b01      	ldr	r3, [sp, #4]
 8008774:	f8c9 3014 	str.w	r3, [r9, #20]
 8008778:	2101      	movs	r1, #1
 800877a:	3020      	adds	r0, #32
 800877c:	f8c9 1010 	str.w	r1, [r9, #16]
 8008780:	f1b8 0f00 	cmp.w	r8, #0
 8008784:	d0e3      	beq.n	800874e <__d2b+0x5a>
 8008786:	f2a8 4833 	subw	r8, r8, #1075	; 0x433
 800878a:	eb08 0300 	add.w	r3, r8, r0
 800878e:	f1c0 0035 	rsb	r0, r0, #53	; 0x35
 8008792:	603b      	str	r3, [r7, #0]
 8008794:	6030      	str	r0, [r6, #0]
 8008796:	4648      	mov	r0, r9
 8008798:	b003      	add	sp, #12
 800879a:	e8bd 83f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, pc}
 800879e:	e9dd 1300 	ldrd	r1, r3, [sp]
 80087a2:	f1c0 0220 	rsb	r2, r0, #32
 80087a6:	fa03 f202 	lsl.w	r2, r3, r2
 80087aa:	430a      	orrs	r2, r1
 80087ac:	40c3      	lsrs	r3, r0
 80087ae:	9301      	str	r3, [sp, #4]
 80087b0:	f8c9 2014 	str.w	r2, [r9, #20]
 80087b4:	e7c0      	b.n	8008738 <__d2b+0x44>
 80087b6:	bf00      	nop

080087b8 <_realloc_r>:
 80087b8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 80087bc:	4692      	mov	sl, r2
 80087be:	b083      	sub	sp, #12
 80087c0:	2900      	cmp	r1, #0
 80087c2:	f000 80a1 	beq.w	8008908 <_realloc_r+0x150>
 80087c6:	460d      	mov	r5, r1
 80087c8:	4680      	mov	r8, r0
 80087ca:	f10a 040b 	add.w	r4, sl, #11
 80087ce:	f7fc f993 	bl	8004af8 <__malloc_lock>
 80087d2:	f855 2c04 	ldr.w	r2, [r5, #-4]
 80087d6:	2c16      	cmp	r4, #22
 80087d8:	f022 0603 	bic.w	r6, r2, #3
 80087dc:	f1a5 0708 	sub.w	r7, r5, #8
 80087e0:	d83e      	bhi.n	8008860 <_realloc_r+0xa8>
 80087e2:	2410      	movs	r4, #16
 80087e4:	4621      	mov	r1, r4
 80087e6:	45a2      	cmp	sl, r4
 80087e8:	d83f      	bhi.n	800886a <_realloc_r+0xb2>
 80087ea:	428e      	cmp	r6, r1
 80087ec:	eb07 0906 	add.w	r9, r7, r6
 80087f0:	da74      	bge.n	80088dc <_realloc_r+0x124>
 80087f2:	4bc7      	ldr	r3, [pc, #796]	; (8008b10 <_realloc_r+0x358>)
 80087f4:	6898      	ldr	r0, [r3, #8]
 80087f6:	4548      	cmp	r0, r9
 80087f8:	f000 80aa 	beq.w	8008950 <_realloc_r+0x198>
 80087fc:	f8d9 0004 	ldr.w	r0, [r9, #4]
 8008800:	f020 0301 	bic.w	r3, r0, #1
 8008804:	444b      	add	r3, r9
 8008806:	685b      	ldr	r3, [r3, #4]
 8008808:	07db      	lsls	r3, r3, #31
 800880a:	f140 8083 	bpl.w	8008914 <_realloc_r+0x15c>
 800880e:	07d2      	lsls	r2, r2, #31
 8008810:	d534      	bpl.n	800887c <_realloc_r+0xc4>
 8008812:	4651      	mov	r1, sl
 8008814:	4640      	mov	r0, r8
 8008816:	f7fb fe81 	bl	800451c <_malloc_r>
 800881a:	4682      	mov	sl, r0
 800881c:	b1e0      	cbz	r0, 8008858 <_realloc_r+0xa0>
 800881e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8008822:	f023 0301 	bic.w	r3, r3, #1
 8008826:	443b      	add	r3, r7
 8008828:	f1a0 0208 	sub.w	r2, r0, #8
 800882c:	4293      	cmp	r3, r2
 800882e:	f000 80f9 	beq.w	8008a24 <_realloc_r+0x26c>
 8008832:	1f32      	subs	r2, r6, #4
 8008834:	2a24      	cmp	r2, #36	; 0x24
 8008836:	f200 8107 	bhi.w	8008a48 <_realloc_r+0x290>
 800883a:	2a13      	cmp	r2, #19
 800883c:	6829      	ldr	r1, [r5, #0]
 800883e:	f200 80e6 	bhi.w	8008a0e <_realloc_r+0x256>
 8008842:	4603      	mov	r3, r0
 8008844:	462a      	mov	r2, r5
 8008846:	6019      	str	r1, [r3, #0]
 8008848:	6851      	ldr	r1, [r2, #4]
 800884a:	6059      	str	r1, [r3, #4]
 800884c:	6892      	ldr	r2, [r2, #8]
 800884e:	609a      	str	r2, [r3, #8]
 8008850:	4629      	mov	r1, r5
 8008852:	4640      	mov	r0, r8
 8008854:	f7ff f918 	bl	8007a88 <_free_r>
 8008858:	4640      	mov	r0, r8
 800885a:	f7fc f953 	bl	8004b04 <__malloc_unlock>
 800885e:	e04f      	b.n	8008900 <_realloc_r+0x148>
 8008860:	f024 0407 	bic.w	r4, r4, #7
 8008864:	2c00      	cmp	r4, #0
 8008866:	4621      	mov	r1, r4
 8008868:	dabd      	bge.n	80087e6 <_realloc_r+0x2e>
 800886a:	f04f 0a00 	mov.w	sl, #0
 800886e:	230c      	movs	r3, #12
 8008870:	4650      	mov	r0, sl
 8008872:	f8c8 3000 	str.w	r3, [r8]
 8008876:	b003      	add	sp, #12
 8008878:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 800887c:	f855 3c08 	ldr.w	r3, [r5, #-8]
 8008880:	eba7 0b03 	sub.w	fp, r7, r3
 8008884:	f8db 2004 	ldr.w	r2, [fp, #4]
 8008888:	f022 0203 	bic.w	r2, r2, #3
 800888c:	18b3      	adds	r3, r6, r2
 800888e:	428b      	cmp	r3, r1
 8008890:	dbbf      	blt.n	8008812 <_realloc_r+0x5a>
 8008892:	46da      	mov	sl, fp
 8008894:	f8db 100c 	ldr.w	r1, [fp, #12]
 8008898:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 800889c:	1f32      	subs	r2, r6, #4
 800889e:	2a24      	cmp	r2, #36	; 0x24
 80088a0:	60c1      	str	r1, [r0, #12]
 80088a2:	eb0b 0903 	add.w	r9, fp, r3
 80088a6:	6088      	str	r0, [r1, #8]
 80088a8:	f200 80c6 	bhi.w	8008a38 <_realloc_r+0x280>
 80088ac:	2a13      	cmp	r2, #19
 80088ae:	6829      	ldr	r1, [r5, #0]
 80088b0:	f240 80c0 	bls.w	8008a34 <_realloc_r+0x27c>
 80088b4:	f8cb 1008 	str.w	r1, [fp, #8]
 80088b8:	6869      	ldr	r1, [r5, #4]
 80088ba:	f8cb 100c 	str.w	r1, [fp, #12]
 80088be:	2a1b      	cmp	r2, #27
 80088c0:	68a9      	ldr	r1, [r5, #8]
 80088c2:	f200 80d8 	bhi.w	8008a76 <_realloc_r+0x2be>
 80088c6:	f10b 0210 	add.w	r2, fp, #16
 80088ca:	3508      	adds	r5, #8
 80088cc:	6011      	str	r1, [r2, #0]
 80088ce:	6869      	ldr	r1, [r5, #4]
 80088d0:	6051      	str	r1, [r2, #4]
 80088d2:	68a9      	ldr	r1, [r5, #8]
 80088d4:	6091      	str	r1, [r2, #8]
 80088d6:	461e      	mov	r6, r3
 80088d8:	465f      	mov	r7, fp
 80088da:	4655      	mov	r5, sl
 80088dc:	687b      	ldr	r3, [r7, #4]
 80088de:	1b32      	subs	r2, r6, r4
 80088e0:	2a0f      	cmp	r2, #15
 80088e2:	f003 0301 	and.w	r3, r3, #1
 80088e6:	d822      	bhi.n	800892e <_realloc_r+0x176>
 80088e8:	4333      	orrs	r3, r6
 80088ea:	607b      	str	r3, [r7, #4]
 80088ec:	f8d9 3004 	ldr.w	r3, [r9, #4]
 80088f0:	f043 0301 	orr.w	r3, r3, #1
 80088f4:	f8c9 3004 	str.w	r3, [r9, #4]
 80088f8:	4640      	mov	r0, r8
 80088fa:	f7fc f903 	bl	8004b04 <__malloc_unlock>
 80088fe:	46aa      	mov	sl, r5
 8008900:	4650      	mov	r0, sl
 8008902:	b003      	add	sp, #12
 8008904:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008908:	4611      	mov	r1, r2
 800890a:	b003      	add	sp, #12
 800890c:	e8bd 4ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008910:	f7fb be04 	b.w	800451c <_malloc_r>
 8008914:	f020 0003 	bic.w	r0, r0, #3
 8008918:	1833      	adds	r3, r6, r0
 800891a:	428b      	cmp	r3, r1
 800891c:	db61      	blt.n	80089e2 <_realloc_r+0x22a>
 800891e:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8008922:	461e      	mov	r6, r3
 8008924:	60ca      	str	r2, [r1, #12]
 8008926:	eb07 0903 	add.w	r9, r7, r3
 800892a:	6091      	str	r1, [r2, #8]
 800892c:	e7d6      	b.n	80088dc <_realloc_r+0x124>
 800892e:	1939      	adds	r1, r7, r4
 8008930:	4323      	orrs	r3, r4
 8008932:	f042 0201 	orr.w	r2, r2, #1
 8008936:	607b      	str	r3, [r7, #4]
 8008938:	604a      	str	r2, [r1, #4]
 800893a:	f8d9 3004 	ldr.w	r3, [r9, #4]
 800893e:	f043 0301 	orr.w	r3, r3, #1
 8008942:	3108      	adds	r1, #8
 8008944:	f8c9 3004 	str.w	r3, [r9, #4]
 8008948:	4640      	mov	r0, r8
 800894a:	f7ff f89d 	bl	8007a88 <_free_r>
 800894e:	e7d3      	b.n	80088f8 <_realloc_r+0x140>
 8008950:	6840      	ldr	r0, [r0, #4]
 8008952:	f020 0903 	bic.w	r9, r0, #3
 8008956:	44b1      	add	r9, r6
 8008958:	f104 0010 	add.w	r0, r4, #16
 800895c:	4581      	cmp	r9, r0
 800895e:	da77      	bge.n	8008a50 <_realloc_r+0x298>
 8008960:	07d2      	lsls	r2, r2, #31
 8008962:	f53f af56 	bmi.w	8008812 <_realloc_r+0x5a>
 8008966:	f855 2c08 	ldr.w	r2, [r5, #-8]
 800896a:	eba7 0b02 	sub.w	fp, r7, r2
 800896e:	f8db 2004 	ldr.w	r2, [fp, #4]
 8008972:	f022 0203 	bic.w	r2, r2, #3
 8008976:	4491      	add	r9, r2
 8008978:	4548      	cmp	r0, r9
 800897a:	dc87      	bgt.n	800888c <_realloc_r+0xd4>
 800897c:	46da      	mov	sl, fp
 800897e:	f8db 100c 	ldr.w	r1, [fp, #12]
 8008982:	f85a 0f08 	ldr.w	r0, [sl, #8]!
 8008986:	1f32      	subs	r2, r6, #4
 8008988:	2a24      	cmp	r2, #36	; 0x24
 800898a:	60c1      	str	r1, [r0, #12]
 800898c:	6088      	str	r0, [r1, #8]
 800898e:	f200 80a1 	bhi.w	8008ad4 <_realloc_r+0x31c>
 8008992:	2a13      	cmp	r2, #19
 8008994:	6829      	ldr	r1, [r5, #0]
 8008996:	f240 809b 	bls.w	8008ad0 <_realloc_r+0x318>
 800899a:	f8cb 1008 	str.w	r1, [fp, #8]
 800899e:	6869      	ldr	r1, [r5, #4]
 80089a0:	f8cb 100c 	str.w	r1, [fp, #12]
 80089a4:	2a1b      	cmp	r2, #27
 80089a6:	68a9      	ldr	r1, [r5, #8]
 80089a8:	f200 809b 	bhi.w	8008ae2 <_realloc_r+0x32a>
 80089ac:	f10b 0210 	add.w	r2, fp, #16
 80089b0:	3508      	adds	r5, #8
 80089b2:	6011      	str	r1, [r2, #0]
 80089b4:	6869      	ldr	r1, [r5, #4]
 80089b6:	6051      	str	r1, [r2, #4]
 80089b8:	68a9      	ldr	r1, [r5, #8]
 80089ba:	6091      	str	r1, [r2, #8]
 80089bc:	eb0b 0104 	add.w	r1, fp, r4
 80089c0:	eba9 0204 	sub.w	r2, r9, r4
 80089c4:	f042 0201 	orr.w	r2, r2, #1
 80089c8:	6099      	str	r1, [r3, #8]
 80089ca:	604a      	str	r2, [r1, #4]
 80089cc:	f8db 3004 	ldr.w	r3, [fp, #4]
 80089d0:	f003 0301 	and.w	r3, r3, #1
 80089d4:	431c      	orrs	r4, r3
 80089d6:	4640      	mov	r0, r8
 80089d8:	f8cb 4004 	str.w	r4, [fp, #4]
 80089dc:	f7fc f892 	bl	8004b04 <__malloc_unlock>
 80089e0:	e78e      	b.n	8008900 <_realloc_r+0x148>
 80089e2:	07d3      	lsls	r3, r2, #31
 80089e4:	f53f af15 	bmi.w	8008812 <_realloc_r+0x5a>
 80089e8:	f855 3c08 	ldr.w	r3, [r5, #-8]
 80089ec:	eba7 0b03 	sub.w	fp, r7, r3
 80089f0:	f8db 2004 	ldr.w	r2, [fp, #4]
 80089f4:	f022 0203 	bic.w	r2, r2, #3
 80089f8:	4410      	add	r0, r2
 80089fa:	1983      	adds	r3, r0, r6
 80089fc:	428b      	cmp	r3, r1
 80089fe:	f6ff af45 	blt.w	800888c <_realloc_r+0xd4>
 8008a02:	e9d9 1202 	ldrd	r1, r2, [r9, #8]
 8008a06:	46da      	mov	sl, fp
 8008a08:	60ca      	str	r2, [r1, #12]
 8008a0a:	6091      	str	r1, [r2, #8]
 8008a0c:	e742      	b.n	8008894 <_realloc_r+0xdc>
 8008a0e:	6001      	str	r1, [r0, #0]
 8008a10:	686b      	ldr	r3, [r5, #4]
 8008a12:	6043      	str	r3, [r0, #4]
 8008a14:	2a1b      	cmp	r2, #27
 8008a16:	d83a      	bhi.n	8008a8e <_realloc_r+0x2d6>
 8008a18:	f105 0208 	add.w	r2, r5, #8
 8008a1c:	f100 0308 	add.w	r3, r0, #8
 8008a20:	68a9      	ldr	r1, [r5, #8]
 8008a22:	e710      	b.n	8008846 <_realloc_r+0x8e>
 8008a24:	f850 3c04 	ldr.w	r3, [r0, #-4]
 8008a28:	f023 0303 	bic.w	r3, r3, #3
 8008a2c:	441e      	add	r6, r3
 8008a2e:	eb07 0906 	add.w	r9, r7, r6
 8008a32:	e753      	b.n	80088dc <_realloc_r+0x124>
 8008a34:	4652      	mov	r2, sl
 8008a36:	e749      	b.n	80088cc <_realloc_r+0x114>
 8008a38:	4629      	mov	r1, r5
 8008a3a:	4650      	mov	r0, sl
 8008a3c:	461e      	mov	r6, r3
 8008a3e:	465f      	mov	r7, fp
 8008a40:	f7ff fb4c 	bl	80080dc <memmove>
 8008a44:	4655      	mov	r5, sl
 8008a46:	e749      	b.n	80088dc <_realloc_r+0x124>
 8008a48:	4629      	mov	r1, r5
 8008a4a:	f7ff fb47 	bl	80080dc <memmove>
 8008a4e:	e6ff      	b.n	8008850 <_realloc_r+0x98>
 8008a50:	4427      	add	r7, r4
 8008a52:	eba9 0904 	sub.w	r9, r9, r4
 8008a56:	f049 0201 	orr.w	r2, r9, #1
 8008a5a:	609f      	str	r7, [r3, #8]
 8008a5c:	607a      	str	r2, [r7, #4]
 8008a5e:	f855 3c04 	ldr.w	r3, [r5, #-4]
 8008a62:	f003 0301 	and.w	r3, r3, #1
 8008a66:	431c      	orrs	r4, r3
 8008a68:	4640      	mov	r0, r8
 8008a6a:	f845 4c04 	str.w	r4, [r5, #-4]
 8008a6e:	f7fc f849 	bl	8004b04 <__malloc_unlock>
 8008a72:	46aa      	mov	sl, r5
 8008a74:	e744      	b.n	8008900 <_realloc_r+0x148>
 8008a76:	f8cb 1010 	str.w	r1, [fp, #16]
 8008a7a:	68e9      	ldr	r1, [r5, #12]
 8008a7c:	f8cb 1014 	str.w	r1, [fp, #20]
 8008a80:	2a24      	cmp	r2, #36	; 0x24
 8008a82:	d010      	beq.n	8008aa6 <_realloc_r+0x2ee>
 8008a84:	6929      	ldr	r1, [r5, #16]
 8008a86:	f10b 0218 	add.w	r2, fp, #24
 8008a8a:	3510      	adds	r5, #16
 8008a8c:	e71e      	b.n	80088cc <_realloc_r+0x114>
 8008a8e:	68ab      	ldr	r3, [r5, #8]
 8008a90:	6083      	str	r3, [r0, #8]
 8008a92:	68eb      	ldr	r3, [r5, #12]
 8008a94:	60c3      	str	r3, [r0, #12]
 8008a96:	2a24      	cmp	r2, #36	; 0x24
 8008a98:	d010      	beq.n	8008abc <_realloc_r+0x304>
 8008a9a:	f105 0210 	add.w	r2, r5, #16
 8008a9e:	f100 0310 	add.w	r3, r0, #16
 8008aa2:	6929      	ldr	r1, [r5, #16]
 8008aa4:	e6cf      	b.n	8008846 <_realloc_r+0x8e>
 8008aa6:	692a      	ldr	r2, [r5, #16]
 8008aa8:	f8cb 2018 	str.w	r2, [fp, #24]
 8008aac:	696a      	ldr	r2, [r5, #20]
 8008aae:	f8cb 201c 	str.w	r2, [fp, #28]
 8008ab2:	69a9      	ldr	r1, [r5, #24]
 8008ab4:	f10b 0220 	add.w	r2, fp, #32
 8008ab8:	3518      	adds	r5, #24
 8008aba:	e707      	b.n	80088cc <_realloc_r+0x114>
 8008abc:	692b      	ldr	r3, [r5, #16]
 8008abe:	6103      	str	r3, [r0, #16]
 8008ac0:	696b      	ldr	r3, [r5, #20]
 8008ac2:	6143      	str	r3, [r0, #20]
 8008ac4:	69a9      	ldr	r1, [r5, #24]
 8008ac6:	f105 0218 	add.w	r2, r5, #24
 8008aca:	f100 0318 	add.w	r3, r0, #24
 8008ace:	e6ba      	b.n	8008846 <_realloc_r+0x8e>
 8008ad0:	4652      	mov	r2, sl
 8008ad2:	e76e      	b.n	80089b2 <_realloc_r+0x1fa>
 8008ad4:	4629      	mov	r1, r5
 8008ad6:	4650      	mov	r0, sl
 8008ad8:	9301      	str	r3, [sp, #4]
 8008ada:	f7ff faff 	bl	80080dc <memmove>
 8008ade:	9b01      	ldr	r3, [sp, #4]
 8008ae0:	e76c      	b.n	80089bc <_realloc_r+0x204>
 8008ae2:	f8cb 1010 	str.w	r1, [fp, #16]
 8008ae6:	68e9      	ldr	r1, [r5, #12]
 8008ae8:	f8cb 1014 	str.w	r1, [fp, #20]
 8008aec:	2a24      	cmp	r2, #36	; 0x24
 8008aee:	d004      	beq.n	8008afa <_realloc_r+0x342>
 8008af0:	6929      	ldr	r1, [r5, #16]
 8008af2:	f10b 0218 	add.w	r2, fp, #24
 8008af6:	3510      	adds	r5, #16
 8008af8:	e75b      	b.n	80089b2 <_realloc_r+0x1fa>
 8008afa:	692a      	ldr	r2, [r5, #16]
 8008afc:	f8cb 2018 	str.w	r2, [fp, #24]
 8008b00:	696a      	ldr	r2, [r5, #20]
 8008b02:	f8cb 201c 	str.w	r2, [fp, #28]
 8008b06:	69a9      	ldr	r1, [r5, #24]
 8008b08:	f10b 0220 	add.w	r2, fp, #32
 8008b0c:	3518      	adds	r5, #24
 8008b0e:	e750      	b.n	80089b2 <_realloc_r+0x1fa>
 8008b10:	20000448 	.word	0x20000448

08008b14 <frexp>:
 8008b14:	ec53 2b10 	vmov	r2, r3, d0
 8008b18:	b570      	push	{r4, r5, r6, lr}
 8008b1a:	4e16      	ldr	r6, [pc, #88]	; (8008b74 <frexp+0x60>)
 8008b1c:	f023 4100 	bic.w	r1, r3, #2147483648	; 0x80000000
 8008b20:	2500      	movs	r5, #0
 8008b22:	42b1      	cmp	r1, r6
 8008b24:	4604      	mov	r4, r0
 8008b26:	6005      	str	r5, [r0, #0]
 8008b28:	dc21      	bgt.n	8008b6e <frexp+0x5a>
 8008b2a:	ee10 6a10 	vmov	r6, s0
 8008b2e:	430e      	orrs	r6, r1
 8008b30:	d01d      	beq.n	8008b6e <frexp+0x5a>
 8008b32:	f5b1 1f80 	cmp.w	r1, #1048576	; 0x100000
 8008b36:	4618      	mov	r0, r3
 8008b38:	da0c      	bge.n	8008b54 <frexp+0x40>
 8008b3a:	4619      	mov	r1, r3
 8008b3c:	2200      	movs	r2, #0
 8008b3e:	ee10 0a10 	vmov	r0, s0
 8008b42:	4b0d      	ldr	r3, [pc, #52]	; (8008b78 <frexp+0x64>)
 8008b44:	f7f8 f878 	bl	8000c38 <__aeabi_dmul>
 8008b48:	f06f 0535 	mvn.w	r5, #53	; 0x35
 8008b4c:	4602      	mov	r2, r0
 8008b4e:	4608      	mov	r0, r1
 8008b50:	f021 4100 	bic.w	r1, r1, #2147483648	; 0x80000000
 8008b54:	f020 40ff 	bic.w	r0, r0, #2139095040	; 0x7f800000
 8008b58:	1509      	asrs	r1, r1, #20
 8008b5a:	f420 00e0 	bic.w	r0, r0, #7340032	; 0x700000
 8008b5e:	f2a1 31fe 	subw	r1, r1, #1022	; 0x3fe
 8008b62:	f040 537f 	orr.w	r3, r0, #1069547520	; 0x3fc00000
 8008b66:	4429      	add	r1, r5
 8008b68:	f443 1300 	orr.w	r3, r3, #2097152	; 0x200000
 8008b6c:	6021      	str	r1, [r4, #0]
 8008b6e:	ec43 2b10 	vmov	d0, r2, r3
 8008b72:	bd70      	pop	{r4, r5, r6, pc}
 8008b74:	7fefffff 	.word	0x7fefffff
 8008b78:	43500000 	.word	0x43500000

08008b7c <__sread>:
 8008b7c:	b510      	push	{r4, lr}
 8008b7e:	460c      	mov	r4, r1
 8008b80:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008b84:	f000 fa88 	bl	8009098 <_read_r>
 8008b88:	2800      	cmp	r0, #0
 8008b8a:	db03      	blt.n	8008b94 <__sread+0x18>
 8008b8c:	6d23      	ldr	r3, [r4, #80]	; 0x50
 8008b8e:	4403      	add	r3, r0
 8008b90:	6523      	str	r3, [r4, #80]	; 0x50
 8008b92:	bd10      	pop	{r4, pc}
 8008b94:	89a3      	ldrh	r3, [r4, #12]
 8008b96:	f423 5380 	bic.w	r3, r3, #4096	; 0x1000
 8008b9a:	81a3      	strh	r3, [r4, #12]
 8008b9c:	bd10      	pop	{r4, pc}
 8008b9e:	bf00      	nop

08008ba0 <__swrite>:
 8008ba0:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
 8008ba4:	4616      	mov	r6, r2
 8008ba6:	f9b1 200c 	ldrsh.w	r2, [r1, #12]
 8008baa:	461f      	mov	r7, r3
 8008bac:	05d3      	lsls	r3, r2, #23
 8008bae:	460c      	mov	r4, r1
 8008bb0:	4605      	mov	r5, r0
 8008bb2:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008bb6:	d507      	bpl.n	8008bc8 <__swrite+0x28>
 8008bb8:	2200      	movs	r2, #0
 8008bba:	2302      	movs	r3, #2
 8008bbc:	f000 fa40 	bl	8009040 <_lseek_r>
 8008bc0:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8008bc4:	f9b4 100e 	ldrsh.w	r1, [r4, #14]
 8008bc8:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
 8008bcc:	81a2      	strh	r2, [r4, #12]
 8008bce:	463b      	mov	r3, r7
 8008bd0:	4632      	mov	r2, r6
 8008bd2:	4628      	mov	r0, r5
 8008bd4:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
 8008bd8:	f000 b88c 	b.w	8008cf4 <_write_r>

08008bdc <__sseek>:
 8008bdc:	b510      	push	{r4, lr}
 8008bde:	460c      	mov	r4, r1
 8008be0:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008be4:	f000 fa2c 	bl	8009040 <_lseek_r>
 8008be8:	89a3      	ldrh	r3, [r4, #12]
 8008bea:	1c42      	adds	r2, r0, #1
 8008bec:	bf0e      	itee	eq
 8008bee:	f423 5380 	biceq.w	r3, r3, #4096	; 0x1000
 8008bf2:	f443 5380 	orrne.w	r3, r3, #4096	; 0x1000
 8008bf6:	6520      	strne	r0, [r4, #80]	; 0x50
 8008bf8:	81a3      	strh	r3, [r4, #12]
 8008bfa:	bd10      	pop	{r4, pc}

08008bfc <__sclose>:
 8008bfc:	f9b1 100e 	ldrsh.w	r1, [r1, #14]
 8008c00:	f000 b8ee 	b.w	8008de0 <_close_r>

08008c04 <strncpy>:
 8008c04:	ea40 0301 	orr.w	r3, r0, r1
 8008c08:	079b      	lsls	r3, r3, #30
 8008c0a:	b470      	push	{r4, r5, r6}
 8008c0c:	d12a      	bne.n	8008c64 <strncpy+0x60>
 8008c0e:	2a03      	cmp	r2, #3
 8008c10:	d928      	bls.n	8008c64 <strncpy+0x60>
 8008c12:	460c      	mov	r4, r1
 8008c14:	4603      	mov	r3, r0
 8008c16:	4621      	mov	r1, r4
 8008c18:	f854 6b04 	ldr.w	r6, [r4], #4
 8008c1c:	f1a6 3501 	sub.w	r5, r6, #16843009	; 0x1010101
 8008c20:	ea25 0506 	bic.w	r5, r5, r6
 8008c24:	f015 3f80 	tst.w	r5, #2155905152	; 0x80808080
 8008c28:	d106      	bne.n	8008c38 <strncpy+0x34>
 8008c2a:	3a04      	subs	r2, #4
 8008c2c:	2a03      	cmp	r2, #3
 8008c2e:	f843 6b04 	str.w	r6, [r3], #4
 8008c32:	4621      	mov	r1, r4
 8008c34:	d8ef      	bhi.n	8008c16 <strncpy+0x12>
 8008c36:	b19a      	cbz	r2, 8008c60 <strncpy+0x5c>
 8008c38:	780c      	ldrb	r4, [r1, #0]
 8008c3a:	701c      	strb	r4, [r3, #0]
 8008c3c:	3a01      	subs	r2, #1
 8008c3e:	3301      	adds	r3, #1
 8008c40:	b13c      	cbz	r4, 8008c52 <strncpy+0x4e>
 8008c42:	b16a      	cbz	r2, 8008c60 <strncpy+0x5c>
 8008c44:	f811 4f01 	ldrb.w	r4, [r1, #1]!
 8008c48:	f803 4b01 	strb.w	r4, [r3], #1
 8008c4c:	3a01      	subs	r2, #1
 8008c4e:	2c00      	cmp	r4, #0
 8008c50:	d1f7      	bne.n	8008c42 <strncpy+0x3e>
 8008c52:	b12a      	cbz	r2, 8008c60 <strncpy+0x5c>
 8008c54:	441a      	add	r2, r3
 8008c56:	2100      	movs	r1, #0
 8008c58:	f803 1b01 	strb.w	r1, [r3], #1
 8008c5c:	4293      	cmp	r3, r2
 8008c5e:	d1fb      	bne.n	8008c58 <strncpy+0x54>
 8008c60:	bc70      	pop	{r4, r5, r6}
 8008c62:	4770      	bx	lr
 8008c64:	4603      	mov	r3, r0
 8008c66:	e7e6      	b.n	8008c36 <strncpy+0x32>

08008c68 <__sprint_r.part.0>:
 8008c68:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
 8008c6c:	6e4b      	ldr	r3, [r1, #100]	; 0x64
 8008c6e:	049c      	lsls	r4, r3, #18
 8008c70:	4692      	mov	sl, r2
 8008c72:	d52d      	bpl.n	8008cd0 <__sprint_r.part.0+0x68>
 8008c74:	6893      	ldr	r3, [r2, #8]
 8008c76:	6812      	ldr	r2, [r2, #0]
 8008c78:	b343      	cbz	r3, 8008ccc <__sprint_r.part.0+0x64>
 8008c7a:	460e      	mov	r6, r1
 8008c7c:	4607      	mov	r7, r0
 8008c7e:	f102 0908 	add.w	r9, r2, #8
 8008c82:	e959 5b02 	ldrd	r5, fp, [r9, #-8]
 8008c86:	ea5f 089b 	movs.w	r8, fp, lsr #2
 8008c8a:	d015      	beq.n	8008cb8 <__sprint_r.part.0+0x50>
 8008c8c:	3d04      	subs	r5, #4
 8008c8e:	2400      	movs	r4, #0
 8008c90:	e001      	b.n	8008c96 <__sprint_r.part.0+0x2e>
 8008c92:	45a0      	cmp	r8, r4
 8008c94:	d00e      	beq.n	8008cb4 <__sprint_r.part.0+0x4c>
 8008c96:	4632      	mov	r2, r6
 8008c98:	f855 1f04 	ldr.w	r1, [r5, #4]!
 8008c9c:	4638      	mov	r0, r7
 8008c9e:	f000 f969 	bl	8008f74 <_fputwc_r>
 8008ca2:	1c43      	adds	r3, r0, #1
 8008ca4:	f104 0401 	add.w	r4, r4, #1
 8008ca8:	d1f3      	bne.n	8008c92 <__sprint_r.part.0+0x2a>
 8008caa:	2300      	movs	r3, #0
 8008cac:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8008cb0:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008cb4:	f8da 3008 	ldr.w	r3, [sl, #8]
 8008cb8:	f02b 0b03 	bic.w	fp, fp, #3
 8008cbc:	eba3 030b 	sub.w	r3, r3, fp
 8008cc0:	f8ca 3008 	str.w	r3, [sl, #8]
 8008cc4:	f109 0908 	add.w	r9, r9, #8
 8008cc8:	2b00      	cmp	r3, #0
 8008cca:	d1da      	bne.n	8008c82 <__sprint_r.part.0+0x1a>
 8008ccc:	2000      	movs	r0, #0
 8008cce:	e7ec      	b.n	8008caa <__sprint_r.part.0+0x42>
 8008cd0:	f7fe ffce 	bl	8007c70 <__sfvwrite_r>
 8008cd4:	2300      	movs	r3, #0
 8008cd6:	e9ca 3301 	strd	r3, r3, [sl, #4]
 8008cda:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
 8008cde:	bf00      	nop

08008ce0 <__sprint_r>:
 8008ce0:	6893      	ldr	r3, [r2, #8]
 8008ce2:	b10b      	cbz	r3, 8008ce8 <__sprint_r+0x8>
 8008ce4:	f7ff bfc0 	b.w	8008c68 <__sprint_r.part.0>
 8008ce8:	b410      	push	{r4}
 8008cea:	4618      	mov	r0, r3
 8008cec:	6053      	str	r3, [r2, #4]
 8008cee:	f85d 4b04 	ldr.w	r4, [sp], #4
 8008cf2:	4770      	bx	lr

08008cf4 <_write_r>:
 8008cf4:	b570      	push	{r4, r5, r6, lr}
 8008cf6:	460d      	mov	r5, r1
 8008cf8:	4c08      	ldr	r4, [pc, #32]	; (8008d1c <_write_r+0x28>)
 8008cfa:	4611      	mov	r1, r2
 8008cfc:	4606      	mov	r6, r0
 8008cfe:	461a      	mov	r2, r3
 8008d00:	4628      	mov	r0, r5
 8008d02:	2300      	movs	r3, #0
 8008d04:	6023      	str	r3, [r4, #0]
 8008d06:	f7fb fafe 	bl	8004306 <_write>
 8008d0a:	1c43      	adds	r3, r0, #1
 8008d0c:	d000      	beq.n	8008d10 <_write_r+0x1c>
 8008d0e:	bd70      	pop	{r4, r5, r6, pc}
 8008d10:	6823      	ldr	r3, [r4, #0]
 8008d12:	2b00      	cmp	r3, #0
 8008d14:	d0fb      	beq.n	8008d0e <_write_r+0x1a>
 8008d16:	6033      	str	r3, [r6, #0]
 8008d18:	bd70      	pop	{r4, r5, r6, pc}
 8008d1a:	bf00      	nop
 8008d1c:	20000b3c 	.word	0x20000b3c

08008d20 <__register_exitproc>:
 8008d20:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
 8008d24:	4d2b      	ldr	r5, [pc, #172]	; (8008dd4 <__register_exitproc+0xb4>)
 8008d26:	4606      	mov	r6, r0
 8008d28:	6828      	ldr	r0, [r5, #0]
 8008d2a:	4698      	mov	r8, r3
 8008d2c:	460f      	mov	r7, r1
 8008d2e:	4691      	mov	r9, r2
 8008d30:	f7ff f958 	bl	8007fe4 <__retarget_lock_acquire_recursive>
 8008d34:	4b28      	ldr	r3, [pc, #160]	; (8008dd8 <__register_exitproc+0xb8>)
 8008d36:	681c      	ldr	r4, [r3, #0]
 8008d38:	f8d4 3148 	ldr.w	r3, [r4, #328]	; 0x148
 8008d3c:	2b00      	cmp	r3, #0
 8008d3e:	d03d      	beq.n	8008dbc <__register_exitproc+0x9c>
 8008d40:	685a      	ldr	r2, [r3, #4]
 8008d42:	2a1f      	cmp	r2, #31
 8008d44:	dc0d      	bgt.n	8008d62 <__register_exitproc+0x42>
 8008d46:	f102 0c01 	add.w	ip, r2, #1
 8008d4a:	bb16      	cbnz	r6, 8008d92 <__register_exitproc+0x72>
 8008d4c:	3202      	adds	r2, #2
 8008d4e:	f8c3 c004 	str.w	ip, [r3, #4]
 8008d52:	6828      	ldr	r0, [r5, #0]
 8008d54:	f843 7022 	str.w	r7, [r3, r2, lsl #2]
 8008d58:	f7ff f946 	bl	8007fe8 <__retarget_lock_release_recursive>
 8008d5c:	2000      	movs	r0, #0
 8008d5e:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
 8008d62:	4b1e      	ldr	r3, [pc, #120]	; (8008ddc <__register_exitproc+0xbc>)
 8008d64:	b37b      	cbz	r3, 8008dc6 <__register_exitproc+0xa6>
 8008d66:	f44f 70c8 	mov.w	r0, #400	; 0x190
 8008d6a:	f7fb fbc7 	bl	80044fc <malloc>
 8008d6e:	4603      	mov	r3, r0
 8008d70:	b348      	cbz	r0, 8008dc6 <__register_exitproc+0xa6>
 8008d72:	f8d4 2148 	ldr.w	r2, [r4, #328]	; 0x148
 8008d76:	2100      	movs	r1, #0
 8008d78:	e9c0 2100 	strd	r2, r1, [r0]
 8008d7c:	f04f 0c01 	mov.w	ip, #1
 8008d80:	f8c4 0148 	str.w	r0, [r4, #328]	; 0x148
 8008d84:	460a      	mov	r2, r1
 8008d86:	f8c0 1188 	str.w	r1, [r0, #392]	; 0x188
 8008d8a:	f8c0 118c 	str.w	r1, [r0, #396]	; 0x18c
 8008d8e:	2e00      	cmp	r6, #0
 8008d90:	d0dc      	beq.n	8008d4c <__register_exitproc+0x2c>
 8008d92:	eb03 0182 	add.w	r1, r3, r2, lsl #2
 8008d96:	2401      	movs	r4, #1
 8008d98:	f8c1 9088 	str.w	r9, [r1, #136]	; 0x88
 8008d9c:	f8d3 0188 	ldr.w	r0, [r3, #392]	; 0x188
 8008da0:	4094      	lsls	r4, r2
 8008da2:	4320      	orrs	r0, r4
 8008da4:	2e02      	cmp	r6, #2
 8008da6:	f8c3 0188 	str.w	r0, [r3, #392]	; 0x188
 8008daa:	f8c1 8108 	str.w	r8, [r1, #264]	; 0x108
 8008dae:	d1cd      	bne.n	8008d4c <__register_exitproc+0x2c>
 8008db0:	f8d3 118c 	ldr.w	r1, [r3, #396]	; 0x18c
 8008db4:	430c      	orrs	r4, r1
 8008db6:	f8c3 418c 	str.w	r4, [r3, #396]	; 0x18c
 8008dba:	e7c7      	b.n	8008d4c <__register_exitproc+0x2c>
 8008dbc:	f504 73a6 	add.w	r3, r4, #332	; 0x14c
 8008dc0:	f8c4 3148 	str.w	r3, [r4, #328]	; 0x148
 8008dc4:	e7bc      	b.n	8008d40 <__register_exitproc+0x20>
 8008dc6:	6828      	ldr	r0, [r5, #0]
 8008dc8:	f7ff f90e 	bl	8007fe8 <__retarget_lock_release_recursive>
 8008dcc:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 8008dd0:	e7c5      	b.n	8008d5e <__register_exitproc+0x3e>
 8008dd2:	bf00      	nop
 8008dd4:	20000858 	.word	0x20000858
 8008dd8:	08009930 	.word	0x08009930
 8008ddc:	080044fd 	.word	0x080044fd

08008de0 <_close_r>:
 8008de0:	b538      	push	{r3, r4, r5, lr}
 8008de2:	4c07      	ldr	r4, [pc, #28]	; (8008e00 <_close_r+0x20>)
 8008de4:	2300      	movs	r3, #0
 8008de6:	4605      	mov	r5, r0
 8008de8:	4608      	mov	r0, r1
 8008dea:	6023      	str	r3, [r4, #0]
 8008dec:	f7fb faba 	bl	8004364 <_close>
 8008df0:	1c43      	adds	r3, r0, #1
 8008df2:	d000      	beq.n	8008df6 <_close_r+0x16>
 8008df4:	bd38      	pop	{r3, r4, r5, pc}
 8008df6:	6823      	ldr	r3, [r4, #0]
 8008df8:	2b00      	cmp	r3, #0
 8008dfa:	d0fb      	beq.n	8008df4 <_close_r+0x14>
 8008dfc:	602b      	str	r3, [r5, #0]
 8008dfe:	bd38      	pop	{r3, r4, r5, pc}
 8008e00:	20000b3c 	.word	0x20000b3c

08008e04 <_fclose_r>:
 8008e04:	b570      	push	{r4, r5, r6, lr}
 8008e06:	2900      	cmp	r1, #0
 8008e08:	d048      	beq.n	8008e9c <_fclose_r+0x98>
 8008e0a:	4605      	mov	r5, r0
 8008e0c:	460c      	mov	r4, r1
 8008e0e:	b110      	cbz	r0, 8008e16 <_fclose_r+0x12>
 8008e10:	6b83      	ldr	r3, [r0, #56]	; 0x38
 8008e12:	2b00      	cmp	r3, #0
 8008e14:	d048      	beq.n	8008ea8 <_fclose_r+0xa4>
 8008e16:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8008e18:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008e1c:	07d0      	lsls	r0, r2, #31
 8008e1e:	d440      	bmi.n	8008ea2 <_fclose_r+0x9e>
 8008e20:	0599      	lsls	r1, r3, #22
 8008e22:	d530      	bpl.n	8008e86 <_fclose_r+0x82>
 8008e24:	4621      	mov	r1, r4
 8008e26:	4628      	mov	r0, r5
 8008e28:	f7fe fc86 	bl	8007738 <__sflush_r>
 8008e2c:	6ae3      	ldr	r3, [r4, #44]	; 0x2c
 8008e2e:	4606      	mov	r6, r0
 8008e30:	b133      	cbz	r3, 8008e40 <_fclose_r+0x3c>
 8008e32:	69e1      	ldr	r1, [r4, #28]
 8008e34:	4628      	mov	r0, r5
 8008e36:	4798      	blx	r3
 8008e38:	2800      	cmp	r0, #0
 8008e3a:	bfb8      	it	lt
 8008e3c:	f04f 36ff 	movlt.w	r6, #4294967295	; 0xffffffff
 8008e40:	89a3      	ldrh	r3, [r4, #12]
 8008e42:	061a      	lsls	r2, r3, #24
 8008e44:	d43c      	bmi.n	8008ec0 <_fclose_r+0xbc>
 8008e46:	6b21      	ldr	r1, [r4, #48]	; 0x30
 8008e48:	b141      	cbz	r1, 8008e5c <_fclose_r+0x58>
 8008e4a:	f104 0340 	add.w	r3, r4, #64	; 0x40
 8008e4e:	4299      	cmp	r1, r3
 8008e50:	d002      	beq.n	8008e58 <_fclose_r+0x54>
 8008e52:	4628      	mov	r0, r5
 8008e54:	f7fe fe18 	bl	8007a88 <_free_r>
 8008e58:	2300      	movs	r3, #0
 8008e5a:	6323      	str	r3, [r4, #48]	; 0x30
 8008e5c:	6c61      	ldr	r1, [r4, #68]	; 0x44
 8008e5e:	b121      	cbz	r1, 8008e6a <_fclose_r+0x66>
 8008e60:	4628      	mov	r0, r5
 8008e62:	f7fe fe11 	bl	8007a88 <_free_r>
 8008e66:	2300      	movs	r3, #0
 8008e68:	6463      	str	r3, [r4, #68]	; 0x44
 8008e6a:	f7fe fd97 	bl	800799c <__sfp_lock_acquire>
 8008e6e:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8008e70:	2200      	movs	r2, #0
 8008e72:	07db      	lsls	r3, r3, #31
 8008e74:	81a2      	strh	r2, [r4, #12]
 8008e76:	d51f      	bpl.n	8008eb8 <_fclose_r+0xb4>
 8008e78:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008e7a:	f7ff f8b1 	bl	8007fe0 <__retarget_lock_close_recursive>
 8008e7e:	f7fe fd93 	bl	80079a8 <__sfp_lock_release>
 8008e82:	4630      	mov	r0, r6
 8008e84:	bd70      	pop	{r4, r5, r6, pc}
 8008e86:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008e88:	f7ff f8ac 	bl	8007fe4 <__retarget_lock_acquire_recursive>
 8008e8c:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008e90:	2b00      	cmp	r3, #0
 8008e92:	d1c7      	bne.n	8008e24 <_fclose_r+0x20>
 8008e94:	6e66      	ldr	r6, [r4, #100]	; 0x64
 8008e96:	f016 0601 	ands.w	r6, r6, #1
 8008e9a:	d016      	beq.n	8008eca <_fclose_r+0xc6>
 8008e9c:	2600      	movs	r6, #0
 8008e9e:	4630      	mov	r0, r6
 8008ea0:	bd70      	pop	{r4, r5, r6, pc}
 8008ea2:	2b00      	cmp	r3, #0
 8008ea4:	d0fa      	beq.n	8008e9c <_fclose_r+0x98>
 8008ea6:	e7bd      	b.n	8008e24 <_fclose_r+0x20>
 8008ea8:	f7fe fd4c 	bl	8007944 <__sinit>
 8008eac:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8008eae:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008eb2:	07d0      	lsls	r0, r2, #31
 8008eb4:	d4f5      	bmi.n	8008ea2 <_fclose_r+0x9e>
 8008eb6:	e7b3      	b.n	8008e20 <_fclose_r+0x1c>
 8008eb8:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008eba:	f7ff f895 	bl	8007fe8 <__retarget_lock_release_recursive>
 8008ebe:	e7db      	b.n	8008e78 <_fclose_r+0x74>
 8008ec0:	6921      	ldr	r1, [r4, #16]
 8008ec2:	4628      	mov	r0, r5
 8008ec4:	f7fe fde0 	bl	8007a88 <_free_r>
 8008ec8:	e7bd      	b.n	8008e46 <_fclose_r+0x42>
 8008eca:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008ecc:	f7ff f88c 	bl	8007fe8 <__retarget_lock_release_recursive>
 8008ed0:	4630      	mov	r0, r6
 8008ed2:	bd70      	pop	{r4, r5, r6, pc}

08008ed4 <__fputwc>:
 8008ed4:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
 8008ed8:	b082      	sub	sp, #8
 8008eda:	4681      	mov	r9, r0
 8008edc:	4688      	mov	r8, r1
 8008ede:	4614      	mov	r4, r2
 8008ee0:	f000 f8a0 	bl	8009024 <__locale_mb_cur_max>
 8008ee4:	2801      	cmp	r0, #1
 8008ee6:	d103      	bne.n	8008ef0 <__fputwc+0x1c>
 8008ee8:	f108 33ff 	add.w	r3, r8, #4294967295	; 0xffffffff
 8008eec:	2bfe      	cmp	r3, #254	; 0xfe
 8008eee:	d933      	bls.n	8008f58 <__fputwc+0x84>
 8008ef0:	4642      	mov	r2, r8
 8008ef2:	f104 035c 	add.w	r3, r4, #92	; 0x5c
 8008ef6:	a901      	add	r1, sp, #4
 8008ef8:	4648      	mov	r0, r9
 8008efa:	f000 f93b 	bl	8009174 <_wcrtomb_r>
 8008efe:	1c42      	adds	r2, r0, #1
 8008f00:	4606      	mov	r6, r0
 8008f02:	d02f      	beq.n	8008f64 <__fputwc+0x90>
 8008f04:	b320      	cbz	r0, 8008f50 <__fputwc+0x7c>
 8008f06:	f89d c004 	ldrb.w	ip, [sp, #4]
 8008f0a:	2500      	movs	r5, #0
 8008f0c:	f10d 0a04 	add.w	sl, sp, #4
 8008f10:	e009      	b.n	8008f26 <__fputwc+0x52>
 8008f12:	6823      	ldr	r3, [r4, #0]
 8008f14:	1c5a      	adds	r2, r3, #1
 8008f16:	6022      	str	r2, [r4, #0]
 8008f18:	f883 c000 	strb.w	ip, [r3]
 8008f1c:	3501      	adds	r5, #1
 8008f1e:	42b5      	cmp	r5, r6
 8008f20:	d216      	bcs.n	8008f50 <__fputwc+0x7c>
 8008f22:	f815 c00a 	ldrb.w	ip, [r5, sl]
 8008f26:	68a3      	ldr	r3, [r4, #8]
 8008f28:	3b01      	subs	r3, #1
 8008f2a:	2b00      	cmp	r3, #0
 8008f2c:	60a3      	str	r3, [r4, #8]
 8008f2e:	daf0      	bge.n	8008f12 <__fputwc+0x3e>
 8008f30:	69a7      	ldr	r7, [r4, #24]
 8008f32:	42bb      	cmp	r3, r7
 8008f34:	4661      	mov	r1, ip
 8008f36:	4622      	mov	r2, r4
 8008f38:	4648      	mov	r0, r9
 8008f3a:	db02      	blt.n	8008f42 <__fputwc+0x6e>
 8008f3c:	f1bc 0f0a 	cmp.w	ip, #10
 8008f40:	d1e7      	bne.n	8008f12 <__fputwc+0x3e>
 8008f42:	f000 f8bf 	bl	80090c4 <__swbuf_r>
 8008f46:	1c43      	adds	r3, r0, #1
 8008f48:	d1e8      	bne.n	8008f1c <__fputwc+0x48>
 8008f4a:	b002      	add	sp, #8
 8008f4c:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008f50:	4640      	mov	r0, r8
 8008f52:	b002      	add	sp, #8
 8008f54:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008f58:	fa5f fc88 	uxtb.w	ip, r8
 8008f5c:	4606      	mov	r6, r0
 8008f5e:	f88d c004 	strb.w	ip, [sp, #4]
 8008f62:	e7d2      	b.n	8008f0a <__fputwc+0x36>
 8008f64:	89a3      	ldrh	r3, [r4, #12]
 8008f66:	f043 0340 	orr.w	r3, r3, #64	; 0x40
 8008f6a:	81a3      	strh	r3, [r4, #12]
 8008f6c:	b002      	add	sp, #8
 8008f6e:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
 8008f72:	bf00      	nop

08008f74 <_fputwc_r>:
 8008f74:	b530      	push	{r4, r5, lr}
 8008f76:	4605      	mov	r5, r0
 8008f78:	6e50      	ldr	r0, [r2, #100]	; 0x64
 8008f7a:	f9b2 300c 	ldrsh.w	r3, [r2, #12]
 8008f7e:	07c0      	lsls	r0, r0, #31
 8008f80:	4614      	mov	r4, r2
 8008f82:	b083      	sub	sp, #12
 8008f84:	b29a      	uxth	r2, r3
 8008f86:	d401      	bmi.n	8008f8c <_fputwc_r+0x18>
 8008f88:	0590      	lsls	r0, r2, #22
 8008f8a:	d51c      	bpl.n	8008fc6 <_fputwc_r+0x52>
 8008f8c:	0490      	lsls	r0, r2, #18
 8008f8e:	d406      	bmi.n	8008f9e <_fputwc_r+0x2a>
 8008f90:	6e62      	ldr	r2, [r4, #100]	; 0x64
 8008f92:	f443 5300 	orr.w	r3, r3, #8192	; 0x2000
 8008f96:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 8008f9a:	81a3      	strh	r3, [r4, #12]
 8008f9c:	6662      	str	r2, [r4, #100]	; 0x64
 8008f9e:	4628      	mov	r0, r5
 8008fa0:	4622      	mov	r2, r4
 8008fa2:	f7ff ff97 	bl	8008ed4 <__fputwc>
 8008fa6:	6e63      	ldr	r3, [r4, #100]	; 0x64
 8008fa8:	07da      	lsls	r2, r3, #31
 8008faa:	4605      	mov	r5, r0
 8008fac:	d402      	bmi.n	8008fb4 <_fputwc_r+0x40>
 8008fae:	89a3      	ldrh	r3, [r4, #12]
 8008fb0:	059b      	lsls	r3, r3, #22
 8008fb2:	d502      	bpl.n	8008fba <_fputwc_r+0x46>
 8008fb4:	4628      	mov	r0, r5
 8008fb6:	b003      	add	sp, #12
 8008fb8:	bd30      	pop	{r4, r5, pc}
 8008fba:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008fbc:	f7ff f814 	bl	8007fe8 <__retarget_lock_release_recursive>
 8008fc0:	4628      	mov	r0, r5
 8008fc2:	b003      	add	sp, #12
 8008fc4:	bd30      	pop	{r4, r5, pc}
 8008fc6:	6da0      	ldr	r0, [r4, #88]	; 0x58
 8008fc8:	9101      	str	r1, [sp, #4]
 8008fca:	f7ff f80b 	bl	8007fe4 <__retarget_lock_acquire_recursive>
 8008fce:	f9b4 300c 	ldrsh.w	r3, [r4, #12]
 8008fd2:	9901      	ldr	r1, [sp, #4]
 8008fd4:	b29a      	uxth	r2, r3
 8008fd6:	e7d9      	b.n	8008f8c <_fputwc_r+0x18>

08008fd8 <_fstat_r>:
 8008fd8:	b538      	push	{r3, r4, r5, lr}
 8008fda:	460b      	mov	r3, r1
 8008fdc:	4c07      	ldr	r4, [pc, #28]	; (8008ffc <_fstat_r+0x24>)
 8008fde:	4605      	mov	r5, r0
 8008fe0:	4611      	mov	r1, r2
 8008fe2:	4618      	mov	r0, r3
 8008fe4:	2300      	movs	r3, #0
 8008fe6:	6023      	str	r3, [r4, #0]
 8008fe8:	f7fb f9bf 	bl	800436a <_fstat>
 8008fec:	1c43      	adds	r3, r0, #1
 8008fee:	d000      	beq.n	8008ff2 <_fstat_r+0x1a>
 8008ff0:	bd38      	pop	{r3, r4, r5, pc}
 8008ff2:	6823      	ldr	r3, [r4, #0]
 8008ff4:	2b00      	cmp	r3, #0
 8008ff6:	d0fb      	beq.n	8008ff0 <_fstat_r+0x18>
 8008ff8:	602b      	str	r3, [r5, #0]
 8008ffa:	bd38      	pop	{r3, r4, r5, pc}
 8008ffc:	20000b3c 	.word	0x20000b3c

08009000 <_isatty_r>:
 8009000:	b538      	push	{r3, r4, r5, lr}
 8009002:	4c07      	ldr	r4, [pc, #28]	; (8009020 <_isatty_r+0x20>)
 8009004:	2300      	movs	r3, #0
 8009006:	4605      	mov	r5, r0
 8009008:	4608      	mov	r0, r1
 800900a:	6023      	str	r3, [r4, #0]
 800900c:	f7fb f9b2 	bl	8004374 <_isatty>
 8009010:	1c43      	adds	r3, r0, #1
 8009012:	d000      	beq.n	8009016 <_isatty_r+0x16>
 8009014:	bd38      	pop	{r3, r4, r5, pc}
 8009016:	6823      	ldr	r3, [r4, #0]
 8009018:	2b00      	cmp	r3, #0
 800901a:	d0fb      	beq.n	8009014 <_isatty_r+0x14>
 800901c:	602b      	str	r3, [r5, #0]
 800901e:	bd38      	pop	{r3, r4, r5, pc}
 8009020:	20000b3c 	.word	0x20000b3c

08009024 <__locale_mb_cur_max>:
 8009024:	4b04      	ldr	r3, [pc, #16]	; (8009038 <__locale_mb_cur_max+0x14>)
 8009026:	4a05      	ldr	r2, [pc, #20]	; (800903c <__locale_mb_cur_max+0x18>)
 8009028:	681b      	ldr	r3, [r3, #0]
 800902a:	6b5b      	ldr	r3, [r3, #52]	; 0x34
 800902c:	2b00      	cmp	r3, #0
 800902e:	bf08      	it	eq
 8009030:	4613      	moveq	r3, r2
 8009032:	f893 0128 	ldrb.w	r0, [r3, #296]	; 0x128
 8009036:	4770      	bx	lr
 8009038:	20000018 	.word	0x20000018
 800903c:	2000085c 	.word	0x2000085c

08009040 <_lseek_r>:
 8009040:	b570      	push	{r4, r5, r6, lr}
 8009042:	460d      	mov	r5, r1
 8009044:	4c08      	ldr	r4, [pc, #32]	; (8009068 <_lseek_r+0x28>)
 8009046:	4611      	mov	r1, r2
 8009048:	4606      	mov	r6, r0
 800904a:	461a      	mov	r2, r3
 800904c:	4628      	mov	r0, r5
 800904e:	2300      	movs	r3, #0
 8009050:	6023      	str	r3, [r4, #0]
 8009052:	f7fb f991 	bl	8004378 <_lseek>
 8009056:	1c43      	adds	r3, r0, #1
 8009058:	d000      	beq.n	800905c <_lseek_r+0x1c>
 800905a:	bd70      	pop	{r4, r5, r6, pc}
 800905c:	6823      	ldr	r3, [r4, #0]
 800905e:	2b00      	cmp	r3, #0
 8009060:	d0fb      	beq.n	800905a <_lseek_r+0x1a>
 8009062:	6033      	str	r3, [r6, #0]
 8009064:	bd70      	pop	{r4, r5, r6, pc}
 8009066:	bf00      	nop
 8009068:	20000b3c 	.word	0x20000b3c

0800906c <__ascii_mbtowc>:
 800906c:	b082      	sub	sp, #8
 800906e:	b149      	cbz	r1, 8009084 <__ascii_mbtowc+0x18>
 8009070:	b15a      	cbz	r2, 800908a <__ascii_mbtowc+0x1e>
 8009072:	b16b      	cbz	r3, 8009090 <__ascii_mbtowc+0x24>
 8009074:	7813      	ldrb	r3, [r2, #0]
 8009076:	600b      	str	r3, [r1, #0]
 8009078:	7812      	ldrb	r2, [r2, #0]
 800907a:	1c10      	adds	r0, r2, #0
 800907c:	bf18      	it	ne
 800907e:	2001      	movne	r0, #1
 8009080:	b002      	add	sp, #8
 8009082:	4770      	bx	lr
 8009084:	a901      	add	r1, sp, #4
 8009086:	2a00      	cmp	r2, #0
 8009088:	d1f3      	bne.n	8009072 <__ascii_mbtowc+0x6>
 800908a:	4610      	mov	r0, r2
 800908c:	b002      	add	sp, #8
 800908e:	4770      	bx	lr
 8009090:	f06f 0001 	mvn.w	r0, #1
 8009094:	e7f4      	b.n	8009080 <__ascii_mbtowc+0x14>
 8009096:	bf00      	nop

08009098 <_read_r>:
 8009098:	b570      	push	{r4, r5, r6, lr}
 800909a:	460d      	mov	r5, r1
 800909c:	4c08      	ldr	r4, [pc, #32]	; (80090c0 <_read_r+0x28>)
 800909e:	4611      	mov	r1, r2
 80090a0:	4606      	mov	r6, r0
 80090a2:	461a      	mov	r2, r3
 80090a4:	4628      	mov	r0, r5
 80090a6:	2300      	movs	r3, #0
 80090a8:	6023      	str	r3, [r4, #0]
 80090aa:	f7fb f919 	bl	80042e0 <_read>
 80090ae:	1c43      	adds	r3, r0, #1
 80090b0:	d000      	beq.n	80090b4 <_read_r+0x1c>
 80090b2:	bd70      	pop	{r4, r5, r6, pc}
 80090b4:	6823      	ldr	r3, [r4, #0]
 80090b6:	2b00      	cmp	r3, #0
 80090b8:	d0fb      	beq.n	80090b2 <_read_r+0x1a>
 80090ba:	6033      	str	r3, [r6, #0]
 80090bc:	bd70      	pop	{r4, r5, r6, pc}
 80090be:	bf00      	nop
 80090c0:	20000b3c 	.word	0x20000b3c

080090c4 <__swbuf_r>:
 80090c4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80090c6:	460d      	mov	r5, r1
 80090c8:	4614      	mov	r4, r2
 80090ca:	4606      	mov	r6, r0
 80090cc:	b110      	cbz	r0, 80090d4 <__swbuf_r+0x10>
 80090ce:	6b83      	ldr	r3, [r0, #56]	; 0x38
 80090d0:	2b00      	cmp	r3, #0
 80090d2:	d043      	beq.n	800915c <__swbuf_r+0x98>
 80090d4:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 80090d8:	69a3      	ldr	r3, [r4, #24]
 80090da:	60a3      	str	r3, [r4, #8]
 80090dc:	b291      	uxth	r1, r2
 80090de:	0708      	lsls	r0, r1, #28
 80090e0:	d51b      	bpl.n	800911a <__swbuf_r+0x56>
 80090e2:	6923      	ldr	r3, [r4, #16]
 80090e4:	b1cb      	cbz	r3, 800911a <__swbuf_r+0x56>
 80090e6:	b2ed      	uxtb	r5, r5
 80090e8:	0489      	lsls	r1, r1, #18
 80090ea:	462f      	mov	r7, r5
 80090ec:	d522      	bpl.n	8009134 <__swbuf_r+0x70>
 80090ee:	6822      	ldr	r2, [r4, #0]
 80090f0:	6961      	ldr	r1, [r4, #20]
 80090f2:	1ad3      	subs	r3, r2, r3
 80090f4:	4299      	cmp	r1, r3
 80090f6:	dd29      	ble.n	800914c <__swbuf_r+0x88>
 80090f8:	3301      	adds	r3, #1
 80090fa:	68a1      	ldr	r1, [r4, #8]
 80090fc:	1c50      	adds	r0, r2, #1
 80090fe:	3901      	subs	r1, #1
 8009100:	60a1      	str	r1, [r4, #8]
 8009102:	6020      	str	r0, [r4, #0]
 8009104:	7015      	strb	r5, [r2, #0]
 8009106:	6962      	ldr	r2, [r4, #20]
 8009108:	429a      	cmp	r2, r3
 800910a:	d02a      	beq.n	8009162 <__swbuf_r+0x9e>
 800910c:	89a3      	ldrh	r3, [r4, #12]
 800910e:	07db      	lsls	r3, r3, #31
 8009110:	d501      	bpl.n	8009116 <__swbuf_r+0x52>
 8009112:	2d0a      	cmp	r5, #10
 8009114:	d025      	beq.n	8009162 <__swbuf_r+0x9e>
 8009116:	4638      	mov	r0, r7
 8009118:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 800911a:	4621      	mov	r1, r4
 800911c:	4630      	mov	r0, r6
 800911e:	f7fd faf3 	bl	8006708 <__swsetup_r>
 8009122:	bb20      	cbnz	r0, 800916e <__swbuf_r+0xaa>
 8009124:	f9b4 200c 	ldrsh.w	r2, [r4, #12]
 8009128:	6923      	ldr	r3, [r4, #16]
 800912a:	b291      	uxth	r1, r2
 800912c:	b2ed      	uxtb	r5, r5
 800912e:	0489      	lsls	r1, r1, #18
 8009130:	462f      	mov	r7, r5
 8009132:	d4dc      	bmi.n	80090ee <__swbuf_r+0x2a>
 8009134:	6e61      	ldr	r1, [r4, #100]	; 0x64
 8009136:	f442 5200 	orr.w	r2, r2, #8192	; 0x2000
 800913a:	f421 5100 	bic.w	r1, r1, #8192	; 0x2000
 800913e:	81a2      	strh	r2, [r4, #12]
 8009140:	6822      	ldr	r2, [r4, #0]
 8009142:	6661      	str	r1, [r4, #100]	; 0x64
 8009144:	6961      	ldr	r1, [r4, #20]
 8009146:	1ad3      	subs	r3, r2, r3
 8009148:	4299      	cmp	r1, r3
 800914a:	dcd5      	bgt.n	80090f8 <__swbuf_r+0x34>
 800914c:	4621      	mov	r1, r4
 800914e:	4630      	mov	r0, r6
 8009150:	f7fe fb9c 	bl	800788c <_fflush_r>
 8009154:	b958      	cbnz	r0, 800916e <__swbuf_r+0xaa>
 8009156:	6822      	ldr	r2, [r4, #0]
 8009158:	2301      	movs	r3, #1
 800915a:	e7ce      	b.n	80090fa <__swbuf_r+0x36>
 800915c:	f7fe fbf2 	bl	8007944 <__sinit>
 8009160:	e7b8      	b.n	80090d4 <__swbuf_r+0x10>
 8009162:	4621      	mov	r1, r4
 8009164:	4630      	mov	r0, r6
 8009166:	f7fe fb91 	bl	800788c <_fflush_r>
 800916a:	2800      	cmp	r0, #0
 800916c:	d0d3      	beq.n	8009116 <__swbuf_r+0x52>
 800916e:	f04f 37ff 	mov.w	r7, #4294967295	; 0xffffffff
 8009172:	e7d0      	b.n	8009116 <__swbuf_r+0x52>

08009174 <_wcrtomb_r>:
 8009174:	b5f0      	push	{r4, r5, r6, r7, lr}
 8009176:	4c11      	ldr	r4, [pc, #68]	; (80091bc <_wcrtomb_r+0x48>)
 8009178:	6824      	ldr	r4, [r4, #0]
 800917a:	b085      	sub	sp, #20
 800917c:	4606      	mov	r6, r0
 800917e:	6b64      	ldr	r4, [r4, #52]	; 0x34
 8009180:	461f      	mov	r7, r3
 8009182:	b151      	cbz	r1, 800919a <_wcrtomb_r+0x26>
 8009184:	4d0e      	ldr	r5, [pc, #56]	; (80091c0 <_wcrtomb_r+0x4c>)
 8009186:	2c00      	cmp	r4, #0
 8009188:	bf08      	it	eq
 800918a:	462c      	moveq	r4, r5
 800918c:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 8009190:	47a0      	blx	r4
 8009192:	1c43      	adds	r3, r0, #1
 8009194:	d00c      	beq.n	80091b0 <_wcrtomb_r+0x3c>
 8009196:	b005      	add	sp, #20
 8009198:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800919a:	4a09      	ldr	r2, [pc, #36]	; (80091c0 <_wcrtomb_r+0x4c>)
 800919c:	2c00      	cmp	r4, #0
 800919e:	bf08      	it	eq
 80091a0:	4614      	moveq	r4, r2
 80091a2:	460a      	mov	r2, r1
 80091a4:	f8d4 40e0 	ldr.w	r4, [r4, #224]	; 0xe0
 80091a8:	a901      	add	r1, sp, #4
 80091aa:	47a0      	blx	r4
 80091ac:	1c43      	adds	r3, r0, #1
 80091ae:	d1f2      	bne.n	8009196 <_wcrtomb_r+0x22>
 80091b0:	2200      	movs	r2, #0
 80091b2:	238a      	movs	r3, #138	; 0x8a
 80091b4:	603a      	str	r2, [r7, #0]
 80091b6:	6033      	str	r3, [r6, #0]
 80091b8:	b005      	add	sp, #20
 80091ba:	bdf0      	pop	{r4, r5, r6, r7, pc}
 80091bc:	20000018 	.word	0x20000018
 80091c0:	2000085c 	.word	0x2000085c

080091c4 <__ascii_wctomb>:
 80091c4:	b121      	cbz	r1, 80091d0 <__ascii_wctomb+0xc>
 80091c6:	2aff      	cmp	r2, #255	; 0xff
 80091c8:	d804      	bhi.n	80091d4 <__ascii_wctomb+0x10>
 80091ca:	700a      	strb	r2, [r1, #0]
 80091cc:	2001      	movs	r0, #1
 80091ce:	4770      	bx	lr
 80091d0:	4608      	mov	r0, r1
 80091d2:	4770      	bx	lr
 80091d4:	238a      	movs	r3, #138	; 0x8a
 80091d6:	6003      	str	r3, [r0, #0]
 80091d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
 80091dc:	4770      	bx	lr
 80091de:	bf00      	nop

080091e0 <_init>:
 80091e0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80091e2:	bf00      	nop
 80091e4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80091e6:	bc08      	pop	{r3}
 80091e8:	469e      	mov	lr, r3
 80091ea:	4770      	bx	lr

080091ec <_fini>:
 80091ec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80091ee:	bf00      	nop
 80091f0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80091f2:	bc08      	pop	{r3}
 80091f4:	469e      	mov	lr, r3
 80091f6:	4770      	bx	lr
