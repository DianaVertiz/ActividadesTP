
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 4d 07 00 1a a5 01 00 1a ab 01 00 1a     ....M...........
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	b9 1e 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a 2d 07 00 1a     ............-...
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a d1 1e 00 1a f1 1e 00 1a 11 1f 00 1a     ................
1a0000cc:	31 1f 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     1...............
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a01394c 	.word	0x1a01394c
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000

1a000120 <__bss_section_table_>:
1a000120:	10000000 	.word	0x10000000
1a000124:	0000044c 	.word	0x0000044c

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
1a000564:	f001 ff2c 	bl	1a0023c0 <Chip_SetupXtalClocking>
1a000568:	f002 ff8a 	bl	1a003480 <SystemCoreClockUpdate>
1a00056c:	f001 fe04 	bl	1a002178 <fpuInit>
1a000570:	4868      	ldr	r0, [pc, #416]	; (1a000714 <systemInit+0x1b4>)
1a000572:	f002 ff91 	bl	1a003498 <Chip_GPIO_Init>
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
1a00069c:	f001 ffcc 	bl	1a002638 <Chip_UART_Init>
1a0006a0:	2103      	movs	r1, #3
1a0006a2:	481d      	ldr	r0, [pc, #116]	; (1a000718 <systemInit+0x1b8>)
1a0006a4:	f7ff ff4e 	bl	1a000544 <Chip_UART_ConfigData>
1a0006a8:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a0006ac:	481a      	ldr	r0, [pc, #104]	; (1a000718 <systemInit+0x1b8>)
1a0006ae:	f002 f855 	bl	1a00275c <Chip_UART_SetBaud>
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
1a0006dc:	f002 f973 	bl	1a0029c6 <RingBuffer_Init>
1a0006e0:	f44f 7300 	mov.w	r3, #512	; 0x200
1a0006e4:	2201      	movs	r2, #1
1a0006e6:	490f      	ldr	r1, [pc, #60]	; (1a000724 <systemInit+0x1c4>)
1a0006e8:	480f      	ldr	r0, [pc, #60]	; (1a000728 <systemInit+0x1c8>)
1a0006ea:	f002 f96c 	bl	1a0029c6 <RingBuffer_Init>
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
1a00070a:	f002 f8e9 	bl	1a0028e0 <StopWatch_Init>
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
1a000736:	f002 f890 	bl	1a00285a <Chip_UART_IRQRBHandler>
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
1a0007e8:	f001 fab2 	bl	1a001d50 <main>
1a0007ec:	e7fe      	b.n	1a0007ec <ResetISR+0xa0>
1a0007ee:	bf00      	nop
1a0007f0:	40053100 	.word	0x40053100
1a0007f4:	10df1000 	.word	0x10df1000
1a0007f8:	01dff7ff 	.word	0x01dff7ff
1a0007fc:	e000e280 	.word	0xe000e280
1a000800:	1a000114 	.word	0x1a000114
1a000804:	1a000120 	.word	0x1a000120
1a000808:	1a000128 	.word	0x1a000128

1a00080c <ld_word>:
1a00080c:	b480      	push	{r7}
1a00080e:	b085      	sub	sp, #20
1a000810:	af00      	add	r7, sp, #0
1a000812:	6078      	str	r0, [r7, #4]
1a000814:	687b      	ldr	r3, [r7, #4]
1a000816:	3301      	adds	r3, #1
1a000818:	781b      	ldrb	r3, [r3, #0]
1a00081a:	81fb      	strh	r3, [r7, #14]
1a00081c:	89fb      	ldrh	r3, [r7, #14]
1a00081e:	021b      	lsls	r3, r3, #8
1a000820:	b21a      	sxth	r2, r3
1a000822:	687b      	ldr	r3, [r7, #4]
1a000824:	781b      	ldrb	r3, [r3, #0]
1a000826:	b21b      	sxth	r3, r3
1a000828:	4313      	orrs	r3, r2
1a00082a:	b21b      	sxth	r3, r3
1a00082c:	81fb      	strh	r3, [r7, #14]
1a00082e:	89fb      	ldrh	r3, [r7, #14]
1a000830:	4618      	mov	r0, r3
1a000832:	3714      	adds	r7, #20
1a000834:	46bd      	mov	sp, r7
1a000836:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00083a:	4770      	bx	lr

1a00083c <ld_dword>:
1a00083c:	b480      	push	{r7}
1a00083e:	b085      	sub	sp, #20
1a000840:	af00      	add	r7, sp, #0
1a000842:	6078      	str	r0, [r7, #4]
1a000844:	687b      	ldr	r3, [r7, #4]
1a000846:	3303      	adds	r3, #3
1a000848:	781b      	ldrb	r3, [r3, #0]
1a00084a:	60fb      	str	r3, [r7, #12]
1a00084c:	68fb      	ldr	r3, [r7, #12]
1a00084e:	021b      	lsls	r3, r3, #8
1a000850:	687a      	ldr	r2, [r7, #4]
1a000852:	3202      	adds	r2, #2
1a000854:	7812      	ldrb	r2, [r2, #0]
1a000856:	4313      	orrs	r3, r2
1a000858:	60fb      	str	r3, [r7, #12]
1a00085a:	68fb      	ldr	r3, [r7, #12]
1a00085c:	021b      	lsls	r3, r3, #8
1a00085e:	687a      	ldr	r2, [r7, #4]
1a000860:	3201      	adds	r2, #1
1a000862:	7812      	ldrb	r2, [r2, #0]
1a000864:	4313      	orrs	r3, r2
1a000866:	60fb      	str	r3, [r7, #12]
1a000868:	68fb      	ldr	r3, [r7, #12]
1a00086a:	021b      	lsls	r3, r3, #8
1a00086c:	687a      	ldr	r2, [r7, #4]
1a00086e:	7812      	ldrb	r2, [r2, #0]
1a000870:	4313      	orrs	r3, r2
1a000872:	60fb      	str	r3, [r7, #12]
1a000874:	68fb      	ldr	r3, [r7, #12]
1a000876:	4618      	mov	r0, r3
1a000878:	3714      	adds	r7, #20
1a00087a:	46bd      	mov	sp, r7
1a00087c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000880:	4770      	bx	lr

1a000882 <mem_cpy>:
1a000882:	b480      	push	{r7}
1a000884:	b087      	sub	sp, #28
1a000886:	af00      	add	r7, sp, #0
1a000888:	60f8      	str	r0, [r7, #12]
1a00088a:	60b9      	str	r1, [r7, #8]
1a00088c:	607a      	str	r2, [r7, #4]
1a00088e:	68fb      	ldr	r3, [r7, #12]
1a000890:	617b      	str	r3, [r7, #20]
1a000892:	68bb      	ldr	r3, [r7, #8]
1a000894:	613b      	str	r3, [r7, #16]
1a000896:	687b      	ldr	r3, [r7, #4]
1a000898:	2b00      	cmp	r3, #0
1a00089a:	d00d      	beq.n	1a0008b8 <mem_cpy+0x36>
1a00089c:	693a      	ldr	r2, [r7, #16]
1a00089e:	1c53      	adds	r3, r2, #1
1a0008a0:	613b      	str	r3, [r7, #16]
1a0008a2:	697b      	ldr	r3, [r7, #20]
1a0008a4:	1c59      	adds	r1, r3, #1
1a0008a6:	6179      	str	r1, [r7, #20]
1a0008a8:	7812      	ldrb	r2, [r2, #0]
1a0008aa:	701a      	strb	r2, [r3, #0]
1a0008ac:	687b      	ldr	r3, [r7, #4]
1a0008ae:	3b01      	subs	r3, #1
1a0008b0:	607b      	str	r3, [r7, #4]
1a0008b2:	687b      	ldr	r3, [r7, #4]
1a0008b4:	2b00      	cmp	r3, #0
1a0008b6:	d1f1      	bne.n	1a00089c <mem_cpy+0x1a>
1a0008b8:	bf00      	nop
1a0008ba:	371c      	adds	r7, #28
1a0008bc:	46bd      	mov	sp, r7
1a0008be:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008c2:	4770      	bx	lr

1a0008c4 <mem_set>:
1a0008c4:	b480      	push	{r7}
1a0008c6:	b087      	sub	sp, #28
1a0008c8:	af00      	add	r7, sp, #0
1a0008ca:	60f8      	str	r0, [r7, #12]
1a0008cc:	60b9      	str	r1, [r7, #8]
1a0008ce:	607a      	str	r2, [r7, #4]
1a0008d0:	68fb      	ldr	r3, [r7, #12]
1a0008d2:	617b      	str	r3, [r7, #20]
1a0008d4:	697b      	ldr	r3, [r7, #20]
1a0008d6:	1c5a      	adds	r2, r3, #1
1a0008d8:	617a      	str	r2, [r7, #20]
1a0008da:	68ba      	ldr	r2, [r7, #8]
1a0008dc:	b2d2      	uxtb	r2, r2
1a0008de:	701a      	strb	r2, [r3, #0]
1a0008e0:	687b      	ldr	r3, [r7, #4]
1a0008e2:	3b01      	subs	r3, #1
1a0008e4:	607b      	str	r3, [r7, #4]
1a0008e6:	687b      	ldr	r3, [r7, #4]
1a0008e8:	2b00      	cmp	r3, #0
1a0008ea:	d1f3      	bne.n	1a0008d4 <mem_set+0x10>
1a0008ec:	bf00      	nop
1a0008ee:	371c      	adds	r7, #28
1a0008f0:	46bd      	mov	sp, r7
1a0008f2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008f6:	4770      	bx	lr

1a0008f8 <mem_cmp>:
1a0008f8:	b480      	push	{r7}
1a0008fa:	b089      	sub	sp, #36	; 0x24
1a0008fc:	af00      	add	r7, sp, #0
1a0008fe:	60f8      	str	r0, [r7, #12]
1a000900:	60b9      	str	r1, [r7, #8]
1a000902:	607a      	str	r2, [r7, #4]
1a000904:	68fb      	ldr	r3, [r7, #12]
1a000906:	61fb      	str	r3, [r7, #28]
1a000908:	68bb      	ldr	r3, [r7, #8]
1a00090a:	61bb      	str	r3, [r7, #24]
1a00090c:	2300      	movs	r3, #0
1a00090e:	617b      	str	r3, [r7, #20]
1a000910:	69fb      	ldr	r3, [r7, #28]
1a000912:	1c5a      	adds	r2, r3, #1
1a000914:	61fa      	str	r2, [r7, #28]
1a000916:	781b      	ldrb	r3, [r3, #0]
1a000918:	4619      	mov	r1, r3
1a00091a:	69bb      	ldr	r3, [r7, #24]
1a00091c:	1c5a      	adds	r2, r3, #1
1a00091e:	61ba      	str	r2, [r7, #24]
1a000920:	781b      	ldrb	r3, [r3, #0]
1a000922:	1acb      	subs	r3, r1, r3
1a000924:	617b      	str	r3, [r7, #20]
1a000926:	687b      	ldr	r3, [r7, #4]
1a000928:	3b01      	subs	r3, #1
1a00092a:	607b      	str	r3, [r7, #4]
1a00092c:	687b      	ldr	r3, [r7, #4]
1a00092e:	2b00      	cmp	r3, #0
1a000930:	d002      	beq.n	1a000938 <mem_cmp+0x40>
1a000932:	697b      	ldr	r3, [r7, #20]
1a000934:	2b00      	cmp	r3, #0
1a000936:	d0eb      	beq.n	1a000910 <mem_cmp+0x18>
1a000938:	697b      	ldr	r3, [r7, #20]
1a00093a:	4618      	mov	r0, r3
1a00093c:	3724      	adds	r7, #36	; 0x24
1a00093e:	46bd      	mov	sp, r7
1a000940:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000944:	4770      	bx	lr

1a000946 <chk_chr>:
1a000946:	b480      	push	{r7}
1a000948:	b083      	sub	sp, #12
1a00094a:	af00      	add	r7, sp, #0
1a00094c:	6078      	str	r0, [r7, #4]
1a00094e:	6039      	str	r1, [r7, #0]
1a000950:	e002      	b.n	1a000958 <chk_chr+0x12>
1a000952:	687b      	ldr	r3, [r7, #4]
1a000954:	3301      	adds	r3, #1
1a000956:	607b      	str	r3, [r7, #4]
1a000958:	687b      	ldr	r3, [r7, #4]
1a00095a:	781b      	ldrb	r3, [r3, #0]
1a00095c:	2b00      	cmp	r3, #0
1a00095e:	d005      	beq.n	1a00096c <chk_chr+0x26>
1a000960:	687b      	ldr	r3, [r7, #4]
1a000962:	781b      	ldrb	r3, [r3, #0]
1a000964:	461a      	mov	r2, r3
1a000966:	683b      	ldr	r3, [r7, #0]
1a000968:	4293      	cmp	r3, r2
1a00096a:	d1f2      	bne.n	1a000952 <chk_chr+0xc>
1a00096c:	687b      	ldr	r3, [r7, #4]
1a00096e:	781b      	ldrb	r3, [r3, #0]
1a000970:	4618      	mov	r0, r3
1a000972:	370c      	adds	r7, #12
1a000974:	46bd      	mov	sp, r7
1a000976:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00097a:	4770      	bx	lr

1a00097c <dbc_1st>:
1a00097c:	b480      	push	{r7}
1a00097e:	b083      	sub	sp, #12
1a000980:	af00      	add	r7, sp, #0
1a000982:	4603      	mov	r3, r0
1a000984:	71fb      	strb	r3, [r7, #7]
1a000986:	79fb      	ldrb	r3, [r7, #7]
1a000988:	2b00      	cmp	r3, #0
1a00098a:	d001      	beq.n	1a000990 <dbc_1st+0x14>
1a00098c:	2300      	movs	r3, #0
1a00098e:	e000      	b.n	1a000992 <dbc_1st+0x16>
1a000990:	2300      	movs	r3, #0
1a000992:	4618      	mov	r0, r3
1a000994:	370c      	adds	r7, #12
1a000996:	46bd      	mov	sp, r7
1a000998:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00099c:	4770      	bx	lr

1a00099e <dbc_2nd>:
1a00099e:	b480      	push	{r7}
1a0009a0:	b083      	sub	sp, #12
1a0009a2:	af00      	add	r7, sp, #0
1a0009a4:	4603      	mov	r3, r0
1a0009a6:	71fb      	strb	r3, [r7, #7]
1a0009a8:	79fb      	ldrb	r3, [r7, #7]
1a0009aa:	2b00      	cmp	r3, #0
1a0009ac:	d001      	beq.n	1a0009b2 <dbc_2nd+0x14>
1a0009ae:	2300      	movs	r3, #0
1a0009b0:	e000      	b.n	1a0009b4 <dbc_2nd+0x16>
1a0009b2:	2300      	movs	r3, #0
1a0009b4:	4618      	mov	r0, r3
1a0009b6:	370c      	adds	r7, #12
1a0009b8:	46bd      	mov	sp, r7
1a0009ba:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009be:	4770      	bx	lr

1a0009c0 <move_window>:
1a0009c0:	b580      	push	{r7, lr}
1a0009c2:	b084      	sub	sp, #16
1a0009c4:	af00      	add	r7, sp, #0
1a0009c6:	6078      	str	r0, [r7, #4]
1a0009c8:	6039      	str	r1, [r7, #0]
1a0009ca:	2300      	movs	r3, #0
1a0009cc:	73fb      	strb	r3, [r7, #15]
1a0009ce:	687b      	ldr	r3, [r7, #4]
1a0009d0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
1a0009d2:	683a      	ldr	r2, [r7, #0]
1a0009d4:	429a      	cmp	r2, r3
1a0009d6:	d016      	beq.n	1a000a06 <move_window+0x46>
1a0009d8:	7bfb      	ldrb	r3, [r7, #15]
1a0009da:	2b00      	cmp	r3, #0
1a0009dc:	d113      	bne.n	1a000a06 <move_window+0x46>
1a0009de:	687b      	ldr	r3, [r7, #4]
1a0009e0:	7858      	ldrb	r0, [r3, #1]
1a0009e2:	687b      	ldr	r3, [r7, #4]
1a0009e4:	f103 0128 	add.w	r1, r3, #40	; 0x28
1a0009e8:	2301      	movs	r3, #1
1a0009ea:	683a      	ldr	r2, [r7, #0]
1a0009ec:	f001 fb8a 	bl	1a002104 <disk_read>
1a0009f0:	4603      	mov	r3, r0
1a0009f2:	2b00      	cmp	r3, #0
1a0009f4:	d004      	beq.n	1a000a00 <move_window+0x40>
1a0009f6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0009fa:	603b      	str	r3, [r7, #0]
1a0009fc:	2301      	movs	r3, #1
1a0009fe:	73fb      	strb	r3, [r7, #15]
1a000a00:	687b      	ldr	r3, [r7, #4]
1a000a02:	683a      	ldr	r2, [r7, #0]
1a000a04:	625a      	str	r2, [r3, #36]	; 0x24
1a000a06:	7bfb      	ldrb	r3, [r7, #15]
1a000a08:	4618      	mov	r0, r3
1a000a0a:	3710      	adds	r7, #16
1a000a0c:	46bd      	mov	sp, r7
1a000a0e:	bd80      	pop	{r7, pc}

1a000a10 <clst2sect>:
1a000a10:	b480      	push	{r7}
1a000a12:	b083      	sub	sp, #12
1a000a14:	af00      	add	r7, sp, #0
1a000a16:	6078      	str	r0, [r7, #4]
1a000a18:	6039      	str	r1, [r7, #0]
1a000a1a:	683b      	ldr	r3, [r7, #0]
1a000a1c:	3b02      	subs	r3, #2
1a000a1e:	603b      	str	r3, [r7, #0]
1a000a20:	687b      	ldr	r3, [r7, #4]
1a000a22:	68db      	ldr	r3, [r3, #12]
1a000a24:	3b02      	subs	r3, #2
1a000a26:	683a      	ldr	r2, [r7, #0]
1a000a28:	429a      	cmp	r2, r3
1a000a2a:	d301      	bcc.n	1a000a30 <clst2sect+0x20>
1a000a2c:	2300      	movs	r3, #0
1a000a2e:	e008      	b.n	1a000a42 <clst2sect+0x32>
1a000a30:	687b      	ldr	r3, [r7, #4]
1a000a32:	6a1a      	ldr	r2, [r3, #32]
1a000a34:	687b      	ldr	r3, [r7, #4]
1a000a36:	895b      	ldrh	r3, [r3, #10]
1a000a38:	4619      	mov	r1, r3
1a000a3a:	683b      	ldr	r3, [r7, #0]
1a000a3c:	fb03 f301 	mul.w	r3, r3, r1
1a000a40:	4413      	add	r3, r2
1a000a42:	4618      	mov	r0, r3
1a000a44:	370c      	adds	r7, #12
1a000a46:	46bd      	mov	sp, r7
1a000a48:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a4c:	4770      	bx	lr

1a000a4e <get_fat>:
1a000a4e:	b580      	push	{r7, lr}
1a000a50:	b086      	sub	sp, #24
1a000a52:	af00      	add	r7, sp, #0
1a000a54:	6078      	str	r0, [r7, #4]
1a000a56:	6039      	str	r1, [r7, #0]
1a000a58:	687b      	ldr	r3, [r7, #4]
1a000a5a:	681b      	ldr	r3, [r3, #0]
1a000a5c:	613b      	str	r3, [r7, #16]
1a000a5e:	683b      	ldr	r3, [r7, #0]
1a000a60:	2b01      	cmp	r3, #1
1a000a62:	d904      	bls.n	1a000a6e <get_fat+0x20>
1a000a64:	693b      	ldr	r3, [r7, #16]
1a000a66:	68db      	ldr	r3, [r3, #12]
1a000a68:	683a      	ldr	r2, [r7, #0]
1a000a6a:	429a      	cmp	r2, r3
1a000a6c:	d302      	bcc.n	1a000a74 <get_fat+0x26>
1a000a6e:	2301      	movs	r3, #1
1a000a70:	617b      	str	r3, [r7, #20]
1a000a72:	e08c      	b.n	1a000b8e <get_fat+0x140>
1a000a74:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a000a78:	617b      	str	r3, [r7, #20]
1a000a7a:	693b      	ldr	r3, [r7, #16]
1a000a7c:	781b      	ldrb	r3, [r3, #0]
1a000a7e:	2b02      	cmp	r3, #2
1a000a80:	d045      	beq.n	1a000b0e <get_fat+0xc0>
1a000a82:	2b03      	cmp	r3, #3
1a000a84:	d05d      	beq.n	1a000b42 <get_fat+0xf4>
1a000a86:	2b01      	cmp	r3, #1
1a000a88:	d177      	bne.n	1a000b7a <get_fat+0x12c>
1a000a8a:	683b      	ldr	r3, [r7, #0]
1a000a8c:	60fb      	str	r3, [r7, #12]
1a000a8e:	68fb      	ldr	r3, [r7, #12]
1a000a90:	085b      	lsrs	r3, r3, #1
1a000a92:	68fa      	ldr	r2, [r7, #12]
1a000a94:	4413      	add	r3, r2
1a000a96:	60fb      	str	r3, [r7, #12]
1a000a98:	693b      	ldr	r3, [r7, #16]
1a000a9a:	699a      	ldr	r2, [r3, #24]
1a000a9c:	68fb      	ldr	r3, [r7, #12]
1a000a9e:	0a5b      	lsrs	r3, r3, #9
1a000aa0:	4413      	add	r3, r2
1a000aa2:	4619      	mov	r1, r3
1a000aa4:	6938      	ldr	r0, [r7, #16]
1a000aa6:	f7ff ff8b 	bl	1a0009c0 <move_window>
1a000aaa:	4603      	mov	r3, r0
1a000aac:	2b00      	cmp	r3, #0
1a000aae:	d167      	bne.n	1a000b80 <get_fat+0x132>
1a000ab0:	68fb      	ldr	r3, [r7, #12]
1a000ab2:	1c5a      	adds	r2, r3, #1
1a000ab4:	60fa      	str	r2, [r7, #12]
1a000ab6:	f3c3 0308 	ubfx	r3, r3, #0, #9
1a000aba:	693a      	ldr	r2, [r7, #16]
1a000abc:	4413      	add	r3, r2
1a000abe:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
1a000ac2:	60bb      	str	r3, [r7, #8]
1a000ac4:	693b      	ldr	r3, [r7, #16]
1a000ac6:	699a      	ldr	r2, [r3, #24]
1a000ac8:	68fb      	ldr	r3, [r7, #12]
1a000aca:	0a5b      	lsrs	r3, r3, #9
1a000acc:	4413      	add	r3, r2
1a000ace:	4619      	mov	r1, r3
1a000ad0:	6938      	ldr	r0, [r7, #16]
1a000ad2:	f7ff ff75 	bl	1a0009c0 <move_window>
1a000ad6:	4603      	mov	r3, r0
1a000ad8:	2b00      	cmp	r3, #0
1a000ada:	d153      	bne.n	1a000b84 <get_fat+0x136>
1a000adc:	68fb      	ldr	r3, [r7, #12]
1a000ade:	f3c3 0308 	ubfx	r3, r3, #0, #9
1a000ae2:	693a      	ldr	r2, [r7, #16]
1a000ae4:	4413      	add	r3, r2
1a000ae6:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
1a000aea:	021b      	lsls	r3, r3, #8
1a000aec:	461a      	mov	r2, r3
1a000aee:	68bb      	ldr	r3, [r7, #8]
1a000af0:	4313      	orrs	r3, r2
1a000af2:	60bb      	str	r3, [r7, #8]
1a000af4:	683b      	ldr	r3, [r7, #0]
1a000af6:	f003 0301 	and.w	r3, r3, #1
1a000afa:	2b00      	cmp	r3, #0
1a000afc:	d002      	beq.n	1a000b04 <get_fat+0xb6>
1a000afe:	68bb      	ldr	r3, [r7, #8]
1a000b00:	091b      	lsrs	r3, r3, #4
1a000b02:	e002      	b.n	1a000b0a <get_fat+0xbc>
1a000b04:	68bb      	ldr	r3, [r7, #8]
1a000b06:	f3c3 030b 	ubfx	r3, r3, #0, #12
1a000b0a:	617b      	str	r3, [r7, #20]
1a000b0c:	e03f      	b.n	1a000b8e <get_fat+0x140>
1a000b0e:	693b      	ldr	r3, [r7, #16]
1a000b10:	699a      	ldr	r2, [r3, #24]
1a000b12:	683b      	ldr	r3, [r7, #0]
1a000b14:	0a1b      	lsrs	r3, r3, #8
1a000b16:	4413      	add	r3, r2
1a000b18:	4619      	mov	r1, r3
1a000b1a:	6938      	ldr	r0, [r7, #16]
1a000b1c:	f7ff ff50 	bl	1a0009c0 <move_window>
1a000b20:	4603      	mov	r3, r0
1a000b22:	2b00      	cmp	r3, #0
1a000b24:	d130      	bne.n	1a000b88 <get_fat+0x13a>
1a000b26:	693b      	ldr	r3, [r7, #16]
1a000b28:	f103 0228 	add.w	r2, r3, #40	; 0x28
1a000b2c:	683b      	ldr	r3, [r7, #0]
1a000b2e:	005b      	lsls	r3, r3, #1
1a000b30:	f403 73ff 	and.w	r3, r3, #510	; 0x1fe
1a000b34:	4413      	add	r3, r2
1a000b36:	4618      	mov	r0, r3
1a000b38:	f7ff fe68 	bl	1a00080c <ld_word>
1a000b3c:	4603      	mov	r3, r0
1a000b3e:	617b      	str	r3, [r7, #20]
1a000b40:	e025      	b.n	1a000b8e <get_fat+0x140>
1a000b42:	693b      	ldr	r3, [r7, #16]
1a000b44:	699a      	ldr	r2, [r3, #24]
1a000b46:	683b      	ldr	r3, [r7, #0]
1a000b48:	09db      	lsrs	r3, r3, #7
1a000b4a:	4413      	add	r3, r2
1a000b4c:	4619      	mov	r1, r3
1a000b4e:	6938      	ldr	r0, [r7, #16]
1a000b50:	f7ff ff36 	bl	1a0009c0 <move_window>
1a000b54:	4603      	mov	r3, r0
1a000b56:	2b00      	cmp	r3, #0
1a000b58:	d118      	bne.n	1a000b8c <get_fat+0x13e>
1a000b5a:	693b      	ldr	r3, [r7, #16]
1a000b5c:	f103 0228 	add.w	r2, r3, #40	; 0x28
1a000b60:	683b      	ldr	r3, [r7, #0]
1a000b62:	009b      	lsls	r3, r3, #2
1a000b64:	f403 73fe 	and.w	r3, r3, #508	; 0x1fc
1a000b68:	4413      	add	r3, r2
1a000b6a:	4618      	mov	r0, r3
1a000b6c:	f7ff fe66 	bl	1a00083c <ld_dword>
1a000b70:	4603      	mov	r3, r0
1a000b72:	f023 4370 	bic.w	r3, r3, #4026531840	; 0xf0000000
1a000b76:	617b      	str	r3, [r7, #20]
1a000b78:	e009      	b.n	1a000b8e <get_fat+0x140>
1a000b7a:	2301      	movs	r3, #1
1a000b7c:	617b      	str	r3, [r7, #20]
1a000b7e:	e006      	b.n	1a000b8e <get_fat+0x140>
1a000b80:	bf00      	nop
1a000b82:	e004      	b.n	1a000b8e <get_fat+0x140>
1a000b84:	bf00      	nop
1a000b86:	e002      	b.n	1a000b8e <get_fat+0x140>
1a000b88:	bf00      	nop
1a000b8a:	e000      	b.n	1a000b8e <get_fat+0x140>
1a000b8c:	bf00      	nop
1a000b8e:	697b      	ldr	r3, [r7, #20]
1a000b90:	4618      	mov	r0, r3
1a000b92:	3718      	adds	r7, #24
1a000b94:	46bd      	mov	sp, r7
1a000b96:	bd80      	pop	{r7, pc}

1a000b98 <dir_sdi>:
1a000b98:	b580      	push	{r7, lr}
1a000b9a:	b086      	sub	sp, #24
1a000b9c:	af00      	add	r7, sp, #0
1a000b9e:	6078      	str	r0, [r7, #4]
1a000ba0:	6039      	str	r1, [r7, #0]
1a000ba2:	687b      	ldr	r3, [r7, #4]
1a000ba4:	681b      	ldr	r3, [r3, #0]
1a000ba6:	613b      	str	r3, [r7, #16]
1a000ba8:	683b      	ldr	r3, [r7, #0]
1a000baa:	f5b3 1f00 	cmp.w	r3, #2097152	; 0x200000
1a000bae:	d204      	bcs.n	1a000bba <dir_sdi+0x22>
1a000bb0:	683b      	ldr	r3, [r7, #0]
1a000bb2:	f003 031f 	and.w	r3, r3, #31
1a000bb6:	2b00      	cmp	r3, #0
1a000bb8:	d001      	beq.n	1a000bbe <dir_sdi+0x26>
1a000bba:	2302      	movs	r3, #2
1a000bbc:	e063      	b.n	1a000c86 <dir_sdi+0xee>
1a000bbe:	687b      	ldr	r3, [r7, #4]
1a000bc0:	683a      	ldr	r2, [r7, #0]
1a000bc2:	611a      	str	r2, [r3, #16]
1a000bc4:	687b      	ldr	r3, [r7, #4]
1a000bc6:	689b      	ldr	r3, [r3, #8]
1a000bc8:	617b      	str	r3, [r7, #20]
1a000bca:	697b      	ldr	r3, [r7, #20]
1a000bcc:	2b00      	cmp	r3, #0
1a000bce:	d106      	bne.n	1a000bde <dir_sdi+0x46>
1a000bd0:	693b      	ldr	r3, [r7, #16]
1a000bd2:	781b      	ldrb	r3, [r3, #0]
1a000bd4:	2b02      	cmp	r3, #2
1a000bd6:	d902      	bls.n	1a000bde <dir_sdi+0x46>
1a000bd8:	693b      	ldr	r3, [r7, #16]
1a000bda:	69db      	ldr	r3, [r3, #28]
1a000bdc:	617b      	str	r3, [r7, #20]
1a000bde:	697b      	ldr	r3, [r7, #20]
1a000be0:	2b00      	cmp	r3, #0
1a000be2:	d10c      	bne.n	1a000bfe <dir_sdi+0x66>
1a000be4:	683b      	ldr	r3, [r7, #0]
1a000be6:	095b      	lsrs	r3, r3, #5
1a000be8:	693a      	ldr	r2, [r7, #16]
1a000bea:	8912      	ldrh	r2, [r2, #8]
1a000bec:	4293      	cmp	r3, r2
1a000bee:	d301      	bcc.n	1a000bf4 <dir_sdi+0x5c>
1a000bf0:	2302      	movs	r3, #2
1a000bf2:	e048      	b.n	1a000c86 <dir_sdi+0xee>
1a000bf4:	693b      	ldr	r3, [r7, #16]
1a000bf6:	69da      	ldr	r2, [r3, #28]
1a000bf8:	687b      	ldr	r3, [r7, #4]
1a000bfa:	619a      	str	r2, [r3, #24]
1a000bfc:	e029      	b.n	1a000c52 <dir_sdi+0xba>
1a000bfe:	693b      	ldr	r3, [r7, #16]
1a000c00:	895b      	ldrh	r3, [r3, #10]
1a000c02:	025b      	lsls	r3, r3, #9
1a000c04:	60fb      	str	r3, [r7, #12]
1a000c06:	e019      	b.n	1a000c3c <dir_sdi+0xa4>
1a000c08:	687b      	ldr	r3, [r7, #4]
1a000c0a:	6979      	ldr	r1, [r7, #20]
1a000c0c:	4618      	mov	r0, r3
1a000c0e:	f7ff ff1e 	bl	1a000a4e <get_fat>
1a000c12:	6178      	str	r0, [r7, #20]
1a000c14:	697b      	ldr	r3, [r7, #20]
1a000c16:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
1a000c1a:	d101      	bne.n	1a000c20 <dir_sdi+0x88>
1a000c1c:	2301      	movs	r3, #1
1a000c1e:	e032      	b.n	1a000c86 <dir_sdi+0xee>
1a000c20:	697b      	ldr	r3, [r7, #20]
1a000c22:	2b01      	cmp	r3, #1
1a000c24:	d904      	bls.n	1a000c30 <dir_sdi+0x98>
1a000c26:	693b      	ldr	r3, [r7, #16]
1a000c28:	68db      	ldr	r3, [r3, #12]
1a000c2a:	697a      	ldr	r2, [r7, #20]
1a000c2c:	429a      	cmp	r2, r3
1a000c2e:	d301      	bcc.n	1a000c34 <dir_sdi+0x9c>
1a000c30:	2302      	movs	r3, #2
1a000c32:	e028      	b.n	1a000c86 <dir_sdi+0xee>
1a000c34:	683a      	ldr	r2, [r7, #0]
1a000c36:	68fb      	ldr	r3, [r7, #12]
1a000c38:	1ad3      	subs	r3, r2, r3
1a000c3a:	603b      	str	r3, [r7, #0]
1a000c3c:	683a      	ldr	r2, [r7, #0]
1a000c3e:	68fb      	ldr	r3, [r7, #12]
1a000c40:	429a      	cmp	r2, r3
1a000c42:	d2e1      	bcs.n	1a000c08 <dir_sdi+0x70>
1a000c44:	6979      	ldr	r1, [r7, #20]
1a000c46:	6938      	ldr	r0, [r7, #16]
1a000c48:	f7ff fee2 	bl	1a000a10 <clst2sect>
1a000c4c:	4602      	mov	r2, r0
1a000c4e:	687b      	ldr	r3, [r7, #4]
1a000c50:	619a      	str	r2, [r3, #24]
1a000c52:	687b      	ldr	r3, [r7, #4]
1a000c54:	697a      	ldr	r2, [r7, #20]
1a000c56:	615a      	str	r2, [r3, #20]
1a000c58:	687b      	ldr	r3, [r7, #4]
1a000c5a:	699b      	ldr	r3, [r3, #24]
1a000c5c:	2b00      	cmp	r3, #0
1a000c5e:	d101      	bne.n	1a000c64 <dir_sdi+0xcc>
1a000c60:	2302      	movs	r3, #2
1a000c62:	e010      	b.n	1a000c86 <dir_sdi+0xee>
1a000c64:	687b      	ldr	r3, [r7, #4]
1a000c66:	699a      	ldr	r2, [r3, #24]
1a000c68:	683b      	ldr	r3, [r7, #0]
1a000c6a:	0a5b      	lsrs	r3, r3, #9
1a000c6c:	441a      	add	r2, r3
1a000c6e:	687b      	ldr	r3, [r7, #4]
1a000c70:	619a      	str	r2, [r3, #24]
1a000c72:	693b      	ldr	r3, [r7, #16]
1a000c74:	f103 0228 	add.w	r2, r3, #40	; 0x28
1a000c78:	683b      	ldr	r3, [r7, #0]
1a000c7a:	f3c3 0308 	ubfx	r3, r3, #0, #9
1a000c7e:	441a      	add	r2, r3
1a000c80:	687b      	ldr	r3, [r7, #4]
1a000c82:	61da      	str	r2, [r3, #28]
1a000c84:	2300      	movs	r3, #0
1a000c86:	4618      	mov	r0, r3
1a000c88:	3718      	adds	r7, #24
1a000c8a:	46bd      	mov	sp, r7
1a000c8c:	bd80      	pop	{r7, pc}

1a000c8e <dir_next>:
1a000c8e:	b580      	push	{r7, lr}
1a000c90:	b086      	sub	sp, #24
1a000c92:	af00      	add	r7, sp, #0
1a000c94:	6078      	str	r0, [r7, #4]
1a000c96:	6039      	str	r1, [r7, #0]
1a000c98:	687b      	ldr	r3, [r7, #4]
1a000c9a:	681b      	ldr	r3, [r3, #0]
1a000c9c:	617b      	str	r3, [r7, #20]
1a000c9e:	687b      	ldr	r3, [r7, #4]
1a000ca0:	691b      	ldr	r3, [r3, #16]
1a000ca2:	3320      	adds	r3, #32
1a000ca4:	613b      	str	r3, [r7, #16]
1a000ca6:	693b      	ldr	r3, [r7, #16]
1a000ca8:	f5b3 1f00 	cmp.w	r3, #2097152	; 0x200000
1a000cac:	d302      	bcc.n	1a000cb4 <dir_next+0x26>
1a000cae:	687b      	ldr	r3, [r7, #4]
1a000cb0:	2200      	movs	r2, #0
1a000cb2:	619a      	str	r2, [r3, #24]
1a000cb4:	687b      	ldr	r3, [r7, #4]
1a000cb6:	699b      	ldr	r3, [r3, #24]
1a000cb8:	2b00      	cmp	r3, #0
1a000cba:	d101      	bne.n	1a000cc0 <dir_next+0x32>
1a000cbc:	2304      	movs	r3, #4
1a000cbe:	e05a      	b.n	1a000d76 <dir_next+0xe8>
1a000cc0:	693b      	ldr	r3, [r7, #16]
1a000cc2:	f3c3 0308 	ubfx	r3, r3, #0, #9
1a000cc6:	2b00      	cmp	r3, #0
1a000cc8:	d148      	bne.n	1a000d5c <dir_next+0xce>
1a000cca:	687b      	ldr	r3, [r7, #4]
1a000ccc:	699b      	ldr	r3, [r3, #24]
1a000cce:	1c5a      	adds	r2, r3, #1
1a000cd0:	687b      	ldr	r3, [r7, #4]
1a000cd2:	619a      	str	r2, [r3, #24]
1a000cd4:	687b      	ldr	r3, [r7, #4]
1a000cd6:	695b      	ldr	r3, [r3, #20]
1a000cd8:	2b00      	cmp	r3, #0
1a000cda:	d10a      	bne.n	1a000cf2 <dir_next+0x64>
1a000cdc:	693b      	ldr	r3, [r7, #16]
1a000cde:	095b      	lsrs	r3, r3, #5
1a000ce0:	697a      	ldr	r2, [r7, #20]
1a000ce2:	8912      	ldrh	r2, [r2, #8]
1a000ce4:	4293      	cmp	r3, r2
1a000ce6:	d339      	bcc.n	1a000d5c <dir_next+0xce>
1a000ce8:	687b      	ldr	r3, [r7, #4]
1a000cea:	2200      	movs	r2, #0
1a000cec:	619a      	str	r2, [r3, #24]
1a000cee:	2304      	movs	r3, #4
1a000cf0:	e041      	b.n	1a000d76 <dir_next+0xe8>
1a000cf2:	693b      	ldr	r3, [r7, #16]
1a000cf4:	0a5b      	lsrs	r3, r3, #9
1a000cf6:	697a      	ldr	r2, [r7, #20]
1a000cf8:	8952      	ldrh	r2, [r2, #10]
1a000cfa:	3a01      	subs	r2, #1
1a000cfc:	4013      	ands	r3, r2
1a000cfe:	2b00      	cmp	r3, #0
1a000d00:	d12c      	bne.n	1a000d5c <dir_next+0xce>
1a000d02:	687a      	ldr	r2, [r7, #4]
1a000d04:	687b      	ldr	r3, [r7, #4]
1a000d06:	695b      	ldr	r3, [r3, #20]
1a000d08:	4619      	mov	r1, r3
1a000d0a:	4610      	mov	r0, r2
1a000d0c:	f7ff fe9f 	bl	1a000a4e <get_fat>
1a000d10:	60f8      	str	r0, [r7, #12]
1a000d12:	68fb      	ldr	r3, [r7, #12]
1a000d14:	2b01      	cmp	r3, #1
1a000d16:	d801      	bhi.n	1a000d1c <dir_next+0x8e>
1a000d18:	2302      	movs	r3, #2
1a000d1a:	e02c      	b.n	1a000d76 <dir_next+0xe8>
1a000d1c:	68fb      	ldr	r3, [r7, #12]
1a000d1e:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
1a000d22:	d101      	bne.n	1a000d28 <dir_next+0x9a>
1a000d24:	2301      	movs	r3, #1
1a000d26:	e026      	b.n	1a000d76 <dir_next+0xe8>
1a000d28:	697b      	ldr	r3, [r7, #20]
1a000d2a:	68db      	ldr	r3, [r3, #12]
1a000d2c:	68fa      	ldr	r2, [r7, #12]
1a000d2e:	429a      	cmp	r2, r3
1a000d30:	d30a      	bcc.n	1a000d48 <dir_next+0xba>
1a000d32:	683b      	ldr	r3, [r7, #0]
1a000d34:	2b00      	cmp	r3, #0
1a000d36:	d102      	bne.n	1a000d3e <dir_next+0xb0>
1a000d38:	687b      	ldr	r3, [r7, #4]
1a000d3a:	2200      	movs	r2, #0
1a000d3c:	619a      	str	r2, [r3, #24]
1a000d3e:	687b      	ldr	r3, [r7, #4]
1a000d40:	2200      	movs	r2, #0
1a000d42:	619a      	str	r2, [r3, #24]
1a000d44:	2304      	movs	r3, #4
1a000d46:	e016      	b.n	1a000d76 <dir_next+0xe8>
1a000d48:	687b      	ldr	r3, [r7, #4]
1a000d4a:	68fa      	ldr	r2, [r7, #12]
1a000d4c:	615a      	str	r2, [r3, #20]
1a000d4e:	68f9      	ldr	r1, [r7, #12]
1a000d50:	6978      	ldr	r0, [r7, #20]
1a000d52:	f7ff fe5d 	bl	1a000a10 <clst2sect>
1a000d56:	4602      	mov	r2, r0
1a000d58:	687b      	ldr	r3, [r7, #4]
1a000d5a:	619a      	str	r2, [r3, #24]
1a000d5c:	687b      	ldr	r3, [r7, #4]
1a000d5e:	693a      	ldr	r2, [r7, #16]
1a000d60:	611a      	str	r2, [r3, #16]
1a000d62:	697b      	ldr	r3, [r7, #20]
1a000d64:	f103 0228 	add.w	r2, r3, #40	; 0x28
1a000d68:	693b      	ldr	r3, [r7, #16]
1a000d6a:	f3c3 0308 	ubfx	r3, r3, #0, #9
1a000d6e:	441a      	add	r2, r3
1a000d70:	687b      	ldr	r3, [r7, #4]
1a000d72:	61da      	str	r2, [r3, #28]
1a000d74:	2300      	movs	r3, #0
1a000d76:	4618      	mov	r0, r3
1a000d78:	3718      	adds	r7, #24
1a000d7a:	46bd      	mov	sp, r7
1a000d7c:	bd80      	pop	{r7, pc}

1a000d7e <ld_clust>:
1a000d7e:	b580      	push	{r7, lr}
1a000d80:	b084      	sub	sp, #16
1a000d82:	af00      	add	r7, sp, #0
1a000d84:	6078      	str	r0, [r7, #4]
1a000d86:	6039      	str	r1, [r7, #0]
1a000d88:	683b      	ldr	r3, [r7, #0]
1a000d8a:	331a      	adds	r3, #26
1a000d8c:	4618      	mov	r0, r3
1a000d8e:	f7ff fd3d 	bl	1a00080c <ld_word>
1a000d92:	4603      	mov	r3, r0
1a000d94:	60fb      	str	r3, [r7, #12]
1a000d96:	687b      	ldr	r3, [r7, #4]
1a000d98:	781b      	ldrb	r3, [r3, #0]
1a000d9a:	2b03      	cmp	r3, #3
1a000d9c:	d109      	bne.n	1a000db2 <ld_clust+0x34>
1a000d9e:	683b      	ldr	r3, [r7, #0]
1a000da0:	3314      	adds	r3, #20
1a000da2:	4618      	mov	r0, r3
1a000da4:	f7ff fd32 	bl	1a00080c <ld_word>
1a000da8:	4603      	mov	r3, r0
1a000daa:	041b      	lsls	r3, r3, #16
1a000dac:	68fa      	ldr	r2, [r7, #12]
1a000dae:	4313      	orrs	r3, r2
1a000db0:	60fb      	str	r3, [r7, #12]
1a000db2:	68fb      	ldr	r3, [r7, #12]
1a000db4:	4618      	mov	r0, r3
1a000db6:	3710      	adds	r7, #16
1a000db8:	46bd      	mov	sp, r7
1a000dba:	bd80      	pop	{r7, pc}

1a000dbc <dir_read>:
1a000dbc:	b580      	push	{r7, lr}
1a000dbe:	b086      	sub	sp, #24
1a000dc0:	af00      	add	r7, sp, #0
1a000dc2:	6078      	str	r0, [r7, #4]
1a000dc4:	6039      	str	r1, [r7, #0]
1a000dc6:	2304      	movs	r3, #4
1a000dc8:	75fb      	strb	r3, [r7, #23]
1a000dca:	687b      	ldr	r3, [r7, #4]
1a000dcc:	681b      	ldr	r3, [r3, #0]
1a000dce:	613b      	str	r3, [r7, #16]
1a000dd0:	e03c      	b.n	1a000e4c <dir_read+0x90>
1a000dd2:	687b      	ldr	r3, [r7, #4]
1a000dd4:	699b      	ldr	r3, [r3, #24]
1a000dd6:	4619      	mov	r1, r3
1a000dd8:	6938      	ldr	r0, [r7, #16]
1a000dda:	f7ff fdf1 	bl	1a0009c0 <move_window>
1a000dde:	4603      	mov	r3, r0
1a000de0:	75fb      	strb	r3, [r7, #23]
1a000de2:	7dfb      	ldrb	r3, [r7, #23]
1a000de4:	2b00      	cmp	r3, #0
1a000de6:	d136      	bne.n	1a000e56 <dir_read+0x9a>
1a000de8:	687b      	ldr	r3, [r7, #4]
1a000dea:	69db      	ldr	r3, [r3, #28]
1a000dec:	781b      	ldrb	r3, [r3, #0]
1a000dee:	73fb      	strb	r3, [r7, #15]
1a000df0:	7bfb      	ldrb	r3, [r7, #15]
1a000df2:	2b00      	cmp	r3, #0
1a000df4:	d102      	bne.n	1a000dfc <dir_read+0x40>
1a000df6:	2304      	movs	r3, #4
1a000df8:	75fb      	strb	r3, [r7, #23]
1a000dfa:	e031      	b.n	1a000e60 <dir_read+0xa4>
1a000dfc:	687b      	ldr	r3, [r7, #4]
1a000dfe:	69db      	ldr	r3, [r3, #28]
1a000e00:	330b      	adds	r3, #11
1a000e02:	781b      	ldrb	r3, [r3, #0]
1a000e04:	f003 033f 	and.w	r3, r3, #63	; 0x3f
1a000e08:	73bb      	strb	r3, [r7, #14]
1a000e0a:	687b      	ldr	r3, [r7, #4]
1a000e0c:	7bba      	ldrb	r2, [r7, #14]
1a000e0e:	719a      	strb	r2, [r3, #6]
1a000e10:	7bfb      	ldrb	r3, [r7, #15]
1a000e12:	2be5      	cmp	r3, #229	; 0xe5
1a000e14:	d011      	beq.n	1a000e3a <dir_read+0x7e>
1a000e16:	7bfb      	ldrb	r3, [r7, #15]
1a000e18:	2b2e      	cmp	r3, #46	; 0x2e
1a000e1a:	d00e      	beq.n	1a000e3a <dir_read+0x7e>
1a000e1c:	7bbb      	ldrb	r3, [r7, #14]
1a000e1e:	2b0f      	cmp	r3, #15
1a000e20:	d00b      	beq.n	1a000e3a <dir_read+0x7e>
1a000e22:	7bbb      	ldrb	r3, [r7, #14]
1a000e24:	f023 0320 	bic.w	r3, r3, #32
1a000e28:	2b08      	cmp	r3, #8
1a000e2a:	bf0c      	ite	eq
1a000e2c:	2301      	moveq	r3, #1
1a000e2e:	2300      	movne	r3, #0
1a000e30:	b2db      	uxtb	r3, r3
1a000e32:	461a      	mov	r2, r3
1a000e34:	683b      	ldr	r3, [r7, #0]
1a000e36:	4293      	cmp	r3, r2
1a000e38:	d00f      	beq.n	1a000e5a <dir_read+0x9e>
1a000e3a:	2100      	movs	r1, #0
1a000e3c:	6878      	ldr	r0, [r7, #4]
1a000e3e:	f7ff ff26 	bl	1a000c8e <dir_next>
1a000e42:	4603      	mov	r3, r0
1a000e44:	75fb      	strb	r3, [r7, #23]
1a000e46:	7dfb      	ldrb	r3, [r7, #23]
1a000e48:	2b00      	cmp	r3, #0
1a000e4a:	d108      	bne.n	1a000e5e <dir_read+0xa2>
1a000e4c:	687b      	ldr	r3, [r7, #4]
1a000e4e:	699b      	ldr	r3, [r3, #24]
1a000e50:	2b00      	cmp	r3, #0
1a000e52:	d1be      	bne.n	1a000dd2 <dir_read+0x16>
1a000e54:	e004      	b.n	1a000e60 <dir_read+0xa4>
1a000e56:	bf00      	nop
1a000e58:	e002      	b.n	1a000e60 <dir_read+0xa4>
1a000e5a:	bf00      	nop
1a000e5c:	e000      	b.n	1a000e60 <dir_read+0xa4>
1a000e5e:	bf00      	nop
1a000e60:	7dfb      	ldrb	r3, [r7, #23]
1a000e62:	2b00      	cmp	r3, #0
1a000e64:	d002      	beq.n	1a000e6c <dir_read+0xb0>
1a000e66:	687b      	ldr	r3, [r7, #4]
1a000e68:	2200      	movs	r2, #0
1a000e6a:	619a      	str	r2, [r3, #24]
1a000e6c:	7dfb      	ldrb	r3, [r7, #23]
1a000e6e:	4618      	mov	r0, r3
1a000e70:	3718      	adds	r7, #24
1a000e72:	46bd      	mov	sp, r7
1a000e74:	bd80      	pop	{r7, pc}

1a000e76 <dir_find>:
1a000e76:	b580      	push	{r7, lr}
1a000e78:	b086      	sub	sp, #24
1a000e7a:	af00      	add	r7, sp, #0
1a000e7c:	6078      	str	r0, [r7, #4]
1a000e7e:	687b      	ldr	r3, [r7, #4]
1a000e80:	681b      	ldr	r3, [r3, #0]
1a000e82:	613b      	str	r3, [r7, #16]
1a000e84:	2100      	movs	r1, #0
1a000e86:	6878      	ldr	r0, [r7, #4]
1a000e88:	f7ff fe86 	bl	1a000b98 <dir_sdi>
1a000e8c:	4603      	mov	r3, r0
1a000e8e:	75fb      	strb	r3, [r7, #23]
1a000e90:	7dfb      	ldrb	r3, [r7, #23]
1a000e92:	2b00      	cmp	r3, #0
1a000e94:	d001      	beq.n	1a000e9a <dir_find+0x24>
1a000e96:	7dfb      	ldrb	r3, [r7, #23]
1a000e98:	e03e      	b.n	1a000f18 <dir_find+0xa2>
1a000e9a:	687b      	ldr	r3, [r7, #4]
1a000e9c:	699b      	ldr	r3, [r3, #24]
1a000e9e:	4619      	mov	r1, r3
1a000ea0:	6938      	ldr	r0, [r7, #16]
1a000ea2:	f7ff fd8d 	bl	1a0009c0 <move_window>
1a000ea6:	4603      	mov	r3, r0
1a000ea8:	75fb      	strb	r3, [r7, #23]
1a000eaa:	7dfb      	ldrb	r3, [r7, #23]
1a000eac:	2b00      	cmp	r3, #0
1a000eae:	d12f      	bne.n	1a000f10 <dir_find+0x9a>
1a000eb0:	687b      	ldr	r3, [r7, #4]
1a000eb2:	69db      	ldr	r3, [r3, #28]
1a000eb4:	781b      	ldrb	r3, [r3, #0]
1a000eb6:	73fb      	strb	r3, [r7, #15]
1a000eb8:	7bfb      	ldrb	r3, [r7, #15]
1a000eba:	2b00      	cmp	r3, #0
1a000ebc:	d102      	bne.n	1a000ec4 <dir_find+0x4e>
1a000ebe:	2304      	movs	r3, #4
1a000ec0:	75fb      	strb	r3, [r7, #23]
1a000ec2:	e028      	b.n	1a000f16 <dir_find+0xa0>
1a000ec4:	687b      	ldr	r3, [r7, #4]
1a000ec6:	69db      	ldr	r3, [r3, #28]
1a000ec8:	330b      	adds	r3, #11
1a000eca:	781b      	ldrb	r3, [r3, #0]
1a000ecc:	f003 033f 	and.w	r3, r3, #63	; 0x3f
1a000ed0:	b2da      	uxtb	r2, r3
1a000ed2:	687b      	ldr	r3, [r7, #4]
1a000ed4:	719a      	strb	r2, [r3, #6]
1a000ed6:	687b      	ldr	r3, [r7, #4]
1a000ed8:	69db      	ldr	r3, [r3, #28]
1a000eda:	330b      	adds	r3, #11
1a000edc:	781b      	ldrb	r3, [r3, #0]
1a000ede:	f003 0308 	and.w	r3, r3, #8
1a000ee2:	2b00      	cmp	r3, #0
1a000ee4:	d10a      	bne.n	1a000efc <dir_find+0x86>
1a000ee6:	687b      	ldr	r3, [r7, #4]
1a000ee8:	69d8      	ldr	r0, [r3, #28]
1a000eea:	687b      	ldr	r3, [r7, #4]
1a000eec:	3320      	adds	r3, #32
1a000eee:	220b      	movs	r2, #11
1a000ef0:	4619      	mov	r1, r3
1a000ef2:	f7ff fd01 	bl	1a0008f8 <mem_cmp>
1a000ef6:	4603      	mov	r3, r0
1a000ef8:	2b00      	cmp	r3, #0
1a000efa:	d00b      	beq.n	1a000f14 <dir_find+0x9e>
1a000efc:	2100      	movs	r1, #0
1a000efe:	6878      	ldr	r0, [r7, #4]
1a000f00:	f7ff fec5 	bl	1a000c8e <dir_next>
1a000f04:	4603      	mov	r3, r0
1a000f06:	75fb      	strb	r3, [r7, #23]
1a000f08:	7dfb      	ldrb	r3, [r7, #23]
1a000f0a:	2b00      	cmp	r3, #0
1a000f0c:	d0c5      	beq.n	1a000e9a <dir_find+0x24>
1a000f0e:	e002      	b.n	1a000f16 <dir_find+0xa0>
1a000f10:	bf00      	nop
1a000f12:	e000      	b.n	1a000f16 <dir_find+0xa0>
1a000f14:	bf00      	nop
1a000f16:	7dfb      	ldrb	r3, [r7, #23]
1a000f18:	4618      	mov	r0, r3
1a000f1a:	3718      	adds	r7, #24
1a000f1c:	46bd      	mov	sp, r7
1a000f1e:	bd80      	pop	{r7, pc}

1a000f20 <get_fileinfo>:
1a000f20:	b580      	push	{r7, lr}
1a000f22:	b086      	sub	sp, #24
1a000f24:	af00      	add	r7, sp, #0
1a000f26:	6078      	str	r0, [r7, #4]
1a000f28:	6039      	str	r1, [r7, #0]
1a000f2a:	683b      	ldr	r3, [r7, #0]
1a000f2c:	2200      	movs	r2, #0
1a000f2e:	725a      	strb	r2, [r3, #9]
1a000f30:	687b      	ldr	r3, [r7, #4]
1a000f32:	699b      	ldr	r3, [r3, #24]
1a000f34:	2b00      	cmp	r3, #0
1a000f36:	d052      	beq.n	1a000fde <get_fileinfo+0xbe>
1a000f38:	2300      	movs	r3, #0
1a000f3a:	613b      	str	r3, [r7, #16]
1a000f3c:	693b      	ldr	r3, [r7, #16]
1a000f3e:	617b      	str	r3, [r7, #20]
1a000f40:	e021      	b.n	1a000f86 <get_fileinfo+0x66>
1a000f42:	687b      	ldr	r3, [r7, #4]
1a000f44:	69da      	ldr	r2, [r3, #28]
1a000f46:	697b      	ldr	r3, [r7, #20]
1a000f48:	1c59      	adds	r1, r3, #1
1a000f4a:	6179      	str	r1, [r7, #20]
1a000f4c:	4413      	add	r3, r2
1a000f4e:	781b      	ldrb	r3, [r3, #0]
1a000f50:	73fb      	strb	r3, [r7, #15]
1a000f52:	7bfb      	ldrb	r3, [r7, #15]
1a000f54:	2b20      	cmp	r3, #32
1a000f56:	d100      	bne.n	1a000f5a <get_fileinfo+0x3a>
1a000f58:	e015      	b.n	1a000f86 <get_fileinfo+0x66>
1a000f5a:	7bfb      	ldrb	r3, [r7, #15]
1a000f5c:	2b05      	cmp	r3, #5
1a000f5e:	d101      	bne.n	1a000f64 <get_fileinfo+0x44>
1a000f60:	23e5      	movs	r3, #229	; 0xe5
1a000f62:	73fb      	strb	r3, [r7, #15]
1a000f64:	697b      	ldr	r3, [r7, #20]
1a000f66:	2b09      	cmp	r3, #9
1a000f68:	d106      	bne.n	1a000f78 <get_fileinfo+0x58>
1a000f6a:	693b      	ldr	r3, [r7, #16]
1a000f6c:	1c5a      	adds	r2, r3, #1
1a000f6e:	613a      	str	r2, [r7, #16]
1a000f70:	683a      	ldr	r2, [r7, #0]
1a000f72:	4413      	add	r3, r2
1a000f74:	222e      	movs	r2, #46	; 0x2e
1a000f76:	725a      	strb	r2, [r3, #9]
1a000f78:	693b      	ldr	r3, [r7, #16]
1a000f7a:	1c5a      	adds	r2, r3, #1
1a000f7c:	613a      	str	r2, [r7, #16]
1a000f7e:	683a      	ldr	r2, [r7, #0]
1a000f80:	4413      	add	r3, r2
1a000f82:	7bfa      	ldrb	r2, [r7, #15]
1a000f84:	725a      	strb	r2, [r3, #9]
1a000f86:	697b      	ldr	r3, [r7, #20]
1a000f88:	2b0a      	cmp	r3, #10
1a000f8a:	d9da      	bls.n	1a000f42 <get_fileinfo+0x22>
1a000f8c:	683a      	ldr	r2, [r7, #0]
1a000f8e:	693b      	ldr	r3, [r7, #16]
1a000f90:	4413      	add	r3, r2
1a000f92:	3309      	adds	r3, #9
1a000f94:	2200      	movs	r2, #0
1a000f96:	701a      	strb	r2, [r3, #0]
1a000f98:	687b      	ldr	r3, [r7, #4]
1a000f9a:	69db      	ldr	r3, [r3, #28]
1a000f9c:	7ada      	ldrb	r2, [r3, #11]
1a000f9e:	683b      	ldr	r3, [r7, #0]
1a000fa0:	721a      	strb	r2, [r3, #8]
1a000fa2:	687b      	ldr	r3, [r7, #4]
1a000fa4:	69db      	ldr	r3, [r3, #28]
1a000fa6:	331c      	adds	r3, #28
1a000fa8:	4618      	mov	r0, r3
1a000faa:	f7ff fc47 	bl	1a00083c <ld_dword>
1a000fae:	4602      	mov	r2, r0
1a000fb0:	683b      	ldr	r3, [r7, #0]
1a000fb2:	601a      	str	r2, [r3, #0]
1a000fb4:	687b      	ldr	r3, [r7, #4]
1a000fb6:	69db      	ldr	r3, [r3, #28]
1a000fb8:	3316      	adds	r3, #22
1a000fba:	4618      	mov	r0, r3
1a000fbc:	f7ff fc26 	bl	1a00080c <ld_word>
1a000fc0:	4603      	mov	r3, r0
1a000fc2:	461a      	mov	r2, r3
1a000fc4:	683b      	ldr	r3, [r7, #0]
1a000fc6:	80da      	strh	r2, [r3, #6]
1a000fc8:	687b      	ldr	r3, [r7, #4]
1a000fca:	69db      	ldr	r3, [r3, #28]
1a000fcc:	3318      	adds	r3, #24
1a000fce:	4618      	mov	r0, r3
1a000fd0:	f7ff fc1c 	bl	1a00080c <ld_word>
1a000fd4:	4603      	mov	r3, r0
1a000fd6:	461a      	mov	r2, r3
1a000fd8:	683b      	ldr	r3, [r7, #0]
1a000fda:	809a      	strh	r2, [r3, #4]
1a000fdc:	e000      	b.n	1a000fe0 <get_fileinfo+0xc0>
1a000fde:	bf00      	nop
1a000fe0:	3718      	adds	r7, #24
1a000fe2:	46bd      	mov	sp, r7
1a000fe4:	bd80      	pop	{r7, pc}
1a000fe6:	Address 0x000000001a000fe6 is out of bounds.


1a000fe8 <create_name>:
1a000fe8:	b580      	push	{r7, lr}
1a000fea:	b08a      	sub	sp, #40	; 0x28
1a000fec:	af00      	add	r7, sp, #0
1a000fee:	6078      	str	r0, [r7, #4]
1a000ff0:	6039      	str	r1, [r7, #0]
1a000ff2:	683b      	ldr	r3, [r7, #0]
1a000ff4:	681b      	ldr	r3, [r3, #0]
1a000ff6:	617b      	str	r3, [r7, #20]
1a000ff8:	687b      	ldr	r3, [r7, #4]
1a000ffa:	3320      	adds	r3, #32
1a000ffc:	613b      	str	r3, [r7, #16]
1a000ffe:	220b      	movs	r2, #11
1a001000:	2120      	movs	r1, #32
1a001002:	6938      	ldr	r0, [r7, #16]
1a001004:	f7ff fc5e 	bl	1a0008c4 <mem_set>
1a001008:	2300      	movs	r3, #0
1a00100a:	61bb      	str	r3, [r7, #24]
1a00100c:	69bb      	ldr	r3, [r7, #24]
1a00100e:	61fb      	str	r3, [r7, #28]
1a001010:	2308      	movs	r3, #8
1a001012:	623b      	str	r3, [r7, #32]
1a001014:	69fb      	ldr	r3, [r7, #28]
1a001016:	1c5a      	adds	r2, r3, #1
1a001018:	61fa      	str	r2, [r7, #28]
1a00101a:	697a      	ldr	r2, [r7, #20]
1a00101c:	4413      	add	r3, r2
1a00101e:	781b      	ldrb	r3, [r3, #0]
1a001020:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
1a001024:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a001028:	2b20      	cmp	r3, #32
1a00102a:	f240 8089 	bls.w	1a001140 <create_name+0x158>
1a00102e:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a001032:	2b2f      	cmp	r3, #47	; 0x2f
1a001034:	d007      	beq.n	1a001046 <create_name+0x5e>
1a001036:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a00103a:	2b5c      	cmp	r3, #92	; 0x5c
1a00103c:	d110      	bne.n	1a001060 <create_name+0x78>
1a00103e:	e002      	b.n	1a001046 <create_name+0x5e>
1a001040:	69fb      	ldr	r3, [r7, #28]
1a001042:	3301      	adds	r3, #1
1a001044:	61fb      	str	r3, [r7, #28]
1a001046:	697a      	ldr	r2, [r7, #20]
1a001048:	69fb      	ldr	r3, [r7, #28]
1a00104a:	4413      	add	r3, r2
1a00104c:	781b      	ldrb	r3, [r3, #0]
1a00104e:	2b2f      	cmp	r3, #47	; 0x2f
1a001050:	d0f6      	beq.n	1a001040 <create_name+0x58>
1a001052:	697a      	ldr	r2, [r7, #20]
1a001054:	69fb      	ldr	r3, [r7, #28]
1a001056:	4413      	add	r3, r2
1a001058:	781b      	ldrb	r3, [r3, #0]
1a00105a:	2b5c      	cmp	r3, #92	; 0x5c
1a00105c:	d0f0      	beq.n	1a001040 <create_name+0x58>
1a00105e:	e070      	b.n	1a001142 <create_name+0x15a>
1a001060:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a001064:	2b2e      	cmp	r3, #46	; 0x2e
1a001066:	d003      	beq.n	1a001070 <create_name+0x88>
1a001068:	69ba      	ldr	r2, [r7, #24]
1a00106a:	6a3b      	ldr	r3, [r7, #32]
1a00106c:	429a      	cmp	r2, r3
1a00106e:	d30d      	bcc.n	1a00108c <create_name+0xa4>
1a001070:	6a3b      	ldr	r3, [r7, #32]
1a001072:	2b0b      	cmp	r3, #11
1a001074:	d003      	beq.n	1a00107e <create_name+0x96>
1a001076:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a00107a:	2b2e      	cmp	r3, #46	; 0x2e
1a00107c:	d001      	beq.n	1a001082 <create_name+0x9a>
1a00107e:	2306      	movs	r3, #6
1a001080:	e07b      	b.n	1a00117a <create_name+0x192>
1a001082:	2308      	movs	r3, #8
1a001084:	61bb      	str	r3, [r7, #24]
1a001086:	230b      	movs	r3, #11
1a001088:	623b      	str	r3, [r7, #32]
1a00108a:	e058      	b.n	1a00113e <create_name+0x156>
1a00108c:	f997 3027 	ldrsb.w	r3, [r7, #39]	; 0x27
1a001090:	2b00      	cmp	r3, #0
1a001092:	da07      	bge.n	1a0010a4 <create_name+0xbc>
1a001094:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a001098:	f003 037f 	and.w	r3, r3, #127	; 0x7f
1a00109c:	4a39      	ldr	r2, [pc, #228]	; (1a001184 <create_name+0x19c>)
1a00109e:	5cd3      	ldrb	r3, [r2, r3]
1a0010a0:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
1a0010a4:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a0010a8:	4618      	mov	r0, r3
1a0010aa:	f7ff fc67 	bl	1a00097c <dbc_1st>
1a0010ae:	4603      	mov	r3, r0
1a0010b0:	2b00      	cmp	r3, #0
1a0010b2:	d024      	beq.n	1a0010fe <create_name+0x116>
1a0010b4:	69fb      	ldr	r3, [r7, #28]
1a0010b6:	1c5a      	adds	r2, r3, #1
1a0010b8:	61fa      	str	r2, [r7, #28]
1a0010ba:	697a      	ldr	r2, [r7, #20]
1a0010bc:	4413      	add	r3, r2
1a0010be:	781b      	ldrb	r3, [r3, #0]
1a0010c0:	73fb      	strb	r3, [r7, #15]
1a0010c2:	7bfb      	ldrb	r3, [r7, #15]
1a0010c4:	4618      	mov	r0, r3
1a0010c6:	f7ff fc6a 	bl	1a00099e <dbc_2nd>
1a0010ca:	4603      	mov	r3, r0
1a0010cc:	2b00      	cmp	r3, #0
1a0010ce:	d004      	beq.n	1a0010da <create_name+0xf2>
1a0010d0:	6a3b      	ldr	r3, [r7, #32]
1a0010d2:	3b01      	subs	r3, #1
1a0010d4:	69ba      	ldr	r2, [r7, #24]
1a0010d6:	429a      	cmp	r2, r3
1a0010d8:	d301      	bcc.n	1a0010de <create_name+0xf6>
1a0010da:	2306      	movs	r3, #6
1a0010dc:	e04d      	b.n	1a00117a <create_name+0x192>
1a0010de:	69bb      	ldr	r3, [r7, #24]
1a0010e0:	1c5a      	adds	r2, r3, #1
1a0010e2:	61ba      	str	r2, [r7, #24]
1a0010e4:	693a      	ldr	r2, [r7, #16]
1a0010e6:	4413      	add	r3, r2
1a0010e8:	f897 2027 	ldrb.w	r2, [r7, #39]	; 0x27
1a0010ec:	701a      	strb	r2, [r3, #0]
1a0010ee:	69bb      	ldr	r3, [r7, #24]
1a0010f0:	1c5a      	adds	r2, r3, #1
1a0010f2:	61ba      	str	r2, [r7, #24]
1a0010f4:	693a      	ldr	r2, [r7, #16]
1a0010f6:	4413      	add	r3, r2
1a0010f8:	7bfa      	ldrb	r2, [r7, #15]
1a0010fa:	701a      	strb	r2, [r3, #0]
1a0010fc:	e78a      	b.n	1a001014 <create_name+0x2c>
1a0010fe:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a001102:	4619      	mov	r1, r3
1a001104:	4820      	ldr	r0, [pc, #128]	; (1a001188 <create_name+0x1a0>)
1a001106:	f7ff fc1e 	bl	1a000946 <chk_chr>
1a00110a:	4603      	mov	r3, r0
1a00110c:	2b00      	cmp	r3, #0
1a00110e:	d001      	beq.n	1a001114 <create_name+0x12c>
1a001110:	2306      	movs	r3, #6
1a001112:	e032      	b.n	1a00117a <create_name+0x192>
1a001114:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a001118:	2b60      	cmp	r3, #96	; 0x60
1a00111a:	d908      	bls.n	1a00112e <create_name+0x146>
1a00111c:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a001120:	2b7a      	cmp	r3, #122	; 0x7a
1a001122:	d804      	bhi.n	1a00112e <create_name+0x146>
1a001124:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a001128:	3b20      	subs	r3, #32
1a00112a:	f887 3027 	strb.w	r3, [r7, #39]	; 0x27
1a00112e:	69bb      	ldr	r3, [r7, #24]
1a001130:	1c5a      	adds	r2, r3, #1
1a001132:	61ba      	str	r2, [r7, #24]
1a001134:	693a      	ldr	r2, [r7, #16]
1a001136:	4413      	add	r3, r2
1a001138:	f897 2027 	ldrb.w	r2, [r7, #39]	; 0x27
1a00113c:	701a      	strb	r2, [r3, #0]
1a00113e:	e769      	b.n	1a001014 <create_name+0x2c>
1a001140:	bf00      	nop
1a001142:	697a      	ldr	r2, [r7, #20]
1a001144:	69fb      	ldr	r3, [r7, #28]
1a001146:	441a      	add	r2, r3
1a001148:	683b      	ldr	r3, [r7, #0]
1a00114a:	601a      	str	r2, [r3, #0]
1a00114c:	69bb      	ldr	r3, [r7, #24]
1a00114e:	2b00      	cmp	r3, #0
1a001150:	d101      	bne.n	1a001156 <create_name+0x16e>
1a001152:	2306      	movs	r3, #6
1a001154:	e011      	b.n	1a00117a <create_name+0x192>
1a001156:	693b      	ldr	r3, [r7, #16]
1a001158:	781b      	ldrb	r3, [r3, #0]
1a00115a:	2be5      	cmp	r3, #229	; 0xe5
1a00115c:	d102      	bne.n	1a001164 <create_name+0x17c>
1a00115e:	693b      	ldr	r3, [r7, #16]
1a001160:	2205      	movs	r2, #5
1a001162:	701a      	strb	r2, [r3, #0]
1a001164:	f897 3027 	ldrb.w	r3, [r7, #39]	; 0x27
1a001168:	2b20      	cmp	r3, #32
1a00116a:	d801      	bhi.n	1a001170 <create_name+0x188>
1a00116c:	2204      	movs	r2, #4
1a00116e:	e000      	b.n	1a001172 <create_name+0x18a>
1a001170:	2200      	movs	r2, #0
1a001172:	693b      	ldr	r3, [r7, #16]
1a001174:	330b      	adds	r3, #11
1a001176:	701a      	strb	r2, [r3, #0]
1a001178:	2300      	movs	r3, #0
1a00117a:	4618      	mov	r0, r3
1a00117c:	3728      	adds	r7, #40	; 0x28
1a00117e:	46bd      	mov	sp, r7
1a001180:	bd80      	pop	{r7, pc}
1a001182:	bf00      	nop
1a001184:	1a00375c 	.word	0x1a00375c
1a001188:	1a0037dc 	.word	0x1a0037dc

1a00118c <follow_path>:
1a00118c:	b580      	push	{r7, lr}
1a00118e:	b086      	sub	sp, #24
1a001190:	af00      	add	r7, sp, #0
1a001192:	6078      	str	r0, [r7, #4]
1a001194:	6039      	str	r1, [r7, #0]
1a001196:	687b      	ldr	r3, [r7, #4]
1a001198:	681b      	ldr	r3, [r3, #0]
1a00119a:	613b      	str	r3, [r7, #16]
1a00119c:	e002      	b.n	1a0011a4 <follow_path+0x18>
1a00119e:	683b      	ldr	r3, [r7, #0]
1a0011a0:	3301      	adds	r3, #1
1a0011a2:	603b      	str	r3, [r7, #0]
1a0011a4:	683b      	ldr	r3, [r7, #0]
1a0011a6:	781b      	ldrb	r3, [r3, #0]
1a0011a8:	2b2f      	cmp	r3, #47	; 0x2f
1a0011aa:	d0f8      	beq.n	1a00119e <follow_path+0x12>
1a0011ac:	683b      	ldr	r3, [r7, #0]
1a0011ae:	781b      	ldrb	r3, [r3, #0]
1a0011b0:	2b5c      	cmp	r3, #92	; 0x5c
1a0011b2:	d0f4      	beq.n	1a00119e <follow_path+0x12>
1a0011b4:	687b      	ldr	r3, [r7, #4]
1a0011b6:	2200      	movs	r2, #0
1a0011b8:	609a      	str	r2, [r3, #8]
1a0011ba:	683b      	ldr	r3, [r7, #0]
1a0011bc:	781b      	ldrb	r3, [r3, #0]
1a0011be:	2b1f      	cmp	r3, #31
1a0011c0:	d80a      	bhi.n	1a0011d8 <follow_path+0x4c>
1a0011c2:	687b      	ldr	r3, [r7, #4]
1a0011c4:	2280      	movs	r2, #128	; 0x80
1a0011c6:	f883 202b 	strb.w	r2, [r3, #43]	; 0x2b
1a0011ca:	2100      	movs	r1, #0
1a0011cc:	6878      	ldr	r0, [r7, #4]
1a0011ce:	f7ff fce3 	bl	1a000b98 <dir_sdi>
1a0011d2:	4603      	mov	r3, r0
1a0011d4:	75fb      	strb	r3, [r7, #23]
1a0011d6:	e043      	b.n	1a001260 <follow_path+0xd4>
1a0011d8:	463b      	mov	r3, r7
1a0011da:	4619      	mov	r1, r3
1a0011dc:	6878      	ldr	r0, [r7, #4]
1a0011de:	f7ff ff03 	bl	1a000fe8 <create_name>
1a0011e2:	4603      	mov	r3, r0
1a0011e4:	75fb      	strb	r3, [r7, #23]
1a0011e6:	7dfb      	ldrb	r3, [r7, #23]
1a0011e8:	2b00      	cmp	r3, #0
1a0011ea:	d134      	bne.n	1a001256 <follow_path+0xca>
1a0011ec:	6878      	ldr	r0, [r7, #4]
1a0011ee:	f7ff fe42 	bl	1a000e76 <dir_find>
1a0011f2:	4603      	mov	r3, r0
1a0011f4:	75fb      	strb	r3, [r7, #23]
1a0011f6:	687b      	ldr	r3, [r7, #4]
1a0011f8:	f893 302b 	ldrb.w	r3, [r3, #43]	; 0x2b
1a0011fc:	73fb      	strb	r3, [r7, #15]
1a0011fe:	7dfb      	ldrb	r3, [r7, #23]
1a001200:	2b00      	cmp	r3, #0
1a001202:	d00a      	beq.n	1a00121a <follow_path+0x8e>
1a001204:	7dfb      	ldrb	r3, [r7, #23]
1a001206:	2b04      	cmp	r3, #4
1a001208:	d127      	bne.n	1a00125a <follow_path+0xce>
1a00120a:	7bfb      	ldrb	r3, [r7, #15]
1a00120c:	f003 0304 	and.w	r3, r3, #4
1a001210:	2b00      	cmp	r3, #0
1a001212:	d122      	bne.n	1a00125a <follow_path+0xce>
1a001214:	2305      	movs	r3, #5
1a001216:	75fb      	strb	r3, [r7, #23]
1a001218:	e01f      	b.n	1a00125a <follow_path+0xce>
1a00121a:	7bfb      	ldrb	r3, [r7, #15]
1a00121c:	f003 0304 	and.w	r3, r3, #4
1a001220:	2b00      	cmp	r3, #0
1a001222:	d11c      	bne.n	1a00125e <follow_path+0xd2>
1a001224:	687b      	ldr	r3, [r7, #4]
1a001226:	799b      	ldrb	r3, [r3, #6]
1a001228:	f003 0310 	and.w	r3, r3, #16
1a00122c:	2b00      	cmp	r3, #0
1a00122e:	d102      	bne.n	1a001236 <follow_path+0xaa>
1a001230:	2305      	movs	r3, #5
1a001232:	75fb      	strb	r3, [r7, #23]
1a001234:	e014      	b.n	1a001260 <follow_path+0xd4>
1a001236:	693b      	ldr	r3, [r7, #16]
1a001238:	f103 0228 	add.w	r2, r3, #40	; 0x28
1a00123c:	687b      	ldr	r3, [r7, #4]
1a00123e:	691b      	ldr	r3, [r3, #16]
1a001240:	f3c3 0308 	ubfx	r3, r3, #0, #9
1a001244:	4413      	add	r3, r2
1a001246:	4619      	mov	r1, r3
1a001248:	6938      	ldr	r0, [r7, #16]
1a00124a:	f7ff fd98 	bl	1a000d7e <ld_clust>
1a00124e:	4602      	mov	r2, r0
1a001250:	687b      	ldr	r3, [r7, #4]
1a001252:	609a      	str	r2, [r3, #8]
1a001254:	e7c0      	b.n	1a0011d8 <follow_path+0x4c>
1a001256:	bf00      	nop
1a001258:	e002      	b.n	1a001260 <follow_path+0xd4>
1a00125a:	bf00      	nop
1a00125c:	e000      	b.n	1a001260 <follow_path+0xd4>
1a00125e:	bf00      	nop
1a001260:	7dfb      	ldrb	r3, [r7, #23]
1a001262:	4618      	mov	r0, r3
1a001264:	3718      	adds	r7, #24
1a001266:	46bd      	mov	sp, r7
1a001268:	bd80      	pop	{r7, pc}

1a00126a <get_ldnumber>:
1a00126a:	b480      	push	{r7}
1a00126c:	b089      	sub	sp, #36	; 0x24
1a00126e:	af00      	add	r7, sp, #0
1a001270:	6078      	str	r0, [r7, #4]
1a001272:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001276:	617b      	str	r3, [r7, #20]
1a001278:	687b      	ldr	r3, [r7, #4]
1a00127a:	681b      	ldr	r3, [r3, #0]
1a00127c:	613b      	str	r3, [r7, #16]
1a00127e:	693b      	ldr	r3, [r7, #16]
1a001280:	61fb      	str	r3, [r7, #28]
1a001282:	693b      	ldr	r3, [r7, #16]
1a001284:	2b00      	cmp	r3, #0
1a001286:	d101      	bne.n	1a00128c <get_ldnumber+0x22>
1a001288:	697b      	ldr	r3, [r7, #20]
1a00128a:	e02d      	b.n	1a0012e8 <get_ldnumber+0x7e>
1a00128c:	69fb      	ldr	r3, [r7, #28]
1a00128e:	1c5a      	adds	r2, r3, #1
1a001290:	61fa      	str	r2, [r7, #28]
1a001292:	781b      	ldrb	r3, [r3, #0]
1a001294:	73fb      	strb	r3, [r7, #15]
1a001296:	7bfb      	ldrb	r3, [r7, #15]
1a001298:	2b20      	cmp	r3, #32
1a00129a:	d902      	bls.n	1a0012a2 <get_ldnumber+0x38>
1a00129c:	7bfb      	ldrb	r3, [r7, #15]
1a00129e:	2b3a      	cmp	r3, #58	; 0x3a
1a0012a0:	d1f4      	bne.n	1a00128c <get_ldnumber+0x22>
1a0012a2:	7bfb      	ldrb	r3, [r7, #15]
1a0012a4:	2b3a      	cmp	r3, #58	; 0x3a
1a0012a6:	d11c      	bne.n	1a0012e2 <get_ldnumber+0x78>
1a0012a8:	2301      	movs	r3, #1
1a0012aa:	61bb      	str	r3, [r7, #24]
1a0012ac:	693b      	ldr	r3, [r7, #16]
1a0012ae:	781b      	ldrb	r3, [r3, #0]
1a0012b0:	2b2f      	cmp	r3, #47	; 0x2f
1a0012b2:	d90c      	bls.n	1a0012ce <get_ldnumber+0x64>
1a0012b4:	693b      	ldr	r3, [r7, #16]
1a0012b6:	781b      	ldrb	r3, [r3, #0]
1a0012b8:	2b39      	cmp	r3, #57	; 0x39
1a0012ba:	d808      	bhi.n	1a0012ce <get_ldnumber+0x64>
1a0012bc:	693b      	ldr	r3, [r7, #16]
1a0012be:	3302      	adds	r3, #2
1a0012c0:	69fa      	ldr	r2, [r7, #28]
1a0012c2:	429a      	cmp	r2, r3
1a0012c4:	d103      	bne.n	1a0012ce <get_ldnumber+0x64>
1a0012c6:	693b      	ldr	r3, [r7, #16]
1a0012c8:	781b      	ldrb	r3, [r3, #0]
1a0012ca:	3b30      	subs	r3, #48	; 0x30
1a0012cc:	61bb      	str	r3, [r7, #24]
1a0012ce:	69bb      	ldr	r3, [r7, #24]
1a0012d0:	2b00      	cmp	r3, #0
1a0012d2:	dc04      	bgt.n	1a0012de <get_ldnumber+0x74>
1a0012d4:	69bb      	ldr	r3, [r7, #24]
1a0012d6:	617b      	str	r3, [r7, #20]
1a0012d8:	687b      	ldr	r3, [r7, #4]
1a0012da:	69fa      	ldr	r2, [r7, #28]
1a0012dc:	601a      	str	r2, [r3, #0]
1a0012de:	697b      	ldr	r3, [r7, #20]
1a0012e0:	e002      	b.n	1a0012e8 <get_ldnumber+0x7e>
1a0012e2:	2300      	movs	r3, #0
1a0012e4:	617b      	str	r3, [r7, #20]
1a0012e6:	697b      	ldr	r3, [r7, #20]
1a0012e8:	4618      	mov	r0, r3
1a0012ea:	3724      	adds	r7, #36	; 0x24
1a0012ec:	46bd      	mov	sp, r7
1a0012ee:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012f2:	4770      	bx	lr

1a0012f4 <check_fs>:
1a0012f4:	b580      	push	{r7, lr}
1a0012f6:	b082      	sub	sp, #8
1a0012f8:	af00      	add	r7, sp, #0
1a0012fa:	6078      	str	r0, [r7, #4]
1a0012fc:	6039      	str	r1, [r7, #0]
1a0012fe:	687b      	ldr	r3, [r7, #4]
1a001300:	2200      	movs	r2, #0
1a001302:	70da      	strb	r2, [r3, #3]
1a001304:	687b      	ldr	r3, [r7, #4]
1a001306:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a00130a:	625a      	str	r2, [r3, #36]	; 0x24
1a00130c:	6839      	ldr	r1, [r7, #0]
1a00130e:	6878      	ldr	r0, [r7, #4]
1a001310:	f7ff fb56 	bl	1a0009c0 <move_window>
1a001314:	4603      	mov	r3, r0
1a001316:	2b00      	cmp	r3, #0
1a001318:	d001      	beq.n	1a00131e <check_fs+0x2a>
1a00131a:	2304      	movs	r3, #4
1a00131c:	e038      	b.n	1a001390 <check_fs+0x9c>
1a00131e:	687b      	ldr	r3, [r7, #4]
1a001320:	3328      	adds	r3, #40	; 0x28
1a001322:	f503 73ff 	add.w	r3, r3, #510	; 0x1fe
1a001326:	4618      	mov	r0, r3
1a001328:	f7ff fa70 	bl	1a00080c <ld_word>
1a00132c:	4603      	mov	r3, r0
1a00132e:	461a      	mov	r2, r3
1a001330:	f64a 2355 	movw	r3, #43605	; 0xaa55
1a001334:	429a      	cmp	r2, r3
1a001336:	d001      	beq.n	1a00133c <check_fs+0x48>
1a001338:	2303      	movs	r3, #3
1a00133a:	e029      	b.n	1a001390 <check_fs+0x9c>
1a00133c:	687b      	ldr	r3, [r7, #4]
1a00133e:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
1a001342:	2be9      	cmp	r3, #233	; 0xe9
1a001344:	d009      	beq.n	1a00135a <check_fs+0x66>
1a001346:	687b      	ldr	r3, [r7, #4]
1a001348:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
1a00134c:	2beb      	cmp	r3, #235	; 0xeb
1a00134e:	d004      	beq.n	1a00135a <check_fs+0x66>
1a001350:	687b      	ldr	r3, [r7, #4]
1a001352:	f893 3028 	ldrb.w	r3, [r3, #40]	; 0x28
1a001356:	2be8      	cmp	r3, #232	; 0xe8
1a001358:	d119      	bne.n	1a00138e <check_fs+0x9a>
1a00135a:	687b      	ldr	r3, [r7, #4]
1a00135c:	3328      	adds	r3, #40	; 0x28
1a00135e:	3336      	adds	r3, #54	; 0x36
1a001360:	2203      	movs	r2, #3
1a001362:	490d      	ldr	r1, [pc, #52]	; (1a001398 <check_fs+0xa4>)
1a001364:	4618      	mov	r0, r3
1a001366:	f7ff fac7 	bl	1a0008f8 <mem_cmp>
1a00136a:	4603      	mov	r3, r0
1a00136c:	2b00      	cmp	r3, #0
1a00136e:	d101      	bne.n	1a001374 <check_fs+0x80>
1a001370:	2300      	movs	r3, #0
1a001372:	e00d      	b.n	1a001390 <check_fs+0x9c>
1a001374:	687b      	ldr	r3, [r7, #4]
1a001376:	3328      	adds	r3, #40	; 0x28
1a001378:	3352      	adds	r3, #82	; 0x52
1a00137a:	2205      	movs	r2, #5
1a00137c:	4907      	ldr	r1, [pc, #28]	; (1a00139c <check_fs+0xa8>)
1a00137e:	4618      	mov	r0, r3
1a001380:	f7ff faba 	bl	1a0008f8 <mem_cmp>
1a001384:	4603      	mov	r3, r0
1a001386:	2b00      	cmp	r3, #0
1a001388:	d101      	bne.n	1a00138e <check_fs+0x9a>
1a00138a:	2300      	movs	r3, #0
1a00138c:	e000      	b.n	1a001390 <check_fs+0x9c>
1a00138e:	2302      	movs	r3, #2
1a001390:	4618      	mov	r0, r3
1a001392:	3708      	adds	r7, #8
1a001394:	46bd      	mov	sp, r7
1a001396:	bd80      	pop	{r7, pc}
1a001398:	1a0037ec 	.word	0x1a0037ec
1a00139c:	1a0037f0 	.word	0x1a0037f0

1a0013a0 <find_volume>:
1a0013a0:	b580      	push	{r7, lr}
1a0013a2:	b096      	sub	sp, #88	; 0x58
1a0013a4:	af00      	add	r7, sp, #0
1a0013a6:	60f8      	str	r0, [r7, #12]
1a0013a8:	60b9      	str	r1, [r7, #8]
1a0013aa:	4613      	mov	r3, r2
1a0013ac:	71fb      	strb	r3, [r7, #7]
1a0013ae:	68bb      	ldr	r3, [r7, #8]
1a0013b0:	2200      	movs	r2, #0
1a0013b2:	601a      	str	r2, [r3, #0]
1a0013b4:	68f8      	ldr	r0, [r7, #12]
1a0013b6:	f7ff ff58 	bl	1a00126a <get_ldnumber>
1a0013ba:	63f8      	str	r0, [r7, #60]	; 0x3c
1a0013bc:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a0013be:	2b00      	cmp	r3, #0
1a0013c0:	da01      	bge.n	1a0013c6 <find_volume+0x26>
1a0013c2:	230b      	movs	r3, #11
1a0013c4:	e1cb      	b.n	1a00175e <find_volume+0x3be>
1a0013c6:	4aad      	ldr	r2, [pc, #692]	; (1a00167c <find_volume+0x2dc>)
1a0013c8:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a0013ca:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a0013ce:	63bb      	str	r3, [r7, #56]	; 0x38
1a0013d0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0013d2:	2b00      	cmp	r3, #0
1a0013d4:	d101      	bne.n	1a0013da <find_volume+0x3a>
1a0013d6:	230c      	movs	r3, #12
1a0013d8:	e1c1      	b.n	1a00175e <find_volume+0x3be>
1a0013da:	68bb      	ldr	r3, [r7, #8]
1a0013dc:	6bba      	ldr	r2, [r7, #56]	; 0x38
1a0013de:	601a      	str	r2, [r3, #0]
1a0013e0:	79fb      	ldrb	r3, [r7, #7]
1a0013e2:	f023 0301 	bic.w	r3, r3, #1
1a0013e6:	71fb      	strb	r3, [r7, #7]
1a0013e8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0013ea:	781b      	ldrb	r3, [r3, #0]
1a0013ec:	2b00      	cmp	r3, #0
1a0013ee:	d00f      	beq.n	1a001410 <find_volume+0x70>
1a0013f0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0013f2:	785b      	ldrb	r3, [r3, #1]
1a0013f4:	4618      	mov	r0, r3
1a0013f6:	f000 fe6d 	bl	1a0020d4 <disk_status>
1a0013fa:	4603      	mov	r3, r0
1a0013fc:	f887 3037 	strb.w	r3, [r7, #55]	; 0x37
1a001400:	f897 3037 	ldrb.w	r3, [r7, #55]	; 0x37
1a001404:	f003 0301 	and.w	r3, r3, #1
1a001408:	2b00      	cmp	r3, #0
1a00140a:	d101      	bne.n	1a001410 <find_volume+0x70>
1a00140c:	2300      	movs	r3, #0
1a00140e:	e1a6      	b.n	1a00175e <find_volume+0x3be>
1a001410:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001412:	2200      	movs	r2, #0
1a001414:	701a      	strb	r2, [r3, #0]
1a001416:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a001418:	b2da      	uxtb	r2, r3
1a00141a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00141c:	705a      	strb	r2, [r3, #1]
1a00141e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001420:	785b      	ldrb	r3, [r3, #1]
1a001422:	4618      	mov	r0, r3
1a001424:	f000 fe62 	bl	1a0020ec <disk_initialize>
1a001428:	4603      	mov	r3, r0
1a00142a:	f887 3037 	strb.w	r3, [r7, #55]	; 0x37
1a00142e:	f897 3037 	ldrb.w	r3, [r7, #55]	; 0x37
1a001432:	f003 0301 	and.w	r3, r3, #1
1a001436:	2b00      	cmp	r3, #0
1a001438:	d001      	beq.n	1a00143e <find_volume+0x9e>
1a00143a:	2303      	movs	r3, #3
1a00143c:	e18f      	b.n	1a00175e <find_volume+0x3be>
1a00143e:	2300      	movs	r3, #0
1a001440:	653b      	str	r3, [r7, #80]	; 0x50
1a001442:	6d39      	ldr	r1, [r7, #80]	; 0x50
1a001444:	6bb8      	ldr	r0, [r7, #56]	; 0x38
1a001446:	f7ff ff55 	bl	1a0012f4 <check_fs>
1a00144a:	4603      	mov	r3, r0
1a00144c:	f887 3057 	strb.w	r3, [r7, #87]	; 0x57
1a001450:	f897 3057 	ldrb.w	r3, [r7, #87]	; 0x57
1a001454:	2b02      	cmp	r3, #2
1a001456:	d14b      	bne.n	1a0014f0 <find_volume+0x150>
1a001458:	2300      	movs	r3, #0
1a00145a:	643b      	str	r3, [r7, #64]	; 0x40
1a00145c:	e01f      	b.n	1a00149e <find_volume+0xfe>
1a00145e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001460:	f103 0228 	add.w	r2, r3, #40	; 0x28
1a001464:	6c3b      	ldr	r3, [r7, #64]	; 0x40
1a001466:	011b      	lsls	r3, r3, #4
1a001468:	f503 73df 	add.w	r3, r3, #446	; 0x1be
1a00146c:	4413      	add	r3, r2
1a00146e:	633b      	str	r3, [r7, #48]	; 0x30
1a001470:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a001472:	3304      	adds	r3, #4
1a001474:	781b      	ldrb	r3, [r3, #0]
1a001476:	2b00      	cmp	r3, #0
1a001478:	d006      	beq.n	1a001488 <find_volume+0xe8>
1a00147a:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a00147c:	3308      	adds	r3, #8
1a00147e:	4618      	mov	r0, r3
1a001480:	f7ff f9dc 	bl	1a00083c <ld_dword>
1a001484:	4602      	mov	r2, r0
1a001486:	e000      	b.n	1a00148a <find_volume+0xea>
1a001488:	2200      	movs	r2, #0
1a00148a:	6c3b      	ldr	r3, [r7, #64]	; 0x40
1a00148c:	009b      	lsls	r3, r3, #2
1a00148e:	f107 0158 	add.w	r1, r7, #88	; 0x58
1a001492:	440b      	add	r3, r1
1a001494:	f843 2c44 	str.w	r2, [r3, #-68]
1a001498:	6c3b      	ldr	r3, [r7, #64]	; 0x40
1a00149a:	3301      	adds	r3, #1
1a00149c:	643b      	str	r3, [r7, #64]	; 0x40
1a00149e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
1a0014a0:	2b03      	cmp	r3, #3
1a0014a2:	d9dc      	bls.n	1a00145e <find_volume+0xbe>
1a0014a4:	2300      	movs	r3, #0
1a0014a6:	643b      	str	r3, [r7, #64]	; 0x40
1a0014a8:	6c3b      	ldr	r3, [r7, #64]	; 0x40
1a0014aa:	2b00      	cmp	r3, #0
1a0014ac:	d002      	beq.n	1a0014b4 <find_volume+0x114>
1a0014ae:	6c3b      	ldr	r3, [r7, #64]	; 0x40
1a0014b0:	3b01      	subs	r3, #1
1a0014b2:	643b      	str	r3, [r7, #64]	; 0x40
1a0014b4:	6c3b      	ldr	r3, [r7, #64]	; 0x40
1a0014b6:	009b      	lsls	r3, r3, #2
1a0014b8:	f107 0258 	add.w	r2, r7, #88	; 0x58
1a0014bc:	4413      	add	r3, r2
1a0014be:	f853 3c44 	ldr.w	r3, [r3, #-68]
1a0014c2:	653b      	str	r3, [r7, #80]	; 0x50
1a0014c4:	6d3b      	ldr	r3, [r7, #80]	; 0x50
1a0014c6:	2b00      	cmp	r3, #0
1a0014c8:	d005      	beq.n	1a0014d6 <find_volume+0x136>
1a0014ca:	6d39      	ldr	r1, [r7, #80]	; 0x50
1a0014cc:	6bb8      	ldr	r0, [r7, #56]	; 0x38
1a0014ce:	f7ff ff11 	bl	1a0012f4 <check_fs>
1a0014d2:	4603      	mov	r3, r0
1a0014d4:	e000      	b.n	1a0014d8 <find_volume+0x138>
1a0014d6:	2303      	movs	r3, #3
1a0014d8:	f887 3057 	strb.w	r3, [r7, #87]	; 0x57
1a0014dc:	f897 3057 	ldrb.w	r3, [r7, #87]	; 0x57
1a0014e0:	2b01      	cmp	r3, #1
1a0014e2:	d905      	bls.n	1a0014f0 <find_volume+0x150>
1a0014e4:	6c3b      	ldr	r3, [r7, #64]	; 0x40
1a0014e6:	3301      	adds	r3, #1
1a0014e8:	643b      	str	r3, [r7, #64]	; 0x40
1a0014ea:	6c3b      	ldr	r3, [r7, #64]	; 0x40
1a0014ec:	2b03      	cmp	r3, #3
1a0014ee:	d9e1      	bls.n	1a0014b4 <find_volume+0x114>
1a0014f0:	f897 3057 	ldrb.w	r3, [r7, #87]	; 0x57
1a0014f4:	2b04      	cmp	r3, #4
1a0014f6:	d101      	bne.n	1a0014fc <find_volume+0x15c>
1a0014f8:	2301      	movs	r3, #1
1a0014fa:	e130      	b.n	1a00175e <find_volume+0x3be>
1a0014fc:	f897 3057 	ldrb.w	r3, [r7, #87]	; 0x57
1a001500:	2b01      	cmp	r3, #1
1a001502:	d901      	bls.n	1a001508 <find_volume+0x168>
1a001504:	230d      	movs	r3, #13
1a001506:	e12a      	b.n	1a00175e <find_volume+0x3be>
1a001508:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00150a:	3328      	adds	r3, #40	; 0x28
1a00150c:	330b      	adds	r3, #11
1a00150e:	4618      	mov	r0, r3
1a001510:	f7ff f97c 	bl	1a00080c <ld_word>
1a001514:	4603      	mov	r3, r0
1a001516:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
1a00151a:	d001      	beq.n	1a001520 <find_volume+0x180>
1a00151c:	230d      	movs	r3, #13
1a00151e:	e11e      	b.n	1a00175e <find_volume+0x3be>
1a001520:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001522:	3328      	adds	r3, #40	; 0x28
1a001524:	3316      	adds	r3, #22
1a001526:	4618      	mov	r0, r3
1a001528:	f7ff f970 	bl	1a00080c <ld_word>
1a00152c:	4603      	mov	r3, r0
1a00152e:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001530:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001532:	2b00      	cmp	r3, #0
1a001534:	d106      	bne.n	1a001544 <find_volume+0x1a4>
1a001536:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001538:	3328      	adds	r3, #40	; 0x28
1a00153a:	3324      	adds	r3, #36	; 0x24
1a00153c:	4618      	mov	r0, r3
1a00153e:	f7ff f97d 	bl	1a00083c <ld_dword>
1a001542:	64f8      	str	r0, [r7, #76]	; 0x4c
1a001544:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001546:	6cfa      	ldr	r2, [r7, #76]	; 0x4c
1a001548:	611a      	str	r2, [r3, #16]
1a00154a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00154c:	f893 2038 	ldrb.w	r2, [r3, #56]	; 0x38
1a001550:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001552:	709a      	strb	r2, [r3, #2]
1a001554:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001556:	789b      	ldrb	r3, [r3, #2]
1a001558:	2b01      	cmp	r3, #1
1a00155a:	d005      	beq.n	1a001568 <find_volume+0x1c8>
1a00155c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00155e:	789b      	ldrb	r3, [r3, #2]
1a001560:	2b02      	cmp	r3, #2
1a001562:	d001      	beq.n	1a001568 <find_volume+0x1c8>
1a001564:	230d      	movs	r3, #13
1a001566:	e0fa      	b.n	1a00175e <find_volume+0x3be>
1a001568:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00156a:	789b      	ldrb	r3, [r3, #2]
1a00156c:	461a      	mov	r2, r3
1a00156e:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001570:	fb02 f303 	mul.w	r3, r2, r3
1a001574:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001576:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001578:	f893 3035 	ldrb.w	r3, [r3, #53]	; 0x35
1a00157c:	b29a      	uxth	r2, r3
1a00157e:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001580:	815a      	strh	r2, [r3, #10]
1a001582:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001584:	895b      	ldrh	r3, [r3, #10]
1a001586:	2b00      	cmp	r3, #0
1a001588:	d008      	beq.n	1a00159c <find_volume+0x1fc>
1a00158a:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00158c:	895b      	ldrh	r3, [r3, #10]
1a00158e:	461a      	mov	r2, r3
1a001590:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001592:	895b      	ldrh	r3, [r3, #10]
1a001594:	3b01      	subs	r3, #1
1a001596:	4013      	ands	r3, r2
1a001598:	2b00      	cmp	r3, #0
1a00159a:	d001      	beq.n	1a0015a0 <find_volume+0x200>
1a00159c:	230d      	movs	r3, #13
1a00159e:	e0de      	b.n	1a00175e <find_volume+0x3be>
1a0015a0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0015a2:	3328      	adds	r3, #40	; 0x28
1a0015a4:	3311      	adds	r3, #17
1a0015a6:	4618      	mov	r0, r3
1a0015a8:	f7ff f930 	bl	1a00080c <ld_word>
1a0015ac:	4603      	mov	r3, r0
1a0015ae:	461a      	mov	r2, r3
1a0015b0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0015b2:	811a      	strh	r2, [r3, #8]
1a0015b4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0015b6:	891b      	ldrh	r3, [r3, #8]
1a0015b8:	f003 030f 	and.w	r3, r3, #15
1a0015bc:	b29b      	uxth	r3, r3
1a0015be:	2b00      	cmp	r3, #0
1a0015c0:	d001      	beq.n	1a0015c6 <find_volume+0x226>
1a0015c2:	230d      	movs	r3, #13
1a0015c4:	e0cb      	b.n	1a00175e <find_volume+0x3be>
1a0015c6:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0015c8:	3328      	adds	r3, #40	; 0x28
1a0015ca:	3313      	adds	r3, #19
1a0015cc:	4618      	mov	r0, r3
1a0015ce:	f7ff f91d 	bl	1a00080c <ld_word>
1a0015d2:	4603      	mov	r3, r0
1a0015d4:	64bb      	str	r3, [r7, #72]	; 0x48
1a0015d6:	6cbb      	ldr	r3, [r7, #72]	; 0x48
1a0015d8:	2b00      	cmp	r3, #0
1a0015da:	d106      	bne.n	1a0015ea <find_volume+0x24a>
1a0015dc:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0015de:	3328      	adds	r3, #40	; 0x28
1a0015e0:	3320      	adds	r3, #32
1a0015e2:	4618      	mov	r0, r3
1a0015e4:	f7ff f92a 	bl	1a00083c <ld_dword>
1a0015e8:	64b8      	str	r0, [r7, #72]	; 0x48
1a0015ea:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0015ec:	3328      	adds	r3, #40	; 0x28
1a0015ee:	330e      	adds	r3, #14
1a0015f0:	4618      	mov	r0, r3
1a0015f2:	f7ff f90b 	bl	1a00080c <ld_word>
1a0015f6:	4603      	mov	r3, r0
1a0015f8:	85fb      	strh	r3, [r7, #46]	; 0x2e
1a0015fa:	8dfb      	ldrh	r3, [r7, #46]	; 0x2e
1a0015fc:	2b00      	cmp	r3, #0
1a0015fe:	d101      	bne.n	1a001604 <find_volume+0x264>
1a001600:	230d      	movs	r3, #13
1a001602:	e0ac      	b.n	1a00175e <find_volume+0x3be>
1a001604:	8dfa      	ldrh	r2, [r7, #46]	; 0x2e
1a001606:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001608:	4413      	add	r3, r2
1a00160a:	6bba      	ldr	r2, [r7, #56]	; 0x38
1a00160c:	8912      	ldrh	r2, [r2, #8]
1a00160e:	0912      	lsrs	r2, r2, #4
1a001610:	b292      	uxth	r2, r2
1a001612:	4413      	add	r3, r2
1a001614:	62bb      	str	r3, [r7, #40]	; 0x28
1a001616:	6cba      	ldr	r2, [r7, #72]	; 0x48
1a001618:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a00161a:	429a      	cmp	r2, r3
1a00161c:	d201      	bcs.n	1a001622 <find_volume+0x282>
1a00161e:	230d      	movs	r3, #13
1a001620:	e09d      	b.n	1a00175e <find_volume+0x3be>
1a001622:	6cba      	ldr	r2, [r7, #72]	; 0x48
1a001624:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001626:	1ad3      	subs	r3, r2, r3
1a001628:	6bba      	ldr	r2, [r7, #56]	; 0x38
1a00162a:	8952      	ldrh	r2, [r2, #10]
1a00162c:	fbb3 f3f2 	udiv	r3, r3, r2
1a001630:	627b      	str	r3, [r7, #36]	; 0x24
1a001632:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001634:	2b00      	cmp	r3, #0
1a001636:	d101      	bne.n	1a00163c <find_volume+0x29c>
1a001638:	230d      	movs	r3, #13
1a00163a:	e090      	b.n	1a00175e <find_volume+0x3be>
1a00163c:	2300      	movs	r3, #0
1a00163e:	f887 3057 	strb.w	r3, [r7, #87]	; 0x57
1a001642:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001644:	4a0e      	ldr	r2, [pc, #56]	; (1a001680 <find_volume+0x2e0>)
1a001646:	4293      	cmp	r3, r2
1a001648:	d802      	bhi.n	1a001650 <find_volume+0x2b0>
1a00164a:	2303      	movs	r3, #3
1a00164c:	f887 3057 	strb.w	r3, [r7, #87]	; 0x57
1a001650:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001652:	f64f 72f5 	movw	r2, #65525	; 0xfff5
1a001656:	4293      	cmp	r3, r2
1a001658:	d802      	bhi.n	1a001660 <find_volume+0x2c0>
1a00165a:	2302      	movs	r3, #2
1a00165c:	f887 3057 	strb.w	r3, [r7, #87]	; 0x57
1a001660:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001662:	f640 72f5 	movw	r2, #4085	; 0xff5
1a001666:	4293      	cmp	r3, r2
1a001668:	d802      	bhi.n	1a001670 <find_volume+0x2d0>
1a00166a:	2301      	movs	r3, #1
1a00166c:	f887 3057 	strb.w	r3, [r7, #87]	; 0x57
1a001670:	f897 3057 	ldrb.w	r3, [r7, #87]	; 0x57
1a001674:	2b00      	cmp	r3, #0
1a001676:	d105      	bne.n	1a001684 <find_volume+0x2e4>
1a001678:	230d      	movs	r3, #13
1a00167a:	e070      	b.n	1a00175e <find_volume+0x3be>
1a00167c:	10000428 	.word	0x10000428
1a001680:	0ffffff5 	.word	0x0ffffff5
1a001684:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001686:	1c9a      	adds	r2, r3, #2
1a001688:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00168a:	60da      	str	r2, [r3, #12]
1a00168c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00168e:	6d3a      	ldr	r2, [r7, #80]	; 0x50
1a001690:	615a      	str	r2, [r3, #20]
1a001692:	8dfa      	ldrh	r2, [r7, #46]	; 0x2e
1a001694:	6d3b      	ldr	r3, [r7, #80]	; 0x50
1a001696:	441a      	add	r2, r3
1a001698:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00169a:	619a      	str	r2, [r3, #24]
1a00169c:	6d3a      	ldr	r2, [r7, #80]	; 0x50
1a00169e:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a0016a0:	441a      	add	r2, r3
1a0016a2:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0016a4:	621a      	str	r2, [r3, #32]
1a0016a6:	f897 3057 	ldrb.w	r3, [r7, #87]	; 0x57
1a0016aa:	2b03      	cmp	r3, #3
1a0016ac:	d11e      	bne.n	1a0016ec <find_volume+0x34c>
1a0016ae:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0016b0:	3328      	adds	r3, #40	; 0x28
1a0016b2:	332a      	adds	r3, #42	; 0x2a
1a0016b4:	4618      	mov	r0, r3
1a0016b6:	f7ff f8a9 	bl	1a00080c <ld_word>
1a0016ba:	4603      	mov	r3, r0
1a0016bc:	2b00      	cmp	r3, #0
1a0016be:	d001      	beq.n	1a0016c4 <find_volume+0x324>
1a0016c0:	230d      	movs	r3, #13
1a0016c2:	e04c      	b.n	1a00175e <find_volume+0x3be>
1a0016c4:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0016c6:	891b      	ldrh	r3, [r3, #8]
1a0016c8:	2b00      	cmp	r3, #0
1a0016ca:	d001      	beq.n	1a0016d0 <find_volume+0x330>
1a0016cc:	230d      	movs	r3, #13
1a0016ce:	e046      	b.n	1a00175e <find_volume+0x3be>
1a0016d0:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0016d2:	3328      	adds	r3, #40	; 0x28
1a0016d4:	332c      	adds	r3, #44	; 0x2c
1a0016d6:	4618      	mov	r0, r3
1a0016d8:	f7ff f8b0 	bl	1a00083c <ld_dword>
1a0016dc:	4602      	mov	r2, r0
1a0016de:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0016e0:	61da      	str	r2, [r3, #28]
1a0016e2:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0016e4:	68db      	ldr	r3, [r3, #12]
1a0016e6:	009b      	lsls	r3, r3, #2
1a0016e8:	647b      	str	r3, [r7, #68]	; 0x44
1a0016ea:	e01f      	b.n	1a00172c <find_volume+0x38c>
1a0016ec:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0016ee:	891b      	ldrh	r3, [r3, #8]
1a0016f0:	2b00      	cmp	r3, #0
1a0016f2:	d101      	bne.n	1a0016f8 <find_volume+0x358>
1a0016f4:	230d      	movs	r3, #13
1a0016f6:	e032      	b.n	1a00175e <find_volume+0x3be>
1a0016f8:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a0016fa:	699a      	ldr	r2, [r3, #24]
1a0016fc:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a0016fe:	441a      	add	r2, r3
1a001700:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001702:	61da      	str	r2, [r3, #28]
1a001704:	f897 3057 	ldrb.w	r3, [r7, #87]	; 0x57
1a001708:	2b02      	cmp	r3, #2
1a00170a:	d103      	bne.n	1a001714 <find_volume+0x374>
1a00170c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00170e:	68db      	ldr	r3, [r3, #12]
1a001710:	005b      	lsls	r3, r3, #1
1a001712:	e00a      	b.n	1a00172a <find_volume+0x38a>
1a001714:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001716:	68da      	ldr	r2, [r3, #12]
1a001718:	4613      	mov	r3, r2
1a00171a:	005b      	lsls	r3, r3, #1
1a00171c:	4413      	add	r3, r2
1a00171e:	085a      	lsrs	r2, r3, #1
1a001720:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001722:	68db      	ldr	r3, [r3, #12]
1a001724:	f003 0301 	and.w	r3, r3, #1
1a001728:	4413      	add	r3, r2
1a00172a:	647b      	str	r3, [r7, #68]	; 0x44
1a00172c:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00172e:	691a      	ldr	r2, [r3, #16]
1a001730:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001732:	f203 13ff 	addw	r3, r3, #511	; 0x1ff
1a001736:	0a5b      	lsrs	r3, r3, #9
1a001738:	429a      	cmp	r2, r3
1a00173a:	d201      	bcs.n	1a001740 <find_volume+0x3a0>
1a00173c:	230d      	movs	r3, #13
1a00173e:	e00e      	b.n	1a00175e <find_volume+0x3be>
1a001740:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a001742:	f897 2057 	ldrb.w	r2, [r7, #87]	; 0x57
1a001746:	701a      	strb	r2, [r3, #0]
1a001748:	4b07      	ldr	r3, [pc, #28]	; (1a001768 <find_volume+0x3c8>)
1a00174a:	881b      	ldrh	r3, [r3, #0]
1a00174c:	3301      	adds	r3, #1
1a00174e:	b29a      	uxth	r2, r3
1a001750:	4b05      	ldr	r3, [pc, #20]	; (1a001768 <find_volume+0x3c8>)
1a001752:	801a      	strh	r2, [r3, #0]
1a001754:	4b04      	ldr	r3, [pc, #16]	; (1a001768 <find_volume+0x3c8>)
1a001756:	881a      	ldrh	r2, [r3, #0]
1a001758:	6bbb      	ldr	r3, [r7, #56]	; 0x38
1a00175a:	80da      	strh	r2, [r3, #6]
1a00175c:	2300      	movs	r3, #0
1a00175e:	4618      	mov	r0, r3
1a001760:	3758      	adds	r7, #88	; 0x58
1a001762:	46bd      	mov	sp, r7
1a001764:	bd80      	pop	{r7, pc}
1a001766:	bf00      	nop
1a001768:	1000042c 	.word	0x1000042c

1a00176c <validate>:
1a00176c:	b580      	push	{r7, lr}
1a00176e:	b084      	sub	sp, #16
1a001770:	af00      	add	r7, sp, #0
1a001772:	6078      	str	r0, [r7, #4]
1a001774:	6039      	str	r1, [r7, #0]
1a001776:	2309      	movs	r3, #9
1a001778:	73fb      	strb	r3, [r7, #15]
1a00177a:	687b      	ldr	r3, [r7, #4]
1a00177c:	2b00      	cmp	r3, #0
1a00177e:	d01c      	beq.n	1a0017ba <validate+0x4e>
1a001780:	687b      	ldr	r3, [r7, #4]
1a001782:	681b      	ldr	r3, [r3, #0]
1a001784:	2b00      	cmp	r3, #0
1a001786:	d018      	beq.n	1a0017ba <validate+0x4e>
1a001788:	687b      	ldr	r3, [r7, #4]
1a00178a:	681b      	ldr	r3, [r3, #0]
1a00178c:	781b      	ldrb	r3, [r3, #0]
1a00178e:	2b00      	cmp	r3, #0
1a001790:	d013      	beq.n	1a0017ba <validate+0x4e>
1a001792:	687b      	ldr	r3, [r7, #4]
1a001794:	889a      	ldrh	r2, [r3, #4]
1a001796:	687b      	ldr	r3, [r7, #4]
1a001798:	681b      	ldr	r3, [r3, #0]
1a00179a:	88db      	ldrh	r3, [r3, #6]
1a00179c:	429a      	cmp	r2, r3
1a00179e:	d10c      	bne.n	1a0017ba <validate+0x4e>
1a0017a0:	687b      	ldr	r3, [r7, #4]
1a0017a2:	681b      	ldr	r3, [r3, #0]
1a0017a4:	785b      	ldrb	r3, [r3, #1]
1a0017a6:	4618      	mov	r0, r3
1a0017a8:	f000 fc94 	bl	1a0020d4 <disk_status>
1a0017ac:	4603      	mov	r3, r0
1a0017ae:	f003 0301 	and.w	r3, r3, #1
1a0017b2:	2b00      	cmp	r3, #0
1a0017b4:	d101      	bne.n	1a0017ba <validate+0x4e>
1a0017b6:	2300      	movs	r3, #0
1a0017b8:	73fb      	strb	r3, [r7, #15]
1a0017ba:	7bfb      	ldrb	r3, [r7, #15]
1a0017bc:	2b00      	cmp	r3, #0
1a0017be:	d102      	bne.n	1a0017c6 <validate+0x5a>
1a0017c0:	687b      	ldr	r3, [r7, #4]
1a0017c2:	681b      	ldr	r3, [r3, #0]
1a0017c4:	e000      	b.n	1a0017c8 <validate+0x5c>
1a0017c6:	2300      	movs	r3, #0
1a0017c8:	683a      	ldr	r2, [r7, #0]
1a0017ca:	6013      	str	r3, [r2, #0]
1a0017cc:	7bfb      	ldrb	r3, [r7, #15]
1a0017ce:	4618      	mov	r0, r3
1a0017d0:	3710      	adds	r7, #16
1a0017d2:	46bd      	mov	sp, r7
1a0017d4:	bd80      	pop	{r7, pc}
1a0017d6:	Address 0x000000001a0017d6 is out of bounds.


1a0017d8 <f_mount>:
1a0017d8:	b580      	push	{r7, lr}
1a0017da:	b088      	sub	sp, #32
1a0017dc:	af00      	add	r7, sp, #0
1a0017de:	60f8      	str	r0, [r7, #12]
1a0017e0:	60b9      	str	r1, [r7, #8]
1a0017e2:	4613      	mov	r3, r2
1a0017e4:	71fb      	strb	r3, [r7, #7]
1a0017e6:	68bb      	ldr	r3, [r7, #8]
1a0017e8:	613b      	str	r3, [r7, #16]
1a0017ea:	f107 0310 	add.w	r3, r7, #16
1a0017ee:	4618      	mov	r0, r3
1a0017f0:	f7ff fd3b 	bl	1a00126a <get_ldnumber>
1a0017f4:	61f8      	str	r0, [r7, #28]
1a0017f6:	69fb      	ldr	r3, [r7, #28]
1a0017f8:	2b00      	cmp	r3, #0
1a0017fa:	da01      	bge.n	1a001800 <f_mount+0x28>
1a0017fc:	230b      	movs	r3, #11
1a0017fe:	e025      	b.n	1a00184c <f_mount+0x74>
1a001800:	4a14      	ldr	r2, [pc, #80]	; (1a001854 <f_mount+0x7c>)
1a001802:	69fb      	ldr	r3, [r7, #28]
1a001804:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001808:	61bb      	str	r3, [r7, #24]
1a00180a:	69bb      	ldr	r3, [r7, #24]
1a00180c:	2b00      	cmp	r3, #0
1a00180e:	d002      	beq.n	1a001816 <f_mount+0x3e>
1a001810:	69bb      	ldr	r3, [r7, #24]
1a001812:	2200      	movs	r2, #0
1a001814:	701a      	strb	r2, [r3, #0]
1a001816:	68fb      	ldr	r3, [r7, #12]
1a001818:	2b00      	cmp	r3, #0
1a00181a:	d002      	beq.n	1a001822 <f_mount+0x4a>
1a00181c:	68fb      	ldr	r3, [r7, #12]
1a00181e:	2200      	movs	r2, #0
1a001820:	701a      	strb	r2, [r3, #0]
1a001822:	68fa      	ldr	r2, [r7, #12]
1a001824:	490b      	ldr	r1, [pc, #44]	; (1a001854 <f_mount+0x7c>)
1a001826:	69fb      	ldr	r3, [r7, #28]
1a001828:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a00182c:	79fb      	ldrb	r3, [r7, #7]
1a00182e:	2b00      	cmp	r3, #0
1a001830:	d101      	bne.n	1a001836 <f_mount+0x5e>
1a001832:	2300      	movs	r3, #0
1a001834:	e00a      	b.n	1a00184c <f_mount+0x74>
1a001836:	f107 010c 	add.w	r1, r7, #12
1a00183a:	f107 0308 	add.w	r3, r7, #8
1a00183e:	2200      	movs	r2, #0
1a001840:	4618      	mov	r0, r3
1a001842:	f7ff fdad 	bl	1a0013a0 <find_volume>
1a001846:	4603      	mov	r3, r0
1a001848:	75fb      	strb	r3, [r7, #23]
1a00184a:	7dfb      	ldrb	r3, [r7, #23]
1a00184c:	4618      	mov	r0, r3
1a00184e:	3720      	adds	r7, #32
1a001850:	46bd      	mov	sp, r7
1a001852:	bd80      	pop	{r7, pc}
1a001854:	10000428 	.word	0x10000428

1a001858 <f_open>:
1a001858:	b580      	push	{r7, lr}
1a00185a:	b092      	sub	sp, #72	; 0x48
1a00185c:	af00      	add	r7, sp, #0
1a00185e:	60f8      	str	r0, [r7, #12]
1a001860:	60b9      	str	r1, [r7, #8]
1a001862:	4613      	mov	r3, r2
1a001864:	71fb      	strb	r3, [r7, #7]
1a001866:	68fb      	ldr	r3, [r7, #12]
1a001868:	2b00      	cmp	r3, #0
1a00186a:	d101      	bne.n	1a001870 <f_open+0x18>
1a00186c:	2309      	movs	r3, #9
1a00186e:	e064      	b.n	1a00193a <f_open+0xe2>
1a001870:	79fb      	ldrb	r3, [r7, #7]
1a001872:	f003 0301 	and.w	r3, r3, #1
1a001876:	71fb      	strb	r3, [r7, #7]
1a001878:	79fa      	ldrb	r2, [r7, #7]
1a00187a:	f107 0114 	add.w	r1, r7, #20
1a00187e:	f107 0308 	add.w	r3, r7, #8
1a001882:	4618      	mov	r0, r3
1a001884:	f7ff fd8c 	bl	1a0013a0 <find_volume>
1a001888:	4603      	mov	r3, r0
1a00188a:	f887 3047 	strb.w	r3, [r7, #71]	; 0x47
1a00188e:	f897 3047 	ldrb.w	r3, [r7, #71]	; 0x47
1a001892:	2b00      	cmp	r3, #0
1a001894:	d148      	bne.n	1a001928 <f_open+0xd0>
1a001896:	697b      	ldr	r3, [r7, #20]
1a001898:	61bb      	str	r3, [r7, #24]
1a00189a:	68ba      	ldr	r2, [r7, #8]
1a00189c:	f107 0318 	add.w	r3, r7, #24
1a0018a0:	4611      	mov	r1, r2
1a0018a2:	4618      	mov	r0, r3
1a0018a4:	f7ff fc72 	bl	1a00118c <follow_path>
1a0018a8:	4603      	mov	r3, r0
1a0018aa:	f887 3047 	strb.w	r3, [r7, #71]	; 0x47
1a0018ae:	f897 3047 	ldrb.w	r3, [r7, #71]	; 0x47
1a0018b2:	2b00      	cmp	r3, #0
1a0018b4:	d110      	bne.n	1a0018d8 <f_open+0x80>
1a0018b6:	f897 3043 	ldrb.w	r3, [r7, #67]	; 0x43
1a0018ba:	b25b      	sxtb	r3, r3
1a0018bc:	2b00      	cmp	r3, #0
1a0018be:	da03      	bge.n	1a0018c8 <f_open+0x70>
1a0018c0:	2306      	movs	r3, #6
1a0018c2:	f887 3047 	strb.w	r3, [r7, #71]	; 0x47
1a0018c6:	e007      	b.n	1a0018d8 <f_open+0x80>
1a0018c8:	7fbb      	ldrb	r3, [r7, #30]
1a0018ca:	f003 0310 	and.w	r3, r3, #16
1a0018ce:	2b00      	cmp	r3, #0
1a0018d0:	d002      	beq.n	1a0018d8 <f_open+0x80>
1a0018d2:	2304      	movs	r3, #4
1a0018d4:	f887 3047 	strb.w	r3, [r7, #71]	; 0x47
1a0018d8:	f897 3047 	ldrb.w	r3, [r7, #71]	; 0x47
1a0018dc:	2b00      	cmp	r3, #0
1a0018de:	d123      	bne.n	1a001928 <f_open+0xd0>
1a0018e0:	697b      	ldr	r3, [r7, #20]
1a0018e2:	6b7a      	ldr	r2, [r7, #52]	; 0x34
1a0018e4:	4611      	mov	r1, r2
1a0018e6:	4618      	mov	r0, r3
1a0018e8:	f7ff fa49 	bl	1a000d7e <ld_clust>
1a0018ec:	4602      	mov	r2, r0
1a0018ee:	68fb      	ldr	r3, [r7, #12]
1a0018f0:	609a      	str	r2, [r3, #8]
1a0018f2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0018f4:	331c      	adds	r3, #28
1a0018f6:	4618      	mov	r0, r3
1a0018f8:	f7fe ffa0 	bl	1a00083c <ld_dword>
1a0018fc:	4602      	mov	r2, r0
1a0018fe:	68fb      	ldr	r3, [r7, #12]
1a001900:	60da      	str	r2, [r3, #12]
1a001902:	697a      	ldr	r2, [r7, #20]
1a001904:	68fb      	ldr	r3, [r7, #12]
1a001906:	601a      	str	r2, [r3, #0]
1a001908:	697b      	ldr	r3, [r7, #20]
1a00190a:	88da      	ldrh	r2, [r3, #6]
1a00190c:	68fb      	ldr	r3, [r7, #12]
1a00190e:	809a      	strh	r2, [r3, #4]
1a001910:	68fb      	ldr	r3, [r7, #12]
1a001912:	79fa      	ldrb	r2, [r7, #7]
1a001914:	741a      	strb	r2, [r3, #16]
1a001916:	68fb      	ldr	r3, [r7, #12]
1a001918:	2200      	movs	r2, #0
1a00191a:	745a      	strb	r2, [r3, #17]
1a00191c:	68fb      	ldr	r3, [r7, #12]
1a00191e:	2200      	movs	r2, #0
1a001920:	61da      	str	r2, [r3, #28]
1a001922:	68fb      	ldr	r3, [r7, #12]
1a001924:	2200      	movs	r2, #0
1a001926:	615a      	str	r2, [r3, #20]
1a001928:	f897 3047 	ldrb.w	r3, [r7, #71]	; 0x47
1a00192c:	2b00      	cmp	r3, #0
1a00192e:	d002      	beq.n	1a001936 <f_open+0xde>
1a001930:	68fb      	ldr	r3, [r7, #12]
1a001932:	2200      	movs	r2, #0
1a001934:	601a      	str	r2, [r3, #0]
1a001936:	f897 3047 	ldrb.w	r3, [r7, #71]	; 0x47
1a00193a:	4618      	mov	r0, r3
1a00193c:	3748      	adds	r7, #72	; 0x48
1a00193e:	46bd      	mov	sp, r7
1a001940:	bd80      	pop	{r7, pc}

1a001942 <f_read>:
1a001942:	b580      	push	{r7, lr}
1a001944:	b08e      	sub	sp, #56	; 0x38
1a001946:	af00      	add	r7, sp, #0
1a001948:	60f8      	str	r0, [r7, #12]
1a00194a:	60b9      	str	r1, [r7, #8]
1a00194c:	607a      	str	r2, [r7, #4]
1a00194e:	603b      	str	r3, [r7, #0]
1a001950:	68bb      	ldr	r3, [r7, #8]
1a001952:	627b      	str	r3, [r7, #36]	; 0x24
1a001954:	683b      	ldr	r3, [r7, #0]
1a001956:	2200      	movs	r2, #0
1a001958:	601a      	str	r2, [r3, #0]
1a00195a:	68fb      	ldr	r3, [r7, #12]
1a00195c:	f107 0214 	add.w	r2, r7, #20
1a001960:	4611      	mov	r1, r2
1a001962:	4618      	mov	r0, r3
1a001964:	f7ff ff02 	bl	1a00176c <validate>
1a001968:	4603      	mov	r3, r0
1a00196a:	f887 3037 	strb.w	r3, [r7, #55]	; 0x37
1a00196e:	f897 3037 	ldrb.w	r3, [r7, #55]	; 0x37
1a001972:	2b00      	cmp	r3, #0
1a001974:	d107      	bne.n	1a001986 <f_read+0x44>
1a001976:	68fb      	ldr	r3, [r7, #12]
1a001978:	7c5b      	ldrb	r3, [r3, #17]
1a00197a:	f887 3037 	strb.w	r3, [r7, #55]	; 0x37
1a00197e:	f897 3037 	ldrb.w	r3, [r7, #55]	; 0x37
1a001982:	2b00      	cmp	r3, #0
1a001984:	d002      	beq.n	1a00198c <f_read+0x4a>
1a001986:	f897 3037 	ldrb.w	r3, [r7, #55]	; 0x37
1a00198a:	e0d1      	b.n	1a001b30 <f_read+0x1ee>
1a00198c:	68fb      	ldr	r3, [r7, #12]
1a00198e:	7c1b      	ldrb	r3, [r3, #16]
1a001990:	f003 0301 	and.w	r3, r3, #1
1a001994:	2b00      	cmp	r3, #0
1a001996:	d101      	bne.n	1a00199c <f_read+0x5a>
1a001998:	2307      	movs	r3, #7
1a00199a:	e0c9      	b.n	1a001b30 <f_read+0x1ee>
1a00199c:	68fb      	ldr	r3, [r7, #12]
1a00199e:	68da      	ldr	r2, [r3, #12]
1a0019a0:	68fb      	ldr	r3, [r7, #12]
1a0019a2:	695b      	ldr	r3, [r3, #20]
1a0019a4:	1ad3      	subs	r3, r2, r3
1a0019a6:	623b      	str	r3, [r7, #32]
1a0019a8:	687a      	ldr	r2, [r7, #4]
1a0019aa:	6a3b      	ldr	r3, [r7, #32]
1a0019ac:	429a      	cmp	r2, r3
1a0019ae:	f240 80ba 	bls.w	1a001b26 <f_read+0x1e4>
1a0019b2:	6a3b      	ldr	r3, [r7, #32]
1a0019b4:	607b      	str	r3, [r7, #4]
1a0019b6:	e0b6      	b.n	1a001b26 <f_read+0x1e4>
1a0019b8:	68fb      	ldr	r3, [r7, #12]
1a0019ba:	695b      	ldr	r3, [r3, #20]
1a0019bc:	f3c3 0308 	ubfx	r3, r3, #0, #9
1a0019c0:	2b00      	cmp	r3, #0
1a0019c2:	f040 8082 	bne.w	1a001aca <f_read+0x188>
1a0019c6:	68fb      	ldr	r3, [r7, #12]
1a0019c8:	695b      	ldr	r3, [r3, #20]
1a0019ca:	0a5b      	lsrs	r3, r3, #9
1a0019cc:	697a      	ldr	r2, [r7, #20]
1a0019ce:	8952      	ldrh	r2, [r2, #10]
1a0019d0:	3a01      	subs	r2, #1
1a0019d2:	4013      	ands	r3, r2
1a0019d4:	61fb      	str	r3, [r7, #28]
1a0019d6:	69fb      	ldr	r3, [r7, #28]
1a0019d8:	2b00      	cmp	r3, #0
1a0019da:	d123      	bne.n	1a001a24 <f_read+0xe2>
1a0019dc:	68fb      	ldr	r3, [r7, #12]
1a0019de:	695b      	ldr	r3, [r3, #20]
1a0019e0:	2b00      	cmp	r3, #0
1a0019e2:	d103      	bne.n	1a0019ec <f_read+0xaa>
1a0019e4:	68fb      	ldr	r3, [r7, #12]
1a0019e6:	689b      	ldr	r3, [r3, #8]
1a0019e8:	633b      	str	r3, [r7, #48]	; 0x30
1a0019ea:	e007      	b.n	1a0019fc <f_read+0xba>
1a0019ec:	68fa      	ldr	r2, [r7, #12]
1a0019ee:	68fb      	ldr	r3, [r7, #12]
1a0019f0:	699b      	ldr	r3, [r3, #24]
1a0019f2:	4619      	mov	r1, r3
1a0019f4:	4610      	mov	r0, r2
1a0019f6:	f7ff f82a 	bl	1a000a4e <get_fat>
1a0019fa:	6338      	str	r0, [r7, #48]	; 0x30
1a0019fc:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a0019fe:	2b01      	cmp	r3, #1
1a001a00:	d804      	bhi.n	1a001a0c <f_read+0xca>
1a001a02:	68fb      	ldr	r3, [r7, #12]
1a001a04:	2202      	movs	r2, #2
1a001a06:	745a      	strb	r2, [r3, #17]
1a001a08:	2302      	movs	r3, #2
1a001a0a:	e091      	b.n	1a001b30 <f_read+0x1ee>
1a001a0c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a001a0e:	f1b3 3fff 	cmp.w	r3, #4294967295	; 0xffffffff
1a001a12:	d104      	bne.n	1a001a1e <f_read+0xdc>
1a001a14:	68fb      	ldr	r3, [r7, #12]
1a001a16:	2201      	movs	r2, #1
1a001a18:	745a      	strb	r2, [r3, #17]
1a001a1a:	2301      	movs	r3, #1
1a001a1c:	e088      	b.n	1a001b30 <f_read+0x1ee>
1a001a1e:	68fb      	ldr	r3, [r7, #12]
1a001a20:	6b3a      	ldr	r2, [r7, #48]	; 0x30
1a001a22:	619a      	str	r2, [r3, #24]
1a001a24:	697a      	ldr	r2, [r7, #20]
1a001a26:	68fb      	ldr	r3, [r7, #12]
1a001a28:	699b      	ldr	r3, [r3, #24]
1a001a2a:	4619      	mov	r1, r3
1a001a2c:	4610      	mov	r0, r2
1a001a2e:	f7fe ffef 	bl	1a000a10 <clst2sect>
1a001a32:	61b8      	str	r0, [r7, #24]
1a001a34:	69bb      	ldr	r3, [r7, #24]
1a001a36:	2b00      	cmp	r3, #0
1a001a38:	d104      	bne.n	1a001a44 <f_read+0x102>
1a001a3a:	68fb      	ldr	r3, [r7, #12]
1a001a3c:	2202      	movs	r2, #2
1a001a3e:	745a      	strb	r2, [r3, #17]
1a001a40:	2302      	movs	r3, #2
1a001a42:	e075      	b.n	1a001b30 <f_read+0x1ee>
1a001a44:	69ba      	ldr	r2, [r7, #24]
1a001a46:	69fb      	ldr	r3, [r7, #28]
1a001a48:	4413      	add	r3, r2
1a001a4a:	61bb      	str	r3, [r7, #24]
1a001a4c:	687b      	ldr	r3, [r7, #4]
1a001a4e:	0a5b      	lsrs	r3, r3, #9
1a001a50:	62bb      	str	r3, [r7, #40]	; 0x28
1a001a52:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001a54:	2b00      	cmp	r3, #0
1a001a56:	d01f      	beq.n	1a001a98 <f_read+0x156>
1a001a58:	69fa      	ldr	r2, [r7, #28]
1a001a5a:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001a5c:	4413      	add	r3, r2
1a001a5e:	697a      	ldr	r2, [r7, #20]
1a001a60:	8952      	ldrh	r2, [r2, #10]
1a001a62:	4293      	cmp	r3, r2
1a001a64:	d905      	bls.n	1a001a72 <f_read+0x130>
1a001a66:	697b      	ldr	r3, [r7, #20]
1a001a68:	895b      	ldrh	r3, [r3, #10]
1a001a6a:	461a      	mov	r2, r3
1a001a6c:	69fb      	ldr	r3, [r7, #28]
1a001a6e:	1ad3      	subs	r3, r2, r3
1a001a70:	62bb      	str	r3, [r7, #40]	; 0x28
1a001a72:	697b      	ldr	r3, [r7, #20]
1a001a74:	7858      	ldrb	r0, [r3, #1]
1a001a76:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001a78:	69ba      	ldr	r2, [r7, #24]
1a001a7a:	6a79      	ldr	r1, [r7, #36]	; 0x24
1a001a7c:	f000 fb42 	bl	1a002104 <disk_read>
1a001a80:	4603      	mov	r3, r0
1a001a82:	2b00      	cmp	r3, #0
1a001a84:	d004      	beq.n	1a001a90 <f_read+0x14e>
1a001a86:	68fb      	ldr	r3, [r7, #12]
1a001a88:	2201      	movs	r2, #1
1a001a8a:	745a      	strb	r2, [r3, #17]
1a001a8c:	2301      	movs	r3, #1
1a001a8e:	e04f      	b.n	1a001b30 <f_read+0x1ee>
1a001a90:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001a92:	025b      	lsls	r3, r3, #9
1a001a94:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001a96:	e032      	b.n	1a001afe <f_read+0x1bc>
1a001a98:	68fb      	ldr	r3, [r7, #12]
1a001a9a:	69db      	ldr	r3, [r3, #28]
1a001a9c:	69ba      	ldr	r2, [r7, #24]
1a001a9e:	429a      	cmp	r2, r3
1a001aa0:	d010      	beq.n	1a001ac4 <f_read+0x182>
1a001aa2:	697b      	ldr	r3, [r7, #20]
1a001aa4:	7858      	ldrb	r0, [r3, #1]
1a001aa6:	68fb      	ldr	r3, [r7, #12]
1a001aa8:	f103 0120 	add.w	r1, r3, #32
1a001aac:	2301      	movs	r3, #1
1a001aae:	69ba      	ldr	r2, [r7, #24]
1a001ab0:	f000 fb28 	bl	1a002104 <disk_read>
1a001ab4:	4603      	mov	r3, r0
1a001ab6:	2b00      	cmp	r3, #0
1a001ab8:	d004      	beq.n	1a001ac4 <f_read+0x182>
1a001aba:	68fb      	ldr	r3, [r7, #12]
1a001abc:	2201      	movs	r2, #1
1a001abe:	745a      	strb	r2, [r3, #17]
1a001ac0:	2301      	movs	r3, #1
1a001ac2:	e035      	b.n	1a001b30 <f_read+0x1ee>
1a001ac4:	68fb      	ldr	r3, [r7, #12]
1a001ac6:	69ba      	ldr	r2, [r7, #24]
1a001ac8:	61da      	str	r2, [r3, #28]
1a001aca:	68fb      	ldr	r3, [r7, #12]
1a001acc:	695b      	ldr	r3, [r3, #20]
1a001ace:	f3c3 0308 	ubfx	r3, r3, #0, #9
1a001ad2:	f5c3 7300 	rsb	r3, r3, #512	; 0x200
1a001ad6:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001ad8:	6afa      	ldr	r2, [r7, #44]	; 0x2c
1a001ada:	687b      	ldr	r3, [r7, #4]
1a001adc:	429a      	cmp	r2, r3
1a001ade:	d901      	bls.n	1a001ae4 <f_read+0x1a2>
1a001ae0:	687b      	ldr	r3, [r7, #4]
1a001ae2:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001ae4:	68fb      	ldr	r3, [r7, #12]
1a001ae6:	f103 0220 	add.w	r2, r3, #32
1a001aea:	68fb      	ldr	r3, [r7, #12]
1a001aec:	695b      	ldr	r3, [r3, #20]
1a001aee:	f3c3 0308 	ubfx	r3, r3, #0, #9
1a001af2:	4413      	add	r3, r2
1a001af4:	6afa      	ldr	r2, [r7, #44]	; 0x2c
1a001af6:	4619      	mov	r1, r3
1a001af8:	6a78      	ldr	r0, [r7, #36]	; 0x24
1a001afa:	f7fe fec2 	bl	1a000882 <mem_cpy>
1a001afe:	687a      	ldr	r2, [r7, #4]
1a001b00:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b02:	1ad3      	subs	r3, r2, r3
1a001b04:	607b      	str	r3, [r7, #4]
1a001b06:	683b      	ldr	r3, [r7, #0]
1a001b08:	681a      	ldr	r2, [r3, #0]
1a001b0a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b0c:	441a      	add	r2, r3
1a001b0e:	683b      	ldr	r3, [r7, #0]
1a001b10:	601a      	str	r2, [r3, #0]
1a001b12:	6a7a      	ldr	r2, [r7, #36]	; 0x24
1a001b14:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b16:	4413      	add	r3, r2
1a001b18:	627b      	str	r3, [r7, #36]	; 0x24
1a001b1a:	68fb      	ldr	r3, [r7, #12]
1a001b1c:	695a      	ldr	r2, [r3, #20]
1a001b1e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b20:	441a      	add	r2, r3
1a001b22:	68fb      	ldr	r3, [r7, #12]
1a001b24:	615a      	str	r2, [r3, #20]
1a001b26:	687b      	ldr	r3, [r7, #4]
1a001b28:	2b00      	cmp	r3, #0
1a001b2a:	f47f af45 	bne.w	1a0019b8 <f_read+0x76>
1a001b2e:	2300      	movs	r3, #0
1a001b30:	4618      	mov	r0, r3
1a001b32:	3738      	adds	r7, #56	; 0x38
1a001b34:	46bd      	mov	sp, r7
1a001b36:	bd80      	pop	{r7, pc}

1a001b38 <f_close>:
1a001b38:	b580      	push	{r7, lr}
1a001b3a:	b084      	sub	sp, #16
1a001b3c:	af00      	add	r7, sp, #0
1a001b3e:	6078      	str	r0, [r7, #4]
1a001b40:	687b      	ldr	r3, [r7, #4]
1a001b42:	f107 0208 	add.w	r2, r7, #8
1a001b46:	4611      	mov	r1, r2
1a001b48:	4618      	mov	r0, r3
1a001b4a:	f7ff fe0f 	bl	1a00176c <validate>
1a001b4e:	4603      	mov	r3, r0
1a001b50:	73fb      	strb	r3, [r7, #15]
1a001b52:	7bfb      	ldrb	r3, [r7, #15]
1a001b54:	2b00      	cmp	r3, #0
1a001b56:	d102      	bne.n	1a001b5e <f_close+0x26>
1a001b58:	687b      	ldr	r3, [r7, #4]
1a001b5a:	2200      	movs	r2, #0
1a001b5c:	601a      	str	r2, [r3, #0]
1a001b5e:	7bfb      	ldrb	r3, [r7, #15]
1a001b60:	4618      	mov	r0, r3
1a001b62:	3710      	adds	r7, #16
1a001b64:	46bd      	mov	sp, r7
1a001b66:	bd80      	pop	{r7, pc}

1a001b68 <f_opendir>:
1a001b68:	b580      	push	{r7, lr}
1a001b6a:	b084      	sub	sp, #16
1a001b6c:	af00      	add	r7, sp, #0
1a001b6e:	6078      	str	r0, [r7, #4]
1a001b70:	6039      	str	r1, [r7, #0]
1a001b72:	687b      	ldr	r3, [r7, #4]
1a001b74:	2b00      	cmp	r3, #0
1a001b76:	d101      	bne.n	1a001b7c <f_opendir+0x14>
1a001b78:	2309      	movs	r3, #9
1a001b7a:	e04a      	b.n	1a001c12 <f_opendir+0xaa>
1a001b7c:	f107 0108 	add.w	r1, r7, #8
1a001b80:	463b      	mov	r3, r7
1a001b82:	2200      	movs	r2, #0
1a001b84:	4618      	mov	r0, r3
1a001b86:	f7ff fc0b 	bl	1a0013a0 <find_volume>
1a001b8a:	4603      	mov	r3, r0
1a001b8c:	73fb      	strb	r3, [r7, #15]
1a001b8e:	7bfb      	ldrb	r3, [r7, #15]
1a001b90:	2b00      	cmp	r3, #0
1a001b92:	d137      	bne.n	1a001c04 <f_opendir+0x9c>
1a001b94:	68ba      	ldr	r2, [r7, #8]
1a001b96:	687b      	ldr	r3, [r7, #4]
1a001b98:	601a      	str	r2, [r3, #0]
1a001b9a:	683b      	ldr	r3, [r7, #0]
1a001b9c:	4619      	mov	r1, r3
1a001b9e:	6878      	ldr	r0, [r7, #4]
1a001ba0:	f7ff faf4 	bl	1a00118c <follow_path>
1a001ba4:	4603      	mov	r3, r0
1a001ba6:	73fb      	strb	r3, [r7, #15]
1a001ba8:	7bfb      	ldrb	r3, [r7, #15]
1a001baa:	2b00      	cmp	r3, #0
1a001bac:	d125      	bne.n	1a001bfa <f_opendir+0x92>
1a001bae:	687b      	ldr	r3, [r7, #4]
1a001bb0:	f893 302b 	ldrb.w	r3, [r3, #43]	; 0x2b
1a001bb4:	b25b      	sxtb	r3, r3
1a001bb6:	2b00      	cmp	r3, #0
1a001bb8:	db12      	blt.n	1a001be0 <f_opendir+0x78>
1a001bba:	687b      	ldr	r3, [r7, #4]
1a001bbc:	799b      	ldrb	r3, [r3, #6]
1a001bbe:	f003 0310 	and.w	r3, r3, #16
1a001bc2:	2b00      	cmp	r3, #0
1a001bc4:	d00a      	beq.n	1a001bdc <f_opendir+0x74>
1a001bc6:	68ba      	ldr	r2, [r7, #8]
1a001bc8:	687b      	ldr	r3, [r7, #4]
1a001bca:	69db      	ldr	r3, [r3, #28]
1a001bcc:	4619      	mov	r1, r3
1a001bce:	4610      	mov	r0, r2
1a001bd0:	f7ff f8d5 	bl	1a000d7e <ld_clust>
1a001bd4:	4602      	mov	r2, r0
1a001bd6:	687b      	ldr	r3, [r7, #4]
1a001bd8:	609a      	str	r2, [r3, #8]
1a001bda:	e001      	b.n	1a001be0 <f_opendir+0x78>
1a001bdc:	2305      	movs	r3, #5
1a001bde:	73fb      	strb	r3, [r7, #15]
1a001be0:	7bfb      	ldrb	r3, [r7, #15]
1a001be2:	2b00      	cmp	r3, #0
1a001be4:	d109      	bne.n	1a001bfa <f_opendir+0x92>
1a001be6:	68bb      	ldr	r3, [r7, #8]
1a001be8:	88da      	ldrh	r2, [r3, #6]
1a001bea:	687b      	ldr	r3, [r7, #4]
1a001bec:	809a      	strh	r2, [r3, #4]
1a001bee:	2100      	movs	r1, #0
1a001bf0:	6878      	ldr	r0, [r7, #4]
1a001bf2:	f7fe ffd1 	bl	1a000b98 <dir_sdi>
1a001bf6:	4603      	mov	r3, r0
1a001bf8:	73fb      	strb	r3, [r7, #15]
1a001bfa:	7bfb      	ldrb	r3, [r7, #15]
1a001bfc:	2b04      	cmp	r3, #4
1a001bfe:	d101      	bne.n	1a001c04 <f_opendir+0x9c>
1a001c00:	2305      	movs	r3, #5
1a001c02:	73fb      	strb	r3, [r7, #15]
1a001c04:	7bfb      	ldrb	r3, [r7, #15]
1a001c06:	2b00      	cmp	r3, #0
1a001c08:	d002      	beq.n	1a001c10 <f_opendir+0xa8>
1a001c0a:	687b      	ldr	r3, [r7, #4]
1a001c0c:	2200      	movs	r2, #0
1a001c0e:	601a      	str	r2, [r3, #0]
1a001c10:	7bfb      	ldrb	r3, [r7, #15]
1a001c12:	4618      	mov	r0, r3
1a001c14:	3710      	adds	r7, #16
1a001c16:	46bd      	mov	sp, r7
1a001c18:	bd80      	pop	{r7, pc}

1a001c1a <f_closedir>:
1a001c1a:	b580      	push	{r7, lr}
1a001c1c:	b084      	sub	sp, #16
1a001c1e:	af00      	add	r7, sp, #0
1a001c20:	6078      	str	r0, [r7, #4]
1a001c22:	687b      	ldr	r3, [r7, #4]
1a001c24:	f107 0208 	add.w	r2, r7, #8
1a001c28:	4611      	mov	r1, r2
1a001c2a:	4618      	mov	r0, r3
1a001c2c:	f7ff fd9e 	bl	1a00176c <validate>
1a001c30:	4603      	mov	r3, r0
1a001c32:	73fb      	strb	r3, [r7, #15]
1a001c34:	7bfb      	ldrb	r3, [r7, #15]
1a001c36:	2b00      	cmp	r3, #0
1a001c38:	d102      	bne.n	1a001c40 <f_closedir+0x26>
1a001c3a:	687b      	ldr	r3, [r7, #4]
1a001c3c:	2200      	movs	r2, #0
1a001c3e:	601a      	str	r2, [r3, #0]
1a001c40:	7bfb      	ldrb	r3, [r7, #15]
1a001c42:	4618      	mov	r0, r3
1a001c44:	3710      	adds	r7, #16
1a001c46:	46bd      	mov	sp, r7
1a001c48:	bd80      	pop	{r7, pc}

1a001c4a <f_readdir>:
1a001c4a:	b580      	push	{r7, lr}
1a001c4c:	b084      	sub	sp, #16
1a001c4e:	af00      	add	r7, sp, #0
1a001c50:	6078      	str	r0, [r7, #4]
1a001c52:	6039      	str	r1, [r7, #0]
1a001c54:	687b      	ldr	r3, [r7, #4]
1a001c56:	f107 0208 	add.w	r2, r7, #8
1a001c5a:	4611      	mov	r1, r2
1a001c5c:	4618      	mov	r0, r3
1a001c5e:	f7ff fd85 	bl	1a00176c <validate>
1a001c62:	4603      	mov	r3, r0
1a001c64:	73fb      	strb	r3, [r7, #15]
1a001c66:	7bfb      	ldrb	r3, [r7, #15]
1a001c68:	2b00      	cmp	r3, #0
1a001c6a:	d126      	bne.n	1a001cba <f_readdir+0x70>
1a001c6c:	683b      	ldr	r3, [r7, #0]
1a001c6e:	2b00      	cmp	r3, #0
1a001c70:	d106      	bne.n	1a001c80 <f_readdir+0x36>
1a001c72:	2100      	movs	r1, #0
1a001c74:	6878      	ldr	r0, [r7, #4]
1a001c76:	f7fe ff8f 	bl	1a000b98 <dir_sdi>
1a001c7a:	4603      	mov	r3, r0
1a001c7c:	73fb      	strb	r3, [r7, #15]
1a001c7e:	e01c      	b.n	1a001cba <f_readdir+0x70>
1a001c80:	2100      	movs	r1, #0
1a001c82:	6878      	ldr	r0, [r7, #4]
1a001c84:	f7ff f89a 	bl	1a000dbc <dir_read>
1a001c88:	4603      	mov	r3, r0
1a001c8a:	73fb      	strb	r3, [r7, #15]
1a001c8c:	7bfb      	ldrb	r3, [r7, #15]
1a001c8e:	2b04      	cmp	r3, #4
1a001c90:	d101      	bne.n	1a001c96 <f_readdir+0x4c>
1a001c92:	2300      	movs	r3, #0
1a001c94:	73fb      	strb	r3, [r7, #15]
1a001c96:	7bfb      	ldrb	r3, [r7, #15]
1a001c98:	2b00      	cmp	r3, #0
1a001c9a:	d10e      	bne.n	1a001cba <f_readdir+0x70>
1a001c9c:	6839      	ldr	r1, [r7, #0]
1a001c9e:	6878      	ldr	r0, [r7, #4]
1a001ca0:	f7ff f93e 	bl	1a000f20 <get_fileinfo>
1a001ca4:	2100      	movs	r1, #0
1a001ca6:	6878      	ldr	r0, [r7, #4]
1a001ca8:	f7fe fff1 	bl	1a000c8e <dir_next>
1a001cac:	4603      	mov	r3, r0
1a001cae:	73fb      	strb	r3, [r7, #15]
1a001cb0:	7bfb      	ldrb	r3, [r7, #15]
1a001cb2:	2b04      	cmp	r3, #4
1a001cb4:	d101      	bne.n	1a001cba <f_readdir+0x70>
1a001cb6:	2300      	movs	r3, #0
1a001cb8:	73fb      	strb	r3, [r7, #15]
1a001cba:	7bfb      	ldrb	r3, [r7, #15]
1a001cbc:	4618      	mov	r0, r3
1a001cbe:	3710      	adds	r7, #16
1a001cc0:	46bd      	mov	sp, r7
1a001cc2:	bd80      	pop	{r7, pc}

1a001cc4 <f_gets>:
1a001cc4:	b580      	push	{r7, lr}
1a001cc6:	b08a      	sub	sp, #40	; 0x28
1a001cc8:	af00      	add	r7, sp, #0
1a001cca:	60f8      	str	r0, [r7, #12]
1a001ccc:	60b9      	str	r1, [r7, #8]
1a001cce:	607a      	str	r2, [r7, #4]
1a001cd0:	2300      	movs	r3, #0
1a001cd2:	627b      	str	r3, [r7, #36]	; 0x24
1a001cd4:	68fb      	ldr	r3, [r7, #12]
1a001cd6:	623b      	str	r3, [r7, #32]
1a001cd8:	68bb      	ldr	r3, [r7, #8]
1a001cda:	3b01      	subs	r3, #1
1a001cdc:	60bb      	str	r3, [r7, #8]
1a001cde:	e018      	b.n	1a001d12 <f_gets+0x4e>
1a001ce0:	f107 0314 	add.w	r3, r7, #20
1a001ce4:	f107 0118 	add.w	r1, r7, #24
1a001ce8:	2201      	movs	r2, #1
1a001cea:	6878      	ldr	r0, [r7, #4]
1a001cec:	f7ff fe29 	bl	1a001942 <f_read>
1a001cf0:	697b      	ldr	r3, [r7, #20]
1a001cf2:	2b01      	cmp	r3, #1
1a001cf4:	d112      	bne.n	1a001d1c <f_gets+0x58>
1a001cf6:	7e3b      	ldrb	r3, [r7, #24]
1a001cf8:	61fb      	str	r3, [r7, #28]
1a001cfa:	6a3b      	ldr	r3, [r7, #32]
1a001cfc:	1c5a      	adds	r2, r3, #1
1a001cfe:	623a      	str	r2, [r7, #32]
1a001d00:	69fa      	ldr	r2, [r7, #28]
1a001d02:	b2d2      	uxtb	r2, r2
1a001d04:	701a      	strb	r2, [r3, #0]
1a001d06:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001d08:	3301      	adds	r3, #1
1a001d0a:	627b      	str	r3, [r7, #36]	; 0x24
1a001d0c:	69fb      	ldr	r3, [r7, #28]
1a001d0e:	2b0a      	cmp	r3, #10
1a001d10:	d006      	beq.n	1a001d20 <f_gets+0x5c>
1a001d12:	6a7a      	ldr	r2, [r7, #36]	; 0x24
1a001d14:	68bb      	ldr	r3, [r7, #8]
1a001d16:	429a      	cmp	r2, r3
1a001d18:	dbe2      	blt.n	1a001ce0 <f_gets+0x1c>
1a001d1a:	e002      	b.n	1a001d22 <f_gets+0x5e>
1a001d1c:	bf00      	nop
1a001d1e:	e000      	b.n	1a001d22 <f_gets+0x5e>
1a001d20:	bf00      	nop
1a001d22:	6a3b      	ldr	r3, [r7, #32]
1a001d24:	2200      	movs	r2, #0
1a001d26:	701a      	strb	r2, [r3, #0]
1a001d28:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001d2a:	2b00      	cmp	r3, #0
1a001d2c:	d001      	beq.n	1a001d32 <f_gets+0x6e>
1a001d2e:	68fb      	ldr	r3, [r7, #12]
1a001d30:	e000      	b.n	1a001d34 <f_gets+0x70>
1a001d32:	2300      	movs	r3, #0
1a001d34:	4618      	mov	r0, r3
1a001d36:	3728      	adds	r7, #40	; 0x28
1a001d38:	46bd      	mov	sp, r7
1a001d3a:	bd80      	pop	{r7, pc}

1a001d3c <getFsStartAddr>:
1a001d3c:	b480      	push	{r7}
1a001d3e:	af00      	add	r7, sp, #0
1a001d40:	4b02      	ldr	r3, [pc, #8]	; (1a001d4c <getFsStartAddr+0x10>)
1a001d42:	4618      	mov	r0, r3
1a001d44:	46bd      	mov	sp, r7
1a001d46:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001d4a:	4770      	bx	lr
1a001d4c:	1a003944 	.word	0x1a003944

1a001d50 <main>:
1a001d50:	b580      	push	{r7, lr}
1a001d52:	f5ad 6de0 	sub.w	sp, sp, #1792	; 0x700
1a001d56:	af00      	add	r7, sp, #0
1a001d58:	f7fe fc02 	bl	1a000560 <systemInit>
1a001d5c:	1d3b      	adds	r3, r7, #4
1a001d5e:	461a      	mov	r2, r3
1a001d60:	2300      	movs	r3, #0
1a001d62:	6013      	str	r3, [r2, #0]
1a001d64:	6053      	str	r3, [r2, #4]
1a001d66:	6093      	str	r3, [r2, #8]
1a001d68:	60d3      	str	r3, [r2, #12]
1a001d6a:	6113      	str	r3, [r2, #16]
1a001d6c:	f507 7314 	add.w	r3, r7, #592	; 0x250
1a001d70:	2201      	movs	r2, #1
1a001d72:	4938      	ldr	r1, [pc, #224]	; (1a001e54 <main+0x104>)
1a001d74:	4618      	mov	r0, r3
1a001d76:	f7ff fd2f 	bl	1a0017d8 <f_mount>
1a001d7a:	4603      	mov	r3, r0
1a001d7c:	2b00      	cmp	r3, #0
1a001d7e:	d002      	beq.n	1a001d86 <main+0x36>
1a001d80:	4835      	ldr	r0, [pc, #212]	; (1a001e58 <main+0x108>)
1a001d82:	f000 f8e5 	bl	1a001f50 <error>
1a001d86:	f507 638f 	add.w	r3, r7, #1144	; 0x478
1a001d8a:	4934      	ldr	r1, [pc, #208]	; (1a001e5c <main+0x10c>)
1a001d8c:	4618      	mov	r0, r3
1a001d8e:	f7ff feeb 	bl	1a001b68 <f_opendir>
1a001d92:	e025      	b.n	1a001de0 <main+0x90>
1a001d94:	4831      	ldr	r0, [pc, #196]	; (1a001e5c <main+0x10c>)
1a001d96:	f000 f87b 	bl	1a001e90 <print>
1a001d9a:	f107 0318 	add.w	r3, r7, #24
1a001d9e:	3309      	adds	r3, #9
1a001da0:	4618      	mov	r0, r3
1a001da2:	f000 f875 	bl	1a001e90 <print>
1a001da6:	f107 0318 	add.w	r3, r7, #24
1a001daa:	7a1b      	ldrb	r3, [r3, #8]
1a001dac:	f003 0310 	and.w	r3, r3, #16
1a001db0:	2b00      	cmp	r3, #0
1a001db2:	d003      	beq.n	1a001dbc <main+0x6c>
1a001db4:	482a      	ldr	r0, [pc, #168]	; (1a001e60 <main+0x110>)
1a001db6:	f000 f86b 	bl	1a001e90 <print>
1a001dba:	e00e      	b.n	1a001dda <main+0x8a>
1a001dbc:	f107 0318 	add.w	r3, r7, #24
1a001dc0:	681b      	ldr	r3, [r3, #0]
1a001dc2:	1d3a      	adds	r2, r7, #4
1a001dc4:	4611      	mov	r1, r2
1a001dc6:	4618      	mov	r0, r3
1a001dc8:	f000 f922 	bl	1a002010 <uint10ToStr>
1a001dcc:	4825      	ldr	r0, [pc, #148]	; (1a001e64 <main+0x114>)
1a001dce:	f000 f85f 	bl	1a001e90 <print>
1a001dd2:	1d3b      	adds	r3, r7, #4
1a001dd4:	4618      	mov	r0, r3
1a001dd6:	f000 f85b 	bl	1a001e90 <print>
1a001dda:	4823      	ldr	r0, [pc, #140]	; (1a001e68 <main+0x118>)
1a001ddc:	f000 f858 	bl	1a001e90 <print>
1a001de0:	f107 0218 	add.w	r2, r7, #24
1a001de4:	f507 638f 	add.w	r3, r7, #1144	; 0x478
1a001de8:	4611      	mov	r1, r2
1a001dea:	4618      	mov	r0, r3
1a001dec:	f7ff ff2d 	bl	1a001c4a <f_readdir>
1a001df0:	4603      	mov	r3, r0
1a001df2:	2b00      	cmp	r3, #0
1a001df4:	d104      	bne.n	1a001e00 <main+0xb0>
1a001df6:	f107 0318 	add.w	r3, r7, #24
1a001dfa:	7a5b      	ldrb	r3, [r3, #9]
1a001dfc:	2b00      	cmp	r3, #0
1a001dfe:	d1c9      	bne.n	1a001d94 <main+0x44>
1a001e00:	f507 638f 	add.w	r3, r7, #1144	; 0x478
1a001e04:	4618      	mov	r0, r3
1a001e06:	f7ff ff08 	bl	1a001c1a <f_closedir>
1a001e0a:	4818      	ldr	r0, [pc, #96]	; (1a001e6c <main+0x11c>)
1a001e0c:	f000 f840 	bl	1a001e90 <print>
1a001e10:	f507 639c 	add.w	r3, r7, #1248	; 0x4e0
1a001e14:	2201      	movs	r2, #1
1a001e16:	4916      	ldr	r1, [pc, #88]	; (1a001e70 <main+0x120>)
1a001e18:	4618      	mov	r0, r3
1a001e1a:	f7ff fd1d 	bl	1a001858 <f_open>
1a001e1e:	e004      	b.n	1a001e2a <main+0xda>
1a001e20:	f207 437c 	addw	r3, r7, #1148	; 0x47c
1a001e24:	4618      	mov	r0, r3
1a001e26:	f000 f833 	bl	1a001e90 <print>
1a001e2a:	f507 629c 	add.w	r2, r7, #1248	; 0x4e0
1a001e2e:	f207 437c 	addw	r3, r7, #1148	; 0x47c
1a001e32:	2164      	movs	r1, #100	; 0x64
1a001e34:	4618      	mov	r0, r3
1a001e36:	f7ff ff45 	bl	1a001cc4 <f_gets>
1a001e3a:	4603      	mov	r3, r0
1a001e3c:	2b00      	cmp	r3, #0
1a001e3e:	d1ef      	bne.n	1a001e20 <main+0xd0>
1a001e40:	4809      	ldr	r0, [pc, #36]	; (1a001e68 <main+0x118>)
1a001e42:	f000 f825 	bl	1a001e90 <print>
1a001e46:	f507 639c 	add.w	r3, r7, #1248	; 0x4e0
1a001e4a:	4618      	mov	r0, r3
1a001e4c:	f7ff fe74 	bl	1a001b38 <f_close>
1a001e50:	e7fe      	b.n	1a001e50 <main+0x100>
1a001e52:	bf00      	nop
1a001e54:	1a0037fc 	.word	0x1a0037fc
1a001e58:	1a003800 	.word	0x1a003800
1a001e5c:	1a00381c 	.word	0x1a00381c
1a001e60:	1a003820 	.word	0x1a003820
1a001e64:	1a00382c 	.word	0x1a00382c
1a001e68:	1a003830 	.word	0x1a003830
1a001e6c:	1a003834 	.word	0x1a003834
1a001e70:	1a003854 	.word	0x1a003854

1a001e74 <Chip_PININT_ClearIntStatus>:
1a001e74:	b480      	push	{r7}
1a001e76:	b083      	sub	sp, #12
1a001e78:	af00      	add	r7, sp, #0
1a001e7a:	6078      	str	r0, [r7, #4]
1a001e7c:	6039      	str	r1, [r7, #0]
1a001e7e:	687b      	ldr	r3, [r7, #4]
1a001e80:	683a      	ldr	r2, [r7, #0]
1a001e82:	625a      	str	r2, [r3, #36]	; 0x24
1a001e84:	bf00      	nop
1a001e86:	370c      	adds	r7, #12
1a001e88:	46bd      	mov	sp, r7
1a001e8a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e8e:	4770      	bx	lr

1a001e90 <print>:
1a001e90:	b580      	push	{r7, lr}
1a001e92:	b082      	sub	sp, #8
1a001e94:	af00      	add	r7, sp, #0
1a001e96:	6078      	str	r0, [r7, #4]
1a001e98:	6878      	ldr	r0, [r7, #4]
1a001e9a:	f001 fbf1 	bl	1a003680 <strlen>
1a001e9e:	4603      	mov	r3, r0
1a001ea0:	461a      	mov	r2, r3
1a001ea2:	6879      	ldr	r1, [r7, #4]
1a001ea4:	4803      	ldr	r0, [pc, #12]	; (1a001eb4 <print+0x24>)
1a001ea6:	f000 fc33 	bl	1a002710 <Chip_UART_SendBlocking>
1a001eaa:	bf00      	nop
1a001eac:	3708      	adds	r7, #8
1a001eae:	46bd      	mov	sp, r7
1a001eb0:	bd80      	pop	{r7, pc}
1a001eb2:	bf00      	nop
1a001eb4:	400c1000 	.word	0x400c1000

1a001eb8 <SysTick_Handler>:
1a001eb8:	b480      	push	{r7}
1a001eba:	af00      	add	r7, sp, #0
1a001ebc:	4b03      	ldr	r3, [pc, #12]	; (1a001ecc <SysTick_Handler+0x14>)
1a001ebe:	2201      	movs	r2, #1
1a001ec0:	701a      	strb	r2, [r3, #0]
1a001ec2:	bf00      	nop
1a001ec4:	46bd      	mov	sp, r7
1a001ec6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001eca:	4770      	bx	lr
1a001ecc:	1000042f 	.word	0x1000042f

1a001ed0 <GPIO0_IRQHandler>:
1a001ed0:	b580      	push	{r7, lr}
1a001ed2:	af00      	add	r7, sp, #0
1a001ed4:	4b04      	ldr	r3, [pc, #16]	; (1a001ee8 <GPIO0_IRQHandler+0x18>)
1a001ed6:	2201      	movs	r2, #1
1a001ed8:	701a      	strb	r2, [r3, #0]
1a001eda:	2101      	movs	r1, #1
1a001edc:	4803      	ldr	r0, [pc, #12]	; (1a001eec <GPIO0_IRQHandler+0x1c>)
1a001ede:	f7ff ffc9 	bl	1a001e74 <Chip_PININT_ClearIntStatus>
1a001ee2:	bf00      	nop
1a001ee4:	bd80      	pop	{r7, pc}
1a001ee6:	bf00      	nop
1a001ee8:	1000042e 	.word	0x1000042e
1a001eec:	40087000 	.word	0x40087000

1a001ef0 <GPIO1_IRQHandler>:
1a001ef0:	b580      	push	{r7, lr}
1a001ef2:	af00      	add	r7, sp, #0
1a001ef4:	4b04      	ldr	r3, [pc, #16]	; (1a001f08 <GPIO1_IRQHandler+0x18>)
1a001ef6:	2202      	movs	r2, #2
1a001ef8:	701a      	strb	r2, [r3, #0]
1a001efa:	2102      	movs	r1, #2
1a001efc:	4803      	ldr	r0, [pc, #12]	; (1a001f0c <GPIO1_IRQHandler+0x1c>)
1a001efe:	f7ff ffb9 	bl	1a001e74 <Chip_PININT_ClearIntStatus>
1a001f02:	bf00      	nop
1a001f04:	bd80      	pop	{r7, pc}
1a001f06:	bf00      	nop
1a001f08:	1000042e 	.word	0x1000042e
1a001f0c:	40087000 	.word	0x40087000

1a001f10 <GPIO2_IRQHandler>:
1a001f10:	b580      	push	{r7, lr}
1a001f12:	af00      	add	r7, sp, #0
1a001f14:	4b04      	ldr	r3, [pc, #16]	; (1a001f28 <GPIO2_IRQHandler+0x18>)
1a001f16:	2203      	movs	r2, #3
1a001f18:	701a      	strb	r2, [r3, #0]
1a001f1a:	2104      	movs	r1, #4
1a001f1c:	4803      	ldr	r0, [pc, #12]	; (1a001f2c <GPIO2_IRQHandler+0x1c>)
1a001f1e:	f7ff ffa9 	bl	1a001e74 <Chip_PININT_ClearIntStatus>
1a001f22:	bf00      	nop
1a001f24:	bd80      	pop	{r7, pc}
1a001f26:	bf00      	nop
1a001f28:	1000042e 	.word	0x1000042e
1a001f2c:	40087000 	.word	0x40087000

1a001f30 <GPIO3_IRQHandler>:
1a001f30:	b580      	push	{r7, lr}
1a001f32:	af00      	add	r7, sp, #0
1a001f34:	4b04      	ldr	r3, [pc, #16]	; (1a001f48 <GPIO3_IRQHandler+0x18>)
1a001f36:	2204      	movs	r2, #4
1a001f38:	701a      	strb	r2, [r3, #0]
1a001f3a:	2108      	movs	r1, #8
1a001f3c:	4803      	ldr	r0, [pc, #12]	; (1a001f4c <GPIO3_IRQHandler+0x1c>)
1a001f3e:	f7ff ff99 	bl	1a001e74 <Chip_PININT_ClearIntStatus>
1a001f42:	bf00      	nop
1a001f44:	bd80      	pop	{r7, pc}
1a001f46:	bf00      	nop
1a001f48:	1000042e 	.word	0x1000042e
1a001f4c:	40087000 	.word	0x40087000

1a001f50 <error>:
1a001f50:	b5b0      	push	{r4, r5, r7, lr}
1a001f52:	b086      	sub	sp, #24
1a001f54:	af00      	add	r7, sp, #0
1a001f56:	4b0d      	ldr	r3, [pc, #52]	; (1a001f8c <error+0x3c>)
1a001f58:	1d3c      	adds	r4, r7, #4
1a001f5a:	461d      	mov	r5, r3
1a001f5c:	cd0f      	ldmia	r5!, {r0, r1, r2, r3}
1a001f5e:	c40f      	stmia	r4!, {r0, r1, r2, r3}
1a001f60:	682b      	ldr	r3, [r5, #0]
1a001f62:	461a      	mov	r2, r3
1a001f64:	8022      	strh	r2, [r4, #0]
1a001f66:	3402      	adds	r4, #2
1a001f68:	0c1b      	lsrs	r3, r3, #16
1a001f6a:	7023      	strb	r3, [r4, #0]
1a001f6c:	1d3b      	adds	r3, r7, #4
1a001f6e:	4618      	mov	r0, r3
1a001f70:	f001 fb86 	bl	1a003680 <strlen>
1a001f74:	4603      	mov	r3, r0
1a001f76:	461a      	mov	r2, r3
1a001f78:	1d3b      	adds	r3, r7, #4
1a001f7a:	4619      	mov	r1, r3
1a001f7c:	4804      	ldr	r0, [pc, #16]	; (1a001f90 <error+0x40>)
1a001f7e:	f000 fbc7 	bl	1a002710 <Chip_UART_SendBlocking>
1a001f82:	bf00      	nop
1a001f84:	3718      	adds	r7, #24
1a001f86:	46bd      	mov	sp, r7
1a001f88:	bdb0      	pop	{r4, r5, r7, pc}
1a001f8a:	bf00      	nop
1a001f8c:	1a003860 	.word	0x1a003860
1a001f90:	400c1000 	.word	0x400c1000

1a001f94 <devolver_digitos>:
1a001f94:	b480      	push	{r7}
1a001f96:	b085      	sub	sp, #20
1a001f98:	af00      	add	r7, sp, #0
1a001f9a:	6078      	str	r0, [r7, #4]
1a001f9c:	2300      	movs	r3, #0
1a001f9e:	60fb      	str	r3, [r7, #12]
1a001fa0:	e00a      	b.n	1a001fb8 <devolver_digitos+0x24>
1a001fa2:	68fb      	ldr	r3, [r7, #12]
1a001fa4:	3301      	adds	r3, #1
1a001fa6:	60fb      	str	r3, [r7, #12]
1a001fa8:	687b      	ldr	r3, [r7, #4]
1a001faa:	4a08      	ldr	r2, [pc, #32]	; (1a001fcc <devolver_digitos+0x38>)
1a001fac:	fb82 1203 	smull	r1, r2, r2, r3
1a001fb0:	1092      	asrs	r2, r2, #2
1a001fb2:	17db      	asrs	r3, r3, #31
1a001fb4:	1ad3      	subs	r3, r2, r3
1a001fb6:	607b      	str	r3, [r7, #4]
1a001fb8:	687b      	ldr	r3, [r7, #4]
1a001fba:	2b00      	cmp	r3, #0
1a001fbc:	dcf1      	bgt.n	1a001fa2 <devolver_digitos+0xe>
1a001fbe:	68fb      	ldr	r3, [r7, #12]
1a001fc0:	4618      	mov	r0, r3
1a001fc2:	3714      	adds	r7, #20
1a001fc4:	46bd      	mov	sp, r7
1a001fc6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001fca:	4770      	bx	lr
1a001fcc:	66666667 	.word	0x66666667

1a001fd0 <menos_significativo>:
1a001fd0:	b580      	push	{r7, lr}
1a001fd2:	b084      	sub	sp, #16
1a001fd4:	af00      	add	r7, sp, #0
1a001fd6:	6078      	str	r0, [r7, #4]
1a001fd8:	2300      	movs	r3, #0
1a001fda:	73fb      	strb	r3, [r7, #15]
1a001fdc:	687b      	ldr	r3, [r7, #4]
1a001fde:	4618      	mov	r0, r3
1a001fe0:	f7ff ffd8 	bl	1a001f94 <devolver_digitos>
1a001fe4:	4603      	mov	r3, r0
1a001fe6:	2b00      	cmp	r3, #0
1a001fe8:	d00b      	beq.n	1a002002 <menos_significativo+0x32>
1a001fea:	6879      	ldr	r1, [r7, #4]
1a001fec:	4b07      	ldr	r3, [pc, #28]	; (1a00200c <menos_significativo+0x3c>)
1a001fee:	fba3 2301 	umull	r2, r3, r3, r1
1a001ff2:	08da      	lsrs	r2, r3, #3
1a001ff4:	4613      	mov	r3, r2
1a001ff6:	009b      	lsls	r3, r3, #2
1a001ff8:	4413      	add	r3, r2
1a001ffa:	005b      	lsls	r3, r3, #1
1a001ffc:	1aca      	subs	r2, r1, r3
1a001ffe:	4613      	mov	r3, r2
1a002000:	73fb      	strb	r3, [r7, #15]
1a002002:	7bfb      	ldrb	r3, [r7, #15]
1a002004:	4618      	mov	r0, r3
1a002006:	3710      	adds	r7, #16
1a002008:	46bd      	mov	sp, r7
1a00200a:	bd80      	pop	{r7, pc}
1a00200c:	cccccccd 	.word	0xcccccccd

1a002010 <uint10ToStr>:
1a002010:	b5b0      	push	{r4, r5, r7, lr}
1a002012:	b086      	sub	sp, #24
1a002014:	af00      	add	r7, sp, #0
1a002016:	6078      	str	r0, [r7, #4]
1a002018:	6039      	str	r1, [r7, #0]
1a00201a:	466b      	mov	r3, sp
1a00201c:	461d      	mov	r5, r3
1a00201e:	687b      	ldr	r3, [r7, #4]
1a002020:	4618      	mov	r0, r3
1a002022:	f7ff ffb7 	bl	1a001f94 <devolver_digitos>
1a002026:	4603      	mov	r3, r0
1a002028:	757b      	strb	r3, [r7, #21]
1a00202a:	7d78      	ldrb	r0, [r7, #21]
1a00202c:	4603      	mov	r3, r0
1a00202e:	3b01      	subs	r3, #1
1a002030:	613b      	str	r3, [r7, #16]
1a002032:	b2c1      	uxtb	r1, r0
1a002034:	f04f 0200 	mov.w	r2, #0
1a002038:	f04f 0300 	mov.w	r3, #0
1a00203c:	f04f 0400 	mov.w	r4, #0
1a002040:	00d4      	lsls	r4, r2, #3
1a002042:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
1a002046:	00cb      	lsls	r3, r1, #3
1a002048:	b2c1      	uxtb	r1, r0
1a00204a:	f04f 0200 	mov.w	r2, #0
1a00204e:	f04f 0300 	mov.w	r3, #0
1a002052:	f04f 0400 	mov.w	r4, #0
1a002056:	00d4      	lsls	r4, r2, #3
1a002058:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
1a00205c:	00cb      	lsls	r3, r1, #3
1a00205e:	4603      	mov	r3, r0
1a002060:	3307      	adds	r3, #7
1a002062:	08db      	lsrs	r3, r3, #3
1a002064:	00db      	lsls	r3, r3, #3
1a002066:	ebad 0d03 	sub.w	sp, sp, r3
1a00206a:	466b      	mov	r3, sp
1a00206c:	3300      	adds	r3, #0
1a00206e:	60fb      	str	r3, [r7, #12]
1a002070:	7d7b      	ldrb	r3, [r7, #21]
1a002072:	75bb      	strb	r3, [r7, #22]
1a002074:	e011      	b.n	1a00209a <uint10ToStr+0x8a>
1a002076:	7dbb      	ldrb	r3, [r7, #22]
1a002078:	1e5c      	subs	r4, r3, #1
1a00207a:	6878      	ldr	r0, [r7, #4]
1a00207c:	f7ff ffa8 	bl	1a001fd0 <menos_significativo>
1a002080:	4603      	mov	r3, r0
1a002082:	461a      	mov	r2, r3
1a002084:	68fb      	ldr	r3, [r7, #12]
1a002086:	551a      	strb	r2, [r3, r4]
1a002088:	687b      	ldr	r3, [r7, #4]
1a00208a:	4a11      	ldr	r2, [pc, #68]	; (1a0020d0 <uint10ToStr+0xc0>)
1a00208c:	fba2 2303 	umull	r2, r3, r2, r3
1a002090:	08db      	lsrs	r3, r3, #3
1a002092:	607b      	str	r3, [r7, #4]
1a002094:	7dbb      	ldrb	r3, [r7, #22]
1a002096:	3b01      	subs	r3, #1
1a002098:	75bb      	strb	r3, [r7, #22]
1a00209a:	7dbb      	ldrb	r3, [r7, #22]
1a00209c:	2b00      	cmp	r3, #0
1a00209e:	d1ea      	bne.n	1a002076 <uint10ToStr+0x66>
1a0020a0:	2300      	movs	r3, #0
1a0020a2:	75fb      	strb	r3, [r7, #23]
1a0020a4:	e00b      	b.n	1a0020be <uint10ToStr+0xae>
1a0020a6:	7dfb      	ldrb	r3, [r7, #23]
1a0020a8:	68fa      	ldr	r2, [r7, #12]
1a0020aa:	5cd2      	ldrb	r2, [r2, r3]
1a0020ac:	7dfb      	ldrb	r3, [r7, #23]
1a0020ae:	6839      	ldr	r1, [r7, #0]
1a0020b0:	440b      	add	r3, r1
1a0020b2:	3230      	adds	r2, #48	; 0x30
1a0020b4:	b2d2      	uxtb	r2, r2
1a0020b6:	701a      	strb	r2, [r3, #0]
1a0020b8:	7dfb      	ldrb	r3, [r7, #23]
1a0020ba:	3301      	adds	r3, #1
1a0020bc:	75fb      	strb	r3, [r7, #23]
1a0020be:	7dfa      	ldrb	r2, [r7, #23]
1a0020c0:	7d7b      	ldrb	r3, [r7, #21]
1a0020c2:	429a      	cmp	r2, r3
1a0020c4:	d3ef      	bcc.n	1a0020a6 <uint10ToStr+0x96>
1a0020c6:	46ad      	mov	sp, r5
1a0020c8:	bf00      	nop
1a0020ca:	3718      	adds	r7, #24
1a0020cc:	46bd      	mov	sp, r7
1a0020ce:	bdb0      	pop	{r4, r5, r7, pc}
1a0020d0:	cccccccd 	.word	0xcccccccd

1a0020d4 <disk_status>:
1a0020d4:	b480      	push	{r7}
1a0020d6:	b083      	sub	sp, #12
1a0020d8:	af00      	add	r7, sp, #0
1a0020da:	4603      	mov	r3, r0
1a0020dc:	71fb      	strb	r3, [r7, #7]
1a0020de:	2300      	movs	r3, #0
1a0020e0:	4618      	mov	r0, r3
1a0020e2:	370c      	adds	r7, #12
1a0020e4:	46bd      	mov	sp, r7
1a0020e6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0020ea:	4770      	bx	lr

1a0020ec <disk_initialize>:
1a0020ec:	b480      	push	{r7}
1a0020ee:	b083      	sub	sp, #12
1a0020f0:	af00      	add	r7, sp, #0
1a0020f2:	4603      	mov	r3, r0
1a0020f4:	71fb      	strb	r3, [r7, #7]
1a0020f6:	2300      	movs	r3, #0
1a0020f8:	4618      	mov	r0, r3
1a0020fa:	370c      	adds	r7, #12
1a0020fc:	46bd      	mov	sp, r7
1a0020fe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002102:	4770      	bx	lr

1a002104 <disk_read>:
1a002104:	b580      	push	{r7, lr}
1a002106:	b08a      	sub	sp, #40	; 0x28
1a002108:	af00      	add	r7, sp, #0
1a00210a:	60b9      	str	r1, [r7, #8]
1a00210c:	607a      	str	r2, [r7, #4]
1a00210e:	603b      	str	r3, [r7, #0]
1a002110:	4603      	mov	r3, r0
1a002112:	73fb      	strb	r3, [r7, #15]
1a002114:	2300      	movs	r3, #0
1a002116:	623b      	str	r3, [r7, #32]
1a002118:	687b      	ldr	r3, [r7, #4]
1a00211a:	025b      	lsls	r3, r3, #9
1a00211c:	61bb      	str	r3, [r7, #24]
1a00211e:	2300      	movs	r3, #0
1a002120:	627b      	str	r3, [r7, #36]	; 0x24
1a002122:	e020      	b.n	1a002166 <disk_read+0x62>
1a002124:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a002126:	025b      	lsls	r3, r3, #9
1a002128:	69ba      	ldr	r2, [r7, #24]
1a00212a:	4413      	add	r3, r2
1a00212c:	617b      	str	r3, [r7, #20]
1a00212e:	2300      	movs	r3, #0
1a002130:	61fb      	str	r3, [r7, #28]
1a002132:	e011      	b.n	1a002158 <disk_read+0x54>
1a002134:	f7ff fe02 	bl	1a001d3c <getFsStartAddr>
1a002138:	4601      	mov	r1, r0
1a00213a:	697a      	ldr	r2, [r7, #20]
1a00213c:	69fb      	ldr	r3, [r7, #28]
1a00213e:	4413      	add	r3, r2
1a002140:	18ca      	adds	r2, r1, r3
1a002142:	68b9      	ldr	r1, [r7, #8]
1a002144:	6a3b      	ldr	r3, [r7, #32]
1a002146:	440b      	add	r3, r1
1a002148:	7812      	ldrb	r2, [r2, #0]
1a00214a:	701a      	strb	r2, [r3, #0]
1a00214c:	6a3b      	ldr	r3, [r7, #32]
1a00214e:	3301      	adds	r3, #1
1a002150:	623b      	str	r3, [r7, #32]
1a002152:	69fb      	ldr	r3, [r7, #28]
1a002154:	3301      	adds	r3, #1
1a002156:	61fb      	str	r3, [r7, #28]
1a002158:	69fb      	ldr	r3, [r7, #28]
1a00215a:	f5b3 7f00 	cmp.w	r3, #512	; 0x200
1a00215e:	d3e9      	bcc.n	1a002134 <disk_read+0x30>
1a002160:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a002162:	3301      	adds	r3, #1
1a002164:	627b      	str	r3, [r7, #36]	; 0x24
1a002166:	6a7a      	ldr	r2, [r7, #36]	; 0x24
1a002168:	683b      	ldr	r3, [r7, #0]
1a00216a:	429a      	cmp	r2, r3
1a00216c:	d3da      	bcc.n	1a002124 <disk_read+0x20>
1a00216e:	2300      	movs	r3, #0
1a002170:	4618      	mov	r0, r3
1a002172:	3728      	adds	r7, #40	; 0x28
1a002174:	46bd      	mov	sp, r7
1a002176:	bd80      	pop	{r7, pc}

1a002178 <fpuInit>:
1a002178:	b480      	push	{r7}
1a00217a:	b089      	sub	sp, #36	; 0x24
1a00217c:	af00      	add	r7, sp, #0
1a00217e:	4b16      	ldr	r3, [pc, #88]	; (1a0021d8 <fpuInit+0x60>)
1a002180:	61fb      	str	r3, [r7, #28]
1a002182:	4b16      	ldr	r3, [pc, #88]	; (1a0021dc <fpuInit+0x64>)
1a002184:	61bb      	str	r3, [r7, #24]
1a002186:	4b16      	ldr	r3, [pc, #88]	; (1a0021e0 <fpuInit+0x68>)
1a002188:	617b      	str	r3, [r7, #20]
1a00218a:	2300      	movs	r3, #0
1a00218c:	74fb      	strb	r3, [r7, #19]
1a00218e:	69bb      	ldr	r3, [r7, #24]
1a002190:	681b      	ldr	r3, [r3, #0]
1a002192:	60bb      	str	r3, [r7, #8]
1a002194:	697b      	ldr	r3, [r7, #20]
1a002196:	681b      	ldr	r3, [r3, #0]
1a002198:	607b      	str	r3, [r7, #4]
1a00219a:	68bb      	ldr	r3, [r7, #8]
1a00219c:	4a11      	ldr	r2, [pc, #68]	; (1a0021e4 <fpuInit+0x6c>)
1a00219e:	4293      	cmp	r3, r2
1a0021a0:	d105      	bne.n	1a0021ae <fpuInit+0x36>
1a0021a2:	687b      	ldr	r3, [r7, #4]
1a0021a4:	4a10      	ldr	r2, [pc, #64]	; (1a0021e8 <fpuInit+0x70>)
1a0021a6:	4293      	cmp	r3, r2
1a0021a8:	d101      	bne.n	1a0021ae <fpuInit+0x36>
1a0021aa:	2301      	movs	r3, #1
1a0021ac:	e000      	b.n	1a0021b0 <fpuInit+0x38>
1a0021ae:	2300      	movs	r3, #0
1a0021b0:	74fb      	strb	r3, [r7, #19]
1a0021b2:	7cfb      	ldrb	r3, [r7, #19]
1a0021b4:	2b00      	cmp	r3, #0
1a0021b6:	d009      	beq.n	1a0021cc <fpuInit+0x54>
1a0021b8:	69fb      	ldr	r3, [r7, #28]
1a0021ba:	681b      	ldr	r3, [r3, #0]
1a0021bc:	60fb      	str	r3, [r7, #12]
1a0021be:	68fb      	ldr	r3, [r7, #12]
1a0021c0:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a0021c4:	60fb      	str	r3, [r7, #12]
1a0021c6:	68fa      	ldr	r2, [r7, #12]
1a0021c8:	69fb      	ldr	r3, [r7, #28]
1a0021ca:	601a      	str	r2, [r3, #0]
1a0021cc:	bf00      	nop
1a0021ce:	3724      	adds	r7, #36	; 0x24
1a0021d0:	46bd      	mov	sp, r7
1a0021d2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021d6:	4770      	bx	lr
1a0021d8:	e000ed88 	.word	0xe000ed88
1a0021dc:	e000ef40 	.word	0xe000ef40
1a0021e0:	e000ef44 	.word	0xe000ef44
1a0021e4:	10110021 	.word	0x10110021
1a0021e8:	11000011 	.word	0x11000011

1a0021ec <Chip_Clock_DisableMainPLL>:
1a0021ec:	b480      	push	{r7}
1a0021ee:	af00      	add	r7, sp, #0
1a0021f0:	4b05      	ldr	r3, [pc, #20]	; (1a002208 <Chip_Clock_DisableMainPLL+0x1c>)
1a0021f2:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0021f4:	4a04      	ldr	r2, [pc, #16]	; (1a002208 <Chip_Clock_DisableMainPLL+0x1c>)
1a0021f6:	f043 0301 	orr.w	r3, r3, #1
1a0021fa:	6453      	str	r3, [r2, #68]	; 0x44
1a0021fc:	bf00      	nop
1a0021fe:	46bd      	mov	sp, r7
1a002200:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002204:	4770      	bx	lr
1a002206:	bf00      	nop
1a002208:	40050000 	.word	0x40050000

1a00220c <Chip_Clock_SetupMainPLL>:
1a00220c:	b480      	push	{r7}
1a00220e:	b083      	sub	sp, #12
1a002210:	af00      	add	r7, sp, #0
1a002212:	6078      	str	r0, [r7, #4]
1a002214:	687b      	ldr	r3, [r7, #4]
1a002216:	681b      	ldr	r3, [r3, #0]
1a002218:	461a      	mov	r2, r3
1a00221a:	687b      	ldr	r3, [r7, #4]
1a00221c:	791b      	ldrb	r3, [r3, #4]
1a00221e:	061b      	lsls	r3, r3, #24
1a002220:	4313      	orrs	r3, r2
1a002222:	687a      	ldr	r2, [r7, #4]
1a002224:	6912      	ldr	r2, [r2, #16]
1a002226:	0412      	lsls	r2, r2, #16
1a002228:	4313      	orrs	r3, r2
1a00222a:	687a      	ldr	r2, [r7, #4]
1a00222c:	6892      	ldr	r2, [r2, #8]
1a00222e:	0312      	lsls	r2, r2, #12
1a002230:	4313      	orrs	r3, r2
1a002232:	687a      	ldr	r2, [r7, #4]
1a002234:	68d2      	ldr	r2, [r2, #12]
1a002236:	0212      	lsls	r2, r2, #8
1a002238:	4313      	orrs	r3, r2
1a00223a:	4a05      	ldr	r2, [pc, #20]	; (1a002250 <Chip_Clock_SetupMainPLL+0x44>)
1a00223c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a002240:	6453      	str	r3, [r2, #68]	; 0x44
1a002242:	bf00      	nop
1a002244:	370c      	adds	r7, #12
1a002246:	46bd      	mov	sp, r7
1a002248:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00224c:	4770      	bx	lr
1a00224e:	bf00      	nop
1a002250:	40050000 	.word	0x40050000

1a002254 <Chip_Clock_MainPLLLocked>:
1a002254:	b480      	push	{r7}
1a002256:	af00      	add	r7, sp, #0
1a002258:	4b06      	ldr	r3, [pc, #24]	; (1a002274 <Chip_Clock_MainPLLLocked+0x20>)
1a00225a:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00225c:	f003 0301 	and.w	r3, r3, #1
1a002260:	2b00      	cmp	r3, #0
1a002262:	bf14      	ite	ne
1a002264:	2301      	movne	r3, #1
1a002266:	2300      	moveq	r3, #0
1a002268:	b2db      	uxtb	r3, r3
1a00226a:	4618      	mov	r0, r3
1a00226c:	46bd      	mov	sp, r7
1a00226e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002272:	4770      	bx	lr
1a002274:	40050000 	.word	0x40050000

1a002278 <Chip_SetupCoreClock>:
1a002278:	b590      	push	{r4, r7, lr}
1a00227a:	b08f      	sub	sp, #60	; 0x3c
1a00227c:	af00      	add	r7, sp, #0
1a00227e:	4603      	mov	r3, r0
1a002280:	6039      	str	r1, [r7, #0]
1a002282:	71fb      	strb	r3, [r7, #7]
1a002284:	4613      	mov	r3, r2
1a002286:	71bb      	strb	r3, [r7, #6]
1a002288:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a00228c:	62bb      	str	r3, [r7, #40]	; 0x28
1a00228e:	2300      	movs	r3, #0
1a002290:	633b      	str	r3, [r7, #48]	; 0x30
1a002292:	2300      	movs	r3, #0
1a002294:	62fb      	str	r3, [r7, #44]	; 0x2c
1a002296:	79fb      	ldrb	r3, [r7, #7]
1a002298:	2b06      	cmp	r3, #6
1a00229a:	d101      	bne.n	1a0022a0 <Chip_SetupCoreClock+0x28>
1a00229c:	f000 fdd8 	bl	1a002e50 <Chip_Clock_EnableCrystal>
1a0022a0:	79f9      	ldrb	r1, [r7, #7]
1a0022a2:	2300      	movs	r3, #0
1a0022a4:	2201      	movs	r2, #1
1a0022a6:	2004      	movs	r0, #4
1a0022a8:	f000 ffc4 	bl	1a003234 <Chip_Clock_SetBaseClock>
1a0022ac:	f7ff ff9e 	bl	1a0021ec <Chip_Clock_DisableMainPLL>
1a0022b0:	79fb      	ldrb	r3, [r7, #7]
1a0022b2:	733b      	strb	r3, [r7, #12]
1a0022b4:	f107 0308 	add.w	r3, r7, #8
1a0022b8:	4619      	mov	r1, r3
1a0022ba:	6838      	ldr	r0, [r7, #0]
1a0022bc:	f000 fe00 	bl	1a002ec0 <Chip_Clock_CalcMainPLLValue>
1a0022c0:	683b      	ldr	r3, [r7, #0]
1a0022c2:	4a3d      	ldr	r2, [pc, #244]	; (1a0023b8 <Chip_SetupCoreClock+0x140>)
1a0022c4:	4293      	cmp	r3, r2
1a0022c6:	d916      	bls.n	1a0022f6 <Chip_SetupCoreClock+0x7e>
1a0022c8:	68bb      	ldr	r3, [r7, #8]
1a0022ca:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0022ce:	2b00      	cmp	r3, #0
1a0022d0:	d000      	beq.n	1a0022d4 <Chip_SetupCoreClock+0x5c>
1a0022d2:	e7fe      	b.n	1a0022d2 <Chip_SetupCoreClock+0x5a>
1a0022d4:	68bb      	ldr	r3, [r7, #8]
1a0022d6:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0022da:	2b00      	cmp	r3, #0
1a0022dc:	d006      	beq.n	1a0022ec <Chip_SetupCoreClock+0x74>
1a0022de:	2301      	movs	r3, #1
1a0022e0:	633b      	str	r3, [r7, #48]	; 0x30
1a0022e2:	68bb      	ldr	r3, [r7, #8]
1a0022e4:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a0022e8:	60bb      	str	r3, [r7, #8]
1a0022ea:	e004      	b.n	1a0022f6 <Chip_SetupCoreClock+0x7e>
1a0022ec:	2301      	movs	r3, #1
1a0022ee:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0022f0:	697b      	ldr	r3, [r7, #20]
1a0022f2:	3301      	adds	r3, #1
1a0022f4:	617b      	str	r3, [r7, #20]
1a0022f6:	f107 0308 	add.w	r3, r7, #8
1a0022fa:	4618      	mov	r0, r3
1a0022fc:	f7ff ff86 	bl	1a00220c <Chip_Clock_SetupMainPLL>
1a002300:	bf00      	nop
1a002302:	f7ff ffa7 	bl	1a002254 <Chip_Clock_MainPLLLocked>
1a002306:	4603      	mov	r3, r0
1a002308:	2b00      	cmp	r3, #0
1a00230a:	d0fa      	beq.n	1a002302 <Chip_SetupCoreClock+0x8a>
1a00230c:	2300      	movs	r3, #0
1a00230e:	2201      	movs	r2, #1
1a002310:	2109      	movs	r1, #9
1a002312:	2004      	movs	r0, #4
1a002314:	f000 ff8e 	bl	1a003234 <Chip_Clock_SetBaseClock>
1a002318:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a00231a:	2b00      	cmp	r3, #0
1a00231c:	d012      	beq.n	1a002344 <Chip_SetupCoreClock+0xcc>
1a00231e:	f641 3358 	movw	r3, #7000	; 0x1b58
1a002322:	62bb      	str	r3, [r7, #40]	; 0x28
1a002324:	bf00      	nop
1a002326:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a002328:	1e5a      	subs	r2, r3, #1
1a00232a:	62ba      	str	r2, [r7, #40]	; 0x28
1a00232c:	2b00      	cmp	r3, #0
1a00232e:	d1fa      	bne.n	1a002326 <Chip_SetupCoreClock+0xae>
1a002330:	68bb      	ldr	r3, [r7, #8]
1a002332:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a002336:	60bb      	str	r3, [r7, #8]
1a002338:	f107 0308 	add.w	r3, r7, #8
1a00233c:	4618      	mov	r0, r3
1a00233e:	f7ff ff65 	bl	1a00220c <Chip_Clock_SetupMainPLL>
1a002342:	e013      	b.n	1a00236c <Chip_SetupCoreClock+0xf4>
1a002344:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002346:	2b00      	cmp	r3, #0
1a002348:	d010      	beq.n	1a00236c <Chip_SetupCoreClock+0xf4>
1a00234a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a00234e:	62bb      	str	r3, [r7, #40]	; 0x28
1a002350:	bf00      	nop
1a002352:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a002354:	1e5a      	subs	r2, r3, #1
1a002356:	62ba      	str	r2, [r7, #40]	; 0x28
1a002358:	2b00      	cmp	r3, #0
1a00235a:	d1fa      	bne.n	1a002352 <Chip_SetupCoreClock+0xda>
1a00235c:	697b      	ldr	r3, [r7, #20]
1a00235e:	3b01      	subs	r3, #1
1a002360:	617b      	str	r3, [r7, #20]
1a002362:	f107 0308 	add.w	r3, r7, #8
1a002366:	4618      	mov	r0, r3
1a002368:	f7ff ff50 	bl	1a00220c <Chip_Clock_SetupMainPLL>
1a00236c:	79bb      	ldrb	r3, [r7, #6]
1a00236e:	2b00      	cmp	r3, #0
1a002370:	d01e      	beq.n	1a0023b0 <Chip_SetupCoreClock+0x138>
1a002372:	2300      	movs	r3, #0
1a002374:	637b      	str	r3, [r7, #52]	; 0x34
1a002376:	e018      	b.n	1a0023aa <Chip_SetupCoreClock+0x132>
1a002378:	4a10      	ldr	r2, [pc, #64]	; (1a0023bc <Chip_SetupCoreClock+0x144>)
1a00237a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00237c:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a002380:	4a0e      	ldr	r2, [pc, #56]	; (1a0023bc <Chip_SetupCoreClock+0x144>)
1a002382:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a002384:	009b      	lsls	r3, r3, #2
1a002386:	4413      	add	r3, r2
1a002388:	7859      	ldrb	r1, [r3, #1]
1a00238a:	4a0c      	ldr	r2, [pc, #48]	; (1a0023bc <Chip_SetupCoreClock+0x144>)
1a00238c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00238e:	009b      	lsls	r3, r3, #2
1a002390:	4413      	add	r3, r2
1a002392:	789c      	ldrb	r4, [r3, #2]
1a002394:	4a09      	ldr	r2, [pc, #36]	; (1a0023bc <Chip_SetupCoreClock+0x144>)
1a002396:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a002398:	009b      	lsls	r3, r3, #2
1a00239a:	4413      	add	r3, r2
1a00239c:	78db      	ldrb	r3, [r3, #3]
1a00239e:	4622      	mov	r2, r4
1a0023a0:	f000 ff48 	bl	1a003234 <Chip_Clock_SetBaseClock>
1a0023a4:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0023a6:	3301      	adds	r3, #1
1a0023a8:	637b      	str	r3, [r7, #52]	; 0x34
1a0023aa:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0023ac:	2b11      	cmp	r3, #17
1a0023ae:	d9e3      	bls.n	1a002378 <Chip_SetupCoreClock+0x100>
1a0023b0:	bf00      	nop
1a0023b2:	373c      	adds	r7, #60	; 0x3c
1a0023b4:	46bd      	mov	sp, r7
1a0023b6:	bd90      	pop	{r4, r7, pc}
1a0023b8:	068e7780 	.word	0x068e7780
1a0023bc:	1a003874 	.word	0x1a003874

1a0023c0 <Chip_SetupXtalClocking>:
1a0023c0:	b580      	push	{r7, lr}
1a0023c2:	af00      	add	r7, sp, #0
1a0023c4:	2201      	movs	r2, #1
1a0023c6:	4903      	ldr	r1, [pc, #12]	; (1a0023d4 <Chip_SetupXtalClocking+0x14>)
1a0023c8:	2006      	movs	r0, #6
1a0023ca:	f7ff ff55 	bl	1a002278 <Chip_SetupCoreClock>
1a0023ce:	bf00      	nop
1a0023d0:	bd80      	pop	{r7, pc}
1a0023d2:	bf00      	nop
1a0023d4:	0c28cb00 	.word	0x0c28cb00

1a0023d8 <RingBuffer_IsEmpty>:
1a0023d8:	b480      	push	{r7}
1a0023da:	b083      	sub	sp, #12
1a0023dc:	af00      	add	r7, sp, #0
1a0023de:	6078      	str	r0, [r7, #4]
1a0023e0:	687b      	ldr	r3, [r7, #4]
1a0023e2:	330c      	adds	r3, #12
1a0023e4:	681a      	ldr	r2, [r3, #0]
1a0023e6:	687b      	ldr	r3, [r7, #4]
1a0023e8:	3310      	adds	r3, #16
1a0023ea:	681b      	ldr	r3, [r3, #0]
1a0023ec:	429a      	cmp	r2, r3
1a0023ee:	bf0c      	ite	eq
1a0023f0:	2301      	moveq	r3, #1
1a0023f2:	2300      	movne	r3, #0
1a0023f4:	b2db      	uxtb	r3, r3
1a0023f6:	4618      	mov	r0, r3
1a0023f8:	370c      	adds	r7, #12
1a0023fa:	46bd      	mov	sp, r7
1a0023fc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002400:	4770      	bx	lr

1a002402 <Chip_UART_TXDisable>:
1a002402:	b480      	push	{r7}
1a002404:	b083      	sub	sp, #12
1a002406:	af00      	add	r7, sp, #0
1a002408:	6078      	str	r0, [r7, #4]
1a00240a:	687b      	ldr	r3, [r7, #4]
1a00240c:	2200      	movs	r2, #0
1a00240e:	65da      	str	r2, [r3, #92]	; 0x5c
1a002410:	bf00      	nop
1a002412:	370c      	adds	r7, #12
1a002414:	46bd      	mov	sp, r7
1a002416:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00241a:	4770      	bx	lr

1a00241c <Chip_UART_SendByte>:
1a00241c:	b480      	push	{r7}
1a00241e:	b083      	sub	sp, #12
1a002420:	af00      	add	r7, sp, #0
1a002422:	6078      	str	r0, [r7, #4]
1a002424:	460b      	mov	r3, r1
1a002426:	70fb      	strb	r3, [r7, #3]
1a002428:	78fa      	ldrb	r2, [r7, #3]
1a00242a:	687b      	ldr	r3, [r7, #4]
1a00242c:	601a      	str	r2, [r3, #0]
1a00242e:	bf00      	nop
1a002430:	370c      	adds	r7, #12
1a002432:	46bd      	mov	sp, r7
1a002434:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002438:	4770      	bx	lr

1a00243a <Chip_UART_ReadByte>:
1a00243a:	b480      	push	{r7}
1a00243c:	b083      	sub	sp, #12
1a00243e:	af00      	add	r7, sp, #0
1a002440:	6078      	str	r0, [r7, #4]
1a002442:	687b      	ldr	r3, [r7, #4]
1a002444:	681b      	ldr	r3, [r3, #0]
1a002446:	b2db      	uxtb	r3, r3
1a002448:	4618      	mov	r0, r3
1a00244a:	370c      	adds	r7, #12
1a00244c:	46bd      	mov	sp, r7
1a00244e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002452:	4770      	bx	lr

1a002454 <Chip_UART_IntDisable>:
1a002454:	b480      	push	{r7}
1a002456:	b083      	sub	sp, #12
1a002458:	af00      	add	r7, sp, #0
1a00245a:	6078      	str	r0, [r7, #4]
1a00245c:	6039      	str	r1, [r7, #0]
1a00245e:	687b      	ldr	r3, [r7, #4]
1a002460:	685a      	ldr	r2, [r3, #4]
1a002462:	683b      	ldr	r3, [r7, #0]
1a002464:	43db      	mvns	r3, r3
1a002466:	401a      	ands	r2, r3
1a002468:	687b      	ldr	r3, [r7, #4]
1a00246a:	605a      	str	r2, [r3, #4]
1a00246c:	bf00      	nop
1a00246e:	370c      	adds	r7, #12
1a002470:	46bd      	mov	sp, r7
1a002472:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002476:	4770      	bx	lr

1a002478 <Chip_UART_ReadIntIDReg>:
1a002478:	b480      	push	{r7}
1a00247a:	b083      	sub	sp, #12
1a00247c:	af00      	add	r7, sp, #0
1a00247e:	6078      	str	r0, [r7, #4]
1a002480:	687b      	ldr	r3, [r7, #4]
1a002482:	689b      	ldr	r3, [r3, #8]
1a002484:	4618      	mov	r0, r3
1a002486:	370c      	adds	r7, #12
1a002488:	46bd      	mov	sp, r7
1a00248a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00248e:	4770      	bx	lr

1a002490 <Chip_UART_SetupFIFOS>:
1a002490:	b480      	push	{r7}
1a002492:	b083      	sub	sp, #12
1a002494:	af00      	add	r7, sp, #0
1a002496:	6078      	str	r0, [r7, #4]
1a002498:	6039      	str	r1, [r7, #0]
1a00249a:	687b      	ldr	r3, [r7, #4]
1a00249c:	683a      	ldr	r2, [r7, #0]
1a00249e:	609a      	str	r2, [r3, #8]
1a0024a0:	bf00      	nop
1a0024a2:	370c      	adds	r7, #12
1a0024a4:	46bd      	mov	sp, r7
1a0024a6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0024aa:	4770      	bx	lr

1a0024ac <Chip_UART_ConfigData>:
1a0024ac:	b480      	push	{r7}
1a0024ae:	b083      	sub	sp, #12
1a0024b0:	af00      	add	r7, sp, #0
1a0024b2:	6078      	str	r0, [r7, #4]
1a0024b4:	6039      	str	r1, [r7, #0]
1a0024b6:	687b      	ldr	r3, [r7, #4]
1a0024b8:	683a      	ldr	r2, [r7, #0]
1a0024ba:	60da      	str	r2, [r3, #12]
1a0024bc:	bf00      	nop
1a0024be:	370c      	adds	r7, #12
1a0024c0:	46bd      	mov	sp, r7
1a0024c2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0024c6:	4770      	bx	lr

1a0024c8 <Chip_UART_EnableDivisorAccess>:
1a0024c8:	b480      	push	{r7}
1a0024ca:	b083      	sub	sp, #12
1a0024cc:	af00      	add	r7, sp, #0
1a0024ce:	6078      	str	r0, [r7, #4]
1a0024d0:	687b      	ldr	r3, [r7, #4]
1a0024d2:	68db      	ldr	r3, [r3, #12]
1a0024d4:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a0024d8:	687b      	ldr	r3, [r7, #4]
1a0024da:	60da      	str	r2, [r3, #12]
1a0024dc:	bf00      	nop
1a0024de:	370c      	adds	r7, #12
1a0024e0:	46bd      	mov	sp, r7
1a0024e2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0024e6:	4770      	bx	lr

1a0024e8 <Chip_UART_DisableDivisorAccess>:
1a0024e8:	b480      	push	{r7}
1a0024ea:	b083      	sub	sp, #12
1a0024ec:	af00      	add	r7, sp, #0
1a0024ee:	6078      	str	r0, [r7, #4]
1a0024f0:	687b      	ldr	r3, [r7, #4]
1a0024f2:	68db      	ldr	r3, [r3, #12]
1a0024f4:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a0024f8:	687b      	ldr	r3, [r7, #4]
1a0024fa:	60da      	str	r2, [r3, #12]
1a0024fc:	bf00      	nop
1a0024fe:	370c      	adds	r7, #12
1a002500:	46bd      	mov	sp, r7
1a002502:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002506:	4770      	bx	lr

1a002508 <Chip_UART_SetDivisorLatches>:
1a002508:	b480      	push	{r7}
1a00250a:	b083      	sub	sp, #12
1a00250c:	af00      	add	r7, sp, #0
1a00250e:	6078      	str	r0, [r7, #4]
1a002510:	460b      	mov	r3, r1
1a002512:	70fb      	strb	r3, [r7, #3]
1a002514:	4613      	mov	r3, r2
1a002516:	70bb      	strb	r3, [r7, #2]
1a002518:	78fa      	ldrb	r2, [r7, #3]
1a00251a:	687b      	ldr	r3, [r7, #4]
1a00251c:	601a      	str	r2, [r3, #0]
1a00251e:	78ba      	ldrb	r2, [r7, #2]
1a002520:	687b      	ldr	r3, [r7, #4]
1a002522:	605a      	str	r2, [r3, #4]
1a002524:	bf00      	nop
1a002526:	370c      	adds	r7, #12
1a002528:	46bd      	mov	sp, r7
1a00252a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00252e:	4770      	bx	lr

1a002530 <Chip_UART_ReadLineStatus>:
1a002530:	b480      	push	{r7}
1a002532:	b083      	sub	sp, #12
1a002534:	af00      	add	r7, sp, #0
1a002536:	6078      	str	r0, [r7, #4]
1a002538:	687b      	ldr	r3, [r7, #4]
1a00253a:	695b      	ldr	r3, [r3, #20]
1a00253c:	4618      	mov	r0, r3
1a00253e:	370c      	adds	r7, #12
1a002540:	46bd      	mov	sp, r7
1a002542:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002546:	4770      	bx	lr

1a002548 <Chip_UART_SetAutoBaudReg>:
1a002548:	b480      	push	{r7}
1a00254a:	b083      	sub	sp, #12
1a00254c:	af00      	add	r7, sp, #0
1a00254e:	6078      	str	r0, [r7, #4]
1a002550:	6039      	str	r1, [r7, #0]
1a002552:	687b      	ldr	r3, [r7, #4]
1a002554:	6a1a      	ldr	r2, [r3, #32]
1a002556:	683b      	ldr	r3, [r7, #0]
1a002558:	431a      	orrs	r2, r3
1a00255a:	687b      	ldr	r3, [r7, #4]
1a00255c:	621a      	str	r2, [r3, #32]
1a00255e:	bf00      	nop
1a002560:	370c      	adds	r7, #12
1a002562:	46bd      	mov	sp, r7
1a002564:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002568:	4770      	bx	lr
1a00256a:	Address 0x000000001a00256a is out of bounds.


1a00256c <Chip_UART_GetIndex>:
1a00256c:	b480      	push	{r7}
1a00256e:	b085      	sub	sp, #20
1a002570:	af00      	add	r7, sp, #0
1a002572:	6078      	str	r0, [r7, #4]
1a002574:	687b      	ldr	r3, [r7, #4]
1a002576:	60fb      	str	r3, [r7, #12]
1a002578:	68fb      	ldr	r3, [r7, #12]
1a00257a:	4a10      	ldr	r2, [pc, #64]	; (1a0025bc <Chip_UART_GetIndex+0x50>)
1a00257c:	4293      	cmp	r3, r2
1a00257e:	d00f      	beq.n	1a0025a0 <Chip_UART_GetIndex+0x34>
1a002580:	4a0e      	ldr	r2, [pc, #56]	; (1a0025bc <Chip_UART_GetIndex+0x50>)
1a002582:	4293      	cmp	r3, r2
1a002584:	d803      	bhi.n	1a00258e <Chip_UART_GetIndex+0x22>
1a002586:	4a0e      	ldr	r2, [pc, #56]	; (1a0025c0 <Chip_UART_GetIndex+0x54>)
1a002588:	4293      	cmp	r3, r2
1a00258a:	d007      	beq.n	1a00259c <Chip_UART_GetIndex+0x30>
1a00258c:	e00e      	b.n	1a0025ac <Chip_UART_GetIndex+0x40>
1a00258e:	4a0d      	ldr	r2, [pc, #52]	; (1a0025c4 <Chip_UART_GetIndex+0x58>)
1a002590:	4293      	cmp	r3, r2
1a002592:	d007      	beq.n	1a0025a4 <Chip_UART_GetIndex+0x38>
1a002594:	4a0c      	ldr	r2, [pc, #48]	; (1a0025c8 <Chip_UART_GetIndex+0x5c>)
1a002596:	4293      	cmp	r3, r2
1a002598:	d006      	beq.n	1a0025a8 <Chip_UART_GetIndex+0x3c>
1a00259a:	e007      	b.n	1a0025ac <Chip_UART_GetIndex+0x40>
1a00259c:	2300      	movs	r3, #0
1a00259e:	e006      	b.n	1a0025ae <Chip_UART_GetIndex+0x42>
1a0025a0:	2301      	movs	r3, #1
1a0025a2:	e004      	b.n	1a0025ae <Chip_UART_GetIndex+0x42>
1a0025a4:	2302      	movs	r3, #2
1a0025a6:	e002      	b.n	1a0025ae <Chip_UART_GetIndex+0x42>
1a0025a8:	2303      	movs	r3, #3
1a0025aa:	e000      	b.n	1a0025ae <Chip_UART_GetIndex+0x42>
1a0025ac:	2300      	movs	r3, #0
1a0025ae:	4618      	mov	r0, r3
1a0025b0:	3714      	adds	r7, #20
1a0025b2:	46bd      	mov	sp, r7
1a0025b4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0025b8:	4770      	bx	lr
1a0025ba:	bf00      	nop
1a0025bc:	40082000 	.word	0x40082000
1a0025c0:	40081000 	.word	0x40081000
1a0025c4:	400c1000 	.word	0x400c1000
1a0025c8:	400c2000 	.word	0x400c2000

1a0025cc <Chip_UART_ABIntHandler>:
1a0025cc:	b580      	push	{r7, lr}
1a0025ce:	b082      	sub	sp, #8
1a0025d0:	af00      	add	r7, sp, #0
1a0025d2:	6078      	str	r0, [r7, #4]
1a0025d4:	6878      	ldr	r0, [r7, #4]
1a0025d6:	f7ff ff4f 	bl	1a002478 <Chip_UART_ReadIntIDReg>
1a0025da:	4603      	mov	r3, r0
1a0025dc:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a0025e0:	2b00      	cmp	r3, #0
1a0025e2:	d011      	beq.n	1a002608 <Chip_UART_ABIntHandler+0x3c>
1a0025e4:	f44f 7180 	mov.w	r1, #256	; 0x100
1a0025e8:	6878      	ldr	r0, [r7, #4]
1a0025ea:	f7ff ffad 	bl	1a002548 <Chip_UART_SetAutoBaudReg>
1a0025ee:	f44f 7180 	mov.w	r1, #256	; 0x100
1a0025f2:	6878      	ldr	r0, [r7, #4]
1a0025f4:	f7ff ff2e 	bl	1a002454 <Chip_UART_IntDisable>
1a0025f8:	4b0e      	ldr	r3, [pc, #56]	; (1a002634 <Chip_UART_ABIntHandler+0x68>)
1a0025fa:	781b      	ldrb	r3, [r3, #0]
1a0025fc:	b2db      	uxtb	r3, r3
1a0025fe:	2b00      	cmp	r3, #0
1a002600:	d102      	bne.n	1a002608 <Chip_UART_ABIntHandler+0x3c>
1a002602:	4b0c      	ldr	r3, [pc, #48]	; (1a002634 <Chip_UART_ABIntHandler+0x68>)
1a002604:	2201      	movs	r2, #1
1a002606:	701a      	strb	r2, [r3, #0]
1a002608:	6878      	ldr	r0, [r7, #4]
1a00260a:	f7ff ff35 	bl	1a002478 <Chip_UART_ReadIntIDReg>
1a00260e:	4603      	mov	r3, r0
1a002610:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a002614:	2b00      	cmp	r3, #0
1a002616:	d009      	beq.n	1a00262c <Chip_UART_ABIntHandler+0x60>
1a002618:	f44f 7100 	mov.w	r1, #512	; 0x200
1a00261c:	6878      	ldr	r0, [r7, #4]
1a00261e:	f7ff ff93 	bl	1a002548 <Chip_UART_SetAutoBaudReg>
1a002622:	f44f 7100 	mov.w	r1, #512	; 0x200
1a002626:	6878      	ldr	r0, [r7, #4]
1a002628:	f7ff ff14 	bl	1a002454 <Chip_UART_IntDisable>
1a00262c:	bf00      	nop
1a00262e:	3708      	adds	r7, #8
1a002630:	46bd      	mov	sp, r7
1a002632:	bd80      	pop	{r7, pc}
1a002634:	10000430 	.word	0x10000430

1a002638 <Chip_UART_Init>:
1a002638:	b580      	push	{r7, lr}
1a00263a:	b084      	sub	sp, #16
1a00263c:	af00      	add	r7, sp, #0
1a00263e:	6078      	str	r0, [r7, #4]
1a002640:	68fb      	ldr	r3, [r7, #12]
1a002642:	6878      	ldr	r0, [r7, #4]
1a002644:	f7ff ff92 	bl	1a00256c <Chip_UART_GetIndex>
1a002648:	4602      	mov	r2, r0
1a00264a:	4b1b      	ldr	r3, [pc, #108]	; (1a0026b8 <Chip_UART_Init+0x80>)
1a00264c:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a002650:	2301      	movs	r3, #1
1a002652:	2201      	movs	r2, #1
1a002654:	2101      	movs	r1, #1
1a002656:	f000 fe61 	bl	1a00331c <Chip_Clock_EnableOpts>
1a00265a:	2107      	movs	r1, #7
1a00265c:	6878      	ldr	r0, [r7, #4]
1a00265e:	f7ff ff17 	bl	1a002490 <Chip_UART_SetupFIFOS>
1a002662:	6878      	ldr	r0, [r7, #4]
1a002664:	f7ff fecd 	bl	1a002402 <Chip_UART_TXDisable>
1a002668:	687b      	ldr	r3, [r7, #4]
1a00266a:	2200      	movs	r2, #0
1a00266c:	605a      	str	r2, [r3, #4]
1a00266e:	687b      	ldr	r3, [r7, #4]
1a002670:	2200      	movs	r2, #0
1a002672:	60da      	str	r2, [r3, #12]
1a002674:	687b      	ldr	r3, [r7, #4]
1a002676:	2200      	movs	r2, #0
1a002678:	621a      	str	r2, [r3, #32]
1a00267a:	687b      	ldr	r3, [r7, #4]
1a00267c:	2200      	movs	r2, #0
1a00267e:	64da      	str	r2, [r3, #76]	; 0x4c
1a002680:	687b      	ldr	r3, [r7, #4]
1a002682:	2200      	movs	r2, #0
1a002684:	655a      	str	r2, [r3, #84]	; 0x54
1a002686:	687b      	ldr	r3, [r7, #4]
1a002688:	2200      	movs	r2, #0
1a00268a:	651a      	str	r2, [r3, #80]	; 0x50
1a00268c:	687b      	ldr	r3, [r7, #4]
1a00268e:	4a0b      	ldr	r2, [pc, #44]	; (1a0026bc <Chip_UART_Init+0x84>)
1a002690:	4293      	cmp	r3, r2
1a002692:	d105      	bne.n	1a0026a0 <Chip_UART_Init+0x68>
1a002694:	687b      	ldr	r3, [r7, #4]
1a002696:	2200      	movs	r2, #0
1a002698:	611a      	str	r2, [r3, #16]
1a00269a:	687b      	ldr	r3, [r7, #4]
1a00269c:	699b      	ldr	r3, [r3, #24]
1a00269e:	60fb      	str	r3, [r7, #12]
1a0026a0:	2103      	movs	r1, #3
1a0026a2:	6878      	ldr	r0, [r7, #4]
1a0026a4:	f7ff ff02 	bl	1a0024ac <Chip_UART_ConfigData>
1a0026a8:	687b      	ldr	r3, [r7, #4]
1a0026aa:	2210      	movs	r2, #16
1a0026ac:	629a      	str	r2, [r3, #40]	; 0x28
1a0026ae:	bf00      	nop
1a0026b0:	3710      	adds	r7, #16
1a0026b2:	46bd      	mov	sp, r7
1a0026b4:	bd80      	pop	{r7, pc}
1a0026b6:	bf00      	nop
1a0026b8:	1a0038bc 	.word	0x1a0038bc
1a0026bc:	40082000 	.word	0x40082000

1a0026c0 <Chip_UART_Send>:
1a0026c0:	b580      	push	{r7, lr}
1a0026c2:	b086      	sub	sp, #24
1a0026c4:	af00      	add	r7, sp, #0
1a0026c6:	60f8      	str	r0, [r7, #12]
1a0026c8:	60b9      	str	r1, [r7, #8]
1a0026ca:	607a      	str	r2, [r7, #4]
1a0026cc:	2300      	movs	r3, #0
1a0026ce:	617b      	str	r3, [r7, #20]
1a0026d0:	68bb      	ldr	r3, [r7, #8]
1a0026d2:	613b      	str	r3, [r7, #16]
1a0026d4:	e00b      	b.n	1a0026ee <Chip_UART_Send+0x2e>
1a0026d6:	693b      	ldr	r3, [r7, #16]
1a0026d8:	781b      	ldrb	r3, [r3, #0]
1a0026da:	4619      	mov	r1, r3
1a0026dc:	68f8      	ldr	r0, [r7, #12]
1a0026de:	f7ff fe9d 	bl	1a00241c <Chip_UART_SendByte>
1a0026e2:	693b      	ldr	r3, [r7, #16]
1a0026e4:	3301      	adds	r3, #1
1a0026e6:	613b      	str	r3, [r7, #16]
1a0026e8:	697b      	ldr	r3, [r7, #20]
1a0026ea:	3301      	adds	r3, #1
1a0026ec:	617b      	str	r3, [r7, #20]
1a0026ee:	697a      	ldr	r2, [r7, #20]
1a0026f0:	687b      	ldr	r3, [r7, #4]
1a0026f2:	429a      	cmp	r2, r3
1a0026f4:	da07      	bge.n	1a002706 <Chip_UART_Send+0x46>
1a0026f6:	68f8      	ldr	r0, [r7, #12]
1a0026f8:	f7ff ff1a 	bl	1a002530 <Chip_UART_ReadLineStatus>
1a0026fc:	4603      	mov	r3, r0
1a0026fe:	f003 0320 	and.w	r3, r3, #32
1a002702:	2b00      	cmp	r3, #0
1a002704:	d1e7      	bne.n	1a0026d6 <Chip_UART_Send+0x16>
1a002706:	697b      	ldr	r3, [r7, #20]
1a002708:	4618      	mov	r0, r3
1a00270a:	3718      	adds	r7, #24
1a00270c:	46bd      	mov	sp, r7
1a00270e:	bd80      	pop	{r7, pc}

1a002710 <Chip_UART_SendBlocking>:
1a002710:	b580      	push	{r7, lr}
1a002712:	b088      	sub	sp, #32
1a002714:	af00      	add	r7, sp, #0
1a002716:	60f8      	str	r0, [r7, #12]
1a002718:	60b9      	str	r1, [r7, #8]
1a00271a:	607a      	str	r2, [r7, #4]
1a00271c:	2300      	movs	r3, #0
1a00271e:	61fb      	str	r3, [r7, #28]
1a002720:	68bb      	ldr	r3, [r7, #8]
1a002722:	61bb      	str	r3, [r7, #24]
1a002724:	e011      	b.n	1a00274a <Chip_UART_SendBlocking+0x3a>
1a002726:	687a      	ldr	r2, [r7, #4]
1a002728:	69b9      	ldr	r1, [r7, #24]
1a00272a:	68f8      	ldr	r0, [r7, #12]
1a00272c:	f7ff ffc8 	bl	1a0026c0 <Chip_UART_Send>
1a002730:	6178      	str	r0, [r7, #20]
1a002732:	687a      	ldr	r2, [r7, #4]
1a002734:	697b      	ldr	r3, [r7, #20]
1a002736:	1ad3      	subs	r3, r2, r3
1a002738:	607b      	str	r3, [r7, #4]
1a00273a:	69fa      	ldr	r2, [r7, #28]
1a00273c:	697b      	ldr	r3, [r7, #20]
1a00273e:	4413      	add	r3, r2
1a002740:	61fb      	str	r3, [r7, #28]
1a002742:	697b      	ldr	r3, [r7, #20]
1a002744:	69ba      	ldr	r2, [r7, #24]
1a002746:	4413      	add	r3, r2
1a002748:	61bb      	str	r3, [r7, #24]
1a00274a:	687b      	ldr	r3, [r7, #4]
1a00274c:	2b00      	cmp	r3, #0
1a00274e:	dcea      	bgt.n	1a002726 <Chip_UART_SendBlocking+0x16>
1a002750:	69fb      	ldr	r3, [r7, #28]
1a002752:	4618      	mov	r0, r3
1a002754:	3720      	adds	r7, #32
1a002756:	46bd      	mov	sp, r7
1a002758:	bd80      	pop	{r7, pc}
1a00275a:	Address 0x000000001a00275a is out of bounds.


1a00275c <Chip_UART_SetBaud>:
1a00275c:	b580      	push	{r7, lr}
1a00275e:	b086      	sub	sp, #24
1a002760:	af00      	add	r7, sp, #0
1a002762:	6078      	str	r0, [r7, #4]
1a002764:	6039      	str	r1, [r7, #0]
1a002766:	6878      	ldr	r0, [r7, #4]
1a002768:	f7ff ff00 	bl	1a00256c <Chip_UART_GetIndex>
1a00276c:	4602      	mov	r2, r0
1a00276e:	4b16      	ldr	r3, [pc, #88]	; (1a0027c8 <Chip_UART_SetBaud+0x6c>)
1a002770:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a002774:	4618      	mov	r0, r3
1a002776:	f000 fe3f 	bl	1a0033f8 <Chip_Clock_GetRate>
1a00277a:	6178      	str	r0, [r7, #20]
1a00277c:	683b      	ldr	r3, [r7, #0]
1a00277e:	011b      	lsls	r3, r3, #4
1a002780:	697a      	ldr	r2, [r7, #20]
1a002782:	fbb2 f3f3 	udiv	r3, r2, r3
1a002786:	613b      	str	r3, [r7, #16]
1a002788:	693b      	ldr	r3, [r7, #16]
1a00278a:	0a1b      	lsrs	r3, r3, #8
1a00278c:	60fb      	str	r3, [r7, #12]
1a00278e:	68fb      	ldr	r3, [r7, #12]
1a002790:	021b      	lsls	r3, r3, #8
1a002792:	693a      	ldr	r2, [r7, #16]
1a002794:	1ad3      	subs	r3, r2, r3
1a002796:	60bb      	str	r3, [r7, #8]
1a002798:	6878      	ldr	r0, [r7, #4]
1a00279a:	f7ff fe95 	bl	1a0024c8 <Chip_UART_EnableDivisorAccess>
1a00279e:	68bb      	ldr	r3, [r7, #8]
1a0027a0:	b2db      	uxtb	r3, r3
1a0027a2:	68fa      	ldr	r2, [r7, #12]
1a0027a4:	b2d2      	uxtb	r2, r2
1a0027a6:	4619      	mov	r1, r3
1a0027a8:	6878      	ldr	r0, [r7, #4]
1a0027aa:	f7ff fead 	bl	1a002508 <Chip_UART_SetDivisorLatches>
1a0027ae:	6878      	ldr	r0, [r7, #4]
1a0027b0:	f7ff fe9a 	bl	1a0024e8 <Chip_UART_DisableDivisorAccess>
1a0027b4:	697a      	ldr	r2, [r7, #20]
1a0027b6:	693b      	ldr	r3, [r7, #16]
1a0027b8:	fbb2 f3f3 	udiv	r3, r2, r3
1a0027bc:	091b      	lsrs	r3, r3, #4
1a0027be:	4618      	mov	r0, r3
1a0027c0:	3718      	adds	r7, #24
1a0027c2:	46bd      	mov	sp, r7
1a0027c4:	bd80      	pop	{r7, pc}
1a0027c6:	bf00      	nop
1a0027c8:	1a0038c4 	.word	0x1a0038c4

1a0027cc <Chip_UART_RXIntHandlerRB>:
1a0027cc:	b580      	push	{r7, lr}
1a0027ce:	b084      	sub	sp, #16
1a0027d0:	af00      	add	r7, sp, #0
1a0027d2:	6078      	str	r0, [r7, #4]
1a0027d4:	6039      	str	r1, [r7, #0]
1a0027d6:	e00a      	b.n	1a0027ee <Chip_UART_RXIntHandlerRB+0x22>
1a0027d8:	6878      	ldr	r0, [r7, #4]
1a0027da:	f7ff fe2e 	bl	1a00243a <Chip_UART_ReadByte>
1a0027de:	4603      	mov	r3, r0
1a0027e0:	73fb      	strb	r3, [r7, #15]
1a0027e2:	f107 030f 	add.w	r3, r7, #15
1a0027e6:	4619      	mov	r1, r3
1a0027e8:	6838      	ldr	r0, [r7, #0]
1a0027ea:	f000 f90a 	bl	1a002a02 <RingBuffer_Insert>
1a0027ee:	6878      	ldr	r0, [r7, #4]
1a0027f0:	f7ff fe9e 	bl	1a002530 <Chip_UART_ReadLineStatus>
1a0027f4:	4603      	mov	r3, r0
1a0027f6:	f003 0301 	and.w	r3, r3, #1
1a0027fa:	2b00      	cmp	r3, #0
1a0027fc:	d1ec      	bne.n	1a0027d8 <Chip_UART_RXIntHandlerRB+0xc>
1a0027fe:	bf00      	nop
1a002800:	3710      	adds	r7, #16
1a002802:	46bd      	mov	sp, r7
1a002804:	bd80      	pop	{r7, pc}

1a002806 <Chip_UART_TXIntHandlerRB>:
1a002806:	b580      	push	{r7, lr}
1a002808:	b084      	sub	sp, #16
1a00280a:	af00      	add	r7, sp, #0
1a00280c:	6078      	str	r0, [r7, #4]
1a00280e:	6039      	str	r1, [r7, #0]
1a002810:	e004      	b.n	1a00281c <Chip_UART_TXIntHandlerRB+0x16>
1a002812:	7bfb      	ldrb	r3, [r7, #15]
1a002814:	4619      	mov	r1, r3
1a002816:	6878      	ldr	r0, [r7, #4]
1a002818:	f7ff fe00 	bl	1a00241c <Chip_UART_SendByte>
1a00281c:	6878      	ldr	r0, [r7, #4]
1a00281e:	f7ff fe87 	bl	1a002530 <Chip_UART_ReadLineStatus>
1a002822:	4603      	mov	r3, r0
1a002824:	f003 0320 	and.w	r3, r3, #32
1a002828:	2b00      	cmp	r3, #0
1a00282a:	d008      	beq.n	1a00283e <Chip_UART_TXIntHandlerRB+0x38>
1a00282c:	f107 030f 	add.w	r3, r7, #15
1a002830:	4619      	mov	r1, r3
1a002832:	6838      	ldr	r0, [r7, #0]
1a002834:	f000 f913 	bl	1a002a5e <RingBuffer_Pop>
1a002838:	4603      	mov	r3, r0
1a00283a:	2b00      	cmp	r3, #0
1a00283c:	d1e9      	bne.n	1a002812 <Chip_UART_TXIntHandlerRB+0xc>
1a00283e:	6838      	ldr	r0, [r7, #0]
1a002840:	f7ff fdca 	bl	1a0023d8 <RingBuffer_IsEmpty>
1a002844:	4603      	mov	r3, r0
1a002846:	2b00      	cmp	r3, #0
1a002848:	d003      	beq.n	1a002852 <Chip_UART_TXIntHandlerRB+0x4c>
1a00284a:	2102      	movs	r1, #2
1a00284c:	6878      	ldr	r0, [r7, #4]
1a00284e:	f7ff fe01 	bl	1a002454 <Chip_UART_IntDisable>
1a002852:	bf00      	nop
1a002854:	3710      	adds	r7, #16
1a002856:	46bd      	mov	sp, r7
1a002858:	bd80      	pop	{r7, pc}

1a00285a <Chip_UART_IRQRBHandler>:
1a00285a:	b580      	push	{r7, lr}
1a00285c:	b084      	sub	sp, #16
1a00285e:	af00      	add	r7, sp, #0
1a002860:	60f8      	str	r0, [r7, #12]
1a002862:	60b9      	str	r1, [r7, #8]
1a002864:	607a      	str	r2, [r7, #4]
1a002866:	68fb      	ldr	r3, [r7, #12]
1a002868:	685b      	ldr	r3, [r3, #4]
1a00286a:	f003 0302 	and.w	r3, r3, #2
1a00286e:	2b00      	cmp	r3, #0
1a002870:	d00d      	beq.n	1a00288e <Chip_UART_IRQRBHandler+0x34>
1a002872:	6879      	ldr	r1, [r7, #4]
1a002874:	68f8      	ldr	r0, [r7, #12]
1a002876:	f7ff ffc6 	bl	1a002806 <Chip_UART_TXIntHandlerRB>
1a00287a:	6878      	ldr	r0, [r7, #4]
1a00287c:	f7ff fdac 	bl	1a0023d8 <RingBuffer_IsEmpty>
1a002880:	4603      	mov	r3, r0
1a002882:	2b00      	cmp	r3, #0
1a002884:	d003      	beq.n	1a00288e <Chip_UART_IRQRBHandler+0x34>
1a002886:	2102      	movs	r1, #2
1a002888:	68f8      	ldr	r0, [r7, #12]
1a00288a:	f7ff fde3 	bl	1a002454 <Chip_UART_IntDisable>
1a00288e:	68b9      	ldr	r1, [r7, #8]
1a002890:	68f8      	ldr	r0, [r7, #12]
1a002892:	f7ff ff9b 	bl	1a0027cc <Chip_UART_RXIntHandlerRB>
1a002896:	68f8      	ldr	r0, [r7, #12]
1a002898:	f7ff fe98 	bl	1a0025cc <Chip_UART_ABIntHandler>
1a00289c:	bf00      	nop
1a00289e:	3710      	adds	r7, #16
1a0028a0:	46bd      	mov	sp, r7
1a0028a2:	bd80      	pop	{r7, pc}

1a0028a4 <Chip_TIMER_Enable>:
1a0028a4:	b480      	push	{r7}
1a0028a6:	b083      	sub	sp, #12
1a0028a8:	af00      	add	r7, sp, #0
1a0028aa:	6078      	str	r0, [r7, #4]
1a0028ac:	687b      	ldr	r3, [r7, #4]
1a0028ae:	685b      	ldr	r3, [r3, #4]
1a0028b0:	f043 0201 	orr.w	r2, r3, #1
1a0028b4:	687b      	ldr	r3, [r7, #4]
1a0028b6:	605a      	str	r2, [r3, #4]
1a0028b8:	bf00      	nop
1a0028ba:	370c      	adds	r7, #12
1a0028bc:	46bd      	mov	sp, r7
1a0028be:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0028c2:	4770      	bx	lr

1a0028c4 <Chip_TIMER_PrescaleSet>:
1a0028c4:	b480      	push	{r7}
1a0028c6:	b083      	sub	sp, #12
1a0028c8:	af00      	add	r7, sp, #0
1a0028ca:	6078      	str	r0, [r7, #4]
1a0028cc:	6039      	str	r1, [r7, #0]
1a0028ce:	687b      	ldr	r3, [r7, #4]
1a0028d0:	683a      	ldr	r2, [r7, #0]
1a0028d2:	60da      	str	r2, [r3, #12]
1a0028d4:	bf00      	nop
1a0028d6:	370c      	adds	r7, #12
1a0028d8:	46bd      	mov	sp, r7
1a0028da:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0028de:	4770      	bx	lr

1a0028e0 <StopWatch_Init>:
1a0028e0:	b580      	push	{r7, lr}
1a0028e2:	b082      	sub	sp, #8
1a0028e4:	af00      	add	r7, sp, #0
1a0028e6:	2308      	movs	r3, #8
1a0028e8:	607b      	str	r3, [r7, #4]
1a0028ea:	4814      	ldr	r0, [pc, #80]	; (1a00293c <StopWatch_Init+0x5c>)
1a0028ec:	f000 fe06 	bl	1a0034fc <Chip_TIMER_Init>
1a0028f0:	687b      	ldr	r3, [r7, #4]
1a0028f2:	3b01      	subs	r3, #1
1a0028f4:	4619      	mov	r1, r3
1a0028f6:	4811      	ldr	r0, [pc, #68]	; (1a00293c <StopWatch_Init+0x5c>)
1a0028f8:	f7ff ffe4 	bl	1a0028c4 <Chip_TIMER_PrescaleSet>
1a0028fc:	480f      	ldr	r0, [pc, #60]	; (1a00293c <StopWatch_Init+0x5c>)
1a0028fe:	f7ff ffd1 	bl	1a0028a4 <Chip_TIMER_Enable>
1a002902:	2084      	movs	r0, #132	; 0x84
1a002904:	f000 fd78 	bl	1a0033f8 <Chip_Clock_GetRate>
1a002908:	4602      	mov	r2, r0
1a00290a:	687b      	ldr	r3, [r7, #4]
1a00290c:	fbb2 f3f3 	udiv	r3, r2, r3
1a002910:	4a0b      	ldr	r2, [pc, #44]	; (1a002940 <StopWatch_Init+0x60>)
1a002912:	6013      	str	r3, [r2, #0]
1a002914:	4b0a      	ldr	r3, [pc, #40]	; (1a002940 <StopWatch_Init+0x60>)
1a002916:	681b      	ldr	r3, [r3, #0]
1a002918:	4a0a      	ldr	r2, [pc, #40]	; (1a002944 <StopWatch_Init+0x64>)
1a00291a:	fba2 2303 	umull	r2, r3, r2, r3
1a00291e:	099b      	lsrs	r3, r3, #6
1a002920:	4a09      	ldr	r2, [pc, #36]	; (1a002948 <StopWatch_Init+0x68>)
1a002922:	6013      	str	r3, [r2, #0]
1a002924:	4b06      	ldr	r3, [pc, #24]	; (1a002940 <StopWatch_Init+0x60>)
1a002926:	681b      	ldr	r3, [r3, #0]
1a002928:	4a08      	ldr	r2, [pc, #32]	; (1a00294c <StopWatch_Init+0x6c>)
1a00292a:	fba2 2303 	umull	r2, r3, r2, r3
1a00292e:	0c9b      	lsrs	r3, r3, #18
1a002930:	4a07      	ldr	r2, [pc, #28]	; (1a002950 <StopWatch_Init+0x70>)
1a002932:	6013      	str	r3, [r2, #0]
1a002934:	bf00      	nop
1a002936:	3708      	adds	r7, #8
1a002938:	46bd      	mov	sp, r7
1a00293a:	bd80      	pop	{r7, pc}
1a00293c:	40084000 	.word	0x40084000
1a002940:	10000434 	.word	0x10000434
1a002944:	10624dd3 	.word	0x10624dd3
1a002948:	10000438 	.word	0x10000438
1a00294c:	431bde83 	.word	0x431bde83
1a002950:	1000043c 	.word	0x1000043c

1a002954 <RingBuffer_GetCount>:
1a002954:	b480      	push	{r7}
1a002956:	b083      	sub	sp, #12
1a002958:	af00      	add	r7, sp, #0
1a00295a:	6078      	str	r0, [r7, #4]
1a00295c:	687b      	ldr	r3, [r7, #4]
1a00295e:	330c      	adds	r3, #12
1a002960:	681a      	ldr	r2, [r3, #0]
1a002962:	687b      	ldr	r3, [r7, #4]
1a002964:	3310      	adds	r3, #16
1a002966:	681b      	ldr	r3, [r3, #0]
1a002968:	1ad3      	subs	r3, r2, r3
1a00296a:	4618      	mov	r0, r3
1a00296c:	370c      	adds	r7, #12
1a00296e:	46bd      	mov	sp, r7
1a002970:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002974:	4770      	bx	lr

1a002976 <RingBuffer_IsFull>:
1a002976:	b580      	push	{r7, lr}
1a002978:	b082      	sub	sp, #8
1a00297a:	af00      	add	r7, sp, #0
1a00297c:	6078      	str	r0, [r7, #4]
1a00297e:	6878      	ldr	r0, [r7, #4]
1a002980:	f7ff ffe8 	bl	1a002954 <RingBuffer_GetCount>
1a002984:	4602      	mov	r2, r0
1a002986:	687b      	ldr	r3, [r7, #4]
1a002988:	685b      	ldr	r3, [r3, #4]
1a00298a:	429a      	cmp	r2, r3
1a00298c:	bfac      	ite	ge
1a00298e:	2301      	movge	r3, #1
1a002990:	2300      	movlt	r3, #0
1a002992:	b2db      	uxtb	r3, r3
1a002994:	4618      	mov	r0, r3
1a002996:	3708      	adds	r7, #8
1a002998:	46bd      	mov	sp, r7
1a00299a:	bd80      	pop	{r7, pc}

1a00299c <RingBuffer_IsEmpty>:
1a00299c:	b480      	push	{r7}
1a00299e:	b083      	sub	sp, #12
1a0029a0:	af00      	add	r7, sp, #0
1a0029a2:	6078      	str	r0, [r7, #4]
1a0029a4:	687b      	ldr	r3, [r7, #4]
1a0029a6:	330c      	adds	r3, #12
1a0029a8:	681a      	ldr	r2, [r3, #0]
1a0029aa:	687b      	ldr	r3, [r7, #4]
1a0029ac:	3310      	adds	r3, #16
1a0029ae:	681b      	ldr	r3, [r3, #0]
1a0029b0:	429a      	cmp	r2, r3
1a0029b2:	bf0c      	ite	eq
1a0029b4:	2301      	moveq	r3, #1
1a0029b6:	2300      	movne	r3, #0
1a0029b8:	b2db      	uxtb	r3, r3
1a0029ba:	4618      	mov	r0, r3
1a0029bc:	370c      	adds	r7, #12
1a0029be:	46bd      	mov	sp, r7
1a0029c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0029c4:	4770      	bx	lr

1a0029c6 <RingBuffer_Init>:
1a0029c6:	b480      	push	{r7}
1a0029c8:	b085      	sub	sp, #20
1a0029ca:	af00      	add	r7, sp, #0
1a0029cc:	60f8      	str	r0, [r7, #12]
1a0029ce:	60b9      	str	r1, [r7, #8]
1a0029d0:	607a      	str	r2, [r7, #4]
1a0029d2:	603b      	str	r3, [r7, #0]
1a0029d4:	68fb      	ldr	r3, [r7, #12]
1a0029d6:	68ba      	ldr	r2, [r7, #8]
1a0029d8:	601a      	str	r2, [r3, #0]
1a0029da:	68fb      	ldr	r3, [r7, #12]
1a0029dc:	683a      	ldr	r2, [r7, #0]
1a0029de:	605a      	str	r2, [r3, #4]
1a0029e0:	68fb      	ldr	r3, [r7, #12]
1a0029e2:	687a      	ldr	r2, [r7, #4]
1a0029e4:	609a      	str	r2, [r3, #8]
1a0029e6:	68fb      	ldr	r3, [r7, #12]
1a0029e8:	2200      	movs	r2, #0
1a0029ea:	611a      	str	r2, [r3, #16]
1a0029ec:	68fb      	ldr	r3, [r7, #12]
1a0029ee:	691a      	ldr	r2, [r3, #16]
1a0029f0:	68fb      	ldr	r3, [r7, #12]
1a0029f2:	60da      	str	r2, [r3, #12]
1a0029f4:	2301      	movs	r3, #1
1a0029f6:	4618      	mov	r0, r3
1a0029f8:	3714      	adds	r7, #20
1a0029fa:	46bd      	mov	sp, r7
1a0029fc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002a00:	4770      	bx	lr

1a002a02 <RingBuffer_Insert>:
1a002a02:	b580      	push	{r7, lr}
1a002a04:	b084      	sub	sp, #16
1a002a06:	af00      	add	r7, sp, #0
1a002a08:	6078      	str	r0, [r7, #4]
1a002a0a:	6039      	str	r1, [r7, #0]
1a002a0c:	687b      	ldr	r3, [r7, #4]
1a002a0e:	681b      	ldr	r3, [r3, #0]
1a002a10:	60fb      	str	r3, [r7, #12]
1a002a12:	6878      	ldr	r0, [r7, #4]
1a002a14:	f7ff ffaf 	bl	1a002976 <RingBuffer_IsFull>
1a002a18:	4603      	mov	r3, r0
1a002a1a:	2b00      	cmp	r3, #0
1a002a1c:	d001      	beq.n	1a002a22 <RingBuffer_Insert+0x20>
1a002a1e:	2300      	movs	r3, #0
1a002a20:	e019      	b.n	1a002a56 <RingBuffer_Insert+0x54>
1a002a22:	687b      	ldr	r3, [r7, #4]
1a002a24:	68db      	ldr	r3, [r3, #12]
1a002a26:	687a      	ldr	r2, [r7, #4]
1a002a28:	6852      	ldr	r2, [r2, #4]
1a002a2a:	3a01      	subs	r2, #1
1a002a2c:	4013      	ands	r3, r2
1a002a2e:	687a      	ldr	r2, [r7, #4]
1a002a30:	6892      	ldr	r2, [r2, #8]
1a002a32:	fb02 f303 	mul.w	r3, r2, r3
1a002a36:	68fa      	ldr	r2, [r7, #12]
1a002a38:	4413      	add	r3, r2
1a002a3a:	60fb      	str	r3, [r7, #12]
1a002a3c:	687b      	ldr	r3, [r7, #4]
1a002a3e:	689b      	ldr	r3, [r3, #8]
1a002a40:	461a      	mov	r2, r3
1a002a42:	6839      	ldr	r1, [r7, #0]
1a002a44:	68f8      	ldr	r0, [r7, #12]
1a002a46:	f000 fd69 	bl	1a00351c <memcpy>
1a002a4a:	687b      	ldr	r3, [r7, #4]
1a002a4c:	68db      	ldr	r3, [r3, #12]
1a002a4e:	1c5a      	adds	r2, r3, #1
1a002a50:	687b      	ldr	r3, [r7, #4]
1a002a52:	60da      	str	r2, [r3, #12]
1a002a54:	2301      	movs	r3, #1
1a002a56:	4618      	mov	r0, r3
1a002a58:	3710      	adds	r7, #16
1a002a5a:	46bd      	mov	sp, r7
1a002a5c:	bd80      	pop	{r7, pc}

1a002a5e <RingBuffer_Pop>:
1a002a5e:	b580      	push	{r7, lr}
1a002a60:	b084      	sub	sp, #16
1a002a62:	af00      	add	r7, sp, #0
1a002a64:	6078      	str	r0, [r7, #4]
1a002a66:	6039      	str	r1, [r7, #0]
1a002a68:	687b      	ldr	r3, [r7, #4]
1a002a6a:	681b      	ldr	r3, [r3, #0]
1a002a6c:	60fb      	str	r3, [r7, #12]
1a002a6e:	6878      	ldr	r0, [r7, #4]
1a002a70:	f7ff ff94 	bl	1a00299c <RingBuffer_IsEmpty>
1a002a74:	4603      	mov	r3, r0
1a002a76:	2b00      	cmp	r3, #0
1a002a78:	d001      	beq.n	1a002a7e <RingBuffer_Pop+0x20>
1a002a7a:	2300      	movs	r3, #0
1a002a7c:	e019      	b.n	1a002ab2 <RingBuffer_Pop+0x54>
1a002a7e:	687b      	ldr	r3, [r7, #4]
1a002a80:	691b      	ldr	r3, [r3, #16]
1a002a82:	687a      	ldr	r2, [r7, #4]
1a002a84:	6852      	ldr	r2, [r2, #4]
1a002a86:	3a01      	subs	r2, #1
1a002a88:	4013      	ands	r3, r2
1a002a8a:	687a      	ldr	r2, [r7, #4]
1a002a8c:	6892      	ldr	r2, [r2, #8]
1a002a8e:	fb02 f303 	mul.w	r3, r2, r3
1a002a92:	68fa      	ldr	r2, [r7, #12]
1a002a94:	4413      	add	r3, r2
1a002a96:	60fb      	str	r3, [r7, #12]
1a002a98:	687b      	ldr	r3, [r7, #4]
1a002a9a:	689b      	ldr	r3, [r3, #8]
1a002a9c:	461a      	mov	r2, r3
1a002a9e:	68f9      	ldr	r1, [r7, #12]
1a002aa0:	6838      	ldr	r0, [r7, #0]
1a002aa2:	f000 fd3b 	bl	1a00351c <memcpy>
1a002aa6:	687b      	ldr	r3, [r7, #4]
1a002aa8:	691b      	ldr	r3, [r3, #16]
1a002aaa:	1c5a      	adds	r2, r3, #1
1a002aac:	687b      	ldr	r3, [r7, #4]
1a002aae:	611a      	str	r2, [r3, #16]
1a002ab0:	2301      	movs	r3, #1
1a002ab2:	4618      	mov	r0, r3
1a002ab4:	3710      	adds	r7, #16
1a002ab6:	46bd      	mov	sp, r7
1a002ab8:	bd80      	pop	{r7, pc}

1a002aba <ABS>:
1a002aba:	b480      	push	{r7}
1a002abc:	b083      	sub	sp, #12
1a002abe:	af00      	add	r7, sp, #0
1a002ac0:	6078      	str	r0, [r7, #4]
1a002ac2:	687b      	ldr	r3, [r7, #4]
1a002ac4:	2b00      	cmp	r3, #0
1a002ac6:	da02      	bge.n	1a002ace <ABS+0x14>
1a002ac8:	687b      	ldr	r3, [r7, #4]
1a002aca:	425b      	negs	r3, r3
1a002acc:	e000      	b.n	1a002ad0 <ABS+0x16>
1a002ace:	687b      	ldr	r3, [r7, #4]
1a002ad0:	4618      	mov	r0, r3
1a002ad2:	370c      	adds	r7, #12
1a002ad4:	46bd      	mov	sp, r7
1a002ad6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002ada:	4770      	bx	lr

1a002adc <pll_calc_divs>:
1a002adc:	b580      	push	{r7, lr}
1a002ade:	b088      	sub	sp, #32
1a002ae0:	af00      	add	r7, sp, #0
1a002ae2:	6078      	str	r0, [r7, #4]
1a002ae4:	6039      	str	r1, [r7, #0]
1a002ae6:	687b      	ldr	r3, [r7, #4]
1a002ae8:	61fb      	str	r3, [r7, #28]
1a002aea:	683b      	ldr	r3, [r7, #0]
1a002aec:	681b      	ldr	r3, [r3, #0]
1a002aee:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a002af2:	2b00      	cmp	r3, #0
1a002af4:	d005      	beq.n	1a002b02 <pll_calc_divs+0x26>
1a002af6:	683b      	ldr	r3, [r7, #0]
1a002af8:	681b      	ldr	r3, [r3, #0]
1a002afa:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a002afe:	683b      	ldr	r3, [r7, #0]
1a002b00:	601a      	str	r2, [r3, #0]
1a002b02:	2301      	movs	r3, #1
1a002b04:	61bb      	str	r3, [r7, #24]
1a002b06:	e06f      	b.n	1a002be8 <pll_calc_divs+0x10c>
1a002b08:	2300      	movs	r3, #0
1a002b0a:	613b      	str	r3, [r7, #16]
1a002b0c:	e066      	b.n	1a002bdc <pll_calc_divs+0x100>
1a002b0e:	2301      	movs	r3, #1
1a002b10:	617b      	str	r3, [r7, #20]
1a002b12:	e05a      	b.n	1a002bca <pll_calc_divs+0xee>
1a002b14:	683b      	ldr	r3, [r7, #0]
1a002b16:	681b      	ldr	r3, [r3, #0]
1a002b18:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a002b1c:	2b00      	cmp	r3, #0
1a002b1e:	d00e      	beq.n	1a002b3e <pll_calc_divs+0x62>
1a002b20:	693b      	ldr	r3, [r7, #16]
1a002b22:	3301      	adds	r3, #1
1a002b24:	697a      	ldr	r2, [r7, #20]
1a002b26:	fa02 f303 	lsl.w	r3, r2, r3
1a002b2a:	461a      	mov	r2, r3
1a002b2c:	683b      	ldr	r3, [r7, #0]
1a002b2e:	695b      	ldr	r3, [r3, #20]
1a002b30:	fb03 f202 	mul.w	r2, r3, r2
1a002b34:	69bb      	ldr	r3, [r7, #24]
1a002b36:	fbb2 f3f3 	udiv	r3, r2, r3
1a002b3a:	60fb      	str	r3, [r7, #12]
1a002b3c:	e008      	b.n	1a002b50 <pll_calc_divs+0x74>
1a002b3e:	683b      	ldr	r3, [r7, #0]
1a002b40:	695b      	ldr	r3, [r3, #20]
1a002b42:	697a      	ldr	r2, [r7, #20]
1a002b44:	fb02 f203 	mul.w	r2, r2, r3
1a002b48:	69bb      	ldr	r3, [r7, #24]
1a002b4a:	fbb2 f3f3 	udiv	r3, r2, r3
1a002b4e:	60fb      	str	r3, [r7, #12]
1a002b50:	68fb      	ldr	r3, [r7, #12]
1a002b52:	4a29      	ldr	r2, [pc, #164]	; (1a002bf8 <pll_calc_divs+0x11c>)
1a002b54:	4293      	cmp	r3, r2
1a002b56:	d934      	bls.n	1a002bc2 <pll_calc_divs+0xe6>
1a002b58:	68fb      	ldr	r3, [r7, #12]
1a002b5a:	4a28      	ldr	r2, [pc, #160]	; (1a002bfc <pll_calc_divs+0x120>)
1a002b5c:	4293      	cmp	r3, r2
1a002b5e:	d839      	bhi.n	1a002bd4 <pll_calc_divs+0xf8>
1a002b60:	683b      	ldr	r3, [r7, #0]
1a002b62:	681b      	ldr	r3, [r3, #0]
1a002b64:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a002b68:	2b00      	cmp	r3, #0
1a002b6a:	d002      	beq.n	1a002b72 <pll_calc_divs+0x96>
1a002b6c:	68fb      	ldr	r3, [r7, #12]
1a002b6e:	60bb      	str	r3, [r7, #8]
1a002b70:	e005      	b.n	1a002b7e <pll_calc_divs+0xa2>
1a002b72:	693b      	ldr	r3, [r7, #16]
1a002b74:	3301      	adds	r3, #1
1a002b76:	68fa      	ldr	r2, [r7, #12]
1a002b78:	fa22 f303 	lsr.w	r3, r2, r3
1a002b7c:	60bb      	str	r3, [r7, #8]
1a002b7e:	687a      	ldr	r2, [r7, #4]
1a002b80:	68bb      	ldr	r3, [r7, #8]
1a002b82:	1ad3      	subs	r3, r2, r3
1a002b84:	4618      	mov	r0, r3
1a002b86:	f7ff ff98 	bl	1a002aba <ABS>
1a002b8a:	4602      	mov	r2, r0
1a002b8c:	69fb      	ldr	r3, [r7, #28]
1a002b8e:	4293      	cmp	r3, r2
1a002b90:	d918      	bls.n	1a002bc4 <pll_calc_divs+0xe8>
1a002b92:	683b      	ldr	r3, [r7, #0]
1a002b94:	69ba      	ldr	r2, [r7, #24]
1a002b96:	609a      	str	r2, [r3, #8]
1a002b98:	693b      	ldr	r3, [r7, #16]
1a002b9a:	1c5a      	adds	r2, r3, #1
1a002b9c:	683b      	ldr	r3, [r7, #0]
1a002b9e:	60da      	str	r2, [r3, #12]
1a002ba0:	683b      	ldr	r3, [r7, #0]
1a002ba2:	697a      	ldr	r2, [r7, #20]
1a002ba4:	611a      	str	r2, [r3, #16]
1a002ba6:	683b      	ldr	r3, [r7, #0]
1a002ba8:	68ba      	ldr	r2, [r7, #8]
1a002baa:	619a      	str	r2, [r3, #24]
1a002bac:	683b      	ldr	r3, [r7, #0]
1a002bae:	68fa      	ldr	r2, [r7, #12]
1a002bb0:	61da      	str	r2, [r3, #28]
1a002bb2:	687a      	ldr	r2, [r7, #4]
1a002bb4:	68bb      	ldr	r3, [r7, #8]
1a002bb6:	1ad3      	subs	r3, r2, r3
1a002bb8:	4618      	mov	r0, r3
1a002bba:	f7ff ff7e 	bl	1a002aba <ABS>
1a002bbe:	61f8      	str	r0, [r7, #28]
1a002bc0:	e000      	b.n	1a002bc4 <pll_calc_divs+0xe8>
1a002bc2:	bf00      	nop
1a002bc4:	697b      	ldr	r3, [r7, #20]
1a002bc6:	3301      	adds	r3, #1
1a002bc8:	617b      	str	r3, [r7, #20]
1a002bca:	697b      	ldr	r3, [r7, #20]
1a002bcc:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a002bd0:	dda0      	ble.n	1a002b14 <pll_calc_divs+0x38>
1a002bd2:	e000      	b.n	1a002bd6 <pll_calc_divs+0xfa>
1a002bd4:	bf00      	nop
1a002bd6:	693b      	ldr	r3, [r7, #16]
1a002bd8:	3301      	adds	r3, #1
1a002bda:	613b      	str	r3, [r7, #16]
1a002bdc:	693b      	ldr	r3, [r7, #16]
1a002bde:	2b03      	cmp	r3, #3
1a002be0:	dd95      	ble.n	1a002b0e <pll_calc_divs+0x32>
1a002be2:	69bb      	ldr	r3, [r7, #24]
1a002be4:	3301      	adds	r3, #1
1a002be6:	61bb      	str	r3, [r7, #24]
1a002be8:	69bb      	ldr	r3, [r7, #24]
1a002bea:	2b04      	cmp	r3, #4
1a002bec:	dd8c      	ble.n	1a002b08 <pll_calc_divs+0x2c>
1a002bee:	bf00      	nop
1a002bf0:	3720      	adds	r7, #32
1a002bf2:	46bd      	mov	sp, r7
1a002bf4:	bd80      	pop	{r7, pc}
1a002bf6:	bf00      	nop
1a002bf8:	094c5eff 	.word	0x094c5eff
1a002bfc:	1312d000 	.word	0x1312d000

1a002c00 <pll_get_frac>:
1a002c00:	b5b0      	push	{r4, r5, r7, lr}
1a002c02:	b09e      	sub	sp, #120	; 0x78
1a002c04:	af00      	add	r7, sp, #0
1a002c06:	6078      	str	r0, [r7, #4]
1a002c08:	6039      	str	r1, [r7, #0]
1a002c0a:	f107 030c 	add.w	r3, r7, #12
1a002c0e:	2260      	movs	r2, #96	; 0x60
1a002c10:	2100      	movs	r1, #0
1a002c12:	4618      	mov	r0, r3
1a002c14:	f7fd fb74 	bl	1a000300 <memset>
1a002c18:	68fb      	ldr	r3, [r7, #12]
1a002c1a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a002c1e:	60fb      	str	r3, [r7, #12]
1a002c20:	683b      	ldr	r3, [r7, #0]
1a002c22:	695b      	ldr	r3, [r3, #20]
1a002c24:	623b      	str	r3, [r7, #32]
1a002c26:	683b      	ldr	r3, [r7, #0]
1a002c28:	791b      	ldrb	r3, [r3, #4]
1a002c2a:	743b      	strb	r3, [r7, #16]
1a002c2c:	f107 030c 	add.w	r3, r7, #12
1a002c30:	4619      	mov	r1, r3
1a002c32:	6878      	ldr	r0, [r7, #4]
1a002c34:	f7ff ff52 	bl	1a002adc <pll_calc_divs>
1a002c38:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a002c3a:	687a      	ldr	r2, [r7, #4]
1a002c3c:	429a      	cmp	r2, r3
1a002c3e:	d10a      	bne.n	1a002c56 <pll_get_frac+0x56>
1a002c40:	683b      	ldr	r3, [r7, #0]
1a002c42:	461d      	mov	r5, r3
1a002c44:	f107 040c 	add.w	r4, r7, #12
1a002c48:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002c4a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002c4c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002c50:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002c54:	e08e      	b.n	1a002d74 <pll_get_frac+0x174>
1a002c56:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a002c58:	687a      	ldr	r2, [r7, #4]
1a002c5a:	1ad3      	subs	r3, r2, r3
1a002c5c:	4618      	mov	r0, r3
1a002c5e:	f7ff ff2c 	bl	1a002aba <ABS>
1a002c62:	4603      	mov	r3, r0
1a002c64:	66fb      	str	r3, [r7, #108]	; 0x6c
1a002c66:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a002c68:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a002c6c:	64fb      	str	r3, [r7, #76]	; 0x4c
1a002c6e:	683b      	ldr	r3, [r7, #0]
1a002c70:	695b      	ldr	r3, [r3, #20]
1a002c72:	663b      	str	r3, [r7, #96]	; 0x60
1a002c74:	683b      	ldr	r3, [r7, #0]
1a002c76:	791b      	ldrb	r3, [r3, #4]
1a002c78:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a002c7c:	f107 030c 	add.w	r3, r7, #12
1a002c80:	3340      	adds	r3, #64	; 0x40
1a002c82:	4619      	mov	r1, r3
1a002c84:	6878      	ldr	r0, [r7, #4]
1a002c86:	f7ff ff29 	bl	1a002adc <pll_calc_divs>
1a002c8a:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a002c8c:	687a      	ldr	r2, [r7, #4]
1a002c8e:	429a      	cmp	r2, r3
1a002c90:	d10a      	bne.n	1a002ca8 <pll_get_frac+0xa8>
1a002c92:	683b      	ldr	r3, [r7, #0]
1a002c94:	461d      	mov	r5, r3
1a002c96:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a002c9a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002c9c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002c9e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002ca2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002ca6:	e065      	b.n	1a002d74 <pll_get_frac+0x174>
1a002ca8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a002caa:	687a      	ldr	r2, [r7, #4]
1a002cac:	1ad3      	subs	r3, r2, r3
1a002cae:	4618      	mov	r0, r3
1a002cb0:	f7ff ff03 	bl	1a002aba <ABS>
1a002cb4:	4603      	mov	r3, r0
1a002cb6:	677b      	str	r3, [r7, #116]	; 0x74
1a002cb8:	687b      	ldr	r3, [r7, #4]
1a002cba:	4a30      	ldr	r2, [pc, #192]	; (1a002d7c <pll_get_frac+0x17c>)
1a002cbc:	4293      	cmp	r3, r2
1a002cbe:	d81a      	bhi.n	1a002cf6 <pll_get_frac+0xf6>
1a002cc0:	2340      	movs	r3, #64	; 0x40
1a002cc2:	62fb      	str	r3, [r7, #44]	; 0x2c
1a002cc4:	683b      	ldr	r3, [r7, #0]
1a002cc6:	695b      	ldr	r3, [r3, #20]
1a002cc8:	643b      	str	r3, [r7, #64]	; 0x40
1a002cca:	f107 030c 	add.w	r3, r7, #12
1a002cce:	3320      	adds	r3, #32
1a002cd0:	4619      	mov	r1, r3
1a002cd2:	6878      	ldr	r0, [r7, #4]
1a002cd4:	f7ff ff02 	bl	1a002adc <pll_calc_divs>
1a002cd8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a002cda:	687a      	ldr	r2, [r7, #4]
1a002cdc:	429a      	cmp	r2, r3
1a002cde:	d10a      	bne.n	1a002cf6 <pll_get_frac+0xf6>
1a002ce0:	683b      	ldr	r3, [r7, #0]
1a002ce2:	461d      	mov	r5, r3
1a002ce4:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a002ce8:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002cea:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002cec:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002cf0:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002cf4:	e03e      	b.n	1a002d74 <pll_get_frac+0x174>
1a002cf6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a002cf8:	687a      	ldr	r2, [r7, #4]
1a002cfa:	1ad3      	subs	r3, r2, r3
1a002cfc:	4618      	mov	r0, r3
1a002cfe:	f7ff fedc 	bl	1a002aba <ABS>
1a002d02:	4603      	mov	r3, r0
1a002d04:	673b      	str	r3, [r7, #112]	; 0x70
1a002d06:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a002d08:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a002d0a:	429a      	cmp	r2, r3
1a002d0c:	dc19      	bgt.n	1a002d42 <pll_get_frac+0x142>
1a002d0e:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a002d10:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a002d12:	429a      	cmp	r2, r3
1a002d14:	dc0a      	bgt.n	1a002d2c <pll_get_frac+0x12c>
1a002d16:	683b      	ldr	r3, [r7, #0]
1a002d18:	461d      	mov	r5, r3
1a002d1a:	f107 040c 	add.w	r4, r7, #12
1a002d1e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002d20:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002d22:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002d26:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002d2a:	e023      	b.n	1a002d74 <pll_get_frac+0x174>
1a002d2c:	683b      	ldr	r3, [r7, #0]
1a002d2e:	461d      	mov	r5, r3
1a002d30:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a002d34:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002d36:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002d38:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002d3c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002d40:	e018      	b.n	1a002d74 <pll_get_frac+0x174>
1a002d42:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a002d44:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a002d46:	429a      	cmp	r2, r3
1a002d48:	dc0a      	bgt.n	1a002d60 <pll_get_frac+0x160>
1a002d4a:	683b      	ldr	r3, [r7, #0]
1a002d4c:	461d      	mov	r5, r3
1a002d4e:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a002d52:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002d54:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002d56:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002d5a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002d5e:	e009      	b.n	1a002d74 <pll_get_frac+0x174>
1a002d60:	683b      	ldr	r3, [r7, #0]
1a002d62:	461d      	mov	r5, r3
1a002d64:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a002d68:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002d6a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002d6c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002d70:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002d74:	3778      	adds	r7, #120	; 0x78
1a002d76:	46bd      	mov	sp, r7
1a002d78:	bdb0      	pop	{r4, r5, r7, pc}
1a002d7a:	bf00      	nop
1a002d7c:	068e7780 	.word	0x068e7780

1a002d80 <Chip_Clock_GetDivRate>:
1a002d80:	b580      	push	{r7, lr}
1a002d82:	b084      	sub	sp, #16
1a002d84:	af00      	add	r7, sp, #0
1a002d86:	4603      	mov	r3, r0
1a002d88:	460a      	mov	r2, r1
1a002d8a:	71fb      	strb	r3, [r7, #7]
1a002d8c:	4613      	mov	r3, r2
1a002d8e:	71bb      	strb	r3, [r7, #6]
1a002d90:	79bb      	ldrb	r3, [r7, #6]
1a002d92:	4618      	mov	r0, r3
1a002d94:	f000 f960 	bl	1a003058 <Chip_Clock_GetDividerSource>
1a002d98:	4603      	mov	r3, r0
1a002d9a:	73fb      	strb	r3, [r7, #15]
1a002d9c:	79bb      	ldrb	r3, [r7, #6]
1a002d9e:	4618      	mov	r0, r3
1a002da0:	f000 f97a 	bl	1a003098 <Chip_Clock_GetDividerDivisor>
1a002da4:	60b8      	str	r0, [r7, #8]
1a002da6:	7bfb      	ldrb	r3, [r7, #15]
1a002da8:	4618      	mov	r0, r3
1a002daa:	f000 f991 	bl	1a0030d0 <Chip_Clock_GetClockInputHz>
1a002dae:	4602      	mov	r2, r0
1a002db0:	68bb      	ldr	r3, [r7, #8]
1a002db2:	3301      	adds	r3, #1
1a002db4:	fbb2 f3f3 	udiv	r3, r2, r3
1a002db8:	4618      	mov	r0, r3
1a002dba:	3710      	adds	r7, #16
1a002dbc:	46bd      	mov	sp, r7
1a002dbe:	bd80      	pop	{r7, pc}

1a002dc0 <Chip_Clock_FindBaseClock>:
1a002dc0:	b480      	push	{r7}
1a002dc2:	b085      	sub	sp, #20
1a002dc4:	af00      	add	r7, sp, #0
1a002dc6:	4603      	mov	r3, r0
1a002dc8:	80fb      	strh	r3, [r7, #6]
1a002dca:	231c      	movs	r3, #28
1a002dcc:	73fb      	strb	r3, [r7, #15]
1a002dce:	2300      	movs	r3, #0
1a002dd0:	60bb      	str	r3, [r7, #8]
1a002dd2:	e024      	b.n	1a002e1e <Chip_Clock_FindBaseClock+0x5e>
1a002dd4:	491d      	ldr	r1, [pc, #116]	; (1a002e4c <Chip_Clock_FindBaseClock+0x8c>)
1a002dd6:	68ba      	ldr	r2, [r7, #8]
1a002dd8:	4613      	mov	r3, r2
1a002dda:	005b      	lsls	r3, r3, #1
1a002ddc:	4413      	add	r3, r2
1a002dde:	005b      	lsls	r3, r3, #1
1a002de0:	440b      	add	r3, r1
1a002de2:	881b      	ldrh	r3, [r3, #0]
1a002de4:	88fa      	ldrh	r2, [r7, #6]
1a002de6:	429a      	cmp	r2, r3
1a002de8:	d316      	bcc.n	1a002e18 <Chip_Clock_FindBaseClock+0x58>
1a002dea:	4918      	ldr	r1, [pc, #96]	; (1a002e4c <Chip_Clock_FindBaseClock+0x8c>)
1a002dec:	68ba      	ldr	r2, [r7, #8]
1a002dee:	4613      	mov	r3, r2
1a002df0:	005b      	lsls	r3, r3, #1
1a002df2:	4413      	add	r3, r2
1a002df4:	005b      	lsls	r3, r3, #1
1a002df6:	440b      	add	r3, r1
1a002df8:	3302      	adds	r3, #2
1a002dfa:	881b      	ldrh	r3, [r3, #0]
1a002dfc:	88fa      	ldrh	r2, [r7, #6]
1a002dfe:	429a      	cmp	r2, r3
1a002e00:	d80a      	bhi.n	1a002e18 <Chip_Clock_FindBaseClock+0x58>
1a002e02:	4912      	ldr	r1, [pc, #72]	; (1a002e4c <Chip_Clock_FindBaseClock+0x8c>)
1a002e04:	68ba      	ldr	r2, [r7, #8]
1a002e06:	4613      	mov	r3, r2
1a002e08:	005b      	lsls	r3, r3, #1
1a002e0a:	4413      	add	r3, r2
1a002e0c:	005b      	lsls	r3, r3, #1
1a002e0e:	440b      	add	r3, r1
1a002e10:	3304      	adds	r3, #4
1a002e12:	781b      	ldrb	r3, [r3, #0]
1a002e14:	73fb      	strb	r3, [r7, #15]
1a002e16:	e002      	b.n	1a002e1e <Chip_Clock_FindBaseClock+0x5e>
1a002e18:	68bb      	ldr	r3, [r7, #8]
1a002e1a:	3301      	adds	r3, #1
1a002e1c:	60bb      	str	r3, [r7, #8]
1a002e1e:	7bfb      	ldrb	r3, [r7, #15]
1a002e20:	2b1c      	cmp	r3, #28
1a002e22:	d10b      	bne.n	1a002e3c <Chip_Clock_FindBaseClock+0x7c>
1a002e24:	4909      	ldr	r1, [pc, #36]	; (1a002e4c <Chip_Clock_FindBaseClock+0x8c>)
1a002e26:	68ba      	ldr	r2, [r7, #8]
1a002e28:	4613      	mov	r3, r2
1a002e2a:	005b      	lsls	r3, r3, #1
1a002e2c:	4413      	add	r3, r2
1a002e2e:	005b      	lsls	r3, r3, #1
1a002e30:	440b      	add	r3, r1
1a002e32:	3304      	adds	r3, #4
1a002e34:	781b      	ldrb	r3, [r3, #0]
1a002e36:	7bfa      	ldrb	r2, [r7, #15]
1a002e38:	429a      	cmp	r2, r3
1a002e3a:	d1cb      	bne.n	1a002dd4 <Chip_Clock_FindBaseClock+0x14>
1a002e3c:	7bfb      	ldrb	r3, [r7, #15]
1a002e3e:	4618      	mov	r0, r3
1a002e40:	3714      	adds	r7, #20
1a002e42:	46bd      	mov	sp, r7
1a002e44:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002e48:	4770      	bx	lr
1a002e4a:	bf00      	nop
1a002e4c:	1a0038cc 	.word	0x1a0038cc

1a002e50 <Chip_Clock_EnableCrystal>:
1a002e50:	b480      	push	{r7}
1a002e52:	b083      	sub	sp, #12
1a002e54:	af00      	add	r7, sp, #0
1a002e56:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a002e5a:	603b      	str	r3, [r7, #0]
1a002e5c:	4b15      	ldr	r3, [pc, #84]	; (1a002eb4 <Chip_Clock_EnableCrystal+0x64>)
1a002e5e:	699b      	ldr	r3, [r3, #24]
1a002e60:	607b      	str	r3, [r7, #4]
1a002e62:	687b      	ldr	r3, [r7, #4]
1a002e64:	f023 0302 	bic.w	r3, r3, #2
1a002e68:	607b      	str	r3, [r7, #4]
1a002e6a:	4b12      	ldr	r3, [pc, #72]	; (1a002eb4 <Chip_Clock_EnableCrystal+0x64>)
1a002e6c:	699b      	ldr	r3, [r3, #24]
1a002e6e:	687a      	ldr	r2, [r7, #4]
1a002e70:	429a      	cmp	r2, r3
1a002e72:	d002      	beq.n	1a002e7a <Chip_Clock_EnableCrystal+0x2a>
1a002e74:	4a0f      	ldr	r2, [pc, #60]	; (1a002eb4 <Chip_Clock_EnableCrystal+0x64>)
1a002e76:	687b      	ldr	r3, [r7, #4]
1a002e78:	6193      	str	r3, [r2, #24]
1a002e7a:	687b      	ldr	r3, [r7, #4]
1a002e7c:	f023 0301 	bic.w	r3, r3, #1
1a002e80:	607b      	str	r3, [r7, #4]
1a002e82:	4b0d      	ldr	r3, [pc, #52]	; (1a002eb8 <Chip_Clock_EnableCrystal+0x68>)
1a002e84:	681b      	ldr	r3, [r3, #0]
1a002e86:	4a0d      	ldr	r2, [pc, #52]	; (1a002ebc <Chip_Clock_EnableCrystal+0x6c>)
1a002e88:	4293      	cmp	r3, r2
1a002e8a:	d903      	bls.n	1a002e94 <Chip_Clock_EnableCrystal+0x44>
1a002e8c:	687b      	ldr	r3, [r7, #4]
1a002e8e:	f043 0304 	orr.w	r3, r3, #4
1a002e92:	607b      	str	r3, [r7, #4]
1a002e94:	4a07      	ldr	r2, [pc, #28]	; (1a002eb4 <Chip_Clock_EnableCrystal+0x64>)
1a002e96:	687b      	ldr	r3, [r7, #4]
1a002e98:	6193      	str	r3, [r2, #24]
1a002e9a:	bf00      	nop
1a002e9c:	683b      	ldr	r3, [r7, #0]
1a002e9e:	1e5a      	subs	r2, r3, #1
1a002ea0:	603a      	str	r2, [r7, #0]
1a002ea2:	2b00      	cmp	r3, #0
1a002ea4:	d1fa      	bne.n	1a002e9c <Chip_Clock_EnableCrystal+0x4c>
1a002ea6:	bf00      	nop
1a002ea8:	370c      	adds	r7, #12
1a002eaa:	46bd      	mov	sp, r7
1a002eac:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002eb0:	4770      	bx	lr
1a002eb2:	bf00      	nop
1a002eb4:	40050000 	.word	0x40050000
1a002eb8:	1a00385c 	.word	0x1a00385c
1a002ebc:	01312cff 	.word	0x01312cff

1a002ec0 <Chip_Clock_CalcMainPLLValue>:
1a002ec0:	b580      	push	{r7, lr}
1a002ec2:	b082      	sub	sp, #8
1a002ec4:	af00      	add	r7, sp, #0
1a002ec6:	6078      	str	r0, [r7, #4]
1a002ec8:	6039      	str	r1, [r7, #0]
1a002eca:	683b      	ldr	r3, [r7, #0]
1a002ecc:	791b      	ldrb	r3, [r3, #4]
1a002ece:	4618      	mov	r0, r3
1a002ed0:	f000 f8fe 	bl	1a0030d0 <Chip_Clock_GetClockInputHz>
1a002ed4:	4602      	mov	r2, r0
1a002ed6:	683b      	ldr	r3, [r7, #0]
1a002ed8:	615a      	str	r2, [r3, #20]
1a002eda:	687b      	ldr	r3, [r7, #4]
1a002edc:	4a2b      	ldr	r2, [pc, #172]	; (1a002f8c <Chip_Clock_CalcMainPLLValue+0xcc>)
1a002ede:	4293      	cmp	r3, r2
1a002ee0:	d807      	bhi.n	1a002ef2 <Chip_Clock_CalcMainPLLValue+0x32>
1a002ee2:	687b      	ldr	r3, [r7, #4]
1a002ee4:	4a2a      	ldr	r2, [pc, #168]	; (1a002f90 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a002ee6:	4293      	cmp	r3, r2
1a002ee8:	d903      	bls.n	1a002ef2 <Chip_Clock_CalcMainPLLValue+0x32>
1a002eea:	683b      	ldr	r3, [r7, #0]
1a002eec:	695b      	ldr	r3, [r3, #20]
1a002eee:	2b00      	cmp	r3, #0
1a002ef0:	d102      	bne.n	1a002ef8 <Chip_Clock_CalcMainPLLValue+0x38>
1a002ef2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002ef6:	e044      	b.n	1a002f82 <Chip_Clock_CalcMainPLLValue+0xc2>
1a002ef8:	683b      	ldr	r3, [r7, #0]
1a002efa:	2280      	movs	r2, #128	; 0x80
1a002efc:	601a      	str	r2, [r3, #0]
1a002efe:	683b      	ldr	r3, [r7, #0]
1a002f00:	2200      	movs	r2, #0
1a002f02:	609a      	str	r2, [r3, #8]
1a002f04:	683b      	ldr	r3, [r7, #0]
1a002f06:	2200      	movs	r2, #0
1a002f08:	60da      	str	r2, [r3, #12]
1a002f0a:	683b      	ldr	r3, [r7, #0]
1a002f0c:	695b      	ldr	r3, [r3, #20]
1a002f0e:	687a      	ldr	r2, [r7, #4]
1a002f10:	fbb2 f3f3 	udiv	r3, r2, r3
1a002f14:	461a      	mov	r2, r3
1a002f16:	683b      	ldr	r3, [r7, #0]
1a002f18:	611a      	str	r2, [r3, #16]
1a002f1a:	687b      	ldr	r3, [r7, #4]
1a002f1c:	4a1d      	ldr	r2, [pc, #116]	; (1a002f94 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a002f1e:	4293      	cmp	r3, r2
1a002f20:	d909      	bls.n	1a002f36 <Chip_Clock_CalcMainPLLValue+0x76>
1a002f22:	683b      	ldr	r3, [r7, #0]
1a002f24:	691b      	ldr	r3, [r3, #16]
1a002f26:	461a      	mov	r2, r3
1a002f28:	683b      	ldr	r3, [r7, #0]
1a002f2a:	695b      	ldr	r3, [r3, #20]
1a002f2c:	fb03 f302 	mul.w	r3, r3, r2
1a002f30:	687a      	ldr	r2, [r7, #4]
1a002f32:	429a      	cmp	r2, r3
1a002f34:	d00f      	beq.n	1a002f56 <Chip_Clock_CalcMainPLLValue+0x96>
1a002f36:	6839      	ldr	r1, [r7, #0]
1a002f38:	6878      	ldr	r0, [r7, #4]
1a002f3a:	f7ff fe61 	bl	1a002c00 <pll_get_frac>
1a002f3e:	683b      	ldr	r3, [r7, #0]
1a002f40:	689b      	ldr	r3, [r3, #8]
1a002f42:	2b00      	cmp	r3, #0
1a002f44:	d102      	bne.n	1a002f4c <Chip_Clock_CalcMainPLLValue+0x8c>
1a002f46:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002f4a:	e01a      	b.n	1a002f82 <Chip_Clock_CalcMainPLLValue+0xc2>
1a002f4c:	683b      	ldr	r3, [r7, #0]
1a002f4e:	689b      	ldr	r3, [r3, #8]
1a002f50:	1e5a      	subs	r2, r3, #1
1a002f52:	683b      	ldr	r3, [r7, #0]
1a002f54:	609a      	str	r2, [r3, #8]
1a002f56:	683b      	ldr	r3, [r7, #0]
1a002f58:	691b      	ldr	r3, [r3, #16]
1a002f5a:	2b00      	cmp	r3, #0
1a002f5c:	d102      	bne.n	1a002f64 <Chip_Clock_CalcMainPLLValue+0xa4>
1a002f5e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002f62:	e00e      	b.n	1a002f82 <Chip_Clock_CalcMainPLLValue+0xc2>
1a002f64:	683b      	ldr	r3, [r7, #0]
1a002f66:	68db      	ldr	r3, [r3, #12]
1a002f68:	2b00      	cmp	r3, #0
1a002f6a:	d004      	beq.n	1a002f76 <Chip_Clock_CalcMainPLLValue+0xb6>
1a002f6c:	683b      	ldr	r3, [r7, #0]
1a002f6e:	68db      	ldr	r3, [r3, #12]
1a002f70:	1e5a      	subs	r2, r3, #1
1a002f72:	683b      	ldr	r3, [r7, #0]
1a002f74:	60da      	str	r2, [r3, #12]
1a002f76:	683b      	ldr	r3, [r7, #0]
1a002f78:	691b      	ldr	r3, [r3, #16]
1a002f7a:	1e5a      	subs	r2, r3, #1
1a002f7c:	683b      	ldr	r3, [r7, #0]
1a002f7e:	611a      	str	r2, [r3, #16]
1a002f80:	2300      	movs	r3, #0
1a002f82:	4618      	mov	r0, r3
1a002f84:	3708      	adds	r7, #8
1a002f86:	46bd      	mov	sp, r7
1a002f88:	bd80      	pop	{r7, pc}
1a002f8a:	bf00      	nop
1a002f8c:	0c28cb00 	.word	0x0c28cb00
1a002f90:	0094c5ef 	.word	0x0094c5ef
1a002f94:	094c5eff 	.word	0x094c5eff

1a002f98 <Chip_Clock_GetMainPLLHz>:
1a002f98:	b580      	push	{r7, lr}
1a002f9a:	b08c      	sub	sp, #48	; 0x30
1a002f9c:	af00      	add	r7, sp, #0
1a002f9e:	4b2c      	ldr	r3, [pc, #176]	; (1a003050 <Chip_Clock_GetMainPLLHz+0xb8>)
1a002fa0:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a002fa2:	62fb      	str	r3, [r7, #44]	; 0x2c
1a002fa4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002fa6:	0e1b      	lsrs	r3, r3, #24
1a002fa8:	b2db      	uxtb	r3, r3
1a002faa:	f003 030f 	and.w	r3, r3, #15
1a002fae:	b2db      	uxtb	r3, r3
1a002fb0:	4618      	mov	r0, r3
1a002fb2:	f000 f88d 	bl	1a0030d0 <Chip_Clock_GetClockInputHz>
1a002fb6:	62b8      	str	r0, [r7, #40]	; 0x28
1a002fb8:	4b26      	ldr	r3, [pc, #152]	; (1a003054 <Chip_Clock_GetMainPLLHz+0xbc>)
1a002fba:	681b      	ldr	r3, [r3, #0]
1a002fbc:	607b      	str	r3, [r7, #4]
1a002fbe:	4b24      	ldr	r3, [pc, #144]	; (1a003050 <Chip_Clock_GetMainPLLHz+0xb8>)
1a002fc0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a002fc2:	f003 0301 	and.w	r3, r3, #1
1a002fc6:	2b00      	cmp	r3, #0
1a002fc8:	d101      	bne.n	1a002fce <Chip_Clock_GetMainPLLHz+0x36>
1a002fca:	2300      	movs	r3, #0
1a002fcc:	e03b      	b.n	1a003046 <Chip_Clock_GetMainPLLHz+0xae>
1a002fce:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002fd0:	0c1b      	lsrs	r3, r3, #16
1a002fd2:	b2db      	uxtb	r3, r3
1a002fd4:	627b      	str	r3, [r7, #36]	; 0x24
1a002fd6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002fd8:	0b1b      	lsrs	r3, r3, #12
1a002fda:	f003 0303 	and.w	r3, r3, #3
1a002fde:	623b      	str	r3, [r7, #32]
1a002fe0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002fe2:	0a1b      	lsrs	r3, r3, #8
1a002fe4:	f003 0303 	and.w	r3, r3, #3
1a002fe8:	61fb      	str	r3, [r7, #28]
1a002fea:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002fec:	09db      	lsrs	r3, r3, #7
1a002fee:	f003 0301 	and.w	r3, r3, #1
1a002ff2:	61bb      	str	r3, [r7, #24]
1a002ff4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002ff6:	099b      	lsrs	r3, r3, #6
1a002ff8:	f003 0301 	and.w	r3, r3, #1
1a002ffc:	617b      	str	r3, [r7, #20]
1a002ffe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a003000:	3301      	adds	r3, #1
1a003002:	613b      	str	r3, [r7, #16]
1a003004:	6a3b      	ldr	r3, [r7, #32]
1a003006:	3301      	adds	r3, #1
1a003008:	60fb      	str	r3, [r7, #12]
1a00300a:	1d3a      	adds	r2, r7, #4
1a00300c:	69fb      	ldr	r3, [r7, #28]
1a00300e:	4413      	add	r3, r2
1a003010:	781b      	ldrb	r3, [r3, #0]
1a003012:	60bb      	str	r3, [r7, #8]
1a003014:	69bb      	ldr	r3, [r7, #24]
1a003016:	2b00      	cmp	r3, #0
1a003018:	d102      	bne.n	1a003020 <Chip_Clock_GetMainPLLHz+0x88>
1a00301a:	697b      	ldr	r3, [r7, #20]
1a00301c:	2b00      	cmp	r3, #0
1a00301e:	d007      	beq.n	1a003030 <Chip_Clock_GetMainPLLHz+0x98>
1a003020:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a003022:	68fb      	ldr	r3, [r7, #12]
1a003024:	fbb2 f3f3 	udiv	r3, r2, r3
1a003028:	693a      	ldr	r2, [r7, #16]
1a00302a:	fb02 f303 	mul.w	r3, r2, r3
1a00302e:	e00a      	b.n	1a003046 <Chip_Clock_GetMainPLLHz+0xae>
1a003030:	68bb      	ldr	r3, [r7, #8]
1a003032:	005b      	lsls	r3, r3, #1
1a003034:	693a      	ldr	r2, [r7, #16]
1a003036:	fbb2 f3f3 	udiv	r3, r2, r3
1a00303a:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a00303c:	68fa      	ldr	r2, [r7, #12]
1a00303e:	fbb1 f2f2 	udiv	r2, r1, r2
1a003042:	fb02 f303 	mul.w	r3, r2, r3
1a003046:	4618      	mov	r0, r3
1a003048:	3730      	adds	r7, #48	; 0x30
1a00304a:	46bd      	mov	sp, r7
1a00304c:	bd80      	pop	{r7, pc}
1a00304e:	bf00      	nop
1a003050:	40050000 	.word	0x40050000
1a003054:	1a003938 	.word	0x1a003938

1a003058 <Chip_Clock_GetDividerSource>:
1a003058:	b480      	push	{r7}
1a00305a:	b085      	sub	sp, #20
1a00305c:	af00      	add	r7, sp, #0
1a00305e:	4603      	mov	r3, r0
1a003060:	71fb      	strb	r3, [r7, #7]
1a003062:	4a0c      	ldr	r2, [pc, #48]	; (1a003094 <Chip_Clock_GetDividerSource+0x3c>)
1a003064:	79fb      	ldrb	r3, [r7, #7]
1a003066:	3312      	adds	r3, #18
1a003068:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a00306c:	60fb      	str	r3, [r7, #12]
1a00306e:	68fb      	ldr	r3, [r7, #12]
1a003070:	f003 0301 	and.w	r3, r3, #1
1a003074:	2b00      	cmp	r3, #0
1a003076:	d001      	beq.n	1a00307c <Chip_Clock_GetDividerSource+0x24>
1a003078:	2311      	movs	r3, #17
1a00307a:	e005      	b.n	1a003088 <Chip_Clock_GetDividerSource+0x30>
1a00307c:	68fb      	ldr	r3, [r7, #12]
1a00307e:	0e1b      	lsrs	r3, r3, #24
1a003080:	b2db      	uxtb	r3, r3
1a003082:	f003 031f 	and.w	r3, r3, #31
1a003086:	b2db      	uxtb	r3, r3
1a003088:	4618      	mov	r0, r3
1a00308a:	3714      	adds	r7, #20
1a00308c:	46bd      	mov	sp, r7
1a00308e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a003092:	4770      	bx	lr
1a003094:	40050000 	.word	0x40050000

1a003098 <Chip_Clock_GetDividerDivisor>:
1a003098:	b480      	push	{r7}
1a00309a:	b083      	sub	sp, #12
1a00309c:	af00      	add	r7, sp, #0
1a00309e:	4603      	mov	r3, r0
1a0030a0:	71fb      	strb	r3, [r7, #7]
1a0030a2:	4a09      	ldr	r2, [pc, #36]	; (1a0030c8 <Chip_Clock_GetDividerDivisor+0x30>)
1a0030a4:	79fb      	ldrb	r3, [r7, #7]
1a0030a6:	3312      	adds	r3, #18
1a0030a8:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a0030ac:	089b      	lsrs	r3, r3, #2
1a0030ae:	b2da      	uxtb	r2, r3
1a0030b0:	79fb      	ldrb	r3, [r7, #7]
1a0030b2:	4906      	ldr	r1, [pc, #24]	; (1a0030cc <Chip_Clock_GetDividerDivisor+0x34>)
1a0030b4:	5ccb      	ldrb	r3, [r1, r3]
1a0030b6:	4013      	ands	r3, r2
1a0030b8:	b2db      	uxtb	r3, r3
1a0030ba:	4618      	mov	r0, r3
1a0030bc:	370c      	adds	r7, #12
1a0030be:	46bd      	mov	sp, r7
1a0030c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0030c4:	4770      	bx	lr
1a0030c6:	bf00      	nop
1a0030c8:	40050000 	.word	0x40050000
1a0030cc:	1a00393c 	.word	0x1a00393c

1a0030d0 <Chip_Clock_GetClockInputHz>:
1a0030d0:	b580      	push	{r7, lr}
1a0030d2:	b084      	sub	sp, #16
1a0030d4:	af00      	add	r7, sp, #0
1a0030d6:	4603      	mov	r3, r0
1a0030d8:	71fb      	strb	r3, [r7, #7]
1a0030da:	2300      	movs	r3, #0
1a0030dc:	60fb      	str	r3, [r7, #12]
1a0030de:	79fb      	ldrb	r3, [r7, #7]
1a0030e0:	2b11      	cmp	r3, #17
1a0030e2:	d87f      	bhi.n	1a0031e4 <Chip_Clock_GetClockInputHz+0x114>
1a0030e4:	a201      	add	r2, pc, #4	; (adr r2, 1a0030ec <Chip_Clock_GetClockInputHz+0x1c>)
1a0030e6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a0030ea:	bf00      	nop
1a0030ec:	1a003135 	.word	0x1a003135
1a0030f0:	1a00313d 	.word	0x1a00313d
1a0030f4:	1a003143 	.word	0x1a003143
1a0030f8:	1a003157 	.word	0x1a003157
1a0030fc:	1a003171 	.word	0x1a003171
1a003100:	1a0031e5 	.word	0x1a0031e5
1a003104:	1a003179 	.word	0x1a003179
1a003108:	1a003181 	.word	0x1a003181
1a00310c:	1a003189 	.word	0x1a003189
1a003110:	1a003191 	.word	0x1a003191
1a003114:	1a0031e5 	.word	0x1a0031e5
1a003118:	1a0031e5 	.word	0x1a0031e5
1a00311c:	1a003199 	.word	0x1a003199
1a003120:	1a0031a7 	.word	0x1a0031a7
1a003124:	1a0031b5 	.word	0x1a0031b5
1a003128:	1a0031c3 	.word	0x1a0031c3
1a00312c:	1a0031d1 	.word	0x1a0031d1
1a003130:	1a0031df 	.word	0x1a0031df
1a003134:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a003138:	60fb      	str	r3, [r7, #12]
1a00313a:	e056      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a00313c:	4b2d      	ldr	r3, [pc, #180]	; (1a0031f4 <Chip_Clock_GetClockInputHz+0x124>)
1a00313e:	60fb      	str	r3, [r7, #12]
1a003140:	e053      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a003142:	4b2d      	ldr	r3, [pc, #180]	; (1a0031f8 <Chip_Clock_GetClockInputHz+0x128>)
1a003144:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a003148:	f003 0307 	and.w	r3, r3, #7
1a00314c:	2b04      	cmp	r3, #4
1a00314e:	d04b      	beq.n	1a0031e8 <Chip_Clock_GetClockInputHz+0x118>
1a003150:	4b2a      	ldr	r3, [pc, #168]	; (1a0031fc <Chip_Clock_GetClockInputHz+0x12c>)
1a003152:	60fb      	str	r3, [r7, #12]
1a003154:	e048      	b.n	1a0031e8 <Chip_Clock_GetClockInputHz+0x118>
1a003156:	4b28      	ldr	r3, [pc, #160]	; (1a0031f8 <Chip_Clock_GetClockInputHz+0x128>)
1a003158:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a00315c:	f003 0307 	and.w	r3, r3, #7
1a003160:	2b04      	cmp	r3, #4
1a003162:	d002      	beq.n	1a00316a <Chip_Clock_GetClockInputHz+0x9a>
1a003164:	4b25      	ldr	r3, [pc, #148]	; (1a0031fc <Chip_Clock_GetClockInputHz+0x12c>)
1a003166:	60fb      	str	r3, [r7, #12]
1a003168:	e03f      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a00316a:	4b25      	ldr	r3, [pc, #148]	; (1a003200 <Chip_Clock_GetClockInputHz+0x130>)
1a00316c:	60fb      	str	r3, [r7, #12]
1a00316e:	e03c      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a003170:	4b24      	ldr	r3, [pc, #144]	; (1a003204 <Chip_Clock_GetClockInputHz+0x134>)
1a003172:	681b      	ldr	r3, [r3, #0]
1a003174:	60fb      	str	r3, [r7, #12]
1a003176:	e038      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a003178:	4b23      	ldr	r3, [pc, #140]	; (1a003208 <Chip_Clock_GetClockInputHz+0x138>)
1a00317a:	681b      	ldr	r3, [r3, #0]
1a00317c:	60fb      	str	r3, [r7, #12]
1a00317e:	e034      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a003180:	4b22      	ldr	r3, [pc, #136]	; (1a00320c <Chip_Clock_GetClockInputHz+0x13c>)
1a003182:	681b      	ldr	r3, [r3, #0]
1a003184:	60fb      	str	r3, [r7, #12]
1a003186:	e030      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a003188:	4b20      	ldr	r3, [pc, #128]	; (1a00320c <Chip_Clock_GetClockInputHz+0x13c>)
1a00318a:	685b      	ldr	r3, [r3, #4]
1a00318c:	60fb      	str	r3, [r7, #12]
1a00318e:	e02c      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a003190:	f7ff ff02 	bl	1a002f98 <Chip_Clock_GetMainPLLHz>
1a003194:	60f8      	str	r0, [r7, #12]
1a003196:	e028      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a003198:	79fb      	ldrb	r3, [r7, #7]
1a00319a:	2100      	movs	r1, #0
1a00319c:	4618      	mov	r0, r3
1a00319e:	f7ff fdef 	bl	1a002d80 <Chip_Clock_GetDivRate>
1a0031a2:	60f8      	str	r0, [r7, #12]
1a0031a4:	e021      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a0031a6:	79fb      	ldrb	r3, [r7, #7]
1a0031a8:	2101      	movs	r1, #1
1a0031aa:	4618      	mov	r0, r3
1a0031ac:	f7ff fde8 	bl	1a002d80 <Chip_Clock_GetDivRate>
1a0031b0:	60f8      	str	r0, [r7, #12]
1a0031b2:	e01a      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a0031b4:	79fb      	ldrb	r3, [r7, #7]
1a0031b6:	2102      	movs	r1, #2
1a0031b8:	4618      	mov	r0, r3
1a0031ba:	f7ff fde1 	bl	1a002d80 <Chip_Clock_GetDivRate>
1a0031be:	60f8      	str	r0, [r7, #12]
1a0031c0:	e013      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a0031c2:	79fb      	ldrb	r3, [r7, #7]
1a0031c4:	2103      	movs	r1, #3
1a0031c6:	4618      	mov	r0, r3
1a0031c8:	f7ff fdda 	bl	1a002d80 <Chip_Clock_GetDivRate>
1a0031cc:	60f8      	str	r0, [r7, #12]
1a0031ce:	e00c      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a0031d0:	79fb      	ldrb	r3, [r7, #7]
1a0031d2:	2104      	movs	r1, #4
1a0031d4:	4618      	mov	r0, r3
1a0031d6:	f7ff fdd3 	bl	1a002d80 <Chip_Clock_GetDivRate>
1a0031da:	60f8      	str	r0, [r7, #12]
1a0031dc:	e005      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a0031de:	2300      	movs	r3, #0
1a0031e0:	60fb      	str	r3, [r7, #12]
1a0031e2:	e002      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a0031e4:	bf00      	nop
1a0031e6:	e000      	b.n	1a0031ea <Chip_Clock_GetClockInputHz+0x11a>
1a0031e8:	bf00      	nop
1a0031ea:	68fb      	ldr	r3, [r7, #12]
1a0031ec:	4618      	mov	r0, r3
1a0031ee:	3710      	adds	r7, #16
1a0031f0:	46bd      	mov	sp, r7
1a0031f2:	bd80      	pop	{r7, pc}
1a0031f4:	00b71b00 	.word	0x00b71b00
1a0031f8:	40043000 	.word	0x40043000
1a0031fc:	017d7840 	.word	0x017d7840
1a003200:	02faf080 	.word	0x02faf080
1a003204:	1a003858 	.word	0x1a003858
1a003208:	1a00385c 	.word	0x1a00385c
1a00320c:	10000440 	.word	0x10000440

1a003210 <Chip_Clock_GetBaseClocktHz>:
1a003210:	b580      	push	{r7, lr}
1a003212:	b082      	sub	sp, #8
1a003214:	af00      	add	r7, sp, #0
1a003216:	4603      	mov	r3, r0
1a003218:	71fb      	strb	r3, [r7, #7]
1a00321a:	79fb      	ldrb	r3, [r7, #7]
1a00321c:	4618      	mov	r0, r3
1a00321e:	f000 f857 	bl	1a0032d0 <Chip_Clock_GetBaseClock>
1a003222:	4603      	mov	r3, r0
1a003224:	4618      	mov	r0, r3
1a003226:	f7ff ff53 	bl	1a0030d0 <Chip_Clock_GetClockInputHz>
1a00322a:	4603      	mov	r3, r0
1a00322c:	4618      	mov	r0, r3
1a00322e:	3708      	adds	r7, #8
1a003230:	46bd      	mov	sp, r7
1a003232:	bd80      	pop	{r7, pc}

1a003234 <Chip_Clock_SetBaseClock>:
1a003234:	b490      	push	{r4, r7}
1a003236:	b084      	sub	sp, #16
1a003238:	af00      	add	r7, sp, #0
1a00323a:	4604      	mov	r4, r0
1a00323c:	4608      	mov	r0, r1
1a00323e:	4611      	mov	r1, r2
1a003240:	461a      	mov	r2, r3
1a003242:	4623      	mov	r3, r4
1a003244:	71fb      	strb	r3, [r7, #7]
1a003246:	4603      	mov	r3, r0
1a003248:	71bb      	strb	r3, [r7, #6]
1a00324a:	460b      	mov	r3, r1
1a00324c:	717b      	strb	r3, [r7, #5]
1a00324e:	4613      	mov	r3, r2
1a003250:	713b      	strb	r3, [r7, #4]
1a003252:	4a1d      	ldr	r2, [pc, #116]	; (1a0032c8 <Chip_Clock_SetBaseClock+0x94>)
1a003254:	79fb      	ldrb	r3, [r7, #7]
1a003256:	3316      	adds	r3, #22
1a003258:	009b      	lsls	r3, r3, #2
1a00325a:	4413      	add	r3, r2
1a00325c:	685b      	ldr	r3, [r3, #4]
1a00325e:	60fb      	str	r3, [r7, #12]
1a003260:	79fb      	ldrb	r3, [r7, #7]
1a003262:	2b1b      	cmp	r3, #27
1a003264:	d822      	bhi.n	1a0032ac <Chip_Clock_SetBaseClock+0x78>
1a003266:	79bb      	ldrb	r3, [r7, #6]
1a003268:	2b11      	cmp	r3, #17
1a00326a:	d028      	beq.n	1a0032be <Chip_Clock_SetBaseClock+0x8a>
1a00326c:	68fa      	ldr	r2, [r7, #12]
1a00326e:	4b17      	ldr	r3, [pc, #92]	; (1a0032cc <Chip_Clock_SetBaseClock+0x98>)
1a003270:	4013      	ands	r3, r2
1a003272:	60fb      	str	r3, [r7, #12]
1a003274:	797b      	ldrb	r3, [r7, #5]
1a003276:	2b00      	cmp	r3, #0
1a003278:	d003      	beq.n	1a003282 <Chip_Clock_SetBaseClock+0x4e>
1a00327a:	68fb      	ldr	r3, [r7, #12]
1a00327c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a003280:	60fb      	str	r3, [r7, #12]
1a003282:	793b      	ldrb	r3, [r7, #4]
1a003284:	2b00      	cmp	r3, #0
1a003286:	d003      	beq.n	1a003290 <Chip_Clock_SetBaseClock+0x5c>
1a003288:	68fb      	ldr	r3, [r7, #12]
1a00328a:	f043 0301 	orr.w	r3, r3, #1
1a00328e:	60fb      	str	r3, [r7, #12]
1a003290:	79bb      	ldrb	r3, [r7, #6]
1a003292:	061b      	lsls	r3, r3, #24
1a003294:	461a      	mov	r2, r3
1a003296:	68fb      	ldr	r3, [r7, #12]
1a003298:	4313      	orrs	r3, r2
1a00329a:	60fb      	str	r3, [r7, #12]
1a00329c:	4a0a      	ldr	r2, [pc, #40]	; (1a0032c8 <Chip_Clock_SetBaseClock+0x94>)
1a00329e:	79fb      	ldrb	r3, [r7, #7]
1a0032a0:	3316      	adds	r3, #22
1a0032a2:	009b      	lsls	r3, r3, #2
1a0032a4:	4413      	add	r3, r2
1a0032a6:	68fa      	ldr	r2, [r7, #12]
1a0032a8:	605a      	str	r2, [r3, #4]
1a0032aa:	e008      	b.n	1a0032be <Chip_Clock_SetBaseClock+0x8a>
1a0032ac:	4906      	ldr	r1, [pc, #24]	; (1a0032c8 <Chip_Clock_SetBaseClock+0x94>)
1a0032ae:	79fb      	ldrb	r3, [r7, #7]
1a0032b0:	68fa      	ldr	r2, [r7, #12]
1a0032b2:	f042 0201 	orr.w	r2, r2, #1
1a0032b6:	3316      	adds	r3, #22
1a0032b8:	009b      	lsls	r3, r3, #2
1a0032ba:	440b      	add	r3, r1
1a0032bc:	605a      	str	r2, [r3, #4]
1a0032be:	bf00      	nop
1a0032c0:	3710      	adds	r7, #16
1a0032c2:	46bd      	mov	sp, r7
1a0032c4:	bc90      	pop	{r4, r7}
1a0032c6:	4770      	bx	lr
1a0032c8:	40050000 	.word	0x40050000
1a0032cc:	e0fff7fe 	.word	0xe0fff7fe

1a0032d0 <Chip_Clock_GetBaseClock>:
1a0032d0:	b480      	push	{r7}
1a0032d2:	b085      	sub	sp, #20
1a0032d4:	af00      	add	r7, sp, #0
1a0032d6:	4603      	mov	r3, r0
1a0032d8:	71fb      	strb	r3, [r7, #7]
1a0032da:	79fb      	ldrb	r3, [r7, #7]
1a0032dc:	2b1b      	cmp	r3, #27
1a0032de:	d901      	bls.n	1a0032e4 <Chip_Clock_GetBaseClock+0x14>
1a0032e0:	2311      	movs	r3, #17
1a0032e2:	e013      	b.n	1a00330c <Chip_Clock_GetBaseClock+0x3c>
1a0032e4:	4a0c      	ldr	r2, [pc, #48]	; (1a003318 <Chip_Clock_GetBaseClock+0x48>)
1a0032e6:	79fb      	ldrb	r3, [r7, #7]
1a0032e8:	3316      	adds	r3, #22
1a0032ea:	009b      	lsls	r3, r3, #2
1a0032ec:	4413      	add	r3, r2
1a0032ee:	685b      	ldr	r3, [r3, #4]
1a0032f0:	60fb      	str	r3, [r7, #12]
1a0032f2:	68fb      	ldr	r3, [r7, #12]
1a0032f4:	f003 0301 	and.w	r3, r3, #1
1a0032f8:	2b00      	cmp	r3, #0
1a0032fa:	d001      	beq.n	1a003300 <Chip_Clock_GetBaseClock+0x30>
1a0032fc:	2311      	movs	r3, #17
1a0032fe:	e005      	b.n	1a00330c <Chip_Clock_GetBaseClock+0x3c>
1a003300:	68fb      	ldr	r3, [r7, #12]
1a003302:	0e1b      	lsrs	r3, r3, #24
1a003304:	b2db      	uxtb	r3, r3
1a003306:	f003 031f 	and.w	r3, r3, #31
1a00330a:	b2db      	uxtb	r3, r3
1a00330c:	4618      	mov	r0, r3
1a00330e:	3714      	adds	r7, #20
1a003310:	46bd      	mov	sp, r7
1a003312:	f85d 7b04 	ldr.w	r7, [sp], #4
1a003316:	4770      	bx	lr
1a003318:	40050000 	.word	0x40050000

1a00331c <Chip_Clock_EnableOpts>:
1a00331c:	b480      	push	{r7}
1a00331e:	b085      	sub	sp, #20
1a003320:	af00      	add	r7, sp, #0
1a003322:	603b      	str	r3, [r7, #0]
1a003324:	4603      	mov	r3, r0
1a003326:	80fb      	strh	r3, [r7, #6]
1a003328:	460b      	mov	r3, r1
1a00332a:	717b      	strb	r3, [r7, #5]
1a00332c:	4613      	mov	r3, r2
1a00332e:	713b      	strb	r3, [r7, #4]
1a003330:	2301      	movs	r3, #1
1a003332:	60fb      	str	r3, [r7, #12]
1a003334:	797b      	ldrb	r3, [r7, #5]
1a003336:	2b00      	cmp	r3, #0
1a003338:	d003      	beq.n	1a003342 <Chip_Clock_EnableOpts+0x26>
1a00333a:	68fb      	ldr	r3, [r7, #12]
1a00333c:	f043 0302 	orr.w	r3, r3, #2
1a003340:	60fb      	str	r3, [r7, #12]
1a003342:	793b      	ldrb	r3, [r7, #4]
1a003344:	2b00      	cmp	r3, #0
1a003346:	d003      	beq.n	1a003350 <Chip_Clock_EnableOpts+0x34>
1a003348:	68fb      	ldr	r3, [r7, #12]
1a00334a:	f043 0304 	orr.w	r3, r3, #4
1a00334e:	60fb      	str	r3, [r7, #12]
1a003350:	683b      	ldr	r3, [r7, #0]
1a003352:	2b02      	cmp	r3, #2
1a003354:	d103      	bne.n	1a00335e <Chip_Clock_EnableOpts+0x42>
1a003356:	68fb      	ldr	r3, [r7, #12]
1a003358:	f043 0320 	orr.w	r3, r3, #32
1a00335c:	60fb      	str	r3, [r7, #12]
1a00335e:	88fb      	ldrh	r3, [r7, #6]
1a003360:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a003364:	d308      	bcc.n	1a003378 <Chip_Clock_EnableOpts+0x5c>
1a003366:	490a      	ldr	r1, [pc, #40]	; (1a003390 <Chip_Clock_EnableOpts+0x74>)
1a003368:	88fb      	ldrh	r3, [r7, #6]
1a00336a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a00336e:	3320      	adds	r3, #32
1a003370:	68fa      	ldr	r2, [r7, #12]
1a003372:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a003376:	e005      	b.n	1a003384 <Chip_Clock_EnableOpts+0x68>
1a003378:	4906      	ldr	r1, [pc, #24]	; (1a003394 <Chip_Clock_EnableOpts+0x78>)
1a00337a:	88fb      	ldrh	r3, [r7, #6]
1a00337c:	3320      	adds	r3, #32
1a00337e:	68fa      	ldr	r2, [r7, #12]
1a003380:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a003384:	bf00      	nop
1a003386:	3714      	adds	r7, #20
1a003388:	46bd      	mov	sp, r7
1a00338a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00338e:	4770      	bx	lr
1a003390:	40052000 	.word	0x40052000
1a003394:	40051000 	.word	0x40051000

1a003398 <Chip_Clock_Enable>:
1a003398:	b480      	push	{r7}
1a00339a:	b083      	sub	sp, #12
1a00339c:	af00      	add	r7, sp, #0
1a00339e:	4603      	mov	r3, r0
1a0033a0:	80fb      	strh	r3, [r7, #6]
1a0033a2:	88fb      	ldrh	r3, [r7, #6]
1a0033a4:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a0033a8:	d310      	bcc.n	1a0033cc <Chip_Clock_Enable+0x34>
1a0033aa:	4a11      	ldr	r2, [pc, #68]	; (1a0033f0 <Chip_Clock_Enable+0x58>)
1a0033ac:	88fb      	ldrh	r3, [r7, #6]
1a0033ae:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0033b2:	3320      	adds	r3, #32
1a0033b4:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a0033b8:	490d      	ldr	r1, [pc, #52]	; (1a0033f0 <Chip_Clock_Enable+0x58>)
1a0033ba:	88fb      	ldrh	r3, [r7, #6]
1a0033bc:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0033c0:	f042 0201 	orr.w	r2, r2, #1
1a0033c4:	3320      	adds	r3, #32
1a0033c6:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0033ca:	e00b      	b.n	1a0033e4 <Chip_Clock_Enable+0x4c>
1a0033cc:	4a09      	ldr	r2, [pc, #36]	; (1a0033f4 <Chip_Clock_Enable+0x5c>)
1a0033ce:	88fb      	ldrh	r3, [r7, #6]
1a0033d0:	3320      	adds	r3, #32
1a0033d2:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a0033d6:	4907      	ldr	r1, [pc, #28]	; (1a0033f4 <Chip_Clock_Enable+0x5c>)
1a0033d8:	88fb      	ldrh	r3, [r7, #6]
1a0033da:	f042 0201 	orr.w	r2, r2, #1
1a0033de:	3320      	adds	r3, #32
1a0033e0:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0033e4:	bf00      	nop
1a0033e6:	370c      	adds	r7, #12
1a0033e8:	46bd      	mov	sp, r7
1a0033ea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0033ee:	4770      	bx	lr
1a0033f0:	40052000 	.word	0x40052000
1a0033f4:	40051000 	.word	0x40051000

1a0033f8 <Chip_Clock_GetRate>:
1a0033f8:	b580      	push	{r7, lr}
1a0033fa:	b086      	sub	sp, #24
1a0033fc:	af00      	add	r7, sp, #0
1a0033fe:	4603      	mov	r3, r0
1a003400:	80fb      	strh	r3, [r7, #6]
1a003402:	88fb      	ldrh	r3, [r7, #6]
1a003404:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a003408:	d308      	bcc.n	1a00341c <Chip_Clock_GetRate+0x24>
1a00340a:	4a1b      	ldr	r2, [pc, #108]	; (1a003478 <Chip_Clock_GetRate+0x80>)
1a00340c:	88fb      	ldrh	r3, [r7, #6]
1a00340e:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a003412:	3320      	adds	r3, #32
1a003414:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a003418:	617b      	str	r3, [r7, #20]
1a00341a:	e005      	b.n	1a003428 <Chip_Clock_GetRate+0x30>
1a00341c:	4a17      	ldr	r2, [pc, #92]	; (1a00347c <Chip_Clock_GetRate+0x84>)
1a00341e:	88fb      	ldrh	r3, [r7, #6]
1a003420:	3320      	adds	r3, #32
1a003422:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a003426:	617b      	str	r3, [r7, #20]
1a003428:	697b      	ldr	r3, [r7, #20]
1a00342a:	f003 0301 	and.w	r3, r3, #1
1a00342e:	2b00      	cmp	r3, #0
1a003430:	d01b      	beq.n	1a00346a <Chip_Clock_GetRate+0x72>
1a003432:	88fb      	ldrh	r3, [r7, #6]
1a003434:	4618      	mov	r0, r3
1a003436:	f7ff fcc3 	bl	1a002dc0 <Chip_Clock_FindBaseClock>
1a00343a:	4603      	mov	r3, r0
1a00343c:	72fb      	strb	r3, [r7, #11]
1a00343e:	7afb      	ldrb	r3, [r7, #11]
1a003440:	4618      	mov	r0, r3
1a003442:	f7ff fee5 	bl	1a003210 <Chip_Clock_GetBaseClocktHz>
1a003446:	60f8      	str	r0, [r7, #12]
1a003448:	697b      	ldr	r3, [r7, #20]
1a00344a:	095b      	lsrs	r3, r3, #5
1a00344c:	f003 0307 	and.w	r3, r3, #7
1a003450:	2b00      	cmp	r3, #0
1a003452:	d102      	bne.n	1a00345a <Chip_Clock_GetRate+0x62>
1a003454:	2301      	movs	r3, #1
1a003456:	613b      	str	r3, [r7, #16]
1a003458:	e001      	b.n	1a00345e <Chip_Clock_GetRate+0x66>
1a00345a:	2302      	movs	r3, #2
1a00345c:	613b      	str	r3, [r7, #16]
1a00345e:	68fa      	ldr	r2, [r7, #12]
1a003460:	693b      	ldr	r3, [r7, #16]
1a003462:	fbb2 f3f3 	udiv	r3, r2, r3
1a003466:	60fb      	str	r3, [r7, #12]
1a003468:	e001      	b.n	1a00346e <Chip_Clock_GetRate+0x76>
1a00346a:	2300      	movs	r3, #0
1a00346c:	60fb      	str	r3, [r7, #12]
1a00346e:	68fb      	ldr	r3, [r7, #12]
1a003470:	4618      	mov	r0, r3
1a003472:	3718      	adds	r7, #24
1a003474:	46bd      	mov	sp, r7
1a003476:	bd80      	pop	{r7, pc}
1a003478:	40052000 	.word	0x40052000
1a00347c:	40051000 	.word	0x40051000

1a003480 <SystemCoreClockUpdate>:
1a003480:	b580      	push	{r7, lr}
1a003482:	af00      	add	r7, sp, #0
1a003484:	2069      	movs	r0, #105	; 0x69
1a003486:	f7ff ffb7 	bl	1a0033f8 <Chip_Clock_GetRate>
1a00348a:	4602      	mov	r2, r0
1a00348c:	4b01      	ldr	r3, [pc, #4]	; (1a003494 <SystemCoreClockUpdate+0x14>)
1a00348e:	601a      	str	r2, [r3, #0]
1a003490:	bf00      	nop
1a003492:	bd80      	pop	{r7, pc}
1a003494:	10000448 	.word	0x10000448

1a003498 <Chip_GPIO_Init>:
1a003498:	b480      	push	{r7}
1a00349a:	b083      	sub	sp, #12
1a00349c:	af00      	add	r7, sp, #0
1a00349e:	6078      	str	r0, [r7, #4]
1a0034a0:	bf00      	nop
1a0034a2:	370c      	adds	r7, #12
1a0034a4:	46bd      	mov	sp, r7
1a0034a6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0034aa:	4770      	bx	lr

1a0034ac <Chip_TIMER_GetClockIndex>:
1a0034ac:	b480      	push	{r7}
1a0034ae:	b085      	sub	sp, #20
1a0034b0:	af00      	add	r7, sp, #0
1a0034b2:	6078      	str	r0, [r7, #4]
1a0034b4:	687b      	ldr	r3, [r7, #4]
1a0034b6:	4a0e      	ldr	r2, [pc, #56]	; (1a0034f0 <Chip_TIMER_GetClockIndex+0x44>)
1a0034b8:	4293      	cmp	r3, r2
1a0034ba:	d102      	bne.n	1a0034c2 <Chip_TIMER_GetClockIndex+0x16>
1a0034bc:	23a4      	movs	r3, #164	; 0xa4
1a0034be:	81fb      	strh	r3, [r7, #14]
1a0034c0:	e00f      	b.n	1a0034e2 <Chip_TIMER_GetClockIndex+0x36>
1a0034c2:	687b      	ldr	r3, [r7, #4]
1a0034c4:	4a0b      	ldr	r2, [pc, #44]	; (1a0034f4 <Chip_TIMER_GetClockIndex+0x48>)
1a0034c6:	4293      	cmp	r3, r2
1a0034c8:	d102      	bne.n	1a0034d0 <Chip_TIMER_GetClockIndex+0x24>
1a0034ca:	23a3      	movs	r3, #163	; 0xa3
1a0034cc:	81fb      	strh	r3, [r7, #14]
1a0034ce:	e008      	b.n	1a0034e2 <Chip_TIMER_GetClockIndex+0x36>
1a0034d0:	687b      	ldr	r3, [r7, #4]
1a0034d2:	4a09      	ldr	r2, [pc, #36]	; (1a0034f8 <Chip_TIMER_GetClockIndex+0x4c>)
1a0034d4:	4293      	cmp	r3, r2
1a0034d6:	d102      	bne.n	1a0034de <Chip_TIMER_GetClockIndex+0x32>
1a0034d8:	2385      	movs	r3, #133	; 0x85
1a0034da:	81fb      	strh	r3, [r7, #14]
1a0034dc:	e001      	b.n	1a0034e2 <Chip_TIMER_GetClockIndex+0x36>
1a0034de:	2384      	movs	r3, #132	; 0x84
1a0034e0:	81fb      	strh	r3, [r7, #14]
1a0034e2:	89fb      	ldrh	r3, [r7, #14]
1a0034e4:	4618      	mov	r0, r3
1a0034e6:	3714      	adds	r7, #20
1a0034e8:	46bd      	mov	sp, r7
1a0034ea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0034ee:	4770      	bx	lr
1a0034f0:	400c4000 	.word	0x400c4000
1a0034f4:	400c3000 	.word	0x400c3000
1a0034f8:	40085000 	.word	0x40085000

1a0034fc <Chip_TIMER_Init>:
1a0034fc:	b580      	push	{r7, lr}
1a0034fe:	b082      	sub	sp, #8
1a003500:	af00      	add	r7, sp, #0
1a003502:	6078      	str	r0, [r7, #4]
1a003504:	6878      	ldr	r0, [r7, #4]
1a003506:	f7ff ffd1 	bl	1a0034ac <Chip_TIMER_GetClockIndex>
1a00350a:	4603      	mov	r3, r0
1a00350c:	4618      	mov	r0, r3
1a00350e:	f7ff ff43 	bl	1a003398 <Chip_Clock_Enable>
1a003512:	bf00      	nop
1a003514:	3708      	adds	r7, #8
1a003516:	46bd      	mov	sp, r7
1a003518:	bd80      	pop	{r7, pc}
1a00351a:	Address 0x000000001a00351a is out of bounds.


1a00351c <memcpy>:
1a00351c:	4684      	mov	ip, r0
1a00351e:	ea41 0300 	orr.w	r3, r1, r0
1a003522:	f013 0303 	ands.w	r3, r3, #3
1a003526:	d16d      	bne.n	1a003604 <memcpy+0xe8>
1a003528:	3a40      	subs	r2, #64	; 0x40
1a00352a:	d341      	bcc.n	1a0035b0 <memcpy+0x94>
1a00352c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003530:	f840 3b04 	str.w	r3, [r0], #4
1a003534:	f851 3b04 	ldr.w	r3, [r1], #4
1a003538:	f840 3b04 	str.w	r3, [r0], #4
1a00353c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003540:	f840 3b04 	str.w	r3, [r0], #4
1a003544:	f851 3b04 	ldr.w	r3, [r1], #4
1a003548:	f840 3b04 	str.w	r3, [r0], #4
1a00354c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003550:	f840 3b04 	str.w	r3, [r0], #4
1a003554:	f851 3b04 	ldr.w	r3, [r1], #4
1a003558:	f840 3b04 	str.w	r3, [r0], #4
1a00355c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003560:	f840 3b04 	str.w	r3, [r0], #4
1a003564:	f851 3b04 	ldr.w	r3, [r1], #4
1a003568:	f840 3b04 	str.w	r3, [r0], #4
1a00356c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003570:	f840 3b04 	str.w	r3, [r0], #4
1a003574:	f851 3b04 	ldr.w	r3, [r1], #4
1a003578:	f840 3b04 	str.w	r3, [r0], #4
1a00357c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003580:	f840 3b04 	str.w	r3, [r0], #4
1a003584:	f851 3b04 	ldr.w	r3, [r1], #4
1a003588:	f840 3b04 	str.w	r3, [r0], #4
1a00358c:	f851 3b04 	ldr.w	r3, [r1], #4
1a003590:	f840 3b04 	str.w	r3, [r0], #4
1a003594:	f851 3b04 	ldr.w	r3, [r1], #4
1a003598:	f840 3b04 	str.w	r3, [r0], #4
1a00359c:	f851 3b04 	ldr.w	r3, [r1], #4
1a0035a0:	f840 3b04 	str.w	r3, [r0], #4
1a0035a4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0035a8:	f840 3b04 	str.w	r3, [r0], #4
1a0035ac:	3a40      	subs	r2, #64	; 0x40
1a0035ae:	d2bd      	bcs.n	1a00352c <memcpy+0x10>
1a0035b0:	3230      	adds	r2, #48	; 0x30
1a0035b2:	d311      	bcc.n	1a0035d8 <memcpy+0xbc>
1a0035b4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0035b8:	f840 3b04 	str.w	r3, [r0], #4
1a0035bc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0035c0:	f840 3b04 	str.w	r3, [r0], #4
1a0035c4:	f851 3b04 	ldr.w	r3, [r1], #4
1a0035c8:	f840 3b04 	str.w	r3, [r0], #4
1a0035cc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0035d0:	f840 3b04 	str.w	r3, [r0], #4
1a0035d4:	3a10      	subs	r2, #16
1a0035d6:	d2ed      	bcs.n	1a0035b4 <memcpy+0x98>
1a0035d8:	320c      	adds	r2, #12
1a0035da:	d305      	bcc.n	1a0035e8 <memcpy+0xcc>
1a0035dc:	f851 3b04 	ldr.w	r3, [r1], #4
1a0035e0:	f840 3b04 	str.w	r3, [r0], #4
1a0035e4:	3a04      	subs	r2, #4
1a0035e6:	d2f9      	bcs.n	1a0035dc <memcpy+0xc0>
1a0035e8:	3204      	adds	r2, #4
1a0035ea:	d008      	beq.n	1a0035fe <memcpy+0xe2>
1a0035ec:	07d2      	lsls	r2, r2, #31
1a0035ee:	bf1c      	itt	ne
1a0035f0:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a0035f4:	f800 3b01 	strbne.w	r3, [r0], #1
1a0035f8:	d301      	bcc.n	1a0035fe <memcpy+0xe2>
1a0035fa:	880b      	ldrh	r3, [r1, #0]
1a0035fc:	8003      	strh	r3, [r0, #0]
1a0035fe:	4660      	mov	r0, ip
1a003600:	4770      	bx	lr
1a003602:	bf00      	nop
1a003604:	2a08      	cmp	r2, #8
1a003606:	d313      	bcc.n	1a003630 <memcpy+0x114>
1a003608:	078b      	lsls	r3, r1, #30
1a00360a:	d08d      	beq.n	1a003528 <memcpy+0xc>
1a00360c:	f010 0303 	ands.w	r3, r0, #3
1a003610:	d08a      	beq.n	1a003528 <memcpy+0xc>
1a003612:	f1c3 0304 	rsb	r3, r3, #4
1a003616:	1ad2      	subs	r2, r2, r3
1a003618:	07db      	lsls	r3, r3, #31
1a00361a:	bf1c      	itt	ne
1a00361c:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a003620:	f800 3b01 	strbne.w	r3, [r0], #1
1a003624:	d380      	bcc.n	1a003528 <memcpy+0xc>
1a003626:	f831 3b02 	ldrh.w	r3, [r1], #2
1a00362a:	f820 3b02 	strh.w	r3, [r0], #2
1a00362e:	e77b      	b.n	1a003528 <memcpy+0xc>
1a003630:	3a04      	subs	r2, #4
1a003632:	d3d9      	bcc.n	1a0035e8 <memcpy+0xcc>
1a003634:	3a01      	subs	r2, #1
1a003636:	f811 3b01 	ldrb.w	r3, [r1], #1
1a00363a:	f800 3b01 	strb.w	r3, [r0], #1
1a00363e:	d2f9      	bcs.n	1a003634 <memcpy+0x118>
1a003640:	780b      	ldrb	r3, [r1, #0]
1a003642:	7003      	strb	r3, [r0, #0]
1a003644:	784b      	ldrb	r3, [r1, #1]
1a003646:	7043      	strb	r3, [r0, #1]
1a003648:	788b      	ldrb	r3, [r1, #2]
1a00364a:	7083      	strb	r3, [r0, #2]
1a00364c:	4660      	mov	r0, ip
1a00364e:	4770      	bx	lr
1a003650:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003654:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003658:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00365c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003660:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003664:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003668:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00366c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003670:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003674:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a003678:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a00367c:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff

1a003680 <strlen>:
1a003680:	f890 f000 	pld	[r0]
1a003684:	e96d 4502 	strd	r4, r5, [sp, #-8]!
1a003688:	f020 0107 	bic.w	r1, r0, #7
1a00368c:	f06f 0c00 	mvn.w	ip, #0
1a003690:	f010 0407 	ands.w	r4, r0, #7
1a003694:	f891 f020 	pld	[r1, #32]
1a003698:	f040 8049 	bne.w	1a00372e <strlen+0xae>
1a00369c:	f04f 0400 	mov.w	r4, #0
1a0036a0:	f06f 0007 	mvn.w	r0, #7
1a0036a4:	e9d1 2300 	ldrd	r2, r3, [r1]
1a0036a8:	f891 f040 	pld	[r1, #64]	; 0x40
1a0036ac:	f100 0008 	add.w	r0, r0, #8
1a0036b0:	fa82 f24c 	uadd8	r2, r2, ip
1a0036b4:	faa4 f28c 	sel	r2, r4, ip
1a0036b8:	fa83 f34c 	uadd8	r3, r3, ip
1a0036bc:	faa2 f38c 	sel	r3, r2, ip
1a0036c0:	bb4b      	cbnz	r3, 1a003716 <strlen+0x96>
1a0036c2:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
1a0036c6:	fa82 f24c 	uadd8	r2, r2, ip
1a0036ca:	f100 0008 	add.w	r0, r0, #8
1a0036ce:	faa4 f28c 	sel	r2, r4, ip
1a0036d2:	fa83 f34c 	uadd8	r3, r3, ip
1a0036d6:	faa2 f38c 	sel	r3, r2, ip
1a0036da:	b9e3      	cbnz	r3, 1a003716 <strlen+0x96>
1a0036dc:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
1a0036e0:	fa82 f24c 	uadd8	r2, r2, ip
1a0036e4:	f100 0008 	add.w	r0, r0, #8
1a0036e8:	faa4 f28c 	sel	r2, r4, ip
1a0036ec:	fa83 f34c 	uadd8	r3, r3, ip
1a0036f0:	faa2 f38c 	sel	r3, r2, ip
1a0036f4:	b97b      	cbnz	r3, 1a003716 <strlen+0x96>
1a0036f6:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
1a0036fa:	f101 0120 	add.w	r1, r1, #32
1a0036fe:	fa82 f24c 	uadd8	r2, r2, ip
1a003702:	f100 0008 	add.w	r0, r0, #8
1a003706:	faa4 f28c 	sel	r2, r4, ip
1a00370a:	fa83 f34c 	uadd8	r3, r3, ip
1a00370e:	faa2 f38c 	sel	r3, r2, ip
1a003712:	2b00      	cmp	r3, #0
1a003714:	d0c6      	beq.n	1a0036a4 <strlen+0x24>
1a003716:	2a00      	cmp	r2, #0
1a003718:	bf04      	itt	eq
1a00371a:	3004      	addeq	r0, #4
1a00371c:	461a      	moveq	r2, r3
1a00371e:	ba12      	rev	r2, r2
1a003720:	fab2 f282 	clz	r2, r2
1a003724:	e8fd 4502 	ldrd	r4, r5, [sp], #8
1a003728:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
1a00372c:	4770      	bx	lr
1a00372e:	e9d1 2300 	ldrd	r2, r3, [r1]
1a003732:	f004 0503 	and.w	r5, r4, #3
1a003736:	f1c4 0000 	rsb	r0, r4, #0
1a00373a:	ea4f 05c5 	mov.w	r5, r5, lsl #3
1a00373e:	f014 0f04 	tst.w	r4, #4
1a003742:	f891 f040 	pld	[r1, #64]	; 0x40
1a003746:	fa0c f505 	lsl.w	r5, ip, r5
1a00374a:	ea62 0205 	orn	r2, r2, r5
1a00374e:	bf1c      	itt	ne
1a003750:	ea63 0305 	ornne	r3, r3, r5
1a003754:	4662      	movne	r2, ip
1a003756:	f04f 0400 	mov.w	r4, #0
1a00375a:	e7a9      	b.n	1a0036b0 <strlen+0x30>

1a00375c <ExCvt>:
1a00375c:	9a80 4145 418e 808f 4545 4945 4949 8f8e     ..EA.A..EEEIII..
1a00376c:	9290 4f92 4f99 5555 9959 9b9a 9d9c 9f9e     ...O.OUUY.......
1a00377c:	4941 554f a5a5 a7a6 a9a8 abaa adac afae     AIOU............
1a00378c:	b1b0 b3b2 b5b4 b7b6 b9b8 bbba bdbc bfbe     ................
1a00379c:	c1c0 c3c2 c5c4 c7c6 c9c8 cbca cdcc cfce     ................
1a0037ac:	d1d0 d3d2 d5d4 d7d6 d9d8 dbda dddc dfde     ................
1a0037bc:	e1e0 e3e2 e5e4 e7e6 e9e8 ebea edec efee     ................
1a0037cc:	f1f0 f3f2 f5f4 f7f6 f9f8 fbfa fdfc fffe     ................
1a0037dc:	2a22 2c2b 3b3a 3d3c 3f3e 5d5b 7f7c 0000     "*+,:;<=>?[]|...
1a0037ec:	4146 0054 4146 3354 0032 ffff 0a0d 0000     FAT.FAT32.......
1a0037fc:	0000 0000 7245 6f72 2072 6f6d 746e 6e61     ....Error montan
1a00380c:	6f64 6420 6972 6576 2072 0a0d 0000 0000     do driver ......
1a00381c:	002f 0000 0909 443c 5249 3e20 0000 0000     /.....<DIR >....
1a00382c:	0909 0000 0a0d 0000 654c 7463 7275 2061     ........Lectura 
1a00383c:	6564 6473 2065 6c65 6120 6372 6968 6f76     desde el archivo
1a00384c:	3a20 0d20 000a 0000 0041 ffff                : .....A...

1a003858 <ExtRateIn>:
1a003858:	0000 0000                                   ....

1a00385c <OscRateIn>:
1a00385c:	1b00 00b7 7265 6f72 2072 6564 6c20 6365     ....error de lec
1a00386c:	7574 6172 0d0a ff00                         tura....

1a003874 <InitClkStates>:
1a003874:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a003884:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a003894:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a0038a4:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a0038b4:	111a 0001 111b 0001                         ........

1a0038bc <UART_PClock>:
1a0038bc:	0081 0082 00a1 00a2                         ........

1a0038c4 <UART_BClock>:
1a0038c4:	01c2 01a2 0182 0162                         ......b.

1a0038cc <periph_to_base>:
1a0038cc:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a0038dc:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a0038ec:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a0038fc:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a00390c:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a00391c:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a00392c:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a00393c:	0f03 0f0f 00ff ffff                         ........

1a003944 <_binary_myFileSystem_img_start>:
1a003944:	6d903ceb 	.word	0x6d903ceb
1a003948:	2e73666b 	.word	0x2e73666b
1a00394c:	00746166 	.word	0x00746166
1a003950:	00010402 	.word	0x00010402
1a003954:	80020002 	.word	0x80020002
1a003958:	0001f800 	.word	0x0001f800
1a00395c:	00400020 	.word	0x00400020
	...
1a003968:	18290080 	.word	0x18290080
1a00396c:	4e349629 	.word	0x4e349629
1a003970:	414e204f 	.word	0x414e204f
1a003974:	2020454d 	.word	0x2020454d
1a003978:	41462020 	.word	0x41462020
1a00397c:	20323154 	.word	0x20323154
1a003980:	1f0e2020 	.word	0x1f0e2020
1a003984:	ac7c5bbe 	.word	0xac7c5bbe
1a003988:	0b74c022 	.word	0x0b74c022
1a00398c:	bb0eb456 	.word	0xbb0eb456
1a003990:	10cd0007 	.word	0x10cd0007
1a003994:	32f0eb5e 	.word	0x32f0eb5e
1a003998:	cd16cde4 	.word	0xcd16cde4
1a00399c:	54feeb19 	.word	0x54feeb19
1a0039a0:	20736968 	.word	0x20736968
1a0039a4:	6e207369 	.word	0x6e207369
1a0039a8:	6120746f 	.word	0x6120746f
1a0039ac:	6f6f6220 	.word	0x6f6f6220
1a0039b0:	6c626174 	.word	0x6c626174
1a0039b4:	69642065 	.word	0x69642065
1a0039b8:	202e6b73 	.word	0x202e6b73
1a0039bc:	656c5020 	.word	0x656c5020
1a0039c0:	20657361 	.word	0x20657361
1a0039c4:	65736e69 	.word	0x65736e69
1a0039c8:	61207472 	.word	0x61207472
1a0039cc:	6f6f6220 	.word	0x6f6f6220
1a0039d0:	6c626174 	.word	0x6c626174
1a0039d4:	6c662065 	.word	0x6c662065
1a0039d8:	7970706f 	.word	0x7970706f
1a0039dc:	646e6120 	.word	0x646e6120
1a0039e0:	72700a0d 	.word	0x72700a0d
1a0039e4:	20737365 	.word	0x20737365
1a0039e8:	20796e61 	.word	0x20796e61
1a0039ec:	2079656b 	.word	0x2079656b
1a0039f0:	74206f74 	.word	0x74206f74
1a0039f4:	61207972 	.word	0x61207972
1a0039f8:	6e696167 	.word	0x6e696167
1a0039fc:	2e2e2e20 	.word	0x2e2e2e20
1a003a00:	000a0d20 	.word	0x000a0d20
	...
1a003b40:	aa550000 	.word	0xaa550000
1a003b44:	00fffff8 	.word	0x00fffff8
1a003b48:	ffff0000 	.word	0xffff0000
1a003b4c:	fff000ff 	.word	0xfff000ff
	...
1a003d44:	00fffff8 	.word	0x00fffff8
1a003d48:	ffff0000 	.word	0xffff0000
1a003d4c:	fff000ff 	.word	0xfff000ff
	...
1a003f44:	20202042 	.word	0x20202042
1a003f48:	20202020 	.word	0x20202020
1a003f4c:	20202020 	.word	0x20202020
1a003f50:	4c3b6400 	.word	0x4c3b6400
1a003f54:	4d5e4d5d 	.word	0x4d5e4d5d
1a003f58:	4c3b0000 	.word	0x4c3b0000
1a003f5c:	00044d5d 	.word	0x00044d5d
1a003f60:	00000006 	.word	0x00000006
1a003f64:	20202043 	.word	0x20202043
1a003f68:	20202020 	.word	0x20202020
1a003f6c:	20202020 	.word	0x20202020
1a003f70:	4c480000 	.word	0x4c480000
1a003f74:	4d5e4d5d 	.word	0x4d5e4d5d
1a003f78:	4c480000 	.word	0x4c480000
1a003f7c:	00054d5d 	.word	0x00054d5d
1a003f80:	00000006 	.word	0x00000006
1a003f84:	6e0075e5 	.word	0x6e0075e5
1a003f88:	61005f00 	.word	0x61005f00
1a003f8c:	0f007200 	.word	0x0f007200
1a003f90:	0063b500 	.word	0x0063b500
1a003f94:	00690068 	.word	0x00690068
1a003f98:	006f0076 	.word	0x006f0076
1a003f9c:	00000000 	.word	0x00000000
1a003fa0:	ffffffff 	.word	0xffffffff
1a003fa4:	415f4ee5 	.word	0x415f4ee5
1a003fa8:	317e4352 	.word	0x317e4352
1a003fac:	20202020 	.word	0x20202020
1a003fb0:	a8d60000 	.word	0xa8d60000
1a003fb4:	4d5e4d5e 	.word	0x4d5e4d5e
1a003fb8:	a8d60000 	.word	0xa8d60000
1a003fbc:	00074d5e 	.word	0x00074d5e
1a003fc0:	0000000b 	.word	0x0000000b
1a003fc4:	20202041 	.word	0x20202041
1a003fc8:	20202020 	.word	0x20202020
1a003fcc:	20202020 	.word	0x20202020
1a003fd0:	a8d60000 	.word	0xa8d60000
1a003fd4:	4d5e4d5e 	.word	0x4d5e4d5e
1a003fd8:	a8d60000 	.word	0xa8d60000
1a003fdc:	00074d5e 	.word	0x00074d5e
1a003fe0:	0000000b 	.word	0x0000000b
1a003fe4:	4f5254e5 	.word	0x4f5254e5
1a003fe8:	20202020 	.word	0x20202020
1a003fec:	20202020 	.word	0x20202020
1a003ff0:	4c480000 	.word	0x4c480000
1a003ff4:	4d5e4d5d 	.word	0x4d5e4d5d
1a003ff8:	4c480000 	.word	0x4c480000
1a003ffc:	00054d5d 	.word	0x00054d5d
1a004000:	00000006 	.word	0x00000006
1a004004:	69006de5 	.word	0x69006de5
1a004008:	72004100 	.word	0x72004100
1a00400c:	0f006300 	.word	0x0f006300
1a004010:	00686200 	.word	0x00686200
1a004014:	00760069 	.word	0x00760069
1a004018:	0000006f 	.word	0x0000006f
1a00401c:	0000ffff 	.word	0x0000ffff
1a004020:	ffffffff 	.word	0xffffffff
1a004024:	524149e5 	.word	0x524149e5
1a004028:	317e4843 	.word	0x317e4843
1a00402c:	20202020 	.word	0x20202020
1a004030:	4c3b6400 	.word	0x4c3b6400
1a004034:	4d5e4d5d 	.word	0x4d5e4d5d
1a004038:	4c3b0000 	.word	0x4c3b0000
1a00403c:	00044d5d 	.word	0x00044d5d
1a004040:	00000006 	.word	0x00000006
1a004044:	202020e5 	.word	0x202020e5
1a004048:	20202020 	.word	0x20202020
1a00404c:	20202020 	.word	0x20202020
1a004050:	a8d60000 	.word	0xa8d60000
1a004054:	4d5e4d5e 	.word	0x4d5e4d5e
1a004058:	a8d60000 	.word	0xa8d60000
1a00405c:	00074d5e 	.word	0x00074d5e
1a004060:	0000000b 	.word	0x0000000b
	...
1a008744:	616c6f48 	.word	0x616c6f48
1a008748:	6e756d20 	.word	0x6e756d20
1a00874c:	0a216f64 	.word	0x0a216f64
	...
1a008f44:	6c6c6548 	.word	0x6c6c6548
1a008f48:	00000a6f 	.word	0x00000a6f
	...
1a009744:	686f6c41 	.word	0x686f6c41
1a009748:	00000a61 	.word	0x00000a61
	...
1a009f44:	616c6f48 	.word	0x616c6f48
1a009f48:	6e756d20 	.word	0x6e756d20
1a009f4c:	000a6f64 	.word	0x000a6f64
	...
1a00a744:	616c6f48 	.word	0x616c6f48
1a00a748:	6e756d20 	.word	0x6e756d20
1a00a74c:	000a6f64 	.word	0x000a6f64
	...

Disassembly of section .init:

1a013944 <_init>:
1a013944:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a013946:	bf00      	nop

Disassembly of section .fini:

1a013948 <_fini>:
1a013948:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a01394a:	bf00      	nop
