
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 4d 07 00 1a a5 01 00 1a ab 01 00 1a     ....M...........
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	d5 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a 2d 07 00 1a     ............-...
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000cc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a001e30 	.word	0x1a001e30
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000

1a000120 <__bss_section_table_>:
1a000120:	10000000 	.word	0x10000000
1a000124:	00000444 	.word	0x00000444

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
1a000564:	f000 fad2 	bl	1a000b0c <Chip_SetupXtalClocking>
1a000568:	f001 fb0a 	bl	1a001b80 <SystemCoreClockUpdate>
1a00056c:	f000 f9aa 	bl	1a0008c4 <fpuInit>
1a000570:	4868      	ldr	r0, [pc, #416]	; (1a000714 <systemInit+0x1b4>)
1a000572:	f001 fb11 	bl	1a001b98 <Chip_GPIO_Init>
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
1a00069c:	f000 fb72 	bl	1a000d84 <Chip_UART_Init>
1a0006a0:	2103      	movs	r1, #3
1a0006a2:	481d      	ldr	r0, [pc, #116]	; (1a000718 <systemInit+0x1b8>)
1a0006a4:	f7ff ff4e 	bl	1a000544 <Chip_UART_ConfigData>
1a0006a8:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a0006ac:	481a      	ldr	r0, [pc, #104]	; (1a000718 <systemInit+0x1b8>)
1a0006ae:	f000 fbad 	bl	1a000e0c <Chip_UART_SetBaud>
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
1a0006dc:	f000 fcf3 	bl	1a0010c6 <RingBuffer_Init>
1a0006e0:	f44f 7300 	mov.w	r3, #512	; 0x200
1a0006e4:	2201      	movs	r2, #1
1a0006e6:	490f      	ldr	r1, [pc, #60]	; (1a000724 <systemInit+0x1c4>)
1a0006e8:	480f      	ldr	r0, [pc, #60]	; (1a000728 <systemInit+0x1c8>)
1a0006ea:	f000 fcec 	bl	1a0010c6 <RingBuffer_Init>
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
1a00070a:	f000 fc4d 	bl	1a000fa8 <StopWatch_Init>
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
1a000736:	f000 fbe8 	bl	1a000f0a <Chip_UART_IRQRBHandler>
1a00073a:	bf00      	nop
1a00073c:	bd80      	pop	{r7, pc}
1a00073e:	bf00      	nop
1a000740:	10000400 	.word	0x10000400
1a000744:	10000414 	.word	0x10000414
1a000748:	400c1000 	.word	0x400c1000

1a00074c <ResetISR>:
1a00074c:	b580      	push	{r7, lr}
1a00074e:	b088      	sub	sp, #32
1a000750:	af00      	add	r7, sp, #0
1a000752:	b672      	cpsid	i
1a000754:	4b26      	ldr	r3, [pc, #152]	; (1a0007f0 <ResetISR+0xa4>)
1a000756:	617b      	str	r3, [r7, #20]
1a000758:	697b      	ldr	r3, [r7, #20]
1a00075a:	4a26      	ldr	r2, [pc, #152]	; (1a0007f4 <ResetISR+0xa8>)
1a00075c:	601a      	str	r2, [r3, #0]
1a00075e:	697b      	ldr	r3, [r7, #20]
1a000760:	3304      	adds	r3, #4
1a000762:	4a25      	ldr	r2, [pc, #148]	; (1a0007f8 <ResetISR+0xac>)
1a000764:	601a      	str	r2, [r3, #0]
1a000766:	4b25      	ldr	r3, [pc, #148]	; (1a0007fc <ResetISR+0xb0>)
1a000768:	613b      	str	r3, [r7, #16]
1a00076a:	2300      	movs	r3, #0
1a00076c:	61fb      	str	r3, [r7, #28]
1a00076e:	e009      	b.n	1a000784 <ResetISR+0x38>
1a000770:	69fb      	ldr	r3, [r7, #28]
1a000772:	009b      	lsls	r3, r3, #2
1a000774:	693a      	ldr	r2, [r7, #16]
1a000776:	4413      	add	r3, r2
1a000778:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a00077c:	601a      	str	r2, [r3, #0]
1a00077e:	69fb      	ldr	r3, [r7, #28]
1a000780:	3301      	adds	r3, #1
1a000782:	61fb      	str	r3, [r7, #28]
1a000784:	69fb      	ldr	r3, [r7, #28]
1a000786:	2b07      	cmp	r3, #7
1a000788:	d9f2      	bls.n	1a000770 <ResetISR+0x24>
1a00078a:	b662      	cpsie	i
1a00078c:	4b1c      	ldr	r3, [pc, #112]	; (1a000800 <ResetISR+0xb4>)
1a00078e:	61bb      	str	r3, [r7, #24]
1a000790:	e013      	b.n	1a0007ba <ResetISR+0x6e>
1a000792:	69bb      	ldr	r3, [r7, #24]
1a000794:	1d1a      	adds	r2, r3, #4
1a000796:	61ba      	str	r2, [r7, #24]
1a000798:	681b      	ldr	r3, [r3, #0]
1a00079a:	607b      	str	r3, [r7, #4]
1a00079c:	69bb      	ldr	r3, [r7, #24]
1a00079e:	1d1a      	adds	r2, r3, #4
1a0007a0:	61ba      	str	r2, [r7, #24]
1a0007a2:	681b      	ldr	r3, [r3, #0]
1a0007a4:	60fb      	str	r3, [r7, #12]
1a0007a6:	69bb      	ldr	r3, [r7, #24]
1a0007a8:	1d1a      	adds	r2, r3, #4
1a0007aa:	61ba      	str	r2, [r7, #24]
1a0007ac:	681b      	ldr	r3, [r3, #0]
1a0007ae:	60bb      	str	r3, [r7, #8]
1a0007b0:	68ba      	ldr	r2, [r7, #8]
1a0007b2:	68f9      	ldr	r1, [r7, #12]
1a0007b4:	6878      	ldr	r0, [r7, #4]
1a0007b6:	f7ff fcb7 	bl	1a000128 <data_init>
1a0007ba:	69bb      	ldr	r3, [r7, #24]
1a0007bc:	4a11      	ldr	r2, [pc, #68]	; (1a000804 <ResetISR+0xb8>)
1a0007be:	4293      	cmp	r3, r2
1a0007c0:	d3e7      	bcc.n	1a000792 <ResetISR+0x46>
1a0007c2:	e00d      	b.n	1a0007e0 <ResetISR+0x94>
1a0007c4:	69bb      	ldr	r3, [r7, #24]
1a0007c6:	1d1a      	adds	r2, r3, #4
1a0007c8:	61ba      	str	r2, [r7, #24]
1a0007ca:	681b      	ldr	r3, [r3, #0]
1a0007cc:	60fb      	str	r3, [r7, #12]
1a0007ce:	69bb      	ldr	r3, [r7, #24]
1a0007d0:	1d1a      	adds	r2, r3, #4
1a0007d2:	61ba      	str	r2, [r7, #24]
1a0007d4:	681b      	ldr	r3, [r3, #0]
1a0007d6:	60bb      	str	r3, [r7, #8]
1a0007d8:	68b9      	ldr	r1, [r7, #8]
1a0007da:	68f8      	ldr	r0, [r7, #12]
1a0007dc:	f7ff fcc6 	bl	1a00016c <bss_init>
1a0007e0:	69bb      	ldr	r3, [r7, #24]
1a0007e2:	4a09      	ldr	r2, [pc, #36]	; (1a000808 <ResetISR+0xbc>)
1a0007e4:	4293      	cmp	r3, r2
1a0007e6:	d3ed      	bcc.n	1a0007c4 <ResetISR+0x78>
1a0007e8:	f000 f850 	bl	1a00088c <main>
1a0007ec:	e7fe      	b.n	1a0007ec <ResetISR+0xa0>
1a0007ee:	bf00      	nop
1a0007f0:	40053100 	.word	0x40053100
1a0007f4:	10df1000 	.word	0x10df1000
1a0007f8:	01dff7ff 	.word	0x01dff7ff
1a0007fc:	e000e280 	.word	0xe000e280
1a000800:	1a000114 	.word	0x1a000114
1a000804:	1a000120 	.word	0x1a000120
1a000808:	1a000128 	.word	0x1a000128

1a00080c <Chip_GPIO_SetPinState>:
1a00080c:	b480      	push	{r7}
1a00080e:	b083      	sub	sp, #12
1a000810:	af00      	add	r7, sp, #0
1a000812:	6078      	str	r0, [r7, #4]
1a000814:	4608      	mov	r0, r1
1a000816:	4611      	mov	r1, r2
1a000818:	461a      	mov	r2, r3
1a00081a:	4603      	mov	r3, r0
1a00081c:	70fb      	strb	r3, [r7, #3]
1a00081e:	460b      	mov	r3, r1
1a000820:	70bb      	strb	r3, [r7, #2]
1a000822:	4613      	mov	r3, r2
1a000824:	707b      	strb	r3, [r7, #1]
1a000826:	78fa      	ldrb	r2, [r7, #3]
1a000828:	78bb      	ldrb	r3, [r7, #2]
1a00082a:	7878      	ldrb	r0, [r7, #1]
1a00082c:	6879      	ldr	r1, [r7, #4]
1a00082e:	0152      	lsls	r2, r2, #5
1a000830:	440a      	add	r2, r1
1a000832:	4413      	add	r3, r2
1a000834:	4602      	mov	r2, r0
1a000836:	701a      	strb	r2, [r3, #0]
1a000838:	bf00      	nop
1a00083a:	370c      	adds	r7, #12
1a00083c:	46bd      	mov	sp, r7
1a00083e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000842:	4770      	bx	lr

1a000844 <StopWatch_Elapsed>:
1a000844:	b580      	push	{r7, lr}
1a000846:	b082      	sub	sp, #8
1a000848:	af00      	add	r7, sp, #0
1a00084a:	6078      	str	r0, [r7, #4]
1a00084c:	f000 fbe6 	bl	1a00101c <StopWatch_Start>
1a000850:	4602      	mov	r2, r0
1a000852:	687b      	ldr	r3, [r7, #4]
1a000854:	1ad3      	subs	r3, r2, r3
1a000856:	4618      	mov	r0, r3
1a000858:	3708      	adds	r7, #8
1a00085a:	46bd      	mov	sp, r7
1a00085c:	bd80      	pop	{r7, pc}

1a00085e <StopWatch_DelayMs>:
1a00085e:	b580      	push	{r7, lr}
1a000860:	b084      	sub	sp, #16
1a000862:	af00      	add	r7, sp, #0
1a000864:	6078      	str	r0, [r7, #4]
1a000866:	6878      	ldr	r0, [r7, #4]
1a000868:	f000 fbe2 	bl	1a001030 <StopWatch_MsToTicks>
1a00086c:	60f8      	str	r0, [r7, #12]
1a00086e:	f000 fbd5 	bl	1a00101c <StopWatch_Start>
1a000872:	60b8      	str	r0, [r7, #8]
1a000874:	bf00      	nop
1a000876:	68b8      	ldr	r0, [r7, #8]
1a000878:	f7ff ffe4 	bl	1a000844 <StopWatch_Elapsed>
1a00087c:	4602      	mov	r2, r0
1a00087e:	68fb      	ldr	r3, [r7, #12]
1a000880:	4293      	cmp	r3, r2
1a000882:	d8f8      	bhi.n	1a000876 <StopWatch_DelayMs+0x18>
1a000884:	bf00      	nop
1a000886:	3710      	adds	r7, #16
1a000888:	46bd      	mov	sp, r7
1a00088a:	bd80      	pop	{r7, pc}

1a00088c <main>:
1a00088c:	b580      	push	{r7, lr}
1a00088e:	af00      	add	r7, sp, #0
1a000890:	f7ff fe66 	bl	1a000560 <systemInit>
1a000894:	2301      	movs	r3, #1
1a000896:	220e      	movs	r2, #14
1a000898:	2100      	movs	r1, #0
1a00089a:	4809      	ldr	r0, [pc, #36]	; (1a0008c0 <main+0x34>)
1a00089c:	f7ff ffb6 	bl	1a00080c <Chip_GPIO_SetPinState>
1a0008a0:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
1a0008a4:	f7ff ffdb 	bl	1a00085e <StopWatch_DelayMs>
1a0008a8:	2300      	movs	r3, #0
1a0008aa:	220e      	movs	r2, #14
1a0008ac:	2100      	movs	r1, #0
1a0008ae:	4804      	ldr	r0, [pc, #16]	; (1a0008c0 <main+0x34>)
1a0008b0:	f7ff ffac 	bl	1a00080c <Chip_GPIO_SetPinState>
1a0008b4:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
1a0008b8:	f7ff ffd1 	bl	1a00085e <StopWatch_DelayMs>
1a0008bc:	e7ea      	b.n	1a000894 <main+0x8>
1a0008be:	bf00      	nop
1a0008c0:	400f4000 	.word	0x400f4000

1a0008c4 <fpuInit>:
1a0008c4:	b480      	push	{r7}
1a0008c6:	b089      	sub	sp, #36	; 0x24
1a0008c8:	af00      	add	r7, sp, #0
1a0008ca:	4b16      	ldr	r3, [pc, #88]	; (1a000924 <fpuInit+0x60>)
1a0008cc:	61fb      	str	r3, [r7, #28]
1a0008ce:	4b16      	ldr	r3, [pc, #88]	; (1a000928 <fpuInit+0x64>)
1a0008d0:	61bb      	str	r3, [r7, #24]
1a0008d2:	4b16      	ldr	r3, [pc, #88]	; (1a00092c <fpuInit+0x68>)
1a0008d4:	617b      	str	r3, [r7, #20]
1a0008d6:	2300      	movs	r3, #0
1a0008d8:	74fb      	strb	r3, [r7, #19]
1a0008da:	69bb      	ldr	r3, [r7, #24]
1a0008dc:	681b      	ldr	r3, [r3, #0]
1a0008de:	60bb      	str	r3, [r7, #8]
1a0008e0:	697b      	ldr	r3, [r7, #20]
1a0008e2:	681b      	ldr	r3, [r3, #0]
1a0008e4:	607b      	str	r3, [r7, #4]
1a0008e6:	68bb      	ldr	r3, [r7, #8]
1a0008e8:	4a11      	ldr	r2, [pc, #68]	; (1a000930 <fpuInit+0x6c>)
1a0008ea:	4293      	cmp	r3, r2
1a0008ec:	d105      	bne.n	1a0008fa <fpuInit+0x36>
1a0008ee:	687b      	ldr	r3, [r7, #4]
1a0008f0:	4a10      	ldr	r2, [pc, #64]	; (1a000934 <fpuInit+0x70>)
1a0008f2:	4293      	cmp	r3, r2
1a0008f4:	d101      	bne.n	1a0008fa <fpuInit+0x36>
1a0008f6:	2301      	movs	r3, #1
1a0008f8:	e000      	b.n	1a0008fc <fpuInit+0x38>
1a0008fa:	2300      	movs	r3, #0
1a0008fc:	74fb      	strb	r3, [r7, #19]
1a0008fe:	7cfb      	ldrb	r3, [r7, #19]
1a000900:	2b00      	cmp	r3, #0
1a000902:	d009      	beq.n	1a000918 <fpuInit+0x54>
1a000904:	69fb      	ldr	r3, [r7, #28]
1a000906:	681b      	ldr	r3, [r3, #0]
1a000908:	60fb      	str	r3, [r7, #12]
1a00090a:	68fb      	ldr	r3, [r7, #12]
1a00090c:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a000910:	60fb      	str	r3, [r7, #12]
1a000912:	68fa      	ldr	r2, [r7, #12]
1a000914:	69fb      	ldr	r3, [r7, #28]
1a000916:	601a      	str	r2, [r3, #0]
1a000918:	bf00      	nop
1a00091a:	3724      	adds	r7, #36	; 0x24
1a00091c:	46bd      	mov	sp, r7
1a00091e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000922:	4770      	bx	lr
1a000924:	e000ed88 	.word	0xe000ed88
1a000928:	e000ef40 	.word	0xe000ef40
1a00092c:	e000ef44 	.word	0xe000ef44
1a000930:	10110021 	.word	0x10110021
1a000934:	11000011 	.word	0x11000011

1a000938 <Chip_Clock_DisableMainPLL>:
1a000938:	b480      	push	{r7}
1a00093a:	af00      	add	r7, sp, #0
1a00093c:	4b05      	ldr	r3, [pc, #20]	; (1a000954 <Chip_Clock_DisableMainPLL+0x1c>)
1a00093e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000940:	4a04      	ldr	r2, [pc, #16]	; (1a000954 <Chip_Clock_DisableMainPLL+0x1c>)
1a000942:	f043 0301 	orr.w	r3, r3, #1
1a000946:	6453      	str	r3, [r2, #68]	; 0x44
1a000948:	bf00      	nop
1a00094a:	46bd      	mov	sp, r7
1a00094c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000950:	4770      	bx	lr
1a000952:	bf00      	nop
1a000954:	40050000 	.word	0x40050000

1a000958 <Chip_Clock_SetupMainPLL>:
1a000958:	b480      	push	{r7}
1a00095a:	b083      	sub	sp, #12
1a00095c:	af00      	add	r7, sp, #0
1a00095e:	6078      	str	r0, [r7, #4]
1a000960:	687b      	ldr	r3, [r7, #4]
1a000962:	681b      	ldr	r3, [r3, #0]
1a000964:	461a      	mov	r2, r3
1a000966:	687b      	ldr	r3, [r7, #4]
1a000968:	791b      	ldrb	r3, [r3, #4]
1a00096a:	061b      	lsls	r3, r3, #24
1a00096c:	4313      	orrs	r3, r2
1a00096e:	687a      	ldr	r2, [r7, #4]
1a000970:	6912      	ldr	r2, [r2, #16]
1a000972:	0412      	lsls	r2, r2, #16
1a000974:	4313      	orrs	r3, r2
1a000976:	687a      	ldr	r2, [r7, #4]
1a000978:	6892      	ldr	r2, [r2, #8]
1a00097a:	0312      	lsls	r2, r2, #12
1a00097c:	4313      	orrs	r3, r2
1a00097e:	687a      	ldr	r2, [r7, #4]
1a000980:	68d2      	ldr	r2, [r2, #12]
1a000982:	0212      	lsls	r2, r2, #8
1a000984:	4313      	orrs	r3, r2
1a000986:	4a05      	ldr	r2, [pc, #20]	; (1a00099c <Chip_Clock_SetupMainPLL+0x44>)
1a000988:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a00098c:	6453      	str	r3, [r2, #68]	; 0x44
1a00098e:	bf00      	nop
1a000990:	370c      	adds	r7, #12
1a000992:	46bd      	mov	sp, r7
1a000994:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000998:	4770      	bx	lr
1a00099a:	bf00      	nop
1a00099c:	40050000 	.word	0x40050000

1a0009a0 <Chip_Clock_MainPLLLocked>:
1a0009a0:	b480      	push	{r7}
1a0009a2:	af00      	add	r7, sp, #0
1a0009a4:	4b06      	ldr	r3, [pc, #24]	; (1a0009c0 <Chip_Clock_MainPLLLocked+0x20>)
1a0009a6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a0009a8:	f003 0301 	and.w	r3, r3, #1
1a0009ac:	2b00      	cmp	r3, #0
1a0009ae:	bf14      	ite	ne
1a0009b0:	2301      	movne	r3, #1
1a0009b2:	2300      	moveq	r3, #0
1a0009b4:	b2db      	uxtb	r3, r3
1a0009b6:	4618      	mov	r0, r3
1a0009b8:	46bd      	mov	sp, r7
1a0009ba:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009be:	4770      	bx	lr
1a0009c0:	40050000 	.word	0x40050000

1a0009c4 <Chip_SetupCoreClock>:
1a0009c4:	b590      	push	{r4, r7, lr}
1a0009c6:	b08f      	sub	sp, #60	; 0x3c
1a0009c8:	af00      	add	r7, sp, #0
1a0009ca:	4603      	mov	r3, r0
1a0009cc:	6039      	str	r1, [r7, #0]
1a0009ce:	71fb      	strb	r3, [r7, #7]
1a0009d0:	4613      	mov	r3, r2
1a0009d2:	71bb      	strb	r3, [r7, #6]
1a0009d4:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a0009d8:	62bb      	str	r3, [r7, #40]	; 0x28
1a0009da:	2300      	movs	r3, #0
1a0009dc:	633b      	str	r3, [r7, #48]	; 0x30
1a0009de:	2300      	movs	r3, #0
1a0009e0:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0009e2:	79fb      	ldrb	r3, [r7, #7]
1a0009e4:	2b06      	cmp	r3, #6
1a0009e6:	d101      	bne.n	1a0009ec <Chip_SetupCoreClock+0x28>
1a0009e8:	f000 fdb2 	bl	1a001550 <Chip_Clock_EnableCrystal>
1a0009ec:	79f9      	ldrb	r1, [r7, #7]
1a0009ee:	2300      	movs	r3, #0
1a0009f0:	2201      	movs	r2, #1
1a0009f2:	2004      	movs	r0, #4
1a0009f4:	f000 ff9e 	bl	1a001934 <Chip_Clock_SetBaseClock>
1a0009f8:	f7ff ff9e 	bl	1a000938 <Chip_Clock_DisableMainPLL>
1a0009fc:	79fb      	ldrb	r3, [r7, #7]
1a0009fe:	733b      	strb	r3, [r7, #12]
1a000a00:	f107 0308 	add.w	r3, r7, #8
1a000a04:	4619      	mov	r1, r3
1a000a06:	6838      	ldr	r0, [r7, #0]
1a000a08:	f000 fdda 	bl	1a0015c0 <Chip_Clock_CalcMainPLLValue>
1a000a0c:	683b      	ldr	r3, [r7, #0]
1a000a0e:	4a3d      	ldr	r2, [pc, #244]	; (1a000b04 <Chip_SetupCoreClock+0x140>)
1a000a10:	4293      	cmp	r3, r2
1a000a12:	d916      	bls.n	1a000a42 <Chip_SetupCoreClock+0x7e>
1a000a14:	68bb      	ldr	r3, [r7, #8]
1a000a16:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a000a1a:	2b00      	cmp	r3, #0
1a000a1c:	d000      	beq.n	1a000a20 <Chip_SetupCoreClock+0x5c>
1a000a1e:	e7fe      	b.n	1a000a1e <Chip_SetupCoreClock+0x5a>
1a000a20:	68bb      	ldr	r3, [r7, #8]
1a000a22:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a000a26:	2b00      	cmp	r3, #0
1a000a28:	d006      	beq.n	1a000a38 <Chip_SetupCoreClock+0x74>
1a000a2a:	2301      	movs	r3, #1
1a000a2c:	633b      	str	r3, [r7, #48]	; 0x30
1a000a2e:	68bb      	ldr	r3, [r7, #8]
1a000a30:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a000a34:	60bb      	str	r3, [r7, #8]
1a000a36:	e004      	b.n	1a000a42 <Chip_SetupCoreClock+0x7e>
1a000a38:	2301      	movs	r3, #1
1a000a3a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000a3c:	697b      	ldr	r3, [r7, #20]
1a000a3e:	3301      	adds	r3, #1
1a000a40:	617b      	str	r3, [r7, #20]
1a000a42:	f107 0308 	add.w	r3, r7, #8
1a000a46:	4618      	mov	r0, r3
1a000a48:	f7ff ff86 	bl	1a000958 <Chip_Clock_SetupMainPLL>
1a000a4c:	bf00      	nop
1a000a4e:	f7ff ffa7 	bl	1a0009a0 <Chip_Clock_MainPLLLocked>
1a000a52:	4603      	mov	r3, r0
1a000a54:	2b00      	cmp	r3, #0
1a000a56:	d0fa      	beq.n	1a000a4e <Chip_SetupCoreClock+0x8a>
1a000a58:	2300      	movs	r3, #0
1a000a5a:	2201      	movs	r2, #1
1a000a5c:	2109      	movs	r1, #9
1a000a5e:	2004      	movs	r0, #4
1a000a60:	f000 ff68 	bl	1a001934 <Chip_Clock_SetBaseClock>
1a000a64:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a000a66:	2b00      	cmp	r3, #0
1a000a68:	d012      	beq.n	1a000a90 <Chip_SetupCoreClock+0xcc>
1a000a6a:	f641 3358 	movw	r3, #7000	; 0x1b58
1a000a6e:	62bb      	str	r3, [r7, #40]	; 0x28
1a000a70:	bf00      	nop
1a000a72:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000a74:	1e5a      	subs	r2, r3, #1
1a000a76:	62ba      	str	r2, [r7, #40]	; 0x28
1a000a78:	2b00      	cmp	r3, #0
1a000a7a:	d1fa      	bne.n	1a000a72 <Chip_SetupCoreClock+0xae>
1a000a7c:	68bb      	ldr	r3, [r7, #8]
1a000a7e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a000a82:	60bb      	str	r3, [r7, #8]
1a000a84:	f107 0308 	add.w	r3, r7, #8
1a000a88:	4618      	mov	r0, r3
1a000a8a:	f7ff ff65 	bl	1a000958 <Chip_Clock_SetupMainPLL>
1a000a8e:	e013      	b.n	1a000ab8 <Chip_SetupCoreClock+0xf4>
1a000a90:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000a92:	2b00      	cmp	r3, #0
1a000a94:	d010      	beq.n	1a000ab8 <Chip_SetupCoreClock+0xf4>
1a000a96:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a000a9a:	62bb      	str	r3, [r7, #40]	; 0x28
1a000a9c:	bf00      	nop
1a000a9e:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000aa0:	1e5a      	subs	r2, r3, #1
1a000aa2:	62ba      	str	r2, [r7, #40]	; 0x28
1a000aa4:	2b00      	cmp	r3, #0
1a000aa6:	d1fa      	bne.n	1a000a9e <Chip_SetupCoreClock+0xda>
1a000aa8:	697b      	ldr	r3, [r7, #20]
1a000aaa:	3b01      	subs	r3, #1
1a000aac:	617b      	str	r3, [r7, #20]
1a000aae:	f107 0308 	add.w	r3, r7, #8
1a000ab2:	4618      	mov	r0, r3
1a000ab4:	f7ff ff50 	bl	1a000958 <Chip_Clock_SetupMainPLL>
1a000ab8:	79bb      	ldrb	r3, [r7, #6]
1a000aba:	2b00      	cmp	r3, #0
1a000abc:	d01e      	beq.n	1a000afc <Chip_SetupCoreClock+0x138>
1a000abe:	2300      	movs	r3, #0
1a000ac0:	637b      	str	r3, [r7, #52]	; 0x34
1a000ac2:	e018      	b.n	1a000af6 <Chip_SetupCoreClock+0x132>
1a000ac4:	4a10      	ldr	r2, [pc, #64]	; (1a000b08 <Chip_SetupCoreClock+0x144>)
1a000ac6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ac8:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a000acc:	4a0e      	ldr	r2, [pc, #56]	; (1a000b08 <Chip_SetupCoreClock+0x144>)
1a000ace:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ad0:	009b      	lsls	r3, r3, #2
1a000ad2:	4413      	add	r3, r2
1a000ad4:	7859      	ldrb	r1, [r3, #1]
1a000ad6:	4a0c      	ldr	r2, [pc, #48]	; (1a000b08 <Chip_SetupCoreClock+0x144>)
1a000ad8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ada:	009b      	lsls	r3, r3, #2
1a000adc:	4413      	add	r3, r2
1a000ade:	789c      	ldrb	r4, [r3, #2]
1a000ae0:	4a09      	ldr	r2, [pc, #36]	; (1a000b08 <Chip_SetupCoreClock+0x144>)
1a000ae2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ae4:	009b      	lsls	r3, r3, #2
1a000ae6:	4413      	add	r3, r2
1a000ae8:	78db      	ldrb	r3, [r3, #3]
1a000aea:	4622      	mov	r2, r4
1a000aec:	f000 ff22 	bl	1a001934 <Chip_Clock_SetBaseClock>
1a000af0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000af2:	3301      	adds	r3, #1
1a000af4:	637b      	str	r3, [r7, #52]	; 0x34
1a000af6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000af8:	2b11      	cmp	r3, #17
1a000afa:	d9e3      	bls.n	1a000ac4 <Chip_SetupCoreClock+0x100>
1a000afc:	bf00      	nop
1a000afe:	373c      	adds	r7, #60	; 0x3c
1a000b00:	46bd      	mov	sp, r7
1a000b02:	bd90      	pop	{r4, r7, pc}
1a000b04:	068e7780 	.word	0x068e7780
1a000b08:	1a001d58 	.word	0x1a001d58

1a000b0c <Chip_SetupXtalClocking>:
1a000b0c:	b580      	push	{r7, lr}
1a000b0e:	af00      	add	r7, sp, #0
1a000b10:	2201      	movs	r2, #1
1a000b12:	4903      	ldr	r1, [pc, #12]	; (1a000b20 <Chip_SetupXtalClocking+0x14>)
1a000b14:	2006      	movs	r0, #6
1a000b16:	f7ff ff55 	bl	1a0009c4 <Chip_SetupCoreClock>
1a000b1a:	bf00      	nop
1a000b1c:	bd80      	pop	{r7, pc}
1a000b1e:	bf00      	nop
1a000b20:	0c28cb00 	.word	0x0c28cb00

1a000b24 <RingBuffer_IsEmpty>:
1a000b24:	b480      	push	{r7}
1a000b26:	b083      	sub	sp, #12
1a000b28:	af00      	add	r7, sp, #0
1a000b2a:	6078      	str	r0, [r7, #4]
1a000b2c:	687b      	ldr	r3, [r7, #4]
1a000b2e:	330c      	adds	r3, #12
1a000b30:	681a      	ldr	r2, [r3, #0]
1a000b32:	687b      	ldr	r3, [r7, #4]
1a000b34:	3310      	adds	r3, #16
1a000b36:	681b      	ldr	r3, [r3, #0]
1a000b38:	429a      	cmp	r2, r3
1a000b3a:	bf0c      	ite	eq
1a000b3c:	2301      	moveq	r3, #1
1a000b3e:	2300      	movne	r3, #0
1a000b40:	b2db      	uxtb	r3, r3
1a000b42:	4618      	mov	r0, r3
1a000b44:	370c      	adds	r7, #12
1a000b46:	46bd      	mov	sp, r7
1a000b48:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b4c:	4770      	bx	lr

1a000b4e <Chip_UART_TXDisable>:
1a000b4e:	b480      	push	{r7}
1a000b50:	b083      	sub	sp, #12
1a000b52:	af00      	add	r7, sp, #0
1a000b54:	6078      	str	r0, [r7, #4]
1a000b56:	687b      	ldr	r3, [r7, #4]
1a000b58:	2200      	movs	r2, #0
1a000b5a:	65da      	str	r2, [r3, #92]	; 0x5c
1a000b5c:	bf00      	nop
1a000b5e:	370c      	adds	r7, #12
1a000b60:	46bd      	mov	sp, r7
1a000b62:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b66:	4770      	bx	lr

1a000b68 <Chip_UART_SendByte>:
1a000b68:	b480      	push	{r7}
1a000b6a:	b083      	sub	sp, #12
1a000b6c:	af00      	add	r7, sp, #0
1a000b6e:	6078      	str	r0, [r7, #4]
1a000b70:	460b      	mov	r3, r1
1a000b72:	70fb      	strb	r3, [r7, #3]
1a000b74:	78fa      	ldrb	r2, [r7, #3]
1a000b76:	687b      	ldr	r3, [r7, #4]
1a000b78:	601a      	str	r2, [r3, #0]
1a000b7a:	bf00      	nop
1a000b7c:	370c      	adds	r7, #12
1a000b7e:	46bd      	mov	sp, r7
1a000b80:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b84:	4770      	bx	lr

1a000b86 <Chip_UART_ReadByte>:
1a000b86:	b480      	push	{r7}
1a000b88:	b083      	sub	sp, #12
1a000b8a:	af00      	add	r7, sp, #0
1a000b8c:	6078      	str	r0, [r7, #4]
1a000b8e:	687b      	ldr	r3, [r7, #4]
1a000b90:	681b      	ldr	r3, [r3, #0]
1a000b92:	b2db      	uxtb	r3, r3
1a000b94:	4618      	mov	r0, r3
1a000b96:	370c      	adds	r7, #12
1a000b98:	46bd      	mov	sp, r7
1a000b9a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b9e:	4770      	bx	lr

1a000ba0 <Chip_UART_IntDisable>:
1a000ba0:	b480      	push	{r7}
1a000ba2:	b083      	sub	sp, #12
1a000ba4:	af00      	add	r7, sp, #0
1a000ba6:	6078      	str	r0, [r7, #4]
1a000ba8:	6039      	str	r1, [r7, #0]
1a000baa:	687b      	ldr	r3, [r7, #4]
1a000bac:	685a      	ldr	r2, [r3, #4]
1a000bae:	683b      	ldr	r3, [r7, #0]
1a000bb0:	43db      	mvns	r3, r3
1a000bb2:	401a      	ands	r2, r3
1a000bb4:	687b      	ldr	r3, [r7, #4]
1a000bb6:	605a      	str	r2, [r3, #4]
1a000bb8:	bf00      	nop
1a000bba:	370c      	adds	r7, #12
1a000bbc:	46bd      	mov	sp, r7
1a000bbe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bc2:	4770      	bx	lr

1a000bc4 <Chip_UART_ReadIntIDReg>:
1a000bc4:	b480      	push	{r7}
1a000bc6:	b083      	sub	sp, #12
1a000bc8:	af00      	add	r7, sp, #0
1a000bca:	6078      	str	r0, [r7, #4]
1a000bcc:	687b      	ldr	r3, [r7, #4]
1a000bce:	689b      	ldr	r3, [r3, #8]
1a000bd0:	4618      	mov	r0, r3
1a000bd2:	370c      	adds	r7, #12
1a000bd4:	46bd      	mov	sp, r7
1a000bd6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bda:	4770      	bx	lr

1a000bdc <Chip_UART_SetupFIFOS>:
1a000bdc:	b480      	push	{r7}
1a000bde:	b083      	sub	sp, #12
1a000be0:	af00      	add	r7, sp, #0
1a000be2:	6078      	str	r0, [r7, #4]
1a000be4:	6039      	str	r1, [r7, #0]
1a000be6:	687b      	ldr	r3, [r7, #4]
1a000be8:	683a      	ldr	r2, [r7, #0]
1a000bea:	609a      	str	r2, [r3, #8]
1a000bec:	bf00      	nop
1a000bee:	370c      	adds	r7, #12
1a000bf0:	46bd      	mov	sp, r7
1a000bf2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bf6:	4770      	bx	lr

1a000bf8 <Chip_UART_ConfigData>:
1a000bf8:	b480      	push	{r7}
1a000bfa:	b083      	sub	sp, #12
1a000bfc:	af00      	add	r7, sp, #0
1a000bfe:	6078      	str	r0, [r7, #4]
1a000c00:	6039      	str	r1, [r7, #0]
1a000c02:	687b      	ldr	r3, [r7, #4]
1a000c04:	683a      	ldr	r2, [r7, #0]
1a000c06:	60da      	str	r2, [r3, #12]
1a000c08:	bf00      	nop
1a000c0a:	370c      	adds	r7, #12
1a000c0c:	46bd      	mov	sp, r7
1a000c0e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c12:	4770      	bx	lr

1a000c14 <Chip_UART_EnableDivisorAccess>:
1a000c14:	b480      	push	{r7}
1a000c16:	b083      	sub	sp, #12
1a000c18:	af00      	add	r7, sp, #0
1a000c1a:	6078      	str	r0, [r7, #4]
1a000c1c:	687b      	ldr	r3, [r7, #4]
1a000c1e:	68db      	ldr	r3, [r3, #12]
1a000c20:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a000c24:	687b      	ldr	r3, [r7, #4]
1a000c26:	60da      	str	r2, [r3, #12]
1a000c28:	bf00      	nop
1a000c2a:	370c      	adds	r7, #12
1a000c2c:	46bd      	mov	sp, r7
1a000c2e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c32:	4770      	bx	lr

1a000c34 <Chip_UART_DisableDivisorAccess>:
1a000c34:	b480      	push	{r7}
1a000c36:	b083      	sub	sp, #12
1a000c38:	af00      	add	r7, sp, #0
1a000c3a:	6078      	str	r0, [r7, #4]
1a000c3c:	687b      	ldr	r3, [r7, #4]
1a000c3e:	68db      	ldr	r3, [r3, #12]
1a000c40:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a000c44:	687b      	ldr	r3, [r7, #4]
1a000c46:	60da      	str	r2, [r3, #12]
1a000c48:	bf00      	nop
1a000c4a:	370c      	adds	r7, #12
1a000c4c:	46bd      	mov	sp, r7
1a000c4e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c52:	4770      	bx	lr

1a000c54 <Chip_UART_SetDivisorLatches>:
1a000c54:	b480      	push	{r7}
1a000c56:	b083      	sub	sp, #12
1a000c58:	af00      	add	r7, sp, #0
1a000c5a:	6078      	str	r0, [r7, #4]
1a000c5c:	460b      	mov	r3, r1
1a000c5e:	70fb      	strb	r3, [r7, #3]
1a000c60:	4613      	mov	r3, r2
1a000c62:	70bb      	strb	r3, [r7, #2]
1a000c64:	78fa      	ldrb	r2, [r7, #3]
1a000c66:	687b      	ldr	r3, [r7, #4]
1a000c68:	601a      	str	r2, [r3, #0]
1a000c6a:	78ba      	ldrb	r2, [r7, #2]
1a000c6c:	687b      	ldr	r3, [r7, #4]
1a000c6e:	605a      	str	r2, [r3, #4]
1a000c70:	bf00      	nop
1a000c72:	370c      	adds	r7, #12
1a000c74:	46bd      	mov	sp, r7
1a000c76:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c7a:	4770      	bx	lr

1a000c7c <Chip_UART_ReadLineStatus>:
1a000c7c:	b480      	push	{r7}
1a000c7e:	b083      	sub	sp, #12
1a000c80:	af00      	add	r7, sp, #0
1a000c82:	6078      	str	r0, [r7, #4]
1a000c84:	687b      	ldr	r3, [r7, #4]
1a000c86:	695b      	ldr	r3, [r3, #20]
1a000c88:	4618      	mov	r0, r3
1a000c8a:	370c      	adds	r7, #12
1a000c8c:	46bd      	mov	sp, r7
1a000c8e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c92:	4770      	bx	lr

1a000c94 <Chip_UART_SetAutoBaudReg>:
1a000c94:	b480      	push	{r7}
1a000c96:	b083      	sub	sp, #12
1a000c98:	af00      	add	r7, sp, #0
1a000c9a:	6078      	str	r0, [r7, #4]
1a000c9c:	6039      	str	r1, [r7, #0]
1a000c9e:	687b      	ldr	r3, [r7, #4]
1a000ca0:	6a1a      	ldr	r2, [r3, #32]
1a000ca2:	683b      	ldr	r3, [r7, #0]
1a000ca4:	431a      	orrs	r2, r3
1a000ca6:	687b      	ldr	r3, [r7, #4]
1a000ca8:	621a      	str	r2, [r3, #32]
1a000caa:	bf00      	nop
1a000cac:	370c      	adds	r7, #12
1a000cae:	46bd      	mov	sp, r7
1a000cb0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cb4:	4770      	bx	lr
1a000cb6:	Address 0x000000001a000cb6 is out of bounds.


1a000cb8 <Chip_UART_GetIndex>:
1a000cb8:	b480      	push	{r7}
1a000cba:	b085      	sub	sp, #20
1a000cbc:	af00      	add	r7, sp, #0
1a000cbe:	6078      	str	r0, [r7, #4]
1a000cc0:	687b      	ldr	r3, [r7, #4]
1a000cc2:	60fb      	str	r3, [r7, #12]
1a000cc4:	68fb      	ldr	r3, [r7, #12]
1a000cc6:	4a10      	ldr	r2, [pc, #64]	; (1a000d08 <Chip_UART_GetIndex+0x50>)
1a000cc8:	4293      	cmp	r3, r2
1a000cca:	d00f      	beq.n	1a000cec <Chip_UART_GetIndex+0x34>
1a000ccc:	4a0e      	ldr	r2, [pc, #56]	; (1a000d08 <Chip_UART_GetIndex+0x50>)
1a000cce:	4293      	cmp	r3, r2
1a000cd0:	d803      	bhi.n	1a000cda <Chip_UART_GetIndex+0x22>
1a000cd2:	4a0e      	ldr	r2, [pc, #56]	; (1a000d0c <Chip_UART_GetIndex+0x54>)
1a000cd4:	4293      	cmp	r3, r2
1a000cd6:	d007      	beq.n	1a000ce8 <Chip_UART_GetIndex+0x30>
1a000cd8:	e00e      	b.n	1a000cf8 <Chip_UART_GetIndex+0x40>
1a000cda:	4a0d      	ldr	r2, [pc, #52]	; (1a000d10 <Chip_UART_GetIndex+0x58>)
1a000cdc:	4293      	cmp	r3, r2
1a000cde:	d007      	beq.n	1a000cf0 <Chip_UART_GetIndex+0x38>
1a000ce0:	4a0c      	ldr	r2, [pc, #48]	; (1a000d14 <Chip_UART_GetIndex+0x5c>)
1a000ce2:	4293      	cmp	r3, r2
1a000ce4:	d006      	beq.n	1a000cf4 <Chip_UART_GetIndex+0x3c>
1a000ce6:	e007      	b.n	1a000cf8 <Chip_UART_GetIndex+0x40>
1a000ce8:	2300      	movs	r3, #0
1a000cea:	e006      	b.n	1a000cfa <Chip_UART_GetIndex+0x42>
1a000cec:	2301      	movs	r3, #1
1a000cee:	e004      	b.n	1a000cfa <Chip_UART_GetIndex+0x42>
1a000cf0:	2302      	movs	r3, #2
1a000cf2:	e002      	b.n	1a000cfa <Chip_UART_GetIndex+0x42>
1a000cf4:	2303      	movs	r3, #3
1a000cf6:	e000      	b.n	1a000cfa <Chip_UART_GetIndex+0x42>
1a000cf8:	2300      	movs	r3, #0
1a000cfa:	4618      	mov	r0, r3
1a000cfc:	3714      	adds	r7, #20
1a000cfe:	46bd      	mov	sp, r7
1a000d00:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d04:	4770      	bx	lr
1a000d06:	bf00      	nop
1a000d08:	40082000 	.word	0x40082000
1a000d0c:	40081000 	.word	0x40081000
1a000d10:	400c1000 	.word	0x400c1000
1a000d14:	400c2000 	.word	0x400c2000

1a000d18 <Chip_UART_ABIntHandler>:
1a000d18:	b580      	push	{r7, lr}
1a000d1a:	b082      	sub	sp, #8
1a000d1c:	af00      	add	r7, sp, #0
1a000d1e:	6078      	str	r0, [r7, #4]
1a000d20:	6878      	ldr	r0, [r7, #4]
1a000d22:	f7ff ff4f 	bl	1a000bc4 <Chip_UART_ReadIntIDReg>
1a000d26:	4603      	mov	r3, r0
1a000d28:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a000d2c:	2b00      	cmp	r3, #0
1a000d2e:	d011      	beq.n	1a000d54 <Chip_UART_ABIntHandler+0x3c>
1a000d30:	f44f 7180 	mov.w	r1, #256	; 0x100
1a000d34:	6878      	ldr	r0, [r7, #4]
1a000d36:	f7ff ffad 	bl	1a000c94 <Chip_UART_SetAutoBaudReg>
1a000d3a:	f44f 7180 	mov.w	r1, #256	; 0x100
1a000d3e:	6878      	ldr	r0, [r7, #4]
1a000d40:	f7ff ff2e 	bl	1a000ba0 <Chip_UART_IntDisable>
1a000d44:	4b0e      	ldr	r3, [pc, #56]	; (1a000d80 <Chip_UART_ABIntHandler+0x68>)
1a000d46:	781b      	ldrb	r3, [r3, #0]
1a000d48:	b2db      	uxtb	r3, r3
1a000d4a:	2b00      	cmp	r3, #0
1a000d4c:	d102      	bne.n	1a000d54 <Chip_UART_ABIntHandler+0x3c>
1a000d4e:	4b0c      	ldr	r3, [pc, #48]	; (1a000d80 <Chip_UART_ABIntHandler+0x68>)
1a000d50:	2201      	movs	r2, #1
1a000d52:	701a      	strb	r2, [r3, #0]
1a000d54:	6878      	ldr	r0, [r7, #4]
1a000d56:	f7ff ff35 	bl	1a000bc4 <Chip_UART_ReadIntIDReg>
1a000d5a:	4603      	mov	r3, r0
1a000d5c:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a000d60:	2b00      	cmp	r3, #0
1a000d62:	d009      	beq.n	1a000d78 <Chip_UART_ABIntHandler+0x60>
1a000d64:	f44f 7100 	mov.w	r1, #512	; 0x200
1a000d68:	6878      	ldr	r0, [r7, #4]
1a000d6a:	f7ff ff93 	bl	1a000c94 <Chip_UART_SetAutoBaudReg>
1a000d6e:	f44f 7100 	mov.w	r1, #512	; 0x200
1a000d72:	6878      	ldr	r0, [r7, #4]
1a000d74:	f7ff ff14 	bl	1a000ba0 <Chip_UART_IntDisable>
1a000d78:	bf00      	nop
1a000d7a:	3708      	adds	r7, #8
1a000d7c:	46bd      	mov	sp, r7
1a000d7e:	bd80      	pop	{r7, pc}
1a000d80:	10000428 	.word	0x10000428

1a000d84 <Chip_UART_Init>:
1a000d84:	b580      	push	{r7, lr}
1a000d86:	b084      	sub	sp, #16
1a000d88:	af00      	add	r7, sp, #0
1a000d8a:	6078      	str	r0, [r7, #4]
1a000d8c:	68fb      	ldr	r3, [r7, #12]
1a000d8e:	6878      	ldr	r0, [r7, #4]
1a000d90:	f7ff ff92 	bl	1a000cb8 <Chip_UART_GetIndex>
1a000d94:	4602      	mov	r2, r0
1a000d96:	4b1b      	ldr	r3, [pc, #108]	; (1a000e04 <Chip_UART_Init+0x80>)
1a000d98:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a000d9c:	2301      	movs	r3, #1
1a000d9e:	2201      	movs	r2, #1
1a000da0:	2101      	movs	r1, #1
1a000da2:	f000 fe3b 	bl	1a001a1c <Chip_Clock_EnableOpts>
1a000da6:	2107      	movs	r1, #7
1a000da8:	6878      	ldr	r0, [r7, #4]
1a000daa:	f7ff ff17 	bl	1a000bdc <Chip_UART_SetupFIFOS>
1a000dae:	6878      	ldr	r0, [r7, #4]
1a000db0:	f7ff fecd 	bl	1a000b4e <Chip_UART_TXDisable>
1a000db4:	687b      	ldr	r3, [r7, #4]
1a000db6:	2200      	movs	r2, #0
1a000db8:	605a      	str	r2, [r3, #4]
1a000dba:	687b      	ldr	r3, [r7, #4]
1a000dbc:	2200      	movs	r2, #0
1a000dbe:	60da      	str	r2, [r3, #12]
1a000dc0:	687b      	ldr	r3, [r7, #4]
1a000dc2:	2200      	movs	r2, #0
1a000dc4:	621a      	str	r2, [r3, #32]
1a000dc6:	687b      	ldr	r3, [r7, #4]
1a000dc8:	2200      	movs	r2, #0
1a000dca:	64da      	str	r2, [r3, #76]	; 0x4c
1a000dcc:	687b      	ldr	r3, [r7, #4]
1a000dce:	2200      	movs	r2, #0
1a000dd0:	655a      	str	r2, [r3, #84]	; 0x54
1a000dd2:	687b      	ldr	r3, [r7, #4]
1a000dd4:	2200      	movs	r2, #0
1a000dd6:	651a      	str	r2, [r3, #80]	; 0x50
1a000dd8:	687b      	ldr	r3, [r7, #4]
1a000dda:	4a0b      	ldr	r2, [pc, #44]	; (1a000e08 <Chip_UART_Init+0x84>)
1a000ddc:	4293      	cmp	r3, r2
1a000dde:	d105      	bne.n	1a000dec <Chip_UART_Init+0x68>
1a000de0:	687b      	ldr	r3, [r7, #4]
1a000de2:	2200      	movs	r2, #0
1a000de4:	611a      	str	r2, [r3, #16]
1a000de6:	687b      	ldr	r3, [r7, #4]
1a000de8:	699b      	ldr	r3, [r3, #24]
1a000dea:	60fb      	str	r3, [r7, #12]
1a000dec:	2103      	movs	r1, #3
1a000dee:	6878      	ldr	r0, [r7, #4]
1a000df0:	f7ff ff02 	bl	1a000bf8 <Chip_UART_ConfigData>
1a000df4:	687b      	ldr	r3, [r7, #4]
1a000df6:	2210      	movs	r2, #16
1a000df8:	629a      	str	r2, [r3, #40]	; 0x28
1a000dfa:	bf00      	nop
1a000dfc:	3710      	adds	r7, #16
1a000dfe:	46bd      	mov	sp, r7
1a000e00:	bd80      	pop	{r7, pc}
1a000e02:	bf00      	nop
1a000e04:	1a001da0 	.word	0x1a001da0
1a000e08:	40082000 	.word	0x40082000

1a000e0c <Chip_UART_SetBaud>:
1a000e0c:	b580      	push	{r7, lr}
1a000e0e:	b086      	sub	sp, #24
1a000e10:	af00      	add	r7, sp, #0
1a000e12:	6078      	str	r0, [r7, #4]
1a000e14:	6039      	str	r1, [r7, #0]
1a000e16:	6878      	ldr	r0, [r7, #4]
1a000e18:	f7ff ff4e 	bl	1a000cb8 <Chip_UART_GetIndex>
1a000e1c:	4602      	mov	r2, r0
1a000e1e:	4b16      	ldr	r3, [pc, #88]	; (1a000e78 <Chip_UART_SetBaud+0x6c>)
1a000e20:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a000e24:	4618      	mov	r0, r3
1a000e26:	f000 fe67 	bl	1a001af8 <Chip_Clock_GetRate>
1a000e2a:	6178      	str	r0, [r7, #20]
1a000e2c:	683b      	ldr	r3, [r7, #0]
1a000e2e:	011b      	lsls	r3, r3, #4
1a000e30:	697a      	ldr	r2, [r7, #20]
1a000e32:	fbb2 f3f3 	udiv	r3, r2, r3
1a000e36:	613b      	str	r3, [r7, #16]
1a000e38:	693b      	ldr	r3, [r7, #16]
1a000e3a:	0a1b      	lsrs	r3, r3, #8
1a000e3c:	60fb      	str	r3, [r7, #12]
1a000e3e:	68fb      	ldr	r3, [r7, #12]
1a000e40:	021b      	lsls	r3, r3, #8
1a000e42:	693a      	ldr	r2, [r7, #16]
1a000e44:	1ad3      	subs	r3, r2, r3
1a000e46:	60bb      	str	r3, [r7, #8]
1a000e48:	6878      	ldr	r0, [r7, #4]
1a000e4a:	f7ff fee3 	bl	1a000c14 <Chip_UART_EnableDivisorAccess>
1a000e4e:	68bb      	ldr	r3, [r7, #8]
1a000e50:	b2db      	uxtb	r3, r3
1a000e52:	68fa      	ldr	r2, [r7, #12]
1a000e54:	b2d2      	uxtb	r2, r2
1a000e56:	4619      	mov	r1, r3
1a000e58:	6878      	ldr	r0, [r7, #4]
1a000e5a:	f7ff fefb 	bl	1a000c54 <Chip_UART_SetDivisorLatches>
1a000e5e:	6878      	ldr	r0, [r7, #4]
1a000e60:	f7ff fee8 	bl	1a000c34 <Chip_UART_DisableDivisorAccess>
1a000e64:	697a      	ldr	r2, [r7, #20]
1a000e66:	693b      	ldr	r3, [r7, #16]
1a000e68:	fbb2 f3f3 	udiv	r3, r2, r3
1a000e6c:	091b      	lsrs	r3, r3, #4
1a000e6e:	4618      	mov	r0, r3
1a000e70:	3718      	adds	r7, #24
1a000e72:	46bd      	mov	sp, r7
1a000e74:	bd80      	pop	{r7, pc}
1a000e76:	bf00      	nop
1a000e78:	1a001da8 	.word	0x1a001da8

1a000e7c <Chip_UART_RXIntHandlerRB>:
1a000e7c:	b580      	push	{r7, lr}
1a000e7e:	b084      	sub	sp, #16
1a000e80:	af00      	add	r7, sp, #0
1a000e82:	6078      	str	r0, [r7, #4]
1a000e84:	6039      	str	r1, [r7, #0]
1a000e86:	e00a      	b.n	1a000e9e <Chip_UART_RXIntHandlerRB+0x22>
1a000e88:	6878      	ldr	r0, [r7, #4]
1a000e8a:	f7ff fe7c 	bl	1a000b86 <Chip_UART_ReadByte>
1a000e8e:	4603      	mov	r3, r0
1a000e90:	73fb      	strb	r3, [r7, #15]
1a000e92:	f107 030f 	add.w	r3, r7, #15
1a000e96:	4619      	mov	r1, r3
1a000e98:	6838      	ldr	r0, [r7, #0]
1a000e9a:	f000 f932 	bl	1a001102 <RingBuffer_Insert>
1a000e9e:	6878      	ldr	r0, [r7, #4]
1a000ea0:	f7ff feec 	bl	1a000c7c <Chip_UART_ReadLineStatus>
1a000ea4:	4603      	mov	r3, r0
1a000ea6:	f003 0301 	and.w	r3, r3, #1
1a000eaa:	2b00      	cmp	r3, #0
1a000eac:	d1ec      	bne.n	1a000e88 <Chip_UART_RXIntHandlerRB+0xc>
1a000eae:	bf00      	nop
1a000eb0:	3710      	adds	r7, #16
1a000eb2:	46bd      	mov	sp, r7
1a000eb4:	bd80      	pop	{r7, pc}

1a000eb6 <Chip_UART_TXIntHandlerRB>:
1a000eb6:	b580      	push	{r7, lr}
1a000eb8:	b084      	sub	sp, #16
1a000eba:	af00      	add	r7, sp, #0
1a000ebc:	6078      	str	r0, [r7, #4]
1a000ebe:	6039      	str	r1, [r7, #0]
1a000ec0:	e004      	b.n	1a000ecc <Chip_UART_TXIntHandlerRB+0x16>
1a000ec2:	7bfb      	ldrb	r3, [r7, #15]
1a000ec4:	4619      	mov	r1, r3
1a000ec6:	6878      	ldr	r0, [r7, #4]
1a000ec8:	f7ff fe4e 	bl	1a000b68 <Chip_UART_SendByte>
1a000ecc:	6878      	ldr	r0, [r7, #4]
1a000ece:	f7ff fed5 	bl	1a000c7c <Chip_UART_ReadLineStatus>
1a000ed2:	4603      	mov	r3, r0
1a000ed4:	f003 0320 	and.w	r3, r3, #32
1a000ed8:	2b00      	cmp	r3, #0
1a000eda:	d008      	beq.n	1a000eee <Chip_UART_TXIntHandlerRB+0x38>
1a000edc:	f107 030f 	add.w	r3, r7, #15
1a000ee0:	4619      	mov	r1, r3
1a000ee2:	6838      	ldr	r0, [r7, #0]
1a000ee4:	f000 f93b 	bl	1a00115e <RingBuffer_Pop>
1a000ee8:	4603      	mov	r3, r0
1a000eea:	2b00      	cmp	r3, #0
1a000eec:	d1e9      	bne.n	1a000ec2 <Chip_UART_TXIntHandlerRB+0xc>
1a000eee:	6838      	ldr	r0, [r7, #0]
1a000ef0:	f7ff fe18 	bl	1a000b24 <RingBuffer_IsEmpty>
1a000ef4:	4603      	mov	r3, r0
1a000ef6:	2b00      	cmp	r3, #0
1a000ef8:	d003      	beq.n	1a000f02 <Chip_UART_TXIntHandlerRB+0x4c>
1a000efa:	2102      	movs	r1, #2
1a000efc:	6878      	ldr	r0, [r7, #4]
1a000efe:	f7ff fe4f 	bl	1a000ba0 <Chip_UART_IntDisable>
1a000f02:	bf00      	nop
1a000f04:	3710      	adds	r7, #16
1a000f06:	46bd      	mov	sp, r7
1a000f08:	bd80      	pop	{r7, pc}

1a000f0a <Chip_UART_IRQRBHandler>:
1a000f0a:	b580      	push	{r7, lr}
1a000f0c:	b084      	sub	sp, #16
1a000f0e:	af00      	add	r7, sp, #0
1a000f10:	60f8      	str	r0, [r7, #12]
1a000f12:	60b9      	str	r1, [r7, #8]
1a000f14:	607a      	str	r2, [r7, #4]
1a000f16:	68fb      	ldr	r3, [r7, #12]
1a000f18:	685b      	ldr	r3, [r3, #4]
1a000f1a:	f003 0302 	and.w	r3, r3, #2
1a000f1e:	2b00      	cmp	r3, #0
1a000f20:	d00d      	beq.n	1a000f3e <Chip_UART_IRQRBHandler+0x34>
1a000f22:	6879      	ldr	r1, [r7, #4]
1a000f24:	68f8      	ldr	r0, [r7, #12]
1a000f26:	f7ff ffc6 	bl	1a000eb6 <Chip_UART_TXIntHandlerRB>
1a000f2a:	6878      	ldr	r0, [r7, #4]
1a000f2c:	f7ff fdfa 	bl	1a000b24 <RingBuffer_IsEmpty>
1a000f30:	4603      	mov	r3, r0
1a000f32:	2b00      	cmp	r3, #0
1a000f34:	d003      	beq.n	1a000f3e <Chip_UART_IRQRBHandler+0x34>
1a000f36:	2102      	movs	r1, #2
1a000f38:	68f8      	ldr	r0, [r7, #12]
1a000f3a:	f7ff fe31 	bl	1a000ba0 <Chip_UART_IntDisable>
1a000f3e:	68b9      	ldr	r1, [r7, #8]
1a000f40:	68f8      	ldr	r0, [r7, #12]
1a000f42:	f7ff ff9b 	bl	1a000e7c <Chip_UART_RXIntHandlerRB>
1a000f46:	68f8      	ldr	r0, [r7, #12]
1a000f48:	f7ff fee6 	bl	1a000d18 <Chip_UART_ABIntHandler>
1a000f4c:	bf00      	nop
1a000f4e:	3710      	adds	r7, #16
1a000f50:	46bd      	mov	sp, r7
1a000f52:	bd80      	pop	{r7, pc}

1a000f54 <Chip_TIMER_Enable>:
1a000f54:	b480      	push	{r7}
1a000f56:	b083      	sub	sp, #12
1a000f58:	af00      	add	r7, sp, #0
1a000f5a:	6078      	str	r0, [r7, #4]
1a000f5c:	687b      	ldr	r3, [r7, #4]
1a000f5e:	685b      	ldr	r3, [r3, #4]
1a000f60:	f043 0201 	orr.w	r2, r3, #1
1a000f64:	687b      	ldr	r3, [r7, #4]
1a000f66:	605a      	str	r2, [r3, #4]
1a000f68:	bf00      	nop
1a000f6a:	370c      	adds	r7, #12
1a000f6c:	46bd      	mov	sp, r7
1a000f6e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f72:	4770      	bx	lr

1a000f74 <Chip_TIMER_ReadCount>:
1a000f74:	b480      	push	{r7}
1a000f76:	b083      	sub	sp, #12
1a000f78:	af00      	add	r7, sp, #0
1a000f7a:	6078      	str	r0, [r7, #4]
1a000f7c:	687b      	ldr	r3, [r7, #4]
1a000f7e:	689b      	ldr	r3, [r3, #8]
1a000f80:	4618      	mov	r0, r3
1a000f82:	370c      	adds	r7, #12
1a000f84:	46bd      	mov	sp, r7
1a000f86:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f8a:	4770      	bx	lr

1a000f8c <Chip_TIMER_PrescaleSet>:
1a000f8c:	b480      	push	{r7}
1a000f8e:	b083      	sub	sp, #12
1a000f90:	af00      	add	r7, sp, #0
1a000f92:	6078      	str	r0, [r7, #4]
1a000f94:	6039      	str	r1, [r7, #0]
1a000f96:	687b      	ldr	r3, [r7, #4]
1a000f98:	683a      	ldr	r2, [r7, #0]
1a000f9a:	60da      	str	r2, [r3, #12]
1a000f9c:	bf00      	nop
1a000f9e:	370c      	adds	r7, #12
1a000fa0:	46bd      	mov	sp, r7
1a000fa2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fa6:	4770      	bx	lr

1a000fa8 <StopWatch_Init>:
1a000fa8:	b580      	push	{r7, lr}
1a000faa:	b082      	sub	sp, #8
1a000fac:	af00      	add	r7, sp, #0
1a000fae:	2308      	movs	r3, #8
1a000fb0:	607b      	str	r3, [r7, #4]
1a000fb2:	4814      	ldr	r0, [pc, #80]	; (1a001004 <StopWatch_Init+0x5c>)
1a000fb4:	f000 fe22 	bl	1a001bfc <Chip_TIMER_Init>
1a000fb8:	687b      	ldr	r3, [r7, #4]
1a000fba:	3b01      	subs	r3, #1
1a000fbc:	4619      	mov	r1, r3
1a000fbe:	4811      	ldr	r0, [pc, #68]	; (1a001004 <StopWatch_Init+0x5c>)
1a000fc0:	f7ff ffe4 	bl	1a000f8c <Chip_TIMER_PrescaleSet>
1a000fc4:	480f      	ldr	r0, [pc, #60]	; (1a001004 <StopWatch_Init+0x5c>)
1a000fc6:	f7ff ffc5 	bl	1a000f54 <Chip_TIMER_Enable>
1a000fca:	2084      	movs	r0, #132	; 0x84
1a000fcc:	f000 fd94 	bl	1a001af8 <Chip_Clock_GetRate>
1a000fd0:	4602      	mov	r2, r0
1a000fd2:	687b      	ldr	r3, [r7, #4]
1a000fd4:	fbb2 f3f3 	udiv	r3, r2, r3
1a000fd8:	4a0b      	ldr	r2, [pc, #44]	; (1a001008 <StopWatch_Init+0x60>)
1a000fda:	6013      	str	r3, [r2, #0]
1a000fdc:	4b0a      	ldr	r3, [pc, #40]	; (1a001008 <StopWatch_Init+0x60>)
1a000fde:	681b      	ldr	r3, [r3, #0]
1a000fe0:	4a0a      	ldr	r2, [pc, #40]	; (1a00100c <StopWatch_Init+0x64>)
1a000fe2:	fba2 2303 	umull	r2, r3, r2, r3
1a000fe6:	099b      	lsrs	r3, r3, #6
1a000fe8:	4a09      	ldr	r2, [pc, #36]	; (1a001010 <StopWatch_Init+0x68>)
1a000fea:	6013      	str	r3, [r2, #0]
1a000fec:	4b06      	ldr	r3, [pc, #24]	; (1a001008 <StopWatch_Init+0x60>)
1a000fee:	681b      	ldr	r3, [r3, #0]
1a000ff0:	4a08      	ldr	r2, [pc, #32]	; (1a001014 <StopWatch_Init+0x6c>)
1a000ff2:	fba2 2303 	umull	r2, r3, r2, r3
1a000ff6:	0c9b      	lsrs	r3, r3, #18
1a000ff8:	4a07      	ldr	r2, [pc, #28]	; (1a001018 <StopWatch_Init+0x70>)
1a000ffa:	6013      	str	r3, [r2, #0]
1a000ffc:	bf00      	nop
1a000ffe:	3708      	adds	r7, #8
1a001000:	46bd      	mov	sp, r7
1a001002:	bd80      	pop	{r7, pc}
1a001004:	40084000 	.word	0x40084000
1a001008:	1000042c 	.word	0x1000042c
1a00100c:	10624dd3 	.word	0x10624dd3
1a001010:	10000430 	.word	0x10000430
1a001014:	431bde83 	.word	0x431bde83
1a001018:	10000434 	.word	0x10000434

1a00101c <StopWatch_Start>:
1a00101c:	b580      	push	{r7, lr}
1a00101e:	af00      	add	r7, sp, #0
1a001020:	4802      	ldr	r0, [pc, #8]	; (1a00102c <StopWatch_Start+0x10>)
1a001022:	f7ff ffa7 	bl	1a000f74 <Chip_TIMER_ReadCount>
1a001026:	4603      	mov	r3, r0
1a001028:	4618      	mov	r0, r3
1a00102a:	bd80      	pop	{r7, pc}
1a00102c:	40084000 	.word	0x40084000

1a001030 <StopWatch_MsToTicks>:
1a001030:	b480      	push	{r7}
1a001032:	b083      	sub	sp, #12
1a001034:	af00      	add	r7, sp, #0
1a001036:	6078      	str	r0, [r7, #4]
1a001038:	4b05      	ldr	r3, [pc, #20]	; (1a001050 <StopWatch_MsToTicks+0x20>)
1a00103a:	681b      	ldr	r3, [r3, #0]
1a00103c:	687a      	ldr	r2, [r7, #4]
1a00103e:	fb02 f303 	mul.w	r3, r2, r3
1a001042:	4618      	mov	r0, r3
1a001044:	370c      	adds	r7, #12
1a001046:	46bd      	mov	sp, r7
1a001048:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00104c:	4770      	bx	lr
1a00104e:	bf00      	nop
1a001050:	10000430 	.word	0x10000430

1a001054 <RingBuffer_GetCount>:
1a001054:	b480      	push	{r7}
1a001056:	b083      	sub	sp, #12
1a001058:	af00      	add	r7, sp, #0
1a00105a:	6078      	str	r0, [r7, #4]
1a00105c:	687b      	ldr	r3, [r7, #4]
1a00105e:	330c      	adds	r3, #12
1a001060:	681a      	ldr	r2, [r3, #0]
1a001062:	687b      	ldr	r3, [r7, #4]
1a001064:	3310      	adds	r3, #16
1a001066:	681b      	ldr	r3, [r3, #0]
1a001068:	1ad3      	subs	r3, r2, r3
1a00106a:	4618      	mov	r0, r3
1a00106c:	370c      	adds	r7, #12
1a00106e:	46bd      	mov	sp, r7
1a001070:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001074:	4770      	bx	lr

1a001076 <RingBuffer_IsFull>:
1a001076:	b580      	push	{r7, lr}
1a001078:	b082      	sub	sp, #8
1a00107a:	af00      	add	r7, sp, #0
1a00107c:	6078      	str	r0, [r7, #4]
1a00107e:	6878      	ldr	r0, [r7, #4]
1a001080:	f7ff ffe8 	bl	1a001054 <RingBuffer_GetCount>
1a001084:	4602      	mov	r2, r0
1a001086:	687b      	ldr	r3, [r7, #4]
1a001088:	685b      	ldr	r3, [r3, #4]
1a00108a:	429a      	cmp	r2, r3
1a00108c:	bfac      	ite	ge
1a00108e:	2301      	movge	r3, #1
1a001090:	2300      	movlt	r3, #0
1a001092:	b2db      	uxtb	r3, r3
1a001094:	4618      	mov	r0, r3
1a001096:	3708      	adds	r7, #8
1a001098:	46bd      	mov	sp, r7
1a00109a:	bd80      	pop	{r7, pc}

1a00109c <RingBuffer_IsEmpty>:
1a00109c:	b480      	push	{r7}
1a00109e:	b083      	sub	sp, #12
1a0010a0:	af00      	add	r7, sp, #0
1a0010a2:	6078      	str	r0, [r7, #4]
1a0010a4:	687b      	ldr	r3, [r7, #4]
1a0010a6:	330c      	adds	r3, #12
1a0010a8:	681a      	ldr	r2, [r3, #0]
1a0010aa:	687b      	ldr	r3, [r7, #4]
1a0010ac:	3310      	adds	r3, #16
1a0010ae:	681b      	ldr	r3, [r3, #0]
1a0010b0:	429a      	cmp	r2, r3
1a0010b2:	bf0c      	ite	eq
1a0010b4:	2301      	moveq	r3, #1
1a0010b6:	2300      	movne	r3, #0
1a0010b8:	b2db      	uxtb	r3, r3
1a0010ba:	4618      	mov	r0, r3
1a0010bc:	370c      	adds	r7, #12
1a0010be:	46bd      	mov	sp, r7
1a0010c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010c4:	4770      	bx	lr

1a0010c6 <RingBuffer_Init>:
1a0010c6:	b480      	push	{r7}
1a0010c8:	b085      	sub	sp, #20
1a0010ca:	af00      	add	r7, sp, #0
1a0010cc:	60f8      	str	r0, [r7, #12]
1a0010ce:	60b9      	str	r1, [r7, #8]
1a0010d0:	607a      	str	r2, [r7, #4]
1a0010d2:	603b      	str	r3, [r7, #0]
1a0010d4:	68fb      	ldr	r3, [r7, #12]
1a0010d6:	68ba      	ldr	r2, [r7, #8]
1a0010d8:	601a      	str	r2, [r3, #0]
1a0010da:	68fb      	ldr	r3, [r7, #12]
1a0010dc:	683a      	ldr	r2, [r7, #0]
1a0010de:	605a      	str	r2, [r3, #4]
1a0010e0:	68fb      	ldr	r3, [r7, #12]
1a0010e2:	687a      	ldr	r2, [r7, #4]
1a0010e4:	609a      	str	r2, [r3, #8]
1a0010e6:	68fb      	ldr	r3, [r7, #12]
1a0010e8:	2200      	movs	r2, #0
1a0010ea:	611a      	str	r2, [r3, #16]
1a0010ec:	68fb      	ldr	r3, [r7, #12]
1a0010ee:	691a      	ldr	r2, [r3, #16]
1a0010f0:	68fb      	ldr	r3, [r7, #12]
1a0010f2:	60da      	str	r2, [r3, #12]
1a0010f4:	2301      	movs	r3, #1
1a0010f6:	4618      	mov	r0, r3
1a0010f8:	3714      	adds	r7, #20
1a0010fa:	46bd      	mov	sp, r7
1a0010fc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001100:	4770      	bx	lr

1a001102 <RingBuffer_Insert>:
1a001102:	b580      	push	{r7, lr}
1a001104:	b084      	sub	sp, #16
1a001106:	af00      	add	r7, sp, #0
1a001108:	6078      	str	r0, [r7, #4]
1a00110a:	6039      	str	r1, [r7, #0]
1a00110c:	687b      	ldr	r3, [r7, #4]
1a00110e:	681b      	ldr	r3, [r3, #0]
1a001110:	60fb      	str	r3, [r7, #12]
1a001112:	6878      	ldr	r0, [r7, #4]
1a001114:	f7ff ffaf 	bl	1a001076 <RingBuffer_IsFull>
1a001118:	4603      	mov	r3, r0
1a00111a:	2b00      	cmp	r3, #0
1a00111c:	d001      	beq.n	1a001122 <RingBuffer_Insert+0x20>
1a00111e:	2300      	movs	r3, #0
1a001120:	e019      	b.n	1a001156 <RingBuffer_Insert+0x54>
1a001122:	687b      	ldr	r3, [r7, #4]
1a001124:	68db      	ldr	r3, [r3, #12]
1a001126:	687a      	ldr	r2, [r7, #4]
1a001128:	6852      	ldr	r2, [r2, #4]
1a00112a:	3a01      	subs	r2, #1
1a00112c:	4013      	ands	r3, r2
1a00112e:	687a      	ldr	r2, [r7, #4]
1a001130:	6892      	ldr	r2, [r2, #8]
1a001132:	fb02 f303 	mul.w	r3, r2, r3
1a001136:	68fa      	ldr	r2, [r7, #12]
1a001138:	4413      	add	r3, r2
1a00113a:	60fb      	str	r3, [r7, #12]
1a00113c:	687b      	ldr	r3, [r7, #4]
1a00113e:	689b      	ldr	r3, [r3, #8]
1a001140:	461a      	mov	r2, r3
1a001142:	6839      	ldr	r1, [r7, #0]
1a001144:	68f8      	ldr	r0, [r7, #12]
1a001146:	f000 fd69 	bl	1a001c1c <memcpy>
1a00114a:	687b      	ldr	r3, [r7, #4]
1a00114c:	68db      	ldr	r3, [r3, #12]
1a00114e:	1c5a      	adds	r2, r3, #1
1a001150:	687b      	ldr	r3, [r7, #4]
1a001152:	60da      	str	r2, [r3, #12]
1a001154:	2301      	movs	r3, #1
1a001156:	4618      	mov	r0, r3
1a001158:	3710      	adds	r7, #16
1a00115a:	46bd      	mov	sp, r7
1a00115c:	bd80      	pop	{r7, pc}

1a00115e <RingBuffer_Pop>:
1a00115e:	b580      	push	{r7, lr}
1a001160:	b084      	sub	sp, #16
1a001162:	af00      	add	r7, sp, #0
1a001164:	6078      	str	r0, [r7, #4]
1a001166:	6039      	str	r1, [r7, #0]
1a001168:	687b      	ldr	r3, [r7, #4]
1a00116a:	681b      	ldr	r3, [r3, #0]
1a00116c:	60fb      	str	r3, [r7, #12]
1a00116e:	6878      	ldr	r0, [r7, #4]
1a001170:	f7ff ff94 	bl	1a00109c <RingBuffer_IsEmpty>
1a001174:	4603      	mov	r3, r0
1a001176:	2b00      	cmp	r3, #0
1a001178:	d001      	beq.n	1a00117e <RingBuffer_Pop+0x20>
1a00117a:	2300      	movs	r3, #0
1a00117c:	e019      	b.n	1a0011b2 <RingBuffer_Pop+0x54>
1a00117e:	687b      	ldr	r3, [r7, #4]
1a001180:	691b      	ldr	r3, [r3, #16]
1a001182:	687a      	ldr	r2, [r7, #4]
1a001184:	6852      	ldr	r2, [r2, #4]
1a001186:	3a01      	subs	r2, #1
1a001188:	4013      	ands	r3, r2
1a00118a:	687a      	ldr	r2, [r7, #4]
1a00118c:	6892      	ldr	r2, [r2, #8]
1a00118e:	fb02 f303 	mul.w	r3, r2, r3
1a001192:	68fa      	ldr	r2, [r7, #12]
1a001194:	4413      	add	r3, r2
1a001196:	60fb      	str	r3, [r7, #12]
1a001198:	687b      	ldr	r3, [r7, #4]
1a00119a:	689b      	ldr	r3, [r3, #8]
1a00119c:	461a      	mov	r2, r3
1a00119e:	68f9      	ldr	r1, [r7, #12]
1a0011a0:	6838      	ldr	r0, [r7, #0]
1a0011a2:	f000 fd3b 	bl	1a001c1c <memcpy>
1a0011a6:	687b      	ldr	r3, [r7, #4]
1a0011a8:	691b      	ldr	r3, [r3, #16]
1a0011aa:	1c5a      	adds	r2, r3, #1
1a0011ac:	687b      	ldr	r3, [r7, #4]
1a0011ae:	611a      	str	r2, [r3, #16]
1a0011b0:	2301      	movs	r3, #1
1a0011b2:	4618      	mov	r0, r3
1a0011b4:	3710      	adds	r7, #16
1a0011b6:	46bd      	mov	sp, r7
1a0011b8:	bd80      	pop	{r7, pc}

1a0011ba <ABS>:
1a0011ba:	b480      	push	{r7}
1a0011bc:	b083      	sub	sp, #12
1a0011be:	af00      	add	r7, sp, #0
1a0011c0:	6078      	str	r0, [r7, #4]
1a0011c2:	687b      	ldr	r3, [r7, #4]
1a0011c4:	2b00      	cmp	r3, #0
1a0011c6:	da02      	bge.n	1a0011ce <ABS+0x14>
1a0011c8:	687b      	ldr	r3, [r7, #4]
1a0011ca:	425b      	negs	r3, r3
1a0011cc:	e000      	b.n	1a0011d0 <ABS+0x16>
1a0011ce:	687b      	ldr	r3, [r7, #4]
1a0011d0:	4618      	mov	r0, r3
1a0011d2:	370c      	adds	r7, #12
1a0011d4:	46bd      	mov	sp, r7
1a0011d6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011da:	4770      	bx	lr

1a0011dc <pll_calc_divs>:
1a0011dc:	b580      	push	{r7, lr}
1a0011de:	b088      	sub	sp, #32
1a0011e0:	af00      	add	r7, sp, #0
1a0011e2:	6078      	str	r0, [r7, #4]
1a0011e4:	6039      	str	r1, [r7, #0]
1a0011e6:	687b      	ldr	r3, [r7, #4]
1a0011e8:	61fb      	str	r3, [r7, #28]
1a0011ea:	683b      	ldr	r3, [r7, #0]
1a0011ec:	681b      	ldr	r3, [r3, #0]
1a0011ee:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0011f2:	2b00      	cmp	r3, #0
1a0011f4:	d005      	beq.n	1a001202 <pll_calc_divs+0x26>
1a0011f6:	683b      	ldr	r3, [r7, #0]
1a0011f8:	681b      	ldr	r3, [r3, #0]
1a0011fa:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a0011fe:	683b      	ldr	r3, [r7, #0]
1a001200:	601a      	str	r2, [r3, #0]
1a001202:	2301      	movs	r3, #1
1a001204:	61bb      	str	r3, [r7, #24]
1a001206:	e06f      	b.n	1a0012e8 <pll_calc_divs+0x10c>
1a001208:	2300      	movs	r3, #0
1a00120a:	613b      	str	r3, [r7, #16]
1a00120c:	e066      	b.n	1a0012dc <pll_calc_divs+0x100>
1a00120e:	2301      	movs	r3, #1
1a001210:	617b      	str	r3, [r7, #20]
1a001212:	e05a      	b.n	1a0012ca <pll_calc_divs+0xee>
1a001214:	683b      	ldr	r3, [r7, #0]
1a001216:	681b      	ldr	r3, [r3, #0]
1a001218:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a00121c:	2b00      	cmp	r3, #0
1a00121e:	d00e      	beq.n	1a00123e <pll_calc_divs+0x62>
1a001220:	693b      	ldr	r3, [r7, #16]
1a001222:	3301      	adds	r3, #1
1a001224:	697a      	ldr	r2, [r7, #20]
1a001226:	fa02 f303 	lsl.w	r3, r2, r3
1a00122a:	461a      	mov	r2, r3
1a00122c:	683b      	ldr	r3, [r7, #0]
1a00122e:	695b      	ldr	r3, [r3, #20]
1a001230:	fb03 f202 	mul.w	r2, r3, r2
1a001234:	69bb      	ldr	r3, [r7, #24]
1a001236:	fbb2 f3f3 	udiv	r3, r2, r3
1a00123a:	60fb      	str	r3, [r7, #12]
1a00123c:	e008      	b.n	1a001250 <pll_calc_divs+0x74>
1a00123e:	683b      	ldr	r3, [r7, #0]
1a001240:	695b      	ldr	r3, [r3, #20]
1a001242:	697a      	ldr	r2, [r7, #20]
1a001244:	fb02 f203 	mul.w	r2, r2, r3
1a001248:	69bb      	ldr	r3, [r7, #24]
1a00124a:	fbb2 f3f3 	udiv	r3, r2, r3
1a00124e:	60fb      	str	r3, [r7, #12]
1a001250:	68fb      	ldr	r3, [r7, #12]
1a001252:	4a29      	ldr	r2, [pc, #164]	; (1a0012f8 <pll_calc_divs+0x11c>)
1a001254:	4293      	cmp	r3, r2
1a001256:	d934      	bls.n	1a0012c2 <pll_calc_divs+0xe6>
1a001258:	68fb      	ldr	r3, [r7, #12]
1a00125a:	4a28      	ldr	r2, [pc, #160]	; (1a0012fc <pll_calc_divs+0x120>)
1a00125c:	4293      	cmp	r3, r2
1a00125e:	d839      	bhi.n	1a0012d4 <pll_calc_divs+0xf8>
1a001260:	683b      	ldr	r3, [r7, #0]
1a001262:	681b      	ldr	r3, [r3, #0]
1a001264:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001268:	2b00      	cmp	r3, #0
1a00126a:	d002      	beq.n	1a001272 <pll_calc_divs+0x96>
1a00126c:	68fb      	ldr	r3, [r7, #12]
1a00126e:	60bb      	str	r3, [r7, #8]
1a001270:	e005      	b.n	1a00127e <pll_calc_divs+0xa2>
1a001272:	693b      	ldr	r3, [r7, #16]
1a001274:	3301      	adds	r3, #1
1a001276:	68fa      	ldr	r2, [r7, #12]
1a001278:	fa22 f303 	lsr.w	r3, r2, r3
1a00127c:	60bb      	str	r3, [r7, #8]
1a00127e:	687a      	ldr	r2, [r7, #4]
1a001280:	68bb      	ldr	r3, [r7, #8]
1a001282:	1ad3      	subs	r3, r2, r3
1a001284:	4618      	mov	r0, r3
1a001286:	f7ff ff98 	bl	1a0011ba <ABS>
1a00128a:	4602      	mov	r2, r0
1a00128c:	69fb      	ldr	r3, [r7, #28]
1a00128e:	4293      	cmp	r3, r2
1a001290:	d918      	bls.n	1a0012c4 <pll_calc_divs+0xe8>
1a001292:	683b      	ldr	r3, [r7, #0]
1a001294:	69ba      	ldr	r2, [r7, #24]
1a001296:	609a      	str	r2, [r3, #8]
1a001298:	693b      	ldr	r3, [r7, #16]
1a00129a:	1c5a      	adds	r2, r3, #1
1a00129c:	683b      	ldr	r3, [r7, #0]
1a00129e:	60da      	str	r2, [r3, #12]
1a0012a0:	683b      	ldr	r3, [r7, #0]
1a0012a2:	697a      	ldr	r2, [r7, #20]
1a0012a4:	611a      	str	r2, [r3, #16]
1a0012a6:	683b      	ldr	r3, [r7, #0]
1a0012a8:	68ba      	ldr	r2, [r7, #8]
1a0012aa:	619a      	str	r2, [r3, #24]
1a0012ac:	683b      	ldr	r3, [r7, #0]
1a0012ae:	68fa      	ldr	r2, [r7, #12]
1a0012b0:	61da      	str	r2, [r3, #28]
1a0012b2:	687a      	ldr	r2, [r7, #4]
1a0012b4:	68bb      	ldr	r3, [r7, #8]
1a0012b6:	1ad3      	subs	r3, r2, r3
1a0012b8:	4618      	mov	r0, r3
1a0012ba:	f7ff ff7e 	bl	1a0011ba <ABS>
1a0012be:	61f8      	str	r0, [r7, #28]
1a0012c0:	e000      	b.n	1a0012c4 <pll_calc_divs+0xe8>
1a0012c2:	bf00      	nop
1a0012c4:	697b      	ldr	r3, [r7, #20]
1a0012c6:	3301      	adds	r3, #1
1a0012c8:	617b      	str	r3, [r7, #20]
1a0012ca:	697b      	ldr	r3, [r7, #20]
1a0012cc:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a0012d0:	dda0      	ble.n	1a001214 <pll_calc_divs+0x38>
1a0012d2:	e000      	b.n	1a0012d6 <pll_calc_divs+0xfa>
1a0012d4:	bf00      	nop
1a0012d6:	693b      	ldr	r3, [r7, #16]
1a0012d8:	3301      	adds	r3, #1
1a0012da:	613b      	str	r3, [r7, #16]
1a0012dc:	693b      	ldr	r3, [r7, #16]
1a0012de:	2b03      	cmp	r3, #3
1a0012e0:	dd95      	ble.n	1a00120e <pll_calc_divs+0x32>
1a0012e2:	69bb      	ldr	r3, [r7, #24]
1a0012e4:	3301      	adds	r3, #1
1a0012e6:	61bb      	str	r3, [r7, #24]
1a0012e8:	69bb      	ldr	r3, [r7, #24]
1a0012ea:	2b04      	cmp	r3, #4
1a0012ec:	dd8c      	ble.n	1a001208 <pll_calc_divs+0x2c>
1a0012ee:	bf00      	nop
1a0012f0:	3720      	adds	r7, #32
1a0012f2:	46bd      	mov	sp, r7
1a0012f4:	bd80      	pop	{r7, pc}
1a0012f6:	bf00      	nop
1a0012f8:	094c5eff 	.word	0x094c5eff
1a0012fc:	1312d000 	.word	0x1312d000

1a001300 <pll_get_frac>:
1a001300:	b5b0      	push	{r4, r5, r7, lr}
1a001302:	b09e      	sub	sp, #120	; 0x78
1a001304:	af00      	add	r7, sp, #0
1a001306:	6078      	str	r0, [r7, #4]
1a001308:	6039      	str	r1, [r7, #0]
1a00130a:	f107 030c 	add.w	r3, r7, #12
1a00130e:	2260      	movs	r2, #96	; 0x60
1a001310:	2100      	movs	r1, #0
1a001312:	4618      	mov	r0, r3
1a001314:	f7fe fff4 	bl	1a000300 <memset>
1a001318:	68fb      	ldr	r3, [r7, #12]
1a00131a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a00131e:	60fb      	str	r3, [r7, #12]
1a001320:	683b      	ldr	r3, [r7, #0]
1a001322:	695b      	ldr	r3, [r3, #20]
1a001324:	623b      	str	r3, [r7, #32]
1a001326:	683b      	ldr	r3, [r7, #0]
1a001328:	791b      	ldrb	r3, [r3, #4]
1a00132a:	743b      	strb	r3, [r7, #16]
1a00132c:	f107 030c 	add.w	r3, r7, #12
1a001330:	4619      	mov	r1, r3
1a001332:	6878      	ldr	r0, [r7, #4]
1a001334:	f7ff ff52 	bl	1a0011dc <pll_calc_divs>
1a001338:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00133a:	687a      	ldr	r2, [r7, #4]
1a00133c:	429a      	cmp	r2, r3
1a00133e:	d10a      	bne.n	1a001356 <pll_get_frac+0x56>
1a001340:	683b      	ldr	r3, [r7, #0]
1a001342:	461d      	mov	r5, r3
1a001344:	f107 040c 	add.w	r4, r7, #12
1a001348:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00134a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00134c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001350:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001354:	e08e      	b.n	1a001474 <pll_get_frac+0x174>
1a001356:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001358:	687a      	ldr	r2, [r7, #4]
1a00135a:	1ad3      	subs	r3, r2, r3
1a00135c:	4618      	mov	r0, r3
1a00135e:	f7ff ff2c 	bl	1a0011ba <ABS>
1a001362:	4603      	mov	r3, r0
1a001364:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001366:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001368:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a00136c:	64fb      	str	r3, [r7, #76]	; 0x4c
1a00136e:	683b      	ldr	r3, [r7, #0]
1a001370:	695b      	ldr	r3, [r3, #20]
1a001372:	663b      	str	r3, [r7, #96]	; 0x60
1a001374:	683b      	ldr	r3, [r7, #0]
1a001376:	791b      	ldrb	r3, [r3, #4]
1a001378:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a00137c:	f107 030c 	add.w	r3, r7, #12
1a001380:	3340      	adds	r3, #64	; 0x40
1a001382:	4619      	mov	r1, r3
1a001384:	6878      	ldr	r0, [r7, #4]
1a001386:	f7ff ff29 	bl	1a0011dc <pll_calc_divs>
1a00138a:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a00138c:	687a      	ldr	r2, [r7, #4]
1a00138e:	429a      	cmp	r2, r3
1a001390:	d10a      	bne.n	1a0013a8 <pll_get_frac+0xa8>
1a001392:	683b      	ldr	r3, [r7, #0]
1a001394:	461d      	mov	r5, r3
1a001396:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a00139a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00139c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00139e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0013a2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0013a6:	e065      	b.n	1a001474 <pll_get_frac+0x174>
1a0013a8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a0013aa:	687a      	ldr	r2, [r7, #4]
1a0013ac:	1ad3      	subs	r3, r2, r3
1a0013ae:	4618      	mov	r0, r3
1a0013b0:	f7ff ff03 	bl	1a0011ba <ABS>
1a0013b4:	4603      	mov	r3, r0
1a0013b6:	677b      	str	r3, [r7, #116]	; 0x74
1a0013b8:	687b      	ldr	r3, [r7, #4]
1a0013ba:	4a30      	ldr	r2, [pc, #192]	; (1a00147c <pll_get_frac+0x17c>)
1a0013bc:	4293      	cmp	r3, r2
1a0013be:	d81a      	bhi.n	1a0013f6 <pll_get_frac+0xf6>
1a0013c0:	2340      	movs	r3, #64	; 0x40
1a0013c2:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0013c4:	683b      	ldr	r3, [r7, #0]
1a0013c6:	695b      	ldr	r3, [r3, #20]
1a0013c8:	643b      	str	r3, [r7, #64]	; 0x40
1a0013ca:	f107 030c 	add.w	r3, r7, #12
1a0013ce:	3320      	adds	r3, #32
1a0013d0:	4619      	mov	r1, r3
1a0013d2:	6878      	ldr	r0, [r7, #4]
1a0013d4:	f7ff ff02 	bl	1a0011dc <pll_calc_divs>
1a0013d8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a0013da:	687a      	ldr	r2, [r7, #4]
1a0013dc:	429a      	cmp	r2, r3
1a0013de:	d10a      	bne.n	1a0013f6 <pll_get_frac+0xf6>
1a0013e0:	683b      	ldr	r3, [r7, #0]
1a0013e2:	461d      	mov	r5, r3
1a0013e4:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0013e8:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0013ea:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0013ec:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0013f0:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0013f4:	e03e      	b.n	1a001474 <pll_get_frac+0x174>
1a0013f6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a0013f8:	687a      	ldr	r2, [r7, #4]
1a0013fa:	1ad3      	subs	r3, r2, r3
1a0013fc:	4618      	mov	r0, r3
1a0013fe:	f7ff fedc 	bl	1a0011ba <ABS>
1a001402:	4603      	mov	r3, r0
1a001404:	673b      	str	r3, [r7, #112]	; 0x70
1a001406:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001408:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a00140a:	429a      	cmp	r2, r3
1a00140c:	dc19      	bgt.n	1a001442 <pll_get_frac+0x142>
1a00140e:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001410:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001412:	429a      	cmp	r2, r3
1a001414:	dc0a      	bgt.n	1a00142c <pll_get_frac+0x12c>
1a001416:	683b      	ldr	r3, [r7, #0]
1a001418:	461d      	mov	r5, r3
1a00141a:	f107 040c 	add.w	r4, r7, #12
1a00141e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001420:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001422:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001426:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00142a:	e023      	b.n	1a001474 <pll_get_frac+0x174>
1a00142c:	683b      	ldr	r3, [r7, #0]
1a00142e:	461d      	mov	r5, r3
1a001430:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001434:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001436:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001438:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00143c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001440:	e018      	b.n	1a001474 <pll_get_frac+0x174>
1a001442:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001444:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001446:	429a      	cmp	r2, r3
1a001448:	dc0a      	bgt.n	1a001460 <pll_get_frac+0x160>
1a00144a:	683b      	ldr	r3, [r7, #0]
1a00144c:	461d      	mov	r5, r3
1a00144e:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001452:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001454:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001456:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00145a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00145e:	e009      	b.n	1a001474 <pll_get_frac+0x174>
1a001460:	683b      	ldr	r3, [r7, #0]
1a001462:	461d      	mov	r5, r3
1a001464:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001468:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00146a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00146c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001470:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001474:	3778      	adds	r7, #120	; 0x78
1a001476:	46bd      	mov	sp, r7
1a001478:	bdb0      	pop	{r4, r5, r7, pc}
1a00147a:	bf00      	nop
1a00147c:	068e7780 	.word	0x068e7780

1a001480 <Chip_Clock_GetDivRate>:
1a001480:	b580      	push	{r7, lr}
1a001482:	b084      	sub	sp, #16
1a001484:	af00      	add	r7, sp, #0
1a001486:	4603      	mov	r3, r0
1a001488:	460a      	mov	r2, r1
1a00148a:	71fb      	strb	r3, [r7, #7]
1a00148c:	4613      	mov	r3, r2
1a00148e:	71bb      	strb	r3, [r7, #6]
1a001490:	79bb      	ldrb	r3, [r7, #6]
1a001492:	4618      	mov	r0, r3
1a001494:	f000 f960 	bl	1a001758 <Chip_Clock_GetDividerSource>
1a001498:	4603      	mov	r3, r0
1a00149a:	73fb      	strb	r3, [r7, #15]
1a00149c:	79bb      	ldrb	r3, [r7, #6]
1a00149e:	4618      	mov	r0, r3
1a0014a0:	f000 f97a 	bl	1a001798 <Chip_Clock_GetDividerDivisor>
1a0014a4:	60b8      	str	r0, [r7, #8]
1a0014a6:	7bfb      	ldrb	r3, [r7, #15]
1a0014a8:	4618      	mov	r0, r3
1a0014aa:	f000 f991 	bl	1a0017d0 <Chip_Clock_GetClockInputHz>
1a0014ae:	4602      	mov	r2, r0
1a0014b0:	68bb      	ldr	r3, [r7, #8]
1a0014b2:	3301      	adds	r3, #1
1a0014b4:	fbb2 f3f3 	udiv	r3, r2, r3
1a0014b8:	4618      	mov	r0, r3
1a0014ba:	3710      	adds	r7, #16
1a0014bc:	46bd      	mov	sp, r7
1a0014be:	bd80      	pop	{r7, pc}

1a0014c0 <Chip_Clock_FindBaseClock>:
1a0014c0:	b480      	push	{r7}
1a0014c2:	b085      	sub	sp, #20
1a0014c4:	af00      	add	r7, sp, #0
1a0014c6:	4603      	mov	r3, r0
1a0014c8:	80fb      	strh	r3, [r7, #6]
1a0014ca:	231c      	movs	r3, #28
1a0014cc:	73fb      	strb	r3, [r7, #15]
1a0014ce:	2300      	movs	r3, #0
1a0014d0:	60bb      	str	r3, [r7, #8]
1a0014d2:	e024      	b.n	1a00151e <Chip_Clock_FindBaseClock+0x5e>
1a0014d4:	491d      	ldr	r1, [pc, #116]	; (1a00154c <Chip_Clock_FindBaseClock+0x8c>)
1a0014d6:	68ba      	ldr	r2, [r7, #8]
1a0014d8:	4613      	mov	r3, r2
1a0014da:	005b      	lsls	r3, r3, #1
1a0014dc:	4413      	add	r3, r2
1a0014de:	005b      	lsls	r3, r3, #1
1a0014e0:	440b      	add	r3, r1
1a0014e2:	881b      	ldrh	r3, [r3, #0]
1a0014e4:	88fa      	ldrh	r2, [r7, #6]
1a0014e6:	429a      	cmp	r2, r3
1a0014e8:	d316      	bcc.n	1a001518 <Chip_Clock_FindBaseClock+0x58>
1a0014ea:	4918      	ldr	r1, [pc, #96]	; (1a00154c <Chip_Clock_FindBaseClock+0x8c>)
1a0014ec:	68ba      	ldr	r2, [r7, #8]
1a0014ee:	4613      	mov	r3, r2
1a0014f0:	005b      	lsls	r3, r3, #1
1a0014f2:	4413      	add	r3, r2
1a0014f4:	005b      	lsls	r3, r3, #1
1a0014f6:	440b      	add	r3, r1
1a0014f8:	3302      	adds	r3, #2
1a0014fa:	881b      	ldrh	r3, [r3, #0]
1a0014fc:	88fa      	ldrh	r2, [r7, #6]
1a0014fe:	429a      	cmp	r2, r3
1a001500:	d80a      	bhi.n	1a001518 <Chip_Clock_FindBaseClock+0x58>
1a001502:	4912      	ldr	r1, [pc, #72]	; (1a00154c <Chip_Clock_FindBaseClock+0x8c>)
1a001504:	68ba      	ldr	r2, [r7, #8]
1a001506:	4613      	mov	r3, r2
1a001508:	005b      	lsls	r3, r3, #1
1a00150a:	4413      	add	r3, r2
1a00150c:	005b      	lsls	r3, r3, #1
1a00150e:	440b      	add	r3, r1
1a001510:	3304      	adds	r3, #4
1a001512:	781b      	ldrb	r3, [r3, #0]
1a001514:	73fb      	strb	r3, [r7, #15]
1a001516:	e002      	b.n	1a00151e <Chip_Clock_FindBaseClock+0x5e>
1a001518:	68bb      	ldr	r3, [r7, #8]
1a00151a:	3301      	adds	r3, #1
1a00151c:	60bb      	str	r3, [r7, #8]
1a00151e:	7bfb      	ldrb	r3, [r7, #15]
1a001520:	2b1c      	cmp	r3, #28
1a001522:	d10b      	bne.n	1a00153c <Chip_Clock_FindBaseClock+0x7c>
1a001524:	4909      	ldr	r1, [pc, #36]	; (1a00154c <Chip_Clock_FindBaseClock+0x8c>)
1a001526:	68ba      	ldr	r2, [r7, #8]
1a001528:	4613      	mov	r3, r2
1a00152a:	005b      	lsls	r3, r3, #1
1a00152c:	4413      	add	r3, r2
1a00152e:	005b      	lsls	r3, r3, #1
1a001530:	440b      	add	r3, r1
1a001532:	3304      	adds	r3, #4
1a001534:	781b      	ldrb	r3, [r3, #0]
1a001536:	7bfa      	ldrb	r2, [r7, #15]
1a001538:	429a      	cmp	r2, r3
1a00153a:	d1cb      	bne.n	1a0014d4 <Chip_Clock_FindBaseClock+0x14>
1a00153c:	7bfb      	ldrb	r3, [r7, #15]
1a00153e:	4618      	mov	r0, r3
1a001540:	3714      	adds	r7, #20
1a001542:	46bd      	mov	sp, r7
1a001544:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001548:	4770      	bx	lr
1a00154a:	bf00      	nop
1a00154c:	1a001db0 	.word	0x1a001db0

1a001550 <Chip_Clock_EnableCrystal>:
1a001550:	b480      	push	{r7}
1a001552:	b083      	sub	sp, #12
1a001554:	af00      	add	r7, sp, #0
1a001556:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a00155a:	603b      	str	r3, [r7, #0]
1a00155c:	4b15      	ldr	r3, [pc, #84]	; (1a0015b4 <Chip_Clock_EnableCrystal+0x64>)
1a00155e:	699b      	ldr	r3, [r3, #24]
1a001560:	607b      	str	r3, [r7, #4]
1a001562:	687b      	ldr	r3, [r7, #4]
1a001564:	f023 0302 	bic.w	r3, r3, #2
1a001568:	607b      	str	r3, [r7, #4]
1a00156a:	4b12      	ldr	r3, [pc, #72]	; (1a0015b4 <Chip_Clock_EnableCrystal+0x64>)
1a00156c:	699b      	ldr	r3, [r3, #24]
1a00156e:	687a      	ldr	r2, [r7, #4]
1a001570:	429a      	cmp	r2, r3
1a001572:	d002      	beq.n	1a00157a <Chip_Clock_EnableCrystal+0x2a>
1a001574:	4a0f      	ldr	r2, [pc, #60]	; (1a0015b4 <Chip_Clock_EnableCrystal+0x64>)
1a001576:	687b      	ldr	r3, [r7, #4]
1a001578:	6193      	str	r3, [r2, #24]
1a00157a:	687b      	ldr	r3, [r7, #4]
1a00157c:	f023 0301 	bic.w	r3, r3, #1
1a001580:	607b      	str	r3, [r7, #4]
1a001582:	4b0d      	ldr	r3, [pc, #52]	; (1a0015b8 <Chip_Clock_EnableCrystal+0x68>)
1a001584:	681b      	ldr	r3, [r3, #0]
1a001586:	4a0d      	ldr	r2, [pc, #52]	; (1a0015bc <Chip_Clock_EnableCrystal+0x6c>)
1a001588:	4293      	cmp	r3, r2
1a00158a:	d903      	bls.n	1a001594 <Chip_Clock_EnableCrystal+0x44>
1a00158c:	687b      	ldr	r3, [r7, #4]
1a00158e:	f043 0304 	orr.w	r3, r3, #4
1a001592:	607b      	str	r3, [r7, #4]
1a001594:	4a07      	ldr	r2, [pc, #28]	; (1a0015b4 <Chip_Clock_EnableCrystal+0x64>)
1a001596:	687b      	ldr	r3, [r7, #4]
1a001598:	6193      	str	r3, [r2, #24]
1a00159a:	bf00      	nop
1a00159c:	683b      	ldr	r3, [r7, #0]
1a00159e:	1e5a      	subs	r2, r3, #1
1a0015a0:	603a      	str	r2, [r7, #0]
1a0015a2:	2b00      	cmp	r3, #0
1a0015a4:	d1fa      	bne.n	1a00159c <Chip_Clock_EnableCrystal+0x4c>
1a0015a6:	bf00      	nop
1a0015a8:	370c      	adds	r7, #12
1a0015aa:	46bd      	mov	sp, r7
1a0015ac:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015b0:	4770      	bx	lr
1a0015b2:	bf00      	nop
1a0015b4:	40050000 	.word	0x40050000
1a0015b8:	1a001d54 	.word	0x1a001d54
1a0015bc:	01312cff 	.word	0x01312cff

1a0015c0 <Chip_Clock_CalcMainPLLValue>:
1a0015c0:	b580      	push	{r7, lr}
1a0015c2:	b082      	sub	sp, #8
1a0015c4:	af00      	add	r7, sp, #0
1a0015c6:	6078      	str	r0, [r7, #4]
1a0015c8:	6039      	str	r1, [r7, #0]
1a0015ca:	683b      	ldr	r3, [r7, #0]
1a0015cc:	791b      	ldrb	r3, [r3, #4]
1a0015ce:	4618      	mov	r0, r3
1a0015d0:	f000 f8fe 	bl	1a0017d0 <Chip_Clock_GetClockInputHz>
1a0015d4:	4602      	mov	r2, r0
1a0015d6:	683b      	ldr	r3, [r7, #0]
1a0015d8:	615a      	str	r2, [r3, #20]
1a0015da:	687b      	ldr	r3, [r7, #4]
1a0015dc:	4a2b      	ldr	r2, [pc, #172]	; (1a00168c <Chip_Clock_CalcMainPLLValue+0xcc>)
1a0015de:	4293      	cmp	r3, r2
1a0015e0:	d807      	bhi.n	1a0015f2 <Chip_Clock_CalcMainPLLValue+0x32>
1a0015e2:	687b      	ldr	r3, [r7, #4]
1a0015e4:	4a2a      	ldr	r2, [pc, #168]	; (1a001690 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a0015e6:	4293      	cmp	r3, r2
1a0015e8:	d903      	bls.n	1a0015f2 <Chip_Clock_CalcMainPLLValue+0x32>
1a0015ea:	683b      	ldr	r3, [r7, #0]
1a0015ec:	695b      	ldr	r3, [r3, #20]
1a0015ee:	2b00      	cmp	r3, #0
1a0015f0:	d102      	bne.n	1a0015f8 <Chip_Clock_CalcMainPLLValue+0x38>
1a0015f2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0015f6:	e044      	b.n	1a001682 <Chip_Clock_CalcMainPLLValue+0xc2>
1a0015f8:	683b      	ldr	r3, [r7, #0]
1a0015fa:	2280      	movs	r2, #128	; 0x80
1a0015fc:	601a      	str	r2, [r3, #0]
1a0015fe:	683b      	ldr	r3, [r7, #0]
1a001600:	2200      	movs	r2, #0
1a001602:	609a      	str	r2, [r3, #8]
1a001604:	683b      	ldr	r3, [r7, #0]
1a001606:	2200      	movs	r2, #0
1a001608:	60da      	str	r2, [r3, #12]
1a00160a:	683b      	ldr	r3, [r7, #0]
1a00160c:	695b      	ldr	r3, [r3, #20]
1a00160e:	687a      	ldr	r2, [r7, #4]
1a001610:	fbb2 f3f3 	udiv	r3, r2, r3
1a001614:	461a      	mov	r2, r3
1a001616:	683b      	ldr	r3, [r7, #0]
1a001618:	611a      	str	r2, [r3, #16]
1a00161a:	687b      	ldr	r3, [r7, #4]
1a00161c:	4a1d      	ldr	r2, [pc, #116]	; (1a001694 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a00161e:	4293      	cmp	r3, r2
1a001620:	d909      	bls.n	1a001636 <Chip_Clock_CalcMainPLLValue+0x76>
1a001622:	683b      	ldr	r3, [r7, #0]
1a001624:	691b      	ldr	r3, [r3, #16]
1a001626:	461a      	mov	r2, r3
1a001628:	683b      	ldr	r3, [r7, #0]
1a00162a:	695b      	ldr	r3, [r3, #20]
1a00162c:	fb03 f302 	mul.w	r3, r3, r2
1a001630:	687a      	ldr	r2, [r7, #4]
1a001632:	429a      	cmp	r2, r3
1a001634:	d00f      	beq.n	1a001656 <Chip_Clock_CalcMainPLLValue+0x96>
1a001636:	6839      	ldr	r1, [r7, #0]
1a001638:	6878      	ldr	r0, [r7, #4]
1a00163a:	f7ff fe61 	bl	1a001300 <pll_get_frac>
1a00163e:	683b      	ldr	r3, [r7, #0]
1a001640:	689b      	ldr	r3, [r3, #8]
1a001642:	2b00      	cmp	r3, #0
1a001644:	d102      	bne.n	1a00164c <Chip_Clock_CalcMainPLLValue+0x8c>
1a001646:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a00164a:	e01a      	b.n	1a001682 <Chip_Clock_CalcMainPLLValue+0xc2>
1a00164c:	683b      	ldr	r3, [r7, #0]
1a00164e:	689b      	ldr	r3, [r3, #8]
1a001650:	1e5a      	subs	r2, r3, #1
1a001652:	683b      	ldr	r3, [r7, #0]
1a001654:	609a      	str	r2, [r3, #8]
1a001656:	683b      	ldr	r3, [r7, #0]
1a001658:	691b      	ldr	r3, [r3, #16]
1a00165a:	2b00      	cmp	r3, #0
1a00165c:	d102      	bne.n	1a001664 <Chip_Clock_CalcMainPLLValue+0xa4>
1a00165e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001662:	e00e      	b.n	1a001682 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001664:	683b      	ldr	r3, [r7, #0]
1a001666:	68db      	ldr	r3, [r3, #12]
1a001668:	2b00      	cmp	r3, #0
1a00166a:	d004      	beq.n	1a001676 <Chip_Clock_CalcMainPLLValue+0xb6>
1a00166c:	683b      	ldr	r3, [r7, #0]
1a00166e:	68db      	ldr	r3, [r3, #12]
1a001670:	1e5a      	subs	r2, r3, #1
1a001672:	683b      	ldr	r3, [r7, #0]
1a001674:	60da      	str	r2, [r3, #12]
1a001676:	683b      	ldr	r3, [r7, #0]
1a001678:	691b      	ldr	r3, [r3, #16]
1a00167a:	1e5a      	subs	r2, r3, #1
1a00167c:	683b      	ldr	r3, [r7, #0]
1a00167e:	611a      	str	r2, [r3, #16]
1a001680:	2300      	movs	r3, #0
1a001682:	4618      	mov	r0, r3
1a001684:	3708      	adds	r7, #8
1a001686:	46bd      	mov	sp, r7
1a001688:	bd80      	pop	{r7, pc}
1a00168a:	bf00      	nop
1a00168c:	0c28cb00 	.word	0x0c28cb00
1a001690:	0094c5ef 	.word	0x0094c5ef
1a001694:	094c5eff 	.word	0x094c5eff

1a001698 <Chip_Clock_GetMainPLLHz>:
1a001698:	b580      	push	{r7, lr}
1a00169a:	b08c      	sub	sp, #48	; 0x30
1a00169c:	af00      	add	r7, sp, #0
1a00169e:	4b2c      	ldr	r3, [pc, #176]	; (1a001750 <Chip_Clock_GetMainPLLHz+0xb8>)
1a0016a0:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0016a2:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0016a4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0016a6:	0e1b      	lsrs	r3, r3, #24
1a0016a8:	b2db      	uxtb	r3, r3
1a0016aa:	f003 030f 	and.w	r3, r3, #15
1a0016ae:	b2db      	uxtb	r3, r3
1a0016b0:	4618      	mov	r0, r3
1a0016b2:	f000 f88d 	bl	1a0017d0 <Chip_Clock_GetClockInputHz>
1a0016b6:	62b8      	str	r0, [r7, #40]	; 0x28
1a0016b8:	4b26      	ldr	r3, [pc, #152]	; (1a001754 <Chip_Clock_GetMainPLLHz+0xbc>)
1a0016ba:	681b      	ldr	r3, [r3, #0]
1a0016bc:	607b      	str	r3, [r7, #4]
1a0016be:	4b24      	ldr	r3, [pc, #144]	; (1a001750 <Chip_Clock_GetMainPLLHz+0xb8>)
1a0016c0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a0016c2:	f003 0301 	and.w	r3, r3, #1
1a0016c6:	2b00      	cmp	r3, #0
1a0016c8:	d101      	bne.n	1a0016ce <Chip_Clock_GetMainPLLHz+0x36>
1a0016ca:	2300      	movs	r3, #0
1a0016cc:	e03b      	b.n	1a001746 <Chip_Clock_GetMainPLLHz+0xae>
1a0016ce:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0016d0:	0c1b      	lsrs	r3, r3, #16
1a0016d2:	b2db      	uxtb	r3, r3
1a0016d4:	627b      	str	r3, [r7, #36]	; 0x24
1a0016d6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0016d8:	0b1b      	lsrs	r3, r3, #12
1a0016da:	f003 0303 	and.w	r3, r3, #3
1a0016de:	623b      	str	r3, [r7, #32]
1a0016e0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0016e2:	0a1b      	lsrs	r3, r3, #8
1a0016e4:	f003 0303 	and.w	r3, r3, #3
1a0016e8:	61fb      	str	r3, [r7, #28]
1a0016ea:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0016ec:	09db      	lsrs	r3, r3, #7
1a0016ee:	f003 0301 	and.w	r3, r3, #1
1a0016f2:	61bb      	str	r3, [r7, #24]
1a0016f4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0016f6:	099b      	lsrs	r3, r3, #6
1a0016f8:	f003 0301 	and.w	r3, r3, #1
1a0016fc:	617b      	str	r3, [r7, #20]
1a0016fe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001700:	3301      	adds	r3, #1
1a001702:	613b      	str	r3, [r7, #16]
1a001704:	6a3b      	ldr	r3, [r7, #32]
1a001706:	3301      	adds	r3, #1
1a001708:	60fb      	str	r3, [r7, #12]
1a00170a:	1d3a      	adds	r2, r7, #4
1a00170c:	69fb      	ldr	r3, [r7, #28]
1a00170e:	4413      	add	r3, r2
1a001710:	781b      	ldrb	r3, [r3, #0]
1a001712:	60bb      	str	r3, [r7, #8]
1a001714:	69bb      	ldr	r3, [r7, #24]
1a001716:	2b00      	cmp	r3, #0
1a001718:	d102      	bne.n	1a001720 <Chip_Clock_GetMainPLLHz+0x88>
1a00171a:	697b      	ldr	r3, [r7, #20]
1a00171c:	2b00      	cmp	r3, #0
1a00171e:	d007      	beq.n	1a001730 <Chip_Clock_GetMainPLLHz+0x98>
1a001720:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a001722:	68fb      	ldr	r3, [r7, #12]
1a001724:	fbb2 f3f3 	udiv	r3, r2, r3
1a001728:	693a      	ldr	r2, [r7, #16]
1a00172a:	fb02 f303 	mul.w	r3, r2, r3
1a00172e:	e00a      	b.n	1a001746 <Chip_Clock_GetMainPLLHz+0xae>
1a001730:	68bb      	ldr	r3, [r7, #8]
1a001732:	005b      	lsls	r3, r3, #1
1a001734:	693a      	ldr	r2, [r7, #16]
1a001736:	fbb2 f3f3 	udiv	r3, r2, r3
1a00173a:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a00173c:	68fa      	ldr	r2, [r7, #12]
1a00173e:	fbb1 f2f2 	udiv	r2, r1, r2
1a001742:	fb02 f303 	mul.w	r3, r2, r3
1a001746:	4618      	mov	r0, r3
1a001748:	3730      	adds	r7, #48	; 0x30
1a00174a:	46bd      	mov	sp, r7
1a00174c:	bd80      	pop	{r7, pc}
1a00174e:	bf00      	nop
1a001750:	40050000 	.word	0x40050000
1a001754:	1a001e1c 	.word	0x1a001e1c

1a001758 <Chip_Clock_GetDividerSource>:
1a001758:	b480      	push	{r7}
1a00175a:	b085      	sub	sp, #20
1a00175c:	af00      	add	r7, sp, #0
1a00175e:	4603      	mov	r3, r0
1a001760:	71fb      	strb	r3, [r7, #7]
1a001762:	4a0c      	ldr	r2, [pc, #48]	; (1a001794 <Chip_Clock_GetDividerSource+0x3c>)
1a001764:	79fb      	ldrb	r3, [r7, #7]
1a001766:	3312      	adds	r3, #18
1a001768:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a00176c:	60fb      	str	r3, [r7, #12]
1a00176e:	68fb      	ldr	r3, [r7, #12]
1a001770:	f003 0301 	and.w	r3, r3, #1
1a001774:	2b00      	cmp	r3, #0
1a001776:	d001      	beq.n	1a00177c <Chip_Clock_GetDividerSource+0x24>
1a001778:	2311      	movs	r3, #17
1a00177a:	e005      	b.n	1a001788 <Chip_Clock_GetDividerSource+0x30>
1a00177c:	68fb      	ldr	r3, [r7, #12]
1a00177e:	0e1b      	lsrs	r3, r3, #24
1a001780:	b2db      	uxtb	r3, r3
1a001782:	f003 031f 	and.w	r3, r3, #31
1a001786:	b2db      	uxtb	r3, r3
1a001788:	4618      	mov	r0, r3
1a00178a:	3714      	adds	r7, #20
1a00178c:	46bd      	mov	sp, r7
1a00178e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001792:	4770      	bx	lr
1a001794:	40050000 	.word	0x40050000

1a001798 <Chip_Clock_GetDividerDivisor>:
1a001798:	b480      	push	{r7}
1a00179a:	b083      	sub	sp, #12
1a00179c:	af00      	add	r7, sp, #0
1a00179e:	4603      	mov	r3, r0
1a0017a0:	71fb      	strb	r3, [r7, #7]
1a0017a2:	4a09      	ldr	r2, [pc, #36]	; (1a0017c8 <Chip_Clock_GetDividerDivisor+0x30>)
1a0017a4:	79fb      	ldrb	r3, [r7, #7]
1a0017a6:	3312      	adds	r3, #18
1a0017a8:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a0017ac:	089b      	lsrs	r3, r3, #2
1a0017ae:	b2da      	uxtb	r2, r3
1a0017b0:	79fb      	ldrb	r3, [r7, #7]
1a0017b2:	4906      	ldr	r1, [pc, #24]	; (1a0017cc <Chip_Clock_GetDividerDivisor+0x34>)
1a0017b4:	5ccb      	ldrb	r3, [r1, r3]
1a0017b6:	4013      	ands	r3, r2
1a0017b8:	b2db      	uxtb	r3, r3
1a0017ba:	4618      	mov	r0, r3
1a0017bc:	370c      	adds	r7, #12
1a0017be:	46bd      	mov	sp, r7
1a0017c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017c4:	4770      	bx	lr
1a0017c6:	bf00      	nop
1a0017c8:	40050000 	.word	0x40050000
1a0017cc:	1a001e20 	.word	0x1a001e20

1a0017d0 <Chip_Clock_GetClockInputHz>:
1a0017d0:	b580      	push	{r7, lr}
1a0017d2:	b084      	sub	sp, #16
1a0017d4:	af00      	add	r7, sp, #0
1a0017d6:	4603      	mov	r3, r0
1a0017d8:	71fb      	strb	r3, [r7, #7]
1a0017da:	2300      	movs	r3, #0
1a0017dc:	60fb      	str	r3, [r7, #12]
1a0017de:	79fb      	ldrb	r3, [r7, #7]
1a0017e0:	2b11      	cmp	r3, #17
1a0017e2:	d87f      	bhi.n	1a0018e4 <Chip_Clock_GetClockInputHz+0x114>
1a0017e4:	a201      	add	r2, pc, #4	; (adr r2, 1a0017ec <Chip_Clock_GetClockInputHz+0x1c>)
1a0017e6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a0017ea:	bf00      	nop
1a0017ec:	1a001835 	.word	0x1a001835
1a0017f0:	1a00183d 	.word	0x1a00183d
1a0017f4:	1a001843 	.word	0x1a001843
1a0017f8:	1a001857 	.word	0x1a001857
1a0017fc:	1a001871 	.word	0x1a001871
1a001800:	1a0018e5 	.word	0x1a0018e5
1a001804:	1a001879 	.word	0x1a001879
1a001808:	1a001881 	.word	0x1a001881
1a00180c:	1a001889 	.word	0x1a001889
1a001810:	1a001891 	.word	0x1a001891
1a001814:	1a0018e5 	.word	0x1a0018e5
1a001818:	1a0018e5 	.word	0x1a0018e5
1a00181c:	1a001899 	.word	0x1a001899
1a001820:	1a0018a7 	.word	0x1a0018a7
1a001824:	1a0018b5 	.word	0x1a0018b5
1a001828:	1a0018c3 	.word	0x1a0018c3
1a00182c:	1a0018d1 	.word	0x1a0018d1
1a001830:	1a0018df 	.word	0x1a0018df
1a001834:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001838:	60fb      	str	r3, [r7, #12]
1a00183a:	e056      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a00183c:	4b2d      	ldr	r3, [pc, #180]	; (1a0018f4 <Chip_Clock_GetClockInputHz+0x124>)
1a00183e:	60fb      	str	r3, [r7, #12]
1a001840:	e053      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a001842:	4b2d      	ldr	r3, [pc, #180]	; (1a0018f8 <Chip_Clock_GetClockInputHz+0x128>)
1a001844:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001848:	f003 0307 	and.w	r3, r3, #7
1a00184c:	2b04      	cmp	r3, #4
1a00184e:	d04b      	beq.n	1a0018e8 <Chip_Clock_GetClockInputHz+0x118>
1a001850:	4b2a      	ldr	r3, [pc, #168]	; (1a0018fc <Chip_Clock_GetClockInputHz+0x12c>)
1a001852:	60fb      	str	r3, [r7, #12]
1a001854:	e048      	b.n	1a0018e8 <Chip_Clock_GetClockInputHz+0x118>
1a001856:	4b28      	ldr	r3, [pc, #160]	; (1a0018f8 <Chip_Clock_GetClockInputHz+0x128>)
1a001858:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a00185c:	f003 0307 	and.w	r3, r3, #7
1a001860:	2b04      	cmp	r3, #4
1a001862:	d002      	beq.n	1a00186a <Chip_Clock_GetClockInputHz+0x9a>
1a001864:	4b25      	ldr	r3, [pc, #148]	; (1a0018fc <Chip_Clock_GetClockInputHz+0x12c>)
1a001866:	60fb      	str	r3, [r7, #12]
1a001868:	e03f      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a00186a:	4b25      	ldr	r3, [pc, #148]	; (1a001900 <Chip_Clock_GetClockInputHz+0x130>)
1a00186c:	60fb      	str	r3, [r7, #12]
1a00186e:	e03c      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a001870:	4b24      	ldr	r3, [pc, #144]	; (1a001904 <Chip_Clock_GetClockInputHz+0x134>)
1a001872:	681b      	ldr	r3, [r3, #0]
1a001874:	60fb      	str	r3, [r7, #12]
1a001876:	e038      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a001878:	4b23      	ldr	r3, [pc, #140]	; (1a001908 <Chip_Clock_GetClockInputHz+0x138>)
1a00187a:	681b      	ldr	r3, [r3, #0]
1a00187c:	60fb      	str	r3, [r7, #12]
1a00187e:	e034      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a001880:	4b22      	ldr	r3, [pc, #136]	; (1a00190c <Chip_Clock_GetClockInputHz+0x13c>)
1a001882:	681b      	ldr	r3, [r3, #0]
1a001884:	60fb      	str	r3, [r7, #12]
1a001886:	e030      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a001888:	4b20      	ldr	r3, [pc, #128]	; (1a00190c <Chip_Clock_GetClockInputHz+0x13c>)
1a00188a:	685b      	ldr	r3, [r3, #4]
1a00188c:	60fb      	str	r3, [r7, #12]
1a00188e:	e02c      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a001890:	f7ff ff02 	bl	1a001698 <Chip_Clock_GetMainPLLHz>
1a001894:	60f8      	str	r0, [r7, #12]
1a001896:	e028      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a001898:	79fb      	ldrb	r3, [r7, #7]
1a00189a:	2100      	movs	r1, #0
1a00189c:	4618      	mov	r0, r3
1a00189e:	f7ff fdef 	bl	1a001480 <Chip_Clock_GetDivRate>
1a0018a2:	60f8      	str	r0, [r7, #12]
1a0018a4:	e021      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a0018a6:	79fb      	ldrb	r3, [r7, #7]
1a0018a8:	2101      	movs	r1, #1
1a0018aa:	4618      	mov	r0, r3
1a0018ac:	f7ff fde8 	bl	1a001480 <Chip_Clock_GetDivRate>
1a0018b0:	60f8      	str	r0, [r7, #12]
1a0018b2:	e01a      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a0018b4:	79fb      	ldrb	r3, [r7, #7]
1a0018b6:	2102      	movs	r1, #2
1a0018b8:	4618      	mov	r0, r3
1a0018ba:	f7ff fde1 	bl	1a001480 <Chip_Clock_GetDivRate>
1a0018be:	60f8      	str	r0, [r7, #12]
1a0018c0:	e013      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a0018c2:	79fb      	ldrb	r3, [r7, #7]
1a0018c4:	2103      	movs	r1, #3
1a0018c6:	4618      	mov	r0, r3
1a0018c8:	f7ff fdda 	bl	1a001480 <Chip_Clock_GetDivRate>
1a0018cc:	60f8      	str	r0, [r7, #12]
1a0018ce:	e00c      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a0018d0:	79fb      	ldrb	r3, [r7, #7]
1a0018d2:	2104      	movs	r1, #4
1a0018d4:	4618      	mov	r0, r3
1a0018d6:	f7ff fdd3 	bl	1a001480 <Chip_Clock_GetDivRate>
1a0018da:	60f8      	str	r0, [r7, #12]
1a0018dc:	e005      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a0018de:	2300      	movs	r3, #0
1a0018e0:	60fb      	str	r3, [r7, #12]
1a0018e2:	e002      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a0018e4:	bf00      	nop
1a0018e6:	e000      	b.n	1a0018ea <Chip_Clock_GetClockInputHz+0x11a>
1a0018e8:	bf00      	nop
1a0018ea:	68fb      	ldr	r3, [r7, #12]
1a0018ec:	4618      	mov	r0, r3
1a0018ee:	3710      	adds	r7, #16
1a0018f0:	46bd      	mov	sp, r7
1a0018f2:	bd80      	pop	{r7, pc}
1a0018f4:	00b71b00 	.word	0x00b71b00
1a0018f8:	40043000 	.word	0x40043000
1a0018fc:	017d7840 	.word	0x017d7840
1a001900:	02faf080 	.word	0x02faf080
1a001904:	1a001d50 	.word	0x1a001d50
1a001908:	1a001d54 	.word	0x1a001d54
1a00190c:	10000438 	.word	0x10000438

1a001910 <Chip_Clock_GetBaseClocktHz>:
1a001910:	b580      	push	{r7, lr}
1a001912:	b082      	sub	sp, #8
1a001914:	af00      	add	r7, sp, #0
1a001916:	4603      	mov	r3, r0
1a001918:	71fb      	strb	r3, [r7, #7]
1a00191a:	79fb      	ldrb	r3, [r7, #7]
1a00191c:	4618      	mov	r0, r3
1a00191e:	f000 f857 	bl	1a0019d0 <Chip_Clock_GetBaseClock>
1a001922:	4603      	mov	r3, r0
1a001924:	4618      	mov	r0, r3
1a001926:	f7ff ff53 	bl	1a0017d0 <Chip_Clock_GetClockInputHz>
1a00192a:	4603      	mov	r3, r0
1a00192c:	4618      	mov	r0, r3
1a00192e:	3708      	adds	r7, #8
1a001930:	46bd      	mov	sp, r7
1a001932:	bd80      	pop	{r7, pc}

1a001934 <Chip_Clock_SetBaseClock>:
1a001934:	b490      	push	{r4, r7}
1a001936:	b084      	sub	sp, #16
1a001938:	af00      	add	r7, sp, #0
1a00193a:	4604      	mov	r4, r0
1a00193c:	4608      	mov	r0, r1
1a00193e:	4611      	mov	r1, r2
1a001940:	461a      	mov	r2, r3
1a001942:	4623      	mov	r3, r4
1a001944:	71fb      	strb	r3, [r7, #7]
1a001946:	4603      	mov	r3, r0
1a001948:	71bb      	strb	r3, [r7, #6]
1a00194a:	460b      	mov	r3, r1
1a00194c:	717b      	strb	r3, [r7, #5]
1a00194e:	4613      	mov	r3, r2
1a001950:	713b      	strb	r3, [r7, #4]
1a001952:	4a1d      	ldr	r2, [pc, #116]	; (1a0019c8 <Chip_Clock_SetBaseClock+0x94>)
1a001954:	79fb      	ldrb	r3, [r7, #7]
1a001956:	3316      	adds	r3, #22
1a001958:	009b      	lsls	r3, r3, #2
1a00195a:	4413      	add	r3, r2
1a00195c:	685b      	ldr	r3, [r3, #4]
1a00195e:	60fb      	str	r3, [r7, #12]
1a001960:	79fb      	ldrb	r3, [r7, #7]
1a001962:	2b1b      	cmp	r3, #27
1a001964:	d822      	bhi.n	1a0019ac <Chip_Clock_SetBaseClock+0x78>
1a001966:	79bb      	ldrb	r3, [r7, #6]
1a001968:	2b11      	cmp	r3, #17
1a00196a:	d028      	beq.n	1a0019be <Chip_Clock_SetBaseClock+0x8a>
1a00196c:	68fa      	ldr	r2, [r7, #12]
1a00196e:	4b17      	ldr	r3, [pc, #92]	; (1a0019cc <Chip_Clock_SetBaseClock+0x98>)
1a001970:	4013      	ands	r3, r2
1a001972:	60fb      	str	r3, [r7, #12]
1a001974:	797b      	ldrb	r3, [r7, #5]
1a001976:	2b00      	cmp	r3, #0
1a001978:	d003      	beq.n	1a001982 <Chip_Clock_SetBaseClock+0x4e>
1a00197a:	68fb      	ldr	r3, [r7, #12]
1a00197c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001980:	60fb      	str	r3, [r7, #12]
1a001982:	793b      	ldrb	r3, [r7, #4]
1a001984:	2b00      	cmp	r3, #0
1a001986:	d003      	beq.n	1a001990 <Chip_Clock_SetBaseClock+0x5c>
1a001988:	68fb      	ldr	r3, [r7, #12]
1a00198a:	f043 0301 	orr.w	r3, r3, #1
1a00198e:	60fb      	str	r3, [r7, #12]
1a001990:	79bb      	ldrb	r3, [r7, #6]
1a001992:	061b      	lsls	r3, r3, #24
1a001994:	461a      	mov	r2, r3
1a001996:	68fb      	ldr	r3, [r7, #12]
1a001998:	4313      	orrs	r3, r2
1a00199a:	60fb      	str	r3, [r7, #12]
1a00199c:	4a0a      	ldr	r2, [pc, #40]	; (1a0019c8 <Chip_Clock_SetBaseClock+0x94>)
1a00199e:	79fb      	ldrb	r3, [r7, #7]
1a0019a0:	3316      	adds	r3, #22
1a0019a2:	009b      	lsls	r3, r3, #2
1a0019a4:	4413      	add	r3, r2
1a0019a6:	68fa      	ldr	r2, [r7, #12]
1a0019a8:	605a      	str	r2, [r3, #4]
1a0019aa:	e008      	b.n	1a0019be <Chip_Clock_SetBaseClock+0x8a>
1a0019ac:	4906      	ldr	r1, [pc, #24]	; (1a0019c8 <Chip_Clock_SetBaseClock+0x94>)
1a0019ae:	79fb      	ldrb	r3, [r7, #7]
1a0019b0:	68fa      	ldr	r2, [r7, #12]
1a0019b2:	f042 0201 	orr.w	r2, r2, #1
1a0019b6:	3316      	adds	r3, #22
1a0019b8:	009b      	lsls	r3, r3, #2
1a0019ba:	440b      	add	r3, r1
1a0019bc:	605a      	str	r2, [r3, #4]
1a0019be:	bf00      	nop
1a0019c0:	3710      	adds	r7, #16
1a0019c2:	46bd      	mov	sp, r7
1a0019c4:	bc90      	pop	{r4, r7}
1a0019c6:	4770      	bx	lr
1a0019c8:	40050000 	.word	0x40050000
1a0019cc:	e0fff7fe 	.word	0xe0fff7fe

1a0019d0 <Chip_Clock_GetBaseClock>:
1a0019d0:	b480      	push	{r7}
1a0019d2:	b085      	sub	sp, #20
1a0019d4:	af00      	add	r7, sp, #0
1a0019d6:	4603      	mov	r3, r0
1a0019d8:	71fb      	strb	r3, [r7, #7]
1a0019da:	79fb      	ldrb	r3, [r7, #7]
1a0019dc:	2b1b      	cmp	r3, #27
1a0019de:	d901      	bls.n	1a0019e4 <Chip_Clock_GetBaseClock+0x14>
1a0019e0:	2311      	movs	r3, #17
1a0019e2:	e013      	b.n	1a001a0c <Chip_Clock_GetBaseClock+0x3c>
1a0019e4:	4a0c      	ldr	r2, [pc, #48]	; (1a001a18 <Chip_Clock_GetBaseClock+0x48>)
1a0019e6:	79fb      	ldrb	r3, [r7, #7]
1a0019e8:	3316      	adds	r3, #22
1a0019ea:	009b      	lsls	r3, r3, #2
1a0019ec:	4413      	add	r3, r2
1a0019ee:	685b      	ldr	r3, [r3, #4]
1a0019f0:	60fb      	str	r3, [r7, #12]
1a0019f2:	68fb      	ldr	r3, [r7, #12]
1a0019f4:	f003 0301 	and.w	r3, r3, #1
1a0019f8:	2b00      	cmp	r3, #0
1a0019fa:	d001      	beq.n	1a001a00 <Chip_Clock_GetBaseClock+0x30>
1a0019fc:	2311      	movs	r3, #17
1a0019fe:	e005      	b.n	1a001a0c <Chip_Clock_GetBaseClock+0x3c>
1a001a00:	68fb      	ldr	r3, [r7, #12]
1a001a02:	0e1b      	lsrs	r3, r3, #24
1a001a04:	b2db      	uxtb	r3, r3
1a001a06:	f003 031f 	and.w	r3, r3, #31
1a001a0a:	b2db      	uxtb	r3, r3
1a001a0c:	4618      	mov	r0, r3
1a001a0e:	3714      	adds	r7, #20
1a001a10:	46bd      	mov	sp, r7
1a001a12:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a16:	4770      	bx	lr
1a001a18:	40050000 	.word	0x40050000

1a001a1c <Chip_Clock_EnableOpts>:
1a001a1c:	b480      	push	{r7}
1a001a1e:	b085      	sub	sp, #20
1a001a20:	af00      	add	r7, sp, #0
1a001a22:	603b      	str	r3, [r7, #0]
1a001a24:	4603      	mov	r3, r0
1a001a26:	80fb      	strh	r3, [r7, #6]
1a001a28:	460b      	mov	r3, r1
1a001a2a:	717b      	strb	r3, [r7, #5]
1a001a2c:	4613      	mov	r3, r2
1a001a2e:	713b      	strb	r3, [r7, #4]
1a001a30:	2301      	movs	r3, #1
1a001a32:	60fb      	str	r3, [r7, #12]
1a001a34:	797b      	ldrb	r3, [r7, #5]
1a001a36:	2b00      	cmp	r3, #0
1a001a38:	d003      	beq.n	1a001a42 <Chip_Clock_EnableOpts+0x26>
1a001a3a:	68fb      	ldr	r3, [r7, #12]
1a001a3c:	f043 0302 	orr.w	r3, r3, #2
1a001a40:	60fb      	str	r3, [r7, #12]
1a001a42:	793b      	ldrb	r3, [r7, #4]
1a001a44:	2b00      	cmp	r3, #0
1a001a46:	d003      	beq.n	1a001a50 <Chip_Clock_EnableOpts+0x34>
1a001a48:	68fb      	ldr	r3, [r7, #12]
1a001a4a:	f043 0304 	orr.w	r3, r3, #4
1a001a4e:	60fb      	str	r3, [r7, #12]
1a001a50:	683b      	ldr	r3, [r7, #0]
1a001a52:	2b02      	cmp	r3, #2
1a001a54:	d103      	bne.n	1a001a5e <Chip_Clock_EnableOpts+0x42>
1a001a56:	68fb      	ldr	r3, [r7, #12]
1a001a58:	f043 0320 	orr.w	r3, r3, #32
1a001a5c:	60fb      	str	r3, [r7, #12]
1a001a5e:	88fb      	ldrh	r3, [r7, #6]
1a001a60:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001a64:	d308      	bcc.n	1a001a78 <Chip_Clock_EnableOpts+0x5c>
1a001a66:	490a      	ldr	r1, [pc, #40]	; (1a001a90 <Chip_Clock_EnableOpts+0x74>)
1a001a68:	88fb      	ldrh	r3, [r7, #6]
1a001a6a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001a6e:	3320      	adds	r3, #32
1a001a70:	68fa      	ldr	r2, [r7, #12]
1a001a72:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001a76:	e005      	b.n	1a001a84 <Chip_Clock_EnableOpts+0x68>
1a001a78:	4906      	ldr	r1, [pc, #24]	; (1a001a94 <Chip_Clock_EnableOpts+0x78>)
1a001a7a:	88fb      	ldrh	r3, [r7, #6]
1a001a7c:	3320      	adds	r3, #32
1a001a7e:	68fa      	ldr	r2, [r7, #12]
1a001a80:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001a84:	bf00      	nop
1a001a86:	3714      	adds	r7, #20
1a001a88:	46bd      	mov	sp, r7
1a001a8a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a8e:	4770      	bx	lr
1a001a90:	40052000 	.word	0x40052000
1a001a94:	40051000 	.word	0x40051000

1a001a98 <Chip_Clock_Enable>:
1a001a98:	b480      	push	{r7}
1a001a9a:	b083      	sub	sp, #12
1a001a9c:	af00      	add	r7, sp, #0
1a001a9e:	4603      	mov	r3, r0
1a001aa0:	80fb      	strh	r3, [r7, #6]
1a001aa2:	88fb      	ldrh	r3, [r7, #6]
1a001aa4:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001aa8:	d310      	bcc.n	1a001acc <Chip_Clock_Enable+0x34>
1a001aaa:	4a11      	ldr	r2, [pc, #68]	; (1a001af0 <Chip_Clock_Enable+0x58>)
1a001aac:	88fb      	ldrh	r3, [r7, #6]
1a001aae:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001ab2:	3320      	adds	r3, #32
1a001ab4:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001ab8:	490d      	ldr	r1, [pc, #52]	; (1a001af0 <Chip_Clock_Enable+0x58>)
1a001aba:	88fb      	ldrh	r3, [r7, #6]
1a001abc:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001ac0:	f042 0201 	orr.w	r2, r2, #1
1a001ac4:	3320      	adds	r3, #32
1a001ac6:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001aca:	e00b      	b.n	1a001ae4 <Chip_Clock_Enable+0x4c>
1a001acc:	4a09      	ldr	r2, [pc, #36]	; (1a001af4 <Chip_Clock_Enable+0x5c>)
1a001ace:	88fb      	ldrh	r3, [r7, #6]
1a001ad0:	3320      	adds	r3, #32
1a001ad2:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001ad6:	4907      	ldr	r1, [pc, #28]	; (1a001af4 <Chip_Clock_Enable+0x5c>)
1a001ad8:	88fb      	ldrh	r3, [r7, #6]
1a001ada:	f042 0201 	orr.w	r2, r2, #1
1a001ade:	3320      	adds	r3, #32
1a001ae0:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001ae4:	bf00      	nop
1a001ae6:	370c      	adds	r7, #12
1a001ae8:	46bd      	mov	sp, r7
1a001aea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001aee:	4770      	bx	lr
1a001af0:	40052000 	.word	0x40052000
1a001af4:	40051000 	.word	0x40051000

1a001af8 <Chip_Clock_GetRate>:
1a001af8:	b580      	push	{r7, lr}
1a001afa:	b086      	sub	sp, #24
1a001afc:	af00      	add	r7, sp, #0
1a001afe:	4603      	mov	r3, r0
1a001b00:	80fb      	strh	r3, [r7, #6]
1a001b02:	88fb      	ldrh	r3, [r7, #6]
1a001b04:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001b08:	d308      	bcc.n	1a001b1c <Chip_Clock_GetRate+0x24>
1a001b0a:	4a1b      	ldr	r2, [pc, #108]	; (1a001b78 <Chip_Clock_GetRate+0x80>)
1a001b0c:	88fb      	ldrh	r3, [r7, #6]
1a001b0e:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001b12:	3320      	adds	r3, #32
1a001b14:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001b18:	617b      	str	r3, [r7, #20]
1a001b1a:	e005      	b.n	1a001b28 <Chip_Clock_GetRate+0x30>
1a001b1c:	4a17      	ldr	r2, [pc, #92]	; (1a001b7c <Chip_Clock_GetRate+0x84>)
1a001b1e:	88fb      	ldrh	r3, [r7, #6]
1a001b20:	3320      	adds	r3, #32
1a001b22:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001b26:	617b      	str	r3, [r7, #20]
1a001b28:	697b      	ldr	r3, [r7, #20]
1a001b2a:	f003 0301 	and.w	r3, r3, #1
1a001b2e:	2b00      	cmp	r3, #0
1a001b30:	d01b      	beq.n	1a001b6a <Chip_Clock_GetRate+0x72>
1a001b32:	88fb      	ldrh	r3, [r7, #6]
1a001b34:	4618      	mov	r0, r3
1a001b36:	f7ff fcc3 	bl	1a0014c0 <Chip_Clock_FindBaseClock>
1a001b3a:	4603      	mov	r3, r0
1a001b3c:	72fb      	strb	r3, [r7, #11]
1a001b3e:	7afb      	ldrb	r3, [r7, #11]
1a001b40:	4618      	mov	r0, r3
1a001b42:	f7ff fee5 	bl	1a001910 <Chip_Clock_GetBaseClocktHz>
1a001b46:	60f8      	str	r0, [r7, #12]
1a001b48:	697b      	ldr	r3, [r7, #20]
1a001b4a:	095b      	lsrs	r3, r3, #5
1a001b4c:	f003 0307 	and.w	r3, r3, #7
1a001b50:	2b00      	cmp	r3, #0
1a001b52:	d102      	bne.n	1a001b5a <Chip_Clock_GetRate+0x62>
1a001b54:	2301      	movs	r3, #1
1a001b56:	613b      	str	r3, [r7, #16]
1a001b58:	e001      	b.n	1a001b5e <Chip_Clock_GetRate+0x66>
1a001b5a:	2302      	movs	r3, #2
1a001b5c:	613b      	str	r3, [r7, #16]
1a001b5e:	68fa      	ldr	r2, [r7, #12]
1a001b60:	693b      	ldr	r3, [r7, #16]
1a001b62:	fbb2 f3f3 	udiv	r3, r2, r3
1a001b66:	60fb      	str	r3, [r7, #12]
1a001b68:	e001      	b.n	1a001b6e <Chip_Clock_GetRate+0x76>
1a001b6a:	2300      	movs	r3, #0
1a001b6c:	60fb      	str	r3, [r7, #12]
1a001b6e:	68fb      	ldr	r3, [r7, #12]
1a001b70:	4618      	mov	r0, r3
1a001b72:	3718      	adds	r7, #24
1a001b74:	46bd      	mov	sp, r7
1a001b76:	bd80      	pop	{r7, pc}
1a001b78:	40052000 	.word	0x40052000
1a001b7c:	40051000 	.word	0x40051000

1a001b80 <SystemCoreClockUpdate>:
1a001b80:	b580      	push	{r7, lr}
1a001b82:	af00      	add	r7, sp, #0
1a001b84:	2069      	movs	r0, #105	; 0x69
1a001b86:	f7ff ffb7 	bl	1a001af8 <Chip_Clock_GetRate>
1a001b8a:	4602      	mov	r2, r0
1a001b8c:	4b01      	ldr	r3, [pc, #4]	; (1a001b94 <SystemCoreClockUpdate+0x14>)
1a001b8e:	601a      	str	r2, [r3, #0]
1a001b90:	bf00      	nop
1a001b92:	bd80      	pop	{r7, pc}
1a001b94:	10000440 	.word	0x10000440

1a001b98 <Chip_GPIO_Init>:
1a001b98:	b480      	push	{r7}
1a001b9a:	b083      	sub	sp, #12
1a001b9c:	af00      	add	r7, sp, #0
1a001b9e:	6078      	str	r0, [r7, #4]
1a001ba0:	bf00      	nop
1a001ba2:	370c      	adds	r7, #12
1a001ba4:	46bd      	mov	sp, r7
1a001ba6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001baa:	4770      	bx	lr

1a001bac <Chip_TIMER_GetClockIndex>:
1a001bac:	b480      	push	{r7}
1a001bae:	b085      	sub	sp, #20
1a001bb0:	af00      	add	r7, sp, #0
1a001bb2:	6078      	str	r0, [r7, #4]
1a001bb4:	687b      	ldr	r3, [r7, #4]
1a001bb6:	4a0e      	ldr	r2, [pc, #56]	; (1a001bf0 <Chip_TIMER_GetClockIndex+0x44>)
1a001bb8:	4293      	cmp	r3, r2
1a001bba:	d102      	bne.n	1a001bc2 <Chip_TIMER_GetClockIndex+0x16>
1a001bbc:	23a4      	movs	r3, #164	; 0xa4
1a001bbe:	81fb      	strh	r3, [r7, #14]
1a001bc0:	e00f      	b.n	1a001be2 <Chip_TIMER_GetClockIndex+0x36>
1a001bc2:	687b      	ldr	r3, [r7, #4]
1a001bc4:	4a0b      	ldr	r2, [pc, #44]	; (1a001bf4 <Chip_TIMER_GetClockIndex+0x48>)
1a001bc6:	4293      	cmp	r3, r2
1a001bc8:	d102      	bne.n	1a001bd0 <Chip_TIMER_GetClockIndex+0x24>
1a001bca:	23a3      	movs	r3, #163	; 0xa3
1a001bcc:	81fb      	strh	r3, [r7, #14]
1a001bce:	e008      	b.n	1a001be2 <Chip_TIMER_GetClockIndex+0x36>
1a001bd0:	687b      	ldr	r3, [r7, #4]
1a001bd2:	4a09      	ldr	r2, [pc, #36]	; (1a001bf8 <Chip_TIMER_GetClockIndex+0x4c>)
1a001bd4:	4293      	cmp	r3, r2
1a001bd6:	d102      	bne.n	1a001bde <Chip_TIMER_GetClockIndex+0x32>
1a001bd8:	2385      	movs	r3, #133	; 0x85
1a001bda:	81fb      	strh	r3, [r7, #14]
1a001bdc:	e001      	b.n	1a001be2 <Chip_TIMER_GetClockIndex+0x36>
1a001bde:	2384      	movs	r3, #132	; 0x84
1a001be0:	81fb      	strh	r3, [r7, #14]
1a001be2:	89fb      	ldrh	r3, [r7, #14]
1a001be4:	4618      	mov	r0, r3
1a001be6:	3714      	adds	r7, #20
1a001be8:	46bd      	mov	sp, r7
1a001bea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001bee:	4770      	bx	lr
1a001bf0:	400c4000 	.word	0x400c4000
1a001bf4:	400c3000 	.word	0x400c3000
1a001bf8:	40085000 	.word	0x40085000

1a001bfc <Chip_TIMER_Init>:
1a001bfc:	b580      	push	{r7, lr}
1a001bfe:	b082      	sub	sp, #8
1a001c00:	af00      	add	r7, sp, #0
1a001c02:	6078      	str	r0, [r7, #4]
1a001c04:	6878      	ldr	r0, [r7, #4]
1a001c06:	f7ff ffd1 	bl	1a001bac <Chip_TIMER_GetClockIndex>
1a001c0a:	4603      	mov	r3, r0
1a001c0c:	4618      	mov	r0, r3
1a001c0e:	f7ff ff43 	bl	1a001a98 <Chip_Clock_Enable>
1a001c12:	bf00      	nop
1a001c14:	3708      	adds	r7, #8
1a001c16:	46bd      	mov	sp, r7
1a001c18:	bd80      	pop	{r7, pc}
1a001c1a:	Address 0x000000001a001c1a is out of bounds.


1a001c1c <memcpy>:
1a001c1c:	4684      	mov	ip, r0
1a001c1e:	ea41 0300 	orr.w	r3, r1, r0
1a001c22:	f013 0303 	ands.w	r3, r3, #3
1a001c26:	d16d      	bne.n	1a001d04 <memcpy+0xe8>
1a001c28:	3a40      	subs	r2, #64	; 0x40
1a001c2a:	d341      	bcc.n	1a001cb0 <memcpy+0x94>
1a001c2c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c30:	f840 3b04 	str.w	r3, [r0], #4
1a001c34:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c38:	f840 3b04 	str.w	r3, [r0], #4
1a001c3c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c40:	f840 3b04 	str.w	r3, [r0], #4
1a001c44:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c48:	f840 3b04 	str.w	r3, [r0], #4
1a001c4c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c50:	f840 3b04 	str.w	r3, [r0], #4
1a001c54:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c58:	f840 3b04 	str.w	r3, [r0], #4
1a001c5c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c60:	f840 3b04 	str.w	r3, [r0], #4
1a001c64:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c68:	f840 3b04 	str.w	r3, [r0], #4
1a001c6c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c70:	f840 3b04 	str.w	r3, [r0], #4
1a001c74:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c78:	f840 3b04 	str.w	r3, [r0], #4
1a001c7c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c80:	f840 3b04 	str.w	r3, [r0], #4
1a001c84:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c88:	f840 3b04 	str.w	r3, [r0], #4
1a001c8c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c90:	f840 3b04 	str.w	r3, [r0], #4
1a001c94:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c98:	f840 3b04 	str.w	r3, [r0], #4
1a001c9c:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ca0:	f840 3b04 	str.w	r3, [r0], #4
1a001ca4:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ca8:	f840 3b04 	str.w	r3, [r0], #4
1a001cac:	3a40      	subs	r2, #64	; 0x40
1a001cae:	d2bd      	bcs.n	1a001c2c <memcpy+0x10>
1a001cb0:	3230      	adds	r2, #48	; 0x30
1a001cb2:	d311      	bcc.n	1a001cd8 <memcpy+0xbc>
1a001cb4:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cb8:	f840 3b04 	str.w	r3, [r0], #4
1a001cbc:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cc0:	f840 3b04 	str.w	r3, [r0], #4
1a001cc4:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cc8:	f840 3b04 	str.w	r3, [r0], #4
1a001ccc:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cd0:	f840 3b04 	str.w	r3, [r0], #4
1a001cd4:	3a10      	subs	r2, #16
1a001cd6:	d2ed      	bcs.n	1a001cb4 <memcpy+0x98>
1a001cd8:	320c      	adds	r2, #12
1a001cda:	d305      	bcc.n	1a001ce8 <memcpy+0xcc>
1a001cdc:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ce0:	f840 3b04 	str.w	r3, [r0], #4
1a001ce4:	3a04      	subs	r2, #4
1a001ce6:	d2f9      	bcs.n	1a001cdc <memcpy+0xc0>
1a001ce8:	3204      	adds	r2, #4
1a001cea:	d008      	beq.n	1a001cfe <memcpy+0xe2>
1a001cec:	07d2      	lsls	r2, r2, #31
1a001cee:	bf1c      	itt	ne
1a001cf0:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a001cf4:	f800 3b01 	strbne.w	r3, [r0], #1
1a001cf8:	d301      	bcc.n	1a001cfe <memcpy+0xe2>
1a001cfa:	880b      	ldrh	r3, [r1, #0]
1a001cfc:	8003      	strh	r3, [r0, #0]
1a001cfe:	4660      	mov	r0, ip
1a001d00:	4770      	bx	lr
1a001d02:	bf00      	nop
1a001d04:	2a08      	cmp	r2, #8
1a001d06:	d313      	bcc.n	1a001d30 <memcpy+0x114>
1a001d08:	078b      	lsls	r3, r1, #30
1a001d0a:	d08d      	beq.n	1a001c28 <memcpy+0xc>
1a001d0c:	f010 0303 	ands.w	r3, r0, #3
1a001d10:	d08a      	beq.n	1a001c28 <memcpy+0xc>
1a001d12:	f1c3 0304 	rsb	r3, r3, #4
1a001d16:	1ad2      	subs	r2, r2, r3
1a001d18:	07db      	lsls	r3, r3, #31
1a001d1a:	bf1c      	itt	ne
1a001d1c:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a001d20:	f800 3b01 	strbne.w	r3, [r0], #1
1a001d24:	d380      	bcc.n	1a001c28 <memcpy+0xc>
1a001d26:	f831 3b02 	ldrh.w	r3, [r1], #2
1a001d2a:	f820 3b02 	strh.w	r3, [r0], #2
1a001d2e:	e77b      	b.n	1a001c28 <memcpy+0xc>
1a001d30:	3a04      	subs	r2, #4
1a001d32:	d3d9      	bcc.n	1a001ce8 <memcpy+0xcc>
1a001d34:	3a01      	subs	r2, #1
1a001d36:	f811 3b01 	ldrb.w	r3, [r1], #1
1a001d3a:	f800 3b01 	strb.w	r3, [r0], #1
1a001d3e:	d2f9      	bcs.n	1a001d34 <memcpy+0x118>
1a001d40:	780b      	ldrb	r3, [r1, #0]
1a001d42:	7003      	strb	r3, [r0, #0]
1a001d44:	784b      	ldrb	r3, [r1, #1]
1a001d46:	7043      	strb	r3, [r0, #1]
1a001d48:	788b      	ldrb	r3, [r1, #2]
1a001d4a:	7083      	strb	r3, [r0, #2]
1a001d4c:	4660      	mov	r0, ip
1a001d4e:	4770      	bx	lr

1a001d50 <ExtRateIn>:
1a001d50:	0000 0000                                   ....

1a001d54 <OscRateIn>:
1a001d54:	1b00 00b7                                   ....

1a001d58 <InitClkStates>:
1a001d58:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a001d68:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a001d78:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a001d88:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a001d98:	111a 0001 111b 0001                         ........

1a001da0 <UART_PClock>:
1a001da0:	0081 0082 00a1 00a2                         ........

1a001da8 <UART_BClock>:
1a001da8:	01c2 01a2 0182 0162                         ......b.

1a001db0 <periph_to_base>:
1a001db0:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a001dc0:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a001dd0:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a001de0:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a001df0:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a001e00:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a001e10:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a001e20:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a001e28 <_init>:
1a001e28:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a001e2a:	bf00      	nop

Disassembly of section .fini:

1a001e2c <_fini>:
1a001e2c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a001e2e:	bf00      	nop
