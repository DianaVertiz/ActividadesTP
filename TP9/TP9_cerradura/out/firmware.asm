
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 95 03 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	dd 20 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     . ..............
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a 25 21 00 1a 4d 21 00 1a 75 21 00 1a     ....%!..M!..u!..
1a0000cc:	9d 21 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     .!..............
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a0032d0 	.word	0x1a0032d0
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000

1a000120 <__bss_section_table_>:
1a000120:	10000000 	.word	0x10000000
1a000124:	0000007c 	.word	0x0000007c

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
1a000430:	f001 fa5c 	bl	1a0018ec <main>
1a000434:	e7fe      	b.n	1a000434 <ResetISR+0xa0>
1a000436:	bf00      	nop
1a000438:	40053100 	.word	0x40053100
1a00043c:	10df1000 	.word	0x10df1000
1a000440:	01dff7ff 	.word	0x01dff7ff
1a000444:	e000e280 	.word	0xe000e280
1a000448:	1a000114 	.word	0x1a000114
1a00044c:	1a000120 	.word	0x1a000120
1a000450:	1a000128 	.word	0x1a000128

1a000454 <SetNewTimerTick>:
1a000454:	b480      	push	{r7}
1a000456:	b087      	sub	sp, #28
1a000458:	af00      	add	r7, sp, #0
1a00045a:	60f8      	str	r0, [r7, #12]
1a00045c:	60b9      	str	r1, [r7, #8]
1a00045e:	607a      	str	r2, [r7, #4]
1a000460:	603b      	str	r3, [r7, #0]
1a000462:	2300      	movs	r3, #0
1a000464:	613b      	str	r3, [r7, #16]
1a000466:	2300      	movs	r3, #0
1a000468:	617b      	str	r3, [r7, #20]
1a00046a:	e031      	b.n	1a0004d0 <SetNewTimerTick+0x7c>
1a00046c:	697b      	ldr	r3, [r7, #20]
1a00046e:	011b      	lsls	r3, r3, #4
1a000470:	68fa      	ldr	r2, [r7, #12]
1a000472:	4413      	add	r3, r2
1a000474:	681b      	ldr	r3, [r3, #0]
1a000476:	2b00      	cmp	r3, #0
1a000478:	d127      	bne.n	1a0004ca <SetNewTimerTick+0x76>
1a00047a:	697b      	ldr	r3, [r7, #20]
1a00047c:	011b      	lsls	r3, r3, #4
1a00047e:	68fa      	ldr	r2, [r7, #12]
1a000480:	4413      	add	r3, r2
1a000482:	683a      	ldr	r2, [r7, #0]
1a000484:	605a      	str	r2, [r3, #4]
1a000486:	697b      	ldr	r3, [r7, #20]
1a000488:	011b      	lsls	r3, r3, #4
1a00048a:	68fa      	ldr	r2, [r7, #12]
1a00048c:	4413      	add	r3, r2
1a00048e:	683a      	ldr	r2, [r7, #0]
1a000490:	609a      	str	r2, [r3, #8]
1a000492:	697b      	ldr	r3, [r7, #20]
1a000494:	011b      	lsls	r3, r3, #4
1a000496:	68fa      	ldr	r2, [r7, #12]
1a000498:	4413      	add	r3, r2
1a00049a:	687a      	ldr	r2, [r7, #4]
1a00049c:	601a      	str	r2, [r3, #0]
1a00049e:	697b      	ldr	r3, [r7, #20]
1a0004a0:	011b      	lsls	r3, r3, #4
1a0004a2:	68fa      	ldr	r2, [r7, #12]
1a0004a4:	4413      	add	r3, r2
1a0004a6:	f897 2020 	ldrb.w	r2, [r7, #32]
1a0004aa:	731a      	strb	r2, [r3, #12]
1a0004ac:	697b      	ldr	r3, [r7, #20]
1a0004ae:	011b      	lsls	r3, r3, #4
1a0004b0:	68fa      	ldr	r2, [r7, #12]
1a0004b2:	4413      	add	r3, r2
1a0004b4:	2201      	movs	r2, #1
1a0004b6:	735a      	strb	r2, [r3, #13]
1a0004b8:	697b      	ldr	r3, [r7, #20]
1a0004ba:	011b      	lsls	r3, r3, #4
1a0004bc:	68fa      	ldr	r2, [r7, #12]
1a0004be:	4413      	add	r3, r2
1a0004c0:	2200      	movs	r2, #0
1a0004c2:	739a      	strb	r2, [r3, #14]
1a0004c4:	687b      	ldr	r3, [r7, #4]
1a0004c6:	613b      	str	r3, [r7, #16]
1a0004c8:	e006      	b.n	1a0004d8 <SetNewTimerTick+0x84>
1a0004ca:	697b      	ldr	r3, [r7, #20]
1a0004cc:	3301      	adds	r3, #1
1a0004ce:	617b      	str	r3, [r7, #20]
1a0004d0:	697a      	ldr	r2, [r7, #20]
1a0004d2:	68bb      	ldr	r3, [r7, #8]
1a0004d4:	429a      	cmp	r2, r3
1a0004d6:	d3c9      	bcc.n	1a00046c <SetNewTimerTick+0x18>
1a0004d8:	693b      	ldr	r3, [r7, #16]
1a0004da:	4618      	mov	r0, r3
1a0004dc:	371c      	adds	r7, #28
1a0004de:	46bd      	mov	sp, r7
1a0004e0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004e4:	4770      	bx	lr

1a0004e6 <UnsetTimerTick>:
1a0004e6:	b480      	push	{r7}
1a0004e8:	b087      	sub	sp, #28
1a0004ea:	af00      	add	r7, sp, #0
1a0004ec:	60f8      	str	r0, [r7, #12]
1a0004ee:	60b9      	str	r1, [r7, #8]
1a0004f0:	607a      	str	r2, [r7, #4]
1a0004f2:	2300      	movs	r3, #0
1a0004f4:	613b      	str	r3, [r7, #16]
1a0004f6:	2300      	movs	r3, #0
1a0004f8:	617b      	str	r3, [r7, #20]
1a0004fa:	e031      	b.n	1a000560 <UnsetTimerTick+0x7a>
1a0004fc:	697b      	ldr	r3, [r7, #20]
1a0004fe:	011b      	lsls	r3, r3, #4
1a000500:	68fa      	ldr	r2, [r7, #12]
1a000502:	4413      	add	r3, r2
1a000504:	681b      	ldr	r3, [r3, #0]
1a000506:	687a      	ldr	r2, [r7, #4]
1a000508:	429a      	cmp	r2, r3
1a00050a:	d126      	bne.n	1a00055a <UnsetTimerTick+0x74>
1a00050c:	697b      	ldr	r3, [r7, #20]
1a00050e:	011b      	lsls	r3, r3, #4
1a000510:	68fa      	ldr	r2, [r7, #12]
1a000512:	4413      	add	r3, r2
1a000514:	2200      	movs	r2, #0
1a000516:	601a      	str	r2, [r3, #0]
1a000518:	697b      	ldr	r3, [r7, #20]
1a00051a:	011b      	lsls	r3, r3, #4
1a00051c:	68fa      	ldr	r2, [r7, #12]
1a00051e:	4413      	add	r3, r2
1a000520:	2200      	movs	r2, #0
1a000522:	605a      	str	r2, [r3, #4]
1a000524:	697b      	ldr	r3, [r7, #20]
1a000526:	011b      	lsls	r3, r3, #4
1a000528:	68fa      	ldr	r2, [r7, #12]
1a00052a:	4413      	add	r3, r2
1a00052c:	2200      	movs	r2, #0
1a00052e:	609a      	str	r2, [r3, #8]
1a000530:	697b      	ldr	r3, [r7, #20]
1a000532:	011b      	lsls	r3, r3, #4
1a000534:	68fa      	ldr	r2, [r7, #12]
1a000536:	4413      	add	r3, r2
1a000538:	2200      	movs	r2, #0
1a00053a:	731a      	strb	r2, [r3, #12]
1a00053c:	697b      	ldr	r3, [r7, #20]
1a00053e:	011b      	lsls	r3, r3, #4
1a000540:	68fa      	ldr	r2, [r7, #12]
1a000542:	4413      	add	r3, r2
1a000544:	2200      	movs	r2, #0
1a000546:	735a      	strb	r2, [r3, #13]
1a000548:	697b      	ldr	r3, [r7, #20]
1a00054a:	011b      	lsls	r3, r3, #4
1a00054c:	68fa      	ldr	r2, [r7, #12]
1a00054e:	4413      	add	r3, r2
1a000550:	2200      	movs	r2, #0
1a000552:	739a      	strb	r2, [r3, #14]
1a000554:	687b      	ldr	r3, [r7, #4]
1a000556:	613b      	str	r3, [r7, #16]
1a000558:	e006      	b.n	1a000568 <UnsetTimerTick+0x82>
1a00055a:	697b      	ldr	r3, [r7, #20]
1a00055c:	3301      	adds	r3, #1
1a00055e:	617b      	str	r3, [r7, #20]
1a000560:	697a      	ldr	r2, [r7, #20]
1a000562:	68bb      	ldr	r3, [r7, #8]
1a000564:	429a      	cmp	r2, r3
1a000566:	d3c9      	bcc.n	1a0004fc <UnsetTimerTick+0x16>
1a000568:	693b      	ldr	r3, [r7, #16]
1a00056a:	4618      	mov	r0, r3
1a00056c:	371c      	adds	r7, #28
1a00056e:	46bd      	mov	sp, r7
1a000570:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000574:	4770      	bx	lr

1a000576 <IsPendEvent>:
1a000576:	b480      	push	{r7}
1a000578:	b087      	sub	sp, #28
1a00057a:	af00      	add	r7, sp, #0
1a00057c:	60f8      	str	r0, [r7, #12]
1a00057e:	60b9      	str	r1, [r7, #8]
1a000580:	607a      	str	r2, [r7, #4]
1a000582:	2300      	movs	r3, #0
1a000584:	74fb      	strb	r3, [r7, #19]
1a000586:	2300      	movs	r3, #0
1a000588:	617b      	str	r3, [r7, #20]
1a00058a:	e014      	b.n	1a0005b6 <IsPendEvent+0x40>
1a00058c:	697b      	ldr	r3, [r7, #20]
1a00058e:	011b      	lsls	r3, r3, #4
1a000590:	68fa      	ldr	r2, [r7, #12]
1a000592:	4413      	add	r3, r2
1a000594:	681b      	ldr	r3, [r3, #0]
1a000596:	687a      	ldr	r2, [r7, #4]
1a000598:	429a      	cmp	r2, r3
1a00059a:	d109      	bne.n	1a0005b0 <IsPendEvent+0x3a>
1a00059c:	697b      	ldr	r3, [r7, #20]
1a00059e:	011b      	lsls	r3, r3, #4
1a0005a0:	68fa      	ldr	r2, [r7, #12]
1a0005a2:	4413      	add	r3, r2
1a0005a4:	7b9b      	ldrb	r3, [r3, #14]
1a0005a6:	2b00      	cmp	r3, #0
1a0005a8:	d002      	beq.n	1a0005b0 <IsPendEvent+0x3a>
1a0005aa:	2301      	movs	r3, #1
1a0005ac:	74fb      	strb	r3, [r7, #19]
1a0005ae:	e006      	b.n	1a0005be <IsPendEvent+0x48>
1a0005b0:	697b      	ldr	r3, [r7, #20]
1a0005b2:	3301      	adds	r3, #1
1a0005b4:	617b      	str	r3, [r7, #20]
1a0005b6:	697b      	ldr	r3, [r7, #20]
1a0005b8:	68ba      	ldr	r2, [r7, #8]
1a0005ba:	429a      	cmp	r2, r3
1a0005bc:	d8e6      	bhi.n	1a00058c <IsPendEvent+0x16>
1a0005be:	7cfb      	ldrb	r3, [r7, #19]
1a0005c0:	4618      	mov	r0, r3
1a0005c2:	371c      	adds	r7, #28
1a0005c4:	46bd      	mov	sp, r7
1a0005c6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005ca:	4770      	bx	lr

1a0005cc <MarkAsAttEvent>:
1a0005cc:	b480      	push	{r7}
1a0005ce:	b087      	sub	sp, #28
1a0005d0:	af00      	add	r7, sp, #0
1a0005d2:	60f8      	str	r0, [r7, #12]
1a0005d4:	60b9      	str	r1, [r7, #8]
1a0005d6:	607a      	str	r2, [r7, #4]
1a0005d8:	2300      	movs	r3, #0
1a0005da:	617b      	str	r3, [r7, #20]
1a0005dc:	e011      	b.n	1a000602 <MarkAsAttEvent+0x36>
1a0005de:	697b      	ldr	r3, [r7, #20]
1a0005e0:	011b      	lsls	r3, r3, #4
1a0005e2:	68fa      	ldr	r2, [r7, #12]
1a0005e4:	4413      	add	r3, r2
1a0005e6:	681b      	ldr	r3, [r3, #0]
1a0005e8:	687a      	ldr	r2, [r7, #4]
1a0005ea:	429a      	cmp	r2, r3
1a0005ec:	d106      	bne.n	1a0005fc <MarkAsAttEvent+0x30>
1a0005ee:	697b      	ldr	r3, [r7, #20]
1a0005f0:	011b      	lsls	r3, r3, #4
1a0005f2:	68fa      	ldr	r2, [r7, #12]
1a0005f4:	4413      	add	r3, r2
1a0005f6:	2200      	movs	r2, #0
1a0005f8:	739a      	strb	r2, [r3, #14]
1a0005fa:	e006      	b.n	1a00060a <MarkAsAttEvent+0x3e>
1a0005fc:	697b      	ldr	r3, [r7, #20]
1a0005fe:	3301      	adds	r3, #1
1a000600:	617b      	str	r3, [r7, #20]
1a000602:	697a      	ldr	r2, [r7, #20]
1a000604:	68bb      	ldr	r3, [r7, #8]
1a000606:	429a      	cmp	r2, r3
1a000608:	d3e9      	bcc.n	1a0005de <MarkAsAttEvent+0x12>
1a00060a:	bf00      	nop
1a00060c:	371c      	adds	r7, #28
1a00060e:	46bd      	mov	sp, r7
1a000610:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000614:	4770      	bx	lr

1a000616 <UpdateTimers>:
1a000616:	b480      	push	{r7}
1a000618:	b085      	sub	sp, #20
1a00061a:	af00      	add	r7, sp, #0
1a00061c:	6078      	str	r0, [r7, #4]
1a00061e:	6039      	str	r1, [r7, #0]
1a000620:	2300      	movs	r3, #0
1a000622:	60fb      	str	r3, [r7, #12]
1a000624:	e03c      	b.n	1a0006a0 <UpdateTimers+0x8a>
1a000626:	68fb      	ldr	r3, [r7, #12]
1a000628:	011b      	lsls	r3, r3, #4
1a00062a:	687a      	ldr	r2, [r7, #4]
1a00062c:	4413      	add	r3, r2
1a00062e:	7b5b      	ldrb	r3, [r3, #13]
1a000630:	2b00      	cmp	r3, #0
1a000632:	d032      	beq.n	1a00069a <UpdateTimers+0x84>
1a000634:	68fb      	ldr	r3, [r7, #12]
1a000636:	011b      	lsls	r3, r3, #4
1a000638:	687a      	ldr	r2, [r7, #4]
1a00063a:	4413      	add	r3, r2
1a00063c:	689b      	ldr	r3, [r3, #8]
1a00063e:	2b00      	cmp	r3, #0
1a000640:	d006      	beq.n	1a000650 <UpdateTimers+0x3a>
1a000642:	68fb      	ldr	r3, [r7, #12]
1a000644:	011b      	lsls	r3, r3, #4
1a000646:	687a      	ldr	r2, [r7, #4]
1a000648:	4413      	add	r3, r2
1a00064a:	689a      	ldr	r2, [r3, #8]
1a00064c:	3a01      	subs	r2, #1
1a00064e:	609a      	str	r2, [r3, #8]
1a000650:	68fb      	ldr	r3, [r7, #12]
1a000652:	011b      	lsls	r3, r3, #4
1a000654:	687a      	ldr	r2, [r7, #4]
1a000656:	4413      	add	r3, r2
1a000658:	689b      	ldr	r3, [r3, #8]
1a00065a:	2b00      	cmp	r3, #0
1a00065c:	d11d      	bne.n	1a00069a <UpdateTimers+0x84>
1a00065e:	68fb      	ldr	r3, [r7, #12]
1a000660:	011b      	lsls	r3, r3, #4
1a000662:	687a      	ldr	r2, [r7, #4]
1a000664:	4413      	add	r3, r2
1a000666:	7b1b      	ldrb	r3, [r3, #12]
1a000668:	2b00      	cmp	r3, #0
1a00066a:	d00a      	beq.n	1a000682 <UpdateTimers+0x6c>
1a00066c:	68fb      	ldr	r3, [r7, #12]
1a00066e:	011b      	lsls	r3, r3, #4
1a000670:	687a      	ldr	r2, [r7, #4]
1a000672:	441a      	add	r2, r3
1a000674:	68fb      	ldr	r3, [r7, #12]
1a000676:	011b      	lsls	r3, r3, #4
1a000678:	6879      	ldr	r1, [r7, #4]
1a00067a:	440b      	add	r3, r1
1a00067c:	6852      	ldr	r2, [r2, #4]
1a00067e:	609a      	str	r2, [r3, #8]
1a000680:	e005      	b.n	1a00068e <UpdateTimers+0x78>
1a000682:	68fb      	ldr	r3, [r7, #12]
1a000684:	011b      	lsls	r3, r3, #4
1a000686:	687a      	ldr	r2, [r7, #4]
1a000688:	4413      	add	r3, r2
1a00068a:	2200      	movs	r2, #0
1a00068c:	735a      	strb	r2, [r3, #13]
1a00068e:	68fb      	ldr	r3, [r7, #12]
1a000690:	011b      	lsls	r3, r3, #4
1a000692:	687a      	ldr	r2, [r7, #4]
1a000694:	4413      	add	r3, r2
1a000696:	2201      	movs	r2, #1
1a000698:	739a      	strb	r2, [r3, #14]
1a00069a:	68fb      	ldr	r3, [r7, #12]
1a00069c:	3301      	adds	r3, #1
1a00069e:	60fb      	str	r3, [r7, #12]
1a0006a0:	68fa      	ldr	r2, [r7, #12]
1a0006a2:	683b      	ldr	r3, [r7, #0]
1a0006a4:	429a      	cmp	r2, r3
1a0006a6:	d3be      	bcc.n	1a000626 <UpdateTimers+0x10>
1a0006a8:	bf00      	nop
1a0006aa:	3714      	adds	r7, #20
1a0006ac:	46bd      	mov	sp, r7
1a0006ae:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0006b2:	4770      	bx	lr

1a0006b4 <cerradura_init>:
1a0006b4:	b580      	push	{r7, lr}
1a0006b6:	b084      	sub	sp, #16
1a0006b8:	af00      	add	r7, sp, #0
1a0006ba:	6078      	str	r0, [r7, #4]
1a0006bc:	2300      	movs	r3, #0
1a0006be:	60fb      	str	r3, [r7, #12]
1a0006c0:	e007      	b.n	1a0006d2 <cerradura_init+0x1e>
1a0006c2:	687a      	ldr	r2, [r7, #4]
1a0006c4:	68fb      	ldr	r3, [r7, #12]
1a0006c6:	4413      	add	r3, r2
1a0006c8:	2212      	movs	r2, #18
1a0006ca:	701a      	strb	r2, [r3, #0]
1a0006cc:	68fb      	ldr	r3, [r7, #12]
1a0006ce:	3301      	adds	r3, #1
1a0006d0:	60fb      	str	r3, [r7, #12]
1a0006d2:	68fb      	ldr	r3, [r7, #12]
1a0006d4:	2b00      	cmp	r3, #0
1a0006d6:	ddf4      	ble.n	1a0006c2 <cerradura_init+0xe>
1a0006d8:	687b      	ldr	r3, [r7, #4]
1a0006da:	2200      	movs	r2, #0
1a0006dc:	605a      	str	r2, [r3, #4]
1a0006de:	6878      	ldr	r0, [r7, #4]
1a0006e0:	f000 f82d 	bl	1a00073e <cerradura_clearInEvents>
1a0006e4:	6878      	ldr	r0, [r7, #4]
1a0006e6:	f000 f847 	bl	1a000778 <cerradura_clearOutEvents>
1a0006ea:	687b      	ldr	r3, [r7, #4]
1a0006ec:	2200      	movs	r2, #0
1a0006ee:	60da      	str	r2, [r3, #12]
1a0006f0:	687b      	ldr	r3, [r7, #4]
1a0006f2:	2200      	movs	r2, #0
1a0006f4:	611a      	str	r2, [r3, #16]
1a0006f6:	687b      	ldr	r3, [r7, #4]
1a0006f8:	2200      	movs	r2, #0
1a0006fa:	615a      	str	r2, [r3, #20]
1a0006fc:	687b      	ldr	r3, [r7, #4]
1a0006fe:	2200      	movs	r2, #0
1a000700:	619a      	str	r2, [r3, #24]
1a000702:	687b      	ldr	r3, [r7, #4]
1a000704:	2200      	movs	r2, #0
1a000706:	61da      	str	r2, [r3, #28]
1a000708:	687b      	ldr	r3, [r7, #4]
1a00070a:	2200      	movs	r2, #0
1a00070c:	621a      	str	r2, [r3, #32]
1a00070e:	687b      	ldr	r3, [r7, #4]
1a000710:	2200      	movs	r2, #0
1a000712:	625a      	str	r2, [r3, #36]	; 0x24
1a000714:	687b      	ldr	r3, [r7, #4]
1a000716:	2200      	movs	r2, #0
1a000718:	629a      	str	r2, [r3, #40]	; 0x28
1a00071a:	687b      	ldr	r3, [r7, #4]
1a00071c:	2200      	movs	r2, #0
1a00071e:	62da      	str	r2, [r3, #44]	; 0x2c
1a000720:	bf00      	nop
1a000722:	3710      	adds	r7, #16
1a000724:	46bd      	mov	sp, r7
1a000726:	bd80      	pop	{r7, pc}

1a000728 <cerradura_enter>:
1a000728:	b580      	push	{r7, lr}
1a00072a:	b082      	sub	sp, #8
1a00072c:	af00      	add	r7, sp, #0
1a00072e:	6078      	str	r0, [r7, #4]
1a000730:	6878      	ldr	r0, [r7, #4]
1a000732:	f000 fd51 	bl	1a0011d8 <cerradura_enseq_main_region_default>
1a000736:	bf00      	nop
1a000738:	3708      	adds	r7, #8
1a00073a:	46bd      	mov	sp, r7
1a00073c:	bd80      	pop	{r7, pc}

1a00073e <cerradura_clearInEvents>:
1a00073e:	b480      	push	{r7}
1a000740:	b083      	sub	sp, #12
1a000742:	af00      	add	r7, sp, #0
1a000744:	6078      	str	r0, [r7, #4]
1a000746:	687b      	ldr	r3, [r7, #4]
1a000748:	2200      	movs	r2, #0
1a00074a:	721a      	strb	r2, [r3, #8]
1a00074c:	687b      	ldr	r3, [r7, #4]
1a00074e:	2200      	movs	r2, #0
1a000750:	f883 2030 	strb.w	r2, [r3, #48]	; 0x30
1a000754:	687b      	ldr	r3, [r7, #4]
1a000756:	2200      	movs	r2, #0
1a000758:	f883 2031 	strb.w	r2, [r3, #49]	; 0x31
1a00075c:	687b      	ldr	r3, [r7, #4]
1a00075e:	2200      	movs	r2, #0
1a000760:	f883 2032 	strb.w	r2, [r3, #50]	; 0x32
1a000764:	687b      	ldr	r3, [r7, #4]
1a000766:	2200      	movs	r2, #0
1a000768:	f883 2033 	strb.w	r2, [r3, #51]	; 0x33
1a00076c:	bf00      	nop
1a00076e:	370c      	adds	r7, #12
1a000770:	46bd      	mov	sp, r7
1a000772:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000776:	4770      	bx	lr

1a000778 <cerradura_clearOutEvents>:
1a000778:	b480      	push	{r7}
1a00077a:	b083      	sub	sp, #12
1a00077c:	af00      	add	r7, sp, #0
1a00077e:	6078      	str	r0, [r7, #4]
1a000780:	bf00      	nop
1a000782:	370c      	adds	r7, #12
1a000784:	46bd      	mov	sp, r7
1a000786:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00078a:	4770      	bx	lr

1a00078c <cerradura_runCycle>:
1a00078c:	b580      	push	{r7, lr}
1a00078e:	b082      	sub	sp, #8
1a000790:	af00      	add	r7, sp, #0
1a000792:	6078      	str	r0, [r7, #4]
1a000794:	6878      	ldr	r0, [r7, #4]
1a000796:	f7ff ffef 	bl	1a000778 <cerradura_clearOutEvents>
1a00079a:	687b      	ldr	r3, [r7, #4]
1a00079c:	2200      	movs	r2, #0
1a00079e:	605a      	str	r2, [r3, #4]
1a0007a0:	e066      	b.n	1a000870 <cerradura_runCycle+0xe4>
1a0007a2:	687b      	ldr	r3, [r7, #4]
1a0007a4:	685b      	ldr	r3, [r3, #4]
1a0007a6:	687a      	ldr	r2, [r7, #4]
1a0007a8:	5cd3      	ldrb	r3, [r2, r3]
1a0007aa:	3b01      	subs	r3, #1
1a0007ac:	2b10      	cmp	r3, #16
1a0007ae:	d859      	bhi.n	1a000864 <cerradura_runCycle+0xd8>
1a0007b0:	a201      	add	r2, pc, #4	; (adr r2, 1a0007b8 <cerradura_runCycle+0x2c>)
1a0007b2:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a0007b6:	bf00      	nop
1a0007b8:	1a0007fd 	.word	0x1a0007fd
1a0007bc:	1a000865 	.word	0x1a000865
1a0007c0:	1a000805 	.word	0x1a000805
1a0007c4:	1a00080d 	.word	0x1a00080d
1a0007c8:	1a000815 	.word	0x1a000815
1a0007cc:	1a00081d 	.word	0x1a00081d
1a0007d0:	1a000865 	.word	0x1a000865
1a0007d4:	1a000825 	.word	0x1a000825
1a0007d8:	1a00082d 	.word	0x1a00082d
1a0007dc:	1a000835 	.word	0x1a000835
1a0007e0:	1a00083d 	.word	0x1a00083d
1a0007e4:	1a000865 	.word	0x1a000865
1a0007e8:	1a000845 	.word	0x1a000845
1a0007ec:	1a00084d 	.word	0x1a00084d
1a0007f0:	1a000865 	.word	0x1a000865
1a0007f4:	1a000855 	.word	0x1a000855
1a0007f8:	1a00085d 	.word	0x1a00085d
1a0007fc:	6878      	ldr	r0, [r7, #4]
1a0007fe:	f000 fecb 	bl	1a001598 <cerradura_react_main_region_Inicio_r1_resetSystem>
1a000802:	e030      	b.n	1a000866 <cerradura_runCycle+0xda>
1a000804:	6878      	ldr	r0, [r7, #4]
1a000806:	f000 fed2 	bl	1a0015ae <cerradura_react_main_region_Cerrado_r1_wait>
1a00080a:	e02c      	b.n	1a000866 <cerradura_runCycle+0xda>
1a00080c:	6878      	ldr	r0, [r7, #4]
1a00080e:	f000 fedf 	bl	1a0015d0 <cerradura_react_main_region_Cerrado_r1_getKey>
1a000812:	e028      	b.n	1a000866 <cerradura_runCycle+0xda>
1a000814:	6878      	ldr	r0, [r7, #4]
1a000816:	f000 fee6 	bl	1a0015e6 <cerradura_react_main_region_Cerrado_r1_operate>
1a00081a:	e024      	b.n	1a000866 <cerradura_runCycle+0xda>
1a00081c:	6878      	ldr	r0, [r7, #4]
1a00081e:	f000 fefd 	bl	1a00161c <cerradura_react_main_region_Cerrado_r1_Validate>
1a000822:	e020      	b.n	1a000866 <cerradura_runCycle+0xda>
1a000824:	6878      	ldr	r0, [r7, #4]
1a000826:	f000 ff14 	bl	1a001652 <cerradura_react_main_region_Abierto_r1_wait>
1a00082a:	e01c      	b.n	1a000866 <cerradura_runCycle+0xda>
1a00082c:	6878      	ldr	r0, [r7, #4]
1a00082e:	f000 ff2b 	bl	1a001688 <cerradura_react_main_region_Abierto_r1_getKey>
1a000832:	e018      	b.n	1a000866 <cerradura_runCycle+0xda>
1a000834:	6878      	ldr	r0, [r7, #4]
1a000836:	f000 ff3c 	bl	1a0016b2 <cerradura_react_main_region_Abierto_r1_operate>
1a00083a:	e014      	b.n	1a000866 <cerradura_runCycle+0xda>
1a00083c:	6878      	ldr	r0, [r7, #4]
1a00083e:	f000 ff53 	bl	1a0016e8 <cerradura_react_main_region_Abierto_r1_init>
1a000842:	e010      	b.n	1a000866 <cerradura_runCycle+0xda>
1a000844:	6878      	ldr	r0, [r7, #4]
1a000846:	f000 ff64 	bl	1a001712 <cerradura_react_main_region_led0_r1_encendido>
1a00084a:	e00c      	b.n	1a000866 <cerradura_runCycle+0xda>
1a00084c:	6878      	ldr	r0, [r7, #4]
1a00084e:	f000 ff7b 	bl	1a001748 <cerradura_react_main_region_led0_r1_apagado>
1a000852:	e008      	b.n	1a000866 <cerradura_runCycle+0xda>
1a000854:	6878      	ldr	r0, [r7, #4]
1a000856:	f000 ff92 	bl	1a00177e <cerradura_react_main_region_Copy_1_led0_r1_encendido>
1a00085a:	e004      	b.n	1a000866 <cerradura_runCycle+0xda>
1a00085c:	6878      	ldr	r0, [r7, #4]
1a00085e:	f000 ffa9 	bl	1a0017b4 <cerradura_react_main_region_Copy_1_led0_r1_apagado>
1a000862:	e000      	b.n	1a000866 <cerradura_runCycle+0xda>
1a000864:	bf00      	nop
1a000866:	687b      	ldr	r3, [r7, #4]
1a000868:	685b      	ldr	r3, [r3, #4]
1a00086a:	1c5a      	adds	r2, r3, #1
1a00086c:	687b      	ldr	r3, [r7, #4]
1a00086e:	605a      	str	r2, [r3, #4]
1a000870:	687b      	ldr	r3, [r7, #4]
1a000872:	685b      	ldr	r3, [r3, #4]
1a000874:	2b00      	cmp	r3, #0
1a000876:	d094      	beq.n	1a0007a2 <cerradura_runCycle+0x16>
1a000878:	6878      	ldr	r0, [r7, #4]
1a00087a:	f7ff ff60 	bl	1a00073e <cerradura_clearInEvents>
1a00087e:	bf00      	nop
1a000880:	3708      	adds	r7, #8
1a000882:	46bd      	mov	sp, r7
1a000884:	bd80      	pop	{r7, pc}
1a000886:	bf00      	nop

1a000888 <cerradura_raiseTimeEvent>:
1a000888:	b480      	push	{r7}
1a00088a:	b083      	sub	sp, #12
1a00088c:	af00      	add	r7, sp, #0
1a00088e:	6078      	str	r0, [r7, #4]
1a000890:	6039      	str	r1, [r7, #0]
1a000892:	687b      	ldr	r3, [r7, #4]
1a000894:	3330      	adds	r3, #48	; 0x30
1a000896:	461a      	mov	r2, r3
1a000898:	683b      	ldr	r3, [r7, #0]
1a00089a:	429a      	cmp	r2, r3
1a00089c:	dc08      	bgt.n	1a0008b0 <cerradura_raiseTimeEvent+0x28>
1a00089e:	687b      	ldr	r3, [r7, #4]
1a0008a0:	3330      	adds	r3, #48	; 0x30
1a0008a2:	1d1a      	adds	r2, r3, #4
1a0008a4:	683b      	ldr	r3, [r7, #0]
1a0008a6:	429a      	cmp	r2, r3
1a0008a8:	d902      	bls.n	1a0008b0 <cerradura_raiseTimeEvent+0x28>
1a0008aa:	683b      	ldr	r3, [r7, #0]
1a0008ac:	2201      	movs	r2, #1
1a0008ae:	701a      	strb	r2, [r3, #0]
1a0008b0:	bf00      	nop
1a0008b2:	370c      	adds	r7, #12
1a0008b4:	46bd      	mov	sp, r7
1a0008b6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008ba:	4770      	bx	lr

1a0008bc <cerraduraIface_raise_keyPressed>:
1a0008bc:	b480      	push	{r7}
1a0008be:	b083      	sub	sp, #12
1a0008c0:	af00      	add	r7, sp, #0
1a0008c2:	6078      	str	r0, [r7, #4]
1a0008c4:	687b      	ldr	r3, [r7, #4]
1a0008c6:	2201      	movs	r2, #1
1a0008c8:	721a      	strb	r2, [r3, #8]
1a0008ca:	bf00      	nop
1a0008cc:	370c      	adds	r7, #12
1a0008ce:	46bd      	mov	sp, r7
1a0008d0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008d4:	4770      	bx	lr

1a0008d6 <cerradura_check_main_region_Cerrado_r1_wait_tr0_tr0>:
1a0008d6:	b480      	push	{r7}
1a0008d8:	b083      	sub	sp, #12
1a0008da:	af00      	add	r7, sp, #0
1a0008dc:	6078      	str	r0, [r7, #4]
1a0008de:	687b      	ldr	r3, [r7, #4]
1a0008e0:	7a1b      	ldrb	r3, [r3, #8]
1a0008e2:	4618      	mov	r0, r3
1a0008e4:	370c      	adds	r7, #12
1a0008e6:	46bd      	mov	sp, r7
1a0008e8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0008ec:	4770      	bx	lr

1a0008ee <cerradura_check_main_region_Cerrado_r1_operate_tr0_tr0>:
1a0008ee:	b480      	push	{r7}
1a0008f0:	b083      	sub	sp, #12
1a0008f2:	af00      	add	r7, sp, #0
1a0008f4:	6078      	str	r0, [r7, #4]
1a0008f6:	687b      	ldr	r3, [r7, #4]
1a0008f8:	6a1a      	ldr	r2, [r3, #32]
1a0008fa:	687b      	ldr	r3, [r7, #4]
1a0008fc:	6a9b      	ldr	r3, [r3, #40]	; 0x28
1a0008fe:	429a      	cmp	r2, r3
1a000900:	bfb4      	ite	lt
1a000902:	2301      	movlt	r3, #1
1a000904:	2300      	movge	r3, #0
1a000906:	b2db      	uxtb	r3, r3
1a000908:	4618      	mov	r0, r3
1a00090a:	370c      	adds	r7, #12
1a00090c:	46bd      	mov	sp, r7
1a00090e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000912:	4770      	bx	lr

1a000914 <cerradura_check_main_region_Cerrado_r1_operate_tr1_tr1>:
1a000914:	b480      	push	{r7}
1a000916:	b083      	sub	sp, #12
1a000918:	af00      	add	r7, sp, #0
1a00091a:	6078      	str	r0, [r7, #4]
1a00091c:	687b      	ldr	r3, [r7, #4]
1a00091e:	6a1a      	ldr	r2, [r3, #32]
1a000920:	687b      	ldr	r3, [r7, #4]
1a000922:	6a9b      	ldr	r3, [r3, #40]	; 0x28
1a000924:	429a      	cmp	r2, r3
1a000926:	bfac      	ite	ge
1a000928:	2301      	movge	r3, #1
1a00092a:	2300      	movlt	r3, #0
1a00092c:	b2db      	uxtb	r3, r3
1a00092e:	4618      	mov	r0, r3
1a000930:	370c      	adds	r7, #12
1a000932:	46bd      	mov	sp, r7
1a000934:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000938:	4770      	bx	lr

1a00093a <cerradura_check_main_region_Cerrado_r1_Validate_tr0_tr0>:
1a00093a:	b480      	push	{r7}
1a00093c:	b083      	sub	sp, #12
1a00093e:	af00      	add	r7, sp, #0
1a000940:	6078      	str	r0, [r7, #4]
1a000942:	687b      	ldr	r3, [r7, #4]
1a000944:	695a      	ldr	r2, [r3, #20]
1a000946:	687b      	ldr	r3, [r7, #4]
1a000948:	691b      	ldr	r3, [r3, #16]
1a00094a:	429a      	cmp	r2, r3
1a00094c:	bf0c      	ite	eq
1a00094e:	2301      	moveq	r3, #1
1a000950:	2300      	movne	r3, #0
1a000952:	b2db      	uxtb	r3, r3
1a000954:	4618      	mov	r0, r3
1a000956:	370c      	adds	r7, #12
1a000958:	46bd      	mov	sp, r7
1a00095a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00095e:	4770      	bx	lr

1a000960 <cerradura_check_main_region_Cerrado_r1_Validate_tr1_tr1>:
1a000960:	b480      	push	{r7}
1a000962:	b083      	sub	sp, #12
1a000964:	af00      	add	r7, sp, #0
1a000966:	6078      	str	r0, [r7, #4]
1a000968:	687b      	ldr	r3, [r7, #4]
1a00096a:	695a      	ldr	r2, [r3, #20]
1a00096c:	687b      	ldr	r3, [r7, #4]
1a00096e:	691b      	ldr	r3, [r3, #16]
1a000970:	429a      	cmp	r2, r3
1a000972:	bf14      	ite	ne
1a000974:	2301      	movne	r3, #1
1a000976:	2300      	moveq	r3, #0
1a000978:	b2db      	uxtb	r3, r3
1a00097a:	4618      	mov	r0, r3
1a00097c:	370c      	adds	r7, #12
1a00097e:	46bd      	mov	sp, r7
1a000980:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000984:	4770      	bx	lr

1a000986 <cerradura_check_main_region_Abierto_tr0_tr0>:
1a000986:	b480      	push	{r7}
1a000988:	b083      	sub	sp, #12
1a00098a:	af00      	add	r7, sp, #0
1a00098c:	6078      	str	r0, [r7, #4]
1a00098e:	687b      	ldr	r3, [r7, #4]
1a000990:	6a5a      	ldr	r2, [r3, #36]	; 0x24
1a000992:	687b      	ldr	r3, [r7, #4]
1a000994:	6a9b      	ldr	r3, [r3, #40]	; 0x28
1a000996:	429a      	cmp	r2, r3
1a000998:	bfac      	ite	ge
1a00099a:	2301      	movge	r3, #1
1a00099c:	2300      	movlt	r3, #0
1a00099e:	b2db      	uxtb	r3, r3
1a0009a0:	4618      	mov	r0, r3
1a0009a2:	370c      	adds	r7, #12
1a0009a4:	46bd      	mov	sp, r7
1a0009a6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009aa:	4770      	bx	lr

1a0009ac <cerradura_check_main_region_Abierto_r1_wait_tr0_tr0>:
1a0009ac:	b480      	push	{r7}
1a0009ae:	b083      	sub	sp, #12
1a0009b0:	af00      	add	r7, sp, #0
1a0009b2:	6078      	str	r0, [r7, #4]
1a0009b4:	687b      	ldr	r3, [r7, #4]
1a0009b6:	7a1b      	ldrb	r3, [r3, #8]
1a0009b8:	4618      	mov	r0, r3
1a0009ba:	370c      	adds	r7, #12
1a0009bc:	46bd      	mov	sp, r7
1a0009be:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009c2:	4770      	bx	lr

1a0009c4 <cerradura_check_main_region_Abierto_r1_operate_tr0_tr0>:
1a0009c4:	b480      	push	{r7}
1a0009c6:	b083      	sub	sp, #12
1a0009c8:	af00      	add	r7, sp, #0
1a0009ca:	6078      	str	r0, [r7, #4]
1a0009cc:	687b      	ldr	r3, [r7, #4]
1a0009ce:	6a5a      	ldr	r2, [r3, #36]	; 0x24
1a0009d0:	687b      	ldr	r3, [r7, #4]
1a0009d2:	6a9b      	ldr	r3, [r3, #40]	; 0x28
1a0009d4:	429a      	cmp	r2, r3
1a0009d6:	bfb4      	ite	lt
1a0009d8:	2301      	movlt	r3, #1
1a0009da:	2300      	movge	r3, #0
1a0009dc:	b2db      	uxtb	r3, r3
1a0009de:	4618      	mov	r0, r3
1a0009e0:	370c      	adds	r7, #12
1a0009e2:	46bd      	mov	sp, r7
1a0009e4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0009e8:	4770      	bx	lr

1a0009ea <cerradura_check_main_region_led0_tr0_tr0>:
1a0009ea:	b480      	push	{r7}
1a0009ec:	b083      	sub	sp, #12
1a0009ee:	af00      	add	r7, sp, #0
1a0009f0:	6078      	str	r0, [r7, #4]
1a0009f2:	687b      	ldr	r3, [r7, #4]
1a0009f4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
1a0009f6:	2b03      	cmp	r3, #3
1a0009f8:	bfcc      	ite	gt
1a0009fa:	2301      	movgt	r3, #1
1a0009fc:	2300      	movle	r3, #0
1a0009fe:	b2db      	uxtb	r3, r3
1a000a00:	4618      	mov	r0, r3
1a000a02:	370c      	adds	r7, #12
1a000a04:	46bd      	mov	sp, r7
1a000a06:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a0a:	4770      	bx	lr

1a000a0c <cerradura_check_main_region_led0_r1_encendido_tr0_tr0>:
1a000a0c:	b480      	push	{r7}
1a000a0e:	b083      	sub	sp, #12
1a000a10:	af00      	add	r7, sp, #0
1a000a12:	6078      	str	r0, [r7, #4]
1a000a14:	687b      	ldr	r3, [r7, #4]
1a000a16:	f893 3030 	ldrb.w	r3, [r3, #48]	; 0x30
1a000a1a:	4618      	mov	r0, r3
1a000a1c:	370c      	adds	r7, #12
1a000a1e:	46bd      	mov	sp, r7
1a000a20:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a24:	4770      	bx	lr

1a000a26 <cerradura_check_main_region_led0_r1_apagado_tr0_tr0>:
1a000a26:	b480      	push	{r7}
1a000a28:	b083      	sub	sp, #12
1a000a2a:	af00      	add	r7, sp, #0
1a000a2c:	6078      	str	r0, [r7, #4]
1a000a2e:	687b      	ldr	r3, [r7, #4]
1a000a30:	f893 3031 	ldrb.w	r3, [r3, #49]	; 0x31
1a000a34:	2b00      	cmp	r3, #0
1a000a36:	d005      	beq.n	1a000a44 <cerradura_check_main_region_led0_r1_apagado_tr0_tr0+0x1e>
1a000a38:	687b      	ldr	r3, [r7, #4]
1a000a3a:	6adb      	ldr	r3, [r3, #44]	; 0x2c
1a000a3c:	2b03      	cmp	r3, #3
1a000a3e:	dc01      	bgt.n	1a000a44 <cerradura_check_main_region_led0_r1_apagado_tr0_tr0+0x1e>
1a000a40:	2301      	movs	r3, #1
1a000a42:	e000      	b.n	1a000a46 <cerradura_check_main_region_led0_r1_apagado_tr0_tr0+0x20>
1a000a44:	2300      	movs	r3, #0
1a000a46:	f003 0301 	and.w	r3, r3, #1
1a000a4a:	b2db      	uxtb	r3, r3
1a000a4c:	4618      	mov	r0, r3
1a000a4e:	370c      	adds	r7, #12
1a000a50:	46bd      	mov	sp, r7
1a000a52:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a56:	4770      	bx	lr

1a000a58 <cerradura_check_main_region_Copy_1_led0_tr0_tr0>:
1a000a58:	b480      	push	{r7}
1a000a5a:	b083      	sub	sp, #12
1a000a5c:	af00      	add	r7, sp, #0
1a000a5e:	6078      	str	r0, [r7, #4]
1a000a60:	687b      	ldr	r3, [r7, #4]
1a000a62:	6adb      	ldr	r3, [r3, #44]	; 0x2c
1a000a64:	2b03      	cmp	r3, #3
1a000a66:	bfcc      	ite	gt
1a000a68:	2301      	movgt	r3, #1
1a000a6a:	2300      	movle	r3, #0
1a000a6c:	b2db      	uxtb	r3, r3
1a000a6e:	4618      	mov	r0, r3
1a000a70:	370c      	adds	r7, #12
1a000a72:	46bd      	mov	sp, r7
1a000a74:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a78:	4770      	bx	lr

1a000a7a <cerradura_check_main_region_Copy_1_led0_r1_encendido_tr0_tr0>:
1a000a7a:	b480      	push	{r7}
1a000a7c:	b083      	sub	sp, #12
1a000a7e:	af00      	add	r7, sp, #0
1a000a80:	6078      	str	r0, [r7, #4]
1a000a82:	687b      	ldr	r3, [r7, #4]
1a000a84:	f893 3032 	ldrb.w	r3, [r3, #50]	; 0x32
1a000a88:	4618      	mov	r0, r3
1a000a8a:	370c      	adds	r7, #12
1a000a8c:	46bd      	mov	sp, r7
1a000a8e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000a92:	4770      	bx	lr

1a000a94 <cerradura_check_main_region_Copy_1_led0_r1_apagado_tr0_tr0>:
1a000a94:	b480      	push	{r7}
1a000a96:	b083      	sub	sp, #12
1a000a98:	af00      	add	r7, sp, #0
1a000a9a:	6078      	str	r0, [r7, #4]
1a000a9c:	687b      	ldr	r3, [r7, #4]
1a000a9e:	f893 3033 	ldrb.w	r3, [r3, #51]	; 0x33
1a000aa2:	2b00      	cmp	r3, #0
1a000aa4:	d005      	beq.n	1a000ab2 <cerradura_check_main_region_Copy_1_led0_r1_apagado_tr0_tr0+0x1e>
1a000aa6:	687b      	ldr	r3, [r7, #4]
1a000aa8:	6adb      	ldr	r3, [r3, #44]	; 0x2c
1a000aaa:	2b03      	cmp	r3, #3
1a000aac:	dc01      	bgt.n	1a000ab2 <cerradura_check_main_region_Copy_1_led0_r1_apagado_tr0_tr0+0x1e>
1a000aae:	2301      	movs	r3, #1
1a000ab0:	e000      	b.n	1a000ab4 <cerradura_check_main_region_Copy_1_led0_r1_apagado_tr0_tr0+0x20>
1a000ab2:	2300      	movs	r3, #0
1a000ab4:	f003 0301 	and.w	r3, r3, #1
1a000ab8:	b2db      	uxtb	r3, r3
1a000aba:	4618      	mov	r0, r3
1a000abc:	370c      	adds	r7, #12
1a000abe:	46bd      	mov	sp, r7
1a000ac0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ac4:	4770      	bx	lr

1a000ac6 <cerradura_effect_main_region_Inicio_tr0>:
1a000ac6:	b580      	push	{r7, lr}
1a000ac8:	b082      	sub	sp, #8
1a000aca:	af00      	add	r7, sp, #0
1a000acc:	6078      	str	r0, [r7, #4]
1a000ace:	6878      	ldr	r0, [r7, #4]
1a000ad0:	f000 fbc4 	bl	1a00125c <cerradura_exseq_main_region_Inicio>
1a000ad4:	6878      	ldr	r0, [r7, #4]
1a000ad6:	f000 fa7e 	bl	1a000fd6 <cerradura_enseq_main_region_Cerrado_default>
1a000ada:	bf00      	nop
1a000adc:	3708      	adds	r7, #8
1a000ade:	46bd      	mov	sp, r7
1a000ae0:	bd80      	pop	{r7, pc}

1a000ae2 <cerradura_effect_main_region_Cerrado_r1_wait_tr0>:
1a000ae2:	b580      	push	{r7, lr}
1a000ae4:	b082      	sub	sp, #8
1a000ae6:	af00      	add	r7, sp, #0
1a000ae8:	6078      	str	r0, [r7, #4]
1a000aea:	6878      	ldr	r0, [r7, #4]
1a000aec:	f000 fbdc 	bl	1a0012a8 <cerradura_exseq_main_region_Cerrado_r1_wait>
1a000af0:	6878      	ldr	r0, [r7, #4]
1a000af2:	f000 fa8f 	bl	1a001014 <cerradura_enseq_main_region_Cerrado_r1_getKey_default>
1a000af6:	bf00      	nop
1a000af8:	3708      	adds	r7, #8
1a000afa:	46bd      	mov	sp, r7
1a000afc:	bd80      	pop	{r7, pc}

1a000afe <cerradura_effect_main_region_Cerrado_r1_getKey_tr0>:
1a000afe:	b580      	push	{r7, lr}
1a000b00:	b082      	sub	sp, #8
1a000b02:	af00      	add	r7, sp, #0
1a000b04:	6078      	str	r0, [r7, #4]
1a000b06:	6878      	ldr	r0, [r7, #4]
1a000b08:	f000 fbde 	bl	1a0012c8 <cerradura_exseq_main_region_Cerrado_r1_getKey>
1a000b0c:	6878      	ldr	r0, [r7, #4]
1a000b0e:	f000 fa92 	bl	1a001036 <cerradura_enseq_main_region_Cerrado_r1_operate_default>
1a000b12:	bf00      	nop
1a000b14:	3708      	adds	r7, #8
1a000b16:	46bd      	mov	sp, r7
1a000b18:	bd80      	pop	{r7, pc}

1a000b1a <cerradura_effect_main_region_Cerrado_r1_operate_tr0>:
1a000b1a:	b580      	push	{r7, lr}
1a000b1c:	b082      	sub	sp, #8
1a000b1e:	af00      	add	r7, sp, #0
1a000b20:	6078      	str	r0, [r7, #4]
1a000b22:	6878      	ldr	r0, [r7, #4]
1a000b24:	f000 fbe0 	bl	1a0012e8 <cerradura_exseq_main_region_Cerrado_r1_operate>
1a000b28:	6878      	ldr	r0, [r7, #4]
1a000b2a:	f000 fa62 	bl	1a000ff2 <cerradura_enseq_main_region_Cerrado_r1_wait_default>
1a000b2e:	bf00      	nop
1a000b30:	3708      	adds	r7, #8
1a000b32:	46bd      	mov	sp, r7
1a000b34:	bd80      	pop	{r7, pc}

1a000b36 <cerradura_effect_main_region_Cerrado_r1_operate_tr1>:
1a000b36:	b580      	push	{r7, lr}
1a000b38:	b082      	sub	sp, #8
1a000b3a:	af00      	add	r7, sp, #0
1a000b3c:	6078      	str	r0, [r7, #4]
1a000b3e:	6878      	ldr	r0, [r7, #4]
1a000b40:	f000 fbd2 	bl	1a0012e8 <cerradura_exseq_main_region_Cerrado_r1_operate>
1a000b44:	6878      	ldr	r0, [r7, #4]
1a000b46:	f000 fa87 	bl	1a001058 <cerradura_enseq_main_region_Cerrado_r1_Validate_default>
1a000b4a:	bf00      	nop
1a000b4c:	3708      	adds	r7, #8
1a000b4e:	46bd      	mov	sp, r7
1a000b50:	bd80      	pop	{r7, pc}

1a000b52 <cerradura_effect_main_region_Cerrado_r1_Validate_tr0>:
1a000b52:	b580      	push	{r7, lr}
1a000b54:	b082      	sub	sp, #8
1a000b56:	af00      	add	r7, sp, #0
1a000b58:	6078      	str	r0, [r7, #4]
1a000b5a:	6878      	ldr	r0, [r7, #4]
1a000b5c:	f000 fb99 	bl	1a001292 <cerradura_exseq_main_region_Cerrado>
1a000b60:	6878      	ldr	r0, [r7, #4]
1a000b62:	f000 fb09 	bl	1a001178 <cerradura_enseq_main_region_Copy_1_led0_default>
1a000b66:	bf00      	nop
1a000b68:	3708      	adds	r7, #8
1a000b6a:	46bd      	mov	sp, r7
1a000b6c:	bd80      	pop	{r7, pc}

1a000b6e <cerradura_effect_main_region_Cerrado_r1_Validate_tr1>:
1a000b6e:	b580      	push	{r7, lr}
1a000b70:	b082      	sub	sp, #8
1a000b72:	af00      	add	r7, sp, #0
1a000b74:	6078      	str	r0, [r7, #4]
1a000b76:	6878      	ldr	r0, [r7, #4]
1a000b78:	f000 fb8b 	bl	1a001292 <cerradura_exseq_main_region_Cerrado>
1a000b7c:	6878      	ldr	r0, [r7, #4]
1a000b7e:	f000 facb 	bl	1a001118 <cerradura_enseq_main_region_led0_default>
1a000b82:	bf00      	nop
1a000b84:	3708      	adds	r7, #8
1a000b86:	46bd      	mov	sp, r7
1a000b88:	bd80      	pop	{r7, pc}

1a000b8a <cerradura_effect_main_region_Abierto_tr0>:
1a000b8a:	b580      	push	{r7, lr}
1a000b8c:	b082      	sub	sp, #8
1a000b8e:	af00      	add	r7, sp, #0
1a000b90:	6078      	str	r0, [r7, #4]
1a000b92:	6878      	ldr	r0, [r7, #4]
1a000b94:	f000 fbc8 	bl	1a001328 <cerradura_exseq_main_region_Abierto>
1a000b98:	6878      	ldr	r0, [r7, #4]
1a000b9a:	f000 fa1c 	bl	1a000fd6 <cerradura_enseq_main_region_Cerrado_default>
1a000b9e:	bf00      	nop
1a000ba0:	3708      	adds	r7, #8
1a000ba2:	46bd      	mov	sp, r7
1a000ba4:	bd80      	pop	{r7, pc}

1a000ba6 <cerradura_effect_main_region_Abierto_r1_wait_tr0>:
1a000ba6:	b580      	push	{r7, lr}
1a000ba8:	b082      	sub	sp, #8
1a000baa:	af00      	add	r7, sp, #0
1a000bac:	6078      	str	r0, [r7, #4]
1a000bae:	6878      	ldr	r0, [r7, #4]
1a000bb0:	f000 fbc5 	bl	1a00133e <cerradura_exseq_main_region_Abierto_r1_wait>
1a000bb4:	6878      	ldr	r0, [r7, #4]
1a000bb6:	f000 fa7c 	bl	1a0010b2 <cerradura_enseq_main_region_Abierto_r1_getKey_default>
1a000bba:	bf00      	nop
1a000bbc:	3708      	adds	r7, #8
1a000bbe:	46bd      	mov	sp, r7
1a000bc0:	bd80      	pop	{r7, pc}

1a000bc2 <cerradura_effect_main_region_Abierto_r1_getKey_tr0>:
1a000bc2:	b580      	push	{r7, lr}
1a000bc4:	b082      	sub	sp, #8
1a000bc6:	af00      	add	r7, sp, #0
1a000bc8:	6078      	str	r0, [r7, #4]
1a000bca:	6878      	ldr	r0, [r7, #4]
1a000bcc:	f000 fbc7 	bl	1a00135e <cerradura_exseq_main_region_Abierto_r1_getKey>
1a000bd0:	6878      	ldr	r0, [r7, #4]
1a000bd2:	f000 fa7f 	bl	1a0010d4 <cerradura_enseq_main_region_Abierto_r1_operate_default>
1a000bd6:	bf00      	nop
1a000bd8:	3708      	adds	r7, #8
1a000bda:	46bd      	mov	sp, r7
1a000bdc:	bd80      	pop	{r7, pc}

1a000bde <cerradura_effect_main_region_Abierto_r1_operate_tr0>:
1a000bde:	b580      	push	{r7, lr}
1a000be0:	b082      	sub	sp, #8
1a000be2:	af00      	add	r7, sp, #0
1a000be4:	6078      	str	r0, [r7, #4]
1a000be6:	6878      	ldr	r0, [r7, #4]
1a000be8:	f000 fbc9 	bl	1a00137e <cerradura_exseq_main_region_Abierto_r1_operate>
1a000bec:	6878      	ldr	r0, [r7, #4]
1a000bee:	f000 fa4f 	bl	1a001090 <cerradura_enseq_main_region_Abierto_r1_wait_default>
1a000bf2:	bf00      	nop
1a000bf4:	3708      	adds	r7, #8
1a000bf6:	46bd      	mov	sp, r7
1a000bf8:	bd80      	pop	{r7, pc}

1a000bfa <cerradura_effect_main_region_Abierto_r1_init_tr0>:
1a000bfa:	b580      	push	{r7, lr}
1a000bfc:	b082      	sub	sp, #8
1a000bfe:	af00      	add	r7, sp, #0
1a000c00:	6078      	str	r0, [r7, #4]
1a000c02:	6878      	ldr	r0, [r7, #4]
1a000c04:	f000 fbcb 	bl	1a00139e <cerradura_exseq_main_region_Abierto_r1_init>
1a000c08:	6878      	ldr	r0, [r7, #4]
1a000c0a:	f000 fa41 	bl	1a001090 <cerradura_enseq_main_region_Abierto_r1_wait_default>
1a000c0e:	bf00      	nop
1a000c10:	3708      	adds	r7, #8
1a000c12:	46bd      	mov	sp, r7
1a000c14:	bd80      	pop	{r7, pc}

1a000c16 <cerradura_effect_main_region_led0_tr0>:
1a000c16:	b580      	push	{r7, lr}
1a000c18:	b082      	sub	sp, #8
1a000c1a:	af00      	add	r7, sp, #0
1a000c1c:	6078      	str	r0, [r7, #4]
1a000c1e:	6878      	ldr	r0, [r7, #4]
1a000c20:	f000 fbcd 	bl	1a0013be <cerradura_exseq_main_region_led0>
1a000c24:	6878      	ldr	r0, [r7, #4]
1a000c26:	f000 f9d6 	bl	1a000fd6 <cerradura_enseq_main_region_Cerrado_default>
1a000c2a:	bf00      	nop
1a000c2c:	3708      	adds	r7, #8
1a000c2e:	46bd      	mov	sp, r7
1a000c30:	bd80      	pop	{r7, pc}

1a000c32 <cerradura_effect_main_region_led0_r1_encendido_tr0>:
1a000c32:	b580      	push	{r7, lr}
1a000c34:	b082      	sub	sp, #8
1a000c36:	af00      	add	r7, sp, #0
1a000c38:	6078      	str	r0, [r7, #4]
1a000c3a:	6878      	ldr	r0, [r7, #4]
1a000c3c:	f000 fbca 	bl	1a0013d4 <cerradura_exseq_main_region_led0_r1_encendido>
1a000c40:	6878      	ldr	r0, [r7, #4]
1a000c42:	f000 fa88 	bl	1a001156 <cerradura_enseq_main_region_led0_r1_apagado_default>
1a000c46:	bf00      	nop
1a000c48:	3708      	adds	r7, #8
1a000c4a:	46bd      	mov	sp, r7
1a000c4c:	bd80      	pop	{r7, pc}

1a000c4e <cerradura_effect_main_region_led0_r1_apagado_tr0>:
1a000c4e:	b580      	push	{r7, lr}
1a000c50:	b082      	sub	sp, #8
1a000c52:	af00      	add	r7, sp, #0
1a000c54:	6078      	str	r0, [r7, #4]
1a000c56:	6878      	ldr	r0, [r7, #4]
1a000c58:	f000 fbcd 	bl	1a0013f6 <cerradura_exseq_main_region_led0_r1_apagado>
1a000c5c:	6878      	ldr	r0, [r7, #4]
1a000c5e:	f000 fa69 	bl	1a001134 <cerradura_enseq_main_region_led0_r1_encendido_default>
1a000c62:	bf00      	nop
1a000c64:	3708      	adds	r7, #8
1a000c66:	46bd      	mov	sp, r7
1a000c68:	bd80      	pop	{r7, pc}

1a000c6a <cerradura_effect_main_region_Copy_1_led0_tr0>:
1a000c6a:	b580      	push	{r7, lr}
1a000c6c:	b082      	sub	sp, #8
1a000c6e:	af00      	add	r7, sp, #0
1a000c70:	6078      	str	r0, [r7, #4]
1a000c72:	6878      	ldr	r0, [r7, #4]
1a000c74:	f000 fbd0 	bl	1a001418 <cerradura_exseq_main_region_Copy_1_led0>
1a000c78:	6878      	ldr	r0, [r7, #4]
1a000c7a:	f000 f9fe 	bl	1a00107a <cerradura_enseq_main_region_Abierto_default>
1a000c7e:	bf00      	nop
1a000c80:	3708      	adds	r7, #8
1a000c82:	46bd      	mov	sp, r7
1a000c84:	bd80      	pop	{r7, pc}

1a000c86 <cerradura_effect_main_region_Copy_1_led0_r1_encendido_tr0>:
1a000c86:	b580      	push	{r7, lr}
1a000c88:	b082      	sub	sp, #8
1a000c8a:	af00      	add	r7, sp, #0
1a000c8c:	6078      	str	r0, [r7, #4]
1a000c8e:	6878      	ldr	r0, [r7, #4]
1a000c90:	f000 fbcd 	bl	1a00142e <cerradura_exseq_main_region_Copy_1_led0_r1_encendido>
1a000c94:	6878      	ldr	r0, [r7, #4]
1a000c96:	f000 fa8e 	bl	1a0011b6 <cerradura_enseq_main_region_Copy_1_led0_r1_apagado_default>
1a000c9a:	bf00      	nop
1a000c9c:	3708      	adds	r7, #8
1a000c9e:	46bd      	mov	sp, r7
1a000ca0:	bd80      	pop	{r7, pc}

1a000ca2 <cerradura_effect_main_region_Copy_1_led0_r1_apagado_tr0>:
1a000ca2:	b580      	push	{r7, lr}
1a000ca4:	b082      	sub	sp, #8
1a000ca6:	af00      	add	r7, sp, #0
1a000ca8:	6078      	str	r0, [r7, #4]
1a000caa:	6878      	ldr	r0, [r7, #4]
1a000cac:	f000 fbd0 	bl	1a001450 <cerradura_exseq_main_region_Copy_1_led0_r1_apagado>
1a000cb0:	6878      	ldr	r0, [r7, #4]
1a000cb2:	f000 fa6f 	bl	1a001194 <cerradura_enseq_main_region_Copy_1_led0_r1_encendido_default>
1a000cb6:	bf00      	nop
1a000cb8:	3708      	adds	r7, #8
1a000cba:	46bd      	mov	sp, r7
1a000cbc:	bd80      	pop	{r7, pc}
1a000cbe:	Address 0x000000001a000cbe is out of bounds.


1a000cc0 <cerradura_enact_main_region_Inicio_r1_resetSystem>:
1a000cc0:	b580      	push	{r7, lr}
1a000cc2:	b082      	sub	sp, #8
1a000cc4:	af00      	add	r7, sp, #0
1a000cc6:	6078      	str	r0, [r7, #4]
1a000cc8:	2100      	movs	r1, #0
1a000cca:	6878      	ldr	r0, [r7, #4]
1a000ccc:	f000 fdf6 	bl	1a0018bc <cerraduraIface_setLedFromMask>
1a000cd0:	687b      	ldr	r3, [r7, #4]
1a000cd2:	2200      	movs	r2, #0
1a000cd4:	621a      	str	r2, [r3, #32]
1a000cd6:	687b      	ldr	r3, [r7, #4]
1a000cd8:	2206      	movs	r2, #6
1a000cda:	629a      	str	r2, [r3, #40]	; 0x28
1a000cdc:	687b      	ldr	r3, [r7, #4]
1a000cde:	4a04      	ldr	r2, [pc, #16]	; (1a000cf0 <cerradura_enact_main_region_Inicio_r1_resetSystem+0x30>)
1a000ce0:	611a      	str	r2, [r3, #16]
1a000ce2:	687b      	ldr	r3, [r7, #4]
1a000ce4:	2200      	movs	r2, #0
1a000ce6:	615a      	str	r2, [r3, #20]
1a000ce8:	bf00      	nop
1a000cea:	3708      	adds	r7, #8
1a000cec:	46bd      	mov	sp, r7
1a000cee:	bd80      	pop	{r7, pc}
1a000cf0:	0001e1b9 	.word	0x0001e1b9

1a000cf4 <cerradura_enact_main_region_Cerrado>:
1a000cf4:	b480      	push	{r7}
1a000cf6:	b083      	sub	sp, #12
1a000cf8:	af00      	add	r7, sp, #0
1a000cfa:	6078      	str	r0, [r7, #4]
1a000cfc:	687b      	ldr	r3, [r7, #4]
1a000cfe:	2200      	movs	r2, #0
1a000d00:	615a      	str	r2, [r3, #20]
1a000d02:	bf00      	nop
1a000d04:	370c      	adds	r7, #12
1a000d06:	46bd      	mov	sp, r7
1a000d08:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d0c:	4770      	bx	lr

1a000d0e <cerradura_enact_main_region_Cerrado_r1_wait>:
1a000d0e:	b580      	push	{r7, lr}
1a000d10:	b082      	sub	sp, #8
1a000d12:	af00      	add	r7, sp, #0
1a000d14:	6078      	str	r0, [r7, #4]
1a000d16:	2108      	movs	r1, #8
1a000d18:	6878      	ldr	r0, [r7, #4]
1a000d1a:	f000 fdcf 	bl	1a0018bc <cerraduraIface_setLedFromMask>
1a000d1e:	687b      	ldr	r3, [r7, #4]
1a000d20:	695a      	ldr	r2, [r3, #20]
1a000d22:	4613      	mov	r3, r2
1a000d24:	009b      	lsls	r3, r3, #2
1a000d26:	4413      	add	r3, r2
1a000d28:	005b      	lsls	r3, r3, #1
1a000d2a:	461a      	mov	r2, r3
1a000d2c:	687b      	ldr	r3, [r7, #4]
1a000d2e:	615a      	str	r2, [r3, #20]
1a000d30:	bf00      	nop
1a000d32:	3708      	adds	r7, #8
1a000d34:	46bd      	mov	sp, r7
1a000d36:	bd80      	pop	{r7, pc}

1a000d38 <cerradura_enact_main_region_Cerrado_r1_getKey>:
1a000d38:	b580      	push	{r7, lr}
1a000d3a:	b082      	sub	sp, #8
1a000d3c:	af00      	add	r7, sp, #0
1a000d3e:	6078      	str	r0, [r7, #4]
1a000d40:	6878      	ldr	r0, [r7, #4]
1a000d42:	f000 fdc7 	bl	1a0018d4 <cerraduraIface_getKeyPressed>
1a000d46:	4602      	mov	r2, r0
1a000d48:	687b      	ldr	r3, [r7, #4]
1a000d4a:	619a      	str	r2, [r3, #24]
1a000d4c:	bf00      	nop
1a000d4e:	3708      	adds	r7, #8
1a000d50:	46bd      	mov	sp, r7
1a000d52:	bd80      	pop	{r7, pc}

1a000d54 <cerradura_enact_main_region_Cerrado_r1_operate>:
1a000d54:	b480      	push	{r7}
1a000d56:	b083      	sub	sp, #12
1a000d58:	af00      	add	r7, sp, #0
1a000d5a:	6078      	str	r0, [r7, #4]
1a000d5c:	687b      	ldr	r3, [r7, #4]
1a000d5e:	6a1b      	ldr	r3, [r3, #32]
1a000d60:	1c5a      	adds	r2, r3, #1
1a000d62:	687b      	ldr	r3, [r7, #4]
1a000d64:	621a      	str	r2, [r3, #32]
1a000d66:	687b      	ldr	r3, [r7, #4]
1a000d68:	695a      	ldr	r2, [r3, #20]
1a000d6a:	687b      	ldr	r3, [r7, #4]
1a000d6c:	699b      	ldr	r3, [r3, #24]
1a000d6e:	441a      	add	r2, r3
1a000d70:	687b      	ldr	r3, [r7, #4]
1a000d72:	615a      	str	r2, [r3, #20]
1a000d74:	bf00      	nop
1a000d76:	370c      	adds	r7, #12
1a000d78:	46bd      	mov	sp, r7
1a000d7a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d7e:	4770      	bx	lr

1a000d80 <cerradura_enact_main_region_Cerrado_r1_Validate>:
1a000d80:	b480      	push	{r7}
1a000d82:	b083      	sub	sp, #12
1a000d84:	af00      	add	r7, sp, #0
1a000d86:	6078      	str	r0, [r7, #4]
1a000d88:	687b      	ldr	r3, [r7, #4]
1a000d8a:	2200      	movs	r2, #0
1a000d8c:	621a      	str	r2, [r3, #32]
1a000d8e:	687b      	ldr	r3, [r7, #4]
1a000d90:	2200      	movs	r2, #0
1a000d92:	619a      	str	r2, [r3, #24]
1a000d94:	bf00      	nop
1a000d96:	370c      	adds	r7, #12
1a000d98:	46bd      	mov	sp, r7
1a000d9a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d9e:	4770      	bx	lr

1a000da0 <cerradura_enact_main_region_Abierto_r1_wait>:
1a000da0:	b580      	push	{r7, lr}
1a000da2:	b082      	sub	sp, #8
1a000da4:	af00      	add	r7, sp, #0
1a000da6:	6078      	str	r0, [r7, #4]
1a000da8:	2110      	movs	r1, #16
1a000daa:	6878      	ldr	r0, [r7, #4]
1a000dac:	f000 fd86 	bl	1a0018bc <cerraduraIface_setLedFromMask>
1a000db0:	687b      	ldr	r3, [r7, #4]
1a000db2:	691a      	ldr	r2, [r3, #16]
1a000db4:	4613      	mov	r3, r2
1a000db6:	009b      	lsls	r3, r3, #2
1a000db8:	4413      	add	r3, r2
1a000dba:	005b      	lsls	r3, r3, #1
1a000dbc:	461a      	mov	r2, r3
1a000dbe:	687b      	ldr	r3, [r7, #4]
1a000dc0:	611a      	str	r2, [r3, #16]
1a000dc2:	bf00      	nop
1a000dc4:	3708      	adds	r7, #8
1a000dc6:	46bd      	mov	sp, r7
1a000dc8:	bd80      	pop	{r7, pc}

1a000dca <cerradura_enact_main_region_Abierto_r1_getKey>:
1a000dca:	b580      	push	{r7, lr}
1a000dcc:	b082      	sub	sp, #8
1a000dce:	af00      	add	r7, sp, #0
1a000dd0:	6078      	str	r0, [r7, #4]
1a000dd2:	6878      	ldr	r0, [r7, #4]
1a000dd4:	f000 fd7e 	bl	1a0018d4 <cerraduraIface_getKeyPressed>
1a000dd8:	4602      	mov	r2, r0
1a000dda:	687b      	ldr	r3, [r7, #4]
1a000ddc:	61da      	str	r2, [r3, #28]
1a000dde:	bf00      	nop
1a000de0:	3708      	adds	r7, #8
1a000de2:	46bd      	mov	sp, r7
1a000de4:	bd80      	pop	{r7, pc}

1a000de6 <cerradura_enact_main_region_Abierto_r1_operate>:
1a000de6:	b480      	push	{r7}
1a000de8:	b083      	sub	sp, #12
1a000dea:	af00      	add	r7, sp, #0
1a000dec:	6078      	str	r0, [r7, #4]
1a000dee:	687b      	ldr	r3, [r7, #4]
1a000df0:	6a5b      	ldr	r3, [r3, #36]	; 0x24
1a000df2:	1c5a      	adds	r2, r3, #1
1a000df4:	687b      	ldr	r3, [r7, #4]
1a000df6:	625a      	str	r2, [r3, #36]	; 0x24
1a000df8:	687b      	ldr	r3, [r7, #4]
1a000dfa:	691a      	ldr	r2, [r3, #16]
1a000dfc:	687b      	ldr	r3, [r7, #4]
1a000dfe:	69db      	ldr	r3, [r3, #28]
1a000e00:	441a      	add	r2, r3
1a000e02:	687b      	ldr	r3, [r7, #4]
1a000e04:	611a      	str	r2, [r3, #16]
1a000e06:	bf00      	nop
1a000e08:	370c      	adds	r7, #12
1a000e0a:	46bd      	mov	sp, r7
1a000e0c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e10:	4770      	bx	lr

1a000e12 <cerradura_enact_main_region_Abierto_r1_init>:
1a000e12:	b480      	push	{r7}
1a000e14:	b083      	sub	sp, #12
1a000e16:	af00      	add	r7, sp, #0
1a000e18:	6078      	str	r0, [r7, #4]
1a000e1a:	687b      	ldr	r3, [r7, #4]
1a000e1c:	2200      	movs	r2, #0
1a000e1e:	615a      	str	r2, [r3, #20]
1a000e20:	687b      	ldr	r3, [r7, #4]
1a000e22:	2200      	movs	r2, #0
1a000e24:	611a      	str	r2, [r3, #16]
1a000e26:	687b      	ldr	r3, [r7, #4]
1a000e28:	2200      	movs	r2, #0
1a000e2a:	61da      	str	r2, [r3, #28]
1a000e2c:	687b      	ldr	r3, [r7, #4]
1a000e2e:	2200      	movs	r2, #0
1a000e30:	625a      	str	r2, [r3, #36]	; 0x24
1a000e32:	bf00      	nop
1a000e34:	370c      	adds	r7, #12
1a000e36:	46bd      	mov	sp, r7
1a000e38:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e3c:	4770      	bx	lr

1a000e3e <cerradura_enact_main_region_led0>:
1a000e3e:	b580      	push	{r7, lr}
1a000e40:	b082      	sub	sp, #8
1a000e42:	af00      	add	r7, sp, #0
1a000e44:	6078      	str	r0, [r7, #4]
1a000e46:	2108      	movs	r1, #8
1a000e48:	6878      	ldr	r0, [r7, #4]
1a000e4a:	f000 fd37 	bl	1a0018bc <cerraduraIface_setLedFromMask>
1a000e4e:	687b      	ldr	r3, [r7, #4]
1a000e50:	2200      	movs	r2, #0
1a000e52:	62da      	str	r2, [r3, #44]	; 0x2c
1a000e54:	bf00      	nop
1a000e56:	3708      	adds	r7, #8
1a000e58:	46bd      	mov	sp, r7
1a000e5a:	bd80      	pop	{r7, pc}

1a000e5c <cerradura_enact_main_region_led0_r1_encendido>:
1a000e5c:	b580      	push	{r7, lr}
1a000e5e:	b082      	sub	sp, #8
1a000e60:	af00      	add	r7, sp, #0
1a000e62:	6078      	str	r0, [r7, #4]
1a000e64:	687b      	ldr	r3, [r7, #4]
1a000e66:	f103 0130 	add.w	r1, r3, #48	; 0x30
1a000e6a:	2300      	movs	r3, #0
1a000e6c:	22fa      	movs	r2, #250	; 0xfa
1a000e6e:	6878      	ldr	r0, [r7, #4]
1a000e70:	f000 fcfe 	bl	1a001870 <cerradura_setTimer>
1a000e74:	2108      	movs	r1, #8
1a000e76:	6878      	ldr	r0, [r7, #4]
1a000e78:	f000 fd20 	bl	1a0018bc <cerraduraIface_setLedFromMask>
1a000e7c:	687b      	ldr	r3, [r7, #4]
1a000e7e:	6adb      	ldr	r3, [r3, #44]	; 0x2c
1a000e80:	1c5a      	adds	r2, r3, #1
1a000e82:	687b      	ldr	r3, [r7, #4]
1a000e84:	62da      	str	r2, [r3, #44]	; 0x2c
1a000e86:	bf00      	nop
1a000e88:	3708      	adds	r7, #8
1a000e8a:	46bd      	mov	sp, r7
1a000e8c:	bd80      	pop	{r7, pc}

1a000e8e <cerradura_enact_main_region_led0_r1_apagado>:
1a000e8e:	b580      	push	{r7, lr}
1a000e90:	b082      	sub	sp, #8
1a000e92:	af00      	add	r7, sp, #0
1a000e94:	6078      	str	r0, [r7, #4]
1a000e96:	687b      	ldr	r3, [r7, #4]
1a000e98:	f103 0131 	add.w	r1, r3, #49	; 0x31
1a000e9c:	2300      	movs	r3, #0
1a000e9e:	22fa      	movs	r2, #250	; 0xfa
1a000ea0:	6878      	ldr	r0, [r7, #4]
1a000ea2:	f000 fce5 	bl	1a001870 <cerradura_setTimer>
1a000ea6:	2100      	movs	r1, #0
1a000ea8:	6878      	ldr	r0, [r7, #4]
1a000eaa:	f000 fd07 	bl	1a0018bc <cerraduraIface_setLedFromMask>
1a000eae:	bf00      	nop
1a000eb0:	3708      	adds	r7, #8
1a000eb2:	46bd      	mov	sp, r7
1a000eb4:	bd80      	pop	{r7, pc}

1a000eb6 <cerradura_enact_main_region_Copy_1_led0>:
1a000eb6:	b580      	push	{r7, lr}
1a000eb8:	b082      	sub	sp, #8
1a000eba:	af00      	add	r7, sp, #0
1a000ebc:	6078      	str	r0, [r7, #4]
1a000ebe:	2120      	movs	r1, #32
1a000ec0:	6878      	ldr	r0, [r7, #4]
1a000ec2:	f000 fcfb 	bl	1a0018bc <cerraduraIface_setLedFromMask>
1a000ec6:	687b      	ldr	r3, [r7, #4]
1a000ec8:	2200      	movs	r2, #0
1a000eca:	62da      	str	r2, [r3, #44]	; 0x2c
1a000ecc:	bf00      	nop
1a000ece:	3708      	adds	r7, #8
1a000ed0:	46bd      	mov	sp, r7
1a000ed2:	bd80      	pop	{r7, pc}

1a000ed4 <cerradura_enact_main_region_Copy_1_led0_r1_encendido>:
1a000ed4:	b580      	push	{r7, lr}
1a000ed6:	b082      	sub	sp, #8
1a000ed8:	af00      	add	r7, sp, #0
1a000eda:	6078      	str	r0, [r7, #4]
1a000edc:	687b      	ldr	r3, [r7, #4]
1a000ede:	f103 0132 	add.w	r1, r3, #50	; 0x32
1a000ee2:	2300      	movs	r3, #0
1a000ee4:	22fa      	movs	r2, #250	; 0xfa
1a000ee6:	6878      	ldr	r0, [r7, #4]
1a000ee8:	f000 fcc2 	bl	1a001870 <cerradura_setTimer>
1a000eec:	2108      	movs	r1, #8
1a000eee:	6878      	ldr	r0, [r7, #4]
1a000ef0:	f000 fce4 	bl	1a0018bc <cerraduraIface_setLedFromMask>
1a000ef4:	687b      	ldr	r3, [r7, #4]
1a000ef6:	6adb      	ldr	r3, [r3, #44]	; 0x2c
1a000ef8:	1c5a      	adds	r2, r3, #1
1a000efa:	687b      	ldr	r3, [r7, #4]
1a000efc:	62da      	str	r2, [r3, #44]	; 0x2c
1a000efe:	bf00      	nop
1a000f00:	3708      	adds	r7, #8
1a000f02:	46bd      	mov	sp, r7
1a000f04:	bd80      	pop	{r7, pc}

1a000f06 <cerradura_enact_main_region_Copy_1_led0_r1_apagado>:
1a000f06:	b580      	push	{r7, lr}
1a000f08:	b082      	sub	sp, #8
1a000f0a:	af00      	add	r7, sp, #0
1a000f0c:	6078      	str	r0, [r7, #4]
1a000f0e:	687b      	ldr	r3, [r7, #4]
1a000f10:	f103 0133 	add.w	r1, r3, #51	; 0x33
1a000f14:	2300      	movs	r3, #0
1a000f16:	22fa      	movs	r2, #250	; 0xfa
1a000f18:	6878      	ldr	r0, [r7, #4]
1a000f1a:	f000 fca9 	bl	1a001870 <cerradura_setTimer>
1a000f1e:	2100      	movs	r1, #0
1a000f20:	6878      	ldr	r0, [r7, #4]
1a000f22:	f000 fccb 	bl	1a0018bc <cerraduraIface_setLedFromMask>
1a000f26:	bf00      	nop
1a000f28:	3708      	adds	r7, #8
1a000f2a:	46bd      	mov	sp, r7
1a000f2c:	bd80      	pop	{r7, pc}

1a000f2e <cerradura_exact_main_region_led0_r1_encendido>:
1a000f2e:	b580      	push	{r7, lr}
1a000f30:	b082      	sub	sp, #8
1a000f32:	af00      	add	r7, sp, #0
1a000f34:	6078      	str	r0, [r7, #4]
1a000f36:	687b      	ldr	r3, [r7, #4]
1a000f38:	3330      	adds	r3, #48	; 0x30
1a000f3a:	4619      	mov	r1, r3
1a000f3c:	6878      	ldr	r0, [r7, #4]
1a000f3e:	f000 fcad 	bl	1a00189c <cerradura_unsetTimer>
1a000f42:	bf00      	nop
1a000f44:	3708      	adds	r7, #8
1a000f46:	46bd      	mov	sp, r7
1a000f48:	bd80      	pop	{r7, pc}

1a000f4a <cerradura_exact_main_region_led0_r1_apagado>:
1a000f4a:	b580      	push	{r7, lr}
1a000f4c:	b082      	sub	sp, #8
1a000f4e:	af00      	add	r7, sp, #0
1a000f50:	6078      	str	r0, [r7, #4]
1a000f52:	687b      	ldr	r3, [r7, #4]
1a000f54:	3331      	adds	r3, #49	; 0x31
1a000f56:	4619      	mov	r1, r3
1a000f58:	6878      	ldr	r0, [r7, #4]
1a000f5a:	f000 fc9f 	bl	1a00189c <cerradura_unsetTimer>
1a000f5e:	bf00      	nop
1a000f60:	3708      	adds	r7, #8
1a000f62:	46bd      	mov	sp, r7
1a000f64:	bd80      	pop	{r7, pc}

1a000f66 <cerradura_exact_main_region_Copy_1_led0_r1_encendido>:
1a000f66:	b580      	push	{r7, lr}
1a000f68:	b082      	sub	sp, #8
1a000f6a:	af00      	add	r7, sp, #0
1a000f6c:	6078      	str	r0, [r7, #4]
1a000f6e:	687b      	ldr	r3, [r7, #4]
1a000f70:	3332      	adds	r3, #50	; 0x32
1a000f72:	4619      	mov	r1, r3
1a000f74:	6878      	ldr	r0, [r7, #4]
1a000f76:	f000 fc91 	bl	1a00189c <cerradura_unsetTimer>
1a000f7a:	bf00      	nop
1a000f7c:	3708      	adds	r7, #8
1a000f7e:	46bd      	mov	sp, r7
1a000f80:	bd80      	pop	{r7, pc}

1a000f82 <cerradura_exact_main_region_Copy_1_led0_r1_apagado>:
1a000f82:	b580      	push	{r7, lr}
1a000f84:	b082      	sub	sp, #8
1a000f86:	af00      	add	r7, sp, #0
1a000f88:	6078      	str	r0, [r7, #4]
1a000f8a:	687b      	ldr	r3, [r7, #4]
1a000f8c:	3333      	adds	r3, #51	; 0x33
1a000f8e:	4619      	mov	r1, r3
1a000f90:	6878      	ldr	r0, [r7, #4]
1a000f92:	f000 fc83 	bl	1a00189c <cerradura_unsetTimer>
1a000f96:	bf00      	nop
1a000f98:	3708      	adds	r7, #8
1a000f9a:	46bd      	mov	sp, r7
1a000f9c:	bd80      	pop	{r7, pc}

1a000f9e <cerradura_enseq_main_region_Inicio_default>:
1a000f9e:	b580      	push	{r7, lr}
1a000fa0:	b082      	sub	sp, #8
1a000fa2:	af00      	add	r7, sp, #0
1a000fa4:	6078      	str	r0, [r7, #4]
1a000fa6:	6878      	ldr	r0, [r7, #4]
1a000fa8:	f000 f921 	bl	1a0011ee <cerradura_enseq_main_region_Inicio_r1_default>
1a000fac:	bf00      	nop
1a000fae:	3708      	adds	r7, #8
1a000fb0:	46bd      	mov	sp, r7
1a000fb2:	bd80      	pop	{r7, pc}

1a000fb4 <cerradura_enseq_main_region_Inicio_r1_resetSystem_default>:
1a000fb4:	b580      	push	{r7, lr}
1a000fb6:	b082      	sub	sp, #8
1a000fb8:	af00      	add	r7, sp, #0
1a000fba:	6078      	str	r0, [r7, #4]
1a000fbc:	6878      	ldr	r0, [r7, #4]
1a000fbe:	f7ff fe7f 	bl	1a000cc0 <cerradura_enact_main_region_Inicio_r1_resetSystem>
1a000fc2:	687b      	ldr	r3, [r7, #4]
1a000fc4:	2201      	movs	r2, #1
1a000fc6:	701a      	strb	r2, [r3, #0]
1a000fc8:	687b      	ldr	r3, [r7, #4]
1a000fca:	2200      	movs	r2, #0
1a000fcc:	605a      	str	r2, [r3, #4]
1a000fce:	bf00      	nop
1a000fd0:	3708      	adds	r7, #8
1a000fd2:	46bd      	mov	sp, r7
1a000fd4:	bd80      	pop	{r7, pc}

1a000fd6 <cerradura_enseq_main_region_Cerrado_default>:
1a000fd6:	b580      	push	{r7, lr}
1a000fd8:	b082      	sub	sp, #8
1a000fda:	af00      	add	r7, sp, #0
1a000fdc:	6078      	str	r0, [r7, #4]
1a000fde:	6878      	ldr	r0, [r7, #4]
1a000fe0:	f7ff fe88 	bl	1a000cf4 <cerradura_enact_main_region_Cerrado>
1a000fe4:	6878      	ldr	r0, [r7, #4]
1a000fe6:	f000 f90d 	bl	1a001204 <cerradura_enseq_main_region_Cerrado_r1_default>
1a000fea:	bf00      	nop
1a000fec:	3708      	adds	r7, #8
1a000fee:	46bd      	mov	sp, r7
1a000ff0:	bd80      	pop	{r7, pc}

1a000ff2 <cerradura_enseq_main_region_Cerrado_r1_wait_default>:
1a000ff2:	b580      	push	{r7, lr}
1a000ff4:	b082      	sub	sp, #8
1a000ff6:	af00      	add	r7, sp, #0
1a000ff8:	6078      	str	r0, [r7, #4]
1a000ffa:	6878      	ldr	r0, [r7, #4]
1a000ffc:	f7ff fe87 	bl	1a000d0e <cerradura_enact_main_region_Cerrado_r1_wait>
1a001000:	687b      	ldr	r3, [r7, #4]
1a001002:	2203      	movs	r2, #3
1a001004:	701a      	strb	r2, [r3, #0]
1a001006:	687b      	ldr	r3, [r7, #4]
1a001008:	2200      	movs	r2, #0
1a00100a:	605a      	str	r2, [r3, #4]
1a00100c:	bf00      	nop
1a00100e:	3708      	adds	r7, #8
1a001010:	46bd      	mov	sp, r7
1a001012:	bd80      	pop	{r7, pc}

1a001014 <cerradura_enseq_main_region_Cerrado_r1_getKey_default>:
1a001014:	b580      	push	{r7, lr}
1a001016:	b082      	sub	sp, #8
1a001018:	af00      	add	r7, sp, #0
1a00101a:	6078      	str	r0, [r7, #4]
1a00101c:	6878      	ldr	r0, [r7, #4]
1a00101e:	f7ff fe8b 	bl	1a000d38 <cerradura_enact_main_region_Cerrado_r1_getKey>
1a001022:	687b      	ldr	r3, [r7, #4]
1a001024:	2204      	movs	r2, #4
1a001026:	701a      	strb	r2, [r3, #0]
1a001028:	687b      	ldr	r3, [r7, #4]
1a00102a:	2200      	movs	r2, #0
1a00102c:	605a      	str	r2, [r3, #4]
1a00102e:	bf00      	nop
1a001030:	3708      	adds	r7, #8
1a001032:	46bd      	mov	sp, r7
1a001034:	bd80      	pop	{r7, pc}

1a001036 <cerradura_enseq_main_region_Cerrado_r1_operate_default>:
1a001036:	b580      	push	{r7, lr}
1a001038:	b082      	sub	sp, #8
1a00103a:	af00      	add	r7, sp, #0
1a00103c:	6078      	str	r0, [r7, #4]
1a00103e:	6878      	ldr	r0, [r7, #4]
1a001040:	f7ff fe88 	bl	1a000d54 <cerradura_enact_main_region_Cerrado_r1_operate>
1a001044:	687b      	ldr	r3, [r7, #4]
1a001046:	2205      	movs	r2, #5
1a001048:	701a      	strb	r2, [r3, #0]
1a00104a:	687b      	ldr	r3, [r7, #4]
1a00104c:	2200      	movs	r2, #0
1a00104e:	605a      	str	r2, [r3, #4]
1a001050:	bf00      	nop
1a001052:	3708      	adds	r7, #8
1a001054:	46bd      	mov	sp, r7
1a001056:	bd80      	pop	{r7, pc}

1a001058 <cerradura_enseq_main_region_Cerrado_r1_Validate_default>:
1a001058:	b580      	push	{r7, lr}
1a00105a:	b082      	sub	sp, #8
1a00105c:	af00      	add	r7, sp, #0
1a00105e:	6078      	str	r0, [r7, #4]
1a001060:	6878      	ldr	r0, [r7, #4]
1a001062:	f7ff fe8d 	bl	1a000d80 <cerradura_enact_main_region_Cerrado_r1_Validate>
1a001066:	687b      	ldr	r3, [r7, #4]
1a001068:	2206      	movs	r2, #6
1a00106a:	701a      	strb	r2, [r3, #0]
1a00106c:	687b      	ldr	r3, [r7, #4]
1a00106e:	2200      	movs	r2, #0
1a001070:	605a      	str	r2, [r3, #4]
1a001072:	bf00      	nop
1a001074:	3708      	adds	r7, #8
1a001076:	46bd      	mov	sp, r7
1a001078:	bd80      	pop	{r7, pc}

1a00107a <cerradura_enseq_main_region_Abierto_default>:
1a00107a:	b580      	push	{r7, lr}
1a00107c:	b082      	sub	sp, #8
1a00107e:	af00      	add	r7, sp, #0
1a001080:	6078      	str	r0, [r7, #4]
1a001082:	6878      	ldr	r0, [r7, #4]
1a001084:	f000 f8c9 	bl	1a00121a <cerradura_enseq_main_region_Abierto_r1_default>
1a001088:	bf00      	nop
1a00108a:	3708      	adds	r7, #8
1a00108c:	46bd      	mov	sp, r7
1a00108e:	bd80      	pop	{r7, pc}

1a001090 <cerradura_enseq_main_region_Abierto_r1_wait_default>:
1a001090:	b580      	push	{r7, lr}
1a001092:	b082      	sub	sp, #8
1a001094:	af00      	add	r7, sp, #0
1a001096:	6078      	str	r0, [r7, #4]
1a001098:	6878      	ldr	r0, [r7, #4]
1a00109a:	f7ff fe81 	bl	1a000da0 <cerradura_enact_main_region_Abierto_r1_wait>
1a00109e:	687b      	ldr	r3, [r7, #4]
1a0010a0:	2208      	movs	r2, #8
1a0010a2:	701a      	strb	r2, [r3, #0]
1a0010a4:	687b      	ldr	r3, [r7, #4]
1a0010a6:	2200      	movs	r2, #0
1a0010a8:	605a      	str	r2, [r3, #4]
1a0010aa:	bf00      	nop
1a0010ac:	3708      	adds	r7, #8
1a0010ae:	46bd      	mov	sp, r7
1a0010b0:	bd80      	pop	{r7, pc}

1a0010b2 <cerradura_enseq_main_region_Abierto_r1_getKey_default>:
1a0010b2:	b580      	push	{r7, lr}
1a0010b4:	b082      	sub	sp, #8
1a0010b6:	af00      	add	r7, sp, #0
1a0010b8:	6078      	str	r0, [r7, #4]
1a0010ba:	6878      	ldr	r0, [r7, #4]
1a0010bc:	f7ff fe85 	bl	1a000dca <cerradura_enact_main_region_Abierto_r1_getKey>
1a0010c0:	687b      	ldr	r3, [r7, #4]
1a0010c2:	2209      	movs	r2, #9
1a0010c4:	701a      	strb	r2, [r3, #0]
1a0010c6:	687b      	ldr	r3, [r7, #4]
1a0010c8:	2200      	movs	r2, #0
1a0010ca:	605a      	str	r2, [r3, #4]
1a0010cc:	bf00      	nop
1a0010ce:	3708      	adds	r7, #8
1a0010d0:	46bd      	mov	sp, r7
1a0010d2:	bd80      	pop	{r7, pc}

1a0010d4 <cerradura_enseq_main_region_Abierto_r1_operate_default>:
1a0010d4:	b580      	push	{r7, lr}
1a0010d6:	b082      	sub	sp, #8
1a0010d8:	af00      	add	r7, sp, #0
1a0010da:	6078      	str	r0, [r7, #4]
1a0010dc:	6878      	ldr	r0, [r7, #4]
1a0010de:	f7ff fe82 	bl	1a000de6 <cerradura_enact_main_region_Abierto_r1_operate>
1a0010e2:	687b      	ldr	r3, [r7, #4]
1a0010e4:	220a      	movs	r2, #10
1a0010e6:	701a      	strb	r2, [r3, #0]
1a0010e8:	687b      	ldr	r3, [r7, #4]
1a0010ea:	2200      	movs	r2, #0
1a0010ec:	605a      	str	r2, [r3, #4]
1a0010ee:	bf00      	nop
1a0010f0:	3708      	adds	r7, #8
1a0010f2:	46bd      	mov	sp, r7
1a0010f4:	bd80      	pop	{r7, pc}

1a0010f6 <cerradura_enseq_main_region_Abierto_r1_init_default>:
1a0010f6:	b580      	push	{r7, lr}
1a0010f8:	b082      	sub	sp, #8
1a0010fa:	af00      	add	r7, sp, #0
1a0010fc:	6078      	str	r0, [r7, #4]
1a0010fe:	6878      	ldr	r0, [r7, #4]
1a001100:	f7ff fe87 	bl	1a000e12 <cerradura_enact_main_region_Abierto_r1_init>
1a001104:	687b      	ldr	r3, [r7, #4]
1a001106:	220b      	movs	r2, #11
1a001108:	701a      	strb	r2, [r3, #0]
1a00110a:	687b      	ldr	r3, [r7, #4]
1a00110c:	2200      	movs	r2, #0
1a00110e:	605a      	str	r2, [r3, #4]
1a001110:	bf00      	nop
1a001112:	3708      	adds	r7, #8
1a001114:	46bd      	mov	sp, r7
1a001116:	bd80      	pop	{r7, pc}

1a001118 <cerradura_enseq_main_region_led0_default>:
1a001118:	b580      	push	{r7, lr}
1a00111a:	b082      	sub	sp, #8
1a00111c:	af00      	add	r7, sp, #0
1a00111e:	6078      	str	r0, [r7, #4]
1a001120:	6878      	ldr	r0, [r7, #4]
1a001122:	f7ff fe8c 	bl	1a000e3e <cerradura_enact_main_region_led0>
1a001126:	6878      	ldr	r0, [r7, #4]
1a001128:	f000 f882 	bl	1a001230 <cerradura_enseq_main_region_led0_r1_default>
1a00112c:	bf00      	nop
1a00112e:	3708      	adds	r7, #8
1a001130:	46bd      	mov	sp, r7
1a001132:	bd80      	pop	{r7, pc}

1a001134 <cerradura_enseq_main_region_led0_r1_encendido_default>:
1a001134:	b580      	push	{r7, lr}
1a001136:	b082      	sub	sp, #8
1a001138:	af00      	add	r7, sp, #0
1a00113a:	6078      	str	r0, [r7, #4]
1a00113c:	6878      	ldr	r0, [r7, #4]
1a00113e:	f7ff fe8d 	bl	1a000e5c <cerradura_enact_main_region_led0_r1_encendido>
1a001142:	687b      	ldr	r3, [r7, #4]
1a001144:	220d      	movs	r2, #13
1a001146:	701a      	strb	r2, [r3, #0]
1a001148:	687b      	ldr	r3, [r7, #4]
1a00114a:	2200      	movs	r2, #0
1a00114c:	605a      	str	r2, [r3, #4]
1a00114e:	bf00      	nop
1a001150:	3708      	adds	r7, #8
1a001152:	46bd      	mov	sp, r7
1a001154:	bd80      	pop	{r7, pc}

1a001156 <cerradura_enseq_main_region_led0_r1_apagado_default>:
1a001156:	b580      	push	{r7, lr}
1a001158:	b082      	sub	sp, #8
1a00115a:	af00      	add	r7, sp, #0
1a00115c:	6078      	str	r0, [r7, #4]
1a00115e:	6878      	ldr	r0, [r7, #4]
1a001160:	f7ff fe95 	bl	1a000e8e <cerradura_enact_main_region_led0_r1_apagado>
1a001164:	687b      	ldr	r3, [r7, #4]
1a001166:	220e      	movs	r2, #14
1a001168:	701a      	strb	r2, [r3, #0]
1a00116a:	687b      	ldr	r3, [r7, #4]
1a00116c:	2200      	movs	r2, #0
1a00116e:	605a      	str	r2, [r3, #4]
1a001170:	bf00      	nop
1a001172:	3708      	adds	r7, #8
1a001174:	46bd      	mov	sp, r7
1a001176:	bd80      	pop	{r7, pc}

1a001178 <cerradura_enseq_main_region_Copy_1_led0_default>:
1a001178:	b580      	push	{r7, lr}
1a00117a:	b082      	sub	sp, #8
1a00117c:	af00      	add	r7, sp, #0
1a00117e:	6078      	str	r0, [r7, #4]
1a001180:	6878      	ldr	r0, [r7, #4]
1a001182:	f7ff fe98 	bl	1a000eb6 <cerradura_enact_main_region_Copy_1_led0>
1a001186:	6878      	ldr	r0, [r7, #4]
1a001188:	f000 f85d 	bl	1a001246 <cerradura_enseq_main_region_Copy_1_led0_r1_default>
1a00118c:	bf00      	nop
1a00118e:	3708      	adds	r7, #8
1a001190:	46bd      	mov	sp, r7
1a001192:	bd80      	pop	{r7, pc}

1a001194 <cerradura_enseq_main_region_Copy_1_led0_r1_encendido_default>:
1a001194:	b580      	push	{r7, lr}
1a001196:	b082      	sub	sp, #8
1a001198:	af00      	add	r7, sp, #0
1a00119a:	6078      	str	r0, [r7, #4]
1a00119c:	6878      	ldr	r0, [r7, #4]
1a00119e:	f7ff fe99 	bl	1a000ed4 <cerradura_enact_main_region_Copy_1_led0_r1_encendido>
1a0011a2:	687b      	ldr	r3, [r7, #4]
1a0011a4:	2210      	movs	r2, #16
1a0011a6:	701a      	strb	r2, [r3, #0]
1a0011a8:	687b      	ldr	r3, [r7, #4]
1a0011aa:	2200      	movs	r2, #0
1a0011ac:	605a      	str	r2, [r3, #4]
1a0011ae:	bf00      	nop
1a0011b0:	3708      	adds	r7, #8
1a0011b2:	46bd      	mov	sp, r7
1a0011b4:	bd80      	pop	{r7, pc}

1a0011b6 <cerradura_enseq_main_region_Copy_1_led0_r1_apagado_default>:
1a0011b6:	b580      	push	{r7, lr}
1a0011b8:	b082      	sub	sp, #8
1a0011ba:	af00      	add	r7, sp, #0
1a0011bc:	6078      	str	r0, [r7, #4]
1a0011be:	6878      	ldr	r0, [r7, #4]
1a0011c0:	f7ff fea1 	bl	1a000f06 <cerradura_enact_main_region_Copy_1_led0_r1_apagado>
1a0011c4:	687b      	ldr	r3, [r7, #4]
1a0011c6:	2211      	movs	r2, #17
1a0011c8:	701a      	strb	r2, [r3, #0]
1a0011ca:	687b      	ldr	r3, [r7, #4]
1a0011cc:	2200      	movs	r2, #0
1a0011ce:	605a      	str	r2, [r3, #4]
1a0011d0:	bf00      	nop
1a0011d2:	3708      	adds	r7, #8
1a0011d4:	46bd      	mov	sp, r7
1a0011d6:	bd80      	pop	{r7, pc}

1a0011d8 <cerradura_enseq_main_region_default>:
1a0011d8:	b580      	push	{r7, lr}
1a0011da:	b082      	sub	sp, #8
1a0011dc:	af00      	add	r7, sp, #0
1a0011de:	6078      	str	r0, [r7, #4]
1a0011e0:	6878      	ldr	r0, [r7, #4]
1a0011e2:	f000 fb02 	bl	1a0017ea <cerradura_react_main_region__entry_Default>
1a0011e6:	bf00      	nop
1a0011e8:	3708      	adds	r7, #8
1a0011ea:	46bd      	mov	sp, r7
1a0011ec:	bd80      	pop	{r7, pc}

1a0011ee <cerradura_enseq_main_region_Inicio_r1_default>:
1a0011ee:	b580      	push	{r7, lr}
1a0011f0:	b082      	sub	sp, #8
1a0011f2:	af00      	add	r7, sp, #0
1a0011f4:	6078      	str	r0, [r7, #4]
1a0011f6:	6878      	ldr	r0, [r7, #4]
1a0011f8:	f000 fb02 	bl	1a001800 <cerradura_react_main_region_Inicio_r1__entry_Default>
1a0011fc:	bf00      	nop
1a0011fe:	3708      	adds	r7, #8
1a001200:	46bd      	mov	sp, r7
1a001202:	bd80      	pop	{r7, pc}

1a001204 <cerradura_enseq_main_region_Cerrado_r1_default>:
1a001204:	b580      	push	{r7, lr}
1a001206:	b082      	sub	sp, #8
1a001208:	af00      	add	r7, sp, #0
1a00120a:	6078      	str	r0, [r7, #4]
1a00120c:	6878      	ldr	r0, [r7, #4]
1a00120e:	f000 fb02 	bl	1a001816 <cerradura_react_main_region_Cerrado_r1__entry_Default>
1a001212:	bf00      	nop
1a001214:	3708      	adds	r7, #8
1a001216:	46bd      	mov	sp, r7
1a001218:	bd80      	pop	{r7, pc}

1a00121a <cerradura_enseq_main_region_Abierto_r1_default>:
1a00121a:	b580      	push	{r7, lr}
1a00121c:	b082      	sub	sp, #8
1a00121e:	af00      	add	r7, sp, #0
1a001220:	6078      	str	r0, [r7, #4]
1a001222:	6878      	ldr	r0, [r7, #4]
1a001224:	f000 fb02 	bl	1a00182c <cerradura_react_main_region_Abierto_r1__entry_Default>
1a001228:	bf00      	nop
1a00122a:	3708      	adds	r7, #8
1a00122c:	46bd      	mov	sp, r7
1a00122e:	bd80      	pop	{r7, pc}

1a001230 <cerradura_enseq_main_region_led0_r1_default>:
1a001230:	b580      	push	{r7, lr}
1a001232:	b082      	sub	sp, #8
1a001234:	af00      	add	r7, sp, #0
1a001236:	6078      	str	r0, [r7, #4]
1a001238:	6878      	ldr	r0, [r7, #4]
1a00123a:	f000 fb02 	bl	1a001842 <cerradura_react_main_region_led0_r1__entry_Default>
1a00123e:	bf00      	nop
1a001240:	3708      	adds	r7, #8
1a001242:	46bd      	mov	sp, r7
1a001244:	bd80      	pop	{r7, pc}

1a001246 <cerradura_enseq_main_region_Copy_1_led0_r1_default>:
1a001246:	b580      	push	{r7, lr}
1a001248:	b082      	sub	sp, #8
1a00124a:	af00      	add	r7, sp, #0
1a00124c:	6078      	str	r0, [r7, #4]
1a00124e:	6878      	ldr	r0, [r7, #4]
1a001250:	f000 fb02 	bl	1a001858 <cerradura_react_main_region_Copy_1_led0_r1__entry_Default>
1a001254:	bf00      	nop
1a001256:	3708      	adds	r7, #8
1a001258:	46bd      	mov	sp, r7
1a00125a:	bd80      	pop	{r7, pc}

1a00125c <cerradura_exseq_main_region_Inicio>:
1a00125c:	b580      	push	{r7, lr}
1a00125e:	b082      	sub	sp, #8
1a001260:	af00      	add	r7, sp, #0
1a001262:	6078      	str	r0, [r7, #4]
1a001264:	6878      	ldr	r0, [r7, #4]
1a001266:	f000 f904 	bl	1a001472 <cerradura_exseq_main_region_Inicio_r1>
1a00126a:	bf00      	nop
1a00126c:	3708      	adds	r7, #8
1a00126e:	46bd      	mov	sp, r7
1a001270:	bd80      	pop	{r7, pc}

1a001272 <cerradura_exseq_main_region_Inicio_r1_resetSystem>:
1a001272:	b480      	push	{r7}
1a001274:	b083      	sub	sp, #12
1a001276:	af00      	add	r7, sp, #0
1a001278:	6078      	str	r0, [r7, #4]
1a00127a:	687b      	ldr	r3, [r7, #4]
1a00127c:	2212      	movs	r2, #18
1a00127e:	701a      	strb	r2, [r3, #0]
1a001280:	687b      	ldr	r3, [r7, #4]
1a001282:	2200      	movs	r2, #0
1a001284:	605a      	str	r2, [r3, #4]
1a001286:	bf00      	nop
1a001288:	370c      	adds	r7, #12
1a00128a:	46bd      	mov	sp, r7
1a00128c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001290:	4770      	bx	lr

1a001292 <cerradura_exseq_main_region_Cerrado>:
1a001292:	b580      	push	{r7, lr}
1a001294:	b082      	sub	sp, #8
1a001296:	af00      	add	r7, sp, #0
1a001298:	6078      	str	r0, [r7, #4]
1a00129a:	6878      	ldr	r0, [r7, #4]
1a00129c:	f000 f8fa 	bl	1a001494 <cerradura_exseq_main_region_Cerrado_r1>
1a0012a0:	bf00      	nop
1a0012a2:	3708      	adds	r7, #8
1a0012a4:	46bd      	mov	sp, r7
1a0012a6:	bd80      	pop	{r7, pc}

1a0012a8 <cerradura_exseq_main_region_Cerrado_r1_wait>:
1a0012a8:	b480      	push	{r7}
1a0012aa:	b083      	sub	sp, #12
1a0012ac:	af00      	add	r7, sp, #0
1a0012ae:	6078      	str	r0, [r7, #4]
1a0012b0:	687b      	ldr	r3, [r7, #4]
1a0012b2:	2212      	movs	r2, #18
1a0012b4:	701a      	strb	r2, [r3, #0]
1a0012b6:	687b      	ldr	r3, [r7, #4]
1a0012b8:	2200      	movs	r2, #0
1a0012ba:	605a      	str	r2, [r3, #4]
1a0012bc:	bf00      	nop
1a0012be:	370c      	adds	r7, #12
1a0012c0:	46bd      	mov	sp, r7
1a0012c2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012c6:	4770      	bx	lr

1a0012c8 <cerradura_exseq_main_region_Cerrado_r1_getKey>:
1a0012c8:	b480      	push	{r7}
1a0012ca:	b083      	sub	sp, #12
1a0012cc:	af00      	add	r7, sp, #0
1a0012ce:	6078      	str	r0, [r7, #4]
1a0012d0:	687b      	ldr	r3, [r7, #4]
1a0012d2:	2212      	movs	r2, #18
1a0012d4:	701a      	strb	r2, [r3, #0]
1a0012d6:	687b      	ldr	r3, [r7, #4]
1a0012d8:	2200      	movs	r2, #0
1a0012da:	605a      	str	r2, [r3, #4]
1a0012dc:	bf00      	nop
1a0012de:	370c      	adds	r7, #12
1a0012e0:	46bd      	mov	sp, r7
1a0012e2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012e6:	4770      	bx	lr

1a0012e8 <cerradura_exseq_main_region_Cerrado_r1_operate>:
1a0012e8:	b480      	push	{r7}
1a0012ea:	b083      	sub	sp, #12
1a0012ec:	af00      	add	r7, sp, #0
1a0012ee:	6078      	str	r0, [r7, #4]
1a0012f0:	687b      	ldr	r3, [r7, #4]
1a0012f2:	2212      	movs	r2, #18
1a0012f4:	701a      	strb	r2, [r3, #0]
1a0012f6:	687b      	ldr	r3, [r7, #4]
1a0012f8:	2200      	movs	r2, #0
1a0012fa:	605a      	str	r2, [r3, #4]
1a0012fc:	bf00      	nop
1a0012fe:	370c      	adds	r7, #12
1a001300:	46bd      	mov	sp, r7
1a001302:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001306:	4770      	bx	lr

1a001308 <cerradura_exseq_main_region_Cerrado_r1_Validate>:
1a001308:	b480      	push	{r7}
1a00130a:	b083      	sub	sp, #12
1a00130c:	af00      	add	r7, sp, #0
1a00130e:	6078      	str	r0, [r7, #4]
1a001310:	687b      	ldr	r3, [r7, #4]
1a001312:	2212      	movs	r2, #18
1a001314:	701a      	strb	r2, [r3, #0]
1a001316:	687b      	ldr	r3, [r7, #4]
1a001318:	2200      	movs	r2, #0
1a00131a:	605a      	str	r2, [r3, #4]
1a00131c:	bf00      	nop
1a00131e:	370c      	adds	r7, #12
1a001320:	46bd      	mov	sp, r7
1a001322:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001326:	4770      	bx	lr

1a001328 <cerradura_exseq_main_region_Abierto>:
1a001328:	b580      	push	{r7, lr}
1a00132a:	b082      	sub	sp, #8
1a00132c:	af00      	add	r7, sp, #0
1a00132e:	6078      	str	r0, [r7, #4]
1a001330:	6878      	ldr	r0, [r7, #4]
1a001332:	f000 f8d9 	bl	1a0014e8 <cerradura_exseq_main_region_Abierto_r1>
1a001336:	bf00      	nop
1a001338:	3708      	adds	r7, #8
1a00133a:	46bd      	mov	sp, r7
1a00133c:	bd80      	pop	{r7, pc}

1a00133e <cerradura_exseq_main_region_Abierto_r1_wait>:
1a00133e:	b480      	push	{r7}
1a001340:	b083      	sub	sp, #12
1a001342:	af00      	add	r7, sp, #0
1a001344:	6078      	str	r0, [r7, #4]
1a001346:	687b      	ldr	r3, [r7, #4]
1a001348:	2212      	movs	r2, #18
1a00134a:	701a      	strb	r2, [r3, #0]
1a00134c:	687b      	ldr	r3, [r7, #4]
1a00134e:	2200      	movs	r2, #0
1a001350:	605a      	str	r2, [r3, #4]
1a001352:	bf00      	nop
1a001354:	370c      	adds	r7, #12
1a001356:	46bd      	mov	sp, r7
1a001358:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00135c:	4770      	bx	lr

1a00135e <cerradura_exseq_main_region_Abierto_r1_getKey>:
1a00135e:	b480      	push	{r7}
1a001360:	b083      	sub	sp, #12
1a001362:	af00      	add	r7, sp, #0
1a001364:	6078      	str	r0, [r7, #4]
1a001366:	687b      	ldr	r3, [r7, #4]
1a001368:	2212      	movs	r2, #18
1a00136a:	701a      	strb	r2, [r3, #0]
1a00136c:	687b      	ldr	r3, [r7, #4]
1a00136e:	2200      	movs	r2, #0
1a001370:	605a      	str	r2, [r3, #4]
1a001372:	bf00      	nop
1a001374:	370c      	adds	r7, #12
1a001376:	46bd      	mov	sp, r7
1a001378:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00137c:	4770      	bx	lr

1a00137e <cerradura_exseq_main_region_Abierto_r1_operate>:
1a00137e:	b480      	push	{r7}
1a001380:	b083      	sub	sp, #12
1a001382:	af00      	add	r7, sp, #0
1a001384:	6078      	str	r0, [r7, #4]
1a001386:	687b      	ldr	r3, [r7, #4]
1a001388:	2212      	movs	r2, #18
1a00138a:	701a      	strb	r2, [r3, #0]
1a00138c:	687b      	ldr	r3, [r7, #4]
1a00138e:	2200      	movs	r2, #0
1a001390:	605a      	str	r2, [r3, #4]
1a001392:	bf00      	nop
1a001394:	370c      	adds	r7, #12
1a001396:	46bd      	mov	sp, r7
1a001398:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00139c:	4770      	bx	lr

1a00139e <cerradura_exseq_main_region_Abierto_r1_init>:
1a00139e:	b480      	push	{r7}
1a0013a0:	b083      	sub	sp, #12
1a0013a2:	af00      	add	r7, sp, #0
1a0013a4:	6078      	str	r0, [r7, #4]
1a0013a6:	687b      	ldr	r3, [r7, #4]
1a0013a8:	2212      	movs	r2, #18
1a0013aa:	701a      	strb	r2, [r3, #0]
1a0013ac:	687b      	ldr	r3, [r7, #4]
1a0013ae:	2200      	movs	r2, #0
1a0013b0:	605a      	str	r2, [r3, #4]
1a0013b2:	bf00      	nop
1a0013b4:	370c      	adds	r7, #12
1a0013b6:	46bd      	mov	sp, r7
1a0013b8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0013bc:	4770      	bx	lr

1a0013be <cerradura_exseq_main_region_led0>:
1a0013be:	b580      	push	{r7, lr}
1a0013c0:	b082      	sub	sp, #8
1a0013c2:	af00      	add	r7, sp, #0
1a0013c4:	6078      	str	r0, [r7, #4]
1a0013c6:	6878      	ldr	r0, [r7, #4]
1a0013c8:	f000 f8b8 	bl	1a00153c <cerradura_exseq_main_region_led0_r1>
1a0013cc:	bf00      	nop
1a0013ce:	3708      	adds	r7, #8
1a0013d0:	46bd      	mov	sp, r7
1a0013d2:	bd80      	pop	{r7, pc}

1a0013d4 <cerradura_exseq_main_region_led0_r1_encendido>:
1a0013d4:	b580      	push	{r7, lr}
1a0013d6:	b082      	sub	sp, #8
1a0013d8:	af00      	add	r7, sp, #0
1a0013da:	6078      	str	r0, [r7, #4]
1a0013dc:	687b      	ldr	r3, [r7, #4]
1a0013de:	2212      	movs	r2, #18
1a0013e0:	701a      	strb	r2, [r3, #0]
1a0013e2:	687b      	ldr	r3, [r7, #4]
1a0013e4:	2200      	movs	r2, #0
1a0013e6:	605a      	str	r2, [r3, #4]
1a0013e8:	6878      	ldr	r0, [r7, #4]
1a0013ea:	f7ff fda0 	bl	1a000f2e <cerradura_exact_main_region_led0_r1_encendido>
1a0013ee:	bf00      	nop
1a0013f0:	3708      	adds	r7, #8
1a0013f2:	46bd      	mov	sp, r7
1a0013f4:	bd80      	pop	{r7, pc}

1a0013f6 <cerradura_exseq_main_region_led0_r1_apagado>:
1a0013f6:	b580      	push	{r7, lr}
1a0013f8:	b082      	sub	sp, #8
1a0013fa:	af00      	add	r7, sp, #0
1a0013fc:	6078      	str	r0, [r7, #4]
1a0013fe:	687b      	ldr	r3, [r7, #4]
1a001400:	2212      	movs	r2, #18
1a001402:	701a      	strb	r2, [r3, #0]
1a001404:	687b      	ldr	r3, [r7, #4]
1a001406:	2200      	movs	r2, #0
1a001408:	605a      	str	r2, [r3, #4]
1a00140a:	6878      	ldr	r0, [r7, #4]
1a00140c:	f7ff fd9d 	bl	1a000f4a <cerradura_exact_main_region_led0_r1_apagado>
1a001410:	bf00      	nop
1a001412:	3708      	adds	r7, #8
1a001414:	46bd      	mov	sp, r7
1a001416:	bd80      	pop	{r7, pc}

1a001418 <cerradura_exseq_main_region_Copy_1_led0>:
1a001418:	b580      	push	{r7, lr}
1a00141a:	b082      	sub	sp, #8
1a00141c:	af00      	add	r7, sp, #0
1a00141e:	6078      	str	r0, [r7, #4]
1a001420:	6878      	ldr	r0, [r7, #4]
1a001422:	f000 f8a2 	bl	1a00156a <cerradura_exseq_main_region_Copy_1_led0_r1>
1a001426:	bf00      	nop
1a001428:	3708      	adds	r7, #8
1a00142a:	46bd      	mov	sp, r7
1a00142c:	bd80      	pop	{r7, pc}

1a00142e <cerradura_exseq_main_region_Copy_1_led0_r1_encendido>:
1a00142e:	b580      	push	{r7, lr}
1a001430:	b082      	sub	sp, #8
1a001432:	af00      	add	r7, sp, #0
1a001434:	6078      	str	r0, [r7, #4]
1a001436:	687b      	ldr	r3, [r7, #4]
1a001438:	2212      	movs	r2, #18
1a00143a:	701a      	strb	r2, [r3, #0]
1a00143c:	687b      	ldr	r3, [r7, #4]
1a00143e:	2200      	movs	r2, #0
1a001440:	605a      	str	r2, [r3, #4]
1a001442:	6878      	ldr	r0, [r7, #4]
1a001444:	f7ff fd8f 	bl	1a000f66 <cerradura_exact_main_region_Copy_1_led0_r1_encendido>
1a001448:	bf00      	nop
1a00144a:	3708      	adds	r7, #8
1a00144c:	46bd      	mov	sp, r7
1a00144e:	bd80      	pop	{r7, pc}

1a001450 <cerradura_exseq_main_region_Copy_1_led0_r1_apagado>:
1a001450:	b580      	push	{r7, lr}
1a001452:	b082      	sub	sp, #8
1a001454:	af00      	add	r7, sp, #0
1a001456:	6078      	str	r0, [r7, #4]
1a001458:	687b      	ldr	r3, [r7, #4]
1a00145a:	2212      	movs	r2, #18
1a00145c:	701a      	strb	r2, [r3, #0]
1a00145e:	687b      	ldr	r3, [r7, #4]
1a001460:	2200      	movs	r2, #0
1a001462:	605a      	str	r2, [r3, #4]
1a001464:	6878      	ldr	r0, [r7, #4]
1a001466:	f7ff fd8c 	bl	1a000f82 <cerradura_exact_main_region_Copy_1_led0_r1_apagado>
1a00146a:	bf00      	nop
1a00146c:	3708      	adds	r7, #8
1a00146e:	46bd      	mov	sp, r7
1a001470:	bd80      	pop	{r7, pc}

1a001472 <cerradura_exseq_main_region_Inicio_r1>:
1a001472:	b580      	push	{r7, lr}
1a001474:	b082      	sub	sp, #8
1a001476:	af00      	add	r7, sp, #0
1a001478:	6078      	str	r0, [r7, #4]
1a00147a:	687b      	ldr	r3, [r7, #4]
1a00147c:	781b      	ldrb	r3, [r3, #0]
1a00147e:	2b01      	cmp	r3, #1
1a001480:	d000      	beq.n	1a001484 <cerradura_exseq_main_region_Inicio_r1+0x12>
1a001482:	e003      	b.n	1a00148c <cerradura_exseq_main_region_Inicio_r1+0x1a>
1a001484:	6878      	ldr	r0, [r7, #4]
1a001486:	f7ff fef4 	bl	1a001272 <cerradura_exseq_main_region_Inicio_r1_resetSystem>
1a00148a:	bf00      	nop
1a00148c:	bf00      	nop
1a00148e:	3708      	adds	r7, #8
1a001490:	46bd      	mov	sp, r7
1a001492:	bd80      	pop	{r7, pc}

1a001494 <cerradura_exseq_main_region_Cerrado_r1>:
1a001494:	b580      	push	{r7, lr}
1a001496:	b082      	sub	sp, #8
1a001498:	af00      	add	r7, sp, #0
1a00149a:	6078      	str	r0, [r7, #4]
1a00149c:	687b      	ldr	r3, [r7, #4]
1a00149e:	781b      	ldrb	r3, [r3, #0]
1a0014a0:	3b03      	subs	r3, #3
1a0014a2:	2b03      	cmp	r3, #3
1a0014a4:	d81a      	bhi.n	1a0014dc <cerradura_exseq_main_region_Cerrado_r1+0x48>
1a0014a6:	a201      	add	r2, pc, #4	; (adr r2, 1a0014ac <cerradura_exseq_main_region_Cerrado_r1+0x18>)
1a0014a8:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a0014ac:	1a0014bd 	.word	0x1a0014bd
1a0014b0:	1a0014c5 	.word	0x1a0014c5
1a0014b4:	1a0014cd 	.word	0x1a0014cd
1a0014b8:	1a0014d5 	.word	0x1a0014d5
1a0014bc:	6878      	ldr	r0, [r7, #4]
1a0014be:	f7ff fef3 	bl	1a0012a8 <cerradura_exseq_main_region_Cerrado_r1_wait>
1a0014c2:	e00c      	b.n	1a0014de <cerradura_exseq_main_region_Cerrado_r1+0x4a>
1a0014c4:	6878      	ldr	r0, [r7, #4]
1a0014c6:	f7ff feff 	bl	1a0012c8 <cerradura_exseq_main_region_Cerrado_r1_getKey>
1a0014ca:	e008      	b.n	1a0014de <cerradura_exseq_main_region_Cerrado_r1+0x4a>
1a0014cc:	6878      	ldr	r0, [r7, #4]
1a0014ce:	f7ff ff0b 	bl	1a0012e8 <cerradura_exseq_main_region_Cerrado_r1_operate>
1a0014d2:	e004      	b.n	1a0014de <cerradura_exseq_main_region_Cerrado_r1+0x4a>
1a0014d4:	6878      	ldr	r0, [r7, #4]
1a0014d6:	f7ff ff17 	bl	1a001308 <cerradura_exseq_main_region_Cerrado_r1_Validate>
1a0014da:	e000      	b.n	1a0014de <cerradura_exseq_main_region_Cerrado_r1+0x4a>
1a0014dc:	bf00      	nop
1a0014de:	bf00      	nop
1a0014e0:	3708      	adds	r7, #8
1a0014e2:	46bd      	mov	sp, r7
1a0014e4:	bd80      	pop	{r7, pc}
1a0014e6:	bf00      	nop

1a0014e8 <cerradura_exseq_main_region_Abierto_r1>:
1a0014e8:	b580      	push	{r7, lr}
1a0014ea:	b082      	sub	sp, #8
1a0014ec:	af00      	add	r7, sp, #0
1a0014ee:	6078      	str	r0, [r7, #4]
1a0014f0:	687b      	ldr	r3, [r7, #4]
1a0014f2:	781b      	ldrb	r3, [r3, #0]
1a0014f4:	3b08      	subs	r3, #8
1a0014f6:	2b03      	cmp	r3, #3
1a0014f8:	d81a      	bhi.n	1a001530 <cerradura_exseq_main_region_Abierto_r1+0x48>
1a0014fa:	a201      	add	r2, pc, #4	; (adr r2, 1a001500 <cerradura_exseq_main_region_Abierto_r1+0x18>)
1a0014fc:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a001500:	1a001511 	.word	0x1a001511
1a001504:	1a001519 	.word	0x1a001519
1a001508:	1a001521 	.word	0x1a001521
1a00150c:	1a001529 	.word	0x1a001529
1a001510:	6878      	ldr	r0, [r7, #4]
1a001512:	f7ff ff14 	bl	1a00133e <cerradura_exseq_main_region_Abierto_r1_wait>
1a001516:	e00c      	b.n	1a001532 <cerradura_exseq_main_region_Abierto_r1+0x4a>
1a001518:	6878      	ldr	r0, [r7, #4]
1a00151a:	f7ff ff20 	bl	1a00135e <cerradura_exseq_main_region_Abierto_r1_getKey>
1a00151e:	e008      	b.n	1a001532 <cerradura_exseq_main_region_Abierto_r1+0x4a>
1a001520:	6878      	ldr	r0, [r7, #4]
1a001522:	f7ff ff2c 	bl	1a00137e <cerradura_exseq_main_region_Abierto_r1_operate>
1a001526:	e004      	b.n	1a001532 <cerradura_exseq_main_region_Abierto_r1+0x4a>
1a001528:	6878      	ldr	r0, [r7, #4]
1a00152a:	f7ff ff38 	bl	1a00139e <cerradura_exseq_main_region_Abierto_r1_init>
1a00152e:	e000      	b.n	1a001532 <cerradura_exseq_main_region_Abierto_r1+0x4a>
1a001530:	bf00      	nop
1a001532:	bf00      	nop
1a001534:	3708      	adds	r7, #8
1a001536:	46bd      	mov	sp, r7
1a001538:	bd80      	pop	{r7, pc}
1a00153a:	bf00      	nop

1a00153c <cerradura_exseq_main_region_led0_r1>:
1a00153c:	b580      	push	{r7, lr}
1a00153e:	b082      	sub	sp, #8
1a001540:	af00      	add	r7, sp, #0
1a001542:	6078      	str	r0, [r7, #4]
1a001544:	687b      	ldr	r3, [r7, #4]
1a001546:	781b      	ldrb	r3, [r3, #0]
1a001548:	2b0d      	cmp	r3, #13
1a00154a:	d002      	beq.n	1a001552 <cerradura_exseq_main_region_led0_r1+0x16>
1a00154c:	2b0e      	cmp	r3, #14
1a00154e:	d004      	beq.n	1a00155a <cerradura_exseq_main_region_led0_r1+0x1e>
1a001550:	e007      	b.n	1a001562 <cerradura_exseq_main_region_led0_r1+0x26>
1a001552:	6878      	ldr	r0, [r7, #4]
1a001554:	f7ff ff3e 	bl	1a0013d4 <cerradura_exseq_main_region_led0_r1_encendido>
1a001558:	e003      	b.n	1a001562 <cerradura_exseq_main_region_led0_r1+0x26>
1a00155a:	6878      	ldr	r0, [r7, #4]
1a00155c:	f7ff ff4b 	bl	1a0013f6 <cerradura_exseq_main_region_led0_r1_apagado>
1a001560:	bf00      	nop
1a001562:	bf00      	nop
1a001564:	3708      	adds	r7, #8
1a001566:	46bd      	mov	sp, r7
1a001568:	bd80      	pop	{r7, pc}

1a00156a <cerradura_exseq_main_region_Copy_1_led0_r1>:
1a00156a:	b580      	push	{r7, lr}
1a00156c:	b082      	sub	sp, #8
1a00156e:	af00      	add	r7, sp, #0
1a001570:	6078      	str	r0, [r7, #4]
1a001572:	687b      	ldr	r3, [r7, #4]
1a001574:	781b      	ldrb	r3, [r3, #0]
1a001576:	2b10      	cmp	r3, #16
1a001578:	d002      	beq.n	1a001580 <cerradura_exseq_main_region_Copy_1_led0_r1+0x16>
1a00157a:	2b11      	cmp	r3, #17
1a00157c:	d004      	beq.n	1a001588 <cerradura_exseq_main_region_Copy_1_led0_r1+0x1e>
1a00157e:	e007      	b.n	1a001590 <cerradura_exseq_main_region_Copy_1_led0_r1+0x26>
1a001580:	6878      	ldr	r0, [r7, #4]
1a001582:	f7ff ff54 	bl	1a00142e <cerradura_exseq_main_region_Copy_1_led0_r1_encendido>
1a001586:	e003      	b.n	1a001590 <cerradura_exseq_main_region_Copy_1_led0_r1+0x26>
1a001588:	6878      	ldr	r0, [r7, #4]
1a00158a:	f7ff ff61 	bl	1a001450 <cerradura_exseq_main_region_Copy_1_led0_r1_apagado>
1a00158e:	bf00      	nop
1a001590:	bf00      	nop
1a001592:	3708      	adds	r7, #8
1a001594:	46bd      	mov	sp, r7
1a001596:	bd80      	pop	{r7, pc}

1a001598 <cerradura_react_main_region_Inicio_r1_resetSystem>:
1a001598:	b580      	push	{r7, lr}
1a00159a:	b082      	sub	sp, #8
1a00159c:	af00      	add	r7, sp, #0
1a00159e:	6078      	str	r0, [r7, #4]
1a0015a0:	6878      	ldr	r0, [r7, #4]
1a0015a2:	f7ff fa90 	bl	1a000ac6 <cerradura_effect_main_region_Inicio_tr0>
1a0015a6:	bf00      	nop
1a0015a8:	3708      	adds	r7, #8
1a0015aa:	46bd      	mov	sp, r7
1a0015ac:	bd80      	pop	{r7, pc}

1a0015ae <cerradura_react_main_region_Cerrado_r1_wait>:
1a0015ae:	b580      	push	{r7, lr}
1a0015b0:	b082      	sub	sp, #8
1a0015b2:	af00      	add	r7, sp, #0
1a0015b4:	6078      	str	r0, [r7, #4]
1a0015b6:	6878      	ldr	r0, [r7, #4]
1a0015b8:	f7ff f98d 	bl	1a0008d6 <cerradura_check_main_region_Cerrado_r1_wait_tr0_tr0>
1a0015bc:	4603      	mov	r3, r0
1a0015be:	2b00      	cmp	r3, #0
1a0015c0:	d002      	beq.n	1a0015c8 <cerradura_react_main_region_Cerrado_r1_wait+0x1a>
1a0015c2:	6878      	ldr	r0, [r7, #4]
1a0015c4:	f7ff fa8d 	bl	1a000ae2 <cerradura_effect_main_region_Cerrado_r1_wait_tr0>
1a0015c8:	bf00      	nop
1a0015ca:	3708      	adds	r7, #8
1a0015cc:	46bd      	mov	sp, r7
1a0015ce:	bd80      	pop	{r7, pc}

1a0015d0 <cerradura_react_main_region_Cerrado_r1_getKey>:
1a0015d0:	b580      	push	{r7, lr}
1a0015d2:	b082      	sub	sp, #8
1a0015d4:	af00      	add	r7, sp, #0
1a0015d6:	6078      	str	r0, [r7, #4]
1a0015d8:	6878      	ldr	r0, [r7, #4]
1a0015da:	f7ff fa90 	bl	1a000afe <cerradura_effect_main_region_Cerrado_r1_getKey_tr0>
1a0015de:	bf00      	nop
1a0015e0:	3708      	adds	r7, #8
1a0015e2:	46bd      	mov	sp, r7
1a0015e4:	bd80      	pop	{r7, pc}

1a0015e6 <cerradura_react_main_region_Cerrado_r1_operate>:
1a0015e6:	b580      	push	{r7, lr}
1a0015e8:	b082      	sub	sp, #8
1a0015ea:	af00      	add	r7, sp, #0
1a0015ec:	6078      	str	r0, [r7, #4]
1a0015ee:	6878      	ldr	r0, [r7, #4]
1a0015f0:	f7ff f97d 	bl	1a0008ee <cerradura_check_main_region_Cerrado_r1_operate_tr0_tr0>
1a0015f4:	4603      	mov	r3, r0
1a0015f6:	2b00      	cmp	r3, #0
1a0015f8:	d003      	beq.n	1a001602 <cerradura_react_main_region_Cerrado_r1_operate+0x1c>
1a0015fa:	6878      	ldr	r0, [r7, #4]
1a0015fc:	f7ff fa8d 	bl	1a000b1a <cerradura_effect_main_region_Cerrado_r1_operate_tr0>
1a001600:	e008      	b.n	1a001614 <cerradura_react_main_region_Cerrado_r1_operate+0x2e>
1a001602:	6878      	ldr	r0, [r7, #4]
1a001604:	f7ff f986 	bl	1a000914 <cerradura_check_main_region_Cerrado_r1_operate_tr1_tr1>
1a001608:	4603      	mov	r3, r0
1a00160a:	2b00      	cmp	r3, #0
1a00160c:	d002      	beq.n	1a001614 <cerradura_react_main_region_Cerrado_r1_operate+0x2e>
1a00160e:	6878      	ldr	r0, [r7, #4]
1a001610:	f7ff fa91 	bl	1a000b36 <cerradura_effect_main_region_Cerrado_r1_operate_tr1>
1a001614:	bf00      	nop
1a001616:	3708      	adds	r7, #8
1a001618:	46bd      	mov	sp, r7
1a00161a:	bd80      	pop	{r7, pc}

1a00161c <cerradura_react_main_region_Cerrado_r1_Validate>:
1a00161c:	b580      	push	{r7, lr}
1a00161e:	b082      	sub	sp, #8
1a001620:	af00      	add	r7, sp, #0
1a001622:	6078      	str	r0, [r7, #4]
1a001624:	6878      	ldr	r0, [r7, #4]
1a001626:	f7ff f988 	bl	1a00093a <cerradura_check_main_region_Cerrado_r1_Validate_tr0_tr0>
1a00162a:	4603      	mov	r3, r0
1a00162c:	2b00      	cmp	r3, #0
1a00162e:	d003      	beq.n	1a001638 <cerradura_react_main_region_Cerrado_r1_Validate+0x1c>
1a001630:	6878      	ldr	r0, [r7, #4]
1a001632:	f7ff fa8e 	bl	1a000b52 <cerradura_effect_main_region_Cerrado_r1_Validate_tr0>
1a001636:	e008      	b.n	1a00164a <cerradura_react_main_region_Cerrado_r1_Validate+0x2e>
1a001638:	6878      	ldr	r0, [r7, #4]
1a00163a:	f7ff f991 	bl	1a000960 <cerradura_check_main_region_Cerrado_r1_Validate_tr1_tr1>
1a00163e:	4603      	mov	r3, r0
1a001640:	2b00      	cmp	r3, #0
1a001642:	d002      	beq.n	1a00164a <cerradura_react_main_region_Cerrado_r1_Validate+0x2e>
1a001644:	6878      	ldr	r0, [r7, #4]
1a001646:	f7ff fa92 	bl	1a000b6e <cerradura_effect_main_region_Cerrado_r1_Validate_tr1>
1a00164a:	bf00      	nop
1a00164c:	3708      	adds	r7, #8
1a00164e:	46bd      	mov	sp, r7
1a001650:	bd80      	pop	{r7, pc}

1a001652 <cerradura_react_main_region_Abierto_r1_wait>:
1a001652:	b580      	push	{r7, lr}
1a001654:	b082      	sub	sp, #8
1a001656:	af00      	add	r7, sp, #0
1a001658:	6078      	str	r0, [r7, #4]
1a00165a:	6878      	ldr	r0, [r7, #4]
1a00165c:	f7ff f993 	bl	1a000986 <cerradura_check_main_region_Abierto_tr0_tr0>
1a001660:	4603      	mov	r3, r0
1a001662:	2b00      	cmp	r3, #0
1a001664:	d003      	beq.n	1a00166e <cerradura_react_main_region_Abierto_r1_wait+0x1c>
1a001666:	6878      	ldr	r0, [r7, #4]
1a001668:	f7ff fa8f 	bl	1a000b8a <cerradura_effect_main_region_Abierto_tr0>
1a00166c:	e008      	b.n	1a001680 <cerradura_react_main_region_Abierto_r1_wait+0x2e>
1a00166e:	6878      	ldr	r0, [r7, #4]
1a001670:	f7ff f99c 	bl	1a0009ac <cerradura_check_main_region_Abierto_r1_wait_tr0_tr0>
1a001674:	4603      	mov	r3, r0
1a001676:	2b00      	cmp	r3, #0
1a001678:	d002      	beq.n	1a001680 <cerradura_react_main_region_Abierto_r1_wait+0x2e>
1a00167a:	6878      	ldr	r0, [r7, #4]
1a00167c:	f7ff fa93 	bl	1a000ba6 <cerradura_effect_main_region_Abierto_r1_wait_tr0>
1a001680:	bf00      	nop
1a001682:	3708      	adds	r7, #8
1a001684:	46bd      	mov	sp, r7
1a001686:	bd80      	pop	{r7, pc}

1a001688 <cerradura_react_main_region_Abierto_r1_getKey>:
1a001688:	b580      	push	{r7, lr}
1a00168a:	b082      	sub	sp, #8
1a00168c:	af00      	add	r7, sp, #0
1a00168e:	6078      	str	r0, [r7, #4]
1a001690:	6878      	ldr	r0, [r7, #4]
1a001692:	f7ff f978 	bl	1a000986 <cerradura_check_main_region_Abierto_tr0_tr0>
1a001696:	4603      	mov	r3, r0
1a001698:	2b00      	cmp	r3, #0
1a00169a:	d003      	beq.n	1a0016a4 <cerradura_react_main_region_Abierto_r1_getKey+0x1c>
1a00169c:	6878      	ldr	r0, [r7, #4]
1a00169e:	f7ff fa74 	bl	1a000b8a <cerradura_effect_main_region_Abierto_tr0>
1a0016a2:	e002      	b.n	1a0016aa <cerradura_react_main_region_Abierto_r1_getKey+0x22>
1a0016a4:	6878      	ldr	r0, [r7, #4]
1a0016a6:	f7ff fa8c 	bl	1a000bc2 <cerradura_effect_main_region_Abierto_r1_getKey_tr0>
1a0016aa:	bf00      	nop
1a0016ac:	3708      	adds	r7, #8
1a0016ae:	46bd      	mov	sp, r7
1a0016b0:	bd80      	pop	{r7, pc}

1a0016b2 <cerradura_react_main_region_Abierto_r1_operate>:
1a0016b2:	b580      	push	{r7, lr}
1a0016b4:	b082      	sub	sp, #8
1a0016b6:	af00      	add	r7, sp, #0
1a0016b8:	6078      	str	r0, [r7, #4]
1a0016ba:	6878      	ldr	r0, [r7, #4]
1a0016bc:	f7ff f963 	bl	1a000986 <cerradura_check_main_region_Abierto_tr0_tr0>
1a0016c0:	4603      	mov	r3, r0
1a0016c2:	2b00      	cmp	r3, #0
1a0016c4:	d003      	beq.n	1a0016ce <cerradura_react_main_region_Abierto_r1_operate+0x1c>
1a0016c6:	6878      	ldr	r0, [r7, #4]
1a0016c8:	f7ff fa5f 	bl	1a000b8a <cerradura_effect_main_region_Abierto_tr0>
1a0016cc:	e008      	b.n	1a0016e0 <cerradura_react_main_region_Abierto_r1_operate+0x2e>
1a0016ce:	6878      	ldr	r0, [r7, #4]
1a0016d0:	f7ff f978 	bl	1a0009c4 <cerradura_check_main_region_Abierto_r1_operate_tr0_tr0>
1a0016d4:	4603      	mov	r3, r0
1a0016d6:	2b00      	cmp	r3, #0
1a0016d8:	d002      	beq.n	1a0016e0 <cerradura_react_main_region_Abierto_r1_operate+0x2e>
1a0016da:	6878      	ldr	r0, [r7, #4]
1a0016dc:	f7ff fa7f 	bl	1a000bde <cerradura_effect_main_region_Abierto_r1_operate_tr0>
1a0016e0:	bf00      	nop
1a0016e2:	3708      	adds	r7, #8
1a0016e4:	46bd      	mov	sp, r7
1a0016e6:	bd80      	pop	{r7, pc}

1a0016e8 <cerradura_react_main_region_Abierto_r1_init>:
1a0016e8:	b580      	push	{r7, lr}
1a0016ea:	b082      	sub	sp, #8
1a0016ec:	af00      	add	r7, sp, #0
1a0016ee:	6078      	str	r0, [r7, #4]
1a0016f0:	6878      	ldr	r0, [r7, #4]
1a0016f2:	f7ff f948 	bl	1a000986 <cerradura_check_main_region_Abierto_tr0_tr0>
1a0016f6:	4603      	mov	r3, r0
1a0016f8:	2b00      	cmp	r3, #0
1a0016fa:	d003      	beq.n	1a001704 <cerradura_react_main_region_Abierto_r1_init+0x1c>
1a0016fc:	6878      	ldr	r0, [r7, #4]
1a0016fe:	f7ff fa44 	bl	1a000b8a <cerradura_effect_main_region_Abierto_tr0>
1a001702:	e002      	b.n	1a00170a <cerradura_react_main_region_Abierto_r1_init+0x22>
1a001704:	6878      	ldr	r0, [r7, #4]
1a001706:	f7ff fa78 	bl	1a000bfa <cerradura_effect_main_region_Abierto_r1_init_tr0>
1a00170a:	bf00      	nop
1a00170c:	3708      	adds	r7, #8
1a00170e:	46bd      	mov	sp, r7
1a001710:	bd80      	pop	{r7, pc}

1a001712 <cerradura_react_main_region_led0_r1_encendido>:
1a001712:	b580      	push	{r7, lr}
1a001714:	b082      	sub	sp, #8
1a001716:	af00      	add	r7, sp, #0
1a001718:	6078      	str	r0, [r7, #4]
1a00171a:	6878      	ldr	r0, [r7, #4]
1a00171c:	f7ff f965 	bl	1a0009ea <cerradura_check_main_region_led0_tr0_tr0>
1a001720:	4603      	mov	r3, r0
1a001722:	2b00      	cmp	r3, #0
1a001724:	d003      	beq.n	1a00172e <cerradura_react_main_region_led0_r1_encendido+0x1c>
1a001726:	6878      	ldr	r0, [r7, #4]
1a001728:	f7ff fa75 	bl	1a000c16 <cerradura_effect_main_region_led0_tr0>
1a00172c:	e008      	b.n	1a001740 <cerradura_react_main_region_led0_r1_encendido+0x2e>
1a00172e:	6878      	ldr	r0, [r7, #4]
1a001730:	f7ff f96c 	bl	1a000a0c <cerradura_check_main_region_led0_r1_encendido_tr0_tr0>
1a001734:	4603      	mov	r3, r0
1a001736:	2b00      	cmp	r3, #0
1a001738:	d002      	beq.n	1a001740 <cerradura_react_main_region_led0_r1_encendido+0x2e>
1a00173a:	6878      	ldr	r0, [r7, #4]
1a00173c:	f7ff fa79 	bl	1a000c32 <cerradura_effect_main_region_led0_r1_encendido_tr0>
1a001740:	bf00      	nop
1a001742:	3708      	adds	r7, #8
1a001744:	46bd      	mov	sp, r7
1a001746:	bd80      	pop	{r7, pc}

1a001748 <cerradura_react_main_region_led0_r1_apagado>:
1a001748:	b580      	push	{r7, lr}
1a00174a:	b082      	sub	sp, #8
1a00174c:	af00      	add	r7, sp, #0
1a00174e:	6078      	str	r0, [r7, #4]
1a001750:	6878      	ldr	r0, [r7, #4]
1a001752:	f7ff f94a 	bl	1a0009ea <cerradura_check_main_region_led0_tr0_tr0>
1a001756:	4603      	mov	r3, r0
1a001758:	2b00      	cmp	r3, #0
1a00175a:	d003      	beq.n	1a001764 <cerradura_react_main_region_led0_r1_apagado+0x1c>
1a00175c:	6878      	ldr	r0, [r7, #4]
1a00175e:	f7ff fa5a 	bl	1a000c16 <cerradura_effect_main_region_led0_tr0>
1a001762:	e008      	b.n	1a001776 <cerradura_react_main_region_led0_r1_apagado+0x2e>
1a001764:	6878      	ldr	r0, [r7, #4]
1a001766:	f7ff f95e 	bl	1a000a26 <cerradura_check_main_region_led0_r1_apagado_tr0_tr0>
1a00176a:	4603      	mov	r3, r0
1a00176c:	2b00      	cmp	r3, #0
1a00176e:	d002      	beq.n	1a001776 <cerradura_react_main_region_led0_r1_apagado+0x2e>
1a001770:	6878      	ldr	r0, [r7, #4]
1a001772:	f7ff fa6c 	bl	1a000c4e <cerradura_effect_main_region_led0_r1_apagado_tr0>
1a001776:	bf00      	nop
1a001778:	3708      	adds	r7, #8
1a00177a:	46bd      	mov	sp, r7
1a00177c:	bd80      	pop	{r7, pc}

1a00177e <cerradura_react_main_region_Copy_1_led0_r1_encendido>:
1a00177e:	b580      	push	{r7, lr}
1a001780:	b082      	sub	sp, #8
1a001782:	af00      	add	r7, sp, #0
1a001784:	6078      	str	r0, [r7, #4]
1a001786:	6878      	ldr	r0, [r7, #4]
1a001788:	f7ff f966 	bl	1a000a58 <cerradura_check_main_region_Copy_1_led0_tr0_tr0>
1a00178c:	4603      	mov	r3, r0
1a00178e:	2b00      	cmp	r3, #0
1a001790:	d003      	beq.n	1a00179a <cerradura_react_main_region_Copy_1_led0_r1_encendido+0x1c>
1a001792:	6878      	ldr	r0, [r7, #4]
1a001794:	f7ff fa69 	bl	1a000c6a <cerradura_effect_main_region_Copy_1_led0_tr0>
1a001798:	e008      	b.n	1a0017ac <cerradura_react_main_region_Copy_1_led0_r1_encendido+0x2e>
1a00179a:	6878      	ldr	r0, [r7, #4]
1a00179c:	f7ff f96d 	bl	1a000a7a <cerradura_check_main_region_Copy_1_led0_r1_encendido_tr0_tr0>
1a0017a0:	4603      	mov	r3, r0
1a0017a2:	2b00      	cmp	r3, #0
1a0017a4:	d002      	beq.n	1a0017ac <cerradura_react_main_region_Copy_1_led0_r1_encendido+0x2e>
1a0017a6:	6878      	ldr	r0, [r7, #4]
1a0017a8:	f7ff fa6d 	bl	1a000c86 <cerradura_effect_main_region_Copy_1_led0_r1_encendido_tr0>
1a0017ac:	bf00      	nop
1a0017ae:	3708      	adds	r7, #8
1a0017b0:	46bd      	mov	sp, r7
1a0017b2:	bd80      	pop	{r7, pc}

1a0017b4 <cerradura_react_main_region_Copy_1_led0_r1_apagado>:
1a0017b4:	b580      	push	{r7, lr}
1a0017b6:	b082      	sub	sp, #8
1a0017b8:	af00      	add	r7, sp, #0
1a0017ba:	6078      	str	r0, [r7, #4]
1a0017bc:	6878      	ldr	r0, [r7, #4]
1a0017be:	f7ff f94b 	bl	1a000a58 <cerradura_check_main_region_Copy_1_led0_tr0_tr0>
1a0017c2:	4603      	mov	r3, r0
1a0017c4:	2b00      	cmp	r3, #0
1a0017c6:	d003      	beq.n	1a0017d0 <cerradura_react_main_region_Copy_1_led0_r1_apagado+0x1c>
1a0017c8:	6878      	ldr	r0, [r7, #4]
1a0017ca:	f7ff fa4e 	bl	1a000c6a <cerradura_effect_main_region_Copy_1_led0_tr0>
1a0017ce:	e008      	b.n	1a0017e2 <cerradura_react_main_region_Copy_1_led0_r1_apagado+0x2e>
1a0017d0:	6878      	ldr	r0, [r7, #4]
1a0017d2:	f7ff f95f 	bl	1a000a94 <cerradura_check_main_region_Copy_1_led0_r1_apagado_tr0_tr0>
1a0017d6:	4603      	mov	r3, r0
1a0017d8:	2b00      	cmp	r3, #0
1a0017da:	d002      	beq.n	1a0017e2 <cerradura_react_main_region_Copy_1_led0_r1_apagado+0x2e>
1a0017dc:	6878      	ldr	r0, [r7, #4]
1a0017de:	f7ff fa60 	bl	1a000ca2 <cerradura_effect_main_region_Copy_1_led0_r1_apagado_tr0>
1a0017e2:	bf00      	nop
1a0017e4:	3708      	adds	r7, #8
1a0017e6:	46bd      	mov	sp, r7
1a0017e8:	bd80      	pop	{r7, pc}

1a0017ea <cerradura_react_main_region__entry_Default>:
1a0017ea:	b580      	push	{r7, lr}
1a0017ec:	b082      	sub	sp, #8
1a0017ee:	af00      	add	r7, sp, #0
1a0017f0:	6078      	str	r0, [r7, #4]
1a0017f2:	6878      	ldr	r0, [r7, #4]
1a0017f4:	f7ff fbd3 	bl	1a000f9e <cerradura_enseq_main_region_Inicio_default>
1a0017f8:	bf00      	nop
1a0017fa:	3708      	adds	r7, #8
1a0017fc:	46bd      	mov	sp, r7
1a0017fe:	bd80      	pop	{r7, pc}

1a001800 <cerradura_react_main_region_Inicio_r1__entry_Default>:
1a001800:	b580      	push	{r7, lr}
1a001802:	b082      	sub	sp, #8
1a001804:	af00      	add	r7, sp, #0
1a001806:	6078      	str	r0, [r7, #4]
1a001808:	6878      	ldr	r0, [r7, #4]
1a00180a:	f7ff fbd3 	bl	1a000fb4 <cerradura_enseq_main_region_Inicio_r1_resetSystem_default>
1a00180e:	bf00      	nop
1a001810:	3708      	adds	r7, #8
1a001812:	46bd      	mov	sp, r7
1a001814:	bd80      	pop	{r7, pc}

1a001816 <cerradura_react_main_region_Cerrado_r1__entry_Default>:
1a001816:	b580      	push	{r7, lr}
1a001818:	b082      	sub	sp, #8
1a00181a:	af00      	add	r7, sp, #0
1a00181c:	6078      	str	r0, [r7, #4]
1a00181e:	6878      	ldr	r0, [r7, #4]
1a001820:	f7ff fbe7 	bl	1a000ff2 <cerradura_enseq_main_region_Cerrado_r1_wait_default>
1a001824:	bf00      	nop
1a001826:	3708      	adds	r7, #8
1a001828:	46bd      	mov	sp, r7
1a00182a:	bd80      	pop	{r7, pc}

1a00182c <cerradura_react_main_region_Abierto_r1__entry_Default>:
1a00182c:	b580      	push	{r7, lr}
1a00182e:	b082      	sub	sp, #8
1a001830:	af00      	add	r7, sp, #0
1a001832:	6078      	str	r0, [r7, #4]
1a001834:	6878      	ldr	r0, [r7, #4]
1a001836:	f7ff fc5e 	bl	1a0010f6 <cerradura_enseq_main_region_Abierto_r1_init_default>
1a00183a:	bf00      	nop
1a00183c:	3708      	adds	r7, #8
1a00183e:	46bd      	mov	sp, r7
1a001840:	bd80      	pop	{r7, pc}

1a001842 <cerradura_react_main_region_led0_r1__entry_Default>:
1a001842:	b580      	push	{r7, lr}
1a001844:	b082      	sub	sp, #8
1a001846:	af00      	add	r7, sp, #0
1a001848:	6078      	str	r0, [r7, #4]
1a00184a:	6878      	ldr	r0, [r7, #4]
1a00184c:	f7ff fc72 	bl	1a001134 <cerradura_enseq_main_region_led0_r1_encendido_default>
1a001850:	bf00      	nop
1a001852:	3708      	adds	r7, #8
1a001854:	46bd      	mov	sp, r7
1a001856:	bd80      	pop	{r7, pc}

1a001858 <cerradura_react_main_region_Copy_1_led0_r1__entry_Default>:
1a001858:	b580      	push	{r7, lr}
1a00185a:	b082      	sub	sp, #8
1a00185c:	af00      	add	r7, sp, #0
1a00185e:	6078      	str	r0, [r7, #4]
1a001860:	6878      	ldr	r0, [r7, #4]
1a001862:	f7ff fc97 	bl	1a001194 <cerradura_enseq_main_region_Copy_1_led0_r1_encendido_default>
1a001866:	bf00      	nop
1a001868:	3708      	adds	r7, #8
1a00186a:	46bd      	mov	sp, r7
1a00186c:	bd80      	pop	{r7, pc}
1a00186e:	Address 0x000000001a00186e is out of bounds.


1a001870 <cerradura_setTimer>:
1a001870:	b580      	push	{r7, lr}
1a001872:	b086      	sub	sp, #24
1a001874:	af02      	add	r7, sp, #8
1a001876:	60f8      	str	r0, [r7, #12]
1a001878:	60b9      	str	r1, [r7, #8]
1a00187a:	607a      	str	r2, [r7, #4]
1a00187c:	70fb      	strb	r3, [r7, #3]
1a00187e:	687a      	ldr	r2, [r7, #4]
1a001880:	78fb      	ldrb	r3, [r7, #3]
1a001882:	9300      	str	r3, [sp, #0]
1a001884:	4613      	mov	r3, r2
1a001886:	68ba      	ldr	r2, [r7, #8]
1a001888:	2106      	movs	r1, #6
1a00188a:	4803      	ldr	r0, [pc, #12]	; (1a001898 <cerradura_setTimer+0x28>)
1a00188c:	f7fe fde2 	bl	1a000454 <SetNewTimerTick>
1a001890:	bf00      	nop
1a001892:	3710      	adds	r7, #16
1a001894:	46bd      	mov	sp, r7
1a001896:	bd80      	pop	{r7, pc}
1a001898:	10000000 	.word	0x10000000

1a00189c <cerradura_unsetTimer>:
1a00189c:	b580      	push	{r7, lr}
1a00189e:	b082      	sub	sp, #8
1a0018a0:	af00      	add	r7, sp, #0
1a0018a2:	6078      	str	r0, [r7, #4]
1a0018a4:	6039      	str	r1, [r7, #0]
1a0018a6:	683a      	ldr	r2, [r7, #0]
1a0018a8:	2106      	movs	r1, #6
1a0018aa:	4803      	ldr	r0, [pc, #12]	; (1a0018b8 <cerradura_unsetTimer+0x1c>)
1a0018ac:	f7fe fe1b 	bl	1a0004e6 <UnsetTimerTick>
1a0018b0:	bf00      	nop
1a0018b2:	3708      	adds	r7, #8
1a0018b4:	46bd      	mov	sp, r7
1a0018b6:	bd80      	pop	{r7, pc}
1a0018b8:	10000000 	.word	0x10000000

1a0018bc <cerraduraIface_setLedFromMask>:
1a0018bc:	b580      	push	{r7, lr}
1a0018be:	b082      	sub	sp, #8
1a0018c0:	af00      	add	r7, sp, #0
1a0018c2:	6078      	str	r0, [r7, #4]
1a0018c4:	6039      	str	r1, [r7, #0]
1a0018c6:	6838      	ldr	r0, [r7, #0]
1a0018c8:	f000 fa37 	bl	1a001d3a <setLedFromMask>
1a0018cc:	bf00      	nop
1a0018ce:	3708      	adds	r7, #8
1a0018d0:	46bd      	mov	sp, r7
1a0018d2:	bd80      	pop	{r7, pc}

1a0018d4 <cerraduraIface_getKeyPressed>:
1a0018d4:	b580      	push	{r7, lr}
1a0018d6:	b082      	sub	sp, #8
1a0018d8:	af00      	add	r7, sp, #0
1a0018da:	6078      	str	r0, [r7, #4]
1a0018dc:	f000 fa78 	bl	1a001dd0 <getKeyPressed>
1a0018e0:	4603      	mov	r3, r0
1a0018e2:	4618      	mov	r0, r3
1a0018e4:	3708      	adds	r7, #8
1a0018e6:	46bd      	mov	sp, r7
1a0018e8:	bd80      	pop	{r7, pc}
1a0018ea:	Address 0x000000001a0018ea is out of bounds.


1a0018ec <main>:
1a0018ec:	b580      	push	{r7, lr}
1a0018ee:	b090      	sub	sp, #64	; 0x40
1a0018f0:	af00      	add	r7, sp, #0
1a0018f2:	f000 fa79 	bl	1a001de8 <sysInit>
1a0018f6:	1d3b      	adds	r3, r7, #4
1a0018f8:	4618      	mov	r0, r3
1a0018fa:	f7fe fedb 	bl	1a0006b4 <cerradura_init>
1a0018fe:	1d3b      	adds	r3, r7, #4
1a001900:	4618      	mov	r0, r3
1a001902:	f7fe ff11 	bl	1a000728 <cerradura_enter>
1a001906:	bf30      	wfi
1a001908:	f000 fbf4 	bl	1a0020f4 <getSysTickEv>
1a00190c:	4603      	mov	r3, r0
1a00190e:	2b00      	cmp	r3, #0
1a001910:	d02f      	beq.n	1a001972 <main+0x86>
1a001912:	f000 fbfb 	bl	1a00210c <rstSysTickEv>
1a001916:	2106      	movs	r1, #6
1a001918:	481e      	ldr	r0, [pc, #120]	; (1a001994 <main+0xa8>)
1a00191a:	f7fe fe7c 	bl	1a000616 <UpdateTimers>
1a00191e:	2300      	movs	r3, #0
1a001920:	63fb      	str	r3, [r7, #60]	; 0x3c
1a001922:	e023      	b.n	1a00196c <main+0x80>
1a001924:	4a1b      	ldr	r2, [pc, #108]	; (1a001994 <main+0xa8>)
1a001926:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a001928:	011b      	lsls	r3, r3, #4
1a00192a:	4413      	add	r3, r2
1a00192c:	681b      	ldr	r3, [r3, #0]
1a00192e:	461a      	mov	r2, r3
1a001930:	2106      	movs	r1, #6
1a001932:	4818      	ldr	r0, [pc, #96]	; (1a001994 <main+0xa8>)
1a001934:	f7fe fe1f 	bl	1a000576 <IsPendEvent>
1a001938:	4603      	mov	r3, r0
1a00193a:	2b00      	cmp	r3, #0
1a00193c:	d013      	beq.n	1a001966 <main+0x7a>
1a00193e:	4a15      	ldr	r2, [pc, #84]	; (1a001994 <main+0xa8>)
1a001940:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a001942:	011b      	lsls	r3, r3, #4
1a001944:	4413      	add	r3, r2
1a001946:	681a      	ldr	r2, [r3, #0]
1a001948:	1d3b      	adds	r3, r7, #4
1a00194a:	4611      	mov	r1, r2
1a00194c:	4618      	mov	r0, r3
1a00194e:	f7fe ff9b 	bl	1a000888 <cerradura_raiseTimeEvent>
1a001952:	4a10      	ldr	r2, [pc, #64]	; (1a001994 <main+0xa8>)
1a001954:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a001956:	011b      	lsls	r3, r3, #4
1a001958:	4413      	add	r3, r2
1a00195a:	681b      	ldr	r3, [r3, #0]
1a00195c:	461a      	mov	r2, r3
1a00195e:	2106      	movs	r1, #6
1a001960:	480c      	ldr	r0, [pc, #48]	; (1a001994 <main+0xa8>)
1a001962:	f7fe fe33 	bl	1a0005cc <MarkAsAttEvent>
1a001966:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a001968:	3301      	adds	r3, #1
1a00196a:	63fb      	str	r3, [r7, #60]	; 0x3c
1a00196c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
1a00196e:	2b05      	cmp	r3, #5
1a001970:	d9d8      	bls.n	1a001924 <main+0x38>
1a001972:	f000 fa2d 	bl	1a001dd0 <getKeyPressed>
1a001976:	4603      	mov	r3, r0
1a001978:	2b00      	cmp	r3, #0
1a00197a:	d005      	beq.n	1a001988 <main+0x9c>
1a00197c:	1d3b      	adds	r3, r7, #4
1a00197e:	4618      	mov	r0, r3
1a001980:	f7fe ff9c 	bl	1a0008bc <cerraduraIface_raise_keyPressed>
1a001984:	f000 fc1e 	bl	1a0021c4 <rstKeyPressed>
1a001988:	1d3b      	adds	r3, r7, #4
1a00198a:	4618      	mov	r0, r3
1a00198c:	f7fe fefe 	bl	1a00078c <cerradura_runCycle>
1a001990:	e7b9      	b.n	1a001906 <main+0x1a>
1a001992:	bf00      	nop
1a001994:	10000000 	.word	0x10000000

1a001998 <NVIC_EnableIRQ>:
1a001998:	b480      	push	{r7}
1a00199a:	b083      	sub	sp, #12
1a00199c:	af00      	add	r7, sp, #0
1a00199e:	4603      	mov	r3, r0
1a0019a0:	71fb      	strb	r3, [r7, #7]
1a0019a2:	79fb      	ldrb	r3, [r7, #7]
1a0019a4:	f003 031f 	and.w	r3, r3, #31
1a0019a8:	2201      	movs	r2, #1
1a0019aa:	fa02 f103 	lsl.w	r1, r2, r3
1a0019ae:	4a06      	ldr	r2, [pc, #24]	; (1a0019c8 <NVIC_EnableIRQ+0x30>)
1a0019b0:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0019b4:	095b      	lsrs	r3, r3, #5
1a0019b6:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0019ba:	bf00      	nop
1a0019bc:	370c      	adds	r7, #12
1a0019be:	46bd      	mov	sp, r7
1a0019c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0019c4:	4770      	bx	lr
1a0019c6:	bf00      	nop
1a0019c8:	e000e100 	.word	0xe000e100

1a0019cc <NVIC_ClearPendingIRQ>:
1a0019cc:	b480      	push	{r7}
1a0019ce:	b083      	sub	sp, #12
1a0019d0:	af00      	add	r7, sp, #0
1a0019d2:	4603      	mov	r3, r0
1a0019d4:	71fb      	strb	r3, [r7, #7]
1a0019d6:	79fb      	ldrb	r3, [r7, #7]
1a0019d8:	f003 031f 	and.w	r3, r3, #31
1a0019dc:	2201      	movs	r2, #1
1a0019de:	fa02 f103 	lsl.w	r1, r2, r3
1a0019e2:	4a06      	ldr	r2, [pc, #24]	; (1a0019fc <NVIC_ClearPendingIRQ+0x30>)
1a0019e4:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a0019e8:	095b      	lsrs	r3, r3, #5
1a0019ea:	3360      	adds	r3, #96	; 0x60
1a0019ec:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a0019f0:	bf00      	nop
1a0019f2:	370c      	adds	r7, #12
1a0019f4:	46bd      	mov	sp, r7
1a0019f6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0019fa:	4770      	bx	lr
1a0019fc:	e000e100 	.word	0xe000e100

1a001a00 <NVIC_SetPriority>:
1a001a00:	b480      	push	{r7}
1a001a02:	b083      	sub	sp, #12
1a001a04:	af00      	add	r7, sp, #0
1a001a06:	4603      	mov	r3, r0
1a001a08:	6039      	str	r1, [r7, #0]
1a001a0a:	71fb      	strb	r3, [r7, #7]
1a001a0c:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a001a10:	2b00      	cmp	r3, #0
1a001a12:	da0b      	bge.n	1a001a2c <NVIC_SetPriority+0x2c>
1a001a14:	683b      	ldr	r3, [r7, #0]
1a001a16:	b2da      	uxtb	r2, r3
1a001a18:	490c      	ldr	r1, [pc, #48]	; (1a001a4c <NVIC_SetPriority+0x4c>)
1a001a1a:	79fb      	ldrb	r3, [r7, #7]
1a001a1c:	f003 030f 	and.w	r3, r3, #15
1a001a20:	3b04      	subs	r3, #4
1a001a22:	0152      	lsls	r2, r2, #5
1a001a24:	b2d2      	uxtb	r2, r2
1a001a26:	440b      	add	r3, r1
1a001a28:	761a      	strb	r2, [r3, #24]
1a001a2a:	e009      	b.n	1a001a40 <NVIC_SetPriority+0x40>
1a001a2c:	683b      	ldr	r3, [r7, #0]
1a001a2e:	b2da      	uxtb	r2, r3
1a001a30:	4907      	ldr	r1, [pc, #28]	; (1a001a50 <NVIC_SetPriority+0x50>)
1a001a32:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a001a36:	0152      	lsls	r2, r2, #5
1a001a38:	b2d2      	uxtb	r2, r2
1a001a3a:	440b      	add	r3, r1
1a001a3c:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a001a40:	bf00      	nop
1a001a42:	370c      	adds	r7, #12
1a001a44:	46bd      	mov	sp, r7
1a001a46:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001a4a:	4770      	bx	lr
1a001a4c:	e000ed00 	.word	0xe000ed00
1a001a50:	e000e100 	.word	0xe000e100

1a001a54 <SysTick_Config>:
1a001a54:	b580      	push	{r7, lr}
1a001a56:	b082      	sub	sp, #8
1a001a58:	af00      	add	r7, sp, #0
1a001a5a:	6078      	str	r0, [r7, #4]
1a001a5c:	687b      	ldr	r3, [r7, #4]
1a001a5e:	3b01      	subs	r3, #1
1a001a60:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a001a64:	d301      	bcc.n	1a001a6a <SysTick_Config+0x16>
1a001a66:	2301      	movs	r3, #1
1a001a68:	e00f      	b.n	1a001a8a <SysTick_Config+0x36>
1a001a6a:	4a0a      	ldr	r2, [pc, #40]	; (1a001a94 <SysTick_Config+0x40>)
1a001a6c:	687b      	ldr	r3, [r7, #4]
1a001a6e:	3b01      	subs	r3, #1
1a001a70:	6053      	str	r3, [r2, #4]
1a001a72:	2107      	movs	r1, #7
1a001a74:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a001a78:	f7ff ffc2 	bl	1a001a00 <NVIC_SetPriority>
1a001a7c:	4b05      	ldr	r3, [pc, #20]	; (1a001a94 <SysTick_Config+0x40>)
1a001a7e:	2200      	movs	r2, #0
1a001a80:	609a      	str	r2, [r3, #8]
1a001a82:	4b04      	ldr	r3, [pc, #16]	; (1a001a94 <SysTick_Config+0x40>)
1a001a84:	2207      	movs	r2, #7
1a001a86:	601a      	str	r2, [r3, #0]
1a001a88:	2300      	movs	r3, #0
1a001a8a:	4618      	mov	r0, r3
1a001a8c:	3708      	adds	r7, #8
1a001a8e:	46bd      	mov	sp, r7
1a001a90:	bd80      	pop	{r7, pc}
1a001a92:	bf00      	nop
1a001a94:	e000e010 	.word	0xe000e010

1a001a98 <Chip_SCU_PinMuxSet>:
1a001a98:	b480      	push	{r7}
1a001a9a:	b083      	sub	sp, #12
1a001a9c:	af00      	add	r7, sp, #0
1a001a9e:	4603      	mov	r3, r0
1a001aa0:	71fb      	strb	r3, [r7, #7]
1a001aa2:	460b      	mov	r3, r1
1a001aa4:	71bb      	strb	r3, [r7, #6]
1a001aa6:	4613      	mov	r3, r2
1a001aa8:	80bb      	strh	r3, [r7, #4]
1a001aaa:	4807      	ldr	r0, [pc, #28]	; (1a001ac8 <Chip_SCU_PinMuxSet+0x30>)
1a001aac:	79f9      	ldrb	r1, [r7, #7]
1a001aae:	79bb      	ldrb	r3, [r7, #6]
1a001ab0:	88ba      	ldrh	r2, [r7, #4]
1a001ab2:	0149      	lsls	r1, r1, #5
1a001ab4:	440b      	add	r3, r1
1a001ab6:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a001aba:	bf00      	nop
1a001abc:	370c      	adds	r7, #12
1a001abe:	46bd      	mov	sp, r7
1a001ac0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001ac4:	4770      	bx	lr
1a001ac6:	bf00      	nop
1a001ac8:	40086000 	.word	0x40086000

1a001acc <Chip_SCU_GPIOIntPinSel>:
1a001acc:	b480      	push	{r7}
1a001ace:	b085      	sub	sp, #20
1a001ad0:	af00      	add	r7, sp, #0
1a001ad2:	4603      	mov	r3, r0
1a001ad4:	71fb      	strb	r3, [r7, #7]
1a001ad6:	460b      	mov	r3, r1
1a001ad8:	71bb      	strb	r3, [r7, #6]
1a001ada:	4613      	mov	r3, r2
1a001adc:	717b      	strb	r3, [r7, #5]
1a001ade:	79fb      	ldrb	r3, [r7, #7]
1a001ae0:	00db      	lsls	r3, r3, #3
1a001ae2:	f003 0318 	and.w	r3, r3, #24
1a001ae6:	60fb      	str	r3, [r7, #12]
1a001ae8:	79bb      	ldrb	r3, [r7, #6]
1a001aea:	015b      	lsls	r3, r3, #5
1a001aec:	b2da      	uxtb	r2, r3
1a001aee:	797b      	ldrb	r3, [r7, #5]
1a001af0:	f003 031f 	and.w	r3, r3, #31
1a001af4:	431a      	orrs	r2, r3
1a001af6:	68fb      	ldr	r3, [r7, #12]
1a001af8:	fa02 f303 	lsl.w	r3, r2, r3
1a001afc:	60bb      	str	r3, [r7, #8]
1a001afe:	4a0f      	ldr	r2, [pc, #60]	; (1a001b3c <Chip_SCU_GPIOIntPinSel+0x70>)
1a001b00:	79fb      	ldrb	r3, [r7, #7]
1a001b02:	089b      	lsrs	r3, r3, #2
1a001b04:	b2db      	uxtb	r3, r3
1a001b06:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a001b0a:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a001b0e:	21ff      	movs	r1, #255	; 0xff
1a001b10:	68fa      	ldr	r2, [r7, #12]
1a001b12:	fa01 f202 	lsl.w	r2, r1, r2
1a001b16:	43d2      	mvns	r2, r2
1a001b18:	401a      	ands	r2, r3
1a001b1a:	4908      	ldr	r1, [pc, #32]	; (1a001b3c <Chip_SCU_GPIOIntPinSel+0x70>)
1a001b1c:	79fb      	ldrb	r3, [r7, #7]
1a001b1e:	089b      	lsrs	r3, r3, #2
1a001b20:	b2db      	uxtb	r3, r3
1a001b22:	4618      	mov	r0, r3
1a001b24:	68bb      	ldr	r3, [r7, #8]
1a001b26:	431a      	orrs	r2, r3
1a001b28:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a001b2c:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a001b30:	bf00      	nop
1a001b32:	3714      	adds	r7, #20
1a001b34:	46bd      	mov	sp, r7
1a001b36:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b3a:	4770      	bx	lr
1a001b3c:	40086000 	.word	0x40086000

1a001b40 <Chip_GPIO_SetPinDIROutput>:
1a001b40:	b480      	push	{r7}
1a001b42:	b083      	sub	sp, #12
1a001b44:	af00      	add	r7, sp, #0
1a001b46:	6078      	str	r0, [r7, #4]
1a001b48:	460b      	mov	r3, r1
1a001b4a:	70fb      	strb	r3, [r7, #3]
1a001b4c:	4613      	mov	r3, r2
1a001b4e:	70bb      	strb	r3, [r7, #2]
1a001b50:	78fa      	ldrb	r2, [r7, #3]
1a001b52:	687b      	ldr	r3, [r7, #4]
1a001b54:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a001b58:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a001b5c:	78bb      	ldrb	r3, [r7, #2]
1a001b5e:	2201      	movs	r2, #1
1a001b60:	fa02 f303 	lsl.w	r3, r2, r3
1a001b64:	78fa      	ldrb	r2, [r7, #3]
1a001b66:	4319      	orrs	r1, r3
1a001b68:	687b      	ldr	r3, [r7, #4]
1a001b6a:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a001b6e:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a001b72:	bf00      	nop
1a001b74:	370c      	adds	r7, #12
1a001b76:	46bd      	mov	sp, r7
1a001b78:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b7c:	4770      	bx	lr

1a001b7e <Chip_GPIO_SetPinDIRInput>:
1a001b7e:	b480      	push	{r7}
1a001b80:	b083      	sub	sp, #12
1a001b82:	af00      	add	r7, sp, #0
1a001b84:	6078      	str	r0, [r7, #4]
1a001b86:	460b      	mov	r3, r1
1a001b88:	70fb      	strb	r3, [r7, #3]
1a001b8a:	4613      	mov	r3, r2
1a001b8c:	70bb      	strb	r3, [r7, #2]
1a001b8e:	78fa      	ldrb	r2, [r7, #3]
1a001b90:	687b      	ldr	r3, [r7, #4]
1a001b92:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a001b96:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a001b9a:	78bb      	ldrb	r3, [r7, #2]
1a001b9c:	2201      	movs	r2, #1
1a001b9e:	fa02 f303 	lsl.w	r3, r2, r3
1a001ba2:	43db      	mvns	r3, r3
1a001ba4:	78fa      	ldrb	r2, [r7, #3]
1a001ba6:	4019      	ands	r1, r3
1a001ba8:	687b      	ldr	r3, [r7, #4]
1a001baa:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a001bae:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a001bb2:	bf00      	nop
1a001bb4:	370c      	adds	r7, #12
1a001bb6:	46bd      	mov	sp, r7
1a001bb8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001bbc:	4770      	bx	lr

1a001bbe <Chip_GPIO_SetPinOutHigh>:
1a001bbe:	b480      	push	{r7}
1a001bc0:	b083      	sub	sp, #12
1a001bc2:	af00      	add	r7, sp, #0
1a001bc4:	6078      	str	r0, [r7, #4]
1a001bc6:	460b      	mov	r3, r1
1a001bc8:	70fb      	strb	r3, [r7, #3]
1a001bca:	4613      	mov	r3, r2
1a001bcc:	70bb      	strb	r3, [r7, #2]
1a001bce:	78bb      	ldrb	r3, [r7, #2]
1a001bd0:	2201      	movs	r2, #1
1a001bd2:	fa02 f303 	lsl.w	r3, r2, r3
1a001bd6:	78fa      	ldrb	r2, [r7, #3]
1a001bd8:	4619      	mov	r1, r3
1a001bda:	687b      	ldr	r3, [r7, #4]
1a001bdc:	f502 6208 	add.w	r2, r2, #2176	; 0x880
1a001be0:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a001be4:	bf00      	nop
1a001be6:	370c      	adds	r7, #12
1a001be8:	46bd      	mov	sp, r7
1a001bea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001bee:	4770      	bx	lr

1a001bf0 <Chip_GPIO_SetPinOutLow>:
1a001bf0:	b480      	push	{r7}
1a001bf2:	b083      	sub	sp, #12
1a001bf4:	af00      	add	r7, sp, #0
1a001bf6:	6078      	str	r0, [r7, #4]
1a001bf8:	460b      	mov	r3, r1
1a001bfa:	70fb      	strb	r3, [r7, #3]
1a001bfc:	4613      	mov	r3, r2
1a001bfe:	70bb      	strb	r3, [r7, #2]
1a001c00:	78bb      	ldrb	r3, [r7, #2]
1a001c02:	2201      	movs	r2, #1
1a001c04:	fa02 f303 	lsl.w	r3, r2, r3
1a001c08:	78fa      	ldrb	r2, [r7, #3]
1a001c0a:	4619      	mov	r1, r3
1a001c0c:	687b      	ldr	r3, [r7, #4]
1a001c0e:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a001c12:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a001c16:	bf00      	nop
1a001c18:	370c      	adds	r7, #12
1a001c1a:	46bd      	mov	sp, r7
1a001c1c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c20:	4770      	bx	lr

1a001c22 <Chip_PININT_SetPinModeEdge>:
1a001c22:	b480      	push	{r7}
1a001c24:	b083      	sub	sp, #12
1a001c26:	af00      	add	r7, sp, #0
1a001c28:	6078      	str	r0, [r7, #4]
1a001c2a:	6039      	str	r1, [r7, #0]
1a001c2c:	687b      	ldr	r3, [r7, #4]
1a001c2e:	681a      	ldr	r2, [r3, #0]
1a001c30:	683b      	ldr	r3, [r7, #0]
1a001c32:	43db      	mvns	r3, r3
1a001c34:	401a      	ands	r2, r3
1a001c36:	687b      	ldr	r3, [r7, #4]
1a001c38:	601a      	str	r2, [r3, #0]
1a001c3a:	bf00      	nop
1a001c3c:	370c      	adds	r7, #12
1a001c3e:	46bd      	mov	sp, r7
1a001c40:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c44:	4770      	bx	lr

1a001c46 <Chip_PININT_EnableIntLow>:
1a001c46:	b480      	push	{r7}
1a001c48:	b083      	sub	sp, #12
1a001c4a:	af00      	add	r7, sp, #0
1a001c4c:	6078      	str	r0, [r7, #4]
1a001c4e:	6039      	str	r1, [r7, #0]
1a001c50:	687b      	ldr	r3, [r7, #4]
1a001c52:	683a      	ldr	r2, [r7, #0]
1a001c54:	615a      	str	r2, [r3, #20]
1a001c56:	bf00      	nop
1a001c58:	370c      	adds	r7, #12
1a001c5a:	46bd      	mov	sp, r7
1a001c5c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c60:	4770      	bx	lr

1a001c62 <Chip_PININT_ClearIntStatus>:
1a001c62:	b480      	push	{r7}
1a001c64:	b083      	sub	sp, #12
1a001c66:	af00      	add	r7, sp, #0
1a001c68:	6078      	str	r0, [r7, #4]
1a001c6a:	6039      	str	r1, [r7, #0]
1a001c6c:	687b      	ldr	r3, [r7, #4]
1a001c6e:	683a      	ldr	r2, [r7, #0]
1a001c70:	625a      	str	r2, [r3, #36]	; 0x24
1a001c72:	bf00      	nop
1a001c74:	370c      	adds	r7, #12
1a001c76:	46bd      	mov	sp, r7
1a001c78:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c7c:	4770      	bx	lr

1a001c7e <Chip_UART_TXEnable>:
1a001c7e:	b480      	push	{r7}
1a001c80:	b083      	sub	sp, #12
1a001c82:	af00      	add	r7, sp, #0
1a001c84:	6078      	str	r0, [r7, #4]
1a001c86:	687b      	ldr	r3, [r7, #4]
1a001c88:	2201      	movs	r2, #1
1a001c8a:	65da      	str	r2, [r3, #92]	; 0x5c
1a001c8c:	bf00      	nop
1a001c8e:	370c      	adds	r7, #12
1a001c90:	46bd      	mov	sp, r7
1a001c92:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001c96:	4770      	bx	lr

1a001c98 <Chip_UART_IntEnable>:
1a001c98:	b480      	push	{r7}
1a001c9a:	b083      	sub	sp, #12
1a001c9c:	af00      	add	r7, sp, #0
1a001c9e:	6078      	str	r0, [r7, #4]
1a001ca0:	6039      	str	r1, [r7, #0]
1a001ca2:	687b      	ldr	r3, [r7, #4]
1a001ca4:	685a      	ldr	r2, [r3, #4]
1a001ca6:	683b      	ldr	r3, [r7, #0]
1a001ca8:	431a      	orrs	r2, r3
1a001caa:	687b      	ldr	r3, [r7, #4]
1a001cac:	605a      	str	r2, [r3, #4]
1a001cae:	bf00      	nop
1a001cb0:	370c      	adds	r7, #12
1a001cb2:	46bd      	mov	sp, r7
1a001cb4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001cb8:	4770      	bx	lr

1a001cba <Chip_UART_SetupFIFOS>:
1a001cba:	b480      	push	{r7}
1a001cbc:	b083      	sub	sp, #12
1a001cbe:	af00      	add	r7, sp, #0
1a001cc0:	6078      	str	r0, [r7, #4]
1a001cc2:	6039      	str	r1, [r7, #0]
1a001cc4:	687b      	ldr	r3, [r7, #4]
1a001cc6:	683a      	ldr	r2, [r7, #0]
1a001cc8:	609a      	str	r2, [r3, #8]
1a001cca:	bf00      	nop
1a001ccc:	370c      	adds	r7, #12
1a001cce:	46bd      	mov	sp, r7
1a001cd0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001cd4:	4770      	bx	lr

1a001cd6 <Chip_UART_ConfigData>:
1a001cd6:	b480      	push	{r7}
1a001cd8:	b083      	sub	sp, #12
1a001cda:	af00      	add	r7, sp, #0
1a001cdc:	6078      	str	r0, [r7, #4]
1a001cde:	6039      	str	r1, [r7, #0]
1a001ce0:	687b      	ldr	r3, [r7, #4]
1a001ce2:	683a      	ldr	r2, [r7, #0]
1a001ce4:	60da      	str	r2, [r3, #12]
1a001ce6:	bf00      	nop
1a001ce8:	370c      	adds	r7, #12
1a001cea:	46bd      	mov	sp, r7
1a001cec:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001cf0:	4770      	bx	lr

1a001cf2 <StopWatch_Elapsed>:
1a001cf2:	b580      	push	{r7, lr}
1a001cf4:	b082      	sub	sp, #8
1a001cf6:	af00      	add	r7, sp, #0
1a001cf8:	6078      	str	r0, [r7, #4]
1a001cfa:	f000 fd0d 	bl	1a002718 <StopWatch_Start>
1a001cfe:	4602      	mov	r2, r0
1a001d00:	687b      	ldr	r3, [r7, #4]
1a001d02:	1ad3      	subs	r3, r2, r3
1a001d04:	4618      	mov	r0, r3
1a001d06:	3708      	adds	r7, #8
1a001d08:	46bd      	mov	sp, r7
1a001d0a:	bd80      	pop	{r7, pc}

1a001d0c <StopWatch_DelayMs>:
1a001d0c:	b580      	push	{r7, lr}
1a001d0e:	b084      	sub	sp, #16
1a001d10:	af00      	add	r7, sp, #0
1a001d12:	6078      	str	r0, [r7, #4]
1a001d14:	6878      	ldr	r0, [r7, #4]
1a001d16:	f000 fd09 	bl	1a00272c <StopWatch_MsToTicks>
1a001d1a:	60f8      	str	r0, [r7, #12]
1a001d1c:	f000 fcfc 	bl	1a002718 <StopWatch_Start>
1a001d20:	60b8      	str	r0, [r7, #8]
1a001d22:	bf00      	nop
1a001d24:	68b8      	ldr	r0, [r7, #8]
1a001d26:	f7ff ffe4 	bl	1a001cf2 <StopWatch_Elapsed>
1a001d2a:	4602      	mov	r2, r0
1a001d2c:	68fb      	ldr	r3, [r7, #12]
1a001d2e:	4293      	cmp	r3, r2
1a001d30:	d8f8      	bhi.n	1a001d24 <StopWatch_DelayMs+0x18>
1a001d32:	bf00      	nop
1a001d34:	3710      	adds	r7, #16
1a001d36:	46bd      	mov	sp, r7
1a001d38:	bd80      	pop	{r7, pc}

1a001d3a <setLedFromMask>:
1a001d3a:	b580      	push	{r7, lr}
1a001d3c:	b082      	sub	sp, #8
1a001d3e:	af00      	add	r7, sp, #0
1a001d40:	4603      	mov	r3, r0
1a001d42:	71fb      	strb	r3, [r7, #7]
1a001d44:	2000      	movs	r0, #0
1a001d46:	f000 f9a5 	bl	1a002094 <ledOff>
1a001d4a:	2005      	movs	r0, #5
1a001d4c:	f000 f9a2 	bl	1a002094 <ledOff>
1a001d50:	2004      	movs	r0, #4
1a001d52:	f000 f99f 	bl	1a002094 <ledOff>
1a001d56:	2003      	movs	r0, #3
1a001d58:	f000 f99c 	bl	1a002094 <ledOff>
1a001d5c:	2002      	movs	r0, #2
1a001d5e:	f000 f999 	bl	1a002094 <ledOff>
1a001d62:	2001      	movs	r0, #1
1a001d64:	f000 f996 	bl	1a002094 <ledOff>
1a001d68:	79fb      	ldrb	r3, [r7, #7]
1a001d6a:	f003 0308 	and.w	r3, r3, #8
1a001d6e:	2b00      	cmp	r3, #0
1a001d70:	d002      	beq.n	1a001d78 <setLedFromMask+0x3e>
1a001d72:	2001      	movs	r0, #1
1a001d74:	f000 f96a 	bl	1a00204c <ledOn>
1a001d78:	79fb      	ldrb	r3, [r7, #7]
1a001d7a:	f003 0310 	and.w	r3, r3, #16
1a001d7e:	2b00      	cmp	r3, #0
1a001d80:	d002      	beq.n	1a001d88 <setLedFromMask+0x4e>
1a001d82:	2002      	movs	r0, #2
1a001d84:	f000 f962 	bl	1a00204c <ledOn>
1a001d88:	79fb      	ldrb	r3, [r7, #7]
1a001d8a:	f003 0320 	and.w	r3, r3, #32
1a001d8e:	2b00      	cmp	r3, #0
1a001d90:	d002      	beq.n	1a001d98 <setLedFromMask+0x5e>
1a001d92:	2003      	movs	r0, #3
1a001d94:	f000 f95a 	bl	1a00204c <ledOn>
1a001d98:	79fb      	ldrb	r3, [r7, #7]
1a001d9a:	f003 0301 	and.w	r3, r3, #1
1a001d9e:	2b00      	cmp	r3, #0
1a001da0:	d002      	beq.n	1a001da8 <setLedFromMask+0x6e>
1a001da2:	2004      	movs	r0, #4
1a001da4:	f000 f952 	bl	1a00204c <ledOn>
1a001da8:	79fb      	ldrb	r3, [r7, #7]
1a001daa:	f003 0302 	and.w	r3, r3, #2
1a001dae:	2b00      	cmp	r3, #0
1a001db0:	d002      	beq.n	1a001db8 <setLedFromMask+0x7e>
1a001db2:	2005      	movs	r0, #5
1a001db4:	f000 f94a 	bl	1a00204c <ledOn>
1a001db8:	79fb      	ldrb	r3, [r7, #7]
1a001dba:	f003 0304 	and.w	r3, r3, #4
1a001dbe:	2b00      	cmp	r3, #0
1a001dc0:	d002      	beq.n	1a001dc8 <setLedFromMask+0x8e>
1a001dc2:	2000      	movs	r0, #0
1a001dc4:	f000 f942 	bl	1a00204c <ledOn>
1a001dc8:	bf00      	nop
1a001dca:	3708      	adds	r7, #8
1a001dcc:	46bd      	mov	sp, r7
1a001dce:	bd80      	pop	{r7, pc}

1a001dd0 <getKeyPressed>:
1a001dd0:	b480      	push	{r7}
1a001dd2:	af00      	add	r7, sp, #0
1a001dd4:	4b03      	ldr	r3, [pc, #12]	; (1a001de4 <getKeyPressed+0x14>)
1a001dd6:	781b      	ldrb	r3, [r3, #0]
1a001dd8:	4618      	mov	r0, r3
1a001dda:	46bd      	mov	sp, r7
1a001ddc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001de0:	4770      	bx	lr
1a001de2:	bf00      	nop
1a001de4:	10000060 	.word	0x10000060

1a001de8 <sysInit>:
1a001de8:	b590      	push	{r4, r7, lr}
1a001dea:	b083      	sub	sp, #12
1a001dec:	af00      	add	r7, sp, #0
1a001dee:	f000 fb19 	bl	1a002424 <Chip_SetupXtalClocking>
1a001df2:	f001 f991 	bl	1a003118 <SystemCoreClockUpdate>
1a001df6:	f000 fc55 	bl	1a0026a4 <StopWatch_Init>
1a001dfa:	f000 f9ef 	bl	1a0021dc <fpuInit>
1a001dfe:	488c      	ldr	r0, [pc, #560]	; (1a002030 <sysInit+0x248>)
1a001e00:	f001 f996 	bl	1a003130 <Chip_GPIO_Init>
1a001e04:	2300      	movs	r3, #0
1a001e06:	607b      	str	r3, [r7, #4]
1a001e08:	e04e      	b.n	1a001ea8 <sysInit+0xc0>
1a001e0a:	498a      	ldr	r1, [pc, #552]	; (1a002034 <sysInit+0x24c>)
1a001e0c:	687a      	ldr	r2, [r7, #4]
1a001e0e:	4613      	mov	r3, r2
1a001e10:	005b      	lsls	r3, r3, #1
1a001e12:	4413      	add	r3, r2
1a001e14:	005b      	lsls	r3, r3, #1
1a001e16:	440b      	add	r3, r1
1a001e18:	7818      	ldrb	r0, [r3, #0]
1a001e1a:	4986      	ldr	r1, [pc, #536]	; (1a002034 <sysInit+0x24c>)
1a001e1c:	687a      	ldr	r2, [r7, #4]
1a001e1e:	4613      	mov	r3, r2
1a001e20:	005b      	lsls	r3, r3, #1
1a001e22:	4413      	add	r3, r2
1a001e24:	005b      	lsls	r3, r3, #1
1a001e26:	440b      	add	r3, r1
1a001e28:	3301      	adds	r3, #1
1a001e2a:	781c      	ldrb	r4, [r3, #0]
1a001e2c:	4981      	ldr	r1, [pc, #516]	; (1a002034 <sysInit+0x24c>)
1a001e2e:	687a      	ldr	r2, [r7, #4]
1a001e30:	4613      	mov	r3, r2
1a001e32:	005b      	lsls	r3, r3, #1
1a001e34:	4413      	add	r3, r2
1a001e36:	005b      	lsls	r3, r3, #1
1a001e38:	440b      	add	r3, r1
1a001e3a:	3304      	adds	r3, #4
1a001e3c:	881b      	ldrh	r3, [r3, #0]
1a001e3e:	461a      	mov	r2, r3
1a001e40:	4621      	mov	r1, r4
1a001e42:	f7ff fe29 	bl	1a001a98 <Chip_SCU_PinMuxSet>
1a001e46:	497b      	ldr	r1, [pc, #492]	; (1a002034 <sysInit+0x24c>)
1a001e48:	687a      	ldr	r2, [r7, #4]
1a001e4a:	4613      	mov	r3, r2
1a001e4c:	005b      	lsls	r3, r3, #1
1a001e4e:	4413      	add	r3, r2
1a001e50:	005b      	lsls	r3, r3, #1
1a001e52:	440b      	add	r3, r1
1a001e54:	3302      	adds	r3, #2
1a001e56:	7818      	ldrb	r0, [r3, #0]
1a001e58:	4976      	ldr	r1, [pc, #472]	; (1a002034 <sysInit+0x24c>)
1a001e5a:	687a      	ldr	r2, [r7, #4]
1a001e5c:	4613      	mov	r3, r2
1a001e5e:	005b      	lsls	r3, r3, #1
1a001e60:	4413      	add	r3, r2
1a001e62:	005b      	lsls	r3, r3, #1
1a001e64:	440b      	add	r3, r1
1a001e66:	3303      	adds	r3, #3
1a001e68:	781b      	ldrb	r3, [r3, #0]
1a001e6a:	461a      	mov	r2, r3
1a001e6c:	4601      	mov	r1, r0
1a001e6e:	4870      	ldr	r0, [pc, #448]	; (1a002030 <sysInit+0x248>)
1a001e70:	f7ff fe66 	bl	1a001b40 <Chip_GPIO_SetPinDIROutput>
1a001e74:	496f      	ldr	r1, [pc, #444]	; (1a002034 <sysInit+0x24c>)
1a001e76:	687a      	ldr	r2, [r7, #4]
1a001e78:	4613      	mov	r3, r2
1a001e7a:	005b      	lsls	r3, r3, #1
1a001e7c:	4413      	add	r3, r2
1a001e7e:	005b      	lsls	r3, r3, #1
1a001e80:	440b      	add	r3, r1
1a001e82:	3302      	adds	r3, #2
1a001e84:	7818      	ldrb	r0, [r3, #0]
1a001e86:	496b      	ldr	r1, [pc, #428]	; (1a002034 <sysInit+0x24c>)
1a001e88:	687a      	ldr	r2, [r7, #4]
1a001e8a:	4613      	mov	r3, r2
1a001e8c:	005b      	lsls	r3, r3, #1
1a001e8e:	4413      	add	r3, r2
1a001e90:	005b      	lsls	r3, r3, #1
1a001e92:	440b      	add	r3, r1
1a001e94:	3303      	adds	r3, #3
1a001e96:	781b      	ldrb	r3, [r3, #0]
1a001e98:	461a      	mov	r2, r3
1a001e9a:	4601      	mov	r1, r0
1a001e9c:	4864      	ldr	r0, [pc, #400]	; (1a002030 <sysInit+0x248>)
1a001e9e:	f7ff fea7 	bl	1a001bf0 <Chip_GPIO_SetPinOutLow>
1a001ea2:	687b      	ldr	r3, [r7, #4]
1a001ea4:	3301      	adds	r3, #1
1a001ea6:	607b      	str	r3, [r7, #4]
1a001ea8:	687b      	ldr	r3, [r7, #4]
1a001eaa:	2b05      	cmp	r3, #5
1a001eac:	d9ad      	bls.n	1a001e0a <sysInit+0x22>
1a001eae:	2300      	movs	r3, #0
1a001eb0:	607b      	str	r3, [r7, #4]
1a001eb2:	e037      	b.n	1a001f24 <sysInit+0x13c>
1a001eb4:	4960      	ldr	r1, [pc, #384]	; (1a002038 <sysInit+0x250>)
1a001eb6:	687a      	ldr	r2, [r7, #4]
1a001eb8:	4613      	mov	r3, r2
1a001eba:	005b      	lsls	r3, r3, #1
1a001ebc:	4413      	add	r3, r2
1a001ebe:	005b      	lsls	r3, r3, #1
1a001ec0:	440b      	add	r3, r1
1a001ec2:	7818      	ldrb	r0, [r3, #0]
1a001ec4:	495c      	ldr	r1, [pc, #368]	; (1a002038 <sysInit+0x250>)
1a001ec6:	687a      	ldr	r2, [r7, #4]
1a001ec8:	4613      	mov	r3, r2
1a001eca:	005b      	lsls	r3, r3, #1
1a001ecc:	4413      	add	r3, r2
1a001ece:	005b      	lsls	r3, r3, #1
1a001ed0:	440b      	add	r3, r1
1a001ed2:	3301      	adds	r3, #1
1a001ed4:	781c      	ldrb	r4, [r3, #0]
1a001ed6:	4958      	ldr	r1, [pc, #352]	; (1a002038 <sysInit+0x250>)
1a001ed8:	687a      	ldr	r2, [r7, #4]
1a001eda:	4613      	mov	r3, r2
1a001edc:	005b      	lsls	r3, r3, #1
1a001ede:	4413      	add	r3, r2
1a001ee0:	005b      	lsls	r3, r3, #1
1a001ee2:	440b      	add	r3, r1
1a001ee4:	3304      	adds	r3, #4
1a001ee6:	881b      	ldrh	r3, [r3, #0]
1a001ee8:	461a      	mov	r2, r3
1a001eea:	4621      	mov	r1, r4
1a001eec:	f7ff fdd4 	bl	1a001a98 <Chip_SCU_PinMuxSet>
1a001ef0:	4951      	ldr	r1, [pc, #324]	; (1a002038 <sysInit+0x250>)
1a001ef2:	687a      	ldr	r2, [r7, #4]
1a001ef4:	4613      	mov	r3, r2
1a001ef6:	005b      	lsls	r3, r3, #1
1a001ef8:	4413      	add	r3, r2
1a001efa:	005b      	lsls	r3, r3, #1
1a001efc:	440b      	add	r3, r1
1a001efe:	3302      	adds	r3, #2
1a001f00:	7818      	ldrb	r0, [r3, #0]
1a001f02:	494d      	ldr	r1, [pc, #308]	; (1a002038 <sysInit+0x250>)
1a001f04:	687a      	ldr	r2, [r7, #4]
1a001f06:	4613      	mov	r3, r2
1a001f08:	005b      	lsls	r3, r3, #1
1a001f0a:	4413      	add	r3, r2
1a001f0c:	005b      	lsls	r3, r3, #1
1a001f0e:	440b      	add	r3, r1
1a001f10:	3303      	adds	r3, #3
1a001f12:	781b      	ldrb	r3, [r3, #0]
1a001f14:	461a      	mov	r2, r3
1a001f16:	4601      	mov	r1, r0
1a001f18:	4845      	ldr	r0, [pc, #276]	; (1a002030 <sysInit+0x248>)
1a001f1a:	f7ff fe30 	bl	1a001b7e <Chip_GPIO_SetPinDIRInput>
1a001f1e:	687b      	ldr	r3, [r7, #4]
1a001f20:	3301      	adds	r3, #1
1a001f22:	607b      	str	r3, [r7, #4]
1a001f24:	687b      	ldr	r3, [r7, #4]
1a001f26:	2b03      	cmp	r3, #3
1a001f28:	d9c4      	bls.n	1a001eb4 <sysInit+0xcc>
1a001f2a:	221e      	movs	r2, #30
1a001f2c:	2101      	movs	r1, #1
1a001f2e:	2007      	movs	r0, #7
1a001f30:	f7ff fdb2 	bl	1a001a98 <Chip_SCU_PinMuxSet>
1a001f34:	22d6      	movs	r2, #214	; 0xd6
1a001f36:	2102      	movs	r1, #2
1a001f38:	2007      	movs	r0, #7
1a001f3a:	f7ff fdad 	bl	1a001a98 <Chip_SCU_PinMuxSet>
1a001f3e:	483f      	ldr	r0, [pc, #252]	; (1a00203c <sysInit+0x254>)
1a001f40:	f000 fb0a 	bl	1a002558 <Chip_UART_Init>
1a001f44:	2103      	movs	r1, #3
1a001f46:	483d      	ldr	r0, [pc, #244]	; (1a00203c <sysInit+0x254>)
1a001f48:	f7ff fec5 	bl	1a001cd6 <Chip_UART_ConfigData>
1a001f4c:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a001f50:	483a      	ldr	r0, [pc, #232]	; (1a00203c <sysInit+0x254>)
1a001f52:	f000 fb45 	bl	1a0025e0 <Chip_UART_SetBaud>
1a001f56:	21c7      	movs	r1, #199	; 0xc7
1a001f58:	4838      	ldr	r0, [pc, #224]	; (1a00203c <sysInit+0x254>)
1a001f5a:	f7ff feae 	bl	1a001cba <Chip_UART_SetupFIFOS>
1a001f5e:	2101      	movs	r1, #1
1a001f60:	4836      	ldr	r0, [pc, #216]	; (1a00203c <sysInit+0x254>)
1a001f62:	f7ff fe99 	bl	1a001c98 <Chip_UART_IntEnable>
1a001f66:	2300      	movs	r3, #0
1a001f68:	607b      	str	r3, [r7, #4]
1a001f6a:	e032      	b.n	1a001fd2 <sysInit+0x1ea>
1a001f6c:	687b      	ldr	r3, [r7, #4]
1a001f6e:	b2d8      	uxtb	r0, r3
1a001f70:	4931      	ldr	r1, [pc, #196]	; (1a002038 <sysInit+0x250>)
1a001f72:	687a      	ldr	r2, [r7, #4]
1a001f74:	4613      	mov	r3, r2
1a001f76:	005b      	lsls	r3, r3, #1
1a001f78:	4413      	add	r3, r2
1a001f7a:	005b      	lsls	r3, r3, #1
1a001f7c:	440b      	add	r3, r1
1a001f7e:	3302      	adds	r3, #2
1a001f80:	781c      	ldrb	r4, [r3, #0]
1a001f82:	492d      	ldr	r1, [pc, #180]	; (1a002038 <sysInit+0x250>)
1a001f84:	687a      	ldr	r2, [r7, #4]
1a001f86:	4613      	mov	r3, r2
1a001f88:	005b      	lsls	r3, r3, #1
1a001f8a:	4413      	add	r3, r2
1a001f8c:	005b      	lsls	r3, r3, #1
1a001f8e:	440b      	add	r3, r1
1a001f90:	3303      	adds	r3, #3
1a001f92:	781b      	ldrb	r3, [r3, #0]
1a001f94:	461a      	mov	r2, r3
1a001f96:	4621      	mov	r1, r4
1a001f98:	f7ff fd98 	bl	1a001acc <Chip_SCU_GPIOIntPinSel>
1a001f9c:	2201      	movs	r2, #1
1a001f9e:	687b      	ldr	r3, [r7, #4]
1a001fa0:	fa02 f303 	lsl.w	r3, r2, r3
1a001fa4:	4619      	mov	r1, r3
1a001fa6:	4826      	ldr	r0, [pc, #152]	; (1a002040 <sysInit+0x258>)
1a001fa8:	f7ff fe5b 	bl	1a001c62 <Chip_PININT_ClearIntStatus>
1a001fac:	2201      	movs	r2, #1
1a001fae:	687b      	ldr	r3, [r7, #4]
1a001fb0:	fa02 f303 	lsl.w	r3, r2, r3
1a001fb4:	4619      	mov	r1, r3
1a001fb6:	4822      	ldr	r0, [pc, #136]	; (1a002040 <sysInit+0x258>)
1a001fb8:	f7ff fe33 	bl	1a001c22 <Chip_PININT_SetPinModeEdge>
1a001fbc:	2201      	movs	r2, #1
1a001fbe:	687b      	ldr	r3, [r7, #4]
1a001fc0:	fa02 f303 	lsl.w	r3, r2, r3
1a001fc4:	4619      	mov	r1, r3
1a001fc6:	481e      	ldr	r0, [pc, #120]	; (1a002040 <sysInit+0x258>)
1a001fc8:	f7ff fe3d 	bl	1a001c46 <Chip_PININT_EnableIntLow>
1a001fcc:	687b      	ldr	r3, [r7, #4]
1a001fce:	3301      	adds	r3, #1
1a001fd0:	607b      	str	r3, [r7, #4]
1a001fd2:	687b      	ldr	r3, [r7, #4]
1a001fd4:	2b03      	cmp	r3, #3
1a001fd6:	ddc9      	ble.n	1a001f6c <sysInit+0x184>
1a001fd8:	2020      	movs	r0, #32
1a001fda:	f7ff fcf7 	bl	1a0019cc <NVIC_ClearPendingIRQ>
1a001fde:	2021      	movs	r0, #33	; 0x21
1a001fe0:	f7ff fcf4 	bl	1a0019cc <NVIC_ClearPendingIRQ>
1a001fe4:	2022      	movs	r0, #34	; 0x22
1a001fe6:	f7ff fcf1 	bl	1a0019cc <NVIC_ClearPendingIRQ>
1a001fea:	2023      	movs	r0, #35	; 0x23
1a001fec:	f7ff fcee 	bl	1a0019cc <NVIC_ClearPendingIRQ>
1a001ff0:	2020      	movs	r0, #32
1a001ff2:	f7ff fcd1 	bl	1a001998 <NVIC_EnableIRQ>
1a001ff6:	2021      	movs	r0, #33	; 0x21
1a001ff8:	f7ff fcce 	bl	1a001998 <NVIC_EnableIRQ>
1a001ffc:	2022      	movs	r0, #34	; 0x22
1a001ffe:	f7ff fccb 	bl	1a001998 <NVIC_EnableIRQ>
1a002002:	2023      	movs	r0, #35	; 0x23
1a002004:	f7ff fcc8 	bl	1a001998 <NVIC_EnableIRQ>
1a002008:	201a      	movs	r0, #26
1a00200a:	f7ff fcc5 	bl	1a001998 <NVIC_EnableIRQ>
1a00200e:	480b      	ldr	r0, [pc, #44]	; (1a00203c <sysInit+0x254>)
1a002010:	f7ff fe35 	bl	1a001c7e <Chip_UART_TXEnable>
1a002014:	4b0b      	ldr	r3, [pc, #44]	; (1a002044 <sysInit+0x25c>)
1a002016:	681b      	ldr	r3, [r3, #0]
1a002018:	4a0b      	ldr	r2, [pc, #44]	; (1a002048 <sysInit+0x260>)
1a00201a:	fba2 2303 	umull	r2, r3, r2, r3
1a00201e:	099b      	lsrs	r3, r3, #6
1a002020:	4618      	mov	r0, r3
1a002022:	f7ff fd17 	bl	1a001a54 <SysTick_Config>
1a002026:	bf00      	nop
1a002028:	370c      	adds	r7, #12
1a00202a:	46bd      	mov	sp, r7
1a00202c:	bd90      	pop	{r4, r7, pc}
1a00202e:	bf00      	nop
1a002030:	400f4000 	.word	0x400f4000
1a002034:	1a0031bc 	.word	0x1a0031bc
1a002038:	1a0031e0 	.word	0x1a0031e0
1a00203c:	400c1000 	.word	0x400c1000
1a002040:	40087000 	.word	0x40087000
1a002044:	10000078 	.word	0x10000078
1a002048:	10624dd3 	.word	0x10624dd3

1a00204c <ledOn>:
1a00204c:	b580      	push	{r7, lr}
1a00204e:	b082      	sub	sp, #8
1a002050:	af00      	add	r7, sp, #0
1a002052:	4603      	mov	r3, r0
1a002054:	71fb      	strb	r3, [r7, #7]
1a002056:	79fa      	ldrb	r2, [r7, #7]
1a002058:	490c      	ldr	r1, [pc, #48]	; (1a00208c <ledOn+0x40>)
1a00205a:	4613      	mov	r3, r2
1a00205c:	005b      	lsls	r3, r3, #1
1a00205e:	4413      	add	r3, r2
1a002060:	005b      	lsls	r3, r3, #1
1a002062:	440b      	add	r3, r1
1a002064:	3302      	adds	r3, #2
1a002066:	7818      	ldrb	r0, [r3, #0]
1a002068:	79fa      	ldrb	r2, [r7, #7]
1a00206a:	4908      	ldr	r1, [pc, #32]	; (1a00208c <ledOn+0x40>)
1a00206c:	4613      	mov	r3, r2
1a00206e:	005b      	lsls	r3, r3, #1
1a002070:	4413      	add	r3, r2
1a002072:	005b      	lsls	r3, r3, #1
1a002074:	440b      	add	r3, r1
1a002076:	3303      	adds	r3, #3
1a002078:	781b      	ldrb	r3, [r3, #0]
1a00207a:	461a      	mov	r2, r3
1a00207c:	4601      	mov	r1, r0
1a00207e:	4804      	ldr	r0, [pc, #16]	; (1a002090 <ledOn+0x44>)
1a002080:	f7ff fd9d 	bl	1a001bbe <Chip_GPIO_SetPinOutHigh>
1a002084:	bf00      	nop
1a002086:	3708      	adds	r7, #8
1a002088:	46bd      	mov	sp, r7
1a00208a:	bd80      	pop	{r7, pc}
1a00208c:	1a0031bc 	.word	0x1a0031bc
1a002090:	400f4000 	.word	0x400f4000

1a002094 <ledOff>:
1a002094:	b580      	push	{r7, lr}
1a002096:	b082      	sub	sp, #8
1a002098:	af00      	add	r7, sp, #0
1a00209a:	4603      	mov	r3, r0
1a00209c:	71fb      	strb	r3, [r7, #7]
1a00209e:	79fa      	ldrb	r2, [r7, #7]
1a0020a0:	490c      	ldr	r1, [pc, #48]	; (1a0020d4 <ledOff+0x40>)
1a0020a2:	4613      	mov	r3, r2
1a0020a4:	005b      	lsls	r3, r3, #1
1a0020a6:	4413      	add	r3, r2
1a0020a8:	005b      	lsls	r3, r3, #1
1a0020aa:	440b      	add	r3, r1
1a0020ac:	3302      	adds	r3, #2
1a0020ae:	7818      	ldrb	r0, [r3, #0]
1a0020b0:	79fa      	ldrb	r2, [r7, #7]
1a0020b2:	4908      	ldr	r1, [pc, #32]	; (1a0020d4 <ledOff+0x40>)
1a0020b4:	4613      	mov	r3, r2
1a0020b6:	005b      	lsls	r3, r3, #1
1a0020b8:	4413      	add	r3, r2
1a0020ba:	005b      	lsls	r3, r3, #1
1a0020bc:	440b      	add	r3, r1
1a0020be:	3303      	adds	r3, #3
1a0020c0:	781b      	ldrb	r3, [r3, #0]
1a0020c2:	461a      	mov	r2, r3
1a0020c4:	4601      	mov	r1, r0
1a0020c6:	4804      	ldr	r0, [pc, #16]	; (1a0020d8 <ledOff+0x44>)
1a0020c8:	f7ff fd92 	bl	1a001bf0 <Chip_GPIO_SetPinOutLow>
1a0020cc:	bf00      	nop
1a0020ce:	3708      	adds	r7, #8
1a0020d0:	46bd      	mov	sp, r7
1a0020d2:	bd80      	pop	{r7, pc}
1a0020d4:	1a0031bc 	.word	0x1a0031bc
1a0020d8:	400f4000 	.word	0x400f4000

1a0020dc <SysTick_Handler>:
1a0020dc:	b480      	push	{r7}
1a0020de:	af00      	add	r7, sp, #0
1a0020e0:	4b03      	ldr	r3, [pc, #12]	; (1a0020f0 <SysTick_Handler+0x14>)
1a0020e2:	2201      	movs	r2, #1
1a0020e4:	701a      	strb	r2, [r3, #0]
1a0020e6:	bf00      	nop
1a0020e8:	46bd      	mov	sp, r7
1a0020ea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0020ee:	4770      	bx	lr
1a0020f0:	10000061 	.word	0x10000061

1a0020f4 <getSysTickEv>:
1a0020f4:	b480      	push	{r7}
1a0020f6:	af00      	add	r7, sp, #0
1a0020f8:	4b03      	ldr	r3, [pc, #12]	; (1a002108 <getSysTickEv+0x14>)
1a0020fa:	781b      	ldrb	r3, [r3, #0]
1a0020fc:	4618      	mov	r0, r3
1a0020fe:	46bd      	mov	sp, r7
1a002100:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002104:	4770      	bx	lr
1a002106:	bf00      	nop
1a002108:	10000061 	.word	0x10000061

1a00210c <rstSysTickEv>:
1a00210c:	b480      	push	{r7}
1a00210e:	af00      	add	r7, sp, #0
1a002110:	4b03      	ldr	r3, [pc, #12]	; (1a002120 <rstSysTickEv+0x14>)
1a002112:	2200      	movs	r2, #0
1a002114:	701a      	strb	r2, [r3, #0]
1a002116:	bf00      	nop
1a002118:	46bd      	mov	sp, r7
1a00211a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00211e:	4770      	bx	lr
1a002120:	10000061 	.word	0x10000061

1a002124 <GPIO0_IRQHandler>:
1a002124:	b580      	push	{r7, lr}
1a002126:	af00      	add	r7, sp, #0
1a002128:	4b06      	ldr	r3, [pc, #24]	; (1a002144 <GPIO0_IRQHandler+0x20>)
1a00212a:	2201      	movs	r2, #1
1a00212c:	701a      	strb	r2, [r3, #0]
1a00212e:	2101      	movs	r1, #1
1a002130:	4805      	ldr	r0, [pc, #20]	; (1a002148 <GPIO0_IRQHandler+0x24>)
1a002132:	f7ff fd96 	bl	1a001c62 <Chip_PININT_ClearIntStatus>
1a002136:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a00213a:	f7ff fde7 	bl	1a001d0c <StopWatch_DelayMs>
1a00213e:	bf00      	nop
1a002140:	bd80      	pop	{r7, pc}
1a002142:	bf00      	nop
1a002144:	10000060 	.word	0x10000060
1a002148:	40087000 	.word	0x40087000

1a00214c <GPIO1_IRQHandler>:
1a00214c:	b580      	push	{r7, lr}
1a00214e:	af00      	add	r7, sp, #0
1a002150:	4b06      	ldr	r3, [pc, #24]	; (1a00216c <GPIO1_IRQHandler+0x20>)
1a002152:	2202      	movs	r2, #2
1a002154:	701a      	strb	r2, [r3, #0]
1a002156:	2102      	movs	r1, #2
1a002158:	4805      	ldr	r0, [pc, #20]	; (1a002170 <GPIO1_IRQHandler+0x24>)
1a00215a:	f7ff fd82 	bl	1a001c62 <Chip_PININT_ClearIntStatus>
1a00215e:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a002162:	f7ff fdd3 	bl	1a001d0c <StopWatch_DelayMs>
1a002166:	bf00      	nop
1a002168:	bd80      	pop	{r7, pc}
1a00216a:	bf00      	nop
1a00216c:	10000060 	.word	0x10000060
1a002170:	40087000 	.word	0x40087000

1a002174 <GPIO2_IRQHandler>:
1a002174:	b580      	push	{r7, lr}
1a002176:	af00      	add	r7, sp, #0
1a002178:	4b06      	ldr	r3, [pc, #24]	; (1a002194 <GPIO2_IRQHandler+0x20>)
1a00217a:	2203      	movs	r2, #3
1a00217c:	701a      	strb	r2, [r3, #0]
1a00217e:	2104      	movs	r1, #4
1a002180:	4805      	ldr	r0, [pc, #20]	; (1a002198 <GPIO2_IRQHandler+0x24>)
1a002182:	f7ff fd6e 	bl	1a001c62 <Chip_PININT_ClearIntStatus>
1a002186:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a00218a:	f7ff fdbf 	bl	1a001d0c <StopWatch_DelayMs>
1a00218e:	bf00      	nop
1a002190:	bd80      	pop	{r7, pc}
1a002192:	bf00      	nop
1a002194:	10000060 	.word	0x10000060
1a002198:	40087000 	.word	0x40087000

1a00219c <GPIO3_IRQHandler>:
1a00219c:	b580      	push	{r7, lr}
1a00219e:	af00      	add	r7, sp, #0
1a0021a0:	4b06      	ldr	r3, [pc, #24]	; (1a0021bc <GPIO3_IRQHandler+0x20>)
1a0021a2:	2204      	movs	r2, #4
1a0021a4:	701a      	strb	r2, [r3, #0]
1a0021a6:	2108      	movs	r1, #8
1a0021a8:	4805      	ldr	r0, [pc, #20]	; (1a0021c0 <GPIO3_IRQHandler+0x24>)
1a0021aa:	f7ff fd5a 	bl	1a001c62 <Chip_PININT_ClearIntStatus>
1a0021ae:	f44f 7096 	mov.w	r0, #300	; 0x12c
1a0021b2:	f7ff fdab 	bl	1a001d0c <StopWatch_DelayMs>
1a0021b6:	bf00      	nop
1a0021b8:	bd80      	pop	{r7, pc}
1a0021ba:	bf00      	nop
1a0021bc:	10000060 	.word	0x10000060
1a0021c0:	40087000 	.word	0x40087000

1a0021c4 <rstKeyPressed>:
1a0021c4:	b480      	push	{r7}
1a0021c6:	af00      	add	r7, sp, #0
1a0021c8:	4b03      	ldr	r3, [pc, #12]	; (1a0021d8 <rstKeyPressed+0x14>)
1a0021ca:	2200      	movs	r2, #0
1a0021cc:	701a      	strb	r2, [r3, #0]
1a0021ce:	bf00      	nop
1a0021d0:	46bd      	mov	sp, r7
1a0021d2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021d6:	4770      	bx	lr
1a0021d8:	10000060 	.word	0x10000060

1a0021dc <fpuInit>:
1a0021dc:	b480      	push	{r7}
1a0021de:	b089      	sub	sp, #36	; 0x24
1a0021e0:	af00      	add	r7, sp, #0
1a0021e2:	4b16      	ldr	r3, [pc, #88]	; (1a00223c <fpuInit+0x60>)
1a0021e4:	61fb      	str	r3, [r7, #28]
1a0021e6:	4b16      	ldr	r3, [pc, #88]	; (1a002240 <fpuInit+0x64>)
1a0021e8:	61bb      	str	r3, [r7, #24]
1a0021ea:	4b16      	ldr	r3, [pc, #88]	; (1a002244 <fpuInit+0x68>)
1a0021ec:	617b      	str	r3, [r7, #20]
1a0021ee:	2300      	movs	r3, #0
1a0021f0:	74fb      	strb	r3, [r7, #19]
1a0021f2:	69bb      	ldr	r3, [r7, #24]
1a0021f4:	681b      	ldr	r3, [r3, #0]
1a0021f6:	60bb      	str	r3, [r7, #8]
1a0021f8:	697b      	ldr	r3, [r7, #20]
1a0021fa:	681b      	ldr	r3, [r3, #0]
1a0021fc:	607b      	str	r3, [r7, #4]
1a0021fe:	68bb      	ldr	r3, [r7, #8]
1a002200:	4a11      	ldr	r2, [pc, #68]	; (1a002248 <fpuInit+0x6c>)
1a002202:	4293      	cmp	r3, r2
1a002204:	d105      	bne.n	1a002212 <fpuInit+0x36>
1a002206:	687b      	ldr	r3, [r7, #4]
1a002208:	4a10      	ldr	r2, [pc, #64]	; (1a00224c <fpuInit+0x70>)
1a00220a:	4293      	cmp	r3, r2
1a00220c:	d101      	bne.n	1a002212 <fpuInit+0x36>
1a00220e:	2301      	movs	r3, #1
1a002210:	e000      	b.n	1a002214 <fpuInit+0x38>
1a002212:	2300      	movs	r3, #0
1a002214:	74fb      	strb	r3, [r7, #19]
1a002216:	7cfb      	ldrb	r3, [r7, #19]
1a002218:	2b00      	cmp	r3, #0
1a00221a:	d009      	beq.n	1a002230 <fpuInit+0x54>
1a00221c:	69fb      	ldr	r3, [r7, #28]
1a00221e:	681b      	ldr	r3, [r3, #0]
1a002220:	60fb      	str	r3, [r7, #12]
1a002222:	68fb      	ldr	r3, [r7, #12]
1a002224:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a002228:	60fb      	str	r3, [r7, #12]
1a00222a:	68fa      	ldr	r2, [r7, #12]
1a00222c:	69fb      	ldr	r3, [r7, #28]
1a00222e:	601a      	str	r2, [r3, #0]
1a002230:	bf00      	nop
1a002232:	3724      	adds	r7, #36	; 0x24
1a002234:	46bd      	mov	sp, r7
1a002236:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00223a:	4770      	bx	lr
1a00223c:	e000ed88 	.word	0xe000ed88
1a002240:	e000ef40 	.word	0xe000ef40
1a002244:	e000ef44 	.word	0xe000ef44
1a002248:	10110021 	.word	0x10110021
1a00224c:	11000011 	.word	0x11000011

1a002250 <Chip_Clock_DisableMainPLL>:
1a002250:	b480      	push	{r7}
1a002252:	af00      	add	r7, sp, #0
1a002254:	4b05      	ldr	r3, [pc, #20]	; (1a00226c <Chip_Clock_DisableMainPLL+0x1c>)
1a002256:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a002258:	4a04      	ldr	r2, [pc, #16]	; (1a00226c <Chip_Clock_DisableMainPLL+0x1c>)
1a00225a:	f043 0301 	orr.w	r3, r3, #1
1a00225e:	6453      	str	r3, [r2, #68]	; 0x44
1a002260:	bf00      	nop
1a002262:	46bd      	mov	sp, r7
1a002264:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002268:	4770      	bx	lr
1a00226a:	bf00      	nop
1a00226c:	40050000 	.word	0x40050000

1a002270 <Chip_Clock_SetupMainPLL>:
1a002270:	b480      	push	{r7}
1a002272:	b083      	sub	sp, #12
1a002274:	af00      	add	r7, sp, #0
1a002276:	6078      	str	r0, [r7, #4]
1a002278:	687b      	ldr	r3, [r7, #4]
1a00227a:	681b      	ldr	r3, [r3, #0]
1a00227c:	461a      	mov	r2, r3
1a00227e:	687b      	ldr	r3, [r7, #4]
1a002280:	791b      	ldrb	r3, [r3, #4]
1a002282:	061b      	lsls	r3, r3, #24
1a002284:	4313      	orrs	r3, r2
1a002286:	687a      	ldr	r2, [r7, #4]
1a002288:	6912      	ldr	r2, [r2, #16]
1a00228a:	0412      	lsls	r2, r2, #16
1a00228c:	4313      	orrs	r3, r2
1a00228e:	687a      	ldr	r2, [r7, #4]
1a002290:	6892      	ldr	r2, [r2, #8]
1a002292:	0312      	lsls	r2, r2, #12
1a002294:	4313      	orrs	r3, r2
1a002296:	687a      	ldr	r2, [r7, #4]
1a002298:	68d2      	ldr	r2, [r2, #12]
1a00229a:	0212      	lsls	r2, r2, #8
1a00229c:	4313      	orrs	r3, r2
1a00229e:	4a05      	ldr	r2, [pc, #20]	; (1a0022b4 <Chip_Clock_SetupMainPLL+0x44>)
1a0022a0:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a0022a4:	6453      	str	r3, [r2, #68]	; 0x44
1a0022a6:	bf00      	nop
1a0022a8:	370c      	adds	r7, #12
1a0022aa:	46bd      	mov	sp, r7
1a0022ac:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0022b0:	4770      	bx	lr
1a0022b2:	bf00      	nop
1a0022b4:	40050000 	.word	0x40050000

1a0022b8 <Chip_Clock_MainPLLLocked>:
1a0022b8:	b480      	push	{r7}
1a0022ba:	af00      	add	r7, sp, #0
1a0022bc:	4b06      	ldr	r3, [pc, #24]	; (1a0022d8 <Chip_Clock_MainPLLLocked+0x20>)
1a0022be:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a0022c0:	f003 0301 	and.w	r3, r3, #1
1a0022c4:	2b00      	cmp	r3, #0
1a0022c6:	bf14      	ite	ne
1a0022c8:	2301      	movne	r3, #1
1a0022ca:	2300      	moveq	r3, #0
1a0022cc:	b2db      	uxtb	r3, r3
1a0022ce:	4618      	mov	r0, r3
1a0022d0:	46bd      	mov	sp, r7
1a0022d2:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0022d6:	4770      	bx	lr
1a0022d8:	40050000 	.word	0x40050000

1a0022dc <Chip_SetupCoreClock>:
1a0022dc:	b590      	push	{r4, r7, lr}
1a0022de:	b08f      	sub	sp, #60	; 0x3c
1a0022e0:	af00      	add	r7, sp, #0
1a0022e2:	4603      	mov	r3, r0
1a0022e4:	6039      	str	r1, [r7, #0]
1a0022e6:	71fb      	strb	r3, [r7, #7]
1a0022e8:	4613      	mov	r3, r2
1a0022ea:	71bb      	strb	r3, [r7, #6]
1a0022ec:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a0022f0:	62bb      	str	r3, [r7, #40]	; 0x28
1a0022f2:	2300      	movs	r3, #0
1a0022f4:	633b      	str	r3, [r7, #48]	; 0x30
1a0022f6:	2300      	movs	r3, #0
1a0022f8:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0022fa:	79fb      	ldrb	r3, [r7, #7]
1a0022fc:	2b06      	cmp	r3, #6
1a0022fe:	d101      	bne.n	1a002304 <Chip_SetupCoreClock+0x28>
1a002300:	f000 fbf2 	bl	1a002ae8 <Chip_Clock_EnableCrystal>
1a002304:	79f9      	ldrb	r1, [r7, #7]
1a002306:	2300      	movs	r3, #0
1a002308:	2201      	movs	r2, #1
1a00230a:	2004      	movs	r0, #4
1a00230c:	f000 fdde 	bl	1a002ecc <Chip_Clock_SetBaseClock>
1a002310:	f7ff ff9e 	bl	1a002250 <Chip_Clock_DisableMainPLL>
1a002314:	79fb      	ldrb	r3, [r7, #7]
1a002316:	733b      	strb	r3, [r7, #12]
1a002318:	f107 0308 	add.w	r3, r7, #8
1a00231c:	4619      	mov	r1, r3
1a00231e:	6838      	ldr	r0, [r7, #0]
1a002320:	f000 fc1a 	bl	1a002b58 <Chip_Clock_CalcMainPLLValue>
1a002324:	683b      	ldr	r3, [r7, #0]
1a002326:	4a3d      	ldr	r2, [pc, #244]	; (1a00241c <Chip_SetupCoreClock+0x140>)
1a002328:	4293      	cmp	r3, r2
1a00232a:	d916      	bls.n	1a00235a <Chip_SetupCoreClock+0x7e>
1a00232c:	68bb      	ldr	r3, [r7, #8]
1a00232e:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a002332:	2b00      	cmp	r3, #0
1a002334:	d000      	beq.n	1a002338 <Chip_SetupCoreClock+0x5c>
1a002336:	e7fe      	b.n	1a002336 <Chip_SetupCoreClock+0x5a>
1a002338:	68bb      	ldr	r3, [r7, #8]
1a00233a:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00233e:	2b00      	cmp	r3, #0
1a002340:	d006      	beq.n	1a002350 <Chip_SetupCoreClock+0x74>
1a002342:	2301      	movs	r3, #1
1a002344:	633b      	str	r3, [r7, #48]	; 0x30
1a002346:	68bb      	ldr	r3, [r7, #8]
1a002348:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a00234c:	60bb      	str	r3, [r7, #8]
1a00234e:	e004      	b.n	1a00235a <Chip_SetupCoreClock+0x7e>
1a002350:	2301      	movs	r3, #1
1a002352:	62fb      	str	r3, [r7, #44]	; 0x2c
1a002354:	697b      	ldr	r3, [r7, #20]
1a002356:	3301      	adds	r3, #1
1a002358:	617b      	str	r3, [r7, #20]
1a00235a:	f107 0308 	add.w	r3, r7, #8
1a00235e:	4618      	mov	r0, r3
1a002360:	f7ff ff86 	bl	1a002270 <Chip_Clock_SetupMainPLL>
1a002364:	bf00      	nop
1a002366:	f7ff ffa7 	bl	1a0022b8 <Chip_Clock_MainPLLLocked>
1a00236a:	4603      	mov	r3, r0
1a00236c:	2b00      	cmp	r3, #0
1a00236e:	d0fa      	beq.n	1a002366 <Chip_SetupCoreClock+0x8a>
1a002370:	2300      	movs	r3, #0
1a002372:	2201      	movs	r2, #1
1a002374:	2109      	movs	r1, #9
1a002376:	2004      	movs	r0, #4
1a002378:	f000 fda8 	bl	1a002ecc <Chip_Clock_SetBaseClock>
1a00237c:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a00237e:	2b00      	cmp	r3, #0
1a002380:	d012      	beq.n	1a0023a8 <Chip_SetupCoreClock+0xcc>
1a002382:	f241 7370 	movw	r3, #6000	; 0x1770
1a002386:	62bb      	str	r3, [r7, #40]	; 0x28
1a002388:	bf00      	nop
1a00238a:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a00238c:	1e5a      	subs	r2, r3, #1
1a00238e:	62ba      	str	r2, [r7, #40]	; 0x28
1a002390:	2b00      	cmp	r3, #0
1a002392:	d1fa      	bne.n	1a00238a <Chip_SetupCoreClock+0xae>
1a002394:	68bb      	ldr	r3, [r7, #8]
1a002396:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a00239a:	60bb      	str	r3, [r7, #8]
1a00239c:	f107 0308 	add.w	r3, r7, #8
1a0023a0:	4618      	mov	r0, r3
1a0023a2:	f7ff ff65 	bl	1a002270 <Chip_Clock_SetupMainPLL>
1a0023a6:	e013      	b.n	1a0023d0 <Chip_SetupCoreClock+0xf4>
1a0023a8:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0023aa:	2b00      	cmp	r3, #0
1a0023ac:	d010      	beq.n	1a0023d0 <Chip_SetupCoreClock+0xf4>
1a0023ae:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a0023b2:	62bb      	str	r3, [r7, #40]	; 0x28
1a0023b4:	bf00      	nop
1a0023b6:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a0023b8:	1e5a      	subs	r2, r3, #1
1a0023ba:	62ba      	str	r2, [r7, #40]	; 0x28
1a0023bc:	2b00      	cmp	r3, #0
1a0023be:	d1fa      	bne.n	1a0023b6 <Chip_SetupCoreClock+0xda>
1a0023c0:	697b      	ldr	r3, [r7, #20]
1a0023c2:	3b01      	subs	r3, #1
1a0023c4:	617b      	str	r3, [r7, #20]
1a0023c6:	f107 0308 	add.w	r3, r7, #8
1a0023ca:	4618      	mov	r0, r3
1a0023cc:	f7ff ff50 	bl	1a002270 <Chip_Clock_SetupMainPLL>
1a0023d0:	79bb      	ldrb	r3, [r7, #6]
1a0023d2:	2b00      	cmp	r3, #0
1a0023d4:	d01e      	beq.n	1a002414 <Chip_SetupCoreClock+0x138>
1a0023d6:	2300      	movs	r3, #0
1a0023d8:	637b      	str	r3, [r7, #52]	; 0x34
1a0023da:	e018      	b.n	1a00240e <Chip_SetupCoreClock+0x132>
1a0023dc:	4a10      	ldr	r2, [pc, #64]	; (1a002420 <Chip_SetupCoreClock+0x144>)
1a0023de:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0023e0:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a0023e4:	4a0e      	ldr	r2, [pc, #56]	; (1a002420 <Chip_SetupCoreClock+0x144>)
1a0023e6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0023e8:	009b      	lsls	r3, r3, #2
1a0023ea:	4413      	add	r3, r2
1a0023ec:	7859      	ldrb	r1, [r3, #1]
1a0023ee:	4a0c      	ldr	r2, [pc, #48]	; (1a002420 <Chip_SetupCoreClock+0x144>)
1a0023f0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0023f2:	009b      	lsls	r3, r3, #2
1a0023f4:	4413      	add	r3, r2
1a0023f6:	789c      	ldrb	r4, [r3, #2]
1a0023f8:	4a09      	ldr	r2, [pc, #36]	; (1a002420 <Chip_SetupCoreClock+0x144>)
1a0023fa:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0023fc:	009b      	lsls	r3, r3, #2
1a0023fe:	4413      	add	r3, r2
1a002400:	78db      	ldrb	r3, [r3, #3]
1a002402:	4622      	mov	r2, r4
1a002404:	f000 fd62 	bl	1a002ecc <Chip_Clock_SetBaseClock>
1a002408:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a00240a:	3301      	adds	r3, #1
1a00240c:	637b      	str	r3, [r7, #52]	; 0x34
1a00240e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a002410:	2b11      	cmp	r3, #17
1a002412:	d9e3      	bls.n	1a0023dc <Chip_SetupCoreClock+0x100>
1a002414:	bf00      	nop
1a002416:	373c      	adds	r7, #60	; 0x3c
1a002418:	46bd      	mov	sp, r7
1a00241a:	bd90      	pop	{r4, r7, pc}
1a00241c:	068e7780 	.word	0x068e7780
1a002420:	1a0031f8 	.word	0x1a0031f8

1a002424 <Chip_SetupXtalClocking>:
1a002424:	b580      	push	{r7, lr}
1a002426:	af00      	add	r7, sp, #0
1a002428:	2201      	movs	r2, #1
1a00242a:	4903      	ldr	r1, [pc, #12]	; (1a002438 <Chip_SetupXtalClocking+0x14>)
1a00242c:	2006      	movs	r0, #6
1a00242e:	f7ff ff55 	bl	1a0022dc <Chip_SetupCoreClock>
1a002432:	bf00      	nop
1a002434:	bd80      	pop	{r7, pc}
1a002436:	bf00      	nop
1a002438:	0c28cb00 	.word	0x0c28cb00

1a00243c <Chip_UART_TXDisable>:
1a00243c:	b480      	push	{r7}
1a00243e:	b083      	sub	sp, #12
1a002440:	af00      	add	r7, sp, #0
1a002442:	6078      	str	r0, [r7, #4]
1a002444:	687b      	ldr	r3, [r7, #4]
1a002446:	2200      	movs	r2, #0
1a002448:	65da      	str	r2, [r3, #92]	; 0x5c
1a00244a:	bf00      	nop
1a00244c:	370c      	adds	r7, #12
1a00244e:	46bd      	mov	sp, r7
1a002450:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002454:	4770      	bx	lr

1a002456 <Chip_UART_SetupFIFOS>:
1a002456:	b480      	push	{r7}
1a002458:	b083      	sub	sp, #12
1a00245a:	af00      	add	r7, sp, #0
1a00245c:	6078      	str	r0, [r7, #4]
1a00245e:	6039      	str	r1, [r7, #0]
1a002460:	687b      	ldr	r3, [r7, #4]
1a002462:	683a      	ldr	r2, [r7, #0]
1a002464:	609a      	str	r2, [r3, #8]
1a002466:	bf00      	nop
1a002468:	370c      	adds	r7, #12
1a00246a:	46bd      	mov	sp, r7
1a00246c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002470:	4770      	bx	lr

1a002472 <Chip_UART_ConfigData>:
1a002472:	b480      	push	{r7}
1a002474:	b083      	sub	sp, #12
1a002476:	af00      	add	r7, sp, #0
1a002478:	6078      	str	r0, [r7, #4]
1a00247a:	6039      	str	r1, [r7, #0]
1a00247c:	687b      	ldr	r3, [r7, #4]
1a00247e:	683a      	ldr	r2, [r7, #0]
1a002480:	60da      	str	r2, [r3, #12]
1a002482:	bf00      	nop
1a002484:	370c      	adds	r7, #12
1a002486:	46bd      	mov	sp, r7
1a002488:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00248c:	4770      	bx	lr

1a00248e <Chip_UART_EnableDivisorAccess>:
1a00248e:	b480      	push	{r7}
1a002490:	b083      	sub	sp, #12
1a002492:	af00      	add	r7, sp, #0
1a002494:	6078      	str	r0, [r7, #4]
1a002496:	687b      	ldr	r3, [r7, #4]
1a002498:	68db      	ldr	r3, [r3, #12]
1a00249a:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a00249e:	687b      	ldr	r3, [r7, #4]
1a0024a0:	60da      	str	r2, [r3, #12]
1a0024a2:	bf00      	nop
1a0024a4:	370c      	adds	r7, #12
1a0024a6:	46bd      	mov	sp, r7
1a0024a8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0024ac:	4770      	bx	lr

1a0024ae <Chip_UART_DisableDivisorAccess>:
1a0024ae:	b480      	push	{r7}
1a0024b0:	b083      	sub	sp, #12
1a0024b2:	af00      	add	r7, sp, #0
1a0024b4:	6078      	str	r0, [r7, #4]
1a0024b6:	687b      	ldr	r3, [r7, #4]
1a0024b8:	68db      	ldr	r3, [r3, #12]
1a0024ba:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a0024be:	687b      	ldr	r3, [r7, #4]
1a0024c0:	60da      	str	r2, [r3, #12]
1a0024c2:	bf00      	nop
1a0024c4:	370c      	adds	r7, #12
1a0024c6:	46bd      	mov	sp, r7
1a0024c8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0024cc:	4770      	bx	lr

1a0024ce <Chip_UART_SetDivisorLatches>:
1a0024ce:	b480      	push	{r7}
1a0024d0:	b083      	sub	sp, #12
1a0024d2:	af00      	add	r7, sp, #0
1a0024d4:	6078      	str	r0, [r7, #4]
1a0024d6:	460b      	mov	r3, r1
1a0024d8:	70fb      	strb	r3, [r7, #3]
1a0024da:	4613      	mov	r3, r2
1a0024dc:	70bb      	strb	r3, [r7, #2]
1a0024de:	78fa      	ldrb	r2, [r7, #3]
1a0024e0:	687b      	ldr	r3, [r7, #4]
1a0024e2:	601a      	str	r2, [r3, #0]
1a0024e4:	78ba      	ldrb	r2, [r7, #2]
1a0024e6:	687b      	ldr	r3, [r7, #4]
1a0024e8:	605a      	str	r2, [r3, #4]
1a0024ea:	bf00      	nop
1a0024ec:	370c      	adds	r7, #12
1a0024ee:	46bd      	mov	sp, r7
1a0024f0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0024f4:	4770      	bx	lr
1a0024f6:	Address 0x000000001a0024f6 is out of bounds.


1a0024f8 <Chip_UART_GetIndex>:
1a0024f8:	b480      	push	{r7}
1a0024fa:	b085      	sub	sp, #20
1a0024fc:	af00      	add	r7, sp, #0
1a0024fe:	6078      	str	r0, [r7, #4]
1a002500:	687b      	ldr	r3, [r7, #4]
1a002502:	60fb      	str	r3, [r7, #12]
1a002504:	68fb      	ldr	r3, [r7, #12]
1a002506:	4a10      	ldr	r2, [pc, #64]	; (1a002548 <Chip_UART_GetIndex+0x50>)
1a002508:	4293      	cmp	r3, r2
1a00250a:	d00f      	beq.n	1a00252c <Chip_UART_GetIndex+0x34>
1a00250c:	4a0e      	ldr	r2, [pc, #56]	; (1a002548 <Chip_UART_GetIndex+0x50>)
1a00250e:	4293      	cmp	r3, r2
1a002510:	d803      	bhi.n	1a00251a <Chip_UART_GetIndex+0x22>
1a002512:	4a0e      	ldr	r2, [pc, #56]	; (1a00254c <Chip_UART_GetIndex+0x54>)
1a002514:	4293      	cmp	r3, r2
1a002516:	d007      	beq.n	1a002528 <Chip_UART_GetIndex+0x30>
1a002518:	e00e      	b.n	1a002538 <Chip_UART_GetIndex+0x40>
1a00251a:	4a0d      	ldr	r2, [pc, #52]	; (1a002550 <Chip_UART_GetIndex+0x58>)
1a00251c:	4293      	cmp	r3, r2
1a00251e:	d007      	beq.n	1a002530 <Chip_UART_GetIndex+0x38>
1a002520:	4a0c      	ldr	r2, [pc, #48]	; (1a002554 <Chip_UART_GetIndex+0x5c>)
1a002522:	4293      	cmp	r3, r2
1a002524:	d006      	beq.n	1a002534 <Chip_UART_GetIndex+0x3c>
1a002526:	e007      	b.n	1a002538 <Chip_UART_GetIndex+0x40>
1a002528:	2300      	movs	r3, #0
1a00252a:	e006      	b.n	1a00253a <Chip_UART_GetIndex+0x42>
1a00252c:	2301      	movs	r3, #1
1a00252e:	e004      	b.n	1a00253a <Chip_UART_GetIndex+0x42>
1a002530:	2302      	movs	r3, #2
1a002532:	e002      	b.n	1a00253a <Chip_UART_GetIndex+0x42>
1a002534:	2303      	movs	r3, #3
1a002536:	e000      	b.n	1a00253a <Chip_UART_GetIndex+0x42>
1a002538:	2300      	movs	r3, #0
1a00253a:	4618      	mov	r0, r3
1a00253c:	3714      	adds	r7, #20
1a00253e:	46bd      	mov	sp, r7
1a002540:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002544:	4770      	bx	lr
1a002546:	bf00      	nop
1a002548:	40082000 	.word	0x40082000
1a00254c:	40081000 	.word	0x40081000
1a002550:	400c1000 	.word	0x400c1000
1a002554:	400c2000 	.word	0x400c2000

1a002558 <Chip_UART_Init>:
1a002558:	b580      	push	{r7, lr}
1a00255a:	b084      	sub	sp, #16
1a00255c:	af00      	add	r7, sp, #0
1a00255e:	6078      	str	r0, [r7, #4]
1a002560:	68fb      	ldr	r3, [r7, #12]
1a002562:	6878      	ldr	r0, [r7, #4]
1a002564:	f7ff ffc8 	bl	1a0024f8 <Chip_UART_GetIndex>
1a002568:	4602      	mov	r2, r0
1a00256a:	4b1b      	ldr	r3, [pc, #108]	; (1a0025d8 <Chip_UART_Init+0x80>)
1a00256c:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a002570:	2301      	movs	r3, #1
1a002572:	2201      	movs	r2, #1
1a002574:	2101      	movs	r1, #1
1a002576:	f000 fd1d 	bl	1a002fb4 <Chip_Clock_EnableOpts>
1a00257a:	2107      	movs	r1, #7
1a00257c:	6878      	ldr	r0, [r7, #4]
1a00257e:	f7ff ff6a 	bl	1a002456 <Chip_UART_SetupFIFOS>
1a002582:	6878      	ldr	r0, [r7, #4]
1a002584:	f7ff ff5a 	bl	1a00243c <Chip_UART_TXDisable>
1a002588:	687b      	ldr	r3, [r7, #4]
1a00258a:	2200      	movs	r2, #0
1a00258c:	605a      	str	r2, [r3, #4]
1a00258e:	687b      	ldr	r3, [r7, #4]
1a002590:	2200      	movs	r2, #0
1a002592:	60da      	str	r2, [r3, #12]
1a002594:	687b      	ldr	r3, [r7, #4]
1a002596:	2200      	movs	r2, #0
1a002598:	621a      	str	r2, [r3, #32]
1a00259a:	687b      	ldr	r3, [r7, #4]
1a00259c:	2200      	movs	r2, #0
1a00259e:	64da      	str	r2, [r3, #76]	; 0x4c
1a0025a0:	687b      	ldr	r3, [r7, #4]
1a0025a2:	2200      	movs	r2, #0
1a0025a4:	655a      	str	r2, [r3, #84]	; 0x54
1a0025a6:	687b      	ldr	r3, [r7, #4]
1a0025a8:	2200      	movs	r2, #0
1a0025aa:	651a      	str	r2, [r3, #80]	; 0x50
1a0025ac:	687b      	ldr	r3, [r7, #4]
1a0025ae:	4a0b      	ldr	r2, [pc, #44]	; (1a0025dc <Chip_UART_Init+0x84>)
1a0025b0:	4293      	cmp	r3, r2
1a0025b2:	d105      	bne.n	1a0025c0 <Chip_UART_Init+0x68>
1a0025b4:	687b      	ldr	r3, [r7, #4]
1a0025b6:	2200      	movs	r2, #0
1a0025b8:	611a      	str	r2, [r3, #16]
1a0025ba:	687b      	ldr	r3, [r7, #4]
1a0025bc:	699b      	ldr	r3, [r3, #24]
1a0025be:	60fb      	str	r3, [r7, #12]
1a0025c0:	2103      	movs	r1, #3
1a0025c2:	6878      	ldr	r0, [r7, #4]
1a0025c4:	f7ff ff55 	bl	1a002472 <Chip_UART_ConfigData>
1a0025c8:	687b      	ldr	r3, [r7, #4]
1a0025ca:	2210      	movs	r2, #16
1a0025cc:	629a      	str	r2, [r3, #40]	; 0x28
1a0025ce:	bf00      	nop
1a0025d0:	3710      	adds	r7, #16
1a0025d2:	46bd      	mov	sp, r7
1a0025d4:	bd80      	pop	{r7, pc}
1a0025d6:	bf00      	nop
1a0025d8:	1a003240 	.word	0x1a003240
1a0025dc:	40082000 	.word	0x40082000

1a0025e0 <Chip_UART_SetBaud>:
1a0025e0:	b580      	push	{r7, lr}
1a0025e2:	b086      	sub	sp, #24
1a0025e4:	af00      	add	r7, sp, #0
1a0025e6:	6078      	str	r0, [r7, #4]
1a0025e8:	6039      	str	r1, [r7, #0]
1a0025ea:	6878      	ldr	r0, [r7, #4]
1a0025ec:	f7ff ff84 	bl	1a0024f8 <Chip_UART_GetIndex>
1a0025f0:	4602      	mov	r2, r0
1a0025f2:	4b16      	ldr	r3, [pc, #88]	; (1a00264c <Chip_UART_SetBaud+0x6c>)
1a0025f4:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a0025f8:	4618      	mov	r0, r3
1a0025fa:	f000 fd49 	bl	1a003090 <Chip_Clock_GetRate>
1a0025fe:	6178      	str	r0, [r7, #20]
1a002600:	683b      	ldr	r3, [r7, #0]
1a002602:	011b      	lsls	r3, r3, #4
1a002604:	697a      	ldr	r2, [r7, #20]
1a002606:	fbb2 f3f3 	udiv	r3, r2, r3
1a00260a:	613b      	str	r3, [r7, #16]
1a00260c:	693b      	ldr	r3, [r7, #16]
1a00260e:	0a1b      	lsrs	r3, r3, #8
1a002610:	60fb      	str	r3, [r7, #12]
1a002612:	68fb      	ldr	r3, [r7, #12]
1a002614:	021b      	lsls	r3, r3, #8
1a002616:	693a      	ldr	r2, [r7, #16]
1a002618:	1ad3      	subs	r3, r2, r3
1a00261a:	60bb      	str	r3, [r7, #8]
1a00261c:	6878      	ldr	r0, [r7, #4]
1a00261e:	f7ff ff36 	bl	1a00248e <Chip_UART_EnableDivisorAccess>
1a002622:	68bb      	ldr	r3, [r7, #8]
1a002624:	b2db      	uxtb	r3, r3
1a002626:	68fa      	ldr	r2, [r7, #12]
1a002628:	b2d2      	uxtb	r2, r2
1a00262a:	4619      	mov	r1, r3
1a00262c:	6878      	ldr	r0, [r7, #4]
1a00262e:	f7ff ff4e 	bl	1a0024ce <Chip_UART_SetDivisorLatches>
1a002632:	6878      	ldr	r0, [r7, #4]
1a002634:	f7ff ff3b 	bl	1a0024ae <Chip_UART_DisableDivisorAccess>
1a002638:	697a      	ldr	r2, [r7, #20]
1a00263a:	693b      	ldr	r3, [r7, #16]
1a00263c:	fbb2 f3f3 	udiv	r3, r2, r3
1a002640:	091b      	lsrs	r3, r3, #4
1a002642:	4618      	mov	r0, r3
1a002644:	3718      	adds	r7, #24
1a002646:	46bd      	mov	sp, r7
1a002648:	bd80      	pop	{r7, pc}
1a00264a:	bf00      	nop
1a00264c:	1a003248 	.word	0x1a003248

1a002650 <Chip_TIMER_Enable>:
1a002650:	b480      	push	{r7}
1a002652:	b083      	sub	sp, #12
1a002654:	af00      	add	r7, sp, #0
1a002656:	6078      	str	r0, [r7, #4]
1a002658:	687b      	ldr	r3, [r7, #4]
1a00265a:	685b      	ldr	r3, [r3, #4]
1a00265c:	f043 0201 	orr.w	r2, r3, #1
1a002660:	687b      	ldr	r3, [r7, #4]
1a002662:	605a      	str	r2, [r3, #4]
1a002664:	bf00      	nop
1a002666:	370c      	adds	r7, #12
1a002668:	46bd      	mov	sp, r7
1a00266a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00266e:	4770      	bx	lr

1a002670 <Chip_TIMER_ReadCount>:
1a002670:	b480      	push	{r7}
1a002672:	b083      	sub	sp, #12
1a002674:	af00      	add	r7, sp, #0
1a002676:	6078      	str	r0, [r7, #4]
1a002678:	687b      	ldr	r3, [r7, #4]
1a00267a:	689b      	ldr	r3, [r3, #8]
1a00267c:	4618      	mov	r0, r3
1a00267e:	370c      	adds	r7, #12
1a002680:	46bd      	mov	sp, r7
1a002682:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002686:	4770      	bx	lr

1a002688 <Chip_TIMER_PrescaleSet>:
1a002688:	b480      	push	{r7}
1a00268a:	b083      	sub	sp, #12
1a00268c:	af00      	add	r7, sp, #0
1a00268e:	6078      	str	r0, [r7, #4]
1a002690:	6039      	str	r1, [r7, #0]
1a002692:	687b      	ldr	r3, [r7, #4]
1a002694:	683a      	ldr	r2, [r7, #0]
1a002696:	60da      	str	r2, [r3, #12]
1a002698:	bf00      	nop
1a00269a:	370c      	adds	r7, #12
1a00269c:	46bd      	mov	sp, r7
1a00269e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0026a2:	4770      	bx	lr

1a0026a4 <StopWatch_Init>:
1a0026a4:	b580      	push	{r7, lr}
1a0026a6:	b082      	sub	sp, #8
1a0026a8:	af00      	add	r7, sp, #0
1a0026aa:	2308      	movs	r3, #8
1a0026ac:	607b      	str	r3, [r7, #4]
1a0026ae:	4814      	ldr	r0, [pc, #80]	; (1a002700 <StopWatch_Init+0x5c>)
1a0026b0:	f000 fd70 	bl	1a003194 <Chip_TIMER_Init>
1a0026b4:	687b      	ldr	r3, [r7, #4]
1a0026b6:	3b01      	subs	r3, #1
1a0026b8:	4619      	mov	r1, r3
1a0026ba:	4811      	ldr	r0, [pc, #68]	; (1a002700 <StopWatch_Init+0x5c>)
1a0026bc:	f7ff ffe4 	bl	1a002688 <Chip_TIMER_PrescaleSet>
1a0026c0:	480f      	ldr	r0, [pc, #60]	; (1a002700 <StopWatch_Init+0x5c>)
1a0026c2:	f7ff ffc5 	bl	1a002650 <Chip_TIMER_Enable>
1a0026c6:	2084      	movs	r0, #132	; 0x84
1a0026c8:	f000 fce2 	bl	1a003090 <Chip_Clock_GetRate>
1a0026cc:	4602      	mov	r2, r0
1a0026ce:	687b      	ldr	r3, [r7, #4]
1a0026d0:	fbb2 f3f3 	udiv	r3, r2, r3
1a0026d4:	4a0b      	ldr	r2, [pc, #44]	; (1a002704 <StopWatch_Init+0x60>)
1a0026d6:	6013      	str	r3, [r2, #0]
1a0026d8:	4b0a      	ldr	r3, [pc, #40]	; (1a002704 <StopWatch_Init+0x60>)
1a0026da:	681b      	ldr	r3, [r3, #0]
1a0026dc:	4a0a      	ldr	r2, [pc, #40]	; (1a002708 <StopWatch_Init+0x64>)
1a0026de:	fba2 2303 	umull	r2, r3, r2, r3
1a0026e2:	099b      	lsrs	r3, r3, #6
1a0026e4:	4a09      	ldr	r2, [pc, #36]	; (1a00270c <StopWatch_Init+0x68>)
1a0026e6:	6013      	str	r3, [r2, #0]
1a0026e8:	4b06      	ldr	r3, [pc, #24]	; (1a002704 <StopWatch_Init+0x60>)
1a0026ea:	681b      	ldr	r3, [r3, #0]
1a0026ec:	4a08      	ldr	r2, [pc, #32]	; (1a002710 <StopWatch_Init+0x6c>)
1a0026ee:	fba2 2303 	umull	r2, r3, r2, r3
1a0026f2:	0c9b      	lsrs	r3, r3, #18
1a0026f4:	4a07      	ldr	r2, [pc, #28]	; (1a002714 <StopWatch_Init+0x70>)
1a0026f6:	6013      	str	r3, [r2, #0]
1a0026f8:	bf00      	nop
1a0026fa:	3708      	adds	r7, #8
1a0026fc:	46bd      	mov	sp, r7
1a0026fe:	bd80      	pop	{r7, pc}
1a002700:	40084000 	.word	0x40084000
1a002704:	10000064 	.word	0x10000064
1a002708:	10624dd3 	.word	0x10624dd3
1a00270c:	10000068 	.word	0x10000068
1a002710:	431bde83 	.word	0x431bde83
1a002714:	1000006c 	.word	0x1000006c

1a002718 <StopWatch_Start>:
1a002718:	b580      	push	{r7, lr}
1a00271a:	af00      	add	r7, sp, #0
1a00271c:	4802      	ldr	r0, [pc, #8]	; (1a002728 <StopWatch_Start+0x10>)
1a00271e:	f7ff ffa7 	bl	1a002670 <Chip_TIMER_ReadCount>
1a002722:	4603      	mov	r3, r0
1a002724:	4618      	mov	r0, r3
1a002726:	bd80      	pop	{r7, pc}
1a002728:	40084000 	.word	0x40084000

1a00272c <StopWatch_MsToTicks>:
1a00272c:	b480      	push	{r7}
1a00272e:	b083      	sub	sp, #12
1a002730:	af00      	add	r7, sp, #0
1a002732:	6078      	str	r0, [r7, #4]
1a002734:	4b05      	ldr	r3, [pc, #20]	; (1a00274c <StopWatch_MsToTicks+0x20>)
1a002736:	681b      	ldr	r3, [r3, #0]
1a002738:	687a      	ldr	r2, [r7, #4]
1a00273a:	fb02 f303 	mul.w	r3, r2, r3
1a00273e:	4618      	mov	r0, r3
1a002740:	370c      	adds	r7, #12
1a002742:	46bd      	mov	sp, r7
1a002744:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002748:	4770      	bx	lr
1a00274a:	bf00      	nop
1a00274c:	10000068 	.word	0x10000068

1a002750 <ABS>:
1a002750:	b480      	push	{r7}
1a002752:	b083      	sub	sp, #12
1a002754:	af00      	add	r7, sp, #0
1a002756:	6078      	str	r0, [r7, #4]
1a002758:	687b      	ldr	r3, [r7, #4]
1a00275a:	2b00      	cmp	r3, #0
1a00275c:	da02      	bge.n	1a002764 <ABS+0x14>
1a00275e:	687b      	ldr	r3, [r7, #4]
1a002760:	425b      	negs	r3, r3
1a002762:	e000      	b.n	1a002766 <ABS+0x16>
1a002764:	687b      	ldr	r3, [r7, #4]
1a002766:	4618      	mov	r0, r3
1a002768:	370c      	adds	r7, #12
1a00276a:	46bd      	mov	sp, r7
1a00276c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002770:	4770      	bx	lr
1a002772:	Address 0x000000001a002772 is out of bounds.


1a002774 <pll_calc_divs>:
1a002774:	b580      	push	{r7, lr}
1a002776:	b088      	sub	sp, #32
1a002778:	af00      	add	r7, sp, #0
1a00277a:	6078      	str	r0, [r7, #4]
1a00277c:	6039      	str	r1, [r7, #0]
1a00277e:	687b      	ldr	r3, [r7, #4]
1a002780:	61fb      	str	r3, [r7, #28]
1a002782:	683b      	ldr	r3, [r7, #0]
1a002784:	681b      	ldr	r3, [r3, #0]
1a002786:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a00278a:	2b00      	cmp	r3, #0
1a00278c:	d005      	beq.n	1a00279a <pll_calc_divs+0x26>
1a00278e:	683b      	ldr	r3, [r7, #0]
1a002790:	681b      	ldr	r3, [r3, #0]
1a002792:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a002796:	683b      	ldr	r3, [r7, #0]
1a002798:	601a      	str	r2, [r3, #0]
1a00279a:	2301      	movs	r3, #1
1a00279c:	61bb      	str	r3, [r7, #24]
1a00279e:	e06f      	b.n	1a002880 <pll_calc_divs+0x10c>
1a0027a0:	2300      	movs	r3, #0
1a0027a2:	613b      	str	r3, [r7, #16]
1a0027a4:	e066      	b.n	1a002874 <pll_calc_divs+0x100>
1a0027a6:	2301      	movs	r3, #1
1a0027a8:	617b      	str	r3, [r7, #20]
1a0027aa:	e05a      	b.n	1a002862 <pll_calc_divs+0xee>
1a0027ac:	683b      	ldr	r3, [r7, #0]
1a0027ae:	681b      	ldr	r3, [r3, #0]
1a0027b0:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0027b4:	2b00      	cmp	r3, #0
1a0027b6:	d00e      	beq.n	1a0027d6 <pll_calc_divs+0x62>
1a0027b8:	693b      	ldr	r3, [r7, #16]
1a0027ba:	3301      	adds	r3, #1
1a0027bc:	697a      	ldr	r2, [r7, #20]
1a0027be:	fa02 f303 	lsl.w	r3, r2, r3
1a0027c2:	461a      	mov	r2, r3
1a0027c4:	683b      	ldr	r3, [r7, #0]
1a0027c6:	695b      	ldr	r3, [r3, #20]
1a0027c8:	fb03 f202 	mul.w	r2, r3, r2
1a0027cc:	69bb      	ldr	r3, [r7, #24]
1a0027ce:	fbb2 f3f3 	udiv	r3, r2, r3
1a0027d2:	60fb      	str	r3, [r7, #12]
1a0027d4:	e008      	b.n	1a0027e8 <pll_calc_divs+0x74>
1a0027d6:	683b      	ldr	r3, [r7, #0]
1a0027d8:	695b      	ldr	r3, [r3, #20]
1a0027da:	697a      	ldr	r2, [r7, #20]
1a0027dc:	fb02 f203 	mul.w	r2, r2, r3
1a0027e0:	69bb      	ldr	r3, [r7, #24]
1a0027e2:	fbb2 f3f3 	udiv	r3, r2, r3
1a0027e6:	60fb      	str	r3, [r7, #12]
1a0027e8:	68fb      	ldr	r3, [r7, #12]
1a0027ea:	4a29      	ldr	r2, [pc, #164]	; (1a002890 <pll_calc_divs+0x11c>)
1a0027ec:	4293      	cmp	r3, r2
1a0027ee:	d934      	bls.n	1a00285a <pll_calc_divs+0xe6>
1a0027f0:	68fb      	ldr	r3, [r7, #12]
1a0027f2:	4a28      	ldr	r2, [pc, #160]	; (1a002894 <pll_calc_divs+0x120>)
1a0027f4:	4293      	cmp	r3, r2
1a0027f6:	d839      	bhi.n	1a00286c <pll_calc_divs+0xf8>
1a0027f8:	683b      	ldr	r3, [r7, #0]
1a0027fa:	681b      	ldr	r3, [r3, #0]
1a0027fc:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a002800:	2b00      	cmp	r3, #0
1a002802:	d002      	beq.n	1a00280a <pll_calc_divs+0x96>
1a002804:	68fb      	ldr	r3, [r7, #12]
1a002806:	60bb      	str	r3, [r7, #8]
1a002808:	e005      	b.n	1a002816 <pll_calc_divs+0xa2>
1a00280a:	693b      	ldr	r3, [r7, #16]
1a00280c:	3301      	adds	r3, #1
1a00280e:	68fa      	ldr	r2, [r7, #12]
1a002810:	fa22 f303 	lsr.w	r3, r2, r3
1a002814:	60bb      	str	r3, [r7, #8]
1a002816:	687a      	ldr	r2, [r7, #4]
1a002818:	68bb      	ldr	r3, [r7, #8]
1a00281a:	1ad3      	subs	r3, r2, r3
1a00281c:	4618      	mov	r0, r3
1a00281e:	f7ff ff97 	bl	1a002750 <ABS>
1a002822:	4602      	mov	r2, r0
1a002824:	69fb      	ldr	r3, [r7, #28]
1a002826:	4293      	cmp	r3, r2
1a002828:	d918      	bls.n	1a00285c <pll_calc_divs+0xe8>
1a00282a:	683b      	ldr	r3, [r7, #0]
1a00282c:	69ba      	ldr	r2, [r7, #24]
1a00282e:	609a      	str	r2, [r3, #8]
1a002830:	693b      	ldr	r3, [r7, #16]
1a002832:	1c5a      	adds	r2, r3, #1
1a002834:	683b      	ldr	r3, [r7, #0]
1a002836:	60da      	str	r2, [r3, #12]
1a002838:	683b      	ldr	r3, [r7, #0]
1a00283a:	697a      	ldr	r2, [r7, #20]
1a00283c:	611a      	str	r2, [r3, #16]
1a00283e:	683b      	ldr	r3, [r7, #0]
1a002840:	68ba      	ldr	r2, [r7, #8]
1a002842:	619a      	str	r2, [r3, #24]
1a002844:	683b      	ldr	r3, [r7, #0]
1a002846:	68fa      	ldr	r2, [r7, #12]
1a002848:	61da      	str	r2, [r3, #28]
1a00284a:	687a      	ldr	r2, [r7, #4]
1a00284c:	68bb      	ldr	r3, [r7, #8]
1a00284e:	1ad3      	subs	r3, r2, r3
1a002850:	4618      	mov	r0, r3
1a002852:	f7ff ff7d 	bl	1a002750 <ABS>
1a002856:	61f8      	str	r0, [r7, #28]
1a002858:	e000      	b.n	1a00285c <pll_calc_divs+0xe8>
1a00285a:	bf00      	nop
1a00285c:	697b      	ldr	r3, [r7, #20]
1a00285e:	3301      	adds	r3, #1
1a002860:	617b      	str	r3, [r7, #20]
1a002862:	697b      	ldr	r3, [r7, #20]
1a002864:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a002868:	dda0      	ble.n	1a0027ac <pll_calc_divs+0x38>
1a00286a:	e000      	b.n	1a00286e <pll_calc_divs+0xfa>
1a00286c:	bf00      	nop
1a00286e:	693b      	ldr	r3, [r7, #16]
1a002870:	3301      	adds	r3, #1
1a002872:	613b      	str	r3, [r7, #16]
1a002874:	693b      	ldr	r3, [r7, #16]
1a002876:	2b03      	cmp	r3, #3
1a002878:	dd95      	ble.n	1a0027a6 <pll_calc_divs+0x32>
1a00287a:	69bb      	ldr	r3, [r7, #24]
1a00287c:	3301      	adds	r3, #1
1a00287e:	61bb      	str	r3, [r7, #24]
1a002880:	69bb      	ldr	r3, [r7, #24]
1a002882:	2b04      	cmp	r3, #4
1a002884:	dd8c      	ble.n	1a0027a0 <pll_calc_divs+0x2c>
1a002886:	bf00      	nop
1a002888:	3720      	adds	r7, #32
1a00288a:	46bd      	mov	sp, r7
1a00288c:	bd80      	pop	{r7, pc}
1a00288e:	bf00      	nop
1a002890:	094c5eff 	.word	0x094c5eff
1a002894:	1312d000 	.word	0x1312d000

1a002898 <pll_get_frac>:
1a002898:	b5b0      	push	{r4, r5, r7, lr}
1a00289a:	b09e      	sub	sp, #120	; 0x78
1a00289c:	af00      	add	r7, sp, #0
1a00289e:	6078      	str	r0, [r7, #4]
1a0028a0:	6039      	str	r1, [r7, #0]
1a0028a2:	f107 030c 	add.w	r3, r7, #12
1a0028a6:	2260      	movs	r2, #96	; 0x60
1a0028a8:	2100      	movs	r1, #0
1a0028aa:	4618      	mov	r0, r3
1a0028ac:	f7fd fd28 	bl	1a000300 <memset>
1a0028b0:	68fb      	ldr	r3, [r7, #12]
1a0028b2:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a0028b6:	60fb      	str	r3, [r7, #12]
1a0028b8:	683b      	ldr	r3, [r7, #0]
1a0028ba:	695b      	ldr	r3, [r3, #20]
1a0028bc:	623b      	str	r3, [r7, #32]
1a0028be:	683b      	ldr	r3, [r7, #0]
1a0028c0:	791b      	ldrb	r3, [r3, #4]
1a0028c2:	743b      	strb	r3, [r7, #16]
1a0028c4:	f107 030c 	add.w	r3, r7, #12
1a0028c8:	4619      	mov	r1, r3
1a0028ca:	6878      	ldr	r0, [r7, #4]
1a0028cc:	f7ff ff52 	bl	1a002774 <pll_calc_divs>
1a0028d0:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0028d2:	687a      	ldr	r2, [r7, #4]
1a0028d4:	429a      	cmp	r2, r3
1a0028d6:	d10a      	bne.n	1a0028ee <pll_get_frac+0x56>
1a0028d8:	683b      	ldr	r3, [r7, #0]
1a0028da:	461d      	mov	r5, r3
1a0028dc:	f107 040c 	add.w	r4, r7, #12
1a0028e0:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0028e2:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0028e4:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0028e8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0028ec:	e08e      	b.n	1a002a0c <pll_get_frac+0x174>
1a0028ee:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a0028f0:	687a      	ldr	r2, [r7, #4]
1a0028f2:	1ad3      	subs	r3, r2, r3
1a0028f4:	4618      	mov	r0, r3
1a0028f6:	f7ff ff2b 	bl	1a002750 <ABS>
1a0028fa:	4603      	mov	r3, r0
1a0028fc:	66fb      	str	r3, [r7, #108]	; 0x6c
1a0028fe:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a002900:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a002904:	64fb      	str	r3, [r7, #76]	; 0x4c
1a002906:	683b      	ldr	r3, [r7, #0]
1a002908:	695b      	ldr	r3, [r3, #20]
1a00290a:	663b      	str	r3, [r7, #96]	; 0x60
1a00290c:	683b      	ldr	r3, [r7, #0]
1a00290e:	791b      	ldrb	r3, [r3, #4]
1a002910:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a002914:	f107 030c 	add.w	r3, r7, #12
1a002918:	3340      	adds	r3, #64	; 0x40
1a00291a:	4619      	mov	r1, r3
1a00291c:	6878      	ldr	r0, [r7, #4]
1a00291e:	f7ff ff29 	bl	1a002774 <pll_calc_divs>
1a002922:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a002924:	687a      	ldr	r2, [r7, #4]
1a002926:	429a      	cmp	r2, r3
1a002928:	d10a      	bne.n	1a002940 <pll_get_frac+0xa8>
1a00292a:	683b      	ldr	r3, [r7, #0]
1a00292c:	461d      	mov	r5, r3
1a00292e:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a002932:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002934:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002936:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a00293a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00293e:	e065      	b.n	1a002a0c <pll_get_frac+0x174>
1a002940:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a002942:	687a      	ldr	r2, [r7, #4]
1a002944:	1ad3      	subs	r3, r2, r3
1a002946:	4618      	mov	r0, r3
1a002948:	f7ff ff02 	bl	1a002750 <ABS>
1a00294c:	4603      	mov	r3, r0
1a00294e:	677b      	str	r3, [r7, #116]	; 0x74
1a002950:	687b      	ldr	r3, [r7, #4]
1a002952:	4a30      	ldr	r2, [pc, #192]	; (1a002a14 <pll_get_frac+0x17c>)
1a002954:	4293      	cmp	r3, r2
1a002956:	d81a      	bhi.n	1a00298e <pll_get_frac+0xf6>
1a002958:	2340      	movs	r3, #64	; 0x40
1a00295a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a00295c:	683b      	ldr	r3, [r7, #0]
1a00295e:	695b      	ldr	r3, [r3, #20]
1a002960:	643b      	str	r3, [r7, #64]	; 0x40
1a002962:	f107 030c 	add.w	r3, r7, #12
1a002966:	3320      	adds	r3, #32
1a002968:	4619      	mov	r1, r3
1a00296a:	6878      	ldr	r0, [r7, #4]
1a00296c:	f7ff ff02 	bl	1a002774 <pll_calc_divs>
1a002970:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a002972:	687a      	ldr	r2, [r7, #4]
1a002974:	429a      	cmp	r2, r3
1a002976:	d10a      	bne.n	1a00298e <pll_get_frac+0xf6>
1a002978:	683b      	ldr	r3, [r7, #0]
1a00297a:	461d      	mov	r5, r3
1a00297c:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a002980:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002982:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002984:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002988:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a00298c:	e03e      	b.n	1a002a0c <pll_get_frac+0x174>
1a00298e:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a002990:	687a      	ldr	r2, [r7, #4]
1a002992:	1ad3      	subs	r3, r2, r3
1a002994:	4618      	mov	r0, r3
1a002996:	f7ff fedb 	bl	1a002750 <ABS>
1a00299a:	4603      	mov	r3, r0
1a00299c:	673b      	str	r3, [r7, #112]	; 0x70
1a00299e:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0029a0:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a0029a2:	429a      	cmp	r2, r3
1a0029a4:	dc19      	bgt.n	1a0029da <pll_get_frac+0x142>
1a0029a6:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a0029a8:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0029aa:	429a      	cmp	r2, r3
1a0029ac:	dc0a      	bgt.n	1a0029c4 <pll_get_frac+0x12c>
1a0029ae:	683b      	ldr	r3, [r7, #0]
1a0029b0:	461d      	mov	r5, r3
1a0029b2:	f107 040c 	add.w	r4, r7, #12
1a0029b6:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0029b8:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0029ba:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0029be:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0029c2:	e023      	b.n	1a002a0c <pll_get_frac+0x174>
1a0029c4:	683b      	ldr	r3, [r7, #0]
1a0029c6:	461d      	mov	r5, r3
1a0029c8:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a0029cc:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0029ce:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0029d0:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0029d4:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0029d8:	e018      	b.n	1a002a0c <pll_get_frac+0x174>
1a0029da:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a0029dc:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a0029de:	429a      	cmp	r2, r3
1a0029e0:	dc0a      	bgt.n	1a0029f8 <pll_get_frac+0x160>
1a0029e2:	683b      	ldr	r3, [r7, #0]
1a0029e4:	461d      	mov	r5, r3
1a0029e6:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a0029ea:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a0029ec:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a0029ee:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a0029f2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a0029f6:	e009      	b.n	1a002a0c <pll_get_frac+0x174>
1a0029f8:	683b      	ldr	r3, [r7, #0]
1a0029fa:	461d      	mov	r5, r3
1a0029fc:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a002a00:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a002a02:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a002a04:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a002a08:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a002a0c:	3778      	adds	r7, #120	; 0x78
1a002a0e:	46bd      	mov	sp, r7
1a002a10:	bdb0      	pop	{r4, r5, r7, pc}
1a002a12:	bf00      	nop
1a002a14:	068e7780 	.word	0x068e7780

1a002a18 <Chip_Clock_GetDivRate>:
1a002a18:	b580      	push	{r7, lr}
1a002a1a:	b084      	sub	sp, #16
1a002a1c:	af00      	add	r7, sp, #0
1a002a1e:	4603      	mov	r3, r0
1a002a20:	460a      	mov	r2, r1
1a002a22:	71fb      	strb	r3, [r7, #7]
1a002a24:	4613      	mov	r3, r2
1a002a26:	71bb      	strb	r3, [r7, #6]
1a002a28:	79bb      	ldrb	r3, [r7, #6]
1a002a2a:	4618      	mov	r0, r3
1a002a2c:	f000 f960 	bl	1a002cf0 <Chip_Clock_GetDividerSource>
1a002a30:	4603      	mov	r3, r0
1a002a32:	73fb      	strb	r3, [r7, #15]
1a002a34:	79bb      	ldrb	r3, [r7, #6]
1a002a36:	4618      	mov	r0, r3
1a002a38:	f000 f97a 	bl	1a002d30 <Chip_Clock_GetDividerDivisor>
1a002a3c:	60b8      	str	r0, [r7, #8]
1a002a3e:	7bfb      	ldrb	r3, [r7, #15]
1a002a40:	4618      	mov	r0, r3
1a002a42:	f000 f991 	bl	1a002d68 <Chip_Clock_GetClockInputHz>
1a002a46:	4602      	mov	r2, r0
1a002a48:	68bb      	ldr	r3, [r7, #8]
1a002a4a:	3301      	adds	r3, #1
1a002a4c:	fbb2 f3f3 	udiv	r3, r2, r3
1a002a50:	4618      	mov	r0, r3
1a002a52:	3710      	adds	r7, #16
1a002a54:	46bd      	mov	sp, r7
1a002a56:	bd80      	pop	{r7, pc}

1a002a58 <Chip_Clock_FindBaseClock>:
1a002a58:	b480      	push	{r7}
1a002a5a:	b085      	sub	sp, #20
1a002a5c:	af00      	add	r7, sp, #0
1a002a5e:	4603      	mov	r3, r0
1a002a60:	80fb      	strh	r3, [r7, #6]
1a002a62:	231c      	movs	r3, #28
1a002a64:	73fb      	strb	r3, [r7, #15]
1a002a66:	2300      	movs	r3, #0
1a002a68:	60bb      	str	r3, [r7, #8]
1a002a6a:	e024      	b.n	1a002ab6 <Chip_Clock_FindBaseClock+0x5e>
1a002a6c:	491d      	ldr	r1, [pc, #116]	; (1a002ae4 <Chip_Clock_FindBaseClock+0x8c>)
1a002a6e:	68ba      	ldr	r2, [r7, #8]
1a002a70:	4613      	mov	r3, r2
1a002a72:	005b      	lsls	r3, r3, #1
1a002a74:	4413      	add	r3, r2
1a002a76:	005b      	lsls	r3, r3, #1
1a002a78:	440b      	add	r3, r1
1a002a7a:	881b      	ldrh	r3, [r3, #0]
1a002a7c:	88fa      	ldrh	r2, [r7, #6]
1a002a7e:	429a      	cmp	r2, r3
1a002a80:	d316      	bcc.n	1a002ab0 <Chip_Clock_FindBaseClock+0x58>
1a002a82:	4918      	ldr	r1, [pc, #96]	; (1a002ae4 <Chip_Clock_FindBaseClock+0x8c>)
1a002a84:	68ba      	ldr	r2, [r7, #8]
1a002a86:	4613      	mov	r3, r2
1a002a88:	005b      	lsls	r3, r3, #1
1a002a8a:	4413      	add	r3, r2
1a002a8c:	005b      	lsls	r3, r3, #1
1a002a8e:	440b      	add	r3, r1
1a002a90:	3302      	adds	r3, #2
1a002a92:	881b      	ldrh	r3, [r3, #0]
1a002a94:	88fa      	ldrh	r2, [r7, #6]
1a002a96:	429a      	cmp	r2, r3
1a002a98:	d80a      	bhi.n	1a002ab0 <Chip_Clock_FindBaseClock+0x58>
1a002a9a:	4912      	ldr	r1, [pc, #72]	; (1a002ae4 <Chip_Clock_FindBaseClock+0x8c>)
1a002a9c:	68ba      	ldr	r2, [r7, #8]
1a002a9e:	4613      	mov	r3, r2
1a002aa0:	005b      	lsls	r3, r3, #1
1a002aa2:	4413      	add	r3, r2
1a002aa4:	005b      	lsls	r3, r3, #1
1a002aa6:	440b      	add	r3, r1
1a002aa8:	3304      	adds	r3, #4
1a002aaa:	781b      	ldrb	r3, [r3, #0]
1a002aac:	73fb      	strb	r3, [r7, #15]
1a002aae:	e002      	b.n	1a002ab6 <Chip_Clock_FindBaseClock+0x5e>
1a002ab0:	68bb      	ldr	r3, [r7, #8]
1a002ab2:	3301      	adds	r3, #1
1a002ab4:	60bb      	str	r3, [r7, #8]
1a002ab6:	7bfb      	ldrb	r3, [r7, #15]
1a002ab8:	2b1c      	cmp	r3, #28
1a002aba:	d10b      	bne.n	1a002ad4 <Chip_Clock_FindBaseClock+0x7c>
1a002abc:	4909      	ldr	r1, [pc, #36]	; (1a002ae4 <Chip_Clock_FindBaseClock+0x8c>)
1a002abe:	68ba      	ldr	r2, [r7, #8]
1a002ac0:	4613      	mov	r3, r2
1a002ac2:	005b      	lsls	r3, r3, #1
1a002ac4:	4413      	add	r3, r2
1a002ac6:	005b      	lsls	r3, r3, #1
1a002ac8:	440b      	add	r3, r1
1a002aca:	3304      	adds	r3, #4
1a002acc:	781b      	ldrb	r3, [r3, #0]
1a002ace:	7bfa      	ldrb	r2, [r7, #15]
1a002ad0:	429a      	cmp	r2, r3
1a002ad2:	d1cb      	bne.n	1a002a6c <Chip_Clock_FindBaseClock+0x14>
1a002ad4:	7bfb      	ldrb	r3, [r7, #15]
1a002ad6:	4618      	mov	r0, r3
1a002ad8:	3714      	adds	r7, #20
1a002ada:	46bd      	mov	sp, r7
1a002adc:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002ae0:	4770      	bx	lr
1a002ae2:	bf00      	nop
1a002ae4:	1a003250 	.word	0x1a003250

1a002ae8 <Chip_Clock_EnableCrystal>:
1a002ae8:	b480      	push	{r7}
1a002aea:	b083      	sub	sp, #12
1a002aec:	af00      	add	r7, sp, #0
1a002aee:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a002af2:	603b      	str	r3, [r7, #0]
1a002af4:	4b15      	ldr	r3, [pc, #84]	; (1a002b4c <Chip_Clock_EnableCrystal+0x64>)
1a002af6:	699b      	ldr	r3, [r3, #24]
1a002af8:	607b      	str	r3, [r7, #4]
1a002afa:	687b      	ldr	r3, [r7, #4]
1a002afc:	f023 0302 	bic.w	r3, r3, #2
1a002b00:	607b      	str	r3, [r7, #4]
1a002b02:	4b12      	ldr	r3, [pc, #72]	; (1a002b4c <Chip_Clock_EnableCrystal+0x64>)
1a002b04:	699b      	ldr	r3, [r3, #24]
1a002b06:	687a      	ldr	r2, [r7, #4]
1a002b08:	429a      	cmp	r2, r3
1a002b0a:	d002      	beq.n	1a002b12 <Chip_Clock_EnableCrystal+0x2a>
1a002b0c:	4a0f      	ldr	r2, [pc, #60]	; (1a002b4c <Chip_Clock_EnableCrystal+0x64>)
1a002b0e:	687b      	ldr	r3, [r7, #4]
1a002b10:	6193      	str	r3, [r2, #24]
1a002b12:	687b      	ldr	r3, [r7, #4]
1a002b14:	f023 0301 	bic.w	r3, r3, #1
1a002b18:	607b      	str	r3, [r7, #4]
1a002b1a:	4b0d      	ldr	r3, [pc, #52]	; (1a002b50 <Chip_Clock_EnableCrystal+0x68>)
1a002b1c:	681b      	ldr	r3, [r3, #0]
1a002b1e:	4a0d      	ldr	r2, [pc, #52]	; (1a002b54 <Chip_Clock_EnableCrystal+0x6c>)
1a002b20:	4293      	cmp	r3, r2
1a002b22:	d903      	bls.n	1a002b2c <Chip_Clock_EnableCrystal+0x44>
1a002b24:	687b      	ldr	r3, [r7, #4]
1a002b26:	f043 0304 	orr.w	r3, r3, #4
1a002b2a:	607b      	str	r3, [r7, #4]
1a002b2c:	4a07      	ldr	r2, [pc, #28]	; (1a002b4c <Chip_Clock_EnableCrystal+0x64>)
1a002b2e:	687b      	ldr	r3, [r7, #4]
1a002b30:	6193      	str	r3, [r2, #24]
1a002b32:	bf00      	nop
1a002b34:	683b      	ldr	r3, [r7, #0]
1a002b36:	1e5a      	subs	r2, r3, #1
1a002b38:	603a      	str	r2, [r7, #0]
1a002b3a:	2b00      	cmp	r3, #0
1a002b3c:	d1fa      	bne.n	1a002b34 <Chip_Clock_EnableCrystal+0x4c>
1a002b3e:	bf00      	nop
1a002b40:	370c      	adds	r7, #12
1a002b42:	46bd      	mov	sp, r7
1a002b44:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002b48:	4770      	bx	lr
1a002b4a:	bf00      	nop
1a002b4c:	40050000 	.word	0x40050000
1a002b50:	1a0031b8 	.word	0x1a0031b8
1a002b54:	01312cff 	.word	0x01312cff

1a002b58 <Chip_Clock_CalcMainPLLValue>:
1a002b58:	b580      	push	{r7, lr}
1a002b5a:	b082      	sub	sp, #8
1a002b5c:	af00      	add	r7, sp, #0
1a002b5e:	6078      	str	r0, [r7, #4]
1a002b60:	6039      	str	r1, [r7, #0]
1a002b62:	683b      	ldr	r3, [r7, #0]
1a002b64:	791b      	ldrb	r3, [r3, #4]
1a002b66:	4618      	mov	r0, r3
1a002b68:	f000 f8fe 	bl	1a002d68 <Chip_Clock_GetClockInputHz>
1a002b6c:	4602      	mov	r2, r0
1a002b6e:	683b      	ldr	r3, [r7, #0]
1a002b70:	615a      	str	r2, [r3, #20]
1a002b72:	687b      	ldr	r3, [r7, #4]
1a002b74:	4a2b      	ldr	r2, [pc, #172]	; (1a002c24 <Chip_Clock_CalcMainPLLValue+0xcc>)
1a002b76:	4293      	cmp	r3, r2
1a002b78:	d807      	bhi.n	1a002b8a <Chip_Clock_CalcMainPLLValue+0x32>
1a002b7a:	687b      	ldr	r3, [r7, #4]
1a002b7c:	4a2a      	ldr	r2, [pc, #168]	; (1a002c28 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a002b7e:	4293      	cmp	r3, r2
1a002b80:	d903      	bls.n	1a002b8a <Chip_Clock_CalcMainPLLValue+0x32>
1a002b82:	683b      	ldr	r3, [r7, #0]
1a002b84:	695b      	ldr	r3, [r3, #20]
1a002b86:	2b00      	cmp	r3, #0
1a002b88:	d102      	bne.n	1a002b90 <Chip_Clock_CalcMainPLLValue+0x38>
1a002b8a:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002b8e:	e044      	b.n	1a002c1a <Chip_Clock_CalcMainPLLValue+0xc2>
1a002b90:	683b      	ldr	r3, [r7, #0]
1a002b92:	2280      	movs	r2, #128	; 0x80
1a002b94:	601a      	str	r2, [r3, #0]
1a002b96:	683b      	ldr	r3, [r7, #0]
1a002b98:	2200      	movs	r2, #0
1a002b9a:	609a      	str	r2, [r3, #8]
1a002b9c:	683b      	ldr	r3, [r7, #0]
1a002b9e:	2200      	movs	r2, #0
1a002ba0:	60da      	str	r2, [r3, #12]
1a002ba2:	683b      	ldr	r3, [r7, #0]
1a002ba4:	695b      	ldr	r3, [r3, #20]
1a002ba6:	687a      	ldr	r2, [r7, #4]
1a002ba8:	fbb2 f3f3 	udiv	r3, r2, r3
1a002bac:	461a      	mov	r2, r3
1a002bae:	683b      	ldr	r3, [r7, #0]
1a002bb0:	611a      	str	r2, [r3, #16]
1a002bb2:	687b      	ldr	r3, [r7, #4]
1a002bb4:	4a1d      	ldr	r2, [pc, #116]	; (1a002c2c <Chip_Clock_CalcMainPLLValue+0xd4>)
1a002bb6:	4293      	cmp	r3, r2
1a002bb8:	d909      	bls.n	1a002bce <Chip_Clock_CalcMainPLLValue+0x76>
1a002bba:	683b      	ldr	r3, [r7, #0]
1a002bbc:	691b      	ldr	r3, [r3, #16]
1a002bbe:	461a      	mov	r2, r3
1a002bc0:	683b      	ldr	r3, [r7, #0]
1a002bc2:	695b      	ldr	r3, [r3, #20]
1a002bc4:	fb03 f302 	mul.w	r3, r3, r2
1a002bc8:	687a      	ldr	r2, [r7, #4]
1a002bca:	429a      	cmp	r2, r3
1a002bcc:	d00f      	beq.n	1a002bee <Chip_Clock_CalcMainPLLValue+0x96>
1a002bce:	6839      	ldr	r1, [r7, #0]
1a002bd0:	6878      	ldr	r0, [r7, #4]
1a002bd2:	f7ff fe61 	bl	1a002898 <pll_get_frac>
1a002bd6:	683b      	ldr	r3, [r7, #0]
1a002bd8:	689b      	ldr	r3, [r3, #8]
1a002bda:	2b00      	cmp	r3, #0
1a002bdc:	d102      	bne.n	1a002be4 <Chip_Clock_CalcMainPLLValue+0x8c>
1a002bde:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002be2:	e01a      	b.n	1a002c1a <Chip_Clock_CalcMainPLLValue+0xc2>
1a002be4:	683b      	ldr	r3, [r7, #0]
1a002be6:	689b      	ldr	r3, [r3, #8]
1a002be8:	1e5a      	subs	r2, r3, #1
1a002bea:	683b      	ldr	r3, [r7, #0]
1a002bec:	609a      	str	r2, [r3, #8]
1a002bee:	683b      	ldr	r3, [r7, #0]
1a002bf0:	691b      	ldr	r3, [r3, #16]
1a002bf2:	2b00      	cmp	r3, #0
1a002bf4:	d102      	bne.n	1a002bfc <Chip_Clock_CalcMainPLLValue+0xa4>
1a002bf6:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002bfa:	e00e      	b.n	1a002c1a <Chip_Clock_CalcMainPLLValue+0xc2>
1a002bfc:	683b      	ldr	r3, [r7, #0]
1a002bfe:	68db      	ldr	r3, [r3, #12]
1a002c00:	2b00      	cmp	r3, #0
1a002c02:	d004      	beq.n	1a002c0e <Chip_Clock_CalcMainPLLValue+0xb6>
1a002c04:	683b      	ldr	r3, [r7, #0]
1a002c06:	68db      	ldr	r3, [r3, #12]
1a002c08:	1e5a      	subs	r2, r3, #1
1a002c0a:	683b      	ldr	r3, [r7, #0]
1a002c0c:	60da      	str	r2, [r3, #12]
1a002c0e:	683b      	ldr	r3, [r7, #0]
1a002c10:	691b      	ldr	r3, [r3, #16]
1a002c12:	1e5a      	subs	r2, r3, #1
1a002c14:	683b      	ldr	r3, [r7, #0]
1a002c16:	611a      	str	r2, [r3, #16]
1a002c18:	2300      	movs	r3, #0
1a002c1a:	4618      	mov	r0, r3
1a002c1c:	3708      	adds	r7, #8
1a002c1e:	46bd      	mov	sp, r7
1a002c20:	bd80      	pop	{r7, pc}
1a002c22:	bf00      	nop
1a002c24:	0c28cb00 	.word	0x0c28cb00
1a002c28:	0094c5ef 	.word	0x0094c5ef
1a002c2c:	094c5eff 	.word	0x094c5eff

1a002c30 <Chip_Clock_GetMainPLLHz>:
1a002c30:	b580      	push	{r7, lr}
1a002c32:	b08c      	sub	sp, #48	; 0x30
1a002c34:	af00      	add	r7, sp, #0
1a002c36:	4b2c      	ldr	r3, [pc, #176]	; (1a002ce8 <Chip_Clock_GetMainPLLHz+0xb8>)
1a002c38:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a002c3a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a002c3c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002c3e:	0e1b      	lsrs	r3, r3, #24
1a002c40:	b2db      	uxtb	r3, r3
1a002c42:	f003 030f 	and.w	r3, r3, #15
1a002c46:	b2db      	uxtb	r3, r3
1a002c48:	4618      	mov	r0, r3
1a002c4a:	f000 f88d 	bl	1a002d68 <Chip_Clock_GetClockInputHz>
1a002c4e:	62b8      	str	r0, [r7, #40]	; 0x28
1a002c50:	4b26      	ldr	r3, [pc, #152]	; (1a002cec <Chip_Clock_GetMainPLLHz+0xbc>)
1a002c52:	681b      	ldr	r3, [r3, #0]
1a002c54:	607b      	str	r3, [r7, #4]
1a002c56:	4b24      	ldr	r3, [pc, #144]	; (1a002ce8 <Chip_Clock_GetMainPLLHz+0xb8>)
1a002c58:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a002c5a:	f003 0301 	and.w	r3, r3, #1
1a002c5e:	2b00      	cmp	r3, #0
1a002c60:	d101      	bne.n	1a002c66 <Chip_Clock_GetMainPLLHz+0x36>
1a002c62:	2300      	movs	r3, #0
1a002c64:	e03b      	b.n	1a002cde <Chip_Clock_GetMainPLLHz+0xae>
1a002c66:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002c68:	0c1b      	lsrs	r3, r3, #16
1a002c6a:	b2db      	uxtb	r3, r3
1a002c6c:	627b      	str	r3, [r7, #36]	; 0x24
1a002c6e:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002c70:	0b1b      	lsrs	r3, r3, #12
1a002c72:	f003 0303 	and.w	r3, r3, #3
1a002c76:	623b      	str	r3, [r7, #32]
1a002c78:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002c7a:	0a1b      	lsrs	r3, r3, #8
1a002c7c:	f003 0303 	and.w	r3, r3, #3
1a002c80:	61fb      	str	r3, [r7, #28]
1a002c82:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002c84:	09db      	lsrs	r3, r3, #7
1a002c86:	f003 0301 	and.w	r3, r3, #1
1a002c8a:	61bb      	str	r3, [r7, #24]
1a002c8c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a002c8e:	099b      	lsrs	r3, r3, #6
1a002c90:	f003 0301 	and.w	r3, r3, #1
1a002c94:	617b      	str	r3, [r7, #20]
1a002c96:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a002c98:	3301      	adds	r3, #1
1a002c9a:	613b      	str	r3, [r7, #16]
1a002c9c:	6a3b      	ldr	r3, [r7, #32]
1a002c9e:	3301      	adds	r3, #1
1a002ca0:	60fb      	str	r3, [r7, #12]
1a002ca2:	1d3a      	adds	r2, r7, #4
1a002ca4:	69fb      	ldr	r3, [r7, #28]
1a002ca6:	4413      	add	r3, r2
1a002ca8:	781b      	ldrb	r3, [r3, #0]
1a002caa:	60bb      	str	r3, [r7, #8]
1a002cac:	69bb      	ldr	r3, [r7, #24]
1a002cae:	2b00      	cmp	r3, #0
1a002cb0:	d102      	bne.n	1a002cb8 <Chip_Clock_GetMainPLLHz+0x88>
1a002cb2:	697b      	ldr	r3, [r7, #20]
1a002cb4:	2b00      	cmp	r3, #0
1a002cb6:	d007      	beq.n	1a002cc8 <Chip_Clock_GetMainPLLHz+0x98>
1a002cb8:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a002cba:	68fb      	ldr	r3, [r7, #12]
1a002cbc:	fbb2 f3f3 	udiv	r3, r2, r3
1a002cc0:	693a      	ldr	r2, [r7, #16]
1a002cc2:	fb02 f303 	mul.w	r3, r2, r3
1a002cc6:	e00a      	b.n	1a002cde <Chip_Clock_GetMainPLLHz+0xae>
1a002cc8:	68bb      	ldr	r3, [r7, #8]
1a002cca:	005b      	lsls	r3, r3, #1
1a002ccc:	693a      	ldr	r2, [r7, #16]
1a002cce:	fbb2 f3f3 	udiv	r3, r2, r3
1a002cd2:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a002cd4:	68fa      	ldr	r2, [r7, #12]
1a002cd6:	fbb1 f2f2 	udiv	r2, r1, r2
1a002cda:	fb02 f303 	mul.w	r3, r2, r3
1a002cde:	4618      	mov	r0, r3
1a002ce0:	3730      	adds	r7, #48	; 0x30
1a002ce2:	46bd      	mov	sp, r7
1a002ce4:	bd80      	pop	{r7, pc}
1a002ce6:	bf00      	nop
1a002ce8:	40050000 	.word	0x40050000
1a002cec:	1a0032bc 	.word	0x1a0032bc

1a002cf0 <Chip_Clock_GetDividerSource>:
1a002cf0:	b480      	push	{r7}
1a002cf2:	b085      	sub	sp, #20
1a002cf4:	af00      	add	r7, sp, #0
1a002cf6:	4603      	mov	r3, r0
1a002cf8:	71fb      	strb	r3, [r7, #7]
1a002cfa:	4a0c      	ldr	r2, [pc, #48]	; (1a002d2c <Chip_Clock_GetDividerSource+0x3c>)
1a002cfc:	79fb      	ldrb	r3, [r7, #7]
1a002cfe:	3312      	adds	r3, #18
1a002d00:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a002d04:	60fb      	str	r3, [r7, #12]
1a002d06:	68fb      	ldr	r3, [r7, #12]
1a002d08:	f003 0301 	and.w	r3, r3, #1
1a002d0c:	2b00      	cmp	r3, #0
1a002d0e:	d001      	beq.n	1a002d14 <Chip_Clock_GetDividerSource+0x24>
1a002d10:	2311      	movs	r3, #17
1a002d12:	e005      	b.n	1a002d20 <Chip_Clock_GetDividerSource+0x30>
1a002d14:	68fb      	ldr	r3, [r7, #12]
1a002d16:	0e1b      	lsrs	r3, r3, #24
1a002d18:	b2db      	uxtb	r3, r3
1a002d1a:	f003 031f 	and.w	r3, r3, #31
1a002d1e:	b2db      	uxtb	r3, r3
1a002d20:	4618      	mov	r0, r3
1a002d22:	3714      	adds	r7, #20
1a002d24:	46bd      	mov	sp, r7
1a002d26:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002d2a:	4770      	bx	lr
1a002d2c:	40050000 	.word	0x40050000

1a002d30 <Chip_Clock_GetDividerDivisor>:
1a002d30:	b480      	push	{r7}
1a002d32:	b083      	sub	sp, #12
1a002d34:	af00      	add	r7, sp, #0
1a002d36:	4603      	mov	r3, r0
1a002d38:	71fb      	strb	r3, [r7, #7]
1a002d3a:	4a09      	ldr	r2, [pc, #36]	; (1a002d60 <Chip_Clock_GetDividerDivisor+0x30>)
1a002d3c:	79fb      	ldrb	r3, [r7, #7]
1a002d3e:	3312      	adds	r3, #18
1a002d40:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a002d44:	089b      	lsrs	r3, r3, #2
1a002d46:	b2da      	uxtb	r2, r3
1a002d48:	79fb      	ldrb	r3, [r7, #7]
1a002d4a:	4906      	ldr	r1, [pc, #24]	; (1a002d64 <Chip_Clock_GetDividerDivisor+0x34>)
1a002d4c:	5ccb      	ldrb	r3, [r1, r3]
1a002d4e:	4013      	ands	r3, r2
1a002d50:	b2db      	uxtb	r3, r3
1a002d52:	4618      	mov	r0, r3
1a002d54:	370c      	adds	r7, #12
1a002d56:	46bd      	mov	sp, r7
1a002d58:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002d5c:	4770      	bx	lr
1a002d5e:	bf00      	nop
1a002d60:	40050000 	.word	0x40050000
1a002d64:	1a0032c0 	.word	0x1a0032c0

1a002d68 <Chip_Clock_GetClockInputHz>:
1a002d68:	b580      	push	{r7, lr}
1a002d6a:	b084      	sub	sp, #16
1a002d6c:	af00      	add	r7, sp, #0
1a002d6e:	4603      	mov	r3, r0
1a002d70:	71fb      	strb	r3, [r7, #7]
1a002d72:	2300      	movs	r3, #0
1a002d74:	60fb      	str	r3, [r7, #12]
1a002d76:	79fb      	ldrb	r3, [r7, #7]
1a002d78:	2b11      	cmp	r3, #17
1a002d7a:	d87f      	bhi.n	1a002e7c <Chip_Clock_GetClockInputHz+0x114>
1a002d7c:	a201      	add	r2, pc, #4	; (adr r2, 1a002d84 <Chip_Clock_GetClockInputHz+0x1c>)
1a002d7e:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a002d82:	bf00      	nop
1a002d84:	1a002dcd 	.word	0x1a002dcd
1a002d88:	1a002dd5 	.word	0x1a002dd5
1a002d8c:	1a002ddb 	.word	0x1a002ddb
1a002d90:	1a002def 	.word	0x1a002def
1a002d94:	1a002e09 	.word	0x1a002e09
1a002d98:	1a002e7d 	.word	0x1a002e7d
1a002d9c:	1a002e11 	.word	0x1a002e11
1a002da0:	1a002e19 	.word	0x1a002e19
1a002da4:	1a002e21 	.word	0x1a002e21
1a002da8:	1a002e29 	.word	0x1a002e29
1a002dac:	1a002e7d 	.word	0x1a002e7d
1a002db0:	1a002e7d 	.word	0x1a002e7d
1a002db4:	1a002e31 	.word	0x1a002e31
1a002db8:	1a002e3f 	.word	0x1a002e3f
1a002dbc:	1a002e4d 	.word	0x1a002e4d
1a002dc0:	1a002e5b 	.word	0x1a002e5b
1a002dc4:	1a002e69 	.word	0x1a002e69
1a002dc8:	1a002e77 	.word	0x1a002e77
1a002dcc:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a002dd0:	60fb      	str	r3, [r7, #12]
1a002dd2:	e056      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002dd4:	4b2d      	ldr	r3, [pc, #180]	; (1a002e8c <Chip_Clock_GetClockInputHz+0x124>)
1a002dd6:	60fb      	str	r3, [r7, #12]
1a002dd8:	e053      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002dda:	4b2d      	ldr	r3, [pc, #180]	; (1a002e90 <Chip_Clock_GetClockInputHz+0x128>)
1a002ddc:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a002de0:	f003 0307 	and.w	r3, r3, #7
1a002de4:	2b04      	cmp	r3, #4
1a002de6:	d04b      	beq.n	1a002e80 <Chip_Clock_GetClockInputHz+0x118>
1a002de8:	4b2a      	ldr	r3, [pc, #168]	; (1a002e94 <Chip_Clock_GetClockInputHz+0x12c>)
1a002dea:	60fb      	str	r3, [r7, #12]
1a002dec:	e048      	b.n	1a002e80 <Chip_Clock_GetClockInputHz+0x118>
1a002dee:	4b28      	ldr	r3, [pc, #160]	; (1a002e90 <Chip_Clock_GetClockInputHz+0x128>)
1a002df0:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a002df4:	f003 0307 	and.w	r3, r3, #7
1a002df8:	2b04      	cmp	r3, #4
1a002dfa:	d002      	beq.n	1a002e02 <Chip_Clock_GetClockInputHz+0x9a>
1a002dfc:	4b25      	ldr	r3, [pc, #148]	; (1a002e94 <Chip_Clock_GetClockInputHz+0x12c>)
1a002dfe:	60fb      	str	r3, [r7, #12]
1a002e00:	e03f      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e02:	4b25      	ldr	r3, [pc, #148]	; (1a002e98 <Chip_Clock_GetClockInputHz+0x130>)
1a002e04:	60fb      	str	r3, [r7, #12]
1a002e06:	e03c      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e08:	4b24      	ldr	r3, [pc, #144]	; (1a002e9c <Chip_Clock_GetClockInputHz+0x134>)
1a002e0a:	681b      	ldr	r3, [r3, #0]
1a002e0c:	60fb      	str	r3, [r7, #12]
1a002e0e:	e038      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e10:	4b23      	ldr	r3, [pc, #140]	; (1a002ea0 <Chip_Clock_GetClockInputHz+0x138>)
1a002e12:	681b      	ldr	r3, [r3, #0]
1a002e14:	60fb      	str	r3, [r7, #12]
1a002e16:	e034      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e18:	4b22      	ldr	r3, [pc, #136]	; (1a002ea4 <Chip_Clock_GetClockInputHz+0x13c>)
1a002e1a:	681b      	ldr	r3, [r3, #0]
1a002e1c:	60fb      	str	r3, [r7, #12]
1a002e1e:	e030      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e20:	4b20      	ldr	r3, [pc, #128]	; (1a002ea4 <Chip_Clock_GetClockInputHz+0x13c>)
1a002e22:	685b      	ldr	r3, [r3, #4]
1a002e24:	60fb      	str	r3, [r7, #12]
1a002e26:	e02c      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e28:	f7ff ff02 	bl	1a002c30 <Chip_Clock_GetMainPLLHz>
1a002e2c:	60f8      	str	r0, [r7, #12]
1a002e2e:	e028      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e30:	79fb      	ldrb	r3, [r7, #7]
1a002e32:	2100      	movs	r1, #0
1a002e34:	4618      	mov	r0, r3
1a002e36:	f7ff fdef 	bl	1a002a18 <Chip_Clock_GetDivRate>
1a002e3a:	60f8      	str	r0, [r7, #12]
1a002e3c:	e021      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e3e:	79fb      	ldrb	r3, [r7, #7]
1a002e40:	2101      	movs	r1, #1
1a002e42:	4618      	mov	r0, r3
1a002e44:	f7ff fde8 	bl	1a002a18 <Chip_Clock_GetDivRate>
1a002e48:	60f8      	str	r0, [r7, #12]
1a002e4a:	e01a      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e4c:	79fb      	ldrb	r3, [r7, #7]
1a002e4e:	2102      	movs	r1, #2
1a002e50:	4618      	mov	r0, r3
1a002e52:	f7ff fde1 	bl	1a002a18 <Chip_Clock_GetDivRate>
1a002e56:	60f8      	str	r0, [r7, #12]
1a002e58:	e013      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e5a:	79fb      	ldrb	r3, [r7, #7]
1a002e5c:	2103      	movs	r1, #3
1a002e5e:	4618      	mov	r0, r3
1a002e60:	f7ff fdda 	bl	1a002a18 <Chip_Clock_GetDivRate>
1a002e64:	60f8      	str	r0, [r7, #12]
1a002e66:	e00c      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e68:	79fb      	ldrb	r3, [r7, #7]
1a002e6a:	2104      	movs	r1, #4
1a002e6c:	4618      	mov	r0, r3
1a002e6e:	f7ff fdd3 	bl	1a002a18 <Chip_Clock_GetDivRate>
1a002e72:	60f8      	str	r0, [r7, #12]
1a002e74:	e005      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e76:	2300      	movs	r3, #0
1a002e78:	60fb      	str	r3, [r7, #12]
1a002e7a:	e002      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e7c:	bf00      	nop
1a002e7e:	e000      	b.n	1a002e82 <Chip_Clock_GetClockInputHz+0x11a>
1a002e80:	bf00      	nop
1a002e82:	68fb      	ldr	r3, [r7, #12]
1a002e84:	4618      	mov	r0, r3
1a002e86:	3710      	adds	r7, #16
1a002e88:	46bd      	mov	sp, r7
1a002e8a:	bd80      	pop	{r7, pc}
1a002e8c:	00b71b00 	.word	0x00b71b00
1a002e90:	40043000 	.word	0x40043000
1a002e94:	017d7840 	.word	0x017d7840
1a002e98:	02faf080 	.word	0x02faf080
1a002e9c:	1a0031b4 	.word	0x1a0031b4
1a002ea0:	1a0031b8 	.word	0x1a0031b8
1a002ea4:	10000070 	.word	0x10000070

1a002ea8 <Chip_Clock_GetBaseClocktHz>:
1a002ea8:	b580      	push	{r7, lr}
1a002eaa:	b082      	sub	sp, #8
1a002eac:	af00      	add	r7, sp, #0
1a002eae:	4603      	mov	r3, r0
1a002eb0:	71fb      	strb	r3, [r7, #7]
1a002eb2:	79fb      	ldrb	r3, [r7, #7]
1a002eb4:	4618      	mov	r0, r3
1a002eb6:	f000 f857 	bl	1a002f68 <Chip_Clock_GetBaseClock>
1a002eba:	4603      	mov	r3, r0
1a002ebc:	4618      	mov	r0, r3
1a002ebe:	f7ff ff53 	bl	1a002d68 <Chip_Clock_GetClockInputHz>
1a002ec2:	4603      	mov	r3, r0
1a002ec4:	4618      	mov	r0, r3
1a002ec6:	3708      	adds	r7, #8
1a002ec8:	46bd      	mov	sp, r7
1a002eca:	bd80      	pop	{r7, pc}

1a002ecc <Chip_Clock_SetBaseClock>:
1a002ecc:	b490      	push	{r4, r7}
1a002ece:	b084      	sub	sp, #16
1a002ed0:	af00      	add	r7, sp, #0
1a002ed2:	4604      	mov	r4, r0
1a002ed4:	4608      	mov	r0, r1
1a002ed6:	4611      	mov	r1, r2
1a002ed8:	461a      	mov	r2, r3
1a002eda:	4623      	mov	r3, r4
1a002edc:	71fb      	strb	r3, [r7, #7]
1a002ede:	4603      	mov	r3, r0
1a002ee0:	71bb      	strb	r3, [r7, #6]
1a002ee2:	460b      	mov	r3, r1
1a002ee4:	717b      	strb	r3, [r7, #5]
1a002ee6:	4613      	mov	r3, r2
1a002ee8:	713b      	strb	r3, [r7, #4]
1a002eea:	4a1d      	ldr	r2, [pc, #116]	; (1a002f60 <Chip_Clock_SetBaseClock+0x94>)
1a002eec:	79fb      	ldrb	r3, [r7, #7]
1a002eee:	3316      	adds	r3, #22
1a002ef0:	009b      	lsls	r3, r3, #2
1a002ef2:	4413      	add	r3, r2
1a002ef4:	685b      	ldr	r3, [r3, #4]
1a002ef6:	60fb      	str	r3, [r7, #12]
1a002ef8:	79fb      	ldrb	r3, [r7, #7]
1a002efa:	2b1b      	cmp	r3, #27
1a002efc:	d822      	bhi.n	1a002f44 <Chip_Clock_SetBaseClock+0x78>
1a002efe:	79bb      	ldrb	r3, [r7, #6]
1a002f00:	2b11      	cmp	r3, #17
1a002f02:	d028      	beq.n	1a002f56 <Chip_Clock_SetBaseClock+0x8a>
1a002f04:	68fa      	ldr	r2, [r7, #12]
1a002f06:	4b17      	ldr	r3, [pc, #92]	; (1a002f64 <Chip_Clock_SetBaseClock+0x98>)
1a002f08:	4013      	ands	r3, r2
1a002f0a:	60fb      	str	r3, [r7, #12]
1a002f0c:	797b      	ldrb	r3, [r7, #5]
1a002f0e:	2b00      	cmp	r3, #0
1a002f10:	d003      	beq.n	1a002f1a <Chip_Clock_SetBaseClock+0x4e>
1a002f12:	68fb      	ldr	r3, [r7, #12]
1a002f14:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a002f18:	60fb      	str	r3, [r7, #12]
1a002f1a:	793b      	ldrb	r3, [r7, #4]
1a002f1c:	2b00      	cmp	r3, #0
1a002f1e:	d003      	beq.n	1a002f28 <Chip_Clock_SetBaseClock+0x5c>
1a002f20:	68fb      	ldr	r3, [r7, #12]
1a002f22:	f043 0301 	orr.w	r3, r3, #1
1a002f26:	60fb      	str	r3, [r7, #12]
1a002f28:	79bb      	ldrb	r3, [r7, #6]
1a002f2a:	061b      	lsls	r3, r3, #24
1a002f2c:	461a      	mov	r2, r3
1a002f2e:	68fb      	ldr	r3, [r7, #12]
1a002f30:	4313      	orrs	r3, r2
1a002f32:	60fb      	str	r3, [r7, #12]
1a002f34:	4a0a      	ldr	r2, [pc, #40]	; (1a002f60 <Chip_Clock_SetBaseClock+0x94>)
1a002f36:	79fb      	ldrb	r3, [r7, #7]
1a002f38:	3316      	adds	r3, #22
1a002f3a:	009b      	lsls	r3, r3, #2
1a002f3c:	4413      	add	r3, r2
1a002f3e:	68fa      	ldr	r2, [r7, #12]
1a002f40:	605a      	str	r2, [r3, #4]
1a002f42:	e008      	b.n	1a002f56 <Chip_Clock_SetBaseClock+0x8a>
1a002f44:	4906      	ldr	r1, [pc, #24]	; (1a002f60 <Chip_Clock_SetBaseClock+0x94>)
1a002f46:	79fb      	ldrb	r3, [r7, #7]
1a002f48:	68fa      	ldr	r2, [r7, #12]
1a002f4a:	f042 0201 	orr.w	r2, r2, #1
1a002f4e:	3316      	adds	r3, #22
1a002f50:	009b      	lsls	r3, r3, #2
1a002f52:	440b      	add	r3, r1
1a002f54:	605a      	str	r2, [r3, #4]
1a002f56:	bf00      	nop
1a002f58:	3710      	adds	r7, #16
1a002f5a:	46bd      	mov	sp, r7
1a002f5c:	bc90      	pop	{r4, r7}
1a002f5e:	4770      	bx	lr
1a002f60:	40050000 	.word	0x40050000
1a002f64:	e0fff7fe 	.word	0xe0fff7fe

1a002f68 <Chip_Clock_GetBaseClock>:
1a002f68:	b480      	push	{r7}
1a002f6a:	b085      	sub	sp, #20
1a002f6c:	af00      	add	r7, sp, #0
1a002f6e:	4603      	mov	r3, r0
1a002f70:	71fb      	strb	r3, [r7, #7]
1a002f72:	79fb      	ldrb	r3, [r7, #7]
1a002f74:	2b1b      	cmp	r3, #27
1a002f76:	d901      	bls.n	1a002f7c <Chip_Clock_GetBaseClock+0x14>
1a002f78:	2311      	movs	r3, #17
1a002f7a:	e013      	b.n	1a002fa4 <Chip_Clock_GetBaseClock+0x3c>
1a002f7c:	4a0c      	ldr	r2, [pc, #48]	; (1a002fb0 <Chip_Clock_GetBaseClock+0x48>)
1a002f7e:	79fb      	ldrb	r3, [r7, #7]
1a002f80:	3316      	adds	r3, #22
1a002f82:	009b      	lsls	r3, r3, #2
1a002f84:	4413      	add	r3, r2
1a002f86:	685b      	ldr	r3, [r3, #4]
1a002f88:	60fb      	str	r3, [r7, #12]
1a002f8a:	68fb      	ldr	r3, [r7, #12]
1a002f8c:	f003 0301 	and.w	r3, r3, #1
1a002f90:	2b00      	cmp	r3, #0
1a002f92:	d001      	beq.n	1a002f98 <Chip_Clock_GetBaseClock+0x30>
1a002f94:	2311      	movs	r3, #17
1a002f96:	e005      	b.n	1a002fa4 <Chip_Clock_GetBaseClock+0x3c>
1a002f98:	68fb      	ldr	r3, [r7, #12]
1a002f9a:	0e1b      	lsrs	r3, r3, #24
1a002f9c:	b2db      	uxtb	r3, r3
1a002f9e:	f003 031f 	and.w	r3, r3, #31
1a002fa2:	b2db      	uxtb	r3, r3
1a002fa4:	4618      	mov	r0, r3
1a002fa6:	3714      	adds	r7, #20
1a002fa8:	46bd      	mov	sp, r7
1a002faa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002fae:	4770      	bx	lr
1a002fb0:	40050000 	.word	0x40050000

1a002fb4 <Chip_Clock_EnableOpts>:
1a002fb4:	b480      	push	{r7}
1a002fb6:	b085      	sub	sp, #20
1a002fb8:	af00      	add	r7, sp, #0
1a002fba:	603b      	str	r3, [r7, #0]
1a002fbc:	4603      	mov	r3, r0
1a002fbe:	80fb      	strh	r3, [r7, #6]
1a002fc0:	460b      	mov	r3, r1
1a002fc2:	717b      	strb	r3, [r7, #5]
1a002fc4:	4613      	mov	r3, r2
1a002fc6:	713b      	strb	r3, [r7, #4]
1a002fc8:	2301      	movs	r3, #1
1a002fca:	60fb      	str	r3, [r7, #12]
1a002fcc:	797b      	ldrb	r3, [r7, #5]
1a002fce:	2b00      	cmp	r3, #0
1a002fd0:	d003      	beq.n	1a002fda <Chip_Clock_EnableOpts+0x26>
1a002fd2:	68fb      	ldr	r3, [r7, #12]
1a002fd4:	f043 0302 	orr.w	r3, r3, #2
1a002fd8:	60fb      	str	r3, [r7, #12]
1a002fda:	793b      	ldrb	r3, [r7, #4]
1a002fdc:	2b00      	cmp	r3, #0
1a002fde:	d003      	beq.n	1a002fe8 <Chip_Clock_EnableOpts+0x34>
1a002fe0:	68fb      	ldr	r3, [r7, #12]
1a002fe2:	f043 0304 	orr.w	r3, r3, #4
1a002fe6:	60fb      	str	r3, [r7, #12]
1a002fe8:	683b      	ldr	r3, [r7, #0]
1a002fea:	2b02      	cmp	r3, #2
1a002fec:	d103      	bne.n	1a002ff6 <Chip_Clock_EnableOpts+0x42>
1a002fee:	68fb      	ldr	r3, [r7, #12]
1a002ff0:	f043 0320 	orr.w	r3, r3, #32
1a002ff4:	60fb      	str	r3, [r7, #12]
1a002ff6:	88fb      	ldrh	r3, [r7, #6]
1a002ff8:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002ffc:	d308      	bcc.n	1a003010 <Chip_Clock_EnableOpts+0x5c>
1a002ffe:	490a      	ldr	r1, [pc, #40]	; (1a003028 <Chip_Clock_EnableOpts+0x74>)
1a003000:	88fb      	ldrh	r3, [r7, #6]
1a003002:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a003006:	3320      	adds	r3, #32
1a003008:	68fa      	ldr	r2, [r7, #12]
1a00300a:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a00300e:	e005      	b.n	1a00301c <Chip_Clock_EnableOpts+0x68>
1a003010:	4906      	ldr	r1, [pc, #24]	; (1a00302c <Chip_Clock_EnableOpts+0x78>)
1a003012:	88fb      	ldrh	r3, [r7, #6]
1a003014:	3320      	adds	r3, #32
1a003016:	68fa      	ldr	r2, [r7, #12]
1a003018:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a00301c:	bf00      	nop
1a00301e:	3714      	adds	r7, #20
1a003020:	46bd      	mov	sp, r7
1a003022:	f85d 7b04 	ldr.w	r7, [sp], #4
1a003026:	4770      	bx	lr
1a003028:	40052000 	.word	0x40052000
1a00302c:	40051000 	.word	0x40051000

1a003030 <Chip_Clock_Enable>:
1a003030:	b480      	push	{r7}
1a003032:	b083      	sub	sp, #12
1a003034:	af00      	add	r7, sp, #0
1a003036:	4603      	mov	r3, r0
1a003038:	80fb      	strh	r3, [r7, #6]
1a00303a:	88fb      	ldrh	r3, [r7, #6]
1a00303c:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a003040:	d310      	bcc.n	1a003064 <Chip_Clock_Enable+0x34>
1a003042:	4a11      	ldr	r2, [pc, #68]	; (1a003088 <Chip_Clock_Enable+0x58>)
1a003044:	88fb      	ldrh	r3, [r7, #6]
1a003046:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a00304a:	3320      	adds	r3, #32
1a00304c:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a003050:	490d      	ldr	r1, [pc, #52]	; (1a003088 <Chip_Clock_Enable+0x58>)
1a003052:	88fb      	ldrh	r3, [r7, #6]
1a003054:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a003058:	f042 0201 	orr.w	r2, r2, #1
1a00305c:	3320      	adds	r3, #32
1a00305e:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a003062:	e00b      	b.n	1a00307c <Chip_Clock_Enable+0x4c>
1a003064:	4a09      	ldr	r2, [pc, #36]	; (1a00308c <Chip_Clock_Enable+0x5c>)
1a003066:	88fb      	ldrh	r3, [r7, #6]
1a003068:	3320      	adds	r3, #32
1a00306a:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a00306e:	4907      	ldr	r1, [pc, #28]	; (1a00308c <Chip_Clock_Enable+0x5c>)
1a003070:	88fb      	ldrh	r3, [r7, #6]
1a003072:	f042 0201 	orr.w	r2, r2, #1
1a003076:	3320      	adds	r3, #32
1a003078:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a00307c:	bf00      	nop
1a00307e:	370c      	adds	r7, #12
1a003080:	46bd      	mov	sp, r7
1a003082:	f85d 7b04 	ldr.w	r7, [sp], #4
1a003086:	4770      	bx	lr
1a003088:	40052000 	.word	0x40052000
1a00308c:	40051000 	.word	0x40051000

1a003090 <Chip_Clock_GetRate>:
1a003090:	b580      	push	{r7, lr}
1a003092:	b086      	sub	sp, #24
1a003094:	af00      	add	r7, sp, #0
1a003096:	4603      	mov	r3, r0
1a003098:	80fb      	strh	r3, [r7, #6]
1a00309a:	88fb      	ldrh	r3, [r7, #6]
1a00309c:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a0030a0:	d308      	bcc.n	1a0030b4 <Chip_Clock_GetRate+0x24>
1a0030a2:	4a1b      	ldr	r2, [pc, #108]	; (1a003110 <Chip_Clock_GetRate+0x80>)
1a0030a4:	88fb      	ldrh	r3, [r7, #6]
1a0030a6:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0030aa:	3320      	adds	r3, #32
1a0030ac:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a0030b0:	617b      	str	r3, [r7, #20]
1a0030b2:	e005      	b.n	1a0030c0 <Chip_Clock_GetRate+0x30>
1a0030b4:	4a17      	ldr	r2, [pc, #92]	; (1a003114 <Chip_Clock_GetRate+0x84>)
1a0030b6:	88fb      	ldrh	r3, [r7, #6]
1a0030b8:	3320      	adds	r3, #32
1a0030ba:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a0030be:	617b      	str	r3, [r7, #20]
1a0030c0:	697b      	ldr	r3, [r7, #20]
1a0030c2:	f003 0301 	and.w	r3, r3, #1
1a0030c6:	2b00      	cmp	r3, #0
1a0030c8:	d01b      	beq.n	1a003102 <Chip_Clock_GetRate+0x72>
1a0030ca:	88fb      	ldrh	r3, [r7, #6]
1a0030cc:	4618      	mov	r0, r3
1a0030ce:	f7ff fcc3 	bl	1a002a58 <Chip_Clock_FindBaseClock>
1a0030d2:	4603      	mov	r3, r0
1a0030d4:	72fb      	strb	r3, [r7, #11]
1a0030d6:	7afb      	ldrb	r3, [r7, #11]
1a0030d8:	4618      	mov	r0, r3
1a0030da:	f7ff fee5 	bl	1a002ea8 <Chip_Clock_GetBaseClocktHz>
1a0030de:	60f8      	str	r0, [r7, #12]
1a0030e0:	697b      	ldr	r3, [r7, #20]
1a0030e2:	095b      	lsrs	r3, r3, #5
1a0030e4:	f003 0307 	and.w	r3, r3, #7
1a0030e8:	2b00      	cmp	r3, #0
1a0030ea:	d102      	bne.n	1a0030f2 <Chip_Clock_GetRate+0x62>
1a0030ec:	2301      	movs	r3, #1
1a0030ee:	613b      	str	r3, [r7, #16]
1a0030f0:	e001      	b.n	1a0030f6 <Chip_Clock_GetRate+0x66>
1a0030f2:	2302      	movs	r3, #2
1a0030f4:	613b      	str	r3, [r7, #16]
1a0030f6:	68fa      	ldr	r2, [r7, #12]
1a0030f8:	693b      	ldr	r3, [r7, #16]
1a0030fa:	fbb2 f3f3 	udiv	r3, r2, r3
1a0030fe:	60fb      	str	r3, [r7, #12]
1a003100:	e001      	b.n	1a003106 <Chip_Clock_GetRate+0x76>
1a003102:	2300      	movs	r3, #0
1a003104:	60fb      	str	r3, [r7, #12]
1a003106:	68fb      	ldr	r3, [r7, #12]
1a003108:	4618      	mov	r0, r3
1a00310a:	3718      	adds	r7, #24
1a00310c:	46bd      	mov	sp, r7
1a00310e:	bd80      	pop	{r7, pc}
1a003110:	40052000 	.word	0x40052000
1a003114:	40051000 	.word	0x40051000

1a003118 <SystemCoreClockUpdate>:
1a003118:	b580      	push	{r7, lr}
1a00311a:	af00      	add	r7, sp, #0
1a00311c:	2069      	movs	r0, #105	; 0x69
1a00311e:	f7ff ffb7 	bl	1a003090 <Chip_Clock_GetRate>
1a003122:	4602      	mov	r2, r0
1a003124:	4b01      	ldr	r3, [pc, #4]	; (1a00312c <SystemCoreClockUpdate+0x14>)
1a003126:	601a      	str	r2, [r3, #0]
1a003128:	bf00      	nop
1a00312a:	bd80      	pop	{r7, pc}
1a00312c:	10000078 	.word	0x10000078

1a003130 <Chip_GPIO_Init>:
1a003130:	b480      	push	{r7}
1a003132:	b083      	sub	sp, #12
1a003134:	af00      	add	r7, sp, #0
1a003136:	6078      	str	r0, [r7, #4]
1a003138:	bf00      	nop
1a00313a:	370c      	adds	r7, #12
1a00313c:	46bd      	mov	sp, r7
1a00313e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a003142:	4770      	bx	lr

1a003144 <Chip_TIMER_GetClockIndex>:
1a003144:	b480      	push	{r7}
1a003146:	b085      	sub	sp, #20
1a003148:	af00      	add	r7, sp, #0
1a00314a:	6078      	str	r0, [r7, #4]
1a00314c:	687b      	ldr	r3, [r7, #4]
1a00314e:	4a0e      	ldr	r2, [pc, #56]	; (1a003188 <Chip_TIMER_GetClockIndex+0x44>)
1a003150:	4293      	cmp	r3, r2
1a003152:	d102      	bne.n	1a00315a <Chip_TIMER_GetClockIndex+0x16>
1a003154:	23a4      	movs	r3, #164	; 0xa4
1a003156:	81fb      	strh	r3, [r7, #14]
1a003158:	e00f      	b.n	1a00317a <Chip_TIMER_GetClockIndex+0x36>
1a00315a:	687b      	ldr	r3, [r7, #4]
1a00315c:	4a0b      	ldr	r2, [pc, #44]	; (1a00318c <Chip_TIMER_GetClockIndex+0x48>)
1a00315e:	4293      	cmp	r3, r2
1a003160:	d102      	bne.n	1a003168 <Chip_TIMER_GetClockIndex+0x24>
1a003162:	23a3      	movs	r3, #163	; 0xa3
1a003164:	81fb      	strh	r3, [r7, #14]
1a003166:	e008      	b.n	1a00317a <Chip_TIMER_GetClockIndex+0x36>
1a003168:	687b      	ldr	r3, [r7, #4]
1a00316a:	4a09      	ldr	r2, [pc, #36]	; (1a003190 <Chip_TIMER_GetClockIndex+0x4c>)
1a00316c:	4293      	cmp	r3, r2
1a00316e:	d102      	bne.n	1a003176 <Chip_TIMER_GetClockIndex+0x32>
1a003170:	2385      	movs	r3, #133	; 0x85
1a003172:	81fb      	strh	r3, [r7, #14]
1a003174:	e001      	b.n	1a00317a <Chip_TIMER_GetClockIndex+0x36>
1a003176:	2384      	movs	r3, #132	; 0x84
1a003178:	81fb      	strh	r3, [r7, #14]
1a00317a:	89fb      	ldrh	r3, [r7, #14]
1a00317c:	4618      	mov	r0, r3
1a00317e:	3714      	adds	r7, #20
1a003180:	46bd      	mov	sp, r7
1a003182:	f85d 7b04 	ldr.w	r7, [sp], #4
1a003186:	4770      	bx	lr
1a003188:	400c4000 	.word	0x400c4000
1a00318c:	400c3000 	.word	0x400c3000
1a003190:	40085000 	.word	0x40085000

1a003194 <Chip_TIMER_Init>:
1a003194:	b580      	push	{r7, lr}
1a003196:	b082      	sub	sp, #8
1a003198:	af00      	add	r7, sp, #0
1a00319a:	6078      	str	r0, [r7, #4]
1a00319c:	6878      	ldr	r0, [r7, #4]
1a00319e:	f7ff ffd1 	bl	1a003144 <Chip_TIMER_GetClockIndex>
1a0031a2:	4603      	mov	r3, r0
1a0031a4:	4618      	mov	r0, r3
1a0031a6:	f7ff ff43 	bl	1a003030 <Chip_Clock_Enable>
1a0031aa:	bf00      	nop
1a0031ac:	3708      	adds	r7, #8
1a0031ae:	46bd      	mov	sp, r7
1a0031b0:	bd80      	pop	{r7, pc}
1a0031b2:	Address 0x000000001a0031b2 is out of bounds.


1a0031b4 <ExtRateIn>:
1a0031b4:	0000 0000                                   ....

1a0031b8 <OscRateIn>:
1a0031b8:	1b00 00b7                                   ....

1a0031bc <leds>:
1a0031bc:	0202 0205 0014 0a02 0e00 0010 0b02 0b01     ................
1a0031cc:	0010 0c02 0c01 0010 0002 0005 0014 0102     ................
1a0031dc:	0105 0014                                   ....

1a0031e0 <keys>:
1a0031e0:	0001 0400 0050 0101 0800 0050 0201 0900     ....P.....P.....
1a0031f0:	0050 0601 0901 0050                         P.....P.

1a0031f8 <InitClkStates>:
1a0031f8:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a003208:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a003218:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a003228:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a003238:	111a 0001 111b 0001                         ........

1a003240 <UART_PClock>:
1a003240:	0081 0082 00a1 00a2                         ........

1a003248 <UART_BClock>:
1a003248:	01c2 01a2 0182 0162                         ......b.

1a003250 <periph_to_base>:
1a003250:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a003260:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a003270:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a003280:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a003290:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a0032a0:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a0032b0:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a0032c0:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a0032c8 <_init>:
1a0032c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0032ca:	bf00      	nop

Disassembly of section .fini:

1a0032cc <_fini>:
1a0032cc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a0032ce:	bf00      	nop
