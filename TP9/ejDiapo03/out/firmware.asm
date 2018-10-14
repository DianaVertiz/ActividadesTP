
out/firmware.elf:     file format elf32-littlearm


Disassembly of section .text:

1a000000 <isrVector>:
1a000000:	00 80 00 10 95 03 00 1a a5 01 00 1a ab 01 00 1a     ................
1a000010:	b1 01 00 1a b7 01 00 1a bd 01 00 1a 00 00 00 00     ................
	...
1a00002c:	c3 01 00 1a c9 01 00 1a 00 00 00 00 cf 01 00 1a     ................
1a00003c:	9d 15 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00004c:	00 00 00 00 db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00005c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00006c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00007c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00008c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a00009c:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ac:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000bc:	db 01 00 1a e5 15 00 1a 05 16 00 1a 25 16 00 1a     ............%...
1a0000cc:	45 16 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     E...............
1a0000dc:	db 01 00 1a db 01 00 1a db 01 00 1a db 01 00 1a     ................
1a0000ec:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a0000fc:	db 01 00 1a 00 00 00 00 db 01 00 1a db 01 00 1a     ................
1a00010c:	db 01 00 1a db 01 00 1a                             ........

1a000114 <__data_section_table_>:
1a000114:	1a002738 	.word	0x1a002738
1a000118:	10000000 	.word	0x10000000
1a00011c:	00000000 	.word	0x00000000

1a000120 <__bss_section_table_>:
1a000120:	10000000 	.word	0x10000000
1a000124:	0000005c 	.word	0x0000005c

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
1a000430:	f000 fd36 	bl	1a000ea0 <main>
1a000434:	e7fe      	b.n	1a000434 <ResetISR+0xa0>
1a000436:	bf00      	nop
1a000438:	40053100 	.word	0x40053100
1a00043c:	10df1000 	.word	0x10df1000
1a000440:	01dff7ff 	.word	0x01dff7ff
1a000444:	e000e280 	.word	0xe000e280
1a000448:	1a000114 	.word	0x1a000114
1a00044c:	1a000120 	.word	0x1a000120
1a000450:	1a000128 	.word	0x1a000128

1a000454 <ledOnOff_init>:
1a000454:	b580      	push	{r7, lr}
1a000456:	b084      	sub	sp, #16
1a000458:	af00      	add	r7, sp, #0
1a00045a:	6078      	str	r0, [r7, #4]
1a00045c:	2300      	movs	r3, #0
1a00045e:	60fb      	str	r3, [r7, #12]
1a000460:	e007      	b.n	1a000472 <ledOnOff_init+0x1e>
1a000462:	687a      	ldr	r2, [r7, #4]
1a000464:	68fb      	ldr	r3, [r7, #12]
1a000466:	4413      	add	r3, r2
1a000468:	2206      	movs	r2, #6
1a00046a:	701a      	strb	r2, [r3, #0]
1a00046c:	68fb      	ldr	r3, [r7, #12]
1a00046e:	3301      	adds	r3, #1
1a000470:	60fb      	str	r3, [r7, #12]
1a000472:	68fb      	ldr	r3, [r7, #12]
1a000474:	2b00      	cmp	r3, #0
1a000476:	ddf4      	ble.n	1a000462 <ledOnOff_init+0xe>
1a000478:	687b      	ldr	r3, [r7, #4]
1a00047a:	2200      	movs	r2, #0
1a00047c:	605a      	str	r2, [r3, #4]
1a00047e:	6878      	ldr	r0, [r7, #4]
1a000480:	f000 f815 	bl	1a0004ae <ledOnOff_clearInEvents>
1a000484:	6878      	ldr	r0, [r7, #4]
1a000486:	f000 f82b 	bl	1a0004e0 <ledOnOff_clearOutEvents>
1a00048a:	687b      	ldr	r3, [r7, #4]
1a00048c:	2200      	movs	r2, #0
1a00048e:	60da      	str	r2, [r3, #12]
1a000490:	bf00      	nop
1a000492:	3710      	adds	r7, #16
1a000494:	46bd      	mov	sp, r7
1a000496:	bd80      	pop	{r7, pc}

1a000498 <ledOnOff_enter>:
1a000498:	b580      	push	{r7, lr}
1a00049a:	b082      	sub	sp, #8
1a00049c:	af00      	add	r7, sp, #0
1a00049e:	6078      	str	r0, [r7, #4]
1a0004a0:	6878      	ldr	r0, [r7, #4]
1a0004a2:	f000 fa54 	bl	1a00094e <ledOnOff_enseq_main_region_default>
1a0004a6:	bf00      	nop
1a0004a8:	3708      	adds	r7, #8
1a0004aa:	46bd      	mov	sp, r7
1a0004ac:	bd80      	pop	{r7, pc}

1a0004ae <ledOnOff_clearInEvents>:
1a0004ae:	b480      	push	{r7}
1a0004b0:	b083      	sub	sp, #12
1a0004b2:	af00      	add	r7, sp, #0
1a0004b4:	6078      	str	r0, [r7, #4]
1a0004b6:	687b      	ldr	r3, [r7, #4]
1a0004b8:	2200      	movs	r2, #0
1a0004ba:	721a      	strb	r2, [r3, #8]
1a0004bc:	687b      	ldr	r3, [r7, #4]
1a0004be:	2200      	movs	r2, #0
1a0004c0:	741a      	strb	r2, [r3, #16]
1a0004c2:	687b      	ldr	r3, [r7, #4]
1a0004c4:	2200      	movs	r2, #0
1a0004c6:	745a      	strb	r2, [r3, #17]
1a0004c8:	687b      	ldr	r3, [r7, #4]
1a0004ca:	2200      	movs	r2, #0
1a0004cc:	749a      	strb	r2, [r3, #18]
1a0004ce:	687b      	ldr	r3, [r7, #4]
1a0004d0:	2200      	movs	r2, #0
1a0004d2:	74da      	strb	r2, [r3, #19]
1a0004d4:	bf00      	nop
1a0004d6:	370c      	adds	r7, #12
1a0004d8:	46bd      	mov	sp, r7
1a0004da:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004de:	4770      	bx	lr

1a0004e0 <ledOnOff_clearOutEvents>:
1a0004e0:	b480      	push	{r7}
1a0004e2:	b083      	sub	sp, #12
1a0004e4:	af00      	add	r7, sp, #0
1a0004e6:	6078      	str	r0, [r7, #4]
1a0004e8:	bf00      	nop
1a0004ea:	370c      	adds	r7, #12
1a0004ec:	46bd      	mov	sp, r7
1a0004ee:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0004f2:	4770      	bx	lr

1a0004f4 <ledOnOff_runCycle>:
1a0004f4:	b580      	push	{r7, lr}
1a0004f6:	b082      	sub	sp, #8
1a0004f8:	af00      	add	r7, sp, #0
1a0004fa:	6078      	str	r0, [r7, #4]
1a0004fc:	6878      	ldr	r0, [r7, #4]
1a0004fe:	f7ff ffef 	bl	1a0004e0 <ledOnOff_clearOutEvents>
1a000502:	687b      	ldr	r3, [r7, #4]
1a000504:	2200      	movs	r2, #0
1a000506:	605a      	str	r2, [r3, #4]
1a000508:	e02a      	b.n	1a000560 <ledOnOff_runCycle+0x6c>
1a00050a:	687b      	ldr	r3, [r7, #4]
1a00050c:	685b      	ldr	r3, [r3, #4]
1a00050e:	687a      	ldr	r2, [r7, #4]
1a000510:	5cd3      	ldrb	r3, [r2, r3]
1a000512:	3b01      	subs	r3, #1
1a000514:	2b04      	cmp	r3, #4
1a000516:	d81d      	bhi.n	1a000554 <ledOnOff_runCycle+0x60>
1a000518:	a201      	add	r2, pc, #4	; (adr r2, 1a000520 <ledOnOff_runCycle+0x2c>)
1a00051a:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a00051e:	bf00      	nop
1a000520:	1a000535 	.word	0x1a000535
1a000524:	1a00053d 	.word	0x1a00053d
1a000528:	1a000555 	.word	0x1a000555
1a00052c:	1a000545 	.word	0x1a000545
1a000530:	1a00054d 	.word	0x1a00054d
1a000534:	6878      	ldr	r0, [r7, #4]
1a000536:	f000 fab3 	bl	1a000aa0 <ledOnOff_react_main_region_led0_r1_encendido>
1a00053a:	e00c      	b.n	1a000556 <ledOnOff_runCycle+0x62>
1a00053c:	6878      	ldr	r0, [r7, #4]
1a00053e:	f000 faca 	bl	1a000ad6 <ledOnOff_react_main_region_led0_r1_apagado>
1a000542:	e008      	b.n	1a000556 <ledOnOff_runCycle+0x62>
1a000544:	6878      	ldr	r0, [r7, #4]
1a000546:	f000 fae1 	bl	1a000b0c <ledOnOff_react_main_region_led3_r1_encendido>
1a00054a:	e004      	b.n	1a000556 <ledOnOff_runCycle+0x62>
1a00054c:	6878      	ldr	r0, [r7, #4]
1a00054e:	f000 faf8 	bl	1a000b42 <ledOnOff_react_main_region_led3_r1_apagado>
1a000552:	e000      	b.n	1a000556 <ledOnOff_runCycle+0x62>
1a000554:	bf00      	nop
1a000556:	687b      	ldr	r3, [r7, #4]
1a000558:	685b      	ldr	r3, [r3, #4]
1a00055a:	1c5a      	adds	r2, r3, #1
1a00055c:	687b      	ldr	r3, [r7, #4]
1a00055e:	605a      	str	r2, [r3, #4]
1a000560:	687b      	ldr	r3, [r7, #4]
1a000562:	685b      	ldr	r3, [r3, #4]
1a000564:	2b00      	cmp	r3, #0
1a000566:	d0d0      	beq.n	1a00050a <ledOnOff_runCycle+0x16>
1a000568:	6878      	ldr	r0, [r7, #4]
1a00056a:	f7ff ffa0 	bl	1a0004ae <ledOnOff_clearInEvents>
1a00056e:	bf00      	nop
1a000570:	3708      	adds	r7, #8
1a000572:	46bd      	mov	sp, r7
1a000574:	bd80      	pop	{r7, pc}
1a000576:	bf00      	nop

1a000578 <ledOnOff_raiseTimeEvent>:
1a000578:	b480      	push	{r7}
1a00057a:	b083      	sub	sp, #12
1a00057c:	af00      	add	r7, sp, #0
1a00057e:	6078      	str	r0, [r7, #4]
1a000580:	6039      	str	r1, [r7, #0]
1a000582:	687b      	ldr	r3, [r7, #4]
1a000584:	3310      	adds	r3, #16
1a000586:	461a      	mov	r2, r3
1a000588:	683b      	ldr	r3, [r7, #0]
1a00058a:	429a      	cmp	r2, r3
1a00058c:	dc08      	bgt.n	1a0005a0 <ledOnOff_raiseTimeEvent+0x28>
1a00058e:	687b      	ldr	r3, [r7, #4]
1a000590:	3310      	adds	r3, #16
1a000592:	1d1a      	adds	r2, r3, #4
1a000594:	683b      	ldr	r3, [r7, #0]
1a000596:	429a      	cmp	r2, r3
1a000598:	d902      	bls.n	1a0005a0 <ledOnOff_raiseTimeEvent+0x28>
1a00059a:	683b      	ldr	r3, [r7, #0]
1a00059c:	2201      	movs	r2, #1
1a00059e:	701a      	strb	r2, [r3, #0]
1a0005a0:	bf00      	nop
1a0005a2:	370c      	adds	r7, #12
1a0005a4:	46bd      	mov	sp, r7
1a0005a6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005aa:	4770      	bx	lr

1a0005ac <ledOnOffIface_raise_keyPress>:
1a0005ac:	b480      	push	{r7}
1a0005ae:	b083      	sub	sp, #12
1a0005b0:	af00      	add	r7, sp, #0
1a0005b2:	6078      	str	r0, [r7, #4]
1a0005b4:	687b      	ldr	r3, [r7, #4]
1a0005b6:	2201      	movs	r2, #1
1a0005b8:	721a      	strb	r2, [r3, #8]
1a0005ba:	bf00      	nop
1a0005bc:	370c      	adds	r7, #12
1a0005be:	46bd      	mov	sp, r7
1a0005c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005c4:	4770      	bx	lr

1a0005c6 <ledOnOff_check_main_region_led0_tr0_tr0>:
1a0005c6:	b480      	push	{r7}
1a0005c8:	b083      	sub	sp, #12
1a0005ca:	af00      	add	r7, sp, #0
1a0005cc:	6078      	str	r0, [r7, #4]
1a0005ce:	687b      	ldr	r3, [r7, #4]
1a0005d0:	7a1b      	ldrb	r3, [r3, #8]
1a0005d2:	4618      	mov	r0, r3
1a0005d4:	370c      	adds	r7, #12
1a0005d6:	46bd      	mov	sp, r7
1a0005d8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005dc:	4770      	bx	lr

1a0005de <ledOnOff_check_main_region_led0_r1_encendido_tr0_tr0>:
1a0005de:	b480      	push	{r7}
1a0005e0:	b083      	sub	sp, #12
1a0005e2:	af00      	add	r7, sp, #0
1a0005e4:	6078      	str	r0, [r7, #4]
1a0005e6:	687b      	ldr	r3, [r7, #4]
1a0005e8:	7c1b      	ldrb	r3, [r3, #16]
1a0005ea:	4618      	mov	r0, r3
1a0005ec:	370c      	adds	r7, #12
1a0005ee:	46bd      	mov	sp, r7
1a0005f0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0005f4:	4770      	bx	lr

1a0005f6 <ledOnOff_check_main_region_led0_r1_apagado_tr0_tr0>:
1a0005f6:	b480      	push	{r7}
1a0005f8:	b083      	sub	sp, #12
1a0005fa:	af00      	add	r7, sp, #0
1a0005fc:	6078      	str	r0, [r7, #4]
1a0005fe:	687b      	ldr	r3, [r7, #4]
1a000600:	7c5b      	ldrb	r3, [r3, #17]
1a000602:	2b00      	cmp	r3, #0
1a000604:	d005      	beq.n	1a000612 <ledOnOff_check_main_region_led0_r1_apagado_tr0_tr0+0x1c>
1a000606:	687b      	ldr	r3, [r7, #4]
1a000608:	68db      	ldr	r3, [r3, #12]
1a00060a:	2b03      	cmp	r3, #3
1a00060c:	dc01      	bgt.n	1a000612 <ledOnOff_check_main_region_led0_r1_apagado_tr0_tr0+0x1c>
1a00060e:	2301      	movs	r3, #1
1a000610:	e000      	b.n	1a000614 <ledOnOff_check_main_region_led0_r1_apagado_tr0_tr0+0x1e>
1a000612:	2300      	movs	r3, #0
1a000614:	f003 0301 	and.w	r3, r3, #1
1a000618:	b2db      	uxtb	r3, r3
1a00061a:	4618      	mov	r0, r3
1a00061c:	370c      	adds	r7, #12
1a00061e:	46bd      	mov	sp, r7
1a000620:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000624:	4770      	bx	lr

1a000626 <ledOnOff_check_main_region_led3_tr0_tr0>:
1a000626:	b480      	push	{r7}
1a000628:	b083      	sub	sp, #12
1a00062a:	af00      	add	r7, sp, #0
1a00062c:	6078      	str	r0, [r7, #4]
1a00062e:	687b      	ldr	r3, [r7, #4]
1a000630:	7a1b      	ldrb	r3, [r3, #8]
1a000632:	4618      	mov	r0, r3
1a000634:	370c      	adds	r7, #12
1a000636:	46bd      	mov	sp, r7
1a000638:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00063c:	4770      	bx	lr

1a00063e <ledOnOff_check_main_region_led3_r1_encendido_tr0_tr0>:
1a00063e:	b480      	push	{r7}
1a000640:	b083      	sub	sp, #12
1a000642:	af00      	add	r7, sp, #0
1a000644:	6078      	str	r0, [r7, #4]
1a000646:	687b      	ldr	r3, [r7, #4]
1a000648:	7c9b      	ldrb	r3, [r3, #18]
1a00064a:	4618      	mov	r0, r3
1a00064c:	370c      	adds	r7, #12
1a00064e:	46bd      	mov	sp, r7
1a000650:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000654:	4770      	bx	lr

1a000656 <ledOnOff_check_main_region_led3_r1_apagado_tr0_tr0>:
1a000656:	b480      	push	{r7}
1a000658:	b083      	sub	sp, #12
1a00065a:	af00      	add	r7, sp, #0
1a00065c:	6078      	str	r0, [r7, #4]
1a00065e:	687b      	ldr	r3, [r7, #4]
1a000660:	7cdb      	ldrb	r3, [r3, #19]
1a000662:	2b00      	cmp	r3, #0
1a000664:	d005      	beq.n	1a000672 <ledOnOff_check_main_region_led3_r1_apagado_tr0_tr0+0x1c>
1a000666:	687b      	ldr	r3, [r7, #4]
1a000668:	68db      	ldr	r3, [r3, #12]
1a00066a:	2b03      	cmp	r3, #3
1a00066c:	dc01      	bgt.n	1a000672 <ledOnOff_check_main_region_led3_r1_apagado_tr0_tr0+0x1c>
1a00066e:	2301      	movs	r3, #1
1a000670:	e000      	b.n	1a000674 <ledOnOff_check_main_region_led3_r1_apagado_tr0_tr0+0x1e>
1a000672:	2300      	movs	r3, #0
1a000674:	f003 0301 	and.w	r3, r3, #1
1a000678:	b2db      	uxtb	r3, r3
1a00067a:	4618      	mov	r0, r3
1a00067c:	370c      	adds	r7, #12
1a00067e:	46bd      	mov	sp, r7
1a000680:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000684:	4770      	bx	lr

1a000686 <ledOnOff_effect_main_region_led0_tr0>:
1a000686:	b580      	push	{r7, lr}
1a000688:	b082      	sub	sp, #8
1a00068a:	af00      	add	r7, sp, #0
1a00068c:	6078      	str	r0, [r7, #4]
1a00068e:	6878      	ldr	r0, [r7, #4]
1a000690:	f000 f97e 	bl	1a000990 <ledOnOff_exseq_main_region_led0>
1a000694:	6878      	ldr	r0, [r7, #4]
1a000696:	f000 f92a 	bl	1a0008ee <ledOnOff_enseq_main_region_led3_default>
1a00069a:	bf00      	nop
1a00069c:	3708      	adds	r7, #8
1a00069e:	46bd      	mov	sp, r7
1a0006a0:	bd80      	pop	{r7, pc}

1a0006a2 <ledOnOff_effect_main_region_led0_r1_encendido_tr0>:
1a0006a2:	b580      	push	{r7, lr}
1a0006a4:	b082      	sub	sp, #8
1a0006a6:	af00      	add	r7, sp, #0
1a0006a8:	6078      	str	r0, [r7, #4]
1a0006aa:	6878      	ldr	r0, [r7, #4]
1a0006ac:	f000 f97b 	bl	1a0009a6 <ledOnOff_exseq_main_region_led0_r1_encendido>
1a0006b0:	6878      	ldr	r0, [r7, #4]
1a0006b2:	f000 f90b 	bl	1a0008cc <ledOnOff_enseq_main_region_led0_r1_apagado_default>
1a0006b6:	bf00      	nop
1a0006b8:	3708      	adds	r7, #8
1a0006ba:	46bd      	mov	sp, r7
1a0006bc:	bd80      	pop	{r7, pc}

1a0006be <ledOnOff_effect_main_region_led0_r1_apagado_tr0>:
1a0006be:	b580      	push	{r7, lr}
1a0006c0:	b082      	sub	sp, #8
1a0006c2:	af00      	add	r7, sp, #0
1a0006c4:	6078      	str	r0, [r7, #4]
1a0006c6:	6878      	ldr	r0, [r7, #4]
1a0006c8:	f000 f97e 	bl	1a0009c8 <ledOnOff_exseq_main_region_led0_r1_apagado>
1a0006cc:	6878      	ldr	r0, [r7, #4]
1a0006ce:	f000 f8ec 	bl	1a0008aa <ledOnOff_enseq_main_region_led0_r1_encendido_default>
1a0006d2:	bf00      	nop
1a0006d4:	3708      	adds	r7, #8
1a0006d6:	46bd      	mov	sp, r7
1a0006d8:	bd80      	pop	{r7, pc}

1a0006da <ledOnOff_effect_main_region_led3_tr0>:
1a0006da:	b580      	push	{r7, lr}
1a0006dc:	b082      	sub	sp, #8
1a0006de:	af00      	add	r7, sp, #0
1a0006e0:	6078      	str	r0, [r7, #4]
1a0006e2:	6878      	ldr	r0, [r7, #4]
1a0006e4:	f000 f981 	bl	1a0009ea <ledOnOff_exseq_main_region_led3>
1a0006e8:	6878      	ldr	r0, [r7, #4]
1a0006ea:	f000 f8d0 	bl	1a00088e <ledOnOff_enseq_main_region_led0_default>
1a0006ee:	bf00      	nop
1a0006f0:	3708      	adds	r7, #8
1a0006f2:	46bd      	mov	sp, r7
1a0006f4:	bd80      	pop	{r7, pc}

1a0006f6 <ledOnOff_effect_main_region_led3_r1_encendido_tr0>:
1a0006f6:	b580      	push	{r7, lr}
1a0006f8:	b082      	sub	sp, #8
1a0006fa:	af00      	add	r7, sp, #0
1a0006fc:	6078      	str	r0, [r7, #4]
1a0006fe:	6878      	ldr	r0, [r7, #4]
1a000700:	f000 f97e 	bl	1a000a00 <ledOnOff_exseq_main_region_led3_r1_encendido>
1a000704:	6878      	ldr	r0, [r7, #4]
1a000706:	f000 f911 	bl	1a00092c <ledOnOff_enseq_main_region_led3_r1_apagado_default>
1a00070a:	bf00      	nop
1a00070c:	3708      	adds	r7, #8
1a00070e:	46bd      	mov	sp, r7
1a000710:	bd80      	pop	{r7, pc}

1a000712 <ledOnOff_effect_main_region_led3_r1_apagado_tr0>:
1a000712:	b580      	push	{r7, lr}
1a000714:	b082      	sub	sp, #8
1a000716:	af00      	add	r7, sp, #0
1a000718:	6078      	str	r0, [r7, #4]
1a00071a:	6878      	ldr	r0, [r7, #4]
1a00071c:	f000 f981 	bl	1a000a22 <ledOnOff_exseq_main_region_led3_r1_apagado>
1a000720:	6878      	ldr	r0, [r7, #4]
1a000722:	f000 f8f2 	bl	1a00090a <ledOnOff_enseq_main_region_led3_r1_encendido_default>
1a000726:	bf00      	nop
1a000728:	3708      	adds	r7, #8
1a00072a:	46bd      	mov	sp, r7
1a00072c:	bd80      	pop	{r7, pc}

1a00072e <ledOnOff_enact_main_region_led0>:
1a00072e:	b580      	push	{r7, lr}
1a000730:	b082      	sub	sp, #8
1a000732:	af00      	add	r7, sp, #0
1a000734:	6078      	str	r0, [r7, #4]
1a000736:	2103      	movs	r1, #3
1a000738:	6878      	ldr	r0, [r7, #4]
1a00073a:	f000 fba3 	bl	1a000e84 <ledOnOffIface_ledOff>
1a00073e:	687b      	ldr	r3, [r7, #4]
1a000740:	2200      	movs	r2, #0
1a000742:	60da      	str	r2, [r3, #12]
1a000744:	bf00      	nop
1a000746:	3708      	adds	r7, #8
1a000748:	46bd      	mov	sp, r7
1a00074a:	bd80      	pop	{r7, pc}

1a00074c <ledOnOff_enact_main_region_led0_r1_encendido>:
1a00074c:	b580      	push	{r7, lr}
1a00074e:	b082      	sub	sp, #8
1a000750:	af00      	add	r7, sp, #0
1a000752:	6078      	str	r0, [r7, #4]
1a000754:	687b      	ldr	r3, [r7, #4]
1a000756:	f103 0110 	add.w	r1, r3, #16
1a00075a:	2300      	movs	r3, #0
1a00075c:	22fa      	movs	r2, #250	; 0xfa
1a00075e:	6878      	ldr	r0, [r7, #4]
1a000760:	f000 fb5c 	bl	1a000e1c <ledOnOff_setTimer>
1a000764:	2100      	movs	r1, #0
1a000766:	6878      	ldr	r0, [r7, #4]
1a000768:	f000 fb7e 	bl	1a000e68 <ledOnOffIface_ledOn>
1a00076c:	687b      	ldr	r3, [r7, #4]
1a00076e:	68db      	ldr	r3, [r3, #12]
1a000770:	1c5a      	adds	r2, r3, #1
1a000772:	687b      	ldr	r3, [r7, #4]
1a000774:	60da      	str	r2, [r3, #12]
1a000776:	bf00      	nop
1a000778:	3708      	adds	r7, #8
1a00077a:	46bd      	mov	sp, r7
1a00077c:	bd80      	pop	{r7, pc}

1a00077e <ledOnOff_enact_main_region_led0_r1_apagado>:
1a00077e:	b580      	push	{r7, lr}
1a000780:	b082      	sub	sp, #8
1a000782:	af00      	add	r7, sp, #0
1a000784:	6078      	str	r0, [r7, #4]
1a000786:	687b      	ldr	r3, [r7, #4]
1a000788:	f103 0111 	add.w	r1, r3, #17
1a00078c:	2300      	movs	r3, #0
1a00078e:	22fa      	movs	r2, #250	; 0xfa
1a000790:	6878      	ldr	r0, [r7, #4]
1a000792:	f000 fb43 	bl	1a000e1c <ledOnOff_setTimer>
1a000796:	2100      	movs	r1, #0
1a000798:	6878      	ldr	r0, [r7, #4]
1a00079a:	f000 fb73 	bl	1a000e84 <ledOnOffIface_ledOff>
1a00079e:	bf00      	nop
1a0007a0:	3708      	adds	r7, #8
1a0007a2:	46bd      	mov	sp, r7
1a0007a4:	bd80      	pop	{r7, pc}

1a0007a6 <ledOnOff_enact_main_region_led3>:
1a0007a6:	b580      	push	{r7, lr}
1a0007a8:	b082      	sub	sp, #8
1a0007aa:	af00      	add	r7, sp, #0
1a0007ac:	6078      	str	r0, [r7, #4]
1a0007ae:	2100      	movs	r1, #0
1a0007b0:	6878      	ldr	r0, [r7, #4]
1a0007b2:	f000 fb67 	bl	1a000e84 <ledOnOffIface_ledOff>
1a0007b6:	687b      	ldr	r3, [r7, #4]
1a0007b8:	2200      	movs	r2, #0
1a0007ba:	60da      	str	r2, [r3, #12]
1a0007bc:	bf00      	nop
1a0007be:	3708      	adds	r7, #8
1a0007c0:	46bd      	mov	sp, r7
1a0007c2:	bd80      	pop	{r7, pc}

1a0007c4 <ledOnOff_enact_main_region_led3_r1_encendido>:
1a0007c4:	b580      	push	{r7, lr}
1a0007c6:	b082      	sub	sp, #8
1a0007c8:	af00      	add	r7, sp, #0
1a0007ca:	6078      	str	r0, [r7, #4]
1a0007cc:	687b      	ldr	r3, [r7, #4]
1a0007ce:	f103 0112 	add.w	r1, r3, #18
1a0007d2:	2300      	movs	r3, #0
1a0007d4:	22fa      	movs	r2, #250	; 0xfa
1a0007d6:	6878      	ldr	r0, [r7, #4]
1a0007d8:	f000 fb20 	bl	1a000e1c <ledOnOff_setTimer>
1a0007dc:	2103      	movs	r1, #3
1a0007de:	6878      	ldr	r0, [r7, #4]
1a0007e0:	f000 fb42 	bl	1a000e68 <ledOnOffIface_ledOn>
1a0007e4:	687b      	ldr	r3, [r7, #4]
1a0007e6:	68db      	ldr	r3, [r3, #12]
1a0007e8:	1c5a      	adds	r2, r3, #1
1a0007ea:	687b      	ldr	r3, [r7, #4]
1a0007ec:	60da      	str	r2, [r3, #12]
1a0007ee:	bf00      	nop
1a0007f0:	3708      	adds	r7, #8
1a0007f2:	46bd      	mov	sp, r7
1a0007f4:	bd80      	pop	{r7, pc}

1a0007f6 <ledOnOff_enact_main_region_led3_r1_apagado>:
1a0007f6:	b580      	push	{r7, lr}
1a0007f8:	b082      	sub	sp, #8
1a0007fa:	af00      	add	r7, sp, #0
1a0007fc:	6078      	str	r0, [r7, #4]
1a0007fe:	687b      	ldr	r3, [r7, #4]
1a000800:	f103 0113 	add.w	r1, r3, #19
1a000804:	2300      	movs	r3, #0
1a000806:	22fa      	movs	r2, #250	; 0xfa
1a000808:	6878      	ldr	r0, [r7, #4]
1a00080a:	f000 fb07 	bl	1a000e1c <ledOnOff_setTimer>
1a00080e:	2103      	movs	r1, #3
1a000810:	6878      	ldr	r0, [r7, #4]
1a000812:	f000 fb37 	bl	1a000e84 <ledOnOffIface_ledOff>
1a000816:	bf00      	nop
1a000818:	3708      	adds	r7, #8
1a00081a:	46bd      	mov	sp, r7
1a00081c:	bd80      	pop	{r7, pc}

1a00081e <ledOnOff_exact_main_region_led0_r1_encendido>:
1a00081e:	b580      	push	{r7, lr}
1a000820:	b082      	sub	sp, #8
1a000822:	af00      	add	r7, sp, #0
1a000824:	6078      	str	r0, [r7, #4]
1a000826:	687b      	ldr	r3, [r7, #4]
1a000828:	3310      	adds	r3, #16
1a00082a:	4619      	mov	r1, r3
1a00082c:	6878      	ldr	r0, [r7, #4]
1a00082e:	f000 fb0b 	bl	1a000e48 <ledOnOff_unsetTimer>
1a000832:	bf00      	nop
1a000834:	3708      	adds	r7, #8
1a000836:	46bd      	mov	sp, r7
1a000838:	bd80      	pop	{r7, pc}

1a00083a <ledOnOff_exact_main_region_led0_r1_apagado>:
1a00083a:	b580      	push	{r7, lr}
1a00083c:	b082      	sub	sp, #8
1a00083e:	af00      	add	r7, sp, #0
1a000840:	6078      	str	r0, [r7, #4]
1a000842:	687b      	ldr	r3, [r7, #4]
1a000844:	3311      	adds	r3, #17
1a000846:	4619      	mov	r1, r3
1a000848:	6878      	ldr	r0, [r7, #4]
1a00084a:	f000 fafd 	bl	1a000e48 <ledOnOff_unsetTimer>
1a00084e:	bf00      	nop
1a000850:	3708      	adds	r7, #8
1a000852:	46bd      	mov	sp, r7
1a000854:	bd80      	pop	{r7, pc}

1a000856 <ledOnOff_exact_main_region_led3_r1_encendido>:
1a000856:	b580      	push	{r7, lr}
1a000858:	b082      	sub	sp, #8
1a00085a:	af00      	add	r7, sp, #0
1a00085c:	6078      	str	r0, [r7, #4]
1a00085e:	687b      	ldr	r3, [r7, #4]
1a000860:	3312      	adds	r3, #18
1a000862:	4619      	mov	r1, r3
1a000864:	6878      	ldr	r0, [r7, #4]
1a000866:	f000 faef 	bl	1a000e48 <ledOnOff_unsetTimer>
1a00086a:	bf00      	nop
1a00086c:	3708      	adds	r7, #8
1a00086e:	46bd      	mov	sp, r7
1a000870:	bd80      	pop	{r7, pc}

1a000872 <ledOnOff_exact_main_region_led3_r1_apagado>:
1a000872:	b580      	push	{r7, lr}
1a000874:	b082      	sub	sp, #8
1a000876:	af00      	add	r7, sp, #0
1a000878:	6078      	str	r0, [r7, #4]
1a00087a:	687b      	ldr	r3, [r7, #4]
1a00087c:	3313      	adds	r3, #19
1a00087e:	4619      	mov	r1, r3
1a000880:	6878      	ldr	r0, [r7, #4]
1a000882:	f000 fae1 	bl	1a000e48 <ledOnOff_unsetTimer>
1a000886:	bf00      	nop
1a000888:	3708      	adds	r7, #8
1a00088a:	46bd      	mov	sp, r7
1a00088c:	bd80      	pop	{r7, pc}

1a00088e <ledOnOff_enseq_main_region_led0_default>:
1a00088e:	b580      	push	{r7, lr}
1a000890:	b082      	sub	sp, #8
1a000892:	af00      	add	r7, sp, #0
1a000894:	6078      	str	r0, [r7, #4]
1a000896:	6878      	ldr	r0, [r7, #4]
1a000898:	f7ff ff49 	bl	1a00072e <ledOnOff_enact_main_region_led0>
1a00089c:	6878      	ldr	r0, [r7, #4]
1a00089e:	f000 f861 	bl	1a000964 <ledOnOff_enseq_main_region_led0_r1_default>
1a0008a2:	bf00      	nop
1a0008a4:	3708      	adds	r7, #8
1a0008a6:	46bd      	mov	sp, r7
1a0008a8:	bd80      	pop	{r7, pc}

1a0008aa <ledOnOff_enseq_main_region_led0_r1_encendido_default>:
1a0008aa:	b580      	push	{r7, lr}
1a0008ac:	b082      	sub	sp, #8
1a0008ae:	af00      	add	r7, sp, #0
1a0008b0:	6078      	str	r0, [r7, #4]
1a0008b2:	6878      	ldr	r0, [r7, #4]
1a0008b4:	f7ff ff4a 	bl	1a00074c <ledOnOff_enact_main_region_led0_r1_encendido>
1a0008b8:	687b      	ldr	r3, [r7, #4]
1a0008ba:	2201      	movs	r2, #1
1a0008bc:	701a      	strb	r2, [r3, #0]
1a0008be:	687b      	ldr	r3, [r7, #4]
1a0008c0:	2200      	movs	r2, #0
1a0008c2:	605a      	str	r2, [r3, #4]
1a0008c4:	bf00      	nop
1a0008c6:	3708      	adds	r7, #8
1a0008c8:	46bd      	mov	sp, r7
1a0008ca:	bd80      	pop	{r7, pc}

1a0008cc <ledOnOff_enseq_main_region_led0_r1_apagado_default>:
1a0008cc:	b580      	push	{r7, lr}
1a0008ce:	b082      	sub	sp, #8
1a0008d0:	af00      	add	r7, sp, #0
1a0008d2:	6078      	str	r0, [r7, #4]
1a0008d4:	6878      	ldr	r0, [r7, #4]
1a0008d6:	f7ff ff52 	bl	1a00077e <ledOnOff_enact_main_region_led0_r1_apagado>
1a0008da:	687b      	ldr	r3, [r7, #4]
1a0008dc:	2202      	movs	r2, #2
1a0008de:	701a      	strb	r2, [r3, #0]
1a0008e0:	687b      	ldr	r3, [r7, #4]
1a0008e2:	2200      	movs	r2, #0
1a0008e4:	605a      	str	r2, [r3, #4]
1a0008e6:	bf00      	nop
1a0008e8:	3708      	adds	r7, #8
1a0008ea:	46bd      	mov	sp, r7
1a0008ec:	bd80      	pop	{r7, pc}

1a0008ee <ledOnOff_enseq_main_region_led3_default>:
1a0008ee:	b580      	push	{r7, lr}
1a0008f0:	b082      	sub	sp, #8
1a0008f2:	af00      	add	r7, sp, #0
1a0008f4:	6078      	str	r0, [r7, #4]
1a0008f6:	6878      	ldr	r0, [r7, #4]
1a0008f8:	f7ff ff55 	bl	1a0007a6 <ledOnOff_enact_main_region_led3>
1a0008fc:	6878      	ldr	r0, [r7, #4]
1a0008fe:	f000 f83c 	bl	1a00097a <ledOnOff_enseq_main_region_led3_r1_default>
1a000902:	bf00      	nop
1a000904:	3708      	adds	r7, #8
1a000906:	46bd      	mov	sp, r7
1a000908:	bd80      	pop	{r7, pc}

1a00090a <ledOnOff_enseq_main_region_led3_r1_encendido_default>:
1a00090a:	b580      	push	{r7, lr}
1a00090c:	b082      	sub	sp, #8
1a00090e:	af00      	add	r7, sp, #0
1a000910:	6078      	str	r0, [r7, #4]
1a000912:	6878      	ldr	r0, [r7, #4]
1a000914:	f7ff ff56 	bl	1a0007c4 <ledOnOff_enact_main_region_led3_r1_encendido>
1a000918:	687b      	ldr	r3, [r7, #4]
1a00091a:	2204      	movs	r2, #4
1a00091c:	701a      	strb	r2, [r3, #0]
1a00091e:	687b      	ldr	r3, [r7, #4]
1a000920:	2200      	movs	r2, #0
1a000922:	605a      	str	r2, [r3, #4]
1a000924:	bf00      	nop
1a000926:	3708      	adds	r7, #8
1a000928:	46bd      	mov	sp, r7
1a00092a:	bd80      	pop	{r7, pc}

1a00092c <ledOnOff_enseq_main_region_led3_r1_apagado_default>:
1a00092c:	b580      	push	{r7, lr}
1a00092e:	b082      	sub	sp, #8
1a000930:	af00      	add	r7, sp, #0
1a000932:	6078      	str	r0, [r7, #4]
1a000934:	6878      	ldr	r0, [r7, #4]
1a000936:	f7ff ff5e 	bl	1a0007f6 <ledOnOff_enact_main_region_led3_r1_apagado>
1a00093a:	687b      	ldr	r3, [r7, #4]
1a00093c:	2205      	movs	r2, #5
1a00093e:	701a      	strb	r2, [r3, #0]
1a000940:	687b      	ldr	r3, [r7, #4]
1a000942:	2200      	movs	r2, #0
1a000944:	605a      	str	r2, [r3, #4]
1a000946:	bf00      	nop
1a000948:	3708      	adds	r7, #8
1a00094a:	46bd      	mov	sp, r7
1a00094c:	bd80      	pop	{r7, pc}

1a00094e <ledOnOff_enseq_main_region_default>:
1a00094e:	b580      	push	{r7, lr}
1a000950:	b082      	sub	sp, #8
1a000952:	af00      	add	r7, sp, #0
1a000954:	6078      	str	r0, [r7, #4]
1a000956:	6878      	ldr	r0, [r7, #4]
1a000958:	f000 f90e 	bl	1a000b78 <ledOnOff_react_main_region__entry_Default>
1a00095c:	bf00      	nop
1a00095e:	3708      	adds	r7, #8
1a000960:	46bd      	mov	sp, r7
1a000962:	bd80      	pop	{r7, pc}

1a000964 <ledOnOff_enseq_main_region_led0_r1_default>:
1a000964:	b580      	push	{r7, lr}
1a000966:	b082      	sub	sp, #8
1a000968:	af00      	add	r7, sp, #0
1a00096a:	6078      	str	r0, [r7, #4]
1a00096c:	6878      	ldr	r0, [r7, #4]
1a00096e:	f000 f90e 	bl	1a000b8e <ledOnOff_react_main_region_led0_r1__entry_Default>
1a000972:	bf00      	nop
1a000974:	3708      	adds	r7, #8
1a000976:	46bd      	mov	sp, r7
1a000978:	bd80      	pop	{r7, pc}

1a00097a <ledOnOff_enseq_main_region_led3_r1_default>:
1a00097a:	b580      	push	{r7, lr}
1a00097c:	b082      	sub	sp, #8
1a00097e:	af00      	add	r7, sp, #0
1a000980:	6078      	str	r0, [r7, #4]
1a000982:	6878      	ldr	r0, [r7, #4]
1a000984:	f000 f90e 	bl	1a000ba4 <ledOnOff_react_main_region_led3_r1__entry_Default>
1a000988:	bf00      	nop
1a00098a:	3708      	adds	r7, #8
1a00098c:	46bd      	mov	sp, r7
1a00098e:	bd80      	pop	{r7, pc}

1a000990 <ledOnOff_exseq_main_region_led0>:
1a000990:	b580      	push	{r7, lr}
1a000992:	b082      	sub	sp, #8
1a000994:	af00      	add	r7, sp, #0
1a000996:	6078      	str	r0, [r7, #4]
1a000998:	6878      	ldr	r0, [r7, #4]
1a00099a:	f000 f853 	bl	1a000a44 <ledOnOff_exseq_main_region_led0_r1>
1a00099e:	bf00      	nop
1a0009a0:	3708      	adds	r7, #8
1a0009a2:	46bd      	mov	sp, r7
1a0009a4:	bd80      	pop	{r7, pc}

1a0009a6 <ledOnOff_exseq_main_region_led0_r1_encendido>:
1a0009a6:	b580      	push	{r7, lr}
1a0009a8:	b082      	sub	sp, #8
1a0009aa:	af00      	add	r7, sp, #0
1a0009ac:	6078      	str	r0, [r7, #4]
1a0009ae:	687b      	ldr	r3, [r7, #4]
1a0009b0:	2206      	movs	r2, #6
1a0009b2:	701a      	strb	r2, [r3, #0]
1a0009b4:	687b      	ldr	r3, [r7, #4]
1a0009b6:	2200      	movs	r2, #0
1a0009b8:	605a      	str	r2, [r3, #4]
1a0009ba:	6878      	ldr	r0, [r7, #4]
1a0009bc:	f7ff ff2f 	bl	1a00081e <ledOnOff_exact_main_region_led0_r1_encendido>
1a0009c0:	bf00      	nop
1a0009c2:	3708      	adds	r7, #8
1a0009c4:	46bd      	mov	sp, r7
1a0009c6:	bd80      	pop	{r7, pc}

1a0009c8 <ledOnOff_exseq_main_region_led0_r1_apagado>:
1a0009c8:	b580      	push	{r7, lr}
1a0009ca:	b082      	sub	sp, #8
1a0009cc:	af00      	add	r7, sp, #0
1a0009ce:	6078      	str	r0, [r7, #4]
1a0009d0:	687b      	ldr	r3, [r7, #4]
1a0009d2:	2206      	movs	r2, #6
1a0009d4:	701a      	strb	r2, [r3, #0]
1a0009d6:	687b      	ldr	r3, [r7, #4]
1a0009d8:	2200      	movs	r2, #0
1a0009da:	605a      	str	r2, [r3, #4]
1a0009dc:	6878      	ldr	r0, [r7, #4]
1a0009de:	f7ff ff2c 	bl	1a00083a <ledOnOff_exact_main_region_led0_r1_apagado>
1a0009e2:	bf00      	nop
1a0009e4:	3708      	adds	r7, #8
1a0009e6:	46bd      	mov	sp, r7
1a0009e8:	bd80      	pop	{r7, pc}

1a0009ea <ledOnOff_exseq_main_region_led3>:
1a0009ea:	b580      	push	{r7, lr}
1a0009ec:	b082      	sub	sp, #8
1a0009ee:	af00      	add	r7, sp, #0
1a0009f0:	6078      	str	r0, [r7, #4]
1a0009f2:	6878      	ldr	r0, [r7, #4]
1a0009f4:	f000 f83d 	bl	1a000a72 <ledOnOff_exseq_main_region_led3_r1>
1a0009f8:	bf00      	nop
1a0009fa:	3708      	adds	r7, #8
1a0009fc:	46bd      	mov	sp, r7
1a0009fe:	bd80      	pop	{r7, pc}

1a000a00 <ledOnOff_exseq_main_region_led3_r1_encendido>:
1a000a00:	b580      	push	{r7, lr}
1a000a02:	b082      	sub	sp, #8
1a000a04:	af00      	add	r7, sp, #0
1a000a06:	6078      	str	r0, [r7, #4]
1a000a08:	687b      	ldr	r3, [r7, #4]
1a000a0a:	2206      	movs	r2, #6
1a000a0c:	701a      	strb	r2, [r3, #0]
1a000a0e:	687b      	ldr	r3, [r7, #4]
1a000a10:	2200      	movs	r2, #0
1a000a12:	605a      	str	r2, [r3, #4]
1a000a14:	6878      	ldr	r0, [r7, #4]
1a000a16:	f7ff ff1e 	bl	1a000856 <ledOnOff_exact_main_region_led3_r1_encendido>
1a000a1a:	bf00      	nop
1a000a1c:	3708      	adds	r7, #8
1a000a1e:	46bd      	mov	sp, r7
1a000a20:	bd80      	pop	{r7, pc}

1a000a22 <ledOnOff_exseq_main_region_led3_r1_apagado>:
1a000a22:	b580      	push	{r7, lr}
1a000a24:	b082      	sub	sp, #8
1a000a26:	af00      	add	r7, sp, #0
1a000a28:	6078      	str	r0, [r7, #4]
1a000a2a:	687b      	ldr	r3, [r7, #4]
1a000a2c:	2206      	movs	r2, #6
1a000a2e:	701a      	strb	r2, [r3, #0]
1a000a30:	687b      	ldr	r3, [r7, #4]
1a000a32:	2200      	movs	r2, #0
1a000a34:	605a      	str	r2, [r3, #4]
1a000a36:	6878      	ldr	r0, [r7, #4]
1a000a38:	f7ff ff1b 	bl	1a000872 <ledOnOff_exact_main_region_led3_r1_apagado>
1a000a3c:	bf00      	nop
1a000a3e:	3708      	adds	r7, #8
1a000a40:	46bd      	mov	sp, r7
1a000a42:	bd80      	pop	{r7, pc}

1a000a44 <ledOnOff_exseq_main_region_led0_r1>:
1a000a44:	b580      	push	{r7, lr}
1a000a46:	b082      	sub	sp, #8
1a000a48:	af00      	add	r7, sp, #0
1a000a4a:	6078      	str	r0, [r7, #4]
1a000a4c:	687b      	ldr	r3, [r7, #4]
1a000a4e:	781b      	ldrb	r3, [r3, #0]
1a000a50:	2b01      	cmp	r3, #1
1a000a52:	d002      	beq.n	1a000a5a <ledOnOff_exseq_main_region_led0_r1+0x16>
1a000a54:	2b02      	cmp	r3, #2
1a000a56:	d004      	beq.n	1a000a62 <ledOnOff_exseq_main_region_led0_r1+0x1e>
1a000a58:	e007      	b.n	1a000a6a <ledOnOff_exseq_main_region_led0_r1+0x26>
1a000a5a:	6878      	ldr	r0, [r7, #4]
1a000a5c:	f7ff ffa3 	bl	1a0009a6 <ledOnOff_exseq_main_region_led0_r1_encendido>
1a000a60:	e003      	b.n	1a000a6a <ledOnOff_exseq_main_region_led0_r1+0x26>
1a000a62:	6878      	ldr	r0, [r7, #4]
1a000a64:	f7ff ffb0 	bl	1a0009c8 <ledOnOff_exseq_main_region_led0_r1_apagado>
1a000a68:	bf00      	nop
1a000a6a:	bf00      	nop
1a000a6c:	3708      	adds	r7, #8
1a000a6e:	46bd      	mov	sp, r7
1a000a70:	bd80      	pop	{r7, pc}

1a000a72 <ledOnOff_exseq_main_region_led3_r1>:
1a000a72:	b580      	push	{r7, lr}
1a000a74:	b082      	sub	sp, #8
1a000a76:	af00      	add	r7, sp, #0
1a000a78:	6078      	str	r0, [r7, #4]
1a000a7a:	687b      	ldr	r3, [r7, #4]
1a000a7c:	781b      	ldrb	r3, [r3, #0]
1a000a7e:	2b04      	cmp	r3, #4
1a000a80:	d002      	beq.n	1a000a88 <ledOnOff_exseq_main_region_led3_r1+0x16>
1a000a82:	2b05      	cmp	r3, #5
1a000a84:	d004      	beq.n	1a000a90 <ledOnOff_exseq_main_region_led3_r1+0x1e>
1a000a86:	e007      	b.n	1a000a98 <ledOnOff_exseq_main_region_led3_r1+0x26>
1a000a88:	6878      	ldr	r0, [r7, #4]
1a000a8a:	f7ff ffb9 	bl	1a000a00 <ledOnOff_exseq_main_region_led3_r1_encendido>
1a000a8e:	e003      	b.n	1a000a98 <ledOnOff_exseq_main_region_led3_r1+0x26>
1a000a90:	6878      	ldr	r0, [r7, #4]
1a000a92:	f7ff ffc6 	bl	1a000a22 <ledOnOff_exseq_main_region_led3_r1_apagado>
1a000a96:	bf00      	nop
1a000a98:	bf00      	nop
1a000a9a:	3708      	adds	r7, #8
1a000a9c:	46bd      	mov	sp, r7
1a000a9e:	bd80      	pop	{r7, pc}

1a000aa0 <ledOnOff_react_main_region_led0_r1_encendido>:
1a000aa0:	b580      	push	{r7, lr}
1a000aa2:	b082      	sub	sp, #8
1a000aa4:	af00      	add	r7, sp, #0
1a000aa6:	6078      	str	r0, [r7, #4]
1a000aa8:	6878      	ldr	r0, [r7, #4]
1a000aaa:	f7ff fd8c 	bl	1a0005c6 <ledOnOff_check_main_region_led0_tr0_tr0>
1a000aae:	4603      	mov	r3, r0
1a000ab0:	2b00      	cmp	r3, #0
1a000ab2:	d003      	beq.n	1a000abc <ledOnOff_react_main_region_led0_r1_encendido+0x1c>
1a000ab4:	6878      	ldr	r0, [r7, #4]
1a000ab6:	f7ff fde6 	bl	1a000686 <ledOnOff_effect_main_region_led0_tr0>
1a000aba:	e008      	b.n	1a000ace <ledOnOff_react_main_region_led0_r1_encendido+0x2e>
1a000abc:	6878      	ldr	r0, [r7, #4]
1a000abe:	f7ff fd8e 	bl	1a0005de <ledOnOff_check_main_region_led0_r1_encendido_tr0_tr0>
1a000ac2:	4603      	mov	r3, r0
1a000ac4:	2b00      	cmp	r3, #0
1a000ac6:	d002      	beq.n	1a000ace <ledOnOff_react_main_region_led0_r1_encendido+0x2e>
1a000ac8:	6878      	ldr	r0, [r7, #4]
1a000aca:	f7ff fdea 	bl	1a0006a2 <ledOnOff_effect_main_region_led0_r1_encendido_tr0>
1a000ace:	bf00      	nop
1a000ad0:	3708      	adds	r7, #8
1a000ad2:	46bd      	mov	sp, r7
1a000ad4:	bd80      	pop	{r7, pc}

1a000ad6 <ledOnOff_react_main_region_led0_r1_apagado>:
1a000ad6:	b580      	push	{r7, lr}
1a000ad8:	b082      	sub	sp, #8
1a000ada:	af00      	add	r7, sp, #0
1a000adc:	6078      	str	r0, [r7, #4]
1a000ade:	6878      	ldr	r0, [r7, #4]
1a000ae0:	f7ff fd71 	bl	1a0005c6 <ledOnOff_check_main_region_led0_tr0_tr0>
1a000ae4:	4603      	mov	r3, r0
1a000ae6:	2b00      	cmp	r3, #0
1a000ae8:	d003      	beq.n	1a000af2 <ledOnOff_react_main_region_led0_r1_apagado+0x1c>
1a000aea:	6878      	ldr	r0, [r7, #4]
1a000aec:	f7ff fdcb 	bl	1a000686 <ledOnOff_effect_main_region_led0_tr0>
1a000af0:	e008      	b.n	1a000b04 <ledOnOff_react_main_region_led0_r1_apagado+0x2e>
1a000af2:	6878      	ldr	r0, [r7, #4]
1a000af4:	f7ff fd7f 	bl	1a0005f6 <ledOnOff_check_main_region_led0_r1_apagado_tr0_tr0>
1a000af8:	4603      	mov	r3, r0
1a000afa:	2b00      	cmp	r3, #0
1a000afc:	d002      	beq.n	1a000b04 <ledOnOff_react_main_region_led0_r1_apagado+0x2e>
1a000afe:	6878      	ldr	r0, [r7, #4]
1a000b00:	f7ff fddd 	bl	1a0006be <ledOnOff_effect_main_region_led0_r1_apagado_tr0>
1a000b04:	bf00      	nop
1a000b06:	3708      	adds	r7, #8
1a000b08:	46bd      	mov	sp, r7
1a000b0a:	bd80      	pop	{r7, pc}

1a000b0c <ledOnOff_react_main_region_led3_r1_encendido>:
1a000b0c:	b580      	push	{r7, lr}
1a000b0e:	b082      	sub	sp, #8
1a000b10:	af00      	add	r7, sp, #0
1a000b12:	6078      	str	r0, [r7, #4]
1a000b14:	6878      	ldr	r0, [r7, #4]
1a000b16:	f7ff fd86 	bl	1a000626 <ledOnOff_check_main_region_led3_tr0_tr0>
1a000b1a:	4603      	mov	r3, r0
1a000b1c:	2b00      	cmp	r3, #0
1a000b1e:	d003      	beq.n	1a000b28 <ledOnOff_react_main_region_led3_r1_encendido+0x1c>
1a000b20:	6878      	ldr	r0, [r7, #4]
1a000b22:	f7ff fdda 	bl	1a0006da <ledOnOff_effect_main_region_led3_tr0>
1a000b26:	e008      	b.n	1a000b3a <ledOnOff_react_main_region_led3_r1_encendido+0x2e>
1a000b28:	6878      	ldr	r0, [r7, #4]
1a000b2a:	f7ff fd88 	bl	1a00063e <ledOnOff_check_main_region_led3_r1_encendido_tr0_tr0>
1a000b2e:	4603      	mov	r3, r0
1a000b30:	2b00      	cmp	r3, #0
1a000b32:	d002      	beq.n	1a000b3a <ledOnOff_react_main_region_led3_r1_encendido+0x2e>
1a000b34:	6878      	ldr	r0, [r7, #4]
1a000b36:	f7ff fdde 	bl	1a0006f6 <ledOnOff_effect_main_region_led3_r1_encendido_tr0>
1a000b3a:	bf00      	nop
1a000b3c:	3708      	adds	r7, #8
1a000b3e:	46bd      	mov	sp, r7
1a000b40:	bd80      	pop	{r7, pc}

1a000b42 <ledOnOff_react_main_region_led3_r1_apagado>:
1a000b42:	b580      	push	{r7, lr}
1a000b44:	b082      	sub	sp, #8
1a000b46:	af00      	add	r7, sp, #0
1a000b48:	6078      	str	r0, [r7, #4]
1a000b4a:	6878      	ldr	r0, [r7, #4]
1a000b4c:	f7ff fd6b 	bl	1a000626 <ledOnOff_check_main_region_led3_tr0_tr0>
1a000b50:	4603      	mov	r3, r0
1a000b52:	2b00      	cmp	r3, #0
1a000b54:	d003      	beq.n	1a000b5e <ledOnOff_react_main_region_led3_r1_apagado+0x1c>
1a000b56:	6878      	ldr	r0, [r7, #4]
1a000b58:	f7ff fdbf 	bl	1a0006da <ledOnOff_effect_main_region_led3_tr0>
1a000b5c:	e008      	b.n	1a000b70 <ledOnOff_react_main_region_led3_r1_apagado+0x2e>
1a000b5e:	6878      	ldr	r0, [r7, #4]
1a000b60:	f7ff fd79 	bl	1a000656 <ledOnOff_check_main_region_led3_r1_apagado_tr0_tr0>
1a000b64:	4603      	mov	r3, r0
1a000b66:	2b00      	cmp	r3, #0
1a000b68:	d002      	beq.n	1a000b70 <ledOnOff_react_main_region_led3_r1_apagado+0x2e>
1a000b6a:	6878      	ldr	r0, [r7, #4]
1a000b6c:	f7ff fdd1 	bl	1a000712 <ledOnOff_effect_main_region_led3_r1_apagado_tr0>
1a000b70:	bf00      	nop
1a000b72:	3708      	adds	r7, #8
1a000b74:	46bd      	mov	sp, r7
1a000b76:	bd80      	pop	{r7, pc}

1a000b78 <ledOnOff_react_main_region__entry_Default>:
1a000b78:	b580      	push	{r7, lr}
1a000b7a:	b082      	sub	sp, #8
1a000b7c:	af00      	add	r7, sp, #0
1a000b7e:	6078      	str	r0, [r7, #4]
1a000b80:	6878      	ldr	r0, [r7, #4]
1a000b82:	f7ff fe84 	bl	1a00088e <ledOnOff_enseq_main_region_led0_default>
1a000b86:	bf00      	nop
1a000b88:	3708      	adds	r7, #8
1a000b8a:	46bd      	mov	sp, r7
1a000b8c:	bd80      	pop	{r7, pc}

1a000b8e <ledOnOff_react_main_region_led0_r1__entry_Default>:
1a000b8e:	b580      	push	{r7, lr}
1a000b90:	b082      	sub	sp, #8
1a000b92:	af00      	add	r7, sp, #0
1a000b94:	6078      	str	r0, [r7, #4]
1a000b96:	6878      	ldr	r0, [r7, #4]
1a000b98:	f7ff fe87 	bl	1a0008aa <ledOnOff_enseq_main_region_led0_r1_encendido_default>
1a000b9c:	bf00      	nop
1a000b9e:	3708      	adds	r7, #8
1a000ba0:	46bd      	mov	sp, r7
1a000ba2:	bd80      	pop	{r7, pc}

1a000ba4 <ledOnOff_react_main_region_led3_r1__entry_Default>:
1a000ba4:	b580      	push	{r7, lr}
1a000ba6:	b082      	sub	sp, #8
1a000ba8:	af00      	add	r7, sp, #0
1a000baa:	6078      	str	r0, [r7, #4]
1a000bac:	6878      	ldr	r0, [r7, #4]
1a000bae:	f7ff feac 	bl	1a00090a <ledOnOff_enseq_main_region_led3_r1_encendido_default>
1a000bb2:	bf00      	nop
1a000bb4:	3708      	adds	r7, #8
1a000bb6:	46bd      	mov	sp, r7
1a000bb8:	bd80      	pop	{r7, pc}

1a000bba <SetNewTimerTick>:
1a000bba:	b480      	push	{r7}
1a000bbc:	b087      	sub	sp, #28
1a000bbe:	af00      	add	r7, sp, #0
1a000bc0:	60f8      	str	r0, [r7, #12]
1a000bc2:	60b9      	str	r1, [r7, #8]
1a000bc4:	607a      	str	r2, [r7, #4]
1a000bc6:	603b      	str	r3, [r7, #0]
1a000bc8:	2300      	movs	r3, #0
1a000bca:	613b      	str	r3, [r7, #16]
1a000bcc:	2300      	movs	r3, #0
1a000bce:	617b      	str	r3, [r7, #20]
1a000bd0:	e031      	b.n	1a000c36 <SetNewTimerTick+0x7c>
1a000bd2:	697b      	ldr	r3, [r7, #20]
1a000bd4:	011b      	lsls	r3, r3, #4
1a000bd6:	68fa      	ldr	r2, [r7, #12]
1a000bd8:	4413      	add	r3, r2
1a000bda:	681b      	ldr	r3, [r3, #0]
1a000bdc:	2b00      	cmp	r3, #0
1a000bde:	d127      	bne.n	1a000c30 <SetNewTimerTick+0x76>
1a000be0:	697b      	ldr	r3, [r7, #20]
1a000be2:	011b      	lsls	r3, r3, #4
1a000be4:	68fa      	ldr	r2, [r7, #12]
1a000be6:	4413      	add	r3, r2
1a000be8:	683a      	ldr	r2, [r7, #0]
1a000bea:	605a      	str	r2, [r3, #4]
1a000bec:	697b      	ldr	r3, [r7, #20]
1a000bee:	011b      	lsls	r3, r3, #4
1a000bf0:	68fa      	ldr	r2, [r7, #12]
1a000bf2:	4413      	add	r3, r2
1a000bf4:	683a      	ldr	r2, [r7, #0]
1a000bf6:	609a      	str	r2, [r3, #8]
1a000bf8:	697b      	ldr	r3, [r7, #20]
1a000bfa:	011b      	lsls	r3, r3, #4
1a000bfc:	68fa      	ldr	r2, [r7, #12]
1a000bfe:	4413      	add	r3, r2
1a000c00:	687a      	ldr	r2, [r7, #4]
1a000c02:	601a      	str	r2, [r3, #0]
1a000c04:	697b      	ldr	r3, [r7, #20]
1a000c06:	011b      	lsls	r3, r3, #4
1a000c08:	68fa      	ldr	r2, [r7, #12]
1a000c0a:	4413      	add	r3, r2
1a000c0c:	f897 2020 	ldrb.w	r2, [r7, #32]
1a000c10:	731a      	strb	r2, [r3, #12]
1a000c12:	697b      	ldr	r3, [r7, #20]
1a000c14:	011b      	lsls	r3, r3, #4
1a000c16:	68fa      	ldr	r2, [r7, #12]
1a000c18:	4413      	add	r3, r2
1a000c1a:	2201      	movs	r2, #1
1a000c1c:	735a      	strb	r2, [r3, #13]
1a000c1e:	697b      	ldr	r3, [r7, #20]
1a000c20:	011b      	lsls	r3, r3, #4
1a000c22:	68fa      	ldr	r2, [r7, #12]
1a000c24:	4413      	add	r3, r2
1a000c26:	2200      	movs	r2, #0
1a000c28:	739a      	strb	r2, [r3, #14]
1a000c2a:	687b      	ldr	r3, [r7, #4]
1a000c2c:	613b      	str	r3, [r7, #16]
1a000c2e:	e006      	b.n	1a000c3e <SetNewTimerTick+0x84>
1a000c30:	697b      	ldr	r3, [r7, #20]
1a000c32:	3301      	adds	r3, #1
1a000c34:	617b      	str	r3, [r7, #20]
1a000c36:	697a      	ldr	r2, [r7, #20]
1a000c38:	68bb      	ldr	r3, [r7, #8]
1a000c3a:	429a      	cmp	r2, r3
1a000c3c:	d3c9      	bcc.n	1a000bd2 <SetNewTimerTick+0x18>
1a000c3e:	693b      	ldr	r3, [r7, #16]
1a000c40:	4618      	mov	r0, r3
1a000c42:	371c      	adds	r7, #28
1a000c44:	46bd      	mov	sp, r7
1a000c46:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000c4a:	4770      	bx	lr

1a000c4c <UnsetTimerTick>:
1a000c4c:	b480      	push	{r7}
1a000c4e:	b087      	sub	sp, #28
1a000c50:	af00      	add	r7, sp, #0
1a000c52:	60f8      	str	r0, [r7, #12]
1a000c54:	60b9      	str	r1, [r7, #8]
1a000c56:	607a      	str	r2, [r7, #4]
1a000c58:	2300      	movs	r3, #0
1a000c5a:	613b      	str	r3, [r7, #16]
1a000c5c:	2300      	movs	r3, #0
1a000c5e:	617b      	str	r3, [r7, #20]
1a000c60:	e031      	b.n	1a000cc6 <UnsetTimerTick+0x7a>
1a000c62:	697b      	ldr	r3, [r7, #20]
1a000c64:	011b      	lsls	r3, r3, #4
1a000c66:	68fa      	ldr	r2, [r7, #12]
1a000c68:	4413      	add	r3, r2
1a000c6a:	681b      	ldr	r3, [r3, #0]
1a000c6c:	687a      	ldr	r2, [r7, #4]
1a000c6e:	429a      	cmp	r2, r3
1a000c70:	d126      	bne.n	1a000cc0 <UnsetTimerTick+0x74>
1a000c72:	697b      	ldr	r3, [r7, #20]
1a000c74:	011b      	lsls	r3, r3, #4
1a000c76:	68fa      	ldr	r2, [r7, #12]
1a000c78:	4413      	add	r3, r2
1a000c7a:	2200      	movs	r2, #0
1a000c7c:	601a      	str	r2, [r3, #0]
1a000c7e:	697b      	ldr	r3, [r7, #20]
1a000c80:	011b      	lsls	r3, r3, #4
1a000c82:	68fa      	ldr	r2, [r7, #12]
1a000c84:	4413      	add	r3, r2
1a000c86:	2200      	movs	r2, #0
1a000c88:	605a      	str	r2, [r3, #4]
1a000c8a:	697b      	ldr	r3, [r7, #20]
1a000c8c:	011b      	lsls	r3, r3, #4
1a000c8e:	68fa      	ldr	r2, [r7, #12]
1a000c90:	4413      	add	r3, r2
1a000c92:	2200      	movs	r2, #0
1a000c94:	609a      	str	r2, [r3, #8]
1a000c96:	697b      	ldr	r3, [r7, #20]
1a000c98:	011b      	lsls	r3, r3, #4
1a000c9a:	68fa      	ldr	r2, [r7, #12]
1a000c9c:	4413      	add	r3, r2
1a000c9e:	2200      	movs	r2, #0
1a000ca0:	731a      	strb	r2, [r3, #12]
1a000ca2:	697b      	ldr	r3, [r7, #20]
1a000ca4:	011b      	lsls	r3, r3, #4
1a000ca6:	68fa      	ldr	r2, [r7, #12]
1a000ca8:	4413      	add	r3, r2
1a000caa:	2200      	movs	r2, #0
1a000cac:	735a      	strb	r2, [r3, #13]
1a000cae:	697b      	ldr	r3, [r7, #20]
1a000cb0:	011b      	lsls	r3, r3, #4
1a000cb2:	68fa      	ldr	r2, [r7, #12]
1a000cb4:	4413      	add	r3, r2
1a000cb6:	2200      	movs	r2, #0
1a000cb8:	739a      	strb	r2, [r3, #14]
1a000cba:	687b      	ldr	r3, [r7, #4]
1a000cbc:	613b      	str	r3, [r7, #16]
1a000cbe:	e006      	b.n	1a000cce <UnsetTimerTick+0x82>
1a000cc0:	697b      	ldr	r3, [r7, #20]
1a000cc2:	3301      	adds	r3, #1
1a000cc4:	617b      	str	r3, [r7, #20]
1a000cc6:	697a      	ldr	r2, [r7, #20]
1a000cc8:	68bb      	ldr	r3, [r7, #8]
1a000cca:	429a      	cmp	r2, r3
1a000ccc:	d3c9      	bcc.n	1a000c62 <UnsetTimerTick+0x16>
1a000cce:	693b      	ldr	r3, [r7, #16]
1a000cd0:	4618      	mov	r0, r3
1a000cd2:	371c      	adds	r7, #28
1a000cd4:	46bd      	mov	sp, r7
1a000cd6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000cda:	4770      	bx	lr

1a000cdc <IsPendEvent>:
1a000cdc:	b480      	push	{r7}
1a000cde:	b087      	sub	sp, #28
1a000ce0:	af00      	add	r7, sp, #0
1a000ce2:	60f8      	str	r0, [r7, #12]
1a000ce4:	60b9      	str	r1, [r7, #8]
1a000ce6:	607a      	str	r2, [r7, #4]
1a000ce8:	2300      	movs	r3, #0
1a000cea:	74fb      	strb	r3, [r7, #19]
1a000cec:	2300      	movs	r3, #0
1a000cee:	617b      	str	r3, [r7, #20]
1a000cf0:	e014      	b.n	1a000d1c <IsPendEvent+0x40>
1a000cf2:	697b      	ldr	r3, [r7, #20]
1a000cf4:	011b      	lsls	r3, r3, #4
1a000cf6:	68fa      	ldr	r2, [r7, #12]
1a000cf8:	4413      	add	r3, r2
1a000cfa:	681b      	ldr	r3, [r3, #0]
1a000cfc:	687a      	ldr	r2, [r7, #4]
1a000cfe:	429a      	cmp	r2, r3
1a000d00:	d109      	bne.n	1a000d16 <IsPendEvent+0x3a>
1a000d02:	697b      	ldr	r3, [r7, #20]
1a000d04:	011b      	lsls	r3, r3, #4
1a000d06:	68fa      	ldr	r2, [r7, #12]
1a000d08:	4413      	add	r3, r2
1a000d0a:	7b9b      	ldrb	r3, [r3, #14]
1a000d0c:	2b00      	cmp	r3, #0
1a000d0e:	d002      	beq.n	1a000d16 <IsPendEvent+0x3a>
1a000d10:	2301      	movs	r3, #1
1a000d12:	74fb      	strb	r3, [r7, #19]
1a000d14:	e006      	b.n	1a000d24 <IsPendEvent+0x48>
1a000d16:	697b      	ldr	r3, [r7, #20]
1a000d18:	3301      	adds	r3, #1
1a000d1a:	617b      	str	r3, [r7, #20]
1a000d1c:	697b      	ldr	r3, [r7, #20]
1a000d1e:	68ba      	ldr	r2, [r7, #8]
1a000d20:	429a      	cmp	r2, r3
1a000d22:	d8e6      	bhi.n	1a000cf2 <IsPendEvent+0x16>
1a000d24:	7cfb      	ldrb	r3, [r7, #19]
1a000d26:	4618      	mov	r0, r3
1a000d28:	371c      	adds	r7, #28
1a000d2a:	46bd      	mov	sp, r7
1a000d2c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d30:	4770      	bx	lr

1a000d32 <MarkAsAttEvent>:
1a000d32:	b480      	push	{r7}
1a000d34:	b087      	sub	sp, #28
1a000d36:	af00      	add	r7, sp, #0
1a000d38:	60f8      	str	r0, [r7, #12]
1a000d3a:	60b9      	str	r1, [r7, #8]
1a000d3c:	607a      	str	r2, [r7, #4]
1a000d3e:	2300      	movs	r3, #0
1a000d40:	617b      	str	r3, [r7, #20]
1a000d42:	e011      	b.n	1a000d68 <MarkAsAttEvent+0x36>
1a000d44:	697b      	ldr	r3, [r7, #20]
1a000d46:	011b      	lsls	r3, r3, #4
1a000d48:	68fa      	ldr	r2, [r7, #12]
1a000d4a:	4413      	add	r3, r2
1a000d4c:	681b      	ldr	r3, [r3, #0]
1a000d4e:	687a      	ldr	r2, [r7, #4]
1a000d50:	429a      	cmp	r2, r3
1a000d52:	d106      	bne.n	1a000d62 <MarkAsAttEvent+0x30>
1a000d54:	697b      	ldr	r3, [r7, #20]
1a000d56:	011b      	lsls	r3, r3, #4
1a000d58:	68fa      	ldr	r2, [r7, #12]
1a000d5a:	4413      	add	r3, r2
1a000d5c:	2200      	movs	r2, #0
1a000d5e:	739a      	strb	r2, [r3, #14]
1a000d60:	e006      	b.n	1a000d70 <MarkAsAttEvent+0x3e>
1a000d62:	697b      	ldr	r3, [r7, #20]
1a000d64:	3301      	adds	r3, #1
1a000d66:	617b      	str	r3, [r7, #20]
1a000d68:	697a      	ldr	r2, [r7, #20]
1a000d6a:	68bb      	ldr	r3, [r7, #8]
1a000d6c:	429a      	cmp	r2, r3
1a000d6e:	d3e9      	bcc.n	1a000d44 <MarkAsAttEvent+0x12>
1a000d70:	bf00      	nop
1a000d72:	371c      	adds	r7, #28
1a000d74:	46bd      	mov	sp, r7
1a000d76:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000d7a:	4770      	bx	lr

1a000d7c <UpdateTimers>:
1a000d7c:	b480      	push	{r7}
1a000d7e:	b085      	sub	sp, #20
1a000d80:	af00      	add	r7, sp, #0
1a000d82:	6078      	str	r0, [r7, #4]
1a000d84:	6039      	str	r1, [r7, #0]
1a000d86:	2300      	movs	r3, #0
1a000d88:	60fb      	str	r3, [r7, #12]
1a000d8a:	e03c      	b.n	1a000e06 <UpdateTimers+0x8a>
1a000d8c:	68fb      	ldr	r3, [r7, #12]
1a000d8e:	011b      	lsls	r3, r3, #4
1a000d90:	687a      	ldr	r2, [r7, #4]
1a000d92:	4413      	add	r3, r2
1a000d94:	7b5b      	ldrb	r3, [r3, #13]
1a000d96:	2b00      	cmp	r3, #0
1a000d98:	d032      	beq.n	1a000e00 <UpdateTimers+0x84>
1a000d9a:	68fb      	ldr	r3, [r7, #12]
1a000d9c:	011b      	lsls	r3, r3, #4
1a000d9e:	687a      	ldr	r2, [r7, #4]
1a000da0:	4413      	add	r3, r2
1a000da2:	689b      	ldr	r3, [r3, #8]
1a000da4:	2b00      	cmp	r3, #0
1a000da6:	d006      	beq.n	1a000db6 <UpdateTimers+0x3a>
1a000da8:	68fb      	ldr	r3, [r7, #12]
1a000daa:	011b      	lsls	r3, r3, #4
1a000dac:	687a      	ldr	r2, [r7, #4]
1a000dae:	4413      	add	r3, r2
1a000db0:	689a      	ldr	r2, [r3, #8]
1a000db2:	3a01      	subs	r2, #1
1a000db4:	609a      	str	r2, [r3, #8]
1a000db6:	68fb      	ldr	r3, [r7, #12]
1a000db8:	011b      	lsls	r3, r3, #4
1a000dba:	687a      	ldr	r2, [r7, #4]
1a000dbc:	4413      	add	r3, r2
1a000dbe:	689b      	ldr	r3, [r3, #8]
1a000dc0:	2b00      	cmp	r3, #0
1a000dc2:	d11d      	bne.n	1a000e00 <UpdateTimers+0x84>
1a000dc4:	68fb      	ldr	r3, [r7, #12]
1a000dc6:	011b      	lsls	r3, r3, #4
1a000dc8:	687a      	ldr	r2, [r7, #4]
1a000dca:	4413      	add	r3, r2
1a000dcc:	7b1b      	ldrb	r3, [r3, #12]
1a000dce:	2b00      	cmp	r3, #0
1a000dd0:	d00a      	beq.n	1a000de8 <UpdateTimers+0x6c>
1a000dd2:	68fb      	ldr	r3, [r7, #12]
1a000dd4:	011b      	lsls	r3, r3, #4
1a000dd6:	687a      	ldr	r2, [r7, #4]
1a000dd8:	441a      	add	r2, r3
1a000dda:	68fb      	ldr	r3, [r7, #12]
1a000ddc:	011b      	lsls	r3, r3, #4
1a000dde:	6879      	ldr	r1, [r7, #4]
1a000de0:	440b      	add	r3, r1
1a000de2:	6852      	ldr	r2, [r2, #4]
1a000de4:	609a      	str	r2, [r3, #8]
1a000de6:	e005      	b.n	1a000df4 <UpdateTimers+0x78>
1a000de8:	68fb      	ldr	r3, [r7, #12]
1a000dea:	011b      	lsls	r3, r3, #4
1a000dec:	687a      	ldr	r2, [r7, #4]
1a000dee:	4413      	add	r3, r2
1a000df0:	2200      	movs	r2, #0
1a000df2:	735a      	strb	r2, [r3, #13]
1a000df4:	68fb      	ldr	r3, [r7, #12]
1a000df6:	011b      	lsls	r3, r3, #4
1a000df8:	687a      	ldr	r2, [r7, #4]
1a000dfa:	4413      	add	r3, r2
1a000dfc:	2201      	movs	r2, #1
1a000dfe:	739a      	strb	r2, [r3, #14]
1a000e00:	68fb      	ldr	r3, [r7, #12]
1a000e02:	3301      	adds	r3, #1
1a000e04:	60fb      	str	r3, [r7, #12]
1a000e06:	68fa      	ldr	r2, [r7, #12]
1a000e08:	683b      	ldr	r3, [r7, #0]
1a000e0a:	429a      	cmp	r2, r3
1a000e0c:	d3be      	bcc.n	1a000d8c <UpdateTimers+0x10>
1a000e0e:	bf00      	nop
1a000e10:	3714      	adds	r7, #20
1a000e12:	46bd      	mov	sp, r7
1a000e14:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000e18:	4770      	bx	lr
1a000e1a:	Address 0x000000001a000e1a is out of bounds.


1a000e1c <ledOnOff_setTimer>:
1a000e1c:	b580      	push	{r7, lr}
1a000e1e:	b086      	sub	sp, #24
1a000e20:	af02      	add	r7, sp, #8
1a000e22:	60f8      	str	r0, [r7, #12]
1a000e24:	60b9      	str	r1, [r7, #8]
1a000e26:	607a      	str	r2, [r7, #4]
1a000e28:	70fb      	strb	r3, [r7, #3]
1a000e2a:	687a      	ldr	r2, [r7, #4]
1a000e2c:	78fb      	ldrb	r3, [r7, #3]
1a000e2e:	9300      	str	r3, [sp, #0]
1a000e30:	4613      	mov	r3, r2
1a000e32:	68ba      	ldr	r2, [r7, #8]
1a000e34:	2104      	movs	r1, #4
1a000e36:	4803      	ldr	r0, [pc, #12]	; (1a000e44 <ledOnOff_setTimer+0x28>)
1a000e38:	f7ff febf 	bl	1a000bba <SetNewTimerTick>
1a000e3c:	bf00      	nop
1a000e3e:	3710      	adds	r7, #16
1a000e40:	46bd      	mov	sp, r7
1a000e42:	bd80      	pop	{r7, pc}
1a000e44:	10000000 	.word	0x10000000

1a000e48 <ledOnOff_unsetTimer>:
1a000e48:	b580      	push	{r7, lr}
1a000e4a:	b082      	sub	sp, #8
1a000e4c:	af00      	add	r7, sp, #0
1a000e4e:	6078      	str	r0, [r7, #4]
1a000e50:	6039      	str	r1, [r7, #0]
1a000e52:	683a      	ldr	r2, [r7, #0]
1a000e54:	2104      	movs	r1, #4
1a000e56:	4803      	ldr	r0, [pc, #12]	; (1a000e64 <ledOnOff_unsetTimer+0x1c>)
1a000e58:	f7ff fef8 	bl	1a000c4c <UnsetTimerTick>
1a000e5c:	bf00      	nop
1a000e5e:	3708      	adds	r7, #8
1a000e60:	46bd      	mov	sp, r7
1a000e62:	bd80      	pop	{r7, pc}
1a000e64:	10000000 	.word	0x10000000

1a000e68 <ledOnOffIface_ledOn>:
1a000e68:	b580      	push	{r7, lr}
1a000e6a:	b082      	sub	sp, #8
1a000e6c:	af00      	add	r7, sp, #0
1a000e6e:	6078      	str	r0, [r7, #4]
1a000e70:	6039      	str	r1, [r7, #0]
1a000e72:	683b      	ldr	r3, [r7, #0]
1a000e74:	b2db      	uxtb	r3, r3
1a000e76:	4618      	mov	r0, r3
1a000e78:	f000 fb48 	bl	1a00150c <ledOn>
1a000e7c:	bf00      	nop
1a000e7e:	3708      	adds	r7, #8
1a000e80:	46bd      	mov	sp, r7
1a000e82:	bd80      	pop	{r7, pc}

1a000e84 <ledOnOffIface_ledOff>:
1a000e84:	b580      	push	{r7, lr}
1a000e86:	b082      	sub	sp, #8
1a000e88:	af00      	add	r7, sp, #0
1a000e8a:	6078      	str	r0, [r7, #4]
1a000e8c:	6039      	str	r1, [r7, #0]
1a000e8e:	683b      	ldr	r3, [r7, #0]
1a000e90:	b2db      	uxtb	r3, r3
1a000e92:	4618      	mov	r0, r3
1a000e94:	f000 fb5e 	bl	1a001554 <ledOff>
1a000e98:	bf00      	nop
1a000e9a:	3708      	adds	r7, #8
1a000e9c:	46bd      	mov	sp, r7
1a000e9e:	bd80      	pop	{r7, pc}

1a000ea0 <main>:
1a000ea0:	b580      	push	{r7, lr}
1a000ea2:	b086      	sub	sp, #24
1a000ea4:	af00      	add	r7, sp, #0
1a000ea6:	f000 f9ff 	bl	1a0012a8 <sysInit>
1a000eaa:	463b      	mov	r3, r7
1a000eac:	4618      	mov	r0, r3
1a000eae:	f7ff fad1 	bl	1a000454 <ledOnOff_init>
1a000eb2:	463b      	mov	r3, r7
1a000eb4:	4618      	mov	r0, r3
1a000eb6:	f7ff faef 	bl	1a000498 <ledOnOff_enter>
1a000eba:	bf30      	wfi
1a000ebc:	f000 fb7a 	bl	1a0015b4 <getSysTickEv>
1a000ec0:	4603      	mov	r3, r0
1a000ec2:	2b00      	cmp	r3, #0
1a000ec4:	d02f      	beq.n	1a000f26 <main+0x86>
1a000ec6:	f000 fb81 	bl	1a0015cc <rstSysTickEv>
1a000eca:	2104      	movs	r1, #4
1a000ecc:	481e      	ldr	r0, [pc, #120]	; (1a000f48 <main+0xa8>)
1a000ece:	f7ff ff55 	bl	1a000d7c <UpdateTimers>
1a000ed2:	2300      	movs	r3, #0
1a000ed4:	617b      	str	r3, [r7, #20]
1a000ed6:	e023      	b.n	1a000f20 <main+0x80>
1a000ed8:	4a1b      	ldr	r2, [pc, #108]	; (1a000f48 <main+0xa8>)
1a000eda:	697b      	ldr	r3, [r7, #20]
1a000edc:	011b      	lsls	r3, r3, #4
1a000ede:	4413      	add	r3, r2
1a000ee0:	681b      	ldr	r3, [r3, #0]
1a000ee2:	461a      	mov	r2, r3
1a000ee4:	2104      	movs	r1, #4
1a000ee6:	4818      	ldr	r0, [pc, #96]	; (1a000f48 <main+0xa8>)
1a000ee8:	f7ff fef8 	bl	1a000cdc <IsPendEvent>
1a000eec:	4603      	mov	r3, r0
1a000eee:	2b00      	cmp	r3, #0
1a000ef0:	d013      	beq.n	1a000f1a <main+0x7a>
1a000ef2:	4a15      	ldr	r2, [pc, #84]	; (1a000f48 <main+0xa8>)
1a000ef4:	697b      	ldr	r3, [r7, #20]
1a000ef6:	011b      	lsls	r3, r3, #4
1a000ef8:	4413      	add	r3, r2
1a000efa:	681a      	ldr	r2, [r3, #0]
1a000efc:	463b      	mov	r3, r7
1a000efe:	4611      	mov	r1, r2
1a000f00:	4618      	mov	r0, r3
1a000f02:	f7ff fb39 	bl	1a000578 <ledOnOff_raiseTimeEvent>
1a000f06:	4a10      	ldr	r2, [pc, #64]	; (1a000f48 <main+0xa8>)
1a000f08:	697b      	ldr	r3, [r7, #20]
1a000f0a:	011b      	lsls	r3, r3, #4
1a000f0c:	4413      	add	r3, r2
1a000f0e:	681b      	ldr	r3, [r3, #0]
1a000f10:	461a      	mov	r2, r3
1a000f12:	2104      	movs	r1, #4
1a000f14:	480c      	ldr	r0, [pc, #48]	; (1a000f48 <main+0xa8>)
1a000f16:	f7ff ff0c 	bl	1a000d32 <MarkAsAttEvent>
1a000f1a:	697b      	ldr	r3, [r7, #20]
1a000f1c:	3301      	adds	r3, #1
1a000f1e:	617b      	str	r3, [r7, #20]
1a000f20:	697b      	ldr	r3, [r7, #20]
1a000f22:	2b03      	cmp	r3, #3
1a000f24:	d9d8      	bls.n	1a000ed8 <main+0x38>
1a000f26:	f000 fb9d 	bl	1a001664 <getKeyPressed>
1a000f2a:	4603      	mov	r3, r0
1a000f2c:	2b00      	cmp	r3, #0
1a000f2e:	d005      	beq.n	1a000f3c <main+0x9c>
1a000f30:	463b      	mov	r3, r7
1a000f32:	4618      	mov	r0, r3
1a000f34:	f7ff fb3a 	bl	1a0005ac <ledOnOffIface_raise_keyPress>
1a000f38:	f000 fba0 	bl	1a00167c <rstKeyPressed>
1a000f3c:	463b      	mov	r3, r7
1a000f3e:	4618      	mov	r0, r3
1a000f40:	f7ff fad8 	bl	1a0004f4 <ledOnOff_runCycle>
1a000f44:	e7b9      	b.n	1a000eba <main+0x1a>
1a000f46:	bf00      	nop
1a000f48:	10000000 	.word	0x10000000

1a000f4c <NVIC_EnableIRQ>:
1a000f4c:	b480      	push	{r7}
1a000f4e:	b083      	sub	sp, #12
1a000f50:	af00      	add	r7, sp, #0
1a000f52:	4603      	mov	r3, r0
1a000f54:	71fb      	strb	r3, [r7, #7]
1a000f56:	79fb      	ldrb	r3, [r7, #7]
1a000f58:	f003 031f 	and.w	r3, r3, #31
1a000f5c:	2201      	movs	r2, #1
1a000f5e:	fa02 f103 	lsl.w	r1, r2, r3
1a000f62:	4a06      	ldr	r2, [pc, #24]	; (1a000f7c <NVIC_EnableIRQ+0x30>)
1a000f64:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000f68:	095b      	lsrs	r3, r3, #5
1a000f6a:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000f6e:	bf00      	nop
1a000f70:	370c      	adds	r7, #12
1a000f72:	46bd      	mov	sp, r7
1a000f74:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000f78:	4770      	bx	lr
1a000f7a:	bf00      	nop
1a000f7c:	e000e100 	.word	0xe000e100

1a000f80 <NVIC_ClearPendingIRQ>:
1a000f80:	b480      	push	{r7}
1a000f82:	b083      	sub	sp, #12
1a000f84:	af00      	add	r7, sp, #0
1a000f86:	4603      	mov	r3, r0
1a000f88:	71fb      	strb	r3, [r7, #7]
1a000f8a:	79fb      	ldrb	r3, [r7, #7]
1a000f8c:	f003 031f 	and.w	r3, r3, #31
1a000f90:	2201      	movs	r2, #1
1a000f92:	fa02 f103 	lsl.w	r1, r2, r3
1a000f96:	4a06      	ldr	r2, [pc, #24]	; (1a000fb0 <NVIC_ClearPendingIRQ+0x30>)
1a000f98:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000f9c:	095b      	lsrs	r3, r3, #5
1a000f9e:	3360      	adds	r3, #96	; 0x60
1a000fa0:	f842 1023 	str.w	r1, [r2, r3, lsl #2]
1a000fa4:	bf00      	nop
1a000fa6:	370c      	adds	r7, #12
1a000fa8:	46bd      	mov	sp, r7
1a000faa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000fae:	4770      	bx	lr
1a000fb0:	e000e100 	.word	0xe000e100

1a000fb4 <NVIC_SetPriority>:
1a000fb4:	b480      	push	{r7}
1a000fb6:	b083      	sub	sp, #12
1a000fb8:	af00      	add	r7, sp, #0
1a000fba:	4603      	mov	r3, r0
1a000fbc:	6039      	str	r1, [r7, #0]
1a000fbe:	71fb      	strb	r3, [r7, #7]
1a000fc0:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000fc4:	2b00      	cmp	r3, #0
1a000fc6:	da0b      	bge.n	1a000fe0 <NVIC_SetPriority+0x2c>
1a000fc8:	683b      	ldr	r3, [r7, #0]
1a000fca:	b2da      	uxtb	r2, r3
1a000fcc:	490c      	ldr	r1, [pc, #48]	; (1a001000 <NVIC_SetPriority+0x4c>)
1a000fce:	79fb      	ldrb	r3, [r7, #7]
1a000fd0:	f003 030f 	and.w	r3, r3, #15
1a000fd4:	3b04      	subs	r3, #4
1a000fd6:	0152      	lsls	r2, r2, #5
1a000fd8:	b2d2      	uxtb	r2, r2
1a000fda:	440b      	add	r3, r1
1a000fdc:	761a      	strb	r2, [r3, #24]
1a000fde:	e009      	b.n	1a000ff4 <NVIC_SetPriority+0x40>
1a000fe0:	683b      	ldr	r3, [r7, #0]
1a000fe2:	b2da      	uxtb	r2, r3
1a000fe4:	4907      	ldr	r1, [pc, #28]	; (1a001004 <NVIC_SetPriority+0x50>)
1a000fe6:	f997 3007 	ldrsb.w	r3, [r7, #7]
1a000fea:	0152      	lsls	r2, r2, #5
1a000fec:	b2d2      	uxtb	r2, r2
1a000fee:	440b      	add	r3, r1
1a000ff0:	f883 2300 	strb.w	r2, [r3, #768]	; 0x300
1a000ff4:	bf00      	nop
1a000ff6:	370c      	adds	r7, #12
1a000ff8:	46bd      	mov	sp, r7
1a000ffa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a000ffe:	4770      	bx	lr
1a001000:	e000ed00 	.word	0xe000ed00
1a001004:	e000e100 	.word	0xe000e100

1a001008 <SysTick_Config>:
1a001008:	b580      	push	{r7, lr}
1a00100a:	b082      	sub	sp, #8
1a00100c:	af00      	add	r7, sp, #0
1a00100e:	6078      	str	r0, [r7, #4]
1a001010:	687b      	ldr	r3, [r7, #4]
1a001012:	3b01      	subs	r3, #1
1a001014:	f1b3 7f80 	cmp.w	r3, #16777216	; 0x1000000
1a001018:	d301      	bcc.n	1a00101e <SysTick_Config+0x16>
1a00101a:	2301      	movs	r3, #1
1a00101c:	e00f      	b.n	1a00103e <SysTick_Config+0x36>
1a00101e:	4a0a      	ldr	r2, [pc, #40]	; (1a001048 <SysTick_Config+0x40>)
1a001020:	687b      	ldr	r3, [r7, #4]
1a001022:	3b01      	subs	r3, #1
1a001024:	6053      	str	r3, [r2, #4]
1a001026:	2107      	movs	r1, #7
1a001028:	f04f 30ff 	mov.w	r0, #4294967295	; 0xffffffff
1a00102c:	f7ff ffc2 	bl	1a000fb4 <NVIC_SetPriority>
1a001030:	4b05      	ldr	r3, [pc, #20]	; (1a001048 <SysTick_Config+0x40>)
1a001032:	2200      	movs	r2, #0
1a001034:	609a      	str	r2, [r3, #8]
1a001036:	4b04      	ldr	r3, [pc, #16]	; (1a001048 <SysTick_Config+0x40>)
1a001038:	2207      	movs	r2, #7
1a00103a:	601a      	str	r2, [r3, #0]
1a00103c:	2300      	movs	r3, #0
1a00103e:	4618      	mov	r0, r3
1a001040:	3708      	adds	r7, #8
1a001042:	46bd      	mov	sp, r7
1a001044:	bd80      	pop	{r7, pc}
1a001046:	bf00      	nop
1a001048:	e000e010 	.word	0xe000e010

1a00104c <Chip_SCU_PinMuxSet>:
1a00104c:	b480      	push	{r7}
1a00104e:	b083      	sub	sp, #12
1a001050:	af00      	add	r7, sp, #0
1a001052:	4603      	mov	r3, r0
1a001054:	71fb      	strb	r3, [r7, #7]
1a001056:	460b      	mov	r3, r1
1a001058:	71bb      	strb	r3, [r7, #6]
1a00105a:	4613      	mov	r3, r2
1a00105c:	80bb      	strh	r3, [r7, #4]
1a00105e:	4807      	ldr	r0, [pc, #28]	; (1a00107c <Chip_SCU_PinMuxSet+0x30>)
1a001060:	79f9      	ldrb	r1, [r7, #7]
1a001062:	79bb      	ldrb	r3, [r7, #6]
1a001064:	88ba      	ldrh	r2, [r7, #4]
1a001066:	0149      	lsls	r1, r1, #5
1a001068:	440b      	add	r3, r1
1a00106a:	f840 2023 	str.w	r2, [r0, r3, lsl #2]
1a00106e:	bf00      	nop
1a001070:	370c      	adds	r7, #12
1a001072:	46bd      	mov	sp, r7
1a001074:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001078:	4770      	bx	lr
1a00107a:	bf00      	nop
1a00107c:	40086000 	.word	0x40086000

1a001080 <Chip_SCU_GPIOIntPinSel>:
1a001080:	b480      	push	{r7}
1a001082:	b085      	sub	sp, #20
1a001084:	af00      	add	r7, sp, #0
1a001086:	4603      	mov	r3, r0
1a001088:	71fb      	strb	r3, [r7, #7]
1a00108a:	460b      	mov	r3, r1
1a00108c:	71bb      	strb	r3, [r7, #6]
1a00108e:	4613      	mov	r3, r2
1a001090:	717b      	strb	r3, [r7, #5]
1a001092:	79fb      	ldrb	r3, [r7, #7]
1a001094:	00db      	lsls	r3, r3, #3
1a001096:	f003 0318 	and.w	r3, r3, #24
1a00109a:	60fb      	str	r3, [r7, #12]
1a00109c:	79bb      	ldrb	r3, [r7, #6]
1a00109e:	015b      	lsls	r3, r3, #5
1a0010a0:	b2da      	uxtb	r2, r3
1a0010a2:	797b      	ldrb	r3, [r7, #5]
1a0010a4:	f003 031f 	and.w	r3, r3, #31
1a0010a8:	431a      	orrs	r2, r3
1a0010aa:	68fb      	ldr	r3, [r7, #12]
1a0010ac:	fa02 f303 	lsl.w	r3, r2, r3
1a0010b0:	60bb      	str	r3, [r7, #8]
1a0010b2:	4a0f      	ldr	r2, [pc, #60]	; (1a0010f0 <Chip_SCU_GPIOIntPinSel+0x70>)
1a0010b4:	79fb      	ldrb	r3, [r7, #7]
1a0010b6:	089b      	lsrs	r3, r3, #2
1a0010b8:	b2db      	uxtb	r3, r3
1a0010ba:	f503 7360 	add.w	r3, r3, #896	; 0x380
1a0010be:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a0010c2:	21ff      	movs	r1, #255	; 0xff
1a0010c4:	68fa      	ldr	r2, [r7, #12]
1a0010c6:	fa01 f202 	lsl.w	r2, r1, r2
1a0010ca:	43d2      	mvns	r2, r2
1a0010cc:	401a      	ands	r2, r3
1a0010ce:	4908      	ldr	r1, [pc, #32]	; (1a0010f0 <Chip_SCU_GPIOIntPinSel+0x70>)
1a0010d0:	79fb      	ldrb	r3, [r7, #7]
1a0010d2:	089b      	lsrs	r3, r3, #2
1a0010d4:	b2db      	uxtb	r3, r3
1a0010d6:	4618      	mov	r0, r3
1a0010d8:	68bb      	ldr	r3, [r7, #8]
1a0010da:	431a      	orrs	r2, r3
1a0010dc:	f500 7360 	add.w	r3, r0, #896	; 0x380
1a0010e0:	f841 2023 	str.w	r2, [r1, r3, lsl #2]
1a0010e4:	bf00      	nop
1a0010e6:	3714      	adds	r7, #20
1a0010e8:	46bd      	mov	sp, r7
1a0010ea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0010ee:	4770      	bx	lr
1a0010f0:	40086000 	.word	0x40086000

1a0010f4 <Chip_GPIO_SetPinDIROutput>:
1a0010f4:	b480      	push	{r7}
1a0010f6:	b083      	sub	sp, #12
1a0010f8:	af00      	add	r7, sp, #0
1a0010fa:	6078      	str	r0, [r7, #4]
1a0010fc:	460b      	mov	r3, r1
1a0010fe:	70fb      	strb	r3, [r7, #3]
1a001100:	4613      	mov	r3, r2
1a001102:	70bb      	strb	r3, [r7, #2]
1a001104:	78fa      	ldrb	r2, [r7, #3]
1a001106:	687b      	ldr	r3, [r7, #4]
1a001108:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a00110c:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a001110:	78bb      	ldrb	r3, [r7, #2]
1a001112:	2201      	movs	r2, #1
1a001114:	fa02 f303 	lsl.w	r3, r2, r3
1a001118:	78fa      	ldrb	r2, [r7, #3]
1a00111a:	4319      	orrs	r1, r3
1a00111c:	687b      	ldr	r3, [r7, #4]
1a00111e:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a001122:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a001126:	bf00      	nop
1a001128:	370c      	adds	r7, #12
1a00112a:	46bd      	mov	sp, r7
1a00112c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001130:	4770      	bx	lr

1a001132 <Chip_GPIO_SetPinDIRInput>:
1a001132:	b480      	push	{r7}
1a001134:	b083      	sub	sp, #12
1a001136:	af00      	add	r7, sp, #0
1a001138:	6078      	str	r0, [r7, #4]
1a00113a:	460b      	mov	r3, r1
1a00113c:	70fb      	strb	r3, [r7, #3]
1a00113e:	4613      	mov	r3, r2
1a001140:	70bb      	strb	r3, [r7, #2]
1a001142:	78fa      	ldrb	r2, [r7, #3]
1a001144:	687b      	ldr	r3, [r7, #4]
1a001146:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a00114a:	f853 1022 	ldr.w	r1, [r3, r2, lsl #2]
1a00114e:	78bb      	ldrb	r3, [r7, #2]
1a001150:	2201      	movs	r2, #1
1a001152:	fa02 f303 	lsl.w	r3, r2, r3
1a001156:	43db      	mvns	r3, r3
1a001158:	78fa      	ldrb	r2, [r7, #3]
1a00115a:	4019      	ands	r1, r3
1a00115c:	687b      	ldr	r3, [r7, #4]
1a00115e:	f502 6200 	add.w	r2, r2, #2048	; 0x800
1a001162:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a001166:	bf00      	nop
1a001168:	370c      	adds	r7, #12
1a00116a:	46bd      	mov	sp, r7
1a00116c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001170:	4770      	bx	lr

1a001172 <Chip_GPIO_SetPinOutHigh>:
1a001172:	b480      	push	{r7}
1a001174:	b083      	sub	sp, #12
1a001176:	af00      	add	r7, sp, #0
1a001178:	6078      	str	r0, [r7, #4]
1a00117a:	460b      	mov	r3, r1
1a00117c:	70fb      	strb	r3, [r7, #3]
1a00117e:	4613      	mov	r3, r2
1a001180:	70bb      	strb	r3, [r7, #2]
1a001182:	78bb      	ldrb	r3, [r7, #2]
1a001184:	2201      	movs	r2, #1
1a001186:	fa02 f303 	lsl.w	r3, r2, r3
1a00118a:	78fa      	ldrb	r2, [r7, #3]
1a00118c:	4619      	mov	r1, r3
1a00118e:	687b      	ldr	r3, [r7, #4]
1a001190:	f502 6208 	add.w	r2, r2, #2176	; 0x880
1a001194:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a001198:	bf00      	nop
1a00119a:	370c      	adds	r7, #12
1a00119c:	46bd      	mov	sp, r7
1a00119e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011a2:	4770      	bx	lr

1a0011a4 <Chip_GPIO_SetPinOutLow>:
1a0011a4:	b480      	push	{r7}
1a0011a6:	b083      	sub	sp, #12
1a0011a8:	af00      	add	r7, sp, #0
1a0011aa:	6078      	str	r0, [r7, #4]
1a0011ac:	460b      	mov	r3, r1
1a0011ae:	70fb      	strb	r3, [r7, #3]
1a0011b0:	4613      	mov	r3, r2
1a0011b2:	70bb      	strb	r3, [r7, #2]
1a0011b4:	78bb      	ldrb	r3, [r7, #2]
1a0011b6:	2201      	movs	r2, #1
1a0011b8:	fa02 f303 	lsl.w	r3, r2, r3
1a0011bc:	78fa      	ldrb	r2, [r7, #3]
1a0011be:	4619      	mov	r1, r3
1a0011c0:	687b      	ldr	r3, [r7, #4]
1a0011c2:	f502 620a 	add.w	r2, r2, #2208	; 0x8a0
1a0011c6:	f843 1022 	str.w	r1, [r3, r2, lsl #2]
1a0011ca:	bf00      	nop
1a0011cc:	370c      	adds	r7, #12
1a0011ce:	46bd      	mov	sp, r7
1a0011d0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011d4:	4770      	bx	lr

1a0011d6 <Chip_PININT_SetPinModeEdge>:
1a0011d6:	b480      	push	{r7}
1a0011d8:	b083      	sub	sp, #12
1a0011da:	af00      	add	r7, sp, #0
1a0011dc:	6078      	str	r0, [r7, #4]
1a0011de:	6039      	str	r1, [r7, #0]
1a0011e0:	687b      	ldr	r3, [r7, #4]
1a0011e2:	681a      	ldr	r2, [r3, #0]
1a0011e4:	683b      	ldr	r3, [r7, #0]
1a0011e6:	43db      	mvns	r3, r3
1a0011e8:	401a      	ands	r2, r3
1a0011ea:	687b      	ldr	r3, [r7, #4]
1a0011ec:	601a      	str	r2, [r3, #0]
1a0011ee:	bf00      	nop
1a0011f0:	370c      	adds	r7, #12
1a0011f2:	46bd      	mov	sp, r7
1a0011f4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0011f8:	4770      	bx	lr

1a0011fa <Chip_PININT_EnableIntLow>:
1a0011fa:	b480      	push	{r7}
1a0011fc:	b083      	sub	sp, #12
1a0011fe:	af00      	add	r7, sp, #0
1a001200:	6078      	str	r0, [r7, #4]
1a001202:	6039      	str	r1, [r7, #0]
1a001204:	687b      	ldr	r3, [r7, #4]
1a001206:	683a      	ldr	r2, [r7, #0]
1a001208:	615a      	str	r2, [r3, #20]
1a00120a:	bf00      	nop
1a00120c:	370c      	adds	r7, #12
1a00120e:	46bd      	mov	sp, r7
1a001210:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001214:	4770      	bx	lr

1a001216 <Chip_PININT_ClearIntStatus>:
1a001216:	b480      	push	{r7}
1a001218:	b083      	sub	sp, #12
1a00121a:	af00      	add	r7, sp, #0
1a00121c:	6078      	str	r0, [r7, #4]
1a00121e:	6039      	str	r1, [r7, #0]
1a001220:	687b      	ldr	r3, [r7, #4]
1a001222:	683a      	ldr	r2, [r7, #0]
1a001224:	625a      	str	r2, [r3, #36]	; 0x24
1a001226:	bf00      	nop
1a001228:	370c      	adds	r7, #12
1a00122a:	46bd      	mov	sp, r7
1a00122c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001230:	4770      	bx	lr

1a001232 <Chip_UART_TXEnable>:
1a001232:	b480      	push	{r7}
1a001234:	b083      	sub	sp, #12
1a001236:	af00      	add	r7, sp, #0
1a001238:	6078      	str	r0, [r7, #4]
1a00123a:	687b      	ldr	r3, [r7, #4]
1a00123c:	2201      	movs	r2, #1
1a00123e:	65da      	str	r2, [r3, #92]	; 0x5c
1a001240:	bf00      	nop
1a001242:	370c      	adds	r7, #12
1a001244:	46bd      	mov	sp, r7
1a001246:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00124a:	4770      	bx	lr

1a00124c <Chip_UART_IntEnable>:
1a00124c:	b480      	push	{r7}
1a00124e:	b083      	sub	sp, #12
1a001250:	af00      	add	r7, sp, #0
1a001252:	6078      	str	r0, [r7, #4]
1a001254:	6039      	str	r1, [r7, #0]
1a001256:	687b      	ldr	r3, [r7, #4]
1a001258:	685a      	ldr	r2, [r3, #4]
1a00125a:	683b      	ldr	r3, [r7, #0]
1a00125c:	431a      	orrs	r2, r3
1a00125e:	687b      	ldr	r3, [r7, #4]
1a001260:	605a      	str	r2, [r3, #4]
1a001262:	bf00      	nop
1a001264:	370c      	adds	r7, #12
1a001266:	46bd      	mov	sp, r7
1a001268:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00126c:	4770      	bx	lr

1a00126e <Chip_UART_SetupFIFOS>:
1a00126e:	b480      	push	{r7}
1a001270:	b083      	sub	sp, #12
1a001272:	af00      	add	r7, sp, #0
1a001274:	6078      	str	r0, [r7, #4]
1a001276:	6039      	str	r1, [r7, #0]
1a001278:	687b      	ldr	r3, [r7, #4]
1a00127a:	683a      	ldr	r2, [r7, #0]
1a00127c:	609a      	str	r2, [r3, #8]
1a00127e:	bf00      	nop
1a001280:	370c      	adds	r7, #12
1a001282:	46bd      	mov	sp, r7
1a001284:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001288:	4770      	bx	lr

1a00128a <Chip_UART_ConfigData>:
1a00128a:	b480      	push	{r7}
1a00128c:	b083      	sub	sp, #12
1a00128e:	af00      	add	r7, sp, #0
1a001290:	6078      	str	r0, [r7, #4]
1a001292:	6039      	str	r1, [r7, #0]
1a001294:	687b      	ldr	r3, [r7, #4]
1a001296:	683a      	ldr	r2, [r7, #0]
1a001298:	60da      	str	r2, [r3, #12]
1a00129a:	bf00      	nop
1a00129c:	370c      	adds	r7, #12
1a00129e:	46bd      	mov	sp, r7
1a0012a0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0012a4:	4770      	bx	lr
1a0012a6:	Address 0x000000001a0012a6 is out of bounds.


1a0012a8 <sysInit>:
1a0012a8:	b590      	push	{r4, r7, lr}
1a0012aa:	b083      	sub	sp, #12
1a0012ac:	af00      	add	r7, sp, #0
1a0012ae:	f000 fb15 	bl	1a0018dc <Chip_SetupXtalClocking>
1a0012b2:	f001 f965 	bl	1a002580 <SystemCoreClockUpdate>
1a0012b6:	f000 fc45 	bl	1a001b44 <StopWatch_Init>
1a0012ba:	f000 f9eb 	bl	1a001694 <fpuInit>
1a0012be:	488c      	ldr	r0, [pc, #560]	; (1a0014f0 <sysInit+0x248>)
1a0012c0:	f001 f96a 	bl	1a002598 <Chip_GPIO_Init>
1a0012c4:	2300      	movs	r3, #0
1a0012c6:	607b      	str	r3, [r7, #4]
1a0012c8:	e04e      	b.n	1a001368 <sysInit+0xc0>
1a0012ca:	498a      	ldr	r1, [pc, #552]	; (1a0014f4 <sysInit+0x24c>)
1a0012cc:	687a      	ldr	r2, [r7, #4]
1a0012ce:	4613      	mov	r3, r2
1a0012d0:	005b      	lsls	r3, r3, #1
1a0012d2:	4413      	add	r3, r2
1a0012d4:	005b      	lsls	r3, r3, #1
1a0012d6:	440b      	add	r3, r1
1a0012d8:	7818      	ldrb	r0, [r3, #0]
1a0012da:	4986      	ldr	r1, [pc, #536]	; (1a0014f4 <sysInit+0x24c>)
1a0012dc:	687a      	ldr	r2, [r7, #4]
1a0012de:	4613      	mov	r3, r2
1a0012e0:	005b      	lsls	r3, r3, #1
1a0012e2:	4413      	add	r3, r2
1a0012e4:	005b      	lsls	r3, r3, #1
1a0012e6:	440b      	add	r3, r1
1a0012e8:	3301      	adds	r3, #1
1a0012ea:	781c      	ldrb	r4, [r3, #0]
1a0012ec:	4981      	ldr	r1, [pc, #516]	; (1a0014f4 <sysInit+0x24c>)
1a0012ee:	687a      	ldr	r2, [r7, #4]
1a0012f0:	4613      	mov	r3, r2
1a0012f2:	005b      	lsls	r3, r3, #1
1a0012f4:	4413      	add	r3, r2
1a0012f6:	005b      	lsls	r3, r3, #1
1a0012f8:	440b      	add	r3, r1
1a0012fa:	3304      	adds	r3, #4
1a0012fc:	881b      	ldrh	r3, [r3, #0]
1a0012fe:	461a      	mov	r2, r3
1a001300:	4621      	mov	r1, r4
1a001302:	f7ff fea3 	bl	1a00104c <Chip_SCU_PinMuxSet>
1a001306:	497b      	ldr	r1, [pc, #492]	; (1a0014f4 <sysInit+0x24c>)
1a001308:	687a      	ldr	r2, [r7, #4]
1a00130a:	4613      	mov	r3, r2
1a00130c:	005b      	lsls	r3, r3, #1
1a00130e:	4413      	add	r3, r2
1a001310:	005b      	lsls	r3, r3, #1
1a001312:	440b      	add	r3, r1
1a001314:	3302      	adds	r3, #2
1a001316:	7818      	ldrb	r0, [r3, #0]
1a001318:	4976      	ldr	r1, [pc, #472]	; (1a0014f4 <sysInit+0x24c>)
1a00131a:	687a      	ldr	r2, [r7, #4]
1a00131c:	4613      	mov	r3, r2
1a00131e:	005b      	lsls	r3, r3, #1
1a001320:	4413      	add	r3, r2
1a001322:	005b      	lsls	r3, r3, #1
1a001324:	440b      	add	r3, r1
1a001326:	3303      	adds	r3, #3
1a001328:	781b      	ldrb	r3, [r3, #0]
1a00132a:	461a      	mov	r2, r3
1a00132c:	4601      	mov	r1, r0
1a00132e:	4870      	ldr	r0, [pc, #448]	; (1a0014f0 <sysInit+0x248>)
1a001330:	f7ff fee0 	bl	1a0010f4 <Chip_GPIO_SetPinDIROutput>
1a001334:	496f      	ldr	r1, [pc, #444]	; (1a0014f4 <sysInit+0x24c>)
1a001336:	687a      	ldr	r2, [r7, #4]
1a001338:	4613      	mov	r3, r2
1a00133a:	005b      	lsls	r3, r3, #1
1a00133c:	4413      	add	r3, r2
1a00133e:	005b      	lsls	r3, r3, #1
1a001340:	440b      	add	r3, r1
1a001342:	3302      	adds	r3, #2
1a001344:	7818      	ldrb	r0, [r3, #0]
1a001346:	496b      	ldr	r1, [pc, #428]	; (1a0014f4 <sysInit+0x24c>)
1a001348:	687a      	ldr	r2, [r7, #4]
1a00134a:	4613      	mov	r3, r2
1a00134c:	005b      	lsls	r3, r3, #1
1a00134e:	4413      	add	r3, r2
1a001350:	005b      	lsls	r3, r3, #1
1a001352:	440b      	add	r3, r1
1a001354:	3303      	adds	r3, #3
1a001356:	781b      	ldrb	r3, [r3, #0]
1a001358:	461a      	mov	r2, r3
1a00135a:	4601      	mov	r1, r0
1a00135c:	4864      	ldr	r0, [pc, #400]	; (1a0014f0 <sysInit+0x248>)
1a00135e:	f7ff ff21 	bl	1a0011a4 <Chip_GPIO_SetPinOutLow>
1a001362:	687b      	ldr	r3, [r7, #4]
1a001364:	3301      	adds	r3, #1
1a001366:	607b      	str	r3, [r7, #4]
1a001368:	687b      	ldr	r3, [r7, #4]
1a00136a:	2b05      	cmp	r3, #5
1a00136c:	d9ad      	bls.n	1a0012ca <sysInit+0x22>
1a00136e:	2300      	movs	r3, #0
1a001370:	607b      	str	r3, [r7, #4]
1a001372:	e037      	b.n	1a0013e4 <sysInit+0x13c>
1a001374:	4960      	ldr	r1, [pc, #384]	; (1a0014f8 <sysInit+0x250>)
1a001376:	687a      	ldr	r2, [r7, #4]
1a001378:	4613      	mov	r3, r2
1a00137a:	005b      	lsls	r3, r3, #1
1a00137c:	4413      	add	r3, r2
1a00137e:	005b      	lsls	r3, r3, #1
1a001380:	440b      	add	r3, r1
1a001382:	7818      	ldrb	r0, [r3, #0]
1a001384:	495c      	ldr	r1, [pc, #368]	; (1a0014f8 <sysInit+0x250>)
1a001386:	687a      	ldr	r2, [r7, #4]
1a001388:	4613      	mov	r3, r2
1a00138a:	005b      	lsls	r3, r3, #1
1a00138c:	4413      	add	r3, r2
1a00138e:	005b      	lsls	r3, r3, #1
1a001390:	440b      	add	r3, r1
1a001392:	3301      	adds	r3, #1
1a001394:	781c      	ldrb	r4, [r3, #0]
1a001396:	4958      	ldr	r1, [pc, #352]	; (1a0014f8 <sysInit+0x250>)
1a001398:	687a      	ldr	r2, [r7, #4]
1a00139a:	4613      	mov	r3, r2
1a00139c:	005b      	lsls	r3, r3, #1
1a00139e:	4413      	add	r3, r2
1a0013a0:	005b      	lsls	r3, r3, #1
1a0013a2:	440b      	add	r3, r1
1a0013a4:	3304      	adds	r3, #4
1a0013a6:	881b      	ldrh	r3, [r3, #0]
1a0013a8:	461a      	mov	r2, r3
1a0013aa:	4621      	mov	r1, r4
1a0013ac:	f7ff fe4e 	bl	1a00104c <Chip_SCU_PinMuxSet>
1a0013b0:	4951      	ldr	r1, [pc, #324]	; (1a0014f8 <sysInit+0x250>)
1a0013b2:	687a      	ldr	r2, [r7, #4]
1a0013b4:	4613      	mov	r3, r2
1a0013b6:	005b      	lsls	r3, r3, #1
1a0013b8:	4413      	add	r3, r2
1a0013ba:	005b      	lsls	r3, r3, #1
1a0013bc:	440b      	add	r3, r1
1a0013be:	3302      	adds	r3, #2
1a0013c0:	7818      	ldrb	r0, [r3, #0]
1a0013c2:	494d      	ldr	r1, [pc, #308]	; (1a0014f8 <sysInit+0x250>)
1a0013c4:	687a      	ldr	r2, [r7, #4]
1a0013c6:	4613      	mov	r3, r2
1a0013c8:	005b      	lsls	r3, r3, #1
1a0013ca:	4413      	add	r3, r2
1a0013cc:	005b      	lsls	r3, r3, #1
1a0013ce:	440b      	add	r3, r1
1a0013d0:	3303      	adds	r3, #3
1a0013d2:	781b      	ldrb	r3, [r3, #0]
1a0013d4:	461a      	mov	r2, r3
1a0013d6:	4601      	mov	r1, r0
1a0013d8:	4845      	ldr	r0, [pc, #276]	; (1a0014f0 <sysInit+0x248>)
1a0013da:	f7ff feaa 	bl	1a001132 <Chip_GPIO_SetPinDIRInput>
1a0013de:	687b      	ldr	r3, [r7, #4]
1a0013e0:	3301      	adds	r3, #1
1a0013e2:	607b      	str	r3, [r7, #4]
1a0013e4:	687b      	ldr	r3, [r7, #4]
1a0013e6:	2b03      	cmp	r3, #3
1a0013e8:	d9c4      	bls.n	1a001374 <sysInit+0xcc>
1a0013ea:	221e      	movs	r2, #30
1a0013ec:	2101      	movs	r1, #1
1a0013ee:	2007      	movs	r0, #7
1a0013f0:	f7ff fe2c 	bl	1a00104c <Chip_SCU_PinMuxSet>
1a0013f4:	22d6      	movs	r2, #214	; 0xd6
1a0013f6:	2102      	movs	r1, #2
1a0013f8:	2007      	movs	r0, #7
1a0013fa:	f7ff fe27 	bl	1a00104c <Chip_SCU_PinMuxSet>
1a0013fe:	483f      	ldr	r0, [pc, #252]	; (1a0014fc <sysInit+0x254>)
1a001400:	f000 fb06 	bl	1a001a10 <Chip_UART_Init>
1a001404:	2103      	movs	r1, #3
1a001406:	483d      	ldr	r0, [pc, #244]	; (1a0014fc <sysInit+0x254>)
1a001408:	f7ff ff3f 	bl	1a00128a <Chip_UART_ConfigData>
1a00140c:	f44f 31e1 	mov.w	r1, #115200	; 0x1c200
1a001410:	483a      	ldr	r0, [pc, #232]	; (1a0014fc <sysInit+0x254>)
1a001412:	f000 fb41 	bl	1a001a98 <Chip_UART_SetBaud>
1a001416:	21c7      	movs	r1, #199	; 0xc7
1a001418:	4838      	ldr	r0, [pc, #224]	; (1a0014fc <sysInit+0x254>)
1a00141a:	f7ff ff28 	bl	1a00126e <Chip_UART_SetupFIFOS>
1a00141e:	2101      	movs	r1, #1
1a001420:	4836      	ldr	r0, [pc, #216]	; (1a0014fc <sysInit+0x254>)
1a001422:	f7ff ff13 	bl	1a00124c <Chip_UART_IntEnable>
1a001426:	2300      	movs	r3, #0
1a001428:	607b      	str	r3, [r7, #4]
1a00142a:	e032      	b.n	1a001492 <sysInit+0x1ea>
1a00142c:	687b      	ldr	r3, [r7, #4]
1a00142e:	b2d8      	uxtb	r0, r3
1a001430:	4931      	ldr	r1, [pc, #196]	; (1a0014f8 <sysInit+0x250>)
1a001432:	687a      	ldr	r2, [r7, #4]
1a001434:	4613      	mov	r3, r2
1a001436:	005b      	lsls	r3, r3, #1
1a001438:	4413      	add	r3, r2
1a00143a:	005b      	lsls	r3, r3, #1
1a00143c:	440b      	add	r3, r1
1a00143e:	3302      	adds	r3, #2
1a001440:	781c      	ldrb	r4, [r3, #0]
1a001442:	492d      	ldr	r1, [pc, #180]	; (1a0014f8 <sysInit+0x250>)
1a001444:	687a      	ldr	r2, [r7, #4]
1a001446:	4613      	mov	r3, r2
1a001448:	005b      	lsls	r3, r3, #1
1a00144a:	4413      	add	r3, r2
1a00144c:	005b      	lsls	r3, r3, #1
1a00144e:	440b      	add	r3, r1
1a001450:	3303      	adds	r3, #3
1a001452:	781b      	ldrb	r3, [r3, #0]
1a001454:	461a      	mov	r2, r3
1a001456:	4621      	mov	r1, r4
1a001458:	f7ff fe12 	bl	1a001080 <Chip_SCU_GPIOIntPinSel>
1a00145c:	2201      	movs	r2, #1
1a00145e:	687b      	ldr	r3, [r7, #4]
1a001460:	fa02 f303 	lsl.w	r3, r2, r3
1a001464:	4619      	mov	r1, r3
1a001466:	4826      	ldr	r0, [pc, #152]	; (1a001500 <sysInit+0x258>)
1a001468:	f7ff fed5 	bl	1a001216 <Chip_PININT_ClearIntStatus>
1a00146c:	2201      	movs	r2, #1
1a00146e:	687b      	ldr	r3, [r7, #4]
1a001470:	fa02 f303 	lsl.w	r3, r2, r3
1a001474:	4619      	mov	r1, r3
1a001476:	4822      	ldr	r0, [pc, #136]	; (1a001500 <sysInit+0x258>)
1a001478:	f7ff fead 	bl	1a0011d6 <Chip_PININT_SetPinModeEdge>
1a00147c:	2201      	movs	r2, #1
1a00147e:	687b      	ldr	r3, [r7, #4]
1a001480:	fa02 f303 	lsl.w	r3, r2, r3
1a001484:	4619      	mov	r1, r3
1a001486:	481e      	ldr	r0, [pc, #120]	; (1a001500 <sysInit+0x258>)
1a001488:	f7ff feb7 	bl	1a0011fa <Chip_PININT_EnableIntLow>
1a00148c:	687b      	ldr	r3, [r7, #4]
1a00148e:	3301      	adds	r3, #1
1a001490:	607b      	str	r3, [r7, #4]
1a001492:	687b      	ldr	r3, [r7, #4]
1a001494:	2b03      	cmp	r3, #3
1a001496:	ddc9      	ble.n	1a00142c <sysInit+0x184>
1a001498:	2020      	movs	r0, #32
1a00149a:	f7ff fd71 	bl	1a000f80 <NVIC_ClearPendingIRQ>
1a00149e:	2021      	movs	r0, #33	; 0x21
1a0014a0:	f7ff fd6e 	bl	1a000f80 <NVIC_ClearPendingIRQ>
1a0014a4:	2022      	movs	r0, #34	; 0x22
1a0014a6:	f7ff fd6b 	bl	1a000f80 <NVIC_ClearPendingIRQ>
1a0014aa:	2023      	movs	r0, #35	; 0x23
1a0014ac:	f7ff fd68 	bl	1a000f80 <NVIC_ClearPendingIRQ>
1a0014b0:	2020      	movs	r0, #32
1a0014b2:	f7ff fd4b 	bl	1a000f4c <NVIC_EnableIRQ>
1a0014b6:	2021      	movs	r0, #33	; 0x21
1a0014b8:	f7ff fd48 	bl	1a000f4c <NVIC_EnableIRQ>
1a0014bc:	2022      	movs	r0, #34	; 0x22
1a0014be:	f7ff fd45 	bl	1a000f4c <NVIC_EnableIRQ>
1a0014c2:	2023      	movs	r0, #35	; 0x23
1a0014c4:	f7ff fd42 	bl	1a000f4c <NVIC_EnableIRQ>
1a0014c8:	201a      	movs	r0, #26
1a0014ca:	f7ff fd3f 	bl	1a000f4c <NVIC_EnableIRQ>
1a0014ce:	480b      	ldr	r0, [pc, #44]	; (1a0014fc <sysInit+0x254>)
1a0014d0:	f7ff feaf 	bl	1a001232 <Chip_UART_TXEnable>
1a0014d4:	4b0b      	ldr	r3, [pc, #44]	; (1a001504 <sysInit+0x25c>)
1a0014d6:	681b      	ldr	r3, [r3, #0]
1a0014d8:	4a0b      	ldr	r2, [pc, #44]	; (1a001508 <sysInit+0x260>)
1a0014da:	fba2 2303 	umull	r2, r3, r2, r3
1a0014de:	099b      	lsrs	r3, r3, #6
1a0014e0:	4618      	mov	r0, r3
1a0014e2:	f7ff fd91 	bl	1a001008 <SysTick_Config>
1a0014e6:	bf00      	nop
1a0014e8:	370c      	adds	r7, #12
1a0014ea:	46bd      	mov	sp, r7
1a0014ec:	bd90      	pop	{r4, r7, pc}
1a0014ee:	bf00      	nop
1a0014f0:	400f4000 	.word	0x400f4000
1a0014f4:	1a002624 	.word	0x1a002624
1a0014f8:	1a002648 	.word	0x1a002648
1a0014fc:	400c1000 	.word	0x400c1000
1a001500:	40087000 	.word	0x40087000
1a001504:	10000058 	.word	0x10000058
1a001508:	10624dd3 	.word	0x10624dd3

1a00150c <ledOn>:
1a00150c:	b580      	push	{r7, lr}
1a00150e:	b082      	sub	sp, #8
1a001510:	af00      	add	r7, sp, #0
1a001512:	4603      	mov	r3, r0
1a001514:	71fb      	strb	r3, [r7, #7]
1a001516:	79fa      	ldrb	r2, [r7, #7]
1a001518:	490c      	ldr	r1, [pc, #48]	; (1a00154c <ledOn+0x40>)
1a00151a:	4613      	mov	r3, r2
1a00151c:	005b      	lsls	r3, r3, #1
1a00151e:	4413      	add	r3, r2
1a001520:	005b      	lsls	r3, r3, #1
1a001522:	440b      	add	r3, r1
1a001524:	3302      	adds	r3, #2
1a001526:	7818      	ldrb	r0, [r3, #0]
1a001528:	79fa      	ldrb	r2, [r7, #7]
1a00152a:	4908      	ldr	r1, [pc, #32]	; (1a00154c <ledOn+0x40>)
1a00152c:	4613      	mov	r3, r2
1a00152e:	005b      	lsls	r3, r3, #1
1a001530:	4413      	add	r3, r2
1a001532:	005b      	lsls	r3, r3, #1
1a001534:	440b      	add	r3, r1
1a001536:	3303      	adds	r3, #3
1a001538:	781b      	ldrb	r3, [r3, #0]
1a00153a:	461a      	mov	r2, r3
1a00153c:	4601      	mov	r1, r0
1a00153e:	4804      	ldr	r0, [pc, #16]	; (1a001550 <ledOn+0x44>)
1a001540:	f7ff fe17 	bl	1a001172 <Chip_GPIO_SetPinOutHigh>
1a001544:	bf00      	nop
1a001546:	3708      	adds	r7, #8
1a001548:	46bd      	mov	sp, r7
1a00154a:	bd80      	pop	{r7, pc}
1a00154c:	1a002624 	.word	0x1a002624
1a001550:	400f4000 	.word	0x400f4000

1a001554 <ledOff>:
1a001554:	b580      	push	{r7, lr}
1a001556:	b082      	sub	sp, #8
1a001558:	af00      	add	r7, sp, #0
1a00155a:	4603      	mov	r3, r0
1a00155c:	71fb      	strb	r3, [r7, #7]
1a00155e:	79fa      	ldrb	r2, [r7, #7]
1a001560:	490c      	ldr	r1, [pc, #48]	; (1a001594 <ledOff+0x40>)
1a001562:	4613      	mov	r3, r2
1a001564:	005b      	lsls	r3, r3, #1
1a001566:	4413      	add	r3, r2
1a001568:	005b      	lsls	r3, r3, #1
1a00156a:	440b      	add	r3, r1
1a00156c:	3302      	adds	r3, #2
1a00156e:	7818      	ldrb	r0, [r3, #0]
1a001570:	79fa      	ldrb	r2, [r7, #7]
1a001572:	4908      	ldr	r1, [pc, #32]	; (1a001594 <ledOff+0x40>)
1a001574:	4613      	mov	r3, r2
1a001576:	005b      	lsls	r3, r3, #1
1a001578:	4413      	add	r3, r2
1a00157a:	005b      	lsls	r3, r3, #1
1a00157c:	440b      	add	r3, r1
1a00157e:	3303      	adds	r3, #3
1a001580:	781b      	ldrb	r3, [r3, #0]
1a001582:	461a      	mov	r2, r3
1a001584:	4601      	mov	r1, r0
1a001586:	4804      	ldr	r0, [pc, #16]	; (1a001598 <ledOff+0x44>)
1a001588:	f7ff fe0c 	bl	1a0011a4 <Chip_GPIO_SetPinOutLow>
1a00158c:	bf00      	nop
1a00158e:	3708      	adds	r7, #8
1a001590:	46bd      	mov	sp, r7
1a001592:	bd80      	pop	{r7, pc}
1a001594:	1a002624 	.word	0x1a002624
1a001598:	400f4000 	.word	0x400f4000

1a00159c <SysTick_Handler>:
1a00159c:	b480      	push	{r7}
1a00159e:	af00      	add	r7, sp, #0
1a0015a0:	4b03      	ldr	r3, [pc, #12]	; (1a0015b0 <SysTick_Handler+0x14>)
1a0015a2:	2201      	movs	r2, #1
1a0015a4:	701a      	strb	r2, [r3, #0]
1a0015a6:	bf00      	nop
1a0015a8:	46bd      	mov	sp, r7
1a0015aa:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015ae:	4770      	bx	lr
1a0015b0:	10000041 	.word	0x10000041

1a0015b4 <getSysTickEv>:
1a0015b4:	b480      	push	{r7}
1a0015b6:	af00      	add	r7, sp, #0
1a0015b8:	4b03      	ldr	r3, [pc, #12]	; (1a0015c8 <getSysTickEv+0x14>)
1a0015ba:	781b      	ldrb	r3, [r3, #0]
1a0015bc:	4618      	mov	r0, r3
1a0015be:	46bd      	mov	sp, r7
1a0015c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015c4:	4770      	bx	lr
1a0015c6:	bf00      	nop
1a0015c8:	10000041 	.word	0x10000041

1a0015cc <rstSysTickEv>:
1a0015cc:	b480      	push	{r7}
1a0015ce:	af00      	add	r7, sp, #0
1a0015d0:	4b03      	ldr	r3, [pc, #12]	; (1a0015e0 <rstSysTickEv+0x14>)
1a0015d2:	2200      	movs	r2, #0
1a0015d4:	701a      	strb	r2, [r3, #0]
1a0015d6:	bf00      	nop
1a0015d8:	46bd      	mov	sp, r7
1a0015da:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0015de:	4770      	bx	lr
1a0015e0:	10000041 	.word	0x10000041

1a0015e4 <GPIO0_IRQHandler>:
1a0015e4:	b580      	push	{r7, lr}
1a0015e6:	af00      	add	r7, sp, #0
1a0015e8:	4b04      	ldr	r3, [pc, #16]	; (1a0015fc <GPIO0_IRQHandler+0x18>)
1a0015ea:	2201      	movs	r2, #1
1a0015ec:	701a      	strb	r2, [r3, #0]
1a0015ee:	2101      	movs	r1, #1
1a0015f0:	4803      	ldr	r0, [pc, #12]	; (1a001600 <GPIO0_IRQHandler+0x1c>)
1a0015f2:	f7ff fe10 	bl	1a001216 <Chip_PININT_ClearIntStatus>
1a0015f6:	bf00      	nop
1a0015f8:	bd80      	pop	{r7, pc}
1a0015fa:	bf00      	nop
1a0015fc:	10000040 	.word	0x10000040
1a001600:	40087000 	.word	0x40087000

1a001604 <GPIO1_IRQHandler>:
1a001604:	b580      	push	{r7, lr}
1a001606:	af00      	add	r7, sp, #0
1a001608:	4b04      	ldr	r3, [pc, #16]	; (1a00161c <GPIO1_IRQHandler+0x18>)
1a00160a:	2202      	movs	r2, #2
1a00160c:	701a      	strb	r2, [r3, #0]
1a00160e:	2102      	movs	r1, #2
1a001610:	4803      	ldr	r0, [pc, #12]	; (1a001620 <GPIO1_IRQHandler+0x1c>)
1a001612:	f7ff fe00 	bl	1a001216 <Chip_PININT_ClearIntStatus>
1a001616:	bf00      	nop
1a001618:	bd80      	pop	{r7, pc}
1a00161a:	bf00      	nop
1a00161c:	10000040 	.word	0x10000040
1a001620:	40087000 	.word	0x40087000

1a001624 <GPIO2_IRQHandler>:
1a001624:	b580      	push	{r7, lr}
1a001626:	af00      	add	r7, sp, #0
1a001628:	4b04      	ldr	r3, [pc, #16]	; (1a00163c <GPIO2_IRQHandler+0x18>)
1a00162a:	2203      	movs	r2, #3
1a00162c:	701a      	strb	r2, [r3, #0]
1a00162e:	2104      	movs	r1, #4
1a001630:	4803      	ldr	r0, [pc, #12]	; (1a001640 <GPIO2_IRQHandler+0x1c>)
1a001632:	f7ff fdf0 	bl	1a001216 <Chip_PININT_ClearIntStatus>
1a001636:	bf00      	nop
1a001638:	bd80      	pop	{r7, pc}
1a00163a:	bf00      	nop
1a00163c:	10000040 	.word	0x10000040
1a001640:	40087000 	.word	0x40087000

1a001644 <GPIO3_IRQHandler>:
1a001644:	b580      	push	{r7, lr}
1a001646:	af00      	add	r7, sp, #0
1a001648:	4b04      	ldr	r3, [pc, #16]	; (1a00165c <GPIO3_IRQHandler+0x18>)
1a00164a:	2204      	movs	r2, #4
1a00164c:	701a      	strb	r2, [r3, #0]
1a00164e:	2108      	movs	r1, #8
1a001650:	4803      	ldr	r0, [pc, #12]	; (1a001660 <GPIO3_IRQHandler+0x1c>)
1a001652:	f7ff fde0 	bl	1a001216 <Chip_PININT_ClearIntStatus>
1a001656:	bf00      	nop
1a001658:	bd80      	pop	{r7, pc}
1a00165a:	bf00      	nop
1a00165c:	10000040 	.word	0x10000040
1a001660:	40087000 	.word	0x40087000

1a001664 <getKeyPressed>:
1a001664:	b480      	push	{r7}
1a001666:	af00      	add	r7, sp, #0
1a001668:	4b03      	ldr	r3, [pc, #12]	; (1a001678 <getKeyPressed+0x14>)
1a00166a:	781b      	ldrb	r3, [r3, #0]
1a00166c:	4618      	mov	r0, r3
1a00166e:	46bd      	mov	sp, r7
1a001670:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001674:	4770      	bx	lr
1a001676:	bf00      	nop
1a001678:	10000040 	.word	0x10000040

1a00167c <rstKeyPressed>:
1a00167c:	b480      	push	{r7}
1a00167e:	af00      	add	r7, sp, #0
1a001680:	4b03      	ldr	r3, [pc, #12]	; (1a001690 <rstKeyPressed+0x14>)
1a001682:	2200      	movs	r2, #0
1a001684:	701a      	strb	r2, [r3, #0]
1a001686:	bf00      	nop
1a001688:	46bd      	mov	sp, r7
1a00168a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00168e:	4770      	bx	lr
1a001690:	10000040 	.word	0x10000040

1a001694 <fpuInit>:
1a001694:	b480      	push	{r7}
1a001696:	b089      	sub	sp, #36	; 0x24
1a001698:	af00      	add	r7, sp, #0
1a00169a:	4b16      	ldr	r3, [pc, #88]	; (1a0016f4 <fpuInit+0x60>)
1a00169c:	61fb      	str	r3, [r7, #28]
1a00169e:	4b16      	ldr	r3, [pc, #88]	; (1a0016f8 <fpuInit+0x64>)
1a0016a0:	61bb      	str	r3, [r7, #24]
1a0016a2:	4b16      	ldr	r3, [pc, #88]	; (1a0016fc <fpuInit+0x68>)
1a0016a4:	617b      	str	r3, [r7, #20]
1a0016a6:	2300      	movs	r3, #0
1a0016a8:	74fb      	strb	r3, [r7, #19]
1a0016aa:	69bb      	ldr	r3, [r7, #24]
1a0016ac:	681b      	ldr	r3, [r3, #0]
1a0016ae:	60bb      	str	r3, [r7, #8]
1a0016b0:	697b      	ldr	r3, [r7, #20]
1a0016b2:	681b      	ldr	r3, [r3, #0]
1a0016b4:	607b      	str	r3, [r7, #4]
1a0016b6:	68bb      	ldr	r3, [r7, #8]
1a0016b8:	4a11      	ldr	r2, [pc, #68]	; (1a001700 <fpuInit+0x6c>)
1a0016ba:	4293      	cmp	r3, r2
1a0016bc:	d105      	bne.n	1a0016ca <fpuInit+0x36>
1a0016be:	687b      	ldr	r3, [r7, #4]
1a0016c0:	4a10      	ldr	r2, [pc, #64]	; (1a001704 <fpuInit+0x70>)
1a0016c2:	4293      	cmp	r3, r2
1a0016c4:	d101      	bne.n	1a0016ca <fpuInit+0x36>
1a0016c6:	2301      	movs	r3, #1
1a0016c8:	e000      	b.n	1a0016cc <fpuInit+0x38>
1a0016ca:	2300      	movs	r3, #0
1a0016cc:	74fb      	strb	r3, [r7, #19]
1a0016ce:	7cfb      	ldrb	r3, [r7, #19]
1a0016d0:	2b00      	cmp	r3, #0
1a0016d2:	d009      	beq.n	1a0016e8 <fpuInit+0x54>
1a0016d4:	69fb      	ldr	r3, [r7, #28]
1a0016d6:	681b      	ldr	r3, [r3, #0]
1a0016d8:	60fb      	str	r3, [r7, #12]
1a0016da:	68fb      	ldr	r3, [r7, #12]
1a0016dc:	f443 0370 	orr.w	r3, r3, #15728640	; 0xf00000
1a0016e0:	60fb      	str	r3, [r7, #12]
1a0016e2:	68fa      	ldr	r2, [r7, #12]
1a0016e4:	69fb      	ldr	r3, [r7, #28]
1a0016e6:	601a      	str	r2, [r3, #0]
1a0016e8:	bf00      	nop
1a0016ea:	3724      	adds	r7, #36	; 0x24
1a0016ec:	46bd      	mov	sp, r7
1a0016ee:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0016f2:	4770      	bx	lr
1a0016f4:	e000ed88 	.word	0xe000ed88
1a0016f8:	e000ef40 	.word	0xe000ef40
1a0016fc:	e000ef44 	.word	0xe000ef44
1a001700:	10110021 	.word	0x10110021
1a001704:	11000011 	.word	0x11000011

1a001708 <Chip_Clock_DisableMainPLL>:
1a001708:	b480      	push	{r7}
1a00170a:	af00      	add	r7, sp, #0
1a00170c:	4b05      	ldr	r3, [pc, #20]	; (1a001724 <Chip_Clock_DisableMainPLL+0x1c>)
1a00170e:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a001710:	4a04      	ldr	r2, [pc, #16]	; (1a001724 <Chip_Clock_DisableMainPLL+0x1c>)
1a001712:	f043 0301 	orr.w	r3, r3, #1
1a001716:	6453      	str	r3, [r2, #68]	; 0x44
1a001718:	bf00      	nop
1a00171a:	46bd      	mov	sp, r7
1a00171c:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001720:	4770      	bx	lr
1a001722:	bf00      	nop
1a001724:	40050000 	.word	0x40050000

1a001728 <Chip_Clock_SetupMainPLL>:
1a001728:	b480      	push	{r7}
1a00172a:	b083      	sub	sp, #12
1a00172c:	af00      	add	r7, sp, #0
1a00172e:	6078      	str	r0, [r7, #4]
1a001730:	687b      	ldr	r3, [r7, #4]
1a001732:	681b      	ldr	r3, [r3, #0]
1a001734:	461a      	mov	r2, r3
1a001736:	687b      	ldr	r3, [r7, #4]
1a001738:	791b      	ldrb	r3, [r3, #4]
1a00173a:	061b      	lsls	r3, r3, #24
1a00173c:	4313      	orrs	r3, r2
1a00173e:	687a      	ldr	r2, [r7, #4]
1a001740:	6912      	ldr	r2, [r2, #16]
1a001742:	0412      	lsls	r2, r2, #16
1a001744:	4313      	orrs	r3, r2
1a001746:	687a      	ldr	r2, [r7, #4]
1a001748:	6892      	ldr	r2, [r2, #8]
1a00174a:	0312      	lsls	r2, r2, #12
1a00174c:	4313      	orrs	r3, r2
1a00174e:	687a      	ldr	r2, [r7, #4]
1a001750:	68d2      	ldr	r2, [r2, #12]
1a001752:	0212      	lsls	r2, r2, #8
1a001754:	4313      	orrs	r3, r2
1a001756:	4a05      	ldr	r2, [pc, #20]	; (1a00176c <Chip_Clock_SetupMainPLL+0x44>)
1a001758:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a00175c:	6453      	str	r3, [r2, #68]	; 0x44
1a00175e:	bf00      	nop
1a001760:	370c      	adds	r7, #12
1a001762:	46bd      	mov	sp, r7
1a001764:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001768:	4770      	bx	lr
1a00176a:	bf00      	nop
1a00176c:	40050000 	.word	0x40050000

1a001770 <Chip_Clock_MainPLLLocked>:
1a001770:	b480      	push	{r7}
1a001772:	af00      	add	r7, sp, #0
1a001774:	4b06      	ldr	r3, [pc, #24]	; (1a001790 <Chip_Clock_MainPLLLocked+0x20>)
1a001776:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a001778:	f003 0301 	and.w	r3, r3, #1
1a00177c:	2b00      	cmp	r3, #0
1a00177e:	bf14      	ite	ne
1a001780:	2301      	movne	r3, #1
1a001782:	2300      	moveq	r3, #0
1a001784:	b2db      	uxtb	r3, r3
1a001786:	4618      	mov	r0, r3
1a001788:	46bd      	mov	sp, r7
1a00178a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00178e:	4770      	bx	lr
1a001790:	40050000 	.word	0x40050000

1a001794 <Chip_SetupCoreClock>:
1a001794:	b590      	push	{r4, r7, lr}
1a001796:	b08f      	sub	sp, #60	; 0x3c
1a001798:	af00      	add	r7, sp, #0
1a00179a:	4603      	mov	r3, r0
1a00179c:	6039      	str	r1, [r7, #0]
1a00179e:	71fb      	strb	r3, [r7, #7]
1a0017a0:	4613      	mov	r3, r2
1a0017a2:	71bb      	strb	r3, [r7, #6]
1a0017a4:	f44f 73fa 	mov.w	r3, #500	; 0x1f4
1a0017a8:	62bb      	str	r3, [r7, #40]	; 0x28
1a0017aa:	2300      	movs	r3, #0
1a0017ac:	633b      	str	r3, [r7, #48]	; 0x30
1a0017ae:	2300      	movs	r3, #0
1a0017b0:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0017b2:	79fb      	ldrb	r3, [r7, #7]
1a0017b4:	2b06      	cmp	r3, #6
1a0017b6:	d101      	bne.n	1a0017bc <Chip_SetupCoreClock+0x28>
1a0017b8:	f000 fbca 	bl	1a001f50 <Chip_Clock_EnableCrystal>
1a0017bc:	79f9      	ldrb	r1, [r7, #7]
1a0017be:	2300      	movs	r3, #0
1a0017c0:	2201      	movs	r2, #1
1a0017c2:	2004      	movs	r0, #4
1a0017c4:	f000 fdb6 	bl	1a002334 <Chip_Clock_SetBaseClock>
1a0017c8:	f7ff ff9e 	bl	1a001708 <Chip_Clock_DisableMainPLL>
1a0017cc:	79fb      	ldrb	r3, [r7, #7]
1a0017ce:	733b      	strb	r3, [r7, #12]
1a0017d0:	f107 0308 	add.w	r3, r7, #8
1a0017d4:	4619      	mov	r1, r3
1a0017d6:	6838      	ldr	r0, [r7, #0]
1a0017d8:	f000 fbf2 	bl	1a001fc0 <Chip_Clock_CalcMainPLLValue>
1a0017dc:	683b      	ldr	r3, [r7, #0]
1a0017de:	4a3d      	ldr	r2, [pc, #244]	; (1a0018d4 <Chip_SetupCoreClock+0x140>)
1a0017e0:	4293      	cmp	r3, r2
1a0017e2:	d916      	bls.n	1a001812 <Chip_SetupCoreClock+0x7e>
1a0017e4:	68bb      	ldr	r3, [r7, #8]
1a0017e6:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a0017ea:	2b00      	cmp	r3, #0
1a0017ec:	d000      	beq.n	1a0017f0 <Chip_SetupCoreClock+0x5c>
1a0017ee:	e7fe      	b.n	1a0017ee <Chip_SetupCoreClock+0x5a>
1a0017f0:	68bb      	ldr	r3, [r7, #8]
1a0017f2:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a0017f6:	2b00      	cmp	r3, #0
1a0017f8:	d006      	beq.n	1a001808 <Chip_SetupCoreClock+0x74>
1a0017fa:	2301      	movs	r3, #1
1a0017fc:	633b      	str	r3, [r7, #48]	; 0x30
1a0017fe:	68bb      	ldr	r3, [r7, #8]
1a001800:	f023 0380 	bic.w	r3, r3, #128	; 0x80
1a001804:	60bb      	str	r3, [r7, #8]
1a001806:	e004      	b.n	1a001812 <Chip_SetupCoreClock+0x7e>
1a001808:	2301      	movs	r3, #1
1a00180a:	62fb      	str	r3, [r7, #44]	; 0x2c
1a00180c:	697b      	ldr	r3, [r7, #20]
1a00180e:	3301      	adds	r3, #1
1a001810:	617b      	str	r3, [r7, #20]
1a001812:	f107 0308 	add.w	r3, r7, #8
1a001816:	4618      	mov	r0, r3
1a001818:	f7ff ff86 	bl	1a001728 <Chip_Clock_SetupMainPLL>
1a00181c:	bf00      	nop
1a00181e:	f7ff ffa7 	bl	1a001770 <Chip_Clock_MainPLLLocked>
1a001822:	4603      	mov	r3, r0
1a001824:	2b00      	cmp	r3, #0
1a001826:	d0fa      	beq.n	1a00181e <Chip_SetupCoreClock+0x8a>
1a001828:	2300      	movs	r3, #0
1a00182a:	2201      	movs	r2, #1
1a00182c:	2109      	movs	r1, #9
1a00182e:	2004      	movs	r0, #4
1a001830:	f000 fd80 	bl	1a002334 <Chip_Clock_SetBaseClock>
1a001834:	6b3b      	ldr	r3, [r7, #48]	; 0x30
1a001836:	2b00      	cmp	r3, #0
1a001838:	d012      	beq.n	1a001860 <Chip_SetupCoreClock+0xcc>
1a00183a:	f241 7370 	movw	r3, #6000	; 0x1770
1a00183e:	62bb      	str	r3, [r7, #40]	; 0x28
1a001840:	bf00      	nop
1a001842:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001844:	1e5a      	subs	r2, r3, #1
1a001846:	62ba      	str	r2, [r7, #40]	; 0x28
1a001848:	2b00      	cmp	r3, #0
1a00184a:	d1fa      	bne.n	1a001842 <Chip_SetupCoreClock+0xae>
1a00184c:	68bb      	ldr	r3, [r7, #8]
1a00184e:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a001852:	60bb      	str	r3, [r7, #8]
1a001854:	f107 0308 	add.w	r3, r7, #8
1a001858:	4618      	mov	r0, r3
1a00185a:	f7ff ff65 	bl	1a001728 <Chip_Clock_SetupMainPLL>
1a00185e:	e013      	b.n	1a001888 <Chip_SetupCoreClock+0xf4>
1a001860:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a001862:	2b00      	cmp	r3, #0
1a001864:	d010      	beq.n	1a001888 <Chip_SetupCoreClock+0xf4>
1a001866:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a00186a:	62bb      	str	r3, [r7, #40]	; 0x28
1a00186c:	bf00      	nop
1a00186e:	6abb      	ldr	r3, [r7, #40]	; 0x28
1a001870:	1e5a      	subs	r2, r3, #1
1a001872:	62ba      	str	r2, [r7, #40]	; 0x28
1a001874:	2b00      	cmp	r3, #0
1a001876:	d1fa      	bne.n	1a00186e <Chip_SetupCoreClock+0xda>
1a001878:	697b      	ldr	r3, [r7, #20]
1a00187a:	3b01      	subs	r3, #1
1a00187c:	617b      	str	r3, [r7, #20]
1a00187e:	f107 0308 	add.w	r3, r7, #8
1a001882:	4618      	mov	r0, r3
1a001884:	f7ff ff50 	bl	1a001728 <Chip_Clock_SetupMainPLL>
1a001888:	79bb      	ldrb	r3, [r7, #6]
1a00188a:	2b00      	cmp	r3, #0
1a00188c:	d01e      	beq.n	1a0018cc <Chip_SetupCoreClock+0x138>
1a00188e:	2300      	movs	r3, #0
1a001890:	637b      	str	r3, [r7, #52]	; 0x34
1a001892:	e018      	b.n	1a0018c6 <Chip_SetupCoreClock+0x132>
1a001894:	4a10      	ldr	r2, [pc, #64]	; (1a0018d8 <Chip_SetupCoreClock+0x144>)
1a001896:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a001898:	f812 0023 	ldrb.w	r0, [r2, r3, lsl #2]
1a00189c:	4a0e      	ldr	r2, [pc, #56]	; (1a0018d8 <Chip_SetupCoreClock+0x144>)
1a00189e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0018a0:	009b      	lsls	r3, r3, #2
1a0018a2:	4413      	add	r3, r2
1a0018a4:	7859      	ldrb	r1, [r3, #1]
1a0018a6:	4a0c      	ldr	r2, [pc, #48]	; (1a0018d8 <Chip_SetupCoreClock+0x144>)
1a0018a8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0018aa:	009b      	lsls	r3, r3, #2
1a0018ac:	4413      	add	r3, r2
1a0018ae:	789c      	ldrb	r4, [r3, #2]
1a0018b0:	4a09      	ldr	r2, [pc, #36]	; (1a0018d8 <Chip_SetupCoreClock+0x144>)
1a0018b2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0018b4:	009b      	lsls	r3, r3, #2
1a0018b6:	4413      	add	r3, r2
1a0018b8:	78db      	ldrb	r3, [r3, #3]
1a0018ba:	4622      	mov	r2, r4
1a0018bc:	f000 fd3a 	bl	1a002334 <Chip_Clock_SetBaseClock>
1a0018c0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0018c2:	3301      	adds	r3, #1
1a0018c4:	637b      	str	r3, [r7, #52]	; 0x34
1a0018c6:	6b7b      	ldr	r3, [r7, #52]	; 0x34
1a0018c8:	2b11      	cmp	r3, #17
1a0018ca:	d9e3      	bls.n	1a001894 <Chip_SetupCoreClock+0x100>
1a0018cc:	bf00      	nop
1a0018ce:	373c      	adds	r7, #60	; 0x3c
1a0018d0:	46bd      	mov	sp, r7
1a0018d2:	bd90      	pop	{r4, r7, pc}
1a0018d4:	068e7780 	.word	0x068e7780
1a0018d8:	1a002660 	.word	0x1a002660

1a0018dc <Chip_SetupXtalClocking>:
1a0018dc:	b580      	push	{r7, lr}
1a0018de:	af00      	add	r7, sp, #0
1a0018e0:	2201      	movs	r2, #1
1a0018e2:	4903      	ldr	r1, [pc, #12]	; (1a0018f0 <Chip_SetupXtalClocking+0x14>)
1a0018e4:	2006      	movs	r0, #6
1a0018e6:	f7ff ff55 	bl	1a001794 <Chip_SetupCoreClock>
1a0018ea:	bf00      	nop
1a0018ec:	bd80      	pop	{r7, pc}
1a0018ee:	bf00      	nop
1a0018f0:	0c28cb00 	.word	0x0c28cb00

1a0018f4 <Chip_UART_TXDisable>:
1a0018f4:	b480      	push	{r7}
1a0018f6:	b083      	sub	sp, #12
1a0018f8:	af00      	add	r7, sp, #0
1a0018fa:	6078      	str	r0, [r7, #4]
1a0018fc:	687b      	ldr	r3, [r7, #4]
1a0018fe:	2200      	movs	r2, #0
1a001900:	65da      	str	r2, [r3, #92]	; 0x5c
1a001902:	bf00      	nop
1a001904:	370c      	adds	r7, #12
1a001906:	46bd      	mov	sp, r7
1a001908:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00190c:	4770      	bx	lr

1a00190e <Chip_UART_SetupFIFOS>:
1a00190e:	b480      	push	{r7}
1a001910:	b083      	sub	sp, #12
1a001912:	af00      	add	r7, sp, #0
1a001914:	6078      	str	r0, [r7, #4]
1a001916:	6039      	str	r1, [r7, #0]
1a001918:	687b      	ldr	r3, [r7, #4]
1a00191a:	683a      	ldr	r2, [r7, #0]
1a00191c:	609a      	str	r2, [r3, #8]
1a00191e:	bf00      	nop
1a001920:	370c      	adds	r7, #12
1a001922:	46bd      	mov	sp, r7
1a001924:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001928:	4770      	bx	lr

1a00192a <Chip_UART_ConfigData>:
1a00192a:	b480      	push	{r7}
1a00192c:	b083      	sub	sp, #12
1a00192e:	af00      	add	r7, sp, #0
1a001930:	6078      	str	r0, [r7, #4]
1a001932:	6039      	str	r1, [r7, #0]
1a001934:	687b      	ldr	r3, [r7, #4]
1a001936:	683a      	ldr	r2, [r7, #0]
1a001938:	60da      	str	r2, [r3, #12]
1a00193a:	bf00      	nop
1a00193c:	370c      	adds	r7, #12
1a00193e:	46bd      	mov	sp, r7
1a001940:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001944:	4770      	bx	lr

1a001946 <Chip_UART_EnableDivisorAccess>:
1a001946:	b480      	push	{r7}
1a001948:	b083      	sub	sp, #12
1a00194a:	af00      	add	r7, sp, #0
1a00194c:	6078      	str	r0, [r7, #4]
1a00194e:	687b      	ldr	r3, [r7, #4]
1a001950:	68db      	ldr	r3, [r3, #12]
1a001952:	f043 0280 	orr.w	r2, r3, #128	; 0x80
1a001956:	687b      	ldr	r3, [r7, #4]
1a001958:	60da      	str	r2, [r3, #12]
1a00195a:	bf00      	nop
1a00195c:	370c      	adds	r7, #12
1a00195e:	46bd      	mov	sp, r7
1a001960:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001964:	4770      	bx	lr

1a001966 <Chip_UART_DisableDivisorAccess>:
1a001966:	b480      	push	{r7}
1a001968:	b083      	sub	sp, #12
1a00196a:	af00      	add	r7, sp, #0
1a00196c:	6078      	str	r0, [r7, #4]
1a00196e:	687b      	ldr	r3, [r7, #4]
1a001970:	68db      	ldr	r3, [r3, #12]
1a001972:	f023 0280 	bic.w	r2, r3, #128	; 0x80
1a001976:	687b      	ldr	r3, [r7, #4]
1a001978:	60da      	str	r2, [r3, #12]
1a00197a:	bf00      	nop
1a00197c:	370c      	adds	r7, #12
1a00197e:	46bd      	mov	sp, r7
1a001980:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001984:	4770      	bx	lr

1a001986 <Chip_UART_SetDivisorLatches>:
1a001986:	b480      	push	{r7}
1a001988:	b083      	sub	sp, #12
1a00198a:	af00      	add	r7, sp, #0
1a00198c:	6078      	str	r0, [r7, #4]
1a00198e:	460b      	mov	r3, r1
1a001990:	70fb      	strb	r3, [r7, #3]
1a001992:	4613      	mov	r3, r2
1a001994:	70bb      	strb	r3, [r7, #2]
1a001996:	78fa      	ldrb	r2, [r7, #3]
1a001998:	687b      	ldr	r3, [r7, #4]
1a00199a:	601a      	str	r2, [r3, #0]
1a00199c:	78ba      	ldrb	r2, [r7, #2]
1a00199e:	687b      	ldr	r3, [r7, #4]
1a0019a0:	605a      	str	r2, [r3, #4]
1a0019a2:	bf00      	nop
1a0019a4:	370c      	adds	r7, #12
1a0019a6:	46bd      	mov	sp, r7
1a0019a8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0019ac:	4770      	bx	lr
1a0019ae:	Address 0x000000001a0019ae is out of bounds.


1a0019b0 <Chip_UART_GetIndex>:
1a0019b0:	b480      	push	{r7}
1a0019b2:	b085      	sub	sp, #20
1a0019b4:	af00      	add	r7, sp, #0
1a0019b6:	6078      	str	r0, [r7, #4]
1a0019b8:	687b      	ldr	r3, [r7, #4]
1a0019ba:	60fb      	str	r3, [r7, #12]
1a0019bc:	68fb      	ldr	r3, [r7, #12]
1a0019be:	4a10      	ldr	r2, [pc, #64]	; (1a001a00 <Chip_UART_GetIndex+0x50>)
1a0019c0:	4293      	cmp	r3, r2
1a0019c2:	d00f      	beq.n	1a0019e4 <Chip_UART_GetIndex+0x34>
1a0019c4:	4a0e      	ldr	r2, [pc, #56]	; (1a001a00 <Chip_UART_GetIndex+0x50>)
1a0019c6:	4293      	cmp	r3, r2
1a0019c8:	d803      	bhi.n	1a0019d2 <Chip_UART_GetIndex+0x22>
1a0019ca:	4a0e      	ldr	r2, [pc, #56]	; (1a001a04 <Chip_UART_GetIndex+0x54>)
1a0019cc:	4293      	cmp	r3, r2
1a0019ce:	d007      	beq.n	1a0019e0 <Chip_UART_GetIndex+0x30>
1a0019d0:	e00e      	b.n	1a0019f0 <Chip_UART_GetIndex+0x40>
1a0019d2:	4a0d      	ldr	r2, [pc, #52]	; (1a001a08 <Chip_UART_GetIndex+0x58>)
1a0019d4:	4293      	cmp	r3, r2
1a0019d6:	d007      	beq.n	1a0019e8 <Chip_UART_GetIndex+0x38>
1a0019d8:	4a0c      	ldr	r2, [pc, #48]	; (1a001a0c <Chip_UART_GetIndex+0x5c>)
1a0019da:	4293      	cmp	r3, r2
1a0019dc:	d006      	beq.n	1a0019ec <Chip_UART_GetIndex+0x3c>
1a0019de:	e007      	b.n	1a0019f0 <Chip_UART_GetIndex+0x40>
1a0019e0:	2300      	movs	r3, #0
1a0019e2:	e006      	b.n	1a0019f2 <Chip_UART_GetIndex+0x42>
1a0019e4:	2301      	movs	r3, #1
1a0019e6:	e004      	b.n	1a0019f2 <Chip_UART_GetIndex+0x42>
1a0019e8:	2302      	movs	r3, #2
1a0019ea:	e002      	b.n	1a0019f2 <Chip_UART_GetIndex+0x42>
1a0019ec:	2303      	movs	r3, #3
1a0019ee:	e000      	b.n	1a0019f2 <Chip_UART_GetIndex+0x42>
1a0019f0:	2300      	movs	r3, #0
1a0019f2:	4618      	mov	r0, r3
1a0019f4:	3714      	adds	r7, #20
1a0019f6:	46bd      	mov	sp, r7
1a0019f8:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0019fc:	4770      	bx	lr
1a0019fe:	bf00      	nop
1a001a00:	40082000 	.word	0x40082000
1a001a04:	40081000 	.word	0x40081000
1a001a08:	400c1000 	.word	0x400c1000
1a001a0c:	400c2000 	.word	0x400c2000

1a001a10 <Chip_UART_Init>:
1a001a10:	b580      	push	{r7, lr}
1a001a12:	b084      	sub	sp, #16
1a001a14:	af00      	add	r7, sp, #0
1a001a16:	6078      	str	r0, [r7, #4]
1a001a18:	68fb      	ldr	r3, [r7, #12]
1a001a1a:	6878      	ldr	r0, [r7, #4]
1a001a1c:	f7ff ffc8 	bl	1a0019b0 <Chip_UART_GetIndex>
1a001a20:	4602      	mov	r2, r0
1a001a22:	4b1b      	ldr	r3, [pc, #108]	; (1a001a90 <Chip_UART_Init+0x80>)
1a001a24:	f833 0012 	ldrh.w	r0, [r3, r2, lsl #1]
1a001a28:	2301      	movs	r3, #1
1a001a2a:	2201      	movs	r2, #1
1a001a2c:	2101      	movs	r1, #1
1a001a2e:	f000 fcf5 	bl	1a00241c <Chip_Clock_EnableOpts>
1a001a32:	2107      	movs	r1, #7
1a001a34:	6878      	ldr	r0, [r7, #4]
1a001a36:	f7ff ff6a 	bl	1a00190e <Chip_UART_SetupFIFOS>
1a001a3a:	6878      	ldr	r0, [r7, #4]
1a001a3c:	f7ff ff5a 	bl	1a0018f4 <Chip_UART_TXDisable>
1a001a40:	687b      	ldr	r3, [r7, #4]
1a001a42:	2200      	movs	r2, #0
1a001a44:	605a      	str	r2, [r3, #4]
1a001a46:	687b      	ldr	r3, [r7, #4]
1a001a48:	2200      	movs	r2, #0
1a001a4a:	60da      	str	r2, [r3, #12]
1a001a4c:	687b      	ldr	r3, [r7, #4]
1a001a4e:	2200      	movs	r2, #0
1a001a50:	621a      	str	r2, [r3, #32]
1a001a52:	687b      	ldr	r3, [r7, #4]
1a001a54:	2200      	movs	r2, #0
1a001a56:	64da      	str	r2, [r3, #76]	; 0x4c
1a001a58:	687b      	ldr	r3, [r7, #4]
1a001a5a:	2200      	movs	r2, #0
1a001a5c:	655a      	str	r2, [r3, #84]	; 0x54
1a001a5e:	687b      	ldr	r3, [r7, #4]
1a001a60:	2200      	movs	r2, #0
1a001a62:	651a      	str	r2, [r3, #80]	; 0x50
1a001a64:	687b      	ldr	r3, [r7, #4]
1a001a66:	4a0b      	ldr	r2, [pc, #44]	; (1a001a94 <Chip_UART_Init+0x84>)
1a001a68:	4293      	cmp	r3, r2
1a001a6a:	d105      	bne.n	1a001a78 <Chip_UART_Init+0x68>
1a001a6c:	687b      	ldr	r3, [r7, #4]
1a001a6e:	2200      	movs	r2, #0
1a001a70:	611a      	str	r2, [r3, #16]
1a001a72:	687b      	ldr	r3, [r7, #4]
1a001a74:	699b      	ldr	r3, [r3, #24]
1a001a76:	60fb      	str	r3, [r7, #12]
1a001a78:	2103      	movs	r1, #3
1a001a7a:	6878      	ldr	r0, [r7, #4]
1a001a7c:	f7ff ff55 	bl	1a00192a <Chip_UART_ConfigData>
1a001a80:	687b      	ldr	r3, [r7, #4]
1a001a82:	2210      	movs	r2, #16
1a001a84:	629a      	str	r2, [r3, #40]	; 0x28
1a001a86:	bf00      	nop
1a001a88:	3710      	adds	r7, #16
1a001a8a:	46bd      	mov	sp, r7
1a001a8c:	bd80      	pop	{r7, pc}
1a001a8e:	bf00      	nop
1a001a90:	1a0026a8 	.word	0x1a0026a8
1a001a94:	40082000 	.word	0x40082000

1a001a98 <Chip_UART_SetBaud>:
1a001a98:	b580      	push	{r7, lr}
1a001a9a:	b086      	sub	sp, #24
1a001a9c:	af00      	add	r7, sp, #0
1a001a9e:	6078      	str	r0, [r7, #4]
1a001aa0:	6039      	str	r1, [r7, #0]
1a001aa2:	6878      	ldr	r0, [r7, #4]
1a001aa4:	f7ff ff84 	bl	1a0019b0 <Chip_UART_GetIndex>
1a001aa8:	4602      	mov	r2, r0
1a001aaa:	4b16      	ldr	r3, [pc, #88]	; (1a001b04 <Chip_UART_SetBaud+0x6c>)
1a001aac:	f833 3012 	ldrh.w	r3, [r3, r2, lsl #1]
1a001ab0:	4618      	mov	r0, r3
1a001ab2:	f000 fd21 	bl	1a0024f8 <Chip_Clock_GetRate>
1a001ab6:	6178      	str	r0, [r7, #20]
1a001ab8:	683b      	ldr	r3, [r7, #0]
1a001aba:	011b      	lsls	r3, r3, #4
1a001abc:	697a      	ldr	r2, [r7, #20]
1a001abe:	fbb2 f3f3 	udiv	r3, r2, r3
1a001ac2:	613b      	str	r3, [r7, #16]
1a001ac4:	693b      	ldr	r3, [r7, #16]
1a001ac6:	0a1b      	lsrs	r3, r3, #8
1a001ac8:	60fb      	str	r3, [r7, #12]
1a001aca:	68fb      	ldr	r3, [r7, #12]
1a001acc:	021b      	lsls	r3, r3, #8
1a001ace:	693a      	ldr	r2, [r7, #16]
1a001ad0:	1ad3      	subs	r3, r2, r3
1a001ad2:	60bb      	str	r3, [r7, #8]
1a001ad4:	6878      	ldr	r0, [r7, #4]
1a001ad6:	f7ff ff36 	bl	1a001946 <Chip_UART_EnableDivisorAccess>
1a001ada:	68bb      	ldr	r3, [r7, #8]
1a001adc:	b2db      	uxtb	r3, r3
1a001ade:	68fa      	ldr	r2, [r7, #12]
1a001ae0:	b2d2      	uxtb	r2, r2
1a001ae2:	4619      	mov	r1, r3
1a001ae4:	6878      	ldr	r0, [r7, #4]
1a001ae6:	f7ff ff4e 	bl	1a001986 <Chip_UART_SetDivisorLatches>
1a001aea:	6878      	ldr	r0, [r7, #4]
1a001aec:	f7ff ff3b 	bl	1a001966 <Chip_UART_DisableDivisorAccess>
1a001af0:	697a      	ldr	r2, [r7, #20]
1a001af2:	693b      	ldr	r3, [r7, #16]
1a001af4:	fbb2 f3f3 	udiv	r3, r2, r3
1a001af8:	091b      	lsrs	r3, r3, #4
1a001afa:	4618      	mov	r0, r3
1a001afc:	3718      	adds	r7, #24
1a001afe:	46bd      	mov	sp, r7
1a001b00:	bd80      	pop	{r7, pc}
1a001b02:	bf00      	nop
1a001b04:	1a0026b0 	.word	0x1a0026b0

1a001b08 <Chip_TIMER_Enable>:
1a001b08:	b480      	push	{r7}
1a001b0a:	b083      	sub	sp, #12
1a001b0c:	af00      	add	r7, sp, #0
1a001b0e:	6078      	str	r0, [r7, #4]
1a001b10:	687b      	ldr	r3, [r7, #4]
1a001b12:	685b      	ldr	r3, [r3, #4]
1a001b14:	f043 0201 	orr.w	r2, r3, #1
1a001b18:	687b      	ldr	r3, [r7, #4]
1a001b1a:	605a      	str	r2, [r3, #4]
1a001b1c:	bf00      	nop
1a001b1e:	370c      	adds	r7, #12
1a001b20:	46bd      	mov	sp, r7
1a001b22:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b26:	4770      	bx	lr

1a001b28 <Chip_TIMER_PrescaleSet>:
1a001b28:	b480      	push	{r7}
1a001b2a:	b083      	sub	sp, #12
1a001b2c:	af00      	add	r7, sp, #0
1a001b2e:	6078      	str	r0, [r7, #4]
1a001b30:	6039      	str	r1, [r7, #0]
1a001b32:	687b      	ldr	r3, [r7, #4]
1a001b34:	683a      	ldr	r2, [r7, #0]
1a001b36:	60da      	str	r2, [r3, #12]
1a001b38:	bf00      	nop
1a001b3a:	370c      	adds	r7, #12
1a001b3c:	46bd      	mov	sp, r7
1a001b3e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001b42:	4770      	bx	lr

1a001b44 <StopWatch_Init>:
1a001b44:	b580      	push	{r7, lr}
1a001b46:	b082      	sub	sp, #8
1a001b48:	af00      	add	r7, sp, #0
1a001b4a:	2308      	movs	r3, #8
1a001b4c:	607b      	str	r3, [r7, #4]
1a001b4e:	4814      	ldr	r0, [pc, #80]	; (1a001ba0 <StopWatch_Init+0x5c>)
1a001b50:	f000 fd54 	bl	1a0025fc <Chip_TIMER_Init>
1a001b54:	687b      	ldr	r3, [r7, #4]
1a001b56:	3b01      	subs	r3, #1
1a001b58:	4619      	mov	r1, r3
1a001b5a:	4811      	ldr	r0, [pc, #68]	; (1a001ba0 <StopWatch_Init+0x5c>)
1a001b5c:	f7ff ffe4 	bl	1a001b28 <Chip_TIMER_PrescaleSet>
1a001b60:	480f      	ldr	r0, [pc, #60]	; (1a001ba0 <StopWatch_Init+0x5c>)
1a001b62:	f7ff ffd1 	bl	1a001b08 <Chip_TIMER_Enable>
1a001b66:	2084      	movs	r0, #132	; 0x84
1a001b68:	f000 fcc6 	bl	1a0024f8 <Chip_Clock_GetRate>
1a001b6c:	4602      	mov	r2, r0
1a001b6e:	687b      	ldr	r3, [r7, #4]
1a001b70:	fbb2 f3f3 	udiv	r3, r2, r3
1a001b74:	4a0b      	ldr	r2, [pc, #44]	; (1a001ba4 <StopWatch_Init+0x60>)
1a001b76:	6013      	str	r3, [r2, #0]
1a001b78:	4b0a      	ldr	r3, [pc, #40]	; (1a001ba4 <StopWatch_Init+0x60>)
1a001b7a:	681b      	ldr	r3, [r3, #0]
1a001b7c:	4a0a      	ldr	r2, [pc, #40]	; (1a001ba8 <StopWatch_Init+0x64>)
1a001b7e:	fba2 2303 	umull	r2, r3, r2, r3
1a001b82:	099b      	lsrs	r3, r3, #6
1a001b84:	4a09      	ldr	r2, [pc, #36]	; (1a001bac <StopWatch_Init+0x68>)
1a001b86:	6013      	str	r3, [r2, #0]
1a001b88:	4b06      	ldr	r3, [pc, #24]	; (1a001ba4 <StopWatch_Init+0x60>)
1a001b8a:	681b      	ldr	r3, [r3, #0]
1a001b8c:	4a08      	ldr	r2, [pc, #32]	; (1a001bb0 <StopWatch_Init+0x6c>)
1a001b8e:	fba2 2303 	umull	r2, r3, r2, r3
1a001b92:	0c9b      	lsrs	r3, r3, #18
1a001b94:	4a07      	ldr	r2, [pc, #28]	; (1a001bb4 <StopWatch_Init+0x70>)
1a001b96:	6013      	str	r3, [r2, #0]
1a001b98:	bf00      	nop
1a001b9a:	3708      	adds	r7, #8
1a001b9c:	46bd      	mov	sp, r7
1a001b9e:	bd80      	pop	{r7, pc}
1a001ba0:	40084000 	.word	0x40084000
1a001ba4:	10000044 	.word	0x10000044
1a001ba8:	10624dd3 	.word	0x10624dd3
1a001bac:	10000048 	.word	0x10000048
1a001bb0:	431bde83 	.word	0x431bde83
1a001bb4:	1000004c 	.word	0x1000004c

1a001bb8 <ABS>:
1a001bb8:	b480      	push	{r7}
1a001bba:	b083      	sub	sp, #12
1a001bbc:	af00      	add	r7, sp, #0
1a001bbe:	6078      	str	r0, [r7, #4]
1a001bc0:	687b      	ldr	r3, [r7, #4]
1a001bc2:	2b00      	cmp	r3, #0
1a001bc4:	da02      	bge.n	1a001bcc <ABS+0x14>
1a001bc6:	687b      	ldr	r3, [r7, #4]
1a001bc8:	425b      	negs	r3, r3
1a001bca:	e000      	b.n	1a001bce <ABS+0x16>
1a001bcc:	687b      	ldr	r3, [r7, #4]
1a001bce:	4618      	mov	r0, r3
1a001bd0:	370c      	adds	r7, #12
1a001bd2:	46bd      	mov	sp, r7
1a001bd4:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001bd8:	4770      	bx	lr
1a001bda:	Address 0x000000001a001bda is out of bounds.


1a001bdc <pll_calc_divs>:
1a001bdc:	b580      	push	{r7, lr}
1a001bde:	b088      	sub	sp, #32
1a001be0:	af00      	add	r7, sp, #0
1a001be2:	6078      	str	r0, [r7, #4]
1a001be4:	6039      	str	r1, [r7, #0]
1a001be6:	687b      	ldr	r3, [r7, #4]
1a001be8:	61fb      	str	r3, [r7, #28]
1a001bea:	683b      	ldr	r3, [r7, #0]
1a001bec:	681b      	ldr	r3, [r3, #0]
1a001bee:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001bf2:	2b00      	cmp	r3, #0
1a001bf4:	d005      	beq.n	1a001c02 <pll_calc_divs+0x26>
1a001bf6:	683b      	ldr	r3, [r7, #0]
1a001bf8:	681b      	ldr	r3, [r3, #0]
1a001bfa:	f023 0240 	bic.w	r2, r3, #64	; 0x40
1a001bfe:	683b      	ldr	r3, [r7, #0]
1a001c00:	601a      	str	r2, [r3, #0]
1a001c02:	2301      	movs	r3, #1
1a001c04:	61bb      	str	r3, [r7, #24]
1a001c06:	e06f      	b.n	1a001ce8 <pll_calc_divs+0x10c>
1a001c08:	2300      	movs	r3, #0
1a001c0a:	613b      	str	r3, [r7, #16]
1a001c0c:	e066      	b.n	1a001cdc <pll_calc_divs+0x100>
1a001c0e:	2301      	movs	r3, #1
1a001c10:	617b      	str	r3, [r7, #20]
1a001c12:	e05a      	b.n	1a001cca <pll_calc_divs+0xee>
1a001c14:	683b      	ldr	r3, [r7, #0]
1a001c16:	681b      	ldr	r3, [r3, #0]
1a001c18:	f003 0340 	and.w	r3, r3, #64	; 0x40
1a001c1c:	2b00      	cmp	r3, #0
1a001c1e:	d00e      	beq.n	1a001c3e <pll_calc_divs+0x62>
1a001c20:	693b      	ldr	r3, [r7, #16]
1a001c22:	3301      	adds	r3, #1
1a001c24:	697a      	ldr	r2, [r7, #20]
1a001c26:	fa02 f303 	lsl.w	r3, r2, r3
1a001c2a:	461a      	mov	r2, r3
1a001c2c:	683b      	ldr	r3, [r7, #0]
1a001c2e:	695b      	ldr	r3, [r3, #20]
1a001c30:	fb03 f202 	mul.w	r2, r3, r2
1a001c34:	69bb      	ldr	r3, [r7, #24]
1a001c36:	fbb2 f3f3 	udiv	r3, r2, r3
1a001c3a:	60fb      	str	r3, [r7, #12]
1a001c3c:	e008      	b.n	1a001c50 <pll_calc_divs+0x74>
1a001c3e:	683b      	ldr	r3, [r7, #0]
1a001c40:	695b      	ldr	r3, [r3, #20]
1a001c42:	697a      	ldr	r2, [r7, #20]
1a001c44:	fb02 f203 	mul.w	r2, r2, r3
1a001c48:	69bb      	ldr	r3, [r7, #24]
1a001c4a:	fbb2 f3f3 	udiv	r3, r2, r3
1a001c4e:	60fb      	str	r3, [r7, #12]
1a001c50:	68fb      	ldr	r3, [r7, #12]
1a001c52:	4a29      	ldr	r2, [pc, #164]	; (1a001cf8 <pll_calc_divs+0x11c>)
1a001c54:	4293      	cmp	r3, r2
1a001c56:	d934      	bls.n	1a001cc2 <pll_calc_divs+0xe6>
1a001c58:	68fb      	ldr	r3, [r7, #12]
1a001c5a:	4a28      	ldr	r2, [pc, #160]	; (1a001cfc <pll_calc_divs+0x120>)
1a001c5c:	4293      	cmp	r3, r2
1a001c5e:	d839      	bhi.n	1a001cd4 <pll_calc_divs+0xf8>
1a001c60:	683b      	ldr	r3, [r7, #0]
1a001c62:	681b      	ldr	r3, [r3, #0]
1a001c64:	f003 0380 	and.w	r3, r3, #128	; 0x80
1a001c68:	2b00      	cmp	r3, #0
1a001c6a:	d002      	beq.n	1a001c72 <pll_calc_divs+0x96>
1a001c6c:	68fb      	ldr	r3, [r7, #12]
1a001c6e:	60bb      	str	r3, [r7, #8]
1a001c70:	e005      	b.n	1a001c7e <pll_calc_divs+0xa2>
1a001c72:	693b      	ldr	r3, [r7, #16]
1a001c74:	3301      	adds	r3, #1
1a001c76:	68fa      	ldr	r2, [r7, #12]
1a001c78:	fa22 f303 	lsr.w	r3, r2, r3
1a001c7c:	60bb      	str	r3, [r7, #8]
1a001c7e:	687a      	ldr	r2, [r7, #4]
1a001c80:	68bb      	ldr	r3, [r7, #8]
1a001c82:	1ad3      	subs	r3, r2, r3
1a001c84:	4618      	mov	r0, r3
1a001c86:	f7ff ff97 	bl	1a001bb8 <ABS>
1a001c8a:	4602      	mov	r2, r0
1a001c8c:	69fb      	ldr	r3, [r7, #28]
1a001c8e:	4293      	cmp	r3, r2
1a001c90:	d918      	bls.n	1a001cc4 <pll_calc_divs+0xe8>
1a001c92:	683b      	ldr	r3, [r7, #0]
1a001c94:	69ba      	ldr	r2, [r7, #24]
1a001c96:	609a      	str	r2, [r3, #8]
1a001c98:	693b      	ldr	r3, [r7, #16]
1a001c9a:	1c5a      	adds	r2, r3, #1
1a001c9c:	683b      	ldr	r3, [r7, #0]
1a001c9e:	60da      	str	r2, [r3, #12]
1a001ca0:	683b      	ldr	r3, [r7, #0]
1a001ca2:	697a      	ldr	r2, [r7, #20]
1a001ca4:	611a      	str	r2, [r3, #16]
1a001ca6:	683b      	ldr	r3, [r7, #0]
1a001ca8:	68ba      	ldr	r2, [r7, #8]
1a001caa:	619a      	str	r2, [r3, #24]
1a001cac:	683b      	ldr	r3, [r7, #0]
1a001cae:	68fa      	ldr	r2, [r7, #12]
1a001cb0:	61da      	str	r2, [r3, #28]
1a001cb2:	687a      	ldr	r2, [r7, #4]
1a001cb4:	68bb      	ldr	r3, [r7, #8]
1a001cb6:	1ad3      	subs	r3, r2, r3
1a001cb8:	4618      	mov	r0, r3
1a001cba:	f7ff ff7d 	bl	1a001bb8 <ABS>
1a001cbe:	61f8      	str	r0, [r7, #28]
1a001cc0:	e000      	b.n	1a001cc4 <pll_calc_divs+0xe8>
1a001cc2:	bf00      	nop
1a001cc4:	697b      	ldr	r3, [r7, #20]
1a001cc6:	3301      	adds	r3, #1
1a001cc8:	617b      	str	r3, [r7, #20]
1a001cca:	697b      	ldr	r3, [r7, #20]
1a001ccc:	f5b3 7f80 	cmp.w	r3, #256	; 0x100
1a001cd0:	dda0      	ble.n	1a001c14 <pll_calc_divs+0x38>
1a001cd2:	e000      	b.n	1a001cd6 <pll_calc_divs+0xfa>
1a001cd4:	bf00      	nop
1a001cd6:	693b      	ldr	r3, [r7, #16]
1a001cd8:	3301      	adds	r3, #1
1a001cda:	613b      	str	r3, [r7, #16]
1a001cdc:	693b      	ldr	r3, [r7, #16]
1a001cde:	2b03      	cmp	r3, #3
1a001ce0:	dd95      	ble.n	1a001c0e <pll_calc_divs+0x32>
1a001ce2:	69bb      	ldr	r3, [r7, #24]
1a001ce4:	3301      	adds	r3, #1
1a001ce6:	61bb      	str	r3, [r7, #24]
1a001ce8:	69bb      	ldr	r3, [r7, #24]
1a001cea:	2b04      	cmp	r3, #4
1a001cec:	dd8c      	ble.n	1a001c08 <pll_calc_divs+0x2c>
1a001cee:	bf00      	nop
1a001cf0:	3720      	adds	r7, #32
1a001cf2:	46bd      	mov	sp, r7
1a001cf4:	bd80      	pop	{r7, pc}
1a001cf6:	bf00      	nop
1a001cf8:	094c5eff 	.word	0x094c5eff
1a001cfc:	1312d000 	.word	0x1312d000

1a001d00 <pll_get_frac>:
1a001d00:	b5b0      	push	{r4, r5, r7, lr}
1a001d02:	b09e      	sub	sp, #120	; 0x78
1a001d04:	af00      	add	r7, sp, #0
1a001d06:	6078      	str	r0, [r7, #4]
1a001d08:	6039      	str	r1, [r7, #0]
1a001d0a:	f107 030c 	add.w	r3, r7, #12
1a001d0e:	2260      	movs	r2, #96	; 0x60
1a001d10:	2100      	movs	r1, #0
1a001d12:	4618      	mov	r0, r3
1a001d14:	f7fe faf4 	bl	1a000300 <memset>
1a001d18:	68fb      	ldr	r3, [r7, #12]
1a001d1a:	f043 0380 	orr.w	r3, r3, #128	; 0x80
1a001d1e:	60fb      	str	r3, [r7, #12]
1a001d20:	683b      	ldr	r3, [r7, #0]
1a001d22:	695b      	ldr	r3, [r3, #20]
1a001d24:	623b      	str	r3, [r7, #32]
1a001d26:	683b      	ldr	r3, [r7, #0]
1a001d28:	791b      	ldrb	r3, [r3, #4]
1a001d2a:	743b      	strb	r3, [r7, #16]
1a001d2c:	f107 030c 	add.w	r3, r7, #12
1a001d30:	4619      	mov	r1, r3
1a001d32:	6878      	ldr	r0, [r7, #4]
1a001d34:	f7ff ff52 	bl	1a001bdc <pll_calc_divs>
1a001d38:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001d3a:	687a      	ldr	r2, [r7, #4]
1a001d3c:	429a      	cmp	r2, r3
1a001d3e:	d10a      	bne.n	1a001d56 <pll_get_frac+0x56>
1a001d40:	683b      	ldr	r3, [r7, #0]
1a001d42:	461d      	mov	r5, r3
1a001d44:	f107 040c 	add.w	r4, r7, #12
1a001d48:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001d4a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001d4c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001d50:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001d54:	e08e      	b.n	1a001e74 <pll_get_frac+0x174>
1a001d56:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a001d58:	687a      	ldr	r2, [r7, #4]
1a001d5a:	1ad3      	subs	r3, r2, r3
1a001d5c:	4618      	mov	r0, r3
1a001d5e:	f7ff ff2b 	bl	1a001bb8 <ABS>
1a001d62:	4603      	mov	r3, r0
1a001d64:	66fb      	str	r3, [r7, #108]	; 0x6c
1a001d66:	6cfb      	ldr	r3, [r7, #76]	; 0x4c
1a001d68:	f023 0340 	bic.w	r3, r3, #64	; 0x40
1a001d6c:	64fb      	str	r3, [r7, #76]	; 0x4c
1a001d6e:	683b      	ldr	r3, [r7, #0]
1a001d70:	695b      	ldr	r3, [r3, #20]
1a001d72:	663b      	str	r3, [r7, #96]	; 0x60
1a001d74:	683b      	ldr	r3, [r7, #0]
1a001d76:	791b      	ldrb	r3, [r3, #4]
1a001d78:	f887 3050 	strb.w	r3, [r7, #80]	; 0x50
1a001d7c:	f107 030c 	add.w	r3, r7, #12
1a001d80:	3340      	adds	r3, #64	; 0x40
1a001d82:	4619      	mov	r1, r3
1a001d84:	6878      	ldr	r0, [r7, #4]
1a001d86:	f7ff ff29 	bl	1a001bdc <pll_calc_divs>
1a001d8a:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001d8c:	687a      	ldr	r2, [r7, #4]
1a001d8e:	429a      	cmp	r2, r3
1a001d90:	d10a      	bne.n	1a001da8 <pll_get_frac+0xa8>
1a001d92:	683b      	ldr	r3, [r7, #0]
1a001d94:	461d      	mov	r5, r3
1a001d96:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001d9a:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001d9c:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001d9e:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001da2:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001da6:	e065      	b.n	1a001e74 <pll_get_frac+0x174>
1a001da8:	6e7b      	ldr	r3, [r7, #100]	; 0x64
1a001daa:	687a      	ldr	r2, [r7, #4]
1a001dac:	1ad3      	subs	r3, r2, r3
1a001dae:	4618      	mov	r0, r3
1a001db0:	f7ff ff02 	bl	1a001bb8 <ABS>
1a001db4:	4603      	mov	r3, r0
1a001db6:	677b      	str	r3, [r7, #116]	; 0x74
1a001db8:	687b      	ldr	r3, [r7, #4]
1a001dba:	4a30      	ldr	r2, [pc, #192]	; (1a001e7c <pll_get_frac+0x17c>)
1a001dbc:	4293      	cmp	r3, r2
1a001dbe:	d81a      	bhi.n	1a001df6 <pll_get_frac+0xf6>
1a001dc0:	2340      	movs	r3, #64	; 0x40
1a001dc2:	62fb      	str	r3, [r7, #44]	; 0x2c
1a001dc4:	683b      	ldr	r3, [r7, #0]
1a001dc6:	695b      	ldr	r3, [r3, #20]
1a001dc8:	643b      	str	r3, [r7, #64]	; 0x40
1a001dca:	f107 030c 	add.w	r3, r7, #12
1a001dce:	3320      	adds	r3, #32
1a001dd0:	4619      	mov	r1, r3
1a001dd2:	6878      	ldr	r0, [r7, #4]
1a001dd4:	f7ff ff02 	bl	1a001bdc <pll_calc_divs>
1a001dd8:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001dda:	687a      	ldr	r2, [r7, #4]
1a001ddc:	429a      	cmp	r2, r3
1a001dde:	d10a      	bne.n	1a001df6 <pll_get_frac+0xf6>
1a001de0:	683b      	ldr	r3, [r7, #0]
1a001de2:	461d      	mov	r5, r3
1a001de4:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001de8:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001dea:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001dec:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001df0:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001df4:	e03e      	b.n	1a001e74 <pll_get_frac+0x174>
1a001df6:	6c7b      	ldr	r3, [r7, #68]	; 0x44
1a001df8:	687a      	ldr	r2, [r7, #4]
1a001dfa:	1ad3      	subs	r3, r2, r3
1a001dfc:	4618      	mov	r0, r3
1a001dfe:	f7ff fedb 	bl	1a001bb8 <ABS>
1a001e02:	4603      	mov	r3, r0
1a001e04:	673b      	str	r3, [r7, #112]	; 0x70
1a001e06:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001e08:	6f3b      	ldr	r3, [r7, #112]	; 0x70
1a001e0a:	429a      	cmp	r2, r3
1a001e0c:	dc19      	bgt.n	1a001e42 <pll_get_frac+0x142>
1a001e0e:	6efa      	ldr	r2, [r7, #108]	; 0x6c
1a001e10:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001e12:	429a      	cmp	r2, r3
1a001e14:	dc0a      	bgt.n	1a001e2c <pll_get_frac+0x12c>
1a001e16:	683b      	ldr	r3, [r7, #0]
1a001e18:	461d      	mov	r5, r3
1a001e1a:	f107 040c 	add.w	r4, r7, #12
1a001e1e:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001e20:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001e22:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001e26:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001e2a:	e023      	b.n	1a001e74 <pll_get_frac+0x174>
1a001e2c:	683b      	ldr	r3, [r7, #0]
1a001e2e:	461d      	mov	r5, r3
1a001e30:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001e34:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001e36:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001e38:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001e3c:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001e40:	e018      	b.n	1a001e74 <pll_get_frac+0x174>
1a001e42:	6f3a      	ldr	r2, [r7, #112]	; 0x70
1a001e44:	6f7b      	ldr	r3, [r7, #116]	; 0x74
1a001e46:	429a      	cmp	r2, r3
1a001e48:	dc0a      	bgt.n	1a001e60 <pll_get_frac+0x160>
1a001e4a:	683b      	ldr	r3, [r7, #0]
1a001e4c:	461d      	mov	r5, r3
1a001e4e:	f107 042c 	add.w	r4, r7, #44	; 0x2c
1a001e52:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001e54:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001e56:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001e5a:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001e5e:	e009      	b.n	1a001e74 <pll_get_frac+0x174>
1a001e60:	683b      	ldr	r3, [r7, #0]
1a001e62:	461d      	mov	r5, r3
1a001e64:	f107 044c 	add.w	r4, r7, #76	; 0x4c
1a001e68:	cc0f      	ldmia	r4!, {r0, r1, r2, r3}
1a001e6a:	c50f      	stmia	r5!, {r0, r1, r2, r3}
1a001e6c:	e894 000f 	ldmia.w	r4, {r0, r1, r2, r3}
1a001e70:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
1a001e74:	3778      	adds	r7, #120	; 0x78
1a001e76:	46bd      	mov	sp, r7
1a001e78:	bdb0      	pop	{r4, r5, r7, pc}
1a001e7a:	bf00      	nop
1a001e7c:	068e7780 	.word	0x068e7780

1a001e80 <Chip_Clock_GetDivRate>:
1a001e80:	b580      	push	{r7, lr}
1a001e82:	b084      	sub	sp, #16
1a001e84:	af00      	add	r7, sp, #0
1a001e86:	4603      	mov	r3, r0
1a001e88:	460a      	mov	r2, r1
1a001e8a:	71fb      	strb	r3, [r7, #7]
1a001e8c:	4613      	mov	r3, r2
1a001e8e:	71bb      	strb	r3, [r7, #6]
1a001e90:	79bb      	ldrb	r3, [r7, #6]
1a001e92:	4618      	mov	r0, r3
1a001e94:	f000 f960 	bl	1a002158 <Chip_Clock_GetDividerSource>
1a001e98:	4603      	mov	r3, r0
1a001e9a:	73fb      	strb	r3, [r7, #15]
1a001e9c:	79bb      	ldrb	r3, [r7, #6]
1a001e9e:	4618      	mov	r0, r3
1a001ea0:	f000 f97a 	bl	1a002198 <Chip_Clock_GetDividerDivisor>
1a001ea4:	60b8      	str	r0, [r7, #8]
1a001ea6:	7bfb      	ldrb	r3, [r7, #15]
1a001ea8:	4618      	mov	r0, r3
1a001eaa:	f000 f991 	bl	1a0021d0 <Chip_Clock_GetClockInputHz>
1a001eae:	4602      	mov	r2, r0
1a001eb0:	68bb      	ldr	r3, [r7, #8]
1a001eb2:	3301      	adds	r3, #1
1a001eb4:	fbb2 f3f3 	udiv	r3, r2, r3
1a001eb8:	4618      	mov	r0, r3
1a001eba:	3710      	adds	r7, #16
1a001ebc:	46bd      	mov	sp, r7
1a001ebe:	bd80      	pop	{r7, pc}

1a001ec0 <Chip_Clock_FindBaseClock>:
1a001ec0:	b480      	push	{r7}
1a001ec2:	b085      	sub	sp, #20
1a001ec4:	af00      	add	r7, sp, #0
1a001ec6:	4603      	mov	r3, r0
1a001ec8:	80fb      	strh	r3, [r7, #6]
1a001eca:	231c      	movs	r3, #28
1a001ecc:	73fb      	strb	r3, [r7, #15]
1a001ece:	2300      	movs	r3, #0
1a001ed0:	60bb      	str	r3, [r7, #8]
1a001ed2:	e024      	b.n	1a001f1e <Chip_Clock_FindBaseClock+0x5e>
1a001ed4:	491d      	ldr	r1, [pc, #116]	; (1a001f4c <Chip_Clock_FindBaseClock+0x8c>)
1a001ed6:	68ba      	ldr	r2, [r7, #8]
1a001ed8:	4613      	mov	r3, r2
1a001eda:	005b      	lsls	r3, r3, #1
1a001edc:	4413      	add	r3, r2
1a001ede:	005b      	lsls	r3, r3, #1
1a001ee0:	440b      	add	r3, r1
1a001ee2:	881b      	ldrh	r3, [r3, #0]
1a001ee4:	88fa      	ldrh	r2, [r7, #6]
1a001ee6:	429a      	cmp	r2, r3
1a001ee8:	d316      	bcc.n	1a001f18 <Chip_Clock_FindBaseClock+0x58>
1a001eea:	4918      	ldr	r1, [pc, #96]	; (1a001f4c <Chip_Clock_FindBaseClock+0x8c>)
1a001eec:	68ba      	ldr	r2, [r7, #8]
1a001eee:	4613      	mov	r3, r2
1a001ef0:	005b      	lsls	r3, r3, #1
1a001ef2:	4413      	add	r3, r2
1a001ef4:	005b      	lsls	r3, r3, #1
1a001ef6:	440b      	add	r3, r1
1a001ef8:	3302      	adds	r3, #2
1a001efa:	881b      	ldrh	r3, [r3, #0]
1a001efc:	88fa      	ldrh	r2, [r7, #6]
1a001efe:	429a      	cmp	r2, r3
1a001f00:	d80a      	bhi.n	1a001f18 <Chip_Clock_FindBaseClock+0x58>
1a001f02:	4912      	ldr	r1, [pc, #72]	; (1a001f4c <Chip_Clock_FindBaseClock+0x8c>)
1a001f04:	68ba      	ldr	r2, [r7, #8]
1a001f06:	4613      	mov	r3, r2
1a001f08:	005b      	lsls	r3, r3, #1
1a001f0a:	4413      	add	r3, r2
1a001f0c:	005b      	lsls	r3, r3, #1
1a001f0e:	440b      	add	r3, r1
1a001f10:	3304      	adds	r3, #4
1a001f12:	781b      	ldrb	r3, [r3, #0]
1a001f14:	73fb      	strb	r3, [r7, #15]
1a001f16:	e002      	b.n	1a001f1e <Chip_Clock_FindBaseClock+0x5e>
1a001f18:	68bb      	ldr	r3, [r7, #8]
1a001f1a:	3301      	adds	r3, #1
1a001f1c:	60bb      	str	r3, [r7, #8]
1a001f1e:	7bfb      	ldrb	r3, [r7, #15]
1a001f20:	2b1c      	cmp	r3, #28
1a001f22:	d10b      	bne.n	1a001f3c <Chip_Clock_FindBaseClock+0x7c>
1a001f24:	4909      	ldr	r1, [pc, #36]	; (1a001f4c <Chip_Clock_FindBaseClock+0x8c>)
1a001f26:	68ba      	ldr	r2, [r7, #8]
1a001f28:	4613      	mov	r3, r2
1a001f2a:	005b      	lsls	r3, r3, #1
1a001f2c:	4413      	add	r3, r2
1a001f2e:	005b      	lsls	r3, r3, #1
1a001f30:	440b      	add	r3, r1
1a001f32:	3304      	adds	r3, #4
1a001f34:	781b      	ldrb	r3, [r3, #0]
1a001f36:	7bfa      	ldrb	r2, [r7, #15]
1a001f38:	429a      	cmp	r2, r3
1a001f3a:	d1cb      	bne.n	1a001ed4 <Chip_Clock_FindBaseClock+0x14>
1a001f3c:	7bfb      	ldrb	r3, [r7, #15]
1a001f3e:	4618      	mov	r0, r3
1a001f40:	3714      	adds	r7, #20
1a001f42:	46bd      	mov	sp, r7
1a001f44:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001f48:	4770      	bx	lr
1a001f4a:	bf00      	nop
1a001f4c:	1a0026b8 	.word	0x1a0026b8

1a001f50 <Chip_Clock_EnableCrystal>:
1a001f50:	b480      	push	{r7}
1a001f52:	b083      	sub	sp, #12
1a001f54:	af00      	add	r7, sp, #0
1a001f56:	f44f 737a 	mov.w	r3, #1000	; 0x3e8
1a001f5a:	603b      	str	r3, [r7, #0]
1a001f5c:	4b15      	ldr	r3, [pc, #84]	; (1a001fb4 <Chip_Clock_EnableCrystal+0x64>)
1a001f5e:	699b      	ldr	r3, [r3, #24]
1a001f60:	607b      	str	r3, [r7, #4]
1a001f62:	687b      	ldr	r3, [r7, #4]
1a001f64:	f023 0302 	bic.w	r3, r3, #2
1a001f68:	607b      	str	r3, [r7, #4]
1a001f6a:	4b12      	ldr	r3, [pc, #72]	; (1a001fb4 <Chip_Clock_EnableCrystal+0x64>)
1a001f6c:	699b      	ldr	r3, [r3, #24]
1a001f6e:	687a      	ldr	r2, [r7, #4]
1a001f70:	429a      	cmp	r2, r3
1a001f72:	d002      	beq.n	1a001f7a <Chip_Clock_EnableCrystal+0x2a>
1a001f74:	4a0f      	ldr	r2, [pc, #60]	; (1a001fb4 <Chip_Clock_EnableCrystal+0x64>)
1a001f76:	687b      	ldr	r3, [r7, #4]
1a001f78:	6193      	str	r3, [r2, #24]
1a001f7a:	687b      	ldr	r3, [r7, #4]
1a001f7c:	f023 0301 	bic.w	r3, r3, #1
1a001f80:	607b      	str	r3, [r7, #4]
1a001f82:	4b0d      	ldr	r3, [pc, #52]	; (1a001fb8 <Chip_Clock_EnableCrystal+0x68>)
1a001f84:	681b      	ldr	r3, [r3, #0]
1a001f86:	4a0d      	ldr	r2, [pc, #52]	; (1a001fbc <Chip_Clock_EnableCrystal+0x6c>)
1a001f88:	4293      	cmp	r3, r2
1a001f8a:	d903      	bls.n	1a001f94 <Chip_Clock_EnableCrystal+0x44>
1a001f8c:	687b      	ldr	r3, [r7, #4]
1a001f8e:	f043 0304 	orr.w	r3, r3, #4
1a001f92:	607b      	str	r3, [r7, #4]
1a001f94:	4a07      	ldr	r2, [pc, #28]	; (1a001fb4 <Chip_Clock_EnableCrystal+0x64>)
1a001f96:	687b      	ldr	r3, [r7, #4]
1a001f98:	6193      	str	r3, [r2, #24]
1a001f9a:	bf00      	nop
1a001f9c:	683b      	ldr	r3, [r7, #0]
1a001f9e:	1e5a      	subs	r2, r3, #1
1a001fa0:	603a      	str	r2, [r7, #0]
1a001fa2:	2b00      	cmp	r3, #0
1a001fa4:	d1fa      	bne.n	1a001f9c <Chip_Clock_EnableCrystal+0x4c>
1a001fa6:	bf00      	nop
1a001fa8:	370c      	adds	r7, #12
1a001faa:	46bd      	mov	sp, r7
1a001fac:	f85d 7b04 	ldr.w	r7, [sp], #4
1a001fb0:	4770      	bx	lr
1a001fb2:	bf00      	nop
1a001fb4:	40050000 	.word	0x40050000
1a001fb8:	1a002620 	.word	0x1a002620
1a001fbc:	01312cff 	.word	0x01312cff

1a001fc0 <Chip_Clock_CalcMainPLLValue>:
1a001fc0:	b580      	push	{r7, lr}
1a001fc2:	b082      	sub	sp, #8
1a001fc4:	af00      	add	r7, sp, #0
1a001fc6:	6078      	str	r0, [r7, #4]
1a001fc8:	6039      	str	r1, [r7, #0]
1a001fca:	683b      	ldr	r3, [r7, #0]
1a001fcc:	791b      	ldrb	r3, [r3, #4]
1a001fce:	4618      	mov	r0, r3
1a001fd0:	f000 f8fe 	bl	1a0021d0 <Chip_Clock_GetClockInputHz>
1a001fd4:	4602      	mov	r2, r0
1a001fd6:	683b      	ldr	r3, [r7, #0]
1a001fd8:	615a      	str	r2, [r3, #20]
1a001fda:	687b      	ldr	r3, [r7, #4]
1a001fdc:	4a2b      	ldr	r2, [pc, #172]	; (1a00208c <Chip_Clock_CalcMainPLLValue+0xcc>)
1a001fde:	4293      	cmp	r3, r2
1a001fe0:	d807      	bhi.n	1a001ff2 <Chip_Clock_CalcMainPLLValue+0x32>
1a001fe2:	687b      	ldr	r3, [r7, #4]
1a001fe4:	4a2a      	ldr	r2, [pc, #168]	; (1a002090 <Chip_Clock_CalcMainPLLValue+0xd0>)
1a001fe6:	4293      	cmp	r3, r2
1a001fe8:	d903      	bls.n	1a001ff2 <Chip_Clock_CalcMainPLLValue+0x32>
1a001fea:	683b      	ldr	r3, [r7, #0]
1a001fec:	695b      	ldr	r3, [r3, #20]
1a001fee:	2b00      	cmp	r3, #0
1a001ff0:	d102      	bne.n	1a001ff8 <Chip_Clock_CalcMainPLLValue+0x38>
1a001ff2:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a001ff6:	e044      	b.n	1a002082 <Chip_Clock_CalcMainPLLValue+0xc2>
1a001ff8:	683b      	ldr	r3, [r7, #0]
1a001ffa:	2280      	movs	r2, #128	; 0x80
1a001ffc:	601a      	str	r2, [r3, #0]
1a001ffe:	683b      	ldr	r3, [r7, #0]
1a002000:	2200      	movs	r2, #0
1a002002:	609a      	str	r2, [r3, #8]
1a002004:	683b      	ldr	r3, [r7, #0]
1a002006:	2200      	movs	r2, #0
1a002008:	60da      	str	r2, [r3, #12]
1a00200a:	683b      	ldr	r3, [r7, #0]
1a00200c:	695b      	ldr	r3, [r3, #20]
1a00200e:	687a      	ldr	r2, [r7, #4]
1a002010:	fbb2 f3f3 	udiv	r3, r2, r3
1a002014:	461a      	mov	r2, r3
1a002016:	683b      	ldr	r3, [r7, #0]
1a002018:	611a      	str	r2, [r3, #16]
1a00201a:	687b      	ldr	r3, [r7, #4]
1a00201c:	4a1d      	ldr	r2, [pc, #116]	; (1a002094 <Chip_Clock_CalcMainPLLValue+0xd4>)
1a00201e:	4293      	cmp	r3, r2
1a002020:	d909      	bls.n	1a002036 <Chip_Clock_CalcMainPLLValue+0x76>
1a002022:	683b      	ldr	r3, [r7, #0]
1a002024:	691b      	ldr	r3, [r3, #16]
1a002026:	461a      	mov	r2, r3
1a002028:	683b      	ldr	r3, [r7, #0]
1a00202a:	695b      	ldr	r3, [r3, #20]
1a00202c:	fb03 f302 	mul.w	r3, r3, r2
1a002030:	687a      	ldr	r2, [r7, #4]
1a002032:	429a      	cmp	r2, r3
1a002034:	d00f      	beq.n	1a002056 <Chip_Clock_CalcMainPLLValue+0x96>
1a002036:	6839      	ldr	r1, [r7, #0]
1a002038:	6878      	ldr	r0, [r7, #4]
1a00203a:	f7ff fe61 	bl	1a001d00 <pll_get_frac>
1a00203e:	683b      	ldr	r3, [r7, #0]
1a002040:	689b      	ldr	r3, [r3, #8]
1a002042:	2b00      	cmp	r3, #0
1a002044:	d102      	bne.n	1a00204c <Chip_Clock_CalcMainPLLValue+0x8c>
1a002046:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a00204a:	e01a      	b.n	1a002082 <Chip_Clock_CalcMainPLLValue+0xc2>
1a00204c:	683b      	ldr	r3, [r7, #0]
1a00204e:	689b      	ldr	r3, [r3, #8]
1a002050:	1e5a      	subs	r2, r3, #1
1a002052:	683b      	ldr	r3, [r7, #0]
1a002054:	609a      	str	r2, [r3, #8]
1a002056:	683b      	ldr	r3, [r7, #0]
1a002058:	691b      	ldr	r3, [r3, #16]
1a00205a:	2b00      	cmp	r3, #0
1a00205c:	d102      	bne.n	1a002064 <Chip_Clock_CalcMainPLLValue+0xa4>
1a00205e:	f04f 33ff 	mov.w	r3, #4294967295	; 0xffffffff
1a002062:	e00e      	b.n	1a002082 <Chip_Clock_CalcMainPLLValue+0xc2>
1a002064:	683b      	ldr	r3, [r7, #0]
1a002066:	68db      	ldr	r3, [r3, #12]
1a002068:	2b00      	cmp	r3, #0
1a00206a:	d004      	beq.n	1a002076 <Chip_Clock_CalcMainPLLValue+0xb6>
1a00206c:	683b      	ldr	r3, [r7, #0]
1a00206e:	68db      	ldr	r3, [r3, #12]
1a002070:	1e5a      	subs	r2, r3, #1
1a002072:	683b      	ldr	r3, [r7, #0]
1a002074:	60da      	str	r2, [r3, #12]
1a002076:	683b      	ldr	r3, [r7, #0]
1a002078:	691b      	ldr	r3, [r3, #16]
1a00207a:	1e5a      	subs	r2, r3, #1
1a00207c:	683b      	ldr	r3, [r7, #0]
1a00207e:	611a      	str	r2, [r3, #16]
1a002080:	2300      	movs	r3, #0
1a002082:	4618      	mov	r0, r3
1a002084:	3708      	adds	r7, #8
1a002086:	46bd      	mov	sp, r7
1a002088:	bd80      	pop	{r7, pc}
1a00208a:	bf00      	nop
1a00208c:	0c28cb00 	.word	0x0c28cb00
1a002090:	0094c5ef 	.word	0x0094c5ef
1a002094:	094c5eff 	.word	0x094c5eff

1a002098 <Chip_Clock_GetMainPLLHz>:
1a002098:	b580      	push	{r7, lr}
1a00209a:	b08c      	sub	sp, #48	; 0x30
1a00209c:	af00      	add	r7, sp, #0
1a00209e:	4b2c      	ldr	r3, [pc, #176]	; (1a002150 <Chip_Clock_GetMainPLLHz+0xb8>)
1a0020a0:	6c5b      	ldr	r3, [r3, #68]	; 0x44
1a0020a2:	62fb      	str	r3, [r7, #44]	; 0x2c
1a0020a4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0020a6:	0e1b      	lsrs	r3, r3, #24
1a0020a8:	b2db      	uxtb	r3, r3
1a0020aa:	f003 030f 	and.w	r3, r3, #15
1a0020ae:	b2db      	uxtb	r3, r3
1a0020b0:	4618      	mov	r0, r3
1a0020b2:	f000 f88d 	bl	1a0021d0 <Chip_Clock_GetClockInputHz>
1a0020b6:	62b8      	str	r0, [r7, #40]	; 0x28
1a0020b8:	4b26      	ldr	r3, [pc, #152]	; (1a002154 <Chip_Clock_GetMainPLLHz+0xbc>)
1a0020ba:	681b      	ldr	r3, [r3, #0]
1a0020bc:	607b      	str	r3, [r7, #4]
1a0020be:	4b24      	ldr	r3, [pc, #144]	; (1a002150 <Chip_Clock_GetMainPLLHz+0xb8>)
1a0020c0:	6c1b      	ldr	r3, [r3, #64]	; 0x40
1a0020c2:	f003 0301 	and.w	r3, r3, #1
1a0020c6:	2b00      	cmp	r3, #0
1a0020c8:	d101      	bne.n	1a0020ce <Chip_Clock_GetMainPLLHz+0x36>
1a0020ca:	2300      	movs	r3, #0
1a0020cc:	e03b      	b.n	1a002146 <Chip_Clock_GetMainPLLHz+0xae>
1a0020ce:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0020d0:	0c1b      	lsrs	r3, r3, #16
1a0020d2:	b2db      	uxtb	r3, r3
1a0020d4:	627b      	str	r3, [r7, #36]	; 0x24
1a0020d6:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0020d8:	0b1b      	lsrs	r3, r3, #12
1a0020da:	f003 0303 	and.w	r3, r3, #3
1a0020de:	623b      	str	r3, [r7, #32]
1a0020e0:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0020e2:	0a1b      	lsrs	r3, r3, #8
1a0020e4:	f003 0303 	and.w	r3, r3, #3
1a0020e8:	61fb      	str	r3, [r7, #28]
1a0020ea:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0020ec:	09db      	lsrs	r3, r3, #7
1a0020ee:	f003 0301 	and.w	r3, r3, #1
1a0020f2:	61bb      	str	r3, [r7, #24]
1a0020f4:	6afb      	ldr	r3, [r7, #44]	; 0x2c
1a0020f6:	099b      	lsrs	r3, r3, #6
1a0020f8:	f003 0301 	and.w	r3, r3, #1
1a0020fc:	617b      	str	r3, [r7, #20]
1a0020fe:	6a7b      	ldr	r3, [r7, #36]	; 0x24
1a002100:	3301      	adds	r3, #1
1a002102:	613b      	str	r3, [r7, #16]
1a002104:	6a3b      	ldr	r3, [r7, #32]
1a002106:	3301      	adds	r3, #1
1a002108:	60fb      	str	r3, [r7, #12]
1a00210a:	1d3a      	adds	r2, r7, #4
1a00210c:	69fb      	ldr	r3, [r7, #28]
1a00210e:	4413      	add	r3, r2
1a002110:	781b      	ldrb	r3, [r3, #0]
1a002112:	60bb      	str	r3, [r7, #8]
1a002114:	69bb      	ldr	r3, [r7, #24]
1a002116:	2b00      	cmp	r3, #0
1a002118:	d102      	bne.n	1a002120 <Chip_Clock_GetMainPLLHz+0x88>
1a00211a:	697b      	ldr	r3, [r7, #20]
1a00211c:	2b00      	cmp	r3, #0
1a00211e:	d007      	beq.n	1a002130 <Chip_Clock_GetMainPLLHz+0x98>
1a002120:	6aba      	ldr	r2, [r7, #40]	; 0x28
1a002122:	68fb      	ldr	r3, [r7, #12]
1a002124:	fbb2 f3f3 	udiv	r3, r2, r3
1a002128:	693a      	ldr	r2, [r7, #16]
1a00212a:	fb02 f303 	mul.w	r3, r2, r3
1a00212e:	e00a      	b.n	1a002146 <Chip_Clock_GetMainPLLHz+0xae>
1a002130:	68bb      	ldr	r3, [r7, #8]
1a002132:	005b      	lsls	r3, r3, #1
1a002134:	693a      	ldr	r2, [r7, #16]
1a002136:	fbb2 f3f3 	udiv	r3, r2, r3
1a00213a:	6ab9      	ldr	r1, [r7, #40]	; 0x28
1a00213c:	68fa      	ldr	r2, [r7, #12]
1a00213e:	fbb1 f2f2 	udiv	r2, r1, r2
1a002142:	fb02 f303 	mul.w	r3, r2, r3
1a002146:	4618      	mov	r0, r3
1a002148:	3730      	adds	r7, #48	; 0x30
1a00214a:	46bd      	mov	sp, r7
1a00214c:	bd80      	pop	{r7, pc}
1a00214e:	bf00      	nop
1a002150:	40050000 	.word	0x40050000
1a002154:	1a002724 	.word	0x1a002724

1a002158 <Chip_Clock_GetDividerSource>:
1a002158:	b480      	push	{r7}
1a00215a:	b085      	sub	sp, #20
1a00215c:	af00      	add	r7, sp, #0
1a00215e:	4603      	mov	r3, r0
1a002160:	71fb      	strb	r3, [r7, #7]
1a002162:	4a0c      	ldr	r2, [pc, #48]	; (1a002194 <Chip_Clock_GetDividerSource+0x3c>)
1a002164:	79fb      	ldrb	r3, [r7, #7]
1a002166:	3312      	adds	r3, #18
1a002168:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a00216c:	60fb      	str	r3, [r7, #12]
1a00216e:	68fb      	ldr	r3, [r7, #12]
1a002170:	f003 0301 	and.w	r3, r3, #1
1a002174:	2b00      	cmp	r3, #0
1a002176:	d001      	beq.n	1a00217c <Chip_Clock_GetDividerSource+0x24>
1a002178:	2311      	movs	r3, #17
1a00217a:	e005      	b.n	1a002188 <Chip_Clock_GetDividerSource+0x30>
1a00217c:	68fb      	ldr	r3, [r7, #12]
1a00217e:	0e1b      	lsrs	r3, r3, #24
1a002180:	b2db      	uxtb	r3, r3
1a002182:	f003 031f 	and.w	r3, r3, #31
1a002186:	b2db      	uxtb	r3, r3
1a002188:	4618      	mov	r0, r3
1a00218a:	3714      	adds	r7, #20
1a00218c:	46bd      	mov	sp, r7
1a00218e:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002192:	4770      	bx	lr
1a002194:	40050000 	.word	0x40050000

1a002198 <Chip_Clock_GetDividerDivisor>:
1a002198:	b480      	push	{r7}
1a00219a:	b083      	sub	sp, #12
1a00219c:	af00      	add	r7, sp, #0
1a00219e:	4603      	mov	r3, r0
1a0021a0:	71fb      	strb	r3, [r7, #7]
1a0021a2:	4a09      	ldr	r2, [pc, #36]	; (1a0021c8 <Chip_Clock_GetDividerDivisor+0x30>)
1a0021a4:	79fb      	ldrb	r3, [r7, #7]
1a0021a6:	3312      	adds	r3, #18
1a0021a8:	f852 3023 	ldr.w	r3, [r2, r3, lsl #2]
1a0021ac:	089b      	lsrs	r3, r3, #2
1a0021ae:	b2da      	uxtb	r2, r3
1a0021b0:	79fb      	ldrb	r3, [r7, #7]
1a0021b2:	4906      	ldr	r1, [pc, #24]	; (1a0021cc <Chip_Clock_GetDividerDivisor+0x34>)
1a0021b4:	5ccb      	ldrb	r3, [r1, r3]
1a0021b6:	4013      	ands	r3, r2
1a0021b8:	b2db      	uxtb	r3, r3
1a0021ba:	4618      	mov	r0, r3
1a0021bc:	370c      	adds	r7, #12
1a0021be:	46bd      	mov	sp, r7
1a0021c0:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0021c4:	4770      	bx	lr
1a0021c6:	bf00      	nop
1a0021c8:	40050000 	.word	0x40050000
1a0021cc:	1a002728 	.word	0x1a002728

1a0021d0 <Chip_Clock_GetClockInputHz>:
1a0021d0:	b580      	push	{r7, lr}
1a0021d2:	b084      	sub	sp, #16
1a0021d4:	af00      	add	r7, sp, #0
1a0021d6:	4603      	mov	r3, r0
1a0021d8:	71fb      	strb	r3, [r7, #7]
1a0021da:	2300      	movs	r3, #0
1a0021dc:	60fb      	str	r3, [r7, #12]
1a0021de:	79fb      	ldrb	r3, [r7, #7]
1a0021e0:	2b11      	cmp	r3, #17
1a0021e2:	d87f      	bhi.n	1a0022e4 <Chip_Clock_GetClockInputHz+0x114>
1a0021e4:	a201      	add	r2, pc, #4	; (adr r2, 1a0021ec <Chip_Clock_GetClockInputHz+0x1c>)
1a0021e6:	f852 f023 	ldr.w	pc, [r2, r3, lsl #2]
1a0021ea:	bf00      	nop
1a0021ec:	1a002235 	.word	0x1a002235
1a0021f0:	1a00223d 	.word	0x1a00223d
1a0021f4:	1a002243 	.word	0x1a002243
1a0021f8:	1a002257 	.word	0x1a002257
1a0021fc:	1a002271 	.word	0x1a002271
1a002200:	1a0022e5 	.word	0x1a0022e5
1a002204:	1a002279 	.word	0x1a002279
1a002208:	1a002281 	.word	0x1a002281
1a00220c:	1a002289 	.word	0x1a002289
1a002210:	1a002291 	.word	0x1a002291
1a002214:	1a0022e5 	.word	0x1a0022e5
1a002218:	1a0022e5 	.word	0x1a0022e5
1a00221c:	1a002299 	.word	0x1a002299
1a002220:	1a0022a7 	.word	0x1a0022a7
1a002224:	1a0022b5 	.word	0x1a0022b5
1a002228:	1a0022c3 	.word	0x1a0022c3
1a00222c:	1a0022d1 	.word	0x1a0022d1
1a002230:	1a0022df 	.word	0x1a0022df
1a002234:	f44f 4300 	mov.w	r3, #32768	; 0x8000
1a002238:	60fb      	str	r3, [r7, #12]
1a00223a:	e056      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a00223c:	4b2d      	ldr	r3, [pc, #180]	; (1a0022f4 <Chip_Clock_GetClockInputHz+0x124>)
1a00223e:	60fb      	str	r3, [r7, #12]
1a002240:	e053      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a002242:	4b2d      	ldr	r3, [pc, #180]	; (1a0022f8 <Chip_Clock_GetClockInputHz+0x128>)
1a002244:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a002248:	f003 0307 	and.w	r3, r3, #7
1a00224c:	2b04      	cmp	r3, #4
1a00224e:	d04b      	beq.n	1a0022e8 <Chip_Clock_GetClockInputHz+0x118>
1a002250:	4b2a      	ldr	r3, [pc, #168]	; (1a0022fc <Chip_Clock_GetClockInputHz+0x12c>)
1a002252:	60fb      	str	r3, [r7, #12]
1a002254:	e048      	b.n	1a0022e8 <Chip_Clock_GetClockInputHz+0x118>
1a002256:	4b28      	ldr	r3, [pc, #160]	; (1a0022f8 <Chip_Clock_GetClockInputHz+0x128>)
1a002258:	f8d3 312c 	ldr.w	r3, [r3, #300]	; 0x12c
1a00225c:	f003 0307 	and.w	r3, r3, #7
1a002260:	2b04      	cmp	r3, #4
1a002262:	d002      	beq.n	1a00226a <Chip_Clock_GetClockInputHz+0x9a>
1a002264:	4b25      	ldr	r3, [pc, #148]	; (1a0022fc <Chip_Clock_GetClockInputHz+0x12c>)
1a002266:	60fb      	str	r3, [r7, #12]
1a002268:	e03f      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a00226a:	4b25      	ldr	r3, [pc, #148]	; (1a002300 <Chip_Clock_GetClockInputHz+0x130>)
1a00226c:	60fb      	str	r3, [r7, #12]
1a00226e:	e03c      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a002270:	4b24      	ldr	r3, [pc, #144]	; (1a002304 <Chip_Clock_GetClockInputHz+0x134>)
1a002272:	681b      	ldr	r3, [r3, #0]
1a002274:	60fb      	str	r3, [r7, #12]
1a002276:	e038      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a002278:	4b23      	ldr	r3, [pc, #140]	; (1a002308 <Chip_Clock_GetClockInputHz+0x138>)
1a00227a:	681b      	ldr	r3, [r3, #0]
1a00227c:	60fb      	str	r3, [r7, #12]
1a00227e:	e034      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a002280:	4b22      	ldr	r3, [pc, #136]	; (1a00230c <Chip_Clock_GetClockInputHz+0x13c>)
1a002282:	681b      	ldr	r3, [r3, #0]
1a002284:	60fb      	str	r3, [r7, #12]
1a002286:	e030      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a002288:	4b20      	ldr	r3, [pc, #128]	; (1a00230c <Chip_Clock_GetClockInputHz+0x13c>)
1a00228a:	685b      	ldr	r3, [r3, #4]
1a00228c:	60fb      	str	r3, [r7, #12]
1a00228e:	e02c      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a002290:	f7ff ff02 	bl	1a002098 <Chip_Clock_GetMainPLLHz>
1a002294:	60f8      	str	r0, [r7, #12]
1a002296:	e028      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a002298:	79fb      	ldrb	r3, [r7, #7]
1a00229a:	2100      	movs	r1, #0
1a00229c:	4618      	mov	r0, r3
1a00229e:	f7ff fdef 	bl	1a001e80 <Chip_Clock_GetDivRate>
1a0022a2:	60f8      	str	r0, [r7, #12]
1a0022a4:	e021      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a0022a6:	79fb      	ldrb	r3, [r7, #7]
1a0022a8:	2101      	movs	r1, #1
1a0022aa:	4618      	mov	r0, r3
1a0022ac:	f7ff fde8 	bl	1a001e80 <Chip_Clock_GetDivRate>
1a0022b0:	60f8      	str	r0, [r7, #12]
1a0022b2:	e01a      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a0022b4:	79fb      	ldrb	r3, [r7, #7]
1a0022b6:	2102      	movs	r1, #2
1a0022b8:	4618      	mov	r0, r3
1a0022ba:	f7ff fde1 	bl	1a001e80 <Chip_Clock_GetDivRate>
1a0022be:	60f8      	str	r0, [r7, #12]
1a0022c0:	e013      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a0022c2:	79fb      	ldrb	r3, [r7, #7]
1a0022c4:	2103      	movs	r1, #3
1a0022c6:	4618      	mov	r0, r3
1a0022c8:	f7ff fdda 	bl	1a001e80 <Chip_Clock_GetDivRate>
1a0022cc:	60f8      	str	r0, [r7, #12]
1a0022ce:	e00c      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a0022d0:	79fb      	ldrb	r3, [r7, #7]
1a0022d2:	2104      	movs	r1, #4
1a0022d4:	4618      	mov	r0, r3
1a0022d6:	f7ff fdd3 	bl	1a001e80 <Chip_Clock_GetDivRate>
1a0022da:	60f8      	str	r0, [r7, #12]
1a0022dc:	e005      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a0022de:	2300      	movs	r3, #0
1a0022e0:	60fb      	str	r3, [r7, #12]
1a0022e2:	e002      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a0022e4:	bf00      	nop
1a0022e6:	e000      	b.n	1a0022ea <Chip_Clock_GetClockInputHz+0x11a>
1a0022e8:	bf00      	nop
1a0022ea:	68fb      	ldr	r3, [r7, #12]
1a0022ec:	4618      	mov	r0, r3
1a0022ee:	3710      	adds	r7, #16
1a0022f0:	46bd      	mov	sp, r7
1a0022f2:	bd80      	pop	{r7, pc}
1a0022f4:	00b71b00 	.word	0x00b71b00
1a0022f8:	40043000 	.word	0x40043000
1a0022fc:	017d7840 	.word	0x017d7840
1a002300:	02faf080 	.word	0x02faf080
1a002304:	1a00261c 	.word	0x1a00261c
1a002308:	1a002620 	.word	0x1a002620
1a00230c:	10000050 	.word	0x10000050

1a002310 <Chip_Clock_GetBaseClocktHz>:
1a002310:	b580      	push	{r7, lr}
1a002312:	b082      	sub	sp, #8
1a002314:	af00      	add	r7, sp, #0
1a002316:	4603      	mov	r3, r0
1a002318:	71fb      	strb	r3, [r7, #7]
1a00231a:	79fb      	ldrb	r3, [r7, #7]
1a00231c:	4618      	mov	r0, r3
1a00231e:	f000 f857 	bl	1a0023d0 <Chip_Clock_GetBaseClock>
1a002322:	4603      	mov	r3, r0
1a002324:	4618      	mov	r0, r3
1a002326:	f7ff ff53 	bl	1a0021d0 <Chip_Clock_GetClockInputHz>
1a00232a:	4603      	mov	r3, r0
1a00232c:	4618      	mov	r0, r3
1a00232e:	3708      	adds	r7, #8
1a002330:	46bd      	mov	sp, r7
1a002332:	bd80      	pop	{r7, pc}

1a002334 <Chip_Clock_SetBaseClock>:
1a002334:	b490      	push	{r4, r7}
1a002336:	b084      	sub	sp, #16
1a002338:	af00      	add	r7, sp, #0
1a00233a:	4604      	mov	r4, r0
1a00233c:	4608      	mov	r0, r1
1a00233e:	4611      	mov	r1, r2
1a002340:	461a      	mov	r2, r3
1a002342:	4623      	mov	r3, r4
1a002344:	71fb      	strb	r3, [r7, #7]
1a002346:	4603      	mov	r3, r0
1a002348:	71bb      	strb	r3, [r7, #6]
1a00234a:	460b      	mov	r3, r1
1a00234c:	717b      	strb	r3, [r7, #5]
1a00234e:	4613      	mov	r3, r2
1a002350:	713b      	strb	r3, [r7, #4]
1a002352:	4a1d      	ldr	r2, [pc, #116]	; (1a0023c8 <Chip_Clock_SetBaseClock+0x94>)
1a002354:	79fb      	ldrb	r3, [r7, #7]
1a002356:	3316      	adds	r3, #22
1a002358:	009b      	lsls	r3, r3, #2
1a00235a:	4413      	add	r3, r2
1a00235c:	685b      	ldr	r3, [r3, #4]
1a00235e:	60fb      	str	r3, [r7, #12]
1a002360:	79fb      	ldrb	r3, [r7, #7]
1a002362:	2b1b      	cmp	r3, #27
1a002364:	d822      	bhi.n	1a0023ac <Chip_Clock_SetBaseClock+0x78>
1a002366:	79bb      	ldrb	r3, [r7, #6]
1a002368:	2b11      	cmp	r3, #17
1a00236a:	d028      	beq.n	1a0023be <Chip_Clock_SetBaseClock+0x8a>
1a00236c:	68fa      	ldr	r2, [r7, #12]
1a00236e:	4b17      	ldr	r3, [pc, #92]	; (1a0023cc <Chip_Clock_SetBaseClock+0x98>)
1a002370:	4013      	ands	r3, r2
1a002372:	60fb      	str	r3, [r7, #12]
1a002374:	797b      	ldrb	r3, [r7, #5]
1a002376:	2b00      	cmp	r3, #0
1a002378:	d003      	beq.n	1a002382 <Chip_Clock_SetBaseClock+0x4e>
1a00237a:	68fb      	ldr	r3, [r7, #12]
1a00237c:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
1a002380:	60fb      	str	r3, [r7, #12]
1a002382:	793b      	ldrb	r3, [r7, #4]
1a002384:	2b00      	cmp	r3, #0
1a002386:	d003      	beq.n	1a002390 <Chip_Clock_SetBaseClock+0x5c>
1a002388:	68fb      	ldr	r3, [r7, #12]
1a00238a:	f043 0301 	orr.w	r3, r3, #1
1a00238e:	60fb      	str	r3, [r7, #12]
1a002390:	79bb      	ldrb	r3, [r7, #6]
1a002392:	061b      	lsls	r3, r3, #24
1a002394:	461a      	mov	r2, r3
1a002396:	68fb      	ldr	r3, [r7, #12]
1a002398:	4313      	orrs	r3, r2
1a00239a:	60fb      	str	r3, [r7, #12]
1a00239c:	4a0a      	ldr	r2, [pc, #40]	; (1a0023c8 <Chip_Clock_SetBaseClock+0x94>)
1a00239e:	79fb      	ldrb	r3, [r7, #7]
1a0023a0:	3316      	adds	r3, #22
1a0023a2:	009b      	lsls	r3, r3, #2
1a0023a4:	4413      	add	r3, r2
1a0023a6:	68fa      	ldr	r2, [r7, #12]
1a0023a8:	605a      	str	r2, [r3, #4]
1a0023aa:	e008      	b.n	1a0023be <Chip_Clock_SetBaseClock+0x8a>
1a0023ac:	4906      	ldr	r1, [pc, #24]	; (1a0023c8 <Chip_Clock_SetBaseClock+0x94>)
1a0023ae:	79fb      	ldrb	r3, [r7, #7]
1a0023b0:	68fa      	ldr	r2, [r7, #12]
1a0023b2:	f042 0201 	orr.w	r2, r2, #1
1a0023b6:	3316      	adds	r3, #22
1a0023b8:	009b      	lsls	r3, r3, #2
1a0023ba:	440b      	add	r3, r1
1a0023bc:	605a      	str	r2, [r3, #4]
1a0023be:	bf00      	nop
1a0023c0:	3710      	adds	r7, #16
1a0023c2:	46bd      	mov	sp, r7
1a0023c4:	bc90      	pop	{r4, r7}
1a0023c6:	4770      	bx	lr
1a0023c8:	40050000 	.word	0x40050000
1a0023cc:	e0fff7fe 	.word	0xe0fff7fe

1a0023d0 <Chip_Clock_GetBaseClock>:
1a0023d0:	b480      	push	{r7}
1a0023d2:	b085      	sub	sp, #20
1a0023d4:	af00      	add	r7, sp, #0
1a0023d6:	4603      	mov	r3, r0
1a0023d8:	71fb      	strb	r3, [r7, #7]
1a0023da:	79fb      	ldrb	r3, [r7, #7]
1a0023dc:	2b1b      	cmp	r3, #27
1a0023de:	d901      	bls.n	1a0023e4 <Chip_Clock_GetBaseClock+0x14>
1a0023e0:	2311      	movs	r3, #17
1a0023e2:	e013      	b.n	1a00240c <Chip_Clock_GetBaseClock+0x3c>
1a0023e4:	4a0c      	ldr	r2, [pc, #48]	; (1a002418 <Chip_Clock_GetBaseClock+0x48>)
1a0023e6:	79fb      	ldrb	r3, [r7, #7]
1a0023e8:	3316      	adds	r3, #22
1a0023ea:	009b      	lsls	r3, r3, #2
1a0023ec:	4413      	add	r3, r2
1a0023ee:	685b      	ldr	r3, [r3, #4]
1a0023f0:	60fb      	str	r3, [r7, #12]
1a0023f2:	68fb      	ldr	r3, [r7, #12]
1a0023f4:	f003 0301 	and.w	r3, r3, #1
1a0023f8:	2b00      	cmp	r3, #0
1a0023fa:	d001      	beq.n	1a002400 <Chip_Clock_GetBaseClock+0x30>
1a0023fc:	2311      	movs	r3, #17
1a0023fe:	e005      	b.n	1a00240c <Chip_Clock_GetBaseClock+0x3c>
1a002400:	68fb      	ldr	r3, [r7, #12]
1a002402:	0e1b      	lsrs	r3, r3, #24
1a002404:	b2db      	uxtb	r3, r3
1a002406:	f003 031f 	and.w	r3, r3, #31
1a00240a:	b2db      	uxtb	r3, r3
1a00240c:	4618      	mov	r0, r3
1a00240e:	3714      	adds	r7, #20
1a002410:	46bd      	mov	sp, r7
1a002412:	f85d 7b04 	ldr.w	r7, [sp], #4
1a002416:	4770      	bx	lr
1a002418:	40050000 	.word	0x40050000

1a00241c <Chip_Clock_EnableOpts>:
1a00241c:	b480      	push	{r7}
1a00241e:	b085      	sub	sp, #20
1a002420:	af00      	add	r7, sp, #0
1a002422:	603b      	str	r3, [r7, #0]
1a002424:	4603      	mov	r3, r0
1a002426:	80fb      	strh	r3, [r7, #6]
1a002428:	460b      	mov	r3, r1
1a00242a:	717b      	strb	r3, [r7, #5]
1a00242c:	4613      	mov	r3, r2
1a00242e:	713b      	strb	r3, [r7, #4]
1a002430:	2301      	movs	r3, #1
1a002432:	60fb      	str	r3, [r7, #12]
1a002434:	797b      	ldrb	r3, [r7, #5]
1a002436:	2b00      	cmp	r3, #0
1a002438:	d003      	beq.n	1a002442 <Chip_Clock_EnableOpts+0x26>
1a00243a:	68fb      	ldr	r3, [r7, #12]
1a00243c:	f043 0302 	orr.w	r3, r3, #2
1a002440:	60fb      	str	r3, [r7, #12]
1a002442:	793b      	ldrb	r3, [r7, #4]
1a002444:	2b00      	cmp	r3, #0
1a002446:	d003      	beq.n	1a002450 <Chip_Clock_EnableOpts+0x34>
1a002448:	68fb      	ldr	r3, [r7, #12]
1a00244a:	f043 0304 	orr.w	r3, r3, #4
1a00244e:	60fb      	str	r3, [r7, #12]
1a002450:	683b      	ldr	r3, [r7, #0]
1a002452:	2b02      	cmp	r3, #2
1a002454:	d103      	bne.n	1a00245e <Chip_Clock_EnableOpts+0x42>
1a002456:	68fb      	ldr	r3, [r7, #12]
1a002458:	f043 0320 	orr.w	r3, r3, #32
1a00245c:	60fb      	str	r3, [r7, #12]
1a00245e:	88fb      	ldrh	r3, [r7, #6]
1a002460:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002464:	d308      	bcc.n	1a002478 <Chip_Clock_EnableOpts+0x5c>
1a002466:	490a      	ldr	r1, [pc, #40]	; (1a002490 <Chip_Clock_EnableOpts+0x74>)
1a002468:	88fb      	ldrh	r3, [r7, #6]
1a00246a:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a00246e:	3320      	adds	r3, #32
1a002470:	68fa      	ldr	r2, [r7, #12]
1a002472:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002476:	e005      	b.n	1a002484 <Chip_Clock_EnableOpts+0x68>
1a002478:	4906      	ldr	r1, [pc, #24]	; (1a002494 <Chip_Clock_EnableOpts+0x78>)
1a00247a:	88fb      	ldrh	r3, [r7, #6]
1a00247c:	3320      	adds	r3, #32
1a00247e:	68fa      	ldr	r2, [r7, #12]
1a002480:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a002484:	bf00      	nop
1a002486:	3714      	adds	r7, #20
1a002488:	46bd      	mov	sp, r7
1a00248a:	f85d 7b04 	ldr.w	r7, [sp], #4
1a00248e:	4770      	bx	lr
1a002490:	40052000 	.word	0x40052000
1a002494:	40051000 	.word	0x40051000

1a002498 <Chip_Clock_Enable>:
1a002498:	b480      	push	{r7}
1a00249a:	b083      	sub	sp, #12
1a00249c:	af00      	add	r7, sp, #0
1a00249e:	4603      	mov	r3, r0
1a0024a0:	80fb      	strh	r3, [r7, #6]
1a0024a2:	88fb      	ldrh	r3, [r7, #6]
1a0024a4:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a0024a8:	d310      	bcc.n	1a0024cc <Chip_Clock_Enable+0x34>
1a0024aa:	4a11      	ldr	r2, [pc, #68]	; (1a0024f0 <Chip_Clock_Enable+0x58>)
1a0024ac:	88fb      	ldrh	r3, [r7, #6]
1a0024ae:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0024b2:	3320      	adds	r3, #32
1a0024b4:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a0024b8:	490d      	ldr	r1, [pc, #52]	; (1a0024f0 <Chip_Clock_Enable+0x58>)
1a0024ba:	88fb      	ldrh	r3, [r7, #6]
1a0024bc:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a0024c0:	f042 0201 	orr.w	r2, r2, #1
1a0024c4:	3320      	adds	r3, #32
1a0024c6:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0024ca:	e00b      	b.n	1a0024e4 <Chip_Clock_Enable+0x4c>
1a0024cc:	4a09      	ldr	r2, [pc, #36]	; (1a0024f4 <Chip_Clock_Enable+0x5c>)
1a0024ce:	88fb      	ldrh	r3, [r7, #6]
1a0024d0:	3320      	adds	r3, #32
1a0024d2:	f852 2033 	ldr.w	r2, [r2, r3, lsl #3]
1a0024d6:	4907      	ldr	r1, [pc, #28]	; (1a0024f4 <Chip_Clock_Enable+0x5c>)
1a0024d8:	88fb      	ldrh	r3, [r7, #6]
1a0024da:	f042 0201 	orr.w	r2, r2, #1
1a0024de:	3320      	adds	r3, #32
1a0024e0:	f841 2033 	str.w	r2, [r1, r3, lsl #3]
1a0024e4:	bf00      	nop
1a0024e6:	370c      	adds	r7, #12
1a0024e8:	46bd      	mov	sp, r7
1a0024ea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0024ee:	4770      	bx	lr
1a0024f0:	40052000 	.word	0x40052000
1a0024f4:	40051000 	.word	0x40051000

1a0024f8 <Chip_Clock_GetRate>:
1a0024f8:	b580      	push	{r7, lr}
1a0024fa:	b086      	sub	sp, #24
1a0024fc:	af00      	add	r7, sp, #0
1a0024fe:	4603      	mov	r3, r0
1a002500:	80fb      	strh	r3, [r7, #6]
1a002502:	88fb      	ldrh	r3, [r7, #6]
1a002504:	f5b3 7fa1 	cmp.w	r3, #322	; 0x142
1a002508:	d308      	bcc.n	1a00251c <Chip_Clock_GetRate+0x24>
1a00250a:	4a1b      	ldr	r2, [pc, #108]	; (1a002578 <Chip_Clock_GetRate+0x80>)
1a00250c:	88fb      	ldrh	r3, [r7, #6]
1a00250e:	f5a3 73a1 	sub.w	r3, r3, #322	; 0x142
1a002512:	3320      	adds	r3, #32
1a002514:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a002518:	617b      	str	r3, [r7, #20]
1a00251a:	e005      	b.n	1a002528 <Chip_Clock_GetRate+0x30>
1a00251c:	4a17      	ldr	r2, [pc, #92]	; (1a00257c <Chip_Clock_GetRate+0x84>)
1a00251e:	88fb      	ldrh	r3, [r7, #6]
1a002520:	3320      	adds	r3, #32
1a002522:	f852 3033 	ldr.w	r3, [r2, r3, lsl #3]
1a002526:	617b      	str	r3, [r7, #20]
1a002528:	697b      	ldr	r3, [r7, #20]
1a00252a:	f003 0301 	and.w	r3, r3, #1
1a00252e:	2b00      	cmp	r3, #0
1a002530:	d01b      	beq.n	1a00256a <Chip_Clock_GetRate+0x72>
1a002532:	88fb      	ldrh	r3, [r7, #6]
1a002534:	4618      	mov	r0, r3
1a002536:	f7ff fcc3 	bl	1a001ec0 <Chip_Clock_FindBaseClock>
1a00253a:	4603      	mov	r3, r0
1a00253c:	72fb      	strb	r3, [r7, #11]
1a00253e:	7afb      	ldrb	r3, [r7, #11]
1a002540:	4618      	mov	r0, r3
1a002542:	f7ff fee5 	bl	1a002310 <Chip_Clock_GetBaseClocktHz>
1a002546:	60f8      	str	r0, [r7, #12]
1a002548:	697b      	ldr	r3, [r7, #20]
1a00254a:	095b      	lsrs	r3, r3, #5
1a00254c:	f003 0307 	and.w	r3, r3, #7
1a002550:	2b00      	cmp	r3, #0
1a002552:	d102      	bne.n	1a00255a <Chip_Clock_GetRate+0x62>
1a002554:	2301      	movs	r3, #1
1a002556:	613b      	str	r3, [r7, #16]
1a002558:	e001      	b.n	1a00255e <Chip_Clock_GetRate+0x66>
1a00255a:	2302      	movs	r3, #2
1a00255c:	613b      	str	r3, [r7, #16]
1a00255e:	68fa      	ldr	r2, [r7, #12]
1a002560:	693b      	ldr	r3, [r7, #16]
1a002562:	fbb2 f3f3 	udiv	r3, r2, r3
1a002566:	60fb      	str	r3, [r7, #12]
1a002568:	e001      	b.n	1a00256e <Chip_Clock_GetRate+0x76>
1a00256a:	2300      	movs	r3, #0
1a00256c:	60fb      	str	r3, [r7, #12]
1a00256e:	68fb      	ldr	r3, [r7, #12]
1a002570:	4618      	mov	r0, r3
1a002572:	3718      	adds	r7, #24
1a002574:	46bd      	mov	sp, r7
1a002576:	bd80      	pop	{r7, pc}
1a002578:	40052000 	.word	0x40052000
1a00257c:	40051000 	.word	0x40051000

1a002580 <SystemCoreClockUpdate>:
1a002580:	b580      	push	{r7, lr}
1a002582:	af00      	add	r7, sp, #0
1a002584:	2069      	movs	r0, #105	; 0x69
1a002586:	f7ff ffb7 	bl	1a0024f8 <Chip_Clock_GetRate>
1a00258a:	4602      	mov	r2, r0
1a00258c:	4b01      	ldr	r3, [pc, #4]	; (1a002594 <SystemCoreClockUpdate+0x14>)
1a00258e:	601a      	str	r2, [r3, #0]
1a002590:	bf00      	nop
1a002592:	bd80      	pop	{r7, pc}
1a002594:	10000058 	.word	0x10000058

1a002598 <Chip_GPIO_Init>:
1a002598:	b480      	push	{r7}
1a00259a:	b083      	sub	sp, #12
1a00259c:	af00      	add	r7, sp, #0
1a00259e:	6078      	str	r0, [r7, #4]
1a0025a0:	bf00      	nop
1a0025a2:	370c      	adds	r7, #12
1a0025a4:	46bd      	mov	sp, r7
1a0025a6:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0025aa:	4770      	bx	lr

1a0025ac <Chip_TIMER_GetClockIndex>:
1a0025ac:	b480      	push	{r7}
1a0025ae:	b085      	sub	sp, #20
1a0025b0:	af00      	add	r7, sp, #0
1a0025b2:	6078      	str	r0, [r7, #4]
1a0025b4:	687b      	ldr	r3, [r7, #4]
1a0025b6:	4a0e      	ldr	r2, [pc, #56]	; (1a0025f0 <Chip_TIMER_GetClockIndex+0x44>)
1a0025b8:	4293      	cmp	r3, r2
1a0025ba:	d102      	bne.n	1a0025c2 <Chip_TIMER_GetClockIndex+0x16>
1a0025bc:	23a4      	movs	r3, #164	; 0xa4
1a0025be:	81fb      	strh	r3, [r7, #14]
1a0025c0:	e00f      	b.n	1a0025e2 <Chip_TIMER_GetClockIndex+0x36>
1a0025c2:	687b      	ldr	r3, [r7, #4]
1a0025c4:	4a0b      	ldr	r2, [pc, #44]	; (1a0025f4 <Chip_TIMER_GetClockIndex+0x48>)
1a0025c6:	4293      	cmp	r3, r2
1a0025c8:	d102      	bne.n	1a0025d0 <Chip_TIMER_GetClockIndex+0x24>
1a0025ca:	23a3      	movs	r3, #163	; 0xa3
1a0025cc:	81fb      	strh	r3, [r7, #14]
1a0025ce:	e008      	b.n	1a0025e2 <Chip_TIMER_GetClockIndex+0x36>
1a0025d0:	687b      	ldr	r3, [r7, #4]
1a0025d2:	4a09      	ldr	r2, [pc, #36]	; (1a0025f8 <Chip_TIMER_GetClockIndex+0x4c>)
1a0025d4:	4293      	cmp	r3, r2
1a0025d6:	d102      	bne.n	1a0025de <Chip_TIMER_GetClockIndex+0x32>
1a0025d8:	2385      	movs	r3, #133	; 0x85
1a0025da:	81fb      	strh	r3, [r7, #14]
1a0025dc:	e001      	b.n	1a0025e2 <Chip_TIMER_GetClockIndex+0x36>
1a0025de:	2384      	movs	r3, #132	; 0x84
1a0025e0:	81fb      	strh	r3, [r7, #14]
1a0025e2:	89fb      	ldrh	r3, [r7, #14]
1a0025e4:	4618      	mov	r0, r3
1a0025e6:	3714      	adds	r7, #20
1a0025e8:	46bd      	mov	sp, r7
1a0025ea:	f85d 7b04 	ldr.w	r7, [sp], #4
1a0025ee:	4770      	bx	lr
1a0025f0:	400c4000 	.word	0x400c4000
1a0025f4:	400c3000 	.word	0x400c3000
1a0025f8:	40085000 	.word	0x40085000

1a0025fc <Chip_TIMER_Init>:
1a0025fc:	b580      	push	{r7, lr}
1a0025fe:	b082      	sub	sp, #8
1a002600:	af00      	add	r7, sp, #0
1a002602:	6078      	str	r0, [r7, #4]
1a002604:	6878      	ldr	r0, [r7, #4]
1a002606:	f7ff ffd1 	bl	1a0025ac <Chip_TIMER_GetClockIndex>
1a00260a:	4603      	mov	r3, r0
1a00260c:	4618      	mov	r0, r3
1a00260e:	f7ff ff43 	bl	1a002498 <Chip_Clock_Enable>
1a002612:	bf00      	nop
1a002614:	3708      	adds	r7, #8
1a002616:	46bd      	mov	sp, r7
1a002618:	bd80      	pop	{r7, pc}
1a00261a:	Address 0x000000001a00261a is out of bounds.


1a00261c <ExtRateIn>:
1a00261c:	0000 0000                                   ....

1a002620 <OscRateIn>:
1a002620:	1b00 00b7                                   ....

1a002624 <leds>:
1a002624:	0202 0205 0014 0a02 0e00 0010 0b02 0b01     ................
1a002634:	0010 0c02 0c01 0010 0002 0005 0014 0102     ................
1a002644:	0105 0014                                   ....

1a002648 <keys>:
1a002648:	0001 0400 0050 0101 0800 0050 0201 0900     ....P.....P.....
1a002658:	0050 0601 0901 0050                         P.....P.

1a002660 <InitClkStates>:
1a002660:	0100 0001 0909 0001 090a 0001 0701 0101     ................
1a002670:	0902 0001 0906 0001 090c 0101 090d 0001     ................
1a002680:	090e 0001 090f 0001 0910 0001 0911 0001     ................
1a002690:	0912 0001 0913 0001 1114 0001 1119 0001     ................
1a0026a0:	111a 0001 111b 0001                         ........

1a0026a8 <UART_PClock>:
1a0026a8:	0081 0082 00a1 00a2                         ........

1a0026b0 <UART_BClock>:
1a0026b0:	01c2 01a2 0182 0162                         ......b.

1a0026b8 <periph_to_base>:
1a0026b8:	0000 0005 000a 0020 0024 0009 0040 0040     ...... .$...@.@.
1a0026c8:	0005 0060 00a6 0004 00c0 00c3 0002 00e0     ..`.............
1a0026d8:	00e0 0001 0100 0100 0003 0120 0120 0006     .......... . ...
1a0026e8:	0140 0140 000c 0142 0142 0019 0162 0162     @.@...B.B...b.b.
1a0026f8:	0013 0182 0182 0012 01a2 01a2 0011 01c2     ................
1a002708:	01c2 0010 01e2 01e2 000f 0202 0202 000e     ................
1a002718:	0222 0222 000d 0223 0223 001c 0201 0804     "."...#.#.......
1a002728:	0f03 0f0f 00ff ffff                         ........

Disassembly of section .init:

1a002730 <_init>:
1a002730:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002732:	bf00      	nop

Disassembly of section .fini:

1a002734 <_fini>:
1a002734:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
1a002736:	bf00      	nop
