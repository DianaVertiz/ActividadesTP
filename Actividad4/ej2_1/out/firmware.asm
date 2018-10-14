
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 c1 0b 00 1a a5 01 00 1a ab 01 00 1a     ................
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
1a000114:	1a002344 	.word	0x1a002344
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000008 	.word	0x00000008

1a000120 <__bss_section_table_>:
1a000120:	10000008 	.word	0x10000008
1a000124:	00000454 	.word	0x00000454

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
1a000598:	f000 fd42 	bl	1a001020 <Chip_SetupXtalClocking>
1a00059c:	f001 fd7a 	bl	1a002094 <SystemCoreClockUpdate>
1a0005a0:	f000 fc1a 	bl	1a000dd8 <fpuInit>
1a0005a4:	4868      	ldr	r0, [pc, #416]	; (1a000748 <systemInit+0x1b4>)
1a0005a6:	f001 fd81 	bl	1a0020ac <Chip_GPIO_Init>
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
1a0006d0:	f000 fde2 	bl	1a001298 <Chip_UART_Init>
1a0006d4:	2103      	movs	r1, #3
1a0006d6:	481d      	ldr	r0, [pc, #116]	; (1a00074c <systemInit+0x1b8>)
1a0006d8:	f7ff ff4e 	bl	1a000578 <Chip_UART_ConfigData>
1a0006dc:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a0006e0:	481a      	ldr	r0, [pc, #104]	; (1a00074c <systemInit+0x1b8>)
1a0006e2:	f000 fe1d 	bl	1a001320 <Chip_UART_SetBaud>
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
1a000710:	f000 ff63 	bl	1a0015da <RingBuffer_Init>
1a000714:	f44f 7300 	mov.w	r3, #512	; 0x200
1a000718:	2201      	movs	r2, #1
1a00071a:	490f      	ldr	r1, [pc, #60]	; (1a000758 <systemInit+0x1c4>)
1a00071c:	480f      	ldr	r0, [pc, #60]	; (1a00075c <systemInit+0x1c8>)
1a00071e:	f000 ff5c 	bl	1a0015da <RingBuffer_Init>
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
1a00073e:	f000 febd 	bl	1a0014bc <StopWatch_Init>
1a000742:	bf00      	nop
1a000744:	bd80      	pop	{r7, pc}
1a000746:	bf00      	nop
1a000748:	400f4000 	.word	0x400f4000
1a00074c:	400c1000 	.word	0x400c1000
1a000750:	10000008 	.word	0x10000008
1a000754:	1000041c 	.word	0x1000041c
1a000758:	10000208 	.word	0x10000208
1a00075c:	10000408 	.word	0x10000408

1a000760 <UART2_IRQHandler>:
1a000760:	b580      	push	{r7, lr}
1a000762:	af00      	add	r7, sp, #0
1a000764:	4a03      	ldr	r2, [pc, #12]	; (1a000774 <UART2_IRQHandler+0x14>)
1a000766:	4904      	ldr	r1, [pc, #16]	; (1a000778 <UART2_IRQHandler+0x18>)
1a000768:	4804      	ldr	r0, [pc, #16]	; (1a00077c <UART2_IRQHandler+0x1c>)
1a00076a:	f000 fe58 	bl	1a00141e <Chip_UART_IRQRBHandler>
1a00076e:	bf00      	nop
1a000770:	bd80      	pop	{r7, pc}
1a000772:	bf00      	nop
1a000774:	10000408 	.word	0x10000408
1a000778:	1000041c 	.word	0x1000041c
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

1a000810 <Chip_GPIO_SetPinState>:
1a000810:	b480      	push	{r7}
1a000812:	b083      	sub	sp, #12
1a000814:	af00      	add	r7, sp, #0
1a000816:	6078      	str	r0, [r7, #4]
1a000818:	4608      	mov	r0, r1
1a00081a:	4611      	mov	r1, r2
1a00081c:	461a      	mov	r2, r3
1a00081e:	4603      	mov	r3, r0
1a000820:	70fb      	strb	r3, [r7, #3]
1a000822:	460b      	mov	r3, r1
1a000824:	70bb      	strb	r3, [r7, #2]
1a000826:	4613      	mov	r3, r2
1a000828:	707b      	strb	r3, [r7, #1]
1a00082a:	78fa      	ldrb	r2, [r7, #3]
1a00082c:	78bb      	ldrb	r3, [r7, #2]
1a00082e:	7878      	ldrb	r0, [r7, #1]
1a000830:	6879      	ldr	r1, [r7, #4]
1a000832:	0152      	lsls	r2, r2, #5
1a000834:	440a      	add	r2, r1
1a000836:	4413      	add	r3, r2
1a000838:	4602      	mov	r2, r0
1a00083a:	701a      	strb	r2, [r3, #0]
1a00083c:	bf00      	nop
1a00083e:	370c      	adds	r7, #12
1a000840:	46bd      	mov	sp, r7
1a000842:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000846:	4770      	bx	lr

1a000848 <StopWatch_Elapsed>:
1a000848:	b580      	push	{r7, lr}
1a00084a:	b082      	sub	sp, #8
1a00084c:	af00      	add	r7, sp, #0
1a00084e:	6078      	str	r0, [r7, #4]
1a000850:	f000 fe6e 	bl	1a001530 <StopWatch_Start>
1a000854:	4602      	mov	r2, r0
1a000856:	687b      	ldr	r3, [r7, #4]
1a000858:	1ad3      	subs	r3, r2, r3
1a00085a:	4618      	mov	r0, r3
1a00085c:	3708      	adds	r7, #8
1a00085e:	46bd      	mov	sp, r7
1a000860:	bd80      	pop	{r7, pc}

1a000862 <StopWatch_DelayMs>:
1a000862:	b580      	push	{r7, lr}
1a000864:	b084      	sub	sp, #16
1a000866:	af00      	add	r7, sp, #0
1a000868:	6078      	str	r0, [r7, #4]
1a00086a:	6878      	ldr	r0, [r7, #4]
1a00086c:	f000 fe6a 	bl	1a001544 <StopWatch_MsToTicks>
1a000870:	60f8      	str	r0, [r7, #12]
1a000872:	f000 fe5d 	bl	1a001530 <StopWatch_Start>
1a000876:	60b8      	str	r0, [r7, #8]
1a000878:	bf00      	nop
1a00087a:	68b8      	ldr	r0, [r7, #8]
1a00087c:	f7ff ffe4 	bl	1a000848 <StopWatch_Elapsed>
1a000880:	4602      	mov	r2, r0
1a000882:	68fb      	ldr	r3, [r7, #12]
1a000884:	4293      	cmp	r3, r2
1a000886:	d8f8      	bhi.n	1a00087a <StopWatch_DelayMs+0x18>
1a000888:	bf00      	nop
1a00088a:	3710      	adds	r7, #16
1a00088c:	46bd      	mov	sp, r7
1a00088e:	bd80      	pop	{r7, pc}

1a000890 <escanear_teclado>:
1a000890:	b580      	push	{r7, lr}
1a000892:	b082      	sub	sp, #8
1a000894:	af00      	add	r7, sp, #0
1a000896:	f7ff ff73 	bl	1a000780 <getKeyPressed>
1a00089a:	4603      	mov	r3, r0
1a00089c:	71fb      	strb	r3, [r7, #7]
1a00089e:	4b13      	ldr	r3, [pc, #76]	; (1a0008ec <escanear_teclado+0x5c>)
1a0008a0:	781b      	ldrb	r3, [r3, #0]
1a0008a2:	79fa      	ldrb	r2, [r7, #7]
1a0008a4:	429a      	cmp	r2, r3
1a0008a6:	d01a      	beq.n	1a0008de <escanear_teclado+0x4e>
1a0008a8:	79fb      	ldrb	r3, [r7, #7]
1a0008aa:	2b01      	cmp	r3, #1
1a0008ac:	d102      	bne.n	1a0008b4 <escanear_teclado+0x24>
1a0008ae:	4b10      	ldr	r3, [pc, #64]	; (1a0008f0 <escanear_teclado+0x60>)
1a0008b0:	2201      	movs	r2, #1
1a0008b2:	701a      	strb	r2, [r3, #0]
1a0008b4:	79fb      	ldrb	r3, [r7, #7]
1a0008b6:	2b02      	cmp	r3, #2
1a0008b8:	d102      	bne.n	1a0008c0 <escanear_teclado+0x30>
1a0008ba:	4b0e      	ldr	r3, [pc, #56]	; (1a0008f4 <escanear_teclado+0x64>)
1a0008bc:	2201      	movs	r2, #1
1a0008be:	701a      	strb	r2, [r3, #0]
1a0008c0:	79fb      	ldrb	r3, [r7, #7]
1a0008c2:	2b04      	cmp	r3, #4
1a0008c4:	d102      	bne.n	1a0008cc <escanear_teclado+0x3c>
1a0008c6:	4b0c      	ldr	r3, [pc, #48]	; (1a0008f8 <escanear_teclado+0x68>)
1a0008c8:	2201      	movs	r2, #1
1a0008ca:	701a      	strb	r2, [r3, #0]
1a0008cc:	79fb      	ldrb	r3, [r7, #7]
1a0008ce:	2b08      	cmp	r3, #8
1a0008d0:	d102      	bne.n	1a0008d8 <escanear_teclado+0x48>
1a0008d2:	4b0a      	ldr	r3, [pc, #40]	; (1a0008fc <escanear_teclado+0x6c>)
1a0008d4:	2201      	movs	r2, #1
1a0008d6:	701a      	strb	r2, [r3, #0]
1a0008d8:	4a04      	ldr	r2, [pc, #16]	; (1a0008ec <escanear_teclado+0x5c>)
1a0008da:	79fb      	ldrb	r3, [r7, #7]
1a0008dc:	7013      	strb	r3, [r2, #0]
1a0008de:	2064      	movs	r0, #100	; 0x64
1a0008e0:	f7ff ffbf 	bl	1a000862 <StopWatch_DelayMs>
1a0008e4:	bf00      	nop
1a0008e6:	3708      	adds	r7, #8
1a0008e8:	46bd      	mov	sp, r7
1a0008ea:	bd80      	pop	{r7, pc}
1a0008ec:	10000439 	.word	0x10000439
1a0008f0:	10000435 	.word	0x10000435
1a0008f4:	10000436 	.word	0x10000436
1a0008f8:	10000437 	.word	0x10000437
1a0008fc:	10000438 	.word	0x10000438

1a000900 <recibir_clave>:
1a000900:	b580      	push	{r7, lr}
1a000902:	b082      	sub	sp, #8
1a000904:	af00      	add	r7, sp, #0
1a000906:	6078      	str	r0, [r7, #4]
1a000908:	460b      	mov	r3, r1
1a00090a:	70fb      	strb	r3, [r7, #3]
1a00090c:	4b53      	ldr	r3, [pc, #332]	; (1a000a5c <recibir_clave+0x15c>)
1a00090e:	781b      	ldrb	r3, [r3, #0]
1a000910:	2b00      	cmp	r3, #0
1a000912:	d005      	beq.n	1a000920 <recibir_clave+0x20>
1a000914:	4b52      	ldr	r3, [pc, #328]	; (1a000a60 <recibir_clave+0x160>)
1a000916:	2200      	movs	r2, #0
1a000918:	701a      	strb	r2, [r3, #0]
1a00091a:	4b50      	ldr	r3, [pc, #320]	; (1a000a5c <recibir_clave+0x15c>)
1a00091c:	2200      	movs	r2, #0
1a00091e:	701a      	strb	r2, [r3, #0]
1a000920:	4b50      	ldr	r3, [pc, #320]	; (1a000a64 <recibir_clave+0x164>)
1a000922:	781b      	ldrb	r3, [r3, #0]
1a000924:	b2db      	uxtb	r3, r3
1a000926:	2b00      	cmp	r3, #0
1a000928:	d020      	beq.n	1a00096c <recibir_clave+0x6c>
1a00092a:	4b4d      	ldr	r3, [pc, #308]	; (1a000a60 <recibir_clave+0x160>)
1a00092c:	781b      	ldrb	r3, [r3, #0]
1a00092e:	461a      	mov	r2, r3
1a000930:	687b      	ldr	r3, [r7, #4]
1a000932:	4413      	add	r3, r2
1a000934:	2201      	movs	r2, #1
1a000936:	701a      	strb	r2, [r3, #0]
1a000938:	4b4a      	ldr	r3, [pc, #296]	; (1a000a64 <recibir_clave+0x164>)
1a00093a:	2200      	movs	r2, #0
1a00093c:	701a      	strb	r2, [r3, #0]
1a00093e:	2301      	movs	r3, #1
1a000940:	2202      	movs	r2, #2
1a000942:	2105      	movs	r1, #5
1a000944:	4848      	ldr	r0, [pc, #288]	; (1a000a68 <recibir_clave+0x168>)
1a000946:	f7ff ff63 	bl	1a000810 <Chip_GPIO_SetPinState>
1a00094a:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
1a00094e:	f7ff ff88 	bl	1a000862 <StopWatch_DelayMs>
1a000952:	2300      	movs	r3, #0
1a000954:	2202      	movs	r2, #2
1a000956:	2105      	movs	r1, #5
1a000958:	4843      	ldr	r0, [pc, #268]	; (1a000a68 <recibir_clave+0x168>)
1a00095a:	f7ff ff59 	bl	1a000810 <Chip_GPIO_SetPinState>
1a00095e:	4b40      	ldr	r3, [pc, #256]	; (1a000a60 <recibir_clave+0x160>)
1a000960:	781b      	ldrb	r3, [r3, #0]
1a000962:	3301      	adds	r3, #1
1a000964:	b2da      	uxtb	r2, r3
1a000966:	4b3e      	ldr	r3, [pc, #248]	; (1a000a60 <recibir_clave+0x160>)
1a000968:	701a      	strb	r2, [r3, #0]
1a00096a:	e070      	b.n	1a000a4e <recibir_clave+0x14e>
1a00096c:	4b3f      	ldr	r3, [pc, #252]	; (1a000a6c <recibir_clave+0x16c>)
1a00096e:	781b      	ldrb	r3, [r3, #0]
1a000970:	b2db      	uxtb	r3, r3
1a000972:	2b00      	cmp	r3, #0
1a000974:	d020      	beq.n	1a0009b8 <recibir_clave+0xb8>
1a000976:	4b3a      	ldr	r3, [pc, #232]	; (1a000a60 <recibir_clave+0x160>)
1a000978:	781b      	ldrb	r3, [r3, #0]
1a00097a:	461a      	mov	r2, r3
1a00097c:	687b      	ldr	r3, [r7, #4]
1a00097e:	4413      	add	r3, r2
1a000980:	2202      	movs	r2, #2
1a000982:	701a      	strb	r2, [r3, #0]
1a000984:	4b39      	ldr	r3, [pc, #228]	; (1a000a6c <recibir_clave+0x16c>)
1a000986:	2200      	movs	r2, #0
1a000988:	701a      	strb	r2, [r3, #0]
1a00098a:	2301      	movs	r3, #1
1a00098c:	220e      	movs	r2, #14
1a00098e:	2100      	movs	r1, #0
1a000990:	4835      	ldr	r0, [pc, #212]	; (1a000a68 <recibir_clave+0x168>)
1a000992:	f7ff ff3d 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000996:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
1a00099a:	f7ff ff62 	bl	1a000862 <StopWatch_DelayMs>
1a00099e:	2300      	movs	r3, #0
1a0009a0:	220e      	movs	r2, #14
1a0009a2:	2100      	movs	r1, #0
1a0009a4:	4830      	ldr	r0, [pc, #192]	; (1a000a68 <recibir_clave+0x168>)
1a0009a6:	f7ff ff33 	bl	1a000810 <Chip_GPIO_SetPinState>
1a0009aa:	4b2d      	ldr	r3, [pc, #180]	; (1a000a60 <recibir_clave+0x160>)
1a0009ac:	781b      	ldrb	r3, [r3, #0]
1a0009ae:	3301      	adds	r3, #1
1a0009b0:	b2da      	uxtb	r2, r3
1a0009b2:	4b2b      	ldr	r3, [pc, #172]	; (1a000a60 <recibir_clave+0x160>)
1a0009b4:	701a      	strb	r2, [r3, #0]
1a0009b6:	e04a      	b.n	1a000a4e <recibir_clave+0x14e>
1a0009b8:	4b2d      	ldr	r3, [pc, #180]	; (1a000a70 <recibir_clave+0x170>)
1a0009ba:	781b      	ldrb	r3, [r3, #0]
1a0009bc:	b2db      	uxtb	r3, r3
1a0009be:	2b00      	cmp	r3, #0
1a0009c0:	d020      	beq.n	1a000a04 <recibir_clave+0x104>
1a0009c2:	4b27      	ldr	r3, [pc, #156]	; (1a000a60 <recibir_clave+0x160>)
1a0009c4:	781b      	ldrb	r3, [r3, #0]
1a0009c6:	461a      	mov	r2, r3
1a0009c8:	687b      	ldr	r3, [r7, #4]
1a0009ca:	4413      	add	r3, r2
1a0009cc:	2203      	movs	r2, #3
1a0009ce:	701a      	strb	r2, [r3, #0]
1a0009d0:	4b27      	ldr	r3, [pc, #156]	; (1a000a70 <recibir_clave+0x170>)
1a0009d2:	2200      	movs	r2, #0
1a0009d4:	701a      	strb	r2, [r3, #0]
1a0009d6:	2301      	movs	r3, #1
1a0009d8:	220b      	movs	r2, #11
1a0009da:	2101      	movs	r1, #1
1a0009dc:	4822      	ldr	r0, [pc, #136]	; (1a000a68 <recibir_clave+0x168>)
1a0009de:	f7ff ff17 	bl	1a000810 <Chip_GPIO_SetPinState>
1a0009e2:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
1a0009e6:	f7ff ff3c 	bl	1a000862 <StopWatch_DelayMs>
1a0009ea:	2300      	movs	r3, #0
1a0009ec:	220b      	movs	r2, #11
1a0009ee:	2101      	movs	r1, #1
1a0009f0:	481d      	ldr	r0, [pc, #116]	; (1a000a68 <recibir_clave+0x168>)
1a0009f2:	f7ff ff0d 	bl	1a000810 <Chip_GPIO_SetPinState>
1a0009f6:	4b1a      	ldr	r3, [pc, #104]	; (1a000a60 <recibir_clave+0x160>)
1a0009f8:	781b      	ldrb	r3, [r3, #0]
1a0009fa:	3301      	adds	r3, #1
1a0009fc:	b2da      	uxtb	r2, r3
1a0009fe:	4b18      	ldr	r3, [pc, #96]	; (1a000a60 <recibir_clave+0x160>)
1a000a00:	701a      	strb	r2, [r3, #0]
1a000a02:	e024      	b.n	1a000a4e <recibir_clave+0x14e>
1a000a04:	4b1b      	ldr	r3, [pc, #108]	; (1a000a74 <recibir_clave+0x174>)
1a000a06:	781b      	ldrb	r3, [r3, #0]
1a000a08:	b2db      	uxtb	r3, r3
1a000a0a:	2b00      	cmp	r3, #0
1a000a0c:	d01f      	beq.n	1a000a4e <recibir_clave+0x14e>
1a000a0e:	4b14      	ldr	r3, [pc, #80]	; (1a000a60 <recibir_clave+0x160>)
1a000a10:	781b      	ldrb	r3, [r3, #0]
1a000a12:	461a      	mov	r2, r3
1a000a14:	687b      	ldr	r3, [r7, #4]
1a000a16:	4413      	add	r3, r2
1a000a18:	2204      	movs	r2, #4
1a000a1a:	701a      	strb	r2, [r3, #0]
1a000a1c:	4b15      	ldr	r3, [pc, #84]	; (1a000a74 <recibir_clave+0x174>)
1a000a1e:	2200      	movs	r2, #0
1a000a20:	701a      	strb	r2, [r3, #0]
1a000a22:	2301      	movs	r3, #1
1a000a24:	220c      	movs	r2, #12
1a000a26:	2101      	movs	r1, #1
1a000a28:	480f      	ldr	r0, [pc, #60]	; (1a000a68 <recibir_clave+0x168>)
1a000a2a:	f7ff fef1 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000a2e:	f44f 70fa 	mov.w	r0, #500	; 0x1f4
1a000a32:	f7ff ff16 	bl	1a000862 <StopWatch_DelayMs>
1a000a36:	2300      	movs	r3, #0
1a000a38:	220c      	movs	r2, #12
1a000a3a:	2101      	movs	r1, #1
1a000a3c:	480a      	ldr	r0, [pc, #40]	; (1a000a68 <recibir_clave+0x168>)
1a000a3e:	f7ff fee7 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000a42:	4b07      	ldr	r3, [pc, #28]	; (1a000a60 <recibir_clave+0x160>)
1a000a44:	781b      	ldrb	r3, [r3, #0]
1a000a46:	3301      	adds	r3, #1
1a000a48:	b2da      	uxtb	r2, r3
1a000a4a:	4b05      	ldr	r3, [pc, #20]	; (1a000a60 <recibir_clave+0x160>)
1a000a4c:	701a      	strb	r2, [r3, #0]
1a000a4e:	4b04      	ldr	r3, [pc, #16]	; (1a000a60 <recibir_clave+0x160>)
1a000a50:	781b      	ldrb	r3, [r3, #0]
1a000a52:	4618      	mov	r0, r3
1a000a54:	3708      	adds	r7, #8
1a000a56:	46bd      	mov	sp, r7
1a000a58:	bd80      	pop	{r7, pc}
1a000a5a:	bf00      	nop
1a000a5c:	10000432 	.word	0x10000432
1a000a60:	10000433 	.word	0x10000433
1a000a64:	10000435 	.word	0x10000435
1a000a68:	400f4000 	.word	0x400f4000
1a000a6c:	10000436 	.word	0x10000436
1a000a70:	10000437 	.word	0x10000437
1a000a74:	10000438 	.word	0x10000438

1a000a78 <comparar_claves>:
1a000a78:	b480      	push	{r7}
1a000a7a:	b087      	sub	sp, #28
1a000a7c:	af00      	add	r7, sp, #0
1a000a7e:	60f8      	str	r0, [r7, #12]
1a000a80:	60b9      	str	r1, [r7, #8]
1a000a82:	4613      	mov	r3, r2
1a000a84:	71fb      	strb	r3, [r7, #7]
1a000a86:	4b14      	ldr	r3, [pc, #80]	; (1a000ad8 <comparar_claves+0x60>)
1a000a88:	2201      	movs	r2, #1
1a000a8a:	701a      	strb	r2, [r3, #0]
1a000a8c:	2300      	movs	r3, #0
1a000a8e:	75fb      	strb	r3, [r7, #23]
1a000a90:	2300      	movs	r3, #0
1a000a92:	75fb      	strb	r3, [r7, #23]
1a000a94:	e00f      	b.n	1a000ab6 <comparar_claves+0x3e>
1a000a96:	7dfb      	ldrb	r3, [r7, #23]
1a000a98:	68ba      	ldr	r2, [r7, #8]
1a000a9a:	4413      	add	r3, r2
1a000a9c:	781a      	ldrb	r2, [r3, #0]
1a000a9e:	7dfb      	ldrb	r3, [r7, #23]
1a000aa0:	68f9      	ldr	r1, [r7, #12]
1a000aa2:	440b      	add	r3, r1
1a000aa4:	781b      	ldrb	r3, [r3, #0]
1a000aa6:	429a      	cmp	r2, r3
1a000aa8:	d002      	beq.n	1a000ab0 <comparar_claves+0x38>
1a000aaa:	4b0b      	ldr	r3, [pc, #44]	; (1a000ad8 <comparar_claves+0x60>)
1a000aac:	2200      	movs	r2, #0
1a000aae:	701a      	strb	r2, [r3, #0]
1a000ab0:	7dfb      	ldrb	r3, [r7, #23]
1a000ab2:	3301      	adds	r3, #1
1a000ab4:	75fb      	strb	r3, [r7, #23]
1a000ab6:	7dfa      	ldrb	r2, [r7, #23]
1a000ab8:	79fb      	ldrb	r3, [r7, #7]
1a000aba:	429a      	cmp	r2, r3
1a000abc:	d203      	bcs.n	1a000ac6 <comparar_claves+0x4e>
1a000abe:	4b06      	ldr	r3, [pc, #24]	; (1a000ad8 <comparar_claves+0x60>)
1a000ac0:	781b      	ldrb	r3, [r3, #0]
1a000ac2:	2b01      	cmp	r3, #1
1a000ac4:	d0e7      	beq.n	1a000a96 <comparar_claves+0x1e>
1a000ac6:	4b04      	ldr	r3, [pc, #16]	; (1a000ad8 <comparar_claves+0x60>)
1a000ac8:	781b      	ldrb	r3, [r3, #0]
1a000aca:	4618      	mov	r0, r3
1a000acc:	371c      	adds	r7, #28
1a000ace:	46bd      	mov	sp, r7
1a000ad0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ad4:	4770      	bx	lr
1a000ad6:	bf00      	nop
1a000ad8:	10000434 	.word	0x10000434

1a000adc <parpadea_led>:
1a000adc:	b580      	push	{r7, lr}
1a000ade:	b084      	sub	sp, #16
1a000ae0:	af00      	add	r7, sp, #0
1a000ae2:	4603      	mov	r3, r0
1a000ae4:	460a      	mov	r2, r1
1a000ae6:	71fb      	strb	r3, [r7, #7]
1a000ae8:	4613      	mov	r3, r2
1a000aea:	71bb      	strb	r3, [r7, #6]
1a000aec:	2300      	movs	r3, #0
1a000aee:	73fb      	strb	r3, [r7, #15]
1a000af0:	e014      	b.n	1a000b1c <parpadea_led+0x40>
1a000af2:	79ba      	ldrb	r2, [r7, #6]
1a000af4:	79f9      	ldrb	r1, [r7, #7]
1a000af6:	2301      	movs	r3, #1
1a000af8:	480c      	ldr	r0, [pc, #48]	; (1a000b2c <parpadea_led+0x50>)
1a000afa:	f7ff fe89 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000afe:	20c8      	movs	r0, #200	; 0xc8
1a000b00:	f7ff feaf 	bl	1a000862 <StopWatch_DelayMs>
1a000b04:	79ba      	ldrb	r2, [r7, #6]
1a000b06:	79f9      	ldrb	r1, [r7, #7]
1a000b08:	2300      	movs	r3, #0
1a000b0a:	4808      	ldr	r0, [pc, #32]	; (1a000b2c <parpadea_led+0x50>)
1a000b0c:	f7ff fe80 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000b10:	20c8      	movs	r0, #200	; 0xc8
1a000b12:	f7ff fea6 	bl	1a000862 <StopWatch_DelayMs>
1a000b16:	7bfb      	ldrb	r3, [r7, #15]
1a000b18:	3301      	adds	r3, #1
1a000b1a:	73fb      	strb	r3, [r7, #15]
1a000b1c:	7bfb      	ldrb	r3, [r7, #15]
1a000b1e:	2b04      	cmp	r3, #4
1a000b20:	d9e7      	bls.n	1a000af2 <parpadea_led+0x16>
1a000b22:	bf00      	nop
1a000b24:	3710      	adds	r7, #16
1a000b26:	46bd      	mov	sp, r7
1a000b28:	bd80      	pop	{r7, pc}
1a000b2a:	bf00      	nop
1a000b2c:	400f4000 	.word	0x400f4000

1a000b30 <clave_establecida>:
1a000b30:	b580      	push	{r7, lr}
1a000b32:	b082      	sub	sp, #8
1a000b34:	af00      	add	r7, sp, #0
1a000b36:	2300      	movs	r3, #0
1a000b38:	71fb      	strb	r3, [r7, #7]
1a000b3a:	e038      	b.n	1a000bae <clave_establecida+0x7e>
1a000b3c:	2301      	movs	r3, #1
1a000b3e:	2202      	movs	r2, #2
1a000b40:	2105      	movs	r1, #5
1a000b42:	481e      	ldr	r0, [pc, #120]	; (1a000bbc <clave_establecida+0x8c>)
1a000b44:	f7ff fe64 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000b48:	2301      	movs	r3, #1
1a000b4a:	220e      	movs	r2, #14
1a000b4c:	2100      	movs	r1, #0
1a000b4e:	481b      	ldr	r0, [pc, #108]	; (1a000bbc <clave_establecida+0x8c>)
1a000b50:	f7ff fe5e 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000b54:	2301      	movs	r3, #1
1a000b56:	220b      	movs	r2, #11
1a000b58:	2101      	movs	r1, #1
1a000b5a:	4818      	ldr	r0, [pc, #96]	; (1a000bbc <clave_establecida+0x8c>)
1a000b5c:	f7ff fe58 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000b60:	2301      	movs	r3, #1
1a000b62:	220c      	movs	r2, #12
1a000b64:	2101      	movs	r1, #1
1a000b66:	4815      	ldr	r0, [pc, #84]	; (1a000bbc <clave_establecida+0x8c>)
1a000b68:	f7ff fe52 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000b6c:	20c8      	movs	r0, #200	; 0xc8
1a000b6e:	f7ff fe78 	bl	1a000862 <StopWatch_DelayMs>
1a000b72:	2300      	movs	r3, #0
1a000b74:	2202      	movs	r2, #2
1a000b76:	2105      	movs	r1, #5
1a000b78:	4810      	ldr	r0, [pc, #64]	; (1a000bbc <clave_establecida+0x8c>)
1a000b7a:	f7ff fe49 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000b7e:	2300      	movs	r3, #0
1a000b80:	220e      	movs	r2, #14
1a000b82:	2100      	movs	r1, #0
1a000b84:	480d      	ldr	r0, [pc, #52]	; (1a000bbc <clave_establecida+0x8c>)
1a000b86:	f7ff fe43 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000b8a:	2300      	movs	r3, #0
1a000b8c:	220b      	movs	r2, #11
1a000b8e:	2101      	movs	r1, #1
1a000b90:	480a      	ldr	r0, [pc, #40]	; (1a000bbc <clave_establecida+0x8c>)
1a000b92:	f7ff fe3d 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000b96:	2300      	movs	r3, #0
1a000b98:	220c      	movs	r2, #12
1a000b9a:	2101      	movs	r1, #1
1a000b9c:	4807      	ldr	r0, [pc, #28]	; (1a000bbc <clave_establecida+0x8c>)
1a000b9e:	f7ff fe37 	bl	1a000810 <Chip_GPIO_SetPinState>
1a000ba2:	20c8      	movs	r0, #200	; 0xc8
1a000ba4:	f7ff fe5d 	bl	1a000862 <StopWatch_DelayMs>
1a000ba8:	79fb      	ldrb	r3, [r7, #7]
1a000baa:	3301      	adds	r3, #1
1a000bac:	71fb      	strb	r3, [r7, #7]
1a000bae:	79fb      	ldrb	r3, [r7, #7]
1a000bb0:	2b04      	cmp	r3, #4
1a000bb2:	d9c3      	bls.n	1a000b3c <clave_establecida+0xc>
1a000bb4:	bf00      	nop
1a000bb6:	3708      	adds	r7, #8
1a000bb8:	46bd      	mov	sp, r7
1a000bba:	bd80      	pop	{r7, pc}
1a000bbc:	400f4000 	.word	0x400f4000

1a000bc0 <ResetISR>:
1a000bc0:	b580      	push	{r7, lr}
1a000bc2:	b088      	sub	sp, #32
1a000bc4:	af00      	add	r7, sp, #0
1a000bc6:	b672      	cpsid	i
1a000bc8:	4b26      	ldr	r3, [pc, #152]	; (1a000c64 <ResetISR+0xa4>)
1a000bca:	617b      	str	r3, [r7, #20]
1a000bcc:	697b      	ldr	r3, [r7, #20]
1a000bce:	4a26      	ldr	r2, [pc, #152]	; (1a000c68 <ResetISR+0xa8>)
1a000bd0:	601a      	str	r2, [r3, #0]
1a000bd2:	697b      	ldr	r3, [r7, #20]
1a000bd4:	3304      	adds	r3, #4
1a000bd6:	4a25      	ldr	r2, [pc, #148]	; (1a000c6c <ResetISR+0xac>)
1a000bd8:	601a      	str	r2, [r3, #0]
1a000bda:	4b25      	ldr	r3, [pc, #148]	; (1a000c70 <ResetISR+0xb0>)
1a000bdc:	613b      	str	r3, [r7, #16]
1a000bde:	2300      	movs	r3, #0
1a000be0:	61fb      	str	r3, [r7, #28]
1a000be2:	e009      	b.n	1a000bf8 <ResetISR+0x38>
1a000be4:	69fb      	ldr	r3, [r7, #28]
1a000be6:	009b      	lsls	r3, r3, #2
1a000be8:	693a      	ldr	r2, [r7, #16]
1a000bea:	4413      	add	r3, r2
1a000bec:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a000bf0:	601a      	str	r2, [r3, #0]
1a000bf2:	69fb      	ldr	r3, [r7, #28]
1a000bf4:	3301      	adds	r3, #1
1a000bf6:	61fb      	str	r3, [r7, #28]
1a000bf8:	69fb      	ldr	r3, [r7, #28]
1a000bfa:	2b07      	cmp	r3, #7
1a000bfc:	d9f2      	bls.n	1a000be4 <ResetISR+0x24>
1a000bfe:	b662      	cpsie	i
1a000c00:	4b1c      	ldr	r3, [pc, #112]	; (1a000c74 <ResetISR+0xb4>)
1a000c02:	61bb      	str	r3, [r7, #24]
1a000c04:	e013      	b.n	1a000c2e <ResetISR+0x6e>
1a000c06:	69bb      	ldr	r3, [r7, #24]
1a000c08:	1d1a      	adds	r2, r3, #4
1a000c0a:	61ba      	str	r2, [r7, #24]
1a000c0c:	681b      	ldr	r3, [r3, #0]
1a000c0e:	607b      	str	r3, [r7, #4]
1a000c10:	69bb      	ldr	r3, [r7, #24]
1a000c12:	1d1a      	adds	r2, r3, #4
1a000c14:	61ba      	str	r2, [r7, #24]
1a000c16:	681b      	ldr	r3, [r3, #0]
1a000c18:	60fb      	str	r3, [r7, #12]
1a000c1a:	69bb      	ldr	r3, [r7, #24]
1a000c1c:	1d1a      	adds	r2, r3, #4
1a000c1e:	61ba      	str	r2, [r7, #24]
1a000c20:	681b      	ldr	r3, [r3, #0]
1a000c22:	60bb      	str	r3, [r7, #8]
1a000c24:	68ba      	ldr	r2, [r7, #8]
1a000c26:	68f9      	ldr	r1, [r7, #12]
1a000c28:	6878      	ldr	r0, [r7, #4]
1a000c2a:	f7ff fa7d 	bl	1a000128 <data_init>
1a000c2e:	69bb      	ldr	r3, [r7, #24]
1a000c30:	4a11      	ldr	r2, [pc, #68]	; (1a000c78 <ResetISR+0xb8>)
1a000c32:	4293      	cmp	r3, r2
1a000c34:	d3e7      	bcc.n	1a000c06 <ResetISR+0x46>
1a000c36:	e00d      	b.n	1a000c54 <ResetISR+0x94>
1a000c38:	69bb      	ldr	r3, [r7, #24]
1a000c3a:	1d1a      	adds	r2, r3, #4
1a000c3c:	61ba      	str	r2, [r7, #24]
1a000c3e:	681b      	ldr	r3, [r3, #0]
1a000c40:	60fb      	str	r3, [r7, #12]
1a000c42:	69bb      	ldr	r3, [r7, #24]
1a000c44:	1d1a      	adds	r2, r3, #4
1a000c46:	61ba      	str	r2, [r7, #24]
1a000c48:	681b      	ldr	r3, [r3, #0]
1a000c4a:	60bb      	str	r3, [r7, #8]
1a000c4c:	68b9      	ldr	r1, [r7, #8]
1a000c4e:	68f8      	ldr	r0, [r7, #12]
1a000c50:	f7ff fa8c 	bl	1a00016c <bss_init>
1a000c54:	69bb      	ldr	r3, [r7, #24]
1a000c56:	4a09      	ldr	r2, [pc, #36]	; (1a000c7c <ResetISR+0xbc>)
1a000c58:	4293      	cmp	r3, r2
1a000c5a:	d3ed      	bcc.n	1a000c38 <ResetISR+0x78>
1a000c5c:	f000 f810 	bl	1a000c80 <main>
1a000c60:	e7fe      	b.n	1a000c60 <ResetISR+0xa0>
1a000c62:	bf00      	nop
1a000c64:	40053100 	.word	0x40053100
1a000c68:	10df1000 	.word	0x10df1000
1a000c6c:	01dff7ff 	.word	0x01dff7ff
1a000c70:	e000e280 	.word	0xe000e280
1a000c74:	1a000114 	.word	0x1a000114
1a000c78:	1a000120 	.word	0x1a000120
1a000c7c:	1a000128 	.word	0x1a000128

1a000c80 <main>:
1a000c80:	b580      	push	{r7, lr}
1a000c82:	b082      	sub	sp, #8
1a000c84:	af00      	add	r7, sp, #0
1a000c86:	f7ff fc85 	bl	1a000594 <systemInit>
1a000c8a:	f7ff fe01 	bl	1a000890 <escanear_teclado>
1a000c8e:	2106      	movs	r1, #6
1a000c90:	484b      	ldr	r0, [pc, #300]	; (1a000dc0 <main+0x140>)
1a000c92:	f7ff fe35 	bl	1a000900 <recibir_clave>
1a000c96:	4603      	mov	r3, r0
1a000c98:	70bb      	strb	r3, [r7, #2]
1a000c9a:	78bb      	ldrb	r3, [r7, #2]
1a000c9c:	2b06      	cmp	r3, #6
1a000c9e:	d1f4      	bne.n	1a000c8a <main+0xa>
1a000ca0:	4b48      	ldr	r3, [pc, #288]	; (1a000dc4 <main+0x144>)
1a000ca2:	2201      	movs	r2, #1
1a000ca4:	701a      	strb	r2, [r3, #0]
1a000ca6:	4b48      	ldr	r3, [pc, #288]	; (1a000dc8 <main+0x148>)
1a000ca8:	2201      	movs	r2, #1
1a000caa:	701a      	strb	r2, [r3, #0]
1a000cac:	2300      	movs	r3, #0
1a000cae:	70bb      	strb	r3, [r7, #2]
1a000cb0:	4b45      	ldr	r3, [pc, #276]	; (1a000dc8 <main+0x148>)
1a000cb2:	781b      	ldrb	r3, [r3, #0]
1a000cb4:	2b01      	cmp	r3, #1
1a000cb6:	d132      	bne.n	1a000d1e <main+0x9e>
1a000cb8:	4b44      	ldr	r3, [pc, #272]	; (1a000dcc <main+0x14c>)
1a000cba:	781b      	ldrb	r3, [r3, #0]
1a000cbc:	2b00      	cmp	r3, #0
1a000cbe:	d12e      	bne.n	1a000d1e <main+0x9e>
1a000cc0:	2206      	movs	r2, #6
1a000cc2:	493f      	ldr	r1, [pc, #252]	; (1a000dc0 <main+0x140>)
1a000cc4:	4842      	ldr	r0, [pc, #264]	; (1a000dd0 <main+0x150>)
1a000cc6:	f7ff fed7 	bl	1a000a78 <comparar_claves>
1a000cca:	4603      	mov	r3, r0
1a000ccc:	2b00      	cmp	r3, #0
1a000cce:	d014      	beq.n	1a000cfa <main+0x7a>
1a000cd0:	210c      	movs	r1, #12
1a000cd2:	2001      	movs	r0, #1
1a000cd4:	f7ff ff02 	bl	1a000adc <parpadea_led>
1a000cd8:	4b3c      	ldr	r3, [pc, #240]	; (1a000dcc <main+0x14c>)
1a000cda:	2201      	movs	r2, #1
1a000cdc:	701a      	strb	r2, [r3, #0]
1a000cde:	2300      	movs	r3, #0
1a000ce0:	71fb      	strb	r3, [r7, #7]
1a000ce2:	e006      	b.n	1a000cf2 <main+0x72>
1a000ce4:	79fb      	ldrb	r3, [r7, #7]
1a000ce6:	4a36      	ldr	r2, [pc, #216]	; (1a000dc0 <main+0x140>)
1a000ce8:	2100      	movs	r1, #0
1a000cea:	54d1      	strb	r1, [r2, r3]
1a000cec:	79fb      	ldrb	r3, [r7, #7]
1a000cee:	3301      	adds	r3, #1
1a000cf0:	71fb      	strb	r3, [r7, #7]
1a000cf2:	79fb      	ldrb	r3, [r7, #7]
1a000cf4:	2b05      	cmp	r3, #5
1a000cf6:	d9f5      	bls.n	1a000ce4 <main+0x64>
1a000cf8:	e061      	b.n	1a000dbe <main+0x13e>
1a000cfa:	210e      	movs	r1, #14
1a000cfc:	2000      	movs	r0, #0
1a000cfe:	f7ff feed 	bl	1a000adc <parpadea_led>
1a000d02:	2300      	movs	r3, #0
1a000d04:	71bb      	strb	r3, [r7, #6]
1a000d06:	e006      	b.n	1a000d16 <main+0x96>
1a000d08:	79bb      	ldrb	r3, [r7, #6]
1a000d0a:	4a2d      	ldr	r2, [pc, #180]	; (1a000dc0 <main+0x140>)
1a000d0c:	2100      	movs	r1, #0
1a000d0e:	54d1      	strb	r1, [r2, r3]
1a000d10:	79bb      	ldrb	r3, [r7, #6]
1a000d12:	3301      	adds	r3, #1
1a000d14:	71bb      	strb	r3, [r7, #6]
1a000d16:	79bb      	ldrb	r3, [r7, #6]
1a000d18:	2b05      	cmp	r3, #5
1a000d1a:	d9f5      	bls.n	1a000d08 <main+0x88>
1a000d1c:	e04f      	b.n	1a000dbe <main+0x13e>
1a000d1e:	4b2b      	ldr	r3, [pc, #172]	; (1a000dcc <main+0x14c>)
1a000d20:	781b      	ldrb	r3, [r3, #0]
1a000d22:	2b01      	cmp	r3, #1
1a000d24:	d118      	bne.n	1a000d58 <main+0xd8>
1a000d26:	4b2b      	ldr	r3, [pc, #172]	; (1a000dd4 <main+0x154>)
1a000d28:	781b      	ldrb	r3, [r3, #0]
1a000d2a:	2b00      	cmp	r3, #0
1a000d2c:	d114      	bne.n	1a000d58 <main+0xd8>
1a000d2e:	2300      	movs	r3, #0
1a000d30:	717b      	strb	r3, [r7, #5]
1a000d32:	e008      	b.n	1a000d46 <main+0xc6>
1a000d34:	797a      	ldrb	r2, [r7, #5]
1a000d36:	797b      	ldrb	r3, [r7, #5]
1a000d38:	4921      	ldr	r1, [pc, #132]	; (1a000dc0 <main+0x140>)
1a000d3a:	5c89      	ldrb	r1, [r1, r2]
1a000d3c:	4a24      	ldr	r2, [pc, #144]	; (1a000dd0 <main+0x150>)
1a000d3e:	54d1      	strb	r1, [r2, r3]
1a000d40:	797b      	ldrb	r3, [r7, #5]
1a000d42:	3301      	adds	r3, #1
1a000d44:	717b      	strb	r3, [r7, #5]
1a000d46:	797b      	ldrb	r3, [r7, #5]
1a000d48:	2b05      	cmp	r3, #5
1a000d4a:	d9f3      	bls.n	1a000d34 <main+0xb4>
1a000d4c:	4b21      	ldr	r3, [pc, #132]	; (1a000dd4 <main+0x154>)
1a000d4e:	2201      	movs	r2, #1
1a000d50:	701a      	strb	r2, [r3, #0]
1a000d52:	f7ff feed 	bl	1a000b30 <clave_establecida>
1a000d56:	e032      	b.n	1a000dbe <main+0x13e>
1a000d58:	4b1c      	ldr	r3, [pc, #112]	; (1a000dcc <main+0x14c>)
1a000d5a:	781b      	ldrb	r3, [r3, #0]
1a000d5c:	2b01      	cmp	r3, #1
1a000d5e:	d194      	bne.n	1a000c8a <main+0xa>
1a000d60:	4b1c      	ldr	r3, [pc, #112]	; (1a000dd4 <main+0x154>)
1a000d62:	781b      	ldrb	r3, [r3, #0]
1a000d64:	2b01      	cmp	r3, #1
1a000d66:	d190      	bne.n	1a000c8a <main+0xa>
1a000d68:	2206      	movs	r2, #6
1a000d6a:	4915      	ldr	r1, [pc, #84]	; (1a000dc0 <main+0x140>)
1a000d6c:	4818      	ldr	r0, [pc, #96]	; (1a000dd0 <main+0x150>)
1a000d6e:	f7ff fe83 	bl	1a000a78 <comparar_claves>
1a000d72:	4603      	mov	r3, r0
1a000d74:	2b00      	cmp	r3, #0
1a000d76:	d011      	beq.n	1a000d9c <main+0x11c>
1a000d78:	210c      	movs	r1, #12
1a000d7a:	2001      	movs	r0, #1
1a000d7c:	f7ff feae 	bl	1a000adc <parpadea_led>
1a000d80:	2300      	movs	r3, #0
1a000d82:	713b      	strb	r3, [r7, #4]
1a000d84:	e006      	b.n	1a000d94 <main+0x114>
1a000d86:	793b      	ldrb	r3, [r7, #4]
1a000d88:	4a0d      	ldr	r2, [pc, #52]	; (1a000dc0 <main+0x140>)
1a000d8a:	2100      	movs	r1, #0
1a000d8c:	54d1      	strb	r1, [r2, r3]
1a000d8e:	793b      	ldrb	r3, [r7, #4]
1a000d90:	3301      	adds	r3, #1
1a000d92:	713b      	strb	r3, [r7, #4]
1a000d94:	793b      	ldrb	r3, [r7, #4]
1a000d96:	2b05      	cmp	r3, #5
1a000d98:	d9f5      	bls.n	1a000d86 <main+0x106>
1a000d9a:	e776      	b.n	1a000c8a <main+0xa>
1a000d9c:	210e      	movs	r1, #14
1a000d9e:	2000      	movs	r0, #0
1a000da0:	f7ff fe9c 	bl	1a000adc <parpadea_led>
1a000da4:	2300      	movs	r3, #0
1a000da6:	70fb      	strb	r3, [r7, #3]
1a000da8:	e006      	b.n	1a000db8 <main+0x138>
1a000daa:	78fb      	ldrb	r3, [r7, #3]
1a000dac:	4a04      	ldr	r2, [pc, #16]	; (1a000dc0 <main+0x140>)
1a000dae:	2100      	movs	r1, #0
1a000db0:	54d1      	strb	r1, [r2, r3]
1a000db2:	78fb      	ldrb	r3, [r7, #3]
1a000db4:	3301      	adds	r3, #1
1a000db6:	70fb      	strb	r3, [r7, #3]
1a000db8:	78fb      	ldrb	r3, [r7, #3]
1a000dba:	2b05      	cmp	r3, #5
1a000dbc:	d9f5      	bls.n	1a000daa <main+0x12a>
1a000dbe:	e764      	b.n	1a000c8a <main+0xa>
1a000dc0:	10000450 	.word	0x10000450
1a000dc4:	10000432 	.word	0x10000432
1a000dc8:	10000431 	.word	0x10000431
1a000dcc:	1000043a 	.word	0x1000043a
1a000dd0:	10000000 	.word	0x10000000
1a000dd4:	10000430 	.word	0x10000430

1a000dd8 <fpuInit>:
1a000dd8:	b480      	push	{r7}
1a000dda:	b089      	sub	sp, #36	; 0x24
1a000ddc:	af00      	add	r7, sp, #0
1a000dde:	4b16      	ldr	r3, [pc, #88]	; (1a000e38 <fpuInit+0x60>)
1a000de0:	61fb      	str	r3, [r7, #28]
1a000de2:	4b16      	ldr	r3, [pc, #88]	; (1a000e3c <fpuInit+0x64>)
1a000de4:	61bb      	str	r3, [r7, #24]
1a000de6:	4b16      	ldr	r3, [pc, #88]	; (1a000e40 <fpuInit+0x68>)
1a000de8:	617b      	str	r3, [r7, #20]
1a000dea:	2300      	movs	r3, #0
1a000dec:	74fb      	strb	r3, [r7, #19]
1a000dee:	69bb      	ldr	r3, [r7, #24]
1a000df0:	681b      	ldr	r3, [r3, #0]
1a000df2:	60bb      	str	r3, [r7, #8]
1a000df4:	697b      	ldr	r3, [r7, #20]
1a000df6:	681b      	ldr	r3, [r3, #0]
1a000df8:	607b      	str	r3, [r7, #4]
1a000dfa:	68bb      	ldr	r3, [r7, #8]
1a000dfc:	4a11      	ldr	r2, [pc, #68]	; (1a000e44 <fpuInit+0x6c>)
1a000dfe:	4293      	cmp	r3, r2
1a000e00:	d105      	bne.n	1a000e0e <fpuInit+0x36>
1a000e02:	687b      	ldr	r3, [r7, #4]
1a000e04:	4a10      	ldr	r2, [pc, #64]	; (1a000e48 <fpuInit+0x70>)
1a000e06:	4293      	cmp	r3, r2
1a000e08:	d101      	bne.n	1a000e0e <fpuInit+0x36>
1a000e0a:	2301      	movs	r3, #1
1a000e0c:	e000      	b.n	1a000e10 <fpuInit+0x38>
1a000e0e:	2300      	movs	r3, #0
1a000e10:	74fb      	strb	r3, [r7, #19]
1a000e12:	7cfb      	ldrb	r3, [r7, #19]
1a000e14:	2b00      	cmp	r3, #0
1a000e16:	d009      	beq.n	1a000e2c <fpuInit+0x54>
1a000e18:	69fb      	ldr	r3, [r7, #28]
1a000e1a:	681b      	ldr	r3, [r3, #0]
1a000e1c:	60fb      	str	r3, [r7, #12]
1a000e1e:	68fb      	ldr	r3, [r7, #12]
1a000e20:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a000e24:	60fb      	str	r3, [r7, #12]
1a000e26:	68fa      	ldr	r2, [r7, #12]
1a000e28:	69fb      	ldr	r3, [r7, #28]
1a000e2a:	601a      	str	r2, [r3, #0]
1a000e2c:	bf00      	nop
1a000e2e:	3724      	adds	r7, #36	; 0x24
1a000e30:	46bd      	mov	sp, r7
1a000e32:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e36:	4770      	bx	lr
1a000e38:	e000ed88 	.word	0xe000ed88
1a000e3c:	e000ef40 	.word	0xe000ef40
1a000e40:	e000ef44 	.word	0xe000ef44
1a000e44:	10110021 	.word	0x10110021
1a000e48:	11000011 	.word	0x11000011

1a000e4c <Chip_Clock_DisableMainPLL>:
1a000e4c:	b480      	push	{r7}
1a000e4e:	af00      	add	r7, sp, #0
1a000e50:	4b05      	ldr	r3, [pc, #20]	; (1a000e68 <Chip_Clock_DisableMainPLL+0x1c>)
1a000e52:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000e54:	4a04      	ldr	r2, [pc, #16]	; (1a000e68 <Chip_Clock_DisableMainPLL+0x1c>)
1a000e56:	f043 0301 	orr.w	r3, r3, #1
1a000e5a:	6453      	str	r3, [r2, #68]	; 0x44
1a000e5c:	bf00      	nop
1a000e5e:	46bd      	mov	sp, r7
1a000e60:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e64:	4770      	bx	lr
1a000e66:	bf00      	nop
1a000e68:	40050000 	.word	0x40050000

1a000e6c <Chip_Clock_SetupMainPLL>:
1a000e6c:	b480      	push	{r7}
1a000e6e:	b083      	sub	sp, #12
1a000e70:	af00      	add	r7, sp, #0
1a000e72:	6078      	str	r0, [r7, #4]
1a000e74:	687b      	ldr	r3, [r7, #4]
1a000e76:	681b      	ldr	r3, [r3, #0]
1a000e78:	461a      	mov	r2, r3
1a000e7a:	687b      	ldr	r3, [r7, #4]
1a000e7c:	791b      	ldrb	r3, [r3, #4]
1a000e7e:	061b      	lsls	r3, r3, #24
1a000e80:	4313      	orrs	r3, r2
1a000e82:	687a      	ldr	r2, [r7, #4]
1a000e84:	6912      	ldr	r2, [r2, #16]
1a000e86:	0412      	lsls	r2, r2, #16
1a000e88:	4313      	orrs	r3, r2
1a000e8a:	687a      	ldr	r2, [r7, #4]
1a000e8c:	6892      	ldr	r2, [r2, #8]
1a000e8e:	0312      	lsls	r2, r2, #12
1a000e90:	4313      	orrs	r3, r2
1a000e92:	687a      	ldr	r2, [r7, #4]
1a000e94:	68d2      	ldr	r2, [r2, #12]
1a000e96:	0212      	lsls	r2, r2, #8
1a000e98:	4313      	orrs	r3, r2
1a000e9a:	4a05      	ldr	r2, [pc, #20]	; (1a000eb0 <Chip_Clock_SetupMainPLL+0x44>)
1a000e9c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a000ea0:	6453      	str	r3, [r2, #68]	; 0x44
1a000ea2:	bf00      	nop
1a000ea4:	370c      	adds	r7, #12
1a000ea6:	46bd      	mov	sp, r7
1a000ea8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000eac:	4770      	bx	lr
1a000eae:	bf00      	nop
1a000eb0:	40050000 	.word	0x40050000

1a000eb4 <Chip_Clock_MainPLLLocked>:
1a000eb4:	b480      	push	{r7}
1a000eb6:	af00      	add	r7, sp, #0
1a000eb8:	4b06      	ldr	r3, [pc, #24]	; (1a000ed4 <Chip_Clock_MainPLLLocked+0x20>)
1a000eba:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a000ebc:	f003 0301 	and.w	r3, r3, #1
1a000ec0:	2b00      	cmp	r3, #0
1a000ec2:	bf14      	ite	ne
1a000ec4:	2301      	movne	r3, #1
1a000ec6:	2300      	moveq	r3, #0
1a000ec8:	b2db      	uxtb	r3, r3
1a000eca:	4618      	mov	r0, r3
1a000ecc:	46bd      	mov	sp, r7
1a000ece:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ed2:	4770      	bx	lr
1a000ed4:	40050000 	.word	0x40050000

1a000ed8 <Chip_SetupCoreClock>:
1a000ed8:	b590      	push	{r4, r7, lr}
1a000eda:	b08f      	sub	sp, #60	; 0x3c
1a000edc:	af00      	add	r7, sp, #0
1a000ede:	4603      	mov	r3, r0
1a000ee0:	6039      	str	r1, [r7, #0]
1a000ee2:	71fb      	strb	r3, [r7, #7]
1a000ee4:	4613      	mov	r3, r2
1a000ee6:	71bb      	strb	r3, [r7, #6]
1a000ee8:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a000eec:	62bb      	str	r3, [r7, #40]	; 0x28
1a000eee:	2300      	movs	r3, #0
1a000ef0:	633b      	str	r3, [r7, #48]	; 0x30
1a000ef2:	2300      	movs	r3, #0
1a000ef4:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000ef6:	79fb      	ldrb	r3, [r7, #7]
1a000ef8:	2b06      	cmp	r3, #6
1a000efa:	d101      	bne.n	1a000f00 <Chip_SetupCoreClock+0x28>
1a000efc:	f000 fdb2 	bl	1a001a64 <Chip_Clock_EnableCrystal>
1a000f00:	79f9      	ldrb	r1, [r7, #7]
1a000f02:	2300      	movs	r3, #0
1a000f04:	2201      	movs	r2, #1
1a000f06:	2004      	movs	r0, #4
1a000f08:	f000 ff9e 	bl	1a001e48 <Chip_Clock_SetBaseClock>
1a000f0c:	f7ff ff9e 	bl	1a000e4c <Chip_Clock_DisableMainPLL>
1a000f10:	79fb      	ldrb	r3, [r7, #7]
1a000f12:	733b      	strb	r3, [r7, #12]
1a000f14:	f107 0308 	add.w	r3, r7, #8
1a000f18:	4619      	mov	r1, r3
1a000f1a:	6838      	ldr	r0, [r7, #0]
1a000f1c:	f000 fdda 	bl	1a001ad4 <Chip_Clock_CalcMainPLLValue>
1a000f20:	683b      	ldr	r3, [r7, #0]
1a000f22:	4a3d      	ldr	r2, [pc, #244]	; (1a001018 <Chip_SetupCoreClock+0x140>)
1a000f24:	4293      	cmp	r3, r2
1a000f26:	d916      	bls.n	1a000f56 <Chip_SetupCoreClock+0x7e>
1a000f28:	68bb      	ldr	r3, [r7, #8]
1a000f2a:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a000f2e:	2b00      	cmp	r3, #0
1a000f30:	d000      	beq.n	1a000f34 <Chip_SetupCoreClock+0x5c>
1a000f32:	e7fe      	b.n	1a000f32 <Chip_SetupCoreClock+0x5a>
1a000f34:	68bb      	ldr	r3, [r7, #8]
1a000f36:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a000f3a:	2b00      	cmp	r3, #0
1a000f3c:	d006      	beq.n	1a000f4c <Chip_SetupCoreClock+0x74>
1a000f3e:	2301      	movs	r3, #1
1a000f40:	633b      	str	r3, [r7, #48]	; 0x30
1a000f42:	68bb      	ldr	r3, [r7, #8]
1a000f44:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a000f48:	60bb      	str	r3, [r7, #8]
1a000f4a:	e004      	b.n	1a000f56 <Chip_SetupCoreClock+0x7e>
1a000f4c:	2301      	movs	r3, #1
1a000f4e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000f50:	697b      	ldr	r3, [r7, #20]
1a000f52:	3301      	adds	r3, #1
1a000f54:	617b      	str	r3, [r7, #20]
1a000f56:	f107 0308 	add.w	r3, r7, #8
1a000f5a:	4618      	mov	r0, r3
1a000f5c:	f7ff ff86 	bl	1a000e6c <Chip_Clock_SetupMainPLL>
1a000f60:	bf00      	nop
1a000f62:	f7ff ffa7 	bl	1a000eb4 <Chip_Clock_MainPLLLocked>
1a000f66:	4603      	mov	r3, r0
1a000f68:	2b00      	cmp	r3, #0
1a000f6a:	d0fa      	beq.n	1a000f62 <Chip_SetupCoreClock+0x8a>
1a000f6c:	2300      	movs	r3, #0
1a000f6e:	2201      	movs	r2, #1
1a000f70:	2109      	movs	r1, #9
1a000f72:	2004      	movs	r0, #4
1a000f74:	f000 ff68 	bl	1a001e48 <Chip_Clock_SetBaseClock>
1a000f78:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a000f7a:	2b00      	cmp	r3, #0
1a000f7c:	d012      	beq.n	1a000fa4 <Chip_SetupCoreClock+0xcc>
1a000f7e:	f641 3358 	movw	r3, #7000	; 0x1b58
1a000f82:	62bb      	str	r3, [r7, #40]	; 0x28
1a000f84:	bf00      	nop
1a000f86:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000f88:	1e5a      	subs	r2, r3, #1
1a000f8a:	62ba      	str	r2, [r7, #40]	; 0x28
1a000f8c:	2b00      	cmp	r3, #0
1a000f8e:	d1fa      	bne.n	1a000f86 <Chip_SetupCoreClock+0xae>
1a000f90:	68bb      	ldr	r3, [r7, #8]
1a000f92:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a000f96:	60bb      	str	r3, [r7, #8]
1a000f98:	f107 0308 	add.w	r3, r7, #8
1a000f9c:	4618      	mov	r0, r3
1a000f9e:	f7ff ff65 	bl	1a000e6c <Chip_Clock_SetupMainPLL>
1a000fa2:	e013      	b.n	1a000fcc <Chip_SetupCoreClock+0xf4>
1a000fa4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000fa6:	2b00      	cmp	r3, #0
1a000fa8:	d010      	beq.n	1a000fcc <Chip_SetupCoreClock+0xf4>
1a000faa:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a000fae:	62bb      	str	r3, [r7, #40]	; 0x28
1a000fb0:	bf00      	nop
1a000fb2:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000fb4:	1e5a      	subs	r2, r3, #1
1a000fb6:	62ba      	str	r2, [r7, #40]	; 0x28
1a000fb8:	2b00      	cmp	r3, #0
1a000fba:	d1fa      	bne.n	1a000fb2 <Chip_SetupCoreClock+0xda>
1a000fbc:	697b      	ldr	r3, [r7, #20]
1a000fbe:	3b01      	subs	r3, #1
1a000fc0:	617b      	str	r3, [r7, #20]
1a000fc2:	f107 0308 	add.w	r3, r7, #8
1a000fc6:	4618      	mov	r0, r3
1a000fc8:	f7ff ff50 	bl	1a000e6c <Chip_Clock_SetupMainPLL>
1a000fcc:	79bb      	ldrb	r3, [r7, #6]
1a000fce:	2b00      	cmp	r3, #0
1a000fd0:	d01e      	beq.n	1a001010 <Chip_SetupCoreClock+0x138>
1a000fd2:	2300      	movs	r3, #0
1a000fd4:	637b      	str	r3, [r7, #52]	; 0x34
1a000fd6:	e018      	b.n	1a00100a <Chip_SetupCoreClock+0x132>
1a000fd8:	4a10      	ldr	r2, [pc, #64]	; (1a00101c <Chip_SetupCoreClock+0x144>)
1a000fda:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000fdc:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a000fe0:	4a0e      	ldr	r2, [pc, #56]	; (1a00101c <Chip_SetupCoreClock+0x144>)
1a000fe2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000fe4:	009b      	lsls	r3, r3, #2
1a000fe6:	4413      	add	r3, r2
1a000fe8:	7859      	ldrb	r1, [r3, #1]
1a000fea:	4a0c      	ldr	r2, [pc, #48]	; (1a00101c <Chip_SetupCoreClock+0x144>)
1a000fec:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000fee:	009b      	lsls	r3, r3, #2
1a000ff0:	4413      	add	r3, r2
1a000ff2:	789c      	ldrb	r4, [r3, #2]
1a000ff4:	4a09      	ldr	r2, [pc, #36]	; (1a00101c <Chip_SetupCoreClock+0x144>)
1a000ff6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ff8:	009b      	lsls	r3, r3, #2
1a000ffa:	4413      	add	r3, r2
1a000ffc:	78db      	ldrb	r3, [r3, #3]
1a000ffe:	4622      	mov	r2, r4
1a001000:	f000 ff22 	bl	1a001e48 <Chip_Clock_SetBaseClock>
1a001004:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001006:	3301      	adds	r3, #1
1a001008:	637b      	str	r3, [r7, #52]	; 0x34
1a00100a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00100c:	2b11      	cmp	r3, #17
1a00100e:	d9e3      	bls.n	1a000fd8 <Chip_SetupCoreClock+0x100>
1a001010:	bf00      	nop
1a001012:	373c      	adds	r7, #60	; 0x3c
1a001014:	46bd      	mov	sp, r7
1a001016:	bd90      	pop	{r4, r7, pc}
1a001018:	068e7780 	.word	0x068e7780
1a00101c:	1a00226c 	.word	0x1a00226c

1a001020 <Chip_SetupXtalClocking>:
1a001020:	b580      	push	{r7, lr}
1a001022:	af00      	add	r7, sp, #0
1a001024:	2201      	movs	r2, #1
1a001026:	4903      	ldr	r1, [pc, #12]	; (1a001034 <Chip_SetupXtalClocking+0x14>)
1a001028:	2006      	movs	r0, #6
1a00102a:	f7ff ff55 	bl	1a000ed8 <Chip_SetupCoreClock>
1a00102e:	bf00      	nop
1a001030:	bd80      	pop	{r7, pc}
1a001032:	bf00      	nop
1a001034:	0c28cb00 	.word	0x0c28cb00

1a001038 <RingBuffer_IsEmpty>:
1a001038:	b480      	push	{r7}
1a00103a:	b083      	sub	sp, #12
1a00103c:	af00      	add	r7, sp, #0
1a00103e:	6078      	str	r0, [r7, #4]
1a001040:	687b      	ldr	r3, [r7, #4]
1a001042:	330c      	adds	r3, #12
1a001044:	681a      	ldr	r2, [r3, #0]
1a001046:	687b      	ldr	r3, [r7, #4]
1a001048:	3310      	adds	r3, #16
1a00104a:	681b      	ldr	r3, [r3, #0]
1a00104c:	429a      	cmp	r2, r3
1a00104e:	bf0c      	ite	eq
1a001050:	2301      	moveq	r3, #1
1a001052:	2300      	movne	r3, #0
1a001054:	b2db      	uxtb	r3, r3
1a001056:	4618      	mov	r0, r3
1a001058:	370c      	adds	r7, #12
1a00105a:	46bd      	mov	sp, r7
1a00105c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001060:	4770      	bx	lr

1a001062 <Chip_UART_TXDisable>:
1a001062:	b480      	push	{r7}
1a001064:	b083      	sub	sp, #12
1a001066:	af00      	add	r7, sp, #0
1a001068:	6078      	str	r0, [r7, #4]
1a00106a:	687b      	ldr	r3, [r7, #4]
1a00106c:	2200      	movs	r2, #0
1a00106e:	65da      	str	r2, [r3, #92]	; 0x5c
1a001070:	bf00      	nop
1a001072:	370c      	adds	r7, #12
1a001074:	46bd      	mov	sp, r7
1a001076:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00107a:	4770      	bx	lr

1a00107c <Chip_UART_SendByte>:
1a00107c:	b480      	push	{r7}
1a00107e:	b083      	sub	sp, #12
1a001080:	af00      	add	r7, sp, #0
1a001082:	6078      	str	r0, [r7, #4]
1a001084:	460b      	mov	r3, r1
1a001086:	70fb      	strb	r3, [r7, #3]
1a001088:	78fa      	ldrb	r2, [r7, #3]
1a00108a:	687b      	ldr	r3, [r7, #4]
1a00108c:	601a      	str	r2, [r3, #0]
1a00108e:	bf00      	nop
1a001090:	370c      	adds	r7, #12
1a001092:	46bd      	mov	sp, r7
1a001094:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001098:	4770      	bx	lr

1a00109a <Chip_UART_ReadByte>:
1a00109a:	b480      	push	{r7}
1a00109c:	b083      	sub	sp, #12
1a00109e:	af00      	add	r7, sp, #0
1a0010a0:	6078      	str	r0, [r7, #4]
1a0010a2:	687b      	ldr	r3, [r7, #4]
1a0010a4:	681b      	ldr	r3, [r3, #0]
1a0010a6:	b2db      	uxtb	r3, r3
1a0010a8:	4618      	mov	r0, r3
1a0010aa:	370c      	adds	r7, #12
1a0010ac:	46bd      	mov	sp, r7
1a0010ae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010b2:	4770      	bx	lr

1a0010b4 <Chip_UART_IntDisable>:
1a0010b4:	b480      	push	{r7}
1a0010b6:	b083      	sub	sp, #12
1a0010b8:	af00      	add	r7, sp, #0
1a0010ba:	6078      	str	r0, [r7, #4]
1a0010bc:	6039      	str	r1, [r7, #0]
1a0010be:	687b      	ldr	r3, [r7, #4]
1a0010c0:	685a      	ldr	r2, [r3, #4]
1a0010c2:	683b      	ldr	r3, [r7, #0]
1a0010c4:	43db      	mvns	r3, r3
1a0010c6:	401a      	ands	r2, r3
1a0010c8:	687b      	ldr	r3, [r7, #4]
1a0010ca:	605a      	str	r2, [r3, #4]
1a0010cc:	bf00      	nop
1a0010ce:	370c      	adds	r7, #12
1a0010d0:	46bd      	mov	sp, r7
1a0010d2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010d6:	4770      	bx	lr

1a0010d8 <Chip_UART_ReadIntIDReg>:
1a0010d8:	b480      	push	{r7}
1a0010da:	b083      	sub	sp, #12
1a0010dc:	af00      	add	r7, sp, #0
1a0010de:	6078      	str	r0, [r7, #4]
1a0010e0:	687b      	ldr	r3, [r7, #4]
1a0010e2:	689b      	ldr	r3, [r3, #8]
1a0010e4:	4618      	mov	r0, r3
1a0010e6:	370c      	adds	r7, #12
1a0010e8:	46bd      	mov	sp, r7
1a0010ea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010ee:	4770      	bx	lr

1a0010f0 <Chip_UART_SetupFIFOS>:
1a0010f0:	b480      	push	{r7}
1a0010f2:	b083      	sub	sp, #12
1a0010f4:	af00      	add	r7, sp, #0
1a0010f6:	6078      	str	r0, [r7, #4]
1a0010f8:	6039      	str	r1, [r7, #0]
1a0010fa:	687b      	ldr	r3, [r7, #4]
1a0010fc:	683a      	ldr	r2, [r7, #0]
1a0010fe:	609a      	str	r2, [r3, #8]
1a001100:	bf00      	nop
1a001102:	370c      	adds	r7, #12
1a001104:	46bd      	mov	sp, r7
1a001106:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00110a:	4770      	bx	lr

1a00110c <Chip_UART_ConfigData>:
1a00110c:	b480      	push	{r7}
1a00110e:	b083      	sub	sp, #12
1a001110:	af00      	add	r7, sp, #0
1a001112:	6078      	str	r0, [r7, #4]
1a001114:	6039      	str	r1, [r7, #0]
1a001116:	687b      	ldr	r3, [r7, #4]
1a001118:	683a      	ldr	r2, [r7, #0]
1a00111a:	60da      	str	r2, [r3, #12]
1a00111c:	bf00      	nop
1a00111e:	370c      	adds	r7, #12
1a001120:	46bd      	mov	sp, r7
1a001122:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001126:	4770      	bx	lr

1a001128 <Chip_UART_EnableDivisorAccess>:
1a001128:	b480      	push	{r7}
1a00112a:	b083      	sub	sp, #12
1a00112c:	af00      	add	r7, sp, #0
1a00112e:	6078      	str	r0, [r7, #4]
1a001130:	687b      	ldr	r3, [r7, #4]
1a001132:	68db      	ldr	r3, [r3, #12]
1a001134:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a001138:	687b      	ldr	r3, [r7, #4]
1a00113a:	60da      	str	r2, [r3, #12]
1a00113c:	bf00      	nop
1a00113e:	370c      	adds	r7, #12
1a001140:	46bd      	mov	sp, r7
1a001142:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001146:	4770      	bx	lr

1a001148 <Chip_UART_DisableDivisorAccess>:
1a001148:	b480      	push	{r7}
1a00114a:	b083      	sub	sp, #12
1a00114c:	af00      	add	r7, sp, #0
1a00114e:	6078      	str	r0, [r7, #4]
1a001150:	687b      	ldr	r3, [r7, #4]
1a001152:	68db      	ldr	r3, [r3, #12]
1a001154:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a001158:	687b      	ldr	r3, [r7, #4]
1a00115a:	60da      	str	r2, [r3, #12]
1a00115c:	bf00      	nop
1a00115e:	370c      	adds	r7, #12
1a001160:	46bd      	mov	sp, r7
1a001162:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001166:	4770      	bx	lr

1a001168 <Chip_UART_SetDivisorLatches>:
1a001168:	b480      	push	{r7}
1a00116a:	b083      	sub	sp, #12
1a00116c:	af00      	add	r7, sp, #0
1a00116e:	6078      	str	r0, [r7, #4]
1a001170:	460b      	mov	r3, r1
1a001172:	70fb      	strb	r3, [r7, #3]
1a001174:	4613      	mov	r3, r2
1a001176:	70bb      	strb	r3, [r7, #2]
1a001178:	78fa      	ldrb	r2, [r7, #3]
1a00117a:	687b      	ldr	r3, [r7, #4]
1a00117c:	601a      	str	r2, [r3, #0]
1a00117e:	78ba      	ldrb	r2, [r7, #2]
1a001180:	687b      	ldr	r3, [r7, #4]
1a001182:	605a      	str	r2, [r3, #4]
1a001184:	bf00      	nop
1a001186:	370c      	adds	r7, #12
1a001188:	46bd      	mov	sp, r7
1a00118a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00118e:	4770      	bx	lr

1a001190 <Chip_UART_ReadLineStatus>:
1a001190:	b480      	push	{r7}
1a001192:	b083      	sub	sp, #12
1a001194:	af00      	add	r7, sp, #0
1a001196:	6078      	str	r0, [r7, #4]
1a001198:	687b      	ldr	r3, [r7, #4]
1a00119a:	695b      	ldr	r3, [r3, #20]
1a00119c:	4618      	mov	r0, r3
1a00119e:	370c      	adds	r7, #12
1a0011a0:	46bd      	mov	sp, r7
1a0011a2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011a6:	4770      	bx	lr

1a0011a8 <Chip_UART_SetAutoBaudReg>:
1a0011a8:	b480      	push	{r7}
1a0011aa:	b083      	sub	sp, #12
1a0011ac:	af00      	add	r7, sp, #0
1a0011ae:	6078      	str	r0, [r7, #4]
1a0011b0:	6039      	str	r1, [r7, #0]
1a0011b2:	687b      	ldr	r3, [r7, #4]
1a0011b4:	6a1a      	ldr	r2, [r3, #32]
1a0011b6:	683b      	ldr	r3, [r7, #0]
1a0011b8:	431a      	orrs	r2, r3
1a0011ba:	687b      	ldr	r3, [r7, #4]
1a0011bc:	621a      	str	r2, [r3, #32]
1a0011be:	bf00      	nop
1a0011c0:	370c      	adds	r7, #12
1a0011c2:	46bd      	mov	sp, r7
1a0011c4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011c8:	4770      	bx	lr
1a0011ca:	Address 0x000000001a0011ca is out of bounds.


1a0011cc <Chip_UART_GetIndex>:
1a0011cc:	b480      	push	{r7}
1a0011ce:	b085      	sub	sp, #20
1a0011d0:	af00      	add	r7, sp, #0
1a0011d2:	6078      	str	r0, [r7, #4]
1a0011d4:	687b      	ldr	r3, [r7, #4]
1a0011d6:	60fb      	str	r3, [r7, #12]
1a0011d8:	68fb      	ldr	r3, [r7, #12]
1a0011da:	4a10      	ldr	r2, [pc, #64]	; (1a00121c <Chip_UART_GetIndex+0x50>)
1a0011dc:	4293      	cmp	r3, r2
1a0011de:	d00f      	beq.n	1a001200 <Chip_UART_GetIndex+0x34>
1a0011e0:	4a0e      	ldr	r2, [pc, #56]	; (1a00121c <Chip_UART_GetIndex+0x50>)
1a0011e2:	4293      	cmp	r3, r2
1a0011e4:	d803      	bhi.n	1a0011ee <Chip_UART_GetIndex+0x22>
1a0011e6:	4a0e      	ldr	r2, [pc, #56]	; (1a001220 <Chip_UART_GetIndex+0x54>)
1a0011e8:	4293      	cmp	r3, r2
1a0011ea:	d007      	beq.n	1a0011fc <Chip_UART_GetIndex+0x30>
1a0011ec:	e00e      	b.n	1a00120c <Chip_UART_GetIndex+0x40>
1a0011ee:	4a0d      	ldr	r2, [pc, #52]	; (1a001224 <Chip_UART_GetIndex+0x58>)
1a0011f0:	4293      	cmp	r3, r2
1a0011f2:	d007      	beq.n	1a001204 <Chip_UART_GetIndex+0x38>
1a0011f4:	4a0c      	ldr	r2, [pc, #48]	; (1a001228 <Chip_UART_GetIndex+0x5c>)
1a0011f6:	4293      	cmp	r3, r2
1a0011f8:	d006      	beq.n	1a001208 <Chip_UART_GetIndex+0x3c>
1a0011fa:	e007      	b.n	1a00120c <Chip_UART_GetIndex+0x40>
1a0011fc:	2300      	movs	r3, #0
1a0011fe:	e006      	b.n	1a00120e <Chip_UART_GetIndex+0x42>
1a001200:	2301      	movs	r3, #1
1a001202:	e004      	b.n	1a00120e <Chip_UART_GetIndex+0x42>
1a001204:	2302      	movs	r3, #2
1a001206:	e002      	b.n	1a00120e <Chip_UART_GetIndex+0x42>
1a001208:	2303      	movs	r3, #3
1a00120a:	e000      	b.n	1a00120e <Chip_UART_GetIndex+0x42>
1a00120c:	2300      	movs	r3, #0
1a00120e:	4618      	mov	r0, r3
1a001210:	3714      	adds	r7, #20
1a001212:	46bd      	mov	sp, r7
1a001214:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001218:	4770      	bx	lr
1a00121a:	bf00      	nop
1a00121c:	40082000 	.word	0x40082000
1a001220:	40081000 	.word	0x40081000
1a001224:	400c1000 	.word	0x400c1000
1a001228:	400c2000 	.word	0x400c2000

1a00122c <Chip_UART_ABIntHandler>:
1a00122c:	b580      	push	{r7, lr}
1a00122e:	b082      	sub	sp, #8
1a001230:	af00      	add	r7, sp, #0
1a001232:	6078      	str	r0, [r7, #4]
1a001234:	6878      	ldr	r0, [r7, #4]
1a001236:	f7ff ff4f 	bl	1a0010d8 <Chip_UART_ReadIntIDReg>
1a00123a:	4603      	mov	r3, r0
1a00123c:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a001240:	2b00      	cmp	r3, #0
1a001242:	d011      	beq.n	1a001268 <Chip_UART_ABIntHandler+0x3c>
1a001244:	f44f 7180 	mov.w	r1, #256	; 0x100
1a001248:	6878      	ldr	r0, [r7, #4]
1a00124a:	f7ff ffad 	bl	1a0011a8 <Chip_UART_SetAutoBaudReg>
1a00124e:	f44f 7180 	mov.w	r1, #256	; 0x100
1a001252:	6878      	ldr	r0, [r7, #4]
1a001254:	f7ff ff2e 	bl	1a0010b4 <Chip_UART_IntDisable>
1a001258:	4b0e      	ldr	r3, [pc, #56]	; (1a001294 <Chip_UART_ABIntHandler+0x68>)
1a00125a:	781b      	ldrb	r3, [r3, #0]
1a00125c:	b2db      	uxtb	r3, r3
1a00125e:	2b00      	cmp	r3, #0
1a001260:	d102      	bne.n	1a001268 <Chip_UART_ABIntHandler+0x3c>
1a001262:	4b0c      	ldr	r3, [pc, #48]	; (1a001294 <Chip_UART_ABIntHandler+0x68>)
1a001264:	2201      	movs	r2, #1
1a001266:	701a      	strb	r2, [r3, #0]
1a001268:	6878      	ldr	r0, [r7, #4]
1a00126a:	f7ff ff35 	bl	1a0010d8 <Chip_UART_ReadIntIDReg>
1a00126e:	4603      	mov	r3, r0
1a001270:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a001274:	2b00      	cmp	r3, #0
1a001276:	d009      	beq.n	1a00128c <Chip_UART_ABIntHandler+0x60>
1a001278:	f44f 7100 	mov.w	r1, #512	; 0x200
1a00127c:	6878      	ldr	r0, [r7, #4]
1a00127e:	f7ff ff93 	bl	1a0011a8 <Chip_UART_SetAutoBaudReg>
1a001282:	f44f 7100 	mov.w	r1, #512	; 0x200
1a001286:	6878      	ldr	r0, [r7, #4]
1a001288:	f7ff ff14 	bl	1a0010b4 <Chip_UART_IntDisable>
1a00128c:	bf00      	nop
1a00128e:	3708      	adds	r7, #8
1a001290:	46bd      	mov	sp, r7
1a001292:	bd80      	pop	{r7, pc}
1a001294:	1000043b 	.word	0x1000043b

1a001298 <Chip_UART_Init>:
1a001298:	b580      	push	{r7, lr}
1a00129a:	b084      	sub	sp, #16
1a00129c:	af00      	add	r7, sp, #0
1a00129e:	6078      	str	r0, [r7, #4]
1a0012a0:	68fb      	ldr	r3, [r7, #12]
1a0012a2:	6878      	ldr	r0, [r7, #4]
1a0012a4:	f7ff ff92 	bl	1a0011cc <Chip_UART_GetIndex>
1a0012a8:	4602      	mov	r2, r0
1a0012aa:	4b1b      	ldr	r3, [pc, #108]	; (1a001318 <Chip_UART_Init+0x80>)
1a0012ac:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a0012b0:	2301      	movs	r3, #1
1a0012b2:	2201      	movs	r2, #1
1a0012b4:	2101      	movs	r1, #1
1a0012b6:	f000 fe3b 	bl	1a001f30 <Chip_Clock_EnableOpts>
1a0012ba:	2107      	movs	r1, #7
1a0012bc:	6878      	ldr	r0, [r7, #4]
1a0012be:	f7ff ff17 	bl	1a0010f0 <Chip_UART_SetupFIFOS>
1a0012c2:	6878      	ldr	r0, [r7, #4]
1a0012c4:	f7ff fecd 	bl	1a001062 <Chip_UART_TXDisable>
1a0012c8:	687b      	ldr	r3, [r7, #4]
1a0012ca:	2200      	movs	r2, #0
1a0012cc:	605a      	str	r2, [r3, #4]
1a0012ce:	687b      	ldr	r3, [r7, #4]
1a0012d0:	2200      	movs	r2, #0
1a0012d2:	60da      	str	r2, [r3, #12]
1a0012d4:	687b      	ldr	r3, [r7, #4]
1a0012d6:	2200      	movs	r2, #0
1a0012d8:	621a      	str	r2, [r3, #32]
1a0012da:	687b      	ldr	r3, [r7, #4]
1a0012dc:	2200      	movs	r2, #0
1a0012de:	64da      	str	r2, [r3, #76]	; 0x4c
1a0012e0:	687b      	ldr	r3, [r7, #4]
1a0012e2:	2200      	movs	r2, #0
1a0012e4:	655a      	str	r2, [r3, #84]	; 0x54
1a0012e6:	687b      	ldr	r3, [r7, #4]
1a0012e8:	2200      	movs	r2, #0
1a0012ea:	651a      	str	r2, [r3, #80]	; 0x50
1a0012ec:	687b      	ldr	r3, [r7, #4]
1a0012ee:	4a0b      	ldr	r2, [pc, #44]	; (1a00131c <Chip_UART_Init+0x84>)
1a0012f0:	4293      	cmp	r3, r2
1a0012f2:	d105      	bne.n	1a001300 <Chip_UART_Init+0x68>
1a0012f4:	687b      	ldr	r3, [r7, #4]
1a0012f6:	2200      	movs	r2, #0
1a0012f8:	611a      	str	r2, [r3, #16]
1a0012fa:	687b      	ldr	r3, [r7, #4]
1a0012fc:	699b      	ldr	r3, [r3, #24]
1a0012fe:	60fb      	str	r3, [r7, #12]
1a001300:	2103      	movs	r1, #3
1a001302:	6878      	ldr	r0, [r7, #4]
1a001304:	f7ff ff02 	bl	1a00110c <Chip_UART_ConfigData>
1a001308:	687b      	ldr	r3, [r7, #4]
1a00130a:	2210      	movs	r2, #16
1a00130c:	629a      	str	r2, [r3, #40]	; 0x28
1a00130e:	bf00      	nop
1a001310:	3710      	adds	r7, #16
1a001312:	46bd      	mov	sp, r7
1a001314:	bd80      	pop	{r7, pc}
1a001316:	bf00      	nop
1a001318:	1a0022b4 	.word	0x1a0022b4
1a00131c:	40082000 	.word	0x40082000

1a001320 <Chip_UART_SetBaud>:
1a001320:	b580      	push	{r7, lr}
1a001322:	b086      	sub	sp, #24
1a001324:	af00      	add	r7, sp, #0
1a001326:	6078      	str	r0, [r7, #4]
1a001328:	6039      	str	r1, [r7, #0]
1a00132a:	6878      	ldr	r0, [r7, #4]
1a00132c:	f7ff ff4e 	bl	1a0011cc <Chip_UART_GetIndex>
1a001330:	4602      	mov	r2, r0
1a001332:	4b16      	ldr	r3, [pc, #88]	; (1a00138c <Chip_UART_SetBaud+0x6c>)
1a001334:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a001338:	4618      	mov	r0, r3
1a00133a:	f000 fe67 	bl	1a00200c <Chip_Clock_GetRate>
1a00133e:	6178      	str	r0, [r7, #20]
1a001340:	683b      	ldr	r3, [r7, #0]
1a001342:	011b      	lsls	r3, r3, #4
1a001344:	697a      	ldr	r2, [r7, #20]
1a001346:	fbb2 f3f3 	udiv	r3, r2, r3
1a00134a:	613b      	str	r3, [r7, #16]
1a00134c:	693b      	ldr	r3, [r7, #16]
1a00134e:	0a1b      	lsrs	r3, r3, #8
1a001350:	60fb      	str	r3, [r7, #12]
1a001352:	68fb      	ldr	r3, [r7, #12]
1a001354:	021b      	lsls	r3, r3, #8
1a001356:	693a      	ldr	r2, [r7, #16]
1a001358:	1ad3      	subs	r3, r2, r3
1a00135a:	60bb      	str	r3, [r7, #8]
1a00135c:	6878      	ldr	r0, [r7, #4]
1a00135e:	f7ff fee3 	bl	1a001128 <Chip_UART_EnableDivisorAccess>
1a001362:	68bb      	ldr	r3, [r7, #8]
1a001364:	b2db      	uxtb	r3, r3
1a001366:	68fa      	ldr	r2, [r7, #12]
1a001368:	b2d2      	uxtb	r2, r2
1a00136a:	4619      	mov	r1, r3
1a00136c:	6878      	ldr	r0, [r7, #4]
1a00136e:	f7ff fefb 	bl	1a001168 <Chip_UART_SetDivisorLatches>
1a001372:	6878      	ldr	r0, [r7, #4]
1a001374:	f7ff fee8 	bl	1a001148 <Chip_UART_DisableDivisorAccess>
1a001378:	697a      	ldr	r2, [r7, #20]
1a00137a:	693b      	ldr	r3, [r7, #16]
1a00137c:	fbb2 f3f3 	udiv	r3, r2, r3
1a001380:	091b      	lsrs	r3, r3, #4
1a001382:	4618      	mov	r0, r3
1a001384:	3718      	adds	r7, #24
1a001386:	46bd      	mov	sp, r7
1a001388:	bd80      	pop	{r7, pc}
1a00138a:	bf00      	nop
1a00138c:	1a0022bc 	.word	0x1a0022bc

1a001390 <Chip_UART_RXIntHandlerRB>:
1a001390:	b580      	push	{r7, lr}
1a001392:	b084      	sub	sp, #16
1a001394:	af00      	add	r7, sp, #0
1a001396:	6078      	str	r0, [r7, #4]
1a001398:	6039      	str	r1, [r7, #0]
1a00139a:	e00a      	b.n	1a0013b2 <Chip_UART_RXIntHandlerRB+0x22>
1a00139c:	6878      	ldr	r0, [r7, #4]
1a00139e:	f7ff fe7c 	bl	1a00109a <Chip_UART_ReadByte>
1a0013a2:	4603      	mov	r3, r0
1a0013a4:	73fb      	strb	r3, [r7, #15]
1a0013a6:	f107 030f 	add.w	r3, r7, #15
1a0013aa:	4619      	mov	r1, r3
1a0013ac:	6838      	ldr	r0, [r7, #0]
1a0013ae:	f000 f932 	bl	1a001616 <RingBuffer_Insert>
1a0013b2:	6878      	ldr	r0, [r7, #4]
1a0013b4:	f7ff feec 	bl	1a001190 <Chip_UART_ReadLineStatus>
1a0013b8:	4603      	mov	r3, r0
1a0013ba:	f003 0301 	and.w	r3, r3, #1
1a0013be:	2b00      	cmp	r3, #0
1a0013c0:	d1ec      	bne.n	1a00139c <Chip_UART_RXIntHandlerRB+0xc>
1a0013c2:	bf00      	nop
1a0013c4:	3710      	adds	r7, #16
1a0013c6:	46bd      	mov	sp, r7
1a0013c8:	bd80      	pop	{r7, pc}

1a0013ca <Chip_UART_TXIntHandlerRB>:
1a0013ca:	b580      	push	{r7, lr}
1a0013cc:	b084      	sub	sp, #16
1a0013ce:	af00      	add	r7, sp, #0
1a0013d0:	6078      	str	r0, [r7, #4]
1a0013d2:	6039      	str	r1, [r7, #0]
1a0013d4:	e004      	b.n	1a0013e0 <Chip_UART_TXIntHandlerRB+0x16>
1a0013d6:	7bfb      	ldrb	r3, [r7, #15]
1a0013d8:	4619      	mov	r1, r3
1a0013da:	6878      	ldr	r0, [r7, #4]
1a0013dc:	f7ff fe4e 	bl	1a00107c <Chip_UART_SendByte>
1a0013e0:	6878      	ldr	r0, [r7, #4]
1a0013e2:	f7ff fed5 	bl	1a001190 <Chip_UART_ReadLineStatus>
1a0013e6:	4603      	mov	r3, r0
1a0013e8:	f003 0320 	and.w	r3, r3, #32
1a0013ec:	2b00      	cmp	r3, #0
1a0013ee:	d008      	beq.n	1a001402 <Chip_UART_TXIntHandlerRB+0x38>
1a0013f0:	f107 030f 	add.w	r3, r7, #15
1a0013f4:	4619      	mov	r1, r3
1a0013f6:	6838      	ldr	r0, [r7, #0]
1a0013f8:	f000 f93b 	bl	1a001672 <RingBuffer_Pop>
1a0013fc:	4603      	mov	r3, r0
1a0013fe:	2b00      	cmp	r3, #0
1a001400:	d1e9      	bne.n	1a0013d6 <Chip_UART_TXIntHandlerRB+0xc>
1a001402:	6838      	ldr	r0, [r7, #0]
1a001404:	f7ff fe18 	bl	1a001038 <RingBuffer_IsEmpty>
1a001408:	4603      	mov	r3, r0
1a00140a:	2b00      	cmp	r3, #0
1a00140c:	d003      	beq.n	1a001416 <Chip_UART_TXIntHandlerRB+0x4c>
1a00140e:	2102      	movs	r1, #2
1a001410:	6878      	ldr	r0, [r7, #4]
1a001412:	f7ff fe4f 	bl	1a0010b4 <Chip_UART_IntDisable>
1a001416:	bf00      	nop
1a001418:	3710      	adds	r7, #16
1a00141a:	46bd      	mov	sp, r7
1a00141c:	bd80      	pop	{r7, pc}

1a00141e <Chip_UART_IRQRBHandler>:
1a00141e:	b580      	push	{r7, lr}
1a001420:	b084      	sub	sp, #16
1a001422:	af00      	add	r7, sp, #0
1a001424:	60f8      	str	r0, [r7, #12]
1a001426:	60b9      	str	r1, [r7, #8]
1a001428:	607a      	str	r2, [r7, #4]
1a00142a:	68fb      	ldr	r3, [r7, #12]
1a00142c:	685b      	ldr	r3, [r3, #4]
1a00142e:	f003 0302 	and.w	r3, r3, #2
1a001432:	2b00      	cmp	r3, #0
1a001434:	d00d      	beq.n	1a001452 <Chip_UART_IRQRBHandler+0x34>
1a001436:	6879      	ldr	r1, [r7, #4]
1a001438:	68f8      	ldr	r0, [r7, #12]
1a00143a:	f7ff ffc6 	bl	1a0013ca <Chip_UART_TXIntHandlerRB>
1a00143e:	6878      	ldr	r0, [r7, #4]
1a001440:	f7ff fdfa 	bl	1a001038 <RingBuffer_IsEmpty>
1a001444:	4603      	mov	r3, r0
1a001446:	2b00      	cmp	r3, #0
1a001448:	d003      	beq.n	1a001452 <Chip_UART_IRQRBHandler+0x34>
1a00144a:	2102      	movs	r1, #2
1a00144c:	68f8      	ldr	r0, [r7, #12]
1a00144e:	f7ff fe31 	bl	1a0010b4 <Chip_UART_IntDisable>
1a001452:	68b9      	ldr	r1, [r7, #8]
1a001454:	68f8      	ldr	r0, [r7, #12]
1a001456:	f7ff ff9b 	bl	1a001390 <Chip_UART_RXIntHandlerRB>
1a00145a:	68f8      	ldr	r0, [r7, #12]
1a00145c:	f7ff fee6 	bl	1a00122c <Chip_UART_ABIntHandler>
1a001460:	bf00      	nop
1a001462:	3710      	adds	r7, #16
1a001464:	46bd      	mov	sp, r7
1a001466:	bd80      	pop	{r7, pc}

1a001468 <Chip_TIMER_Enable>:
1a001468:	b480      	push	{r7}
1a00146a:	b083      	sub	sp, #12
1a00146c:	af00      	add	r7, sp, #0
1a00146e:	6078      	str	r0, [r7, #4]
1a001470:	687b      	ldr	r3, [r7, #4]
1a001472:	685b      	ldr	r3, [r3, #4]
1a001474:	f043 0201 	orr.w	r2, r3, #1
1a001478:	687b      	ldr	r3, [r7, #4]
1a00147a:	605a      	str	r2, [r3, #4]
1a00147c:	bf00      	nop
1a00147e:	370c      	adds	r7, #12
1a001480:	46bd      	mov	sp, r7
1a001482:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001486:	4770      	bx	lr

1a001488 <Chip_TIMER_ReadCount>:
1a001488:	b480      	push	{r7}
1a00148a:	b083      	sub	sp, #12
1a00148c:	af00      	add	r7, sp, #0
1a00148e:	6078      	str	r0, [r7, #4]
1a001490:	687b      	ldr	r3, [r7, #4]
1a001492:	689b      	ldr	r3, [r3, #8]
1a001494:	4618      	mov	r0, r3
1a001496:	370c      	adds	r7, #12
1a001498:	46bd      	mov	sp, r7
1a00149a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00149e:	4770      	bx	lr

1a0014a0 <Chip_TIMER_PrescaleSet>:
1a0014a0:	b480      	push	{r7}
1a0014a2:	b083      	sub	sp, #12
1a0014a4:	af00      	add	r7, sp, #0
1a0014a6:	6078      	str	r0, [r7, #4]
1a0014a8:	6039      	str	r1, [r7, #0]
1a0014aa:	687b      	ldr	r3, [r7, #4]
1a0014ac:	683a      	ldr	r2, [r7, #0]
1a0014ae:	60da      	str	r2, [r3, #12]
1a0014b0:	bf00      	nop
1a0014b2:	370c      	adds	r7, #12
1a0014b4:	46bd      	mov	sp, r7
1a0014b6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0014ba:	4770      	bx	lr

1a0014bc <StopWatch_Init>:
1a0014bc:	b580      	push	{r7, lr}
1a0014be:	b082      	sub	sp, #8
1a0014c0:	af00      	add	r7, sp, #0
1a0014c2:	2308      	movs	r3, #8
1a0014c4:	607b      	str	r3, [r7, #4]
1a0014c6:	4814      	ldr	r0, [pc, #80]	; (1a001518 <StopWatch_Init+0x5c>)
1a0014c8:	f000 fe22 	bl	1a002110 <Chip_TIMER_Init>
1a0014cc:	687b      	ldr	r3, [r7, #4]
1a0014ce:	3b01      	subs	r3, #1
1a0014d0:	4619      	mov	r1, r3
1a0014d2:	4811      	ldr	r0, [pc, #68]	; (1a001518 <StopWatch_Init+0x5c>)
1a0014d4:	f7ff ffe4 	bl	1a0014a0 <Chip_TIMER_PrescaleSet>
1a0014d8:	480f      	ldr	r0, [pc, #60]	; (1a001518 <StopWatch_Init+0x5c>)
1a0014da:	f7ff ffc5 	bl	1a001468 <Chip_TIMER_Enable>
1a0014de:	2084      	movs	r0, #132	; 0x84
1a0014e0:	f000 fd94 	bl	1a00200c <Chip_Clock_GetRate>
1a0014e4:	4602      	mov	r2, r0
1a0014e6:	687b      	ldr	r3, [r7, #4]
1a0014e8:	fbb2 f3f3 	udiv	r3, r2, r3
1a0014ec:	4a0b      	ldr	r2, [pc, #44]	; (1a00151c <StopWatch_Init+0x60>)
1a0014ee:	6013      	str	r3, [r2, #0]
1a0014f0:	4b0a      	ldr	r3, [pc, #40]	; (1a00151c <StopWatch_Init+0x60>)
1a0014f2:	681b      	ldr	r3, [r3, #0]
1a0014f4:	4a0a      	ldr	r2, [pc, #40]	; (1a001520 <StopWatch_Init+0x64>)
1a0014f6:	fba2 2303 	umull	r2, r3, r2, r3
1a0014fa:	099b      	lsrs	r3, r3, #6
1a0014fc:	4a09      	ldr	r2, [pc, #36]	; (1a001524 <StopWatch_Init+0x68>)
1a0014fe:	6013      	str	r3, [r2, #0]
1a001500:	4b06      	ldr	r3, [pc, #24]	; (1a00151c <StopWatch_Init+0x60>)
1a001502:	681b      	ldr	r3, [r3, #0]
1a001504:	4a08      	ldr	r2, [pc, #32]	; (1a001528 <StopWatch_Init+0x6c>)
1a001506:	fba2 2303 	umull	r2, r3, r2, r3
1a00150a:	0c9b      	lsrs	r3, r3, #18
1a00150c:	4a07      	ldr	r2, [pc, #28]	; (1a00152c <StopWatch_Init+0x70>)
1a00150e:	6013      	str	r3, [r2, #0]
1a001510:	bf00      	nop
1a001512:	3708      	adds	r7, #8
1a001514:	46bd      	mov	sp, r7
1a001516:	bd80      	pop	{r7, pc}
1a001518:	40084000 	.word	0x40084000
1a00151c:	1000043c 	.word	0x1000043c
1a001520:	10624dd3 	.word	0x10624dd3
1a001524:	10000440 	.word	0x10000440
1a001528:	431bde83 	.word	0x431bde83
1a00152c:	10000444 	.word	0x10000444

1a001530 <StopWatch_Start>:
1a001530:	b580      	push	{r7, lr}
1a001532:	af00      	add	r7, sp, #0
1a001534:	4802      	ldr	r0, [pc, #8]	; (1a001540 <StopWatch_Start+0x10>)
1a001536:	f7ff ffa7 	bl	1a001488 <Chip_TIMER_ReadCount>
1a00153a:	4603      	mov	r3, r0
1a00153c:	4618      	mov	r0, r3
1a00153e:	bd80      	pop	{r7, pc}
1a001540:	40084000 	.word	0x40084000

1a001544 <StopWatch_MsToTicks>:
1a001544:	b480      	push	{r7}
1a001546:	b083      	sub	sp, #12
1a001548:	af00      	add	r7, sp, #0
1a00154a:	6078      	str	r0, [r7, #4]
1a00154c:	4b05      	ldr	r3, [pc, #20]	; (1a001564 <StopWatch_MsToTicks+0x20>)
1a00154e:	681b      	ldr	r3, [r3, #0]
1a001550:	687a      	ldr	r2, [r7, #4]
1a001552:	fb02 f303 	mul.w	r3, r2, r3
1a001556:	4618      	mov	r0, r3
1a001558:	370c      	adds	r7, #12
1a00155a:	46bd      	mov	sp, r7
1a00155c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001560:	4770      	bx	lr
1a001562:	bf00      	nop
1a001564:	10000440 	.word	0x10000440

1a001568 <RingBuffer_GetCount>:
1a001568:	b480      	push	{r7}
1a00156a:	b083      	sub	sp, #12
1a00156c:	af00      	add	r7, sp, #0
1a00156e:	6078      	str	r0, [r7, #4]
1a001570:	687b      	ldr	r3, [r7, #4]
1a001572:	330c      	adds	r3, #12
1a001574:	681a      	ldr	r2, [r3, #0]
1a001576:	687b      	ldr	r3, [r7, #4]
1a001578:	3310      	adds	r3, #16
1a00157a:	681b      	ldr	r3, [r3, #0]
1a00157c:	1ad3      	subs	r3, r2, r3
1a00157e:	4618      	mov	r0, r3
1a001580:	370c      	adds	r7, #12
1a001582:	46bd      	mov	sp, r7
1a001584:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001588:	4770      	bx	lr

1a00158a <RingBuffer_IsFull>:
1a00158a:	b580      	push	{r7, lr}
1a00158c:	b082      	sub	sp, #8
1a00158e:	af00      	add	r7, sp, #0
1a001590:	6078      	str	r0, [r7, #4]
1a001592:	6878      	ldr	r0, [r7, #4]
1a001594:	f7ff ffe8 	bl	1a001568 <RingBuffer_GetCount>
1a001598:	4602      	mov	r2, r0
1a00159a:	687b      	ldr	r3, [r7, #4]
1a00159c:	685b      	ldr	r3, [r3, #4]
1a00159e:	429a      	cmp	r2, r3
1a0015a0:	bfac      	ite	ge
1a0015a2:	2301      	movge	r3, #1
1a0015a4:	2300      	movlt	r3, #0
1a0015a6:	b2db      	uxtb	r3, r3
1a0015a8:	4618      	mov	r0, r3
1a0015aa:	3708      	adds	r7, #8
1a0015ac:	46bd      	mov	sp, r7
1a0015ae:	bd80      	pop	{r7, pc}

1a0015b0 <RingBuffer_IsEmpty>:
1a0015b0:	b480      	push	{r7}
1a0015b2:	b083      	sub	sp, #12
1a0015b4:	af00      	add	r7, sp, #0
1a0015b6:	6078      	str	r0, [r7, #4]
1a0015b8:	687b      	ldr	r3, [r7, #4]
1a0015ba:	330c      	adds	r3, #12
1a0015bc:	681a      	ldr	r2, [r3, #0]
1a0015be:	687b      	ldr	r3, [r7, #4]
1a0015c0:	3310      	adds	r3, #16
1a0015c2:	681b      	ldr	r3, [r3, #0]
1a0015c4:	429a      	cmp	r2, r3
1a0015c6:	bf0c      	ite	eq
1a0015c8:	2301      	moveq	r3, #1
1a0015ca:	2300      	movne	r3, #0
1a0015cc:	b2db      	uxtb	r3, r3
1a0015ce:	4618      	mov	r0, r3
1a0015d0:	370c      	adds	r7, #12
1a0015d2:	46bd      	mov	sp, r7
1a0015d4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015d8:	4770      	bx	lr

1a0015da <RingBuffer_Init>:
1a0015da:	b480      	push	{r7}
1a0015dc:	b085      	sub	sp, #20
1a0015de:	af00      	add	r7, sp, #0
1a0015e0:	60f8      	str	r0, [r7, #12]
1a0015e2:	60b9      	str	r1, [r7, #8]
1a0015e4:	607a      	str	r2, [r7, #4]
1a0015e6:	603b      	str	r3, [r7, #0]
1a0015e8:	68fb      	ldr	r3, [r7, #12]
1a0015ea:	68ba      	ldr	r2, [r7, #8]
1a0015ec:	601a      	str	r2, [r3, #0]
1a0015ee:	68fb      	ldr	r3, [r7, #12]
1a0015f0:	683a      	ldr	r2, [r7, #0]
1a0015f2:	605a      	str	r2, [r3, #4]
1a0015f4:	68fb      	ldr	r3, [r7, #12]
1a0015f6:	687a      	ldr	r2, [r7, #4]
1a0015f8:	609a      	str	r2, [r3, #8]
1a0015fa:	68fb      	ldr	r3, [r7, #12]
1a0015fc:	2200      	movs	r2, #0
1a0015fe:	611a      	str	r2, [r3, #16]
1a001600:	68fb      	ldr	r3, [r7, #12]
1a001602:	691a      	ldr	r2, [r3, #16]
1a001604:	68fb      	ldr	r3, [r7, #12]
1a001606:	60da      	str	r2, [r3, #12]
1a001608:	2301      	movs	r3, #1
1a00160a:	4618      	mov	r0, r3
1a00160c:	3714      	adds	r7, #20
1a00160e:	46bd      	mov	sp, r7
1a001610:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001614:	4770      	bx	lr

1a001616 <RingBuffer_Insert>:
1a001616:	b580      	push	{r7, lr}
1a001618:	b084      	sub	sp, #16
1a00161a:	af00      	add	r7, sp, #0
1a00161c:	6078      	str	r0, [r7, #4]
1a00161e:	6039      	str	r1, [r7, #0]
1a001620:	687b      	ldr	r3, [r7, #4]
1a001622:	681b      	ldr	r3, [r3, #0]
1a001624:	60fb      	str	r3, [r7, #12]
1a001626:	6878      	ldr	r0, [r7, #4]
1a001628:	f7ff ffaf 	bl	1a00158a <RingBuffer_IsFull>
1a00162c:	4603      	mov	r3, r0
1a00162e:	2b00      	cmp	r3, #0
1a001630:	d001      	beq.n	1a001636 <RingBuffer_Insert+0x20>
1a001632:	2300      	movs	r3, #0
1a001634:	e019      	b.n	1a00166a <RingBuffer_Insert+0x54>
1a001636:	687b      	ldr	r3, [r7, #4]
1a001638:	68db      	ldr	r3, [r3, #12]
1a00163a:	687a      	ldr	r2, [r7, #4]
1a00163c:	6852      	ldr	r2, [r2, #4]
1a00163e:	3a01      	subs	r2, #1
1a001640:	4013      	ands	r3, r2
1a001642:	687a      	ldr	r2, [r7, #4]
1a001644:	6892      	ldr	r2, [r2, #8]
1a001646:	fb02 f303 	mul.w	r3, r2, r3
1a00164a:	68fa      	ldr	r2, [r7, #12]
1a00164c:	4413      	add	r3, r2
1a00164e:	60fb      	str	r3, [r7, #12]
1a001650:	687b      	ldr	r3, [r7, #4]
1a001652:	689b      	ldr	r3, [r3, #8]
1a001654:	461a      	mov	r2, r3
1a001656:	6839      	ldr	r1, [r7, #0]
1a001658:	68f8      	ldr	r0, [r7, #12]
1a00165a:	f000 fd69 	bl	1a002130 <memcpy>
1a00165e:	687b      	ldr	r3, [r7, #4]
1a001660:	68db      	ldr	r3, [r3, #12]
1a001662:	1c5a      	adds	r2, r3, #1
1a001664:	687b      	ldr	r3, [r7, #4]
1a001666:	60da      	str	r2, [r3, #12]
1a001668:	2301      	movs	r3, #1
1a00166a:	4618      	mov	r0, r3
1a00166c:	3710      	adds	r7, #16
1a00166e:	46bd      	mov	sp, r7
1a001670:	bd80      	pop	{r7, pc}

1a001672 <RingBuffer_Pop>:
1a001672:	b580      	push	{r7, lr}
1a001674:	b084      	sub	sp, #16
1a001676:	af00      	add	r7, sp, #0
1a001678:	6078      	str	r0, [r7, #4]
1a00167a:	6039      	str	r1, [r7, #0]
1a00167c:	687b      	ldr	r3, [r7, #4]
1a00167e:	681b      	ldr	r3, [r3, #0]
1a001680:	60fb      	str	r3, [r7, #12]
1a001682:	6878      	ldr	r0, [r7, #4]
1a001684:	f7ff ff94 	bl	1a0015b0 <RingBuffer_IsEmpty>
1a001688:	4603      	mov	r3, r0
1a00168a:	2b00      	cmp	r3, #0
1a00168c:	d001      	beq.n	1a001692 <RingBuffer_Pop+0x20>
1a00168e:	2300      	movs	r3, #0
1a001690:	e019      	b.n	1a0016c6 <RingBuffer_Pop+0x54>
1a001692:	687b      	ldr	r3, [r7, #4]
1a001694:	691b      	ldr	r3, [r3, #16]
1a001696:	687a      	ldr	r2, [r7, #4]
1a001698:	6852      	ldr	r2, [r2, #4]
1a00169a:	3a01      	subs	r2, #1
1a00169c:	4013      	ands	r3, r2
1a00169e:	687a      	ldr	r2, [r7, #4]
1a0016a0:	6892      	ldr	r2, [r2, #8]
1a0016a2:	fb02 f303 	mul.w	r3, r2, r3
1a0016a6:	68fa      	ldr	r2, [r7, #12]
1a0016a8:	4413      	add	r3, r2
1a0016aa:	60fb      	str	r3, [r7, #12]
1a0016ac:	687b      	ldr	r3, [r7, #4]
1a0016ae:	689b      	ldr	r3, [r3, #8]
1a0016b0:	461a      	mov	r2, r3
1a0016b2:	68f9      	ldr	r1, [r7, #12]
1a0016b4:	6838      	ldr	r0, [r7, #0]
1a0016b6:	f000 fd3b 	bl	1a002130 <memcpy>
1a0016ba:	687b      	ldr	r3, [r7, #4]
1a0016bc:	691b      	ldr	r3, [r3, #16]
1a0016be:	1c5a      	adds	r2, r3, #1
1a0016c0:	687b      	ldr	r3, [r7, #4]
1a0016c2:	611a      	str	r2, [r3, #16]
1a0016c4:	2301      	movs	r3, #1
1a0016c6:	4618      	mov	r0, r3
1a0016c8:	3710      	adds	r7, #16
1a0016ca:	46bd      	mov	sp, r7
1a0016cc:	bd80      	pop	{r7, pc}

1a0016ce <ABS>:
1a0016ce:	b480      	push	{r7}
1a0016d0:	b083      	sub	sp, #12
1a0016d2:	af00      	add	r7, sp, #0
1a0016d4:	6078      	str	r0, [r7, #4]
1a0016d6:	687b      	ldr	r3, [r7, #4]
1a0016d8:	2b00      	cmp	r3, #0
1a0016da:	da02      	bge.n	1a0016e2 <ABS+0x14>
1a0016dc:	687b      	ldr	r3, [r7, #4]
1a0016de:	425b      	negs	r3, r3
1a0016e0:	e000      	b.n	1a0016e4 <ABS+0x16>
1a0016e2:	687b      	ldr	r3, [r7, #4]
1a0016e4:	4618      	mov	r0, r3
1a0016e6:	370c      	adds	r7, #12
1a0016e8:	46bd      	mov	sp, r7
1a0016ea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016ee:	4770      	bx	lr

1a0016f0 <pll_calc_divs>:
1a0016f0:	b580      	push	{r7, lr}
1a0016f2:	b088      	sub	sp, #32
1a0016f4:	af00      	add	r7, sp, #0
1a0016f6:	6078      	str	r0, [r7, #4]
1a0016f8:	6039      	str	r1, [r7, #0]
1a0016fa:	687b      	ldr	r3, [r7, #4]
1a0016fc:	61fb      	str	r3, [r7, #28]
1a0016fe:	683b      	ldr	r3, [r7, #0]
1a001700:	681b      	ldr	r3, [r3, #0]
1a001702:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001706:	2b00      	cmp	r3, #0
1a001708:	d005      	beq.n	1a001716 <pll_calc_divs+0x26>
1a00170a:	683b      	ldr	r3, [r7, #0]
1a00170c:	681b      	ldr	r3, [r3, #0]
1a00170e:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a001712:	683b      	ldr	r3, [r7, #0]
1a001714:	601a      	str	r2, [r3, #0]
1a001716:	2301      	movs	r3, #1
1a001718:	61bb      	str	r3, [r7, #24]
1a00171a:	e06f      	b.n	1a0017fc <pll_calc_divs+0x10c>
1a00171c:	2300      	movs	r3, #0
1a00171e:	613b      	str	r3, [r7, #16]
1a001720:	e066      	b.n	1a0017f0 <pll_calc_divs+0x100>
1a001722:	2301      	movs	r3, #1
1a001724:	617b      	str	r3, [r7, #20]
1a001726:	e05a      	b.n	1a0017de <pll_calc_divs+0xee>
1a001728:	683b      	ldr	r3, [r7, #0]
1a00172a:	681b      	ldr	r3, [r3, #0]
1a00172c:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a001730:	2b00      	cmp	r3, #0
1a001732:	d00e      	beq.n	1a001752 <pll_calc_divs+0x62>
1a001734:	693b      	ldr	r3, [r7, #16]
1a001736:	3301      	adds	r3, #1
1a001738:	697a      	ldr	r2, [r7, #20]
1a00173a:	fa02 f303 	lsl.w	r3, r2, r3
1a00173e:	461a      	mov	r2, r3
1a001740:	683b      	ldr	r3, [r7, #0]
1a001742:	695b      	ldr	r3, [r3, #20]
1a001744:	fb03 f202 	mul.w	r2, r3, r2
1a001748:	69bb      	ldr	r3, [r7, #24]
1a00174a:	fbb2 f3f3 	udiv	r3, r2, r3
1a00174e:	60fb      	str	r3, [r7, #12]
1a001750:	e008      	b.n	1a001764 <pll_calc_divs+0x74>
1a001752:	683b      	ldr	r3, [r7, #0]
1a001754:	695b      	ldr	r3, [r3, #20]
1a001756:	697a      	ldr	r2, [r7, #20]
1a001758:	fb02 f203 	mul.w	r2, r2, r3
1a00175c:	69bb      	ldr	r3, [r7, #24]
1a00175e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001762:	60fb      	str	r3, [r7, #12]
1a001764:	68fb      	ldr	r3, [r7, #12]
1a001766:	4a29      	ldr	r2, [pc, #164]	; (1a00180c <pll_calc_divs+0x11c>)
1a001768:	4293      	cmp	r3, r2
1a00176a:	d934      	bls.n	1a0017d6 <pll_calc_divs+0xe6>
1a00176c:	68fb      	ldr	r3, [r7, #12]
1a00176e:	4a28      	ldr	r2, [pc, #160]	; (1a001810 <pll_calc_divs+0x120>)
1a001770:	4293      	cmp	r3, r2
1a001772:	d839      	bhi.n	1a0017e8 <pll_calc_divs+0xf8>
1a001774:	683b      	ldr	r3, [r7, #0]
1a001776:	681b      	ldr	r3, [r3, #0]
1a001778:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00177c:	2b00      	cmp	r3, #0
1a00177e:	d002      	beq.n	1a001786 <pll_calc_divs+0x96>
1a001780:	68fb      	ldr	r3, [r7, #12]
1a001782:	60bb      	str	r3, [r7, #8]
1a001784:	e005      	b.n	1a001792 <pll_calc_divs+0xa2>
1a001786:	693b      	ldr	r3, [r7, #16]
1a001788:	3301      	adds	r3, #1
1a00178a:	68fa      	ldr	r2, [r7, #12]
1a00178c:	fa22 f303 	lsr.w	r3, r2, r3
1a001790:	60bb      	str	r3, [r7, #8]
1a001792:	687a      	ldr	r2, [r7, #4]
1a001794:	68bb      	ldr	r3, [r7, #8]
1a001796:	1ad3      	subs	r3, r2, r3
1a001798:	4618      	mov	r0, r3
1a00179a:	f7ff ff98 	bl	1a0016ce <ABS>
1a00179e:	4602      	mov	r2, r0
1a0017a0:	69fb      	ldr	r3, [r7, #28]
1a0017a2:	4293      	cmp	r3, r2
1a0017a4:	d918      	bls.n	1a0017d8 <pll_calc_divs+0xe8>
1a0017a6:	683b      	ldr	r3, [r7, #0]
1a0017a8:	69ba      	ldr	r2, [r7, #24]
1a0017aa:	609a      	str	r2, [r3, #8]
1a0017ac:	693b      	ldr	r3, [r7, #16]
1a0017ae:	1c5a      	adds	r2, r3, #1
1a0017b0:	683b      	ldr	r3, [r7, #0]
1a0017b2:	60da      	str	r2, [r3, #12]
1a0017b4:	683b      	ldr	r3, [r7, #0]
1a0017b6:	697a      	ldr	r2, [r7, #20]
1a0017b8:	611a      	str	r2, [r3, #16]
1a0017ba:	683b      	ldr	r3, [r7, #0]
1a0017bc:	68ba      	ldr	r2, [r7, #8]
1a0017be:	619a      	str	r2, [r3, #24]
1a0017c0:	683b      	ldr	r3, [r7, #0]
1a0017c2:	68fa      	ldr	r2, [r7, #12]
1a0017c4:	61da      	str	r2, [r3, #28]
1a0017c6:	687a      	ldr	r2, [r7, #4]
1a0017c8:	68bb      	ldr	r3, [r7, #8]
1a0017ca:	1ad3      	subs	r3, r2, r3
1a0017cc:	4618      	mov	r0, r3
1a0017ce:	f7ff ff7e 	bl	1a0016ce <ABS>
1a0017d2:	61f8      	str	r0, [r7, #28]
1a0017d4:	e000      	b.n	1a0017d8 <pll_calc_divs+0xe8>
1a0017d6:	bf00      	nop
1a0017d8:	697b      	ldr	r3, [r7, #20]
1a0017da:	3301      	adds	r3, #1
1a0017dc:	617b      	str	r3, [r7, #20]
1a0017de:	697b      	ldr	r3, [r7, #20]
1a0017e0:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a0017e4:	dda0      	ble.n	1a001728 <pll_calc_divs+0x38>
1a0017e6:	e000      	b.n	1a0017ea <pll_calc_divs+0xfa>
1a0017e8:	bf00      	nop
1a0017ea:	693b      	ldr	r3, [r7, #16]
1a0017ec:	3301      	adds	r3, #1
1a0017ee:	613b      	str	r3, [r7, #16]
1a0017f0:	693b      	ldr	r3, [r7, #16]
1a0017f2:	2b03      	cmp	r3, #3
1a0017f4:	dd95      	ble.n	1a001722 <pll_calc_divs+0x32>
1a0017f6:	69bb      	ldr	r3, [r7, #24]
1a0017f8:	3301      	adds	r3, #1
1a0017fa:	61bb      	str	r3, [r7, #24]
1a0017fc:	69bb      	ldr	r3, [r7, #24]
1a0017fe:	2b04      	cmp	r3, #4
1a001800:	dd8c      	ble.n	1a00171c <pll_calc_divs+0x2c>
1a001802:	bf00      	nop
1a001804:	3720      	adds	r7, #32
1a001806:	46bd      	mov	sp, r7
1a001808:	bd80      	pop	{r7, pc}
1a00180a:	bf00      	nop
1a00180c:	094c5eff 	.word	0x094c5eff
1a001810:	1312d000 	.word	0x1312d000

1a001814 <pll_get_frac>:
1a001814:	b5b0      	push	{r4, r5, r7, lr}
1a001816:	b09e      	sub	sp, #120	; 0x78
1a001818:	af00      	add	r7, sp, #0
1a00181a:	6078      	str	r0, [r7, #4]
1a00181c:	6039      	str	r1, [r7, #0]
1a00181e:	f107 030c 	add.w	r3, r7, #12
1a001822:	2260      	movs	r2, #96	; 0x60
1a001824:	2100      	movs	r1, #0
1a001826:	4618      	mov	r0, r3
1a001828:	f7fe fd6a 	bl	1a000300 <memset>
1a00182c:	68fb      	ldr	r3, [r7, #12]
1a00182e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a001832:	60fb      	str	r3, [r7, #12]
1a001834:	683b      	ldr	r3, [r7, #0]
1a001836:	695b      	ldr	r3, [r3, #20]
1a001838:	623b      	str	r3, [r7, #32]
1a00183a:	683b      	ldr	r3, [r7, #0]
1a00183c:	791b      	ldrb	r3, [r3, #4]
1a00183e:	743b      	strb	r3, [r7, #16]
1a001840:	f107 030c 	add.w	r3, r7, #12
1a001844:	4619      	mov	r1, r3
1a001846:	6878      	ldr	r0, [r7, #4]
1a001848:	f7ff ff52 	bl	1a0016f0 <pll_calc_divs>
1a00184c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00184e:	687a      	ldr	r2, [r7, #4]
1a001850:	429a      	cmp	r2, r3
1a001852:	d10a      	bne.n	1a00186a <pll_get_frac+0x56>
1a001854:	683b      	ldr	r3, [r7, #0]
1a001856:	461d      	mov	r5, r3
1a001858:	f107 040c 	add.w	r4, r7, #12
1a00185c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00185e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001860:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001864:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001868:	e08e      	b.n	1a001988 <pll_get_frac+0x174>
1a00186a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00186c:	687a      	ldr	r2, [r7, #4]
1a00186e:	1ad3      	subs	r3, r2, r3
1a001870:	4618      	mov	r0, r3
1a001872:	f7ff ff2c 	bl	1a0016ce <ABS>
1a001876:	4603      	mov	r3, r0
1a001878:	66fb      	str	r3, [r7, #108]	; 0x6c
1a00187a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a00187c:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001880:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001882:	683b      	ldr	r3, [r7, #0]
1a001884:	695b      	ldr	r3, [r3, #20]
1a001886:	663b      	str	r3, [r7, #96]	; 0x60
1a001888:	683b      	ldr	r3, [r7, #0]
1a00188a:	791b      	ldrb	r3, [r3, #4]
1a00188c:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001890:	f107 030c 	add.w	r3, r7, #12
1a001894:	3340      	adds	r3, #64	; 0x40
1a001896:	4619      	mov	r1, r3
1a001898:	6878      	ldr	r0, [r7, #4]
1a00189a:	f7ff ff29 	bl	1a0016f0 <pll_calc_divs>
1a00189e:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a0018a0:	687a      	ldr	r2, [r7, #4]
1a0018a2:	429a      	cmp	r2, r3
1a0018a4:	d10a      	bne.n	1a0018bc <pll_get_frac+0xa8>
1a0018a6:	683b      	ldr	r3, [r7, #0]
1a0018a8:	461d      	mov	r5, r3
1a0018aa:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0018ae:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0018b0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0018b2:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0018b6:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0018ba:	e065      	b.n	1a001988 <pll_get_frac+0x174>
1a0018bc:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a0018be:	687a      	ldr	r2, [r7, #4]
1a0018c0:	1ad3      	subs	r3, r2, r3
1a0018c2:	4618      	mov	r0, r3
1a0018c4:	f7ff ff03 	bl	1a0016ce <ABS>
1a0018c8:	4603      	mov	r3, r0
1a0018ca:	677b      	str	r3, [r7, #116]	; 0x74
1a0018cc:	687b      	ldr	r3, [r7, #4]
1a0018ce:	4a30      	ldr	r2, [pc, #192]	; (1a001990 <pll_get_frac+0x17c>)
1a0018d0:	4293      	cmp	r3, r2
1a0018d2:	d81a      	bhi.n	1a00190a <pll_get_frac+0xf6>
1a0018d4:	2340      	movs	r3, #64	; 0x40
1a0018d6:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0018d8:	683b      	ldr	r3, [r7, #0]
1a0018da:	695b      	ldr	r3, [r3, #20]
1a0018dc:	643b      	str	r3, [r7, #64]	; 0x40
1a0018de:	f107 030c 	add.w	r3, r7, #12
1a0018e2:	3320      	adds	r3, #32
1a0018e4:	4619      	mov	r1, r3
1a0018e6:	6878      	ldr	r0, [r7, #4]
1a0018e8:	f7ff ff02 	bl	1a0016f0 <pll_calc_divs>
1a0018ec:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a0018ee:	687a      	ldr	r2, [r7, #4]
1a0018f0:	429a      	cmp	r2, r3
1a0018f2:	d10a      	bne.n	1a00190a <pll_get_frac+0xf6>
1a0018f4:	683b      	ldr	r3, [r7, #0]
1a0018f6:	461d      	mov	r5, r3
1a0018f8:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0018fc:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0018fe:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001900:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001904:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001908:	e03e      	b.n	1a001988 <pll_get_frac+0x174>
1a00190a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a00190c:	687a      	ldr	r2, [r7, #4]
1a00190e:	1ad3      	subs	r3, r2, r3
1a001910:	4618      	mov	r0, r3
1a001912:	f7ff fedc 	bl	1a0016ce <ABS>
1a001916:	4603      	mov	r3, r0
1a001918:	673b      	str	r3, [r7, #112]	; 0x70
1a00191a:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a00191c:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a00191e:	429a      	cmp	r2, r3
1a001920:	dc19      	bgt.n	1a001956 <pll_get_frac+0x142>
1a001922:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001924:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001926:	429a      	cmp	r2, r3
1a001928:	dc0a      	bgt.n	1a001940 <pll_get_frac+0x12c>
1a00192a:	683b      	ldr	r3, [r7, #0]
1a00192c:	461d      	mov	r5, r3
1a00192e:	f107 040c 	add.w	r4, r7, #12
1a001932:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001934:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001936:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00193a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00193e:	e023      	b.n	1a001988 <pll_get_frac+0x174>
1a001940:	683b      	ldr	r3, [r7, #0]
1a001942:	461d      	mov	r5, r3
1a001944:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001948:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00194a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00194c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001950:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001954:	e018      	b.n	1a001988 <pll_get_frac+0x174>
1a001956:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001958:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a00195a:	429a      	cmp	r2, r3
1a00195c:	dc0a      	bgt.n	1a001974 <pll_get_frac+0x160>
1a00195e:	683b      	ldr	r3, [r7, #0]
1a001960:	461d      	mov	r5, r3
1a001962:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001966:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001968:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00196a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00196e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001972:	e009      	b.n	1a001988 <pll_get_frac+0x174>
1a001974:	683b      	ldr	r3, [r7, #0]
1a001976:	461d      	mov	r5, r3
1a001978:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a00197c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00197e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001980:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001984:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001988:	3778      	adds	r7, #120	; 0x78
1a00198a:	46bd      	mov	sp, r7
1a00198c:	bdb0      	pop	{r4, r5, r7, pc}
1a00198e:	bf00      	nop
1a001990:	068e7780 	.word	0x068e7780

1a001994 <Chip_Clock_GetDivRate>:
1a001994:	b580      	push	{r7, lr}
1a001996:	b084      	sub	sp, #16
1a001998:	af00      	add	r7, sp, #0
1a00199a:	4603      	mov	r3, r0
1a00199c:	460a      	mov	r2, r1
1a00199e:	71fb      	strb	r3, [r7, #7]
1a0019a0:	4613      	mov	r3, r2
1a0019a2:	71bb      	strb	r3, [r7, #6]
1a0019a4:	79bb      	ldrb	r3, [r7, #6]
1a0019a6:	4618      	mov	r0, r3
1a0019a8:	f000 f960 	bl	1a001c6c <Chip_Clock_GetDividerSource>
1a0019ac:	4603      	mov	r3, r0
1a0019ae:	73fb      	strb	r3, [r7, #15]
1a0019b0:	79bb      	ldrb	r3, [r7, #6]
1a0019b2:	4618      	mov	r0, r3
1a0019b4:	f000 f97a 	bl	1a001cac <Chip_Clock_GetDividerDivisor>
1a0019b8:	60b8      	str	r0, [r7, #8]
1a0019ba:	7bfb      	ldrb	r3, [r7, #15]
1a0019bc:	4618      	mov	r0, r3
1a0019be:	f000 f991 	bl	1a001ce4 <Chip_Clock_GetClockInputHz>
1a0019c2:	4602      	mov	r2, r0
1a0019c4:	68bb      	ldr	r3, [r7, #8]
1a0019c6:	3301      	adds	r3, #1
1a0019c8:	fbb2 f3f3 	udiv	r3, r2, r3
1a0019cc:	4618      	mov	r0, r3
1a0019ce:	3710      	adds	r7, #16
1a0019d0:	46bd      	mov	sp, r7
1a0019d2:	bd80      	pop	{r7, pc}

1a0019d4 <Chip_Clock_FindBaseClock>:
1a0019d4:	b480      	push	{r7}
1a0019d6:	b085      	sub	sp, #20
1a0019d8:	af00      	add	r7, sp, #0
1a0019da:	4603      	mov	r3, r0
1a0019dc:	80fb      	strh	r3, [r7, #6]
1a0019de:	231c      	movs	r3, #28
1a0019e0:	73fb      	strb	r3, [r7, #15]
1a0019e2:	2300      	movs	r3, #0
1a0019e4:	60bb      	str	r3, [r7, #8]
1a0019e6:	e024      	b.n	1a001a32 <Chip_Clock_FindBaseClock+0x5e>
1a0019e8:	491d      	ldr	r1, [pc, #116]	; (1a001a60 <Chip_Clock_FindBaseClock+0x8c>)
1a0019ea:	68ba      	ldr	r2, [r7, #8]
1a0019ec:	4613      	mov	r3, r2
1a0019ee:	005b      	lsls	r3, r3, #1
1a0019f0:	4413      	add	r3, r2
1a0019f2:	005b      	lsls	r3, r3, #1
1a0019f4:	440b      	add	r3, r1
1a0019f6:	881b      	ldrh	r3, [r3, #0]
1a0019f8:	88fa      	ldrh	r2, [r7, #6]
1a0019fa:	429a      	cmp	r2, r3
1a0019fc:	d316      	bcc.n	1a001a2c <Chip_Clock_FindBaseClock+0x58>
1a0019fe:	4918      	ldr	r1, [pc, #96]	; (1a001a60 <Chip_Clock_FindBaseClock+0x8c>)
1a001a00:	68ba      	ldr	r2, [r7, #8]
1a001a02:	4613      	mov	r3, r2
1a001a04:	005b      	lsls	r3, r3, #1
1a001a06:	4413      	add	r3, r2
1a001a08:	005b      	lsls	r3, r3, #1
1a001a0a:	440b      	add	r3, r1
1a001a0c:	3302      	adds	r3, #2
1a001a0e:	881b      	ldrh	r3, [r3, #0]
1a001a10:	88fa      	ldrh	r2, [r7, #6]
1a001a12:	429a      	cmp	r2, r3
1a001a14:	d80a      	bhi.n	1a001a2c <Chip_Clock_FindBaseClock+0x58>
1a001a16:	4912      	ldr	r1, [pc, #72]	; (1a001a60 <Chip_Clock_FindBaseClock+0x8c>)
1a001a18:	68ba      	ldr	r2, [r7, #8]
1a001a1a:	4613      	mov	r3, r2
1a001a1c:	005b      	lsls	r3, r3, #1
1a001a1e:	4413      	add	r3, r2
1a001a20:	005b      	lsls	r3, r3, #1
1a001a22:	440b      	add	r3, r1
1a001a24:	3304      	adds	r3, #4
1a001a26:	781b      	ldrb	r3, [r3, #0]
1a001a28:	73fb      	strb	r3, [r7, #15]
1a001a2a:	e002      	b.n	1a001a32 <Chip_Clock_FindBaseClock+0x5e>
1a001a2c:	68bb      	ldr	r3, [r7, #8]
1a001a2e:	3301      	adds	r3, #1
1a001a30:	60bb      	str	r3, [r7, #8]
1a001a32:	7bfb      	ldrb	r3, [r7, #15]
1a001a34:	2b1c      	cmp	r3, #28
1a001a36:	d10b      	bne.n	1a001a50 <Chip_Clock_FindBaseClock+0x7c>
1a001a38:	4909      	ldr	r1, [pc, #36]	; (1a001a60 <Chip_Clock_FindBaseClock+0x8c>)
1a001a3a:	68ba      	ldr	r2, [r7, #8]
1a001a3c:	4613      	mov	r3, r2
1a001a3e:	005b      	lsls	r3, r3, #1
1a001a40:	4413      	add	r3, r2
1a001a42:	005b      	lsls	r3, r3, #1
1a001a44:	440b      	add	r3, r1
1a001a46:	3304      	adds	r3, #4
1a001a48:	781b      	ldrb	r3, [r3, #0]
1a001a4a:	7bfa      	ldrb	r2, [r7, #15]
1a001a4c:	429a      	cmp	r2, r3
1a001a4e:	d1cb      	bne.n	1a0019e8 <Chip_Clock_FindBaseClock+0x14>
1a001a50:	7bfb      	ldrb	r3, [r7, #15]
1a001a52:	4618      	mov	r0, r3
1a001a54:	3714      	adds	r7, #20
1a001a56:	46bd      	mov	sp, r7
1a001a58:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a5c:	4770      	bx	lr
1a001a5e:	bf00      	nop
1a001a60:	1a0022c4 	.word	0x1a0022c4

1a001a64 <Chip_Clock_EnableCrystal>:
1a001a64:	b480      	push	{r7}
1a001a66:	b083      	sub	sp, #12
1a001a68:	af00      	add	r7, sp, #0
1a001a6a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001a6e:	603b      	str	r3, [r7, #0]
1a001a70:	4b15      	ldr	r3, [pc, #84]	; (1a001ac8 <Chip_Clock_EnableCrystal+0x64>)
1a001a72:	699b      	ldr	r3, [r3, #24]
1a001a74:	607b      	str	r3, [r7, #4]
1a001a76:	687b      	ldr	r3, [r7, #4]
1a001a78:	f023 0302 	bic.w	r3, r3, #2
1a001a7c:	607b      	str	r3, [r7, #4]
1a001a7e:	4b12      	ldr	r3, [pc, #72]	; (1a001ac8 <Chip_Clock_EnableCrystal+0x64>)
1a001a80:	699b      	ldr	r3, [r3, #24]
1a001a82:	687a      	ldr	r2, [r7, #4]
1a001a84:	429a      	cmp	r2, r3
1a001a86:	d002      	beq.n	1a001a8e <Chip_Clock_EnableCrystal+0x2a>
1a001a88:	4a0f      	ldr	r2, [pc, #60]	; (1a001ac8 <Chip_Clock_EnableCrystal+0x64>)
1a001a8a:	687b      	ldr	r3, [r7, #4]
1a001a8c:	6193      	str	r3, [r2, #24]
1a001a8e:	687b      	ldr	r3, [r7, #4]
1a001a90:	f023 0301 	bic.w	r3, r3, #1
1a001a94:	607b      	str	r3, [r7, #4]
1a001a96:	4b0d      	ldr	r3, [pc, #52]	; (1a001acc <Chip_Clock_EnableCrystal+0x68>)
1a001a98:	681b      	ldr	r3, [r3, #0]
1a001a9a:	4a0d      	ldr	r2, [pc, #52]	; (1a001ad0 <Chip_Clock_EnableCrystal+0x6c>)
1a001a9c:	4293      	cmp	r3, r2
1a001a9e:	d903      	bls.n	1a001aa8 <Chip_Clock_EnableCrystal+0x44>
1a001aa0:	687b      	ldr	r3, [r7, #4]
1a001aa2:	f043 0304 	orr.w	r3, r3, #4
1a001aa6:	607b      	str	r3, [r7, #4]
1a001aa8:	4a07      	ldr	r2, [pc, #28]	; (1a001ac8 <Chip_Clock_EnableCrystal+0x64>)
1a001aaa:	687b      	ldr	r3, [r7, #4]
1a001aac:	6193      	str	r3, [r2, #24]
1a001aae:	bf00      	nop
1a001ab0:	683b      	ldr	r3, [r7, #0]
1a001ab2:	1e5a      	subs	r2, r3, #1
1a001ab4:	603a      	str	r2, [r7, #0]
1a001ab6:	2b00      	cmp	r3, #0
1a001ab8:	d1fa      	bne.n	1a001ab0 <Chip_Clock_EnableCrystal+0x4c>
1a001aba:	bf00      	nop
1a001abc:	370c      	adds	r7, #12
1a001abe:	46bd      	mov	sp, r7
1a001ac0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001ac4:	4770      	bx	lr
1a001ac6:	bf00      	nop
1a001ac8:	40050000 	.word	0x40050000
1a001acc:	1a002268 	.word	0x1a002268
1a001ad0:	01312cff 	.word	0x01312cff

1a001ad4 <Chip_Clock_CalcMainPLLValue>:
1a001ad4:	b580      	push	{r7, lr}
1a001ad6:	b082      	sub	sp, #8
1a001ad8:	af00      	add	r7, sp, #0
1a001ada:	6078      	str	r0, [r7, #4]
1a001adc:	6039      	str	r1, [r7, #0]
1a001ade:	683b      	ldr	r3, [r7, #0]
1a001ae0:	791b      	ldrb	r3, [r3, #4]
1a001ae2:	4618      	mov	r0, r3
1a001ae4:	f000 f8fe 	bl	1a001ce4 <Chip_Clock_GetClockInputHz>
1a001ae8:	4602      	mov	r2, r0
1a001aea:	683b      	ldr	r3, [r7, #0]
1a001aec:	615a      	str	r2, [r3, #20]
1a001aee:	687b      	ldr	r3, [r7, #4]
1a001af0:	4a2b      	ldr	r2, [pc, #172]	; (1a001ba0 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a001af2:	4293      	cmp	r3, r2
1a001af4:	d807      	bhi.n	1a001b06 <Chip_Clock_CalcMainPLLValue+0x32>
1a001af6:	687b      	ldr	r3, [r7, #4]
1a001af8:	4a2a      	ldr	r2, [pc, #168]	; (1a001ba4 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001afa:	4293      	cmp	r3, r2
1a001afc:	d903      	bls.n	1a001b06 <Chip_Clock_CalcMainPLLValue+0x32>
1a001afe:	683b      	ldr	r3, [r7, #0]
1a001b00:	695b      	ldr	r3, [r3, #20]
1a001b02:	2b00      	cmp	r3, #0
1a001b04:	d102      	bne.n	1a001b0c <Chip_Clock_CalcMainPLLValue+0x38>
1a001b06:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001b0a:	e044      	b.n	1a001b96 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001b0c:	683b      	ldr	r3, [r7, #0]
1a001b0e:	2280      	movs	r2, #128	; 0x80
1a001b10:	601a      	str	r2, [r3, #0]
1a001b12:	683b      	ldr	r3, [r7, #0]
1a001b14:	2200      	movs	r2, #0
1a001b16:	609a      	str	r2, [r3, #8]
1a001b18:	683b      	ldr	r3, [r7, #0]
1a001b1a:	2200      	movs	r2, #0
1a001b1c:	60da      	str	r2, [r3, #12]
1a001b1e:	683b      	ldr	r3, [r7, #0]
1a001b20:	695b      	ldr	r3, [r3, #20]
1a001b22:	687a      	ldr	r2, [r7, #4]
1a001b24:	fbb2 f3f3 	udiv	r3, r2, r3
1a001b28:	461a      	mov	r2, r3
1a001b2a:	683b      	ldr	r3, [r7, #0]
1a001b2c:	611a      	str	r2, [r3, #16]
1a001b2e:	687b      	ldr	r3, [r7, #4]
1a001b30:	4a1d      	ldr	r2, [pc, #116]	; (1a001ba8 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a001b32:	4293      	cmp	r3, r2
1a001b34:	d909      	bls.n	1a001b4a <Chip_Clock_CalcMainPLLValue+0x76>
1a001b36:	683b      	ldr	r3, [r7, #0]
1a001b38:	691b      	ldr	r3, [r3, #16]
1a001b3a:	461a      	mov	r2, r3
1a001b3c:	683b      	ldr	r3, [r7, #0]
1a001b3e:	695b      	ldr	r3, [r3, #20]
1a001b40:	fb03 f302 	mul.w	r3, r3, r2
1a001b44:	687a      	ldr	r2, [r7, #4]
1a001b46:	429a      	cmp	r2, r3
1a001b48:	d00f      	beq.n	1a001b6a <Chip_Clock_CalcMainPLLValue+0x96>
1a001b4a:	6839      	ldr	r1, [r7, #0]
1a001b4c:	6878      	ldr	r0, [r7, #4]
1a001b4e:	f7ff fe61 	bl	1a001814 <pll_get_frac>
1a001b52:	683b      	ldr	r3, [r7, #0]
1a001b54:	689b      	ldr	r3, [r3, #8]
1a001b56:	2b00      	cmp	r3, #0
1a001b58:	d102      	bne.n	1a001b60 <Chip_Clock_CalcMainPLLValue+0x8c>
1a001b5a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001b5e:	e01a      	b.n	1a001b96 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001b60:	683b      	ldr	r3, [r7, #0]
1a001b62:	689b      	ldr	r3, [r3, #8]
1a001b64:	1e5a      	subs	r2, r3, #1
1a001b66:	683b      	ldr	r3, [r7, #0]
1a001b68:	609a      	str	r2, [r3, #8]
1a001b6a:	683b      	ldr	r3, [r7, #0]
1a001b6c:	691b      	ldr	r3, [r3, #16]
1a001b6e:	2b00      	cmp	r3, #0
1a001b70:	d102      	bne.n	1a001b78 <Chip_Clock_CalcMainPLLValue+0xa4>
1a001b72:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001b76:	e00e      	b.n	1a001b96 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001b78:	683b      	ldr	r3, [r7, #0]
1a001b7a:	68db      	ldr	r3, [r3, #12]
1a001b7c:	2b00      	cmp	r3, #0
1a001b7e:	d004      	beq.n	1a001b8a <Chip_Clock_CalcMainPLLValue+0xb6>
1a001b80:	683b      	ldr	r3, [r7, #0]
1a001b82:	68db      	ldr	r3, [r3, #12]
1a001b84:	1e5a      	subs	r2, r3, #1
1a001b86:	683b      	ldr	r3, [r7, #0]
1a001b88:	60da      	str	r2, [r3, #12]
1a001b8a:	683b      	ldr	r3, [r7, #0]
1a001b8c:	691b      	ldr	r3, [r3, #16]
1a001b8e:	1e5a      	subs	r2, r3, #1
1a001b90:	683b      	ldr	r3, [r7, #0]
1a001b92:	611a      	str	r2, [r3, #16]
1a001b94:	2300      	movs	r3, #0
1a001b96:	4618      	mov	r0, r3
1a001b98:	3708      	adds	r7, #8
1a001b9a:	46bd      	mov	sp, r7
1a001b9c:	bd80      	pop	{r7, pc}
1a001b9e:	bf00      	nop
1a001ba0:	0c28cb00 	.word	0x0c28cb00
1a001ba4:	0094c5ef 	.word	0x0094c5ef
1a001ba8:	094c5eff 	.word	0x094c5eff

1a001bac <Chip_Clock_GetMainPLLHz>:
1a001bac:	b580      	push	{r7, lr}
1a001bae:	b08c      	sub	sp, #48	; 0x30
1a001bb0:	af00      	add	r7, sp, #0
1a001bb2:	4b2c      	ldr	r3, [pc, #176]	; (1a001c64 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001bb4:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001bb6:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001bb8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001bba:	0e1b      	lsrs	r3, r3, #24
1a001bbc:	b2db      	uxtb	r3, r3
1a001bbe:	f003 030f 	and.w	r3, r3, #15
1a001bc2:	b2db      	uxtb	r3, r3
1a001bc4:	4618      	mov	r0, r3
1a001bc6:	f000 f88d 	bl	1a001ce4 <Chip_Clock_GetClockInputHz>
1a001bca:	62b8      	str	r0, [r7, #40]	; 0x28
1a001bcc:	4b26      	ldr	r3, [pc, #152]	; (1a001c68 <Chip_Clock_GetMainPLLHz+0xbc>)
1a001bce:	681b      	ldr	r3, [r3, #0]
1a001bd0:	607b      	str	r3, [r7, #4]
1a001bd2:	4b24      	ldr	r3, [pc, #144]	; (1a001c64 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001bd4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001bd6:	f003 0301 	and.w	r3, r3, #1
1a001bda:	2b00      	cmp	r3, #0
1a001bdc:	d101      	bne.n	1a001be2 <Chip_Clock_GetMainPLLHz+0x36>
1a001bde:	2300      	movs	r3, #0
1a001be0:	e03b      	b.n	1a001c5a <Chip_Clock_GetMainPLLHz+0xae>
1a001be2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001be4:	0c1b      	lsrs	r3, r3, #16
1a001be6:	b2db      	uxtb	r3, r3
1a001be8:	627b      	str	r3, [r7, #36]	; 0x24
1a001bea:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001bec:	0b1b      	lsrs	r3, r3, #12
1a001bee:	f003 0303 	and.w	r3, r3, #3
1a001bf2:	623b      	str	r3, [r7, #32]
1a001bf4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001bf6:	0a1b      	lsrs	r3, r3, #8
1a001bf8:	f003 0303 	and.w	r3, r3, #3
1a001bfc:	61fb      	str	r3, [r7, #28]
1a001bfe:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001c00:	09db      	lsrs	r3, r3, #7
1a001c02:	f003 0301 	and.w	r3, r3, #1
1a001c06:	61bb      	str	r3, [r7, #24]
1a001c08:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001c0a:	099b      	lsrs	r3, r3, #6
1a001c0c:	f003 0301 	and.w	r3, r3, #1
1a001c10:	617b      	str	r3, [r7, #20]
1a001c12:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001c14:	3301      	adds	r3, #1
1a001c16:	613b      	str	r3, [r7, #16]
1a001c18:	6a3b      	ldr	r3, [r7, #32]
1a001c1a:	3301      	adds	r3, #1
1a001c1c:	60fb      	str	r3, [r7, #12]
1a001c1e:	1d3a      	adds	r2, r7, #4
1a001c20:	69fb      	ldr	r3, [r7, #28]
1a001c22:	4413      	add	r3, r2
1a001c24:	781b      	ldrb	r3, [r3, #0]
1a001c26:	60bb      	str	r3, [r7, #8]
1a001c28:	69bb      	ldr	r3, [r7, #24]
1a001c2a:	2b00      	cmp	r3, #0
1a001c2c:	d102      	bne.n	1a001c34 <Chip_Clock_GetMainPLLHz+0x88>
1a001c2e:	697b      	ldr	r3, [r7, #20]
1a001c30:	2b00      	cmp	r3, #0
1a001c32:	d007      	beq.n	1a001c44 <Chip_Clock_GetMainPLLHz+0x98>
1a001c34:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a001c36:	68fb      	ldr	r3, [r7, #12]
1a001c38:	fbb2 f3f3 	udiv	r3, r2, r3
1a001c3c:	693a      	ldr	r2, [r7, #16]
1a001c3e:	fb02 f303 	mul.w	r3, r2, r3
1a001c42:	e00a      	b.n	1a001c5a <Chip_Clock_GetMainPLLHz+0xae>
1a001c44:	68bb      	ldr	r3, [r7, #8]
1a001c46:	005b      	lsls	r3, r3, #1
1a001c48:	693a      	ldr	r2, [r7, #16]
1a001c4a:	fbb2 f3f3 	udiv	r3, r2, r3
1a001c4e:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a001c50:	68fa      	ldr	r2, [r7, #12]
1a001c52:	fbb1 f2f2 	udiv	r2, r1, r2
1a001c56:	fb02 f303 	mul.w	r3, r2, r3
1a001c5a:	4618      	mov	r0, r3
1a001c5c:	3730      	adds	r7, #48	; 0x30
1a001c5e:	46bd      	mov	sp, r7
1a001c60:	bd80      	pop	{r7, pc}
1a001c62:	bf00      	nop
1a001c64:	40050000 	.word	0x40050000
1a001c68:	1a002330 	.word	0x1a002330

1a001c6c <Chip_Clock_GetDividerSource>:
1a001c6c:	b480      	push	{r7}
1a001c6e:	b085      	sub	sp, #20
1a001c70:	af00      	add	r7, sp, #0
1a001c72:	4603      	mov	r3, r0
1a001c74:	71fb      	strb	r3, [r7, #7]
1a001c76:	4a0c      	ldr	r2, [pc, #48]	; (1a001ca8 <Chip_Clock_GetDividerSource+0x3c>)
1a001c78:	79fb      	ldrb	r3, [r7, #7]
1a001c7a:	3312      	adds	r3, #18
1a001c7c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001c80:	60fb      	str	r3, [r7, #12]
1a001c82:	68fb      	ldr	r3, [r7, #12]
1a001c84:	f003 0301 	and.w	r3, r3, #1
1a001c88:	2b00      	cmp	r3, #0
1a001c8a:	d001      	beq.n	1a001c90 <Chip_Clock_GetDividerSource+0x24>
1a001c8c:	2311      	movs	r3, #17
1a001c8e:	e005      	b.n	1a001c9c <Chip_Clock_GetDividerSource+0x30>
1a001c90:	68fb      	ldr	r3, [r7, #12]
1a001c92:	0e1b      	lsrs	r3, r3, #24
1a001c94:	b2db      	uxtb	r3, r3
1a001c96:	f003 031f 	and.w	r3, r3, #31
1a001c9a:	b2db      	uxtb	r3, r3
1a001c9c:	4618      	mov	r0, r3
1a001c9e:	3714      	adds	r7, #20
1a001ca0:	46bd      	mov	sp, r7
1a001ca2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001ca6:	4770      	bx	lr
1a001ca8:	40050000 	.word	0x40050000

1a001cac <Chip_Clock_GetDividerDivisor>:
1a001cac:	b480      	push	{r7}
1a001cae:	b083      	sub	sp, #12
1a001cb0:	af00      	add	r7, sp, #0
1a001cb2:	4603      	mov	r3, r0
1a001cb4:	71fb      	strb	r3, [r7, #7]
1a001cb6:	4a09      	ldr	r2, [pc, #36]	; (1a001cdc <Chip_Clock_GetDividerDivisor+0x30>)
1a001cb8:	79fb      	ldrb	r3, [r7, #7]
1a001cba:	3312      	adds	r3, #18
1a001cbc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001cc0:	089b      	lsrs	r3, r3, #2
1a001cc2:	b2da      	uxtb	r2, r3
1a001cc4:	79fb      	ldrb	r3, [r7, #7]
1a001cc6:	4906      	ldr	r1, [pc, #24]	; (1a001ce0 <Chip_Clock_GetDividerDivisor+0x34>)
1a001cc8:	5ccb      	ldrb	r3, [r1, r3]
1a001cca:	4013      	ands	r3, r2
1a001ccc:	b2db      	uxtb	r3, r3
1a001cce:	4618      	mov	r0, r3
1a001cd0:	370c      	adds	r7, #12
1a001cd2:	46bd      	mov	sp, r7
1a001cd4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001cd8:	4770      	bx	lr
1a001cda:	bf00      	nop
1a001cdc:	40050000 	.word	0x40050000
1a001ce0:	1a002334 	.word	0x1a002334

1a001ce4 <Chip_Clock_GetClockInputHz>:
1a001ce4:	b580      	push	{r7, lr}
1a001ce6:	b084      	sub	sp, #16
1a001ce8:	af00      	add	r7, sp, #0
1a001cea:	4603      	mov	r3, r0
1a001cec:	71fb      	strb	r3, [r7, #7]
1a001cee:	2300      	movs	r3, #0
1a001cf0:	60fb      	str	r3, [r7, #12]
1a001cf2:	79fb      	ldrb	r3, [r7, #7]
1a001cf4:	2b11      	cmp	r3, #17
1a001cf6:	d87f      	bhi.n	1a001df8 <Chip_Clock_GetClockInputHz+0x114>
1a001cf8:	a201      	add	r2, pc, #4	; (adr r2, 1a001d00 <Chip_Clock_GetClockInputHz+0x1c>)
1a001cfa:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001cfe:	bf00      	nop
1a001d00:	1a001d49 	.word	0x1a001d49
1a001d04:	1a001d51 	.word	0x1a001d51
1a001d08:	1a001d57 	.word	0x1a001d57
1a001d0c:	1a001d6b 	.word	0x1a001d6b
1a001d10:	1a001d85 	.word	0x1a001d85
1a001d14:	1a001df9 	.word	0x1a001df9
1a001d18:	1a001d8d 	.word	0x1a001d8d
1a001d1c:	1a001d95 	.word	0x1a001d95
1a001d20:	1a001d9d 	.word	0x1a001d9d
1a001d24:	1a001da5 	.word	0x1a001da5
1a001d28:	1a001df9 	.word	0x1a001df9
1a001d2c:	1a001df9 	.word	0x1a001df9
1a001d30:	1a001dad 	.word	0x1a001dad
1a001d34:	1a001dbb 	.word	0x1a001dbb
1a001d38:	1a001dc9 	.word	0x1a001dc9
1a001d3c:	1a001dd7 	.word	0x1a001dd7
1a001d40:	1a001de5 	.word	0x1a001de5
1a001d44:	1a001df3 	.word	0x1a001df3
1a001d48:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001d4c:	60fb      	str	r3, [r7, #12]
1a001d4e:	e056      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001d50:	4b2d      	ldr	r3, [pc, #180]	; (1a001e08 <Chip_Clock_GetClockInputHz+0x124>)
1a001d52:	60fb      	str	r3, [r7, #12]
1a001d54:	e053      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001d56:	4b2d      	ldr	r3, [pc, #180]	; (1a001e0c <Chip_Clock_GetClockInputHz+0x128>)
1a001d58:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001d5c:	f003 0307 	and.w	r3, r3, #7
1a001d60:	2b04      	cmp	r3, #4
1a001d62:	d04b      	beq.n	1a001dfc <Chip_Clock_GetClockInputHz+0x118>
1a001d64:	4b2a      	ldr	r3, [pc, #168]	; (1a001e10 <Chip_Clock_GetClockInputHz+0x12c>)
1a001d66:	60fb      	str	r3, [r7, #12]
1a001d68:	e048      	b.n	1a001dfc <Chip_Clock_GetClockInputHz+0x118>
1a001d6a:	4b28      	ldr	r3, [pc, #160]	; (1a001e0c <Chip_Clock_GetClockInputHz+0x128>)
1a001d6c:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001d70:	f003 0307 	and.w	r3, r3, #7
1a001d74:	2b04      	cmp	r3, #4
1a001d76:	d002      	beq.n	1a001d7e <Chip_Clock_GetClockInputHz+0x9a>
1a001d78:	4b25      	ldr	r3, [pc, #148]	; (1a001e10 <Chip_Clock_GetClockInputHz+0x12c>)
1a001d7a:	60fb      	str	r3, [r7, #12]
1a001d7c:	e03f      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001d7e:	4b25      	ldr	r3, [pc, #148]	; (1a001e14 <Chip_Clock_GetClockInputHz+0x130>)
1a001d80:	60fb      	str	r3, [r7, #12]
1a001d82:	e03c      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001d84:	4b24      	ldr	r3, [pc, #144]	; (1a001e18 <Chip_Clock_GetClockInputHz+0x134>)
1a001d86:	681b      	ldr	r3, [r3, #0]
1a001d88:	60fb      	str	r3, [r7, #12]
1a001d8a:	e038      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001d8c:	4b23      	ldr	r3, [pc, #140]	; (1a001e1c <Chip_Clock_GetClockInputHz+0x138>)
1a001d8e:	681b      	ldr	r3, [r3, #0]
1a001d90:	60fb      	str	r3, [r7, #12]
1a001d92:	e034      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001d94:	4b22      	ldr	r3, [pc, #136]	; (1a001e20 <Chip_Clock_GetClockInputHz+0x13c>)
1a001d96:	681b      	ldr	r3, [r3, #0]
1a001d98:	60fb      	str	r3, [r7, #12]
1a001d9a:	e030      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001d9c:	4b20      	ldr	r3, [pc, #128]	; (1a001e20 <Chip_Clock_GetClockInputHz+0x13c>)
1a001d9e:	685b      	ldr	r3, [r3, #4]
1a001da0:	60fb      	str	r3, [r7, #12]
1a001da2:	e02c      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001da4:	f7ff ff02 	bl	1a001bac <Chip_Clock_GetMainPLLHz>
1a001da8:	60f8      	str	r0, [r7, #12]
1a001daa:	e028      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001dac:	79fb      	ldrb	r3, [r7, #7]
1a001dae:	2100      	movs	r1, #0
1a001db0:	4618      	mov	r0, r3
1a001db2:	f7ff fdef 	bl	1a001994 <Chip_Clock_GetDivRate>
1a001db6:	60f8      	str	r0, [r7, #12]
1a001db8:	e021      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001dba:	79fb      	ldrb	r3, [r7, #7]
1a001dbc:	2101      	movs	r1, #1
1a001dbe:	4618      	mov	r0, r3
1a001dc0:	f7ff fde8 	bl	1a001994 <Chip_Clock_GetDivRate>
1a001dc4:	60f8      	str	r0, [r7, #12]
1a001dc6:	e01a      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001dc8:	79fb      	ldrb	r3, [r7, #7]
1a001dca:	2102      	movs	r1, #2
1a001dcc:	4618      	mov	r0, r3
1a001dce:	f7ff fde1 	bl	1a001994 <Chip_Clock_GetDivRate>
1a001dd2:	60f8      	str	r0, [r7, #12]
1a001dd4:	e013      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001dd6:	79fb      	ldrb	r3, [r7, #7]
1a001dd8:	2103      	movs	r1, #3
1a001dda:	4618      	mov	r0, r3
1a001ddc:	f7ff fdda 	bl	1a001994 <Chip_Clock_GetDivRate>
1a001de0:	60f8      	str	r0, [r7, #12]
1a001de2:	e00c      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001de4:	79fb      	ldrb	r3, [r7, #7]
1a001de6:	2104      	movs	r1, #4
1a001de8:	4618      	mov	r0, r3
1a001dea:	f7ff fdd3 	bl	1a001994 <Chip_Clock_GetDivRate>
1a001dee:	60f8      	str	r0, [r7, #12]
1a001df0:	e005      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001df2:	2300      	movs	r3, #0
1a001df4:	60fb      	str	r3, [r7, #12]
1a001df6:	e002      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001df8:	bf00      	nop
1a001dfa:	e000      	b.n	1a001dfe <Chip_Clock_GetClockInputHz+0x11a>
1a001dfc:	bf00      	nop
1a001dfe:	68fb      	ldr	r3, [r7, #12]
1a001e00:	4618      	mov	r0, r3
1a001e02:	3710      	adds	r7, #16
1a001e04:	46bd      	mov	sp, r7
1a001e06:	bd80      	pop	{r7, pc}
1a001e08:	00b71b00 	.word	0x00b71b00
1a001e0c:	40043000 	.word	0x40043000
1a001e10:	017d7840 	.word	0x017d7840
1a001e14:	02faf080 	.word	0x02faf080
1a001e18:	1a002264 	.word	0x1a002264
1a001e1c:	1a002268 	.word	0x1a002268
1a001e20:	10000448 	.word	0x10000448

1a001e24 <Chip_Clock_GetBaseClocktHz>:
1a001e24:	b580      	push	{r7, lr}
1a001e26:	b082      	sub	sp, #8
1a001e28:	af00      	add	r7, sp, #0
1a001e2a:	4603      	mov	r3, r0
1a001e2c:	71fb      	strb	r3, [r7, #7]
1a001e2e:	79fb      	ldrb	r3, [r7, #7]
1a001e30:	4618      	mov	r0, r3
1a001e32:	f000 f857 	bl	1a001ee4 <Chip_Clock_GetBaseClock>
1a001e36:	4603      	mov	r3, r0
1a001e38:	4618      	mov	r0, r3
1a001e3a:	f7ff ff53 	bl	1a001ce4 <Chip_Clock_GetClockInputHz>
1a001e3e:	4603      	mov	r3, r0
1a001e40:	4618      	mov	r0, r3
1a001e42:	3708      	adds	r7, #8
1a001e44:	46bd      	mov	sp, r7
1a001e46:	bd80      	pop	{r7, pc}

1a001e48 <Chip_Clock_SetBaseClock>:
1a001e48:	b490      	push	{r4, r7}
1a001e4a:	b084      	sub	sp, #16
1a001e4c:	af00      	add	r7, sp, #0
1a001e4e:	4604      	mov	r4, r0
1a001e50:	4608      	mov	r0, r1
1a001e52:	4611      	mov	r1, r2
1a001e54:	461a      	mov	r2, r3
1a001e56:	4623      	mov	r3, r4
1a001e58:	71fb      	strb	r3, [r7, #7]
1a001e5a:	4603      	mov	r3, r0
1a001e5c:	71bb      	strb	r3, [r7, #6]
1a001e5e:	460b      	mov	r3, r1
1a001e60:	717b      	strb	r3, [r7, #5]
1a001e62:	4613      	mov	r3, r2
1a001e64:	713b      	strb	r3, [r7, #4]
1a001e66:	4a1d      	ldr	r2, [pc, #116]	; (1a001edc <Chip_Clock_SetBaseClock+0x94>)
1a001e68:	79fb      	ldrb	r3, [r7, #7]
1a001e6a:	3316      	adds	r3, #22
1a001e6c:	009b      	lsls	r3, r3, #2
1a001e6e:	4413      	add	r3, r2
1a001e70:	685b      	ldr	r3, [r3, #4]
1a001e72:	60fb      	str	r3, [r7, #12]
1a001e74:	79fb      	ldrb	r3, [r7, #7]
1a001e76:	2b1b      	cmp	r3, #27
1a001e78:	d822      	bhi.n	1a001ec0 <Chip_Clock_SetBaseClock+0x78>
1a001e7a:	79bb      	ldrb	r3, [r7, #6]
1a001e7c:	2b11      	cmp	r3, #17
1a001e7e:	d028      	beq.n	1a001ed2 <Chip_Clock_SetBaseClock+0x8a>
1a001e80:	68fa      	ldr	r2, [r7, #12]
1a001e82:	4b17      	ldr	r3, [pc, #92]	; (1a001ee0 <Chip_Clock_SetBaseClock+0x98>)
1a001e84:	4013      	ands	r3, r2
1a001e86:	60fb      	str	r3, [r7, #12]
1a001e88:	797b      	ldrb	r3, [r7, #5]
1a001e8a:	2b00      	cmp	r3, #0
1a001e8c:	d003      	beq.n	1a001e96 <Chip_Clock_SetBaseClock+0x4e>
1a001e8e:	68fb      	ldr	r3, [r7, #12]
1a001e90:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001e94:	60fb      	str	r3, [r7, #12]
1a001e96:	793b      	ldrb	r3, [r7, #4]
1a001e98:	2b00      	cmp	r3, #0
1a001e9a:	d003      	beq.n	1a001ea4 <Chip_Clock_SetBaseClock+0x5c>
1a001e9c:	68fb      	ldr	r3, [r7, #12]
1a001e9e:	f043 0301 	orr.w	r3, r3, #1
1a001ea2:	60fb      	str	r3, [r7, #12]
1a001ea4:	79bb      	ldrb	r3, [r7, #6]
1a001ea6:	061b      	lsls	r3, r3, #24
1a001ea8:	461a      	mov	r2, r3
1a001eaa:	68fb      	ldr	r3, [r7, #12]
1a001eac:	4313      	orrs	r3, r2
1a001eae:	60fb      	str	r3, [r7, #12]
1a001eb0:	4a0a      	ldr	r2, [pc, #40]	; (1a001edc <Chip_Clock_SetBaseClock+0x94>)
1a001eb2:	79fb      	ldrb	r3, [r7, #7]
1a001eb4:	3316      	adds	r3, #22
1a001eb6:	009b      	lsls	r3, r3, #2
1a001eb8:	4413      	add	r3, r2
1a001eba:	68fa      	ldr	r2, [r7, #12]
1a001ebc:	605a      	str	r2, [r3, #4]
1a001ebe:	e008      	b.n	1a001ed2 <Chip_Clock_SetBaseClock+0x8a>
1a001ec0:	4906      	ldr	r1, [pc, #24]	; (1a001edc <Chip_Clock_SetBaseClock+0x94>)
1a001ec2:	79fb      	ldrb	r3, [r7, #7]
1a001ec4:	68fa      	ldr	r2, [r7, #12]
1a001ec6:	f042 0201 	orr.w	r2, r2, #1
1a001eca:	3316      	adds	r3, #22
1a001ecc:	009b      	lsls	r3, r3, #2
1a001ece:	440b      	add	r3, r1
1a001ed0:	605a      	str	r2, [r3, #4]
1a001ed2:	bf00      	nop
1a001ed4:	3710      	adds	r7, #16
1a001ed6:	46bd      	mov	sp, r7
1a001ed8:	bc90      	pop	{r4, r7}
1a001eda:	4770      	bx	lr
1a001edc:	40050000 	.word	0x40050000
1a001ee0:	e0fff7fe 	.word	0xe0fff7fe

1a001ee4 <Chip_Clock_GetBaseClock>:
1a001ee4:	b480      	push	{r7}
1a001ee6:	b085      	sub	sp, #20
1a001ee8:	af00      	add	r7, sp, #0
1a001eea:	4603      	mov	r3, r0
1a001eec:	71fb      	strb	r3, [r7, #7]
1a001eee:	79fb      	ldrb	r3, [r7, #7]
1a001ef0:	2b1b      	cmp	r3, #27
1a001ef2:	d901      	bls.n	1a001ef8 <Chip_Clock_GetBaseClock+0x14>
1a001ef4:	2311      	movs	r3, #17
1a001ef6:	e013      	b.n	1a001f20 <Chip_Clock_GetBaseClock+0x3c>
1a001ef8:	4a0c      	ldr	r2, [pc, #48]	; (1a001f2c <Chip_Clock_GetBaseClock+0x48>)
1a001efa:	79fb      	ldrb	r3, [r7, #7]
1a001efc:	3316      	adds	r3, #22
1a001efe:	009b      	lsls	r3, r3, #2
1a001f00:	4413      	add	r3, r2
1a001f02:	685b      	ldr	r3, [r3, #4]
1a001f04:	60fb      	str	r3, [r7, #12]
1a001f06:	68fb      	ldr	r3, [r7, #12]
1a001f08:	f003 0301 	and.w	r3, r3, #1
1a001f0c:	2b00      	cmp	r3, #0
1a001f0e:	d001      	beq.n	1a001f14 <Chip_Clock_GetBaseClock+0x30>
1a001f10:	2311      	movs	r3, #17
1a001f12:	e005      	b.n	1a001f20 <Chip_Clock_GetBaseClock+0x3c>
1a001f14:	68fb      	ldr	r3, [r7, #12]
1a001f16:	0e1b      	lsrs	r3, r3, #24
1a001f18:	b2db      	uxtb	r3, r3
1a001f1a:	f003 031f 	and.w	r3, r3, #31
1a001f1e:	b2db      	uxtb	r3, r3
1a001f20:	4618      	mov	r0, r3
1a001f22:	3714      	adds	r7, #20
1a001f24:	46bd      	mov	sp, r7
1a001f26:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001f2a:	4770      	bx	lr
1a001f2c:	40050000 	.word	0x40050000

1a001f30 <Chip_Clock_EnableOpts>:
1a001f30:	b480      	push	{r7}
1a001f32:	b085      	sub	sp, #20
1a001f34:	af00      	add	r7, sp, #0
1a001f36:	603b      	str	r3, [r7, #0]
1a001f38:	4603      	mov	r3, r0
1a001f3a:	80fb      	strh	r3, [r7, #6]
1a001f3c:	460b      	mov	r3, r1
1a001f3e:	717b      	strb	r3, [r7, #5]
1a001f40:	4613      	mov	r3, r2
1a001f42:	713b      	strb	r3, [r7, #4]
1a001f44:	2301      	movs	r3, #1
1a001f46:	60fb      	str	r3, [r7, #12]
1a001f48:	797b      	ldrb	r3, [r7, #5]
1a001f4a:	2b00      	cmp	r3, #0
1a001f4c:	d003      	beq.n	1a001f56 <Chip_Clock_EnableOpts+0x26>
1a001f4e:	68fb      	ldr	r3, [r7, #12]
1a001f50:	f043 0302 	orr.w	r3, r3, #2
1a001f54:	60fb      	str	r3, [r7, #12]
1a001f56:	793b      	ldrb	r3, [r7, #4]
1a001f58:	2b00      	cmp	r3, #0
1a001f5a:	d003      	beq.n	1a001f64 <Chip_Clock_EnableOpts+0x34>
1a001f5c:	68fb      	ldr	r3, [r7, #12]
1a001f5e:	f043 0304 	orr.w	r3, r3, #4
1a001f62:	60fb      	str	r3, [r7, #12]
1a001f64:	683b      	ldr	r3, [r7, #0]
1a001f66:	2b02      	cmp	r3, #2
1a001f68:	d103      	bne.n	1a001f72 <Chip_Clock_EnableOpts+0x42>
1a001f6a:	68fb      	ldr	r3, [r7, #12]
1a001f6c:	f043 0320 	orr.w	r3, r3, #32
1a001f70:	60fb      	str	r3, [r7, #12]
1a001f72:	88fb      	ldrh	r3, [r7, #6]
1a001f74:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001f78:	d308      	bcc.n	1a001f8c <Chip_Clock_EnableOpts+0x5c>
1a001f7a:	490a      	ldr	r1, [pc, #40]	; (1a001fa4 <Chip_Clock_EnableOpts+0x74>)
1a001f7c:	88fb      	ldrh	r3, [r7, #6]
1a001f7e:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001f82:	3320      	adds	r3, #32
1a001f84:	68fa      	ldr	r2, [r7, #12]
1a001f86:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001f8a:	e005      	b.n	1a001f98 <Chip_Clock_EnableOpts+0x68>
1a001f8c:	4906      	ldr	r1, [pc, #24]	; (1a001fa8 <Chip_Clock_EnableOpts+0x78>)
1a001f8e:	88fb      	ldrh	r3, [r7, #6]
1a001f90:	3320      	adds	r3, #32
1a001f92:	68fa      	ldr	r2, [r7, #12]
1a001f94:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001f98:	bf00      	nop
1a001f9a:	3714      	adds	r7, #20
1a001f9c:	46bd      	mov	sp, r7
1a001f9e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001fa2:	4770      	bx	lr
1a001fa4:	40052000 	.word	0x40052000
1a001fa8:	40051000 	.word	0x40051000

1a001fac <Chip_Clock_Enable>:
1a001fac:	b480      	push	{r7}
1a001fae:	b083      	sub	sp, #12
1a001fb0:	af00      	add	r7, sp, #0
1a001fb2:	4603      	mov	r3, r0
1a001fb4:	80fb      	strh	r3, [r7, #6]
1a001fb6:	88fb      	ldrh	r3, [r7, #6]
1a001fb8:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001fbc:	d310      	bcc.n	1a001fe0 <Chip_Clock_Enable+0x34>
1a001fbe:	4a11      	ldr	r2, [pc, #68]	; (1a002004 <Chip_Clock_Enable+0x58>)
1a001fc0:	88fb      	ldrh	r3, [r7, #6]
1a001fc2:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001fc6:	3320      	adds	r3, #32
1a001fc8:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001fcc:	490d      	ldr	r1, [pc, #52]	; (1a002004 <Chip_Clock_Enable+0x58>)
1a001fce:	88fb      	ldrh	r3, [r7, #6]
1a001fd0:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001fd4:	f042 0201 	orr.w	r2, r2, #1
1a001fd8:	3320      	adds	r3, #32
1a001fda:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001fde:	e00b      	b.n	1a001ff8 <Chip_Clock_Enable+0x4c>
1a001fe0:	4a09      	ldr	r2, [pc, #36]	; (1a002008 <Chip_Clock_Enable+0x5c>)
1a001fe2:	88fb      	ldrh	r3, [r7, #6]
1a001fe4:	3320      	adds	r3, #32
1a001fe6:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001fea:	4907      	ldr	r1, [pc, #28]	; (1a002008 <Chip_Clock_Enable+0x5c>)
1a001fec:	88fb      	ldrh	r3, [r7, #6]
1a001fee:	f042 0201 	orr.w	r2, r2, #1
1a001ff2:	3320      	adds	r3, #32
1a001ff4:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001ff8:	bf00      	nop
1a001ffa:	370c      	adds	r7, #12
1a001ffc:	46bd      	mov	sp, r7
1a001ffe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002002:	4770      	bx	lr
1a002004:	40052000 	.word	0x40052000
1a002008:	40051000 	.word	0x40051000

1a00200c <Chip_Clock_GetRate>:
1a00200c:	b580      	push	{r7, lr}
1a00200e:	b086      	sub	sp, #24
1a002010:	af00      	add	r7, sp, #0
1a002012:	4603      	mov	r3, r0
1a002014:	80fb      	strh	r3, [r7, #6]
1a002016:	88fb      	ldrh	r3, [r7, #6]
1a002018:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a00201c:	d308      	bcc.n	1a002030 <Chip_Clock_GetRate+0x24>
1a00201e:	4a1b      	ldr	r2, [pc, #108]	; (1a00208c <Chip_Clock_GetRate+0x80>)
1a002020:	88fb      	ldrh	r3, [r7, #6]
1a002022:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002026:	3320      	adds	r3, #32
1a002028:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a00202c:	617b      	str	r3, [r7, #20]
1a00202e:	e005      	b.n	1a00203c <Chip_Clock_GetRate+0x30>
1a002030:	4a17      	ldr	r2, [pc, #92]	; (1a002090 <Chip_Clock_GetRate+0x84>)
1a002032:	88fb      	ldrh	r3, [r7, #6]
1a002034:	3320      	adds	r3, #32
1a002036:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a00203a:	617b      	str	r3, [r7, #20]
1a00203c:	697b      	ldr	r3, [r7, #20]
1a00203e:	f003 0301 	and.w	r3, r3, #1
1a002042:	2b00      	cmp	r3, #0
1a002044:	d01b      	beq.n	1a00207e <Chip_Clock_GetRate+0x72>
1a002046:	88fb      	ldrh	r3, [r7, #6]
1a002048:	4618      	mov	r0, r3
1a00204a:	f7ff fcc3 	bl	1a0019d4 <Chip_Clock_FindBaseClock>
1a00204e:	4603      	mov	r3, r0
1a002050:	72fb      	strb	r3, [r7, #11]
1a002052:	7afb      	ldrb	r3, [r7, #11]
1a002054:	4618      	mov	r0, r3
1a002056:	f7ff fee5 	bl	1a001e24 <Chip_Clock_GetBaseClocktHz>
1a00205a:	60f8      	str	r0, [r7, #12]
1a00205c:	697b      	ldr	r3, [r7, #20]
1a00205e:	095b      	lsrs	r3, r3, #5
1a002060:	f003 0307 	and.w	r3, r3, #7
1a002064:	2b00      	cmp	r3, #0
1a002066:	d102      	bne.n	1a00206e <Chip_Clock_GetRate+0x62>
1a002068:	2301      	movs	r3, #1
1a00206a:	613b      	str	r3, [r7, #16]
1a00206c:	e001      	b.n	1a002072 <Chip_Clock_GetRate+0x66>
1a00206e:	2302      	movs	r3, #2
1a002070:	613b      	str	r3, [r7, #16]
1a002072:	68fa      	ldr	r2, [r7, #12]
1a002074:	693b      	ldr	r3, [r7, #16]
1a002076:	fbb2 f3f3 	udiv	r3, r2, r3
1a00207a:	60fb      	str	r3, [r7, #12]
1a00207c:	e001      	b.n	1a002082 <Chip_Clock_GetRate+0x76>
1a00207e:	2300      	movs	r3, #0
1a002080:	60fb      	str	r3, [r7, #12]
1a002082:	68fb      	ldr	r3, [r7, #12]
1a002084:	4618      	mov	r0, r3
1a002086:	3718      	adds	r7, #24
1a002088:	46bd      	mov	sp, r7
1a00208a:	bd80      	pop	{r7, pc}
1a00208c:	40052000 	.word	0x40052000
1a002090:	40051000 	.word	0x40051000

1a002094 <SystemCoreClockUpdate>:
1a002094:	b580      	push	{r7, lr}
1a002096:	af00      	add	r7, sp, #0
1a002098:	2069      	movs	r0, #105	; 0x69
1a00209a:	f7ff ffb7 	bl	1a00200c <Chip_Clock_GetRate>
1a00209e:	4602      	mov	r2, r0
1a0020a0:	4b01      	ldr	r3, [pc, #4]	; (1a0020a8 <SystemCoreClockUpdate+0x14>)
1a0020a2:	601a      	str	r2, [r3, #0]
1a0020a4:	bf00      	nop
1a0020a6:	bd80      	pop	{r7, pc}
1a0020a8:	10000458 	.word	0x10000458

1a0020ac <Chip_GPIO_Init>:
1a0020ac:	b480      	push	{r7}
1a0020ae:	b083      	sub	sp, #12
1a0020b0:	af00      	add	r7, sp, #0
1a0020b2:	6078      	str	r0, [r7, #4]
1a0020b4:	bf00      	nop
1a0020b6:	370c      	adds	r7, #12
1a0020b8:	46bd      	mov	sp, r7
1a0020ba:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0020be:	4770      	bx	lr

1a0020c0 <Chip_TIMER_GetClockIndex>:
1a0020c0:	b480      	push	{r7}
1a0020c2:	b085      	sub	sp, #20
1a0020c4:	af00      	add	r7, sp, #0
1a0020c6:	6078      	str	r0, [r7, #4]
1a0020c8:	687b      	ldr	r3, [r7, #4]
1a0020ca:	4a0e      	ldr	r2, [pc, #56]	; (1a002104 <Chip_TIMER_GetClockIndex+0x44>)
1a0020cc:	4293      	cmp	r3, r2
1a0020ce:	d102      	bne.n	1a0020d6 <Chip_TIMER_GetClockIndex+0x16>
1a0020d0:	23a4      	movs	r3, #164	; 0xa4
1a0020d2:	81fb      	strh	r3, [r7, #14]
1a0020d4:	e00f      	b.n	1a0020f6 <Chip_TIMER_GetClockIndex+0x36>
1a0020d6:	687b      	ldr	r3, [r7, #4]
1a0020d8:	4a0b      	ldr	r2, [pc, #44]	; (1a002108 <Chip_TIMER_GetClockIndex+0x48>)
1a0020da:	4293      	cmp	r3, r2
1a0020dc:	d102      	bne.n	1a0020e4 <Chip_TIMER_GetClockIndex+0x24>
1a0020de:	23a3      	movs	r3, #163	; 0xa3
1a0020e0:	81fb      	strh	r3, [r7, #14]
1a0020e2:	e008      	b.n	1a0020f6 <Chip_TIMER_GetClockIndex+0x36>
1a0020e4:	687b      	ldr	r3, [r7, #4]
1a0020e6:	4a09      	ldr	r2, [pc, #36]	; (1a00210c <Chip_TIMER_GetClockIndex+0x4c>)
1a0020e8:	4293      	cmp	r3, r2
1a0020ea:	d102      	bne.n	1a0020f2 <Chip_TIMER_GetClockIndex+0x32>
1a0020ec:	2385      	movs	r3, #133	; 0x85
1a0020ee:	81fb      	strh	r3, [r7, #14]
1a0020f0:	e001      	b.n	1a0020f6 <Chip_TIMER_GetClockIndex+0x36>
1a0020f2:	2384      	movs	r3, #132	; 0x84
1a0020f4:	81fb      	strh	r3, [r7, #14]
1a0020f6:	89fb      	ldrh	r3, [r7, #14]
1a0020f8:	4618      	mov	r0, r3
1a0020fa:	3714      	adds	r7, #20
1a0020fc:	46bd      	mov	sp, r7
1a0020fe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002102:	4770      	bx	lr
1a002104:	400c4000 	.word	0x400c4000
1a002108:	400c3000 	.word	0x400c3000
1a00210c:	40085000 	.word	0x40085000

1a002110 <Chip_TIMER_Init>:
1a002110:	b580      	push	{r7, lr}
1a002112:	b082      	sub	sp, #8
1a002114:	af00      	add	r7, sp, #0
1a002116:	6078      	str	r0, [r7, #4]
1a002118:	6878      	ldr	r0, [r7, #4]
1a00211a:	f7ff ffd1 	bl	1a0020c0 <Chip_TIMER_GetClockIndex>
1a00211e:	4603      	mov	r3, r0
1a002120:	4618      	mov	r0, r3
1a002122:	f7ff ff43 	bl	1a001fac <Chip_Clock_Enable>
1a002126:	bf00      	nop
1a002128:	3708      	adds	r7, #8
1a00212a:	46bd      	mov	sp, r7
1a00212c:	bd80      	pop	{r7, pc}
1a00212e:	Address 0x000000001a00212e is out of bounds.


1a002130 <memcpy>:
1a002130:	4684      	mov	ip, r0
1a002132:	ea41 0300 	orr.w	r3, r1, r0
1a002136:	f013 0303 	ands.w	r3, r3, #3
1a00213a:	d16d      	bne.n	1a002218 <memcpy+0xe8>
1a00213c:	3a40      	subs	r2, #64	; 0x40
1a00213e:	d341      	bcc.n	1a0021c4 <memcpy+0x94>
1a002140:	f851 3b04 	ldr.w	r3, [r1], #4
1a002144:	f840 3b04 	str.w	r3, [r0], #4
1a002148:	f851 3b04 	ldr.w	r3, [r1], #4
1a00214c:	f840 3b04 	str.w	r3, [r0], #4
1a002150:	f851 3b04 	ldr.w	r3, [r1], #4
1a002154:	f840 3b04 	str.w	r3, [r0], #4
1a002158:	f851 3b04 	ldr.w	r3, [r1], #4
1a00215c:	f840 3b04 	str.w	r3, [r0], #4
1a002160:	f851 3b04 	ldr.w	r3, [r1], #4
1a002164:	f840 3b04 	str.w	r3, [r0], #4
1a002168:	f851 3b04 	ldr.w	r3, [r1], #4
1a00216c:	f840 3b04 	str.w	r3, [r0], #4
1a002170:	f851 3b04 	ldr.w	r3, [r1], #4
1a002174:	f840 3b04 	str.w	r3, [r0], #4
1a002178:	f851 3b04 	ldr.w	r3, [r1], #4
1a00217c:	f840 3b04 	str.w	r3, [r0], #4
1a002180:	f851 3b04 	ldr.w	r3, [r1], #4
1a002184:	f840 3b04 	str.w	r3, [r0], #4
1a002188:	f851 3b04 	ldr.w	r3, [r1], #4
1a00218c:	f840 3b04 	str.w	r3, [r0], #4
1a002190:	f851 3b04 	ldr.w	r3, [r1], #4
1a002194:	f840 3b04 	str.w	r3, [r0], #4
1a002198:	f851 3b04 	ldr.w	r3, [r1], #4
1a00219c:	f840 3b04 	str.w	r3, [r0], #4
1a0021a0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0021a4:	f840 3b04 	str.w	r3, [r0], #4
1a0021a8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0021ac:	f840 3b04 	str.w	r3, [r0], #4
1a0021b0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0021b4:	f840 3b04 	str.w	r3, [r0], #4
1a0021b8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0021bc:	f840 3b04 	str.w	r3, [r0], #4
1a0021c0:	3a40      	subs	r2, #64	; 0x40
1a0021c2:	d2bd      	bcs.n	1a002140 <memcpy+0x10>
1a0021c4:	3230      	adds	r2, #48	; 0x30
1a0021c6:	d311      	bcc.n	1a0021ec <memcpy+0xbc>
1a0021c8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0021cc:	f840 3b04 	str.w	r3, [r0], #4
1a0021d0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0021d4:	f840 3b04 	str.w	r3, [r0], #4
1a0021d8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0021dc:	f840 3b04 	str.w	r3, [r0], #4
1a0021e0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0021e4:	f840 3b04 	str.w	r3, [r0], #4
1a0021e8:	3a10      	subs	r2, #16
1a0021ea:	d2ed      	bcs.n	1a0021c8 <memcpy+0x98>
1a0021ec:	320c      	adds	r2, #12
1a0021ee:	d305      	bcc.n	1a0021fc <memcpy+0xcc>
1a0021f0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0021f4:	f840 3b04 	str.w	r3, [r0], #4
1a0021f8:	3a04      	subs	r2, #4
1a0021fa:	d2f9      	bcs.n	1a0021f0 <memcpy+0xc0>
1a0021fc:	3204      	adds	r2, #4
1a0021fe:	d008      	beq.n	1a002212 <memcpy+0xe2>
1a002200:	07d2      	lsls	r2, r2, #31
1a002202:	bf1c      	itt	ne
1a002204:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a002208:	f800 3b01 	strbne.w	r3, [r0], #1
1a00220c:	d301      	bcc.n	1a002212 <memcpy+0xe2>
1a00220e:	880b      	ldrh	r3, [r1, #0]
1a002210:	8003      	strh	r3, [r0, #0]
1a002212:	4660      	mov	r0, ip
1a002214:	4770      	bx	lr
1a002216:	bf00      	nop
1a002218:	2a08      	cmp	r2, #8
1a00221a:	d313      	bcc.n	1a002244 <memcpy+0x114>
1a00221c:	078b      	lsls	r3, r1, #30
1a00221e:	d08d      	beq.n	1a00213c <memcpy+0xc>
1a002220:	f010 0303 	ands.w	r3, r0, #3
1a002224:	d08a      	beq.n	1a00213c <memcpy+0xc>
1a002226:	f1c3 0304 	rsb	r3, r3, #4
1a00222a:	1ad2      	subs	r2, r2, r3
1a00222c:	07db      	lsls	r3, r3, #31
1a00222e:	bf1c      	itt	ne
1a002230:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a002234:	f800 3b01 	strbne.w	r3, [r0], #1
1a002238:	d380      	bcc.n	1a00213c <memcpy+0xc>
1a00223a:	f831 3b02 	ldrh.w	r3, [r1], #2
1a00223e:	f820 3b02 	strh.w	r3, [r0], #2
1a002242:	e77b      	b.n	1a00213c <memcpy+0xc>
1a002244:	3a04      	subs	r2, #4
1a002246:	d3d9      	bcc.n	1a0021fc <memcpy+0xcc>
1a002248:	3a01      	subs	r2, #1
1a00224a:	f811 3b01 	ldrb.w	r3, [r1], #1
1a00224e:	f800 3b01 	strb.w	r3, [r0], #1
1a002252:	d2f9      	bcs.n	1a002248 <memcpy+0x118>
1a002254:	780b      	ldrb	r3, [r1, #0]
1a002256:	7003      	strb	r3, [r0, #0]
1a002258:	784b      	ldrb	r3, [r1, #1]
1a00225a:	7043      	strb	r3, [r0, #1]
1a00225c:	788b      	ldrb	r3, [r1, #2]
1a00225e:	7083      	strb	r3, [r0, #2]
1a002260:	4660      	mov	r0, ip
1a002262:	4770      	bx	lr

1a002264 <ExtRateIn>:
1a002264:	0000 0000                                   ....

1a002268 <OscRateIn>:
1a002268:	1b00 00b7                                   ....

1a00226c <InitClkStates>:
1a00226c:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a00227c:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a00228c:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a00229c:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a0022ac:	111a 0001 111b 0001                         ........

1a0022b4 <UART_PClock>:
1a0022b4:	0081 0082 00a1 00a2                         ........

1a0022bc <UART_BClock>:
1a0022bc:	01c2 01a2 0182 0162                         ......b.

1a0022c4 <periph_to_base>:
1a0022c4:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a0022d4:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a0022e4:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a0022f4:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a002304:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a002314:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a002324:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a002334:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a00233c <_init>:
1a00233c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00233e:	bf00      	nop

Disassembly of section .fini:

1a002340 <_fini>:
1a002340:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002342:	bf00      	nop
