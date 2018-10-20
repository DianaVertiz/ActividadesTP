
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 81 05 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	11 08 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a 21 08 00 1a     ............!...
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a db 01 00 1a 61 07 00 1a 8d 07 00 1a     ........a.......
1a0000cc:	b9 07 00 1a e5 07 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a0029dc 	.word	0x1a0029dc
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000430 	.word	0x00000430

1a000120 <__bss_section_table_>:
1a000120:	10000430 	.word	0x10000430
1a000124:	00000594 	.word	0x00000594

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

1a000394 <Chip_GPIO_SetPinState>:
1a000394:	b480      	push	{r7}
1a000396:	b083      	sub	sp, #12
1a000398:	af00      	add	r7, sp, #0
1a00039a:	6078      	str	r0, [r7, #4]
1a00039c:	4608      	mov	r0, r1
1a00039e:	4611      	mov	r1, r2
1a0003a0:	461a      	mov	r2, r3
1a0003a2:	4603      	mov	r3, r0
1a0003a4:	70fb      	strb	r3, [r7, #3]
1a0003a6:	460b      	mov	r3, r1
1a0003a8:	70bb      	strb	r3, [r7, #2]
1a0003aa:	4613      	mov	r3, r2
1a0003ac:	707b      	strb	r3, [r7, #1]
1a0003ae:	78fa      	ldrb	r2, [r7, #3]
1a0003b0:	78bb      	ldrb	r3, [r7, #2]
1a0003b2:	7878      	ldrb	r0, [r7, #1]
1a0003b4:	6879      	ldr	r1, [r7, #4]
1a0003b6:	0152      	lsls	r2, r2, #5
1a0003b8:	440a      	add	r2, r1
1a0003ba:	4413      	add	r3, r2
1a0003bc:	4602      	mov	r2, r0
1a0003be:	701a      	strb	r2, [r3, #0]
1a0003c0:	bf00      	nop
1a0003c2:	370c      	adds	r7, #12
1a0003c4:	46bd      	mov	sp, r7
1a0003c6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0003ca:	4770      	bx	lr

1a0003cc <Chip_GPIO_ReadPortBit>:
1a0003cc:	b480      	push	{r7}
1a0003ce:	b085      	sub	sp, #20
1a0003d0:	af00      	add	r7, sp, #0
1a0003d2:	60f8      	str	r0, [r7, #12]
1a0003d4:	60b9      	str	r1, [r7, #8]
1a0003d6:	4613      	mov	r3, r2
1a0003d8:	71fb      	strb	r3, [r7, #7]
1a0003da:	79fb      	ldrb	r3, [r7, #7]
1a0003dc:	68f9      	ldr	r1, [r7, #12]
1a0003de:	68ba      	ldr	r2, [r7, #8]
1a0003e0:	0152      	lsls	r2, r2, #5
1a0003e2:	440a      	add	r2, r1
1a0003e4:	4413      	add	r3, r2
1a0003e6:	781b      	ldrb	r3, [r3, #0]
1a0003e8:	b2db      	uxtb	r3, r3
1a0003ea:	2b00      	cmp	r3, #0
1a0003ec:	bf14      	ite	ne
1a0003ee:	2301      	movne	r3, #1
1a0003f0:	2300      	moveq	r3, #0
1a0003f2:	b2db      	uxtb	r3, r3
1a0003f4:	4618      	mov	r0, r3
1a0003f6:	3714      	adds	r7, #20
1a0003f8:	46bd      	mov	sp, r7
1a0003fa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0003fe:	4770      	bx	lr

1a000400 <setLedFromMsk>:
1a000400:	b580      	push	{r7, lr}
1a000402:	b082      	sub	sp, #8
1a000404:	af00      	add	r7, sp, #0
1a000406:	4603      	mov	r3, r0
1a000408:	71fb      	strb	r3, [r7, #7]
1a00040a:	79fb      	ldrb	r3, [r7, #7]
1a00040c:	f003 0308 	and.w	r3, r3, #8
1a000410:	2b00      	cmp	r3, #0
1a000412:	d006      	beq.n	1a000422 <setLedFromMsk+0x22>
1a000414:	2301      	movs	r3, #1
1a000416:	220e      	movs	r2, #14
1a000418:	2100      	movs	r1, #0
1a00041a:	4834      	ldr	r0, [pc, #208]	; (1a0004ec <setLedFromMsk+0xec>)
1a00041c:	f7ff ffba 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000420:	e005      	b.n	1a00042e <setLedFromMsk+0x2e>
1a000422:	2300      	movs	r3, #0
1a000424:	220e      	movs	r2, #14
1a000426:	2100      	movs	r1, #0
1a000428:	4830      	ldr	r0, [pc, #192]	; (1a0004ec <setLedFromMsk+0xec>)
1a00042a:	f7ff ffb3 	bl	1a000394 <Chip_GPIO_SetPinState>
1a00042e:	79fb      	ldrb	r3, [r7, #7]
1a000430:	f003 0310 	and.w	r3, r3, #16
1a000434:	2b00      	cmp	r3, #0
1a000436:	d006      	beq.n	1a000446 <setLedFromMsk+0x46>
1a000438:	2301      	movs	r3, #1
1a00043a:	220b      	movs	r2, #11
1a00043c:	2101      	movs	r1, #1
1a00043e:	482b      	ldr	r0, [pc, #172]	; (1a0004ec <setLedFromMsk+0xec>)
1a000440:	f7ff ffa8 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000444:	e005      	b.n	1a000452 <setLedFromMsk+0x52>
1a000446:	2300      	movs	r3, #0
1a000448:	220b      	movs	r2, #11
1a00044a:	2101      	movs	r1, #1
1a00044c:	4827      	ldr	r0, [pc, #156]	; (1a0004ec <setLedFromMsk+0xec>)
1a00044e:	f7ff ffa1 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000452:	79fb      	ldrb	r3, [r7, #7]
1a000454:	f003 0320 	and.w	r3, r3, #32
1a000458:	2b00      	cmp	r3, #0
1a00045a:	d006      	beq.n	1a00046a <setLedFromMsk+0x6a>
1a00045c:	2301      	movs	r3, #1
1a00045e:	220c      	movs	r2, #12
1a000460:	2101      	movs	r1, #1
1a000462:	4822      	ldr	r0, [pc, #136]	; (1a0004ec <setLedFromMsk+0xec>)
1a000464:	f7ff ff96 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000468:	e005      	b.n	1a000476 <setLedFromMsk+0x76>
1a00046a:	2300      	movs	r3, #0
1a00046c:	220c      	movs	r2, #12
1a00046e:	2101      	movs	r1, #1
1a000470:	481e      	ldr	r0, [pc, #120]	; (1a0004ec <setLedFromMsk+0xec>)
1a000472:	f7ff ff8f 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000476:	79fb      	ldrb	r3, [r7, #7]
1a000478:	f003 0301 	and.w	r3, r3, #1
1a00047c:	2b00      	cmp	r3, #0
1a00047e:	d006      	beq.n	1a00048e <setLedFromMsk+0x8e>
1a000480:	2301      	movs	r3, #1
1a000482:	2200      	movs	r2, #0
1a000484:	2105      	movs	r1, #5
1a000486:	4819      	ldr	r0, [pc, #100]	; (1a0004ec <setLedFromMsk+0xec>)
1a000488:	f7ff ff84 	bl	1a000394 <Chip_GPIO_SetPinState>
1a00048c:	e005      	b.n	1a00049a <setLedFromMsk+0x9a>
1a00048e:	2300      	movs	r3, #0
1a000490:	2200      	movs	r2, #0
1a000492:	2105      	movs	r1, #5
1a000494:	4815      	ldr	r0, [pc, #84]	; (1a0004ec <setLedFromMsk+0xec>)
1a000496:	f7ff ff7d 	bl	1a000394 <Chip_GPIO_SetPinState>
1a00049a:	79fb      	ldrb	r3, [r7, #7]
1a00049c:	f003 0302 	and.w	r3, r3, #2
1a0004a0:	2b00      	cmp	r3, #0
1a0004a2:	d006      	beq.n	1a0004b2 <setLedFromMsk+0xb2>
1a0004a4:	2301      	movs	r3, #1
1a0004a6:	2201      	movs	r2, #1
1a0004a8:	2105      	movs	r1, #5
1a0004aa:	4810      	ldr	r0, [pc, #64]	; (1a0004ec <setLedFromMsk+0xec>)
1a0004ac:	f7ff ff72 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0004b0:	e005      	b.n	1a0004be <setLedFromMsk+0xbe>
1a0004b2:	2300      	movs	r3, #0
1a0004b4:	2201      	movs	r2, #1
1a0004b6:	2105      	movs	r1, #5
1a0004b8:	480c      	ldr	r0, [pc, #48]	; (1a0004ec <setLedFromMsk+0xec>)
1a0004ba:	f7ff ff6b 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0004be:	79fb      	ldrb	r3, [r7, #7]
1a0004c0:	f003 0304 	and.w	r3, r3, #4
1a0004c4:	2b00      	cmp	r3, #0
1a0004c6:	d006      	beq.n	1a0004d6 <setLedFromMsk+0xd6>
1a0004c8:	2301      	movs	r3, #1
1a0004ca:	2202      	movs	r2, #2
1a0004cc:	2105      	movs	r1, #5
1a0004ce:	4807      	ldr	r0, [pc, #28]	; (1a0004ec <setLedFromMsk+0xec>)
1a0004d0:	f7ff ff60 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0004d4:	e005      	b.n	1a0004e2 <setLedFromMsk+0xe2>
1a0004d6:	2300      	movs	r3, #0
1a0004d8:	2202      	movs	r2, #2
1a0004da:	2105      	movs	r1, #5
1a0004dc:	4803      	ldr	r0, [pc, #12]	; (1a0004ec <setLedFromMsk+0xec>)
1a0004de:	f7ff ff59 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0004e2:	bf00      	nop
1a0004e4:	3708      	adds	r7, #8
1a0004e6:	46bd      	mov	sp, r7
1a0004e8:	bd80      	pop	{r7, pc}
1a0004ea:	bf00      	nop
1a0004ec:	400f4000 	.word	0x400f4000

1a0004f0 <getKeyPressed>:
1a0004f0:	b580      	push	{r7, lr}
1a0004f2:	b082      	sub	sp, #8
1a0004f4:	af00      	add	r7, sp, #0
1a0004f6:	2300      	movs	r3, #0
1a0004f8:	71fb      	strb	r3, [r7, #7]
1a0004fa:	2204      	movs	r2, #4
1a0004fc:	2100      	movs	r1, #0
1a0004fe:	481f      	ldr	r0, [pc, #124]	; (1a00057c <getKeyPressed+0x8c>)
1a000500:	f7ff ff64 	bl	1a0003cc <Chip_GPIO_ReadPortBit>
1a000504:	4603      	mov	r3, r0
1a000506:	f083 0301 	eor.w	r3, r3, #1
1a00050a:	b2db      	uxtb	r3, r3
1a00050c:	2b00      	cmp	r3, #0
1a00050e:	d003      	beq.n	1a000518 <getKeyPressed+0x28>
1a000510:	79fb      	ldrb	r3, [r7, #7]
1a000512:	f043 0301 	orr.w	r3, r3, #1
1a000516:	71fb      	strb	r3, [r7, #7]
1a000518:	2208      	movs	r2, #8
1a00051a:	2100      	movs	r1, #0
1a00051c:	4817      	ldr	r0, [pc, #92]	; (1a00057c <getKeyPressed+0x8c>)
1a00051e:	f7ff ff55 	bl	1a0003cc <Chip_GPIO_ReadPortBit>
1a000522:	4603      	mov	r3, r0
1a000524:	f083 0301 	eor.w	r3, r3, #1
1a000528:	b2db      	uxtb	r3, r3
1a00052a:	2b00      	cmp	r3, #0
1a00052c:	d003      	beq.n	1a000536 <getKeyPressed+0x46>
1a00052e:	79fb      	ldrb	r3, [r7, #7]
1a000530:	f043 0302 	orr.w	r3, r3, #2
1a000534:	71fb      	strb	r3, [r7, #7]
1a000536:	2209      	movs	r2, #9
1a000538:	2100      	movs	r1, #0
1a00053a:	4810      	ldr	r0, [pc, #64]	; (1a00057c <getKeyPressed+0x8c>)
1a00053c:	f7ff ff46 	bl	1a0003cc <Chip_GPIO_ReadPortBit>
1a000540:	4603      	mov	r3, r0
1a000542:	f083 0301 	eor.w	r3, r3, #1
1a000546:	b2db      	uxtb	r3, r3
1a000548:	2b00      	cmp	r3, #0
1a00054a:	d003      	beq.n	1a000554 <getKeyPressed+0x64>
1a00054c:	79fb      	ldrb	r3, [r7, #7]
1a00054e:	f043 0304 	orr.w	r3, r3, #4
1a000552:	71fb      	strb	r3, [r7, #7]
1a000554:	2209      	movs	r2, #9
1a000556:	2101      	movs	r1, #1
1a000558:	4808      	ldr	r0, [pc, #32]	; (1a00057c <getKeyPressed+0x8c>)
1a00055a:	f7ff ff37 	bl	1a0003cc <Chip_GPIO_ReadPortBit>
1a00055e:	4603      	mov	r3, r0
1a000560:	f083 0301 	eor.w	r3, r3, #1
1a000564:	b2db      	uxtb	r3, r3
1a000566:	2b00      	cmp	r3, #0
1a000568:	d003      	beq.n	1a000572 <getKeyPressed+0x82>
1a00056a:	79fb      	ldrb	r3, [r7, #7]
1a00056c:	f043 0308 	orr.w	r3, r3, #8
1a000570:	71fb      	strb	r3, [r7, #7]
1a000572:	79fb      	ldrb	r3, [r7, #7]
1a000574:	4618      	mov	r0, r3
1a000576:	3708      	adds	r7, #8
1a000578:	46bd      	mov	sp, r7
1a00057a:	bd80      	pop	{r7, pc}
1a00057c:	400f4000 	.word	0x400f4000

1a000580 <ResetISR>:
1a000580:	b580      	push	{r7, lr}
1a000582:	b088      	sub	sp, #32
1a000584:	af00      	add	r7, sp, #0
1a000586:	b672      	cpsid	i
1a000588:	4b26      	ldr	r3, [pc, #152]	; (1a000624 <ResetISR+0xa4>)
1a00058a:	617b      	str	r3, [r7, #20]
1a00058c:	697b      	ldr	r3, [r7, #20]
1a00058e:	4a26      	ldr	r2, [pc, #152]	; (1a000628 <ResetISR+0xa8>)
1a000590:	601a      	str	r2, [r3, #0]
1a000592:	697b      	ldr	r3, [r7, #20]
1a000594:	3304      	adds	r3, #4
1a000596:	4a25      	ldr	r2, [pc, #148]	; (1a00062c <ResetISR+0xac>)
1a000598:	601a      	str	r2, [r3, #0]
1a00059a:	4b25      	ldr	r3, [pc, #148]	; (1a000630 <ResetISR+0xb0>)
1a00059c:	613b      	str	r3, [r7, #16]
1a00059e:	2300      	movs	r3, #0
1a0005a0:	61fb      	str	r3, [r7, #28]
1a0005a2:	e009      	b.n	1a0005b8 <ResetISR+0x38>
1a0005a4:	69fb      	ldr	r3, [r7, #28]
1a0005a6:	009b      	lsls	r3, r3, #2
1a0005a8:	693a      	ldr	r2, [r7, #16]
1a0005aa:	4413      	add	r3, r2
1a0005ac:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a0005b0:	601a      	str	r2, [r3, #0]
1a0005b2:	69fb      	ldr	r3, [r7, #28]
1a0005b4:	3301      	adds	r3, #1
1a0005b6:	61fb      	str	r3, [r7, #28]
1a0005b8:	69fb      	ldr	r3, [r7, #28]
1a0005ba:	2b07      	cmp	r3, #7
1a0005bc:	d9f2      	bls.n	1a0005a4 <ResetISR+0x24>
1a0005be:	b662      	cpsie	i
1a0005c0:	4b1c      	ldr	r3, [pc, #112]	; (1a000634 <ResetISR+0xb4>)
1a0005c2:	61bb      	str	r3, [r7, #24]
1a0005c4:	e013      	b.n	1a0005ee <ResetISR+0x6e>
1a0005c6:	69bb      	ldr	r3, [r7, #24]
1a0005c8:	1d1a      	adds	r2, r3, #4
1a0005ca:	61ba      	str	r2, [r7, #24]
1a0005cc:	681b      	ldr	r3, [r3, #0]
1a0005ce:	607b      	str	r3, [r7, #4]
1a0005d0:	69bb      	ldr	r3, [r7, #24]
1a0005d2:	1d1a      	adds	r2, r3, #4
1a0005d4:	61ba      	str	r2, [r7, #24]
1a0005d6:	681b      	ldr	r3, [r3, #0]
1a0005d8:	60fb      	str	r3, [r7, #12]
1a0005da:	69bb      	ldr	r3, [r7, #24]
1a0005dc:	1d1a      	adds	r2, r3, #4
1a0005de:	61ba      	str	r2, [r7, #24]
1a0005e0:	681b      	ldr	r3, [r3, #0]
1a0005e2:	60bb      	str	r3, [r7, #8]
1a0005e4:	68ba      	ldr	r2, [r7, #8]
1a0005e6:	68f9      	ldr	r1, [r7, #12]
1a0005e8:	6878      	ldr	r0, [r7, #4]
1a0005ea:	f7ff fd9d 	bl	1a000128 <data_init>
1a0005ee:	69bb      	ldr	r3, [r7, #24]
1a0005f0:	4a11      	ldr	r2, [pc, #68]	; (1a000638 <ResetISR+0xb8>)
1a0005f2:	4293      	cmp	r3, r2
1a0005f4:	d3e7      	bcc.n	1a0005c6 <ResetISR+0x46>
1a0005f6:	e00d      	b.n	1a000614 <ResetISR+0x94>
1a0005f8:	69bb      	ldr	r3, [r7, #24]
1a0005fa:	1d1a      	adds	r2, r3, #4
1a0005fc:	61ba      	str	r2, [r7, #24]
1a0005fe:	681b      	ldr	r3, [r3, #0]
1a000600:	60fb      	str	r3, [r7, #12]
1a000602:	69bb      	ldr	r3, [r7, #24]
1a000604:	1d1a      	adds	r2, r3, #4
1a000606:	61ba      	str	r2, [r7, #24]
1a000608:	681b      	ldr	r3, [r3, #0]
1a00060a:	60bb      	str	r3, [r7, #8]
1a00060c:	68b9      	ldr	r1, [r7, #8]
1a00060e:	68f8      	ldr	r0, [r7, #12]
1a000610:	f7ff fdac 	bl	1a00016c <bss_init>
1a000614:	69bb      	ldr	r3, [r7, #24]
1a000616:	4a09      	ldr	r2, [pc, #36]	; (1a00063c <ResetISR+0xbc>)
1a000618:	4293      	cmp	r3, r2
1a00061a:	d3ed      	bcc.n	1a0005f8 <ResetISR+0x78>
1a00061c:	f000 f910 	bl	1a000840 <main>
1a000620:	e7fe      	b.n	1a000620 <ResetISR+0xa0>
1a000622:	bf00      	nop
1a000624:	40053100 	.word	0x40053100
1a000628:	10df1000 	.word	0x10df1000
1a00062c:	01dff7ff 	.word	0x01dff7ff
1a000630:	e000e280 	.word	0xe000e280
1a000634:	1a000114 	.word	0x1a000114
1a000638:	1a000120 	.word	0x1a000120
1a00063c:	1a000128 	.word	0x1a000128

1a000640 <Chip_PININT_ClearIntStatus>:
1a000640:	b480      	push	{r7}
1a000642:	b083      	sub	sp, #12
1a000644:	af00      	add	r7, sp, #0
1a000646:	6078      	str	r0, [r7, #4]
1a000648:	6039      	str	r1, [r7, #0]
1a00064a:	687b      	ldr	r3, [r7, #4]
1a00064c:	683a      	ldr	r2, [r7, #0]
1a00064e:	625a      	str	r2, [r3, #36]	; 0x24
1a000650:	bf00      	nop
1a000652:	370c      	adds	r7, #12
1a000654:	46bd      	mov	sp, r7
1a000656:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00065a:	4770      	bx	lr

1a00065c <StopWatch_Elapsed>:
1a00065c:	b580      	push	{r7, lr}
1a00065e:	b082      	sub	sp, #8
1a000660:	af00      	add	r7, sp, #0
1a000662:	6078      	str	r0, [r7, #4]
1a000664:	f001 fa4e 	bl	1a001b04 <StopWatch_Start>
1a000668:	4602      	mov	r2, r0
1a00066a:	687b      	ldr	r3, [r7, #4]
1a00066c:	1ad3      	subs	r3, r2, r3
1a00066e:	4618      	mov	r0, r3
1a000670:	3708      	adds	r7, #8
1a000672:	46bd      	mov	sp, r7
1a000674:	bd80      	pop	{r7, pc}

1a000676 <StopWatch_DelayMs>:
1a000676:	b580      	push	{r7, lr}
1a000678:	b084      	sub	sp, #16
1a00067a:	af00      	add	r7, sp, #0
1a00067c:	6078      	str	r0, [r7, #4]
1a00067e:	6878      	ldr	r0, [r7, #4]
1a000680:	f001 fa5c 	bl	1a001b3c <StopWatch_MsToTicks>
1a000684:	60f8      	str	r0, [r7, #12]
1a000686:	f001 fa3d 	bl	1a001b04 <StopWatch_Start>
1a00068a:	60b8      	str	r0, [r7, #8]
1a00068c:	bf00      	nop
1a00068e:	68b8      	ldr	r0, [r7, #8]
1a000690:	f7ff ffe4 	bl	1a00065c <StopWatch_Elapsed>
1a000694:	4602      	mov	r2, r0
1a000696:	68fb      	ldr	r3, [r7, #12]
1a000698:	4293      	cmp	r3, r2
1a00069a:	d8f8      	bhi.n	1a00068e <StopWatch_DelayMs+0x18>
1a00069c:	bf00      	nop
1a00069e:	3710      	adds	r7, #16
1a0006a0:	46bd      	mov	sp, r7
1a0006a2:	bd80      	pop	{r7, pc}

1a0006a4 <respuesta_teclado>:
1a0006a4:	b580      	push	{r7, lr}
1a0006a6:	b084      	sub	sp, #16
1a0006a8:	af02      	add	r7, sp, #8
1a0006aa:	4603      	mov	r3, r0
1a0006ac:	71fb      	strb	r3, [r7, #7]
1a0006ae:	4b27      	ldr	r3, [pc, #156]	; (1a00074c <respuesta_teclado+0xa8>)
1a0006b0:	781b      	ldrb	r3, [r3, #0]
1a0006b2:	b2db      	uxtb	r3, r3
1a0006b4:	2b00      	cmp	r3, #0
1a0006b6:	d107      	bne.n	1a0006c8 <respuesta_teclado+0x24>
1a0006b8:	f000 fc82 	bl	1a000fc0 <genera_semilla>
1a0006bc:	f000 fcb4 	bl	1a001028 <generar_secuencia>
1a0006c0:	4b22      	ldr	r3, [pc, #136]	; (1a00074c <respuesta_teclado+0xa8>)
1a0006c2:	2201      	movs	r2, #1
1a0006c4:	701a      	strb	r2, [r3, #0]
1a0006c6:	e03d      	b.n	1a000744 <respuesta_teclado+0xa0>
1a0006c8:	79fa      	ldrb	r2, [r7, #7]
1a0006ca:	4921      	ldr	r1, [pc, #132]	; (1a000750 <respuesta_teclado+0xac>)
1a0006cc:	4613      	mov	r3, r2
1a0006ce:	009b      	lsls	r3, r3, #2
1a0006d0:	4413      	add	r3, r2
1a0006d2:	005b      	lsls	r3, r3, #1
1a0006d4:	440b      	add	r3, r1
1a0006d6:	22f4      	movs	r2, #244	; 0xf4
1a0006d8:	9200      	str	r2, [sp, #0]
1a0006da:	681a      	ldr	r2, [r3, #0]
1a0006dc:	2000      	movs	r0, #0
1a0006de:	4610      	mov	r0, r2
1a0006e0:	685a      	ldr	r2, [r3, #4]
1a0006e2:	2100      	movs	r1, #0
1a0006e4:	4611      	mov	r1, r2
1a0006e6:	891b      	ldrh	r3, [r3, #8]
1a0006e8:	2200      	movs	r2, #0
1a0006ea:	f363 020f 	bfi	r2, r3, #0, #16
1a0006ee:	2301      	movs	r3, #1
1a0006f0:	f000 fd50 	bl	1a001194 <titilar>
1a0006f4:	79fa      	ldrb	r2, [r7, #7]
1a0006f6:	4b17      	ldr	r3, [pc, #92]	; (1a000754 <respuesta_teclado+0xb0>)
1a0006f8:	781b      	ldrb	r3, [r3, #0]
1a0006fa:	4618      	mov	r0, r3
1a0006fc:	4916      	ldr	r1, [pc, #88]	; (1a000758 <respuesta_teclado+0xb4>)
1a0006fe:	4603      	mov	r3, r0
1a000700:	009b      	lsls	r3, r3, #2
1a000702:	4403      	add	r3, r0
1a000704:	005b      	lsls	r3, r3, #1
1a000706:	18c8      	adds	r0, r1, r3
1a000708:	4911      	ldr	r1, [pc, #68]	; (1a000750 <respuesta_teclado+0xac>)
1a00070a:	4613      	mov	r3, r2
1a00070c:	009b      	lsls	r3, r3, #2
1a00070e:	4413      	add	r3, r2
1a000710:	005b      	lsls	r3, r3, #1
1a000712:	18ca      	adds	r2, r1, r3
1a000714:	4603      	mov	r3, r0
1a000716:	6810      	ldr	r0, [r2, #0]
1a000718:	6851      	ldr	r1, [r2, #4]
1a00071a:	6018      	str	r0, [r3, #0]
1a00071c:	6059      	str	r1, [r3, #4]
1a00071e:	8912      	ldrh	r2, [r2, #8]
1a000720:	811a      	strh	r2, [r3, #8]
1a000722:	4b0c      	ldr	r3, [pc, #48]	; (1a000754 <respuesta_teclado+0xb0>)
1a000724:	781b      	ldrb	r3, [r3, #0]
1a000726:	3301      	adds	r3, #1
1a000728:	b2da      	uxtb	r2, r3
1a00072a:	4b0a      	ldr	r3, [pc, #40]	; (1a000754 <respuesta_teclado+0xb0>)
1a00072c:	701a      	strb	r2, [r3, #0]
1a00072e:	4b09      	ldr	r3, [pc, #36]	; (1a000754 <respuesta_teclado+0xb0>)
1a000730:	781a      	ldrb	r2, [r3, #0]
1a000732:	4b0a      	ldr	r3, [pc, #40]	; (1a00075c <respuesta_teclado+0xb8>)
1a000734:	781b      	ldrb	r3, [r3, #0]
1a000736:	429a      	cmp	r2, r3
1a000738:	d904      	bls.n	1a000744 <respuesta_teclado+0xa0>
1a00073a:	4b06      	ldr	r3, [pc, #24]	; (1a000754 <respuesta_teclado+0xb0>)
1a00073c:	2200      	movs	r2, #0
1a00073e:	701a      	strb	r2, [r3, #0]
1a000740:	f000 fdc2 	bl	1a0012c8 <evaluar_secuencia>
1a000744:	bf00      	nop
1a000746:	3708      	adds	r7, #8
1a000748:	46bd      	mov	sp, r7
1a00074a:	bd80      	pop	{r7, pc}
1a00074c:	10000430 	.word	0x10000430
1a000750:	1a0028a0 	.word	0x1a0028a0
1a000754:	100009bc 	.word	0x100009bc
1a000758:	1000044c 	.word	0x1000044c
1a00075c:	10000754 	.word	0x10000754

1a000760 <GPIO1_IRQHandler>:
1a000760:	b580      	push	{r7, lr}
1a000762:	af00      	add	r7, sp, #0
1a000764:	f000 fc20 	bl	1a000fa8 <disable_SysTick>
1a000768:	f44f 70c8 	mov.w	r0, #400	; 0x190
1a00076c:	f7ff ff83 	bl	1a000676 <StopWatch_DelayMs>
1a000770:	2005      	movs	r0, #5
1a000772:	f7ff ff97 	bl	1a0006a4 <respuesta_teclado>
1a000776:	2102      	movs	r1, #2
1a000778:	4803      	ldr	r0, [pc, #12]	; (1a000788 <GPIO1_IRQHandler+0x28>)
1a00077a:	f7ff ff61 	bl	1a000640 <Chip_PININT_ClearIntStatus>
1a00077e:	f000 fbff 	bl	1a000f80 <configurar_SysTick>
1a000782:	bf00      	nop
1a000784:	bd80      	pop	{r7, pc}
1a000786:	bf00      	nop
1a000788:	40087000 	.word	0x40087000

1a00078c <GPIO2_IRQHandler>:
1a00078c:	b580      	push	{r7, lr}
1a00078e:	af00      	add	r7, sp, #0
1a000790:	f000 fc0a 	bl	1a000fa8 <disable_SysTick>
1a000794:	f44f 70c8 	mov.w	r0, #400	; 0x190
1a000798:	f7ff ff6d 	bl	1a000676 <StopWatch_DelayMs>
1a00079c:	2001      	movs	r0, #1
1a00079e:	f7ff ff81 	bl	1a0006a4 <respuesta_teclado>
1a0007a2:	2104      	movs	r1, #4
1a0007a4:	4803      	ldr	r0, [pc, #12]	; (1a0007b4 <GPIO2_IRQHandler+0x28>)
1a0007a6:	f7ff ff4b 	bl	1a000640 <Chip_PININT_ClearIntStatus>
1a0007aa:	f000 fbe9 	bl	1a000f80 <configurar_SysTick>
1a0007ae:	bf00      	nop
1a0007b0:	bd80      	pop	{r7, pc}
1a0007b2:	bf00      	nop
1a0007b4:	40087000 	.word	0x40087000

1a0007b8 <GPIO3_IRQHandler>:
1a0007b8:	b580      	push	{r7, lr}
1a0007ba:	af00      	add	r7, sp, #0
1a0007bc:	f000 fbf4 	bl	1a000fa8 <disable_SysTick>
1a0007c0:	f44f 70c8 	mov.w	r0, #400	; 0x190
1a0007c4:	f7ff ff57 	bl	1a000676 <StopWatch_DelayMs>
1a0007c8:	2002      	movs	r0, #2
1a0007ca:	f7ff ff6b 	bl	1a0006a4 <respuesta_teclado>
1a0007ce:	2108      	movs	r1, #8
1a0007d0:	4803      	ldr	r0, [pc, #12]	; (1a0007e0 <GPIO3_IRQHandler+0x28>)
1a0007d2:	f7ff ff35 	bl	1a000640 <Chip_PININT_ClearIntStatus>
1a0007d6:	f000 fbd3 	bl	1a000f80 <configurar_SysTick>
1a0007da:	bf00      	nop
1a0007dc:	bd80      	pop	{r7, pc}
1a0007de:	bf00      	nop
1a0007e0:	40087000 	.word	0x40087000

1a0007e4 <GPIO4_IRQHandler>:
1a0007e4:	b580      	push	{r7, lr}
1a0007e6:	af00      	add	r7, sp, #0
1a0007e8:	f000 fbde 	bl	1a000fa8 <disable_SysTick>
1a0007ec:	f44f 70c8 	mov.w	r0, #400	; 0x190
1a0007f0:	f7ff ff41 	bl	1a000676 <StopWatch_DelayMs>
1a0007f4:	2003      	movs	r0, #3
1a0007f6:	f7ff ff55 	bl	1a0006a4 <respuesta_teclado>
1a0007fa:	2110      	movs	r1, #16
1a0007fc:	4803      	ldr	r0, [pc, #12]	; (1a00080c <GPIO4_IRQHandler+0x28>)
1a0007fe:	f7ff ff1f 	bl	1a000640 <Chip_PININT_ClearIntStatus>
1a000802:	f000 fbbd 	bl	1a000f80 <configurar_SysTick>
1a000806:	bf00      	nop
1a000808:	bd80      	pop	{r7, pc}
1a00080a:	bf00      	nop
1a00080c:	40087000 	.word	0x40087000

1a000810 <SysTick_Handler>:
1a000810:	b480      	push	{r7}
1a000812:	af00      	add	r7, sp, #0
1a000814:	bf00      	nop
1a000816:	46bd      	mov	sp, r7
1a000818:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00081c:	4770      	bx	lr
1a00081e:	Address 0x000000001a00081e is out of bounds.


1a000820 <UART2_IRQHandler>:
1a000820:	b580      	push	{r7, lr}
1a000822:	af00      	add	r7, sp, #0
1a000824:	4a03      	ldr	r2, [pc, #12]	; (1a000834 <UART2_IRQHandler+0x14>)
1a000826:	4904      	ldr	r1, [pc, #16]	; (1a000838 <UART2_IRQHandler+0x18>)
1a000828:	4804      	ldr	r0, [pc, #16]	; (1a00083c <UART2_IRQHandler+0x1c>)
1a00082a:	f001 f8e2 	bl	1a0019f2 <Chip_UART_IRQRBHandler>
1a00082e:	bf00      	nop
1a000830:	bd80      	pop	{r7, pc}
1a000832:	bf00      	nop
1a000834:	1000052c 	.word	0x1000052c
1a000838:	10000740 	.word	0x10000740
1a00083c:	400c1000 	.word	0x400c1000

1a000840 <main>:
1a000840:	b580      	push	{r7, lr}
1a000842:	b082      	sub	sp, #8
1a000844:	af00      	add	r7, sp, #0
1a000846:	2300      	movs	r3, #0
1a000848:	71fb      	strb	r3, [r7, #7]
1a00084a:	f000 fa1d 	bl	1a000c88 <inicializar_sistema>
1a00084e:	f000 fa27 	bl	1a000ca0 <inicializar_leds>
1a000852:	f000 fa89 	bl	1a000d68 <inicializar_teclado>
1a000856:	f000 fb13 	bl	1a000e80 <init_interrupciones>
1a00085a:	f000 facf 	bl	1a000dfc <inicializar_USART>
1a00085e:	f000 fb8f 	bl	1a000f80 <configurar_SysTick>
1a000862:	bf30      	wfi
1a000864:	e7fd      	b.n	1a000862 <main+0x22>
1a000866:	Address 0x000000001a000866 is out of bounds.


1a000868 <NVIC_EnableIRQ>:
1a000868:	b480      	push	{r7}
1a00086a:	b083      	sub	sp, #12
1a00086c:	af00      	add	r7, sp, #0
1a00086e:	4603      	mov	r3, r0
1a000870:	71fb      	strb	r3, [r7, #7]
1a000872:	79fb      	ldrb	r3, [r7, #7]
1a000874:	f003 031f 	and.w	r3, r3, #31
1a000878:	2201      	movs	r2, #1
1a00087a:	fa02 f103 	lsl.w	r1, r2, r3
1a00087e:	4a06      	ldr	r2, [pc, #24]	; (1a000898 <NVIC_EnableIRQ+0x30>)
1a000880:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000884:	095b      	lsrs	r3, r3, #5
1a000886:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a00088a:	bf00      	nop
1a00088c:	370c      	adds	r7, #12
1a00088e:	46bd      	mov	sp, r7
1a000890:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000894:	4770      	bx	lr
1a000896:	bf00      	nop
1a000898:	e000e100 	.word	0xe000e100

1a00089c <NVIC_ClearPendingIRQ>:
1a00089c:	b480      	push	{r7}
1a00089e:	b083      	sub	sp, #12
1a0008a0:	af00      	add	r7, sp, #0
1a0008a2:	4603      	mov	r3, r0
1a0008a4:	71fb      	strb	r3, [r7, #7]
1a0008a6:	79fb      	ldrb	r3, [r7, #7]
1a0008a8:	f003 031f 	and.w	r3, r3, #31
1a0008ac:	2201      	movs	r2, #1
1a0008ae:	fa02 f103 	lsl.w	r1, r2, r3
1a0008b2:	4a06      	ldr	r2, [pc, #24]	; (1a0008cc <NVIC_ClearPendingIRQ+0x30>)
1a0008b4:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0008b8:	095b      	lsrs	r3, r3, #5
1a0008ba:	3360      	adds	r3, #96	; 0x60
1a0008bc:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0008c0:	bf00      	nop
1a0008c2:	370c      	adds	r7, #12
1a0008c4:	46bd      	mov	sp, r7
1a0008c6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008ca:	4770      	bx	lr
1a0008cc:	e000e100 	.word	0xe000e100

1a0008d0 <NVIC_SetPriority>:
1a0008d0:	b480      	push	{r7}
1a0008d2:	b083      	sub	sp, #12
1a0008d4:	af00      	add	r7, sp, #0
1a0008d6:	4603      	mov	r3, r0
1a0008d8:	6039      	str	r1, [r7, #0]
1a0008da:	71fb      	strb	r3, [r7, #7]
1a0008dc:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0008e0:	2b00      	cmp	r3, #0
1a0008e2:	da0b      	bge.n	1a0008fc <NVIC_SetPriority+0x2c>
1a0008e4:	683b      	ldr	r3, [r7, #0]
1a0008e6:	b2da      	uxtb	r2, r3
1a0008e8:	490c      	ldr	r1, [pc, #48]	; (1a00091c <NVIC_SetPriority+0x4c>)
1a0008ea:	79fb      	ldrb	r3, [r7, #7]
1a0008ec:	f003 030f 	and.w	r3, r3, #15
1a0008f0:	3b04      	subs	r3, #4
1a0008f2:	0152      	lsls	r2, r2, #5
1a0008f4:	b2d2      	uxtb	r2, r2
1a0008f6:	440b      	add	r3, r1
1a0008f8:	761a      	strb	r2, [r3, #24]
1a0008fa:	e009      	b.n	1a000910 <NVIC_SetPriority+0x40>
1a0008fc:	683b      	ldr	r3, [r7, #0]
1a0008fe:	b2da      	uxtb	r2, r3
1a000900:	4907      	ldr	r1, [pc, #28]	; (1a000920 <NVIC_SetPriority+0x50>)
1a000902:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000906:	0152      	lsls	r2, r2, #5
1a000908:	b2d2      	uxtb	r2, r2
1a00090a:	440b      	add	r3, r1
1a00090c:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a000910:	bf00      	nop
1a000912:	370c      	adds	r7, #12
1a000914:	46bd      	mov	sp, r7
1a000916:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00091a:	4770      	bx	lr
1a00091c:	e000ed00 	.word	0xe000ed00
1a000920:	e000e100 	.word	0xe000e100

1a000924 <SysTick_Config>:
1a000924:	b580      	push	{r7, lr}
1a000926:	b082      	sub	sp, #8
1a000928:	af00      	add	r7, sp, #0
1a00092a:	6078      	str	r0, [r7, #4]
1a00092c:	687b      	ldr	r3, [r7, #4]
1a00092e:	3b01      	subs	r3, #1
1a000930:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a000934:	d301      	bcc.n	1a00093a <SysTick_Config+0x16>
1a000936:	2301      	movs	r3, #1
1a000938:	e00f      	b.n	1a00095a <SysTick_Config+0x36>
1a00093a:	4a0a      	ldr	r2, [pc, #40]	; (1a000964 <SysTick_Config+0x40>)
1a00093c:	687b      	ldr	r3, [r7, #4]
1a00093e:	3b01      	subs	r3, #1
1a000940:	6053      	str	r3, [r2, #4]
1a000942:	2107      	movs	r1, #7
1a000944:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a000948:	f7ff ffc2 	bl	1a0008d0 <NVIC_SetPriority>
1a00094c:	4b05      	ldr	r3, [pc, #20]	; (1a000964 <SysTick_Config+0x40>)
1a00094e:	2200      	movs	r2, #0
1a000950:	609a      	str	r2, [r3, #8]
1a000952:	4b04      	ldr	r3, [pc, #16]	; (1a000964 <SysTick_Config+0x40>)
1a000954:	2207      	movs	r2, #7
1a000956:	601a      	str	r2, [r3, #0]
1a000958:	2300      	movs	r3, #0
1a00095a:	4618      	mov	r0, r3
1a00095c:	3708      	adds	r7, #8
1a00095e:	46bd      	mov	sp, r7
1a000960:	bd80      	pop	{r7, pc}
1a000962:	bf00      	nop
1a000964:	e000e010 	.word	0xe000e010

1a000968 <Chip_SCU_PinMuxSet>:
1a000968:	b480      	push	{r7}
1a00096a:	b083      	sub	sp, #12
1a00096c:	af00      	add	r7, sp, #0
1a00096e:	4603      	mov	r3, r0
1a000970:	71fb      	strb	r3, [r7, #7]
1a000972:	460b      	mov	r3, r1
1a000974:	71bb      	strb	r3, [r7, #6]
1a000976:	4613      	mov	r3, r2
1a000978:	80bb      	strh	r3, [r7, #4]
1a00097a:	4807      	ldr	r0, [pc, #28]	; (1a000998 <Chip_SCU_PinMuxSet+0x30>)
1a00097c:	79f9      	ldrb	r1, [r7, #7]
1a00097e:	79bb      	ldrb	r3, [r7, #6]
1a000980:	88ba      	ldrh	r2, [r7, #4]
1a000982:	0149      	lsls	r1, r1, #5
1a000984:	440b      	add	r3, r1
1a000986:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a00098a:	bf00      	nop
1a00098c:	370c      	adds	r7, #12
1a00098e:	46bd      	mov	sp, r7
1a000990:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000994:	4770      	bx	lr
1a000996:	bf00      	nop
1a000998:	40086000 	.word	0x40086000

1a00099c <Chip_SCU_PinMux>:
1a00099c:	b590      	push	{r4, r7, lr}
1a00099e:	b083      	sub	sp, #12
1a0009a0:	af00      	add	r7, sp, #0
1a0009a2:	4604      	mov	r4, r0
1a0009a4:	4608      	mov	r0, r1
1a0009a6:	4611      	mov	r1, r2
1a0009a8:	461a      	mov	r2, r3
1a0009aa:	4623      	mov	r3, r4
1a0009ac:	71fb      	strb	r3, [r7, #7]
1a0009ae:	4603      	mov	r3, r0
1a0009b0:	71bb      	strb	r3, [r7, #6]
1a0009b2:	460b      	mov	r3, r1
1a0009b4:	80bb      	strh	r3, [r7, #4]
1a0009b6:	4613      	mov	r3, r2
1a0009b8:	70fb      	strb	r3, [r7, #3]
1a0009ba:	78fb      	ldrb	r3, [r7, #3]
1a0009bc:	b29a      	uxth	r2, r3
1a0009be:	88bb      	ldrh	r3, [r7, #4]
1a0009c0:	4313      	orrs	r3, r2
1a0009c2:	b29a      	uxth	r2, r3
1a0009c4:	79b9      	ldrb	r1, [r7, #6]
1a0009c6:	79fb      	ldrb	r3, [r7, #7]
1a0009c8:	4618      	mov	r0, r3
1a0009ca:	f7ff ffcd 	bl	1a000968 <Chip_SCU_PinMuxSet>
1a0009ce:	bf00      	nop
1a0009d0:	370c      	adds	r7, #12
1a0009d2:	46bd      	mov	sp, r7
1a0009d4:	bd90      	pop	{r4, r7, pc}
1a0009d6:	Address 0x000000001a0009d6 is out of bounds.


1a0009d8 <Chip_SCU_GPIOIntPinSel>:
1a0009d8:	b480      	push	{r7}
1a0009da:	b085      	sub	sp, #20
1a0009dc:	af00      	add	r7, sp, #0
1a0009de:	4603      	mov	r3, r0
1a0009e0:	71fb      	strb	r3, [r7, #7]
1a0009e2:	460b      	mov	r3, r1
1a0009e4:	71bb      	strb	r3, [r7, #6]
1a0009e6:	4613      	mov	r3, r2
1a0009e8:	717b      	strb	r3, [r7, #5]
1a0009ea:	79fb      	ldrb	r3, [r7, #7]
1a0009ec:	00db      	lsls	r3, r3, #3
1a0009ee:	f003 0318 	and.w	r3, r3, #24
1a0009f2:	60fb      	str	r3, [r7, #12]
1a0009f4:	79bb      	ldrb	r3, [r7, #6]
1a0009f6:	015b      	lsls	r3, r3, #5
1a0009f8:	b2da      	uxtb	r2, r3
1a0009fa:	797b      	ldrb	r3, [r7, #5]
1a0009fc:	f003 031f 	and.w	r3, r3, #31
1a000a00:	431a      	orrs	r2, r3
1a000a02:	68fb      	ldr	r3, [r7, #12]
1a000a04:	fa02 f303 	lsl.w	r3, r2, r3
1a000a08:	60bb      	str	r3, [r7, #8]
1a000a0a:	4a0f      	ldr	r2, [pc, #60]	; (1a000a48 <Chip_SCU_GPIOIntPinSel+0x70>)
1a000a0c:	79fb      	ldrb	r3, [r7, #7]
1a000a0e:	089b      	lsrs	r3, r3, #2
1a000a10:	b2db      	uxtb	r3, r3
1a000a12:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a000a16:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a000a1a:	21ff      	movs	r1, #255	; 0xff
1a000a1c:	68fa      	ldr	r2, [r7, #12]
1a000a1e:	fa01 f202 	lsl.w	r2, r1, r2
1a000a22:	43d2      	mvns	r2, r2
1a000a24:	401a      	ands	r2, r3
1a000a26:	4908      	ldr	r1, [pc, #32]	; (1a000a48 <Chip_SCU_GPIOIntPinSel+0x70>)
1a000a28:	79fb      	ldrb	r3, [r7, #7]
1a000a2a:	089b      	lsrs	r3, r3, #2
1a000a2c:	b2db      	uxtb	r3, r3
1a000a2e:	4618      	mov	r0, r3
1a000a30:	68bb      	ldr	r3, [r7, #8]
1a000a32:	431a      	orrs	r2, r3
1a000a34:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a000a38:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a000a3c:	bf00      	nop
1a000a3e:	3714      	adds	r7, #20
1a000a40:	46bd      	mov	sp, r7
1a000a42:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a46:	4770      	bx	lr
1a000a48:	40086000 	.word	0x40086000

1a000a4c <Chip_GPIO_SetPinState>:
1a000a4c:	b480      	push	{r7}
1a000a4e:	b083      	sub	sp, #12
1a000a50:	af00      	add	r7, sp, #0
1a000a52:	6078      	str	r0, [r7, #4]
1a000a54:	4608      	mov	r0, r1
1a000a56:	4611      	mov	r1, r2
1a000a58:	461a      	mov	r2, r3
1a000a5a:	4603      	mov	r3, r0
1a000a5c:	70fb      	strb	r3, [r7, #3]
1a000a5e:	460b      	mov	r3, r1
1a000a60:	70bb      	strb	r3, [r7, #2]
1a000a62:	4613      	mov	r3, r2
1a000a64:	707b      	strb	r3, [r7, #1]
1a000a66:	78fa      	ldrb	r2, [r7, #3]
1a000a68:	78bb      	ldrb	r3, [r7, #2]
1a000a6a:	7878      	ldrb	r0, [r7, #1]
1a000a6c:	6879      	ldr	r1, [r7, #4]
1a000a6e:	0152      	lsls	r2, r2, #5
1a000a70:	440a      	add	r2, r1
1a000a72:	4413      	add	r3, r2
1a000a74:	4602      	mov	r2, r0
1a000a76:	701a      	strb	r2, [r3, #0]
1a000a78:	bf00      	nop
1a000a7a:	370c      	adds	r7, #12
1a000a7c:	46bd      	mov	sp, r7
1a000a7e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a82:	4770      	bx	lr

1a000a84 <Chip_GPIO_SetPinDIROutput>:
1a000a84:	b480      	push	{r7}
1a000a86:	b083      	sub	sp, #12
1a000a88:	af00      	add	r7, sp, #0
1a000a8a:	6078      	str	r0, [r7, #4]
1a000a8c:	460b      	mov	r3, r1
1a000a8e:	70fb      	strb	r3, [r7, #3]
1a000a90:	4613      	mov	r3, r2
1a000a92:	70bb      	strb	r3, [r7, #2]
1a000a94:	78fa      	ldrb	r2, [r7, #3]
1a000a96:	687b      	ldr	r3, [r7, #4]
1a000a98:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000a9c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000aa0:	78bb      	ldrb	r3, [r7, #2]
1a000aa2:	2201      	movs	r2, #1
1a000aa4:	fa02 f303 	lsl.w	r3, r2, r3
1a000aa8:	78fa      	ldrb	r2, [r7, #3]
1a000aaa:	4319      	orrs	r1, r3
1a000aac:	687b      	ldr	r3, [r7, #4]
1a000aae:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000ab2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000ab6:	bf00      	nop
1a000ab8:	370c      	adds	r7, #12
1a000aba:	46bd      	mov	sp, r7
1a000abc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ac0:	4770      	bx	lr

1a000ac2 <Chip_GPIO_SetPinDIRInput>:
1a000ac2:	b480      	push	{r7}
1a000ac4:	b083      	sub	sp, #12
1a000ac6:	af00      	add	r7, sp, #0
1a000ac8:	6078      	str	r0, [r7, #4]
1a000aca:	460b      	mov	r3, r1
1a000acc:	70fb      	strb	r3, [r7, #3]
1a000ace:	4613      	mov	r3, r2
1a000ad0:	70bb      	strb	r3, [r7, #2]
1a000ad2:	78fa      	ldrb	r2, [r7, #3]
1a000ad4:	687b      	ldr	r3, [r7, #4]
1a000ad6:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000ada:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000ade:	78bb      	ldrb	r3, [r7, #2]
1a000ae0:	2201      	movs	r2, #1
1a000ae2:	fa02 f303 	lsl.w	r3, r2, r3
1a000ae6:	43db      	mvns	r3, r3
1a000ae8:	78fa      	ldrb	r2, [r7, #3]
1a000aea:	4019      	ands	r1, r3
1a000aec:	687b      	ldr	r3, [r7, #4]
1a000aee:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000af2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000af6:	bf00      	nop
1a000af8:	370c      	adds	r7, #12
1a000afa:	46bd      	mov	sp, r7
1a000afc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b00:	4770      	bx	lr

1a000b02 <Chip_GPIO_SetPortOutLow>:
1a000b02:	b480      	push	{r7}
1a000b04:	b085      	sub	sp, #20
1a000b06:	af00      	add	r7, sp, #0
1a000b08:	60f8      	str	r0, [r7, #12]
1a000b0a:	460b      	mov	r3, r1
1a000b0c:	607a      	str	r2, [r7, #4]
1a000b0e:	72fb      	strb	r3, [r7, #11]
1a000b10:	7afa      	ldrb	r2, [r7, #11]
1a000b12:	68fb      	ldr	r3, [r7, #12]
1a000b14:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a000b18:	6879      	ldr	r1, [r7, #4]
1a000b1a:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000b1e:	bf00      	nop
1a000b20:	3714      	adds	r7, #20
1a000b22:	46bd      	mov	sp, r7
1a000b24:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b28:	4770      	bx	lr

1a000b2a <Chip_GPIO_SetPinToggle>:
1a000b2a:	b480      	push	{r7}
1a000b2c:	b083      	sub	sp, #12
1a000b2e:	af00      	add	r7, sp, #0
1a000b30:	6078      	str	r0, [r7, #4]
1a000b32:	460b      	mov	r3, r1
1a000b34:	70fb      	strb	r3, [r7, #3]
1a000b36:	4613      	mov	r3, r2
1a000b38:	70bb      	strb	r3, [r7, #2]
1a000b3a:	78bb      	ldrb	r3, [r7, #2]
1a000b3c:	2201      	movs	r2, #1
1a000b3e:	fa02 f303 	lsl.w	r3, r2, r3
1a000b42:	78fa      	ldrb	r2, [r7, #3]
1a000b44:	4619      	mov	r1, r3
1a000b46:	687b      	ldr	r3, [r7, #4]
1a000b48:	f502 620c 	add.w	r2, r2, #2240	; 0x8c0
1a000b4c:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000b50:	bf00      	nop
1a000b52:	370c      	adds	r7, #12
1a000b54:	46bd      	mov	sp, r7
1a000b56:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b5a:	4770      	bx	lr

1a000b5c <Chip_PININT_Init>:
1a000b5c:	b480      	push	{r7}
1a000b5e:	b083      	sub	sp, #12
1a000b60:	af00      	add	r7, sp, #0
1a000b62:	6078      	str	r0, [r7, #4]
1a000b64:	bf00      	nop
1a000b66:	370c      	adds	r7, #12
1a000b68:	46bd      	mov	sp, r7
1a000b6a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b6e:	4770      	bx	lr

1a000b70 <Chip_PININT_SetPinModeEdge>:
1a000b70:	b480      	push	{r7}
1a000b72:	b083      	sub	sp, #12
1a000b74:	af00      	add	r7, sp, #0
1a000b76:	6078      	str	r0, [r7, #4]
1a000b78:	6039      	str	r1, [r7, #0]
1a000b7a:	687b      	ldr	r3, [r7, #4]
1a000b7c:	681a      	ldr	r2, [r3, #0]
1a000b7e:	683b      	ldr	r3, [r7, #0]
1a000b80:	43db      	mvns	r3, r3
1a000b82:	401a      	ands	r2, r3
1a000b84:	687b      	ldr	r3, [r7, #4]
1a000b86:	601a      	str	r2, [r3, #0]
1a000b88:	bf00      	nop
1a000b8a:	370c      	adds	r7, #12
1a000b8c:	46bd      	mov	sp, r7
1a000b8e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b92:	4770      	bx	lr

1a000b94 <Chip_PININT_EnableIntLow>:
1a000b94:	b480      	push	{r7}
1a000b96:	b083      	sub	sp, #12
1a000b98:	af00      	add	r7, sp, #0
1a000b9a:	6078      	str	r0, [r7, #4]
1a000b9c:	6039      	str	r1, [r7, #0]
1a000b9e:	687b      	ldr	r3, [r7, #4]
1a000ba0:	683a      	ldr	r2, [r7, #0]
1a000ba2:	615a      	str	r2, [r3, #20]
1a000ba4:	bf00      	nop
1a000ba6:	370c      	adds	r7, #12
1a000ba8:	46bd      	mov	sp, r7
1a000baa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bae:	4770      	bx	lr

1a000bb0 <Chip_PININT_ClearIntStatus>:
1a000bb0:	b480      	push	{r7}
1a000bb2:	b083      	sub	sp, #12
1a000bb4:	af00      	add	r7, sp, #0
1a000bb6:	6078      	str	r0, [r7, #4]
1a000bb8:	6039      	str	r1, [r7, #0]
1a000bba:	687b      	ldr	r3, [r7, #4]
1a000bbc:	683a      	ldr	r2, [r7, #0]
1a000bbe:	625a      	str	r2, [r3, #36]	; 0x24
1a000bc0:	bf00      	nop
1a000bc2:	370c      	adds	r7, #12
1a000bc4:	46bd      	mov	sp, r7
1a000bc6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bca:	4770      	bx	lr

1a000bcc <Chip_UART_TXEnable>:
1a000bcc:	b480      	push	{r7}
1a000bce:	b083      	sub	sp, #12
1a000bd0:	af00      	add	r7, sp, #0
1a000bd2:	6078      	str	r0, [r7, #4]
1a000bd4:	687b      	ldr	r3, [r7, #4]
1a000bd6:	2201      	movs	r2, #1
1a000bd8:	65da      	str	r2, [r3, #92]	; 0x5c
1a000bda:	bf00      	nop
1a000bdc:	370c      	adds	r7, #12
1a000bde:	46bd      	mov	sp, r7
1a000be0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000be4:	4770      	bx	lr

1a000be6 <Chip_UART_IntEnable>:
1a000be6:	b480      	push	{r7}
1a000be8:	b083      	sub	sp, #12
1a000bea:	af00      	add	r7, sp, #0
1a000bec:	6078      	str	r0, [r7, #4]
1a000bee:	6039      	str	r1, [r7, #0]
1a000bf0:	687b      	ldr	r3, [r7, #4]
1a000bf2:	685a      	ldr	r2, [r3, #4]
1a000bf4:	683b      	ldr	r3, [r7, #0]
1a000bf6:	431a      	orrs	r2, r3
1a000bf8:	687b      	ldr	r3, [r7, #4]
1a000bfa:	605a      	str	r2, [r3, #4]
1a000bfc:	bf00      	nop
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

1a000c40 <StopWatch_Elapsed>:
1a000c40:	b580      	push	{r7, lr}
1a000c42:	b082      	sub	sp, #8
1a000c44:	af00      	add	r7, sp, #0
1a000c46:	6078      	str	r0, [r7, #4]
1a000c48:	f000 ff5c 	bl	1a001b04 <StopWatch_Start>
1a000c4c:	4602      	mov	r2, r0
1a000c4e:	687b      	ldr	r3, [r7, #4]
1a000c50:	1ad3      	subs	r3, r2, r3
1a000c52:	4618      	mov	r0, r3
1a000c54:	3708      	adds	r7, #8
1a000c56:	46bd      	mov	sp, r7
1a000c58:	bd80      	pop	{r7, pc}

1a000c5a <StopWatch_DelayMs>:
1a000c5a:	b580      	push	{r7, lr}
1a000c5c:	b084      	sub	sp, #16
1a000c5e:	af00      	add	r7, sp, #0
1a000c60:	6078      	str	r0, [r7, #4]
1a000c62:	6878      	ldr	r0, [r7, #4]
1a000c64:	f000 ff6a 	bl	1a001b3c <StopWatch_MsToTicks>
1a000c68:	60f8      	str	r0, [r7, #12]
1a000c6a:	f000 ff4b 	bl	1a001b04 <StopWatch_Start>
1a000c6e:	60b8      	str	r0, [r7, #8]
1a000c70:	bf00      	nop
1a000c72:	68b8      	ldr	r0, [r7, #8]
1a000c74:	f7ff ffe4 	bl	1a000c40 <StopWatch_Elapsed>
1a000c78:	4602      	mov	r2, r0
1a000c7a:	68fb      	ldr	r3, [r7, #12]
1a000c7c:	4293      	cmp	r3, r2
1a000c7e:	d8f8      	bhi.n	1a000c72 <StopWatch_DelayMs+0x18>
1a000c80:	bf00      	nop
1a000c82:	3710      	adds	r7, #16
1a000c84:	46bd      	mov	sp, r7
1a000c86:	bd80      	pop	{r7, pc}

1a000c88 <inicializar_sistema>:
1a000c88:	b580      	push	{r7, lr}
1a000c8a:	af00      	add	r7, sp, #0
1a000c8c:	f000 fcb2 	bl	1a0015f4 <Chip_SetupXtalClocking>
1a000c90:	f001 fcfc 	bl	1a00268c <SystemCoreClockUpdate>
1a000c94:	f000 fefc 	bl	1a001a90 <StopWatch_Init>
1a000c98:	f000 fb88 	bl	1a0013ac <fpuInit>
1a000c9c:	bf00      	nop
1a000c9e:	bd80      	pop	{r7, pc}

1a000ca0 <inicializar_leds>:
1a000ca0:	b590      	push	{r4, r7, lr}
1a000ca2:	b083      	sub	sp, #12
1a000ca4:	af00      	add	r7, sp, #0
1a000ca6:	482e      	ldr	r0, [pc, #184]	; (1a000d60 <inicializar_leds+0xc0>)
1a000ca8:	f001 fcfc 	bl	1a0026a4 <Chip_GPIO_Init>
1a000cac:	2300      	movs	r3, #0
1a000cae:	71fb      	strb	r3, [r7, #7]
1a000cb0:	e04e      	b.n	1a000d50 <inicializar_leds+0xb0>
1a000cb2:	79fa      	ldrb	r2, [r7, #7]
1a000cb4:	492b      	ldr	r1, [pc, #172]	; (1a000d64 <inicializar_leds+0xc4>)
1a000cb6:	4613      	mov	r3, r2
1a000cb8:	009b      	lsls	r3, r3, #2
1a000cba:	4413      	add	r3, r2
1a000cbc:	005b      	lsls	r3, r3, #1
1a000cbe:	440b      	add	r3, r1
1a000cc0:	7818      	ldrb	r0, [r3, #0]
1a000cc2:	79fa      	ldrb	r2, [r7, #7]
1a000cc4:	4927      	ldr	r1, [pc, #156]	; (1a000d64 <inicializar_leds+0xc4>)
1a000cc6:	4613      	mov	r3, r2
1a000cc8:	009b      	lsls	r3, r3, #2
1a000cca:	4413      	add	r3, r2
1a000ccc:	005b      	lsls	r3, r3, #1
1a000cce:	440b      	add	r3, r1
1a000cd0:	3301      	adds	r3, #1
1a000cd2:	781c      	ldrb	r4, [r3, #0]
1a000cd4:	79fa      	ldrb	r2, [r7, #7]
1a000cd6:	4923      	ldr	r1, [pc, #140]	; (1a000d64 <inicializar_leds+0xc4>)
1a000cd8:	4613      	mov	r3, r2
1a000cda:	009b      	lsls	r3, r3, #2
1a000cdc:	4413      	add	r3, r2
1a000cde:	005b      	lsls	r3, r3, #1
1a000ce0:	440b      	add	r3, r1
1a000ce2:	3304      	adds	r3, #4
1a000ce4:	881b      	ldrh	r3, [r3, #0]
1a000ce6:	461a      	mov	r2, r3
1a000ce8:	4621      	mov	r1, r4
1a000cea:	f7ff fe3d 	bl	1a000968 <Chip_SCU_PinMuxSet>
1a000cee:	79fa      	ldrb	r2, [r7, #7]
1a000cf0:	491c      	ldr	r1, [pc, #112]	; (1a000d64 <inicializar_leds+0xc4>)
1a000cf2:	4613      	mov	r3, r2
1a000cf4:	009b      	lsls	r3, r3, #2
1a000cf6:	4413      	add	r3, r2
1a000cf8:	005b      	lsls	r3, r3, #1
1a000cfa:	440b      	add	r3, r1
1a000cfc:	3302      	adds	r3, #2
1a000cfe:	7818      	ldrb	r0, [r3, #0]
1a000d00:	79fa      	ldrb	r2, [r7, #7]
1a000d02:	4918      	ldr	r1, [pc, #96]	; (1a000d64 <inicializar_leds+0xc4>)
1a000d04:	4613      	mov	r3, r2
1a000d06:	009b      	lsls	r3, r3, #2
1a000d08:	4413      	add	r3, r2
1a000d0a:	005b      	lsls	r3, r3, #1
1a000d0c:	440b      	add	r3, r1
1a000d0e:	3303      	adds	r3, #3
1a000d10:	781b      	ldrb	r3, [r3, #0]
1a000d12:	461a      	mov	r2, r3
1a000d14:	4601      	mov	r1, r0
1a000d16:	4812      	ldr	r0, [pc, #72]	; (1a000d60 <inicializar_leds+0xc0>)
1a000d18:	f7ff feb4 	bl	1a000a84 <Chip_GPIO_SetPinDIROutput>
1a000d1c:	79fa      	ldrb	r2, [r7, #7]
1a000d1e:	4911      	ldr	r1, [pc, #68]	; (1a000d64 <inicializar_leds+0xc4>)
1a000d20:	4613      	mov	r3, r2
1a000d22:	009b      	lsls	r3, r3, #2
1a000d24:	4413      	add	r3, r2
1a000d26:	005b      	lsls	r3, r3, #1
1a000d28:	440b      	add	r3, r1
1a000d2a:	3302      	adds	r3, #2
1a000d2c:	7818      	ldrb	r0, [r3, #0]
1a000d2e:	79fa      	ldrb	r2, [r7, #7]
1a000d30:	490c      	ldr	r1, [pc, #48]	; (1a000d64 <inicializar_leds+0xc4>)
1a000d32:	4613      	mov	r3, r2
1a000d34:	009b      	lsls	r3, r3, #2
1a000d36:	4413      	add	r3, r2
1a000d38:	005b      	lsls	r3, r3, #1
1a000d3a:	440b      	add	r3, r1
1a000d3c:	3303      	adds	r3, #3
1a000d3e:	781b      	ldrb	r3, [r3, #0]
1a000d40:	461a      	mov	r2, r3
1a000d42:	4601      	mov	r1, r0
1a000d44:	4806      	ldr	r0, [pc, #24]	; (1a000d60 <inicializar_leds+0xc0>)
1a000d46:	f7ff fedc 	bl	1a000b02 <Chip_GPIO_SetPortOutLow>
1a000d4a:	79fb      	ldrb	r3, [r7, #7]
1a000d4c:	3301      	adds	r3, #1
1a000d4e:	71fb      	strb	r3, [r7, #7]
1a000d50:	79fb      	ldrb	r3, [r7, #7]
1a000d52:	2b05      	cmp	r3, #5
1a000d54:	d9ad      	bls.n	1a000cb2 <inicializar_leds+0x12>
1a000d56:	bf00      	nop
1a000d58:	370c      	adds	r7, #12
1a000d5a:	46bd      	mov	sp, r7
1a000d5c:	bd90      	pop	{r4, r7, pc}
1a000d5e:	bf00      	nop
1a000d60:	400f4000 	.word	0x400f4000
1a000d64:	1a0028a0 	.word	0x1a0028a0

1a000d68 <inicializar_teclado>:
1a000d68:	b590      	push	{r4, r7, lr}
1a000d6a:	b083      	sub	sp, #12
1a000d6c:	af00      	add	r7, sp, #0
1a000d6e:	2300      	movs	r3, #0
1a000d70:	71fb      	strb	r3, [r7, #7]
1a000d72:	e037      	b.n	1a000de4 <inicializar_teclado+0x7c>
1a000d74:	79fa      	ldrb	r2, [r7, #7]
1a000d76:	491f      	ldr	r1, [pc, #124]	; (1a000df4 <inicializar_teclado+0x8c>)
1a000d78:	4613      	mov	r3, r2
1a000d7a:	009b      	lsls	r3, r3, #2
1a000d7c:	4413      	add	r3, r2
1a000d7e:	005b      	lsls	r3, r3, #1
1a000d80:	440b      	add	r3, r1
1a000d82:	7818      	ldrb	r0, [r3, #0]
1a000d84:	79fa      	ldrb	r2, [r7, #7]
1a000d86:	491b      	ldr	r1, [pc, #108]	; (1a000df4 <inicializar_teclado+0x8c>)
1a000d88:	4613      	mov	r3, r2
1a000d8a:	009b      	lsls	r3, r3, #2
1a000d8c:	4413      	add	r3, r2
1a000d8e:	005b      	lsls	r3, r3, #1
1a000d90:	440b      	add	r3, r1
1a000d92:	3301      	adds	r3, #1
1a000d94:	781c      	ldrb	r4, [r3, #0]
1a000d96:	79fa      	ldrb	r2, [r7, #7]
1a000d98:	4916      	ldr	r1, [pc, #88]	; (1a000df4 <inicializar_teclado+0x8c>)
1a000d9a:	4613      	mov	r3, r2
1a000d9c:	009b      	lsls	r3, r3, #2
1a000d9e:	4413      	add	r3, r2
1a000da0:	005b      	lsls	r3, r3, #1
1a000da2:	440b      	add	r3, r1
1a000da4:	3304      	adds	r3, #4
1a000da6:	881b      	ldrh	r3, [r3, #0]
1a000da8:	461a      	mov	r2, r3
1a000daa:	4621      	mov	r1, r4
1a000dac:	f7ff fddc 	bl	1a000968 <Chip_SCU_PinMuxSet>
1a000db0:	79fa      	ldrb	r2, [r7, #7]
1a000db2:	4910      	ldr	r1, [pc, #64]	; (1a000df4 <inicializar_teclado+0x8c>)
1a000db4:	4613      	mov	r3, r2
1a000db6:	009b      	lsls	r3, r3, #2
1a000db8:	4413      	add	r3, r2
1a000dba:	005b      	lsls	r3, r3, #1
1a000dbc:	440b      	add	r3, r1
1a000dbe:	3302      	adds	r3, #2
1a000dc0:	7818      	ldrb	r0, [r3, #0]
1a000dc2:	79fa      	ldrb	r2, [r7, #7]
1a000dc4:	490b      	ldr	r1, [pc, #44]	; (1a000df4 <inicializar_teclado+0x8c>)
1a000dc6:	4613      	mov	r3, r2
1a000dc8:	009b      	lsls	r3, r3, #2
1a000dca:	4413      	add	r3, r2
1a000dcc:	005b      	lsls	r3, r3, #1
1a000dce:	440b      	add	r3, r1
1a000dd0:	3303      	adds	r3, #3
1a000dd2:	781b      	ldrb	r3, [r3, #0]
1a000dd4:	461a      	mov	r2, r3
1a000dd6:	4601      	mov	r1, r0
1a000dd8:	4807      	ldr	r0, [pc, #28]	; (1a000df8 <inicializar_teclado+0x90>)
1a000dda:	f7ff fe72 	bl	1a000ac2 <Chip_GPIO_SetPinDIRInput>
1a000dde:	79fb      	ldrb	r3, [r7, #7]
1a000de0:	3301      	adds	r3, #1
1a000de2:	71fb      	strb	r3, [r7, #7]
1a000de4:	79fb      	ldrb	r3, [r7, #7]
1a000de6:	2b03      	cmp	r3, #3
1a000de8:	d9c4      	bls.n	1a000d74 <inicializar_teclado+0xc>
1a000dea:	bf00      	nop
1a000dec:	370c      	adds	r7, #12
1a000dee:	46bd      	mov	sp, r7
1a000df0:	bd90      	pop	{r4, r7, pc}
1a000df2:	bf00      	nop
1a000df4:	1a0028dc 	.word	0x1a0028dc
1a000df8:	400f4000 	.word	0x400f4000

1a000dfc <inicializar_USART>:
1a000dfc:	b580      	push	{r7, lr}
1a000dfe:	af00      	add	r7, sp, #0
1a000e00:	481a      	ldr	r0, [pc, #104]	; (1a000e6c <inicializar_USART+0x70>)
1a000e02:	f000 fd33 	bl	1a00186c <Chip_UART_Init>
1a000e06:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a000e0a:	4818      	ldr	r0, [pc, #96]	; (1a000e6c <inicializar_USART+0x70>)
1a000e0c:	f000 fd72 	bl	1a0018f4 <Chip_UART_SetBaud>
1a000e10:	2103      	movs	r1, #3
1a000e12:	4816      	ldr	r0, [pc, #88]	; (1a000e6c <inicializar_USART+0x70>)
1a000e14:	f7ff ff06 	bl	1a000c24 <Chip_UART_ConfigData>
1a000e18:	4814      	ldr	r0, [pc, #80]	; (1a000e6c <inicializar_USART+0x70>)
1a000e1a:	f7ff fed7 	bl	1a000bcc <Chip_UART_TXEnable>
1a000e1e:	21c7      	movs	r1, #199	; 0xc7
1a000e20:	4812      	ldr	r0, [pc, #72]	; (1a000e6c <inicializar_USART+0x70>)
1a000e22:	f7ff fef1 	bl	1a000c08 <Chip_UART_SetupFIFOS>
1a000e26:	2107      	movs	r1, #7
1a000e28:	4810      	ldr	r0, [pc, #64]	; (1a000e6c <inicializar_USART+0x70>)
1a000e2a:	f7ff fedc 	bl	1a000be6 <Chip_UART_IntEnable>
1a000e2e:	f44f 7300 	mov.w	r3, #512	; 0x200
1a000e32:	2201      	movs	r2, #1
1a000e34:	490e      	ldr	r1, [pc, #56]	; (1a000e70 <inicializar_USART+0x74>)
1a000e36:	480f      	ldr	r0, [pc, #60]	; (1a000e74 <inicializar_USART+0x78>)
1a000e38:	f000 fecb 	bl	1a001bd2 <RingBuffer_Init>
1a000e3c:	f44f 7300 	mov.w	r3, #512	; 0x200
1a000e40:	2201      	movs	r2, #1
1a000e42:	490d      	ldr	r1, [pc, #52]	; (1a000e78 <inicializar_USART+0x7c>)
1a000e44:	480d      	ldr	r0, [pc, #52]	; (1a000e7c <inicializar_USART+0x80>)
1a000e46:	f000 fec4 	bl	1a001bd2 <RingBuffer_Init>
1a000e4a:	201a      	movs	r0, #26
1a000e4c:	f7ff fd0c 	bl	1a000868 <NVIC_EnableIRQ>
1a000e50:	2306      	movs	r3, #6
1a000e52:	2218      	movs	r2, #24
1a000e54:	2101      	movs	r1, #1
1a000e56:	2007      	movs	r0, #7
1a000e58:	f7ff fda0 	bl	1a00099c <Chip_SCU_PinMux>
1a000e5c:	2306      	movs	r3, #6
1a000e5e:	22d0      	movs	r2, #208	; 0xd0
1a000e60:	2102      	movs	r1, #2
1a000e62:	2007      	movs	r0, #7
1a000e64:	f7ff fd9a 	bl	1a00099c <Chip_SCU_PinMux>
1a000e68:	bf00      	nop
1a000e6a:	bd80      	pop	{r7, pc}
1a000e6c:	400c1000 	.word	0x400c1000
1a000e70:	10000758 	.word	0x10000758
1a000e74:	10000740 	.word	0x10000740
1a000e78:	10000540 	.word	0x10000540
1a000e7c:	1000052c 	.word	0x1000052c

1a000e80 <init_interrupciones>:
1a000e80:	b590      	push	{r4, r7, lr}
1a000e82:	b083      	sub	sp, #12
1a000e84:	af00      	add	r7, sp, #0
1a000e86:	483c      	ldr	r0, [pc, #240]	; (1a000f78 <init_interrupciones+0xf8>)
1a000e88:	f7ff fe68 	bl	1a000b5c <Chip_PININT_Init>
1a000e8c:	2300      	movs	r3, #0
1a000e8e:	71fb      	strb	r3, [r7, #7]
1a000e90:	e06b      	b.n	1a000f6a <init_interrupciones+0xea>
1a000e92:	79fa      	ldrb	r2, [r7, #7]
1a000e94:	4939      	ldr	r1, [pc, #228]	; (1a000f7c <init_interrupciones+0xfc>)
1a000e96:	4613      	mov	r3, r2
1a000e98:	009b      	lsls	r3, r3, #2
1a000e9a:	4413      	add	r3, r2
1a000e9c:	005b      	lsls	r3, r3, #1
1a000e9e:	440b      	add	r3, r1
1a000ea0:	3308      	adds	r3, #8
1a000ea2:	7818      	ldrb	r0, [r3, #0]
1a000ea4:	79fa      	ldrb	r2, [r7, #7]
1a000ea6:	4935      	ldr	r1, [pc, #212]	; (1a000f7c <init_interrupciones+0xfc>)
1a000ea8:	4613      	mov	r3, r2
1a000eaa:	009b      	lsls	r3, r3, #2
1a000eac:	4413      	add	r3, r2
1a000eae:	005b      	lsls	r3, r3, #1
1a000eb0:	440b      	add	r3, r1
1a000eb2:	3302      	adds	r3, #2
1a000eb4:	781c      	ldrb	r4, [r3, #0]
1a000eb6:	79fa      	ldrb	r2, [r7, #7]
1a000eb8:	4930      	ldr	r1, [pc, #192]	; (1a000f7c <init_interrupciones+0xfc>)
1a000eba:	4613      	mov	r3, r2
1a000ebc:	009b      	lsls	r3, r3, #2
1a000ebe:	4413      	add	r3, r2
1a000ec0:	005b      	lsls	r3, r3, #1
1a000ec2:	440b      	add	r3, r1
1a000ec4:	3303      	adds	r3, #3
1a000ec6:	781b      	ldrb	r3, [r3, #0]
1a000ec8:	461a      	mov	r2, r3
1a000eca:	4621      	mov	r1, r4
1a000ecc:	f7ff fd84 	bl	1a0009d8 <Chip_SCU_GPIOIntPinSel>
1a000ed0:	79fa      	ldrb	r2, [r7, #7]
1a000ed2:	492a      	ldr	r1, [pc, #168]	; (1a000f7c <init_interrupciones+0xfc>)
1a000ed4:	4613      	mov	r3, r2
1a000ed6:	009b      	lsls	r3, r3, #2
1a000ed8:	4413      	add	r3, r2
1a000eda:	005b      	lsls	r3, r3, #1
1a000edc:	440b      	add	r3, r1
1a000ede:	3308      	adds	r3, #8
1a000ee0:	781b      	ldrb	r3, [r3, #0]
1a000ee2:	461a      	mov	r2, r3
1a000ee4:	2301      	movs	r3, #1
1a000ee6:	4093      	lsls	r3, r2
1a000ee8:	4619      	mov	r1, r3
1a000eea:	4823      	ldr	r0, [pc, #140]	; (1a000f78 <init_interrupciones+0xf8>)
1a000eec:	f7ff fe60 	bl	1a000bb0 <Chip_PININT_ClearIntStatus>
1a000ef0:	79fa      	ldrb	r2, [r7, #7]
1a000ef2:	4922      	ldr	r1, [pc, #136]	; (1a000f7c <init_interrupciones+0xfc>)
1a000ef4:	4613      	mov	r3, r2
1a000ef6:	009b      	lsls	r3, r3, #2
1a000ef8:	4413      	add	r3, r2
1a000efa:	005b      	lsls	r3, r3, #1
1a000efc:	440b      	add	r3, r1
1a000efe:	3308      	adds	r3, #8
1a000f00:	781b      	ldrb	r3, [r3, #0]
1a000f02:	461a      	mov	r2, r3
1a000f04:	2301      	movs	r3, #1
1a000f06:	4093      	lsls	r3, r2
1a000f08:	4619      	mov	r1, r3
1a000f0a:	481b      	ldr	r0, [pc, #108]	; (1a000f78 <init_interrupciones+0xf8>)
1a000f0c:	f7ff fe30 	bl	1a000b70 <Chip_PININT_SetPinModeEdge>
1a000f10:	79fa      	ldrb	r2, [r7, #7]
1a000f12:	491a      	ldr	r1, [pc, #104]	; (1a000f7c <init_interrupciones+0xfc>)
1a000f14:	4613      	mov	r3, r2
1a000f16:	009b      	lsls	r3, r3, #2
1a000f18:	4413      	add	r3, r2
1a000f1a:	005b      	lsls	r3, r3, #1
1a000f1c:	440b      	add	r3, r1
1a000f1e:	3308      	adds	r3, #8
1a000f20:	781b      	ldrb	r3, [r3, #0]
1a000f22:	461a      	mov	r2, r3
1a000f24:	2301      	movs	r3, #1
1a000f26:	4093      	lsls	r3, r2
1a000f28:	4619      	mov	r1, r3
1a000f2a:	4813      	ldr	r0, [pc, #76]	; (1a000f78 <init_interrupciones+0xf8>)
1a000f2c:	f7ff fe32 	bl	1a000b94 <Chip_PININT_EnableIntLow>
1a000f30:	79fa      	ldrb	r2, [r7, #7]
1a000f32:	4912      	ldr	r1, [pc, #72]	; (1a000f7c <init_interrupciones+0xfc>)
1a000f34:	4613      	mov	r3, r2
1a000f36:	009b      	lsls	r3, r3, #2
1a000f38:	4413      	add	r3, r2
1a000f3a:	005b      	lsls	r3, r3, #1
1a000f3c:	440b      	add	r3, r1
1a000f3e:	3309      	adds	r3, #9
1a000f40:	781b      	ldrb	r3, [r3, #0]
1a000f42:	b25b      	sxtb	r3, r3
1a000f44:	4618      	mov	r0, r3
1a000f46:	f7ff fca9 	bl	1a00089c <NVIC_ClearPendingIRQ>
1a000f4a:	79fa      	ldrb	r2, [r7, #7]
1a000f4c:	490b      	ldr	r1, [pc, #44]	; (1a000f7c <init_interrupciones+0xfc>)
1a000f4e:	4613      	mov	r3, r2
1a000f50:	009b      	lsls	r3, r3, #2
1a000f52:	4413      	add	r3, r2
1a000f54:	005b      	lsls	r3, r3, #1
1a000f56:	440b      	add	r3, r1
1a000f58:	3309      	adds	r3, #9
1a000f5a:	781b      	ldrb	r3, [r3, #0]
1a000f5c:	b25b      	sxtb	r3, r3
1a000f5e:	4618      	mov	r0, r3
1a000f60:	f7ff fc82 	bl	1a000868 <NVIC_EnableIRQ>
1a000f64:	79fb      	ldrb	r3, [r7, #7]
1a000f66:	3301      	adds	r3, #1
1a000f68:	71fb      	strb	r3, [r7, #7]
1a000f6a:	79fb      	ldrb	r3, [r7, #7]
1a000f6c:	2b03      	cmp	r3, #3
1a000f6e:	d990      	bls.n	1a000e92 <init_interrupciones+0x12>
1a000f70:	bf00      	nop
1a000f72:	370c      	adds	r7, #12
1a000f74:	46bd      	mov	sp, r7
1a000f76:	bd90      	pop	{r4, r7, pc}
1a000f78:	40087000 	.word	0x40087000
1a000f7c:	1a0028dc 	.word	0x1a0028dc

1a000f80 <configurar_SysTick>:
1a000f80:	b580      	push	{r7, lr}
1a000f82:	af00      	add	r7, sp, #0
1a000f84:	4b06      	ldr	r3, [pc, #24]	; (1a000fa0 <configurar_SysTick+0x20>)
1a000f86:	681b      	ldr	r3, [r3, #0]
1a000f88:	4a06      	ldr	r2, [pc, #24]	; (1a000fa4 <configurar_SysTick+0x24>)
1a000f8a:	fba2 2303 	umull	r2, r3, r2, r3
1a000f8e:	095b      	lsrs	r3, r3, #5
1a000f90:	4618      	mov	r0, r3
1a000f92:	f7ff fcc7 	bl	1a000924 <SysTick_Config>
1a000f96:	f001 fb79 	bl	1a00268c <SystemCoreClockUpdate>
1a000f9a:	bf00      	nop
1a000f9c:	bd80      	pop	{r7, pc}
1a000f9e:	bf00      	nop
1a000fa0:	100009c0 	.word	0x100009c0
1a000fa4:	51eb851f 	.word	0x51eb851f

1a000fa8 <disable_SysTick>:
1a000fa8:	b480      	push	{r7}
1a000faa:	af00      	add	r7, sp, #0
1a000fac:	4b03      	ldr	r3, [pc, #12]	; (1a000fbc <disable_SysTick+0x14>)
1a000fae:	2205      	movs	r2, #5
1a000fb0:	601a      	str	r2, [r3, #0]
1a000fb2:	bf00      	nop
1a000fb4:	46bd      	mov	sp, r7
1a000fb6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fba:	4770      	bx	lr
1a000fbc:	e000e010 	.word	0xe000e010

1a000fc0 <genera_semilla>:
1a000fc0:	b580      	push	{r7, lr}
1a000fc2:	b082      	sub	sp, #8
1a000fc4:	af00      	add	r7, sp, #0
1a000fc6:	2300      	movs	r3, #0
1a000fc8:	607b      	str	r3, [r7, #4]
1a000fca:	2300      	movs	r3, #0
1a000fcc:	603b      	str	r3, [r7, #0]
1a000fce:	f000 fd99 	bl	1a001b04 <StopWatch_Start>
1a000fd2:	6078      	str	r0, [r7, #4]
1a000fd4:	e00a      	b.n	1a000fec <genera_semilla+0x2c>
1a000fd6:	f000 f8a5 	bl	1a001124 <escanear_teclado>
1a000fda:	4b0f      	ldr	r3, [pc, #60]	; (1a001018 <genera_semilla+0x58>)
1a000fdc:	2200      	movs	r2, #0
1a000fde:	701a      	strb	r2, [r3, #0]
1a000fe0:	4b0e      	ldr	r3, [pc, #56]	; (1a00101c <genera_semilla+0x5c>)
1a000fe2:	2200      	movs	r2, #0
1a000fe4:	701a      	strb	r2, [r3, #0]
1a000fe6:	4b0e      	ldr	r3, [pc, #56]	; (1a001020 <genera_semilla+0x60>)
1a000fe8:	2200      	movs	r2, #0
1a000fea:	701a      	strb	r2, [r3, #0]
1a000fec:	4b0d      	ldr	r3, [pc, #52]	; (1a001024 <genera_semilla+0x64>)
1a000fee:	781b      	ldrb	r3, [r3, #0]
1a000ff0:	b2db      	uxtb	r3, r3
1a000ff2:	2b00      	cmp	r3, #0
1a000ff4:	d0ef      	beq.n	1a000fd6 <genera_semilla+0x16>
1a000ff6:	6878      	ldr	r0, [r7, #4]
1a000ff8:	f7ff fe22 	bl	1a000c40 <StopWatch_Elapsed>
1a000ffc:	4603      	mov	r3, r0
1a000ffe:	4618      	mov	r0, r3
1a001000:	f000 fd8a 	bl	1a001b18 <StopWatch_TicksToMs>
1a001004:	6038      	str	r0, [r7, #0]
1a001006:	4b07      	ldr	r3, [pc, #28]	; (1a001024 <genera_semilla+0x64>)
1a001008:	2200      	movs	r2, #0
1a00100a:	701a      	strb	r2, [r3, #0]
1a00100c:	683b      	ldr	r3, [r7, #0]
1a00100e:	4618      	mov	r0, r3
1a001010:	3708      	adds	r7, #8
1a001012:	46bd      	mov	sp, r7
1a001014:	bd80      	pop	{r7, pc}
1a001016:	bf00      	nop
1a001018:	10000432 	.word	0x10000432
1a00101c:	10000433 	.word	0x10000433
1a001020:	10000434 	.word	0x10000434
1a001024:	10000431 	.word	0x10000431

1a001028 <generar_secuencia>:
1a001028:	b580      	push	{r7, lr}
1a00102a:	b082      	sub	sp, #8
1a00102c:	af00      	add	r7, sp, #0
1a00102e:	2300      	movs	r3, #0
1a001030:	71fb      	strb	r3, [r7, #7]
1a001032:	e067      	b.n	1a001104 <generar_secuencia+0xdc>
1a001034:	79fa      	ldrb	r2, [r7, #7]
1a001036:	4937      	ldr	r1, [pc, #220]	; (1a001114 <generar_secuencia+0xec>)
1a001038:	4613      	mov	r3, r2
1a00103a:	009b      	lsls	r3, r3, #2
1a00103c:	4413      	add	r3, r2
1a00103e:	005b      	lsls	r3, r3, #1
1a001040:	440b      	add	r3, r1
1a001042:	4935      	ldr	r1, [pc, #212]	; (1a001118 <generar_secuencia+0xf0>)
1a001044:	461a      	mov	r2, r3
1a001046:	460b      	mov	r3, r1
1a001048:	cb03      	ldmia	r3!, {r0, r1}
1a00104a:	6010      	str	r0, [r2, #0]
1a00104c:	6051      	str	r1, [r2, #4]
1a00104e:	881b      	ldrh	r3, [r3, #0]
1a001050:	8113      	strh	r3, [r2, #8]
1a001052:	f001 fc03 	bl	1a00285c <rand>
1a001056:	4603      	mov	r3, r0
1a001058:	425a      	negs	r2, r3
1a00105a:	f003 0303 	and.w	r3, r3, #3
1a00105e:	f002 0203 	and.w	r2, r2, #3
1a001062:	bf58      	it	pl
1a001064:	4253      	negpl	r3, r2
1a001066:	2b03      	cmp	r3, #3
1a001068:	d849      	bhi.n	1a0010fe <generar_secuencia+0xd6>
1a00106a:	a201      	add	r2, pc, #4	; (adr r2, 1a001070 <generar_secuencia+0x48>)
1a00106c:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001070:	1a001081 	.word	0x1a001081
1a001074:	1a0010a1 	.word	0x1a0010a1
1a001078:	1a0010c1 	.word	0x1a0010c1
1a00107c:	1a0010df 	.word	0x1a0010df
1a001080:	79fa      	ldrb	r2, [r7, #7]
1a001082:	4926      	ldr	r1, [pc, #152]	; (1a00111c <generar_secuencia+0xf4>)
1a001084:	4613      	mov	r3, r2
1a001086:	009b      	lsls	r3, r3, #2
1a001088:	4413      	add	r3, r2
1a00108a:	005b      	lsls	r3, r3, #1
1a00108c:	18ca      	adds	r2, r1, r3
1a00108e:	4b24      	ldr	r3, [pc, #144]	; (1a001120 <generar_secuencia+0xf8>)
1a001090:	3332      	adds	r3, #50	; 0x32
1a001092:	6818      	ldr	r0, [r3, #0]
1a001094:	6859      	ldr	r1, [r3, #4]
1a001096:	6010      	str	r0, [r2, #0]
1a001098:	6051      	str	r1, [r2, #4]
1a00109a:	891b      	ldrh	r3, [r3, #8]
1a00109c:	8113      	strh	r3, [r2, #8]
1a00109e:	e02e      	b.n	1a0010fe <generar_secuencia+0xd6>
1a0010a0:	79fa      	ldrb	r2, [r7, #7]
1a0010a2:	491e      	ldr	r1, [pc, #120]	; (1a00111c <generar_secuencia+0xf4>)
1a0010a4:	4613      	mov	r3, r2
1a0010a6:	009b      	lsls	r3, r3, #2
1a0010a8:	4413      	add	r3, r2
1a0010aa:	005b      	lsls	r3, r3, #1
1a0010ac:	18ca      	adds	r2, r1, r3
1a0010ae:	4b1c      	ldr	r3, [pc, #112]	; (1a001120 <generar_secuencia+0xf8>)
1a0010b0:	330a      	adds	r3, #10
1a0010b2:	6818      	ldr	r0, [r3, #0]
1a0010b4:	6859      	ldr	r1, [r3, #4]
1a0010b6:	6010      	str	r0, [r2, #0]
1a0010b8:	6051      	str	r1, [r2, #4]
1a0010ba:	891b      	ldrh	r3, [r3, #8]
1a0010bc:	8113      	strh	r3, [r2, #8]
1a0010be:	e01e      	b.n	1a0010fe <generar_secuencia+0xd6>
1a0010c0:	79fa      	ldrb	r2, [r7, #7]
1a0010c2:	4916      	ldr	r1, [pc, #88]	; (1a00111c <generar_secuencia+0xf4>)
1a0010c4:	4613      	mov	r3, r2
1a0010c6:	009b      	lsls	r3, r3, #2
1a0010c8:	4413      	add	r3, r2
1a0010ca:	005b      	lsls	r3, r3, #1
1a0010cc:	18ca      	adds	r2, r1, r3
1a0010ce:	4b14      	ldr	r3, [pc, #80]	; (1a001120 <generar_secuencia+0xf8>)
1a0010d0:	3314      	adds	r3, #20
1a0010d2:	cb03      	ldmia	r3!, {r0, r1}
1a0010d4:	6010      	str	r0, [r2, #0]
1a0010d6:	6051      	str	r1, [r2, #4]
1a0010d8:	881b      	ldrh	r3, [r3, #0]
1a0010da:	8113      	strh	r3, [r2, #8]
1a0010dc:	e00f      	b.n	1a0010fe <generar_secuencia+0xd6>
1a0010de:	79fa      	ldrb	r2, [r7, #7]
1a0010e0:	490e      	ldr	r1, [pc, #56]	; (1a00111c <generar_secuencia+0xf4>)
1a0010e2:	4613      	mov	r3, r2
1a0010e4:	009b      	lsls	r3, r3, #2
1a0010e6:	4413      	add	r3, r2
1a0010e8:	005b      	lsls	r3, r3, #1
1a0010ea:	18ca      	adds	r2, r1, r3
1a0010ec:	4b0c      	ldr	r3, [pc, #48]	; (1a001120 <generar_secuencia+0xf8>)
1a0010ee:	331e      	adds	r3, #30
1a0010f0:	6818      	ldr	r0, [r3, #0]
1a0010f2:	6859      	ldr	r1, [r3, #4]
1a0010f4:	6010      	str	r0, [r2, #0]
1a0010f6:	6051      	str	r1, [r2, #4]
1a0010f8:	891b      	ldrh	r3, [r3, #8]
1a0010fa:	8113      	strh	r3, [r2, #8]
1a0010fc:	bf00      	nop
1a0010fe:	79fb      	ldrb	r3, [r7, #7]
1a001100:	3301      	adds	r3, #1
1a001102:	71fb      	strb	r3, [r7, #7]
1a001104:	79fb      	ldrb	r3, [r7, #7]
1a001106:	2b0a      	cmp	r3, #10
1a001108:	d994      	bls.n	1a001034 <generar_secuencia+0xc>
1a00110a:	bf00      	nop
1a00110c:	3708      	adds	r7, #8
1a00110e:	46bd      	mov	sp, r7
1a001110:	bd80      	pop	{r7, pc}
1a001112:	bf00      	nop
1a001114:	1000044c 	.word	0x1000044c
1a001118:	1a0028dc 	.word	0x1a0028dc
1a00111c:	100004bc 	.word	0x100004bc
1a001120:	1a0028a0 	.word	0x1a0028a0

1a001124 <escanear_teclado>:
1a001124:	b580      	push	{r7, lr}
1a001126:	b082      	sub	sp, #8
1a001128:	af00      	add	r7, sp, #0
1a00112a:	f7ff f9e1 	bl	1a0004f0 <getKeyPressed>
1a00112e:	4603      	mov	r3, r0
1a001130:	71fb      	strb	r3, [r7, #7]
1a001132:	4b13      	ldr	r3, [pc, #76]	; (1a001180 <escanear_teclado+0x5c>)
1a001134:	781b      	ldrb	r3, [r3, #0]
1a001136:	79fa      	ldrb	r2, [r7, #7]
1a001138:	429a      	cmp	r2, r3
1a00113a:	d01a      	beq.n	1a001172 <escanear_teclado+0x4e>
1a00113c:	79fb      	ldrb	r3, [r7, #7]
1a00113e:	2b01      	cmp	r3, #1
1a001140:	d102      	bne.n	1a001148 <escanear_teclado+0x24>
1a001142:	4b10      	ldr	r3, [pc, #64]	; (1a001184 <escanear_teclado+0x60>)
1a001144:	2201      	movs	r2, #1
1a001146:	701a      	strb	r2, [r3, #0]
1a001148:	79fb      	ldrb	r3, [r7, #7]
1a00114a:	2b02      	cmp	r3, #2
1a00114c:	d102      	bne.n	1a001154 <escanear_teclado+0x30>
1a00114e:	4b0e      	ldr	r3, [pc, #56]	; (1a001188 <escanear_teclado+0x64>)
1a001150:	2201      	movs	r2, #1
1a001152:	701a      	strb	r2, [r3, #0]
1a001154:	79fb      	ldrb	r3, [r7, #7]
1a001156:	2b04      	cmp	r3, #4
1a001158:	d102      	bne.n	1a001160 <escanear_teclado+0x3c>
1a00115a:	4b0c      	ldr	r3, [pc, #48]	; (1a00118c <escanear_teclado+0x68>)
1a00115c:	2201      	movs	r2, #1
1a00115e:	701a      	strb	r2, [r3, #0]
1a001160:	79fb      	ldrb	r3, [r7, #7]
1a001162:	2b08      	cmp	r3, #8
1a001164:	d102      	bne.n	1a00116c <escanear_teclado+0x48>
1a001166:	4b0a      	ldr	r3, [pc, #40]	; (1a001190 <escanear_teclado+0x6c>)
1a001168:	2201      	movs	r2, #1
1a00116a:	701a      	strb	r2, [r3, #0]
1a00116c:	4a04      	ldr	r2, [pc, #16]	; (1a001180 <escanear_teclado+0x5c>)
1a00116e:	79fb      	ldrb	r3, [r7, #7]
1a001170:	7013      	strb	r3, [r2, #0]
1a001172:	2064      	movs	r0, #100	; 0x64
1a001174:	f7ff fd71 	bl	1a000c5a <StopWatch_DelayMs>
1a001178:	bf00      	nop
1a00117a:	3708      	adds	r7, #8
1a00117c:	46bd      	mov	sp, r7
1a00117e:	bd80      	pop	{r7, pc}
1a001180:	10000435 	.word	0x10000435
1a001184:	10000431 	.word	0x10000431
1a001188:	10000432 	.word	0x10000432
1a00118c:	10000433 	.word	0x10000433
1a001190:	10000434 	.word	0x10000434

1a001194 <titilar>:
1a001194:	b590      	push	{r4, r7, lr}
1a001196:	b087      	sub	sp, #28
1a001198:	af00      	add	r7, sp, #0
1a00119a:	1d3c      	adds	r4, r7, #4
1a00119c:	e884 0007 	stmia.w	r4, {r0, r1, r2}
1a0011a0:	807b      	strh	r3, [r7, #2]
1a0011a2:	2300      	movs	r3, #0
1a0011a4:	75fb      	strb	r3, [r7, #23]
1a0011a6:	2000      	movs	r0, #0
1a0011a8:	f7ff f92a 	bl	1a000400 <setLedFromMsk>
1a0011ac:	2300      	movs	r3, #0
1a0011ae:	75fb      	strb	r3, [r7, #23]
1a0011b0:	e00c      	b.n	1a0011cc <titilar+0x38>
1a0011b2:	79bb      	ldrb	r3, [r7, #6]
1a0011b4:	79fa      	ldrb	r2, [r7, #7]
1a0011b6:	4619      	mov	r1, r3
1a0011b8:	480b      	ldr	r0, [pc, #44]	; (1a0011e8 <titilar+0x54>)
1a0011ba:	f7ff fcb6 	bl	1a000b2a <Chip_GPIO_SetPinToggle>
1a0011be:	887b      	ldrh	r3, [r7, #2]
1a0011c0:	4618      	mov	r0, r3
1a0011c2:	f7ff fd4a 	bl	1a000c5a <StopWatch_DelayMs>
1a0011c6:	7dfb      	ldrb	r3, [r7, #23]
1a0011c8:	3301      	adds	r3, #1
1a0011ca:	75fb      	strb	r3, [r7, #23]
1a0011cc:	7dfa      	ldrb	r2, [r7, #23]
1a0011ce:	f897 3028 	ldrb.w	r3, [r7, #40]	; 0x28
1a0011d2:	005b      	lsls	r3, r3, #1
1a0011d4:	429a      	cmp	r2, r3
1a0011d6:	dbec      	blt.n	1a0011b2 <titilar+0x1e>
1a0011d8:	2000      	movs	r0, #0
1a0011da:	f7ff f911 	bl	1a000400 <setLedFromMsk>
1a0011de:	bf00      	nop
1a0011e0:	371c      	adds	r7, #28
1a0011e2:	46bd      	mov	sp, r7
1a0011e4:	bd90      	pop	{r4, r7, pc}
1a0011e6:	bf00      	nop
1a0011e8:	400f4000 	.word	0x400f4000

1a0011ec <mostrar_secuencia>:
1a0011ec:	b580      	push	{r7, lr}
1a0011ee:	b082      	sub	sp, #8
1a0011f0:	af00      	add	r7, sp, #0
1a0011f2:	2300      	movs	r3, #0
1a0011f4:	71fb      	strb	r3, [r7, #7]
1a0011f6:	2000      	movs	r0, #0
1a0011f8:	f7ff f902 	bl	1a000400 <setLedFromMsk>
1a0011fc:	2300      	movs	r3, #0
1a0011fe:	71fb      	strb	r3, [r7, #7]
1a001200:	e04e      	b.n	1a0012a0 <mostrar_secuencia+0xb4>
1a001202:	79fa      	ldrb	r2, [r7, #7]
1a001204:	492c      	ldr	r1, [pc, #176]	; (1a0012b8 <mostrar_secuencia+0xcc>)
1a001206:	4613      	mov	r3, r2
1a001208:	009b      	lsls	r3, r3, #2
1a00120a:	4413      	add	r3, r2
1a00120c:	005b      	lsls	r3, r3, #1
1a00120e:	440b      	add	r3, r1
1a001210:	3302      	adds	r3, #2
1a001212:	7818      	ldrb	r0, [r3, #0]
1a001214:	79fa      	ldrb	r2, [r7, #7]
1a001216:	4928      	ldr	r1, [pc, #160]	; (1a0012b8 <mostrar_secuencia+0xcc>)
1a001218:	4613      	mov	r3, r2
1a00121a:	009b      	lsls	r3, r3, #2
1a00121c:	4413      	add	r3, r2
1a00121e:	005b      	lsls	r3, r3, #1
1a001220:	440b      	add	r3, r1
1a001222:	3303      	adds	r3, #3
1a001224:	781a      	ldrb	r2, [r3, #0]
1a001226:	2301      	movs	r3, #1
1a001228:	4601      	mov	r1, r0
1a00122a:	4824      	ldr	r0, [pc, #144]	; (1a0012bc <mostrar_secuencia+0xd0>)
1a00122c:	f7ff fc0e 	bl	1a000a4c <Chip_GPIO_SetPinState>
1a001230:	4b21      	ldr	r3, [pc, #132]	; (1a0012b8 <mostrar_secuencia+0xcc>)
1a001232:	f8b3 306e 	ldrh.w	r3, [r3, #110]	; 0x6e
1a001236:	461a      	mov	r2, r3
1a001238:	4b21      	ldr	r3, [pc, #132]	; (1a0012c0 <mostrar_secuencia+0xd4>)
1a00123a:	781b      	ldrb	r3, [r3, #0]
1a00123c:	4619      	mov	r1, r3
1a00123e:	f06f 0309 	mvn.w	r3, #9
1a001242:	fb03 f301 	mul.w	r3, r3, r1
1a001246:	4413      	add	r3, r2
1a001248:	4618      	mov	r0, r3
1a00124a:	f7ff fd06 	bl	1a000c5a <StopWatch_DelayMs>
1a00124e:	79fa      	ldrb	r2, [r7, #7]
1a001250:	4919      	ldr	r1, [pc, #100]	; (1a0012b8 <mostrar_secuencia+0xcc>)
1a001252:	4613      	mov	r3, r2
1a001254:	009b      	lsls	r3, r3, #2
1a001256:	4413      	add	r3, r2
1a001258:	005b      	lsls	r3, r3, #1
1a00125a:	440b      	add	r3, r1
1a00125c:	3302      	adds	r3, #2
1a00125e:	7818      	ldrb	r0, [r3, #0]
1a001260:	79fa      	ldrb	r2, [r7, #7]
1a001262:	4915      	ldr	r1, [pc, #84]	; (1a0012b8 <mostrar_secuencia+0xcc>)
1a001264:	4613      	mov	r3, r2
1a001266:	009b      	lsls	r3, r3, #2
1a001268:	4413      	add	r3, r2
1a00126a:	005b      	lsls	r3, r3, #1
1a00126c:	440b      	add	r3, r1
1a00126e:	3303      	adds	r3, #3
1a001270:	781a      	ldrb	r2, [r3, #0]
1a001272:	2300      	movs	r3, #0
1a001274:	4601      	mov	r1, r0
1a001276:	4811      	ldr	r0, [pc, #68]	; (1a0012bc <mostrar_secuencia+0xd0>)
1a001278:	f7ff fbe8 	bl	1a000a4c <Chip_GPIO_SetPinState>
1a00127c:	4b0e      	ldr	r3, [pc, #56]	; (1a0012b8 <mostrar_secuencia+0xcc>)
1a00127e:	f8b3 306e 	ldrh.w	r3, [r3, #110]	; 0x6e
1a001282:	461a      	mov	r2, r3
1a001284:	4b0e      	ldr	r3, [pc, #56]	; (1a0012c0 <mostrar_secuencia+0xd4>)
1a001286:	781b      	ldrb	r3, [r3, #0]
1a001288:	4619      	mov	r1, r3
1a00128a:	f06f 0309 	mvn.w	r3, #9
1a00128e:	fb03 f301 	mul.w	r3, r3, r1
1a001292:	4413      	add	r3, r2
1a001294:	4618      	mov	r0, r3
1a001296:	f7ff fce0 	bl	1a000c5a <StopWatch_DelayMs>
1a00129a:	79fb      	ldrb	r3, [r7, #7]
1a00129c:	3301      	adds	r3, #1
1a00129e:	71fb      	strb	r3, [r7, #7]
1a0012a0:	4b07      	ldr	r3, [pc, #28]	; (1a0012c0 <mostrar_secuencia+0xd4>)
1a0012a2:	781b      	ldrb	r3, [r3, #0]
1a0012a4:	79fa      	ldrb	r2, [r7, #7]
1a0012a6:	429a      	cmp	r2, r3
1a0012a8:	d3ab      	bcc.n	1a001202 <mostrar_secuencia+0x16>
1a0012aa:	4b06      	ldr	r3, [pc, #24]	; (1a0012c4 <mostrar_secuencia+0xd8>)
1a0012ac:	2200      	movs	r2, #0
1a0012ae:	701a      	strb	r2, [r3, #0]
1a0012b0:	bf00      	nop
1a0012b2:	3708      	adds	r7, #8
1a0012b4:	46bd      	mov	sp, r7
1a0012b6:	bd80      	pop	{r7, pc}
1a0012b8:	100004bc 	.word	0x100004bc
1a0012bc:	400f4000 	.word	0x400f4000
1a0012c0:	10000754 	.word	0x10000754
1a0012c4:	100009bc 	.word	0x100009bc

1a0012c8 <evaluar_secuencia>:
1a0012c8:	b580      	push	{r7, lr}
1a0012ca:	b084      	sub	sp, #16
1a0012cc:	af02      	add	r7, sp, #8
1a0012ce:	2300      	movs	r3, #0
1a0012d0:	71bb      	strb	r3, [r7, #6]
1a0012d2:	2301      	movs	r3, #1
1a0012d4:	71fb      	strb	r3, [r7, #7]
1a0012d6:	e039      	b.n	1a00134c <evaluar_secuencia+0x84>
1a0012d8:	79ba      	ldrb	r2, [r7, #6]
1a0012da:	4930      	ldr	r1, [pc, #192]	; (1a00139c <evaluar_secuencia+0xd4>)
1a0012dc:	4613      	mov	r3, r2
1a0012de:	009b      	lsls	r3, r3, #2
1a0012e0:	4413      	add	r3, r2
1a0012e2:	005b      	lsls	r3, r3, #1
1a0012e4:	440b      	add	r3, r1
1a0012e6:	3303      	adds	r3, #3
1a0012e8:	7819      	ldrb	r1, [r3, #0]
1a0012ea:	79ba      	ldrb	r2, [r7, #6]
1a0012ec:	482c      	ldr	r0, [pc, #176]	; (1a0013a0 <evaluar_secuencia+0xd8>)
1a0012ee:	4613      	mov	r3, r2
1a0012f0:	009b      	lsls	r3, r3, #2
1a0012f2:	4413      	add	r3, r2
1a0012f4:	005b      	lsls	r3, r3, #1
1a0012f6:	4403      	add	r3, r0
1a0012f8:	3303      	adds	r3, #3
1a0012fa:	781b      	ldrb	r3, [r3, #0]
1a0012fc:	4299      	cmp	r1, r3
1a0012fe:	d022      	beq.n	1a001346 <evaluar_secuencia+0x7e>
1a001300:	79ba      	ldrb	r2, [r7, #6]
1a001302:	4926      	ldr	r1, [pc, #152]	; (1a00139c <evaluar_secuencia+0xd4>)
1a001304:	4613      	mov	r3, r2
1a001306:	009b      	lsls	r3, r3, #2
1a001308:	4413      	add	r3, r2
1a00130a:	005b      	lsls	r3, r3, #1
1a00130c:	440b      	add	r3, r1
1a00130e:	3302      	adds	r3, #2
1a001310:	7819      	ldrb	r1, [r3, #0]
1a001312:	79ba      	ldrb	r2, [r7, #6]
1a001314:	4822      	ldr	r0, [pc, #136]	; (1a0013a0 <evaluar_secuencia+0xd8>)
1a001316:	4613      	mov	r3, r2
1a001318:	009b      	lsls	r3, r3, #2
1a00131a:	4413      	add	r3, r2
1a00131c:	005b      	lsls	r3, r3, #1
1a00131e:	4403      	add	r3, r0
1a001320:	3302      	adds	r3, #2
1a001322:	781b      	ldrb	r3, [r3, #0]
1a001324:	4299      	cmp	r1, r3
1a001326:	d00e      	beq.n	1a001346 <evaluar_secuencia+0x7e>
1a001328:	2300      	movs	r3, #0
1a00132a:	71fb      	strb	r3, [r7, #7]
1a00132c:	4b1d      	ldr	r3, [pc, #116]	; (1a0013a4 <evaluar_secuencia+0xdc>)
1a00132e:	781b      	ldrb	r3, [r3, #0]
1a001330:	71bb      	strb	r3, [r7, #6]
1a001332:	4a1d      	ldr	r2, [pc, #116]	; (1a0013a8 <evaluar_secuencia+0xe0>)
1a001334:	2305      	movs	r3, #5
1a001336:	9300      	str	r3, [sp, #0]
1a001338:	23fa      	movs	r3, #250	; 0xfa
1a00133a:	ca07      	ldmia	r2, {r0, r1, r2}
1a00133c:	f7ff ff2a 	bl	1a001194 <titilar>
1a001340:	4b18      	ldr	r3, [pc, #96]	; (1a0013a4 <evaluar_secuencia+0xdc>)
1a001342:	2201      	movs	r2, #1
1a001344:	701a      	strb	r2, [r3, #0]
1a001346:	79bb      	ldrb	r3, [r7, #6]
1a001348:	3301      	adds	r3, #1
1a00134a:	71bb      	strb	r3, [r7, #6]
1a00134c:	4b15      	ldr	r3, [pc, #84]	; (1a0013a4 <evaluar_secuencia+0xdc>)
1a00134e:	781b      	ldrb	r3, [r3, #0]
1a001350:	79ba      	ldrb	r2, [r7, #6]
1a001352:	429a      	cmp	r2, r3
1a001354:	d3c0      	bcc.n	1a0012d8 <evaluar_secuencia+0x10>
1a001356:	79fb      	ldrb	r3, [r7, #7]
1a001358:	2b00      	cmp	r3, #0
1a00135a:	d014      	beq.n	1a001386 <evaluar_secuencia+0xbe>
1a00135c:	4a12      	ldr	r2, [pc, #72]	; (1a0013a8 <evaluar_secuencia+0xe0>)
1a00135e:	2305      	movs	r3, #5
1a001360:	9300      	str	r3, [sp, #0]
1a001362:	23fa      	movs	r3, #250	; 0xfa
1a001364:	3228      	adds	r2, #40	; 0x28
1a001366:	ca07      	ldmia	r2, {r0, r1, r2}
1a001368:	f7ff ff14 	bl	1a001194 <titilar>
1a00136c:	4b0d      	ldr	r3, [pc, #52]	; (1a0013a4 <evaluar_secuencia+0xdc>)
1a00136e:	781b      	ldrb	r3, [r3, #0]
1a001370:	3301      	adds	r3, #1
1a001372:	b2da      	uxtb	r2, r3
1a001374:	4b0b      	ldr	r3, [pc, #44]	; (1a0013a4 <evaluar_secuencia+0xdc>)
1a001376:	701a      	strb	r2, [r3, #0]
1a001378:	4b0a      	ldr	r3, [pc, #40]	; (1a0013a4 <evaluar_secuencia+0xdc>)
1a00137a:	781b      	ldrb	r3, [r3, #0]
1a00137c:	2b0b      	cmp	r3, #11
1a00137e:	d902      	bls.n	1a001386 <evaluar_secuencia+0xbe>
1a001380:	4b08      	ldr	r3, [pc, #32]	; (1a0013a4 <evaluar_secuencia+0xdc>)
1a001382:	2201      	movs	r2, #1
1a001384:	701a      	strb	r2, [r3, #0]
1a001386:	4b07      	ldr	r3, [pc, #28]	; (1a0013a4 <evaluar_secuencia+0xdc>)
1a001388:	781b      	ldrb	r3, [r3, #0]
1a00138a:	2b0a      	cmp	r3, #10
1a00138c:	d801      	bhi.n	1a001392 <evaluar_secuencia+0xca>
1a00138e:	f7ff ff2d 	bl	1a0011ec <mostrar_secuencia>
1a001392:	bf00      	nop
1a001394:	3708      	adds	r7, #8
1a001396:	46bd      	mov	sp, r7
1a001398:	bd80      	pop	{r7, pc}
1a00139a:	bf00      	nop
1a00139c:	100004bc 	.word	0x100004bc
1a0013a0:	1000044c 	.word	0x1000044c
1a0013a4:	10000754 	.word	0x10000754
1a0013a8:	1a0028a0 	.word	0x1a0028a0

1a0013ac <fpuInit>:
1a0013ac:	b480      	push	{r7}
1a0013ae:	b089      	sub	sp, #36	; 0x24
1a0013b0:	af00      	add	r7, sp, #0
1a0013b2:	4b16      	ldr	r3, [pc, #88]	; (1a00140c <fpuInit+0x60>)
1a0013b4:	61fb      	str	r3, [r7, #28]
1a0013b6:	4b16      	ldr	r3, [pc, #88]	; (1a001410 <fpuInit+0x64>)
1a0013b8:	61bb      	str	r3, [r7, #24]
1a0013ba:	4b16      	ldr	r3, [pc, #88]	; (1a001414 <fpuInit+0x68>)
1a0013bc:	617b      	str	r3, [r7, #20]
1a0013be:	2300      	movs	r3, #0
1a0013c0:	74fb      	strb	r3, [r7, #19]
1a0013c2:	69bb      	ldr	r3, [r7, #24]
1a0013c4:	681b      	ldr	r3, [r3, #0]
1a0013c6:	60bb      	str	r3, [r7, #8]
1a0013c8:	697b      	ldr	r3, [r7, #20]
1a0013ca:	681b      	ldr	r3, [r3, #0]
1a0013cc:	607b      	str	r3, [r7, #4]
1a0013ce:	68bb      	ldr	r3, [r7, #8]
1a0013d0:	4a11      	ldr	r2, [pc, #68]	; (1a001418 <fpuInit+0x6c>)
1a0013d2:	4293      	cmp	r3, r2
1a0013d4:	d105      	bne.n	1a0013e2 <fpuInit+0x36>
1a0013d6:	687b      	ldr	r3, [r7, #4]
1a0013d8:	4a10      	ldr	r2, [pc, #64]	; (1a00141c <fpuInit+0x70>)
1a0013da:	4293      	cmp	r3, r2
1a0013dc:	d101      	bne.n	1a0013e2 <fpuInit+0x36>
1a0013de:	2301      	movs	r3, #1
1a0013e0:	e000      	b.n	1a0013e4 <fpuInit+0x38>
1a0013e2:	2300      	movs	r3, #0
1a0013e4:	74fb      	strb	r3, [r7, #19]
1a0013e6:	7cfb      	ldrb	r3, [r7, #19]
1a0013e8:	2b00      	cmp	r3, #0
1a0013ea:	d009      	beq.n	1a001400 <fpuInit+0x54>
1a0013ec:	69fb      	ldr	r3, [r7, #28]
1a0013ee:	681b      	ldr	r3, [r3, #0]
1a0013f0:	60fb      	str	r3, [r7, #12]
1a0013f2:	68fb      	ldr	r3, [r7, #12]
1a0013f4:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a0013f8:	60fb      	str	r3, [r7, #12]
1a0013fa:	68fa      	ldr	r2, [r7, #12]
1a0013fc:	69fb      	ldr	r3, [r7, #28]
1a0013fe:	601a      	str	r2, [r3, #0]
1a001400:	bf00      	nop
1a001402:	3724      	adds	r7, #36	; 0x24
1a001404:	46bd      	mov	sp, r7
1a001406:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00140a:	4770      	bx	lr
1a00140c:	e000ed88 	.word	0xe000ed88
1a001410:	e000ef40 	.word	0xe000ef40
1a001414:	e000ef44 	.word	0xe000ef44
1a001418:	10110021 	.word	0x10110021
1a00141c:	11000011 	.word	0x11000011

1a001420 <Chip_Clock_DisableMainPLL>:
1a001420:	b480      	push	{r7}
1a001422:	af00      	add	r7, sp, #0
1a001424:	4b05      	ldr	r3, [pc, #20]	; (1a00143c <Chip_Clock_DisableMainPLL+0x1c>)
1a001426:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001428:	4a04      	ldr	r2, [pc, #16]	; (1a00143c <Chip_Clock_DisableMainPLL+0x1c>)
1a00142a:	f043 0301 	orr.w	r3, r3, #1
1a00142e:	6453      	str	r3, [r2, #68]	; 0x44
1a001430:	bf00      	nop
1a001432:	46bd      	mov	sp, r7
1a001434:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001438:	4770      	bx	lr
1a00143a:	bf00      	nop
1a00143c:	40050000 	.word	0x40050000

1a001440 <Chip_Clock_SetupMainPLL>:
1a001440:	b480      	push	{r7}
1a001442:	b083      	sub	sp, #12
1a001444:	af00      	add	r7, sp, #0
1a001446:	6078      	str	r0, [r7, #4]
1a001448:	687b      	ldr	r3, [r7, #4]
1a00144a:	681b      	ldr	r3, [r3, #0]
1a00144c:	461a      	mov	r2, r3
1a00144e:	687b      	ldr	r3, [r7, #4]
1a001450:	791b      	ldrb	r3, [r3, #4]
1a001452:	061b      	lsls	r3, r3, #24
1a001454:	4313      	orrs	r3, r2
1a001456:	687a      	ldr	r2, [r7, #4]
1a001458:	6912      	ldr	r2, [r2, #16]
1a00145a:	0412      	lsls	r2, r2, #16
1a00145c:	4313      	orrs	r3, r2
1a00145e:	687a      	ldr	r2, [r7, #4]
1a001460:	6892      	ldr	r2, [r2, #8]
1a001462:	0312      	lsls	r2, r2, #12
1a001464:	4313      	orrs	r3, r2
1a001466:	687a      	ldr	r2, [r7, #4]
1a001468:	68d2      	ldr	r2, [r2, #12]
1a00146a:	0212      	lsls	r2, r2, #8
1a00146c:	4313      	orrs	r3, r2
1a00146e:	4a05      	ldr	r2, [pc, #20]	; (1a001484 <Chip_Clock_SetupMainPLL+0x44>)
1a001470:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001474:	6453      	str	r3, [r2, #68]	; 0x44
1a001476:	bf00      	nop
1a001478:	370c      	adds	r7, #12
1a00147a:	46bd      	mov	sp, r7
1a00147c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001480:	4770      	bx	lr
1a001482:	bf00      	nop
1a001484:	40050000 	.word	0x40050000

1a001488 <Chip_Clock_MainPLLLocked>:
1a001488:	b480      	push	{r7}
1a00148a:	af00      	add	r7, sp, #0
1a00148c:	4b06      	ldr	r3, [pc, #24]	; (1a0014a8 <Chip_Clock_MainPLLLocked+0x20>)
1a00148e:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001490:	f003 0301 	and.w	r3, r3, #1
1a001494:	2b00      	cmp	r3, #0
1a001496:	bf14      	ite	ne
1a001498:	2301      	movne	r3, #1
1a00149a:	2300      	moveq	r3, #0
1a00149c:	b2db      	uxtb	r3, r3
1a00149e:	4618      	mov	r0, r3
1a0014a0:	46bd      	mov	sp, r7
1a0014a2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0014a6:	4770      	bx	lr
1a0014a8:	40050000 	.word	0x40050000

1a0014ac <Chip_SetupCoreClock>:
1a0014ac:	b590      	push	{r4, r7, lr}
1a0014ae:	b08f      	sub	sp, #60	; 0x3c
1a0014b0:	af00      	add	r7, sp, #0
1a0014b2:	4603      	mov	r3, r0
1a0014b4:	6039      	str	r1, [r7, #0]
1a0014b6:	71fb      	strb	r3, [r7, #7]
1a0014b8:	4613      	mov	r3, r2
1a0014ba:	71bb      	strb	r3, [r7, #6]
1a0014bc:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a0014c0:	62bb      	str	r3, [r7, #40]	; 0x28
1a0014c2:	2300      	movs	r3, #0
1a0014c4:	633b      	str	r3, [r7, #48]	; 0x30
1a0014c6:	2300      	movs	r3, #0
1a0014c8:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0014ca:	79fb      	ldrb	r3, [r7, #7]
1a0014cc:	2b06      	cmp	r3, #6
1a0014ce:	d101      	bne.n	1a0014d4 <Chip_SetupCoreClock+0x28>
1a0014d0:	f000 fdc4 	bl	1a00205c <Chip_Clock_EnableCrystal>
1a0014d4:	79f9      	ldrb	r1, [r7, #7]
1a0014d6:	2300      	movs	r3, #0
1a0014d8:	2201      	movs	r2, #1
1a0014da:	2004      	movs	r0, #4
1a0014dc:	f000 ffb0 	bl	1a002440 <Chip_Clock_SetBaseClock>
1a0014e0:	f7ff ff9e 	bl	1a001420 <Chip_Clock_DisableMainPLL>
1a0014e4:	79fb      	ldrb	r3, [r7, #7]
1a0014e6:	733b      	strb	r3, [r7, #12]
1a0014e8:	f107 0308 	add.w	r3, r7, #8
1a0014ec:	4619      	mov	r1, r3
1a0014ee:	6838      	ldr	r0, [r7, #0]
1a0014f0:	f000 fdec 	bl	1a0020cc <Chip_Clock_CalcMainPLLValue>
1a0014f4:	683b      	ldr	r3, [r7, #0]
1a0014f6:	4a3d      	ldr	r2, [pc, #244]	; (1a0015ec <Chip_SetupCoreClock+0x140>)
1a0014f8:	4293      	cmp	r3, r2
1a0014fa:	d916      	bls.n	1a00152a <Chip_SetupCoreClock+0x7e>
1a0014fc:	68bb      	ldr	r3, [r7, #8]
1a0014fe:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a001502:	2b00      	cmp	r3, #0
1a001504:	d000      	beq.n	1a001508 <Chip_SetupCoreClock+0x5c>
1a001506:	e7fe      	b.n	1a001506 <Chip_SetupCoreClock+0x5a>
1a001508:	68bb      	ldr	r3, [r7, #8]
1a00150a:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00150e:	2b00      	cmp	r3, #0
1a001510:	d006      	beq.n	1a001520 <Chip_SetupCoreClock+0x74>
1a001512:	2301      	movs	r3, #1
1a001514:	633b      	str	r3, [r7, #48]	; 0x30
1a001516:	68bb      	ldr	r3, [r7, #8]
1a001518:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a00151c:	60bb      	str	r3, [r7, #8]
1a00151e:	e004      	b.n	1a00152a <Chip_SetupCoreClock+0x7e>
1a001520:	2301      	movs	r3, #1
1a001522:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001524:	697b      	ldr	r3, [r7, #20]
1a001526:	3301      	adds	r3, #1
1a001528:	617b      	str	r3, [r7, #20]
1a00152a:	f107 0308 	add.w	r3, r7, #8
1a00152e:	4618      	mov	r0, r3
1a001530:	f7ff ff86 	bl	1a001440 <Chip_Clock_SetupMainPLL>
1a001534:	bf00      	nop
1a001536:	f7ff ffa7 	bl	1a001488 <Chip_Clock_MainPLLLocked>
1a00153a:	4603      	mov	r3, r0
1a00153c:	2b00      	cmp	r3, #0
1a00153e:	d0fa      	beq.n	1a001536 <Chip_SetupCoreClock+0x8a>
1a001540:	2300      	movs	r3, #0
1a001542:	2201      	movs	r2, #1
1a001544:	2109      	movs	r1, #9
1a001546:	2004      	movs	r0, #4
1a001548:	f000 ff7a 	bl	1a002440 <Chip_Clock_SetBaseClock>
1a00154c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a00154e:	2b00      	cmp	r3, #0
1a001550:	d012      	beq.n	1a001578 <Chip_SetupCoreClock+0xcc>
1a001552:	f641 3358 	movw	r3, #7000	; 0x1b58
1a001556:	62bb      	str	r3, [r7, #40]	; 0x28
1a001558:	bf00      	nop
1a00155a:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a00155c:	1e5a      	subs	r2, r3, #1
1a00155e:	62ba      	str	r2, [r7, #40]	; 0x28
1a001560:	2b00      	cmp	r3, #0
1a001562:	d1fa      	bne.n	1a00155a <Chip_SetupCoreClock+0xae>
1a001564:	68bb      	ldr	r3, [r7, #8]
1a001566:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a00156a:	60bb      	str	r3, [r7, #8]
1a00156c:	f107 0308 	add.w	r3, r7, #8
1a001570:	4618      	mov	r0, r3
1a001572:	f7ff ff65 	bl	1a001440 <Chip_Clock_SetupMainPLL>
1a001576:	e013      	b.n	1a0015a0 <Chip_SetupCoreClock+0xf4>
1a001578:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00157a:	2b00      	cmp	r3, #0
1a00157c:	d010      	beq.n	1a0015a0 <Chip_SetupCoreClock+0xf4>
1a00157e:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001582:	62bb      	str	r3, [r7, #40]	; 0x28
1a001584:	bf00      	nop
1a001586:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001588:	1e5a      	subs	r2, r3, #1
1a00158a:	62ba      	str	r2, [r7, #40]	; 0x28
1a00158c:	2b00      	cmp	r3, #0
1a00158e:	d1fa      	bne.n	1a001586 <Chip_SetupCoreClock+0xda>
1a001590:	697b      	ldr	r3, [r7, #20]
1a001592:	3b01      	subs	r3, #1
1a001594:	617b      	str	r3, [r7, #20]
1a001596:	f107 0308 	add.w	r3, r7, #8
1a00159a:	4618      	mov	r0, r3
1a00159c:	f7ff ff50 	bl	1a001440 <Chip_Clock_SetupMainPLL>
1a0015a0:	79bb      	ldrb	r3, [r7, #6]
1a0015a2:	2b00      	cmp	r3, #0
1a0015a4:	d01e      	beq.n	1a0015e4 <Chip_SetupCoreClock+0x138>
1a0015a6:	2300      	movs	r3, #0
1a0015a8:	637b      	str	r3, [r7, #52]	; 0x34
1a0015aa:	e018      	b.n	1a0015de <Chip_SetupCoreClock+0x132>
1a0015ac:	4a10      	ldr	r2, [pc, #64]	; (1a0015f0 <Chip_SetupCoreClock+0x144>)
1a0015ae:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0015b0:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a0015b4:	4a0e      	ldr	r2, [pc, #56]	; (1a0015f0 <Chip_SetupCoreClock+0x144>)
1a0015b6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0015b8:	009b      	lsls	r3, r3, #2
1a0015ba:	4413      	add	r3, r2
1a0015bc:	7859      	ldrb	r1, [r3, #1]
1a0015be:	4a0c      	ldr	r2, [pc, #48]	; (1a0015f0 <Chip_SetupCoreClock+0x144>)
1a0015c0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0015c2:	009b      	lsls	r3, r3, #2
1a0015c4:	4413      	add	r3, r2
1a0015c6:	789c      	ldrb	r4, [r3, #2]
1a0015c8:	4a09      	ldr	r2, [pc, #36]	; (1a0015f0 <Chip_SetupCoreClock+0x144>)
1a0015ca:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0015cc:	009b      	lsls	r3, r3, #2
1a0015ce:	4413      	add	r3, r2
1a0015d0:	78db      	ldrb	r3, [r3, #3]
1a0015d2:	4622      	mov	r2, r4
1a0015d4:	f000 ff34 	bl	1a002440 <Chip_Clock_SetBaseClock>
1a0015d8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0015da:	3301      	adds	r3, #1
1a0015dc:	637b      	str	r3, [r7, #52]	; 0x34
1a0015de:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0015e0:	2b11      	cmp	r3, #17
1a0015e2:	d9e3      	bls.n	1a0015ac <Chip_SetupCoreClock+0x100>
1a0015e4:	bf00      	nop
1a0015e6:	373c      	adds	r7, #60	; 0x3c
1a0015e8:	46bd      	mov	sp, r7
1a0015ea:	bd90      	pop	{r4, r7, pc}
1a0015ec:	068e7780 	.word	0x068e7780
1a0015f0:	1a002904 	.word	0x1a002904

1a0015f4 <Chip_SetupXtalClocking>:
1a0015f4:	b580      	push	{r7, lr}
1a0015f6:	af00      	add	r7, sp, #0
1a0015f8:	2201      	movs	r2, #1
1a0015fa:	4903      	ldr	r1, [pc, #12]	; (1a001608 <Chip_SetupXtalClocking+0x14>)
1a0015fc:	2006      	movs	r0, #6
1a0015fe:	f7ff ff55 	bl	1a0014ac <Chip_SetupCoreClock>
1a001602:	bf00      	nop
1a001604:	bd80      	pop	{r7, pc}
1a001606:	bf00      	nop
1a001608:	0c28cb00 	.word	0x0c28cb00

1a00160c <RingBuffer_IsEmpty>:
1a00160c:	b480      	push	{r7}
1a00160e:	b083      	sub	sp, #12
1a001610:	af00      	add	r7, sp, #0
1a001612:	6078      	str	r0, [r7, #4]
1a001614:	687b      	ldr	r3, [r7, #4]
1a001616:	330c      	adds	r3, #12
1a001618:	681a      	ldr	r2, [r3, #0]
1a00161a:	687b      	ldr	r3, [r7, #4]
1a00161c:	3310      	adds	r3, #16
1a00161e:	681b      	ldr	r3, [r3, #0]
1a001620:	429a      	cmp	r2, r3
1a001622:	bf0c      	ite	eq
1a001624:	2301      	moveq	r3, #1
1a001626:	2300      	movne	r3, #0
1a001628:	b2db      	uxtb	r3, r3
1a00162a:	4618      	mov	r0, r3
1a00162c:	370c      	adds	r7, #12
1a00162e:	46bd      	mov	sp, r7
1a001630:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001634:	4770      	bx	lr

1a001636 <Chip_UART_TXDisable>:
1a001636:	b480      	push	{r7}
1a001638:	b083      	sub	sp, #12
1a00163a:	af00      	add	r7, sp, #0
1a00163c:	6078      	str	r0, [r7, #4]
1a00163e:	687b      	ldr	r3, [r7, #4]
1a001640:	2200      	movs	r2, #0
1a001642:	65da      	str	r2, [r3, #92]	; 0x5c
1a001644:	bf00      	nop
1a001646:	370c      	adds	r7, #12
1a001648:	46bd      	mov	sp, r7
1a00164a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00164e:	4770      	bx	lr

1a001650 <Chip_UART_SendByte>:
1a001650:	b480      	push	{r7}
1a001652:	b083      	sub	sp, #12
1a001654:	af00      	add	r7, sp, #0
1a001656:	6078      	str	r0, [r7, #4]
1a001658:	460b      	mov	r3, r1
1a00165a:	70fb      	strb	r3, [r7, #3]
1a00165c:	78fa      	ldrb	r2, [r7, #3]
1a00165e:	687b      	ldr	r3, [r7, #4]
1a001660:	601a      	str	r2, [r3, #0]
1a001662:	bf00      	nop
1a001664:	370c      	adds	r7, #12
1a001666:	46bd      	mov	sp, r7
1a001668:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00166c:	4770      	bx	lr

1a00166e <Chip_UART_ReadByte>:
1a00166e:	b480      	push	{r7}
1a001670:	b083      	sub	sp, #12
1a001672:	af00      	add	r7, sp, #0
1a001674:	6078      	str	r0, [r7, #4]
1a001676:	687b      	ldr	r3, [r7, #4]
1a001678:	681b      	ldr	r3, [r3, #0]
1a00167a:	b2db      	uxtb	r3, r3
1a00167c:	4618      	mov	r0, r3
1a00167e:	370c      	adds	r7, #12
1a001680:	46bd      	mov	sp, r7
1a001682:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001686:	4770      	bx	lr

1a001688 <Chip_UART_IntDisable>:
1a001688:	b480      	push	{r7}
1a00168a:	b083      	sub	sp, #12
1a00168c:	af00      	add	r7, sp, #0
1a00168e:	6078      	str	r0, [r7, #4]
1a001690:	6039      	str	r1, [r7, #0]
1a001692:	687b      	ldr	r3, [r7, #4]
1a001694:	685a      	ldr	r2, [r3, #4]
1a001696:	683b      	ldr	r3, [r7, #0]
1a001698:	43db      	mvns	r3, r3
1a00169a:	401a      	ands	r2, r3
1a00169c:	687b      	ldr	r3, [r7, #4]
1a00169e:	605a      	str	r2, [r3, #4]
1a0016a0:	bf00      	nop
1a0016a2:	370c      	adds	r7, #12
1a0016a4:	46bd      	mov	sp, r7
1a0016a6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016aa:	4770      	bx	lr

1a0016ac <Chip_UART_ReadIntIDReg>:
1a0016ac:	b480      	push	{r7}
1a0016ae:	b083      	sub	sp, #12
1a0016b0:	af00      	add	r7, sp, #0
1a0016b2:	6078      	str	r0, [r7, #4]
1a0016b4:	687b      	ldr	r3, [r7, #4]
1a0016b6:	689b      	ldr	r3, [r3, #8]
1a0016b8:	4618      	mov	r0, r3
1a0016ba:	370c      	adds	r7, #12
1a0016bc:	46bd      	mov	sp, r7
1a0016be:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016c2:	4770      	bx	lr

1a0016c4 <Chip_UART_SetupFIFOS>:
1a0016c4:	b480      	push	{r7}
1a0016c6:	b083      	sub	sp, #12
1a0016c8:	af00      	add	r7, sp, #0
1a0016ca:	6078      	str	r0, [r7, #4]
1a0016cc:	6039      	str	r1, [r7, #0]
1a0016ce:	687b      	ldr	r3, [r7, #4]
1a0016d0:	683a      	ldr	r2, [r7, #0]
1a0016d2:	609a      	str	r2, [r3, #8]
1a0016d4:	bf00      	nop
1a0016d6:	370c      	adds	r7, #12
1a0016d8:	46bd      	mov	sp, r7
1a0016da:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016de:	4770      	bx	lr

1a0016e0 <Chip_UART_ConfigData>:
1a0016e0:	b480      	push	{r7}
1a0016e2:	b083      	sub	sp, #12
1a0016e4:	af00      	add	r7, sp, #0
1a0016e6:	6078      	str	r0, [r7, #4]
1a0016e8:	6039      	str	r1, [r7, #0]
1a0016ea:	687b      	ldr	r3, [r7, #4]
1a0016ec:	683a      	ldr	r2, [r7, #0]
1a0016ee:	60da      	str	r2, [r3, #12]
1a0016f0:	bf00      	nop
1a0016f2:	370c      	adds	r7, #12
1a0016f4:	46bd      	mov	sp, r7
1a0016f6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016fa:	4770      	bx	lr

1a0016fc <Chip_UART_EnableDivisorAccess>:
1a0016fc:	b480      	push	{r7}
1a0016fe:	b083      	sub	sp, #12
1a001700:	af00      	add	r7, sp, #0
1a001702:	6078      	str	r0, [r7, #4]
1a001704:	687b      	ldr	r3, [r7, #4]
1a001706:	68db      	ldr	r3, [r3, #12]
1a001708:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a00170c:	687b      	ldr	r3, [r7, #4]
1a00170e:	60da      	str	r2, [r3, #12]
1a001710:	bf00      	nop
1a001712:	370c      	adds	r7, #12
1a001714:	46bd      	mov	sp, r7
1a001716:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00171a:	4770      	bx	lr

1a00171c <Chip_UART_DisableDivisorAccess>:
1a00171c:	b480      	push	{r7}
1a00171e:	b083      	sub	sp, #12
1a001720:	af00      	add	r7, sp, #0
1a001722:	6078      	str	r0, [r7, #4]
1a001724:	687b      	ldr	r3, [r7, #4]
1a001726:	68db      	ldr	r3, [r3, #12]
1a001728:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a00172c:	687b      	ldr	r3, [r7, #4]
1a00172e:	60da      	str	r2, [r3, #12]
1a001730:	bf00      	nop
1a001732:	370c      	adds	r7, #12
1a001734:	46bd      	mov	sp, r7
1a001736:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00173a:	4770      	bx	lr

1a00173c <Chip_UART_SetDivisorLatches>:
1a00173c:	b480      	push	{r7}
1a00173e:	b083      	sub	sp, #12
1a001740:	af00      	add	r7, sp, #0
1a001742:	6078      	str	r0, [r7, #4]
1a001744:	460b      	mov	r3, r1
1a001746:	70fb      	strb	r3, [r7, #3]
1a001748:	4613      	mov	r3, r2
1a00174a:	70bb      	strb	r3, [r7, #2]
1a00174c:	78fa      	ldrb	r2, [r7, #3]
1a00174e:	687b      	ldr	r3, [r7, #4]
1a001750:	601a      	str	r2, [r3, #0]
1a001752:	78ba      	ldrb	r2, [r7, #2]
1a001754:	687b      	ldr	r3, [r7, #4]
1a001756:	605a      	str	r2, [r3, #4]
1a001758:	bf00      	nop
1a00175a:	370c      	adds	r7, #12
1a00175c:	46bd      	mov	sp, r7
1a00175e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001762:	4770      	bx	lr

1a001764 <Chip_UART_ReadLineStatus>:
1a001764:	b480      	push	{r7}
1a001766:	b083      	sub	sp, #12
1a001768:	af00      	add	r7, sp, #0
1a00176a:	6078      	str	r0, [r7, #4]
1a00176c:	687b      	ldr	r3, [r7, #4]
1a00176e:	695b      	ldr	r3, [r3, #20]
1a001770:	4618      	mov	r0, r3
1a001772:	370c      	adds	r7, #12
1a001774:	46bd      	mov	sp, r7
1a001776:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00177a:	4770      	bx	lr

1a00177c <Chip_UART_SetAutoBaudReg>:
1a00177c:	b480      	push	{r7}
1a00177e:	b083      	sub	sp, #12
1a001780:	af00      	add	r7, sp, #0
1a001782:	6078      	str	r0, [r7, #4]
1a001784:	6039      	str	r1, [r7, #0]
1a001786:	687b      	ldr	r3, [r7, #4]
1a001788:	6a1a      	ldr	r2, [r3, #32]
1a00178a:	683b      	ldr	r3, [r7, #0]
1a00178c:	431a      	orrs	r2, r3
1a00178e:	687b      	ldr	r3, [r7, #4]
1a001790:	621a      	str	r2, [r3, #32]
1a001792:	bf00      	nop
1a001794:	370c      	adds	r7, #12
1a001796:	46bd      	mov	sp, r7
1a001798:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00179c:	4770      	bx	lr
1a00179e:	Address 0x000000001a00179e is out of bounds.


1a0017a0 <Chip_UART_GetIndex>:
1a0017a0:	b480      	push	{r7}
1a0017a2:	b085      	sub	sp, #20
1a0017a4:	af00      	add	r7, sp, #0
1a0017a6:	6078      	str	r0, [r7, #4]
1a0017a8:	687b      	ldr	r3, [r7, #4]
1a0017aa:	60fb      	str	r3, [r7, #12]
1a0017ac:	68fb      	ldr	r3, [r7, #12]
1a0017ae:	4a10      	ldr	r2, [pc, #64]	; (1a0017f0 <Chip_UART_GetIndex+0x50>)
1a0017b0:	4293      	cmp	r3, r2
1a0017b2:	d00f      	beq.n	1a0017d4 <Chip_UART_GetIndex+0x34>
1a0017b4:	4a0e      	ldr	r2, [pc, #56]	; (1a0017f0 <Chip_UART_GetIndex+0x50>)
1a0017b6:	4293      	cmp	r3, r2
1a0017b8:	d803      	bhi.n	1a0017c2 <Chip_UART_GetIndex+0x22>
1a0017ba:	4a0e      	ldr	r2, [pc, #56]	; (1a0017f4 <Chip_UART_GetIndex+0x54>)
1a0017bc:	4293      	cmp	r3, r2
1a0017be:	d007      	beq.n	1a0017d0 <Chip_UART_GetIndex+0x30>
1a0017c0:	e00e      	b.n	1a0017e0 <Chip_UART_GetIndex+0x40>
1a0017c2:	4a0d      	ldr	r2, [pc, #52]	; (1a0017f8 <Chip_UART_GetIndex+0x58>)
1a0017c4:	4293      	cmp	r3, r2
1a0017c6:	d007      	beq.n	1a0017d8 <Chip_UART_GetIndex+0x38>
1a0017c8:	4a0c      	ldr	r2, [pc, #48]	; (1a0017fc <Chip_UART_GetIndex+0x5c>)
1a0017ca:	4293      	cmp	r3, r2
1a0017cc:	d006      	beq.n	1a0017dc <Chip_UART_GetIndex+0x3c>
1a0017ce:	e007      	b.n	1a0017e0 <Chip_UART_GetIndex+0x40>
1a0017d0:	2300      	movs	r3, #0
1a0017d2:	e006      	b.n	1a0017e2 <Chip_UART_GetIndex+0x42>
1a0017d4:	2301      	movs	r3, #1
1a0017d6:	e004      	b.n	1a0017e2 <Chip_UART_GetIndex+0x42>
1a0017d8:	2302      	movs	r3, #2
1a0017da:	e002      	b.n	1a0017e2 <Chip_UART_GetIndex+0x42>
1a0017dc:	2303      	movs	r3, #3
1a0017de:	e000      	b.n	1a0017e2 <Chip_UART_GetIndex+0x42>
1a0017e0:	2300      	movs	r3, #0
1a0017e2:	4618      	mov	r0, r3
1a0017e4:	3714      	adds	r7, #20
1a0017e6:	46bd      	mov	sp, r7
1a0017e8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0017ec:	4770      	bx	lr
1a0017ee:	bf00      	nop
1a0017f0:	40082000 	.word	0x40082000
1a0017f4:	40081000 	.word	0x40081000
1a0017f8:	400c1000 	.word	0x400c1000
1a0017fc:	400c2000 	.word	0x400c2000

1a001800 <Chip_UART_ABIntHandler>:
1a001800:	b580      	push	{r7, lr}
1a001802:	b082      	sub	sp, #8
1a001804:	af00      	add	r7, sp, #0
1a001806:	6078      	str	r0, [r7, #4]
1a001808:	6878      	ldr	r0, [r7, #4]
1a00180a:	f7ff ff4f 	bl	1a0016ac <Chip_UART_ReadIntIDReg>
1a00180e:	4603      	mov	r3, r0
1a001810:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a001814:	2b00      	cmp	r3, #0
1a001816:	d011      	beq.n	1a00183c <Chip_UART_ABIntHandler+0x3c>
1a001818:	f44f 7180 	mov.w	r1, #256	; 0x100
1a00181c:	6878      	ldr	r0, [r7, #4]
1a00181e:	f7ff ffad 	bl	1a00177c <Chip_UART_SetAutoBaudReg>
1a001822:	f44f 7180 	mov.w	r1, #256	; 0x100
1a001826:	6878      	ldr	r0, [r7, #4]
1a001828:	f7ff ff2e 	bl	1a001688 <Chip_UART_IntDisable>
1a00182c:	4b0e      	ldr	r3, [pc, #56]	; (1a001868 <Chip_UART_ABIntHandler+0x68>)
1a00182e:	781b      	ldrb	r3, [r3, #0]
1a001830:	b2db      	uxtb	r3, r3
1a001832:	2b00      	cmp	r3, #0
1a001834:	d102      	bne.n	1a00183c <Chip_UART_ABIntHandler+0x3c>
1a001836:	4b0c      	ldr	r3, [pc, #48]	; (1a001868 <Chip_UART_ABIntHandler+0x68>)
1a001838:	2201      	movs	r2, #1
1a00183a:	701a      	strb	r2, [r3, #0]
1a00183c:	6878      	ldr	r0, [r7, #4]
1a00183e:	f7ff ff35 	bl	1a0016ac <Chip_UART_ReadIntIDReg>
1a001842:	4603      	mov	r3, r0
1a001844:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a001848:	2b00      	cmp	r3, #0
1a00184a:	d009      	beq.n	1a001860 <Chip_UART_ABIntHandler+0x60>
1a00184c:	f44f 7100 	mov.w	r1, #512	; 0x200
1a001850:	6878      	ldr	r0, [r7, #4]
1a001852:	f7ff ff93 	bl	1a00177c <Chip_UART_SetAutoBaudReg>
1a001856:	f44f 7100 	mov.w	r1, #512	; 0x200
1a00185a:	6878      	ldr	r0, [r7, #4]
1a00185c:	f7ff ff14 	bl	1a001688 <Chip_UART_IntDisable>
1a001860:	bf00      	nop
1a001862:	3708      	adds	r7, #8
1a001864:	46bd      	mov	sp, r7
1a001866:	bd80      	pop	{r7, pc}
1a001868:	10000436 	.word	0x10000436

1a00186c <Chip_UART_Init>:
1a00186c:	b580      	push	{r7, lr}
1a00186e:	b084      	sub	sp, #16
1a001870:	af00      	add	r7, sp, #0
1a001872:	6078      	str	r0, [r7, #4]
1a001874:	68fb      	ldr	r3, [r7, #12]
1a001876:	6878      	ldr	r0, [r7, #4]
1a001878:	f7ff ff92 	bl	1a0017a0 <Chip_UART_GetIndex>
1a00187c:	4602      	mov	r2, r0
1a00187e:	4b1b      	ldr	r3, [pc, #108]	; (1a0018ec <Chip_UART_Init+0x80>)
1a001880:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a001884:	2301      	movs	r3, #1
1a001886:	2201      	movs	r2, #1
1a001888:	2101      	movs	r1, #1
1a00188a:	f000 fe4d 	bl	1a002528 <Chip_Clock_EnableOpts>
1a00188e:	2107      	movs	r1, #7
1a001890:	6878      	ldr	r0, [r7, #4]
1a001892:	f7ff ff17 	bl	1a0016c4 <Chip_UART_SetupFIFOS>
1a001896:	6878      	ldr	r0, [r7, #4]
1a001898:	f7ff fecd 	bl	1a001636 <Chip_UART_TXDisable>
1a00189c:	687b      	ldr	r3, [r7, #4]
1a00189e:	2200      	movs	r2, #0
1a0018a0:	605a      	str	r2, [r3, #4]
1a0018a2:	687b      	ldr	r3, [r7, #4]
1a0018a4:	2200      	movs	r2, #0
1a0018a6:	60da      	str	r2, [r3, #12]
1a0018a8:	687b      	ldr	r3, [r7, #4]
1a0018aa:	2200      	movs	r2, #0
1a0018ac:	621a      	str	r2, [r3, #32]
1a0018ae:	687b      	ldr	r3, [r7, #4]
1a0018b0:	2200      	movs	r2, #0
1a0018b2:	64da      	str	r2, [r3, #76]	; 0x4c
1a0018b4:	687b      	ldr	r3, [r7, #4]
1a0018b6:	2200      	movs	r2, #0
1a0018b8:	655a      	str	r2, [r3, #84]	; 0x54
1a0018ba:	687b      	ldr	r3, [r7, #4]
1a0018bc:	2200      	movs	r2, #0
1a0018be:	651a      	str	r2, [r3, #80]	; 0x50
1a0018c0:	687b      	ldr	r3, [r7, #4]
1a0018c2:	4a0b      	ldr	r2, [pc, #44]	; (1a0018f0 <Chip_UART_Init+0x84>)
1a0018c4:	4293      	cmp	r3, r2
1a0018c6:	d105      	bne.n	1a0018d4 <Chip_UART_Init+0x68>
1a0018c8:	687b      	ldr	r3, [r7, #4]
1a0018ca:	2200      	movs	r2, #0
1a0018cc:	611a      	str	r2, [r3, #16]
1a0018ce:	687b      	ldr	r3, [r7, #4]
1a0018d0:	699b      	ldr	r3, [r3, #24]
1a0018d2:	60fb      	str	r3, [r7, #12]
1a0018d4:	2103      	movs	r1, #3
1a0018d6:	6878      	ldr	r0, [r7, #4]
1a0018d8:	f7ff ff02 	bl	1a0016e0 <Chip_UART_ConfigData>
1a0018dc:	687b      	ldr	r3, [r7, #4]
1a0018de:	2210      	movs	r2, #16
1a0018e0:	629a      	str	r2, [r3, #40]	; 0x28
1a0018e2:	bf00      	nop
1a0018e4:	3710      	adds	r7, #16
1a0018e6:	46bd      	mov	sp, r7
1a0018e8:	bd80      	pop	{r7, pc}
1a0018ea:	bf00      	nop
1a0018ec:	1a00294c 	.word	0x1a00294c
1a0018f0:	40082000 	.word	0x40082000

1a0018f4 <Chip_UART_SetBaud>:
1a0018f4:	b580      	push	{r7, lr}
1a0018f6:	b086      	sub	sp, #24
1a0018f8:	af00      	add	r7, sp, #0
1a0018fa:	6078      	str	r0, [r7, #4]
1a0018fc:	6039      	str	r1, [r7, #0]
1a0018fe:	6878      	ldr	r0, [r7, #4]
1a001900:	f7ff ff4e 	bl	1a0017a0 <Chip_UART_GetIndex>
1a001904:	4602      	mov	r2, r0
1a001906:	4b16      	ldr	r3, [pc, #88]	; (1a001960 <Chip_UART_SetBaud+0x6c>)
1a001908:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a00190c:	4618      	mov	r0, r3
1a00190e:	f000 fe79 	bl	1a002604 <Chip_Clock_GetRate>
1a001912:	6178      	str	r0, [r7, #20]
1a001914:	683b      	ldr	r3, [r7, #0]
1a001916:	011b      	lsls	r3, r3, #4
1a001918:	697a      	ldr	r2, [r7, #20]
1a00191a:	fbb2 f3f3 	udiv	r3, r2, r3
1a00191e:	613b      	str	r3, [r7, #16]
1a001920:	693b      	ldr	r3, [r7, #16]
1a001922:	0a1b      	lsrs	r3, r3, #8
1a001924:	60fb      	str	r3, [r7, #12]
1a001926:	68fb      	ldr	r3, [r7, #12]
1a001928:	021b      	lsls	r3, r3, #8
1a00192a:	693a      	ldr	r2, [r7, #16]
1a00192c:	1ad3      	subs	r3, r2, r3
1a00192e:	60bb      	str	r3, [r7, #8]
1a001930:	6878      	ldr	r0, [r7, #4]
1a001932:	f7ff fee3 	bl	1a0016fc <Chip_UART_EnableDivisorAccess>
1a001936:	68bb      	ldr	r3, [r7, #8]
1a001938:	b2db      	uxtb	r3, r3
1a00193a:	68fa      	ldr	r2, [r7, #12]
1a00193c:	b2d2      	uxtb	r2, r2
1a00193e:	4619      	mov	r1, r3
1a001940:	6878      	ldr	r0, [r7, #4]
1a001942:	f7ff fefb 	bl	1a00173c <Chip_UART_SetDivisorLatches>
1a001946:	6878      	ldr	r0, [r7, #4]
1a001948:	f7ff fee8 	bl	1a00171c <Chip_UART_DisableDivisorAccess>
1a00194c:	697a      	ldr	r2, [r7, #20]
1a00194e:	693b      	ldr	r3, [r7, #16]
1a001950:	fbb2 f3f3 	udiv	r3, r2, r3
1a001954:	091b      	lsrs	r3, r3, #4
1a001956:	4618      	mov	r0, r3
1a001958:	3718      	adds	r7, #24
1a00195a:	46bd      	mov	sp, r7
1a00195c:	bd80      	pop	{r7, pc}
1a00195e:	bf00      	nop
1a001960:	1a002954 	.word	0x1a002954

1a001964 <Chip_UART_RXIntHandlerRB>:
1a001964:	b580      	push	{r7, lr}
1a001966:	b084      	sub	sp, #16
1a001968:	af00      	add	r7, sp, #0
1a00196a:	6078      	str	r0, [r7, #4]
1a00196c:	6039      	str	r1, [r7, #0]
1a00196e:	e00a      	b.n	1a001986 <Chip_UART_RXIntHandlerRB+0x22>
1a001970:	6878      	ldr	r0, [r7, #4]
1a001972:	f7ff fe7c 	bl	1a00166e <Chip_UART_ReadByte>
1a001976:	4603      	mov	r3, r0
1a001978:	73fb      	strb	r3, [r7, #15]
1a00197a:	f107 030f 	add.w	r3, r7, #15
1a00197e:	4619      	mov	r1, r3
1a001980:	6838      	ldr	r0, [r7, #0]
1a001982:	f000 f944 	bl	1a001c0e <RingBuffer_Insert>
1a001986:	6878      	ldr	r0, [r7, #4]
1a001988:	f7ff feec 	bl	1a001764 <Chip_UART_ReadLineStatus>
1a00198c:	4603      	mov	r3, r0
1a00198e:	f003 0301 	and.w	r3, r3, #1
1a001992:	2b00      	cmp	r3, #0
1a001994:	d1ec      	bne.n	1a001970 <Chip_UART_RXIntHandlerRB+0xc>
1a001996:	bf00      	nop
1a001998:	3710      	adds	r7, #16
1a00199a:	46bd      	mov	sp, r7
1a00199c:	bd80      	pop	{r7, pc}

1a00199e <Chip_UART_TXIntHandlerRB>:
1a00199e:	b580      	push	{r7, lr}
1a0019a0:	b084      	sub	sp, #16
1a0019a2:	af00      	add	r7, sp, #0
1a0019a4:	6078      	str	r0, [r7, #4]
1a0019a6:	6039      	str	r1, [r7, #0]
1a0019a8:	e004      	b.n	1a0019b4 <Chip_UART_TXIntHandlerRB+0x16>
1a0019aa:	7bfb      	ldrb	r3, [r7, #15]
1a0019ac:	4619      	mov	r1, r3
1a0019ae:	6878      	ldr	r0, [r7, #4]
1a0019b0:	f7ff fe4e 	bl	1a001650 <Chip_UART_SendByte>
1a0019b4:	6878      	ldr	r0, [r7, #4]
1a0019b6:	f7ff fed5 	bl	1a001764 <Chip_UART_ReadLineStatus>
1a0019ba:	4603      	mov	r3, r0
1a0019bc:	f003 0320 	and.w	r3, r3, #32
1a0019c0:	2b00      	cmp	r3, #0
1a0019c2:	d008      	beq.n	1a0019d6 <Chip_UART_TXIntHandlerRB+0x38>
1a0019c4:	f107 030f 	add.w	r3, r7, #15
1a0019c8:	4619      	mov	r1, r3
1a0019ca:	6838      	ldr	r0, [r7, #0]
1a0019cc:	f000 f94d 	bl	1a001c6a <RingBuffer_Pop>
1a0019d0:	4603      	mov	r3, r0
1a0019d2:	2b00      	cmp	r3, #0
1a0019d4:	d1e9      	bne.n	1a0019aa <Chip_UART_TXIntHandlerRB+0xc>
1a0019d6:	6838      	ldr	r0, [r7, #0]
1a0019d8:	f7ff fe18 	bl	1a00160c <RingBuffer_IsEmpty>
1a0019dc:	4603      	mov	r3, r0
1a0019de:	2b00      	cmp	r3, #0
1a0019e0:	d003      	beq.n	1a0019ea <Chip_UART_TXIntHandlerRB+0x4c>
1a0019e2:	2102      	movs	r1, #2
1a0019e4:	6878      	ldr	r0, [r7, #4]
1a0019e6:	f7ff fe4f 	bl	1a001688 <Chip_UART_IntDisable>
1a0019ea:	bf00      	nop
1a0019ec:	3710      	adds	r7, #16
1a0019ee:	46bd      	mov	sp, r7
1a0019f0:	bd80      	pop	{r7, pc}

1a0019f2 <Chip_UART_IRQRBHandler>:
1a0019f2:	b580      	push	{r7, lr}
1a0019f4:	b084      	sub	sp, #16
1a0019f6:	af00      	add	r7, sp, #0
1a0019f8:	60f8      	str	r0, [r7, #12]
1a0019fa:	60b9      	str	r1, [r7, #8]
1a0019fc:	607a      	str	r2, [r7, #4]
1a0019fe:	68fb      	ldr	r3, [r7, #12]
1a001a00:	685b      	ldr	r3, [r3, #4]
1a001a02:	f003 0302 	and.w	r3, r3, #2
1a001a06:	2b00      	cmp	r3, #0
1a001a08:	d00d      	beq.n	1a001a26 <Chip_UART_IRQRBHandler+0x34>
1a001a0a:	6879      	ldr	r1, [r7, #4]
1a001a0c:	68f8      	ldr	r0, [r7, #12]
1a001a0e:	f7ff ffc6 	bl	1a00199e <Chip_UART_TXIntHandlerRB>
1a001a12:	6878      	ldr	r0, [r7, #4]
1a001a14:	f7ff fdfa 	bl	1a00160c <RingBuffer_IsEmpty>
1a001a18:	4603      	mov	r3, r0
1a001a1a:	2b00      	cmp	r3, #0
1a001a1c:	d003      	beq.n	1a001a26 <Chip_UART_IRQRBHandler+0x34>
1a001a1e:	2102      	movs	r1, #2
1a001a20:	68f8      	ldr	r0, [r7, #12]
1a001a22:	f7ff fe31 	bl	1a001688 <Chip_UART_IntDisable>
1a001a26:	68b9      	ldr	r1, [r7, #8]
1a001a28:	68f8      	ldr	r0, [r7, #12]
1a001a2a:	f7ff ff9b 	bl	1a001964 <Chip_UART_RXIntHandlerRB>
1a001a2e:	68f8      	ldr	r0, [r7, #12]
1a001a30:	f7ff fee6 	bl	1a001800 <Chip_UART_ABIntHandler>
1a001a34:	bf00      	nop
1a001a36:	3710      	adds	r7, #16
1a001a38:	46bd      	mov	sp, r7
1a001a3a:	bd80      	pop	{r7, pc}

1a001a3c <Chip_TIMER_Enable>:
1a001a3c:	b480      	push	{r7}
1a001a3e:	b083      	sub	sp, #12
1a001a40:	af00      	add	r7, sp, #0
1a001a42:	6078      	str	r0, [r7, #4]
1a001a44:	687b      	ldr	r3, [r7, #4]
1a001a46:	685b      	ldr	r3, [r3, #4]
1a001a48:	f043 0201 	orr.w	r2, r3, #1
1a001a4c:	687b      	ldr	r3, [r7, #4]
1a001a4e:	605a      	str	r2, [r3, #4]
1a001a50:	bf00      	nop
1a001a52:	370c      	adds	r7, #12
1a001a54:	46bd      	mov	sp, r7
1a001a56:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a5a:	4770      	bx	lr

1a001a5c <Chip_TIMER_ReadCount>:
1a001a5c:	b480      	push	{r7}
1a001a5e:	b083      	sub	sp, #12
1a001a60:	af00      	add	r7, sp, #0
1a001a62:	6078      	str	r0, [r7, #4]
1a001a64:	687b      	ldr	r3, [r7, #4]
1a001a66:	689b      	ldr	r3, [r3, #8]
1a001a68:	4618      	mov	r0, r3
1a001a6a:	370c      	adds	r7, #12
1a001a6c:	46bd      	mov	sp, r7
1a001a6e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a72:	4770      	bx	lr

1a001a74 <Chip_TIMER_PrescaleSet>:
1a001a74:	b480      	push	{r7}
1a001a76:	b083      	sub	sp, #12
1a001a78:	af00      	add	r7, sp, #0
1a001a7a:	6078      	str	r0, [r7, #4]
1a001a7c:	6039      	str	r1, [r7, #0]
1a001a7e:	687b      	ldr	r3, [r7, #4]
1a001a80:	683a      	ldr	r2, [r7, #0]
1a001a82:	60da      	str	r2, [r3, #12]
1a001a84:	bf00      	nop
1a001a86:	370c      	adds	r7, #12
1a001a88:	46bd      	mov	sp, r7
1a001a8a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a8e:	4770      	bx	lr

1a001a90 <StopWatch_Init>:
1a001a90:	b580      	push	{r7, lr}
1a001a92:	b082      	sub	sp, #8
1a001a94:	af00      	add	r7, sp, #0
1a001a96:	2308      	movs	r3, #8
1a001a98:	607b      	str	r3, [r7, #4]
1a001a9a:	4814      	ldr	r0, [pc, #80]	; (1a001aec <StopWatch_Init+0x5c>)
1a001a9c:	f000 fe34 	bl	1a002708 <Chip_TIMER_Init>
1a001aa0:	687b      	ldr	r3, [r7, #4]
1a001aa2:	3b01      	subs	r3, #1
1a001aa4:	4619      	mov	r1, r3
1a001aa6:	4811      	ldr	r0, [pc, #68]	; (1a001aec <StopWatch_Init+0x5c>)
1a001aa8:	f7ff ffe4 	bl	1a001a74 <Chip_TIMER_PrescaleSet>
1a001aac:	480f      	ldr	r0, [pc, #60]	; (1a001aec <StopWatch_Init+0x5c>)
1a001aae:	f7ff ffc5 	bl	1a001a3c <Chip_TIMER_Enable>
1a001ab2:	2084      	movs	r0, #132	; 0x84
1a001ab4:	f000 fda6 	bl	1a002604 <Chip_Clock_GetRate>
1a001ab8:	4602      	mov	r2, r0
1a001aba:	687b      	ldr	r3, [r7, #4]
1a001abc:	fbb2 f3f3 	udiv	r3, r2, r3
1a001ac0:	4a0b      	ldr	r2, [pc, #44]	; (1a001af0 <StopWatch_Init+0x60>)
1a001ac2:	6013      	str	r3, [r2, #0]
1a001ac4:	4b0a      	ldr	r3, [pc, #40]	; (1a001af0 <StopWatch_Init+0x60>)
1a001ac6:	681b      	ldr	r3, [r3, #0]
1a001ac8:	4a0a      	ldr	r2, [pc, #40]	; (1a001af4 <StopWatch_Init+0x64>)
1a001aca:	fba2 2303 	umull	r2, r3, r2, r3
1a001ace:	099b      	lsrs	r3, r3, #6
1a001ad0:	4a09      	ldr	r2, [pc, #36]	; (1a001af8 <StopWatch_Init+0x68>)
1a001ad2:	6013      	str	r3, [r2, #0]
1a001ad4:	4b06      	ldr	r3, [pc, #24]	; (1a001af0 <StopWatch_Init+0x60>)
1a001ad6:	681b      	ldr	r3, [r3, #0]
1a001ad8:	4a08      	ldr	r2, [pc, #32]	; (1a001afc <StopWatch_Init+0x6c>)
1a001ada:	fba2 2303 	umull	r2, r3, r2, r3
1a001ade:	0c9b      	lsrs	r3, r3, #18
1a001ae0:	4a07      	ldr	r2, [pc, #28]	; (1a001b00 <StopWatch_Init+0x70>)
1a001ae2:	6013      	str	r3, [r2, #0]
1a001ae4:	bf00      	nop
1a001ae6:	3708      	adds	r7, #8
1a001ae8:	46bd      	mov	sp, r7
1a001aea:	bd80      	pop	{r7, pc}
1a001aec:	40084000 	.word	0x40084000
1a001af0:	10000438 	.word	0x10000438
1a001af4:	10624dd3 	.word	0x10624dd3
1a001af8:	1000043c 	.word	0x1000043c
1a001afc:	431bde83 	.word	0x431bde83
1a001b00:	10000440 	.word	0x10000440

1a001b04 <StopWatch_Start>:
1a001b04:	b580      	push	{r7, lr}
1a001b06:	af00      	add	r7, sp, #0
1a001b08:	4802      	ldr	r0, [pc, #8]	; (1a001b14 <StopWatch_Start+0x10>)
1a001b0a:	f7ff ffa7 	bl	1a001a5c <Chip_TIMER_ReadCount>
1a001b0e:	4603      	mov	r3, r0
1a001b10:	4618      	mov	r0, r3
1a001b12:	bd80      	pop	{r7, pc}
1a001b14:	40084000 	.word	0x40084000

1a001b18 <StopWatch_TicksToMs>:
1a001b18:	b480      	push	{r7}
1a001b1a:	b083      	sub	sp, #12
1a001b1c:	af00      	add	r7, sp, #0
1a001b1e:	6078      	str	r0, [r7, #4]
1a001b20:	4b05      	ldr	r3, [pc, #20]	; (1a001b38 <StopWatch_TicksToMs+0x20>)
1a001b22:	681b      	ldr	r3, [r3, #0]
1a001b24:	687a      	ldr	r2, [r7, #4]
1a001b26:	fbb2 f3f3 	udiv	r3, r2, r3
1a001b2a:	4618      	mov	r0, r3
1a001b2c:	370c      	adds	r7, #12
1a001b2e:	46bd      	mov	sp, r7
1a001b30:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b34:	4770      	bx	lr
1a001b36:	bf00      	nop
1a001b38:	1000043c 	.word	0x1000043c

1a001b3c <StopWatch_MsToTicks>:
1a001b3c:	b480      	push	{r7}
1a001b3e:	b083      	sub	sp, #12
1a001b40:	af00      	add	r7, sp, #0
1a001b42:	6078      	str	r0, [r7, #4]
1a001b44:	4b05      	ldr	r3, [pc, #20]	; (1a001b5c <StopWatch_MsToTicks+0x20>)
1a001b46:	681b      	ldr	r3, [r3, #0]
1a001b48:	687a      	ldr	r2, [r7, #4]
1a001b4a:	fb02 f303 	mul.w	r3, r2, r3
1a001b4e:	4618      	mov	r0, r3
1a001b50:	370c      	adds	r7, #12
1a001b52:	46bd      	mov	sp, r7
1a001b54:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b58:	4770      	bx	lr
1a001b5a:	bf00      	nop
1a001b5c:	1000043c 	.word	0x1000043c

1a001b60 <RingBuffer_GetCount>:
1a001b60:	b480      	push	{r7}
1a001b62:	b083      	sub	sp, #12
1a001b64:	af00      	add	r7, sp, #0
1a001b66:	6078      	str	r0, [r7, #4]
1a001b68:	687b      	ldr	r3, [r7, #4]
1a001b6a:	330c      	adds	r3, #12
1a001b6c:	681a      	ldr	r2, [r3, #0]
1a001b6e:	687b      	ldr	r3, [r7, #4]
1a001b70:	3310      	adds	r3, #16
1a001b72:	681b      	ldr	r3, [r3, #0]
1a001b74:	1ad3      	subs	r3, r2, r3
1a001b76:	4618      	mov	r0, r3
1a001b78:	370c      	adds	r7, #12
1a001b7a:	46bd      	mov	sp, r7
1a001b7c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b80:	4770      	bx	lr

1a001b82 <RingBuffer_IsFull>:
1a001b82:	b580      	push	{r7, lr}
1a001b84:	b082      	sub	sp, #8
1a001b86:	af00      	add	r7, sp, #0
1a001b88:	6078      	str	r0, [r7, #4]
1a001b8a:	6878      	ldr	r0, [r7, #4]
1a001b8c:	f7ff ffe8 	bl	1a001b60 <RingBuffer_GetCount>
1a001b90:	4602      	mov	r2, r0
1a001b92:	687b      	ldr	r3, [r7, #4]
1a001b94:	685b      	ldr	r3, [r3, #4]
1a001b96:	429a      	cmp	r2, r3
1a001b98:	bfac      	ite	ge
1a001b9a:	2301      	movge	r3, #1
1a001b9c:	2300      	movlt	r3, #0
1a001b9e:	b2db      	uxtb	r3, r3
1a001ba0:	4618      	mov	r0, r3
1a001ba2:	3708      	adds	r7, #8
1a001ba4:	46bd      	mov	sp, r7
1a001ba6:	bd80      	pop	{r7, pc}

1a001ba8 <RingBuffer_IsEmpty>:
1a001ba8:	b480      	push	{r7}
1a001baa:	b083      	sub	sp, #12
1a001bac:	af00      	add	r7, sp, #0
1a001bae:	6078      	str	r0, [r7, #4]
1a001bb0:	687b      	ldr	r3, [r7, #4]
1a001bb2:	330c      	adds	r3, #12
1a001bb4:	681a      	ldr	r2, [r3, #0]
1a001bb6:	687b      	ldr	r3, [r7, #4]
1a001bb8:	3310      	adds	r3, #16
1a001bba:	681b      	ldr	r3, [r3, #0]
1a001bbc:	429a      	cmp	r2, r3
1a001bbe:	bf0c      	ite	eq
1a001bc0:	2301      	moveq	r3, #1
1a001bc2:	2300      	movne	r3, #0
1a001bc4:	b2db      	uxtb	r3, r3
1a001bc6:	4618      	mov	r0, r3
1a001bc8:	370c      	adds	r7, #12
1a001bca:	46bd      	mov	sp, r7
1a001bcc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001bd0:	4770      	bx	lr

1a001bd2 <RingBuffer_Init>:
1a001bd2:	b480      	push	{r7}
1a001bd4:	b085      	sub	sp, #20
1a001bd6:	af00      	add	r7, sp, #0
1a001bd8:	60f8      	str	r0, [r7, #12]
1a001bda:	60b9      	str	r1, [r7, #8]
1a001bdc:	607a      	str	r2, [r7, #4]
1a001bde:	603b      	str	r3, [r7, #0]
1a001be0:	68fb      	ldr	r3, [r7, #12]
1a001be2:	68ba      	ldr	r2, [r7, #8]
1a001be4:	601a      	str	r2, [r3, #0]
1a001be6:	68fb      	ldr	r3, [r7, #12]
1a001be8:	683a      	ldr	r2, [r7, #0]
1a001bea:	605a      	str	r2, [r3, #4]
1a001bec:	68fb      	ldr	r3, [r7, #12]
1a001bee:	687a      	ldr	r2, [r7, #4]
1a001bf0:	609a      	str	r2, [r3, #8]
1a001bf2:	68fb      	ldr	r3, [r7, #12]
1a001bf4:	2200      	movs	r2, #0
1a001bf6:	611a      	str	r2, [r3, #16]
1a001bf8:	68fb      	ldr	r3, [r7, #12]
1a001bfa:	691a      	ldr	r2, [r3, #16]
1a001bfc:	68fb      	ldr	r3, [r7, #12]
1a001bfe:	60da      	str	r2, [r3, #12]
1a001c00:	2301      	movs	r3, #1
1a001c02:	4618      	mov	r0, r3
1a001c04:	3714      	adds	r7, #20
1a001c06:	46bd      	mov	sp, r7
1a001c08:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c0c:	4770      	bx	lr

1a001c0e <RingBuffer_Insert>:
1a001c0e:	b580      	push	{r7, lr}
1a001c10:	b084      	sub	sp, #16
1a001c12:	af00      	add	r7, sp, #0
1a001c14:	6078      	str	r0, [r7, #4]
1a001c16:	6039      	str	r1, [r7, #0]
1a001c18:	687b      	ldr	r3, [r7, #4]
1a001c1a:	681b      	ldr	r3, [r3, #0]
1a001c1c:	60fb      	str	r3, [r7, #12]
1a001c1e:	6878      	ldr	r0, [r7, #4]
1a001c20:	f7ff ffaf 	bl	1a001b82 <RingBuffer_IsFull>
1a001c24:	4603      	mov	r3, r0
1a001c26:	2b00      	cmp	r3, #0
1a001c28:	d001      	beq.n	1a001c2e <RingBuffer_Insert+0x20>
1a001c2a:	2300      	movs	r3, #0
1a001c2c:	e019      	b.n	1a001c62 <RingBuffer_Insert+0x54>
1a001c2e:	687b      	ldr	r3, [r7, #4]
1a001c30:	68db      	ldr	r3, [r3, #12]
1a001c32:	687a      	ldr	r2, [r7, #4]
1a001c34:	6852      	ldr	r2, [r2, #4]
1a001c36:	3a01      	subs	r2, #1
1a001c38:	4013      	ands	r3, r2
1a001c3a:	687a      	ldr	r2, [r7, #4]
1a001c3c:	6892      	ldr	r2, [r2, #8]
1a001c3e:	fb02 f303 	mul.w	r3, r2, r3
1a001c42:	68fa      	ldr	r2, [r7, #12]
1a001c44:	4413      	add	r3, r2
1a001c46:	60fb      	str	r3, [r7, #12]
1a001c48:	687b      	ldr	r3, [r7, #4]
1a001c4a:	689b      	ldr	r3, [r3, #8]
1a001c4c:	461a      	mov	r2, r3
1a001c4e:	6839      	ldr	r1, [r7, #0]
1a001c50:	68f8      	ldr	r0, [r7, #12]
1a001c52:	f000 fd69 	bl	1a002728 <memcpy>
1a001c56:	687b      	ldr	r3, [r7, #4]
1a001c58:	68db      	ldr	r3, [r3, #12]
1a001c5a:	1c5a      	adds	r2, r3, #1
1a001c5c:	687b      	ldr	r3, [r7, #4]
1a001c5e:	60da      	str	r2, [r3, #12]
1a001c60:	2301      	movs	r3, #1
1a001c62:	4618      	mov	r0, r3
1a001c64:	3710      	adds	r7, #16
1a001c66:	46bd      	mov	sp, r7
1a001c68:	bd80      	pop	{r7, pc}

1a001c6a <RingBuffer_Pop>:
1a001c6a:	b580      	push	{r7, lr}
1a001c6c:	b084      	sub	sp, #16
1a001c6e:	af00      	add	r7, sp, #0
1a001c70:	6078      	str	r0, [r7, #4]
1a001c72:	6039      	str	r1, [r7, #0]
1a001c74:	687b      	ldr	r3, [r7, #4]
1a001c76:	681b      	ldr	r3, [r3, #0]
1a001c78:	60fb      	str	r3, [r7, #12]
1a001c7a:	6878      	ldr	r0, [r7, #4]
1a001c7c:	f7ff ff94 	bl	1a001ba8 <RingBuffer_IsEmpty>
1a001c80:	4603      	mov	r3, r0
1a001c82:	2b00      	cmp	r3, #0
1a001c84:	d001      	beq.n	1a001c8a <RingBuffer_Pop+0x20>
1a001c86:	2300      	movs	r3, #0
1a001c88:	e019      	b.n	1a001cbe <RingBuffer_Pop+0x54>
1a001c8a:	687b      	ldr	r3, [r7, #4]
1a001c8c:	691b      	ldr	r3, [r3, #16]
1a001c8e:	687a      	ldr	r2, [r7, #4]
1a001c90:	6852      	ldr	r2, [r2, #4]
1a001c92:	3a01      	subs	r2, #1
1a001c94:	4013      	ands	r3, r2
1a001c96:	687a      	ldr	r2, [r7, #4]
1a001c98:	6892      	ldr	r2, [r2, #8]
1a001c9a:	fb02 f303 	mul.w	r3, r2, r3
1a001c9e:	68fa      	ldr	r2, [r7, #12]
1a001ca0:	4413      	add	r3, r2
1a001ca2:	60fb      	str	r3, [r7, #12]
1a001ca4:	687b      	ldr	r3, [r7, #4]
1a001ca6:	689b      	ldr	r3, [r3, #8]
1a001ca8:	461a      	mov	r2, r3
1a001caa:	68f9      	ldr	r1, [r7, #12]
1a001cac:	6838      	ldr	r0, [r7, #0]
1a001cae:	f000 fd3b 	bl	1a002728 <memcpy>
1a001cb2:	687b      	ldr	r3, [r7, #4]
1a001cb4:	691b      	ldr	r3, [r3, #16]
1a001cb6:	1c5a      	adds	r2, r3, #1
1a001cb8:	687b      	ldr	r3, [r7, #4]
1a001cba:	611a      	str	r2, [r3, #16]
1a001cbc:	2301      	movs	r3, #1
1a001cbe:	4618      	mov	r0, r3
1a001cc0:	3710      	adds	r7, #16
1a001cc2:	46bd      	mov	sp, r7
1a001cc4:	bd80      	pop	{r7, pc}

1a001cc6 <ABS>:
1a001cc6:	b480      	push	{r7}
1a001cc8:	b083      	sub	sp, #12
1a001cca:	af00      	add	r7, sp, #0
1a001ccc:	6078      	str	r0, [r7, #4]
1a001cce:	687b      	ldr	r3, [r7, #4]
1a001cd0:	2b00      	cmp	r3, #0
1a001cd2:	da02      	bge.n	1a001cda <ABS+0x14>
1a001cd4:	687b      	ldr	r3, [r7, #4]
1a001cd6:	425b      	negs	r3, r3
1a001cd8:	e000      	b.n	1a001cdc <ABS+0x16>
1a001cda:	687b      	ldr	r3, [r7, #4]
1a001cdc:	4618      	mov	r0, r3
1a001cde:	370c      	adds	r7, #12
1a001ce0:	46bd      	mov	sp, r7
1a001ce2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001ce6:	4770      	bx	lr

1a001ce8 <pll_calc_divs>:
1a001ce8:	b580      	push	{r7, lr}
1a001cea:	b088      	sub	sp, #32
1a001cec:	af00      	add	r7, sp, #0
1a001cee:	6078      	str	r0, [r7, #4]
1a001cf0:	6039      	str	r1, [r7, #0]
1a001cf2:	687b      	ldr	r3, [r7, #4]
1a001cf4:	61fb      	str	r3, [r7, #28]
1a001cf6:	683b      	ldr	r3, [r7, #0]
1a001cf8:	681b      	ldr	r3, [r3, #0]
1a001cfa:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001cfe:	2b00      	cmp	r3, #0
1a001d00:	d005      	beq.n	1a001d0e <pll_calc_divs+0x26>
1a001d02:	683b      	ldr	r3, [r7, #0]
1a001d04:	681b      	ldr	r3, [r3, #0]
1a001d06:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a001d0a:	683b      	ldr	r3, [r7, #0]
1a001d0c:	601a      	str	r2, [r3, #0]
1a001d0e:	2301      	movs	r3, #1
1a001d10:	61bb      	str	r3, [r7, #24]
1a001d12:	e06f      	b.n	1a001df4 <pll_calc_divs+0x10c>
1a001d14:	2300      	movs	r3, #0
1a001d16:	613b      	str	r3, [r7, #16]
1a001d18:	e066      	b.n	1a001de8 <pll_calc_divs+0x100>
1a001d1a:	2301      	movs	r3, #1
1a001d1c:	617b      	str	r3, [r7, #20]
1a001d1e:	e05a      	b.n	1a001dd6 <pll_calc_divs+0xee>
1a001d20:	683b      	ldr	r3, [r7, #0]
1a001d22:	681b      	ldr	r3, [r3, #0]
1a001d24:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a001d28:	2b00      	cmp	r3, #0
1a001d2a:	d00e      	beq.n	1a001d4a <pll_calc_divs+0x62>
1a001d2c:	693b      	ldr	r3, [r7, #16]
1a001d2e:	3301      	adds	r3, #1
1a001d30:	697a      	ldr	r2, [r7, #20]
1a001d32:	fa02 f303 	lsl.w	r3, r2, r3
1a001d36:	461a      	mov	r2, r3
1a001d38:	683b      	ldr	r3, [r7, #0]
1a001d3a:	695b      	ldr	r3, [r3, #20]
1a001d3c:	fb03 f202 	mul.w	r2, r3, r2
1a001d40:	69bb      	ldr	r3, [r7, #24]
1a001d42:	fbb2 f3f3 	udiv	r3, r2, r3
1a001d46:	60fb      	str	r3, [r7, #12]
1a001d48:	e008      	b.n	1a001d5c <pll_calc_divs+0x74>
1a001d4a:	683b      	ldr	r3, [r7, #0]
1a001d4c:	695b      	ldr	r3, [r3, #20]
1a001d4e:	697a      	ldr	r2, [r7, #20]
1a001d50:	fb02 f203 	mul.w	r2, r2, r3
1a001d54:	69bb      	ldr	r3, [r7, #24]
1a001d56:	fbb2 f3f3 	udiv	r3, r2, r3
1a001d5a:	60fb      	str	r3, [r7, #12]
1a001d5c:	68fb      	ldr	r3, [r7, #12]
1a001d5e:	4a29      	ldr	r2, [pc, #164]	; (1a001e04 <pll_calc_divs+0x11c>)
1a001d60:	4293      	cmp	r3, r2
1a001d62:	d934      	bls.n	1a001dce <pll_calc_divs+0xe6>
1a001d64:	68fb      	ldr	r3, [r7, #12]
1a001d66:	4a28      	ldr	r2, [pc, #160]	; (1a001e08 <pll_calc_divs+0x120>)
1a001d68:	4293      	cmp	r3, r2
1a001d6a:	d839      	bhi.n	1a001de0 <pll_calc_divs+0xf8>
1a001d6c:	683b      	ldr	r3, [r7, #0]
1a001d6e:	681b      	ldr	r3, [r3, #0]
1a001d70:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001d74:	2b00      	cmp	r3, #0
1a001d76:	d002      	beq.n	1a001d7e <pll_calc_divs+0x96>
1a001d78:	68fb      	ldr	r3, [r7, #12]
1a001d7a:	60bb      	str	r3, [r7, #8]
1a001d7c:	e005      	b.n	1a001d8a <pll_calc_divs+0xa2>
1a001d7e:	693b      	ldr	r3, [r7, #16]
1a001d80:	3301      	adds	r3, #1
1a001d82:	68fa      	ldr	r2, [r7, #12]
1a001d84:	fa22 f303 	lsr.w	r3, r2, r3
1a001d88:	60bb      	str	r3, [r7, #8]
1a001d8a:	687a      	ldr	r2, [r7, #4]
1a001d8c:	68bb      	ldr	r3, [r7, #8]
1a001d8e:	1ad3      	subs	r3, r2, r3
1a001d90:	4618      	mov	r0, r3
1a001d92:	f7ff ff98 	bl	1a001cc6 <ABS>
1a001d96:	4602      	mov	r2, r0
1a001d98:	69fb      	ldr	r3, [r7, #28]
1a001d9a:	4293      	cmp	r3, r2
1a001d9c:	d918      	bls.n	1a001dd0 <pll_calc_divs+0xe8>
1a001d9e:	683b      	ldr	r3, [r7, #0]
1a001da0:	69ba      	ldr	r2, [r7, #24]
1a001da2:	609a      	str	r2, [r3, #8]
1a001da4:	693b      	ldr	r3, [r7, #16]
1a001da6:	1c5a      	adds	r2, r3, #1
1a001da8:	683b      	ldr	r3, [r7, #0]
1a001daa:	60da      	str	r2, [r3, #12]
1a001dac:	683b      	ldr	r3, [r7, #0]
1a001dae:	697a      	ldr	r2, [r7, #20]
1a001db0:	611a      	str	r2, [r3, #16]
1a001db2:	683b      	ldr	r3, [r7, #0]
1a001db4:	68ba      	ldr	r2, [r7, #8]
1a001db6:	619a      	str	r2, [r3, #24]
1a001db8:	683b      	ldr	r3, [r7, #0]
1a001dba:	68fa      	ldr	r2, [r7, #12]
1a001dbc:	61da      	str	r2, [r3, #28]
1a001dbe:	687a      	ldr	r2, [r7, #4]
1a001dc0:	68bb      	ldr	r3, [r7, #8]
1a001dc2:	1ad3      	subs	r3, r2, r3
1a001dc4:	4618      	mov	r0, r3
1a001dc6:	f7ff ff7e 	bl	1a001cc6 <ABS>
1a001dca:	61f8      	str	r0, [r7, #28]
1a001dcc:	e000      	b.n	1a001dd0 <pll_calc_divs+0xe8>
1a001dce:	bf00      	nop
1a001dd0:	697b      	ldr	r3, [r7, #20]
1a001dd2:	3301      	adds	r3, #1
1a001dd4:	617b      	str	r3, [r7, #20]
1a001dd6:	697b      	ldr	r3, [r7, #20]
1a001dd8:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a001ddc:	dda0      	ble.n	1a001d20 <pll_calc_divs+0x38>
1a001dde:	e000      	b.n	1a001de2 <pll_calc_divs+0xfa>
1a001de0:	bf00      	nop
1a001de2:	693b      	ldr	r3, [r7, #16]
1a001de4:	3301      	adds	r3, #1
1a001de6:	613b      	str	r3, [r7, #16]
1a001de8:	693b      	ldr	r3, [r7, #16]
1a001dea:	2b03      	cmp	r3, #3
1a001dec:	dd95      	ble.n	1a001d1a <pll_calc_divs+0x32>
1a001dee:	69bb      	ldr	r3, [r7, #24]
1a001df0:	3301      	adds	r3, #1
1a001df2:	61bb      	str	r3, [r7, #24]
1a001df4:	69bb      	ldr	r3, [r7, #24]
1a001df6:	2b04      	cmp	r3, #4
1a001df8:	dd8c      	ble.n	1a001d14 <pll_calc_divs+0x2c>
1a001dfa:	bf00      	nop
1a001dfc:	3720      	adds	r7, #32
1a001dfe:	46bd      	mov	sp, r7
1a001e00:	bd80      	pop	{r7, pc}
1a001e02:	bf00      	nop
1a001e04:	094c5eff 	.word	0x094c5eff
1a001e08:	1312d000 	.word	0x1312d000

1a001e0c <pll_get_frac>:
1a001e0c:	b5b0      	push	{r4, r5, r7, lr}
1a001e0e:	b09e      	sub	sp, #120	; 0x78
1a001e10:	af00      	add	r7, sp, #0
1a001e12:	6078      	str	r0, [r7, #4]
1a001e14:	6039      	str	r1, [r7, #0]
1a001e16:	f107 030c 	add.w	r3, r7, #12
1a001e1a:	2260      	movs	r2, #96	; 0x60
1a001e1c:	2100      	movs	r1, #0
1a001e1e:	4618      	mov	r0, r3
1a001e20:	f7fe fa6e 	bl	1a000300 <memset>
1a001e24:	68fb      	ldr	r3, [r7, #12]
1a001e26:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a001e2a:	60fb      	str	r3, [r7, #12]
1a001e2c:	683b      	ldr	r3, [r7, #0]
1a001e2e:	695b      	ldr	r3, [r3, #20]
1a001e30:	623b      	str	r3, [r7, #32]
1a001e32:	683b      	ldr	r3, [r7, #0]
1a001e34:	791b      	ldrb	r3, [r3, #4]
1a001e36:	743b      	strb	r3, [r7, #16]
1a001e38:	f107 030c 	add.w	r3, r7, #12
1a001e3c:	4619      	mov	r1, r3
1a001e3e:	6878      	ldr	r0, [r7, #4]
1a001e40:	f7ff ff52 	bl	1a001ce8 <pll_calc_divs>
1a001e44:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001e46:	687a      	ldr	r2, [r7, #4]
1a001e48:	429a      	cmp	r2, r3
1a001e4a:	d10a      	bne.n	1a001e62 <pll_get_frac+0x56>
1a001e4c:	683b      	ldr	r3, [r7, #0]
1a001e4e:	461d      	mov	r5, r3
1a001e50:	f107 040c 	add.w	r4, r7, #12
1a001e54:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001e56:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001e58:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001e5c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001e60:	e08e      	b.n	1a001f80 <pll_get_frac+0x174>
1a001e62:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001e64:	687a      	ldr	r2, [r7, #4]
1a001e66:	1ad3      	subs	r3, r2, r3
1a001e68:	4618      	mov	r0, r3
1a001e6a:	f7ff ff2c 	bl	1a001cc6 <ABS>
1a001e6e:	4603      	mov	r3, r0
1a001e70:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001e72:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001e74:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001e78:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001e7a:	683b      	ldr	r3, [r7, #0]
1a001e7c:	695b      	ldr	r3, [r3, #20]
1a001e7e:	663b      	str	r3, [r7, #96]	; 0x60
1a001e80:	683b      	ldr	r3, [r7, #0]
1a001e82:	791b      	ldrb	r3, [r3, #4]
1a001e84:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001e88:	f107 030c 	add.w	r3, r7, #12
1a001e8c:	3340      	adds	r3, #64	; 0x40
1a001e8e:	4619      	mov	r1, r3
1a001e90:	6878      	ldr	r0, [r7, #4]
1a001e92:	f7ff ff29 	bl	1a001ce8 <pll_calc_divs>
1a001e96:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001e98:	687a      	ldr	r2, [r7, #4]
1a001e9a:	429a      	cmp	r2, r3
1a001e9c:	d10a      	bne.n	1a001eb4 <pll_get_frac+0xa8>
1a001e9e:	683b      	ldr	r3, [r7, #0]
1a001ea0:	461d      	mov	r5, r3
1a001ea2:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001ea6:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001ea8:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001eaa:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001eae:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001eb2:	e065      	b.n	1a001f80 <pll_get_frac+0x174>
1a001eb4:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001eb6:	687a      	ldr	r2, [r7, #4]
1a001eb8:	1ad3      	subs	r3, r2, r3
1a001eba:	4618      	mov	r0, r3
1a001ebc:	f7ff ff03 	bl	1a001cc6 <ABS>
1a001ec0:	4603      	mov	r3, r0
1a001ec2:	677b      	str	r3, [r7, #116]	; 0x74
1a001ec4:	687b      	ldr	r3, [r7, #4]
1a001ec6:	4a30      	ldr	r2, [pc, #192]	; (1a001f88 <pll_get_frac+0x17c>)
1a001ec8:	4293      	cmp	r3, r2
1a001eca:	d81a      	bhi.n	1a001f02 <pll_get_frac+0xf6>
1a001ecc:	2340      	movs	r3, #64	; 0x40
1a001ece:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001ed0:	683b      	ldr	r3, [r7, #0]
1a001ed2:	695b      	ldr	r3, [r3, #20]
1a001ed4:	643b      	str	r3, [r7, #64]	; 0x40
1a001ed6:	f107 030c 	add.w	r3, r7, #12
1a001eda:	3320      	adds	r3, #32
1a001edc:	4619      	mov	r1, r3
1a001ede:	6878      	ldr	r0, [r7, #4]
1a001ee0:	f7ff ff02 	bl	1a001ce8 <pll_calc_divs>
1a001ee4:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001ee6:	687a      	ldr	r2, [r7, #4]
1a001ee8:	429a      	cmp	r2, r3
1a001eea:	d10a      	bne.n	1a001f02 <pll_get_frac+0xf6>
1a001eec:	683b      	ldr	r3, [r7, #0]
1a001eee:	461d      	mov	r5, r3
1a001ef0:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001ef4:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001ef6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001ef8:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001efc:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001f00:	e03e      	b.n	1a001f80 <pll_get_frac+0x174>
1a001f02:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001f04:	687a      	ldr	r2, [r7, #4]
1a001f06:	1ad3      	subs	r3, r2, r3
1a001f08:	4618      	mov	r0, r3
1a001f0a:	f7ff fedc 	bl	1a001cc6 <ABS>
1a001f0e:	4603      	mov	r3, r0
1a001f10:	673b      	str	r3, [r7, #112]	; 0x70
1a001f12:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001f14:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a001f16:	429a      	cmp	r2, r3
1a001f18:	dc19      	bgt.n	1a001f4e <pll_get_frac+0x142>
1a001f1a:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001f1c:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001f1e:	429a      	cmp	r2, r3
1a001f20:	dc0a      	bgt.n	1a001f38 <pll_get_frac+0x12c>
1a001f22:	683b      	ldr	r3, [r7, #0]
1a001f24:	461d      	mov	r5, r3
1a001f26:	f107 040c 	add.w	r4, r7, #12
1a001f2a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001f2c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001f2e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001f32:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001f36:	e023      	b.n	1a001f80 <pll_get_frac+0x174>
1a001f38:	683b      	ldr	r3, [r7, #0]
1a001f3a:	461d      	mov	r5, r3
1a001f3c:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001f40:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001f42:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001f44:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001f48:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001f4c:	e018      	b.n	1a001f80 <pll_get_frac+0x174>
1a001f4e:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001f50:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001f52:	429a      	cmp	r2, r3
1a001f54:	dc0a      	bgt.n	1a001f6c <pll_get_frac+0x160>
1a001f56:	683b      	ldr	r3, [r7, #0]
1a001f58:	461d      	mov	r5, r3
1a001f5a:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001f5e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001f60:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001f62:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001f66:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001f6a:	e009      	b.n	1a001f80 <pll_get_frac+0x174>
1a001f6c:	683b      	ldr	r3, [r7, #0]
1a001f6e:	461d      	mov	r5, r3
1a001f70:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001f74:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001f76:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001f78:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001f7c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001f80:	3778      	adds	r7, #120	; 0x78
1a001f82:	46bd      	mov	sp, r7
1a001f84:	bdb0      	pop	{r4, r5, r7, pc}
1a001f86:	bf00      	nop
1a001f88:	068e7780 	.word	0x068e7780

1a001f8c <Chip_Clock_GetDivRate>:
1a001f8c:	b580      	push	{r7, lr}
1a001f8e:	b084      	sub	sp, #16
1a001f90:	af00      	add	r7, sp, #0
1a001f92:	4603      	mov	r3, r0
1a001f94:	460a      	mov	r2, r1
1a001f96:	71fb      	strb	r3, [r7, #7]
1a001f98:	4613      	mov	r3, r2
1a001f9a:	71bb      	strb	r3, [r7, #6]
1a001f9c:	79bb      	ldrb	r3, [r7, #6]
1a001f9e:	4618      	mov	r0, r3
1a001fa0:	f000 f960 	bl	1a002264 <Chip_Clock_GetDividerSource>
1a001fa4:	4603      	mov	r3, r0
1a001fa6:	73fb      	strb	r3, [r7, #15]
1a001fa8:	79bb      	ldrb	r3, [r7, #6]
1a001faa:	4618      	mov	r0, r3
1a001fac:	f000 f97a 	bl	1a0022a4 <Chip_Clock_GetDividerDivisor>
1a001fb0:	60b8      	str	r0, [r7, #8]
1a001fb2:	7bfb      	ldrb	r3, [r7, #15]
1a001fb4:	4618      	mov	r0, r3
1a001fb6:	f000 f991 	bl	1a0022dc <Chip_Clock_GetClockInputHz>
1a001fba:	4602      	mov	r2, r0
1a001fbc:	68bb      	ldr	r3, [r7, #8]
1a001fbe:	3301      	adds	r3, #1
1a001fc0:	fbb2 f3f3 	udiv	r3, r2, r3
1a001fc4:	4618      	mov	r0, r3
1a001fc6:	3710      	adds	r7, #16
1a001fc8:	46bd      	mov	sp, r7
1a001fca:	bd80      	pop	{r7, pc}

1a001fcc <Chip_Clock_FindBaseClock>:
1a001fcc:	b480      	push	{r7}
1a001fce:	b085      	sub	sp, #20
1a001fd0:	af00      	add	r7, sp, #0
1a001fd2:	4603      	mov	r3, r0
1a001fd4:	80fb      	strh	r3, [r7, #6]
1a001fd6:	231c      	movs	r3, #28
1a001fd8:	73fb      	strb	r3, [r7, #15]
1a001fda:	2300      	movs	r3, #0
1a001fdc:	60bb      	str	r3, [r7, #8]
1a001fde:	e024      	b.n	1a00202a <Chip_Clock_FindBaseClock+0x5e>
1a001fe0:	491d      	ldr	r1, [pc, #116]	; (1a002058 <Chip_Clock_FindBaseClock+0x8c>)
1a001fe2:	68ba      	ldr	r2, [r7, #8]
1a001fe4:	4613      	mov	r3, r2
1a001fe6:	005b      	lsls	r3, r3, #1
1a001fe8:	4413      	add	r3, r2
1a001fea:	005b      	lsls	r3, r3, #1
1a001fec:	440b      	add	r3, r1
1a001fee:	881b      	ldrh	r3, [r3, #0]
1a001ff0:	88fa      	ldrh	r2, [r7, #6]
1a001ff2:	429a      	cmp	r2, r3
1a001ff4:	d316      	bcc.n	1a002024 <Chip_Clock_FindBaseClock+0x58>
1a001ff6:	4918      	ldr	r1, [pc, #96]	; (1a002058 <Chip_Clock_FindBaseClock+0x8c>)
1a001ff8:	68ba      	ldr	r2, [r7, #8]
1a001ffa:	4613      	mov	r3, r2
1a001ffc:	005b      	lsls	r3, r3, #1
1a001ffe:	4413      	add	r3, r2
1a002000:	005b      	lsls	r3, r3, #1
1a002002:	440b      	add	r3, r1
1a002004:	3302      	adds	r3, #2
1a002006:	881b      	ldrh	r3, [r3, #0]
1a002008:	88fa      	ldrh	r2, [r7, #6]
1a00200a:	429a      	cmp	r2, r3
1a00200c:	d80a      	bhi.n	1a002024 <Chip_Clock_FindBaseClock+0x58>
1a00200e:	4912      	ldr	r1, [pc, #72]	; (1a002058 <Chip_Clock_FindBaseClock+0x8c>)
1a002010:	68ba      	ldr	r2, [r7, #8]
1a002012:	4613      	mov	r3, r2
1a002014:	005b      	lsls	r3, r3, #1
1a002016:	4413      	add	r3, r2
1a002018:	005b      	lsls	r3, r3, #1
1a00201a:	440b      	add	r3, r1
1a00201c:	3304      	adds	r3, #4
1a00201e:	781b      	ldrb	r3, [r3, #0]
1a002020:	73fb      	strb	r3, [r7, #15]
1a002022:	e002      	b.n	1a00202a <Chip_Clock_FindBaseClock+0x5e>
1a002024:	68bb      	ldr	r3, [r7, #8]
1a002026:	3301      	adds	r3, #1
1a002028:	60bb      	str	r3, [r7, #8]
1a00202a:	7bfb      	ldrb	r3, [r7, #15]
1a00202c:	2b1c      	cmp	r3, #28
1a00202e:	d10b      	bne.n	1a002048 <Chip_Clock_FindBaseClock+0x7c>
1a002030:	4909      	ldr	r1, [pc, #36]	; (1a002058 <Chip_Clock_FindBaseClock+0x8c>)
1a002032:	68ba      	ldr	r2, [r7, #8]
1a002034:	4613      	mov	r3, r2
1a002036:	005b      	lsls	r3, r3, #1
1a002038:	4413      	add	r3, r2
1a00203a:	005b      	lsls	r3, r3, #1
1a00203c:	440b      	add	r3, r1
1a00203e:	3304      	adds	r3, #4
1a002040:	781b      	ldrb	r3, [r3, #0]
1a002042:	7bfa      	ldrb	r2, [r7, #15]
1a002044:	429a      	cmp	r2, r3
1a002046:	d1cb      	bne.n	1a001fe0 <Chip_Clock_FindBaseClock+0x14>
1a002048:	7bfb      	ldrb	r3, [r7, #15]
1a00204a:	4618      	mov	r0, r3
1a00204c:	3714      	adds	r7, #20
1a00204e:	46bd      	mov	sp, r7
1a002050:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002054:	4770      	bx	lr
1a002056:	bf00      	nop
1a002058:	1a00295c 	.word	0x1a00295c

1a00205c <Chip_Clock_EnableCrystal>:
1a00205c:	b480      	push	{r7}
1a00205e:	b083      	sub	sp, #12
1a002060:	af00      	add	r7, sp, #0
1a002062:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a002066:	603b      	str	r3, [r7, #0]
1a002068:	4b15      	ldr	r3, [pc, #84]	; (1a0020c0 <Chip_Clock_EnableCrystal+0x64>)
1a00206a:	699b      	ldr	r3, [r3, #24]
1a00206c:	607b      	str	r3, [r7, #4]
1a00206e:	687b      	ldr	r3, [r7, #4]
1a002070:	f023 0302 	bic.w	r3, r3, #2
1a002074:	607b      	str	r3, [r7, #4]
1a002076:	4b12      	ldr	r3, [pc, #72]	; (1a0020c0 <Chip_Clock_EnableCrystal+0x64>)
1a002078:	699b      	ldr	r3, [r3, #24]
1a00207a:	687a      	ldr	r2, [r7, #4]
1a00207c:	429a      	cmp	r2, r3
1a00207e:	d002      	beq.n	1a002086 <Chip_Clock_EnableCrystal+0x2a>
1a002080:	4a0f      	ldr	r2, [pc, #60]	; (1a0020c0 <Chip_Clock_EnableCrystal+0x64>)
1a002082:	687b      	ldr	r3, [r7, #4]
1a002084:	6193      	str	r3, [r2, #24]
1a002086:	687b      	ldr	r3, [r7, #4]
1a002088:	f023 0301 	bic.w	r3, r3, #1
1a00208c:	607b      	str	r3, [r7, #4]
1a00208e:	4b0d      	ldr	r3, [pc, #52]	; (1a0020c4 <Chip_Clock_EnableCrystal+0x68>)
1a002090:	681b      	ldr	r3, [r3, #0]
1a002092:	4a0d      	ldr	r2, [pc, #52]	; (1a0020c8 <Chip_Clock_EnableCrystal+0x6c>)
1a002094:	4293      	cmp	r3, r2
1a002096:	d903      	bls.n	1a0020a0 <Chip_Clock_EnableCrystal+0x44>
1a002098:	687b      	ldr	r3, [r7, #4]
1a00209a:	f043 0304 	orr.w	r3, r3, #4
1a00209e:	607b      	str	r3, [r7, #4]
1a0020a0:	4a07      	ldr	r2, [pc, #28]	; (1a0020c0 <Chip_Clock_EnableCrystal+0x64>)
1a0020a2:	687b      	ldr	r3, [r7, #4]
1a0020a4:	6193      	str	r3, [r2, #24]
1a0020a6:	bf00      	nop
1a0020a8:	683b      	ldr	r3, [r7, #0]
1a0020aa:	1e5a      	subs	r2, r3, #1
1a0020ac:	603a      	str	r2, [r7, #0]
1a0020ae:	2b00      	cmp	r3, #0
1a0020b0:	d1fa      	bne.n	1a0020a8 <Chip_Clock_EnableCrystal+0x4c>
1a0020b2:	bf00      	nop
1a0020b4:	370c      	adds	r7, #12
1a0020b6:	46bd      	mov	sp, r7
1a0020b8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0020bc:	4770      	bx	lr
1a0020be:	bf00      	nop
1a0020c0:	40050000 	.word	0x40050000
1a0020c4:	1a00289c 	.word	0x1a00289c
1a0020c8:	01312cff 	.word	0x01312cff

1a0020cc <Chip_Clock_CalcMainPLLValue>:
1a0020cc:	b580      	push	{r7, lr}
1a0020ce:	b082      	sub	sp, #8
1a0020d0:	af00      	add	r7, sp, #0
1a0020d2:	6078      	str	r0, [r7, #4]
1a0020d4:	6039      	str	r1, [r7, #0]
1a0020d6:	683b      	ldr	r3, [r7, #0]
1a0020d8:	791b      	ldrb	r3, [r3, #4]
1a0020da:	4618      	mov	r0, r3
1a0020dc:	f000 f8fe 	bl	1a0022dc <Chip_Clock_GetClockInputHz>
1a0020e0:	4602      	mov	r2, r0
1a0020e2:	683b      	ldr	r3, [r7, #0]
1a0020e4:	615a      	str	r2, [r3, #20]
1a0020e6:	687b      	ldr	r3, [r7, #4]
1a0020e8:	4a2b      	ldr	r2, [pc, #172]	; (1a002198 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a0020ea:	4293      	cmp	r3, r2
1a0020ec:	d807      	bhi.n	1a0020fe <Chip_Clock_CalcMainPLLValue+0x32>
1a0020ee:	687b      	ldr	r3, [r7, #4]
1a0020f0:	4a2a      	ldr	r2, [pc, #168]	; (1a00219c <Chip_Clock_CalcMainPLLValue+0xd0>)
1a0020f2:	4293      	cmp	r3, r2
1a0020f4:	d903      	bls.n	1a0020fe <Chip_Clock_CalcMainPLLValue+0x32>
1a0020f6:	683b      	ldr	r3, [r7, #0]
1a0020f8:	695b      	ldr	r3, [r3, #20]
1a0020fa:	2b00      	cmp	r3, #0
1a0020fc:	d102      	bne.n	1a002104 <Chip_Clock_CalcMainPLLValue+0x38>
1a0020fe:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002102:	e044      	b.n	1a00218e <Chip_Clock_CalcMainPLLValue+0xc2>
1a002104:	683b      	ldr	r3, [r7, #0]
1a002106:	2280      	movs	r2, #128	; 0x80
1a002108:	601a      	str	r2, [r3, #0]
1a00210a:	683b      	ldr	r3, [r7, #0]
1a00210c:	2200      	movs	r2, #0
1a00210e:	609a      	str	r2, [r3, #8]
1a002110:	683b      	ldr	r3, [r7, #0]
1a002112:	2200      	movs	r2, #0
1a002114:	60da      	str	r2, [r3, #12]
1a002116:	683b      	ldr	r3, [r7, #0]
1a002118:	695b      	ldr	r3, [r3, #20]
1a00211a:	687a      	ldr	r2, [r7, #4]
1a00211c:	fbb2 f3f3 	udiv	r3, r2, r3
1a002120:	461a      	mov	r2, r3
1a002122:	683b      	ldr	r3, [r7, #0]
1a002124:	611a      	str	r2, [r3, #16]
1a002126:	687b      	ldr	r3, [r7, #4]
1a002128:	4a1d      	ldr	r2, [pc, #116]	; (1a0021a0 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a00212a:	4293      	cmp	r3, r2
1a00212c:	d909      	bls.n	1a002142 <Chip_Clock_CalcMainPLLValue+0x76>
1a00212e:	683b      	ldr	r3, [r7, #0]
1a002130:	691b      	ldr	r3, [r3, #16]
1a002132:	461a      	mov	r2, r3
1a002134:	683b      	ldr	r3, [r7, #0]
1a002136:	695b      	ldr	r3, [r3, #20]
1a002138:	fb03 f302 	mul.w	r3, r3, r2
1a00213c:	687a      	ldr	r2, [r7, #4]
1a00213e:	429a      	cmp	r2, r3
1a002140:	d00f      	beq.n	1a002162 <Chip_Clock_CalcMainPLLValue+0x96>
1a002142:	6839      	ldr	r1, [r7, #0]
1a002144:	6878      	ldr	r0, [r7, #4]
1a002146:	f7ff fe61 	bl	1a001e0c <pll_get_frac>
1a00214a:	683b      	ldr	r3, [r7, #0]
1a00214c:	689b      	ldr	r3, [r3, #8]
1a00214e:	2b00      	cmp	r3, #0
1a002150:	d102      	bne.n	1a002158 <Chip_Clock_CalcMainPLLValue+0x8c>
1a002152:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002156:	e01a      	b.n	1a00218e <Chip_Clock_CalcMainPLLValue+0xc2>
1a002158:	683b      	ldr	r3, [r7, #0]
1a00215a:	689b      	ldr	r3, [r3, #8]
1a00215c:	1e5a      	subs	r2, r3, #1
1a00215e:	683b      	ldr	r3, [r7, #0]
1a002160:	609a      	str	r2, [r3, #8]
1a002162:	683b      	ldr	r3, [r7, #0]
1a002164:	691b      	ldr	r3, [r3, #16]
1a002166:	2b00      	cmp	r3, #0
1a002168:	d102      	bne.n	1a002170 <Chip_Clock_CalcMainPLLValue+0xa4>
1a00216a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a00216e:	e00e      	b.n	1a00218e <Chip_Clock_CalcMainPLLValue+0xc2>
1a002170:	683b      	ldr	r3, [r7, #0]
1a002172:	68db      	ldr	r3, [r3, #12]
1a002174:	2b00      	cmp	r3, #0
1a002176:	d004      	beq.n	1a002182 <Chip_Clock_CalcMainPLLValue+0xb6>
1a002178:	683b      	ldr	r3, [r7, #0]
1a00217a:	68db      	ldr	r3, [r3, #12]
1a00217c:	1e5a      	subs	r2, r3, #1
1a00217e:	683b      	ldr	r3, [r7, #0]
1a002180:	60da      	str	r2, [r3, #12]
1a002182:	683b      	ldr	r3, [r7, #0]
1a002184:	691b      	ldr	r3, [r3, #16]
1a002186:	1e5a      	subs	r2, r3, #1
1a002188:	683b      	ldr	r3, [r7, #0]
1a00218a:	611a      	str	r2, [r3, #16]
1a00218c:	2300      	movs	r3, #0
1a00218e:	4618      	mov	r0, r3
1a002190:	3708      	adds	r7, #8
1a002192:	46bd      	mov	sp, r7
1a002194:	bd80      	pop	{r7, pc}
1a002196:	bf00      	nop
1a002198:	0c28cb00 	.word	0x0c28cb00
1a00219c:	0094c5ef 	.word	0x0094c5ef
1a0021a0:	094c5eff 	.word	0x094c5eff

1a0021a4 <Chip_Clock_GetMainPLLHz>:
1a0021a4:	b580      	push	{r7, lr}
1a0021a6:	b08c      	sub	sp, #48	; 0x30
1a0021a8:	af00      	add	r7, sp, #0
1a0021aa:	4b2c      	ldr	r3, [pc, #176]	; (1a00225c <Chip_Clock_GetMainPLLHz+0xb8>)
1a0021ac:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0021ae:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0021b0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0021b2:	0e1b      	lsrs	r3, r3, #24
1a0021b4:	b2db      	uxtb	r3, r3
1a0021b6:	f003 030f 	and.w	r3, r3, #15
1a0021ba:	b2db      	uxtb	r3, r3
1a0021bc:	4618      	mov	r0, r3
1a0021be:	f000 f88d 	bl	1a0022dc <Chip_Clock_GetClockInputHz>
1a0021c2:	62b8      	str	r0, [r7, #40]	; 0x28
1a0021c4:	4b26      	ldr	r3, [pc, #152]	; (1a002260 <Chip_Clock_GetMainPLLHz+0xbc>)
1a0021c6:	681b      	ldr	r3, [r3, #0]
1a0021c8:	607b      	str	r3, [r7, #4]
1a0021ca:	4b24      	ldr	r3, [pc, #144]	; (1a00225c <Chip_Clock_GetMainPLLHz+0xb8>)
1a0021cc:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a0021ce:	f003 0301 	and.w	r3, r3, #1
1a0021d2:	2b00      	cmp	r3, #0
1a0021d4:	d101      	bne.n	1a0021da <Chip_Clock_GetMainPLLHz+0x36>
1a0021d6:	2300      	movs	r3, #0
1a0021d8:	e03b      	b.n	1a002252 <Chip_Clock_GetMainPLLHz+0xae>
1a0021da:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0021dc:	0c1b      	lsrs	r3, r3, #16
1a0021de:	b2db      	uxtb	r3, r3
1a0021e0:	627b      	str	r3, [r7, #36]	; 0x24
1a0021e2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0021e4:	0b1b      	lsrs	r3, r3, #12
1a0021e6:	f003 0303 	and.w	r3, r3, #3
1a0021ea:	623b      	str	r3, [r7, #32]
1a0021ec:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0021ee:	0a1b      	lsrs	r3, r3, #8
1a0021f0:	f003 0303 	and.w	r3, r3, #3
1a0021f4:	61fb      	str	r3, [r7, #28]
1a0021f6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0021f8:	09db      	lsrs	r3, r3, #7
1a0021fa:	f003 0301 	and.w	r3, r3, #1
1a0021fe:	61bb      	str	r3, [r7, #24]
1a002200:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002202:	099b      	lsrs	r3, r3, #6
1a002204:	f003 0301 	and.w	r3, r3, #1
1a002208:	617b      	str	r3, [r7, #20]
1a00220a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00220c:	3301      	adds	r3, #1
1a00220e:	613b      	str	r3, [r7, #16]
1a002210:	6a3b      	ldr	r3, [r7, #32]
1a002212:	3301      	adds	r3, #1
1a002214:	60fb      	str	r3, [r7, #12]
1a002216:	1d3a      	adds	r2, r7, #4
1a002218:	69fb      	ldr	r3, [r7, #28]
1a00221a:	4413      	add	r3, r2
1a00221c:	781b      	ldrb	r3, [r3, #0]
1a00221e:	60bb      	str	r3, [r7, #8]
1a002220:	69bb      	ldr	r3, [r7, #24]
1a002222:	2b00      	cmp	r3, #0
1a002224:	d102      	bne.n	1a00222c <Chip_Clock_GetMainPLLHz+0x88>
1a002226:	697b      	ldr	r3, [r7, #20]
1a002228:	2b00      	cmp	r3, #0
1a00222a:	d007      	beq.n	1a00223c <Chip_Clock_GetMainPLLHz+0x98>
1a00222c:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a00222e:	68fb      	ldr	r3, [r7, #12]
1a002230:	fbb2 f3f3 	udiv	r3, r2, r3
1a002234:	693a      	ldr	r2, [r7, #16]
1a002236:	fb02 f303 	mul.w	r3, r2, r3
1a00223a:	e00a      	b.n	1a002252 <Chip_Clock_GetMainPLLHz+0xae>
1a00223c:	68bb      	ldr	r3, [r7, #8]
1a00223e:	005b      	lsls	r3, r3, #1
1a002240:	693a      	ldr	r2, [r7, #16]
1a002242:	fbb2 f3f3 	udiv	r3, r2, r3
1a002246:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a002248:	68fa      	ldr	r2, [r7, #12]
1a00224a:	fbb1 f2f2 	udiv	r2, r1, r2
1a00224e:	fb02 f303 	mul.w	r3, r2, r3
1a002252:	4618      	mov	r0, r3
1a002254:	3730      	adds	r7, #48	; 0x30
1a002256:	46bd      	mov	sp, r7
1a002258:	bd80      	pop	{r7, pc}
1a00225a:	bf00      	nop
1a00225c:	40050000 	.word	0x40050000
1a002260:	1a0029c8 	.word	0x1a0029c8

1a002264 <Chip_Clock_GetDividerSource>:
1a002264:	b480      	push	{r7}
1a002266:	b085      	sub	sp, #20
1a002268:	af00      	add	r7, sp, #0
1a00226a:	4603      	mov	r3, r0
1a00226c:	71fb      	strb	r3, [r7, #7]
1a00226e:	4a0c      	ldr	r2, [pc, #48]	; (1a0022a0 <Chip_Clock_GetDividerSource+0x3c>)
1a002270:	79fb      	ldrb	r3, [r7, #7]
1a002272:	3312      	adds	r3, #18
1a002274:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a002278:	60fb      	str	r3, [r7, #12]
1a00227a:	68fb      	ldr	r3, [r7, #12]
1a00227c:	f003 0301 	and.w	r3, r3, #1
1a002280:	2b00      	cmp	r3, #0
1a002282:	d001      	beq.n	1a002288 <Chip_Clock_GetDividerSource+0x24>
1a002284:	2311      	movs	r3, #17
1a002286:	e005      	b.n	1a002294 <Chip_Clock_GetDividerSource+0x30>
1a002288:	68fb      	ldr	r3, [r7, #12]
1a00228a:	0e1b      	lsrs	r3, r3, #24
1a00228c:	b2db      	uxtb	r3, r3
1a00228e:	f003 031f 	and.w	r3, r3, #31
1a002292:	b2db      	uxtb	r3, r3
1a002294:	4618      	mov	r0, r3
1a002296:	3714      	adds	r7, #20
1a002298:	46bd      	mov	sp, r7
1a00229a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00229e:	4770      	bx	lr
1a0022a0:	40050000 	.word	0x40050000

1a0022a4 <Chip_Clock_GetDividerDivisor>:
1a0022a4:	b480      	push	{r7}
1a0022a6:	b083      	sub	sp, #12
1a0022a8:	af00      	add	r7, sp, #0
1a0022aa:	4603      	mov	r3, r0
1a0022ac:	71fb      	strb	r3, [r7, #7]
1a0022ae:	4a09      	ldr	r2, [pc, #36]	; (1a0022d4 <Chip_Clock_GetDividerDivisor+0x30>)
1a0022b0:	79fb      	ldrb	r3, [r7, #7]
1a0022b2:	3312      	adds	r3, #18
1a0022b4:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a0022b8:	089b      	lsrs	r3, r3, #2
1a0022ba:	b2da      	uxtb	r2, r3
1a0022bc:	79fb      	ldrb	r3, [r7, #7]
1a0022be:	4906      	ldr	r1, [pc, #24]	; (1a0022d8 <Chip_Clock_GetDividerDivisor+0x34>)
1a0022c0:	5ccb      	ldrb	r3, [r1, r3]
1a0022c2:	4013      	ands	r3, r2
1a0022c4:	b2db      	uxtb	r3, r3
1a0022c6:	4618      	mov	r0, r3
1a0022c8:	370c      	adds	r7, #12
1a0022ca:	46bd      	mov	sp, r7
1a0022cc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0022d0:	4770      	bx	lr
1a0022d2:	bf00      	nop
1a0022d4:	40050000 	.word	0x40050000
1a0022d8:	1a0029cc 	.word	0x1a0029cc

1a0022dc <Chip_Clock_GetClockInputHz>:
1a0022dc:	b580      	push	{r7, lr}
1a0022de:	b084      	sub	sp, #16
1a0022e0:	af00      	add	r7, sp, #0
1a0022e2:	4603      	mov	r3, r0
1a0022e4:	71fb      	strb	r3, [r7, #7]
1a0022e6:	2300      	movs	r3, #0
1a0022e8:	60fb      	str	r3, [r7, #12]
1a0022ea:	79fb      	ldrb	r3, [r7, #7]
1a0022ec:	2b11      	cmp	r3, #17
1a0022ee:	d87f      	bhi.n	1a0023f0 <Chip_Clock_GetClockInputHz+0x114>
1a0022f0:	a201      	add	r2, pc, #4	; (adr r2, 1a0022f8 <Chip_Clock_GetClockInputHz+0x1c>)
1a0022f2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a0022f6:	bf00      	nop
1a0022f8:	1a002341 	.word	0x1a002341
1a0022fc:	1a002349 	.word	0x1a002349
1a002300:	1a00234f 	.word	0x1a00234f
1a002304:	1a002363 	.word	0x1a002363
1a002308:	1a00237d 	.word	0x1a00237d
1a00230c:	1a0023f1 	.word	0x1a0023f1
1a002310:	1a002385 	.word	0x1a002385
1a002314:	1a00238d 	.word	0x1a00238d
1a002318:	1a002395 	.word	0x1a002395
1a00231c:	1a00239d 	.word	0x1a00239d
1a002320:	1a0023f1 	.word	0x1a0023f1
1a002324:	1a0023f1 	.word	0x1a0023f1
1a002328:	1a0023a5 	.word	0x1a0023a5
1a00232c:	1a0023b3 	.word	0x1a0023b3
1a002330:	1a0023c1 	.word	0x1a0023c1
1a002334:	1a0023cf 	.word	0x1a0023cf
1a002338:	1a0023dd 	.word	0x1a0023dd
1a00233c:	1a0023eb 	.word	0x1a0023eb
1a002340:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a002344:	60fb      	str	r3, [r7, #12]
1a002346:	e056      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a002348:	4b2d      	ldr	r3, [pc, #180]	; (1a002400 <Chip_Clock_GetClockInputHz+0x124>)
1a00234a:	60fb      	str	r3, [r7, #12]
1a00234c:	e053      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a00234e:	4b2d      	ldr	r3, [pc, #180]	; (1a002404 <Chip_Clock_GetClockInputHz+0x128>)
1a002350:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a002354:	f003 0307 	and.w	r3, r3, #7
1a002358:	2b04      	cmp	r3, #4
1a00235a:	d04b      	beq.n	1a0023f4 <Chip_Clock_GetClockInputHz+0x118>
1a00235c:	4b2a      	ldr	r3, [pc, #168]	; (1a002408 <Chip_Clock_GetClockInputHz+0x12c>)
1a00235e:	60fb      	str	r3, [r7, #12]
1a002360:	e048      	b.n	1a0023f4 <Chip_Clock_GetClockInputHz+0x118>
1a002362:	4b28      	ldr	r3, [pc, #160]	; (1a002404 <Chip_Clock_GetClockInputHz+0x128>)
1a002364:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a002368:	f003 0307 	and.w	r3, r3, #7
1a00236c:	2b04      	cmp	r3, #4
1a00236e:	d002      	beq.n	1a002376 <Chip_Clock_GetClockInputHz+0x9a>
1a002370:	4b25      	ldr	r3, [pc, #148]	; (1a002408 <Chip_Clock_GetClockInputHz+0x12c>)
1a002372:	60fb      	str	r3, [r7, #12]
1a002374:	e03f      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a002376:	4b25      	ldr	r3, [pc, #148]	; (1a00240c <Chip_Clock_GetClockInputHz+0x130>)
1a002378:	60fb      	str	r3, [r7, #12]
1a00237a:	e03c      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a00237c:	4b24      	ldr	r3, [pc, #144]	; (1a002410 <Chip_Clock_GetClockInputHz+0x134>)
1a00237e:	681b      	ldr	r3, [r3, #0]
1a002380:	60fb      	str	r3, [r7, #12]
1a002382:	e038      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a002384:	4b23      	ldr	r3, [pc, #140]	; (1a002414 <Chip_Clock_GetClockInputHz+0x138>)
1a002386:	681b      	ldr	r3, [r3, #0]
1a002388:	60fb      	str	r3, [r7, #12]
1a00238a:	e034      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a00238c:	4b22      	ldr	r3, [pc, #136]	; (1a002418 <Chip_Clock_GetClockInputHz+0x13c>)
1a00238e:	681b      	ldr	r3, [r3, #0]
1a002390:	60fb      	str	r3, [r7, #12]
1a002392:	e030      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a002394:	4b20      	ldr	r3, [pc, #128]	; (1a002418 <Chip_Clock_GetClockInputHz+0x13c>)
1a002396:	685b      	ldr	r3, [r3, #4]
1a002398:	60fb      	str	r3, [r7, #12]
1a00239a:	e02c      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a00239c:	f7ff ff02 	bl	1a0021a4 <Chip_Clock_GetMainPLLHz>
1a0023a0:	60f8      	str	r0, [r7, #12]
1a0023a2:	e028      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a0023a4:	79fb      	ldrb	r3, [r7, #7]
1a0023a6:	2100      	movs	r1, #0
1a0023a8:	4618      	mov	r0, r3
1a0023aa:	f7ff fdef 	bl	1a001f8c <Chip_Clock_GetDivRate>
1a0023ae:	60f8      	str	r0, [r7, #12]
1a0023b0:	e021      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a0023b2:	79fb      	ldrb	r3, [r7, #7]
1a0023b4:	2101      	movs	r1, #1
1a0023b6:	4618      	mov	r0, r3
1a0023b8:	f7ff fde8 	bl	1a001f8c <Chip_Clock_GetDivRate>
1a0023bc:	60f8      	str	r0, [r7, #12]
1a0023be:	e01a      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a0023c0:	79fb      	ldrb	r3, [r7, #7]
1a0023c2:	2102      	movs	r1, #2
1a0023c4:	4618      	mov	r0, r3
1a0023c6:	f7ff fde1 	bl	1a001f8c <Chip_Clock_GetDivRate>
1a0023ca:	60f8      	str	r0, [r7, #12]
1a0023cc:	e013      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a0023ce:	79fb      	ldrb	r3, [r7, #7]
1a0023d0:	2103      	movs	r1, #3
1a0023d2:	4618      	mov	r0, r3
1a0023d4:	f7ff fdda 	bl	1a001f8c <Chip_Clock_GetDivRate>
1a0023d8:	60f8      	str	r0, [r7, #12]
1a0023da:	e00c      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a0023dc:	79fb      	ldrb	r3, [r7, #7]
1a0023de:	2104      	movs	r1, #4
1a0023e0:	4618      	mov	r0, r3
1a0023e2:	f7ff fdd3 	bl	1a001f8c <Chip_Clock_GetDivRate>
1a0023e6:	60f8      	str	r0, [r7, #12]
1a0023e8:	e005      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a0023ea:	2300      	movs	r3, #0
1a0023ec:	60fb      	str	r3, [r7, #12]
1a0023ee:	e002      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a0023f0:	bf00      	nop
1a0023f2:	e000      	b.n	1a0023f6 <Chip_Clock_GetClockInputHz+0x11a>
1a0023f4:	bf00      	nop
1a0023f6:	68fb      	ldr	r3, [r7, #12]
1a0023f8:	4618      	mov	r0, r3
1a0023fa:	3710      	adds	r7, #16
1a0023fc:	46bd      	mov	sp, r7
1a0023fe:	bd80      	pop	{r7, pc}
1a002400:	00b71b00 	.word	0x00b71b00
1a002404:	40043000 	.word	0x40043000
1a002408:	017d7840 	.word	0x017d7840
1a00240c:	02faf080 	.word	0x02faf080
1a002410:	1a002898 	.word	0x1a002898
1a002414:	1a00289c 	.word	0x1a00289c
1a002418:	10000444 	.word	0x10000444

1a00241c <Chip_Clock_GetBaseClocktHz>:
1a00241c:	b580      	push	{r7, lr}
1a00241e:	b082      	sub	sp, #8
1a002420:	af00      	add	r7, sp, #0
1a002422:	4603      	mov	r3, r0
1a002424:	71fb      	strb	r3, [r7, #7]
1a002426:	79fb      	ldrb	r3, [r7, #7]
1a002428:	4618      	mov	r0, r3
1a00242a:	f000 f857 	bl	1a0024dc <Chip_Clock_GetBaseClock>
1a00242e:	4603      	mov	r3, r0
1a002430:	4618      	mov	r0, r3
1a002432:	f7ff ff53 	bl	1a0022dc <Chip_Clock_GetClockInputHz>
1a002436:	4603      	mov	r3, r0
1a002438:	4618      	mov	r0, r3
1a00243a:	3708      	adds	r7, #8
1a00243c:	46bd      	mov	sp, r7
1a00243e:	bd80      	pop	{r7, pc}

1a002440 <Chip_Clock_SetBaseClock>:
1a002440:	b490      	push	{r4, r7}
1a002442:	b084      	sub	sp, #16
1a002444:	af00      	add	r7, sp, #0
1a002446:	4604      	mov	r4, r0
1a002448:	4608      	mov	r0, r1
1a00244a:	4611      	mov	r1, r2
1a00244c:	461a      	mov	r2, r3
1a00244e:	4623      	mov	r3, r4
1a002450:	71fb      	strb	r3, [r7, #7]
1a002452:	4603      	mov	r3, r0
1a002454:	71bb      	strb	r3, [r7, #6]
1a002456:	460b      	mov	r3, r1
1a002458:	717b      	strb	r3, [r7, #5]
1a00245a:	4613      	mov	r3, r2
1a00245c:	713b      	strb	r3, [r7, #4]
1a00245e:	4a1d      	ldr	r2, [pc, #116]	; (1a0024d4 <Chip_Clock_SetBaseClock+0x94>)
1a002460:	79fb      	ldrb	r3, [r7, #7]
1a002462:	3316      	adds	r3, #22
1a002464:	009b      	lsls	r3, r3, #2
1a002466:	4413      	add	r3, r2
1a002468:	685b      	ldr	r3, [r3, #4]
1a00246a:	60fb      	str	r3, [r7, #12]
1a00246c:	79fb      	ldrb	r3, [r7, #7]
1a00246e:	2b1b      	cmp	r3, #27
1a002470:	d822      	bhi.n	1a0024b8 <Chip_Clock_SetBaseClock+0x78>
1a002472:	79bb      	ldrb	r3, [r7, #6]
1a002474:	2b11      	cmp	r3, #17
1a002476:	d028      	beq.n	1a0024ca <Chip_Clock_SetBaseClock+0x8a>
1a002478:	68fa      	ldr	r2, [r7, #12]
1a00247a:	4b17      	ldr	r3, [pc, #92]	; (1a0024d8 <Chip_Clock_SetBaseClock+0x98>)
1a00247c:	4013      	ands	r3, r2
1a00247e:	60fb      	str	r3, [r7, #12]
1a002480:	797b      	ldrb	r3, [r7, #5]
1a002482:	2b00      	cmp	r3, #0
1a002484:	d003      	beq.n	1a00248e <Chip_Clock_SetBaseClock+0x4e>
1a002486:	68fb      	ldr	r3, [r7, #12]
1a002488:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a00248c:	60fb      	str	r3, [r7, #12]
1a00248e:	793b      	ldrb	r3, [r7, #4]
1a002490:	2b00      	cmp	r3, #0
1a002492:	d003      	beq.n	1a00249c <Chip_Clock_SetBaseClock+0x5c>
1a002494:	68fb      	ldr	r3, [r7, #12]
1a002496:	f043 0301 	orr.w	r3, r3, #1
1a00249a:	60fb      	str	r3, [r7, #12]
1a00249c:	79bb      	ldrb	r3, [r7, #6]
1a00249e:	061b      	lsls	r3, r3, #24
1a0024a0:	461a      	mov	r2, r3
1a0024a2:	68fb      	ldr	r3, [r7, #12]
1a0024a4:	4313      	orrs	r3, r2
1a0024a6:	60fb      	str	r3, [r7, #12]
1a0024a8:	4a0a      	ldr	r2, [pc, #40]	; (1a0024d4 <Chip_Clock_SetBaseClock+0x94>)
1a0024aa:	79fb      	ldrb	r3, [r7, #7]
1a0024ac:	3316      	adds	r3, #22
1a0024ae:	009b      	lsls	r3, r3, #2
1a0024b0:	4413      	add	r3, r2
1a0024b2:	68fa      	ldr	r2, [r7, #12]
1a0024b4:	605a      	str	r2, [r3, #4]
1a0024b6:	e008      	b.n	1a0024ca <Chip_Clock_SetBaseClock+0x8a>
1a0024b8:	4906      	ldr	r1, [pc, #24]	; (1a0024d4 <Chip_Clock_SetBaseClock+0x94>)
1a0024ba:	79fb      	ldrb	r3, [r7, #7]
1a0024bc:	68fa      	ldr	r2, [r7, #12]
1a0024be:	f042 0201 	orr.w	r2, r2, #1
1a0024c2:	3316      	adds	r3, #22
1a0024c4:	009b      	lsls	r3, r3, #2
1a0024c6:	440b      	add	r3, r1
1a0024c8:	605a      	str	r2, [r3, #4]
1a0024ca:	bf00      	nop
1a0024cc:	3710      	adds	r7, #16
1a0024ce:	46bd      	mov	sp, r7
1a0024d0:	bc90      	pop	{r4, r7}
1a0024d2:	4770      	bx	lr
1a0024d4:	40050000 	.word	0x40050000
1a0024d8:	e0fff7fe 	.word	0xe0fff7fe

1a0024dc <Chip_Clock_GetBaseClock>:
1a0024dc:	b480      	push	{r7}
1a0024de:	b085      	sub	sp, #20
1a0024e0:	af00      	add	r7, sp, #0
1a0024e2:	4603      	mov	r3, r0
1a0024e4:	71fb      	strb	r3, [r7, #7]
1a0024e6:	79fb      	ldrb	r3, [r7, #7]
1a0024e8:	2b1b      	cmp	r3, #27
1a0024ea:	d901      	bls.n	1a0024f0 <Chip_Clock_GetBaseClock+0x14>
1a0024ec:	2311      	movs	r3, #17
1a0024ee:	e013      	b.n	1a002518 <Chip_Clock_GetBaseClock+0x3c>
1a0024f0:	4a0c      	ldr	r2, [pc, #48]	; (1a002524 <Chip_Clock_GetBaseClock+0x48>)
1a0024f2:	79fb      	ldrb	r3, [r7, #7]
1a0024f4:	3316      	adds	r3, #22
1a0024f6:	009b      	lsls	r3, r3, #2
1a0024f8:	4413      	add	r3, r2
1a0024fa:	685b      	ldr	r3, [r3, #4]
1a0024fc:	60fb      	str	r3, [r7, #12]
1a0024fe:	68fb      	ldr	r3, [r7, #12]
1a002500:	f003 0301 	and.w	r3, r3, #1
1a002504:	2b00      	cmp	r3, #0
1a002506:	d001      	beq.n	1a00250c <Chip_Clock_GetBaseClock+0x30>
1a002508:	2311      	movs	r3, #17
1a00250a:	e005      	b.n	1a002518 <Chip_Clock_GetBaseClock+0x3c>
1a00250c:	68fb      	ldr	r3, [r7, #12]
1a00250e:	0e1b      	lsrs	r3, r3, #24
1a002510:	b2db      	uxtb	r3, r3
1a002512:	f003 031f 	and.w	r3, r3, #31
1a002516:	b2db      	uxtb	r3, r3
1a002518:	4618      	mov	r0, r3
1a00251a:	3714      	adds	r7, #20
1a00251c:	46bd      	mov	sp, r7
1a00251e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002522:	4770      	bx	lr
1a002524:	40050000 	.word	0x40050000

1a002528 <Chip_Clock_EnableOpts>:
1a002528:	b480      	push	{r7}
1a00252a:	b085      	sub	sp, #20
1a00252c:	af00      	add	r7, sp, #0
1a00252e:	603b      	str	r3, [r7, #0]
1a002530:	4603      	mov	r3, r0
1a002532:	80fb      	strh	r3, [r7, #6]
1a002534:	460b      	mov	r3, r1
1a002536:	717b      	strb	r3, [r7, #5]
1a002538:	4613      	mov	r3, r2
1a00253a:	713b      	strb	r3, [r7, #4]
1a00253c:	2301      	movs	r3, #1
1a00253e:	60fb      	str	r3, [r7, #12]
1a002540:	797b      	ldrb	r3, [r7, #5]
1a002542:	2b00      	cmp	r3, #0
1a002544:	d003      	beq.n	1a00254e <Chip_Clock_EnableOpts+0x26>
1a002546:	68fb      	ldr	r3, [r7, #12]
1a002548:	f043 0302 	orr.w	r3, r3, #2
1a00254c:	60fb      	str	r3, [r7, #12]
1a00254e:	793b      	ldrb	r3, [r7, #4]
1a002550:	2b00      	cmp	r3, #0
1a002552:	d003      	beq.n	1a00255c <Chip_Clock_EnableOpts+0x34>
1a002554:	68fb      	ldr	r3, [r7, #12]
1a002556:	f043 0304 	orr.w	r3, r3, #4
1a00255a:	60fb      	str	r3, [r7, #12]
1a00255c:	683b      	ldr	r3, [r7, #0]
1a00255e:	2b02      	cmp	r3, #2
1a002560:	d103      	bne.n	1a00256a <Chip_Clock_EnableOpts+0x42>
1a002562:	68fb      	ldr	r3, [r7, #12]
1a002564:	f043 0320 	orr.w	r3, r3, #32
1a002568:	60fb      	str	r3, [r7, #12]
1a00256a:	88fb      	ldrh	r3, [r7, #6]
1a00256c:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002570:	d308      	bcc.n	1a002584 <Chip_Clock_EnableOpts+0x5c>
1a002572:	490a      	ldr	r1, [pc, #40]	; (1a00259c <Chip_Clock_EnableOpts+0x74>)
1a002574:	88fb      	ldrh	r3, [r7, #6]
1a002576:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a00257a:	3320      	adds	r3, #32
1a00257c:	68fa      	ldr	r2, [r7, #12]
1a00257e:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002582:	e005      	b.n	1a002590 <Chip_Clock_EnableOpts+0x68>
1a002584:	4906      	ldr	r1, [pc, #24]	; (1a0025a0 <Chip_Clock_EnableOpts+0x78>)
1a002586:	88fb      	ldrh	r3, [r7, #6]
1a002588:	3320      	adds	r3, #32
1a00258a:	68fa      	ldr	r2, [r7, #12]
1a00258c:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002590:	bf00      	nop
1a002592:	3714      	adds	r7, #20
1a002594:	46bd      	mov	sp, r7
1a002596:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00259a:	4770      	bx	lr
1a00259c:	40052000 	.word	0x40052000
1a0025a0:	40051000 	.word	0x40051000

1a0025a4 <Chip_Clock_Enable>:
1a0025a4:	b480      	push	{r7}
1a0025a6:	b083      	sub	sp, #12
1a0025a8:	af00      	add	r7, sp, #0
1a0025aa:	4603      	mov	r3, r0
1a0025ac:	80fb      	strh	r3, [r7, #6]
1a0025ae:	88fb      	ldrh	r3, [r7, #6]
1a0025b0:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a0025b4:	d310      	bcc.n	1a0025d8 <Chip_Clock_Enable+0x34>
1a0025b6:	4a11      	ldr	r2, [pc, #68]	; (1a0025fc <Chip_Clock_Enable+0x58>)
1a0025b8:	88fb      	ldrh	r3, [r7, #6]
1a0025ba:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0025be:	3320      	adds	r3, #32
1a0025c0:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a0025c4:	490d      	ldr	r1, [pc, #52]	; (1a0025fc <Chip_Clock_Enable+0x58>)
1a0025c6:	88fb      	ldrh	r3, [r7, #6]
1a0025c8:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0025cc:	f042 0201 	orr.w	r2, r2, #1
1a0025d0:	3320      	adds	r3, #32
1a0025d2:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0025d6:	e00b      	b.n	1a0025f0 <Chip_Clock_Enable+0x4c>
1a0025d8:	4a09      	ldr	r2, [pc, #36]	; (1a002600 <Chip_Clock_Enable+0x5c>)
1a0025da:	88fb      	ldrh	r3, [r7, #6]
1a0025dc:	3320      	adds	r3, #32
1a0025de:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a0025e2:	4907      	ldr	r1, [pc, #28]	; (1a002600 <Chip_Clock_Enable+0x5c>)
1a0025e4:	88fb      	ldrh	r3, [r7, #6]
1a0025e6:	f042 0201 	orr.w	r2, r2, #1
1a0025ea:	3320      	adds	r3, #32
1a0025ec:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0025f0:	bf00      	nop
1a0025f2:	370c      	adds	r7, #12
1a0025f4:	46bd      	mov	sp, r7
1a0025f6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0025fa:	4770      	bx	lr
1a0025fc:	40052000 	.word	0x40052000
1a002600:	40051000 	.word	0x40051000

1a002604 <Chip_Clock_GetRate>:
1a002604:	b580      	push	{r7, lr}
1a002606:	b086      	sub	sp, #24
1a002608:	af00      	add	r7, sp, #0
1a00260a:	4603      	mov	r3, r0
1a00260c:	80fb      	strh	r3, [r7, #6]
1a00260e:	88fb      	ldrh	r3, [r7, #6]
1a002610:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002614:	d308      	bcc.n	1a002628 <Chip_Clock_GetRate+0x24>
1a002616:	4a1b      	ldr	r2, [pc, #108]	; (1a002684 <Chip_Clock_GetRate+0x80>)
1a002618:	88fb      	ldrh	r3, [r7, #6]
1a00261a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a00261e:	3320      	adds	r3, #32
1a002620:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a002624:	617b      	str	r3, [r7, #20]
1a002626:	e005      	b.n	1a002634 <Chip_Clock_GetRate+0x30>
1a002628:	4a17      	ldr	r2, [pc, #92]	; (1a002688 <Chip_Clock_GetRate+0x84>)
1a00262a:	88fb      	ldrh	r3, [r7, #6]
1a00262c:	3320      	adds	r3, #32
1a00262e:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a002632:	617b      	str	r3, [r7, #20]
1a002634:	697b      	ldr	r3, [r7, #20]
1a002636:	f003 0301 	and.w	r3, r3, #1
1a00263a:	2b00      	cmp	r3, #0
1a00263c:	d01b      	beq.n	1a002676 <Chip_Clock_GetRate+0x72>
1a00263e:	88fb      	ldrh	r3, [r7, #6]
1a002640:	4618      	mov	r0, r3
1a002642:	f7ff fcc3 	bl	1a001fcc <Chip_Clock_FindBaseClock>
1a002646:	4603      	mov	r3, r0
1a002648:	72fb      	strb	r3, [r7, #11]
1a00264a:	7afb      	ldrb	r3, [r7, #11]
1a00264c:	4618      	mov	r0, r3
1a00264e:	f7ff fee5 	bl	1a00241c <Chip_Clock_GetBaseClocktHz>
1a002652:	60f8      	str	r0, [r7, #12]
1a002654:	697b      	ldr	r3, [r7, #20]
1a002656:	095b      	lsrs	r3, r3, #5
1a002658:	f003 0307 	and.w	r3, r3, #7
1a00265c:	2b00      	cmp	r3, #0
1a00265e:	d102      	bne.n	1a002666 <Chip_Clock_GetRate+0x62>
1a002660:	2301      	movs	r3, #1
1a002662:	613b      	str	r3, [r7, #16]
1a002664:	e001      	b.n	1a00266a <Chip_Clock_GetRate+0x66>
1a002666:	2302      	movs	r3, #2
1a002668:	613b      	str	r3, [r7, #16]
1a00266a:	68fa      	ldr	r2, [r7, #12]
1a00266c:	693b      	ldr	r3, [r7, #16]
1a00266e:	fbb2 f3f3 	udiv	r3, r2, r3
1a002672:	60fb      	str	r3, [r7, #12]
1a002674:	e001      	b.n	1a00267a <Chip_Clock_GetRate+0x76>
1a002676:	2300      	movs	r3, #0
1a002678:	60fb      	str	r3, [r7, #12]
1a00267a:	68fb      	ldr	r3, [r7, #12]
1a00267c:	4618      	mov	r0, r3
1a00267e:	3718      	adds	r7, #24
1a002680:	46bd      	mov	sp, r7
1a002682:	bd80      	pop	{r7, pc}
1a002684:	40052000 	.word	0x40052000
1a002688:	40051000 	.word	0x40051000

1a00268c <SystemCoreClockUpdate>:
1a00268c:	b580      	push	{r7, lr}
1a00268e:	af00      	add	r7, sp, #0
1a002690:	2069      	movs	r0, #105	; 0x69
1a002692:	f7ff ffb7 	bl	1a002604 <Chip_Clock_GetRate>
1a002696:	4602      	mov	r2, r0
1a002698:	4b01      	ldr	r3, [pc, #4]	; (1a0026a0 <SystemCoreClockUpdate+0x14>)
1a00269a:	601a      	str	r2, [r3, #0]
1a00269c:	bf00      	nop
1a00269e:	bd80      	pop	{r7, pc}
1a0026a0:	100009c0 	.word	0x100009c0

1a0026a4 <Chip_GPIO_Init>:
1a0026a4:	b480      	push	{r7}
1a0026a6:	b083      	sub	sp, #12
1a0026a8:	af00      	add	r7, sp, #0
1a0026aa:	6078      	str	r0, [r7, #4]
1a0026ac:	bf00      	nop
1a0026ae:	370c      	adds	r7, #12
1a0026b0:	46bd      	mov	sp, r7
1a0026b2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0026b6:	4770      	bx	lr

1a0026b8 <Chip_TIMER_GetClockIndex>:
1a0026b8:	b480      	push	{r7}
1a0026ba:	b085      	sub	sp, #20
1a0026bc:	af00      	add	r7, sp, #0
1a0026be:	6078      	str	r0, [r7, #4]
1a0026c0:	687b      	ldr	r3, [r7, #4]
1a0026c2:	4a0e      	ldr	r2, [pc, #56]	; (1a0026fc <Chip_TIMER_GetClockIndex+0x44>)
1a0026c4:	4293      	cmp	r3, r2
1a0026c6:	d102      	bne.n	1a0026ce <Chip_TIMER_GetClockIndex+0x16>
1a0026c8:	23a4      	movs	r3, #164	; 0xa4
1a0026ca:	81fb      	strh	r3, [r7, #14]
1a0026cc:	e00f      	b.n	1a0026ee <Chip_TIMER_GetClockIndex+0x36>
1a0026ce:	687b      	ldr	r3, [r7, #4]
1a0026d0:	4a0b      	ldr	r2, [pc, #44]	; (1a002700 <Chip_TIMER_GetClockIndex+0x48>)
1a0026d2:	4293      	cmp	r3, r2
1a0026d4:	d102      	bne.n	1a0026dc <Chip_TIMER_GetClockIndex+0x24>
1a0026d6:	23a3      	movs	r3, #163	; 0xa3
1a0026d8:	81fb      	strh	r3, [r7, #14]
1a0026da:	e008      	b.n	1a0026ee <Chip_TIMER_GetClockIndex+0x36>
1a0026dc:	687b      	ldr	r3, [r7, #4]
1a0026de:	4a09      	ldr	r2, [pc, #36]	; (1a002704 <Chip_TIMER_GetClockIndex+0x4c>)
1a0026e0:	4293      	cmp	r3, r2
1a0026e2:	d102      	bne.n	1a0026ea <Chip_TIMER_GetClockIndex+0x32>
1a0026e4:	2385      	movs	r3, #133	; 0x85
1a0026e6:	81fb      	strh	r3, [r7, #14]
1a0026e8:	e001      	b.n	1a0026ee <Chip_TIMER_GetClockIndex+0x36>
1a0026ea:	2384      	movs	r3, #132	; 0x84
1a0026ec:	81fb      	strh	r3, [r7, #14]
1a0026ee:	89fb      	ldrh	r3, [r7, #14]
1a0026f0:	4618      	mov	r0, r3
1a0026f2:	3714      	adds	r7, #20
1a0026f4:	46bd      	mov	sp, r7
1a0026f6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0026fa:	4770      	bx	lr
1a0026fc:	400c4000 	.word	0x400c4000
1a002700:	400c3000 	.word	0x400c3000
1a002704:	40085000 	.word	0x40085000

1a002708 <Chip_TIMER_Init>:
1a002708:	b580      	push	{r7, lr}
1a00270a:	b082      	sub	sp, #8
1a00270c:	af00      	add	r7, sp, #0
1a00270e:	6078      	str	r0, [r7, #4]
1a002710:	6878      	ldr	r0, [r7, #4]
1a002712:	f7ff ffd1 	bl	1a0026b8 <Chip_TIMER_GetClockIndex>
1a002716:	4603      	mov	r3, r0
1a002718:	4618      	mov	r0, r3
1a00271a:	f7ff ff43 	bl	1a0025a4 <Chip_Clock_Enable>
1a00271e:	bf00      	nop
1a002720:	3708      	adds	r7, #8
1a002722:	46bd      	mov	sp, r7
1a002724:	bd80      	pop	{r7, pc}
1a002726:	Address 0x000000001a002726 is out of bounds.


1a002728 <memcpy>:
1a002728:	4684      	mov	ip, r0
1a00272a:	ea41 0300 	orr.w	r3, r1, r0
1a00272e:	f013 0303 	ands.w	r3, r3, #3
1a002732:	d16d      	bne.n	1a002810 <memcpy+0xe8>
1a002734:	3a40      	subs	r2, #64	; 0x40
1a002736:	d341      	bcc.n	1a0027bc <memcpy+0x94>
1a002738:	f851 3b04 	ldr.w	r3, [r1], #4
1a00273c:	f840 3b04 	str.w	r3, [r0], #4
1a002740:	f851 3b04 	ldr.w	r3, [r1], #4
1a002744:	f840 3b04 	str.w	r3, [r0], #4
1a002748:	f851 3b04 	ldr.w	r3, [r1], #4
1a00274c:	f840 3b04 	str.w	r3, [r0], #4
1a002750:	f851 3b04 	ldr.w	r3, [r1], #4
1a002754:	f840 3b04 	str.w	r3, [r0], #4
1a002758:	f851 3b04 	ldr.w	r3, [r1], #4
1a00275c:	f840 3b04 	str.w	r3, [r0], #4
1a002760:	f851 3b04 	ldr.w	r3, [r1], #4
1a002764:	f840 3b04 	str.w	r3, [r0], #4
1a002768:	f851 3b04 	ldr.w	r3, [r1], #4
1a00276c:	f840 3b04 	str.w	r3, [r0], #4
1a002770:	f851 3b04 	ldr.w	r3, [r1], #4
1a002774:	f840 3b04 	str.w	r3, [r0], #4
1a002778:	f851 3b04 	ldr.w	r3, [r1], #4
1a00277c:	f840 3b04 	str.w	r3, [r0], #4
1a002780:	f851 3b04 	ldr.w	r3, [r1], #4
1a002784:	f840 3b04 	str.w	r3, [r0], #4
1a002788:	f851 3b04 	ldr.w	r3, [r1], #4
1a00278c:	f840 3b04 	str.w	r3, [r0], #4
1a002790:	f851 3b04 	ldr.w	r3, [r1], #4
1a002794:	f840 3b04 	str.w	r3, [r0], #4
1a002798:	f851 3b04 	ldr.w	r3, [r1], #4
1a00279c:	f840 3b04 	str.w	r3, [r0], #4
1a0027a0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0027a4:	f840 3b04 	str.w	r3, [r0], #4
1a0027a8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0027ac:	f840 3b04 	str.w	r3, [r0], #4
1a0027b0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0027b4:	f840 3b04 	str.w	r3, [r0], #4
1a0027b8:	3a40      	subs	r2, #64	; 0x40
1a0027ba:	d2bd      	bcs.n	1a002738 <memcpy+0x10>
1a0027bc:	3230      	adds	r2, #48	; 0x30
1a0027be:	d311      	bcc.n	1a0027e4 <memcpy+0xbc>
1a0027c0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0027c4:	f840 3b04 	str.w	r3, [r0], #4
1a0027c8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0027cc:	f840 3b04 	str.w	r3, [r0], #4
1a0027d0:	f851 3b04 	ldr.w	r3, [r1], #4
1a0027d4:	f840 3b04 	str.w	r3, [r0], #4
1a0027d8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0027dc:	f840 3b04 	str.w	r3, [r0], #4
1a0027e0:	3a10      	subs	r2, #16
1a0027e2:	d2ed      	bcs.n	1a0027c0 <memcpy+0x98>
1a0027e4:	320c      	adds	r2, #12
1a0027e6:	d305      	bcc.n	1a0027f4 <memcpy+0xcc>
1a0027e8:	f851 3b04 	ldr.w	r3, [r1], #4
1a0027ec:	f840 3b04 	str.w	r3, [r0], #4
1a0027f0:	3a04      	subs	r2, #4
1a0027f2:	d2f9      	bcs.n	1a0027e8 <memcpy+0xc0>
1a0027f4:	3204      	adds	r2, #4
1a0027f6:	d008      	beq.n	1a00280a <memcpy+0xe2>
1a0027f8:	07d2      	lsls	r2, r2, #31
1a0027fa:	bf1c      	itt	ne
1a0027fc:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a002800:	f800 3b01 	strbne.w	r3, [r0], #1
1a002804:	d301      	bcc.n	1a00280a <memcpy+0xe2>
1a002806:	880b      	ldrh	r3, [r1, #0]
1a002808:	8003      	strh	r3, [r0, #0]
1a00280a:	4660      	mov	r0, ip
1a00280c:	4770      	bx	lr
1a00280e:	bf00      	nop
1a002810:	2a08      	cmp	r2, #8
1a002812:	d313      	bcc.n	1a00283c <memcpy+0x114>
1a002814:	078b      	lsls	r3, r1, #30
1a002816:	d08d      	beq.n	1a002734 <memcpy+0xc>
1a002818:	f010 0303 	ands.w	r3, r0, #3
1a00281c:	d08a      	beq.n	1a002734 <memcpy+0xc>
1a00281e:	f1c3 0304 	rsb	r3, r3, #4
1a002822:	1ad2      	subs	r2, r2, r3
1a002824:	07db      	lsls	r3, r3, #31
1a002826:	bf1c      	itt	ne
1a002828:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a00282c:	f800 3b01 	strbne.w	r3, [r0], #1
1a002830:	d380      	bcc.n	1a002734 <memcpy+0xc>
1a002832:	f831 3b02 	ldrh.w	r3, [r1], #2
1a002836:	f820 3b02 	strh.w	r3, [r0], #2
1a00283a:	e77b      	b.n	1a002734 <memcpy+0xc>
1a00283c:	3a04      	subs	r2, #4
1a00283e:	d3d9      	bcc.n	1a0027f4 <memcpy+0xcc>
1a002840:	3a01      	subs	r2, #1
1a002842:	f811 3b01 	ldrb.w	r3, [r1], #1
1a002846:	f800 3b01 	strb.w	r3, [r0], #1
1a00284a:	d2f9      	bcs.n	1a002840 <memcpy+0x118>
1a00284c:	780b      	ldrb	r3, [r1, #0]
1a00284e:	7003      	strb	r3, [r0, #0]
1a002850:	784b      	ldrb	r3, [r1, #1]
1a002852:	7043      	strb	r3, [r0, #1]
1a002854:	788b      	ldrb	r3, [r1, #2]
1a002856:	7083      	strb	r3, [r0, #2]
1a002858:	4660      	mov	r0, ip
1a00285a:	4770      	bx	lr

1a00285c <rand>:
1a00285c:	4b0b      	ldr	r3, [pc, #44]	; (1a00288c <rand+0x30>)
1a00285e:	480c      	ldr	r0, [pc, #48]	; (1a002890 <rand+0x34>)
1a002860:	6819      	ldr	r1, [r3, #0]
1a002862:	e9d1 232a 	ldrd	r2, r3, [r1, #168]	; 0xa8
1a002866:	b430      	push	{r4, r5}
1a002868:	4c0a      	ldr	r4, [pc, #40]	; (1a002894 <rand+0x38>)
1a00286a:	fb00 f002 	mul.w	r0, r0, r2
1a00286e:	fb04 0003 	mla	r0, r4, r3, r0
1a002872:	fba2 2304 	umull	r2, r3, r2, r4
1a002876:	1c54      	adds	r4, r2, #1
1a002878:	4403      	add	r3, r0
1a00287a:	f143 0500 	adc.w	r5, r3, #0
1a00287e:	f025 4000 	bic.w	r0, r5, #2147483648	; 0x80000000
1a002882:	e9c1 452a 	strd	r4, r5, [r1, #168]	; 0xa8
1a002886:	bc30      	pop	{r4, r5}
1a002888:	4770      	bx	lr
1a00288a:	bf00      	nop
1a00288c:	10000000 	.word	0x10000000
1a002890:	5851f42d 	.word	0x5851f42d
1a002894:	4c957f2d 	.word	0x4c957f2d

1a002898 <ExtRateIn>:
1a002898:	00000000                                ....

1a00289c <OscRateIn>:
1a00289c:	00b71b00                                ....

1a0028a0 <leds>:
1a0028a0:	00050002 00000014 0a020000 00100e00     ................
1a0028b0:	00000000 0b010b02 00000010 0c020000     ................
1a0028c0:	00100c01 00000000 01050102 00000014     ................
1a0028d0:	02020000 00140205 00000000              ............

1a0028dc <keys>:
1a0028dc:	04000001 000000c0 01012101 00c00800     .........!......
1a0028ec:	22020000 09000201 000000c0 06012303     ...".........#..
1a0028fc:	00c00901 24040000                       .......$

1a002904 <InitClkStates>:
1a002904:	00010100 00010909 0001090a 01010701     ................
1a002914:	00010902 00010906 0101090c 0001090d     ................
1a002924:	0001090e 0001090f 00010910 00010911     ................
1a002934:	00010912 00010913 00011114 00011119     ................
1a002944:	0001111a 0001111b                       ........

1a00294c <UART_PClock>:
1a00294c:	00820081 00a200a1                       ........

1a002954 <UART_BClock>:
1a002954:	01a201c2 01620182                       ......b.

1a00295c <periph_to_base>:
1a00295c:	00050000 0020000a 00090024 00400040     ...... .$...@.@.
1a00296c:	00600005 000400a6 00c300c0 00e00002     ..`.............
1a00297c:	000100e0 01000100 01200003 00060120     .......... . ...
1a00298c:	01400140 0142000c 00190142 01620162     @.@...B.B...b.b.
1a00299c:	01820013 00120182 01a201a2 01c20011     ................
1a0029ac:	001001c2 01e201e2 0202000f 000e0202     ................
1a0029bc:	02220222 0223000d 001c0223 08040201     "."...#.#.......
1a0029cc:	0f0f0f03 ffff00ff                       ........

Disassembly of section .init:

1a0029d4 <_init>:
1a0029d4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0029d6:	bf00      	nop

Disassembly of section .fini:

1a0029d8 <_fini>:
1a0029d8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0029da:	bf00      	nop
