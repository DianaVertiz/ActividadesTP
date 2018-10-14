
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 3d 08 00 1a a5 01 00 1a ab 01 00 1a     ....=...........
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	c5 0d 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a 2d 07 00 1a     ............-...
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a db 01 00 1a 01 0d 00 1a 39 0d 00 1a     ............9...
1a0000cc:	db 01 00 1a 95 0d 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a002628 	.word	0x1a002628
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000

1a000120 <__bss_section_table_>:
1a000120:	10000000 	.word	0x10000000
1a000124:	000004a8 	.word	0x000004a8

1a000128 <data_init>:
1a000128:	b480      	push	{r7}
1a00012a:	b089      	sub	sp, #36	; 0x24
1a00012c:	af00      	add	r7, sp, #0
1a00012e:	60f8      	str	r0, [r7, #12]
1a000130:	60b9      	str	r1, [r7, #8]
1a000132:	607a      	str	r2, [r7, #4]
1a000134:	68bb      	ldr	r3, [r7, #8]
1a000136:	61fb      	str	r3, [r7, #28]
1a000138:	68fb      	ldr	r3, [r7, #12]
1a00013a:	61bb      	str	r3, [r7, #24]
1a00013c:	2300      	movs	r3, #0
1a00013e:	617b      	str	r3, [r7, #20]
1a000140:	e00a      	b.n	1a000158 <data_init+0x30>
1a000142:	69ba      	ldr	r2, [r7, #24]
1a000144:	1d13      	adds	r3, r2, #4
1a000146:	61bb      	str	r3, [r7, #24]
1a000148:	69fb      	ldr	r3, [r7, #28]
1a00014a:	1d19      	adds	r1, r3, #4
1a00014c:	61f9      	str	r1, [r7, #28]
1a00014e:	6812      	ldr	r2, [r2, #0]
1a000150:	601a      	str	r2, [r3, #0]
1a000152:	697b      	ldr	r3, [r7, #20]
1a000154:	3304      	adds	r3, #4
1a000156:	617b      	str	r3, [r7, #20]
1a000158:	697a      	ldr	r2, [r7, #20]
1a00015a:	687b      	ldr	r3, [r7, #4]
1a00015c:	429a      	cmp	r2, r3
1a00015e:	d3f0      	bcc.n	1a000142 <data_init+0x1a>
1a000160:	bf00      	nop
1a000162:	3724      	adds	r7, #36	; 0x24
1a000164:	46bd      	mov	sp, r7
1a000166:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00016a:	4770      	bx	lr

1a00016c <bss_init>:
1a00016c:	b480      	push	{r7}
1a00016e:	b085      	sub	sp, #20
1a000170:	af00      	add	r7, sp, #0
1a000172:	6078      	str	r0, [r7, #4]
1a000174:	6039      	str	r1, [r7, #0]
1a000176:	687b      	ldr	r3, [r7, #4]
1a000178:	60fb      	str	r3, [r7, #12]
1a00017a:	2300      	movs	r3, #0
1a00017c:	60bb      	str	r3, [r7, #8]
1a00017e:	e007      	b.n	1a000190 <bss_init+0x24>
1a000180:	68fb      	ldr	r3, [r7, #12]
1a000182:	1d1a      	adds	r2, r3, #4
1a000184:	60fa      	str	r2, [r7, #12]
1a000186:	2200      	movs	r2, #0
1a000188:	601a      	str	r2, [r3, #0]
1a00018a:	68bb      	ldr	r3, [r7, #8]
1a00018c:	3304      	adds	r3, #4
1a00018e:	60bb      	str	r3, [r7, #8]
1a000190:	68ba      	ldr	r2, [r7, #8]
1a000192:	683b      	ldr	r3, [r7, #0]
1a000194:	429a      	cmp	r2, r3
1a000196:	d3f3      	bcc.n	1a000180 <bss_init+0x14>
1a000198:	bf00      	nop
1a00019a:	3714      	adds	r7, #20
1a00019c:	46bd      	mov	sp, r7
1a00019e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0001a2:	4770      	bx	lr

1a0001a4 <NMI_Handler>:
1a0001a4:	b480      	push	{r7}
1a0001a6:	af00      	add	r7, sp, #0
1a0001a8:	e7fe      	b.n	1a0001a8 <NMI_Handler+0x4>

1a0001aa <HardFault_Handler>:
1a0001aa:	b480      	push	{r7}
1a0001ac:	af00      	add	r7, sp, #0
1a0001ae:	e7fe      	b.n	1a0001ae <HardFault_Handler+0x4>

1a0001b0 <MemManage_Handler>:
1a0001b0:	b480      	push	{r7}
1a0001b2:	af00      	add	r7, sp, #0
1a0001b4:	e7fe      	b.n	1a0001b4 <MemManage_Handler+0x4>

1a0001b6 <BusFault_Handler>:
1a0001b6:	b480      	push	{r7}
1a0001b8:	af00      	add	r7, sp, #0
1a0001ba:	e7fe      	b.n	1a0001ba <BusFault_Handler+0x4>

1a0001bc <UsageFault_Handler>:
1a0001bc:	b480      	push	{r7}
1a0001be:	af00      	add	r7, sp, #0
1a0001c0:	e7fe      	b.n	1a0001c0 <UsageFault_Handler+0x4>

1a0001c2 <SVC_Handler>:
1a0001c2:	b480      	push	{r7}
1a0001c4:	af00      	add	r7, sp, #0
1a0001c6:	e7fe      	b.n	1a0001c6 <SVC_Handler+0x4>

1a0001c8 <DebugMon_Handler>:
1a0001c8:	b480      	push	{r7}
1a0001ca:	af00      	add	r7, sp, #0
1a0001cc:	e7fe      	b.n	1a0001cc <DebugMon_Handler+0x4>

1a0001ce <PendSV_Handler>:
1a0001ce:	b480      	push	{r7}
1a0001d0:	af00      	add	r7, sp, #0
1a0001d2:	e7fe      	b.n	1a0001d2 <PendSV_Handler+0x4>
1a0001d4:	b480      	push	{r7}
1a0001d6:	af00      	add	r7, sp, #0
1a0001d8:	e7fe      	b.n	1a0001d8 <PendSV_Handler+0xa>

1a0001da <ADC0_IRQHandler>:
1a0001da:	b480      	push	{r7}
1a0001dc:	af00      	add	r7, sp, #0
1a0001de:	e7fe      	b.n	1a0001de <ADC0_IRQHandler+0x4>
1a0001e0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001e4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001e8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001ec:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001f0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001f4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001f8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0001fc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000200:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000204:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000208:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00020c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000210:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000214:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000218:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00021c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000220:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000224:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000228:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00022c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000230:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000234:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000238:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00023c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000240:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000244:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000248:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00024c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000250:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000254:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000258:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00025c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000260:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000264:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000268:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00026c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000270:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000274:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000278:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00027c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000280:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000284:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000288:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00028c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000290:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000294:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a000298:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00029c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002a0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002a4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002a8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002ac:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002b0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002b4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002b8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002bc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002c0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002c4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002c8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002cc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002d0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002d4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002d8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002dc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002e0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002e4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002e8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002ec:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002f0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002f4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0002f8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff

1a0002fc <CRP_WORD>:
1a0002fc:	ffff ffff                                   ....

1a000300 <memset>:
1a000300:	b4f0      	push	{r4, r5, r6, r7}
1a000302:	0786      	lsls	r6, r0, #30
1a000304:	d043      	beq.n	1a00038e <memset+0x8e>
1a000306:	1e54      	subs	r4, r2, #1
1a000308:	2a00      	cmp	r2, #0
1a00030a:	d03e      	beq.n	1a00038a <memset+0x8a>
1a00030c:	b2ca      	uxtb	r2, r1
1a00030e:	4603      	mov	r3, r0
1a000310:	e002      	b.n	1a000318 <memset+0x18>
1a000312:	f114 34ff 	adds.w	r4, r4, #4294967295	; 0xffffffff
1a000316:	d338      	bcc.n	1a00038a <memset+0x8a>
1a000318:	f803 2b01 	strb.w	r2, [r3], #1
1a00031c:	079d      	lsls	r5, r3, #30
1a00031e:	d1f8      	bne.n	1a000312 <memset+0x12>
1a000320:	2c03      	cmp	r4, #3
1a000322:	d92b      	bls.n	1a00037c <memset+0x7c>
1a000324:	b2cd      	uxtb	r5, r1
1a000326:	ea45 2505 	orr.w	r5, r5, r5, lsl #8
1a00032a:	2c0f      	cmp	r4, #15
1a00032c:	ea45 4505 	orr.w	r5, r5, r5, lsl #16
1a000330:	d916      	bls.n	1a000360 <memset+0x60>
1a000332:	f1a4 0710 	sub.w	r7, r4, #16
1a000336:	093f      	lsrs	r7, r7, #4
1a000338:	f103 0620 	add.w	r6, r3, #32
1a00033c:	eb06 1607 	add.w	r6, r6, r7, lsl #4
1a000340:	f103 0210 	add.w	r2, r3, #16
1a000344:	e942 5504 	strd	r5, r5, [r2, #-16]
1a000348:	e942 5502 	strd	r5, r5, [r2, #-8]
1a00034c:	3210      	adds	r2, #16
1a00034e:	42b2      	cmp	r2, r6
1a000350:	d1f8      	bne.n	1a000344 <memset+0x44>
1a000352:	f004 040f 	and.w	r4, r4, #15
1a000356:	3701      	adds	r7, #1
1a000358:	2c03      	cmp	r4, #3
1a00035a:	eb03 1307 	add.w	r3, r3, r7, lsl #4
1a00035e:	d90d      	bls.n	1a00037c <memset+0x7c>
1a000360:	461e      	mov	r6, r3
1a000362:	4622      	mov	r2, r4
1a000364:	3a04      	subs	r2, #4
1a000366:	2a03      	cmp	r2, #3
1a000368:	f846 5b04 	str.w	r5, [r6], #4
1a00036c:	d8fa      	bhi.n	1a000364 <memset+0x64>
1a00036e:	1f22      	subs	r2, r4, #4
1a000370:	f022 0203 	bic.w	r2, r2, #3
1a000374:	3204      	adds	r2, #4
1a000376:	4413      	add	r3, r2
1a000378:	f004 0403 	and.w	r4, r4, #3
1a00037c:	b12c      	cbz	r4, 1a00038a <memset+0x8a>
1a00037e:	b2c9      	uxtb	r1, r1
1a000380:	441c      	add	r4, r3
1a000382:	f803 1b01 	strb.w	r1, [r3], #1
1a000386:	429c      	cmp	r4, r3
1a000388:	d1fb      	bne.n	1a000382 <memset+0x82>
1a00038a:	bcf0      	pop	{r4, r5, r6, r7}
1a00038c:	4770      	bx	lr
1a00038e:	4614      	mov	r4, r2
1a000390:	4603      	mov	r3, r0
1a000392:	e7c5      	b.n	1a000320 <memset+0x20>

1a000394 <NVIC_EnableIRQ>:
1a000394:	b480      	push	{r7}
1a000396:	b083      	sub	sp, #12
1a000398:	af00      	add	r7, sp, #0
1a00039a:	4603      	mov	r3, r0
1a00039c:	71fb      	strb	r3, [r7, #7]
1a00039e:	79fb      	ldrb	r3, [r7, #7]
1a0003a0:	f003 031f 	and.w	r3, r3, #31
1a0003a4:	2201      	movs	r2, #1
1a0003a6:	fa02 f103 	lsl.w	r1, r2, r3
1a0003aa:	4a06      	ldr	r2, [pc, #24]	; (1a0003c4 <NVIC_EnableIRQ+0x30>)
1a0003ac:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0003b0:	095b      	lsrs	r3, r3, #5
1a0003b2:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0003b6:	bf00      	nop
1a0003b8:	370c      	adds	r7, #12
1a0003ba:	46bd      	mov	sp, r7
1a0003bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0003c0:	4770      	bx	lr
1a0003c2:	bf00      	nop
1a0003c4:	e000e100 	.word	0xe000e100

1a0003c8 <Chip_SCU_PinMuxSet>:
1a0003c8:	b480      	push	{r7}
1a0003ca:	b083      	sub	sp, #12
1a0003cc:	af00      	add	r7, sp, #0
1a0003ce:	4603      	mov	r3, r0
1a0003d0:	71fb      	strb	r3, [r7, #7]
1a0003d2:	460b      	mov	r3, r1
1a0003d4:	71bb      	strb	r3, [r7, #6]
1a0003d6:	4613      	mov	r3, r2
1a0003d8:	80bb      	strh	r3, [r7, #4]
1a0003da:	4807      	ldr	r0, [pc, #28]	; (1a0003f8 <Chip_SCU_PinMuxSet+0x30>)
1a0003dc:	79f9      	ldrb	r1, [r7, #7]
1a0003de:	79bb      	ldrb	r3, [r7, #6]
1a0003e0:	88ba      	ldrh	r2, [r7, #4]
1a0003e2:	0149      	lsls	r1, r1, #5
1a0003e4:	440b      	add	r3, r1
1a0003e6:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a0003ea:	bf00      	nop
1a0003ec:	370c      	adds	r7, #12
1a0003ee:	46bd      	mov	sp, r7
1a0003f0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0003f4:	4770      	bx	lr
1a0003f6:	bf00      	nop
1a0003f8:	40086000 	.word	0x40086000

1a0003fc <Chip_SCU_PinMux>:
1a0003fc:	b590      	push	{r4, r7, lr}
1a0003fe:	b083      	sub	sp, #12
1a000400:	af00      	add	r7, sp, #0
1a000402:	4604      	mov	r4, r0
1a000404:	4608      	mov	r0, r1
1a000406:	4611      	mov	r1, r2
1a000408:	461a      	mov	r2, r3
1a00040a:	4623      	mov	r3, r4
1a00040c:	71fb      	strb	r3, [r7, #7]
1a00040e:	4603      	mov	r3, r0
1a000410:	71bb      	strb	r3, [r7, #6]
1a000412:	460b      	mov	r3, r1
1a000414:	80bb      	strh	r3, [r7, #4]
1a000416:	4613      	mov	r3, r2
1a000418:	70fb      	strb	r3, [r7, #3]
1a00041a:	78fb      	ldrb	r3, [r7, #3]
1a00041c:	b29a      	uxth	r2, r3
1a00041e:	88bb      	ldrh	r3, [r7, #4]
1a000420:	4313      	orrs	r3, r2
1a000422:	b29a      	uxth	r2, r3
1a000424:	79b9      	ldrb	r1, [r7, #6]
1a000426:	79fb      	ldrb	r3, [r7, #7]
1a000428:	4618      	mov	r0, r3
1a00042a:	f7ff ffcd 	bl	1a0003c8 <Chip_SCU_PinMuxSet>
1a00042e:	bf00      	nop
1a000430:	370c      	adds	r7, #12
1a000432:	46bd      	mov	sp, r7
1a000434:	bd90      	pop	{r4, r7, pc}

1a000436 <Chip_GPIO_SetPinState>:
1a000436:	b480      	push	{r7}
1a000438:	b083      	sub	sp, #12
1a00043a:	af00      	add	r7, sp, #0
1a00043c:	6078      	str	r0, [r7, #4]
1a00043e:	4608      	mov	r0, r1
1a000440:	4611      	mov	r1, r2
1a000442:	461a      	mov	r2, r3
1a000444:	4603      	mov	r3, r0
1a000446:	70fb      	strb	r3, [r7, #3]
1a000448:	460b      	mov	r3, r1
1a00044a:	70bb      	strb	r3, [r7, #2]
1a00044c:	4613      	mov	r3, r2
1a00044e:	707b      	strb	r3, [r7, #1]
1a000450:	78fa      	ldrb	r2, [r7, #3]
1a000452:	78bb      	ldrb	r3, [r7, #2]
1a000454:	7878      	ldrb	r0, [r7, #1]
1a000456:	6879      	ldr	r1, [r7, #4]
1a000458:	0152      	lsls	r2, r2, #5
1a00045a:	440a      	add	r2, r1
1a00045c:	4413      	add	r3, r2
1a00045e:	4602      	mov	r2, r0
1a000460:	701a      	strb	r2, [r3, #0]
1a000462:	bf00      	nop
1a000464:	370c      	adds	r7, #12
1a000466:	46bd      	mov	sp, r7
1a000468:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00046c:	4770      	bx	lr

1a00046e <Chip_GPIO_SetPinDIROutput>:
1a00046e:	b480      	push	{r7}
1a000470:	b083      	sub	sp, #12
1a000472:	af00      	add	r7, sp, #0
1a000474:	6078      	str	r0, [r7, #4]
1a000476:	460b      	mov	r3, r1
1a000478:	70fb      	strb	r3, [r7, #3]
1a00047a:	4613      	mov	r3, r2
1a00047c:	70bb      	strb	r3, [r7, #2]
1a00047e:	78fa      	ldrb	r2, [r7, #3]
1a000480:	687b      	ldr	r3, [r7, #4]
1a000482:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000486:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a00048a:	78bb      	ldrb	r3, [r7, #2]
1a00048c:	2201      	movs	r2, #1
1a00048e:	fa02 f303 	lsl.w	r3, r2, r3
1a000492:	78fa      	ldrb	r2, [r7, #3]
1a000494:	4319      	orrs	r1, r3
1a000496:	687b      	ldr	r3, [r7, #4]
1a000498:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a00049c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0004a0:	bf00      	nop
1a0004a2:	370c      	adds	r7, #12
1a0004a4:	46bd      	mov	sp, r7
1a0004a6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004aa:	4770      	bx	lr

1a0004ac <Chip_GPIO_SetPinDIRInput>:
1a0004ac:	b480      	push	{r7}
1a0004ae:	b083      	sub	sp, #12
1a0004b0:	af00      	add	r7, sp, #0
1a0004b2:	6078      	str	r0, [r7, #4]
1a0004b4:	460b      	mov	r3, r1
1a0004b6:	70fb      	strb	r3, [r7, #3]
1a0004b8:	4613      	mov	r3, r2
1a0004ba:	70bb      	strb	r3, [r7, #2]
1a0004bc:	78fa      	ldrb	r2, [r7, #3]
1a0004be:	687b      	ldr	r3, [r7, #4]
1a0004c0:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0004c4:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0004c8:	78bb      	ldrb	r3, [r7, #2]
1a0004ca:	2201      	movs	r2, #1
1a0004cc:	fa02 f303 	lsl.w	r3, r2, r3
1a0004d0:	43db      	mvns	r3, r3
1a0004d2:	78fa      	ldrb	r2, [r7, #3]
1a0004d4:	4019      	ands	r1, r3
1a0004d6:	687b      	ldr	r3, [r7, #4]
1a0004d8:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0004dc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0004e0:	bf00      	nop
1a0004e2:	370c      	adds	r7, #12
1a0004e4:	46bd      	mov	sp, r7
1a0004e6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004ea:	4770      	bx	lr

1a0004ec <Chip_UART_TXEnable>:
1a0004ec:	b480      	push	{r7}
1a0004ee:	b083      	sub	sp, #12
1a0004f0:	af00      	add	r7, sp, #0
1a0004f2:	6078      	str	r0, [r7, #4]
1a0004f4:	687b      	ldr	r3, [r7, #4]
1a0004f6:	2201      	movs	r2, #1
1a0004f8:	65da      	str	r2, [r3, #92]	; 0x5c
1a0004fa:	bf00      	nop
1a0004fc:	370c      	adds	r7, #12
1a0004fe:	46bd      	mov	sp, r7
1a000500:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000504:	4770      	bx	lr

1a000506 <Chip_UART_IntEnable>:
1a000506:	b480      	push	{r7}
1a000508:	b083      	sub	sp, #12
1a00050a:	af00      	add	r7, sp, #0
1a00050c:	6078      	str	r0, [r7, #4]
1a00050e:	6039      	str	r1, [r7, #0]
1a000510:	687b      	ldr	r3, [r7, #4]
1a000512:	685a      	ldr	r2, [r3, #4]
1a000514:	683b      	ldr	r3, [r7, #0]
1a000516:	431a      	orrs	r2, r3
1a000518:	687b      	ldr	r3, [r7, #4]
1a00051a:	605a      	str	r2, [r3, #4]
1a00051c:	bf00      	nop
1a00051e:	370c      	adds	r7, #12
1a000520:	46bd      	mov	sp, r7
1a000522:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000526:	4770      	bx	lr

1a000528 <Chip_UART_SetupFIFOS>:
1a000528:	b480      	push	{r7}
1a00052a:	b083      	sub	sp, #12
1a00052c:	af00      	add	r7, sp, #0
1a00052e:	6078      	str	r0, [r7, #4]
1a000530:	6039      	str	r1, [r7, #0]
1a000532:	687b      	ldr	r3, [r7, #4]
1a000534:	683a      	ldr	r2, [r7, #0]
1a000536:	609a      	str	r2, [r3, #8]
1a000538:	bf00      	nop
1a00053a:	370c      	adds	r7, #12
1a00053c:	46bd      	mov	sp, r7
1a00053e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000542:	4770      	bx	lr

1a000544 <Chip_UART_ConfigData>:
1a000544:	b480      	push	{r7}
1a000546:	b083      	sub	sp, #12
1a000548:	af00      	add	r7, sp, #0
1a00054a:	6078      	str	r0, [r7, #4]
1a00054c:	6039      	str	r1, [r7, #0]
1a00054e:	687b      	ldr	r3, [r7, #4]
1a000550:	683a      	ldr	r2, [r7, #0]
1a000552:	60da      	str	r2, [r3, #12]
1a000554:	bf00      	nop
1a000556:	370c      	adds	r7, #12
1a000558:	46bd      	mov	sp, r7
1a00055a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00055e:	4770      	bx	lr

1a000560 <systemInit>:
1a000560:	b580      	push	{r7, lr}
1a000562:	af00      	add	r7, sp, #0
1a000564:	f000 fd9a 	bl	1a00109c <Chip_SetupXtalClocking>
1a000568:	f001 fe20 	bl	1a0021ac <SystemCoreClockUpdate>
1a00056c:	f000 fc72 	bl	1a000e54 <fpuInit>
1a000570:	4868      	ldr	r0, [pc, #416]	; (1a000714 <systemInit+0x1b4>)
1a000572:	f001 fe27 	bl	1a0021c4 <Chip_GPIO_Init>
1a000576:	2304      	movs	r3, #4
1a000578:	2200      	movs	r2, #0
1a00057a:	2100      	movs	r1, #0
1a00057c:	2002      	movs	r0, #2
1a00057e:	f7ff ff3d 	bl	1a0003fc <Chip_SCU_PinMux>
1a000582:	2304      	movs	r3, #4
1a000584:	2200      	movs	r2, #0
1a000586:	2101      	movs	r1, #1
1a000588:	2002      	movs	r0, #2
1a00058a:	f7ff ff37 	bl	1a0003fc <Chip_SCU_PinMux>
1a00058e:	2304      	movs	r3, #4
1a000590:	2200      	movs	r2, #0
1a000592:	2102      	movs	r1, #2
1a000594:	2002      	movs	r0, #2
1a000596:	f7ff ff31 	bl	1a0003fc <Chip_SCU_PinMux>
1a00059a:	2300      	movs	r3, #0
1a00059c:	2200      	movs	r2, #0
1a00059e:	210a      	movs	r1, #10
1a0005a0:	2002      	movs	r0, #2
1a0005a2:	f7ff ff2b 	bl	1a0003fc <Chip_SCU_PinMux>
1a0005a6:	2300      	movs	r3, #0
1a0005a8:	2200      	movs	r2, #0
1a0005aa:	210b      	movs	r1, #11
1a0005ac:	2002      	movs	r0, #2
1a0005ae:	f7ff ff25 	bl	1a0003fc <Chip_SCU_PinMux>
1a0005b2:	2300      	movs	r3, #0
1a0005b4:	2200      	movs	r2, #0
1a0005b6:	210c      	movs	r1, #12
1a0005b8:	2002      	movs	r0, #2
1a0005ba:	f7ff ff1f 	bl	1a0003fc <Chip_SCU_PinMux>
1a0005be:	220e      	movs	r2, #14
1a0005c0:	2100      	movs	r1, #0
1a0005c2:	4854      	ldr	r0, [pc, #336]	; (1a000714 <systemInit+0x1b4>)
1a0005c4:	f7ff ff53 	bl	1a00046e <Chip_GPIO_SetPinDIROutput>
1a0005c8:	220b      	movs	r2, #11
1a0005ca:	2101      	movs	r1, #1
1a0005cc:	4851      	ldr	r0, [pc, #324]	; (1a000714 <systemInit+0x1b4>)
1a0005ce:	f7ff ff4e 	bl	1a00046e <Chip_GPIO_SetPinDIROutput>
1a0005d2:	220c      	movs	r2, #12
1a0005d4:	2101      	movs	r1, #1
1a0005d6:	484f      	ldr	r0, [pc, #316]	; (1a000714 <systemInit+0x1b4>)
1a0005d8:	f7ff ff49 	bl	1a00046e <Chip_GPIO_SetPinDIROutput>
1a0005dc:	2200      	movs	r2, #0
1a0005de:	2105      	movs	r1, #5
1a0005e0:	484c      	ldr	r0, [pc, #304]	; (1a000714 <systemInit+0x1b4>)
1a0005e2:	f7ff ff44 	bl	1a00046e <Chip_GPIO_SetPinDIROutput>
1a0005e6:	2201      	movs	r2, #1
1a0005e8:	2105      	movs	r1, #5
1a0005ea:	484a      	ldr	r0, [pc, #296]	; (1a000714 <systemInit+0x1b4>)
1a0005ec:	f7ff ff3f 	bl	1a00046e <Chip_GPIO_SetPinDIROutput>
1a0005f0:	2202      	movs	r2, #2
1a0005f2:	2105      	movs	r1, #5
1a0005f4:	4847      	ldr	r0, [pc, #284]	; (1a000714 <systemInit+0x1b4>)
1a0005f6:	f7ff ff3a 	bl	1a00046e <Chip_GPIO_SetPinDIROutput>
1a0005fa:	2300      	movs	r3, #0
1a0005fc:	220e      	movs	r2, #14
1a0005fe:	2100      	movs	r1, #0
1a000600:	4844      	ldr	r0, [pc, #272]	; (1a000714 <systemInit+0x1b4>)
1a000602:	f7ff ff18 	bl	1a000436 <Chip_GPIO_SetPinState>
1a000606:	2300      	movs	r3, #0
1a000608:	220b      	movs	r2, #11
1a00060a:	2100      	movs	r1, #0
1a00060c:	4841      	ldr	r0, [pc, #260]	; (1a000714 <systemInit+0x1b4>)
1a00060e:	f7ff ff12 	bl	1a000436 <Chip_GPIO_SetPinState>
1a000612:	2300      	movs	r3, #0
1a000614:	220c      	movs	r2, #12
1a000616:	2100      	movs	r1, #0
1a000618:	483e      	ldr	r0, [pc, #248]	; (1a000714 <systemInit+0x1b4>)
1a00061a:	f7ff ff0c 	bl	1a000436 <Chip_GPIO_SetPinState>
1a00061e:	2300      	movs	r3, #0
1a000620:	2200      	movs	r2, #0
1a000622:	2105      	movs	r1, #5
1a000624:	483b      	ldr	r0, [pc, #236]	; (1a000714 <systemInit+0x1b4>)
1a000626:	f7ff ff06 	bl	1a000436 <Chip_GPIO_SetPinState>
1a00062a:	2300      	movs	r3, #0
1a00062c:	2201      	movs	r2, #1
1a00062e:	2105      	movs	r1, #5
1a000630:	4838      	ldr	r0, [pc, #224]	; (1a000714 <systemInit+0x1b4>)
1a000632:	f7ff ff00 	bl	1a000436 <Chip_GPIO_SetPinState>
1a000636:	2300      	movs	r3, #0
1a000638:	2202      	movs	r2, #2
1a00063a:	2105      	movs	r1, #5
1a00063c:	4835      	ldr	r0, [pc, #212]	; (1a000714 <systemInit+0x1b4>)
1a00063e:	f7ff fefa 	bl	1a000436 <Chip_GPIO_SetPinState>
1a000642:	2300      	movs	r3, #0
1a000644:	22c0      	movs	r2, #192	; 0xc0
1a000646:	2100      	movs	r1, #0
1a000648:	2001      	movs	r0, #1
1a00064a:	f7ff fed7 	bl	1a0003fc <Chip_SCU_PinMux>
1a00064e:	2300      	movs	r3, #0
1a000650:	22c0      	movs	r2, #192	; 0xc0
1a000652:	2101      	movs	r1, #1
1a000654:	2001      	movs	r0, #1
1a000656:	f7ff fed1 	bl	1a0003fc <Chip_SCU_PinMux>
1a00065a:	2300      	movs	r3, #0
1a00065c:	22c0      	movs	r2, #192	; 0xc0
1a00065e:	2102      	movs	r1, #2
1a000660:	2001      	movs	r0, #1
1a000662:	f7ff fecb 	bl	1a0003fc <Chip_SCU_PinMux>
1a000666:	2300      	movs	r3, #0
1a000668:	22c0      	movs	r2, #192	; 0xc0
1a00066a:	2106      	movs	r1, #6
1a00066c:	2001      	movs	r0, #1
1a00066e:	f7ff fec5 	bl	1a0003fc <Chip_SCU_PinMux>
1a000672:	2204      	movs	r2, #4
1a000674:	2100      	movs	r1, #0
1a000676:	4827      	ldr	r0, [pc, #156]	; (1a000714 <systemInit+0x1b4>)
1a000678:	f7ff ff18 	bl	1a0004ac <Chip_GPIO_SetPinDIRInput>
1a00067c:	2208      	movs	r2, #8
1a00067e:	2100      	movs	r1, #0
1a000680:	4824      	ldr	r0, [pc, #144]	; (1a000714 <systemInit+0x1b4>)
1a000682:	f7ff ff13 	bl	1a0004ac <Chip_GPIO_SetPinDIRInput>
1a000686:	2209      	movs	r2, #9
1a000688:	2100      	movs	r1, #0
1a00068a:	4822      	ldr	r0, [pc, #136]	; (1a000714 <systemInit+0x1b4>)
1a00068c:	f7ff ff0e 	bl	1a0004ac <Chip_GPIO_SetPinDIRInput>
1a000690:	2209      	movs	r2, #9
1a000692:	2101      	movs	r1, #1
1a000694:	481f      	ldr	r0, [pc, #124]	; (1a000714 <systemInit+0x1b4>)
1a000696:	f7ff ff09 	bl	1a0004ac <Chip_GPIO_SetPinDIRInput>
1a00069a:	481f      	ldr	r0, [pc, #124]	; (1a000718 <systemInit+0x1b8>)
1a00069c:	f000 fe3a 	bl	1a001314 <Chip_UART_Init>
1a0006a0:	2103      	movs	r1, #3
1a0006a2:	481d      	ldr	r0, [pc, #116]	; (1a000718 <systemInit+0x1b8>)
1a0006a4:	f7ff ff4e 	bl	1a000544 <Chip_UART_ConfigData>
1a0006a8:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a0006ac:	481a      	ldr	r0, [pc, #104]	; (1a000718 <systemInit+0x1b8>)
1a0006ae:	f000 fec3 	bl	1a001438 <Chip_UART_SetBaud>
1a0006b2:	21c1      	movs	r1, #193	; 0xc1
1a0006b4:	4818      	ldr	r0, [pc, #96]	; (1a000718 <systemInit+0x1b8>)
1a0006b6:	f7ff ff37 	bl	1a000528 <Chip_UART_SetupFIFOS>
1a0006ba:	2306      	movs	r3, #6
1a0006bc:	2218      	movs	r2, #24
1a0006be:	2101      	movs	r1, #1
1a0006c0:	2007      	movs	r0, #7
1a0006c2:	f7ff fe9b 	bl	1a0003fc <Chip_SCU_PinMux>
1a0006c6:	2306      	movs	r3, #6
1a0006c8:	22d0      	movs	r2, #208	; 0xd0
1a0006ca:	2102      	movs	r1, #2
1a0006cc:	2007      	movs	r0, #7
1a0006ce:	f7ff fe95 	bl	1a0003fc <Chip_SCU_PinMux>
1a0006d2:	f44f 7300 	mov.w	r3, #512	; 0x200
1a0006d6:	2201      	movs	r2, #1
1a0006d8:	4910      	ldr	r1, [pc, #64]	; (1a00071c <systemInit+0x1bc>)
1a0006da:	4811      	ldr	r0, [pc, #68]	; (1a000720 <systemInit+0x1c0>)
1a0006dc:	f001 f809 	bl	1a0016f2 <RingBuffer_Init>
1a0006e0:	f44f 7300 	mov.w	r3, #512	; 0x200
1a0006e4:	2201      	movs	r2, #1
1a0006e6:	490f      	ldr	r1, [pc, #60]	; (1a000724 <systemInit+0x1c4>)
1a0006e8:	480f      	ldr	r0, [pc, #60]	; (1a000728 <systemInit+0x1c8>)
1a0006ea:	f001 f802 	bl	1a0016f2 <RingBuffer_Init>
1a0006ee:	21c7      	movs	r1, #199	; 0xc7
1a0006f0:	4809      	ldr	r0, [pc, #36]	; (1a000718 <systemInit+0x1b8>)
1a0006f2:	f7ff ff19 	bl	1a000528 <Chip_UART_SetupFIFOS>
1a0006f6:	2105      	movs	r1, #5
1a0006f8:	4807      	ldr	r0, [pc, #28]	; (1a000718 <systemInit+0x1b8>)
1a0006fa:	f7ff ff04 	bl	1a000506 <Chip_UART_IntEnable>
1a0006fe:	201a      	movs	r0, #26
1a000700:	f7ff fe48 	bl	1a000394 <NVIC_EnableIRQ>
1a000704:	4804      	ldr	r0, [pc, #16]	; (1a000718 <systemInit+0x1b8>)
1a000706:	f7ff fef1 	bl	1a0004ec <Chip_UART_TXEnable>
1a00070a:	f000 ff63 	bl	1a0015d4 <StopWatch_Init>
1a00070e:	bf00      	nop
1a000710:	bd80      	pop	{r7, pc}
1a000712:	bf00      	nop
1a000714:	400f4000 	.word	0x400f4000
1a000718:	400c1000 	.word	0x400c1000
1a00071c:	10000000 	.word	0x10000000
1a000720:	10000414 	.word	0x10000414
1a000724:	10000200 	.word	0x10000200
1a000728:	10000400 	.word	0x10000400

1a00072c <UART2_IRQHandler>:
1a00072c:	b580      	push	{r7, lr}
1a00072e:	af00      	add	r7, sp, #0
1a000730:	4a03      	ldr	r2, [pc, #12]	; (1a000740 <UART2_IRQHandler+0x14>)
1a000732:	4904      	ldr	r1, [pc, #16]	; (1a000744 <UART2_IRQHandler+0x18>)
1a000734:	4804      	ldr	r0, [pc, #16]	; (1a000748 <UART2_IRQHandler+0x1c>)
1a000736:	f000 fefe 	bl	1a001536 <Chip_UART_IRQRBHandler>
1a00073a:	bf00      	nop
1a00073c:	bd80      	pop	{r7, pc}
1a00073e:	bf00      	nop
1a000740:	10000400 	.word	0x10000400
1a000744:	10000414 	.word	0x10000414
1a000748:	400c1000 	.word	0x400c1000

1a00074c <setLedFromMsk>:
1a00074c:	b580      	push	{r7, lr}
1a00074e:	b082      	sub	sp, #8
1a000750:	af00      	add	r7, sp, #0
1a000752:	4603      	mov	r3, r0
1a000754:	71fb      	strb	r3, [r7, #7]
1a000756:	79fb      	ldrb	r3, [r7, #7]
1a000758:	f003 0308 	and.w	r3, r3, #8
1a00075c:	2b00      	cmp	r3, #0
1a00075e:	d006      	beq.n	1a00076e <setLedFromMsk+0x22>
1a000760:	2301      	movs	r3, #1
1a000762:	220e      	movs	r2, #14
1a000764:	2100      	movs	r1, #0
1a000766:	4834      	ldr	r0, [pc, #208]	; (1a000838 <setLedFromMsk+0xec>)
1a000768:	f7ff fe65 	bl	1a000436 <Chip_GPIO_SetPinState>
1a00076c:	e005      	b.n	1a00077a <setLedFromMsk+0x2e>
1a00076e:	2300      	movs	r3, #0
1a000770:	220e      	movs	r2, #14
1a000772:	2100      	movs	r1, #0
1a000774:	4830      	ldr	r0, [pc, #192]	; (1a000838 <setLedFromMsk+0xec>)
1a000776:	f7ff fe5e 	bl	1a000436 <Chip_GPIO_SetPinState>
1a00077a:	79fb      	ldrb	r3, [r7, #7]
1a00077c:	f003 0310 	and.w	r3, r3, #16
1a000780:	2b00      	cmp	r3, #0
1a000782:	d006      	beq.n	1a000792 <setLedFromMsk+0x46>
1a000784:	2301      	movs	r3, #1
1a000786:	220b      	movs	r2, #11
1a000788:	2101      	movs	r1, #1
1a00078a:	482b      	ldr	r0, [pc, #172]	; (1a000838 <setLedFromMsk+0xec>)
1a00078c:	f7ff fe53 	bl	1a000436 <Chip_GPIO_SetPinState>
1a000790:	e005      	b.n	1a00079e <setLedFromMsk+0x52>
1a000792:	2300      	movs	r3, #0
1a000794:	220b      	movs	r2, #11
1a000796:	2101      	movs	r1, #1
1a000798:	4827      	ldr	r0, [pc, #156]	; (1a000838 <setLedFromMsk+0xec>)
1a00079a:	f7ff fe4c 	bl	1a000436 <Chip_GPIO_SetPinState>
1a00079e:	79fb      	ldrb	r3, [r7, #7]
1a0007a0:	f003 0320 	and.w	r3, r3, #32
1a0007a4:	2b00      	cmp	r3, #0
1a0007a6:	d006      	beq.n	1a0007b6 <setLedFromMsk+0x6a>
1a0007a8:	2301      	movs	r3, #1
1a0007aa:	220c      	movs	r2, #12
1a0007ac:	2101      	movs	r1, #1
1a0007ae:	4822      	ldr	r0, [pc, #136]	; (1a000838 <setLedFromMsk+0xec>)
1a0007b0:	f7ff fe41 	bl	1a000436 <Chip_GPIO_SetPinState>
1a0007b4:	e005      	b.n	1a0007c2 <setLedFromMsk+0x76>
1a0007b6:	2300      	movs	r3, #0
1a0007b8:	220c      	movs	r2, #12
1a0007ba:	2101      	movs	r1, #1
1a0007bc:	481e      	ldr	r0, [pc, #120]	; (1a000838 <setLedFromMsk+0xec>)
1a0007be:	f7ff fe3a 	bl	1a000436 <Chip_GPIO_SetPinState>
1a0007c2:	79fb      	ldrb	r3, [r7, #7]
1a0007c4:	f003 0301 	and.w	r3, r3, #1
1a0007c8:	2b00      	cmp	r3, #0
1a0007ca:	d006      	beq.n	1a0007da <setLedFromMsk+0x8e>
1a0007cc:	2301      	movs	r3, #1
1a0007ce:	2200      	movs	r2, #0
1a0007d0:	2105      	movs	r1, #5
1a0007d2:	4819      	ldr	r0, [pc, #100]	; (1a000838 <setLedFromMsk+0xec>)
1a0007d4:	f7ff fe2f 	bl	1a000436 <Chip_GPIO_SetPinState>
1a0007d8:	e005      	b.n	1a0007e6 <setLedFromMsk+0x9a>
1a0007da:	2300      	movs	r3, #0
1a0007dc:	2200      	movs	r2, #0
1a0007de:	2105      	movs	r1, #5
1a0007e0:	4815      	ldr	r0, [pc, #84]	; (1a000838 <setLedFromMsk+0xec>)
1a0007e2:	f7ff fe28 	bl	1a000436 <Chip_GPIO_SetPinState>
1a0007e6:	79fb      	ldrb	r3, [r7, #7]
1a0007e8:	f003 0302 	and.w	r3, r3, #2
1a0007ec:	2b00      	cmp	r3, #0
1a0007ee:	d006      	beq.n	1a0007fe <setLedFromMsk+0xb2>
1a0007f0:	2301      	movs	r3, #1
1a0007f2:	2201      	movs	r2, #1
1a0007f4:	2105      	movs	r1, #5
1a0007f6:	4810      	ldr	r0, [pc, #64]	; (1a000838 <setLedFromMsk+0xec>)
1a0007f8:	f7ff fe1d 	bl	1a000436 <Chip_GPIO_SetPinState>
1a0007fc:	e005      	b.n	1a00080a <setLedFromMsk+0xbe>
1a0007fe:	2300      	movs	r3, #0
1a000800:	2201      	movs	r2, #1
1a000802:	2105      	movs	r1, #5
1a000804:	480c      	ldr	r0, [pc, #48]	; (1a000838 <setLedFromMsk+0xec>)
1a000806:	f7ff fe16 	bl	1a000436 <Chip_GPIO_SetPinState>
1a00080a:	79fb      	ldrb	r3, [r7, #7]
1a00080c:	f003 0304 	and.w	r3, r3, #4
1a000810:	2b00      	cmp	r3, #0
1a000812:	d006      	beq.n	1a000822 <setLedFromMsk+0xd6>
1a000814:	2301      	movs	r3, #1
1a000816:	2202      	movs	r2, #2
1a000818:	2105      	movs	r1, #5
1a00081a:	4807      	ldr	r0, [pc, #28]	; (1a000838 <setLedFromMsk+0xec>)
1a00081c:	f7ff fe0b 	bl	1a000436 <Chip_GPIO_SetPinState>
1a000820:	e005      	b.n	1a00082e <setLedFromMsk+0xe2>
1a000822:	2300      	movs	r3, #0
1a000824:	2202      	movs	r2, #2
1a000826:	2105      	movs	r1, #5
1a000828:	4803      	ldr	r0, [pc, #12]	; (1a000838 <setLedFromMsk+0xec>)
1a00082a:	f7ff fe04 	bl	1a000436 <Chip_GPIO_SetPinState>
1a00082e:	bf00      	nop
1a000830:	3708      	adds	r7, #8
1a000832:	46bd      	mov	sp, r7
1a000834:	bd80      	pop	{r7, pc}
1a000836:	bf00      	nop
1a000838:	400f4000 	.word	0x400f4000

1a00083c <ResetISR>:
1a00083c:	b580      	push	{r7, lr}
1a00083e:	b088      	sub	sp, #32
1a000840:	af00      	add	r7, sp, #0
1a000842:	b672      	cpsid	i
1a000844:	4b26      	ldr	r3, [pc, #152]	; (1a0008e0 <ResetISR+0xa4>)
1a000846:	617b      	str	r3, [r7, #20]
1a000848:	697b      	ldr	r3, [r7, #20]
1a00084a:	4a26      	ldr	r2, [pc, #152]	; (1a0008e4 <ResetISR+0xa8>)
1a00084c:	601a      	str	r2, [r3, #0]
1a00084e:	697b      	ldr	r3, [r7, #20]
1a000850:	3304      	adds	r3, #4
1a000852:	4a25      	ldr	r2, [pc, #148]	; (1a0008e8 <ResetISR+0xac>)
1a000854:	601a      	str	r2, [r3, #0]
1a000856:	4b25      	ldr	r3, [pc, #148]	; (1a0008ec <ResetISR+0xb0>)
1a000858:	613b      	str	r3, [r7, #16]
1a00085a:	2300      	movs	r3, #0
1a00085c:	61fb      	str	r3, [r7, #28]
1a00085e:	e009      	b.n	1a000874 <ResetISR+0x38>
1a000860:	69fb      	ldr	r3, [r7, #28]
1a000862:	009b      	lsls	r3, r3, #2
1a000864:	693a      	ldr	r2, [r7, #16]
1a000866:	4413      	add	r3, r2
1a000868:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a00086c:	601a      	str	r2, [r3, #0]
1a00086e:	69fb      	ldr	r3, [r7, #28]
1a000870:	3301      	adds	r3, #1
1a000872:	61fb      	str	r3, [r7, #28]
1a000874:	69fb      	ldr	r3, [r7, #28]
1a000876:	2b07      	cmp	r3, #7
1a000878:	d9f2      	bls.n	1a000860 <ResetISR+0x24>
1a00087a:	b662      	cpsie	i
1a00087c:	4b1c      	ldr	r3, [pc, #112]	; (1a0008f0 <ResetISR+0xb4>)
1a00087e:	61bb      	str	r3, [r7, #24]
1a000880:	e013      	b.n	1a0008aa <ResetISR+0x6e>
1a000882:	69bb      	ldr	r3, [r7, #24]
1a000884:	1d1a      	adds	r2, r3, #4
1a000886:	61ba      	str	r2, [r7, #24]
1a000888:	681b      	ldr	r3, [r3, #0]
1a00088a:	607b      	str	r3, [r7, #4]
1a00088c:	69bb      	ldr	r3, [r7, #24]
1a00088e:	1d1a      	adds	r2, r3, #4
1a000890:	61ba      	str	r2, [r7, #24]
1a000892:	681b      	ldr	r3, [r3, #0]
1a000894:	60fb      	str	r3, [r7, #12]
1a000896:	69bb      	ldr	r3, [r7, #24]
1a000898:	1d1a      	adds	r2, r3, #4
1a00089a:	61ba      	str	r2, [r7, #24]
1a00089c:	681b      	ldr	r3, [r3, #0]
1a00089e:	60bb      	str	r3, [r7, #8]
1a0008a0:	68ba      	ldr	r2, [r7, #8]
1a0008a2:	68f9      	ldr	r1, [r7, #12]
1a0008a4:	6878      	ldr	r0, [r7, #4]
1a0008a6:	f7ff fc3f 	bl	1a000128 <data_init>
1a0008aa:	69bb      	ldr	r3, [r7, #24]
1a0008ac:	4a11      	ldr	r2, [pc, #68]	; (1a0008f4 <ResetISR+0xb8>)
1a0008ae:	4293      	cmp	r3, r2
1a0008b0:	d3e7      	bcc.n	1a000882 <ResetISR+0x46>
1a0008b2:	e00d      	b.n	1a0008d0 <ResetISR+0x94>
1a0008b4:	69bb      	ldr	r3, [r7, #24]
1a0008b6:	1d1a      	adds	r2, r3, #4
1a0008b8:	61ba      	str	r2, [r7, #24]
1a0008ba:	681b      	ldr	r3, [r3, #0]
1a0008bc:	60fb      	str	r3, [r7, #12]
1a0008be:	69bb      	ldr	r3, [r7, #24]
1a0008c0:	1d1a      	adds	r2, r3, #4
1a0008c2:	61ba      	str	r2, [r7, #24]
1a0008c4:	681b      	ldr	r3, [r3, #0]
1a0008c6:	60bb      	str	r3, [r7, #8]
1a0008c8:	68b9      	ldr	r1, [r7, #8]
1a0008ca:	68f8      	ldr	r0, [r7, #12]
1a0008cc:	f7ff fc4e 	bl	1a00016c <bss_init>
1a0008d0:	69bb      	ldr	r3, [r7, #24]
1a0008d2:	4a09      	ldr	r2, [pc, #36]	; (1a0008f8 <ResetISR+0xbc>)
1a0008d4:	4293      	cmp	r3, r2
1a0008d6:	d3ed      	bcc.n	1a0008b4 <ResetISR+0x78>
1a0008d8:	f000 fab0 	bl	1a000e3c <main>
1a0008dc:	e7fe      	b.n	1a0008dc <ResetISR+0xa0>
1a0008de:	bf00      	nop
1a0008e0:	40053100 	.word	0x40053100
1a0008e4:	10df1000 	.word	0x10df1000
1a0008e8:	01dff7ff 	.word	0x01dff7ff
1a0008ec:	e000e280 	.word	0xe000e280
1a0008f0:	1a000114 	.word	0x1a000114
1a0008f4:	1a000120 	.word	0x1a000120
1a0008f8:	1a000128 	.word	0x1a000128

1a0008fc <NVIC_EnableIRQ>:
1a0008fc:	b480      	push	{r7}
1a0008fe:	b083      	sub	sp, #12
1a000900:	af00      	add	r7, sp, #0
1a000902:	4603      	mov	r3, r0
1a000904:	71fb      	strb	r3, [r7, #7]
1a000906:	79fb      	ldrb	r3, [r7, #7]
1a000908:	f003 031f 	and.w	r3, r3, #31
1a00090c:	2201      	movs	r2, #1
1a00090e:	fa02 f103 	lsl.w	r1, r2, r3
1a000912:	4a06      	ldr	r2, [pc, #24]	; (1a00092c <NVIC_EnableIRQ+0x30>)
1a000914:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000918:	095b      	lsrs	r3, r3, #5
1a00091a:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a00091e:	bf00      	nop
1a000920:	370c      	adds	r7, #12
1a000922:	46bd      	mov	sp, r7
1a000924:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000928:	4770      	bx	lr
1a00092a:	bf00      	nop
1a00092c:	e000e100 	.word	0xe000e100

1a000930 <NVIC_ClearPendingIRQ>:
1a000930:	b480      	push	{r7}
1a000932:	b083      	sub	sp, #12
1a000934:	af00      	add	r7, sp, #0
1a000936:	4603      	mov	r3, r0
1a000938:	71fb      	strb	r3, [r7, #7]
1a00093a:	79fb      	ldrb	r3, [r7, #7]
1a00093c:	f003 031f 	and.w	r3, r3, #31
1a000940:	2201      	movs	r2, #1
1a000942:	fa02 f103 	lsl.w	r1, r2, r3
1a000946:	4a06      	ldr	r2, [pc, #24]	; (1a000960 <NVIC_ClearPendingIRQ+0x30>)
1a000948:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a00094c:	095b      	lsrs	r3, r3, #5
1a00094e:	3360      	adds	r3, #96	; 0x60
1a000950:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000954:	bf00      	nop
1a000956:	370c      	adds	r7, #12
1a000958:	46bd      	mov	sp, r7
1a00095a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00095e:	4770      	bx	lr
1a000960:	e000e100 	.word	0xe000e100

1a000964 <NVIC_SetPriority>:
1a000964:	b480      	push	{r7}
1a000966:	b083      	sub	sp, #12
1a000968:	af00      	add	r7, sp, #0
1a00096a:	4603      	mov	r3, r0
1a00096c:	6039      	str	r1, [r7, #0]
1a00096e:	71fb      	strb	r3, [r7, #7]
1a000970:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000974:	2b00      	cmp	r3, #0
1a000976:	da0b      	bge.n	1a000990 <NVIC_SetPriority+0x2c>
1a000978:	683b      	ldr	r3, [r7, #0]
1a00097a:	b2da      	uxtb	r2, r3
1a00097c:	490c      	ldr	r1, [pc, #48]	; (1a0009b0 <NVIC_SetPriority+0x4c>)
1a00097e:	79fb      	ldrb	r3, [r7, #7]
1a000980:	f003 030f 	and.w	r3, r3, #15
1a000984:	3b04      	subs	r3, #4
1a000986:	0152      	lsls	r2, r2, #5
1a000988:	b2d2      	uxtb	r2, r2
1a00098a:	440b      	add	r3, r1
1a00098c:	761a      	strb	r2, [r3, #24]
1a00098e:	e009      	b.n	1a0009a4 <NVIC_SetPriority+0x40>
1a000990:	683b      	ldr	r3, [r7, #0]
1a000992:	b2da      	uxtb	r2, r3
1a000994:	4907      	ldr	r1, [pc, #28]	; (1a0009b4 <NVIC_SetPriority+0x50>)
1a000996:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a00099a:	0152      	lsls	r2, r2, #5
1a00099c:	b2d2      	uxtb	r2, r2
1a00099e:	440b      	add	r3, r1
1a0009a0:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a0009a4:	bf00      	nop
1a0009a6:	370c      	adds	r7, #12
1a0009a8:	46bd      	mov	sp, r7
1a0009aa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009ae:	4770      	bx	lr
1a0009b0:	e000ed00 	.word	0xe000ed00
1a0009b4:	e000e100 	.word	0xe000e100

1a0009b8 <SysTick_Config>:
1a0009b8:	b580      	push	{r7, lr}
1a0009ba:	b082      	sub	sp, #8
1a0009bc:	af00      	add	r7, sp, #0
1a0009be:	6078      	str	r0, [r7, #4]
1a0009c0:	687b      	ldr	r3, [r7, #4]
1a0009c2:	3b01      	subs	r3, #1
1a0009c4:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a0009c8:	d301      	bcc.n	1a0009ce <SysTick_Config+0x16>
1a0009ca:	2301      	movs	r3, #1
1a0009cc:	e00f      	b.n	1a0009ee <SysTick_Config+0x36>
1a0009ce:	4a0a      	ldr	r2, [pc, #40]	; (1a0009f8 <SysTick_Config+0x40>)
1a0009d0:	687b      	ldr	r3, [r7, #4]
1a0009d2:	3b01      	subs	r3, #1
1a0009d4:	6053      	str	r3, [r2, #4]
1a0009d6:	2107      	movs	r1, #7
1a0009d8:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a0009dc:	f7ff ffc2 	bl	1a000964 <NVIC_SetPriority>
1a0009e0:	4b05      	ldr	r3, [pc, #20]	; (1a0009f8 <SysTick_Config+0x40>)
1a0009e2:	2200      	movs	r2, #0
1a0009e4:	609a      	str	r2, [r3, #8]
1a0009e6:	4b04      	ldr	r3, [pc, #16]	; (1a0009f8 <SysTick_Config+0x40>)
1a0009e8:	2207      	movs	r2, #7
1a0009ea:	601a      	str	r2, [r3, #0]
1a0009ec:	2300      	movs	r3, #0
1a0009ee:	4618      	mov	r0, r3
1a0009f0:	3708      	adds	r7, #8
1a0009f2:	46bd      	mov	sp, r7
1a0009f4:	bd80      	pop	{r7, pc}
1a0009f6:	bf00      	nop
1a0009f8:	e000e010 	.word	0xe000e010

1a0009fc <Chip_SCU_GPIOIntPinSel>:
1a0009fc:	b480      	push	{r7}
1a0009fe:	b085      	sub	sp, #20
1a000a00:	af00      	add	r7, sp, #0
1a000a02:	4603      	mov	r3, r0
1a000a04:	71fb      	strb	r3, [r7, #7]
1a000a06:	460b      	mov	r3, r1
1a000a08:	71bb      	strb	r3, [r7, #6]
1a000a0a:	4613      	mov	r3, r2
1a000a0c:	717b      	strb	r3, [r7, #5]
1a000a0e:	79fb      	ldrb	r3, [r7, #7]
1a000a10:	00db      	lsls	r3, r3, #3
1a000a12:	f003 0318 	and.w	r3, r3, #24
1a000a16:	60fb      	str	r3, [r7, #12]
1a000a18:	79bb      	ldrb	r3, [r7, #6]
1a000a1a:	015b      	lsls	r3, r3, #5
1a000a1c:	b2da      	uxtb	r2, r3
1a000a1e:	797b      	ldrb	r3, [r7, #5]
1a000a20:	f003 031f 	and.w	r3, r3, #31
1a000a24:	431a      	orrs	r2, r3
1a000a26:	68fb      	ldr	r3, [r7, #12]
1a000a28:	fa02 f303 	lsl.w	r3, r2, r3
1a000a2c:	60bb      	str	r3, [r7, #8]
1a000a2e:	4a0f      	ldr	r2, [pc, #60]	; (1a000a6c <Chip_SCU_GPIOIntPinSel+0x70>)
1a000a30:	79fb      	ldrb	r3, [r7, #7]
1a000a32:	089b      	lsrs	r3, r3, #2
1a000a34:	b2db      	uxtb	r3, r3
1a000a36:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a000a3a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a000a3e:	21ff      	movs	r1, #255	; 0xff
1a000a40:	68fa      	ldr	r2, [r7, #12]
1a000a42:	fa01 f202 	lsl.w	r2, r1, r2
1a000a46:	43d2      	mvns	r2, r2
1a000a48:	401a      	ands	r2, r3
1a000a4a:	4908      	ldr	r1, [pc, #32]	; (1a000a6c <Chip_SCU_GPIOIntPinSel+0x70>)
1a000a4c:	79fb      	ldrb	r3, [r7, #7]
1a000a4e:	089b      	lsrs	r3, r3, #2
1a000a50:	b2db      	uxtb	r3, r3
1a000a52:	4618      	mov	r0, r3
1a000a54:	68bb      	ldr	r3, [r7, #8]
1a000a56:	431a      	orrs	r2, r3
1a000a58:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a000a5c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a000a60:	bf00      	nop
1a000a62:	3714      	adds	r7, #20
1a000a64:	46bd      	mov	sp, r7
1a000a66:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a6a:	4770      	bx	lr
1a000a6c:	40086000 	.word	0x40086000

1a000a70 <Chip_PININT_Init>:
1a000a70:	b480      	push	{r7}
1a000a72:	b083      	sub	sp, #12
1a000a74:	af00      	add	r7, sp, #0
1a000a76:	6078      	str	r0, [r7, #4]
1a000a78:	bf00      	nop
1a000a7a:	370c      	adds	r7, #12
1a000a7c:	46bd      	mov	sp, r7
1a000a7e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a82:	4770      	bx	lr

1a000a84 <Chip_PININT_SetPinModeEdge>:
1a000a84:	b480      	push	{r7}
1a000a86:	b083      	sub	sp, #12
1a000a88:	af00      	add	r7, sp, #0
1a000a8a:	6078      	str	r0, [r7, #4]
1a000a8c:	6039      	str	r1, [r7, #0]
1a000a8e:	687b      	ldr	r3, [r7, #4]
1a000a90:	681a      	ldr	r2, [r3, #0]
1a000a92:	683b      	ldr	r3, [r7, #0]
1a000a94:	43db      	mvns	r3, r3
1a000a96:	401a      	ands	r2, r3
1a000a98:	687b      	ldr	r3, [r7, #4]
1a000a9a:	601a      	str	r2, [r3, #0]
1a000a9c:	bf00      	nop
1a000a9e:	370c      	adds	r7, #12
1a000aa0:	46bd      	mov	sp, r7
1a000aa2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000aa6:	4770      	bx	lr

1a000aa8 <Chip_PININT_EnableIntLow>:
1a000aa8:	b480      	push	{r7}
1a000aaa:	b083      	sub	sp, #12
1a000aac:	af00      	add	r7, sp, #0
1a000aae:	6078      	str	r0, [r7, #4]
1a000ab0:	6039      	str	r1, [r7, #0]
1a000ab2:	687b      	ldr	r3, [r7, #4]
1a000ab4:	683a      	ldr	r2, [r7, #0]
1a000ab6:	615a      	str	r2, [r3, #20]
1a000ab8:	bf00      	nop
1a000aba:	370c      	adds	r7, #12
1a000abc:	46bd      	mov	sp, r7
1a000abe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ac2:	4770      	bx	lr

1a000ac4 <Chip_PININT_ClearIntStatus>:
1a000ac4:	b480      	push	{r7}
1a000ac6:	b083      	sub	sp, #12
1a000ac8:	af00      	add	r7, sp, #0
1a000aca:	6078      	str	r0, [r7, #4]
1a000acc:	6039      	str	r1, [r7, #0]
1a000ace:	687b      	ldr	r3, [r7, #4]
1a000ad0:	683a      	ldr	r2, [r7, #0]
1a000ad2:	625a      	str	r2, [r3, #36]	; 0x24
1a000ad4:	bf00      	nop
1a000ad6:	370c      	adds	r7, #12
1a000ad8:	46bd      	mov	sp, r7
1a000ada:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ade:	4770      	bx	lr

1a000ae0 <Chip_UART_TXEnable>:
1a000ae0:	b480      	push	{r7}
1a000ae2:	b083      	sub	sp, #12
1a000ae4:	af00      	add	r7, sp, #0
1a000ae6:	6078      	str	r0, [r7, #4]
1a000ae8:	687b      	ldr	r3, [r7, #4]
1a000aea:	2201      	movs	r2, #1
1a000aec:	65da      	str	r2, [r3, #92]	; 0x5c
1a000aee:	bf00      	nop
1a000af0:	370c      	adds	r7, #12
1a000af2:	46bd      	mov	sp, r7
1a000af4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000af8:	4770      	bx	lr

1a000afa <Chip_UART_ConfigData>:
1a000afa:	b480      	push	{r7}
1a000afc:	b083      	sub	sp, #12
1a000afe:	af00      	add	r7, sp, #0
1a000b00:	6078      	str	r0, [r7, #4]
1a000b02:	6039      	str	r1, [r7, #0]
1a000b04:	687b      	ldr	r3, [r7, #4]
1a000b06:	683a      	ldr	r2, [r7, #0]
1a000b08:	60da      	str	r2, [r3, #12]
1a000b0a:	bf00      	nop
1a000b0c:	370c      	adds	r7, #12
1a000b0e:	46bd      	mov	sp, r7
1a000b10:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b14:	4770      	bx	lr
1a000b16:	Address 0x000000001a000b16 is out of bounds.


1a000b18 <init_interrupciones>:
1a000b18:	b580      	push	{r7, lr}
1a000b1a:	af00      	add	r7, sp, #0
1a000b1c:	4823      	ldr	r0, [pc, #140]	; (1a000bac <init_interrupciones+0x94>)
1a000b1e:	f7ff ffa7 	bl	1a000a70 <Chip_PININT_Init>
1a000b22:	2204      	movs	r2, #4
1a000b24:	2100      	movs	r1, #0
1a000b26:	2001      	movs	r0, #1
1a000b28:	f7ff ff68 	bl	1a0009fc <Chip_SCU_GPIOIntPinSel>
1a000b2c:	2208      	movs	r2, #8
1a000b2e:	2100      	movs	r1, #0
1a000b30:	2002      	movs	r0, #2
1a000b32:	f7ff ff63 	bl	1a0009fc <Chip_SCU_GPIOIntPinSel>
1a000b36:	2209      	movs	r2, #9
1a000b38:	2101      	movs	r1, #1
1a000b3a:	2004      	movs	r0, #4
1a000b3c:	f7ff ff5e 	bl	1a0009fc <Chip_SCU_GPIOIntPinSel>
1a000b40:	2102      	movs	r1, #2
1a000b42:	481a      	ldr	r0, [pc, #104]	; (1a000bac <init_interrupciones+0x94>)
1a000b44:	f7ff ffbe 	bl	1a000ac4 <Chip_PININT_ClearIntStatus>
1a000b48:	2104      	movs	r1, #4
1a000b4a:	4818      	ldr	r0, [pc, #96]	; (1a000bac <init_interrupciones+0x94>)
1a000b4c:	f7ff ffba 	bl	1a000ac4 <Chip_PININT_ClearIntStatus>
1a000b50:	2110      	movs	r1, #16
1a000b52:	4816      	ldr	r0, [pc, #88]	; (1a000bac <init_interrupciones+0x94>)
1a000b54:	f7ff ffb6 	bl	1a000ac4 <Chip_PININT_ClearIntStatus>
1a000b58:	2102      	movs	r1, #2
1a000b5a:	4814      	ldr	r0, [pc, #80]	; (1a000bac <init_interrupciones+0x94>)
1a000b5c:	f7ff ff92 	bl	1a000a84 <Chip_PININT_SetPinModeEdge>
1a000b60:	2104      	movs	r1, #4
1a000b62:	4812      	ldr	r0, [pc, #72]	; (1a000bac <init_interrupciones+0x94>)
1a000b64:	f7ff ff8e 	bl	1a000a84 <Chip_PININT_SetPinModeEdge>
1a000b68:	2110      	movs	r1, #16
1a000b6a:	4810      	ldr	r0, [pc, #64]	; (1a000bac <init_interrupciones+0x94>)
1a000b6c:	f7ff ff8a 	bl	1a000a84 <Chip_PININT_SetPinModeEdge>
1a000b70:	2102      	movs	r1, #2
1a000b72:	480e      	ldr	r0, [pc, #56]	; (1a000bac <init_interrupciones+0x94>)
1a000b74:	f7ff ff98 	bl	1a000aa8 <Chip_PININT_EnableIntLow>
1a000b78:	2104      	movs	r1, #4
1a000b7a:	480c      	ldr	r0, [pc, #48]	; (1a000bac <init_interrupciones+0x94>)
1a000b7c:	f7ff ff94 	bl	1a000aa8 <Chip_PININT_EnableIntLow>
1a000b80:	2110      	movs	r1, #16
1a000b82:	480a      	ldr	r0, [pc, #40]	; (1a000bac <init_interrupciones+0x94>)
1a000b84:	f7ff ff90 	bl	1a000aa8 <Chip_PININT_EnableIntLow>
1a000b88:	2021      	movs	r0, #33	; 0x21
1a000b8a:	f7ff fed1 	bl	1a000930 <NVIC_ClearPendingIRQ>
1a000b8e:	2022      	movs	r0, #34	; 0x22
1a000b90:	f7ff fece 	bl	1a000930 <NVIC_ClearPendingIRQ>
1a000b94:	2024      	movs	r0, #36	; 0x24
1a000b96:	f7ff fecb 	bl	1a000930 <NVIC_ClearPendingIRQ>
1a000b9a:	2022      	movs	r0, #34	; 0x22
1a000b9c:	f7ff feae 	bl	1a0008fc <NVIC_EnableIRQ>
1a000ba0:	2024      	movs	r0, #36	; 0x24
1a000ba2:	f7ff feab 	bl	1a0008fc <NVIC_EnableIRQ>
1a000ba6:	bf00      	nop
1a000ba8:	bd80      	pop	{r7, pc}
1a000baa:	bf00      	nop
1a000bac:	40087000 	.word	0x40087000

1a000bb0 <configurar_USART2>:
1a000bb0:	b580      	push	{r7, lr}
1a000bb2:	af00      	add	r7, sp, #0
1a000bb4:	4808      	ldr	r0, [pc, #32]	; (1a000bd8 <configurar_USART2+0x28>)
1a000bb6:	f000 fbad 	bl	1a001314 <Chip_UART_Init>
1a000bba:	2103      	movs	r1, #3
1a000bbc:	4806      	ldr	r0, [pc, #24]	; (1a000bd8 <configurar_USART2+0x28>)
1a000bbe:	f7ff ff9c 	bl	1a000afa <Chip_UART_ConfigData>
1a000bc2:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a000bc6:	4804      	ldr	r0, [pc, #16]	; (1a000bd8 <configurar_USART2+0x28>)
1a000bc8:	f000 fc36 	bl	1a001438 <Chip_UART_SetBaud>
1a000bcc:	4802      	ldr	r0, [pc, #8]	; (1a000bd8 <configurar_USART2+0x28>)
1a000bce:	f7ff ff87 	bl	1a000ae0 <Chip_UART_TXEnable>
1a000bd2:	bf00      	nop
1a000bd4:	bd80      	pop	{r7, pc}
1a000bd6:	bf00      	nop
1a000bd8:	400c1000 	.word	0x400c1000

1a000bdc <configurar_SysTick>:
1a000bdc:	b580      	push	{r7, lr}
1a000bde:	af00      	add	r7, sp, #0
1a000be0:	4b05      	ldr	r3, [pc, #20]	; (1a000bf8 <configurar_SysTick+0x1c>)
1a000be2:	681b      	ldr	r3, [r3, #0]
1a000be4:	4a05      	ldr	r2, [pc, #20]	; (1a000bfc <configurar_SysTick+0x20>)
1a000be6:	fba2 2303 	umull	r2, r3, r2, r3
1a000bea:	095b      	lsrs	r3, r3, #5
1a000bec:	4618      	mov	r0, r3
1a000bee:	f7ff fee3 	bl	1a0009b8 <SysTick_Config>
1a000bf2:	bf00      	nop
1a000bf4:	bd80      	pop	{r7, pc}
1a000bf6:	bf00      	nop
1a000bf8:	100004a4 	.word	0x100004a4
1a000bfc:	51eb851f 	.word	0x51eb851f

1a000c00 <NVIC_EnableIRQ>:
1a000c00:	b480      	push	{r7}
1a000c02:	b083      	sub	sp, #12
1a000c04:	af00      	add	r7, sp, #0
1a000c06:	4603      	mov	r3, r0
1a000c08:	71fb      	strb	r3, [r7, #7]
1a000c0a:	79fb      	ldrb	r3, [r7, #7]
1a000c0c:	f003 031f 	and.w	r3, r3, #31
1a000c10:	2201      	movs	r2, #1
1a000c12:	fa02 f103 	lsl.w	r1, r2, r3
1a000c16:	4a06      	ldr	r2, [pc, #24]	; (1a000c30 <NVIC_EnableIRQ+0x30>)
1a000c18:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000c1c:	095b      	lsrs	r3, r3, #5
1a000c1e:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000c22:	bf00      	nop
1a000c24:	370c      	adds	r7, #12
1a000c26:	46bd      	mov	sp, r7
1a000c28:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c2c:	4770      	bx	lr
1a000c2e:	bf00      	nop
1a000c30:	e000e100 	.word	0xe000e100

1a000c34 <NVIC_DisableIRQ>:
1a000c34:	b480      	push	{r7}
1a000c36:	b083      	sub	sp, #12
1a000c38:	af00      	add	r7, sp, #0
1a000c3a:	4603      	mov	r3, r0
1a000c3c:	71fb      	strb	r3, [r7, #7]
1a000c3e:	79fb      	ldrb	r3, [r7, #7]
1a000c40:	f003 031f 	and.w	r3, r3, #31
1a000c44:	2201      	movs	r2, #1
1a000c46:	fa02 f103 	lsl.w	r1, r2, r3
1a000c4a:	4a06      	ldr	r2, [pc, #24]	; (1a000c64 <NVIC_DisableIRQ+0x30>)
1a000c4c:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000c50:	095b      	lsrs	r3, r3, #5
1a000c52:	3320      	adds	r3, #32
1a000c54:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000c58:	bf00      	nop
1a000c5a:	370c      	adds	r7, #12
1a000c5c:	46bd      	mov	sp, r7
1a000c5e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c62:	4770      	bx	lr
1a000c64:	e000e100 	.word	0xe000e100

1a000c68 <NVIC_ClearPendingIRQ>:
1a000c68:	b480      	push	{r7}
1a000c6a:	b083      	sub	sp, #12
1a000c6c:	af00      	add	r7, sp, #0
1a000c6e:	4603      	mov	r3, r0
1a000c70:	71fb      	strb	r3, [r7, #7]
1a000c72:	79fb      	ldrb	r3, [r7, #7]
1a000c74:	f003 031f 	and.w	r3, r3, #31
1a000c78:	2201      	movs	r2, #1
1a000c7a:	fa02 f103 	lsl.w	r1, r2, r3
1a000c7e:	4a06      	ldr	r2, [pc, #24]	; (1a000c98 <NVIC_ClearPendingIRQ+0x30>)
1a000c80:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000c84:	095b      	lsrs	r3, r3, #5
1a000c86:	3360      	adds	r3, #96	; 0x60
1a000c88:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000c8c:	bf00      	nop
1a000c8e:	370c      	adds	r7, #12
1a000c90:	46bd      	mov	sp, r7
1a000c92:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c96:	4770      	bx	lr
1a000c98:	e000e100 	.word	0xe000e100

1a000c9c <Chip_PININT_ClearIntStatus>:
1a000c9c:	b480      	push	{r7}
1a000c9e:	b083      	sub	sp, #12
1a000ca0:	af00      	add	r7, sp, #0
1a000ca2:	6078      	str	r0, [r7, #4]
1a000ca4:	6039      	str	r1, [r7, #0]
1a000ca6:	687b      	ldr	r3, [r7, #4]
1a000ca8:	683a      	ldr	r2, [r7, #0]
1a000caa:	625a      	str	r2, [r3, #36]	; 0x24
1a000cac:	bf00      	nop
1a000cae:	370c      	adds	r7, #12
1a000cb0:	46bd      	mov	sp, r7
1a000cb2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cb6:	4770      	bx	lr

1a000cb8 <StopWatch_Elapsed>:
1a000cb8:	b580      	push	{r7, lr}
1a000cba:	b082      	sub	sp, #8
1a000cbc:	af00      	add	r7, sp, #0
1a000cbe:	6078      	str	r0, [r7, #4]
1a000cc0:	f000 fcc2 	bl	1a001648 <StopWatch_Start>
1a000cc4:	4602      	mov	r2, r0
1a000cc6:	687b      	ldr	r3, [r7, #4]
1a000cc8:	1ad3      	subs	r3, r2, r3
1a000cca:	4618      	mov	r0, r3
1a000ccc:	3708      	adds	r7, #8
1a000cce:	46bd      	mov	sp, r7
1a000cd0:	bd80      	pop	{r7, pc}

1a000cd2 <StopWatch_DelayMs>:
1a000cd2:	b580      	push	{r7, lr}
1a000cd4:	b084      	sub	sp, #16
1a000cd6:	af00      	add	r7, sp, #0
1a000cd8:	6078      	str	r0, [r7, #4]
1a000cda:	6878      	ldr	r0, [r7, #4]
1a000cdc:	f000 fcbe 	bl	1a00165c <StopWatch_MsToTicks>
1a000ce0:	60f8      	str	r0, [r7, #12]
1a000ce2:	f000 fcb1 	bl	1a001648 <StopWatch_Start>
1a000ce6:	60b8      	str	r0, [r7, #8]
1a000ce8:	bf00      	nop
1a000cea:	68b8      	ldr	r0, [r7, #8]
1a000cec:	f7ff ffe4 	bl	1a000cb8 <StopWatch_Elapsed>
1a000cf0:	4602      	mov	r2, r0
1a000cf2:	68fb      	ldr	r3, [r7, #12]
1a000cf4:	4293      	cmp	r3, r2
1a000cf6:	d8f8      	bhi.n	1a000cea <StopWatch_DelayMs+0x18>
1a000cf8:	bf00      	nop
1a000cfa:	3710      	adds	r7, #16
1a000cfc:	46bd      	mov	sp, r7
1a000cfe:	bd80      	pop	{r7, pc}

1a000d00 <GPIO1_IRQHandler>:
1a000d00:	b580      	push	{r7, lr}
1a000d02:	af00      	add	r7, sp, #0
1a000d04:	2102      	movs	r1, #2
1a000d06:	4809      	ldr	r0, [pc, #36]	; (1a000d2c <GPIO1_IRQHandler+0x2c>)
1a000d08:	f7ff ffc8 	bl	1a000c9c <Chip_PININT_ClearIntStatus>
1a000d0c:	f44f 7016 	mov.w	r0, #600	; 0x258
1a000d10:	f7ff ffdf 	bl	1a000cd2 <StopWatch_DelayMs>
1a000d14:	4b06      	ldr	r3, [pc, #24]	; (1a000d30 <GPIO1_IRQHandler+0x30>)
1a000d16:	781b      	ldrb	r3, [r3, #0]
1a000d18:	3301      	adds	r3, #1
1a000d1a:	b2da      	uxtb	r2, r3
1a000d1c:	4b04      	ldr	r3, [pc, #16]	; (1a000d30 <GPIO1_IRQHandler+0x30>)
1a000d1e:	701a      	strb	r2, [r3, #0]
1a000d20:	4b04      	ldr	r3, [pc, #16]	; (1a000d34 <GPIO1_IRQHandler+0x34>)
1a000d22:	2201      	movs	r2, #1
1a000d24:	701a      	strb	r2, [r3, #0]
1a000d26:	bf00      	nop
1a000d28:	bd80      	pop	{r7, pc}
1a000d2a:	bf00      	nop
1a000d2c:	40087000 	.word	0x40087000
1a000d30:	10000428 	.word	0x10000428
1a000d34:	1000042a 	.word	0x1000042a

1a000d38 <GPIO2_IRQHandler>:
1a000d38:	b580      	push	{r7, lr}
1a000d3a:	af00      	add	r7, sp, #0
1a000d3c:	2104      	movs	r1, #4
1a000d3e:	4813      	ldr	r0, [pc, #76]	; (1a000d8c <GPIO2_IRQHandler+0x54>)
1a000d40:	f7ff ffac 	bl	1a000c9c <Chip_PININT_ClearIntStatus>
1a000d44:	f44f 7016 	mov.w	r0, #600	; 0x258
1a000d48:	f7ff ffc3 	bl	1a000cd2 <StopWatch_DelayMs>
1a000d4c:	4b10      	ldr	r3, [pc, #64]	; (1a000d90 <GPIO2_IRQHandler+0x58>)
1a000d4e:	781b      	ldrb	r3, [r3, #0]
1a000d50:	2b00      	cmp	r3, #0
1a000d52:	d003      	beq.n	1a000d5c <GPIO2_IRQHandler+0x24>
1a000d54:	2021      	movs	r0, #33	; 0x21
1a000d56:	f7ff ff6d 	bl	1a000c34 <NVIC_DisableIRQ>
1a000d5a:	e009      	b.n	1a000d70 <GPIO2_IRQHandler+0x38>
1a000d5c:	2102      	movs	r1, #2
1a000d5e:	480b      	ldr	r0, [pc, #44]	; (1a000d8c <GPIO2_IRQHandler+0x54>)
1a000d60:	f7ff ff9c 	bl	1a000c9c <Chip_PININT_ClearIntStatus>
1a000d64:	2021      	movs	r0, #33	; 0x21
1a000d66:	f7ff ff7f 	bl	1a000c68 <NVIC_ClearPendingIRQ>
1a000d6a:	2021      	movs	r0, #33	; 0x21
1a000d6c:	f7ff ff48 	bl	1a000c00 <NVIC_EnableIRQ>
1a000d70:	4b07      	ldr	r3, [pc, #28]	; (1a000d90 <GPIO2_IRQHandler+0x58>)
1a000d72:	781b      	ldrb	r3, [r3, #0]
1a000d74:	3301      	adds	r3, #1
1a000d76:	2b00      	cmp	r3, #0
1a000d78:	f003 0301 	and.w	r3, r3, #1
1a000d7c:	bfb8      	it	lt
1a000d7e:	425b      	neglt	r3, r3
1a000d80:	b2da      	uxtb	r2, r3
1a000d82:	4b03      	ldr	r3, [pc, #12]	; (1a000d90 <GPIO2_IRQHandler+0x58>)
1a000d84:	701a      	strb	r2, [r3, #0]
1a000d86:	bf00      	nop
1a000d88:	bd80      	pop	{r7, pc}
1a000d8a:	bf00      	nop
1a000d8c:	40087000 	.word	0x40087000
1a000d90:	10000429 	.word	0x10000429

1a000d94 <GPIO4_IRQHandler>:
1a000d94:	b580      	push	{r7, lr}
1a000d96:	af00      	add	r7, sp, #0
1a000d98:	2110      	movs	r1, #16
1a000d9a:	4807      	ldr	r0, [pc, #28]	; (1a000db8 <GPIO4_IRQHandler+0x24>)
1a000d9c:	f7ff ff7e 	bl	1a000c9c <Chip_PININT_ClearIntStatus>
1a000da0:	f44f 7016 	mov.w	r0, #600	; 0x258
1a000da4:	f7ff ff95 	bl	1a000cd2 <StopWatch_DelayMs>
1a000da8:	4b04      	ldr	r3, [pc, #16]	; (1a000dbc <GPIO4_IRQHandler+0x28>)
1a000daa:	2200      	movs	r2, #0
1a000dac:	701a      	strb	r2, [r3, #0]
1a000dae:	4b04      	ldr	r3, [pc, #16]	; (1a000dc0 <GPIO4_IRQHandler+0x2c>)
1a000db0:	2201      	movs	r2, #1
1a000db2:	701a      	strb	r2, [r3, #0]
1a000db4:	bf00      	nop
1a000db6:	bd80      	pop	{r7, pc}
1a000db8:	40087000 	.word	0x40087000
1a000dbc:	10000428 	.word	0x10000428
1a000dc0:	1000042a 	.word	0x1000042a

1a000dc4 <SysTick_Handler>:
1a000dc4:	b580      	push	{r7, lr}
1a000dc6:	b082      	sub	sp, #8
1a000dc8:	af00      	add	r7, sp, #0
1a000dca:	4b17      	ldr	r3, [pc, #92]	; (1a000e28 <SysTick_Handler+0x64>)
1a000dcc:	781b      	ldrb	r3, [r3, #0]
1a000dce:	009b      	lsls	r3, r3, #2
1a000dd0:	b2db      	uxtb	r3, r3
1a000dd2:	f003 033c 	and.w	r3, r3, #60	; 0x3c
1a000dd6:	71fb      	strb	r3, [r7, #7]
1a000dd8:	4b14      	ldr	r3, [pc, #80]	; (1a000e2c <SysTick_Handler+0x68>)
1a000dda:	781b      	ldrb	r3, [r3, #0]
1a000ddc:	2b00      	cmp	r3, #0
1a000dde:	d01f      	beq.n	1a000e20 <SysTick_Handler+0x5c>
1a000de0:	4b11      	ldr	r3, [pc, #68]	; (1a000e28 <SysTick_Handler+0x64>)
1a000de2:	781b      	ldrb	r3, [r3, #0]
1a000de4:	220a      	movs	r2, #10
1a000de6:	4912      	ldr	r1, [pc, #72]	; (1a000e30 <SysTick_Handler+0x6c>)
1a000de8:	4618      	mov	r0, r3
1a000dea:	f001 fa49 	bl	1a002280 <itoa>
1a000dee:	4810      	ldr	r0, [pc, #64]	; (1a000e30 <SysTick_Handler+0x6c>)
1a000df0:	f001 fae6 	bl	1a0023c0 <strlen>
1a000df4:	4603      	mov	r3, r0
1a000df6:	461a      	mov	r2, r3
1a000df8:	4b0d      	ldr	r3, [pc, #52]	; (1a000e30 <SysTick_Handler+0x6c>)
1a000dfa:	4413      	add	r3, r2
1a000dfc:	4a0d      	ldr	r2, [pc, #52]	; (1a000e34 <SysTick_Handler+0x70>)
1a000dfe:	8811      	ldrh	r1, [r2, #0]
1a000e00:	7892      	ldrb	r2, [r2, #2]
1a000e02:	8019      	strh	r1, [r3, #0]
1a000e04:	709a      	strb	r2, [r3, #2]
1a000e06:	4b0a      	ldr	r3, [pc, #40]	; (1a000e30 <SysTick_Handler+0x6c>)
1a000e08:	2264      	movs	r2, #100	; 0x64
1a000e0a:	4619      	mov	r1, r3
1a000e0c:	480a      	ldr	r0, [pc, #40]	; (1a000e38 <SysTick_Handler+0x74>)
1a000e0e:	f000 faed 	bl	1a0013ec <Chip_UART_SendBlocking>
1a000e12:	79fb      	ldrb	r3, [r7, #7]
1a000e14:	4618      	mov	r0, r3
1a000e16:	f7ff fc99 	bl	1a00074c <setLedFromMsk>
1a000e1a:	4b04      	ldr	r3, [pc, #16]	; (1a000e2c <SysTick_Handler+0x68>)
1a000e1c:	2200      	movs	r2, #0
1a000e1e:	701a      	strb	r2, [r3, #0]
1a000e20:	bf00      	nop
1a000e22:	3708      	adds	r7, #8
1a000e24:	46bd      	mov	sp, r7
1a000e26:	bd80      	pop	{r7, pc}
1a000e28:	10000428 	.word	0x10000428
1a000e2c:	1000042a 	.word	0x1000042a
1a000e30:	10000440 	.word	0x10000440
1a000e34:	1a002524 	.word	0x1a002524
1a000e38:	400c1000 	.word	0x400c1000

1a000e3c <main>:
1a000e3c:	b580      	push	{r7, lr}
1a000e3e:	af00      	add	r7, sp, #0
1a000e40:	f7ff fb8e 	bl	1a000560 <systemInit>
1a000e44:	f7ff fe68 	bl	1a000b18 <init_interrupciones>
1a000e48:	f7ff feb2 	bl	1a000bb0 <configurar_USART2>
1a000e4c:	f7ff fec6 	bl	1a000bdc <configurar_SysTick>
1a000e50:	bf30      	wfi
1a000e52:	e7fd      	b.n	1a000e50 <main+0x14>

1a000e54 <fpuInit>:
1a000e54:	b480      	push	{r7}
1a000e56:	b089      	sub	sp, #36	; 0x24
1a000e58:	af00      	add	r7, sp, #0
1a000e5a:	4b16      	ldr	r3, [pc, #88]	; (1a000eb4 <fpuInit+0x60>)
1a000e5c:	61fb      	str	r3, [r7, #28]
1a000e5e:	4b16      	ldr	r3, [pc, #88]	; (1a000eb8 <fpuInit+0x64>)
1a000e60:	61bb      	str	r3, [r7, #24]
1a000e62:	4b16      	ldr	r3, [pc, #88]	; (1a000ebc <fpuInit+0x68>)
1a000e64:	617b      	str	r3, [r7, #20]
1a000e66:	2300      	movs	r3, #0
1a000e68:	74fb      	strb	r3, [r7, #19]
1a000e6a:	69bb      	ldr	r3, [r7, #24]
1a000e6c:	681b      	ldr	r3, [r3, #0]
1a000e6e:	60bb      	str	r3, [r7, #8]
1a000e70:	697b      	ldr	r3, [r7, #20]
1a000e72:	681b      	ldr	r3, [r3, #0]
1a000e74:	607b      	str	r3, [r7, #4]
1a000e76:	68bb      	ldr	r3, [r7, #8]
1a000e78:	4a11      	ldr	r2, [pc, #68]	; (1a000ec0 <fpuInit+0x6c>)
1a000e7a:	4293      	cmp	r3, r2
1a000e7c:	d105      	bne.n	1a000e8a <fpuInit+0x36>
1a000e7e:	687b      	ldr	r3, [r7, #4]
1a000e80:	4a10      	ldr	r2, [pc, #64]	; (1a000ec4 <fpuInit+0x70>)
1a000e82:	4293      	cmp	r3, r2
1a000e84:	d101      	bne.n	1a000e8a <fpuInit+0x36>
1a000e86:	2301      	movs	r3, #1
1a000e88:	e000      	b.n	1a000e8c <fpuInit+0x38>
1a000e8a:	2300      	movs	r3, #0
1a000e8c:	74fb      	strb	r3, [r7, #19]
1a000e8e:	7cfb      	ldrb	r3, [r7, #19]
1a000e90:	2b00      	cmp	r3, #0
1a000e92:	d009      	beq.n	1a000ea8 <fpuInit+0x54>
1a000e94:	69fb      	ldr	r3, [r7, #28]
1a000e96:	681b      	ldr	r3, [r3, #0]
1a000e98:	60fb      	str	r3, [r7, #12]
1a000e9a:	68fb      	ldr	r3, [r7, #12]
1a000e9c:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a000ea0:	60fb      	str	r3, [r7, #12]
1a000ea2:	68fa      	ldr	r2, [r7, #12]
1a000ea4:	69fb      	ldr	r3, [r7, #28]
1a000ea6:	601a      	str	r2, [r3, #0]
1a000ea8:	bf00      	nop
1a000eaa:	3724      	adds	r7, #36	; 0x24
1a000eac:	46bd      	mov	sp, r7
1a000eae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000eb2:	4770      	bx	lr
1a000eb4:	e000ed88 	.word	0xe000ed88
1a000eb8:	e000ef40 	.word	0xe000ef40
1a000ebc:	e000ef44 	.word	0xe000ef44
1a000ec0:	10110021 	.word	0x10110021
1a000ec4:	11000011 	.word	0x11000011

1a000ec8 <Chip_Clock_DisableMainPLL>:
1a000ec8:	b480      	push	{r7}
1a000eca:	af00      	add	r7, sp, #0
1a000ecc:	4b05      	ldr	r3, [pc, #20]	; (1a000ee4 <Chip_Clock_DisableMainPLL+0x1c>)
1a000ece:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000ed0:	4a04      	ldr	r2, [pc, #16]	; (1a000ee4 <Chip_Clock_DisableMainPLL+0x1c>)
1a000ed2:	f043 0301 	orr.w	r3, r3, #1
1a000ed6:	6453      	str	r3, [r2, #68]	; 0x44
1a000ed8:	bf00      	nop
1a000eda:	46bd      	mov	sp, r7
1a000edc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ee0:	4770      	bx	lr
1a000ee2:	bf00      	nop
1a000ee4:	40050000 	.word	0x40050000

1a000ee8 <Chip_Clock_SetupMainPLL>:
1a000ee8:	b480      	push	{r7}
1a000eea:	b083      	sub	sp, #12
1a000eec:	af00      	add	r7, sp, #0
1a000eee:	6078      	str	r0, [r7, #4]
1a000ef0:	687b      	ldr	r3, [r7, #4]
1a000ef2:	681b      	ldr	r3, [r3, #0]
1a000ef4:	461a      	mov	r2, r3
1a000ef6:	687b      	ldr	r3, [r7, #4]
1a000ef8:	791b      	ldrb	r3, [r3, #4]
1a000efa:	061b      	lsls	r3, r3, #24
1a000efc:	4313      	orrs	r3, r2
1a000efe:	687a      	ldr	r2, [r7, #4]
1a000f00:	6912      	ldr	r2, [r2, #16]
1a000f02:	0412      	lsls	r2, r2, #16
1a000f04:	4313      	orrs	r3, r2
1a000f06:	687a      	ldr	r2, [r7, #4]
1a000f08:	6892      	ldr	r2, [r2, #8]
1a000f0a:	0312      	lsls	r2, r2, #12
1a000f0c:	4313      	orrs	r3, r2
1a000f0e:	687a      	ldr	r2, [r7, #4]
1a000f10:	68d2      	ldr	r2, [r2, #12]
1a000f12:	0212      	lsls	r2, r2, #8
1a000f14:	4313      	orrs	r3, r2
1a000f16:	4a05      	ldr	r2, [pc, #20]	; (1a000f2c <Chip_Clock_SetupMainPLL+0x44>)
1a000f18:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a000f1c:	6453      	str	r3, [r2, #68]	; 0x44
1a000f1e:	bf00      	nop
1a000f20:	370c      	adds	r7, #12
1a000f22:	46bd      	mov	sp, r7
1a000f24:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f28:	4770      	bx	lr
1a000f2a:	bf00      	nop
1a000f2c:	40050000 	.word	0x40050000

1a000f30 <Chip_Clock_MainPLLLocked>:
1a000f30:	b480      	push	{r7}
1a000f32:	af00      	add	r7, sp, #0
1a000f34:	4b06      	ldr	r3, [pc, #24]	; (1a000f50 <Chip_Clock_MainPLLLocked+0x20>)
1a000f36:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a000f38:	f003 0301 	and.w	r3, r3, #1
1a000f3c:	2b00      	cmp	r3, #0
1a000f3e:	bf14      	ite	ne
1a000f40:	2301      	movne	r3, #1
1a000f42:	2300      	moveq	r3, #0
1a000f44:	b2db      	uxtb	r3, r3
1a000f46:	4618      	mov	r0, r3
1a000f48:	46bd      	mov	sp, r7
1a000f4a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f4e:	4770      	bx	lr
1a000f50:	40050000 	.word	0x40050000

1a000f54 <Chip_SetupCoreClock>:
1a000f54:	b590      	push	{r4, r7, lr}
1a000f56:	b08f      	sub	sp, #60	; 0x3c
1a000f58:	af00      	add	r7, sp, #0
1a000f5a:	4603      	mov	r3, r0
1a000f5c:	6039      	str	r1, [r7, #0]
1a000f5e:	71fb      	strb	r3, [r7, #7]
1a000f60:	4613      	mov	r3, r2
1a000f62:	71bb      	strb	r3, [r7, #6]
1a000f64:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a000f68:	62bb      	str	r3, [r7, #40]	; 0x28
1a000f6a:	2300      	movs	r3, #0
1a000f6c:	633b      	str	r3, [r7, #48]	; 0x30
1a000f6e:	2300      	movs	r3, #0
1a000f70:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000f72:	79fb      	ldrb	r3, [r7, #7]
1a000f74:	2b06      	cmp	r3, #6
1a000f76:	d101      	bne.n	1a000f7c <Chip_SetupCoreClock+0x28>
1a000f78:	f000 fe00 	bl	1a001b7c <Chip_Clock_EnableCrystal>
1a000f7c:	79f9      	ldrb	r1, [r7, #7]
1a000f7e:	2300      	movs	r3, #0
1a000f80:	2201      	movs	r2, #1
1a000f82:	2004      	movs	r0, #4
1a000f84:	f000 ffec 	bl	1a001f60 <Chip_Clock_SetBaseClock>
1a000f88:	f7ff ff9e 	bl	1a000ec8 <Chip_Clock_DisableMainPLL>
1a000f8c:	79fb      	ldrb	r3, [r7, #7]
1a000f8e:	733b      	strb	r3, [r7, #12]
1a000f90:	f107 0308 	add.w	r3, r7, #8
1a000f94:	4619      	mov	r1, r3
1a000f96:	6838      	ldr	r0, [r7, #0]
1a000f98:	f000 fe28 	bl	1a001bec <Chip_Clock_CalcMainPLLValue>
1a000f9c:	683b      	ldr	r3, [r7, #0]
1a000f9e:	4a3d      	ldr	r2, [pc, #244]	; (1a001094 <Chip_SetupCoreClock+0x140>)
1a000fa0:	4293      	cmp	r3, r2
1a000fa2:	d916      	bls.n	1a000fd2 <Chip_SetupCoreClock+0x7e>
1a000fa4:	68bb      	ldr	r3, [r7, #8]
1a000fa6:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a000faa:	2b00      	cmp	r3, #0
1a000fac:	d000      	beq.n	1a000fb0 <Chip_SetupCoreClock+0x5c>
1a000fae:	e7fe      	b.n	1a000fae <Chip_SetupCoreClock+0x5a>
1a000fb0:	68bb      	ldr	r3, [r7, #8]
1a000fb2:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a000fb6:	2b00      	cmp	r3, #0
1a000fb8:	d006      	beq.n	1a000fc8 <Chip_SetupCoreClock+0x74>
1a000fba:	2301      	movs	r3, #1
1a000fbc:	633b      	str	r3, [r7, #48]	; 0x30
1a000fbe:	68bb      	ldr	r3, [r7, #8]
1a000fc0:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a000fc4:	60bb      	str	r3, [r7, #8]
1a000fc6:	e004      	b.n	1a000fd2 <Chip_SetupCoreClock+0x7e>
1a000fc8:	2301      	movs	r3, #1
1a000fca:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000fcc:	697b      	ldr	r3, [r7, #20]
1a000fce:	3301      	adds	r3, #1
1a000fd0:	617b      	str	r3, [r7, #20]
1a000fd2:	f107 0308 	add.w	r3, r7, #8
1a000fd6:	4618      	mov	r0, r3
1a000fd8:	f7ff ff86 	bl	1a000ee8 <Chip_Clock_SetupMainPLL>
1a000fdc:	bf00      	nop
1a000fde:	f7ff ffa7 	bl	1a000f30 <Chip_Clock_MainPLLLocked>
1a000fe2:	4603      	mov	r3, r0
1a000fe4:	2b00      	cmp	r3, #0
1a000fe6:	d0fa      	beq.n	1a000fde <Chip_SetupCoreClock+0x8a>
1a000fe8:	2300      	movs	r3, #0
1a000fea:	2201      	movs	r2, #1
1a000fec:	2109      	movs	r1, #9
1a000fee:	2004      	movs	r0, #4
1a000ff0:	f000 ffb6 	bl	1a001f60 <Chip_Clock_SetBaseClock>
1a000ff4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a000ff6:	2b00      	cmp	r3, #0
1a000ff8:	d012      	beq.n	1a001020 <Chip_SetupCoreClock+0xcc>
1a000ffa:	f641 3358 	movw	r3, #7000	; 0x1b58
1a000ffe:	62bb      	str	r3, [r7, #40]	; 0x28
1a001000:	bf00      	nop
1a001002:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001004:	1e5a      	subs	r2, r3, #1
1a001006:	62ba      	str	r2, [r7, #40]	; 0x28
1a001008:	2b00      	cmp	r3, #0
1a00100a:	d1fa      	bne.n	1a001002 <Chip_SetupCoreClock+0xae>
1a00100c:	68bb      	ldr	r3, [r7, #8]
1a00100e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a001012:	60bb      	str	r3, [r7, #8]
1a001014:	f107 0308 	add.w	r3, r7, #8
1a001018:	4618      	mov	r0, r3
1a00101a:	f7ff ff65 	bl	1a000ee8 <Chip_Clock_SetupMainPLL>
1a00101e:	e013      	b.n	1a001048 <Chip_SetupCoreClock+0xf4>
1a001020:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001022:	2b00      	cmp	r3, #0
1a001024:	d010      	beq.n	1a001048 <Chip_SetupCoreClock+0xf4>
1a001026:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a00102a:	62bb      	str	r3, [r7, #40]	; 0x28
1a00102c:	bf00      	nop
1a00102e:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001030:	1e5a      	subs	r2, r3, #1
1a001032:	62ba      	str	r2, [r7, #40]	; 0x28
1a001034:	2b00      	cmp	r3, #0
1a001036:	d1fa      	bne.n	1a00102e <Chip_SetupCoreClock+0xda>
1a001038:	697b      	ldr	r3, [r7, #20]
1a00103a:	3b01      	subs	r3, #1
1a00103c:	617b      	str	r3, [r7, #20]
1a00103e:	f107 0308 	add.w	r3, r7, #8
1a001042:	4618      	mov	r0, r3
1a001044:	f7ff ff50 	bl	1a000ee8 <Chip_Clock_SetupMainPLL>
1a001048:	79bb      	ldrb	r3, [r7, #6]
1a00104a:	2b00      	cmp	r3, #0
1a00104c:	d01e      	beq.n	1a00108c <Chip_SetupCoreClock+0x138>
1a00104e:	2300      	movs	r3, #0
1a001050:	637b      	str	r3, [r7, #52]	; 0x34
1a001052:	e018      	b.n	1a001086 <Chip_SetupCoreClock+0x132>
1a001054:	4a10      	ldr	r2, [pc, #64]	; (1a001098 <Chip_SetupCoreClock+0x144>)
1a001056:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001058:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a00105c:	4a0e      	ldr	r2, [pc, #56]	; (1a001098 <Chip_SetupCoreClock+0x144>)
1a00105e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001060:	009b      	lsls	r3, r3, #2
1a001062:	4413      	add	r3, r2
1a001064:	7859      	ldrb	r1, [r3, #1]
1a001066:	4a0c      	ldr	r2, [pc, #48]	; (1a001098 <Chip_SetupCoreClock+0x144>)
1a001068:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00106a:	009b      	lsls	r3, r3, #2
1a00106c:	4413      	add	r3, r2
1a00106e:	789c      	ldrb	r4, [r3, #2]
1a001070:	4a09      	ldr	r2, [pc, #36]	; (1a001098 <Chip_SetupCoreClock+0x144>)
1a001072:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001074:	009b      	lsls	r3, r3, #2
1a001076:	4413      	add	r3, r2
1a001078:	78db      	ldrb	r3, [r3, #3]
1a00107a:	4622      	mov	r2, r4
1a00107c:	f000 ff70 	bl	1a001f60 <Chip_Clock_SetBaseClock>
1a001080:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001082:	3301      	adds	r3, #1
1a001084:	637b      	str	r3, [r7, #52]	; 0x34
1a001086:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001088:	2b11      	cmp	r3, #17
1a00108a:	d9e3      	bls.n	1a001054 <Chip_SetupCoreClock+0x100>
1a00108c:	bf00      	nop
1a00108e:	373c      	adds	r7, #60	; 0x3c
1a001090:	46bd      	mov	sp, r7
1a001092:	bd90      	pop	{r4, r7, pc}
1a001094:	068e7780 	.word	0x068e7780
1a001098:	1a002528 	.word	0x1a002528

1a00109c <Chip_SetupXtalClocking>:
1a00109c:	b580      	push	{r7, lr}
1a00109e:	af00      	add	r7, sp, #0
1a0010a0:	2201      	movs	r2, #1
1a0010a2:	4903      	ldr	r1, [pc, #12]	; (1a0010b0 <Chip_SetupXtalClocking+0x14>)
1a0010a4:	2006      	movs	r0, #6
1a0010a6:	f7ff ff55 	bl	1a000f54 <Chip_SetupCoreClock>
1a0010aa:	bf00      	nop
1a0010ac:	bd80      	pop	{r7, pc}
1a0010ae:	bf00      	nop
1a0010b0:	0c28cb00 	.word	0x0c28cb00

1a0010b4 <RingBuffer_IsEmpty>:
1a0010b4:	b480      	push	{r7}
1a0010b6:	b083      	sub	sp, #12
1a0010b8:	af00      	add	r7, sp, #0
1a0010ba:	6078      	str	r0, [r7, #4]
1a0010bc:	687b      	ldr	r3, [r7, #4]
1a0010be:	330c      	adds	r3, #12
1a0010c0:	681a      	ldr	r2, [r3, #0]
1a0010c2:	687b      	ldr	r3, [r7, #4]
1a0010c4:	3310      	adds	r3, #16
1a0010c6:	681b      	ldr	r3, [r3, #0]
1a0010c8:	429a      	cmp	r2, r3
1a0010ca:	bf0c      	ite	eq
1a0010cc:	2301      	moveq	r3, #1
1a0010ce:	2300      	movne	r3, #0
1a0010d0:	b2db      	uxtb	r3, r3
1a0010d2:	4618      	mov	r0, r3
1a0010d4:	370c      	adds	r7, #12
1a0010d6:	46bd      	mov	sp, r7
1a0010d8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010dc:	4770      	bx	lr

1a0010de <Chip_UART_TXDisable>:
1a0010de:	b480      	push	{r7}
1a0010e0:	b083      	sub	sp, #12
1a0010e2:	af00      	add	r7, sp, #0
1a0010e4:	6078      	str	r0, [r7, #4]
1a0010e6:	687b      	ldr	r3, [r7, #4]
1a0010e8:	2200      	movs	r2, #0
1a0010ea:	65da      	str	r2, [r3, #92]	; 0x5c
1a0010ec:	bf00      	nop
1a0010ee:	370c      	adds	r7, #12
1a0010f0:	46bd      	mov	sp, r7
1a0010f2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010f6:	4770      	bx	lr

1a0010f8 <Chip_UART_SendByte>:
1a0010f8:	b480      	push	{r7}
1a0010fa:	b083      	sub	sp, #12
1a0010fc:	af00      	add	r7, sp, #0
1a0010fe:	6078      	str	r0, [r7, #4]
1a001100:	460b      	mov	r3, r1
1a001102:	70fb      	strb	r3, [r7, #3]
1a001104:	78fa      	ldrb	r2, [r7, #3]
1a001106:	687b      	ldr	r3, [r7, #4]
1a001108:	601a      	str	r2, [r3, #0]
1a00110a:	bf00      	nop
1a00110c:	370c      	adds	r7, #12
1a00110e:	46bd      	mov	sp, r7
1a001110:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001114:	4770      	bx	lr

1a001116 <Chip_UART_ReadByte>:
1a001116:	b480      	push	{r7}
1a001118:	b083      	sub	sp, #12
1a00111a:	af00      	add	r7, sp, #0
1a00111c:	6078      	str	r0, [r7, #4]
1a00111e:	687b      	ldr	r3, [r7, #4]
1a001120:	681b      	ldr	r3, [r3, #0]
1a001122:	b2db      	uxtb	r3, r3
1a001124:	4618      	mov	r0, r3
1a001126:	370c      	adds	r7, #12
1a001128:	46bd      	mov	sp, r7
1a00112a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00112e:	4770      	bx	lr

1a001130 <Chip_UART_IntDisable>:
1a001130:	b480      	push	{r7}
1a001132:	b083      	sub	sp, #12
1a001134:	af00      	add	r7, sp, #0
1a001136:	6078      	str	r0, [r7, #4]
1a001138:	6039      	str	r1, [r7, #0]
1a00113a:	687b      	ldr	r3, [r7, #4]
1a00113c:	685a      	ldr	r2, [r3, #4]
1a00113e:	683b      	ldr	r3, [r7, #0]
1a001140:	43db      	mvns	r3, r3
1a001142:	401a      	ands	r2, r3
1a001144:	687b      	ldr	r3, [r7, #4]
1a001146:	605a      	str	r2, [r3, #4]
1a001148:	bf00      	nop
1a00114a:	370c      	adds	r7, #12
1a00114c:	46bd      	mov	sp, r7
1a00114e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001152:	4770      	bx	lr

1a001154 <Chip_UART_ReadIntIDReg>:
1a001154:	b480      	push	{r7}
1a001156:	b083      	sub	sp, #12
1a001158:	af00      	add	r7, sp, #0
1a00115a:	6078      	str	r0, [r7, #4]
1a00115c:	687b      	ldr	r3, [r7, #4]
1a00115e:	689b      	ldr	r3, [r3, #8]
1a001160:	4618      	mov	r0, r3
1a001162:	370c      	adds	r7, #12
1a001164:	46bd      	mov	sp, r7
1a001166:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00116a:	4770      	bx	lr

1a00116c <Chip_UART_SetupFIFOS>:
1a00116c:	b480      	push	{r7}
1a00116e:	b083      	sub	sp, #12
1a001170:	af00      	add	r7, sp, #0
1a001172:	6078      	str	r0, [r7, #4]
1a001174:	6039      	str	r1, [r7, #0]
1a001176:	687b      	ldr	r3, [r7, #4]
1a001178:	683a      	ldr	r2, [r7, #0]
1a00117a:	609a      	str	r2, [r3, #8]
1a00117c:	bf00      	nop
1a00117e:	370c      	adds	r7, #12
1a001180:	46bd      	mov	sp, r7
1a001182:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001186:	4770      	bx	lr

1a001188 <Chip_UART_ConfigData>:
1a001188:	b480      	push	{r7}
1a00118a:	b083      	sub	sp, #12
1a00118c:	af00      	add	r7, sp, #0
1a00118e:	6078      	str	r0, [r7, #4]
1a001190:	6039      	str	r1, [r7, #0]
1a001192:	687b      	ldr	r3, [r7, #4]
1a001194:	683a      	ldr	r2, [r7, #0]
1a001196:	60da      	str	r2, [r3, #12]
1a001198:	bf00      	nop
1a00119a:	370c      	adds	r7, #12
1a00119c:	46bd      	mov	sp, r7
1a00119e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011a2:	4770      	bx	lr

1a0011a4 <Chip_UART_EnableDivisorAccess>:
1a0011a4:	b480      	push	{r7}
1a0011a6:	b083      	sub	sp, #12
1a0011a8:	af00      	add	r7, sp, #0
1a0011aa:	6078      	str	r0, [r7, #4]
1a0011ac:	687b      	ldr	r3, [r7, #4]
1a0011ae:	68db      	ldr	r3, [r3, #12]
1a0011b0:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a0011b4:	687b      	ldr	r3, [r7, #4]
1a0011b6:	60da      	str	r2, [r3, #12]
1a0011b8:	bf00      	nop
1a0011ba:	370c      	adds	r7, #12
1a0011bc:	46bd      	mov	sp, r7
1a0011be:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011c2:	4770      	bx	lr

1a0011c4 <Chip_UART_DisableDivisorAccess>:
1a0011c4:	b480      	push	{r7}
1a0011c6:	b083      	sub	sp, #12
1a0011c8:	af00      	add	r7, sp, #0
1a0011ca:	6078      	str	r0, [r7, #4]
1a0011cc:	687b      	ldr	r3, [r7, #4]
1a0011ce:	68db      	ldr	r3, [r3, #12]
1a0011d0:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a0011d4:	687b      	ldr	r3, [r7, #4]
1a0011d6:	60da      	str	r2, [r3, #12]
1a0011d8:	bf00      	nop
1a0011da:	370c      	adds	r7, #12
1a0011dc:	46bd      	mov	sp, r7
1a0011de:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011e2:	4770      	bx	lr

1a0011e4 <Chip_UART_SetDivisorLatches>:
1a0011e4:	b480      	push	{r7}
1a0011e6:	b083      	sub	sp, #12
1a0011e8:	af00      	add	r7, sp, #0
1a0011ea:	6078      	str	r0, [r7, #4]
1a0011ec:	460b      	mov	r3, r1
1a0011ee:	70fb      	strb	r3, [r7, #3]
1a0011f0:	4613      	mov	r3, r2
1a0011f2:	70bb      	strb	r3, [r7, #2]
1a0011f4:	78fa      	ldrb	r2, [r7, #3]
1a0011f6:	687b      	ldr	r3, [r7, #4]
1a0011f8:	601a      	str	r2, [r3, #0]
1a0011fa:	78ba      	ldrb	r2, [r7, #2]
1a0011fc:	687b      	ldr	r3, [r7, #4]
1a0011fe:	605a      	str	r2, [r3, #4]
1a001200:	bf00      	nop
1a001202:	370c      	adds	r7, #12
1a001204:	46bd      	mov	sp, r7
1a001206:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00120a:	4770      	bx	lr

1a00120c <Chip_UART_ReadLineStatus>:
1a00120c:	b480      	push	{r7}
1a00120e:	b083      	sub	sp, #12
1a001210:	af00      	add	r7, sp, #0
1a001212:	6078      	str	r0, [r7, #4]
1a001214:	687b      	ldr	r3, [r7, #4]
1a001216:	695b      	ldr	r3, [r3, #20]
1a001218:	4618      	mov	r0, r3
1a00121a:	370c      	adds	r7, #12
1a00121c:	46bd      	mov	sp, r7
1a00121e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001222:	4770      	bx	lr

1a001224 <Chip_UART_SetAutoBaudReg>:
1a001224:	b480      	push	{r7}
1a001226:	b083      	sub	sp, #12
1a001228:	af00      	add	r7, sp, #0
1a00122a:	6078      	str	r0, [r7, #4]
1a00122c:	6039      	str	r1, [r7, #0]
1a00122e:	687b      	ldr	r3, [r7, #4]
1a001230:	6a1a      	ldr	r2, [r3, #32]
1a001232:	683b      	ldr	r3, [r7, #0]
1a001234:	431a      	orrs	r2, r3
1a001236:	687b      	ldr	r3, [r7, #4]
1a001238:	621a      	str	r2, [r3, #32]
1a00123a:	bf00      	nop
1a00123c:	370c      	adds	r7, #12
1a00123e:	46bd      	mov	sp, r7
1a001240:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001244:	4770      	bx	lr
1a001246:	Address 0x000000001a001246 is out of bounds.


1a001248 <Chip_UART_GetIndex>:
1a001248:	b480      	push	{r7}
1a00124a:	b085      	sub	sp, #20
1a00124c:	af00      	add	r7, sp, #0
1a00124e:	6078      	str	r0, [r7, #4]
1a001250:	687b      	ldr	r3, [r7, #4]
1a001252:	60fb      	str	r3, [r7, #12]
1a001254:	68fb      	ldr	r3, [r7, #12]
1a001256:	4a10      	ldr	r2, [pc, #64]	; (1a001298 <Chip_UART_GetIndex+0x50>)
1a001258:	4293      	cmp	r3, r2
1a00125a:	d00f      	beq.n	1a00127c <Chip_UART_GetIndex+0x34>
1a00125c:	4a0e      	ldr	r2, [pc, #56]	; (1a001298 <Chip_UART_GetIndex+0x50>)
1a00125e:	4293      	cmp	r3, r2
1a001260:	d803      	bhi.n	1a00126a <Chip_UART_GetIndex+0x22>
1a001262:	4a0e      	ldr	r2, [pc, #56]	; (1a00129c <Chip_UART_GetIndex+0x54>)
1a001264:	4293      	cmp	r3, r2
1a001266:	d007      	beq.n	1a001278 <Chip_UART_GetIndex+0x30>
1a001268:	e00e      	b.n	1a001288 <Chip_UART_GetIndex+0x40>
1a00126a:	4a0d      	ldr	r2, [pc, #52]	; (1a0012a0 <Chip_UART_GetIndex+0x58>)
1a00126c:	4293      	cmp	r3, r2
1a00126e:	d007      	beq.n	1a001280 <Chip_UART_GetIndex+0x38>
1a001270:	4a0c      	ldr	r2, [pc, #48]	; (1a0012a4 <Chip_UART_GetIndex+0x5c>)
1a001272:	4293      	cmp	r3, r2
1a001274:	d006      	beq.n	1a001284 <Chip_UART_GetIndex+0x3c>
1a001276:	e007      	b.n	1a001288 <Chip_UART_GetIndex+0x40>
1a001278:	2300      	movs	r3, #0
1a00127a:	e006      	b.n	1a00128a <Chip_UART_GetIndex+0x42>
1a00127c:	2301      	movs	r3, #1
1a00127e:	e004      	b.n	1a00128a <Chip_UART_GetIndex+0x42>
1a001280:	2302      	movs	r3, #2
1a001282:	e002      	b.n	1a00128a <Chip_UART_GetIndex+0x42>
1a001284:	2303      	movs	r3, #3
1a001286:	e000      	b.n	1a00128a <Chip_UART_GetIndex+0x42>
1a001288:	2300      	movs	r3, #0
1a00128a:	4618      	mov	r0, r3
1a00128c:	3714      	adds	r7, #20
1a00128e:	46bd      	mov	sp, r7
1a001290:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001294:	4770      	bx	lr
1a001296:	bf00      	nop
1a001298:	40082000 	.word	0x40082000
1a00129c:	40081000 	.word	0x40081000
1a0012a0:	400c1000 	.word	0x400c1000
1a0012a4:	400c2000 	.word	0x400c2000

1a0012a8 <Chip_UART_ABIntHandler>:
1a0012a8:	b580      	push	{r7, lr}
1a0012aa:	b082      	sub	sp, #8
1a0012ac:	af00      	add	r7, sp, #0
1a0012ae:	6078      	str	r0, [r7, #4]
1a0012b0:	6878      	ldr	r0, [r7, #4]
1a0012b2:	f7ff ff4f 	bl	1a001154 <Chip_UART_ReadIntIDReg>
1a0012b6:	4603      	mov	r3, r0
1a0012b8:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a0012bc:	2b00      	cmp	r3, #0
1a0012be:	d011      	beq.n	1a0012e4 <Chip_UART_ABIntHandler+0x3c>
1a0012c0:	f44f 7180 	mov.w	r1, #256	; 0x100
1a0012c4:	6878      	ldr	r0, [r7, #4]
1a0012c6:	f7ff ffad 	bl	1a001224 <Chip_UART_SetAutoBaudReg>
1a0012ca:	f44f 7180 	mov.w	r1, #256	; 0x100
1a0012ce:	6878      	ldr	r0, [r7, #4]
1a0012d0:	f7ff ff2e 	bl	1a001130 <Chip_UART_IntDisable>
1a0012d4:	4b0e      	ldr	r3, [pc, #56]	; (1a001310 <Chip_UART_ABIntHandler+0x68>)
1a0012d6:	781b      	ldrb	r3, [r3, #0]
1a0012d8:	b2db      	uxtb	r3, r3
1a0012da:	2b00      	cmp	r3, #0
1a0012dc:	d102      	bne.n	1a0012e4 <Chip_UART_ABIntHandler+0x3c>
1a0012de:	4b0c      	ldr	r3, [pc, #48]	; (1a001310 <Chip_UART_ABIntHandler+0x68>)
1a0012e0:	2201      	movs	r2, #1
1a0012e2:	701a      	strb	r2, [r3, #0]
1a0012e4:	6878      	ldr	r0, [r7, #4]
1a0012e6:	f7ff ff35 	bl	1a001154 <Chip_UART_ReadIntIDReg>
1a0012ea:	4603      	mov	r3, r0
1a0012ec:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a0012f0:	2b00      	cmp	r3, #0
1a0012f2:	d009      	beq.n	1a001308 <Chip_UART_ABIntHandler+0x60>
1a0012f4:	f44f 7100 	mov.w	r1, #512	; 0x200
1a0012f8:	6878      	ldr	r0, [r7, #4]
1a0012fa:	f7ff ff93 	bl	1a001224 <Chip_UART_SetAutoBaudReg>
1a0012fe:	f44f 7100 	mov.w	r1, #512	; 0x200
1a001302:	6878      	ldr	r0, [r7, #4]
1a001304:	f7ff ff14 	bl	1a001130 <Chip_UART_IntDisable>
1a001308:	bf00      	nop
1a00130a:	3708      	adds	r7, #8
1a00130c:	46bd      	mov	sp, r7
1a00130e:	bd80      	pop	{r7, pc}
1a001310:	1000042b 	.word	0x1000042b

1a001314 <Chip_UART_Init>:
1a001314:	b580      	push	{r7, lr}
1a001316:	b084      	sub	sp, #16
1a001318:	af00      	add	r7, sp, #0
1a00131a:	6078      	str	r0, [r7, #4]
1a00131c:	68fb      	ldr	r3, [r7, #12]
1a00131e:	6878      	ldr	r0, [r7, #4]
1a001320:	f7ff ff92 	bl	1a001248 <Chip_UART_GetIndex>
1a001324:	4602      	mov	r2, r0
1a001326:	4b1b      	ldr	r3, [pc, #108]	; (1a001394 <Chip_UART_Init+0x80>)
1a001328:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a00132c:	2301      	movs	r3, #1
1a00132e:	2201      	movs	r2, #1
1a001330:	2101      	movs	r1, #1
1a001332:	f000 fe89 	bl	1a002048 <Chip_Clock_EnableOpts>
1a001336:	2107      	movs	r1, #7
1a001338:	6878      	ldr	r0, [r7, #4]
1a00133a:	f7ff ff17 	bl	1a00116c <Chip_UART_SetupFIFOS>
1a00133e:	6878      	ldr	r0, [r7, #4]
1a001340:	f7ff fecd 	bl	1a0010de <Chip_UART_TXDisable>
1a001344:	687b      	ldr	r3, [r7, #4]
1a001346:	2200      	movs	r2, #0
1a001348:	605a      	str	r2, [r3, #4]
1a00134a:	687b      	ldr	r3, [r7, #4]
1a00134c:	2200      	movs	r2, #0
1a00134e:	60da      	str	r2, [r3, #12]
1a001350:	687b      	ldr	r3, [r7, #4]
1a001352:	2200      	movs	r2, #0
1a001354:	621a      	str	r2, [r3, #32]
1a001356:	687b      	ldr	r3, [r7, #4]
1a001358:	2200      	movs	r2, #0
1a00135a:	64da      	str	r2, [r3, #76]	; 0x4c
1a00135c:	687b      	ldr	r3, [r7, #4]
1a00135e:	2200      	movs	r2, #0
1a001360:	655a      	str	r2, [r3, #84]	; 0x54
1a001362:	687b      	ldr	r3, [r7, #4]
1a001364:	2200      	movs	r2, #0
1a001366:	651a      	str	r2, [r3, #80]	; 0x50
1a001368:	687b      	ldr	r3, [r7, #4]
1a00136a:	4a0b      	ldr	r2, [pc, #44]	; (1a001398 <Chip_UART_Init+0x84>)
1a00136c:	4293      	cmp	r3, r2
1a00136e:	d105      	bne.n	1a00137c <Chip_UART_Init+0x68>
1a001370:	687b      	ldr	r3, [r7, #4]
1a001372:	2200      	movs	r2, #0
1a001374:	611a      	str	r2, [r3, #16]
1a001376:	687b      	ldr	r3, [r7, #4]
1a001378:	699b      	ldr	r3, [r3, #24]
1a00137a:	60fb      	str	r3, [r7, #12]
1a00137c:	2103      	movs	r1, #3
1a00137e:	6878      	ldr	r0, [r7, #4]
1a001380:	f7ff ff02 	bl	1a001188 <Chip_UART_ConfigData>
1a001384:	687b      	ldr	r3, [r7, #4]
1a001386:	2210      	movs	r2, #16
1a001388:	629a      	str	r2, [r3, #40]	; 0x28
1a00138a:	bf00      	nop
1a00138c:	3710      	adds	r7, #16
1a00138e:	46bd      	mov	sp, r7
1a001390:	bd80      	pop	{r7, pc}
1a001392:	bf00      	nop
1a001394:	1a002570 	.word	0x1a002570
1a001398:	40082000 	.word	0x40082000

1a00139c <Chip_UART_Send>:
1a00139c:	b580      	push	{r7, lr}
1a00139e:	b086      	sub	sp, #24
1a0013a0:	af00      	add	r7, sp, #0
1a0013a2:	60f8      	str	r0, [r7, #12]
1a0013a4:	60b9      	str	r1, [r7, #8]
1a0013a6:	607a      	str	r2, [r7, #4]
1a0013a8:	2300      	movs	r3, #0
1a0013aa:	617b      	str	r3, [r7, #20]
1a0013ac:	68bb      	ldr	r3, [r7, #8]
1a0013ae:	613b      	str	r3, [r7, #16]
1a0013b0:	e00b      	b.n	1a0013ca <Chip_UART_Send+0x2e>
1a0013b2:	693b      	ldr	r3, [r7, #16]
1a0013b4:	781b      	ldrb	r3, [r3, #0]
1a0013b6:	4619      	mov	r1, r3
1a0013b8:	68f8      	ldr	r0, [r7, #12]
1a0013ba:	f7ff fe9d 	bl	1a0010f8 <Chip_UART_SendByte>
1a0013be:	693b      	ldr	r3, [r7, #16]
1a0013c0:	3301      	adds	r3, #1
1a0013c2:	613b      	str	r3, [r7, #16]
1a0013c4:	697b      	ldr	r3, [r7, #20]
1a0013c6:	3301      	adds	r3, #1
1a0013c8:	617b      	str	r3, [r7, #20]
1a0013ca:	697a      	ldr	r2, [r7, #20]
1a0013cc:	687b      	ldr	r3, [r7, #4]
1a0013ce:	429a      	cmp	r2, r3
1a0013d0:	da07      	bge.n	1a0013e2 <Chip_UART_Send+0x46>
1a0013d2:	68f8      	ldr	r0, [r7, #12]
1a0013d4:	f7ff ff1a 	bl	1a00120c <Chip_UART_ReadLineStatus>
1a0013d8:	4603      	mov	r3, r0
1a0013da:	f003 0320 	and.w	r3, r3, #32
1a0013de:	2b00      	cmp	r3, #0
1a0013e0:	d1e7      	bne.n	1a0013b2 <Chip_UART_Send+0x16>
1a0013e2:	697b      	ldr	r3, [r7, #20]
1a0013e4:	4618      	mov	r0, r3
1a0013e6:	3718      	adds	r7, #24
1a0013e8:	46bd      	mov	sp, r7
1a0013ea:	bd80      	pop	{r7, pc}

1a0013ec <Chip_UART_SendBlocking>:
1a0013ec:	b580      	push	{r7, lr}
1a0013ee:	b088      	sub	sp, #32
1a0013f0:	af00      	add	r7, sp, #0
1a0013f2:	60f8      	str	r0, [r7, #12]
1a0013f4:	60b9      	str	r1, [r7, #8]
1a0013f6:	607a      	str	r2, [r7, #4]
1a0013f8:	2300      	movs	r3, #0
1a0013fa:	61fb      	str	r3, [r7, #28]
1a0013fc:	68bb      	ldr	r3, [r7, #8]
1a0013fe:	61bb      	str	r3, [r7, #24]
1a001400:	e011      	b.n	1a001426 <Chip_UART_SendBlocking+0x3a>
1a001402:	687a      	ldr	r2, [r7, #4]
1a001404:	69b9      	ldr	r1, [r7, #24]
1a001406:	68f8      	ldr	r0, [r7, #12]
1a001408:	f7ff ffc8 	bl	1a00139c <Chip_UART_Send>
1a00140c:	6178      	str	r0, [r7, #20]
1a00140e:	687a      	ldr	r2, [r7, #4]
1a001410:	697b      	ldr	r3, [r7, #20]
1a001412:	1ad3      	subs	r3, r2, r3
1a001414:	607b      	str	r3, [r7, #4]
1a001416:	69fa      	ldr	r2, [r7, #28]
1a001418:	697b      	ldr	r3, [r7, #20]
1a00141a:	4413      	add	r3, r2
1a00141c:	61fb      	str	r3, [r7, #28]
1a00141e:	697b      	ldr	r3, [r7, #20]
1a001420:	69ba      	ldr	r2, [r7, #24]
1a001422:	4413      	add	r3, r2
1a001424:	61bb      	str	r3, [r7, #24]
1a001426:	687b      	ldr	r3, [r7, #4]
1a001428:	2b00      	cmp	r3, #0
1a00142a:	dcea      	bgt.n	1a001402 <Chip_UART_SendBlocking+0x16>
1a00142c:	69fb      	ldr	r3, [r7, #28]
1a00142e:	4618      	mov	r0, r3
1a001430:	3720      	adds	r7, #32
1a001432:	46bd      	mov	sp, r7
1a001434:	bd80      	pop	{r7, pc}
1a001436:	Address 0x000000001a001436 is out of bounds.


1a001438 <Chip_UART_SetBaud>:
1a001438:	b580      	push	{r7, lr}
1a00143a:	b086      	sub	sp, #24
1a00143c:	af00      	add	r7, sp, #0
1a00143e:	6078      	str	r0, [r7, #4]
1a001440:	6039      	str	r1, [r7, #0]
1a001442:	6878      	ldr	r0, [r7, #4]
1a001444:	f7ff ff00 	bl	1a001248 <Chip_UART_GetIndex>
1a001448:	4602      	mov	r2, r0
1a00144a:	4b16      	ldr	r3, [pc, #88]	; (1a0014a4 <Chip_UART_SetBaud+0x6c>)
1a00144c:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a001450:	4618      	mov	r0, r3
1a001452:	f000 fe67 	bl	1a002124 <Chip_Clock_GetRate>
1a001456:	6178      	str	r0, [r7, #20]
1a001458:	683b      	ldr	r3, [r7, #0]
1a00145a:	011b      	lsls	r3, r3, #4
1a00145c:	697a      	ldr	r2, [r7, #20]
1a00145e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001462:	613b      	str	r3, [r7, #16]
1a001464:	693b      	ldr	r3, [r7, #16]
1a001466:	0a1b      	lsrs	r3, r3, #8
1a001468:	60fb      	str	r3, [r7, #12]
1a00146a:	68fb      	ldr	r3, [r7, #12]
1a00146c:	021b      	lsls	r3, r3, #8
1a00146e:	693a      	ldr	r2, [r7, #16]
1a001470:	1ad3      	subs	r3, r2, r3
1a001472:	60bb      	str	r3, [r7, #8]
1a001474:	6878      	ldr	r0, [r7, #4]
1a001476:	f7ff fe95 	bl	1a0011a4 <Chip_UART_EnableDivisorAccess>
1a00147a:	68bb      	ldr	r3, [r7, #8]
1a00147c:	b2db      	uxtb	r3, r3
1a00147e:	68fa      	ldr	r2, [r7, #12]
1a001480:	b2d2      	uxtb	r2, r2
1a001482:	4619      	mov	r1, r3
1a001484:	6878      	ldr	r0, [r7, #4]
1a001486:	f7ff fead 	bl	1a0011e4 <Chip_UART_SetDivisorLatches>
1a00148a:	6878      	ldr	r0, [r7, #4]
1a00148c:	f7ff fe9a 	bl	1a0011c4 <Chip_UART_DisableDivisorAccess>
1a001490:	697a      	ldr	r2, [r7, #20]
1a001492:	693b      	ldr	r3, [r7, #16]
1a001494:	fbb2 f3f3 	udiv	r3, r2, r3
1a001498:	091b      	lsrs	r3, r3, #4
1a00149a:	4618      	mov	r0, r3
1a00149c:	3718      	adds	r7, #24
1a00149e:	46bd      	mov	sp, r7
1a0014a0:	bd80      	pop	{r7, pc}
1a0014a2:	bf00      	nop
1a0014a4:	1a002578 	.word	0x1a002578

1a0014a8 <Chip_UART_RXIntHandlerRB>:
1a0014a8:	b580      	push	{r7, lr}
1a0014aa:	b084      	sub	sp, #16
1a0014ac:	af00      	add	r7, sp, #0
1a0014ae:	6078      	str	r0, [r7, #4]
1a0014b0:	6039      	str	r1, [r7, #0]
1a0014b2:	e00a      	b.n	1a0014ca <Chip_UART_RXIntHandlerRB+0x22>
1a0014b4:	6878      	ldr	r0, [r7, #4]
1a0014b6:	f7ff fe2e 	bl	1a001116 <Chip_UART_ReadByte>
1a0014ba:	4603      	mov	r3, r0
1a0014bc:	73fb      	strb	r3, [r7, #15]
1a0014be:	f107 030f 	add.w	r3, r7, #15
1a0014c2:	4619      	mov	r1, r3
1a0014c4:	6838      	ldr	r0, [r7, #0]
1a0014c6:	f000 f932 	bl	1a00172e <RingBuffer_Insert>
1a0014ca:	6878      	ldr	r0, [r7, #4]
1a0014cc:	f7ff fe9e 	bl	1a00120c <Chip_UART_ReadLineStatus>
1a0014d0:	4603      	mov	r3, r0
1a0014d2:	f003 0301 	and.w	r3, r3, #1
1a0014d6:	2b00      	cmp	r3, #0
1a0014d8:	d1ec      	bne.n	1a0014b4 <Chip_UART_RXIntHandlerRB+0xc>
1a0014da:	bf00      	nop
1a0014dc:	3710      	adds	r7, #16
1a0014de:	46bd      	mov	sp, r7
1a0014e0:	bd80      	pop	{r7, pc}

1a0014e2 <Chip_UART_TXIntHandlerRB>:
1a0014e2:	b580      	push	{r7, lr}
1a0014e4:	b084      	sub	sp, #16
1a0014e6:	af00      	add	r7, sp, #0
1a0014e8:	6078      	str	r0, [r7, #4]
1a0014ea:	6039      	str	r1, [r7, #0]
1a0014ec:	e004      	b.n	1a0014f8 <Chip_UART_TXIntHandlerRB+0x16>
1a0014ee:	7bfb      	ldrb	r3, [r7, #15]
1a0014f0:	4619      	mov	r1, r3
1a0014f2:	6878      	ldr	r0, [r7, #4]
1a0014f4:	f7ff fe00 	bl	1a0010f8 <Chip_UART_SendByte>
1a0014f8:	6878      	ldr	r0, [r7, #4]
1a0014fa:	f7ff fe87 	bl	1a00120c <Chip_UART_ReadLineStatus>
1a0014fe:	4603      	mov	r3, r0
1a001500:	f003 0320 	and.w	r3, r3, #32
1a001504:	2b00      	cmp	r3, #0
1a001506:	d008      	beq.n	1a00151a <Chip_UART_TXIntHandlerRB+0x38>
1a001508:	f107 030f 	add.w	r3, r7, #15
1a00150c:	4619      	mov	r1, r3
1a00150e:	6838      	ldr	r0, [r7, #0]
1a001510:	f000 f93b 	bl	1a00178a <RingBuffer_Pop>
1a001514:	4603      	mov	r3, r0
1a001516:	2b00      	cmp	r3, #0
1a001518:	d1e9      	bne.n	1a0014ee <Chip_UART_TXIntHandlerRB+0xc>
1a00151a:	6838      	ldr	r0, [r7, #0]
1a00151c:	f7ff fdca 	bl	1a0010b4 <RingBuffer_IsEmpty>
1a001520:	4603      	mov	r3, r0
1a001522:	2b00      	cmp	r3, #0
1a001524:	d003      	beq.n	1a00152e <Chip_UART_TXIntHandlerRB+0x4c>
1a001526:	2102      	movs	r1, #2
1a001528:	6878      	ldr	r0, [r7, #4]
1a00152a:	f7ff fe01 	bl	1a001130 <Chip_UART_IntDisable>
1a00152e:	bf00      	nop
1a001530:	3710      	adds	r7, #16
1a001532:	46bd      	mov	sp, r7
1a001534:	bd80      	pop	{r7, pc}

1a001536 <Chip_UART_IRQRBHandler>:
1a001536:	b580      	push	{r7, lr}
1a001538:	b084      	sub	sp, #16
1a00153a:	af00      	add	r7, sp, #0
1a00153c:	60f8      	str	r0, [r7, #12]
1a00153e:	60b9      	str	r1, [r7, #8]
1a001540:	607a      	str	r2, [r7, #4]
1a001542:	68fb      	ldr	r3, [r7, #12]
1a001544:	685b      	ldr	r3, [r3, #4]
1a001546:	f003 0302 	and.w	r3, r3, #2
1a00154a:	2b00      	cmp	r3, #0
1a00154c:	d00d      	beq.n	1a00156a <Chip_UART_IRQRBHandler+0x34>
1a00154e:	6879      	ldr	r1, [r7, #4]
1a001550:	68f8      	ldr	r0, [r7, #12]
1a001552:	f7ff ffc6 	bl	1a0014e2 <Chip_UART_TXIntHandlerRB>
1a001556:	6878      	ldr	r0, [r7, #4]
1a001558:	f7ff fdac 	bl	1a0010b4 <RingBuffer_IsEmpty>
1a00155c:	4603      	mov	r3, r0
1a00155e:	2b00      	cmp	r3, #0
1a001560:	d003      	beq.n	1a00156a <Chip_UART_IRQRBHandler+0x34>
1a001562:	2102      	movs	r1, #2
1a001564:	68f8      	ldr	r0, [r7, #12]
1a001566:	f7ff fde3 	bl	1a001130 <Chip_UART_IntDisable>
1a00156a:	68b9      	ldr	r1, [r7, #8]
1a00156c:	68f8      	ldr	r0, [r7, #12]
1a00156e:	f7ff ff9b 	bl	1a0014a8 <Chip_UART_RXIntHandlerRB>
1a001572:	68f8      	ldr	r0, [r7, #12]
1a001574:	f7ff fe98 	bl	1a0012a8 <Chip_UART_ABIntHandler>
1a001578:	bf00      	nop
1a00157a:	3710      	adds	r7, #16
1a00157c:	46bd      	mov	sp, r7
1a00157e:	bd80      	pop	{r7, pc}

1a001580 <Chip_TIMER_Enable>:
1a001580:	b480      	push	{r7}
1a001582:	b083      	sub	sp, #12
1a001584:	af00      	add	r7, sp, #0
1a001586:	6078      	str	r0, [r7, #4]
1a001588:	687b      	ldr	r3, [r7, #4]
1a00158a:	685b      	ldr	r3, [r3, #4]
1a00158c:	f043 0201 	orr.w	r2, r3, #1
1a001590:	687b      	ldr	r3, [r7, #4]
1a001592:	605a      	str	r2, [r3, #4]
1a001594:	bf00      	nop
1a001596:	370c      	adds	r7, #12
1a001598:	46bd      	mov	sp, r7
1a00159a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00159e:	4770      	bx	lr

1a0015a0 <Chip_TIMER_ReadCount>:
1a0015a0:	b480      	push	{r7}
1a0015a2:	b083      	sub	sp, #12
1a0015a4:	af00      	add	r7, sp, #0
1a0015a6:	6078      	str	r0, [r7, #4]
1a0015a8:	687b      	ldr	r3, [r7, #4]
1a0015aa:	689b      	ldr	r3, [r3, #8]
1a0015ac:	4618      	mov	r0, r3
1a0015ae:	370c      	adds	r7, #12
1a0015b0:	46bd      	mov	sp, r7
1a0015b2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015b6:	4770      	bx	lr

1a0015b8 <Chip_TIMER_PrescaleSet>:
1a0015b8:	b480      	push	{r7}
1a0015ba:	b083      	sub	sp, #12
1a0015bc:	af00      	add	r7, sp, #0
1a0015be:	6078      	str	r0, [r7, #4]
1a0015c0:	6039      	str	r1, [r7, #0]
1a0015c2:	687b      	ldr	r3, [r7, #4]
1a0015c4:	683a      	ldr	r2, [r7, #0]
1a0015c6:	60da      	str	r2, [r3, #12]
1a0015c8:	bf00      	nop
1a0015ca:	370c      	adds	r7, #12
1a0015cc:	46bd      	mov	sp, r7
1a0015ce:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015d2:	4770      	bx	lr

1a0015d4 <StopWatch_Init>:
1a0015d4:	b580      	push	{r7, lr}
1a0015d6:	b082      	sub	sp, #8
1a0015d8:	af00      	add	r7, sp, #0
1a0015da:	2308      	movs	r3, #8
1a0015dc:	607b      	str	r3, [r7, #4]
1a0015de:	4814      	ldr	r0, [pc, #80]	; (1a001630 <StopWatch_Init+0x5c>)
1a0015e0:	f000 fe22 	bl	1a002228 <Chip_TIMER_Init>
1a0015e4:	687b      	ldr	r3, [r7, #4]
1a0015e6:	3b01      	subs	r3, #1
1a0015e8:	4619      	mov	r1, r3
1a0015ea:	4811      	ldr	r0, [pc, #68]	; (1a001630 <StopWatch_Init+0x5c>)
1a0015ec:	f7ff ffe4 	bl	1a0015b8 <Chip_TIMER_PrescaleSet>
1a0015f0:	480f      	ldr	r0, [pc, #60]	; (1a001630 <StopWatch_Init+0x5c>)
1a0015f2:	f7ff ffc5 	bl	1a001580 <Chip_TIMER_Enable>
1a0015f6:	2084      	movs	r0, #132	; 0x84
1a0015f8:	f000 fd94 	bl	1a002124 <Chip_Clock_GetRate>
1a0015fc:	4602      	mov	r2, r0
1a0015fe:	687b      	ldr	r3, [r7, #4]
1a001600:	fbb2 f3f3 	udiv	r3, r2, r3
1a001604:	4a0b      	ldr	r2, [pc, #44]	; (1a001634 <StopWatch_Init+0x60>)
1a001606:	6013      	str	r3, [r2, #0]
1a001608:	4b0a      	ldr	r3, [pc, #40]	; (1a001634 <StopWatch_Init+0x60>)
1a00160a:	681b      	ldr	r3, [r3, #0]
1a00160c:	4a0a      	ldr	r2, [pc, #40]	; (1a001638 <StopWatch_Init+0x64>)
1a00160e:	fba2 2303 	umull	r2, r3, r2, r3
1a001612:	099b      	lsrs	r3, r3, #6
1a001614:	4a09      	ldr	r2, [pc, #36]	; (1a00163c <StopWatch_Init+0x68>)
1a001616:	6013      	str	r3, [r2, #0]
1a001618:	4b06      	ldr	r3, [pc, #24]	; (1a001634 <StopWatch_Init+0x60>)
1a00161a:	681b      	ldr	r3, [r3, #0]
1a00161c:	4a08      	ldr	r2, [pc, #32]	; (1a001640 <StopWatch_Init+0x6c>)
1a00161e:	fba2 2303 	umull	r2, r3, r2, r3
1a001622:	0c9b      	lsrs	r3, r3, #18
1a001624:	4a07      	ldr	r2, [pc, #28]	; (1a001644 <StopWatch_Init+0x70>)
1a001626:	6013      	str	r3, [r2, #0]
1a001628:	bf00      	nop
1a00162a:	3708      	adds	r7, #8
1a00162c:	46bd      	mov	sp, r7
1a00162e:	bd80      	pop	{r7, pc}
1a001630:	40084000 	.word	0x40084000
1a001634:	1000042c 	.word	0x1000042c
1a001638:	10624dd3 	.word	0x10624dd3
1a00163c:	10000430 	.word	0x10000430
1a001640:	431bde83 	.word	0x431bde83
1a001644:	10000434 	.word	0x10000434

1a001648 <StopWatch_Start>:
1a001648:	b580      	push	{r7, lr}
1a00164a:	af00      	add	r7, sp, #0
1a00164c:	4802      	ldr	r0, [pc, #8]	; (1a001658 <StopWatch_Start+0x10>)
1a00164e:	f7ff ffa7 	bl	1a0015a0 <Chip_TIMER_ReadCount>
1a001652:	4603      	mov	r3, r0
1a001654:	4618      	mov	r0, r3
1a001656:	bd80      	pop	{r7, pc}
1a001658:	40084000 	.word	0x40084000

1a00165c <StopWatch_MsToTicks>:
1a00165c:	b480      	push	{r7}
1a00165e:	b083      	sub	sp, #12
1a001660:	af00      	add	r7, sp, #0
1a001662:	6078      	str	r0, [r7, #4]
1a001664:	4b05      	ldr	r3, [pc, #20]	; (1a00167c <StopWatch_MsToTicks+0x20>)
1a001666:	681b      	ldr	r3, [r3, #0]
1a001668:	687a      	ldr	r2, [r7, #4]
1a00166a:	fb02 f303 	mul.w	r3, r2, r3
1a00166e:	4618      	mov	r0, r3
1a001670:	370c      	adds	r7, #12
1a001672:	46bd      	mov	sp, r7
1a001674:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001678:	4770      	bx	lr
1a00167a:	bf00      	nop
1a00167c:	10000430 	.word	0x10000430

1a001680 <RingBuffer_GetCount>:
1a001680:	b480      	push	{r7}
1a001682:	b083      	sub	sp, #12
1a001684:	af00      	add	r7, sp, #0
1a001686:	6078      	str	r0, [r7, #4]
1a001688:	687b      	ldr	r3, [r7, #4]
1a00168a:	330c      	adds	r3, #12
1a00168c:	681a      	ldr	r2, [r3, #0]
1a00168e:	687b      	ldr	r3, [r7, #4]
1a001690:	3310      	adds	r3, #16
1a001692:	681b      	ldr	r3, [r3, #0]
1a001694:	1ad3      	subs	r3, r2, r3
1a001696:	4618      	mov	r0, r3
1a001698:	370c      	adds	r7, #12
1a00169a:	46bd      	mov	sp, r7
1a00169c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016a0:	4770      	bx	lr

1a0016a2 <RingBuffer_IsFull>:
1a0016a2:	b580      	push	{r7, lr}
1a0016a4:	b082      	sub	sp, #8
1a0016a6:	af00      	add	r7, sp, #0
1a0016a8:	6078      	str	r0, [r7, #4]
1a0016aa:	6878      	ldr	r0, [r7, #4]
1a0016ac:	f7ff ffe8 	bl	1a001680 <RingBuffer_GetCount>
1a0016b0:	4602      	mov	r2, r0
1a0016b2:	687b      	ldr	r3, [r7, #4]
1a0016b4:	685b      	ldr	r3, [r3, #4]
1a0016b6:	429a      	cmp	r2, r3
1a0016b8:	bfac      	ite	ge
1a0016ba:	2301      	movge	r3, #1
1a0016bc:	2300      	movlt	r3, #0
1a0016be:	b2db      	uxtb	r3, r3
1a0016c0:	4618      	mov	r0, r3
1a0016c2:	3708      	adds	r7, #8
1a0016c4:	46bd      	mov	sp, r7
1a0016c6:	bd80      	pop	{r7, pc}

1a0016c8 <RingBuffer_IsEmpty>:
1a0016c8:	b480      	push	{r7}
1a0016ca:	b083      	sub	sp, #12
1a0016cc:	af00      	add	r7, sp, #0
1a0016ce:	6078      	str	r0, [r7, #4]
1a0016d0:	687b      	ldr	r3, [r7, #4]
1a0016d2:	330c      	adds	r3, #12
1a0016d4:	681a      	ldr	r2, [r3, #0]
1a0016d6:	687b      	ldr	r3, [r7, #4]
1a0016d8:	3310      	adds	r3, #16
1a0016da:	681b      	ldr	r3, [r3, #0]
1a0016dc:	429a      	cmp	r2, r3
1a0016de:	bf0c      	ite	eq
1a0016e0:	2301      	moveq	r3, #1
1a0016e2:	2300      	movne	r3, #0
1a0016e4:	b2db      	uxtb	r3, r3
1a0016e6:	4618      	mov	r0, r3
1a0016e8:	370c      	adds	r7, #12
1a0016ea:	46bd      	mov	sp, r7
1a0016ec:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016f0:	4770      	bx	lr

1a0016f2 <RingBuffer_Init>:
1a0016f2:	b480      	push	{r7}
1a0016f4:	b085      	sub	sp, #20
1a0016f6:	af00      	add	r7, sp, #0
1a0016f8:	60f8      	str	r0, [r7, #12]
1a0016fa:	60b9      	str	r1, [r7, #8]
1a0016fc:	607a      	str	r2, [r7, #4]
1a0016fe:	603b      	str	r3, [r7, #0]
1a001700:	68fb      	ldr	r3, [r7, #12]
1a001702:	68ba      	ldr	r2, [r7, #8]
1a001704:	601a      	str	r2, [r3, #0]
1a001706:	68fb      	ldr	r3, [r7, #12]
1a001708:	683a      	ldr	r2, [r7, #0]
1a00170a:	605a      	str	r2, [r3, #4]
1a00170c:	68fb      	ldr	r3, [r7, #12]
1a00170e:	687a      	ldr	r2, [r7, #4]
1a001710:	609a      	str	r2, [r3, #8]
1a001712:	68fb      	ldr	r3, [r7, #12]
1a001714:	2200      	movs	r2, #0
1a001716:	611a      	str	r2, [r3, #16]
1a001718:	68fb      	ldr	r3, [r7, #12]
1a00171a:	691a      	ldr	r2, [r3, #16]
1a00171c:	68fb      	ldr	r3, [r7, #12]
1a00171e:	60da      	str	r2, [r3, #12]
1a001720:	2301      	movs	r3, #1
1a001722:	4618      	mov	r0, r3
1a001724:	3714      	adds	r7, #20
1a001726:	46bd      	mov	sp, r7
1a001728:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00172c:	4770      	bx	lr

1a00172e <RingBuffer_Insert>:
1a00172e:	b580      	push	{r7, lr}
1a001730:	b084      	sub	sp, #16
1a001732:	af00      	add	r7, sp, #0
1a001734:	6078      	str	r0, [r7, #4]
1a001736:	6039      	str	r1, [r7, #0]
1a001738:	687b      	ldr	r3, [r7, #4]
1a00173a:	681b      	ldr	r3, [r3, #0]
1a00173c:	60fb      	str	r3, [r7, #12]
1a00173e:	6878      	ldr	r0, [r7, #4]
1a001740:	f7ff ffaf 	bl	1a0016a2 <RingBuffer_IsFull>
1a001744:	4603      	mov	r3, r0
1a001746:	2b00      	cmp	r3, #0
1a001748:	d001      	beq.n	1a00174e <RingBuffer_Insert+0x20>
1a00174a:	2300      	movs	r3, #0
1a00174c:	e019      	b.n	1a001782 <RingBuffer_Insert+0x54>
1a00174e:	687b      	ldr	r3, [r7, #4]
1a001750:	68db      	ldr	r3, [r3, #12]
1a001752:	687a      	ldr	r2, [r7, #4]
1a001754:	6852      	ldr	r2, [r2, #4]
1a001756:	3a01      	subs	r2, #1
1a001758:	4013      	ands	r3, r2
1a00175a:	687a      	ldr	r2, [r7, #4]
1a00175c:	6892      	ldr	r2, [r2, #8]
1a00175e:	fb02 f303 	mul.w	r3, r2, r3
1a001762:	68fa      	ldr	r2, [r7, #12]
1a001764:	4413      	add	r3, r2
1a001766:	60fb      	str	r3, [r7, #12]
1a001768:	687b      	ldr	r3, [r7, #4]
1a00176a:	689b      	ldr	r3, [r3, #8]
1a00176c:	461a      	mov	r2, r3
1a00176e:	6839      	ldr	r1, [r7, #0]
1a001770:	68f8      	ldr	r0, [r7, #12]
1a001772:	f000 fd87 	bl	1a002284 <memcpy>
1a001776:	687b      	ldr	r3, [r7, #4]
1a001778:	68db      	ldr	r3, [r3, #12]
1a00177a:	1c5a      	adds	r2, r3, #1
1a00177c:	687b      	ldr	r3, [r7, #4]
1a00177e:	60da      	str	r2, [r3, #12]
1a001780:	2301      	movs	r3, #1
1a001782:	4618      	mov	r0, r3
1a001784:	3710      	adds	r7, #16
1a001786:	46bd      	mov	sp, r7
1a001788:	bd80      	pop	{r7, pc}

1a00178a <RingBuffer_Pop>:
1a00178a:	b580      	push	{r7, lr}
1a00178c:	b084      	sub	sp, #16
1a00178e:	af00      	add	r7, sp, #0
1a001790:	6078      	str	r0, [r7, #4]
1a001792:	6039      	str	r1, [r7, #0]
1a001794:	687b      	ldr	r3, [r7, #4]
1a001796:	681b      	ldr	r3, [r3, #0]
1a001798:	60fb      	str	r3, [r7, #12]
1a00179a:	6878      	ldr	r0, [r7, #4]
1a00179c:	f7ff ff94 	bl	1a0016c8 <RingBuffer_IsEmpty>
1a0017a0:	4603      	mov	r3, r0
1a0017a2:	2b00      	cmp	r3, #0
1a0017a4:	d001      	beq.n	1a0017aa <RingBuffer_Pop+0x20>
1a0017a6:	2300      	movs	r3, #0
1a0017a8:	e019      	b.n	1a0017de <RingBuffer_Pop+0x54>
1a0017aa:	687b      	ldr	r3, [r7, #4]
1a0017ac:	691b      	ldr	r3, [r3, #16]
1a0017ae:	687a      	ldr	r2, [r7, #4]
1a0017b0:	6852      	ldr	r2, [r2, #4]
1a0017b2:	3a01      	subs	r2, #1
1a0017b4:	4013      	ands	r3, r2
1a0017b6:	687a      	ldr	r2, [r7, #4]
1a0017b8:	6892      	ldr	r2, [r2, #8]
1a0017ba:	fb02 f303 	mul.w	r3, r2, r3
1a0017be:	68fa      	ldr	r2, [r7, #12]
1a0017c0:	4413      	add	r3, r2
1a0017c2:	60fb      	str	r3, [r7, #12]
1a0017c4:	687b      	ldr	r3, [r7, #4]
1a0017c6:	689b      	ldr	r3, [r3, #8]
1a0017c8:	461a      	mov	r2, r3
1a0017ca:	68f9      	ldr	r1, [r7, #12]
1a0017cc:	6838      	ldr	r0, [r7, #0]
1a0017ce:	f000 fd59 	bl	1a002284 <memcpy>
1a0017d2:	687b      	ldr	r3, [r7, #4]
1a0017d4:	691b      	ldr	r3, [r3, #16]
1a0017d6:	1c5a      	adds	r2, r3, #1
1a0017d8:	687b      	ldr	r3, [r7, #4]
1a0017da:	611a      	str	r2, [r3, #16]
1a0017dc:	2301      	movs	r3, #1
1a0017de:	4618      	mov	r0, r3
1a0017e0:	3710      	adds	r7, #16
1a0017e2:	46bd      	mov	sp, r7
1a0017e4:	bd80      	pop	{r7, pc}

1a0017e6 <ABS>:
1a0017e6:	b480      	push	{r7}
1a0017e8:	b083      	sub	sp, #12
1a0017ea:	af00      	add	r7, sp, #0
1a0017ec:	6078      	str	r0, [r7, #4]
1a0017ee:	687b      	ldr	r3, [r7, #4]
1a0017f0:	2b00      	cmp	r3, #0
1a0017f2:	da02      	bge.n	1a0017fa <ABS+0x14>
1a0017f4:	687b      	ldr	r3, [r7, #4]
1a0017f6:	425b      	negs	r3, r3
1a0017f8:	e000      	b.n	1a0017fc <ABS+0x16>
1a0017fa:	687b      	ldr	r3, [r7, #4]
1a0017fc:	4618      	mov	r0, r3
1a0017fe:	370c      	adds	r7, #12
1a001800:	46bd      	mov	sp, r7
1a001802:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001806:	4770      	bx	lr

1a001808 <pll_calc_divs>:
1a001808:	b580      	push	{r7, lr}
1a00180a:	b088      	sub	sp, #32
1a00180c:	af00      	add	r7, sp, #0
1a00180e:	6078      	str	r0, [r7, #4]
1a001810:	6039      	str	r1, [r7, #0]
1a001812:	687b      	ldr	r3, [r7, #4]
1a001814:	61fb      	str	r3, [r7, #28]
1a001816:	683b      	ldr	r3, [r7, #0]
1a001818:	681b      	ldr	r3, [r3, #0]
1a00181a:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00181e:	2b00      	cmp	r3, #0
1a001820:	d005      	beq.n	1a00182e <pll_calc_divs+0x26>
1a001822:	683b      	ldr	r3, [r7, #0]
1a001824:	681b      	ldr	r3, [r3, #0]
1a001826:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a00182a:	683b      	ldr	r3, [r7, #0]
1a00182c:	601a      	str	r2, [r3, #0]
1a00182e:	2301      	movs	r3, #1
1a001830:	61bb      	str	r3, [r7, #24]
1a001832:	e06f      	b.n	1a001914 <pll_calc_divs+0x10c>
1a001834:	2300      	movs	r3, #0
1a001836:	613b      	str	r3, [r7, #16]
1a001838:	e066      	b.n	1a001908 <pll_calc_divs+0x100>
1a00183a:	2301      	movs	r3, #1
1a00183c:	617b      	str	r3, [r7, #20]
1a00183e:	e05a      	b.n	1a0018f6 <pll_calc_divs+0xee>
1a001840:	683b      	ldr	r3, [r7, #0]
1a001842:	681b      	ldr	r3, [r3, #0]
1a001844:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a001848:	2b00      	cmp	r3, #0
1a00184a:	d00e      	beq.n	1a00186a <pll_calc_divs+0x62>
1a00184c:	693b      	ldr	r3, [r7, #16]
1a00184e:	3301      	adds	r3, #1
1a001850:	697a      	ldr	r2, [r7, #20]
1a001852:	fa02 f303 	lsl.w	r3, r2, r3
1a001856:	461a      	mov	r2, r3
1a001858:	683b      	ldr	r3, [r7, #0]
1a00185a:	695b      	ldr	r3, [r3, #20]
1a00185c:	fb03 f202 	mul.w	r2, r3, r2
1a001860:	69bb      	ldr	r3, [r7, #24]
1a001862:	fbb2 f3f3 	udiv	r3, r2, r3
1a001866:	60fb      	str	r3, [r7, #12]
1a001868:	e008      	b.n	1a00187c <pll_calc_divs+0x74>
1a00186a:	683b      	ldr	r3, [r7, #0]
1a00186c:	695b      	ldr	r3, [r3, #20]
1a00186e:	697a      	ldr	r2, [r7, #20]
1a001870:	fb02 f203 	mul.w	r2, r2, r3
1a001874:	69bb      	ldr	r3, [r7, #24]
1a001876:	fbb2 f3f3 	udiv	r3, r2, r3
1a00187a:	60fb      	str	r3, [r7, #12]
1a00187c:	68fb      	ldr	r3, [r7, #12]
1a00187e:	4a29      	ldr	r2, [pc, #164]	; (1a001924 <pll_calc_divs+0x11c>)
1a001880:	4293      	cmp	r3, r2
1a001882:	d934      	bls.n	1a0018ee <pll_calc_divs+0xe6>
1a001884:	68fb      	ldr	r3, [r7, #12]
1a001886:	4a28      	ldr	r2, [pc, #160]	; (1a001928 <pll_calc_divs+0x120>)
1a001888:	4293      	cmp	r3, r2
1a00188a:	d839      	bhi.n	1a001900 <pll_calc_divs+0xf8>
1a00188c:	683b      	ldr	r3, [r7, #0]
1a00188e:	681b      	ldr	r3, [r3, #0]
1a001890:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001894:	2b00      	cmp	r3, #0
1a001896:	d002      	beq.n	1a00189e <pll_calc_divs+0x96>
1a001898:	68fb      	ldr	r3, [r7, #12]
1a00189a:	60bb      	str	r3, [r7, #8]
1a00189c:	e005      	b.n	1a0018aa <pll_calc_divs+0xa2>
1a00189e:	693b      	ldr	r3, [r7, #16]
1a0018a0:	3301      	adds	r3, #1
1a0018a2:	68fa      	ldr	r2, [r7, #12]
1a0018a4:	fa22 f303 	lsr.w	r3, r2, r3
1a0018a8:	60bb      	str	r3, [r7, #8]
1a0018aa:	687a      	ldr	r2, [r7, #4]
1a0018ac:	68bb      	ldr	r3, [r7, #8]
1a0018ae:	1ad3      	subs	r3, r2, r3
1a0018b0:	4618      	mov	r0, r3
1a0018b2:	f7ff ff98 	bl	1a0017e6 <ABS>
1a0018b6:	4602      	mov	r2, r0
1a0018b8:	69fb      	ldr	r3, [r7, #28]
1a0018ba:	4293      	cmp	r3, r2
1a0018bc:	d918      	bls.n	1a0018f0 <pll_calc_divs+0xe8>
1a0018be:	683b      	ldr	r3, [r7, #0]
1a0018c0:	69ba      	ldr	r2, [r7, #24]
1a0018c2:	609a      	str	r2, [r3, #8]
1a0018c4:	693b      	ldr	r3, [r7, #16]
1a0018c6:	1c5a      	adds	r2, r3, #1
1a0018c8:	683b      	ldr	r3, [r7, #0]
1a0018ca:	60da      	str	r2, [r3, #12]
1a0018cc:	683b      	ldr	r3, [r7, #0]
1a0018ce:	697a      	ldr	r2, [r7, #20]
1a0018d0:	611a      	str	r2, [r3, #16]
1a0018d2:	683b      	ldr	r3, [r7, #0]
1a0018d4:	68ba      	ldr	r2, [r7, #8]
1a0018d6:	619a      	str	r2, [r3, #24]
1a0018d8:	683b      	ldr	r3, [r7, #0]
1a0018da:	68fa      	ldr	r2, [r7, #12]
1a0018dc:	61da      	str	r2, [r3, #28]
1a0018de:	687a      	ldr	r2, [r7, #4]
1a0018e0:	68bb      	ldr	r3, [r7, #8]
1a0018e2:	1ad3      	subs	r3, r2, r3
1a0018e4:	4618      	mov	r0, r3
1a0018e6:	f7ff ff7e 	bl	1a0017e6 <ABS>
1a0018ea:	61f8      	str	r0, [r7, #28]
1a0018ec:	e000      	b.n	1a0018f0 <pll_calc_divs+0xe8>
1a0018ee:	bf00      	nop
1a0018f0:	697b      	ldr	r3, [r7, #20]
1a0018f2:	3301      	adds	r3, #1
1a0018f4:	617b      	str	r3, [r7, #20]
1a0018f6:	697b      	ldr	r3, [r7, #20]
1a0018f8:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a0018fc:	dda0      	ble.n	1a001840 <pll_calc_divs+0x38>
1a0018fe:	e000      	b.n	1a001902 <pll_calc_divs+0xfa>
1a001900:	bf00      	nop
1a001902:	693b      	ldr	r3, [r7, #16]
1a001904:	3301      	adds	r3, #1
1a001906:	613b      	str	r3, [r7, #16]
1a001908:	693b      	ldr	r3, [r7, #16]
1a00190a:	2b03      	cmp	r3, #3
1a00190c:	dd95      	ble.n	1a00183a <pll_calc_divs+0x32>
1a00190e:	69bb      	ldr	r3, [r7, #24]
1a001910:	3301      	adds	r3, #1
1a001912:	61bb      	str	r3, [r7, #24]
1a001914:	69bb      	ldr	r3, [r7, #24]
1a001916:	2b04      	cmp	r3, #4
1a001918:	dd8c      	ble.n	1a001834 <pll_calc_divs+0x2c>
1a00191a:	bf00      	nop
1a00191c:	3720      	adds	r7, #32
1a00191e:	46bd      	mov	sp, r7
1a001920:	bd80      	pop	{r7, pc}
1a001922:	bf00      	nop
1a001924:	094c5eff 	.word	0x094c5eff
1a001928:	1312d000 	.word	0x1312d000

1a00192c <pll_get_frac>:
1a00192c:	b5b0      	push	{r4, r5, r7, lr}
1a00192e:	b09e      	sub	sp, #120	; 0x78
1a001930:	af00      	add	r7, sp, #0
1a001932:	6078      	str	r0, [r7, #4]
1a001934:	6039      	str	r1, [r7, #0]
1a001936:	f107 030c 	add.w	r3, r7, #12
1a00193a:	2260      	movs	r2, #96	; 0x60
1a00193c:	2100      	movs	r1, #0
1a00193e:	4618      	mov	r0, r3
1a001940:	f7fe fcde 	bl	1a000300 <memset>
1a001944:	68fb      	ldr	r3, [r7, #12]
1a001946:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a00194a:	60fb      	str	r3, [r7, #12]
1a00194c:	683b      	ldr	r3, [r7, #0]
1a00194e:	695b      	ldr	r3, [r3, #20]
1a001950:	623b      	str	r3, [r7, #32]
1a001952:	683b      	ldr	r3, [r7, #0]
1a001954:	791b      	ldrb	r3, [r3, #4]
1a001956:	743b      	strb	r3, [r7, #16]
1a001958:	f107 030c 	add.w	r3, r7, #12
1a00195c:	4619      	mov	r1, r3
1a00195e:	6878      	ldr	r0, [r7, #4]
1a001960:	f7ff ff52 	bl	1a001808 <pll_calc_divs>
1a001964:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001966:	687a      	ldr	r2, [r7, #4]
1a001968:	429a      	cmp	r2, r3
1a00196a:	d10a      	bne.n	1a001982 <pll_get_frac+0x56>
1a00196c:	683b      	ldr	r3, [r7, #0]
1a00196e:	461d      	mov	r5, r3
1a001970:	f107 040c 	add.w	r4, r7, #12
1a001974:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001976:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001978:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00197c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001980:	e08e      	b.n	1a001aa0 <pll_get_frac+0x174>
1a001982:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001984:	687a      	ldr	r2, [r7, #4]
1a001986:	1ad3      	subs	r3, r2, r3
1a001988:	4618      	mov	r0, r3
1a00198a:	f7ff ff2c 	bl	1a0017e6 <ABS>
1a00198e:	4603      	mov	r3, r0
1a001990:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001992:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001994:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001998:	64fb      	str	r3, [r7, #76]	; 0x4c
1a00199a:	683b      	ldr	r3, [r7, #0]
1a00199c:	695b      	ldr	r3, [r3, #20]
1a00199e:	663b      	str	r3, [r7, #96]	; 0x60
1a0019a0:	683b      	ldr	r3, [r7, #0]
1a0019a2:	791b      	ldrb	r3, [r3, #4]
1a0019a4:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a0019a8:	f107 030c 	add.w	r3, r7, #12
1a0019ac:	3340      	adds	r3, #64	; 0x40
1a0019ae:	4619      	mov	r1, r3
1a0019b0:	6878      	ldr	r0, [r7, #4]
1a0019b2:	f7ff ff29 	bl	1a001808 <pll_calc_divs>
1a0019b6:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a0019b8:	687a      	ldr	r2, [r7, #4]
1a0019ba:	429a      	cmp	r2, r3
1a0019bc:	d10a      	bne.n	1a0019d4 <pll_get_frac+0xa8>
1a0019be:	683b      	ldr	r3, [r7, #0]
1a0019c0:	461d      	mov	r5, r3
1a0019c2:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0019c6:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0019c8:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0019ca:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0019ce:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0019d2:	e065      	b.n	1a001aa0 <pll_get_frac+0x174>
1a0019d4:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a0019d6:	687a      	ldr	r2, [r7, #4]
1a0019d8:	1ad3      	subs	r3, r2, r3
1a0019da:	4618      	mov	r0, r3
1a0019dc:	f7ff ff03 	bl	1a0017e6 <ABS>
1a0019e0:	4603      	mov	r3, r0
1a0019e2:	677b      	str	r3, [r7, #116]	; 0x74
1a0019e4:	687b      	ldr	r3, [r7, #4]
1a0019e6:	4a30      	ldr	r2, [pc, #192]	; (1a001aa8 <pll_get_frac+0x17c>)
1a0019e8:	4293      	cmp	r3, r2
1a0019ea:	d81a      	bhi.n	1a001a22 <pll_get_frac+0xf6>
1a0019ec:	2340      	movs	r3, #64	; 0x40
1a0019ee:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0019f0:	683b      	ldr	r3, [r7, #0]
1a0019f2:	695b      	ldr	r3, [r3, #20]
1a0019f4:	643b      	str	r3, [r7, #64]	; 0x40
1a0019f6:	f107 030c 	add.w	r3, r7, #12
1a0019fa:	3320      	adds	r3, #32
1a0019fc:	4619      	mov	r1, r3
1a0019fe:	6878      	ldr	r0, [r7, #4]
1a001a00:	f7ff ff02 	bl	1a001808 <pll_calc_divs>
1a001a04:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001a06:	687a      	ldr	r2, [r7, #4]
1a001a08:	429a      	cmp	r2, r3
1a001a0a:	d10a      	bne.n	1a001a22 <pll_get_frac+0xf6>
1a001a0c:	683b      	ldr	r3, [r7, #0]
1a001a0e:	461d      	mov	r5, r3
1a001a10:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001a14:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001a16:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001a18:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001a1c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001a20:	e03e      	b.n	1a001aa0 <pll_get_frac+0x174>
1a001a22:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001a24:	687a      	ldr	r2, [r7, #4]
1a001a26:	1ad3      	subs	r3, r2, r3
1a001a28:	4618      	mov	r0, r3
1a001a2a:	f7ff fedc 	bl	1a0017e6 <ABS>
1a001a2e:	4603      	mov	r3, r0
1a001a30:	673b      	str	r3, [r7, #112]	; 0x70
1a001a32:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001a34:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a001a36:	429a      	cmp	r2, r3
1a001a38:	dc19      	bgt.n	1a001a6e <pll_get_frac+0x142>
1a001a3a:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001a3c:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001a3e:	429a      	cmp	r2, r3
1a001a40:	dc0a      	bgt.n	1a001a58 <pll_get_frac+0x12c>
1a001a42:	683b      	ldr	r3, [r7, #0]
1a001a44:	461d      	mov	r5, r3
1a001a46:	f107 040c 	add.w	r4, r7, #12
1a001a4a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001a4c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001a4e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001a52:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001a56:	e023      	b.n	1a001aa0 <pll_get_frac+0x174>
1a001a58:	683b      	ldr	r3, [r7, #0]
1a001a5a:	461d      	mov	r5, r3
1a001a5c:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001a60:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001a62:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001a64:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001a68:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001a6c:	e018      	b.n	1a001aa0 <pll_get_frac+0x174>
1a001a6e:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001a70:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001a72:	429a      	cmp	r2, r3
1a001a74:	dc0a      	bgt.n	1a001a8c <pll_get_frac+0x160>
1a001a76:	683b      	ldr	r3, [r7, #0]
1a001a78:	461d      	mov	r5, r3
1a001a7a:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001a7e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001a80:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001a82:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001a86:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001a8a:	e009      	b.n	1a001aa0 <pll_get_frac+0x174>
1a001a8c:	683b      	ldr	r3, [r7, #0]
1a001a8e:	461d      	mov	r5, r3
1a001a90:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001a94:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001a96:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001a98:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001a9c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001aa0:	3778      	adds	r7, #120	; 0x78
1a001aa2:	46bd      	mov	sp, r7
1a001aa4:	bdb0      	pop	{r4, r5, r7, pc}
1a001aa6:	bf00      	nop
1a001aa8:	068e7780 	.word	0x068e7780

1a001aac <Chip_Clock_GetDivRate>:
1a001aac:	b580      	push	{r7, lr}
1a001aae:	b084      	sub	sp, #16
1a001ab0:	af00      	add	r7, sp, #0
1a001ab2:	4603      	mov	r3, r0
1a001ab4:	460a      	mov	r2, r1
1a001ab6:	71fb      	strb	r3, [r7, #7]
1a001ab8:	4613      	mov	r3, r2
1a001aba:	71bb      	strb	r3, [r7, #6]
1a001abc:	79bb      	ldrb	r3, [r7, #6]
1a001abe:	4618      	mov	r0, r3
1a001ac0:	f000 f960 	bl	1a001d84 <Chip_Clock_GetDividerSource>
1a001ac4:	4603      	mov	r3, r0
1a001ac6:	73fb      	strb	r3, [r7, #15]
1a001ac8:	79bb      	ldrb	r3, [r7, #6]
1a001aca:	4618      	mov	r0, r3
1a001acc:	f000 f97a 	bl	1a001dc4 <Chip_Clock_GetDividerDivisor>
1a001ad0:	60b8      	str	r0, [r7, #8]
1a001ad2:	7bfb      	ldrb	r3, [r7, #15]
1a001ad4:	4618      	mov	r0, r3
1a001ad6:	f000 f991 	bl	1a001dfc <Chip_Clock_GetClockInputHz>
1a001ada:	4602      	mov	r2, r0
1a001adc:	68bb      	ldr	r3, [r7, #8]
1a001ade:	3301      	adds	r3, #1
1a001ae0:	fbb2 f3f3 	udiv	r3, r2, r3
1a001ae4:	4618      	mov	r0, r3
1a001ae6:	3710      	adds	r7, #16
1a001ae8:	46bd      	mov	sp, r7
1a001aea:	bd80      	pop	{r7, pc}

1a001aec <Chip_Clock_FindBaseClock>:
1a001aec:	b480      	push	{r7}
1a001aee:	b085      	sub	sp, #20
1a001af0:	af00      	add	r7, sp, #0
1a001af2:	4603      	mov	r3, r0
1a001af4:	80fb      	strh	r3, [r7, #6]
1a001af6:	231c      	movs	r3, #28
1a001af8:	73fb      	strb	r3, [r7, #15]
1a001afa:	2300      	movs	r3, #0
1a001afc:	60bb      	str	r3, [r7, #8]
1a001afe:	e024      	b.n	1a001b4a <Chip_Clock_FindBaseClock+0x5e>
1a001b00:	491d      	ldr	r1, [pc, #116]	; (1a001b78 <Chip_Clock_FindBaseClock+0x8c>)
1a001b02:	68ba      	ldr	r2, [r7, #8]
1a001b04:	4613      	mov	r3, r2
1a001b06:	005b      	lsls	r3, r3, #1
1a001b08:	4413      	add	r3, r2
1a001b0a:	005b      	lsls	r3, r3, #1
1a001b0c:	440b      	add	r3, r1
1a001b0e:	881b      	ldrh	r3, [r3, #0]
1a001b10:	88fa      	ldrh	r2, [r7, #6]
1a001b12:	429a      	cmp	r2, r3
1a001b14:	d316      	bcc.n	1a001b44 <Chip_Clock_FindBaseClock+0x58>
1a001b16:	4918      	ldr	r1, [pc, #96]	; (1a001b78 <Chip_Clock_FindBaseClock+0x8c>)
1a001b18:	68ba      	ldr	r2, [r7, #8]
1a001b1a:	4613      	mov	r3, r2
1a001b1c:	005b      	lsls	r3, r3, #1
1a001b1e:	4413      	add	r3, r2
1a001b20:	005b      	lsls	r3, r3, #1
1a001b22:	440b      	add	r3, r1
1a001b24:	3302      	adds	r3, #2
1a001b26:	881b      	ldrh	r3, [r3, #0]
1a001b28:	88fa      	ldrh	r2, [r7, #6]
1a001b2a:	429a      	cmp	r2, r3
1a001b2c:	d80a      	bhi.n	1a001b44 <Chip_Clock_FindBaseClock+0x58>
1a001b2e:	4912      	ldr	r1, [pc, #72]	; (1a001b78 <Chip_Clock_FindBaseClock+0x8c>)
1a001b30:	68ba      	ldr	r2, [r7, #8]
1a001b32:	4613      	mov	r3, r2
1a001b34:	005b      	lsls	r3, r3, #1
1a001b36:	4413      	add	r3, r2
1a001b38:	005b      	lsls	r3, r3, #1
1a001b3a:	440b      	add	r3, r1
1a001b3c:	3304      	adds	r3, #4
1a001b3e:	781b      	ldrb	r3, [r3, #0]
1a001b40:	73fb      	strb	r3, [r7, #15]
1a001b42:	e002      	b.n	1a001b4a <Chip_Clock_FindBaseClock+0x5e>
1a001b44:	68bb      	ldr	r3, [r7, #8]
1a001b46:	3301      	adds	r3, #1
1a001b48:	60bb      	str	r3, [r7, #8]
1a001b4a:	7bfb      	ldrb	r3, [r7, #15]
1a001b4c:	2b1c      	cmp	r3, #28
1a001b4e:	d10b      	bne.n	1a001b68 <Chip_Clock_FindBaseClock+0x7c>
1a001b50:	4909      	ldr	r1, [pc, #36]	; (1a001b78 <Chip_Clock_FindBaseClock+0x8c>)
1a001b52:	68ba      	ldr	r2, [r7, #8]
1a001b54:	4613      	mov	r3, r2
1a001b56:	005b      	lsls	r3, r3, #1
1a001b58:	4413      	add	r3, r2
1a001b5a:	005b      	lsls	r3, r3, #1
1a001b5c:	440b      	add	r3, r1
1a001b5e:	3304      	adds	r3, #4
1a001b60:	781b      	ldrb	r3, [r3, #0]
1a001b62:	7bfa      	ldrb	r2, [r7, #15]
1a001b64:	429a      	cmp	r2, r3
1a001b66:	d1cb      	bne.n	1a001b00 <Chip_Clock_FindBaseClock+0x14>
1a001b68:	7bfb      	ldrb	r3, [r7, #15]
1a001b6a:	4618      	mov	r0, r3
1a001b6c:	3714      	adds	r7, #20
1a001b6e:	46bd      	mov	sp, r7
1a001b70:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b74:	4770      	bx	lr
1a001b76:	bf00      	nop
1a001b78:	1a002580 	.word	0x1a002580

1a001b7c <Chip_Clock_EnableCrystal>:
1a001b7c:	b480      	push	{r7}
1a001b7e:	b083      	sub	sp, #12
1a001b80:	af00      	add	r7, sp, #0
1a001b82:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001b86:	603b      	str	r3, [r7, #0]
1a001b88:	4b15      	ldr	r3, [pc, #84]	; (1a001be0 <Chip_Clock_EnableCrystal+0x64>)
1a001b8a:	699b      	ldr	r3, [r3, #24]
1a001b8c:	607b      	str	r3, [r7, #4]
1a001b8e:	687b      	ldr	r3, [r7, #4]
1a001b90:	f023 0302 	bic.w	r3, r3, #2
1a001b94:	607b      	str	r3, [r7, #4]
1a001b96:	4b12      	ldr	r3, [pc, #72]	; (1a001be0 <Chip_Clock_EnableCrystal+0x64>)
1a001b98:	699b      	ldr	r3, [r3, #24]
1a001b9a:	687a      	ldr	r2, [r7, #4]
1a001b9c:	429a      	cmp	r2, r3
1a001b9e:	d002      	beq.n	1a001ba6 <Chip_Clock_EnableCrystal+0x2a>
1a001ba0:	4a0f      	ldr	r2, [pc, #60]	; (1a001be0 <Chip_Clock_EnableCrystal+0x64>)
1a001ba2:	687b      	ldr	r3, [r7, #4]
1a001ba4:	6193      	str	r3, [r2, #24]
1a001ba6:	687b      	ldr	r3, [r7, #4]
1a001ba8:	f023 0301 	bic.w	r3, r3, #1
1a001bac:	607b      	str	r3, [r7, #4]
1a001bae:	4b0d      	ldr	r3, [pc, #52]	; (1a001be4 <Chip_Clock_EnableCrystal+0x68>)
1a001bb0:	681b      	ldr	r3, [r3, #0]
1a001bb2:	4a0d      	ldr	r2, [pc, #52]	; (1a001be8 <Chip_Clock_EnableCrystal+0x6c>)
1a001bb4:	4293      	cmp	r3, r2
1a001bb6:	d903      	bls.n	1a001bc0 <Chip_Clock_EnableCrystal+0x44>
1a001bb8:	687b      	ldr	r3, [r7, #4]
1a001bba:	f043 0304 	orr.w	r3, r3, #4
1a001bbe:	607b      	str	r3, [r7, #4]
1a001bc0:	4a07      	ldr	r2, [pc, #28]	; (1a001be0 <Chip_Clock_EnableCrystal+0x64>)
1a001bc2:	687b      	ldr	r3, [r7, #4]
1a001bc4:	6193      	str	r3, [r2, #24]
1a001bc6:	bf00      	nop
1a001bc8:	683b      	ldr	r3, [r7, #0]
1a001bca:	1e5a      	subs	r2, r3, #1
1a001bcc:	603a      	str	r2, [r7, #0]
1a001bce:	2b00      	cmp	r3, #0
1a001bd0:	d1fa      	bne.n	1a001bc8 <Chip_Clock_EnableCrystal+0x4c>
1a001bd2:	bf00      	nop
1a001bd4:	370c      	adds	r7, #12
1a001bd6:	46bd      	mov	sp, r7
1a001bd8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001bdc:	4770      	bx	lr
1a001bde:	bf00      	nop
1a001be0:	40050000 	.word	0x40050000
1a001be4:	1a002520 	.word	0x1a002520
1a001be8:	01312cff 	.word	0x01312cff

1a001bec <Chip_Clock_CalcMainPLLValue>:
1a001bec:	b580      	push	{r7, lr}
1a001bee:	b082      	sub	sp, #8
1a001bf0:	af00      	add	r7, sp, #0
1a001bf2:	6078      	str	r0, [r7, #4]
1a001bf4:	6039      	str	r1, [r7, #0]
1a001bf6:	683b      	ldr	r3, [r7, #0]
1a001bf8:	791b      	ldrb	r3, [r3, #4]
1a001bfa:	4618      	mov	r0, r3
1a001bfc:	f000 f8fe 	bl	1a001dfc <Chip_Clock_GetClockInputHz>
1a001c00:	4602      	mov	r2, r0
1a001c02:	683b      	ldr	r3, [r7, #0]
1a001c04:	615a      	str	r2, [r3, #20]
1a001c06:	687b      	ldr	r3, [r7, #4]
1a001c08:	4a2b      	ldr	r2, [pc, #172]	; (1a001cb8 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a001c0a:	4293      	cmp	r3, r2
1a001c0c:	d807      	bhi.n	1a001c1e <Chip_Clock_CalcMainPLLValue+0x32>
1a001c0e:	687b      	ldr	r3, [r7, #4]
1a001c10:	4a2a      	ldr	r2, [pc, #168]	; (1a001cbc <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001c12:	4293      	cmp	r3, r2
1a001c14:	d903      	bls.n	1a001c1e <Chip_Clock_CalcMainPLLValue+0x32>
1a001c16:	683b      	ldr	r3, [r7, #0]
1a001c18:	695b      	ldr	r3, [r3, #20]
1a001c1a:	2b00      	cmp	r3, #0
1a001c1c:	d102      	bne.n	1a001c24 <Chip_Clock_CalcMainPLLValue+0x38>
1a001c1e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001c22:	e044      	b.n	1a001cae <Chip_Clock_CalcMainPLLValue+0xc2>
1a001c24:	683b      	ldr	r3, [r7, #0]
1a001c26:	2280      	movs	r2, #128	; 0x80
1a001c28:	601a      	str	r2, [r3, #0]
1a001c2a:	683b      	ldr	r3, [r7, #0]
1a001c2c:	2200      	movs	r2, #0
1a001c2e:	609a      	str	r2, [r3, #8]
1a001c30:	683b      	ldr	r3, [r7, #0]
1a001c32:	2200      	movs	r2, #0
1a001c34:	60da      	str	r2, [r3, #12]
1a001c36:	683b      	ldr	r3, [r7, #0]
1a001c38:	695b      	ldr	r3, [r3, #20]
1a001c3a:	687a      	ldr	r2, [r7, #4]
1a001c3c:	fbb2 f3f3 	udiv	r3, r2, r3
1a001c40:	461a      	mov	r2, r3
1a001c42:	683b      	ldr	r3, [r7, #0]
1a001c44:	611a      	str	r2, [r3, #16]
1a001c46:	687b      	ldr	r3, [r7, #4]
1a001c48:	4a1d      	ldr	r2, [pc, #116]	; (1a001cc0 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a001c4a:	4293      	cmp	r3, r2
1a001c4c:	d909      	bls.n	1a001c62 <Chip_Clock_CalcMainPLLValue+0x76>
1a001c4e:	683b      	ldr	r3, [r7, #0]
1a001c50:	691b      	ldr	r3, [r3, #16]
1a001c52:	461a      	mov	r2, r3
1a001c54:	683b      	ldr	r3, [r7, #0]
1a001c56:	695b      	ldr	r3, [r3, #20]
1a001c58:	fb03 f302 	mul.w	r3, r3, r2
1a001c5c:	687a      	ldr	r2, [r7, #4]
1a001c5e:	429a      	cmp	r2, r3
1a001c60:	d00f      	beq.n	1a001c82 <Chip_Clock_CalcMainPLLValue+0x96>
1a001c62:	6839      	ldr	r1, [r7, #0]
1a001c64:	6878      	ldr	r0, [r7, #4]
1a001c66:	f7ff fe61 	bl	1a00192c <pll_get_frac>
1a001c6a:	683b      	ldr	r3, [r7, #0]
1a001c6c:	689b      	ldr	r3, [r3, #8]
1a001c6e:	2b00      	cmp	r3, #0
1a001c70:	d102      	bne.n	1a001c78 <Chip_Clock_CalcMainPLLValue+0x8c>
1a001c72:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001c76:	e01a      	b.n	1a001cae <Chip_Clock_CalcMainPLLValue+0xc2>
1a001c78:	683b      	ldr	r3, [r7, #0]
1a001c7a:	689b      	ldr	r3, [r3, #8]
1a001c7c:	1e5a      	subs	r2, r3, #1
1a001c7e:	683b      	ldr	r3, [r7, #0]
1a001c80:	609a      	str	r2, [r3, #8]
1a001c82:	683b      	ldr	r3, [r7, #0]
1a001c84:	691b      	ldr	r3, [r3, #16]
1a001c86:	2b00      	cmp	r3, #0
1a001c88:	d102      	bne.n	1a001c90 <Chip_Clock_CalcMainPLLValue+0xa4>
1a001c8a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001c8e:	e00e      	b.n	1a001cae <Chip_Clock_CalcMainPLLValue+0xc2>
1a001c90:	683b      	ldr	r3, [r7, #0]
1a001c92:	68db      	ldr	r3, [r3, #12]
1a001c94:	2b00      	cmp	r3, #0
1a001c96:	d004      	beq.n	1a001ca2 <Chip_Clock_CalcMainPLLValue+0xb6>
1a001c98:	683b      	ldr	r3, [r7, #0]
1a001c9a:	68db      	ldr	r3, [r3, #12]
1a001c9c:	1e5a      	subs	r2, r3, #1
1a001c9e:	683b      	ldr	r3, [r7, #0]
1a001ca0:	60da      	str	r2, [r3, #12]
1a001ca2:	683b      	ldr	r3, [r7, #0]
1a001ca4:	691b      	ldr	r3, [r3, #16]
1a001ca6:	1e5a      	subs	r2, r3, #1
1a001ca8:	683b      	ldr	r3, [r7, #0]
1a001caa:	611a      	str	r2, [r3, #16]
1a001cac:	2300      	movs	r3, #0
1a001cae:	4618      	mov	r0, r3
1a001cb0:	3708      	adds	r7, #8
1a001cb2:	46bd      	mov	sp, r7
1a001cb4:	bd80      	pop	{r7, pc}
1a001cb6:	bf00      	nop
1a001cb8:	0c28cb00 	.word	0x0c28cb00
1a001cbc:	0094c5ef 	.word	0x0094c5ef
1a001cc0:	094c5eff 	.word	0x094c5eff

1a001cc4 <Chip_Clock_GetMainPLLHz>:
1a001cc4:	b580      	push	{r7, lr}
1a001cc6:	b08c      	sub	sp, #48	; 0x30
1a001cc8:	af00      	add	r7, sp, #0
1a001cca:	4b2c      	ldr	r3, [pc, #176]	; (1a001d7c <Chip_Clock_GetMainPLLHz+0xb8>)
1a001ccc:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001cce:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001cd0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001cd2:	0e1b      	lsrs	r3, r3, #24
1a001cd4:	b2db      	uxtb	r3, r3
1a001cd6:	f003 030f 	and.w	r3, r3, #15
1a001cda:	b2db      	uxtb	r3, r3
1a001cdc:	4618      	mov	r0, r3
1a001cde:	f000 f88d 	bl	1a001dfc <Chip_Clock_GetClockInputHz>
1a001ce2:	62b8      	str	r0, [r7, #40]	; 0x28
1a001ce4:	4b26      	ldr	r3, [pc, #152]	; (1a001d80 <Chip_Clock_GetMainPLLHz+0xbc>)
1a001ce6:	681b      	ldr	r3, [r3, #0]
1a001ce8:	607b      	str	r3, [r7, #4]
1a001cea:	4b24      	ldr	r3, [pc, #144]	; (1a001d7c <Chip_Clock_GetMainPLLHz+0xb8>)
1a001cec:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001cee:	f003 0301 	and.w	r3, r3, #1
1a001cf2:	2b00      	cmp	r3, #0
1a001cf4:	d101      	bne.n	1a001cfa <Chip_Clock_GetMainPLLHz+0x36>
1a001cf6:	2300      	movs	r3, #0
1a001cf8:	e03b      	b.n	1a001d72 <Chip_Clock_GetMainPLLHz+0xae>
1a001cfa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001cfc:	0c1b      	lsrs	r3, r3, #16
1a001cfe:	b2db      	uxtb	r3, r3
1a001d00:	627b      	str	r3, [r7, #36]	; 0x24
1a001d02:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001d04:	0b1b      	lsrs	r3, r3, #12
1a001d06:	f003 0303 	and.w	r3, r3, #3
1a001d0a:	623b      	str	r3, [r7, #32]
1a001d0c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001d0e:	0a1b      	lsrs	r3, r3, #8
1a001d10:	f003 0303 	and.w	r3, r3, #3
1a001d14:	61fb      	str	r3, [r7, #28]
1a001d16:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001d18:	09db      	lsrs	r3, r3, #7
1a001d1a:	f003 0301 	and.w	r3, r3, #1
1a001d1e:	61bb      	str	r3, [r7, #24]
1a001d20:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001d22:	099b      	lsrs	r3, r3, #6
1a001d24:	f003 0301 	and.w	r3, r3, #1
1a001d28:	617b      	str	r3, [r7, #20]
1a001d2a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001d2c:	3301      	adds	r3, #1
1a001d2e:	613b      	str	r3, [r7, #16]
1a001d30:	6a3b      	ldr	r3, [r7, #32]
1a001d32:	3301      	adds	r3, #1
1a001d34:	60fb      	str	r3, [r7, #12]
1a001d36:	1d3a      	adds	r2, r7, #4
1a001d38:	69fb      	ldr	r3, [r7, #28]
1a001d3a:	4413      	add	r3, r2
1a001d3c:	781b      	ldrb	r3, [r3, #0]
1a001d3e:	60bb      	str	r3, [r7, #8]
1a001d40:	69bb      	ldr	r3, [r7, #24]
1a001d42:	2b00      	cmp	r3, #0
1a001d44:	d102      	bne.n	1a001d4c <Chip_Clock_GetMainPLLHz+0x88>
1a001d46:	697b      	ldr	r3, [r7, #20]
1a001d48:	2b00      	cmp	r3, #0
1a001d4a:	d007      	beq.n	1a001d5c <Chip_Clock_GetMainPLLHz+0x98>
1a001d4c:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a001d4e:	68fb      	ldr	r3, [r7, #12]
1a001d50:	fbb2 f3f3 	udiv	r3, r2, r3
1a001d54:	693a      	ldr	r2, [r7, #16]
1a001d56:	fb02 f303 	mul.w	r3, r2, r3
1a001d5a:	e00a      	b.n	1a001d72 <Chip_Clock_GetMainPLLHz+0xae>
1a001d5c:	68bb      	ldr	r3, [r7, #8]
1a001d5e:	005b      	lsls	r3, r3, #1
1a001d60:	693a      	ldr	r2, [r7, #16]
1a001d62:	fbb2 f3f3 	udiv	r3, r2, r3
1a001d66:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a001d68:	68fa      	ldr	r2, [r7, #12]
1a001d6a:	fbb1 f2f2 	udiv	r2, r1, r2
1a001d6e:	fb02 f303 	mul.w	r3, r2, r3
1a001d72:	4618      	mov	r0, r3
1a001d74:	3730      	adds	r7, #48	; 0x30
1a001d76:	46bd      	mov	sp, r7
1a001d78:	bd80      	pop	{r7, pc}
1a001d7a:	bf00      	nop
1a001d7c:	40050000 	.word	0x40050000
1a001d80:	1a0025ec 	.word	0x1a0025ec

1a001d84 <Chip_Clock_GetDividerSource>:
1a001d84:	b480      	push	{r7}
1a001d86:	b085      	sub	sp, #20
1a001d88:	af00      	add	r7, sp, #0
1a001d8a:	4603      	mov	r3, r0
1a001d8c:	71fb      	strb	r3, [r7, #7]
1a001d8e:	4a0c      	ldr	r2, [pc, #48]	; (1a001dc0 <Chip_Clock_GetDividerSource+0x3c>)
1a001d90:	79fb      	ldrb	r3, [r7, #7]
1a001d92:	3312      	adds	r3, #18
1a001d94:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001d98:	60fb      	str	r3, [r7, #12]
1a001d9a:	68fb      	ldr	r3, [r7, #12]
1a001d9c:	f003 0301 	and.w	r3, r3, #1
1a001da0:	2b00      	cmp	r3, #0
1a001da2:	d001      	beq.n	1a001da8 <Chip_Clock_GetDividerSource+0x24>
1a001da4:	2311      	movs	r3, #17
1a001da6:	e005      	b.n	1a001db4 <Chip_Clock_GetDividerSource+0x30>
1a001da8:	68fb      	ldr	r3, [r7, #12]
1a001daa:	0e1b      	lsrs	r3, r3, #24
1a001dac:	b2db      	uxtb	r3, r3
1a001dae:	f003 031f 	and.w	r3, r3, #31
1a001db2:	b2db      	uxtb	r3, r3
1a001db4:	4618      	mov	r0, r3
1a001db6:	3714      	adds	r7, #20
1a001db8:	46bd      	mov	sp, r7
1a001dba:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001dbe:	4770      	bx	lr
1a001dc0:	40050000 	.word	0x40050000

1a001dc4 <Chip_Clock_GetDividerDivisor>:
1a001dc4:	b480      	push	{r7}
1a001dc6:	b083      	sub	sp, #12
1a001dc8:	af00      	add	r7, sp, #0
1a001dca:	4603      	mov	r3, r0
1a001dcc:	71fb      	strb	r3, [r7, #7]
1a001dce:	4a09      	ldr	r2, [pc, #36]	; (1a001df4 <Chip_Clock_GetDividerDivisor+0x30>)
1a001dd0:	79fb      	ldrb	r3, [r7, #7]
1a001dd2:	3312      	adds	r3, #18
1a001dd4:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001dd8:	089b      	lsrs	r3, r3, #2
1a001dda:	b2da      	uxtb	r2, r3
1a001ddc:	79fb      	ldrb	r3, [r7, #7]
1a001dde:	4906      	ldr	r1, [pc, #24]	; (1a001df8 <Chip_Clock_GetDividerDivisor+0x34>)
1a001de0:	5ccb      	ldrb	r3, [r1, r3]
1a001de2:	4013      	ands	r3, r2
1a001de4:	b2db      	uxtb	r3, r3
1a001de6:	4618      	mov	r0, r3
1a001de8:	370c      	adds	r7, #12
1a001dea:	46bd      	mov	sp, r7
1a001dec:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001df0:	4770      	bx	lr
1a001df2:	bf00      	nop
1a001df4:	40050000 	.word	0x40050000
1a001df8:	1a0025f0 	.word	0x1a0025f0

1a001dfc <Chip_Clock_GetClockInputHz>:
1a001dfc:	b580      	push	{r7, lr}
1a001dfe:	b084      	sub	sp, #16
1a001e00:	af00      	add	r7, sp, #0
1a001e02:	4603      	mov	r3, r0
1a001e04:	71fb      	strb	r3, [r7, #7]
1a001e06:	2300      	movs	r3, #0
1a001e08:	60fb      	str	r3, [r7, #12]
1a001e0a:	79fb      	ldrb	r3, [r7, #7]
1a001e0c:	2b11      	cmp	r3, #17
1a001e0e:	d87f      	bhi.n	1a001f10 <Chip_Clock_GetClockInputHz+0x114>
1a001e10:	a201      	add	r2, pc, #4	; (adr r2, 1a001e18 <Chip_Clock_GetClockInputHz+0x1c>)
1a001e12:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001e16:	bf00      	nop
1a001e18:	1a001e61 	.word	0x1a001e61
1a001e1c:	1a001e69 	.word	0x1a001e69
1a001e20:	1a001e6f 	.word	0x1a001e6f
1a001e24:	1a001e83 	.word	0x1a001e83
1a001e28:	1a001e9d 	.word	0x1a001e9d
1a001e2c:	1a001f11 	.word	0x1a001f11
1a001e30:	1a001ea5 	.word	0x1a001ea5
1a001e34:	1a001ead 	.word	0x1a001ead
1a001e38:	1a001eb5 	.word	0x1a001eb5
1a001e3c:	1a001ebd 	.word	0x1a001ebd
1a001e40:	1a001f11 	.word	0x1a001f11
1a001e44:	1a001f11 	.word	0x1a001f11
1a001e48:	1a001ec5 	.word	0x1a001ec5
1a001e4c:	1a001ed3 	.word	0x1a001ed3
1a001e50:	1a001ee1 	.word	0x1a001ee1
1a001e54:	1a001eef 	.word	0x1a001eef
1a001e58:	1a001efd 	.word	0x1a001efd
1a001e5c:	1a001f0b 	.word	0x1a001f0b
1a001e60:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001e64:	60fb      	str	r3, [r7, #12]
1a001e66:	e056      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001e68:	4b2d      	ldr	r3, [pc, #180]	; (1a001f20 <Chip_Clock_GetClockInputHz+0x124>)
1a001e6a:	60fb      	str	r3, [r7, #12]
1a001e6c:	e053      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001e6e:	4b2d      	ldr	r3, [pc, #180]	; (1a001f24 <Chip_Clock_GetClockInputHz+0x128>)
1a001e70:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001e74:	f003 0307 	and.w	r3, r3, #7
1a001e78:	2b04      	cmp	r3, #4
1a001e7a:	d04b      	beq.n	1a001f14 <Chip_Clock_GetClockInputHz+0x118>
1a001e7c:	4b2a      	ldr	r3, [pc, #168]	; (1a001f28 <Chip_Clock_GetClockInputHz+0x12c>)
1a001e7e:	60fb      	str	r3, [r7, #12]
1a001e80:	e048      	b.n	1a001f14 <Chip_Clock_GetClockInputHz+0x118>
1a001e82:	4b28      	ldr	r3, [pc, #160]	; (1a001f24 <Chip_Clock_GetClockInputHz+0x128>)
1a001e84:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001e88:	f003 0307 	and.w	r3, r3, #7
1a001e8c:	2b04      	cmp	r3, #4
1a001e8e:	d002      	beq.n	1a001e96 <Chip_Clock_GetClockInputHz+0x9a>
1a001e90:	4b25      	ldr	r3, [pc, #148]	; (1a001f28 <Chip_Clock_GetClockInputHz+0x12c>)
1a001e92:	60fb      	str	r3, [r7, #12]
1a001e94:	e03f      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001e96:	4b25      	ldr	r3, [pc, #148]	; (1a001f2c <Chip_Clock_GetClockInputHz+0x130>)
1a001e98:	60fb      	str	r3, [r7, #12]
1a001e9a:	e03c      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001e9c:	4b24      	ldr	r3, [pc, #144]	; (1a001f30 <Chip_Clock_GetClockInputHz+0x134>)
1a001e9e:	681b      	ldr	r3, [r3, #0]
1a001ea0:	60fb      	str	r3, [r7, #12]
1a001ea2:	e038      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001ea4:	4b23      	ldr	r3, [pc, #140]	; (1a001f34 <Chip_Clock_GetClockInputHz+0x138>)
1a001ea6:	681b      	ldr	r3, [r3, #0]
1a001ea8:	60fb      	str	r3, [r7, #12]
1a001eaa:	e034      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001eac:	4b22      	ldr	r3, [pc, #136]	; (1a001f38 <Chip_Clock_GetClockInputHz+0x13c>)
1a001eae:	681b      	ldr	r3, [r3, #0]
1a001eb0:	60fb      	str	r3, [r7, #12]
1a001eb2:	e030      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001eb4:	4b20      	ldr	r3, [pc, #128]	; (1a001f38 <Chip_Clock_GetClockInputHz+0x13c>)
1a001eb6:	685b      	ldr	r3, [r3, #4]
1a001eb8:	60fb      	str	r3, [r7, #12]
1a001eba:	e02c      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001ebc:	f7ff ff02 	bl	1a001cc4 <Chip_Clock_GetMainPLLHz>
1a001ec0:	60f8      	str	r0, [r7, #12]
1a001ec2:	e028      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001ec4:	79fb      	ldrb	r3, [r7, #7]
1a001ec6:	2100      	movs	r1, #0
1a001ec8:	4618      	mov	r0, r3
1a001eca:	f7ff fdef 	bl	1a001aac <Chip_Clock_GetDivRate>
1a001ece:	60f8      	str	r0, [r7, #12]
1a001ed0:	e021      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001ed2:	79fb      	ldrb	r3, [r7, #7]
1a001ed4:	2101      	movs	r1, #1
1a001ed6:	4618      	mov	r0, r3
1a001ed8:	f7ff fde8 	bl	1a001aac <Chip_Clock_GetDivRate>
1a001edc:	60f8      	str	r0, [r7, #12]
1a001ede:	e01a      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001ee0:	79fb      	ldrb	r3, [r7, #7]
1a001ee2:	2102      	movs	r1, #2
1a001ee4:	4618      	mov	r0, r3
1a001ee6:	f7ff fde1 	bl	1a001aac <Chip_Clock_GetDivRate>
1a001eea:	60f8      	str	r0, [r7, #12]
1a001eec:	e013      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001eee:	79fb      	ldrb	r3, [r7, #7]
1a001ef0:	2103      	movs	r1, #3
1a001ef2:	4618      	mov	r0, r3
1a001ef4:	f7ff fdda 	bl	1a001aac <Chip_Clock_GetDivRate>
1a001ef8:	60f8      	str	r0, [r7, #12]
1a001efa:	e00c      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001efc:	79fb      	ldrb	r3, [r7, #7]
1a001efe:	2104      	movs	r1, #4
1a001f00:	4618      	mov	r0, r3
1a001f02:	f7ff fdd3 	bl	1a001aac <Chip_Clock_GetDivRate>
1a001f06:	60f8      	str	r0, [r7, #12]
1a001f08:	e005      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001f0a:	2300      	movs	r3, #0
1a001f0c:	60fb      	str	r3, [r7, #12]
1a001f0e:	e002      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001f10:	bf00      	nop
1a001f12:	e000      	b.n	1a001f16 <Chip_Clock_GetClockInputHz+0x11a>
1a001f14:	bf00      	nop
1a001f16:	68fb      	ldr	r3, [r7, #12]
1a001f18:	4618      	mov	r0, r3
1a001f1a:	3710      	adds	r7, #16
1a001f1c:	46bd      	mov	sp, r7
1a001f1e:	bd80      	pop	{r7, pc}
1a001f20:	00b71b00 	.word	0x00b71b00
1a001f24:	40043000 	.word	0x40043000
1a001f28:	017d7840 	.word	0x017d7840
1a001f2c:	02faf080 	.word	0x02faf080
1a001f30:	1a00251c 	.word	0x1a00251c
1a001f34:	1a002520 	.word	0x1a002520
1a001f38:	10000438 	.word	0x10000438

1a001f3c <Chip_Clock_GetBaseClocktHz>:
1a001f3c:	b580      	push	{r7, lr}
1a001f3e:	b082      	sub	sp, #8
1a001f40:	af00      	add	r7, sp, #0
1a001f42:	4603      	mov	r3, r0
1a001f44:	71fb      	strb	r3, [r7, #7]
1a001f46:	79fb      	ldrb	r3, [r7, #7]
1a001f48:	4618      	mov	r0, r3
1a001f4a:	f000 f857 	bl	1a001ffc <Chip_Clock_GetBaseClock>
1a001f4e:	4603      	mov	r3, r0
1a001f50:	4618      	mov	r0, r3
1a001f52:	f7ff ff53 	bl	1a001dfc <Chip_Clock_GetClockInputHz>
1a001f56:	4603      	mov	r3, r0
1a001f58:	4618      	mov	r0, r3
1a001f5a:	3708      	adds	r7, #8
1a001f5c:	46bd      	mov	sp, r7
1a001f5e:	bd80      	pop	{r7, pc}

1a001f60 <Chip_Clock_SetBaseClock>:
1a001f60:	b490      	push	{r4, r7}
1a001f62:	b084      	sub	sp, #16
1a001f64:	af00      	add	r7, sp, #0
1a001f66:	4604      	mov	r4, r0
1a001f68:	4608      	mov	r0, r1
1a001f6a:	4611      	mov	r1, r2
1a001f6c:	461a      	mov	r2, r3
1a001f6e:	4623      	mov	r3, r4
1a001f70:	71fb      	strb	r3, [r7, #7]
1a001f72:	4603      	mov	r3, r0
1a001f74:	71bb      	strb	r3, [r7, #6]
1a001f76:	460b      	mov	r3, r1
1a001f78:	717b      	strb	r3, [r7, #5]
1a001f7a:	4613      	mov	r3, r2
1a001f7c:	713b      	strb	r3, [r7, #4]
1a001f7e:	4a1d      	ldr	r2, [pc, #116]	; (1a001ff4 <Chip_Clock_SetBaseClock+0x94>)
1a001f80:	79fb      	ldrb	r3, [r7, #7]
1a001f82:	3316      	adds	r3, #22
1a001f84:	009b      	lsls	r3, r3, #2
1a001f86:	4413      	add	r3, r2
1a001f88:	685b      	ldr	r3, [r3, #4]
1a001f8a:	60fb      	str	r3, [r7, #12]
1a001f8c:	79fb      	ldrb	r3, [r7, #7]
1a001f8e:	2b1b      	cmp	r3, #27
1a001f90:	d822      	bhi.n	1a001fd8 <Chip_Clock_SetBaseClock+0x78>
1a001f92:	79bb      	ldrb	r3, [r7, #6]
1a001f94:	2b11      	cmp	r3, #17
1a001f96:	d028      	beq.n	1a001fea <Chip_Clock_SetBaseClock+0x8a>
1a001f98:	68fa      	ldr	r2, [r7, #12]
1a001f9a:	4b17      	ldr	r3, [pc, #92]	; (1a001ff8 <Chip_Clock_SetBaseClock+0x98>)
1a001f9c:	4013      	ands	r3, r2
1a001f9e:	60fb      	str	r3, [r7, #12]
1a001fa0:	797b      	ldrb	r3, [r7, #5]
1a001fa2:	2b00      	cmp	r3, #0
1a001fa4:	d003      	beq.n	1a001fae <Chip_Clock_SetBaseClock+0x4e>
1a001fa6:	68fb      	ldr	r3, [r7, #12]
1a001fa8:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001fac:	60fb      	str	r3, [r7, #12]
1a001fae:	793b      	ldrb	r3, [r7, #4]
1a001fb0:	2b00      	cmp	r3, #0
1a001fb2:	d003      	beq.n	1a001fbc <Chip_Clock_SetBaseClock+0x5c>
1a001fb4:	68fb      	ldr	r3, [r7, #12]
1a001fb6:	f043 0301 	orr.w	r3, r3, #1
1a001fba:	60fb      	str	r3, [r7, #12]
1a001fbc:	79bb      	ldrb	r3, [r7, #6]
1a001fbe:	061b      	lsls	r3, r3, #24
1a001fc0:	461a      	mov	r2, r3
1a001fc2:	68fb      	ldr	r3, [r7, #12]
1a001fc4:	4313      	orrs	r3, r2
1a001fc6:	60fb      	str	r3, [r7, #12]
1a001fc8:	4a0a      	ldr	r2, [pc, #40]	; (1a001ff4 <Chip_Clock_SetBaseClock+0x94>)
1a001fca:	79fb      	ldrb	r3, [r7, #7]
1a001fcc:	3316      	adds	r3, #22
1a001fce:	009b      	lsls	r3, r3, #2
1a001fd0:	4413      	add	r3, r2
1a001fd2:	68fa      	ldr	r2, [r7, #12]
1a001fd4:	605a      	str	r2, [r3, #4]
1a001fd6:	e008      	b.n	1a001fea <Chip_Clock_SetBaseClock+0x8a>
1a001fd8:	4906      	ldr	r1, [pc, #24]	; (1a001ff4 <Chip_Clock_SetBaseClock+0x94>)
1a001fda:	79fb      	ldrb	r3, [r7, #7]
1a001fdc:	68fa      	ldr	r2, [r7, #12]
1a001fde:	f042 0201 	orr.w	r2, r2, #1
1a001fe2:	3316      	adds	r3, #22
1a001fe4:	009b      	lsls	r3, r3, #2
1a001fe6:	440b      	add	r3, r1
1a001fe8:	605a      	str	r2, [r3, #4]
1a001fea:	bf00      	nop
1a001fec:	3710      	adds	r7, #16
1a001fee:	46bd      	mov	sp, r7
1a001ff0:	bc90      	pop	{r4, r7}
1a001ff2:	4770      	bx	lr
1a001ff4:	40050000 	.word	0x40050000
1a001ff8:	e0fff7fe 	.word	0xe0fff7fe

1a001ffc <Chip_Clock_GetBaseClock>:
1a001ffc:	b480      	push	{r7}
1a001ffe:	b085      	sub	sp, #20
1a002000:	af00      	add	r7, sp, #0
1a002002:	4603      	mov	r3, r0
1a002004:	71fb      	strb	r3, [r7, #7]
1a002006:	79fb      	ldrb	r3, [r7, #7]
1a002008:	2b1b      	cmp	r3, #27
1a00200a:	d901      	bls.n	1a002010 <Chip_Clock_GetBaseClock+0x14>
1a00200c:	2311      	movs	r3, #17
1a00200e:	e013      	b.n	1a002038 <Chip_Clock_GetBaseClock+0x3c>
1a002010:	4a0c      	ldr	r2, [pc, #48]	; (1a002044 <Chip_Clock_GetBaseClock+0x48>)
1a002012:	79fb      	ldrb	r3, [r7, #7]
1a002014:	3316      	adds	r3, #22
1a002016:	009b      	lsls	r3, r3, #2
1a002018:	4413      	add	r3, r2
1a00201a:	685b      	ldr	r3, [r3, #4]
1a00201c:	60fb      	str	r3, [r7, #12]
1a00201e:	68fb      	ldr	r3, [r7, #12]
1a002020:	f003 0301 	and.w	r3, r3, #1
1a002024:	2b00      	cmp	r3, #0
1a002026:	d001      	beq.n	1a00202c <Chip_Clock_GetBaseClock+0x30>
1a002028:	2311      	movs	r3, #17
1a00202a:	e005      	b.n	1a002038 <Chip_Clock_GetBaseClock+0x3c>
1a00202c:	68fb      	ldr	r3, [r7, #12]
1a00202e:	0e1b      	lsrs	r3, r3, #24
1a002030:	b2db      	uxtb	r3, r3
1a002032:	f003 031f 	and.w	r3, r3, #31
1a002036:	b2db      	uxtb	r3, r3
1a002038:	4618      	mov	r0, r3
1a00203a:	3714      	adds	r7, #20
1a00203c:	46bd      	mov	sp, r7
1a00203e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002042:	4770      	bx	lr
1a002044:	40050000 	.word	0x40050000

1a002048 <Chip_Clock_EnableOpts>:
1a002048:	b480      	push	{r7}
1a00204a:	b085      	sub	sp, #20
1a00204c:	af00      	add	r7, sp, #0
1a00204e:	603b      	str	r3, [r7, #0]
1a002050:	4603      	mov	r3, r0
1a002052:	80fb      	strh	r3, [r7, #6]
1a002054:	460b      	mov	r3, r1
1a002056:	717b      	strb	r3, [r7, #5]
1a002058:	4613      	mov	r3, r2
1a00205a:	713b      	strb	r3, [r7, #4]
1a00205c:	2301      	movs	r3, #1
1a00205e:	60fb      	str	r3, [r7, #12]
1a002060:	797b      	ldrb	r3, [r7, #5]
1a002062:	2b00      	cmp	r3, #0
1a002064:	d003      	beq.n	1a00206e <Chip_Clock_EnableOpts+0x26>
1a002066:	68fb      	ldr	r3, [r7, #12]
1a002068:	f043 0302 	orr.w	r3, r3, #2
1a00206c:	60fb      	str	r3, [r7, #12]
1a00206e:	793b      	ldrb	r3, [r7, #4]
1a002070:	2b00      	cmp	r3, #0
1a002072:	d003      	beq.n	1a00207c <Chip_Clock_EnableOpts+0x34>
1a002074:	68fb      	ldr	r3, [r7, #12]
1a002076:	f043 0304 	orr.w	r3, r3, #4
1a00207a:	60fb      	str	r3, [r7, #12]
1a00207c:	683b      	ldr	r3, [r7, #0]
1a00207e:	2b02      	cmp	r3, #2
1a002080:	d103      	bne.n	1a00208a <Chip_Clock_EnableOpts+0x42>
1a002082:	68fb      	ldr	r3, [r7, #12]
1a002084:	f043 0320 	orr.w	r3, r3, #32
1a002088:	60fb      	str	r3, [r7, #12]
1a00208a:	88fb      	ldrh	r3, [r7, #6]
1a00208c:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002090:	d308      	bcc.n	1a0020a4 <Chip_Clock_EnableOpts+0x5c>
1a002092:	490a      	ldr	r1, [pc, #40]	; (1a0020bc <Chip_Clock_EnableOpts+0x74>)
1a002094:	88fb      	ldrh	r3, [r7, #6]
1a002096:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a00209a:	3320      	adds	r3, #32
1a00209c:	68fa      	ldr	r2, [r7, #12]
1a00209e:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0020a2:	e005      	b.n	1a0020b0 <Chip_Clock_EnableOpts+0x68>
1a0020a4:	4906      	ldr	r1, [pc, #24]	; (1a0020c0 <Chip_Clock_EnableOpts+0x78>)
1a0020a6:	88fb      	ldrh	r3, [r7, #6]
1a0020a8:	3320      	adds	r3, #32
1a0020aa:	68fa      	ldr	r2, [r7, #12]
1a0020ac:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0020b0:	bf00      	nop
1a0020b2:	3714      	adds	r7, #20
1a0020b4:	46bd      	mov	sp, r7
1a0020b6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0020ba:	4770      	bx	lr
1a0020bc:	40052000 	.word	0x40052000
1a0020c0:	40051000 	.word	0x40051000

1a0020c4 <Chip_Clock_Enable>:
1a0020c4:	b480      	push	{r7}
1a0020c6:	b083      	sub	sp, #12
1a0020c8:	af00      	add	r7, sp, #0
1a0020ca:	4603      	mov	r3, r0
1a0020cc:	80fb      	strh	r3, [r7, #6]
1a0020ce:	88fb      	ldrh	r3, [r7, #6]
1a0020d0:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a0020d4:	d310      	bcc.n	1a0020f8 <Chip_Clock_Enable+0x34>
1a0020d6:	4a11      	ldr	r2, [pc, #68]	; (1a00211c <Chip_Clock_Enable+0x58>)
1a0020d8:	88fb      	ldrh	r3, [r7, #6]
1a0020da:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0020de:	3320      	adds	r3, #32
1a0020e0:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a0020e4:	490d      	ldr	r1, [pc, #52]	; (1a00211c <Chip_Clock_Enable+0x58>)
1a0020e6:	88fb      	ldrh	r3, [r7, #6]
1a0020e8:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0020ec:	f042 0201 	orr.w	r2, r2, #1
1a0020f0:	3320      	adds	r3, #32
1a0020f2:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0020f6:	e00b      	b.n	1a002110 <Chip_Clock_Enable+0x4c>
1a0020f8:	4a09      	ldr	r2, [pc, #36]	; (1a002120 <Chip_Clock_Enable+0x5c>)
1a0020fa:	88fb      	ldrh	r3, [r7, #6]
1a0020fc:	3320      	adds	r3, #32
1a0020fe:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a002102:	4907      	ldr	r1, [pc, #28]	; (1a002120 <Chip_Clock_Enable+0x5c>)
1a002104:	88fb      	ldrh	r3, [r7, #6]
1a002106:	f042 0201 	orr.w	r2, r2, #1
1a00210a:	3320      	adds	r3, #32
1a00210c:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002110:	bf00      	nop
1a002112:	370c      	adds	r7, #12
1a002114:	46bd      	mov	sp, r7
1a002116:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00211a:	4770      	bx	lr
1a00211c:	40052000 	.word	0x40052000
1a002120:	40051000 	.word	0x40051000

1a002124 <Chip_Clock_GetRate>:
1a002124:	b580      	push	{r7, lr}
1a002126:	b086      	sub	sp, #24
1a002128:	af00      	add	r7, sp, #0
1a00212a:	4603      	mov	r3, r0
1a00212c:	80fb      	strh	r3, [r7, #6]
1a00212e:	88fb      	ldrh	r3, [r7, #6]
1a002130:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002134:	d308      	bcc.n	1a002148 <Chip_Clock_GetRate+0x24>
1a002136:	4a1b      	ldr	r2, [pc, #108]	; (1a0021a4 <Chip_Clock_GetRate+0x80>)
1a002138:	88fb      	ldrh	r3, [r7, #6]
1a00213a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a00213e:	3320      	adds	r3, #32
1a002140:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a002144:	617b      	str	r3, [r7, #20]
1a002146:	e005      	b.n	1a002154 <Chip_Clock_GetRate+0x30>
1a002148:	4a17      	ldr	r2, [pc, #92]	; (1a0021a8 <Chip_Clock_GetRate+0x84>)
1a00214a:	88fb      	ldrh	r3, [r7, #6]
1a00214c:	3320      	adds	r3, #32
1a00214e:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a002152:	617b      	str	r3, [r7, #20]
1a002154:	697b      	ldr	r3, [r7, #20]
1a002156:	f003 0301 	and.w	r3, r3, #1
1a00215a:	2b00      	cmp	r3, #0
1a00215c:	d01b      	beq.n	1a002196 <Chip_Clock_GetRate+0x72>
1a00215e:	88fb      	ldrh	r3, [r7, #6]
1a002160:	4618      	mov	r0, r3
1a002162:	f7ff fcc3 	bl	1a001aec <Chip_Clock_FindBaseClock>
1a002166:	4603      	mov	r3, r0
1a002168:	72fb      	strb	r3, [r7, #11]
1a00216a:	7afb      	ldrb	r3, [r7, #11]
1a00216c:	4618      	mov	r0, r3
1a00216e:	f7ff fee5 	bl	1a001f3c <Chip_Clock_GetBaseClocktHz>
1a002172:	60f8      	str	r0, [r7, #12]
1a002174:	697b      	ldr	r3, [r7, #20]
1a002176:	095b      	lsrs	r3, r3, #5
1a002178:	f003 0307 	and.w	r3, r3, #7
1a00217c:	2b00      	cmp	r3, #0
1a00217e:	d102      	bne.n	1a002186 <Chip_Clock_GetRate+0x62>
1a002180:	2301      	movs	r3, #1
1a002182:	613b      	str	r3, [r7, #16]
1a002184:	e001      	b.n	1a00218a <Chip_Clock_GetRate+0x66>
1a002186:	2302      	movs	r3, #2
1a002188:	613b      	str	r3, [r7, #16]
1a00218a:	68fa      	ldr	r2, [r7, #12]
1a00218c:	693b      	ldr	r3, [r7, #16]
1a00218e:	fbb2 f3f3 	udiv	r3, r2, r3
1a002192:	60fb      	str	r3, [r7, #12]
1a002194:	e001      	b.n	1a00219a <Chip_Clock_GetRate+0x76>
1a002196:	2300      	movs	r3, #0
1a002198:	60fb      	str	r3, [r7, #12]
1a00219a:	68fb      	ldr	r3, [r7, #12]
1a00219c:	4618      	mov	r0, r3
1a00219e:	3718      	adds	r7, #24
1a0021a0:	46bd      	mov	sp, r7
1a0021a2:	bd80      	pop	{r7, pc}
1a0021a4:	40052000 	.word	0x40052000
1a0021a8:	40051000 	.word	0x40051000

1a0021ac <SystemCoreClockUpdate>:
1a0021ac:	b580      	push	{r7, lr}
1a0021ae:	af00      	add	r7, sp, #0
1a0021b0:	2069      	movs	r0, #105	; 0x69
1a0021b2:	f7ff ffb7 	bl	1a002124 <Chip_Clock_GetRate>
1a0021b6:	4602      	mov	r2, r0
1a0021b8:	4b01      	ldr	r3, [pc, #4]	; (1a0021c0 <SystemCoreClockUpdate+0x14>)
1a0021ba:	601a      	str	r2, [r3, #0]
1a0021bc:	bf00      	nop
1a0021be:	bd80      	pop	{r7, pc}
1a0021c0:	100004a4 	.word	0x100004a4

1a0021c4 <Chip_GPIO_Init>:
1a0021c4:	b480      	push	{r7}
1a0021c6:	b083      	sub	sp, #12
1a0021c8:	af00      	add	r7, sp, #0
1a0021ca:	6078      	str	r0, [r7, #4]
1a0021cc:	bf00      	nop
1a0021ce:	370c      	adds	r7, #12
1a0021d0:	46bd      	mov	sp, r7
1a0021d2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021d6:	4770      	bx	lr

1a0021d8 <Chip_TIMER_GetClockIndex>:
1a0021d8:	b480      	push	{r7}
1a0021da:	b085      	sub	sp, #20
1a0021dc:	af00      	add	r7, sp, #0
1a0021de:	6078      	str	r0, [r7, #4]
1a0021e0:	687b      	ldr	r3, [r7, #4]
1a0021e2:	4a0e      	ldr	r2, [pc, #56]	; (1a00221c <Chip_TIMER_GetClockIndex+0x44>)
1a0021e4:	4293      	cmp	r3, r2
1a0021e6:	d102      	bne.n	1a0021ee <Chip_TIMER_GetClockIndex+0x16>
1a0021e8:	23a4      	movs	r3, #164	; 0xa4
1a0021ea:	81fb      	strh	r3, [r7, #14]
1a0021ec:	e00f      	b.n	1a00220e <Chip_TIMER_GetClockIndex+0x36>
1a0021ee:	687b      	ldr	r3, [r7, #4]
1a0021f0:	4a0b      	ldr	r2, [pc, #44]	; (1a002220 <Chip_TIMER_GetClockIndex+0x48>)
1a0021f2:	4293      	cmp	r3, r2
1a0021f4:	d102      	bne.n	1a0021fc <Chip_TIMER_GetClockIndex+0x24>
1a0021f6:	23a3      	movs	r3, #163	; 0xa3
1a0021f8:	81fb      	strh	r3, [r7, #14]
1a0021fa:	e008      	b.n	1a00220e <Chip_TIMER_GetClockIndex+0x36>
1a0021fc:	687b      	ldr	r3, [r7, #4]
1a0021fe:	4a09      	ldr	r2, [pc, #36]	; (1a002224 <Chip_TIMER_GetClockIndex+0x4c>)
1a002200:	4293      	cmp	r3, r2
1a002202:	d102      	bne.n	1a00220a <Chip_TIMER_GetClockIndex+0x32>
1a002204:	2385      	movs	r3, #133	; 0x85
1a002206:	81fb      	strh	r3, [r7, #14]
1a002208:	e001      	b.n	1a00220e <Chip_TIMER_GetClockIndex+0x36>
1a00220a:	2384      	movs	r3, #132	; 0x84
1a00220c:	81fb      	strh	r3, [r7, #14]
1a00220e:	89fb      	ldrh	r3, [r7, #14]
1a002210:	4618      	mov	r0, r3
1a002212:	3714      	adds	r7, #20
1a002214:	46bd      	mov	sp, r7
1a002216:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00221a:	4770      	bx	lr
1a00221c:	400c4000 	.word	0x400c4000
1a002220:	400c3000 	.word	0x400c3000
1a002224:	40085000 	.word	0x40085000

1a002228 <Chip_TIMER_Init>:
1a002228:	b580      	push	{r7, lr}
1a00222a:	b082      	sub	sp, #8
1a00222c:	af00      	add	r7, sp, #0
1a00222e:	6078      	str	r0, [r7, #4]
1a002230:	6878      	ldr	r0, [r7, #4]
1a002232:	f7ff ffd1 	bl	1a0021d8 <Chip_TIMER_GetClockIndex>
1a002236:	4603      	mov	r3, r0
1a002238:	4618      	mov	r0, r3
1a00223a:	f7ff ff43 	bl	1a0020c4 <Chip_Clock_Enable>
1a00223e:	bf00      	nop
1a002240:	3708      	adds	r7, #8
1a002242:	46bd      	mov	sp, r7
1a002244:	bd80      	pop	{r7, pc}
1a002246:	Address 0x000000001a002246 is out of bounds.


1a002248 <__itoa>:
1a002248:	1e93      	subs	r3, r2, #2
1a00224a:	2b22      	cmp	r3, #34	; 0x22
1a00224c:	d815      	bhi.n	1a00227a <__itoa+0x32>
1a00224e:	2a0a      	cmp	r2, #10
1a002250:	b510      	push	{r4, lr}
1a002252:	460b      	mov	r3, r1
1a002254:	d005      	beq.n	1a002262 <__itoa+0x1a>
1a002256:	460c      	mov	r4, r1
1a002258:	4619      	mov	r1, r3
1a00225a:	f000 f91f 	bl	1a00249c <__utoa>
1a00225e:	4620      	mov	r0, r4
1a002260:	bd10      	pop	{r4, pc}
1a002262:	2800      	cmp	r0, #0
1a002264:	daf7      	bge.n	1a002256 <__itoa+0xe>
1a002266:	242d      	movs	r4, #45	; 0x2d
1a002268:	f803 4b01 	strb.w	r4, [r3], #1
1a00226c:	4240      	negs	r0, r0
1a00226e:	460c      	mov	r4, r1
1a002270:	4619      	mov	r1, r3
1a002272:	f000 f913 	bl	1a00249c <__utoa>
1a002276:	4620      	mov	r0, r4
1a002278:	bd10      	pop	{r4, pc}
1a00227a:	2000      	movs	r0, #0
1a00227c:	7008      	strb	r0, [r1, #0]
1a00227e:	4770      	bx	lr

1a002280 <itoa>:
1a002280:	f7ff bfe2 	b.w	1a002248 <__itoa>

1a002284 <memcpy>:
1a002284:	4684      	mov	ip, r0
1a002286:	ea41 0300 	orr.w	r3, r1, r0
1a00228a:	f013 0303 	ands.w	r3, r3, #3
1a00228e:	d16d      	bne.n	1a00236c <memcpy+0xe8>
1a002290:	3a40      	subs	r2, #64	; 0x40
1a002292:	d341      	bcc.n	1a002318 <memcpy+0x94>
1a002294:	f851 3b04 	ldr.w	r3, [r1], #4
1a002298:	f840 3b04 	str.w	r3, [r0], #4
1a00229c:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022a0:	f840 3b04 	str.w	r3, [r0], #4
1a0022a4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022a8:	f840 3b04 	str.w	r3, [r0], #4
1a0022ac:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022b0:	f840 3b04 	str.w	r3, [r0], #4
1a0022b4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022b8:	f840 3b04 	str.w	r3, [r0], #4
1a0022bc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022c0:	f840 3b04 	str.w	r3, [r0], #4
1a0022c4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022c8:	f840 3b04 	str.w	r3, [r0], #4
1a0022cc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022d0:	f840 3b04 	str.w	r3, [r0], #4
1a0022d4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022d8:	f840 3b04 	str.w	r3, [r0], #4
1a0022dc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022e0:	f840 3b04 	str.w	r3, [r0], #4
1a0022e4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022e8:	f840 3b04 	str.w	r3, [r0], #4
1a0022ec:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022f0:	f840 3b04 	str.w	r3, [r0], #4
1a0022f4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0022f8:	f840 3b04 	str.w	r3, [r0], #4
1a0022fc:	f851 3b04 	ldr.w	r3, [r1], #4
1a002300:	f840 3b04 	str.w	r3, [r0], #4
1a002304:	f851 3b04 	ldr.w	r3, [r1], #4
1a002308:	f840 3b04 	str.w	r3, [r0], #4
1a00230c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002310:	f840 3b04 	str.w	r3, [r0], #4
1a002314:	3a40      	subs	r2, #64	; 0x40
1a002316:	d2bd      	bcs.n	1a002294 <memcpy+0x10>
1a002318:	3230      	adds	r2, #48	; 0x30
1a00231a:	d311      	bcc.n	1a002340 <memcpy+0xbc>
1a00231c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002320:	f840 3b04 	str.w	r3, [r0], #4
1a002324:	f851 3b04 	ldr.w	r3, [r1], #4
1a002328:	f840 3b04 	str.w	r3, [r0], #4
1a00232c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002330:	f840 3b04 	str.w	r3, [r0], #4
1a002334:	f851 3b04 	ldr.w	r3, [r1], #4
1a002338:	f840 3b04 	str.w	r3, [r0], #4
1a00233c:	3a10      	subs	r2, #16
1a00233e:	d2ed      	bcs.n	1a00231c <memcpy+0x98>
1a002340:	320c      	adds	r2, #12
1a002342:	d305      	bcc.n	1a002350 <memcpy+0xcc>
1a002344:	f851 3b04 	ldr.w	r3, [r1], #4
1a002348:	f840 3b04 	str.w	r3, [r0], #4
1a00234c:	3a04      	subs	r2, #4
1a00234e:	d2f9      	bcs.n	1a002344 <memcpy+0xc0>
1a002350:	3204      	adds	r2, #4
1a002352:	d008      	beq.n	1a002366 <memcpy+0xe2>
1a002354:	07d2      	lsls	r2, r2, #31
1a002356:	bf1c      	itt	ne
1a002358:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a00235c:	f800 3b01 	strbne.w	r3, [r0], #1
1a002360:	d301      	bcc.n	1a002366 <memcpy+0xe2>
1a002362:	880b      	ldrh	r3, [r1, #0]
1a002364:	8003      	strh	r3, [r0, #0]
1a002366:	4660      	mov	r0, ip
1a002368:	4770      	bx	lr
1a00236a:	bf00      	nop
1a00236c:	2a08      	cmp	r2, #8
1a00236e:	d313      	bcc.n	1a002398 <memcpy+0x114>
1a002370:	078b      	lsls	r3, r1, #30
1a002372:	d08d      	beq.n	1a002290 <memcpy+0xc>
1a002374:	f010 0303 	ands.w	r3, r0, #3
1a002378:	d08a      	beq.n	1a002290 <memcpy+0xc>
1a00237a:	f1c3 0304 	rsb	r3, r3, #4
1a00237e:	1ad2      	subs	r2, r2, r3
1a002380:	07db      	lsls	r3, r3, #31
1a002382:	bf1c      	itt	ne
1a002384:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a002388:	f800 3b01 	strbne.w	r3, [r0], #1
1a00238c:	d380      	bcc.n	1a002290 <memcpy+0xc>
1a00238e:	f831 3b02 	ldrh.w	r3, [r1], #2
1a002392:	f820 3b02 	strh.w	r3, [r0], #2
1a002396:	e77b      	b.n	1a002290 <memcpy+0xc>
1a002398:	3a04      	subs	r2, #4
1a00239a:	d3d9      	bcc.n	1a002350 <memcpy+0xcc>
1a00239c:	3a01      	subs	r2, #1
1a00239e:	f811 3b01 	ldrb.w	r3, [r1], #1
1a0023a2:	f800 3b01 	strb.w	r3, [r0], #1
1a0023a6:	d2f9      	bcs.n	1a00239c <memcpy+0x118>
1a0023a8:	780b      	ldrb	r3, [r1, #0]
1a0023aa:	7003      	strb	r3, [r0, #0]
1a0023ac:	784b      	ldrb	r3, [r1, #1]
1a0023ae:	7043      	strb	r3, [r0, #1]
1a0023b0:	788b      	ldrb	r3, [r1, #2]
1a0023b2:	7083      	strb	r3, [r0, #2]
1a0023b4:	4660      	mov	r0, ip
1a0023b6:	4770      	bx	lr
1a0023b8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0023bc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff

1a0023c0 <strlen>:
1a0023c0:	f890 f000 	pld	[r0]
1a0023c4:	e96d 4502 	strd	r4, r5, [sp, #-8]!
1a0023c8:	f020 0107 	bic.w	r1, r0, #7
1a0023cc:	f06f 0c00 	mvn.w	ip, #0
1a0023d0:	f010 0407 	ands.w	r4, r0, #7
1a0023d4:	f891 f020 	pld	[r1, #32]
1a0023d8:	f040 8049 	bne.w	1a00246e <strlen+0xae>
1a0023dc:	f04f 0400 	mov.w	r4, #0
1a0023e0:	f06f 0007 	mvn.w	r0, #7
1a0023e4:	e9d1 2300 	ldrd	r2, r3, [r1]
1a0023e8:	f891 f040 	pld	[r1, #64]	; 0x40
1a0023ec:	f100 0008 	add.w	r0, r0, #8
1a0023f0:	fa82 f24c 	uadd8	r2, r2, ip
1a0023f4:	faa4 f28c 	sel	r2, r4, ip
1a0023f8:	fa83 f34c 	uadd8	r3, r3, ip
1a0023fc:	faa2 f38c 	sel	r3, r2, ip
1a002400:	bb4b      	cbnz	r3, 1a002456 <strlen+0x96>
1a002402:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
1a002406:	fa82 f24c 	uadd8	r2, r2, ip
1a00240a:	f100 0008 	add.w	r0, r0, #8
1a00240e:	faa4 f28c 	sel	r2, r4, ip
1a002412:	fa83 f34c 	uadd8	r3, r3, ip
1a002416:	faa2 f38c 	sel	r3, r2, ip
1a00241a:	b9e3      	cbnz	r3, 1a002456 <strlen+0x96>
1a00241c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
1a002420:	fa82 f24c 	uadd8	r2, r2, ip
1a002424:	f100 0008 	add.w	r0, r0, #8
1a002428:	faa4 f28c 	sel	r2, r4, ip
1a00242c:	fa83 f34c 	uadd8	r3, r3, ip
1a002430:	faa2 f38c 	sel	r3, r2, ip
1a002434:	b97b      	cbnz	r3, 1a002456 <strlen+0x96>
1a002436:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
1a00243a:	f101 0120 	add.w	r1, r1, #32
1a00243e:	fa82 f24c 	uadd8	r2, r2, ip
1a002442:	f100 0008 	add.w	r0, r0, #8
1a002446:	faa4 f28c 	sel	r2, r4, ip
1a00244a:	fa83 f34c 	uadd8	r3, r3, ip
1a00244e:	faa2 f38c 	sel	r3, r2, ip
1a002452:	2b00      	cmp	r3, #0
1a002454:	d0c6      	beq.n	1a0023e4 <strlen+0x24>
1a002456:	2a00      	cmp	r2, #0
1a002458:	bf04      	itt	eq
1a00245a:	3004      	addeq	r0, #4
1a00245c:	461a      	moveq	r2, r3
1a00245e:	ba12      	rev	r2, r2
1a002460:	fab2 f282 	clz	r2, r2
1a002464:	e8fd 4502 	ldrd	r4, r5, [sp], #8
1a002468:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
1a00246c:	4770      	bx	lr
1a00246e:	e9d1 2300 	ldrd	r2, r3, [r1]
1a002472:	f004 0503 	and.w	r5, r4, #3
1a002476:	f1c4 0000 	rsb	r0, r4, #0
1a00247a:	ea4f 05c5 	mov.w	r5, r5, lsl #3
1a00247e:	f014 0f04 	tst.w	r4, #4
1a002482:	f891 f040 	pld	[r1, #64]	; 0x40
1a002486:	fa0c f505 	lsl.w	r5, ip, r5
1a00248a:	ea62 0205 	orn	r2, r2, r5
1a00248e:	bf1c      	itt	ne
1a002490:	ea63 0305 	ornne	r3, r3, r5
1a002494:	4662      	movne	r2, ip
1a002496:	f04f 0400 	mov.w	r4, #0
1a00249a:	e7a9      	b.n	1a0023f0 <strlen+0x30>

1a00249c <__utoa>:
1a00249c:	b4f0      	push	{r4, r5, r6, r7}
1a00249e:	f8df c078 	ldr.w	ip, [pc, #120]	; 1a002518 <__utoa+0x7c>
1a0024a2:	4617      	mov	r7, r2
1a0024a4:	4604      	mov	r4, r0
1a0024a6:	460e      	mov	r6, r1
1a0024a8:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
1a0024ac:	b08a      	sub	sp, #40	; 0x28
1a0024ae:	466d      	mov	r5, sp
1a0024b0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0024b2:	e8bc 000f 	ldmia.w	ip!, {r0, r1, r2, r3}
1a0024b6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0024b8:	e89c 0003 	ldmia.w	ip, {r0, r1}
1a0024bc:	1ebb      	subs	r3, r7, #2
1a0024be:	f845 0b04 	str.w	r0, [r5], #4
1a0024c2:	2b22      	cmp	r3, #34	; 0x22
1a0024c4:	7029      	strb	r1, [r5, #0]
1a0024c6:	d823      	bhi.n	1a002510 <__utoa+0x74>
1a0024c8:	1e75      	subs	r5, r6, #1
1a0024ca:	4628      	mov	r0, r5
1a0024cc:	2200      	movs	r2, #0
1a0024ce:	e000      	b.n	1a0024d2 <__utoa+0x36>
1a0024d0:	461a      	mov	r2, r3
1a0024d2:	fbb4 f1f7 	udiv	r1, r4, r7
1a0024d6:	ab0a      	add	r3, sp, #40	; 0x28
1a0024d8:	fb07 4411 	mls	r4, r7, r1, r4
1a0024dc:	4423      	add	r3, r4
1a0024de:	460c      	mov	r4, r1
1a0024e0:	f813 3c28 	ldrb.w	r3, [r3, #-40]
1a0024e4:	f800 3f01 	strb.w	r3, [r0, #1]!
1a0024e8:	1c53      	adds	r3, r2, #1
1a0024ea:	2900      	cmp	r1, #0
1a0024ec:	d1f0      	bne.n	1a0024d0 <__utoa+0x34>
1a0024ee:	54f1      	strb	r1, [r6, r3]
1a0024f0:	b152      	cbz	r2, 1a002508 <__utoa+0x6c>
1a0024f2:	4433      	add	r3, r6
1a0024f4:	f813 1d01 	ldrb.w	r1, [r3, #-1]!
1a0024f8:	f815 0f01 	ldrb.w	r0, [r5, #1]!
1a0024fc:	7029      	strb	r1, [r5, #0]
1a0024fe:	3401      	adds	r4, #1
1a002500:	1b11      	subs	r1, r2, r4
1a002502:	428c      	cmp	r4, r1
1a002504:	7018      	strb	r0, [r3, #0]
1a002506:	dbf5      	blt.n	1a0024f4 <__utoa+0x58>
1a002508:	4630      	mov	r0, r6
1a00250a:	b00a      	add	sp, #40	; 0x28
1a00250c:	bcf0      	pop	{r4, r5, r6, r7}
1a00250e:	4770      	bx	lr
1a002510:	2000      	movs	r0, #0
1a002512:	7030      	strb	r0, [r6, #0]
1a002514:	e7f9      	b.n	1a00250a <__utoa+0x6e>
1a002516:	bf00      	nop
1a002518:	1a0025f8 	.word	0x1a0025f8

1a00251c <ExtRateIn>:
1a00251c:	00000000                                ....

1a002520 <OscRateIn>:
1a002520:	00b71b00 ff000d0a                       ........

1a002528 <InitClkStates>:
1a002528:	00010100 00010909 0001090a 01010701     ................
1a002538:	00010902 00010906 0101090c 0001090d     ................
1a002548:	0001090e 0001090f 00010910 00010911     ................
1a002558:	00010912 00010913 00011114 00011119     ................
1a002568:	0001111a 0001111b                       ........

1a002570 <UART_PClock>:
1a002570:	00820081 00a200a1                       ........

1a002578 <UART_BClock>:
1a002578:	01a201c2 01620182                       ......b.

1a002580 <periph_to_base>:
1a002580:	00050000 0020000a 00090024 00400040     ...... .$...@.@.
1a002590:	00600005 000400a6 00c300c0 00e00002     ..`.............
1a0025a0:	000100e0 01000100 01200003 00060120     .......... . ...
1a0025b0:	01400140 0142000c 00190142 01620162     @.@...B.B...b.b.
1a0025c0:	01820013 00120182 01a201a2 01c20011     ................
1a0025d0:	001001c2 01e201e2 0202000f 000e0202     ................
1a0025e0:	02220222 0223000d 001c0223 08040201     "."...#.#.......
1a0025f0:	0f0f0f03 ffff00ff 33323130 37363534     ........01234567
1a002600:	62613938 66656463 6a696867 6e6d6c6b     89abcdefghijklmn
1a002610:	7271706f 76757473 7a797877 00000000     opqrstuvwxyz....

Disassembly of section .init:

1a002620 <_init>:
1a002620:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002622:	bf00      	nop

Disassembly of section .fini:

1a002624 <_fini>:
1a002624:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002626:	bf00      	nop
