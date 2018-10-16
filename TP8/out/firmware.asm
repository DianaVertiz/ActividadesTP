
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 95 03 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	b1 09 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a e9 09 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a db 01 00 1a 5d 09 00 1a 79 09 00 1a     ........]...y...
1a0000cc:	db 01 00 1a 95 09 00 1a db 01 00 1a db 01 00 1a     ................
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a00278c 	.word	0x1a00278c
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000

1a000120 <__bss_section_table_>:
1a000120:	10000000 	.word	0x10000000
1a000124:	000004b0 	.word	0x000004b0

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
1a000430:	f000 fae8 	bl	1a000a04 <main>
1a000434:	e7fe      	b.n	1a000434 <ResetISR+0xa0>
1a000436:	bf00      	nop
1a000438:	40053100 	.word	0x40053100
1a00043c:	10df1000 	.word	0x10df1000
1a000440:	01dff7ff 	.word	0x01dff7ff
1a000444:	e000e280 	.word	0xe000e280
1a000448:	1a000114 	.word	0x1a000114
1a00044c:	1a000120 	.word	0x1a000120
1a000450:	1a000128 	.word	0x1a000128

1a000454 <Chip_RGU_TriggerReset>:
1a000454:	b480      	push	{r7}
1a000456:	b083      	sub	sp, #12
1a000458:	af00      	add	r7, sp, #0
1a00045a:	4603      	mov	r3, r0
1a00045c:	71fb      	strb	r3, [r7, #7]
1a00045e:	79fb      	ldrb	r3, [r7, #7]
1a000460:	f003 031f 	and.w	r3, r3, #31
1a000464:	2201      	movs	r2, #1
1a000466:	fa02 f103 	lsl.w	r1, r2, r3
1a00046a:	4a06      	ldr	r2, [pc, #24]	; (1a000484 <Chip_RGU_TriggerReset+0x30>)
1a00046c:	79fb      	ldrb	r3, [r7, #7]
1a00046e:	095b      	lsrs	r3, r3, #5
1a000470:	b2db      	uxtb	r3, r3
1a000472:	3340      	adds	r3, #64	; 0x40
1a000474:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000478:	bf00      	nop
1a00047a:	370c      	adds	r7, #12
1a00047c:	46bd      	mov	sp, r7
1a00047e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000482:	4770      	bx	lr
1a000484:	40053000 	.word	0x40053000

1a000488 <Chip_GPIO_SetPinState>:
1a000488:	b480      	push	{r7}
1a00048a:	b083      	sub	sp, #12
1a00048c:	af00      	add	r7, sp, #0
1a00048e:	6078      	str	r0, [r7, #4]
1a000490:	4608      	mov	r0, r1
1a000492:	4611      	mov	r1, r2
1a000494:	461a      	mov	r2, r3
1a000496:	4603      	mov	r3, r0
1a000498:	70fb      	strb	r3, [r7, #3]
1a00049a:	460b      	mov	r3, r1
1a00049c:	70bb      	strb	r3, [r7, #2]
1a00049e:	4613      	mov	r3, r2
1a0004a0:	707b      	strb	r3, [r7, #1]
1a0004a2:	78fa      	ldrb	r2, [r7, #3]
1a0004a4:	78bb      	ldrb	r3, [r7, #2]
1a0004a6:	7878      	ldrb	r0, [r7, #1]
1a0004a8:	6879      	ldr	r1, [r7, #4]
1a0004aa:	0152      	lsls	r2, r2, #5
1a0004ac:	440a      	add	r2, r1
1a0004ae:	4413      	add	r3, r2
1a0004b0:	4602      	mov	r2, r0
1a0004b2:	701a      	strb	r2, [r3, #0]
1a0004b4:	bf00      	nop
1a0004b6:	370c      	adds	r7, #12
1a0004b8:	46bd      	mov	sp, r7
1a0004ba:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004be:	4770      	bx	lr

1a0004c0 <Chip_GPIO_SetPinOutLow>:
1a0004c0:	b480      	push	{r7}
1a0004c2:	b083      	sub	sp, #12
1a0004c4:	af00      	add	r7, sp, #0
1a0004c6:	6078      	str	r0, [r7, #4]
1a0004c8:	460b      	mov	r3, r1
1a0004ca:	70fb      	strb	r3, [r7, #3]
1a0004cc:	4613      	mov	r3, r2
1a0004ce:	70bb      	strb	r3, [r7, #2]
1a0004d0:	78bb      	ldrb	r3, [r7, #2]
1a0004d2:	2201      	movs	r2, #1
1a0004d4:	fa02 f303 	lsl.w	r3, r2, r3
1a0004d8:	78fa      	ldrb	r2, [r7, #3]
1a0004da:	4619      	mov	r1, r3
1a0004dc:	687b      	ldr	r3, [r7, #4]
1a0004de:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a0004e2:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0004e6:	bf00      	nop
1a0004e8:	370c      	adds	r7, #12
1a0004ea:	46bd      	mov	sp, r7
1a0004ec:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004f0:	4770      	bx	lr

1a0004f2 <Chip_GPIO_SetPinToggle>:
1a0004f2:	b480      	push	{r7}
1a0004f4:	b083      	sub	sp, #12
1a0004f6:	af00      	add	r7, sp, #0
1a0004f8:	6078      	str	r0, [r7, #4]
1a0004fa:	460b      	mov	r3, r1
1a0004fc:	70fb      	strb	r3, [r7, #3]
1a0004fe:	4613      	mov	r3, r2
1a000500:	70bb      	strb	r3, [r7, #2]
1a000502:	78bb      	ldrb	r3, [r7, #2]
1a000504:	2201      	movs	r2, #1
1a000506:	fa02 f303 	lsl.w	r3, r2, r3
1a00050a:	78fa      	ldrb	r2, [r7, #3]
1a00050c:	4619      	mov	r1, r3
1a00050e:	687b      	ldr	r3, [r7, #4]
1a000510:	f502 620c 	add.w	r2, r2, #2240	; 0x8c0
1a000514:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000518:	bf00      	nop
1a00051a:	370c      	adds	r7, #12
1a00051c:	46bd      	mov	sp, r7
1a00051e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000522:	4770      	bx	lr

1a000524 <getMainMenu>:
1a000524:	b480      	push	{r7}
1a000526:	af00      	add	r7, sp, #0
1a000528:	4b02      	ldr	r3, [pc, #8]	; (1a000534 <getMainMenu+0x10>)
1a00052a:	4618      	mov	r0, r3
1a00052c:	46bd      	mov	sp, r7
1a00052e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000532:	4770      	bx	lr
1a000534:	1a0025fc 	.word	0x1a0025fc

1a000538 <backMainMenu>:
1a000538:	b480      	push	{r7}
1a00053a:	af00      	add	r7, sp, #0
1a00053c:	4b02      	ldr	r3, [pc, #8]	; (1a000548 <backMainMenu+0x10>)
1a00053e:	4618      	mov	r0, r3
1a000540:	46bd      	mov	sp, r7
1a000542:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000546:	4770      	bx	lr
1a000548:	1a0025fc 	.word	0x1a0025fc

1a00054c <backMenuRGB>:
1a00054c:	b480      	push	{r7}
1a00054e:	af00      	add	r7, sp, #0
1a000550:	4b02      	ldr	r3, [pc, #8]	; (1a00055c <backMenuRGB+0x10>)
1a000552:	4618      	mov	r0, r3
1a000554:	46bd      	mov	sp, r7
1a000556:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00055a:	4770      	bx	lr
1a00055c:	1a00255c 	.word	0x1a00255c

1a000560 <menuLed1>:
1a000560:	b480      	push	{r7}
1a000562:	af00      	add	r7, sp, #0
1a000564:	4b02      	ldr	r3, [pc, #8]	; (1a000570 <menuLed1+0x10>)
1a000566:	4618      	mov	r0, r3
1a000568:	46bd      	mov	sp, r7
1a00056a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00056e:	4770      	bx	lr
1a000570:	1a0024e4 	.word	0x1a0024e4

1a000574 <led1On>:
1a000574:	b580      	push	{r7, lr}
1a000576:	af00      	add	r7, sp, #0
1a000578:	4b05      	ldr	r3, [pc, #20]	; (1a000590 <led1On+0x1c>)
1a00057a:	7a19      	ldrb	r1, [r3, #8]
1a00057c:	4b04      	ldr	r3, [pc, #16]	; (1a000590 <led1On+0x1c>)
1a00057e:	7a5a      	ldrb	r2, [r3, #9]
1a000580:	2301      	movs	r3, #1
1a000582:	4804      	ldr	r0, [pc, #16]	; (1a000594 <led1On+0x20>)
1a000584:	f7ff ff80 	bl	1a000488 <Chip_GPIO_SetPinState>
1a000588:	4b03      	ldr	r3, [pc, #12]	; (1a000598 <led1On+0x24>)
1a00058a:	4618      	mov	r0, r3
1a00058c:	bd80      	pop	{r7, pc}
1a00058e:	bf00      	nop
1a000590:	1a002678 	.word	0x1a002678
1a000594:	400f4000 	.word	0x400f4000
1a000598:	1a0024e4 	.word	0x1a0024e4

1a00059c <led1Off>:
1a00059c:	b580      	push	{r7, lr}
1a00059e:	af00      	add	r7, sp, #0
1a0005a0:	4b05      	ldr	r3, [pc, #20]	; (1a0005b8 <led1Off+0x1c>)
1a0005a2:	7a19      	ldrb	r1, [r3, #8]
1a0005a4:	4b04      	ldr	r3, [pc, #16]	; (1a0005b8 <led1Off+0x1c>)
1a0005a6:	7a5b      	ldrb	r3, [r3, #9]
1a0005a8:	461a      	mov	r2, r3
1a0005aa:	4804      	ldr	r0, [pc, #16]	; (1a0005bc <led1Off+0x20>)
1a0005ac:	f7ff ff88 	bl	1a0004c0 <Chip_GPIO_SetPinOutLow>
1a0005b0:	4b03      	ldr	r3, [pc, #12]	; (1a0005c0 <led1Off+0x24>)
1a0005b2:	4618      	mov	r0, r3
1a0005b4:	bd80      	pop	{r7, pc}
1a0005b6:	bf00      	nop
1a0005b8:	1a002678 	.word	0x1a002678
1a0005bc:	400f4000 	.word	0x400f4000
1a0005c0:	1a0024e4 	.word	0x1a0024e4

1a0005c4 <led1Toggle>:
1a0005c4:	b580      	push	{r7, lr}
1a0005c6:	af00      	add	r7, sp, #0
1a0005c8:	4b05      	ldr	r3, [pc, #20]	; (1a0005e0 <led1Toggle+0x1c>)
1a0005ca:	7a19      	ldrb	r1, [r3, #8]
1a0005cc:	4b04      	ldr	r3, [pc, #16]	; (1a0005e0 <led1Toggle+0x1c>)
1a0005ce:	7a5b      	ldrb	r3, [r3, #9]
1a0005d0:	461a      	mov	r2, r3
1a0005d2:	4804      	ldr	r0, [pc, #16]	; (1a0005e4 <led1Toggle+0x20>)
1a0005d4:	f7ff ff8d 	bl	1a0004f2 <Chip_GPIO_SetPinToggle>
1a0005d8:	4b03      	ldr	r3, [pc, #12]	; (1a0005e8 <led1Toggle+0x24>)
1a0005da:	4618      	mov	r0, r3
1a0005dc:	bd80      	pop	{r7, pc}
1a0005de:	bf00      	nop
1a0005e0:	1a002678 	.word	0x1a002678
1a0005e4:	400f4000 	.word	0x400f4000
1a0005e8:	1a0024e4 	.word	0x1a0024e4

1a0005ec <menuLed2>:
1a0005ec:	b480      	push	{r7}
1a0005ee:	af00      	add	r7, sp, #0
1a0005f0:	4b02      	ldr	r3, [pc, #8]	; (1a0005fc <menuLed2+0x10>)
1a0005f2:	4618      	mov	r0, r3
1a0005f4:	46bd      	mov	sp, r7
1a0005f6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005fa:	4770      	bx	lr
1a0005fc:	1a00250c 	.word	0x1a00250c

1a000600 <led2On>:
1a000600:	b580      	push	{r7, lr}
1a000602:	af00      	add	r7, sp, #0
1a000604:	4b05      	ldr	r3, [pc, #20]	; (1a00061c <led2On+0x1c>)
1a000606:	7b99      	ldrb	r1, [r3, #14]
1a000608:	4b04      	ldr	r3, [pc, #16]	; (1a00061c <led2On+0x1c>)
1a00060a:	7bda      	ldrb	r2, [r3, #15]
1a00060c:	2301      	movs	r3, #1
1a00060e:	4804      	ldr	r0, [pc, #16]	; (1a000620 <led2On+0x20>)
1a000610:	f7ff ff3a 	bl	1a000488 <Chip_GPIO_SetPinState>
1a000614:	4b03      	ldr	r3, [pc, #12]	; (1a000624 <led2On+0x24>)
1a000616:	4618      	mov	r0, r3
1a000618:	bd80      	pop	{r7, pc}
1a00061a:	bf00      	nop
1a00061c:	1a002678 	.word	0x1a002678
1a000620:	400f4000 	.word	0x400f4000
1a000624:	1a00250c 	.word	0x1a00250c

1a000628 <led2Off>:
1a000628:	b580      	push	{r7, lr}
1a00062a:	af00      	add	r7, sp, #0
1a00062c:	4b05      	ldr	r3, [pc, #20]	; (1a000644 <led2Off+0x1c>)
1a00062e:	7b99      	ldrb	r1, [r3, #14]
1a000630:	4b04      	ldr	r3, [pc, #16]	; (1a000644 <led2Off+0x1c>)
1a000632:	7bdb      	ldrb	r3, [r3, #15]
1a000634:	461a      	mov	r2, r3
1a000636:	4804      	ldr	r0, [pc, #16]	; (1a000648 <led2Off+0x20>)
1a000638:	f7ff ff42 	bl	1a0004c0 <Chip_GPIO_SetPinOutLow>
1a00063c:	4b03      	ldr	r3, [pc, #12]	; (1a00064c <led2Off+0x24>)
1a00063e:	4618      	mov	r0, r3
1a000640:	bd80      	pop	{r7, pc}
1a000642:	bf00      	nop
1a000644:	1a002678 	.word	0x1a002678
1a000648:	400f4000 	.word	0x400f4000
1a00064c:	1a00250c 	.word	0x1a00250c

1a000650 <led2Toggle>:
1a000650:	b580      	push	{r7, lr}
1a000652:	af00      	add	r7, sp, #0
1a000654:	4b05      	ldr	r3, [pc, #20]	; (1a00066c <led2Toggle+0x1c>)
1a000656:	7b99      	ldrb	r1, [r3, #14]
1a000658:	4b04      	ldr	r3, [pc, #16]	; (1a00066c <led2Toggle+0x1c>)
1a00065a:	7bdb      	ldrb	r3, [r3, #15]
1a00065c:	461a      	mov	r2, r3
1a00065e:	4804      	ldr	r0, [pc, #16]	; (1a000670 <led2Toggle+0x20>)
1a000660:	f7ff ff47 	bl	1a0004f2 <Chip_GPIO_SetPinToggle>
1a000664:	4b03      	ldr	r3, [pc, #12]	; (1a000674 <led2Toggle+0x24>)
1a000666:	4618      	mov	r0, r3
1a000668:	bd80      	pop	{r7, pc}
1a00066a:	bf00      	nop
1a00066c:	1a002678 	.word	0x1a002678
1a000670:	400f4000 	.word	0x400f4000
1a000674:	1a00250c 	.word	0x1a00250c

1a000678 <menuLed3>:
1a000678:	b480      	push	{r7}
1a00067a:	af00      	add	r7, sp, #0
1a00067c:	4b02      	ldr	r3, [pc, #8]	; (1a000688 <menuLed3+0x10>)
1a00067e:	4618      	mov	r0, r3
1a000680:	46bd      	mov	sp, r7
1a000682:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000686:	4770      	bx	lr
1a000688:	1a002534 	.word	0x1a002534

1a00068c <led3On>:
1a00068c:	b580      	push	{r7, lr}
1a00068e:	af00      	add	r7, sp, #0
1a000690:	4b05      	ldr	r3, [pc, #20]	; (1a0006a8 <led3On+0x1c>)
1a000692:	7d19      	ldrb	r1, [r3, #20]
1a000694:	4b04      	ldr	r3, [pc, #16]	; (1a0006a8 <led3On+0x1c>)
1a000696:	7d5a      	ldrb	r2, [r3, #21]
1a000698:	2301      	movs	r3, #1
1a00069a:	4804      	ldr	r0, [pc, #16]	; (1a0006ac <led3On+0x20>)
1a00069c:	f7ff fef4 	bl	1a000488 <Chip_GPIO_SetPinState>
1a0006a0:	4b03      	ldr	r3, [pc, #12]	; (1a0006b0 <led3On+0x24>)
1a0006a2:	4618      	mov	r0, r3
1a0006a4:	bd80      	pop	{r7, pc}
1a0006a6:	bf00      	nop
1a0006a8:	1a002678 	.word	0x1a002678
1a0006ac:	400f4000 	.word	0x400f4000
1a0006b0:	1a002534 	.word	0x1a002534

1a0006b4 <led3Off>:
1a0006b4:	b580      	push	{r7, lr}
1a0006b6:	af00      	add	r7, sp, #0
1a0006b8:	4b05      	ldr	r3, [pc, #20]	; (1a0006d0 <led3Off+0x1c>)
1a0006ba:	7d19      	ldrb	r1, [r3, #20]
1a0006bc:	4b04      	ldr	r3, [pc, #16]	; (1a0006d0 <led3Off+0x1c>)
1a0006be:	7d5b      	ldrb	r3, [r3, #21]
1a0006c0:	461a      	mov	r2, r3
1a0006c2:	4804      	ldr	r0, [pc, #16]	; (1a0006d4 <led3Off+0x20>)
1a0006c4:	f7ff fefc 	bl	1a0004c0 <Chip_GPIO_SetPinOutLow>
1a0006c8:	4b03      	ldr	r3, [pc, #12]	; (1a0006d8 <led3Off+0x24>)
1a0006ca:	4618      	mov	r0, r3
1a0006cc:	bd80      	pop	{r7, pc}
1a0006ce:	bf00      	nop
1a0006d0:	1a002678 	.word	0x1a002678
1a0006d4:	400f4000 	.word	0x400f4000
1a0006d8:	1a002534 	.word	0x1a002534

1a0006dc <led3Toggle>:
1a0006dc:	b580      	push	{r7, lr}
1a0006de:	af00      	add	r7, sp, #0
1a0006e0:	4b05      	ldr	r3, [pc, #20]	; (1a0006f8 <led3Toggle+0x1c>)
1a0006e2:	7d19      	ldrb	r1, [r3, #20]
1a0006e4:	4b04      	ldr	r3, [pc, #16]	; (1a0006f8 <led3Toggle+0x1c>)
1a0006e6:	7d5b      	ldrb	r3, [r3, #21]
1a0006e8:	461a      	mov	r2, r3
1a0006ea:	4804      	ldr	r0, [pc, #16]	; (1a0006fc <led3Toggle+0x20>)
1a0006ec:	f7ff ff01 	bl	1a0004f2 <Chip_GPIO_SetPinToggle>
1a0006f0:	4b03      	ldr	r3, [pc, #12]	; (1a000700 <led3Toggle+0x24>)
1a0006f2:	4618      	mov	r0, r3
1a0006f4:	bd80      	pop	{r7, pc}
1a0006f6:	bf00      	nop
1a0006f8:	1a002678 	.word	0x1a002678
1a0006fc:	400f4000 	.word	0x400f4000
1a000700:	1a002534 	.word	0x1a002534

1a000704 <menuLedrgb>:
1a000704:	b480      	push	{r7}
1a000706:	af00      	add	r7, sp, #0
1a000708:	4b02      	ldr	r3, [pc, #8]	; (1a000714 <menuLedrgb+0x10>)
1a00070a:	4618      	mov	r0, r3
1a00070c:	46bd      	mov	sp, r7
1a00070e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000712:	4770      	bx	lr
1a000714:	1a00255c 	.word	0x1a00255c

1a000718 <menuLedr>:
1a000718:	b480      	push	{r7}
1a00071a:	af00      	add	r7, sp, #0
1a00071c:	4b02      	ldr	r3, [pc, #8]	; (1a000728 <menuLedr+0x10>)
1a00071e:	4618      	mov	r0, r3
1a000720:	46bd      	mov	sp, r7
1a000722:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000726:	4770      	bx	lr
1a000728:	1a002584 	.word	0x1a002584

1a00072c <ledrOn>:
1a00072c:	b580      	push	{r7, lr}
1a00072e:	af00      	add	r7, sp, #0
1a000730:	4b05      	ldr	r3, [pc, #20]	; (1a000748 <ledrOn+0x1c>)
1a000732:	7e99      	ldrb	r1, [r3, #26]
1a000734:	4b04      	ldr	r3, [pc, #16]	; (1a000748 <ledrOn+0x1c>)
1a000736:	7eda      	ldrb	r2, [r3, #27]
1a000738:	2301      	movs	r3, #1
1a00073a:	4804      	ldr	r0, [pc, #16]	; (1a00074c <ledrOn+0x20>)
1a00073c:	f7ff fea4 	bl	1a000488 <Chip_GPIO_SetPinState>
1a000740:	4b03      	ldr	r3, [pc, #12]	; (1a000750 <ledrOn+0x24>)
1a000742:	4618      	mov	r0, r3
1a000744:	bd80      	pop	{r7, pc}
1a000746:	bf00      	nop
1a000748:	1a002678 	.word	0x1a002678
1a00074c:	400f4000 	.word	0x400f4000
1a000750:	1a002584 	.word	0x1a002584

1a000754 <ledrOff>:
1a000754:	b580      	push	{r7, lr}
1a000756:	af00      	add	r7, sp, #0
1a000758:	4b05      	ldr	r3, [pc, #20]	; (1a000770 <ledrOff+0x1c>)
1a00075a:	7e99      	ldrb	r1, [r3, #26]
1a00075c:	4b04      	ldr	r3, [pc, #16]	; (1a000770 <ledrOff+0x1c>)
1a00075e:	7edb      	ldrb	r3, [r3, #27]
1a000760:	461a      	mov	r2, r3
1a000762:	4804      	ldr	r0, [pc, #16]	; (1a000774 <ledrOff+0x20>)
1a000764:	f7ff feac 	bl	1a0004c0 <Chip_GPIO_SetPinOutLow>
1a000768:	4b03      	ldr	r3, [pc, #12]	; (1a000778 <ledrOff+0x24>)
1a00076a:	4618      	mov	r0, r3
1a00076c:	bd80      	pop	{r7, pc}
1a00076e:	bf00      	nop
1a000770:	1a002678 	.word	0x1a002678
1a000774:	400f4000 	.word	0x400f4000
1a000778:	1a002584 	.word	0x1a002584

1a00077c <ledrToggle>:
1a00077c:	b580      	push	{r7, lr}
1a00077e:	af00      	add	r7, sp, #0
1a000780:	4b05      	ldr	r3, [pc, #20]	; (1a000798 <ledrToggle+0x1c>)
1a000782:	7e99      	ldrb	r1, [r3, #26]
1a000784:	4b04      	ldr	r3, [pc, #16]	; (1a000798 <ledrToggle+0x1c>)
1a000786:	7edb      	ldrb	r3, [r3, #27]
1a000788:	461a      	mov	r2, r3
1a00078a:	4804      	ldr	r0, [pc, #16]	; (1a00079c <ledrToggle+0x20>)
1a00078c:	f7ff feb1 	bl	1a0004f2 <Chip_GPIO_SetPinToggle>
1a000790:	4b03      	ldr	r3, [pc, #12]	; (1a0007a0 <ledrToggle+0x24>)
1a000792:	4618      	mov	r0, r3
1a000794:	bd80      	pop	{r7, pc}
1a000796:	bf00      	nop
1a000798:	1a002678 	.word	0x1a002678
1a00079c:	400f4000 	.word	0x400f4000
1a0007a0:	1a002584 	.word	0x1a002584

1a0007a4 <menuLedg>:
1a0007a4:	b480      	push	{r7}
1a0007a6:	af00      	add	r7, sp, #0
1a0007a8:	4b02      	ldr	r3, [pc, #8]	; (1a0007b4 <menuLedg+0x10>)
1a0007aa:	4618      	mov	r0, r3
1a0007ac:	46bd      	mov	sp, r7
1a0007ae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0007b2:	4770      	bx	lr
1a0007b4:	1a0025ac 	.word	0x1a0025ac

1a0007b8 <ledgOn>:
1a0007b8:	b580      	push	{r7, lr}
1a0007ba:	af00      	add	r7, sp, #0
1a0007bc:	4b06      	ldr	r3, [pc, #24]	; (1a0007d8 <ledgOn+0x20>)
1a0007be:	f893 1020 	ldrb.w	r1, [r3, #32]
1a0007c2:	4b05      	ldr	r3, [pc, #20]	; (1a0007d8 <ledgOn+0x20>)
1a0007c4:	f893 2021 	ldrb.w	r2, [r3, #33]	; 0x21
1a0007c8:	2301      	movs	r3, #1
1a0007ca:	4804      	ldr	r0, [pc, #16]	; (1a0007dc <ledgOn+0x24>)
1a0007cc:	f7ff fe5c 	bl	1a000488 <Chip_GPIO_SetPinState>
1a0007d0:	4b03      	ldr	r3, [pc, #12]	; (1a0007e0 <ledgOn+0x28>)
1a0007d2:	4618      	mov	r0, r3
1a0007d4:	bd80      	pop	{r7, pc}
1a0007d6:	bf00      	nop
1a0007d8:	1a002678 	.word	0x1a002678
1a0007dc:	400f4000 	.word	0x400f4000
1a0007e0:	1a0025ac 	.word	0x1a0025ac

1a0007e4 <ledgOff>:
1a0007e4:	b580      	push	{r7, lr}
1a0007e6:	af00      	add	r7, sp, #0
1a0007e8:	4b06      	ldr	r3, [pc, #24]	; (1a000804 <ledgOff+0x20>)
1a0007ea:	f893 1020 	ldrb.w	r1, [r3, #32]
1a0007ee:	4b05      	ldr	r3, [pc, #20]	; (1a000804 <ledgOff+0x20>)
1a0007f0:	f893 3021 	ldrb.w	r3, [r3, #33]	; 0x21
1a0007f4:	461a      	mov	r2, r3
1a0007f6:	4804      	ldr	r0, [pc, #16]	; (1a000808 <ledgOff+0x24>)
1a0007f8:	f7ff fe62 	bl	1a0004c0 <Chip_GPIO_SetPinOutLow>
1a0007fc:	4b03      	ldr	r3, [pc, #12]	; (1a00080c <ledgOff+0x28>)
1a0007fe:	4618      	mov	r0, r3
1a000800:	bd80      	pop	{r7, pc}
1a000802:	bf00      	nop
1a000804:	1a002678 	.word	0x1a002678
1a000808:	400f4000 	.word	0x400f4000
1a00080c:	1a0025ac 	.word	0x1a0025ac

1a000810 <ledgToggle>:
1a000810:	b580      	push	{r7, lr}
1a000812:	af00      	add	r7, sp, #0
1a000814:	4b06      	ldr	r3, [pc, #24]	; (1a000830 <ledgToggle+0x20>)
1a000816:	f893 1020 	ldrb.w	r1, [r3, #32]
1a00081a:	4b05      	ldr	r3, [pc, #20]	; (1a000830 <ledgToggle+0x20>)
1a00081c:	f893 3021 	ldrb.w	r3, [r3, #33]	; 0x21
1a000820:	461a      	mov	r2, r3
1a000822:	4804      	ldr	r0, [pc, #16]	; (1a000834 <ledgToggle+0x24>)
1a000824:	f7ff fe65 	bl	1a0004f2 <Chip_GPIO_SetPinToggle>
1a000828:	4b03      	ldr	r3, [pc, #12]	; (1a000838 <ledgToggle+0x28>)
1a00082a:	4618      	mov	r0, r3
1a00082c:	bd80      	pop	{r7, pc}
1a00082e:	bf00      	nop
1a000830:	1a002678 	.word	0x1a002678
1a000834:	400f4000 	.word	0x400f4000
1a000838:	1a0025ac 	.word	0x1a0025ac

1a00083c <menuLedb>:
1a00083c:	b480      	push	{r7}
1a00083e:	af00      	add	r7, sp, #0
1a000840:	4b02      	ldr	r3, [pc, #8]	; (1a00084c <menuLedb+0x10>)
1a000842:	4618      	mov	r0, r3
1a000844:	46bd      	mov	sp, r7
1a000846:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00084a:	4770      	bx	lr
1a00084c:	1a0025d4 	.word	0x1a0025d4

1a000850 <ledbOn>:
1a000850:	b580      	push	{r7, lr}
1a000852:	af00      	add	r7, sp, #0
1a000854:	4b05      	ldr	r3, [pc, #20]	; (1a00086c <ledbOn+0x1c>)
1a000856:	7899      	ldrb	r1, [r3, #2]
1a000858:	4b04      	ldr	r3, [pc, #16]	; (1a00086c <ledbOn+0x1c>)
1a00085a:	78da      	ldrb	r2, [r3, #3]
1a00085c:	2301      	movs	r3, #1
1a00085e:	4804      	ldr	r0, [pc, #16]	; (1a000870 <ledbOn+0x20>)
1a000860:	f7ff fe12 	bl	1a000488 <Chip_GPIO_SetPinState>
1a000864:	4b03      	ldr	r3, [pc, #12]	; (1a000874 <ledbOn+0x24>)
1a000866:	4618      	mov	r0, r3
1a000868:	bd80      	pop	{r7, pc}
1a00086a:	bf00      	nop
1a00086c:	1a002678 	.word	0x1a002678
1a000870:	400f4000 	.word	0x400f4000
1a000874:	1a0025d4 	.word	0x1a0025d4

1a000878 <ledbOff>:
1a000878:	b580      	push	{r7, lr}
1a00087a:	af00      	add	r7, sp, #0
1a00087c:	4b05      	ldr	r3, [pc, #20]	; (1a000894 <ledbOff+0x1c>)
1a00087e:	7899      	ldrb	r1, [r3, #2]
1a000880:	4b04      	ldr	r3, [pc, #16]	; (1a000894 <ledbOff+0x1c>)
1a000882:	78db      	ldrb	r3, [r3, #3]
1a000884:	461a      	mov	r2, r3
1a000886:	4804      	ldr	r0, [pc, #16]	; (1a000898 <ledbOff+0x20>)
1a000888:	f7ff fe1a 	bl	1a0004c0 <Chip_GPIO_SetPinOutLow>
1a00088c:	4b03      	ldr	r3, [pc, #12]	; (1a00089c <ledbOff+0x24>)
1a00088e:	4618      	mov	r0, r3
1a000890:	bd80      	pop	{r7, pc}
1a000892:	bf00      	nop
1a000894:	1a002678 	.word	0x1a002678
1a000898:	400f4000 	.word	0x400f4000
1a00089c:	1a0025d4 	.word	0x1a0025d4

1a0008a0 <ledbToggle>:
1a0008a0:	b580      	push	{r7, lr}
1a0008a2:	af00      	add	r7, sp, #0
1a0008a4:	4b05      	ldr	r3, [pc, #20]	; (1a0008bc <ledbToggle+0x1c>)
1a0008a6:	7899      	ldrb	r1, [r3, #2]
1a0008a8:	4b04      	ldr	r3, [pc, #16]	; (1a0008bc <ledbToggle+0x1c>)
1a0008aa:	78db      	ldrb	r3, [r3, #3]
1a0008ac:	461a      	mov	r2, r3
1a0008ae:	4804      	ldr	r0, [pc, #16]	; (1a0008c0 <ledbToggle+0x20>)
1a0008b0:	f7ff fe1f 	bl	1a0004f2 <Chip_GPIO_SetPinToggle>
1a0008b4:	4b03      	ldr	r3, [pc, #12]	; (1a0008c4 <ledbToggle+0x24>)
1a0008b6:	4618      	mov	r0, r3
1a0008b8:	bd80      	pop	{r7, pc}
1a0008ba:	bf00      	nop
1a0008bc:	1a002678 	.word	0x1a002678
1a0008c0:	400f4000 	.word	0x400f4000
1a0008c4:	1a0025d4 	.word	0x1a0025d4

1a0008c8 <doReset>:
1a0008c8:	b580      	push	{r7, lr}
1a0008ca:	af00      	add	r7, sp, #0
1a0008cc:	2000      	movs	r0, #0
1a0008ce:	f7ff fdc1 	bl	1a000454 <Chip_RGU_TriggerReset>
1a0008d2:	4b01      	ldr	r3, [pc, #4]	; (1a0008d8 <doReset+0x10>)
1a0008d4:	4618      	mov	r0, r3
1a0008d6:	bd80      	pop	{r7, pc}
1a0008d8:	1a0025fc 	.word	0x1a0025fc

1a0008dc <Chip_PININT_ClearIntStatus>:
1a0008dc:	b480      	push	{r7}
1a0008de:	b083      	sub	sp, #12
1a0008e0:	af00      	add	r7, sp, #0
1a0008e2:	6078      	str	r0, [r7, #4]
1a0008e4:	6039      	str	r1, [r7, #0]
1a0008e6:	687b      	ldr	r3, [r7, #4]
1a0008e8:	683a      	ldr	r2, [r7, #0]
1a0008ea:	625a      	str	r2, [r3, #36]	; 0x24
1a0008ec:	bf00      	nop
1a0008ee:	370c      	adds	r7, #12
1a0008f0:	46bd      	mov	sp, r7
1a0008f2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008f6:	4770      	bx	lr

1a0008f8 <Chip_UART_ReadByte>:
1a0008f8:	b480      	push	{r7}
1a0008fa:	b083      	sub	sp, #12
1a0008fc:	af00      	add	r7, sp, #0
1a0008fe:	6078      	str	r0, [r7, #4]
1a000900:	687b      	ldr	r3, [r7, #4]
1a000902:	681b      	ldr	r3, [r3, #0]
1a000904:	b2db      	uxtb	r3, r3
1a000906:	4618      	mov	r0, r3
1a000908:	370c      	adds	r7, #12
1a00090a:	46bd      	mov	sp, r7
1a00090c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000910:	4770      	bx	lr

1a000912 <StopWatch_Elapsed>:
1a000912:	b580      	push	{r7, lr}
1a000914:	b082      	sub	sp, #8
1a000916:	af00      	add	r7, sp, #0
1a000918:	6078      	str	r0, [r7, #4]
1a00091a:	f000 fef5 	bl	1a001708 <StopWatch_Start>
1a00091e:	4602      	mov	r2, r0
1a000920:	687b      	ldr	r3, [r7, #4]
1a000922:	1ad3      	subs	r3, r2, r3
1a000924:	4618      	mov	r0, r3
1a000926:	3708      	adds	r7, #8
1a000928:	46bd      	mov	sp, r7
1a00092a:	bd80      	pop	{r7, pc}

1a00092c <StopWatch_DelayMs>:
1a00092c:	b580      	push	{r7, lr}
1a00092e:	b084      	sub	sp, #16
1a000930:	af00      	add	r7, sp, #0
1a000932:	6078      	str	r0, [r7, #4]
1a000934:	6878      	ldr	r0, [r7, #4]
1a000936:	f000 fef1 	bl	1a00171c <StopWatch_MsToTicks>
1a00093a:	60f8      	str	r0, [r7, #12]
1a00093c:	f000 fee4 	bl	1a001708 <StopWatch_Start>
1a000940:	60b8      	str	r0, [r7, #8]
1a000942:	bf00      	nop
1a000944:	68b8      	ldr	r0, [r7, #8]
1a000946:	f7ff ffe4 	bl	1a000912 <StopWatch_Elapsed>
1a00094a:	4602      	mov	r2, r0
1a00094c:	68fb      	ldr	r3, [r7, #12]
1a00094e:	4293      	cmp	r3, r2
1a000950:	d8f8      	bhi.n	1a000944 <StopWatch_DelayMs+0x18>
1a000952:	bf00      	nop
1a000954:	3710      	adds	r7, #16
1a000956:	46bd      	mov	sp, r7
1a000958:	bd80      	pop	{r7, pc}
1a00095a:	Address 0x000000001a00095a is out of bounds.


1a00095c <GPIO1_IRQHandler>:
1a00095c:	b580      	push	{r7, lr}
1a00095e:	af00      	add	r7, sp, #0
1a000960:	2102      	movs	r1, #2
1a000962:	4804      	ldr	r0, [pc, #16]	; (1a000974 <GPIO1_IRQHandler+0x18>)
1a000964:	f7ff ffba 	bl	1a0008dc <Chip_PININT_ClearIntStatus>
1a000968:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a00096c:	f7ff ffde 	bl	1a00092c <StopWatch_DelayMs>
1a000970:	bf00      	nop
1a000972:	bd80      	pop	{r7, pc}
1a000974:	40087000 	.word	0x40087000

1a000978 <GPIO2_IRQHandler>:
1a000978:	b580      	push	{r7, lr}
1a00097a:	af00      	add	r7, sp, #0
1a00097c:	2104      	movs	r1, #4
1a00097e:	4804      	ldr	r0, [pc, #16]	; (1a000990 <GPIO2_IRQHandler+0x18>)
1a000980:	f7ff ffac 	bl	1a0008dc <Chip_PININT_ClearIntStatus>
1a000984:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a000988:	f7ff ffd0 	bl	1a00092c <StopWatch_DelayMs>
1a00098c:	bf00      	nop
1a00098e:	bd80      	pop	{r7, pc}
1a000990:	40087000 	.word	0x40087000

1a000994 <GPIO4_IRQHandler>:
1a000994:	b580      	push	{r7, lr}
1a000996:	af00      	add	r7, sp, #0
1a000998:	2110      	movs	r1, #16
1a00099a:	4804      	ldr	r0, [pc, #16]	; (1a0009ac <GPIO4_IRQHandler+0x18>)
1a00099c:	f7ff ff9e 	bl	1a0008dc <Chip_PININT_ClearIntStatus>
1a0009a0:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a0009a4:	f7ff ffc2 	bl	1a00092c <StopWatch_DelayMs>
1a0009a8:	bf00      	nop
1a0009aa:	bd80      	pop	{r7, pc}
1a0009ac:	40087000 	.word	0x40087000

1a0009b0 <SysTick_Handler>:
1a0009b0:	b480      	push	{r7}
1a0009b2:	af00      	add	r7, sp, #0
1a0009b4:	4b0a      	ldr	r3, [pc, #40]	; (1a0009e0 <SysTick_Handler+0x30>)
1a0009b6:	681b      	ldr	r3, [r3, #0]
1a0009b8:	3301      	adds	r3, #1
1a0009ba:	4a09      	ldr	r2, [pc, #36]	; (1a0009e0 <SysTick_Handler+0x30>)
1a0009bc:	6013      	str	r3, [r2, #0]
1a0009be:	4b08      	ldr	r3, [pc, #32]	; (1a0009e0 <SysTick_Handler+0x30>)
1a0009c0:	681b      	ldr	r3, [r3, #0]
1a0009c2:	f5b3 7f7a 	cmp.w	r3, #1000	; 0x3e8
1a0009c6:	d305      	bcc.n	1a0009d4 <SysTick_Handler+0x24>
1a0009c8:	4b06      	ldr	r3, [pc, #24]	; (1a0009e4 <SysTick_Handler+0x34>)
1a0009ca:	2201      	movs	r2, #1
1a0009cc:	701a      	strb	r2, [r3, #0]
1a0009ce:	4b04      	ldr	r3, [pc, #16]	; (1a0009e0 <SysTick_Handler+0x30>)
1a0009d0:	2200      	movs	r2, #0
1a0009d2:	601a      	str	r2, [r3, #0]
1a0009d4:	bf00      	nop
1a0009d6:	46bd      	mov	sp, r7
1a0009d8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009dc:	4770      	bx	lr
1a0009de:	bf00      	nop
1a0009e0:	10000004 	.word	0x10000004
1a0009e4:	10000000 	.word	0x10000000

1a0009e8 <UART2_IRQHandler>:
1a0009e8:	b580      	push	{r7, lr}
1a0009ea:	b082      	sub	sp, #8
1a0009ec:	af00      	add	r7, sp, #0
1a0009ee:	4804      	ldr	r0, [pc, #16]	; (1a000a00 <UART2_IRQHandler+0x18>)
1a0009f0:	f7ff ff82 	bl	1a0008f8 <Chip_UART_ReadByte>
1a0009f4:	4603      	mov	r3, r0
1a0009f6:	71fb      	strb	r3, [r7, #7]
1a0009f8:	bf00      	nop
1a0009fa:	3708      	adds	r7, #8
1a0009fc:	46bd      	mov	sp, r7
1a0009fe:	bd80      	pop	{r7, pc}
1a000a00:	400c1000 	.word	0x400c1000

1a000a04 <main>:
1a000a04:	b580      	push	{r7, lr}
1a000a06:	b084      	sub	sp, #16
1a000a08:	af00      	add	r7, sp, #0
1a000a0a:	f000 f9be 	bl	1a000d8a <inicializar_sistema>
1a000a0e:	f000 f9c9 	bl	1a000da4 <inicializar_leds>
1a000a12:	f000 fa2b 	bl	1a000e6c <inicializar_teclado>
1a000a16:	f000 fab5 	bl	1a000f84 <init_interrupciones>
1a000a1a:	f000 fa71 	bl	1a000f00 <inicializar_USART>
1a000a1e:	2300      	movs	r3, #0
1a000a20:	73fb      	strb	r3, [r7, #15]
1a000a22:	2300      	movs	r3, #0
1a000a24:	71bb      	strb	r3, [r7, #6]
1a000a26:	f7ff fd7d 	bl	1a000524 <getMainMenu>
1a000a2a:	60b8      	str	r0, [r7, #8]
1a000a2c:	481d      	ldr	r0, [pc, #116]	; (1a000aa4 <main+0xa0>)
1a000a2e:	f000 faf5 	bl	1a00101c <print>
1a000a32:	e00a      	b.n	1a000a4a <main+0x46>
1a000a34:	7bfb      	ldrb	r3, [r7, #15]
1a000a36:	00db      	lsls	r3, r3, #3
1a000a38:	68ba      	ldr	r2, [r7, #8]
1a000a3a:	4413      	add	r3, r2
1a000a3c:	681b      	ldr	r3, [r3, #0]
1a000a3e:	4618      	mov	r0, r3
1a000a40:	f000 faec 	bl	1a00101c <print>
1a000a44:	7bfb      	ldrb	r3, [r7, #15]
1a000a46:	3301      	adds	r3, #1
1a000a48:	73fb      	strb	r3, [r7, #15]
1a000a4a:	7bfb      	ldrb	r3, [r7, #15]
1a000a4c:	00db      	lsls	r3, r3, #3
1a000a4e:	68ba      	ldr	r2, [r7, #8]
1a000a50:	4413      	add	r3, r2
1a000a52:	681b      	ldr	r3, [r3, #0]
1a000a54:	2b00      	cmp	r3, #0
1a000a56:	d1ed      	bne.n	1a000a34 <main+0x30>
1a000a58:	bf00      	nop
1a000a5a:	1dbb      	adds	r3, r7, #6
1a000a5c:	2201      	movs	r2, #1
1a000a5e:	4619      	mov	r1, r3
1a000a60:	4811      	ldr	r0, [pc, #68]	; (1a000aa8 <main+0xa4>)
1a000a62:	f000 fd8f 	bl	1a001584 <Chip_UART_ReadBlocking>
1a000a66:	4603      	mov	r3, r0
1a000a68:	2b00      	cmp	r3, #0
1a000a6a:	d0f6      	beq.n	1a000a5a <main+0x56>
1a000a6c:	79bb      	ldrb	r3, [r7, #6]
1a000a6e:	3b30      	subs	r3, #48	; 0x30
1a000a70:	71fb      	strb	r3, [r7, #7]
1a000a72:	480e      	ldr	r0, [pc, #56]	; (1a000aac <main+0xa8>)
1a000a74:	f000 fad2 	bl	1a00101c <print>
1a000a78:	79fb      	ldrb	r3, [r7, #7]
1a000a7a:	3b01      	subs	r3, #1
1a000a7c:	71fb      	strb	r3, [r7, #7]
1a000a7e:	79fa      	ldrb	r2, [r7, #7]
1a000a80:	7bfb      	ldrb	r3, [r7, #15]
1a000a82:	429a      	cmp	r2, r3
1a000a84:	d207      	bcs.n	1a000a96 <main+0x92>
1a000a86:	79fb      	ldrb	r3, [r7, #7]
1a000a88:	00db      	lsls	r3, r3, #3
1a000a8a:	68ba      	ldr	r2, [r7, #8]
1a000a8c:	4413      	add	r3, r2
1a000a8e:	685b      	ldr	r3, [r3, #4]
1a000a90:	4798      	blx	r3
1a000a92:	60b8      	str	r0, [r7, #8]
1a000a94:	e002      	b.n	1a000a9c <main+0x98>
1a000a96:	4806      	ldr	r0, [pc, #24]	; (1a000ab0 <main+0xac>)
1a000a98:	f000 fac0 	bl	1a00101c <print>
1a000a9c:	2300      	movs	r3, #0
1a000a9e:	73fb      	strb	r3, [r7, #15]
1a000aa0:	e7d3      	b.n	1a000a4a <main+0x46>
1a000aa2:	bf00      	nop
1a000aa4:	1a00262c 	.word	0x1a00262c
1a000aa8:	400c1000 	.word	0x400c1000
1a000aac:	1a002660 	.word	0x1a002660
1a000ab0:	1a002664 	.word	0x1a002664

1a000ab4 <NVIC_EnableIRQ>:
1a000ab4:	b480      	push	{r7}
1a000ab6:	b083      	sub	sp, #12
1a000ab8:	af00      	add	r7, sp, #0
1a000aba:	4603      	mov	r3, r0
1a000abc:	71fb      	strb	r3, [r7, #7]
1a000abe:	79fb      	ldrb	r3, [r7, #7]
1a000ac0:	f003 031f 	and.w	r3, r3, #31
1a000ac4:	2201      	movs	r2, #1
1a000ac6:	fa02 f103 	lsl.w	r1, r2, r3
1a000aca:	4a06      	ldr	r2, [pc, #24]	; (1a000ae4 <NVIC_EnableIRQ+0x30>)
1a000acc:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000ad0:	095b      	lsrs	r3, r3, #5
1a000ad2:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000ad6:	bf00      	nop
1a000ad8:	370c      	adds	r7, #12
1a000ada:	46bd      	mov	sp, r7
1a000adc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ae0:	4770      	bx	lr
1a000ae2:	bf00      	nop
1a000ae4:	e000e100 	.word	0xe000e100

1a000ae8 <NVIC_ClearPendingIRQ>:
1a000ae8:	b480      	push	{r7}
1a000aea:	b083      	sub	sp, #12
1a000aec:	af00      	add	r7, sp, #0
1a000aee:	4603      	mov	r3, r0
1a000af0:	71fb      	strb	r3, [r7, #7]
1a000af2:	79fb      	ldrb	r3, [r7, #7]
1a000af4:	f003 031f 	and.w	r3, r3, #31
1a000af8:	2201      	movs	r2, #1
1a000afa:	fa02 f103 	lsl.w	r1, r2, r3
1a000afe:	4a06      	ldr	r2, [pc, #24]	; (1a000b18 <NVIC_ClearPendingIRQ+0x30>)
1a000b00:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000b04:	095b      	lsrs	r3, r3, #5
1a000b06:	3360      	adds	r3, #96	; 0x60
1a000b08:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000b0c:	bf00      	nop
1a000b0e:	370c      	adds	r7, #12
1a000b10:	46bd      	mov	sp, r7
1a000b12:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b16:	4770      	bx	lr
1a000b18:	e000e100 	.word	0xe000e100

1a000b1c <Chip_SCU_PinMuxSet>:
1a000b1c:	b480      	push	{r7}
1a000b1e:	b083      	sub	sp, #12
1a000b20:	af00      	add	r7, sp, #0
1a000b22:	4603      	mov	r3, r0
1a000b24:	71fb      	strb	r3, [r7, #7]
1a000b26:	460b      	mov	r3, r1
1a000b28:	71bb      	strb	r3, [r7, #6]
1a000b2a:	4613      	mov	r3, r2
1a000b2c:	80bb      	strh	r3, [r7, #4]
1a000b2e:	4807      	ldr	r0, [pc, #28]	; (1a000b4c <Chip_SCU_PinMuxSet+0x30>)
1a000b30:	79f9      	ldrb	r1, [r7, #7]
1a000b32:	79bb      	ldrb	r3, [r7, #6]
1a000b34:	88ba      	ldrh	r2, [r7, #4]
1a000b36:	0149      	lsls	r1, r1, #5
1a000b38:	440b      	add	r3, r1
1a000b3a:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a000b3e:	bf00      	nop
1a000b40:	370c      	adds	r7, #12
1a000b42:	46bd      	mov	sp, r7
1a000b44:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000b48:	4770      	bx	lr
1a000b4a:	bf00      	nop
1a000b4c:	40086000 	.word	0x40086000

1a000b50 <Chip_SCU_PinMux>:
1a000b50:	b590      	push	{r4, r7, lr}
1a000b52:	b083      	sub	sp, #12
1a000b54:	af00      	add	r7, sp, #0
1a000b56:	4604      	mov	r4, r0
1a000b58:	4608      	mov	r0, r1
1a000b5a:	4611      	mov	r1, r2
1a000b5c:	461a      	mov	r2, r3
1a000b5e:	4623      	mov	r3, r4
1a000b60:	71fb      	strb	r3, [r7, #7]
1a000b62:	4603      	mov	r3, r0
1a000b64:	71bb      	strb	r3, [r7, #6]
1a000b66:	460b      	mov	r3, r1
1a000b68:	80bb      	strh	r3, [r7, #4]
1a000b6a:	4613      	mov	r3, r2
1a000b6c:	70fb      	strb	r3, [r7, #3]
1a000b6e:	78fb      	ldrb	r3, [r7, #3]
1a000b70:	b29a      	uxth	r2, r3
1a000b72:	88bb      	ldrh	r3, [r7, #4]
1a000b74:	4313      	orrs	r3, r2
1a000b76:	b29a      	uxth	r2, r3
1a000b78:	79b9      	ldrb	r1, [r7, #6]
1a000b7a:	79fb      	ldrb	r3, [r7, #7]
1a000b7c:	4618      	mov	r0, r3
1a000b7e:	f7ff ffcd 	bl	1a000b1c <Chip_SCU_PinMuxSet>
1a000b82:	bf00      	nop
1a000b84:	370c      	adds	r7, #12
1a000b86:	46bd      	mov	sp, r7
1a000b88:	bd90      	pop	{r4, r7, pc}
1a000b8a:	Address 0x000000001a000b8a is out of bounds.


1a000b8c <Chip_SCU_GPIOIntPinSel>:
1a000b8c:	b480      	push	{r7}
1a000b8e:	b085      	sub	sp, #20
1a000b90:	af00      	add	r7, sp, #0
1a000b92:	4603      	mov	r3, r0
1a000b94:	71fb      	strb	r3, [r7, #7]
1a000b96:	460b      	mov	r3, r1
1a000b98:	71bb      	strb	r3, [r7, #6]
1a000b9a:	4613      	mov	r3, r2
1a000b9c:	717b      	strb	r3, [r7, #5]
1a000b9e:	79fb      	ldrb	r3, [r7, #7]
1a000ba0:	00db      	lsls	r3, r3, #3
1a000ba2:	f003 0318 	and.w	r3, r3, #24
1a000ba6:	60fb      	str	r3, [r7, #12]
1a000ba8:	79bb      	ldrb	r3, [r7, #6]
1a000baa:	015b      	lsls	r3, r3, #5
1a000bac:	b2da      	uxtb	r2, r3
1a000bae:	797b      	ldrb	r3, [r7, #5]
1a000bb0:	f003 031f 	and.w	r3, r3, #31
1a000bb4:	431a      	orrs	r2, r3
1a000bb6:	68fb      	ldr	r3, [r7, #12]
1a000bb8:	fa02 f303 	lsl.w	r3, r2, r3
1a000bbc:	60bb      	str	r3, [r7, #8]
1a000bbe:	4a0f      	ldr	r2, [pc, #60]	; (1a000bfc <Chip_SCU_GPIOIntPinSel+0x70>)
1a000bc0:	79fb      	ldrb	r3, [r7, #7]
1a000bc2:	089b      	lsrs	r3, r3, #2
1a000bc4:	b2db      	uxtb	r3, r3
1a000bc6:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a000bca:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a000bce:	21ff      	movs	r1, #255	; 0xff
1a000bd0:	68fa      	ldr	r2, [r7, #12]
1a000bd2:	fa01 f202 	lsl.w	r2, r1, r2
1a000bd6:	43d2      	mvns	r2, r2
1a000bd8:	401a      	ands	r2, r3
1a000bda:	4908      	ldr	r1, [pc, #32]	; (1a000bfc <Chip_SCU_GPIOIntPinSel+0x70>)
1a000bdc:	79fb      	ldrb	r3, [r7, #7]
1a000bde:	089b      	lsrs	r3, r3, #2
1a000be0:	b2db      	uxtb	r3, r3
1a000be2:	4618      	mov	r0, r3
1a000be4:	68bb      	ldr	r3, [r7, #8]
1a000be6:	431a      	orrs	r2, r3
1a000be8:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a000bec:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a000bf0:	bf00      	nop
1a000bf2:	3714      	adds	r7, #20
1a000bf4:	46bd      	mov	sp, r7
1a000bf6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000bfa:	4770      	bx	lr
1a000bfc:	40086000 	.word	0x40086000

1a000c00 <Chip_GPIO_SetPinDIROutput>:
1a000c00:	b480      	push	{r7}
1a000c02:	b083      	sub	sp, #12
1a000c04:	af00      	add	r7, sp, #0
1a000c06:	6078      	str	r0, [r7, #4]
1a000c08:	460b      	mov	r3, r1
1a000c0a:	70fb      	strb	r3, [r7, #3]
1a000c0c:	4613      	mov	r3, r2
1a000c0e:	70bb      	strb	r3, [r7, #2]
1a000c10:	78fa      	ldrb	r2, [r7, #3]
1a000c12:	687b      	ldr	r3, [r7, #4]
1a000c14:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000c18:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000c1c:	78bb      	ldrb	r3, [r7, #2]
1a000c1e:	2201      	movs	r2, #1
1a000c20:	fa02 f303 	lsl.w	r3, r2, r3
1a000c24:	78fa      	ldrb	r2, [r7, #3]
1a000c26:	4319      	orrs	r1, r3
1a000c28:	687b      	ldr	r3, [r7, #4]
1a000c2a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000c2e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000c32:	bf00      	nop
1a000c34:	370c      	adds	r7, #12
1a000c36:	46bd      	mov	sp, r7
1a000c38:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c3c:	4770      	bx	lr

1a000c3e <Chip_GPIO_SetPinDIRInput>:
1a000c3e:	b480      	push	{r7}
1a000c40:	b083      	sub	sp, #12
1a000c42:	af00      	add	r7, sp, #0
1a000c44:	6078      	str	r0, [r7, #4]
1a000c46:	460b      	mov	r3, r1
1a000c48:	70fb      	strb	r3, [r7, #3]
1a000c4a:	4613      	mov	r3, r2
1a000c4c:	70bb      	strb	r3, [r7, #2]
1a000c4e:	78fa      	ldrb	r2, [r7, #3]
1a000c50:	687b      	ldr	r3, [r7, #4]
1a000c52:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000c56:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a000c5a:	78bb      	ldrb	r3, [r7, #2]
1a000c5c:	2201      	movs	r2, #1
1a000c5e:	fa02 f303 	lsl.w	r3, r2, r3
1a000c62:	43db      	mvns	r3, r3
1a000c64:	78fa      	ldrb	r2, [r7, #3]
1a000c66:	4019      	ands	r1, r3
1a000c68:	687b      	ldr	r3, [r7, #4]
1a000c6a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a000c6e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000c72:	bf00      	nop
1a000c74:	370c      	adds	r7, #12
1a000c76:	46bd      	mov	sp, r7
1a000c78:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c7c:	4770      	bx	lr

1a000c7e <Chip_GPIO_SetPortOutLow>:
1a000c7e:	b480      	push	{r7}
1a000c80:	b085      	sub	sp, #20
1a000c82:	af00      	add	r7, sp, #0
1a000c84:	60f8      	str	r0, [r7, #12]
1a000c86:	460b      	mov	r3, r1
1a000c88:	607a      	str	r2, [r7, #4]
1a000c8a:	72fb      	strb	r3, [r7, #11]
1a000c8c:	7afa      	ldrb	r2, [r7, #11]
1a000c8e:	68fb      	ldr	r3, [r7, #12]
1a000c90:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a000c94:	6879      	ldr	r1, [r7, #4]
1a000c96:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a000c9a:	bf00      	nop
1a000c9c:	3714      	adds	r7, #20
1a000c9e:	46bd      	mov	sp, r7
1a000ca0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ca4:	4770      	bx	lr

1a000ca6 <Chip_PININT_Init>:
1a000ca6:	b480      	push	{r7}
1a000ca8:	b083      	sub	sp, #12
1a000caa:	af00      	add	r7, sp, #0
1a000cac:	6078      	str	r0, [r7, #4]
1a000cae:	bf00      	nop
1a000cb0:	370c      	adds	r7, #12
1a000cb2:	46bd      	mov	sp, r7
1a000cb4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cb8:	4770      	bx	lr

1a000cba <Chip_PININT_SetPinModeEdge>:
1a000cba:	b480      	push	{r7}
1a000cbc:	b083      	sub	sp, #12
1a000cbe:	af00      	add	r7, sp, #0
1a000cc0:	6078      	str	r0, [r7, #4]
1a000cc2:	6039      	str	r1, [r7, #0]
1a000cc4:	687b      	ldr	r3, [r7, #4]
1a000cc6:	681a      	ldr	r2, [r3, #0]
1a000cc8:	683b      	ldr	r3, [r7, #0]
1a000cca:	43db      	mvns	r3, r3
1a000ccc:	401a      	ands	r2, r3
1a000cce:	687b      	ldr	r3, [r7, #4]
1a000cd0:	601a      	str	r2, [r3, #0]
1a000cd2:	bf00      	nop
1a000cd4:	370c      	adds	r7, #12
1a000cd6:	46bd      	mov	sp, r7
1a000cd8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cdc:	4770      	bx	lr

1a000cde <Chip_PININT_EnableIntLow>:
1a000cde:	b480      	push	{r7}
1a000ce0:	b083      	sub	sp, #12
1a000ce2:	af00      	add	r7, sp, #0
1a000ce4:	6078      	str	r0, [r7, #4]
1a000ce6:	6039      	str	r1, [r7, #0]
1a000ce8:	687b      	ldr	r3, [r7, #4]
1a000cea:	683a      	ldr	r2, [r7, #0]
1a000cec:	615a      	str	r2, [r3, #20]
1a000cee:	bf00      	nop
1a000cf0:	370c      	adds	r7, #12
1a000cf2:	46bd      	mov	sp, r7
1a000cf4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cf8:	4770      	bx	lr

1a000cfa <Chip_PININT_ClearIntStatus>:
1a000cfa:	b480      	push	{r7}
1a000cfc:	b083      	sub	sp, #12
1a000cfe:	af00      	add	r7, sp, #0
1a000d00:	6078      	str	r0, [r7, #4]
1a000d02:	6039      	str	r1, [r7, #0]
1a000d04:	687b      	ldr	r3, [r7, #4]
1a000d06:	683a      	ldr	r2, [r7, #0]
1a000d08:	625a      	str	r2, [r3, #36]	; 0x24
1a000d0a:	bf00      	nop
1a000d0c:	370c      	adds	r7, #12
1a000d0e:	46bd      	mov	sp, r7
1a000d10:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d14:	4770      	bx	lr

1a000d16 <Chip_UART_TXEnable>:
1a000d16:	b480      	push	{r7}
1a000d18:	b083      	sub	sp, #12
1a000d1a:	af00      	add	r7, sp, #0
1a000d1c:	6078      	str	r0, [r7, #4]
1a000d1e:	687b      	ldr	r3, [r7, #4]
1a000d20:	2201      	movs	r2, #1
1a000d22:	65da      	str	r2, [r3, #92]	; 0x5c
1a000d24:	bf00      	nop
1a000d26:	370c      	adds	r7, #12
1a000d28:	46bd      	mov	sp, r7
1a000d2a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d2e:	4770      	bx	lr

1a000d30 <Chip_UART_IntEnable>:
1a000d30:	b480      	push	{r7}
1a000d32:	b083      	sub	sp, #12
1a000d34:	af00      	add	r7, sp, #0
1a000d36:	6078      	str	r0, [r7, #4]
1a000d38:	6039      	str	r1, [r7, #0]
1a000d3a:	687b      	ldr	r3, [r7, #4]
1a000d3c:	685a      	ldr	r2, [r3, #4]
1a000d3e:	683b      	ldr	r3, [r7, #0]
1a000d40:	431a      	orrs	r2, r3
1a000d42:	687b      	ldr	r3, [r7, #4]
1a000d44:	605a      	str	r2, [r3, #4]
1a000d46:	bf00      	nop
1a000d48:	370c      	adds	r7, #12
1a000d4a:	46bd      	mov	sp, r7
1a000d4c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d50:	4770      	bx	lr

1a000d52 <Chip_UART_SetupFIFOS>:
1a000d52:	b480      	push	{r7}
1a000d54:	b083      	sub	sp, #12
1a000d56:	af00      	add	r7, sp, #0
1a000d58:	6078      	str	r0, [r7, #4]
1a000d5a:	6039      	str	r1, [r7, #0]
1a000d5c:	687b      	ldr	r3, [r7, #4]
1a000d5e:	683a      	ldr	r2, [r7, #0]
1a000d60:	609a      	str	r2, [r3, #8]
1a000d62:	bf00      	nop
1a000d64:	370c      	adds	r7, #12
1a000d66:	46bd      	mov	sp, r7
1a000d68:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d6c:	4770      	bx	lr

1a000d6e <Chip_UART_ConfigData>:
1a000d6e:	b480      	push	{r7}
1a000d70:	b083      	sub	sp, #12
1a000d72:	af00      	add	r7, sp, #0
1a000d74:	6078      	str	r0, [r7, #4]
1a000d76:	6039      	str	r1, [r7, #0]
1a000d78:	687b      	ldr	r3, [r7, #4]
1a000d7a:	683a      	ldr	r2, [r7, #0]
1a000d7c:	60da      	str	r2, [r3, #12]
1a000d7e:	bf00      	nop
1a000d80:	370c      	adds	r7, #12
1a000d82:	46bd      	mov	sp, r7
1a000d84:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d88:	4770      	bx	lr

1a000d8a <inicializar_sistema>:
1a000d8a:	b580      	push	{r7, lr}
1a000d8c:	af00      	add	r7, sp, #0
1a000d8e:	f000 fa7d 	bl	1a00128c <Chip_SetupXtalClocking>
1a000d92:	f001 f9d7 	bl	1a002144 <SystemCoreClockUpdate>
1a000d96:	f000 f955 	bl	1a001044 <fpuInit>
1a000d9a:	f000 fc7b 	bl	1a001694 <StopWatch_Init>
1a000d9e:	bf00      	nop
1a000da0:	bd80      	pop	{r7, pc}
1a000da2:	Address 0x000000001a000da2 is out of bounds.


1a000da4 <inicializar_leds>:
1a000da4:	b590      	push	{r4, r7, lr}
1a000da6:	b083      	sub	sp, #12
1a000da8:	af00      	add	r7, sp, #0
1a000daa:	482e      	ldr	r0, [pc, #184]	; (1a000e64 <inicializar_leds+0xc0>)
1a000dac:	f001 f9d6 	bl	1a00215c <Chip_GPIO_Init>
1a000db0:	2300      	movs	r3, #0
1a000db2:	71fb      	strb	r3, [r7, #7]
1a000db4:	e04e      	b.n	1a000e54 <inicializar_leds+0xb0>
1a000db6:	79fa      	ldrb	r2, [r7, #7]
1a000db8:	492b      	ldr	r1, [pc, #172]	; (1a000e68 <inicializar_leds+0xc4>)
1a000dba:	4613      	mov	r3, r2
1a000dbc:	005b      	lsls	r3, r3, #1
1a000dbe:	4413      	add	r3, r2
1a000dc0:	005b      	lsls	r3, r3, #1
1a000dc2:	440b      	add	r3, r1
1a000dc4:	7818      	ldrb	r0, [r3, #0]
1a000dc6:	79fa      	ldrb	r2, [r7, #7]
1a000dc8:	4927      	ldr	r1, [pc, #156]	; (1a000e68 <inicializar_leds+0xc4>)
1a000dca:	4613      	mov	r3, r2
1a000dcc:	005b      	lsls	r3, r3, #1
1a000dce:	4413      	add	r3, r2
1a000dd0:	005b      	lsls	r3, r3, #1
1a000dd2:	440b      	add	r3, r1
1a000dd4:	3301      	adds	r3, #1
1a000dd6:	781c      	ldrb	r4, [r3, #0]
1a000dd8:	79fa      	ldrb	r2, [r7, #7]
1a000dda:	4923      	ldr	r1, [pc, #140]	; (1a000e68 <inicializar_leds+0xc4>)
1a000ddc:	4613      	mov	r3, r2
1a000dde:	005b      	lsls	r3, r3, #1
1a000de0:	4413      	add	r3, r2
1a000de2:	005b      	lsls	r3, r3, #1
1a000de4:	440b      	add	r3, r1
1a000de6:	3304      	adds	r3, #4
1a000de8:	881b      	ldrh	r3, [r3, #0]
1a000dea:	461a      	mov	r2, r3
1a000dec:	4621      	mov	r1, r4
1a000dee:	f7ff fe95 	bl	1a000b1c <Chip_SCU_PinMuxSet>
1a000df2:	79fa      	ldrb	r2, [r7, #7]
1a000df4:	491c      	ldr	r1, [pc, #112]	; (1a000e68 <inicializar_leds+0xc4>)
1a000df6:	4613      	mov	r3, r2
1a000df8:	005b      	lsls	r3, r3, #1
1a000dfa:	4413      	add	r3, r2
1a000dfc:	005b      	lsls	r3, r3, #1
1a000dfe:	440b      	add	r3, r1
1a000e00:	3302      	adds	r3, #2
1a000e02:	7818      	ldrb	r0, [r3, #0]
1a000e04:	79fa      	ldrb	r2, [r7, #7]
1a000e06:	4918      	ldr	r1, [pc, #96]	; (1a000e68 <inicializar_leds+0xc4>)
1a000e08:	4613      	mov	r3, r2
1a000e0a:	005b      	lsls	r3, r3, #1
1a000e0c:	4413      	add	r3, r2
1a000e0e:	005b      	lsls	r3, r3, #1
1a000e10:	440b      	add	r3, r1
1a000e12:	3303      	adds	r3, #3
1a000e14:	781b      	ldrb	r3, [r3, #0]
1a000e16:	461a      	mov	r2, r3
1a000e18:	4601      	mov	r1, r0
1a000e1a:	4812      	ldr	r0, [pc, #72]	; (1a000e64 <inicializar_leds+0xc0>)
1a000e1c:	f7ff fef0 	bl	1a000c00 <Chip_GPIO_SetPinDIROutput>
1a000e20:	79fa      	ldrb	r2, [r7, #7]
1a000e22:	4911      	ldr	r1, [pc, #68]	; (1a000e68 <inicializar_leds+0xc4>)
1a000e24:	4613      	mov	r3, r2
1a000e26:	005b      	lsls	r3, r3, #1
1a000e28:	4413      	add	r3, r2
1a000e2a:	005b      	lsls	r3, r3, #1
1a000e2c:	440b      	add	r3, r1
1a000e2e:	3302      	adds	r3, #2
1a000e30:	7818      	ldrb	r0, [r3, #0]
1a000e32:	79fa      	ldrb	r2, [r7, #7]
1a000e34:	490c      	ldr	r1, [pc, #48]	; (1a000e68 <inicializar_leds+0xc4>)
1a000e36:	4613      	mov	r3, r2
1a000e38:	005b      	lsls	r3, r3, #1
1a000e3a:	4413      	add	r3, r2
1a000e3c:	005b      	lsls	r3, r3, #1
1a000e3e:	440b      	add	r3, r1
1a000e40:	3303      	adds	r3, #3
1a000e42:	781b      	ldrb	r3, [r3, #0]
1a000e44:	461a      	mov	r2, r3
1a000e46:	4601      	mov	r1, r0
1a000e48:	4806      	ldr	r0, [pc, #24]	; (1a000e64 <inicializar_leds+0xc0>)
1a000e4a:	f7ff ff18 	bl	1a000c7e <Chip_GPIO_SetPortOutLow>
1a000e4e:	79fb      	ldrb	r3, [r7, #7]
1a000e50:	3301      	adds	r3, #1
1a000e52:	71fb      	strb	r3, [r7, #7]
1a000e54:	79fb      	ldrb	r3, [r7, #7]
1a000e56:	2b05      	cmp	r3, #5
1a000e58:	d9ad      	bls.n	1a000db6 <inicializar_leds+0x12>
1a000e5a:	bf00      	nop
1a000e5c:	370c      	adds	r7, #12
1a000e5e:	46bd      	mov	sp, r7
1a000e60:	bd90      	pop	{r4, r7, pc}
1a000e62:	bf00      	nop
1a000e64:	400f4000 	.word	0x400f4000
1a000e68:	1a002678 	.word	0x1a002678

1a000e6c <inicializar_teclado>:
1a000e6c:	b590      	push	{r4, r7, lr}
1a000e6e:	b083      	sub	sp, #12
1a000e70:	af00      	add	r7, sp, #0
1a000e72:	2300      	movs	r3, #0
1a000e74:	71fb      	strb	r3, [r7, #7]
1a000e76:	e037      	b.n	1a000ee8 <inicializar_teclado+0x7c>
1a000e78:	79fa      	ldrb	r2, [r7, #7]
1a000e7a:	491f      	ldr	r1, [pc, #124]	; (1a000ef8 <inicializar_teclado+0x8c>)
1a000e7c:	4613      	mov	r3, r2
1a000e7e:	005b      	lsls	r3, r3, #1
1a000e80:	4413      	add	r3, r2
1a000e82:	005b      	lsls	r3, r3, #1
1a000e84:	440b      	add	r3, r1
1a000e86:	7818      	ldrb	r0, [r3, #0]
1a000e88:	79fa      	ldrb	r2, [r7, #7]
1a000e8a:	491b      	ldr	r1, [pc, #108]	; (1a000ef8 <inicializar_teclado+0x8c>)
1a000e8c:	4613      	mov	r3, r2
1a000e8e:	005b      	lsls	r3, r3, #1
1a000e90:	4413      	add	r3, r2
1a000e92:	005b      	lsls	r3, r3, #1
1a000e94:	440b      	add	r3, r1
1a000e96:	3301      	adds	r3, #1
1a000e98:	781c      	ldrb	r4, [r3, #0]
1a000e9a:	79fa      	ldrb	r2, [r7, #7]
1a000e9c:	4916      	ldr	r1, [pc, #88]	; (1a000ef8 <inicializar_teclado+0x8c>)
1a000e9e:	4613      	mov	r3, r2
1a000ea0:	005b      	lsls	r3, r3, #1
1a000ea2:	4413      	add	r3, r2
1a000ea4:	005b      	lsls	r3, r3, #1
1a000ea6:	440b      	add	r3, r1
1a000ea8:	3304      	adds	r3, #4
1a000eaa:	881b      	ldrh	r3, [r3, #0]
1a000eac:	461a      	mov	r2, r3
1a000eae:	4621      	mov	r1, r4
1a000eb0:	f7ff fe34 	bl	1a000b1c <Chip_SCU_PinMuxSet>
1a000eb4:	79fa      	ldrb	r2, [r7, #7]
1a000eb6:	4910      	ldr	r1, [pc, #64]	; (1a000ef8 <inicializar_teclado+0x8c>)
1a000eb8:	4613      	mov	r3, r2
1a000eba:	005b      	lsls	r3, r3, #1
1a000ebc:	4413      	add	r3, r2
1a000ebe:	005b      	lsls	r3, r3, #1
1a000ec0:	440b      	add	r3, r1
1a000ec2:	3302      	adds	r3, #2
1a000ec4:	7818      	ldrb	r0, [r3, #0]
1a000ec6:	79fa      	ldrb	r2, [r7, #7]
1a000ec8:	490b      	ldr	r1, [pc, #44]	; (1a000ef8 <inicializar_teclado+0x8c>)
1a000eca:	4613      	mov	r3, r2
1a000ecc:	005b      	lsls	r3, r3, #1
1a000ece:	4413      	add	r3, r2
1a000ed0:	005b      	lsls	r3, r3, #1
1a000ed2:	440b      	add	r3, r1
1a000ed4:	3303      	adds	r3, #3
1a000ed6:	781b      	ldrb	r3, [r3, #0]
1a000ed8:	461a      	mov	r2, r3
1a000eda:	4601      	mov	r1, r0
1a000edc:	4807      	ldr	r0, [pc, #28]	; (1a000efc <inicializar_teclado+0x90>)
1a000ede:	f7ff feae 	bl	1a000c3e <Chip_GPIO_SetPinDIRInput>
1a000ee2:	79fb      	ldrb	r3, [r7, #7]
1a000ee4:	3301      	adds	r3, #1
1a000ee6:	71fb      	strb	r3, [r7, #7]
1a000ee8:	79fb      	ldrb	r3, [r7, #7]
1a000eea:	2b03      	cmp	r3, #3
1a000eec:	d9c4      	bls.n	1a000e78 <inicializar_teclado+0xc>
1a000eee:	bf00      	nop
1a000ef0:	370c      	adds	r7, #12
1a000ef2:	46bd      	mov	sp, r7
1a000ef4:	bd90      	pop	{r4, r7, pc}
1a000ef6:	bf00      	nop
1a000ef8:	1a00269c 	.word	0x1a00269c
1a000efc:	400f4000 	.word	0x400f4000

1a000f00 <inicializar_USART>:
1a000f00:	b580      	push	{r7, lr}
1a000f02:	af00      	add	r7, sp, #0
1a000f04:	f44f 7300 	mov.w	r3, #512	; 0x200
1a000f08:	2201      	movs	r2, #1
1a000f0a:	4919      	ldr	r1, [pc, #100]	; (1a000f70 <inicializar_USART+0x70>)
1a000f0c:	4819      	ldr	r0, [pc, #100]	; (1a000f74 <inicializar_USART+0x74>)
1a000f0e:	f000 fc17 	bl	1a001740 <RingBuffer_Init>
1a000f12:	f44f 7300 	mov.w	r3, #512	; 0x200
1a000f16:	2201      	movs	r2, #1
1a000f18:	4917      	ldr	r1, [pc, #92]	; (1a000f78 <inicializar_USART+0x78>)
1a000f1a:	4818      	ldr	r0, [pc, #96]	; (1a000f7c <inicializar_USART+0x7c>)
1a000f1c:	f000 fc10 	bl	1a001740 <RingBuffer_Init>
1a000f20:	2306      	movs	r3, #6
1a000f22:	2218      	movs	r2, #24
1a000f24:	2101      	movs	r1, #1
1a000f26:	2007      	movs	r0, #7
1a000f28:	f7ff fe12 	bl	1a000b50 <Chip_SCU_PinMux>
1a000f2c:	2306      	movs	r3, #6
1a000f2e:	22d0      	movs	r2, #208	; 0xd0
1a000f30:	2102      	movs	r1, #2
1a000f32:	2007      	movs	r0, #7
1a000f34:	f7ff fe0c 	bl	1a000b50 <Chip_SCU_PinMux>
1a000f38:	4811      	ldr	r0, [pc, #68]	; (1a000f80 <inicializar_USART+0x80>)
1a000f3a:	f000 fa69 	bl	1a001410 <Chip_UART_Init>
1a000f3e:	2103      	movs	r1, #3
1a000f40:	480f      	ldr	r0, [pc, #60]	; (1a000f80 <inicializar_USART+0x80>)
1a000f42:	f7ff ff14 	bl	1a000d6e <Chip_UART_ConfigData>
1a000f46:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a000f4a:	480d      	ldr	r0, [pc, #52]	; (1a000f80 <inicializar_USART+0x80>)
1a000f4c:	f000 fb40 	bl	1a0015d0 <Chip_UART_SetBaud>
1a000f50:	21c7      	movs	r1, #199	; 0xc7
1a000f52:	480b      	ldr	r0, [pc, #44]	; (1a000f80 <inicializar_USART+0x80>)
1a000f54:	f7ff fefd 	bl	1a000d52 <Chip_UART_SetupFIFOS>
1a000f58:	2105      	movs	r1, #5
1a000f5a:	4809      	ldr	r0, [pc, #36]	; (1a000f80 <inicializar_USART+0x80>)
1a000f5c:	f7ff fee8 	bl	1a000d30 <Chip_UART_IntEnable>
1a000f60:	201a      	movs	r0, #26
1a000f62:	f7ff fda7 	bl	1a000ab4 <NVIC_EnableIRQ>
1a000f66:	4806      	ldr	r0, [pc, #24]	; (1a000f80 <inicializar_USART+0x80>)
1a000f68:	f7ff fed5 	bl	1a000d16 <Chip_UART_TXEnable>
1a000f6c:	bf00      	nop
1a000f6e:	bd80      	pop	{r7, pc}
1a000f70:	10000248 	.word	0x10000248
1a000f74:	10000230 	.word	0x10000230
1a000f78:	10000030 	.word	0x10000030
1a000f7c:	1000001c 	.word	0x1000001c
1a000f80:	400c1000 	.word	0x400c1000

1a000f84 <init_interrupciones>:
1a000f84:	b580      	push	{r7, lr}
1a000f86:	af00      	add	r7, sp, #0
1a000f88:	4823      	ldr	r0, [pc, #140]	; (1a001018 <init_interrupciones+0x94>)
1a000f8a:	f7ff fe8c 	bl	1a000ca6 <Chip_PININT_Init>
1a000f8e:	2204      	movs	r2, #4
1a000f90:	2100      	movs	r1, #0
1a000f92:	2001      	movs	r0, #1
1a000f94:	f7ff fdfa 	bl	1a000b8c <Chip_SCU_GPIOIntPinSel>
1a000f98:	2208      	movs	r2, #8
1a000f9a:	2100      	movs	r1, #0
1a000f9c:	2002      	movs	r0, #2
1a000f9e:	f7ff fdf5 	bl	1a000b8c <Chip_SCU_GPIOIntPinSel>
1a000fa2:	2209      	movs	r2, #9
1a000fa4:	2101      	movs	r1, #1
1a000fa6:	2004      	movs	r0, #4
1a000fa8:	f7ff fdf0 	bl	1a000b8c <Chip_SCU_GPIOIntPinSel>
1a000fac:	2102      	movs	r1, #2
1a000fae:	481a      	ldr	r0, [pc, #104]	; (1a001018 <init_interrupciones+0x94>)
1a000fb0:	f7ff fea3 	bl	1a000cfa <Chip_PININT_ClearIntStatus>
1a000fb4:	2104      	movs	r1, #4
1a000fb6:	4818      	ldr	r0, [pc, #96]	; (1a001018 <init_interrupciones+0x94>)
1a000fb8:	f7ff fe9f 	bl	1a000cfa <Chip_PININT_ClearIntStatus>
1a000fbc:	2110      	movs	r1, #16
1a000fbe:	4816      	ldr	r0, [pc, #88]	; (1a001018 <init_interrupciones+0x94>)
1a000fc0:	f7ff fe9b 	bl	1a000cfa <Chip_PININT_ClearIntStatus>
1a000fc4:	2102      	movs	r1, #2
1a000fc6:	4814      	ldr	r0, [pc, #80]	; (1a001018 <init_interrupciones+0x94>)
1a000fc8:	f7ff fe77 	bl	1a000cba <Chip_PININT_SetPinModeEdge>
1a000fcc:	2104      	movs	r1, #4
1a000fce:	4812      	ldr	r0, [pc, #72]	; (1a001018 <init_interrupciones+0x94>)
1a000fd0:	f7ff fe73 	bl	1a000cba <Chip_PININT_SetPinModeEdge>
1a000fd4:	2110      	movs	r1, #16
1a000fd6:	4810      	ldr	r0, [pc, #64]	; (1a001018 <init_interrupciones+0x94>)
1a000fd8:	f7ff fe6f 	bl	1a000cba <Chip_PININT_SetPinModeEdge>
1a000fdc:	2102      	movs	r1, #2
1a000fde:	480e      	ldr	r0, [pc, #56]	; (1a001018 <init_interrupciones+0x94>)
1a000fe0:	f7ff fe7d 	bl	1a000cde <Chip_PININT_EnableIntLow>
1a000fe4:	2104      	movs	r1, #4
1a000fe6:	480c      	ldr	r0, [pc, #48]	; (1a001018 <init_interrupciones+0x94>)
1a000fe8:	f7ff fe79 	bl	1a000cde <Chip_PININT_EnableIntLow>
1a000fec:	2110      	movs	r1, #16
1a000fee:	480a      	ldr	r0, [pc, #40]	; (1a001018 <init_interrupciones+0x94>)
1a000ff0:	f7ff fe75 	bl	1a000cde <Chip_PININT_EnableIntLow>
1a000ff4:	2021      	movs	r0, #33	; 0x21
1a000ff6:	f7ff fd77 	bl	1a000ae8 <NVIC_ClearPendingIRQ>
1a000ffa:	2022      	movs	r0, #34	; 0x22
1a000ffc:	f7ff fd74 	bl	1a000ae8 <NVIC_ClearPendingIRQ>
1a001000:	2024      	movs	r0, #36	; 0x24
1a001002:	f7ff fd71 	bl	1a000ae8 <NVIC_ClearPendingIRQ>
1a001006:	2022      	movs	r0, #34	; 0x22
1a001008:	f7ff fd54 	bl	1a000ab4 <NVIC_EnableIRQ>
1a00100c:	2024      	movs	r0, #36	; 0x24
1a00100e:	f7ff fd51 	bl	1a000ab4 <NVIC_EnableIRQ>
1a001012:	bf00      	nop
1a001014:	bd80      	pop	{r7, pc}
1a001016:	bf00      	nop
1a001018:	40087000 	.word	0x40087000

1a00101c <print>:
1a00101c:	b580      	push	{r7, lr}
1a00101e:	b082      	sub	sp, #8
1a001020:	af00      	add	r7, sp, #0
1a001022:	6078      	str	r0, [r7, #4]
1a001024:	6878      	ldr	r0, [r7, #4]
1a001026:	f001 f8eb 	bl	1a002200 <strlen>
1a00102a:	4603      	mov	r3, r0
1a00102c:	461a      	mov	r2, r3
1a00102e:	6879      	ldr	r1, [r7, #4]
1a001030:	4803      	ldr	r0, [pc, #12]	; (1a001040 <print+0x24>)
1a001032:	f000 fa59 	bl	1a0014e8 <Chip_UART_SendBlocking>
1a001036:	bf00      	nop
1a001038:	3708      	adds	r7, #8
1a00103a:	46bd      	mov	sp, r7
1a00103c:	bd80      	pop	{r7, pc}
1a00103e:	bf00      	nop
1a001040:	400c1000 	.word	0x400c1000

1a001044 <fpuInit>:
1a001044:	b480      	push	{r7}
1a001046:	b089      	sub	sp, #36	; 0x24
1a001048:	af00      	add	r7, sp, #0
1a00104a:	4b16      	ldr	r3, [pc, #88]	; (1a0010a4 <fpuInit+0x60>)
1a00104c:	61fb      	str	r3, [r7, #28]
1a00104e:	4b16      	ldr	r3, [pc, #88]	; (1a0010a8 <fpuInit+0x64>)
1a001050:	61bb      	str	r3, [r7, #24]
1a001052:	4b16      	ldr	r3, [pc, #88]	; (1a0010ac <fpuInit+0x68>)
1a001054:	617b      	str	r3, [r7, #20]
1a001056:	2300      	movs	r3, #0
1a001058:	74fb      	strb	r3, [r7, #19]
1a00105a:	69bb      	ldr	r3, [r7, #24]
1a00105c:	681b      	ldr	r3, [r3, #0]
1a00105e:	60bb      	str	r3, [r7, #8]
1a001060:	697b      	ldr	r3, [r7, #20]
1a001062:	681b      	ldr	r3, [r3, #0]
1a001064:	607b      	str	r3, [r7, #4]
1a001066:	68bb      	ldr	r3, [r7, #8]
1a001068:	4a11      	ldr	r2, [pc, #68]	; (1a0010b0 <fpuInit+0x6c>)
1a00106a:	4293      	cmp	r3, r2
1a00106c:	d105      	bne.n	1a00107a <fpuInit+0x36>
1a00106e:	687b      	ldr	r3, [r7, #4]
1a001070:	4a10      	ldr	r2, [pc, #64]	; (1a0010b4 <fpuInit+0x70>)
1a001072:	4293      	cmp	r3, r2
1a001074:	d101      	bne.n	1a00107a <fpuInit+0x36>
1a001076:	2301      	movs	r3, #1
1a001078:	e000      	b.n	1a00107c <fpuInit+0x38>
1a00107a:	2300      	movs	r3, #0
1a00107c:	74fb      	strb	r3, [r7, #19]
1a00107e:	7cfb      	ldrb	r3, [r7, #19]
1a001080:	2b00      	cmp	r3, #0
1a001082:	d009      	beq.n	1a001098 <fpuInit+0x54>
1a001084:	69fb      	ldr	r3, [r7, #28]
1a001086:	681b      	ldr	r3, [r3, #0]
1a001088:	60fb      	str	r3, [r7, #12]
1a00108a:	68fb      	ldr	r3, [r7, #12]
1a00108c:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a001090:	60fb      	str	r3, [r7, #12]
1a001092:	68fa      	ldr	r2, [r7, #12]
1a001094:	69fb      	ldr	r3, [r7, #28]
1a001096:	601a      	str	r2, [r3, #0]
1a001098:	bf00      	nop
1a00109a:	3724      	adds	r7, #36	; 0x24
1a00109c:	46bd      	mov	sp, r7
1a00109e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010a2:	4770      	bx	lr
1a0010a4:	e000ed88 	.word	0xe000ed88
1a0010a8:	e000ef40 	.word	0xe000ef40
1a0010ac:	e000ef44 	.word	0xe000ef44
1a0010b0:	10110021 	.word	0x10110021
1a0010b4:	11000011 	.word	0x11000011

1a0010b8 <Chip_Clock_DisableMainPLL>:
1a0010b8:	b480      	push	{r7}
1a0010ba:	af00      	add	r7, sp, #0
1a0010bc:	4b05      	ldr	r3, [pc, #20]	; (1a0010d4 <Chip_Clock_DisableMainPLL+0x1c>)
1a0010be:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0010c0:	4a04      	ldr	r2, [pc, #16]	; (1a0010d4 <Chip_Clock_DisableMainPLL+0x1c>)
1a0010c2:	f043 0301 	orr.w	r3, r3, #1
1a0010c6:	6453      	str	r3, [r2, #68]	; 0x44
1a0010c8:	bf00      	nop
1a0010ca:	46bd      	mov	sp, r7
1a0010cc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010d0:	4770      	bx	lr
1a0010d2:	bf00      	nop
1a0010d4:	40050000 	.word	0x40050000

1a0010d8 <Chip_Clock_SetupMainPLL>:
1a0010d8:	b480      	push	{r7}
1a0010da:	b083      	sub	sp, #12
1a0010dc:	af00      	add	r7, sp, #0
1a0010de:	6078      	str	r0, [r7, #4]
1a0010e0:	687b      	ldr	r3, [r7, #4]
1a0010e2:	681b      	ldr	r3, [r3, #0]
1a0010e4:	461a      	mov	r2, r3
1a0010e6:	687b      	ldr	r3, [r7, #4]
1a0010e8:	791b      	ldrb	r3, [r3, #4]
1a0010ea:	061b      	lsls	r3, r3, #24
1a0010ec:	4313      	orrs	r3, r2
1a0010ee:	687a      	ldr	r2, [r7, #4]
1a0010f0:	6912      	ldr	r2, [r2, #16]
1a0010f2:	0412      	lsls	r2, r2, #16
1a0010f4:	4313      	orrs	r3, r2
1a0010f6:	687a      	ldr	r2, [r7, #4]
1a0010f8:	6892      	ldr	r2, [r2, #8]
1a0010fa:	0312      	lsls	r2, r2, #12
1a0010fc:	4313      	orrs	r3, r2
1a0010fe:	687a      	ldr	r2, [r7, #4]
1a001100:	68d2      	ldr	r2, [r2, #12]
1a001102:	0212      	lsls	r2, r2, #8
1a001104:	4313      	orrs	r3, r2
1a001106:	4a05      	ldr	r2, [pc, #20]	; (1a00111c <Chip_Clock_SetupMainPLL+0x44>)
1a001108:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a00110c:	6453      	str	r3, [r2, #68]	; 0x44
1a00110e:	bf00      	nop
1a001110:	370c      	adds	r7, #12
1a001112:	46bd      	mov	sp, r7
1a001114:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001118:	4770      	bx	lr
1a00111a:	bf00      	nop
1a00111c:	40050000 	.word	0x40050000

1a001120 <Chip_Clock_MainPLLLocked>:
1a001120:	b480      	push	{r7}
1a001122:	af00      	add	r7, sp, #0
1a001124:	4b06      	ldr	r3, [pc, #24]	; (1a001140 <Chip_Clock_MainPLLLocked+0x20>)
1a001126:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001128:	f003 0301 	and.w	r3, r3, #1
1a00112c:	2b00      	cmp	r3, #0
1a00112e:	bf14      	ite	ne
1a001130:	2301      	movne	r3, #1
1a001132:	2300      	moveq	r3, #0
1a001134:	b2db      	uxtb	r3, r3
1a001136:	4618      	mov	r0, r3
1a001138:	46bd      	mov	sp, r7
1a00113a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00113e:	4770      	bx	lr
1a001140:	40050000 	.word	0x40050000

1a001144 <Chip_SetupCoreClock>:
1a001144:	b590      	push	{r4, r7, lr}
1a001146:	b08f      	sub	sp, #60	; 0x3c
1a001148:	af00      	add	r7, sp, #0
1a00114a:	4603      	mov	r3, r0
1a00114c:	6039      	str	r1, [r7, #0]
1a00114e:	71fb      	strb	r3, [r7, #7]
1a001150:	4613      	mov	r3, r2
1a001152:	71bb      	strb	r3, [r7, #6]
1a001154:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a001158:	62bb      	str	r3, [r7, #40]	; 0x28
1a00115a:	2300      	movs	r3, #0
1a00115c:	633b      	str	r3, [r7, #48]	; 0x30
1a00115e:	2300      	movs	r3, #0
1a001160:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001162:	79fb      	ldrb	r3, [r7, #7]
1a001164:	2b06      	cmp	r3, #6
1a001166:	d101      	bne.n	1a00116c <Chip_SetupCoreClock+0x28>
1a001168:	f000 fcd4 	bl	1a001b14 <Chip_Clock_EnableCrystal>
1a00116c:	79f9      	ldrb	r1, [r7, #7]
1a00116e:	2300      	movs	r3, #0
1a001170:	2201      	movs	r2, #1
1a001172:	2004      	movs	r0, #4
1a001174:	f000 fec0 	bl	1a001ef8 <Chip_Clock_SetBaseClock>
1a001178:	f7ff ff9e 	bl	1a0010b8 <Chip_Clock_DisableMainPLL>
1a00117c:	79fb      	ldrb	r3, [r7, #7]
1a00117e:	733b      	strb	r3, [r7, #12]
1a001180:	f107 0308 	add.w	r3, r7, #8
1a001184:	4619      	mov	r1, r3
1a001186:	6838      	ldr	r0, [r7, #0]
1a001188:	f000 fcfc 	bl	1a001b84 <Chip_Clock_CalcMainPLLValue>
1a00118c:	683b      	ldr	r3, [r7, #0]
1a00118e:	4a3d      	ldr	r2, [pc, #244]	; (1a001284 <Chip_SetupCoreClock+0x140>)
1a001190:	4293      	cmp	r3, r2
1a001192:	d916      	bls.n	1a0011c2 <Chip_SetupCoreClock+0x7e>
1a001194:	68bb      	ldr	r3, [r7, #8]
1a001196:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a00119a:	2b00      	cmp	r3, #0
1a00119c:	d000      	beq.n	1a0011a0 <Chip_SetupCoreClock+0x5c>
1a00119e:	e7fe      	b.n	1a00119e <Chip_SetupCoreClock+0x5a>
1a0011a0:	68bb      	ldr	r3, [r7, #8]
1a0011a2:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0011a6:	2b00      	cmp	r3, #0
1a0011a8:	d006      	beq.n	1a0011b8 <Chip_SetupCoreClock+0x74>
1a0011aa:	2301      	movs	r3, #1
1a0011ac:	633b      	str	r3, [r7, #48]	; 0x30
1a0011ae:	68bb      	ldr	r3, [r7, #8]
1a0011b0:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a0011b4:	60bb      	str	r3, [r7, #8]
1a0011b6:	e004      	b.n	1a0011c2 <Chip_SetupCoreClock+0x7e>
1a0011b8:	2301      	movs	r3, #1
1a0011ba:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0011bc:	697b      	ldr	r3, [r7, #20]
1a0011be:	3301      	adds	r3, #1
1a0011c0:	617b      	str	r3, [r7, #20]
1a0011c2:	f107 0308 	add.w	r3, r7, #8
1a0011c6:	4618      	mov	r0, r3
1a0011c8:	f7ff ff86 	bl	1a0010d8 <Chip_Clock_SetupMainPLL>
1a0011cc:	bf00      	nop
1a0011ce:	f7ff ffa7 	bl	1a001120 <Chip_Clock_MainPLLLocked>
1a0011d2:	4603      	mov	r3, r0
1a0011d4:	2b00      	cmp	r3, #0
1a0011d6:	d0fa      	beq.n	1a0011ce <Chip_SetupCoreClock+0x8a>
1a0011d8:	2300      	movs	r3, #0
1a0011da:	2201      	movs	r2, #1
1a0011dc:	2109      	movs	r1, #9
1a0011de:	2004      	movs	r0, #4
1a0011e0:	f000 fe8a 	bl	1a001ef8 <Chip_Clock_SetBaseClock>
1a0011e4:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a0011e6:	2b00      	cmp	r3, #0
1a0011e8:	d012      	beq.n	1a001210 <Chip_SetupCoreClock+0xcc>
1a0011ea:	f641 3358 	movw	r3, #7000	; 0x1b58
1a0011ee:	62bb      	str	r3, [r7, #40]	; 0x28
1a0011f0:	bf00      	nop
1a0011f2:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a0011f4:	1e5a      	subs	r2, r3, #1
1a0011f6:	62ba      	str	r2, [r7, #40]	; 0x28
1a0011f8:	2b00      	cmp	r3, #0
1a0011fa:	d1fa      	bne.n	1a0011f2 <Chip_SetupCoreClock+0xae>
1a0011fc:	68bb      	ldr	r3, [r7, #8]
1a0011fe:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a001202:	60bb      	str	r3, [r7, #8]
1a001204:	f107 0308 	add.w	r3, r7, #8
1a001208:	4618      	mov	r0, r3
1a00120a:	f7ff ff65 	bl	1a0010d8 <Chip_Clock_SetupMainPLL>
1a00120e:	e013      	b.n	1a001238 <Chip_SetupCoreClock+0xf4>
1a001210:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001212:	2b00      	cmp	r3, #0
1a001214:	d010      	beq.n	1a001238 <Chip_SetupCoreClock+0xf4>
1a001216:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a00121a:	62bb      	str	r3, [r7, #40]	; 0x28
1a00121c:	bf00      	nop
1a00121e:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001220:	1e5a      	subs	r2, r3, #1
1a001222:	62ba      	str	r2, [r7, #40]	; 0x28
1a001224:	2b00      	cmp	r3, #0
1a001226:	d1fa      	bne.n	1a00121e <Chip_SetupCoreClock+0xda>
1a001228:	697b      	ldr	r3, [r7, #20]
1a00122a:	3b01      	subs	r3, #1
1a00122c:	617b      	str	r3, [r7, #20]
1a00122e:	f107 0308 	add.w	r3, r7, #8
1a001232:	4618      	mov	r0, r3
1a001234:	f7ff ff50 	bl	1a0010d8 <Chip_Clock_SetupMainPLL>
1a001238:	79bb      	ldrb	r3, [r7, #6]
1a00123a:	2b00      	cmp	r3, #0
1a00123c:	d01e      	beq.n	1a00127c <Chip_SetupCoreClock+0x138>
1a00123e:	2300      	movs	r3, #0
1a001240:	637b      	str	r3, [r7, #52]	; 0x34
1a001242:	e018      	b.n	1a001276 <Chip_SetupCoreClock+0x132>
1a001244:	4a10      	ldr	r2, [pc, #64]	; (1a001288 <Chip_SetupCoreClock+0x144>)
1a001246:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001248:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a00124c:	4a0e      	ldr	r2, [pc, #56]	; (1a001288 <Chip_SetupCoreClock+0x144>)
1a00124e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001250:	009b      	lsls	r3, r3, #2
1a001252:	4413      	add	r3, r2
1a001254:	7859      	ldrb	r1, [r3, #1]
1a001256:	4a0c      	ldr	r2, [pc, #48]	; (1a001288 <Chip_SetupCoreClock+0x144>)
1a001258:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00125a:	009b      	lsls	r3, r3, #2
1a00125c:	4413      	add	r3, r2
1a00125e:	789c      	ldrb	r4, [r3, #2]
1a001260:	4a09      	ldr	r2, [pc, #36]	; (1a001288 <Chip_SetupCoreClock+0x144>)
1a001262:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001264:	009b      	lsls	r3, r3, #2
1a001266:	4413      	add	r3, r2
1a001268:	78db      	ldrb	r3, [r3, #3]
1a00126a:	4622      	mov	r2, r4
1a00126c:	f000 fe44 	bl	1a001ef8 <Chip_Clock_SetBaseClock>
1a001270:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001272:	3301      	adds	r3, #1
1a001274:	637b      	str	r3, [r7, #52]	; 0x34
1a001276:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001278:	2b11      	cmp	r3, #17
1a00127a:	d9e3      	bls.n	1a001244 <Chip_SetupCoreClock+0x100>
1a00127c:	bf00      	nop
1a00127e:	373c      	adds	r7, #60	; 0x3c
1a001280:	46bd      	mov	sp, r7
1a001282:	bd90      	pop	{r4, r7, pc}
1a001284:	068e7780 	.word	0x068e7780
1a001288:	1a0026b4 	.word	0x1a0026b4

1a00128c <Chip_SetupXtalClocking>:
1a00128c:	b580      	push	{r7, lr}
1a00128e:	af00      	add	r7, sp, #0
1a001290:	2201      	movs	r2, #1
1a001292:	4903      	ldr	r1, [pc, #12]	; (1a0012a0 <Chip_SetupXtalClocking+0x14>)
1a001294:	2006      	movs	r0, #6
1a001296:	f7ff ff55 	bl	1a001144 <Chip_SetupCoreClock>
1a00129a:	bf00      	nop
1a00129c:	bd80      	pop	{r7, pc}
1a00129e:	bf00      	nop
1a0012a0:	0c28cb00 	.word	0x0c28cb00

1a0012a4 <Chip_UART_TXDisable>:
1a0012a4:	b480      	push	{r7}
1a0012a6:	b083      	sub	sp, #12
1a0012a8:	af00      	add	r7, sp, #0
1a0012aa:	6078      	str	r0, [r7, #4]
1a0012ac:	687b      	ldr	r3, [r7, #4]
1a0012ae:	2200      	movs	r2, #0
1a0012b0:	65da      	str	r2, [r3, #92]	; 0x5c
1a0012b2:	bf00      	nop
1a0012b4:	370c      	adds	r7, #12
1a0012b6:	46bd      	mov	sp, r7
1a0012b8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012bc:	4770      	bx	lr

1a0012be <Chip_UART_SendByte>:
1a0012be:	b480      	push	{r7}
1a0012c0:	b083      	sub	sp, #12
1a0012c2:	af00      	add	r7, sp, #0
1a0012c4:	6078      	str	r0, [r7, #4]
1a0012c6:	460b      	mov	r3, r1
1a0012c8:	70fb      	strb	r3, [r7, #3]
1a0012ca:	78fa      	ldrb	r2, [r7, #3]
1a0012cc:	687b      	ldr	r3, [r7, #4]
1a0012ce:	601a      	str	r2, [r3, #0]
1a0012d0:	bf00      	nop
1a0012d2:	370c      	adds	r7, #12
1a0012d4:	46bd      	mov	sp, r7
1a0012d6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012da:	4770      	bx	lr

1a0012dc <Chip_UART_ReadByte>:
1a0012dc:	b480      	push	{r7}
1a0012de:	b083      	sub	sp, #12
1a0012e0:	af00      	add	r7, sp, #0
1a0012e2:	6078      	str	r0, [r7, #4]
1a0012e4:	687b      	ldr	r3, [r7, #4]
1a0012e6:	681b      	ldr	r3, [r3, #0]
1a0012e8:	b2db      	uxtb	r3, r3
1a0012ea:	4618      	mov	r0, r3
1a0012ec:	370c      	adds	r7, #12
1a0012ee:	46bd      	mov	sp, r7
1a0012f0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012f4:	4770      	bx	lr

1a0012f6 <Chip_UART_SetupFIFOS>:
1a0012f6:	b480      	push	{r7}
1a0012f8:	b083      	sub	sp, #12
1a0012fa:	af00      	add	r7, sp, #0
1a0012fc:	6078      	str	r0, [r7, #4]
1a0012fe:	6039      	str	r1, [r7, #0]
1a001300:	687b      	ldr	r3, [r7, #4]
1a001302:	683a      	ldr	r2, [r7, #0]
1a001304:	609a      	str	r2, [r3, #8]
1a001306:	bf00      	nop
1a001308:	370c      	adds	r7, #12
1a00130a:	46bd      	mov	sp, r7
1a00130c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001310:	4770      	bx	lr

1a001312 <Chip_UART_ConfigData>:
1a001312:	b480      	push	{r7}
1a001314:	b083      	sub	sp, #12
1a001316:	af00      	add	r7, sp, #0
1a001318:	6078      	str	r0, [r7, #4]
1a00131a:	6039      	str	r1, [r7, #0]
1a00131c:	687b      	ldr	r3, [r7, #4]
1a00131e:	683a      	ldr	r2, [r7, #0]
1a001320:	60da      	str	r2, [r3, #12]
1a001322:	bf00      	nop
1a001324:	370c      	adds	r7, #12
1a001326:	46bd      	mov	sp, r7
1a001328:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00132c:	4770      	bx	lr

1a00132e <Chip_UART_EnableDivisorAccess>:
1a00132e:	b480      	push	{r7}
1a001330:	b083      	sub	sp, #12
1a001332:	af00      	add	r7, sp, #0
1a001334:	6078      	str	r0, [r7, #4]
1a001336:	687b      	ldr	r3, [r7, #4]
1a001338:	68db      	ldr	r3, [r3, #12]
1a00133a:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a00133e:	687b      	ldr	r3, [r7, #4]
1a001340:	60da      	str	r2, [r3, #12]
1a001342:	bf00      	nop
1a001344:	370c      	adds	r7, #12
1a001346:	46bd      	mov	sp, r7
1a001348:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00134c:	4770      	bx	lr

1a00134e <Chip_UART_DisableDivisorAccess>:
1a00134e:	b480      	push	{r7}
1a001350:	b083      	sub	sp, #12
1a001352:	af00      	add	r7, sp, #0
1a001354:	6078      	str	r0, [r7, #4]
1a001356:	687b      	ldr	r3, [r7, #4]
1a001358:	68db      	ldr	r3, [r3, #12]
1a00135a:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a00135e:	687b      	ldr	r3, [r7, #4]
1a001360:	60da      	str	r2, [r3, #12]
1a001362:	bf00      	nop
1a001364:	370c      	adds	r7, #12
1a001366:	46bd      	mov	sp, r7
1a001368:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00136c:	4770      	bx	lr

1a00136e <Chip_UART_SetDivisorLatches>:
1a00136e:	b480      	push	{r7}
1a001370:	b083      	sub	sp, #12
1a001372:	af00      	add	r7, sp, #0
1a001374:	6078      	str	r0, [r7, #4]
1a001376:	460b      	mov	r3, r1
1a001378:	70fb      	strb	r3, [r7, #3]
1a00137a:	4613      	mov	r3, r2
1a00137c:	70bb      	strb	r3, [r7, #2]
1a00137e:	78fa      	ldrb	r2, [r7, #3]
1a001380:	687b      	ldr	r3, [r7, #4]
1a001382:	601a      	str	r2, [r3, #0]
1a001384:	78ba      	ldrb	r2, [r7, #2]
1a001386:	687b      	ldr	r3, [r7, #4]
1a001388:	605a      	str	r2, [r3, #4]
1a00138a:	bf00      	nop
1a00138c:	370c      	adds	r7, #12
1a00138e:	46bd      	mov	sp, r7
1a001390:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001394:	4770      	bx	lr

1a001396 <Chip_UART_ReadLineStatus>:
1a001396:	b480      	push	{r7}
1a001398:	b083      	sub	sp, #12
1a00139a:	af00      	add	r7, sp, #0
1a00139c:	6078      	str	r0, [r7, #4]
1a00139e:	687b      	ldr	r3, [r7, #4]
1a0013a0:	695b      	ldr	r3, [r3, #20]
1a0013a2:	4618      	mov	r0, r3
1a0013a4:	370c      	adds	r7, #12
1a0013a6:	46bd      	mov	sp, r7
1a0013a8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0013ac:	4770      	bx	lr
1a0013ae:	Address 0x000000001a0013ae is out of bounds.


1a0013b0 <Chip_UART_GetIndex>:
1a0013b0:	b480      	push	{r7}
1a0013b2:	b085      	sub	sp, #20
1a0013b4:	af00      	add	r7, sp, #0
1a0013b6:	6078      	str	r0, [r7, #4]
1a0013b8:	687b      	ldr	r3, [r7, #4]
1a0013ba:	60fb      	str	r3, [r7, #12]
1a0013bc:	68fb      	ldr	r3, [r7, #12]
1a0013be:	4a10      	ldr	r2, [pc, #64]	; (1a001400 <Chip_UART_GetIndex+0x50>)
1a0013c0:	4293      	cmp	r3, r2
1a0013c2:	d00f      	beq.n	1a0013e4 <Chip_UART_GetIndex+0x34>
1a0013c4:	4a0e      	ldr	r2, [pc, #56]	; (1a001400 <Chip_UART_GetIndex+0x50>)
1a0013c6:	4293      	cmp	r3, r2
1a0013c8:	d803      	bhi.n	1a0013d2 <Chip_UART_GetIndex+0x22>
1a0013ca:	4a0e      	ldr	r2, [pc, #56]	; (1a001404 <Chip_UART_GetIndex+0x54>)
1a0013cc:	4293      	cmp	r3, r2
1a0013ce:	d007      	beq.n	1a0013e0 <Chip_UART_GetIndex+0x30>
1a0013d0:	e00e      	b.n	1a0013f0 <Chip_UART_GetIndex+0x40>
1a0013d2:	4a0d      	ldr	r2, [pc, #52]	; (1a001408 <Chip_UART_GetIndex+0x58>)
1a0013d4:	4293      	cmp	r3, r2
1a0013d6:	d007      	beq.n	1a0013e8 <Chip_UART_GetIndex+0x38>
1a0013d8:	4a0c      	ldr	r2, [pc, #48]	; (1a00140c <Chip_UART_GetIndex+0x5c>)
1a0013da:	4293      	cmp	r3, r2
1a0013dc:	d006      	beq.n	1a0013ec <Chip_UART_GetIndex+0x3c>
1a0013de:	e007      	b.n	1a0013f0 <Chip_UART_GetIndex+0x40>
1a0013e0:	2300      	movs	r3, #0
1a0013e2:	e006      	b.n	1a0013f2 <Chip_UART_GetIndex+0x42>
1a0013e4:	2301      	movs	r3, #1
1a0013e6:	e004      	b.n	1a0013f2 <Chip_UART_GetIndex+0x42>
1a0013e8:	2302      	movs	r3, #2
1a0013ea:	e002      	b.n	1a0013f2 <Chip_UART_GetIndex+0x42>
1a0013ec:	2303      	movs	r3, #3
1a0013ee:	e000      	b.n	1a0013f2 <Chip_UART_GetIndex+0x42>
1a0013f0:	2300      	movs	r3, #0
1a0013f2:	4618      	mov	r0, r3
1a0013f4:	3714      	adds	r7, #20
1a0013f6:	46bd      	mov	sp, r7
1a0013f8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0013fc:	4770      	bx	lr
1a0013fe:	bf00      	nop
1a001400:	40082000 	.word	0x40082000
1a001404:	40081000 	.word	0x40081000
1a001408:	400c1000 	.word	0x400c1000
1a00140c:	400c2000 	.word	0x400c2000

1a001410 <Chip_UART_Init>:
1a001410:	b580      	push	{r7, lr}
1a001412:	b084      	sub	sp, #16
1a001414:	af00      	add	r7, sp, #0
1a001416:	6078      	str	r0, [r7, #4]
1a001418:	68fb      	ldr	r3, [r7, #12]
1a00141a:	6878      	ldr	r0, [r7, #4]
1a00141c:	f7ff ffc8 	bl	1a0013b0 <Chip_UART_GetIndex>
1a001420:	4602      	mov	r2, r0
1a001422:	4b1b      	ldr	r3, [pc, #108]	; (1a001490 <Chip_UART_Init+0x80>)
1a001424:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a001428:	2301      	movs	r3, #1
1a00142a:	2201      	movs	r2, #1
1a00142c:	2101      	movs	r1, #1
1a00142e:	f000 fdd7 	bl	1a001fe0 <Chip_Clock_EnableOpts>
1a001432:	2107      	movs	r1, #7
1a001434:	6878      	ldr	r0, [r7, #4]
1a001436:	f7ff ff5e 	bl	1a0012f6 <Chip_UART_SetupFIFOS>
1a00143a:	6878      	ldr	r0, [r7, #4]
1a00143c:	f7ff ff32 	bl	1a0012a4 <Chip_UART_TXDisable>
1a001440:	687b      	ldr	r3, [r7, #4]
1a001442:	2200      	movs	r2, #0
1a001444:	605a      	str	r2, [r3, #4]
1a001446:	687b      	ldr	r3, [r7, #4]
1a001448:	2200      	movs	r2, #0
1a00144a:	60da      	str	r2, [r3, #12]
1a00144c:	687b      	ldr	r3, [r7, #4]
1a00144e:	2200      	movs	r2, #0
1a001450:	621a      	str	r2, [r3, #32]
1a001452:	687b      	ldr	r3, [r7, #4]
1a001454:	2200      	movs	r2, #0
1a001456:	64da      	str	r2, [r3, #76]	; 0x4c
1a001458:	687b      	ldr	r3, [r7, #4]
1a00145a:	2200      	movs	r2, #0
1a00145c:	655a      	str	r2, [r3, #84]	; 0x54
1a00145e:	687b      	ldr	r3, [r7, #4]
1a001460:	2200      	movs	r2, #0
1a001462:	651a      	str	r2, [r3, #80]	; 0x50
1a001464:	687b      	ldr	r3, [r7, #4]
1a001466:	4a0b      	ldr	r2, [pc, #44]	; (1a001494 <Chip_UART_Init+0x84>)
1a001468:	4293      	cmp	r3, r2
1a00146a:	d105      	bne.n	1a001478 <Chip_UART_Init+0x68>
1a00146c:	687b      	ldr	r3, [r7, #4]
1a00146e:	2200      	movs	r2, #0
1a001470:	611a      	str	r2, [r3, #16]
1a001472:	687b      	ldr	r3, [r7, #4]
1a001474:	699b      	ldr	r3, [r3, #24]
1a001476:	60fb      	str	r3, [r7, #12]
1a001478:	2103      	movs	r1, #3
1a00147a:	6878      	ldr	r0, [r7, #4]
1a00147c:	f7ff ff49 	bl	1a001312 <Chip_UART_ConfigData>
1a001480:	687b      	ldr	r3, [r7, #4]
1a001482:	2210      	movs	r2, #16
1a001484:	629a      	str	r2, [r3, #40]	; 0x28
1a001486:	bf00      	nop
1a001488:	3710      	adds	r7, #16
1a00148a:	46bd      	mov	sp, r7
1a00148c:	bd80      	pop	{r7, pc}
1a00148e:	bf00      	nop
1a001490:	1a0026fc 	.word	0x1a0026fc
1a001494:	40082000 	.word	0x40082000

1a001498 <Chip_UART_Send>:
1a001498:	b580      	push	{r7, lr}
1a00149a:	b086      	sub	sp, #24
1a00149c:	af00      	add	r7, sp, #0
1a00149e:	60f8      	str	r0, [r7, #12]
1a0014a0:	60b9      	str	r1, [r7, #8]
1a0014a2:	607a      	str	r2, [r7, #4]
1a0014a4:	2300      	movs	r3, #0
1a0014a6:	617b      	str	r3, [r7, #20]
1a0014a8:	68bb      	ldr	r3, [r7, #8]
1a0014aa:	613b      	str	r3, [r7, #16]
1a0014ac:	e00b      	b.n	1a0014c6 <Chip_UART_Send+0x2e>
1a0014ae:	693b      	ldr	r3, [r7, #16]
1a0014b0:	781b      	ldrb	r3, [r3, #0]
1a0014b2:	4619      	mov	r1, r3
1a0014b4:	68f8      	ldr	r0, [r7, #12]
1a0014b6:	f7ff ff02 	bl	1a0012be <Chip_UART_SendByte>
1a0014ba:	693b      	ldr	r3, [r7, #16]
1a0014bc:	3301      	adds	r3, #1
1a0014be:	613b      	str	r3, [r7, #16]
1a0014c0:	697b      	ldr	r3, [r7, #20]
1a0014c2:	3301      	adds	r3, #1
1a0014c4:	617b      	str	r3, [r7, #20]
1a0014c6:	697a      	ldr	r2, [r7, #20]
1a0014c8:	687b      	ldr	r3, [r7, #4]
1a0014ca:	429a      	cmp	r2, r3
1a0014cc:	da07      	bge.n	1a0014de <Chip_UART_Send+0x46>
1a0014ce:	68f8      	ldr	r0, [r7, #12]
1a0014d0:	f7ff ff61 	bl	1a001396 <Chip_UART_ReadLineStatus>
1a0014d4:	4603      	mov	r3, r0
1a0014d6:	f003 0320 	and.w	r3, r3, #32
1a0014da:	2b00      	cmp	r3, #0
1a0014dc:	d1e7      	bne.n	1a0014ae <Chip_UART_Send+0x16>
1a0014de:	697b      	ldr	r3, [r7, #20]
1a0014e0:	4618      	mov	r0, r3
1a0014e2:	3718      	adds	r7, #24
1a0014e4:	46bd      	mov	sp, r7
1a0014e6:	bd80      	pop	{r7, pc}

1a0014e8 <Chip_UART_SendBlocking>:
1a0014e8:	b580      	push	{r7, lr}
1a0014ea:	b088      	sub	sp, #32
1a0014ec:	af00      	add	r7, sp, #0
1a0014ee:	60f8      	str	r0, [r7, #12]
1a0014f0:	60b9      	str	r1, [r7, #8]
1a0014f2:	607a      	str	r2, [r7, #4]
1a0014f4:	2300      	movs	r3, #0
1a0014f6:	61fb      	str	r3, [r7, #28]
1a0014f8:	68bb      	ldr	r3, [r7, #8]
1a0014fa:	61bb      	str	r3, [r7, #24]
1a0014fc:	e011      	b.n	1a001522 <Chip_UART_SendBlocking+0x3a>
1a0014fe:	687a      	ldr	r2, [r7, #4]
1a001500:	69b9      	ldr	r1, [r7, #24]
1a001502:	68f8      	ldr	r0, [r7, #12]
1a001504:	f7ff ffc8 	bl	1a001498 <Chip_UART_Send>
1a001508:	6178      	str	r0, [r7, #20]
1a00150a:	687a      	ldr	r2, [r7, #4]
1a00150c:	697b      	ldr	r3, [r7, #20]
1a00150e:	1ad3      	subs	r3, r2, r3
1a001510:	607b      	str	r3, [r7, #4]
1a001512:	69fa      	ldr	r2, [r7, #28]
1a001514:	697b      	ldr	r3, [r7, #20]
1a001516:	4413      	add	r3, r2
1a001518:	61fb      	str	r3, [r7, #28]
1a00151a:	697b      	ldr	r3, [r7, #20]
1a00151c:	69ba      	ldr	r2, [r7, #24]
1a00151e:	4413      	add	r3, r2
1a001520:	61bb      	str	r3, [r7, #24]
1a001522:	687b      	ldr	r3, [r7, #4]
1a001524:	2b00      	cmp	r3, #0
1a001526:	dcea      	bgt.n	1a0014fe <Chip_UART_SendBlocking+0x16>
1a001528:	69fb      	ldr	r3, [r7, #28]
1a00152a:	4618      	mov	r0, r3
1a00152c:	3720      	adds	r7, #32
1a00152e:	46bd      	mov	sp, r7
1a001530:	bd80      	pop	{r7, pc}

1a001532 <Chip_UART_Read>:
1a001532:	b580      	push	{r7, lr}
1a001534:	b086      	sub	sp, #24
1a001536:	af00      	add	r7, sp, #0
1a001538:	60f8      	str	r0, [r7, #12]
1a00153a:	60b9      	str	r1, [r7, #8]
1a00153c:	607a      	str	r2, [r7, #4]
1a00153e:	2300      	movs	r3, #0
1a001540:	617b      	str	r3, [r7, #20]
1a001542:	68bb      	ldr	r3, [r7, #8]
1a001544:	613b      	str	r3, [r7, #16]
1a001546:	e00c      	b.n	1a001562 <Chip_UART_Read+0x30>
1a001548:	68f8      	ldr	r0, [r7, #12]
1a00154a:	f7ff fec7 	bl	1a0012dc <Chip_UART_ReadByte>
1a00154e:	4603      	mov	r3, r0
1a001550:	461a      	mov	r2, r3
1a001552:	693b      	ldr	r3, [r7, #16]
1a001554:	701a      	strb	r2, [r3, #0]
1a001556:	693b      	ldr	r3, [r7, #16]
1a001558:	3301      	adds	r3, #1
1a00155a:	613b      	str	r3, [r7, #16]
1a00155c:	697b      	ldr	r3, [r7, #20]
1a00155e:	3301      	adds	r3, #1
1a001560:	617b      	str	r3, [r7, #20]
1a001562:	697a      	ldr	r2, [r7, #20]
1a001564:	687b      	ldr	r3, [r7, #4]
1a001566:	429a      	cmp	r2, r3
1a001568:	da07      	bge.n	1a00157a <Chip_UART_Read+0x48>
1a00156a:	68f8      	ldr	r0, [r7, #12]
1a00156c:	f7ff ff13 	bl	1a001396 <Chip_UART_ReadLineStatus>
1a001570:	4603      	mov	r3, r0
1a001572:	f003 0301 	and.w	r3, r3, #1
1a001576:	2b00      	cmp	r3, #0
1a001578:	d1e6      	bne.n	1a001548 <Chip_UART_Read+0x16>
1a00157a:	697b      	ldr	r3, [r7, #20]
1a00157c:	4618      	mov	r0, r3
1a00157e:	3718      	adds	r7, #24
1a001580:	46bd      	mov	sp, r7
1a001582:	bd80      	pop	{r7, pc}

1a001584 <Chip_UART_ReadBlocking>:
1a001584:	b580      	push	{r7, lr}
1a001586:	b088      	sub	sp, #32
1a001588:	af00      	add	r7, sp, #0
1a00158a:	60f8      	str	r0, [r7, #12]
1a00158c:	60b9      	str	r1, [r7, #8]
1a00158e:	607a      	str	r2, [r7, #4]
1a001590:	2300      	movs	r3, #0
1a001592:	61fb      	str	r3, [r7, #28]
1a001594:	68bb      	ldr	r3, [r7, #8]
1a001596:	61bb      	str	r3, [r7, #24]
1a001598:	e011      	b.n	1a0015be <Chip_UART_ReadBlocking+0x3a>
1a00159a:	687a      	ldr	r2, [r7, #4]
1a00159c:	69b9      	ldr	r1, [r7, #24]
1a00159e:	68f8      	ldr	r0, [r7, #12]
1a0015a0:	f7ff ffc7 	bl	1a001532 <Chip_UART_Read>
1a0015a4:	6178      	str	r0, [r7, #20]
1a0015a6:	687a      	ldr	r2, [r7, #4]
1a0015a8:	697b      	ldr	r3, [r7, #20]
1a0015aa:	1ad3      	subs	r3, r2, r3
1a0015ac:	607b      	str	r3, [r7, #4]
1a0015ae:	69fa      	ldr	r2, [r7, #28]
1a0015b0:	697b      	ldr	r3, [r7, #20]
1a0015b2:	4413      	add	r3, r2
1a0015b4:	61fb      	str	r3, [r7, #28]
1a0015b6:	697b      	ldr	r3, [r7, #20]
1a0015b8:	69ba      	ldr	r2, [r7, #24]
1a0015ba:	4413      	add	r3, r2
1a0015bc:	61bb      	str	r3, [r7, #24]
1a0015be:	687b      	ldr	r3, [r7, #4]
1a0015c0:	2b00      	cmp	r3, #0
1a0015c2:	dcea      	bgt.n	1a00159a <Chip_UART_ReadBlocking+0x16>
1a0015c4:	69fb      	ldr	r3, [r7, #28]
1a0015c6:	4618      	mov	r0, r3
1a0015c8:	3720      	adds	r7, #32
1a0015ca:	46bd      	mov	sp, r7
1a0015cc:	bd80      	pop	{r7, pc}
1a0015ce:	Address 0x000000001a0015ce is out of bounds.


1a0015d0 <Chip_UART_SetBaud>:
1a0015d0:	b580      	push	{r7, lr}
1a0015d2:	b086      	sub	sp, #24
1a0015d4:	af00      	add	r7, sp, #0
1a0015d6:	6078      	str	r0, [r7, #4]
1a0015d8:	6039      	str	r1, [r7, #0]
1a0015da:	6878      	ldr	r0, [r7, #4]
1a0015dc:	f7ff fee8 	bl	1a0013b0 <Chip_UART_GetIndex>
1a0015e0:	4602      	mov	r2, r0
1a0015e2:	4b16      	ldr	r3, [pc, #88]	; (1a00163c <Chip_UART_SetBaud+0x6c>)
1a0015e4:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a0015e8:	4618      	mov	r0, r3
1a0015ea:	f000 fd67 	bl	1a0020bc <Chip_Clock_GetRate>
1a0015ee:	6178      	str	r0, [r7, #20]
1a0015f0:	683b      	ldr	r3, [r7, #0]
1a0015f2:	011b      	lsls	r3, r3, #4
1a0015f4:	697a      	ldr	r2, [r7, #20]
1a0015f6:	fbb2 f3f3 	udiv	r3, r2, r3
1a0015fa:	613b      	str	r3, [r7, #16]
1a0015fc:	693b      	ldr	r3, [r7, #16]
1a0015fe:	0a1b      	lsrs	r3, r3, #8
1a001600:	60fb      	str	r3, [r7, #12]
1a001602:	68fb      	ldr	r3, [r7, #12]
1a001604:	021b      	lsls	r3, r3, #8
1a001606:	693a      	ldr	r2, [r7, #16]
1a001608:	1ad3      	subs	r3, r2, r3
1a00160a:	60bb      	str	r3, [r7, #8]
1a00160c:	6878      	ldr	r0, [r7, #4]
1a00160e:	f7ff fe8e 	bl	1a00132e <Chip_UART_EnableDivisorAccess>
1a001612:	68bb      	ldr	r3, [r7, #8]
1a001614:	b2db      	uxtb	r3, r3
1a001616:	68fa      	ldr	r2, [r7, #12]
1a001618:	b2d2      	uxtb	r2, r2
1a00161a:	4619      	mov	r1, r3
1a00161c:	6878      	ldr	r0, [r7, #4]
1a00161e:	f7ff fea6 	bl	1a00136e <Chip_UART_SetDivisorLatches>
1a001622:	6878      	ldr	r0, [r7, #4]
1a001624:	f7ff fe93 	bl	1a00134e <Chip_UART_DisableDivisorAccess>
1a001628:	697a      	ldr	r2, [r7, #20]
1a00162a:	693b      	ldr	r3, [r7, #16]
1a00162c:	fbb2 f3f3 	udiv	r3, r2, r3
1a001630:	091b      	lsrs	r3, r3, #4
1a001632:	4618      	mov	r0, r3
1a001634:	3718      	adds	r7, #24
1a001636:	46bd      	mov	sp, r7
1a001638:	bd80      	pop	{r7, pc}
1a00163a:	bf00      	nop
1a00163c:	1a002704 	.word	0x1a002704

1a001640 <Chip_TIMER_Enable>:
1a001640:	b480      	push	{r7}
1a001642:	b083      	sub	sp, #12
1a001644:	af00      	add	r7, sp, #0
1a001646:	6078      	str	r0, [r7, #4]
1a001648:	687b      	ldr	r3, [r7, #4]
1a00164a:	685b      	ldr	r3, [r3, #4]
1a00164c:	f043 0201 	orr.w	r2, r3, #1
1a001650:	687b      	ldr	r3, [r7, #4]
1a001652:	605a      	str	r2, [r3, #4]
1a001654:	bf00      	nop
1a001656:	370c      	adds	r7, #12
1a001658:	46bd      	mov	sp, r7
1a00165a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00165e:	4770      	bx	lr

1a001660 <Chip_TIMER_ReadCount>:
1a001660:	b480      	push	{r7}
1a001662:	b083      	sub	sp, #12
1a001664:	af00      	add	r7, sp, #0
1a001666:	6078      	str	r0, [r7, #4]
1a001668:	687b      	ldr	r3, [r7, #4]
1a00166a:	689b      	ldr	r3, [r3, #8]
1a00166c:	4618      	mov	r0, r3
1a00166e:	370c      	adds	r7, #12
1a001670:	46bd      	mov	sp, r7
1a001672:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001676:	4770      	bx	lr

1a001678 <Chip_TIMER_PrescaleSet>:
1a001678:	b480      	push	{r7}
1a00167a:	b083      	sub	sp, #12
1a00167c:	af00      	add	r7, sp, #0
1a00167e:	6078      	str	r0, [r7, #4]
1a001680:	6039      	str	r1, [r7, #0]
1a001682:	687b      	ldr	r3, [r7, #4]
1a001684:	683a      	ldr	r2, [r7, #0]
1a001686:	60da      	str	r2, [r3, #12]
1a001688:	bf00      	nop
1a00168a:	370c      	adds	r7, #12
1a00168c:	46bd      	mov	sp, r7
1a00168e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001692:	4770      	bx	lr

1a001694 <StopWatch_Init>:
1a001694:	b580      	push	{r7, lr}
1a001696:	b082      	sub	sp, #8
1a001698:	af00      	add	r7, sp, #0
1a00169a:	2308      	movs	r3, #8
1a00169c:	607b      	str	r3, [r7, #4]
1a00169e:	4814      	ldr	r0, [pc, #80]	; (1a0016f0 <StopWatch_Init+0x5c>)
1a0016a0:	f000 fd8e 	bl	1a0021c0 <Chip_TIMER_Init>
1a0016a4:	687b      	ldr	r3, [r7, #4]
1a0016a6:	3b01      	subs	r3, #1
1a0016a8:	4619      	mov	r1, r3
1a0016aa:	4811      	ldr	r0, [pc, #68]	; (1a0016f0 <StopWatch_Init+0x5c>)
1a0016ac:	f7ff ffe4 	bl	1a001678 <Chip_TIMER_PrescaleSet>
1a0016b0:	480f      	ldr	r0, [pc, #60]	; (1a0016f0 <StopWatch_Init+0x5c>)
1a0016b2:	f7ff ffc5 	bl	1a001640 <Chip_TIMER_Enable>
1a0016b6:	2084      	movs	r0, #132	; 0x84
1a0016b8:	f000 fd00 	bl	1a0020bc <Chip_Clock_GetRate>
1a0016bc:	4602      	mov	r2, r0
1a0016be:	687b      	ldr	r3, [r7, #4]
1a0016c0:	fbb2 f3f3 	udiv	r3, r2, r3
1a0016c4:	4a0b      	ldr	r2, [pc, #44]	; (1a0016f4 <StopWatch_Init+0x60>)
1a0016c6:	6013      	str	r3, [r2, #0]
1a0016c8:	4b0a      	ldr	r3, [pc, #40]	; (1a0016f4 <StopWatch_Init+0x60>)
1a0016ca:	681b      	ldr	r3, [r3, #0]
1a0016cc:	4a0a      	ldr	r2, [pc, #40]	; (1a0016f8 <StopWatch_Init+0x64>)
1a0016ce:	fba2 2303 	umull	r2, r3, r2, r3
1a0016d2:	099b      	lsrs	r3, r3, #6
1a0016d4:	4a09      	ldr	r2, [pc, #36]	; (1a0016fc <StopWatch_Init+0x68>)
1a0016d6:	6013      	str	r3, [r2, #0]
1a0016d8:	4b06      	ldr	r3, [pc, #24]	; (1a0016f4 <StopWatch_Init+0x60>)
1a0016da:	681b      	ldr	r3, [r3, #0]
1a0016dc:	4a08      	ldr	r2, [pc, #32]	; (1a001700 <StopWatch_Init+0x6c>)
1a0016de:	fba2 2303 	umull	r2, r3, r2, r3
1a0016e2:	0c9b      	lsrs	r3, r3, #18
1a0016e4:	4a07      	ldr	r2, [pc, #28]	; (1a001704 <StopWatch_Init+0x70>)
1a0016e6:	6013      	str	r3, [r2, #0]
1a0016e8:	bf00      	nop
1a0016ea:	3708      	adds	r7, #8
1a0016ec:	46bd      	mov	sp, r7
1a0016ee:	bd80      	pop	{r7, pc}
1a0016f0:	40084000 	.word	0x40084000
1a0016f4:	10000008 	.word	0x10000008
1a0016f8:	10624dd3 	.word	0x10624dd3
1a0016fc:	1000000c 	.word	0x1000000c
1a001700:	431bde83 	.word	0x431bde83
1a001704:	10000010 	.word	0x10000010

1a001708 <StopWatch_Start>:
1a001708:	b580      	push	{r7, lr}
1a00170a:	af00      	add	r7, sp, #0
1a00170c:	4802      	ldr	r0, [pc, #8]	; (1a001718 <StopWatch_Start+0x10>)
1a00170e:	f7ff ffa7 	bl	1a001660 <Chip_TIMER_ReadCount>
1a001712:	4603      	mov	r3, r0
1a001714:	4618      	mov	r0, r3
1a001716:	bd80      	pop	{r7, pc}
1a001718:	40084000 	.word	0x40084000

1a00171c <StopWatch_MsToTicks>:
1a00171c:	b480      	push	{r7}
1a00171e:	b083      	sub	sp, #12
1a001720:	af00      	add	r7, sp, #0
1a001722:	6078      	str	r0, [r7, #4]
1a001724:	4b05      	ldr	r3, [pc, #20]	; (1a00173c <StopWatch_MsToTicks+0x20>)
1a001726:	681b      	ldr	r3, [r3, #0]
1a001728:	687a      	ldr	r2, [r7, #4]
1a00172a:	fb02 f303 	mul.w	r3, r2, r3
1a00172e:	4618      	mov	r0, r3
1a001730:	370c      	adds	r7, #12
1a001732:	46bd      	mov	sp, r7
1a001734:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001738:	4770      	bx	lr
1a00173a:	bf00      	nop
1a00173c:	1000000c 	.word	0x1000000c

1a001740 <RingBuffer_Init>:
1a001740:	b480      	push	{r7}
1a001742:	b085      	sub	sp, #20
1a001744:	af00      	add	r7, sp, #0
1a001746:	60f8      	str	r0, [r7, #12]
1a001748:	60b9      	str	r1, [r7, #8]
1a00174a:	607a      	str	r2, [r7, #4]
1a00174c:	603b      	str	r3, [r7, #0]
1a00174e:	68fb      	ldr	r3, [r7, #12]
1a001750:	68ba      	ldr	r2, [r7, #8]
1a001752:	601a      	str	r2, [r3, #0]
1a001754:	68fb      	ldr	r3, [r7, #12]
1a001756:	683a      	ldr	r2, [r7, #0]
1a001758:	605a      	str	r2, [r3, #4]
1a00175a:	68fb      	ldr	r3, [r7, #12]
1a00175c:	687a      	ldr	r2, [r7, #4]
1a00175e:	609a      	str	r2, [r3, #8]
1a001760:	68fb      	ldr	r3, [r7, #12]
1a001762:	2200      	movs	r2, #0
1a001764:	611a      	str	r2, [r3, #16]
1a001766:	68fb      	ldr	r3, [r7, #12]
1a001768:	691a      	ldr	r2, [r3, #16]
1a00176a:	68fb      	ldr	r3, [r7, #12]
1a00176c:	60da      	str	r2, [r3, #12]
1a00176e:	2301      	movs	r3, #1
1a001770:	4618      	mov	r0, r3
1a001772:	3714      	adds	r7, #20
1a001774:	46bd      	mov	sp, r7
1a001776:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00177a:	4770      	bx	lr

1a00177c <ABS>:
1a00177c:	b480      	push	{r7}
1a00177e:	b083      	sub	sp, #12
1a001780:	af00      	add	r7, sp, #0
1a001782:	6078      	str	r0, [r7, #4]
1a001784:	687b      	ldr	r3, [r7, #4]
1a001786:	2b00      	cmp	r3, #0
1a001788:	da02      	bge.n	1a001790 <ABS+0x14>
1a00178a:	687b      	ldr	r3, [r7, #4]
1a00178c:	425b      	negs	r3, r3
1a00178e:	e000      	b.n	1a001792 <ABS+0x16>
1a001790:	687b      	ldr	r3, [r7, #4]
1a001792:	4618      	mov	r0, r3
1a001794:	370c      	adds	r7, #12
1a001796:	46bd      	mov	sp, r7
1a001798:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00179c:	4770      	bx	lr
1a00179e:	Address 0x000000001a00179e is out of bounds.


1a0017a0 <pll_calc_divs>:
1a0017a0:	b580      	push	{r7, lr}
1a0017a2:	b088      	sub	sp, #32
1a0017a4:	af00      	add	r7, sp, #0
1a0017a6:	6078      	str	r0, [r7, #4]
1a0017a8:	6039      	str	r1, [r7, #0]
1a0017aa:	687b      	ldr	r3, [r7, #4]
1a0017ac:	61fb      	str	r3, [r7, #28]
1a0017ae:	683b      	ldr	r3, [r7, #0]
1a0017b0:	681b      	ldr	r3, [r3, #0]
1a0017b2:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0017b6:	2b00      	cmp	r3, #0
1a0017b8:	d005      	beq.n	1a0017c6 <pll_calc_divs+0x26>
1a0017ba:	683b      	ldr	r3, [r7, #0]
1a0017bc:	681b      	ldr	r3, [r3, #0]
1a0017be:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a0017c2:	683b      	ldr	r3, [r7, #0]
1a0017c4:	601a      	str	r2, [r3, #0]
1a0017c6:	2301      	movs	r3, #1
1a0017c8:	61bb      	str	r3, [r7, #24]
1a0017ca:	e06f      	b.n	1a0018ac <pll_calc_divs+0x10c>
1a0017cc:	2300      	movs	r3, #0
1a0017ce:	613b      	str	r3, [r7, #16]
1a0017d0:	e066      	b.n	1a0018a0 <pll_calc_divs+0x100>
1a0017d2:	2301      	movs	r3, #1
1a0017d4:	617b      	str	r3, [r7, #20]
1a0017d6:	e05a      	b.n	1a00188e <pll_calc_divs+0xee>
1a0017d8:	683b      	ldr	r3, [r7, #0]
1a0017da:	681b      	ldr	r3, [r3, #0]
1a0017dc:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0017e0:	2b00      	cmp	r3, #0
1a0017e2:	d00e      	beq.n	1a001802 <pll_calc_divs+0x62>
1a0017e4:	693b      	ldr	r3, [r7, #16]
1a0017e6:	3301      	adds	r3, #1
1a0017e8:	697a      	ldr	r2, [r7, #20]
1a0017ea:	fa02 f303 	lsl.w	r3, r2, r3
1a0017ee:	461a      	mov	r2, r3
1a0017f0:	683b      	ldr	r3, [r7, #0]
1a0017f2:	695b      	ldr	r3, [r3, #20]
1a0017f4:	fb03 f202 	mul.w	r2, r3, r2
1a0017f8:	69bb      	ldr	r3, [r7, #24]
1a0017fa:	fbb2 f3f3 	udiv	r3, r2, r3
1a0017fe:	60fb      	str	r3, [r7, #12]
1a001800:	e008      	b.n	1a001814 <pll_calc_divs+0x74>
1a001802:	683b      	ldr	r3, [r7, #0]
1a001804:	695b      	ldr	r3, [r3, #20]
1a001806:	697a      	ldr	r2, [r7, #20]
1a001808:	fb02 f203 	mul.w	r2, r2, r3
1a00180c:	69bb      	ldr	r3, [r7, #24]
1a00180e:	fbb2 f3f3 	udiv	r3, r2, r3
1a001812:	60fb      	str	r3, [r7, #12]
1a001814:	68fb      	ldr	r3, [r7, #12]
1a001816:	4a29      	ldr	r2, [pc, #164]	; (1a0018bc <pll_calc_divs+0x11c>)
1a001818:	4293      	cmp	r3, r2
1a00181a:	d934      	bls.n	1a001886 <pll_calc_divs+0xe6>
1a00181c:	68fb      	ldr	r3, [r7, #12]
1a00181e:	4a28      	ldr	r2, [pc, #160]	; (1a0018c0 <pll_calc_divs+0x120>)
1a001820:	4293      	cmp	r3, r2
1a001822:	d839      	bhi.n	1a001898 <pll_calc_divs+0xf8>
1a001824:	683b      	ldr	r3, [r7, #0]
1a001826:	681b      	ldr	r3, [r3, #0]
1a001828:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00182c:	2b00      	cmp	r3, #0
1a00182e:	d002      	beq.n	1a001836 <pll_calc_divs+0x96>
1a001830:	68fb      	ldr	r3, [r7, #12]
1a001832:	60bb      	str	r3, [r7, #8]
1a001834:	e005      	b.n	1a001842 <pll_calc_divs+0xa2>
1a001836:	693b      	ldr	r3, [r7, #16]
1a001838:	3301      	adds	r3, #1
1a00183a:	68fa      	ldr	r2, [r7, #12]
1a00183c:	fa22 f303 	lsr.w	r3, r2, r3
1a001840:	60bb      	str	r3, [r7, #8]
1a001842:	687a      	ldr	r2, [r7, #4]
1a001844:	68bb      	ldr	r3, [r7, #8]
1a001846:	1ad3      	subs	r3, r2, r3
1a001848:	4618      	mov	r0, r3
1a00184a:	f7ff ff97 	bl	1a00177c <ABS>
1a00184e:	4602      	mov	r2, r0
1a001850:	69fb      	ldr	r3, [r7, #28]
1a001852:	4293      	cmp	r3, r2
1a001854:	d918      	bls.n	1a001888 <pll_calc_divs+0xe8>
1a001856:	683b      	ldr	r3, [r7, #0]
1a001858:	69ba      	ldr	r2, [r7, #24]
1a00185a:	609a      	str	r2, [r3, #8]
1a00185c:	693b      	ldr	r3, [r7, #16]
1a00185e:	1c5a      	adds	r2, r3, #1
1a001860:	683b      	ldr	r3, [r7, #0]
1a001862:	60da      	str	r2, [r3, #12]
1a001864:	683b      	ldr	r3, [r7, #0]
1a001866:	697a      	ldr	r2, [r7, #20]
1a001868:	611a      	str	r2, [r3, #16]
1a00186a:	683b      	ldr	r3, [r7, #0]
1a00186c:	68ba      	ldr	r2, [r7, #8]
1a00186e:	619a      	str	r2, [r3, #24]
1a001870:	683b      	ldr	r3, [r7, #0]
1a001872:	68fa      	ldr	r2, [r7, #12]
1a001874:	61da      	str	r2, [r3, #28]
1a001876:	687a      	ldr	r2, [r7, #4]
1a001878:	68bb      	ldr	r3, [r7, #8]
1a00187a:	1ad3      	subs	r3, r2, r3
1a00187c:	4618      	mov	r0, r3
1a00187e:	f7ff ff7d 	bl	1a00177c <ABS>
1a001882:	61f8      	str	r0, [r7, #28]
1a001884:	e000      	b.n	1a001888 <pll_calc_divs+0xe8>
1a001886:	bf00      	nop
1a001888:	697b      	ldr	r3, [r7, #20]
1a00188a:	3301      	adds	r3, #1
1a00188c:	617b      	str	r3, [r7, #20]
1a00188e:	697b      	ldr	r3, [r7, #20]
1a001890:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a001894:	dda0      	ble.n	1a0017d8 <pll_calc_divs+0x38>
1a001896:	e000      	b.n	1a00189a <pll_calc_divs+0xfa>
1a001898:	bf00      	nop
1a00189a:	693b      	ldr	r3, [r7, #16]
1a00189c:	3301      	adds	r3, #1
1a00189e:	613b      	str	r3, [r7, #16]
1a0018a0:	693b      	ldr	r3, [r7, #16]
1a0018a2:	2b03      	cmp	r3, #3
1a0018a4:	dd95      	ble.n	1a0017d2 <pll_calc_divs+0x32>
1a0018a6:	69bb      	ldr	r3, [r7, #24]
1a0018a8:	3301      	adds	r3, #1
1a0018aa:	61bb      	str	r3, [r7, #24]
1a0018ac:	69bb      	ldr	r3, [r7, #24]
1a0018ae:	2b04      	cmp	r3, #4
1a0018b0:	dd8c      	ble.n	1a0017cc <pll_calc_divs+0x2c>
1a0018b2:	bf00      	nop
1a0018b4:	3720      	adds	r7, #32
1a0018b6:	46bd      	mov	sp, r7
1a0018b8:	bd80      	pop	{r7, pc}
1a0018ba:	bf00      	nop
1a0018bc:	094c5eff 	.word	0x094c5eff
1a0018c0:	1312d000 	.word	0x1312d000

1a0018c4 <pll_get_frac>:
1a0018c4:	b5b0      	push	{r4, r5, r7, lr}
1a0018c6:	b09e      	sub	sp, #120	; 0x78
1a0018c8:	af00      	add	r7, sp, #0
1a0018ca:	6078      	str	r0, [r7, #4]
1a0018cc:	6039      	str	r1, [r7, #0]
1a0018ce:	f107 030c 	add.w	r3, r7, #12
1a0018d2:	2260      	movs	r2, #96	; 0x60
1a0018d4:	2100      	movs	r1, #0
1a0018d6:	4618      	mov	r0, r3
1a0018d8:	f7fe fd12 	bl	1a000300 <memset>
1a0018dc:	68fb      	ldr	r3, [r7, #12]
1a0018de:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0018e2:	60fb      	str	r3, [r7, #12]
1a0018e4:	683b      	ldr	r3, [r7, #0]
1a0018e6:	695b      	ldr	r3, [r3, #20]
1a0018e8:	623b      	str	r3, [r7, #32]
1a0018ea:	683b      	ldr	r3, [r7, #0]
1a0018ec:	791b      	ldrb	r3, [r3, #4]
1a0018ee:	743b      	strb	r3, [r7, #16]
1a0018f0:	f107 030c 	add.w	r3, r7, #12
1a0018f4:	4619      	mov	r1, r3
1a0018f6:	6878      	ldr	r0, [r7, #4]
1a0018f8:	f7ff ff52 	bl	1a0017a0 <pll_calc_divs>
1a0018fc:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0018fe:	687a      	ldr	r2, [r7, #4]
1a001900:	429a      	cmp	r2, r3
1a001902:	d10a      	bne.n	1a00191a <pll_get_frac+0x56>
1a001904:	683b      	ldr	r3, [r7, #0]
1a001906:	461d      	mov	r5, r3
1a001908:	f107 040c 	add.w	r4, r7, #12
1a00190c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a00190e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001910:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001914:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001918:	e08e      	b.n	1a001a38 <pll_get_frac+0x174>
1a00191a:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a00191c:	687a      	ldr	r2, [r7, #4]
1a00191e:	1ad3      	subs	r3, r2, r3
1a001920:	4618      	mov	r0, r3
1a001922:	f7ff ff2b 	bl	1a00177c <ABS>
1a001926:	4603      	mov	r3, r0
1a001928:	66fb      	str	r3, [r7, #108]	; 0x6c
1a00192a:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a00192c:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001930:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001932:	683b      	ldr	r3, [r7, #0]
1a001934:	695b      	ldr	r3, [r3, #20]
1a001936:	663b      	str	r3, [r7, #96]	; 0x60
1a001938:	683b      	ldr	r3, [r7, #0]
1a00193a:	791b      	ldrb	r3, [r3, #4]
1a00193c:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001940:	f107 030c 	add.w	r3, r7, #12
1a001944:	3340      	adds	r3, #64	; 0x40
1a001946:	4619      	mov	r1, r3
1a001948:	6878      	ldr	r0, [r7, #4]
1a00194a:	f7ff ff29 	bl	1a0017a0 <pll_calc_divs>
1a00194e:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001950:	687a      	ldr	r2, [r7, #4]
1a001952:	429a      	cmp	r2, r3
1a001954:	d10a      	bne.n	1a00196c <pll_get_frac+0xa8>
1a001956:	683b      	ldr	r3, [r7, #0]
1a001958:	461d      	mov	r5, r3
1a00195a:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a00195e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001960:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001962:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001966:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00196a:	e065      	b.n	1a001a38 <pll_get_frac+0x174>
1a00196c:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a00196e:	687a      	ldr	r2, [r7, #4]
1a001970:	1ad3      	subs	r3, r2, r3
1a001972:	4618      	mov	r0, r3
1a001974:	f7ff ff02 	bl	1a00177c <ABS>
1a001978:	4603      	mov	r3, r0
1a00197a:	677b      	str	r3, [r7, #116]	; 0x74
1a00197c:	687b      	ldr	r3, [r7, #4]
1a00197e:	4a30      	ldr	r2, [pc, #192]	; (1a001a40 <pll_get_frac+0x17c>)
1a001980:	4293      	cmp	r3, r2
1a001982:	d81a      	bhi.n	1a0019ba <pll_get_frac+0xf6>
1a001984:	2340      	movs	r3, #64	; 0x40
1a001986:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001988:	683b      	ldr	r3, [r7, #0]
1a00198a:	695b      	ldr	r3, [r3, #20]
1a00198c:	643b      	str	r3, [r7, #64]	; 0x40
1a00198e:	f107 030c 	add.w	r3, r7, #12
1a001992:	3320      	adds	r3, #32
1a001994:	4619      	mov	r1, r3
1a001996:	6878      	ldr	r0, [r7, #4]
1a001998:	f7ff ff02 	bl	1a0017a0 <pll_calc_divs>
1a00199c:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a00199e:	687a      	ldr	r2, [r7, #4]
1a0019a0:	429a      	cmp	r2, r3
1a0019a2:	d10a      	bne.n	1a0019ba <pll_get_frac+0xf6>
1a0019a4:	683b      	ldr	r3, [r7, #0]
1a0019a6:	461d      	mov	r5, r3
1a0019a8:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0019ac:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0019ae:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0019b0:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0019b4:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0019b8:	e03e      	b.n	1a001a38 <pll_get_frac+0x174>
1a0019ba:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a0019bc:	687a      	ldr	r2, [r7, #4]
1a0019be:	1ad3      	subs	r3, r2, r3
1a0019c0:	4618      	mov	r0, r3
1a0019c2:	f7ff fedb 	bl	1a00177c <ABS>
1a0019c6:	4603      	mov	r3, r0
1a0019c8:	673b      	str	r3, [r7, #112]	; 0x70
1a0019ca:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0019cc:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a0019ce:	429a      	cmp	r2, r3
1a0019d0:	dc19      	bgt.n	1a001a06 <pll_get_frac+0x142>
1a0019d2:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0019d4:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0019d6:	429a      	cmp	r2, r3
1a0019d8:	dc0a      	bgt.n	1a0019f0 <pll_get_frac+0x12c>
1a0019da:	683b      	ldr	r3, [r7, #0]
1a0019dc:	461d      	mov	r5, r3
1a0019de:	f107 040c 	add.w	r4, r7, #12
1a0019e2:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0019e4:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0019e6:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0019ea:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0019ee:	e023      	b.n	1a001a38 <pll_get_frac+0x174>
1a0019f0:	683b      	ldr	r3, [r7, #0]
1a0019f2:	461d      	mov	r5, r3
1a0019f4:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0019f8:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0019fa:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0019fc:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001a00:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001a04:	e018      	b.n	1a001a38 <pll_get_frac+0x174>
1a001a06:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001a08:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001a0a:	429a      	cmp	r2, r3
1a001a0c:	dc0a      	bgt.n	1a001a24 <pll_get_frac+0x160>
1a001a0e:	683b      	ldr	r3, [r7, #0]
1a001a10:	461d      	mov	r5, r3
1a001a12:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001a16:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001a18:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001a1a:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001a1e:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001a22:	e009      	b.n	1a001a38 <pll_get_frac+0x174>
1a001a24:	683b      	ldr	r3, [r7, #0]
1a001a26:	461d      	mov	r5, r3
1a001a28:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001a2c:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001a2e:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001a30:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001a34:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001a38:	3778      	adds	r7, #120	; 0x78
1a001a3a:	46bd      	mov	sp, r7
1a001a3c:	bdb0      	pop	{r4, r5, r7, pc}
1a001a3e:	bf00      	nop
1a001a40:	068e7780 	.word	0x068e7780

1a001a44 <Chip_Clock_GetDivRate>:
1a001a44:	b580      	push	{r7, lr}
1a001a46:	b084      	sub	sp, #16
1a001a48:	af00      	add	r7, sp, #0
1a001a4a:	4603      	mov	r3, r0
1a001a4c:	460a      	mov	r2, r1
1a001a4e:	71fb      	strb	r3, [r7, #7]
1a001a50:	4613      	mov	r3, r2
1a001a52:	71bb      	strb	r3, [r7, #6]
1a001a54:	79bb      	ldrb	r3, [r7, #6]
1a001a56:	4618      	mov	r0, r3
1a001a58:	f000 f960 	bl	1a001d1c <Chip_Clock_GetDividerSource>
1a001a5c:	4603      	mov	r3, r0
1a001a5e:	73fb      	strb	r3, [r7, #15]
1a001a60:	79bb      	ldrb	r3, [r7, #6]
1a001a62:	4618      	mov	r0, r3
1a001a64:	f000 f97a 	bl	1a001d5c <Chip_Clock_GetDividerDivisor>
1a001a68:	60b8      	str	r0, [r7, #8]
1a001a6a:	7bfb      	ldrb	r3, [r7, #15]
1a001a6c:	4618      	mov	r0, r3
1a001a6e:	f000 f991 	bl	1a001d94 <Chip_Clock_GetClockInputHz>
1a001a72:	4602      	mov	r2, r0
1a001a74:	68bb      	ldr	r3, [r7, #8]
1a001a76:	3301      	adds	r3, #1
1a001a78:	fbb2 f3f3 	udiv	r3, r2, r3
1a001a7c:	4618      	mov	r0, r3
1a001a7e:	3710      	adds	r7, #16
1a001a80:	46bd      	mov	sp, r7
1a001a82:	bd80      	pop	{r7, pc}

1a001a84 <Chip_Clock_FindBaseClock>:
1a001a84:	b480      	push	{r7}
1a001a86:	b085      	sub	sp, #20
1a001a88:	af00      	add	r7, sp, #0
1a001a8a:	4603      	mov	r3, r0
1a001a8c:	80fb      	strh	r3, [r7, #6]
1a001a8e:	231c      	movs	r3, #28
1a001a90:	73fb      	strb	r3, [r7, #15]
1a001a92:	2300      	movs	r3, #0
1a001a94:	60bb      	str	r3, [r7, #8]
1a001a96:	e024      	b.n	1a001ae2 <Chip_Clock_FindBaseClock+0x5e>
1a001a98:	491d      	ldr	r1, [pc, #116]	; (1a001b10 <Chip_Clock_FindBaseClock+0x8c>)
1a001a9a:	68ba      	ldr	r2, [r7, #8]
1a001a9c:	4613      	mov	r3, r2
1a001a9e:	005b      	lsls	r3, r3, #1
1a001aa0:	4413      	add	r3, r2
1a001aa2:	005b      	lsls	r3, r3, #1
1a001aa4:	440b      	add	r3, r1
1a001aa6:	881b      	ldrh	r3, [r3, #0]
1a001aa8:	88fa      	ldrh	r2, [r7, #6]
1a001aaa:	429a      	cmp	r2, r3
1a001aac:	d316      	bcc.n	1a001adc <Chip_Clock_FindBaseClock+0x58>
1a001aae:	4918      	ldr	r1, [pc, #96]	; (1a001b10 <Chip_Clock_FindBaseClock+0x8c>)
1a001ab0:	68ba      	ldr	r2, [r7, #8]
1a001ab2:	4613      	mov	r3, r2
1a001ab4:	005b      	lsls	r3, r3, #1
1a001ab6:	4413      	add	r3, r2
1a001ab8:	005b      	lsls	r3, r3, #1
1a001aba:	440b      	add	r3, r1
1a001abc:	3302      	adds	r3, #2
1a001abe:	881b      	ldrh	r3, [r3, #0]
1a001ac0:	88fa      	ldrh	r2, [r7, #6]
1a001ac2:	429a      	cmp	r2, r3
1a001ac4:	d80a      	bhi.n	1a001adc <Chip_Clock_FindBaseClock+0x58>
1a001ac6:	4912      	ldr	r1, [pc, #72]	; (1a001b10 <Chip_Clock_FindBaseClock+0x8c>)
1a001ac8:	68ba      	ldr	r2, [r7, #8]
1a001aca:	4613      	mov	r3, r2
1a001acc:	005b      	lsls	r3, r3, #1
1a001ace:	4413      	add	r3, r2
1a001ad0:	005b      	lsls	r3, r3, #1
1a001ad2:	440b      	add	r3, r1
1a001ad4:	3304      	adds	r3, #4
1a001ad6:	781b      	ldrb	r3, [r3, #0]
1a001ad8:	73fb      	strb	r3, [r7, #15]
1a001ada:	e002      	b.n	1a001ae2 <Chip_Clock_FindBaseClock+0x5e>
1a001adc:	68bb      	ldr	r3, [r7, #8]
1a001ade:	3301      	adds	r3, #1
1a001ae0:	60bb      	str	r3, [r7, #8]
1a001ae2:	7bfb      	ldrb	r3, [r7, #15]
1a001ae4:	2b1c      	cmp	r3, #28
1a001ae6:	d10b      	bne.n	1a001b00 <Chip_Clock_FindBaseClock+0x7c>
1a001ae8:	4909      	ldr	r1, [pc, #36]	; (1a001b10 <Chip_Clock_FindBaseClock+0x8c>)
1a001aea:	68ba      	ldr	r2, [r7, #8]
1a001aec:	4613      	mov	r3, r2
1a001aee:	005b      	lsls	r3, r3, #1
1a001af0:	4413      	add	r3, r2
1a001af2:	005b      	lsls	r3, r3, #1
1a001af4:	440b      	add	r3, r1
1a001af6:	3304      	adds	r3, #4
1a001af8:	781b      	ldrb	r3, [r3, #0]
1a001afa:	7bfa      	ldrb	r2, [r7, #15]
1a001afc:	429a      	cmp	r2, r3
1a001afe:	d1cb      	bne.n	1a001a98 <Chip_Clock_FindBaseClock+0x14>
1a001b00:	7bfb      	ldrb	r3, [r7, #15]
1a001b02:	4618      	mov	r0, r3
1a001b04:	3714      	adds	r7, #20
1a001b06:	46bd      	mov	sp, r7
1a001b08:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b0c:	4770      	bx	lr
1a001b0e:	bf00      	nop
1a001b10:	1a00270c 	.word	0x1a00270c

1a001b14 <Chip_Clock_EnableCrystal>:
1a001b14:	b480      	push	{r7}
1a001b16:	b083      	sub	sp, #12
1a001b18:	af00      	add	r7, sp, #0
1a001b1a:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001b1e:	603b      	str	r3, [r7, #0]
1a001b20:	4b15      	ldr	r3, [pc, #84]	; (1a001b78 <Chip_Clock_EnableCrystal+0x64>)
1a001b22:	699b      	ldr	r3, [r3, #24]
1a001b24:	607b      	str	r3, [r7, #4]
1a001b26:	687b      	ldr	r3, [r7, #4]
1a001b28:	f023 0302 	bic.w	r3, r3, #2
1a001b2c:	607b      	str	r3, [r7, #4]
1a001b2e:	4b12      	ldr	r3, [pc, #72]	; (1a001b78 <Chip_Clock_EnableCrystal+0x64>)
1a001b30:	699b      	ldr	r3, [r3, #24]
1a001b32:	687a      	ldr	r2, [r7, #4]
1a001b34:	429a      	cmp	r2, r3
1a001b36:	d002      	beq.n	1a001b3e <Chip_Clock_EnableCrystal+0x2a>
1a001b38:	4a0f      	ldr	r2, [pc, #60]	; (1a001b78 <Chip_Clock_EnableCrystal+0x64>)
1a001b3a:	687b      	ldr	r3, [r7, #4]
1a001b3c:	6193      	str	r3, [r2, #24]
1a001b3e:	687b      	ldr	r3, [r7, #4]
1a001b40:	f023 0301 	bic.w	r3, r3, #1
1a001b44:	607b      	str	r3, [r7, #4]
1a001b46:	4b0d      	ldr	r3, [pc, #52]	; (1a001b7c <Chip_Clock_EnableCrystal+0x68>)
1a001b48:	681b      	ldr	r3, [r3, #0]
1a001b4a:	4a0d      	ldr	r2, [pc, #52]	; (1a001b80 <Chip_Clock_EnableCrystal+0x6c>)
1a001b4c:	4293      	cmp	r3, r2
1a001b4e:	d903      	bls.n	1a001b58 <Chip_Clock_EnableCrystal+0x44>
1a001b50:	687b      	ldr	r3, [r7, #4]
1a001b52:	f043 0304 	orr.w	r3, r3, #4
1a001b56:	607b      	str	r3, [r7, #4]
1a001b58:	4a07      	ldr	r2, [pc, #28]	; (1a001b78 <Chip_Clock_EnableCrystal+0x64>)
1a001b5a:	687b      	ldr	r3, [r7, #4]
1a001b5c:	6193      	str	r3, [r2, #24]
1a001b5e:	bf00      	nop
1a001b60:	683b      	ldr	r3, [r7, #0]
1a001b62:	1e5a      	subs	r2, r3, #1
1a001b64:	603a      	str	r2, [r7, #0]
1a001b66:	2b00      	cmp	r3, #0
1a001b68:	d1fa      	bne.n	1a001b60 <Chip_Clock_EnableCrystal+0x4c>
1a001b6a:	bf00      	nop
1a001b6c:	370c      	adds	r7, #12
1a001b6e:	46bd      	mov	sp, r7
1a001b70:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b74:	4770      	bx	lr
1a001b76:	bf00      	nop
1a001b78:	40050000 	.word	0x40050000
1a001b7c:	1a0022e0 	.word	0x1a0022e0
1a001b80:	01312cff 	.word	0x01312cff

1a001b84 <Chip_Clock_CalcMainPLLValue>:
1a001b84:	b580      	push	{r7, lr}
1a001b86:	b082      	sub	sp, #8
1a001b88:	af00      	add	r7, sp, #0
1a001b8a:	6078      	str	r0, [r7, #4]
1a001b8c:	6039      	str	r1, [r7, #0]
1a001b8e:	683b      	ldr	r3, [r7, #0]
1a001b90:	791b      	ldrb	r3, [r3, #4]
1a001b92:	4618      	mov	r0, r3
1a001b94:	f000 f8fe 	bl	1a001d94 <Chip_Clock_GetClockInputHz>
1a001b98:	4602      	mov	r2, r0
1a001b9a:	683b      	ldr	r3, [r7, #0]
1a001b9c:	615a      	str	r2, [r3, #20]
1a001b9e:	687b      	ldr	r3, [r7, #4]
1a001ba0:	4a2b      	ldr	r2, [pc, #172]	; (1a001c50 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a001ba2:	4293      	cmp	r3, r2
1a001ba4:	d807      	bhi.n	1a001bb6 <Chip_Clock_CalcMainPLLValue+0x32>
1a001ba6:	687b      	ldr	r3, [r7, #4]
1a001ba8:	4a2a      	ldr	r2, [pc, #168]	; (1a001c54 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001baa:	4293      	cmp	r3, r2
1a001bac:	d903      	bls.n	1a001bb6 <Chip_Clock_CalcMainPLLValue+0x32>
1a001bae:	683b      	ldr	r3, [r7, #0]
1a001bb0:	695b      	ldr	r3, [r3, #20]
1a001bb2:	2b00      	cmp	r3, #0
1a001bb4:	d102      	bne.n	1a001bbc <Chip_Clock_CalcMainPLLValue+0x38>
1a001bb6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001bba:	e044      	b.n	1a001c46 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001bbc:	683b      	ldr	r3, [r7, #0]
1a001bbe:	2280      	movs	r2, #128	; 0x80
1a001bc0:	601a      	str	r2, [r3, #0]
1a001bc2:	683b      	ldr	r3, [r7, #0]
1a001bc4:	2200      	movs	r2, #0
1a001bc6:	609a      	str	r2, [r3, #8]
1a001bc8:	683b      	ldr	r3, [r7, #0]
1a001bca:	2200      	movs	r2, #0
1a001bcc:	60da      	str	r2, [r3, #12]
1a001bce:	683b      	ldr	r3, [r7, #0]
1a001bd0:	695b      	ldr	r3, [r3, #20]
1a001bd2:	687a      	ldr	r2, [r7, #4]
1a001bd4:	fbb2 f3f3 	udiv	r3, r2, r3
1a001bd8:	461a      	mov	r2, r3
1a001bda:	683b      	ldr	r3, [r7, #0]
1a001bdc:	611a      	str	r2, [r3, #16]
1a001bde:	687b      	ldr	r3, [r7, #4]
1a001be0:	4a1d      	ldr	r2, [pc, #116]	; (1a001c58 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a001be2:	4293      	cmp	r3, r2
1a001be4:	d909      	bls.n	1a001bfa <Chip_Clock_CalcMainPLLValue+0x76>
1a001be6:	683b      	ldr	r3, [r7, #0]
1a001be8:	691b      	ldr	r3, [r3, #16]
1a001bea:	461a      	mov	r2, r3
1a001bec:	683b      	ldr	r3, [r7, #0]
1a001bee:	695b      	ldr	r3, [r3, #20]
1a001bf0:	fb03 f302 	mul.w	r3, r3, r2
1a001bf4:	687a      	ldr	r2, [r7, #4]
1a001bf6:	429a      	cmp	r2, r3
1a001bf8:	d00f      	beq.n	1a001c1a <Chip_Clock_CalcMainPLLValue+0x96>
1a001bfa:	6839      	ldr	r1, [r7, #0]
1a001bfc:	6878      	ldr	r0, [r7, #4]
1a001bfe:	f7ff fe61 	bl	1a0018c4 <pll_get_frac>
1a001c02:	683b      	ldr	r3, [r7, #0]
1a001c04:	689b      	ldr	r3, [r3, #8]
1a001c06:	2b00      	cmp	r3, #0
1a001c08:	d102      	bne.n	1a001c10 <Chip_Clock_CalcMainPLLValue+0x8c>
1a001c0a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001c0e:	e01a      	b.n	1a001c46 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001c10:	683b      	ldr	r3, [r7, #0]
1a001c12:	689b      	ldr	r3, [r3, #8]
1a001c14:	1e5a      	subs	r2, r3, #1
1a001c16:	683b      	ldr	r3, [r7, #0]
1a001c18:	609a      	str	r2, [r3, #8]
1a001c1a:	683b      	ldr	r3, [r7, #0]
1a001c1c:	691b      	ldr	r3, [r3, #16]
1a001c1e:	2b00      	cmp	r3, #0
1a001c20:	d102      	bne.n	1a001c28 <Chip_Clock_CalcMainPLLValue+0xa4>
1a001c22:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001c26:	e00e      	b.n	1a001c46 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001c28:	683b      	ldr	r3, [r7, #0]
1a001c2a:	68db      	ldr	r3, [r3, #12]
1a001c2c:	2b00      	cmp	r3, #0
1a001c2e:	d004      	beq.n	1a001c3a <Chip_Clock_CalcMainPLLValue+0xb6>
1a001c30:	683b      	ldr	r3, [r7, #0]
1a001c32:	68db      	ldr	r3, [r3, #12]
1a001c34:	1e5a      	subs	r2, r3, #1
1a001c36:	683b      	ldr	r3, [r7, #0]
1a001c38:	60da      	str	r2, [r3, #12]
1a001c3a:	683b      	ldr	r3, [r7, #0]
1a001c3c:	691b      	ldr	r3, [r3, #16]
1a001c3e:	1e5a      	subs	r2, r3, #1
1a001c40:	683b      	ldr	r3, [r7, #0]
1a001c42:	611a      	str	r2, [r3, #16]
1a001c44:	2300      	movs	r3, #0
1a001c46:	4618      	mov	r0, r3
1a001c48:	3708      	adds	r7, #8
1a001c4a:	46bd      	mov	sp, r7
1a001c4c:	bd80      	pop	{r7, pc}
1a001c4e:	bf00      	nop
1a001c50:	0c28cb00 	.word	0x0c28cb00
1a001c54:	0094c5ef 	.word	0x0094c5ef
1a001c58:	094c5eff 	.word	0x094c5eff

1a001c5c <Chip_Clock_GetMainPLLHz>:
1a001c5c:	b580      	push	{r7, lr}
1a001c5e:	b08c      	sub	sp, #48	; 0x30
1a001c60:	af00      	add	r7, sp, #0
1a001c62:	4b2c      	ldr	r3, [pc, #176]	; (1a001d14 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001c64:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001c66:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001c68:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001c6a:	0e1b      	lsrs	r3, r3, #24
1a001c6c:	b2db      	uxtb	r3, r3
1a001c6e:	f003 030f 	and.w	r3, r3, #15
1a001c72:	b2db      	uxtb	r3, r3
1a001c74:	4618      	mov	r0, r3
1a001c76:	f000 f88d 	bl	1a001d94 <Chip_Clock_GetClockInputHz>
1a001c7a:	62b8      	str	r0, [r7, #40]	; 0x28
1a001c7c:	4b26      	ldr	r3, [pc, #152]	; (1a001d18 <Chip_Clock_GetMainPLLHz+0xbc>)
1a001c7e:	681b      	ldr	r3, [r3, #0]
1a001c80:	607b      	str	r3, [r7, #4]
1a001c82:	4b24      	ldr	r3, [pc, #144]	; (1a001d14 <Chip_Clock_GetMainPLLHz+0xb8>)
1a001c84:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001c86:	f003 0301 	and.w	r3, r3, #1
1a001c8a:	2b00      	cmp	r3, #0
1a001c8c:	d101      	bne.n	1a001c92 <Chip_Clock_GetMainPLLHz+0x36>
1a001c8e:	2300      	movs	r3, #0
1a001c90:	e03b      	b.n	1a001d0a <Chip_Clock_GetMainPLLHz+0xae>
1a001c92:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001c94:	0c1b      	lsrs	r3, r3, #16
1a001c96:	b2db      	uxtb	r3, r3
1a001c98:	627b      	str	r3, [r7, #36]	; 0x24
1a001c9a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001c9c:	0b1b      	lsrs	r3, r3, #12
1a001c9e:	f003 0303 	and.w	r3, r3, #3
1a001ca2:	623b      	str	r3, [r7, #32]
1a001ca4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001ca6:	0a1b      	lsrs	r3, r3, #8
1a001ca8:	f003 0303 	and.w	r3, r3, #3
1a001cac:	61fb      	str	r3, [r7, #28]
1a001cae:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001cb0:	09db      	lsrs	r3, r3, #7
1a001cb2:	f003 0301 	and.w	r3, r3, #1
1a001cb6:	61bb      	str	r3, [r7, #24]
1a001cb8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001cba:	099b      	lsrs	r3, r3, #6
1a001cbc:	f003 0301 	and.w	r3, r3, #1
1a001cc0:	617b      	str	r3, [r7, #20]
1a001cc2:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001cc4:	3301      	adds	r3, #1
1a001cc6:	613b      	str	r3, [r7, #16]
1a001cc8:	6a3b      	ldr	r3, [r7, #32]
1a001cca:	3301      	adds	r3, #1
1a001ccc:	60fb      	str	r3, [r7, #12]
1a001cce:	1d3a      	adds	r2, r7, #4
1a001cd0:	69fb      	ldr	r3, [r7, #28]
1a001cd2:	4413      	add	r3, r2
1a001cd4:	781b      	ldrb	r3, [r3, #0]
1a001cd6:	60bb      	str	r3, [r7, #8]
1a001cd8:	69bb      	ldr	r3, [r7, #24]
1a001cda:	2b00      	cmp	r3, #0
1a001cdc:	d102      	bne.n	1a001ce4 <Chip_Clock_GetMainPLLHz+0x88>
1a001cde:	697b      	ldr	r3, [r7, #20]
1a001ce0:	2b00      	cmp	r3, #0
1a001ce2:	d007      	beq.n	1a001cf4 <Chip_Clock_GetMainPLLHz+0x98>
1a001ce4:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a001ce6:	68fb      	ldr	r3, [r7, #12]
1a001ce8:	fbb2 f3f3 	udiv	r3, r2, r3
1a001cec:	693a      	ldr	r2, [r7, #16]
1a001cee:	fb02 f303 	mul.w	r3, r2, r3
1a001cf2:	e00a      	b.n	1a001d0a <Chip_Clock_GetMainPLLHz+0xae>
1a001cf4:	68bb      	ldr	r3, [r7, #8]
1a001cf6:	005b      	lsls	r3, r3, #1
1a001cf8:	693a      	ldr	r2, [r7, #16]
1a001cfa:	fbb2 f3f3 	udiv	r3, r2, r3
1a001cfe:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a001d00:	68fa      	ldr	r2, [r7, #12]
1a001d02:	fbb1 f2f2 	udiv	r2, r1, r2
1a001d06:	fb02 f303 	mul.w	r3, r2, r3
1a001d0a:	4618      	mov	r0, r3
1a001d0c:	3730      	adds	r7, #48	; 0x30
1a001d0e:	46bd      	mov	sp, r7
1a001d10:	bd80      	pop	{r7, pc}
1a001d12:	bf00      	nop
1a001d14:	40050000 	.word	0x40050000
1a001d18:	1a002778 	.word	0x1a002778

1a001d1c <Chip_Clock_GetDividerSource>:
1a001d1c:	b480      	push	{r7}
1a001d1e:	b085      	sub	sp, #20
1a001d20:	af00      	add	r7, sp, #0
1a001d22:	4603      	mov	r3, r0
1a001d24:	71fb      	strb	r3, [r7, #7]
1a001d26:	4a0c      	ldr	r2, [pc, #48]	; (1a001d58 <Chip_Clock_GetDividerSource+0x3c>)
1a001d28:	79fb      	ldrb	r3, [r7, #7]
1a001d2a:	3312      	adds	r3, #18
1a001d2c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001d30:	60fb      	str	r3, [r7, #12]
1a001d32:	68fb      	ldr	r3, [r7, #12]
1a001d34:	f003 0301 	and.w	r3, r3, #1
1a001d38:	2b00      	cmp	r3, #0
1a001d3a:	d001      	beq.n	1a001d40 <Chip_Clock_GetDividerSource+0x24>
1a001d3c:	2311      	movs	r3, #17
1a001d3e:	e005      	b.n	1a001d4c <Chip_Clock_GetDividerSource+0x30>
1a001d40:	68fb      	ldr	r3, [r7, #12]
1a001d42:	0e1b      	lsrs	r3, r3, #24
1a001d44:	b2db      	uxtb	r3, r3
1a001d46:	f003 031f 	and.w	r3, r3, #31
1a001d4a:	b2db      	uxtb	r3, r3
1a001d4c:	4618      	mov	r0, r3
1a001d4e:	3714      	adds	r7, #20
1a001d50:	46bd      	mov	sp, r7
1a001d52:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001d56:	4770      	bx	lr
1a001d58:	40050000 	.word	0x40050000

1a001d5c <Chip_Clock_GetDividerDivisor>:
1a001d5c:	b480      	push	{r7}
1a001d5e:	b083      	sub	sp, #12
1a001d60:	af00      	add	r7, sp, #0
1a001d62:	4603      	mov	r3, r0
1a001d64:	71fb      	strb	r3, [r7, #7]
1a001d66:	4a09      	ldr	r2, [pc, #36]	; (1a001d8c <Chip_Clock_GetDividerDivisor+0x30>)
1a001d68:	79fb      	ldrb	r3, [r7, #7]
1a001d6a:	3312      	adds	r3, #18
1a001d6c:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001d70:	089b      	lsrs	r3, r3, #2
1a001d72:	b2da      	uxtb	r2, r3
1a001d74:	79fb      	ldrb	r3, [r7, #7]
1a001d76:	4906      	ldr	r1, [pc, #24]	; (1a001d90 <Chip_Clock_GetDividerDivisor+0x34>)
1a001d78:	5ccb      	ldrb	r3, [r1, r3]
1a001d7a:	4013      	ands	r3, r2
1a001d7c:	b2db      	uxtb	r3, r3
1a001d7e:	4618      	mov	r0, r3
1a001d80:	370c      	adds	r7, #12
1a001d82:	46bd      	mov	sp, r7
1a001d84:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001d88:	4770      	bx	lr
1a001d8a:	bf00      	nop
1a001d8c:	40050000 	.word	0x40050000
1a001d90:	1a00277c 	.word	0x1a00277c

1a001d94 <Chip_Clock_GetClockInputHz>:
1a001d94:	b580      	push	{r7, lr}
1a001d96:	b084      	sub	sp, #16
1a001d98:	af00      	add	r7, sp, #0
1a001d9a:	4603      	mov	r3, r0
1a001d9c:	71fb      	strb	r3, [r7, #7]
1a001d9e:	2300      	movs	r3, #0
1a001da0:	60fb      	str	r3, [r7, #12]
1a001da2:	79fb      	ldrb	r3, [r7, #7]
1a001da4:	2b11      	cmp	r3, #17
1a001da6:	d87f      	bhi.n	1a001ea8 <Chip_Clock_GetClockInputHz+0x114>
1a001da8:	a201      	add	r2, pc, #4	; (adr r2, 1a001db0 <Chip_Clock_GetClockInputHz+0x1c>)
1a001daa:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001dae:	bf00      	nop
1a001db0:	1a001df9 	.word	0x1a001df9
1a001db4:	1a001e01 	.word	0x1a001e01
1a001db8:	1a001e07 	.word	0x1a001e07
1a001dbc:	1a001e1b 	.word	0x1a001e1b
1a001dc0:	1a001e35 	.word	0x1a001e35
1a001dc4:	1a001ea9 	.word	0x1a001ea9
1a001dc8:	1a001e3d 	.word	0x1a001e3d
1a001dcc:	1a001e45 	.word	0x1a001e45
1a001dd0:	1a001e4d 	.word	0x1a001e4d
1a001dd4:	1a001e55 	.word	0x1a001e55
1a001dd8:	1a001ea9 	.word	0x1a001ea9
1a001ddc:	1a001ea9 	.word	0x1a001ea9
1a001de0:	1a001e5d 	.word	0x1a001e5d
1a001de4:	1a001e6b 	.word	0x1a001e6b
1a001de8:	1a001e79 	.word	0x1a001e79
1a001dec:	1a001e87 	.word	0x1a001e87
1a001df0:	1a001e95 	.word	0x1a001e95
1a001df4:	1a001ea3 	.word	0x1a001ea3
1a001df8:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a001dfc:	60fb      	str	r3, [r7, #12]
1a001dfe:	e056      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e00:	4b2d      	ldr	r3, [pc, #180]	; (1a001eb8 <Chip_Clock_GetClockInputHz+0x124>)
1a001e02:	60fb      	str	r3, [r7, #12]
1a001e04:	e053      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e06:	4b2d      	ldr	r3, [pc, #180]	; (1a001ebc <Chip_Clock_GetClockInputHz+0x128>)
1a001e08:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001e0c:	f003 0307 	and.w	r3, r3, #7
1a001e10:	2b04      	cmp	r3, #4
1a001e12:	d04b      	beq.n	1a001eac <Chip_Clock_GetClockInputHz+0x118>
1a001e14:	4b2a      	ldr	r3, [pc, #168]	; (1a001ec0 <Chip_Clock_GetClockInputHz+0x12c>)
1a001e16:	60fb      	str	r3, [r7, #12]
1a001e18:	e048      	b.n	1a001eac <Chip_Clock_GetClockInputHz+0x118>
1a001e1a:	4b28      	ldr	r3, [pc, #160]	; (1a001ebc <Chip_Clock_GetClockInputHz+0x128>)
1a001e1c:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a001e20:	f003 0307 	and.w	r3, r3, #7
1a001e24:	2b04      	cmp	r3, #4
1a001e26:	d002      	beq.n	1a001e2e <Chip_Clock_GetClockInputHz+0x9a>
1a001e28:	4b25      	ldr	r3, [pc, #148]	; (1a001ec0 <Chip_Clock_GetClockInputHz+0x12c>)
1a001e2a:	60fb      	str	r3, [r7, #12]
1a001e2c:	e03f      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e2e:	4b25      	ldr	r3, [pc, #148]	; (1a001ec4 <Chip_Clock_GetClockInputHz+0x130>)
1a001e30:	60fb      	str	r3, [r7, #12]
1a001e32:	e03c      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e34:	4b24      	ldr	r3, [pc, #144]	; (1a001ec8 <Chip_Clock_GetClockInputHz+0x134>)
1a001e36:	681b      	ldr	r3, [r3, #0]
1a001e38:	60fb      	str	r3, [r7, #12]
1a001e3a:	e038      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e3c:	4b23      	ldr	r3, [pc, #140]	; (1a001ecc <Chip_Clock_GetClockInputHz+0x138>)
1a001e3e:	681b      	ldr	r3, [r3, #0]
1a001e40:	60fb      	str	r3, [r7, #12]
1a001e42:	e034      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e44:	4b22      	ldr	r3, [pc, #136]	; (1a001ed0 <Chip_Clock_GetClockInputHz+0x13c>)
1a001e46:	681b      	ldr	r3, [r3, #0]
1a001e48:	60fb      	str	r3, [r7, #12]
1a001e4a:	e030      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e4c:	4b20      	ldr	r3, [pc, #128]	; (1a001ed0 <Chip_Clock_GetClockInputHz+0x13c>)
1a001e4e:	685b      	ldr	r3, [r3, #4]
1a001e50:	60fb      	str	r3, [r7, #12]
1a001e52:	e02c      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e54:	f7ff ff02 	bl	1a001c5c <Chip_Clock_GetMainPLLHz>
1a001e58:	60f8      	str	r0, [r7, #12]
1a001e5a:	e028      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e5c:	79fb      	ldrb	r3, [r7, #7]
1a001e5e:	2100      	movs	r1, #0
1a001e60:	4618      	mov	r0, r3
1a001e62:	f7ff fdef 	bl	1a001a44 <Chip_Clock_GetDivRate>
1a001e66:	60f8      	str	r0, [r7, #12]
1a001e68:	e021      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e6a:	79fb      	ldrb	r3, [r7, #7]
1a001e6c:	2101      	movs	r1, #1
1a001e6e:	4618      	mov	r0, r3
1a001e70:	f7ff fde8 	bl	1a001a44 <Chip_Clock_GetDivRate>
1a001e74:	60f8      	str	r0, [r7, #12]
1a001e76:	e01a      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e78:	79fb      	ldrb	r3, [r7, #7]
1a001e7a:	2102      	movs	r1, #2
1a001e7c:	4618      	mov	r0, r3
1a001e7e:	f7ff fde1 	bl	1a001a44 <Chip_Clock_GetDivRate>
1a001e82:	60f8      	str	r0, [r7, #12]
1a001e84:	e013      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e86:	79fb      	ldrb	r3, [r7, #7]
1a001e88:	2103      	movs	r1, #3
1a001e8a:	4618      	mov	r0, r3
1a001e8c:	f7ff fdda 	bl	1a001a44 <Chip_Clock_GetDivRate>
1a001e90:	60f8      	str	r0, [r7, #12]
1a001e92:	e00c      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001e94:	79fb      	ldrb	r3, [r7, #7]
1a001e96:	2104      	movs	r1, #4
1a001e98:	4618      	mov	r0, r3
1a001e9a:	f7ff fdd3 	bl	1a001a44 <Chip_Clock_GetDivRate>
1a001e9e:	60f8      	str	r0, [r7, #12]
1a001ea0:	e005      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001ea2:	2300      	movs	r3, #0
1a001ea4:	60fb      	str	r3, [r7, #12]
1a001ea6:	e002      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001ea8:	bf00      	nop
1a001eaa:	e000      	b.n	1a001eae <Chip_Clock_GetClockInputHz+0x11a>
1a001eac:	bf00      	nop
1a001eae:	68fb      	ldr	r3, [r7, #12]
1a001eb0:	4618      	mov	r0, r3
1a001eb2:	3710      	adds	r7, #16
1a001eb4:	46bd      	mov	sp, r7
1a001eb6:	bd80      	pop	{r7, pc}
1a001eb8:	00b71b00 	.word	0x00b71b00
1a001ebc:	40043000 	.word	0x40043000
1a001ec0:	017d7840 	.word	0x017d7840
1a001ec4:	02faf080 	.word	0x02faf080
1a001ec8:	1a0022dc 	.word	0x1a0022dc
1a001ecc:	1a0022e0 	.word	0x1a0022e0
1a001ed0:	10000014 	.word	0x10000014

1a001ed4 <Chip_Clock_GetBaseClocktHz>:
1a001ed4:	b580      	push	{r7, lr}
1a001ed6:	b082      	sub	sp, #8
1a001ed8:	af00      	add	r7, sp, #0
1a001eda:	4603      	mov	r3, r0
1a001edc:	71fb      	strb	r3, [r7, #7]
1a001ede:	79fb      	ldrb	r3, [r7, #7]
1a001ee0:	4618      	mov	r0, r3
1a001ee2:	f000 f857 	bl	1a001f94 <Chip_Clock_GetBaseClock>
1a001ee6:	4603      	mov	r3, r0
1a001ee8:	4618      	mov	r0, r3
1a001eea:	f7ff ff53 	bl	1a001d94 <Chip_Clock_GetClockInputHz>
1a001eee:	4603      	mov	r3, r0
1a001ef0:	4618      	mov	r0, r3
1a001ef2:	3708      	adds	r7, #8
1a001ef4:	46bd      	mov	sp, r7
1a001ef6:	bd80      	pop	{r7, pc}

1a001ef8 <Chip_Clock_SetBaseClock>:
1a001ef8:	b490      	push	{r4, r7}
1a001efa:	b084      	sub	sp, #16
1a001efc:	af00      	add	r7, sp, #0
1a001efe:	4604      	mov	r4, r0
1a001f00:	4608      	mov	r0, r1
1a001f02:	4611      	mov	r1, r2
1a001f04:	461a      	mov	r2, r3
1a001f06:	4623      	mov	r3, r4
1a001f08:	71fb      	strb	r3, [r7, #7]
1a001f0a:	4603      	mov	r3, r0
1a001f0c:	71bb      	strb	r3, [r7, #6]
1a001f0e:	460b      	mov	r3, r1
1a001f10:	717b      	strb	r3, [r7, #5]
1a001f12:	4613      	mov	r3, r2
1a001f14:	713b      	strb	r3, [r7, #4]
1a001f16:	4a1d      	ldr	r2, [pc, #116]	; (1a001f8c <Chip_Clock_SetBaseClock+0x94>)
1a001f18:	79fb      	ldrb	r3, [r7, #7]
1a001f1a:	3316      	adds	r3, #22
1a001f1c:	009b      	lsls	r3, r3, #2
1a001f1e:	4413      	add	r3, r2
1a001f20:	685b      	ldr	r3, [r3, #4]
1a001f22:	60fb      	str	r3, [r7, #12]
1a001f24:	79fb      	ldrb	r3, [r7, #7]
1a001f26:	2b1b      	cmp	r3, #27
1a001f28:	d822      	bhi.n	1a001f70 <Chip_Clock_SetBaseClock+0x78>
1a001f2a:	79bb      	ldrb	r3, [r7, #6]
1a001f2c:	2b11      	cmp	r3, #17
1a001f2e:	d028      	beq.n	1a001f82 <Chip_Clock_SetBaseClock+0x8a>
1a001f30:	68fa      	ldr	r2, [r7, #12]
1a001f32:	4b17      	ldr	r3, [pc, #92]	; (1a001f90 <Chip_Clock_SetBaseClock+0x98>)
1a001f34:	4013      	ands	r3, r2
1a001f36:	60fb      	str	r3, [r7, #12]
1a001f38:	797b      	ldrb	r3, [r7, #5]
1a001f3a:	2b00      	cmp	r3, #0
1a001f3c:	d003      	beq.n	1a001f46 <Chip_Clock_SetBaseClock+0x4e>
1a001f3e:	68fb      	ldr	r3, [r7, #12]
1a001f40:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a001f44:	60fb      	str	r3, [r7, #12]
1a001f46:	793b      	ldrb	r3, [r7, #4]
1a001f48:	2b00      	cmp	r3, #0
1a001f4a:	d003      	beq.n	1a001f54 <Chip_Clock_SetBaseClock+0x5c>
1a001f4c:	68fb      	ldr	r3, [r7, #12]
1a001f4e:	f043 0301 	orr.w	r3, r3, #1
1a001f52:	60fb      	str	r3, [r7, #12]
1a001f54:	79bb      	ldrb	r3, [r7, #6]
1a001f56:	061b      	lsls	r3, r3, #24
1a001f58:	461a      	mov	r2, r3
1a001f5a:	68fb      	ldr	r3, [r7, #12]
1a001f5c:	4313      	orrs	r3, r2
1a001f5e:	60fb      	str	r3, [r7, #12]
1a001f60:	4a0a      	ldr	r2, [pc, #40]	; (1a001f8c <Chip_Clock_SetBaseClock+0x94>)
1a001f62:	79fb      	ldrb	r3, [r7, #7]
1a001f64:	3316      	adds	r3, #22
1a001f66:	009b      	lsls	r3, r3, #2
1a001f68:	4413      	add	r3, r2
1a001f6a:	68fa      	ldr	r2, [r7, #12]
1a001f6c:	605a      	str	r2, [r3, #4]
1a001f6e:	e008      	b.n	1a001f82 <Chip_Clock_SetBaseClock+0x8a>
1a001f70:	4906      	ldr	r1, [pc, #24]	; (1a001f8c <Chip_Clock_SetBaseClock+0x94>)
1a001f72:	79fb      	ldrb	r3, [r7, #7]
1a001f74:	68fa      	ldr	r2, [r7, #12]
1a001f76:	f042 0201 	orr.w	r2, r2, #1
1a001f7a:	3316      	adds	r3, #22
1a001f7c:	009b      	lsls	r3, r3, #2
1a001f7e:	440b      	add	r3, r1
1a001f80:	605a      	str	r2, [r3, #4]
1a001f82:	bf00      	nop
1a001f84:	3710      	adds	r7, #16
1a001f86:	46bd      	mov	sp, r7
1a001f88:	bc90      	pop	{r4, r7}
1a001f8a:	4770      	bx	lr
1a001f8c:	40050000 	.word	0x40050000
1a001f90:	e0fff7fe 	.word	0xe0fff7fe

1a001f94 <Chip_Clock_GetBaseClock>:
1a001f94:	b480      	push	{r7}
1a001f96:	b085      	sub	sp, #20
1a001f98:	af00      	add	r7, sp, #0
1a001f9a:	4603      	mov	r3, r0
1a001f9c:	71fb      	strb	r3, [r7, #7]
1a001f9e:	79fb      	ldrb	r3, [r7, #7]
1a001fa0:	2b1b      	cmp	r3, #27
1a001fa2:	d901      	bls.n	1a001fa8 <Chip_Clock_GetBaseClock+0x14>
1a001fa4:	2311      	movs	r3, #17
1a001fa6:	e013      	b.n	1a001fd0 <Chip_Clock_GetBaseClock+0x3c>
1a001fa8:	4a0c      	ldr	r2, [pc, #48]	; (1a001fdc <Chip_Clock_GetBaseClock+0x48>)
1a001faa:	79fb      	ldrb	r3, [r7, #7]
1a001fac:	3316      	adds	r3, #22
1a001fae:	009b      	lsls	r3, r3, #2
1a001fb0:	4413      	add	r3, r2
1a001fb2:	685b      	ldr	r3, [r3, #4]
1a001fb4:	60fb      	str	r3, [r7, #12]
1a001fb6:	68fb      	ldr	r3, [r7, #12]
1a001fb8:	f003 0301 	and.w	r3, r3, #1
1a001fbc:	2b00      	cmp	r3, #0
1a001fbe:	d001      	beq.n	1a001fc4 <Chip_Clock_GetBaseClock+0x30>
1a001fc0:	2311      	movs	r3, #17
1a001fc2:	e005      	b.n	1a001fd0 <Chip_Clock_GetBaseClock+0x3c>
1a001fc4:	68fb      	ldr	r3, [r7, #12]
1a001fc6:	0e1b      	lsrs	r3, r3, #24
1a001fc8:	b2db      	uxtb	r3, r3
1a001fca:	f003 031f 	and.w	r3, r3, #31
1a001fce:	b2db      	uxtb	r3, r3
1a001fd0:	4618      	mov	r0, r3
1a001fd2:	3714      	adds	r7, #20
1a001fd4:	46bd      	mov	sp, r7
1a001fd6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001fda:	4770      	bx	lr
1a001fdc:	40050000 	.word	0x40050000

1a001fe0 <Chip_Clock_EnableOpts>:
1a001fe0:	b480      	push	{r7}
1a001fe2:	b085      	sub	sp, #20
1a001fe4:	af00      	add	r7, sp, #0
1a001fe6:	603b      	str	r3, [r7, #0]
1a001fe8:	4603      	mov	r3, r0
1a001fea:	80fb      	strh	r3, [r7, #6]
1a001fec:	460b      	mov	r3, r1
1a001fee:	717b      	strb	r3, [r7, #5]
1a001ff0:	4613      	mov	r3, r2
1a001ff2:	713b      	strb	r3, [r7, #4]
1a001ff4:	2301      	movs	r3, #1
1a001ff6:	60fb      	str	r3, [r7, #12]
1a001ff8:	797b      	ldrb	r3, [r7, #5]
1a001ffa:	2b00      	cmp	r3, #0
1a001ffc:	d003      	beq.n	1a002006 <Chip_Clock_EnableOpts+0x26>
1a001ffe:	68fb      	ldr	r3, [r7, #12]
1a002000:	f043 0302 	orr.w	r3, r3, #2
1a002004:	60fb      	str	r3, [r7, #12]
1a002006:	793b      	ldrb	r3, [r7, #4]
1a002008:	2b00      	cmp	r3, #0
1a00200a:	d003      	beq.n	1a002014 <Chip_Clock_EnableOpts+0x34>
1a00200c:	68fb      	ldr	r3, [r7, #12]
1a00200e:	f043 0304 	orr.w	r3, r3, #4
1a002012:	60fb      	str	r3, [r7, #12]
1a002014:	683b      	ldr	r3, [r7, #0]
1a002016:	2b02      	cmp	r3, #2
1a002018:	d103      	bne.n	1a002022 <Chip_Clock_EnableOpts+0x42>
1a00201a:	68fb      	ldr	r3, [r7, #12]
1a00201c:	f043 0320 	orr.w	r3, r3, #32
1a002020:	60fb      	str	r3, [r7, #12]
1a002022:	88fb      	ldrh	r3, [r7, #6]
1a002024:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002028:	d308      	bcc.n	1a00203c <Chip_Clock_EnableOpts+0x5c>
1a00202a:	490a      	ldr	r1, [pc, #40]	; (1a002054 <Chip_Clock_EnableOpts+0x74>)
1a00202c:	88fb      	ldrh	r3, [r7, #6]
1a00202e:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002032:	3320      	adds	r3, #32
1a002034:	68fa      	ldr	r2, [r7, #12]
1a002036:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a00203a:	e005      	b.n	1a002048 <Chip_Clock_EnableOpts+0x68>
1a00203c:	4906      	ldr	r1, [pc, #24]	; (1a002058 <Chip_Clock_EnableOpts+0x78>)
1a00203e:	88fb      	ldrh	r3, [r7, #6]
1a002040:	3320      	adds	r3, #32
1a002042:	68fa      	ldr	r2, [r7, #12]
1a002044:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002048:	bf00      	nop
1a00204a:	3714      	adds	r7, #20
1a00204c:	46bd      	mov	sp, r7
1a00204e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002052:	4770      	bx	lr
1a002054:	40052000 	.word	0x40052000
1a002058:	40051000 	.word	0x40051000

1a00205c <Chip_Clock_Enable>:
1a00205c:	b480      	push	{r7}
1a00205e:	b083      	sub	sp, #12
1a002060:	af00      	add	r7, sp, #0
1a002062:	4603      	mov	r3, r0
1a002064:	80fb      	strh	r3, [r7, #6]
1a002066:	88fb      	ldrh	r3, [r7, #6]
1a002068:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a00206c:	d310      	bcc.n	1a002090 <Chip_Clock_Enable+0x34>
1a00206e:	4a11      	ldr	r2, [pc, #68]	; (1a0020b4 <Chip_Clock_Enable+0x58>)
1a002070:	88fb      	ldrh	r3, [r7, #6]
1a002072:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002076:	3320      	adds	r3, #32
1a002078:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a00207c:	490d      	ldr	r1, [pc, #52]	; (1a0020b4 <Chip_Clock_Enable+0x58>)
1a00207e:	88fb      	ldrh	r3, [r7, #6]
1a002080:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002084:	f042 0201 	orr.w	r2, r2, #1
1a002088:	3320      	adds	r3, #32
1a00208a:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a00208e:	e00b      	b.n	1a0020a8 <Chip_Clock_Enable+0x4c>
1a002090:	4a09      	ldr	r2, [pc, #36]	; (1a0020b8 <Chip_Clock_Enable+0x5c>)
1a002092:	88fb      	ldrh	r3, [r7, #6]
1a002094:	3320      	adds	r3, #32
1a002096:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a00209a:	4907      	ldr	r1, [pc, #28]	; (1a0020b8 <Chip_Clock_Enable+0x5c>)
1a00209c:	88fb      	ldrh	r3, [r7, #6]
1a00209e:	f042 0201 	orr.w	r2, r2, #1
1a0020a2:	3320      	adds	r3, #32
1a0020a4:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0020a8:	bf00      	nop
1a0020aa:	370c      	adds	r7, #12
1a0020ac:	46bd      	mov	sp, r7
1a0020ae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0020b2:	4770      	bx	lr
1a0020b4:	40052000 	.word	0x40052000
1a0020b8:	40051000 	.word	0x40051000

1a0020bc <Chip_Clock_GetRate>:
1a0020bc:	b580      	push	{r7, lr}
1a0020be:	b086      	sub	sp, #24
1a0020c0:	af00      	add	r7, sp, #0
1a0020c2:	4603      	mov	r3, r0
1a0020c4:	80fb      	strh	r3, [r7, #6]
1a0020c6:	88fb      	ldrh	r3, [r7, #6]
1a0020c8:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a0020cc:	d308      	bcc.n	1a0020e0 <Chip_Clock_GetRate+0x24>
1a0020ce:	4a1b      	ldr	r2, [pc, #108]	; (1a00213c <Chip_Clock_GetRate+0x80>)
1a0020d0:	88fb      	ldrh	r3, [r7, #6]
1a0020d2:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0020d6:	3320      	adds	r3, #32
1a0020d8:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a0020dc:	617b      	str	r3, [r7, #20]
1a0020de:	e005      	b.n	1a0020ec <Chip_Clock_GetRate+0x30>
1a0020e0:	4a17      	ldr	r2, [pc, #92]	; (1a002140 <Chip_Clock_GetRate+0x84>)
1a0020e2:	88fb      	ldrh	r3, [r7, #6]
1a0020e4:	3320      	adds	r3, #32
1a0020e6:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a0020ea:	617b      	str	r3, [r7, #20]
1a0020ec:	697b      	ldr	r3, [r7, #20]
1a0020ee:	f003 0301 	and.w	r3, r3, #1
1a0020f2:	2b00      	cmp	r3, #0
1a0020f4:	d01b      	beq.n	1a00212e <Chip_Clock_GetRate+0x72>
1a0020f6:	88fb      	ldrh	r3, [r7, #6]
1a0020f8:	4618      	mov	r0, r3
1a0020fa:	f7ff fcc3 	bl	1a001a84 <Chip_Clock_FindBaseClock>
1a0020fe:	4603      	mov	r3, r0
1a002100:	72fb      	strb	r3, [r7, #11]
1a002102:	7afb      	ldrb	r3, [r7, #11]
1a002104:	4618      	mov	r0, r3
1a002106:	f7ff fee5 	bl	1a001ed4 <Chip_Clock_GetBaseClocktHz>
1a00210a:	60f8      	str	r0, [r7, #12]
1a00210c:	697b      	ldr	r3, [r7, #20]
1a00210e:	095b      	lsrs	r3, r3, #5
1a002110:	f003 0307 	and.w	r3, r3, #7
1a002114:	2b00      	cmp	r3, #0
1a002116:	d102      	bne.n	1a00211e <Chip_Clock_GetRate+0x62>
1a002118:	2301      	movs	r3, #1
1a00211a:	613b      	str	r3, [r7, #16]
1a00211c:	e001      	b.n	1a002122 <Chip_Clock_GetRate+0x66>
1a00211e:	2302      	movs	r3, #2
1a002120:	613b      	str	r3, [r7, #16]
1a002122:	68fa      	ldr	r2, [r7, #12]
1a002124:	693b      	ldr	r3, [r7, #16]
1a002126:	fbb2 f3f3 	udiv	r3, r2, r3
1a00212a:	60fb      	str	r3, [r7, #12]
1a00212c:	e001      	b.n	1a002132 <Chip_Clock_GetRate+0x76>
1a00212e:	2300      	movs	r3, #0
1a002130:	60fb      	str	r3, [r7, #12]
1a002132:	68fb      	ldr	r3, [r7, #12]
1a002134:	4618      	mov	r0, r3
1a002136:	3718      	adds	r7, #24
1a002138:	46bd      	mov	sp, r7
1a00213a:	bd80      	pop	{r7, pc}
1a00213c:	40052000 	.word	0x40052000
1a002140:	40051000 	.word	0x40051000

1a002144 <SystemCoreClockUpdate>:
1a002144:	b580      	push	{r7, lr}
1a002146:	af00      	add	r7, sp, #0
1a002148:	2069      	movs	r0, #105	; 0x69
1a00214a:	f7ff ffb7 	bl	1a0020bc <Chip_Clock_GetRate>
1a00214e:	4602      	mov	r2, r0
1a002150:	4b01      	ldr	r3, [pc, #4]	; (1a002158 <SystemCoreClockUpdate+0x14>)
1a002152:	601a      	str	r2, [r3, #0]
1a002154:	bf00      	nop
1a002156:	bd80      	pop	{r7, pc}
1a002158:	100004ac 	.word	0x100004ac

1a00215c <Chip_GPIO_Init>:
1a00215c:	b480      	push	{r7}
1a00215e:	b083      	sub	sp, #12
1a002160:	af00      	add	r7, sp, #0
1a002162:	6078      	str	r0, [r7, #4]
1a002164:	bf00      	nop
1a002166:	370c      	adds	r7, #12
1a002168:	46bd      	mov	sp, r7
1a00216a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00216e:	4770      	bx	lr

1a002170 <Chip_TIMER_GetClockIndex>:
1a002170:	b480      	push	{r7}
1a002172:	b085      	sub	sp, #20
1a002174:	af00      	add	r7, sp, #0
1a002176:	6078      	str	r0, [r7, #4]
1a002178:	687b      	ldr	r3, [r7, #4]
1a00217a:	4a0e      	ldr	r2, [pc, #56]	; (1a0021b4 <Chip_TIMER_GetClockIndex+0x44>)
1a00217c:	4293      	cmp	r3, r2
1a00217e:	d102      	bne.n	1a002186 <Chip_TIMER_GetClockIndex+0x16>
1a002180:	23a4      	movs	r3, #164	; 0xa4
1a002182:	81fb      	strh	r3, [r7, #14]
1a002184:	e00f      	b.n	1a0021a6 <Chip_TIMER_GetClockIndex+0x36>
1a002186:	687b      	ldr	r3, [r7, #4]
1a002188:	4a0b      	ldr	r2, [pc, #44]	; (1a0021b8 <Chip_TIMER_GetClockIndex+0x48>)
1a00218a:	4293      	cmp	r3, r2
1a00218c:	d102      	bne.n	1a002194 <Chip_TIMER_GetClockIndex+0x24>
1a00218e:	23a3      	movs	r3, #163	; 0xa3
1a002190:	81fb      	strh	r3, [r7, #14]
1a002192:	e008      	b.n	1a0021a6 <Chip_TIMER_GetClockIndex+0x36>
1a002194:	687b      	ldr	r3, [r7, #4]
1a002196:	4a09      	ldr	r2, [pc, #36]	; (1a0021bc <Chip_TIMER_GetClockIndex+0x4c>)
1a002198:	4293      	cmp	r3, r2
1a00219a:	d102      	bne.n	1a0021a2 <Chip_TIMER_GetClockIndex+0x32>
1a00219c:	2385      	movs	r3, #133	; 0x85
1a00219e:	81fb      	strh	r3, [r7, #14]
1a0021a0:	e001      	b.n	1a0021a6 <Chip_TIMER_GetClockIndex+0x36>
1a0021a2:	2384      	movs	r3, #132	; 0x84
1a0021a4:	81fb      	strh	r3, [r7, #14]
1a0021a6:	89fb      	ldrh	r3, [r7, #14]
1a0021a8:	4618      	mov	r0, r3
1a0021aa:	3714      	adds	r7, #20
1a0021ac:	46bd      	mov	sp, r7
1a0021ae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021b2:	4770      	bx	lr
1a0021b4:	400c4000 	.word	0x400c4000
1a0021b8:	400c3000 	.word	0x400c3000
1a0021bc:	40085000 	.word	0x40085000

1a0021c0 <Chip_TIMER_Init>:
1a0021c0:	b580      	push	{r7, lr}
1a0021c2:	b082      	sub	sp, #8
1a0021c4:	af00      	add	r7, sp, #0
1a0021c6:	6078      	str	r0, [r7, #4]
1a0021c8:	6878      	ldr	r0, [r7, #4]
1a0021ca:	f7ff ffd1 	bl	1a002170 <Chip_TIMER_GetClockIndex>
1a0021ce:	4603      	mov	r3, r0
1a0021d0:	4618      	mov	r0, r3
1a0021d2:	f7ff ff43 	bl	1a00205c <Chip_Clock_Enable>
1a0021d6:	bf00      	nop
1a0021d8:	3708      	adds	r7, #8
1a0021da:	46bd      	mov	sp, r7
1a0021dc:	bd80      	pop	{r7, pc}
1a0021de:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0021e2:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0021e6:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0021ea:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0021ee:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0021f2:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0021f6:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0021fa:	ffff ffff 			; <UNDEFINED> instruction: 0xffffffff
1a0021fe:	Address 0x000000001a0021fe is out of bounds.


1a002200 <strlen>:
1a002200:	f890 f000 	pld	[r0]
1a002204:	e96d 4502 	strd	r4, r5, [sp, #-8]!
1a002208:	f020 0107 	bic.w	r1, r0, #7
1a00220c:	f06f 0c00 	mvn.w	ip, #0
1a002210:	f010 0407 	ands.w	r4, r0, #7
1a002214:	f891 f020 	pld	[r1, #32]
1a002218:	f040 8049 	bne.w	1a0022ae <strlen+0xae>
1a00221c:	f04f 0400 	mov.w	r4, #0
1a002220:	f06f 0007 	mvn.w	r0, #7
1a002224:	e9d1 2300 	ldrd	r2, r3, [r1]
1a002228:	f891 f040 	pld	[r1, #64]	; 0x40
1a00222c:	f100 0008 	add.w	r0, r0, #8
1a002230:	fa82 f24c 	uadd8	r2, r2, ip
1a002234:	faa4 f28c 	sel	r2, r4, ip
1a002238:	fa83 f34c 	uadd8	r3, r3, ip
1a00223c:	faa2 f38c 	sel	r3, r2, ip
1a002240:	bb4b      	cbnz	r3, 1a002296 <strlen+0x96>
1a002242:	e9d1 2302 	ldrd	r2, r3, [r1, #8]
1a002246:	fa82 f24c 	uadd8	r2, r2, ip
1a00224a:	f100 0008 	add.w	r0, r0, #8
1a00224e:	faa4 f28c 	sel	r2, r4, ip
1a002252:	fa83 f34c 	uadd8	r3, r3, ip
1a002256:	faa2 f38c 	sel	r3, r2, ip
1a00225a:	b9e3      	cbnz	r3, 1a002296 <strlen+0x96>
1a00225c:	e9d1 2304 	ldrd	r2, r3, [r1, #16]
1a002260:	fa82 f24c 	uadd8	r2, r2, ip
1a002264:	f100 0008 	add.w	r0, r0, #8
1a002268:	faa4 f28c 	sel	r2, r4, ip
1a00226c:	fa83 f34c 	uadd8	r3, r3, ip
1a002270:	faa2 f38c 	sel	r3, r2, ip
1a002274:	b97b      	cbnz	r3, 1a002296 <strlen+0x96>
1a002276:	e9d1 2306 	ldrd	r2, r3, [r1, #24]
1a00227a:	f101 0120 	add.w	r1, r1, #32
1a00227e:	fa82 f24c 	uadd8	r2, r2, ip
1a002282:	f100 0008 	add.w	r0, r0, #8
1a002286:	faa4 f28c 	sel	r2, r4, ip
1a00228a:	fa83 f34c 	uadd8	r3, r3, ip
1a00228e:	faa2 f38c 	sel	r3, r2, ip
1a002292:	2b00      	cmp	r3, #0
1a002294:	d0c6      	beq.n	1a002224 <strlen+0x24>
1a002296:	2a00      	cmp	r2, #0
1a002298:	bf04      	itt	eq
1a00229a:	3004      	addeq	r0, #4
1a00229c:	461a      	moveq	r2, r3
1a00229e:	ba12      	rev	r2, r2
1a0022a0:	fab2 f282 	clz	r2, r2
1a0022a4:	e8fd 4502 	ldrd	r4, r5, [sp], #8
1a0022a8:	eb00 00d2 	add.w	r0, r0, r2, lsr #3
1a0022ac:	4770      	bx	lr
1a0022ae:	e9d1 2300 	ldrd	r2, r3, [r1]
1a0022b2:	f004 0503 	and.w	r5, r4, #3
1a0022b6:	f1c4 0000 	rsb	r0, r4, #0
1a0022ba:	ea4f 05c5 	mov.w	r5, r5, lsl #3
1a0022be:	f014 0f04 	tst.w	r4, #4
1a0022c2:	f891 f040 	pld	[r1, #64]	; 0x40
1a0022c6:	fa0c f505 	lsl.w	r5, ip, r5
1a0022ca:	ea62 0205 	orn	r2, r2, r5
1a0022ce:	bf1c      	itt	ne
1a0022d0:	ea63 0305 	ornne	r3, r3, r5
1a0022d4:	4662      	movne	r2, ip
1a0022d6:	f04f 0400 	mov.w	r4, #0
1a0022da:	e7a9      	b.n	1a002230 <strlen+0x30>

1a0022dc <ExtRateIn>:
1a0022dc:	0000 0000                                   ....

1a0022e0 <OscRateIn>:
1a0022e0:	1b00 00b7 2031 202d 6e45 6563 646e 7265     ....1 - Encender
1a0022f0:	2020 656c 2064 0a31 000d 0000 2032 202d       led 1.....2 - 
1a002300:	7041 6761 7261 2020 656c 2064 0a31 000d     Apagar  led 1...
1a002310:	2033 202d 6f43 6d6e 7475 7261 6c20 6465     3 - Conmutar led
1a002320:	0d31 000a 2e34 5620 6c6f 6576 2072 6c61     1...4. Volver al
1a002330:	6d20 6e65 bac3 7020 6170 0a6c 000d 0000      men.. ppal.....
1a002340:	2031 202d 6e45 6563 646e 7265 2020 656c     1 - Encender  le
1a002350:	2064 0a32 000d 0000 2032 202d 7041 6761     d 2.....2 - Apag
1a002360:	7261 2020 656c 2064 0a32 000d 2033 202d     ar  led 2...3 - 
1a002370:	6f43 6d6e 7475 7261 6c20 6465 3220 0a0d     Conmutar led 2..
1a002380:	0000 0000 2031 202d 6e45 6563 646e 7265     ....1 - Encender
1a002390:	2020 656c 2064 0a33 000d 0000 2032 202d       led 3.....2 - 
1a0023a0:	7041 6761 7261 2020 656c 2064 0a33 000d     Apagar  led 3...
1a0023b0:	2033 202d 6f43 6d6e 7475 7261 6c20 6465     3 - Conmutar led
1a0023c0:	0d33 000a 2e31 4c20 6465 5220 0a20 000d     3...1. Led R ...
1a0023d0:	2e32 4c20 6465 4720 0d0a 0000 2e33 4c20     2. Led G....3. L
1a0023e0:	6465 4220 0a0d 0000 2e31 4520 636e 6e65     ed B....1. Encen
1a0023f0:	6564 2072 656c 2064 0a52 000d 2e32 4120     der led R...2. A
1a002400:	6170 6167 2072 656c 2064 0a52 000d 0000     pagar led R.....
1a002410:	2e33 4320 6e6f 756d 6174 2072 656c 2064     3. Conmutar led 
1a002420:	0a52 000d 2e31 4520 636e 6e65 6564 2072     R...1. Encender 
1a002430:	656c 2064 0a47 000d 2e32 4120 6170 6167     led G...2. Apaga
1a002440:	2072 656c 2064 0a47 000d 0000 2e33 4320     r led G.....3. C
1a002450:	6e6f 756d 6174 2072 656c 2064 0a47 000d     onmutar led G...
1a002460:	2e31 4520 636e 6e65 6564 2072 656c 2064     1. Encender led 
1a002470:	0a42 000d 2e32 4120 6170 6167 2072 656c     B...2. Apagar le
1a002480:	2064 0a42 000d 0000 2e33 4320 6e6f 756d     d B.....3. Conmu
1a002490:	6174 2072 656c 2064 0a42 000d 2e31 4c20     tar led B...1. L
1a0024a0:	6465 3120 0d0a 0000 2e32 4c20 6465 3220     ed 1....2. Led 2
1a0024b0:	0d0a 0000 2e33 4c20 6465 3320 0d0a 0000     ....3. Led 3....
1a0024c0:	2e34 4c20 6465 5220 4247 0d0a 0000 0000     4. Led RGB......
1a0024d0:	2e35 5320 7379 6574 206d 6552 6573 0a74     5. System Reset.
1a0024e0:	000d ffff                                   ....

1a0024e4 <menuled1>:
1a0024e4:	22e4 1a00 0575 1a00 22fc 1a00 059d 1a00     ."..u...."......
1a0024f4:	2310 1a00 05c5 1a00 2324 1a00 0539 1a00     .#......$#..9...
	...

1a00250c <menuled2>:
1a00250c:	2340 1a00 0601 1a00 2358 1a00 0629 1a00     @#......X#..)...
1a00251c:	236c 1a00 0651 1a00 2324 1a00 0539 1a00     l#..Q...$#..9...
	...

1a002534 <menuled3>:
1a002534:	2384 1a00 068d 1a00 239c 1a00 06b5 1a00     .#.......#......
1a002544:	23b0 1a00 06dd 1a00 2324 1a00 0539 1a00     .#......$#..9...
	...

1a00255c <menuledrgb>:
1a00255c:	23c4 1a00 0719 1a00 23d0 1a00 07a5 1a00     .#.......#......
1a00256c:	23dc 1a00 083d 1a00 2324 1a00 0539 1a00     .#..=...$#..9...
	...

1a002584 <menuledr>:
1a002584:	23e8 1a00 072d 1a00 23fc 1a00 0755 1a00     .#..-....#..U...
1a002594:	2410 1a00 077d 1a00 2324 1a00 054d 1a00     .$..}...$#..M...
	...

1a0025ac <menuledg>:
1a0025ac:	2424 1a00 07b9 1a00 2438 1a00 07e5 1a00     $$......8$......
1a0025bc:	244c 1a00 0811 1a00 2324 1a00 054d 1a00     L$......$#..M...
	...

1a0025d4 <menuledb>:
1a0025d4:	2460 1a00 0851 1a00 2474 1a00 0879 1a00     `$..Q...t$..y...
1a0025e4:	2488 1a00 08a1 1a00 2324 1a00 054d 1a00     .$......$#..M...
	...

1a0025fc <mainMenu>:
1a0025fc:	249c 1a00 0561 1a00 24a8 1a00 05ed 1a00     .$..a....$......
1a00260c:	24b4 1a00 0679 1a00 24c0 1a00 0705 1a00     .$..y....$......
1a00261c:	24d0 1a00 08c9 1a00 0000 0000 0000 0000     .$..............
1a00262c:	2d20 203d 6d49 6c70 6d65 6e65 6174 6963      -= Implementaci
1a00263c:	b3c3 206e 6564 7520 206e 656d c36e 20ba     ..n de un men.. 
1a00264c:	656a c372 72a1 7571 6369 206f 2d3d 0d0a     jer..rquico =-..
1a00265c:	0000 0000 0d0a 0000 704f 6963 b3c3 206e     ........Opci..n 
1a00266c:	6e69 c376 6ca1 6469 0a61 000d               inv..lida...

1a002678 <leds>:
1a002678:	0202 0205 0014 0a02 0e00 0010 0b02 0b01     ................
1a002688:	0010 0c02 0c01 0010 0002 0005 0014 0102     ................
1a002698:	0105 0014                                   ....

1a00269c <keys>:
1a00269c:	0001 0400 00c0 0101 0800 00c0 0201 0900     ................
1a0026ac:	00c0 0601 0901 00c0                         ........

1a0026b4 <InitClkStates>:
1a0026b4:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a0026c4:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a0026d4:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a0026e4:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a0026f4:	111a 0001 111b 0001                         ........

1a0026fc <UART_PClock>:
1a0026fc:	0081 0082 00a1 00a2                         ........

1a002704 <UART_BClock>:
1a002704:	01c2 01a2 0182 0162                         ......b.

1a00270c <periph_to_base>:
1a00270c:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a00271c:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a00272c:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a00273c:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a00274c:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a00275c:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a00276c:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a00277c:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a002784 <_init>:
1a002784:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002786:	bf00      	nop

Disassembly of section .fini:

1a002788 <_fini>:
1a002788:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a00278a:	bf00      	nop
