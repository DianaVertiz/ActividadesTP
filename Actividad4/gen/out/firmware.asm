
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
1a000114:	1a001e5c 	.word	0x1a001e5c
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
1a000564:	f000 fae8 	bl	1a000b38 <Chip_SetupXtalClocking>
1a000568:	f001 fb20 	bl	1a001bac <SystemCoreClockUpdate>
1a00056c:	f000 f9c0 	bl	1a0008f0 <fpuInit>
1a000570:	4868      	ldr	r0, [pc, #416]	; (1a000714 <systemInit+0x1b4>)
1a000572:	f001 fb27 	bl	1a001bc4 <Chip_GPIO_Init>
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
1a00069c:	f000 fb88 	bl	1a000db0 <Chip_UART_Init>
1a0006a0:	2103      	movs	r1, #3
1a0006a2:	481d      	ldr	r0, [pc, #116]	; (1a000718 <systemInit+0x1b8>)
1a0006a4:	f7ff ff4e 	bl	1a000544 <Chip_UART_ConfigData>
1a0006a8:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a0006ac:	481a      	ldr	r0, [pc, #104]	; (1a000718 <systemInit+0x1b8>)
1a0006ae:	f000 fbc3 	bl	1a000e38 <Chip_UART_SetBaud>
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
1a0006dc:	f000 fd09 	bl	1a0010f2 <RingBuffer_Init>
1a0006e0:	f44f 7300 	mov.w	r3, #512	; 0x200
1a0006e4:	2201      	movs	r2, #1
1a0006e6:	490f      	ldr	r1, [pc, #60]	; (1a000724 <systemInit+0x1c4>)
1a0006e8:	480f      	ldr	r0, [pc, #60]	; (1a000728 <systemInit+0x1c8>)
1a0006ea:	f000 fd02 	bl	1a0010f2 <RingBuffer_Init>
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
1a00070a:	f000 fc63 	bl	1a000fd4 <StopWatch_Init>
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
1a000736:	f000 fbfe 	bl	1a000f36 <Chip_UART_IRQRBHandler>
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
1a0007e8:	f000 f86c 	bl	1a0008c4 <main>
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

1a000844 <Chip_GPIO_GetPinState>:
1a000844:	b480      	push	{r7}
1a000846:	b083      	sub	sp, #12
1a000848:	af00      	add	r7, sp, #0
1a00084a:	6078      	str	r0, [r7, #4]
1a00084c:	460b      	mov	r3, r1
1a00084e:	70fb      	strb	r3, [r7, #3]
1a000850:	4613      	mov	r3, r2
1a000852:	70bb      	strb	r3, [r7, #2]
1a000854:	78fa      	ldrb	r2, [r7, #3]
1a000856:	78bb      	ldrb	r3, [r7, #2]
1a000858:	6879      	ldr	r1, [r7, #4]
1a00085a:	0152      	lsls	r2, r2, #5
1a00085c:	440a      	add	r2, r1
1a00085e:	4413      	add	r3, r2
1a000860:	781b      	ldrb	r3, [r3, #0]
1a000862:	b2db      	uxtb	r3, r3
1a000864:	2b00      	cmp	r3, #0
1a000866:	bf14      	ite	ne
1a000868:	2301      	movne	r3, #1
1a00086a:	2300      	moveq	r3, #0
1a00086c:	b2db      	uxtb	r3, r3
1a00086e:	4618      	mov	r0, r3
1a000870:	370c      	adds	r7, #12
1a000872:	46bd      	mov	sp, r7
1a000874:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000878:	4770      	bx	lr

1a00087a <StopWatch_Elapsed>:
1a00087a:	b580      	push	{r7, lr}
1a00087c:	b082      	sub	sp, #8
1a00087e:	af00      	add	r7, sp, #0
1a000880:	6078      	str	r0, [r7, #4]
1a000882:	f000 fbe1 	bl	1a001048 <StopWatch_Start>
1a000886:	4602      	mov	r2, r0
1a000888:	687b      	ldr	r3, [r7, #4]
1a00088a:	1ad3      	subs	r3, r2, r3
1a00088c:	4618      	mov	r0, r3
1a00088e:	3708      	adds	r7, #8
1a000890:	46bd      	mov	sp, r7
1a000892:	bd80      	pop	{r7, pc}

1a000894 <StopWatch_DelayMs>:
1a000894:	b580      	push	{r7, lr}
1a000896:	b084      	sub	sp, #16
1a000898:	af00      	add	r7, sp, #0
1a00089a:	6078      	str	r0, [r7, #4]
1a00089c:	6878      	ldr	r0, [r7, #4]
1a00089e:	f000 fbdd 	bl	1a00105c <StopWatch_MsToTicks>
1a0008a2:	60f8      	str	r0, [r7, #12]
1a0008a4:	f000 fbd0 	bl	1a001048 <StopWatch_Start>
1a0008a8:	60b8      	str	r0, [r7, #8]
1a0008aa:	bf00      	nop
1a0008ac:	68b8      	ldr	r0, [r7, #8]
1a0008ae:	f7ff ffe4 	bl	1a00087a <StopWatch_Elapsed>
1a0008b2:	4602      	mov	r2, r0
1a0008b4:	68fb      	ldr	r3, [r7, #12]
1a0008b6:	4293      	cmp	r3, r2
1a0008b8:	d8f8      	bhi.n	1a0008ac <StopWatch_DelayMs+0x18>
1a0008ba:	bf00      	nop
1a0008bc:	3710      	adds	r7, #16
1a0008be:	46bd      	mov	sp, r7
1a0008c0:	bd80      	pop	{r7, pc}
1a0008c2:	Address 0x000000001a0008c2 is out of bounds.


1a0008c4 <main>:
1a0008c4:	b580      	push	{r7, lr}
1a0008c6:	af00      	add	r7, sp, #0
1a0008c8:	f7ff fe4a 	bl	1a000560 <systemInit>
1a0008cc:	2301      	movs	r3, #1
1a0008ce:	220e      	movs	r2, #14
1a0008d0:	2100      	movs	r1, #0
1a0008d2:	4806      	ldr	r0, [pc, #24]	; (1a0008ec <main+0x28>)
1a0008d4:	f7ff ff9a 	bl	1a00080c <Chip_GPIO_SetPinState>
1a0008d8:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
1a0008dc:	f7ff ffda 	bl	1a000894 <StopWatch_DelayMs>
1a0008e0:	220e      	movs	r2, #14
1a0008e2:	2100      	movs	r1, #0
1a0008e4:	4801      	ldr	r0, [pc, #4]	; (1a0008ec <main+0x28>)
1a0008e6:	f7ff ffad 	bl	1a000844 <Chip_GPIO_GetPinState>
1a0008ea:	e7ef      	b.n	1a0008cc <main+0x8>
1a0008ec:	400f4000 	.word	0x400f4000

1a0008f0 <fpuInit>:
1a0008f0:	b480      	push	{r7}
1a0008f2:	b089      	sub	sp, #36	; 0x24
1a0008f4:	af00      	add	r7, sp, #0
1a0008f6:	4b16      	ldr	r3, [pc, #88]	; (1a000950 <fpuInit+0x60>)
1a0008f8:	61fb      	str	r3, [r7, #28]
1a0008fa:	4b16      	ldr	r3, [pc, #88]	; (1a000954 <fpuInit+0x64>)
1a0008fc:	61bb      	str	r3, [r7, #24]
1a0008fe:	4b16      	ldr	r3, [pc, #88]	; (1a000958 <fpuInit+0x68>)
1a000900:	617b      	str	r3, [r7, #20]
1a000902:	2300      	movs	r3, #0
1a000904:	74fb      	strb	r3, [r7, #19]
1a000906:	69bb      	ldr	r3, [r7, #24]
1a000908:	681b      	ldr	r3, [r3, #0]
1a00090a:	60bb      	str	r3, [r7, #8]
1a00090c:	697b      	ldr	r3, [r7, #20]
1a00090e:	681b      	ldr	r3, [r3, #0]
1a000910:	607b      	str	r3, [r7, #4]
1a000912:	68bb      	ldr	r3, [r7, #8]
1a000914:	4a11      	ldr	r2, [pc, #68]	; (1a00095c <fpuInit+0x6c>)
1a000916:	4293      	cmp	r3, r2
1a000918:	d105      	bne.n	1a000926 <fpuInit+0x36>
1a00091a:	687b      	ldr	r3, [r7, #4]
1a00091c:	4a10      	ldr	r2, [pc, #64]	; (1a000960 <fpuInit+0x70>)
1a00091e:	4293      	cmp	r3, r2
1a000920:	d101      	bne.n	1a000926 <fpuInit+0x36>
1a000922:	2301      	movs	r3, #1
1a000924:	e000      	b.n	1a000928 <fpuInit+0x38>
1a000926:	2300      	movs	r3, #0
1a000928:	74fb      	strb	r3, [r7, #19]
1a00092a:	7cfb      	ldrb	r3, [r7, #19]
1a00092c:	2b00      	cmp	r3, #0
1a00092e:	d009      	beq.n	1a000944 <fpuInit+0x54>
1a000930:	69fb      	ldr	r3, [r7, #28]
1a000932:	681b      	ldr	r3, [r3, #0]
1a000934:	60fb      	str	r3, [r7, #12]
1a000936:	68fb      	ldr	r3, [r7, #12]
1a000938:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a00093c:	60fb      	str	r3, [r7, #12]
1a00093e:	68fa      	ldr	r2, [r7, #12]
1a000940:	69fb      	ldr	r3, [r7, #28]
1a000942:	601a      	str	r2, [r3, #0]
1a000944:	bf00      	nop
1a000946:	3724      	adds	r7, #36	; 0x24
1a000948:	46bd      	mov	sp, r7
1a00094a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00094e:	4770      	bx	lr
1a000950:	e000ed88 	.word	0xe000ed88
1a000954:	e000ef40 	.word	0xe000ef40
1a000958:	e000ef44 	.word	0xe000ef44
1a00095c:	10110021 	.word	0x10110021
1a000960:	11000011 	.word	0x11000011

1a000964 <Chip_Clock_DisableMainPLL>:
1a000964:	b480      	push	{r7}
1a000966:	af00      	add	r7, sp, #0
1a000968:	4b05      	ldr	r3, [pc, #20]	; (1a000980 <Chip_Clock_DisableMainPLL+0x1c>)
1a00096a:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a00096c:	4a04      	ldr	r2, [pc, #16]	; (1a000980 <Chip_Clock_DisableMainPLL+0x1c>)
1a00096e:	f043 0301 	orr.w	r3, r3, #1
1a000972:	6453      	str	r3, [r2, #68]	; 0x44
1a000974:	bf00      	nop
1a000976:	46bd      	mov	sp, r7
1a000978:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00097c:	4770      	bx	lr
1a00097e:	bf00      	nop
1a000980:	40050000 	.word	0x40050000

1a000984 <Chip_Clock_SetupMainPLL>:
1a000984:	b480      	push	{r7}
1a000986:	b083      	sub	sp, #12
1a000988:	af00      	add	r7, sp, #0
1a00098a:	6078      	str	r0, [r7, #4]
1a00098c:	687b      	ldr	r3, [r7, #4]
1a00098e:	681b      	ldr	r3, [r3, #0]
1a000990:	461a      	mov	r2, r3
1a000992:	687b      	ldr	r3, [r7, #4]
1a000994:	791b      	ldrb	r3, [r3, #4]
1a000996:	061b      	lsls	r3, r3, #24
1a000998:	4313      	orrs	r3, r2
1a00099a:	687a      	ldr	r2, [r7, #4]
1a00099c:	6912      	ldr	r2, [r2, #16]
1a00099e:	0412      	lsls	r2, r2, #16
1a0009a0:	4313      	orrs	r3, r2
1a0009a2:	687a      	ldr	r2, [r7, #4]
1a0009a4:	6892      	ldr	r2, [r2, #8]
1a0009a6:	0312      	lsls	r2, r2, #12
1a0009a8:	4313      	orrs	r3, r2
1a0009aa:	687a      	ldr	r2, [r7, #4]
1a0009ac:	68d2      	ldr	r2, [r2, #12]
1a0009ae:	0212      	lsls	r2, r2, #8
1a0009b0:	4313      	orrs	r3, r2
1a0009b2:	4a05      	ldr	r2, [pc, #20]	; (1a0009c8 <Chip_Clock_SetupMainPLL+0x44>)
1a0009b4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a0009b8:	6453      	str	r3, [r2, #68]	; 0x44
1a0009ba:	bf00      	nop
1a0009bc:	370c      	adds	r7, #12
1a0009be:	46bd      	mov	sp, r7
1a0009c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009c4:	4770      	bx	lr
1a0009c6:	bf00      	nop
1a0009c8:	40050000 	.word	0x40050000

1a0009cc <Chip_Clock_MainPLLLocked>:
1a0009cc:	b480      	push	{r7}
1a0009ce:	af00      	add	r7, sp, #0
1a0009d0:	4b06      	ldr	r3, [pc, #24]	; (1a0009ec <Chip_Clock_MainPLLLocked+0x20>)
1a0009d2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a0009d4:	f003 0301 	and.w	r3, r3, #1
1a0009d8:	2b00      	cmp	r3, #0
1a0009da:	bf14      	ite	ne
1a0009dc:	2301      	movne	r3, #1
1a0009de:	2300      	moveq	r3, #0
1a0009e0:	b2db      	uxtb	r3, r3
1a0009e2:	4618      	mov	r0, r3
1a0009e4:	46bd      	mov	sp, r7
1a0009e6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009ea:	4770      	bx	lr
1a0009ec:	40050000 	.word	0x40050000

1a0009f0 <Chip_SetupCoreClock>:
1a0009f0:	b590      	push	{r4, r7, lr}
1a0009f2:	b08f      	sub	sp, #60	; 0x3c
1a0009f4:	af00      	add	r7, sp, #0
1a0009f6:	4603      	mov	r3, r0
1a0009f8:	6039      	str	r1, [r7, #0]
1a0009fa:	71fb      	strb	r3, [r7, #7]
1a0009fc:	4613      	mov	r3, r2
1a0009fe:	71bb      	strb	r3, [r7, #6]
1a000a00:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a000a04:	62bb      	str	r3, [r7, #40]	; 0x28
1a000a06:	2300      	movs	r3, #0
1a000a08:	633b      	str	r3, [r7, #48]	; 0x30
1a000a0a:	2300      	movs	r3, #0
1a000a0c:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000a0e:	79fb      	ldrb	r3, [r7, #7]
1a000a10:	2b06      	cmp	r3, #6
1a000a12:	d101      	bne.n	1a000a18 <Chip_SetupCoreClock+0x28>
1a000a14:	f000 fdb2 	bl	1a00157c <Chip_Clock_EnableCrystal>
1a000a18:	79f9      	ldrb	r1, [r7, #7]
1a000a1a:	2300      	movs	r3, #0
1a000a1c:	2201      	movs	r2, #1
1a000a1e:	2004      	movs	r0, #4
1a000a20:	f000 ff9e 	bl	1a001960 <Chip_Clock_SetBaseClock>
1a000a24:	f7ff ff9e 	bl	1a000964 <Chip_Clock_DisableMainPLL>
1a000a28:	79fb      	ldrb	r3, [r7, #7]
1a000a2a:	733b      	strb	r3, [r7, #12]
1a000a2c:	f107 0308 	add.w	r3, r7, #8
1a000a30:	4619      	mov	r1, r3
1a000a32:	6838      	ldr	r0, [r7, #0]
1a000a34:	f000 fdda 	bl	1a0015ec <Chip_Clock_CalcMainPLLValue>
1a000a38:	683b      	ldr	r3, [r7, #0]
1a000a3a:	4a3d      	ldr	r2, [pc, #244]	; (1a000b30 <Chip_SetupCoreClock+0x140>)
1a000a3c:	4293      	cmp	r3, r2
1a000a3e:	d916      	bls.n	1a000a6e <Chip_SetupCoreClock+0x7e>
1a000a40:	68bb      	ldr	r3, [r7, #8]
1a000a42:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a000a46:	2b00      	cmp	r3, #0
1a000a48:	d000      	beq.n	1a000a4c <Chip_SetupCoreClock+0x5c>
1a000a4a:	e7fe      	b.n	1a000a4a <Chip_SetupCoreClock+0x5a>
1a000a4c:	68bb      	ldr	r3, [r7, #8]
1a000a4e:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a000a52:	2b00      	cmp	r3, #0
1a000a54:	d006      	beq.n	1a000a64 <Chip_SetupCoreClock+0x74>
1a000a56:	2301      	movs	r3, #1
1a000a58:	633b      	str	r3, [r7, #48]	; 0x30
1a000a5a:	68bb      	ldr	r3, [r7, #8]
1a000a5c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a000a60:	60bb      	str	r3, [r7, #8]
1a000a62:	e004      	b.n	1a000a6e <Chip_SetupCoreClock+0x7e>
1a000a64:	2301      	movs	r3, #1
1a000a66:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000a68:	697b      	ldr	r3, [r7, #20]
1a000a6a:	3301      	adds	r3, #1
1a000a6c:	617b      	str	r3, [r7, #20]
1a000a6e:	f107 0308 	add.w	r3, r7, #8
1a000a72:	4618      	mov	r0, r3
1a000a74:	f7ff ff86 	bl	1a000984 <Chip_Clock_SetupMainPLL>
1a000a78:	bf00      	nop
1a000a7a:	f7ff ffa7 	bl	1a0009cc <Chip_Clock_MainPLLLocked>
1a000a7e:	4603      	mov	r3, r0
1a000a80:	2b00      	cmp	r3, #0
1a000a82:	d0fa      	beq.n	1a000a7a <Chip_SetupCoreClock+0x8a>
1a000a84:	2300      	movs	r3, #0
1a000a86:	2201      	movs	r2, #1
1a000a88:	2109      	movs	r1, #9
1a000a8a:	2004      	movs	r0, #4
1a000a8c:	f000 ff68 	bl	1a001960 <Chip_Clock_SetBaseClock>
1a000a90:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a000a92:	2b00      	cmp	r3, #0
1a000a94:	d012      	beq.n	1a000abc <Chip_SetupCoreClock+0xcc>
1a000a96:	f641 3358 	movw	r3, #7000	; 0x1b58
1a000a9a:	62bb      	str	r3, [r7, #40]	; 0x28
1a000a9c:	bf00      	nop
1a000a9e:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000aa0:	1e5a      	subs	r2, r3, #1
1a000aa2:	62ba      	str	r2, [r7, #40]	; 0x28
1a000aa4:	2b00      	cmp	r3, #0
1a000aa6:	d1fa      	bne.n	1a000a9e <Chip_SetupCoreClock+0xae>
1a000aa8:	68bb      	ldr	r3, [r7, #8]
1a000aaa:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a000aae:	60bb      	str	r3, [r7, #8]
1a000ab0:	f107 0308 	add.w	r3, r7, #8
1a000ab4:	4618      	mov	r0, r3
1a000ab6:	f7ff ff65 	bl	1a000984 <Chip_Clock_SetupMainPLL>
1a000aba:	e013      	b.n	1a000ae4 <Chip_SetupCoreClock+0xf4>
1a000abc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000abe:	2b00      	cmp	r3, #0
1a000ac0:	d010      	beq.n	1a000ae4 <Chip_SetupCoreClock+0xf4>
1a000ac2:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a000ac6:	62bb      	str	r3, [r7, #40]	; 0x28
1a000ac8:	bf00      	nop
1a000aca:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000acc:	1e5a      	subs	r2, r3, #1
1a000ace:	62ba      	str	r2, [r7, #40]	; 0x28
1a000ad0:	2b00      	cmp	r3, #0
1a000ad2:	d1fa      	bne.n	1a000aca <Chip_SetupCoreClock+0xda>
1a000ad4:	697b      	ldr	r3, [r7, #20]
1a000ad6:	3b01      	subs	r3, #1
1a000ad8:	617b      	str	r3, [r7, #20]
1a000ada:	f107 0308 	add.w	r3, r7, #8
1a000ade:	4618      	mov	r0, r3
1a000ae0:	f7ff ff50 	bl	1a000984 <Chip_Clock_SetupMainPLL>
1a000ae4:	79bb      	ldrb	r3, [r7, #6]
1a000ae6:	2b00      	cmp	r3, #0
1a000ae8:	d01e      	beq.n	1a000b28 <Chip_SetupCoreClock+0x138>
1a000aea:	2300      	movs	r3, #0
1a000aec:	637b      	str	r3, [r7, #52]	; 0x34
1a000aee:	e018      	b.n	1a000b22 <Chip_SetupCoreClock+0x132>
1a000af0:	4a10      	ldr	r2, [pc, #64]	; (1a000b34 <Chip_SetupCoreClock+0x144>)
1a000af2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000af4:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a000af8:	4a0e      	ldr	r2, [pc, #56]	; (1a000b34 <Chip_SetupCoreClock+0x144>)
1a000afa:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000afc:	009b      	lsls	r3, r3, #2
1a000afe:	4413      	add	r3, r2
1a000b00:	7859      	ldrb	r1, [r3, #1]
1a000b02:	4a0c      	ldr	r2, [pc, #48]	; (1a000b34 <Chip_SetupCoreClock+0x144>)
1a000b04:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000b06:	009b      	lsls	r3, r3, #2
1a000b08:	4413      	add	r3, r2
1a000b0a:	789c      	ldrb	r4, [r3, #2]
1a000b0c:	4a09      	ldr	r2, [pc, #36]	; (1a000b34 <Chip_SetupCoreClock+0x144>)
1a000b0e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000b10:	009b      	lsls	r3, r3, #2
1a000b12:	4413      	add	r3, r2
1a000b14:	78db      	ldrb	r3, [r3, #3]
1a000b16:	4622      	mov	r2, r4
1a000b18:	f000 ff22 	bl	1a001960 <Chip_Clock_SetBaseClock>
1a000b1c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000b1e:	3301      	adds	r3, #1
1a000b20:	637b      	str	r3, [r7, #52]	; 0x34
1a000b22:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000b24:	2b11      	cmp	r3, #17
1a000b26:	d9e3      	bls.n	1a000af0 <Chip_SetupCoreClock+0x100>
1a000b28:	bf00      	nop
1a000b2a:	373c      	adds	r7, #60	; 0x3c
1a000b2c:	46bd      	mov	sp, r7
1a000b2e:	bd90      	pop	{r4, r7, pc}
1a000b30:	068e7780 	.word	0x068e7780
1a000b34:	1a001d84 	.word	0x1a001d84

1a000b38 <Chip_SetupXtalClocking>:
1a000b38:	b580      	push	{r7, lr}
1a000b3a:	af00      	add	r7, sp, #0
1a000b3c:	2201      	movs	r2, #1
1a000b3e:	4903      	ldr	r1, [pc, #12]	; (1a000b4c <Chip_SetupXtalClocking+0x14>)
1a000b40:	2006      	movs	r0, #6
1a000b42:	f7ff ff55 	bl	1a0009f0 <Chip_SetupCoreClock>
1a000b46:	bf00      	nop
1a000b48:	bd80      	pop	{r7, pc}
1a000b4a:	bf00      	nop
1a000b4c:	0c28cb00 	.word	0x0c28cb00

1a000b50 <RingBuffer_IsEmpty>:
1a000b50:	b480      	push	{r7}
1a000b52:	b083      	sub	sp, #12
1a000b54:	af00      	add	r7, sp, #0
1a000b56:	6078      	str	r0, [r7, #4]
1a000b58:	687b      	ldr	r3, [r7, #4]
1a000b5a:	330c      	adds	r3, #12
1a000b5c:	681a      	ldr	r2, [r3, #0]
1a000b5e:	687b      	ldr	r3, [r7, #4]
1a000b60:	3310      	adds	r3, #16
1a000b62:	681b      	ldr	r3, [r3, #0]
1a000b64:	429a      	cmp	r2, r3
1a000b66:	bf0c      	ite	eq
1a000b68:	2301      	moveq	r3, #1
1a000b6a:	2300      	movne	r3, #0
1a000b6c:	b2db      	uxtb	r3, r3
1a000b6e:	4618      	mov	r0, r3
1a000b70:	370c      	adds	r7, #12
1a000b72:	46bd      	mov	sp, r7
1a000b74:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b78:	4770      	bx	lr

1a000b7a <Chip_UART_TXDisable>:
1a000b7a:	b480      	push	{r7}
1a000b7c:	b083      	sub	sp, #12
1a000b7e:	af00      	add	r7, sp, #0
1a000b80:	6078      	str	r0, [r7, #4]
1a000b82:	687b      	ldr	r3, [r7, #4]
1a000b84:	2200      	movs	r2, #0
1a000b86:	65da      	str	r2, [r3, #92]	; 0x5c
1a000b88:	bf00      	nop
1a000b8a:	370c      	adds	r7, #12
1a000b8c:	46bd      	mov	sp, r7
1a000b8e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b92:	4770      	bx	lr

1a000b94 <Chip_UART_SendByte>:
1a000b94:	b480      	push	{r7}
1a000b96:	b083      	sub	sp, #12
1a000b98:	af00      	add	r7, sp, #0
1a000b9a:	6078      	str	r0, [r7, #4]
1a000b9c:	460b      	mov	r3, r1
1a000b9e:	70fb      	strb	r3, [r7, #3]
1a000ba0:	78fa      	ldrb	r2, [r7, #3]
1a000ba2:	687b      	ldr	r3, [r7, #4]
1a000ba4:	601a      	str	r2, [r3, #0]
1a000ba6:	bf00      	nop
1a000ba8:	370c      	adds	r7, #12
1a000baa:	46bd      	mov	sp, r7
1a000bac:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bb0:	4770      	bx	lr

1a000bb2 <Chip_UART_ReadByte>:
1a000bb2:	b480      	push	{r7}
1a000bb4:	b083      	sub	sp, #12
1a000bb6:	af00      	add	r7, sp, #0
1a000bb8:	6078      	str	r0, [r7, #4]
1a000bba:	687b      	ldr	r3, [r7, #4]
1a000bbc:	681b      	ldr	r3, [r3, #0]
1a000bbe:	b2db      	uxtb	r3, r3
1a000bc0:	4618      	mov	r0, r3
1a000bc2:	370c      	adds	r7, #12
1a000bc4:	46bd      	mov	sp, r7
1a000bc6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bca:	4770      	bx	lr

1a000bcc <Chip_UART_IntDisable>:
1a000bcc:	b480      	push	{r7}
1a000bce:	b083      	sub	sp, #12
1a000bd0:	af00      	add	r7, sp, #0
1a000bd2:	6078      	str	r0, [r7, #4]
1a000bd4:	6039      	str	r1, [r7, #0]
1a000bd6:	687b      	ldr	r3, [r7, #4]
1a000bd8:	685a      	ldr	r2, [r3, #4]
1a000bda:	683b      	ldr	r3, [r7, #0]
1a000bdc:	43db      	mvns	r3, r3
1a000bde:	401a      	ands	r2, r3
1a000be0:	687b      	ldr	r3, [r7, #4]
1a000be2:	605a      	str	r2, [r3, #4]
1a000be4:	bf00      	nop
1a000be6:	370c      	adds	r7, #12
1a000be8:	46bd      	mov	sp, r7
1a000bea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bee:	4770      	bx	lr

1a000bf0 <Chip_UART_ReadIntIDReg>:
1a000bf0:	b480      	push	{r7}
1a000bf2:	b083      	sub	sp, #12
1a000bf4:	af00      	add	r7, sp, #0
1a000bf6:	6078      	str	r0, [r7, #4]
1a000bf8:	687b      	ldr	r3, [r7, #4]
1a000bfa:	689b      	ldr	r3, [r3, #8]
1a000bfc:	4618      	mov	r0, r3
1a000bfe:	370c      	adds	r7, #12
1a000c00:	46bd      	mov	sp, r7
1a000c02:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c06:	4770      	bx	lr

1a000c08 <Chip_UART_SetupFIFOS>:
1a000c08:	b480      	push	{r7}
1a000c0a:	b083      	sub	sp, #12
1a000c0c:	af00      	add	r7, sp, #0
1a000c0e:	6078      	str	r0, [r7, #4]
1a000c10:	6039      	str	r1, [r7, #0]
1a000c12:	687b      	ldr	r3, [r7, #4]
1a000c14:	683a      	ldr	r2, [r7, #0]
1a000c16:	609a      	str	r2, [r3, #8]
1a000c18:	bf00      	nop
1a000c1a:	370c      	adds	r7, #12
1a000c1c:	46bd      	mov	sp, r7
1a000c1e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c22:	4770      	bx	lr

1a000c24 <Chip_UART_ConfigData>:
1a000c24:	b480      	push	{r7}
1a000c26:	b083      	sub	sp, #12
1a000c28:	af00      	add	r7, sp, #0
1a000c2a:	6078      	str	r0, [r7, #4]
1a000c2c:	6039      	str	r1, [r7, #0]
1a000c2e:	687b      	ldr	r3, [r7, #4]
1a000c30:	683a      	ldr	r2, [r7, #0]
1a000c32:	60da      	str	r2, [r3, #12]
1a000c34:	bf00      	nop
1a000c36:	370c      	adds	r7, #12
1a000c38:	46bd      	mov	sp, r7
1a000c3a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c3e:	4770      	bx	lr

1a000c40 <Chip_UART_EnableDivisorAccess>:
1a000c40:	b480      	push	{r7}
1a000c42:	b083      	sub	sp, #12
1a000c44:	af00      	add	r7, sp, #0
1a000c46:	6078      	str	r0, [r7, #4]
1a000c48:	687b      	ldr	r3, [r7, #4]
1a000c4a:	68db      	ldr	r3, [r3, #12]
1a000c4c:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a000c50:	687b      	ldr	r3, [r7, #4]
1a000c52:	60da      	str	r2, [r3, #12]
1a000c54:	bf00      	nop
1a000c56:	370c      	adds	r7, #12
1a000c58:	46bd      	mov	sp, r7
1a000c5a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c5e:	4770      	bx	lr

1a000c60 <Chip_UART_DisableDivisorAccess>:
1a000c60:	b480      	push	{r7}
1a000c62:	b083      	sub	sp, #12
1a000c64:	af00      	add	r7, sp, #0
1a000c66:	6078      	str	r0, [r7, #4]
1a000c68:	687b      	ldr	r3, [r7, #4]
1a000c6a:	68db      	ldr	r3, [r3, #12]
1a000c6c:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a000c70:	687b      	ldr	r3, [r7, #4]
1a000c72:	60da      	str	r2, [r3, #12]
1a000c74:	bf00      	nop
1a000c76:	370c      	adds	r7, #12
1a000c78:	46bd      	mov	sp, r7
1a000c7a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c7e:	4770      	bx	lr

1a000c80 <Chip_UART_SetDivisorLatches>:
1a000c80:	b480      	push	{r7}
1a000c82:	b083      	sub	sp, #12
1a000c84:	af00      	add	r7, sp, #0
1a000c86:	6078      	str	r0, [r7, #4]
1a000c88:	460b      	mov	r3, r1
1a000c8a:	70fb      	strb	r3, [r7, #3]
1a000c8c:	4613      	mov	r3, r2
1a000c8e:	70bb      	strb	r3, [r7, #2]
1a000c90:	78fa      	ldrb	r2, [r7, #3]
1a000c92:	687b      	ldr	r3, [r7, #4]
1a000c94:	601a      	str	r2, [r3, #0]
1a000c96:	78ba      	ldrb	r2, [r7, #2]
1a000c98:	687b      	ldr	r3, [r7, #4]
1a000c9a:	605a      	str	r2, [r3, #4]
1a000c9c:	bf00      	nop
1a000c9e:	370c      	adds	r7, #12
1a000ca0:	46bd      	mov	sp, r7
1a000ca2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ca6:	4770      	bx	lr

1a000ca8 <Chip_UART_ReadLineStatus>:
1a000ca8:	b480      	push	{r7}
1a000caa:	b083      	sub	sp, #12
1a000cac:	af00      	add	r7, sp, #0
1a000cae:	6078      	str	r0, [r7, #4]
1a000cb0:	687b      	ldr	r3, [r7, #4]
1a000cb2:	695b      	ldr	r3, [r3, #20]
1a000cb4:	4618      	mov	r0, r3
1a000cb6:	370c      	adds	r7, #12
1a000cb8:	46bd      	mov	sp, r7
1a000cba:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cbe:	4770      	bx	lr

1a000cc0 <Chip_UART_SetAutoBaudReg>:
1a000cc0:	b480      	push	{r7}
1a000cc2:	b083      	sub	sp, #12
1a000cc4:	af00      	add	r7, sp, #0
1a000cc6:	6078      	str	r0, [r7, #4]
1a000cc8:	6039      	str	r1, [r7, #0]
1a000cca:	687b      	ldr	r3, [r7, #4]
1a000ccc:	6a1a      	ldr	r2, [r3, #32]
1a000cce:	683b      	ldr	r3, [r7, #0]
1a000cd0:	431a      	orrs	r2, r3
1a000cd2:	687b      	ldr	r3, [r7, #4]
1a000cd4:	621a      	str	r2, [r3, #32]
1a000cd6:	bf00      	nop
1a000cd8:	370c      	adds	r7, #12
1a000cda:	46bd      	mov	sp, r7
1a000cdc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ce0:	4770      	bx	lr
1a000ce2:	Address 0x000000001a000ce2 is out of bounds.


1a000ce4 <Chip_UART_GetIndex>:
1a000ce4:	b480      	push	{r7}
1a000ce6:	b085      	sub	sp, #20
1a000ce8:	af00      	add	r7, sp, #0
1a000cea:	6078      	str	r0, [r7, #4]
1a000cec:	687b      	ldr	r3, [r7, #4]
1a000cee:	60fb      	str	r3, [r7, #12]
1a000cf0:	68fb      	ldr	r3, [r7, #12]
1a000cf2:	4a10      	ldr	r2, [pc, #64]	; (1a000d34 <Chip_UART_GetIndex+0x50>)
1a000cf4:	4293      	cmp	r3, r2
1a000cf6:	d00f      	beq.n	1a000d18 <Chip_UART_GetIndex+0x34>
1a000cf8:	4a0e      	ldr	r2, [pc, #56]	; (1a000d34 <Chip_UART_GetIndex+0x50>)
1a000cfa:	4293      	cmp	r3, r2
1a000cfc:	d803      	bhi.n	1a000d06 <Chip_UART_GetIndex+0x22>
1a000cfe:	4a0e      	ldr	r2, [pc, #56]	; (1a000d38 <Chip_UART_GetIndex+0x54>)
1a000d00:	4293      	cmp	r3, r2
1a000d02:	d007      	beq.n	1a000d14 <Chip_UART_GetIndex+0x30>
1a000d04:	e00e      	b.n	1a000d24 <Chip_UART_GetIndex+0x40>
1a000d06:	4a0d      	ldr	r2, [pc, #52]	; (1a000d3c <Chip_UART_GetIndex+0x58>)
1a000d08:	4293      	cmp	r3, r2
1a000d0a:	d007      	beq.n	1a000d1c <Chip_UART_GetIndex+0x38>
1a000d0c:	4a0c      	ldr	r2, [pc, #48]	; (1a000d40 <Chip_UART_GetIndex+0x5c>)
1a000d0e:	4293      	cmp	r3, r2
1a000d10:	d006      	beq.n	1a000d20 <Chip_UART_GetIndex+0x3c>
1a000d12:	e007      	b.n	1a000d24 <Chip_UART_GetIndex+0x40>
1a000d14:	2300      	movs	r3, #0
1a000d16:	e006      	b.n	1a000d26 <Chip_UART_GetIndex+0x42>
1a000d18:	2301      	movs	r3, #1
1a000d1a:	e004      	b.n	1a000d26 <Chip_UART_GetIndex+0x42>
1a000d1c:	2302      	movs	r3, #2
1a000d1e:	e002      	b.n	1a000d26 <Chip_UART_GetIndex+0x42>
1a000d20:	2303      	movs	r3, #3
1a000d22:	e000      	b.n	1a000d26 <Chip_UART_GetIndex+0x42>
1a000d24:	2300      	movs	r3, #0
1a000d26:	4618      	mov	r0, r3
1a000d28:	3714      	adds	r7, #20
1a000d2a:	46bd      	mov	sp, r7
1a000d2c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d30:	4770      	bx	lr
1a000d32:	bf00      	nop
1a000d34:	40082000 	.word	0x40082000
1a000d38:	40081000 	.word	0x40081000
1a000d3c:	400c1000 	.word	0x400c1000
1a000d40:	400c2000 	.word	0x400c2000

1a000d44 <Chip_UART_ABIntHandler>:
1a000d44:	b580      	push	{r7, lr}
1a000d46:	b082      	sub	sp, #8
1a000d48:	af00      	add	r7, sp, #0
1a000d4a:	6078      	str	r0, [r7, #4]
1a000d4c:	6878      	ldr	r0, [r7, #4]
1a000d4e:	f7ff ff4f 	bl	1a000bf0 <Chip_UART_ReadIntIDReg>
1a000d52:	4603      	mov	r3, r0
1a000d54:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a000d58:	2b00      	cmp	r3, #0
1a000d5a:	d011      	beq.n	1a000d80 <Chip_UART_ABIntHandler+0x3c>
1a000d5c:	f44f 7180 	mov.w	r1, #256	; 0x100
1a000d60:	6878      	ldr	r0, [r7, #4]
1a000d62:	f7ff ffad 	bl	1a000cc0 <Chip_UART_SetAutoBaudReg>
1a000d66:	f44f 7180 	mov.w	r1, #256	; 0x100
1a000d6a:	6878      	ldr	r0, [r7, #4]
1a000d6c:	f7ff ff2e 	bl	1a000bcc <Chip_UART_IntDisable>
1a000d70:	4b0e      	ldr	r3, [pc, #56]	; (1a000dac <Chip_UART_ABIntHandler+0x68>)
1a000d72:	781b      	ldrb	r3, [r3, #0]
1a000d74:	b2db      	uxtb	r3, r3
1a000d76:	2b00      	cmp	r3, #0
1a000d78:	d102      	bne.n	1a000d80 <Chip_UART_ABIntHandler+0x3c>
1a000d7a:	4b0c      	ldr	r3, [pc, #48]	; (1a000dac <Chip_UART_ABIntHandler+0x68>)
1a000d7c:	2201      	movs	r2, #1
1a000d7e:	701a      	strb	r2, [r3, #0]
1a000d80:	6878      	ldr	r0, [r7, #4]
1a000d82:	f7ff ff35 	bl	1a000bf0 <Chip_UART_ReadIntIDReg>
1a000d86:	4603      	mov	r3, r0
1a000d88:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a000d8c:	2b00      	cmp	r3, #0
1a000d8e:	d009      	beq.n	1a000da4 <Chip_UART_ABIntHandler+0x60>
1a000d90:	f44f 7100 	mov.w	r1, #512	; 0x200
1a000d94:	6878      	ldr	r0, [r7, #4]
1a000d96:	f7ff ff93 	bl	1a000cc0 <Chip_UART_SetAutoBaudReg>
1a000d9a:	f44f 7100 	mov.w	r1, #512	; 0x200
1a000d9e:	6878      	ldr	r0, [r7, #4]
1a000da0:	f7ff ff14 	bl	1a000bcc <Chip_UART_IntDisable>
1a000da4:	bf00      	nop
1a000da6:	3708      	adds	r7, #8
1a000da8:	46bd      	mov	sp, r7
1a000daa:	bd80      	pop	{r7, pc}
1a000dac:	10000428 	.word	0x10000428

1a000db0 <Chip_UART_Init>:
1a000db0:	b580      	push	{r7, lr}
1a000db2:	b084      	sub	sp, #16
1a000db4:	af00      	add	r7, sp, #0
1a000db6:	6078      	str	r0, [r7, #4]
1a000db8:	68fb      	ldr	r3, [r7, #12]
1a000dba:	6878      	ldr	r0, [r7, #4]
1a000dbc:	f7ff ff92 	bl	1a000ce4 <Chip_UART_GetIndex>
1a000dc0:	4602      	mov	r2, r0
1a000dc2:	4b1b      	ldr	r3, [pc, #108]	; (1a000e30 <Chip_UART_Init+0x80>)
1a000dc4:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a000dc8:	2301      	movs	r3, #1
1a000dca:	2201      	movs	r2, #1
1a000dcc:	2101      	movs	r1, #1
1a000dce:	f000 fe3b 	bl	1a001a48 <Chip_Clock_EnableOpts>
1a000dd2:	2107      	movs	r1, #7
1a000dd4:	6878      	ldr	r0, [r7, #4]
1a000dd6:	f7ff ff17 	bl	1a000c08 <Chip_UART_SetupFIFOS>
1a000dda:	6878      	ldr	r0, [r7, #4]
1a000ddc:	f7ff fecd 	bl	1a000b7a <Chip_UART_TXDisable>
1a000de0:	687b      	ldr	r3, [r7, #4]
1a000de2:	2200      	movs	r2, #0
1a000de4:	605a      	str	r2, [r3, #4]
1a000de6:	687b      	ldr	r3, [r7, #4]
1a000de8:	2200      	movs	r2, #0
1a000dea:	60da      	str	r2, [r3, #12]
1a000dec:	687b      	ldr	r3, [r7, #4]
1a000dee:	2200      	movs	r2, #0
1a000df0:	621a      	str	r2, [r3, #32]
1a000df2:	687b      	ldr	r3, [r7, #4]
1a000df4:	2200      	movs	r2, #0
1a000df6:	64da      	str	r2, [r3, #76]	; 0x4c
1a000df8:	687b      	ldr	r3, [r7, #4]
1a000dfa:	2200      	movs	r2, #0
1a000dfc:	655a      	str	r2, [r3, #84]	; 0x54
1a000dfe:	687b      	ldr	r3, [r7, #4]
1a000e00:	2200      	movs	r2, #0
1a000e02:	651a      	str	r2, [r3, #80]	; 0x50
1a000e04:	687b      	ldr	r3, [r7, #4]
1a000e06:	4a0b      	ldr	r2, [pc, #44]	; (1a000e34 <Chip_UART_Init+0x84>)
1a000e08:	4293      	cmp	r3, r2
1a000e0a:	d105      	bne.n	1a000e18 <Chip_UART_Init+0x68>
1a000e0c:	687b      	ldr	r3, [r7, #4]
1a000e0e:	2200      	movs	r2, #0
1a000e10:	611a      	str	r2, [r3, #16]
1a000e12:	687b      	ldr	r3, [r7, #4]
1a000e14:	699b      	ldr	r3, [r3, #24]
1a000e16:	60fb      	str	r3, [r7, #12]
1a000e18:	2103      	movs	r1, #3
1a000e1a:	6878      	ldr	r0, [r7, #4]
1a000e1c:	f7ff ff02 	bl	1a000c24 <Chip_UART_ConfigData>
1a000e20:	687b      	ldr	r3, [r7, #4]
1a000e22:	2210      	movs	r2, #16
1a000e24:	629a      	str	r2, [r3, #40]	; 0x28
1a000e26:	bf00      	nop
1a000e28:	3710      	adds	r7, #16
1a000e2a:	46bd      	mov	sp, r7
1a000e2c:	bd80      	pop	{r7, pc}
1a000e2e:	bf00      	nop
1a000e30:	1a001dcc 	.word	0x1a001dcc
1a000e34:	40082000 	.word	0x40082000

1a000e38 <Chip_UART_SetBaud>:
1a000e38:	b580      	push	{r7, lr}
1a000e3a:	b086      	sub	sp, #24
1a000e3c:	af00      	add	r7, sp, #0
1a000e3e:	6078      	str	r0, [r7, #4]
1a000e40:	6039      	str	r1, [r7, #0]
1a000e42:	6878      	ldr	r0, [r7, #4]
1a000e44:	f7ff ff4e 	bl	1a000ce4 <Chip_UART_GetIndex>
1a000e48:	4602      	mov	r2, r0
1a000e4a:	4b16      	ldr	r3, [pc, #88]	; (1a000ea4 <Chip_UART_SetBaud+0x6c>)
1a000e4c:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a000e50:	4618      	mov	r0, r3
1a000e52:	f000 fe67 	bl	1a001b24 <Chip_Clock_GetRate>
1a000e56:	6178      	str	r0, [r7, #20]
1a000e58:	683b      	ldr	r3, [r7, #0]
1a000e5a:	011b      	lsls	r3, r3, #4
1a000e5c:	697a      	ldr	r2, [r7, #20]
1a000e5e:	fbb2 f3f3 	udiv	r3, r2, r3
1a000e62:	613b      	str	r3, [r7, #16]
1a000e64:	693b      	ldr	r3, [r7, #16]
1a000e66:	0a1b      	lsrs	r3, r3, #8
1a000e68:	60fb      	str	r3, [r7, #12]
1a000e6a:	68fb      	ldr	r3, [r7, #12]
1a000e6c:	021b      	lsls	r3, r3, #8
1a000e6e:	693a      	ldr	r2, [r7, #16]
1a000e70:	1ad3      	subs	r3, r2, r3
1a000e72:	60bb      	str	r3, [r7, #8]
1a000e74:	6878      	ldr	r0, [r7, #4]
1a000e76:	f7ff fee3 	bl	1a000c40 <Chip_UART_EnableDivisorAccess>
1a000e7a:	68bb      	ldr	r3, [r7, #8]
1a000e7c:	b2db      	uxtb	r3, r3
1a000e7e:	68fa      	ldr	r2, [r7, #12]
1a000e80:	b2d2      	uxtb	r2, r2
1a000e82:	4619      	mov	r1, r3
1a000e84:	6878      	ldr	r0, [r7, #4]
1a000e86:	f7ff fefb 	bl	1a000c80 <Chip_UART_SetDivisorLatches>
1a000e8a:	6878      	ldr	r0, [r7, #4]
1a000e8c:	f7ff fee8 	bl	1a000c60 <Chip_UART_DisableDivisorAccess>
1a000e90:	697a      	ldr	r2, [r7, #20]
1a000e92:	693b      	ldr	r3, [r7, #16]
1a000e94:	fbb2 f3f3 	udiv	r3, r2, r3
1a000e98:	091b      	lsrs	r3, r3, #4
1a000e9a:	4618      	mov	r0, r3
1a000e9c:	3718      	adds	r7, #24
1a000e9e:	46bd      	mov	sp, r7
1a000ea0:	bd80      	pop	{r7, pc}
1a000ea2:	bf00      	nop
1a000ea4:	1a001dd4 	.word	0x1a001dd4

1a000ea8 <Chip_UART_RXIntHandlerRB>:
1a000ea8:	b580      	push	{r7, lr}
1a000eaa:	b084      	sub	sp, #16
1a000eac:	af00      	add	r7, sp, #0
1a000eae:	6078      	str	r0, [r7, #4]
1a000eb0:	6039      	str	r1, [r7, #0]
1a000eb2:	e00a      	b.n	1a000eca <Chip_UART_RXIntHandlerRB+0x22>
1a000eb4:	6878      	ldr	r0, [r7, #4]
1a000eb6:	f7ff fe7c 	bl	1a000bb2 <Chip_UART_ReadByte>
1a000eba:	4603      	mov	r3, r0
1a000ebc:	73fb      	strb	r3, [r7, #15]
1a000ebe:	f107 030f 	add.w	r3, r7, #15
1a000ec2:	4619      	mov	r1, r3
1a000ec4:	6838      	ldr	r0, [r7, #0]
1a000ec6:	f000 f932 	bl	1a00112e <RingBuffer_Insert>
1a000eca:	6878      	ldr	r0, [r7, #4]
1a000ecc:	f7ff feec 	bl	1a000ca8 <Chip_UART_ReadLineStatus>
1a000ed0:	4603      	mov	r3, r0
1a000ed2:	f003 0301 	and.w	r3, r3, #1
1a000ed6:	2b00      	cmp	r3, #0
1a000ed8:	d1ec      	bne.n	1a000eb4 <Chip_UART_RXIntHandlerRB+0xc>
1a000eda:	bf00      	nop
1a000edc:	3710      	adds	r7, #16
1a000ede:	46bd      	mov	sp, r7
1a000ee0:	bd80      	pop	{r7, pc}

1a000ee2 <Chip_UART_TXIntHandlerRB>:
1a000ee2:	b580      	push	{r7, lr}
1a000ee4:	b084      	sub	sp, #16
1a000ee6:	af00      	add	r7, sp, #0
1a000ee8:	6078      	str	r0, [r7, #4]
1a000eea:	6039      	str	r1, [r7, #0]
1a000eec:	e004      	b.n	1a000ef8 <Chip_UART_TXIntHandlerRB+0x16>
1a000eee:	7bfb      	ldrb	r3, [r7, #15]
1a000ef0:	4619      	mov	r1, r3
1a000ef2:	6878      	ldr	r0, [r7, #4]
1a000ef4:	f7ff fe4e 	bl	1a000b94 <Chip_UART_SendByte>
1a000ef8:	6878      	ldr	r0, [r7, #4]
1a000efa:	f7ff fed5 	bl	1a000ca8 <Chip_UART_ReadLineStatus>
1a000efe:	4603      	mov	r3, r0
1a000f00:	f003 0320 	and.w	r3, r3, #32
1a000f04:	2b00      	cmp	r3, #0
1a000f06:	d008      	beq.n	1a000f1a <Chip_UART_TXIntHandlerRB+0x38>
1a000f08:	f107 030f 	add.w	r3, r7, #15
1a000f0c:	4619      	mov	r1, r3
1a000f0e:	6838      	ldr	r0, [r7, #0]
1a000f10:	f000 f93b 	bl	1a00118a <RingBuffer_Pop>
1a000f14:	4603      	mov	r3, r0
1a000f16:	2b00      	cmp	r3, #0
1a000f18:	d1e9      	bne.n	1a000eee <Chip_UART_TXIntHandlerRB+0xc>
1a000f1a:	6838      	ldr	r0, [r7, #0]
1a000f1c:	f7ff fe18 	bl	1a000b50 <RingBuffer_IsEmpty>
1a000f20:	4603      	mov	r3, r0
1a000f22:	2b00      	cmp	r3, #0
1a000f24:	d003      	beq.n	1a000f2e <Chip_UART_TXIntHandlerRB+0x4c>
1a000f26:	2102      	movs	r1, #2
1a000f28:	6878      	ldr	r0, [r7, #4]
1a000f2a:	f7ff fe4f 	bl	1a000bcc <Chip_UART_IntDisable>
1a000f2e:	bf00      	nop
1a000f30:	3710      	adds	r7, #16
1a000f32:	46bd      	mov	sp, r7
1a000f34:	bd80      	pop	{r7, pc}

1a000f36 <Chip_UART_IRQRBHandler>:
1a000f36:	b580      	push	{r7, lr}
1a000f38:	b084      	sub	sp, #16
1a000f3a:	af00      	add	r7, sp, #0
1a000f3c:	60f8      	str	r0, [r7, #12]
1a000f3e:	60b9      	str	r1, [r7, #8]
1a000f40:	607a      	str	r2, [r7, #4]
1a000f42:	68fb      	ldr	r3, [r7, #12]
1a000f44:	685b      	ldr	r3, [r3, #4]
1a000f46:	f003 0302 	and.w	r3, r3, #2
1a000f4a:	2b00      	cmp	r3, #0
1a000f4c:	d00d      	beq.n	1a000f6a <Chip_UART_IRQRBHandler+0x34>
1a000f4e:	6879      	ldr	r1, [r7, #4]
1a000f50:	68f8      	ldr	r0, [r7, #12]
1a000f52:	f7ff ffc6 	bl	1a000ee2 <Chip_UART_TXIntHandlerRB>
1a000f56:	6878      	ldr	r0, [r7, #4]
1a000f58:	f7ff fdfa 	bl	1a000b50 <RingBuffer_IsEmpty>
1a000f5c:	4603      	mov	r3, r0
1a000f5e:	2b00      	cmp	r3, #0
1a000f60:	d003      	beq.n	1a000f6a <Chip_UART_IRQRBHandler+0x34>
1a000f62:	2102      	movs	r1, #2
1a000f64:	68f8      	ldr	r0, [r7, #12]
1a000f66:	f7ff fe31 	bl	1a000bcc <Chip_UART_IntDisable>
1a000f6a:	68b9      	ldr	r1, [r7, #8]
1a000f6c:	68f8      	ldr	r0, [r7, #12]
1a000f6e:	f7ff ff9b 	bl	1a000ea8 <Chip_UART_RXIntHandlerRB>
1a000f72:	68f8      	ldr	r0, [r7, #12]
1a000f74:	f7ff fee6 	bl	1a000d44 <Chip_UART_ABIntHandler>
1a000f78:	bf00      	nop
1a000f7a:	3710      	adds	r7, #16
1a000f7c:	46bd      	mov	sp, r7
1a000f7e:	bd80      	pop	{r7, pc}

1a000f80 <Chip_TIMER_Enable>:
1a000f80:	b480      	push	{r7}
1a000f82:	b083      	sub	sp, #12
1a000f84:	af00      	add	r7, sp, #0
1a000f86:	6078      	str	r0, [r7, #4]
1a000f88:	687b      	ldr	r3, [r7, #4]
1a000f8a:	685b      	ldr	r3, [r3, #4]
1a000f8c:	f043 0201 	orr.w	r2, r3, #1
1a000f90:	687b      	ldr	r3, [r7, #4]
1a000f92:	605a      	str	r2, [r3, #4]
1a000f94:	bf00      	nop
1a000f96:	370c      	adds	r7, #12
1a000f98:	46bd      	mov	sp, r7
1a000f9a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f9e:	4770      	bx	lr

1a000fa0 <Chip_TIMER_ReadCount>:
1a000fa0:	b480      	push	{r7}
1a000fa2:	b083      	sub	sp, #12
1a000fa4:	af00      	add	r7, sp, #0
1a000fa6:	6078      	str	r0, [r7, #4]
1a000fa8:	687b      	ldr	r3, [r7, #4]
1a000faa:	689b      	ldr	r3, [r3, #8]
1a000fac:	4618      	mov	r0, r3
1a000fae:	370c      	adds	r7, #12
1a000fb0:	46bd      	mov	sp, r7
1a000fb2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fb6:	4770      	bx	lr

1a000fb8 <Chip_TIMER_PrescaleSet>:
1a000fb8:	b480      	push	{r7}
1a000fba:	b083      	sub	sp, #12
1a000fbc:	af00      	add	r7, sp, #0
1a000fbe:	6078      	str	r0, [r7, #4]
1a000fc0:	6039      	str	r1, [r7, #0]
1a000fc2:	687b      	ldr	r3, [r7, #4]
1a000fc4:	683a      	ldr	r2, [r7, #0]
1a000fc6:	60da      	str	r2, [r3, #12]
1a000fc8:	bf00      	nop
1a000fca:	370c      	adds	r7, #12
1a000fcc:	46bd      	mov	sp, r7
1a000fce:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fd2:	4770      	bx	lr

1a000fd4 <StopWatch_Init>:
1a000fd4:	b580      	push	{r7, lr}
1a000fd6:	b082      	sub	sp, #8
1a000fd8:	af00      	add	r7, sp, #0
1a000fda:	2308      	movs	r3, #8
1a000fdc:	607b      	str	r3, [r7, #4]
1a000fde:	4814      	ldr	r0, [pc, #80]	; (1a001030 <StopWatch_Init+0x5c>)
1a000fe0:	f000 fe22 	bl	1a001c28 <Chip_TIMER_Init>
1a000fe4:	687b      	ldr	r3, [r7, #4]
1a000fe6:	3b01      	subs	r3, #1
1a000fe8:	4619      	mov	r1, r3
1a000fea:	4811      	ldr	r0, [pc, #68]	; (1a001030 <StopWatch_Init+0x5c>)
1a000fec:	f7ff ffe4 	bl	1a000fb8 <Chip_TIMER_PrescaleSet>
1a000ff0:	480f      	ldr	r0, [pc, #60]	; (1a001030 <StopWatch_Init+0x5c>)
1a000ff2:	f7ff ffc5 	bl	1a000f80 <Chip_TIMER_Enable>
1a000ff6:	2084      	movs	r0, #132	; 0x84
1a000ff8:	f000 fd94 	bl	1a001b24 <Chip_Clock_GetRate>
1a000ffc:	4602      	mov	r2, r0
1a000ffe:	687b      	ldr	r3, [r7, #4]
1a001000:	fbb2 f3f3 	udiv	r3, r2, r3
1a001004:	4a0b      	ldr	r2, [pc, #44]	; (1a001034 <StopWatch_Init+0x60>)
1a001006:	6013      	str	r3, [r2, #0]
1a001008:	4b0a      	ldr	r3, [pc, #40]	; (1a001034 <StopWatch_Init+0x60>)
1a00100a:	681b      	ldr	r3, [r3, #0]
1a00100c:	4a0a      	ldr	r2, [pc, #40]	; (1a001038 <StopWatch_Init+0x64>)
1a00100e:	fba2 2303 	umull	r2, r3, r2, r3
1a001012:	099b      	lsrs	r3, r3, #6
1a001014:	4a09      	ldr	r2, [pc, #36]	; (1a00103c <StopWatch_Init+0x68>)
1a001016:	6013      	str	r3, [r2, #0]
1a001018:	4b06      	ldr	r3, [pc, #24]	; (1a001034 <StopWatch_Init+0x60>)
1a00101a:	681b      	ldr	r3, [r3, #0]
1a00101c:	4a08      	ldr	r2, [pc, #32]	; (1a001040 <StopWatch_Init+0x6c>)
1a00101e:	fba2 2303 	umull	r2, r3, r2, r3
1a001022:	0c9b      	lsrs	r3, r3, #18
1a001024:	4a07      	ldr	r2, [pc, #28]	; (1a001044 <StopWatch_Init+0x70>)
1a001026:	6013      	str	r3, [r2, #0]
1a001028:	bf00      	nop
1a00102a:	3708      	adds	r7, #8
1a00102c:	46bd      	mov	sp, r7
1a00102e:	bd80      	pop	{r7, pc}
1a001030:	40084000 	.word	0x40084000
1a001034:	1000042c 	.word	0x1000042c
1a001038:	10624dd3 	.word	0x10624dd3
1a00103c:	10000430 	.word	0x10000430
1a001040:	431bde83 	.word	0x431bde83
1a001044:	10000434 	.word	0x10000434

1a001048 <StopWatch_Start>:
1a001048:	b580      	push	{r7, lr}
1a00104a:	af00      	add	r7, sp, #0
1a00104c:	4802      	ldr	r0, [pc, #8]	; (1a001058 <StopWatch_Start+0x10>)
1a00104e:	f7ff ffa7 	bl	1a000fa0 <Chip_TIMER_ReadCount>
1a001052:	4603      	mov	r3, r0
1a001054:	4618      	mov	r0, r3
1a001056:	bd80      	pop	{r7, pc}
1a001058:	40084000 	.word	0x40084000

1a00105c <StopWatch_MsToTicks>:
1a00105c:	b480      	push	{r7}
1a00105e:	b083      	sub	sp, #12
1a001060:	af00      	add	r7, sp, #0
1a001062:	6078      	str	r0, [r7, #4]
1a001064:	4b05      	ldr	r3, [pc, #20]	; (1a00107c <StopWatch_MsToTicks+0x20>)
1a001066:	681b      	ldr	r3, [r3, #0]
1a001068:	687a      	ldr	r2, [r7, #4]
1a00106a:	fb02 f303 	mul.w	r3, r2, r3
1a00106e:	4618      	mov	r0, r3
1a001070:	370c      	adds	r7, #12
1a001072:	46bd      	mov	sp, r7
1a001074:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001078:	4770      	bx	lr
1a00107a:	bf00      	nop
1a00107c:	10000430 	.word	0x10000430

1a001080 <RingBuffer_GetCount>:
1a001080:	b480      	push	{r7}
1a001082:	b083      	sub	sp, #12
1a001084:	af00      	add	r7, sp, #0
1a001086:	6078      	str	r0, [r7, #4]
1a001088:	687b      	ldr	r3, [r7, #4]
1a00108a:	330c      	adds	r3, #12
1a00108c:	681a      	ldr	r2, [r3, #0]
1a00108e:	687b      	ldr	r3, [r7, #4]
1a001090:	3310      	adds	r3, #16
1a001092:	681b      	ldr	r3, [r3, #0]
1a001094:	1ad3      	subs	r3, r2, r3
1a001096:	4618      	mov	r0, r3
1a001098:	370c      	adds	r7, #12
1a00109a:	46bd      	mov	sp, r7
1a00109c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010a0:	4770      	bx	lr

1a0010a2 <RingBuffer_IsFull>:
1a0010a2:	b580      	push	{r7, lr}
1a0010a4:	b082      	sub	sp, #8
1a0010a6:	af00      	add	r7, sp, #0
1a0010a8:	6078      	str	r0, [r7, #4]
1a0010aa:	6878      	ldr	r0, [r7, #4]
1a0010ac:	f7ff ffe8 	bl	1a001080 <RingBuffer_GetCount>
1a0010b0:	4602      	mov	r2, r0
1a0010b2:	687b      	ldr	r3, [r7, #4]
1a0010b4:	685b      	ldr	r3, [r3, #4]
1a0010b6:	429a      	cmp	r2, r3
1a0010b8:	bfac      	ite	ge
1a0010ba:	2301      	movge	r3, #1
1a0010bc:	2300      	movlt	r3, #0
1a0010be:	b2db      	uxtb	r3, r3
1a0010c0:	4618      	mov	r0, r3
1a0010c2:	3708      	adds	r7, #8
1a0010c4:	46bd      	mov	sp, r7
1a0010c6:	bd80      	pop	{r7, pc}

1a0010c8 <RingBuffer_IsEmpty>:
1a0010c8:	b480      	push	{r7}
1a0010ca:	b083      	sub	sp, #12
1a0010cc:	af00      	add	r7, sp, #0
1a0010ce:	6078      	str	r0, [r7, #4]
1a0010d0:	687b      	ldr	r3, [r7, #4]
1a0010d2:	330c      	adds	r3, #12
1a0010d4:	681a      	ldr	r2, [r3, #0]
1a0010d6:	687b      	ldr	r3, [r7, #4]
1a0010d8:	3310      	adds	r3, #16
1a0010da:	681b      	ldr	r3, [r3, #0]
1a0010dc:	429a      	cmp	r2, r3
1a0010de:	bf0c      	ite	eq
1a0010e0:	2301      	moveq	r3, #1
1a0010e2:	2300      	movne	r3, #0
1a0010e4:	b2db      	uxtb	r3, r3
1a0010e6:	4618      	mov	r0, r3
1a0010e8:	370c      	adds	r7, #12
1a0010ea:	46bd      	mov	sp, r7
1a0010ec:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010f0:	4770      	bx	lr

1a0010f2 <RingBuffer_Init>:
1a0010f2:	b480      	push	{r7}
1a0010f4:	b085      	sub	sp, #20
1a0010f6:	af00      	add	r7, sp, #0
1a0010f8:	60f8      	str	r0, [r7, #12]
1a0010fa:	60b9      	str	r1, [r7, #8]
1a0010fc:	607a      	str	r2, [r7, #4]
1a0010fe:	603b      	str	r3, [r7, #0]
1a001100:	68fb      	ldr	r3, [r7, #12]
1a001102:	68ba      	ldr	r2, [r7, #8]
1a001104:	601a      	str	r2, [r3, #0]
1a001106:	68fb      	ldr	r3, [r7, #12]
1a001108:	683a      	ldr	r2, [r7, #0]
1a00110a:	605a      	str	r2, [r3, #4]
1a00110c:	68fb      	ldr	r3, [r7, #12]
1a00110e:	687a      	ldr	r2, [r7, #4]
1a001110:	609a      	str	r2, [r3, #8]
1a001112:	68fb      	ldr	r3, [r7, #12]
1a001114:	2200      	movs	r2, #0
1a001116:	611a      	str	r2, [r3, #16]
1a001118:	68fb      	ldr	r3, [r7, #12]
1a00111a:	691a      	ldr	r2, [r3, #16]
1a00111c:	68fb      	ldr	r3, [r7, #12]
1a00111e:	60da      	str	r2, [r3, #12]
1a001120:	2301      	movs	r3, #1
1a001122:	4618      	mov	r0, r3
1a001124:	3714      	adds	r7, #20
1a001126:	46bd      	mov	sp, r7
1a001128:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00112c:	4770      	bx	lr

1a00112e <RingBuffer_Insert>:
1a00112e:	b580      	push	{r7, lr}
1a001130:	b084      	sub	sp, #16
1a001132:	af00      	add	r7, sp, #0
1a001134:	6078      	str	r0, [r7, #4]
1a001136:	6039      	str	r1, [r7, #0]
1a001138:	687b      	ldr	r3, [r7, #4]
1a00113a:	681b      	ldr	r3, [r3, #0]
1a00113c:	60fb      	str	r3, [r7, #12]
1a00113e:	6878      	ldr	r0, [r7, #4]
1a001140:	f7ff ffaf 	bl	1a0010a2 <RingBuffer_IsFull>
1a001144:	4603      	mov	r3, r0
1a001146:	2b00      	cmp	r3, #0
1a001148:	d001      	beq.n	1a00114e <RingBuffer_Insert+0x20>
1a00114a:	2300      	movs	r3, #0
1a00114c:	e019      	b.n	1a001182 <RingBuffer_Insert+0x54>
1a00114e:	687b      	ldr	r3, [r7, #4]
1a001150:	68db      	ldr	r3, [r3, #12]
1a001152:	687a      	ldr	r2, [r7, #4]
1a001154:	6852      	ldr	r2, [r2, #4]
1a001156:	3a01      	subs	r2, #1
1a001158:	4013      	ands	r3, r2
1a00115a:	687a      	ldr	r2, [r7, #4]
1a00115c:	6892      	ldr	r2, [r2, #8]
1a00115e:	fb02 f303 	mul.w	r3, r2, r3
1a001162:	68fa      	ldr	r2, [r7, #12]
1a001164:	4413      	add	r3, r2
1a001166:	60fb      	str	r3, [r7, #12]
1a001168:	687b      	ldr	r3, [r7, #4]
1a00116a:	689b      	ldr	r3, [r3, #8]
1a00116c:	461a      	mov	r2, r3
1a00116e:	6839      	ldr	r1, [r7, #0]
1a001170:	68f8      	ldr	r0, [r7, #12]
1a001172:	f000 fd69 	bl	1a001c48 <memcpy>
1a001176:	687b      	ldr	r3, [r7, #4]
1a001178:	68db      	ldr	r3, [r3, #12]
1a00117a:	1c5a      	adds	r2, r3, #1
1a00117c:	687b      	ldr	r3, [r7, #4]
1a00117e:	60da      	str	r2, [r3, #12]
1a001180:	2301      	movs	r3, #1
1a001182:	4618      	mov	r0, r3
1a001184:	3710      	adds	r7, #16
1a001186:	46bd      	mov	sp, r7
1a001188:	bd80      	pop	{r7, pc}

1a00118a <RingBuffer_Pop>:
1a00118a:	b580      	push	{r7, lr}
1a00118c:	b084      	sub	sp, #16
1a00118e:	af00      	add	r7, sp, #0
1a001190:	6078      	str	r0, [r7, #4]
1a001192:	6039      	str	r1, [r7, #0]
1a001194:	687b      	ldr	r3, [r7, #4]
1a001196:	681b      	ldr	r3, [r3, #0]
1a001198:	60fb      	str	r3, [r7, #12]
1a00119a:	6878      	ldr	r0, [r7, #4]
1a00119c:	f7ff ff94 	bl	1a0010c8 <RingBuffer_IsEmpty>
1a0011a0:	4603      	mov	r3, r0
1a0011a2:	2b00      	cmp	r3, #0
1a0011a4:	d001      	beq.n	1a0011aa <RingBuffer_Pop+0x20>
1a0011a6:	2300      	movs	r3, #0
1a0011a8:	e019      	b.n	1a0011de <RingBuffer_Pop+0x54>
1a0011aa:	687b      	ldr	r3, [r7, #4]
1a0011ac:	691b      	ldr	r3, [r3, #16]
1a0011ae:	687a      	ldr	r2, [r7, #4]
1a0011b0:	6852      	ldr	r2, [r2, #4]
1a0011b2:	3a01      	subs	r2, #1
1a0011b4:	4013      	ands	r3, r2
1a0011b6:	687a      	ldr	r2, [r7, #4]
1a0011b8:	6892      	ldr	r2, [r2, #8]
1a0011ba:	fb02 f303 	mul.w	r3, r2, r3
1a0011be:	68fa      	ldr	r2, [r7, #12]
1a0011c0:	4413      	add	r3, r2
1a0011c2:	60fb      	str	r3, [r7, #12]
1a0011c4:	687b      	ldr	r3, [r7, #4]
1a0011c6:	689b      	ldr	r3, [r3, #8]
1a0011c8:	461a      	mov	r2, r3
1a0011ca:	68f9      	ldr	r1, [r7, #12]
1a0011cc:	6838      	ldr	r0, [r7, #0]
1a0011ce:	f000 fd3b 	bl	1a001c48 <memcpy>
1a0011d2:	687b      	ldr	r3, [r7, #4]
1a0011d4:	691b      	ldr	r3, [r3, #16]
1a0011d6:	1c5a      	adds	r2, r3, #1
1a0011d8:	687b      	ldr	r3, [r7, #4]
1a0011da:	611a      	str	r2, [r3, #16]
1a0011dc:	2301      	movs	r3, #1
1a0011de:	4618      	mov	r0, r3
1a0011e0:	3710      	adds	r7, #16
1a0011e2:	46bd      	mov	sp, r7
1a0011e4:	bd80      	pop	{r7, pc}

1a0011e6 <ABS>:
1a0011e6:	b480      	push	{r7}
1a0011e8:	b083      	sub	sp, #12
1a0011ea:	af00      	add	r7, sp, #0
1a0011ec:	6078      	str	r0, [r7, #4]
1a0011ee:	687b      	ldr	r3, [r7, #4]
1a0011f0:	2b00      	cmp	r3, #0
1a0011f2:	da02      	bge.n	1a0011fa <ABS+0x14>
1a0011f4:	687b      	ldr	r3, [r7, #4]
1a0011f6:	425b      	negs	r3, r3
1a0011f8:	e000      	b.n	1a0011fc <ABS+0x16>
1a0011fa:	687b      	ldr	r3, [r7, #4]
1a0011fc:	4618      	mov	r0, r3
1a0011fe:	370c      	adds	r7, #12
1a001200:	46bd      	mov	sp, r7
1a001202:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001206:	4770      	bx	lr

1a001208 <pll_calc_divs>:
1a001208:	b580      	push	{r7, lr}
1a00120a:	b088      	sub	sp, #32
1a00120c:	af00      	add	r7, sp, #0
1a00120e:	6078      	str	r0, [r7, #4]
1a001210:	6039      	str	r1, [r7, #0]
1a001212:	687b      	ldr	r3, [r7, #4]
1a001214:	61fb      	str	r3, [r7, #28]
1a001216:	683b      	ldr	r3, [r7, #0]
1a001218:	681b      	ldr	r3, [r3, #0]
1a00121a:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00121e:	2b00      	cmp	r3, #0
1a001220:	d005      	beq.n	1a00122e <pll_calc_divs+0x26>
1a001222:	683b      	ldr	r3, [r7, #0]
1a001224:	681b      	ldr	r3, [r3, #0]
1a001226:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a00122a:	683b      	ldr	r3, [r7, #0]
1a00122c:	601a      	str	r2, [r3, #0]
1a00122e:	2301      	movs	r3, #1
1a001230:	61bb      	str	r3, [r7, #24]
1a001232:	e06f      	b.n	1a001314 <pll_calc_divs+0x10c>
1a001234:	2300      	movs	r3, #0
1a001236:	613b      	str	r3, [r7, #16]
1a001238:	e066      	b.n	1a001308 <pll_calc_divs+0x100>
1a00123a:	2301      	movs	r3, #1
1a00123c:	617b      	str	r3, [r7, #20]
1a00123e:	e05a      	b.n	1a0012f6 <pll_calc_divs+0xee>
1a001240:	683b      	ldr	r3, [r7, #0]
1a001242:	681b      	ldr	r3, [r3, #0]
1a001244:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a001248:	2b00      	cmp	r3, #0
1a00124a:	d00e      	beq.n	1a00126a <pll_calc_divs+0x62>
1a00124c:	693b      	ldr	r3, [r7, #16]
1a00124e:	3301      	adds	r3, #1
1a001250:	697a      	ldr	r2, [r7, #20]
1a001252:	fa02 f303 	lsl.w	r3, r2, r3
1a001256:	461a      	mov	r2, r3
1a001258:	683b      	ldr	r3, [r7, #0]
1a00125a:	695b      	ldr	r3, [r3, #20]
1a00125c:	fb03 f202 	mul.w	r2, r3, r2
1a001260:	69bb      	ldr	r3, [r7, #24]
1a001262:	fbb2 f3f3 	udiv	r3, r2, r3
1a001266:	60fb      	str	r3, [r7, #12]
1a001268:	e008      	b.n	1a00127c <pll_calc_divs+0x74>
1a00126a:	683b      	ldr	r3, [r7, #0]
1a00126c:	695b      	ldr	r3, [r3, #20]
1a00126e:	697a      	ldr	r2, [r7, #20]
1a001270:	fb02 f203 	mul.w	r2, r2, r3
1a001274:	69bb      	ldr	r3, [r7, #24]
1a001276:	fbb2 f3f3 	udiv	r3, r2, r3
1a00127a:	60fb      	str	r3, [r7, #12]
1a00127c:	68fb      	ldr	r3, [r7, #12]
1a00127e:	4a29      	ldr	r2, [pc, #164]	; (1a001324 <pll_calc_divs+0x11c>)
1a001280:	4293      	cmp	r3, r2
1a001282:	d934      	bls.n	1a0012ee <pll_calc_divs+0xe6>
1a001284:	68fb      	ldr	r3, [r7, #12]
1a001286:	4a28      	ldr	r2, [pc, #160]	; (1a001328 <pll_calc_divs+0x120>)
1a001288:	4293      	cmp	r3, r2
1a00128a:	d839      	bhi.n	1a001300 <pll_calc_divs+0xf8>
1a00128c:	683b      	ldr	r3, [r7, #0]
1a00128e:	681b      	ldr	r3, [r3, #0]
1a001290:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001294:	2b00      	cmp	r3, #0
1a001296:	d002      	beq.n	1a00129e <pll_calc_divs+0x96>
1a001298:	68fb      	ldr	r3, [r7, #12]
1a00129a:	60bb      	str	r3, [r7, #8]
1a00129c:	e005      	b.n	1a0012aa <pll_calc_divs+0xa2>
1a00129e:	693b      	ldr	r3, [r7, #16]
1a0012a0:	3301      	adds	r3, #1
1a0012a2:	68fa      	ldr	r2, [r7, #12]
1a0012a4:	fa22 f303 	lsr.w	r3, r2, r3
1a0012a8:	60bb      	str	r3, [r7, #8]
1a0012aa:	687a      	ldr	r2, [r7, #4]
1a0012ac:	68bb      	ldr	r3, [r7, #8]
1a0012ae:	1ad3      	subs	r3, r2, r3
1a0012b0:	4618      	mov	r0, r3
1a0012b2:	f7ff ff98 	bl	1a0011e6 <ABS>
1a0012b6:	4602      	mov	r2, r0
1a0012b8:	69fb      	ldr	r3, [r7, #28]
1a0012ba:	4293      	cmp	r3, r2
1a0012bc:	d918      	bls.n	1a0012f0 <pll_calc_divs+0xe8>
1a0012be:	683b      	ldr	r3, [r7, #0]
1a0012c0:	69ba      	ldr	r2, [r7, #24]
1a0012c2:	609a      	str	r2, [r3, #8]
1a0012c4:	693b      	ldr	r3, [r7, #16]
1a0012c6:	1c5a      	adds	r2, r3, #1
1a0012c8:	683b      	ldr	r3, [r7, #0]
1a0012ca:	60da      	str	r2, [r3, #12]
1a0012cc:	683b      	ldr	r3, [r7, #0]
1a0012ce:	697a      	ldr	r2, [r7, #20]
1a0012d0:	611a      	str	r2, [r3, #16]
1a0012d2:	683b      	ldr	r3, [r7, #0]
1a0012d4:	68ba      	ldr	r2, [r7, #8]
1a0012d6:	619a      	str	r2, [r3, #24]
1a0012d8:	683b      	ldr	r3, [r7, #0]
1a0012da:	68fa      	ldr	r2, [r7, #12]
1a0012dc:	61da      	str	r2, [r3, #28]
1a0012de:	687a      	ldr	r2, [r7, #4]
1a0012e0:	68bb      	ldr	r3, [r7, #8]
1a0012e2:	1ad3      	subs	r3, r2, r3
1a0012e4:	4618      	mov	r0, r3
1a0012e6:	f7ff ff7e 	bl	1a0011e6 <ABS>
1a0012ea:	61f8      	str	r0, [r7, #28]
1a0012ec:	e000      	b.n	1a0012f0 <pll_calc_divs+0xe8>
1a0012ee:	bf00      	nop
1a0012f0:	697b      	ldr	r3, [r7, #20]
1a0012f2:	3301      	adds	r3, #1
1a0012f4:	617b      	str	r3, [r7, #20]
1a0012f6:	697b      	ldr	r3, [r7, #20]
1a0012f8:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a0012fc:	dda0      	ble.n	1a001240 <pll_calc_divs+0x38>
1a0012fe:	e000      	b.n	1a001302 <pll_calc_divs+0xfa>
1a001300:	bf00      	nop
1a001302:	693b      	ldr	r3, [r7, #16]
1a001304:	3301      	adds	r3, #1
1a001306:	613b      	str	r3, [r7, #16]
1a001308:	693b      	ldr	r3, [r7, #16]
1a00130a:	2b03      	cmp	r3, #3
1a00130c:	dd95      	ble.n	1a00123a <pll_calc_divs+0x32>
1a00130e:	69bb      	ldr	r3, [r7, #24]
1a001310:	3301      	adds	r3, #1
1a001312:	61bb      	str	r3, [r7, #24]
1a001314:	69bb      	ldr	r3, [r7, #24]
1a001316:	2b04      	cmp	r3, #4
1a001318:	dd8c      	ble.n	1a001234 <pll_calc_divs+0x2c>
1a00131a:	bf00      	nop
1a00131c:	3720      	adds	r7, #32
1a00131e:	46bd      	mov	sp, r7
1a001320:	bd80      	pop	{r7, pc}
1a001322:	bf00      	nop
1a001324:	094c5eff 	.word	0x094c5eff
1a001328:	1312d000 	.word	0x1312d000

1a00132c <pll_get_frac>:
1a00132c:	b5b0      	push	{r4, r5, r7, lr}
1a00132e:	b09e      	sub	sp, #120	; 0x78
1a001330:	af00      	add	r7, sp, #0
1a001332:	6078      	str	r0, [r7, #4]
1a001334:	6039      	str	r1, [r7, #0]
1a001336:	f107 030c 	add.w	r3, r7, #12
1a00133a:	2260      	movs	r2, #96	; 0x60
1a00133c:	2100      	movs	r1, #0
1a00133e:	4618      	mov	r0, r3
1a001340:	f7fe ffde 	bl	1a000300 <memset>
1a001344:	68fb      	ldr	r3, [r7, #12]
1a001346:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a00134a:	60fb      	str	r3, [r7, #12]
1a00134c:	683b      	ldr	r3, [r7, #0]
1a00134e:	695b      	ldr	r3, [r3, #20]
1a001350:	623b      	str	r3, [r7, #32]
1a001352:	683b      	ldr	r3, [r7, #0]
1a001354:	791b      	ldrb	r3, [r3, #4]
1a001356:	743b      	strb	r3, [r7, #16]
1a001358:	f107 030c 	add.w	r3, r7, #12
1a00135c:	4619      	mov	r1, r3
1a00135e:	6878      	ldr	r0, [r7, #4]
1a001360:	f7ff ff52 	bl	1a001208 <pll_calc_divs>
1a001364:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001366:	687a      	ldr	r2, [r7, #4]
1a001368:	429a      	cmp	r2, r3
1a00136a:	d10a      	bne.n	1a001382 <pll_get_frac+0x56>
1a00136c:	683b      	ldr	r3, [r7, #0]
1a00136e:	461d      	mov	r5, r3
1a001370:	f107 040c 	add.w	r4, r7, #12
1a001374:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001376:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001378:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00137c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001380:	e08e      	b.n	1a0014a0 <pll_get_frac+0x174>
1a001382:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001384:	687a      	ldr	r2, [r7, #4]
1a001386:	1ad3      	subs	r3, r2, r3
1a001388:	4618      	mov	r0, r3
1a00138a:	f7ff ff2c 	bl	1a0011e6 <ABS>
1a00138e:	4603      	mov	r3, r0
1a001390:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001392:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001394:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001398:	64fb      	str	r3, [r7, #76]	; 0x4c
1a00139a:	683b      	ldr	r3, [r7, #0]
1a00139c:	695b      	ldr	r3, [r3, #20]
1a00139e:	663b      	str	r3, [r7, #96]	; 0x60
1a0013a0:	683b      	ldr	r3, [r7, #0]
1a0013a2:	791b      	ldrb	r3, [r3, #4]
1a0013a4:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a0013a8:	f107 030c 	add.w	r3, r7, #12
1a0013ac:	3340      	adds	r3, #64	; 0x40
1a0013ae:	4619      	mov	r1, r3
1a0013b0:	6878      	ldr	r0, [r7, #4]
1a0013b2:	f7ff ff29 	bl	1a001208 <pll_calc_divs>
1a0013b6:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a0013b8:	687a      	ldr	r2, [r7, #4]
1a0013ba:	429a      	cmp	r2, r3
1a0013bc:	d10a      	bne.n	1a0013d4 <pll_get_frac+0xa8>
1a0013be:	683b      	ldr	r3, [r7, #0]
1a0013c0:	461d      	mov	r5, r3
1a0013c2:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0013c6:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0013c8:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0013ca:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0013ce:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0013d2:	e065      	b.n	1a0014a0 <pll_get_frac+0x174>
1a0013d4:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a0013d6:	687a      	ldr	r2, [r7, #4]
1a0013d8:	1ad3      	subs	r3, r2, r3
1a0013da:	4618      	mov	r0, r3
1a0013dc:	f7ff ff03 	bl	1a0011e6 <ABS>
1a0013e0:	4603      	mov	r3, r0
1a0013e2:	677b      	str	r3, [r7, #116]	; 0x74
1a0013e4:	687b      	ldr	r3, [r7, #4]
1a0013e6:	4a30      	ldr	r2, [pc, #192]	; (1a0014a8 <pll_get_frac+0x17c>)
1a0013e8:	4293      	cmp	r3, r2
1a0013ea:	d81a      	bhi.n	1a001422 <pll_get_frac+0xf6>
1a0013ec:	2340      	movs	r3, #64	; 0x40
1a0013ee:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0013f0:	683b      	ldr	r3, [r7, #0]
1a0013f2:	695b      	ldr	r3, [r3, #20]
1a0013f4:	643b      	str	r3, [r7, #64]	; 0x40
1a0013f6:	f107 030c 	add.w	r3, r7, #12
1a0013fa:	3320      	adds	r3, #32
1a0013fc:	4619      	mov	r1, r3
1a0013fe:	6878      	ldr	r0, [r7, #4]
1a001400:	f7ff ff02 	bl	1a001208 <pll_calc_divs>
1a001404:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001406:	687a      	ldr	r2, [r7, #4]
1a001408:	429a      	cmp	r2, r3
1a00140a:	d10a      	bne.n	1a001422 <pll_get_frac+0xf6>
1a00140c:	683b      	ldr	r3, [r7, #0]
1a00140e:	461d      	mov	r5, r3
1a001410:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001414:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001416:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001418:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00141c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001420:	e03e      	b.n	1a0014a0 <pll_get_frac+0x174>
1a001422:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001424:	687a      	ldr	r2, [r7, #4]
1a001426:	1ad3      	subs	r3, r2, r3
1a001428:	4618      	mov	r0, r3
1a00142a:	f7ff fedc 	bl	1a0011e6 <ABS>
1a00142e:	4603      	mov	r3, r0
1a001430:	673b      	str	r3, [r7, #112]	; 0x70
1a001432:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001434:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a001436:	429a      	cmp	r2, r3
1a001438:	dc19      	bgt.n	1a00146e <pll_get_frac+0x142>
1a00143a:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a00143c:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a00143e:	429a      	cmp	r2, r3
1a001440:	dc0a      	bgt.n	1a001458 <pll_get_frac+0x12c>
1a001442:	683b      	ldr	r3, [r7, #0]
1a001444:	461d      	mov	r5, r3
1a001446:	f107 040c 	add.w	r4, r7, #12
1a00144a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00144c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00144e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001452:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001456:	e023      	b.n	1a0014a0 <pll_get_frac+0x174>
1a001458:	683b      	ldr	r3, [r7, #0]
1a00145a:	461d      	mov	r5, r3
1a00145c:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001460:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001462:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001464:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001468:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00146c:	e018      	b.n	1a0014a0 <pll_get_frac+0x174>
1a00146e:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001470:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001472:	429a      	cmp	r2, r3
1a001474:	dc0a      	bgt.n	1a00148c <pll_get_frac+0x160>
1a001476:	683b      	ldr	r3, [r7, #0]
1a001478:	461d      	mov	r5, r3
1a00147a:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a00147e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001480:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001482:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001486:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00148a:	e009      	b.n	1a0014a0 <pll_get_frac+0x174>
1a00148c:	683b      	ldr	r3, [r7, #0]
1a00148e:	461d      	mov	r5, r3
1a001490:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001494:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001496:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001498:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00149c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0014a0:	3778      	adds	r7, #120	; 0x78
1a0014a2:	46bd      	mov	sp, r7
1a0014a4:	bdb0      	pop	{r4, r5, r7, pc}
1a0014a6:	bf00      	nop
1a0014a8:	068e7780 	.word	0x068e7780

1a0014ac <Chip_Clock_GetDivRate>:
1a0014ac:	b580      	push	{r7, lr}
1a0014ae:	b084      	sub	sp, #16
1a0014b0:	af00      	add	r7, sp, #0
1a0014b2:	4603      	mov	r3, r0
1a0014b4:	460a      	mov	r2, r1
1a0014b6:	71fb      	strb	r3, [r7, #7]
1a0014b8:	4613      	mov	r3, r2
1a0014ba:	71bb      	strb	r3, [r7, #6]
1a0014bc:	79bb      	ldrb	r3, [r7, #6]
1a0014be:	4618      	mov	r0, r3
1a0014c0:	f000 f960 	bl	1a001784 <Chip_Clock_GetDividerSource>
1a0014c4:	4603      	mov	r3, r0
1a0014c6:	73fb      	strb	r3, [r7, #15]
1a0014c8:	79bb      	ldrb	r3, [r7, #6]
1a0014ca:	4618      	mov	r0, r3
1a0014cc:	f000 f97a 	bl	1a0017c4 <Chip_Clock_GetDividerDivisor>
1a0014d0:	60b8      	str	r0, [r7, #8]
1a0014d2:	7bfb      	ldrb	r3, [r7, #15]
1a0014d4:	4618      	mov	r0, r3
1a0014d6:	f000 f991 	bl	1a0017fc <Chip_Clock_GetClockInputHz>
1a0014da:	4602      	mov	r2, r0
1a0014dc:	68bb      	ldr	r3, [r7, #8]
1a0014de:	3301      	adds	r3, #1
1a0014e0:	fbb2 f3f3 	udiv	r3, r2, r3
1a0014e4:	4618      	mov	r0, r3
1a0014e6:	3710      	adds	r7, #16
1a0014e8:	46bd      	mov	sp, r7
1a0014ea:	bd80      	pop	{r7, pc}

1a0014ec <Chip_Clock_FindBaseClock>:
1a0014ec:	b480      	push	{r7}
1a0014ee:	b085      	sub	sp, #20
1a0014f0:	af00      	add	r7, sp, #0
1a0014f2:	4603      	mov	r3, r0
1a0014f4:	80fb      	strh	r3, [r7, #6]
1a0014f6:	231c      	movs	r3, #28
1a0014f8:	73fb      	strb	r3, [r7, #15]
1a0014fa:	2300      	movs	r3, #0
1a0014fc:	60bb      	str	r3, [r7, #8]
1a0014fe:	e024      	b.n	1a00154a <Chip_Clock_FindBaseClock+0x5e>
1a001500:	491d      	ldr	r1, [pc, #116]	; (1a001578 <Chip_Clock_FindBaseClock+0x8c>)
1a001502:	68ba      	ldr	r2, [r7, #8]
1a001504:	4613      	mov	r3, r2
1a001506:	005b      	lsls	r3, r3, #1
1a001508:	4413      	add	r3, r2
1a00150a:	005b      	lsls	r3, r3, #1
1a00150c:	440b      	add	r3, r1
1a00150e:	881b      	ldrh	r3, [r3, #0]
1a001510:	88fa      	ldrh	r2, [r7, #6]
1a001512:	429a      	cmp	r2, r3
1a001514:	d316      	bcc.n	1a001544 <Chip_Clock_FindBaseClock+0x58>
1a001516:	4918      	ldr	r1, [pc, #96]	; (1a001578 <Chip_Clock_FindBaseClock+0x8c>)
1a001518:	68ba      	ldr	r2, [r7, #8]
1a00151a:	4613      	mov	r3, r2
1a00151c:	005b      	lsls	r3, r3, #1
1a00151e:	4413      	add	r3, r2
1a001520:	005b      	lsls	r3, r3, #1
1a001522:	440b      	add	r3, r1
1a001524:	3302      	adds	r3, #2
1a001526:	881b      	ldrh	r3, [r3, #0]
1a001528:	88fa      	ldrh	r2, [r7, #6]
1a00152a:	429a      	cmp	r2, r3
1a00152c:	d80a      	bhi.n	1a001544 <Chip_Clock_FindBaseClock+0x58>
1a00152e:	4912      	ldr	r1, [pc, #72]	; (1a001578 <Chip_Clock_FindBaseClock+0x8c>)
1a001530:	68ba      	ldr	r2, [r7, #8]
1a001532:	4613      	mov	r3, r2
1a001534:	005b      	lsls	r3, r3, #1
1a001536:	4413      	add	r3, r2
1a001538:	005b      	lsls	r3, r3, #1
1a00153a:	440b      	add	r3, r1
1a00153c:	3304      	adds	r3, #4
1a00153e:	781b      	ldrb	r3, [r3, #0]
1a001540:	73fb      	strb	r3, [r7, #15]
1a001542:	e002      	b.n	1a00154a <Chip_Clock_FindBaseClock+0x5e>
1a001544:	68bb      	ldr	r3, [r7, #8]
1a001546:	3301      	adds	r3, #1
1a001548:	60bb      	str	r3, [r7, #8]
1a00154a:	7bfb      	ldrb	r3, [r7, #15]
1a00154c:	2b1c      	cmp	r3, #28
1a00154e:	d10b      	bne.n	1a001568 <Chip_Clock_FindBaseClock+0x7c>
1a001550:	4909      	ldr	r1, [pc, #36]	; (1a001578 <Chip_Clock_FindBaseClock+0x8c>)
1a001552:	68ba      	ldr	r2, [r7, #8]
1a001554:	4613      	mov	r3, r2
1a001556:	005b      	lsls	r3, r3, #1
1a001558:	4413      	add	r3, r2
1a00155a:	005b      	lsls	r3, r3, #1
1a00155c:	440b      	add	r3, r1
1a00155e:	3304      	adds	r3, #4
1a001560:	781b      	ldrb	r3, [r3, #0]
1a001562:	7bfa      	ldrb	r2, [r7, #15]
1a001564:	429a      	cmp	r2, r3
1a001566:	d1cb      	bne.n	1a001500 <Chip_Clock_FindBaseClock+0x14>
1a001568:	7bfb      	ldrb	r3, [r7, #15]
1a00156a:	4618      	mov	r0, r3
1a00156c:	3714      	adds	r7, #20
1a00156e:	46bd      	mov	sp, r7
1a001570:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001574:	4770      	bx	lr
1a001576:	bf00      	nop
1a001578:	1a001ddc 	.word	0x1a001ddc

1a00157c <Chip_Clock_EnableCrystal>:
1a00157c:	b480      	push	{r7}
1a00157e:	b083      	sub	sp, #12
1a001580:	af00      	add	r7, sp, #0
1a001582:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001586:	603b      	str	r3, [r7, #0]
1a001588:	4b15      	ldr	r3, [pc, #84]	; (1a0015e0 <Chip_Clock_EnableCrystal+0x64>)
1a00158a:	699b      	ldr	r3, [r3, #24]
1a00158c:	607b      	str	r3, [r7, #4]
1a00158e:	687b      	ldr	r3, [r7, #4]
1a001590:	f023 0302 	bic.w	r3, r3, #2
1a001594:	607b      	str	r3, [r7, #4]
1a001596:	4b12      	ldr	r3, [pc, #72]	; (1a0015e0 <Chip_Clock_EnableCrystal+0x64>)
1a001598:	699b      	ldr	r3, [r3, #24]
1a00159a:	687a      	ldr	r2, [r7, #4]
1a00159c:	429a      	cmp	r2, r3
1a00159e:	d002      	beq.n	1a0015a6 <Chip_Clock_EnableCrystal+0x2a>
1a0015a0:	4a0f      	ldr	r2, [pc, #60]	; (1a0015e0 <Chip_Clock_EnableCrystal+0x64>)
1a0015a2:	687b      	ldr	r3, [r7, #4]
1a0015a4:	6193      	str	r3, [r2, #24]
1a0015a6:	687b      	ldr	r3, [r7, #4]
1a0015a8:	f023 0301 	bic.w	r3, r3, #1
1a0015ac:	607b      	str	r3, [r7, #4]
1a0015ae:	4b0d      	ldr	r3, [pc, #52]	; (1a0015e4 <Chip_Clock_EnableCrystal+0x68>)
1a0015b0:	681b      	ldr	r3, [r3, #0]
1a0015b2:	4a0d      	ldr	r2, [pc, #52]	; (1a0015e8 <Chip_Clock_EnableCrystal+0x6c>)
1a0015b4:	4293      	cmp	r3, r2
1a0015b6:	d903      	bls.n	1a0015c0 <Chip_Clock_EnableCrystal+0x44>
1a0015b8:	687b      	ldr	r3, [r7, #4]
1a0015ba:	f043 0304 	orr.w	r3, r3, #4
1a0015be:	607b      	str	r3, [r7, #4]
1a0015c0:	4a07      	ldr	r2, [pc, #28]	; (1a0015e0 <Chip_Clock_EnableCrystal+0x64>)
1a0015c2:	687b      	ldr	r3, [r7, #4]
1a0015c4:	6193      	str	r3, [r2, #24]
1a0015c6:	bf00      	nop
1a0015c8:	683b      	ldr	r3, [r7, #0]
1a0015ca:	1e5a      	subs	r2, r3, #1
1a0015cc:	603a      	str	r2, [r7, #0]
1a0015ce:	2b00      	cmp	r3, #0
1a0015d0:	d1fa      	bne.n	1a0015c8 <Chip_Clock_EnableCrystal+0x4c>
1a0015d2:	bf00      	nop
1a0015d4:	370c      	adds	r7, #12
1a0015d6:	46bd      	mov	sp, r7
1a0015d8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015dc:	4770      	bx	lr
1a0015de:	bf00      	nop
1a0015e0:	40050000 	.word	0x40050000
1a0015e4:	1a001d80 	.word	0x1a001d80
1a0015e8:	01312cff 	.word	0x01312cff

1a0015ec <Chip_Clock_CalcMainPLLValue>:
1a0015ec:	b580      	push	{r7, lr}
1a0015ee:	b082      	sub	sp, #8
1a0015f0:	af00      	add	r7, sp, #0
1a0015f2:	6078      	str	r0, [r7, #4]
1a0015f4:	6039      	str	r1, [r7, #0]
1a0015f6:	683b      	ldr	r3, [r7, #0]
1a0015f8:	791b      	ldrb	r3, [r3, #4]
1a0015fa:	4618      	mov	r0, r3
1a0015fc:	f000 f8fe 	bl	1a0017fc <Chip_Clock_GetClockInputHz>
1a001600:	4602      	mov	r2, r0
1a001602:	683b      	ldr	r3, [r7, #0]
1a001604:	615a      	str	r2, [r3, #20]
1a001606:	687b      	ldr	r3, [r7, #4]
1a001608:	4a2b      	ldr	r2, [pc, #172]	; (1a0016b8 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a00160a:	4293      	cmp	r3, r2
1a00160c:	d807      	bhi.n	1a00161e <Chip_Clock_CalcMainPLLValue+0x32>
1a00160e:	687b      	ldr	r3, [r7, #4]
1a001610:	4a2a      	ldr	r2, [pc, #168]	; (1a0016bc <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001612:	4293      	cmp	r3, r2
1a001614:	d903      	bls.n	1a00161e <Chip_Clock_CalcMainPLLValue+0x32>
1a001616:	683b      	ldr	r3, [r7, #0]
1a001618:	695b      	ldr	r3, [r3, #20]
1a00161a:	2b00      	cmp	r3, #0
1a00161c:	d102      	bne.n	1a001624 <Chip_Clock_CalcMainPLLValue+0x38>
1a00161e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001622:	e044      	b.n	1a0016ae <Chip_Clock_CalcMainPLLValue+0xc2>
1a001624:	683b      	ldr	r3, [r7, #0]
1a001626:	2280      	movs	r2, #128	; 0x80
1a001628:	601a      	str	r2, [r3, #0]
1a00162a:	683b      	ldr	r3, [r7, #0]
1a00162c:	2200      	movs	r2, #0
1a00162e:	609a      	str	r2, [r3, #8]
1a001630:	683b      	ldr	r3, [r7, #0]
1a001632:	2200      	movs	r2, #0
1a001634:	60da      	str	r2, [r3, #12]
1a001636:	683b      	ldr	r3, [r7, #0]
1a001638:	695b      	ldr	r3, [r3, #20]
1a00163a:	687a      	ldr	r2, [r7, #4]
1a00163c:	fbb2 f3f3 	udiv	r3, r2, r3
1a001640:	461a      	mov	r2, r3
1a001642:	683b      	ldr	r3, [r7, #0]
1a001644:	611a      	str	r2, [r3, #16]
1a001646:	687b      	ldr	r3, [r7, #4]
1a001648:	4a1d      	ldr	r2, [pc, #116]	; (1a0016c0 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a00164a:	4293      	cmp	r3, r2
1a00164c:	d909      	bls.n	1a001662 <Chip_Clock_CalcMainPLLValue+0x76>
1a00164e:	683b      	ldr	r3, [r7, #0]
1a001650:	691b      	ldr	r3, [r3, #16]
1a001652:	461a      	mov	r2, r3
1a001654:	683b      	ldr	r3, [r7, #0]
1a001656:	695b      	ldr	r3, [r3, #20]
1a001658:	fb03 f302 	mul.w	r3, r3, r2
1a00165c:	687a      	ldr	r2, [r7, #4]
1a00165e:	429a      	cmp	r2, r3
1a001660:	d00f      	beq.n	1a001682 <Chip_Clock_CalcMainPLLValue+0x96>
1a001662:	6839      	ldr	r1, [r7, #0]
1a001664:	6878      	ldr	r0, [r7, #4]
1a001666:	f7ff fe61 	bl	1a00132c <pll_get_frac>
1a00166a:	683b      	ldr	r3, [r7, #0]
1a00166c:	689b      	ldr	r3, [r3, #8]
1a00166e:	2b00      	cmp	r3, #0
1a001670:	d102      	bne.n	1a001678 <Chip_Clock_CalcMainPLLValue+0x8c>
1a001672:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001676:	e01a      	b.n	1a0016ae <Chip_Clock_CalcMainPLLValue+0xc2>
1a001678:	683b      	ldr	r3, [r7, #0]
1a00167a:	689b      	ldr	r3, [r3, #8]
1a00167c:	1e5a      	subs	r2, r3, #1
1a00167e:	683b      	ldr	r3, [r7, #0]
1a001680:	609a      	str	r2, [r3, #8]
1a001682:	683b      	ldr	r3, [r7, #0]
1a001684:	691b      	ldr	r3, [r3, #16]
1a001686:	2b00      	cmp	r3, #0
1a001688:	d102      	bne.n	1a001690 <Chip_Clock_CalcMainPLLValue+0xa4>
1a00168a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a00168e:	e00e      	b.n	1a0016ae <Chip_Clock_CalcMainPLLValue+0xc2>
1a001690:	683b      	ldr	r3, [r7, #0]
1a001692:	68db      	ldr	r3, [r3, #12]
1a001694:	2b00      	cmp	r3, #0
1a001696:	d004      	beq.n	1a0016a2 <Chip_Clock_CalcMainPLLValue+0xb6>
1a001698:	683b      	ldr	r3, [r7, #0]
1a00169a:	68db      	ldr	r3, [r3, #12]
1a00169c:	1e5a      	subs	r2, r3, #1
1a00169e:	683b      	ldr	r3, [r7, #0]
1a0016a0:	60da      	str	r2, [r3, #12]
1a0016a2:	683b      	ldr	r3, [r7, #0]
1a0016a4:	691b      	ldr	r3, [r3, #16]
1a0016a6:	1e5a      	subs	r2, r3, #1
1a0016a8:	683b      	ldr	r3, [r7, #0]
1a0016aa:	611a      	str	r2, [r3, #16]
1a0016ac:	2300      	movs	r3, #0
1a0016ae:	4618      	mov	r0, r3
1a0016b0:	3708      	adds	r7, #8
1a0016b2:	46bd      	mov	sp, r7
1a0016b4:	bd80      	pop	{r7, pc}
1a0016b6:	bf00      	nop
1a0016b8:	0c28cb00 	.word	0x0c28cb00
1a0016bc:	0094c5ef 	.word	0x0094c5ef
1a0016c0:	094c5eff 	.word	0x094c5eff

1a0016c4 <Chip_Clock_GetMainPLLHz>:
1a0016c4:	b580      	push	{r7, lr}
1a0016c6:	b08c      	sub	sp, #48	; 0x30
1a0016c8:	af00      	add	r7, sp, #0
1a0016ca:	4b2c      	ldr	r3, [pc, #176]	; (1a00177c <Chip_Clock_GetMainPLLHz+0xb8>)
1a0016cc:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0016ce:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0016d0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0016d2:	0e1b      	lsrs	r3, r3, #24
1a0016d4:	b2db      	uxtb	r3, r3
1a0016d6:	f003 030f 	and.w	r3, r3, #15
1a0016da:	b2db      	uxtb	r3, r3
1a0016dc:	4618      	mov	r0, r3
1a0016de:	f000 f88d 	bl	1a0017fc <Chip_Clock_GetClockInputHz>
1a0016e2:	62b8      	str	r0, [r7, #40]	; 0x28
1a0016e4:	4b26      	ldr	r3, [pc, #152]	; (1a001780 <Chip_Clock_GetMainPLLHz+0xbc>)
1a0016e6:	681b      	ldr	r3, [r3, #0]
1a0016e8:	607b      	str	r3, [r7, #4]
1a0016ea:	4b24      	ldr	r3, [pc, #144]	; (1a00177c <Chip_Clock_GetMainPLLHz+0xb8>)
1a0016ec:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a0016ee:	f003 0301 	and.w	r3, r3, #1
1a0016f2:	2b00      	cmp	r3, #0
1a0016f4:	d101      	bne.n	1a0016fa <Chip_Clock_GetMainPLLHz+0x36>
1a0016f6:	2300      	movs	r3, #0
1a0016f8:	e03b      	b.n	1a001772 <Chip_Clock_GetMainPLLHz+0xae>
1a0016fa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0016fc:	0c1b      	lsrs	r3, r3, #16
1a0016fe:	b2db      	uxtb	r3, r3
1a001700:	627b      	str	r3, [r7, #36]	; 0x24
1a001702:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001704:	0b1b      	lsrs	r3, r3, #12
1a001706:	f003 0303 	and.w	r3, r3, #3
1a00170a:	623b      	str	r3, [r7, #32]
1a00170c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00170e:	0a1b      	lsrs	r3, r3, #8
1a001710:	f003 0303 	and.w	r3, r3, #3
1a001714:	61fb      	str	r3, [r7, #28]
1a001716:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001718:	09db      	lsrs	r3, r3, #7
1a00171a:	f003 0301 	and.w	r3, r3, #1
1a00171e:	61bb      	str	r3, [r7, #24]
1a001720:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001722:	099b      	lsrs	r3, r3, #6
1a001724:	f003 0301 	and.w	r3, r3, #1
1a001728:	617b      	str	r3, [r7, #20]
1a00172a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00172c:	3301      	adds	r3, #1
1a00172e:	613b      	str	r3, [r7, #16]
1a001730:	6a3b      	ldr	r3, [r7, #32]
1a001732:	3301      	adds	r3, #1
1a001734:	60fb      	str	r3, [r7, #12]
1a001736:	1d3a      	adds	r2, r7, #4
1a001738:	69fb      	ldr	r3, [r7, #28]
1a00173a:	4413      	add	r3, r2
1a00173c:	781b      	ldrb	r3, [r3, #0]
1a00173e:	60bb      	str	r3, [r7, #8]
1a001740:	69bb      	ldr	r3, [r7, #24]
1a001742:	2b00      	cmp	r3, #0
1a001744:	d102      	bne.n	1a00174c <Chip_Clock_GetMainPLLHz+0x88>
1a001746:	697b      	ldr	r3, [r7, #20]
1a001748:	2b00      	cmp	r3, #0
1a00174a:	d007      	beq.n	1a00175c <Chip_Clock_GetMainPLLHz+0x98>
1a00174c:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a00174e:	68fb      	ldr	r3, [r7, #12]
1a001750:	fbb2 f3f3 	udiv	r3, r2, r3
1a001754:	693a      	ldr	r2, [r7, #16]
1a001756:	fb02 f303 	mul.w	r3, r2, r3
1a00175a:	e00a      	b.n	1a001772 <Chip_Clock_GetMainPLLHz+0xae>
1a00175c:	68bb      	ldr	r3, [r7, #8]
1a00175e:	005b      	lsls	r3, r3, #1
1a001760:	693a      	ldr	r2, [r7, #16]
1a001762:	fbb2 f3f3 	udiv	r3, r2, r3
1a001766:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a001768:	68fa      	ldr	r2, [r7, #12]
1a00176a:	fbb1 f2f2 	udiv	r2, r1, r2
1a00176e:	fb02 f303 	mul.w	r3, r2, r3
1a001772:	4618      	mov	r0, r3
1a001774:	3730      	adds	r7, #48	; 0x30
1a001776:	46bd      	mov	sp, r7
1a001778:	bd80      	pop	{r7, pc}
1a00177a:	bf00      	nop
1a00177c:	40050000 	.word	0x40050000
1a001780:	1a001e48 	.word	0x1a001e48

1a001784 <Chip_Clock_GetDividerSource>:
1a001784:	b480      	push	{r7}
1a001786:	b085      	sub	sp, #20
1a001788:	af00      	add	r7, sp, #0
1a00178a:	4603      	mov	r3, r0
1a00178c:	71fb      	strb	r3, [r7, #7]
1a00178e:	4a0c      	ldr	r2, [pc, #48]	; (1a0017c0 <Chip_Clock_GetDividerSource+0x3c>)
1a001790:	79fb      	ldrb	r3, [r7, #7]
1a001792:	3312      	adds	r3, #18
1a001794:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001798:	60fb      	str	r3, [r7, #12]
1a00179a:	68fb      	ldr	r3, [r7, #12]
1a00179c:	f003 0301 	and.w	r3, r3, #1
1a0017a0:	2b00      	cmp	r3, #0
1a0017a2:	d001      	beq.n	1a0017a8 <Chip_Clock_GetDividerSource+0x24>
1a0017a4:	2311      	movs	r3, #17
1a0017a6:	e005      	b.n	1a0017b4 <Chip_Clock_GetDividerSource+0x30>
1a0017a8:	68fb      	ldr	r3, [r7, #12]
1a0017aa:	0e1b      	lsrs	r3, r3, #24
1a0017ac:	b2db      	uxtb	r3, r3
1a0017ae:	f003 031f 	and.w	r3, r3, #31
1a0017b2:	b2db      	uxtb	r3, r3
1a0017b4:	4618      	mov	r0, r3
1a0017b6:	3714      	adds	r7, #20
1a0017b8:	46bd      	mov	sp, r7
1a0017ba:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017be:	4770      	bx	lr
1a0017c0:	40050000 	.word	0x40050000

1a0017c4 <Chip_Clock_GetDividerDivisor>:
1a0017c4:	b480      	push	{r7}
1a0017c6:	b083      	sub	sp, #12
1a0017c8:	af00      	add	r7, sp, #0
1a0017ca:	4603      	mov	r3, r0
1a0017cc:	71fb      	strb	r3, [r7, #7]
1a0017ce:	4a09      	ldr	r2, [pc, #36]	; (1a0017f4 <Chip_Clock_GetDividerDivisor+0x30>)
1a0017d0:	79fb      	ldrb	r3, [r7, #7]
1a0017d2:	3312      	adds	r3, #18
1a0017d4:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a0017d8:	089b      	lsrs	r3, r3, #2
1a0017da:	b2da      	uxtb	r2, r3
1a0017dc:	79fb      	ldrb	r3, [r7, #7]
1a0017de:	4906      	ldr	r1, [pc, #24]	; (1a0017f8 <Chip_Clock_GetDividerDivisor+0x34>)
1a0017e0:	5ccb      	ldrb	r3, [r1, r3]
1a0017e2:	4013      	ands	r3, r2
1a0017e4:	b2db      	uxtb	r3, r3
1a0017e6:	4618      	mov	r0, r3
1a0017e8:	370c      	adds	r7, #12
1a0017ea:	46bd      	mov	sp, r7
1a0017ec:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017f0:	4770      	bx	lr
1a0017f2:	bf00      	nop
1a0017f4:	40050000 	.word	0x40050000
1a0017f8:	1a001e4c 	.word	0x1a001e4c

1a0017fc <Chip_Clock_GetClockInputHz>:
1a0017fc:	b580      	push	{r7, lr}
1a0017fe:	b084      	sub	sp, #16
1a001800:	af00      	add	r7, sp, #0
1a001802:	4603      	mov	r3, r0
1a001804:	71fb      	strb	r3, [r7, #7]
1a001806:	2300      	movs	r3, #0
1a001808:	60fb      	str	r3, [r7, #12]
1a00180a:	79fb      	ldrb	r3, [r7, #7]
1a00180c:	2b11      	cmp	r3, #17
1a00180e:	d87f      	bhi.n	1a001910 <Chip_Clock_GetClockInputHz+0x114>
1a001810:	a201      	add	r2, pc, #4	; (adr r2, 1a001818 <Chip_Clock_GetClockInputHz+0x1c>)
1a001812:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001816:	bf00      	nop
1a001818:	1a001861 	.word	0x1a001861
1a00181c:	1a001869 	.word	0x1a001869
1a001820:	1a00186f 	.word	0x1a00186f
1a001824:	1a001883 	.word	0x1a001883
1a001828:	1a00189d 	.word	0x1a00189d
1a00182c:	1a001911 	.word	0x1a001911
1a001830:	1a0018a5 	.word	0x1a0018a5
1a001834:	1a0018ad 	.word	0x1a0018ad
1a001838:	1a0018b5 	.word	0x1a0018b5
1a00183c:	1a0018bd 	.word	0x1a0018bd
1a001840:	1a001911 	.word	0x1a001911
1a001844:	1a001911 	.word	0x1a001911
1a001848:	1a0018c5 	.word	0x1a0018c5
1a00184c:	1a0018d3 	.word	0x1a0018d3
1a001850:	1a0018e1 	.word	0x1a0018e1
1a001854:	1a0018ef 	.word	0x1a0018ef
1a001858:	1a0018fd 	.word	0x1a0018fd
1a00185c:	1a00190b 	.word	0x1a00190b
1a001860:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001864:	60fb      	str	r3, [r7, #12]
1a001866:	e056      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a001868:	4b2d      	ldr	r3, [pc, #180]	; (1a001920 <Chip_Clock_GetClockInputHz+0x124>)
1a00186a:	60fb      	str	r3, [r7, #12]
1a00186c:	e053      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a00186e:	4b2d      	ldr	r3, [pc, #180]	; (1a001924 <Chip_Clock_GetClockInputHz+0x128>)
1a001870:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001874:	f003 0307 	and.w	r3, r3, #7
1a001878:	2b04      	cmp	r3, #4
1a00187a:	d04b      	beq.n	1a001914 <Chip_Clock_GetClockInputHz+0x118>
1a00187c:	4b2a      	ldr	r3, [pc, #168]	; (1a001928 <Chip_Clock_GetClockInputHz+0x12c>)
1a00187e:	60fb      	str	r3, [r7, #12]
1a001880:	e048      	b.n	1a001914 <Chip_Clock_GetClockInputHz+0x118>
1a001882:	4b28      	ldr	r3, [pc, #160]	; (1a001924 <Chip_Clock_GetClockInputHz+0x128>)
1a001884:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001888:	f003 0307 	and.w	r3, r3, #7
1a00188c:	2b04      	cmp	r3, #4
1a00188e:	d002      	beq.n	1a001896 <Chip_Clock_GetClockInputHz+0x9a>
1a001890:	4b25      	ldr	r3, [pc, #148]	; (1a001928 <Chip_Clock_GetClockInputHz+0x12c>)
1a001892:	60fb      	str	r3, [r7, #12]
1a001894:	e03f      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a001896:	4b25      	ldr	r3, [pc, #148]	; (1a00192c <Chip_Clock_GetClockInputHz+0x130>)
1a001898:	60fb      	str	r3, [r7, #12]
1a00189a:	e03c      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a00189c:	4b24      	ldr	r3, [pc, #144]	; (1a001930 <Chip_Clock_GetClockInputHz+0x134>)
1a00189e:	681b      	ldr	r3, [r3, #0]
1a0018a0:	60fb      	str	r3, [r7, #12]
1a0018a2:	e038      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a0018a4:	4b23      	ldr	r3, [pc, #140]	; (1a001934 <Chip_Clock_GetClockInputHz+0x138>)
1a0018a6:	681b      	ldr	r3, [r3, #0]
1a0018a8:	60fb      	str	r3, [r7, #12]
1a0018aa:	e034      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a0018ac:	4b22      	ldr	r3, [pc, #136]	; (1a001938 <Chip_Clock_GetClockInputHz+0x13c>)
1a0018ae:	681b      	ldr	r3, [r3, #0]
1a0018b0:	60fb      	str	r3, [r7, #12]
1a0018b2:	e030      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a0018b4:	4b20      	ldr	r3, [pc, #128]	; (1a001938 <Chip_Clock_GetClockInputHz+0x13c>)
1a0018b6:	685b      	ldr	r3, [r3, #4]
1a0018b8:	60fb      	str	r3, [r7, #12]
1a0018ba:	e02c      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a0018bc:	f7ff ff02 	bl	1a0016c4 <Chip_Clock_GetMainPLLHz>
1a0018c0:	60f8      	str	r0, [r7, #12]
1a0018c2:	e028      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a0018c4:	79fb      	ldrb	r3, [r7, #7]
1a0018c6:	2100      	movs	r1, #0
1a0018c8:	4618      	mov	r0, r3
1a0018ca:	f7ff fdef 	bl	1a0014ac <Chip_Clock_GetDivRate>
1a0018ce:	60f8      	str	r0, [r7, #12]
1a0018d0:	e021      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a0018d2:	79fb      	ldrb	r3, [r7, #7]
1a0018d4:	2101      	movs	r1, #1
1a0018d6:	4618      	mov	r0, r3
1a0018d8:	f7ff fde8 	bl	1a0014ac <Chip_Clock_GetDivRate>
1a0018dc:	60f8      	str	r0, [r7, #12]
1a0018de:	e01a      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a0018e0:	79fb      	ldrb	r3, [r7, #7]
1a0018e2:	2102      	movs	r1, #2
1a0018e4:	4618      	mov	r0, r3
1a0018e6:	f7ff fde1 	bl	1a0014ac <Chip_Clock_GetDivRate>
1a0018ea:	60f8      	str	r0, [r7, #12]
1a0018ec:	e013      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a0018ee:	79fb      	ldrb	r3, [r7, #7]
1a0018f0:	2103      	movs	r1, #3
1a0018f2:	4618      	mov	r0, r3
1a0018f4:	f7ff fdda 	bl	1a0014ac <Chip_Clock_GetDivRate>
1a0018f8:	60f8      	str	r0, [r7, #12]
1a0018fa:	e00c      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a0018fc:	79fb      	ldrb	r3, [r7, #7]
1a0018fe:	2104      	movs	r1, #4
1a001900:	4618      	mov	r0, r3
1a001902:	f7ff fdd3 	bl	1a0014ac <Chip_Clock_GetDivRate>
1a001906:	60f8      	str	r0, [r7, #12]
1a001908:	e005      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a00190a:	2300      	movs	r3, #0
1a00190c:	60fb      	str	r3, [r7, #12]
1a00190e:	e002      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a001910:	bf00      	nop
1a001912:	e000      	b.n	1a001916 <Chip_Clock_GetClockInputHz+0x11a>
1a001914:	bf00      	nop
1a001916:	68fb      	ldr	r3, [r7, #12]
1a001918:	4618      	mov	r0, r3
1a00191a:	3710      	adds	r7, #16
1a00191c:	46bd      	mov	sp, r7
1a00191e:	bd80      	pop	{r7, pc}
1a001920:	00b71b00 	.word	0x00b71b00
1a001924:	40043000 	.word	0x40043000
1a001928:	017d7840 	.word	0x017d7840
1a00192c:	02faf080 	.word	0x02faf080
1a001930:	1a001d7c 	.word	0x1a001d7c
1a001934:	1a001d80 	.word	0x1a001d80
1a001938:	10000438 	.word	0x10000438

1a00193c <Chip_Clock_GetBaseClocktHz>:
1a00193c:	b580      	push	{r7, lr}
1a00193e:	b082      	sub	sp, #8
1a001940:	af00      	add	r7, sp, #0
1a001942:	4603      	mov	r3, r0
1a001944:	71fb      	strb	r3, [r7, #7]
1a001946:	79fb      	ldrb	r3, [r7, #7]
1a001948:	4618      	mov	r0, r3
1a00194a:	f000 f857 	bl	1a0019fc <Chip_Clock_GetBaseClock>
1a00194e:	4603      	mov	r3, r0
1a001950:	4618      	mov	r0, r3
1a001952:	f7ff ff53 	bl	1a0017fc <Chip_Clock_GetClockInputHz>
1a001956:	4603      	mov	r3, r0
1a001958:	4618      	mov	r0, r3
1a00195a:	3708      	adds	r7, #8
1a00195c:	46bd      	mov	sp, r7
1a00195e:	bd80      	pop	{r7, pc}

1a001960 <Chip_Clock_SetBaseClock>:
1a001960:	b490      	push	{r4, r7}
1a001962:	b084      	sub	sp, #16
1a001964:	af00      	add	r7, sp, #0
1a001966:	4604      	mov	r4, r0
1a001968:	4608      	mov	r0, r1
1a00196a:	4611      	mov	r1, r2
1a00196c:	461a      	mov	r2, r3
1a00196e:	4623      	mov	r3, r4
1a001970:	71fb      	strb	r3, [r7, #7]
1a001972:	4603      	mov	r3, r0
1a001974:	71bb      	strb	r3, [r7, #6]
1a001976:	460b      	mov	r3, r1
1a001978:	717b      	strb	r3, [r7, #5]
1a00197a:	4613      	mov	r3, r2
1a00197c:	713b      	strb	r3, [r7, #4]
1a00197e:	4a1d      	ldr	r2, [pc, #116]	; (1a0019f4 <Chip_Clock_SetBaseClock+0x94>)
1a001980:	79fb      	ldrb	r3, [r7, #7]
1a001982:	3316      	adds	r3, #22
1a001984:	009b      	lsls	r3, r3, #2
1a001986:	4413      	add	r3, r2
1a001988:	685b      	ldr	r3, [r3, #4]
1a00198a:	60fb      	str	r3, [r7, #12]
1a00198c:	79fb      	ldrb	r3, [r7, #7]
1a00198e:	2b1b      	cmp	r3, #27
1a001990:	d822      	bhi.n	1a0019d8 <Chip_Clock_SetBaseClock+0x78>
1a001992:	79bb      	ldrb	r3, [r7, #6]
1a001994:	2b11      	cmp	r3, #17
1a001996:	d028      	beq.n	1a0019ea <Chip_Clock_SetBaseClock+0x8a>
1a001998:	68fa      	ldr	r2, [r7, #12]
1a00199a:	4b17      	ldr	r3, [pc, #92]	; (1a0019f8 <Chip_Clock_SetBaseClock+0x98>)
1a00199c:	4013      	ands	r3, r2
1a00199e:	60fb      	str	r3, [r7, #12]
1a0019a0:	797b      	ldrb	r3, [r7, #5]
1a0019a2:	2b00      	cmp	r3, #0
1a0019a4:	d003      	beq.n	1a0019ae <Chip_Clock_SetBaseClock+0x4e>
1a0019a6:	68fb      	ldr	r3, [r7, #12]
1a0019a8:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a0019ac:	60fb      	str	r3, [r7, #12]
1a0019ae:	793b      	ldrb	r3, [r7, #4]
1a0019b0:	2b00      	cmp	r3, #0
1a0019b2:	d003      	beq.n	1a0019bc <Chip_Clock_SetBaseClock+0x5c>
1a0019b4:	68fb      	ldr	r3, [r7, #12]
1a0019b6:	f043 0301 	orr.w	r3, r3, #1
1a0019ba:	60fb      	str	r3, [r7, #12]
1a0019bc:	79bb      	ldrb	r3, [r7, #6]
1a0019be:	061b      	lsls	r3, r3, #24
1a0019c0:	461a      	mov	r2, r3
1a0019c2:	68fb      	ldr	r3, [r7, #12]
1a0019c4:	4313      	orrs	r3, r2
1a0019c6:	60fb      	str	r3, [r7, #12]
1a0019c8:	4a0a      	ldr	r2, [pc, #40]	; (1a0019f4 <Chip_Clock_SetBaseClock+0x94>)
1a0019ca:	79fb      	ldrb	r3, [r7, #7]
1a0019cc:	3316      	adds	r3, #22
1a0019ce:	009b      	lsls	r3, r3, #2
1a0019d0:	4413      	add	r3, r2
1a0019d2:	68fa      	ldr	r2, [r7, #12]
1a0019d4:	605a      	str	r2, [r3, #4]
1a0019d6:	e008      	b.n	1a0019ea <Chip_Clock_SetBaseClock+0x8a>
1a0019d8:	4906      	ldr	r1, [pc, #24]	; (1a0019f4 <Chip_Clock_SetBaseClock+0x94>)
1a0019da:	79fb      	ldrb	r3, [r7, #7]
1a0019dc:	68fa      	ldr	r2, [r7, #12]
1a0019de:	f042 0201 	orr.w	r2, r2, #1
1a0019e2:	3316      	adds	r3, #22
1a0019e4:	009b      	lsls	r3, r3, #2
1a0019e6:	440b      	add	r3, r1
1a0019e8:	605a      	str	r2, [r3, #4]
1a0019ea:	bf00      	nop
1a0019ec:	3710      	adds	r7, #16
1a0019ee:	46bd      	mov	sp, r7
1a0019f0:	bc90      	pop	{r4, r7}
1a0019f2:	4770      	bx	lr
1a0019f4:	40050000 	.word	0x40050000
1a0019f8:	e0fff7fe 	.word	0xe0fff7fe

1a0019fc <Chip_Clock_GetBaseClock>:
1a0019fc:	b480      	push	{r7}
1a0019fe:	b085      	sub	sp, #20
1a001a00:	af00      	add	r7, sp, #0
1a001a02:	4603      	mov	r3, r0
1a001a04:	71fb      	strb	r3, [r7, #7]
1a001a06:	79fb      	ldrb	r3, [r7, #7]
1a001a08:	2b1b      	cmp	r3, #27
1a001a0a:	d901      	bls.n	1a001a10 <Chip_Clock_GetBaseClock+0x14>
1a001a0c:	2311      	movs	r3, #17
1a001a0e:	e013      	b.n	1a001a38 <Chip_Clock_GetBaseClock+0x3c>
1a001a10:	4a0c      	ldr	r2, [pc, #48]	; (1a001a44 <Chip_Clock_GetBaseClock+0x48>)
1a001a12:	79fb      	ldrb	r3, [r7, #7]
1a001a14:	3316      	adds	r3, #22
1a001a16:	009b      	lsls	r3, r3, #2
1a001a18:	4413      	add	r3, r2
1a001a1a:	685b      	ldr	r3, [r3, #4]
1a001a1c:	60fb      	str	r3, [r7, #12]
1a001a1e:	68fb      	ldr	r3, [r7, #12]
1a001a20:	f003 0301 	and.w	r3, r3, #1
1a001a24:	2b00      	cmp	r3, #0
1a001a26:	d001      	beq.n	1a001a2c <Chip_Clock_GetBaseClock+0x30>
1a001a28:	2311      	movs	r3, #17
1a001a2a:	e005      	b.n	1a001a38 <Chip_Clock_GetBaseClock+0x3c>
1a001a2c:	68fb      	ldr	r3, [r7, #12]
1a001a2e:	0e1b      	lsrs	r3, r3, #24
1a001a30:	b2db      	uxtb	r3, r3
1a001a32:	f003 031f 	and.w	r3, r3, #31
1a001a36:	b2db      	uxtb	r3, r3
1a001a38:	4618      	mov	r0, r3
1a001a3a:	3714      	adds	r7, #20
1a001a3c:	46bd      	mov	sp, r7
1a001a3e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a42:	4770      	bx	lr
1a001a44:	40050000 	.word	0x40050000

1a001a48 <Chip_Clock_EnableOpts>:
1a001a48:	b480      	push	{r7}
1a001a4a:	b085      	sub	sp, #20
1a001a4c:	af00      	add	r7, sp, #0
1a001a4e:	603b      	str	r3, [r7, #0]
1a001a50:	4603      	mov	r3, r0
1a001a52:	80fb      	strh	r3, [r7, #6]
1a001a54:	460b      	mov	r3, r1
1a001a56:	717b      	strb	r3, [r7, #5]
1a001a58:	4613      	mov	r3, r2
1a001a5a:	713b      	strb	r3, [r7, #4]
1a001a5c:	2301      	movs	r3, #1
1a001a5e:	60fb      	str	r3, [r7, #12]
1a001a60:	797b      	ldrb	r3, [r7, #5]
1a001a62:	2b00      	cmp	r3, #0
1a001a64:	d003      	beq.n	1a001a6e <Chip_Clock_EnableOpts+0x26>
1a001a66:	68fb      	ldr	r3, [r7, #12]
1a001a68:	f043 0302 	orr.w	r3, r3, #2
1a001a6c:	60fb      	str	r3, [r7, #12]
1a001a6e:	793b      	ldrb	r3, [r7, #4]
1a001a70:	2b00      	cmp	r3, #0
1a001a72:	d003      	beq.n	1a001a7c <Chip_Clock_EnableOpts+0x34>
1a001a74:	68fb      	ldr	r3, [r7, #12]
1a001a76:	f043 0304 	orr.w	r3, r3, #4
1a001a7a:	60fb      	str	r3, [r7, #12]
1a001a7c:	683b      	ldr	r3, [r7, #0]
1a001a7e:	2b02      	cmp	r3, #2
1a001a80:	d103      	bne.n	1a001a8a <Chip_Clock_EnableOpts+0x42>
1a001a82:	68fb      	ldr	r3, [r7, #12]
1a001a84:	f043 0320 	orr.w	r3, r3, #32
1a001a88:	60fb      	str	r3, [r7, #12]
1a001a8a:	88fb      	ldrh	r3, [r7, #6]
1a001a8c:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001a90:	d308      	bcc.n	1a001aa4 <Chip_Clock_EnableOpts+0x5c>
1a001a92:	490a      	ldr	r1, [pc, #40]	; (1a001abc <Chip_Clock_EnableOpts+0x74>)
1a001a94:	88fb      	ldrh	r3, [r7, #6]
1a001a96:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001a9a:	3320      	adds	r3, #32
1a001a9c:	68fa      	ldr	r2, [r7, #12]
1a001a9e:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001aa2:	e005      	b.n	1a001ab0 <Chip_Clock_EnableOpts+0x68>
1a001aa4:	4906      	ldr	r1, [pc, #24]	; (1a001ac0 <Chip_Clock_EnableOpts+0x78>)
1a001aa6:	88fb      	ldrh	r3, [r7, #6]
1a001aa8:	3320      	adds	r3, #32
1a001aaa:	68fa      	ldr	r2, [r7, #12]
1a001aac:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001ab0:	bf00      	nop
1a001ab2:	3714      	adds	r7, #20
1a001ab4:	46bd      	mov	sp, r7
1a001ab6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001aba:	4770      	bx	lr
1a001abc:	40052000 	.word	0x40052000
1a001ac0:	40051000 	.word	0x40051000

1a001ac4 <Chip_Clock_Enable>:
1a001ac4:	b480      	push	{r7}
1a001ac6:	b083      	sub	sp, #12
1a001ac8:	af00      	add	r7, sp, #0
1a001aca:	4603      	mov	r3, r0
1a001acc:	80fb      	strh	r3, [r7, #6]
1a001ace:	88fb      	ldrh	r3, [r7, #6]
1a001ad0:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001ad4:	d310      	bcc.n	1a001af8 <Chip_Clock_Enable+0x34>
1a001ad6:	4a11      	ldr	r2, [pc, #68]	; (1a001b1c <Chip_Clock_Enable+0x58>)
1a001ad8:	88fb      	ldrh	r3, [r7, #6]
1a001ada:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001ade:	3320      	adds	r3, #32
1a001ae0:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001ae4:	490d      	ldr	r1, [pc, #52]	; (1a001b1c <Chip_Clock_Enable+0x58>)
1a001ae6:	88fb      	ldrh	r3, [r7, #6]
1a001ae8:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001aec:	f042 0201 	orr.w	r2, r2, #1
1a001af0:	3320      	adds	r3, #32
1a001af2:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001af6:	e00b      	b.n	1a001b10 <Chip_Clock_Enable+0x4c>
1a001af8:	4a09      	ldr	r2, [pc, #36]	; (1a001b20 <Chip_Clock_Enable+0x5c>)
1a001afa:	88fb      	ldrh	r3, [r7, #6]
1a001afc:	3320      	adds	r3, #32
1a001afe:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001b02:	4907      	ldr	r1, [pc, #28]	; (1a001b20 <Chip_Clock_Enable+0x5c>)
1a001b04:	88fb      	ldrh	r3, [r7, #6]
1a001b06:	f042 0201 	orr.w	r2, r2, #1
1a001b0a:	3320      	adds	r3, #32
1a001b0c:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001b10:	bf00      	nop
1a001b12:	370c      	adds	r7, #12
1a001b14:	46bd      	mov	sp, r7
1a001b16:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b1a:	4770      	bx	lr
1a001b1c:	40052000 	.word	0x40052000
1a001b20:	40051000 	.word	0x40051000

1a001b24 <Chip_Clock_GetRate>:
1a001b24:	b580      	push	{r7, lr}
1a001b26:	b086      	sub	sp, #24
1a001b28:	af00      	add	r7, sp, #0
1a001b2a:	4603      	mov	r3, r0
1a001b2c:	80fb      	strh	r3, [r7, #6]
1a001b2e:	88fb      	ldrh	r3, [r7, #6]
1a001b30:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001b34:	d308      	bcc.n	1a001b48 <Chip_Clock_GetRate+0x24>
1a001b36:	4a1b      	ldr	r2, [pc, #108]	; (1a001ba4 <Chip_Clock_GetRate+0x80>)
1a001b38:	88fb      	ldrh	r3, [r7, #6]
1a001b3a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001b3e:	3320      	adds	r3, #32
1a001b40:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001b44:	617b      	str	r3, [r7, #20]
1a001b46:	e005      	b.n	1a001b54 <Chip_Clock_GetRate+0x30>
1a001b48:	4a17      	ldr	r2, [pc, #92]	; (1a001ba8 <Chip_Clock_GetRate+0x84>)
1a001b4a:	88fb      	ldrh	r3, [r7, #6]
1a001b4c:	3320      	adds	r3, #32
1a001b4e:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001b52:	617b      	str	r3, [r7, #20]
1a001b54:	697b      	ldr	r3, [r7, #20]
1a001b56:	f003 0301 	and.w	r3, r3, #1
1a001b5a:	2b00      	cmp	r3, #0
1a001b5c:	d01b      	beq.n	1a001b96 <Chip_Clock_GetRate+0x72>
1a001b5e:	88fb      	ldrh	r3, [r7, #6]
1a001b60:	4618      	mov	r0, r3
1a001b62:	f7ff fcc3 	bl	1a0014ec <Chip_Clock_FindBaseClock>
1a001b66:	4603      	mov	r3, r0
1a001b68:	72fb      	strb	r3, [r7, #11]
1a001b6a:	7afb      	ldrb	r3, [r7, #11]
1a001b6c:	4618      	mov	r0, r3
1a001b6e:	f7ff fee5 	bl	1a00193c <Chip_Clock_GetBaseClocktHz>
1a001b72:	60f8      	str	r0, [r7, #12]
1a001b74:	697b      	ldr	r3, [r7, #20]
1a001b76:	095b      	lsrs	r3, r3, #5
1a001b78:	f003 0307 	and.w	r3, r3, #7
1a001b7c:	2b00      	cmp	r3, #0
1a001b7e:	d102      	bne.n	1a001b86 <Chip_Clock_GetRate+0x62>
1a001b80:	2301      	movs	r3, #1
1a001b82:	613b      	str	r3, [r7, #16]
1a001b84:	e001      	b.n	1a001b8a <Chip_Clock_GetRate+0x66>
1a001b86:	2302      	movs	r3, #2
1a001b88:	613b      	str	r3, [r7, #16]
1a001b8a:	68fa      	ldr	r2, [r7, #12]
1a001b8c:	693b      	ldr	r3, [r7, #16]
1a001b8e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001b92:	60fb      	str	r3, [r7, #12]
1a001b94:	e001      	b.n	1a001b9a <Chip_Clock_GetRate+0x76>
1a001b96:	2300      	movs	r3, #0
1a001b98:	60fb      	str	r3, [r7, #12]
1a001b9a:	68fb      	ldr	r3, [r7, #12]
1a001b9c:	4618      	mov	r0, r3
1a001b9e:	3718      	adds	r7, #24
1a001ba0:	46bd      	mov	sp, r7
1a001ba2:	bd80      	pop	{r7, pc}
1a001ba4:	40052000 	.word	0x40052000
1a001ba8:	40051000 	.word	0x40051000

1a001bac <SystemCoreClockUpdate>:
1a001bac:	b580      	push	{r7, lr}
1a001bae:	af00      	add	r7, sp, #0
1a001bb0:	2069      	movs	r0, #105	; 0x69
1a001bb2:	f7ff ffb7 	bl	1a001b24 <Chip_Clock_GetRate>
1a001bb6:	4602      	mov	r2, r0
1a001bb8:	4b01      	ldr	r3, [pc, #4]	; (1a001bc0 <SystemCoreClockUpdate+0x14>)
1a001bba:	601a      	str	r2, [r3, #0]
1a001bbc:	bf00      	nop
1a001bbe:	bd80      	pop	{r7, pc}
1a001bc0:	10000440 	.word	0x10000440

1a001bc4 <Chip_GPIO_Init>:
1a001bc4:	b480      	push	{r7}
1a001bc6:	b083      	sub	sp, #12
1a001bc8:	af00      	add	r7, sp, #0
1a001bca:	6078      	str	r0, [r7, #4]
1a001bcc:	bf00      	nop
1a001bce:	370c      	adds	r7, #12
1a001bd0:	46bd      	mov	sp, r7
1a001bd2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001bd6:	4770      	bx	lr

1a001bd8 <Chip_TIMER_GetClockIndex>:
1a001bd8:	b480      	push	{r7}
1a001bda:	b085      	sub	sp, #20
1a001bdc:	af00      	add	r7, sp, #0
1a001bde:	6078      	str	r0, [r7, #4]
1a001be0:	687b      	ldr	r3, [r7, #4]
1a001be2:	4a0e      	ldr	r2, [pc, #56]	; (1a001c1c <Chip_TIMER_GetClockIndex+0x44>)
1a001be4:	4293      	cmp	r3, r2
1a001be6:	d102      	bne.n	1a001bee <Chip_TIMER_GetClockIndex+0x16>
1a001be8:	23a4      	movs	r3, #164	; 0xa4
1a001bea:	81fb      	strh	r3, [r7, #14]
1a001bec:	e00f      	b.n	1a001c0e <Chip_TIMER_GetClockIndex+0x36>
1a001bee:	687b      	ldr	r3, [r7, #4]
1a001bf0:	4a0b      	ldr	r2, [pc, #44]	; (1a001c20 <Chip_TIMER_GetClockIndex+0x48>)
1a001bf2:	4293      	cmp	r3, r2
1a001bf4:	d102      	bne.n	1a001bfc <Chip_TIMER_GetClockIndex+0x24>
1a001bf6:	23a3      	movs	r3, #163	; 0xa3
1a001bf8:	81fb      	strh	r3, [r7, #14]
1a001bfa:	e008      	b.n	1a001c0e <Chip_TIMER_GetClockIndex+0x36>
1a001bfc:	687b      	ldr	r3, [r7, #4]
1a001bfe:	4a09      	ldr	r2, [pc, #36]	; (1a001c24 <Chip_TIMER_GetClockIndex+0x4c>)
1a001c00:	4293      	cmp	r3, r2
1a001c02:	d102      	bne.n	1a001c0a <Chip_TIMER_GetClockIndex+0x32>
1a001c04:	2385      	movs	r3, #133	; 0x85
1a001c06:	81fb      	strh	r3, [r7, #14]
1a001c08:	e001      	b.n	1a001c0e <Chip_TIMER_GetClockIndex+0x36>
1a001c0a:	2384      	movs	r3, #132	; 0x84
1a001c0c:	81fb      	strh	r3, [r7, #14]
1a001c0e:	89fb      	ldrh	r3, [r7, #14]
1a001c10:	4618      	mov	r0, r3
1a001c12:	3714      	adds	r7, #20
1a001c14:	46bd      	mov	sp, r7
1a001c16:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c1a:	4770      	bx	lr
1a001c1c:	400c4000 	.word	0x400c4000
1a001c20:	400c3000 	.word	0x400c3000
1a001c24:	40085000 	.word	0x40085000

1a001c28 <Chip_TIMER_Init>:
1a001c28:	b580      	push	{r7, lr}
1a001c2a:	b082      	sub	sp, #8
1a001c2c:	af00      	add	r7, sp, #0
1a001c2e:	6078      	str	r0, [r7, #4]
1a001c30:	6878      	ldr	r0, [r7, #4]
1a001c32:	f7ff ffd1 	bl	1a001bd8 <Chip_TIMER_GetClockIndex>
1a001c36:	4603      	mov	r3, r0
1a001c38:	4618      	mov	r0, r3
1a001c3a:	f7ff ff43 	bl	1a001ac4 <Chip_Clock_Enable>
1a001c3e:	bf00      	nop
1a001c40:	3708      	adds	r7, #8
1a001c42:	46bd      	mov	sp, r7
1a001c44:	bd80      	pop	{r7, pc}
1a001c46:	Address 0x000000001a001c46 is out of bounds.


1a001c48 <memcpy>:
1a001c48:	4684      	mov	ip, r0
1a001c4a:	ea41 0300 	orr.w	r3, r1, r0
1a001c4e:	f013 0303 	ands.w	r3, r3, #3
1a001c52:	d16d      	bne.n	1a001d30 <memcpy+0xe8>
1a001c54:	3a40      	subs	r2, #64	; 0x40
1a001c56:	d341      	bcc.n	1a001cdc <memcpy+0x94>
1a001c58:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c5c:	f840 3b04 	str.w	r3, [r0], #4
1a001c60:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c64:	f840 3b04 	str.w	r3, [r0], #4
1a001c68:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c6c:	f840 3b04 	str.w	r3, [r0], #4
1a001c70:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c74:	f840 3b04 	str.w	r3, [r0], #4
1a001c78:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c7c:	f840 3b04 	str.w	r3, [r0], #4
1a001c80:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c84:	f840 3b04 	str.w	r3, [r0], #4
1a001c88:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c8c:	f840 3b04 	str.w	r3, [r0], #4
1a001c90:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c94:	f840 3b04 	str.w	r3, [r0], #4
1a001c98:	f851 3b04 	ldr.w	r3, [r1], #4
1a001c9c:	f840 3b04 	str.w	r3, [r0], #4
1a001ca0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ca4:	f840 3b04 	str.w	r3, [r0], #4
1a001ca8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cac:	f840 3b04 	str.w	r3, [r0], #4
1a001cb0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cb4:	f840 3b04 	str.w	r3, [r0], #4
1a001cb8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cbc:	f840 3b04 	str.w	r3, [r0], #4
1a001cc0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cc4:	f840 3b04 	str.w	r3, [r0], #4
1a001cc8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ccc:	f840 3b04 	str.w	r3, [r0], #4
1a001cd0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cd4:	f840 3b04 	str.w	r3, [r0], #4
1a001cd8:	3a40      	subs	r2, #64	; 0x40
1a001cda:	d2bd      	bcs.n	1a001c58 <memcpy+0x10>
1a001cdc:	3230      	adds	r2, #48	; 0x30
1a001cde:	d311      	bcc.n	1a001d04 <memcpy+0xbc>
1a001ce0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ce4:	f840 3b04 	str.w	r3, [r0], #4
1a001ce8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cec:	f840 3b04 	str.w	r3, [r0], #4
1a001cf0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cf4:	f840 3b04 	str.w	r3, [r0], #4
1a001cf8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001cfc:	f840 3b04 	str.w	r3, [r0], #4
1a001d00:	3a10      	subs	r2, #16
1a001d02:	d2ed      	bcs.n	1a001ce0 <memcpy+0x98>
1a001d04:	320c      	adds	r2, #12
1a001d06:	d305      	bcc.n	1a001d14 <memcpy+0xcc>
1a001d08:	f851 3b04 	ldr.w	r3, [r1], #4
1a001d0c:	f840 3b04 	str.w	r3, [r0], #4
1a001d10:	3a04      	subs	r2, #4
1a001d12:	d2f9      	bcs.n	1a001d08 <memcpy+0xc0>
1a001d14:	3204      	adds	r2, #4
1a001d16:	d008      	beq.n	1a001d2a <memcpy+0xe2>
1a001d18:	07d2      	lsls	r2, r2, #31
1a001d1a:	bf1c      	itt	ne
1a001d1c:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a001d20:	f800 3b01 	strbne.w	r3, [r0], #1
1a001d24:	d301      	bcc.n	1a001d2a <memcpy+0xe2>
1a001d26:	880b      	ldrh	r3, [r1, #0]
1a001d28:	8003      	strh	r3, [r0, #0]
1a001d2a:	4660      	mov	r0, ip
1a001d2c:	4770      	bx	lr
1a001d2e:	bf00      	nop
1a001d30:	2a08      	cmp	r2, #8
1a001d32:	d313      	bcc.n	1a001d5c <memcpy+0x114>
1a001d34:	078b      	lsls	r3, r1, #30
1a001d36:	d08d      	beq.n	1a001c54 <memcpy+0xc>
1a001d38:	f010 0303 	ands.w	r3, r0, #3
1a001d3c:	d08a      	beq.n	1a001c54 <memcpy+0xc>
1a001d3e:	f1c3 0304 	rsb	r3, r3, #4
1a001d42:	1ad2      	subs	r2, r2, r3
1a001d44:	07db      	lsls	r3, r3, #31
1a001d46:	bf1c      	itt	ne
1a001d48:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a001d4c:	f800 3b01 	strbne.w	r3, [r0], #1
1a001d50:	d380      	bcc.n	1a001c54 <memcpy+0xc>
1a001d52:	f831 3b02 	ldrh.w	r3, [r1], #2
1a001d56:	f820 3b02 	strh.w	r3, [r0], #2
1a001d5a:	e77b      	b.n	1a001c54 <memcpy+0xc>
1a001d5c:	3a04      	subs	r2, #4
1a001d5e:	d3d9      	bcc.n	1a001d14 <memcpy+0xcc>
1a001d60:	3a01      	subs	r2, #1
1a001d62:	f811 3b01 	ldrb.w	r3, [r1], #1
1a001d66:	f800 3b01 	strb.w	r3, [r0], #1
1a001d6a:	d2f9      	bcs.n	1a001d60 <memcpy+0x118>
1a001d6c:	780b      	ldrb	r3, [r1, #0]
1a001d6e:	7003      	strb	r3, [r0, #0]
1a001d70:	784b      	ldrb	r3, [r1, #1]
1a001d72:	7043      	strb	r3, [r0, #1]
1a001d74:	788b      	ldrb	r3, [r1, #2]
1a001d76:	7083      	strb	r3, [r0, #2]
1a001d78:	4660      	mov	r0, ip
1a001d7a:	4770      	bx	lr

1a001d7c <ExtRateIn>:
1a001d7c:	0000 0000                                   ....

1a001d80 <OscRateIn>:
1a001d80:	1b00 00b7                                   ....

1a001d84 <InitClkStates>:
1a001d84:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a001d94:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a001da4:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a001db4:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a001dc4:	111a 0001 111b 0001                         ........

1a001dcc <UART_PClock>:
1a001dcc:	0081 0082 00a1 00a2                         ........

1a001dd4 <UART_BClock>:
1a001dd4:	01c2 01a2 0182 0162                         ......b.

1a001ddc <periph_to_base>:
1a001ddc:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a001dec:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a001dfc:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a001e0c:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a001e1c:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a001e2c:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a001e3c:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a001e4c:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a001e54 <_init>:
1a001e54:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a001e56:	bf00      	nop

Disassembly of section .fini:

1a001e58 <_fini>:
1a001e58:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a001e5a:	bf00      	nop
