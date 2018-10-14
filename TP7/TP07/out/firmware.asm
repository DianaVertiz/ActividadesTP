
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
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a d5 04 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a db 01 00 1a b9 04 00 1a db 01 00 1a     ................
1a0000cc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a002300 	.word	0x1a002300
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000

1a000120 <__bss_section_table_>:
1a000120:	10000000 	.word	0x10000000
1a000124:	0000030c 	.word	0x0000030c

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
1a000430:	f000 f860 	bl	1a0004f4 <main>
1a000434:	e7fe      	b.n	1a000434 <ResetISR+0xa0>
1a000436:	bf00      	nop
1a000438:	40053100 	.word	0x40053100
1a00043c:	10df1000 	.word	0x10df1000
1a000440:	01dff7ff 	.word	0x01dff7ff
1a000444:	e000e280 	.word	0xe000e280
1a000448:	1a000114 	.word	0x1a000114
1a00044c:	1a000120 	.word	0x1a000120
1a000450:	1a000128 	.word	0x1a000128

1a000454 <Chip_PININT_ClearIntStatus>:
1a000454:	b480      	push	{r7}
1a000456:	b083      	sub	sp, #12
1a000458:	af00      	add	r7, sp, #0
1a00045a:	6078      	str	r0, [r7, #4]
1a00045c:	6039      	str	r1, [r7, #0]
1a00045e:	687b      	ldr	r3, [r7, #4]
1a000460:	683a      	ldr	r2, [r7, #0]
1a000462:	625a      	str	r2, [r3, #36]	; 0x24
1a000464:	bf00      	nop
1a000466:	370c      	adds	r7, #12
1a000468:	46bd      	mov	sp, r7
1a00046a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00046e:	4770      	bx	lr

1a000470 <StopWatch_Elapsed>:
1a000470:	b580      	push	{r7, lr}
1a000472:	b082      	sub	sp, #8
1a000474:	af00      	add	r7, sp, #0
1a000476:	6078      	str	r0, [r7, #4]
1a000478:	f000 ff42 	bl	1a001300 <StopWatch_Start>
1a00047c:	4602      	mov	r2, r0
1a00047e:	687b      	ldr	r3, [r7, #4]
1a000480:	1ad3      	subs	r3, r2, r3
1a000482:	4618      	mov	r0, r3
1a000484:	3708      	adds	r7, #8
1a000486:	46bd      	mov	sp, r7
1a000488:	bd80      	pop	{r7, pc}

1a00048a <StopWatch_DelayMs>:
1a00048a:	b580      	push	{r7, lr}
1a00048c:	b084      	sub	sp, #16
1a00048e:	af00      	add	r7, sp, #0
1a000490:	6078      	str	r0, [r7, #4]
1a000492:	6878      	ldr	r0, [r7, #4]
1a000494:	f000 ff3e 	bl	1a001314 <StopWatch_MsToTicks>
1a000498:	60f8      	str	r0, [r7, #12]
1a00049a:	f000 ff31 	bl	1a001300 <StopWatch_Start>
1a00049e:	60b8      	str	r0, [r7, #8]
1a0004a0:	bf00      	nop
1a0004a2:	68b8      	ldr	r0, [r7, #8]
1a0004a4:	f7ff ffe4 	bl	1a000470 <StopWatch_Elapsed>
1a0004a8:	4602      	mov	r2, r0
1a0004aa:	68fb      	ldr	r3, [r7, #12]
1a0004ac:	4293      	cmp	r3, r2
1a0004ae:	d8f8      	bhi.n	1a0004a2 <StopWatch_DelayMs+0x18>
1a0004b0:	bf00      	nop
1a0004b2:	3710      	adds	r7, #16
1a0004b4:	46bd      	mov	sp, r7
1a0004b6:	bd80      	pop	{r7, pc}

1a0004b8 <GPIO1_IRQHandler>:
1a0004b8:	b580      	push	{r7, lr}
1a0004ba:	af00      	add	r7, sp, #0
1a0004bc:	2102      	movs	r1, #2
1a0004be:	4804      	ldr	r0, [pc, #16]	; (1a0004d0 <GPIO1_IRQHandler+0x18>)
1a0004c0:	f7ff ffc8 	bl	1a000454 <Chip_PININT_ClearIntStatus>
1a0004c4:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a0004c8:	f7ff ffdf 	bl	1a00048a <StopWatch_DelayMs>
1a0004cc:	bf00      	nop
1a0004ce:	bd80      	pop	{r7, pc}
1a0004d0:	40087000 	.word	0x40087000

1a0004d4 <UART2_IRQHandler>:
1a0004d4:	b580      	push	{r7, lr}
1a0004d6:	af00      	add	r7, sp, #0
1a0004d8:	4a03      	ldr	r2, [pc, #12]	; (1a0004e8 <UART2_IRQHandler+0x14>)
1a0004da:	4904      	ldr	r1, [pc, #16]	; (1a0004ec <UART2_IRQHandler+0x18>)
1a0004dc:	4804      	ldr	r0, [pc, #16]	; (1a0004f0 <UART2_IRQHandler+0x1c>)
1a0004de:	f000 fede 	bl	1a00129e <Chip_UART_IRQRBHandler>
1a0004e2:	bf00      	nop
1a0004e4:	bd80      	pop	{r7, pc}
1a0004e6:	bf00      	nop
1a0004e8:	100000e4 	.word	0x100000e4
1a0004ec:	100001f4 	.word	0x100001f4
1a0004f0:	400c1000 	.word	0x400c1000

1a0004f4 <main>:
1a0004f4:	b580      	push	{r7, lr}
1a0004f6:	b082      	sub	sp, #8
1a0004f8:	af00      	add	r7, sp, #0
1a0004fa:	f000 f9ca 	bl	1a000892 <inicializar_sistema>
1a0004fe:	f000 f9d3 	bl	1a0008a8 <inicializar_leds>
1a000502:	f000 fa35 	bl	1a000970 <inicializar_teclado>
1a000506:	f000 fabd 	bl	1a000a84 <init_interrupciones>
1a00050a:	f000 fa7b 	bl	1a000a04 <inicializar_USART>
1a00050e:	f000 fb4f 	bl	1a000bb0 <configurar_SysTick>
1a000512:	2300      	movs	r3, #0
1a000514:	71fb      	strb	r3, [r7, #7]
1a000516:	4802      	ldr	r0, [pc, #8]	; (1a000520 <main+0x2c>)
1a000518:	f000 fb34 	bl	1a000b84 <printRB>
1a00051c:	bf30      	wfi
1a00051e:	e7fd      	b.n	1a00051c <main+0x28>
1a000520:	1a00219c 	.word	0x1a00219c

1a000524 <NVIC_EnableIRQ>:
1a000524:	b480      	push	{r7}
1a000526:	b083      	sub	sp, #12
1a000528:	af00      	add	r7, sp, #0
1a00052a:	4603      	mov	r3, r0
1a00052c:	71fb      	strb	r3, [r7, #7]
1a00052e:	79fb      	ldrb	r3, [r7, #7]
1a000530:	f003 031f 	and.w	r3, r3, #31
1a000534:	2201      	movs	r2, #1
1a000536:	fa02 f103 	lsl.w	r1, r2, r3
1a00053a:	4a06      	ldr	r2, [pc, #24]	; (1a000554 <NVIC_EnableIRQ+0x30>)
1a00053c:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000540:	095b      	lsrs	r3, r3, #5
1a000542:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000546:	bf00      	nop
1a000548:	370c      	adds	r7, #12
1a00054a:	46bd      	mov	sp, r7
1a00054c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000550:	4770      	bx	lr
1a000552:	bf00      	nop
1a000554:	e000e100 	.word	0xe000e100

1a000558 <NVIC_ClearPendingIRQ>:
1a000558:	b480      	push	{r7}
1a00055a:	b083      	sub	sp, #12
1a00055c:	af00      	add	r7, sp, #0
1a00055e:	4603      	mov	r3, r0
1a000560:	71fb      	strb	r3, [r7, #7]
1a000562:	79fb      	ldrb	r3, [r7, #7]
1a000564:	f003 031f 	and.w	r3, r3, #31
1a000568:	2201      	movs	r2, #1
1a00056a:	fa02 f103 	lsl.w	r1, r2, r3
1a00056e:	4a06      	ldr	r2, [pc, #24]	; (1a000588 <NVIC_ClearPendingIRQ+0x30>)
1a000570:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000574:	095b      	lsrs	r3, r3, #5
1a000576:	3360      	adds	r3, #96	; 0x60
1a000578:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a00057c:	bf00      	nop
1a00057e:	370c      	adds	r7, #12
1a000580:	46bd      	mov	sp, r7
1a000582:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000586:	4770      	bx	lr
1a000588:	e000e100 	.word	0xe000e100

1a00058c <NVIC_SetPriority>:
1a00058c:	b480      	push	{r7}
1a00058e:	b083      	sub	sp, #12
1a000590:	af00      	add	r7, sp, #0
1a000592:	4603      	mov	r3, r0
1a000594:	6039      	str	r1, [r7, #0]
1a000596:	71fb      	strb	r3, [r7, #7]
1a000598:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a00059c:	2b00      	cmp	r3, #0
1a00059e:	da0b      	bge.n	1a0005b8 <NVIC_SetPriority+0x2c>
1a0005a0:	683b      	ldr	r3, [r7, #0]
1a0005a2:	b2da      	uxtb	r2, r3
1a0005a4:	490c      	ldr	r1, [pc, #48]	; (1a0005d8 <NVIC_SetPriority+0x4c>)
1a0005a6:	79fb      	ldrb	r3, [r7, #7]
1a0005a8:	f003 030f 	and.w	r3, r3, #15
1a0005ac:	3b04      	subs	r3, #4
1a0005ae:	0152      	lsls	r2, r2, #5
1a0005b0:	b2d2      	uxtb	r2, r2
1a0005b2:	440b      	add	r3, r1
1a0005b4:	761a      	strb	r2, [r3, #24]
1a0005b6:	e009      	b.n	1a0005cc <NVIC_SetPriority+0x40>
1a0005b8:	683b      	ldr	r3, [r7, #0]
1a0005ba:	b2da      	uxtb	r2, r3
1a0005bc:	4907      	ldr	r1, [pc, #28]	; (1a0005dc <NVIC_SetPriority+0x50>)
1a0005be:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0005c2:	0152      	lsls	r2, r2, #5
1a0005c4:	b2d2      	uxtb	r2, r2
1a0005c6:	440b      	add	r3, r1
1a0005c8:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a0005cc:	bf00      	nop
1a0005ce:	370c      	adds	r7, #12
1a0005d0:	46bd      	mov	sp, r7
1a0005d2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005d6:	4770      	bx	lr
1a0005d8:	e000ed00 	.word	0xe000ed00
1a0005dc:	e000e100 	.word	0xe000e100

1a0005e0 <SysTick_Config>:
1a0005e0:	b580      	push	{r7, lr}
1a0005e2:	b082      	sub	sp, #8
1a0005e4:	af00      	add	r7, sp, #0
1a0005e6:	6078      	str	r0, [r7, #4]
1a0005e8:	687b      	ldr	r3, [r7, #4]
1a0005ea:	3b01      	subs	r3, #1
1a0005ec:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a0005f0:	d301      	bcc.n	1a0005f6 <SysTick_Config+0x16>
1a0005f2:	2301      	movs	r3, #1
1a0005f4:	e00f      	b.n	1a000616 <SysTick_Config+0x36>
1a0005f6:	4a0a      	ldr	r2, [pc, #40]	; (1a000620 <SysTick_Config+0x40>)
1a0005f8:	687b      	ldr	r3, [r7, #4]
1a0005fa:	3b01      	subs	r3, #1
1a0005fc:	6053      	str	r3, [r2, #4]
1a0005fe:	2107      	movs	r1, #7
1a000600:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a000604:	f7ff ffc2 	bl	1a00058c <NVIC_SetPriority>
1a000608:	4b05      	ldr	r3, [pc, #20]	; (1a000620 <SysTick_Config+0x40>)
1a00060a:	2200      	movs	r2, #0
1a00060c:	609a      	str	r2, [r3, #8]
1a00060e:	4b04      	ldr	r3, [pc, #16]	; (1a000620 <SysTick_Config+0x40>)
1a000610:	2207      	movs	r2, #7
1a000612:	601a      	str	r2, [r3, #0]
1a000614:	2300      	movs	r3, #0
1a000616:	4618      	mov	r0, r3
1a000618:	3708      	adds	r7, #8
1a00061a:	46bd      	mov	sp, r7
1a00061c:	bd80      	pop	{r7, pc}
1a00061e:	bf00      	nop
1a000620:	e000e010 	.word	0xe000e010

1a000624 <Chip_SCU_PinMuxSet>:
1a000624:	b480      	push	{r7}
1a000626:	b083      	sub	sp, #12
1a000628:	af00      	add	r7, sp, #0
1a00062a:	4603      	mov	r3, r0
1a00062c:	71fb      	strb	r3, [r7, #7]
1a00062e:	460b      	mov	r3, r1
1a000630:	71bb      	strb	r3, [r7, #6]
1a000632:	4613      	mov	r3, r2
1a000634:	80bb      	strh	r3, [r7, #4]
1a000636:	4807      	ldr	r0, [pc, #28]	; (1a000654 <Chip_SCU_PinMuxSet+0x30>)
1a000638:	79f9      	ldrb	r1, [r7, #7]
1a00063a:	79bb      	ldrb	r3, [r7, #6]
1a00063c:	88ba      	ldrh	r2, [r7, #4]
1a00063e:	0149      	lsls	r1, r1, #5
1a000640:	440b      	add	r3, r1
1a000642:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a000646:	bf00      	nop
1a000648:	370c      	adds	r7, #12
1a00064a:	46bd      	mov	sp, r7
1a00064c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000650:	4770      	bx	lr
1a000652:	bf00      	nop
1a000654:	40086000 	.word	0x40086000

1a000658 <Chip_SCU_PinMux>:
1a000658:	b590      	push	{r4, r7, lr}
1a00065a:	b083      	sub	sp, #12
1a00065c:	af00      	add	r7, sp, #0
1a00065e:	4604      	mov	r4, r0
1a000660:	4608      	mov	r0, r1
1a000662:	4611      	mov	r1, r2
1a000664:	461a      	mov	r2, r3
1a000666:	4623      	mov	r3, r4
1a000668:	71fb      	strb	r3, [r7, #7]
1a00066a:	4603      	mov	r3, r0
1a00066c:	71bb      	strb	r3, [r7, #6]
1a00066e:	460b      	mov	r3, r1
1a000670:	80bb      	strh	r3, [r7, #4]
1a000672:	4613      	mov	r3, r2
1a000674:	70fb      	strb	r3, [r7, #3]
1a000676:	78fb      	ldrb	r3, [r7, #3]
1a000678:	b29a      	uxth	r2, r3
1a00067a:	88bb      	ldrh	r3, [r7, #4]
1a00067c:	4313      	orrs	r3, r2
1a00067e:	b29a      	uxth	r2, r3
1a000680:	79b9      	ldrb	r1, [r7, #6]
1a000682:	79fb      	ldrb	r3, [r7, #7]
1a000684:	4618      	mov	r0, r3
1a000686:	f7ff ffcd 	bl	1a000624 <Chip_SCU_PinMuxSet>
1a00068a:	bf00      	nop
1a00068c:	370c      	adds	r7, #12
1a00068e:	46bd      	mov	sp, r7
1a000690:	bd90      	pop	{r4, r7, pc}
1a000692:	Address 0x000000001a000692 is out of bounds.


1a000694 <Chip_SCU_GPIOIntPinSel>:
1a000694:	b480      	push	{r7}
1a000696:	b085      	sub	sp, #20
1a000698:	af00      	add	r7, sp, #0
1a00069a:	4603      	mov	r3, r0
1a00069c:	71fb      	strb	r3, [r7, #7]
1a00069e:	460b      	mov	r3, r1
1a0006a0:	71bb      	strb	r3, [r7, #6]
1a0006a2:	4613      	mov	r3, r2
1a0006a4:	717b      	strb	r3, [r7, #5]
1a0006a6:	79fb      	ldrb	r3, [r7, #7]
1a0006a8:	00db      	lsls	r3, r3, #3
1a0006aa:	f003 0318 	and.w	r3, r3, #24
1a0006ae:	60fb      	str	r3, [r7, #12]
1a0006b0:	79bb      	ldrb	r3, [r7, #6]
1a0006b2:	015b      	lsls	r3, r3, #5
1a0006b4:	b2da      	uxtb	r2, r3
1a0006b6:	797b      	ldrb	r3, [r7, #5]
1a0006b8:	f003 031f 	and.w	r3, r3, #31
1a0006bc:	431a      	orrs	r2, r3
1a0006be:	68fb      	ldr	r3, [r7, #12]
1a0006c0:	fa02 f303 	lsl.w	r3, r2, r3
1a0006c4:	60bb      	str	r3, [r7, #8]
1a0006c6:	4a0f      	ldr	r2, [pc, #60]	; (1a000704 <Chip_SCU_GPIOIntPinSel+0x70>)
1a0006c8:	79fb      	ldrb	r3, [r7, #7]
1a0006ca:	089b      	lsrs	r3, r3, #2
1a0006cc:	b2db      	uxtb	r3, r3
1a0006ce:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a0006d2:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a0006d6:	21ff      	movs	r1, #255	; 0xff
1a0006d8:	68fa      	ldr	r2, [r7, #12]
1a0006da:	fa01 f202 	lsl.w	r2, r1, r2
1a0006de:	43d2      	mvns	r2, r2
1a0006e0:	401a      	ands	r2, r3
1a0006e2:	4908      	ldr	r1, [pc, #32]	; (1a000704 <Chip_SCU_GPIOIntPinSel+0x70>)
1a0006e4:	79fb      	ldrb	r3, [r7, #7]
1a0006e6:	089b      	lsrs	r3, r3, #2
1a0006e8:	b2db      	uxtb	r3, r3
1a0006ea:	4618      	mov	r0, r3
1a0006ec:	68bb      	ldr	r3, [r7, #8]
1a0006ee:	431a      	orrs	r2, r3
1a0006f0:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a0006f4:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a0006f8:	bf00      	nop
1a0006fa:	3714      	adds	r7, #20
1a0006fc:	46bd      	mov	sp, r7
1a0006fe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000702:	4770      	bx	lr
1a000704:	40086000 	.word	0x40086000

1a000708 <Chip_GPIO_SetPinDIROutput>:
1a000708:	b480      	push	{r7}
1a00070a:	b083      	sub	sp, #12
1a00070c:	af00      	add	r7, sp, #0
1a00070e:	6078      	str	r0, [r7, #4]
1a000710:	460b      	mov	r3, r1
1a000712:	70fb      	strb	r3, [r7, #3]
1a000714:	4613      	mov	r3, r2
1a000716:	70bb      	strb	r3, [r7, #2]
1a000718:	78fa      	ldrb	r2, [r7, #3]
1a00071a:	687b      	ldr	r3, [r7, #4]
1a00071c:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000720:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000724:	78bb      	ldrb	r3, [r7, #2]
1a000726:	2201      	movs	r2, #1
1a000728:	fa02 f303 	lsl.w	r3, r2, r3
1a00072c:	78fa      	ldrb	r2, [r7, #3]
1a00072e:	4319      	orrs	r1, r3
1a000730:	687b      	ldr	r3, [r7, #4]
1a000732:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000736:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a00073a:	bf00      	nop
1a00073c:	370c      	adds	r7, #12
1a00073e:	46bd      	mov	sp, r7
1a000740:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000744:	4770      	bx	lr

1a000746 <Chip_GPIO_SetPinDIRInput>:
1a000746:	b480      	push	{r7}
1a000748:	b083      	sub	sp, #12
1a00074a:	af00      	add	r7, sp, #0
1a00074c:	6078      	str	r0, [r7, #4]
1a00074e:	460b      	mov	r3, r1
1a000750:	70fb      	strb	r3, [r7, #3]
1a000752:	4613      	mov	r3, r2
1a000754:	70bb      	strb	r3, [r7, #2]
1a000756:	78fa      	ldrb	r2, [r7, #3]
1a000758:	687b      	ldr	r3, [r7, #4]
1a00075a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a00075e:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000762:	78bb      	ldrb	r3, [r7, #2]
1a000764:	2201      	movs	r2, #1
1a000766:	fa02 f303 	lsl.w	r3, r2, r3
1a00076a:	43db      	mvns	r3, r3
1a00076c:	78fa      	ldrb	r2, [r7, #3]
1a00076e:	4019      	ands	r1, r3
1a000770:	687b      	ldr	r3, [r7, #4]
1a000772:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000776:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a00077a:	bf00      	nop
1a00077c:	370c      	adds	r7, #12
1a00077e:	46bd      	mov	sp, r7
1a000780:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000784:	4770      	bx	lr

1a000786 <Chip_GPIO_SetPortOutLow>:
1a000786:	b480      	push	{r7}
1a000788:	b085      	sub	sp, #20
1a00078a:	af00      	add	r7, sp, #0
1a00078c:	60f8      	str	r0, [r7, #12]
1a00078e:	460b      	mov	r3, r1
1a000790:	607a      	str	r2, [r7, #4]
1a000792:	72fb      	strb	r3, [r7, #11]
1a000794:	7afa      	ldrb	r2, [r7, #11]
1a000796:	68fb      	ldr	r3, [r7, #12]
1a000798:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a00079c:	6879      	ldr	r1, [r7, #4]
1a00079e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0007a2:	bf00      	nop
1a0007a4:	3714      	adds	r7, #20
1a0007a6:	46bd      	mov	sp, r7
1a0007a8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007ac:	4770      	bx	lr

1a0007ae <Chip_PININT_Init>:
1a0007ae:	b480      	push	{r7}
1a0007b0:	b083      	sub	sp, #12
1a0007b2:	af00      	add	r7, sp, #0
1a0007b4:	6078      	str	r0, [r7, #4]
1a0007b6:	bf00      	nop
1a0007b8:	370c      	adds	r7, #12
1a0007ba:	46bd      	mov	sp, r7
1a0007bc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007c0:	4770      	bx	lr

1a0007c2 <Chip_PININT_SetPinModeEdge>:
1a0007c2:	b480      	push	{r7}
1a0007c4:	b083      	sub	sp, #12
1a0007c6:	af00      	add	r7, sp, #0
1a0007c8:	6078      	str	r0, [r7, #4]
1a0007ca:	6039      	str	r1, [r7, #0]
1a0007cc:	687b      	ldr	r3, [r7, #4]
1a0007ce:	681a      	ldr	r2, [r3, #0]
1a0007d0:	683b      	ldr	r3, [r7, #0]
1a0007d2:	43db      	mvns	r3, r3
1a0007d4:	401a      	ands	r2, r3
1a0007d6:	687b      	ldr	r3, [r7, #4]
1a0007d8:	601a      	str	r2, [r3, #0]
1a0007da:	bf00      	nop
1a0007dc:	370c      	adds	r7, #12
1a0007de:	46bd      	mov	sp, r7
1a0007e0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007e4:	4770      	bx	lr

1a0007e6 <Chip_PININT_EnableIntLow>:
1a0007e6:	b480      	push	{r7}
1a0007e8:	b083      	sub	sp, #12
1a0007ea:	af00      	add	r7, sp, #0
1a0007ec:	6078      	str	r0, [r7, #4]
1a0007ee:	6039      	str	r1, [r7, #0]
1a0007f0:	687b      	ldr	r3, [r7, #4]
1a0007f2:	683a      	ldr	r2, [r7, #0]
1a0007f4:	615a      	str	r2, [r3, #20]
1a0007f6:	bf00      	nop
1a0007f8:	370c      	adds	r7, #12
1a0007fa:	46bd      	mov	sp, r7
1a0007fc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000800:	4770      	bx	lr

1a000802 <Chip_PININT_ClearIntStatus>:
1a000802:	b480      	push	{r7}
1a000804:	b083      	sub	sp, #12
1a000806:	af00      	add	r7, sp, #0
1a000808:	6078      	str	r0, [r7, #4]
1a00080a:	6039      	str	r1, [r7, #0]
1a00080c:	687b      	ldr	r3, [r7, #4]
1a00080e:	683a      	ldr	r2, [r7, #0]
1a000810:	625a      	str	r2, [r3, #36]	; 0x24
1a000812:	bf00      	nop
1a000814:	370c      	adds	r7, #12
1a000816:	46bd      	mov	sp, r7
1a000818:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00081c:	4770      	bx	lr

1a00081e <Chip_UART_TXEnable>:
1a00081e:	b480      	push	{r7}
1a000820:	b083      	sub	sp, #12
1a000822:	af00      	add	r7, sp, #0
1a000824:	6078      	str	r0, [r7, #4]
1a000826:	687b      	ldr	r3, [r7, #4]
1a000828:	2201      	movs	r2, #1
1a00082a:	65da      	str	r2, [r3, #92]	; 0x5c
1a00082c:	bf00      	nop
1a00082e:	370c      	adds	r7, #12
1a000830:	46bd      	mov	sp, r7
1a000832:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000836:	4770      	bx	lr

1a000838 <Chip_UART_IntEnable>:
1a000838:	b480      	push	{r7}
1a00083a:	b083      	sub	sp, #12
1a00083c:	af00      	add	r7, sp, #0
1a00083e:	6078      	str	r0, [r7, #4]
1a000840:	6039      	str	r1, [r7, #0]
1a000842:	687b      	ldr	r3, [r7, #4]
1a000844:	685a      	ldr	r2, [r3, #4]
1a000846:	683b      	ldr	r3, [r7, #0]
1a000848:	431a      	orrs	r2, r3
1a00084a:	687b      	ldr	r3, [r7, #4]
1a00084c:	605a      	str	r2, [r3, #4]
1a00084e:	bf00      	nop
1a000850:	370c      	adds	r7, #12
1a000852:	46bd      	mov	sp, r7
1a000854:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000858:	4770      	bx	lr

1a00085a <Chip_UART_SetupFIFOS>:
1a00085a:	b480      	push	{r7}
1a00085c:	b083      	sub	sp, #12
1a00085e:	af00      	add	r7, sp, #0
1a000860:	6078      	str	r0, [r7, #4]
1a000862:	6039      	str	r1, [r7, #0]
1a000864:	687b      	ldr	r3, [r7, #4]
1a000866:	683a      	ldr	r2, [r7, #0]
1a000868:	609a      	str	r2, [r3, #8]
1a00086a:	bf00      	nop
1a00086c:	370c      	adds	r7, #12
1a00086e:	46bd      	mov	sp, r7
1a000870:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000874:	4770      	bx	lr

1a000876 <Chip_UART_ConfigData>:
1a000876:	b480      	push	{r7}
1a000878:	b083      	sub	sp, #12
1a00087a:	af00      	add	r7, sp, #0
1a00087c:	6078      	str	r0, [r7, #4]
1a00087e:	6039      	str	r1, [r7, #0]
1a000880:	687b      	ldr	r3, [r7, #4]
1a000882:	683a      	ldr	r2, [r7, #0]
1a000884:	60da      	str	r2, [r3, #12]
1a000886:	bf00      	nop
1a000888:	370c      	adds	r7, #12
1a00088a:	46bd      	mov	sp, r7
1a00088c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000890:	4770      	bx	lr

1a000892 <inicializar_sistema>:
1a000892:	b580      	push	{r7, lr}
1a000894:	af00      	add	r7, sp, #0
1a000896:	f000 fac3 	bl	1a000e20 <Chip_SetupXtalClocking>
1a00089a:	f001 fb53 	bl	1a001f44 <SystemCoreClockUpdate>
1a00089e:	f000 f99b 	bl	1a000bd8 <fpuInit>
1a0008a2:	bf00      	nop
1a0008a4:	bd80      	pop	{r7, pc}
1a0008a6:	Address 0x000000001a0008a6 is out of bounds.


1a0008a8 <inicializar_leds>:
1a0008a8:	b590      	push	{r4, r7, lr}
1a0008aa:	b083      	sub	sp, #12
1a0008ac:	af00      	add	r7, sp, #0
1a0008ae:	482e      	ldr	r0, [pc, #184]	; (1a000968 <inicializar_leds+0xc0>)
1a0008b0:	f001 fb54 	bl	1a001f5c <Chip_GPIO_Init>
1a0008b4:	2300      	movs	r3, #0
1a0008b6:	71fb      	strb	r3, [r7, #7]
1a0008b8:	e04e      	b.n	1a000958 <inicializar_leds+0xb0>
1a0008ba:	79fa      	ldrb	r2, [r7, #7]
1a0008bc:	492b      	ldr	r1, [pc, #172]	; (1a00096c <inicializar_leds+0xc4>)
1a0008be:	4613      	mov	r3, r2
1a0008c0:	009b      	lsls	r3, r3, #2
1a0008c2:	4413      	add	r3, r2
1a0008c4:	005b      	lsls	r3, r3, #1
1a0008c6:	440b      	add	r3, r1
1a0008c8:	7818      	ldrb	r0, [r3, #0]
1a0008ca:	79fa      	ldrb	r2, [r7, #7]
1a0008cc:	4927      	ldr	r1, [pc, #156]	; (1a00096c <inicializar_leds+0xc4>)
1a0008ce:	4613      	mov	r3, r2
1a0008d0:	009b      	lsls	r3, r3, #2
1a0008d2:	4413      	add	r3, r2
1a0008d4:	005b      	lsls	r3, r3, #1
1a0008d6:	440b      	add	r3, r1
1a0008d8:	3301      	adds	r3, #1
1a0008da:	781c      	ldrb	r4, [r3, #0]
1a0008dc:	79fa      	ldrb	r2, [r7, #7]
1a0008de:	4923      	ldr	r1, [pc, #140]	; (1a00096c <inicializar_leds+0xc4>)
1a0008e0:	4613      	mov	r3, r2
1a0008e2:	009b      	lsls	r3, r3, #2
1a0008e4:	4413      	add	r3, r2
1a0008e6:	005b      	lsls	r3, r3, #1
1a0008e8:	440b      	add	r3, r1
1a0008ea:	3304      	adds	r3, #4
1a0008ec:	881b      	ldrh	r3, [r3, #0]
1a0008ee:	461a      	mov	r2, r3
1a0008f0:	4621      	mov	r1, r4
1a0008f2:	f7ff fe97 	bl	1a000624 <Chip_SCU_PinMuxSet>
1a0008f6:	79fa      	ldrb	r2, [r7, #7]
1a0008f8:	491c      	ldr	r1, [pc, #112]	; (1a00096c <inicializar_leds+0xc4>)
1a0008fa:	4613      	mov	r3, r2
1a0008fc:	009b      	lsls	r3, r3, #2
1a0008fe:	4413      	add	r3, r2
1a000900:	005b      	lsls	r3, r3, #1
1a000902:	440b      	add	r3, r1
1a000904:	3302      	adds	r3, #2
1a000906:	7818      	ldrb	r0, [r3, #0]
1a000908:	79fa      	ldrb	r2, [r7, #7]
1a00090a:	4918      	ldr	r1, [pc, #96]	; (1a00096c <inicializar_leds+0xc4>)
1a00090c:	4613      	mov	r3, r2
1a00090e:	009b      	lsls	r3, r3, #2
1a000910:	4413      	add	r3, r2
1a000912:	005b      	lsls	r3, r3, #1
1a000914:	440b      	add	r3, r1
1a000916:	3303      	adds	r3, #3
1a000918:	781b      	ldrb	r3, [r3, #0]
1a00091a:	461a      	mov	r2, r3
1a00091c:	4601      	mov	r1, r0
1a00091e:	4812      	ldr	r0, [pc, #72]	; (1a000968 <inicializar_leds+0xc0>)
1a000920:	f7ff fef2 	bl	1a000708 <Chip_GPIO_SetPinDIROutput>
1a000924:	79fa      	ldrb	r2, [r7, #7]
1a000926:	4911      	ldr	r1, [pc, #68]	; (1a00096c <inicializar_leds+0xc4>)
1a000928:	4613      	mov	r3, r2
1a00092a:	009b      	lsls	r3, r3, #2
1a00092c:	4413      	add	r3, r2
1a00092e:	005b      	lsls	r3, r3, #1
1a000930:	440b      	add	r3, r1
1a000932:	3302      	adds	r3, #2
1a000934:	7818      	ldrb	r0, [r3, #0]
1a000936:	79fa      	ldrb	r2, [r7, #7]
1a000938:	490c      	ldr	r1, [pc, #48]	; (1a00096c <inicializar_leds+0xc4>)
1a00093a:	4613      	mov	r3, r2
1a00093c:	009b      	lsls	r3, r3, #2
1a00093e:	4413      	add	r3, r2
1a000940:	005b      	lsls	r3, r3, #1
1a000942:	440b      	add	r3, r1
1a000944:	3303      	adds	r3, #3
1a000946:	781b      	ldrb	r3, [r3, #0]
1a000948:	461a      	mov	r2, r3
1a00094a:	4601      	mov	r1, r0
1a00094c:	4806      	ldr	r0, [pc, #24]	; (1a000968 <inicializar_leds+0xc0>)
1a00094e:	f7ff ff1a 	bl	1a000786 <Chip_GPIO_SetPortOutLow>
1a000952:	79fb      	ldrb	r3, [r7, #7]
1a000954:	3301      	adds	r3, #1
1a000956:	71fb      	strb	r3, [r7, #7]
1a000958:	79fb      	ldrb	r3, [r7, #7]
1a00095a:	2b05      	cmp	r3, #5
1a00095c:	d9ad      	bls.n	1a0008ba <inicializar_leds+0x12>
1a00095e:	bf00      	nop
1a000960:	370c      	adds	r7, #12
1a000962:	46bd      	mov	sp, r7
1a000964:	bd90      	pop	{r4, r7, pc}
1a000966:	bf00      	nop
1a000968:	400f4000 	.word	0x400f4000
1a00096c:	1a0021c4 	.word	0x1a0021c4

1a000970 <inicializar_teclado>:
1a000970:	b590      	push	{r4, r7, lr}
1a000972:	b083      	sub	sp, #12
1a000974:	af00      	add	r7, sp, #0
1a000976:	2300      	movs	r3, #0
1a000978:	71fb      	strb	r3, [r7, #7]
1a00097a:	e037      	b.n	1a0009ec <inicializar_teclado+0x7c>
1a00097c:	79fa      	ldrb	r2, [r7, #7]
1a00097e:	491f      	ldr	r1, [pc, #124]	; (1a0009fc <inicializar_teclado+0x8c>)
1a000980:	4613      	mov	r3, r2
1a000982:	009b      	lsls	r3, r3, #2
1a000984:	4413      	add	r3, r2
1a000986:	005b      	lsls	r3, r3, #1
1a000988:	440b      	add	r3, r1
1a00098a:	7818      	ldrb	r0, [r3, #0]
1a00098c:	79fa      	ldrb	r2, [r7, #7]
1a00098e:	491b      	ldr	r1, [pc, #108]	; (1a0009fc <inicializar_teclado+0x8c>)
1a000990:	4613      	mov	r3, r2
1a000992:	009b      	lsls	r3, r3, #2
1a000994:	4413      	add	r3, r2
1a000996:	005b      	lsls	r3, r3, #1
1a000998:	440b      	add	r3, r1
1a00099a:	3301      	adds	r3, #1
1a00099c:	781c      	ldrb	r4, [r3, #0]
1a00099e:	79fa      	ldrb	r2, [r7, #7]
1a0009a0:	4916      	ldr	r1, [pc, #88]	; (1a0009fc <inicializar_teclado+0x8c>)
1a0009a2:	4613      	mov	r3, r2
1a0009a4:	009b      	lsls	r3, r3, #2
1a0009a6:	4413      	add	r3, r2
1a0009a8:	005b      	lsls	r3, r3, #1
1a0009aa:	440b      	add	r3, r1
1a0009ac:	3304      	adds	r3, #4
1a0009ae:	881b      	ldrh	r3, [r3, #0]
1a0009b0:	461a      	mov	r2, r3
1a0009b2:	4621      	mov	r1, r4
1a0009b4:	f7ff fe36 	bl	1a000624 <Chip_SCU_PinMuxSet>
1a0009b8:	79fa      	ldrb	r2, [r7, #7]
1a0009ba:	4910      	ldr	r1, [pc, #64]	; (1a0009fc <inicializar_teclado+0x8c>)
1a0009bc:	4613      	mov	r3, r2
1a0009be:	009b      	lsls	r3, r3, #2
1a0009c0:	4413      	add	r3, r2
1a0009c2:	005b      	lsls	r3, r3, #1
1a0009c4:	440b      	add	r3, r1
1a0009c6:	3302      	adds	r3, #2
1a0009c8:	7818      	ldrb	r0, [r3, #0]
1a0009ca:	79fa      	ldrb	r2, [r7, #7]
1a0009cc:	490b      	ldr	r1, [pc, #44]	; (1a0009fc <inicializar_teclado+0x8c>)
1a0009ce:	4613      	mov	r3, r2
1a0009d0:	009b      	lsls	r3, r3, #2
1a0009d2:	4413      	add	r3, r2
1a0009d4:	005b      	lsls	r3, r3, #1
1a0009d6:	440b      	add	r3, r1
1a0009d8:	3303      	adds	r3, #3
1a0009da:	781b      	ldrb	r3, [r3, #0]
1a0009dc:	461a      	mov	r2, r3
1a0009de:	4601      	mov	r1, r0
1a0009e0:	4807      	ldr	r0, [pc, #28]	; (1a000a00 <inicializar_teclado+0x90>)
1a0009e2:	f7ff feb0 	bl	1a000746 <Chip_GPIO_SetPinDIRInput>
1a0009e6:	79fb      	ldrb	r3, [r7, #7]
1a0009e8:	3301      	adds	r3, #1
1a0009ea:	71fb      	strb	r3, [r7, #7]
1a0009ec:	79fb      	ldrb	r3, [r7, #7]
1a0009ee:	2b03      	cmp	r3, #3
1a0009f0:	d9c4      	bls.n	1a00097c <inicializar_teclado+0xc>
1a0009f2:	bf00      	nop
1a0009f4:	370c      	adds	r7, #12
1a0009f6:	46bd      	mov	sp, r7
1a0009f8:	bd90      	pop	{r4, r7, pc}
1a0009fa:	bf00      	nop
1a0009fc:	1a002200 	.word	0x1a002200
1a000a00:	400f4000 	.word	0x400f4000

1a000a04 <inicializar_USART>:
1a000a04:	b580      	push	{r7, lr}
1a000a06:	af00      	add	r7, sp, #0
1a000a08:	4819      	ldr	r0, [pc, #100]	; (1a000a70 <inicializar_USART+0x6c>)
1a000a0a:	f000 fb55 	bl	1a0010b8 <Chip_UART_Init>
1a000a0e:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a000a12:	4817      	ldr	r0, [pc, #92]	; (1a000a70 <inicializar_USART+0x6c>)
1a000a14:	f000 fb94 	bl	1a001140 <Chip_UART_SetBaud>
1a000a18:	2103      	movs	r1, #3
1a000a1a:	4815      	ldr	r0, [pc, #84]	; (1a000a70 <inicializar_USART+0x6c>)
1a000a1c:	f7ff ff2b 	bl	1a000876 <Chip_UART_ConfigData>
1a000a20:	4813      	ldr	r0, [pc, #76]	; (1a000a70 <inicializar_USART+0x6c>)
1a000a22:	f7ff fefc 	bl	1a00081e <Chip_UART_TXEnable>
1a000a26:	21c7      	movs	r1, #199	; 0xc7
1a000a28:	4811      	ldr	r0, [pc, #68]	; (1a000a70 <inicializar_USART+0x6c>)
1a000a2a:	f7ff ff16 	bl	1a00085a <Chip_UART_SetupFIFOS>
1a000a2e:	2107      	movs	r1, #7
1a000a30:	480f      	ldr	r0, [pc, #60]	; (1a000a70 <inicializar_USART+0x6c>)
1a000a32:	f7ff ff01 	bl	1a000838 <Chip_UART_IntEnable>
1a000a36:	2306      	movs	r3, #6
1a000a38:	2218      	movs	r2, #24
1a000a3a:	2101      	movs	r1, #1
1a000a3c:	2007      	movs	r0, #7
1a000a3e:	f7ff fe0b 	bl	1a000658 <Chip_SCU_PinMux>
1a000a42:	2306      	movs	r3, #6
1a000a44:	22d0      	movs	r2, #208	; 0xd0
1a000a46:	2102      	movs	r1, #2
1a000a48:	2007      	movs	r0, #7
1a000a4a:	f7ff fe05 	bl	1a000658 <Chip_SCU_PinMux>
1a000a4e:	201a      	movs	r0, #26
1a000a50:	f7ff fd68 	bl	1a000524 <NVIC_EnableIRQ>
1a000a54:	23fa      	movs	r3, #250	; 0xfa
1a000a56:	2201      	movs	r2, #1
1a000a58:	4906      	ldr	r1, [pc, #24]	; (1a000a74 <inicializar_USART+0x70>)
1a000a5a:	4807      	ldr	r0, [pc, #28]	; (1a000a78 <inicializar_USART+0x74>)
1a000a5c:	f000 fcb4 	bl	1a0013c8 <RingBuffer_Init>
1a000a60:	23fa      	movs	r3, #250	; 0xfa
1a000a62:	2201      	movs	r2, #1
1a000a64:	4905      	ldr	r1, [pc, #20]	; (1a000a7c <inicializar_USART+0x78>)
1a000a66:	4806      	ldr	r0, [pc, #24]	; (1a000a80 <inicializar_USART+0x7c>)
1a000a68:	f000 fcae 	bl	1a0013c8 <RingBuffer_Init>
1a000a6c:	bf00      	nop
1a000a6e:	bd80      	pop	{r7, pc}
1a000a70:	400c1000 	.word	0x400c1000
1a000a74:	1000020c 	.word	0x1000020c
1a000a78:	100001f4 	.word	0x100001f4
1a000a7c:	100000f8 	.word	0x100000f8
1a000a80:	100000e4 	.word	0x100000e4

1a000a84 <init_interrupciones>:
1a000a84:	b590      	push	{r4, r7, lr}
1a000a86:	b083      	sub	sp, #12
1a000a88:	af00      	add	r7, sp, #0
1a000a8a:	483c      	ldr	r0, [pc, #240]	; (1a000b7c <init_interrupciones+0xf8>)
1a000a8c:	f7ff fe8f 	bl	1a0007ae <Chip_PININT_Init>
1a000a90:	2300      	movs	r3, #0
1a000a92:	71fb      	strb	r3, [r7, #7]
1a000a94:	e06b      	b.n	1a000b6e <init_interrupciones+0xea>
1a000a96:	79fa      	ldrb	r2, [r7, #7]
1a000a98:	4939      	ldr	r1, [pc, #228]	; (1a000b80 <init_interrupciones+0xfc>)
1a000a9a:	4613      	mov	r3, r2
1a000a9c:	009b      	lsls	r3, r3, #2
1a000a9e:	4413      	add	r3, r2
1a000aa0:	005b      	lsls	r3, r3, #1
1a000aa2:	440b      	add	r3, r1
1a000aa4:	3308      	adds	r3, #8
1a000aa6:	7818      	ldrb	r0, [r3, #0]
1a000aa8:	79fa      	ldrb	r2, [r7, #7]
1a000aaa:	4935      	ldr	r1, [pc, #212]	; (1a000b80 <init_interrupciones+0xfc>)
1a000aac:	4613      	mov	r3, r2
1a000aae:	009b      	lsls	r3, r3, #2
1a000ab0:	4413      	add	r3, r2
1a000ab2:	005b      	lsls	r3, r3, #1
1a000ab4:	440b      	add	r3, r1
1a000ab6:	3302      	adds	r3, #2
1a000ab8:	781c      	ldrb	r4, [r3, #0]
1a000aba:	79fa      	ldrb	r2, [r7, #7]
1a000abc:	4930      	ldr	r1, [pc, #192]	; (1a000b80 <init_interrupciones+0xfc>)
1a000abe:	4613      	mov	r3, r2
1a000ac0:	009b      	lsls	r3, r3, #2
1a000ac2:	4413      	add	r3, r2
1a000ac4:	005b      	lsls	r3, r3, #1
1a000ac6:	440b      	add	r3, r1
1a000ac8:	3303      	adds	r3, #3
1a000aca:	781b      	ldrb	r3, [r3, #0]
1a000acc:	461a      	mov	r2, r3
1a000ace:	4621      	mov	r1, r4
1a000ad0:	f7ff fde0 	bl	1a000694 <Chip_SCU_GPIOIntPinSel>
1a000ad4:	79fa      	ldrb	r2, [r7, #7]
1a000ad6:	492a      	ldr	r1, [pc, #168]	; (1a000b80 <init_interrupciones+0xfc>)
1a000ad8:	4613      	mov	r3, r2
1a000ada:	009b      	lsls	r3, r3, #2
1a000adc:	4413      	add	r3, r2
1a000ade:	005b      	lsls	r3, r3, #1
1a000ae0:	440b      	add	r3, r1
1a000ae2:	3308      	adds	r3, #8
1a000ae4:	781b      	ldrb	r3, [r3, #0]
1a000ae6:	461a      	mov	r2, r3
1a000ae8:	2301      	movs	r3, #1
1a000aea:	4093      	lsls	r3, r2
1a000aec:	4619      	mov	r1, r3
1a000aee:	4823      	ldr	r0, [pc, #140]	; (1a000b7c <init_interrupciones+0xf8>)
1a000af0:	f7ff fe87 	bl	1a000802 <Chip_PININT_ClearIntStatus>
1a000af4:	79fa      	ldrb	r2, [r7, #7]
1a000af6:	4922      	ldr	r1, [pc, #136]	; (1a000b80 <init_interrupciones+0xfc>)
1a000af8:	4613      	mov	r3, r2
1a000afa:	009b      	lsls	r3, r3, #2
1a000afc:	4413      	add	r3, r2
1a000afe:	005b      	lsls	r3, r3, #1
1a000b00:	440b      	add	r3, r1
1a000b02:	3308      	adds	r3, #8
1a000b04:	781b      	ldrb	r3, [r3, #0]
1a000b06:	461a      	mov	r2, r3
1a000b08:	2301      	movs	r3, #1
1a000b0a:	4093      	lsls	r3, r2
1a000b0c:	4619      	mov	r1, r3
1a000b0e:	481b      	ldr	r0, [pc, #108]	; (1a000b7c <init_interrupciones+0xf8>)
1a000b10:	f7ff fe57 	bl	1a0007c2 <Chip_PININT_SetPinModeEdge>
1a000b14:	79fa      	ldrb	r2, [r7, #7]
1a000b16:	491a      	ldr	r1, [pc, #104]	; (1a000b80 <init_interrupciones+0xfc>)
1a000b18:	4613      	mov	r3, r2
1a000b1a:	009b      	lsls	r3, r3, #2
1a000b1c:	4413      	add	r3, r2
1a000b1e:	005b      	lsls	r3, r3, #1
1a000b20:	440b      	add	r3, r1
1a000b22:	3308      	adds	r3, #8
1a000b24:	781b      	ldrb	r3, [r3, #0]
1a000b26:	461a      	mov	r2, r3
1a000b28:	2301      	movs	r3, #1
1a000b2a:	4093      	lsls	r3, r2
1a000b2c:	4619      	mov	r1, r3
1a000b2e:	4813      	ldr	r0, [pc, #76]	; (1a000b7c <init_interrupciones+0xf8>)
1a000b30:	f7ff fe59 	bl	1a0007e6 <Chip_PININT_EnableIntLow>
1a000b34:	79fa      	ldrb	r2, [r7, #7]
1a000b36:	4912      	ldr	r1, [pc, #72]	; (1a000b80 <init_interrupciones+0xfc>)
1a000b38:	4613      	mov	r3, r2
1a000b3a:	009b      	lsls	r3, r3, #2
1a000b3c:	4413      	add	r3, r2
1a000b3e:	005b      	lsls	r3, r3, #1
1a000b40:	440b      	add	r3, r1
1a000b42:	3309      	adds	r3, #9
1a000b44:	781b      	ldrb	r3, [r3, #0]
1a000b46:	b25b      	sxtb	r3, r3
1a000b48:	4618      	mov	r0, r3
1a000b4a:	f7ff fd05 	bl	1a000558 <NVIC_ClearPendingIRQ>
1a000b4e:	79fa      	ldrb	r2, [r7, #7]
1a000b50:	490b      	ldr	r1, [pc, #44]	; (1a000b80 <init_interrupciones+0xfc>)
1a000b52:	4613      	mov	r3, r2
1a000b54:	009b      	lsls	r3, r3, #2
1a000b56:	4413      	add	r3, r2
1a000b58:	005b      	lsls	r3, r3, #1
1a000b5a:	440b      	add	r3, r1
1a000b5c:	3309      	adds	r3, #9
1a000b5e:	781b      	ldrb	r3, [r3, #0]
1a000b60:	b25b      	sxtb	r3, r3
1a000b62:	4618      	mov	r0, r3
1a000b64:	f7ff fcde 	bl	1a000524 <NVIC_EnableIRQ>
1a000b68:	79fb      	ldrb	r3, [r7, #7]
1a000b6a:	3301      	adds	r3, #1
1a000b6c:	71fb      	strb	r3, [r7, #7]
1a000b6e:	79fb      	ldrb	r3, [r7, #7]
1a000b70:	2b03      	cmp	r3, #3
1a000b72:	d990      	bls.n	1a000a96 <init_interrupciones+0x12>
1a000b74:	bf00      	nop
1a000b76:	370c      	adds	r7, #12
1a000b78:	46bd      	mov	sp, r7
1a000b7a:	bd90      	pop	{r4, r7, pc}
1a000b7c:	40087000 	.word	0x40087000
1a000b80:	1a002200 	.word	0x1a002200

1a000b84 <printRB>:
1a000b84:	b580      	push	{r7, lr}
1a000b86:	b082      	sub	sp, #8
1a000b88:	af00      	add	r7, sp, #0
1a000b8a:	6078      	str	r0, [r7, #4]
1a000b8c:	6878      	ldr	r0, [r7, #4]
1a000b8e:	f001 fa97 	bl	1a0020c0 <strlen>
1a000b92:	4603      	mov	r3, r0
1a000b94:	687a      	ldr	r2, [r7, #4]
1a000b96:	4904      	ldr	r1, [pc, #16]	; (1a000ba8 <printRB+0x24>)
1a000b98:	4804      	ldr	r0, [pc, #16]	; (1a000bac <printRB+0x28>)
1a000b9a:	f000 fb50 	bl	1a00123e <Chip_UART_SendRB>
1a000b9e:	bf00      	nop
1a000ba0:	3708      	adds	r7, #8
1a000ba2:	46bd      	mov	sp, r7
1a000ba4:	bd80      	pop	{r7, pc}
1a000ba6:	bf00      	nop
1a000ba8:	100000e4 	.word	0x100000e4
1a000bac:	400c1000 	.word	0x400c1000

1a000bb0 <configurar_SysTick>:
1a000bb0:	b580      	push	{r7, lr}
1a000bb2:	af00      	add	r7, sp, #0
1a000bb4:	4b06      	ldr	r3, [pc, #24]	; (1a000bd0 <configurar_SysTick+0x20>)
1a000bb6:	681b      	ldr	r3, [r3, #0]
1a000bb8:	4a06      	ldr	r2, [pc, #24]	; (1a000bd4 <configurar_SysTick+0x24>)
1a000bba:	fba2 2303 	umull	r2, r3, r2, r3
1a000bbe:	095b      	lsrs	r3, r3, #5
1a000bc0:	4618      	mov	r0, r3
1a000bc2:	f7ff fd0d 	bl	1a0005e0 <SysTick_Config>
1a000bc6:	f001 f9bd 	bl	1a001f44 <SystemCoreClockUpdate>
1a000bca:	bf00      	nop
1a000bcc:	bd80      	pop	{r7, pc}
1a000bce:	bf00      	nop
1a000bd0:	10000308 	.word	0x10000308
1a000bd4:	51eb851f 	.word	0x51eb851f

1a000bd8 <fpuInit>:
1a000bd8:	b480      	push	{r7}
1a000bda:	b089      	sub	sp, #36	; 0x24
1a000bdc:	af00      	add	r7, sp, #0
1a000bde:	4b16      	ldr	r3, [pc, #88]	; (1a000c38 <fpuInit+0x60>)
1a000be0:	61fb      	str	r3, [r7, #28]
1a000be2:	4b16      	ldr	r3, [pc, #88]	; (1a000c3c <fpuInit+0x64>)
1a000be4:	61bb      	str	r3, [r7, #24]
1a000be6:	4b16      	ldr	r3, [pc, #88]	; (1a000c40 <fpuInit+0x68>)
1a000be8:	617b      	str	r3, [r7, #20]
1a000bea:	2300      	movs	r3, #0
1a000bec:	74fb      	strb	r3, [r7, #19]
1a000bee:	69bb      	ldr	r3, [r7, #24]
1a000bf0:	681b      	ldr	r3, [r3, #0]
1a000bf2:	60bb      	str	r3, [r7, #8]
1a000bf4:	697b      	ldr	r3, [r7, #20]
1a000bf6:	681b      	ldr	r3, [r3, #0]
1a000bf8:	607b      	str	r3, [r7, #4]
1a000bfa:	68bb      	ldr	r3, [r7, #8]
1a000bfc:	4a11      	ldr	r2, [pc, #68]	; (1a000c44 <fpuInit+0x6c>)
1a000bfe:	4293      	cmp	r3, r2
1a000c00:	d105      	bne.n	1a000c0e <fpuInit+0x36>
1a000c02:	687b      	ldr	r3, [r7, #4]
1a000c04:	4a10      	ldr	r2, [pc, #64]	; (1a000c48 <fpuInit+0x70>)
1a000c06:	4293      	cmp	r3, r2
1a000c08:	d101      	bne.n	1a000c0e <fpuInit+0x36>
1a000c0a:	2301      	movs	r3, #1
1a000c0c:	e000      	b.n	1a000c10 <fpuInit+0x38>
1a000c0e:	2300      	movs	r3, #0
1a000c10:	74fb      	strb	r3, [r7, #19]
1a000c12:	7cfb      	ldrb	r3, [r7, #19]
1a000c14:	2b00      	cmp	r3, #0
1a000c16:	d009      	beq.n	1a000c2c <fpuInit+0x54>
1a000c18:	69fb      	ldr	r3, [r7, #28]
1a000c1a:	681b      	ldr	r3, [r3, #0]
1a000c1c:	60fb      	str	r3, [r7, #12]
1a000c1e:	68fb      	ldr	r3, [r7, #12]
1a000c20:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a000c24:	60fb      	str	r3, [r7, #12]
1a000c26:	68fa      	ldr	r2, [r7, #12]
1a000c28:	69fb      	ldr	r3, [r7, #28]
1a000c2a:	601a      	str	r2, [r3, #0]
1a000c2c:	bf00      	nop
1a000c2e:	3724      	adds	r7, #36	; 0x24
1a000c30:	46bd      	mov	sp, r7
1a000c32:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c36:	4770      	bx	lr
1a000c38:	e000ed88 	.word	0xe000ed88
1a000c3c:	e000ef40 	.word	0xe000ef40
1a000c40:	e000ef44 	.word	0xe000ef44
1a000c44:	10110021 	.word	0x10110021
1a000c48:	11000011 	.word	0x11000011

1a000c4c <Chip_Clock_DisableMainPLL>:
1a000c4c:	b480      	push	{r7}
1a000c4e:	af00      	add	r7, sp, #0
1a000c50:	4b05      	ldr	r3, [pc, #20]	; (1a000c68 <Chip_Clock_DisableMainPLL+0x1c>)
1a000c52:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a000c54:	4a04      	ldr	r2, [pc, #16]	; (1a000c68 <Chip_Clock_DisableMainPLL+0x1c>)
1a000c56:	f043 0301 	orr.w	r3, r3, #1
1a000c5a:	6453      	str	r3, [r2, #68]	; 0x44
1a000c5c:	bf00      	nop
1a000c5e:	46bd      	mov	sp, r7
1a000c60:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c64:	4770      	bx	lr
1a000c66:	bf00      	nop
1a000c68:	40050000 	.word	0x40050000

1a000c6c <Chip_Clock_SetupMainPLL>:
1a000c6c:	b480      	push	{r7}
1a000c6e:	b083      	sub	sp, #12
1a000c70:	af00      	add	r7, sp, #0
1a000c72:	6078      	str	r0, [r7, #4]
1a000c74:	687b      	ldr	r3, [r7, #4]
1a000c76:	681b      	ldr	r3, [r3, #0]
1a000c78:	461a      	mov	r2, r3
1a000c7a:	687b      	ldr	r3, [r7, #4]
1a000c7c:	791b      	ldrb	r3, [r3, #4]
1a000c7e:	061b      	lsls	r3, r3, #24
1a000c80:	4313      	orrs	r3, r2
1a000c82:	687a      	ldr	r2, [r7, #4]
1a000c84:	6912      	ldr	r2, [r2, #16]
1a000c86:	0412      	lsls	r2, r2, #16
1a000c88:	4313      	orrs	r3, r2
1a000c8a:	687a      	ldr	r2, [r7, #4]
1a000c8c:	6892      	ldr	r2, [r2, #8]
1a000c8e:	0312      	lsls	r2, r2, #12
1a000c90:	4313      	orrs	r3, r2
1a000c92:	687a      	ldr	r2, [r7, #4]
1a000c94:	68d2      	ldr	r2, [r2, #12]
1a000c96:	0212      	lsls	r2, r2, #8
1a000c98:	4313      	orrs	r3, r2
1a000c9a:	4a05      	ldr	r2, [pc, #20]	; (1a000cb0 <Chip_Clock_SetupMainPLL+0x44>)
1a000c9c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a000ca0:	6453      	str	r3, [r2, #68]	; 0x44
1a000ca2:	bf00      	nop
1a000ca4:	370c      	adds	r7, #12
1a000ca6:	46bd      	mov	sp, r7
1a000ca8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cac:	4770      	bx	lr
1a000cae:	bf00      	nop
1a000cb0:	40050000 	.word	0x40050000

1a000cb4 <Chip_Clock_MainPLLLocked>:
1a000cb4:	b480      	push	{r7}
1a000cb6:	af00      	add	r7, sp, #0
1a000cb8:	4b06      	ldr	r3, [pc, #24]	; (1a000cd4 <Chip_Clock_MainPLLLocked+0x20>)
1a000cba:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a000cbc:	f003 0301 	and.w	r3, r3, #1
1a000cc0:	2b00      	cmp	r3, #0
1a000cc2:	bf14      	ite	ne
1a000cc4:	2301      	movne	r3, #1
1a000cc6:	2300      	moveq	r3, #0
1a000cc8:	b2db      	uxtb	r3, r3
1a000cca:	4618      	mov	r0, r3
1a000ccc:	46bd      	mov	sp, r7
1a000cce:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cd2:	4770      	bx	lr
1a000cd4:	40050000 	.word	0x40050000

1a000cd8 <Chip_SetupCoreClock>:
1a000cd8:	b590      	push	{r4, r7, lr}
1a000cda:	b08f      	sub	sp, #60	; 0x3c
1a000cdc:	af00      	add	r7, sp, #0
1a000cde:	4603      	mov	r3, r0
1a000ce0:	6039      	str	r1, [r7, #0]
1a000ce2:	71fb      	strb	r3, [r7, #7]
1a000ce4:	4613      	mov	r3, r2
1a000ce6:	71bb      	strb	r3, [r7, #6]
1a000ce8:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a000cec:	62bb      	str	r3, [r7, #40]	; 0x28
1a000cee:	2300      	movs	r3, #0
1a000cf0:	633b      	str	r3, [r7, #48]	; 0x30
1a000cf2:	2300      	movs	r3, #0
1a000cf4:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000cf6:	79fb      	ldrb	r3, [r7, #7]
1a000cf8:	2b06      	cmp	r3, #6
1a000cfa:	d101      	bne.n	1a000d00 <Chip_SetupCoreClock+0x28>
1a000cfc:	f000 fe3a 	bl	1a001974 <Chip_Clock_EnableCrystal>
1a000d00:	79f9      	ldrb	r1, [r7, #7]
1a000d02:	2300      	movs	r3, #0
1a000d04:	2201      	movs	r2, #1
1a000d06:	2004      	movs	r0, #4
1a000d08:	f001 f826 	bl	1a001d58 <Chip_Clock_SetBaseClock>
1a000d0c:	f7ff ff9e 	bl	1a000c4c <Chip_Clock_DisableMainPLL>
1a000d10:	79fb      	ldrb	r3, [r7, #7]
1a000d12:	733b      	strb	r3, [r7, #12]
1a000d14:	f107 0308 	add.w	r3, r7, #8
1a000d18:	4619      	mov	r1, r3
1a000d1a:	6838      	ldr	r0, [r7, #0]
1a000d1c:	f000 fe62 	bl	1a0019e4 <Chip_Clock_CalcMainPLLValue>
1a000d20:	683b      	ldr	r3, [r7, #0]
1a000d22:	4a3d      	ldr	r2, [pc, #244]	; (1a000e18 <Chip_SetupCoreClock+0x140>)
1a000d24:	4293      	cmp	r3, r2
1a000d26:	d916      	bls.n	1a000d56 <Chip_SetupCoreClock+0x7e>
1a000d28:	68bb      	ldr	r3, [r7, #8]
1a000d2a:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a000d2e:	2b00      	cmp	r3, #0
1a000d30:	d000      	beq.n	1a000d34 <Chip_SetupCoreClock+0x5c>
1a000d32:	e7fe      	b.n	1a000d32 <Chip_SetupCoreClock+0x5a>
1a000d34:	68bb      	ldr	r3, [r7, #8]
1a000d36:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a000d3a:	2b00      	cmp	r3, #0
1a000d3c:	d006      	beq.n	1a000d4c <Chip_SetupCoreClock+0x74>
1a000d3e:	2301      	movs	r3, #1
1a000d40:	633b      	str	r3, [r7, #48]	; 0x30
1a000d42:	68bb      	ldr	r3, [r7, #8]
1a000d44:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a000d48:	60bb      	str	r3, [r7, #8]
1a000d4a:	e004      	b.n	1a000d56 <Chip_SetupCoreClock+0x7e>
1a000d4c:	2301      	movs	r3, #1
1a000d4e:	62fb      	str	r3, [r7, #44]	; 0x2c
1a000d50:	697b      	ldr	r3, [r7, #20]
1a000d52:	3301      	adds	r3, #1
1a000d54:	617b      	str	r3, [r7, #20]
1a000d56:	f107 0308 	add.w	r3, r7, #8
1a000d5a:	4618      	mov	r0, r3
1a000d5c:	f7ff ff86 	bl	1a000c6c <Chip_Clock_SetupMainPLL>
1a000d60:	bf00      	nop
1a000d62:	f7ff ffa7 	bl	1a000cb4 <Chip_Clock_MainPLLLocked>
1a000d66:	4603      	mov	r3, r0
1a000d68:	2b00      	cmp	r3, #0
1a000d6a:	d0fa      	beq.n	1a000d62 <Chip_SetupCoreClock+0x8a>
1a000d6c:	2300      	movs	r3, #0
1a000d6e:	2201      	movs	r2, #1
1a000d70:	2109      	movs	r1, #9
1a000d72:	2004      	movs	r0, #4
1a000d74:	f000 fff0 	bl	1a001d58 <Chip_Clock_SetBaseClock>
1a000d78:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a000d7a:	2b00      	cmp	r3, #0
1a000d7c:	d012      	beq.n	1a000da4 <Chip_SetupCoreClock+0xcc>
1a000d7e:	f641 3358 	movw	r3, #7000	; 0x1b58
1a000d82:	62bb      	str	r3, [r7, #40]	; 0x28
1a000d84:	bf00      	nop
1a000d86:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000d88:	1e5a      	subs	r2, r3, #1
1a000d8a:	62ba      	str	r2, [r7, #40]	; 0x28
1a000d8c:	2b00      	cmp	r3, #0
1a000d8e:	d1fa      	bne.n	1a000d86 <Chip_SetupCoreClock+0xae>
1a000d90:	68bb      	ldr	r3, [r7, #8]
1a000d92:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a000d96:	60bb      	str	r3, [r7, #8]
1a000d98:	f107 0308 	add.w	r3, r7, #8
1a000d9c:	4618      	mov	r0, r3
1a000d9e:	f7ff ff65 	bl	1a000c6c <Chip_Clock_SetupMainPLL>
1a000da2:	e013      	b.n	1a000dcc <Chip_SetupCoreClock+0xf4>
1a000da4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a000da6:	2b00      	cmp	r3, #0
1a000da8:	d010      	beq.n	1a000dcc <Chip_SetupCoreClock+0xf4>
1a000daa:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a000dae:	62bb      	str	r3, [r7, #40]	; 0x28
1a000db0:	bf00      	nop
1a000db2:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a000db4:	1e5a      	subs	r2, r3, #1
1a000db6:	62ba      	str	r2, [r7, #40]	; 0x28
1a000db8:	2b00      	cmp	r3, #0
1a000dba:	d1fa      	bne.n	1a000db2 <Chip_SetupCoreClock+0xda>
1a000dbc:	697b      	ldr	r3, [r7, #20]
1a000dbe:	3b01      	subs	r3, #1
1a000dc0:	617b      	str	r3, [r7, #20]
1a000dc2:	f107 0308 	add.w	r3, r7, #8
1a000dc6:	4618      	mov	r0, r3
1a000dc8:	f7ff ff50 	bl	1a000c6c <Chip_Clock_SetupMainPLL>
1a000dcc:	79bb      	ldrb	r3, [r7, #6]
1a000dce:	2b00      	cmp	r3, #0
1a000dd0:	d01e      	beq.n	1a000e10 <Chip_SetupCoreClock+0x138>
1a000dd2:	2300      	movs	r3, #0
1a000dd4:	637b      	str	r3, [r7, #52]	; 0x34
1a000dd6:	e018      	b.n	1a000e0a <Chip_SetupCoreClock+0x132>
1a000dd8:	4a10      	ldr	r2, [pc, #64]	; (1a000e1c <Chip_SetupCoreClock+0x144>)
1a000dda:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000ddc:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a000de0:	4a0e      	ldr	r2, [pc, #56]	; (1a000e1c <Chip_SetupCoreClock+0x144>)
1a000de2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000de4:	009b      	lsls	r3, r3, #2
1a000de6:	4413      	add	r3, r2
1a000de8:	7859      	ldrb	r1, [r3, #1]
1a000dea:	4a0c      	ldr	r2, [pc, #48]	; (1a000e1c <Chip_SetupCoreClock+0x144>)
1a000dec:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000dee:	009b      	lsls	r3, r3, #2
1a000df0:	4413      	add	r3, r2
1a000df2:	789c      	ldrb	r4, [r3, #2]
1a000df4:	4a09      	ldr	r2, [pc, #36]	; (1a000e1c <Chip_SetupCoreClock+0x144>)
1a000df6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000df8:	009b      	lsls	r3, r3, #2
1a000dfa:	4413      	add	r3, r2
1a000dfc:	78db      	ldrb	r3, [r3, #3]
1a000dfe:	4622      	mov	r2, r4
1a000e00:	f000 ffaa 	bl	1a001d58 <Chip_Clock_SetBaseClock>
1a000e04:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000e06:	3301      	adds	r3, #1
1a000e08:	637b      	str	r3, [r7, #52]	; 0x34
1a000e0a:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a000e0c:	2b11      	cmp	r3, #17
1a000e0e:	d9e3      	bls.n	1a000dd8 <Chip_SetupCoreClock+0x100>
1a000e10:	bf00      	nop
1a000e12:	373c      	adds	r7, #60	; 0x3c
1a000e14:	46bd      	mov	sp, r7
1a000e16:	bd90      	pop	{r4, r7, pc}
1a000e18:	068e7780 	.word	0x068e7780
1a000e1c:	1a002228 	.word	0x1a002228

1a000e20 <Chip_SetupXtalClocking>:
1a000e20:	b580      	push	{r7, lr}
1a000e22:	af00      	add	r7, sp, #0
1a000e24:	2201      	movs	r2, #1
1a000e26:	4903      	ldr	r1, [pc, #12]	; (1a000e34 <Chip_SetupXtalClocking+0x14>)
1a000e28:	2006      	movs	r0, #6
1a000e2a:	f7ff ff55 	bl	1a000cd8 <Chip_SetupCoreClock>
1a000e2e:	bf00      	nop
1a000e30:	bd80      	pop	{r7, pc}
1a000e32:	bf00      	nop
1a000e34:	0c28cb00 	.word	0x0c28cb00

1a000e38 <RingBuffer_IsEmpty>:
1a000e38:	b480      	push	{r7}
1a000e3a:	b083      	sub	sp, #12
1a000e3c:	af00      	add	r7, sp, #0
1a000e3e:	6078      	str	r0, [r7, #4]
1a000e40:	687b      	ldr	r3, [r7, #4]
1a000e42:	330c      	adds	r3, #12
1a000e44:	681a      	ldr	r2, [r3, #0]
1a000e46:	687b      	ldr	r3, [r7, #4]
1a000e48:	3310      	adds	r3, #16
1a000e4a:	681b      	ldr	r3, [r3, #0]
1a000e4c:	429a      	cmp	r2, r3
1a000e4e:	bf0c      	ite	eq
1a000e50:	2301      	moveq	r3, #1
1a000e52:	2300      	movne	r3, #0
1a000e54:	b2db      	uxtb	r3, r3
1a000e56:	4618      	mov	r0, r3
1a000e58:	370c      	adds	r7, #12
1a000e5a:	46bd      	mov	sp, r7
1a000e5c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e60:	4770      	bx	lr

1a000e62 <Chip_UART_TXDisable>:
1a000e62:	b480      	push	{r7}
1a000e64:	b083      	sub	sp, #12
1a000e66:	af00      	add	r7, sp, #0
1a000e68:	6078      	str	r0, [r7, #4]
1a000e6a:	687b      	ldr	r3, [r7, #4]
1a000e6c:	2200      	movs	r2, #0
1a000e6e:	65da      	str	r2, [r3, #92]	; 0x5c
1a000e70:	bf00      	nop
1a000e72:	370c      	adds	r7, #12
1a000e74:	46bd      	mov	sp, r7
1a000e76:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e7a:	4770      	bx	lr

1a000e7c <Chip_UART_SendByte>:
1a000e7c:	b480      	push	{r7}
1a000e7e:	b083      	sub	sp, #12
1a000e80:	af00      	add	r7, sp, #0
1a000e82:	6078      	str	r0, [r7, #4]
1a000e84:	460b      	mov	r3, r1
1a000e86:	70fb      	strb	r3, [r7, #3]
1a000e88:	78fa      	ldrb	r2, [r7, #3]
1a000e8a:	687b      	ldr	r3, [r7, #4]
1a000e8c:	601a      	str	r2, [r3, #0]
1a000e8e:	bf00      	nop
1a000e90:	370c      	adds	r7, #12
1a000e92:	46bd      	mov	sp, r7
1a000e94:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e98:	4770      	bx	lr

1a000e9a <Chip_UART_ReadByte>:
1a000e9a:	b480      	push	{r7}
1a000e9c:	b083      	sub	sp, #12
1a000e9e:	af00      	add	r7, sp, #0
1a000ea0:	6078      	str	r0, [r7, #4]
1a000ea2:	687b      	ldr	r3, [r7, #4]
1a000ea4:	681b      	ldr	r3, [r3, #0]
1a000ea6:	b2db      	uxtb	r3, r3
1a000ea8:	4618      	mov	r0, r3
1a000eaa:	370c      	adds	r7, #12
1a000eac:	46bd      	mov	sp, r7
1a000eae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000eb2:	4770      	bx	lr

1a000eb4 <Chip_UART_IntEnable>:
1a000eb4:	b480      	push	{r7}
1a000eb6:	b083      	sub	sp, #12
1a000eb8:	af00      	add	r7, sp, #0
1a000eba:	6078      	str	r0, [r7, #4]
1a000ebc:	6039      	str	r1, [r7, #0]
1a000ebe:	687b      	ldr	r3, [r7, #4]
1a000ec0:	685a      	ldr	r2, [r3, #4]
1a000ec2:	683b      	ldr	r3, [r7, #0]
1a000ec4:	431a      	orrs	r2, r3
1a000ec6:	687b      	ldr	r3, [r7, #4]
1a000ec8:	605a      	str	r2, [r3, #4]
1a000eca:	bf00      	nop
1a000ecc:	370c      	adds	r7, #12
1a000ece:	46bd      	mov	sp, r7
1a000ed0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ed4:	4770      	bx	lr

1a000ed6 <Chip_UART_IntDisable>:
1a000ed6:	b480      	push	{r7}
1a000ed8:	b083      	sub	sp, #12
1a000eda:	af00      	add	r7, sp, #0
1a000edc:	6078      	str	r0, [r7, #4]
1a000ede:	6039      	str	r1, [r7, #0]
1a000ee0:	687b      	ldr	r3, [r7, #4]
1a000ee2:	685a      	ldr	r2, [r3, #4]
1a000ee4:	683b      	ldr	r3, [r7, #0]
1a000ee6:	43db      	mvns	r3, r3
1a000ee8:	401a      	ands	r2, r3
1a000eea:	687b      	ldr	r3, [r7, #4]
1a000eec:	605a      	str	r2, [r3, #4]
1a000eee:	bf00      	nop
1a000ef0:	370c      	adds	r7, #12
1a000ef2:	46bd      	mov	sp, r7
1a000ef4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ef8:	4770      	bx	lr

1a000efa <Chip_UART_ReadIntIDReg>:
1a000efa:	b480      	push	{r7}
1a000efc:	b083      	sub	sp, #12
1a000efe:	af00      	add	r7, sp, #0
1a000f00:	6078      	str	r0, [r7, #4]
1a000f02:	687b      	ldr	r3, [r7, #4]
1a000f04:	689b      	ldr	r3, [r3, #8]
1a000f06:	4618      	mov	r0, r3
1a000f08:	370c      	adds	r7, #12
1a000f0a:	46bd      	mov	sp, r7
1a000f0c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f10:	4770      	bx	lr

1a000f12 <Chip_UART_SetupFIFOS>:
1a000f12:	b480      	push	{r7}
1a000f14:	b083      	sub	sp, #12
1a000f16:	af00      	add	r7, sp, #0
1a000f18:	6078      	str	r0, [r7, #4]
1a000f1a:	6039      	str	r1, [r7, #0]
1a000f1c:	687b      	ldr	r3, [r7, #4]
1a000f1e:	683a      	ldr	r2, [r7, #0]
1a000f20:	609a      	str	r2, [r3, #8]
1a000f22:	bf00      	nop
1a000f24:	370c      	adds	r7, #12
1a000f26:	46bd      	mov	sp, r7
1a000f28:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f2c:	4770      	bx	lr

1a000f2e <Chip_UART_ConfigData>:
1a000f2e:	b480      	push	{r7}
1a000f30:	b083      	sub	sp, #12
1a000f32:	af00      	add	r7, sp, #0
1a000f34:	6078      	str	r0, [r7, #4]
1a000f36:	6039      	str	r1, [r7, #0]
1a000f38:	687b      	ldr	r3, [r7, #4]
1a000f3a:	683a      	ldr	r2, [r7, #0]
1a000f3c:	60da      	str	r2, [r3, #12]
1a000f3e:	bf00      	nop
1a000f40:	370c      	adds	r7, #12
1a000f42:	46bd      	mov	sp, r7
1a000f44:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f48:	4770      	bx	lr

1a000f4a <Chip_UART_EnableDivisorAccess>:
1a000f4a:	b480      	push	{r7}
1a000f4c:	b083      	sub	sp, #12
1a000f4e:	af00      	add	r7, sp, #0
1a000f50:	6078      	str	r0, [r7, #4]
1a000f52:	687b      	ldr	r3, [r7, #4]
1a000f54:	68db      	ldr	r3, [r3, #12]
1a000f56:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a000f5a:	687b      	ldr	r3, [r7, #4]
1a000f5c:	60da      	str	r2, [r3, #12]
1a000f5e:	bf00      	nop
1a000f60:	370c      	adds	r7, #12
1a000f62:	46bd      	mov	sp, r7
1a000f64:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f68:	4770      	bx	lr

1a000f6a <Chip_UART_DisableDivisorAccess>:
1a000f6a:	b480      	push	{r7}
1a000f6c:	b083      	sub	sp, #12
1a000f6e:	af00      	add	r7, sp, #0
1a000f70:	6078      	str	r0, [r7, #4]
1a000f72:	687b      	ldr	r3, [r7, #4]
1a000f74:	68db      	ldr	r3, [r3, #12]
1a000f76:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a000f7a:	687b      	ldr	r3, [r7, #4]
1a000f7c:	60da      	str	r2, [r3, #12]
1a000f7e:	bf00      	nop
1a000f80:	370c      	adds	r7, #12
1a000f82:	46bd      	mov	sp, r7
1a000f84:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f88:	4770      	bx	lr

1a000f8a <Chip_UART_SetDivisorLatches>:
1a000f8a:	b480      	push	{r7}
1a000f8c:	b083      	sub	sp, #12
1a000f8e:	af00      	add	r7, sp, #0
1a000f90:	6078      	str	r0, [r7, #4]
1a000f92:	460b      	mov	r3, r1
1a000f94:	70fb      	strb	r3, [r7, #3]
1a000f96:	4613      	mov	r3, r2
1a000f98:	70bb      	strb	r3, [r7, #2]
1a000f9a:	78fa      	ldrb	r2, [r7, #3]
1a000f9c:	687b      	ldr	r3, [r7, #4]
1a000f9e:	601a      	str	r2, [r3, #0]
1a000fa0:	78ba      	ldrb	r2, [r7, #2]
1a000fa2:	687b      	ldr	r3, [r7, #4]
1a000fa4:	605a      	str	r2, [r3, #4]
1a000fa6:	bf00      	nop
1a000fa8:	370c      	adds	r7, #12
1a000faa:	46bd      	mov	sp, r7
1a000fac:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fb0:	4770      	bx	lr

1a000fb2 <Chip_UART_ReadLineStatus>:
1a000fb2:	b480      	push	{r7}
1a000fb4:	b083      	sub	sp, #12
1a000fb6:	af00      	add	r7, sp, #0
1a000fb8:	6078      	str	r0, [r7, #4]
1a000fba:	687b      	ldr	r3, [r7, #4]
1a000fbc:	695b      	ldr	r3, [r3, #20]
1a000fbe:	4618      	mov	r0, r3
1a000fc0:	370c      	adds	r7, #12
1a000fc2:	46bd      	mov	sp, r7
1a000fc4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fc8:	4770      	bx	lr

1a000fca <Chip_UART_SetAutoBaudReg>:
1a000fca:	b480      	push	{r7}
1a000fcc:	b083      	sub	sp, #12
1a000fce:	af00      	add	r7, sp, #0
1a000fd0:	6078      	str	r0, [r7, #4]
1a000fd2:	6039      	str	r1, [r7, #0]
1a000fd4:	687b      	ldr	r3, [r7, #4]
1a000fd6:	6a1a      	ldr	r2, [r3, #32]
1a000fd8:	683b      	ldr	r3, [r7, #0]
1a000fda:	431a      	orrs	r2, r3
1a000fdc:	687b      	ldr	r3, [r7, #4]
1a000fde:	621a      	str	r2, [r3, #32]
1a000fe0:	bf00      	nop
1a000fe2:	370c      	adds	r7, #12
1a000fe4:	46bd      	mov	sp, r7
1a000fe6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fea:	4770      	bx	lr

1a000fec <Chip_UART_GetIndex>:
1a000fec:	b480      	push	{r7}
1a000fee:	b085      	sub	sp, #20
1a000ff0:	af00      	add	r7, sp, #0
1a000ff2:	6078      	str	r0, [r7, #4]
1a000ff4:	687b      	ldr	r3, [r7, #4]
1a000ff6:	60fb      	str	r3, [r7, #12]
1a000ff8:	68fb      	ldr	r3, [r7, #12]
1a000ffa:	4a10      	ldr	r2, [pc, #64]	; (1a00103c <Chip_UART_GetIndex+0x50>)
1a000ffc:	4293      	cmp	r3, r2
1a000ffe:	d00f      	beq.n	1a001020 <Chip_UART_GetIndex+0x34>
1a001000:	4a0e      	ldr	r2, [pc, #56]	; (1a00103c <Chip_UART_GetIndex+0x50>)
1a001002:	4293      	cmp	r3, r2
1a001004:	d803      	bhi.n	1a00100e <Chip_UART_GetIndex+0x22>
1a001006:	4a0e      	ldr	r2, [pc, #56]	; (1a001040 <Chip_UART_GetIndex+0x54>)
1a001008:	4293      	cmp	r3, r2
1a00100a:	d007      	beq.n	1a00101c <Chip_UART_GetIndex+0x30>
1a00100c:	e00e      	b.n	1a00102c <Chip_UART_GetIndex+0x40>
1a00100e:	4a0d      	ldr	r2, [pc, #52]	; (1a001044 <Chip_UART_GetIndex+0x58>)
1a001010:	4293      	cmp	r3, r2
1a001012:	d007      	beq.n	1a001024 <Chip_UART_GetIndex+0x38>
1a001014:	4a0c      	ldr	r2, [pc, #48]	; (1a001048 <Chip_UART_GetIndex+0x5c>)
1a001016:	4293      	cmp	r3, r2
1a001018:	d006      	beq.n	1a001028 <Chip_UART_GetIndex+0x3c>
1a00101a:	e007      	b.n	1a00102c <Chip_UART_GetIndex+0x40>
1a00101c:	2300      	movs	r3, #0
1a00101e:	e006      	b.n	1a00102e <Chip_UART_GetIndex+0x42>
1a001020:	2301      	movs	r3, #1
1a001022:	e004      	b.n	1a00102e <Chip_UART_GetIndex+0x42>
1a001024:	2302      	movs	r3, #2
1a001026:	e002      	b.n	1a00102e <Chip_UART_GetIndex+0x42>
1a001028:	2303      	movs	r3, #3
1a00102a:	e000      	b.n	1a00102e <Chip_UART_GetIndex+0x42>
1a00102c:	2300      	movs	r3, #0
1a00102e:	4618      	mov	r0, r3
1a001030:	3714      	adds	r7, #20
1a001032:	46bd      	mov	sp, r7
1a001034:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001038:	4770      	bx	lr
1a00103a:	bf00      	nop
1a00103c:	40082000 	.word	0x40082000
1a001040:	40081000 	.word	0x40081000
1a001044:	400c1000 	.word	0x400c1000
1a001048:	400c2000 	.word	0x400c2000

1a00104c <Chip_UART_ABIntHandler>:
1a00104c:	b580      	push	{r7, lr}
1a00104e:	b082      	sub	sp, #8
1a001050:	af00      	add	r7, sp, #0
1a001052:	6078      	str	r0, [r7, #4]
1a001054:	6878      	ldr	r0, [r7, #4]
1a001056:	f7ff ff50 	bl	1a000efa <Chip_UART_ReadIntIDReg>
1a00105a:	4603      	mov	r3, r0
1a00105c:	f403 7380 	and.w	r3, r3, #256	; 0x100
1a001060:	2b00      	cmp	r3, #0
1a001062:	d011      	beq.n	1a001088 <Chip_UART_ABIntHandler+0x3c>
1a001064:	f44f 7180 	mov.w	r1, #256	; 0x100
1a001068:	6878      	ldr	r0, [r7, #4]
1a00106a:	f7ff ffae 	bl	1a000fca <Chip_UART_SetAutoBaudReg>
1a00106e:	f44f 7180 	mov.w	r1, #256	; 0x100
1a001072:	6878      	ldr	r0, [r7, #4]
1a001074:	f7ff ff2f 	bl	1a000ed6 <Chip_UART_IntDisable>
1a001078:	4b0e      	ldr	r3, [pc, #56]	; (1a0010b4 <Chip_UART_ABIntHandler+0x68>)
1a00107a:	781b      	ldrb	r3, [r3, #0]
1a00107c:	b2db      	uxtb	r3, r3
1a00107e:	2b00      	cmp	r3, #0
1a001080:	d102      	bne.n	1a001088 <Chip_UART_ABIntHandler+0x3c>
1a001082:	4b0c      	ldr	r3, [pc, #48]	; (1a0010b4 <Chip_UART_ABIntHandler+0x68>)
1a001084:	2201      	movs	r2, #1
1a001086:	701a      	strb	r2, [r3, #0]
1a001088:	6878      	ldr	r0, [r7, #4]
1a00108a:	f7ff ff36 	bl	1a000efa <Chip_UART_ReadIntIDReg>
1a00108e:	4603      	mov	r3, r0
1a001090:	f403 7300 	and.w	r3, r3, #512	; 0x200
1a001094:	2b00      	cmp	r3, #0
1a001096:	d009      	beq.n	1a0010ac <Chip_UART_ABIntHandler+0x60>
1a001098:	f44f 7100 	mov.w	r1, #512	; 0x200
1a00109c:	6878      	ldr	r0, [r7, #4]
1a00109e:	f7ff ff94 	bl	1a000fca <Chip_UART_SetAutoBaudReg>
1a0010a2:	f44f 7100 	mov.w	r1, #512	; 0x200
1a0010a6:	6878      	ldr	r0, [r7, #4]
1a0010a8:	f7ff ff15 	bl	1a000ed6 <Chip_UART_IntDisable>
1a0010ac:	bf00      	nop
1a0010ae:	3708      	adds	r7, #8
1a0010b0:	46bd      	mov	sp, r7
1a0010b2:	bd80      	pop	{r7, pc}
1a0010b4:	10000000 	.word	0x10000000

1a0010b8 <Chip_UART_Init>:
1a0010b8:	b580      	push	{r7, lr}
1a0010ba:	b084      	sub	sp, #16
1a0010bc:	af00      	add	r7, sp, #0
1a0010be:	6078      	str	r0, [r7, #4]
1a0010c0:	68fb      	ldr	r3, [r7, #12]
1a0010c2:	6878      	ldr	r0, [r7, #4]
1a0010c4:	f7ff ff92 	bl	1a000fec <Chip_UART_GetIndex>
1a0010c8:	4602      	mov	r2, r0
1a0010ca:	4b1b      	ldr	r3, [pc, #108]	; (1a001138 <Chip_UART_Init+0x80>)
1a0010cc:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a0010d0:	2301      	movs	r3, #1
1a0010d2:	2201      	movs	r2, #1
1a0010d4:	2101      	movs	r1, #1
1a0010d6:	f000 feb3 	bl	1a001e40 <Chip_Clock_EnableOpts>
1a0010da:	2107      	movs	r1, #7
1a0010dc:	6878      	ldr	r0, [r7, #4]
1a0010de:	f7ff ff18 	bl	1a000f12 <Chip_UART_SetupFIFOS>
1a0010e2:	6878      	ldr	r0, [r7, #4]
1a0010e4:	f7ff febd 	bl	1a000e62 <Chip_UART_TXDisable>
1a0010e8:	687b      	ldr	r3, [r7, #4]
1a0010ea:	2200      	movs	r2, #0
1a0010ec:	605a      	str	r2, [r3, #4]
1a0010ee:	687b      	ldr	r3, [r7, #4]
1a0010f0:	2200      	movs	r2, #0
1a0010f2:	60da      	str	r2, [r3, #12]
1a0010f4:	687b      	ldr	r3, [r7, #4]
1a0010f6:	2200      	movs	r2, #0
1a0010f8:	621a      	str	r2, [r3, #32]
1a0010fa:	687b      	ldr	r3, [r7, #4]
1a0010fc:	2200      	movs	r2, #0
1a0010fe:	64da      	str	r2, [r3, #76]	; 0x4c
1a001100:	687b      	ldr	r3, [r7, #4]
1a001102:	2200      	movs	r2, #0
1a001104:	655a      	str	r2, [r3, #84]	; 0x54
1a001106:	687b      	ldr	r3, [r7, #4]
1a001108:	2200      	movs	r2, #0
1a00110a:	651a      	str	r2, [r3, #80]	; 0x50
1a00110c:	687b      	ldr	r3, [r7, #4]
1a00110e:	4a0b      	ldr	r2, [pc, #44]	; (1a00113c <Chip_UART_Init+0x84>)
1a001110:	4293      	cmp	r3, r2
1a001112:	d105      	bne.n	1a001120 <Chip_UART_Init+0x68>
1a001114:	687b      	ldr	r3, [r7, #4]
1a001116:	2200      	movs	r2, #0
1a001118:	611a      	str	r2, [r3, #16]
1a00111a:	687b      	ldr	r3, [r7, #4]
1a00111c:	699b      	ldr	r3, [r3, #24]
1a00111e:	60fb      	str	r3, [r7, #12]
1a001120:	2103      	movs	r1, #3
1a001122:	6878      	ldr	r0, [r7, #4]
1a001124:	f7ff ff03 	bl	1a000f2e <Chip_UART_ConfigData>
1a001128:	687b      	ldr	r3, [r7, #4]
1a00112a:	2210      	movs	r2, #16
1a00112c:	629a      	str	r2, [r3, #40]	; 0x28
1a00112e:	bf00      	nop
1a001130:	3710      	adds	r7, #16
1a001132:	46bd      	mov	sp, r7
1a001134:	bd80      	pop	{r7, pc}
1a001136:	bf00      	nop
1a001138:	1a002270 	.word	0x1a002270
1a00113c:	40082000 	.word	0x40082000

1a001140 <Chip_UART_SetBaud>:
1a001140:	b580      	push	{r7, lr}
1a001142:	b086      	sub	sp, #24
1a001144:	af00      	add	r7, sp, #0
1a001146:	6078      	str	r0, [r7, #4]
1a001148:	6039      	str	r1, [r7, #0]
1a00114a:	6878      	ldr	r0, [r7, #4]
1a00114c:	f7ff ff4e 	bl	1a000fec <Chip_UART_GetIndex>
1a001150:	4602      	mov	r2, r0
1a001152:	4b16      	ldr	r3, [pc, #88]	; (1a0011ac <Chip_UART_SetBaud+0x6c>)
1a001154:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a001158:	4618      	mov	r0, r3
1a00115a:	f000 feaf 	bl	1a001ebc <Chip_Clock_GetRate>
1a00115e:	6178      	str	r0, [r7, #20]
1a001160:	683b      	ldr	r3, [r7, #0]
1a001162:	011b      	lsls	r3, r3, #4
1a001164:	697a      	ldr	r2, [r7, #20]
1a001166:	fbb2 f3f3 	udiv	r3, r2, r3
1a00116a:	613b      	str	r3, [r7, #16]
1a00116c:	693b      	ldr	r3, [r7, #16]
1a00116e:	0a1b      	lsrs	r3, r3, #8
1a001170:	60fb      	str	r3, [r7, #12]
1a001172:	68fb      	ldr	r3, [r7, #12]
1a001174:	021b      	lsls	r3, r3, #8
1a001176:	693a      	ldr	r2, [r7, #16]
1a001178:	1ad3      	subs	r3, r2, r3
1a00117a:	60bb      	str	r3, [r7, #8]
1a00117c:	6878      	ldr	r0, [r7, #4]
1a00117e:	f7ff fee4 	bl	1a000f4a <Chip_UART_EnableDivisorAccess>
1a001182:	68bb      	ldr	r3, [r7, #8]
1a001184:	b2db      	uxtb	r3, r3
1a001186:	68fa      	ldr	r2, [r7, #12]
1a001188:	b2d2      	uxtb	r2, r2
1a00118a:	4619      	mov	r1, r3
1a00118c:	6878      	ldr	r0, [r7, #4]
1a00118e:	f7ff fefc 	bl	1a000f8a <Chip_UART_SetDivisorLatches>
1a001192:	6878      	ldr	r0, [r7, #4]
1a001194:	f7ff fee9 	bl	1a000f6a <Chip_UART_DisableDivisorAccess>
1a001198:	697a      	ldr	r2, [r7, #20]
1a00119a:	693b      	ldr	r3, [r7, #16]
1a00119c:	fbb2 f3f3 	udiv	r3, r2, r3
1a0011a0:	091b      	lsrs	r3, r3, #4
1a0011a2:	4618      	mov	r0, r3
1a0011a4:	3718      	adds	r7, #24
1a0011a6:	46bd      	mov	sp, r7
1a0011a8:	bd80      	pop	{r7, pc}
1a0011aa:	bf00      	nop
1a0011ac:	1a002278 	.word	0x1a002278

1a0011b0 <Chip_UART_RXIntHandlerRB>:
1a0011b0:	b580      	push	{r7, lr}
1a0011b2:	b084      	sub	sp, #16
1a0011b4:	af00      	add	r7, sp, #0
1a0011b6:	6078      	str	r0, [r7, #4]
1a0011b8:	6039      	str	r1, [r7, #0]
1a0011ba:	e00a      	b.n	1a0011d2 <Chip_UART_RXIntHandlerRB+0x22>
1a0011bc:	6878      	ldr	r0, [r7, #4]
1a0011be:	f7ff fe6c 	bl	1a000e9a <Chip_UART_ReadByte>
1a0011c2:	4603      	mov	r3, r0
1a0011c4:	73fb      	strb	r3, [r7, #15]
1a0011c6:	f107 030f 	add.w	r3, r7, #15
1a0011ca:	4619      	mov	r1, r3
1a0011cc:	6838      	ldr	r0, [r7, #0]
1a0011ce:	f000 f919 	bl	1a001404 <RingBuffer_Insert>
1a0011d2:	6878      	ldr	r0, [r7, #4]
1a0011d4:	f7ff feed 	bl	1a000fb2 <Chip_UART_ReadLineStatus>
1a0011d8:	4603      	mov	r3, r0
1a0011da:	f003 0301 	and.w	r3, r3, #1
1a0011de:	2b00      	cmp	r3, #0
1a0011e0:	d1ec      	bne.n	1a0011bc <Chip_UART_RXIntHandlerRB+0xc>
1a0011e2:	bf00      	nop
1a0011e4:	3710      	adds	r7, #16
1a0011e6:	46bd      	mov	sp, r7
1a0011e8:	bd80      	pop	{r7, pc}

1a0011ea <Chip_UART_TXIntHandlerRB>:
1a0011ea:	b580      	push	{r7, lr}
1a0011ec:	b084      	sub	sp, #16
1a0011ee:	af00      	add	r7, sp, #0
1a0011f0:	6078      	str	r0, [r7, #4]
1a0011f2:	6039      	str	r1, [r7, #0]
1a0011f4:	e004      	b.n	1a001200 <Chip_UART_TXIntHandlerRB+0x16>
1a0011f6:	7bfb      	ldrb	r3, [r7, #15]
1a0011f8:	4619      	mov	r1, r3
1a0011fa:	6878      	ldr	r0, [r7, #4]
1a0011fc:	f7ff fe3e 	bl	1a000e7c <Chip_UART_SendByte>
1a001200:	6878      	ldr	r0, [r7, #4]
1a001202:	f7ff fed6 	bl	1a000fb2 <Chip_UART_ReadLineStatus>
1a001206:	4603      	mov	r3, r0
1a001208:	f003 0320 	and.w	r3, r3, #32
1a00120c:	2b00      	cmp	r3, #0
1a00120e:	d008      	beq.n	1a001222 <Chip_UART_TXIntHandlerRB+0x38>
1a001210:	f107 030f 	add.w	r3, r7, #15
1a001214:	4619      	mov	r1, r3
1a001216:	6838      	ldr	r0, [r7, #0]
1a001218:	f000 f9b3 	bl	1a001582 <RingBuffer_Pop>
1a00121c:	4603      	mov	r3, r0
1a00121e:	2b00      	cmp	r3, #0
1a001220:	d1e9      	bne.n	1a0011f6 <Chip_UART_TXIntHandlerRB+0xc>
1a001222:	6838      	ldr	r0, [r7, #0]
1a001224:	f7ff fe08 	bl	1a000e38 <RingBuffer_IsEmpty>
1a001228:	4603      	mov	r3, r0
1a00122a:	2b00      	cmp	r3, #0
1a00122c:	d003      	beq.n	1a001236 <Chip_UART_TXIntHandlerRB+0x4c>
1a00122e:	2102      	movs	r1, #2
1a001230:	6878      	ldr	r0, [r7, #4]
1a001232:	f7ff fe50 	bl	1a000ed6 <Chip_UART_IntDisable>
1a001236:	bf00      	nop
1a001238:	3710      	adds	r7, #16
1a00123a:	46bd      	mov	sp, r7
1a00123c:	bd80      	pop	{r7, pc}

1a00123e <Chip_UART_SendRB>:
1a00123e:	b580      	push	{r7, lr}
1a001240:	b086      	sub	sp, #24
1a001242:	af00      	add	r7, sp, #0
1a001244:	60f8      	str	r0, [r7, #12]
1a001246:	60b9      	str	r1, [r7, #8]
1a001248:	607a      	str	r2, [r7, #4]
1a00124a:	603b      	str	r3, [r7, #0]
1a00124c:	687b      	ldr	r3, [r7, #4]
1a00124e:	617b      	str	r3, [r7, #20]
1a001250:	2102      	movs	r1, #2
1a001252:	68f8      	ldr	r0, [r7, #12]
1a001254:	f7ff fe3f 	bl	1a000ed6 <Chip_UART_IntDisable>
1a001258:	683a      	ldr	r2, [r7, #0]
1a00125a:	6979      	ldr	r1, [r7, #20]
1a00125c:	68b8      	ldr	r0, [r7, #8]
1a00125e:	f000 f8ff 	bl	1a001460 <RingBuffer_InsertMult>
1a001262:	4603      	mov	r3, r0
1a001264:	613b      	str	r3, [r7, #16]
1a001266:	68b9      	ldr	r1, [r7, #8]
1a001268:	68f8      	ldr	r0, [r7, #12]
1a00126a:	f7ff ffbe 	bl	1a0011ea <Chip_UART_TXIntHandlerRB>
1a00126e:	697a      	ldr	r2, [r7, #20]
1a001270:	693b      	ldr	r3, [r7, #16]
1a001272:	18d1      	adds	r1, r2, r3
1a001274:	683a      	ldr	r2, [r7, #0]
1a001276:	693b      	ldr	r3, [r7, #16]
1a001278:	1ad3      	subs	r3, r2, r3
1a00127a:	461a      	mov	r2, r3
1a00127c:	68b8      	ldr	r0, [r7, #8]
1a00127e:	f000 f8ef 	bl	1a001460 <RingBuffer_InsertMult>
1a001282:	4603      	mov	r3, r0
1a001284:	461a      	mov	r2, r3
1a001286:	693b      	ldr	r3, [r7, #16]
1a001288:	4413      	add	r3, r2
1a00128a:	613b      	str	r3, [r7, #16]
1a00128c:	2102      	movs	r1, #2
1a00128e:	68f8      	ldr	r0, [r7, #12]
1a001290:	f7ff fe10 	bl	1a000eb4 <Chip_UART_IntEnable>
1a001294:	693b      	ldr	r3, [r7, #16]
1a001296:	4618      	mov	r0, r3
1a001298:	3718      	adds	r7, #24
1a00129a:	46bd      	mov	sp, r7
1a00129c:	bd80      	pop	{r7, pc}

1a00129e <Chip_UART_IRQRBHandler>:
1a00129e:	b580      	push	{r7, lr}
1a0012a0:	b084      	sub	sp, #16
1a0012a2:	af00      	add	r7, sp, #0
1a0012a4:	60f8      	str	r0, [r7, #12]
1a0012a6:	60b9      	str	r1, [r7, #8]
1a0012a8:	607a      	str	r2, [r7, #4]
1a0012aa:	68fb      	ldr	r3, [r7, #12]
1a0012ac:	685b      	ldr	r3, [r3, #4]
1a0012ae:	f003 0302 	and.w	r3, r3, #2
1a0012b2:	2b00      	cmp	r3, #0
1a0012b4:	d00d      	beq.n	1a0012d2 <Chip_UART_IRQRBHandler+0x34>
1a0012b6:	6879      	ldr	r1, [r7, #4]
1a0012b8:	68f8      	ldr	r0, [r7, #12]
1a0012ba:	f7ff ff96 	bl	1a0011ea <Chip_UART_TXIntHandlerRB>
1a0012be:	6878      	ldr	r0, [r7, #4]
1a0012c0:	f7ff fdba 	bl	1a000e38 <RingBuffer_IsEmpty>
1a0012c4:	4603      	mov	r3, r0
1a0012c6:	2b00      	cmp	r3, #0
1a0012c8:	d003      	beq.n	1a0012d2 <Chip_UART_IRQRBHandler+0x34>
1a0012ca:	2102      	movs	r1, #2
1a0012cc:	68f8      	ldr	r0, [r7, #12]
1a0012ce:	f7ff fe02 	bl	1a000ed6 <Chip_UART_IntDisable>
1a0012d2:	68b9      	ldr	r1, [r7, #8]
1a0012d4:	68f8      	ldr	r0, [r7, #12]
1a0012d6:	f7ff ff6b 	bl	1a0011b0 <Chip_UART_RXIntHandlerRB>
1a0012da:	68f8      	ldr	r0, [r7, #12]
1a0012dc:	f7ff feb6 	bl	1a00104c <Chip_UART_ABIntHandler>
1a0012e0:	bf00      	nop
1a0012e2:	3710      	adds	r7, #16
1a0012e4:	46bd      	mov	sp, r7
1a0012e6:	bd80      	pop	{r7, pc}

1a0012e8 <Chip_TIMER_ReadCount>:
1a0012e8:	b480      	push	{r7}
1a0012ea:	b083      	sub	sp, #12
1a0012ec:	af00      	add	r7, sp, #0
1a0012ee:	6078      	str	r0, [r7, #4]
1a0012f0:	687b      	ldr	r3, [r7, #4]
1a0012f2:	689b      	ldr	r3, [r3, #8]
1a0012f4:	4618      	mov	r0, r3
1a0012f6:	370c      	adds	r7, #12
1a0012f8:	46bd      	mov	sp, r7
1a0012fa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012fe:	4770      	bx	lr

1a001300 <StopWatch_Start>:
1a001300:	b580      	push	{r7, lr}
1a001302:	af00      	add	r7, sp, #0
1a001304:	4802      	ldr	r0, [pc, #8]	; (1a001310 <StopWatch_Start+0x10>)
1a001306:	f7ff ffef 	bl	1a0012e8 <Chip_TIMER_ReadCount>
1a00130a:	4603      	mov	r3, r0
1a00130c:	4618      	mov	r0, r3
1a00130e:	bd80      	pop	{r7, pc}
1a001310:	40084000 	.word	0x40084000

1a001314 <StopWatch_MsToTicks>:
1a001314:	b480      	push	{r7}
1a001316:	b083      	sub	sp, #12
1a001318:	af00      	add	r7, sp, #0
1a00131a:	6078      	str	r0, [r7, #4]
1a00131c:	4b05      	ldr	r3, [pc, #20]	; (1a001334 <StopWatch_MsToTicks+0x20>)
1a00131e:	681b      	ldr	r3, [r3, #0]
1a001320:	687a      	ldr	r2, [r7, #4]
1a001322:	fb02 f303 	mul.w	r3, r2, r3
1a001326:	4618      	mov	r0, r3
1a001328:	370c      	adds	r7, #12
1a00132a:	46bd      	mov	sp, r7
1a00132c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001330:	4770      	bx	lr
1a001332:	bf00      	nop
1a001334:	10000004 	.word	0x10000004

1a001338 <RingBuffer_GetCount>:
1a001338:	b480      	push	{r7}
1a00133a:	b083      	sub	sp, #12
1a00133c:	af00      	add	r7, sp, #0
1a00133e:	6078      	str	r0, [r7, #4]
1a001340:	687b      	ldr	r3, [r7, #4]
1a001342:	330c      	adds	r3, #12
1a001344:	681a      	ldr	r2, [r3, #0]
1a001346:	687b      	ldr	r3, [r7, #4]
1a001348:	3310      	adds	r3, #16
1a00134a:	681b      	ldr	r3, [r3, #0]
1a00134c:	1ad3      	subs	r3, r2, r3
1a00134e:	4618      	mov	r0, r3
1a001350:	370c      	adds	r7, #12
1a001352:	46bd      	mov	sp, r7
1a001354:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001358:	4770      	bx	lr

1a00135a <RingBuffer_GetFree>:
1a00135a:	b590      	push	{r4, r7, lr}
1a00135c:	b083      	sub	sp, #12
1a00135e:	af00      	add	r7, sp, #0
1a001360:	6078      	str	r0, [r7, #4]
1a001362:	687b      	ldr	r3, [r7, #4]
1a001364:	685c      	ldr	r4, [r3, #4]
1a001366:	6878      	ldr	r0, [r7, #4]
1a001368:	f7ff ffe6 	bl	1a001338 <RingBuffer_GetCount>
1a00136c:	4603      	mov	r3, r0
1a00136e:	1ae3      	subs	r3, r4, r3
1a001370:	4618      	mov	r0, r3
1a001372:	370c      	adds	r7, #12
1a001374:	46bd      	mov	sp, r7
1a001376:	bd90      	pop	{r4, r7, pc}

1a001378 <RingBuffer_IsFull>:
1a001378:	b580      	push	{r7, lr}
1a00137a:	b082      	sub	sp, #8
1a00137c:	af00      	add	r7, sp, #0
1a00137e:	6078      	str	r0, [r7, #4]
1a001380:	6878      	ldr	r0, [r7, #4]
1a001382:	f7ff ffd9 	bl	1a001338 <RingBuffer_GetCount>
1a001386:	4602      	mov	r2, r0
1a001388:	687b      	ldr	r3, [r7, #4]
1a00138a:	685b      	ldr	r3, [r3, #4]
1a00138c:	429a      	cmp	r2, r3
1a00138e:	bfac      	ite	ge
1a001390:	2301      	movge	r3, #1
1a001392:	2300      	movlt	r3, #0
1a001394:	b2db      	uxtb	r3, r3
1a001396:	4618      	mov	r0, r3
1a001398:	3708      	adds	r7, #8
1a00139a:	46bd      	mov	sp, r7
1a00139c:	bd80      	pop	{r7, pc}

1a00139e <RingBuffer_IsEmpty>:
1a00139e:	b480      	push	{r7}
1a0013a0:	b083      	sub	sp, #12
1a0013a2:	af00      	add	r7, sp, #0
1a0013a4:	6078      	str	r0, [r7, #4]
1a0013a6:	687b      	ldr	r3, [r7, #4]
1a0013a8:	330c      	adds	r3, #12
1a0013aa:	681a      	ldr	r2, [r3, #0]
1a0013ac:	687b      	ldr	r3, [r7, #4]
1a0013ae:	3310      	adds	r3, #16
1a0013b0:	681b      	ldr	r3, [r3, #0]
1a0013b2:	429a      	cmp	r2, r3
1a0013b4:	bf0c      	ite	eq
1a0013b6:	2301      	moveq	r3, #1
1a0013b8:	2300      	movne	r3, #0
1a0013ba:	b2db      	uxtb	r3, r3
1a0013bc:	4618      	mov	r0, r3
1a0013be:	370c      	adds	r7, #12
1a0013c0:	46bd      	mov	sp, r7
1a0013c2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0013c6:	4770      	bx	lr

1a0013c8 <RingBuffer_Init>:
1a0013c8:	b480      	push	{r7}
1a0013ca:	b085      	sub	sp, #20
1a0013cc:	af00      	add	r7, sp, #0
1a0013ce:	60f8      	str	r0, [r7, #12]
1a0013d0:	60b9      	str	r1, [r7, #8]
1a0013d2:	607a      	str	r2, [r7, #4]
1a0013d4:	603b      	str	r3, [r7, #0]
1a0013d6:	68fb      	ldr	r3, [r7, #12]
1a0013d8:	68ba      	ldr	r2, [r7, #8]
1a0013da:	601a      	str	r2, [r3, #0]
1a0013dc:	68fb      	ldr	r3, [r7, #12]
1a0013de:	683a      	ldr	r2, [r7, #0]
1a0013e0:	605a      	str	r2, [r3, #4]
1a0013e2:	68fb      	ldr	r3, [r7, #12]
1a0013e4:	687a      	ldr	r2, [r7, #4]
1a0013e6:	609a      	str	r2, [r3, #8]
1a0013e8:	68fb      	ldr	r3, [r7, #12]
1a0013ea:	2200      	movs	r2, #0
1a0013ec:	611a      	str	r2, [r3, #16]
1a0013ee:	68fb      	ldr	r3, [r7, #12]
1a0013f0:	691a      	ldr	r2, [r3, #16]
1a0013f2:	68fb      	ldr	r3, [r7, #12]
1a0013f4:	60da      	str	r2, [r3, #12]
1a0013f6:	2301      	movs	r3, #1
1a0013f8:	4618      	mov	r0, r3
1a0013fa:	3714      	adds	r7, #20
1a0013fc:	46bd      	mov	sp, r7
1a0013fe:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001402:	4770      	bx	lr

1a001404 <RingBuffer_Insert>:
1a001404:	b580      	push	{r7, lr}
1a001406:	b084      	sub	sp, #16
1a001408:	af00      	add	r7, sp, #0
1a00140a:	6078      	str	r0, [r7, #4]
1a00140c:	6039      	str	r1, [r7, #0]
1a00140e:	687b      	ldr	r3, [r7, #4]
1a001410:	681b      	ldr	r3, [r3, #0]
1a001412:	60fb      	str	r3, [r7, #12]
1a001414:	6878      	ldr	r0, [r7, #4]
1a001416:	f7ff ffaf 	bl	1a001378 <RingBuffer_IsFull>
1a00141a:	4603      	mov	r3, r0
1a00141c:	2b00      	cmp	r3, #0
1a00141e:	d001      	beq.n	1a001424 <RingBuffer_Insert+0x20>
1a001420:	2300      	movs	r3, #0
1a001422:	e019      	b.n	1a001458 <RingBuffer_Insert+0x54>
1a001424:	687b      	ldr	r3, [r7, #4]
1a001426:	68db      	ldr	r3, [r3, #12]
1a001428:	687a      	ldr	r2, [r7, #4]
1a00142a:	6852      	ldr	r2, [r2, #4]
1a00142c:	3a01      	subs	r2, #1
1a00142e:	4013      	ands	r3, r2
1a001430:	687a      	ldr	r2, [r7, #4]
1a001432:	6892      	ldr	r2, [r2, #8]
1a001434:	fb02 f303 	mul.w	r3, r2, r3
1a001438:	68fa      	ldr	r2, [r7, #12]
1a00143a:	4413      	add	r3, r2
1a00143c:	60fb      	str	r3, [r7, #12]
1a00143e:	687b      	ldr	r3, [r7, #4]
1a001440:	689b      	ldr	r3, [r3, #8]
1a001442:	461a      	mov	r2, r3
1a001444:	6839      	ldr	r1, [r7, #0]
1a001446:	68f8      	ldr	r0, [r7, #12]
1a001448:	f000 fd92 	bl	1a001f70 <memcpy>
1a00144c:	687b      	ldr	r3, [r7, #4]
1a00144e:	68db      	ldr	r3, [r3, #12]
1a001450:	1c5a      	adds	r2, r3, #1
1a001452:	687b      	ldr	r3, [r7, #4]
1a001454:	60da      	str	r2, [r3, #12]
1a001456:	2301      	movs	r3, #1
1a001458:	4618      	mov	r0, r3
1a00145a:	3710      	adds	r7, #16
1a00145c:	46bd      	mov	sp, r7
1a00145e:	bd80      	pop	{r7, pc}

1a001460 <RingBuffer_InsertMult>:
1a001460:	b580      	push	{r7, lr}
1a001462:	b088      	sub	sp, #32
1a001464:	af00      	add	r7, sp, #0
1a001466:	60f8      	str	r0, [r7, #12]
1a001468:	60b9      	str	r1, [r7, #8]
1a00146a:	607a      	str	r2, [r7, #4]
1a00146c:	68fb      	ldr	r3, [r7, #12]
1a00146e:	681b      	ldr	r3, [r3, #0]
1a001470:	61bb      	str	r3, [r7, #24]
1a001472:	68f8      	ldr	r0, [r7, #12]
1a001474:	f7ff ff80 	bl	1a001378 <RingBuffer_IsFull>
1a001478:	4603      	mov	r3, r0
1a00147a:	2b00      	cmp	r3, #0
1a00147c:	d001      	beq.n	1a001482 <RingBuffer_InsertMult+0x22>
1a00147e:	2300      	movs	r3, #0
1a001480:	e07b      	b.n	1a00157a <RingBuffer_InsertMult+0x11a>
1a001482:	68f8      	ldr	r0, [r7, #12]
1a001484:	f7ff ff69 	bl	1a00135a <RingBuffer_GetFree>
1a001488:	6178      	str	r0, [r7, #20]
1a00148a:	697b      	ldr	r3, [r7, #20]
1a00148c:	61fb      	str	r3, [r7, #28]
1a00148e:	68fb      	ldr	r3, [r7, #12]
1a001490:	68db      	ldr	r3, [r3, #12]
1a001492:	68fa      	ldr	r2, [r7, #12]
1a001494:	6852      	ldr	r2, [r2, #4]
1a001496:	3a01      	subs	r2, #1
1a001498:	401a      	ands	r2, r3
1a00149a:	69fb      	ldr	r3, [r7, #28]
1a00149c:	4413      	add	r3, r2
1a00149e:	68fa      	ldr	r2, [r7, #12]
1a0014a0:	6852      	ldr	r2, [r2, #4]
1a0014a2:	4293      	cmp	r3, r2
1a0014a4:	d30a      	bcc.n	1a0014bc <RingBuffer_InsertMult+0x5c>
1a0014a6:	68fb      	ldr	r3, [r7, #12]
1a0014a8:	685b      	ldr	r3, [r3, #4]
1a0014aa:	4619      	mov	r1, r3
1a0014ac:	68fb      	ldr	r3, [r7, #12]
1a0014ae:	68db      	ldr	r3, [r3, #12]
1a0014b0:	68fa      	ldr	r2, [r7, #12]
1a0014b2:	6852      	ldr	r2, [r2, #4]
1a0014b4:	3a01      	subs	r2, #1
1a0014b6:	4013      	ands	r3, r2
1a0014b8:	1acb      	subs	r3, r1, r3
1a0014ba:	61fb      	str	r3, [r7, #28]
1a0014bc:	697a      	ldr	r2, [r7, #20]
1a0014be:	69fb      	ldr	r3, [r7, #28]
1a0014c0:	1ad3      	subs	r3, r2, r3
1a0014c2:	617b      	str	r3, [r7, #20]
1a0014c4:	69fa      	ldr	r2, [r7, #28]
1a0014c6:	687b      	ldr	r3, [r7, #4]
1a0014c8:	4293      	cmp	r3, r2
1a0014ca:	bfa8      	it	ge
1a0014cc:	4613      	movge	r3, r2
1a0014ce:	61fb      	str	r3, [r7, #28]
1a0014d0:	687a      	ldr	r2, [r7, #4]
1a0014d2:	69fb      	ldr	r3, [r7, #28]
1a0014d4:	1ad3      	subs	r3, r2, r3
1a0014d6:	607b      	str	r3, [r7, #4]
1a0014d8:	697a      	ldr	r2, [r7, #20]
1a0014da:	687b      	ldr	r3, [r7, #4]
1a0014dc:	4293      	cmp	r3, r2
1a0014de:	bfa8      	it	ge
1a0014e0:	4613      	movge	r3, r2
1a0014e2:	617b      	str	r3, [r7, #20]
1a0014e4:	687a      	ldr	r2, [r7, #4]
1a0014e6:	697b      	ldr	r3, [r7, #20]
1a0014e8:	1ad3      	subs	r3, r2, r3
1a0014ea:	607b      	str	r3, [r7, #4]
1a0014ec:	68fb      	ldr	r3, [r7, #12]
1a0014ee:	68db      	ldr	r3, [r3, #12]
1a0014f0:	68fa      	ldr	r2, [r7, #12]
1a0014f2:	6852      	ldr	r2, [r2, #4]
1a0014f4:	3a01      	subs	r2, #1
1a0014f6:	4013      	ands	r3, r2
1a0014f8:	68fa      	ldr	r2, [r7, #12]
1a0014fa:	6892      	ldr	r2, [r2, #8]
1a0014fc:	fb02 f303 	mul.w	r3, r2, r3
1a001500:	69ba      	ldr	r2, [r7, #24]
1a001502:	4413      	add	r3, r2
1a001504:	61bb      	str	r3, [r7, #24]
1a001506:	68fb      	ldr	r3, [r7, #12]
1a001508:	689b      	ldr	r3, [r3, #8]
1a00150a:	69fa      	ldr	r2, [r7, #28]
1a00150c:	fb02 f303 	mul.w	r3, r2, r3
1a001510:	461a      	mov	r2, r3
1a001512:	68b9      	ldr	r1, [r7, #8]
1a001514:	69b8      	ldr	r0, [r7, #24]
1a001516:	f000 fd2b 	bl	1a001f70 <memcpy>
1a00151a:	68fb      	ldr	r3, [r7, #12]
1a00151c:	68da      	ldr	r2, [r3, #12]
1a00151e:	69fb      	ldr	r3, [r7, #28]
1a001520:	441a      	add	r2, r3
1a001522:	68fb      	ldr	r3, [r7, #12]
1a001524:	60da      	str	r2, [r3, #12]
1a001526:	68fb      	ldr	r3, [r7, #12]
1a001528:	681a      	ldr	r2, [r3, #0]
1a00152a:	68fb      	ldr	r3, [r7, #12]
1a00152c:	68db      	ldr	r3, [r3, #12]
1a00152e:	68f9      	ldr	r1, [r7, #12]
1a001530:	6849      	ldr	r1, [r1, #4]
1a001532:	3901      	subs	r1, #1
1a001534:	400b      	ands	r3, r1
1a001536:	68f9      	ldr	r1, [r7, #12]
1a001538:	6889      	ldr	r1, [r1, #8]
1a00153a:	fb01 f303 	mul.w	r3, r1, r3
1a00153e:	4413      	add	r3, r2
1a001540:	61bb      	str	r3, [r7, #24]
1a001542:	68fb      	ldr	r3, [r7, #12]
1a001544:	689b      	ldr	r3, [r3, #8]
1a001546:	69fa      	ldr	r2, [r7, #28]
1a001548:	fb02 f303 	mul.w	r3, r2, r3
1a00154c:	461a      	mov	r2, r3
1a00154e:	68bb      	ldr	r3, [r7, #8]
1a001550:	4413      	add	r3, r2
1a001552:	60bb      	str	r3, [r7, #8]
1a001554:	68fb      	ldr	r3, [r7, #12]
1a001556:	689b      	ldr	r3, [r3, #8]
1a001558:	697a      	ldr	r2, [r7, #20]
1a00155a:	fb02 f303 	mul.w	r3, r2, r3
1a00155e:	461a      	mov	r2, r3
1a001560:	68b9      	ldr	r1, [r7, #8]
1a001562:	69b8      	ldr	r0, [r7, #24]
1a001564:	f000 fd04 	bl	1a001f70 <memcpy>
1a001568:	68fb      	ldr	r3, [r7, #12]
1a00156a:	68da      	ldr	r2, [r3, #12]
1a00156c:	697b      	ldr	r3, [r7, #20]
1a00156e:	441a      	add	r2, r3
1a001570:	68fb      	ldr	r3, [r7, #12]
1a001572:	60da      	str	r2, [r3, #12]
1a001574:	69fa      	ldr	r2, [r7, #28]
1a001576:	697b      	ldr	r3, [r7, #20]
1a001578:	4413      	add	r3, r2
1a00157a:	4618      	mov	r0, r3
1a00157c:	3720      	adds	r7, #32
1a00157e:	46bd      	mov	sp, r7
1a001580:	bd80      	pop	{r7, pc}

1a001582 <RingBuffer_Pop>:
1a001582:	b580      	push	{r7, lr}
1a001584:	b084      	sub	sp, #16
1a001586:	af00      	add	r7, sp, #0
1a001588:	6078      	str	r0, [r7, #4]
1a00158a:	6039      	str	r1, [r7, #0]
1a00158c:	687b      	ldr	r3, [r7, #4]
1a00158e:	681b      	ldr	r3, [r3, #0]
1a001590:	60fb      	str	r3, [r7, #12]
1a001592:	6878      	ldr	r0, [r7, #4]
1a001594:	f7ff ff03 	bl	1a00139e <RingBuffer_IsEmpty>
1a001598:	4603      	mov	r3, r0
1a00159a:	2b00      	cmp	r3, #0
1a00159c:	d001      	beq.n	1a0015a2 <RingBuffer_Pop+0x20>
1a00159e:	2300      	movs	r3, #0
1a0015a0:	e019      	b.n	1a0015d6 <RingBuffer_Pop+0x54>
1a0015a2:	687b      	ldr	r3, [r7, #4]
1a0015a4:	691b      	ldr	r3, [r3, #16]
1a0015a6:	687a      	ldr	r2, [r7, #4]
1a0015a8:	6852      	ldr	r2, [r2, #4]
1a0015aa:	3a01      	subs	r2, #1
1a0015ac:	4013      	ands	r3, r2
1a0015ae:	687a      	ldr	r2, [r7, #4]
1a0015b0:	6892      	ldr	r2, [r2, #8]
1a0015b2:	fb02 f303 	mul.w	r3, r2, r3
1a0015b6:	68fa      	ldr	r2, [r7, #12]
1a0015b8:	4413      	add	r3, r2
1a0015ba:	60fb      	str	r3, [r7, #12]
1a0015bc:	687b      	ldr	r3, [r7, #4]
1a0015be:	689b      	ldr	r3, [r3, #8]
1a0015c0:	461a      	mov	r2, r3
1a0015c2:	68f9      	ldr	r1, [r7, #12]
1a0015c4:	6838      	ldr	r0, [r7, #0]
1a0015c6:	f000 fcd3 	bl	1a001f70 <memcpy>
1a0015ca:	687b      	ldr	r3, [r7, #4]
1a0015cc:	691b      	ldr	r3, [r3, #16]
1a0015ce:	1c5a      	adds	r2, r3, #1
1a0015d0:	687b      	ldr	r3, [r7, #4]
1a0015d2:	611a      	str	r2, [r3, #16]
1a0015d4:	2301      	movs	r3, #1
1a0015d6:	4618      	mov	r0, r3
1a0015d8:	3710      	adds	r7, #16
1a0015da:	46bd      	mov	sp, r7
1a0015dc:	bd80      	pop	{r7, pc}

1a0015de <ABS>:
1a0015de:	b480      	push	{r7}
1a0015e0:	b083      	sub	sp, #12
1a0015e2:	af00      	add	r7, sp, #0
1a0015e4:	6078      	str	r0, [r7, #4]
1a0015e6:	687b      	ldr	r3, [r7, #4]
1a0015e8:	2b00      	cmp	r3, #0
1a0015ea:	da02      	bge.n	1a0015f2 <ABS+0x14>
1a0015ec:	687b      	ldr	r3, [r7, #4]
1a0015ee:	425b      	negs	r3, r3
1a0015f0:	e000      	b.n	1a0015f4 <ABS+0x16>
1a0015f2:	687b      	ldr	r3, [r7, #4]
1a0015f4:	4618      	mov	r0, r3
1a0015f6:	370c      	adds	r7, #12
1a0015f8:	46bd      	mov	sp, r7
1a0015fa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015fe:	4770      	bx	lr

1a001600 <pll_calc_divs>:
1a001600:	b580      	push	{r7, lr}
1a001602:	b088      	sub	sp, #32
1a001604:	af00      	add	r7, sp, #0
1a001606:	6078      	str	r0, [r7, #4]
1a001608:	6039      	str	r1, [r7, #0]
1a00160a:	687b      	ldr	r3, [r7, #4]
1a00160c:	61fb      	str	r3, [r7, #28]
1a00160e:	683b      	ldr	r3, [r7, #0]
1a001610:	681b      	ldr	r3, [r3, #0]
1a001612:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001616:	2b00      	cmp	r3, #0
1a001618:	d005      	beq.n	1a001626 <pll_calc_divs+0x26>
1a00161a:	683b      	ldr	r3, [r7, #0]
1a00161c:	681b      	ldr	r3, [r3, #0]
1a00161e:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a001622:	683b      	ldr	r3, [r7, #0]
1a001624:	601a      	str	r2, [r3, #0]
1a001626:	2301      	movs	r3, #1
1a001628:	61bb      	str	r3, [r7, #24]
1a00162a:	e06f      	b.n	1a00170c <pll_calc_divs+0x10c>
1a00162c:	2300      	movs	r3, #0
1a00162e:	613b      	str	r3, [r7, #16]
1a001630:	e066      	b.n	1a001700 <pll_calc_divs+0x100>
1a001632:	2301      	movs	r3, #1
1a001634:	617b      	str	r3, [r7, #20]
1a001636:	e05a      	b.n	1a0016ee <pll_calc_divs+0xee>
1a001638:	683b      	ldr	r3, [r7, #0]
1a00163a:	681b      	ldr	r3, [r3, #0]
1a00163c:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a001640:	2b00      	cmp	r3, #0
1a001642:	d00e      	beq.n	1a001662 <pll_calc_divs+0x62>
1a001644:	693b      	ldr	r3, [r7, #16]
1a001646:	3301      	adds	r3, #1
1a001648:	697a      	ldr	r2, [r7, #20]
1a00164a:	fa02 f303 	lsl.w	r3, r2, r3
1a00164e:	461a      	mov	r2, r3
1a001650:	683b      	ldr	r3, [r7, #0]
1a001652:	695b      	ldr	r3, [r3, #20]
1a001654:	fb03 f202 	mul.w	r2, r3, r2
1a001658:	69bb      	ldr	r3, [r7, #24]
1a00165a:	fbb2 f3f3 	udiv	r3, r2, r3
1a00165e:	60fb      	str	r3, [r7, #12]
1a001660:	e008      	b.n	1a001674 <pll_calc_divs+0x74>
1a001662:	683b      	ldr	r3, [r7, #0]
1a001664:	695b      	ldr	r3, [r3, #20]
1a001666:	697a      	ldr	r2, [r7, #20]
1a001668:	fb02 f203 	mul.w	r2, r2, r3
1a00166c:	69bb      	ldr	r3, [r7, #24]
1a00166e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001672:	60fb      	str	r3, [r7, #12]
1a001674:	68fb      	ldr	r3, [r7, #12]
1a001676:	4a29      	ldr	r2, [pc, #164]	; (1a00171c <pll_calc_divs+0x11c>)
1a001678:	4293      	cmp	r3, r2
1a00167a:	d934      	bls.n	1a0016e6 <pll_calc_divs+0xe6>
1a00167c:	68fb      	ldr	r3, [r7, #12]
1a00167e:	4a28      	ldr	r2, [pc, #160]	; (1a001720 <pll_calc_divs+0x120>)
1a001680:	4293      	cmp	r3, r2
1a001682:	d839      	bhi.n	1a0016f8 <pll_calc_divs+0xf8>
1a001684:	683b      	ldr	r3, [r7, #0]
1a001686:	681b      	ldr	r3, [r3, #0]
1a001688:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00168c:	2b00      	cmp	r3, #0
1a00168e:	d002      	beq.n	1a001696 <pll_calc_divs+0x96>
1a001690:	68fb      	ldr	r3, [r7, #12]
1a001692:	60bb      	str	r3, [r7, #8]
1a001694:	e005      	b.n	1a0016a2 <pll_calc_divs+0xa2>
1a001696:	693b      	ldr	r3, [r7, #16]
1a001698:	3301      	adds	r3, #1
1a00169a:	68fa      	ldr	r2, [r7, #12]
1a00169c:	fa22 f303 	lsr.w	r3, r2, r3
1a0016a0:	60bb      	str	r3, [r7, #8]
1a0016a2:	687a      	ldr	r2, [r7, #4]
1a0016a4:	68bb      	ldr	r3, [r7, #8]
1a0016a6:	1ad3      	subs	r3, r2, r3
1a0016a8:	4618      	mov	r0, r3
1a0016aa:	f7ff ff98 	bl	1a0015de <ABS>
1a0016ae:	4602      	mov	r2, r0
1a0016b0:	69fb      	ldr	r3, [r7, #28]
1a0016b2:	4293      	cmp	r3, r2
1a0016b4:	d918      	bls.n	1a0016e8 <pll_calc_divs+0xe8>
1a0016b6:	683b      	ldr	r3, [r7, #0]
1a0016b8:	69ba      	ldr	r2, [r7, #24]
1a0016ba:	609a      	str	r2, [r3, #8]
1a0016bc:	693b      	ldr	r3, [r7, #16]
1a0016be:	1c5a      	adds	r2, r3, #1
1a0016c0:	683b      	ldr	r3, [r7, #0]
1a0016c2:	60da      	str	r2, [r3, #12]
1a0016c4:	683b      	ldr	r3, [r7, #0]
1a0016c6:	697a      	ldr	r2, [r7, #20]
1a0016c8:	611a      	str	r2, [r3, #16]
1a0016ca:	683b      	ldr	r3, [r7, #0]
1a0016cc:	68ba      	ldr	r2, [r7, #8]
1a0016ce:	619a      	str	r2, [r3, #24]
1a0016d0:	683b      	ldr	r3, [r7, #0]
1a0016d2:	68fa      	ldr	r2, [r7, #12]
1a0016d4:	61da      	str	r2, [r3, #28]
1a0016d6:	687a      	ldr	r2, [r7, #4]
1a0016d8:	68bb      	ldr	r3, [r7, #8]
1a0016da:	1ad3      	subs	r3, r2, r3
1a0016dc:	4618      	mov	r0, r3
1a0016de:	f7ff ff7e 	bl	1a0015de <ABS>
1a0016e2:	61f8      	str	r0, [r7, #28]
1a0016e4:	e000      	b.n	1a0016e8 <pll_calc_divs+0xe8>
1a0016e6:	bf00      	nop
1a0016e8:	697b      	ldr	r3, [r7, #20]
1a0016ea:	3301      	adds	r3, #1
1a0016ec:	617b      	str	r3, [r7, #20]
1a0016ee:	697b      	ldr	r3, [r7, #20]
1a0016f0:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a0016f4:	dda0      	ble.n	1a001638 <pll_calc_divs+0x38>
1a0016f6:	e000      	b.n	1a0016fa <pll_calc_divs+0xfa>
1a0016f8:	bf00      	nop
1a0016fa:	693b      	ldr	r3, [r7, #16]
1a0016fc:	3301      	adds	r3, #1
1a0016fe:	613b      	str	r3, [r7, #16]
1a001700:	693b      	ldr	r3, [r7, #16]
1a001702:	2b03      	cmp	r3, #3
1a001704:	dd95      	ble.n	1a001632 <pll_calc_divs+0x32>
1a001706:	69bb      	ldr	r3, [r7, #24]
1a001708:	3301      	adds	r3, #1
1a00170a:	61bb      	str	r3, [r7, #24]
1a00170c:	69bb      	ldr	r3, [r7, #24]
1a00170e:	2b04      	cmp	r3, #4
1a001710:	dd8c      	ble.n	1a00162c <pll_calc_divs+0x2c>
1a001712:	bf00      	nop
1a001714:	3720      	adds	r7, #32
1a001716:	46bd      	mov	sp, r7
1a001718:	bd80      	pop	{r7, pc}
1a00171a:	bf00      	nop
1a00171c:	094c5eff 	.word	0x094c5eff
1a001720:	1312d000 	.word	0x1312d000

1a001724 <pll_get_frac>:
1a001724:	b5b0      	push	{r4, r5, r7, lr}
1a001726:	b09e      	sub	sp, #120	; 0x78
1a001728:	af00      	add	r7, sp, #0
1a00172a:	6078      	str	r0, [r7, #4]
1a00172c:	6039      	str	r1, [r7, #0]
1a00172e:	f107 030c 	add.w	r3, r7, #12
1a001732:	2260      	movs	r2, #96	; 0x60
1a001734:	2100      	movs	r1, #0
1a001736:	4618      	mov	r0, r3
1a001738:	f7fe fde2 	bl	1a000300 <memset>
1a00173c:	68fb      	ldr	r3, [r7, #12]
1a00173e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a001742:	60fb      	str	r3, [r7, #12]
1a001744:	683b      	ldr	r3, [r7, #0]
1a001746:	695b      	ldr	r3, [r3, #20]
1a001748:	623b      	str	r3, [r7, #32]
1a00174a:	683b      	ldr	r3, [r7, #0]
1a00174c:	791b      	ldrb	r3, [r3, #4]
1a00174e:	743b      	strb	r3, [r7, #16]
1a001750:	f107 030c 	add.w	r3, r7, #12
1a001754:	4619      	mov	r1, r3
1a001756:	6878      	ldr	r0, [r7, #4]
1a001758:	f7ff ff52 	bl	1a001600 <pll_calc_divs>
1a00175c:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00175e:	687a      	ldr	r2, [r7, #4]
1a001760:	429a      	cmp	r2, r3
1a001762:	d10a      	bne.n	1a00177a <pll_get_frac+0x56>
1a001764:	683b      	ldr	r3, [r7, #0]
1a001766:	461d      	mov	r5, r3
1a001768:	f107 040c 	add.w	r4, r7, #12
1a00176c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00176e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001770:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001774:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001778:	e08e      	b.n	1a001898 <pll_get_frac+0x174>
1a00177a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00177c:	687a      	ldr	r2, [r7, #4]
1a00177e:	1ad3      	subs	r3, r2, r3
1a001780:	4618      	mov	r0, r3
1a001782:	f7ff ff2c 	bl	1a0015de <ABS>
1a001786:	4603      	mov	r3, r0
1a001788:	66fb      	str	r3, [r7, #108]	; 0x6c
1a00178a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a00178c:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001790:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001792:	683b      	ldr	r3, [r7, #0]
1a001794:	695b      	ldr	r3, [r3, #20]
1a001796:	663b      	str	r3, [r7, #96]	; 0x60
1a001798:	683b      	ldr	r3, [r7, #0]
1a00179a:	791b      	ldrb	r3, [r3, #4]
1a00179c:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a0017a0:	f107 030c 	add.w	r3, r7, #12
1a0017a4:	3340      	adds	r3, #64	; 0x40
1a0017a6:	4619      	mov	r1, r3
1a0017a8:	6878      	ldr	r0, [r7, #4]
1a0017aa:	f7ff ff29 	bl	1a001600 <pll_calc_divs>
1a0017ae:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a0017b0:	687a      	ldr	r2, [r7, #4]
1a0017b2:	429a      	cmp	r2, r3
1a0017b4:	d10a      	bne.n	1a0017cc <pll_get_frac+0xa8>
1a0017b6:	683b      	ldr	r3, [r7, #0]
1a0017b8:	461d      	mov	r5, r3
1a0017ba:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0017be:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0017c0:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0017c2:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0017c6:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0017ca:	e065      	b.n	1a001898 <pll_get_frac+0x174>
1a0017cc:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a0017ce:	687a      	ldr	r2, [r7, #4]
1a0017d0:	1ad3      	subs	r3, r2, r3
1a0017d2:	4618      	mov	r0, r3
1a0017d4:	f7ff ff03 	bl	1a0015de <ABS>
1a0017d8:	4603      	mov	r3, r0
1a0017da:	677b      	str	r3, [r7, #116]	; 0x74
1a0017dc:	687b      	ldr	r3, [r7, #4]
1a0017de:	4a30      	ldr	r2, [pc, #192]	; (1a0018a0 <pll_get_frac+0x17c>)
1a0017e0:	4293      	cmp	r3, r2
1a0017e2:	d81a      	bhi.n	1a00181a <pll_get_frac+0xf6>
1a0017e4:	2340      	movs	r3, #64	; 0x40
1a0017e6:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0017e8:	683b      	ldr	r3, [r7, #0]
1a0017ea:	695b      	ldr	r3, [r3, #20]
1a0017ec:	643b      	str	r3, [r7, #64]	; 0x40
1a0017ee:	f107 030c 	add.w	r3, r7, #12
1a0017f2:	3320      	adds	r3, #32
1a0017f4:	4619      	mov	r1, r3
1a0017f6:	6878      	ldr	r0, [r7, #4]
1a0017f8:	f7ff ff02 	bl	1a001600 <pll_calc_divs>
1a0017fc:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a0017fe:	687a      	ldr	r2, [r7, #4]
1a001800:	429a      	cmp	r2, r3
1a001802:	d10a      	bne.n	1a00181a <pll_get_frac+0xf6>
1a001804:	683b      	ldr	r3, [r7, #0]
1a001806:	461d      	mov	r5, r3
1a001808:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a00180c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00180e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001810:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001814:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001818:	e03e      	b.n	1a001898 <pll_get_frac+0x174>
1a00181a:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a00181c:	687a      	ldr	r2, [r7, #4]
1a00181e:	1ad3      	subs	r3, r2, r3
1a001820:	4618      	mov	r0, r3
1a001822:	f7ff fedc 	bl	1a0015de <ABS>
1a001826:	4603      	mov	r3, r0
1a001828:	673b      	str	r3, [r7, #112]	; 0x70
1a00182a:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a00182c:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a00182e:	429a      	cmp	r2, r3
1a001830:	dc19      	bgt.n	1a001866 <pll_get_frac+0x142>
1a001832:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001834:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001836:	429a      	cmp	r2, r3
1a001838:	dc0a      	bgt.n	1a001850 <pll_get_frac+0x12c>
1a00183a:	683b      	ldr	r3, [r7, #0]
1a00183c:	461d      	mov	r5, r3
1a00183e:	f107 040c 	add.w	r4, r7, #12
1a001842:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001844:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001846:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00184a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00184e:	e023      	b.n	1a001898 <pll_get_frac+0x174>
1a001850:	683b      	ldr	r3, [r7, #0]
1a001852:	461d      	mov	r5, r3
1a001854:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001858:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00185a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00185c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001860:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001864:	e018      	b.n	1a001898 <pll_get_frac+0x174>
1a001866:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001868:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a00186a:	429a      	cmp	r2, r3
1a00186c:	dc0a      	bgt.n	1a001884 <pll_get_frac+0x160>
1a00186e:	683b      	ldr	r3, [r7, #0]
1a001870:	461d      	mov	r5, r3
1a001872:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001876:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001878:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a00187a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00187e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001882:	e009      	b.n	1a001898 <pll_get_frac+0x174>
1a001884:	683b      	ldr	r3, [r7, #0]
1a001886:	461d      	mov	r5, r3
1a001888:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a00188c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00188e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001890:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001894:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001898:	3778      	adds	r7, #120	; 0x78
1a00189a:	46bd      	mov	sp, r7
1a00189c:	bdb0      	pop	{r4, r5, r7, pc}
1a00189e:	bf00      	nop
1a0018a0:	068e7780 	.word	0x068e7780

1a0018a4 <Chip_Clock_GetDivRate>:
1a0018a4:	b580      	push	{r7, lr}
1a0018a6:	b084      	sub	sp, #16
1a0018a8:	af00      	add	r7, sp, #0
1a0018aa:	4603      	mov	r3, r0
1a0018ac:	460a      	mov	r2, r1
1a0018ae:	71fb      	strb	r3, [r7, #7]
1a0018b0:	4613      	mov	r3, r2
1a0018b2:	71bb      	strb	r3, [r7, #6]
1a0018b4:	79bb      	ldrb	r3, [r7, #6]
1a0018b6:	4618      	mov	r0, r3
1a0018b8:	f000 f960 	bl	1a001b7c <Chip_Clock_GetDividerSource>
1a0018bc:	4603      	mov	r3, r0
1a0018be:	73fb      	strb	r3, [r7, #15]
1a0018c0:	79bb      	ldrb	r3, [r7, #6]
1a0018c2:	4618      	mov	r0, r3
1a0018c4:	f000 f97a 	bl	1a001bbc <Chip_Clock_GetDividerDivisor>
1a0018c8:	60b8      	str	r0, [r7, #8]
1a0018ca:	7bfb      	ldrb	r3, [r7, #15]
1a0018cc:	4618      	mov	r0, r3
1a0018ce:	f000 f991 	bl	1a001bf4 <Chip_Clock_GetClockInputHz>
1a0018d2:	4602      	mov	r2, r0
1a0018d4:	68bb      	ldr	r3, [r7, #8]
1a0018d6:	3301      	adds	r3, #1
1a0018d8:	fbb2 f3f3 	udiv	r3, r2, r3
1a0018dc:	4618      	mov	r0, r3
1a0018de:	3710      	adds	r7, #16
1a0018e0:	46bd      	mov	sp, r7
1a0018e2:	bd80      	pop	{r7, pc}

1a0018e4 <Chip_Clock_FindBaseClock>:
1a0018e4:	b480      	push	{r7}
1a0018e6:	b085      	sub	sp, #20
1a0018e8:	af00      	add	r7, sp, #0
1a0018ea:	4603      	mov	r3, r0
1a0018ec:	80fb      	strh	r3, [r7, #6]
1a0018ee:	231c      	movs	r3, #28
1a0018f0:	73fb      	strb	r3, [r7, #15]
1a0018f2:	2300      	movs	r3, #0
1a0018f4:	60bb      	str	r3, [r7, #8]
1a0018f6:	e024      	b.n	1a001942 <Chip_Clock_FindBaseClock+0x5e>
1a0018f8:	491d      	ldr	r1, [pc, #116]	; (1a001970 <Chip_Clock_FindBaseClock+0x8c>)
1a0018fa:	68ba      	ldr	r2, [r7, #8]
1a0018fc:	4613      	mov	r3, r2
1a0018fe:	005b      	lsls	r3, r3, #1
1a001900:	4413      	add	r3, r2
1a001902:	005b      	lsls	r3, r3, #1
1a001904:	440b      	add	r3, r1
1a001906:	881b      	ldrh	r3, [r3, #0]
1a001908:	88fa      	ldrh	r2, [r7, #6]
1a00190a:	429a      	cmp	r2, r3
1a00190c:	d316      	bcc.n	1a00193c <Chip_Clock_FindBaseClock+0x58>
1a00190e:	4918      	ldr	r1, [pc, #96]	; (1a001970 <Chip_Clock_FindBaseClock+0x8c>)
1a001910:	68ba      	ldr	r2, [r7, #8]
1a001912:	4613      	mov	r3, r2
1a001914:	005b      	lsls	r3, r3, #1
1a001916:	4413      	add	r3, r2
1a001918:	005b      	lsls	r3, r3, #1
1a00191a:	440b      	add	r3, r1
1a00191c:	3302      	adds	r3, #2
1a00191e:	881b      	ldrh	r3, [r3, #0]
1a001920:	88fa      	ldrh	r2, [r7, #6]
1a001922:	429a      	cmp	r2, r3
1a001924:	d80a      	bhi.n	1a00193c <Chip_Clock_FindBaseClock+0x58>
1a001926:	4912      	ldr	r1, [pc, #72]	; (1a001970 <Chip_Clock_FindBaseClock+0x8c>)
1a001928:	68ba      	ldr	r2, [r7, #8]
1a00192a:	4613      	mov	r3, r2
1a00192c:	005b      	lsls	r3, r3, #1
1a00192e:	4413      	add	r3, r2
1a001930:	005b      	lsls	r3, r3, #1
1a001932:	440b      	add	r3, r1
1a001934:	3304      	adds	r3, #4
1a001936:	781b      	ldrb	r3, [r3, #0]
1a001938:	73fb      	strb	r3, [r7, #15]
1a00193a:	e002      	b.n	1a001942 <Chip_Clock_FindBaseClock+0x5e>
1a00193c:	68bb      	ldr	r3, [r7, #8]
1a00193e:	3301      	adds	r3, #1
1a001940:	60bb      	str	r3, [r7, #8]
1a001942:	7bfb      	ldrb	r3, [r7, #15]
1a001944:	2b1c      	cmp	r3, #28
1a001946:	d10b      	bne.n	1a001960 <Chip_Clock_FindBaseClock+0x7c>
1a001948:	4909      	ldr	r1, [pc, #36]	; (1a001970 <Chip_Clock_FindBaseClock+0x8c>)
1a00194a:	68ba      	ldr	r2, [r7, #8]
1a00194c:	4613      	mov	r3, r2
1a00194e:	005b      	lsls	r3, r3, #1
1a001950:	4413      	add	r3, r2
1a001952:	005b      	lsls	r3, r3, #1
1a001954:	440b      	add	r3, r1
1a001956:	3304      	adds	r3, #4
1a001958:	781b      	ldrb	r3, [r3, #0]
1a00195a:	7bfa      	ldrb	r2, [r7, #15]
1a00195c:	429a      	cmp	r2, r3
1a00195e:	d1cb      	bne.n	1a0018f8 <Chip_Clock_FindBaseClock+0x14>
1a001960:	7bfb      	ldrb	r3, [r7, #15]
1a001962:	4618      	mov	r0, r3
1a001964:	3714      	adds	r7, #20
1a001966:	46bd      	mov	sp, r7
1a001968:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00196c:	4770      	bx	lr
1a00196e:	bf00      	nop
1a001970:	1a002280 	.word	0x1a002280

1a001974 <Chip_Clock_EnableCrystal>:
1a001974:	b480      	push	{r7}
1a001976:	b083      	sub	sp, #12
1a001978:	af00      	add	r7, sp, #0
1a00197a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a00197e:	603b      	str	r3, [r7, #0]
1a001980:	4b15      	ldr	r3, [pc, #84]	; (1a0019d8 <Chip_Clock_EnableCrystal+0x64>)
1a001982:	699b      	ldr	r3, [r3, #24]
1a001984:	607b      	str	r3, [r7, #4]
1a001986:	687b      	ldr	r3, [r7, #4]
1a001988:	f023 0302 	bic.w	r3, r3, #2
1a00198c:	607b      	str	r3, [r7, #4]
1a00198e:	4b12      	ldr	r3, [pc, #72]	; (1a0019d8 <Chip_Clock_EnableCrystal+0x64>)
1a001990:	699b      	ldr	r3, [r3, #24]
1a001992:	687a      	ldr	r2, [r7, #4]
1a001994:	429a      	cmp	r2, r3
1a001996:	d002      	beq.n	1a00199e <Chip_Clock_EnableCrystal+0x2a>
1a001998:	4a0f      	ldr	r2, [pc, #60]	; (1a0019d8 <Chip_Clock_EnableCrystal+0x64>)
1a00199a:	687b      	ldr	r3, [r7, #4]
1a00199c:	6193      	str	r3, [r2, #24]
1a00199e:	687b      	ldr	r3, [r7, #4]
1a0019a0:	f023 0301 	bic.w	r3, r3, #1
1a0019a4:	607b      	str	r3, [r7, #4]
1a0019a6:	4b0d      	ldr	r3, [pc, #52]	; (1a0019dc <Chip_Clock_EnableCrystal+0x68>)
1a0019a8:	681b      	ldr	r3, [r3, #0]
1a0019aa:	4a0d      	ldr	r2, [pc, #52]	; (1a0019e0 <Chip_Clock_EnableCrystal+0x6c>)
1a0019ac:	4293      	cmp	r3, r2
1a0019ae:	d903      	bls.n	1a0019b8 <Chip_Clock_EnableCrystal+0x44>
1a0019b0:	687b      	ldr	r3, [r7, #4]
1a0019b2:	f043 0304 	orr.w	r3, r3, #4
1a0019b6:	607b      	str	r3, [r7, #4]
1a0019b8:	4a07      	ldr	r2, [pc, #28]	; (1a0019d8 <Chip_Clock_EnableCrystal+0x64>)
1a0019ba:	687b      	ldr	r3, [r7, #4]
1a0019bc:	6193      	str	r3, [r2, #24]
1a0019be:	bf00      	nop
1a0019c0:	683b      	ldr	r3, [r7, #0]
1a0019c2:	1e5a      	subs	r2, r3, #1
1a0019c4:	603a      	str	r2, [r7, #0]
1a0019c6:	2b00      	cmp	r3, #0
1a0019c8:	d1fa      	bne.n	1a0019c0 <Chip_Clock_EnableCrystal+0x4c>
1a0019ca:	bf00      	nop
1a0019cc:	370c      	adds	r7, #12
1a0019ce:	46bd      	mov	sp, r7
1a0019d0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0019d4:	4770      	bx	lr
1a0019d6:	bf00      	nop
1a0019d8:	40050000 	.word	0x40050000
1a0019dc:	1a0021c0 	.word	0x1a0021c0
1a0019e0:	01312cff 	.word	0x01312cff

1a0019e4 <Chip_Clock_CalcMainPLLValue>:
1a0019e4:	b580      	push	{r7, lr}
1a0019e6:	b082      	sub	sp, #8
1a0019e8:	af00      	add	r7, sp, #0
1a0019ea:	6078      	str	r0, [r7, #4]
1a0019ec:	6039      	str	r1, [r7, #0]
1a0019ee:	683b      	ldr	r3, [r7, #0]
1a0019f0:	791b      	ldrb	r3, [r3, #4]
1a0019f2:	4618      	mov	r0, r3
1a0019f4:	f000 f8fe 	bl	1a001bf4 <Chip_Clock_GetClockInputHz>
1a0019f8:	4602      	mov	r2, r0
1a0019fa:	683b      	ldr	r3, [r7, #0]
1a0019fc:	615a      	str	r2, [r3, #20]
1a0019fe:	687b      	ldr	r3, [r7, #4]
1a001a00:	4a2b      	ldr	r2, [pc, #172]	; (1a001ab0 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a001a02:	4293      	cmp	r3, r2
1a001a04:	d807      	bhi.n	1a001a16 <Chip_Clock_CalcMainPLLValue+0x32>
1a001a06:	687b      	ldr	r3, [r7, #4]
1a001a08:	4a2a      	ldr	r2, [pc, #168]	; (1a001ab4 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001a0a:	4293      	cmp	r3, r2
1a001a0c:	d903      	bls.n	1a001a16 <Chip_Clock_CalcMainPLLValue+0x32>
1a001a0e:	683b      	ldr	r3, [r7, #0]
1a001a10:	695b      	ldr	r3, [r3, #20]
1a001a12:	2b00      	cmp	r3, #0
1a001a14:	d102      	bne.n	1a001a1c <Chip_Clock_CalcMainPLLValue+0x38>
1a001a16:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001a1a:	e044      	b.n	1a001aa6 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001a1c:	683b      	ldr	r3, [r7, #0]
1a001a1e:	2280      	movs	r2, #128	; 0x80
1a001a20:	601a      	str	r2, [r3, #0]
1a001a22:	683b      	ldr	r3, [r7, #0]
1a001a24:	2200      	movs	r2, #0
1a001a26:	609a      	str	r2, [r3, #8]
1a001a28:	683b      	ldr	r3, [r7, #0]
1a001a2a:	2200      	movs	r2, #0
1a001a2c:	60da      	str	r2, [r3, #12]
1a001a2e:	683b      	ldr	r3, [r7, #0]
1a001a30:	695b      	ldr	r3, [r3, #20]
1a001a32:	687a      	ldr	r2, [r7, #4]
1a001a34:	fbb2 f3f3 	udiv	r3, r2, r3
1a001a38:	461a      	mov	r2, r3
1a001a3a:	683b      	ldr	r3, [r7, #0]
1a001a3c:	611a      	str	r2, [r3, #16]
1a001a3e:	687b      	ldr	r3, [r7, #4]
1a001a40:	4a1d      	ldr	r2, [pc, #116]	; (1a001ab8 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a001a42:	4293      	cmp	r3, r2
1a001a44:	d909      	bls.n	1a001a5a <Chip_Clock_CalcMainPLLValue+0x76>
1a001a46:	683b      	ldr	r3, [r7, #0]
1a001a48:	691b      	ldr	r3, [r3, #16]
1a001a4a:	461a      	mov	r2, r3
1a001a4c:	683b      	ldr	r3, [r7, #0]
1a001a4e:	695b      	ldr	r3, [r3, #20]
1a001a50:	fb03 f302 	mul.w	r3, r3, r2
1a001a54:	687a      	ldr	r2, [r7, #4]
1a001a56:	429a      	cmp	r2, r3
1a001a58:	d00f      	beq.n	1a001a7a <Chip_Clock_CalcMainPLLValue+0x96>
1a001a5a:	6839      	ldr	r1, [r7, #0]
1a001a5c:	6878      	ldr	r0, [r7, #4]
1a001a5e:	f7ff fe61 	bl	1a001724 <pll_get_frac>
1a001a62:	683b      	ldr	r3, [r7, #0]
1a001a64:	689b      	ldr	r3, [r3, #8]
1a001a66:	2b00      	cmp	r3, #0
1a001a68:	d102      	bne.n	1a001a70 <Chip_Clock_CalcMainPLLValue+0x8c>
1a001a6a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001a6e:	e01a      	b.n	1a001aa6 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001a70:	683b      	ldr	r3, [r7, #0]
1a001a72:	689b      	ldr	r3, [r3, #8]
1a001a74:	1e5a      	subs	r2, r3, #1
1a001a76:	683b      	ldr	r3, [r7, #0]
1a001a78:	609a      	str	r2, [r3, #8]
1a001a7a:	683b      	ldr	r3, [r7, #0]
1a001a7c:	691b      	ldr	r3, [r3, #16]
1a001a7e:	2b00      	cmp	r3, #0
1a001a80:	d102      	bne.n	1a001a88 <Chip_Clock_CalcMainPLLValue+0xa4>
1a001a82:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001a86:	e00e      	b.n	1a001aa6 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001a88:	683b      	ldr	r3, [r7, #0]
1a001a8a:	68db      	ldr	r3, [r3, #12]
1a001a8c:	2b00      	cmp	r3, #0
1a001a8e:	d004      	beq.n	1a001a9a <Chip_Clock_CalcMainPLLValue+0xb6>
1a001a90:	683b      	ldr	r3, [r7, #0]
1a001a92:	68db      	ldr	r3, [r3, #12]
1a001a94:	1e5a      	subs	r2, r3, #1
1a001a96:	683b      	ldr	r3, [r7, #0]
1a001a98:	60da      	str	r2, [r3, #12]
1a001a9a:	683b      	ldr	r3, [r7, #0]
1a001a9c:	691b      	ldr	r3, [r3, #16]
1a001a9e:	1e5a      	subs	r2, r3, #1
1a001aa0:	683b      	ldr	r3, [r7, #0]
1a001aa2:	611a      	str	r2, [r3, #16]
1a001aa4:	2300      	movs	r3, #0
1a001aa6:	4618      	mov	r0, r3
1a001aa8:	3708      	adds	r7, #8
1a001aaa:	46bd      	mov	sp, r7
1a001aac:	bd80      	pop	{r7, pc}
1a001aae:	bf00      	nop
1a001ab0:	0c28cb00 	.word	0x0c28cb00
1a001ab4:	0094c5ef 	.word	0x0094c5ef
1a001ab8:	094c5eff 	.word	0x094c5eff

1a001abc <Chip_Clock_GetMainPLLHz>:
1a001abc:	b580      	push	{r7, lr}
1a001abe:	b08c      	sub	sp, #48	; 0x30
1a001ac0:	af00      	add	r7, sp, #0
1a001ac2:	4b2c      	ldr	r3, [pc, #176]	; (1a001b74 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001ac4:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001ac6:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001ac8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001aca:	0e1b      	lsrs	r3, r3, #24
1a001acc:	b2db      	uxtb	r3, r3
1a001ace:	f003 030f 	and.w	r3, r3, #15
1a001ad2:	b2db      	uxtb	r3, r3
1a001ad4:	4618      	mov	r0, r3
1a001ad6:	f000 f88d 	bl	1a001bf4 <Chip_Clock_GetClockInputHz>
1a001ada:	62b8      	str	r0, [r7, #40]	; 0x28
1a001adc:	4b26      	ldr	r3, [pc, #152]	; (1a001b78 <Chip_Clock_GetMainPLLHz+0xbc>)
1a001ade:	681b      	ldr	r3, [r3, #0]
1a001ae0:	607b      	str	r3, [r7, #4]
1a001ae2:	4b24      	ldr	r3, [pc, #144]	; (1a001b74 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001ae4:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001ae6:	f003 0301 	and.w	r3, r3, #1
1a001aea:	2b00      	cmp	r3, #0
1a001aec:	d101      	bne.n	1a001af2 <Chip_Clock_GetMainPLLHz+0x36>
1a001aee:	2300      	movs	r3, #0
1a001af0:	e03b      	b.n	1a001b6a <Chip_Clock_GetMainPLLHz+0xae>
1a001af2:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001af4:	0c1b      	lsrs	r3, r3, #16
1a001af6:	b2db      	uxtb	r3, r3
1a001af8:	627b      	str	r3, [r7, #36]	; 0x24
1a001afa:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001afc:	0b1b      	lsrs	r3, r3, #12
1a001afe:	f003 0303 	and.w	r3, r3, #3
1a001b02:	623b      	str	r3, [r7, #32]
1a001b04:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b06:	0a1b      	lsrs	r3, r3, #8
1a001b08:	f003 0303 	and.w	r3, r3, #3
1a001b0c:	61fb      	str	r3, [r7, #28]
1a001b0e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b10:	09db      	lsrs	r3, r3, #7
1a001b12:	f003 0301 	and.w	r3, r3, #1
1a001b16:	61bb      	str	r3, [r7, #24]
1a001b18:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001b1a:	099b      	lsrs	r3, r3, #6
1a001b1c:	f003 0301 	and.w	r3, r3, #1
1a001b20:	617b      	str	r3, [r7, #20]
1a001b22:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001b24:	3301      	adds	r3, #1
1a001b26:	613b      	str	r3, [r7, #16]
1a001b28:	6a3b      	ldr	r3, [r7, #32]
1a001b2a:	3301      	adds	r3, #1
1a001b2c:	60fb      	str	r3, [r7, #12]
1a001b2e:	1d3a      	adds	r2, r7, #4
1a001b30:	69fb      	ldr	r3, [r7, #28]
1a001b32:	4413      	add	r3, r2
1a001b34:	781b      	ldrb	r3, [r3, #0]
1a001b36:	60bb      	str	r3, [r7, #8]
1a001b38:	69bb      	ldr	r3, [r7, #24]
1a001b3a:	2b00      	cmp	r3, #0
1a001b3c:	d102      	bne.n	1a001b44 <Chip_Clock_GetMainPLLHz+0x88>
1a001b3e:	697b      	ldr	r3, [r7, #20]
1a001b40:	2b00      	cmp	r3, #0
1a001b42:	d007      	beq.n	1a001b54 <Chip_Clock_GetMainPLLHz+0x98>
1a001b44:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a001b46:	68fb      	ldr	r3, [r7, #12]
1a001b48:	fbb2 f3f3 	udiv	r3, r2, r3
1a001b4c:	693a      	ldr	r2, [r7, #16]
1a001b4e:	fb02 f303 	mul.w	r3, r2, r3
1a001b52:	e00a      	b.n	1a001b6a <Chip_Clock_GetMainPLLHz+0xae>
1a001b54:	68bb      	ldr	r3, [r7, #8]
1a001b56:	005b      	lsls	r3, r3, #1
1a001b58:	693a      	ldr	r2, [r7, #16]
1a001b5a:	fbb2 f3f3 	udiv	r3, r2, r3
1a001b5e:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a001b60:	68fa      	ldr	r2, [r7, #12]
1a001b62:	fbb1 f2f2 	udiv	r2, r1, r2
1a001b66:	fb02 f303 	mul.w	r3, r2, r3
1a001b6a:	4618      	mov	r0, r3
1a001b6c:	3730      	adds	r7, #48	; 0x30
1a001b6e:	46bd      	mov	sp, r7
1a001b70:	bd80      	pop	{r7, pc}
1a001b72:	bf00      	nop
1a001b74:	40050000 	.word	0x40050000
1a001b78:	1a0022ec 	.word	0x1a0022ec

1a001b7c <Chip_Clock_GetDividerSource>:
1a001b7c:	b480      	push	{r7}
1a001b7e:	b085      	sub	sp, #20
1a001b80:	af00      	add	r7, sp, #0
1a001b82:	4603      	mov	r3, r0
1a001b84:	71fb      	strb	r3, [r7, #7]
1a001b86:	4a0c      	ldr	r2, [pc, #48]	; (1a001bb8 <Chip_Clock_GetDividerSource+0x3c>)
1a001b88:	79fb      	ldrb	r3, [r7, #7]
1a001b8a:	3312      	adds	r3, #18
1a001b8c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001b90:	60fb      	str	r3, [r7, #12]
1a001b92:	68fb      	ldr	r3, [r7, #12]
1a001b94:	f003 0301 	and.w	r3, r3, #1
1a001b98:	2b00      	cmp	r3, #0
1a001b9a:	d001      	beq.n	1a001ba0 <Chip_Clock_GetDividerSource+0x24>
1a001b9c:	2311      	movs	r3, #17
1a001b9e:	e005      	b.n	1a001bac <Chip_Clock_GetDividerSource+0x30>
1a001ba0:	68fb      	ldr	r3, [r7, #12]
1a001ba2:	0e1b      	lsrs	r3, r3, #24
1a001ba4:	b2db      	uxtb	r3, r3
1a001ba6:	f003 031f 	and.w	r3, r3, #31
1a001baa:	b2db      	uxtb	r3, r3
1a001bac:	4618      	mov	r0, r3
1a001bae:	3714      	adds	r7, #20
1a001bb0:	46bd      	mov	sp, r7
1a001bb2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001bb6:	4770      	bx	lr
1a001bb8:	40050000 	.word	0x40050000

1a001bbc <Chip_Clock_GetDividerDivisor>:
1a001bbc:	b480      	push	{r7}
1a001bbe:	b083      	sub	sp, #12
1a001bc0:	af00      	add	r7, sp, #0
1a001bc2:	4603      	mov	r3, r0
1a001bc4:	71fb      	strb	r3, [r7, #7]
1a001bc6:	4a09      	ldr	r2, [pc, #36]	; (1a001bec <Chip_Clock_GetDividerDivisor+0x30>)
1a001bc8:	79fb      	ldrb	r3, [r7, #7]
1a001bca:	3312      	adds	r3, #18
1a001bcc:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001bd0:	089b      	lsrs	r3, r3, #2
1a001bd2:	b2da      	uxtb	r2, r3
1a001bd4:	79fb      	ldrb	r3, [r7, #7]
1a001bd6:	4906      	ldr	r1, [pc, #24]	; (1a001bf0 <Chip_Clock_GetDividerDivisor+0x34>)
1a001bd8:	5ccb      	ldrb	r3, [r1, r3]
1a001bda:	4013      	ands	r3, r2
1a001bdc:	b2db      	uxtb	r3, r3
1a001bde:	4618      	mov	r0, r3
1a001be0:	370c      	adds	r7, #12
1a001be2:	46bd      	mov	sp, r7
1a001be4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001be8:	4770      	bx	lr
1a001bea:	bf00      	nop
1a001bec:	40050000 	.word	0x40050000
1a001bf0:	1a0022f0 	.word	0x1a0022f0

1a001bf4 <Chip_Clock_GetClockInputHz>:
1a001bf4:	b580      	push	{r7, lr}
1a001bf6:	b084      	sub	sp, #16
1a001bf8:	af00      	add	r7, sp, #0
1a001bfa:	4603      	mov	r3, r0
1a001bfc:	71fb      	strb	r3, [r7, #7]
1a001bfe:	2300      	movs	r3, #0
1a001c00:	60fb      	str	r3, [r7, #12]
1a001c02:	79fb      	ldrb	r3, [r7, #7]
1a001c04:	2b11      	cmp	r3, #17
1a001c06:	d87f      	bhi.n	1a001d08 <Chip_Clock_GetClockInputHz+0x114>
1a001c08:	a201      	add	r2, pc, #4	; (adr r2, 1a001c10 <Chip_Clock_GetClockInputHz+0x1c>)
1a001c0a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001c0e:	bf00      	nop
1a001c10:	1a001c59 	.word	0x1a001c59
1a001c14:	1a001c61 	.word	0x1a001c61
1a001c18:	1a001c67 	.word	0x1a001c67
1a001c1c:	1a001c7b 	.word	0x1a001c7b
1a001c20:	1a001c95 	.word	0x1a001c95
1a001c24:	1a001d09 	.word	0x1a001d09
1a001c28:	1a001c9d 	.word	0x1a001c9d
1a001c2c:	1a001ca5 	.word	0x1a001ca5
1a001c30:	1a001cad 	.word	0x1a001cad
1a001c34:	1a001cb5 	.word	0x1a001cb5
1a001c38:	1a001d09 	.word	0x1a001d09
1a001c3c:	1a001d09 	.word	0x1a001d09
1a001c40:	1a001cbd 	.word	0x1a001cbd
1a001c44:	1a001ccb 	.word	0x1a001ccb
1a001c48:	1a001cd9 	.word	0x1a001cd9
1a001c4c:	1a001ce7 	.word	0x1a001ce7
1a001c50:	1a001cf5 	.word	0x1a001cf5
1a001c54:	1a001d03 	.word	0x1a001d03
1a001c58:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001c5c:	60fb      	str	r3, [r7, #12]
1a001c5e:	e056      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001c60:	4b2d      	ldr	r3, [pc, #180]	; (1a001d18 <Chip_Clock_GetClockInputHz+0x124>)
1a001c62:	60fb      	str	r3, [r7, #12]
1a001c64:	e053      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001c66:	4b2d      	ldr	r3, [pc, #180]	; (1a001d1c <Chip_Clock_GetClockInputHz+0x128>)
1a001c68:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001c6c:	f003 0307 	and.w	r3, r3, #7
1a001c70:	2b04      	cmp	r3, #4
1a001c72:	d04b      	beq.n	1a001d0c <Chip_Clock_GetClockInputHz+0x118>
1a001c74:	4b2a      	ldr	r3, [pc, #168]	; (1a001d20 <Chip_Clock_GetClockInputHz+0x12c>)
1a001c76:	60fb      	str	r3, [r7, #12]
1a001c78:	e048      	b.n	1a001d0c <Chip_Clock_GetClockInputHz+0x118>
1a001c7a:	4b28      	ldr	r3, [pc, #160]	; (1a001d1c <Chip_Clock_GetClockInputHz+0x128>)
1a001c7c:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001c80:	f003 0307 	and.w	r3, r3, #7
1a001c84:	2b04      	cmp	r3, #4
1a001c86:	d002      	beq.n	1a001c8e <Chip_Clock_GetClockInputHz+0x9a>
1a001c88:	4b25      	ldr	r3, [pc, #148]	; (1a001d20 <Chip_Clock_GetClockInputHz+0x12c>)
1a001c8a:	60fb      	str	r3, [r7, #12]
1a001c8c:	e03f      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001c8e:	4b25      	ldr	r3, [pc, #148]	; (1a001d24 <Chip_Clock_GetClockInputHz+0x130>)
1a001c90:	60fb      	str	r3, [r7, #12]
1a001c92:	e03c      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001c94:	4b24      	ldr	r3, [pc, #144]	; (1a001d28 <Chip_Clock_GetClockInputHz+0x134>)
1a001c96:	681b      	ldr	r3, [r3, #0]
1a001c98:	60fb      	str	r3, [r7, #12]
1a001c9a:	e038      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001c9c:	4b23      	ldr	r3, [pc, #140]	; (1a001d2c <Chip_Clock_GetClockInputHz+0x138>)
1a001c9e:	681b      	ldr	r3, [r3, #0]
1a001ca0:	60fb      	str	r3, [r7, #12]
1a001ca2:	e034      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001ca4:	4b22      	ldr	r3, [pc, #136]	; (1a001d30 <Chip_Clock_GetClockInputHz+0x13c>)
1a001ca6:	681b      	ldr	r3, [r3, #0]
1a001ca8:	60fb      	str	r3, [r7, #12]
1a001caa:	e030      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001cac:	4b20      	ldr	r3, [pc, #128]	; (1a001d30 <Chip_Clock_GetClockInputHz+0x13c>)
1a001cae:	685b      	ldr	r3, [r3, #4]
1a001cb0:	60fb      	str	r3, [r7, #12]
1a001cb2:	e02c      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001cb4:	f7ff ff02 	bl	1a001abc <Chip_Clock_GetMainPLLHz>
1a001cb8:	60f8      	str	r0, [r7, #12]
1a001cba:	e028      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001cbc:	79fb      	ldrb	r3, [r7, #7]
1a001cbe:	2100      	movs	r1, #0
1a001cc0:	4618      	mov	r0, r3
1a001cc2:	f7ff fdef 	bl	1a0018a4 <Chip_Clock_GetDivRate>
1a001cc6:	60f8      	str	r0, [r7, #12]
1a001cc8:	e021      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001cca:	79fb      	ldrb	r3, [r7, #7]
1a001ccc:	2101      	movs	r1, #1
1a001cce:	4618      	mov	r0, r3
1a001cd0:	f7ff fde8 	bl	1a0018a4 <Chip_Clock_GetDivRate>
1a001cd4:	60f8      	str	r0, [r7, #12]
1a001cd6:	e01a      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001cd8:	79fb      	ldrb	r3, [r7, #7]
1a001cda:	2102      	movs	r1, #2
1a001cdc:	4618      	mov	r0, r3
1a001cde:	f7ff fde1 	bl	1a0018a4 <Chip_Clock_GetDivRate>
1a001ce2:	60f8      	str	r0, [r7, #12]
1a001ce4:	e013      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001ce6:	79fb      	ldrb	r3, [r7, #7]
1a001ce8:	2103      	movs	r1, #3
1a001cea:	4618      	mov	r0, r3
1a001cec:	f7ff fdda 	bl	1a0018a4 <Chip_Clock_GetDivRate>
1a001cf0:	60f8      	str	r0, [r7, #12]
1a001cf2:	e00c      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001cf4:	79fb      	ldrb	r3, [r7, #7]
1a001cf6:	2104      	movs	r1, #4
1a001cf8:	4618      	mov	r0, r3
1a001cfa:	f7ff fdd3 	bl	1a0018a4 <Chip_Clock_GetDivRate>
1a001cfe:	60f8      	str	r0, [r7, #12]
1a001d00:	e005      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001d02:	2300      	movs	r3, #0
1a001d04:	60fb      	str	r3, [r7, #12]
1a001d06:	e002      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001d08:	bf00      	nop
1a001d0a:	e000      	b.n	1a001d0e <Chip_Clock_GetClockInputHz+0x11a>
1a001d0c:	bf00      	nop
1a001d0e:	68fb      	ldr	r3, [r7, #12]
1a001d10:	4618      	mov	r0, r3
1a001d12:	3710      	adds	r7, #16
1a001d14:	46bd      	mov	sp, r7
1a001d16:	bd80      	pop	{r7, pc}
1a001d18:	00b71b00 	.word	0x00b71b00
1a001d1c:	40043000 	.word	0x40043000
1a001d20:	017d7840 	.word	0x017d7840
1a001d24:	02faf080 	.word	0x02faf080
1a001d28:	1a0021bc 	.word	0x1a0021bc
1a001d2c:	1a0021c0 	.word	0x1a0021c0
1a001d30:	10000008 	.word	0x10000008

1a001d34 <Chip_Clock_GetBaseClocktHz>:
1a001d34:	b580      	push	{r7, lr}
1a001d36:	b082      	sub	sp, #8
1a001d38:	af00      	add	r7, sp, #0
1a001d3a:	4603      	mov	r3, r0
1a001d3c:	71fb      	strb	r3, [r7, #7]
1a001d3e:	79fb      	ldrb	r3, [r7, #7]
1a001d40:	4618      	mov	r0, r3
1a001d42:	f000 f857 	bl	1a001df4 <Chip_Clock_GetBaseClock>
1a001d46:	4603      	mov	r3, r0
1a001d48:	4618      	mov	r0, r3
1a001d4a:	f7ff ff53 	bl	1a001bf4 <Chip_Clock_GetClockInputHz>
1a001d4e:	4603      	mov	r3, r0
1a001d50:	4618      	mov	r0, r3
1a001d52:	3708      	adds	r7, #8
1a001d54:	46bd      	mov	sp, r7
1a001d56:	bd80      	pop	{r7, pc}

1a001d58 <Chip_Clock_SetBaseClock>:
1a001d58:	b490      	push	{r4, r7}
1a001d5a:	b084      	sub	sp, #16
1a001d5c:	af00      	add	r7, sp, #0
1a001d5e:	4604      	mov	r4, r0
1a001d60:	4608      	mov	r0, r1
1a001d62:	4611      	mov	r1, r2
1a001d64:	461a      	mov	r2, r3
1a001d66:	4623      	mov	r3, r4
1a001d68:	71fb      	strb	r3, [r7, #7]
1a001d6a:	4603      	mov	r3, r0
1a001d6c:	71bb      	strb	r3, [r7, #6]
1a001d6e:	460b      	mov	r3, r1
1a001d70:	717b      	strb	r3, [r7, #5]
1a001d72:	4613      	mov	r3, r2
1a001d74:	713b      	strb	r3, [r7, #4]
1a001d76:	4a1d      	ldr	r2, [pc, #116]	; (1a001dec <Chip_Clock_SetBaseClock+0x94>)
1a001d78:	79fb      	ldrb	r3, [r7, #7]
1a001d7a:	3316      	adds	r3, #22
1a001d7c:	009b      	lsls	r3, r3, #2
1a001d7e:	4413      	add	r3, r2
1a001d80:	685b      	ldr	r3, [r3, #4]
1a001d82:	60fb      	str	r3, [r7, #12]
1a001d84:	79fb      	ldrb	r3, [r7, #7]
1a001d86:	2b1b      	cmp	r3, #27
1a001d88:	d822      	bhi.n	1a001dd0 <Chip_Clock_SetBaseClock+0x78>
1a001d8a:	79bb      	ldrb	r3, [r7, #6]
1a001d8c:	2b11      	cmp	r3, #17
1a001d8e:	d028      	beq.n	1a001de2 <Chip_Clock_SetBaseClock+0x8a>
1a001d90:	68fa      	ldr	r2, [r7, #12]
1a001d92:	4b17      	ldr	r3, [pc, #92]	; (1a001df0 <Chip_Clock_SetBaseClock+0x98>)
1a001d94:	4013      	ands	r3, r2
1a001d96:	60fb      	str	r3, [r7, #12]
1a001d98:	797b      	ldrb	r3, [r7, #5]
1a001d9a:	2b00      	cmp	r3, #0
1a001d9c:	d003      	beq.n	1a001da6 <Chip_Clock_SetBaseClock+0x4e>
1a001d9e:	68fb      	ldr	r3, [r7, #12]
1a001da0:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001da4:	60fb      	str	r3, [r7, #12]
1a001da6:	793b      	ldrb	r3, [r7, #4]
1a001da8:	2b00      	cmp	r3, #0
1a001daa:	d003      	beq.n	1a001db4 <Chip_Clock_SetBaseClock+0x5c>
1a001dac:	68fb      	ldr	r3, [r7, #12]
1a001dae:	f043 0301 	orr.w	r3, r3, #1
1a001db2:	60fb      	str	r3, [r7, #12]
1a001db4:	79bb      	ldrb	r3, [r7, #6]
1a001db6:	061b      	lsls	r3, r3, #24
1a001db8:	461a      	mov	r2, r3
1a001dba:	68fb      	ldr	r3, [r7, #12]
1a001dbc:	4313      	orrs	r3, r2
1a001dbe:	60fb      	str	r3, [r7, #12]
1a001dc0:	4a0a      	ldr	r2, [pc, #40]	; (1a001dec <Chip_Clock_SetBaseClock+0x94>)
1a001dc2:	79fb      	ldrb	r3, [r7, #7]
1a001dc4:	3316      	adds	r3, #22
1a001dc6:	009b      	lsls	r3, r3, #2
1a001dc8:	4413      	add	r3, r2
1a001dca:	68fa      	ldr	r2, [r7, #12]
1a001dcc:	605a      	str	r2, [r3, #4]
1a001dce:	e008      	b.n	1a001de2 <Chip_Clock_SetBaseClock+0x8a>
1a001dd0:	4906      	ldr	r1, [pc, #24]	; (1a001dec <Chip_Clock_SetBaseClock+0x94>)
1a001dd2:	79fb      	ldrb	r3, [r7, #7]
1a001dd4:	68fa      	ldr	r2, [r7, #12]
1a001dd6:	f042 0201 	orr.w	r2, r2, #1
1a001dda:	3316      	adds	r3, #22
1a001ddc:	009b      	lsls	r3, r3, #2
1a001dde:	440b      	add	r3, r1
1a001de0:	605a      	str	r2, [r3, #4]
1a001de2:	bf00      	nop
1a001de4:	3710      	adds	r7, #16
1a001de6:	46bd      	mov	sp, r7
1a001de8:	bc90      	pop	{r4, r7}
1a001dea:	4770      	bx	lr
1a001dec:	40050000 	.word	0x40050000
1a001df0:	e0fff7fe 	.word	0xe0fff7fe

1a001df4 <Chip_Clock_GetBaseClock>:
1a001df4:	b480      	push	{r7}
1a001df6:	b085      	sub	sp, #20
1a001df8:	af00      	add	r7, sp, #0
1a001dfa:	4603      	mov	r3, r0
1a001dfc:	71fb      	strb	r3, [r7, #7]
1a001dfe:	79fb      	ldrb	r3, [r7, #7]
1a001e00:	2b1b      	cmp	r3, #27
1a001e02:	d901      	bls.n	1a001e08 <Chip_Clock_GetBaseClock+0x14>
1a001e04:	2311      	movs	r3, #17
1a001e06:	e013      	b.n	1a001e30 <Chip_Clock_GetBaseClock+0x3c>
1a001e08:	4a0c      	ldr	r2, [pc, #48]	; (1a001e3c <Chip_Clock_GetBaseClock+0x48>)
1a001e0a:	79fb      	ldrb	r3, [r7, #7]
1a001e0c:	3316      	adds	r3, #22
1a001e0e:	009b      	lsls	r3, r3, #2
1a001e10:	4413      	add	r3, r2
1a001e12:	685b      	ldr	r3, [r3, #4]
1a001e14:	60fb      	str	r3, [r7, #12]
1a001e16:	68fb      	ldr	r3, [r7, #12]
1a001e18:	f003 0301 	and.w	r3, r3, #1
1a001e1c:	2b00      	cmp	r3, #0
1a001e1e:	d001      	beq.n	1a001e24 <Chip_Clock_GetBaseClock+0x30>
1a001e20:	2311      	movs	r3, #17
1a001e22:	e005      	b.n	1a001e30 <Chip_Clock_GetBaseClock+0x3c>
1a001e24:	68fb      	ldr	r3, [r7, #12]
1a001e26:	0e1b      	lsrs	r3, r3, #24
1a001e28:	b2db      	uxtb	r3, r3
1a001e2a:	f003 031f 	and.w	r3, r3, #31
1a001e2e:	b2db      	uxtb	r3, r3
1a001e30:	4618      	mov	r0, r3
1a001e32:	3714      	adds	r7, #20
1a001e34:	46bd      	mov	sp, r7
1a001e36:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001e3a:	4770      	bx	lr
1a001e3c:	40050000 	.word	0x40050000

1a001e40 <Chip_Clock_EnableOpts>:
1a001e40:	b480      	push	{r7}
1a001e42:	b085      	sub	sp, #20
1a001e44:	af00      	add	r7, sp, #0
1a001e46:	603b      	str	r3, [r7, #0]
1a001e48:	4603      	mov	r3, r0
1a001e4a:	80fb      	strh	r3, [r7, #6]
1a001e4c:	460b      	mov	r3, r1
1a001e4e:	717b      	strb	r3, [r7, #5]
1a001e50:	4613      	mov	r3, r2
1a001e52:	713b      	strb	r3, [r7, #4]
1a001e54:	2301      	movs	r3, #1
1a001e56:	60fb      	str	r3, [r7, #12]
1a001e58:	797b      	ldrb	r3, [r7, #5]
1a001e5a:	2b00      	cmp	r3, #0
1a001e5c:	d003      	beq.n	1a001e66 <Chip_Clock_EnableOpts+0x26>
1a001e5e:	68fb      	ldr	r3, [r7, #12]
1a001e60:	f043 0302 	orr.w	r3, r3, #2
1a001e64:	60fb      	str	r3, [r7, #12]
1a001e66:	793b      	ldrb	r3, [r7, #4]
1a001e68:	2b00      	cmp	r3, #0
1a001e6a:	d003      	beq.n	1a001e74 <Chip_Clock_EnableOpts+0x34>
1a001e6c:	68fb      	ldr	r3, [r7, #12]
1a001e6e:	f043 0304 	orr.w	r3, r3, #4
1a001e72:	60fb      	str	r3, [r7, #12]
1a001e74:	683b      	ldr	r3, [r7, #0]
1a001e76:	2b02      	cmp	r3, #2
1a001e78:	d103      	bne.n	1a001e82 <Chip_Clock_EnableOpts+0x42>
1a001e7a:	68fb      	ldr	r3, [r7, #12]
1a001e7c:	f043 0320 	orr.w	r3, r3, #32
1a001e80:	60fb      	str	r3, [r7, #12]
1a001e82:	88fb      	ldrh	r3, [r7, #6]
1a001e84:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001e88:	d308      	bcc.n	1a001e9c <Chip_Clock_EnableOpts+0x5c>
1a001e8a:	490a      	ldr	r1, [pc, #40]	; (1a001eb4 <Chip_Clock_EnableOpts+0x74>)
1a001e8c:	88fb      	ldrh	r3, [r7, #6]
1a001e8e:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001e92:	3320      	adds	r3, #32
1a001e94:	68fa      	ldr	r2, [r7, #12]
1a001e96:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001e9a:	e005      	b.n	1a001ea8 <Chip_Clock_EnableOpts+0x68>
1a001e9c:	4906      	ldr	r1, [pc, #24]	; (1a001eb8 <Chip_Clock_EnableOpts+0x78>)
1a001e9e:	88fb      	ldrh	r3, [r7, #6]
1a001ea0:	3320      	adds	r3, #32
1a001ea2:	68fa      	ldr	r2, [r7, #12]
1a001ea4:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a001ea8:	bf00      	nop
1a001eaa:	3714      	adds	r7, #20
1a001eac:	46bd      	mov	sp, r7
1a001eae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001eb2:	4770      	bx	lr
1a001eb4:	40052000 	.word	0x40052000
1a001eb8:	40051000 	.word	0x40051000

1a001ebc <Chip_Clock_GetRate>:
1a001ebc:	b580      	push	{r7, lr}
1a001ebe:	b086      	sub	sp, #24
1a001ec0:	af00      	add	r7, sp, #0
1a001ec2:	4603      	mov	r3, r0
1a001ec4:	80fb      	strh	r3, [r7, #6]
1a001ec6:	88fb      	ldrh	r3, [r7, #6]
1a001ec8:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a001ecc:	d308      	bcc.n	1a001ee0 <Chip_Clock_GetRate+0x24>
1a001ece:	4a1b      	ldr	r2, [pc, #108]	; (1a001f3c <Chip_Clock_GetRate+0x80>)
1a001ed0:	88fb      	ldrh	r3, [r7, #6]
1a001ed2:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a001ed6:	3320      	adds	r3, #32
1a001ed8:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001edc:	617b      	str	r3, [r7, #20]
1a001ede:	e005      	b.n	1a001eec <Chip_Clock_GetRate+0x30>
1a001ee0:	4a17      	ldr	r2, [pc, #92]	; (1a001f40 <Chip_Clock_GetRate+0x84>)
1a001ee2:	88fb      	ldrh	r3, [r7, #6]
1a001ee4:	3320      	adds	r3, #32
1a001ee6:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a001eea:	617b      	str	r3, [r7, #20]
1a001eec:	697b      	ldr	r3, [r7, #20]
1a001eee:	f003 0301 	and.w	r3, r3, #1
1a001ef2:	2b00      	cmp	r3, #0
1a001ef4:	d01b      	beq.n	1a001f2e <Chip_Clock_GetRate+0x72>
1a001ef6:	88fb      	ldrh	r3, [r7, #6]
1a001ef8:	4618      	mov	r0, r3
1a001efa:	f7ff fcf3 	bl	1a0018e4 <Chip_Clock_FindBaseClock>
1a001efe:	4603      	mov	r3, r0
1a001f00:	72fb      	strb	r3, [r7, #11]
1a001f02:	7afb      	ldrb	r3, [r7, #11]
1a001f04:	4618      	mov	r0, r3
1a001f06:	f7ff ff15 	bl	1a001d34 <Chip_Clock_GetBaseClocktHz>
1a001f0a:	60f8      	str	r0, [r7, #12]
1a001f0c:	697b      	ldr	r3, [r7, #20]
1a001f0e:	095b      	lsrs	r3, r3, #5
1a001f10:	f003 0307 	and.w	r3, r3, #7
1a001f14:	2b00      	cmp	r3, #0
1a001f16:	d102      	bne.n	1a001f1e <Chip_Clock_GetRate+0x62>
1a001f18:	2301      	movs	r3, #1
1a001f1a:	613b      	str	r3, [r7, #16]
1a001f1c:	e001      	b.n	1a001f22 <Chip_Clock_GetRate+0x66>
1a001f1e:	2302      	movs	r3, #2
1a001f20:	613b      	str	r3, [r7, #16]
1a001f22:	68fa      	ldr	r2, [r7, #12]
1a001f24:	693b      	ldr	r3, [r7, #16]
1a001f26:	fbb2 f3f3 	udiv	r3, r2, r3
1a001f2a:	60fb      	str	r3, [r7, #12]
1a001f2c:	e001      	b.n	1a001f32 <Chip_Clock_GetRate+0x76>
1a001f2e:	2300      	movs	r3, #0
1a001f30:	60fb      	str	r3, [r7, #12]
1a001f32:	68fb      	ldr	r3, [r7, #12]
1a001f34:	4618      	mov	r0, r3
1a001f36:	3718      	adds	r7, #24
1a001f38:	46bd      	mov	sp, r7
1a001f3a:	bd80      	pop	{r7, pc}
1a001f3c:	40052000 	.word	0x40052000
1a001f40:	40051000 	.word	0x40051000

1a001f44 <SystemCoreClockUpdate>:
1a001f44:	b580      	push	{r7, lr}
1a001f46:	af00      	add	r7, sp, #0
1a001f48:	2069      	movs	r0, #105	; 0x69
1a001f4a:	f7ff ffb7 	bl	1a001ebc <Chip_Clock_GetRate>
1a001f4e:	4602      	mov	r2, r0
1a001f50:	4b01      	ldr	r3, [pc, #4]	; (1a001f58 <SystemCoreClockUpdate+0x14>)
1a001f52:	601a      	str	r2, [r3, #0]
1a001f54:	bf00      	nop
1a001f56:	bd80      	pop	{r7, pc}
1a001f58:	10000308 	.word	0x10000308

1a001f5c <Chip_GPIO_Init>:
1a001f5c:	b480      	push	{r7}
1a001f5e:	b083      	sub	sp, #12
1a001f60:	af00      	add	r7, sp, #0
1a001f62:	6078      	str	r0, [r7, #4]
1a001f64:	bf00      	nop
1a001f66:	370c      	adds	r7, #12
1a001f68:	46bd      	mov	sp, r7
1a001f6a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001f6e:	4770      	bx	lr

1a001f70 <memcpy>:
1a001f70:	4684      	mov	ip, r0
1a001f72:	ea41 0300 	orr.w	r3, r1, r0
1a001f76:	f013 0303 	ands.w	r3, r3, #3
1a001f7a:	d16d      	bne.n	1a002058 <memcpy+0xe8>
1a001f7c:	3a40      	subs	r2, #64	; 0x40
1a001f7e:	d341      	bcc.n	1a002004 <memcpy+0x94>
1a001f80:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f84:	f840 3b04 	str.w	r3, [r0], #4
1a001f88:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f8c:	f840 3b04 	str.w	r3, [r0], #4
1a001f90:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f94:	f840 3b04 	str.w	r3, [r0], #4
1a001f98:	f851 3b04 	ldr.w	r3, [r1], #4
1a001f9c:	f840 3b04 	str.w	r3, [r0], #4
1a001fa0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001fa4:	f840 3b04 	str.w	r3, [r0], #4
1a001fa8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001fac:	f840 3b04 	str.w	r3, [r0], #4
1a001fb0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001fb4:	f840 3b04 	str.w	r3, [r0], #4
1a001fb8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001fbc:	f840 3b04 	str.w	r3, [r0], #4
1a001fc0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001fc4:	f840 3b04 	str.w	r3, [r0], #4
1a001fc8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001fcc:	f840 3b04 	str.w	r3, [r0], #4
1a001fd0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001fd4:	f840 3b04 	str.w	r3, [r0], #4
1a001fd8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001fdc:	f840 3b04 	str.w	r3, [r0], #4
1a001fe0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001fe4:	f840 3b04 	str.w	r3, [r0], #4
1a001fe8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001fec:	f840 3b04 	str.w	r3, [r0], #4
1a001ff0:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ff4:	f840 3b04 	str.w	r3, [r0], #4
1a001ff8:	f851 3b04 	ldr.w	r3, [r1], #4
1a001ffc:	f840 3b04 	str.w	r3, [r0], #4
1a002000:	3a40      	subs	r2, #64	; 0x40
1a002002:	d2bd      	bcs.n	1a001f80 <memcpy+0x10>
1a002004:	3230      	adds	r2, #48	; 0x30
1a002006:	d311      	bcc.n	1a00202c <memcpy+0xbc>
1a002008:	f851 3b04 	ldr.w	r3, [r1], #4
1a00200c:	f840 3b04 	str.w	r3, [r0], #4
1a002010:	f851 3b04 	ldr.w	r3, [r1], #4
1a002014:	f840 3b04 	str.w	r3, [r0], #4
1a002018:	f851 3b04 	ldr.w	r3, [r1], #4
1a00201c:	f840 3b04 	str.w	r3, [r0], #4
1a002020:	f851 3b04 	ldr.w	r3, [r1], #4
1a002024:	f840 3b04 	str.w	r3, [r0], #4
1a002028:	3a10      	subs	r2, #16
1a00202a:	d2ed      	bcs.n	1a002008 <memcpy+0x98>
1a00202c:	320c      	adds	r2, #12
1a00202e:	d305      	bcc.n	1a00203c <memcpy+0xcc>
1a002030:	f851 3b04 	ldr.w	r3, [r1], #4
1a002034:	f840 3b04 	str.w	r3, [r0], #4
1a002038:	3a04      	subs	r2, #4
1a00203a:	d2f9      	bcs.n	1a002030 <memcpy+0xc0>
1a00203c:	3204      	adds	r2, #4
1a00203e:	d008      	beq.n	1a002052 <memcpy+0xe2>
1a002040:	07d2      	lsls	r2, r2, #31
1a002042:	bf1c      	itt	ne
1a002044:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a002048:	f800 3b01 	strbne.w	r3, [r0], #1
1a00204c:	d301      	bcc.n	1a002052 <memcpy+0xe2>
1a00204e:	880b      	ldrh	r3, [r1, #0]
1a002050:	8003      	strh	r3, [r0, #0]
1a002052:	4660      	mov	r0, ip
1a002054:	4770      	bx	lr
1a002056:	bf00      	nop
1a002058:	2a08      	cmp	r2, #8
1a00205a:	d313      	bcc.n	1a002084 <memcpy+0x114>
1a00205c:	078b      	lsls	r3, r1, #30
1a00205e:	d08d      	beq.n	1a001f7c <memcpy+0xc>
1a002060:	f010 0303 	ands.w	r3, r0, #3
1a002064:	d08a      	beq.n	1a001f7c <memcpy+0xc>
1a002066:	f1c3 0304 	rsb	r3, r3, #4
1a00206a:	1ad2      	subs	r2, r2, r3
1a00206c:	07db      	lsls	r3, r3, #31
1a00206e:	bf1c      	itt	ne
1a002070:	f811 3b01 	ldrbne.w	r3, [r1], #1
1a002074:	f800 3b01 	strbne.w	r3, [r0], #1
1a002078:	d380      	bcc.n	1a001f7c <memcpy+0xc>
1a00207a:	f831 3b02 	ldrh.w	r3, [r1], #2
1a00207e:	f820 3b02 	strh.w	r3, [r0], #2
1a002082:	e77b      	b.n	1a001f7c <memcpy+0xc>
1a002084:	3a04      	subs	r2, #4
1a002086:	d3d9      	bcc.n	1a00203c <memcpy+0xcc>
1a002088:	3a01      	subs	r2, #1
1a00208a:	f811 3b01 	ldrb.w	r3, [r1], #1
1a00208e:	f800 3b01 	strb.w	r3, [r0], #1
1a002092:	d2f9      	bcs.n	1a002088 <memcpy+0x118>
1a002094:	780b      	ldrb	r3, [r1, #0]
1a002096:	7003      	strb	r3, [r0, #0]
1a002098:	784b      	ldrb	r3, [r1, #1]
1a00209a:	7043      	strb	r3, [r0, #1]
1a00209c:	788b      	ldrb	r3, [r1, #2]
1a00209e:	7083      	strb	r3, [r0, #2]
1a0020a0:	4660      	mov	r0, ip
1a0020a2:	4770      	bx	lr
1a0020a4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0020a8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0020ac:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0020b0:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0020b4:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0020b8:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0020bc:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff

1a0020c0 <strlen>:
1a0020c0:	f890 f000 	pld	[r0]
1a0020c4:	e96d 4502 	strd	r4, r5, [sp, #-8]!
1a0020c8:	f020 0107 	bic.w	r1, r0, #7
1a0020cc:	f06f 0c00 	mvn.w	ip, #0
1a0020d0:	f010 0407 	ands.w	r4, r0, #7
1a0020d4:	f891 f020 	pld	[r1, #32]
1a0020d8:	f040 8049 	bne.w	1a00216e <strlen+0xae>
1a0020dc:	f04f 0400 	mov.w	r4, #0
1a0020e0:	f06f 0007 	mvn.w	r0, #7
1a0020e4:	e9d1 2300 	ldrd	r2, r3, [r1]
1a0020e8:	f891 f040 	pld	[r1, #64]	; 0x40
1a0020ec:	f100 0008 	add.w	r0, r0, #8
1a0020f0:	fa82 f24c 	uadd8	r2, r2, ip
1a0020f4:	faa4 f28c 	sel	r2, r4, ip
1a0020f8:	fa83 f34c 	uadd8	r3, r3, ip
1a0020fc:	faa2 f38c 	sel	r3, r2, ip
1a002100:	bb4b      	cbnz	r3, 1a002156 <strlen+0x96>
1a002102:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
1a002106:	fa82 f24c 	uadd8	r2, r2, ip
1a00210a:	f100 0008 	add.w	r0, r0, #8
1a00210e:	faa4 f28c 	sel	r2, r4, ip
1a002112:	fa83 f34c 	uadd8	r3, r3, ip
1a002116:	faa2 f38c 	sel	r3, r2, ip
1a00211a:	b9e3      	cbnz	r3, 1a002156 <strlen+0x96>
1a00211c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
1a002120:	fa82 f24c 	uadd8	r2, r2, ip
1a002124:	f100 0008 	add.w	r0, r0, #8
1a002128:	faa4 f28c 	sel	r2, r4, ip
1a00212c:	fa83 f34c 	uadd8	r3, r3, ip
1a002130:	faa2 f38c 	sel	r3, r2, ip
1a002134:	b97b      	cbnz	r3, 1a002156 <strlen+0x96>
1a002136:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
1a00213a:	f101 0120 	add.w	r1, r1, #32
1a00213e:	fa82 f24c 	uadd8	r2, r2, ip
1a002142:	f100 0008 	add.w	r0, r0, #8
1a002146:	faa4 f28c 	sel	r2, r4, ip
1a00214a:	fa83 f34c 	uadd8	r3, r3, ip
1a00214e:	faa2 f38c 	sel	r3, r2, ip
1a002152:	2b00      	cmp	r3, #0
1a002154:	d0c6      	beq.n	1a0020e4 <strlen+0x24>
1a002156:	2a00      	cmp	r2, #0
1a002158:	bf04      	itt	eq
1a00215a:	3004      	addeq	r0, #4
1a00215c:	461a      	moveq	r2, r3
1a00215e:	ba12      	rev	r2, r2
1a002160:	fab2 f282 	clz	r2, r2
1a002164:	e8fd 4502 	ldrd	r4, r5, [sp], #8
1a002168:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
1a00216c:	4770      	bx	lr
1a00216e:	e9d1 2300 	ldrd	r2, r3, [r1]
1a002172:	f004 0503 	and.w	r5, r4, #3
1a002176:	f1c4 0000 	rsb	r0, r4, #0
1a00217a:	ea4f 05c5 	mov.w	r5, r5, lsl #3
1a00217e:	f014 0f04 	tst.w	r4, #4
1a002182:	f891 f040 	pld	[r1, #64]	; 0x40
1a002186:	fa0c f505 	lsl.w	r5, ip, r5
1a00218a:	ea62 0205 	orn	r2, r2, r5
1a00218e:	bf1c      	itt	ne
1a002190:	ea63 0305 	ornne	r3, r3, r5
1a002194:	4662      	movne	r2, ip
1a002196:	f04f 0400 	mov.w	r4, #0
1a00219a:	e7a9      	b.n	1a0020f0 <strlen+0x30>

1a00219c <msg1>:
1a00219c:	6a45 6d65 6c70 206f 7375 6e61 6f64 7220     Ejemplo usando r
1a0021ac:	6e69 2067 7562 6666 7265 0d73 000a ffff     ing buffers.....

1a0021bc <ExtRateIn>:
1a0021bc:	0000 0000                                   ....

1a0021c0 <OscRateIn>:
1a0021c0:	1b00 00b7                                   ....

1a0021c4 <leds>:
1a0021c4:	0002 0005 0014 0000 0000 0a02 0e00 0010     ................
1a0021d4:	0000 0000 0b02 0b01 0010 0000 0000 0c02     ................
1a0021e4:	0c01 0010 0000 0000 0102 0105 0014 0000     ................
1a0021f4:	0000 0202 0205 0014 0000 0000               ............

1a002200 <keys>:
1a002200:	0001 0400 00c0 0000 2101 0101 0800 00c0     .........!......
1a002210:	0000 2202 0201 0900 00c0 0000 2303 0601     ...".........#..
1a002220:	0901 00c0 0000 2404                         .......$

1a002228 <InitClkStates>:
1a002228:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a002238:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a002248:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a002258:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a002268:	111a 0001 111b 0001                         ........

1a002270 <UART_PClock>:
1a002270:	0081 0082 00a1 00a2                         ........

1a002278 <UART_BClock>:
1a002278:	01c2 01a2 0182 0162                         ......b.

1a002280 <periph_to_base>:
1a002280:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a002290:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a0022a0:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a0022b0:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a0022c0:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a0022d0:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a0022e0:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a0022f0:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a0022f8 <_init>:
1a0022f8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0022fa:	bf00      	nop

Disassembly of section .fini:

1a0022fc <_fini>:
1a0022fc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0022fe:	bf00      	nop
