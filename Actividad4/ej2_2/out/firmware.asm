
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 11 08 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	d5 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a 61 07 00 1a     ............a...
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000cc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a002534 	.word	0x1a002534
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000430 	.word	0x00000430

1a000120 <__bss_section_table_>:
1a000120:	10000430 	.word	0x10000430
1a000124:	00000458 	.word	0x00000458

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

1a0001d4 <SysTick_Handler>:
1a0001d4:	b480      	push	{r7}
1a0001d6:	af00      	add	r7, sp, #0
1a0001d8:	e7fe      	b.n	1a0001d8 <SysTick_Handler+0x4>

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

1a00046e <Chip_GPIO_ReadPortBit>:
1a00046e:	b480      	push	{r7}
1a000470:	b085      	sub	sp, #20
1a000472:	af00      	add	r7, sp, #0
1a000474:	60f8      	str	r0, [r7, #12]
1a000476:	60b9      	str	r1, [r7, #8]
1a000478:	4613      	mov	r3, r2
1a00047a:	71fb      	strb	r3, [r7, #7]
1a00047c:	79fb      	ldrb	r3, [r7, #7]
1a00047e:	68f9      	ldr	r1, [r7, #12]
1a000480:	68ba      	ldr	r2, [r7, #8]
1a000482:	0152      	lsls	r2, r2, #5
1a000484:	440a      	add	r2, r1
1a000486:	4413      	add	r3, r2
1a000488:	781b      	ldrb	r3, [r3, #0]
1a00048a:	b2db      	uxtb	r3, r3
1a00048c:	2b00      	cmp	r3, #0
1a00048e:	bf14      	ite	ne
1a000490:	2301      	movne	r3, #1
1a000492:	2300      	moveq	r3, #0
1a000494:	b2db      	uxtb	r3, r3
1a000496:	4618      	mov	r0, r3
1a000498:	3714      	adds	r7, #20
1a00049a:	46bd      	mov	sp, r7
1a00049c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004a0:	4770      	bx	lr

1a0004a2 <Chip_GPIO_SetPinDIROutput>:
1a0004a2:	b480      	push	{r7}
1a0004a4:	b083      	sub	sp, #12
1a0004a6:	af00      	add	r7, sp, #0
1a0004a8:	6078      	str	r0, [r7, #4]
1a0004aa:	460b      	mov	r3, r1
1a0004ac:	70fb      	strb	r3, [r7, #3]
1a0004ae:	4613      	mov	r3, r2
1a0004b0:	70bb      	strb	r3, [r7, #2]
1a0004b2:	78fa      	ldrb	r2, [r7, #3]
1a0004b4:	687b      	ldr	r3, [r7, #4]
1a0004b6:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0004ba:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0004be:	78bb      	ldrb	r3, [r7, #2]
1a0004c0:	2201      	movs	r2, #1
1a0004c2:	fa02 f303 	lsl.w	r3, r2, r3
1a0004c6:	78fa      	ldrb	r2, [r7, #3]
1a0004c8:	4319      	orrs	r1, r3
1a0004ca:	687b      	ldr	r3, [r7, #4]
1a0004cc:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0004d0:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0004d4:	bf00      	nop
1a0004d6:	370c      	adds	r7, #12
1a0004d8:	46bd      	mov	sp, r7
1a0004da:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004de:	4770      	bx	lr

1a0004e0 <Chip_GPIO_SetPinDIRInput>:
1a0004e0:	b480      	push	{r7}
1a0004e2:	b083      	sub	sp, #12
1a0004e4:	af00      	add	r7, sp, #0
1a0004e6:	6078      	str	r0, [r7, #4]
1a0004e8:	460b      	mov	r3, r1
1a0004ea:	70fb      	strb	r3, [r7, #3]
1a0004ec:	4613      	mov	r3, r2
1a0004ee:	70bb      	strb	r3, [r7, #2]
1a0004f0:	78fa      	ldrb	r2, [r7, #3]
1a0004f2:	687b      	ldr	r3, [r7, #4]
1a0004f4:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0004f8:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0004fc:	78bb      	ldrb	r3, [r7, #2]
1a0004fe:	2201      	movs	r2, #1
1a000500:	fa02 f303 	lsl.w	r3, r2, r3
1a000504:	43db      	mvns	r3, r3
1a000506:	78fa      	ldrb	r2, [r7, #3]
1a000508:	4019      	ands	r1, r3
1a00050a:	687b      	ldr	r3, [r7, #4]
1a00050c:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000510:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000514:	bf00      	nop
1a000516:	370c      	adds	r7, #12
1a000518:	46bd      	mov	sp, r7
1a00051a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00051e:	4770      	bx	lr

1a000520 <Chip_UART_TXEnable>:
1a000520:	b480      	push	{r7}
1a000522:	b083      	sub	sp, #12
1a000524:	af00      	add	r7, sp, #0
1a000526:	6078      	str	r0, [r7, #4]
1a000528:	687b      	ldr	r3, [r7, #4]
1a00052a:	2201      	movs	r2, #1
1a00052c:	65da      	str	r2, [r3, #92]	; 0x5c
1a00052e:	bf00      	nop
1a000530:	370c      	adds	r7, #12
1a000532:	46bd      	mov	sp, r7
1a000534:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000538:	4770      	bx	lr

1a00053a <Chip_UART_IntEnable>:
1a00053a:	b480      	push	{r7}
1a00053c:	b083      	sub	sp, #12
1a00053e:	af00      	add	r7, sp, #0
1a000540:	6078      	str	r0, [r7, #4]
1a000542:	6039      	str	r1, [r7, #0]
1a000544:	687b      	ldr	r3, [r7, #4]
1a000546:	685a      	ldr	r2, [r3, #4]
1a000548:	683b      	ldr	r3, [r7, #0]
1a00054a:	431a      	orrs	r2, r3
1a00054c:	687b      	ldr	r3, [r7, #4]
1a00054e:	605a      	str	r2, [r3, #4]
1a000550:	bf00      	nop
1a000552:	370c      	adds	r7, #12
1a000554:	46bd      	mov	sp, r7
1a000556:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00055a:	4770      	bx	lr

1a00055c <Chip_UART_SetupFIFOS>:
1a00055c:	b480      	push	{r7}
1a00055e:	b083      	sub	sp, #12
1a000560:	af00      	add	r7, sp, #0
1a000562:	6078      	str	r0, [r7, #4]
1a000564:	6039      	str	r1, [r7, #0]
1a000566:	687b      	ldr	r3, [r7, #4]
1a000568:	683a      	ldr	r2, [r7, #0]
1a00056a:	609a      	str	r2, [r3, #8]
1a00056c:	bf00      	nop
1a00056e:	370c      	adds	r7, #12
1a000570:	46bd      	mov	sp, r7
1a000572:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000576:	4770      	bx	lr

1a000578 <Chip_UART_ConfigData>:
1a000578:	b480      	push	{r7}
1a00057a:	b083      	sub	sp, #12
1a00057c:	af00      	add	r7, sp, #0
1a00057e:	6078      	str	r0, [r7, #4]
1a000580:	6039      	str	r1, [r7, #0]
1a000582:	687b      	ldr	r3, [r7, #4]
1a000584:	683a      	ldr	r2, [r7, #0]
1a000586:	60da      	str	r2, [r3, #12]
1a000588:	bf00      	nop
1a00058a:	370c      	adds	r7, #12
1a00058c:	46bd      	mov	sp, r7
1a00058e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000592:	4770      	bx	lr

1a000594 <systemInit>:
1a000594:	b580      	push	{r7, lr}
1a000596:	af00      	add	r7, sp, #0
1a000598:	f000 fe02 	bl	1a0011a0 <Chip_SetupXtalClocking>
1a00059c:	f001 fe4c 	bl	1a002238 <SystemCoreClockUpdate>
1a0005a0:	f000 fcda 	bl	1a000f58 <fpuInit>
1a0005a4:	4868      	ldr	r0, [pc, #416]	; (1a000748 <systemInit+0x1b4>)
1a0005a6:	f001 fe53 	bl	1a002250 <Chip_GPIO_Init>
1a0005aa:	2304      	movs	r3, #4
1a0005ac:	2200      	movs	r2, #0
1a0005ae:	2100      	movs	r1, #0
1a0005b0:	2002      	movs	r0, #2
1a0005b2:	f7ff ff23 	bl	1a0003fc <Chip_SCU_PinMux>
1a0005b6:	2304      	movs	r3, #4
1a0005b8:	2200      	movs	r2, #0
1a0005ba:	2101      	movs	r1, #1
1a0005bc:	2002      	movs	r0, #2
1a0005be:	f7ff ff1d 	bl	1a0003fc <Chip_SCU_PinMux>
1a0005c2:	2304      	movs	r3, #4
1a0005c4:	2200      	movs	r2, #0
1a0005c6:	2102      	movs	r1, #2
1a0005c8:	2002      	movs	r0, #2
1a0005ca:	f7ff ff17 	bl	1a0003fc <Chip_SCU_PinMux>
1a0005ce:	2300      	movs	r3, #0
1a0005d0:	2200      	movs	r2, #0
1a0005d2:	210a      	movs	r1, #10
1a0005d4:	2002      	movs	r0, #2
1a0005d6:	f7ff ff11 	bl	1a0003fc <Chip_SCU_PinMux>
1a0005da:	2300      	movs	r3, #0
1a0005dc:	2200      	movs	r2, #0
1a0005de:	210b      	movs	r1, #11
1a0005e0:	2002      	movs	r0, #2
1a0005e2:	f7ff ff0b 	bl	1a0003fc <Chip_SCU_PinMux>
1a0005e6:	2300      	movs	r3, #0
1a0005e8:	2200      	movs	r2, #0
1a0005ea:	210c      	movs	r1, #12
1a0005ec:	2002      	movs	r0, #2
1a0005ee:	f7ff ff05 	bl	1a0003fc <Chip_SCU_PinMux>
1a0005f2:	220e      	movs	r2, #14
1a0005f4:	2100      	movs	r1, #0
1a0005f6:	4854      	ldr	r0, [pc, #336]	; (1a000748 <systemInit+0x1b4>)
1a0005f8:	f7ff ff53 	bl	1a0004a2 <Chip_GPIO_SetPinDIROutput>
1a0005fc:	220b      	movs	r2, #11
1a0005fe:	2101      	movs	r1, #1
1a000600:	4851      	ldr	r0, [pc, #324]	; (1a000748 <systemInit+0x1b4>)
1a000602:	f7ff ff4e 	bl	1a0004a2 <Chip_GPIO_SetPinDIROutput>
1a000606:	220c      	movs	r2, #12
1a000608:	2101      	movs	r1, #1
1a00060a:	484f      	ldr	r0, [pc, #316]	; (1a000748 <systemInit+0x1b4>)
1a00060c:	f7ff ff49 	bl	1a0004a2 <Chip_GPIO_SetPinDIROutput>
1a000610:	2200      	movs	r2, #0
1a000612:	2105      	movs	r1, #5
1a000614:	484c      	ldr	r0, [pc, #304]	; (1a000748 <systemInit+0x1b4>)
1a000616:	f7ff ff44 	bl	1a0004a2 <Chip_GPIO_SetPinDIROutput>
1a00061a:	2201      	movs	r2, #1
1a00061c:	2105      	movs	r1, #5
1a00061e:	484a      	ldr	r0, [pc, #296]	; (1a000748 <systemInit+0x1b4>)
1a000620:	f7ff ff3f 	bl	1a0004a2 <Chip_GPIO_SetPinDIROutput>
1a000624:	2202      	movs	r2, #2
1a000626:	2105      	movs	r1, #5
1a000628:	4847      	ldr	r0, [pc, #284]	; (1a000748 <systemInit+0x1b4>)
1a00062a:	f7ff ff3a 	bl	1a0004a2 <Chip_GPIO_SetPinDIROutput>
1a00062e:	2300      	movs	r3, #0
1a000630:	220e      	movs	r2, #14
1a000632:	2100      	movs	r1, #0
1a000634:	4844      	ldr	r0, [pc, #272]	; (1a000748 <systemInit+0x1b4>)
1a000636:	f7ff fefe 	bl	1a000436 <Chip_GPIO_SetPinState>
1a00063a:	2300      	movs	r3, #0
1a00063c:	220b      	movs	r2, #11
1a00063e:	2100      	movs	r1, #0
1a000640:	4841      	ldr	r0, [pc, #260]	; (1a000748 <systemInit+0x1b4>)
1a000642:	f7ff fef8 	bl	1a000436 <Chip_GPIO_SetPinState>
1a000646:	2300      	movs	r3, #0
1a000648:	220c      	movs	r2, #12
1a00064a:	2100      	movs	r1, #0
1a00064c:	483e      	ldr	r0, [pc, #248]	; (1a000748 <systemInit+0x1b4>)
1a00064e:	f7ff fef2 	bl	1a000436 <Chip_GPIO_SetPinState>
1a000652:	2300      	movs	r3, #0
1a000654:	2200      	movs	r2, #0
1a000656:	2105      	movs	r1, #5
1a000658:	483b      	ldr	r0, [pc, #236]	; (1a000748 <systemInit+0x1b4>)
1a00065a:	f7ff feec 	bl	1a000436 <Chip_GPIO_SetPinState>
1a00065e:	2300      	movs	r3, #0
1a000660:	2201      	movs	r2, #1
1a000662:	2105      	movs	r1, #5
1a000664:	4838      	ldr	r0, [pc, #224]	; (1a000748 <systemInit+0x1b4>)
1a000666:	f7ff fee6 	bl	1a000436 <Chip_GPIO_SetPinState>
1a00066a:	2300      	movs	r3, #0
1a00066c:	2202      	movs	r2, #2
1a00066e:	2105      	movs	r1, #5
1a000670:	4835      	ldr	r0, [pc, #212]	; (1a000748 <systemInit+0x1b4>)
1a000672:	f7ff fee0 	bl	1a000436 <Chip_GPIO_SetPinState>
1a000676:	2300      	movs	r3, #0
1a000678:	22c0      	movs	r2, #192	; 0xc0
1a00067a:	2100      	movs	r1, #0
1a00067c:	2001      	movs	r0, #1
1a00067e:	f7ff febd 	bl	1a0003fc <Chip_SCU_PinMux>
1a000682:	2300      	movs	r3, #0
1a000684:	22c0      	movs	r2, #192	; 0xc0
1a000686:	2101      	movs	r1, #1
1a000688:	2001      	movs	r0, #1
1a00068a:	f7ff feb7 	bl	1a0003fc <Chip_SCU_PinMux>
1a00068e:	2300      	movs	r3, #0
1a000690:	22c0      	movs	r2, #192	; 0xc0
1a000692:	2102      	movs	r1, #2
1a000694:	2001      	movs	r0, #1
1a000696:	f7ff feb1 	bl	1a0003fc <Chip_SCU_PinMux>
1a00069a:	2300      	movs	r3, #0
1a00069c:	22c0      	movs	r2, #192	; 0xc0
1a00069e:	2106      	movs	r1, #6
1a0006a0:	2001      	movs	r0, #1
1a0006a2:	f7ff feab 	bl	1a0003fc <Chip_SCU_PinMux>
1a0006a6:	2204      	movs	r2, #4
1a0006a8:	2100      	movs	r1, #0
1a0006aa:	4827      	ldr	r0, [pc, #156]	; (1a000748 <systemInit+0x1b4>)
1a0006ac:	f7ff ff18 	bl	1a0004e0 <Chip_GPIO_SetPinDIRInput>
1a0006b0:	2208      	movs	r2, #8
1a0006b2:	2100      	movs	r1, #0
1a0006b4:	4824      	ldr	r0, [pc, #144]	; (1a000748 <systemInit+0x1b4>)
1a0006b6:	f7ff ff13 	bl	1a0004e0 <Chip_GPIO_SetPinDIRInput>
1a0006ba:	2209      	movs	r2, #9
1a0006bc:	2100      	movs	r1, #0
1a0006be:	4822      	ldr	r0, [pc, #136]	; (1a000748 <systemInit+0x1b4>)
1a0006c0:	f7ff ff0e 	bl	1a0004e0 <Chip_GPIO_SetPinDIRInput>
1a0006c4:	2209      	movs	r2, #9
1a0006c6:	2101      	movs	r1, #1
1a0006c8:	481f      	ldr	r0, [pc, #124]	; (1a000748 <systemInit+0x1b4>)
1a0006ca:	f7ff ff09 	bl	1a0004e0 <Chip_GPIO_SetPinDIRInput>
1a0006ce:	481f      	ldr	r0, [pc, #124]	; (1a00074c <systemInit+0x1b8>)
1a0006d0:	f000 fea2 	bl	1a001418 <Chip_UART_Init>
1a0006d4:	2103      	movs	r1, #3
1a0006d6:	481d      	ldr	r0, [pc, #116]	; (1a00074c <systemInit+0x1b8>)
1a0006d8:	f7ff ff4e 	bl	1a000578 <Chip_UART_ConfigData>
1a0006dc:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a0006e0:	481a      	ldr	r0, [pc, #104]	; (1a00074c <systemInit+0x1b8>)
1a0006e2:	f000 fedd 	bl	1a0014a0 <Chip_UART_SetBaud>
1a0006e6:	21c1      	movs	r1, #193	; 0xc1
1a0006e8:	4818      	ldr	r0, [pc, #96]	; (1a00074c <systemInit+0x1b8>)
1a0006ea:	f7ff ff37 	bl	1a00055c <Chip_UART_SetupFIFOS>
1a0006ee:	2306      	movs	r3, #6
1a0006f0:	2218      	movs	r2, #24
1a0006f2:	2101      	movs	r1, #1
1a0006f4:	2007      	movs	r0, #7
1a0006f6:	f7ff fe81 	bl	1a0003fc <Chip_SCU_PinMux>
1a0006fa:	2306      	movs	r3, #6
1a0006fc:	22d0      	movs	r2, #208	; 0xd0
1a0006fe:	2102      	movs	r1, #2
1a000700:	2007      	movs	r0, #7
1a000702:	f7ff fe7b 	bl	1a0003fc <Chip_SCU_PinMux>
1a000706:	f44f 7300 	mov.w	r3, #512	; 0x200
1a00070a:	2201      	movs	r2, #1
1a00070c:	4910      	ldr	r1, [pc, #64]	; (1a000750 <systemInit+0x1bc>)
1a00070e:	4811      	ldr	r0, [pc, #68]	; (1a000754 <systemInit+0x1c0>)
1a000710:	f001 f835 	bl	1a00177e <RingBuffer_Init>
1a000714:	f44f 7300 	mov.w	r3, #512	; 0x200
1a000718:	2201      	movs	r2, #1
1a00071a:	490f      	ldr	r1, [pc, #60]	; (1a000758 <systemInit+0x1c4>)
1a00071c:	480f      	ldr	r0, [pc, #60]	; (1a00075c <systemInit+0x1c8>)
1a00071e:	f001 f82e 	bl	1a00177e <RingBuffer_Init>
1a000722:	21c7      	movs	r1, #199	; 0xc7
1a000724:	4809      	ldr	r0, [pc, #36]	; (1a00074c <systemInit+0x1b8>)
1a000726:	f7ff ff19 	bl	1a00055c <Chip_UART_SetupFIFOS>
1a00072a:	2105      	movs	r1, #5
1a00072c:	4807      	ldr	r0, [pc, #28]	; (1a00074c <systemInit+0x1b8>)
1a00072e:	f7ff ff04 	bl	1a00053a <Chip_UART_IntEnable>
1a000732:	201a      	movs	r0, #26
1a000734:	f7ff fe2e 	bl	1a000394 <NVIC_EnableIRQ>
1a000738:	4804      	ldr	r0, [pc, #16]	; (1a00074c <systemInit+0x1b8>)
1a00073a:	f7ff fef1 	bl	1a000520 <Chip_UART_TXEnable>
1a00073e:	f000 ff7d 	bl	1a00163c <StopWatch_Init>
1a000742:	bf00      	nop
1a000744:	bd80      	pop	{r7, pc}
1a000746:	bf00      	nop
1a000748:	400f4000 	.word	0x400f4000
1a00074c:	400c1000 	.word	0x400c1000
1a000750:	10000430 	.word	0x10000430
1a000754:	10000844 	.word	0x10000844
1a000758:	10000630 	.word	0x10000630
1a00075c:	10000830 	.word	0x10000830

1a000760 <UART2_IRQHandler>:
1a000760:	b580      	push	{r7, lr}
1a000762:	af00      	add	r7, sp, #0
1a000764:	4a03      	ldr	r2, [pc, #12]	; (1a000774 <UART2_IRQHandler+0x14>)
1a000766:	4904      	ldr	r1, [pc, #16]	; (1a000778 <UART2_IRQHandler+0x18>)
1a000768:	4804      	ldr	r0, [pc, #16]	; (1a00077c <UART2_IRQHandler+0x1c>)
1a00076a:	f000 ff18 	bl	1a00159e <Chip_UART_IRQRBHandler>
1a00076e:	bf00      	nop
1a000770:	bd80      	pop	{r7, pc}
1a000772:	bf00      	nop
1a000774:	10000830 	.word	0x10000830
1a000778:	10000844 	.word	0x10000844
1a00077c:	400c1000 	.word	0x400c1000

1a000780 <getKeyPressed>:
1a000780:	b580      	push	{r7, lr}
1a000782:	b082      	sub	sp, #8
1a000784:	af00      	add	r7, sp, #0
1a000786:	2300      	movs	r3, #0
1a000788:	71fb      	strb	r3, [r7, #7]
1a00078a:	2204      	movs	r2, #4
1a00078c:	2100      	movs	r1, #0
1a00078e:	481f      	ldr	r0, [pc, #124]	; (1a00080c <getKeyPressed+0x8c>)
1a000790:	f7ff fe6d 	bl	1a00046e <Chip_GPIO_ReadPortBit>
1a000794:	4603      	mov	r3, r0
1a000796:	f083 0301 	eor.w	r3, r3, #1
1a00079a:	b2db      	uxtb	r3, r3
1a00079c:	2b00      	cmp	r3, #0
1a00079e:	d003      	beq.n	1a0007a8 <getKeyPressed+0x28>
1a0007a0:	79fb      	ldrb	r3, [r7, #7]
1a0007a2:	f043 0301 	orr.w	r3, r3, #1
1a0007a6:	71fb      	strb	r3, [r7, #7]
1a0007a8:	2208      	movs	r2, #8
1a0007aa:	2100      	movs	r1, #0
1a0007ac:	4817      	ldr	r0, [pc, #92]	; (1a00080c <getKeyPressed+0x8c>)
1a0007ae:	f7ff fe5e 	bl	1a00046e <Chip_GPIO_ReadPortBit>
1a0007b2:	4603      	mov	r3, r0
1a0007b4:	f083 0301 	eor.w	r3, r3, #1
1a0007b8:	b2db      	uxtb	r3, r3
1a0007ba:	2b00      	cmp	r3, #0
1a0007bc:	d003      	beq.n	1a0007c6 <getKeyPressed+0x46>
1a0007be:	79fb      	ldrb	r3, [r7, #7]
1a0007c0:	f043 0302 	orr.w	r3, r3, #2
1a0007c4:	71fb      	strb	r3, [r7, #7]
1a0007c6:	2209      	movs	r2, #9
1a0007c8:	2100      	movs	r1, #0
1a0007ca:	4810      	ldr	r0, [pc, #64]	; (1a00080c <getKeyPressed+0x8c>)
1a0007cc:	f7ff fe4f 	bl	1a00046e <Chip_GPIO_ReadPortBit>
1a0007d0:	4603      	mov	r3, r0
1a0007d2:	f083 0301 	eor.w	r3, r3, #1
1a0007d6:	b2db      	uxtb	r3, r3
1a0007d8:	2b00      	cmp	r3, #0
1a0007da:	d003      	beq.n	1a0007e4 <getKeyPressed+0x64>
1a0007dc:	79fb      	ldrb	r3, [r7, #7]
1a0007de:	f043 0304 	orr.w	r3, r3, #4
1a0007e2:	71fb      	strb	r3, [r7, #7]
1a0007e4:	2209      	movs	r2, #9
1a0007e6:	2101      	movs	r1, #1
1a0007e8:	4808      	ldr	r0, [pc, #32]	; (1a00080c <getKeyPressed+0x8c>)
1a0007ea:	f7ff fe40 	bl	1a00046e <Chip_GPIO_ReadPortBit>
1a0007ee:	4603      	mov	r3, r0
1a0007f0:	f083 0301 	eor.w	r3, r3, #1
1a0007f4:	b2db      	uxtb	r3, r3
1a0007f6:	2b00      	cmp	r3, #0
1a0007f8:	d003      	beq.n	1a000802 <getKeyPressed+0x82>
1a0007fa:	79fb      	ldrb	r3, [r7, #7]
1a0007fc:	f043 0308 	orr.w	r3, r3, #8
1a000800:	71fb      	strb	r3, [r7, #7]
1a000802:	79fb      	ldrb	r3, [r7, #7]
1a000804:	4618      	mov	r0, r3
1a000806:	3708      	adds	r7, #8
1a000808:	46bd      	mov	sp, r7
1a00080a:	bd80      	pop	{r7, pc}
1a00080c:	400f4000 	.word	0x400f4000

1a000810 <ResetISR>:
1a000810:	b580      	push	{r7, lr}
1a000812:	b088      	sub	sp, #32
1a000814:	af00      	add	r7, sp, #0
1a000816:	b672      	cpsid	i
1a000818:	4b26      	ldr	r3, [pc, #152]	; (1a0008b4 <ResetISR+0xa4>)
1a00081a:	617b      	str	r3, [r7, #20]
1a00081c:	697b      	ldr	r3, [r7, #20]
1a00081e:	4a26      	ldr	r2, [pc, #152]	; (1a0008b8 <ResetISR+0xa8>)
1a000820:	601a      	str	r2, [r3, #0]
1a000822:	697b      	ldr	r3, [r7, #20]
1a000824:	3304      	adds	r3, #4
1a000826:	4a25      	ldr	r2, [pc, #148]	; (1a0008bc <ResetISR+0xac>)
1a000828:	601a      	str	r2, [r3, #0]
1a00082a:	4b25      	ldr	r3, [pc, #148]	; (1a0008c0 <ResetISR+0xb0>)
1a00082c:	613b      	str	r3, [r7, #16]
1a00082e:	2300      	movs	r3, #0
1a000830:	61fb      	str	r3, [r7, #28]
1a000832:	e009      	b.n	1a000848 <ResetISR+0x38>
1a000834:	69fb      	ldr	r3, [r7, #28]
1a000836:	009b      	lsls	r3, r3, #2
1a000838:	693a      	ldr	r2, [r7, #16]
1a00083a:	4413      	add	r3, r2
1a00083c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a000840:	601a      	str	r2, [r3, #0]
1a000842:	69fb      	ldr	r3, [r7, #28]
1a000844:	3301      	adds	r3, #1
1a000846:	61fb      	str	r3, [r7, #28]
1a000848:	69fb      	ldr	r3, [r7, #28]
1a00084a:	2b07      	cmp	r3, #7
1a00084c:	d9f2      	bls.n	1a000834 <ResetISR+0x24>
1a00084e:	b662      	cpsie	i
1a000850:	4b1c      	ldr	r3, [pc, #112]	; (1a0008c4 <ResetISR+0xb4>)
1a000852:	61bb      	str	r3, [r7, #24]
1a000854:	e013      	b.n	1a00087e <ResetISR+0x6e>
1a000856:	69bb      	ldr	r3, [r7, #24]
1a000858:	1d1a      	adds	r2, r3, #4
1a00085a:	61ba      	str	r2, [r7, #24]
1a00085c:	681b      	ldr	r3, [r3, #0]
1a00085e:	607b      	str	r3, [r7, #4]
1a000860:	69bb      	ldr	r3, [r7, #24]
1a000862:	1d1a      	adds	r2, r3, #4
1a000864:	61ba      	str	r2, [r7, #24]
1a000866:	681b      	ldr	r3, [r3, #0]
1a000868:	60fb      	str	r3, [r7, #12]
1a00086a:	69bb      	ldr	r3, [r7, #24]
1a00086c:	1d1a      	adds	r2, r3, #4
1a00086e:	61ba      	str	r2, [r7, #24]
1a000870:	681b      	ldr	r3, [r3, #0]
1a000872:	60bb      	str	r3, [r7, #8]
1a000874:	68ba      	ldr	r2, [r7, #8]
1a000876:	68f9      	ldr	r1, [r7, #12]
1a000878:	6878      	ldr	r0, [r7, #4]
1a00087a:	f7ff fc55 	bl	1a000128 <data_init>
1a00087e:	69bb      	ldr	r3, [r7, #24]
1a000880:	4a11      	ldr	r2, [pc, #68]	; (1a0008c8 <ResetISR+0xb8>)
1a000882:	4293      	cmp	r3, r2
1a000884:	d3e7      	bcc.n	1a000856 <ResetISR+0x46>
1a000886:	e00d      	b.n	1a0008a4 <ResetISR+0x94>
1a000888:	69bb      	ldr	r3, [r7, #24]
1a00088a:	1d1a      	adds	r2, r3, #4
1a00088c:	61ba      	str	r2, [r7, #24]
1a00088e:	681b      	ldr	r3, [r3, #0]
1a000890:	60fb      	str	r3, [r7, #12]
1a000892:	69bb      	ldr	r3, [r7, #24]
1a000894:	1d1a      	adds	r2, r3, #4
1a000896:	61ba      	str	r2, [r7, #24]
1a000898:	681b      	ldr	r3, [r3, #0]
1a00089a:	60bb      	str	r3, [r7, #8]
1a00089c:	68b9      	ldr	r1, [r7, #8]
1a00089e:	68f8      	ldr	r0, [r7, #12]
1a0008a0:	f7ff fc64 	bl	1a00016c <bss_init>
1a0008a4:	69bb      	ldr	r3, [r7, #24]
1a0008a6:	4a09      	ldr	r2, [pc, #36]	; (1a0008cc <ResetISR+0xbc>)
1a0008a8:	4293      	cmp	r3, r2
1a0008aa:	d3ed      	bcc.n	1a000888 <ResetISR+0x78>
1a0008ac:	f000 f810 	bl	1a0008d0 <main>
1a0008b0:	e7fe      	b.n	1a0008b0 <ResetISR+0xa0>
1a0008b2:	bf00      	nop
1a0008b4:	40053100 	.word	0x40053100
1a0008b8:	10df1000 	.word	0x10df1000
1a0008bc:	01dff7ff 	.word	0x01dff7ff
1a0008c0:	e000e280 	.word	0xe000e280
1a0008c4:	1a000114 	.word	0x1a000114
1a0008c8:	1a000120 	.word	0x1a000120
1a0008cc:	1a000128 	.word	0x1a000128

1a0008d0 <main>:
1a0008d0:	b580      	push	{r7, lr}
1a0008d2:	b082      	sub	sp, #8
1a0008d4:	af00      	add	r7, sp, #0
1a0008d6:	f7ff fe5d 	bl	1a000594 <systemInit>
1a0008da:	f000 f8bf 	bl	1a000a5c <genera_semilla>
1a0008de:	4603      	mov	r3, r0
1a0008e0:	607b      	str	r3, [r7, #4]
1a0008e2:	6878      	ldr	r0, [r7, #4]
1a0008e4:	f001 fd90 	bl	1a002408 <srand>
1a0008e8:	f000 f848 	bl	1a00097c <escanear_teclado>
1a0008ec:	f000 f924 	bl	1a000b38 <inicia_juego>
1a0008f0:	f000 f9bc 	bl	1a000c6c <cara_cruz>
1a0008f4:	f000 fa76 	bl	1a000de4 <mostrar_resultados>
1a0008f8:	e7f6      	b.n	1a0008e8 <main+0x18>

1a0008fa <Chip_GPIO_SetPinState>:
1a0008fa:	b480      	push	{r7}
1a0008fc:	b083      	sub	sp, #12
1a0008fe:	af00      	add	r7, sp, #0
1a000900:	6078      	str	r0, [r7, #4]
1a000902:	4608      	mov	r0, r1
1a000904:	4611      	mov	r1, r2
1a000906:	461a      	mov	r2, r3
1a000908:	4603      	mov	r3, r0
1a00090a:	70fb      	strb	r3, [r7, #3]
1a00090c:	460b      	mov	r3, r1
1a00090e:	70bb      	strb	r3, [r7, #2]
1a000910:	4613      	mov	r3, r2
1a000912:	707b      	strb	r3, [r7, #1]
1a000914:	78fa      	ldrb	r2, [r7, #3]
1a000916:	78bb      	ldrb	r3, [r7, #2]
1a000918:	7878      	ldrb	r0, [r7, #1]
1a00091a:	6879      	ldr	r1, [r7, #4]
1a00091c:	0152      	lsls	r2, r2, #5
1a00091e:	440a      	add	r2, r1
1a000920:	4413      	add	r3, r2
1a000922:	4602      	mov	r2, r0
1a000924:	701a      	strb	r2, [r3, #0]
1a000926:	bf00      	nop
1a000928:	370c      	adds	r7, #12
1a00092a:	46bd      	mov	sp, r7
1a00092c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000930:	4770      	bx	lr

1a000932 <StopWatch_Elapsed>:
1a000932:	b580      	push	{r7, lr}
1a000934:	b082      	sub	sp, #8
1a000936:	af00      	add	r7, sp, #0
1a000938:	6078      	str	r0, [r7, #4]
1a00093a:	f000 feb9 	bl	1a0016b0 <StopWatch_Start>
1a00093e:	4602      	mov	r2, r0
1a000940:	687b      	ldr	r3, [r7, #4]
1a000942:	1ad3      	subs	r3, r2, r3
1a000944:	4618      	mov	r0, r3
1a000946:	3708      	adds	r7, #8
1a000948:	46bd      	mov	sp, r7
1a00094a:	bd80      	pop	{r7, pc}

1a00094c <StopWatch_DelayMs>:
1a00094c:	b580      	push	{r7, lr}
1a00094e:	b084      	sub	sp, #16
1a000950:	af00      	add	r7, sp, #0
1a000952:	6078      	str	r0, [r7, #4]
1a000954:	6878      	ldr	r0, [r7, #4]
1a000956:	f000 fec7 	bl	1a0016e8 <StopWatch_MsToTicks>
1a00095a:	60f8      	str	r0, [r7, #12]
1a00095c:	f000 fea8 	bl	1a0016b0 <StopWatch_Start>
1a000960:	60b8      	str	r0, [r7, #8]
1a000962:	bf00      	nop
1a000964:	68b8      	ldr	r0, [r7, #8]
1a000966:	f7ff ffe4 	bl	1a000932 <StopWatch_Elapsed>
1a00096a:	4602      	mov	r2, r0
1a00096c:	68fb      	ldr	r3, [r7, #12]
1a00096e:	4293      	cmp	r3, r2
1a000970:	d8f8      	bhi.n	1a000964 <StopWatch_DelayMs+0x18>
1a000972:	bf00      	nop
1a000974:	3710      	adds	r7, #16
1a000976:	46bd      	mov	sp, r7
1a000978:	bd80      	pop	{r7, pc}
1a00097a:	Address 0x000000001a00097a is out of bounds.


1a00097c <escanear_teclado>:
1a00097c:	b580      	push	{r7, lr}
1a00097e:	b082      	sub	sp, #8
1a000980:	af00      	add	r7, sp, #0
1a000982:	f7ff fefd 	bl	1a000780 <getKeyPressed>
1a000986:	4603      	mov	r3, r0
1a000988:	71fb      	strb	r3, [r7, #7]
1a00098a:	4b13      	ldr	r3, [pc, #76]	; (1a0009d8 <escanear_teclado+0x5c>)
1a00098c:	781b      	ldrb	r3, [r3, #0]
1a00098e:	79fa      	ldrb	r2, [r7, #7]
1a000990:	429a      	cmp	r2, r3
1a000992:	d01a      	beq.n	1a0009ca <escanear_teclado+0x4e>
1a000994:	79fb      	ldrb	r3, [r7, #7]
1a000996:	2b01      	cmp	r3, #1
1a000998:	d102      	bne.n	1a0009a0 <escanear_teclado+0x24>
1a00099a:	4b10      	ldr	r3, [pc, #64]	; (1a0009dc <escanear_teclado+0x60>)
1a00099c:	2201      	movs	r2, #1
1a00099e:	701a      	strb	r2, [r3, #0]
1a0009a0:	79fb      	ldrb	r3, [r7, #7]
1a0009a2:	2b02      	cmp	r3, #2
1a0009a4:	d102      	bne.n	1a0009ac <escanear_teclado+0x30>
1a0009a6:	4b0e      	ldr	r3, [pc, #56]	; (1a0009e0 <escanear_teclado+0x64>)
1a0009a8:	2201      	movs	r2, #1
1a0009aa:	701a      	strb	r2, [r3, #0]
1a0009ac:	79fb      	ldrb	r3, [r7, #7]
1a0009ae:	2b04      	cmp	r3, #4
1a0009b0:	d102      	bne.n	1a0009b8 <escanear_teclado+0x3c>
1a0009b2:	4b0c      	ldr	r3, [pc, #48]	; (1a0009e4 <escanear_teclado+0x68>)
1a0009b4:	2201      	movs	r2, #1
1a0009b6:	701a      	strb	r2, [r3, #0]
1a0009b8:	79fb      	ldrb	r3, [r7, #7]
1a0009ba:	2b08      	cmp	r3, #8
1a0009bc:	d102      	bne.n	1a0009c4 <escanear_teclado+0x48>
1a0009be:	4b0a      	ldr	r3, [pc, #40]	; (1a0009e8 <escanear_teclado+0x6c>)
1a0009c0:	2201      	movs	r2, #1
1a0009c2:	701a      	strb	r2, [r3, #0]
1a0009c4:	4a04      	ldr	r2, [pc, #16]	; (1a0009d8 <escanear_teclado+0x5c>)
1a0009c6:	79fb      	ldrb	r3, [r7, #7]
1a0009c8:	7013      	strb	r3, [r2, #0]
1a0009ca:	2064      	movs	r0, #100	; 0x64
1a0009cc:	f7ff ffbe 	bl	1a00094c <StopWatch_DelayMs>
1a0009d0:	bf00      	nop
1a0009d2:	3708      	adds	r7, #8
1a0009d4:	46bd      	mov	sp, r7
1a0009d6:	bd80      	pop	{r7, pc}
1a0009d8:	1000086c 	.word	0x1000086c
1a0009dc:	10000858 	.word	0x10000858
1a0009e0:	10000859 	.word	0x10000859
1a0009e4:	1000085a 	.word	0x1000085a
1a0009e8:	1000085b 	.word	0x1000085b

1a0009ec <tiempo_aleatorio>:
1a0009ec:	b580      	push	{r7, lr}
1a0009ee:	b086      	sub	sp, #24
1a0009f0:	af00      	add	r7, sp, #0
1a0009f2:	6078      	str	r0, [r7, #4]
1a0009f4:	6039      	str	r1, [r7, #0]
1a0009f6:	687b      	ldr	r3, [r7, #4]
1a0009f8:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
1a0009fc:	fb02 f303 	mul.w	r3, r2, r3
1a000a00:	607b      	str	r3, [r7, #4]
1a000a02:	683b      	ldr	r3, [r7, #0]
1a000a04:	f44f 727a 	mov.w	r2, #1000	; 0x3e8
1a000a08:	fb02 f303 	mul.w	r3, r2, r3
1a000a0c:	603b      	str	r3, [r7, #0]
1a000a0e:	2300      	movs	r3, #0
1a000a10:	60fb      	str	r3, [r7, #12]
1a000a12:	683a      	ldr	r2, [r7, #0]
1a000a14:	687b      	ldr	r3, [r7, #4]
1a000a16:	1ad3      	subs	r3, r2, r3
1a000a18:	617b      	str	r3, [r7, #20]
1a000a1a:	687b      	ldr	r3, [r7, #4]
1a000a1c:	613b      	str	r3, [r7, #16]
1a000a1e:	687a      	ldr	r2, [r7, #4]
1a000a20:	683b      	ldr	r3, [r7, #0]
1a000a22:	429a      	cmp	r2, r3
1a000a24:	d904      	bls.n	1a000a30 <tiempo_aleatorio+0x44>
1a000a26:	683b      	ldr	r3, [r7, #0]
1a000a28:	613b      	str	r3, [r7, #16]
1a000a2a:	697b      	ldr	r3, [r7, #20]
1a000a2c:	425b      	negs	r3, r3
1a000a2e:	617b      	str	r3, [r7, #20]
1a000a30:	697b      	ldr	r3, [r7, #20]
1a000a32:	f503 737a 	add.w	r3, r3, #1000	; 0x3e8
1a000a36:	617b      	str	r3, [r7, #20]
1a000a38:	f001 fcee 	bl	1a002418 <rand>
1a000a3c:	4603      	mov	r3, r0
1a000a3e:	697a      	ldr	r2, [r7, #20]
1a000a40:	fbb3 f2f2 	udiv	r2, r3, r2
1a000a44:	6979      	ldr	r1, [r7, #20]
1a000a46:	fb01 f202 	mul.w	r2, r1, r2
1a000a4a:	1a9b      	subs	r3, r3, r2
1a000a4c:	693a      	ldr	r2, [r7, #16]
1a000a4e:	4413      	add	r3, r2
1a000a50:	60fb      	str	r3, [r7, #12]
1a000a52:	68fb      	ldr	r3, [r7, #12]
1a000a54:	4618      	mov	r0, r3
1a000a56:	3718      	adds	r7, #24
1a000a58:	46bd      	mov	sp, r7
1a000a5a:	bd80      	pop	{r7, pc}

1a000a5c <genera_semilla>:
1a000a5c:	b580      	push	{r7, lr}
1a000a5e:	b082      	sub	sp, #8
1a000a60:	af00      	add	r7, sp, #0
1a000a62:	2300      	movs	r3, #0
1a000a64:	607b      	str	r3, [r7, #4]
1a000a66:	2300      	movs	r3, #0
1a000a68:	603b      	str	r3, [r7, #0]
1a000a6a:	f000 fe21 	bl	1a0016b0 <StopWatch_Start>
1a000a6e:	6078      	str	r0, [r7, #4]
1a000a70:	e02a      	b.n	1a000ac8 <genera_semilla+0x6c>
1a000a72:	2301      	movs	r3, #1
1a000a74:	220b      	movs	r2, #11
1a000a76:	2101      	movs	r1, #1
1a000a78:	482a      	ldr	r0, [pc, #168]	; (1a000b24 <genera_semilla+0xc8>)
1a000a7a:	f7ff ff3e 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000a7e:	2096      	movs	r0, #150	; 0x96
1a000a80:	f7ff ff64 	bl	1a00094c <StopWatch_DelayMs>
1a000a84:	2300      	movs	r3, #0
1a000a86:	220b      	movs	r2, #11
1a000a88:	2101      	movs	r1, #1
1a000a8a:	4826      	ldr	r0, [pc, #152]	; (1a000b24 <genera_semilla+0xc8>)
1a000a8c:	f7ff ff35 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000a90:	f7ff ff74 	bl	1a00097c <escanear_teclado>
1a000a94:	2301      	movs	r3, #1
1a000a96:	220c      	movs	r2, #12
1a000a98:	2101      	movs	r1, #1
1a000a9a:	4822      	ldr	r0, [pc, #136]	; (1a000b24 <genera_semilla+0xc8>)
1a000a9c:	f7ff ff2d 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000aa0:	2096      	movs	r0, #150	; 0x96
1a000aa2:	f7ff ff53 	bl	1a00094c <StopWatch_DelayMs>
1a000aa6:	2300      	movs	r3, #0
1a000aa8:	220c      	movs	r2, #12
1a000aaa:	2101      	movs	r1, #1
1a000aac:	481d      	ldr	r0, [pc, #116]	; (1a000b24 <genera_semilla+0xc8>)
1a000aae:	f7ff ff24 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000ab2:	f7ff ff63 	bl	1a00097c <escanear_teclado>
1a000ab6:	4b1c      	ldr	r3, [pc, #112]	; (1a000b28 <genera_semilla+0xcc>)
1a000ab8:	2200      	movs	r2, #0
1a000aba:	701a      	strb	r2, [r3, #0]
1a000abc:	4b1b      	ldr	r3, [pc, #108]	; (1a000b2c <genera_semilla+0xd0>)
1a000abe:	2200      	movs	r2, #0
1a000ac0:	701a      	strb	r2, [r3, #0]
1a000ac2:	4b1b      	ldr	r3, [pc, #108]	; (1a000b30 <genera_semilla+0xd4>)
1a000ac4:	2200      	movs	r2, #0
1a000ac6:	701a      	strb	r2, [r3, #0]
1a000ac8:	4b1a      	ldr	r3, [pc, #104]	; (1a000b34 <genera_semilla+0xd8>)
1a000aca:	781b      	ldrb	r3, [r3, #0]
1a000acc:	b2db      	uxtb	r3, r3
1a000ace:	2b00      	cmp	r3, #0
1a000ad0:	d0cf      	beq.n	1a000a72 <genera_semilla+0x16>
1a000ad2:	6878      	ldr	r0, [r7, #4]
1a000ad4:	f7ff ff2d 	bl	1a000932 <StopWatch_Elapsed>
1a000ad8:	4603      	mov	r3, r0
1a000ada:	4618      	mov	r0, r3
1a000adc:	f000 fdf2 	bl	1a0016c4 <StopWatch_TicksToMs>
1a000ae0:	6038      	str	r0, [r7, #0]
1a000ae2:	2300      	movs	r3, #0
1a000ae4:	2202      	movs	r2, #2
1a000ae6:	2105      	movs	r1, #5
1a000ae8:	480e      	ldr	r0, [pc, #56]	; (1a000b24 <genera_semilla+0xc8>)
1a000aea:	f7ff ff06 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000aee:	2300      	movs	r3, #0
1a000af0:	220e      	movs	r2, #14
1a000af2:	2100      	movs	r1, #0
1a000af4:	480b      	ldr	r0, [pc, #44]	; (1a000b24 <genera_semilla+0xc8>)
1a000af6:	f7ff ff00 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000afa:	2300      	movs	r3, #0
1a000afc:	220b      	movs	r2, #11
1a000afe:	2101      	movs	r1, #1
1a000b00:	4808      	ldr	r0, [pc, #32]	; (1a000b24 <genera_semilla+0xc8>)
1a000b02:	f7ff fefa 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000b06:	2300      	movs	r3, #0
1a000b08:	220c      	movs	r2, #12
1a000b0a:	2101      	movs	r1, #1
1a000b0c:	4805      	ldr	r0, [pc, #20]	; (1a000b24 <genera_semilla+0xc8>)
1a000b0e:	f7ff fef4 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000b12:	4b08      	ldr	r3, [pc, #32]	; (1a000b34 <genera_semilla+0xd8>)
1a000b14:	2200      	movs	r2, #0
1a000b16:	701a      	strb	r2, [r3, #0]
1a000b18:	683b      	ldr	r3, [r7, #0]
1a000b1a:	4618      	mov	r0, r3
1a000b1c:	3708      	adds	r7, #8
1a000b1e:	46bd      	mov	sp, r7
1a000b20:	bd80      	pop	{r7, pc}
1a000b22:	bf00      	nop
1a000b24:	400f4000 	.word	0x400f4000
1a000b28:	10000858 	.word	0x10000858
1a000b2c:	1000085a 	.word	0x1000085a
1a000b30:	1000085b 	.word	0x1000085b
1a000b34:	10000859 	.word	0x10000859

1a000b38 <inicia_juego>:
1a000b38:	b580      	push	{r7, lr}
1a000b3a:	af00      	add	r7, sp, #0
1a000b3c:	4b42      	ldr	r3, [pc, #264]	; (1a000c48 <inicia_juego+0x110>)
1a000b3e:	781b      	ldrb	r3, [r3, #0]
1a000b40:	b2db      	uxtb	r3, r3
1a000b42:	2b00      	cmp	r3, #0
1a000b44:	d130      	bne.n	1a000ba8 <inicia_juego+0x70>
1a000b46:	4b41      	ldr	r3, [pc, #260]	; (1a000c4c <inicia_juego+0x114>)
1a000b48:	781b      	ldrb	r3, [r3, #0]
1a000b4a:	b2db      	uxtb	r3, r3
1a000b4c:	2b00      	cmp	r3, #0
1a000b4e:	d12b      	bne.n	1a000ba8 <inicia_juego+0x70>
1a000b50:	4b3f      	ldr	r3, [pc, #252]	; (1a000c50 <inicia_juego+0x118>)
1a000b52:	781b      	ldrb	r3, [r3, #0]
1a000b54:	b2db      	uxtb	r3, r3
1a000b56:	2b00      	cmp	r3, #0
1a000b58:	d126      	bne.n	1a000ba8 <inicia_juego+0x70>
1a000b5a:	4b3e      	ldr	r3, [pc, #248]	; (1a000c54 <inicia_juego+0x11c>)
1a000b5c:	781b      	ldrb	r3, [r3, #0]
1a000b5e:	b2db      	uxtb	r3, r3
1a000b60:	2b00      	cmp	r3, #0
1a000b62:	d121      	bne.n	1a000ba8 <inicia_juego+0x70>
1a000b64:	2301      	movs	r3, #1
1a000b66:	220b      	movs	r2, #11
1a000b68:	2101      	movs	r1, #1
1a000b6a:	483b      	ldr	r0, [pc, #236]	; (1a000c58 <inicia_juego+0x120>)
1a000b6c:	f7ff fec5 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000b70:	2301      	movs	r3, #1
1a000b72:	220c      	movs	r2, #12
1a000b74:	2101      	movs	r1, #1
1a000b76:	4838      	ldr	r0, [pc, #224]	; (1a000c58 <inicia_juego+0x120>)
1a000b78:	f7ff febf 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000b7c:	20fa      	movs	r0, #250	; 0xfa
1a000b7e:	f7ff fee5 	bl	1a00094c <StopWatch_DelayMs>
1a000b82:	2300      	movs	r3, #0
1a000b84:	220b      	movs	r2, #11
1a000b86:	2101      	movs	r1, #1
1a000b88:	4833      	ldr	r0, [pc, #204]	; (1a000c58 <inicia_juego+0x120>)
1a000b8a:	f7ff feb6 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000b8e:	2300      	movs	r3, #0
1a000b90:	220c      	movs	r2, #12
1a000b92:	2101      	movs	r1, #1
1a000b94:	4830      	ldr	r0, [pc, #192]	; (1a000c58 <inicia_juego+0x120>)
1a000b96:	f7ff feb0 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000b9a:	4b30      	ldr	r3, [pc, #192]	; (1a000c5c <inicia_juego+0x124>)
1a000b9c:	2200      	movs	r2, #0
1a000b9e:	701a      	strb	r2, [r3, #0]
1a000ba0:	4b2f      	ldr	r3, [pc, #188]	; (1a000c60 <inicia_juego+0x128>)
1a000ba2:	2200      	movs	r2, #0
1a000ba4:	701a      	strb	r2, [r3, #0]
1a000ba6:	e04d      	b.n	1a000c44 <inicia_juego+0x10c>
1a000ba8:	4b27      	ldr	r3, [pc, #156]	; (1a000c48 <inicia_juego+0x110>)
1a000baa:	781b      	ldrb	r3, [r3, #0]
1a000bac:	b2db      	uxtb	r3, r3
1a000bae:	2b00      	cmp	r3, #0
1a000bb0:	d021      	beq.n	1a000bf6 <inicia_juego+0xbe>
1a000bb2:	4b28      	ldr	r3, [pc, #160]	; (1a000c54 <inicia_juego+0x11c>)
1a000bb4:	781b      	ldrb	r3, [r3, #0]
1a000bb6:	b2db      	uxtb	r3, r3
1a000bb8:	2b00      	cmp	r3, #0
1a000bba:	d11c      	bne.n	1a000bf6 <inicia_juego+0xbe>
1a000bbc:	2300      	movs	r3, #0
1a000bbe:	220c      	movs	r2, #12
1a000bc0:	2101      	movs	r1, #1
1a000bc2:	4825      	ldr	r0, [pc, #148]	; (1a000c58 <inicia_juego+0x120>)
1a000bc4:	f7ff fe99 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000bc8:	2301      	movs	r3, #1
1a000bca:	220b      	movs	r2, #11
1a000bcc:	2101      	movs	r1, #1
1a000bce:	4822      	ldr	r0, [pc, #136]	; (1a000c58 <inicia_juego+0x120>)
1a000bd0:	f7ff fe93 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000bd4:	f44f 7016 	mov.w	r0, #600	; 0x258
1a000bd8:	f7ff feb8 	bl	1a00094c <StopWatch_DelayMs>
1a000bdc:	4b21      	ldr	r3, [pc, #132]	; (1a000c64 <inicia_juego+0x12c>)
1a000bde:	2201      	movs	r2, #1
1a000be0:	701a      	strb	r2, [r3, #0]
1a000be2:	4b1b      	ldr	r3, [pc, #108]	; (1a000c50 <inicia_juego+0x118>)
1a000be4:	2201      	movs	r2, #1
1a000be6:	701a      	strb	r2, [r3, #0]
1a000be8:	4b1c      	ldr	r3, [pc, #112]	; (1a000c5c <inicia_juego+0x124>)
1a000bea:	2200      	movs	r2, #0
1a000bec:	701a      	strb	r2, [r3, #0]
1a000bee:	4b1c      	ldr	r3, [pc, #112]	; (1a000c60 <inicia_juego+0x128>)
1a000bf0:	2200      	movs	r2, #0
1a000bf2:	701a      	strb	r2, [r3, #0]
1a000bf4:	e026      	b.n	1a000c44 <inicia_juego+0x10c>
1a000bf6:	4b15      	ldr	r3, [pc, #84]	; (1a000c4c <inicia_juego+0x114>)
1a000bf8:	781b      	ldrb	r3, [r3, #0]
1a000bfa:	b2db      	uxtb	r3, r3
1a000bfc:	2b00      	cmp	r3, #0
1a000bfe:	d021      	beq.n	1a000c44 <inicia_juego+0x10c>
1a000c00:	4b14      	ldr	r3, [pc, #80]	; (1a000c54 <inicia_juego+0x11c>)
1a000c02:	781b      	ldrb	r3, [r3, #0]
1a000c04:	b2db      	uxtb	r3, r3
1a000c06:	2b00      	cmp	r3, #0
1a000c08:	d11c      	bne.n	1a000c44 <inicia_juego+0x10c>
1a000c0a:	2300      	movs	r3, #0
1a000c0c:	220b      	movs	r2, #11
1a000c0e:	2101      	movs	r1, #1
1a000c10:	4811      	ldr	r0, [pc, #68]	; (1a000c58 <inicia_juego+0x120>)
1a000c12:	f7ff fe72 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000c16:	2301      	movs	r3, #1
1a000c18:	220c      	movs	r2, #12
1a000c1a:	2101      	movs	r1, #1
1a000c1c:	480e      	ldr	r0, [pc, #56]	; (1a000c58 <inicia_juego+0x120>)
1a000c1e:	f7ff fe6c 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000c22:	f44f 7016 	mov.w	r0, #600	; 0x258
1a000c26:	f7ff fe91 	bl	1a00094c <StopWatch_DelayMs>
1a000c2a:	4b0f      	ldr	r3, [pc, #60]	; (1a000c68 <inicia_juego+0x130>)
1a000c2c:	2201      	movs	r2, #1
1a000c2e:	701a      	strb	r2, [r3, #0]
1a000c30:	4b07      	ldr	r3, [pc, #28]	; (1a000c50 <inicia_juego+0x118>)
1a000c32:	2201      	movs	r2, #1
1a000c34:	701a      	strb	r2, [r3, #0]
1a000c36:	4b09      	ldr	r3, [pc, #36]	; (1a000c5c <inicia_juego+0x124>)
1a000c38:	2200      	movs	r2, #0
1a000c3a:	701a      	strb	r2, [r3, #0]
1a000c3c:	4b08      	ldr	r3, [pc, #32]	; (1a000c60 <inicia_juego+0x128>)
1a000c3e:	2200      	movs	r2, #0
1a000c40:	701a      	strb	r2, [r3, #0]
1a000c42:	e7ff      	b.n	1a000c44 <inicia_juego+0x10c>
1a000c44:	bf00      	nop
1a000c46:	bd80      	pop	{r7, pc}
1a000c48:	1000085a 	.word	0x1000085a
1a000c4c:	1000085b 	.word	0x1000085b
1a000c50:	1000085c 	.word	0x1000085c
1a000c54:	1000085d 	.word	0x1000085d
1a000c58:	400f4000 	.word	0x400f4000
1a000c5c:	10000858 	.word	0x10000858
1a000c60:	10000859 	.word	0x10000859
1a000c64:	1000085e 	.word	0x1000085e
1a000c68:	1000085f 	.word	0x1000085f

1a000c6c <cara_cruz>:
1a000c6c:	b580      	push	{r7, lr}
1a000c6e:	b082      	sub	sp, #8
1a000c70:	af00      	add	r7, sp, #0
1a000c72:	4b53      	ldr	r3, [pc, #332]	; (1a000dc0 <cara_cruz+0x154>)
1a000c74:	781b      	ldrb	r3, [r3, #0]
1a000c76:	b2db      	uxtb	r3, r3
1a000c78:	2b00      	cmp	r3, #0
1a000c7a:	f000 809d 	beq.w	1a000db8 <cara_cruz+0x14c>
1a000c7e:	2300      	movs	r3, #0
1a000c80:	220b      	movs	r2, #11
1a000c82:	2101      	movs	r1, #1
1a000c84:	484f      	ldr	r0, [pc, #316]	; (1a000dc4 <cara_cruz+0x158>)
1a000c86:	f7ff fe38 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000c8a:	2300      	movs	r3, #0
1a000c8c:	220c      	movs	r2, #12
1a000c8e:	2101      	movs	r1, #1
1a000c90:	484c      	ldr	r0, [pc, #304]	; (1a000dc4 <cara_cruz+0x158>)
1a000c92:	f7ff fe32 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000c96:	2300      	movs	r3, #0
1a000c98:	2200      	movs	r2, #0
1a000c9a:	2105      	movs	r1, #5
1a000c9c:	4849      	ldr	r0, [pc, #292]	; (1a000dc4 <cara_cruz+0x158>)
1a000c9e:	f7ff fe2c 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000ca2:	2300      	movs	r3, #0
1a000ca4:	2201      	movs	r2, #1
1a000ca6:	2105      	movs	r1, #5
1a000ca8:	4846      	ldr	r0, [pc, #280]	; (1a000dc4 <cara_cruz+0x158>)
1a000caa:	f7ff fe26 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000cae:	4b46      	ldr	r3, [pc, #280]	; (1a000dc8 <cara_cruz+0x15c>)
1a000cb0:	2200      	movs	r2, #0
1a000cb2:	701a      	strb	r2, [r3, #0]
1a000cb4:	4b45      	ldr	r3, [pc, #276]	; (1a000dcc <cara_cruz+0x160>)
1a000cb6:	2200      	movs	r2, #0
1a000cb8:	701a      	strb	r2, [r3, #0]
1a000cba:	210a      	movs	r1, #10
1a000cbc:	2005      	movs	r0, #5
1a000cbe:	f7ff fe95 	bl	1a0009ec <tiempo_aleatorio>
1a000cc2:	4602      	mov	r2, r0
1a000cc4:	4b42      	ldr	r3, [pc, #264]	; (1a000dd0 <cara_cruz+0x164>)
1a000cc6:	601a      	str	r2, [r3, #0]
1a000cc8:	4b41      	ldr	r3, [pc, #260]	; (1a000dd0 <cara_cruz+0x164>)
1a000cca:	681b      	ldr	r3, [r3, #0]
1a000ccc:	4618      	mov	r0, r3
1a000cce:	f000 fd0b 	bl	1a0016e8 <StopWatch_MsToTicks>
1a000cd2:	4602      	mov	r2, r0
1a000cd4:	4b3f      	ldr	r3, [pc, #252]	; (1a000dd4 <cara_cruz+0x168>)
1a000cd6:	601a      	str	r2, [r3, #0]
1a000cd8:	f000 fcea 	bl	1a0016b0 <StopWatch_Start>
1a000cdc:	6078      	str	r0, [r7, #4]
1a000cde:	e05a      	b.n	1a000d96 <cara_cruz+0x12a>
1a000ce0:	4b3b      	ldr	r3, [pc, #236]	; (1a000dd0 <cara_cruz+0x164>)
1a000ce2:	681b      	ldr	r3, [r3, #0]
1a000ce4:	f003 0301 	and.w	r3, r3, #1
1a000ce8:	2b00      	cmp	r3, #0
1a000cea:	d12a      	bne.n	1a000d42 <cara_cruz+0xd6>
1a000cec:	2300      	movs	r3, #0
1a000cee:	2201      	movs	r2, #1
1a000cf0:	2105      	movs	r1, #5
1a000cf2:	4834      	ldr	r0, [pc, #208]	; (1a000dc4 <cara_cruz+0x158>)
1a000cf4:	f7ff fe01 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000cf8:	2301      	movs	r3, #1
1a000cfa:	2200      	movs	r2, #0
1a000cfc:	2105      	movs	r1, #5
1a000cfe:	4831      	ldr	r0, [pc, #196]	; (1a000dc4 <cara_cruz+0x158>)
1a000d00:	f7ff fdfb 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000d04:	4b34      	ldr	r3, [pc, #208]	; (1a000dd8 <cara_cruz+0x16c>)
1a000d06:	2200      	movs	r2, #0
1a000d08:	701a      	strb	r2, [r3, #0]
1a000d0a:	4b34      	ldr	r3, [pc, #208]	; (1a000ddc <cara_cruz+0x170>)
1a000d0c:	2201      	movs	r2, #1
1a000d0e:	701a      	strb	r2, [r3, #0]
1a000d10:	2032      	movs	r0, #50	; 0x32
1a000d12:	f7ff fe1b 	bl	1a00094c <StopWatch_DelayMs>
1a000d16:	2300      	movs	r3, #0
1a000d18:	2200      	movs	r2, #0
1a000d1a:	2105      	movs	r1, #5
1a000d1c:	4829      	ldr	r0, [pc, #164]	; (1a000dc4 <cara_cruz+0x158>)
1a000d1e:	f7ff fdec 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000d22:	2301      	movs	r3, #1
1a000d24:	2201      	movs	r2, #1
1a000d26:	2105      	movs	r1, #5
1a000d28:	4826      	ldr	r0, [pc, #152]	; (1a000dc4 <cara_cruz+0x158>)
1a000d2a:	f7ff fde6 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000d2e:	4b2b      	ldr	r3, [pc, #172]	; (1a000ddc <cara_cruz+0x170>)
1a000d30:	2200      	movs	r2, #0
1a000d32:	701a      	strb	r2, [r3, #0]
1a000d34:	4b28      	ldr	r3, [pc, #160]	; (1a000dd8 <cara_cruz+0x16c>)
1a000d36:	2201      	movs	r2, #1
1a000d38:	701a      	strb	r2, [r3, #0]
1a000d3a:	2032      	movs	r0, #50	; 0x32
1a000d3c:	f7ff fe06 	bl	1a00094c <StopWatch_DelayMs>
1a000d40:	e029      	b.n	1a000d96 <cara_cruz+0x12a>
1a000d42:	2300      	movs	r3, #0
1a000d44:	2200      	movs	r2, #0
1a000d46:	2105      	movs	r1, #5
1a000d48:	481e      	ldr	r0, [pc, #120]	; (1a000dc4 <cara_cruz+0x158>)
1a000d4a:	f7ff fdd6 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000d4e:	2301      	movs	r3, #1
1a000d50:	2201      	movs	r2, #1
1a000d52:	2105      	movs	r1, #5
1a000d54:	481b      	ldr	r0, [pc, #108]	; (1a000dc4 <cara_cruz+0x158>)
1a000d56:	f7ff fdd0 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000d5a:	4b20      	ldr	r3, [pc, #128]	; (1a000ddc <cara_cruz+0x170>)
1a000d5c:	2200      	movs	r2, #0
1a000d5e:	701a      	strb	r2, [r3, #0]
1a000d60:	4b1d      	ldr	r3, [pc, #116]	; (1a000dd8 <cara_cruz+0x16c>)
1a000d62:	2201      	movs	r2, #1
1a000d64:	701a      	strb	r2, [r3, #0]
1a000d66:	2032      	movs	r0, #50	; 0x32
1a000d68:	f7ff fdf0 	bl	1a00094c <StopWatch_DelayMs>
1a000d6c:	2300      	movs	r3, #0
1a000d6e:	2201      	movs	r2, #1
1a000d70:	2105      	movs	r1, #5
1a000d72:	4814      	ldr	r0, [pc, #80]	; (1a000dc4 <cara_cruz+0x158>)
1a000d74:	f7ff fdc1 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000d78:	2301      	movs	r3, #1
1a000d7a:	2200      	movs	r2, #0
1a000d7c:	2105      	movs	r1, #5
1a000d7e:	4811      	ldr	r0, [pc, #68]	; (1a000dc4 <cara_cruz+0x158>)
1a000d80:	f7ff fdbb 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000d84:	4b14      	ldr	r3, [pc, #80]	; (1a000dd8 <cara_cruz+0x16c>)
1a000d86:	2200      	movs	r2, #0
1a000d88:	701a      	strb	r2, [r3, #0]
1a000d8a:	4b14      	ldr	r3, [pc, #80]	; (1a000ddc <cara_cruz+0x170>)
1a000d8c:	2201      	movs	r2, #1
1a000d8e:	701a      	strb	r2, [r3, #0]
1a000d90:	2032      	movs	r0, #50	; 0x32
1a000d92:	f7ff fddb 	bl	1a00094c <StopWatch_DelayMs>
1a000d96:	6878      	ldr	r0, [r7, #4]
1a000d98:	f7ff fdcb 	bl	1a000932 <StopWatch_Elapsed>
1a000d9c:	4602      	mov	r2, r0
1a000d9e:	4b0d      	ldr	r3, [pc, #52]	; (1a000dd4 <cara_cruz+0x168>)
1a000da0:	681b      	ldr	r3, [r3, #0]
1a000da2:	429a      	cmp	r2, r3
1a000da4:	d39c      	bcc.n	1a000ce0 <cara_cruz+0x74>
1a000da6:	4b06      	ldr	r3, [pc, #24]	; (1a000dc0 <cara_cruz+0x154>)
1a000da8:	2200      	movs	r2, #0
1a000daa:	701a      	strb	r2, [r3, #0]
1a000dac:	4b0c      	ldr	r3, [pc, #48]	; (1a000de0 <cara_cruz+0x174>)
1a000dae:	2201      	movs	r2, #1
1a000db0:	701a      	strb	r2, [r3, #0]
1a000db2:	20fa      	movs	r0, #250	; 0xfa
1a000db4:	f7ff fdca 	bl	1a00094c <StopWatch_DelayMs>
1a000db8:	bf00      	nop
1a000dba:	3708      	adds	r7, #8
1a000dbc:	46bd      	mov	sp, r7
1a000dbe:	bd80      	pop	{r7, pc}
1a000dc0:	1000085c 	.word	0x1000085c
1a000dc4:	400f4000 	.word	0x400f4000
1a000dc8:	1000085a 	.word	0x1000085a
1a000dcc:	1000085b 	.word	0x1000085b
1a000dd0:	10000864 	.word	0x10000864
1a000dd4:	10000868 	.word	0x10000868
1a000dd8:	10000861 	.word	0x10000861
1a000ddc:	10000860 	.word	0x10000860
1a000de0:	1000085d 	.word	0x1000085d

1a000de4 <mostrar_resultados>:
1a000de4:	b580      	push	{r7, lr}
1a000de6:	b082      	sub	sp, #8
1a000de8:	af00      	add	r7, sp, #0
1a000dea:	2300      	movs	r3, #0
1a000dec:	607b      	str	r3, [r7, #4]
1a000dee:	4b53      	ldr	r3, [pc, #332]	; (1a000f3c <mostrar_resultados+0x158>)
1a000df0:	781b      	ldrb	r3, [r3, #0]
1a000df2:	b2db      	uxtb	r3, r3
1a000df4:	2b01      	cmp	r3, #1
1a000df6:	f040 809a 	bne.w	1a000f2e <mostrar_resultados+0x14a>
1a000dfa:	e086      	b.n	1a000f0a <mostrar_resultados+0x126>
1a000dfc:	4b50      	ldr	r3, [pc, #320]	; (1a000f40 <mostrar_resultados+0x15c>)
1a000dfe:	781b      	ldrb	r3, [r3, #0]
1a000e00:	b2db      	uxtb	r3, r3
1a000e02:	2b01      	cmp	r3, #1
1a000e04:	d13d      	bne.n	1a000e82 <mostrar_resultados+0x9e>
1a000e06:	4b4f      	ldr	r3, [pc, #316]	; (1a000f44 <mostrar_resultados+0x160>)
1a000e08:	781b      	ldrb	r3, [r3, #0]
1a000e0a:	b2db      	uxtb	r3, r3
1a000e0c:	2b01      	cmp	r3, #1
1a000e0e:	d11b      	bne.n	1a000e48 <mostrar_resultados+0x64>
1a000e10:	2301      	movs	r3, #1
1a000e12:	2200      	movs	r2, #0
1a000e14:	2105      	movs	r1, #5
1a000e16:	484c      	ldr	r0, [pc, #304]	; (1a000f48 <mostrar_resultados+0x164>)
1a000e18:	f7ff fd6f 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000e1c:	2301      	movs	r3, #1
1a000e1e:	220b      	movs	r2, #11
1a000e20:	2101      	movs	r1, #1
1a000e22:	4849      	ldr	r0, [pc, #292]	; (1a000f48 <mostrar_resultados+0x164>)
1a000e24:	f7ff fd69 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000e28:	204b      	movs	r0, #75	; 0x4b
1a000e2a:	f7ff fd8f 	bl	1a00094c <StopWatch_DelayMs>
1a000e2e:	2300      	movs	r3, #0
1a000e30:	2200      	movs	r2, #0
1a000e32:	2105      	movs	r1, #5
1a000e34:	4844      	ldr	r0, [pc, #272]	; (1a000f48 <mostrar_resultados+0x164>)
1a000e36:	f7ff fd60 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000e3a:	2300      	movs	r3, #0
1a000e3c:	220b      	movs	r2, #11
1a000e3e:	2101      	movs	r1, #1
1a000e40:	4841      	ldr	r0, [pc, #260]	; (1a000f48 <mostrar_resultados+0x164>)
1a000e42:	f7ff fd5a 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000e46:	e05e      	b.n	1a000f06 <mostrar_resultados+0x122>
1a000e48:	2301      	movs	r3, #1
1a000e4a:	2201      	movs	r2, #1
1a000e4c:	2105      	movs	r1, #5
1a000e4e:	483e      	ldr	r0, [pc, #248]	; (1a000f48 <mostrar_resultados+0x164>)
1a000e50:	f7ff fd53 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000e54:	2301      	movs	r3, #1
1a000e56:	220b      	movs	r2, #11
1a000e58:	2101      	movs	r1, #1
1a000e5a:	483b      	ldr	r0, [pc, #236]	; (1a000f48 <mostrar_resultados+0x164>)
1a000e5c:	f7ff fd4d 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000e60:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a000e64:	f7ff fd72 	bl	1a00094c <StopWatch_DelayMs>
1a000e68:	2300      	movs	r3, #0
1a000e6a:	2201      	movs	r2, #1
1a000e6c:	2105      	movs	r1, #5
1a000e6e:	4836      	ldr	r0, [pc, #216]	; (1a000f48 <mostrar_resultados+0x164>)
1a000e70:	f7ff fd43 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000e74:	2300      	movs	r3, #0
1a000e76:	220b      	movs	r2, #11
1a000e78:	2101      	movs	r1, #1
1a000e7a:	4833      	ldr	r0, [pc, #204]	; (1a000f48 <mostrar_resultados+0x164>)
1a000e7c:	f7ff fd3d 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000e80:	e041      	b.n	1a000f06 <mostrar_resultados+0x122>
1a000e82:	4b32      	ldr	r3, [pc, #200]	; (1a000f4c <mostrar_resultados+0x168>)
1a000e84:	781b      	ldrb	r3, [r3, #0]
1a000e86:	b2db      	uxtb	r3, r3
1a000e88:	2b01      	cmp	r3, #1
1a000e8a:	d13c      	bne.n	1a000f06 <mostrar_resultados+0x122>
1a000e8c:	4b30      	ldr	r3, [pc, #192]	; (1a000f50 <mostrar_resultados+0x16c>)
1a000e8e:	781b      	ldrb	r3, [r3, #0]
1a000e90:	b2db      	uxtb	r3, r3
1a000e92:	2b01      	cmp	r3, #1
1a000e94:	d11b      	bne.n	1a000ece <mostrar_resultados+0xea>
1a000e96:	2301      	movs	r3, #1
1a000e98:	2201      	movs	r2, #1
1a000e9a:	2105      	movs	r1, #5
1a000e9c:	482a      	ldr	r0, [pc, #168]	; (1a000f48 <mostrar_resultados+0x164>)
1a000e9e:	f7ff fd2c 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000ea2:	2301      	movs	r3, #1
1a000ea4:	220c      	movs	r2, #12
1a000ea6:	2101      	movs	r1, #1
1a000ea8:	4827      	ldr	r0, [pc, #156]	; (1a000f48 <mostrar_resultados+0x164>)
1a000eaa:	f7ff fd26 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000eae:	204b      	movs	r0, #75	; 0x4b
1a000eb0:	f7ff fd4c 	bl	1a00094c <StopWatch_DelayMs>
1a000eb4:	2300      	movs	r3, #0
1a000eb6:	2201      	movs	r2, #1
1a000eb8:	2105      	movs	r1, #5
1a000eba:	4823      	ldr	r0, [pc, #140]	; (1a000f48 <mostrar_resultados+0x164>)
1a000ebc:	f7ff fd1d 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000ec0:	2300      	movs	r3, #0
1a000ec2:	220c      	movs	r2, #12
1a000ec4:	2101      	movs	r1, #1
1a000ec6:	4820      	ldr	r0, [pc, #128]	; (1a000f48 <mostrar_resultados+0x164>)
1a000ec8:	f7ff fd17 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000ecc:	e01b      	b.n	1a000f06 <mostrar_resultados+0x122>
1a000ece:	2301      	movs	r3, #1
1a000ed0:	2200      	movs	r2, #0
1a000ed2:	2105      	movs	r1, #5
1a000ed4:	481c      	ldr	r0, [pc, #112]	; (1a000f48 <mostrar_resultados+0x164>)
1a000ed6:	f7ff fd10 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000eda:	2301      	movs	r3, #1
1a000edc:	220c      	movs	r2, #12
1a000ede:	2101      	movs	r1, #1
1a000ee0:	4819      	ldr	r0, [pc, #100]	; (1a000f48 <mostrar_resultados+0x164>)
1a000ee2:	f7ff fd0a 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000ee6:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a000eea:	f7ff fd2f 	bl	1a00094c <StopWatch_DelayMs>
1a000eee:	2300      	movs	r3, #0
1a000ef0:	2200      	movs	r2, #0
1a000ef2:	2105      	movs	r1, #5
1a000ef4:	4814      	ldr	r0, [pc, #80]	; (1a000f48 <mostrar_resultados+0x164>)
1a000ef6:	f7ff fd00 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000efa:	2300      	movs	r3, #0
1a000efc:	220c      	movs	r2, #12
1a000efe:	2101      	movs	r1, #1
1a000f00:	4811      	ldr	r0, [pc, #68]	; (1a000f48 <mostrar_resultados+0x164>)
1a000f02:	f7ff fcfa 	bl	1a0008fa <Chip_GPIO_SetPinState>
1a000f06:	f7ff fd39 	bl	1a00097c <escanear_teclado>
1a000f0a:	4b12      	ldr	r3, [pc, #72]	; (1a000f54 <mostrar_resultados+0x170>)
1a000f0c:	781b      	ldrb	r3, [r3, #0]
1a000f0e:	b2db      	uxtb	r3, r3
1a000f10:	2b00      	cmp	r3, #0
1a000f12:	f43f af73 	beq.w	1a000dfc <mostrar_resultados+0x18>
1a000f16:	4b0b      	ldr	r3, [pc, #44]	; (1a000f44 <mostrar_resultados+0x160>)
1a000f18:	2200      	movs	r2, #0
1a000f1a:	701a      	strb	r2, [r3, #0]
1a000f1c:	4b08      	ldr	r3, [pc, #32]	; (1a000f40 <mostrar_resultados+0x15c>)
1a000f1e:	2200      	movs	r2, #0
1a000f20:	701a      	strb	r2, [r3, #0]
1a000f22:	4b0b      	ldr	r3, [pc, #44]	; (1a000f50 <mostrar_resultados+0x16c>)
1a000f24:	2200      	movs	r2, #0
1a000f26:	701a      	strb	r2, [r3, #0]
1a000f28:	4b08      	ldr	r3, [pc, #32]	; (1a000f4c <mostrar_resultados+0x168>)
1a000f2a:	2200      	movs	r2, #0
1a000f2c:	701a      	strb	r2, [r3, #0]
1a000f2e:	4b03      	ldr	r3, [pc, #12]	; (1a000f3c <mostrar_resultados+0x158>)
1a000f30:	2200      	movs	r2, #0
1a000f32:	701a      	strb	r2, [r3, #0]
1a000f34:	bf00      	nop
1a000f36:	3708      	adds	r7, #8
1a000f38:	46bd      	mov	sp, r7
1a000f3a:	bd80      	pop	{r7, pc}
1a000f3c:	1000085d 	.word	0x1000085d
1a000f40:	1000085e 	.word	0x1000085e
1a000f44:	10000860 	.word	0x10000860
1a000f48:	400f4000 	.word	0x400f4000
1a000f4c:	1000085f 	.word	0x1000085f
1a000f50:	10000861 	.word	0x10000861
1a000f54:	10000858 	.word	0x10000858

1a000f58 <fpuInit>:
1a000f58:	b480      	push	{r7}
1a000f5a:	b089      	sub	sp, #36	; 0x24
1a000f5c:	af00      	add	r7, sp, #0
1a000f5e:	4b16      	ldr	r3, [pc, #88]	; (1a000fb8 <fpuInit+0x60>)
1a000f60:	61fb      	str	r3, [r7, #28]
1a000f62:	4b16      	ldr	r3, [pc, #88]	; (1a000fbc <fpuInit+0x64>)
1a000f64:	61bb      	str	r3, [r7, #24]
1a000f66:	4b16      	ldr	r3, [pc, #88]	; (1a000fc0 <fpuInit+0x68>)
1a000f68:	617b      	str	r3, [r7, #20]
1a000f6a:	2300      	movs	r3, #0
1a000f6c:	74fb      	strb	r3, [r7, #19]
1a000f6e:	69bb      	ldr	r3, [r7, #24]
1a000f70:	681b      	ldr	r3, [r3, #0]
1a000f72:	60bb      	str	r3, [r7, #8]
1a000f74:	697b      	ldr	r3, [r7, #20]
1a000f76:	681b      	ldr	r3, [r3, #0]
1a000f78:	607b      	str	r3, [r7, #4]
1a000f7a:	68bb      	ldr	r3, [r7, #8]
1a000f7c:	4a11      	ldr	r2, [pc, #68]	; (1a000fc4 <fpuInit+0x6c>)
1a000f7e:	4293      	cmp	r3, r2
1a000f80:	d105      	bne.n	1a000f8e <fpuInit+0x36>
1a000f82:	687b      	ldr	r3, [r7, #4]
1a000f84:	4a10      	ldr	r2, [pc, #64]	; (1a000fc8 <fpuInit+0x70>)
1a000f86:	4293      	cmp	r3, r2
1a000f88:	d101      	bne.n	1a000f8e <fpuInit+0x36>
1a000f8a:	2301      	movs	r3, #1
1a000f8c:	e000      	b.n	1a000f90 <fpuInit+0x38>
1a000f8e:	2300      	movs	r3, #0
1a000f90:	74fb      	strb	r3, [r7, #19]
1a000f92:	7cfb      	ldrb	r3, [r7, #19]
1a000f94:	2b00      	cmp	r3, #0
1a000f96:	d009      	beq.n	1a000fac <fpuInit+0x54>
1a000f98:	69fb      	ldr	r3, [r7, #28]
1a000f9a:	681b      	ldr	r3, [r3, #0]
1a000f9c:	60fb      	str	r3, [r7, #12]
1a000f9e:	68fb      	ldr	r3, [r7, #12]
1a000fa0:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a000fa4:	60fb      	str	r3, [r7, #12]
1a000fa6:	68fa      	ldr	r2, [r7, #12]
1a000fa8:	69fb      	ldr	r3, [r7, #28]
1a000faa:	601a      	str	r2, [r3, #0]
1a000fac:	bf00      	nop
1a000fae:	3724      	adds	r7, #36	; 0x24
1a000fb0:	46bd      	mov	sp, r7
1a000fb2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fb6:	4770      	bx	lr
1a000fb8:	e000ed88 	.word	0xe000ed88
1a000fbc:	e000ef40 	.word	0xe000ef40
1a000fc0:	e000ef44 	.word	0xe000ef44
1a000fc4:	10110021 	.word	0x10110021
1a000fc8:	11000011 	.word	0x11000011

1a000fcc <Chip_Clock_DisableMainPLL>:
1a000fcc:	b480      	push	{r7}
1a000fce:	af00      	add	r7, sp, #0
1a000fd0:	4b05      	ldr	r3, [pc, #20]	; (1a000fe8 <Chip_Clock_DisableMainPLL+0x1c>)
1a000fd2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000fd4:	4a04      	ldr	r2, [pc, #16]	; (1a000fe8 <Chip_Clock_DisableMainPLL+0x1c>)
1a000fd6:	f043 0301 	orr.w	r3, r3, #1
1a000fda:	6453      	str	r3, [r2, #68]	; 0x44
1a000fdc:	bf00      	nop
1a000fde:	46bd      	mov	sp, r7
1a000fe0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fe4:	4770      	bx	lr
1a000fe6:	bf00      	nop
1a000fe8:	40050000 	.word	0x40050000

1a000fec <Chip_Clock_SetupMainPLL>:
1a000fec:	b480      	push	{r7}
1a000fee:	b083      	sub	sp, #12
1a000ff0:	af00      	add	r7, sp, #0
1a000ff2:	6078      	str	r0, [r7, #4]
1a000ff4:	687b      	ldr	r3, [r7, #4]
1a000ff6:	681b      	ldr	r3, [r3, #0]
1a000ff8:	461a      	mov	r2, r3
1a000ffa:	687b      	ldr	r3, [r7, #4]
1a000ffc:	791b      	ldrb	r3, [r3, #4]
1a000ffe:	061b      	lsls	r3, r3, #24
1a001000:	4313      	orrs	r3, r2
1a001002:	687a      	ldr	r2, [r7, #4]
1a001004:	6912      	ldr	r2, [r2, #16]
1a001006:	0412      	lsls	r2, r2, #16
1a001008:	4313      	orrs	r3, r2
1a00100a:	687a      	ldr	r2, [r7, #4]
1a00100c:	6892      	ldr	r2, [r2, #8]
1a00100e:	0312      	lsls	r2, r2, #12
1a001010:	4313      	orrs	r3, r2
1a001012:	687a      	ldr	r2, [r7, #4]
1a001014:	68d2      	ldr	r2, [r2, #12]
1a001016:	0212      	lsls	r2, r2, #8
1a001018:	4313      	orrs	r3, r2
1a00101a:	4a05      	ldr	r2, [pc, #20]	; (1a001030 <Chip_Clock_SetupMainPLL+0x44>)
1a00101c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001020:	6453      	str	r3, [r2, #68]	; 0x44
1a001022:	bf00      	nop
1a001024:	370c      	adds	r7, #12
1a001026:	46bd      	mov	sp, r7
1a001028:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00102c:	4770      	bx	lr
1a00102e:	bf00      	nop
1a001030:	40050000 	.word	0x40050000

1a001034 <Chip_Clock_MainPLLLocked>:
1a001034:	b480      	push	{r7}
1a001036:	af00      	add	r7, sp, #0
1a001038:	4b06      	ldr	r3, [pc, #24]	; (1a001054 <Chip_Clock_MainPLLLocked+0x20>)
1a00103a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00103c:	f003 0301 	and.w	r3, r3, #1
1a001040:	2b00      	cmp	r3, #0
1a001042:	bf14      	ite	ne
1a001044:	2301      	movne	r3, #1
1a001046:	2300      	moveq	r3, #0
1a001048:	b2db      	uxtb	r3, r3
1a00104a:	4618      	mov	r0, r3
1a00104c:	46bd      	mov	sp, r7
1a00104e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001052:	4770      	bx	lr
1a001054:	40050000 	.word	0x40050000

1a001058 <Chip_SetupCoreClock>:
1a001058:	b590      	push	{r4, r7, lr}
1a00105a:	b08f      	sub	sp, #60	; 0x3c
1a00105c:	af00      	add	r7, sp, #0
1a00105e:	4603      	mov	r3, r0
1a001060:	6039      	str	r1, [r7, #0]
1a001062:	71fb      	strb	r3, [r7, #7]
1a001064:	4613      	mov	r3, r2
1a001066:	71bb      	strb	r3, [r7, #6]
1a001068:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a00106c:	62bb      	str	r3, [r7, #40]	; 0x28
1a00106e:	2300      	movs	r3, #0
1a001070:	633b      	str	r3, [r7, #48]	; 0x30
1a001072:	2300      	movs	r3, #0
1a001074:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001076:	79fb      	ldrb	r3, [r7, #7]
1a001078:	2b06      	cmp	r3, #6
1a00107a:	d101      	bne.n	1a001080 <Chip_SetupCoreClock+0x28>
1a00107c:	f000 fdc4 	bl	1a001c08 <Chip_Clock_EnableCrystal>
1a001080:	79f9      	ldrb	r1, [r7, #7]
1a001082:	2300      	movs	r3, #0
1a001084:	2201      	movs	r2, #1
1a001086:	2004      	movs	r0, #4
1a001088:	f000 ffb0 	bl	1a001fec <Chip_Clock_SetBaseClock>
1a00108c:	f7ff ff9e 	bl	1a000fcc <Chip_Clock_DisableMainPLL>
1a001090:	79fb      	ldrb	r3, [r7, #7]
1a001092:	733b      	strb	r3, [r7, #12]
1a001094:	f107 0308 	add.w	r3, r7, #8
1a001098:	4619      	mov	r1, r3
1a00109a:	6838      	ldr	r0, [r7, #0]
1a00109c:	f000 fdec 	bl	1a001c78 <Chip_Clock_CalcMainPLLValue>
1a0010a0:	683b      	ldr	r3, [r7, #0]
1a0010a2:	4a3d      	ldr	r2, [pc, #244]	; (1a001198 <Chip_SetupCoreClock+0x140>)
1a0010a4:	4293      	cmp	r3, r2
1a0010a6:	d916      	bls.n	1a0010d6 <Chip_SetupCoreClock+0x7e>
1a0010a8:	68bb      	ldr	r3, [r7, #8]
1a0010aa:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0010ae:	2b00      	cmp	r3, #0
1a0010b0:	d000      	beq.n	1a0010b4 <Chip_SetupCoreClock+0x5c>
1a0010b2:	e7fe      	b.n	1a0010b2 <Chip_SetupCoreClock+0x5a>
1a0010b4:	68bb      	ldr	r3, [r7, #8]
1a0010b6:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0010ba:	2b00      	cmp	r3, #0
1a0010bc:	d006      	beq.n	1a0010cc <Chip_SetupCoreClock+0x74>
1a0010be:	2301      	movs	r3, #1
1a0010c0:	633b      	str	r3, [r7, #48]	; 0x30
1a0010c2:	68bb      	ldr	r3, [r7, #8]
1a0010c4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a0010c8:	60bb      	str	r3, [r7, #8]
1a0010ca:	e004      	b.n	1a0010d6 <Chip_SetupCoreClock+0x7e>
1a0010cc:	2301      	movs	r3, #1
1a0010ce:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0010d0:	697b      	ldr	r3, [r7, #20]
1a0010d2:	3301      	adds	r3, #1
1a0010d4:	617b      	str	r3, [r7, #20]
1a0010d6:	f107 0308 	add.w	r3, r7, #8
1a0010da:	4618      	mov	r0, r3
1a0010dc:	f7ff ff86 	bl	1a000fec <Chip_Clock_SetupMainPLL>
1a0010e0:	bf00      	nop
1a0010e2:	f7ff ffa7 	bl	1a001034 <Chip_Clock_MainPLLLocked>
1a0010e6:	4603      	mov	r3, r0
1a0010e8:	2b00      	cmp	r3, #0
1a0010ea:	d0fa      	beq.n	1a0010e2 <Chip_SetupCoreClock+0x8a>
1a0010ec:	2300      	movs	r3, #0
1a0010ee:	2201      	movs	r2, #1
1a0010f0:	2109      	movs	r1, #9
1a0010f2:	2004      	movs	r0, #4
1a0010f4:	f000 ff7a 	bl	1a001fec <Chip_Clock_SetBaseClock>
1a0010f8:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a0010fa:	2b00      	cmp	r3, #0
1a0010fc:	d012      	beq.n	1a001124 <Chip_SetupCoreClock+0xcc>
1a0010fe:	f641 3358 	movw	r3, #7000	; 0x1b58
1a001102:	62bb      	str	r3, [r7, #40]	; 0x28
1a001104:	bf00      	nop
1a001106:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001108:	1e5a      	subs	r2, r3, #1
1a00110a:	62ba      	str	r2, [r7, #40]	; 0x28
1a00110c:	2b00      	cmp	r3, #0
1a00110e:	d1fa      	bne.n	1a001106 <Chip_SetupCoreClock+0xae>
1a001110:	68bb      	ldr	r3, [r7, #8]
1a001112:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a001116:	60bb      	str	r3, [r7, #8]
1a001118:	f107 0308 	add.w	r3, r7, #8
1a00111c:	4618      	mov	r0, r3
1a00111e:	f7ff ff65 	bl	1a000fec <Chip_Clock_SetupMainPLL>
1a001122:	e013      	b.n	1a00114c <Chip_SetupCoreClock+0xf4>
1a001124:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001126:	2b00      	cmp	r3, #0
1a001128:	d010      	beq.n	1a00114c <Chip_SetupCoreClock+0xf4>
1a00112a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a00112e:	62bb      	str	r3, [r7, #40]	; 0x28
1a001130:	bf00      	nop
1a001132:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001134:	1e5a      	subs	r2, r3, #1
1a001136:	62ba      	str	r2, [r7, #40]	; 0x28
1a001138:	2b00      	cmp	r3, #0
1a00113a:	d1fa      	bne.n	1a001132 <Chip_SetupCoreClock+0xda>
1a00113c:	697b      	ldr	r3, [r7, #20]
1a00113e:	3b01      	subs	r3, #1
1a001140:	617b      	str	r3, [r7, #20]
1a001142:	f107 0308 	add.w	r3, r7, #8
1a001146:	4618      	mov	r0, r3
1a001148:	f7ff ff50 	bl	1a000fec <Chip_Clock_SetupMainPLL>
1a00114c:	79bb      	ldrb	r3, [r7, #6]
1a00114e:	2b00      	cmp	r3, #0
1a001150:	d01e      	beq.n	1a001190 <Chip_SetupCoreClock+0x138>
1a001152:	2300      	movs	r3, #0
1a001154:	637b      	str	r3, [r7, #52]	; 0x34
1a001156:	e018      	b.n	1a00118a <Chip_SetupCoreClock+0x132>
1a001158:	4a10      	ldr	r2, [pc, #64]	; (1a00119c <Chip_SetupCoreClock+0x144>)
1a00115a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00115c:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a001160:	4a0e      	ldr	r2, [pc, #56]	; (1a00119c <Chip_SetupCoreClock+0x144>)
1a001162:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001164:	009b      	lsls	r3, r3, #2
1a001166:	4413      	add	r3, r2
1a001168:	7859      	ldrb	r1, [r3, #1]
1a00116a:	4a0c      	ldr	r2, [pc, #48]	; (1a00119c <Chip_SetupCoreClock+0x144>)
1a00116c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00116e:	009b      	lsls	r3, r3, #2
1a001170:	4413      	add	r3, r2
1a001172:	789c      	ldrb	r4, [r3, #2]
1a001174:	4a09      	ldr	r2, [pc, #36]	; (1a00119c <Chip_SetupCoreClock+0x144>)
1a001176:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001178:	009b      	lsls	r3, r3, #2
1a00117a:	4413      	add	r3, r2
1a00117c:	78db      	ldrb	r3, [r3, #3]
1a00117e:	4622      	mov	r2, r4
1a001180:	f000 ff34 	bl	1a001fec <Chip_Clock_SetBaseClock>
1a001184:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001186:	3301      	adds	r3, #1
1a001188:	637b      	str	r3, [r7, #52]	; 0x34
1a00118a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00118c:	2b11      	cmp	r3, #17
1a00118e:	d9e3      	bls.n	1a001158 <Chip_SetupCoreClock+0x100>
1a001190:	bf00      	nop
1a001192:	373c      	adds	r7, #60	; 0x3c
1a001194:	46bd      	mov	sp, r7
1a001196:	bd90      	pop	{r4, r7, pc}
1a001198:	068e7780 	.word	0x068e7780
1a00119c:	1a00245c 	.word	0x1a00245c

1a0011a0 <Chip_SetupXtalClocking>:
1a0011a0:	b580      	push	{r7, lr}
1a0011a2:	af00      	add	r7, sp, #0
1a0011a4:	2201      	movs	r2, #1
1a0011a6:	4903      	ldr	r1, [pc, #12]	; (1a0011b4 <Chip_SetupXtalClocking+0x14>)
1a0011a8:	2006      	movs	r0, #6
1a0011aa:	f7ff ff55 	bl	1a001058 <Chip_SetupCoreClock>
1a0011ae:	bf00      	nop
1a0011b0:	bd80      	pop	{r7, pc}
1a0011b2:	bf00      	nop
1a0011b4:	0c28cb00 	.word	0x0c28cb00

1a0011b8 <RingBuffer_IsEmpty>:
1a0011b8:	b480      	push	{r7}
1a0011ba:	b083      	sub	sp, #12
1a0011bc:	af00      	add	r7, sp, #0
1a0011be:	6078      	str	r0, [r7, #4]
1a0011c0:	687b      	ldr	r3, [r7, #4]
1a0011c2:	330c      	adds	r3, #12
1a0011c4:	681a      	ldr	r2, [r3, #0]
1a0011c6:	687b      	ldr	r3, [r7, #4]
1a0011c8:	3310      	adds	r3, #16
1a0011ca:	681b      	ldr	r3, [r3, #0]
1a0011cc:	429a      	cmp	r2, r3
1a0011ce:	bf0c      	ite	eq
1a0011d0:	2301      	moveq	r3, #1
1a0011d2:	2300      	movne	r3, #0
1a0011d4:	b2db      	uxtb	r3, r3
1a0011d6:	4618      	mov	r0, r3
1a0011d8:	370c      	adds	r7, #12
1a0011da:	46bd      	mov	sp, r7
1a0011dc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011e0:	4770      	bx	lr

1a0011e2 <Chip_UART_TXDisable>:
1a0011e2:	b480      	push	{r7}
1a0011e4:	b083      	sub	sp, #12
1a0011e6:	af00      	add	r7, sp, #0
1a0011e8:	6078      	str	r0, [r7, #4]
1a0011ea:	687b      	ldr	r3, [r7, #4]
1a0011ec:	2200      	movs	r2, #0
1a0011ee:	65da      	str	r2, [r3, #92]	; 0x5c
1a0011f0:	bf00      	nop
1a0011f2:	370c      	adds	r7, #12
1a0011f4:	46bd      	mov	sp, r7
1a0011f6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011fa:	4770      	bx	lr

1a0011fc <Chip_UART_SendByte>:
1a0011fc:	b480      	push	{r7}
1a0011fe:	b083      	sub	sp, #12
1a001200:	af00      	add	r7, sp, #0
1a001202:	6078      	str	r0, [r7, #4]
1a001204:	460b      	mov	r3, r1
1a001206:	70fb      	strb	r3, [r7, #3]
1a001208:	78fa      	ldrb	r2, [r7, #3]
1a00120a:	687b      	ldr	r3, [r7, #4]
1a00120c:	601a      	str	r2, [r3, #0]
1a00120e:	bf00      	nop
1a001210:	370c      	adds	r7, #12
1a001212:	46bd      	mov	sp, r7
1a001214:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001218:	4770      	bx	lr

1a00121a <Chip_UART_ReadByte>:
1a00121a:	b480      	push	{r7}
1a00121c:	b083      	sub	sp, #12
1a00121e:	af00      	add	r7, sp, #0
1a001220:	6078      	str	r0, [r7, #4]
1a001222:	687b      	ldr	r3, [r7, #4]
1a001224:	681b      	ldr	r3, [r3, #0]
1a001226:	b2db      	uxtb	r3, r3
1a001228:	4618      	mov	r0, r3
1a00122a:	370c      	adds	r7, #12
1a00122c:	46bd      	mov	sp, r7
1a00122e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001232:	4770      	bx	lr

1a001234 <Chip_UART_IntDisable>:
1a001234:	b480      	push	{r7}
1a001236:	b083      	sub	sp, #12
1a001238:	af00      	add	r7, sp, #0
1a00123a:	6078      	str	r0, [r7, #4]
1a00123c:	6039      	str	r1, [r7, #0]
1a00123e:	687b      	ldr	r3, [r7, #4]
1a001240:	685a      	ldr	r2, [r3, #4]
1a001242:	683b      	ldr	r3, [r7, #0]
1a001244:	43db      	mvns	r3, r3
1a001246:	401a      	ands	r2, r3
1a001248:	687b      	ldr	r3, [r7, #4]
1a00124a:	605a      	str	r2, [r3, #4]
1a00124c:	bf00      	nop
1a00124e:	370c      	adds	r7, #12
1a001250:	46bd      	mov	sp, r7
1a001252:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001256:	4770      	bx	lr

1a001258 <Chip_UART_ReadIntIDReg>:
1a001258:	b480      	push	{r7}
1a00125a:	b083      	sub	sp, #12
1a00125c:	af00      	add	r7, sp, #0
1a00125e:	6078      	str	r0, [r7, #4]
1a001260:	687b      	ldr	r3, [r7, #4]
1a001262:	689b      	ldr	r3, [r3, #8]
1a001264:	4618      	mov	r0, r3
1a001266:	370c      	adds	r7, #12
1a001268:	46bd      	mov	sp, r7
1a00126a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00126e:	4770      	bx	lr

1a001270 <Chip_UART_SetupFIFOS>:
1a001270:	b480      	push	{r7}
1a001272:	b083      	sub	sp, #12
1a001274:	af00      	add	r7, sp, #0
1a001276:	6078      	str	r0, [r7, #4]
1a001278:	6039      	str	r1, [r7, #0]
1a00127a:	687b      	ldr	r3, [r7, #4]
1a00127c:	683a      	ldr	r2, [r7, #0]
1a00127e:	609a      	str	r2, [r3, #8]
1a001280:	bf00      	nop
1a001282:	370c      	adds	r7, #12
1a001284:	46bd      	mov	sp, r7
1a001286:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00128a:	4770      	bx	lr

1a00128c <Chip_UART_ConfigData>:
1a00128c:	b480      	push	{r7}
1a00128e:	b083      	sub	sp, #12
1a001290:	af00      	add	r7, sp, #0
1a001292:	6078      	str	r0, [r7, #4]
1a001294:	6039      	str	r1, [r7, #0]
1a001296:	687b      	ldr	r3, [r7, #4]
1a001298:	683a      	ldr	r2, [r7, #0]
1a00129a:	60da      	str	r2, [r3, #12]
1a00129c:	bf00      	nop
1a00129e:	370c      	adds	r7, #12
1a0012a0:	46bd      	mov	sp, r7
1a0012a2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012a6:	4770      	bx	lr

1a0012a8 <Chip_UART_EnableDivisorAccess>:
1a0012a8:	b480      	push	{r7}
1a0012aa:	b083      	sub	sp, #12
1a0012ac:	af00      	add	r7, sp, #0
1a0012ae:	6078      	str	r0, [r7, #4]
1a0012b0:	687b      	ldr	r3, [r7, #4]
1a0012b2:	68db      	ldr	r3, [r3, #12]
1a0012b4:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a0012b8:	687b      	ldr	r3, [r7, #4]
1a0012ba:	60da      	str	r2, [r3, #12]
1a0012bc:	bf00      	nop
1a0012be:	370c      	adds	r7, #12
1a0012c0:	46bd      	mov	sp, r7
1a0012c2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012c6:	4770      	bx	lr

1a0012c8 <Chip_UART_DisableDivisorAccess>:
1a0012c8:	b480      	push	{r7}
1a0012ca:	b083      	sub	sp, #12
1a0012cc:	af00      	add	r7, sp, #0
1a0012ce:	6078      	str	r0, [r7, #4]
1a0012d0:	687b      	ldr	r3, [r7, #4]
1a0012d2:	68db      	ldr	r3, [r3, #12]
1a0012d4:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a0012d8:	687b      	ldr	r3, [r7, #4]
1a0012da:	60da      	str	r2, [r3, #12]
1a0012dc:	bf00      	nop
1a0012de:	370c      	adds	r7, #12
1a0012e0:	46bd      	mov	sp, r7
1a0012e2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012e6:	4770      	bx	lr

1a0012e8 <Chip_UART_SetDivisorLatches>:
1a0012e8:	b480      	push	{r7}
1a0012ea:	b083      	sub	sp, #12
1a0012ec:	af00      	add	r7, sp, #0
1a0012ee:	6078      	str	r0, [r7, #4]
1a0012f0:	460b      	mov	r3, r1
1a0012f2:	70fb      	strb	r3, [r7, #3]
1a0012f4:	4613      	mov	r3, r2
1a0012f6:	70bb      	strb	r3, [r7, #2]
1a0012f8:	78fa      	ldrb	r2, [r7, #3]
1a0012fa:	687b      	ldr	r3, [r7, #4]
1a0012fc:	601a      	str	r2, [r3, #0]
1a0012fe:	78ba      	ldrb	r2, [r7, #2]
1a001300:	687b      	ldr	r3, [r7, #4]
1a001302:	605a      	str	r2, [r3, #4]
1a001304:	bf00      	nop
1a001306:	370c      	adds	r7, #12
1a001308:	46bd      	mov	sp, r7
1a00130a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00130e:	4770      	bx	lr

1a001310 <Chip_UART_ReadLineStatus>:
1a001310:	b480      	push	{r7}
1a001312:	b083      	sub	sp, #12
1a001314:	af00      	add	r7, sp, #0
1a001316:	6078      	str	r0, [r7, #4]
1a001318:	687b      	ldr	r3, [r7, #4]
1a00131a:	695b      	ldr	r3, [r3, #20]
1a00131c:	4618      	mov	r0, r3
1a00131e:	370c      	adds	r7, #12
1a001320:	46bd      	mov	sp, r7
1a001322:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001326:	4770      	bx	lr

1a001328 <Chip_UART_SetAutoBaudReg>:
1a001328:	b480      	push	{r7}
1a00132a:	b083      	sub	sp, #12
1a00132c:	af00      	add	r7, sp, #0
1a00132e:	6078      	str	r0, [r7, #4]
1a001330:	6039      	str	r1, [r7, #0]
1a001332:	687b      	ldr	r3, [r7, #4]
1a001334:	6a1a      	ldr	r2, [r3, #32]
1a001336:	683b      	ldr	r3, [r7, #0]
1a001338:	431a      	orrs	r2, r3
1a00133a:	687b      	ldr	r3, [r7, #4]
1a00133c:	621a      	str	r2, [r3, #32]
1a00133e:	bf00      	nop
1a001340:	370c      	adds	r7, #12
1a001342:	46bd      	mov	sp, r7
1a001344:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001348:	4770      	bx	lr
1a00134a:	Address 0x000000001a00134a is out of bounds.


1a00134c <Chip_UART_GetIndex>:
1a00134c:	b480      	push	{r7}
1a00134e:	b085      	sub	sp, #20
1a001350:	af00      	add	r7, sp, #0
1a001352:	6078      	str	r0, [r7, #4]
1a001354:	687b      	ldr	r3, [r7, #4]
1a001356:	60fb      	str	r3, [r7, #12]
1a001358:	68fb      	ldr	r3, [r7, #12]
1a00135a:	4a10      	ldr	r2, [pc, #64]	; (1a00139c <Chip_UART_GetIndex+0x50>)
1a00135c:	4293      	cmp	r3, r2
1a00135e:	d00f      	beq.n	1a001380 <Chip_UART_GetIndex+0x34>
1a001360:	4a0e      	ldr	r2, [pc, #56]	; (1a00139c <Chip_UART_GetIndex+0x50>)
1a001362:	4293      	cmp	r3, r2
1a001364:	d803      	bhi.n	1a00136e <Chip_UART_GetIndex+0x22>
1a001366:	4a0e      	ldr	r2, [pc, #56]	; (1a0013a0 <Chip_UART_GetIndex+0x54>)
1a001368:	4293      	cmp	r3, r2
1a00136a:	d007      	beq.n	1a00137c <Chip_UART_GetIndex+0x30>
1a00136c:	e00e      	b.n	1a00138c <Chip_UART_GetIndex+0x40>
1a00136e:	4a0d      	ldr	r2, [pc, #52]	; (1a0013a4 <Chip_UART_GetIndex+0x58>)
1a001370:	4293      	cmp	r3, r2
1a001372:	d007      	beq.n	1a001384 <Chip_UART_GetIndex+0x38>
1a001374:	4a0c      	ldr	r2, [pc, #48]	; (1a0013a8 <Chip_UART_GetIndex+0x5c>)
1a001376:	4293      	cmp	r3, r2
1a001378:	d006      	beq.n	1a001388 <Chip_UART_GetIndex+0x3c>
1a00137a:	e007      	b.n	1a00138c <Chip_UART_GetIndex+0x40>
1a00137c:	2300      	movs	r3, #0
1a00137e:	e006      	b.n	1a00138e <Chip_UART_GetIndex+0x42>
1a001380:	2301      	movs	r3, #1
1a001382:	e004      	b.n	1a00138e <Chip_UART_GetIndex+0x42>
1a001384:	2302      	movs	r3, #2
1a001386:	e002      	b.n	1a00138e <Chip_UART_GetIndex+0x42>
1a001388:	2303      	movs	r3, #3
1a00138a:	e000      	b.n	1a00138e <Chip_UART_GetIndex+0x42>
1a00138c:	2300      	movs	r3, #0
1a00138e:	4618      	mov	r0, r3
1a001390:	3714      	adds	r7, #20
1a001392:	46bd      	mov	sp, r7
1a001394:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001398:	4770      	bx	lr
1a00139a:	bf00      	nop
1a00139c:	40082000 	.word	0x40082000
1a0013a0:	40081000 	.word	0x40081000
1a0013a4:	400c1000 	.word	0x400c1000
1a0013a8:	400c2000 	.word	0x400c2000

1a0013ac <Chip_UART_ABIntHandler>:
1a0013ac:	b580      	push	{r7, lr}
1a0013ae:	b082      	sub	sp, #8
1a0013b0:	af00      	add	r7, sp, #0
1a0013b2:	6078      	str	r0, [r7, #4]
1a0013b4:	6878      	ldr	r0, [r7, #4]
1a0013b6:	f7ff ff4f 	bl	1a001258 <Chip_UART_ReadIntIDReg>
1a0013ba:	4603      	mov	r3, r0
1a0013bc:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a0013c0:	2b00      	cmp	r3, #0
1a0013c2:	d011      	beq.n	1a0013e8 <Chip_UART_ABIntHandler+0x3c>
1a0013c4:	f44f 7180 	mov.w	r1, #256	; 0x100
1a0013c8:	6878      	ldr	r0, [r7, #4]
1a0013ca:	f7ff ffad 	bl	1a001328 <Chip_UART_SetAutoBaudReg>
1a0013ce:	f44f 7180 	mov.w	r1, #256	; 0x100
1a0013d2:	6878      	ldr	r0, [r7, #4]
1a0013d4:	f7ff ff2e 	bl	1a001234 <Chip_UART_IntDisable>
1a0013d8:	4b0e      	ldr	r3, [pc, #56]	; (1a001414 <Chip_UART_ABIntHandler+0x68>)
1a0013da:	781b      	ldrb	r3, [r3, #0]
1a0013dc:	b2db      	uxtb	r3, r3
1a0013de:	2b00      	cmp	r3, #0
1a0013e0:	d102      	bne.n	1a0013e8 <Chip_UART_ABIntHandler+0x3c>
1a0013e2:	4b0c      	ldr	r3, [pc, #48]	; (1a001414 <Chip_UART_ABIntHandler+0x68>)
1a0013e4:	2201      	movs	r2, #1
1a0013e6:	701a      	strb	r2, [r3, #0]
1a0013e8:	6878      	ldr	r0, [r7, #4]
1a0013ea:	f7ff ff35 	bl	1a001258 <Chip_UART_ReadIntIDReg>
1a0013ee:	4603      	mov	r3, r0
1a0013f0:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a0013f4:	2b00      	cmp	r3, #0
1a0013f6:	d009      	beq.n	1a00140c <Chip_UART_ABIntHandler+0x60>
1a0013f8:	f44f 7100 	mov.w	r1, #512	; 0x200
1a0013fc:	6878      	ldr	r0, [r7, #4]
1a0013fe:	f7ff ff93 	bl	1a001328 <Chip_UART_SetAutoBaudReg>
1a001402:	f44f 7100 	mov.w	r1, #512	; 0x200
1a001406:	6878      	ldr	r0, [r7, #4]
1a001408:	f7ff ff14 	bl	1a001234 <Chip_UART_IntDisable>
1a00140c:	bf00      	nop
1a00140e:	3708      	adds	r7, #8
1a001410:	46bd      	mov	sp, r7
1a001412:	bd80      	pop	{r7, pc}
1a001414:	1000086d 	.word	0x1000086d

1a001418 <Chip_UART_Init>:
1a001418:	b580      	push	{r7, lr}
1a00141a:	b084      	sub	sp, #16
1a00141c:	af00      	add	r7, sp, #0
1a00141e:	6078      	str	r0, [r7, #4]
1a001420:	68fb      	ldr	r3, [r7, #12]
1a001422:	6878      	ldr	r0, [r7, #4]
1a001424:	f7ff ff92 	bl	1a00134c <Chip_UART_GetIndex>
1a001428:	4602      	mov	r2, r0
1a00142a:	4b1b      	ldr	r3, [pc, #108]	; (1a001498 <Chip_UART_Init+0x80>)
1a00142c:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a001430:	2301      	movs	r3, #1
1a001432:	2201      	movs	r2, #1
1a001434:	2101      	movs	r1, #1
1a001436:	f000 fe4d 	bl	1a0020d4 <Chip_Clock_EnableOpts>
1a00143a:	2107      	movs	r1, #7
1a00143c:	6878      	ldr	r0, [r7, #4]
1a00143e:	f7ff ff17 	bl	1a001270 <Chip_UART_SetupFIFOS>
1a001442:	6878      	ldr	r0, [r7, #4]
1a001444:	f7ff fecd 	bl	1a0011e2 <Chip_UART_TXDisable>
1a001448:	687b      	ldr	r3, [r7, #4]
1a00144a:	2200      	movs	r2, #0
1a00144c:	605a      	str	r2, [r3, #4]
1a00144e:	687b      	ldr	r3, [r7, #4]
1a001450:	2200      	movs	r2, #0
1a001452:	60da      	str	r2, [r3, #12]
1a001454:	687b      	ldr	r3, [r7, #4]
1a001456:	2200      	movs	r2, #0
1a001458:	621a      	str	r2, [r3, #32]
1a00145a:	687b      	ldr	r3, [r7, #4]
1a00145c:	2200      	movs	r2, #0
1a00145e:	64da      	str	r2, [r3, #76]	; 0x4c
1a001460:	687b      	ldr	r3, [r7, #4]
1a001462:	2200      	movs	r2, #0
1a001464:	655a      	str	r2, [r3, #84]	; 0x54
1a001466:	687b      	ldr	r3, [r7, #4]
1a001468:	2200      	movs	r2, #0
1a00146a:	651a      	str	r2, [r3, #80]	; 0x50
1a00146c:	687b      	ldr	r3, [r7, #4]
1a00146e:	4a0b      	ldr	r2, [pc, #44]	; (1a00149c <Chip_UART_Init+0x84>)
1a001470:	4293      	cmp	r3, r2
1a001472:	d105      	bne.n	1a001480 <Chip_UART_Init+0x68>
1a001474:	687b      	ldr	r3, [r7, #4]
1a001476:	2200      	movs	r2, #0
1a001478:	611a      	str	r2, [r3, #16]
1a00147a:	687b      	ldr	r3, [r7, #4]
1a00147c:	699b      	ldr	r3, [r3, #24]
1a00147e:	60fb      	str	r3, [r7, #12]
1a001480:	2103      	movs	r1, #3
1a001482:	6878      	ldr	r0, [r7, #4]
1a001484:	f7ff ff02 	bl	1a00128c <Chip_UART_ConfigData>
1a001488:	687b      	ldr	r3, [r7, #4]
1a00148a:	2210      	movs	r2, #16
1a00148c:	629a      	str	r2, [r3, #40]	; 0x28
1a00148e:	bf00      	nop
1a001490:	3710      	adds	r7, #16
1a001492:	46bd      	mov	sp, r7
1a001494:	bd80      	pop	{r7, pc}
1a001496:	bf00      	nop
1a001498:	1a0024a4 	.word	0x1a0024a4
1a00149c:	40082000 	.word	0x40082000

1a0014a0 <Chip_UART_SetBaud>:
1a0014a0:	b580      	push	{r7, lr}
1a0014a2:	b086      	sub	sp, #24
1a0014a4:	af00      	add	r7, sp, #0
1a0014a6:	6078      	str	r0, [r7, #4]
1a0014a8:	6039      	str	r1, [r7, #0]
1a0014aa:	6878      	ldr	r0, [r7, #4]
1a0014ac:	f7ff ff4e 	bl	1a00134c <Chip_UART_GetIndex>
1a0014b0:	4602      	mov	r2, r0
1a0014b2:	4b16      	ldr	r3, [pc, #88]	; (1a00150c <Chip_UART_SetBaud+0x6c>)
1a0014b4:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a0014b8:	4618      	mov	r0, r3
1a0014ba:	f000 fe79 	bl	1a0021b0 <Chip_Clock_GetRate>
1a0014be:	6178      	str	r0, [r7, #20]
1a0014c0:	683b      	ldr	r3, [r7, #0]
1a0014c2:	011b      	lsls	r3, r3, #4
1a0014c4:	697a      	ldr	r2, [r7, #20]
1a0014c6:	fbb2 f3f3 	udiv	r3, r2, r3
1a0014ca:	613b      	str	r3, [r7, #16]
1a0014cc:	693b      	ldr	r3, [r7, #16]
1a0014ce:	0a1b      	lsrs	r3, r3, #8
1a0014d0:	60fb      	str	r3, [r7, #12]
1a0014d2:	68fb      	ldr	r3, [r7, #12]
1a0014d4:	021b      	lsls	r3, r3, #8
1a0014d6:	693a      	ldr	r2, [r7, #16]
1a0014d8:	1ad3      	subs	r3, r2, r3
1a0014da:	60bb      	str	r3, [r7, #8]
1a0014dc:	6878      	ldr	r0, [r7, #4]
1a0014de:	f7ff fee3 	bl	1a0012a8 <Chip_UART_EnableDivisorAccess>
1a0014e2:	68bb      	ldr	r3, [r7, #8]
1a0014e4:	b2db      	uxtb	r3, r3
1a0014e6:	68fa      	ldr	r2, [r7, #12]
1a0014e8:	b2d2      	uxtb	r2, r2
1a0014ea:	4619      	mov	r1, r3
1a0014ec:	6878      	ldr	r0, [r7, #4]
1a0014ee:	f7ff fefb 	bl	1a0012e8 <Chip_UART_SetDivisorLatches>
1a0014f2:	6878      	ldr	r0, [r7, #4]
1a0014f4:	f7ff fee8 	bl	1a0012c8 <Chip_UART_DisableDivisorAccess>
1a0014f8:	697a      	ldr	r2, [r7, #20]
1a0014fa:	693b      	ldr	r3, [r7, #16]
1a0014fc:	fbb2 f3f3 	udiv	r3, r2, r3
1a001500:	091b      	lsrs	r3, r3, #4
1a001502:	4618      	mov	r0, r3
1a001504:	3718      	adds	r7, #24
1a001506:	46bd      	mov	sp, r7
1a001508:	bd80      	pop	{r7, pc}
1a00150a:	bf00      	nop
1a00150c:	1a0024ac 	.word	0x1a0024ac

1a001510 <Chip_UART_RXIntHandlerRB>:
1a001510:	b580      	push	{r7, lr}
1a001512:	b084      	sub	sp, #16
1a001514:	af00      	add	r7, sp, #0
1a001516:	6078      	str	r0, [r7, #4]
1a001518:	6039      	str	r1, [r7, #0]
1a00151a:	e00a      	b.n	1a001532 <Chip_UART_RXIntHandlerRB+0x22>
1a00151c:	6878      	ldr	r0, [r7, #4]
1a00151e:	f7ff fe7c 	bl	1a00121a <Chip_UART_ReadByte>
1a001522:	4603      	mov	r3, r0
1a001524:	73fb      	strb	r3, [r7, #15]
1a001526:	f107 030f 	add.w	r3, r7, #15
1a00152a:	4619      	mov	r1, r3
1a00152c:	6838      	ldr	r0, [r7, #0]
1a00152e:	f000 f944 	bl	1a0017ba <RingBuffer_Insert>
1a001532:	6878      	ldr	r0, [r7, #4]
1a001534:	f7ff feec 	bl	1a001310 <Chip_UART_ReadLineStatus>
1a001538:	4603      	mov	r3, r0
1a00153a:	f003 0301 	and.w	r3, r3, #1
1a00153e:	2b00      	cmp	r3, #0
1a001540:	d1ec      	bne.n	1a00151c <Chip_UART_RXIntHandlerRB+0xc>
1a001542:	bf00      	nop
1a001544:	3710      	adds	r7, #16
1a001546:	46bd      	mov	sp, r7
1a001548:	bd80      	pop	{r7, pc}

1a00154a <Chip_UART_TXIntHandlerRB>:
1a00154a:	b580      	push	{r7, lr}
1a00154c:	b084      	sub	sp, #16
1a00154e:	af00      	add	r7, sp, #0
1a001550:	6078      	str	r0, [r7, #4]
1a001552:	6039      	str	r1, [r7, #0]
1a001554:	e004      	b.n	1a001560 <Chip_UART_TXIntHandlerRB+0x16>
1a001556:	7bfb      	ldrb	r3, [r7, #15]
1a001558:	4619      	mov	r1, r3
1a00155a:	6878      	ldr	r0, [r7, #4]
1a00155c:	f7ff fe4e 	bl	1a0011fc <Chip_UART_SendByte>
1a001560:	6878      	ldr	r0, [r7, #4]
1a001562:	f7ff fed5 	bl	1a001310 <Chip_UART_ReadLineStatus>
1a001566:	4603      	mov	r3, r0
1a001568:	f003 0320 	and.w	r3, r3, #32
1a00156c:	2b00      	cmp	r3, #0
1a00156e:	d008      	beq.n	1a001582 <Chip_UART_TXIntHandlerRB+0x38>
1a001570:	f107 030f 	add.w	r3, r7, #15
1a001574:	4619      	mov	r1, r3
1a001576:	6838      	ldr	r0, [r7, #0]
1a001578:	f000 f94d 	bl	1a001816 <RingBuffer_Pop>
1a00157c:	4603      	mov	r3, r0
1a00157e:	2b00      	cmp	r3, #0
1a001580:	d1e9      	bne.n	1a001556 <Chip_UART_TXIntHandlerRB+0xc>
1a001582:	6838      	ldr	r0, [r7, #0]
1a001584:	f7ff fe18 	bl	1a0011b8 <RingBuffer_IsEmpty>
1a001588:	4603      	mov	r3, r0
1a00158a:	2b00      	cmp	r3, #0
1a00158c:	d003      	beq.n	1a001596 <Chip_UART_TXIntHandlerRB+0x4c>
1a00158e:	2102      	movs	r1, #2
1a001590:	6878      	ldr	r0, [r7, #4]
1a001592:	f7ff fe4f 	bl	1a001234 <Chip_UART_IntDisable>
1a001596:	bf00      	nop
1a001598:	3710      	adds	r7, #16
1a00159a:	46bd      	mov	sp, r7
1a00159c:	bd80      	pop	{r7, pc}

1a00159e <Chip_UART_IRQRBHandler>:
1a00159e:	b580      	push	{r7, lr}
1a0015a0:	b084      	sub	sp, #16
1a0015a2:	af00      	add	r7, sp, #0
1a0015a4:	60f8      	str	r0, [r7, #12]
1a0015a6:	60b9      	str	r1, [r7, #8]
1a0015a8:	607a      	str	r2, [r7, #4]
1a0015aa:	68fb      	ldr	r3, [r7, #12]
1a0015ac:	685b      	ldr	r3, [r3, #4]
1a0015ae:	f003 0302 	and.w	r3, r3, #2
1a0015b2:	2b00      	cmp	r3, #0
1a0015b4:	d00d      	beq.n	1a0015d2 <Chip_UART_IRQRBHandler+0x34>
1a0015b6:	6879      	ldr	r1, [r7, #4]
1a0015b8:	68f8      	ldr	r0, [r7, #12]
1a0015ba:	f7ff ffc6 	bl	1a00154a <Chip_UART_TXIntHandlerRB>
1a0015be:	6878      	ldr	r0, [r7, #4]
1a0015c0:	f7ff fdfa 	bl	1a0011b8 <RingBuffer_IsEmpty>
1a0015c4:	4603      	mov	r3, r0
1a0015c6:	2b00      	cmp	r3, #0
1a0015c8:	d003      	beq.n	1a0015d2 <Chip_UART_IRQRBHandler+0x34>
1a0015ca:	2102      	movs	r1, #2
1a0015cc:	68f8      	ldr	r0, [r7, #12]
1a0015ce:	f7ff fe31 	bl	1a001234 <Chip_UART_IntDisable>
1a0015d2:	68b9      	ldr	r1, [r7, #8]
1a0015d4:	68f8      	ldr	r0, [r7, #12]
1a0015d6:	f7ff ff9b 	bl	1a001510 <Chip_UART_RXIntHandlerRB>
1a0015da:	68f8      	ldr	r0, [r7, #12]
1a0015dc:	f7ff fee6 	bl	1a0013ac <Chip_UART_ABIntHandler>
1a0015e0:	bf00      	nop
1a0015e2:	3710      	adds	r7, #16
1a0015e4:	46bd      	mov	sp, r7
1a0015e6:	bd80      	pop	{r7, pc}

1a0015e8 <Chip_TIMER_Enable>:
1a0015e8:	b480      	push	{r7}
1a0015ea:	b083      	sub	sp, #12
1a0015ec:	af00      	add	r7, sp, #0
1a0015ee:	6078      	str	r0, [r7, #4]
1a0015f0:	687b      	ldr	r3, [r7, #4]
1a0015f2:	685b      	ldr	r3, [r3, #4]
1a0015f4:	f043 0201 	orr.w	r2, r3, #1
1a0015f8:	687b      	ldr	r3, [r7, #4]
1a0015fa:	605a      	str	r2, [r3, #4]
1a0015fc:	bf00      	nop
1a0015fe:	370c      	adds	r7, #12
1a001600:	46bd      	mov	sp, r7
1a001602:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001606:	4770      	bx	lr

1a001608 <Chip_TIMER_ReadCount>:
1a001608:	b480      	push	{r7}
1a00160a:	b083      	sub	sp, #12
1a00160c:	af00      	add	r7, sp, #0
1a00160e:	6078      	str	r0, [r7, #4]
1a001610:	687b      	ldr	r3, [r7, #4]
1a001612:	689b      	ldr	r3, [r3, #8]
1a001614:	4618      	mov	r0, r3
1a001616:	370c      	adds	r7, #12
1a001618:	46bd      	mov	sp, r7
1a00161a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00161e:	4770      	bx	lr

1a001620 <Chip_TIMER_PrescaleSet>:
1a001620:	b480      	push	{r7}
1a001622:	b083      	sub	sp, #12
1a001624:	af00      	add	r7, sp, #0
1a001626:	6078      	str	r0, [r7, #4]
1a001628:	6039      	str	r1, [r7, #0]
1a00162a:	687b      	ldr	r3, [r7, #4]
1a00162c:	683a      	ldr	r2, [r7, #0]
1a00162e:	60da      	str	r2, [r3, #12]
1a001630:	bf00      	nop
1a001632:	370c      	adds	r7, #12
1a001634:	46bd      	mov	sp, r7
1a001636:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00163a:	4770      	bx	lr

1a00163c <StopWatch_Init>:
1a00163c:	b580      	push	{r7, lr}
1a00163e:	b082      	sub	sp, #8
1a001640:	af00      	add	r7, sp, #0
1a001642:	2308      	movs	r3, #8
1a001644:	607b      	str	r3, [r7, #4]
1a001646:	4814      	ldr	r0, [pc, #80]	; (1a001698 <StopWatch_Init+0x5c>)
1a001648:	f000 fe34 	bl	1a0022b4 <Chip_TIMER_Init>
1a00164c:	687b      	ldr	r3, [r7, #4]
1a00164e:	3b01      	subs	r3, #1
1a001650:	4619      	mov	r1, r3
1a001652:	4811      	ldr	r0, [pc, #68]	; (1a001698 <StopWatch_Init+0x5c>)
1a001654:	f7ff ffe4 	bl	1a001620 <Chip_TIMER_PrescaleSet>
1a001658:	480f      	ldr	r0, [pc, #60]	; (1a001698 <StopWatch_Init+0x5c>)
1a00165a:	f7ff ffc5 	bl	1a0015e8 <Chip_TIMER_Enable>
1a00165e:	2084      	movs	r0, #132	; 0x84
1a001660:	f000 fda6 	bl	1a0021b0 <Chip_Clock_GetRate>
1a001664:	4602      	mov	r2, r0
1a001666:	687b      	ldr	r3, [r7, #4]
1a001668:	fbb2 f3f3 	udiv	r3, r2, r3
1a00166c:	4a0b      	ldr	r2, [pc, #44]	; (1a00169c <StopWatch_Init+0x60>)
1a00166e:	6013      	str	r3, [r2, #0]
1a001670:	4b0a      	ldr	r3, [pc, #40]	; (1a00169c <StopWatch_Init+0x60>)
1a001672:	681b      	ldr	r3, [r3, #0]
1a001674:	4a0a      	ldr	r2, [pc, #40]	; (1a0016a0 <StopWatch_Init+0x64>)
1a001676:	fba2 2303 	umull	r2, r3, r2, r3
1a00167a:	099b      	lsrs	r3, r3, #6
1a00167c:	4a09      	ldr	r2, [pc, #36]	; (1a0016a4 <StopWatch_Init+0x68>)
1a00167e:	6013      	str	r3, [r2, #0]
1a001680:	4b06      	ldr	r3, [pc, #24]	; (1a00169c <StopWatch_Init+0x60>)
1a001682:	681b      	ldr	r3, [r3, #0]
1a001684:	4a08      	ldr	r2, [pc, #32]	; (1a0016a8 <StopWatch_Init+0x6c>)
1a001686:	fba2 2303 	umull	r2, r3, r2, r3
1a00168a:	0c9b      	lsrs	r3, r3, #18
1a00168c:	4a07      	ldr	r2, [pc, #28]	; (1a0016ac <StopWatch_Init+0x70>)
1a00168e:	6013      	str	r3, [r2, #0]
1a001690:	bf00      	nop
1a001692:	3708      	adds	r7, #8
1a001694:	46bd      	mov	sp, r7
1a001696:	bd80      	pop	{r7, pc}
1a001698:	40084000 	.word	0x40084000
1a00169c:	10000870 	.word	0x10000870
1a0016a0:	10624dd3 	.word	0x10624dd3
1a0016a4:	10000874 	.word	0x10000874
1a0016a8:	431bde83 	.word	0x431bde83
1a0016ac:	10000878 	.word	0x10000878

1a0016b0 <StopWatch_Start>:
1a0016b0:	b580      	push	{r7, lr}
1a0016b2:	af00      	add	r7, sp, #0
1a0016b4:	4802      	ldr	r0, [pc, #8]	; (1a0016c0 <StopWatch_Start+0x10>)
1a0016b6:	f7ff ffa7 	bl	1a001608 <Chip_TIMER_ReadCount>
1a0016ba:	4603      	mov	r3, r0
1a0016bc:	4618      	mov	r0, r3
1a0016be:	bd80      	pop	{r7, pc}
1a0016c0:	40084000 	.word	0x40084000

1a0016c4 <StopWatch_TicksToMs>:
1a0016c4:	b480      	push	{r7}
1a0016c6:	b083      	sub	sp, #12
1a0016c8:	af00      	add	r7, sp, #0
1a0016ca:	6078      	str	r0, [r7, #4]
1a0016cc:	4b05      	ldr	r3, [pc, #20]	; (1a0016e4 <StopWatch_TicksToMs+0x20>)
1a0016ce:	681b      	ldr	r3, [r3, #0]
1a0016d0:	687a      	ldr	r2, [r7, #4]
1a0016d2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0016d6:	4618      	mov	r0, r3
1a0016d8:	370c      	adds	r7, #12
1a0016da:	46bd      	mov	sp, r7
1a0016dc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016e0:	4770      	bx	lr
1a0016e2:	bf00      	nop
1a0016e4:	10000874 	.word	0x10000874

1a0016e8 <StopWatch_MsToTicks>:
1a0016e8:	b480      	push	{r7}
1a0016ea:	b083      	sub	sp, #12
1a0016ec:	af00      	add	r7, sp, #0
1a0016ee:	6078      	str	r0, [r7, #4]
1a0016f0:	4b05      	ldr	r3, [pc, #20]	; (1a001708 <StopWatch_MsToTicks+0x20>)
1a0016f2:	681b      	ldr	r3, [r3, #0]
1a0016f4:	687a      	ldr	r2, [r7, #4]
1a0016f6:	fb02 f303 	mul.w	r3, r2, r3
1a0016fa:	4618      	mov	r0, r3
1a0016fc:	370c      	adds	r7, #12
1a0016fe:	46bd      	mov	sp, r7
1a001700:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001704:	4770      	bx	lr
1a001706:	bf00      	nop
1a001708:	10000874 	.word	0x10000874

1a00170c <RingBuffer_GetCount>:
1a00170c:	b480      	push	{r7}
1a00170e:	b083      	sub	sp, #12
1a001710:	af00      	add	r7, sp, #0
1a001712:	6078      	str	r0, [r7, #4]
1a001714:	687b      	ldr	r3, [r7, #4]
1a001716:	330c      	adds	r3, #12
1a001718:	681a      	ldr	r2, [r3, #0]
1a00171a:	687b      	ldr	r3, [r7, #4]
1a00171c:	3310      	adds	r3, #16
1a00171e:	681b      	ldr	r3, [r3, #0]
1a001720:	1ad3      	subs	r3, r2, r3
1a001722:	4618      	mov	r0, r3
1a001724:	370c      	adds	r7, #12
1a001726:	46bd      	mov	sp, r7
1a001728:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00172c:	4770      	bx	lr

1a00172e <RingBuffer_IsFull>:
1a00172e:	b580      	push	{r7, lr}
1a001730:	b082      	sub	sp, #8
1a001732:	af00      	add	r7, sp, #0
1a001734:	6078      	str	r0, [r7, #4]
1a001736:	6878      	ldr	r0, [r7, #4]
1a001738:	f7ff ffe8 	bl	1a00170c <RingBuffer_GetCount>
1a00173c:	4602      	mov	r2, r0
1a00173e:	687b      	ldr	r3, [r7, #4]
1a001740:	685b      	ldr	r3, [r3, #4]
1a001742:	429a      	cmp	r2, r3
1a001744:	bfac      	ite	ge
1a001746:	2301      	movge	r3, #1
1a001748:	2300      	movlt	r3, #0
1a00174a:	b2db      	uxtb	r3, r3
1a00174c:	4618      	mov	r0, r3
1a00174e:	3708      	adds	r7, #8
1a001750:	46bd      	mov	sp, r7
1a001752:	bd80      	pop	{r7, pc}

1a001754 <RingBuffer_IsEmpty>:
1a001754:	b480      	push	{r7}
1a001756:	b083      	sub	sp, #12
1a001758:	af00      	add	r7, sp, #0
1a00175a:	6078      	str	r0, [r7, #4]
1a00175c:	687b      	ldr	r3, [r7, #4]
1a00175e:	330c      	adds	r3, #12
1a001760:	681a      	ldr	r2, [r3, #0]
1a001762:	687b      	ldr	r3, [r7, #4]
1a001764:	3310      	adds	r3, #16
1a001766:	681b      	ldr	r3, [r3, #0]
1a001768:	429a      	cmp	r2, r3
1a00176a:	bf0c      	ite	eq
1a00176c:	2301      	moveq	r3, #1
1a00176e:	2300      	movne	r3, #0
1a001770:	b2db      	uxtb	r3, r3
1a001772:	4618      	mov	r0, r3
1a001774:	370c      	adds	r7, #12
1a001776:	46bd      	mov	sp, r7
1a001778:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00177c:	4770      	bx	lr

1a00177e <RingBuffer_Init>:
1a00177e:	b480      	push	{r7}
1a001780:	b085      	sub	sp, #20
1a001782:	af00      	add	r7, sp, #0
1a001784:	60f8      	str	r0, [r7, #12]
1a001786:	60b9      	str	r1, [r7, #8]
1a001788:	607a      	str	r2, [r7, #4]
1a00178a:	603b      	str	r3, [r7, #0]
1a00178c:	68fb      	ldr	r3, [r7, #12]
1a00178e:	68ba      	ldr	r2, [r7, #8]
1a001790:	601a      	str	r2, [r3, #0]
1a001792:	68fb      	ldr	r3, [r7, #12]
1a001794:	683a      	ldr	r2, [r7, #0]
1a001796:	605a      	str	r2, [r3, #4]
1a001798:	68fb      	ldr	r3, [r7, #12]
1a00179a:	687a      	ldr	r2, [r7, #4]
1a00179c:	609a      	str	r2, [r3, #8]
1a00179e:	68fb      	ldr	r3, [r7, #12]
1a0017a0:	2200      	movs	r2, #0
1a0017a2:	611a      	str	r2, [r3, #16]
1a0017a4:	68fb      	ldr	r3, [r7, #12]
1a0017a6:	691a      	ldr	r2, [r3, #16]
1a0017a8:	68fb      	ldr	r3, [r7, #12]
1a0017aa:	60da      	str	r2, [r3, #12]
1a0017ac:	2301      	movs	r3, #1
1a0017ae:	4618      	mov	r0, r3
1a0017b0:	3714      	adds	r7, #20
1a0017b2:	46bd      	mov	sp, r7
1a0017b4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017b8:	4770      	bx	lr

1a0017ba <RingBuffer_Insert>:
1a0017ba:	b580      	push	{r7, lr}
1a0017bc:	b084      	sub	sp, #16
1a0017be:	af00      	add	r7, sp, #0
1a0017c0:	6078      	str	r0, [r7, #4]
1a0017c2:	6039      	str	r1, [r7, #0]
1a0017c4:	687b      	ldr	r3, [r7, #4]
1a0017c6:	681b      	ldr	r3, [r3, #0]
1a0017c8:	60fb      	str	r3, [r7, #12]
1a0017ca:	6878      	ldr	r0, [r7, #4]
1a0017cc:	f7ff ffaf 	bl	1a00172e <RingBuffer_IsFull>
1a0017d0:	4603      	mov	r3, r0
1a0017d2:	2b00      	cmp	r3, #0
1a0017d4:	d001      	beq.n	1a0017da <RingBuffer_Insert+0x20>
1a0017d6:	2300      	movs	r3, #0
1a0017d8:	e019      	b.n	1a00180e <RingBuffer_Insert+0x54>
1a0017da:	687b      	ldr	r3, [r7, #4]
1a0017dc:	68db      	ldr	r3, [r3, #12]
1a0017de:	687a      	ldr	r2, [r7, #4]
1a0017e0:	6852      	ldr	r2, [r2, #4]
1a0017e2:	3a01      	subs	r2, #1
1a0017e4:	4013      	ands	r3, r2
1a0017e6:	687a      	ldr	r2, [r7, #4]
1a0017e8:	6892      	ldr	r2, [r2, #8]
1a0017ea:	fb02 f303 	mul.w	r3, r2, r3
1a0017ee:	68fa      	ldr	r2, [r7, #12]
1a0017f0:	4413      	add	r3, r2
1a0017f2:	60fb      	str	r3, [r7, #12]
1a0017f4:	687b      	ldr	r3, [r7, #4]
1a0017f6:	689b      	ldr	r3, [r3, #8]
1a0017f8:	461a      	mov	r2, r3
1a0017fa:	6839      	ldr	r1, [r7, #0]
1a0017fc:	68f8      	ldr	r0, [r7, #12]
1a0017fe:	f000 fd69 	bl	1a0022d4 <memcpy>
1a001802:	687b      	ldr	r3, [r7, #4]
1a001804:	68db      	ldr	r3, [r3, #12]
1a001806:	1c5a      	adds	r2, r3, #1
1a001808:	687b      	ldr	r3, [r7, #4]
1a00180a:	60da      	str	r2, [r3, #12]
1a00180c:	2301      	movs	r3, #1
1a00180e:	4618      	mov	r0, r3
1a001810:	3710      	adds	r7, #16
1a001812:	46bd      	mov	sp, r7
1a001814:	bd80      	pop	{r7, pc}

1a001816 <RingBuffer_Pop>:
1a001816:	b580      	push	{r7, lr}
1a001818:	b084      	sub	sp, #16
1a00181a:	af00      	add	r7, sp, #0
1a00181c:	6078      	str	r0, [r7, #4]
1a00181e:	6039      	str	r1, [r7, #0]
1a001820:	687b      	ldr	r3, [r7, #4]
1a001822:	681b      	ldr	r3, [r3, #0]
1a001824:	60fb      	str	r3, [r7, #12]
1a001826:	6878      	ldr	r0, [r7, #4]
1a001828:	f7ff ff94 	bl	1a001754 <RingBuffer_IsEmpty>
1a00182c:	4603      	mov	r3, r0
1a00182e:	2b00      	cmp	r3, #0
1a001830:	d001      	beq.n	1a001836 <RingBuffer_Pop+0x20>
1a001832:	2300      	movs	r3, #0
1a001834:	e019      	b.n	1a00186a <RingBuffer_Pop+0x54>
1a001836:	687b      	ldr	r3, [r7, #4]
1a001838:	691b      	ldr	r3, [r3, #16]
1a00183a:	687a      	ldr	r2, [r7, #4]
1a00183c:	6852      	ldr	r2, [r2, #4]
1a00183e:	3a01      	subs	r2, #1
1a001840:	4013      	ands	r3, r2
1a001842:	687a      	ldr	r2, [r7, #4]
1a001844:	6892      	ldr	r2, [r2, #8]
1a001846:	fb02 f303 	mul.w	r3, r2, r3
1a00184a:	68fa      	ldr	r2, [r7, #12]
1a00184c:	4413      	add	r3, r2
1a00184e:	60fb      	str	r3, [r7, #12]
1a001850:	687b      	ldr	r3, [r7, #4]
1a001852:	689b      	ldr	r3, [r3, #8]
1a001854:	461a      	mov	r2, r3
1a001856:	68f9      	ldr	r1, [r7, #12]
1a001858:	6838      	ldr	r0, [r7, #0]
1a00185a:	f000 fd3b 	bl	1a0022d4 <memcpy>
1a00185e:	687b      	ldr	r3, [r7, #4]
1a001860:	691b      	ldr	r3, [r3, #16]
1a001862:	1c5a      	adds	r2, r3, #1
1a001864:	687b      	ldr	r3, [r7, #4]
1a001866:	611a      	str	r2, [r3, #16]
1a001868:	2301      	movs	r3, #1
1a00186a:	4618      	mov	r0, r3
1a00186c:	3710      	adds	r7, #16
1a00186e:	46bd      	mov	sp, r7
1a001870:	bd80      	pop	{r7, pc}

1a001872 <ABS>:
1a001872:	b480      	push	{r7}
1a001874:	b083      	sub	sp, #12
1a001876:	af00      	add	r7, sp, #0
1a001878:	6078      	str	r0, [r7, #4]
1a00187a:	687b      	ldr	r3, [r7, #4]
1a00187c:	2b00      	cmp	r3, #0
1a00187e:	da02      	bge.n	1a001886 <ABS+0x14>
1a001880:	687b      	ldr	r3, [r7, #4]
1a001882:	425b      	negs	r3, r3
1a001884:	e000      	b.n	1a001888 <ABS+0x16>
1a001886:	687b      	ldr	r3, [r7, #4]
1a001888:	4618      	mov	r0, r3
1a00188a:	370c      	adds	r7, #12
1a00188c:	46bd      	mov	sp, r7
1a00188e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001892:	4770      	bx	lr

1a001894 <pll_calc_divs>:
1a001894:	b580      	push	{r7, lr}
1a001896:	b088      	sub	sp, #32
1a001898:	af00      	add	r7, sp, #0
1a00189a:	6078      	str	r0, [r7, #4]
1a00189c:	6039      	str	r1, [r7, #0]
1a00189e:	687b      	ldr	r3, [r7, #4]
1a0018a0:	61fb      	str	r3, [r7, #28]
1a0018a2:	683b      	ldr	r3, [r7, #0]
1a0018a4:	681b      	ldr	r3, [r3, #0]
1a0018a6:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0018aa:	2b00      	cmp	r3, #0
1a0018ac:	d005      	beq.n	1a0018ba <pll_calc_divs+0x26>
1a0018ae:	683b      	ldr	r3, [r7, #0]
1a0018b0:	681b      	ldr	r3, [r3, #0]
1a0018b2:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a0018b6:	683b      	ldr	r3, [r7, #0]
1a0018b8:	601a      	str	r2, [r3, #0]
1a0018ba:	2301      	movs	r3, #1
1a0018bc:	61bb      	str	r3, [r7, #24]
1a0018be:	e06f      	b.n	1a0019a0 <pll_calc_divs+0x10c>
1a0018c0:	2300      	movs	r3, #0
1a0018c2:	613b      	str	r3, [r7, #16]
1a0018c4:	e066      	b.n	1a001994 <pll_calc_divs+0x100>
1a0018c6:	2301      	movs	r3, #1
1a0018c8:	617b      	str	r3, [r7, #20]
1a0018ca:	e05a      	b.n	1a001982 <pll_calc_divs+0xee>
1a0018cc:	683b      	ldr	r3, [r7, #0]
1a0018ce:	681b      	ldr	r3, [r3, #0]
1a0018d0:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0018d4:	2b00      	cmp	r3, #0
1a0018d6:	d00e      	beq.n	1a0018f6 <pll_calc_divs+0x62>
1a0018d8:	693b      	ldr	r3, [r7, #16]
1a0018da:	3301      	adds	r3, #1
1a0018dc:	697a      	ldr	r2, [r7, #20]
1a0018de:	fa02 f303 	lsl.w	r3, r2, r3
1a0018e2:	461a      	mov	r2, r3
1a0018e4:	683b      	ldr	r3, [r7, #0]
1a0018e6:	695b      	ldr	r3, [r3, #20]
1a0018e8:	fb03 f202 	mul.w	r2, r3, r2
1a0018ec:	69bb      	ldr	r3, [r7, #24]
1a0018ee:	fbb2 f3f3 	udiv	r3, r2, r3
1a0018f2:	60fb      	str	r3, [r7, #12]
1a0018f4:	e008      	b.n	1a001908 <pll_calc_divs+0x74>
1a0018f6:	683b      	ldr	r3, [r7, #0]
1a0018f8:	695b      	ldr	r3, [r3, #20]
1a0018fa:	697a      	ldr	r2, [r7, #20]
1a0018fc:	fb02 f203 	mul.w	r2, r2, r3
1a001900:	69bb      	ldr	r3, [r7, #24]
1a001902:	fbb2 f3f3 	udiv	r3, r2, r3
1a001906:	60fb      	str	r3, [r7, #12]
1a001908:	68fb      	ldr	r3, [r7, #12]
1a00190a:	4a29      	ldr	r2, [pc, #164]	; (1a0019b0 <pll_calc_divs+0x11c>)
1a00190c:	4293      	cmp	r3, r2
1a00190e:	d934      	bls.n	1a00197a <pll_calc_divs+0xe6>
1a001910:	68fb      	ldr	r3, [r7, #12]
1a001912:	4a28      	ldr	r2, [pc, #160]	; (1a0019b4 <pll_calc_divs+0x120>)
1a001914:	4293      	cmp	r3, r2
1a001916:	d839      	bhi.n	1a00198c <pll_calc_divs+0xf8>
1a001918:	683b      	ldr	r3, [r7, #0]
1a00191a:	681b      	ldr	r3, [r3, #0]
1a00191c:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001920:	2b00      	cmp	r3, #0
1a001922:	d002      	beq.n	1a00192a <pll_calc_divs+0x96>
1a001924:	68fb      	ldr	r3, [r7, #12]
1a001926:	60bb      	str	r3, [r7, #8]
1a001928:	e005      	b.n	1a001936 <pll_calc_divs+0xa2>
1a00192a:	693b      	ldr	r3, [r7, #16]
1a00192c:	3301      	adds	r3, #1
1a00192e:	68fa      	ldr	r2, [r7, #12]
1a001930:	fa22 f303 	lsr.w	r3, r2, r3
1a001934:	60bb      	str	r3, [r7, #8]
1a001936:	687a      	ldr	r2, [r7, #4]
1a001938:	68bb      	ldr	r3, [r7, #8]
1a00193a:	1ad3      	subs	r3, r2, r3
1a00193c:	4618      	mov	r0, r3
1a00193e:	f7ff ff98 	bl	1a001872 <ABS>
1a001942:	4602      	mov	r2, r0
1a001944:	69fb      	ldr	r3, [r7, #28]
1a001946:	4293      	cmp	r3, r2
1a001948:	d918      	bls.n	1a00197c <pll_calc_divs+0xe8>
1a00194a:	683b      	ldr	r3, [r7, #0]
1a00194c:	69ba      	ldr	r2, [r7, #24]
1a00194e:	609a      	str	r2, [r3, #8]
1a001950:	693b      	ldr	r3, [r7, #16]
1a001952:	1c5a      	adds	r2, r3, #1
1a001954:	683b      	ldr	r3, [r7, #0]
1a001956:	60da      	str	r2, [r3, #12]
1a001958:	683b      	ldr	r3, [r7, #0]
1a00195a:	697a      	ldr	r2, [r7, #20]
1a00195c:	611a      	str	r2, [r3, #16]
1a00195e:	683b      	ldr	r3, [r7, #0]
1a001960:	68ba      	ldr	r2, [r7, #8]
1a001962:	619a      	str	r2, [r3, #24]
1a001964:	683b      	ldr	r3, [r7, #0]
1a001966:	68fa      	ldr	r2, [r7, #12]
1a001968:	61da      	str	r2, [r3, #28]
1a00196a:	687a      	ldr	r2, [r7, #4]
1a00196c:	68bb      	ldr	r3, [r7, #8]
1a00196e:	1ad3      	subs	r3, r2, r3
1a001970:	4618      	mov	r0, r3
1a001972:	f7ff ff7e 	bl	1a001872 <ABS>
1a001976:	61f8      	str	r0, [r7, #28]
1a001978:	e000      	b.n	1a00197c <pll_calc_divs+0xe8>
1a00197a:	bf00      	nop
1a00197c:	697b      	ldr	r3, [r7, #20]
1a00197e:	3301      	adds	r3, #1
1a001980:	617b      	str	r3, [r7, #20]
1a001982:	697b      	ldr	r3, [r7, #20]
1a001984:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a001988:	dda0      	ble.n	1a0018cc <pll_calc_divs+0x38>
1a00198a:	e000      	b.n	1a00198e <pll_calc_divs+0xfa>
1a00198c:	bf00      	nop
1a00198e:	693b      	ldr	r3, [r7, #16]
1a001990:	3301      	adds	r3, #1
1a001992:	613b      	str	r3, [r7, #16]
1a001994:	693b      	ldr	r3, [r7, #16]
1a001996:	2b03      	cmp	r3, #3
1a001998:	dd95      	ble.n	1a0018c6 <pll_calc_divs+0x32>
1a00199a:	69bb      	ldr	r3, [r7, #24]
1a00199c:	3301      	adds	r3, #1
1a00199e:	61bb      	str	r3, [r7, #24]
1a0019a0:	69bb      	ldr	r3, [r7, #24]
1a0019a2:	2b04      	cmp	r3, #4
1a0019a4:	dd8c      	ble.n	1a0018c0 <pll_calc_divs+0x2c>
1a0019a6:	bf00      	nop
1a0019a8:	3720      	adds	r7, #32
1a0019aa:	46bd      	mov	sp, r7
1a0019ac:	bd80      	pop	{r7, pc}
1a0019ae:	bf00      	nop
1a0019b0:	094c5eff 	.word	0x094c5eff
1a0019b4:	1312d000 	.word	0x1312d000

1a0019b8 <pll_get_frac>:
1a0019b8:	b5b0      	push	{r4, r5, r7, lr}
1a0019ba:	b09e      	sub	sp, #120	; 0x78
1a0019bc:	af00      	add	r7, sp, #0
1a0019be:	6078      	str	r0, [r7, #4]
1a0019c0:	6039      	str	r1, [r7, #0]
1a0019c2:	f107 030c 	add.w	r3, r7, #12
1a0019c6:	2260      	movs	r2, #96	; 0x60
1a0019c8:	2100      	movs	r1, #0
1a0019ca:	4618      	mov	r0, r3
1a0019cc:	f7fe fc98 	bl	1a000300 <memset>
1a0019d0:	68fb      	ldr	r3, [r7, #12]
1a0019d2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0019d6:	60fb      	str	r3, [r7, #12]
1a0019d8:	683b      	ldr	r3, [r7, #0]
1a0019da:	695b      	ldr	r3, [r3, #20]
1a0019dc:	623b      	str	r3, [r7, #32]
1a0019de:	683b      	ldr	r3, [r7, #0]
1a0019e0:	791b      	ldrb	r3, [r3, #4]
1a0019e2:	743b      	strb	r3, [r7, #16]
1a0019e4:	f107 030c 	add.w	r3, r7, #12
1a0019e8:	4619      	mov	r1, r3
1a0019ea:	6878      	ldr	r0, [r7, #4]
1a0019ec:	f7ff ff52 	bl	1a001894 <pll_calc_divs>
1a0019f0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0019f2:	687a      	ldr	r2, [r7, #4]
1a0019f4:	429a      	cmp	r2, r3
1a0019f6:	d10a      	bne.n	1a001a0e <pll_get_frac+0x56>
1a0019f8:	683b      	ldr	r3, [r7, #0]
1a0019fa:	461d      	mov	r5, r3
1a0019fc:	f107 040c 	add.w	r4, r7, #12
1a001a00:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001a02:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001a04:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001a08:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001a0c:	e08e      	b.n	1a001b2c <pll_get_frac+0x174>
1a001a0e:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001a10:	687a      	ldr	r2, [r7, #4]
1a001a12:	1ad3      	subs	r3, r2, r3
1a001a14:	4618      	mov	r0, r3
1a001a16:	f7ff ff2c 	bl	1a001872 <ABS>
1a001a1a:	4603      	mov	r3, r0
1a001a1c:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001a1e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001a20:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001a24:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001a26:	683b      	ldr	r3, [r7, #0]
1a001a28:	695b      	ldr	r3, [r3, #20]
1a001a2a:	663b      	str	r3, [r7, #96]	; 0x60
1a001a2c:	683b      	ldr	r3, [r7, #0]
1a001a2e:	791b      	ldrb	r3, [r3, #4]
1a001a30:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001a34:	f107 030c 	add.w	r3, r7, #12
1a001a38:	3340      	adds	r3, #64	; 0x40
1a001a3a:	4619      	mov	r1, r3
1a001a3c:	6878      	ldr	r0, [r7, #4]
1a001a3e:	f7ff ff29 	bl	1a001894 <pll_calc_divs>
1a001a42:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001a44:	687a      	ldr	r2, [r7, #4]
1a001a46:	429a      	cmp	r2, r3
1a001a48:	d10a      	bne.n	1a001a60 <pll_get_frac+0xa8>
1a001a4a:	683b      	ldr	r3, [r7, #0]
1a001a4c:	461d      	mov	r5, r3
1a001a4e:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001a52:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001a54:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001a56:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001a5a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001a5e:	e065      	b.n	1a001b2c <pll_get_frac+0x174>
1a001a60:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001a62:	687a      	ldr	r2, [r7, #4]
1a001a64:	1ad3      	subs	r3, r2, r3
1a001a66:	4618      	mov	r0, r3
1a001a68:	f7ff ff03 	bl	1a001872 <ABS>
1a001a6c:	4603      	mov	r3, r0
1a001a6e:	677b      	str	r3, [r7, #116]	; 0x74
1a001a70:	687b      	ldr	r3, [r7, #4]
1a001a72:	4a30      	ldr	r2, [pc, #192]	; (1a001b34 <pll_get_frac+0x17c>)
1a001a74:	4293      	cmp	r3, r2
1a001a76:	d81a      	bhi.n	1a001aae <pll_get_frac+0xf6>
1a001a78:	2340      	movs	r3, #64	; 0x40
1a001a7a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001a7c:	683b      	ldr	r3, [r7, #0]
1a001a7e:	695b      	ldr	r3, [r3, #20]
1a001a80:	643b      	str	r3, [r7, #64]	; 0x40
1a001a82:	f107 030c 	add.w	r3, r7, #12
1a001a86:	3320      	adds	r3, #32
1a001a88:	4619      	mov	r1, r3
1a001a8a:	6878      	ldr	r0, [r7, #4]
1a001a8c:	f7ff ff02 	bl	1a001894 <pll_calc_divs>
1a001a90:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001a92:	687a      	ldr	r2, [r7, #4]
1a001a94:	429a      	cmp	r2, r3
1a001a96:	d10a      	bne.n	1a001aae <pll_get_frac+0xf6>
1a001a98:	683b      	ldr	r3, [r7, #0]
1a001a9a:	461d      	mov	r5, r3
1a001a9c:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001aa0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001aa2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001aa4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001aa8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001aac:	e03e      	b.n	1a001b2c <pll_get_frac+0x174>
1a001aae:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001ab0:	687a      	ldr	r2, [r7, #4]
1a001ab2:	1ad3      	subs	r3, r2, r3
1a001ab4:	4618      	mov	r0, r3
1a001ab6:	f7ff fedc 	bl	1a001872 <ABS>
1a001aba:	4603      	mov	r3, r0
1a001abc:	673b      	str	r3, [r7, #112]	; 0x70
1a001abe:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001ac0:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a001ac2:	429a      	cmp	r2, r3
1a001ac4:	dc19      	bgt.n	1a001afa <pll_get_frac+0x142>
1a001ac6:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001ac8:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001aca:	429a      	cmp	r2, r3
1a001acc:	dc0a      	bgt.n	1a001ae4 <pll_get_frac+0x12c>
1a001ace:	683b      	ldr	r3, [r7, #0]
1a001ad0:	461d      	mov	r5, r3
1a001ad2:	f107 040c 	add.w	r4, r7, #12
1a001ad6:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001ad8:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001ada:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001ade:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001ae2:	e023      	b.n	1a001b2c <pll_get_frac+0x174>
1a001ae4:	683b      	ldr	r3, [r7, #0]
1a001ae6:	461d      	mov	r5, r3
1a001ae8:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001aec:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001aee:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001af0:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001af4:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001af8:	e018      	b.n	1a001b2c <pll_get_frac+0x174>
1a001afa:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001afc:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001afe:	429a      	cmp	r2, r3
1a001b00:	dc0a      	bgt.n	1a001b18 <pll_get_frac+0x160>
1a001b02:	683b      	ldr	r3, [r7, #0]
1a001b04:	461d      	mov	r5, r3
1a001b06:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001b0a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001b0c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001b0e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001b12:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001b16:	e009      	b.n	1a001b2c <pll_get_frac+0x174>
1a001b18:	683b      	ldr	r3, [r7, #0]
1a001b1a:	461d      	mov	r5, r3
1a001b1c:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001b20:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001b22:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001b24:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001b28:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001b2c:	3778      	adds	r7, #120	; 0x78
1a001b2e:	46bd      	mov	sp, r7
1a001b30:	bdb0      	pop	{r4, r5, r7, pc}
1a001b32:	bf00      	nop
1a001b34:	068e7780 	.word	0x068e7780

1a001b38 <Chip_Clock_GetDivRate>:
1a001b38:	b580      	push	{r7, lr}
1a001b3a:	b084      	sub	sp, #16
1a001b3c:	af00      	add	r7, sp, #0
1a001b3e:	4603      	mov	r3, r0
1a001b40:	460a      	mov	r2, r1
1a001b42:	71fb      	strb	r3, [r7, #7]
1a001b44:	4613      	mov	r3, r2
1a001b46:	71bb      	strb	r3, [r7, #6]
1a001b48:	79bb      	ldrb	r3, [r7, #6]
1a001b4a:	4618      	mov	r0, r3
1a001b4c:	f000 f960 	bl	1a001e10 <Chip_Clock_GetDividerSource>
1a001b50:	4603      	mov	r3, r0
1a001b52:	73fb      	strb	r3, [r7, #15]
1a001b54:	79bb      	ldrb	r3, [r7, #6]
1a001b56:	4618      	mov	r0, r3
1a001b58:	f000 f97a 	bl	1a001e50 <Chip_Clock_GetDividerDivisor>
1a001b5c:	60b8      	str	r0, [r7, #8]
1a001b5e:	7bfb      	ldrb	r3, [r7, #15]
1a001b60:	4618      	mov	r0, r3
1a001b62:	f000 f991 	bl	1a001e88 <Chip_Clock_GetClockInputHz>
1a001b66:	4602      	mov	r2, r0
1a001b68:	68bb      	ldr	r3, [r7, #8]
1a001b6a:	3301      	adds	r3, #1
1a001b6c:	fbb2 f3f3 	udiv	r3, r2, r3
1a001b70:	4618      	mov	r0, r3
1a001b72:	3710      	adds	r7, #16
1a001b74:	46bd      	mov	sp, r7
1a001b76:	bd80      	pop	{r7, pc}

1a001b78 <Chip_Clock_FindBaseClock>:
1a001b78:	b480      	push	{r7}
1a001b7a:	b085      	sub	sp, #20
1a001b7c:	af00      	add	r7, sp, #0
1a001b7e:	4603      	mov	r3, r0
1a001b80:	80fb      	strh	r3, [r7, #6]
1a001b82:	231c      	movs	r3, #28
1a001b84:	73fb      	strb	r3, [r7, #15]
1a001b86:	2300      	movs	r3, #0
1a001b88:	60bb      	str	r3, [r7, #8]
1a001b8a:	e024      	b.n	1a001bd6 <Chip_Clock_FindBaseClock+0x5e>
1a001b8c:	491d      	ldr	r1, [pc, #116]	; (1a001c04 <Chip_Clock_FindBaseClock+0x8c>)
1a001b8e:	68ba      	ldr	r2, [r7, #8]
1a001b90:	4613      	mov	r3, r2
1a001b92:	005b      	lsls	r3, r3, #1
1a001b94:	4413      	add	r3, r2
1a001b96:	005b      	lsls	r3, r3, #1
1a001b98:	440b      	add	r3, r1
1a001b9a:	881b      	ldrh	r3, [r3, #0]
1a001b9c:	88fa      	ldrh	r2, [r7, #6]
1a001b9e:	429a      	cmp	r2, r3
1a001ba0:	d316      	bcc.n	1a001bd0 <Chip_Clock_FindBaseClock+0x58>
1a001ba2:	4918      	ldr	r1, [pc, #96]	; (1a001c04 <Chip_Clock_FindBaseClock+0x8c>)
1a001ba4:	68ba      	ldr	r2, [r7, #8]
1a001ba6:	4613      	mov	r3, r2
1a001ba8:	005b      	lsls	r3, r3, #1
1a001baa:	4413      	add	r3, r2
1a001bac:	005b      	lsls	r3, r3, #1
1a001bae:	440b      	add	r3, r1
1a001bb0:	3302      	adds	r3, #2
1a001bb2:	881b      	ldrh	r3, [r3, #0]
1a001bb4:	88fa      	ldrh	r2, [r7, #6]
1a001bb6:	429a      	cmp	r2, r3
1a001bb8:	d80a      	bhi.n	1a001bd0 <Chip_Clock_FindBaseClock+0x58>
1a001bba:	4912      	ldr	r1, [pc, #72]	; (1a001c04 <Chip_Clock_FindBaseClock+0x8c>)
1a001bbc:	68ba      	ldr	r2, [r7, #8]
1a001bbe:	4613      	mov	r3, r2
1a001bc0:	005b      	lsls	r3, r3, #1
1a001bc2:	4413      	add	r3, r2
1a001bc4:	005b      	lsls	r3, r3, #1
1a001bc6:	440b      	add	r3, r1
1a001bc8:	3304      	adds	r3, #4
1a001bca:	781b      	ldrb	r3, [r3, #0]
1a001bcc:	73fb      	strb	r3, [r7, #15]
1a001bce:	e002      	b.n	1a001bd6 <Chip_Clock_FindBaseClock+0x5e>
1a001bd0:	68bb      	ldr	r3, [r7, #8]
1a001bd2:	3301      	adds	r3, #1
1a001bd4:	60bb      	str	r3, [r7, #8]
1a001bd6:	7bfb      	ldrb	r3, [r7, #15]
1a001bd8:	2b1c      	cmp	r3, #28
1a001bda:	d10b      	bne.n	1a001bf4 <Chip_Clock_FindBaseClock+0x7c>
1a001bdc:	4909      	ldr	r1, [pc, #36]	; (1a001c04 <Chip_Clock_FindBaseClock+0x8c>)
1a001bde:	68ba      	ldr	r2, [r7, #8]
1a001be0:	4613      	mov	r3, r2
1a001be2:	005b      	lsls	r3, r3, #1
1a001be4:	4413      	add	r3, r2
1a001be6:	005b      	lsls	r3, r3, #1
1a001be8:	440b      	add	r3, r1
1a001bea:	3304      	adds	r3, #4
1a001bec:	781b      	ldrb	r3, [r3, #0]
1a001bee:	7bfa      	ldrb	r2, [r7, #15]
1a001bf0:	429a      	cmp	r2, r3
1a001bf2:	d1cb      	bne.n	1a001b8c <Chip_Clock_FindBaseClock+0x14>
1a001bf4:	7bfb      	ldrb	r3, [r7, #15]
1a001bf6:	4618      	mov	r0, r3
1a001bf8:	3714      	adds	r7, #20
1a001bfa:	46bd      	mov	sp, r7
1a001bfc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c00:	4770      	bx	lr
1a001c02:	bf00      	nop
1a001c04:	1a0024b4 	.word	0x1a0024b4

1a001c08 <Chip_Clock_EnableCrystal>:
1a001c08:	b480      	push	{r7}
1a001c0a:	b083      	sub	sp, #12
1a001c0c:	af00      	add	r7, sp, #0
1a001c0e:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001c12:	603b      	str	r3, [r7, #0]
1a001c14:	4b15      	ldr	r3, [pc, #84]	; (1a001c6c <Chip_Clock_EnableCrystal+0x64>)
1a001c16:	699b      	ldr	r3, [r3, #24]
1a001c18:	607b      	str	r3, [r7, #4]
1a001c1a:	687b      	ldr	r3, [r7, #4]
1a001c1c:	f023 0302 	bic.w	r3, r3, #2
1a001c20:	607b      	str	r3, [r7, #4]
1a001c22:	4b12      	ldr	r3, [pc, #72]	; (1a001c6c <Chip_Clock_EnableCrystal+0x64>)
1a001c24:	699b      	ldr	r3, [r3, #24]
1a001c26:	687a      	ldr	r2, [r7, #4]
1a001c28:	429a      	cmp	r2, r3
1a001c2a:	d002      	beq.n	1a001c32 <Chip_Clock_EnableCrystal+0x2a>
1a001c2c:	4a0f      	ldr	r2, [pc, #60]	; (1a001c6c <Chip_Clock_EnableCrystal+0x64>)
1a001c2e:	687b      	ldr	r3, [r7, #4]
1a001c30:	6193      	str	r3, [r2, #24]
1a001c32:	687b      	ldr	r3, [r7, #4]
1a001c34:	f023 0301 	bic.w	r3, r3, #1
1a001c38:	607b      	str	r3, [r7, #4]
1a001c3a:	4b0d      	ldr	r3, [pc, #52]	; (1a001c70 <Chip_Clock_EnableCrystal+0x68>)
1a001c3c:	681b      	ldr	r3, [r3, #0]
1a001c3e:	4a0d      	ldr	r2, [pc, #52]	; (1a001c74 <Chip_Clock_EnableCrystal+0x6c>)
1a001c40:	4293      	cmp	r3, r2
1a001c42:	d903      	bls.n	1a001c4c <Chip_Clock_EnableCrystal+0x44>
1a001c44:	687b      	ldr	r3, [r7, #4]
1a001c46:	f043 0304 	orr.w	r3, r3, #4
1a001c4a:	607b      	str	r3, [r7, #4]
1a001c4c:	4a07      	ldr	r2, [pc, #28]	; (1a001c6c <Chip_Clock_EnableCrystal+0x64>)
1a001c4e:	687b      	ldr	r3, [r7, #4]
1a001c50:	6193      	str	r3, [r2, #24]
1a001c52:	bf00      	nop
1a001c54:	683b      	ldr	r3, [r7, #0]
1a001c56:	1e5a      	subs	r2, r3, #1
1a001c58:	603a      	str	r2, [r7, #0]
1a001c5a:	2b00      	cmp	r3, #0
1a001c5c:	d1fa      	bne.n	1a001c54 <Chip_Clock_EnableCrystal+0x4c>
1a001c5e:	bf00      	nop
1a001c60:	370c      	adds	r7, #12
1a001c62:	46bd      	mov	sp, r7
1a001c64:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c68:	4770      	bx	lr
1a001c6a:	bf00      	nop
1a001c6c:	40050000 	.word	0x40050000
1a001c70:	1a002458 	.word	0x1a002458
1a001c74:	01312cff 	.word	0x01312cff

1a001c78 <Chip_Clock_CalcMainPLLValue>:
1a001c78:	b580      	push	{r7, lr}
1a001c7a:	b082      	sub	sp, #8
1a001c7c:	af00      	add	r7, sp, #0
1a001c7e:	6078      	str	r0, [r7, #4]
1a001c80:	6039      	str	r1, [r7, #0]
1a001c82:	683b      	ldr	r3, [r7, #0]
1a001c84:	791b      	ldrb	r3, [r3, #4]
1a001c86:	4618      	mov	r0, r3
1a001c88:	f000 f8fe 	bl	1a001e88 <Chip_Clock_GetClockInputHz>
1a001c8c:	4602      	mov	r2, r0
1a001c8e:	683b      	ldr	r3, [r7, #0]
1a001c90:	615a      	str	r2, [r3, #20]
1a001c92:	687b      	ldr	r3, [r7, #4]
1a001c94:	4a2b      	ldr	r2, [pc, #172]	; (1a001d44 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a001c96:	4293      	cmp	r3, r2
1a001c98:	d807      	bhi.n	1a001caa <Chip_Clock_CalcMainPLLValue+0x32>
1a001c9a:	687b      	ldr	r3, [r7, #4]
1a001c9c:	4a2a      	ldr	r2, [pc, #168]	; (1a001d48 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001c9e:	4293      	cmp	r3, r2
1a001ca0:	d903      	bls.n	1a001caa <Chip_Clock_CalcMainPLLValue+0x32>
1a001ca2:	683b      	ldr	r3, [r7, #0]
1a001ca4:	695b      	ldr	r3, [r3, #20]
1a001ca6:	2b00      	cmp	r3, #0
1a001ca8:	d102      	bne.n	1a001cb0 <Chip_Clock_CalcMainPLLValue+0x38>
1a001caa:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001cae:	e044      	b.n	1a001d3a <Chip_Clock_CalcMainPLLValue+0xc2>
1a001cb0:	683b      	ldr	r3, [r7, #0]
1a001cb2:	2280      	movs	r2, #128	; 0x80
1a001cb4:	601a      	str	r2, [r3, #0]
1a001cb6:	683b      	ldr	r3, [r7, #0]
1a001cb8:	2200      	movs	r2, #0
1a001cba:	609a      	str	r2, [r3, #8]
1a001cbc:	683b      	ldr	r3, [r7, #0]
1a001cbe:	2200      	movs	r2, #0
1a001cc0:	60da      	str	r2, [r3, #12]
1a001cc2:	683b      	ldr	r3, [r7, #0]
1a001cc4:	695b      	ldr	r3, [r3, #20]
1a001cc6:	687a      	ldr	r2, [r7, #4]
1a001cc8:	fbb2 f3f3 	udiv	r3, r2, r3
1a001ccc:	461a      	mov	r2, r3
1a001cce:	683b      	ldr	r3, [r7, #0]
1a001cd0:	611a      	str	r2, [r3, #16]
1a001cd2:	687b      	ldr	r3, [r7, #4]
1a001cd4:	4a1d      	ldr	r2, [pc, #116]	; (1a001d4c <Chip_Clock_CalcMainPLLValue+0xd4>)
1a001cd6:	4293      	cmp	r3, r2
1a001cd8:	d909      	bls.n	1a001cee <Chip_Clock_CalcMainPLLValue+0x76>
1a001cda:	683b      	ldr	r3, [r7, #0]
1a001cdc:	691b      	ldr	r3, [r3, #16]
1a001cde:	461a      	mov	r2, r3
1a001ce0:	683b      	ldr	r3, [r7, #0]
1a001ce2:	695b      	ldr	r3, [r3, #20]
1a001ce4:	fb03 f302 	mul.w	r3, r3, r2
1a001ce8:	687a      	ldr	r2, [r7, #4]
1a001cea:	429a      	cmp	r2, r3
1a001cec:	d00f      	beq.n	1a001d0e <Chip_Clock_CalcMainPLLValue+0x96>
1a001cee:	6839      	ldr	r1, [r7, #0]
1a001cf0:	6878      	ldr	r0, [r7, #4]
1a001cf2:	f7ff fe61 	bl	1a0019b8 <pll_get_frac>
1a001cf6:	683b      	ldr	r3, [r7, #0]
1a001cf8:	689b      	ldr	r3, [r3, #8]
1a001cfa:	2b00      	cmp	r3, #0
1a001cfc:	d102      	bne.n	1a001d04 <Chip_Clock_CalcMainPLLValue+0x8c>
1a001cfe:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001d02:	e01a      	b.n	1a001d3a <Chip_Clock_CalcMainPLLValue+0xc2>
1a001d04:	683b      	ldr	r3, [r7, #0]
1a001d06:	689b      	ldr	r3, [r3, #8]
1a001d08:	1e5a      	subs	r2, r3, #1
1a001d0a:	683b      	ldr	r3, [r7, #0]
1a001d0c:	609a      	str	r2, [r3, #8]
1a001d0e:	683b      	ldr	r3, [r7, #0]
1a001d10:	691b      	ldr	r3, [r3, #16]
1a001d12:	2b00      	cmp	r3, #0
1a001d14:	d102      	bne.n	1a001d1c <Chip_Clock_CalcMainPLLValue+0xa4>
1a001d16:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001d1a:	e00e      	b.n	1a001d3a <Chip_Clock_CalcMainPLLValue+0xc2>
1a001d1c:	683b      	ldr	r3, [r7, #0]
1a001d1e:	68db      	ldr	r3, [r3, #12]
1a001d20:	2b00      	cmp	r3, #0
1a001d22:	d004      	beq.n	1a001d2e <Chip_Clock_CalcMainPLLValue+0xb6>
1a001d24:	683b      	ldr	r3, [r7, #0]
1a001d26:	68db      	ldr	r3, [r3, #12]
1a001d28:	1e5a      	subs	r2, r3, #1
1a001d2a:	683b      	ldr	r3, [r7, #0]
1a001d2c:	60da      	str	r2, [r3, #12]
1a001d2e:	683b      	ldr	r3, [r7, #0]
1a001d30:	691b      	ldr	r3, [r3, #16]
1a001d32:	1e5a      	subs	r2, r3, #1
1a001d34:	683b      	ldr	r3, [r7, #0]
1a001d36:	611a      	str	r2, [r3, #16]
1a001d38:	2300      	movs	r3, #0
1a001d3a:	4618      	mov	r0, r3
1a001d3c:	3708      	adds	r7, #8
1a001d3e:	46bd      	mov	sp, r7
1a001d40:	bd80      	pop	{r7, pc}
1a001d42:	bf00      	nop
1a001d44:	0c28cb00 	.word	0x0c28cb00
1a001d48:	0094c5ef 	.word	0x0094c5ef
1a001d4c:	094c5eff 	.word	0x094c5eff

1a001d50 <Chip_Clock_GetMainPLLHz>:
1a001d50:	b580      	push	{r7, lr}
1a001d52:	b08c      	sub	sp, #48	; 0x30
1a001d54:	af00      	add	r7, sp, #0
1a001d56:	4b2c      	ldr	r3, [pc, #176]	; (1a001e08 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001d58:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001d5a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001d5c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001d5e:	0e1b      	lsrs	r3, r3, #24
1a001d60:	b2db      	uxtb	r3, r3
1a001d62:	f003 030f 	and.w	r3, r3, #15
1a001d66:	b2db      	uxtb	r3, r3
1a001d68:	4618      	mov	r0, r3
1a001d6a:	f000 f88d 	bl	1a001e88 <Chip_Clock_GetClockInputHz>
1a001d6e:	62b8      	str	r0, [r7, #40]	; 0x28
1a001d70:	4b26      	ldr	r3, [pc, #152]	; (1a001e0c <Chip_Clock_GetMainPLLHz+0xbc>)
1a001d72:	681b      	ldr	r3, [r3, #0]
1a001d74:	607b      	str	r3, [r7, #4]
1a001d76:	4b24      	ldr	r3, [pc, #144]	; (1a001e08 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001d78:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001d7a:	f003 0301 	and.w	r3, r3, #1
1a001d7e:	2b00      	cmp	r3, #0
1a001d80:	d101      	bne.n	1a001d86 <Chip_Clock_GetMainPLLHz+0x36>
1a001d82:	2300      	movs	r3, #0
1a001d84:	e03b      	b.n	1a001dfe <Chip_Clock_GetMainPLLHz+0xae>
1a001d86:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001d88:	0c1b      	lsrs	r3, r3, #16
1a001d8a:	b2db      	uxtb	r3, r3
1a001d8c:	627b      	str	r3, [r7, #36]	; 0x24
1a001d8e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001d90:	0b1b      	lsrs	r3, r3, #12
1a001d92:	f003 0303 	and.w	r3, r3, #3
1a001d96:	623b      	str	r3, [r7, #32]
1a001d98:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001d9a:	0a1b      	lsrs	r3, r3, #8
1a001d9c:	f003 0303 	and.w	r3, r3, #3
1a001da0:	61fb      	str	r3, [r7, #28]
1a001da2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001da4:	09db      	lsrs	r3, r3, #7
1a001da6:	f003 0301 	and.w	r3, r3, #1
1a001daa:	61bb      	str	r3, [r7, #24]
1a001dac:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001dae:	099b      	lsrs	r3, r3, #6
1a001db0:	f003 0301 	and.w	r3, r3, #1
1a001db4:	617b      	str	r3, [r7, #20]
1a001db6:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001db8:	3301      	adds	r3, #1
1a001dba:	613b      	str	r3, [r7, #16]
1a001dbc:	6a3b      	ldr	r3, [r7, #32]
1a001dbe:	3301      	adds	r3, #1
1a001dc0:	60fb      	str	r3, [r7, #12]
1a001dc2:	1d3a      	adds	r2, r7, #4
1a001dc4:	69fb      	ldr	r3, [r7, #28]
1a001dc6:	4413      	add	r3, r2
1a001dc8:	781b      	ldrb	r3, [r3, #0]
1a001dca:	60bb      	str	r3, [r7, #8]
1a001dcc:	69bb      	ldr	r3, [r7, #24]
1a001dce:	2b00      	cmp	r3, #0
1a001dd0:	d102      	bne.n	1a001dd8 <Chip_Clock_GetMainPLLHz+0x88>
1a001dd2:	697b      	ldr	r3, [r7, #20]
1a001dd4:	2b00      	cmp	r3, #0
1a001dd6:	d007      	beq.n	1a001de8 <Chip_Clock_GetMainPLLHz+0x98>
1a001dd8:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a001dda:	68fb      	ldr	r3, [r7, #12]
1a001ddc:	fbb2 f3f3 	udiv	r3, r2, r3
1a001de0:	693a      	ldr	r2, [r7, #16]
1a001de2:	fb02 f303 	mul.w	r3, r2, r3
1a001de6:	e00a      	b.n	1a001dfe <Chip_Clock_GetMainPLLHz+0xae>
1a001de8:	68bb      	ldr	r3, [r7, #8]
1a001dea:	005b      	lsls	r3, r3, #1
1a001dec:	693a      	ldr	r2, [r7, #16]
1a001dee:	fbb2 f3f3 	udiv	r3, r2, r3
1a001df2:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a001df4:	68fa      	ldr	r2, [r7, #12]
1a001df6:	fbb1 f2f2 	udiv	r2, r1, r2
1a001dfa:	fb02 f303 	mul.w	r3, r2, r3
1a001dfe:	4618      	mov	r0, r3
1a001e00:	3730      	adds	r7, #48	; 0x30
1a001e02:	46bd      	mov	sp, r7
1a001e04:	bd80      	pop	{r7, pc}
1a001e06:	bf00      	nop
1a001e08:	40050000 	.word	0x40050000
1a001e0c:	1a002520 	.word	0x1a002520

1a001e10 <Chip_Clock_GetDividerSource>:
1a001e10:	b480      	push	{r7}
1a001e12:	b085      	sub	sp, #20
1a001e14:	af00      	add	r7, sp, #0
1a001e16:	4603      	mov	r3, r0
1a001e18:	71fb      	strb	r3, [r7, #7]
1a001e1a:	4a0c      	ldr	r2, [pc, #48]	; (1a001e4c <Chip_Clock_GetDividerSource+0x3c>)
1a001e1c:	79fb      	ldrb	r3, [r7, #7]
1a001e1e:	3312      	adds	r3, #18
1a001e20:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001e24:	60fb      	str	r3, [r7, #12]
1a001e26:	68fb      	ldr	r3, [r7, #12]
1a001e28:	f003 0301 	and.w	r3, r3, #1
1a001e2c:	2b00      	cmp	r3, #0
1a001e2e:	d001      	beq.n	1a001e34 <Chip_Clock_GetDividerSource+0x24>
1a001e30:	2311      	movs	r3, #17
1a001e32:	e005      	b.n	1a001e40 <Chip_Clock_GetDividerSource+0x30>
1a001e34:	68fb      	ldr	r3, [r7, #12]
1a001e36:	0e1b      	lsrs	r3, r3, #24
1a001e38:	b2db      	uxtb	r3, r3
1a001e3a:	f003 031f 	and.w	r3, r3, #31
1a001e3e:	b2db      	uxtb	r3, r3
1a001e40:	4618      	mov	r0, r3
1a001e42:	3714      	adds	r7, #20
1a001e44:	46bd      	mov	sp, r7
1a001e46:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e4a:	4770      	bx	lr
1a001e4c:	40050000 	.word	0x40050000

1a001e50 <Chip_Clock_GetDividerDivisor>:
1a001e50:	b480      	push	{r7}
1a001e52:	b083      	sub	sp, #12
1a001e54:	af00      	add	r7, sp, #0
1a001e56:	4603      	mov	r3, r0
1a001e58:	71fb      	strb	r3, [r7, #7]
1a001e5a:	4a09      	ldr	r2, [pc, #36]	; (1a001e80 <Chip_Clock_GetDividerDivisor+0x30>)
1a001e5c:	79fb      	ldrb	r3, [r7, #7]
1a001e5e:	3312      	adds	r3, #18
1a001e60:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001e64:	089b      	lsrs	r3, r3, #2
1a001e66:	b2da      	uxtb	r2, r3
1a001e68:	79fb      	ldrb	r3, [r7, #7]
1a001e6a:	4906      	ldr	r1, [pc, #24]	; (1a001e84 <Chip_Clock_GetDividerDivisor+0x34>)
1a001e6c:	5ccb      	ldrb	r3, [r1, r3]
1a001e6e:	4013      	ands	r3, r2
1a001e70:	b2db      	uxtb	r3, r3
1a001e72:	4618      	mov	r0, r3
1a001e74:	370c      	adds	r7, #12
1a001e76:	46bd      	mov	sp, r7
1a001e78:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e7c:	4770      	bx	lr
1a001e7e:	bf00      	nop
1a001e80:	40050000 	.word	0x40050000
1a001e84:	1a002524 	.word	0x1a002524

1a001e88 <Chip_Clock_GetClockInputHz>:
1a001e88:	b580      	push	{r7, lr}
1a001e8a:	b084      	sub	sp, #16
1a001e8c:	af00      	add	r7, sp, #0
1a001e8e:	4603      	mov	r3, r0
1a001e90:	71fb      	strb	r3, [r7, #7]
1a001e92:	2300      	movs	r3, #0
1a001e94:	60fb      	str	r3, [r7, #12]
1a001e96:	79fb      	ldrb	r3, [r7, #7]
1a001e98:	2b11      	cmp	r3, #17
1a001e9a:	d87f      	bhi.n	1a001f9c <Chip_Clock_GetClockInputHz+0x114>
1a001e9c:	a201      	add	r2, pc, #4	; (adr r2, 1a001ea4 <Chip_Clock_GetClockInputHz+0x1c>)
1a001e9e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001ea2:	bf00      	nop
1a001ea4:	1a001eed 	.word	0x1a001eed
1a001ea8:	1a001ef5 	.word	0x1a001ef5
1a001eac:	1a001efb 	.word	0x1a001efb
1a001eb0:	1a001f0f 	.word	0x1a001f0f
1a001eb4:	1a001f29 	.word	0x1a001f29
1a001eb8:	1a001f9d 	.word	0x1a001f9d
1a001ebc:	1a001f31 	.word	0x1a001f31
1a001ec0:	1a001f39 	.word	0x1a001f39
1a001ec4:	1a001f41 	.word	0x1a001f41
1a001ec8:	1a001f49 	.word	0x1a001f49
1a001ecc:	1a001f9d 	.word	0x1a001f9d
1a001ed0:	1a001f9d 	.word	0x1a001f9d
1a001ed4:	1a001f51 	.word	0x1a001f51
1a001ed8:	1a001f5f 	.word	0x1a001f5f
1a001edc:	1a001f6d 	.word	0x1a001f6d
1a001ee0:	1a001f7b 	.word	0x1a001f7b
1a001ee4:	1a001f89 	.word	0x1a001f89
1a001ee8:	1a001f97 	.word	0x1a001f97
1a001eec:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001ef0:	60fb      	str	r3, [r7, #12]
1a001ef2:	e056      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001ef4:	4b2d      	ldr	r3, [pc, #180]	; (1a001fac <Chip_Clock_GetClockInputHz+0x124>)
1a001ef6:	60fb      	str	r3, [r7, #12]
1a001ef8:	e053      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001efa:	4b2d      	ldr	r3, [pc, #180]	; (1a001fb0 <Chip_Clock_GetClockInputHz+0x128>)
1a001efc:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001f00:	f003 0307 	and.w	r3, r3, #7
1a001f04:	2b04      	cmp	r3, #4
1a001f06:	d04b      	beq.n	1a001fa0 <Chip_Clock_GetClockInputHz+0x118>
1a001f08:	4b2a      	ldr	r3, [pc, #168]	; (1a001fb4 <Chip_Clock_GetClockInputHz+0x12c>)
1a001f0a:	60fb      	str	r3, [r7, #12]
1a001f0c:	e048      	b.n	1a001fa0 <Chip_Clock_GetClockInputHz+0x118>
1a001f0e:	4b28      	ldr	r3, [pc, #160]	; (1a001fb0 <Chip_Clock_GetClockInputHz+0x128>)
1a001f10:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001f14:	f003 0307 	and.w	r3, r3, #7
1a001f18:	2b04      	cmp	r3, #4
1a001f1a:	d002      	beq.n	1a001f22 <Chip_Clock_GetClockInputHz+0x9a>
1a001f1c:	4b25      	ldr	r3, [pc, #148]	; (1a001fb4 <Chip_Clock_GetClockInputHz+0x12c>)
1a001f1e:	60fb      	str	r3, [r7, #12]
1a001f20:	e03f      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f22:	4b25      	ldr	r3, [pc, #148]	; (1a001fb8 <Chip_Clock_GetClockInputHz+0x130>)
1a001f24:	60fb      	str	r3, [r7, #12]
1a001f26:	e03c      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f28:	4b24      	ldr	r3, [pc, #144]	; (1a001fbc <Chip_Clock_GetClockInputHz+0x134>)
1a001f2a:	681b      	ldr	r3, [r3, #0]
1a001f2c:	60fb      	str	r3, [r7, #12]
1a001f2e:	e038      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f30:	4b23      	ldr	r3, [pc, #140]	; (1a001fc0 <Chip_Clock_GetClockInputHz+0x138>)
1a001f32:	681b      	ldr	r3, [r3, #0]
1a001f34:	60fb      	str	r3, [r7, #12]
1a001f36:	e034      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f38:	4b22      	ldr	r3, [pc, #136]	; (1a001fc4 <Chip_Clock_GetClockInputHz+0x13c>)
1a001f3a:	681b      	ldr	r3, [r3, #0]
1a001f3c:	60fb      	str	r3, [r7, #12]
1a001f3e:	e030      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f40:	4b20      	ldr	r3, [pc, #128]	; (1a001fc4 <Chip_Clock_GetClockInputHz+0x13c>)
1a001f42:	685b      	ldr	r3, [r3, #4]
1a001f44:	60fb      	str	r3, [r7, #12]
1a001f46:	e02c      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f48:	f7ff ff02 	bl	1a001d50 <Chip_Clock_GetMainPLLHz>
1a001f4c:	60f8      	str	r0, [r7, #12]
1a001f4e:	e028      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f50:	79fb      	ldrb	r3, [r7, #7]
1a001f52:	2100      	movs	r1, #0
1a001f54:	4618      	mov	r0, r3
1a001f56:	f7ff fdef 	bl	1a001b38 <Chip_Clock_GetDivRate>
1a001f5a:	60f8      	str	r0, [r7, #12]
1a001f5c:	e021      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f5e:	79fb      	ldrb	r3, [r7, #7]
1a001f60:	2101      	movs	r1, #1
1a001f62:	4618      	mov	r0, r3
1a001f64:	f7ff fde8 	bl	1a001b38 <Chip_Clock_GetDivRate>
1a001f68:	60f8      	str	r0, [r7, #12]
1a001f6a:	e01a      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f6c:	79fb      	ldrb	r3, [r7, #7]
1a001f6e:	2102      	movs	r1, #2
1a001f70:	4618      	mov	r0, r3
1a001f72:	f7ff fde1 	bl	1a001b38 <Chip_Clock_GetDivRate>
1a001f76:	60f8      	str	r0, [r7, #12]
1a001f78:	e013      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f7a:	79fb      	ldrb	r3, [r7, #7]
1a001f7c:	2103      	movs	r1, #3
1a001f7e:	4618      	mov	r0, r3
1a001f80:	f7ff fdda 	bl	1a001b38 <Chip_Clock_GetDivRate>
1a001f84:	60f8      	str	r0, [r7, #12]
1a001f86:	e00c      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f88:	79fb      	ldrb	r3, [r7, #7]
1a001f8a:	2104      	movs	r1, #4
1a001f8c:	4618      	mov	r0, r3
1a001f8e:	f7ff fdd3 	bl	1a001b38 <Chip_Clock_GetDivRate>
1a001f92:	60f8      	str	r0, [r7, #12]
1a001f94:	e005      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f96:	2300      	movs	r3, #0
1a001f98:	60fb      	str	r3, [r7, #12]
1a001f9a:	e002      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001f9c:	bf00      	nop
1a001f9e:	e000      	b.n	1a001fa2 <Chip_Clock_GetClockInputHz+0x11a>
1a001fa0:	bf00      	nop
1a001fa2:	68fb      	ldr	r3, [r7, #12]
1a001fa4:	4618      	mov	r0, r3
1a001fa6:	3710      	adds	r7, #16
1a001fa8:	46bd      	mov	sp, r7
1a001faa:	bd80      	pop	{r7, pc}
1a001fac:	00b71b00 	.word	0x00b71b00
1a001fb0:	40043000 	.word	0x40043000
1a001fb4:	017d7840 	.word	0x017d7840
1a001fb8:	02faf080 	.word	0x02faf080
1a001fbc:	1a002454 	.word	0x1a002454
1a001fc0:	1a002458 	.word	0x1a002458
1a001fc4:	1000087c 	.word	0x1000087c

1a001fc8 <Chip_Clock_GetBaseClocktHz>:
1a001fc8:	b580      	push	{r7, lr}
1a001fca:	b082      	sub	sp, #8
1a001fcc:	af00      	add	r7, sp, #0
1a001fce:	4603      	mov	r3, r0
1a001fd0:	71fb      	strb	r3, [r7, #7]
1a001fd2:	79fb      	ldrb	r3, [r7, #7]
1a001fd4:	4618      	mov	r0, r3
1a001fd6:	f000 f857 	bl	1a002088 <Chip_Clock_GetBaseClock>
1a001fda:	4603      	mov	r3, r0
1a001fdc:	4618      	mov	r0, r3
1a001fde:	f7ff ff53 	bl	1a001e88 <Chip_Clock_GetClockInputHz>
1a001fe2:	4603      	mov	r3, r0
1a001fe4:	4618      	mov	r0, r3
1a001fe6:	3708      	adds	r7, #8
1a001fe8:	46bd      	mov	sp, r7
1a001fea:	bd80      	pop	{r7, pc}

1a001fec <Chip_Clock_SetBaseClock>:
1a001fec:	b490      	push	{r4, r7}
1a001fee:	b084      	sub	sp, #16
1a001ff0:	af00      	add	r7, sp, #0
1a001ff2:	4604      	mov	r4, r0
1a001ff4:	4608      	mov	r0, r1
1a001ff6:	4611      	mov	r1, r2
1a001ff8:	461a      	mov	r2, r3
1a001ffa:	4623      	mov	r3, r4
1a001ffc:	71fb      	strb	r3, [r7, #7]
1a001ffe:	4603      	mov	r3, r0
1a002000:	71bb      	strb	r3, [r7, #6]
1a002002:	460b      	mov	r3, r1
1a002004:	717b      	strb	r3, [r7, #5]
1a002006:	4613      	mov	r3, r2
1a002008:	713b      	strb	r3, [r7, #4]
1a00200a:	4a1d      	ldr	r2, [pc, #116]	; (1a002080 <Chip_Clock_SetBaseClock+0x94>)
1a00200c:	79fb      	ldrb	r3, [r7, #7]
1a00200e:	3316      	adds	r3, #22
1a002010:	009b      	lsls	r3, r3, #2
1a002012:	4413      	add	r3, r2
1a002014:	685b      	ldr	r3, [r3, #4]
1a002016:	60fb      	str	r3, [r7, #12]
1a002018:	79fb      	ldrb	r3, [r7, #7]
1a00201a:	2b1b      	cmp	r3, #27
1a00201c:	d822      	bhi.n	1a002064 <Chip_Clock_SetBaseClock+0x78>
1a00201e:	79bb      	ldrb	r3, [r7, #6]
1a002020:	2b11      	cmp	r3, #17
1a002022:	d028      	beq.n	1a002076 <Chip_Clock_SetBaseClock+0x8a>
1a002024:	68fa      	ldr	r2, [r7, #12]
1a002026:	4b17      	ldr	r3, [pc, #92]	; (1a002084 <Chip_Clock_SetBaseClock+0x98>)
1a002028:	4013      	ands	r3, r2
1a00202a:	60fb      	str	r3, [r7, #12]
1a00202c:	797b      	ldrb	r3, [r7, #5]
1a00202e:	2b00      	cmp	r3, #0
1a002030:	d003      	beq.n	1a00203a <Chip_Clock_SetBaseClock+0x4e>
1a002032:	68fb      	ldr	r3, [r7, #12]
1a002034:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a002038:	60fb      	str	r3, [r7, #12]
1a00203a:	793b      	ldrb	r3, [r7, #4]
1a00203c:	2b00      	cmp	r3, #0
1a00203e:	d003      	beq.n	1a002048 <Chip_Clock_SetBaseClock+0x5c>
1a002040:	68fb      	ldr	r3, [r7, #12]
1a002042:	f043 0301 	orr.w	r3, r3, #1
1a002046:	60fb      	str	r3, [r7, #12]
1a002048:	79bb      	ldrb	r3, [r7, #6]
1a00204a:	061b      	lsls	r3, r3, #24
1a00204c:	461a      	mov	r2, r3
1a00204e:	68fb      	ldr	r3, [r7, #12]
1a002050:	4313      	orrs	r3, r2
1a002052:	60fb      	str	r3, [r7, #12]
1a002054:	4a0a      	ldr	r2, [pc, #40]	; (1a002080 <Chip_Clock_SetBaseClock+0x94>)
1a002056:	79fb      	ldrb	r3, [r7, #7]
1a002058:	3316      	adds	r3, #22
1a00205a:	009b      	lsls	r3, r3, #2
1a00205c:	4413      	add	r3, r2
1a00205e:	68fa      	ldr	r2, [r7, #12]
1a002060:	605a      	str	r2, [r3, #4]
1a002062:	e008      	b.n	1a002076 <Chip_Clock_SetBaseClock+0x8a>
1a002064:	4906      	ldr	r1, [pc, #24]	; (1a002080 <Chip_Clock_SetBaseClock+0x94>)
1a002066:	79fb      	ldrb	r3, [r7, #7]
1a002068:	68fa      	ldr	r2, [r7, #12]
1a00206a:	f042 0201 	orr.w	r2, r2, #1
1a00206e:	3316      	adds	r3, #22
1a002070:	009b      	lsls	r3, r3, #2
1a002072:	440b      	add	r3, r1
1a002074:	605a      	str	r2, [r3, #4]
1a002076:	bf00      	nop
1a002078:	3710      	adds	r7, #16
1a00207a:	46bd      	mov	sp, r7
1a00207c:	bc90      	pop	{r4, r7}
1a00207e:	4770      	bx	lr
1a002080:	40050000 	.word	0x40050000
1a002084:	e0fff7fe 	.word	0xe0fff7fe

1a002088 <Chip_Clock_GetBaseClock>:
1a002088:	b480      	push	{r7}
1a00208a:	b085      	sub	sp, #20
1a00208c:	af00      	add	r7, sp, #0
1a00208e:	4603      	mov	r3, r0
1a002090:	71fb      	strb	r3, [r7, #7]
1a002092:	79fb      	ldrb	r3, [r7, #7]
1a002094:	2b1b      	cmp	r3, #27
1a002096:	d901      	bls.n	1a00209c <Chip_Clock_GetBaseClock+0x14>
1a002098:	2311      	movs	r3, #17
1a00209a:	e013      	b.n	1a0020c4 <Chip_Clock_GetBaseClock+0x3c>
1a00209c:	4a0c      	ldr	r2, [pc, #48]	; (1a0020d0 <Chip_Clock_GetBaseClock+0x48>)
1a00209e:	79fb      	ldrb	r3, [r7, #7]
1a0020a0:	3316      	adds	r3, #22
1a0020a2:	009b      	lsls	r3, r3, #2
1a0020a4:	4413      	add	r3, r2
1a0020a6:	685b      	ldr	r3, [r3, #4]
1a0020a8:	60fb      	str	r3, [r7, #12]
1a0020aa:	68fb      	ldr	r3, [r7, #12]
1a0020ac:	f003 0301 	and.w	r3, r3, #1
1a0020b0:	2b00      	cmp	r3, #0
1a0020b2:	d001      	beq.n	1a0020b8 <Chip_Clock_GetBaseClock+0x30>
1a0020b4:	2311      	movs	r3, #17
1a0020b6:	e005      	b.n	1a0020c4 <Chip_Clock_GetBaseClock+0x3c>
1a0020b8:	68fb      	ldr	r3, [r7, #12]
1a0020ba:	0e1b      	lsrs	r3, r3, #24
1a0020bc:	b2db      	uxtb	r3, r3
1a0020be:	f003 031f 	and.w	r3, r3, #31
1a0020c2:	b2db      	uxtb	r3, r3
1a0020c4:	4618      	mov	r0, r3
1a0020c6:	3714      	adds	r7, #20
1a0020c8:	46bd      	mov	sp, r7
1a0020ca:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0020ce:	4770      	bx	lr
1a0020d0:	40050000 	.word	0x40050000

1a0020d4 <Chip_Clock_EnableOpts>:
1a0020d4:	b480      	push	{r7}
1a0020d6:	b085      	sub	sp, #20
1a0020d8:	af00      	add	r7, sp, #0
1a0020da:	603b      	str	r3, [r7, #0]
1a0020dc:	4603      	mov	r3, r0
1a0020de:	80fb      	strh	r3, [r7, #6]
1a0020e0:	460b      	mov	r3, r1
1a0020e2:	717b      	strb	r3, [r7, #5]
1a0020e4:	4613      	mov	r3, r2
1a0020e6:	713b      	strb	r3, [r7, #4]
1a0020e8:	2301      	movs	r3, #1
1a0020ea:	60fb      	str	r3, [r7, #12]
1a0020ec:	797b      	ldrb	r3, [r7, #5]
1a0020ee:	2b00      	cmp	r3, #0
1a0020f0:	d003      	beq.n	1a0020fa <Chip_Clock_EnableOpts+0x26>
1a0020f2:	68fb      	ldr	r3, [r7, #12]
1a0020f4:	f043 0302 	orr.w	r3, r3, #2
1a0020f8:	60fb      	str	r3, [r7, #12]
1a0020fa:	793b      	ldrb	r3, [r7, #4]
1a0020fc:	2b00      	cmp	r3, #0
1a0020fe:	d003      	beq.n	1a002108 <Chip_Clock_EnableOpts+0x34>
1a002100:	68fb      	ldr	r3, [r7, #12]
1a002102:	f043 0304 	orr.w	r3, r3, #4
1a002106:	60fb      	str	r3, [r7, #12]
1a002108:	683b      	ldr	r3, [r7, #0]
1a00210a:	2b02      	cmp	r3, #2
1a00210c:	d103      	bne.n	1a002116 <Chip_Clock_EnableOpts+0x42>
1a00210e:	68fb      	ldr	r3, [r7, #12]
1a002110:	f043 0320 	orr.w	r3, r3, #32
1a002114:	60fb      	str	r3, [r7, #12]
1a002116:	88fb      	ldrh	r3, [r7, #6]
1a002118:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a00211c:	d308      	bcc.n	1a002130 <Chip_Clock_EnableOpts+0x5c>
1a00211e:	490a      	ldr	r1, [pc, #40]	; (1a002148 <Chip_Clock_EnableOpts+0x74>)
1a002120:	88fb      	ldrh	r3, [r7, #6]
1a002122:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002126:	3320      	adds	r3, #32
1a002128:	68fa      	ldr	r2, [r7, #12]
1a00212a:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a00212e:	e005      	b.n	1a00213c <Chip_Clock_EnableOpts+0x68>
1a002130:	4906      	ldr	r1, [pc, #24]	; (1a00214c <Chip_Clock_EnableOpts+0x78>)
1a002132:	88fb      	ldrh	r3, [r7, #6]
1a002134:	3320      	adds	r3, #32
1a002136:	68fa      	ldr	r2, [r7, #12]
1a002138:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a00213c:	bf00      	nop
1a00213e:	3714      	adds	r7, #20
1a002140:	46bd      	mov	sp, r7
1a002142:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002146:	4770      	bx	lr
1a002148:	40052000 	.word	0x40052000
1a00214c:	40051000 	.word	0x40051000

1a002150 <Chip_Clock_Enable>:
1a002150:	b480      	push	{r7}
1a002152:	b083      	sub	sp, #12
1a002154:	af00      	add	r7, sp, #0
1a002156:	4603      	mov	r3, r0
1a002158:	80fb      	strh	r3, [r7, #6]
1a00215a:	88fb      	ldrh	r3, [r7, #6]
1a00215c:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002160:	d310      	bcc.n	1a002184 <Chip_Clock_Enable+0x34>
1a002162:	4a11      	ldr	r2, [pc, #68]	; (1a0021a8 <Chip_Clock_Enable+0x58>)
1a002164:	88fb      	ldrh	r3, [r7, #6]
1a002166:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a00216a:	3320      	adds	r3, #32
1a00216c:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a002170:	490d      	ldr	r1, [pc, #52]	; (1a0021a8 <Chip_Clock_Enable+0x58>)
1a002172:	88fb      	ldrh	r3, [r7, #6]
1a002174:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002178:	f042 0201 	orr.w	r2, r2, #1
1a00217c:	3320      	adds	r3, #32
1a00217e:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002182:	e00b      	b.n	1a00219c <Chip_Clock_Enable+0x4c>
1a002184:	4a09      	ldr	r2, [pc, #36]	; (1a0021ac <Chip_Clock_Enable+0x5c>)
1a002186:	88fb      	ldrh	r3, [r7, #6]
1a002188:	3320      	adds	r3, #32
1a00218a:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a00218e:	4907      	ldr	r1, [pc, #28]	; (1a0021ac <Chip_Clock_Enable+0x5c>)
1a002190:	88fb      	ldrh	r3, [r7, #6]
1a002192:	f042 0201 	orr.w	r2, r2, #1
1a002196:	3320      	adds	r3, #32
1a002198:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a00219c:	bf00      	nop
1a00219e:	370c      	adds	r7, #12
1a0021a0:	46bd      	mov	sp, r7
1a0021a2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021a6:	4770      	bx	lr
1a0021a8:	40052000 	.word	0x40052000
1a0021ac:	40051000 	.word	0x40051000

1a0021b0 <Chip_Clock_GetRate>:
1a0021b0:	b580      	push	{r7, lr}
1a0021b2:	b086      	sub	sp, #24
1a0021b4:	af00      	add	r7, sp, #0
1a0021b6:	4603      	mov	r3, r0
1a0021b8:	80fb      	strh	r3, [r7, #6]
1a0021ba:	88fb      	ldrh	r3, [r7, #6]
1a0021bc:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a0021c0:	d308      	bcc.n	1a0021d4 <Chip_Clock_GetRate+0x24>
1a0021c2:	4a1b      	ldr	r2, [pc, #108]	; (1a002230 <Chip_Clock_GetRate+0x80>)
1a0021c4:	88fb      	ldrh	r3, [r7, #6]
1a0021c6:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0021ca:	3320      	adds	r3, #32
1a0021cc:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a0021d0:	617b      	str	r3, [r7, #20]
1a0021d2:	e005      	b.n	1a0021e0 <Chip_Clock_GetRate+0x30>
1a0021d4:	4a17      	ldr	r2, [pc, #92]	; (1a002234 <Chip_Clock_GetRate+0x84>)
1a0021d6:	88fb      	ldrh	r3, [r7, #6]
1a0021d8:	3320      	adds	r3, #32
1a0021da:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a0021de:	617b      	str	r3, [r7, #20]
1a0021e0:	697b      	ldr	r3, [r7, #20]
1a0021e2:	f003 0301 	and.w	r3, r3, #1
1a0021e6:	2b00      	cmp	r3, #0
1a0021e8:	d01b      	beq.n	1a002222 <Chip_Clock_GetRate+0x72>
1a0021ea:	88fb      	ldrh	r3, [r7, #6]
1a0021ec:	4618      	mov	r0, r3
1a0021ee:	f7ff fcc3 	bl	1a001b78 <Chip_Clock_FindBaseClock>
1a0021f2:	4603      	mov	r3, r0
1a0021f4:	72fb      	strb	r3, [r7, #11]
1a0021f6:	7afb      	ldrb	r3, [r7, #11]
1a0021f8:	4618      	mov	r0, r3
1a0021fa:	f7ff fee5 	bl	1a001fc8 <Chip_Clock_GetBaseClocktHz>
1a0021fe:	60f8      	str	r0, [r7, #12]
1a002200:	697b      	ldr	r3, [r7, #20]
1a002202:	095b      	lsrs	r3, r3, #5
1a002204:	f003 0307 	and.w	r3, r3, #7
1a002208:	2b00      	cmp	r3, #0
1a00220a:	d102      	bne.n	1a002212 <Chip_Clock_GetRate+0x62>
1a00220c:	2301      	movs	r3, #1
1a00220e:	613b      	str	r3, [r7, #16]
1a002210:	e001      	b.n	1a002216 <Chip_Clock_GetRate+0x66>
1a002212:	2302      	movs	r3, #2
1a002214:	613b      	str	r3, [r7, #16]
1a002216:	68fa      	ldr	r2, [r7, #12]
1a002218:	693b      	ldr	r3, [r7, #16]
1a00221a:	fbb2 f3f3 	udiv	r3, r2, r3
1a00221e:	60fb      	str	r3, [r7, #12]
1a002220:	e001      	b.n	1a002226 <Chip_Clock_GetRate+0x76>
1a002222:	2300      	movs	r3, #0
1a002224:	60fb      	str	r3, [r7, #12]
1a002226:	68fb      	ldr	r3, [r7, #12]
1a002228:	4618      	mov	r0, r3
1a00222a:	3718      	adds	r7, #24
1a00222c:	46bd      	mov	sp, r7
1a00222e:	bd80      	pop	{r7, pc}
1a002230:	40052000 	.word	0x40052000
1a002234:	40051000 	.word	0x40051000

1a002238 <SystemCoreClockUpdate>:
1a002238:	b580      	push	{r7, lr}
1a00223a:	af00      	add	r7, sp, #0
1a00223c:	2069      	movs	r0, #105	; 0x69
1a00223e:	f7ff ffb7 	bl	1a0021b0 <Chip_Clock_GetRate>
1a002242:	4602      	mov	r2, r0
1a002244:	4b01      	ldr	r3, [pc, #4]	; (1a00224c <SystemCoreClockUpdate+0x14>)
1a002246:	601a      	str	r2, [r3, #0]
1a002248:	bf00      	nop
1a00224a:	bd80      	pop	{r7, pc}
1a00224c:	10000884 	.word	0x10000884

1a002250 <Chip_GPIO_Init>:
1a002250:	b480      	push	{r7}
1a002252:	b083      	sub	sp, #12
1a002254:	af00      	add	r7, sp, #0
1a002256:	6078      	str	r0, [r7, #4]
1a002258:	bf00      	nop
1a00225a:	370c      	adds	r7, #12
1a00225c:	46bd      	mov	sp, r7
1a00225e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002262:	4770      	bx	lr

1a002264 <Chip_TIMER_GetClockIndex>:
1a002264:	b480      	push	{r7}
1a002266:	b085      	sub	sp, #20
1a002268:	af00      	add	r7, sp, #0
1a00226a:	6078      	str	r0, [r7, #4]
1a00226c:	687b      	ldr	r3, [r7, #4]
1a00226e:	4a0e      	ldr	r2, [pc, #56]	; (1a0022a8 <Chip_TIMER_GetClockIndex+0x44>)
1a002270:	4293      	cmp	r3, r2
1a002272:	d102      	bne.n	1a00227a <Chip_TIMER_GetClockIndex+0x16>
1a002274:	23a4      	movs	r3, #164	; 0xa4
1a002276:	81fb      	strh	r3, [r7, #14]
1a002278:	e00f      	b.n	1a00229a <Chip_TIMER_GetClockIndex+0x36>
1a00227a:	687b      	ldr	r3, [r7, #4]
1a00227c:	4a0b      	ldr	r2, [pc, #44]	; (1a0022ac <Chip_TIMER_GetClockIndex+0x48>)
1a00227e:	4293      	cmp	r3, r2
1a002280:	d102      	bne.n	1a002288 <Chip_TIMER_GetClockIndex+0x24>
1a002282:	23a3      	movs	r3, #163	; 0xa3
1a002284:	81fb      	strh	r3, [r7, #14]
1a002286:	e008      	b.n	1a00229a <Chip_TIMER_GetClockIndex+0x36>
1a002288:	687b      	ldr	r3, [r7, #4]
1a00228a:	4a09      	ldr	r2, [pc, #36]	; (1a0022b0 <Chip_TIMER_GetClockIndex+0x4c>)
1a00228c:	4293      	cmp	r3, r2
1a00228e:	d102      	bne.n	1a002296 <Chip_TIMER_GetClockIndex+0x32>
1a002290:	2385      	movs	r3, #133	; 0x85
1a002292:	81fb      	strh	r3, [r7, #14]
1a002294:	e001      	b.n	1a00229a <Chip_TIMER_GetClockIndex+0x36>
1a002296:	2384      	movs	r3, #132	; 0x84
1a002298:	81fb      	strh	r3, [r7, #14]
1a00229a:	89fb      	ldrh	r3, [r7, #14]
1a00229c:	4618      	mov	r0, r3
1a00229e:	3714      	adds	r7, #20
1a0022a0:	46bd      	mov	sp, r7
1a0022a2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0022a6:	4770      	bx	lr
1a0022a8:	400c4000 	.word	0x400c4000
1a0022ac:	400c3000 	.word	0x400c3000
1a0022b0:	40085000 	.word	0x40085000

1a0022b4 <Chip_TIMER_Init>:
1a0022b4:	b580      	push	{r7, lr}
1a0022b6:	b082      	sub	sp, #8
1a0022b8:	af00      	add	r7, sp, #0
1a0022ba:	6078      	str	r0, [r7, #4]
1a0022bc:	6878      	ldr	r0, [r7, #4]
1a0022be:	f7ff ffd1 	bl	1a002264 <Chip_TIMER_GetClockIndex>
1a0022c2:	4603      	mov	r3, r0
1a0022c4:	4618      	mov	r0, r3
1a0022c6:	f7ff ff43 	bl	1a002150 <Chip_Clock_Enable>
1a0022ca:	bf00      	nop
1a0022cc:	3708      	adds	r7, #8
1a0022ce:	46bd      	mov	sp, r7
1a0022d0:	bd80      	pop	{r7, pc}
1a0022d2:	Address 0x000000001a0022d2 is out of bounds.


1a0022d4 <memcpy>:
1a0022d4:	4684      	mov	ip, r0
1a0022d6:	ea41 0300 	orr.w	r3, r1, r0
1a0022da:	f013 0303 	ands.w	r3, r3, #3
1a0022de:	d16d      	bne.n	1a0023bc <memcpy+0xe8>
1a0022e0:	3a40      	subs	r2, #64	; 0x40
1a0022e2:	d341      	bcc.n	1a002368 <memcpy+0x94>
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
1a002314:	f851 3b04 	ldr.w	r3, [r1], #4
1a002318:	f840 3b04 	str.w	r3, [r0], #4
1a00231c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002320:	f840 3b04 	str.w	r3, [r0], #4
1a002324:	f851 3b04 	ldr.w	r3, [r1], #4
1a002328:	f840 3b04 	str.w	r3, [r0], #4
1a00232c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002330:	f840 3b04 	str.w	r3, [r0], #4
1a002334:	f851 3b04 	ldr.w	r3, [r1], #4
1a002338:	f840 3b04 	str.w	r3, [r0], #4
1a00233c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002340:	f840 3b04 	str.w	r3, [r0], #4
1a002344:	f851 3b04 	ldr.w	r3, [r1], #4
1a002348:	f840 3b04 	str.w	r3, [r0], #4
1a00234c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002350:	f840 3b04 	str.w	r3, [r0], #4
1a002354:	f851 3b04 	ldr.w	r3, [r1], #4
1a002358:	f840 3b04 	str.w	r3, [r0], #4
1a00235c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002360:	f840 3b04 	str.w	r3, [r0], #4
1a002364:	3a40      	subs	r2, #64	; 0x40
1a002366:	d2bd      	bcs.n	1a0022e4 <memcpy+0x10>
1a002368:	3230      	adds	r2, #48	; 0x30
1a00236a:	d311      	bcc.n	1a002390 <memcpy+0xbc>
1a00236c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002370:	f840 3b04 	str.w	r3, [r0], #4
1a002374:	f851 3b04 	ldr.w	r3, [r1], #4
1a002378:	f840 3b04 	str.w	r3, [r0], #4
1a00237c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002380:	f840 3b04 	str.w	r3, [r0], #4
1a002384:	f851 3b04 	ldr.w	r3, [r1], #4
1a002388:	f840 3b04 	str.w	r3, [r0], #4
1a00238c:	3a10      	subs	r2, #16
1a00238e:	d2ed      	bcs.n	1a00236c <memcpy+0x98>
1a002390:	320c      	adds	r2, #12
1a002392:	d305      	bcc.n	1a0023a0 <memcpy+0xcc>
1a002394:	f851 3b04 	ldr.w	r3, [r1], #4
1a002398:	f840 3b04 	str.w	r3, [r0], #4
1a00239c:	3a04      	subs	r2, #4
1a00239e:	d2f9      	bcs.n	1a002394 <memcpy+0xc0>
1a0023a0:	3204      	adds	r2, #4
1a0023a2:	d008      	beq.n	1a0023b6 <memcpy+0xe2>
1a0023a4:	07d2      	lsls	r2, r2, #31
1a0023a6:	bf1c      	itt	ne
1a0023a8:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a0023ac:	f800 3b01 	strbne.w	r3, [r0], #1
1a0023b0:	d301      	bcc.n	1a0023b6 <memcpy+0xe2>
1a0023b2:	880b      	ldrh	r3, [r1, #0]
1a0023b4:	8003      	strh	r3, [r0, #0]
1a0023b6:	4660      	mov	r0, ip
1a0023b8:	4770      	bx	lr
1a0023ba:	bf00      	nop
1a0023bc:	2a08      	cmp	r2, #8
1a0023be:	d313      	bcc.n	1a0023e8 <memcpy+0x114>
1a0023c0:	078b      	lsls	r3, r1, #30
1a0023c2:	d08d      	beq.n	1a0022e0 <memcpy+0xc>
1a0023c4:	f010 0303 	ands.w	r3, r0, #3
1a0023c8:	d08a      	beq.n	1a0022e0 <memcpy+0xc>
1a0023ca:	f1c3 0304 	rsb	r3, r3, #4
1a0023ce:	1ad2      	subs	r2, r2, r3
1a0023d0:	07db      	lsls	r3, r3, #31
1a0023d2:	bf1c      	itt	ne
1a0023d4:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a0023d8:	f800 3b01 	strbne.w	r3, [r0], #1
1a0023dc:	d380      	bcc.n	1a0022e0 <memcpy+0xc>
1a0023de:	f831 3b02 	ldrh.w	r3, [r1], #2
1a0023e2:	f820 3b02 	strh.w	r3, [r0], #2
1a0023e6:	e77b      	b.n	1a0022e0 <memcpy+0xc>
1a0023e8:	3a04      	subs	r2, #4
1a0023ea:	d3d9      	bcc.n	1a0023a0 <memcpy+0xcc>
1a0023ec:	3a01      	subs	r2, #1
1a0023ee:	f811 3b01 	ldrb.w	r3, [r1], #1
1a0023f2:	f800 3b01 	strb.w	r3, [r0], #1
1a0023f6:	d2f9      	bcs.n	1a0023ec <memcpy+0x118>
1a0023f8:	780b      	ldrb	r3, [r1, #0]
1a0023fa:	7003      	strb	r3, [r0, #0]
1a0023fc:	784b      	ldrb	r3, [r1, #1]
1a0023fe:	7043      	strb	r3, [r0, #1]
1a002400:	788b      	ldrb	r3, [r1, #2]
1a002402:	7083      	strb	r3, [r0, #2]
1a002404:	4660      	mov	r0, ip
1a002406:	4770      	bx	lr

1a002408 <srand>:
1a002408:	4b02      	ldr	r3, [pc, #8]	; (1a002414 <srand+0xc>)
1a00240a:	681b      	ldr	r3, [r3, #0]
1a00240c:	2200      	movs	r2, #0
1a00240e:	e9c3 022a 	strd	r0, r2, [r3, #168]	; 0xa8
1a002412:	4770      	bx	lr
1a002414:	10000000 	.word	0x10000000

1a002418 <rand>:
1a002418:	4b0b      	ldr	r3, [pc, #44]	; (1a002448 <rand+0x30>)
1a00241a:	480c      	ldr	r0, [pc, #48]	; (1a00244c <rand+0x34>)
1a00241c:	6819      	ldr	r1, [r3, #0]
1a00241e:	e9d1 232a 	ldrd	r2, r3, [r1, #168]	; 0xa8
1a002422:	b430      	push	{r4, r5}
1a002424:	4c0a      	ldr	r4, [pc, #40]	; (1a002450 <rand+0x38>)
1a002426:	fb00 f002 	mul.w	r0, r0, r2
1a00242a:	fb04 0003 	mla	r0, r4, r3, r0
1a00242e:	fba2 2304 	umull	r2, r3, r2, r4
1a002432:	1c54      	adds	r4, r2, #1
1a002434:	4403      	add	r3, r0
1a002436:	f143 0500 	adc.w	r5, r3, #0
1a00243a:	f025 4000 	bic.w	r0, r5, #2147483648	; 0x80000000
1a00243e:	e9c1 452a 	strd	r4, r5, [r1, #168]	; 0xa8
1a002442:	bc30      	pop	{r4, r5}
1a002444:	4770      	bx	lr
1a002446:	bf00      	nop
1a002448:	10000000 	.word	0x10000000
1a00244c:	5851f42d 	.word	0x5851f42d
1a002450:	4c957f2d 	.word	0x4c957f2d

1a002454 <ExtRateIn>:
1a002454:	00000000                                ....

1a002458 <OscRateIn>:
1a002458:	00b71b00                                ....

1a00245c <InitClkStates>:
1a00245c:	00010100 00010909 0001090a 01010701     ................
1a00246c:	00010902 00010906 0101090c 0001090d     ................
1a00247c:	0001090e 0001090f 00010910 00010911     ................
1a00248c:	00010912 00010913 00011114 00011119     ................
1a00249c:	0001111a 0001111b                       ........

1a0024a4 <UART_PClock>:
1a0024a4:	00820081 00a200a1                       ........

1a0024ac <UART_BClock>:
1a0024ac:	01a201c2 01620182                       ......b.

1a0024b4 <periph_to_base>:
1a0024b4:	00050000 0020000a 00090024 00400040     ...... .$...@.@.
1a0024c4:	00600005 000400a6 00c300c0 00e00002     ..`.............
1a0024d4:	000100e0 01000100 01200003 00060120     .......... . ...
1a0024e4:	01400140 0142000c 00190142 01620162     @.@...B.B...b.b.
1a0024f4:	01820013 00120182 01a201a2 01c20011     ................
1a002504:	001001c2 01e201e2 0202000f 000e0202     ................
1a002514:	02220222 0223000d 001c0223 08040201     "."...#.#.......
1a002524:	0f0f0f03 ffff00ff                       ........

Disassembly of section .init:

1a00252c <_init>:
1a00252c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00252e:	bf00      	nop

Disassembly of section .fini:

1a002530 <_fini>:
1a002530:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002532:	bf00      	nop
