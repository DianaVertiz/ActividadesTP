
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 bd 04 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	45 07 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     E...............
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a 85 07 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a db 01 00 1a 7d 06 00 1a b5 06 00 1a     ........}.......
1a0000cc:	db 01 00 1a 15 07 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a002524 	.word	0x1a002524
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000

1a000120 <__bss_section_table_>:
1a000120:	10000000 	.word	0x10000000
1a000124:	000004a0 	.word	0x000004a0

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

1a0003cc <setLedFromMsk>:
1a0003cc:	b580      	push	{r7, lr}
1a0003ce:	b082      	sub	sp, #8
1a0003d0:	af00      	add	r7, sp, #0
1a0003d2:	4603      	mov	r3, r0
1a0003d4:	71fb      	strb	r3, [r7, #7]
1a0003d6:	79fb      	ldrb	r3, [r7, #7]
1a0003d8:	f003 0308 	and.w	r3, r3, #8
1a0003dc:	2b00      	cmp	r3, #0
1a0003de:	d006      	beq.n	1a0003ee <setLedFromMsk+0x22>
1a0003e0:	2301      	movs	r3, #1
1a0003e2:	220e      	movs	r2, #14
1a0003e4:	2100      	movs	r1, #0
1a0003e6:	4834      	ldr	r0, [pc, #208]	; (1a0004b8 <setLedFromMsk+0xec>)
1a0003e8:	f7ff ffd4 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0003ec:	e005      	b.n	1a0003fa <setLedFromMsk+0x2e>
1a0003ee:	2300      	movs	r3, #0
1a0003f0:	220e      	movs	r2, #14
1a0003f2:	2100      	movs	r1, #0
1a0003f4:	4830      	ldr	r0, [pc, #192]	; (1a0004b8 <setLedFromMsk+0xec>)
1a0003f6:	f7ff ffcd 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0003fa:	79fb      	ldrb	r3, [r7, #7]
1a0003fc:	f003 0310 	and.w	r3, r3, #16
1a000400:	2b00      	cmp	r3, #0
1a000402:	d006      	beq.n	1a000412 <setLedFromMsk+0x46>
1a000404:	2301      	movs	r3, #1
1a000406:	220b      	movs	r2, #11
1a000408:	2101      	movs	r1, #1
1a00040a:	482b      	ldr	r0, [pc, #172]	; (1a0004b8 <setLedFromMsk+0xec>)
1a00040c:	f7ff ffc2 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000410:	e005      	b.n	1a00041e <setLedFromMsk+0x52>
1a000412:	2300      	movs	r3, #0
1a000414:	220b      	movs	r2, #11
1a000416:	2101      	movs	r1, #1
1a000418:	4827      	ldr	r0, [pc, #156]	; (1a0004b8 <setLedFromMsk+0xec>)
1a00041a:	f7ff ffbb 	bl	1a000394 <Chip_GPIO_SetPinState>
1a00041e:	79fb      	ldrb	r3, [r7, #7]
1a000420:	f003 0320 	and.w	r3, r3, #32
1a000424:	2b00      	cmp	r3, #0
1a000426:	d006      	beq.n	1a000436 <setLedFromMsk+0x6a>
1a000428:	2301      	movs	r3, #1
1a00042a:	220c      	movs	r2, #12
1a00042c:	2101      	movs	r1, #1
1a00042e:	4822      	ldr	r0, [pc, #136]	; (1a0004b8 <setLedFromMsk+0xec>)
1a000430:	f7ff ffb0 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000434:	e005      	b.n	1a000442 <setLedFromMsk+0x76>
1a000436:	2300      	movs	r3, #0
1a000438:	220c      	movs	r2, #12
1a00043a:	2101      	movs	r1, #1
1a00043c:	481e      	ldr	r0, [pc, #120]	; (1a0004b8 <setLedFromMsk+0xec>)
1a00043e:	f7ff ffa9 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000442:	79fb      	ldrb	r3, [r7, #7]
1a000444:	f003 0301 	and.w	r3, r3, #1
1a000448:	2b00      	cmp	r3, #0
1a00044a:	d006      	beq.n	1a00045a <setLedFromMsk+0x8e>
1a00044c:	2301      	movs	r3, #1
1a00044e:	2200      	movs	r2, #0
1a000450:	2105      	movs	r1, #5
1a000452:	4819      	ldr	r0, [pc, #100]	; (1a0004b8 <setLedFromMsk+0xec>)
1a000454:	f7ff ff9e 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000458:	e005      	b.n	1a000466 <setLedFromMsk+0x9a>
1a00045a:	2300      	movs	r3, #0
1a00045c:	2200      	movs	r2, #0
1a00045e:	2105      	movs	r1, #5
1a000460:	4815      	ldr	r0, [pc, #84]	; (1a0004b8 <setLedFromMsk+0xec>)
1a000462:	f7ff ff97 	bl	1a000394 <Chip_GPIO_SetPinState>
1a000466:	79fb      	ldrb	r3, [r7, #7]
1a000468:	f003 0302 	and.w	r3, r3, #2
1a00046c:	2b00      	cmp	r3, #0
1a00046e:	d006      	beq.n	1a00047e <setLedFromMsk+0xb2>
1a000470:	2301      	movs	r3, #1
1a000472:	2201      	movs	r2, #1
1a000474:	2105      	movs	r1, #5
1a000476:	4810      	ldr	r0, [pc, #64]	; (1a0004b8 <setLedFromMsk+0xec>)
1a000478:	f7ff ff8c 	bl	1a000394 <Chip_GPIO_SetPinState>
1a00047c:	e005      	b.n	1a00048a <setLedFromMsk+0xbe>
1a00047e:	2300      	movs	r3, #0
1a000480:	2201      	movs	r2, #1
1a000482:	2105      	movs	r1, #5
1a000484:	480c      	ldr	r0, [pc, #48]	; (1a0004b8 <setLedFromMsk+0xec>)
1a000486:	f7ff ff85 	bl	1a000394 <Chip_GPIO_SetPinState>
1a00048a:	79fb      	ldrb	r3, [r7, #7]
1a00048c:	f003 0304 	and.w	r3, r3, #4
1a000490:	2b00      	cmp	r3, #0
1a000492:	d006      	beq.n	1a0004a2 <setLedFromMsk+0xd6>
1a000494:	2301      	movs	r3, #1
1a000496:	2202      	movs	r2, #2
1a000498:	2105      	movs	r1, #5
1a00049a:	4807      	ldr	r0, [pc, #28]	; (1a0004b8 <setLedFromMsk+0xec>)
1a00049c:	f7ff ff7a 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0004a0:	e005      	b.n	1a0004ae <setLedFromMsk+0xe2>
1a0004a2:	2300      	movs	r3, #0
1a0004a4:	2202      	movs	r2, #2
1a0004a6:	2105      	movs	r1, #5
1a0004a8:	4803      	ldr	r0, [pc, #12]	; (1a0004b8 <setLedFromMsk+0xec>)
1a0004aa:	f7ff ff73 	bl	1a000394 <Chip_GPIO_SetPinState>
1a0004ae:	bf00      	nop
1a0004b0:	3708      	adds	r7, #8
1a0004b2:	46bd      	mov	sp, r7
1a0004b4:	bd80      	pop	{r7, pc}
1a0004b6:	bf00      	nop
1a0004b8:	400f4000 	.word	0x400f4000

1a0004bc <ResetISR>:
1a0004bc:	b580      	push	{r7, lr}
1a0004be:	b088      	sub	sp, #32
1a0004c0:	af00      	add	r7, sp, #0
1a0004c2:	b672      	cpsid	i
1a0004c4:	4b26      	ldr	r3, [pc, #152]	; (1a000560 <ResetISR+0xa4>)
1a0004c6:	617b      	str	r3, [r7, #20]
1a0004c8:	697b      	ldr	r3, [r7, #20]
1a0004ca:	4a26      	ldr	r2, [pc, #152]	; (1a000564 <ResetISR+0xa8>)
1a0004cc:	601a      	str	r2, [r3, #0]
1a0004ce:	697b      	ldr	r3, [r7, #20]
1a0004d0:	3304      	adds	r3, #4
1a0004d2:	4a25      	ldr	r2, [pc, #148]	; (1a000568 <ResetISR+0xac>)
1a0004d4:	601a      	str	r2, [r3, #0]
1a0004d6:	4b25      	ldr	r3, [pc, #148]	; (1a00056c <ResetISR+0xb0>)
1a0004d8:	613b      	str	r3, [r7, #16]
1a0004da:	2300      	movs	r3, #0
1a0004dc:	61fb      	str	r3, [r7, #28]
1a0004de:	e009      	b.n	1a0004f4 <ResetISR+0x38>
1a0004e0:	69fb      	ldr	r3, [r7, #28]
1a0004e2:	009b      	lsls	r3, r3, #2
1a0004e4:	693a      	ldr	r2, [r7, #16]
1a0004e6:	4413      	add	r3, r2
1a0004e8:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a0004ec:	601a      	str	r2, [r3, #0]
1a0004ee:	69fb      	ldr	r3, [r7, #28]
1a0004f0:	3301      	adds	r3, #1
1a0004f2:	61fb      	str	r3, [r7, #28]
1a0004f4:	69fb      	ldr	r3, [r7, #28]
1a0004f6:	2b07      	cmp	r3, #7
1a0004f8:	d9f2      	bls.n	1a0004e0 <ResetISR+0x24>
1a0004fa:	b662      	cpsie	i
1a0004fc:	4b1c      	ldr	r3, [pc, #112]	; (1a000570 <ResetISR+0xb4>)
1a0004fe:	61bb      	str	r3, [r7, #24]
1a000500:	e013      	b.n	1a00052a <ResetISR+0x6e>
1a000502:	69bb      	ldr	r3, [r7, #24]
1a000504:	1d1a      	adds	r2, r3, #4
1a000506:	61ba      	str	r2, [r7, #24]
1a000508:	681b      	ldr	r3, [r3, #0]
1a00050a:	607b      	str	r3, [r7, #4]
1a00050c:	69bb      	ldr	r3, [r7, #24]
1a00050e:	1d1a      	adds	r2, r3, #4
1a000510:	61ba      	str	r2, [r7, #24]
1a000512:	681b      	ldr	r3, [r3, #0]
1a000514:	60fb      	str	r3, [r7, #12]
1a000516:	69bb      	ldr	r3, [r7, #24]
1a000518:	1d1a      	adds	r2, r3, #4
1a00051a:	61ba      	str	r2, [r7, #24]
1a00051c:	681b      	ldr	r3, [r3, #0]
1a00051e:	60bb      	str	r3, [r7, #8]
1a000520:	68ba      	ldr	r2, [r7, #8]
1a000522:	68f9      	ldr	r1, [r7, #12]
1a000524:	6878      	ldr	r0, [r7, #4]
1a000526:	f7ff fdff 	bl	1a000128 <data_init>
1a00052a:	69bb      	ldr	r3, [r7, #24]
1a00052c:	4a11      	ldr	r2, [pc, #68]	; (1a000574 <ResetISR+0xb8>)
1a00052e:	4293      	cmp	r3, r2
1a000530:	d3e7      	bcc.n	1a000502 <ResetISR+0x46>
1a000532:	e00d      	b.n	1a000550 <ResetISR+0x94>
1a000534:	69bb      	ldr	r3, [r7, #24]
1a000536:	1d1a      	adds	r2, r3, #4
1a000538:	61ba      	str	r2, [r7, #24]
1a00053a:	681b      	ldr	r3, [r3, #0]
1a00053c:	60fb      	str	r3, [r7, #12]
1a00053e:	69bb      	ldr	r3, [r7, #24]
1a000540:	1d1a      	adds	r2, r3, #4
1a000542:	61ba      	str	r2, [r7, #24]
1a000544:	681b      	ldr	r3, [r3, #0]
1a000546:	60bb      	str	r3, [r7, #8]
1a000548:	68b9      	ldr	r1, [r7, #8]
1a00054a:	68f8      	ldr	r0, [r7, #12]
1a00054c:	f7ff fe0e 	bl	1a00016c <bss_init>
1a000550:	69bb      	ldr	r3, [r7, #24]
1a000552:	4a09      	ldr	r2, [pc, #36]	; (1a000578 <ResetISR+0xbc>)
1a000554:	4293      	cmp	r3, r2
1a000556:	d3ed      	bcc.n	1a000534 <ResetISR+0x78>
1a000558:	f000 f924 	bl	1a0007a4 <main>
1a00055c:	e7fe      	b.n	1a00055c <ResetISR+0xa0>
1a00055e:	bf00      	nop
1a000560:	40053100 	.word	0x40053100
1a000564:	10df1000 	.word	0x10df1000
1a000568:	01dff7ff 	.word	0x01dff7ff
1a00056c:	e000e280 	.word	0xe000e280
1a000570:	1a000114 	.word	0x1a000114
1a000574:	1a000120 	.word	0x1a000120
1a000578:	1a000128 	.word	0x1a000128

1a00057c <NVIC_EnableIRQ>:
1a00057c:	b480      	push	{r7}
1a00057e:	b083      	sub	sp, #12
1a000580:	af00      	add	r7, sp, #0
1a000582:	4603      	mov	r3, r0
1a000584:	71fb      	strb	r3, [r7, #7]
1a000586:	79fb      	ldrb	r3, [r7, #7]
1a000588:	f003 031f 	and.w	r3, r3, #31
1a00058c:	2201      	movs	r2, #1
1a00058e:	fa02 f103 	lsl.w	r1, r2, r3
1a000592:	4a06      	ldr	r2, [pc, #24]	; (1a0005ac <NVIC_EnableIRQ+0x30>)
1a000594:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000598:	095b      	lsrs	r3, r3, #5
1a00059a:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a00059e:	bf00      	nop
1a0005a0:	370c      	adds	r7, #12
1a0005a2:	46bd      	mov	sp, r7
1a0005a4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005a8:	4770      	bx	lr
1a0005aa:	bf00      	nop
1a0005ac:	e000e100 	.word	0xe000e100

1a0005b0 <NVIC_DisableIRQ>:
1a0005b0:	b480      	push	{r7}
1a0005b2:	b083      	sub	sp, #12
1a0005b4:	af00      	add	r7, sp, #0
1a0005b6:	4603      	mov	r3, r0
1a0005b8:	71fb      	strb	r3, [r7, #7]
1a0005ba:	79fb      	ldrb	r3, [r7, #7]
1a0005bc:	f003 031f 	and.w	r3, r3, #31
1a0005c0:	2201      	movs	r2, #1
1a0005c2:	fa02 f103 	lsl.w	r1, r2, r3
1a0005c6:	4a06      	ldr	r2, [pc, #24]	; (1a0005e0 <NVIC_DisableIRQ+0x30>)
1a0005c8:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0005cc:	095b      	lsrs	r3, r3, #5
1a0005ce:	3320      	adds	r3, #32
1a0005d0:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0005d4:	bf00      	nop
1a0005d6:	370c      	adds	r7, #12
1a0005d8:	46bd      	mov	sp, r7
1a0005da:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005de:	4770      	bx	lr
1a0005e0:	e000e100 	.word	0xe000e100

1a0005e4 <NVIC_ClearPendingIRQ>:
1a0005e4:	b480      	push	{r7}
1a0005e6:	b083      	sub	sp, #12
1a0005e8:	af00      	add	r7, sp, #0
1a0005ea:	4603      	mov	r3, r0
1a0005ec:	71fb      	strb	r3, [r7, #7]
1a0005ee:	79fb      	ldrb	r3, [r7, #7]
1a0005f0:	f003 031f 	and.w	r3, r3, #31
1a0005f4:	2201      	movs	r2, #1
1a0005f6:	fa02 f103 	lsl.w	r1, r2, r3
1a0005fa:	4a06      	ldr	r2, [pc, #24]	; (1a000614 <NVIC_ClearPendingIRQ+0x30>)
1a0005fc:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000600:	095b      	lsrs	r3, r3, #5
1a000602:	3360      	adds	r3, #96	; 0x60
1a000604:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000608:	bf00      	nop
1a00060a:	370c      	adds	r7, #12
1a00060c:	46bd      	mov	sp, r7
1a00060e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000612:	4770      	bx	lr
1a000614:	e000e100 	.word	0xe000e100

1a000618 <Chip_PININT_ClearIntStatus>:
1a000618:	b480      	push	{r7}
1a00061a:	b083      	sub	sp, #12
1a00061c:	af00      	add	r7, sp, #0
1a00061e:	6078      	str	r0, [r7, #4]
1a000620:	6039      	str	r1, [r7, #0]
1a000622:	687b      	ldr	r3, [r7, #4]
1a000624:	683a      	ldr	r2, [r7, #0]
1a000626:	625a      	str	r2, [r3, #36]	; 0x24
1a000628:	bf00      	nop
1a00062a:	370c      	adds	r7, #12
1a00062c:	46bd      	mov	sp, r7
1a00062e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000632:	4770      	bx	lr

1a000634 <StopWatch_Elapsed>:
1a000634:	b580      	push	{r7, lr}
1a000636:	b082      	sub	sp, #8
1a000638:	af00      	add	r7, sp, #0
1a00063a:	6078      	str	r0, [r7, #4]
1a00063c:	f000 ff68 	bl	1a001510 <StopWatch_Start>
1a000640:	4602      	mov	r2, r0
1a000642:	687b      	ldr	r3, [r7, #4]
1a000644:	1ad3      	subs	r3, r2, r3
1a000646:	4618      	mov	r0, r3
1a000648:	3708      	adds	r7, #8
1a00064a:	46bd      	mov	sp, r7
1a00064c:	bd80      	pop	{r7, pc}

1a00064e <StopWatch_DelayMs>:
1a00064e:	b580      	push	{r7, lr}
1a000650:	b084      	sub	sp, #16
1a000652:	af00      	add	r7, sp, #0
1a000654:	6078      	str	r0, [r7, #4]
1a000656:	6878      	ldr	r0, [r7, #4]
1a000658:	f000 ff64 	bl	1a001524 <StopWatch_MsToTicks>
1a00065c:	60f8      	str	r0, [r7, #12]
1a00065e:	f000 ff57 	bl	1a001510 <StopWatch_Start>
1a000662:	60b8      	str	r0, [r7, #8]
1a000664:	bf00      	nop
1a000666:	68b8      	ldr	r0, [r7, #8]
1a000668:	f7ff ffe4 	bl	1a000634 <StopWatch_Elapsed>
1a00066c:	4602      	mov	r2, r0
1a00066e:	68fb      	ldr	r3, [r7, #12]
1a000670:	4293      	cmp	r3, r2
1a000672:	d8f8      	bhi.n	1a000666 <StopWatch_DelayMs+0x18>
1a000674:	bf00      	nop
1a000676:	3710      	adds	r7, #16
1a000678:	46bd      	mov	sp, r7
1a00067a:	bd80      	pop	{r7, pc}

1a00067c <GPIO1_IRQHandler>:
1a00067c:	b580      	push	{r7, lr}
1a00067e:	af00      	add	r7, sp, #0
1a000680:	2102      	movs	r1, #2
1a000682:	4809      	ldr	r0, [pc, #36]	; (1a0006a8 <GPIO1_IRQHandler+0x2c>)
1a000684:	f7ff ffc8 	bl	1a000618 <Chip_PININT_ClearIntStatus>
1a000688:	f44f 7016 	mov.w	r0, #600	; 0x258
1a00068c:	f7ff ffdf 	bl	1a00064e <StopWatch_DelayMs>
1a000690:	4b06      	ldr	r3, [pc, #24]	; (1a0006ac <GPIO1_IRQHandler+0x30>)
1a000692:	781b      	ldrb	r3, [r3, #0]
1a000694:	b2db      	uxtb	r3, r3
1a000696:	3301      	adds	r3, #1
1a000698:	b2da      	uxtb	r2, r3
1a00069a:	4b04      	ldr	r3, [pc, #16]	; (1a0006ac <GPIO1_IRQHandler+0x30>)
1a00069c:	701a      	strb	r2, [r3, #0]
1a00069e:	4b04      	ldr	r3, [pc, #16]	; (1a0006b0 <GPIO1_IRQHandler+0x34>)
1a0006a0:	2201      	movs	r2, #1
1a0006a2:	701a      	strb	r2, [r3, #0]
1a0006a4:	bf00      	nop
1a0006a6:	bd80      	pop	{r7, pc}
1a0006a8:	40087000 	.word	0x40087000
1a0006ac:	10000002 	.word	0x10000002
1a0006b0:	10000001 	.word	0x10000001

1a0006b4 <GPIO2_IRQHandler>:
1a0006b4:	b580      	push	{r7, lr}
1a0006b6:	af00      	add	r7, sp, #0
1a0006b8:	2104      	movs	r1, #4
1a0006ba:	4814      	ldr	r0, [pc, #80]	; (1a00070c <GPIO2_IRQHandler+0x58>)
1a0006bc:	f7ff ffac 	bl	1a000618 <Chip_PININT_ClearIntStatus>
1a0006c0:	f44f 7016 	mov.w	r0, #600	; 0x258
1a0006c4:	f7ff ffc3 	bl	1a00064e <StopWatch_DelayMs>
1a0006c8:	4b11      	ldr	r3, [pc, #68]	; (1a000710 <GPIO2_IRQHandler+0x5c>)
1a0006ca:	781b      	ldrb	r3, [r3, #0]
1a0006cc:	b2db      	uxtb	r3, r3
1a0006ce:	2b00      	cmp	r3, #0
1a0006d0:	d003      	beq.n	1a0006da <GPIO2_IRQHandler+0x26>
1a0006d2:	2021      	movs	r0, #33	; 0x21
1a0006d4:	f7ff ff6c 	bl	1a0005b0 <NVIC_DisableIRQ>
1a0006d8:	e009      	b.n	1a0006ee <GPIO2_IRQHandler+0x3a>
1a0006da:	2102      	movs	r1, #2
1a0006dc:	480b      	ldr	r0, [pc, #44]	; (1a00070c <GPIO2_IRQHandler+0x58>)
1a0006de:	f7ff ff9b 	bl	1a000618 <Chip_PININT_ClearIntStatus>
1a0006e2:	2021      	movs	r0, #33	; 0x21
1a0006e4:	f7ff ff7e 	bl	1a0005e4 <NVIC_ClearPendingIRQ>
1a0006e8:	2021      	movs	r0, #33	; 0x21
1a0006ea:	f7ff ff47 	bl	1a00057c <NVIC_EnableIRQ>
1a0006ee:	4b08      	ldr	r3, [pc, #32]	; (1a000710 <GPIO2_IRQHandler+0x5c>)
1a0006f0:	781b      	ldrb	r3, [r3, #0]
1a0006f2:	b2db      	uxtb	r3, r3
1a0006f4:	3301      	adds	r3, #1
1a0006f6:	2b00      	cmp	r3, #0
1a0006f8:	f003 0301 	and.w	r3, r3, #1
1a0006fc:	bfb8      	it	lt
1a0006fe:	425b      	neglt	r3, r3
1a000700:	b2da      	uxtb	r2, r3
1a000702:	4b03      	ldr	r3, [pc, #12]	; (1a000710 <GPIO2_IRQHandler+0x5c>)
1a000704:	701a      	strb	r2, [r3, #0]
1a000706:	bf00      	nop
1a000708:	bd80      	pop	{r7, pc}
1a00070a:	bf00      	nop
1a00070c:	40087000 	.word	0x40087000
1a000710:	10000000 	.word	0x10000000

1a000714 <GPIO4_IRQHandler>:
1a000714:	b580      	push	{r7, lr}
1a000716:	af00      	add	r7, sp, #0
1a000718:	2110      	movs	r1, #16
1a00071a:	4807      	ldr	r0, [pc, #28]	; (1a000738 <GPIO4_IRQHandler+0x24>)
1a00071c:	f7ff ff7c 	bl	1a000618 <Chip_PININT_ClearIntStatus>
1a000720:	f44f 7016 	mov.w	r0, #600	; 0x258
1a000724:	f7ff ff93 	bl	1a00064e <StopWatch_DelayMs>
1a000728:	4b04      	ldr	r3, [pc, #16]	; (1a00073c <GPIO4_IRQHandler+0x28>)
1a00072a:	2200      	movs	r2, #0
1a00072c:	701a      	strb	r2, [r3, #0]
1a00072e:	4b04      	ldr	r3, [pc, #16]	; (1a000740 <GPIO4_IRQHandler+0x2c>)
1a000730:	2201      	movs	r2, #1
1a000732:	701a      	strb	r2, [r3, #0]
1a000734:	bf00      	nop
1a000736:	bd80      	pop	{r7, pc}
1a000738:	40087000 	.word	0x40087000
1a00073c:	10000002 	.word	0x10000002
1a000740:	10000001 	.word	0x10000001

1a000744 <SysTick_Handler>:
1a000744:	b580      	push	{r7, lr}
1a000746:	b082      	sub	sp, #8
1a000748:	af00      	add	r7, sp, #0
1a00074a:	4b0c      	ldr	r3, [pc, #48]	; (1a00077c <SysTick_Handler+0x38>)
1a00074c:	781b      	ldrb	r3, [r3, #0]
1a00074e:	b2db      	uxtb	r3, r3
1a000750:	f003 030f 	and.w	r3, r3, #15
1a000754:	71fb      	strb	r3, [r7, #7]
1a000756:	4b0a      	ldr	r3, [pc, #40]	; (1a000780 <SysTick_Handler+0x3c>)
1a000758:	781b      	ldrb	r3, [r3, #0]
1a00075a:	b2db      	uxtb	r3, r3
1a00075c:	2b00      	cmp	r3, #0
1a00075e:	d008      	beq.n	1a000772 <SysTick_Handler+0x2e>
1a000760:	4b06      	ldr	r3, [pc, #24]	; (1a00077c <SysTick_Handler+0x38>)
1a000762:	781b      	ldrb	r3, [r3, #0]
1a000764:	b2db      	uxtb	r3, r3
1a000766:	4618      	mov	r0, r3
1a000768:	f000 fb1a 	bl	1a000da0 <displayCounter>
1a00076c:	4b04      	ldr	r3, [pc, #16]	; (1a000780 <SysTick_Handler+0x3c>)
1a00076e:	2200      	movs	r2, #0
1a000770:	701a      	strb	r2, [r3, #0]
1a000772:	bf00      	nop
1a000774:	3708      	adds	r7, #8
1a000776:	46bd      	mov	sp, r7
1a000778:	bd80      	pop	{r7, pc}
1a00077a:	bf00      	nop
1a00077c:	10000002 	.word	0x10000002
1a000780:	10000001 	.word	0x10000001

1a000784 <UART2_IRQHandler>:
1a000784:	b580      	push	{r7, lr}
1a000786:	af00      	add	r7, sp, #0
1a000788:	4a03      	ldr	r2, [pc, #12]	; (1a000798 <UART2_IRQHandler+0x14>)
1a00078a:	4904      	ldr	r1, [pc, #16]	; (1a00079c <UART2_IRQHandler+0x18>)
1a00078c:	4804      	ldr	r0, [pc, #16]	; (1a0007a0 <UART2_IRQHandler+0x1c>)
1a00078e:	f000 fe8d 	bl	1a0014ac <Chip_UART_IRQRBHandler>
1a000792:	bf00      	nop
1a000794:	bd80      	pop	{r7, pc}
1a000796:	bf00      	nop
1a000798:	10000010 	.word	0x10000010
1a00079c:	10000224 	.word	0x10000224
1a0007a0:	400c1000 	.word	0x400c1000

1a0007a4 <main>:
1a0007a4:	b580      	push	{r7, lr}
1a0007a6:	b082      	sub	sp, #8
1a0007a8:	af00      	add	r7, sp, #0
1a0007aa:	2300      	movs	r3, #0
1a0007ac:	71bb      	strb	r3, [r7, #6]
1a0007ae:	f000 f9a9 	bl	1a000b04 <inicializar_sistema>
1a0007b2:	f000 f9b7 	bl	1a000b24 <inicializar_leds>
1a0007b6:	f000 fa15 	bl	1a000be4 <inicializar_teclado>
1a0007ba:	f000 faa5 	bl	1a000d08 <init_interrupciones>
1a0007be:	f000 fa5b 	bl	1a000c78 <inicializar_USART>
1a0007c2:	232e      	movs	r3, #46	; 0x2e
1a0007c4:	4a0d      	ldr	r2, [pc, #52]	; (1a0007fc <main+0x58>)
1a0007c6:	490e      	ldr	r1, [pc, #56]	; (1a000800 <main+0x5c>)
1a0007c8:	480e      	ldr	r0, [pc, #56]	; (1a000804 <main+0x60>)
1a0007ca:	f000 fe2e 	bl	1a00142a <Chip_UART_SendRB>
1a0007ce:	e010      	b.n	1a0007f2 <main+0x4e>
1a0007d0:	1dba      	adds	r2, r7, #6
1a0007d2:	2301      	movs	r3, #1
1a0007d4:	490c      	ldr	r1, [pc, #48]	; (1a000808 <main+0x64>)
1a0007d6:	480b      	ldr	r0, [pc, #44]	; (1a000804 <main+0x60>)
1a0007d8:	f000 fe57 	bl	1a00148a <Chip_UART_ReadRB>
1a0007dc:	4603      	mov	r3, r0
1a0007de:	71fb      	strb	r3, [r7, #7]
1a0007e0:	79fb      	ldrb	r3, [r7, #7]
1a0007e2:	2b00      	cmp	r3, #0
1a0007e4:	d005      	beq.n	1a0007f2 <main+0x4e>
1a0007e6:	1dba      	adds	r2, r7, #6
1a0007e8:	2301      	movs	r3, #1
1a0007ea:	4905      	ldr	r1, [pc, #20]	; (1a000800 <main+0x5c>)
1a0007ec:	4805      	ldr	r0, [pc, #20]	; (1a000804 <main+0x60>)
1a0007ee:	f000 fe1c 	bl	1a00142a <Chip_UART_SendRB>
1a0007f2:	79bb      	ldrb	r3, [r7, #6]
1a0007f4:	2b1b      	cmp	r3, #27
1a0007f6:	d1eb      	bne.n	1a0007d0 <main+0x2c>
1a0007f8:	bf30      	wfi
1a0007fa:	e7fa      	b.n	1a0007f2 <main+0x4e>
1a0007fc:	1a0023e0 	.word	0x1a0023e0
1a000800:	10000010 	.word	0x10000010
1a000804:	400c1000 	.word	0x400c1000
1a000808:	10000224 	.word	0x10000224

1a00080c <NVIC_EnableIRQ>:
1a00080c:	b480      	push	{r7}
1a00080e:	b083      	sub	sp, #12
1a000810:	af00      	add	r7, sp, #0
1a000812:	4603      	mov	r3, r0
1a000814:	71fb      	strb	r3, [r7, #7]
1a000816:	79fb      	ldrb	r3, [r7, #7]
1a000818:	f003 031f 	and.w	r3, r3, #31
1a00081c:	2201      	movs	r2, #1
1a00081e:	fa02 f103 	lsl.w	r1, r2, r3
1a000822:	4a06      	ldr	r2, [pc, #24]	; (1a00083c <NVIC_EnableIRQ+0x30>)
1a000824:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000828:	095b      	lsrs	r3, r3, #5
1a00082a:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a00082e:	bf00      	nop
1a000830:	370c      	adds	r7, #12
1a000832:	46bd      	mov	sp, r7
1a000834:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000838:	4770      	bx	lr
1a00083a:	bf00      	nop
1a00083c:	e000e100 	.word	0xe000e100

1a000840 <NVIC_ClearPendingIRQ>:
1a000840:	b480      	push	{r7}
1a000842:	b083      	sub	sp, #12
1a000844:	af00      	add	r7, sp, #0
1a000846:	4603      	mov	r3, r0
1a000848:	71fb      	strb	r3, [r7, #7]
1a00084a:	79fb      	ldrb	r3, [r7, #7]
1a00084c:	f003 031f 	and.w	r3, r3, #31
1a000850:	2201      	movs	r2, #1
1a000852:	fa02 f103 	lsl.w	r1, r2, r3
1a000856:	4a06      	ldr	r2, [pc, #24]	; (1a000870 <NVIC_ClearPendingIRQ+0x30>)
1a000858:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a00085c:	095b      	lsrs	r3, r3, #5
1a00085e:	3360      	adds	r3, #96	; 0x60
1a000860:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000864:	bf00      	nop
1a000866:	370c      	adds	r7, #12
1a000868:	46bd      	mov	sp, r7
1a00086a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00086e:	4770      	bx	lr
1a000870:	e000e100 	.word	0xe000e100

1a000874 <Chip_SCU_PinMuxSet>:
1a000874:	b480      	push	{r7}
1a000876:	b083      	sub	sp, #12
1a000878:	af00      	add	r7, sp, #0
1a00087a:	4603      	mov	r3, r0
1a00087c:	71fb      	strb	r3, [r7, #7]
1a00087e:	460b      	mov	r3, r1
1a000880:	71bb      	strb	r3, [r7, #6]
1a000882:	4613      	mov	r3, r2
1a000884:	80bb      	strh	r3, [r7, #4]
1a000886:	4807      	ldr	r0, [pc, #28]	; (1a0008a4 <Chip_SCU_PinMuxSet+0x30>)
1a000888:	79f9      	ldrb	r1, [r7, #7]
1a00088a:	79bb      	ldrb	r3, [r7, #6]
1a00088c:	88ba      	ldrh	r2, [r7, #4]
1a00088e:	0149      	lsls	r1, r1, #5
1a000890:	440b      	add	r3, r1
1a000892:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a000896:	bf00      	nop
1a000898:	370c      	adds	r7, #12
1a00089a:	46bd      	mov	sp, r7
1a00089c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008a0:	4770      	bx	lr
1a0008a2:	bf00      	nop
1a0008a4:	40086000 	.word	0x40086000

1a0008a8 <Chip_SCU_PinMux>:
1a0008a8:	b590      	push	{r4, r7, lr}
1a0008aa:	b083      	sub	sp, #12
1a0008ac:	af00      	add	r7, sp, #0
1a0008ae:	4604      	mov	r4, r0
1a0008b0:	4608      	mov	r0, r1
1a0008b2:	4611      	mov	r1, r2
1a0008b4:	461a      	mov	r2, r3
1a0008b6:	4623      	mov	r3, r4
1a0008b8:	71fb      	strb	r3, [r7, #7]
1a0008ba:	4603      	mov	r3, r0
1a0008bc:	71bb      	strb	r3, [r7, #6]
1a0008be:	460b      	mov	r3, r1
1a0008c0:	80bb      	strh	r3, [r7, #4]
1a0008c2:	4613      	mov	r3, r2
1a0008c4:	70fb      	strb	r3, [r7, #3]
1a0008c6:	78fb      	ldrb	r3, [r7, #3]
1a0008c8:	b29a      	uxth	r2, r3
1a0008ca:	88bb      	ldrh	r3, [r7, #4]
1a0008cc:	4313      	orrs	r3, r2
1a0008ce:	b29a      	uxth	r2, r3
1a0008d0:	79b9      	ldrb	r1, [r7, #6]
1a0008d2:	79fb      	ldrb	r3, [r7, #7]
1a0008d4:	4618      	mov	r0, r3
1a0008d6:	f7ff ffcd 	bl	1a000874 <Chip_SCU_PinMuxSet>
1a0008da:	bf00      	nop
1a0008dc:	370c      	adds	r7, #12
1a0008de:	46bd      	mov	sp, r7
1a0008e0:	bd90      	pop	{r4, r7, pc}
1a0008e2:	Address 0x000000001a0008e2 is out of bounds.


1a0008e4 <Chip_SCU_GPIOIntPinSel>:
1a0008e4:	b480      	push	{r7}
1a0008e6:	b085      	sub	sp, #20
1a0008e8:	af00      	add	r7, sp, #0
1a0008ea:	4603      	mov	r3, r0
1a0008ec:	71fb      	strb	r3, [r7, #7]
1a0008ee:	460b      	mov	r3, r1
1a0008f0:	71bb      	strb	r3, [r7, #6]
1a0008f2:	4613      	mov	r3, r2
1a0008f4:	717b      	strb	r3, [r7, #5]
1a0008f6:	79fb      	ldrb	r3, [r7, #7]
1a0008f8:	00db      	lsls	r3, r3, #3
1a0008fa:	f003 0318 	and.w	r3, r3, #24
1a0008fe:	60fb      	str	r3, [r7, #12]
1a000900:	79bb      	ldrb	r3, [r7, #6]
1a000902:	015b      	lsls	r3, r3, #5
1a000904:	b2da      	uxtb	r2, r3
1a000906:	797b      	ldrb	r3, [r7, #5]
1a000908:	f003 031f 	and.w	r3, r3, #31
1a00090c:	431a      	orrs	r2, r3
1a00090e:	68fb      	ldr	r3, [r7, #12]
1a000910:	fa02 f303 	lsl.w	r3, r2, r3
1a000914:	60bb      	str	r3, [r7, #8]
1a000916:	4a0f      	ldr	r2, [pc, #60]	; (1a000954 <Chip_SCU_GPIOIntPinSel+0x70>)
1a000918:	79fb      	ldrb	r3, [r7, #7]
1a00091a:	089b      	lsrs	r3, r3, #2
1a00091c:	b2db      	uxtb	r3, r3
1a00091e:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a000922:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a000926:	21ff      	movs	r1, #255	; 0xff
1a000928:	68fa      	ldr	r2, [r7, #12]
1a00092a:	fa01 f202 	lsl.w	r2, r1, r2
1a00092e:	43d2      	mvns	r2, r2
1a000930:	401a      	ands	r2, r3
1a000932:	4908      	ldr	r1, [pc, #32]	; (1a000954 <Chip_SCU_GPIOIntPinSel+0x70>)
1a000934:	79fb      	ldrb	r3, [r7, #7]
1a000936:	089b      	lsrs	r3, r3, #2
1a000938:	b2db      	uxtb	r3, r3
1a00093a:	4618      	mov	r0, r3
1a00093c:	68bb      	ldr	r3, [r7, #8]
1a00093e:	431a      	orrs	r2, r3
1a000940:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a000944:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a000948:	bf00      	nop
1a00094a:	3714      	adds	r7, #20
1a00094c:	46bd      	mov	sp, r7
1a00094e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000952:	4770      	bx	lr
1a000954:	40086000 	.word	0x40086000

1a000958 <Chip_GPIO_SetPinDIROutput>:
1a000958:	b480      	push	{r7}
1a00095a:	b083      	sub	sp, #12
1a00095c:	af00      	add	r7, sp, #0
1a00095e:	6078      	str	r0, [r7, #4]
1a000960:	460b      	mov	r3, r1
1a000962:	70fb      	strb	r3, [r7, #3]
1a000964:	4613      	mov	r3, r2
1a000966:	70bb      	strb	r3, [r7, #2]
1a000968:	78fa      	ldrb	r2, [r7, #3]
1a00096a:	687b      	ldr	r3, [r7, #4]
1a00096c:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000970:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000974:	78bb      	ldrb	r3, [r7, #2]
1a000976:	2201      	movs	r2, #1
1a000978:	fa02 f303 	lsl.w	r3, r2, r3
1a00097c:	78fa      	ldrb	r2, [r7, #3]
1a00097e:	4319      	orrs	r1, r3
1a000980:	687b      	ldr	r3, [r7, #4]
1a000982:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000986:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a00098a:	bf00      	nop
1a00098c:	370c      	adds	r7, #12
1a00098e:	46bd      	mov	sp, r7
1a000990:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000994:	4770      	bx	lr

1a000996 <Chip_GPIO_SetPinDIRInput>:
1a000996:	b480      	push	{r7}
1a000998:	b083      	sub	sp, #12
1a00099a:	af00      	add	r7, sp, #0
1a00099c:	6078      	str	r0, [r7, #4]
1a00099e:	460b      	mov	r3, r1
1a0009a0:	70fb      	strb	r3, [r7, #3]
1a0009a2:	4613      	mov	r3, r2
1a0009a4:	70bb      	strb	r3, [r7, #2]
1a0009a6:	78fa      	ldrb	r2, [r7, #3]
1a0009a8:	687b      	ldr	r3, [r7, #4]
1a0009aa:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0009ae:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0009b2:	78bb      	ldrb	r3, [r7, #2]
1a0009b4:	2201      	movs	r2, #1
1a0009b6:	fa02 f303 	lsl.w	r3, r2, r3
1a0009ba:	43db      	mvns	r3, r3
1a0009bc:	78fa      	ldrb	r2, [r7, #3]
1a0009be:	4019      	ands	r1, r3
1a0009c0:	687b      	ldr	r3, [r7, #4]
1a0009c2:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0009c6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0009ca:	bf00      	nop
1a0009cc:	370c      	adds	r7, #12
1a0009ce:	46bd      	mov	sp, r7
1a0009d0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009d4:	4770      	bx	lr

1a0009d6 <Chip_GPIO_SetPortOutLow>:
1a0009d6:	b480      	push	{r7}
1a0009d8:	b085      	sub	sp, #20
1a0009da:	af00      	add	r7, sp, #0
1a0009dc:	60f8      	str	r0, [r7, #12]
1a0009de:	460b      	mov	r3, r1
1a0009e0:	607a      	str	r2, [r7, #4]
1a0009e2:	72fb      	strb	r3, [r7, #11]
1a0009e4:	7afa      	ldrb	r2, [r7, #11]
1a0009e6:	68fb      	ldr	r3, [r7, #12]
1a0009e8:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a0009ec:	6879      	ldr	r1, [r7, #4]
1a0009ee:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0009f2:	bf00      	nop
1a0009f4:	3714      	adds	r7, #20
1a0009f6:	46bd      	mov	sp, r7
1a0009f8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009fc:	4770      	bx	lr

1a0009fe <Chip_PININT_Init>:
1a0009fe:	b480      	push	{r7}
1a000a00:	b083      	sub	sp, #12
1a000a02:	af00      	add	r7, sp, #0
1a000a04:	6078      	str	r0, [r7, #4]
1a000a06:	bf00      	nop
1a000a08:	370c      	adds	r7, #12
1a000a0a:	46bd      	mov	sp, r7
1a000a0c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a10:	4770      	bx	lr

1a000a12 <Chip_PININT_SetPinModeEdge>:
1a000a12:	b480      	push	{r7}
1a000a14:	b083      	sub	sp, #12
1a000a16:	af00      	add	r7, sp, #0
1a000a18:	6078      	str	r0, [r7, #4]
1a000a1a:	6039      	str	r1, [r7, #0]
1a000a1c:	687b      	ldr	r3, [r7, #4]
1a000a1e:	681a      	ldr	r2, [r3, #0]
1a000a20:	683b      	ldr	r3, [r7, #0]
1a000a22:	43db      	mvns	r3, r3
1a000a24:	401a      	ands	r2, r3
1a000a26:	687b      	ldr	r3, [r7, #4]
1a000a28:	601a      	str	r2, [r3, #0]
1a000a2a:	bf00      	nop
1a000a2c:	370c      	adds	r7, #12
1a000a2e:	46bd      	mov	sp, r7
1a000a30:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a34:	4770      	bx	lr

1a000a36 <Chip_PININT_EnableIntLow>:
1a000a36:	b480      	push	{r7}
1a000a38:	b083      	sub	sp, #12
1a000a3a:	af00      	add	r7, sp, #0
1a000a3c:	6078      	str	r0, [r7, #4]
1a000a3e:	6039      	str	r1, [r7, #0]
1a000a40:	687b      	ldr	r3, [r7, #4]
1a000a42:	683a      	ldr	r2, [r7, #0]
1a000a44:	615a      	str	r2, [r3, #20]
1a000a46:	bf00      	nop
1a000a48:	370c      	adds	r7, #12
1a000a4a:	46bd      	mov	sp, r7
1a000a4c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a50:	4770      	bx	lr

1a000a52 <Chip_PININT_ClearIntStatus>:
1a000a52:	b480      	push	{r7}
1a000a54:	b083      	sub	sp, #12
1a000a56:	af00      	add	r7, sp, #0
1a000a58:	6078      	str	r0, [r7, #4]
1a000a5a:	6039      	str	r1, [r7, #0]
1a000a5c:	687b      	ldr	r3, [r7, #4]
1a000a5e:	683a      	ldr	r2, [r7, #0]
1a000a60:	625a      	str	r2, [r3, #36]	; 0x24
1a000a62:	bf00      	nop
1a000a64:	370c      	adds	r7, #12
1a000a66:	46bd      	mov	sp, r7
1a000a68:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a6c:	4770      	bx	lr

1a000a6e <RingBuffer_Flush>:
1a000a6e:	b480      	push	{r7}
1a000a70:	b083      	sub	sp, #12
1a000a72:	af00      	add	r7, sp, #0
1a000a74:	6078      	str	r0, [r7, #4]
1a000a76:	687b      	ldr	r3, [r7, #4]
1a000a78:	2200      	movs	r2, #0
1a000a7a:	611a      	str	r2, [r3, #16]
1a000a7c:	687b      	ldr	r3, [r7, #4]
1a000a7e:	691a      	ldr	r2, [r3, #16]
1a000a80:	687b      	ldr	r3, [r7, #4]
1a000a82:	60da      	str	r2, [r3, #12]
1a000a84:	bf00      	nop
1a000a86:	370c      	adds	r7, #12
1a000a88:	46bd      	mov	sp, r7
1a000a8a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a8e:	4770      	bx	lr

1a000a90 <Chip_UART_TXEnable>:
1a000a90:	b480      	push	{r7}
1a000a92:	b083      	sub	sp, #12
1a000a94:	af00      	add	r7, sp, #0
1a000a96:	6078      	str	r0, [r7, #4]
1a000a98:	687b      	ldr	r3, [r7, #4]
1a000a9a:	2201      	movs	r2, #1
1a000a9c:	65da      	str	r2, [r3, #92]	; 0x5c
1a000a9e:	bf00      	nop
1a000aa0:	370c      	adds	r7, #12
1a000aa2:	46bd      	mov	sp, r7
1a000aa4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000aa8:	4770      	bx	lr

1a000aaa <Chip_UART_IntEnable>:
1a000aaa:	b480      	push	{r7}
1a000aac:	b083      	sub	sp, #12
1a000aae:	af00      	add	r7, sp, #0
1a000ab0:	6078      	str	r0, [r7, #4]
1a000ab2:	6039      	str	r1, [r7, #0]
1a000ab4:	687b      	ldr	r3, [r7, #4]
1a000ab6:	685a      	ldr	r2, [r3, #4]
1a000ab8:	683b      	ldr	r3, [r7, #0]
1a000aba:	431a      	orrs	r2, r3
1a000abc:	687b      	ldr	r3, [r7, #4]
1a000abe:	605a      	str	r2, [r3, #4]
1a000ac0:	bf00      	nop
1a000ac2:	370c      	adds	r7, #12
1a000ac4:	46bd      	mov	sp, r7
1a000ac6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000aca:	4770      	bx	lr

1a000acc <Chip_UART_SetupFIFOS>:
1a000acc:	b480      	push	{r7}
1a000ace:	b083      	sub	sp, #12
1a000ad0:	af00      	add	r7, sp, #0
1a000ad2:	6078      	str	r0, [r7, #4]
1a000ad4:	6039      	str	r1, [r7, #0]
1a000ad6:	687b      	ldr	r3, [r7, #4]
1a000ad8:	683a      	ldr	r2, [r7, #0]
1a000ada:	609a      	str	r2, [r3, #8]
1a000adc:	bf00      	nop
1a000ade:	370c      	adds	r7, #12
1a000ae0:	46bd      	mov	sp, r7
1a000ae2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ae6:	4770      	bx	lr

1a000ae8 <Chip_UART_ConfigData>:
1a000ae8:	b480      	push	{r7}
1a000aea:	b083      	sub	sp, #12
1a000aec:	af00      	add	r7, sp, #0
1a000aee:	6078      	str	r0, [r7, #4]
1a000af0:	6039      	str	r1, [r7, #0]
1a000af2:	687b      	ldr	r3, [r7, #4]
1a000af4:	683a      	ldr	r2, [r7, #0]
1a000af6:	60da      	str	r2, [r3, #12]
1a000af8:	bf00      	nop
1a000afa:	370c      	adds	r7, #12
1a000afc:	46bd      	mov	sp, r7
1a000afe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b02:	4770      	bx	lr

1a000b04 <inicializar_sistema>:
1a000b04:	b580      	push	{r7, lr}
1a000b06:	af00      	add	r7, sp, #0
1a000b08:	f000 fa80 	bl	1a00100c <Chip_SetupXtalClocking>
1a000b0c:	f001 fbb4 	bl	1a002278 <SystemCoreClockUpdate>
1a000b10:	4803      	ldr	r0, [pc, #12]	; (1a000b20 <inicializar_sistema+0x1c>)
1a000b12:	f001 fbbd 	bl	1a002290 <Chip_GPIO_Init>
1a000b16:	f000 f955 	bl	1a000dc4 <fpuInit>
1a000b1a:	bf00      	nop
1a000b1c:	bd80      	pop	{r7, pc}
1a000b1e:	bf00      	nop
1a000b20:	400f4000 	.word	0x400f4000

1a000b24 <inicializar_leds>:
1a000b24:	b590      	push	{r4, r7, lr}
1a000b26:	b083      	sub	sp, #12
1a000b28:	af00      	add	r7, sp, #0
1a000b2a:	2300      	movs	r3, #0
1a000b2c:	71fb      	strb	r3, [r7, #7]
1a000b2e:	e04e      	b.n	1a000bce <inicializar_leds+0xaa>
1a000b30:	79fa      	ldrb	r2, [r7, #7]
1a000b32:	492a      	ldr	r1, [pc, #168]	; (1a000bdc <inicializar_leds+0xb8>)
1a000b34:	4613      	mov	r3, r2
1a000b36:	005b      	lsls	r3, r3, #1
1a000b38:	4413      	add	r3, r2
1a000b3a:	005b      	lsls	r3, r3, #1
1a000b3c:	440b      	add	r3, r1
1a000b3e:	7818      	ldrb	r0, [r3, #0]
1a000b40:	79fa      	ldrb	r2, [r7, #7]
1a000b42:	4926      	ldr	r1, [pc, #152]	; (1a000bdc <inicializar_leds+0xb8>)
1a000b44:	4613      	mov	r3, r2
1a000b46:	005b      	lsls	r3, r3, #1
1a000b48:	4413      	add	r3, r2
1a000b4a:	005b      	lsls	r3, r3, #1
1a000b4c:	440b      	add	r3, r1
1a000b4e:	3301      	adds	r3, #1
1a000b50:	781c      	ldrb	r4, [r3, #0]
1a000b52:	79fa      	ldrb	r2, [r7, #7]
1a000b54:	4921      	ldr	r1, [pc, #132]	; (1a000bdc <inicializar_leds+0xb8>)
1a000b56:	4613      	mov	r3, r2
1a000b58:	005b      	lsls	r3, r3, #1
1a000b5a:	4413      	add	r3, r2
1a000b5c:	005b      	lsls	r3, r3, #1
1a000b5e:	440b      	add	r3, r1
1a000b60:	3304      	adds	r3, #4
1a000b62:	881b      	ldrh	r3, [r3, #0]
1a000b64:	461a      	mov	r2, r3
1a000b66:	4621      	mov	r1, r4
1a000b68:	f7ff fe84 	bl	1a000874 <Chip_SCU_PinMuxSet>
1a000b6c:	79fa      	ldrb	r2, [r7, #7]
1a000b6e:	491b      	ldr	r1, [pc, #108]	; (1a000bdc <inicializar_leds+0xb8>)
1a000b70:	4613      	mov	r3, r2
1a000b72:	005b      	lsls	r3, r3, #1
1a000b74:	4413      	add	r3, r2
1a000b76:	005b      	lsls	r3, r3, #1
1a000b78:	440b      	add	r3, r1
1a000b7a:	3302      	adds	r3, #2
1a000b7c:	7818      	ldrb	r0, [r3, #0]
1a000b7e:	79fa      	ldrb	r2, [r7, #7]
1a000b80:	4916      	ldr	r1, [pc, #88]	; (1a000bdc <inicializar_leds+0xb8>)
1a000b82:	4613      	mov	r3, r2
1a000b84:	005b      	lsls	r3, r3, #1
1a000b86:	4413      	add	r3, r2
1a000b88:	005b      	lsls	r3, r3, #1
1a000b8a:	440b      	add	r3, r1
1a000b8c:	3303      	adds	r3, #3
1a000b8e:	781b      	ldrb	r3, [r3, #0]
1a000b90:	461a      	mov	r2, r3
1a000b92:	4601      	mov	r1, r0
1a000b94:	4812      	ldr	r0, [pc, #72]	; (1a000be0 <inicializar_leds+0xbc>)
1a000b96:	f7ff fedf 	bl	1a000958 <Chip_GPIO_SetPinDIROutput>
1a000b9a:	79fa      	ldrb	r2, [r7, #7]
1a000b9c:	490f      	ldr	r1, [pc, #60]	; (1a000bdc <inicializar_leds+0xb8>)
1a000b9e:	4613      	mov	r3, r2
1a000ba0:	005b      	lsls	r3, r3, #1
1a000ba2:	4413      	add	r3, r2
1a000ba4:	005b      	lsls	r3, r3, #1
1a000ba6:	440b      	add	r3, r1
1a000ba8:	3302      	adds	r3, #2
1a000baa:	7818      	ldrb	r0, [r3, #0]
1a000bac:	79fa      	ldrb	r2, [r7, #7]
1a000bae:	490b      	ldr	r1, [pc, #44]	; (1a000bdc <inicializar_leds+0xb8>)
1a000bb0:	4613      	mov	r3, r2
1a000bb2:	005b      	lsls	r3, r3, #1
1a000bb4:	4413      	add	r3, r2
1a000bb6:	005b      	lsls	r3, r3, #1
1a000bb8:	440b      	add	r3, r1
1a000bba:	3303      	adds	r3, #3
1a000bbc:	781b      	ldrb	r3, [r3, #0]
1a000bbe:	461a      	mov	r2, r3
1a000bc0:	4601      	mov	r1, r0
1a000bc2:	4807      	ldr	r0, [pc, #28]	; (1a000be0 <inicializar_leds+0xbc>)
1a000bc4:	f7ff ff07 	bl	1a0009d6 <Chip_GPIO_SetPortOutLow>
1a000bc8:	79fb      	ldrb	r3, [r7, #7]
1a000bca:	3301      	adds	r3, #1
1a000bcc:	71fb      	strb	r3, [r7, #7]
1a000bce:	79fb      	ldrb	r3, [r7, #7]
1a000bd0:	2b05      	cmp	r3, #5
1a000bd2:	d9ad      	bls.n	1a000b30 <inicializar_leds+0xc>
1a000bd4:	bf00      	nop
1a000bd6:	370c      	adds	r7, #12
1a000bd8:	46bd      	mov	sp, r7
1a000bda:	bd90      	pop	{r4, r7, pc}
1a000bdc:	1a002410 	.word	0x1a002410
1a000be0:	400f4000 	.word	0x400f4000

1a000be4 <inicializar_teclado>:
1a000be4:	b590      	push	{r4, r7, lr}
1a000be6:	b083      	sub	sp, #12
1a000be8:	af00      	add	r7, sp, #0
1a000bea:	2300      	movs	r3, #0
1a000bec:	71fb      	strb	r3, [r7, #7]
1a000bee:	e037      	b.n	1a000c60 <inicializar_teclado+0x7c>
1a000bf0:	79fa      	ldrb	r2, [r7, #7]
1a000bf2:	491f      	ldr	r1, [pc, #124]	; (1a000c70 <inicializar_teclado+0x8c>)
1a000bf4:	4613      	mov	r3, r2
1a000bf6:	005b      	lsls	r3, r3, #1
1a000bf8:	4413      	add	r3, r2
1a000bfa:	005b      	lsls	r3, r3, #1
1a000bfc:	440b      	add	r3, r1
1a000bfe:	7818      	ldrb	r0, [r3, #0]
1a000c00:	79fa      	ldrb	r2, [r7, #7]
1a000c02:	491b      	ldr	r1, [pc, #108]	; (1a000c70 <inicializar_teclado+0x8c>)
1a000c04:	4613      	mov	r3, r2
1a000c06:	005b      	lsls	r3, r3, #1
1a000c08:	4413      	add	r3, r2
1a000c0a:	005b      	lsls	r3, r3, #1
1a000c0c:	440b      	add	r3, r1
1a000c0e:	3301      	adds	r3, #1
1a000c10:	781c      	ldrb	r4, [r3, #0]
1a000c12:	79fa      	ldrb	r2, [r7, #7]
1a000c14:	4916      	ldr	r1, [pc, #88]	; (1a000c70 <inicializar_teclado+0x8c>)
1a000c16:	4613      	mov	r3, r2
1a000c18:	005b      	lsls	r3, r3, #1
1a000c1a:	4413      	add	r3, r2
1a000c1c:	005b      	lsls	r3, r3, #1
1a000c1e:	440b      	add	r3, r1
1a000c20:	3304      	adds	r3, #4
1a000c22:	881b      	ldrh	r3, [r3, #0]
1a000c24:	461a      	mov	r2, r3
1a000c26:	4621      	mov	r1, r4
1a000c28:	f7ff fe24 	bl	1a000874 <Chip_SCU_PinMuxSet>
1a000c2c:	79fa      	ldrb	r2, [r7, #7]
1a000c2e:	4910      	ldr	r1, [pc, #64]	; (1a000c70 <inicializar_teclado+0x8c>)
1a000c30:	4613      	mov	r3, r2
1a000c32:	005b      	lsls	r3, r3, #1
1a000c34:	4413      	add	r3, r2
1a000c36:	005b      	lsls	r3, r3, #1
1a000c38:	440b      	add	r3, r1
1a000c3a:	3302      	adds	r3, #2
1a000c3c:	7818      	ldrb	r0, [r3, #0]
1a000c3e:	79fa      	ldrb	r2, [r7, #7]
1a000c40:	490b      	ldr	r1, [pc, #44]	; (1a000c70 <inicializar_teclado+0x8c>)
1a000c42:	4613      	mov	r3, r2
1a000c44:	005b      	lsls	r3, r3, #1
1a000c46:	4413      	add	r3, r2
1a000c48:	005b      	lsls	r3, r3, #1
1a000c4a:	440b      	add	r3, r1
1a000c4c:	3303      	adds	r3, #3
1a000c4e:	781b      	ldrb	r3, [r3, #0]
1a000c50:	461a      	mov	r2, r3
1a000c52:	4601      	mov	r1, r0
1a000c54:	4807      	ldr	r0, [pc, #28]	; (1a000c74 <inicializar_teclado+0x90>)
1a000c56:	f7ff fe9e 	bl	1a000996 <Chip_GPIO_SetPinDIRInput>
1a000c5a:	79fb      	ldrb	r3, [r7, #7]
1a000c5c:	3301      	adds	r3, #1
1a000c5e:	71fb      	strb	r3, [r7, #7]
1a000c60:	79fb      	ldrb	r3, [r7, #7]
1a000c62:	2b03      	cmp	r3, #3
1a000c64:	d9c4      	bls.n	1a000bf0 <inicializar_teclado+0xc>
1a000c66:	bf00      	nop
1a000c68:	370c      	adds	r7, #12
1a000c6a:	46bd      	mov	sp, r7
1a000c6c:	bd90      	pop	{r4, r7, pc}
1a000c6e:	bf00      	nop
1a000c70:	1a002434 	.word	0x1a002434
1a000c74:	400f4000 	.word	0x400f4000

1a000c78 <inicializar_USART>:
1a000c78:	b580      	push	{r7, lr}
1a000c7a:	af00      	add	r7, sp, #0
1a000c7c:	481d      	ldr	r0, [pc, #116]	; (1a000cf4 <inicializar_USART+0x7c>)
1a000c7e:	f000 fb11 	bl	1a0012a4 <Chip_UART_Init>
1a000c82:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a000c86:	481b      	ldr	r0, [pc, #108]	; (1a000cf4 <inicializar_USART+0x7c>)
1a000c88:	f000 fb50 	bl	1a00132c <Chip_UART_SetBaud>
1a000c8c:	2103      	movs	r1, #3
1a000c8e:	4819      	ldr	r0, [pc, #100]	; (1a000cf4 <inicializar_USART+0x7c>)
1a000c90:	f7ff ff2a 	bl	1a000ae8 <Chip_UART_ConfigData>
1a000c94:	4817      	ldr	r0, [pc, #92]	; (1a000cf4 <inicializar_USART+0x7c>)
1a000c96:	f7ff fefb 	bl	1a000a90 <Chip_UART_TXEnable>
1a000c9a:	21c7      	movs	r1, #199	; 0xc7
1a000c9c:	4815      	ldr	r0, [pc, #84]	; (1a000cf4 <inicializar_USART+0x7c>)
1a000c9e:	f7ff ff15 	bl	1a000acc <Chip_UART_SetupFIFOS>
1a000ca2:	2107      	movs	r1, #7
1a000ca4:	4813      	ldr	r0, [pc, #76]	; (1a000cf4 <inicializar_USART+0x7c>)
1a000ca6:	f7ff ff00 	bl	1a000aaa <Chip_UART_IntEnable>
1a000caa:	f44f 7300 	mov.w	r3, #512	; 0x200
1a000cae:	2201      	movs	r2, #1
1a000cb0:	4911      	ldr	r1, [pc, #68]	; (1a000cf8 <inicializar_USART+0x80>)
1a000cb2:	4812      	ldr	r0, [pc, #72]	; (1a000cfc <inicializar_USART+0x84>)
1a000cb4:	f000 fc90 	bl	1a0015d8 <RingBuffer_Init>
1a000cb8:	f44f 7300 	mov.w	r3, #512	; 0x200
1a000cbc:	2201      	movs	r2, #1
1a000cbe:	4910      	ldr	r1, [pc, #64]	; (1a000d00 <inicializar_USART+0x88>)
1a000cc0:	4810      	ldr	r0, [pc, #64]	; (1a000d04 <inicializar_USART+0x8c>)
1a000cc2:	f000 fc89 	bl	1a0015d8 <RingBuffer_Init>
1a000cc6:	480d      	ldr	r0, [pc, #52]	; (1a000cfc <inicializar_USART+0x84>)
1a000cc8:	f7ff fed1 	bl	1a000a6e <RingBuffer_Flush>
1a000ccc:	480d      	ldr	r0, [pc, #52]	; (1a000d04 <inicializar_USART+0x8c>)
1a000cce:	f7ff fece 	bl	1a000a6e <RingBuffer_Flush>
1a000cd2:	201a      	movs	r0, #26
1a000cd4:	f7ff fd9a 	bl	1a00080c <NVIC_EnableIRQ>
1a000cd8:	2306      	movs	r3, #6
1a000cda:	2218      	movs	r2, #24
1a000cdc:	2101      	movs	r1, #1
1a000cde:	2007      	movs	r0, #7
1a000ce0:	f7ff fde2 	bl	1a0008a8 <Chip_SCU_PinMux>
1a000ce4:	2306      	movs	r3, #6
1a000ce6:	22d0      	movs	r2, #208	; 0xd0
1a000ce8:	2102      	movs	r1, #2
1a000cea:	2007      	movs	r0, #7
1a000cec:	f7ff fddc 	bl	1a0008a8 <Chip_SCU_PinMux>
1a000cf0:	bf00      	nop
1a000cf2:	bd80      	pop	{r7, pc}
1a000cf4:	400c1000 	.word	0x400c1000
1a000cf8:	10000238 	.word	0x10000238
1a000cfc:	10000224 	.word	0x10000224
1a000d00:	10000024 	.word	0x10000024
1a000d04:	10000010 	.word	0x10000010

1a000d08 <init_interrupciones>:
1a000d08:	b580      	push	{r7, lr}
1a000d0a:	af00      	add	r7, sp, #0
1a000d0c:	4823      	ldr	r0, [pc, #140]	; (1a000d9c <init_interrupciones+0x94>)
1a000d0e:	f7ff fe76 	bl	1a0009fe <Chip_PININT_Init>
1a000d12:	2204      	movs	r2, #4
1a000d14:	2100      	movs	r1, #0
1a000d16:	2001      	movs	r0, #1
1a000d18:	f7ff fde4 	bl	1a0008e4 <Chip_SCU_GPIOIntPinSel>
1a000d1c:	2208      	movs	r2, #8
1a000d1e:	2100      	movs	r1, #0
1a000d20:	2002      	movs	r0, #2
1a000d22:	f7ff fddf 	bl	1a0008e4 <Chip_SCU_GPIOIntPinSel>
1a000d26:	2209      	movs	r2, #9
1a000d28:	2101      	movs	r1, #1
1a000d2a:	2004      	movs	r0, #4
1a000d2c:	f7ff fdda 	bl	1a0008e4 <Chip_SCU_GPIOIntPinSel>
1a000d30:	2102      	movs	r1, #2
1a000d32:	481a      	ldr	r0, [pc, #104]	; (1a000d9c <init_interrupciones+0x94>)
1a000d34:	f7ff fe8d 	bl	1a000a52 <Chip_PININT_ClearIntStatus>
1a000d38:	2104      	movs	r1, #4
1a000d3a:	4818      	ldr	r0, [pc, #96]	; (1a000d9c <init_interrupciones+0x94>)
1a000d3c:	f7ff fe89 	bl	1a000a52 <Chip_PININT_ClearIntStatus>
1a000d40:	2110      	movs	r1, #16
1a000d42:	4816      	ldr	r0, [pc, #88]	; (1a000d9c <init_interrupciones+0x94>)
1a000d44:	f7ff fe85 	bl	1a000a52 <Chip_PININT_ClearIntStatus>
1a000d48:	2102      	movs	r1, #2
1a000d4a:	4814      	ldr	r0, [pc, #80]	; (1a000d9c <init_interrupciones+0x94>)
1a000d4c:	f7ff fe61 	bl	1a000a12 <Chip_PININT_SetPinModeEdge>
1a000d50:	2104      	movs	r1, #4
1a000d52:	4812      	ldr	r0, [pc, #72]	; (1a000d9c <init_interrupciones+0x94>)
1a000d54:	f7ff fe5d 	bl	1a000a12 <Chip_PININT_SetPinModeEdge>
1a000d58:	2110      	movs	r1, #16
1a000d5a:	4810      	ldr	r0, [pc, #64]	; (1a000d9c <init_interrupciones+0x94>)
1a000d5c:	f7ff fe59 	bl	1a000a12 <Chip_PININT_SetPinModeEdge>
1a000d60:	2102      	movs	r1, #2
1a000d62:	480e      	ldr	r0, [pc, #56]	; (1a000d9c <init_interrupciones+0x94>)
1a000d64:	f7ff fe67 	bl	1a000a36 <Chip_PININT_EnableIntLow>
1a000d68:	2104      	movs	r1, #4
1a000d6a:	480c      	ldr	r0, [pc, #48]	; (1a000d9c <init_interrupciones+0x94>)
1a000d6c:	f7ff fe63 	bl	1a000a36 <Chip_PININT_EnableIntLow>
1a000d70:	2110      	movs	r1, #16
1a000d72:	480a      	ldr	r0, [pc, #40]	; (1a000d9c <init_interrupciones+0x94>)
1a000d74:	f7ff fe5f 	bl	1a000a36 <Chip_PININT_EnableIntLow>
1a000d78:	2021      	movs	r0, #33	; 0x21
1a000d7a:	f7ff fd61 	bl	1a000840 <NVIC_ClearPendingIRQ>
1a000d7e:	2022      	movs	r0, #34	; 0x22
1a000d80:	f7ff fd5e 	bl	1a000840 <NVIC_ClearPendingIRQ>
1a000d84:	2024      	movs	r0, #36	; 0x24
1a000d86:	f7ff fd5b 	bl	1a000840 <NVIC_ClearPendingIRQ>
1a000d8a:	2022      	movs	r0, #34	; 0x22
1a000d8c:	f7ff fd3e 	bl	1a00080c <NVIC_EnableIRQ>
1a000d90:	2024      	movs	r0, #36	; 0x24
1a000d92:	f7ff fd3b 	bl	1a00080c <NVIC_EnableIRQ>
1a000d96:	bf00      	nop
1a000d98:	bd80      	pop	{r7, pc}
1a000d9a:	bf00      	nop
1a000d9c:	40087000 	.word	0x40087000

1a000da0 <displayCounter>:
1a000da0:	b580      	push	{r7, lr}
1a000da2:	b082      	sub	sp, #8
1a000da4:	af00      	add	r7, sp, #0
1a000da6:	4603      	mov	r3, r0
1a000da8:	71fb      	strb	r3, [r7, #7]
1a000daa:	79fb      	ldrb	r3, [r7, #7]
1a000dac:	009b      	lsls	r3, r3, #2
1a000dae:	b2db      	uxtb	r3, r3
1a000db0:	f003 033c 	and.w	r3, r3, #60	; 0x3c
1a000db4:	b2db      	uxtb	r3, r3
1a000db6:	4618      	mov	r0, r3
1a000db8:	f7ff fb08 	bl	1a0003cc <setLedFromMsk>
1a000dbc:	bf00      	nop
1a000dbe:	3708      	adds	r7, #8
1a000dc0:	46bd      	mov	sp, r7
1a000dc2:	bd80      	pop	{r7, pc}

1a000dc4 <fpuInit>:
1a000dc4:	b480      	push	{r7}
1a000dc6:	b089      	sub	sp, #36	; 0x24
1a000dc8:	af00      	add	r7, sp, #0
1a000dca:	4b16      	ldr	r3, [pc, #88]	; (1a000e24 <fpuInit+0x60>)
1a000dcc:	61fb      	str	r3, [r7, #28]
1a000dce:	4b16      	ldr	r3, [pc, #88]	; (1a000e28 <fpuInit+0x64>)
1a000dd0:	61bb      	str	r3, [r7, #24]
1a000dd2:	4b16      	ldr	r3, [pc, #88]	; (1a000e2c <fpuInit+0x68>)
1a000dd4:	617b      	str	r3, [r7, #20]
1a000dd6:	2300      	movs	r3, #0
1a000dd8:	74fb      	strb	r3, [r7, #19]
1a000dda:	69bb      	ldr	r3, [r7, #24]
1a000ddc:	681b      	ldr	r3, [r3, #0]
1a000dde:	60bb      	str	r3, [r7, #8]
1a000de0:	697b      	ldr	r3, [r7, #20]
1a000de2:	681b      	ldr	r3, [r3, #0]
1a000de4:	607b      	str	r3, [r7, #4]
1a000de6:	68bb      	ldr	r3, [r7, #8]
1a000de8:	4a11      	ldr	r2, [pc, #68]	; (1a000e30 <fpuInit+0x6c>)
1a000dea:	4293      	cmp	r3, r2
1a000dec:	d105      	bne.n	1a000dfa <fpuInit+0x36>
1a000dee:	687b      	ldr	r3, [r7, #4]
1a000df0:	4a10      	ldr	r2, [pc, #64]	; (1a000e34 <fpuInit+0x70>)
1a000df2:	4293      	cmp	r3, r2
1a000df4:	d101      	bne.n	1a000dfa <fpuInit+0x36>
1a000df6:	2301      	movs	r3, #1
1a000df8:	e000      	b.n	1a000dfc <fpuInit+0x38>
1a000dfa:	2300      	movs	r3, #0
1a000dfc:	74fb      	strb	r3, [r7, #19]
1a000dfe:	7cfb      	ldrb	r3, [r7, #19]
1a000e00:	2b00      	cmp	r3, #0
1a000e02:	d009      	beq.n	1a000e18 <fpuInit+0x54>
1a000e04:	69fb      	ldr	r3, [r7, #28]
1a000e06:	681b      	ldr	r3, [r3, #0]
1a000e08:	60fb      	str	r3, [r7, #12]
1a000e0a:	68fb      	ldr	r3, [r7, #12]
1a000e0c:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a000e10:	60fb      	str	r3, [r7, #12]
1a000e12:	68fa      	ldr	r2, [r7, #12]
1a000e14:	69fb      	ldr	r3, [r7, #28]
1a000e16:	601a      	str	r2, [r3, #0]
1a000e18:	bf00      	nop
1a000e1a:	3724      	adds	r7, #36	; 0x24
1a000e1c:	46bd      	mov	sp, r7
1a000e1e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e22:	4770      	bx	lr
1a000e24:	e000ed88 	.word	0xe000ed88
1a000e28:	e000ef40 	.word	0xe000ef40
1a000e2c:	e000ef44 	.word	0xe000ef44
1a000e30:	10110021 	.word	0x10110021
1a000e34:	11000011 	.word	0x11000011

1a000e38 <Chip_Clock_DisableMainPLL>:
1a000e38:	b480      	push	{r7}
1a000e3a:	af00      	add	r7, sp, #0
1a000e3c:	4b05      	ldr	r3, [pc, #20]	; (1a000e54 <Chip_Clock_DisableMainPLL+0x1c>)
1a000e3e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000e40:	4a04      	ldr	r2, [pc, #16]	; (1a000e54 <Chip_Clock_DisableMainPLL+0x1c>)
1a000e42:	f043 0301 	orr.w	r3, r3, #1
1a000e46:	6453      	str	r3, [r2, #68]	; 0x44
1a000e48:	bf00      	nop
1a000e4a:	46bd      	mov	sp, r7
1a000e4c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e50:	4770      	bx	lr
1a000e52:	bf00      	nop
1a000e54:	40050000 	.word	0x40050000

1a000e58 <Chip_Clock_SetupMainPLL>:
1a000e58:	b480      	push	{r7}
1a000e5a:	b083      	sub	sp, #12
1a000e5c:	af00      	add	r7, sp, #0
1a000e5e:	6078      	str	r0, [r7, #4]
1a000e60:	687b      	ldr	r3, [r7, #4]
1a000e62:	681b      	ldr	r3, [r3, #0]
1a000e64:	461a      	mov	r2, r3
1a000e66:	687b      	ldr	r3, [r7, #4]
1a000e68:	791b      	ldrb	r3, [r3, #4]
1a000e6a:	061b      	lsls	r3, r3, #24
1a000e6c:	4313      	orrs	r3, r2
1a000e6e:	687a      	ldr	r2, [r7, #4]
1a000e70:	6912      	ldr	r2, [r2, #16]
1a000e72:	0412      	lsls	r2, r2, #16
1a000e74:	4313      	orrs	r3, r2
1a000e76:	687a      	ldr	r2, [r7, #4]
1a000e78:	6892      	ldr	r2, [r2, #8]
1a000e7a:	0312      	lsls	r2, r2, #12
1a000e7c:	4313      	orrs	r3, r2
1a000e7e:	687a      	ldr	r2, [r7, #4]
1a000e80:	68d2      	ldr	r2, [r2, #12]
1a000e82:	0212      	lsls	r2, r2, #8
1a000e84:	4313      	orrs	r3, r2
1a000e86:	4a05      	ldr	r2, [pc, #20]	; (1a000e9c <Chip_Clock_SetupMainPLL+0x44>)
1a000e88:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a000e8c:	6453      	str	r3, [r2, #68]	; 0x44
1a000e8e:	bf00      	nop
1a000e90:	370c      	adds	r7, #12
1a000e92:	46bd      	mov	sp, r7
1a000e94:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e98:	4770      	bx	lr
1a000e9a:	bf00      	nop
1a000e9c:	40050000 	.word	0x40050000

1a000ea0 <Chip_Clock_MainPLLLocked>:
1a000ea0:	b480      	push	{r7}
1a000ea2:	af00      	add	r7, sp, #0
1a000ea4:	4b06      	ldr	r3, [pc, #24]	; (1a000ec0 <Chip_Clock_MainPLLLocked+0x20>)
1a000ea6:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a000ea8:	f003 0301 	and.w	r3, r3, #1
1a000eac:	2b00      	cmp	r3, #0
1a000eae:	bf14      	ite	ne
1a000eb0:	2301      	movne	r3, #1
1a000eb2:	2300      	moveq	r3, #0
1a000eb4:	b2db      	uxtb	r3, r3
1a000eb6:	4618      	mov	r0, r3
1a000eb8:	46bd      	mov	sp, r7
1a000eba:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ebe:	4770      	bx	lr
1a000ec0:	40050000 	.word	0x40050000

1a000ec4 <Chip_SetupCoreClock>:
1a000ec4:	b590      	push	{r4, r7, lr}
1a000ec6:	b08f      	sub	sp, #60	; 0x3c
1a000ec8:	af00      	add	r7, sp, #0
1a000eca:	4603      	mov	r3, r0
1a000ecc:	6039      	str	r1, [r7, #0]
1a000ece:	71fb      	strb	r3, [r7, #7]
1a000ed0:	4613      	mov	r3, r2
1a000ed2:	71bb      	strb	r3, [r7, #6]
1a000ed4:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a000ed8:	62bb      	str	r3, [r7, #40]	; 0x28
1a000eda:	2300      	movs	r3, #0
1a000edc:	633b      	str	r3, [r7, #48]	; 0x30
1a000ede:	2300      	movs	r3, #0
1a000ee0:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000ee2:	79fb      	ldrb	r3, [r7, #7]
1a000ee4:	2b06      	cmp	r3, #6
1a000ee6:	d101      	bne.n	1a000eec <Chip_SetupCoreClock+0x28>
1a000ee8:	f000 fede 	bl	1a001ca8 <Chip_Clock_EnableCrystal>
1a000eec:	79f9      	ldrb	r1, [r7, #7]
1a000eee:	2300      	movs	r3, #0
1a000ef0:	2201      	movs	r2, #1
1a000ef2:	2004      	movs	r0, #4
1a000ef4:	f001 f8ca 	bl	1a00208c <Chip_Clock_SetBaseClock>
1a000ef8:	f7ff ff9e 	bl	1a000e38 <Chip_Clock_DisableMainPLL>
1a000efc:	79fb      	ldrb	r3, [r7, #7]
1a000efe:	733b      	strb	r3, [r7, #12]
1a000f00:	f107 0308 	add.w	r3, r7, #8
1a000f04:	4619      	mov	r1, r3
1a000f06:	6838      	ldr	r0, [r7, #0]
1a000f08:	f000 ff06 	bl	1a001d18 <Chip_Clock_CalcMainPLLValue>
1a000f0c:	683b      	ldr	r3, [r7, #0]
1a000f0e:	4a3d      	ldr	r2, [pc, #244]	; (1a001004 <Chip_SetupCoreClock+0x140>)
1a000f10:	4293      	cmp	r3, r2
1a000f12:	d916      	bls.n	1a000f42 <Chip_SetupCoreClock+0x7e>
1a000f14:	68bb      	ldr	r3, [r7, #8]
1a000f16:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a000f1a:	2b00      	cmp	r3, #0
1a000f1c:	d000      	beq.n	1a000f20 <Chip_SetupCoreClock+0x5c>
1a000f1e:	e7fe      	b.n	1a000f1e <Chip_SetupCoreClock+0x5a>
1a000f20:	68bb      	ldr	r3, [r7, #8]
1a000f22:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a000f26:	2b00      	cmp	r3, #0
1a000f28:	d006      	beq.n	1a000f38 <Chip_SetupCoreClock+0x74>
1a000f2a:	2301      	movs	r3, #1
1a000f2c:	633b      	str	r3, [r7, #48]	; 0x30
1a000f2e:	68bb      	ldr	r3, [r7, #8]
1a000f30:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a000f34:	60bb      	str	r3, [r7, #8]
1a000f36:	e004      	b.n	1a000f42 <Chip_SetupCoreClock+0x7e>
1a000f38:	2301      	movs	r3, #1
1a000f3a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000f3c:	697b      	ldr	r3, [r7, #20]
1a000f3e:	3301      	adds	r3, #1
1a000f40:	617b      	str	r3, [r7, #20]
1a000f42:	f107 0308 	add.w	r3, r7, #8
1a000f46:	4618      	mov	r0, r3
1a000f48:	f7ff ff86 	bl	1a000e58 <Chip_Clock_SetupMainPLL>
1a000f4c:	bf00      	nop
1a000f4e:	f7ff ffa7 	bl	1a000ea0 <Chip_Clock_MainPLLLocked>
1a000f52:	4603      	mov	r3, r0
1a000f54:	2b00      	cmp	r3, #0
1a000f56:	d0fa      	beq.n	1a000f4e <Chip_SetupCoreClock+0x8a>
1a000f58:	2300      	movs	r3, #0
1a000f5a:	2201      	movs	r2, #1
1a000f5c:	2109      	movs	r1, #9
1a000f5e:	2004      	movs	r0, #4
1a000f60:	f001 f894 	bl	1a00208c <Chip_Clock_SetBaseClock>
1a000f64:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a000f66:	2b00      	cmp	r3, #0
1a000f68:	d012      	beq.n	1a000f90 <Chip_SetupCoreClock+0xcc>
1a000f6a:	f641 3358 	movw	r3, #7000	; 0x1b58
1a000f6e:	62bb      	str	r3, [r7, #40]	; 0x28
1a000f70:	bf00      	nop
1a000f72:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000f74:	1e5a      	subs	r2, r3, #1
1a000f76:	62ba      	str	r2, [r7, #40]	; 0x28
1a000f78:	2b00      	cmp	r3, #0
1a000f7a:	d1fa      	bne.n	1a000f72 <Chip_SetupCoreClock+0xae>
1a000f7c:	68bb      	ldr	r3, [r7, #8]
1a000f7e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a000f82:	60bb      	str	r3, [r7, #8]
1a000f84:	f107 0308 	add.w	r3, r7, #8
1a000f88:	4618      	mov	r0, r3
1a000f8a:	f7ff ff65 	bl	1a000e58 <Chip_Clock_SetupMainPLL>
1a000f8e:	e013      	b.n	1a000fb8 <Chip_SetupCoreClock+0xf4>
1a000f90:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000f92:	2b00      	cmp	r3, #0
1a000f94:	d010      	beq.n	1a000fb8 <Chip_SetupCoreClock+0xf4>
1a000f96:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a000f9a:	62bb      	str	r3, [r7, #40]	; 0x28
1a000f9c:	bf00      	nop
1a000f9e:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000fa0:	1e5a      	subs	r2, r3, #1
1a000fa2:	62ba      	str	r2, [r7, #40]	; 0x28
1a000fa4:	2b00      	cmp	r3, #0
1a000fa6:	d1fa      	bne.n	1a000f9e <Chip_SetupCoreClock+0xda>
1a000fa8:	697b      	ldr	r3, [r7, #20]
1a000faa:	3b01      	subs	r3, #1
1a000fac:	617b      	str	r3, [r7, #20]
1a000fae:	f107 0308 	add.w	r3, r7, #8
1a000fb2:	4618      	mov	r0, r3
1a000fb4:	f7ff ff50 	bl	1a000e58 <Chip_Clock_SetupMainPLL>
1a000fb8:	79bb      	ldrb	r3, [r7, #6]
1a000fba:	2b00      	cmp	r3, #0
1a000fbc:	d01e      	beq.n	1a000ffc <Chip_SetupCoreClock+0x138>
1a000fbe:	2300      	movs	r3, #0
1a000fc0:	637b      	str	r3, [r7, #52]	; 0x34
1a000fc2:	e018      	b.n	1a000ff6 <Chip_SetupCoreClock+0x132>
1a000fc4:	4a10      	ldr	r2, [pc, #64]	; (1a001008 <Chip_SetupCoreClock+0x144>)
1a000fc6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000fc8:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a000fcc:	4a0e      	ldr	r2, [pc, #56]	; (1a001008 <Chip_SetupCoreClock+0x144>)
1a000fce:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000fd0:	009b      	lsls	r3, r3, #2
1a000fd2:	4413      	add	r3, r2
1a000fd4:	7859      	ldrb	r1, [r3, #1]
1a000fd6:	4a0c      	ldr	r2, [pc, #48]	; (1a001008 <Chip_SetupCoreClock+0x144>)
1a000fd8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000fda:	009b      	lsls	r3, r3, #2
1a000fdc:	4413      	add	r3, r2
1a000fde:	789c      	ldrb	r4, [r3, #2]
1a000fe0:	4a09      	ldr	r2, [pc, #36]	; (1a001008 <Chip_SetupCoreClock+0x144>)
1a000fe2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000fe4:	009b      	lsls	r3, r3, #2
1a000fe6:	4413      	add	r3, r2
1a000fe8:	78db      	ldrb	r3, [r3, #3]
1a000fea:	4622      	mov	r2, r4
1a000fec:	f001 f84e 	bl	1a00208c <Chip_Clock_SetBaseClock>
1a000ff0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ff2:	3301      	adds	r3, #1
1a000ff4:	637b      	str	r3, [r7, #52]	; 0x34
1a000ff6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ff8:	2b11      	cmp	r3, #17
1a000ffa:	d9e3      	bls.n	1a000fc4 <Chip_SetupCoreClock+0x100>
1a000ffc:	bf00      	nop
1a000ffe:	373c      	adds	r7, #60	; 0x3c
1a001000:	46bd      	mov	sp, r7
1a001002:	bd90      	pop	{r4, r7, pc}
1a001004:	068e7780 	.word	0x068e7780
1a001008:	1a00244c 	.word	0x1a00244c

1a00100c <Chip_SetupXtalClocking>:
1a00100c:	b580      	push	{r7, lr}
1a00100e:	af00      	add	r7, sp, #0
1a001010:	2201      	movs	r2, #1
1a001012:	4903      	ldr	r1, [pc, #12]	; (1a001020 <Chip_SetupXtalClocking+0x14>)
1a001014:	2006      	movs	r0, #6
1a001016:	f7ff ff55 	bl	1a000ec4 <Chip_SetupCoreClock>
1a00101a:	bf00      	nop
1a00101c:	bd80      	pop	{r7, pc}
1a00101e:	bf00      	nop
1a001020:	0c28cb00 	.word	0x0c28cb00

1a001024 <RingBuffer_IsEmpty>:
1a001024:	b480      	push	{r7}
1a001026:	b083      	sub	sp, #12
1a001028:	af00      	add	r7, sp, #0
1a00102a:	6078      	str	r0, [r7, #4]
1a00102c:	687b      	ldr	r3, [r7, #4]
1a00102e:	330c      	adds	r3, #12
1a001030:	681a      	ldr	r2, [r3, #0]
1a001032:	687b      	ldr	r3, [r7, #4]
1a001034:	3310      	adds	r3, #16
1a001036:	681b      	ldr	r3, [r3, #0]
1a001038:	429a      	cmp	r2, r3
1a00103a:	bf0c      	ite	eq
1a00103c:	2301      	moveq	r3, #1
1a00103e:	2300      	movne	r3, #0
1a001040:	b2db      	uxtb	r3, r3
1a001042:	4618      	mov	r0, r3
1a001044:	370c      	adds	r7, #12
1a001046:	46bd      	mov	sp, r7
1a001048:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00104c:	4770      	bx	lr

1a00104e <Chip_UART_TXDisable>:
1a00104e:	b480      	push	{r7}
1a001050:	b083      	sub	sp, #12
1a001052:	af00      	add	r7, sp, #0
1a001054:	6078      	str	r0, [r7, #4]
1a001056:	687b      	ldr	r3, [r7, #4]
1a001058:	2200      	movs	r2, #0
1a00105a:	65da      	str	r2, [r3, #92]	; 0x5c
1a00105c:	bf00      	nop
1a00105e:	370c      	adds	r7, #12
1a001060:	46bd      	mov	sp, r7
1a001062:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001066:	4770      	bx	lr

1a001068 <Chip_UART_SendByte>:
1a001068:	b480      	push	{r7}
1a00106a:	b083      	sub	sp, #12
1a00106c:	af00      	add	r7, sp, #0
1a00106e:	6078      	str	r0, [r7, #4]
1a001070:	460b      	mov	r3, r1
1a001072:	70fb      	strb	r3, [r7, #3]
1a001074:	78fa      	ldrb	r2, [r7, #3]
1a001076:	687b      	ldr	r3, [r7, #4]
1a001078:	601a      	str	r2, [r3, #0]
1a00107a:	bf00      	nop
1a00107c:	370c      	adds	r7, #12
1a00107e:	46bd      	mov	sp, r7
1a001080:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001084:	4770      	bx	lr

1a001086 <Chip_UART_ReadByte>:
1a001086:	b480      	push	{r7}
1a001088:	b083      	sub	sp, #12
1a00108a:	af00      	add	r7, sp, #0
1a00108c:	6078      	str	r0, [r7, #4]
1a00108e:	687b      	ldr	r3, [r7, #4]
1a001090:	681b      	ldr	r3, [r3, #0]
1a001092:	b2db      	uxtb	r3, r3
1a001094:	4618      	mov	r0, r3
1a001096:	370c      	adds	r7, #12
1a001098:	46bd      	mov	sp, r7
1a00109a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00109e:	4770      	bx	lr

1a0010a0 <Chip_UART_IntEnable>:
1a0010a0:	b480      	push	{r7}
1a0010a2:	b083      	sub	sp, #12
1a0010a4:	af00      	add	r7, sp, #0
1a0010a6:	6078      	str	r0, [r7, #4]
1a0010a8:	6039      	str	r1, [r7, #0]
1a0010aa:	687b      	ldr	r3, [r7, #4]
1a0010ac:	685a      	ldr	r2, [r3, #4]
1a0010ae:	683b      	ldr	r3, [r7, #0]
1a0010b0:	431a      	orrs	r2, r3
1a0010b2:	687b      	ldr	r3, [r7, #4]
1a0010b4:	605a      	str	r2, [r3, #4]
1a0010b6:	bf00      	nop
1a0010b8:	370c      	adds	r7, #12
1a0010ba:	46bd      	mov	sp, r7
1a0010bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010c0:	4770      	bx	lr

1a0010c2 <Chip_UART_IntDisable>:
1a0010c2:	b480      	push	{r7}
1a0010c4:	b083      	sub	sp, #12
1a0010c6:	af00      	add	r7, sp, #0
1a0010c8:	6078      	str	r0, [r7, #4]
1a0010ca:	6039      	str	r1, [r7, #0]
1a0010cc:	687b      	ldr	r3, [r7, #4]
1a0010ce:	685a      	ldr	r2, [r3, #4]
1a0010d0:	683b      	ldr	r3, [r7, #0]
1a0010d2:	43db      	mvns	r3, r3
1a0010d4:	401a      	ands	r2, r3
1a0010d6:	687b      	ldr	r3, [r7, #4]
1a0010d8:	605a      	str	r2, [r3, #4]
1a0010da:	bf00      	nop
1a0010dc:	370c      	adds	r7, #12
1a0010de:	46bd      	mov	sp, r7
1a0010e0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010e4:	4770      	bx	lr

1a0010e6 <Chip_UART_ReadIntIDReg>:
1a0010e6:	b480      	push	{r7}
1a0010e8:	b083      	sub	sp, #12
1a0010ea:	af00      	add	r7, sp, #0
1a0010ec:	6078      	str	r0, [r7, #4]
1a0010ee:	687b      	ldr	r3, [r7, #4]
1a0010f0:	689b      	ldr	r3, [r3, #8]
1a0010f2:	4618      	mov	r0, r3
1a0010f4:	370c      	adds	r7, #12
1a0010f6:	46bd      	mov	sp, r7
1a0010f8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010fc:	4770      	bx	lr

1a0010fe <Chip_UART_SetupFIFOS>:
1a0010fe:	b480      	push	{r7}
1a001100:	b083      	sub	sp, #12
1a001102:	af00      	add	r7, sp, #0
1a001104:	6078      	str	r0, [r7, #4]
1a001106:	6039      	str	r1, [r7, #0]
1a001108:	687b      	ldr	r3, [r7, #4]
1a00110a:	683a      	ldr	r2, [r7, #0]
1a00110c:	609a      	str	r2, [r3, #8]
1a00110e:	bf00      	nop
1a001110:	370c      	adds	r7, #12
1a001112:	46bd      	mov	sp, r7
1a001114:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001118:	4770      	bx	lr

1a00111a <Chip_UART_ConfigData>:
1a00111a:	b480      	push	{r7}
1a00111c:	b083      	sub	sp, #12
1a00111e:	af00      	add	r7, sp, #0
1a001120:	6078      	str	r0, [r7, #4]
1a001122:	6039      	str	r1, [r7, #0]
1a001124:	687b      	ldr	r3, [r7, #4]
1a001126:	683a      	ldr	r2, [r7, #0]
1a001128:	60da      	str	r2, [r3, #12]
1a00112a:	bf00      	nop
1a00112c:	370c      	adds	r7, #12
1a00112e:	46bd      	mov	sp, r7
1a001130:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001134:	4770      	bx	lr

1a001136 <Chip_UART_EnableDivisorAccess>:
1a001136:	b480      	push	{r7}
1a001138:	b083      	sub	sp, #12
1a00113a:	af00      	add	r7, sp, #0
1a00113c:	6078      	str	r0, [r7, #4]
1a00113e:	687b      	ldr	r3, [r7, #4]
1a001140:	68db      	ldr	r3, [r3, #12]
1a001142:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a001146:	687b      	ldr	r3, [r7, #4]
1a001148:	60da      	str	r2, [r3, #12]
1a00114a:	bf00      	nop
1a00114c:	370c      	adds	r7, #12
1a00114e:	46bd      	mov	sp, r7
1a001150:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001154:	4770      	bx	lr

1a001156 <Chip_UART_DisableDivisorAccess>:
1a001156:	b480      	push	{r7}
1a001158:	b083      	sub	sp, #12
1a00115a:	af00      	add	r7, sp, #0
1a00115c:	6078      	str	r0, [r7, #4]
1a00115e:	687b      	ldr	r3, [r7, #4]
1a001160:	68db      	ldr	r3, [r3, #12]
1a001162:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a001166:	687b      	ldr	r3, [r7, #4]
1a001168:	60da      	str	r2, [r3, #12]
1a00116a:	bf00      	nop
1a00116c:	370c      	adds	r7, #12
1a00116e:	46bd      	mov	sp, r7
1a001170:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001174:	4770      	bx	lr

1a001176 <Chip_UART_SetDivisorLatches>:
1a001176:	b480      	push	{r7}
1a001178:	b083      	sub	sp, #12
1a00117a:	af00      	add	r7, sp, #0
1a00117c:	6078      	str	r0, [r7, #4]
1a00117e:	460b      	mov	r3, r1
1a001180:	70fb      	strb	r3, [r7, #3]
1a001182:	4613      	mov	r3, r2
1a001184:	70bb      	strb	r3, [r7, #2]
1a001186:	78fa      	ldrb	r2, [r7, #3]
1a001188:	687b      	ldr	r3, [r7, #4]
1a00118a:	601a      	str	r2, [r3, #0]
1a00118c:	78ba      	ldrb	r2, [r7, #2]
1a00118e:	687b      	ldr	r3, [r7, #4]
1a001190:	605a      	str	r2, [r3, #4]
1a001192:	bf00      	nop
1a001194:	370c      	adds	r7, #12
1a001196:	46bd      	mov	sp, r7
1a001198:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00119c:	4770      	bx	lr

1a00119e <Chip_UART_ReadLineStatus>:
1a00119e:	b480      	push	{r7}
1a0011a0:	b083      	sub	sp, #12
1a0011a2:	af00      	add	r7, sp, #0
1a0011a4:	6078      	str	r0, [r7, #4]
1a0011a6:	687b      	ldr	r3, [r7, #4]
1a0011a8:	695b      	ldr	r3, [r3, #20]
1a0011aa:	4618      	mov	r0, r3
1a0011ac:	370c      	adds	r7, #12
1a0011ae:	46bd      	mov	sp, r7
1a0011b0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011b4:	4770      	bx	lr

1a0011b6 <Chip_UART_SetAutoBaudReg>:
1a0011b6:	b480      	push	{r7}
1a0011b8:	b083      	sub	sp, #12
1a0011ba:	af00      	add	r7, sp, #0
1a0011bc:	6078      	str	r0, [r7, #4]
1a0011be:	6039      	str	r1, [r7, #0]
1a0011c0:	687b      	ldr	r3, [r7, #4]
1a0011c2:	6a1a      	ldr	r2, [r3, #32]
1a0011c4:	683b      	ldr	r3, [r7, #0]
1a0011c6:	431a      	orrs	r2, r3
1a0011c8:	687b      	ldr	r3, [r7, #4]
1a0011ca:	621a      	str	r2, [r3, #32]
1a0011cc:	bf00      	nop
1a0011ce:	370c      	adds	r7, #12
1a0011d0:	46bd      	mov	sp, r7
1a0011d2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011d6:	4770      	bx	lr

1a0011d8 <Chip_UART_GetIndex>:
1a0011d8:	b480      	push	{r7}
1a0011da:	b085      	sub	sp, #20
1a0011dc:	af00      	add	r7, sp, #0
1a0011de:	6078      	str	r0, [r7, #4]
1a0011e0:	687b      	ldr	r3, [r7, #4]
1a0011e2:	60fb      	str	r3, [r7, #12]
1a0011e4:	68fb      	ldr	r3, [r7, #12]
1a0011e6:	4a10      	ldr	r2, [pc, #64]	; (1a001228 <Chip_UART_GetIndex+0x50>)
1a0011e8:	4293      	cmp	r3, r2
1a0011ea:	d00f      	beq.n	1a00120c <Chip_UART_GetIndex+0x34>
1a0011ec:	4a0e      	ldr	r2, [pc, #56]	; (1a001228 <Chip_UART_GetIndex+0x50>)
1a0011ee:	4293      	cmp	r3, r2
1a0011f0:	d803      	bhi.n	1a0011fa <Chip_UART_GetIndex+0x22>
1a0011f2:	4a0e      	ldr	r2, [pc, #56]	; (1a00122c <Chip_UART_GetIndex+0x54>)
1a0011f4:	4293      	cmp	r3, r2
1a0011f6:	d007      	beq.n	1a001208 <Chip_UART_GetIndex+0x30>
1a0011f8:	e00e      	b.n	1a001218 <Chip_UART_GetIndex+0x40>
1a0011fa:	4a0d      	ldr	r2, [pc, #52]	; (1a001230 <Chip_UART_GetIndex+0x58>)
1a0011fc:	4293      	cmp	r3, r2
1a0011fe:	d007      	beq.n	1a001210 <Chip_UART_GetIndex+0x38>
1a001200:	4a0c      	ldr	r2, [pc, #48]	; (1a001234 <Chip_UART_GetIndex+0x5c>)
1a001202:	4293      	cmp	r3, r2
1a001204:	d006      	beq.n	1a001214 <Chip_UART_GetIndex+0x3c>
1a001206:	e007      	b.n	1a001218 <Chip_UART_GetIndex+0x40>
1a001208:	2300      	movs	r3, #0
1a00120a:	e006      	b.n	1a00121a <Chip_UART_GetIndex+0x42>
1a00120c:	2301      	movs	r3, #1
1a00120e:	e004      	b.n	1a00121a <Chip_UART_GetIndex+0x42>
1a001210:	2302      	movs	r3, #2
1a001212:	e002      	b.n	1a00121a <Chip_UART_GetIndex+0x42>
1a001214:	2303      	movs	r3, #3
1a001216:	e000      	b.n	1a00121a <Chip_UART_GetIndex+0x42>
1a001218:	2300      	movs	r3, #0
1a00121a:	4618      	mov	r0, r3
1a00121c:	3714      	adds	r7, #20
1a00121e:	46bd      	mov	sp, r7
1a001220:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001224:	4770      	bx	lr
1a001226:	bf00      	nop
1a001228:	40082000 	.word	0x40082000
1a00122c:	40081000 	.word	0x40081000
1a001230:	400c1000 	.word	0x400c1000
1a001234:	400c2000 	.word	0x400c2000

1a001238 <Chip_UART_ABIntHandler>:
1a001238:	b580      	push	{r7, lr}
1a00123a:	b082      	sub	sp, #8
1a00123c:	af00      	add	r7, sp, #0
1a00123e:	6078      	str	r0, [r7, #4]
1a001240:	6878      	ldr	r0, [r7, #4]
1a001242:	f7ff ff50 	bl	1a0010e6 <Chip_UART_ReadIntIDReg>
1a001246:	4603      	mov	r3, r0
1a001248:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a00124c:	2b00      	cmp	r3, #0
1a00124e:	d011      	beq.n	1a001274 <Chip_UART_ABIntHandler+0x3c>
1a001250:	f44f 7180 	mov.w	r1, #256	; 0x100
1a001254:	6878      	ldr	r0, [r7, #4]
1a001256:	f7ff ffae 	bl	1a0011b6 <Chip_UART_SetAutoBaudReg>
1a00125a:	f44f 7180 	mov.w	r1, #256	; 0x100
1a00125e:	6878      	ldr	r0, [r7, #4]
1a001260:	f7ff ff2f 	bl	1a0010c2 <Chip_UART_IntDisable>
1a001264:	4b0e      	ldr	r3, [pc, #56]	; (1a0012a0 <Chip_UART_ABIntHandler+0x68>)
1a001266:	781b      	ldrb	r3, [r3, #0]
1a001268:	b2db      	uxtb	r3, r3
1a00126a:	2b00      	cmp	r3, #0
1a00126c:	d102      	bne.n	1a001274 <Chip_UART_ABIntHandler+0x3c>
1a00126e:	4b0c      	ldr	r3, [pc, #48]	; (1a0012a0 <Chip_UART_ABIntHandler+0x68>)
1a001270:	2201      	movs	r2, #1
1a001272:	701a      	strb	r2, [r3, #0]
1a001274:	6878      	ldr	r0, [r7, #4]
1a001276:	f7ff ff36 	bl	1a0010e6 <Chip_UART_ReadIntIDReg>
1a00127a:	4603      	mov	r3, r0
1a00127c:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a001280:	2b00      	cmp	r3, #0
1a001282:	d009      	beq.n	1a001298 <Chip_UART_ABIntHandler+0x60>
1a001284:	f44f 7100 	mov.w	r1, #512	; 0x200
1a001288:	6878      	ldr	r0, [r7, #4]
1a00128a:	f7ff ff94 	bl	1a0011b6 <Chip_UART_SetAutoBaudReg>
1a00128e:	f44f 7100 	mov.w	r1, #512	; 0x200
1a001292:	6878      	ldr	r0, [r7, #4]
1a001294:	f7ff ff15 	bl	1a0010c2 <Chip_UART_IntDisable>
1a001298:	bf00      	nop
1a00129a:	3708      	adds	r7, #8
1a00129c:	46bd      	mov	sp, r7
1a00129e:	bd80      	pop	{r7, pc}
1a0012a0:	10000003 	.word	0x10000003

1a0012a4 <Chip_UART_Init>:
1a0012a4:	b580      	push	{r7, lr}
1a0012a6:	b084      	sub	sp, #16
1a0012a8:	af00      	add	r7, sp, #0
1a0012aa:	6078      	str	r0, [r7, #4]
1a0012ac:	68fb      	ldr	r3, [r7, #12]
1a0012ae:	6878      	ldr	r0, [r7, #4]
1a0012b0:	f7ff ff92 	bl	1a0011d8 <Chip_UART_GetIndex>
1a0012b4:	4602      	mov	r2, r0
1a0012b6:	4b1b      	ldr	r3, [pc, #108]	; (1a001324 <Chip_UART_Init+0x80>)
1a0012b8:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a0012bc:	2301      	movs	r3, #1
1a0012be:	2201      	movs	r2, #1
1a0012c0:	2101      	movs	r1, #1
1a0012c2:	f000 ff57 	bl	1a002174 <Chip_Clock_EnableOpts>
1a0012c6:	2107      	movs	r1, #7
1a0012c8:	6878      	ldr	r0, [r7, #4]
1a0012ca:	f7ff ff18 	bl	1a0010fe <Chip_UART_SetupFIFOS>
1a0012ce:	6878      	ldr	r0, [r7, #4]
1a0012d0:	f7ff febd 	bl	1a00104e <Chip_UART_TXDisable>
1a0012d4:	687b      	ldr	r3, [r7, #4]
1a0012d6:	2200      	movs	r2, #0
1a0012d8:	605a      	str	r2, [r3, #4]
1a0012da:	687b      	ldr	r3, [r7, #4]
1a0012dc:	2200      	movs	r2, #0
1a0012de:	60da      	str	r2, [r3, #12]
1a0012e0:	687b      	ldr	r3, [r7, #4]
1a0012e2:	2200      	movs	r2, #0
1a0012e4:	621a      	str	r2, [r3, #32]
1a0012e6:	687b      	ldr	r3, [r7, #4]
1a0012e8:	2200      	movs	r2, #0
1a0012ea:	64da      	str	r2, [r3, #76]	; 0x4c
1a0012ec:	687b      	ldr	r3, [r7, #4]
1a0012ee:	2200      	movs	r2, #0
1a0012f0:	655a      	str	r2, [r3, #84]	; 0x54
1a0012f2:	687b      	ldr	r3, [r7, #4]
1a0012f4:	2200      	movs	r2, #0
1a0012f6:	651a      	str	r2, [r3, #80]	; 0x50
1a0012f8:	687b      	ldr	r3, [r7, #4]
1a0012fa:	4a0b      	ldr	r2, [pc, #44]	; (1a001328 <Chip_UART_Init+0x84>)
1a0012fc:	4293      	cmp	r3, r2
1a0012fe:	d105      	bne.n	1a00130c <Chip_UART_Init+0x68>
1a001300:	687b      	ldr	r3, [r7, #4]
1a001302:	2200      	movs	r2, #0
1a001304:	611a      	str	r2, [r3, #16]
1a001306:	687b      	ldr	r3, [r7, #4]
1a001308:	699b      	ldr	r3, [r3, #24]
1a00130a:	60fb      	str	r3, [r7, #12]
1a00130c:	2103      	movs	r1, #3
1a00130e:	6878      	ldr	r0, [r7, #4]
1a001310:	f7ff ff03 	bl	1a00111a <Chip_UART_ConfigData>
1a001314:	687b      	ldr	r3, [r7, #4]
1a001316:	2210      	movs	r2, #16
1a001318:	629a      	str	r2, [r3, #40]	; 0x28
1a00131a:	bf00      	nop
1a00131c:	3710      	adds	r7, #16
1a00131e:	46bd      	mov	sp, r7
1a001320:	bd80      	pop	{r7, pc}
1a001322:	bf00      	nop
1a001324:	1a002494 	.word	0x1a002494
1a001328:	40082000 	.word	0x40082000

1a00132c <Chip_UART_SetBaud>:
1a00132c:	b580      	push	{r7, lr}
1a00132e:	b086      	sub	sp, #24
1a001330:	af00      	add	r7, sp, #0
1a001332:	6078      	str	r0, [r7, #4]
1a001334:	6039      	str	r1, [r7, #0]
1a001336:	6878      	ldr	r0, [r7, #4]
1a001338:	f7ff ff4e 	bl	1a0011d8 <Chip_UART_GetIndex>
1a00133c:	4602      	mov	r2, r0
1a00133e:	4b16      	ldr	r3, [pc, #88]	; (1a001398 <Chip_UART_SetBaud+0x6c>)
1a001340:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a001344:	4618      	mov	r0, r3
1a001346:	f000 ff53 	bl	1a0021f0 <Chip_Clock_GetRate>
1a00134a:	6178      	str	r0, [r7, #20]
1a00134c:	683b      	ldr	r3, [r7, #0]
1a00134e:	011b      	lsls	r3, r3, #4
1a001350:	697a      	ldr	r2, [r7, #20]
1a001352:	fbb2 f3f3 	udiv	r3, r2, r3
1a001356:	613b      	str	r3, [r7, #16]
1a001358:	693b      	ldr	r3, [r7, #16]
1a00135a:	0a1b      	lsrs	r3, r3, #8
1a00135c:	60fb      	str	r3, [r7, #12]
1a00135e:	68fb      	ldr	r3, [r7, #12]
1a001360:	021b      	lsls	r3, r3, #8
1a001362:	693a      	ldr	r2, [r7, #16]
1a001364:	1ad3      	subs	r3, r2, r3
1a001366:	60bb      	str	r3, [r7, #8]
1a001368:	6878      	ldr	r0, [r7, #4]
1a00136a:	f7ff fee4 	bl	1a001136 <Chip_UART_EnableDivisorAccess>
1a00136e:	68bb      	ldr	r3, [r7, #8]
1a001370:	b2db      	uxtb	r3, r3
1a001372:	68fa      	ldr	r2, [r7, #12]
1a001374:	b2d2      	uxtb	r2, r2
1a001376:	4619      	mov	r1, r3
1a001378:	6878      	ldr	r0, [r7, #4]
1a00137a:	f7ff fefc 	bl	1a001176 <Chip_UART_SetDivisorLatches>
1a00137e:	6878      	ldr	r0, [r7, #4]
1a001380:	f7ff fee9 	bl	1a001156 <Chip_UART_DisableDivisorAccess>
1a001384:	697a      	ldr	r2, [r7, #20]
1a001386:	693b      	ldr	r3, [r7, #16]
1a001388:	fbb2 f3f3 	udiv	r3, r2, r3
1a00138c:	091b      	lsrs	r3, r3, #4
1a00138e:	4618      	mov	r0, r3
1a001390:	3718      	adds	r7, #24
1a001392:	46bd      	mov	sp, r7
1a001394:	bd80      	pop	{r7, pc}
1a001396:	bf00      	nop
1a001398:	1a00249c 	.word	0x1a00249c

1a00139c <Chip_UART_RXIntHandlerRB>:
1a00139c:	b580      	push	{r7, lr}
1a00139e:	b084      	sub	sp, #16
1a0013a0:	af00      	add	r7, sp, #0
1a0013a2:	6078      	str	r0, [r7, #4]
1a0013a4:	6039      	str	r1, [r7, #0]
1a0013a6:	e00a      	b.n	1a0013be <Chip_UART_RXIntHandlerRB+0x22>
1a0013a8:	6878      	ldr	r0, [r7, #4]
1a0013aa:	f7ff fe6c 	bl	1a001086 <Chip_UART_ReadByte>
1a0013ae:	4603      	mov	r3, r0
1a0013b0:	73fb      	strb	r3, [r7, #15]
1a0013b2:	f107 030f 	add.w	r3, r7, #15
1a0013b6:	4619      	mov	r1, r3
1a0013b8:	6838      	ldr	r0, [r7, #0]
1a0013ba:	f000 f92b 	bl	1a001614 <RingBuffer_Insert>
1a0013be:	6878      	ldr	r0, [r7, #4]
1a0013c0:	f7ff feed 	bl	1a00119e <Chip_UART_ReadLineStatus>
1a0013c4:	4603      	mov	r3, r0
1a0013c6:	f003 0301 	and.w	r3, r3, #1
1a0013ca:	2b00      	cmp	r3, #0
1a0013cc:	d1ec      	bne.n	1a0013a8 <Chip_UART_RXIntHandlerRB+0xc>
1a0013ce:	bf00      	nop
1a0013d0:	3710      	adds	r7, #16
1a0013d2:	46bd      	mov	sp, r7
1a0013d4:	bd80      	pop	{r7, pc}

1a0013d6 <Chip_UART_TXIntHandlerRB>:
1a0013d6:	b580      	push	{r7, lr}
1a0013d8:	b084      	sub	sp, #16
1a0013da:	af00      	add	r7, sp, #0
1a0013dc:	6078      	str	r0, [r7, #4]
1a0013de:	6039      	str	r1, [r7, #0]
1a0013e0:	e004      	b.n	1a0013ec <Chip_UART_TXIntHandlerRB+0x16>
1a0013e2:	7bfb      	ldrb	r3, [r7, #15]
1a0013e4:	4619      	mov	r1, r3
1a0013e6:	6878      	ldr	r0, [r7, #4]
1a0013e8:	f7ff fe3e 	bl	1a001068 <Chip_UART_SendByte>
1a0013ec:	6878      	ldr	r0, [r7, #4]
1a0013ee:	f7ff fed6 	bl	1a00119e <Chip_UART_ReadLineStatus>
1a0013f2:	4603      	mov	r3, r0
1a0013f4:	f003 0320 	and.w	r3, r3, #32
1a0013f8:	2b00      	cmp	r3, #0
1a0013fa:	d008      	beq.n	1a00140e <Chip_UART_TXIntHandlerRB+0x38>
1a0013fc:	f107 030f 	add.w	r3, r7, #15
1a001400:	4619      	mov	r1, r3
1a001402:	6838      	ldr	r0, [r7, #0]
1a001404:	f000 f9c5 	bl	1a001792 <RingBuffer_Pop>
1a001408:	4603      	mov	r3, r0
1a00140a:	2b00      	cmp	r3, #0
1a00140c:	d1e9      	bne.n	1a0013e2 <Chip_UART_TXIntHandlerRB+0xc>
1a00140e:	6838      	ldr	r0, [r7, #0]
1a001410:	f7ff fe08 	bl	1a001024 <RingBuffer_IsEmpty>
1a001414:	4603      	mov	r3, r0
1a001416:	2b00      	cmp	r3, #0
1a001418:	d003      	beq.n	1a001422 <Chip_UART_TXIntHandlerRB+0x4c>
1a00141a:	2102      	movs	r1, #2
1a00141c:	6878      	ldr	r0, [r7, #4]
1a00141e:	f7ff fe50 	bl	1a0010c2 <Chip_UART_IntDisable>
1a001422:	bf00      	nop
1a001424:	3710      	adds	r7, #16
1a001426:	46bd      	mov	sp, r7
1a001428:	bd80      	pop	{r7, pc}

1a00142a <Chip_UART_SendRB>:
1a00142a:	b580      	push	{r7, lr}
1a00142c:	b086      	sub	sp, #24
1a00142e:	af00      	add	r7, sp, #0
1a001430:	60f8      	str	r0, [r7, #12]
1a001432:	60b9      	str	r1, [r7, #8]
1a001434:	607a      	str	r2, [r7, #4]
1a001436:	603b      	str	r3, [r7, #0]
1a001438:	687b      	ldr	r3, [r7, #4]
1a00143a:	617b      	str	r3, [r7, #20]
1a00143c:	2102      	movs	r1, #2
1a00143e:	68f8      	ldr	r0, [r7, #12]
1a001440:	f7ff fe3f 	bl	1a0010c2 <Chip_UART_IntDisable>
1a001444:	683a      	ldr	r2, [r7, #0]
1a001446:	6979      	ldr	r1, [r7, #20]
1a001448:	68b8      	ldr	r0, [r7, #8]
1a00144a:	f000 f911 	bl	1a001670 <RingBuffer_InsertMult>
1a00144e:	4603      	mov	r3, r0
1a001450:	613b      	str	r3, [r7, #16]
1a001452:	68b9      	ldr	r1, [r7, #8]
1a001454:	68f8      	ldr	r0, [r7, #12]
1a001456:	f7ff ffbe 	bl	1a0013d6 <Chip_UART_TXIntHandlerRB>
1a00145a:	697a      	ldr	r2, [r7, #20]
1a00145c:	693b      	ldr	r3, [r7, #16]
1a00145e:	18d1      	adds	r1, r2, r3
1a001460:	683a      	ldr	r2, [r7, #0]
1a001462:	693b      	ldr	r3, [r7, #16]
1a001464:	1ad3      	subs	r3, r2, r3
1a001466:	461a      	mov	r2, r3
1a001468:	68b8      	ldr	r0, [r7, #8]
1a00146a:	f000 f901 	bl	1a001670 <RingBuffer_InsertMult>
1a00146e:	4603      	mov	r3, r0
1a001470:	461a      	mov	r2, r3
1a001472:	693b      	ldr	r3, [r7, #16]
1a001474:	4413      	add	r3, r2
1a001476:	613b      	str	r3, [r7, #16]
1a001478:	2102      	movs	r1, #2
1a00147a:	68f8      	ldr	r0, [r7, #12]
1a00147c:	f7ff fe10 	bl	1a0010a0 <Chip_UART_IntEnable>
1a001480:	693b      	ldr	r3, [r7, #16]
1a001482:	4618      	mov	r0, r3
1a001484:	3718      	adds	r7, #24
1a001486:	46bd      	mov	sp, r7
1a001488:	bd80      	pop	{r7, pc}

1a00148a <Chip_UART_ReadRB>:
1a00148a:	b580      	push	{r7, lr}
1a00148c:	b084      	sub	sp, #16
1a00148e:	af00      	add	r7, sp, #0
1a001490:	60f8      	str	r0, [r7, #12]
1a001492:	60b9      	str	r1, [r7, #8]
1a001494:	607a      	str	r2, [r7, #4]
1a001496:	603b      	str	r3, [r7, #0]
1a001498:	683a      	ldr	r2, [r7, #0]
1a00149a:	6879      	ldr	r1, [r7, #4]
1a00149c:	68b8      	ldr	r0, [r7, #8]
1a00149e:	f000 f9a6 	bl	1a0017ee <RingBuffer_PopMult>
1a0014a2:	4603      	mov	r3, r0
1a0014a4:	4618      	mov	r0, r3
1a0014a6:	3710      	adds	r7, #16
1a0014a8:	46bd      	mov	sp, r7
1a0014aa:	bd80      	pop	{r7, pc}

1a0014ac <Chip_UART_IRQRBHandler>:
1a0014ac:	b580      	push	{r7, lr}
1a0014ae:	b084      	sub	sp, #16
1a0014b0:	af00      	add	r7, sp, #0
1a0014b2:	60f8      	str	r0, [r7, #12]
1a0014b4:	60b9      	str	r1, [r7, #8]
1a0014b6:	607a      	str	r2, [r7, #4]
1a0014b8:	68fb      	ldr	r3, [r7, #12]
1a0014ba:	685b      	ldr	r3, [r3, #4]
1a0014bc:	f003 0302 	and.w	r3, r3, #2
1a0014c0:	2b00      	cmp	r3, #0
1a0014c2:	d00d      	beq.n	1a0014e0 <Chip_UART_IRQRBHandler+0x34>
1a0014c4:	6879      	ldr	r1, [r7, #4]
1a0014c6:	68f8      	ldr	r0, [r7, #12]
1a0014c8:	f7ff ff85 	bl	1a0013d6 <Chip_UART_TXIntHandlerRB>
1a0014cc:	6878      	ldr	r0, [r7, #4]
1a0014ce:	f7ff fda9 	bl	1a001024 <RingBuffer_IsEmpty>
1a0014d2:	4603      	mov	r3, r0
1a0014d4:	2b00      	cmp	r3, #0
1a0014d6:	d003      	beq.n	1a0014e0 <Chip_UART_IRQRBHandler+0x34>
1a0014d8:	2102      	movs	r1, #2
1a0014da:	68f8      	ldr	r0, [r7, #12]
1a0014dc:	f7ff fdf1 	bl	1a0010c2 <Chip_UART_IntDisable>
1a0014e0:	68b9      	ldr	r1, [r7, #8]
1a0014e2:	68f8      	ldr	r0, [r7, #12]
1a0014e4:	f7ff ff5a 	bl	1a00139c <Chip_UART_RXIntHandlerRB>
1a0014e8:	68f8      	ldr	r0, [r7, #12]
1a0014ea:	f7ff fea5 	bl	1a001238 <Chip_UART_ABIntHandler>
1a0014ee:	bf00      	nop
1a0014f0:	3710      	adds	r7, #16
1a0014f2:	46bd      	mov	sp, r7
1a0014f4:	bd80      	pop	{r7, pc}

1a0014f6 <Chip_TIMER_ReadCount>:
1a0014f6:	b480      	push	{r7}
1a0014f8:	b083      	sub	sp, #12
1a0014fa:	af00      	add	r7, sp, #0
1a0014fc:	6078      	str	r0, [r7, #4]
1a0014fe:	687b      	ldr	r3, [r7, #4]
1a001500:	689b      	ldr	r3, [r3, #8]
1a001502:	4618      	mov	r0, r3
1a001504:	370c      	adds	r7, #12
1a001506:	46bd      	mov	sp, r7
1a001508:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00150c:	4770      	bx	lr
1a00150e:	Address 0x000000001a00150e is out of bounds.


1a001510 <StopWatch_Start>:
1a001510:	b580      	push	{r7, lr}
1a001512:	af00      	add	r7, sp, #0
1a001514:	4802      	ldr	r0, [pc, #8]	; (1a001520 <StopWatch_Start+0x10>)
1a001516:	f7ff ffee 	bl	1a0014f6 <Chip_TIMER_ReadCount>
1a00151a:	4603      	mov	r3, r0
1a00151c:	4618      	mov	r0, r3
1a00151e:	bd80      	pop	{r7, pc}
1a001520:	40084000 	.word	0x40084000

1a001524 <StopWatch_MsToTicks>:
1a001524:	b480      	push	{r7}
1a001526:	b083      	sub	sp, #12
1a001528:	af00      	add	r7, sp, #0
1a00152a:	6078      	str	r0, [r7, #4]
1a00152c:	4b05      	ldr	r3, [pc, #20]	; (1a001544 <StopWatch_MsToTicks+0x20>)
1a00152e:	681b      	ldr	r3, [r3, #0]
1a001530:	687a      	ldr	r2, [r7, #4]
1a001532:	fb02 f303 	mul.w	r3, r2, r3
1a001536:	4618      	mov	r0, r3
1a001538:	370c      	adds	r7, #12
1a00153a:	46bd      	mov	sp, r7
1a00153c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001540:	4770      	bx	lr
1a001542:	bf00      	nop
1a001544:	10000004 	.word	0x10000004

1a001548 <RingBuffer_GetCount>:
1a001548:	b480      	push	{r7}
1a00154a:	b083      	sub	sp, #12
1a00154c:	af00      	add	r7, sp, #0
1a00154e:	6078      	str	r0, [r7, #4]
1a001550:	687b      	ldr	r3, [r7, #4]
1a001552:	330c      	adds	r3, #12
1a001554:	681a      	ldr	r2, [r3, #0]
1a001556:	687b      	ldr	r3, [r7, #4]
1a001558:	3310      	adds	r3, #16
1a00155a:	681b      	ldr	r3, [r3, #0]
1a00155c:	1ad3      	subs	r3, r2, r3
1a00155e:	4618      	mov	r0, r3
1a001560:	370c      	adds	r7, #12
1a001562:	46bd      	mov	sp, r7
1a001564:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001568:	4770      	bx	lr

1a00156a <RingBuffer_GetFree>:
1a00156a:	b590      	push	{r4, r7, lr}
1a00156c:	b083      	sub	sp, #12
1a00156e:	af00      	add	r7, sp, #0
1a001570:	6078      	str	r0, [r7, #4]
1a001572:	687b      	ldr	r3, [r7, #4]
1a001574:	685c      	ldr	r4, [r3, #4]
1a001576:	6878      	ldr	r0, [r7, #4]
1a001578:	f7ff ffe6 	bl	1a001548 <RingBuffer_GetCount>
1a00157c:	4603      	mov	r3, r0
1a00157e:	1ae3      	subs	r3, r4, r3
1a001580:	4618      	mov	r0, r3
1a001582:	370c      	adds	r7, #12
1a001584:	46bd      	mov	sp, r7
1a001586:	bd90      	pop	{r4, r7, pc}

1a001588 <RingBuffer_IsFull>:
1a001588:	b580      	push	{r7, lr}
1a00158a:	b082      	sub	sp, #8
1a00158c:	af00      	add	r7, sp, #0
1a00158e:	6078      	str	r0, [r7, #4]
1a001590:	6878      	ldr	r0, [r7, #4]
1a001592:	f7ff ffd9 	bl	1a001548 <RingBuffer_GetCount>
1a001596:	4602      	mov	r2, r0
1a001598:	687b      	ldr	r3, [r7, #4]
1a00159a:	685b      	ldr	r3, [r3, #4]
1a00159c:	429a      	cmp	r2, r3
1a00159e:	bfac      	ite	ge
1a0015a0:	2301      	movge	r3, #1
1a0015a2:	2300      	movlt	r3, #0
1a0015a4:	b2db      	uxtb	r3, r3
1a0015a6:	4618      	mov	r0, r3
1a0015a8:	3708      	adds	r7, #8
1a0015aa:	46bd      	mov	sp, r7
1a0015ac:	bd80      	pop	{r7, pc}

1a0015ae <RingBuffer_IsEmpty>:
1a0015ae:	b480      	push	{r7}
1a0015b0:	b083      	sub	sp, #12
1a0015b2:	af00      	add	r7, sp, #0
1a0015b4:	6078      	str	r0, [r7, #4]
1a0015b6:	687b      	ldr	r3, [r7, #4]
1a0015b8:	330c      	adds	r3, #12
1a0015ba:	681a      	ldr	r2, [r3, #0]
1a0015bc:	687b      	ldr	r3, [r7, #4]
1a0015be:	3310      	adds	r3, #16
1a0015c0:	681b      	ldr	r3, [r3, #0]
1a0015c2:	429a      	cmp	r2, r3
1a0015c4:	bf0c      	ite	eq
1a0015c6:	2301      	moveq	r3, #1
1a0015c8:	2300      	movne	r3, #0
1a0015ca:	b2db      	uxtb	r3, r3
1a0015cc:	4618      	mov	r0, r3
1a0015ce:	370c      	adds	r7, #12
1a0015d0:	46bd      	mov	sp, r7
1a0015d2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015d6:	4770      	bx	lr

1a0015d8 <RingBuffer_Init>:
1a0015d8:	b480      	push	{r7}
1a0015da:	b085      	sub	sp, #20
1a0015dc:	af00      	add	r7, sp, #0
1a0015de:	60f8      	str	r0, [r7, #12]
1a0015e0:	60b9      	str	r1, [r7, #8]
1a0015e2:	607a      	str	r2, [r7, #4]
1a0015e4:	603b      	str	r3, [r7, #0]
1a0015e6:	68fb      	ldr	r3, [r7, #12]
1a0015e8:	68ba      	ldr	r2, [r7, #8]
1a0015ea:	601a      	str	r2, [r3, #0]
1a0015ec:	68fb      	ldr	r3, [r7, #12]
1a0015ee:	683a      	ldr	r2, [r7, #0]
1a0015f0:	605a      	str	r2, [r3, #4]
1a0015f2:	68fb      	ldr	r3, [r7, #12]
1a0015f4:	687a      	ldr	r2, [r7, #4]
1a0015f6:	609a      	str	r2, [r3, #8]
1a0015f8:	68fb      	ldr	r3, [r7, #12]
1a0015fa:	2200      	movs	r2, #0
1a0015fc:	611a      	str	r2, [r3, #16]
1a0015fe:	68fb      	ldr	r3, [r7, #12]
1a001600:	691a      	ldr	r2, [r3, #16]
1a001602:	68fb      	ldr	r3, [r7, #12]
1a001604:	60da      	str	r2, [r3, #12]
1a001606:	2301      	movs	r3, #1
1a001608:	4618      	mov	r0, r3
1a00160a:	3714      	adds	r7, #20
1a00160c:	46bd      	mov	sp, r7
1a00160e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001612:	4770      	bx	lr

1a001614 <RingBuffer_Insert>:
1a001614:	b580      	push	{r7, lr}
1a001616:	b084      	sub	sp, #16
1a001618:	af00      	add	r7, sp, #0
1a00161a:	6078      	str	r0, [r7, #4]
1a00161c:	6039      	str	r1, [r7, #0]
1a00161e:	687b      	ldr	r3, [r7, #4]
1a001620:	681b      	ldr	r3, [r3, #0]
1a001622:	60fb      	str	r3, [r7, #12]
1a001624:	6878      	ldr	r0, [r7, #4]
1a001626:	f7ff ffaf 	bl	1a001588 <RingBuffer_IsFull>
1a00162a:	4603      	mov	r3, r0
1a00162c:	2b00      	cmp	r3, #0
1a00162e:	d001      	beq.n	1a001634 <RingBuffer_Insert+0x20>
1a001630:	2300      	movs	r3, #0
1a001632:	e019      	b.n	1a001668 <RingBuffer_Insert+0x54>
1a001634:	687b      	ldr	r3, [r7, #4]
1a001636:	68db      	ldr	r3, [r3, #12]
1a001638:	687a      	ldr	r2, [r7, #4]
1a00163a:	6852      	ldr	r2, [r2, #4]
1a00163c:	3a01      	subs	r2, #1
1a00163e:	4013      	ands	r3, r2
1a001640:	687a      	ldr	r2, [r7, #4]
1a001642:	6892      	ldr	r2, [r2, #8]
1a001644:	fb02 f303 	mul.w	r3, r2, r3
1a001648:	68fa      	ldr	r2, [r7, #12]
1a00164a:	4413      	add	r3, r2
1a00164c:	60fb      	str	r3, [r7, #12]
1a00164e:	687b      	ldr	r3, [r7, #4]
1a001650:	689b      	ldr	r3, [r3, #8]
1a001652:	461a      	mov	r2, r3
1a001654:	6839      	ldr	r1, [r7, #0]
1a001656:	68f8      	ldr	r0, [r7, #12]
1a001658:	f000 fe24 	bl	1a0022a4 <memcpy>
1a00165c:	687b      	ldr	r3, [r7, #4]
1a00165e:	68db      	ldr	r3, [r3, #12]
1a001660:	1c5a      	adds	r2, r3, #1
1a001662:	687b      	ldr	r3, [r7, #4]
1a001664:	60da      	str	r2, [r3, #12]
1a001666:	2301      	movs	r3, #1
1a001668:	4618      	mov	r0, r3
1a00166a:	3710      	adds	r7, #16
1a00166c:	46bd      	mov	sp, r7
1a00166e:	bd80      	pop	{r7, pc}

1a001670 <RingBuffer_InsertMult>:
1a001670:	b580      	push	{r7, lr}
1a001672:	b088      	sub	sp, #32
1a001674:	af00      	add	r7, sp, #0
1a001676:	60f8      	str	r0, [r7, #12]
1a001678:	60b9      	str	r1, [r7, #8]
1a00167a:	607a      	str	r2, [r7, #4]
1a00167c:	68fb      	ldr	r3, [r7, #12]
1a00167e:	681b      	ldr	r3, [r3, #0]
1a001680:	61bb      	str	r3, [r7, #24]
1a001682:	68f8      	ldr	r0, [r7, #12]
1a001684:	f7ff ff80 	bl	1a001588 <RingBuffer_IsFull>
1a001688:	4603      	mov	r3, r0
1a00168a:	2b00      	cmp	r3, #0
1a00168c:	d001      	beq.n	1a001692 <RingBuffer_InsertMult+0x22>
1a00168e:	2300      	movs	r3, #0
1a001690:	e07b      	b.n	1a00178a <RingBuffer_InsertMult+0x11a>
1a001692:	68f8      	ldr	r0, [r7, #12]
1a001694:	f7ff ff69 	bl	1a00156a <RingBuffer_GetFree>
1a001698:	6178      	str	r0, [r7, #20]
1a00169a:	697b      	ldr	r3, [r7, #20]
1a00169c:	61fb      	str	r3, [r7, #28]
1a00169e:	68fb      	ldr	r3, [r7, #12]
1a0016a0:	68db      	ldr	r3, [r3, #12]
1a0016a2:	68fa      	ldr	r2, [r7, #12]
1a0016a4:	6852      	ldr	r2, [r2, #4]
1a0016a6:	3a01      	subs	r2, #1
1a0016a8:	401a      	ands	r2, r3
1a0016aa:	69fb      	ldr	r3, [r7, #28]
1a0016ac:	4413      	add	r3, r2
1a0016ae:	68fa      	ldr	r2, [r7, #12]
1a0016b0:	6852      	ldr	r2, [r2, #4]
1a0016b2:	4293      	cmp	r3, r2
1a0016b4:	d30a      	bcc.n	1a0016cc <RingBuffer_InsertMult+0x5c>
1a0016b6:	68fb      	ldr	r3, [r7, #12]
1a0016b8:	685b      	ldr	r3, [r3, #4]
1a0016ba:	4619      	mov	r1, r3
1a0016bc:	68fb      	ldr	r3, [r7, #12]
1a0016be:	68db      	ldr	r3, [r3, #12]
1a0016c0:	68fa      	ldr	r2, [r7, #12]
1a0016c2:	6852      	ldr	r2, [r2, #4]
1a0016c4:	3a01      	subs	r2, #1
1a0016c6:	4013      	ands	r3, r2
1a0016c8:	1acb      	subs	r3, r1, r3
1a0016ca:	61fb      	str	r3, [r7, #28]
1a0016cc:	697a      	ldr	r2, [r7, #20]
1a0016ce:	69fb      	ldr	r3, [r7, #28]
1a0016d0:	1ad3      	subs	r3, r2, r3
1a0016d2:	617b      	str	r3, [r7, #20]
1a0016d4:	69fa      	ldr	r2, [r7, #28]
1a0016d6:	687b      	ldr	r3, [r7, #4]
1a0016d8:	4293      	cmp	r3, r2
1a0016da:	bfa8      	it	ge
1a0016dc:	4613      	movge	r3, r2
1a0016de:	61fb      	str	r3, [r7, #28]
1a0016e0:	687a      	ldr	r2, [r7, #4]
1a0016e2:	69fb      	ldr	r3, [r7, #28]
1a0016e4:	1ad3      	subs	r3, r2, r3
1a0016e6:	607b      	str	r3, [r7, #4]
1a0016e8:	697a      	ldr	r2, [r7, #20]
1a0016ea:	687b      	ldr	r3, [r7, #4]
1a0016ec:	4293      	cmp	r3, r2
1a0016ee:	bfa8      	it	ge
1a0016f0:	4613      	movge	r3, r2
1a0016f2:	617b      	str	r3, [r7, #20]
1a0016f4:	687a      	ldr	r2, [r7, #4]
1a0016f6:	697b      	ldr	r3, [r7, #20]
1a0016f8:	1ad3      	subs	r3, r2, r3
1a0016fa:	607b      	str	r3, [r7, #4]
1a0016fc:	68fb      	ldr	r3, [r7, #12]
1a0016fe:	68db      	ldr	r3, [r3, #12]
1a001700:	68fa      	ldr	r2, [r7, #12]
1a001702:	6852      	ldr	r2, [r2, #4]
1a001704:	3a01      	subs	r2, #1
1a001706:	4013      	ands	r3, r2
1a001708:	68fa      	ldr	r2, [r7, #12]
1a00170a:	6892      	ldr	r2, [r2, #8]
1a00170c:	fb02 f303 	mul.w	r3, r2, r3
1a001710:	69ba      	ldr	r2, [r7, #24]
1a001712:	4413      	add	r3, r2
1a001714:	61bb      	str	r3, [r7, #24]
1a001716:	68fb      	ldr	r3, [r7, #12]
1a001718:	689b      	ldr	r3, [r3, #8]
1a00171a:	69fa      	ldr	r2, [r7, #28]
1a00171c:	fb02 f303 	mul.w	r3, r2, r3
1a001720:	461a      	mov	r2, r3
1a001722:	68b9      	ldr	r1, [r7, #8]
1a001724:	69b8      	ldr	r0, [r7, #24]
1a001726:	f000 fdbd 	bl	1a0022a4 <memcpy>
1a00172a:	68fb      	ldr	r3, [r7, #12]
1a00172c:	68da      	ldr	r2, [r3, #12]
1a00172e:	69fb      	ldr	r3, [r7, #28]
1a001730:	441a      	add	r2, r3
1a001732:	68fb      	ldr	r3, [r7, #12]
1a001734:	60da      	str	r2, [r3, #12]
1a001736:	68fb      	ldr	r3, [r7, #12]
1a001738:	681a      	ldr	r2, [r3, #0]
1a00173a:	68fb      	ldr	r3, [r7, #12]
1a00173c:	68db      	ldr	r3, [r3, #12]
1a00173e:	68f9      	ldr	r1, [r7, #12]
1a001740:	6849      	ldr	r1, [r1, #4]
1a001742:	3901      	subs	r1, #1
1a001744:	400b      	ands	r3, r1
1a001746:	68f9      	ldr	r1, [r7, #12]
1a001748:	6889      	ldr	r1, [r1, #8]
1a00174a:	fb01 f303 	mul.w	r3, r1, r3
1a00174e:	4413      	add	r3, r2
1a001750:	61bb      	str	r3, [r7, #24]
1a001752:	68fb      	ldr	r3, [r7, #12]
1a001754:	689b      	ldr	r3, [r3, #8]
1a001756:	69fa      	ldr	r2, [r7, #28]
1a001758:	fb02 f303 	mul.w	r3, r2, r3
1a00175c:	461a      	mov	r2, r3
1a00175e:	68bb      	ldr	r3, [r7, #8]
1a001760:	4413      	add	r3, r2
1a001762:	60bb      	str	r3, [r7, #8]
1a001764:	68fb      	ldr	r3, [r7, #12]
1a001766:	689b      	ldr	r3, [r3, #8]
1a001768:	697a      	ldr	r2, [r7, #20]
1a00176a:	fb02 f303 	mul.w	r3, r2, r3
1a00176e:	461a      	mov	r2, r3
1a001770:	68b9      	ldr	r1, [r7, #8]
1a001772:	69b8      	ldr	r0, [r7, #24]
1a001774:	f000 fd96 	bl	1a0022a4 <memcpy>
1a001778:	68fb      	ldr	r3, [r7, #12]
1a00177a:	68da      	ldr	r2, [r3, #12]
1a00177c:	697b      	ldr	r3, [r7, #20]
1a00177e:	441a      	add	r2, r3
1a001780:	68fb      	ldr	r3, [r7, #12]
1a001782:	60da      	str	r2, [r3, #12]
1a001784:	69fa      	ldr	r2, [r7, #28]
1a001786:	697b      	ldr	r3, [r7, #20]
1a001788:	4413      	add	r3, r2
1a00178a:	4618      	mov	r0, r3
1a00178c:	3720      	adds	r7, #32
1a00178e:	46bd      	mov	sp, r7
1a001790:	bd80      	pop	{r7, pc}

1a001792 <RingBuffer_Pop>:
1a001792:	b580      	push	{r7, lr}
1a001794:	b084      	sub	sp, #16
1a001796:	af00      	add	r7, sp, #0
1a001798:	6078      	str	r0, [r7, #4]
1a00179a:	6039      	str	r1, [r7, #0]
1a00179c:	687b      	ldr	r3, [r7, #4]
1a00179e:	681b      	ldr	r3, [r3, #0]
1a0017a0:	60fb      	str	r3, [r7, #12]
1a0017a2:	6878      	ldr	r0, [r7, #4]
1a0017a4:	f7ff ff03 	bl	1a0015ae <RingBuffer_IsEmpty>
1a0017a8:	4603      	mov	r3, r0
1a0017aa:	2b00      	cmp	r3, #0
1a0017ac:	d001      	beq.n	1a0017b2 <RingBuffer_Pop+0x20>
1a0017ae:	2300      	movs	r3, #0
1a0017b0:	e019      	b.n	1a0017e6 <RingBuffer_Pop+0x54>
1a0017b2:	687b      	ldr	r3, [r7, #4]
1a0017b4:	691b      	ldr	r3, [r3, #16]
1a0017b6:	687a      	ldr	r2, [r7, #4]
1a0017b8:	6852      	ldr	r2, [r2, #4]
1a0017ba:	3a01      	subs	r2, #1
1a0017bc:	4013      	ands	r3, r2
1a0017be:	687a      	ldr	r2, [r7, #4]
1a0017c0:	6892      	ldr	r2, [r2, #8]
1a0017c2:	fb02 f303 	mul.w	r3, r2, r3
1a0017c6:	68fa      	ldr	r2, [r7, #12]
1a0017c8:	4413      	add	r3, r2
1a0017ca:	60fb      	str	r3, [r7, #12]
1a0017cc:	687b      	ldr	r3, [r7, #4]
1a0017ce:	689b      	ldr	r3, [r3, #8]
1a0017d0:	461a      	mov	r2, r3
1a0017d2:	68f9      	ldr	r1, [r7, #12]
1a0017d4:	6838      	ldr	r0, [r7, #0]
1a0017d6:	f000 fd65 	bl	1a0022a4 <memcpy>
1a0017da:	687b      	ldr	r3, [r7, #4]
1a0017dc:	691b      	ldr	r3, [r3, #16]
1a0017de:	1c5a      	adds	r2, r3, #1
1a0017e0:	687b      	ldr	r3, [r7, #4]
1a0017e2:	611a      	str	r2, [r3, #16]
1a0017e4:	2301      	movs	r3, #1
1a0017e6:	4618      	mov	r0, r3
1a0017e8:	3710      	adds	r7, #16
1a0017ea:	46bd      	mov	sp, r7
1a0017ec:	bd80      	pop	{r7, pc}

1a0017ee <RingBuffer_PopMult>:
1a0017ee:	b580      	push	{r7, lr}
1a0017f0:	b088      	sub	sp, #32
1a0017f2:	af00      	add	r7, sp, #0
1a0017f4:	60f8      	str	r0, [r7, #12]
1a0017f6:	60b9      	str	r1, [r7, #8]
1a0017f8:	607a      	str	r2, [r7, #4]
1a0017fa:	68fb      	ldr	r3, [r7, #12]
1a0017fc:	681b      	ldr	r3, [r3, #0]
1a0017fe:	61bb      	str	r3, [r7, #24]
1a001800:	68f8      	ldr	r0, [r7, #12]
1a001802:	f7ff fed4 	bl	1a0015ae <RingBuffer_IsEmpty>
1a001806:	4603      	mov	r3, r0
1a001808:	2b00      	cmp	r3, #0
1a00180a:	d001      	beq.n	1a001810 <RingBuffer_PopMult+0x22>
1a00180c:	2300      	movs	r3, #0
1a00180e:	e07b      	b.n	1a001908 <RingBuffer_PopMult+0x11a>
1a001810:	68f8      	ldr	r0, [r7, #12]
1a001812:	f7ff fe99 	bl	1a001548 <RingBuffer_GetCount>
1a001816:	6178      	str	r0, [r7, #20]
1a001818:	697b      	ldr	r3, [r7, #20]
1a00181a:	61fb      	str	r3, [r7, #28]
1a00181c:	68fb      	ldr	r3, [r7, #12]
1a00181e:	691b      	ldr	r3, [r3, #16]
1a001820:	68fa      	ldr	r2, [r7, #12]
1a001822:	6852      	ldr	r2, [r2, #4]
1a001824:	3a01      	subs	r2, #1
1a001826:	401a      	ands	r2, r3
1a001828:	69fb      	ldr	r3, [r7, #28]
1a00182a:	4413      	add	r3, r2
1a00182c:	68fa      	ldr	r2, [r7, #12]
1a00182e:	6852      	ldr	r2, [r2, #4]
1a001830:	4293      	cmp	r3, r2
1a001832:	d30a      	bcc.n	1a00184a <RingBuffer_PopMult+0x5c>
1a001834:	68fb      	ldr	r3, [r7, #12]
1a001836:	685b      	ldr	r3, [r3, #4]
1a001838:	4619      	mov	r1, r3
1a00183a:	68fb      	ldr	r3, [r7, #12]
1a00183c:	691b      	ldr	r3, [r3, #16]
1a00183e:	68fa      	ldr	r2, [r7, #12]
1a001840:	6852      	ldr	r2, [r2, #4]
1a001842:	3a01      	subs	r2, #1
1a001844:	4013      	ands	r3, r2
1a001846:	1acb      	subs	r3, r1, r3
1a001848:	61fb      	str	r3, [r7, #28]
1a00184a:	697a      	ldr	r2, [r7, #20]
1a00184c:	69fb      	ldr	r3, [r7, #28]
1a00184e:	1ad3      	subs	r3, r2, r3
1a001850:	617b      	str	r3, [r7, #20]
1a001852:	69fa      	ldr	r2, [r7, #28]
1a001854:	687b      	ldr	r3, [r7, #4]
1a001856:	4293      	cmp	r3, r2
1a001858:	bfa8      	it	ge
1a00185a:	4613      	movge	r3, r2
1a00185c:	61fb      	str	r3, [r7, #28]
1a00185e:	687a      	ldr	r2, [r7, #4]
1a001860:	69fb      	ldr	r3, [r7, #28]
1a001862:	1ad3      	subs	r3, r2, r3
1a001864:	607b      	str	r3, [r7, #4]
1a001866:	697a      	ldr	r2, [r7, #20]
1a001868:	687b      	ldr	r3, [r7, #4]
1a00186a:	4293      	cmp	r3, r2
1a00186c:	bfa8      	it	ge
1a00186e:	4613      	movge	r3, r2
1a001870:	617b      	str	r3, [r7, #20]
1a001872:	687a      	ldr	r2, [r7, #4]
1a001874:	697b      	ldr	r3, [r7, #20]
1a001876:	1ad3      	subs	r3, r2, r3
1a001878:	607b      	str	r3, [r7, #4]
1a00187a:	68fb      	ldr	r3, [r7, #12]
1a00187c:	691b      	ldr	r3, [r3, #16]
1a00187e:	68fa      	ldr	r2, [r7, #12]
1a001880:	6852      	ldr	r2, [r2, #4]
1a001882:	3a01      	subs	r2, #1
1a001884:	4013      	ands	r3, r2
1a001886:	68fa      	ldr	r2, [r7, #12]
1a001888:	6892      	ldr	r2, [r2, #8]
1a00188a:	fb02 f303 	mul.w	r3, r2, r3
1a00188e:	69ba      	ldr	r2, [r7, #24]
1a001890:	4413      	add	r3, r2
1a001892:	61bb      	str	r3, [r7, #24]
1a001894:	68fb      	ldr	r3, [r7, #12]
1a001896:	689b      	ldr	r3, [r3, #8]
1a001898:	69fa      	ldr	r2, [r7, #28]
1a00189a:	fb02 f303 	mul.w	r3, r2, r3
1a00189e:	461a      	mov	r2, r3
1a0018a0:	69b9      	ldr	r1, [r7, #24]
1a0018a2:	68b8      	ldr	r0, [r7, #8]
1a0018a4:	f000 fcfe 	bl	1a0022a4 <memcpy>
1a0018a8:	68fb      	ldr	r3, [r7, #12]
1a0018aa:	691a      	ldr	r2, [r3, #16]
1a0018ac:	69fb      	ldr	r3, [r7, #28]
1a0018ae:	441a      	add	r2, r3
1a0018b0:	68fb      	ldr	r3, [r7, #12]
1a0018b2:	611a      	str	r2, [r3, #16]
1a0018b4:	68fb      	ldr	r3, [r7, #12]
1a0018b6:	681a      	ldr	r2, [r3, #0]
1a0018b8:	68fb      	ldr	r3, [r7, #12]
1a0018ba:	691b      	ldr	r3, [r3, #16]
1a0018bc:	68f9      	ldr	r1, [r7, #12]
1a0018be:	6849      	ldr	r1, [r1, #4]
1a0018c0:	3901      	subs	r1, #1
1a0018c2:	400b      	ands	r3, r1
1a0018c4:	68f9      	ldr	r1, [r7, #12]
1a0018c6:	6889      	ldr	r1, [r1, #8]
1a0018c8:	fb01 f303 	mul.w	r3, r1, r3
1a0018cc:	4413      	add	r3, r2
1a0018ce:	61bb      	str	r3, [r7, #24]
1a0018d0:	68fb      	ldr	r3, [r7, #12]
1a0018d2:	689b      	ldr	r3, [r3, #8]
1a0018d4:	69fa      	ldr	r2, [r7, #28]
1a0018d6:	fb02 f303 	mul.w	r3, r2, r3
1a0018da:	461a      	mov	r2, r3
1a0018dc:	68bb      	ldr	r3, [r7, #8]
1a0018de:	4413      	add	r3, r2
1a0018e0:	60bb      	str	r3, [r7, #8]
1a0018e2:	68fb      	ldr	r3, [r7, #12]
1a0018e4:	689b      	ldr	r3, [r3, #8]
1a0018e6:	697a      	ldr	r2, [r7, #20]
1a0018e8:	fb02 f303 	mul.w	r3, r2, r3
1a0018ec:	461a      	mov	r2, r3
1a0018ee:	69b9      	ldr	r1, [r7, #24]
1a0018f0:	68b8      	ldr	r0, [r7, #8]
1a0018f2:	f000 fcd7 	bl	1a0022a4 <memcpy>
1a0018f6:	68fb      	ldr	r3, [r7, #12]
1a0018f8:	691a      	ldr	r2, [r3, #16]
1a0018fa:	697b      	ldr	r3, [r7, #20]
1a0018fc:	441a      	add	r2, r3
1a0018fe:	68fb      	ldr	r3, [r7, #12]
1a001900:	611a      	str	r2, [r3, #16]
1a001902:	69fa      	ldr	r2, [r7, #28]
1a001904:	697b      	ldr	r3, [r7, #20]
1a001906:	4413      	add	r3, r2
1a001908:	4618      	mov	r0, r3
1a00190a:	3720      	adds	r7, #32
1a00190c:	46bd      	mov	sp, r7
1a00190e:	bd80      	pop	{r7, pc}

1a001910 <ABS>:
1a001910:	b480      	push	{r7}
1a001912:	b083      	sub	sp, #12
1a001914:	af00      	add	r7, sp, #0
1a001916:	6078      	str	r0, [r7, #4]
1a001918:	687b      	ldr	r3, [r7, #4]
1a00191a:	2b00      	cmp	r3, #0
1a00191c:	da02      	bge.n	1a001924 <ABS+0x14>
1a00191e:	687b      	ldr	r3, [r7, #4]
1a001920:	425b      	negs	r3, r3
1a001922:	e000      	b.n	1a001926 <ABS+0x16>
1a001924:	687b      	ldr	r3, [r7, #4]
1a001926:	4618      	mov	r0, r3
1a001928:	370c      	adds	r7, #12
1a00192a:	46bd      	mov	sp, r7
1a00192c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001930:	4770      	bx	lr
1a001932:	Address 0x000000001a001932 is out of bounds.


1a001934 <pll_calc_divs>:
1a001934:	b580      	push	{r7, lr}
1a001936:	b088      	sub	sp, #32
1a001938:	af00      	add	r7, sp, #0
1a00193a:	6078      	str	r0, [r7, #4]
1a00193c:	6039      	str	r1, [r7, #0]
1a00193e:	687b      	ldr	r3, [r7, #4]
1a001940:	61fb      	str	r3, [r7, #28]
1a001942:	683b      	ldr	r3, [r7, #0]
1a001944:	681b      	ldr	r3, [r3, #0]
1a001946:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00194a:	2b00      	cmp	r3, #0
1a00194c:	d005      	beq.n	1a00195a <pll_calc_divs+0x26>
1a00194e:	683b      	ldr	r3, [r7, #0]
1a001950:	681b      	ldr	r3, [r3, #0]
1a001952:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a001956:	683b      	ldr	r3, [r7, #0]
1a001958:	601a      	str	r2, [r3, #0]
1a00195a:	2301      	movs	r3, #1
1a00195c:	61bb      	str	r3, [r7, #24]
1a00195e:	e06f      	b.n	1a001a40 <pll_calc_divs+0x10c>
1a001960:	2300      	movs	r3, #0
1a001962:	613b      	str	r3, [r7, #16]
1a001964:	e066      	b.n	1a001a34 <pll_calc_divs+0x100>
1a001966:	2301      	movs	r3, #1
1a001968:	617b      	str	r3, [r7, #20]
1a00196a:	e05a      	b.n	1a001a22 <pll_calc_divs+0xee>
1a00196c:	683b      	ldr	r3, [r7, #0]
1a00196e:	681b      	ldr	r3, [r3, #0]
1a001970:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a001974:	2b00      	cmp	r3, #0
1a001976:	d00e      	beq.n	1a001996 <pll_calc_divs+0x62>
1a001978:	693b      	ldr	r3, [r7, #16]
1a00197a:	3301      	adds	r3, #1
1a00197c:	697a      	ldr	r2, [r7, #20]
1a00197e:	fa02 f303 	lsl.w	r3, r2, r3
1a001982:	461a      	mov	r2, r3
1a001984:	683b      	ldr	r3, [r7, #0]
1a001986:	695b      	ldr	r3, [r3, #20]
1a001988:	fb03 f202 	mul.w	r2, r3, r2
1a00198c:	69bb      	ldr	r3, [r7, #24]
1a00198e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001992:	60fb      	str	r3, [r7, #12]
1a001994:	e008      	b.n	1a0019a8 <pll_calc_divs+0x74>
1a001996:	683b      	ldr	r3, [r7, #0]
1a001998:	695b      	ldr	r3, [r3, #20]
1a00199a:	697a      	ldr	r2, [r7, #20]
1a00199c:	fb02 f203 	mul.w	r2, r2, r3
1a0019a0:	69bb      	ldr	r3, [r7, #24]
1a0019a2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0019a6:	60fb      	str	r3, [r7, #12]
1a0019a8:	68fb      	ldr	r3, [r7, #12]
1a0019aa:	4a29      	ldr	r2, [pc, #164]	; (1a001a50 <pll_calc_divs+0x11c>)
1a0019ac:	4293      	cmp	r3, r2
1a0019ae:	d934      	bls.n	1a001a1a <pll_calc_divs+0xe6>
1a0019b0:	68fb      	ldr	r3, [r7, #12]
1a0019b2:	4a28      	ldr	r2, [pc, #160]	; (1a001a54 <pll_calc_divs+0x120>)
1a0019b4:	4293      	cmp	r3, r2
1a0019b6:	d839      	bhi.n	1a001a2c <pll_calc_divs+0xf8>
1a0019b8:	683b      	ldr	r3, [r7, #0]
1a0019ba:	681b      	ldr	r3, [r3, #0]
1a0019bc:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0019c0:	2b00      	cmp	r3, #0
1a0019c2:	d002      	beq.n	1a0019ca <pll_calc_divs+0x96>
1a0019c4:	68fb      	ldr	r3, [r7, #12]
1a0019c6:	60bb      	str	r3, [r7, #8]
1a0019c8:	e005      	b.n	1a0019d6 <pll_calc_divs+0xa2>
1a0019ca:	693b      	ldr	r3, [r7, #16]
1a0019cc:	3301      	adds	r3, #1
1a0019ce:	68fa      	ldr	r2, [r7, #12]
1a0019d0:	fa22 f303 	lsr.w	r3, r2, r3
1a0019d4:	60bb      	str	r3, [r7, #8]
1a0019d6:	687a      	ldr	r2, [r7, #4]
1a0019d8:	68bb      	ldr	r3, [r7, #8]
1a0019da:	1ad3      	subs	r3, r2, r3
1a0019dc:	4618      	mov	r0, r3
1a0019de:	f7ff ff97 	bl	1a001910 <ABS>
1a0019e2:	4602      	mov	r2, r0
1a0019e4:	69fb      	ldr	r3, [r7, #28]
1a0019e6:	4293      	cmp	r3, r2
1a0019e8:	d918      	bls.n	1a001a1c <pll_calc_divs+0xe8>
1a0019ea:	683b      	ldr	r3, [r7, #0]
1a0019ec:	69ba      	ldr	r2, [r7, #24]
1a0019ee:	609a      	str	r2, [r3, #8]
1a0019f0:	693b      	ldr	r3, [r7, #16]
1a0019f2:	1c5a      	adds	r2, r3, #1
1a0019f4:	683b      	ldr	r3, [r7, #0]
1a0019f6:	60da      	str	r2, [r3, #12]
1a0019f8:	683b      	ldr	r3, [r7, #0]
1a0019fa:	697a      	ldr	r2, [r7, #20]
1a0019fc:	611a      	str	r2, [r3, #16]
1a0019fe:	683b      	ldr	r3, [r7, #0]
1a001a00:	68ba      	ldr	r2, [r7, #8]
1a001a02:	619a      	str	r2, [r3, #24]
1a001a04:	683b      	ldr	r3, [r7, #0]
1a001a06:	68fa      	ldr	r2, [r7, #12]
1a001a08:	61da      	str	r2, [r3, #28]
1a001a0a:	687a      	ldr	r2, [r7, #4]
1a001a0c:	68bb      	ldr	r3, [r7, #8]
1a001a0e:	1ad3      	subs	r3, r2, r3
1a001a10:	4618      	mov	r0, r3
1a001a12:	f7ff ff7d 	bl	1a001910 <ABS>
1a001a16:	61f8      	str	r0, [r7, #28]
1a001a18:	e000      	b.n	1a001a1c <pll_calc_divs+0xe8>
1a001a1a:	bf00      	nop
1a001a1c:	697b      	ldr	r3, [r7, #20]
1a001a1e:	3301      	adds	r3, #1
1a001a20:	617b      	str	r3, [r7, #20]
1a001a22:	697b      	ldr	r3, [r7, #20]
1a001a24:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a001a28:	dda0      	ble.n	1a00196c <pll_calc_divs+0x38>
1a001a2a:	e000      	b.n	1a001a2e <pll_calc_divs+0xfa>
1a001a2c:	bf00      	nop
1a001a2e:	693b      	ldr	r3, [r7, #16]
1a001a30:	3301      	adds	r3, #1
1a001a32:	613b      	str	r3, [r7, #16]
1a001a34:	693b      	ldr	r3, [r7, #16]
1a001a36:	2b03      	cmp	r3, #3
1a001a38:	dd95      	ble.n	1a001966 <pll_calc_divs+0x32>
1a001a3a:	69bb      	ldr	r3, [r7, #24]
1a001a3c:	3301      	adds	r3, #1
1a001a3e:	61bb      	str	r3, [r7, #24]
1a001a40:	69bb      	ldr	r3, [r7, #24]
1a001a42:	2b04      	cmp	r3, #4
1a001a44:	dd8c      	ble.n	1a001960 <pll_calc_divs+0x2c>
1a001a46:	bf00      	nop
1a001a48:	3720      	adds	r7, #32
1a001a4a:	46bd      	mov	sp, r7
1a001a4c:	bd80      	pop	{r7, pc}
1a001a4e:	bf00      	nop
1a001a50:	094c5eff 	.word	0x094c5eff
1a001a54:	1312d000 	.word	0x1312d000

1a001a58 <pll_get_frac>:
1a001a58:	b5b0      	push	{r4, r5, r7, lr}
1a001a5a:	b09e      	sub	sp, #120	; 0x78
1a001a5c:	af00      	add	r7, sp, #0
1a001a5e:	6078      	str	r0, [r7, #4]
1a001a60:	6039      	str	r1, [r7, #0]
1a001a62:	f107 030c 	add.w	r3, r7, #12
1a001a66:	2260      	movs	r2, #96	; 0x60
1a001a68:	2100      	movs	r1, #0
1a001a6a:	4618      	mov	r0, r3
1a001a6c:	f7fe fc48 	bl	1a000300 <memset>
1a001a70:	68fb      	ldr	r3, [r7, #12]
1a001a72:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a001a76:	60fb      	str	r3, [r7, #12]
1a001a78:	683b      	ldr	r3, [r7, #0]
1a001a7a:	695b      	ldr	r3, [r3, #20]
1a001a7c:	623b      	str	r3, [r7, #32]
1a001a7e:	683b      	ldr	r3, [r7, #0]
1a001a80:	791b      	ldrb	r3, [r3, #4]
1a001a82:	743b      	strb	r3, [r7, #16]
1a001a84:	f107 030c 	add.w	r3, r7, #12
1a001a88:	4619      	mov	r1, r3
1a001a8a:	6878      	ldr	r0, [r7, #4]
1a001a8c:	f7ff ff52 	bl	1a001934 <pll_calc_divs>
1a001a90:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001a92:	687a      	ldr	r2, [r7, #4]
1a001a94:	429a      	cmp	r2, r3
1a001a96:	d10a      	bne.n	1a001aae <pll_get_frac+0x56>
1a001a98:	683b      	ldr	r3, [r7, #0]
1a001a9a:	461d      	mov	r5, r3
1a001a9c:	f107 040c 	add.w	r4, r7, #12
1a001aa0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001aa2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001aa4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001aa8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001aac:	e08e      	b.n	1a001bcc <pll_get_frac+0x174>
1a001aae:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001ab0:	687a      	ldr	r2, [r7, #4]
1a001ab2:	1ad3      	subs	r3, r2, r3
1a001ab4:	4618      	mov	r0, r3
1a001ab6:	f7ff ff2b 	bl	1a001910 <ABS>
1a001aba:	4603      	mov	r3, r0
1a001abc:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001abe:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001ac0:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001ac4:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001ac6:	683b      	ldr	r3, [r7, #0]
1a001ac8:	695b      	ldr	r3, [r3, #20]
1a001aca:	663b      	str	r3, [r7, #96]	; 0x60
1a001acc:	683b      	ldr	r3, [r7, #0]
1a001ace:	791b      	ldrb	r3, [r3, #4]
1a001ad0:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001ad4:	f107 030c 	add.w	r3, r7, #12
1a001ad8:	3340      	adds	r3, #64	; 0x40
1a001ada:	4619      	mov	r1, r3
1a001adc:	6878      	ldr	r0, [r7, #4]
1a001ade:	f7ff ff29 	bl	1a001934 <pll_calc_divs>
1a001ae2:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001ae4:	687a      	ldr	r2, [r7, #4]
1a001ae6:	429a      	cmp	r2, r3
1a001ae8:	d10a      	bne.n	1a001b00 <pll_get_frac+0xa8>
1a001aea:	683b      	ldr	r3, [r7, #0]
1a001aec:	461d      	mov	r5, r3
1a001aee:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001af2:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001af4:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001af6:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001afa:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001afe:	e065      	b.n	1a001bcc <pll_get_frac+0x174>
1a001b00:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001b02:	687a      	ldr	r2, [r7, #4]
1a001b04:	1ad3      	subs	r3, r2, r3
1a001b06:	4618      	mov	r0, r3
1a001b08:	f7ff ff02 	bl	1a001910 <ABS>
1a001b0c:	4603      	mov	r3, r0
1a001b0e:	677b      	str	r3, [r7, #116]	; 0x74
1a001b10:	687b      	ldr	r3, [r7, #4]
1a001b12:	4a30      	ldr	r2, [pc, #192]	; (1a001bd4 <pll_get_frac+0x17c>)
1a001b14:	4293      	cmp	r3, r2
1a001b16:	d81a      	bhi.n	1a001b4e <pll_get_frac+0xf6>
1a001b18:	2340      	movs	r3, #64	; 0x40
1a001b1a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001b1c:	683b      	ldr	r3, [r7, #0]
1a001b1e:	695b      	ldr	r3, [r3, #20]
1a001b20:	643b      	str	r3, [r7, #64]	; 0x40
1a001b22:	f107 030c 	add.w	r3, r7, #12
1a001b26:	3320      	adds	r3, #32
1a001b28:	4619      	mov	r1, r3
1a001b2a:	6878      	ldr	r0, [r7, #4]
1a001b2c:	f7ff ff02 	bl	1a001934 <pll_calc_divs>
1a001b30:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001b32:	687a      	ldr	r2, [r7, #4]
1a001b34:	429a      	cmp	r2, r3
1a001b36:	d10a      	bne.n	1a001b4e <pll_get_frac+0xf6>
1a001b38:	683b      	ldr	r3, [r7, #0]
1a001b3a:	461d      	mov	r5, r3
1a001b3c:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001b40:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001b42:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001b44:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001b48:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001b4c:	e03e      	b.n	1a001bcc <pll_get_frac+0x174>
1a001b4e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001b50:	687a      	ldr	r2, [r7, #4]
1a001b52:	1ad3      	subs	r3, r2, r3
1a001b54:	4618      	mov	r0, r3
1a001b56:	f7ff fedb 	bl	1a001910 <ABS>
1a001b5a:	4603      	mov	r3, r0
1a001b5c:	673b      	str	r3, [r7, #112]	; 0x70
1a001b5e:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001b60:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a001b62:	429a      	cmp	r2, r3
1a001b64:	dc19      	bgt.n	1a001b9a <pll_get_frac+0x142>
1a001b66:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001b68:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001b6a:	429a      	cmp	r2, r3
1a001b6c:	dc0a      	bgt.n	1a001b84 <pll_get_frac+0x12c>
1a001b6e:	683b      	ldr	r3, [r7, #0]
1a001b70:	461d      	mov	r5, r3
1a001b72:	f107 040c 	add.w	r4, r7, #12
1a001b76:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001b78:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001b7a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001b7e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001b82:	e023      	b.n	1a001bcc <pll_get_frac+0x174>
1a001b84:	683b      	ldr	r3, [r7, #0]
1a001b86:	461d      	mov	r5, r3
1a001b88:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001b8c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001b8e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001b90:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001b94:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001b98:	e018      	b.n	1a001bcc <pll_get_frac+0x174>
1a001b9a:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001b9c:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001b9e:	429a      	cmp	r2, r3
1a001ba0:	dc0a      	bgt.n	1a001bb8 <pll_get_frac+0x160>
1a001ba2:	683b      	ldr	r3, [r7, #0]
1a001ba4:	461d      	mov	r5, r3
1a001ba6:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001baa:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001bac:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001bae:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001bb2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001bb6:	e009      	b.n	1a001bcc <pll_get_frac+0x174>
1a001bb8:	683b      	ldr	r3, [r7, #0]
1a001bba:	461d      	mov	r5, r3
1a001bbc:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001bc0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001bc2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001bc4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001bc8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001bcc:	3778      	adds	r7, #120	; 0x78
1a001bce:	46bd      	mov	sp, r7
1a001bd0:	bdb0      	pop	{r4, r5, r7, pc}
1a001bd2:	bf00      	nop
1a001bd4:	068e7780 	.word	0x068e7780

1a001bd8 <Chip_Clock_GetDivRate>:
1a001bd8:	b580      	push	{r7, lr}
1a001bda:	b084      	sub	sp, #16
1a001bdc:	af00      	add	r7, sp, #0
1a001bde:	4603      	mov	r3, r0
1a001be0:	460a      	mov	r2, r1
1a001be2:	71fb      	strb	r3, [r7, #7]
1a001be4:	4613      	mov	r3, r2
1a001be6:	71bb      	strb	r3, [r7, #6]
1a001be8:	79bb      	ldrb	r3, [r7, #6]
1a001bea:	4618      	mov	r0, r3
1a001bec:	f000 f960 	bl	1a001eb0 <Chip_Clock_GetDividerSource>
1a001bf0:	4603      	mov	r3, r0
1a001bf2:	73fb      	strb	r3, [r7, #15]
1a001bf4:	79bb      	ldrb	r3, [r7, #6]
1a001bf6:	4618      	mov	r0, r3
1a001bf8:	f000 f97a 	bl	1a001ef0 <Chip_Clock_GetDividerDivisor>
1a001bfc:	60b8      	str	r0, [r7, #8]
1a001bfe:	7bfb      	ldrb	r3, [r7, #15]
1a001c00:	4618      	mov	r0, r3
1a001c02:	f000 f991 	bl	1a001f28 <Chip_Clock_GetClockInputHz>
1a001c06:	4602      	mov	r2, r0
1a001c08:	68bb      	ldr	r3, [r7, #8]
1a001c0a:	3301      	adds	r3, #1
1a001c0c:	fbb2 f3f3 	udiv	r3, r2, r3
1a001c10:	4618      	mov	r0, r3
1a001c12:	3710      	adds	r7, #16
1a001c14:	46bd      	mov	sp, r7
1a001c16:	bd80      	pop	{r7, pc}

1a001c18 <Chip_Clock_FindBaseClock>:
1a001c18:	b480      	push	{r7}
1a001c1a:	b085      	sub	sp, #20
1a001c1c:	af00      	add	r7, sp, #0
1a001c1e:	4603      	mov	r3, r0
1a001c20:	80fb      	strh	r3, [r7, #6]
1a001c22:	231c      	movs	r3, #28
1a001c24:	73fb      	strb	r3, [r7, #15]
1a001c26:	2300      	movs	r3, #0
1a001c28:	60bb      	str	r3, [r7, #8]
1a001c2a:	e024      	b.n	1a001c76 <Chip_Clock_FindBaseClock+0x5e>
1a001c2c:	491d      	ldr	r1, [pc, #116]	; (1a001ca4 <Chip_Clock_FindBaseClock+0x8c>)
1a001c2e:	68ba      	ldr	r2, [r7, #8]
1a001c30:	4613      	mov	r3, r2
1a001c32:	005b      	lsls	r3, r3, #1
1a001c34:	4413      	add	r3, r2
1a001c36:	005b      	lsls	r3, r3, #1
1a001c38:	440b      	add	r3, r1
1a001c3a:	881b      	ldrh	r3, [r3, #0]
1a001c3c:	88fa      	ldrh	r2, [r7, #6]
1a001c3e:	429a      	cmp	r2, r3
1a001c40:	d316      	bcc.n	1a001c70 <Chip_Clock_FindBaseClock+0x58>
1a001c42:	4918      	ldr	r1, [pc, #96]	; (1a001ca4 <Chip_Clock_FindBaseClock+0x8c>)
1a001c44:	68ba      	ldr	r2, [r7, #8]
1a001c46:	4613      	mov	r3, r2
1a001c48:	005b      	lsls	r3, r3, #1
1a001c4a:	4413      	add	r3, r2
1a001c4c:	005b      	lsls	r3, r3, #1
1a001c4e:	440b      	add	r3, r1
1a001c50:	3302      	adds	r3, #2
1a001c52:	881b      	ldrh	r3, [r3, #0]
1a001c54:	88fa      	ldrh	r2, [r7, #6]
1a001c56:	429a      	cmp	r2, r3
1a001c58:	d80a      	bhi.n	1a001c70 <Chip_Clock_FindBaseClock+0x58>
1a001c5a:	4912      	ldr	r1, [pc, #72]	; (1a001ca4 <Chip_Clock_FindBaseClock+0x8c>)
1a001c5c:	68ba      	ldr	r2, [r7, #8]
1a001c5e:	4613      	mov	r3, r2
1a001c60:	005b      	lsls	r3, r3, #1
1a001c62:	4413      	add	r3, r2
1a001c64:	005b      	lsls	r3, r3, #1
1a001c66:	440b      	add	r3, r1
1a001c68:	3304      	adds	r3, #4
1a001c6a:	781b      	ldrb	r3, [r3, #0]
1a001c6c:	73fb      	strb	r3, [r7, #15]
1a001c6e:	e002      	b.n	1a001c76 <Chip_Clock_FindBaseClock+0x5e>
1a001c70:	68bb      	ldr	r3, [r7, #8]
1a001c72:	3301      	adds	r3, #1
1a001c74:	60bb      	str	r3, [r7, #8]
1a001c76:	7bfb      	ldrb	r3, [r7, #15]
1a001c78:	2b1c      	cmp	r3, #28
1a001c7a:	d10b      	bne.n	1a001c94 <Chip_Clock_FindBaseClock+0x7c>
1a001c7c:	4909      	ldr	r1, [pc, #36]	; (1a001ca4 <Chip_Clock_FindBaseClock+0x8c>)
1a001c7e:	68ba      	ldr	r2, [r7, #8]
1a001c80:	4613      	mov	r3, r2
1a001c82:	005b      	lsls	r3, r3, #1
1a001c84:	4413      	add	r3, r2
1a001c86:	005b      	lsls	r3, r3, #1
1a001c88:	440b      	add	r3, r1
1a001c8a:	3304      	adds	r3, #4
1a001c8c:	781b      	ldrb	r3, [r3, #0]
1a001c8e:	7bfa      	ldrb	r2, [r7, #15]
1a001c90:	429a      	cmp	r2, r3
1a001c92:	d1cb      	bne.n	1a001c2c <Chip_Clock_FindBaseClock+0x14>
1a001c94:	7bfb      	ldrb	r3, [r7, #15]
1a001c96:	4618      	mov	r0, r3
1a001c98:	3714      	adds	r7, #20
1a001c9a:	46bd      	mov	sp, r7
1a001c9c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001ca0:	4770      	bx	lr
1a001ca2:	bf00      	nop
1a001ca4:	1a0024a4 	.word	0x1a0024a4

1a001ca8 <Chip_Clock_EnableCrystal>:
1a001ca8:	b480      	push	{r7}
1a001caa:	b083      	sub	sp, #12
1a001cac:	af00      	add	r7, sp, #0
1a001cae:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001cb2:	603b      	str	r3, [r7, #0]
1a001cb4:	4b15      	ldr	r3, [pc, #84]	; (1a001d0c <Chip_Clock_EnableCrystal+0x64>)
1a001cb6:	699b      	ldr	r3, [r3, #24]
1a001cb8:	607b      	str	r3, [r7, #4]
1a001cba:	687b      	ldr	r3, [r7, #4]
1a001cbc:	f023 0302 	bic.w	r3, r3, #2
1a001cc0:	607b      	str	r3, [r7, #4]
1a001cc2:	4b12      	ldr	r3, [pc, #72]	; (1a001d0c <Chip_Clock_EnableCrystal+0x64>)
1a001cc4:	699b      	ldr	r3, [r3, #24]
1a001cc6:	687a      	ldr	r2, [r7, #4]
1a001cc8:	429a      	cmp	r2, r3
1a001cca:	d002      	beq.n	1a001cd2 <Chip_Clock_EnableCrystal+0x2a>
1a001ccc:	4a0f      	ldr	r2, [pc, #60]	; (1a001d0c <Chip_Clock_EnableCrystal+0x64>)
1a001cce:	687b      	ldr	r3, [r7, #4]
1a001cd0:	6193      	str	r3, [r2, #24]
1a001cd2:	687b      	ldr	r3, [r7, #4]
1a001cd4:	f023 0301 	bic.w	r3, r3, #1
1a001cd8:	607b      	str	r3, [r7, #4]
1a001cda:	4b0d      	ldr	r3, [pc, #52]	; (1a001d10 <Chip_Clock_EnableCrystal+0x68>)
1a001cdc:	681b      	ldr	r3, [r3, #0]
1a001cde:	4a0d      	ldr	r2, [pc, #52]	; (1a001d14 <Chip_Clock_EnableCrystal+0x6c>)
1a001ce0:	4293      	cmp	r3, r2
1a001ce2:	d903      	bls.n	1a001cec <Chip_Clock_EnableCrystal+0x44>
1a001ce4:	687b      	ldr	r3, [r7, #4]
1a001ce6:	f043 0304 	orr.w	r3, r3, #4
1a001cea:	607b      	str	r3, [r7, #4]
1a001cec:	4a07      	ldr	r2, [pc, #28]	; (1a001d0c <Chip_Clock_EnableCrystal+0x64>)
1a001cee:	687b      	ldr	r3, [r7, #4]
1a001cf0:	6193      	str	r3, [r2, #24]
1a001cf2:	bf00      	nop
1a001cf4:	683b      	ldr	r3, [r7, #0]
1a001cf6:	1e5a      	subs	r2, r3, #1
1a001cf8:	603a      	str	r2, [r7, #0]
1a001cfa:	2b00      	cmp	r3, #0
1a001cfc:	d1fa      	bne.n	1a001cf4 <Chip_Clock_EnableCrystal+0x4c>
1a001cfe:	bf00      	nop
1a001d00:	370c      	adds	r7, #12
1a001d02:	46bd      	mov	sp, r7
1a001d04:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001d08:	4770      	bx	lr
1a001d0a:	bf00      	nop
1a001d0c:	40050000 	.word	0x40050000
1a001d10:	1a0023dc 	.word	0x1a0023dc
1a001d14:	01312cff 	.word	0x01312cff

1a001d18 <Chip_Clock_CalcMainPLLValue>:
1a001d18:	b580      	push	{r7, lr}
1a001d1a:	b082      	sub	sp, #8
1a001d1c:	af00      	add	r7, sp, #0
1a001d1e:	6078      	str	r0, [r7, #4]
1a001d20:	6039      	str	r1, [r7, #0]
1a001d22:	683b      	ldr	r3, [r7, #0]
1a001d24:	791b      	ldrb	r3, [r3, #4]
1a001d26:	4618      	mov	r0, r3
1a001d28:	f000 f8fe 	bl	1a001f28 <Chip_Clock_GetClockInputHz>
1a001d2c:	4602      	mov	r2, r0
1a001d2e:	683b      	ldr	r3, [r7, #0]
1a001d30:	615a      	str	r2, [r3, #20]
1a001d32:	687b      	ldr	r3, [r7, #4]
1a001d34:	4a2b      	ldr	r2, [pc, #172]	; (1a001de4 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a001d36:	4293      	cmp	r3, r2
1a001d38:	d807      	bhi.n	1a001d4a <Chip_Clock_CalcMainPLLValue+0x32>
1a001d3a:	687b      	ldr	r3, [r7, #4]
1a001d3c:	4a2a      	ldr	r2, [pc, #168]	; (1a001de8 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001d3e:	4293      	cmp	r3, r2
1a001d40:	d903      	bls.n	1a001d4a <Chip_Clock_CalcMainPLLValue+0x32>
1a001d42:	683b      	ldr	r3, [r7, #0]
1a001d44:	695b      	ldr	r3, [r3, #20]
1a001d46:	2b00      	cmp	r3, #0
1a001d48:	d102      	bne.n	1a001d50 <Chip_Clock_CalcMainPLLValue+0x38>
1a001d4a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001d4e:	e044      	b.n	1a001dda <Chip_Clock_CalcMainPLLValue+0xc2>
1a001d50:	683b      	ldr	r3, [r7, #0]
1a001d52:	2280      	movs	r2, #128	; 0x80
1a001d54:	601a      	str	r2, [r3, #0]
1a001d56:	683b      	ldr	r3, [r7, #0]
1a001d58:	2200      	movs	r2, #0
1a001d5a:	609a      	str	r2, [r3, #8]
1a001d5c:	683b      	ldr	r3, [r7, #0]
1a001d5e:	2200      	movs	r2, #0
1a001d60:	60da      	str	r2, [r3, #12]
1a001d62:	683b      	ldr	r3, [r7, #0]
1a001d64:	695b      	ldr	r3, [r3, #20]
1a001d66:	687a      	ldr	r2, [r7, #4]
1a001d68:	fbb2 f3f3 	udiv	r3, r2, r3
1a001d6c:	461a      	mov	r2, r3
1a001d6e:	683b      	ldr	r3, [r7, #0]
1a001d70:	611a      	str	r2, [r3, #16]
1a001d72:	687b      	ldr	r3, [r7, #4]
1a001d74:	4a1d      	ldr	r2, [pc, #116]	; (1a001dec <Chip_Clock_CalcMainPLLValue+0xd4>)
1a001d76:	4293      	cmp	r3, r2
1a001d78:	d909      	bls.n	1a001d8e <Chip_Clock_CalcMainPLLValue+0x76>
1a001d7a:	683b      	ldr	r3, [r7, #0]
1a001d7c:	691b      	ldr	r3, [r3, #16]
1a001d7e:	461a      	mov	r2, r3
1a001d80:	683b      	ldr	r3, [r7, #0]
1a001d82:	695b      	ldr	r3, [r3, #20]
1a001d84:	fb03 f302 	mul.w	r3, r3, r2
1a001d88:	687a      	ldr	r2, [r7, #4]
1a001d8a:	429a      	cmp	r2, r3
1a001d8c:	d00f      	beq.n	1a001dae <Chip_Clock_CalcMainPLLValue+0x96>
1a001d8e:	6839      	ldr	r1, [r7, #0]
1a001d90:	6878      	ldr	r0, [r7, #4]
1a001d92:	f7ff fe61 	bl	1a001a58 <pll_get_frac>
1a001d96:	683b      	ldr	r3, [r7, #0]
1a001d98:	689b      	ldr	r3, [r3, #8]
1a001d9a:	2b00      	cmp	r3, #0
1a001d9c:	d102      	bne.n	1a001da4 <Chip_Clock_CalcMainPLLValue+0x8c>
1a001d9e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001da2:	e01a      	b.n	1a001dda <Chip_Clock_CalcMainPLLValue+0xc2>
1a001da4:	683b      	ldr	r3, [r7, #0]
1a001da6:	689b      	ldr	r3, [r3, #8]
1a001da8:	1e5a      	subs	r2, r3, #1
1a001daa:	683b      	ldr	r3, [r7, #0]
1a001dac:	609a      	str	r2, [r3, #8]
1a001dae:	683b      	ldr	r3, [r7, #0]
1a001db0:	691b      	ldr	r3, [r3, #16]
1a001db2:	2b00      	cmp	r3, #0
1a001db4:	d102      	bne.n	1a001dbc <Chip_Clock_CalcMainPLLValue+0xa4>
1a001db6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001dba:	e00e      	b.n	1a001dda <Chip_Clock_CalcMainPLLValue+0xc2>
1a001dbc:	683b      	ldr	r3, [r7, #0]
1a001dbe:	68db      	ldr	r3, [r3, #12]
1a001dc0:	2b00      	cmp	r3, #0
1a001dc2:	d004      	beq.n	1a001dce <Chip_Clock_CalcMainPLLValue+0xb6>
1a001dc4:	683b      	ldr	r3, [r7, #0]
1a001dc6:	68db      	ldr	r3, [r3, #12]
1a001dc8:	1e5a      	subs	r2, r3, #1
1a001dca:	683b      	ldr	r3, [r7, #0]
1a001dcc:	60da      	str	r2, [r3, #12]
1a001dce:	683b      	ldr	r3, [r7, #0]
1a001dd0:	691b      	ldr	r3, [r3, #16]
1a001dd2:	1e5a      	subs	r2, r3, #1
1a001dd4:	683b      	ldr	r3, [r7, #0]
1a001dd6:	611a      	str	r2, [r3, #16]
1a001dd8:	2300      	movs	r3, #0
1a001dda:	4618      	mov	r0, r3
1a001ddc:	3708      	adds	r7, #8
1a001dde:	46bd      	mov	sp, r7
1a001de0:	bd80      	pop	{r7, pc}
1a001de2:	bf00      	nop
1a001de4:	0c28cb00 	.word	0x0c28cb00
1a001de8:	0094c5ef 	.word	0x0094c5ef
1a001dec:	094c5eff 	.word	0x094c5eff

1a001df0 <Chip_Clock_GetMainPLLHz>:
1a001df0:	b580      	push	{r7, lr}
1a001df2:	b08c      	sub	sp, #48	; 0x30
1a001df4:	af00      	add	r7, sp, #0
1a001df6:	4b2c      	ldr	r3, [pc, #176]	; (1a001ea8 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001df8:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001dfa:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001dfc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001dfe:	0e1b      	lsrs	r3, r3, #24
1a001e00:	b2db      	uxtb	r3, r3
1a001e02:	f003 030f 	and.w	r3, r3, #15
1a001e06:	b2db      	uxtb	r3, r3
1a001e08:	4618      	mov	r0, r3
1a001e0a:	f000 f88d 	bl	1a001f28 <Chip_Clock_GetClockInputHz>
1a001e0e:	62b8      	str	r0, [r7, #40]	; 0x28
1a001e10:	4b26      	ldr	r3, [pc, #152]	; (1a001eac <Chip_Clock_GetMainPLLHz+0xbc>)
1a001e12:	681b      	ldr	r3, [r3, #0]
1a001e14:	607b      	str	r3, [r7, #4]
1a001e16:	4b24      	ldr	r3, [pc, #144]	; (1a001ea8 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001e18:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001e1a:	f003 0301 	and.w	r3, r3, #1
1a001e1e:	2b00      	cmp	r3, #0
1a001e20:	d101      	bne.n	1a001e26 <Chip_Clock_GetMainPLLHz+0x36>
1a001e22:	2300      	movs	r3, #0
1a001e24:	e03b      	b.n	1a001e9e <Chip_Clock_GetMainPLLHz+0xae>
1a001e26:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001e28:	0c1b      	lsrs	r3, r3, #16
1a001e2a:	b2db      	uxtb	r3, r3
1a001e2c:	627b      	str	r3, [r7, #36]	; 0x24
1a001e2e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001e30:	0b1b      	lsrs	r3, r3, #12
1a001e32:	f003 0303 	and.w	r3, r3, #3
1a001e36:	623b      	str	r3, [r7, #32]
1a001e38:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001e3a:	0a1b      	lsrs	r3, r3, #8
1a001e3c:	f003 0303 	and.w	r3, r3, #3
1a001e40:	61fb      	str	r3, [r7, #28]
1a001e42:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001e44:	09db      	lsrs	r3, r3, #7
1a001e46:	f003 0301 	and.w	r3, r3, #1
1a001e4a:	61bb      	str	r3, [r7, #24]
1a001e4c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001e4e:	099b      	lsrs	r3, r3, #6
1a001e50:	f003 0301 	and.w	r3, r3, #1
1a001e54:	617b      	str	r3, [r7, #20]
1a001e56:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001e58:	3301      	adds	r3, #1
1a001e5a:	613b      	str	r3, [r7, #16]
1a001e5c:	6a3b      	ldr	r3, [r7, #32]
1a001e5e:	3301      	adds	r3, #1
1a001e60:	60fb      	str	r3, [r7, #12]
1a001e62:	1d3a      	adds	r2, r7, #4
1a001e64:	69fb      	ldr	r3, [r7, #28]
1a001e66:	4413      	add	r3, r2
1a001e68:	781b      	ldrb	r3, [r3, #0]
1a001e6a:	60bb      	str	r3, [r7, #8]
1a001e6c:	69bb      	ldr	r3, [r7, #24]
1a001e6e:	2b00      	cmp	r3, #0
1a001e70:	d102      	bne.n	1a001e78 <Chip_Clock_GetMainPLLHz+0x88>
1a001e72:	697b      	ldr	r3, [r7, #20]
1a001e74:	2b00      	cmp	r3, #0
1a001e76:	d007      	beq.n	1a001e88 <Chip_Clock_GetMainPLLHz+0x98>
1a001e78:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a001e7a:	68fb      	ldr	r3, [r7, #12]
1a001e7c:	fbb2 f3f3 	udiv	r3, r2, r3
1a001e80:	693a      	ldr	r2, [r7, #16]
1a001e82:	fb02 f303 	mul.w	r3, r2, r3
1a001e86:	e00a      	b.n	1a001e9e <Chip_Clock_GetMainPLLHz+0xae>
1a001e88:	68bb      	ldr	r3, [r7, #8]
1a001e8a:	005b      	lsls	r3, r3, #1
1a001e8c:	693a      	ldr	r2, [r7, #16]
1a001e8e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001e92:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a001e94:	68fa      	ldr	r2, [r7, #12]
1a001e96:	fbb1 f2f2 	udiv	r2, r1, r2
1a001e9a:	fb02 f303 	mul.w	r3, r2, r3
1a001e9e:	4618      	mov	r0, r3
1a001ea0:	3730      	adds	r7, #48	; 0x30
1a001ea2:	46bd      	mov	sp, r7
1a001ea4:	bd80      	pop	{r7, pc}
1a001ea6:	bf00      	nop
1a001ea8:	40050000 	.word	0x40050000
1a001eac:	1a002510 	.word	0x1a002510

1a001eb0 <Chip_Clock_GetDividerSource>:
1a001eb0:	b480      	push	{r7}
1a001eb2:	b085      	sub	sp, #20
1a001eb4:	af00      	add	r7, sp, #0
1a001eb6:	4603      	mov	r3, r0
1a001eb8:	71fb      	strb	r3, [r7, #7]
1a001eba:	4a0c      	ldr	r2, [pc, #48]	; (1a001eec <Chip_Clock_GetDividerSource+0x3c>)
1a001ebc:	79fb      	ldrb	r3, [r7, #7]
1a001ebe:	3312      	adds	r3, #18
1a001ec0:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001ec4:	60fb      	str	r3, [r7, #12]
1a001ec6:	68fb      	ldr	r3, [r7, #12]
1a001ec8:	f003 0301 	and.w	r3, r3, #1
1a001ecc:	2b00      	cmp	r3, #0
1a001ece:	d001      	beq.n	1a001ed4 <Chip_Clock_GetDividerSource+0x24>
1a001ed0:	2311      	movs	r3, #17
1a001ed2:	e005      	b.n	1a001ee0 <Chip_Clock_GetDividerSource+0x30>
1a001ed4:	68fb      	ldr	r3, [r7, #12]
1a001ed6:	0e1b      	lsrs	r3, r3, #24
1a001ed8:	b2db      	uxtb	r3, r3
1a001eda:	f003 031f 	and.w	r3, r3, #31
1a001ede:	b2db      	uxtb	r3, r3
1a001ee0:	4618      	mov	r0, r3
1a001ee2:	3714      	adds	r7, #20
1a001ee4:	46bd      	mov	sp, r7
1a001ee6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001eea:	4770      	bx	lr
1a001eec:	40050000 	.word	0x40050000

1a001ef0 <Chip_Clock_GetDividerDivisor>:
1a001ef0:	b480      	push	{r7}
1a001ef2:	b083      	sub	sp, #12
1a001ef4:	af00      	add	r7, sp, #0
1a001ef6:	4603      	mov	r3, r0
1a001ef8:	71fb      	strb	r3, [r7, #7]
1a001efa:	4a09      	ldr	r2, [pc, #36]	; (1a001f20 <Chip_Clock_GetDividerDivisor+0x30>)
1a001efc:	79fb      	ldrb	r3, [r7, #7]
1a001efe:	3312      	adds	r3, #18
1a001f00:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001f04:	089b      	lsrs	r3, r3, #2
1a001f06:	b2da      	uxtb	r2, r3
1a001f08:	79fb      	ldrb	r3, [r7, #7]
1a001f0a:	4906      	ldr	r1, [pc, #24]	; (1a001f24 <Chip_Clock_GetDividerDivisor+0x34>)
1a001f0c:	5ccb      	ldrb	r3, [r1, r3]
1a001f0e:	4013      	ands	r3, r2
1a001f10:	b2db      	uxtb	r3, r3
1a001f12:	4618      	mov	r0, r3
1a001f14:	370c      	adds	r7, #12
1a001f16:	46bd      	mov	sp, r7
1a001f18:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001f1c:	4770      	bx	lr
1a001f1e:	bf00      	nop
1a001f20:	40050000 	.word	0x40050000
1a001f24:	1a002514 	.word	0x1a002514

1a001f28 <Chip_Clock_GetClockInputHz>:
1a001f28:	b580      	push	{r7, lr}
1a001f2a:	b084      	sub	sp, #16
1a001f2c:	af00      	add	r7, sp, #0
1a001f2e:	4603      	mov	r3, r0
1a001f30:	71fb      	strb	r3, [r7, #7]
1a001f32:	2300      	movs	r3, #0
1a001f34:	60fb      	str	r3, [r7, #12]
1a001f36:	79fb      	ldrb	r3, [r7, #7]
1a001f38:	2b11      	cmp	r3, #17
1a001f3a:	d87f      	bhi.n	1a00203c <Chip_Clock_GetClockInputHz+0x114>
1a001f3c:	a201      	add	r2, pc, #4	; (adr r2, 1a001f44 <Chip_Clock_GetClockInputHz+0x1c>)
1a001f3e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001f42:	bf00      	nop
1a001f44:	1a001f8d 	.word	0x1a001f8d
1a001f48:	1a001f95 	.word	0x1a001f95
1a001f4c:	1a001f9b 	.word	0x1a001f9b
1a001f50:	1a001faf 	.word	0x1a001faf
1a001f54:	1a001fc9 	.word	0x1a001fc9
1a001f58:	1a00203d 	.word	0x1a00203d
1a001f5c:	1a001fd1 	.word	0x1a001fd1
1a001f60:	1a001fd9 	.word	0x1a001fd9
1a001f64:	1a001fe1 	.word	0x1a001fe1
1a001f68:	1a001fe9 	.word	0x1a001fe9
1a001f6c:	1a00203d 	.word	0x1a00203d
1a001f70:	1a00203d 	.word	0x1a00203d
1a001f74:	1a001ff1 	.word	0x1a001ff1
1a001f78:	1a001fff 	.word	0x1a001fff
1a001f7c:	1a00200d 	.word	0x1a00200d
1a001f80:	1a00201b 	.word	0x1a00201b
1a001f84:	1a002029 	.word	0x1a002029
1a001f88:	1a002037 	.word	0x1a002037
1a001f8c:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001f90:	60fb      	str	r3, [r7, #12]
1a001f92:	e056      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a001f94:	4b2d      	ldr	r3, [pc, #180]	; (1a00204c <Chip_Clock_GetClockInputHz+0x124>)
1a001f96:	60fb      	str	r3, [r7, #12]
1a001f98:	e053      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a001f9a:	4b2d      	ldr	r3, [pc, #180]	; (1a002050 <Chip_Clock_GetClockInputHz+0x128>)
1a001f9c:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001fa0:	f003 0307 	and.w	r3, r3, #7
1a001fa4:	2b04      	cmp	r3, #4
1a001fa6:	d04b      	beq.n	1a002040 <Chip_Clock_GetClockInputHz+0x118>
1a001fa8:	4b2a      	ldr	r3, [pc, #168]	; (1a002054 <Chip_Clock_GetClockInputHz+0x12c>)
1a001faa:	60fb      	str	r3, [r7, #12]
1a001fac:	e048      	b.n	1a002040 <Chip_Clock_GetClockInputHz+0x118>
1a001fae:	4b28      	ldr	r3, [pc, #160]	; (1a002050 <Chip_Clock_GetClockInputHz+0x128>)
1a001fb0:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001fb4:	f003 0307 	and.w	r3, r3, #7
1a001fb8:	2b04      	cmp	r3, #4
1a001fba:	d002      	beq.n	1a001fc2 <Chip_Clock_GetClockInputHz+0x9a>
1a001fbc:	4b25      	ldr	r3, [pc, #148]	; (1a002054 <Chip_Clock_GetClockInputHz+0x12c>)
1a001fbe:	60fb      	str	r3, [r7, #12]
1a001fc0:	e03f      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a001fc2:	4b25      	ldr	r3, [pc, #148]	; (1a002058 <Chip_Clock_GetClockInputHz+0x130>)
1a001fc4:	60fb      	str	r3, [r7, #12]
1a001fc6:	e03c      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a001fc8:	4b24      	ldr	r3, [pc, #144]	; (1a00205c <Chip_Clock_GetClockInputHz+0x134>)
1a001fca:	681b      	ldr	r3, [r3, #0]
1a001fcc:	60fb      	str	r3, [r7, #12]
1a001fce:	e038      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a001fd0:	4b23      	ldr	r3, [pc, #140]	; (1a002060 <Chip_Clock_GetClockInputHz+0x138>)
1a001fd2:	681b      	ldr	r3, [r3, #0]
1a001fd4:	60fb      	str	r3, [r7, #12]
1a001fd6:	e034      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a001fd8:	4b22      	ldr	r3, [pc, #136]	; (1a002064 <Chip_Clock_GetClockInputHz+0x13c>)
1a001fda:	681b      	ldr	r3, [r3, #0]
1a001fdc:	60fb      	str	r3, [r7, #12]
1a001fde:	e030      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a001fe0:	4b20      	ldr	r3, [pc, #128]	; (1a002064 <Chip_Clock_GetClockInputHz+0x13c>)
1a001fe2:	685b      	ldr	r3, [r3, #4]
1a001fe4:	60fb      	str	r3, [r7, #12]
1a001fe6:	e02c      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a001fe8:	f7ff ff02 	bl	1a001df0 <Chip_Clock_GetMainPLLHz>
1a001fec:	60f8      	str	r0, [r7, #12]
1a001fee:	e028      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a001ff0:	79fb      	ldrb	r3, [r7, #7]
1a001ff2:	2100      	movs	r1, #0
1a001ff4:	4618      	mov	r0, r3
1a001ff6:	f7ff fdef 	bl	1a001bd8 <Chip_Clock_GetDivRate>
1a001ffa:	60f8      	str	r0, [r7, #12]
1a001ffc:	e021      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a001ffe:	79fb      	ldrb	r3, [r7, #7]
1a002000:	2101      	movs	r1, #1
1a002002:	4618      	mov	r0, r3
1a002004:	f7ff fde8 	bl	1a001bd8 <Chip_Clock_GetDivRate>
1a002008:	60f8      	str	r0, [r7, #12]
1a00200a:	e01a      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a00200c:	79fb      	ldrb	r3, [r7, #7]
1a00200e:	2102      	movs	r1, #2
1a002010:	4618      	mov	r0, r3
1a002012:	f7ff fde1 	bl	1a001bd8 <Chip_Clock_GetDivRate>
1a002016:	60f8      	str	r0, [r7, #12]
1a002018:	e013      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a00201a:	79fb      	ldrb	r3, [r7, #7]
1a00201c:	2103      	movs	r1, #3
1a00201e:	4618      	mov	r0, r3
1a002020:	f7ff fdda 	bl	1a001bd8 <Chip_Clock_GetDivRate>
1a002024:	60f8      	str	r0, [r7, #12]
1a002026:	e00c      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a002028:	79fb      	ldrb	r3, [r7, #7]
1a00202a:	2104      	movs	r1, #4
1a00202c:	4618      	mov	r0, r3
1a00202e:	f7ff fdd3 	bl	1a001bd8 <Chip_Clock_GetDivRate>
1a002032:	60f8      	str	r0, [r7, #12]
1a002034:	e005      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a002036:	2300      	movs	r3, #0
1a002038:	60fb      	str	r3, [r7, #12]
1a00203a:	e002      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a00203c:	bf00      	nop
1a00203e:	e000      	b.n	1a002042 <Chip_Clock_GetClockInputHz+0x11a>
1a002040:	bf00      	nop
1a002042:	68fb      	ldr	r3, [r7, #12]
1a002044:	4618      	mov	r0, r3
1a002046:	3710      	adds	r7, #16
1a002048:	46bd      	mov	sp, r7
1a00204a:	bd80      	pop	{r7, pc}
1a00204c:	00b71b00 	.word	0x00b71b00
1a002050:	40043000 	.word	0x40043000
1a002054:	017d7840 	.word	0x017d7840
1a002058:	02faf080 	.word	0x02faf080
1a00205c:	1a0023d8 	.word	0x1a0023d8
1a002060:	1a0023dc 	.word	0x1a0023dc
1a002064:	10000008 	.word	0x10000008

1a002068 <Chip_Clock_GetBaseClocktHz>:
1a002068:	b580      	push	{r7, lr}
1a00206a:	b082      	sub	sp, #8
1a00206c:	af00      	add	r7, sp, #0
1a00206e:	4603      	mov	r3, r0
1a002070:	71fb      	strb	r3, [r7, #7]
1a002072:	79fb      	ldrb	r3, [r7, #7]
1a002074:	4618      	mov	r0, r3
1a002076:	f000 f857 	bl	1a002128 <Chip_Clock_GetBaseClock>
1a00207a:	4603      	mov	r3, r0
1a00207c:	4618      	mov	r0, r3
1a00207e:	f7ff ff53 	bl	1a001f28 <Chip_Clock_GetClockInputHz>
1a002082:	4603      	mov	r3, r0
1a002084:	4618      	mov	r0, r3
1a002086:	3708      	adds	r7, #8
1a002088:	46bd      	mov	sp, r7
1a00208a:	bd80      	pop	{r7, pc}

1a00208c <Chip_Clock_SetBaseClock>:
1a00208c:	b490      	push	{r4, r7}
1a00208e:	b084      	sub	sp, #16
1a002090:	af00      	add	r7, sp, #0
1a002092:	4604      	mov	r4, r0
1a002094:	4608      	mov	r0, r1
1a002096:	4611      	mov	r1, r2
1a002098:	461a      	mov	r2, r3
1a00209a:	4623      	mov	r3, r4
1a00209c:	71fb      	strb	r3, [r7, #7]
1a00209e:	4603      	mov	r3, r0
1a0020a0:	71bb      	strb	r3, [r7, #6]
1a0020a2:	460b      	mov	r3, r1
1a0020a4:	717b      	strb	r3, [r7, #5]
1a0020a6:	4613      	mov	r3, r2
1a0020a8:	713b      	strb	r3, [r7, #4]
1a0020aa:	4a1d      	ldr	r2, [pc, #116]	; (1a002120 <Chip_Clock_SetBaseClock+0x94>)
1a0020ac:	79fb      	ldrb	r3, [r7, #7]
1a0020ae:	3316      	adds	r3, #22
1a0020b0:	009b      	lsls	r3, r3, #2
1a0020b2:	4413      	add	r3, r2
1a0020b4:	685b      	ldr	r3, [r3, #4]
1a0020b6:	60fb      	str	r3, [r7, #12]
1a0020b8:	79fb      	ldrb	r3, [r7, #7]
1a0020ba:	2b1b      	cmp	r3, #27
1a0020bc:	d822      	bhi.n	1a002104 <Chip_Clock_SetBaseClock+0x78>
1a0020be:	79bb      	ldrb	r3, [r7, #6]
1a0020c0:	2b11      	cmp	r3, #17
1a0020c2:	d028      	beq.n	1a002116 <Chip_Clock_SetBaseClock+0x8a>
1a0020c4:	68fa      	ldr	r2, [r7, #12]
1a0020c6:	4b17      	ldr	r3, [pc, #92]	; (1a002124 <Chip_Clock_SetBaseClock+0x98>)
1a0020c8:	4013      	ands	r3, r2
1a0020ca:	60fb      	str	r3, [r7, #12]
1a0020cc:	797b      	ldrb	r3, [r7, #5]
1a0020ce:	2b00      	cmp	r3, #0
1a0020d0:	d003      	beq.n	1a0020da <Chip_Clock_SetBaseClock+0x4e>
1a0020d2:	68fb      	ldr	r3, [r7, #12]
1a0020d4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a0020d8:	60fb      	str	r3, [r7, #12]
1a0020da:	793b      	ldrb	r3, [r7, #4]
1a0020dc:	2b00      	cmp	r3, #0
1a0020de:	d003      	beq.n	1a0020e8 <Chip_Clock_SetBaseClock+0x5c>
1a0020e0:	68fb      	ldr	r3, [r7, #12]
1a0020e2:	f043 0301 	orr.w	r3, r3, #1
1a0020e6:	60fb      	str	r3, [r7, #12]
1a0020e8:	79bb      	ldrb	r3, [r7, #6]
1a0020ea:	061b      	lsls	r3, r3, #24
1a0020ec:	461a      	mov	r2, r3
1a0020ee:	68fb      	ldr	r3, [r7, #12]
1a0020f0:	4313      	orrs	r3, r2
1a0020f2:	60fb      	str	r3, [r7, #12]
1a0020f4:	4a0a      	ldr	r2, [pc, #40]	; (1a002120 <Chip_Clock_SetBaseClock+0x94>)
1a0020f6:	79fb      	ldrb	r3, [r7, #7]
1a0020f8:	3316      	adds	r3, #22
1a0020fa:	009b      	lsls	r3, r3, #2
1a0020fc:	4413      	add	r3, r2
1a0020fe:	68fa      	ldr	r2, [r7, #12]
1a002100:	605a      	str	r2, [r3, #4]
1a002102:	e008      	b.n	1a002116 <Chip_Clock_SetBaseClock+0x8a>
1a002104:	4906      	ldr	r1, [pc, #24]	; (1a002120 <Chip_Clock_SetBaseClock+0x94>)
1a002106:	79fb      	ldrb	r3, [r7, #7]
1a002108:	68fa      	ldr	r2, [r7, #12]
1a00210a:	f042 0201 	orr.w	r2, r2, #1
1a00210e:	3316      	adds	r3, #22
1a002110:	009b      	lsls	r3, r3, #2
1a002112:	440b      	add	r3, r1
1a002114:	605a      	str	r2, [r3, #4]
1a002116:	bf00      	nop
1a002118:	3710      	adds	r7, #16
1a00211a:	46bd      	mov	sp, r7
1a00211c:	bc90      	pop	{r4, r7}
1a00211e:	4770      	bx	lr
1a002120:	40050000 	.word	0x40050000
1a002124:	e0fff7fe 	.word	0xe0fff7fe

1a002128 <Chip_Clock_GetBaseClock>:
1a002128:	b480      	push	{r7}
1a00212a:	b085      	sub	sp, #20
1a00212c:	af00      	add	r7, sp, #0
1a00212e:	4603      	mov	r3, r0
1a002130:	71fb      	strb	r3, [r7, #7]
1a002132:	79fb      	ldrb	r3, [r7, #7]
1a002134:	2b1b      	cmp	r3, #27
1a002136:	d901      	bls.n	1a00213c <Chip_Clock_GetBaseClock+0x14>
1a002138:	2311      	movs	r3, #17
1a00213a:	e013      	b.n	1a002164 <Chip_Clock_GetBaseClock+0x3c>
1a00213c:	4a0c      	ldr	r2, [pc, #48]	; (1a002170 <Chip_Clock_GetBaseClock+0x48>)
1a00213e:	79fb      	ldrb	r3, [r7, #7]
1a002140:	3316      	adds	r3, #22
1a002142:	009b      	lsls	r3, r3, #2
1a002144:	4413      	add	r3, r2
1a002146:	685b      	ldr	r3, [r3, #4]
1a002148:	60fb      	str	r3, [r7, #12]
1a00214a:	68fb      	ldr	r3, [r7, #12]
1a00214c:	f003 0301 	and.w	r3, r3, #1
1a002150:	2b00      	cmp	r3, #0
1a002152:	d001      	beq.n	1a002158 <Chip_Clock_GetBaseClock+0x30>
1a002154:	2311      	movs	r3, #17
1a002156:	e005      	b.n	1a002164 <Chip_Clock_GetBaseClock+0x3c>
1a002158:	68fb      	ldr	r3, [r7, #12]
1a00215a:	0e1b      	lsrs	r3, r3, #24
1a00215c:	b2db      	uxtb	r3, r3
1a00215e:	f003 031f 	and.w	r3, r3, #31
1a002162:	b2db      	uxtb	r3, r3
1a002164:	4618      	mov	r0, r3
1a002166:	3714      	adds	r7, #20
1a002168:	46bd      	mov	sp, r7
1a00216a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00216e:	4770      	bx	lr
1a002170:	40050000 	.word	0x40050000

1a002174 <Chip_Clock_EnableOpts>:
1a002174:	b480      	push	{r7}
1a002176:	b085      	sub	sp, #20
1a002178:	af00      	add	r7, sp, #0
1a00217a:	603b      	str	r3, [r7, #0]
1a00217c:	4603      	mov	r3, r0
1a00217e:	80fb      	strh	r3, [r7, #6]
1a002180:	460b      	mov	r3, r1
1a002182:	717b      	strb	r3, [r7, #5]
1a002184:	4613      	mov	r3, r2
1a002186:	713b      	strb	r3, [r7, #4]
1a002188:	2301      	movs	r3, #1
1a00218a:	60fb      	str	r3, [r7, #12]
1a00218c:	797b      	ldrb	r3, [r7, #5]
1a00218e:	2b00      	cmp	r3, #0
1a002190:	d003      	beq.n	1a00219a <Chip_Clock_EnableOpts+0x26>
1a002192:	68fb      	ldr	r3, [r7, #12]
1a002194:	f043 0302 	orr.w	r3, r3, #2
1a002198:	60fb      	str	r3, [r7, #12]
1a00219a:	793b      	ldrb	r3, [r7, #4]
1a00219c:	2b00      	cmp	r3, #0
1a00219e:	d003      	beq.n	1a0021a8 <Chip_Clock_EnableOpts+0x34>
1a0021a0:	68fb      	ldr	r3, [r7, #12]
1a0021a2:	f043 0304 	orr.w	r3, r3, #4
1a0021a6:	60fb      	str	r3, [r7, #12]
1a0021a8:	683b      	ldr	r3, [r7, #0]
1a0021aa:	2b02      	cmp	r3, #2
1a0021ac:	d103      	bne.n	1a0021b6 <Chip_Clock_EnableOpts+0x42>
1a0021ae:	68fb      	ldr	r3, [r7, #12]
1a0021b0:	f043 0320 	orr.w	r3, r3, #32
1a0021b4:	60fb      	str	r3, [r7, #12]
1a0021b6:	88fb      	ldrh	r3, [r7, #6]
1a0021b8:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a0021bc:	d308      	bcc.n	1a0021d0 <Chip_Clock_EnableOpts+0x5c>
1a0021be:	490a      	ldr	r1, [pc, #40]	; (1a0021e8 <Chip_Clock_EnableOpts+0x74>)
1a0021c0:	88fb      	ldrh	r3, [r7, #6]
1a0021c2:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0021c6:	3320      	adds	r3, #32
1a0021c8:	68fa      	ldr	r2, [r7, #12]
1a0021ca:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0021ce:	e005      	b.n	1a0021dc <Chip_Clock_EnableOpts+0x68>
1a0021d0:	4906      	ldr	r1, [pc, #24]	; (1a0021ec <Chip_Clock_EnableOpts+0x78>)
1a0021d2:	88fb      	ldrh	r3, [r7, #6]
1a0021d4:	3320      	adds	r3, #32
1a0021d6:	68fa      	ldr	r2, [r7, #12]
1a0021d8:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0021dc:	bf00      	nop
1a0021de:	3714      	adds	r7, #20
1a0021e0:	46bd      	mov	sp, r7
1a0021e2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021e6:	4770      	bx	lr
1a0021e8:	40052000 	.word	0x40052000
1a0021ec:	40051000 	.word	0x40051000

1a0021f0 <Chip_Clock_GetRate>:
1a0021f0:	b580      	push	{r7, lr}
1a0021f2:	b086      	sub	sp, #24
1a0021f4:	af00      	add	r7, sp, #0
1a0021f6:	4603      	mov	r3, r0
1a0021f8:	80fb      	strh	r3, [r7, #6]
1a0021fa:	88fb      	ldrh	r3, [r7, #6]
1a0021fc:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002200:	d308      	bcc.n	1a002214 <Chip_Clock_GetRate+0x24>
1a002202:	4a1b      	ldr	r2, [pc, #108]	; (1a002270 <Chip_Clock_GetRate+0x80>)
1a002204:	88fb      	ldrh	r3, [r7, #6]
1a002206:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a00220a:	3320      	adds	r3, #32
1a00220c:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a002210:	617b      	str	r3, [r7, #20]
1a002212:	e005      	b.n	1a002220 <Chip_Clock_GetRate+0x30>
1a002214:	4a17      	ldr	r2, [pc, #92]	; (1a002274 <Chip_Clock_GetRate+0x84>)
1a002216:	88fb      	ldrh	r3, [r7, #6]
1a002218:	3320      	adds	r3, #32
1a00221a:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a00221e:	617b      	str	r3, [r7, #20]
1a002220:	697b      	ldr	r3, [r7, #20]
1a002222:	f003 0301 	and.w	r3, r3, #1
1a002226:	2b00      	cmp	r3, #0
1a002228:	d01b      	beq.n	1a002262 <Chip_Clock_GetRate+0x72>
1a00222a:	88fb      	ldrh	r3, [r7, #6]
1a00222c:	4618      	mov	r0, r3
1a00222e:	f7ff fcf3 	bl	1a001c18 <Chip_Clock_FindBaseClock>
1a002232:	4603      	mov	r3, r0
1a002234:	72fb      	strb	r3, [r7, #11]
1a002236:	7afb      	ldrb	r3, [r7, #11]
1a002238:	4618      	mov	r0, r3
1a00223a:	f7ff ff15 	bl	1a002068 <Chip_Clock_GetBaseClocktHz>
1a00223e:	60f8      	str	r0, [r7, #12]
1a002240:	697b      	ldr	r3, [r7, #20]
1a002242:	095b      	lsrs	r3, r3, #5
1a002244:	f003 0307 	and.w	r3, r3, #7
1a002248:	2b00      	cmp	r3, #0
1a00224a:	d102      	bne.n	1a002252 <Chip_Clock_GetRate+0x62>
1a00224c:	2301      	movs	r3, #1
1a00224e:	613b      	str	r3, [r7, #16]
1a002250:	e001      	b.n	1a002256 <Chip_Clock_GetRate+0x66>
1a002252:	2302      	movs	r3, #2
1a002254:	613b      	str	r3, [r7, #16]
1a002256:	68fa      	ldr	r2, [r7, #12]
1a002258:	693b      	ldr	r3, [r7, #16]
1a00225a:	fbb2 f3f3 	udiv	r3, r2, r3
1a00225e:	60fb      	str	r3, [r7, #12]
1a002260:	e001      	b.n	1a002266 <Chip_Clock_GetRate+0x76>
1a002262:	2300      	movs	r3, #0
1a002264:	60fb      	str	r3, [r7, #12]
1a002266:	68fb      	ldr	r3, [r7, #12]
1a002268:	4618      	mov	r0, r3
1a00226a:	3718      	adds	r7, #24
1a00226c:	46bd      	mov	sp, r7
1a00226e:	bd80      	pop	{r7, pc}
1a002270:	40052000 	.word	0x40052000
1a002274:	40051000 	.word	0x40051000

1a002278 <SystemCoreClockUpdate>:
1a002278:	b580      	push	{r7, lr}
1a00227a:	af00      	add	r7, sp, #0
1a00227c:	2069      	movs	r0, #105	; 0x69
1a00227e:	f7ff ffb7 	bl	1a0021f0 <Chip_Clock_GetRate>
1a002282:	4602      	mov	r2, r0
1a002284:	4b01      	ldr	r3, [pc, #4]	; (1a00228c <SystemCoreClockUpdate+0x14>)
1a002286:	601a      	str	r2, [r3, #0]
1a002288:	bf00      	nop
1a00228a:	bd80      	pop	{r7, pc}
1a00228c:	1000049c 	.word	0x1000049c

1a002290 <Chip_GPIO_Init>:
1a002290:	b480      	push	{r7}
1a002292:	b083      	sub	sp, #12
1a002294:	af00      	add	r7, sp, #0
1a002296:	6078      	str	r0, [r7, #4]
1a002298:	bf00      	nop
1a00229a:	370c      	adds	r7, #12
1a00229c:	46bd      	mov	sp, r7
1a00229e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0022a2:	4770      	bx	lr

1a0022a4 <memcpy>:
1a0022a4:	4684      	mov	ip, r0
1a0022a6:	ea41 0300 	orr.w	r3, r1, r0
1a0022aa:	f013 0303 	ands.w	r3, r3, #3
1a0022ae:	d16d      	bne.n	1a00238c <memcpy+0xe8>
1a0022b0:	3a40      	subs	r2, #64	; 0x40
1a0022b2:	d341      	bcc.n	1a002338 <memcpy+0x94>
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
1a002314:	f851 3b04 	ldr.w	r3, [r1], #4
1a002318:	f840 3b04 	str.w	r3, [r0], #4
1a00231c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002320:	f840 3b04 	str.w	r3, [r0], #4
1a002324:	f851 3b04 	ldr.w	r3, [r1], #4
1a002328:	f840 3b04 	str.w	r3, [r0], #4
1a00232c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002330:	f840 3b04 	str.w	r3, [r0], #4
1a002334:	3a40      	subs	r2, #64	; 0x40
1a002336:	d2bd      	bcs.n	1a0022b4 <memcpy+0x10>
1a002338:	3230      	adds	r2, #48	; 0x30
1a00233a:	d311      	bcc.n	1a002360 <memcpy+0xbc>
1a00233c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002340:	f840 3b04 	str.w	r3, [r0], #4
1a002344:	f851 3b04 	ldr.w	r3, [r1], #4
1a002348:	f840 3b04 	str.w	r3, [r0], #4
1a00234c:	f851 3b04 	ldr.w	r3, [r1], #4
1a002350:	f840 3b04 	str.w	r3, [r0], #4
1a002354:	f851 3b04 	ldr.w	r3, [r1], #4
1a002358:	f840 3b04 	str.w	r3, [r0], #4
1a00235c:	3a10      	subs	r2, #16
1a00235e:	d2ed      	bcs.n	1a00233c <memcpy+0x98>
1a002360:	320c      	adds	r2, #12
1a002362:	d305      	bcc.n	1a002370 <memcpy+0xcc>
1a002364:	f851 3b04 	ldr.w	r3, [r1], #4
1a002368:	f840 3b04 	str.w	r3, [r0], #4
1a00236c:	3a04      	subs	r2, #4
1a00236e:	d2f9      	bcs.n	1a002364 <memcpy+0xc0>
1a002370:	3204      	adds	r2, #4
1a002372:	d008      	beq.n	1a002386 <memcpy+0xe2>
1a002374:	07d2      	lsls	r2, r2, #31
1a002376:	bf1c      	itt	ne
1a002378:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a00237c:	f800 3b01 	strbne.w	r3, [r0], #1
1a002380:	d301      	bcc.n	1a002386 <memcpy+0xe2>
1a002382:	880b      	ldrh	r3, [r1, #0]
1a002384:	8003      	strh	r3, [r0, #0]
1a002386:	4660      	mov	r0, ip
1a002388:	4770      	bx	lr
1a00238a:	bf00      	nop
1a00238c:	2a08      	cmp	r2, #8
1a00238e:	d313      	bcc.n	1a0023b8 <memcpy+0x114>
1a002390:	078b      	lsls	r3, r1, #30
1a002392:	d08d      	beq.n	1a0022b0 <memcpy+0xc>
1a002394:	f010 0303 	ands.w	r3, r0, #3
1a002398:	d08a      	beq.n	1a0022b0 <memcpy+0xc>
1a00239a:	f1c3 0304 	rsb	r3, r3, #4
1a00239e:	1ad2      	subs	r2, r2, r3
1a0023a0:	07db      	lsls	r3, r3, #31
1a0023a2:	bf1c      	itt	ne
1a0023a4:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a0023a8:	f800 3b01 	strbne.w	r3, [r0], #1
1a0023ac:	d380      	bcc.n	1a0022b0 <memcpy+0xc>
1a0023ae:	f831 3b02 	ldrh.w	r3, [r1], #2
1a0023b2:	f820 3b02 	strh.w	r3, [r0], #2
1a0023b6:	e77b      	b.n	1a0022b0 <memcpy+0xc>
1a0023b8:	3a04      	subs	r2, #4
1a0023ba:	d3d9      	bcc.n	1a002370 <memcpy+0xcc>
1a0023bc:	3a01      	subs	r2, #1
1a0023be:	f811 3b01 	ldrb.w	r3, [r1], #1
1a0023c2:	f800 3b01 	strb.w	r3, [r0], #1
1a0023c6:	d2f9      	bcs.n	1a0023bc <memcpy+0x118>
1a0023c8:	780b      	ldrb	r3, [r1, #0]
1a0023ca:	7003      	strb	r3, [r0, #0]
1a0023cc:	784b      	ldrb	r3, [r1, #1]
1a0023ce:	7043      	strb	r3, [r0, #1]
1a0023d0:	788b      	ldrb	r3, [r1, #2]
1a0023d2:	7083      	strb	r3, [r0, #2]
1a0023d4:	4660      	mov	r0, ip
1a0023d6:	4770      	bx	lr

1a0023d8 <ExtRateIn>:
1a0023d8:	0000 0000                                   ....

1a0023dc <OscRateIn>:
1a0023dc:	1b00 00b7                                   ....

1a0023e0 <msg1>:
1a0023e0:	504c 3143 7838 2f78 3334 7878 5520 5241     LPC18xx/43xx UAR
1a0023f0:	2054 7865 6d61 6c70 2065 7375 6e69 2067     T example using 
1a002400:	6972 676e 6220 6675 6566 7372 0a0d ff00     ring buffers....

1a002410 <leds>:
1a002410:	0002 0005 0014 0a02 0e00 0014 0b02 0b01     ................
1a002420:	0014 0c02 0c01 0014 0102 0105 0014 0202     ................
1a002430:	0205 0014                                   ....

1a002434 <keys>:
1a002434:	0001 0400 00c0 0101 0800 00c0 0201 0900     ................
1a002444:	00c0 0601 0901 00c0                         ........

1a00244c <InitClkStates>:
1a00244c:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a00245c:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a00246c:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a00247c:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a00248c:	111a 0001 111b 0001                         ........

1a002494 <UART_PClock>:
1a002494:	0081 0082 00a1 00a2                         ........

1a00249c <UART_BClock>:
1a00249c:	01c2 01a2 0182 0162                         ......b.

1a0024a4 <periph_to_base>:
1a0024a4:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a0024b4:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a0024c4:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a0024d4:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a0024e4:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a0024f4:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a002504:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a002514:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a00251c <_init>:
1a00251c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00251e:	bf00      	nop

Disassembly of section .fini:

1a002520 <_fini>:
1a002520:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002522:	bf00      	nop
