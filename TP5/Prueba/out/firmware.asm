
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 01 06 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	d5 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000cc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a002088 	.word	0x1a002088
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000

1a000120 <__bss_section_table_>:
1a000120:	10000000 	.word	0x10000000
1a000124:	000000e0 	.word	0x000000e0

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

1a000394 <Chip_SCU_PinMuxSet>:
1a000394:	b480      	push	{r7}
1a000396:	b083      	sub	sp, #12
1a000398:	af00      	add	r7, sp, #0
1a00039a:	4603      	mov	r3, r0
1a00039c:	71fb      	strb	r3, [r7, #7]
1a00039e:	460b      	mov	r3, r1
1a0003a0:	71bb      	strb	r3, [r7, #6]
1a0003a2:	4613      	mov	r3, r2
1a0003a4:	80bb      	strh	r3, [r7, #4]
1a0003a6:	4807      	ldr	r0, [pc, #28]	; (1a0003c4 <Chip_SCU_PinMuxSet+0x30>)
1a0003a8:	79f9      	ldrb	r1, [r7, #7]
1a0003aa:	79bb      	ldrb	r3, [r7, #6]
1a0003ac:	88ba      	ldrh	r2, [r7, #4]
1a0003ae:	0149      	lsls	r1, r1, #5
1a0003b0:	440b      	add	r3, r1
1a0003b2:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a0003b6:	bf00      	nop
1a0003b8:	370c      	adds	r7, #12
1a0003ba:	46bd      	mov	sp, r7
1a0003bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0003c0:	4770      	bx	lr
1a0003c2:	bf00      	nop
1a0003c4:	40086000 	.word	0x40086000

1a0003c8 <Chip_SCU_PinMux>:
1a0003c8:	b590      	push	{r4, r7, lr}
1a0003ca:	b083      	sub	sp, #12
1a0003cc:	af00      	add	r7, sp, #0
1a0003ce:	4604      	mov	r4, r0
1a0003d0:	4608      	mov	r0, r1
1a0003d2:	4611      	mov	r1, r2
1a0003d4:	461a      	mov	r2, r3
1a0003d6:	4623      	mov	r3, r4
1a0003d8:	71fb      	strb	r3, [r7, #7]
1a0003da:	4603      	mov	r3, r0
1a0003dc:	71bb      	strb	r3, [r7, #6]
1a0003de:	460b      	mov	r3, r1
1a0003e0:	80bb      	strh	r3, [r7, #4]
1a0003e2:	4613      	mov	r3, r2
1a0003e4:	70fb      	strb	r3, [r7, #3]
1a0003e6:	78fb      	ldrb	r3, [r7, #3]
1a0003e8:	b29a      	uxth	r2, r3
1a0003ea:	88bb      	ldrh	r3, [r7, #4]
1a0003ec:	4313      	orrs	r3, r2
1a0003ee:	b29a      	uxth	r2, r3
1a0003f0:	79b9      	ldrb	r1, [r7, #6]
1a0003f2:	79fb      	ldrb	r3, [r7, #7]
1a0003f4:	4618      	mov	r0, r3
1a0003f6:	f7ff ffcd 	bl	1a000394 <Chip_SCU_PinMuxSet>
1a0003fa:	bf00      	nop
1a0003fc:	370c      	adds	r7, #12
1a0003fe:	46bd      	mov	sp, r7
1a000400:	bd90      	pop	{r4, r7, pc}

1a000402 <Chip_GPIO_SetPinState>:
1a000402:	b480      	push	{r7}
1a000404:	b083      	sub	sp, #12
1a000406:	af00      	add	r7, sp, #0
1a000408:	6078      	str	r0, [r7, #4]
1a00040a:	4608      	mov	r0, r1
1a00040c:	4611      	mov	r1, r2
1a00040e:	461a      	mov	r2, r3
1a000410:	4603      	mov	r3, r0
1a000412:	70fb      	strb	r3, [r7, #3]
1a000414:	460b      	mov	r3, r1
1a000416:	70bb      	strb	r3, [r7, #2]
1a000418:	4613      	mov	r3, r2
1a00041a:	707b      	strb	r3, [r7, #1]
1a00041c:	78fa      	ldrb	r2, [r7, #3]
1a00041e:	78bb      	ldrb	r3, [r7, #2]
1a000420:	7878      	ldrb	r0, [r7, #1]
1a000422:	6879      	ldr	r1, [r7, #4]
1a000424:	0152      	lsls	r2, r2, #5
1a000426:	440a      	add	r2, r1
1a000428:	4413      	add	r3, r2
1a00042a:	4602      	mov	r2, r0
1a00042c:	701a      	strb	r2, [r3, #0]
1a00042e:	bf00      	nop
1a000430:	370c      	adds	r7, #12
1a000432:	46bd      	mov	sp, r7
1a000434:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000438:	4770      	bx	lr

1a00043a <Chip_GPIO_SetPinDIROutput>:
1a00043a:	b480      	push	{r7}
1a00043c:	b083      	sub	sp, #12
1a00043e:	af00      	add	r7, sp, #0
1a000440:	6078      	str	r0, [r7, #4]
1a000442:	460b      	mov	r3, r1
1a000444:	70fb      	strb	r3, [r7, #3]
1a000446:	4613      	mov	r3, r2
1a000448:	70bb      	strb	r3, [r7, #2]
1a00044a:	78fa      	ldrb	r2, [r7, #3]
1a00044c:	687b      	ldr	r3, [r7, #4]
1a00044e:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000452:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000456:	78bb      	ldrb	r3, [r7, #2]
1a000458:	2201      	movs	r2, #1
1a00045a:	fa02 f303 	lsl.w	r3, r2, r3
1a00045e:	78fa      	ldrb	r2, [r7, #3]
1a000460:	4319      	orrs	r1, r3
1a000462:	687b      	ldr	r3, [r7, #4]
1a000464:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000468:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a00046c:	bf00      	nop
1a00046e:	370c      	adds	r7, #12
1a000470:	46bd      	mov	sp, r7
1a000472:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000476:	4770      	bx	lr

1a000478 <Chip_GPIO_SetPinDIRInput>:
1a000478:	b480      	push	{r7}
1a00047a:	b083      	sub	sp, #12
1a00047c:	af00      	add	r7, sp, #0
1a00047e:	6078      	str	r0, [r7, #4]
1a000480:	460b      	mov	r3, r1
1a000482:	70fb      	strb	r3, [r7, #3]
1a000484:	4613      	mov	r3, r2
1a000486:	70bb      	strb	r3, [r7, #2]
1a000488:	78fa      	ldrb	r2, [r7, #3]
1a00048a:	687b      	ldr	r3, [r7, #4]
1a00048c:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000490:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000494:	78bb      	ldrb	r3, [r7, #2]
1a000496:	2201      	movs	r2, #1
1a000498:	fa02 f303 	lsl.w	r3, r2, r3
1a00049c:	43db      	mvns	r3, r3
1a00049e:	78fa      	ldrb	r2, [r7, #3]
1a0004a0:	4019      	ands	r1, r3
1a0004a2:	687b      	ldr	r3, [r7, #4]
1a0004a4:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0004a8:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0004ac:	bf00      	nop
1a0004ae:	370c      	adds	r7, #12
1a0004b0:	46bd      	mov	sp, r7
1a0004b2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004b6:	4770      	bx	lr

1a0004b8 <systemInit>:
1a0004b8:	b580      	push	{r7, lr}
1a0004ba:	af00      	add	r7, sp, #0
1a0004bc:	f000 fb4e 	bl	1a000b5c <Chip_SetupXtalClocking>
1a0004c0:	f001 fc5a 	bl	1a001d78 <SystemCoreClockUpdate>
1a0004c4:	f000 fa26 	bl	1a000914 <fpuInit>
1a0004c8:	484c      	ldr	r0, [pc, #304]	; (1a0005fc <systemInit+0x144>)
1a0004ca:	f001 fc61 	bl	1a001d90 <Chip_GPIO_Init>
1a0004ce:	2304      	movs	r3, #4
1a0004d0:	2200      	movs	r2, #0
1a0004d2:	2100      	movs	r1, #0
1a0004d4:	2002      	movs	r0, #2
1a0004d6:	f7ff ff77 	bl	1a0003c8 <Chip_SCU_PinMux>
1a0004da:	2304      	movs	r3, #4
1a0004dc:	2200      	movs	r2, #0
1a0004de:	2101      	movs	r1, #1
1a0004e0:	2002      	movs	r0, #2
1a0004e2:	f7ff ff71 	bl	1a0003c8 <Chip_SCU_PinMux>
1a0004e6:	2304      	movs	r3, #4
1a0004e8:	2200      	movs	r2, #0
1a0004ea:	2102      	movs	r1, #2
1a0004ec:	2002      	movs	r0, #2
1a0004ee:	f7ff ff6b 	bl	1a0003c8 <Chip_SCU_PinMux>
1a0004f2:	2300      	movs	r3, #0
1a0004f4:	2200      	movs	r2, #0
1a0004f6:	210a      	movs	r1, #10
1a0004f8:	2002      	movs	r0, #2
1a0004fa:	f7ff ff65 	bl	1a0003c8 <Chip_SCU_PinMux>
1a0004fe:	2300      	movs	r3, #0
1a000500:	2200      	movs	r2, #0
1a000502:	210b      	movs	r1, #11
1a000504:	2002      	movs	r0, #2
1a000506:	f7ff ff5f 	bl	1a0003c8 <Chip_SCU_PinMux>
1a00050a:	2300      	movs	r3, #0
1a00050c:	2200      	movs	r2, #0
1a00050e:	210c      	movs	r1, #12
1a000510:	2002      	movs	r0, #2
1a000512:	f7ff ff59 	bl	1a0003c8 <Chip_SCU_PinMux>
1a000516:	220e      	movs	r2, #14
1a000518:	2100      	movs	r1, #0
1a00051a:	4838      	ldr	r0, [pc, #224]	; (1a0005fc <systemInit+0x144>)
1a00051c:	f7ff ff8d 	bl	1a00043a <Chip_GPIO_SetPinDIROutput>
1a000520:	220b      	movs	r2, #11
1a000522:	2101      	movs	r1, #1
1a000524:	4835      	ldr	r0, [pc, #212]	; (1a0005fc <systemInit+0x144>)
1a000526:	f7ff ff88 	bl	1a00043a <Chip_GPIO_SetPinDIROutput>
1a00052a:	220c      	movs	r2, #12
1a00052c:	2101      	movs	r1, #1
1a00052e:	4833      	ldr	r0, [pc, #204]	; (1a0005fc <systemInit+0x144>)
1a000530:	f7ff ff83 	bl	1a00043a <Chip_GPIO_SetPinDIROutput>
1a000534:	2200      	movs	r2, #0
1a000536:	2105      	movs	r1, #5
1a000538:	4830      	ldr	r0, [pc, #192]	; (1a0005fc <systemInit+0x144>)
1a00053a:	f7ff ff7e 	bl	1a00043a <Chip_GPIO_SetPinDIROutput>
1a00053e:	2201      	movs	r2, #1
1a000540:	2105      	movs	r1, #5
1a000542:	482e      	ldr	r0, [pc, #184]	; (1a0005fc <systemInit+0x144>)
1a000544:	f7ff ff79 	bl	1a00043a <Chip_GPIO_SetPinDIROutput>
1a000548:	2202      	movs	r2, #2
1a00054a:	2105      	movs	r1, #5
1a00054c:	482b      	ldr	r0, [pc, #172]	; (1a0005fc <systemInit+0x144>)
1a00054e:	f7ff ff74 	bl	1a00043a <Chip_GPIO_SetPinDIROutput>
1a000552:	2300      	movs	r3, #0
1a000554:	220e      	movs	r2, #14
1a000556:	2100      	movs	r1, #0
1a000558:	4828      	ldr	r0, [pc, #160]	; (1a0005fc <systemInit+0x144>)
1a00055a:	f7ff ff52 	bl	1a000402 <Chip_GPIO_SetPinState>
1a00055e:	2300      	movs	r3, #0
1a000560:	220b      	movs	r2, #11
1a000562:	2100      	movs	r1, #0
1a000564:	4825      	ldr	r0, [pc, #148]	; (1a0005fc <systemInit+0x144>)
1a000566:	f7ff ff4c 	bl	1a000402 <Chip_GPIO_SetPinState>
1a00056a:	2300      	movs	r3, #0
1a00056c:	220c      	movs	r2, #12
1a00056e:	2100      	movs	r1, #0
1a000570:	4822      	ldr	r0, [pc, #136]	; (1a0005fc <systemInit+0x144>)
1a000572:	f7ff ff46 	bl	1a000402 <Chip_GPIO_SetPinState>
1a000576:	2300      	movs	r3, #0
1a000578:	2200      	movs	r2, #0
1a00057a:	2105      	movs	r1, #5
1a00057c:	481f      	ldr	r0, [pc, #124]	; (1a0005fc <systemInit+0x144>)
1a00057e:	f7ff ff40 	bl	1a000402 <Chip_GPIO_SetPinState>
1a000582:	2300      	movs	r3, #0
1a000584:	2201      	movs	r2, #1
1a000586:	2105      	movs	r1, #5
1a000588:	481c      	ldr	r0, [pc, #112]	; (1a0005fc <systemInit+0x144>)
1a00058a:	f7ff ff3a 	bl	1a000402 <Chip_GPIO_SetPinState>
1a00058e:	2300      	movs	r3, #0
1a000590:	2202      	movs	r2, #2
1a000592:	2105      	movs	r1, #5
1a000594:	4819      	ldr	r0, [pc, #100]	; (1a0005fc <systemInit+0x144>)
1a000596:	f7ff ff34 	bl	1a000402 <Chip_GPIO_SetPinState>
1a00059a:	2300      	movs	r3, #0
1a00059c:	22c0      	movs	r2, #192	; 0xc0
1a00059e:	2100      	movs	r1, #0
1a0005a0:	2001      	movs	r0, #1
1a0005a2:	f7ff ff11 	bl	1a0003c8 <Chip_SCU_PinMux>
1a0005a6:	2300      	movs	r3, #0
1a0005a8:	22c0      	movs	r2, #192	; 0xc0
1a0005aa:	2101      	movs	r1, #1
1a0005ac:	2001      	movs	r0, #1
1a0005ae:	f7ff ff0b 	bl	1a0003c8 <Chip_SCU_PinMux>
1a0005b2:	2300      	movs	r3, #0
1a0005b4:	22c0      	movs	r2, #192	; 0xc0
1a0005b6:	2102      	movs	r1, #2
1a0005b8:	2001      	movs	r0, #1
1a0005ba:	f7ff ff05 	bl	1a0003c8 <Chip_SCU_PinMux>
1a0005be:	2300      	movs	r3, #0
1a0005c0:	22c0      	movs	r2, #192	; 0xc0
1a0005c2:	2106      	movs	r1, #6
1a0005c4:	2001      	movs	r0, #1
1a0005c6:	f7ff feff 	bl	1a0003c8 <Chip_SCU_PinMux>
1a0005ca:	2204      	movs	r2, #4
1a0005cc:	2100      	movs	r1, #0
1a0005ce:	480b      	ldr	r0, [pc, #44]	; (1a0005fc <systemInit+0x144>)
1a0005d0:	f7ff ff52 	bl	1a000478 <Chip_GPIO_SetPinDIRInput>
1a0005d4:	2208      	movs	r2, #8
1a0005d6:	2100      	movs	r1, #0
1a0005d8:	4808      	ldr	r0, [pc, #32]	; (1a0005fc <systemInit+0x144>)
1a0005da:	f7ff ff4d 	bl	1a000478 <Chip_GPIO_SetPinDIRInput>
1a0005de:	2209      	movs	r2, #9
1a0005e0:	2100      	movs	r1, #0
1a0005e2:	4806      	ldr	r0, [pc, #24]	; (1a0005fc <systemInit+0x144>)
1a0005e4:	f7ff ff48 	bl	1a000478 <Chip_GPIO_SetPinDIRInput>
1a0005e8:	2209      	movs	r2, #9
1a0005ea:	2101      	movs	r1, #1
1a0005ec:	4803      	ldr	r0, [pc, #12]	; (1a0005fc <systemInit+0x144>)
1a0005ee:	f7ff ff43 	bl	1a000478 <Chip_GPIO_SetPinDIRInput>
1a0005f2:	f000 fcbd 	bl	1a000f70 <StopWatch_Init>
1a0005f6:	bf00      	nop
1a0005f8:	bd80      	pop	{r7, pc}
1a0005fa:	bf00      	nop
1a0005fc:	400f4000 	.word	0x400f4000

1a000600 <ResetISR>:
1a000600:	b580      	push	{r7, lr}
1a000602:	b088      	sub	sp, #32
1a000604:	af00      	add	r7, sp, #0
1a000606:	b672      	cpsid	i
1a000608:	4b26      	ldr	r3, [pc, #152]	; (1a0006a4 <ResetISR+0xa4>)
1a00060a:	617b      	str	r3, [r7, #20]
1a00060c:	697b      	ldr	r3, [r7, #20]
1a00060e:	4a26      	ldr	r2, [pc, #152]	; (1a0006a8 <ResetISR+0xa8>)
1a000610:	601a      	str	r2, [r3, #0]
1a000612:	697b      	ldr	r3, [r7, #20]
1a000614:	3304      	adds	r3, #4
1a000616:	4a25      	ldr	r2, [pc, #148]	; (1a0006ac <ResetISR+0xac>)
1a000618:	601a      	str	r2, [r3, #0]
1a00061a:	4b25      	ldr	r3, [pc, #148]	; (1a0006b0 <ResetISR+0xb0>)
1a00061c:	613b      	str	r3, [r7, #16]
1a00061e:	2300      	movs	r3, #0
1a000620:	61fb      	str	r3, [r7, #28]
1a000622:	e009      	b.n	1a000638 <ResetISR+0x38>
1a000624:	69fb      	ldr	r3, [r7, #28]
1a000626:	009b      	lsls	r3, r3, #2
1a000628:	693a      	ldr	r2, [r7, #16]
1a00062a:	4413      	add	r3, r2
1a00062c:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a000630:	601a      	str	r2, [r3, #0]
1a000632:	69fb      	ldr	r3, [r7, #28]
1a000634:	3301      	adds	r3, #1
1a000636:	61fb      	str	r3, [r7, #28]
1a000638:	69fb      	ldr	r3, [r7, #28]
1a00063a:	2b07      	cmp	r3, #7
1a00063c:	d9f2      	bls.n	1a000624 <ResetISR+0x24>
1a00063e:	b662      	cpsie	i
1a000640:	4b1c      	ldr	r3, [pc, #112]	; (1a0006b4 <ResetISR+0xb4>)
1a000642:	61bb      	str	r3, [r7, #24]
1a000644:	e013      	b.n	1a00066e <ResetISR+0x6e>
1a000646:	69bb      	ldr	r3, [r7, #24]
1a000648:	1d1a      	adds	r2, r3, #4
1a00064a:	61ba      	str	r2, [r7, #24]
1a00064c:	681b      	ldr	r3, [r3, #0]
1a00064e:	607b      	str	r3, [r7, #4]
1a000650:	69bb      	ldr	r3, [r7, #24]
1a000652:	1d1a      	adds	r2, r3, #4
1a000654:	61ba      	str	r2, [r7, #24]
1a000656:	681b      	ldr	r3, [r3, #0]
1a000658:	60fb      	str	r3, [r7, #12]
1a00065a:	69bb      	ldr	r3, [r7, #24]
1a00065c:	1d1a      	adds	r2, r3, #4
1a00065e:	61ba      	str	r2, [r7, #24]
1a000660:	681b      	ldr	r3, [r3, #0]
1a000662:	60bb      	str	r3, [r7, #8]
1a000664:	68ba      	ldr	r2, [r7, #8]
1a000666:	68f9      	ldr	r1, [r7, #12]
1a000668:	6878      	ldr	r0, [r7, #4]
1a00066a:	f7ff fd5d 	bl	1a000128 <data_init>
1a00066e:	69bb      	ldr	r3, [r7, #24]
1a000670:	4a11      	ldr	r2, [pc, #68]	; (1a0006b8 <ResetISR+0xb8>)
1a000672:	4293      	cmp	r3, r2
1a000674:	d3e7      	bcc.n	1a000646 <ResetISR+0x46>
1a000676:	e00d      	b.n	1a000694 <ResetISR+0x94>
1a000678:	69bb      	ldr	r3, [r7, #24]
1a00067a:	1d1a      	adds	r2, r3, #4
1a00067c:	61ba      	str	r2, [r7, #24]
1a00067e:	681b      	ldr	r3, [r3, #0]
1a000680:	60fb      	str	r3, [r7, #12]
1a000682:	69bb      	ldr	r3, [r7, #24]
1a000684:	1d1a      	adds	r2, r3, #4
1a000686:	61ba      	str	r2, [r7, #24]
1a000688:	681b      	ldr	r3, [r3, #0]
1a00068a:	60bb      	str	r3, [r7, #8]
1a00068c:	68b9      	ldr	r1, [r7, #8]
1a00068e:	68f8      	ldr	r0, [r7, #12]
1a000690:	f7ff fd6c 	bl	1a00016c <bss_init>
1a000694:	69bb      	ldr	r3, [r7, #24]
1a000696:	4a09      	ldr	r2, [pc, #36]	; (1a0006bc <ResetISR+0xbc>)
1a000698:	4293      	cmp	r3, r2
1a00069a:	d3ed      	bcc.n	1a000678 <ResetISR+0x78>
1a00069c:	f000 f8c2 	bl	1a000824 <main>
1a0006a0:	e7fe      	b.n	1a0006a0 <ResetISR+0xa0>
1a0006a2:	bf00      	nop
1a0006a4:	40053100 	.word	0x40053100
1a0006a8:	10df1000 	.word	0x10df1000
1a0006ac:	01dff7ff 	.word	0x01dff7ff
1a0006b0:	e000e280 	.word	0xe000e280
1a0006b4:	1a000114 	.word	0x1a000114
1a0006b8:	1a000120 	.word	0x1a000120
1a0006bc:	1a000128 	.word	0x1a000128

1a0006c0 <NVIC_EnableIRQ>:
1a0006c0:	b480      	push	{r7}
1a0006c2:	b083      	sub	sp, #12
1a0006c4:	af00      	add	r7, sp, #0
1a0006c6:	4603      	mov	r3, r0
1a0006c8:	71fb      	strb	r3, [r7, #7]
1a0006ca:	79fb      	ldrb	r3, [r7, #7]
1a0006cc:	f003 031f 	and.w	r3, r3, #31
1a0006d0:	2201      	movs	r2, #1
1a0006d2:	fa02 f103 	lsl.w	r1, r2, r3
1a0006d6:	4a06      	ldr	r2, [pc, #24]	; (1a0006f0 <NVIC_EnableIRQ+0x30>)
1a0006d8:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0006dc:	095b      	lsrs	r3, r3, #5
1a0006de:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0006e2:	bf00      	nop
1a0006e4:	370c      	adds	r7, #12
1a0006e6:	46bd      	mov	sp, r7
1a0006e8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0006ec:	4770      	bx	lr
1a0006ee:	bf00      	nop
1a0006f0:	e000e100 	.word	0xe000e100

1a0006f4 <NVIC_DisableIRQ>:
1a0006f4:	b480      	push	{r7}
1a0006f6:	b083      	sub	sp, #12
1a0006f8:	af00      	add	r7, sp, #0
1a0006fa:	4603      	mov	r3, r0
1a0006fc:	71fb      	strb	r3, [r7, #7]
1a0006fe:	79fb      	ldrb	r3, [r7, #7]
1a000700:	f003 031f 	and.w	r3, r3, #31
1a000704:	2201      	movs	r2, #1
1a000706:	fa02 f103 	lsl.w	r1, r2, r3
1a00070a:	4a06      	ldr	r2, [pc, #24]	; (1a000724 <NVIC_DisableIRQ+0x30>)
1a00070c:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000710:	095b      	lsrs	r3, r3, #5
1a000712:	3320      	adds	r3, #32
1a000714:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000718:	bf00      	nop
1a00071a:	370c      	adds	r7, #12
1a00071c:	46bd      	mov	sp, r7
1a00071e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000722:	4770      	bx	lr
1a000724:	e000e100 	.word	0xe000e100

1a000728 <NVIC_SetPriority>:
1a000728:	b480      	push	{r7}
1a00072a:	b083      	sub	sp, #12
1a00072c:	af00      	add	r7, sp, #0
1a00072e:	4603      	mov	r3, r0
1a000730:	6039      	str	r1, [r7, #0]
1a000732:	71fb      	strb	r3, [r7, #7]
1a000734:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000738:	2b00      	cmp	r3, #0
1a00073a:	da0b      	bge.n	1a000754 <NVIC_SetPriority+0x2c>
1a00073c:	683b      	ldr	r3, [r7, #0]
1a00073e:	b2da      	uxtb	r2, r3
1a000740:	490c      	ldr	r1, [pc, #48]	; (1a000774 <NVIC_SetPriority+0x4c>)
1a000742:	79fb      	ldrb	r3, [r7, #7]
1a000744:	f003 030f 	and.w	r3, r3, #15
1a000748:	3b04      	subs	r3, #4
1a00074a:	0152      	lsls	r2, r2, #5
1a00074c:	b2d2      	uxtb	r2, r2
1a00074e:	440b      	add	r3, r1
1a000750:	761a      	strb	r2, [r3, #24]
1a000752:	e009      	b.n	1a000768 <NVIC_SetPriority+0x40>
1a000754:	683b      	ldr	r3, [r7, #0]
1a000756:	b2da      	uxtb	r2, r3
1a000758:	4907      	ldr	r1, [pc, #28]	; (1a000778 <NVIC_SetPriority+0x50>)
1a00075a:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a00075e:	0152      	lsls	r2, r2, #5
1a000760:	b2d2      	uxtb	r2, r2
1a000762:	440b      	add	r3, r1
1a000764:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a000768:	bf00      	nop
1a00076a:	370c      	adds	r7, #12
1a00076c:	46bd      	mov	sp, r7
1a00076e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000772:	4770      	bx	lr
1a000774:	e000ed00 	.word	0xe000ed00
1a000778:	e000e100 	.word	0xe000e100

1a00077c <Chip_SCU_PinMuxSet>:
1a00077c:	b480      	push	{r7}
1a00077e:	b083      	sub	sp, #12
1a000780:	af00      	add	r7, sp, #0
1a000782:	4603      	mov	r3, r0
1a000784:	71fb      	strb	r3, [r7, #7]
1a000786:	460b      	mov	r3, r1
1a000788:	71bb      	strb	r3, [r7, #6]
1a00078a:	4613      	mov	r3, r2
1a00078c:	80bb      	strh	r3, [r7, #4]
1a00078e:	4807      	ldr	r0, [pc, #28]	; (1a0007ac <Chip_SCU_PinMuxSet+0x30>)
1a000790:	79f9      	ldrb	r1, [r7, #7]
1a000792:	79bb      	ldrb	r3, [r7, #6]
1a000794:	88ba      	ldrh	r2, [r7, #4]
1a000796:	0149      	lsls	r1, r1, #5
1a000798:	440b      	add	r3, r1
1a00079a:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a00079e:	bf00      	nop
1a0007a0:	370c      	adds	r7, #12
1a0007a2:	46bd      	mov	sp, r7
1a0007a4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007a8:	4770      	bx	lr
1a0007aa:	bf00      	nop
1a0007ac:	40086000 	.word	0x40086000

1a0007b0 <Chip_UART_TXEnable>:
1a0007b0:	b480      	push	{r7}
1a0007b2:	b083      	sub	sp, #12
1a0007b4:	af00      	add	r7, sp, #0
1a0007b6:	6078      	str	r0, [r7, #4]
1a0007b8:	687b      	ldr	r3, [r7, #4]
1a0007ba:	2201      	movs	r2, #1
1a0007bc:	65da      	str	r2, [r3, #92]	; 0x5c
1a0007be:	bf00      	nop
1a0007c0:	370c      	adds	r7, #12
1a0007c2:	46bd      	mov	sp, r7
1a0007c4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007c8:	4770      	bx	lr

1a0007ca <Chip_UART_IntEnable>:
1a0007ca:	b480      	push	{r7}
1a0007cc:	b083      	sub	sp, #12
1a0007ce:	af00      	add	r7, sp, #0
1a0007d0:	6078      	str	r0, [r7, #4]
1a0007d2:	6039      	str	r1, [r7, #0]
1a0007d4:	687b      	ldr	r3, [r7, #4]
1a0007d6:	685a      	ldr	r2, [r3, #4]
1a0007d8:	683b      	ldr	r3, [r7, #0]
1a0007da:	431a      	orrs	r2, r3
1a0007dc:	687b      	ldr	r3, [r7, #4]
1a0007de:	605a      	str	r2, [r3, #4]
1a0007e0:	bf00      	nop
1a0007e2:	370c      	adds	r7, #12
1a0007e4:	46bd      	mov	sp, r7
1a0007e6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007ea:	4770      	bx	lr

1a0007ec <Chip_UART_SetupFIFOS>:
1a0007ec:	b480      	push	{r7}
1a0007ee:	b083      	sub	sp, #12
1a0007f0:	af00      	add	r7, sp, #0
1a0007f2:	6078      	str	r0, [r7, #4]
1a0007f4:	6039      	str	r1, [r7, #0]
1a0007f6:	687b      	ldr	r3, [r7, #4]
1a0007f8:	683a      	ldr	r2, [r7, #0]
1a0007fa:	609a      	str	r2, [r3, #8]
1a0007fc:	bf00      	nop
1a0007fe:	370c      	adds	r7, #12
1a000800:	46bd      	mov	sp, r7
1a000802:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000806:	4770      	bx	lr

1a000808 <Chip_UART_ConfigData>:
1a000808:	b480      	push	{r7}
1a00080a:	b083      	sub	sp, #12
1a00080c:	af00      	add	r7, sp, #0
1a00080e:	6078      	str	r0, [r7, #4]
1a000810:	6039      	str	r1, [r7, #0]
1a000812:	687b      	ldr	r3, [r7, #4]
1a000814:	683a      	ldr	r2, [r7, #0]
1a000816:	60da      	str	r2, [r3, #12]
1a000818:	bf00      	nop
1a00081a:	370c      	adds	r7, #12
1a00081c:	46bd      	mov	sp, r7
1a00081e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000822:	4770      	bx	lr

1a000824 <main>:
1a000824:	b580      	push	{r7, lr}
1a000826:	b082      	sub	sp, #8
1a000828:	af00      	add	r7, sp, #0
1a00082a:	f7ff fe45 	bl	1a0004b8 <systemInit>
1a00082e:	221a      	movs	r2, #26
1a000830:	210a      	movs	r1, #10
1a000832:	2002      	movs	r0, #2
1a000834:	f7ff ffa2 	bl	1a00077c <Chip_SCU_PinMuxSet>
1a000838:	22d2      	movs	r2, #210	; 0xd2
1a00083a:	210b      	movs	r1, #11
1a00083c:	2002      	movs	r0, #2
1a00083e:	f7ff ff9d 	bl	1a00077c <Chip_SCU_PinMuxSet>
1a000842:	482d      	ldr	r0, [pc, #180]	; (1a0008f8 <main+0xd4>)
1a000844:	f000 fa76 	bl	1a000d34 <Chip_UART_Init>
1a000848:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a00084c:	482a      	ldr	r0, [pc, #168]	; (1a0008f8 <main+0xd4>)
1a00084e:	f000 facd 	bl	1a000dec <Chip_UART_SetBaud>
1a000852:	2103      	movs	r1, #3
1a000854:	4828      	ldr	r0, [pc, #160]	; (1a0008f8 <main+0xd4>)
1a000856:	f7ff ffd7 	bl	1a000808 <Chip_UART_ConfigData>
1a00085a:	2181      	movs	r1, #129	; 0x81
1a00085c:	4826      	ldr	r0, [pc, #152]	; (1a0008f8 <main+0xd4>)
1a00085e:	f7ff ffc5 	bl	1a0007ec <Chip_UART_SetupFIFOS>
1a000862:	4825      	ldr	r0, [pc, #148]	; (1a0008f8 <main+0xd4>)
1a000864:	f7ff ffa4 	bl	1a0007b0 <Chip_UART_TXEnable>
1a000868:	2320      	movs	r3, #32
1a00086a:	2201      	movs	r2, #1
1a00086c:	4923      	ldr	r1, [pc, #140]	; (1a0008fc <main+0xd8>)
1a00086e:	4824      	ldr	r0, [pc, #144]	; (1a000900 <main+0xdc>)
1a000870:	f000 fc00 	bl	1a001074 <RingBuffer_Init>
1a000874:	2380      	movs	r3, #128	; 0x80
1a000876:	2201      	movs	r2, #1
1a000878:	4922      	ldr	r1, [pc, #136]	; (1a000904 <main+0xe0>)
1a00087a:	4823      	ldr	r0, [pc, #140]	; (1a000908 <main+0xe4>)
1a00087c:	f000 fbfa 	bl	1a001074 <RingBuffer_Init>
1a000880:	21c7      	movs	r1, #199	; 0xc7
1a000882:	481d      	ldr	r0, [pc, #116]	; (1a0008f8 <main+0xd4>)
1a000884:	f7ff ffb2 	bl	1a0007ec <Chip_UART_SetupFIFOS>
1a000888:	2105      	movs	r1, #5
1a00088a:	481b      	ldr	r0, [pc, #108]	; (1a0008f8 <main+0xd4>)
1a00088c:	f7ff ff9d 	bl	1a0007ca <Chip_UART_IntEnable>
1a000890:	2101      	movs	r1, #1
1a000892:	201a      	movs	r0, #26
1a000894:	f7ff ff48 	bl	1a000728 <NVIC_SetPriority>
1a000898:	201a      	movs	r0, #26
1a00089a:	f7ff ff11 	bl	1a0006c0 <NVIC_EnableIRQ>
1a00089e:	232e      	movs	r3, #46	; 0x2e
1a0008a0:	4a1a      	ldr	r2, [pc, #104]	; (1a00090c <main+0xe8>)
1a0008a2:	4919      	ldr	r1, [pc, #100]	; (1a000908 <main+0xe4>)
1a0008a4:	4814      	ldr	r0, [pc, #80]	; (1a0008f8 <main+0xd4>)
1a0008a6:	f000 fb03 	bl	1a000eb0 <Chip_UART_SendRB>
1a0008aa:	232c      	movs	r3, #44	; 0x2c
1a0008ac:	4a18      	ldr	r2, [pc, #96]	; (1a000910 <main+0xec>)
1a0008ae:	4916      	ldr	r1, [pc, #88]	; (1a000908 <main+0xe4>)
1a0008b0:	4811      	ldr	r0, [pc, #68]	; (1a0008f8 <main+0xd4>)
1a0008b2:	f000 fafd 	bl	1a000eb0 <Chip_UART_SendRB>
1a0008b6:	2300      	movs	r3, #0
1a0008b8:	70fb      	strb	r3, [r7, #3]
1a0008ba:	e00f      	b.n	1a0008dc <main+0xb8>
1a0008bc:	1cfa      	adds	r2, r7, #3
1a0008be:	2301      	movs	r3, #1
1a0008c0:	490f      	ldr	r1, [pc, #60]	; (1a000900 <main+0xdc>)
1a0008c2:	480d      	ldr	r0, [pc, #52]	; (1a0008f8 <main+0xd4>)
1a0008c4:	f000 fb24 	bl	1a000f10 <Chip_UART_ReadRB>
1a0008c8:	6078      	str	r0, [r7, #4]
1a0008ca:	687b      	ldr	r3, [r7, #4]
1a0008cc:	2b00      	cmp	r3, #0
1a0008ce:	dd05      	ble.n	1a0008dc <main+0xb8>
1a0008d0:	1cfa      	adds	r2, r7, #3
1a0008d2:	2301      	movs	r3, #1
1a0008d4:	490c      	ldr	r1, [pc, #48]	; (1a000908 <main+0xe4>)
1a0008d6:	4808      	ldr	r0, [pc, #32]	; (1a0008f8 <main+0xd4>)
1a0008d8:	f000 faea 	bl	1a000eb0 <Chip_UART_SendRB>
1a0008dc:	78fb      	ldrb	r3, [r7, #3]
1a0008de:	2b1b      	cmp	r3, #27
1a0008e0:	d1ec      	bne.n	1a0008bc <main+0x98>
1a0008e2:	201a      	movs	r0, #26
1a0008e4:	f7ff ff06 	bl	1a0006f4 <NVIC_DisableIRQ>
1a0008e8:	4803      	ldr	r0, [pc, #12]	; (1a0008f8 <main+0xd4>)
1a0008ea:	f000 fa67 	bl	1a000dbc <Chip_UART_DeInit>
1a0008ee:	2301      	movs	r3, #1
1a0008f0:	4618      	mov	r0, r3
1a0008f2:	3708      	adds	r7, #8
1a0008f4:	46bd      	mov	sp, r7
1a0008f6:	bd80      	pop	{r7, pc}
1a0008f8:	400c1000 	.word	0x400c1000
1a0008fc:	10000028 	.word	0x10000028
1a000900:	10000014 	.word	0x10000014
1a000904:	10000048 	.word	0x10000048
1a000908:	10000000 	.word	0x10000000
1a00090c:	1a001f50 	.word	0x1a001f50
1a000910:	1a001f80 	.word	0x1a001f80

1a000914 <fpuInit>:
1a000914:	b480      	push	{r7}
1a000916:	b089      	sub	sp, #36	; 0x24
1a000918:	af00      	add	r7, sp, #0
1a00091a:	4b16      	ldr	r3, [pc, #88]	; (1a000974 <fpuInit+0x60>)
1a00091c:	61fb      	str	r3, [r7, #28]
1a00091e:	4b16      	ldr	r3, [pc, #88]	; (1a000978 <fpuInit+0x64>)
1a000920:	61bb      	str	r3, [r7, #24]
1a000922:	4b16      	ldr	r3, [pc, #88]	; (1a00097c <fpuInit+0x68>)
1a000924:	617b      	str	r3, [r7, #20]
1a000926:	2300      	movs	r3, #0
1a000928:	74fb      	strb	r3, [r7, #19]
1a00092a:	69bb      	ldr	r3, [r7, #24]
1a00092c:	681b      	ldr	r3, [r3, #0]
1a00092e:	60bb      	str	r3, [r7, #8]
1a000930:	697b      	ldr	r3, [r7, #20]
1a000932:	681b      	ldr	r3, [r3, #0]
1a000934:	607b      	str	r3, [r7, #4]
1a000936:	68bb      	ldr	r3, [r7, #8]
1a000938:	4a11      	ldr	r2, [pc, #68]	; (1a000980 <fpuInit+0x6c>)
1a00093a:	4293      	cmp	r3, r2
1a00093c:	d105      	bne.n	1a00094a <fpuInit+0x36>
1a00093e:	687b      	ldr	r3, [r7, #4]
1a000940:	4a10      	ldr	r2, [pc, #64]	; (1a000984 <fpuInit+0x70>)
1a000942:	4293      	cmp	r3, r2
1a000944:	d101      	bne.n	1a00094a <fpuInit+0x36>
1a000946:	2301      	movs	r3, #1
1a000948:	e000      	b.n	1a00094c <fpuInit+0x38>
1a00094a:	2300      	movs	r3, #0
1a00094c:	74fb      	strb	r3, [r7, #19]
1a00094e:	7cfb      	ldrb	r3, [r7, #19]
1a000950:	2b00      	cmp	r3, #0
1a000952:	d009      	beq.n	1a000968 <fpuInit+0x54>
1a000954:	69fb      	ldr	r3, [r7, #28]
1a000956:	681b      	ldr	r3, [r3, #0]
1a000958:	60fb      	str	r3, [r7, #12]
1a00095a:	68fb      	ldr	r3, [r7, #12]
1a00095c:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a000960:	60fb      	str	r3, [r7, #12]
1a000962:	68fa      	ldr	r2, [r7, #12]
1a000964:	69fb      	ldr	r3, [r7, #28]
1a000966:	601a      	str	r2, [r3, #0]
1a000968:	bf00      	nop
1a00096a:	3724      	adds	r7, #36	; 0x24
1a00096c:	46bd      	mov	sp, r7
1a00096e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000972:	4770      	bx	lr
1a000974:	e000ed88 	.word	0xe000ed88
1a000978:	e000ef40 	.word	0xe000ef40
1a00097c:	e000ef44 	.word	0xe000ef44
1a000980:	10110021 	.word	0x10110021
1a000984:	11000011 	.word	0x11000011

1a000988 <Chip_Clock_DisableMainPLL>:
1a000988:	b480      	push	{r7}
1a00098a:	af00      	add	r7, sp, #0
1a00098c:	4b05      	ldr	r3, [pc, #20]	; (1a0009a4 <Chip_Clock_DisableMainPLL+0x1c>)
1a00098e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000990:	4a04      	ldr	r2, [pc, #16]	; (1a0009a4 <Chip_Clock_DisableMainPLL+0x1c>)
1a000992:	f043 0301 	orr.w	r3, r3, #1
1a000996:	6453      	str	r3, [r2, #68]	; 0x44
1a000998:	bf00      	nop
1a00099a:	46bd      	mov	sp, r7
1a00099c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009a0:	4770      	bx	lr
1a0009a2:	bf00      	nop
1a0009a4:	40050000 	.word	0x40050000

1a0009a8 <Chip_Clock_SetupMainPLL>:
1a0009a8:	b480      	push	{r7}
1a0009aa:	b083      	sub	sp, #12
1a0009ac:	af00      	add	r7, sp, #0
1a0009ae:	6078      	str	r0, [r7, #4]
1a0009b0:	687b      	ldr	r3, [r7, #4]
1a0009b2:	681b      	ldr	r3, [r3, #0]
1a0009b4:	461a      	mov	r2, r3
1a0009b6:	687b      	ldr	r3, [r7, #4]
1a0009b8:	791b      	ldrb	r3, [r3, #4]
1a0009ba:	061b      	lsls	r3, r3, #24
1a0009bc:	4313      	orrs	r3, r2
1a0009be:	687a      	ldr	r2, [r7, #4]
1a0009c0:	6912      	ldr	r2, [r2, #16]
1a0009c2:	0412      	lsls	r2, r2, #16
1a0009c4:	4313      	orrs	r3, r2
1a0009c6:	687a      	ldr	r2, [r7, #4]
1a0009c8:	6892      	ldr	r2, [r2, #8]
1a0009ca:	0312      	lsls	r2, r2, #12
1a0009cc:	4313      	orrs	r3, r2
1a0009ce:	687a      	ldr	r2, [r7, #4]
1a0009d0:	68d2      	ldr	r2, [r2, #12]
1a0009d2:	0212      	lsls	r2, r2, #8
1a0009d4:	4313      	orrs	r3, r2
1a0009d6:	4a05      	ldr	r2, [pc, #20]	; (1a0009ec <Chip_Clock_SetupMainPLL+0x44>)
1a0009d8:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a0009dc:	6453      	str	r3, [r2, #68]	; 0x44
1a0009de:	bf00      	nop
1a0009e0:	370c      	adds	r7, #12
1a0009e2:	46bd      	mov	sp, r7
1a0009e4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009e8:	4770      	bx	lr
1a0009ea:	bf00      	nop
1a0009ec:	40050000 	.word	0x40050000

1a0009f0 <Chip_Clock_MainPLLLocked>:
1a0009f0:	b480      	push	{r7}
1a0009f2:	af00      	add	r7, sp, #0
1a0009f4:	4b06      	ldr	r3, [pc, #24]	; (1a000a10 <Chip_Clock_MainPLLLocked+0x20>)
1a0009f6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a0009f8:	f003 0301 	and.w	r3, r3, #1
1a0009fc:	2b00      	cmp	r3, #0
1a0009fe:	bf14      	ite	ne
1a000a00:	2301      	movne	r3, #1
1a000a02:	2300      	moveq	r3, #0
1a000a04:	b2db      	uxtb	r3, r3
1a000a06:	4618      	mov	r0, r3
1a000a08:	46bd      	mov	sp, r7
1a000a0a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a0e:	4770      	bx	lr
1a000a10:	40050000 	.word	0x40050000

1a000a14 <Chip_SetupCoreClock>:
1a000a14:	b590      	push	{r4, r7, lr}
1a000a16:	b08f      	sub	sp, #60	; 0x3c
1a000a18:	af00      	add	r7, sp, #0
1a000a1a:	4603      	mov	r3, r0
1a000a1c:	6039      	str	r1, [r7, #0]
1a000a1e:	71fb      	strb	r3, [r7, #7]
1a000a20:	4613      	mov	r3, r2
1a000a22:	71bb      	strb	r3, [r7, #6]
1a000a24:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a000a28:	62bb      	str	r3, [r7, #40]	; 0x28
1a000a2a:	2300      	movs	r3, #0
1a000a2c:	633b      	str	r3, [r7, #48]	; 0x30
1a000a2e:	2300      	movs	r3, #0
1a000a30:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000a32:	79fb      	ldrb	r3, [r7, #7]
1a000a34:	2b06      	cmp	r3, #6
1a000a36:	d101      	bne.n	1a000a3c <Chip_SetupCoreClock+0x28>
1a000a38:	f000 fe56 	bl	1a0016e8 <Chip_Clock_EnableCrystal>
1a000a3c:	79f9      	ldrb	r1, [r7, #7]
1a000a3e:	2300      	movs	r3, #0
1a000a40:	2201      	movs	r2, #1
1a000a42:	2004      	movs	r0, #4
1a000a44:	f001 f842 	bl	1a001acc <Chip_Clock_SetBaseClock>
1a000a48:	f7ff ff9e 	bl	1a000988 <Chip_Clock_DisableMainPLL>
1a000a4c:	79fb      	ldrb	r3, [r7, #7]
1a000a4e:	733b      	strb	r3, [r7, #12]
1a000a50:	f107 0308 	add.w	r3, r7, #8
1a000a54:	4619      	mov	r1, r3
1a000a56:	6838      	ldr	r0, [r7, #0]
1a000a58:	f000 fe7e 	bl	1a001758 <Chip_Clock_CalcMainPLLValue>
1a000a5c:	683b      	ldr	r3, [r7, #0]
1a000a5e:	4a3d      	ldr	r2, [pc, #244]	; (1a000b54 <Chip_SetupCoreClock+0x140>)
1a000a60:	4293      	cmp	r3, r2
1a000a62:	d916      	bls.n	1a000a92 <Chip_SetupCoreClock+0x7e>
1a000a64:	68bb      	ldr	r3, [r7, #8]
1a000a66:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a000a6a:	2b00      	cmp	r3, #0
1a000a6c:	d000      	beq.n	1a000a70 <Chip_SetupCoreClock+0x5c>
1a000a6e:	e7fe      	b.n	1a000a6e <Chip_SetupCoreClock+0x5a>
1a000a70:	68bb      	ldr	r3, [r7, #8]
1a000a72:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a000a76:	2b00      	cmp	r3, #0
1a000a78:	d006      	beq.n	1a000a88 <Chip_SetupCoreClock+0x74>
1a000a7a:	2301      	movs	r3, #1
1a000a7c:	633b      	str	r3, [r7, #48]	; 0x30
1a000a7e:	68bb      	ldr	r3, [r7, #8]
1a000a80:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a000a84:	60bb      	str	r3, [r7, #8]
1a000a86:	e004      	b.n	1a000a92 <Chip_SetupCoreClock+0x7e>
1a000a88:	2301      	movs	r3, #1
1a000a8a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000a8c:	697b      	ldr	r3, [r7, #20]
1a000a8e:	3301      	adds	r3, #1
1a000a90:	617b      	str	r3, [r7, #20]
1a000a92:	f107 0308 	add.w	r3, r7, #8
1a000a96:	4618      	mov	r0, r3
1a000a98:	f7ff ff86 	bl	1a0009a8 <Chip_Clock_SetupMainPLL>
1a000a9c:	bf00      	nop
1a000a9e:	f7ff ffa7 	bl	1a0009f0 <Chip_Clock_MainPLLLocked>
1a000aa2:	4603      	mov	r3, r0
1a000aa4:	2b00      	cmp	r3, #0
1a000aa6:	d0fa      	beq.n	1a000a9e <Chip_SetupCoreClock+0x8a>
1a000aa8:	2300      	movs	r3, #0
1a000aaa:	2201      	movs	r2, #1
1a000aac:	2109      	movs	r1, #9
1a000aae:	2004      	movs	r0, #4
1a000ab0:	f001 f80c 	bl	1a001acc <Chip_Clock_SetBaseClock>
1a000ab4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a000ab6:	2b00      	cmp	r3, #0
1a000ab8:	d012      	beq.n	1a000ae0 <Chip_SetupCoreClock+0xcc>
1a000aba:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a000abe:	62bb      	str	r3, [r7, #40]	; 0x28
1a000ac0:	bf00      	nop
1a000ac2:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000ac4:	1e5a      	subs	r2, r3, #1
1a000ac6:	62ba      	str	r2, [r7, #40]	; 0x28
1a000ac8:	2b00      	cmp	r3, #0
1a000aca:	d1fa      	bne.n	1a000ac2 <Chip_SetupCoreClock+0xae>
1a000acc:	68bb      	ldr	r3, [r7, #8]
1a000ace:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a000ad2:	60bb      	str	r3, [r7, #8]
1a000ad4:	f107 0308 	add.w	r3, r7, #8
1a000ad8:	4618      	mov	r0, r3
1a000ada:	f7ff ff65 	bl	1a0009a8 <Chip_Clock_SetupMainPLL>
1a000ade:	e013      	b.n	1a000b08 <Chip_SetupCoreClock+0xf4>
1a000ae0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000ae2:	2b00      	cmp	r3, #0
1a000ae4:	d010      	beq.n	1a000b08 <Chip_SetupCoreClock+0xf4>
1a000ae6:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a000aea:	62bb      	str	r3, [r7, #40]	; 0x28
1a000aec:	bf00      	nop
1a000aee:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000af0:	1e5a      	subs	r2, r3, #1
1a000af2:	62ba      	str	r2, [r7, #40]	; 0x28
1a000af4:	2b00      	cmp	r3, #0
1a000af6:	d1fa      	bne.n	1a000aee <Chip_SetupCoreClock+0xda>
1a000af8:	697b      	ldr	r3, [r7, #20]
1a000afa:	3b01      	subs	r3, #1
1a000afc:	617b      	str	r3, [r7, #20]
1a000afe:	f107 0308 	add.w	r3, r7, #8
1a000b02:	4618      	mov	r0, r3
1a000b04:	f7ff ff50 	bl	1a0009a8 <Chip_Clock_SetupMainPLL>
1a000b08:	79bb      	ldrb	r3, [r7, #6]
1a000b0a:	2b00      	cmp	r3, #0
1a000b0c:	d01e      	beq.n	1a000b4c <Chip_SetupCoreClock+0x138>
1a000b0e:	2300      	movs	r3, #0
1a000b10:	637b      	str	r3, [r7, #52]	; 0x34
1a000b12:	e018      	b.n	1a000b46 <Chip_SetupCoreClock+0x132>
1a000b14:	4a10      	ldr	r2, [pc, #64]	; (1a000b58 <Chip_SetupCoreClock+0x144>)
1a000b16:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000b18:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a000b1c:	4a0e      	ldr	r2, [pc, #56]	; (1a000b58 <Chip_SetupCoreClock+0x144>)
1a000b1e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000b20:	009b      	lsls	r3, r3, #2
1a000b22:	4413      	add	r3, r2
1a000b24:	7859      	ldrb	r1, [r3, #1]
1a000b26:	4a0c      	ldr	r2, [pc, #48]	; (1a000b58 <Chip_SetupCoreClock+0x144>)
1a000b28:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000b2a:	009b      	lsls	r3, r3, #2
1a000b2c:	4413      	add	r3, r2
1a000b2e:	789c      	ldrb	r4, [r3, #2]
1a000b30:	4a09      	ldr	r2, [pc, #36]	; (1a000b58 <Chip_SetupCoreClock+0x144>)
1a000b32:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000b34:	009b      	lsls	r3, r3, #2
1a000b36:	4413      	add	r3, r2
1a000b38:	78db      	ldrb	r3, [r3, #3]
1a000b3a:	4622      	mov	r2, r4
1a000b3c:	f000 ffc6 	bl	1a001acc <Chip_Clock_SetBaseClock>
1a000b40:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000b42:	3301      	adds	r3, #1
1a000b44:	637b      	str	r3, [r7, #52]	; 0x34
1a000b46:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000b48:	2b11      	cmp	r3, #17
1a000b4a:	d9e3      	bls.n	1a000b14 <Chip_SetupCoreClock+0x100>
1a000b4c:	bf00      	nop
1a000b4e:	373c      	adds	r7, #60	; 0x3c
1a000b50:	46bd      	mov	sp, r7
1a000b52:	bd90      	pop	{r4, r7, pc}
1a000b54:	068e7780 	.word	0x068e7780
1a000b58:	1a001fb0 	.word	0x1a001fb0

1a000b5c <Chip_SetupXtalClocking>:
1a000b5c:	b580      	push	{r7, lr}
1a000b5e:	af00      	add	r7, sp, #0
1a000b60:	2201      	movs	r2, #1
1a000b62:	4903      	ldr	r1, [pc, #12]	; (1a000b70 <Chip_SetupXtalClocking+0x14>)
1a000b64:	2006      	movs	r0, #6
1a000b66:	f7ff ff55 	bl	1a000a14 <Chip_SetupCoreClock>
1a000b6a:	bf00      	nop
1a000b6c:	bd80      	pop	{r7, pc}
1a000b6e:	bf00      	nop
1a000b70:	0c28cb00 	.word	0x0c28cb00

1a000b74 <RingBuffer_IsEmpty>:
1a000b74:	b480      	push	{r7}
1a000b76:	b083      	sub	sp, #12
1a000b78:	af00      	add	r7, sp, #0
1a000b7a:	6078      	str	r0, [r7, #4]
1a000b7c:	687b      	ldr	r3, [r7, #4]
1a000b7e:	330c      	adds	r3, #12
1a000b80:	681a      	ldr	r2, [r3, #0]
1a000b82:	687b      	ldr	r3, [r7, #4]
1a000b84:	3310      	adds	r3, #16
1a000b86:	681b      	ldr	r3, [r3, #0]
1a000b88:	429a      	cmp	r2, r3
1a000b8a:	bf0c      	ite	eq
1a000b8c:	2301      	moveq	r3, #1
1a000b8e:	2300      	movne	r3, #0
1a000b90:	b2db      	uxtb	r3, r3
1a000b92:	4618      	mov	r0, r3
1a000b94:	370c      	adds	r7, #12
1a000b96:	46bd      	mov	sp, r7
1a000b98:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b9c:	4770      	bx	lr

1a000b9e <Chip_UART_TXDisable>:
1a000b9e:	b480      	push	{r7}
1a000ba0:	b083      	sub	sp, #12
1a000ba2:	af00      	add	r7, sp, #0
1a000ba4:	6078      	str	r0, [r7, #4]
1a000ba6:	687b      	ldr	r3, [r7, #4]
1a000ba8:	2200      	movs	r2, #0
1a000baa:	65da      	str	r2, [r3, #92]	; 0x5c
1a000bac:	bf00      	nop
1a000bae:	370c      	adds	r7, #12
1a000bb0:	46bd      	mov	sp, r7
1a000bb2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bb6:	4770      	bx	lr

1a000bb8 <Chip_UART_SendByte>:
1a000bb8:	b480      	push	{r7}
1a000bba:	b083      	sub	sp, #12
1a000bbc:	af00      	add	r7, sp, #0
1a000bbe:	6078      	str	r0, [r7, #4]
1a000bc0:	460b      	mov	r3, r1
1a000bc2:	70fb      	strb	r3, [r7, #3]
1a000bc4:	78fa      	ldrb	r2, [r7, #3]
1a000bc6:	687b      	ldr	r3, [r7, #4]
1a000bc8:	601a      	str	r2, [r3, #0]
1a000bca:	bf00      	nop
1a000bcc:	370c      	adds	r7, #12
1a000bce:	46bd      	mov	sp, r7
1a000bd0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bd4:	4770      	bx	lr

1a000bd6 <Chip_UART_IntEnable>:
1a000bd6:	b480      	push	{r7}
1a000bd8:	b083      	sub	sp, #12
1a000bda:	af00      	add	r7, sp, #0
1a000bdc:	6078      	str	r0, [r7, #4]
1a000bde:	6039      	str	r1, [r7, #0]
1a000be0:	687b      	ldr	r3, [r7, #4]
1a000be2:	685a      	ldr	r2, [r3, #4]
1a000be4:	683b      	ldr	r3, [r7, #0]
1a000be6:	431a      	orrs	r2, r3
1a000be8:	687b      	ldr	r3, [r7, #4]
1a000bea:	605a      	str	r2, [r3, #4]
1a000bec:	bf00      	nop
1a000bee:	370c      	adds	r7, #12
1a000bf0:	46bd      	mov	sp, r7
1a000bf2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bf6:	4770      	bx	lr

1a000bf8 <Chip_UART_IntDisable>:
1a000bf8:	b480      	push	{r7}
1a000bfa:	b083      	sub	sp, #12
1a000bfc:	af00      	add	r7, sp, #0
1a000bfe:	6078      	str	r0, [r7, #4]
1a000c00:	6039      	str	r1, [r7, #0]
1a000c02:	687b      	ldr	r3, [r7, #4]
1a000c04:	685a      	ldr	r2, [r3, #4]
1a000c06:	683b      	ldr	r3, [r7, #0]
1a000c08:	43db      	mvns	r3, r3
1a000c0a:	401a      	ands	r2, r3
1a000c0c:	687b      	ldr	r3, [r7, #4]
1a000c0e:	605a      	str	r2, [r3, #4]
1a000c10:	bf00      	nop
1a000c12:	370c      	adds	r7, #12
1a000c14:	46bd      	mov	sp, r7
1a000c16:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c1a:	4770      	bx	lr

1a000c1c <Chip_UART_SetupFIFOS>:
1a000c1c:	b480      	push	{r7}
1a000c1e:	b083      	sub	sp, #12
1a000c20:	af00      	add	r7, sp, #0
1a000c22:	6078      	str	r0, [r7, #4]
1a000c24:	6039      	str	r1, [r7, #0]
1a000c26:	687b      	ldr	r3, [r7, #4]
1a000c28:	683a      	ldr	r2, [r7, #0]
1a000c2a:	609a      	str	r2, [r3, #8]
1a000c2c:	bf00      	nop
1a000c2e:	370c      	adds	r7, #12
1a000c30:	46bd      	mov	sp, r7
1a000c32:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c36:	4770      	bx	lr

1a000c38 <Chip_UART_ConfigData>:
1a000c38:	b480      	push	{r7}
1a000c3a:	b083      	sub	sp, #12
1a000c3c:	af00      	add	r7, sp, #0
1a000c3e:	6078      	str	r0, [r7, #4]
1a000c40:	6039      	str	r1, [r7, #0]
1a000c42:	687b      	ldr	r3, [r7, #4]
1a000c44:	683a      	ldr	r2, [r7, #0]
1a000c46:	60da      	str	r2, [r3, #12]
1a000c48:	bf00      	nop
1a000c4a:	370c      	adds	r7, #12
1a000c4c:	46bd      	mov	sp, r7
1a000c4e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c52:	4770      	bx	lr

1a000c54 <Chip_UART_EnableDivisorAccess>:
1a000c54:	b480      	push	{r7}
1a000c56:	b083      	sub	sp, #12
1a000c58:	af00      	add	r7, sp, #0
1a000c5a:	6078      	str	r0, [r7, #4]
1a000c5c:	687b      	ldr	r3, [r7, #4]
1a000c5e:	68db      	ldr	r3, [r3, #12]
1a000c60:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a000c64:	687b      	ldr	r3, [r7, #4]
1a000c66:	60da      	str	r2, [r3, #12]
1a000c68:	bf00      	nop
1a000c6a:	370c      	adds	r7, #12
1a000c6c:	46bd      	mov	sp, r7
1a000c6e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c72:	4770      	bx	lr

1a000c74 <Chip_UART_DisableDivisorAccess>:
1a000c74:	b480      	push	{r7}
1a000c76:	b083      	sub	sp, #12
1a000c78:	af00      	add	r7, sp, #0
1a000c7a:	6078      	str	r0, [r7, #4]
1a000c7c:	687b      	ldr	r3, [r7, #4]
1a000c7e:	68db      	ldr	r3, [r3, #12]
1a000c80:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a000c84:	687b      	ldr	r3, [r7, #4]
1a000c86:	60da      	str	r2, [r3, #12]
1a000c88:	bf00      	nop
1a000c8a:	370c      	adds	r7, #12
1a000c8c:	46bd      	mov	sp, r7
1a000c8e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c92:	4770      	bx	lr

1a000c94 <Chip_UART_SetDivisorLatches>:
1a000c94:	b480      	push	{r7}
1a000c96:	b083      	sub	sp, #12
1a000c98:	af00      	add	r7, sp, #0
1a000c9a:	6078      	str	r0, [r7, #4]
1a000c9c:	460b      	mov	r3, r1
1a000c9e:	70fb      	strb	r3, [r7, #3]
1a000ca0:	4613      	mov	r3, r2
1a000ca2:	70bb      	strb	r3, [r7, #2]
1a000ca4:	78fa      	ldrb	r2, [r7, #3]
1a000ca6:	687b      	ldr	r3, [r7, #4]
1a000ca8:	601a      	str	r2, [r3, #0]
1a000caa:	78ba      	ldrb	r2, [r7, #2]
1a000cac:	687b      	ldr	r3, [r7, #4]
1a000cae:	605a      	str	r2, [r3, #4]
1a000cb0:	bf00      	nop
1a000cb2:	370c      	adds	r7, #12
1a000cb4:	46bd      	mov	sp, r7
1a000cb6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cba:	4770      	bx	lr

1a000cbc <Chip_UART_ReadLineStatus>:
1a000cbc:	b480      	push	{r7}
1a000cbe:	b083      	sub	sp, #12
1a000cc0:	af00      	add	r7, sp, #0
1a000cc2:	6078      	str	r0, [r7, #4]
1a000cc4:	687b      	ldr	r3, [r7, #4]
1a000cc6:	695b      	ldr	r3, [r3, #20]
1a000cc8:	4618      	mov	r0, r3
1a000cca:	370c      	adds	r7, #12
1a000ccc:	46bd      	mov	sp, r7
1a000cce:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cd2:	4770      	bx	lr

1a000cd4 <Chip_UART_GetIndex>:
1a000cd4:	b480      	push	{r7}
1a000cd6:	b085      	sub	sp, #20
1a000cd8:	af00      	add	r7, sp, #0
1a000cda:	6078      	str	r0, [r7, #4]
1a000cdc:	687b      	ldr	r3, [r7, #4]
1a000cde:	60fb      	str	r3, [r7, #12]
1a000ce0:	68fb      	ldr	r3, [r7, #12]
1a000ce2:	4a10      	ldr	r2, [pc, #64]	; (1a000d24 <Chip_UART_GetIndex+0x50>)
1a000ce4:	4293      	cmp	r3, r2
1a000ce6:	d00f      	beq.n	1a000d08 <Chip_UART_GetIndex+0x34>
1a000ce8:	4a0e      	ldr	r2, [pc, #56]	; (1a000d24 <Chip_UART_GetIndex+0x50>)
1a000cea:	4293      	cmp	r3, r2
1a000cec:	d803      	bhi.n	1a000cf6 <Chip_UART_GetIndex+0x22>
1a000cee:	4a0e      	ldr	r2, [pc, #56]	; (1a000d28 <Chip_UART_GetIndex+0x54>)
1a000cf0:	4293      	cmp	r3, r2
1a000cf2:	d007      	beq.n	1a000d04 <Chip_UART_GetIndex+0x30>
1a000cf4:	e00e      	b.n	1a000d14 <Chip_UART_GetIndex+0x40>
1a000cf6:	4a0d      	ldr	r2, [pc, #52]	; (1a000d2c <Chip_UART_GetIndex+0x58>)
1a000cf8:	4293      	cmp	r3, r2
1a000cfa:	d007      	beq.n	1a000d0c <Chip_UART_GetIndex+0x38>
1a000cfc:	4a0c      	ldr	r2, [pc, #48]	; (1a000d30 <Chip_UART_GetIndex+0x5c>)
1a000cfe:	4293      	cmp	r3, r2
1a000d00:	d006      	beq.n	1a000d10 <Chip_UART_GetIndex+0x3c>
1a000d02:	e007      	b.n	1a000d14 <Chip_UART_GetIndex+0x40>
1a000d04:	2300      	movs	r3, #0
1a000d06:	e006      	b.n	1a000d16 <Chip_UART_GetIndex+0x42>
1a000d08:	2301      	movs	r3, #1
1a000d0a:	e004      	b.n	1a000d16 <Chip_UART_GetIndex+0x42>
1a000d0c:	2302      	movs	r3, #2
1a000d0e:	e002      	b.n	1a000d16 <Chip_UART_GetIndex+0x42>
1a000d10:	2303      	movs	r3, #3
1a000d12:	e000      	b.n	1a000d16 <Chip_UART_GetIndex+0x42>
1a000d14:	2300      	movs	r3, #0
1a000d16:	4618      	mov	r0, r3
1a000d18:	3714      	adds	r7, #20
1a000d1a:	46bd      	mov	sp, r7
1a000d1c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d20:	4770      	bx	lr
1a000d22:	bf00      	nop
1a000d24:	40082000 	.word	0x40082000
1a000d28:	40081000 	.word	0x40081000
1a000d2c:	400c1000 	.word	0x400c1000
1a000d30:	400c2000 	.word	0x400c2000

1a000d34 <Chip_UART_Init>:
1a000d34:	b580      	push	{r7, lr}
1a000d36:	b084      	sub	sp, #16
1a000d38:	af00      	add	r7, sp, #0
1a000d3a:	6078      	str	r0, [r7, #4]
1a000d3c:	68fb      	ldr	r3, [r7, #12]
1a000d3e:	6878      	ldr	r0, [r7, #4]
1a000d40:	f7ff ffc8 	bl	1a000cd4 <Chip_UART_GetIndex>
1a000d44:	4602      	mov	r2, r0
1a000d46:	4b1b      	ldr	r3, [pc, #108]	; (1a000db4 <Chip_UART_Init+0x80>)
1a000d48:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a000d4c:	2301      	movs	r3, #1
1a000d4e:	2201      	movs	r2, #1
1a000d50:	2101      	movs	r1, #1
1a000d52:	f000 ff2f 	bl	1a001bb4 <Chip_Clock_EnableOpts>
1a000d56:	2107      	movs	r1, #7
1a000d58:	6878      	ldr	r0, [r7, #4]
1a000d5a:	f7ff ff5f 	bl	1a000c1c <Chip_UART_SetupFIFOS>
1a000d5e:	6878      	ldr	r0, [r7, #4]
1a000d60:	f7ff ff1d 	bl	1a000b9e <Chip_UART_TXDisable>
1a000d64:	687b      	ldr	r3, [r7, #4]
1a000d66:	2200      	movs	r2, #0
1a000d68:	605a      	str	r2, [r3, #4]
1a000d6a:	687b      	ldr	r3, [r7, #4]
1a000d6c:	2200      	movs	r2, #0
1a000d6e:	60da      	str	r2, [r3, #12]
1a000d70:	687b      	ldr	r3, [r7, #4]
1a000d72:	2200      	movs	r2, #0
1a000d74:	621a      	str	r2, [r3, #32]
1a000d76:	687b      	ldr	r3, [r7, #4]
1a000d78:	2200      	movs	r2, #0
1a000d7a:	64da      	str	r2, [r3, #76]	; 0x4c
1a000d7c:	687b      	ldr	r3, [r7, #4]
1a000d7e:	2200      	movs	r2, #0
1a000d80:	655a      	str	r2, [r3, #84]	; 0x54
1a000d82:	687b      	ldr	r3, [r7, #4]
1a000d84:	2200      	movs	r2, #0
1a000d86:	651a      	str	r2, [r3, #80]	; 0x50
1a000d88:	687b      	ldr	r3, [r7, #4]
1a000d8a:	4a0b      	ldr	r2, [pc, #44]	; (1a000db8 <Chip_UART_Init+0x84>)
1a000d8c:	4293      	cmp	r3, r2
1a000d8e:	d105      	bne.n	1a000d9c <Chip_UART_Init+0x68>
1a000d90:	687b      	ldr	r3, [r7, #4]
1a000d92:	2200      	movs	r2, #0
1a000d94:	611a      	str	r2, [r3, #16]
1a000d96:	687b      	ldr	r3, [r7, #4]
1a000d98:	699b      	ldr	r3, [r3, #24]
1a000d9a:	60fb      	str	r3, [r7, #12]
1a000d9c:	2103      	movs	r1, #3
1a000d9e:	6878      	ldr	r0, [r7, #4]
1a000da0:	f7ff ff4a 	bl	1a000c38 <Chip_UART_ConfigData>
1a000da4:	687b      	ldr	r3, [r7, #4]
1a000da6:	2210      	movs	r2, #16
1a000da8:	629a      	str	r2, [r3, #40]	; 0x28
1a000daa:	bf00      	nop
1a000dac:	3710      	adds	r7, #16
1a000dae:	46bd      	mov	sp, r7
1a000db0:	bd80      	pop	{r7, pc}
1a000db2:	bf00      	nop
1a000db4:	1a001ff8 	.word	0x1a001ff8
1a000db8:	40082000 	.word	0x40082000

1a000dbc <Chip_UART_DeInit>:
1a000dbc:	b580      	push	{r7, lr}
1a000dbe:	b082      	sub	sp, #8
1a000dc0:	af00      	add	r7, sp, #0
1a000dc2:	6078      	str	r0, [r7, #4]
1a000dc4:	6878      	ldr	r0, [r7, #4]
1a000dc6:	f7ff feea 	bl	1a000b9e <Chip_UART_TXDisable>
1a000dca:	6878      	ldr	r0, [r7, #4]
1a000dcc:	f7ff ff82 	bl	1a000cd4 <Chip_UART_GetIndex>
1a000dd0:	4602      	mov	r2, r0
1a000dd2:	4b05      	ldr	r3, [pc, #20]	; (1a000de8 <Chip_UART_DeInit+0x2c>)
1a000dd4:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a000dd8:	4618      	mov	r0, r3
1a000dda:	f000 ff59 	bl	1a001c90 <Chip_Clock_Disable>
1a000dde:	bf00      	nop
1a000de0:	3708      	adds	r7, #8
1a000de2:	46bd      	mov	sp, r7
1a000de4:	bd80      	pop	{r7, pc}
1a000de6:	bf00      	nop
1a000de8:	1a001ff8 	.word	0x1a001ff8

1a000dec <Chip_UART_SetBaud>:
1a000dec:	b580      	push	{r7, lr}
1a000dee:	b086      	sub	sp, #24
1a000df0:	af00      	add	r7, sp, #0
1a000df2:	6078      	str	r0, [r7, #4]
1a000df4:	6039      	str	r1, [r7, #0]
1a000df6:	6878      	ldr	r0, [r7, #4]
1a000df8:	f7ff ff6c 	bl	1a000cd4 <Chip_UART_GetIndex>
1a000dfc:	4602      	mov	r2, r0
1a000dfe:	4b16      	ldr	r3, [pc, #88]	; (1a000e58 <Chip_UART_SetBaud+0x6c>)
1a000e00:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a000e04:	4618      	mov	r0, r3
1a000e06:	f000 ff73 	bl	1a001cf0 <Chip_Clock_GetRate>
1a000e0a:	6178      	str	r0, [r7, #20]
1a000e0c:	683b      	ldr	r3, [r7, #0]
1a000e0e:	011b      	lsls	r3, r3, #4
1a000e10:	697a      	ldr	r2, [r7, #20]
1a000e12:	fbb2 f3f3 	udiv	r3, r2, r3
1a000e16:	613b      	str	r3, [r7, #16]
1a000e18:	693b      	ldr	r3, [r7, #16]
1a000e1a:	0a1b      	lsrs	r3, r3, #8
1a000e1c:	60fb      	str	r3, [r7, #12]
1a000e1e:	68fb      	ldr	r3, [r7, #12]
1a000e20:	021b      	lsls	r3, r3, #8
1a000e22:	693a      	ldr	r2, [r7, #16]
1a000e24:	1ad3      	subs	r3, r2, r3
1a000e26:	60bb      	str	r3, [r7, #8]
1a000e28:	6878      	ldr	r0, [r7, #4]
1a000e2a:	f7ff ff13 	bl	1a000c54 <Chip_UART_EnableDivisorAccess>
1a000e2e:	68bb      	ldr	r3, [r7, #8]
1a000e30:	b2db      	uxtb	r3, r3
1a000e32:	68fa      	ldr	r2, [r7, #12]
1a000e34:	b2d2      	uxtb	r2, r2
1a000e36:	4619      	mov	r1, r3
1a000e38:	6878      	ldr	r0, [r7, #4]
1a000e3a:	f7ff ff2b 	bl	1a000c94 <Chip_UART_SetDivisorLatches>
1a000e3e:	6878      	ldr	r0, [r7, #4]
1a000e40:	f7ff ff18 	bl	1a000c74 <Chip_UART_DisableDivisorAccess>
1a000e44:	697a      	ldr	r2, [r7, #20]
1a000e46:	693b      	ldr	r3, [r7, #16]
1a000e48:	fbb2 f3f3 	udiv	r3, r2, r3
1a000e4c:	091b      	lsrs	r3, r3, #4
1a000e4e:	4618      	mov	r0, r3
1a000e50:	3718      	adds	r7, #24
1a000e52:	46bd      	mov	sp, r7
1a000e54:	bd80      	pop	{r7, pc}
1a000e56:	bf00      	nop
1a000e58:	1a002000 	.word	0x1a002000

1a000e5c <Chip_UART_TXIntHandlerRB>:
1a000e5c:	b580      	push	{r7, lr}
1a000e5e:	b084      	sub	sp, #16
1a000e60:	af00      	add	r7, sp, #0
1a000e62:	6078      	str	r0, [r7, #4]
1a000e64:	6039      	str	r1, [r7, #0]
1a000e66:	e004      	b.n	1a000e72 <Chip_UART_TXIntHandlerRB+0x16>
1a000e68:	7bfb      	ldrb	r3, [r7, #15]
1a000e6a:	4619      	mov	r1, r3
1a000e6c:	6878      	ldr	r0, [r7, #4]
1a000e6e:	f7ff fea3 	bl	1a000bb8 <Chip_UART_SendByte>
1a000e72:	6878      	ldr	r0, [r7, #4]
1a000e74:	f7ff ff22 	bl	1a000cbc <Chip_UART_ReadLineStatus>
1a000e78:	4603      	mov	r3, r0
1a000e7a:	f003 0320 	and.w	r3, r3, #32
1a000e7e:	2b00      	cmp	r3, #0
1a000e80:	d008      	beq.n	1a000e94 <Chip_UART_TXIntHandlerRB+0x38>
1a000e82:	f107 030f 	add.w	r3, r7, #15
1a000e86:	4619      	mov	r1, r3
1a000e88:	6838      	ldr	r0, [r7, #0]
1a000e8a:	f000 f9a2 	bl	1a0011d2 <RingBuffer_Pop>
1a000e8e:	4603      	mov	r3, r0
1a000e90:	2b00      	cmp	r3, #0
1a000e92:	d1e9      	bne.n	1a000e68 <Chip_UART_TXIntHandlerRB+0xc>
1a000e94:	6838      	ldr	r0, [r7, #0]
1a000e96:	f7ff fe6d 	bl	1a000b74 <RingBuffer_IsEmpty>
1a000e9a:	4603      	mov	r3, r0
1a000e9c:	2b00      	cmp	r3, #0
1a000e9e:	d003      	beq.n	1a000ea8 <Chip_UART_TXIntHandlerRB+0x4c>
1a000ea0:	2102      	movs	r1, #2
1a000ea2:	6878      	ldr	r0, [r7, #4]
1a000ea4:	f7ff fea8 	bl	1a000bf8 <Chip_UART_IntDisable>
1a000ea8:	bf00      	nop
1a000eaa:	3710      	adds	r7, #16
1a000eac:	46bd      	mov	sp, r7
1a000eae:	bd80      	pop	{r7, pc}

1a000eb0 <Chip_UART_SendRB>:
1a000eb0:	b580      	push	{r7, lr}
1a000eb2:	b086      	sub	sp, #24
1a000eb4:	af00      	add	r7, sp, #0
1a000eb6:	60f8      	str	r0, [r7, #12]
1a000eb8:	60b9      	str	r1, [r7, #8]
1a000eba:	607a      	str	r2, [r7, #4]
1a000ebc:	603b      	str	r3, [r7, #0]
1a000ebe:	687b      	ldr	r3, [r7, #4]
1a000ec0:	617b      	str	r3, [r7, #20]
1a000ec2:	2102      	movs	r1, #2
1a000ec4:	68f8      	ldr	r0, [r7, #12]
1a000ec6:	f7ff fe97 	bl	1a000bf8 <Chip_UART_IntDisable>
1a000eca:	683a      	ldr	r2, [r7, #0]
1a000ecc:	6979      	ldr	r1, [r7, #20]
1a000ece:	68b8      	ldr	r0, [r7, #8]
1a000ed0:	f000 f8ee 	bl	1a0010b0 <RingBuffer_InsertMult>
1a000ed4:	4603      	mov	r3, r0
1a000ed6:	613b      	str	r3, [r7, #16]
1a000ed8:	68b9      	ldr	r1, [r7, #8]
1a000eda:	68f8      	ldr	r0, [r7, #12]
1a000edc:	f7ff ffbe 	bl	1a000e5c <Chip_UART_TXIntHandlerRB>
1a000ee0:	697a      	ldr	r2, [r7, #20]
1a000ee2:	693b      	ldr	r3, [r7, #16]
1a000ee4:	18d1      	adds	r1, r2, r3
1a000ee6:	683a      	ldr	r2, [r7, #0]
1a000ee8:	693b      	ldr	r3, [r7, #16]
1a000eea:	1ad3      	subs	r3, r2, r3
1a000eec:	461a      	mov	r2, r3
1a000eee:	68b8      	ldr	r0, [r7, #8]
1a000ef0:	f000 f8de 	bl	1a0010b0 <RingBuffer_InsertMult>
1a000ef4:	4603      	mov	r3, r0
1a000ef6:	461a      	mov	r2, r3
1a000ef8:	693b      	ldr	r3, [r7, #16]
1a000efa:	4413      	add	r3, r2
1a000efc:	613b      	str	r3, [r7, #16]
1a000efe:	2102      	movs	r1, #2
1a000f00:	68f8      	ldr	r0, [r7, #12]
1a000f02:	f7ff fe68 	bl	1a000bd6 <Chip_UART_IntEnable>
1a000f06:	693b      	ldr	r3, [r7, #16]
1a000f08:	4618      	mov	r0, r3
1a000f0a:	3718      	adds	r7, #24
1a000f0c:	46bd      	mov	sp, r7
1a000f0e:	bd80      	pop	{r7, pc}

1a000f10 <Chip_UART_ReadRB>:
1a000f10:	b580      	push	{r7, lr}
1a000f12:	b084      	sub	sp, #16
1a000f14:	af00      	add	r7, sp, #0
1a000f16:	60f8      	str	r0, [r7, #12]
1a000f18:	60b9      	str	r1, [r7, #8]
1a000f1a:	607a      	str	r2, [r7, #4]
1a000f1c:	603b      	str	r3, [r7, #0]
1a000f1e:	683a      	ldr	r2, [r7, #0]
1a000f20:	6879      	ldr	r1, [r7, #4]
1a000f22:	68b8      	ldr	r0, [r7, #8]
1a000f24:	f000 f983 	bl	1a00122e <RingBuffer_PopMult>
1a000f28:	4603      	mov	r3, r0
1a000f2a:	4618      	mov	r0, r3
1a000f2c:	3710      	adds	r7, #16
1a000f2e:	46bd      	mov	sp, r7
1a000f30:	bd80      	pop	{r7, pc}

1a000f32 <Chip_TIMER_Enable>:
1a000f32:	b480      	push	{r7}
1a000f34:	b083      	sub	sp, #12
1a000f36:	af00      	add	r7, sp, #0
1a000f38:	6078      	str	r0, [r7, #4]
1a000f3a:	687b      	ldr	r3, [r7, #4]
1a000f3c:	685b      	ldr	r3, [r3, #4]
1a000f3e:	f043 0201 	orr.w	r2, r3, #1
1a000f42:	687b      	ldr	r3, [r7, #4]
1a000f44:	605a      	str	r2, [r3, #4]
1a000f46:	bf00      	nop
1a000f48:	370c      	adds	r7, #12
1a000f4a:	46bd      	mov	sp, r7
1a000f4c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f50:	4770      	bx	lr

1a000f52 <Chip_TIMER_PrescaleSet>:
1a000f52:	b480      	push	{r7}
1a000f54:	b083      	sub	sp, #12
1a000f56:	af00      	add	r7, sp, #0
1a000f58:	6078      	str	r0, [r7, #4]
1a000f5a:	6039      	str	r1, [r7, #0]
1a000f5c:	687b      	ldr	r3, [r7, #4]
1a000f5e:	683a      	ldr	r2, [r7, #0]
1a000f60:	60da      	str	r2, [r3, #12]
1a000f62:	bf00      	nop
1a000f64:	370c      	adds	r7, #12
1a000f66:	46bd      	mov	sp, r7
1a000f68:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f6c:	4770      	bx	lr
1a000f6e:	Address 0x000000001a000f6e is out of bounds.


1a000f70 <StopWatch_Init>:
1a000f70:	b580      	push	{r7, lr}
1a000f72:	b082      	sub	sp, #8
1a000f74:	af00      	add	r7, sp, #0
1a000f76:	2308      	movs	r3, #8
1a000f78:	607b      	str	r3, [r7, #4]
1a000f7a:	4814      	ldr	r0, [pc, #80]	; (1a000fcc <StopWatch_Init+0x5c>)
1a000f7c:	f000 ff3a 	bl	1a001df4 <Chip_TIMER_Init>
1a000f80:	687b      	ldr	r3, [r7, #4]
1a000f82:	3b01      	subs	r3, #1
1a000f84:	4619      	mov	r1, r3
1a000f86:	4811      	ldr	r0, [pc, #68]	; (1a000fcc <StopWatch_Init+0x5c>)
1a000f88:	f7ff ffe3 	bl	1a000f52 <Chip_TIMER_PrescaleSet>
1a000f8c:	480f      	ldr	r0, [pc, #60]	; (1a000fcc <StopWatch_Init+0x5c>)
1a000f8e:	f7ff ffd0 	bl	1a000f32 <Chip_TIMER_Enable>
1a000f92:	2084      	movs	r0, #132	; 0x84
1a000f94:	f000 feac 	bl	1a001cf0 <Chip_Clock_GetRate>
1a000f98:	4602      	mov	r2, r0
1a000f9a:	687b      	ldr	r3, [r7, #4]
1a000f9c:	fbb2 f3f3 	udiv	r3, r2, r3
1a000fa0:	4a0b      	ldr	r2, [pc, #44]	; (1a000fd0 <StopWatch_Init+0x60>)
1a000fa2:	6013      	str	r3, [r2, #0]
1a000fa4:	4b0a      	ldr	r3, [pc, #40]	; (1a000fd0 <StopWatch_Init+0x60>)
1a000fa6:	681b      	ldr	r3, [r3, #0]
1a000fa8:	4a0a      	ldr	r2, [pc, #40]	; (1a000fd4 <StopWatch_Init+0x64>)
1a000faa:	fba2 2303 	umull	r2, r3, r2, r3
1a000fae:	099b      	lsrs	r3, r3, #6
1a000fb0:	4a09      	ldr	r2, [pc, #36]	; (1a000fd8 <StopWatch_Init+0x68>)
1a000fb2:	6013      	str	r3, [r2, #0]
1a000fb4:	4b06      	ldr	r3, [pc, #24]	; (1a000fd0 <StopWatch_Init+0x60>)
1a000fb6:	681b      	ldr	r3, [r3, #0]
1a000fb8:	4a08      	ldr	r2, [pc, #32]	; (1a000fdc <StopWatch_Init+0x6c>)
1a000fba:	fba2 2303 	umull	r2, r3, r2, r3
1a000fbe:	0c9b      	lsrs	r3, r3, #18
1a000fc0:	4a07      	ldr	r2, [pc, #28]	; (1a000fe0 <StopWatch_Init+0x70>)
1a000fc2:	6013      	str	r3, [r2, #0]
1a000fc4:	bf00      	nop
1a000fc6:	3708      	adds	r7, #8
1a000fc8:	46bd      	mov	sp, r7
1a000fca:	bd80      	pop	{r7, pc}
1a000fcc:	40084000 	.word	0x40084000
1a000fd0:	100000c8 	.word	0x100000c8
1a000fd4:	10624dd3 	.word	0x10624dd3
1a000fd8:	100000cc 	.word	0x100000cc
1a000fdc:	431bde83 	.word	0x431bde83
1a000fe0:	100000d0 	.word	0x100000d0

1a000fe4 <RingBuffer_GetCount>:
1a000fe4:	b480      	push	{r7}
1a000fe6:	b083      	sub	sp, #12
1a000fe8:	af00      	add	r7, sp, #0
1a000fea:	6078      	str	r0, [r7, #4]
1a000fec:	687b      	ldr	r3, [r7, #4]
1a000fee:	330c      	adds	r3, #12
1a000ff0:	681a      	ldr	r2, [r3, #0]
1a000ff2:	687b      	ldr	r3, [r7, #4]
1a000ff4:	3310      	adds	r3, #16
1a000ff6:	681b      	ldr	r3, [r3, #0]
1a000ff8:	1ad3      	subs	r3, r2, r3
1a000ffa:	4618      	mov	r0, r3
1a000ffc:	370c      	adds	r7, #12
1a000ffe:	46bd      	mov	sp, r7
1a001000:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001004:	4770      	bx	lr

1a001006 <RingBuffer_GetFree>:
1a001006:	b590      	push	{r4, r7, lr}
1a001008:	b083      	sub	sp, #12
1a00100a:	af00      	add	r7, sp, #0
1a00100c:	6078      	str	r0, [r7, #4]
1a00100e:	687b      	ldr	r3, [r7, #4]
1a001010:	685c      	ldr	r4, [r3, #4]
1a001012:	6878      	ldr	r0, [r7, #4]
1a001014:	f7ff ffe6 	bl	1a000fe4 <RingBuffer_GetCount>
1a001018:	4603      	mov	r3, r0
1a00101a:	1ae3      	subs	r3, r4, r3
1a00101c:	4618      	mov	r0, r3
1a00101e:	370c      	adds	r7, #12
1a001020:	46bd      	mov	sp, r7
1a001022:	bd90      	pop	{r4, r7, pc}

1a001024 <RingBuffer_IsFull>:
1a001024:	b580      	push	{r7, lr}
1a001026:	b082      	sub	sp, #8
1a001028:	af00      	add	r7, sp, #0
1a00102a:	6078      	str	r0, [r7, #4]
1a00102c:	6878      	ldr	r0, [r7, #4]
1a00102e:	f7ff ffd9 	bl	1a000fe4 <RingBuffer_GetCount>
1a001032:	4602      	mov	r2, r0
1a001034:	687b      	ldr	r3, [r7, #4]
1a001036:	685b      	ldr	r3, [r3, #4]
1a001038:	429a      	cmp	r2, r3
1a00103a:	bfac      	ite	ge
1a00103c:	2301      	movge	r3, #1
1a00103e:	2300      	movlt	r3, #0
1a001040:	b2db      	uxtb	r3, r3
1a001042:	4618      	mov	r0, r3
1a001044:	3708      	adds	r7, #8
1a001046:	46bd      	mov	sp, r7
1a001048:	bd80      	pop	{r7, pc}

1a00104a <RingBuffer_IsEmpty>:
1a00104a:	b480      	push	{r7}
1a00104c:	b083      	sub	sp, #12
1a00104e:	af00      	add	r7, sp, #0
1a001050:	6078      	str	r0, [r7, #4]
1a001052:	687b      	ldr	r3, [r7, #4]
1a001054:	330c      	adds	r3, #12
1a001056:	681a      	ldr	r2, [r3, #0]
1a001058:	687b      	ldr	r3, [r7, #4]
1a00105a:	3310      	adds	r3, #16
1a00105c:	681b      	ldr	r3, [r3, #0]
1a00105e:	429a      	cmp	r2, r3
1a001060:	bf0c      	ite	eq
1a001062:	2301      	moveq	r3, #1
1a001064:	2300      	movne	r3, #0
1a001066:	b2db      	uxtb	r3, r3
1a001068:	4618      	mov	r0, r3
1a00106a:	370c      	adds	r7, #12
1a00106c:	46bd      	mov	sp, r7
1a00106e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001072:	4770      	bx	lr

1a001074 <RingBuffer_Init>:
1a001074:	b480      	push	{r7}
1a001076:	b085      	sub	sp, #20
1a001078:	af00      	add	r7, sp, #0
1a00107a:	60f8      	str	r0, [r7, #12]
1a00107c:	60b9      	str	r1, [r7, #8]
1a00107e:	607a      	str	r2, [r7, #4]
1a001080:	603b      	str	r3, [r7, #0]
1a001082:	68fb      	ldr	r3, [r7, #12]
1a001084:	68ba      	ldr	r2, [r7, #8]
1a001086:	601a      	str	r2, [r3, #0]
1a001088:	68fb      	ldr	r3, [r7, #12]
1a00108a:	683a      	ldr	r2, [r7, #0]
1a00108c:	605a      	str	r2, [r3, #4]
1a00108e:	68fb      	ldr	r3, [r7, #12]
1a001090:	687a      	ldr	r2, [r7, #4]
1a001092:	609a      	str	r2, [r3, #8]
1a001094:	68fb      	ldr	r3, [r7, #12]
1a001096:	2200      	movs	r2, #0
1a001098:	611a      	str	r2, [r3, #16]
1a00109a:	68fb      	ldr	r3, [r7, #12]
1a00109c:	691a      	ldr	r2, [r3, #16]
1a00109e:	68fb      	ldr	r3, [r7, #12]
1a0010a0:	60da      	str	r2, [r3, #12]
1a0010a2:	2301      	movs	r3, #1
1a0010a4:	4618      	mov	r0, r3
1a0010a6:	3714      	adds	r7, #20
1a0010a8:	46bd      	mov	sp, r7
1a0010aa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010ae:	4770      	bx	lr

1a0010b0 <RingBuffer_InsertMult>:
1a0010b0:	b580      	push	{r7, lr}
1a0010b2:	b088      	sub	sp, #32
1a0010b4:	af00      	add	r7, sp, #0
1a0010b6:	60f8      	str	r0, [r7, #12]
1a0010b8:	60b9      	str	r1, [r7, #8]
1a0010ba:	607a      	str	r2, [r7, #4]
1a0010bc:	68fb      	ldr	r3, [r7, #12]
1a0010be:	681b      	ldr	r3, [r3, #0]
1a0010c0:	61bb      	str	r3, [r7, #24]
1a0010c2:	68f8      	ldr	r0, [r7, #12]
1a0010c4:	f7ff ffae 	bl	1a001024 <RingBuffer_IsFull>
1a0010c8:	4603      	mov	r3, r0
1a0010ca:	2b00      	cmp	r3, #0
1a0010cc:	d001      	beq.n	1a0010d2 <RingBuffer_InsertMult+0x22>
1a0010ce:	2300      	movs	r3, #0
1a0010d0:	e07b      	b.n	1a0011ca <RingBuffer_InsertMult+0x11a>
1a0010d2:	68f8      	ldr	r0, [r7, #12]
1a0010d4:	f7ff ff97 	bl	1a001006 <RingBuffer_GetFree>
1a0010d8:	6178      	str	r0, [r7, #20]
1a0010da:	697b      	ldr	r3, [r7, #20]
1a0010dc:	61fb      	str	r3, [r7, #28]
1a0010de:	68fb      	ldr	r3, [r7, #12]
1a0010e0:	68db      	ldr	r3, [r3, #12]
1a0010e2:	68fa      	ldr	r2, [r7, #12]
1a0010e4:	6852      	ldr	r2, [r2, #4]
1a0010e6:	3a01      	subs	r2, #1
1a0010e8:	401a      	ands	r2, r3
1a0010ea:	69fb      	ldr	r3, [r7, #28]
1a0010ec:	4413      	add	r3, r2
1a0010ee:	68fa      	ldr	r2, [r7, #12]
1a0010f0:	6852      	ldr	r2, [r2, #4]
1a0010f2:	4293      	cmp	r3, r2
1a0010f4:	d30a      	bcc.n	1a00110c <RingBuffer_InsertMult+0x5c>
1a0010f6:	68fb      	ldr	r3, [r7, #12]
1a0010f8:	685b      	ldr	r3, [r3, #4]
1a0010fa:	4619      	mov	r1, r3
1a0010fc:	68fb      	ldr	r3, [r7, #12]
1a0010fe:	68db      	ldr	r3, [r3, #12]
1a001100:	68fa      	ldr	r2, [r7, #12]
1a001102:	6852      	ldr	r2, [r2, #4]
1a001104:	3a01      	subs	r2, #1
1a001106:	4013      	ands	r3, r2
1a001108:	1acb      	subs	r3, r1, r3
1a00110a:	61fb      	str	r3, [r7, #28]
1a00110c:	697a      	ldr	r2, [r7, #20]
1a00110e:	69fb      	ldr	r3, [r7, #28]
1a001110:	1ad3      	subs	r3, r2, r3
1a001112:	617b      	str	r3, [r7, #20]
1a001114:	69fa      	ldr	r2, [r7, #28]
1a001116:	687b      	ldr	r3, [r7, #4]
1a001118:	4293      	cmp	r3, r2
1a00111a:	bfa8      	it	ge
1a00111c:	4613      	movge	r3, r2
1a00111e:	61fb      	str	r3, [r7, #28]
1a001120:	687a      	ldr	r2, [r7, #4]
1a001122:	69fb      	ldr	r3, [r7, #28]
1a001124:	1ad3      	subs	r3, r2, r3
1a001126:	607b      	str	r3, [r7, #4]
1a001128:	697a      	ldr	r2, [r7, #20]
1a00112a:	687b      	ldr	r3, [r7, #4]
1a00112c:	4293      	cmp	r3, r2
1a00112e:	bfa8      	it	ge
1a001130:	4613      	movge	r3, r2
1a001132:	617b      	str	r3, [r7, #20]
1a001134:	687a      	ldr	r2, [r7, #4]
1a001136:	697b      	ldr	r3, [r7, #20]
1a001138:	1ad3      	subs	r3, r2, r3
1a00113a:	607b      	str	r3, [r7, #4]
1a00113c:	68fb      	ldr	r3, [r7, #12]
1a00113e:	68db      	ldr	r3, [r3, #12]
1a001140:	68fa      	ldr	r2, [r7, #12]
1a001142:	6852      	ldr	r2, [r2, #4]
1a001144:	3a01      	subs	r2, #1
1a001146:	4013      	ands	r3, r2
1a001148:	68fa      	ldr	r2, [r7, #12]
1a00114a:	6892      	ldr	r2, [r2, #8]
1a00114c:	fb02 f303 	mul.w	r3, r2, r3
1a001150:	69ba      	ldr	r2, [r7, #24]
1a001152:	4413      	add	r3, r2
1a001154:	61bb      	str	r3, [r7, #24]
1a001156:	68fb      	ldr	r3, [r7, #12]
1a001158:	689b      	ldr	r3, [r3, #8]
1a00115a:	69fa      	ldr	r2, [r7, #28]
1a00115c:	fb02 f303 	mul.w	r3, r2, r3
1a001160:	461a      	mov	r2, r3
1a001162:	68b9      	ldr	r1, [r7, #8]
1a001164:	69b8      	ldr	r0, [r7, #24]
1a001166:	f000 fe55 	bl	1a001e14 <memcpy>
1a00116a:	68fb      	ldr	r3, [r7, #12]
1a00116c:	68da      	ldr	r2, [r3, #12]
1a00116e:	69fb      	ldr	r3, [r7, #28]
1a001170:	441a      	add	r2, r3
1a001172:	68fb      	ldr	r3, [r7, #12]
1a001174:	60da      	str	r2, [r3, #12]
1a001176:	68fb      	ldr	r3, [r7, #12]
1a001178:	681a      	ldr	r2, [r3, #0]
1a00117a:	68fb      	ldr	r3, [r7, #12]
1a00117c:	68db      	ldr	r3, [r3, #12]
1a00117e:	68f9      	ldr	r1, [r7, #12]
1a001180:	6849      	ldr	r1, [r1, #4]
1a001182:	3901      	subs	r1, #1
1a001184:	400b      	ands	r3, r1
1a001186:	68f9      	ldr	r1, [r7, #12]
1a001188:	6889      	ldr	r1, [r1, #8]
1a00118a:	fb01 f303 	mul.w	r3, r1, r3
1a00118e:	4413      	add	r3, r2
1a001190:	61bb      	str	r3, [r7, #24]
1a001192:	68fb      	ldr	r3, [r7, #12]
1a001194:	689b      	ldr	r3, [r3, #8]
1a001196:	69fa      	ldr	r2, [r7, #28]
1a001198:	fb02 f303 	mul.w	r3, r2, r3
1a00119c:	461a      	mov	r2, r3
1a00119e:	68bb      	ldr	r3, [r7, #8]
1a0011a0:	4413      	add	r3, r2
1a0011a2:	60bb      	str	r3, [r7, #8]
1a0011a4:	68fb      	ldr	r3, [r7, #12]
1a0011a6:	689b      	ldr	r3, [r3, #8]
1a0011a8:	697a      	ldr	r2, [r7, #20]
1a0011aa:	fb02 f303 	mul.w	r3, r2, r3
1a0011ae:	461a      	mov	r2, r3
1a0011b0:	68b9      	ldr	r1, [r7, #8]
1a0011b2:	69b8      	ldr	r0, [r7, #24]
1a0011b4:	f000 fe2e 	bl	1a001e14 <memcpy>
1a0011b8:	68fb      	ldr	r3, [r7, #12]
1a0011ba:	68da      	ldr	r2, [r3, #12]
1a0011bc:	697b      	ldr	r3, [r7, #20]
1a0011be:	441a      	add	r2, r3
1a0011c0:	68fb      	ldr	r3, [r7, #12]
1a0011c2:	60da      	str	r2, [r3, #12]
1a0011c4:	69fa      	ldr	r2, [r7, #28]
1a0011c6:	697b      	ldr	r3, [r7, #20]
1a0011c8:	4413      	add	r3, r2
1a0011ca:	4618      	mov	r0, r3
1a0011cc:	3720      	adds	r7, #32
1a0011ce:	46bd      	mov	sp, r7
1a0011d0:	bd80      	pop	{r7, pc}

1a0011d2 <RingBuffer_Pop>:
1a0011d2:	b580      	push	{r7, lr}
1a0011d4:	b084      	sub	sp, #16
1a0011d6:	af00      	add	r7, sp, #0
1a0011d8:	6078      	str	r0, [r7, #4]
1a0011da:	6039      	str	r1, [r7, #0]
1a0011dc:	687b      	ldr	r3, [r7, #4]
1a0011de:	681b      	ldr	r3, [r3, #0]
1a0011e0:	60fb      	str	r3, [r7, #12]
1a0011e2:	6878      	ldr	r0, [r7, #4]
1a0011e4:	f7ff ff31 	bl	1a00104a <RingBuffer_IsEmpty>
1a0011e8:	4603      	mov	r3, r0
1a0011ea:	2b00      	cmp	r3, #0
1a0011ec:	d001      	beq.n	1a0011f2 <RingBuffer_Pop+0x20>
1a0011ee:	2300      	movs	r3, #0
1a0011f0:	e019      	b.n	1a001226 <RingBuffer_Pop+0x54>
1a0011f2:	687b      	ldr	r3, [r7, #4]
1a0011f4:	691b      	ldr	r3, [r3, #16]
1a0011f6:	687a      	ldr	r2, [r7, #4]
1a0011f8:	6852      	ldr	r2, [r2, #4]
1a0011fa:	3a01      	subs	r2, #1
1a0011fc:	4013      	ands	r3, r2
1a0011fe:	687a      	ldr	r2, [r7, #4]
1a001200:	6892      	ldr	r2, [r2, #8]
1a001202:	fb02 f303 	mul.w	r3, r2, r3
1a001206:	68fa      	ldr	r2, [r7, #12]
1a001208:	4413      	add	r3, r2
1a00120a:	60fb      	str	r3, [r7, #12]
1a00120c:	687b      	ldr	r3, [r7, #4]
1a00120e:	689b      	ldr	r3, [r3, #8]
1a001210:	461a      	mov	r2, r3
1a001212:	68f9      	ldr	r1, [r7, #12]
1a001214:	6838      	ldr	r0, [r7, #0]
1a001216:	f000 fdfd 	bl	1a001e14 <memcpy>
1a00121a:	687b      	ldr	r3, [r7, #4]
1a00121c:	691b      	ldr	r3, [r3, #16]
1a00121e:	1c5a      	adds	r2, r3, #1
1a001220:	687b      	ldr	r3, [r7, #4]
1a001222:	611a      	str	r2, [r3, #16]
1a001224:	2301      	movs	r3, #1
1a001226:	4618      	mov	r0, r3
1a001228:	3710      	adds	r7, #16
1a00122a:	46bd      	mov	sp, r7
1a00122c:	bd80      	pop	{r7, pc}

1a00122e <RingBuffer_PopMult>:
1a00122e:	b580      	push	{r7, lr}
1a001230:	b088      	sub	sp, #32
1a001232:	af00      	add	r7, sp, #0
1a001234:	60f8      	str	r0, [r7, #12]
1a001236:	60b9      	str	r1, [r7, #8]
1a001238:	607a      	str	r2, [r7, #4]
1a00123a:	68fb      	ldr	r3, [r7, #12]
1a00123c:	681b      	ldr	r3, [r3, #0]
1a00123e:	61bb      	str	r3, [r7, #24]
1a001240:	68f8      	ldr	r0, [r7, #12]
1a001242:	f7ff ff02 	bl	1a00104a <RingBuffer_IsEmpty>
1a001246:	4603      	mov	r3, r0
1a001248:	2b00      	cmp	r3, #0
1a00124a:	d001      	beq.n	1a001250 <RingBuffer_PopMult+0x22>
1a00124c:	2300      	movs	r3, #0
1a00124e:	e07b      	b.n	1a001348 <RingBuffer_PopMult+0x11a>
1a001250:	68f8      	ldr	r0, [r7, #12]
1a001252:	f7ff fec7 	bl	1a000fe4 <RingBuffer_GetCount>
1a001256:	6178      	str	r0, [r7, #20]
1a001258:	697b      	ldr	r3, [r7, #20]
1a00125a:	61fb      	str	r3, [r7, #28]
1a00125c:	68fb      	ldr	r3, [r7, #12]
1a00125e:	691b      	ldr	r3, [r3, #16]
1a001260:	68fa      	ldr	r2, [r7, #12]
1a001262:	6852      	ldr	r2, [r2, #4]
1a001264:	3a01      	subs	r2, #1
1a001266:	401a      	ands	r2, r3
1a001268:	69fb      	ldr	r3, [r7, #28]
1a00126a:	4413      	add	r3, r2
1a00126c:	68fa      	ldr	r2, [r7, #12]
1a00126e:	6852      	ldr	r2, [r2, #4]
1a001270:	4293      	cmp	r3, r2
1a001272:	d30a      	bcc.n	1a00128a <RingBuffer_PopMult+0x5c>
1a001274:	68fb      	ldr	r3, [r7, #12]
1a001276:	685b      	ldr	r3, [r3, #4]
1a001278:	4619      	mov	r1, r3
1a00127a:	68fb      	ldr	r3, [r7, #12]
1a00127c:	691b      	ldr	r3, [r3, #16]
1a00127e:	68fa      	ldr	r2, [r7, #12]
1a001280:	6852      	ldr	r2, [r2, #4]
1a001282:	3a01      	subs	r2, #1
1a001284:	4013      	ands	r3, r2
1a001286:	1acb      	subs	r3, r1, r3
1a001288:	61fb      	str	r3, [r7, #28]
1a00128a:	697a      	ldr	r2, [r7, #20]
1a00128c:	69fb      	ldr	r3, [r7, #28]
1a00128e:	1ad3      	subs	r3, r2, r3
1a001290:	617b      	str	r3, [r7, #20]
1a001292:	69fa      	ldr	r2, [r7, #28]
1a001294:	687b      	ldr	r3, [r7, #4]
1a001296:	4293      	cmp	r3, r2
1a001298:	bfa8      	it	ge
1a00129a:	4613      	movge	r3, r2
1a00129c:	61fb      	str	r3, [r7, #28]
1a00129e:	687a      	ldr	r2, [r7, #4]
1a0012a0:	69fb      	ldr	r3, [r7, #28]
1a0012a2:	1ad3      	subs	r3, r2, r3
1a0012a4:	607b      	str	r3, [r7, #4]
1a0012a6:	697a      	ldr	r2, [r7, #20]
1a0012a8:	687b      	ldr	r3, [r7, #4]
1a0012aa:	4293      	cmp	r3, r2
1a0012ac:	bfa8      	it	ge
1a0012ae:	4613      	movge	r3, r2
1a0012b0:	617b      	str	r3, [r7, #20]
1a0012b2:	687a      	ldr	r2, [r7, #4]
1a0012b4:	697b      	ldr	r3, [r7, #20]
1a0012b6:	1ad3      	subs	r3, r2, r3
1a0012b8:	607b      	str	r3, [r7, #4]
1a0012ba:	68fb      	ldr	r3, [r7, #12]
1a0012bc:	691b      	ldr	r3, [r3, #16]
1a0012be:	68fa      	ldr	r2, [r7, #12]
1a0012c0:	6852      	ldr	r2, [r2, #4]
1a0012c2:	3a01      	subs	r2, #1
1a0012c4:	4013      	ands	r3, r2
1a0012c6:	68fa      	ldr	r2, [r7, #12]
1a0012c8:	6892      	ldr	r2, [r2, #8]
1a0012ca:	fb02 f303 	mul.w	r3, r2, r3
1a0012ce:	69ba      	ldr	r2, [r7, #24]
1a0012d0:	4413      	add	r3, r2
1a0012d2:	61bb      	str	r3, [r7, #24]
1a0012d4:	68fb      	ldr	r3, [r7, #12]
1a0012d6:	689b      	ldr	r3, [r3, #8]
1a0012d8:	69fa      	ldr	r2, [r7, #28]
1a0012da:	fb02 f303 	mul.w	r3, r2, r3
1a0012de:	461a      	mov	r2, r3
1a0012e0:	69b9      	ldr	r1, [r7, #24]
1a0012e2:	68b8      	ldr	r0, [r7, #8]
1a0012e4:	f000 fd96 	bl	1a001e14 <memcpy>
1a0012e8:	68fb      	ldr	r3, [r7, #12]
1a0012ea:	691a      	ldr	r2, [r3, #16]
1a0012ec:	69fb      	ldr	r3, [r7, #28]
1a0012ee:	441a      	add	r2, r3
1a0012f0:	68fb      	ldr	r3, [r7, #12]
1a0012f2:	611a      	str	r2, [r3, #16]
1a0012f4:	68fb      	ldr	r3, [r7, #12]
1a0012f6:	681a      	ldr	r2, [r3, #0]
1a0012f8:	68fb      	ldr	r3, [r7, #12]
1a0012fa:	691b      	ldr	r3, [r3, #16]
1a0012fc:	68f9      	ldr	r1, [r7, #12]
1a0012fe:	6849      	ldr	r1, [r1, #4]
1a001300:	3901      	subs	r1, #1
1a001302:	400b      	ands	r3, r1
1a001304:	68f9      	ldr	r1, [r7, #12]
1a001306:	6889      	ldr	r1, [r1, #8]
1a001308:	fb01 f303 	mul.w	r3, r1, r3
1a00130c:	4413      	add	r3, r2
1a00130e:	61bb      	str	r3, [r7, #24]
1a001310:	68fb      	ldr	r3, [r7, #12]
1a001312:	689b      	ldr	r3, [r3, #8]
1a001314:	69fa      	ldr	r2, [r7, #28]
1a001316:	fb02 f303 	mul.w	r3, r2, r3
1a00131a:	461a      	mov	r2, r3
1a00131c:	68bb      	ldr	r3, [r7, #8]
1a00131e:	4413      	add	r3, r2
1a001320:	60bb      	str	r3, [r7, #8]
1a001322:	68fb      	ldr	r3, [r7, #12]
1a001324:	689b      	ldr	r3, [r3, #8]
1a001326:	697a      	ldr	r2, [r7, #20]
1a001328:	fb02 f303 	mul.w	r3, r2, r3
1a00132c:	461a      	mov	r2, r3
1a00132e:	69b9      	ldr	r1, [r7, #24]
1a001330:	68b8      	ldr	r0, [r7, #8]
1a001332:	f000 fd6f 	bl	1a001e14 <memcpy>
1a001336:	68fb      	ldr	r3, [r7, #12]
1a001338:	691a      	ldr	r2, [r3, #16]
1a00133a:	697b      	ldr	r3, [r7, #20]
1a00133c:	441a      	add	r2, r3
1a00133e:	68fb      	ldr	r3, [r7, #12]
1a001340:	611a      	str	r2, [r3, #16]
1a001342:	69fa      	ldr	r2, [r7, #28]
1a001344:	697b      	ldr	r3, [r7, #20]
1a001346:	4413      	add	r3, r2
1a001348:	4618      	mov	r0, r3
1a00134a:	3720      	adds	r7, #32
1a00134c:	46bd      	mov	sp, r7
1a00134e:	bd80      	pop	{r7, pc}

1a001350 <ABS>:
1a001350:	b480      	push	{r7}
1a001352:	b083      	sub	sp, #12
1a001354:	af00      	add	r7, sp, #0
1a001356:	6078      	str	r0, [r7, #4]
1a001358:	687b      	ldr	r3, [r7, #4]
1a00135a:	2b00      	cmp	r3, #0
1a00135c:	da02      	bge.n	1a001364 <ABS+0x14>
1a00135e:	687b      	ldr	r3, [r7, #4]
1a001360:	425b      	negs	r3, r3
1a001362:	e000      	b.n	1a001366 <ABS+0x16>
1a001364:	687b      	ldr	r3, [r7, #4]
1a001366:	4618      	mov	r0, r3
1a001368:	370c      	adds	r7, #12
1a00136a:	46bd      	mov	sp, r7
1a00136c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001370:	4770      	bx	lr
1a001372:	Address 0x000000001a001372 is out of bounds.


1a001374 <pll_calc_divs>:
1a001374:	b580      	push	{r7, lr}
1a001376:	b088      	sub	sp, #32
1a001378:	af00      	add	r7, sp, #0
1a00137a:	6078      	str	r0, [r7, #4]
1a00137c:	6039      	str	r1, [r7, #0]
1a00137e:	687b      	ldr	r3, [r7, #4]
1a001380:	61fb      	str	r3, [r7, #28]
1a001382:	683b      	ldr	r3, [r7, #0]
1a001384:	681b      	ldr	r3, [r3, #0]
1a001386:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00138a:	2b00      	cmp	r3, #0
1a00138c:	d005      	beq.n	1a00139a <pll_calc_divs+0x26>
1a00138e:	683b      	ldr	r3, [r7, #0]
1a001390:	681b      	ldr	r3, [r3, #0]
1a001392:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a001396:	683b      	ldr	r3, [r7, #0]
1a001398:	601a      	str	r2, [r3, #0]
1a00139a:	2301      	movs	r3, #1
1a00139c:	61bb      	str	r3, [r7, #24]
1a00139e:	e06f      	b.n	1a001480 <pll_calc_divs+0x10c>
1a0013a0:	2300      	movs	r3, #0
1a0013a2:	613b      	str	r3, [r7, #16]
1a0013a4:	e066      	b.n	1a001474 <pll_calc_divs+0x100>
1a0013a6:	2301      	movs	r3, #1
1a0013a8:	617b      	str	r3, [r7, #20]
1a0013aa:	e05a      	b.n	1a001462 <pll_calc_divs+0xee>
1a0013ac:	683b      	ldr	r3, [r7, #0]
1a0013ae:	681b      	ldr	r3, [r3, #0]
1a0013b0:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0013b4:	2b00      	cmp	r3, #0
1a0013b6:	d00e      	beq.n	1a0013d6 <pll_calc_divs+0x62>
1a0013b8:	693b      	ldr	r3, [r7, #16]
1a0013ba:	3301      	adds	r3, #1
1a0013bc:	697a      	ldr	r2, [r7, #20]
1a0013be:	fa02 f303 	lsl.w	r3, r2, r3
1a0013c2:	461a      	mov	r2, r3
1a0013c4:	683b      	ldr	r3, [r7, #0]
1a0013c6:	695b      	ldr	r3, [r3, #20]
1a0013c8:	fb03 f202 	mul.w	r2, r3, r2
1a0013cc:	69bb      	ldr	r3, [r7, #24]
1a0013ce:	fbb2 f3f3 	udiv	r3, r2, r3
1a0013d2:	60fb      	str	r3, [r7, #12]
1a0013d4:	e008      	b.n	1a0013e8 <pll_calc_divs+0x74>
1a0013d6:	683b      	ldr	r3, [r7, #0]
1a0013d8:	695b      	ldr	r3, [r3, #20]
1a0013da:	697a      	ldr	r2, [r7, #20]
1a0013dc:	fb02 f203 	mul.w	r2, r2, r3
1a0013e0:	69bb      	ldr	r3, [r7, #24]
1a0013e2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0013e6:	60fb      	str	r3, [r7, #12]
1a0013e8:	68fb      	ldr	r3, [r7, #12]
1a0013ea:	4a29      	ldr	r2, [pc, #164]	; (1a001490 <pll_calc_divs+0x11c>)
1a0013ec:	4293      	cmp	r3, r2
1a0013ee:	d934      	bls.n	1a00145a <pll_calc_divs+0xe6>
1a0013f0:	68fb      	ldr	r3, [r7, #12]
1a0013f2:	4a28      	ldr	r2, [pc, #160]	; (1a001494 <pll_calc_divs+0x120>)
1a0013f4:	4293      	cmp	r3, r2
1a0013f6:	d839      	bhi.n	1a00146c <pll_calc_divs+0xf8>
1a0013f8:	683b      	ldr	r3, [r7, #0]
1a0013fa:	681b      	ldr	r3, [r3, #0]
1a0013fc:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001400:	2b00      	cmp	r3, #0
1a001402:	d002      	beq.n	1a00140a <pll_calc_divs+0x96>
1a001404:	68fb      	ldr	r3, [r7, #12]
1a001406:	60bb      	str	r3, [r7, #8]
1a001408:	e005      	b.n	1a001416 <pll_calc_divs+0xa2>
1a00140a:	693b      	ldr	r3, [r7, #16]
1a00140c:	3301      	adds	r3, #1
1a00140e:	68fa      	ldr	r2, [r7, #12]
1a001410:	fa22 f303 	lsr.w	r3, r2, r3
1a001414:	60bb      	str	r3, [r7, #8]
1a001416:	687a      	ldr	r2, [r7, #4]
1a001418:	68bb      	ldr	r3, [r7, #8]
1a00141a:	1ad3      	subs	r3, r2, r3
1a00141c:	4618      	mov	r0, r3
1a00141e:	f7ff ff97 	bl	1a001350 <ABS>
1a001422:	4602      	mov	r2, r0
1a001424:	69fb      	ldr	r3, [r7, #28]
1a001426:	4293      	cmp	r3, r2
1a001428:	d918      	bls.n	1a00145c <pll_calc_divs+0xe8>
1a00142a:	683b      	ldr	r3, [r7, #0]
1a00142c:	69ba      	ldr	r2, [r7, #24]
1a00142e:	609a      	str	r2, [r3, #8]
1a001430:	693b      	ldr	r3, [r7, #16]
1a001432:	1c5a      	adds	r2, r3, #1
1a001434:	683b      	ldr	r3, [r7, #0]
1a001436:	60da      	str	r2, [r3, #12]
1a001438:	683b      	ldr	r3, [r7, #0]
1a00143a:	697a      	ldr	r2, [r7, #20]
1a00143c:	611a      	str	r2, [r3, #16]
1a00143e:	683b      	ldr	r3, [r7, #0]
1a001440:	68ba      	ldr	r2, [r7, #8]
1a001442:	619a      	str	r2, [r3, #24]
1a001444:	683b      	ldr	r3, [r7, #0]
1a001446:	68fa      	ldr	r2, [r7, #12]
1a001448:	61da      	str	r2, [r3, #28]
1a00144a:	687a      	ldr	r2, [r7, #4]
1a00144c:	68bb      	ldr	r3, [r7, #8]
1a00144e:	1ad3      	subs	r3, r2, r3
1a001450:	4618      	mov	r0, r3
1a001452:	f7ff ff7d 	bl	1a001350 <ABS>
1a001456:	61f8      	str	r0, [r7, #28]
1a001458:	e000      	b.n	1a00145c <pll_calc_divs+0xe8>
1a00145a:	bf00      	nop
1a00145c:	697b      	ldr	r3, [r7, #20]
1a00145e:	3301      	adds	r3, #1
1a001460:	617b      	str	r3, [r7, #20]
1a001462:	697b      	ldr	r3, [r7, #20]
1a001464:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a001468:	dda0      	ble.n	1a0013ac <pll_calc_divs+0x38>
1a00146a:	e000      	b.n	1a00146e <pll_calc_divs+0xfa>
1a00146c:	bf00      	nop
1a00146e:	693b      	ldr	r3, [r7, #16]
1a001470:	3301      	adds	r3, #1
1a001472:	613b      	str	r3, [r7, #16]
1a001474:	693b      	ldr	r3, [r7, #16]
1a001476:	2b03      	cmp	r3, #3
1a001478:	dd95      	ble.n	1a0013a6 <pll_calc_divs+0x32>
1a00147a:	69bb      	ldr	r3, [r7, #24]
1a00147c:	3301      	adds	r3, #1
1a00147e:	61bb      	str	r3, [r7, #24]
1a001480:	69bb      	ldr	r3, [r7, #24]
1a001482:	2b04      	cmp	r3, #4
1a001484:	dd8c      	ble.n	1a0013a0 <pll_calc_divs+0x2c>
1a001486:	bf00      	nop
1a001488:	3720      	adds	r7, #32
1a00148a:	46bd      	mov	sp, r7
1a00148c:	bd80      	pop	{r7, pc}
1a00148e:	bf00      	nop
1a001490:	094c5eff 	.word	0x094c5eff
1a001494:	1312d000 	.word	0x1312d000

1a001498 <pll_get_frac>:
1a001498:	b5b0      	push	{r4, r5, r7, lr}
1a00149a:	b09e      	sub	sp, #120	; 0x78
1a00149c:	af00      	add	r7, sp, #0
1a00149e:	6078      	str	r0, [r7, #4]
1a0014a0:	6039      	str	r1, [r7, #0]
1a0014a2:	f107 030c 	add.w	r3, r7, #12
1a0014a6:	2260      	movs	r2, #96	; 0x60
1a0014a8:	2100      	movs	r1, #0
1a0014aa:	4618      	mov	r0, r3
1a0014ac:	f7fe ff28 	bl	1a000300 <memset>
1a0014b0:	68fb      	ldr	r3, [r7, #12]
1a0014b2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0014b6:	60fb      	str	r3, [r7, #12]
1a0014b8:	683b      	ldr	r3, [r7, #0]
1a0014ba:	695b      	ldr	r3, [r3, #20]
1a0014bc:	623b      	str	r3, [r7, #32]
1a0014be:	683b      	ldr	r3, [r7, #0]
1a0014c0:	791b      	ldrb	r3, [r3, #4]
1a0014c2:	743b      	strb	r3, [r7, #16]
1a0014c4:	f107 030c 	add.w	r3, r7, #12
1a0014c8:	4619      	mov	r1, r3
1a0014ca:	6878      	ldr	r0, [r7, #4]
1a0014cc:	f7ff ff52 	bl	1a001374 <pll_calc_divs>
1a0014d0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0014d2:	687a      	ldr	r2, [r7, #4]
1a0014d4:	429a      	cmp	r2, r3
1a0014d6:	d10a      	bne.n	1a0014ee <pll_get_frac+0x56>
1a0014d8:	683b      	ldr	r3, [r7, #0]
1a0014da:	461d      	mov	r5, r3
1a0014dc:	f107 040c 	add.w	r4, r7, #12
1a0014e0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0014e2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0014e4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0014e8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0014ec:	e08e      	b.n	1a00160c <pll_get_frac+0x174>
1a0014ee:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0014f0:	687a      	ldr	r2, [r7, #4]
1a0014f2:	1ad3      	subs	r3, r2, r3
1a0014f4:	4618      	mov	r0, r3
1a0014f6:	f7ff ff2b 	bl	1a001350 <ABS>
1a0014fa:	4603      	mov	r3, r0
1a0014fc:	66fb      	str	r3, [r7, #108]	; 0x6c
1a0014fe:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001500:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001504:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001506:	683b      	ldr	r3, [r7, #0]
1a001508:	695b      	ldr	r3, [r3, #20]
1a00150a:	663b      	str	r3, [r7, #96]	; 0x60
1a00150c:	683b      	ldr	r3, [r7, #0]
1a00150e:	791b      	ldrb	r3, [r3, #4]
1a001510:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001514:	f107 030c 	add.w	r3, r7, #12
1a001518:	3340      	adds	r3, #64	; 0x40
1a00151a:	4619      	mov	r1, r3
1a00151c:	6878      	ldr	r0, [r7, #4]
1a00151e:	f7ff ff29 	bl	1a001374 <pll_calc_divs>
1a001522:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001524:	687a      	ldr	r2, [r7, #4]
1a001526:	429a      	cmp	r2, r3
1a001528:	d10a      	bne.n	1a001540 <pll_get_frac+0xa8>
1a00152a:	683b      	ldr	r3, [r7, #0]
1a00152c:	461d      	mov	r5, r3
1a00152e:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001532:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001534:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001536:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00153a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00153e:	e065      	b.n	1a00160c <pll_get_frac+0x174>
1a001540:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001542:	687a      	ldr	r2, [r7, #4]
1a001544:	1ad3      	subs	r3, r2, r3
1a001546:	4618      	mov	r0, r3
1a001548:	f7ff ff02 	bl	1a001350 <ABS>
1a00154c:	4603      	mov	r3, r0
1a00154e:	677b      	str	r3, [r7, #116]	; 0x74
1a001550:	687b      	ldr	r3, [r7, #4]
1a001552:	4a30      	ldr	r2, [pc, #192]	; (1a001614 <pll_get_frac+0x17c>)
1a001554:	4293      	cmp	r3, r2
1a001556:	d81a      	bhi.n	1a00158e <pll_get_frac+0xf6>
1a001558:	2340      	movs	r3, #64	; 0x40
1a00155a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a00155c:	683b      	ldr	r3, [r7, #0]
1a00155e:	695b      	ldr	r3, [r3, #20]
1a001560:	643b      	str	r3, [r7, #64]	; 0x40
1a001562:	f107 030c 	add.w	r3, r7, #12
1a001566:	3320      	adds	r3, #32
1a001568:	4619      	mov	r1, r3
1a00156a:	6878      	ldr	r0, [r7, #4]
1a00156c:	f7ff ff02 	bl	1a001374 <pll_calc_divs>
1a001570:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001572:	687a      	ldr	r2, [r7, #4]
1a001574:	429a      	cmp	r2, r3
1a001576:	d10a      	bne.n	1a00158e <pll_get_frac+0xf6>
1a001578:	683b      	ldr	r3, [r7, #0]
1a00157a:	461d      	mov	r5, r3
1a00157c:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001580:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001582:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001584:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001588:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00158c:	e03e      	b.n	1a00160c <pll_get_frac+0x174>
1a00158e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001590:	687a      	ldr	r2, [r7, #4]
1a001592:	1ad3      	subs	r3, r2, r3
1a001594:	4618      	mov	r0, r3
1a001596:	f7ff fedb 	bl	1a001350 <ABS>
1a00159a:	4603      	mov	r3, r0
1a00159c:	673b      	str	r3, [r7, #112]	; 0x70
1a00159e:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0015a0:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a0015a2:	429a      	cmp	r2, r3
1a0015a4:	dc19      	bgt.n	1a0015da <pll_get_frac+0x142>
1a0015a6:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0015a8:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0015aa:	429a      	cmp	r2, r3
1a0015ac:	dc0a      	bgt.n	1a0015c4 <pll_get_frac+0x12c>
1a0015ae:	683b      	ldr	r3, [r7, #0]
1a0015b0:	461d      	mov	r5, r3
1a0015b2:	f107 040c 	add.w	r4, r7, #12
1a0015b6:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0015b8:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0015ba:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0015be:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0015c2:	e023      	b.n	1a00160c <pll_get_frac+0x174>
1a0015c4:	683b      	ldr	r3, [r7, #0]
1a0015c6:	461d      	mov	r5, r3
1a0015c8:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0015cc:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0015ce:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0015d0:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0015d4:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0015d8:	e018      	b.n	1a00160c <pll_get_frac+0x174>
1a0015da:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a0015dc:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0015de:	429a      	cmp	r2, r3
1a0015e0:	dc0a      	bgt.n	1a0015f8 <pll_get_frac+0x160>
1a0015e2:	683b      	ldr	r3, [r7, #0]
1a0015e4:	461d      	mov	r5, r3
1a0015e6:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0015ea:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0015ec:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0015ee:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0015f2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0015f6:	e009      	b.n	1a00160c <pll_get_frac+0x174>
1a0015f8:	683b      	ldr	r3, [r7, #0]
1a0015fa:	461d      	mov	r5, r3
1a0015fc:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001600:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001602:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001604:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001608:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00160c:	3778      	adds	r7, #120	; 0x78
1a00160e:	46bd      	mov	sp, r7
1a001610:	bdb0      	pop	{r4, r5, r7, pc}
1a001612:	bf00      	nop
1a001614:	068e7780 	.word	0x068e7780

1a001618 <Chip_Clock_GetDivRate>:
1a001618:	b580      	push	{r7, lr}
1a00161a:	b084      	sub	sp, #16
1a00161c:	af00      	add	r7, sp, #0
1a00161e:	4603      	mov	r3, r0
1a001620:	460a      	mov	r2, r1
1a001622:	71fb      	strb	r3, [r7, #7]
1a001624:	4613      	mov	r3, r2
1a001626:	71bb      	strb	r3, [r7, #6]
1a001628:	79bb      	ldrb	r3, [r7, #6]
1a00162a:	4618      	mov	r0, r3
1a00162c:	f000 f960 	bl	1a0018f0 <Chip_Clock_GetDividerSource>
1a001630:	4603      	mov	r3, r0
1a001632:	73fb      	strb	r3, [r7, #15]
1a001634:	79bb      	ldrb	r3, [r7, #6]
1a001636:	4618      	mov	r0, r3
1a001638:	f000 f97a 	bl	1a001930 <Chip_Clock_GetDividerDivisor>
1a00163c:	60b8      	str	r0, [r7, #8]
1a00163e:	7bfb      	ldrb	r3, [r7, #15]
1a001640:	4618      	mov	r0, r3
1a001642:	f000 f991 	bl	1a001968 <Chip_Clock_GetClockInputHz>
1a001646:	4602      	mov	r2, r0
1a001648:	68bb      	ldr	r3, [r7, #8]
1a00164a:	3301      	adds	r3, #1
1a00164c:	fbb2 f3f3 	udiv	r3, r2, r3
1a001650:	4618      	mov	r0, r3
1a001652:	3710      	adds	r7, #16
1a001654:	46bd      	mov	sp, r7
1a001656:	bd80      	pop	{r7, pc}

1a001658 <Chip_Clock_FindBaseClock>:
1a001658:	b480      	push	{r7}
1a00165a:	b085      	sub	sp, #20
1a00165c:	af00      	add	r7, sp, #0
1a00165e:	4603      	mov	r3, r0
1a001660:	80fb      	strh	r3, [r7, #6]
1a001662:	231c      	movs	r3, #28
1a001664:	73fb      	strb	r3, [r7, #15]
1a001666:	2300      	movs	r3, #0
1a001668:	60bb      	str	r3, [r7, #8]
1a00166a:	e024      	b.n	1a0016b6 <Chip_Clock_FindBaseClock+0x5e>
1a00166c:	491d      	ldr	r1, [pc, #116]	; (1a0016e4 <Chip_Clock_FindBaseClock+0x8c>)
1a00166e:	68ba      	ldr	r2, [r7, #8]
1a001670:	4613      	mov	r3, r2
1a001672:	005b      	lsls	r3, r3, #1
1a001674:	4413      	add	r3, r2
1a001676:	005b      	lsls	r3, r3, #1
1a001678:	440b      	add	r3, r1
1a00167a:	881b      	ldrh	r3, [r3, #0]
1a00167c:	88fa      	ldrh	r2, [r7, #6]
1a00167e:	429a      	cmp	r2, r3
1a001680:	d316      	bcc.n	1a0016b0 <Chip_Clock_FindBaseClock+0x58>
1a001682:	4918      	ldr	r1, [pc, #96]	; (1a0016e4 <Chip_Clock_FindBaseClock+0x8c>)
1a001684:	68ba      	ldr	r2, [r7, #8]
1a001686:	4613      	mov	r3, r2
1a001688:	005b      	lsls	r3, r3, #1
1a00168a:	4413      	add	r3, r2
1a00168c:	005b      	lsls	r3, r3, #1
1a00168e:	440b      	add	r3, r1
1a001690:	3302      	adds	r3, #2
1a001692:	881b      	ldrh	r3, [r3, #0]
1a001694:	88fa      	ldrh	r2, [r7, #6]
1a001696:	429a      	cmp	r2, r3
1a001698:	d80a      	bhi.n	1a0016b0 <Chip_Clock_FindBaseClock+0x58>
1a00169a:	4912      	ldr	r1, [pc, #72]	; (1a0016e4 <Chip_Clock_FindBaseClock+0x8c>)
1a00169c:	68ba      	ldr	r2, [r7, #8]
1a00169e:	4613      	mov	r3, r2
1a0016a0:	005b      	lsls	r3, r3, #1
1a0016a2:	4413      	add	r3, r2
1a0016a4:	005b      	lsls	r3, r3, #1
1a0016a6:	440b      	add	r3, r1
1a0016a8:	3304      	adds	r3, #4
1a0016aa:	781b      	ldrb	r3, [r3, #0]
1a0016ac:	73fb      	strb	r3, [r7, #15]
1a0016ae:	e002      	b.n	1a0016b6 <Chip_Clock_FindBaseClock+0x5e>
1a0016b0:	68bb      	ldr	r3, [r7, #8]
1a0016b2:	3301      	adds	r3, #1
1a0016b4:	60bb      	str	r3, [r7, #8]
1a0016b6:	7bfb      	ldrb	r3, [r7, #15]
1a0016b8:	2b1c      	cmp	r3, #28
1a0016ba:	d10b      	bne.n	1a0016d4 <Chip_Clock_FindBaseClock+0x7c>
1a0016bc:	4909      	ldr	r1, [pc, #36]	; (1a0016e4 <Chip_Clock_FindBaseClock+0x8c>)
1a0016be:	68ba      	ldr	r2, [r7, #8]
1a0016c0:	4613      	mov	r3, r2
1a0016c2:	005b      	lsls	r3, r3, #1
1a0016c4:	4413      	add	r3, r2
1a0016c6:	005b      	lsls	r3, r3, #1
1a0016c8:	440b      	add	r3, r1
1a0016ca:	3304      	adds	r3, #4
1a0016cc:	781b      	ldrb	r3, [r3, #0]
1a0016ce:	7bfa      	ldrb	r2, [r7, #15]
1a0016d0:	429a      	cmp	r2, r3
1a0016d2:	d1cb      	bne.n	1a00166c <Chip_Clock_FindBaseClock+0x14>
1a0016d4:	7bfb      	ldrb	r3, [r7, #15]
1a0016d6:	4618      	mov	r0, r3
1a0016d8:	3714      	adds	r7, #20
1a0016da:	46bd      	mov	sp, r7
1a0016dc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016e0:	4770      	bx	lr
1a0016e2:	bf00      	nop
1a0016e4:	1a002008 	.word	0x1a002008

1a0016e8 <Chip_Clock_EnableCrystal>:
1a0016e8:	b480      	push	{r7}
1a0016ea:	b083      	sub	sp, #12
1a0016ec:	af00      	add	r7, sp, #0
1a0016ee:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a0016f2:	603b      	str	r3, [r7, #0]
1a0016f4:	4b15      	ldr	r3, [pc, #84]	; (1a00174c <Chip_Clock_EnableCrystal+0x64>)
1a0016f6:	699b      	ldr	r3, [r3, #24]
1a0016f8:	607b      	str	r3, [r7, #4]
1a0016fa:	687b      	ldr	r3, [r7, #4]
1a0016fc:	f023 0302 	bic.w	r3, r3, #2
1a001700:	607b      	str	r3, [r7, #4]
1a001702:	4b12      	ldr	r3, [pc, #72]	; (1a00174c <Chip_Clock_EnableCrystal+0x64>)
1a001704:	699b      	ldr	r3, [r3, #24]
1a001706:	687a      	ldr	r2, [r7, #4]
1a001708:	429a      	cmp	r2, r3
1a00170a:	d002      	beq.n	1a001712 <Chip_Clock_EnableCrystal+0x2a>
1a00170c:	4a0f      	ldr	r2, [pc, #60]	; (1a00174c <Chip_Clock_EnableCrystal+0x64>)
1a00170e:	687b      	ldr	r3, [r7, #4]
1a001710:	6193      	str	r3, [r2, #24]
1a001712:	687b      	ldr	r3, [r7, #4]
1a001714:	f023 0301 	bic.w	r3, r3, #1
1a001718:	607b      	str	r3, [r7, #4]
1a00171a:	4b0d      	ldr	r3, [pc, #52]	; (1a001750 <Chip_Clock_EnableCrystal+0x68>)
1a00171c:	681b      	ldr	r3, [r3, #0]
1a00171e:	4a0d      	ldr	r2, [pc, #52]	; (1a001754 <Chip_Clock_EnableCrystal+0x6c>)
1a001720:	4293      	cmp	r3, r2
1a001722:	d903      	bls.n	1a00172c <Chip_Clock_EnableCrystal+0x44>
1a001724:	687b      	ldr	r3, [r7, #4]
1a001726:	f043 0304 	orr.w	r3, r3, #4
1a00172a:	607b      	str	r3, [r7, #4]
1a00172c:	4a07      	ldr	r2, [pc, #28]	; (1a00174c <Chip_Clock_EnableCrystal+0x64>)
1a00172e:	687b      	ldr	r3, [r7, #4]
1a001730:	6193      	str	r3, [r2, #24]
1a001732:	bf00      	nop
1a001734:	683b      	ldr	r3, [r7, #0]
1a001736:	1e5a      	subs	r2, r3, #1
1a001738:	603a      	str	r2, [r7, #0]
1a00173a:	2b00      	cmp	r3, #0
1a00173c:	d1fa      	bne.n	1a001734 <Chip_Clock_EnableCrystal+0x4c>
1a00173e:	bf00      	nop
1a001740:	370c      	adds	r7, #12
1a001742:	46bd      	mov	sp, r7
1a001744:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001748:	4770      	bx	lr
1a00174a:	bf00      	nop
1a00174c:	40050000 	.word	0x40050000
1a001750:	1a001f4c 	.word	0x1a001f4c
1a001754:	01312cff 	.word	0x01312cff

1a001758 <Chip_Clock_CalcMainPLLValue>:
1a001758:	b580      	push	{r7, lr}
1a00175a:	b082      	sub	sp, #8
1a00175c:	af00      	add	r7, sp, #0
1a00175e:	6078      	str	r0, [r7, #4]
1a001760:	6039      	str	r1, [r7, #0]
1a001762:	683b      	ldr	r3, [r7, #0]
1a001764:	791b      	ldrb	r3, [r3, #4]
1a001766:	4618      	mov	r0, r3
1a001768:	f000 f8fe 	bl	1a001968 <Chip_Clock_GetClockInputHz>
1a00176c:	4602      	mov	r2, r0
1a00176e:	683b      	ldr	r3, [r7, #0]
1a001770:	615a      	str	r2, [r3, #20]
1a001772:	687b      	ldr	r3, [r7, #4]
1a001774:	4a2b      	ldr	r2, [pc, #172]	; (1a001824 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a001776:	4293      	cmp	r3, r2
1a001778:	d807      	bhi.n	1a00178a <Chip_Clock_CalcMainPLLValue+0x32>
1a00177a:	687b      	ldr	r3, [r7, #4]
1a00177c:	4a2a      	ldr	r2, [pc, #168]	; (1a001828 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a00177e:	4293      	cmp	r3, r2
1a001780:	d903      	bls.n	1a00178a <Chip_Clock_CalcMainPLLValue+0x32>
1a001782:	683b      	ldr	r3, [r7, #0]
1a001784:	695b      	ldr	r3, [r3, #20]
1a001786:	2b00      	cmp	r3, #0
1a001788:	d102      	bne.n	1a001790 <Chip_Clock_CalcMainPLLValue+0x38>
1a00178a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a00178e:	e044      	b.n	1a00181a <Chip_Clock_CalcMainPLLValue+0xc2>
1a001790:	683b      	ldr	r3, [r7, #0]
1a001792:	2280      	movs	r2, #128	; 0x80
1a001794:	601a      	str	r2, [r3, #0]
1a001796:	683b      	ldr	r3, [r7, #0]
1a001798:	2200      	movs	r2, #0
1a00179a:	609a      	str	r2, [r3, #8]
1a00179c:	683b      	ldr	r3, [r7, #0]
1a00179e:	2200      	movs	r2, #0
1a0017a0:	60da      	str	r2, [r3, #12]
1a0017a2:	683b      	ldr	r3, [r7, #0]
1a0017a4:	695b      	ldr	r3, [r3, #20]
1a0017a6:	687a      	ldr	r2, [r7, #4]
1a0017a8:	fbb2 f3f3 	udiv	r3, r2, r3
1a0017ac:	461a      	mov	r2, r3
1a0017ae:	683b      	ldr	r3, [r7, #0]
1a0017b0:	611a      	str	r2, [r3, #16]
1a0017b2:	687b      	ldr	r3, [r7, #4]
1a0017b4:	4a1d      	ldr	r2, [pc, #116]	; (1a00182c <Chip_Clock_CalcMainPLLValue+0xd4>)
1a0017b6:	4293      	cmp	r3, r2
1a0017b8:	d909      	bls.n	1a0017ce <Chip_Clock_CalcMainPLLValue+0x76>
1a0017ba:	683b      	ldr	r3, [r7, #0]
1a0017bc:	691b      	ldr	r3, [r3, #16]
1a0017be:	461a      	mov	r2, r3
1a0017c0:	683b      	ldr	r3, [r7, #0]
1a0017c2:	695b      	ldr	r3, [r3, #20]
1a0017c4:	fb03 f302 	mul.w	r3, r3, r2
1a0017c8:	687a      	ldr	r2, [r7, #4]
1a0017ca:	429a      	cmp	r2, r3
1a0017cc:	d00f      	beq.n	1a0017ee <Chip_Clock_CalcMainPLLValue+0x96>
1a0017ce:	6839      	ldr	r1, [r7, #0]
1a0017d0:	6878      	ldr	r0, [r7, #4]
1a0017d2:	f7ff fe61 	bl	1a001498 <pll_get_frac>
1a0017d6:	683b      	ldr	r3, [r7, #0]
1a0017d8:	689b      	ldr	r3, [r3, #8]
1a0017da:	2b00      	cmp	r3, #0
1a0017dc:	d102      	bne.n	1a0017e4 <Chip_Clock_CalcMainPLLValue+0x8c>
1a0017de:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0017e2:	e01a      	b.n	1a00181a <Chip_Clock_CalcMainPLLValue+0xc2>
1a0017e4:	683b      	ldr	r3, [r7, #0]
1a0017e6:	689b      	ldr	r3, [r3, #8]
1a0017e8:	1e5a      	subs	r2, r3, #1
1a0017ea:	683b      	ldr	r3, [r7, #0]
1a0017ec:	609a      	str	r2, [r3, #8]
1a0017ee:	683b      	ldr	r3, [r7, #0]
1a0017f0:	691b      	ldr	r3, [r3, #16]
1a0017f2:	2b00      	cmp	r3, #0
1a0017f4:	d102      	bne.n	1a0017fc <Chip_Clock_CalcMainPLLValue+0xa4>
1a0017f6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0017fa:	e00e      	b.n	1a00181a <Chip_Clock_CalcMainPLLValue+0xc2>
1a0017fc:	683b      	ldr	r3, [r7, #0]
1a0017fe:	68db      	ldr	r3, [r3, #12]
1a001800:	2b00      	cmp	r3, #0
1a001802:	d004      	beq.n	1a00180e <Chip_Clock_CalcMainPLLValue+0xb6>
1a001804:	683b      	ldr	r3, [r7, #0]
1a001806:	68db      	ldr	r3, [r3, #12]
1a001808:	1e5a      	subs	r2, r3, #1
1a00180a:	683b      	ldr	r3, [r7, #0]
1a00180c:	60da      	str	r2, [r3, #12]
1a00180e:	683b      	ldr	r3, [r7, #0]
1a001810:	691b      	ldr	r3, [r3, #16]
1a001812:	1e5a      	subs	r2, r3, #1
1a001814:	683b      	ldr	r3, [r7, #0]
1a001816:	611a      	str	r2, [r3, #16]
1a001818:	2300      	movs	r3, #0
1a00181a:	4618      	mov	r0, r3
1a00181c:	3708      	adds	r7, #8
1a00181e:	46bd      	mov	sp, r7
1a001820:	bd80      	pop	{r7, pc}
1a001822:	bf00      	nop
1a001824:	0c28cb00 	.word	0x0c28cb00
1a001828:	0094c5ef 	.word	0x0094c5ef
1a00182c:	094c5eff 	.word	0x094c5eff

1a001830 <Chip_Clock_GetMainPLLHz>:
1a001830:	b580      	push	{r7, lr}
1a001832:	b08c      	sub	sp, #48	; 0x30
1a001834:	af00      	add	r7, sp, #0
1a001836:	4b2c      	ldr	r3, [pc, #176]	; (1a0018e8 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001838:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a00183a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a00183c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00183e:	0e1b      	lsrs	r3, r3, #24
1a001840:	b2db      	uxtb	r3, r3
1a001842:	f003 030f 	and.w	r3, r3, #15
1a001846:	b2db      	uxtb	r3, r3
1a001848:	4618      	mov	r0, r3
1a00184a:	f000 f88d 	bl	1a001968 <Chip_Clock_GetClockInputHz>
1a00184e:	62b8      	str	r0, [r7, #40]	; 0x28
1a001850:	4b26      	ldr	r3, [pc, #152]	; (1a0018ec <Chip_Clock_GetMainPLLHz+0xbc>)
1a001852:	681b      	ldr	r3, [r3, #0]
1a001854:	607b      	str	r3, [r7, #4]
1a001856:	4b24      	ldr	r3, [pc, #144]	; (1a0018e8 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001858:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00185a:	f003 0301 	and.w	r3, r3, #1
1a00185e:	2b00      	cmp	r3, #0
1a001860:	d101      	bne.n	1a001866 <Chip_Clock_GetMainPLLHz+0x36>
1a001862:	2300      	movs	r3, #0
1a001864:	e03b      	b.n	1a0018de <Chip_Clock_GetMainPLLHz+0xae>
1a001866:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001868:	0c1b      	lsrs	r3, r3, #16
1a00186a:	b2db      	uxtb	r3, r3
1a00186c:	627b      	str	r3, [r7, #36]	; 0x24
1a00186e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001870:	0b1b      	lsrs	r3, r3, #12
1a001872:	f003 0303 	and.w	r3, r3, #3
1a001876:	623b      	str	r3, [r7, #32]
1a001878:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00187a:	0a1b      	lsrs	r3, r3, #8
1a00187c:	f003 0303 	and.w	r3, r3, #3
1a001880:	61fb      	str	r3, [r7, #28]
1a001882:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001884:	09db      	lsrs	r3, r3, #7
1a001886:	f003 0301 	and.w	r3, r3, #1
1a00188a:	61bb      	str	r3, [r7, #24]
1a00188c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00188e:	099b      	lsrs	r3, r3, #6
1a001890:	f003 0301 	and.w	r3, r3, #1
1a001894:	617b      	str	r3, [r7, #20]
1a001896:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001898:	3301      	adds	r3, #1
1a00189a:	613b      	str	r3, [r7, #16]
1a00189c:	6a3b      	ldr	r3, [r7, #32]
1a00189e:	3301      	adds	r3, #1
1a0018a0:	60fb      	str	r3, [r7, #12]
1a0018a2:	1d3a      	adds	r2, r7, #4
1a0018a4:	69fb      	ldr	r3, [r7, #28]
1a0018a6:	4413      	add	r3, r2
1a0018a8:	781b      	ldrb	r3, [r3, #0]
1a0018aa:	60bb      	str	r3, [r7, #8]
1a0018ac:	69bb      	ldr	r3, [r7, #24]
1a0018ae:	2b00      	cmp	r3, #0
1a0018b0:	d102      	bne.n	1a0018b8 <Chip_Clock_GetMainPLLHz+0x88>
1a0018b2:	697b      	ldr	r3, [r7, #20]
1a0018b4:	2b00      	cmp	r3, #0
1a0018b6:	d007      	beq.n	1a0018c8 <Chip_Clock_GetMainPLLHz+0x98>
1a0018b8:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a0018ba:	68fb      	ldr	r3, [r7, #12]
1a0018bc:	fbb2 f3f3 	udiv	r3, r2, r3
1a0018c0:	693a      	ldr	r2, [r7, #16]
1a0018c2:	fb02 f303 	mul.w	r3, r2, r3
1a0018c6:	e00a      	b.n	1a0018de <Chip_Clock_GetMainPLLHz+0xae>
1a0018c8:	68bb      	ldr	r3, [r7, #8]
1a0018ca:	005b      	lsls	r3, r3, #1
1a0018cc:	693a      	ldr	r2, [r7, #16]
1a0018ce:	fbb2 f3f3 	udiv	r3, r2, r3
1a0018d2:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a0018d4:	68fa      	ldr	r2, [r7, #12]
1a0018d6:	fbb1 f2f2 	udiv	r2, r1, r2
1a0018da:	fb02 f303 	mul.w	r3, r2, r3
1a0018de:	4618      	mov	r0, r3
1a0018e0:	3730      	adds	r7, #48	; 0x30
1a0018e2:	46bd      	mov	sp, r7
1a0018e4:	bd80      	pop	{r7, pc}
1a0018e6:	bf00      	nop
1a0018e8:	40050000 	.word	0x40050000
1a0018ec:	1a002074 	.word	0x1a002074

1a0018f0 <Chip_Clock_GetDividerSource>:
1a0018f0:	b480      	push	{r7}
1a0018f2:	b085      	sub	sp, #20
1a0018f4:	af00      	add	r7, sp, #0
1a0018f6:	4603      	mov	r3, r0
1a0018f8:	71fb      	strb	r3, [r7, #7]
1a0018fa:	4a0c      	ldr	r2, [pc, #48]	; (1a00192c <Chip_Clock_GetDividerSource+0x3c>)
1a0018fc:	79fb      	ldrb	r3, [r7, #7]
1a0018fe:	3312      	adds	r3, #18
1a001900:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001904:	60fb      	str	r3, [r7, #12]
1a001906:	68fb      	ldr	r3, [r7, #12]
1a001908:	f003 0301 	and.w	r3, r3, #1
1a00190c:	2b00      	cmp	r3, #0
1a00190e:	d001      	beq.n	1a001914 <Chip_Clock_GetDividerSource+0x24>
1a001910:	2311      	movs	r3, #17
1a001912:	e005      	b.n	1a001920 <Chip_Clock_GetDividerSource+0x30>
1a001914:	68fb      	ldr	r3, [r7, #12]
1a001916:	0e1b      	lsrs	r3, r3, #24
1a001918:	b2db      	uxtb	r3, r3
1a00191a:	f003 031f 	and.w	r3, r3, #31
1a00191e:	b2db      	uxtb	r3, r3
1a001920:	4618      	mov	r0, r3
1a001922:	3714      	adds	r7, #20
1a001924:	46bd      	mov	sp, r7
1a001926:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00192a:	4770      	bx	lr
1a00192c:	40050000 	.word	0x40050000

1a001930 <Chip_Clock_GetDividerDivisor>:
1a001930:	b480      	push	{r7}
1a001932:	b083      	sub	sp, #12
1a001934:	af00      	add	r7, sp, #0
1a001936:	4603      	mov	r3, r0
1a001938:	71fb      	strb	r3, [r7, #7]
1a00193a:	4a09      	ldr	r2, [pc, #36]	; (1a001960 <Chip_Clock_GetDividerDivisor+0x30>)
1a00193c:	79fb      	ldrb	r3, [r7, #7]
1a00193e:	3312      	adds	r3, #18
1a001940:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001944:	089b      	lsrs	r3, r3, #2
1a001946:	b2da      	uxtb	r2, r3
1a001948:	79fb      	ldrb	r3, [r7, #7]
1a00194a:	4906      	ldr	r1, [pc, #24]	; (1a001964 <Chip_Clock_GetDividerDivisor+0x34>)
1a00194c:	5ccb      	ldrb	r3, [r1, r3]
1a00194e:	4013      	ands	r3, r2
1a001950:	b2db      	uxtb	r3, r3
1a001952:	4618      	mov	r0, r3
1a001954:	370c      	adds	r7, #12
1a001956:	46bd      	mov	sp, r7
1a001958:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00195c:	4770      	bx	lr
1a00195e:	bf00      	nop
1a001960:	40050000 	.word	0x40050000
1a001964:	1a002078 	.word	0x1a002078

1a001968 <Chip_Clock_GetClockInputHz>:
1a001968:	b580      	push	{r7, lr}
1a00196a:	b084      	sub	sp, #16
1a00196c:	af00      	add	r7, sp, #0
1a00196e:	4603      	mov	r3, r0
1a001970:	71fb      	strb	r3, [r7, #7]
1a001972:	2300      	movs	r3, #0
1a001974:	60fb      	str	r3, [r7, #12]
1a001976:	79fb      	ldrb	r3, [r7, #7]
1a001978:	2b11      	cmp	r3, #17
1a00197a:	d87f      	bhi.n	1a001a7c <Chip_Clock_GetClockInputHz+0x114>
1a00197c:	a201      	add	r2, pc, #4	; (adr r2, 1a001984 <Chip_Clock_GetClockInputHz+0x1c>)
1a00197e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001982:	bf00      	nop
1a001984:	1a0019cd 	.word	0x1a0019cd
1a001988:	1a0019d5 	.word	0x1a0019d5
1a00198c:	1a0019db 	.word	0x1a0019db
1a001990:	1a0019ef 	.word	0x1a0019ef
1a001994:	1a001a09 	.word	0x1a001a09
1a001998:	1a001a7d 	.word	0x1a001a7d
1a00199c:	1a001a11 	.word	0x1a001a11
1a0019a0:	1a001a19 	.word	0x1a001a19
1a0019a4:	1a001a21 	.word	0x1a001a21
1a0019a8:	1a001a29 	.word	0x1a001a29
1a0019ac:	1a001a7d 	.word	0x1a001a7d
1a0019b0:	1a001a7d 	.word	0x1a001a7d
1a0019b4:	1a001a31 	.word	0x1a001a31
1a0019b8:	1a001a3f 	.word	0x1a001a3f
1a0019bc:	1a001a4d 	.word	0x1a001a4d
1a0019c0:	1a001a5b 	.word	0x1a001a5b
1a0019c4:	1a001a69 	.word	0x1a001a69
1a0019c8:	1a001a77 	.word	0x1a001a77
1a0019cc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a0019d0:	60fb      	str	r3, [r7, #12]
1a0019d2:	e056      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a0019d4:	4b2d      	ldr	r3, [pc, #180]	; (1a001a8c <Chip_Clock_GetClockInputHz+0x124>)
1a0019d6:	60fb      	str	r3, [r7, #12]
1a0019d8:	e053      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a0019da:	4b2d      	ldr	r3, [pc, #180]	; (1a001a90 <Chip_Clock_GetClockInputHz+0x128>)
1a0019dc:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a0019e0:	f003 0307 	and.w	r3, r3, #7
1a0019e4:	2b04      	cmp	r3, #4
1a0019e6:	d04b      	beq.n	1a001a80 <Chip_Clock_GetClockInputHz+0x118>
1a0019e8:	4b2a      	ldr	r3, [pc, #168]	; (1a001a94 <Chip_Clock_GetClockInputHz+0x12c>)
1a0019ea:	60fb      	str	r3, [r7, #12]
1a0019ec:	e048      	b.n	1a001a80 <Chip_Clock_GetClockInputHz+0x118>
1a0019ee:	4b28      	ldr	r3, [pc, #160]	; (1a001a90 <Chip_Clock_GetClockInputHz+0x128>)
1a0019f0:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a0019f4:	f003 0307 	and.w	r3, r3, #7
1a0019f8:	2b04      	cmp	r3, #4
1a0019fa:	d002      	beq.n	1a001a02 <Chip_Clock_GetClockInputHz+0x9a>
1a0019fc:	4b25      	ldr	r3, [pc, #148]	; (1a001a94 <Chip_Clock_GetClockInputHz+0x12c>)
1a0019fe:	60fb      	str	r3, [r7, #12]
1a001a00:	e03f      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a02:	4b25      	ldr	r3, [pc, #148]	; (1a001a98 <Chip_Clock_GetClockInputHz+0x130>)
1a001a04:	60fb      	str	r3, [r7, #12]
1a001a06:	e03c      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a08:	4b24      	ldr	r3, [pc, #144]	; (1a001a9c <Chip_Clock_GetClockInputHz+0x134>)
1a001a0a:	681b      	ldr	r3, [r3, #0]
1a001a0c:	60fb      	str	r3, [r7, #12]
1a001a0e:	e038      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a10:	4b23      	ldr	r3, [pc, #140]	; (1a001aa0 <Chip_Clock_GetClockInputHz+0x138>)
1a001a12:	681b      	ldr	r3, [r3, #0]
1a001a14:	60fb      	str	r3, [r7, #12]
1a001a16:	e034      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a18:	4b22      	ldr	r3, [pc, #136]	; (1a001aa4 <Chip_Clock_GetClockInputHz+0x13c>)
1a001a1a:	681b      	ldr	r3, [r3, #0]
1a001a1c:	60fb      	str	r3, [r7, #12]
1a001a1e:	e030      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a20:	4b20      	ldr	r3, [pc, #128]	; (1a001aa4 <Chip_Clock_GetClockInputHz+0x13c>)
1a001a22:	685b      	ldr	r3, [r3, #4]
1a001a24:	60fb      	str	r3, [r7, #12]
1a001a26:	e02c      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a28:	f7ff ff02 	bl	1a001830 <Chip_Clock_GetMainPLLHz>
1a001a2c:	60f8      	str	r0, [r7, #12]
1a001a2e:	e028      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a30:	79fb      	ldrb	r3, [r7, #7]
1a001a32:	2100      	movs	r1, #0
1a001a34:	4618      	mov	r0, r3
1a001a36:	f7ff fdef 	bl	1a001618 <Chip_Clock_GetDivRate>
1a001a3a:	60f8      	str	r0, [r7, #12]
1a001a3c:	e021      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a3e:	79fb      	ldrb	r3, [r7, #7]
1a001a40:	2101      	movs	r1, #1
1a001a42:	4618      	mov	r0, r3
1a001a44:	f7ff fde8 	bl	1a001618 <Chip_Clock_GetDivRate>
1a001a48:	60f8      	str	r0, [r7, #12]
1a001a4a:	e01a      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a4c:	79fb      	ldrb	r3, [r7, #7]
1a001a4e:	2102      	movs	r1, #2
1a001a50:	4618      	mov	r0, r3
1a001a52:	f7ff fde1 	bl	1a001618 <Chip_Clock_GetDivRate>
1a001a56:	60f8      	str	r0, [r7, #12]
1a001a58:	e013      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a5a:	79fb      	ldrb	r3, [r7, #7]
1a001a5c:	2103      	movs	r1, #3
1a001a5e:	4618      	mov	r0, r3
1a001a60:	f7ff fdda 	bl	1a001618 <Chip_Clock_GetDivRate>
1a001a64:	60f8      	str	r0, [r7, #12]
1a001a66:	e00c      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a68:	79fb      	ldrb	r3, [r7, #7]
1a001a6a:	2104      	movs	r1, #4
1a001a6c:	4618      	mov	r0, r3
1a001a6e:	f7ff fdd3 	bl	1a001618 <Chip_Clock_GetDivRate>
1a001a72:	60f8      	str	r0, [r7, #12]
1a001a74:	e005      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a76:	2300      	movs	r3, #0
1a001a78:	60fb      	str	r3, [r7, #12]
1a001a7a:	e002      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a7c:	bf00      	nop
1a001a7e:	e000      	b.n	1a001a82 <Chip_Clock_GetClockInputHz+0x11a>
1a001a80:	bf00      	nop
1a001a82:	68fb      	ldr	r3, [r7, #12]
1a001a84:	4618      	mov	r0, r3
1a001a86:	3710      	adds	r7, #16
1a001a88:	46bd      	mov	sp, r7
1a001a8a:	bd80      	pop	{r7, pc}
1a001a8c:	00b71b00 	.word	0x00b71b00
1a001a90:	40043000 	.word	0x40043000
1a001a94:	017d7840 	.word	0x017d7840
1a001a98:	02faf080 	.word	0x02faf080
1a001a9c:	1a001f48 	.word	0x1a001f48
1a001aa0:	1a001f4c 	.word	0x1a001f4c
1a001aa4:	100000d4 	.word	0x100000d4

1a001aa8 <Chip_Clock_GetBaseClocktHz>:
1a001aa8:	b580      	push	{r7, lr}
1a001aaa:	b082      	sub	sp, #8
1a001aac:	af00      	add	r7, sp, #0
1a001aae:	4603      	mov	r3, r0
1a001ab0:	71fb      	strb	r3, [r7, #7]
1a001ab2:	79fb      	ldrb	r3, [r7, #7]
1a001ab4:	4618      	mov	r0, r3
1a001ab6:	f000 f857 	bl	1a001b68 <Chip_Clock_GetBaseClock>
1a001aba:	4603      	mov	r3, r0
1a001abc:	4618      	mov	r0, r3
1a001abe:	f7ff ff53 	bl	1a001968 <Chip_Clock_GetClockInputHz>
1a001ac2:	4603      	mov	r3, r0
1a001ac4:	4618      	mov	r0, r3
1a001ac6:	3708      	adds	r7, #8
1a001ac8:	46bd      	mov	sp, r7
1a001aca:	bd80      	pop	{r7, pc}

1a001acc <Chip_Clock_SetBaseClock>:
1a001acc:	b490      	push	{r4, r7}
1a001ace:	b084      	sub	sp, #16
1a001ad0:	af00      	add	r7, sp, #0
1a001ad2:	4604      	mov	r4, r0
1a001ad4:	4608      	mov	r0, r1
1a001ad6:	4611      	mov	r1, r2
1a001ad8:	461a      	mov	r2, r3
1a001ada:	4623      	mov	r3, r4
1a001adc:	71fb      	strb	r3, [r7, #7]
1a001ade:	4603      	mov	r3, r0
1a001ae0:	71bb      	strb	r3, [r7, #6]
1a001ae2:	460b      	mov	r3, r1
1a001ae4:	717b      	strb	r3, [r7, #5]
1a001ae6:	4613      	mov	r3, r2
1a001ae8:	713b      	strb	r3, [r7, #4]
1a001aea:	4a1d      	ldr	r2, [pc, #116]	; (1a001b60 <Chip_Clock_SetBaseClock+0x94>)
1a001aec:	79fb      	ldrb	r3, [r7, #7]
1a001aee:	3316      	adds	r3, #22
1a001af0:	009b      	lsls	r3, r3, #2
1a001af2:	4413      	add	r3, r2
1a001af4:	685b      	ldr	r3, [r3, #4]
1a001af6:	60fb      	str	r3, [r7, #12]
1a001af8:	79fb      	ldrb	r3, [r7, #7]
1a001afa:	2b1b      	cmp	r3, #27
1a001afc:	d822      	bhi.n	1a001b44 <Chip_Clock_SetBaseClock+0x78>
1a001afe:	79bb      	ldrb	r3, [r7, #6]
1a001b00:	2b11      	cmp	r3, #17
1a001b02:	d028      	beq.n	1a001b56 <Chip_Clock_SetBaseClock+0x8a>
1a001b04:	68fa      	ldr	r2, [r7, #12]
1a001b06:	4b17      	ldr	r3, [pc, #92]	; (1a001b64 <Chip_Clock_SetBaseClock+0x98>)
1a001b08:	4013      	ands	r3, r2
1a001b0a:	60fb      	str	r3, [r7, #12]
1a001b0c:	797b      	ldrb	r3, [r7, #5]
1a001b0e:	2b00      	cmp	r3, #0
1a001b10:	d003      	beq.n	1a001b1a <Chip_Clock_SetBaseClock+0x4e>
1a001b12:	68fb      	ldr	r3, [r7, #12]
1a001b14:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001b18:	60fb      	str	r3, [r7, #12]
1a001b1a:	793b      	ldrb	r3, [r7, #4]
1a001b1c:	2b00      	cmp	r3, #0
1a001b1e:	d003      	beq.n	1a001b28 <Chip_Clock_SetBaseClock+0x5c>
1a001b20:	68fb      	ldr	r3, [r7, #12]
1a001b22:	f043 0301 	orr.w	r3, r3, #1
1a001b26:	60fb      	str	r3, [r7, #12]
1a001b28:	79bb      	ldrb	r3, [r7, #6]
1a001b2a:	061b      	lsls	r3, r3, #24
1a001b2c:	461a      	mov	r2, r3
1a001b2e:	68fb      	ldr	r3, [r7, #12]
1a001b30:	4313      	orrs	r3, r2
1a001b32:	60fb      	str	r3, [r7, #12]
1a001b34:	4a0a      	ldr	r2, [pc, #40]	; (1a001b60 <Chip_Clock_SetBaseClock+0x94>)
1a001b36:	79fb      	ldrb	r3, [r7, #7]
1a001b38:	3316      	adds	r3, #22
1a001b3a:	009b      	lsls	r3, r3, #2
1a001b3c:	4413      	add	r3, r2
1a001b3e:	68fa      	ldr	r2, [r7, #12]
1a001b40:	605a      	str	r2, [r3, #4]
1a001b42:	e008      	b.n	1a001b56 <Chip_Clock_SetBaseClock+0x8a>
1a001b44:	4906      	ldr	r1, [pc, #24]	; (1a001b60 <Chip_Clock_SetBaseClock+0x94>)
1a001b46:	79fb      	ldrb	r3, [r7, #7]
1a001b48:	68fa      	ldr	r2, [r7, #12]
1a001b4a:	f042 0201 	orr.w	r2, r2, #1
1a001b4e:	3316      	adds	r3, #22
1a001b50:	009b      	lsls	r3, r3, #2
1a001b52:	440b      	add	r3, r1
1a001b54:	605a      	str	r2, [r3, #4]
1a001b56:	bf00      	nop
1a001b58:	3710      	adds	r7, #16
1a001b5a:	46bd      	mov	sp, r7
1a001b5c:	bc90      	pop	{r4, r7}
1a001b5e:	4770      	bx	lr
1a001b60:	40050000 	.word	0x40050000
1a001b64:	e0fff7fe 	.word	0xe0fff7fe

1a001b68 <Chip_Clock_GetBaseClock>:
1a001b68:	b480      	push	{r7}
1a001b6a:	b085      	sub	sp, #20
1a001b6c:	af00      	add	r7, sp, #0
1a001b6e:	4603      	mov	r3, r0
1a001b70:	71fb      	strb	r3, [r7, #7]
1a001b72:	79fb      	ldrb	r3, [r7, #7]
1a001b74:	2b1b      	cmp	r3, #27
1a001b76:	d901      	bls.n	1a001b7c <Chip_Clock_GetBaseClock+0x14>
1a001b78:	2311      	movs	r3, #17
1a001b7a:	e013      	b.n	1a001ba4 <Chip_Clock_GetBaseClock+0x3c>
1a001b7c:	4a0c      	ldr	r2, [pc, #48]	; (1a001bb0 <Chip_Clock_GetBaseClock+0x48>)
1a001b7e:	79fb      	ldrb	r3, [r7, #7]
1a001b80:	3316      	adds	r3, #22
1a001b82:	009b      	lsls	r3, r3, #2
1a001b84:	4413      	add	r3, r2
1a001b86:	685b      	ldr	r3, [r3, #4]
1a001b88:	60fb      	str	r3, [r7, #12]
1a001b8a:	68fb      	ldr	r3, [r7, #12]
1a001b8c:	f003 0301 	and.w	r3, r3, #1
1a001b90:	2b00      	cmp	r3, #0
1a001b92:	d001      	beq.n	1a001b98 <Chip_Clock_GetBaseClock+0x30>
1a001b94:	2311      	movs	r3, #17
1a001b96:	e005      	b.n	1a001ba4 <Chip_Clock_GetBaseClock+0x3c>
1a001b98:	68fb      	ldr	r3, [r7, #12]
1a001b9a:	0e1b      	lsrs	r3, r3, #24
1a001b9c:	b2db      	uxtb	r3, r3
1a001b9e:	f003 031f 	and.w	r3, r3, #31
1a001ba2:	b2db      	uxtb	r3, r3
1a001ba4:	4618      	mov	r0, r3
1a001ba6:	3714      	adds	r7, #20
1a001ba8:	46bd      	mov	sp, r7
1a001baa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001bae:	4770      	bx	lr
1a001bb0:	40050000 	.word	0x40050000

1a001bb4 <Chip_Clock_EnableOpts>:
1a001bb4:	b480      	push	{r7}
1a001bb6:	b085      	sub	sp, #20
1a001bb8:	af00      	add	r7, sp, #0
1a001bba:	603b      	str	r3, [r7, #0]
1a001bbc:	4603      	mov	r3, r0
1a001bbe:	80fb      	strh	r3, [r7, #6]
1a001bc0:	460b      	mov	r3, r1
1a001bc2:	717b      	strb	r3, [r7, #5]
1a001bc4:	4613      	mov	r3, r2
1a001bc6:	713b      	strb	r3, [r7, #4]
1a001bc8:	2301      	movs	r3, #1
1a001bca:	60fb      	str	r3, [r7, #12]
1a001bcc:	797b      	ldrb	r3, [r7, #5]
1a001bce:	2b00      	cmp	r3, #0
1a001bd0:	d003      	beq.n	1a001bda <Chip_Clock_EnableOpts+0x26>
1a001bd2:	68fb      	ldr	r3, [r7, #12]
1a001bd4:	f043 0302 	orr.w	r3, r3, #2
1a001bd8:	60fb      	str	r3, [r7, #12]
1a001bda:	793b      	ldrb	r3, [r7, #4]
1a001bdc:	2b00      	cmp	r3, #0
1a001bde:	d003      	beq.n	1a001be8 <Chip_Clock_EnableOpts+0x34>
1a001be0:	68fb      	ldr	r3, [r7, #12]
1a001be2:	f043 0304 	orr.w	r3, r3, #4
1a001be6:	60fb      	str	r3, [r7, #12]
1a001be8:	683b      	ldr	r3, [r7, #0]
1a001bea:	2b02      	cmp	r3, #2
1a001bec:	d103      	bne.n	1a001bf6 <Chip_Clock_EnableOpts+0x42>
1a001bee:	68fb      	ldr	r3, [r7, #12]
1a001bf0:	f043 0320 	orr.w	r3, r3, #32
1a001bf4:	60fb      	str	r3, [r7, #12]
1a001bf6:	88fb      	ldrh	r3, [r7, #6]
1a001bf8:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001bfc:	d308      	bcc.n	1a001c10 <Chip_Clock_EnableOpts+0x5c>
1a001bfe:	490a      	ldr	r1, [pc, #40]	; (1a001c28 <Chip_Clock_EnableOpts+0x74>)
1a001c00:	88fb      	ldrh	r3, [r7, #6]
1a001c02:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001c06:	3320      	adds	r3, #32
1a001c08:	68fa      	ldr	r2, [r7, #12]
1a001c0a:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001c0e:	e005      	b.n	1a001c1c <Chip_Clock_EnableOpts+0x68>
1a001c10:	4906      	ldr	r1, [pc, #24]	; (1a001c2c <Chip_Clock_EnableOpts+0x78>)
1a001c12:	88fb      	ldrh	r3, [r7, #6]
1a001c14:	3320      	adds	r3, #32
1a001c16:	68fa      	ldr	r2, [r7, #12]
1a001c18:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001c1c:	bf00      	nop
1a001c1e:	3714      	adds	r7, #20
1a001c20:	46bd      	mov	sp, r7
1a001c22:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c26:	4770      	bx	lr
1a001c28:	40052000 	.word	0x40052000
1a001c2c:	40051000 	.word	0x40051000

1a001c30 <Chip_Clock_Enable>:
1a001c30:	b480      	push	{r7}
1a001c32:	b083      	sub	sp, #12
1a001c34:	af00      	add	r7, sp, #0
1a001c36:	4603      	mov	r3, r0
1a001c38:	80fb      	strh	r3, [r7, #6]
1a001c3a:	88fb      	ldrh	r3, [r7, #6]
1a001c3c:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001c40:	d310      	bcc.n	1a001c64 <Chip_Clock_Enable+0x34>
1a001c42:	4a11      	ldr	r2, [pc, #68]	; (1a001c88 <Chip_Clock_Enable+0x58>)
1a001c44:	88fb      	ldrh	r3, [r7, #6]
1a001c46:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001c4a:	3320      	adds	r3, #32
1a001c4c:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001c50:	490d      	ldr	r1, [pc, #52]	; (1a001c88 <Chip_Clock_Enable+0x58>)
1a001c52:	88fb      	ldrh	r3, [r7, #6]
1a001c54:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001c58:	f042 0201 	orr.w	r2, r2, #1
1a001c5c:	3320      	adds	r3, #32
1a001c5e:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001c62:	e00b      	b.n	1a001c7c <Chip_Clock_Enable+0x4c>
1a001c64:	4a09      	ldr	r2, [pc, #36]	; (1a001c8c <Chip_Clock_Enable+0x5c>)
1a001c66:	88fb      	ldrh	r3, [r7, #6]
1a001c68:	3320      	adds	r3, #32
1a001c6a:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001c6e:	4907      	ldr	r1, [pc, #28]	; (1a001c8c <Chip_Clock_Enable+0x5c>)
1a001c70:	88fb      	ldrh	r3, [r7, #6]
1a001c72:	f042 0201 	orr.w	r2, r2, #1
1a001c76:	3320      	adds	r3, #32
1a001c78:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001c7c:	bf00      	nop
1a001c7e:	370c      	adds	r7, #12
1a001c80:	46bd      	mov	sp, r7
1a001c82:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c86:	4770      	bx	lr
1a001c88:	40052000 	.word	0x40052000
1a001c8c:	40051000 	.word	0x40051000

1a001c90 <Chip_Clock_Disable>:
1a001c90:	b480      	push	{r7}
1a001c92:	b083      	sub	sp, #12
1a001c94:	af00      	add	r7, sp, #0
1a001c96:	4603      	mov	r3, r0
1a001c98:	80fb      	strh	r3, [r7, #6]
1a001c9a:	88fb      	ldrh	r3, [r7, #6]
1a001c9c:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001ca0:	d310      	bcc.n	1a001cc4 <Chip_Clock_Disable+0x34>
1a001ca2:	4a11      	ldr	r2, [pc, #68]	; (1a001ce8 <Chip_Clock_Disable+0x58>)
1a001ca4:	88fb      	ldrh	r3, [r7, #6]
1a001ca6:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001caa:	3320      	adds	r3, #32
1a001cac:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001cb0:	490d      	ldr	r1, [pc, #52]	; (1a001ce8 <Chip_Clock_Disable+0x58>)
1a001cb2:	88fb      	ldrh	r3, [r7, #6]
1a001cb4:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001cb8:	f022 0201 	bic.w	r2, r2, #1
1a001cbc:	3320      	adds	r3, #32
1a001cbe:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001cc2:	e00b      	b.n	1a001cdc <Chip_Clock_Disable+0x4c>
1a001cc4:	4a09      	ldr	r2, [pc, #36]	; (1a001cec <Chip_Clock_Disable+0x5c>)
1a001cc6:	88fb      	ldrh	r3, [r7, #6]
1a001cc8:	3320      	adds	r3, #32
1a001cca:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001cce:	4907      	ldr	r1, [pc, #28]	; (1a001cec <Chip_Clock_Disable+0x5c>)
1a001cd0:	88fb      	ldrh	r3, [r7, #6]
1a001cd2:	f022 0201 	bic.w	r2, r2, #1
1a001cd6:	3320      	adds	r3, #32
1a001cd8:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001cdc:	bf00      	nop
1a001cde:	370c      	adds	r7, #12
1a001ce0:	46bd      	mov	sp, r7
1a001ce2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001ce6:	4770      	bx	lr
1a001ce8:	40052000 	.word	0x40052000
1a001cec:	40051000 	.word	0x40051000

1a001cf0 <Chip_Clock_GetRate>:
1a001cf0:	b580      	push	{r7, lr}
1a001cf2:	b086      	sub	sp, #24
1a001cf4:	af00      	add	r7, sp, #0
1a001cf6:	4603      	mov	r3, r0
1a001cf8:	80fb      	strh	r3, [r7, #6]
1a001cfa:	88fb      	ldrh	r3, [r7, #6]
1a001cfc:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001d00:	d308      	bcc.n	1a001d14 <Chip_Clock_GetRate+0x24>
1a001d02:	4a1b      	ldr	r2, [pc, #108]	; (1a001d70 <Chip_Clock_GetRate+0x80>)
1a001d04:	88fb      	ldrh	r3, [r7, #6]
1a001d06:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001d0a:	3320      	adds	r3, #32
1a001d0c:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001d10:	617b      	str	r3, [r7, #20]
1a001d12:	e005      	b.n	1a001d20 <Chip_Clock_GetRate+0x30>
1a001d14:	4a17      	ldr	r2, [pc, #92]	; (1a001d74 <Chip_Clock_GetRate+0x84>)
1a001d16:	88fb      	ldrh	r3, [r7, #6]
1a001d18:	3320      	adds	r3, #32
1a001d1a:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001d1e:	617b      	str	r3, [r7, #20]
1a001d20:	697b      	ldr	r3, [r7, #20]
1a001d22:	f003 0301 	and.w	r3, r3, #1
1a001d26:	2b00      	cmp	r3, #0
1a001d28:	d01b      	beq.n	1a001d62 <Chip_Clock_GetRate+0x72>
1a001d2a:	88fb      	ldrh	r3, [r7, #6]
1a001d2c:	4618      	mov	r0, r3
1a001d2e:	f7ff fc93 	bl	1a001658 <Chip_Clock_FindBaseClock>
1a001d32:	4603      	mov	r3, r0
1a001d34:	72fb      	strb	r3, [r7, #11]
1a001d36:	7afb      	ldrb	r3, [r7, #11]
1a001d38:	4618      	mov	r0, r3
1a001d3a:	f7ff feb5 	bl	1a001aa8 <Chip_Clock_GetBaseClocktHz>
1a001d3e:	60f8      	str	r0, [r7, #12]
1a001d40:	697b      	ldr	r3, [r7, #20]
1a001d42:	095b      	lsrs	r3, r3, #5
1a001d44:	f003 0307 	and.w	r3, r3, #7
1a001d48:	2b00      	cmp	r3, #0
1a001d4a:	d102      	bne.n	1a001d52 <Chip_Clock_GetRate+0x62>
1a001d4c:	2301      	movs	r3, #1
1a001d4e:	613b      	str	r3, [r7, #16]
1a001d50:	e001      	b.n	1a001d56 <Chip_Clock_GetRate+0x66>
1a001d52:	2302      	movs	r3, #2
1a001d54:	613b      	str	r3, [r7, #16]
1a001d56:	68fa      	ldr	r2, [r7, #12]
1a001d58:	693b      	ldr	r3, [r7, #16]
1a001d5a:	fbb2 f3f3 	udiv	r3, r2, r3
1a001d5e:	60fb      	str	r3, [r7, #12]
1a001d60:	e001      	b.n	1a001d66 <Chip_Clock_GetRate+0x76>
1a001d62:	2300      	movs	r3, #0
1a001d64:	60fb      	str	r3, [r7, #12]
1a001d66:	68fb      	ldr	r3, [r7, #12]
1a001d68:	4618      	mov	r0, r3
1a001d6a:	3718      	adds	r7, #24
1a001d6c:	46bd      	mov	sp, r7
1a001d6e:	bd80      	pop	{r7, pc}
1a001d70:	40052000 	.word	0x40052000
1a001d74:	40051000 	.word	0x40051000

1a001d78 <SystemCoreClockUpdate>:
1a001d78:	b580      	push	{r7, lr}
1a001d7a:	af00      	add	r7, sp, #0
1a001d7c:	2069      	movs	r0, #105	; 0x69
1a001d7e:	f7ff ffb7 	bl	1a001cf0 <Chip_Clock_GetRate>
1a001d82:	4602      	mov	r2, r0
1a001d84:	4b01      	ldr	r3, [pc, #4]	; (1a001d8c <SystemCoreClockUpdate+0x14>)
1a001d86:	601a      	str	r2, [r3, #0]
1a001d88:	bf00      	nop
1a001d8a:	bd80      	pop	{r7, pc}
1a001d8c:	100000dc 	.word	0x100000dc

1a001d90 <Chip_GPIO_Init>:
1a001d90:	b480      	push	{r7}
1a001d92:	b083      	sub	sp, #12
1a001d94:	af00      	add	r7, sp, #0
1a001d96:	6078      	str	r0, [r7, #4]
1a001d98:	bf00      	nop
1a001d9a:	370c      	adds	r7, #12
1a001d9c:	46bd      	mov	sp, r7
1a001d9e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001da2:	4770      	bx	lr

1a001da4 <Chip_TIMER_GetClockIndex>:
1a001da4:	b480      	push	{r7}
1a001da6:	b085      	sub	sp, #20
1a001da8:	af00      	add	r7, sp, #0
1a001daa:	6078      	str	r0, [r7, #4]
1a001dac:	687b      	ldr	r3, [r7, #4]
1a001dae:	4a0e      	ldr	r2, [pc, #56]	; (1a001de8 <Chip_TIMER_GetClockIndex+0x44>)
1a001db0:	4293      	cmp	r3, r2
1a001db2:	d102      	bne.n	1a001dba <Chip_TIMER_GetClockIndex+0x16>
1a001db4:	23a4      	movs	r3, #164	; 0xa4
1a001db6:	81fb      	strh	r3, [r7, #14]
1a001db8:	e00f      	b.n	1a001dda <Chip_TIMER_GetClockIndex+0x36>
1a001dba:	687b      	ldr	r3, [r7, #4]
1a001dbc:	4a0b      	ldr	r2, [pc, #44]	; (1a001dec <Chip_TIMER_GetClockIndex+0x48>)
1a001dbe:	4293      	cmp	r3, r2
1a001dc0:	d102      	bne.n	1a001dc8 <Chip_TIMER_GetClockIndex+0x24>
1a001dc2:	23a3      	movs	r3, #163	; 0xa3
1a001dc4:	81fb      	strh	r3, [r7, #14]
1a001dc6:	e008      	b.n	1a001dda <Chip_TIMER_GetClockIndex+0x36>
1a001dc8:	687b      	ldr	r3, [r7, #4]
1a001dca:	4a09      	ldr	r2, [pc, #36]	; (1a001df0 <Chip_TIMER_GetClockIndex+0x4c>)
1a001dcc:	4293      	cmp	r3, r2
1a001dce:	d102      	bne.n	1a001dd6 <Chip_TIMER_GetClockIndex+0x32>
1a001dd0:	2385      	movs	r3, #133	; 0x85
1a001dd2:	81fb      	strh	r3, [r7, #14]
1a001dd4:	e001      	b.n	1a001dda <Chip_TIMER_GetClockIndex+0x36>
1a001dd6:	2384      	movs	r3, #132	; 0x84
1a001dd8:	81fb      	strh	r3, [r7, #14]
1a001dda:	89fb      	ldrh	r3, [r7, #14]
1a001ddc:	4618      	mov	r0, r3
1a001dde:	3714      	adds	r7, #20
1a001de0:	46bd      	mov	sp, r7
1a001de2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001de6:	4770      	bx	lr
1a001de8:	400c4000 	.word	0x400c4000
1a001dec:	400c3000 	.word	0x400c3000
1a001df0:	40085000 	.word	0x40085000

1a001df4 <Chip_TIMER_Init>:
1a001df4:	b580      	push	{r7, lr}
1a001df6:	b082      	sub	sp, #8
1a001df8:	af00      	add	r7, sp, #0
1a001dfa:	6078      	str	r0, [r7, #4]
1a001dfc:	6878      	ldr	r0, [r7, #4]
1a001dfe:	f7ff ffd1 	bl	1a001da4 <Chip_TIMER_GetClockIndex>
1a001e02:	4603      	mov	r3, r0
1a001e04:	4618      	mov	r0, r3
1a001e06:	f7ff ff13 	bl	1a001c30 <Chip_Clock_Enable>
1a001e0a:	bf00      	nop
1a001e0c:	3708      	adds	r7, #8
1a001e0e:	46bd      	mov	sp, r7
1a001e10:	bd80      	pop	{r7, pc}
1a001e12:	Address 0x000000001a001e12 is out of bounds.


1a001e14 <memcpy>:
1a001e14:	4684      	mov	ip, r0
1a001e16:	ea41 0300 	orr.w	r3, r1, r0
1a001e1a:	f013 0303 	ands.w	r3, r3, #3
1a001e1e:	d16d      	bne.n	1a001efc <memcpy+0xe8>
1a001e20:	3a40      	subs	r2, #64	; 0x40
1a001e22:	d341      	bcc.n	1a001ea8 <memcpy+0x94>
1a001e24:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e28:	f840 3b04 	str.w	r3, [r0], #4
1a001e2c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e30:	f840 3b04 	str.w	r3, [r0], #4
1a001e34:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e38:	f840 3b04 	str.w	r3, [r0], #4
1a001e3c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e40:	f840 3b04 	str.w	r3, [r0], #4
1a001e44:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e48:	f840 3b04 	str.w	r3, [r0], #4
1a001e4c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e50:	f840 3b04 	str.w	r3, [r0], #4
1a001e54:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e58:	f840 3b04 	str.w	r3, [r0], #4
1a001e5c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e60:	f840 3b04 	str.w	r3, [r0], #4
1a001e64:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e68:	f840 3b04 	str.w	r3, [r0], #4
1a001e6c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e70:	f840 3b04 	str.w	r3, [r0], #4
1a001e74:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e78:	f840 3b04 	str.w	r3, [r0], #4
1a001e7c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e80:	f840 3b04 	str.w	r3, [r0], #4
1a001e84:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e88:	f840 3b04 	str.w	r3, [r0], #4
1a001e8c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e90:	f840 3b04 	str.w	r3, [r0], #4
1a001e94:	f851 3b04 	ldr.w	r3, [r1], #4
1a001e98:	f840 3b04 	str.w	r3, [r0], #4
1a001e9c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ea0:	f840 3b04 	str.w	r3, [r0], #4
1a001ea4:	3a40      	subs	r2, #64	; 0x40
1a001ea6:	d2bd      	bcs.n	1a001e24 <memcpy+0x10>
1a001ea8:	3230      	adds	r2, #48	; 0x30
1a001eaa:	d311      	bcc.n	1a001ed0 <memcpy+0xbc>
1a001eac:	f851 3b04 	ldr.w	r3, [r1], #4
1a001eb0:	f840 3b04 	str.w	r3, [r0], #4
1a001eb4:	f851 3b04 	ldr.w	r3, [r1], #4
1a001eb8:	f840 3b04 	str.w	r3, [r0], #4
1a001ebc:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ec0:	f840 3b04 	str.w	r3, [r0], #4
1a001ec4:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ec8:	f840 3b04 	str.w	r3, [r0], #4
1a001ecc:	3a10      	subs	r2, #16
1a001ece:	d2ed      	bcs.n	1a001eac <memcpy+0x98>
1a001ed0:	320c      	adds	r2, #12
1a001ed2:	d305      	bcc.n	1a001ee0 <memcpy+0xcc>
1a001ed4:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ed8:	f840 3b04 	str.w	r3, [r0], #4
1a001edc:	3a04      	subs	r2, #4
1a001ede:	d2f9      	bcs.n	1a001ed4 <memcpy+0xc0>
1a001ee0:	3204      	adds	r2, #4
1a001ee2:	d008      	beq.n	1a001ef6 <memcpy+0xe2>
1a001ee4:	07d2      	lsls	r2, r2, #31
1a001ee6:	bf1c      	itt	ne
1a001ee8:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a001eec:	f800 3b01 	strbne.w	r3, [r0], #1
1a001ef0:	d301      	bcc.n	1a001ef6 <memcpy+0xe2>
1a001ef2:	880b      	ldrh	r3, [r1, #0]
1a001ef4:	8003      	strh	r3, [r0, #0]
1a001ef6:	4660      	mov	r0, ip
1a001ef8:	4770      	bx	lr
1a001efa:	bf00      	nop
1a001efc:	2a08      	cmp	r2, #8
1a001efe:	d313      	bcc.n	1a001f28 <memcpy+0x114>
1a001f00:	078b      	lsls	r3, r1, #30
1a001f02:	d08d      	beq.n	1a001e20 <memcpy+0xc>
1a001f04:	f010 0303 	ands.w	r3, r0, #3
1a001f08:	d08a      	beq.n	1a001e20 <memcpy+0xc>
1a001f0a:	f1c3 0304 	rsb	r3, r3, #4
1a001f0e:	1ad2      	subs	r2, r2, r3
1a001f10:	07db      	lsls	r3, r3, #31
1a001f12:	bf1c      	itt	ne
1a001f14:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a001f18:	f800 3b01 	strbne.w	r3, [r0], #1
1a001f1c:	d380      	bcc.n	1a001e20 <memcpy+0xc>
1a001f1e:	f831 3b02 	ldrh.w	r3, [r1], #2
1a001f22:	f820 3b02 	strh.w	r3, [r0], #2
1a001f26:	e77b      	b.n	1a001e20 <memcpy+0xc>
1a001f28:	3a04      	subs	r2, #4
1a001f2a:	d3d9      	bcc.n	1a001ee0 <memcpy+0xcc>
1a001f2c:	3a01      	subs	r2, #1
1a001f2e:	f811 3b01 	ldrb.w	r3, [r1], #1
1a001f32:	f800 3b01 	strb.w	r3, [r0], #1
1a001f36:	d2f9      	bcs.n	1a001f2c <memcpy+0x118>
1a001f38:	780b      	ldrb	r3, [r1, #0]
1a001f3a:	7003      	strb	r3, [r0, #0]
1a001f3c:	784b      	ldrb	r3, [r1, #1]
1a001f3e:	7043      	strb	r3, [r0, #1]
1a001f40:	788b      	ldrb	r3, [r1, #2]
1a001f42:	7083      	strb	r3, [r0, #2]
1a001f44:	4660      	mov	r0, ip
1a001f46:	4770      	bx	lr

1a001f48 <ExtRateIn>:
1a001f48:	0000 0000                                   ....

1a001f4c <OscRateIn>:
1a001f4c:	1b00 00b7                                   ....

1a001f50 <inst1>:
1a001f50:	504c 3143 7838 2f78 3334 7878 5520 5241     LPC18xx/43xx UAR
1a001f60:	2054 7865 6d61 6c70 2065 7375 6e69 2067     T example using 
1a001f70:	6972 676e 6220 6675 6566 7372 0a0d ff00     ring buffers....

1a001f80 <inst2>:
1a001f80:	7250 7365 2073 2061 656b 2079 6f74 6520     Press a key to e
1a001f90:	6863 206f 7469 6220 6361 206b 726f 4520     cho it back or E
1a001fa0:	4353 7420 206f 7571 7469 0a0d ff00 ffff     SC to quit......

1a001fb0 <InitClkStates>:
1a001fb0:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a001fc0:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a001fd0:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a001fe0:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a001ff0:	111a 0001 111b 0001                         ........

1a001ff8 <UART_PClock>:
1a001ff8:	0081 0082 00a1 00a2                         ........

1a002000 <UART_BClock>:
1a002000:	01c2 01a2 0182 0162                         ......b.

1a002008 <periph_to_base>:
1a002008:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a002018:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a002028:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a002038:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a002048:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a002058:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a002068:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a002078:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a002080 <_init>:
1a002080:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002082:	bf00      	nop

Disassembly of section .fini:

1a002084 <_fini>:
1a002084:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002086:	bf00      	nop
