
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 95 03 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	d5 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a 99 05 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000cc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a002128 	.word	0x1a002128
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000

1a000120 <__bss_section_table_>:
1a000120:	10000000 	.word	0x10000000
1a000124:	00000598 	.word	0x00000598

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

1a000394 <ResetISR>:
1a000394:	b580      	push	{r7, lr}
1a000396:	b088      	sub	sp, #32
1a000398:	af00      	add	r7, sp, #0
1a00039a:	b672      	cpsid	i
1a00039c:	4b26      	ldr	r3, [pc, #152]	; (1a000438 <ResetISR+0xa4>)
1a00039e:	617b      	str	r3, [r7, #20]
1a0003a0:	697b      	ldr	r3, [r7, #20]
1a0003a2:	4a26      	ldr	r2, [pc, #152]	; (1a00043c <ResetISR+0xa8>)
1a0003a4:	601a      	str	r2, [r3, #0]
1a0003a6:	697b      	ldr	r3, [r7, #20]
1a0003a8:	3304      	adds	r3, #4
1a0003aa:	4a25      	ldr	r2, [pc, #148]	; (1a000440 <ResetISR+0xac>)
1a0003ac:	601a      	str	r2, [r3, #0]
1a0003ae:	4b25      	ldr	r3, [pc, #148]	; (1a000444 <ResetISR+0xb0>)
1a0003b0:	613b      	str	r3, [r7, #16]
1a0003b2:	2300      	movs	r3, #0
1a0003b4:	61fb      	str	r3, [r7, #28]
1a0003b6:	e009      	b.n	1a0003cc <ResetISR+0x38>
1a0003b8:	69fb      	ldr	r3, [r7, #28]
1a0003ba:	009b      	lsls	r3, r3, #2
1a0003bc:	693a      	ldr	r2, [r7, #16]
1a0003be:	4413      	add	r3, r2
1a0003c0:	f04f 32ff 	mov.w	r2, #4294967295	; 0xffffffff
1a0003c4:	601a      	str	r2, [r3, #0]
1a0003c6:	69fb      	ldr	r3, [r7, #28]
1a0003c8:	3301      	adds	r3, #1
1a0003ca:	61fb      	str	r3, [r7, #28]
1a0003cc:	69fb      	ldr	r3, [r7, #28]
1a0003ce:	2b07      	cmp	r3, #7
1a0003d0:	d9f2      	bls.n	1a0003b8 <ResetISR+0x24>
1a0003d2:	b662      	cpsie	i
1a0003d4:	4b1c      	ldr	r3, [pc, #112]	; (1a000448 <ResetISR+0xb4>)
1a0003d6:	61bb      	str	r3, [r7, #24]
1a0003d8:	e013      	b.n	1a000402 <ResetISR+0x6e>
1a0003da:	69bb      	ldr	r3, [r7, #24]
1a0003dc:	1d1a      	adds	r2, r3, #4
1a0003de:	61ba      	str	r2, [r7, #24]
1a0003e0:	681b      	ldr	r3, [r3, #0]
1a0003e2:	607b      	str	r3, [r7, #4]
1a0003e4:	69bb      	ldr	r3, [r7, #24]
1a0003e6:	1d1a      	adds	r2, r3, #4
1a0003e8:	61ba      	str	r2, [r7, #24]
1a0003ea:	681b      	ldr	r3, [r3, #0]
1a0003ec:	60fb      	str	r3, [r7, #12]
1a0003ee:	69bb      	ldr	r3, [r7, #24]
1a0003f0:	1d1a      	adds	r2, r3, #4
1a0003f2:	61ba      	str	r2, [r7, #24]
1a0003f4:	681b      	ldr	r3, [r3, #0]
1a0003f6:	60bb      	str	r3, [r7, #8]
1a0003f8:	68ba      	ldr	r2, [r7, #8]
1a0003fa:	68f9      	ldr	r1, [r7, #12]
1a0003fc:	6878      	ldr	r0, [r7, #4]
1a0003fe:	f7ff fe93 	bl	1a000128 <data_init>
1a000402:	69bb      	ldr	r3, [r7, #24]
1a000404:	4a11      	ldr	r2, [pc, #68]	; (1a00044c <ResetISR+0xb8>)
1a000406:	4293      	cmp	r3, r2
1a000408:	d3e7      	bcc.n	1a0003da <ResetISR+0x46>
1a00040a:	e00d      	b.n	1a000428 <ResetISR+0x94>
1a00040c:	69bb      	ldr	r3, [r7, #24]
1a00040e:	1d1a      	adds	r2, r3, #4
1a000410:	61ba      	str	r2, [r7, #24]
1a000412:	681b      	ldr	r3, [r3, #0]
1a000414:	60fb      	str	r3, [r7, #12]
1a000416:	69bb      	ldr	r3, [r7, #24]
1a000418:	1d1a      	adds	r2, r3, #4
1a00041a:	61ba      	str	r2, [r7, #24]
1a00041c:	681b      	ldr	r3, [r3, #0]
1a00041e:	60bb      	str	r3, [r7, #8]
1a000420:	68b9      	ldr	r1, [r7, #8]
1a000422:	68f8      	ldr	r0, [r7, #12]
1a000424:	f7ff fea2 	bl	1a00016c <bss_init>
1a000428:	69bb      	ldr	r3, [r7, #24]
1a00042a:	4a09      	ldr	r2, [pc, #36]	; (1a000450 <ResetISR+0xbc>)
1a00042c:	4293      	cmp	r3, r2
1a00042e:	d3ed      	bcc.n	1a00040c <ResetISR+0x78>
1a000430:	f000 f8c2 	bl	1a0005b8 <main>
1a000434:	e7fe      	b.n	1a000434 <ResetISR+0xa0>
1a000436:	bf00      	nop
1a000438:	40053100 	.word	0x40053100
1a00043c:	10df1000 	.word	0x10df1000
1a000440:	01dff7ff 	.word	0x01dff7ff
1a000444:	e000e280 	.word	0xe000e280
1a000448:	1a000114 	.word	0x1a000114
1a00044c:	1a000120 	.word	0x1a000120
1a000450:	1a000128 	.word	0x1a000128

1a000454 <devolver_digitos>:
1a000454:	b480      	push	{r7}
1a000456:	b085      	sub	sp, #20
1a000458:	af00      	add	r7, sp, #0
1a00045a:	6078      	str	r0, [r7, #4]
1a00045c:	2300      	movs	r3, #0
1a00045e:	60fb      	str	r3, [r7, #12]
1a000460:	e00a      	b.n	1a000478 <devolver_digitos+0x24>
1a000462:	68fb      	ldr	r3, [r7, #12]
1a000464:	3301      	adds	r3, #1
1a000466:	60fb      	str	r3, [r7, #12]
1a000468:	687b      	ldr	r3, [r7, #4]
1a00046a:	4a08      	ldr	r2, [pc, #32]	; (1a00048c <devolver_digitos+0x38>)
1a00046c:	fb82 1203 	smull	r1, r2, r2, r3
1a000470:	1092      	asrs	r2, r2, #2
1a000472:	17db      	asrs	r3, r3, #31
1a000474:	1ad3      	subs	r3, r2, r3
1a000476:	607b      	str	r3, [r7, #4]
1a000478:	687b      	ldr	r3, [r7, #4]
1a00047a:	2b00      	cmp	r3, #0
1a00047c:	dcf1      	bgt.n	1a000462 <devolver_digitos+0xe>
1a00047e:	68fb      	ldr	r3, [r7, #12]
1a000480:	4618      	mov	r0, r3
1a000482:	3714      	adds	r7, #20
1a000484:	46bd      	mov	sp, r7
1a000486:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00048a:	4770      	bx	lr
1a00048c:	66666667 	.word	0x66666667

1a000490 <showInt>:
1a000490:	b5b0      	push	{r4, r5, r7, lr}
1a000492:	b088      	sub	sp, #32
1a000494:	af00      	add	r7, sp, #0
1a000496:	6078      	str	r0, [r7, #4]
1a000498:	466b      	mov	r3, sp
1a00049a:	461d      	mov	r5, r3
1a00049c:	687b      	ldr	r3, [r7, #4]
1a00049e:	4618      	mov	r0, r3
1a0004a0:	f7ff ffd8 	bl	1a000454 <devolver_digitos>
1a0004a4:	4603      	mov	r3, r0
1a0004a6:	777b      	strb	r3, [r7, #29]
1a0004a8:	7f78      	ldrb	r0, [r7, #29]
1a0004aa:	4603      	mov	r3, r0
1a0004ac:	3b01      	subs	r3, #1
1a0004ae:	61bb      	str	r3, [r7, #24]
1a0004b0:	b2c1      	uxtb	r1, r0
1a0004b2:	f04f 0200 	mov.w	r2, #0
1a0004b6:	f04f 0300 	mov.w	r3, #0
1a0004ba:	f04f 0400 	mov.w	r4, #0
1a0004be:	00d4      	lsls	r4, r2, #3
1a0004c0:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
1a0004c4:	00cb      	lsls	r3, r1, #3
1a0004c6:	b2c1      	uxtb	r1, r0
1a0004c8:	f04f 0200 	mov.w	r2, #0
1a0004cc:	f04f 0300 	mov.w	r3, #0
1a0004d0:	f04f 0400 	mov.w	r4, #0
1a0004d4:	00d4      	lsls	r4, r2, #3
1a0004d6:	ea44 7451 	orr.w	r4, r4, r1, lsr #29
1a0004da:	00cb      	lsls	r3, r1, #3
1a0004dc:	4603      	mov	r3, r0
1a0004de:	3307      	adds	r3, #7
1a0004e0:	08db      	lsrs	r3, r3, #3
1a0004e2:	00db      	lsls	r3, r3, #3
1a0004e4:	ebad 0d03 	sub.w	sp, sp, r3
1a0004e8:	466b      	mov	r3, sp
1a0004ea:	3300      	adds	r3, #0
1a0004ec:	617b      	str	r3, [r7, #20]
1a0004ee:	2300      	movs	r3, #0
1a0004f0:	723b      	strb	r3, [r7, #8]
1a0004f2:	2301      	movs	r3, #1
1a0004f4:	727b      	strb	r3, [r7, #9]
1a0004f6:	7f7b      	ldrb	r3, [r7, #29]
1a0004f8:	72bb      	strb	r3, [r7, #10]
1a0004fa:	697b      	ldr	r3, [r7, #20]
1a0004fc:	60fb      	str	r3, [r7, #12]
1a0004fe:	68f9      	ldr	r1, [r7, #12]
1a000500:	7aba      	ldrb	r2, [r7, #10]
1a000502:	7a7b      	ldrb	r3, [r7, #9]
1a000504:	f107 0008 	add.w	r0, r7, #8
1a000508:	f000 f868 	bl	1a0005dc <pilaInit>
1a00050c:	2300      	movs	r3, #0
1a00050e:	77bb      	strb	r3, [r7, #30]
1a000510:	e01c      	b.n	1a00054c <showInt+0xbc>
1a000512:	6879      	ldr	r1, [r7, #4]
1a000514:	4b1f      	ldr	r3, [pc, #124]	; (1a000594 <showInt+0x104>)
1a000516:	fba3 2301 	umull	r2, r3, r3, r1
1a00051a:	08da      	lsrs	r2, r3, #3
1a00051c:	4613      	mov	r3, r2
1a00051e:	009b      	lsls	r3, r3, #2
1a000520:	4413      	add	r3, r2
1a000522:	005b      	lsls	r3, r3, #1
1a000524:	1aca      	subs	r2, r1, r3
1a000526:	b2d3      	uxtb	r3, r2
1a000528:	74fb      	strb	r3, [r7, #19]
1a00052a:	f107 0213 	add.w	r2, r7, #19
1a00052e:	f107 0308 	add.w	r3, r7, #8
1a000532:	4611      	mov	r1, r2
1a000534:	4618      	mov	r0, r3
1a000536:	f000 f897 	bl	1a000668 <pilaPush>
1a00053a:	687b      	ldr	r3, [r7, #4]
1a00053c:	4a15      	ldr	r2, [pc, #84]	; (1a000594 <showInt+0x104>)
1a00053e:	fba2 2303 	umull	r2, r3, r2, r3
1a000542:	08db      	lsrs	r3, r3, #3
1a000544:	607b      	str	r3, [r7, #4]
1a000546:	7fbb      	ldrb	r3, [r7, #30]
1a000548:	3301      	adds	r3, #1
1a00054a:	77bb      	strb	r3, [r7, #30]
1a00054c:	7fba      	ldrb	r2, [r7, #30]
1a00054e:	7f7b      	ldrb	r3, [r7, #29]
1a000550:	429a      	cmp	r2, r3
1a000552:	d3de      	bcc.n	1a000512 <showInt+0x82>
1a000554:	2300      	movs	r3, #0
1a000556:	77fb      	strb	r3, [r7, #31]
1a000558:	e00f      	b.n	1a00057a <showInt+0xea>
1a00055a:	f107 0213 	add.w	r2, r7, #19
1a00055e:	f107 0308 	add.w	r3, r7, #8
1a000562:	4611      	mov	r1, r2
1a000564:	4618      	mov	r0, r3
1a000566:	f000 f8a8 	bl	1a0006ba <pilaPop>
1a00056a:	7cfb      	ldrb	r3, [r7, #19]
1a00056c:	3330      	adds	r3, #48	; 0x30
1a00056e:	4618      	mov	r0, r3
1a000570:	f000 fa3c 	bl	1a0009ec <putChr>
1a000574:	7ffb      	ldrb	r3, [r7, #31]
1a000576:	3301      	adds	r3, #1
1a000578:	77fb      	strb	r3, [r7, #31]
1a00057a:	7ffa      	ldrb	r2, [r7, #31]
1a00057c:	7f7b      	ldrb	r3, [r7, #29]
1a00057e:	429a      	cmp	r2, r3
1a000580:	d3eb      	bcc.n	1a00055a <showInt+0xca>
1a000582:	f640 200d 	movw	r0, #2573	; 0xa0d
1a000586:	f000 fa31 	bl	1a0009ec <putChr>
1a00058a:	46ad      	mov	sp, r5
1a00058c:	bf00      	nop
1a00058e:	3720      	adds	r7, #32
1a000590:	46bd      	mov	sp, r7
1a000592:	bdb0      	pop	{r4, r5, r7, pc}
1a000594:	cccccccd 	.word	0xcccccccd

1a000598 <UART2_IRQHandler>:
1a000598:	b580      	push	{r7, lr}
1a00059a:	af00      	add	r7, sp, #0
1a00059c:	4a03      	ldr	r2, [pc, #12]	; (1a0005ac <UART2_IRQHandler+0x14>)
1a00059e:	4904      	ldr	r1, [pc, #16]	; (1a0005b0 <UART2_IRQHandler+0x18>)
1a0005a0:	4804      	ldr	r0, [pc, #16]	; (1a0005b4 <UART2_IRQHandler+0x1c>)
1a0005a2:	f000 fd98 	bl	1a0010d6 <Chip_UART_IRQRBHandler>
1a0005a6:	bf00      	nop
1a0005a8:	bd80      	pop	{r7, pc}
1a0005aa:	bf00      	nop
1a0005ac:	100000f8 	.word	0x100000f8
1a0005b0:	10000314 	.word	0x10000314
1a0005b4:	400c1000 	.word	0x400c1000

1a0005b8 <main>:
1a0005b8:	b580      	push	{r7, lr}
1a0005ba:	b084      	sub	sp, #16
1a0005bc:	af00      	add	r7, sp, #0
1a0005be:	6078      	str	r0, [r7, #4]
1a0005c0:	6039      	str	r1, [r7, #0]
1a0005c2:	2300      	movs	r3, #0
1a0005c4:	60fb      	str	r3, [r7, #12]
1a0005c6:	f000 f95f 	bl	1a000888 <inicializar_sistema>
1a0005ca:	f000 f969 	bl	1a0008a0 <inicializar_leds>
1a0005ce:	f000 f9cb 	bl	1a000968 <inicializar_USART>
1a0005d2:	f243 0039 	movw	r0, #12345	; 0x3039
1a0005d6:	f7ff ff5b 	bl	1a000490 <showInt>
1a0005da:	e7fe      	b.n	1a0005da <main+0x22>

1a0005dc <pilaInit>:
1a0005dc:	b480      	push	{r7}
1a0005de:	b085      	sub	sp, #20
1a0005e0:	af00      	add	r7, sp, #0
1a0005e2:	60f8      	str	r0, [r7, #12]
1a0005e4:	60b9      	str	r1, [r7, #8]
1a0005e6:	4611      	mov	r1, r2
1a0005e8:	461a      	mov	r2, r3
1a0005ea:	460b      	mov	r3, r1
1a0005ec:	71fb      	strb	r3, [r7, #7]
1a0005ee:	4613      	mov	r3, r2
1a0005f0:	71bb      	strb	r3, [r7, #6]
1a0005f2:	68fb      	ldr	r3, [r7, #12]
1a0005f4:	79ba      	ldrb	r2, [r7, #6]
1a0005f6:	705a      	strb	r2, [r3, #1]
1a0005f8:	68fb      	ldr	r3, [r7, #12]
1a0005fa:	68ba      	ldr	r2, [r7, #8]
1a0005fc:	605a      	str	r2, [r3, #4]
1a0005fe:	68fb      	ldr	r3, [r7, #12]
1a000600:	2200      	movs	r2, #0
1a000602:	701a      	strb	r2, [r3, #0]
1a000604:	68fb      	ldr	r3, [r7, #12]
1a000606:	785b      	ldrb	r3, [r3, #1]
1a000608:	79fa      	ldrb	r2, [r7, #7]
1a00060a:	fb12 f303 	smulbb	r3, r2, r3
1a00060e:	b2da      	uxtb	r2, r3
1a000610:	68fb      	ldr	r3, [r7, #12]
1a000612:	709a      	strb	r2, [r3, #2]
1a000614:	bf00      	nop
1a000616:	3714      	adds	r7, #20
1a000618:	46bd      	mov	sp, r7
1a00061a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00061e:	4770      	bx	lr

1a000620 <pilaEmpty>:
1a000620:	b480      	push	{r7}
1a000622:	b083      	sub	sp, #12
1a000624:	af00      	add	r7, sp, #0
1a000626:	6078      	str	r0, [r7, #4]
1a000628:	687b      	ldr	r3, [r7, #4]
1a00062a:	781b      	ldrb	r3, [r3, #0]
1a00062c:	2b00      	cmp	r3, #0
1a00062e:	d101      	bne.n	1a000634 <pilaEmpty+0x14>
1a000630:	2301      	movs	r3, #1
1a000632:	e000      	b.n	1a000636 <pilaEmpty+0x16>
1a000634:	2300      	movs	r3, #0
1a000636:	4618      	mov	r0, r3
1a000638:	370c      	adds	r7, #12
1a00063a:	46bd      	mov	sp, r7
1a00063c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000640:	4770      	bx	lr

1a000642 <pilaFull>:
1a000642:	b480      	push	{r7}
1a000644:	b083      	sub	sp, #12
1a000646:	af00      	add	r7, sp, #0
1a000648:	6078      	str	r0, [r7, #4]
1a00064a:	687b      	ldr	r3, [r7, #4]
1a00064c:	781a      	ldrb	r2, [r3, #0]
1a00064e:	687b      	ldr	r3, [r7, #4]
1a000650:	789b      	ldrb	r3, [r3, #2]
1a000652:	429a      	cmp	r2, r3
1a000654:	d301      	bcc.n	1a00065a <pilaFull+0x18>
1a000656:	2301      	movs	r3, #1
1a000658:	e000      	b.n	1a00065c <pilaFull+0x1a>
1a00065a:	2300      	movs	r3, #0
1a00065c:	4618      	mov	r0, r3
1a00065e:	370c      	adds	r7, #12
1a000660:	46bd      	mov	sp, r7
1a000662:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000666:	4770      	bx	lr

1a000668 <pilaPush>:
1a000668:	b580      	push	{r7, lr}
1a00066a:	b084      	sub	sp, #16
1a00066c:	af00      	add	r7, sp, #0
1a00066e:	6078      	str	r0, [r7, #4]
1a000670:	6039      	str	r1, [r7, #0]
1a000672:	687b      	ldr	r3, [r7, #4]
1a000674:	685b      	ldr	r3, [r3, #4]
1a000676:	60fb      	str	r3, [r7, #12]
1a000678:	6878      	ldr	r0, [r7, #4]
1a00067a:	f7ff ffe2 	bl	1a000642 <pilaFull>
1a00067e:	4603      	mov	r3, r0
1a000680:	2b00      	cmp	r3, #0
1a000682:	d116      	bne.n	1a0006b2 <pilaPush+0x4a>
1a000684:	687b      	ldr	r3, [r7, #4]
1a000686:	781b      	ldrb	r3, [r3, #0]
1a000688:	461a      	mov	r2, r3
1a00068a:	687b      	ldr	r3, [r7, #4]
1a00068c:	785b      	ldrb	r3, [r3, #1]
1a00068e:	fb03 f302 	mul.w	r3, r3, r2
1a000692:	68fa      	ldr	r2, [r7, #12]
1a000694:	4413      	add	r3, r2
1a000696:	60fb      	str	r3, [r7, #12]
1a000698:	687b      	ldr	r3, [r7, #4]
1a00069a:	785b      	ldrb	r3, [r3, #1]
1a00069c:	461a      	mov	r2, r3
1a00069e:	6839      	ldr	r1, [r7, #0]
1a0006a0:	68f8      	ldr	r0, [r7, #12]
1a0006a2:	f001 fc19 	bl	1a001ed8 <memcpy>
1a0006a6:	687b      	ldr	r3, [r7, #4]
1a0006a8:	781b      	ldrb	r3, [r3, #0]
1a0006aa:	3301      	adds	r3, #1
1a0006ac:	b2da      	uxtb	r2, r3
1a0006ae:	687b      	ldr	r3, [r7, #4]
1a0006b0:	701a      	strb	r2, [r3, #0]
1a0006b2:	bf00      	nop
1a0006b4:	3710      	adds	r7, #16
1a0006b6:	46bd      	mov	sp, r7
1a0006b8:	bd80      	pop	{r7, pc}

1a0006ba <pilaPop>:
1a0006ba:	b580      	push	{r7, lr}
1a0006bc:	b084      	sub	sp, #16
1a0006be:	af00      	add	r7, sp, #0
1a0006c0:	6078      	str	r0, [r7, #4]
1a0006c2:	6039      	str	r1, [r7, #0]
1a0006c4:	687b      	ldr	r3, [r7, #4]
1a0006c6:	685b      	ldr	r3, [r3, #4]
1a0006c8:	60fb      	str	r3, [r7, #12]
1a0006ca:	6878      	ldr	r0, [r7, #4]
1a0006cc:	f7ff ffa8 	bl	1a000620 <pilaEmpty>
1a0006d0:	4603      	mov	r3, r0
1a0006d2:	2b00      	cmp	r3, #0
1a0006d4:	d116      	bne.n	1a000704 <pilaPop+0x4a>
1a0006d6:	687b      	ldr	r3, [r7, #4]
1a0006d8:	781b      	ldrb	r3, [r3, #0]
1a0006da:	3b01      	subs	r3, #1
1a0006dc:	b2da      	uxtb	r2, r3
1a0006de:	687b      	ldr	r3, [r7, #4]
1a0006e0:	701a      	strb	r2, [r3, #0]
1a0006e2:	687b      	ldr	r3, [r7, #4]
1a0006e4:	781b      	ldrb	r3, [r3, #0]
1a0006e6:	461a      	mov	r2, r3
1a0006e8:	687b      	ldr	r3, [r7, #4]
1a0006ea:	785b      	ldrb	r3, [r3, #1]
1a0006ec:	fb03 f302 	mul.w	r3, r3, r2
1a0006f0:	68fa      	ldr	r2, [r7, #12]
1a0006f2:	4413      	add	r3, r2
1a0006f4:	60fb      	str	r3, [r7, #12]
1a0006f6:	687b      	ldr	r3, [r7, #4]
1a0006f8:	785b      	ldrb	r3, [r3, #1]
1a0006fa:	461a      	mov	r2, r3
1a0006fc:	68f9      	ldr	r1, [r7, #12]
1a0006fe:	6838      	ldr	r0, [r7, #0]
1a000700:	f001 fbea 	bl	1a001ed8 <memcpy>
1a000704:	bf00      	nop
1a000706:	3710      	adds	r7, #16
1a000708:	46bd      	mov	sp, r7
1a00070a:	bd80      	pop	{r7, pc}

1a00070c <NVIC_EnableIRQ>:
1a00070c:	b480      	push	{r7}
1a00070e:	b083      	sub	sp, #12
1a000710:	af00      	add	r7, sp, #0
1a000712:	4603      	mov	r3, r0
1a000714:	71fb      	strb	r3, [r7, #7]
1a000716:	79fb      	ldrb	r3, [r7, #7]
1a000718:	f003 031f 	and.w	r3, r3, #31
1a00071c:	2201      	movs	r2, #1
1a00071e:	fa02 f103 	lsl.w	r1, r2, r3
1a000722:	4a06      	ldr	r2, [pc, #24]	; (1a00073c <NVIC_EnableIRQ+0x30>)
1a000724:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000728:	095b      	lsrs	r3, r3, #5
1a00072a:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a00072e:	bf00      	nop
1a000730:	370c      	adds	r7, #12
1a000732:	46bd      	mov	sp, r7
1a000734:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000738:	4770      	bx	lr
1a00073a:	bf00      	nop
1a00073c:	e000e100 	.word	0xe000e100

1a000740 <Chip_SCU_PinMuxSet>:
1a000740:	b480      	push	{r7}
1a000742:	b083      	sub	sp, #12
1a000744:	af00      	add	r7, sp, #0
1a000746:	4603      	mov	r3, r0
1a000748:	71fb      	strb	r3, [r7, #7]
1a00074a:	460b      	mov	r3, r1
1a00074c:	71bb      	strb	r3, [r7, #6]
1a00074e:	4613      	mov	r3, r2
1a000750:	80bb      	strh	r3, [r7, #4]
1a000752:	4807      	ldr	r0, [pc, #28]	; (1a000770 <Chip_SCU_PinMuxSet+0x30>)
1a000754:	79f9      	ldrb	r1, [r7, #7]
1a000756:	79bb      	ldrb	r3, [r7, #6]
1a000758:	88ba      	ldrh	r2, [r7, #4]
1a00075a:	0149      	lsls	r1, r1, #5
1a00075c:	440b      	add	r3, r1
1a00075e:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a000762:	bf00      	nop
1a000764:	370c      	adds	r7, #12
1a000766:	46bd      	mov	sp, r7
1a000768:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00076c:	4770      	bx	lr
1a00076e:	bf00      	nop
1a000770:	40086000 	.word	0x40086000

1a000774 <Chip_SCU_PinMux>:
1a000774:	b590      	push	{r4, r7, lr}
1a000776:	b083      	sub	sp, #12
1a000778:	af00      	add	r7, sp, #0
1a00077a:	4604      	mov	r4, r0
1a00077c:	4608      	mov	r0, r1
1a00077e:	4611      	mov	r1, r2
1a000780:	461a      	mov	r2, r3
1a000782:	4623      	mov	r3, r4
1a000784:	71fb      	strb	r3, [r7, #7]
1a000786:	4603      	mov	r3, r0
1a000788:	71bb      	strb	r3, [r7, #6]
1a00078a:	460b      	mov	r3, r1
1a00078c:	80bb      	strh	r3, [r7, #4]
1a00078e:	4613      	mov	r3, r2
1a000790:	70fb      	strb	r3, [r7, #3]
1a000792:	78fb      	ldrb	r3, [r7, #3]
1a000794:	b29a      	uxth	r2, r3
1a000796:	88bb      	ldrh	r3, [r7, #4]
1a000798:	4313      	orrs	r3, r2
1a00079a:	b29a      	uxth	r2, r3
1a00079c:	79b9      	ldrb	r1, [r7, #6]
1a00079e:	79fb      	ldrb	r3, [r7, #7]
1a0007a0:	4618      	mov	r0, r3
1a0007a2:	f7ff ffcd 	bl	1a000740 <Chip_SCU_PinMuxSet>
1a0007a6:	bf00      	nop
1a0007a8:	370c      	adds	r7, #12
1a0007aa:	46bd      	mov	sp, r7
1a0007ac:	bd90      	pop	{r4, r7, pc}

1a0007ae <Chip_GPIO_SetPinDIROutput>:
1a0007ae:	b480      	push	{r7}
1a0007b0:	b083      	sub	sp, #12
1a0007b2:	af00      	add	r7, sp, #0
1a0007b4:	6078      	str	r0, [r7, #4]
1a0007b6:	460b      	mov	r3, r1
1a0007b8:	70fb      	strb	r3, [r7, #3]
1a0007ba:	4613      	mov	r3, r2
1a0007bc:	70bb      	strb	r3, [r7, #2]
1a0007be:	78fa      	ldrb	r2, [r7, #3]
1a0007c0:	687b      	ldr	r3, [r7, #4]
1a0007c2:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0007c6:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a0007ca:	78bb      	ldrb	r3, [r7, #2]
1a0007cc:	2201      	movs	r2, #1
1a0007ce:	fa02 f303 	lsl.w	r3, r2, r3
1a0007d2:	78fa      	ldrb	r2, [r7, #3]
1a0007d4:	4319      	orrs	r1, r3
1a0007d6:	687b      	ldr	r3, [r7, #4]
1a0007d8:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a0007dc:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0007e0:	bf00      	nop
1a0007e2:	370c      	adds	r7, #12
1a0007e4:	46bd      	mov	sp, r7
1a0007e6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007ea:	4770      	bx	lr

1a0007ec <Chip_GPIO_SetPortOutLow>:
1a0007ec:	b480      	push	{r7}
1a0007ee:	b085      	sub	sp, #20
1a0007f0:	af00      	add	r7, sp, #0
1a0007f2:	60f8      	str	r0, [r7, #12]
1a0007f4:	460b      	mov	r3, r1
1a0007f6:	607a      	str	r2, [r7, #4]
1a0007f8:	72fb      	strb	r3, [r7, #11]
1a0007fa:	7afa      	ldrb	r2, [r7, #11]
1a0007fc:	68fb      	ldr	r3, [r7, #12]
1a0007fe:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a000802:	6879      	ldr	r1, [r7, #4]
1a000804:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000808:	bf00      	nop
1a00080a:	3714      	adds	r7, #20
1a00080c:	46bd      	mov	sp, r7
1a00080e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000812:	4770      	bx	lr

1a000814 <Chip_UART_TXEnable>:
1a000814:	b480      	push	{r7}
1a000816:	b083      	sub	sp, #12
1a000818:	af00      	add	r7, sp, #0
1a00081a:	6078      	str	r0, [r7, #4]
1a00081c:	687b      	ldr	r3, [r7, #4]
1a00081e:	2201      	movs	r2, #1
1a000820:	65da      	str	r2, [r3, #92]	; 0x5c
1a000822:	bf00      	nop
1a000824:	370c      	adds	r7, #12
1a000826:	46bd      	mov	sp, r7
1a000828:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00082c:	4770      	bx	lr

1a00082e <Chip_UART_IntEnable>:
1a00082e:	b480      	push	{r7}
1a000830:	b083      	sub	sp, #12
1a000832:	af00      	add	r7, sp, #0
1a000834:	6078      	str	r0, [r7, #4]
1a000836:	6039      	str	r1, [r7, #0]
1a000838:	687b      	ldr	r3, [r7, #4]
1a00083a:	685a      	ldr	r2, [r3, #4]
1a00083c:	683b      	ldr	r3, [r7, #0]
1a00083e:	431a      	orrs	r2, r3
1a000840:	687b      	ldr	r3, [r7, #4]
1a000842:	605a      	str	r2, [r3, #4]
1a000844:	bf00      	nop
1a000846:	370c      	adds	r7, #12
1a000848:	46bd      	mov	sp, r7
1a00084a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00084e:	4770      	bx	lr

1a000850 <Chip_UART_SetupFIFOS>:
1a000850:	b480      	push	{r7}
1a000852:	b083      	sub	sp, #12
1a000854:	af00      	add	r7, sp, #0
1a000856:	6078      	str	r0, [r7, #4]
1a000858:	6039      	str	r1, [r7, #0]
1a00085a:	687b      	ldr	r3, [r7, #4]
1a00085c:	683a      	ldr	r2, [r7, #0]
1a00085e:	609a      	str	r2, [r3, #8]
1a000860:	bf00      	nop
1a000862:	370c      	adds	r7, #12
1a000864:	46bd      	mov	sp, r7
1a000866:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00086a:	4770      	bx	lr

1a00086c <Chip_UART_ConfigData>:
1a00086c:	b480      	push	{r7}
1a00086e:	b083      	sub	sp, #12
1a000870:	af00      	add	r7, sp, #0
1a000872:	6078      	str	r0, [r7, #4]
1a000874:	6039      	str	r1, [r7, #0]
1a000876:	687b      	ldr	r3, [r7, #4]
1a000878:	683a      	ldr	r2, [r7, #0]
1a00087a:	60da      	str	r2, [r3, #12]
1a00087c:	bf00      	nop
1a00087e:	370c      	adds	r7, #12
1a000880:	46bd      	mov	sp, r7
1a000882:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000886:	4770      	bx	lr

1a000888 <inicializar_sistema>:
1a000888:	b580      	push	{r7, lr}
1a00088a:	af00      	add	r7, sp, #0
1a00088c:	f000 f9e4 	bl	1a000c58 <Chip_SetupXtalClocking>
1a000890:	f001 fad4 	bl	1a001e3c <SystemCoreClockUpdate>
1a000894:	f000 fc62 	bl	1a00115c <StopWatch_Init>
1a000898:	f000 f8ba 	bl	1a000a10 <fpuInit>
1a00089c:	bf00      	nop
1a00089e:	bd80      	pop	{r7, pc}

1a0008a0 <inicializar_leds>:
1a0008a0:	b590      	push	{r4, r7, lr}
1a0008a2:	b083      	sub	sp, #12
1a0008a4:	af00      	add	r7, sp, #0
1a0008a6:	482e      	ldr	r0, [pc, #184]	; (1a000960 <inicializar_leds+0xc0>)
1a0008a8:	f001 fad4 	bl	1a001e54 <Chip_GPIO_Init>
1a0008ac:	2300      	movs	r3, #0
1a0008ae:	71fb      	strb	r3, [r7, #7]
1a0008b0:	e04e      	b.n	1a000950 <inicializar_leds+0xb0>
1a0008b2:	79fa      	ldrb	r2, [r7, #7]
1a0008b4:	492b      	ldr	r1, [pc, #172]	; (1a000964 <inicializar_leds+0xc4>)
1a0008b6:	4613      	mov	r3, r2
1a0008b8:	009b      	lsls	r3, r3, #2
1a0008ba:	4413      	add	r3, r2
1a0008bc:	005b      	lsls	r3, r3, #1
1a0008be:	440b      	add	r3, r1
1a0008c0:	7818      	ldrb	r0, [r3, #0]
1a0008c2:	79fa      	ldrb	r2, [r7, #7]
1a0008c4:	4927      	ldr	r1, [pc, #156]	; (1a000964 <inicializar_leds+0xc4>)
1a0008c6:	4613      	mov	r3, r2
1a0008c8:	009b      	lsls	r3, r3, #2
1a0008ca:	4413      	add	r3, r2
1a0008cc:	005b      	lsls	r3, r3, #1
1a0008ce:	440b      	add	r3, r1
1a0008d0:	3301      	adds	r3, #1
1a0008d2:	781c      	ldrb	r4, [r3, #0]
1a0008d4:	79fa      	ldrb	r2, [r7, #7]
1a0008d6:	4923      	ldr	r1, [pc, #140]	; (1a000964 <inicializar_leds+0xc4>)
1a0008d8:	4613      	mov	r3, r2
1a0008da:	009b      	lsls	r3, r3, #2
1a0008dc:	4413      	add	r3, r2
1a0008de:	005b      	lsls	r3, r3, #1
1a0008e0:	440b      	add	r3, r1
1a0008e2:	3304      	adds	r3, #4
1a0008e4:	881b      	ldrh	r3, [r3, #0]
1a0008e6:	461a      	mov	r2, r3
1a0008e8:	4621      	mov	r1, r4
1a0008ea:	f7ff ff29 	bl	1a000740 <Chip_SCU_PinMuxSet>
1a0008ee:	79fa      	ldrb	r2, [r7, #7]
1a0008f0:	491c      	ldr	r1, [pc, #112]	; (1a000964 <inicializar_leds+0xc4>)
1a0008f2:	4613      	mov	r3, r2
1a0008f4:	009b      	lsls	r3, r3, #2
1a0008f6:	4413      	add	r3, r2
1a0008f8:	005b      	lsls	r3, r3, #1
1a0008fa:	440b      	add	r3, r1
1a0008fc:	3302      	adds	r3, #2
1a0008fe:	7818      	ldrb	r0, [r3, #0]
1a000900:	79fa      	ldrb	r2, [r7, #7]
1a000902:	4918      	ldr	r1, [pc, #96]	; (1a000964 <inicializar_leds+0xc4>)
1a000904:	4613      	mov	r3, r2
1a000906:	009b      	lsls	r3, r3, #2
1a000908:	4413      	add	r3, r2
1a00090a:	005b      	lsls	r3, r3, #1
1a00090c:	440b      	add	r3, r1
1a00090e:	3303      	adds	r3, #3
1a000910:	781b      	ldrb	r3, [r3, #0]
1a000912:	461a      	mov	r2, r3
1a000914:	4601      	mov	r1, r0
1a000916:	4812      	ldr	r0, [pc, #72]	; (1a000960 <inicializar_leds+0xc0>)
1a000918:	f7ff ff49 	bl	1a0007ae <Chip_GPIO_SetPinDIROutput>
1a00091c:	79fa      	ldrb	r2, [r7, #7]
1a00091e:	4911      	ldr	r1, [pc, #68]	; (1a000964 <inicializar_leds+0xc4>)
1a000920:	4613      	mov	r3, r2
1a000922:	009b      	lsls	r3, r3, #2
1a000924:	4413      	add	r3, r2
1a000926:	005b      	lsls	r3, r3, #1
1a000928:	440b      	add	r3, r1
1a00092a:	3302      	adds	r3, #2
1a00092c:	7818      	ldrb	r0, [r3, #0]
1a00092e:	79fa      	ldrb	r2, [r7, #7]
1a000930:	490c      	ldr	r1, [pc, #48]	; (1a000964 <inicializar_leds+0xc4>)
1a000932:	4613      	mov	r3, r2
1a000934:	009b      	lsls	r3, r3, #2
1a000936:	4413      	add	r3, r2
1a000938:	005b      	lsls	r3, r3, #1
1a00093a:	440b      	add	r3, r1
1a00093c:	3303      	adds	r3, #3
1a00093e:	781b      	ldrb	r3, [r3, #0]
1a000940:	461a      	mov	r2, r3
1a000942:	4601      	mov	r1, r0
1a000944:	4806      	ldr	r0, [pc, #24]	; (1a000960 <inicializar_leds+0xc0>)
1a000946:	f7ff ff51 	bl	1a0007ec <Chip_GPIO_SetPortOutLow>
1a00094a:	79fb      	ldrb	r3, [r7, #7]
1a00094c:	3301      	adds	r3, #1
1a00094e:	71fb      	strb	r3, [r7, #7]
1a000950:	79fb      	ldrb	r3, [r7, #7]
1a000952:	2b05      	cmp	r3, #5
1a000954:	d9ad      	bls.n	1a0008b2 <inicializar_leds+0x12>
1a000956:	bf00      	nop
1a000958:	370c      	adds	r7, #12
1a00095a:	46bd      	mov	sp, r7
1a00095c:	bd90      	pop	{r4, r7, pc}
1a00095e:	bf00      	nop
1a000960:	400f4000 	.word	0x400f4000
1a000964:	1a002014 	.word	0x1a002014

1a000968 <inicializar_USART>:
1a000968:	b580      	push	{r7, lr}
1a00096a:	af00      	add	r7, sp, #0
1a00096c:	481a      	ldr	r0, [pc, #104]	; (1a0009d8 <inicializar_USART+0x70>)
1a00096e:	f000 fabf 	bl	1a000ef0 <Chip_UART_Init>
1a000972:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a000976:	4818      	ldr	r0, [pc, #96]	; (1a0009d8 <inicializar_USART+0x70>)
1a000978:	f000 fafe 	bl	1a000f78 <Chip_UART_SetBaud>
1a00097c:	2103      	movs	r1, #3
1a00097e:	4816      	ldr	r0, [pc, #88]	; (1a0009d8 <inicializar_USART+0x70>)
1a000980:	f7ff ff74 	bl	1a00086c <Chip_UART_ConfigData>
1a000984:	4814      	ldr	r0, [pc, #80]	; (1a0009d8 <inicializar_USART+0x70>)
1a000986:	f7ff ff45 	bl	1a000814 <Chip_UART_TXEnable>
1a00098a:	21c7      	movs	r1, #199	; 0xc7
1a00098c:	4812      	ldr	r0, [pc, #72]	; (1a0009d8 <inicializar_USART+0x70>)
1a00098e:	f7ff ff5f 	bl	1a000850 <Chip_UART_SetupFIFOS>
1a000992:	2107      	movs	r1, #7
1a000994:	4810      	ldr	r0, [pc, #64]	; (1a0009d8 <inicializar_USART+0x70>)
1a000996:	f7ff ff4a 	bl	1a00082e <Chip_UART_IntEnable>
1a00099a:	f44f 7300 	mov.w	r3, #512	; 0x200
1a00099e:	2201      	movs	r2, #1
1a0009a0:	490e      	ldr	r1, [pc, #56]	; (1a0009dc <inicializar_USART+0x74>)
1a0009a2:	480f      	ldr	r0, [pc, #60]	; (1a0009e0 <inicializar_USART+0x78>)
1a0009a4:	f000 fc5c 	bl	1a001260 <RingBuffer_Init>
1a0009a8:	f44f 7300 	mov.w	r3, #512	; 0x200
1a0009ac:	2201      	movs	r2, #1
1a0009ae:	490d      	ldr	r1, [pc, #52]	; (1a0009e4 <inicializar_USART+0x7c>)
1a0009b0:	480d      	ldr	r0, [pc, #52]	; (1a0009e8 <inicializar_USART+0x80>)
1a0009b2:	f000 fc55 	bl	1a001260 <RingBuffer_Init>
1a0009b6:	201a      	movs	r0, #26
1a0009b8:	f7ff fea8 	bl	1a00070c <NVIC_EnableIRQ>
1a0009bc:	2306      	movs	r3, #6
1a0009be:	2218      	movs	r2, #24
1a0009c0:	2101      	movs	r1, #1
1a0009c2:	2007      	movs	r0, #7
1a0009c4:	f7ff fed6 	bl	1a000774 <Chip_SCU_PinMux>
1a0009c8:	2306      	movs	r3, #6
1a0009ca:	22d0      	movs	r2, #208	; 0xd0
1a0009cc:	2102      	movs	r1, #2
1a0009ce:	2007      	movs	r0, #7
1a0009d0:	f7ff fed0 	bl	1a000774 <Chip_SCU_PinMux>
1a0009d4:	bf00      	nop
1a0009d6:	bd80      	pop	{r7, pc}
1a0009d8:	400c1000 	.word	0x400c1000
1a0009dc:	1000032c 	.word	0x1000032c
1a0009e0:	10000314 	.word	0x10000314
1a0009e4:	10000110 	.word	0x10000110
1a0009e8:	100000f8 	.word	0x100000f8

1a0009ec <putChr>:
1a0009ec:	b580      	push	{r7, lr}
1a0009ee:	b082      	sub	sp, #8
1a0009f0:	af00      	add	r7, sp, #0
1a0009f2:	6078      	str	r0, [r7, #4]
1a0009f4:	1d3a      	adds	r2, r7, #4
1a0009f6:	2301      	movs	r3, #1
1a0009f8:	4903      	ldr	r1, [pc, #12]	; (1a000a08 <putChr+0x1c>)
1a0009fa:	4804      	ldr	r0, [pc, #16]	; (1a000a0c <putChr+0x20>)
1a0009fc:	f000 fb3b 	bl	1a001076 <Chip_UART_SendRB>
1a000a00:	bf00      	nop
1a000a02:	3708      	adds	r7, #8
1a000a04:	46bd      	mov	sp, r7
1a000a06:	bd80      	pop	{r7, pc}
1a000a08:	100000f8 	.word	0x100000f8
1a000a0c:	400c1000 	.word	0x400c1000

1a000a10 <fpuInit>:
1a000a10:	b480      	push	{r7}
1a000a12:	b089      	sub	sp, #36	; 0x24
1a000a14:	af00      	add	r7, sp, #0
1a000a16:	4b16      	ldr	r3, [pc, #88]	; (1a000a70 <fpuInit+0x60>)
1a000a18:	61fb      	str	r3, [r7, #28]
1a000a1a:	4b16      	ldr	r3, [pc, #88]	; (1a000a74 <fpuInit+0x64>)
1a000a1c:	61bb      	str	r3, [r7, #24]
1a000a1e:	4b16      	ldr	r3, [pc, #88]	; (1a000a78 <fpuInit+0x68>)
1a000a20:	617b      	str	r3, [r7, #20]
1a000a22:	2300      	movs	r3, #0
1a000a24:	74fb      	strb	r3, [r7, #19]
1a000a26:	69bb      	ldr	r3, [r7, #24]
1a000a28:	681b      	ldr	r3, [r3, #0]
1a000a2a:	60bb      	str	r3, [r7, #8]
1a000a2c:	697b      	ldr	r3, [r7, #20]
1a000a2e:	681b      	ldr	r3, [r3, #0]
1a000a30:	607b      	str	r3, [r7, #4]
1a000a32:	68bb      	ldr	r3, [r7, #8]
1a000a34:	4a11      	ldr	r2, [pc, #68]	; (1a000a7c <fpuInit+0x6c>)
1a000a36:	4293      	cmp	r3, r2
1a000a38:	d105      	bne.n	1a000a46 <fpuInit+0x36>
1a000a3a:	687b      	ldr	r3, [r7, #4]
1a000a3c:	4a10      	ldr	r2, [pc, #64]	; (1a000a80 <fpuInit+0x70>)
1a000a3e:	4293      	cmp	r3, r2
1a000a40:	d101      	bne.n	1a000a46 <fpuInit+0x36>
1a000a42:	2301      	movs	r3, #1
1a000a44:	e000      	b.n	1a000a48 <fpuInit+0x38>
1a000a46:	2300      	movs	r3, #0
1a000a48:	74fb      	strb	r3, [r7, #19]
1a000a4a:	7cfb      	ldrb	r3, [r7, #19]
1a000a4c:	2b00      	cmp	r3, #0
1a000a4e:	d009      	beq.n	1a000a64 <fpuInit+0x54>
1a000a50:	69fb      	ldr	r3, [r7, #28]
1a000a52:	681b      	ldr	r3, [r3, #0]
1a000a54:	60fb      	str	r3, [r7, #12]
1a000a56:	68fb      	ldr	r3, [r7, #12]
1a000a58:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a000a5c:	60fb      	str	r3, [r7, #12]
1a000a5e:	68fa      	ldr	r2, [r7, #12]
1a000a60:	69fb      	ldr	r3, [r7, #28]
1a000a62:	601a      	str	r2, [r3, #0]
1a000a64:	bf00      	nop
1a000a66:	3724      	adds	r7, #36	; 0x24
1a000a68:	46bd      	mov	sp, r7
1a000a6a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a6e:	4770      	bx	lr
1a000a70:	e000ed88 	.word	0xe000ed88
1a000a74:	e000ef40 	.word	0xe000ef40
1a000a78:	e000ef44 	.word	0xe000ef44
1a000a7c:	10110021 	.word	0x10110021
1a000a80:	11000011 	.word	0x11000011

1a000a84 <Chip_Clock_DisableMainPLL>:
1a000a84:	b480      	push	{r7}
1a000a86:	af00      	add	r7, sp, #0
1a000a88:	4b05      	ldr	r3, [pc, #20]	; (1a000aa0 <Chip_Clock_DisableMainPLL+0x1c>)
1a000a8a:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000a8c:	4a04      	ldr	r2, [pc, #16]	; (1a000aa0 <Chip_Clock_DisableMainPLL+0x1c>)
1a000a8e:	f043 0301 	orr.w	r3, r3, #1
1a000a92:	6453      	str	r3, [r2, #68]	; 0x44
1a000a94:	bf00      	nop
1a000a96:	46bd      	mov	sp, r7
1a000a98:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a9c:	4770      	bx	lr
1a000a9e:	bf00      	nop
1a000aa0:	40050000 	.word	0x40050000

1a000aa4 <Chip_Clock_SetupMainPLL>:
1a000aa4:	b480      	push	{r7}
1a000aa6:	b083      	sub	sp, #12
1a000aa8:	af00      	add	r7, sp, #0
1a000aaa:	6078      	str	r0, [r7, #4]
1a000aac:	687b      	ldr	r3, [r7, #4]
1a000aae:	681b      	ldr	r3, [r3, #0]
1a000ab0:	461a      	mov	r2, r3
1a000ab2:	687b      	ldr	r3, [r7, #4]
1a000ab4:	791b      	ldrb	r3, [r3, #4]
1a000ab6:	061b      	lsls	r3, r3, #24
1a000ab8:	4313      	orrs	r3, r2
1a000aba:	687a      	ldr	r2, [r7, #4]
1a000abc:	6912      	ldr	r2, [r2, #16]
1a000abe:	0412      	lsls	r2, r2, #16
1a000ac0:	4313      	orrs	r3, r2
1a000ac2:	687a      	ldr	r2, [r7, #4]
1a000ac4:	6892      	ldr	r2, [r2, #8]
1a000ac6:	0312      	lsls	r2, r2, #12
1a000ac8:	4313      	orrs	r3, r2
1a000aca:	687a      	ldr	r2, [r7, #4]
1a000acc:	68d2      	ldr	r2, [r2, #12]
1a000ace:	0212      	lsls	r2, r2, #8
1a000ad0:	4313      	orrs	r3, r2
1a000ad2:	4a05      	ldr	r2, [pc, #20]	; (1a000ae8 <Chip_Clock_SetupMainPLL+0x44>)
1a000ad4:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a000ad8:	6453      	str	r3, [r2, #68]	; 0x44
1a000ada:	bf00      	nop
1a000adc:	370c      	adds	r7, #12
1a000ade:	46bd      	mov	sp, r7
1a000ae0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ae4:	4770      	bx	lr
1a000ae6:	bf00      	nop
1a000ae8:	40050000 	.word	0x40050000

1a000aec <Chip_Clock_MainPLLLocked>:
1a000aec:	b480      	push	{r7}
1a000aee:	af00      	add	r7, sp, #0
1a000af0:	4b06      	ldr	r3, [pc, #24]	; (1a000b0c <Chip_Clock_MainPLLLocked+0x20>)
1a000af2:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a000af4:	f003 0301 	and.w	r3, r3, #1
1a000af8:	2b00      	cmp	r3, #0
1a000afa:	bf14      	ite	ne
1a000afc:	2301      	movne	r3, #1
1a000afe:	2300      	moveq	r3, #0
1a000b00:	b2db      	uxtb	r3, r3
1a000b02:	4618      	mov	r0, r3
1a000b04:	46bd      	mov	sp, r7
1a000b06:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b0a:	4770      	bx	lr
1a000b0c:	40050000 	.word	0x40050000

1a000b10 <Chip_SetupCoreClock>:
1a000b10:	b590      	push	{r4, r7, lr}
1a000b12:	b08f      	sub	sp, #60	; 0x3c
1a000b14:	af00      	add	r7, sp, #0
1a000b16:	4603      	mov	r3, r0
1a000b18:	6039      	str	r1, [r7, #0]
1a000b1a:	71fb      	strb	r3, [r7, #7]
1a000b1c:	4613      	mov	r3, r2
1a000b1e:	71bb      	strb	r3, [r7, #6]
1a000b20:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a000b24:	62bb      	str	r3, [r7, #40]	; 0x28
1a000b26:	2300      	movs	r3, #0
1a000b28:	633b      	str	r3, [r7, #48]	; 0x30
1a000b2a:	2300      	movs	r3, #0
1a000b2c:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000b2e:	79fb      	ldrb	r3, [r7, #7]
1a000b30:	2b06      	cmp	r3, #6
1a000b32:	d101      	bne.n	1a000b38 <Chip_SetupCoreClock+0x28>
1a000b34:	f000 fe6a 	bl	1a00180c <Chip_Clock_EnableCrystal>
1a000b38:	79f9      	ldrb	r1, [r7, #7]
1a000b3a:	2300      	movs	r3, #0
1a000b3c:	2201      	movs	r2, #1
1a000b3e:	2004      	movs	r0, #4
1a000b40:	f001 f856 	bl	1a001bf0 <Chip_Clock_SetBaseClock>
1a000b44:	f7ff ff9e 	bl	1a000a84 <Chip_Clock_DisableMainPLL>
1a000b48:	79fb      	ldrb	r3, [r7, #7]
1a000b4a:	733b      	strb	r3, [r7, #12]
1a000b4c:	f107 0308 	add.w	r3, r7, #8
1a000b50:	4619      	mov	r1, r3
1a000b52:	6838      	ldr	r0, [r7, #0]
1a000b54:	f000 fe92 	bl	1a00187c <Chip_Clock_CalcMainPLLValue>
1a000b58:	683b      	ldr	r3, [r7, #0]
1a000b5a:	4a3d      	ldr	r2, [pc, #244]	; (1a000c50 <Chip_SetupCoreClock+0x140>)
1a000b5c:	4293      	cmp	r3, r2
1a000b5e:	d916      	bls.n	1a000b8e <Chip_SetupCoreClock+0x7e>
1a000b60:	68bb      	ldr	r3, [r7, #8]
1a000b62:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a000b66:	2b00      	cmp	r3, #0
1a000b68:	d000      	beq.n	1a000b6c <Chip_SetupCoreClock+0x5c>
1a000b6a:	e7fe      	b.n	1a000b6a <Chip_SetupCoreClock+0x5a>
1a000b6c:	68bb      	ldr	r3, [r7, #8]
1a000b6e:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a000b72:	2b00      	cmp	r3, #0
1a000b74:	d006      	beq.n	1a000b84 <Chip_SetupCoreClock+0x74>
1a000b76:	2301      	movs	r3, #1
1a000b78:	633b      	str	r3, [r7, #48]	; 0x30
1a000b7a:	68bb      	ldr	r3, [r7, #8]
1a000b7c:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a000b80:	60bb      	str	r3, [r7, #8]
1a000b82:	e004      	b.n	1a000b8e <Chip_SetupCoreClock+0x7e>
1a000b84:	2301      	movs	r3, #1
1a000b86:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000b88:	697b      	ldr	r3, [r7, #20]
1a000b8a:	3301      	adds	r3, #1
1a000b8c:	617b      	str	r3, [r7, #20]
1a000b8e:	f107 0308 	add.w	r3, r7, #8
1a000b92:	4618      	mov	r0, r3
1a000b94:	f7ff ff86 	bl	1a000aa4 <Chip_Clock_SetupMainPLL>
1a000b98:	bf00      	nop
1a000b9a:	f7ff ffa7 	bl	1a000aec <Chip_Clock_MainPLLLocked>
1a000b9e:	4603      	mov	r3, r0
1a000ba0:	2b00      	cmp	r3, #0
1a000ba2:	d0fa      	beq.n	1a000b9a <Chip_SetupCoreClock+0x8a>
1a000ba4:	2300      	movs	r3, #0
1a000ba6:	2201      	movs	r2, #1
1a000ba8:	2109      	movs	r1, #9
1a000baa:	2004      	movs	r0, #4
1a000bac:	f001 f820 	bl	1a001bf0 <Chip_Clock_SetBaseClock>
1a000bb0:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a000bb2:	2b00      	cmp	r3, #0
1a000bb4:	d012      	beq.n	1a000bdc <Chip_SetupCoreClock+0xcc>
1a000bb6:	f641 3358 	movw	r3, #7000	; 0x1b58
1a000bba:	62bb      	str	r3, [r7, #40]	; 0x28
1a000bbc:	bf00      	nop
1a000bbe:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000bc0:	1e5a      	subs	r2, r3, #1
1a000bc2:	62ba      	str	r2, [r7, #40]	; 0x28
1a000bc4:	2b00      	cmp	r3, #0
1a000bc6:	d1fa      	bne.n	1a000bbe <Chip_SetupCoreClock+0xae>
1a000bc8:	68bb      	ldr	r3, [r7, #8]
1a000bca:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a000bce:	60bb      	str	r3, [r7, #8]
1a000bd0:	f107 0308 	add.w	r3, r7, #8
1a000bd4:	4618      	mov	r0, r3
1a000bd6:	f7ff ff65 	bl	1a000aa4 <Chip_Clock_SetupMainPLL>
1a000bda:	e013      	b.n	1a000c04 <Chip_SetupCoreClock+0xf4>
1a000bdc:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000bde:	2b00      	cmp	r3, #0
1a000be0:	d010      	beq.n	1a000c04 <Chip_SetupCoreClock+0xf4>
1a000be2:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a000be6:	62bb      	str	r3, [r7, #40]	; 0x28
1a000be8:	bf00      	nop
1a000bea:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000bec:	1e5a      	subs	r2, r3, #1
1a000bee:	62ba      	str	r2, [r7, #40]	; 0x28
1a000bf0:	2b00      	cmp	r3, #0
1a000bf2:	d1fa      	bne.n	1a000bea <Chip_SetupCoreClock+0xda>
1a000bf4:	697b      	ldr	r3, [r7, #20]
1a000bf6:	3b01      	subs	r3, #1
1a000bf8:	617b      	str	r3, [r7, #20]
1a000bfa:	f107 0308 	add.w	r3, r7, #8
1a000bfe:	4618      	mov	r0, r3
1a000c00:	f7ff ff50 	bl	1a000aa4 <Chip_Clock_SetupMainPLL>
1a000c04:	79bb      	ldrb	r3, [r7, #6]
1a000c06:	2b00      	cmp	r3, #0
1a000c08:	d01e      	beq.n	1a000c48 <Chip_SetupCoreClock+0x138>
1a000c0a:	2300      	movs	r3, #0
1a000c0c:	637b      	str	r3, [r7, #52]	; 0x34
1a000c0e:	e018      	b.n	1a000c42 <Chip_SetupCoreClock+0x132>
1a000c10:	4a10      	ldr	r2, [pc, #64]	; (1a000c54 <Chip_SetupCoreClock+0x144>)
1a000c12:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000c14:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a000c18:	4a0e      	ldr	r2, [pc, #56]	; (1a000c54 <Chip_SetupCoreClock+0x144>)
1a000c1a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000c1c:	009b      	lsls	r3, r3, #2
1a000c1e:	4413      	add	r3, r2
1a000c20:	7859      	ldrb	r1, [r3, #1]
1a000c22:	4a0c      	ldr	r2, [pc, #48]	; (1a000c54 <Chip_SetupCoreClock+0x144>)
1a000c24:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000c26:	009b      	lsls	r3, r3, #2
1a000c28:	4413      	add	r3, r2
1a000c2a:	789c      	ldrb	r4, [r3, #2]
1a000c2c:	4a09      	ldr	r2, [pc, #36]	; (1a000c54 <Chip_SetupCoreClock+0x144>)
1a000c2e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000c30:	009b      	lsls	r3, r3, #2
1a000c32:	4413      	add	r3, r2
1a000c34:	78db      	ldrb	r3, [r3, #3]
1a000c36:	4622      	mov	r2, r4
1a000c38:	f000 ffda 	bl	1a001bf0 <Chip_Clock_SetBaseClock>
1a000c3c:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000c3e:	3301      	adds	r3, #1
1a000c40:	637b      	str	r3, [r7, #52]	; 0x34
1a000c42:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000c44:	2b11      	cmp	r3, #17
1a000c46:	d9e3      	bls.n	1a000c10 <Chip_SetupCoreClock+0x100>
1a000c48:	bf00      	nop
1a000c4a:	373c      	adds	r7, #60	; 0x3c
1a000c4c:	46bd      	mov	sp, r7
1a000c4e:	bd90      	pop	{r4, r7, pc}
1a000c50:	068e7780 	.word	0x068e7780
1a000c54:	1a002050 	.word	0x1a002050

1a000c58 <Chip_SetupXtalClocking>:
1a000c58:	b580      	push	{r7, lr}
1a000c5a:	af00      	add	r7, sp, #0
1a000c5c:	2201      	movs	r2, #1
1a000c5e:	4903      	ldr	r1, [pc, #12]	; (1a000c6c <Chip_SetupXtalClocking+0x14>)
1a000c60:	2006      	movs	r0, #6
1a000c62:	f7ff ff55 	bl	1a000b10 <Chip_SetupCoreClock>
1a000c66:	bf00      	nop
1a000c68:	bd80      	pop	{r7, pc}
1a000c6a:	bf00      	nop
1a000c6c:	0c28cb00 	.word	0x0c28cb00

1a000c70 <RingBuffer_IsEmpty>:
1a000c70:	b480      	push	{r7}
1a000c72:	b083      	sub	sp, #12
1a000c74:	af00      	add	r7, sp, #0
1a000c76:	6078      	str	r0, [r7, #4]
1a000c78:	687b      	ldr	r3, [r7, #4]
1a000c7a:	330c      	adds	r3, #12
1a000c7c:	681a      	ldr	r2, [r3, #0]
1a000c7e:	687b      	ldr	r3, [r7, #4]
1a000c80:	3310      	adds	r3, #16
1a000c82:	681b      	ldr	r3, [r3, #0]
1a000c84:	429a      	cmp	r2, r3
1a000c86:	bf0c      	ite	eq
1a000c88:	2301      	moveq	r3, #1
1a000c8a:	2300      	movne	r3, #0
1a000c8c:	b2db      	uxtb	r3, r3
1a000c8e:	4618      	mov	r0, r3
1a000c90:	370c      	adds	r7, #12
1a000c92:	46bd      	mov	sp, r7
1a000c94:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c98:	4770      	bx	lr

1a000c9a <Chip_UART_TXDisable>:
1a000c9a:	b480      	push	{r7}
1a000c9c:	b083      	sub	sp, #12
1a000c9e:	af00      	add	r7, sp, #0
1a000ca0:	6078      	str	r0, [r7, #4]
1a000ca2:	687b      	ldr	r3, [r7, #4]
1a000ca4:	2200      	movs	r2, #0
1a000ca6:	65da      	str	r2, [r3, #92]	; 0x5c
1a000ca8:	bf00      	nop
1a000caa:	370c      	adds	r7, #12
1a000cac:	46bd      	mov	sp, r7
1a000cae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cb2:	4770      	bx	lr

1a000cb4 <Chip_UART_SendByte>:
1a000cb4:	b480      	push	{r7}
1a000cb6:	b083      	sub	sp, #12
1a000cb8:	af00      	add	r7, sp, #0
1a000cba:	6078      	str	r0, [r7, #4]
1a000cbc:	460b      	mov	r3, r1
1a000cbe:	70fb      	strb	r3, [r7, #3]
1a000cc0:	78fa      	ldrb	r2, [r7, #3]
1a000cc2:	687b      	ldr	r3, [r7, #4]
1a000cc4:	601a      	str	r2, [r3, #0]
1a000cc6:	bf00      	nop
1a000cc8:	370c      	adds	r7, #12
1a000cca:	46bd      	mov	sp, r7
1a000ccc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cd0:	4770      	bx	lr

1a000cd2 <Chip_UART_ReadByte>:
1a000cd2:	b480      	push	{r7}
1a000cd4:	b083      	sub	sp, #12
1a000cd6:	af00      	add	r7, sp, #0
1a000cd8:	6078      	str	r0, [r7, #4]
1a000cda:	687b      	ldr	r3, [r7, #4]
1a000cdc:	681b      	ldr	r3, [r3, #0]
1a000cde:	b2db      	uxtb	r3, r3
1a000ce0:	4618      	mov	r0, r3
1a000ce2:	370c      	adds	r7, #12
1a000ce4:	46bd      	mov	sp, r7
1a000ce6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cea:	4770      	bx	lr

1a000cec <Chip_UART_IntEnable>:
1a000cec:	b480      	push	{r7}
1a000cee:	b083      	sub	sp, #12
1a000cf0:	af00      	add	r7, sp, #0
1a000cf2:	6078      	str	r0, [r7, #4]
1a000cf4:	6039      	str	r1, [r7, #0]
1a000cf6:	687b      	ldr	r3, [r7, #4]
1a000cf8:	685a      	ldr	r2, [r3, #4]
1a000cfa:	683b      	ldr	r3, [r7, #0]
1a000cfc:	431a      	orrs	r2, r3
1a000cfe:	687b      	ldr	r3, [r7, #4]
1a000d00:	605a      	str	r2, [r3, #4]
1a000d02:	bf00      	nop
1a000d04:	370c      	adds	r7, #12
1a000d06:	46bd      	mov	sp, r7
1a000d08:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d0c:	4770      	bx	lr

1a000d0e <Chip_UART_IntDisable>:
1a000d0e:	b480      	push	{r7}
1a000d10:	b083      	sub	sp, #12
1a000d12:	af00      	add	r7, sp, #0
1a000d14:	6078      	str	r0, [r7, #4]
1a000d16:	6039      	str	r1, [r7, #0]
1a000d18:	687b      	ldr	r3, [r7, #4]
1a000d1a:	685a      	ldr	r2, [r3, #4]
1a000d1c:	683b      	ldr	r3, [r7, #0]
1a000d1e:	43db      	mvns	r3, r3
1a000d20:	401a      	ands	r2, r3
1a000d22:	687b      	ldr	r3, [r7, #4]
1a000d24:	605a      	str	r2, [r3, #4]
1a000d26:	bf00      	nop
1a000d28:	370c      	adds	r7, #12
1a000d2a:	46bd      	mov	sp, r7
1a000d2c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d30:	4770      	bx	lr

1a000d32 <Chip_UART_ReadIntIDReg>:
1a000d32:	b480      	push	{r7}
1a000d34:	b083      	sub	sp, #12
1a000d36:	af00      	add	r7, sp, #0
1a000d38:	6078      	str	r0, [r7, #4]
1a000d3a:	687b      	ldr	r3, [r7, #4]
1a000d3c:	689b      	ldr	r3, [r3, #8]
1a000d3e:	4618      	mov	r0, r3
1a000d40:	370c      	adds	r7, #12
1a000d42:	46bd      	mov	sp, r7
1a000d44:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d48:	4770      	bx	lr

1a000d4a <Chip_UART_SetupFIFOS>:
1a000d4a:	b480      	push	{r7}
1a000d4c:	b083      	sub	sp, #12
1a000d4e:	af00      	add	r7, sp, #0
1a000d50:	6078      	str	r0, [r7, #4]
1a000d52:	6039      	str	r1, [r7, #0]
1a000d54:	687b      	ldr	r3, [r7, #4]
1a000d56:	683a      	ldr	r2, [r7, #0]
1a000d58:	609a      	str	r2, [r3, #8]
1a000d5a:	bf00      	nop
1a000d5c:	370c      	adds	r7, #12
1a000d5e:	46bd      	mov	sp, r7
1a000d60:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d64:	4770      	bx	lr

1a000d66 <Chip_UART_ConfigData>:
1a000d66:	b480      	push	{r7}
1a000d68:	b083      	sub	sp, #12
1a000d6a:	af00      	add	r7, sp, #0
1a000d6c:	6078      	str	r0, [r7, #4]
1a000d6e:	6039      	str	r1, [r7, #0]
1a000d70:	687b      	ldr	r3, [r7, #4]
1a000d72:	683a      	ldr	r2, [r7, #0]
1a000d74:	60da      	str	r2, [r3, #12]
1a000d76:	bf00      	nop
1a000d78:	370c      	adds	r7, #12
1a000d7a:	46bd      	mov	sp, r7
1a000d7c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d80:	4770      	bx	lr

1a000d82 <Chip_UART_EnableDivisorAccess>:
1a000d82:	b480      	push	{r7}
1a000d84:	b083      	sub	sp, #12
1a000d86:	af00      	add	r7, sp, #0
1a000d88:	6078      	str	r0, [r7, #4]
1a000d8a:	687b      	ldr	r3, [r7, #4]
1a000d8c:	68db      	ldr	r3, [r3, #12]
1a000d8e:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a000d92:	687b      	ldr	r3, [r7, #4]
1a000d94:	60da      	str	r2, [r3, #12]
1a000d96:	bf00      	nop
1a000d98:	370c      	adds	r7, #12
1a000d9a:	46bd      	mov	sp, r7
1a000d9c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000da0:	4770      	bx	lr

1a000da2 <Chip_UART_DisableDivisorAccess>:
1a000da2:	b480      	push	{r7}
1a000da4:	b083      	sub	sp, #12
1a000da6:	af00      	add	r7, sp, #0
1a000da8:	6078      	str	r0, [r7, #4]
1a000daa:	687b      	ldr	r3, [r7, #4]
1a000dac:	68db      	ldr	r3, [r3, #12]
1a000dae:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a000db2:	687b      	ldr	r3, [r7, #4]
1a000db4:	60da      	str	r2, [r3, #12]
1a000db6:	bf00      	nop
1a000db8:	370c      	adds	r7, #12
1a000dba:	46bd      	mov	sp, r7
1a000dbc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000dc0:	4770      	bx	lr

1a000dc2 <Chip_UART_SetDivisorLatches>:
1a000dc2:	b480      	push	{r7}
1a000dc4:	b083      	sub	sp, #12
1a000dc6:	af00      	add	r7, sp, #0
1a000dc8:	6078      	str	r0, [r7, #4]
1a000dca:	460b      	mov	r3, r1
1a000dcc:	70fb      	strb	r3, [r7, #3]
1a000dce:	4613      	mov	r3, r2
1a000dd0:	70bb      	strb	r3, [r7, #2]
1a000dd2:	78fa      	ldrb	r2, [r7, #3]
1a000dd4:	687b      	ldr	r3, [r7, #4]
1a000dd6:	601a      	str	r2, [r3, #0]
1a000dd8:	78ba      	ldrb	r2, [r7, #2]
1a000dda:	687b      	ldr	r3, [r7, #4]
1a000ddc:	605a      	str	r2, [r3, #4]
1a000dde:	bf00      	nop
1a000de0:	370c      	adds	r7, #12
1a000de2:	46bd      	mov	sp, r7
1a000de4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000de8:	4770      	bx	lr

1a000dea <Chip_UART_ReadLineStatus>:
1a000dea:	b480      	push	{r7}
1a000dec:	b083      	sub	sp, #12
1a000dee:	af00      	add	r7, sp, #0
1a000df0:	6078      	str	r0, [r7, #4]
1a000df2:	687b      	ldr	r3, [r7, #4]
1a000df4:	695b      	ldr	r3, [r3, #20]
1a000df6:	4618      	mov	r0, r3
1a000df8:	370c      	adds	r7, #12
1a000dfa:	46bd      	mov	sp, r7
1a000dfc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e00:	4770      	bx	lr

1a000e02 <Chip_UART_SetAutoBaudReg>:
1a000e02:	b480      	push	{r7}
1a000e04:	b083      	sub	sp, #12
1a000e06:	af00      	add	r7, sp, #0
1a000e08:	6078      	str	r0, [r7, #4]
1a000e0a:	6039      	str	r1, [r7, #0]
1a000e0c:	687b      	ldr	r3, [r7, #4]
1a000e0e:	6a1a      	ldr	r2, [r3, #32]
1a000e10:	683b      	ldr	r3, [r7, #0]
1a000e12:	431a      	orrs	r2, r3
1a000e14:	687b      	ldr	r3, [r7, #4]
1a000e16:	621a      	str	r2, [r3, #32]
1a000e18:	bf00      	nop
1a000e1a:	370c      	adds	r7, #12
1a000e1c:	46bd      	mov	sp, r7
1a000e1e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e22:	4770      	bx	lr

1a000e24 <Chip_UART_GetIndex>:
1a000e24:	b480      	push	{r7}
1a000e26:	b085      	sub	sp, #20
1a000e28:	af00      	add	r7, sp, #0
1a000e2a:	6078      	str	r0, [r7, #4]
1a000e2c:	687b      	ldr	r3, [r7, #4]
1a000e2e:	60fb      	str	r3, [r7, #12]
1a000e30:	68fb      	ldr	r3, [r7, #12]
1a000e32:	4a10      	ldr	r2, [pc, #64]	; (1a000e74 <Chip_UART_GetIndex+0x50>)
1a000e34:	4293      	cmp	r3, r2
1a000e36:	d00f      	beq.n	1a000e58 <Chip_UART_GetIndex+0x34>
1a000e38:	4a0e      	ldr	r2, [pc, #56]	; (1a000e74 <Chip_UART_GetIndex+0x50>)
1a000e3a:	4293      	cmp	r3, r2
1a000e3c:	d803      	bhi.n	1a000e46 <Chip_UART_GetIndex+0x22>
1a000e3e:	4a0e      	ldr	r2, [pc, #56]	; (1a000e78 <Chip_UART_GetIndex+0x54>)
1a000e40:	4293      	cmp	r3, r2
1a000e42:	d007      	beq.n	1a000e54 <Chip_UART_GetIndex+0x30>
1a000e44:	e00e      	b.n	1a000e64 <Chip_UART_GetIndex+0x40>
1a000e46:	4a0d      	ldr	r2, [pc, #52]	; (1a000e7c <Chip_UART_GetIndex+0x58>)
1a000e48:	4293      	cmp	r3, r2
1a000e4a:	d007      	beq.n	1a000e5c <Chip_UART_GetIndex+0x38>
1a000e4c:	4a0c      	ldr	r2, [pc, #48]	; (1a000e80 <Chip_UART_GetIndex+0x5c>)
1a000e4e:	4293      	cmp	r3, r2
1a000e50:	d006      	beq.n	1a000e60 <Chip_UART_GetIndex+0x3c>
1a000e52:	e007      	b.n	1a000e64 <Chip_UART_GetIndex+0x40>
1a000e54:	2300      	movs	r3, #0
1a000e56:	e006      	b.n	1a000e66 <Chip_UART_GetIndex+0x42>
1a000e58:	2301      	movs	r3, #1
1a000e5a:	e004      	b.n	1a000e66 <Chip_UART_GetIndex+0x42>
1a000e5c:	2302      	movs	r3, #2
1a000e5e:	e002      	b.n	1a000e66 <Chip_UART_GetIndex+0x42>
1a000e60:	2303      	movs	r3, #3
1a000e62:	e000      	b.n	1a000e66 <Chip_UART_GetIndex+0x42>
1a000e64:	2300      	movs	r3, #0
1a000e66:	4618      	mov	r0, r3
1a000e68:	3714      	adds	r7, #20
1a000e6a:	46bd      	mov	sp, r7
1a000e6c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e70:	4770      	bx	lr
1a000e72:	bf00      	nop
1a000e74:	40082000 	.word	0x40082000
1a000e78:	40081000 	.word	0x40081000
1a000e7c:	400c1000 	.word	0x400c1000
1a000e80:	400c2000 	.word	0x400c2000

1a000e84 <Chip_UART_ABIntHandler>:
1a000e84:	b580      	push	{r7, lr}
1a000e86:	b082      	sub	sp, #8
1a000e88:	af00      	add	r7, sp, #0
1a000e8a:	6078      	str	r0, [r7, #4]
1a000e8c:	6878      	ldr	r0, [r7, #4]
1a000e8e:	f7ff ff50 	bl	1a000d32 <Chip_UART_ReadIntIDReg>
1a000e92:	4603      	mov	r3, r0
1a000e94:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a000e98:	2b00      	cmp	r3, #0
1a000e9a:	d011      	beq.n	1a000ec0 <Chip_UART_ABIntHandler+0x3c>
1a000e9c:	f44f 7180 	mov.w	r1, #256	; 0x100
1a000ea0:	6878      	ldr	r0, [r7, #4]
1a000ea2:	f7ff ffae 	bl	1a000e02 <Chip_UART_SetAutoBaudReg>
1a000ea6:	f44f 7180 	mov.w	r1, #256	; 0x100
1a000eaa:	6878      	ldr	r0, [r7, #4]
1a000eac:	f7ff ff2f 	bl	1a000d0e <Chip_UART_IntDisable>
1a000eb0:	4b0e      	ldr	r3, [pc, #56]	; (1a000eec <Chip_UART_ABIntHandler+0x68>)
1a000eb2:	781b      	ldrb	r3, [r3, #0]
1a000eb4:	b2db      	uxtb	r3, r3
1a000eb6:	2b00      	cmp	r3, #0
1a000eb8:	d102      	bne.n	1a000ec0 <Chip_UART_ABIntHandler+0x3c>
1a000eba:	4b0c      	ldr	r3, [pc, #48]	; (1a000eec <Chip_UART_ABIntHandler+0x68>)
1a000ebc:	2201      	movs	r2, #1
1a000ebe:	701a      	strb	r2, [r3, #0]
1a000ec0:	6878      	ldr	r0, [r7, #4]
1a000ec2:	f7ff ff36 	bl	1a000d32 <Chip_UART_ReadIntIDReg>
1a000ec6:	4603      	mov	r3, r0
1a000ec8:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a000ecc:	2b00      	cmp	r3, #0
1a000ece:	d009      	beq.n	1a000ee4 <Chip_UART_ABIntHandler+0x60>
1a000ed0:	f44f 7100 	mov.w	r1, #512	; 0x200
1a000ed4:	6878      	ldr	r0, [r7, #4]
1a000ed6:	f7ff ff94 	bl	1a000e02 <Chip_UART_SetAutoBaudReg>
1a000eda:	f44f 7100 	mov.w	r1, #512	; 0x200
1a000ede:	6878      	ldr	r0, [r7, #4]
1a000ee0:	f7ff ff15 	bl	1a000d0e <Chip_UART_IntDisable>
1a000ee4:	bf00      	nop
1a000ee6:	3708      	adds	r7, #8
1a000ee8:	46bd      	mov	sp, r7
1a000eea:	bd80      	pop	{r7, pc}
1a000eec:	10000000 	.word	0x10000000

1a000ef0 <Chip_UART_Init>:
1a000ef0:	b580      	push	{r7, lr}
1a000ef2:	b084      	sub	sp, #16
1a000ef4:	af00      	add	r7, sp, #0
1a000ef6:	6078      	str	r0, [r7, #4]
1a000ef8:	68fb      	ldr	r3, [r7, #12]
1a000efa:	6878      	ldr	r0, [r7, #4]
1a000efc:	f7ff ff92 	bl	1a000e24 <Chip_UART_GetIndex>
1a000f00:	4602      	mov	r2, r0
1a000f02:	4b1b      	ldr	r3, [pc, #108]	; (1a000f70 <Chip_UART_Init+0x80>)
1a000f04:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a000f08:	2301      	movs	r3, #1
1a000f0a:	2201      	movs	r2, #1
1a000f0c:	2101      	movs	r1, #1
1a000f0e:	f000 fee3 	bl	1a001cd8 <Chip_Clock_EnableOpts>
1a000f12:	2107      	movs	r1, #7
1a000f14:	6878      	ldr	r0, [r7, #4]
1a000f16:	f7ff ff18 	bl	1a000d4a <Chip_UART_SetupFIFOS>
1a000f1a:	6878      	ldr	r0, [r7, #4]
1a000f1c:	f7ff febd 	bl	1a000c9a <Chip_UART_TXDisable>
1a000f20:	687b      	ldr	r3, [r7, #4]
1a000f22:	2200      	movs	r2, #0
1a000f24:	605a      	str	r2, [r3, #4]
1a000f26:	687b      	ldr	r3, [r7, #4]
1a000f28:	2200      	movs	r2, #0
1a000f2a:	60da      	str	r2, [r3, #12]
1a000f2c:	687b      	ldr	r3, [r7, #4]
1a000f2e:	2200      	movs	r2, #0
1a000f30:	621a      	str	r2, [r3, #32]
1a000f32:	687b      	ldr	r3, [r7, #4]
1a000f34:	2200      	movs	r2, #0
1a000f36:	64da      	str	r2, [r3, #76]	; 0x4c
1a000f38:	687b      	ldr	r3, [r7, #4]
1a000f3a:	2200      	movs	r2, #0
1a000f3c:	655a      	str	r2, [r3, #84]	; 0x54
1a000f3e:	687b      	ldr	r3, [r7, #4]
1a000f40:	2200      	movs	r2, #0
1a000f42:	651a      	str	r2, [r3, #80]	; 0x50
1a000f44:	687b      	ldr	r3, [r7, #4]
1a000f46:	4a0b      	ldr	r2, [pc, #44]	; (1a000f74 <Chip_UART_Init+0x84>)
1a000f48:	4293      	cmp	r3, r2
1a000f4a:	d105      	bne.n	1a000f58 <Chip_UART_Init+0x68>
1a000f4c:	687b      	ldr	r3, [r7, #4]
1a000f4e:	2200      	movs	r2, #0
1a000f50:	611a      	str	r2, [r3, #16]
1a000f52:	687b      	ldr	r3, [r7, #4]
1a000f54:	699b      	ldr	r3, [r3, #24]
1a000f56:	60fb      	str	r3, [r7, #12]
1a000f58:	2103      	movs	r1, #3
1a000f5a:	6878      	ldr	r0, [r7, #4]
1a000f5c:	f7ff ff03 	bl	1a000d66 <Chip_UART_ConfigData>
1a000f60:	687b      	ldr	r3, [r7, #4]
1a000f62:	2210      	movs	r2, #16
1a000f64:	629a      	str	r2, [r3, #40]	; 0x28
1a000f66:	bf00      	nop
1a000f68:	3710      	adds	r7, #16
1a000f6a:	46bd      	mov	sp, r7
1a000f6c:	bd80      	pop	{r7, pc}
1a000f6e:	bf00      	nop
1a000f70:	1a002098 	.word	0x1a002098
1a000f74:	40082000 	.word	0x40082000

1a000f78 <Chip_UART_SetBaud>:
1a000f78:	b580      	push	{r7, lr}
1a000f7a:	b086      	sub	sp, #24
1a000f7c:	af00      	add	r7, sp, #0
1a000f7e:	6078      	str	r0, [r7, #4]
1a000f80:	6039      	str	r1, [r7, #0]
1a000f82:	6878      	ldr	r0, [r7, #4]
1a000f84:	f7ff ff4e 	bl	1a000e24 <Chip_UART_GetIndex>
1a000f88:	4602      	mov	r2, r0
1a000f8a:	4b16      	ldr	r3, [pc, #88]	; (1a000fe4 <Chip_UART_SetBaud+0x6c>)
1a000f8c:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a000f90:	4618      	mov	r0, r3
1a000f92:	f000 ff0f 	bl	1a001db4 <Chip_Clock_GetRate>
1a000f96:	6178      	str	r0, [r7, #20]
1a000f98:	683b      	ldr	r3, [r7, #0]
1a000f9a:	011b      	lsls	r3, r3, #4
1a000f9c:	697a      	ldr	r2, [r7, #20]
1a000f9e:	fbb2 f3f3 	udiv	r3, r2, r3
1a000fa2:	613b      	str	r3, [r7, #16]
1a000fa4:	693b      	ldr	r3, [r7, #16]
1a000fa6:	0a1b      	lsrs	r3, r3, #8
1a000fa8:	60fb      	str	r3, [r7, #12]
1a000faa:	68fb      	ldr	r3, [r7, #12]
1a000fac:	021b      	lsls	r3, r3, #8
1a000fae:	693a      	ldr	r2, [r7, #16]
1a000fb0:	1ad3      	subs	r3, r2, r3
1a000fb2:	60bb      	str	r3, [r7, #8]
1a000fb4:	6878      	ldr	r0, [r7, #4]
1a000fb6:	f7ff fee4 	bl	1a000d82 <Chip_UART_EnableDivisorAccess>
1a000fba:	68bb      	ldr	r3, [r7, #8]
1a000fbc:	b2db      	uxtb	r3, r3
1a000fbe:	68fa      	ldr	r2, [r7, #12]
1a000fc0:	b2d2      	uxtb	r2, r2
1a000fc2:	4619      	mov	r1, r3
1a000fc4:	6878      	ldr	r0, [r7, #4]
1a000fc6:	f7ff fefc 	bl	1a000dc2 <Chip_UART_SetDivisorLatches>
1a000fca:	6878      	ldr	r0, [r7, #4]
1a000fcc:	f7ff fee9 	bl	1a000da2 <Chip_UART_DisableDivisorAccess>
1a000fd0:	697a      	ldr	r2, [r7, #20]
1a000fd2:	693b      	ldr	r3, [r7, #16]
1a000fd4:	fbb2 f3f3 	udiv	r3, r2, r3
1a000fd8:	091b      	lsrs	r3, r3, #4
1a000fda:	4618      	mov	r0, r3
1a000fdc:	3718      	adds	r7, #24
1a000fde:	46bd      	mov	sp, r7
1a000fe0:	bd80      	pop	{r7, pc}
1a000fe2:	bf00      	nop
1a000fe4:	1a0020a0 	.word	0x1a0020a0

1a000fe8 <Chip_UART_RXIntHandlerRB>:
1a000fe8:	b580      	push	{r7, lr}
1a000fea:	b084      	sub	sp, #16
1a000fec:	af00      	add	r7, sp, #0
1a000fee:	6078      	str	r0, [r7, #4]
1a000ff0:	6039      	str	r1, [r7, #0]
1a000ff2:	e00a      	b.n	1a00100a <Chip_UART_RXIntHandlerRB+0x22>
1a000ff4:	6878      	ldr	r0, [r7, #4]
1a000ff6:	f7ff fe6c 	bl	1a000cd2 <Chip_UART_ReadByte>
1a000ffa:	4603      	mov	r3, r0
1a000ffc:	73fb      	strb	r3, [r7, #15]
1a000ffe:	f107 030f 	add.w	r3, r7, #15
1a001002:	4619      	mov	r1, r3
1a001004:	6838      	ldr	r0, [r7, #0]
1a001006:	f000 f949 	bl	1a00129c <RingBuffer_Insert>
1a00100a:	6878      	ldr	r0, [r7, #4]
1a00100c:	f7ff feed 	bl	1a000dea <Chip_UART_ReadLineStatus>
1a001010:	4603      	mov	r3, r0
1a001012:	f003 0301 	and.w	r3, r3, #1
1a001016:	2b00      	cmp	r3, #0
1a001018:	d1ec      	bne.n	1a000ff4 <Chip_UART_RXIntHandlerRB+0xc>
1a00101a:	bf00      	nop
1a00101c:	3710      	adds	r7, #16
1a00101e:	46bd      	mov	sp, r7
1a001020:	bd80      	pop	{r7, pc}

1a001022 <Chip_UART_TXIntHandlerRB>:
1a001022:	b580      	push	{r7, lr}
1a001024:	b084      	sub	sp, #16
1a001026:	af00      	add	r7, sp, #0
1a001028:	6078      	str	r0, [r7, #4]
1a00102a:	6039      	str	r1, [r7, #0]
1a00102c:	e004      	b.n	1a001038 <Chip_UART_TXIntHandlerRB+0x16>
1a00102e:	7bfb      	ldrb	r3, [r7, #15]
1a001030:	4619      	mov	r1, r3
1a001032:	6878      	ldr	r0, [r7, #4]
1a001034:	f7ff fe3e 	bl	1a000cb4 <Chip_UART_SendByte>
1a001038:	6878      	ldr	r0, [r7, #4]
1a00103a:	f7ff fed6 	bl	1a000dea <Chip_UART_ReadLineStatus>
1a00103e:	4603      	mov	r3, r0
1a001040:	f003 0320 	and.w	r3, r3, #32
1a001044:	2b00      	cmp	r3, #0
1a001046:	d008      	beq.n	1a00105a <Chip_UART_TXIntHandlerRB+0x38>
1a001048:	f107 030f 	add.w	r3, r7, #15
1a00104c:	4619      	mov	r1, r3
1a00104e:	6838      	ldr	r0, [r7, #0]
1a001050:	f000 f9e3 	bl	1a00141a <RingBuffer_Pop>
1a001054:	4603      	mov	r3, r0
1a001056:	2b00      	cmp	r3, #0
1a001058:	d1e9      	bne.n	1a00102e <Chip_UART_TXIntHandlerRB+0xc>
1a00105a:	6838      	ldr	r0, [r7, #0]
1a00105c:	f7ff fe08 	bl	1a000c70 <RingBuffer_IsEmpty>
1a001060:	4603      	mov	r3, r0
1a001062:	2b00      	cmp	r3, #0
1a001064:	d003      	beq.n	1a00106e <Chip_UART_TXIntHandlerRB+0x4c>
1a001066:	2102      	movs	r1, #2
1a001068:	6878      	ldr	r0, [r7, #4]
1a00106a:	f7ff fe50 	bl	1a000d0e <Chip_UART_IntDisable>
1a00106e:	bf00      	nop
1a001070:	3710      	adds	r7, #16
1a001072:	46bd      	mov	sp, r7
1a001074:	bd80      	pop	{r7, pc}

1a001076 <Chip_UART_SendRB>:
1a001076:	b580      	push	{r7, lr}
1a001078:	b086      	sub	sp, #24
1a00107a:	af00      	add	r7, sp, #0
1a00107c:	60f8      	str	r0, [r7, #12]
1a00107e:	60b9      	str	r1, [r7, #8]
1a001080:	607a      	str	r2, [r7, #4]
1a001082:	603b      	str	r3, [r7, #0]
1a001084:	687b      	ldr	r3, [r7, #4]
1a001086:	617b      	str	r3, [r7, #20]
1a001088:	2102      	movs	r1, #2
1a00108a:	68f8      	ldr	r0, [r7, #12]
1a00108c:	f7ff fe3f 	bl	1a000d0e <Chip_UART_IntDisable>
1a001090:	683a      	ldr	r2, [r7, #0]
1a001092:	6979      	ldr	r1, [r7, #20]
1a001094:	68b8      	ldr	r0, [r7, #8]
1a001096:	f000 f92f 	bl	1a0012f8 <RingBuffer_InsertMult>
1a00109a:	4603      	mov	r3, r0
1a00109c:	613b      	str	r3, [r7, #16]
1a00109e:	68b9      	ldr	r1, [r7, #8]
1a0010a0:	68f8      	ldr	r0, [r7, #12]
1a0010a2:	f7ff ffbe 	bl	1a001022 <Chip_UART_TXIntHandlerRB>
1a0010a6:	697a      	ldr	r2, [r7, #20]
1a0010a8:	693b      	ldr	r3, [r7, #16]
1a0010aa:	18d1      	adds	r1, r2, r3
1a0010ac:	683a      	ldr	r2, [r7, #0]
1a0010ae:	693b      	ldr	r3, [r7, #16]
1a0010b0:	1ad3      	subs	r3, r2, r3
1a0010b2:	461a      	mov	r2, r3
1a0010b4:	68b8      	ldr	r0, [r7, #8]
1a0010b6:	f000 f91f 	bl	1a0012f8 <RingBuffer_InsertMult>
1a0010ba:	4603      	mov	r3, r0
1a0010bc:	461a      	mov	r2, r3
1a0010be:	693b      	ldr	r3, [r7, #16]
1a0010c0:	4413      	add	r3, r2
1a0010c2:	613b      	str	r3, [r7, #16]
1a0010c4:	2102      	movs	r1, #2
1a0010c6:	68f8      	ldr	r0, [r7, #12]
1a0010c8:	f7ff fe10 	bl	1a000cec <Chip_UART_IntEnable>
1a0010cc:	693b      	ldr	r3, [r7, #16]
1a0010ce:	4618      	mov	r0, r3
1a0010d0:	3718      	adds	r7, #24
1a0010d2:	46bd      	mov	sp, r7
1a0010d4:	bd80      	pop	{r7, pc}

1a0010d6 <Chip_UART_IRQRBHandler>:
1a0010d6:	b580      	push	{r7, lr}
1a0010d8:	b084      	sub	sp, #16
1a0010da:	af00      	add	r7, sp, #0
1a0010dc:	60f8      	str	r0, [r7, #12]
1a0010de:	60b9      	str	r1, [r7, #8]
1a0010e0:	607a      	str	r2, [r7, #4]
1a0010e2:	68fb      	ldr	r3, [r7, #12]
1a0010e4:	685b      	ldr	r3, [r3, #4]
1a0010e6:	f003 0302 	and.w	r3, r3, #2
1a0010ea:	2b00      	cmp	r3, #0
1a0010ec:	d00d      	beq.n	1a00110a <Chip_UART_IRQRBHandler+0x34>
1a0010ee:	6879      	ldr	r1, [r7, #4]
1a0010f0:	68f8      	ldr	r0, [r7, #12]
1a0010f2:	f7ff ff96 	bl	1a001022 <Chip_UART_TXIntHandlerRB>
1a0010f6:	6878      	ldr	r0, [r7, #4]
1a0010f8:	f7ff fdba 	bl	1a000c70 <RingBuffer_IsEmpty>
1a0010fc:	4603      	mov	r3, r0
1a0010fe:	2b00      	cmp	r3, #0
1a001100:	d003      	beq.n	1a00110a <Chip_UART_IRQRBHandler+0x34>
1a001102:	2102      	movs	r1, #2
1a001104:	68f8      	ldr	r0, [r7, #12]
1a001106:	f7ff fe02 	bl	1a000d0e <Chip_UART_IntDisable>
1a00110a:	68b9      	ldr	r1, [r7, #8]
1a00110c:	68f8      	ldr	r0, [r7, #12]
1a00110e:	f7ff ff6b 	bl	1a000fe8 <Chip_UART_RXIntHandlerRB>
1a001112:	68f8      	ldr	r0, [r7, #12]
1a001114:	f7ff feb6 	bl	1a000e84 <Chip_UART_ABIntHandler>
1a001118:	bf00      	nop
1a00111a:	3710      	adds	r7, #16
1a00111c:	46bd      	mov	sp, r7
1a00111e:	bd80      	pop	{r7, pc}

1a001120 <Chip_TIMER_Enable>:
1a001120:	b480      	push	{r7}
1a001122:	b083      	sub	sp, #12
1a001124:	af00      	add	r7, sp, #0
1a001126:	6078      	str	r0, [r7, #4]
1a001128:	687b      	ldr	r3, [r7, #4]
1a00112a:	685b      	ldr	r3, [r3, #4]
1a00112c:	f043 0201 	orr.w	r2, r3, #1
1a001130:	687b      	ldr	r3, [r7, #4]
1a001132:	605a      	str	r2, [r3, #4]
1a001134:	bf00      	nop
1a001136:	370c      	adds	r7, #12
1a001138:	46bd      	mov	sp, r7
1a00113a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00113e:	4770      	bx	lr

1a001140 <Chip_TIMER_PrescaleSet>:
1a001140:	b480      	push	{r7}
1a001142:	b083      	sub	sp, #12
1a001144:	af00      	add	r7, sp, #0
1a001146:	6078      	str	r0, [r7, #4]
1a001148:	6039      	str	r1, [r7, #0]
1a00114a:	687b      	ldr	r3, [r7, #4]
1a00114c:	683a      	ldr	r2, [r7, #0]
1a00114e:	60da      	str	r2, [r3, #12]
1a001150:	bf00      	nop
1a001152:	370c      	adds	r7, #12
1a001154:	46bd      	mov	sp, r7
1a001156:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00115a:	4770      	bx	lr

1a00115c <StopWatch_Init>:
1a00115c:	b580      	push	{r7, lr}
1a00115e:	b082      	sub	sp, #8
1a001160:	af00      	add	r7, sp, #0
1a001162:	2308      	movs	r3, #8
1a001164:	607b      	str	r3, [r7, #4]
1a001166:	4814      	ldr	r0, [pc, #80]	; (1a0011b8 <StopWatch_Init+0x5c>)
1a001168:	f000 fea6 	bl	1a001eb8 <Chip_TIMER_Init>
1a00116c:	687b      	ldr	r3, [r7, #4]
1a00116e:	3b01      	subs	r3, #1
1a001170:	4619      	mov	r1, r3
1a001172:	4811      	ldr	r0, [pc, #68]	; (1a0011b8 <StopWatch_Init+0x5c>)
1a001174:	f7ff ffe4 	bl	1a001140 <Chip_TIMER_PrescaleSet>
1a001178:	480f      	ldr	r0, [pc, #60]	; (1a0011b8 <StopWatch_Init+0x5c>)
1a00117a:	f7ff ffd1 	bl	1a001120 <Chip_TIMER_Enable>
1a00117e:	2084      	movs	r0, #132	; 0x84
1a001180:	f000 fe18 	bl	1a001db4 <Chip_Clock_GetRate>
1a001184:	4602      	mov	r2, r0
1a001186:	687b      	ldr	r3, [r7, #4]
1a001188:	fbb2 f3f3 	udiv	r3, r2, r3
1a00118c:	4a0b      	ldr	r2, [pc, #44]	; (1a0011bc <StopWatch_Init+0x60>)
1a00118e:	6013      	str	r3, [r2, #0]
1a001190:	4b0a      	ldr	r3, [pc, #40]	; (1a0011bc <StopWatch_Init+0x60>)
1a001192:	681b      	ldr	r3, [r3, #0]
1a001194:	4a0a      	ldr	r2, [pc, #40]	; (1a0011c0 <StopWatch_Init+0x64>)
1a001196:	fba2 2303 	umull	r2, r3, r2, r3
1a00119a:	099b      	lsrs	r3, r3, #6
1a00119c:	4a09      	ldr	r2, [pc, #36]	; (1a0011c4 <StopWatch_Init+0x68>)
1a00119e:	6013      	str	r3, [r2, #0]
1a0011a0:	4b06      	ldr	r3, [pc, #24]	; (1a0011bc <StopWatch_Init+0x60>)
1a0011a2:	681b      	ldr	r3, [r3, #0]
1a0011a4:	4a08      	ldr	r2, [pc, #32]	; (1a0011c8 <StopWatch_Init+0x6c>)
1a0011a6:	fba2 2303 	umull	r2, r3, r2, r3
1a0011aa:	0c9b      	lsrs	r3, r3, #18
1a0011ac:	4a07      	ldr	r2, [pc, #28]	; (1a0011cc <StopWatch_Init+0x70>)
1a0011ae:	6013      	str	r3, [r2, #0]
1a0011b0:	bf00      	nop
1a0011b2:	3708      	adds	r7, #8
1a0011b4:	46bd      	mov	sp, r7
1a0011b6:	bd80      	pop	{r7, pc}
1a0011b8:	40084000 	.word	0x40084000
1a0011bc:	10000004 	.word	0x10000004
1a0011c0:	10624dd3 	.word	0x10624dd3
1a0011c4:	10000008 	.word	0x10000008
1a0011c8:	431bde83 	.word	0x431bde83
1a0011cc:	1000000c 	.word	0x1000000c

1a0011d0 <RingBuffer_GetCount>:
1a0011d0:	b480      	push	{r7}
1a0011d2:	b083      	sub	sp, #12
1a0011d4:	af00      	add	r7, sp, #0
1a0011d6:	6078      	str	r0, [r7, #4]
1a0011d8:	687b      	ldr	r3, [r7, #4]
1a0011da:	330c      	adds	r3, #12
1a0011dc:	681a      	ldr	r2, [r3, #0]
1a0011de:	687b      	ldr	r3, [r7, #4]
1a0011e0:	3310      	adds	r3, #16
1a0011e2:	681b      	ldr	r3, [r3, #0]
1a0011e4:	1ad3      	subs	r3, r2, r3
1a0011e6:	4618      	mov	r0, r3
1a0011e8:	370c      	adds	r7, #12
1a0011ea:	46bd      	mov	sp, r7
1a0011ec:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011f0:	4770      	bx	lr

1a0011f2 <RingBuffer_GetFree>:
1a0011f2:	b590      	push	{r4, r7, lr}
1a0011f4:	b083      	sub	sp, #12
1a0011f6:	af00      	add	r7, sp, #0
1a0011f8:	6078      	str	r0, [r7, #4]
1a0011fa:	687b      	ldr	r3, [r7, #4]
1a0011fc:	685c      	ldr	r4, [r3, #4]
1a0011fe:	6878      	ldr	r0, [r7, #4]
1a001200:	f7ff ffe6 	bl	1a0011d0 <RingBuffer_GetCount>
1a001204:	4603      	mov	r3, r0
1a001206:	1ae3      	subs	r3, r4, r3
1a001208:	4618      	mov	r0, r3
1a00120a:	370c      	adds	r7, #12
1a00120c:	46bd      	mov	sp, r7
1a00120e:	bd90      	pop	{r4, r7, pc}

1a001210 <RingBuffer_IsFull>:
1a001210:	b580      	push	{r7, lr}
1a001212:	b082      	sub	sp, #8
1a001214:	af00      	add	r7, sp, #0
1a001216:	6078      	str	r0, [r7, #4]
1a001218:	6878      	ldr	r0, [r7, #4]
1a00121a:	f7ff ffd9 	bl	1a0011d0 <RingBuffer_GetCount>
1a00121e:	4602      	mov	r2, r0
1a001220:	687b      	ldr	r3, [r7, #4]
1a001222:	685b      	ldr	r3, [r3, #4]
1a001224:	429a      	cmp	r2, r3
1a001226:	bfac      	ite	ge
1a001228:	2301      	movge	r3, #1
1a00122a:	2300      	movlt	r3, #0
1a00122c:	b2db      	uxtb	r3, r3
1a00122e:	4618      	mov	r0, r3
1a001230:	3708      	adds	r7, #8
1a001232:	46bd      	mov	sp, r7
1a001234:	bd80      	pop	{r7, pc}

1a001236 <RingBuffer_IsEmpty>:
1a001236:	b480      	push	{r7}
1a001238:	b083      	sub	sp, #12
1a00123a:	af00      	add	r7, sp, #0
1a00123c:	6078      	str	r0, [r7, #4]
1a00123e:	687b      	ldr	r3, [r7, #4]
1a001240:	330c      	adds	r3, #12
1a001242:	681a      	ldr	r2, [r3, #0]
1a001244:	687b      	ldr	r3, [r7, #4]
1a001246:	3310      	adds	r3, #16
1a001248:	681b      	ldr	r3, [r3, #0]
1a00124a:	429a      	cmp	r2, r3
1a00124c:	bf0c      	ite	eq
1a00124e:	2301      	moveq	r3, #1
1a001250:	2300      	movne	r3, #0
1a001252:	b2db      	uxtb	r3, r3
1a001254:	4618      	mov	r0, r3
1a001256:	370c      	adds	r7, #12
1a001258:	46bd      	mov	sp, r7
1a00125a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00125e:	4770      	bx	lr

1a001260 <RingBuffer_Init>:
1a001260:	b480      	push	{r7}
1a001262:	b085      	sub	sp, #20
1a001264:	af00      	add	r7, sp, #0
1a001266:	60f8      	str	r0, [r7, #12]
1a001268:	60b9      	str	r1, [r7, #8]
1a00126a:	607a      	str	r2, [r7, #4]
1a00126c:	603b      	str	r3, [r7, #0]
1a00126e:	68fb      	ldr	r3, [r7, #12]
1a001270:	68ba      	ldr	r2, [r7, #8]
1a001272:	601a      	str	r2, [r3, #0]
1a001274:	68fb      	ldr	r3, [r7, #12]
1a001276:	683a      	ldr	r2, [r7, #0]
1a001278:	605a      	str	r2, [r3, #4]
1a00127a:	68fb      	ldr	r3, [r7, #12]
1a00127c:	687a      	ldr	r2, [r7, #4]
1a00127e:	609a      	str	r2, [r3, #8]
1a001280:	68fb      	ldr	r3, [r7, #12]
1a001282:	2200      	movs	r2, #0
1a001284:	611a      	str	r2, [r3, #16]
1a001286:	68fb      	ldr	r3, [r7, #12]
1a001288:	691a      	ldr	r2, [r3, #16]
1a00128a:	68fb      	ldr	r3, [r7, #12]
1a00128c:	60da      	str	r2, [r3, #12]
1a00128e:	2301      	movs	r3, #1
1a001290:	4618      	mov	r0, r3
1a001292:	3714      	adds	r7, #20
1a001294:	46bd      	mov	sp, r7
1a001296:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00129a:	4770      	bx	lr

1a00129c <RingBuffer_Insert>:
1a00129c:	b580      	push	{r7, lr}
1a00129e:	b084      	sub	sp, #16
1a0012a0:	af00      	add	r7, sp, #0
1a0012a2:	6078      	str	r0, [r7, #4]
1a0012a4:	6039      	str	r1, [r7, #0]
1a0012a6:	687b      	ldr	r3, [r7, #4]
1a0012a8:	681b      	ldr	r3, [r3, #0]
1a0012aa:	60fb      	str	r3, [r7, #12]
1a0012ac:	6878      	ldr	r0, [r7, #4]
1a0012ae:	f7ff ffaf 	bl	1a001210 <RingBuffer_IsFull>
1a0012b2:	4603      	mov	r3, r0
1a0012b4:	2b00      	cmp	r3, #0
1a0012b6:	d001      	beq.n	1a0012bc <RingBuffer_Insert+0x20>
1a0012b8:	2300      	movs	r3, #0
1a0012ba:	e019      	b.n	1a0012f0 <RingBuffer_Insert+0x54>
1a0012bc:	687b      	ldr	r3, [r7, #4]
1a0012be:	68db      	ldr	r3, [r3, #12]
1a0012c0:	687a      	ldr	r2, [r7, #4]
1a0012c2:	6852      	ldr	r2, [r2, #4]
1a0012c4:	3a01      	subs	r2, #1
1a0012c6:	4013      	ands	r3, r2
1a0012c8:	687a      	ldr	r2, [r7, #4]
1a0012ca:	6892      	ldr	r2, [r2, #8]
1a0012cc:	fb02 f303 	mul.w	r3, r2, r3
1a0012d0:	68fa      	ldr	r2, [r7, #12]
1a0012d2:	4413      	add	r3, r2
1a0012d4:	60fb      	str	r3, [r7, #12]
1a0012d6:	687b      	ldr	r3, [r7, #4]
1a0012d8:	689b      	ldr	r3, [r3, #8]
1a0012da:	461a      	mov	r2, r3
1a0012dc:	6839      	ldr	r1, [r7, #0]
1a0012de:	68f8      	ldr	r0, [r7, #12]
1a0012e0:	f000 fdfa 	bl	1a001ed8 <memcpy>
1a0012e4:	687b      	ldr	r3, [r7, #4]
1a0012e6:	68db      	ldr	r3, [r3, #12]
1a0012e8:	1c5a      	adds	r2, r3, #1
1a0012ea:	687b      	ldr	r3, [r7, #4]
1a0012ec:	60da      	str	r2, [r3, #12]
1a0012ee:	2301      	movs	r3, #1
1a0012f0:	4618      	mov	r0, r3
1a0012f2:	3710      	adds	r7, #16
1a0012f4:	46bd      	mov	sp, r7
1a0012f6:	bd80      	pop	{r7, pc}

1a0012f8 <RingBuffer_InsertMult>:
1a0012f8:	b580      	push	{r7, lr}
1a0012fa:	b088      	sub	sp, #32
1a0012fc:	af00      	add	r7, sp, #0
1a0012fe:	60f8      	str	r0, [r7, #12]
1a001300:	60b9      	str	r1, [r7, #8]
1a001302:	607a      	str	r2, [r7, #4]
1a001304:	68fb      	ldr	r3, [r7, #12]
1a001306:	681b      	ldr	r3, [r3, #0]
1a001308:	61bb      	str	r3, [r7, #24]
1a00130a:	68f8      	ldr	r0, [r7, #12]
1a00130c:	f7ff ff80 	bl	1a001210 <RingBuffer_IsFull>
1a001310:	4603      	mov	r3, r0
1a001312:	2b00      	cmp	r3, #0
1a001314:	d001      	beq.n	1a00131a <RingBuffer_InsertMult+0x22>
1a001316:	2300      	movs	r3, #0
1a001318:	e07b      	b.n	1a001412 <RingBuffer_InsertMult+0x11a>
1a00131a:	68f8      	ldr	r0, [r7, #12]
1a00131c:	f7ff ff69 	bl	1a0011f2 <RingBuffer_GetFree>
1a001320:	6178      	str	r0, [r7, #20]
1a001322:	697b      	ldr	r3, [r7, #20]
1a001324:	61fb      	str	r3, [r7, #28]
1a001326:	68fb      	ldr	r3, [r7, #12]
1a001328:	68db      	ldr	r3, [r3, #12]
1a00132a:	68fa      	ldr	r2, [r7, #12]
1a00132c:	6852      	ldr	r2, [r2, #4]
1a00132e:	3a01      	subs	r2, #1
1a001330:	401a      	ands	r2, r3
1a001332:	69fb      	ldr	r3, [r7, #28]
1a001334:	4413      	add	r3, r2
1a001336:	68fa      	ldr	r2, [r7, #12]
1a001338:	6852      	ldr	r2, [r2, #4]
1a00133a:	4293      	cmp	r3, r2
1a00133c:	d30a      	bcc.n	1a001354 <RingBuffer_InsertMult+0x5c>
1a00133e:	68fb      	ldr	r3, [r7, #12]
1a001340:	685b      	ldr	r3, [r3, #4]
1a001342:	4619      	mov	r1, r3
1a001344:	68fb      	ldr	r3, [r7, #12]
1a001346:	68db      	ldr	r3, [r3, #12]
1a001348:	68fa      	ldr	r2, [r7, #12]
1a00134a:	6852      	ldr	r2, [r2, #4]
1a00134c:	3a01      	subs	r2, #1
1a00134e:	4013      	ands	r3, r2
1a001350:	1acb      	subs	r3, r1, r3
1a001352:	61fb      	str	r3, [r7, #28]
1a001354:	697a      	ldr	r2, [r7, #20]
1a001356:	69fb      	ldr	r3, [r7, #28]
1a001358:	1ad3      	subs	r3, r2, r3
1a00135a:	617b      	str	r3, [r7, #20]
1a00135c:	69fa      	ldr	r2, [r7, #28]
1a00135e:	687b      	ldr	r3, [r7, #4]
1a001360:	4293      	cmp	r3, r2
1a001362:	bfa8      	it	ge
1a001364:	4613      	movge	r3, r2
1a001366:	61fb      	str	r3, [r7, #28]
1a001368:	687a      	ldr	r2, [r7, #4]
1a00136a:	69fb      	ldr	r3, [r7, #28]
1a00136c:	1ad3      	subs	r3, r2, r3
1a00136e:	607b      	str	r3, [r7, #4]
1a001370:	697a      	ldr	r2, [r7, #20]
1a001372:	687b      	ldr	r3, [r7, #4]
1a001374:	4293      	cmp	r3, r2
1a001376:	bfa8      	it	ge
1a001378:	4613      	movge	r3, r2
1a00137a:	617b      	str	r3, [r7, #20]
1a00137c:	687a      	ldr	r2, [r7, #4]
1a00137e:	697b      	ldr	r3, [r7, #20]
1a001380:	1ad3      	subs	r3, r2, r3
1a001382:	607b      	str	r3, [r7, #4]
1a001384:	68fb      	ldr	r3, [r7, #12]
1a001386:	68db      	ldr	r3, [r3, #12]
1a001388:	68fa      	ldr	r2, [r7, #12]
1a00138a:	6852      	ldr	r2, [r2, #4]
1a00138c:	3a01      	subs	r2, #1
1a00138e:	4013      	ands	r3, r2
1a001390:	68fa      	ldr	r2, [r7, #12]
1a001392:	6892      	ldr	r2, [r2, #8]
1a001394:	fb02 f303 	mul.w	r3, r2, r3
1a001398:	69ba      	ldr	r2, [r7, #24]
1a00139a:	4413      	add	r3, r2
1a00139c:	61bb      	str	r3, [r7, #24]
1a00139e:	68fb      	ldr	r3, [r7, #12]
1a0013a0:	689b      	ldr	r3, [r3, #8]
1a0013a2:	69fa      	ldr	r2, [r7, #28]
1a0013a4:	fb02 f303 	mul.w	r3, r2, r3
1a0013a8:	461a      	mov	r2, r3
1a0013aa:	68b9      	ldr	r1, [r7, #8]
1a0013ac:	69b8      	ldr	r0, [r7, #24]
1a0013ae:	f000 fd93 	bl	1a001ed8 <memcpy>
1a0013b2:	68fb      	ldr	r3, [r7, #12]
1a0013b4:	68da      	ldr	r2, [r3, #12]
1a0013b6:	69fb      	ldr	r3, [r7, #28]
1a0013b8:	441a      	add	r2, r3
1a0013ba:	68fb      	ldr	r3, [r7, #12]
1a0013bc:	60da      	str	r2, [r3, #12]
1a0013be:	68fb      	ldr	r3, [r7, #12]
1a0013c0:	681a      	ldr	r2, [r3, #0]
1a0013c2:	68fb      	ldr	r3, [r7, #12]
1a0013c4:	68db      	ldr	r3, [r3, #12]
1a0013c6:	68f9      	ldr	r1, [r7, #12]
1a0013c8:	6849      	ldr	r1, [r1, #4]
1a0013ca:	3901      	subs	r1, #1
1a0013cc:	400b      	ands	r3, r1
1a0013ce:	68f9      	ldr	r1, [r7, #12]
1a0013d0:	6889      	ldr	r1, [r1, #8]
1a0013d2:	fb01 f303 	mul.w	r3, r1, r3
1a0013d6:	4413      	add	r3, r2
1a0013d8:	61bb      	str	r3, [r7, #24]
1a0013da:	68fb      	ldr	r3, [r7, #12]
1a0013dc:	689b      	ldr	r3, [r3, #8]
1a0013de:	69fa      	ldr	r2, [r7, #28]
1a0013e0:	fb02 f303 	mul.w	r3, r2, r3
1a0013e4:	461a      	mov	r2, r3
1a0013e6:	68bb      	ldr	r3, [r7, #8]
1a0013e8:	4413      	add	r3, r2
1a0013ea:	60bb      	str	r3, [r7, #8]
1a0013ec:	68fb      	ldr	r3, [r7, #12]
1a0013ee:	689b      	ldr	r3, [r3, #8]
1a0013f0:	697a      	ldr	r2, [r7, #20]
1a0013f2:	fb02 f303 	mul.w	r3, r2, r3
1a0013f6:	461a      	mov	r2, r3
1a0013f8:	68b9      	ldr	r1, [r7, #8]
1a0013fa:	69b8      	ldr	r0, [r7, #24]
1a0013fc:	f000 fd6c 	bl	1a001ed8 <memcpy>
1a001400:	68fb      	ldr	r3, [r7, #12]
1a001402:	68da      	ldr	r2, [r3, #12]
1a001404:	697b      	ldr	r3, [r7, #20]
1a001406:	441a      	add	r2, r3
1a001408:	68fb      	ldr	r3, [r7, #12]
1a00140a:	60da      	str	r2, [r3, #12]
1a00140c:	69fa      	ldr	r2, [r7, #28]
1a00140e:	697b      	ldr	r3, [r7, #20]
1a001410:	4413      	add	r3, r2
1a001412:	4618      	mov	r0, r3
1a001414:	3720      	adds	r7, #32
1a001416:	46bd      	mov	sp, r7
1a001418:	bd80      	pop	{r7, pc}

1a00141a <RingBuffer_Pop>:
1a00141a:	b580      	push	{r7, lr}
1a00141c:	b084      	sub	sp, #16
1a00141e:	af00      	add	r7, sp, #0
1a001420:	6078      	str	r0, [r7, #4]
1a001422:	6039      	str	r1, [r7, #0]
1a001424:	687b      	ldr	r3, [r7, #4]
1a001426:	681b      	ldr	r3, [r3, #0]
1a001428:	60fb      	str	r3, [r7, #12]
1a00142a:	6878      	ldr	r0, [r7, #4]
1a00142c:	f7ff ff03 	bl	1a001236 <RingBuffer_IsEmpty>
1a001430:	4603      	mov	r3, r0
1a001432:	2b00      	cmp	r3, #0
1a001434:	d001      	beq.n	1a00143a <RingBuffer_Pop+0x20>
1a001436:	2300      	movs	r3, #0
1a001438:	e019      	b.n	1a00146e <RingBuffer_Pop+0x54>
1a00143a:	687b      	ldr	r3, [r7, #4]
1a00143c:	691b      	ldr	r3, [r3, #16]
1a00143e:	687a      	ldr	r2, [r7, #4]
1a001440:	6852      	ldr	r2, [r2, #4]
1a001442:	3a01      	subs	r2, #1
1a001444:	4013      	ands	r3, r2
1a001446:	687a      	ldr	r2, [r7, #4]
1a001448:	6892      	ldr	r2, [r2, #8]
1a00144a:	fb02 f303 	mul.w	r3, r2, r3
1a00144e:	68fa      	ldr	r2, [r7, #12]
1a001450:	4413      	add	r3, r2
1a001452:	60fb      	str	r3, [r7, #12]
1a001454:	687b      	ldr	r3, [r7, #4]
1a001456:	689b      	ldr	r3, [r3, #8]
1a001458:	461a      	mov	r2, r3
1a00145a:	68f9      	ldr	r1, [r7, #12]
1a00145c:	6838      	ldr	r0, [r7, #0]
1a00145e:	f000 fd3b 	bl	1a001ed8 <memcpy>
1a001462:	687b      	ldr	r3, [r7, #4]
1a001464:	691b      	ldr	r3, [r3, #16]
1a001466:	1c5a      	adds	r2, r3, #1
1a001468:	687b      	ldr	r3, [r7, #4]
1a00146a:	611a      	str	r2, [r3, #16]
1a00146c:	2301      	movs	r3, #1
1a00146e:	4618      	mov	r0, r3
1a001470:	3710      	adds	r7, #16
1a001472:	46bd      	mov	sp, r7
1a001474:	bd80      	pop	{r7, pc}

1a001476 <ABS>:
1a001476:	b480      	push	{r7}
1a001478:	b083      	sub	sp, #12
1a00147a:	af00      	add	r7, sp, #0
1a00147c:	6078      	str	r0, [r7, #4]
1a00147e:	687b      	ldr	r3, [r7, #4]
1a001480:	2b00      	cmp	r3, #0
1a001482:	da02      	bge.n	1a00148a <ABS+0x14>
1a001484:	687b      	ldr	r3, [r7, #4]
1a001486:	425b      	negs	r3, r3
1a001488:	e000      	b.n	1a00148c <ABS+0x16>
1a00148a:	687b      	ldr	r3, [r7, #4]
1a00148c:	4618      	mov	r0, r3
1a00148e:	370c      	adds	r7, #12
1a001490:	46bd      	mov	sp, r7
1a001492:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001496:	4770      	bx	lr

1a001498 <pll_calc_divs>:
1a001498:	b580      	push	{r7, lr}
1a00149a:	b088      	sub	sp, #32
1a00149c:	af00      	add	r7, sp, #0
1a00149e:	6078      	str	r0, [r7, #4]
1a0014a0:	6039      	str	r1, [r7, #0]
1a0014a2:	687b      	ldr	r3, [r7, #4]
1a0014a4:	61fb      	str	r3, [r7, #28]
1a0014a6:	683b      	ldr	r3, [r7, #0]
1a0014a8:	681b      	ldr	r3, [r3, #0]
1a0014aa:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0014ae:	2b00      	cmp	r3, #0
1a0014b0:	d005      	beq.n	1a0014be <pll_calc_divs+0x26>
1a0014b2:	683b      	ldr	r3, [r7, #0]
1a0014b4:	681b      	ldr	r3, [r3, #0]
1a0014b6:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a0014ba:	683b      	ldr	r3, [r7, #0]
1a0014bc:	601a      	str	r2, [r3, #0]
1a0014be:	2301      	movs	r3, #1
1a0014c0:	61bb      	str	r3, [r7, #24]
1a0014c2:	e06f      	b.n	1a0015a4 <pll_calc_divs+0x10c>
1a0014c4:	2300      	movs	r3, #0
1a0014c6:	613b      	str	r3, [r7, #16]
1a0014c8:	e066      	b.n	1a001598 <pll_calc_divs+0x100>
1a0014ca:	2301      	movs	r3, #1
1a0014cc:	617b      	str	r3, [r7, #20]
1a0014ce:	e05a      	b.n	1a001586 <pll_calc_divs+0xee>
1a0014d0:	683b      	ldr	r3, [r7, #0]
1a0014d2:	681b      	ldr	r3, [r3, #0]
1a0014d4:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0014d8:	2b00      	cmp	r3, #0
1a0014da:	d00e      	beq.n	1a0014fa <pll_calc_divs+0x62>
1a0014dc:	693b      	ldr	r3, [r7, #16]
1a0014de:	3301      	adds	r3, #1
1a0014e0:	697a      	ldr	r2, [r7, #20]
1a0014e2:	fa02 f303 	lsl.w	r3, r2, r3
1a0014e6:	461a      	mov	r2, r3
1a0014e8:	683b      	ldr	r3, [r7, #0]
1a0014ea:	695b      	ldr	r3, [r3, #20]
1a0014ec:	fb03 f202 	mul.w	r2, r3, r2
1a0014f0:	69bb      	ldr	r3, [r7, #24]
1a0014f2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0014f6:	60fb      	str	r3, [r7, #12]
1a0014f8:	e008      	b.n	1a00150c <pll_calc_divs+0x74>
1a0014fa:	683b      	ldr	r3, [r7, #0]
1a0014fc:	695b      	ldr	r3, [r3, #20]
1a0014fe:	697a      	ldr	r2, [r7, #20]
1a001500:	fb02 f203 	mul.w	r2, r2, r3
1a001504:	69bb      	ldr	r3, [r7, #24]
1a001506:	fbb2 f3f3 	udiv	r3, r2, r3
1a00150a:	60fb      	str	r3, [r7, #12]
1a00150c:	68fb      	ldr	r3, [r7, #12]
1a00150e:	4a29      	ldr	r2, [pc, #164]	; (1a0015b4 <pll_calc_divs+0x11c>)
1a001510:	4293      	cmp	r3, r2
1a001512:	d934      	bls.n	1a00157e <pll_calc_divs+0xe6>
1a001514:	68fb      	ldr	r3, [r7, #12]
1a001516:	4a28      	ldr	r2, [pc, #160]	; (1a0015b8 <pll_calc_divs+0x120>)
1a001518:	4293      	cmp	r3, r2
1a00151a:	d839      	bhi.n	1a001590 <pll_calc_divs+0xf8>
1a00151c:	683b      	ldr	r3, [r7, #0]
1a00151e:	681b      	ldr	r3, [r3, #0]
1a001520:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001524:	2b00      	cmp	r3, #0
1a001526:	d002      	beq.n	1a00152e <pll_calc_divs+0x96>
1a001528:	68fb      	ldr	r3, [r7, #12]
1a00152a:	60bb      	str	r3, [r7, #8]
1a00152c:	e005      	b.n	1a00153a <pll_calc_divs+0xa2>
1a00152e:	693b      	ldr	r3, [r7, #16]
1a001530:	3301      	adds	r3, #1
1a001532:	68fa      	ldr	r2, [r7, #12]
1a001534:	fa22 f303 	lsr.w	r3, r2, r3
1a001538:	60bb      	str	r3, [r7, #8]
1a00153a:	687a      	ldr	r2, [r7, #4]
1a00153c:	68bb      	ldr	r3, [r7, #8]
1a00153e:	1ad3      	subs	r3, r2, r3
1a001540:	4618      	mov	r0, r3
1a001542:	f7ff ff98 	bl	1a001476 <ABS>
1a001546:	4602      	mov	r2, r0
1a001548:	69fb      	ldr	r3, [r7, #28]
1a00154a:	4293      	cmp	r3, r2
1a00154c:	d918      	bls.n	1a001580 <pll_calc_divs+0xe8>
1a00154e:	683b      	ldr	r3, [r7, #0]
1a001550:	69ba      	ldr	r2, [r7, #24]
1a001552:	609a      	str	r2, [r3, #8]
1a001554:	693b      	ldr	r3, [r7, #16]
1a001556:	1c5a      	adds	r2, r3, #1
1a001558:	683b      	ldr	r3, [r7, #0]
1a00155a:	60da      	str	r2, [r3, #12]
1a00155c:	683b      	ldr	r3, [r7, #0]
1a00155e:	697a      	ldr	r2, [r7, #20]
1a001560:	611a      	str	r2, [r3, #16]
1a001562:	683b      	ldr	r3, [r7, #0]
1a001564:	68ba      	ldr	r2, [r7, #8]
1a001566:	619a      	str	r2, [r3, #24]
1a001568:	683b      	ldr	r3, [r7, #0]
1a00156a:	68fa      	ldr	r2, [r7, #12]
1a00156c:	61da      	str	r2, [r3, #28]
1a00156e:	687a      	ldr	r2, [r7, #4]
1a001570:	68bb      	ldr	r3, [r7, #8]
1a001572:	1ad3      	subs	r3, r2, r3
1a001574:	4618      	mov	r0, r3
1a001576:	f7ff ff7e 	bl	1a001476 <ABS>
1a00157a:	61f8      	str	r0, [r7, #28]
1a00157c:	e000      	b.n	1a001580 <pll_calc_divs+0xe8>
1a00157e:	bf00      	nop
1a001580:	697b      	ldr	r3, [r7, #20]
1a001582:	3301      	adds	r3, #1
1a001584:	617b      	str	r3, [r7, #20]
1a001586:	697b      	ldr	r3, [r7, #20]
1a001588:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a00158c:	dda0      	ble.n	1a0014d0 <pll_calc_divs+0x38>
1a00158e:	e000      	b.n	1a001592 <pll_calc_divs+0xfa>
1a001590:	bf00      	nop
1a001592:	693b      	ldr	r3, [r7, #16]
1a001594:	3301      	adds	r3, #1
1a001596:	613b      	str	r3, [r7, #16]
1a001598:	693b      	ldr	r3, [r7, #16]
1a00159a:	2b03      	cmp	r3, #3
1a00159c:	dd95      	ble.n	1a0014ca <pll_calc_divs+0x32>
1a00159e:	69bb      	ldr	r3, [r7, #24]
1a0015a0:	3301      	adds	r3, #1
1a0015a2:	61bb      	str	r3, [r7, #24]
1a0015a4:	69bb      	ldr	r3, [r7, #24]
1a0015a6:	2b04      	cmp	r3, #4
1a0015a8:	dd8c      	ble.n	1a0014c4 <pll_calc_divs+0x2c>
1a0015aa:	bf00      	nop
1a0015ac:	3720      	adds	r7, #32
1a0015ae:	46bd      	mov	sp, r7
1a0015b0:	bd80      	pop	{r7, pc}
1a0015b2:	bf00      	nop
1a0015b4:	094c5eff 	.word	0x094c5eff
1a0015b8:	1312d000 	.word	0x1312d000

1a0015bc <pll_get_frac>:
1a0015bc:	b5b0      	push	{r4, r5, r7, lr}
1a0015be:	b09e      	sub	sp, #120	; 0x78
1a0015c0:	af00      	add	r7, sp, #0
1a0015c2:	6078      	str	r0, [r7, #4]
1a0015c4:	6039      	str	r1, [r7, #0]
1a0015c6:	f107 030c 	add.w	r3, r7, #12
1a0015ca:	2260      	movs	r2, #96	; 0x60
1a0015cc:	2100      	movs	r1, #0
1a0015ce:	4618      	mov	r0, r3
1a0015d0:	f7fe fe96 	bl	1a000300 <memset>
1a0015d4:	68fb      	ldr	r3, [r7, #12]
1a0015d6:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0015da:	60fb      	str	r3, [r7, #12]
1a0015dc:	683b      	ldr	r3, [r7, #0]
1a0015de:	695b      	ldr	r3, [r3, #20]
1a0015e0:	623b      	str	r3, [r7, #32]
1a0015e2:	683b      	ldr	r3, [r7, #0]
1a0015e4:	791b      	ldrb	r3, [r3, #4]
1a0015e6:	743b      	strb	r3, [r7, #16]
1a0015e8:	f107 030c 	add.w	r3, r7, #12
1a0015ec:	4619      	mov	r1, r3
1a0015ee:	6878      	ldr	r0, [r7, #4]
1a0015f0:	f7ff ff52 	bl	1a001498 <pll_calc_divs>
1a0015f4:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0015f6:	687a      	ldr	r2, [r7, #4]
1a0015f8:	429a      	cmp	r2, r3
1a0015fa:	d10a      	bne.n	1a001612 <pll_get_frac+0x56>
1a0015fc:	683b      	ldr	r3, [r7, #0]
1a0015fe:	461d      	mov	r5, r3
1a001600:	f107 040c 	add.w	r4, r7, #12
1a001604:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001606:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001608:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00160c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001610:	e08e      	b.n	1a001730 <pll_get_frac+0x174>
1a001612:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001614:	687a      	ldr	r2, [r7, #4]
1a001616:	1ad3      	subs	r3, r2, r3
1a001618:	4618      	mov	r0, r3
1a00161a:	f7ff ff2c 	bl	1a001476 <ABS>
1a00161e:	4603      	mov	r3, r0
1a001620:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001622:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001624:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001628:	64fb      	str	r3, [r7, #76]	; 0x4c
1a00162a:	683b      	ldr	r3, [r7, #0]
1a00162c:	695b      	ldr	r3, [r3, #20]
1a00162e:	663b      	str	r3, [r7, #96]	; 0x60
1a001630:	683b      	ldr	r3, [r7, #0]
1a001632:	791b      	ldrb	r3, [r3, #4]
1a001634:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001638:	f107 030c 	add.w	r3, r7, #12
1a00163c:	3340      	adds	r3, #64	; 0x40
1a00163e:	4619      	mov	r1, r3
1a001640:	6878      	ldr	r0, [r7, #4]
1a001642:	f7ff ff29 	bl	1a001498 <pll_calc_divs>
1a001646:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001648:	687a      	ldr	r2, [r7, #4]
1a00164a:	429a      	cmp	r2, r3
1a00164c:	d10a      	bne.n	1a001664 <pll_get_frac+0xa8>
1a00164e:	683b      	ldr	r3, [r7, #0]
1a001650:	461d      	mov	r5, r3
1a001652:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001656:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001658:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00165a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00165e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001662:	e065      	b.n	1a001730 <pll_get_frac+0x174>
1a001664:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001666:	687a      	ldr	r2, [r7, #4]
1a001668:	1ad3      	subs	r3, r2, r3
1a00166a:	4618      	mov	r0, r3
1a00166c:	f7ff ff03 	bl	1a001476 <ABS>
1a001670:	4603      	mov	r3, r0
1a001672:	677b      	str	r3, [r7, #116]	; 0x74
1a001674:	687b      	ldr	r3, [r7, #4]
1a001676:	4a30      	ldr	r2, [pc, #192]	; (1a001738 <pll_get_frac+0x17c>)
1a001678:	4293      	cmp	r3, r2
1a00167a:	d81a      	bhi.n	1a0016b2 <pll_get_frac+0xf6>
1a00167c:	2340      	movs	r3, #64	; 0x40
1a00167e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001680:	683b      	ldr	r3, [r7, #0]
1a001682:	695b      	ldr	r3, [r3, #20]
1a001684:	643b      	str	r3, [r7, #64]	; 0x40
1a001686:	f107 030c 	add.w	r3, r7, #12
1a00168a:	3320      	adds	r3, #32
1a00168c:	4619      	mov	r1, r3
1a00168e:	6878      	ldr	r0, [r7, #4]
1a001690:	f7ff ff02 	bl	1a001498 <pll_calc_divs>
1a001694:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001696:	687a      	ldr	r2, [r7, #4]
1a001698:	429a      	cmp	r2, r3
1a00169a:	d10a      	bne.n	1a0016b2 <pll_get_frac+0xf6>
1a00169c:	683b      	ldr	r3, [r7, #0]
1a00169e:	461d      	mov	r5, r3
1a0016a0:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0016a4:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0016a6:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0016a8:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0016ac:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0016b0:	e03e      	b.n	1a001730 <pll_get_frac+0x174>
1a0016b2:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a0016b4:	687a      	ldr	r2, [r7, #4]
1a0016b6:	1ad3      	subs	r3, r2, r3
1a0016b8:	4618      	mov	r0, r3
1a0016ba:	f7ff fedc 	bl	1a001476 <ABS>
1a0016be:	4603      	mov	r3, r0
1a0016c0:	673b      	str	r3, [r7, #112]	; 0x70
1a0016c2:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0016c4:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a0016c6:	429a      	cmp	r2, r3
1a0016c8:	dc19      	bgt.n	1a0016fe <pll_get_frac+0x142>
1a0016ca:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0016cc:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0016ce:	429a      	cmp	r2, r3
1a0016d0:	dc0a      	bgt.n	1a0016e8 <pll_get_frac+0x12c>
1a0016d2:	683b      	ldr	r3, [r7, #0]
1a0016d4:	461d      	mov	r5, r3
1a0016d6:	f107 040c 	add.w	r4, r7, #12
1a0016da:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0016dc:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0016de:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0016e2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0016e6:	e023      	b.n	1a001730 <pll_get_frac+0x174>
1a0016e8:	683b      	ldr	r3, [r7, #0]
1a0016ea:	461d      	mov	r5, r3
1a0016ec:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0016f0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0016f2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0016f4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0016f8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0016fc:	e018      	b.n	1a001730 <pll_get_frac+0x174>
1a0016fe:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001700:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001702:	429a      	cmp	r2, r3
1a001704:	dc0a      	bgt.n	1a00171c <pll_get_frac+0x160>
1a001706:	683b      	ldr	r3, [r7, #0]
1a001708:	461d      	mov	r5, r3
1a00170a:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a00170e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001710:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001712:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001716:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00171a:	e009      	b.n	1a001730 <pll_get_frac+0x174>
1a00171c:	683b      	ldr	r3, [r7, #0]
1a00171e:	461d      	mov	r5, r3
1a001720:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001724:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001726:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001728:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00172c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001730:	3778      	adds	r7, #120	; 0x78
1a001732:	46bd      	mov	sp, r7
1a001734:	bdb0      	pop	{r4, r5, r7, pc}
1a001736:	bf00      	nop
1a001738:	068e7780 	.word	0x068e7780

1a00173c <Chip_Clock_GetDivRate>:
1a00173c:	b580      	push	{r7, lr}
1a00173e:	b084      	sub	sp, #16
1a001740:	af00      	add	r7, sp, #0
1a001742:	4603      	mov	r3, r0
1a001744:	460a      	mov	r2, r1
1a001746:	71fb      	strb	r3, [r7, #7]
1a001748:	4613      	mov	r3, r2
1a00174a:	71bb      	strb	r3, [r7, #6]
1a00174c:	79bb      	ldrb	r3, [r7, #6]
1a00174e:	4618      	mov	r0, r3
1a001750:	f000 f960 	bl	1a001a14 <Chip_Clock_GetDividerSource>
1a001754:	4603      	mov	r3, r0
1a001756:	73fb      	strb	r3, [r7, #15]
1a001758:	79bb      	ldrb	r3, [r7, #6]
1a00175a:	4618      	mov	r0, r3
1a00175c:	f000 f97a 	bl	1a001a54 <Chip_Clock_GetDividerDivisor>
1a001760:	60b8      	str	r0, [r7, #8]
1a001762:	7bfb      	ldrb	r3, [r7, #15]
1a001764:	4618      	mov	r0, r3
1a001766:	f000 f991 	bl	1a001a8c <Chip_Clock_GetClockInputHz>
1a00176a:	4602      	mov	r2, r0
1a00176c:	68bb      	ldr	r3, [r7, #8]
1a00176e:	3301      	adds	r3, #1
1a001770:	fbb2 f3f3 	udiv	r3, r2, r3
1a001774:	4618      	mov	r0, r3
1a001776:	3710      	adds	r7, #16
1a001778:	46bd      	mov	sp, r7
1a00177a:	bd80      	pop	{r7, pc}

1a00177c <Chip_Clock_FindBaseClock>:
1a00177c:	b480      	push	{r7}
1a00177e:	b085      	sub	sp, #20
1a001780:	af00      	add	r7, sp, #0
1a001782:	4603      	mov	r3, r0
1a001784:	80fb      	strh	r3, [r7, #6]
1a001786:	231c      	movs	r3, #28
1a001788:	73fb      	strb	r3, [r7, #15]
1a00178a:	2300      	movs	r3, #0
1a00178c:	60bb      	str	r3, [r7, #8]
1a00178e:	e024      	b.n	1a0017da <Chip_Clock_FindBaseClock+0x5e>
1a001790:	491d      	ldr	r1, [pc, #116]	; (1a001808 <Chip_Clock_FindBaseClock+0x8c>)
1a001792:	68ba      	ldr	r2, [r7, #8]
1a001794:	4613      	mov	r3, r2
1a001796:	005b      	lsls	r3, r3, #1
1a001798:	4413      	add	r3, r2
1a00179a:	005b      	lsls	r3, r3, #1
1a00179c:	440b      	add	r3, r1
1a00179e:	881b      	ldrh	r3, [r3, #0]
1a0017a0:	88fa      	ldrh	r2, [r7, #6]
1a0017a2:	429a      	cmp	r2, r3
1a0017a4:	d316      	bcc.n	1a0017d4 <Chip_Clock_FindBaseClock+0x58>
1a0017a6:	4918      	ldr	r1, [pc, #96]	; (1a001808 <Chip_Clock_FindBaseClock+0x8c>)
1a0017a8:	68ba      	ldr	r2, [r7, #8]
1a0017aa:	4613      	mov	r3, r2
1a0017ac:	005b      	lsls	r3, r3, #1
1a0017ae:	4413      	add	r3, r2
1a0017b0:	005b      	lsls	r3, r3, #1
1a0017b2:	440b      	add	r3, r1
1a0017b4:	3302      	adds	r3, #2
1a0017b6:	881b      	ldrh	r3, [r3, #0]
1a0017b8:	88fa      	ldrh	r2, [r7, #6]
1a0017ba:	429a      	cmp	r2, r3
1a0017bc:	d80a      	bhi.n	1a0017d4 <Chip_Clock_FindBaseClock+0x58>
1a0017be:	4912      	ldr	r1, [pc, #72]	; (1a001808 <Chip_Clock_FindBaseClock+0x8c>)
1a0017c0:	68ba      	ldr	r2, [r7, #8]
1a0017c2:	4613      	mov	r3, r2
1a0017c4:	005b      	lsls	r3, r3, #1
1a0017c6:	4413      	add	r3, r2
1a0017c8:	005b      	lsls	r3, r3, #1
1a0017ca:	440b      	add	r3, r1
1a0017cc:	3304      	adds	r3, #4
1a0017ce:	781b      	ldrb	r3, [r3, #0]
1a0017d0:	73fb      	strb	r3, [r7, #15]
1a0017d2:	e002      	b.n	1a0017da <Chip_Clock_FindBaseClock+0x5e>
1a0017d4:	68bb      	ldr	r3, [r7, #8]
1a0017d6:	3301      	adds	r3, #1
1a0017d8:	60bb      	str	r3, [r7, #8]
1a0017da:	7bfb      	ldrb	r3, [r7, #15]
1a0017dc:	2b1c      	cmp	r3, #28
1a0017de:	d10b      	bne.n	1a0017f8 <Chip_Clock_FindBaseClock+0x7c>
1a0017e0:	4909      	ldr	r1, [pc, #36]	; (1a001808 <Chip_Clock_FindBaseClock+0x8c>)
1a0017e2:	68ba      	ldr	r2, [r7, #8]
1a0017e4:	4613      	mov	r3, r2
1a0017e6:	005b      	lsls	r3, r3, #1
1a0017e8:	4413      	add	r3, r2
1a0017ea:	005b      	lsls	r3, r3, #1
1a0017ec:	440b      	add	r3, r1
1a0017ee:	3304      	adds	r3, #4
1a0017f0:	781b      	ldrb	r3, [r3, #0]
1a0017f2:	7bfa      	ldrb	r2, [r7, #15]
1a0017f4:	429a      	cmp	r2, r3
1a0017f6:	d1cb      	bne.n	1a001790 <Chip_Clock_FindBaseClock+0x14>
1a0017f8:	7bfb      	ldrb	r3, [r7, #15]
1a0017fa:	4618      	mov	r0, r3
1a0017fc:	3714      	adds	r7, #20
1a0017fe:	46bd      	mov	sp, r7
1a001800:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001804:	4770      	bx	lr
1a001806:	bf00      	nop
1a001808:	1a0020a8 	.word	0x1a0020a8

1a00180c <Chip_Clock_EnableCrystal>:
1a00180c:	b480      	push	{r7}
1a00180e:	b083      	sub	sp, #12
1a001810:	af00      	add	r7, sp, #0
1a001812:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001816:	603b      	str	r3, [r7, #0]
1a001818:	4b15      	ldr	r3, [pc, #84]	; (1a001870 <Chip_Clock_EnableCrystal+0x64>)
1a00181a:	699b      	ldr	r3, [r3, #24]
1a00181c:	607b      	str	r3, [r7, #4]
1a00181e:	687b      	ldr	r3, [r7, #4]
1a001820:	f023 0302 	bic.w	r3, r3, #2
1a001824:	607b      	str	r3, [r7, #4]
1a001826:	4b12      	ldr	r3, [pc, #72]	; (1a001870 <Chip_Clock_EnableCrystal+0x64>)
1a001828:	699b      	ldr	r3, [r3, #24]
1a00182a:	687a      	ldr	r2, [r7, #4]
1a00182c:	429a      	cmp	r2, r3
1a00182e:	d002      	beq.n	1a001836 <Chip_Clock_EnableCrystal+0x2a>
1a001830:	4a0f      	ldr	r2, [pc, #60]	; (1a001870 <Chip_Clock_EnableCrystal+0x64>)
1a001832:	687b      	ldr	r3, [r7, #4]
1a001834:	6193      	str	r3, [r2, #24]
1a001836:	687b      	ldr	r3, [r7, #4]
1a001838:	f023 0301 	bic.w	r3, r3, #1
1a00183c:	607b      	str	r3, [r7, #4]
1a00183e:	4b0d      	ldr	r3, [pc, #52]	; (1a001874 <Chip_Clock_EnableCrystal+0x68>)
1a001840:	681b      	ldr	r3, [r3, #0]
1a001842:	4a0d      	ldr	r2, [pc, #52]	; (1a001878 <Chip_Clock_EnableCrystal+0x6c>)
1a001844:	4293      	cmp	r3, r2
1a001846:	d903      	bls.n	1a001850 <Chip_Clock_EnableCrystal+0x44>
1a001848:	687b      	ldr	r3, [r7, #4]
1a00184a:	f043 0304 	orr.w	r3, r3, #4
1a00184e:	607b      	str	r3, [r7, #4]
1a001850:	4a07      	ldr	r2, [pc, #28]	; (1a001870 <Chip_Clock_EnableCrystal+0x64>)
1a001852:	687b      	ldr	r3, [r7, #4]
1a001854:	6193      	str	r3, [r2, #24]
1a001856:	bf00      	nop
1a001858:	683b      	ldr	r3, [r7, #0]
1a00185a:	1e5a      	subs	r2, r3, #1
1a00185c:	603a      	str	r2, [r7, #0]
1a00185e:	2b00      	cmp	r3, #0
1a001860:	d1fa      	bne.n	1a001858 <Chip_Clock_EnableCrystal+0x4c>
1a001862:	bf00      	nop
1a001864:	370c      	adds	r7, #12
1a001866:	46bd      	mov	sp, r7
1a001868:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00186c:	4770      	bx	lr
1a00186e:	bf00      	nop
1a001870:	40050000 	.word	0x40050000
1a001874:	1a002010 	.word	0x1a002010
1a001878:	01312cff 	.word	0x01312cff

1a00187c <Chip_Clock_CalcMainPLLValue>:
1a00187c:	b580      	push	{r7, lr}
1a00187e:	b082      	sub	sp, #8
1a001880:	af00      	add	r7, sp, #0
1a001882:	6078      	str	r0, [r7, #4]
1a001884:	6039      	str	r1, [r7, #0]
1a001886:	683b      	ldr	r3, [r7, #0]
1a001888:	791b      	ldrb	r3, [r3, #4]
1a00188a:	4618      	mov	r0, r3
1a00188c:	f000 f8fe 	bl	1a001a8c <Chip_Clock_GetClockInputHz>
1a001890:	4602      	mov	r2, r0
1a001892:	683b      	ldr	r3, [r7, #0]
1a001894:	615a      	str	r2, [r3, #20]
1a001896:	687b      	ldr	r3, [r7, #4]
1a001898:	4a2b      	ldr	r2, [pc, #172]	; (1a001948 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a00189a:	4293      	cmp	r3, r2
1a00189c:	d807      	bhi.n	1a0018ae <Chip_Clock_CalcMainPLLValue+0x32>
1a00189e:	687b      	ldr	r3, [r7, #4]
1a0018a0:	4a2a      	ldr	r2, [pc, #168]	; (1a00194c <Chip_Clock_CalcMainPLLValue+0xd0>)
1a0018a2:	4293      	cmp	r3, r2
1a0018a4:	d903      	bls.n	1a0018ae <Chip_Clock_CalcMainPLLValue+0x32>
1a0018a6:	683b      	ldr	r3, [r7, #0]
1a0018a8:	695b      	ldr	r3, [r3, #20]
1a0018aa:	2b00      	cmp	r3, #0
1a0018ac:	d102      	bne.n	1a0018b4 <Chip_Clock_CalcMainPLLValue+0x38>
1a0018ae:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a0018b2:	e044      	b.n	1a00193e <Chip_Clock_CalcMainPLLValue+0xc2>
1a0018b4:	683b      	ldr	r3, [r7, #0]
1a0018b6:	2280      	movs	r2, #128	; 0x80
1a0018b8:	601a      	str	r2, [r3, #0]
1a0018ba:	683b      	ldr	r3, [r7, #0]
1a0018bc:	2200      	movs	r2, #0
1a0018be:	609a      	str	r2, [r3, #8]
1a0018c0:	683b      	ldr	r3, [r7, #0]
1a0018c2:	2200      	movs	r2, #0
1a0018c4:	60da      	str	r2, [r3, #12]
1a0018c6:	683b      	ldr	r3, [r7, #0]
1a0018c8:	695b      	ldr	r3, [r3, #20]
1a0018ca:	687a      	ldr	r2, [r7, #4]
1a0018cc:	fbb2 f3f3 	udiv	r3, r2, r3
1a0018d0:	461a      	mov	r2, r3
1a0018d2:	683b      	ldr	r3, [r7, #0]
1a0018d4:	611a      	str	r2, [r3, #16]
1a0018d6:	687b      	ldr	r3, [r7, #4]
1a0018d8:	4a1d      	ldr	r2, [pc, #116]	; (1a001950 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a0018da:	4293      	cmp	r3, r2
1a0018dc:	d909      	bls.n	1a0018f2 <Chip_Clock_CalcMainPLLValue+0x76>
1a0018de:	683b      	ldr	r3, [r7, #0]
1a0018e0:	691b      	ldr	r3, [r3, #16]
1a0018e2:	461a      	mov	r2, r3
1a0018e4:	683b      	ldr	r3, [r7, #0]
1a0018e6:	695b      	ldr	r3, [r3, #20]
1a0018e8:	fb03 f302 	mul.w	r3, r3, r2
1a0018ec:	687a      	ldr	r2, [r7, #4]
1a0018ee:	429a      	cmp	r2, r3
1a0018f0:	d00f      	beq.n	1a001912 <Chip_Clock_CalcMainPLLValue+0x96>
1a0018f2:	6839      	ldr	r1, [r7, #0]
1a0018f4:	6878      	ldr	r0, [r7, #4]
1a0018f6:	f7ff fe61 	bl	1a0015bc <pll_get_frac>
1a0018fa:	683b      	ldr	r3, [r7, #0]
1a0018fc:	689b      	ldr	r3, [r3, #8]
1a0018fe:	2b00      	cmp	r3, #0
1a001900:	d102      	bne.n	1a001908 <Chip_Clock_CalcMainPLLValue+0x8c>
1a001902:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001906:	e01a      	b.n	1a00193e <Chip_Clock_CalcMainPLLValue+0xc2>
1a001908:	683b      	ldr	r3, [r7, #0]
1a00190a:	689b      	ldr	r3, [r3, #8]
1a00190c:	1e5a      	subs	r2, r3, #1
1a00190e:	683b      	ldr	r3, [r7, #0]
1a001910:	609a      	str	r2, [r3, #8]
1a001912:	683b      	ldr	r3, [r7, #0]
1a001914:	691b      	ldr	r3, [r3, #16]
1a001916:	2b00      	cmp	r3, #0
1a001918:	d102      	bne.n	1a001920 <Chip_Clock_CalcMainPLLValue+0xa4>
1a00191a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a00191e:	e00e      	b.n	1a00193e <Chip_Clock_CalcMainPLLValue+0xc2>
1a001920:	683b      	ldr	r3, [r7, #0]
1a001922:	68db      	ldr	r3, [r3, #12]
1a001924:	2b00      	cmp	r3, #0
1a001926:	d004      	beq.n	1a001932 <Chip_Clock_CalcMainPLLValue+0xb6>
1a001928:	683b      	ldr	r3, [r7, #0]
1a00192a:	68db      	ldr	r3, [r3, #12]
1a00192c:	1e5a      	subs	r2, r3, #1
1a00192e:	683b      	ldr	r3, [r7, #0]
1a001930:	60da      	str	r2, [r3, #12]
1a001932:	683b      	ldr	r3, [r7, #0]
1a001934:	691b      	ldr	r3, [r3, #16]
1a001936:	1e5a      	subs	r2, r3, #1
1a001938:	683b      	ldr	r3, [r7, #0]
1a00193a:	611a      	str	r2, [r3, #16]
1a00193c:	2300      	movs	r3, #0
1a00193e:	4618      	mov	r0, r3
1a001940:	3708      	adds	r7, #8
1a001942:	46bd      	mov	sp, r7
1a001944:	bd80      	pop	{r7, pc}
1a001946:	bf00      	nop
1a001948:	0c28cb00 	.word	0x0c28cb00
1a00194c:	0094c5ef 	.word	0x0094c5ef
1a001950:	094c5eff 	.word	0x094c5eff

1a001954 <Chip_Clock_GetMainPLLHz>:
1a001954:	b580      	push	{r7, lr}
1a001956:	b08c      	sub	sp, #48	; 0x30
1a001958:	af00      	add	r7, sp, #0
1a00195a:	4b2c      	ldr	r3, [pc, #176]	; (1a001a0c <Chip_Clock_GetMainPLLHz+0xb8>)
1a00195c:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a00195e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001960:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001962:	0e1b      	lsrs	r3, r3, #24
1a001964:	b2db      	uxtb	r3, r3
1a001966:	f003 030f 	and.w	r3, r3, #15
1a00196a:	b2db      	uxtb	r3, r3
1a00196c:	4618      	mov	r0, r3
1a00196e:	f000 f88d 	bl	1a001a8c <Chip_Clock_GetClockInputHz>
1a001972:	62b8      	str	r0, [r7, #40]	; 0x28
1a001974:	4b26      	ldr	r3, [pc, #152]	; (1a001a10 <Chip_Clock_GetMainPLLHz+0xbc>)
1a001976:	681b      	ldr	r3, [r3, #0]
1a001978:	607b      	str	r3, [r7, #4]
1a00197a:	4b24      	ldr	r3, [pc, #144]	; (1a001a0c <Chip_Clock_GetMainPLLHz+0xb8>)
1a00197c:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a00197e:	f003 0301 	and.w	r3, r3, #1
1a001982:	2b00      	cmp	r3, #0
1a001984:	d101      	bne.n	1a00198a <Chip_Clock_GetMainPLLHz+0x36>
1a001986:	2300      	movs	r3, #0
1a001988:	e03b      	b.n	1a001a02 <Chip_Clock_GetMainPLLHz+0xae>
1a00198a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00198c:	0c1b      	lsrs	r3, r3, #16
1a00198e:	b2db      	uxtb	r3, r3
1a001990:	627b      	str	r3, [r7, #36]	; 0x24
1a001992:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001994:	0b1b      	lsrs	r3, r3, #12
1a001996:	f003 0303 	and.w	r3, r3, #3
1a00199a:	623b      	str	r3, [r7, #32]
1a00199c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a00199e:	0a1b      	lsrs	r3, r3, #8
1a0019a0:	f003 0303 	and.w	r3, r3, #3
1a0019a4:	61fb      	str	r3, [r7, #28]
1a0019a6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0019a8:	09db      	lsrs	r3, r3, #7
1a0019aa:	f003 0301 	and.w	r3, r3, #1
1a0019ae:	61bb      	str	r3, [r7, #24]
1a0019b0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0019b2:	099b      	lsrs	r3, r3, #6
1a0019b4:	f003 0301 	and.w	r3, r3, #1
1a0019b8:	617b      	str	r3, [r7, #20]
1a0019ba:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0019bc:	3301      	adds	r3, #1
1a0019be:	613b      	str	r3, [r7, #16]
1a0019c0:	6a3b      	ldr	r3, [r7, #32]
1a0019c2:	3301      	adds	r3, #1
1a0019c4:	60fb      	str	r3, [r7, #12]
1a0019c6:	1d3a      	adds	r2, r7, #4
1a0019c8:	69fb      	ldr	r3, [r7, #28]
1a0019ca:	4413      	add	r3, r2
1a0019cc:	781b      	ldrb	r3, [r3, #0]
1a0019ce:	60bb      	str	r3, [r7, #8]
1a0019d0:	69bb      	ldr	r3, [r7, #24]
1a0019d2:	2b00      	cmp	r3, #0
1a0019d4:	d102      	bne.n	1a0019dc <Chip_Clock_GetMainPLLHz+0x88>
1a0019d6:	697b      	ldr	r3, [r7, #20]
1a0019d8:	2b00      	cmp	r3, #0
1a0019da:	d007      	beq.n	1a0019ec <Chip_Clock_GetMainPLLHz+0x98>
1a0019dc:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a0019de:	68fb      	ldr	r3, [r7, #12]
1a0019e0:	fbb2 f3f3 	udiv	r3, r2, r3
1a0019e4:	693a      	ldr	r2, [r7, #16]
1a0019e6:	fb02 f303 	mul.w	r3, r2, r3
1a0019ea:	e00a      	b.n	1a001a02 <Chip_Clock_GetMainPLLHz+0xae>
1a0019ec:	68bb      	ldr	r3, [r7, #8]
1a0019ee:	005b      	lsls	r3, r3, #1
1a0019f0:	693a      	ldr	r2, [r7, #16]
1a0019f2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0019f6:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a0019f8:	68fa      	ldr	r2, [r7, #12]
1a0019fa:	fbb1 f2f2 	udiv	r2, r1, r2
1a0019fe:	fb02 f303 	mul.w	r3, r2, r3
1a001a02:	4618      	mov	r0, r3
1a001a04:	3730      	adds	r7, #48	; 0x30
1a001a06:	46bd      	mov	sp, r7
1a001a08:	bd80      	pop	{r7, pc}
1a001a0a:	bf00      	nop
1a001a0c:	40050000 	.word	0x40050000
1a001a10:	1a002114 	.word	0x1a002114

1a001a14 <Chip_Clock_GetDividerSource>:
1a001a14:	b480      	push	{r7}
1a001a16:	b085      	sub	sp, #20
1a001a18:	af00      	add	r7, sp, #0
1a001a1a:	4603      	mov	r3, r0
1a001a1c:	71fb      	strb	r3, [r7, #7]
1a001a1e:	4a0c      	ldr	r2, [pc, #48]	; (1a001a50 <Chip_Clock_GetDividerSource+0x3c>)
1a001a20:	79fb      	ldrb	r3, [r7, #7]
1a001a22:	3312      	adds	r3, #18
1a001a24:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001a28:	60fb      	str	r3, [r7, #12]
1a001a2a:	68fb      	ldr	r3, [r7, #12]
1a001a2c:	f003 0301 	and.w	r3, r3, #1
1a001a30:	2b00      	cmp	r3, #0
1a001a32:	d001      	beq.n	1a001a38 <Chip_Clock_GetDividerSource+0x24>
1a001a34:	2311      	movs	r3, #17
1a001a36:	e005      	b.n	1a001a44 <Chip_Clock_GetDividerSource+0x30>
1a001a38:	68fb      	ldr	r3, [r7, #12]
1a001a3a:	0e1b      	lsrs	r3, r3, #24
1a001a3c:	b2db      	uxtb	r3, r3
1a001a3e:	f003 031f 	and.w	r3, r3, #31
1a001a42:	b2db      	uxtb	r3, r3
1a001a44:	4618      	mov	r0, r3
1a001a46:	3714      	adds	r7, #20
1a001a48:	46bd      	mov	sp, r7
1a001a4a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a4e:	4770      	bx	lr
1a001a50:	40050000 	.word	0x40050000

1a001a54 <Chip_Clock_GetDividerDivisor>:
1a001a54:	b480      	push	{r7}
1a001a56:	b083      	sub	sp, #12
1a001a58:	af00      	add	r7, sp, #0
1a001a5a:	4603      	mov	r3, r0
1a001a5c:	71fb      	strb	r3, [r7, #7]
1a001a5e:	4a09      	ldr	r2, [pc, #36]	; (1a001a84 <Chip_Clock_GetDividerDivisor+0x30>)
1a001a60:	79fb      	ldrb	r3, [r7, #7]
1a001a62:	3312      	adds	r3, #18
1a001a64:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001a68:	089b      	lsrs	r3, r3, #2
1a001a6a:	b2da      	uxtb	r2, r3
1a001a6c:	79fb      	ldrb	r3, [r7, #7]
1a001a6e:	4906      	ldr	r1, [pc, #24]	; (1a001a88 <Chip_Clock_GetDividerDivisor+0x34>)
1a001a70:	5ccb      	ldrb	r3, [r1, r3]
1a001a72:	4013      	ands	r3, r2
1a001a74:	b2db      	uxtb	r3, r3
1a001a76:	4618      	mov	r0, r3
1a001a78:	370c      	adds	r7, #12
1a001a7a:	46bd      	mov	sp, r7
1a001a7c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a80:	4770      	bx	lr
1a001a82:	bf00      	nop
1a001a84:	40050000 	.word	0x40050000
1a001a88:	1a002118 	.word	0x1a002118

1a001a8c <Chip_Clock_GetClockInputHz>:
1a001a8c:	b580      	push	{r7, lr}
1a001a8e:	b084      	sub	sp, #16
1a001a90:	af00      	add	r7, sp, #0
1a001a92:	4603      	mov	r3, r0
1a001a94:	71fb      	strb	r3, [r7, #7]
1a001a96:	2300      	movs	r3, #0
1a001a98:	60fb      	str	r3, [r7, #12]
1a001a9a:	79fb      	ldrb	r3, [r7, #7]
1a001a9c:	2b11      	cmp	r3, #17
1a001a9e:	d87f      	bhi.n	1a001ba0 <Chip_Clock_GetClockInputHz+0x114>
1a001aa0:	a201      	add	r2, pc, #4	; (adr r2, 1a001aa8 <Chip_Clock_GetClockInputHz+0x1c>)
1a001aa2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001aa6:	bf00      	nop
1a001aa8:	1a001af1 	.word	0x1a001af1
1a001aac:	1a001af9 	.word	0x1a001af9
1a001ab0:	1a001aff 	.word	0x1a001aff
1a001ab4:	1a001b13 	.word	0x1a001b13
1a001ab8:	1a001b2d 	.word	0x1a001b2d
1a001abc:	1a001ba1 	.word	0x1a001ba1
1a001ac0:	1a001b35 	.word	0x1a001b35
1a001ac4:	1a001b3d 	.word	0x1a001b3d
1a001ac8:	1a001b45 	.word	0x1a001b45
1a001acc:	1a001b4d 	.word	0x1a001b4d
1a001ad0:	1a001ba1 	.word	0x1a001ba1
1a001ad4:	1a001ba1 	.word	0x1a001ba1
1a001ad8:	1a001b55 	.word	0x1a001b55
1a001adc:	1a001b63 	.word	0x1a001b63
1a001ae0:	1a001b71 	.word	0x1a001b71
1a001ae4:	1a001b7f 	.word	0x1a001b7f
1a001ae8:	1a001b8d 	.word	0x1a001b8d
1a001aec:	1a001b9b 	.word	0x1a001b9b
1a001af0:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001af4:	60fb      	str	r3, [r7, #12]
1a001af6:	e056      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001af8:	4b2d      	ldr	r3, [pc, #180]	; (1a001bb0 <Chip_Clock_GetClockInputHz+0x124>)
1a001afa:	60fb      	str	r3, [r7, #12]
1a001afc:	e053      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001afe:	4b2d      	ldr	r3, [pc, #180]	; (1a001bb4 <Chip_Clock_GetClockInputHz+0x128>)
1a001b00:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001b04:	f003 0307 	and.w	r3, r3, #7
1a001b08:	2b04      	cmp	r3, #4
1a001b0a:	d04b      	beq.n	1a001ba4 <Chip_Clock_GetClockInputHz+0x118>
1a001b0c:	4b2a      	ldr	r3, [pc, #168]	; (1a001bb8 <Chip_Clock_GetClockInputHz+0x12c>)
1a001b0e:	60fb      	str	r3, [r7, #12]
1a001b10:	e048      	b.n	1a001ba4 <Chip_Clock_GetClockInputHz+0x118>
1a001b12:	4b28      	ldr	r3, [pc, #160]	; (1a001bb4 <Chip_Clock_GetClockInputHz+0x128>)
1a001b14:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001b18:	f003 0307 	and.w	r3, r3, #7
1a001b1c:	2b04      	cmp	r3, #4
1a001b1e:	d002      	beq.n	1a001b26 <Chip_Clock_GetClockInputHz+0x9a>
1a001b20:	4b25      	ldr	r3, [pc, #148]	; (1a001bb8 <Chip_Clock_GetClockInputHz+0x12c>)
1a001b22:	60fb      	str	r3, [r7, #12]
1a001b24:	e03f      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b26:	4b25      	ldr	r3, [pc, #148]	; (1a001bbc <Chip_Clock_GetClockInputHz+0x130>)
1a001b28:	60fb      	str	r3, [r7, #12]
1a001b2a:	e03c      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b2c:	4b24      	ldr	r3, [pc, #144]	; (1a001bc0 <Chip_Clock_GetClockInputHz+0x134>)
1a001b2e:	681b      	ldr	r3, [r3, #0]
1a001b30:	60fb      	str	r3, [r7, #12]
1a001b32:	e038      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b34:	4b23      	ldr	r3, [pc, #140]	; (1a001bc4 <Chip_Clock_GetClockInputHz+0x138>)
1a001b36:	681b      	ldr	r3, [r3, #0]
1a001b38:	60fb      	str	r3, [r7, #12]
1a001b3a:	e034      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b3c:	4b22      	ldr	r3, [pc, #136]	; (1a001bc8 <Chip_Clock_GetClockInputHz+0x13c>)
1a001b3e:	681b      	ldr	r3, [r3, #0]
1a001b40:	60fb      	str	r3, [r7, #12]
1a001b42:	e030      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b44:	4b20      	ldr	r3, [pc, #128]	; (1a001bc8 <Chip_Clock_GetClockInputHz+0x13c>)
1a001b46:	685b      	ldr	r3, [r3, #4]
1a001b48:	60fb      	str	r3, [r7, #12]
1a001b4a:	e02c      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b4c:	f7ff ff02 	bl	1a001954 <Chip_Clock_GetMainPLLHz>
1a001b50:	60f8      	str	r0, [r7, #12]
1a001b52:	e028      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b54:	79fb      	ldrb	r3, [r7, #7]
1a001b56:	2100      	movs	r1, #0
1a001b58:	4618      	mov	r0, r3
1a001b5a:	f7ff fdef 	bl	1a00173c <Chip_Clock_GetDivRate>
1a001b5e:	60f8      	str	r0, [r7, #12]
1a001b60:	e021      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b62:	79fb      	ldrb	r3, [r7, #7]
1a001b64:	2101      	movs	r1, #1
1a001b66:	4618      	mov	r0, r3
1a001b68:	f7ff fde8 	bl	1a00173c <Chip_Clock_GetDivRate>
1a001b6c:	60f8      	str	r0, [r7, #12]
1a001b6e:	e01a      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b70:	79fb      	ldrb	r3, [r7, #7]
1a001b72:	2102      	movs	r1, #2
1a001b74:	4618      	mov	r0, r3
1a001b76:	f7ff fde1 	bl	1a00173c <Chip_Clock_GetDivRate>
1a001b7a:	60f8      	str	r0, [r7, #12]
1a001b7c:	e013      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b7e:	79fb      	ldrb	r3, [r7, #7]
1a001b80:	2103      	movs	r1, #3
1a001b82:	4618      	mov	r0, r3
1a001b84:	f7ff fdda 	bl	1a00173c <Chip_Clock_GetDivRate>
1a001b88:	60f8      	str	r0, [r7, #12]
1a001b8a:	e00c      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b8c:	79fb      	ldrb	r3, [r7, #7]
1a001b8e:	2104      	movs	r1, #4
1a001b90:	4618      	mov	r0, r3
1a001b92:	f7ff fdd3 	bl	1a00173c <Chip_Clock_GetDivRate>
1a001b96:	60f8      	str	r0, [r7, #12]
1a001b98:	e005      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001b9a:	2300      	movs	r3, #0
1a001b9c:	60fb      	str	r3, [r7, #12]
1a001b9e:	e002      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001ba0:	bf00      	nop
1a001ba2:	e000      	b.n	1a001ba6 <Chip_Clock_GetClockInputHz+0x11a>
1a001ba4:	bf00      	nop
1a001ba6:	68fb      	ldr	r3, [r7, #12]
1a001ba8:	4618      	mov	r0, r3
1a001baa:	3710      	adds	r7, #16
1a001bac:	46bd      	mov	sp, r7
1a001bae:	bd80      	pop	{r7, pc}
1a001bb0:	00b71b00 	.word	0x00b71b00
1a001bb4:	40043000 	.word	0x40043000
1a001bb8:	017d7840 	.word	0x017d7840
1a001bbc:	02faf080 	.word	0x02faf080
1a001bc0:	1a00200c 	.word	0x1a00200c
1a001bc4:	1a002010 	.word	0x1a002010
1a001bc8:	10000010 	.word	0x10000010

1a001bcc <Chip_Clock_GetBaseClocktHz>:
1a001bcc:	b580      	push	{r7, lr}
1a001bce:	b082      	sub	sp, #8
1a001bd0:	af00      	add	r7, sp, #0
1a001bd2:	4603      	mov	r3, r0
1a001bd4:	71fb      	strb	r3, [r7, #7]
1a001bd6:	79fb      	ldrb	r3, [r7, #7]
1a001bd8:	4618      	mov	r0, r3
1a001bda:	f000 f857 	bl	1a001c8c <Chip_Clock_GetBaseClock>
1a001bde:	4603      	mov	r3, r0
1a001be0:	4618      	mov	r0, r3
1a001be2:	f7ff ff53 	bl	1a001a8c <Chip_Clock_GetClockInputHz>
1a001be6:	4603      	mov	r3, r0
1a001be8:	4618      	mov	r0, r3
1a001bea:	3708      	adds	r7, #8
1a001bec:	46bd      	mov	sp, r7
1a001bee:	bd80      	pop	{r7, pc}

1a001bf0 <Chip_Clock_SetBaseClock>:
1a001bf0:	b490      	push	{r4, r7}
1a001bf2:	b084      	sub	sp, #16
1a001bf4:	af00      	add	r7, sp, #0
1a001bf6:	4604      	mov	r4, r0
1a001bf8:	4608      	mov	r0, r1
1a001bfa:	4611      	mov	r1, r2
1a001bfc:	461a      	mov	r2, r3
1a001bfe:	4623      	mov	r3, r4
1a001c00:	71fb      	strb	r3, [r7, #7]
1a001c02:	4603      	mov	r3, r0
1a001c04:	71bb      	strb	r3, [r7, #6]
1a001c06:	460b      	mov	r3, r1
1a001c08:	717b      	strb	r3, [r7, #5]
1a001c0a:	4613      	mov	r3, r2
1a001c0c:	713b      	strb	r3, [r7, #4]
1a001c0e:	4a1d      	ldr	r2, [pc, #116]	; (1a001c84 <Chip_Clock_SetBaseClock+0x94>)
1a001c10:	79fb      	ldrb	r3, [r7, #7]
1a001c12:	3316      	adds	r3, #22
1a001c14:	009b      	lsls	r3, r3, #2
1a001c16:	4413      	add	r3, r2
1a001c18:	685b      	ldr	r3, [r3, #4]
1a001c1a:	60fb      	str	r3, [r7, #12]
1a001c1c:	79fb      	ldrb	r3, [r7, #7]
1a001c1e:	2b1b      	cmp	r3, #27
1a001c20:	d822      	bhi.n	1a001c68 <Chip_Clock_SetBaseClock+0x78>
1a001c22:	79bb      	ldrb	r3, [r7, #6]
1a001c24:	2b11      	cmp	r3, #17
1a001c26:	d028      	beq.n	1a001c7a <Chip_Clock_SetBaseClock+0x8a>
1a001c28:	68fa      	ldr	r2, [r7, #12]
1a001c2a:	4b17      	ldr	r3, [pc, #92]	; (1a001c88 <Chip_Clock_SetBaseClock+0x98>)
1a001c2c:	4013      	ands	r3, r2
1a001c2e:	60fb      	str	r3, [r7, #12]
1a001c30:	797b      	ldrb	r3, [r7, #5]
1a001c32:	2b00      	cmp	r3, #0
1a001c34:	d003      	beq.n	1a001c3e <Chip_Clock_SetBaseClock+0x4e>
1a001c36:	68fb      	ldr	r3, [r7, #12]
1a001c38:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001c3c:	60fb      	str	r3, [r7, #12]
1a001c3e:	793b      	ldrb	r3, [r7, #4]
1a001c40:	2b00      	cmp	r3, #0
1a001c42:	d003      	beq.n	1a001c4c <Chip_Clock_SetBaseClock+0x5c>
1a001c44:	68fb      	ldr	r3, [r7, #12]
1a001c46:	f043 0301 	orr.w	r3, r3, #1
1a001c4a:	60fb      	str	r3, [r7, #12]
1a001c4c:	79bb      	ldrb	r3, [r7, #6]
1a001c4e:	061b      	lsls	r3, r3, #24
1a001c50:	461a      	mov	r2, r3
1a001c52:	68fb      	ldr	r3, [r7, #12]
1a001c54:	4313      	orrs	r3, r2
1a001c56:	60fb      	str	r3, [r7, #12]
1a001c58:	4a0a      	ldr	r2, [pc, #40]	; (1a001c84 <Chip_Clock_SetBaseClock+0x94>)
1a001c5a:	79fb      	ldrb	r3, [r7, #7]
1a001c5c:	3316      	adds	r3, #22
1a001c5e:	009b      	lsls	r3, r3, #2
1a001c60:	4413      	add	r3, r2
1a001c62:	68fa      	ldr	r2, [r7, #12]
1a001c64:	605a      	str	r2, [r3, #4]
1a001c66:	e008      	b.n	1a001c7a <Chip_Clock_SetBaseClock+0x8a>
1a001c68:	4906      	ldr	r1, [pc, #24]	; (1a001c84 <Chip_Clock_SetBaseClock+0x94>)
1a001c6a:	79fb      	ldrb	r3, [r7, #7]
1a001c6c:	68fa      	ldr	r2, [r7, #12]
1a001c6e:	f042 0201 	orr.w	r2, r2, #1
1a001c72:	3316      	adds	r3, #22
1a001c74:	009b      	lsls	r3, r3, #2
1a001c76:	440b      	add	r3, r1
1a001c78:	605a      	str	r2, [r3, #4]
1a001c7a:	bf00      	nop
1a001c7c:	3710      	adds	r7, #16
1a001c7e:	46bd      	mov	sp, r7
1a001c80:	bc90      	pop	{r4, r7}
1a001c82:	4770      	bx	lr
1a001c84:	40050000 	.word	0x40050000
1a001c88:	e0fff7fe 	.word	0xe0fff7fe

1a001c8c <Chip_Clock_GetBaseClock>:
1a001c8c:	b480      	push	{r7}
1a001c8e:	b085      	sub	sp, #20
1a001c90:	af00      	add	r7, sp, #0
1a001c92:	4603      	mov	r3, r0
1a001c94:	71fb      	strb	r3, [r7, #7]
1a001c96:	79fb      	ldrb	r3, [r7, #7]
1a001c98:	2b1b      	cmp	r3, #27
1a001c9a:	d901      	bls.n	1a001ca0 <Chip_Clock_GetBaseClock+0x14>
1a001c9c:	2311      	movs	r3, #17
1a001c9e:	e013      	b.n	1a001cc8 <Chip_Clock_GetBaseClock+0x3c>
1a001ca0:	4a0c      	ldr	r2, [pc, #48]	; (1a001cd4 <Chip_Clock_GetBaseClock+0x48>)
1a001ca2:	79fb      	ldrb	r3, [r7, #7]
1a001ca4:	3316      	adds	r3, #22
1a001ca6:	009b      	lsls	r3, r3, #2
1a001ca8:	4413      	add	r3, r2
1a001caa:	685b      	ldr	r3, [r3, #4]
1a001cac:	60fb      	str	r3, [r7, #12]
1a001cae:	68fb      	ldr	r3, [r7, #12]
1a001cb0:	f003 0301 	and.w	r3, r3, #1
1a001cb4:	2b00      	cmp	r3, #0
1a001cb6:	d001      	beq.n	1a001cbc <Chip_Clock_GetBaseClock+0x30>
1a001cb8:	2311      	movs	r3, #17
1a001cba:	e005      	b.n	1a001cc8 <Chip_Clock_GetBaseClock+0x3c>
1a001cbc:	68fb      	ldr	r3, [r7, #12]
1a001cbe:	0e1b      	lsrs	r3, r3, #24
1a001cc0:	b2db      	uxtb	r3, r3
1a001cc2:	f003 031f 	and.w	r3, r3, #31
1a001cc6:	b2db      	uxtb	r3, r3
1a001cc8:	4618      	mov	r0, r3
1a001cca:	3714      	adds	r7, #20
1a001ccc:	46bd      	mov	sp, r7
1a001cce:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001cd2:	4770      	bx	lr
1a001cd4:	40050000 	.word	0x40050000

1a001cd8 <Chip_Clock_EnableOpts>:
1a001cd8:	b480      	push	{r7}
1a001cda:	b085      	sub	sp, #20
1a001cdc:	af00      	add	r7, sp, #0
1a001cde:	603b      	str	r3, [r7, #0]
1a001ce0:	4603      	mov	r3, r0
1a001ce2:	80fb      	strh	r3, [r7, #6]
1a001ce4:	460b      	mov	r3, r1
1a001ce6:	717b      	strb	r3, [r7, #5]
1a001ce8:	4613      	mov	r3, r2
1a001cea:	713b      	strb	r3, [r7, #4]
1a001cec:	2301      	movs	r3, #1
1a001cee:	60fb      	str	r3, [r7, #12]
1a001cf0:	797b      	ldrb	r3, [r7, #5]
1a001cf2:	2b00      	cmp	r3, #0
1a001cf4:	d003      	beq.n	1a001cfe <Chip_Clock_EnableOpts+0x26>
1a001cf6:	68fb      	ldr	r3, [r7, #12]
1a001cf8:	f043 0302 	orr.w	r3, r3, #2
1a001cfc:	60fb      	str	r3, [r7, #12]
1a001cfe:	793b      	ldrb	r3, [r7, #4]
1a001d00:	2b00      	cmp	r3, #0
1a001d02:	d003      	beq.n	1a001d0c <Chip_Clock_EnableOpts+0x34>
1a001d04:	68fb      	ldr	r3, [r7, #12]
1a001d06:	f043 0304 	orr.w	r3, r3, #4
1a001d0a:	60fb      	str	r3, [r7, #12]
1a001d0c:	683b      	ldr	r3, [r7, #0]
1a001d0e:	2b02      	cmp	r3, #2
1a001d10:	d103      	bne.n	1a001d1a <Chip_Clock_EnableOpts+0x42>
1a001d12:	68fb      	ldr	r3, [r7, #12]
1a001d14:	f043 0320 	orr.w	r3, r3, #32
1a001d18:	60fb      	str	r3, [r7, #12]
1a001d1a:	88fb      	ldrh	r3, [r7, #6]
1a001d1c:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001d20:	d308      	bcc.n	1a001d34 <Chip_Clock_EnableOpts+0x5c>
1a001d22:	490a      	ldr	r1, [pc, #40]	; (1a001d4c <Chip_Clock_EnableOpts+0x74>)
1a001d24:	88fb      	ldrh	r3, [r7, #6]
1a001d26:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001d2a:	3320      	adds	r3, #32
1a001d2c:	68fa      	ldr	r2, [r7, #12]
1a001d2e:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001d32:	e005      	b.n	1a001d40 <Chip_Clock_EnableOpts+0x68>
1a001d34:	4906      	ldr	r1, [pc, #24]	; (1a001d50 <Chip_Clock_EnableOpts+0x78>)
1a001d36:	88fb      	ldrh	r3, [r7, #6]
1a001d38:	3320      	adds	r3, #32
1a001d3a:	68fa      	ldr	r2, [r7, #12]
1a001d3c:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001d40:	bf00      	nop
1a001d42:	3714      	adds	r7, #20
1a001d44:	46bd      	mov	sp, r7
1a001d46:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001d4a:	4770      	bx	lr
1a001d4c:	40052000 	.word	0x40052000
1a001d50:	40051000 	.word	0x40051000

1a001d54 <Chip_Clock_Enable>:
1a001d54:	b480      	push	{r7}
1a001d56:	b083      	sub	sp, #12
1a001d58:	af00      	add	r7, sp, #0
1a001d5a:	4603      	mov	r3, r0
1a001d5c:	80fb      	strh	r3, [r7, #6]
1a001d5e:	88fb      	ldrh	r3, [r7, #6]
1a001d60:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001d64:	d310      	bcc.n	1a001d88 <Chip_Clock_Enable+0x34>
1a001d66:	4a11      	ldr	r2, [pc, #68]	; (1a001dac <Chip_Clock_Enable+0x58>)
1a001d68:	88fb      	ldrh	r3, [r7, #6]
1a001d6a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001d6e:	3320      	adds	r3, #32
1a001d70:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001d74:	490d      	ldr	r1, [pc, #52]	; (1a001dac <Chip_Clock_Enable+0x58>)
1a001d76:	88fb      	ldrh	r3, [r7, #6]
1a001d78:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001d7c:	f042 0201 	orr.w	r2, r2, #1
1a001d80:	3320      	adds	r3, #32
1a001d82:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001d86:	e00b      	b.n	1a001da0 <Chip_Clock_Enable+0x4c>
1a001d88:	4a09      	ldr	r2, [pc, #36]	; (1a001db0 <Chip_Clock_Enable+0x5c>)
1a001d8a:	88fb      	ldrh	r3, [r7, #6]
1a001d8c:	3320      	adds	r3, #32
1a001d8e:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a001d92:	4907      	ldr	r1, [pc, #28]	; (1a001db0 <Chip_Clock_Enable+0x5c>)
1a001d94:	88fb      	ldrh	r3, [r7, #6]
1a001d96:	f042 0201 	orr.w	r2, r2, #1
1a001d9a:	3320      	adds	r3, #32
1a001d9c:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001da0:	bf00      	nop
1a001da2:	370c      	adds	r7, #12
1a001da4:	46bd      	mov	sp, r7
1a001da6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001daa:	4770      	bx	lr
1a001dac:	40052000 	.word	0x40052000
1a001db0:	40051000 	.word	0x40051000

1a001db4 <Chip_Clock_GetRate>:
1a001db4:	b580      	push	{r7, lr}
1a001db6:	b086      	sub	sp, #24
1a001db8:	af00      	add	r7, sp, #0
1a001dba:	4603      	mov	r3, r0
1a001dbc:	80fb      	strh	r3, [r7, #6]
1a001dbe:	88fb      	ldrh	r3, [r7, #6]
1a001dc0:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001dc4:	d308      	bcc.n	1a001dd8 <Chip_Clock_GetRate+0x24>
1a001dc6:	4a1b      	ldr	r2, [pc, #108]	; (1a001e34 <Chip_Clock_GetRate+0x80>)
1a001dc8:	88fb      	ldrh	r3, [r7, #6]
1a001dca:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001dce:	3320      	adds	r3, #32
1a001dd0:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001dd4:	617b      	str	r3, [r7, #20]
1a001dd6:	e005      	b.n	1a001de4 <Chip_Clock_GetRate+0x30>
1a001dd8:	4a17      	ldr	r2, [pc, #92]	; (1a001e38 <Chip_Clock_GetRate+0x84>)
1a001dda:	88fb      	ldrh	r3, [r7, #6]
1a001ddc:	3320      	adds	r3, #32
1a001dde:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001de2:	617b      	str	r3, [r7, #20]
1a001de4:	697b      	ldr	r3, [r7, #20]
1a001de6:	f003 0301 	and.w	r3, r3, #1
1a001dea:	2b00      	cmp	r3, #0
1a001dec:	d01b      	beq.n	1a001e26 <Chip_Clock_GetRate+0x72>
1a001dee:	88fb      	ldrh	r3, [r7, #6]
1a001df0:	4618      	mov	r0, r3
1a001df2:	f7ff fcc3 	bl	1a00177c <Chip_Clock_FindBaseClock>
1a001df6:	4603      	mov	r3, r0
1a001df8:	72fb      	strb	r3, [r7, #11]
1a001dfa:	7afb      	ldrb	r3, [r7, #11]
1a001dfc:	4618      	mov	r0, r3
1a001dfe:	f7ff fee5 	bl	1a001bcc <Chip_Clock_GetBaseClocktHz>
1a001e02:	60f8      	str	r0, [r7, #12]
1a001e04:	697b      	ldr	r3, [r7, #20]
1a001e06:	095b      	lsrs	r3, r3, #5
1a001e08:	f003 0307 	and.w	r3, r3, #7
1a001e0c:	2b00      	cmp	r3, #0
1a001e0e:	d102      	bne.n	1a001e16 <Chip_Clock_GetRate+0x62>
1a001e10:	2301      	movs	r3, #1
1a001e12:	613b      	str	r3, [r7, #16]
1a001e14:	e001      	b.n	1a001e1a <Chip_Clock_GetRate+0x66>
1a001e16:	2302      	movs	r3, #2
1a001e18:	613b      	str	r3, [r7, #16]
1a001e1a:	68fa      	ldr	r2, [r7, #12]
1a001e1c:	693b      	ldr	r3, [r7, #16]
1a001e1e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001e22:	60fb      	str	r3, [r7, #12]
1a001e24:	e001      	b.n	1a001e2a <Chip_Clock_GetRate+0x76>
1a001e26:	2300      	movs	r3, #0
1a001e28:	60fb      	str	r3, [r7, #12]
1a001e2a:	68fb      	ldr	r3, [r7, #12]
1a001e2c:	4618      	mov	r0, r3
1a001e2e:	3718      	adds	r7, #24
1a001e30:	46bd      	mov	sp, r7
1a001e32:	bd80      	pop	{r7, pc}
1a001e34:	40052000 	.word	0x40052000
1a001e38:	40051000 	.word	0x40051000

1a001e3c <SystemCoreClockUpdate>:
1a001e3c:	b580      	push	{r7, lr}
1a001e3e:	af00      	add	r7, sp, #0
1a001e40:	2069      	movs	r0, #105	; 0x69
1a001e42:	f7ff ffb7 	bl	1a001db4 <Chip_Clock_GetRate>
1a001e46:	4602      	mov	r2, r0
1a001e48:	4b01      	ldr	r3, [pc, #4]	; (1a001e50 <SystemCoreClockUpdate+0x14>)
1a001e4a:	601a      	str	r2, [r3, #0]
1a001e4c:	bf00      	nop
1a001e4e:	bd80      	pop	{r7, pc}
1a001e50:	10000594 	.word	0x10000594

1a001e54 <Chip_GPIO_Init>:
1a001e54:	b480      	push	{r7}
1a001e56:	b083      	sub	sp, #12
1a001e58:	af00      	add	r7, sp, #0
1a001e5a:	6078      	str	r0, [r7, #4]
1a001e5c:	bf00      	nop
1a001e5e:	370c      	adds	r7, #12
1a001e60:	46bd      	mov	sp, r7
1a001e62:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e66:	4770      	bx	lr

1a001e68 <Chip_TIMER_GetClockIndex>:
1a001e68:	b480      	push	{r7}
1a001e6a:	b085      	sub	sp, #20
1a001e6c:	af00      	add	r7, sp, #0
1a001e6e:	6078      	str	r0, [r7, #4]
1a001e70:	687b      	ldr	r3, [r7, #4]
1a001e72:	4a0e      	ldr	r2, [pc, #56]	; (1a001eac <Chip_TIMER_GetClockIndex+0x44>)
1a001e74:	4293      	cmp	r3, r2
1a001e76:	d102      	bne.n	1a001e7e <Chip_TIMER_GetClockIndex+0x16>
1a001e78:	23a4      	movs	r3, #164	; 0xa4
1a001e7a:	81fb      	strh	r3, [r7, #14]
1a001e7c:	e00f      	b.n	1a001e9e <Chip_TIMER_GetClockIndex+0x36>
1a001e7e:	687b      	ldr	r3, [r7, #4]
1a001e80:	4a0b      	ldr	r2, [pc, #44]	; (1a001eb0 <Chip_TIMER_GetClockIndex+0x48>)
1a001e82:	4293      	cmp	r3, r2
1a001e84:	d102      	bne.n	1a001e8c <Chip_TIMER_GetClockIndex+0x24>
1a001e86:	23a3      	movs	r3, #163	; 0xa3
1a001e88:	81fb      	strh	r3, [r7, #14]
1a001e8a:	e008      	b.n	1a001e9e <Chip_TIMER_GetClockIndex+0x36>
1a001e8c:	687b      	ldr	r3, [r7, #4]
1a001e8e:	4a09      	ldr	r2, [pc, #36]	; (1a001eb4 <Chip_TIMER_GetClockIndex+0x4c>)
1a001e90:	4293      	cmp	r3, r2
1a001e92:	d102      	bne.n	1a001e9a <Chip_TIMER_GetClockIndex+0x32>
1a001e94:	2385      	movs	r3, #133	; 0x85
1a001e96:	81fb      	strh	r3, [r7, #14]
1a001e98:	e001      	b.n	1a001e9e <Chip_TIMER_GetClockIndex+0x36>
1a001e9a:	2384      	movs	r3, #132	; 0x84
1a001e9c:	81fb      	strh	r3, [r7, #14]
1a001e9e:	89fb      	ldrh	r3, [r7, #14]
1a001ea0:	4618      	mov	r0, r3
1a001ea2:	3714      	adds	r7, #20
1a001ea4:	46bd      	mov	sp, r7
1a001ea6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001eaa:	4770      	bx	lr
1a001eac:	400c4000 	.word	0x400c4000
1a001eb0:	400c3000 	.word	0x400c3000
1a001eb4:	40085000 	.word	0x40085000

1a001eb8 <Chip_TIMER_Init>:
1a001eb8:	b580      	push	{r7, lr}
1a001eba:	b082      	sub	sp, #8
1a001ebc:	af00      	add	r7, sp, #0
1a001ebe:	6078      	str	r0, [r7, #4]
1a001ec0:	6878      	ldr	r0, [r7, #4]
1a001ec2:	f7ff ffd1 	bl	1a001e68 <Chip_TIMER_GetClockIndex>
1a001ec6:	4603      	mov	r3, r0
1a001ec8:	4618      	mov	r0, r3
1a001eca:	f7ff ff43 	bl	1a001d54 <Chip_Clock_Enable>
1a001ece:	bf00      	nop
1a001ed0:	3708      	adds	r7, #8
1a001ed2:	46bd      	mov	sp, r7
1a001ed4:	bd80      	pop	{r7, pc}
1a001ed6:	Address 0x000000001a001ed6 is out of bounds.


1a001ed8 <memcpy>:
1a001ed8:	4684      	mov	ip, r0
1a001eda:	ea41 0300 	orr.w	r3, r1, r0
1a001ede:	f013 0303 	ands.w	r3, r3, #3
1a001ee2:	d16d      	bne.n	1a001fc0 <memcpy+0xe8>
1a001ee4:	3a40      	subs	r2, #64	; 0x40
1a001ee6:	d341      	bcc.n	1a001f6c <memcpy+0x94>
1a001ee8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001eec:	f840 3b04 	str.w	r3, [r0], #4
1a001ef0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ef4:	f840 3b04 	str.w	r3, [r0], #4
1a001ef8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001efc:	f840 3b04 	str.w	r3, [r0], #4
1a001f00:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f04:	f840 3b04 	str.w	r3, [r0], #4
1a001f08:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f0c:	f840 3b04 	str.w	r3, [r0], #4
1a001f10:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f14:	f840 3b04 	str.w	r3, [r0], #4
1a001f18:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f1c:	f840 3b04 	str.w	r3, [r0], #4
1a001f20:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f24:	f840 3b04 	str.w	r3, [r0], #4
1a001f28:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f2c:	f840 3b04 	str.w	r3, [r0], #4
1a001f30:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f34:	f840 3b04 	str.w	r3, [r0], #4
1a001f38:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f3c:	f840 3b04 	str.w	r3, [r0], #4
1a001f40:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f44:	f840 3b04 	str.w	r3, [r0], #4
1a001f48:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f4c:	f840 3b04 	str.w	r3, [r0], #4
1a001f50:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f54:	f840 3b04 	str.w	r3, [r0], #4
1a001f58:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f5c:	f840 3b04 	str.w	r3, [r0], #4
1a001f60:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f64:	f840 3b04 	str.w	r3, [r0], #4
1a001f68:	3a40      	subs	r2, #64	; 0x40
1a001f6a:	d2bd      	bcs.n	1a001ee8 <memcpy+0x10>
1a001f6c:	3230      	adds	r2, #48	; 0x30
1a001f6e:	d311      	bcc.n	1a001f94 <memcpy+0xbc>
1a001f70:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f74:	f840 3b04 	str.w	r3, [r0], #4
1a001f78:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f7c:	f840 3b04 	str.w	r3, [r0], #4
1a001f80:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f84:	f840 3b04 	str.w	r3, [r0], #4
1a001f88:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f8c:	f840 3b04 	str.w	r3, [r0], #4
1a001f90:	3a10      	subs	r2, #16
1a001f92:	d2ed      	bcs.n	1a001f70 <memcpy+0x98>
1a001f94:	320c      	adds	r2, #12
1a001f96:	d305      	bcc.n	1a001fa4 <memcpy+0xcc>
1a001f98:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f9c:	f840 3b04 	str.w	r3, [r0], #4
1a001fa0:	3a04      	subs	r2, #4
1a001fa2:	d2f9      	bcs.n	1a001f98 <memcpy+0xc0>
1a001fa4:	3204      	adds	r2, #4
1a001fa6:	d008      	beq.n	1a001fba <memcpy+0xe2>
1a001fa8:	07d2      	lsls	r2, r2, #31
1a001faa:	bf1c      	itt	ne
1a001fac:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a001fb0:	f800 3b01 	strbne.w	r3, [r0], #1
1a001fb4:	d301      	bcc.n	1a001fba <memcpy+0xe2>
1a001fb6:	880b      	ldrh	r3, [r1, #0]
1a001fb8:	8003      	strh	r3, [r0, #0]
1a001fba:	4660      	mov	r0, ip
1a001fbc:	4770      	bx	lr
1a001fbe:	bf00      	nop
1a001fc0:	2a08      	cmp	r2, #8
1a001fc2:	d313      	bcc.n	1a001fec <memcpy+0x114>
1a001fc4:	078b      	lsls	r3, r1, #30
1a001fc6:	d08d      	beq.n	1a001ee4 <memcpy+0xc>
1a001fc8:	f010 0303 	ands.w	r3, r0, #3
1a001fcc:	d08a      	beq.n	1a001ee4 <memcpy+0xc>
1a001fce:	f1c3 0304 	rsb	r3, r3, #4
1a001fd2:	1ad2      	subs	r2, r2, r3
1a001fd4:	07db      	lsls	r3, r3, #31
1a001fd6:	bf1c      	itt	ne
1a001fd8:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a001fdc:	f800 3b01 	strbne.w	r3, [r0], #1
1a001fe0:	d380      	bcc.n	1a001ee4 <memcpy+0xc>
1a001fe2:	f831 3b02 	ldrh.w	r3, [r1], #2
1a001fe6:	f820 3b02 	strh.w	r3, [r0], #2
1a001fea:	e77b      	b.n	1a001ee4 <memcpy+0xc>
1a001fec:	3a04      	subs	r2, #4
1a001fee:	d3d9      	bcc.n	1a001fa4 <memcpy+0xcc>
1a001ff0:	3a01      	subs	r2, #1
1a001ff2:	f811 3b01 	ldrb.w	r3, [r1], #1
1a001ff6:	f800 3b01 	strb.w	r3, [r0], #1
1a001ffa:	d2f9      	bcs.n	1a001ff0 <memcpy+0x118>
1a001ffc:	780b      	ldrb	r3, [r1, #0]
1a001ffe:	7003      	strb	r3, [r0, #0]
1a002000:	784b      	ldrb	r3, [r1, #1]
1a002002:	7043      	strb	r3, [r0, #1]
1a002004:	788b      	ldrb	r3, [r1, #2]
1a002006:	7083      	strb	r3, [r0, #2]
1a002008:	4660      	mov	r0, ip
1a00200a:	4770      	bx	lr

1a00200c <ExtRateIn>:
1a00200c:	0000 0000                                   ....

1a002010 <OscRateIn>:
1a002010:	1b00 00b7                                   ....

1a002014 <leds>:
1a002014:	0002 0005 0014 0000 0000 0a02 0e00 0010     ................
1a002024:	0000 0000 0b02 0b01 0010 0000 0000 0c02     ................
1a002034:	0c01 0010 0000 0000 0102 0105 0014 0000     ................
1a002044:	0000 0202 0205 0014 0000 0000               ............

1a002050 <InitClkStates>:
1a002050:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a002060:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a002070:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a002080:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a002090:	111a 0001 111b 0001                         ........

1a002098 <UART_PClock>:
1a002098:	0081 0082 00a1 00a2                         ........

1a0020a0 <UART_BClock>:
1a0020a0:	01c2 01a2 0182 0162                         ......b.

1a0020a8 <periph_to_base>:
1a0020a8:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a0020b8:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a0020c8:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a0020d8:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a0020e8:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a0020f8:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a002108:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a002118:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a002120 <_init>:
1a002120:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002122:	bf00      	nop

Disassembly of section .fini:

1a002124 <_fini>:
1a002124:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002126:	bf00      	nop
